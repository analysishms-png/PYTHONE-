VERSION 5.00
Begin VB.Form FrmSMSEnviro
  Caption = "Parameter Setting"
  BackColor = &HCDE2D0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmSMSEnviro.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12135
  ClientHeight = 5835
  LockControls = -1  'True
  Begin DataGrid DGOutlet
    Left = 6915
    Top = 7560
    Width = 3900
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 91
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 5160
    Width = 12135
    Height = 675
    Visible = 0   'False
    TabIndex = 78
  End
  Begin DataGrid DGJobSchedule
    Left = 11385
    Top = 7395
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 31
  End
  Begin Frame FrmList
    Left = 960
    Top = 5895
    Width = 1260
    Height = 1830
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1245
      Height = 1830
      TabStop = 0   'False
      TabIndex = 19
    End
  End
  Begin DataGrid DGTaxStru
    Left = 11385
    Top = 7155
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin CommandButton Cmd
    Caption = "&Save && Exit"
    Index = 0
    BackColor = &HF9CECE&
    Left = 3195
    Top = 6885
    Width = 2265
    Height = 465
    TabIndex = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Cmd
    Caption = "&Cancel && Exit"
    Index = 1
    BackColor = &HF9CECE&
    Left = 5460
    Top = 6885
    Width = 2265
    Height = 465
    TabIndex = 10
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmSMSEnviro"

Private global_60 As Integer
Private global_72 As Variant

Private Sub CmdDeleteJobs_Click() 'EB01A8
  'Data Table: 51FF58
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim unk_51FF5F As Connection15
  loc_EB014C: Set var_88 = var_8C(CInt(8))
  loc_EB0152: Call 0.Method_CmdDeleteJobs_Click0 (var_90, "Delete From JobScheduledDetail WHERE Schedule_Id=", var_F4)
  loc_EB015A: -1 = var_8C.Tag
  loc_EB0162: var_A0 = CVar(var_90) 'String
  loc_EB0168: Proc_6_17_EAA2B0(var_B0, var_A0)
  loc_EB017E: unk_51FF5F.Execute CStr(var_F8 & var_B0), , 
  loc_EB019D: Call Proc_232_37_11B6314(var_A0)
  loc_EB01A5: Exit Sub
End Sub

Private Sub CmdDeletePOSMsg_Click() 'EC53D8
  'Data Table: 51FF58
  Dim var_88 As String
  Dim var_90 As TextBox
  Dim unk_51FF5F As Connection15
  loc_EC5368: var_88 = "Delete From EmailSMSForward Where Type In ('KOT Message','Outlet Bill','Assign Delivery') And FlagType='POS' And LogSite_Code='" & MemVar_1F92078
  loc_EC5380: Set var_8C = var_90(CInt(&H18))
  loc_EC5386: Call 0.Method_CmdDeletePOSMsg_Click0 (var_94, CVar(var_88 & "' And DepartCode="), var_F8)
  loc_EC538E: -1 = var_90.Tag
  loc_EC539C: Proc_6_17_EAA2B0(var_B4, CVar(var_94))
  loc_EC53B2: unk_51FF5F.Execute CStr(var_FC & var_B4), , 
  loc_EC53D4: Exit Sub
End Sub

Private Sub Form_Load() 'FCE41C
  'Data Table: 51FF58
  Dim var_C0 As Variant
  Dim Me As Recordset15
  loc_FCE250: On Error Goto loc_FCE413
  loc_FCE26B: Proc_6_23_DFBA28(Me, 5670)
  loc_FCE27D: Set var_88 = Me.TopCtrl1
  loc_FCE283: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_68030005("Add")
  loc_FCE2A7: Me.TopCtrl1.CursorLocation = 3
  loc_FCE2D1: var_C0 = CVar("Select Schedule_Id Code,ScheduleName Name From JobSchedule Where ScheduleEnabled=1 And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_FCE2EF: CVarUnk
  loc_FCE2F4: VerifyVarObj
  loc_FCE2FA: Set var_88 = Me.DGJobSchedule
  loc_FCE300: LateIdStAd
  loc_FCE32A: Me.DGJobSchedule.CursorLocation = 3
  loc_FCE354: var_C0 = CVar("SELECT Code,Name FROM Depart Where LogSite_Code='" & MemVar_1F92078 & "' and Resttype IN ('Outlet','Room Service') Order by Name") 'String
  loc_FCE35E: r_C0, CVar(MemVar_1F92044), 2 var_C0, CVar(MemVar_1F92044), 2
  loc_FCE372: CVarUnk
  loc_FCE377: VerifyVarObj
  loc_FCE37D: Set var_88 = Me.DGOutlet
  loc_FCE383: LateIdStAd
  loc_FCE39B: Set global_68 = New 
  loc_FCE3B0: Me.DGOutlet.CursorLocation = 3
  loc_FCE3DA: var_C0 = CVar("Select * From SMSEnviro WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "')") 'String
  loc_FCE3E7: Me.Recordset15.Open var_C0, CVar(MemVar_1F92044), 2
  loc_FCE3F2: Call Proc_232_40_134A9D4(3, -1, var_88, New, 3, -1)
  loc_FCE3F7: Call Proc_232_42_EFDF5C(var_88, New, 3)
  loc_FCE3FF: Call Proc_232_35_12EA5FC(var_C0, -1)
  loc_FCE40A: Call Proc_232_37_11B6314(var_C0)
  loc_FCE412: Exit Sub
  loc_FCE413: ' Referenced from: FCE250
  loc_FCE413: Proc_6_60_E62BC4(6525)
  loc_FCE418: Exit Sub
End Sub

Private Sub Form_Resize() 'DFC41C
  'Data Table: 51FF58
  loc_DFC418: Exit Sub
  loc_DFC419:  = var_C00
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E65AD4
  'Data Table: 51FF58
  loc_E65A8B: Set global_68 = Nothing
  loc_E65A9D: Set global_52 = Nothing
  loc_E65AAF: Set global_56 = Nothing
  loc_E65ABB: global_72 = Nothing
  loc_E65ACA: Set global_88 = Nothing
  loc_E65AD1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28528
  'Data Table: 51FF58
  loc_E28500: On Error Goto loc_E28520
  loc_E28517: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2851F: Exit Sub
  loc_E28520: ' Referenced from: E28500
  loc_E28520: Proc_6_60_E62BC4(Shift)
  loc_E28525: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1148484
  'Data Table: 51FF58
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As DataGrid
  Dim var_B0 As Long
  Dim var_DC As Long
  loc_11480F0: If (KeyCode = 1) Then
  loc_11480FD:   If (CLng(Shift) = &H1B) Then
  loc_114810D:     Set var_8C = var_90(KeyCode)
  loc_1148113:     Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_114811B:     var_86 = var_90.Tag
  loc_114812D:     Set var_98 = var_9C(KeyCode)
  loc_1148133:     Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_114813B:     var_9C.Text = 
  loc_1148152:     Set var_8C = ()
  loc_114816F:     Set var_8C = var_90(KeyCode)
  loc_1148175:     Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_114817D:     var_90.Visible = DGOutlet.DispID_8001
  loc_1148189:     Exit Sub
  loc_114818A:   End If
  loc_1148194:   ().DeleteRowLabels , 
  loc_114819D:   var_B0 = CLng()
  loc_11481AD:   If (var_B0 = CLng(2)) Then
  loc_11481BA:     If (CLng(Shift) = &HD) Then
  loc_11481C3:       Call Proc_232_33_11B79C8(KeyCode, var_B2)
  loc_11481CE:       If (var_B2 = &HFF) Then
  loc_11481DC:         Set var_9C = ()
  loc_1148205:         Set var_90 = var_9C
  loc_1148214:         Proc_6_62_1253BC4((var_B0), var_90, KeyCode, Shift, global_60)
  loc_1148230:         Set var_8C = var_90(KeyCode)
  loc_1148236:         Call 0.Method_TxtGrid_KeyDown0 (0, 2, 0)
  loc_114823E:         var_90.Visible = True
  loc_1148256:         Set var_8C = 0(CVar(CLng(2)))
  loc_1148268:         Set var_8C = (DGOutlet.DispID_B)
  loc_1148279:       End If
  loc_1148279:     End If
  loc_1148279:   End If
  loc_114827C: Else
  loc_1148282:   If (var_86 = 2) Then
  loc_114828F:     If (CLng(Shift) = &H1B) Then
  loc_114829F:       Set var_8C = var_90(KeyCode)
  loc_11482A5:       Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_11482AD:       DGOutlet.DispID_8001 = var_90.Tag
  loc_11482BF:       Set var_98 = var_9C(KeyCode)
  loc_11482C5:       Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_11482CD:       var_9C.Text = 
  loc_11482E4:       Set var_8C = ()
  loc_1148301:       Set var_8C = var_90(KeyCode)
  loc_1148307:       Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_114830F:       var_90.Visible = DGOutlet.DispID_8001
  loc_114831B:       Exit Sub
  loc_114831C:     End If
  loc_1148326:     ().DeleteRowLabels , 
  loc_114832F:     var_DC = CLng()
  loc_114833F:     If (var_DC = CLng(3)) Then
  loc_114834C:       If (CLng(Shift) = &HD) Then
  loc_1148355:         Call Proc_232_33_11B79C8(KeyCode, var_B2)
  loc_1148360:         If (var_B2 = &HFF) Then
  loc_1148397:           Set var_90 = ()
  loc_11483A6:           Proc_6_62_1253BC4((var_DC), var_90, KeyCode, Shift, global_60)
  loc_11483C2:           Set var_8C = var_90(KeyCode)
  loc_11483C8:           Call 0.Method_TxtGrid_KeyDown0 (0, 4, 0)
  loc_11483D0:           var_90.Visible = True
  loc_11483DC:         End If
  loc_11483DC:       End If
  loc_11483DF:     Else
  loc_11483E6:       If (var_DC = CLng(4)) Then
  loc_11483F3:         If (CLng(Shift) = &HD) Then
  loc_11483FC:           Call Proc_232_33_11B79C8(KeyCode, var_B2)
  loc_1148407:           If (var_B2 = &HFF) Then
  loc_114843E:             Set var_90 = ()
  loc_114844D:             Proc_6_62_1253BC4((0), var_90, KeyCode, Shift, global_60)
  loc_1148469:             Set var_8C = var_90(KeyCode)
  loc_114846F:             Call 0.Method_TxtGrid_KeyDown0 (0, 4, 0)
  loc_1148477:             var_90.Visible = True
  loc_1148483:           End If
  loc_1148483:         End If
  loc_1148483:       End If
  loc_1148483:     End If
  loc_1148483:   End If
  loc_1148483: End If
  loc_1148483: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5E004
  'Data Table: 51FF58
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_C4 As TextBox
  loc_F5DF26: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5DF2D:   Set var_A8 = Me.ListView
  loc_F5DF43:   var_CC = Val(CStr(var_A8.Tag))
  loc_F5DF77:   Set var_C0 = var_C4(CInt(var_CC))
  loc_F5DF7D:   Call 0.Method_ListView_UnknownEvent_130 (Me.ListView.SelectedItem.Text)
  loc_F5DF85:   var_C4.Text = var_CC
  loc_F5DFA5: End If
  loc_F5DFB1: Me.FrmList.Visible = False
  loc_F5DFD3: var_CC = Val(CStr(Me.ListView.Tag))
  loc_F5DFE1: Set var_9C = var_A8(CInt(var_CC))
  loc_F5DFE7: Call 0.Method_ListView_UnknownEvent_130 (var_CC)
  loc_F5DFEF: var_A8.SetFocus
  loc_F5E003: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2097C
  'Data Table: 51FF58
  Dim Me As Recordset15
  loc_E20963: Me.Requery -1
  loc_E20973: Me.Requery -1
  loc_E20978: Exit Sub
End Sub

Private Sub DGJobSchedule_UnknownEvent_9 'F728F8
  'Data Table: 51FF58
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F727D7: var_86 = CInt(Val(CStr(Me.DGJobSchedule.Tag)))
  loc_F727F2: Me.DGJobSchedule.Visible = False
  loc_F72811: If (Me.RecordCount > 0) Then
  loc_F7284F:   Set var_CC = var_D0(var_86)
  loc_F72855:   Call 0.Method_DGJobSchedule_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_F7285D:   var_D0.Text = var_86
  loc_F72890:   var_C8 = Me.Fields.Item("Code")
  loc_F728AE:   Set var_CC = var_D0(var_86)
  loc_F728B4:   Call 0.Method_DGJobSchedule_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F728BC:   var_D0.Tag = 
  loc_F728D2: End If
  loc_F728DC: Set var_8C = var_C8(var_86)
  loc_F728E2: Call 0.Method_DGJobSchedule_UnknownEvent_90 ()
  loc_F728EA: var_C8.SetFocus
  loc_F728F6: Exit Sub
End Sub

Private Sub DGJobSchedule_UnknownEvent_1F 'EAB0C0
  'Data Table: 51FF58
  loc_EAB056: Proc_6_153_E91194(Me.DGJobSchedule, arg_14)
  loc_EAB08A: Set var_A8 = arg_18(Val(CStr(Me.DGJobSchedule.Tag)))
  loc_EAB0A6: Proc_6_138_106D6F8(Me.DGJobSchedule, global_52)
  loc_EAB0BC: Exit Sub
End Sub

Private Sub LabelListView_UnknownEvent_C '11ABFE0
  'Data Table: 51FF58
  Dim var_9C As Variant
  Dim var_C8 As ListItem
  Dim var_D0 As String
  Dim var_C4 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_1D0 As TextBox
  Dim var_1E8 As Variant
  Dim var_25C As Variant
  Dim var_CC As String
  Dim var_124 As TextBox
  Dim var_120 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1F4 As TextBox
  Dim var_248 As Variant
  Dim var_268 As TextBox
  Dim var_B0 As TextBox
  loc_11ABC5B: Set var_88 = KeyCode 
  loc_11ABC89: If (CStr(().Tag) = CStr(&HA)) Then
  loc_11ABCAF:   Set var_AC = (CInt(CStr(1(var_B0).Tag)))
  loc_11ABCB5:   Call 0.Method_LabelListView_UnknownEvent_C0 ()
  loc_11ABCD1:   "<"(var_CC).RandomDataFill
  loc_11ABCE2:    = CVar(var_B0).Text
  loc_11ABCEB:   var_D0 = var_CC
  loc_11ABD27:   If CBool(InStr(, , CVar(var_D0 & ">"), 0) <> 0) Then
  loc_11ABD2A:     Exit Sub
  loc_11ABD2B:   End If
  loc_11ABD2B:   GoTo loc_11ABD2E
  loc_11ABD2E:   ' Referenced from: 11ABD2B
  loc_11ABD2E: End If
  loc_11ABD38: var_9C = ().Tag
  loc_11ABD51: Set var_AC = var_B0(CInt(CStr(var_9C)))
  loc_11ABD57: Call 0.Method_LabelListView_UnknownEvent_C0 (var_9C)
  loc_11ABD66: var_C4 = ().Tag
  loc_11ABD79: var_1A4 = (var_C4).Tag
  loc_11ABD92: Set var_1AC = var_1B0(CInt(CStr(var_1A4)))
  loc_11ABD98: Call 0.Method_LabelListView_UnknownEvent_C0 (var_1A4)
  loc_11ABDC3: Set var_1CC = var_1D0(CInt(CStr(().Tag)))
  loc_11ABDC9: Call 0.Method_LabelListView_UnknownEvent_C0 (var_1D4)
  loc_11ABDD1: var_1C4 = var_1D0.SelStart
  loc_11ABDE0: var_1E8 = ().Tag
  loc_11ABDF3: var_25C = (var_1E8).Tag
  loc_11ABE06: var_CC = CStr(var_C4)
  loc_11ABE0F: Set var_C8 = var_124(CInt(var_CC))
  loc_11ABE15: Call 0.Method_LabelListView_UnknownEvent_C0 (var_128)
  loc_11ABE45: var_120 = (Mid(CVar(var_B0), 1, CVar(var_128)) + "<")
  loc_11ABE56: var_120(var_D0).RandomDataFill
  loc_11ABE67:  = .Text
  loc_11ABE72: var_170 = ( + CVar(var_D0))
  loc_11ABE7B: var_190 = (var_170 + ">")
  loc_11ABE92: Set var_1F0 = var_1F4(CInt(CStr(var_1E8)))
  loc_11ABE98: Call 0.Method_LabelListView_UnknownEvent_C0 (var_1F8)
  loc_11ABEA0: var_190 = var_1F4.Text
  loc_11ABEC0: var_238 = Mid(CVar(var_1B0), (var_1D4 + 1), CVar(Len(var_1F8)))
  loc_11ABEC8: var_248 = ( + var_238)
  loc_11ABEE0: Set var_264 = var_268(CInt(CStr(var_124.SelStart)))
  loc_11ABEE6: Call 0.Method_LabelListView_UnknownEvent_C0 (CStr(var_248))
  loc_11ABEEE: var_268.Text = 
  loc_11ABF75: Set var_AC = (CInt(CStr(var_CC(var_B0).Tag)))
  loc_11ABF7B: Call 0.Method_LabelListView_UnknownEvent_C0 ()
  loc_11ABF83:  = var_B0.Text
  loc_11ABFAA: Set var_C8 = (CInt(CStr(Len(var_CC)(var_124).Tag)))
  loc_11ABFB0: Call 0.Method_LabelListView_UnknownEvent_C0 ()
  loc_11ABFB8: var_124.SelStart = 
  loc_11ABFDC: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A 'FE2370
  'Data Table: 51FF58
  Dim var_9C As String
  Dim KeyCode As Integer
  Dim var_B0 As Variant
  loc_FE21A0: Set var_88 = Me.TopCtrl1
  loc_FE21A6: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_68030005()
  loc_FE21EB: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_FE21F4:   Call Form_KeyDown(KeyCode, Shift)
  loc_FE21F9: End If
  loc_FE21FD: Set var_A0 = ()
  loc_FE2203: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_4()
  loc_FE2210: Set var_B4 = ()
  loc_FE2216: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_4()
  loc_FE222D: Set var_88 = ((CLng(KeyCode) = &H26))
  loc_FE2233: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_8001000B()
  loc_FE226D: If ( And (CDbl(Val(CStr())) = CDbl((CLng(var_B0) - (CLng(var_C4) - 1))))) Then
  loc_FE2278:   var_9C = "+{Tab}"
  loc_FE227E:   Proc_303_0_FB9B68(CStr())
  loc_FE2288:   KeyCode = 0
  loc_FE228E: Else
  loc_FE2292:   Set var_A0 = 0(KeyCode)
  loc_FE2298:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_4()
  loc_FE22AF:   Set var_88 = ((CLng(KeyCode) = &H28))
  loc_FE22B5:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_8001000B()
  loc_FE22E5:   If ( And (CDbl(Val(CStr())) = CDbl((CLng(var_B0) - 1)))) Then
  loc_FE22E8:   End If
  loc_FE22E8: End If
  loc_FE22EC: Set var_88 = ()
  loc_FE22F2: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_A()
  loc_FE2305: Set var_A0 = (CVar(CStr(CLng())))
  loc_FE230B: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_8001000B()
  loc_FE232F: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_FE2336:   Set var_88 = ()
  loc_FE233C:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_B()
  loc_FE2355:   If (CLng() = CLng(2)) Then
  loc_FE2358:   End If
  loc_FE2358: End If
  loc_FE235E: If (KeyCode = &HD) Then
  loc_FE2366:   global_60 = 0
  loc_FE2369: End If
  loc_FE236B: KeyCode = 0
  loc_FE236E: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E13028
  'Data Table: 51FF58
  loc_E13019: Call Fgrid1_UnknownEvent_C()
  loc_E13023: global_60 = 0
  loc_E13026: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'FCE610
  'Data Table: 51FF58
  Dim var_9C As String
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  Dim var_1FA0 As Variant
  loc_FCE45C: Set var_88 = Me.TopCtrl1
  loc_FCE462: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_68030005()
  loc_FCE47B: If (CStr() = "Browse") Then
  loc_FCE47E:   Exit Sub
  loc_FCE47F: End If
  loc_FCE483: Set var_88 = ()
  loc_FCE489: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_B()
  loc_FCE492: var_A0 = CLng()
  loc_FCE4A2: If (var_A0 = CLng(2)) Then
  loc_FCE4A9:   Set var_C4 = (var_A0)
  loc_FCE4CD:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_FCE4FA:   Set var_B4 = var_C4
  loc_FCE50C:   Proc_6_63_110ABA4(Me, var_B4, (), 1)
  loc_FCE534:   Set var_88 = var_B4(1)
  loc_FCE53A:   Call 0.Method_Fgrid1_UnknownEvent_C0 (var_9C, 0, Asc(var_9C))
  loc_FCE542:   0 = var_B4.Text
  loc_FCE55B:   If (Len(var_9C) <= 1) Then
  loc_FCE56A:     Set var_88 = var_B4(1)
  loc_FCE570:     Call 0.Method_Fgrid1_UnknownEvent_C0 (var_9C)
  loc_FCE578:     var_CA = var_B4.Text
  loc_FCE589:     Set var_B8 = var_C4(1)
  loc_FCE58F:     Call 0.Method_Fgrid1_UnknownEvent_C0 (var_9C)
  loc_FCE597:     var_C4.Text = 
  loc_FCE5AA:   End If
  loc_FCE5B6:   Set var_88 = var_B4(1)
  loc_FCE5BC:   Call 0.Method_Fgrid1_UnknownEvent_C0 (var_9C)
  loc_FCE5C4:    = var_B4.Text
  loc_FCE5D6:   Set var_B8 = var_C4(1)
  loc_FCE5DC:   Call 0.Method_Fgrid1_UnknownEvent_C0 (Len(var_9C))
  loc_FCE5E4:   var_C4.SelStart = 
  loc_FCE5F7: End If
  loc_FCE601: If (CLng(KeyCode) <> &HD) Then
  loc_FCE609:   global_60 = &HFF
  loc_FCE60C: End If
  loc_FCE60C: Exit Sub
  loc_FCE60D: var_1FA0 = CVar(global_60) 'Address
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E412A0
  'Data Table: 51FF58
  Dim var_8C As TextBox
  loc_E41274: Call Proc_232_41_EB6C44()
  loc_E41284: Set var_88 = var_8C(1)
  loc_E4128A: Call 0.Method_Fgrid1_UnknownEvent_150 (0)
  loc_E41292: var_8C.Visible = 
  loc_E4129E: Exit Sub
End Sub

Private Sub DGOutlet_UnknownEvent_9 'F72F08
  'Data Table: 51FF58
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F72DE7: var_86 = CInt(Val(CStr(Me.DGOutlet.Tag)))
  loc_F72E02: Me.DGOutlet.Visible = False
  loc_F72E21: If (Me.RecordCount > 0) Then
  loc_F72E5F:   Set var_CC = var_D0(var_86)
  loc_F72E65:   Call 0.Method_DGOutlet_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_F72E6D:   var_D0.Text = var_86
  loc_F72EA0:   var_C8 = Me.Fields.Item("Code")
  loc_F72EBE:   Set var_CC = var_D0(var_86)
  loc_F72EC4:   Call 0.Method_DGOutlet_UnknownEvent_90 (CStr(var_C8.Value))
  loc_F72ECC:   var_D0.Tag = 
  loc_F72EE2: End If
  loc_F72EEC: Set var_8C = var_C8(var_86)
  loc_F72EF2: Call 0.Method_DGOutlet_UnknownEvent_90 ()
  loc_F72EFA: var_C8.SetFocus
  loc_F72F06: Exit Sub
End Sub

Private Sub DGOutlet_UnknownEvent_1F 'EAAFF8
  'Data Table: 51FF58
  loc_EAAF8E: Proc_6_153_E91194(Me.DGOutlet, arg_14)
  loc_EAAFC2: Set var_A8 = arg_18(Val(CStr(Me.DGOutlet.Tag)))
  loc_EAAFDE: Proc_6_138_106D6F8(Me.DGOutlet, global_56)
  loc_EAAFF4: Exit Sub
  loc_EAAFF5: CExtInstUnk
End Sub

Private Sub FGPoint_UnknownEvent_9 'E34E14
  'Data Table: 51FF58
  loc_E34E08: If (CBool(Me.DGJobSchedule.Visible) = &HFF) Then
  loc_E34E0B:   Call DGJobSchedule_UnknownEvent_9()
  loc_E34E10: End If
  loc_E34E10: Exit Sub
End Sub

Private Sub Cmd_Click(Index As Integer) '1576DC4
  'Data Table: 51FF58
  Dim var_90 As Integer
  Dim unk_51FF5F As Connection15
  Dim var_86 As Integer
  Dim var_98 As String
  Dim var_E0 As Variant
  Dim var_B0 As Variant
  Dim var_128 As Variant
  Dim var_158 As Variant
  Dim var_118 As TextBox
  Dim var_148 As Variant
  Dim var_9C As Variant
  loc_1575E60: On Error Goto loc_1576DA7
  loc_1575E66: var_90 = Index
  loc_1575E6F: If (var_90 = 0) Then
  loc_1575E72:   Call Proc_232_41_EB6C44(var_90)
  loc_1575E80:   unk_51FF5F.BeginTrans var_94
  loc_1575EA4:   If (Me.Recordset15.RecordCount = 0) Then
  loc_1575EAE:     var_98 = "Insert into SMSEnviro " & " (CheckInMsg,CheckOutMsg,CashReceiptMsg,BankReceiptMsg,ReservationMsg,ReservationCancelMsg,BanqBookingMsg,BanqBookingCancelMsg,OutStandingMsg,SendingMessageText,MemberBillMsg,GuestRegistrationMsg,RewardPointMsg,RedeemPointMsg,POSBillMsg,AssignDeliveryMsg,LogSite_Code) "
  loc_1575EC3:     Set var_9C = var_A0(CInt(0))
  loc_1575EC9:     Call 0.Method_Cmd_Click0 (CVar(var_98 & " values ("))
  loc_1575ED1:     var_B0 = CVar(var_A0) 'Address
  loc_1575EE3:     Proc_6_17_EAA2B0(var_D0, Trim(var_B0))
  loc_1575F03:     Set var_114 = var_118(CInt(1))
  loc_1575F09:     Call 0.Method_Cmd_Click0 (&HFF & var_D0 & ",")
  loc_1575F23:     Proc_6_17_EAA2B0(var_148)
  loc_1575F43:     Set var_17C = var_180(CInt(2))
  loc_1575F49:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_118)) & var_148 & ",")
  loc_1575F63:     Proc_6_17_EAA2B0(var_1B0)
  loc_1575F83:     Set var_1E4 = var_1E8(CInt(&H10))
  loc_1575F89:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_180)) & var_1B0 & ",")
  loc_1575FA3:     Proc_6_17_EAA2B0(var_218)
  loc_1575FC3:     Set var_24C = var_250(CInt(3))
  loc_1575FC9:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_1E8)) & var_218 & ",")
  loc_1575FE3:     Proc_6_17_EAA2B0(var_280)
  loc_1576003:     Set var_2B4 = var_2B8(CInt(5))
  loc_1576009:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_250)) & var_280 & ",")
  loc_1576023:     Proc_6_17_EAA2B0(var_2E8)
  loc_1576043:     Set var_31C = var_320(CInt(&H11))
  loc_1576049:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_2B8)) & var_2E8 & ",")
  loc_1576063:     Proc_6_17_EAA2B0(var_350)
  loc_1576083:     Set var_384 = var_388(CInt(&H12))
  loc_1576089:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_320)) & var_350 & ",")
  loc_15760A3:     Proc_6_17_EAA2B0(var_3B8)
  loc_15760C3:     Set var_3EC = var_3F0(CInt(6))
  loc_15760C9:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_388)) & var_3B8 & ",")
  loc_15760E3:     Proc_6_17_EAA2B0(var_420)
  loc_1576103:     Set var_454 = var_458(CInt(4))
  loc_1576109:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_3F0)) & var_420 & ",")
  loc_1576123:     Proc_6_17_EAA2B0(var_488)
  loc_1576143:     Set var_4BC = var_4C0(CInt(7))
  loc_1576149:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_458)) & var_488 & ",")
  loc_1576163:     Proc_6_17_EAA2B0(var_4F0)
  loc_1576183:     Set var_524 = var_528(CInt(&H15))
  loc_1576189:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_4C0)) & var_4F0 & ",")
  loc_15761A3:     Proc_6_17_EAA2B0(var_558)
  loc_15761C3:     Set var_58C = var_590(CInt(&H16))
  loc_15761C9:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_528)) & var_558 & ",")
  loc_15761E3:     Proc_6_17_EAA2B0(var_5C0)
  loc_1576203:     Set var_5F4 = var_5F8(CInt(&H17))
  loc_1576209:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_590)) & var_5C0 & ",")
  loc_1576223:     Proc_6_17_EAA2B0(var_628)
  loc_1576243:     Set var_65C = var_660(CInt(&H1A))
  loc_1576249:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_5F8)) & var_628 & ",")
  loc_1576263:     Proc_6_17_EAA2B0(var_690)
  loc_1576283:     Set var_6C4 = var_6C8(CInt(&H1C))
  loc_1576289:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_660)) & var_690 & ",")
  loc_15762A3:     Proc_6_17_EAA2B0(var_6F8)
  loc_15762C3:     Proc_6_17_EAA2B0(var_748, MemVar_1F92078)
  loc_15763C3:     unk_51FF5F.Execute CStr(Trim(CVar(var_6C8)) & var_6F8 & "," & var_748 & ")"), var_B0, -1
  loc_15763D1:   Else
  loc_15763EC:     Call 0.Method_Cmd_Click0 (CVar("Update SMSEnviro Set " & " CheckInMsg="))
  loc_15763F4:     var_B0 = CVar(var_A0) 'Address
  loc_1576406:     Proc_6_17_EAA2B0(var_D0, Trim(var_B0))
  loc_1576426:     Set var_114 = var_118(CInt(1))
  loc_157642C:     Call 0.Method_Cmd_Click0 (var_A0(CInt(0)) & var_D0 & ",CheckOutMsg=")
  loc_1576434:     var_128 = CVar(var_118) 'Address
  loc_1576446:     Proc_6_17_EAA2B0(var_148)
  loc_157644E:     var_158 = Trim(var_128) & var_148 
  loc_1576466:     Set var_17C = var_180(CInt(2))
  loc_157646C:     Call 0.Method_Cmd_Click0 (var_158 & ",CashReceiptMsg=")
  loc_1576486:     Proc_6_17_EAA2B0(var_1B0)
  loc_15764A6:     Set var_1E4 = var_1E8(CInt(&H10))
  loc_15764AC:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_180)) & var_1B0 & ",BankReceiptMsg=")
  loc_15764C6:     Proc_6_17_EAA2B0(var_218)
  loc_15764E6:     Set var_24C = var_250(CInt(3))
  loc_15764EC:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_1E8)) & var_218 & ",ReservationMsg=")
  loc_1576506:     Proc_6_17_EAA2B0(var_280)
  loc_1576526:     Set var_2B4 = var_2B8(CInt(5))
  loc_157652C:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_250)) & var_280 & ",ReservationCancelMsg=")
  loc_1576546:     Proc_6_17_EAA2B0(var_2E8)
  loc_1576566:     Set var_31C = var_320(CInt(&H11))
  loc_157656C:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_2B8)) & var_2E8 & ",BanqBookingMsg=")
  loc_1576586:     Proc_6_17_EAA2B0(var_350)
  loc_15765A6:     Set var_384 = var_388(CInt(&H12))
  loc_15765AC:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_320)) & var_350 & ",BanqBookingCancelMsg=")
  loc_15765C6:     Proc_6_17_EAA2B0(var_3B8)
  loc_15765E6:     Set var_3EC = var_3F0(CInt(6))
  loc_15765EC:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_388)) & var_3B8 & ",OutStandingMsg=")
  loc_1576606:     Proc_6_17_EAA2B0(var_420)
  loc_1576626:     Set var_454 = var_458(CInt(4))
  loc_157662C:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_3F0)) & var_420 & ",SendingMessageText=")
  loc_1576646:     Proc_6_17_EAA2B0(var_488)
  loc_1576666:     Set var_4BC = var_4C0(CInt(7))
  loc_157666C:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_458)) & var_488 & ",MemberBillMsg=")
  loc_1576686:     Proc_6_17_EAA2B0(var_4F0)
  loc_15766A6:     Set var_524 = var_528(CInt(&H15))
  loc_15766AC:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_4C0)) & var_4F0 & ",GuestRegistrationMsg=")
  loc_15766C6:     Proc_6_17_EAA2B0(var_558)
  loc_15766E6:     Set var_58C = var_590(CInt(&H16))
  loc_15766EC:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_528)) & var_558 & ",RewardPointMsg=")
  loc_1576706:     Proc_6_17_EAA2B0(var_5C0)
  loc_1576726:     Set var_5F4 = var_5F8(CInt(&H17))
  loc_157672C:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_590)) & var_5C0 & ",RedeemPointMsg=")
  loc_1576746:     Proc_6_17_EAA2B0(var_628)
  loc_1576766:     Set var_65C = var_660(CInt(&H1A))
  loc_157676C:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_5F8)) & var_628 & ",POSBillMsg=")
  loc_1576786:     Proc_6_17_EAA2B0(var_690)
  loc_15767A6:     Set var_6C4 = var_6C8(CInt(&H1C))
  loc_15767AC:     Call 0.Method_Cmd_Click0 (Trim(CVar(var_660)) & var_690 & ",AssignDeliveryMsg=")
  loc_15767C6:     Proc_6_17_EAA2B0(var_6F8)
  loc_15767E6:     Proc_6_17_EAA2B0(var_748, MemVar_1F92078)
  loc_15768D8:     unk_51FF5F.Execute CStr(Trim(CVar(var_6C8)) & var_6F8 & " Where LogSite_Code=" & var_748), var_B0, -1
  loc_15768E3:   End If
  loc_1576900:   Set var_9C = var_A0(CInt(&HC))
  loc_1576906:   Call 0.Method_Cmd_Click0 ("UPDATE EmailSMSForward SET TxtMsg=", var_158, -1)
  loc_1576920:   Proc_6_17_EAA2B0(var_D0, Trim(CVar(var_A0)))
  loc_1576943:   Set var_114 = var_118(CInt(&HC))
  loc_1576949:   Call 0.Method_Cmd_Click0 (var_98, var_17C & var_D0 & " Where Type=")
  loc_1576951:   var_9C = var_118.Tag
  loc_157695F:   Proc_6_17_EAA2B0(var_128)
  loc_157697E:   unk_51FF5F.Execute CStr(CVar(var_98) & var_128 & vbNullString), , 
  loc_15769C5:   Set var_9C = var_A0(CInt(&HD))
  loc_15769CB:   Call 0.Method_Cmd_Click0 ("UPDATE EmailSMSForward SET TxtMsg=", var_158)
  loc_15769E5:   Proc_6_17_EAA2B0(var_D0, Trim(CVar(var_A0)))
  loc_15769ED:   var_E0 = -1 & var_D0 
  loc_1576A08:   Set var_114 = var_118(CInt(&HD))
  loc_1576A0E:   Call 0.Method_Cmd_Click0 (var_98, var_17C & var_D0 & " Where Type=")
  loc_1576A16:   var_17C = var_118.Tag
  loc_1576A24:   Proc_6_17_EAA2B0(var_128)
  loc_1576A43:   unk_51FF5F.Execute CStr(CVar(var_98) & var_128 & vbNullString), , 
  loc_1576A8A:   Set var_9C = var_A0(CInt(&HE))
  loc_1576A90:   Call 0.Method_Cmd_Click0 ("UPDATE EmailSMSForward SET TxtMsg=", var_158)
  loc_1576AAA:   Proc_6_17_EAA2B0(var_D0, Trim(CVar(var_A0)))
  loc_1576AB2:   var_E0 = -1 & var_D0 
  loc_1576ACD:   Set var_114 = var_118(CInt(&HE))
  loc_1576AD3:   Call 0.Method_Cmd_Click0 (var_98, var_17C & var_D0 & " Where Type=")
  loc_1576ADB:   var_17C = var_118.Tag
  loc_1576AE9:   Proc_6_17_EAA2B0(var_128)
  loc_1576B08:   unk_51FF5F.Execute CStr(CVar(var_98) & var_128 & vbNullString), , 
  loc_1576B4F:   Set var_9C = var_A0(CInt(&HF))
  loc_1576B55:   Call 0.Method_Cmd_Click0 ("UPDATE EmailSMSForward SET TxtMsg=", var_158)
  loc_1576B6F:   Proc_6_17_EAA2B0(var_D0, Trim(CVar(var_A0)))
  loc_1576B77:   var_E0 = -1 & var_D0 
  loc_1576B92:   Set var_114 = var_118(CInt(&HF))
  loc_1576B98:   Call 0.Method_Cmd_Click0 (var_98, var_17C & var_D0 & " Where Type=")
  loc_1576BA0:   var_17C = var_118.Tag
  loc_1576BAE:   Proc_6_17_EAA2B0(var_128)
  loc_1576BCD:   unk_51FF5F.Execute CStr(CVar(var_98) & var_128 & vbNullString), , 
  loc_1576C14:   Set var_9C = var_A0(CInt(&H13))
  loc_1576C1A:   Call 0.Method_Cmd_Click0 ("UPDATE EmailSMSForward SET TxtMsg=", var_158)
  loc_1576C34:   Proc_6_17_EAA2B0(var_D0, Trim(CVar(var_A0)))
  loc_1576C3C:   var_E0 = -1 & var_D0 
  loc_1576C57:   Set var_114 = var_118(CInt(&H13))
  loc_1576C5D:   Call 0.Method_Cmd_Click0 (var_98, var_17C & var_D0 & " Where Type=")
  loc_1576C65:   var_17C = var_118.Tag
  loc_1576C73:   Proc_6_17_EAA2B0(var_128)
  loc_1576C92:   unk_51FF5F.Execute CStr(CVar(var_98) & var_128 & vbNullString), , 
  loc_1576CD9:   Set var_9C = var_A0(CInt(&H14))
  loc_1576CDF:   Call 0.Method_Cmd_Click0 ("UPDATE EmailSMSForward SET TxtMsg=", var_158)
  loc_1576CF9:   Proc_6_17_EAA2B0(var_D0, Trim(CVar(var_A0)))
  loc_1576D01:   var_E0 = -1 & var_D0 
  loc_1576D1C:   Set var_114 = var_118(CInt(&H14))
  loc_1576D22:   Call 0.Method_Cmd_Click0 (var_98, var_17C & var_D0 & " Where Type=")
  loc_1576D2A:   var_17C = var_118.Tag
  loc_1576D38:   Proc_6_17_EAA2B0(var_128)
  loc_1576D57:   unk_51FF5F.Execute CStr(CVar(var_98) & var_128 & vbNullString), , 
  loc_1576D87:   unk_51FF5F.CommitTrans
  loc_1576D8E:   var_86 = 0
  loc_1576D91: End If
  loc_1576D9E: Me.Global.Unload Me
  loc_1576DA6: Exit Sub
  loc_1576DA7: ' Referenced from: 1575E60
  loc_1576DAD: If (var_86 = &HFF) Then
  loc_1576DB6:   unk_51FF5F.RollbackTrans
  loc_1576DBB: End If
  loc_1576DBB: Proc_6_60_E62BC4(var_86)
  loc_1576DC0: Exit Sub
End Sub

Public Sub FGrid2_UnknownEvent_A(arg_C, arg_10) 'FE05B0
  'Data Table: 51FF58
  Dim var_9C As String
  Dim arg_C As Integer
  Dim var_B0 As Variant
  loc_FE03E0: Set var_88 = Me.TopCtrl1
  loc_FE03E6: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_68030005()
  loc_FE042B: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_FE0434:   Call Form_KeyDown(arg_C, arg_10)
  loc_FE0439: End If
  loc_FE043D: Set var_A0 = ()
  loc_FE0443: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_4()
  loc_FE0450: Set var_B4 = ()
  loc_FE0456: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_4()
  loc_FE046D: Set var_88 = ((CLng(arg_C) = &H26))
  loc_FE0473: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_8001000B()
  loc_FE04AD: If ( And (CDbl(Val(CStr())) = CDbl((CLng(var_B0) - (CLng(var_C4) - 1))))) Then
  loc_FE04B8:   var_9C = "+{Tab}"
  loc_FE04BE:   Proc_303_0_FB9B68(CStr())
  loc_FE04C8:   arg_C = 0
  loc_FE04CE: Else
  loc_FE04D2:   Set var_A0 = 0(arg_C)
  loc_FE04D8:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_4()
  loc_FE04EF:   Set var_88 = ((CLng(arg_C) = &H28))
  loc_FE04F5:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_8001000B()
  loc_FE0525:   If ( And (CDbl(Val(CStr())) = CDbl((CLng(var_B0) - 1)))) Then
  loc_FE0528:   End If
  loc_FE0528: End If
  loc_FE052C: Set var_88 = ()
  loc_FE0532: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_A()
  loc_FE0545: Set var_A0 = (CVar(CStr(CLng())))
  loc_FE054B: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_8001000B()
  loc_FE056F: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_FE0576:   Set var_88 = ()
  loc_FE057C:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_B()
  loc_FE0595:   If (CLng() = CLng(2)) Then
  loc_FE0598:   End If
  loc_FE0598: End If
  loc_FE059E: If (arg_C = &HD) Then
  loc_FE05A6:   global_60 = 0
  loc_FE05A9: End If
  loc_FE05AB: arg_C = 0
  loc_FE05AE: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_B 'E12F50
  'Data Table: 51FF58
  loc_E12F41: Call FGrid2_UnknownEvent_C()
  loc_E12F4B: global_60 = 0
  loc_E12F4E: Exit Sub
End Sub

Public Sub FGrid2_UnknownEvent_C(Index As Integer) 'FF468C
  'Data Table: 51FF58
  Dim var_9C As String
  Dim var_A0 As TextBox
  Dim var_A4 As Long
  Dim var_CA As Integer
  Dim var_C4 As TextBox
  loc_FF44A8: Set var_88 = Me.TopCtrl1
  loc_FF44AE: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_68030005()
  loc_FF44C7: If (CStr() = "Browse") Then
  loc_FF44CA:   Exit Sub
  loc_FF44CB: End If
  loc_FF44D7: Set var_88 = var_A0(2)
  loc_FF44DD: Call 0.Method_FGrid2_UnknownEvent_C0 (vbNullString)
  loc_FF44E5: var_A0.Text = 
  loc_FF44F5: Set var_88 = ()
  loc_FF44FB: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_B()
  loc_FF4504: var_A4 = CLng()
  loc_FF4514: If Not (var_A4 = CLng(3)) Then
  loc_FF451E:   If (var_A4 = CLng(4)) Then
  loc_FF4521:   End If
  loc_FF4525:   Set var_C4 = (var_A4)
  loc_FF4549:   var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_FF4576:   Set var_A0 = var_C4
  loc_FF4588:   Proc_6_63_110ABA4(Me, var_A0, (), 2)
  loc_FF45B0:   Set var_88 = var_A0(2)
  loc_FF45B6:   Call 0.Method_FGrid2_UnknownEvent_C0 (var_9C, 0, Asc(var_9C))
  loc_FF45BE:   0 = var_A0.Text
  loc_FF45D7:   If (Len(var_9C) <= 1) Then
  loc_FF45E6:     Set var_88 = var_A0(2)
  loc_FF45EC:     Call 0.Method_FGrid2_UnknownEvent_C0 (var_9C)
  loc_FF45F4:     var_CA = var_A0.Text
  loc_FF4605:     Set var_B8 = var_C4(2)
  loc_FF460B:     Call 0.Method_FGrid2_UnknownEvent_C0 (var_9C)
  loc_FF4613:     var_C4.Text = 
  loc_FF4626:   End If
  loc_FF4632:   Set var_88 = var_A0(2)
  loc_FF4638:   Call 0.Method_FGrid2_UnknownEvent_C0 (var_9C)
  loc_FF4640:    = var_A0.Text
  loc_FF4652:   Set var_B8 = var_C4(2)
  loc_FF4658:   Call 0.Method_FGrid2_UnknownEvent_C0 (Len(var_9C))
  loc_FF4660:   var_C4.SelStart = 
  loc_FF4673: End If
  loc_FF467D: If (CLng(Index) <> &HD) Then
  loc_FF4685:   global_60 = &HFF
  loc_FF4688: End If
  loc_FF4688: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_15 'E41A70
  'Data Table: 51FF58
  Dim var_8C As TextBox
  loc_E41A44: Call Proc_232_41_EB6C44()
  loc_E41A54: Set var_88 = var_8C(2)
  loc_E41A5A: Call 0.Method_FGrid2_UnknownEvent_150 (0)
  loc_E41A62: var_8C.Visible = 
  loc_E41A6E: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '17027E8
  'Data Table: 51FF58
  Dim var_A4 As Variant
  Dim var_C2 As Integer
  Dim var_88 As DataGrid
  Dim var_90 As Variant
  Dim var_BC As Variant
  Dim var_C0 As TextBox
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_160 As String
  Dim var_170 As String
  Dim var_180 As String
  loc_1700C6A: Set var_88 = var_8C(Index)
  loc_1700C70: Call 0.Method_Txt_GotFocus0 ()
  loc_1700C78: Set var_90 = var_8C
  loc_1700C7E: Proc_6_74_E226B0(var_90)
  loc_1700C8A: Call Proc_232_41_EB6C44()
  loc_1700C9C: ReDim var_94(0 To 0)
  loc_1700CB3: var_94(0) = vbNullString
  loc_1700CDC: Set var_C0 = ()
  loc_1700D0A: Set global_88 = Proc_6_66_EFF8FC((Array(var_94)), var_C0, Index)
  loc_1700D1E: var_C2 = Index
  loc_1700D29: If (var_C2 = CInt(8)) Then
  loc_1700D48:   If (CBool(Me.DGJobSchedule.Visible) = 0) Then
  loc_1700D58:     Set var_8C = var_90(Index)
  loc_1700D5E:     Call 0.Method_Txt_GotFocus0 (var_C8, var_C2)
  loc_1700D66:     global_72 = var_90.Left
  loc_1700D82:     var_A4 = CVar((CDbl((0).Left) + var_C8)) 'Single
  loc_1700D91:     Me.DGJobSchedule.Left = vbNullString
  loc_1700DB1:     Set var_8C = var_90(Index)
  loc_1700DB7:     Call 0.Method_Txt_GotFocus0 (var_C8)
  loc_1700DBF:      = var_90.Top
  loc_1700DD1:     Set var_BC = var_C0(Index)
  loc_1700DD7:     Call 0.Method_Txt_GotFocus0 (var_DC)
  loc_1700DDF:      = var_C0.Height
  loc_1700E03:     var_A4 = CVar((((CDbl(().Top) + var_C8) + var_DC) + CDbl(&H14))) 'Single
  loc_1700E12:     Me.DGJobSchedule.Top = vbNullString
  loc_1700E3C:     Me.DGJobSchedule.Tag = CVar(CStr(Index))
  loc_1700E47:   End If
  loc_1700E5E:   If (Me.RecordCount > 0) Then
  loc_1700E6C:     Set var_8C = ()
  loc_1700E84:     Proc_6_137_1193554(Me.DGJobSchedule, global_52)
  loc_1700E92:   End If
  loc_1700E9B:   var_C8 = Me.RecordCount
  loc_1700EE0:   Set var_88 = var_8C(Index)
  loc_1700EE6:   Call 0.Method_Txt_GotFocus0 (var_E8, ((var_C8 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1700EEE:   Index = var_8C.Text
  loc_1700F06:   If (var_8C Or (var_E8 = vbNullString)) Then
  loc_1700F09:     Exit Sub
  loc_1700F0A:   End If
  loc_1700F17:   Set var_88 = var_8C(Index)
  loc_1700F1D:   Call 0.Method_Txt_GotFocus0 (var_E8)
  loc_1700F25:    = var_8C.Text
  loc_1700F37:   var_A4 = "Name"
  loc_1700F46:   var_90 = Me.Fields
  loc_1700F72:   If CBool(CVar(var_E8) <> var_90.Item(var_A4).Value) Then
  loc_1700F7B:     Me.MoveFirst
  loc_1700F9E:     Set var_88 = var_8C(Index)
  loc_1700FA4:     Call 0.Method_Txt_GotFocus0 (var_E8, "Name ='", 0)
  loc_1700FAC:     1 = var_8C.Text
  loc_1700FC5:     Me.Find var_A4 & var_E8 & "'", , 
  loc_1700FDA:   End If
  loc_1700FDD: Else
  loc_1700FE5:   If (var_C2 = CInt(&H18)) Then
  loc_1701004:     If (CBool(Me.DGOutlet.Visible) = 0) Then
  loc_1701014:       Set var_8C = var_90(Index)
  loc_170101A:       Call 0.Method_Txt_GotFocus0 (var_C8)
  loc_1701022:        = var_90.Left
  loc_170103E:       var_A4 = CVar((CDbl(().Left) + var_C8)) 'Single
  loc_170104D:       Me.DGOutlet.Left = var_A4
  loc_170106D:       Set var_8C = var_90(Index)
  loc_1701073:       Call 0.Method_Txt_GotFocus0 (var_C8)
  loc_170107B:        = var_90.Top
  loc_170108D:       Set var_BC = var_C0(Index)
  loc_1701093:       Call 0.Method_Txt_GotFocus0 (var_DC)
  loc_170109B:        = var_C0.Height
  loc_17010BF:       var_A4 = CVar((((CDbl(().Top) + var_C8) + var_DC) + CDbl(&H14))) 'Single
  loc_17010CE:       Me.DGOutlet.Top = var_A4
  loc_17010F8:       Me.DGOutlet.Tag = CVar(CStr(Index))
  loc_1701103:     End If
  loc_170111A:     If (Me.RecordCount > 0) Then
  loc_1701128:       Set var_8C = ()
  loc_1701140:       Proc_6_137_1193554(Me.DGOutlet, global_56)
  loc_170114E:     End If
  loc_170119C:     Set var_88 = var_8C(Index)
  loc_17011A2:     Call 0.Method_Txt_GotFocus0 (var_E8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_17011AA:     Index = var_8C.Text
  loc_17011C2:     If (var_8C Or (var_E8 = vbNullString)) Then
  loc_17011C5:       Exit Sub
  loc_17011C6:     End If
  loc_17011D3:     Set var_88 = var_8C(Index)
  loc_17011D9:     Call 0.Method_Txt_GotFocus0 (var_E8)
  loc_17011E1:      = var_8C.Text
  loc_17011F3:     var_A4 = "Name"
  loc_170122E:     If CBool(CVar(var_E8) <> Me.Fields.Item(var_A4).Value) Then
  loc_1701237:       Me.MoveFirst
  loc_170125A:       Set var_88 = var_8C(Index)
  loc_1701260:       Call 0.Method_Txt_GotFocus0 (var_E8, "Name ='", 0)
  loc_1701268:       1 = var_8C.Text
  loc_1701281:       Me.Find var_A4 & var_E8 & "'", , 
  loc_1701296:     End If
  loc_1701299:   Else
  loc_17012A1:     If Not (var_C2 = CInt(0)) Then
  loc_17012AC:       If (var_C2 = CInt(&HE)) Then
  loc_17012AF:       End If
  loc_17012BC:       ReDim var_94(0 To 6)
  loc_17012D3:       var_94(0) = "Address"
  loc_17012E2:       var_94(1) = "Check In Date"
  loc_17012F1:       var_94(2) = "Guest First Name"
  loc_1701300:       var_94(3) = "Guest Full Name"
  loc_170130F:       var_94(4) = "Room Discount"
  loc_170131E:       var_94(5) = "Room Number"
  loc_170132D:       var_94(6) = "Room Tariff"
  loc_1701344:       global_72 = Array(var_94)
  loc_1701384:       Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_17013A8:       global_72(CVar(CStr(Index))).Tag = 7
  loc_17013B6:     Else
  loc_17013BE:       If Not (var_C2 = CInt(1)) Then
  loc_17013C9:         If (var_C2 = CInt(&HF)) Then
  loc_17013CC:         End If
  loc_17013D9:         ReDim var_94(0 To &HB)
  loc_17013F0:         var_94(0) = "Address"
  loc_17013FF:         var_94(1) = "Debit Amount"
  loc_170140E:         var_94(2) = "Credit Amount"
  loc_170141D:         var_94(3) = "Bill Amount"
  loc_170142C:         var_94(4) = "Bill Number"
  loc_170143B:         var_94(5) = "Check Out Date"
  loc_170144A:         var_94(6) = "Guest First Name"
  loc_1701459:         var_94(7) = "Guest Full Name"
  loc_1701468:         var_94(8) = "Payment Mode"
  loc_1701477:         var_94(9) = "Room Discount"
  loc_1701486:         var_94(&HA) = "Room Number"
  loc_1701495:         var_94(&HB) = "Room Tariff"
  loc_17014AC:         global_72 = Array(var_94)
  loc_17014EC:         Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_1701510:         global_72(CVar(CStr(Index))).Tag = &HC
  loc_170151E:       Else
  loc_1701526:         If Not (var_C2 = CInt(3)) Then
  loc_1701531:           If (var_C2 = CInt(&HC)) Then
  loc_1701534:           End If
  loc_1701541:           ReDim var_94(0 To 7)
  loc_1701558:           var_94(0) = "GuestFullName"
  loc_1701567:           var_94(1) = "GuestFirstName"
  loc_1701576:           var_94(2) = "ReservationNo"
  loc_1701585:           var_94(3) = "RoomCategory"
  loc_1701594:           var_94(4) = "ArrivalDateTime"
  loc_17015A3:           var_94(5) = "DepartDateTime"
  loc_17015B2:           var_94(6) = "ReservedRooms"
  loc_17015C1:           var_94(7) = "EstimateAmount"
  loc_17015D8:           global_72 = Array(var_94)
  loc_1701618:           Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_170163C:           global_72(CVar(CStr(Index))).Tag = 8
  loc_170164A:         Else
  loc_1701652:           If Not (var_C2 = CInt(5)) Then
  loc_170165D:             If (var_C2 = CInt(&HD)) Then
  loc_1701660:             End If
  loc_170166D:             ReDim var_94(0 To 7)
  loc_1701684:             var_94(0) = "GuestFullName"
  loc_1701693:             var_94(1) = "GuestFirstName"
  loc_17016A2:             var_94(2) = "ReservationNo"
  loc_17016B1:             var_94(3) = "RoomCategory"
  loc_17016C0:             var_94(4) = "ArrivalDateTime"
  loc_17016CF:             var_94(5) = "DepartDateTime"
  loc_17016DE:             var_94(6) = "ReservedRooms"
  loc_17016ED:             var_94(7) = "EstimateAmount"
  loc_1701704:             global_72 = Array(var_94)
  loc_1701744:             Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_1701768:             global_72(CVar(CStr(Index))).Tag = 8
  loc_1701776:           Else
  loc_170177E:             If (var_C2 = CInt(2)) Then
  loc_170178E:               ReDim var_94(0 To 8)
  loc_17017A5:               var_94(0) = "Receipt Date"
  loc_17017B4:               var_94(1) = "Receipt Number"
  loc_17017C3:               var_94(2) = "Contact Person"
  loc_17017D2:               var_94(3) = "Credit Account"
  loc_17017E1:               var_94(4) = "Debit Account"
  loc_17017F0:               var_94(5) = "Credit Narration"
  loc_17017FF:               var_94(6) = "Debit Narration"
  loc_170180E:               var_94(7) = "Credit Amount"
  loc_170181D:               var_94(8) = "Debit Amount"
  loc_1701834:               global_72 = Array(var_94)
  loc_1701874:               Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_1701898:               global_72(CVar(CStr(Index))).Tag = 9
  loc_17018A6:             Else
  loc_17018AE:               If (var_C2 = CInt(&H10)) Then
  loc_17018BE:                 ReDim var_94(0 To &HA)
  loc_17018D5:                 var_94(0) = "Receipt Date"
  loc_17018E4:                 var_94(1) = "Receipt Number"
  loc_17018F3:                 var_94(2) = "Contact Person"
  loc_1701902:                 var_94(3) = "Credit Account"
  loc_1701911:                 var_94(4) = "Debit Account"
  loc_1701920:                 var_94(5) = "Credit Narration"
  loc_170192F:                 var_94(6) = "Debit Narration"
  loc_170193E:                 var_94(7) = "Credit Amount"
  loc_170194D:                 var_94(8) = "Debit Amount"
  loc_170195C:                 var_94(9) = "Cheque Date"
  loc_170196B:                 var_94(&HA) = "Cheque Number"
  loc_1701982:                 global_72 = Array(var_94)
  loc_17019C2:                 Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_17019E6:                 global_72(CVar(CStr(Index))).Tag = &HB
  loc_17019F4:               Else
  loc_17019FC:                 If (var_C2 = CInt(6)) Then
  loc_1701A0C:                   ReDim var_94(0 To 1)
  loc_1701A23:                   var_94(0) = "Mobile Number"
  loc_1701A32:                   var_94(1) = "Balance Amount"
  loc_1701A49:                   global_72 = Array(var_94)
  loc_1701A89:                   Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_1701AAD:                   global_72(CVar(CStr(Index))).Tag = 2
  loc_1701ABB:                 Else
  loc_1701AC3:                   If (var_C2 = CInt(7)) Then
  loc_1701AD3:                     ReDim var_94(0 To 9)
  loc_1701AEA:                     var_94(0) = "Contact Person"
  loc_1701AF9:                     var_94(1) = "Member Id"
  loc_1701B08:                     var_94(2) = "Member Account"
  loc_1701B17:                     var_94(3) = "Bill DateFrom"
  loc_1701B26:                     var_94(4) = "Bill DateTo"
  loc_1701B35:                     var_94(5) = "Bill Number"
  loc_1701B44:                     var_94(6) = "Bill Amount"
  loc_1701B53:                     var_94(7) = "Billing Month"
  loc_1701B62:                     var_94(8) = "Billing Date"
  loc_1701B71:                     var_94(9) = "Current Balance"
  loc_1701B88:                     global_72 = Array(var_94)
  loc_1701BC8:                     Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_1701BEC:                     global_72(CVar(CStr(Index))).Tag = &HA
  loc_1701BFA:                   Else
  loc_1701C02:                     If (var_C2 = CInt(&H15)) Then
  loc_1701C12:                       ReDim var_94(0 To 5)
  loc_1701C29:                       var_94(0) = "Registration Id"
  loc_1701C38:                       var_94(1) = "Registration Date"
  loc_1701C47:                       var_94(2) = "Guest Full Name"
  loc_1701C56:                       var_94(3) = "Mobile Number"
  loc_1701C65:                       var_94(4) = "Address"
  loc_1701C74:                       var_94(5) = "Valid UpToDate"
  loc_1701C8B:                       global_72 = Array(var_94)
  loc_1701CCB:                       Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_1701CEF:                       global_72(CVar(CStr(Index))).Tag = 6
  loc_1701CFD:                     Else
  loc_1701D05:                       If Not (var_C2 = CInt(&H16)) Then
  loc_1701D10:                         If (var_C2 = CInt(&H17)) Then
  loc_1701D13:                         End If
  loc_1701D20:                         ReDim var_94(0 To &HD)
  loc_1701D37:                         var_94(0) = "Registration Id"
  loc_1701D46:                         var_94(1) = "Registration Date"
  loc_1701D55:                         var_94(2) = "Guest Full Name"
  loc_1701D64:                         var_94(3) = "Mobile Number"
  loc_1701D73:                         var_94(4) = "Address"
  loc_1701D82:                         var_94(5) = "Valid UpToDate"
  loc_1701D91:                         var_94(6) = "Bill Date"
  loc_1701DA0:                         var_94(7) = "Bill Number"
  loc_1701DAF:                         var_94(8) = "Reward Points"
  loc_1701DBE:                         var_94(9) = "Reward Value"
  loc_1701DCD:                         var_94(&HA) = "Redeem Points"
  loc_1701DDC:                         var_94(&HB) = "Redeem Value"
  loc_1701DEB:                         var_94(&HC) = "RPoint Balance"
  loc_1701DFA:                         var_94(&HD) = "RValue Balance"
  loc_1701E11:                         global_72 = Array(var_94)
  loc_1701E51:                         Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_1701E75:                         global_72(CVar(CStr(Index))).Tag = &HE
  loc_1701E83:                       Else
  loc_1701E8B:                         If (var_C2 = CInt(&H19)) Then
  loc_1701E9B:                           ReDim var_94(0 To &HD)
  loc_1701EB2:                           var_94(0) = "Outlet Title"
  loc_1701EC1:                           var_94(1) = "KOT Number"
  loc_1701ED0:                           var_94(2) = "KOT DateTime"
  loc_1701EDF:                           var_94(3) = "Table Number"
  loc_1701EEE:                           var_94(4) = "Remark"
  loc_1701EFD:                           var_94(5) = "Item Detail"
  loc_1701EFF:                           var_160 = "Item-Qty"
  loc_1701F0C:                           var_94(6) = "Bill Date"
  loc_1701F0E:                           var_170 = "Item-Qty-Rate"
  loc_1701F1B:                           var_94(7) = "Bill Number"
  loc_1701F1D:                           var_180 = "Item-Qty-Amt"
  loc_1701F2A:                           var_94(8) = "Reward Points"
  loc_1701F39:                           var_94(9) = "Steward"
  loc_1701F48:                           var_94(&HA) = "User"
  loc_1701F57:                           var_94(&HB) = "KOT Total"
  loc_1701F66:                           var_94(&HC) = "KOT Status"
  loc_1701F75:                           var_94(&HD) = "KOT Type"
  loc_1701F8C:                           global_72 = Array(var_94)
  loc_1701FCC:                           Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_1701FF0:                           global_72(CVar(CStr(Index))).Tag = &HE
  loc_1701FFE:                         Else
  loc_1702006:                           If (var_C2 = CInt(&H1A)) Then
  loc_1702016:                             ReDim var_94(0 To &HB)
  loc_170202D:                             var_94(0) = "Outlet Title"
  loc_170203C:                             var_94(1) = "Bill Number"
  loc_170204B:                             var_94(2) = "Bill Date"
  loc_170205A:                             var_94(3) = "Disc Amount"
  loc_1702069:                             var_94(4) = "Bill Amount"
  loc_1702078:                             var_94(5) = "Item Detail"
  loc_170207A:                             var_160 = "Item-Qty"
  loc_1702087:                             var_94(6) = "Bill Date"
  loc_1702089:                             var_170 = "Item-Qty-Rate"
  loc_1702096:                             var_94(7) = "Bill Number"
  loc_1702098:                             var_180 = "Item-Qty-Amt"
  loc_17020A5:                             var_94(8) = "Reward Points"
  loc_17020B4:                             var_94(9) = "Mobile Number"
  loc_17020C3:                             var_94(&HA) = "Guest Full Name"
  loc_17020D2:                             var_94(&HB) = "Address"
  loc_17020E9:                             global_72 = Array(var_94)
  loc_1702129:                             Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_170214D:                             global_72(CVar(CStr(Index))).Tag = &HC
  loc_170215B:                           Else
  loc_1702163:                             If (var_C2 = CInt(&H1B)) Then
  loc_1702173:                               ReDim var_94(0 To &HD)
  loc_170218A:                               var_94(0) = "Outlet Title"
  loc_1702199:                               var_94(1) = "Bill Number"
  loc_17021A8:                               var_94(2) = "Bill Date"
  loc_17021B7:                               var_94(3) = "Disc Amount"
  loc_17021C6:                               var_94(4) = "Bill Amount"
  loc_17021D5:                               var_94(5) = "Item Detail"
  loc_17021D7:                               var_160 = "Item-Qty"
  loc_17021E4:                               var_94(6) = "Bill Date"
  loc_17021E6:                               var_170 = "Item-Qty-Rate"
  loc_17021F3:                               var_94(7) = "Bill Number"
  loc_17021F5:                               var_180 = "Item-Qty-Amt"
  loc_1702202:                               var_94(8) = "Reward Points"
  loc_1702211:                               var_94(9) = "Mobile Number"
  loc_1702220:                               var_94(&HA) = "Guest Full Name"
  loc_170222F:                               var_94(&HB) = "Address"
  loc_170223E:                               var_94(&HC) = "Table Number"
  loc_170224D:                               var_94(&HD) = "Payment Type"
  loc_1702264:                               global_72 = Array(var_94)
  loc_17022A4:                               Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_17022C8:                               global_72(CVar(CStr(Index))).Tag = &HE
  loc_17022D6:                             Else
  loc_17022DE:                               If (var_C2 = CInt(&H1C)) Then
  loc_17022EE:                                 ReDim var_94(0 To &HA)
  loc_1702305:                                 var_94(0) = "Outlet Title"
  loc_1702314:                                 var_94(1) = "Bill Number"
  loc_1702323:                                 var_94(2) = "Bill Date"
  loc_1702332:                                 var_94(3) = "Disc Amount"
  loc_1702341:                                 var_94(4) = "Bill Amount"
  loc_1702350:                                 var_94(5) = "Mobile Number"
  loc_170235F:                                 var_94(6) = "Guest Full Name"
  loc_170236E:                                 var_94(7) = "Address"
  loc_170237D:                                 var_94(8) = "Delivery Boy"
  loc_170238C:                                 var_94(9) = "Assign DateTime"
  loc_170239B:                                 var_94(&HA) = "Assign Remark"
  loc_17023B2:                                 global_72 = Array(var_94)
  loc_17023F2:                                 Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_1702416:                                 global_72(CVar(CStr(Index))).Tag = &HB
  loc_1702424:                               Else
  loc_170242C:                                 If (var_C2 = CInt(&HA)) Then
  loc_170243C:                                   ReDim var_94(0 To 0)
  loc_1702453:                                   var_94(0) = "Night Audit"
  loc_170246A:                                   global_72 = Array(var_94)
  loc_17024AA:                                   Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_17024CE:                                   global_72(CVar(CStr(Index))).Tag = 1
  loc_17024DC:                                 Else
  loc_17024E4:                                   If Not (var_C2 = CInt(&H11)) Then
  loc_17024EF:                                     If (var_C2 = CInt(&H13)) Then
  loc_17024F2:                                     End If
  loc_17024FF:                                     ReDim var_94(0 To &HD)
  loc_1702516:                                     var_94(0) = "Booking No"
  loc_1702525:                                     var_94(1) = "Booking Date"
  loc_1702534:                                     var_94(2) = "Party Name"
  loc_1702543:                                     var_94(3) = "Party Address"
  loc_1702552:                                     var_94(4) = "Company Name"
  loc_1702561:                                     var_94(5) = "Function Type"
  loc_1702570:                                     var_94(6) = "Exp Pax"
  loc_170257F:                                     var_94(7) = "Gurr Pax"
  loc_170258E:                                     var_94(8) = "Pax Rate"
  loc_170259D:                                     var_94(9) = "Net Amount"
  loc_17025AC:                                     var_94(&HA) = "Remark"
  loc_17025BB:                                     var_94(&HB) = "Status"
  loc_17025CA:                                     var_94(&HC) = "Advance"
  loc_17025D9:                                     var_94(&HD) = "Venue Detail"
  loc_17025F0:                                     global_72 = Array(var_94)
  loc_1702630:                                     Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_1702654:                                     global_72(CVar(CStr(Index))).Tag = &HE
  loc_1702662:                                   Else
  loc_170266A:                                     If Not (var_C2 = CInt(&H12)) Then
  loc_1702675:                                       If (var_C2 = CInt(&H14)) Then
  loc_1702678:                                       End If
  loc_1702685:                                       ReDim var_94(0 To &HD)
  loc_170269C:                                       var_94(0) = "Booking No"
  loc_17026AB:                                       var_94(1) = "Booking Date"
  loc_17026BA:                                       var_94(2) = "Party Name"
  loc_17026C9:                                       var_94(3) = "Party Address"
  loc_17026D8:                                       var_94(4) = "Company Name"
  loc_17026E7:                                       var_94(5) = "Function Type"
  loc_17026F6:                                       var_94(6) = "Exp Pax"
  loc_1702705:                                       var_94(7) = "Gurr Pax"
  loc_1702714:                                       var_94(8) = "Pax Rate"
  loc_1702723:                                       var_94(9) = "Net Amount"
  loc_1702732:                                       var_94(&HA) = "Remark"
  loc_1702741:                                       var_94(&HB) = "Status"
  loc_1702750:                                       var_94(&HC) = "Advance"
  loc_170275F:                                       var_94(&HD) = "Venue Detail"
  loc_1702776:                                       global_72 = Array(var_94)
  loc_17027B6:                                       Set global_88 = Proc_6_66_EFF8FC((global_72), (), Index)
  loc_17027DA:                                       global_72(CVar(CStr(Index))).Tag = &HE
  loc_17027E5:                                     End If
  loc_17027E5:                                   End If
  loc_17027E5:                                 End If
  loc_17027E5:                               End If
  loc_17027E5:                             End If
  loc_17027E5:                           End If
  loc_17027E5:                         End If
  loc_17027E5:                       End If
  loc_17027E5:                     End If
  loc_17027E5:                   End If
  loc_17027E5:                 End If
  loc_17027E5:               End If
  loc_17027E5:             End If
  loc_17027E5:           End If
  loc_17027E5:         End If
  loc_17027E5:       End If
  loc_17027E5:     End If
  loc_17027E5:   End If
  loc_17027E5: End If
  loc_17027E5: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1148068
  'Data Table: 51FF58
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  Dim var_A4 As DataGrid
  loc_1147D0A: If (CLng(Shift) = &H1B) Then
  loc_1147D0D:   Call Proc_232_41_EB6C44()
  loc_1147D12:   Exit Sub
  loc_1147D13: End If
  loc_1147D16: var_86 = KeyCode
  loc_1147D21: If (var_86 = CInt(8)) Then
  loc_1147D3C:   Set var_9C = Nothing
  loc_1147D47:   Set var_98 = Nothing
  loc_1147D75:   Proc_6_69_134A198(Me.DGJobSchedule, (var_86), KeyCode, global_52, Shift)
  loc_1147DE2:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1147DE9:     Set var_98 = Me.DGJobSchedule
  loc_1147E08:     Proc_6_138_106D6F8(var_98, global_52, KeyCode, 1(0))
  loc_1147E16:   End If
  loc_1147E19: Else
  loc_1147E21:   If (var_86 = CInt(&H18)) Then
  loc_1147E3C:     Set var_9C = Nothing
  loc_1147E47:     Set var_98 = Nothing
  loc_1147E75:     Proc_6_69_134A198(Me.DGOutlet, var_9C(var_98), KeyCode, global_56, Shift, 0)
  loc_1147EE2:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1147EE9:       Set var_98 = Me.DGOutlet
  loc_1147F08:       Proc_6_138_106D6F8(var_98, global_56, KeyCode, var_98(1))
  loc_1147F16:     End If
  loc_1147F16:   End If
  loc_1147F16: End If
  loc_1147F75: Set var_A4 = (( And (CBool((( And (CBool(0((0 And (CBool(var_9C((CBool(Me.DGOutlet.Visible) = 0)).Visible) = 0))).Visible) = 0))).Visible) = 0)))
  loc_1148029: If ((( And (CBool((( And (CBool(((( And (CBool(var_A4.Visible) = 0)) And (Me.FrmList.Visible = 0))).Visible) = 0))).Visible) = 0)) And (CBool(Me.DGTaxStru.Visible) = 0)) And (CBool(Me.DGJobSchedule.Visible) = 0)) Then
  loc_1148041:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_114804A:     Proc_6_75_E527CC(Shift)
  loc_114804F:   End If
  loc_1148059:   If (CLng(Shift) = &H26) Then
  loc_1148062:     Proc_6_76_E52838(Shift, arg_14)
  loc_1148067:   End If
  loc_1148067: End If
  loc_1148067: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FAEAC4
  'Data Table: 51FF58
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_A8 As TextBox
  Dim arg_10 As Integer
  loc_FAE933: Proc_6_58_E054C0(arg_10)
  loc_FAE93B: var_86 = KeyAscii
  loc_FAE946: If (var_86 = CInt(8)) Then
  loc_FAE965:   If (CBool(Me.DGJobSchedule.Visible) = &HFF) Then
  loc_FAE977:     var_A0 = "Name"
  loc_FAE992:     Proc_6_89_146F1AC((var_86), KeyAscii, global_52)
  loc_FAE9A1:   End If
  loc_FAE9A4: Else
  loc_FAE9AC:   If (var_86 = CInt(&H18)) Then
  loc_FAE9CB:     If (CBool(Me.DGOutlet.Visible) = &HFF) Then
  loc_FAE9D2:       Set var_A8 = var_A0(arg_10)
  loc_FAE9DD:       var_A0 = "Name"
  loc_FAE9F8:       Proc_6_89_146F1AC(var_A8, KeyAscii, global_56, arg_10)
  loc_FAEA07:     End If
  loc_FAEA0A:   Else
  loc_FAEA12:     If (var_86 = CInt(4)) Then
  loc_FAEA3E:       If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_FAEA4E:         Set var_8C = var_A8(KeyAscii)
  loc_FAEA54:         Call 0.Method_Txt_KeyPress0 ("Auto", var_A0)
  loc_FAEA5C:         var_A8.Text = 0
  loc_FAEA6B:       Else
  loc_FAEA94:         If (Ucase(Chr(CLng(arg_10))) = "S") Then
  loc_FAEAA4:           Set var_8C = var_A8(KeyAscii)
  loc_FAEAAA:           Call 0.Method_Txt_KeyPress0 ("Semi")
  loc_FAEAB2:           var_A8.Text = 0
  loc_FAEABE:         End If
  loc_FAEABE:       End If
  loc_FAEAC0:       arg_10 = 0
  loc_FAEAC3:     End If
  loc_FAEAC3:   End If
  loc_FAEAC3: End If
  loc_FAEAC3: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F8301C
  'Data Table: 51FF58
  Dim var_86 As Integer
  loc_F82ECF: var_86 = KeyCode
  loc_F82EDA: If (var_86 = CInt(8)) Then
  loc_F82EF9:   If (CBool(Me.DGJobSchedule.Visible) = &HFF) Then
  loc_F82F0D:     var_A4 = "Name"
  loc_F82F31:     Proc_6_68_129FB34(Me.DGJobSchedule, (var_86), KeyCode)
  loc_F82F4F:     Set var_A0 = Shift(global_52)
  loc_F82F67:     Proc_6_138_106D6F8(Me.DGJobSchedule, global_52, KeyCode)
  loc_F82F75:   End If
  loc_F82F78: Else
  loc_F82F80:   If (var_86 = CInt(&H18)) Then
  loc_F82F9F:     If (CBool(Me.DGOutlet.Visible) = &HFF) Then
  loc_F82FB3:       var_A4 = "Name"
  loc_F82FD7:       Proc_6_68_129FB34(Me.DGOutlet, var_A4(var_A0), KeyCode)
  loc_F82FF5:       Set var_A0 = Shift(global_56)
  loc_F8300D:       Proc_6_138_106D6F8(Me.DGOutlet, global_56, KeyCode)
  loc_F8301B:     End If
  loc_F8301B:   End If
  loc_F8301B: End If
  loc_F8301B: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'EF11C4
  'Data Table: 51FF58
  loc_EF1116: Set var_88 = var_8C(Index)
  loc_EF111C: Call 0.Method_Txt_LostFocus0 ()
  loc_EF112A: Proc_6_73_E22704(var_8C)
  loc_EF1143: ReDim var_94(0 To 0)
  loc_EF115A: var_94(0) = vbNullString
  loc_EF11B1: Set global_88 = Proc_6_66_EFF8FC((Array(var_94)), (), Index)
  loc_EF11C2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1169228
  'Data Table: 51FF58
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim var_C4 As Variant
  loc_1168E78: On Error Resume Next
  loc_1168E7D: Call Proc_232_41_EB6C44()
  loc_1168E94: If (Cancel = CInt(8)) Then
  loc_1168EE7:   Set var_94 = var_98(Cancel)
  loc_1168EED:   Call 0.Method_Txt_Validate0 (var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1168EF5:   var_86 = var_98.Text
  loc_1168F0D:   If ( Or (var_9C = vbNullString)) Then
  loc_1168F12:     Exit Sub
  loc_1168F13:   End If
  loc_1168F50:   Set var_B0 = var_B4(Cancel)
  loc_1168F56:   Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_1168F5E:   var_B4.Text = 
  loc_1168F93:   var_98 = Me.Fields.Item("Code")
  loc_1168F9B:   var_C4 = var_98.Value
  loc_1168FA4:   var_9C = CStr(var_C4)
  loc_1168FB1:   Set var_B0 = var_B4(Cancel)
  loc_1168FB7:   Call 0.Method_Txt_Validate0 (var_9C)
  loc_1168FBF:   var_B4.Tag = 
  loc_1168FDA:   Call Proc_232_37_11B6314(var_C4)
  loc_1168FE5: Else
  loc_1168FEF:   If (var_86 = CInt(&H18)) Then
  loc_1169042:     Set var_94 = var_98(Cancel)
  loc_1169048:     Call 0.Method_Txt_Validate0 (var_9C)
  loc_1169050:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1169068:     If ( Or (var_9C = vbNullString)) Then
  loc_116906D:       Exit Sub
  loc_116906E:     End If
  loc_11690AB:     Set var_B0 = var_B4(Cancel)
  loc_11690B1:     Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_11690B9:     var_B4.Text = 
  loc_11690EE:     var_98 = Me.Fields.Item("Code")
  loc_11690FF:     var_9C = CStr(var_98.Value)
  loc_116910C:     Set var_B0 = var_B4(Cancel)
  loc_1169112:     Call 0.Method_Txt_Validate0 (var_9C)
  loc_116911A:     var_B4.Tag = 
  loc_116913F:     Set var_94 = var_98(Cancel)
  loc_1169145:     Call 0.Method_Txt_Validate0 (var_9C)
  loc_116914D:      = var_98.Tag
  loc_1169159:     Call Proc_232_43_1091E70(var_9C)
  loc_116916B:   Else
  loc_1169175:     If (var_86 = CInt(4)) Then
  loc_1169184:       Set var_94 = var_98(Cancel)
  loc_116918A:       Call 0.Method_Txt_Validate0 ()
  loc_11691C5:       If (Ucase(Left(CVar(var_98), 1)) = "A") Then
  loc_11691D7:         Set var_94 = var_98(Cancel)
  loc_11691DD:         Call 0.Method_Txt_Validate0 ("Auto")
  loc_11691E5:         var_98.Text = 
  loc_11691F4:       Else
  loc_1169205:         Set var_94 = var_98(Cancel)
  loc_116920B:         Call 0.Method_Txt_Validate0 ("Semi")
  loc_1169213:         var_98.Text = 
  loc_116921F:       End If
  loc_1169221:     End If
  loc_1169221:   End If
  loc_1169221: End If
  loc_1169225: Exit Sub
End Sub

Private Sub CmdUpdateJobs_Click() '13CE864
  'Data Table: 51FF58
  Dim var_AC As DataGrid
  Dim var_BC As Variant
  Dim var_110 As Variant
  Dim var_9C As Variant
  Dim var_170 As Variant
  Dim var_140 As Variant
  Dim unk_51FF5F As Connection15
  Dim var_90 As Recordset15
  Dim var_E0 As Variant
  Dim var_A4 As String
  Dim unk_51FFDA As Connection15
  Dim var_98 As Recordset15
  Dim var_A0 As Field20
  Dim var_120 As Variant
  Dim var_1B4 As Variant
  Dim var_35C As TextBox
  Dim var_3C8 As Variant
  Dim var_420 As Variant
  Dim var_180 As Variant
  Dim var_2A8 As Variant
  Dim var_408 As Variant
  Dim var_440 As Variant
  Dim var_460 As Variant
  Dim var_530 As Variant
  Dim var_5A0 As Variant
  Dim var_40C As Fields15
  Dim var_520 As Variant
  Dim var_668 As Fields15
  Dim var_278 As Variant
  Dim var_2F8 As Variant
  Dim var_3D8 As Variant
  Dim var_430 As Variant
  Dim var_4B0 As Variant
  Dim var_570 As Variant
  loc_13CDFCB: Set var_98 = var_9C(CInt(8))
  loc_13CDFD1: Call 0.Method_CmdUpdateJobs_Click0 ()
  loc_13CDFD9: var_A4 = "Job Schedule"
  loc_13CDFE2: Set var_A0 = var_9C
  loc_13CDFFA: If (Proc_6_27_EA565C(var_A0) = 0) Then
  loc_13CE004:   Call Txt_GotFocus(CInt(8))
  loc_13CE009:   Exit Sub
  loc_13CE00A: End If
  loc_13CE00A: On Error Goto loc_13CE822
  loc_13CE01C: var_BC = (var_A4).RowCount
  loc_13CE02F: For var_C0 = 1 To CInt((CLng(var_BC) - 1)): var_94 = var_C0 'Integer
  loc_13CE054:   var_110 = CVar(CStr(DGOutlet.DispID_41)) 'String
  loc_13CE05A:   Proc_6_17_EAA2B0(var_120, var_110, CVar(CLng(2)))
  loc_13CE06D:   Set var_98 = var_9C(CInt(8))
  loc_13CE073:   Call 0.Method_CmdUpdateJobs_Click0 (var_A4, CVar(CLng(var_94)))
  loc_13CE07B:   1 = var_9C.Tag
  loc_13CE083:   var_170 = CVar(var_A4) 'String
  loc_13CE089:   Proc_6_17_EAA2B0(var_180)
  loc_13CE0C1:   unk_51FF5F.Execute CStr("Select Job_Id,Schedule_Id From JobScheduledDetail Where JobName=" & var_120 & " And Schedule_Id=" & var_180), var_1B4, -1
  loc_13CE0CC:   Set var_90 = var_A0
  loc_13CE0F6:   var_1B8 = var_90.RecordCount
  loc_13CE104:   If (var_1B8 = 0) Then
  loc_13CE110:     unk_51FF5F.BeginTrans var_1B8
  loc_13CE119:     var_92 = CByte(1) 'Byte
  loc_13CE123:     var_E0 = 0
  loc_13CE140:     var_A4 = "Select IsNull(Max(CAST(SUBSTRING(Job_Id,3,9) AS INT)),0)+1 AS MyCode From JobScheduledDetail WHERE SITE_CODE='" & MemVar_1F92070
  loc_13CE150:     unk_51FFDA.Execute var_A4 & "'", var_BC, -1
  loc_13CE158:     var_98 = var_98.Fields
  loc_13CE160:     var_E0 = var_9C.Item(var_9C)
  loc_13CE1AA:     var_BC = "000000000"
  loc_13CE1C3:     var_140 = (1 + Format(CStr(var_110), var_BC))
  loc_13CE1C8:     var_8C = CStr("Select Job_Id,Schedule_Id From JobScheduledDetail Where JobName=" & CVar(Proc_183_15_EAC900(MemVar_1F92070, 2, Format(CStr(var_110), var_BC))))
  loc_13CE1E1:     Proc_6_17_EAA2B0(var_BC, var_8C, 1)
  loc_13CE20B:     Proc_6_17_EAA2B0(var_170, CVar(CStr(DGOutlet.DispID_41)), CVar(CLng(2)), CVar(CLng(var_94)))
  loc_13CE21B:     Set var_98 = var_9C(CInt(&HA))
  loc_13CE221:     Call 0.Method_CmdUpdateJobs_Click0 (CVar(Proc_183_15_EAC900(MemVar_1F92070, 2, Format(CStr(var_110), var_BC))), var_A0.Value)
  loc_13CE230:     Proc_6_17_EAA2B0(var_1D8, CVar(var_9C))
  loc_13CE268:     Proc_6_17_EAA2B0(var_278, CVar(CVar(CLng(2)) & CStr(DGOutlet.DispID_41) & ">"), CVar(CLng(var_94)))
  loc_13CE29D:     Proc_6_17_EAA2B0(var_328, Trim(CVar(CStr(DGOutlet.DispID_41))), CVar(CLng(3)))
  loc_13CE2B0:     Set var_A0 = var_35C(CInt(8))
  loc_13CE2B6:     Call 0.Method_CmdUpdateJobs_Click0 (var_360, CVar(CLng(var_94)))
  loc_13CE2BE:     "<" = var_35C.Tag
  loc_13CE2CC:     Proc_6_17_EAA2B0(var_380, CVar(var_360))
  loc_13CE2DC:     Set var_3B4 = var_3B8(CInt(9))
  loc_13CE2E2:     Call 0.Method_CmdUpdateJobs_Click0 (var_170)
  loc_13CE2EA:     var_3C8 = CVar(var_3B8) 'Address
  loc_13CE2F1:     Proc_6_17_EAA2B0(var_3D8)
  loc_13CE301:     Set var_40C = var_410(CInt(&HB))
  loc_13CE307:     Call 0.Method_CmdUpdateJobs_Click0 (var_3C8)
  loc_13CE30F:     var_420 = CVar(var_410) 'Address
  loc_13CE316:     Proc_6_17_EAA2B0(var_430)
  loc_13CE340:     Proc_6_17_EAA2B0(var_4D0, CVar(CStr(DGOutlet.DispID_41)), CVar(CLng(4)))
  loc_13CE350:     Proc_6_17_EAA2B0(var_520, MemVar_1F92070)
  loc_13CE360:     Proc_6_17_EAA2B0(var_570, MemVar_1F920C8)
  loc_13CE370:     Proc_6_8_EB0DE4(var_5C0, CVar(Proc_6_14_EF349C(CVar(CLng(var_94)))))
  loc_13CE380:     Proc_6_17_EAA2B0(var_610, MemVar_1F92078)
  loc_13CE392:     var_E0 = "Insert Into JobScheduledDetail (Job_Id,JobName,Event,ScheduledJob,MobileNo,Schedule_Id,MsgHeader,MsgFooter,TemplateId,JobEnabled,Mark,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ("
  loc_13CE3A3:     var_120 = var_E0 & var_BC & "," 
  loc_13CE3AA:     var_180 = var_120 & var_170 
  loc_13CE3D3:     var_2A8 = var_180 & "," & var_1D8 & "," & var_278 & "," 
  loc_13CE403:     var_408 = var_2A8 & var_328 & "," & var_380 & "," & var_3D8 & "," 
  loc_13CE413:     var_460 = var_408 & var_430 & "," 
  loc_13CE42A:     var_530 = var_460 & var_4D0 & ",0,'*'," & var_520 
  loc_13CE443:     var_5A0 = var_530 & "," & var_570 & "," 
  loc_13CE471:     unk_51FF5F.Execute CStr(var_5A0 & var_5C0 & ",'A'," & var_610 & ")"), var_664, -1
  loc_13CE503:     unk_51FF5F.CommitTrans
  loc_13CE50C:     var_92 = CByte(0) 'Byte
  loc_13CE513:   Else
  loc_13CE51C:     unk_51FF5F.BeginTrans var_1B8
  loc_13CE525:     var_92 = CByte(1) 'Byte
  loc_13CE54E:     Proc_6_17_EAA2B0(var_120, CVar(CStr(DGOutlet.DispID_41)), CVar(CLng(4)))
  loc_13CE55E:     Set var_98 = var_9C(CInt(&HA))
  loc_13CE564:     Call 0.Method_CmdUpdateJobs_Click0 (CVar(CLng(var_94)), var_668)
  loc_13CE573:     Proc_6_17_EAA2B0(var_180, CVar(var_9C))
  loc_13CE5A8:     Proc_6_17_EAA2B0(var_258, Trim(CVar(CStr(DGOutlet.DispID_41))), CVar(CLng(3)))
  loc_13CE5B8:     Set var_A0 = var_35C(CInt(9))
  loc_13CE5BE:     Call 0.Method_CmdUpdateJobs_Click0 (CVar(CLng(var_94)))
  loc_13CE5CD:     Proc_6_17_EAA2B0(var_2A8, CVar(var_35C))
  loc_13CE5DD:     Set var_3B4 = var_3B8(CInt(&HB))
  loc_13CE5E3:     Call 0.Method_CmdUpdateJobs_Click0 (var_420)
  loc_13CE5F2:     Proc_6_17_EAA2B0(var_328)
  loc_13CE605:     Proc_6_17_EAA2B0(var_380, "*")
  loc_13CE615:     Proc_6_17_EAA2B0(var_3C8, MemVar_1F92070)
  loc_13CE625:     Proc_6_17_EAA2B0(var_408, MemVar_1F920C8)
  loc_13CE62F:     var_440 = CVar(Proc_6_14_EF349C(CVar(var_3B8))) 'String
  loc_13CE635:     Proc_6_8_EB0DE4(var_460)
  loc_13CE645:     Proc_6_17_EAA2B0(var_4D0, MemVar_1F92078)
  loc_13CE670:     Proc_6_17_EAA2B0(var_530, CVar(var_90.Fields.Item("Job_Id")))
  loc_13CE69B:     Proc_6_17_EAA2B0(var_5A0, CVar(var_90.Fields.Item("Schedule_Id")))
  loc_13CE6E5:     var_2F8 = "Update JobScheduledDetail Set TemplateId=" & var_120 & ",Event=" & var_180 & ",MobileNo=" & var_258 & ",MsgHeader=" & var_2A8 
  loc_13CE735:     var_4B0 = var_2F8 & ",MsgFooter=" & var_328 & ",Mark=" & var_380 & ",Site_Code=" & var_3C8 & ",U_Name=" & var_408 & ",U_EntDt=" & var_460 
  loc_13CE769:     var_A4 = CStr(var_4B0 & ",U_AE='E',LogSite_Code=" & var_4D0 & " WHERE Job_Id=" & var_530 & " And Schedule_Id=" & var_5A0)
  loc_13CE773:     unk_51FF5F.Execute var_A4, var_5C0, -1
  loc_13CE7F3:     unk_51FF5F.CommitTrans
  loc_13CE7FC:     var_92 = CByte(0) 'Byte
  loc_13CE800:   End If
  loc_13CE803: Next var_C0 'Integer
  loc_13CE80A: Set var_AC = Nothing 
  loc_13CE811: Call Proc_232_37_11B6314(var_BC)
  loc_13CE81E: Set var_90 = Nothing
  loc_13CE821: Exit Sub
  loc_13CE822: ' Referenced from: 13CE00A
  loc_13CE82B: If (CInt(var_92) = 1) Then
  loc_13CE834:   unk_51FF5F.RollbackTrans
  loc_13CE839: End If
  loc_13CE83F: Call 0.Method_arg_50 (var_A4)
  loc_13CE847: var_360 = "Job Schedule Update"
  loc_13CE854: Proc_183_57_104AA84(var_A4)
  loc_13CE860: Exit Sub
End Sub

Private Sub CmdUpdatePOSMsg_Click() '14CB358
  'Data Table: 51FF58
  Dim unk_51FF5F As Connection15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_184 As Variant
  Dim var_188 As String
  Dim var_98 As Recordset15
  Dim var_A0 As Recordset15
  Dim var_A8 As Field20
  Dim var_94 As Long
  Dim var_AC As String
  Dim var_174 As Variant
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_228 As Variant
  Dim var_278 As Variant
  Dim var_2A8 As Variant
  Dim var_2C8 As Variant
  Dim var_1B8 As Variant
  Dim var_248 As Variant
  Dim var_298 As Variant
  loc_14CA64F: Set var_A0 = var_A4(CInt(&H18))
  loc_14CA655: Call 0.Method_CmdUpdatePOSMsg_Click0 ()
  loc_14CA65D: var_AC = "Outlet Name"
  loc_14CA666: Set var_A8 = var_A4
  loc_14CA67E: If (Proc_6_27_EA565C(var_A8) = 0) Then
  loc_14CA688:   Call Txt_GotFocus(CInt(&H18))
  loc_14CA68D:   Exit Sub
  loc_14CA68E: End If
  loc_14CA68E: On Error Goto loc_14CB318
  loc_14CA69A: unk_51FF5F.BeginTrans var_B4
  loc_14CA6A3: var_9A = CByte(1) 'Byte
  loc_14CA6AA: var_88 = "KOT Message"
  loc_14CA6B0: var_90 = vbNullString
  loc_14CA6C1: Set var_A0 = var_A4(CInt(&H19))
  loc_14CA6C7: Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC)
  loc_14CA6CF: var_AC = var_A4.Text
  loc_14CA6D7: var_8C = var_AC
  loc_14CA6FE: Proc_6_17_EAA2B0(var_D4, var_88, "Select Id From EmailSMSForward Where Type=")
  loc_14CA706: var_F4 = var_1A8 & var_D4 
  loc_14CA734: Set var_A0 = var_A4(CInt(&H18))
  loc_14CA73A: Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC, var_F4 & " And FlagType='POS' And LogSite_Code='" & CVar(MemVar_1F92078) & "' And DepartCode=")
  loc_14CA742: -1 = var_A4.Tag
  loc_14CA750: Proc_6_17_EAA2B0(var_174, CVar(var_AC))
  loc_14CA766: unk_51FF5F.Execute CStr(var_A8 & var_174), , 
  loc_14CA7A9: If (var_A8.RecordCount = 0) Then
  loc_14CA7B2:   var_E4 = 0
  loc_14CA7D1:   unk_51FF5F.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_D4, -1
  loc_14CA7D9:   var_A0 = var_A0.Fields
  loc_14CA7E1:   var_E4 = var_A4.Item(var_A4)
  loc_14CA7E9:   var_A8 = var_A8.Value
  loc_14CA7F3:   var_94 = CLng(var_F4)
  loc_14CA81B:   var_AC = CStr(var_94)
  loc_14CA81F:   var_188 = "Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,TxtMsg,GuestMsg,FlagType,DepartCode) values(" & var_AC
  loc_14CA834:   Proc_6_17_EAA2B0(var_D4, var_88, CVar(var_188 & ","), var_340)
  loc_14CA83C:   var_114 = -1 & var_D4 
  loc_14CA845:   var_134 = CVar(var_188 & ",") & " And FlagType='POS' And LogSite_Code='" & ",'" 
  loc_14CA862:   var_174 = var_134 & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_14CA87A:   Proc_6_8_EB0DE4(var_1B8, CVar(Proc_6_14_EF349C(var_174 & "',", var_A8)))
  loc_14CA882:   var_1C8 = var_94 & var_1B8 
  loc_14CA89E:   var_228 = var_1C8 & ",'A','" & CVar(MemVar_1F92078) & "'," 
  loc_14CA8AD:   Proc_6_17_EAA2B0(var_248, var_8C)
  loc_14CA8CD:   Proc_6_17_EAA2B0(var_298, var_90)
  loc_14CA8DE:   var_2C8 = var_228 & var_248 & "," & var_298 & ",'POS'," 
  loc_14CA8F0:   Set var_A0 = var_A4(CInt(&H18))
  loc_14CA8F6:   Call 0.Method_CmdUpdatePOSMsg_Click0 (var_2CC, var_2C8)
  loc_14CA8FE:   var_F4 = var_A4.Tag
  loc_14CA90C:   Proc_6_17_EAA2B0(var_2EC)
  loc_14CA92B:   unk_51FF5F.Execute CStr(CVar(var_2CC) & var_2EC & ")"), , 
  loc_14CA97A: Else
  loc_14CA997:   Proc_6_17_EAA2B0(var_D4, var_8C, "Update EmailSMSForward Set TxtMsg=")
  loc_14CA9B7:   Proc_6_17_EAA2B0(var_134, var_90, var_2EC & var_D4 & ",GuestMsg=")
  loc_14CA9BF:   var_154 = -1 & var_134 
  loc_14CA9D7:   Proc_6_17_EAA2B0(var_174, MemVar_1F920C8)
  loc_14CA9E8:   var_1A8 = var_134 & CVar(MemVar_1F92070) & ",U_Name=" & var_174 & ",U_EntDt=" 
  loc_14CA9F1:   var_1B8 = CVar(Proc_6_14_EF349C(var_1A8)) 'String
  loc_14CA9F7:   Proc_6_8_EB0DE4(var_1C8, var_1B8)
  loc_14CAA17:   Proc_6_17_EAA2B0(var_228, var_88)
  loc_14CAA1F:   var_248 = var_A8 & var_1C8 & ",U_AE='E' Where Type=" & var_228 
  loc_14CAA3B:   var_298 = var_248 & " And FlagType='POS' And LogSite_Code='" & CVar(MemVar_1F92078) & "' And DepartCode=" 
  loc_14CAA4D:   Set var_A0 = var_A4(CInt(&H18))
  loc_14CAA53:   Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC)
  loc_14CAA5B:   var_298 = var_A4.Tag
  loc_14CAA69:   Proc_6_17_EAA2B0(var_2C8)
  loc_14CAA7F:   unk_51FF5F.Execute CStr(CVar(var_AC) & var_2C8), , 
  loc_14CAABF: End If
  loc_14CAAC2: var_88 = "Outlet Bill"
  loc_14CAAD3: Set var_A0 = var_A4(CInt(&H1A))
  loc_14CAAD9: Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC)
  loc_14CAAE1:  = var_A4.Text
  loc_14CAAE9: var_90 = var_AC
  loc_14CAB01: Set var_A0 = var_A4(CInt(&H1B))
  loc_14CAB07: Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC)
  loc_14CAB0F:  = var_A4.Text
  loc_14CAB17: var_8C = var_AC
  loc_14CAB3E: Proc_6_17_EAA2B0(var_D4, var_88, "Select Id From EmailSMSForward Where Type=")
  loc_14CAB46: var_F4 = var_1A8 & var_D4 
  loc_14CAB74: Set var_A0 = var_A4(CInt(&H18))
  loc_14CAB7A: Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC, var_F4 & " And FlagType='POS' And LogSite_Code='" & CVar(MemVar_1F92078) & "' And DepartCode=")
  loc_14CAB82: -1 = var_A4.Tag
  loc_14CAB90: Proc_6_17_EAA2B0(var_174, CVar(var_AC))
  loc_14CABA6: unk_51FF5F.Execute CStr(var_A8 & var_174), , 
  loc_14CABE9: If (var_A8.RecordCount = 0) Then
  loc_14CABF2:   var_E4 = 0
  loc_14CAC11:   unk_51FF5F.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_D4, -1
  loc_14CAC19:   var_A0 = var_A0.Fields
  loc_14CAC21:   var_E4 = var_A4.Item(var_A4)
  loc_14CAC29:   var_A8 = var_A8.Value
  loc_14CAC33:   var_94 = CLng(var_F4)
  loc_14CAC5B:   var_AC = CStr(var_94)
  loc_14CAC5F:   var_188 = "Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,TxtMsg,GuestMsg,FlagType,DepartCode) values(" & var_AC
  loc_14CAC74:   Proc_6_17_EAA2B0(var_D4, var_88, CVar(var_188 & ","), var_340)
  loc_14CAC7C:   var_114 = -1 & var_D4 
  loc_14CAC85:   var_134 = CVar(var_188 & ",") & " And FlagType='POS' And LogSite_Code='" & ",'" 
  loc_14CACA2:   var_174 = var_134 & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_14CACBA:   Proc_6_8_EB0DE4(var_1B8, CVar(Proc_6_14_EF349C(var_174 & "',", var_A8)))
  loc_14CACC2:   var_1C8 = var_94 & var_1B8 
  loc_14CACDE:   var_228 = var_1C8 & ",'A','" & CVar(MemVar_1F92078) & "'," 
  loc_14CACED:   Proc_6_17_EAA2B0(var_248, var_8C)
  loc_14CAD0D:   Proc_6_17_EAA2B0(var_298, var_90)
  loc_14CAD1E:   var_2C8 = var_228 & var_248 & "," & var_298 & ",'POS'," 
  loc_14CAD30:   Set var_A0 = var_A4(CInt(&H18))
  loc_14CAD36:   Call 0.Method_CmdUpdatePOSMsg_Click0 (var_2CC, var_2C8)
  loc_14CAD3E:   var_F4 = var_A4.Tag
  loc_14CAD4C:   Proc_6_17_EAA2B0(var_2EC)
  loc_14CAD6B:   unk_51FF5F.Execute CStr(CVar(var_2CC) & var_2EC & ")"), , 
  loc_14CADBA: Else
  loc_14CADD7:   Proc_6_17_EAA2B0(var_D4, var_8C, "Update EmailSMSForward Set TxtMsg=")
  loc_14CADF7:   Proc_6_17_EAA2B0(var_134, var_90, var_2EC & var_D4 & ",GuestMsg=")
  loc_14CADFF:   var_154 = -1 & var_134 
  loc_14CAE17:   Proc_6_17_EAA2B0(var_174, MemVar_1F920C8)
  loc_14CAE28:   var_1A8 = var_134 & CVar(MemVar_1F92070) & ",U_Name=" & var_174 & ",U_EntDt=" 
  loc_14CAE31:   var_1B8 = CVar(Proc_6_14_EF349C(var_1A8)) 'String
  loc_14CAE37:   Proc_6_8_EB0DE4(var_1C8, var_1B8)
  loc_14CAE57:   Proc_6_17_EAA2B0(var_228, var_88)
  loc_14CAE5F:   var_248 = var_A8 & var_1C8 & ",U_AE='E' Where Type=" & var_228 
  loc_14CAE7B:   var_298 = var_248 & " And FlagType='POS' And LogSite_Code='" & CVar(MemVar_1F92078) & "' And DepartCode=" 
  loc_14CAE8D:   Set var_A0 = var_A4(CInt(&H18))
  loc_14CAE93:   Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC)
  loc_14CAE9B:   var_298 = var_A4.Tag
  loc_14CAEA3:   var_2A8 = CVar(var_AC) 'String
  loc_14CAEA9:   Proc_6_17_EAA2B0(var_2C8)
  loc_14CAEBF:   unk_51FF5F.Execute CStr(var_2A8 & var_2C8), , 
  loc_14CAEFF: End If
  loc_14CAF02: var_88 = "Assign Delivery"
  loc_14CAF13: Set var_A0 = var_A4(CInt(&H1C))
  loc_14CAF19: Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC)
  loc_14CAF21:  = var_A4.Text
  loc_14CAF29: var_90 = var_AC
  loc_14CAF50: Proc_6_17_EAA2B0(var_D4, var_88, "Select Id From EmailSMSForward Where Type=")
  loc_14CAF58: var_F4 = var_1A8 & var_D4 
  loc_14CAF86: Set var_A0 = var_A4(CInt(&H18))
  loc_14CAF8C: Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC, var_F4 & " And FlagType='POS' And LogSite_Code='" & CVar(MemVar_1F92078) & "' And DepartCode=")
  loc_14CAF94: -1 = var_A4.Tag
  loc_14CAFA2: Proc_6_17_EAA2B0(var_174, CVar(var_AC))
  loc_14CAFB8: unk_51FF5F.Execute CStr(var_A8 & var_174), , 
  loc_14CAFFB: If (var_A8.RecordCount = 0) Then
  loc_14CB004:   var_E4 = 0
  loc_14CB023:   unk_51FF5F.Execute "Select IsNull(Max(Id),0)+1 From EmailSMSForward", var_D4, -1
  loc_14CB02B:   var_A0 = var_A0.Fields
  loc_14CB033:   var_E4 = var_A4.Item(var_A4)
  loc_14CB03B:   var_A8 = var_A8.Value
  loc_14CB045:   var_94 = CLng(var_F4)
  loc_14CB06D:   var_AC = CStr(var_94)
  loc_14CB071:   var_188 = "Insert into EmailSMSForward (Id,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,GuestMsg,FlagType,DepartCode) values(" & var_AC
  loc_14CB086:   Proc_6_17_EAA2B0(var_D4, var_88, CVar(var_188 & ","), var_2EC)
  loc_14CB08E:   var_114 = -1 & var_D4 
  loc_14CB097:   var_134 = CVar(var_188 & ",") & " And FlagType='POS' And LogSite_Code='" & ",'" 
  loc_14CB0BD:   var_184 = var_134 & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," 
  loc_14CB0CC:   Proc_6_8_EB0DE4(var_1B8, CVar(Proc_6_14_EF349C(var_184, var_A8)))
  loc_14CB0D4:   var_1C8 = var_94 & var_1B8 
  loc_14CB0FF:   Proc_6_17_EAA2B0(var_248, var_90)
  loc_14CB110:   var_278 = var_1C8 & ",'A','" & CVar(MemVar_1F92078) & "'," & var_248 & ",'POS'," 
  loc_14CB122:   Set var_A0 = var_A4(CInt(&H18))
  loc_14CB128:   Call 0.Method_CmdUpdatePOSMsg_Click0 (var_2CC, var_278)
  loc_14CB130:   var_F4 = var_A4.Tag
  loc_14CB13E:   Proc_6_17_EAA2B0(var_2A8)
  loc_14CB15D:   unk_51FF5F.Execute CStr(CVar(var_2CC) & var_2A8 & ")"), , 
  loc_14CB1A6: Else
  loc_14CB1C3:   Proc_6_17_EAA2B0(var_D4, var_90, "Update EmailSMSForward Set GuestMsg=")
  loc_14CB1E3:   Proc_6_17_EAA2B0(var_134, MemVar_1F920C8, var_2A8 & var_D4 & ",U_Name=")
  loc_14CB1EB:   var_154 = -1 & var_134 
  loc_14CB203:   Proc_6_8_EB0DE4(var_184, CVar(Proc_6_14_EF349C(var_134 & CVar(MemVar_1F92070) & ",U_EntDt=")))
  loc_14CB223:   Proc_6_17_EAA2B0(var_1C8, var_88)
  loc_14CB247:   var_248 = var_A8 & var_184 & ",U_AE='E' Where Type=" & var_1C8 & " And FlagType='POS' And LogSite_Code='" & CVar(MemVar_1F92078) & "' And DepartCode=" 
  loc_14CB259:   Set var_A0 = var_A4(CInt(&H18))
  loc_14CB25F:   Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC)
  loc_14CB267:   var_248 = var_A4.Tag
  loc_14CB275:   Proc_6_17_EAA2B0(var_278)
  loc_14CB28B:   unk_51FF5F.Execute CStr(CVar(var_AC) & var_278), , 
  loc_14CB2C5: End If
  loc_14CB2CB: unk_51FF5F.CommitTrans
  loc_14CB2D4: var_9A = CByte(0) 'Byte
  loc_14CB2E6: Set var_A0 = var_A4(CInt(&H18))
  loc_14CB2EC: Call 0.Method_CmdUpdatePOSMsg_Click0 (var_AC)
  loc_14CB2F4:  = var_A4.Tag
  loc_14CB300: Call Proc_232_43_1091E70(var_AC)
  loc_14CB314: Set var_98 = Nothing
  loc_14CB317: Exit Sub
  loc_14CB318: ' Referenced from: 14CA68E
  loc_14CB321: If (CInt(var_9A) = 1) Then
  loc_14CB32A:   unk_51FF5F.RollbackTrans
  loc_14CB32F: End If
  loc_14CB335: Call 0.Method_arg_50 (var_AC)
  loc_14CB33D: var_2CC = "Outlet Message"
  loc_14CB34A: Proc_183_57_104AA84(var_AC)
  loc_14CB356: Exit Sub
End Sub

Private Sub CmdCheck_Click() 'FB8254
  'Data Table: 51FF58
  loc_FB80CA: ().InsertRowLabels , 
  loc_FB80E4: Set var_DC = CVar(CLng())(CVar(CLng(3)))
  loc_FB8110: If (Len(CStr(DGOutlet.DispID_41)) < &HA) Then
  loc_FB812C:   MsgBox("Enter 10 digit Mobile No.", &H10, var_EC, var_100, var_110)
  loc_FB813C:   Exit Sub
  loc_FB813D: End If
  loc_FB8147: ().InsertRowLabels , 
  loc_FB8161: Set var_DC = CVar(CLng())(CVar(CLng(4)))
  loc_FB818B: If (CStr(DGOutlet.DispID_41) = vbNullString) Then
  loc_FB81A7:   MsgBox("Enter Appropriate Template Id.", &H10, var_EC, var_100, var_110)
  loc_FB81B7:   Exit Sub
  loc_FB81B8: End If
  loc_FB81C2: ().InsertRowLabels , 
  loc_FB81DC: Set var_DC = CVar(CLng())(CVar(CLng(2)))
  loc_FB81F8: (DGOutlet.DispID_41).InsertRowLabels , 
  loc_FB8212: Set var_158 = CVar(CLng())(CVar(CLng(1)))
  loc_FB822F: Proc_233_11_1A18D30(CStr(var_EC))
  loc_FB8251: Exit Sub
End Sub

Public Sub Proc_232_33_11B79C8(arg_C) '11B79C8
  'Data Table: 51FF58
  Dim var_88 As Integer
  Dim var_8C As DataGrid
  Dim var_A0 As Long
  Dim var_B0 As DataGrid
  Dim var_F0 As Variant
  Dim var_A4 As TextBox
  Dim var_A8 As String
  Dim var_174 As Variant
  Dim var_124 As DataGrid
  Dim var_2C8 As Double
  Dim var_298 As Variant
  Dim unk_51FF5F As Connection15
  Dim var_2CC As Long
  loc_11B75C7: var_88 = arg_C
  loc_11B75D0: If (var_88 = 1) Then
  loc_11B75DD:   (var_88).DeleteRowLabels , 
  loc_11B75E6:   var_A0 = CLng()
  loc_11B75F6:   If (var_A0 = CLng(2)) Then
  loc_11B7603:     (var_A0).InsertRows , 
  loc_11B761B:     (CVar(CLng())).DeleteRowLabels , 
  loc_11B7624:     var_F0 = CVar(CLng()) 'Long
  loc_11B7636:     Set var_8C = var_A4(arg_C)
  loc_11B763C:     Call 0.Method_Proc_232_33_11B79C80 (var_A8)
  loc_11B7644:     var_F0 = var_A4.Text
  loc_11B765A:     LateIdCallSt
  loc_11B7682:     ((CVar(var_A8))).InsertRowLabels , 
  loc_11B769C:     Set var_A4 = CVar(CLng())(CVar(CLng(0)))
  loc_11B76C8:     ((CDbl(Val(CStr(DGOutlet.DispID_41))) <> CDbl(0))).InsertRowLabels , 
  loc_11B76E2:     Set var_B0 = CVar(CLng())(CVar(CLng(1)))
  loc_11B76F3:     var_174 = CVar(CStr(DGOutlet.DispID_41)) 'String
  loc_11B7730:     If CBool( And (Trim(var_174) <> vbNullString)) Then
  loc_11B773D:       ().InsertRowLabels , 
  loc_11B7757:       Set var_A4 = CVar(CLng())(CVar(CLng(2)))
  loc_11B7779:       Proc_6_17_EAA2B0(var_174)
  loc_11B7788:       (Trim(CVar(CStr(DGOutlet.DispID_41)))).InsertRows , 
  loc_11B77A2:       Set var_B0 = CVar(CLng())(CVar(CLng(1)))
  loc_11B77BE:       (DGOutlet.DispID_41).InsertRows , 
  loc_11B77D8:       Set var_268 = CVar(CLng())(CVar(CLng(0)))
  loc_11B77E9:       var_A8 = CStr(DGOutlet.DispID_41)
  loc_11B77F1:       var_2C8 = Val(var_A8)
  loc_11B7831:       var_298 = "UPDATE EmailSMSForward SET MobileNo=" & var_174 & " Where Type='" & CVar(CStr(var_1D4)) & "' And Id=" & CVar(var_2C8) 
  loc_11B783F:       unk_51FF5F.Execute CStr(var_298), var_2BC, -1
  loc_11B787F:     End If
  loc_11B787F:   End If
  loc_11B7882: Else
  loc_11B7888:   If (var_88 = 2) Then
  loc_11B7895:     var_2C8(var_2C0).DeleteRowLabels , 
  loc_11B789E:     var_2CC = CLng()
  loc_11B78AE:     If (var_2CC = CLng(3)) Then
  loc_11B78BB:       (var_2CC).InsertRows , 
  loc_11B78D3:       (CVar(CLng())).DeleteRowLabels , 
  loc_11B78DC:       var_F0 = CVar(CLng()) 'Long
  loc_11B78EE:       Set var_8C = var_A4(arg_C)
  loc_11B78F4:       Call 0.Method_Proc_232_33_11B79C80 (var_A8)
  loc_11B78FC:       var_F0 = var_A4.Text
  loc_11B790C:       Set var_124 = (CVar(var_A8))
  loc_11B7912:       LateIdCallSt
  loc_11B7933:     Else
  loc_11B793A:       If (var_2CC = CLng(4)) Then
  loc_11B7947:         (var_124).InsertRows , 
  loc_11B795F:         (CVar(CLng())).DeleteRowLabels , 
  loc_11B7968:         var_F0 = CVar(CLng()) 'Long
  loc_11B797A:         Set var_8C = var_A4(arg_C)
  loc_11B7980:         Call 0.Method_Proc_232_33_11B79C80 (var_A8)
  loc_11B7988:         var_F0 = var_A4.Text
  loc_11B7998:         Set var_124 = (CVar(var_A8))
  loc_11B799E:         LateIdCallSt
  loc_11B79BC:       End If
  loc_11B79BC:     End If
  loc_11B79BC:   End If
  loc_11B79BC: End If
  loc_11B79C1: Proc_232_33_11B79C8 = &HFF
End Sub

Public Sub Proc_232_34_FB19B0
  'Data Table: 51FF58
  Dim var_98 As Variant
  Dim var_88 As DataGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_FB180B: var_98 = 3
  loc_FB1828: ().RowCount = 2
  loc_FB182D: var_98 = 0
  loc_FB1839: var_B8 = CVar(CLng(0)) 'Long
  loc_FB183E: var_D8 = "ID"
  loc_FB1847: LateIdCallSt
  loc_FB1852: var_98 = CVar(CLng(0)) 'Long
  loc_FB185D: var_B8 = CVar(CInt(7)) 'Integer
  loc_FB1864: LateIdCallSt
  loc_FB186F: var_98 = CVar(CLng(0)) 'Long
  loc_FB187A: var_B8 = CVar(CInt(7)) 'Integer
  loc_FB1881: LateIdCallSt
  loc_FB188C: var_98 = CVar(CLng(0)) 'Long
  loc_FB1891: var_B8 = &H190
  loc_FB189D: LateIdCallSt
  loc_FB18A5: var_98 = 0
  loc_FB18B1: var_B8 = CVar(CLng(1)) 'Long
  loc_FB18B6: var_D8 = "Message Type"
  loc_FB18BF: LateIdCallSt
  loc_FB18CA: var_98 = CVar(CLng(1)) 'Long
  loc_FB18D5: var_B8 = CVar(CInt(1)) 'Integer
  loc_FB18DC: LateIdCallSt
  loc_FB18E7: var_98 = CVar(CLng(1)) 'Long
  loc_FB18F2: var_B8 = CVar(CInt(1)) 'Integer
  loc_FB18F9: LateIdCallSt
  loc_FB1904: var_98 = CVar(CLng(1)) 'Long
  loc_FB1909: var_B8 = &H7D0
  loc_FB1915: LateIdCallSt
  loc_FB191D: var_98 = 0
  loc_FB1929: var_B8 = CVar(CLng(2)) 'Long
  loc_FB192E: var_D8 = "Mobile No.(s)"
  loc_FB1937: LateIdCallSt
  loc_FB1942: var_98 = CVar(CLng(2)) 'Long
  loc_FB194D: var_B8 = CVar(CInt(1)) 'Integer
  loc_FB1954: LateIdCallSt
  loc_FB195F: var_98 = CVar(CLng(2)) 'Long
  loc_FB196A: var_B8 = CVar(CInt(4)) 'Integer
  loc_FB1971: LateIdCallSt
  loc_FB197C: var_98 = CVar(CLng(2)) 'Long
  loc_FB1981: var_B8 = &H1C84
  loc_FB198D: LateIdCallSt
  loc_FB1995: var_98 = 1
  loc_FB19A8: Set var_88 = Nothing 
  loc_FB19AC: Exit Sub
End Sub

Public Sub Proc_232_35_12EA5FC
  'Data Table: 51FF58
  Dim var_A0 As String
  Dim unk_51FF5F As Connection15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_98 As Recordset15
  Dim var_E0 As DataGrid
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_164 As TextBox
  loc_12E9F4A: Call Proc_232_34_FB19B0()
  loc_12E9F6A: var_A0 = "Select Id,Type,MobileNo,TxtMsg From EmailSMSForward S Where S.LogSite_Code='" & MemVar_1F92078 & "' And (FlagType In ('FOM','BANQ') or Departcode='"
  loc_12E9F81: unk_51FF5F.Execute var_A0 & MemVar_1F92078 & "RS') ORDER BY S.Id", var_C8, -1
  loc_12E9F8C: Set var_98 = var_CC
  loc_12E9FB3: var_CC(2).RowCount = 
  loc_12E9FBF: Set var_E0 = ()
  loc_12E9FC2: ' Referenced from: 12EA5E2
  loc_12E9FD1: If Not(var_98.EOF) Then
  loc_12E9FE6:   var_B8 = CVar((CLng(var_E0.RowCount) - 1)) 'Long
  loc_12E9FF9:   var_E0.InsertRows DGOutlet.DispID_A, 2
  loc_12EA002:   var_DC = CVar(CLng()) 'Long
  loc_12EA035:   Proc_6_39_E7C810(var_F8, CVar(var_98.Fields.Item("ID")))
  loc_12EA045:   LateIdCallSt
  loc_12EA067:   var_DC = CVar(CLng(CVar(CLng(0)))) 'Long
  loc_12EA0A3:   LateIdCallSt
  loc_12EA0BA:   r_E0, CVar(CStr(var_F8)) var_E0, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("Type")), CVar(CLng(1))))
  loc_12EA0C3:   var_DC = CVar(CLng(var_DC)) 'Long
  loc_12EA0FF:   LateIdCallSt
  loc_12EA13B:   var_15C = Proc_6_38_E68A98(CVar(var_98.Fields.Item("Type")), var_E0, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("MobileNo")), CVar(CLng(2)))))
  loc_12EA14C:   If (var_15C = "Check In") Then
  loc_12EA185:     Set var_160 = var_164(CInt(&HE))
  loc_12EA18B:     Call 0.Method_Proc_232_35_12EA5FC0 (Proc_6_38_E68A98(CVar(var_98.Fields.Item("TxtMsg")), var_DC))
  loc_12EA193:     var_164.Text = var_DC
  loc_12EA1DD:     Set var_160 = var_164(CInt(&HE))
  loc_12EA1E3:     Call 0.Method_Proc_232_35_12EA5FC0 (Proc_6_38_E68A98(CVar(var_98.Fields.Item("Type"))))
  loc_12EA1EB:     var_164.Tag = 
  loc_12EA202:   Else
  loc_12EA20A:     If (var_15C = "Check Out") Then
  loc_12EA243:       Set var_160 = var_164(CInt(&HF))
  loc_12EA249:       Call 0.Method_Proc_232_35_12EA5FC0 (Proc_6_38_E68A98(CVar(var_98.Fields.Item("TxtMsg"))))
  loc_12EA251:       var_164.Text = 
  loc_12EA29B:       Set var_160 = var_164(CInt(&HF))
  loc_12EA2A1:       Call 0.Method_Proc_232_35_12EA5FC0 (Proc_6_38_E68A98(CVar(var_98.Fields.Item("Type"))))
  loc_12EA2A9:       var_164.Tag = 
  loc_12EA2C0:     Else
  loc_12EA2C8:       If (var_15C = "Reservation") Then
  loc_12EA301:         Set var_160 = var_164(CInt(&HC))
  loc_12EA307:         Call 0.Method_Proc_232_35_12EA5FC0 (Proc_6_38_E68A98(CVar(var_98.Fields.Item("TxtMsg"))))
  loc_12EA30F:         var_164.Text = 
  loc_12EA359:         Set var_160 = var_164(CInt(&HC))
  loc_12EA35F:         Call 0.Method_Proc_232_35_12EA5FC0 (Proc_6_38_E68A98(CVar(var_98.Fields.Item("Type"))))
  loc_12EA367:         var_164.Tag = 
  loc_12EA37E:       Else
  loc_12EA386:         If (var_15C = "Reservation Cancel") Then
  loc_12EA3BF:           Set var_160 = var_164(CInt(&HD))
  loc_12EA3C5:           Call 0.Method_Proc_232_35_12EA5FC0 (Proc_6_38_E68A98(CVar(var_98.Fields.Item("TxtMsg"))))
  loc_12EA3CD:           var_164.Text = 
  loc_12EA417:           Set var_160 = var_164(CInt(&HD))
  loc_12EA41D:           Call 0.Method_Proc_232_35_12EA5FC0 (Proc_6_38_E68A98(CVar(var_98.Fields.Item("Type"))))
  loc_12EA425:           var_164.Tag = 
  loc_12EA43C:         Else
  loc_12EA444:           If (var_15C = "Booking") Then
  loc_12EA47D:             Set var_160 = var_164(CInt(&H13))
  loc_12EA483:             Call 0.Method_Proc_232_35_12EA5FC0 (Proc_6_38_E68A98(CVar(var_98.Fields.Item("TxtMsg"))))
  loc_12EA48B:             var_164.Text = 
  loc_12EA4D5:             Set var_160 = var_164(CInt(&H13))
  loc_12EA4DB:             Call 0.Method_Proc_232_35_12EA5FC0 (Proc_6_38_E68A98(CVar(var_98.Fields.Item("Type"))))
  loc_12EA4E3:             var_164.Tag = 
  loc_12EA4FA:           Else
  loc_12EA502:             If (var_15C = "Booking Cancel") Then
  loc_12EA53B:               Set var_160 = var_164(CInt(&H14))
  loc_12EA541:               Call 0.Method_Proc_232_35_12EA5FC0 (Proc_6_38_E68A98(CVar(var_98.Fields.Item("TxtMsg"))))
  loc_12EA549:               var_164.Text = 
  loc_12EA593:               Set var_160 = var_164(CInt(&H14))
  loc_12EA599:               Call 0.Method_Proc_232_35_12EA5FC0 (Proc_6_38_E68A98(CVar(var_98.Fields.Item("Type"))))
  loc_12EA5A1:               var_164.Tag = 
  loc_12EA5B5:             End If
  loc_12EA5B5:           End If
  loc_12EA5B5:         End If
  loc_12EA5B5:       End If
  loc_12EA5B5:     End If
  loc_12EA5B5:   End If
  loc_12EA5B8:   var_98.MoveNext
  loc_12EA5CE:   If (var_98.EOF = 0) Then
  loc_12EA5D1:     var_B8 = vbNullString
  loc_12EA5E2:   End If
  loc_12EA5E2:   GoTo loc_12E9FC2
  loc_12EA5E5: End If
  loc_12EA5E7: Set var_E0 = Nothing 
  loc_12EA5F0: Set var_98 = Nothing
  loc_12EA5F3: Proc_232_35_12EA5FC = DGOutlet.DispID_10000
  loc_12EA5F9: IStDargCopy
End Sub

Public Sub Proc_232_36_110EC1C
  'Data Table: 51FF58
  Dim var_98 As Variant
  Dim var_88 As DataGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_F8 As Variant
  loc_110E8C0: Set var_88 = ()
  loc_110E8C3: var_98 = 5
  loc_110E8E0: var_88.RowCount = 2
  loc_110E8E5: var_98 = 0
  loc_110E8F1: var_B8 = CVar(CLng(0)) 'Long
  loc_110E8F6: var_D8 = "ID"
  loc_110E8FF: LateIdCallSt
  loc_110E90A: var_98 = CVar(CLng(0)) 'Long
  loc_110E915: var_B8 = CVar(CInt(7)) 'Integer
  loc_110E91C: LateIdCallSt
  loc_110E927: var_98 = CVar(CLng(0)) 'Long
  loc_110E932: var_B8 = CVar(CInt(7)) 'Integer
  loc_110E939: LateIdCallSt
  loc_110E944: var_98 = CVar(CLng(0)) 'Long
  loc_110E949: var_B8 = &H190
  loc_110E955: LateIdCallSt
  loc_110E95D: var_98 = 0
  loc_110E969: var_B8 = CVar(CLng(1)) 'Long
  loc_110E96E: var_D8 = "ID"
  loc_110E977: LateIdCallSt
  loc_110E982: var_98 = CVar(CLng(1)) 'Long
  loc_110E98D: var_B8 = CVar(CInt(7)) 'Integer
  loc_110E994: LateIdCallSt
  loc_110E99F: var_98 = CVar(CLng(1)) 'Long
  loc_110E9AA: var_B8 = CVar(CInt(7)) 'Integer
  loc_110E9B1: LateIdCallSt
  loc_110E9BC: var_98 = CVar(CLng(1)) 'Long
  loc_110E9C1: var_B8 = 0
  loc_110E9CD: LateIdCallSt
  loc_110E9D5: var_98 = 0
  loc_110E9E1: var_B8 = CVar(CLng(2)) 'Long
  loc_110E9E6: var_D8 = "Message Type"
  loc_110E9EF: LateIdCallSt
  loc_110E9FA: var_98 = CVar(CLng(2)) 'Long
  loc_110EA05: var_B8 = CVar(CInt(1)) 'Integer
  loc_110EA0C: LateIdCallSt
  loc_110EA17: var_98 = CVar(CLng(2)) 'Long
  loc_110EA22: var_B8 = CVar(CInt(1)) 'Integer
  loc_110EA29: LateIdCallSt
  loc_110EA34: var_98 = CVar(CLng(2)) 'Long
  loc_110EA39: var_B8 = &H9C4
  loc_110EA45: LateIdCallSt
  loc_110EA4D: var_98 = 0
  loc_110EA59: var_B8 = CVar(CLng(3)) 'Long
  loc_110EA5E: var_D8 = "Mobile No.(s)"
  loc_110EA67: LateIdCallSt
  loc_110EA72: var_98 = CVar(CLng(3)) 'Long
  loc_110EA7D: var_B8 = CVar(CInt(1)) 'Integer
  loc_110EA84: LateIdCallSt
  loc_110EA8F: var_98 = CVar(CLng(3)) 'Long
  loc_110EA9A: var_B8 = CVar(CInt(4)) 'Integer
  loc_110EAA1: LateIdCallSt
  loc_110EAAC: var_98 = CVar(CLng(3)) 'Long
  loc_110EAB1: var_B8 = &HBB8
  loc_110EABD: LateIdCallSt
  loc_110EAC5: var_98 = 0
  loc_110EAD1: var_B8 = CVar(CLng(4)) 'Long
  loc_110EAD6: var_D8 = "Template_Id"
  loc_110EADF: LateIdCallSt
  loc_110EAEA: var_98 = CVar(CLng(4)) 'Long
  loc_110EAF5: var_B8 = CVar(CInt(1)) 'Integer
  loc_110EAFC: LateIdCallSt
  loc_110EB07: var_98 = CVar(CLng(4)) 'Long
  loc_110EB12: var_B8 = CVar(CInt(4)) 'Integer
  loc_110EB19: LateIdCallSt
  loc_110EB24: var_98 = CVar(CLng(4)) 'Long
  loc_110EB29: var_B8 = &HED8
  loc_110EB35: LateIdCallSt
  loc_110EB49: var_88.RowCount = 1
  loc_110EB4E: var_98 = vbNullString
  loc_110EB5F: var_98 = 1
  loc_110EB6B: var_B8 = CVar(CLng(0)) 'Long
  loc_110EB74: var_F8 = CVar(CStr(1)) 'String
  loc_110EB7B: LateIdCallSt
  loc_110EB86: var_98 = 1
  loc_110EB92: var_B8 = CVar(CLng(2)) 'Long
  loc_110EB97: var_D8 = "FOM Sale&Collection"
  loc_110EBA0: LateIdCallSt
  loc_110EBA8: var_98 = vbNullString
  loc_110EBB9: var_98 = 2
  loc_110EBC5: var_B8 = CVar(CLng(0)) 'Long
  loc_110EBCE: var_F8 = CVar(CStr(2)) 'String
  loc_110EBD5: LateIdCallSt
  loc_110EBE0: var_98 = 2
  loc_110EBEC: var_B8 = CVar(CLng(2)) 'Long
  loc_110EBF1: var_D8 = "POS&BANQ Sale&Collection"
  loc_110EBFA: LateIdCallSt
  loc_110EC02: var_98 = 1
  loc_110EC15: Set var_88 = Nothing 
  loc_110EC19: Exit Sub
End Sub

Public Sub Proc_232_37_11B6314
  'Data Table: 51FF58
  Dim var_A0 As String
  Dim var_A8 As Variant
  Dim unk_51FF5F As Connection15
  Dim var_98 As Recordset15
  Dim var_A4 As Variant
  Dim var_13C As TextBox
  Dim var_CC As Variant
  Dim var_AC As String
  Dim var_120 As Variant
  loc_11B5EF2: Call Proc_232_36_110EC1C()
  loc_11B5F0B: var_A0 = "Select Job_Id,JobName,Event,MobileNo,MsgHeader,MsgFooter,TemplateId From JobScheduledDetail S Where S.LogSite_Code='" & MemVar_1F92078
  loc_11B5F23: Set var_A4 = var_A8(CInt(8))
  loc_11B5F29: Call 0.Method_Proc_232_37_11B63140 (var_AC, CVar(var_A0 & "' And S.Schedule_Id="), var_130)
  loc_11B5F31: -1 = var_A8.Tag
  loc_11B5F3F: Proc_6_17_EAA2B0(var_CC, CVar(var_AC))
  loc_11B5F5E: unk_51FF5F.Execute CStr(var_134 & var_CC & " ORDER BY S.Job_Id"), , 
  loc_11B5F69: Set var_98 = var_134
  loc_11B5F9F: If (var_98.RecordCount > 0) Then
  loc_11B5FD8:   Set var_134 = var_13C(CInt(9))
  loc_11B5FDE:   Call 0.Method_Proc_232_37_11B63140 (Proc_6_38_E68A98(CVar(var_98.Fields.Item("MsgHeader"))))
  loc_11B5FE6:   var_13C.Text = 
  loc_11B6030:   Set var_134 = var_13C(CInt(&HB))
  loc_11B6036:   Call 0.Method_Proc_232_37_11B63140 (Proc_6_38_E68A98(CVar(var_98.Fields.Item("MsgFooter"))))
  loc_11B603E:   var_13C.Text = 
  loc_11B6088:   Set var_134 = var_13C(CInt(&HA))
  loc_11B608E:   Call 0.Method_Proc_232_37_11B63140 (Proc_6_38_E68A98(CVar(var_98.Fields.Item("Event"))))
  loc_11B6096:   var_13C.Text = 
  loc_11B60AA:   ' Referenced from: 11B6285
  loc_11B60B9:   If Not(var_98.EOF) Then
  loc_11B60E1:     For var_142 =  To CInt((CLng(1(var_9A).RowCount) - 1)):  = var_142 'Integer
  loc_11B60FC:       Set var_A4 = CVar(CLng(var_9A))(CVar(CLng(2)))
  loc_11B612F:       var_CC = CVar(var_98.Fields.Item("JobName")) 'Address
  loc_11B6152:       If (CStr(DGOutlet.DispID_41) = Proc_6_38_E68A98(var_CC)) Then
  loc_11B6159:         var_120 = CVar(CLng(var_9A)) 'Long
  loc_11B618C:         Proc_6_39_E7C810(var_CC, CVar(var_98.Fields.Item("Job_Id")))
  loc_11B619D:         Set var_134 = CVar(CLng(1))(CVar(CStr(var_CC)))
  loc_11B61A3:         LateIdCallSt
  loc_11B61FC:         Set var_134 = var_134(CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("MobileNo")), CVar(CLng(3)), CVar(CLng(var_9A)))))
  loc_11B6202:         LateIdCallSt
  loc_11B6240:         var_A8 = var_98.Fields.Item("TemplateId")
  loc_11B6259:         Set var_134 = var_134(CVar(Proc_6_38_E68A98(CVar(var_A8), CVar(CLng(4)), CVar(CLng(var_9A)))))
  loc_11B625F:         LateIdCallSt
  loc_11B6275:       End If
  loc_11B6278:     Next var_142 'Integer
  loc_11B6280:     var_98.MoveNext
  loc_11B6285:     GoTo loc_11B60AA
  loc_11B6288:   End If
  loc_11B628B: Else
  loc_11B6299:   Set var_A4 = var_A8(CInt(9))
  loc_11B629F:   Call 0.Method_Proc_232_37_11B63140 (vbNullString)
  loc_11B62A7:   var_A8.Text = 
  loc_11B62C1:   Set var_A4 = var_A8(CInt(&HB))
  loc_11B62C7:   Call 0.Method_Proc_232_37_11B63140 (vbNullString)
  loc_11B62CF:   var_A8.Text = 
  loc_11B62E9:   Set var_A4 = var_A8(CInt(&HA))
  loc_11B62EF:   Call 0.Method_Proc_232_37_11B63140 (vbNullString)
  loc_11B62F7:   var_A8.Text = 
  loc_11B6303: End If
  loc_11B6308: Set var_98 = Nothing
  loc_11B630B: Proc_232_37_11B6314 = 
End Sub

Public Sub Proc_232_38_DFC2B0
  'Data Table: 51FF58
  loc_DFC2AC: Exit Sub
End Sub

Public Sub Proc_232_39_DFBBFC
  'Data Table: 51FF58
  loc_DFBBF8: Exit Sub
End Sub

Public Sub Proc_232_40_134A9D4
  'Data Table: 51FF58
  Dim unk_51FF5F As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Fields15
  Dim var_BC As Variant
  Dim var_C4 As TextBox
  Dim var_B4 As Variant
  Dim var_C0 As Fields15
  Dim var_144 As String
  Dim var_140 As TextBox
  loc_134A1EC: On Error Goto loc_134A9CC
  loc_134A209: If (Me.Recordset15.RecordCount > 0) Then
  loc_134A222:   unk_51FF5F.Execute "Select Top 1 JS.Schedule_Id,JS.ScheduleName From JobScheduledDetail JD Inner Join JobSchedule JS On JD.Schedule_Id=JS.Schedule_Id Order By JS.ScheduleName", var_B4, -1
  loc_134A22D:   Set var_88 = var_B8
  loc_134A24A:   If (var_88.RecordCount > 0) Then
  loc_134A25F:     var_B8 = var_88.Fields
  loc_134A286:     Set var_C0 = var_C4(CInt(8))
  loc_134A28C:     Call 0.Method_Proc_232_40_134A9D40 (CStr(var_B8.Item("ScheduleName").Value))
  loc_134A294:     var_C4.Text = var_B8
  loc_134A2C4:     var_BC = var_88.Fields.Item("Schedule_Id")
  loc_134A2CC:     var_B4 = var_BC.Value
  loc_134A2E3:     Set var_C0 = var_C4(CInt(8))
  loc_134A2E9:     Call 0.Method_Proc_232_40_134A9D40 (CStr(var_B4))
  loc_134A2F1:     var_C4.Tag = 
  loc_134A30A:   Else
  loc_134A318:     Set var_B8 = var_BC(CInt(8))
  loc_134A31E:     Call 0.Method_Proc_232_40_134A9D40 (vbNullString)
  loc_134A326:     var_BC.Text = 
  loc_134A340:     Set var_B8 = var_BC(CInt(8))
  loc_134A346:     Call 0.Method_Proc_232_40_134A9D40 (vbNullString)
  loc_134A34E:     var_BC.Tag = 
  loc_134A35A:   End If
  loc_134A35D:   Call Proc_232_37_11B6314(var_B4)
  loc_134A3A1:   Set var_C0 = var_C4(CInt(0))
  loc_134A3A7:   Call 0.Method_Proc_232_40_134A9D40 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CheckInMsg"))))
  loc_134A3AF:   var_C4.Text = 
  loc_134A3FF:   Set var_C0 = var_C4(CInt(1))
  loc_134A405:   Call 0.Method_Proc_232_40_134A9D40 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CheckOutMsg"))))
  loc_134A40D:   var_C4.Text = 
  loc_134A45D:   Set var_C0 = var_C4(CInt(3))
  loc_134A463:   Call 0.Method_Proc_232_40_134A9D40 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ReservationMsg"))))
  loc_134A46B:   var_C4.Text = 
  loc_134A4BB:   Set var_C0 = var_C4(CInt(5))
  loc_134A4C1:   Call 0.Method_Proc_232_40_134A9D40 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ReservationCancelMsg"))))
  loc_134A4C9:   var_C4.Text = 
  loc_134A519:   Set var_C0 = var_C4(CInt(&H11))
  loc_134A51F:   Call 0.Method_Proc_232_40_134A9D40 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BanqBookingMsg"))))
  loc_134A527:   var_C4.Text = 
  loc_134A577:   Set var_C0 = var_C4(CInt(&H12))
  loc_134A57D:   Call 0.Method_Proc_232_40_134A9D40 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BanqBookingCancelMsg"))))
  loc_134A585:   var_C4.Text = 
  loc_134A5D5:   Set var_C0 = var_C4(CInt(6))
  loc_134A5DB:   Call 0.Method_Proc_232_40_134A9D40 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("OutStandingMsg"))))
  loc_134A5E3:   var_C4.Text = 
  loc_134A645:   var_C4 = Me.Recordset15.Fields.Item("SendingMessageText")
  loc_134A681:   var_144 = CStr(IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("SendingMessageText"))) = vbNullString), "Semi", Trim(CVar(var_C4))))
  loc_134A690:   Set var_13C = var_140(CInt(4))
  loc_134A696:   Call 0.Method_Proc_232_40_134A9D40 (var_144)
  loc_134A69E:   var_140.Text = 
  loc_134A702:   Set var_C0 = var_C4(CInt(2))
  loc_134A708:   Call 0.Method_Proc_232_40_134A9D40 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CashReceiptMsg"))))
  loc_134A710:   var_C4.Text = 
  loc_134A760:   Set var_C0 = var_C4(CInt(&H10))
  loc_134A766:   Call 0.Method_Proc_232_40_134A9D40 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BankReceiptMsg"))))
  loc_134A76E:   var_C4.Text = 
  loc_134A7BE:   Set var_C0 = var_C4(CInt(7))
  loc_134A7C4:   Call 0.Method_Proc_232_40_134A9D40 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MemberBillMsg"))))
  loc_134A7CC:   var_C4.Text = 
  loc_134A81C:   Set var_C0 = var_C4(CInt(&H15))
  loc_134A822:   Call 0.Method_Proc_232_40_134A9D40 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("GuestRegistrationMsg"))))
  loc_134A82A:   var_C4.Text = 
  loc_134A87A:   Set var_C0 = var_C4(CInt(&H16))
  loc_134A880:   Call 0.Method_Proc_232_40_134A9D40 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RewardPointMsg"))))
  loc_134A888:   var_C4.Text = 
  loc_134A8D8:   Set var_C0 = var_C4(CInt(&H17))
  loc_134A8DE:   Call 0.Method_Proc_232_40_134A9D40 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RedeemPointMsg"))))
  loc_134A8E6:   var_C4.Text = 
  loc_134A936:   Set var_C0 = var_C4(CInt(&H1A))
  loc_134A93C:   Call 0.Method_Proc_232_40_134A9D40 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("POSBillMsg"))))
  loc_134A944:   var_C4.Text = 
  loc_134A994:   Set var_C0 = var_C4(CInt(&H1C))
  loc_134A99A:   Call 0.Method_Proc_232_40_134A9D40 (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("AssignDeliveryMsg"))))
  loc_134A9A2:   var_C4.Text = 
  loc_134A9BB:   Set var_88 = Nothing
  loc_134A9C3:   Set var_90 = Nothing
  loc_134A9C6: End If
  loc_134A9C6: Call Proc_232_41_EB6C44()
  loc_134A9CB: Exit Sub
  loc_134A9CC: ' Referenced from: 134A1EC
  loc_134A9CC: Proc_6_60_E62BC4()
  loc_134A9D1: Exit Sub
End Sub

Public Sub Proc_232_41_EB6C44
  'Data Table: 51FF58
  loc_EB6BBF: If (Me.FrmList.Visible = &HFF) Then
  loc_EB6BCE:   Me.FrmList.Visible = False
  loc_EB6BD6: End If
  loc_EB6BF2: If (CBool(Me.DGJobSchedule.Visible) = &HFF) Then
  loc_EB6C04:   Me.DGJobSchedule.Visible = False
  loc_EB6C0C: End If
  loc_EB6C28: If (CBool(().Visible) = &HFF) Then
  loc_EB6C3A:   (False).Visible = 
  loc_EB6C42: End If
  loc_EB6C42: Exit Sub
End Sub

Public Sub Proc_232_42_EFDF5C
  'Data Table: 51FF58
  Dim var_DC As Integer
  Dim var_164 As ColumnHeaders
  Dim var_168 As ColumnHeader
  loc_EFDEDA: var_DC(1).ColumnLabelCount.Add "<Message Label>", var_11C, var_13C, var_15C, var_164, 
  loc_EFDEE5: Set var_88 = var_164
  loc_EFDF39: CDbl(().Width) = var_168(1).ColumnLabelCount.ControlDefault
  loc_EFDF41: var_168.Width = 
  loc_EFDF5A: Exit Sub
End Sub

Public Sub Proc_232_43_1091E70(arg_C) '1091E70
  'Data Table: 51FF58
  Dim var_8C As String
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim unk_51FF5F As Connection15
  Dim var_88 As Recordset15
  Dim var_F4 As Fields15
  Dim var_118 As TextBox
  loc_1091BE8: var_8C = "Select IsNull(Type,'') Type,IsNull(GuestMsg,'') GuestMsg,IsNull(TxtMsg,'') TxtMsg From EmailSMSForward Where FlagType='POS' And LogSite_Code='" & MemVar_1F92078
  loc_1091BEF: var_BC = CVar(var_8C & "' And DepartCode=") 'String
  loc_1091BFD: Proc_6_17_EAA2B0(var_AC, arg_C, var_BC)
  loc_1091C05: var_CC = var_F0 & var_AC 
  loc_1091C13: unk_51FF5F.Execute CStr(var_CC), -1, var_F4
  loc_1091C1E: Set var_88 = var_F4
  loc_1091C4A: If (var_88.RecordCount > 0) Then
  loc_1091C4D:   ' Referenced from: 1091E40
  loc_1091C5C:   If Not(var_88.EOF) Then
  loc_1091C89:     var_110 = var_88.Fields.Item("Type").Value 'Variant
  loc_1091C9F:     If (var_110 = "KOT Message") Then
  loc_1091CDB:       Set var_114 = var_118(CInt(&H19))
  loc_1091CE1:       Call 0.Method_Proc_232_43_1091E700 (CStr(var_88.Fields.Item("TxtMsg").Value))
  loc_1091CE9:       var_118.Text = 
  loc_1091D02:     Else
  loc_1091D0D:       If (var_110 = "Outlet Bill") Then
  loc_1091D49:         Set var_114 = var_118(CInt(&H1A))
  loc_1091D4F:         Call 0.Method_Proc_232_43_1091E700 (CStr(var_88.Fields.Item("GuestMsg").Value))
  loc_1091D57:         var_118.Text = 
  loc_1091DA6:         Set var_114 = var_118(CInt(&H1B))
  loc_1091DAC:         Call 0.Method_Proc_232_43_1091E700 (CStr(var_88.Fields.Item("TxtMsg").Value))
  loc_1091DB4:         var_118.Text = 
  loc_1091DCD:       Else
  loc_1091DD8:         If (var_110 = "Assign Delivery") Then
  loc_1091E14:           Set var_114 = var_118(CInt(&H1C))
  loc_1091E1A:           Call 0.Method_Proc_232_43_1091E700 (CStr(var_88.Fields.Item("GuestMsg").Value))
  loc_1091E22:           var_118.Text = 
  loc_1091E38:         End If
  loc_1091E38:       End If
  loc_1091E38:     End If
  loc_1091E3B:     var_88.MoveNext
  loc_1091E40:     GoTo loc_1091C4D
  loc_1091E43:   End If
  loc_1091E46: Else
  loc_1091E5F:   MsgBox("No Records Found.", &H40, var_BC, var_CC, var_F0)
  loc_1091E6F: End If
  loc_1091E6F: Exit Sub
End Sub
