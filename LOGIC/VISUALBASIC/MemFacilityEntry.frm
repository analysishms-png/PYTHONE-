VERSION 5.00
Begin VB.Form MemFacilityEntry
  Caption = "Member Used Facility Entry"
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
  ClientWidth = 4680
  ClientHeight = 3195
  Begin DataGrid DGVType
    Left = 12990
    Top = 2385
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 15
  End
  Begin TextBox TxtSearch
    BackColor = &HFFFF80&
    Left = 5010
    Top = 3615
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    HideSelection = 0   'False
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdSavez
    Caption = "Save"
    Left = 11700
    Top = 5400
    Width = 1920
    Height = 630
    Visible = 0   'False
    TabIndex = 13
    BeginProperty Font
      Name = "Tahoma"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin ListView FacilityListView
    Left = 150
    Top = 975
    Width = 2700
    Height = 5430
    TabIndex = 10
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3810
    Top = 7635
    Width = 1425
    Height = 285
    TabIndex = 4
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1215
    Top = 7650
    Width = 1425
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 10
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 5190
    Top = 2970
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 12330
    Top = 6075
    Width = 1845
    Height = 1755
    Visible = 0   'False
    TabIndex = 0
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 75
      Width = 1860
      Height = 1725
      TabStop = 0   'False
      TabIndex = 1
    End
  End
  Begin DataGrid DGSundry
    Left = 13155
    Top = 435
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSHFlexGrid FGrid
    Left = 2835
    Top = 975
    Width = 8160
    Height = 5445
    TabIndex = 7
  End
  Begin BtnEnh CmdSave
    Left = 6180
    Top = 7575
    Width = 1155
    Height = 615
    TabIndex = 16
  End
  Begin Label LblName
    Caption = "Entry Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2775
    Top = 7650
    Width = 975
    Height = 240
    TabIndex = 12
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
  Begin Label LblFacility
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 3090
    Top = 510
    Width = 7605
    Height = 510
    TabIndex = 11
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 20.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "For Month"
    Index = 0
    ForeColor = &HFF0000&
    Left = 180
    Top = 7650
    Width = 960
    Height = 240
    TabIndex = 9
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
  Begin Label LblFacName
    Caption = "Facility Name"
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 90
    Top = 660
    Width = 2730
    Height = 255
    TabIndex = 8
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "MemFacilityEntry"

Private MasterFormExit As Integer
Private global_92 As Integer
Private global_94 As Integer

Public Sub FacilityListView_UnknownEvent_C(Index As Integer) 'F1D0A8
  'Data Table: 4BB5F4
  Dim var_C8 As Integer
  Dim var_CC As ListSubItem
  loc_F1CFBF: Set var_88 = Index 
  loc_F1CFE2: If (CLng(Me.FacilityListView.View) = 2) Then
  loc_F1D003:   var_A4 = Me.FacilityListView.SelectedItem.Text
  loc_F1D015:   Me.LblFacility.Caption = var_A4
  loc_F1D02F:   var_C8 = 1
  loc_F1D05A:   var_C8 = Me.FacilityListView.SelectedItem.ListSubItems.ControlDefault
  loc_F1D062:   var_CC = var_CC.Text
  loc_F1D074:   Me.LblFacility.Tag = var_A4
  loc_F1D09A:   Me.LblFacility.Refresh
  loc_F1D0A2:   Call Proc_278_53_13F3200(var_A4)
  loc_F1D0A7: End If
  loc_F1D0A7: Exit Sub
End Sub

Private Sub CmdSave_UnknownEvent_9 'DFFD7C
  'Data Table: 4BB5F4
  loc_DFFD74: Call TopCtrl1_UnknownEvent_16()
  loc_DFFD79: Exit Sub
End Sub

Private Sub Form_Load() '111FC94
  'Data Table: 4BB5F4
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_D8 As MSHFlexGrid
  loc_111F938: On Error Goto loc_111FC8E
  loc_111F942: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_111F95A: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B0))
  loc_111F970: Me.LblFacName.BackColor = CLng(MemVar_1F921B0)
  loc_111F982: Set var_A8 = Me.TopCtrl1
  loc_111F988: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000B("AEDP")
  loc_111F996: Call 0.Method_arg_50 (var_AC)
  loc_111F9A6: Set var_A8 = Me.TopCtrl1
  loc_111F9AC: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030007(CVar(var_AC))
  loc_111F9C1: Set global_96 = New 
  loc_111F9D3: Me.TopCtrl1.CursorLocation = 3
  loc_111F9E2: Set global_108 = New 
  loc_111F9F4: Me.Recordset15.CursorLocation = 3
  loc_111FA03: Set global_112 = New 
  loc_111FA15: Me.Recordset15.CursorLocation = 3
  loc_111FA3F: var_BC = CVar("Select Code,Name From MemFacilityMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_111FA70: Me.Recordset15.CursorLocation = 3
  loc_111FA93: var_AC = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From LocationFacility LF Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_111FA9A: var_BC = CVar("Select Code,Name From MemFacilityMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103))") 'String
  loc_111FAA4: r_BC, CVar(MemVar_1F92044), 3 var_BC, CVar(MemVar_1F92044), 3
  loc_111FAAF: Call Proc_278_52_F1B040(1, -1)
  loc_111FAB4: Call Proc_278_55_10E7EFC(1)
  loc_111FAB9: Call Proc_278_54_F9AEFC(-1)
  loc_111FAD1: Me.FacilityListView.Width = CVar(CDbl(3800))
  loc_111FAF7: Me.LblFacName.Width = CDbl(Me.FacilityListView.Width)
  loc_111FB24: var_94 = CVar((CDbl(6500) - (Me.LblFacName.Height + CDbl(&HA)))) 'Single
  loc_111FB33: Me.FacilityListView.Height = CVar(CDbl(3800))
  loc_111FB6F: var_94 = CVar(((CDbl(Me.FacilityListView.Left) + CDbl(Me.FacilityListView.Width)) + CDbl(&H19))) 'Single
  loc_111FB7E: Me.FGrid.Left = CVar(CDbl(3800))
  loc_111FBB1: Me.LblFacility.Left = CDbl(Me.FGrid.Left)
  loc_111FBDE: Me.LblFacility.Width = CDbl(Me.FGrid.Width)
  loc_111FBF7: var_D4 = Me.FGrid.Width
  loc_111FC04: Set var_D8 = Me.CmdSave
  loc_111FC0A: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010005(var_D4)
  loc_111FC32: var_94 = CVar(((CDbl(Me.FGrid.Left) + CDbl(var_D4)) - CDbl(var_E8))) 'Single
  loc_111FC3B: Set var_EC = Me.CmdSave
  loc_111FC41: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010003(CVar(CDbl(3800)))
  loc_111FC7D: Call Proc_278_60_E9A258(Proc_5_1_100CB50("ADD", Me), New)
  loc_111FC88: Call Proc_278_59_F18F48(var_D4)
  loc_111FC8D: Exit Sub
  loc_111FC8E: ' Referenced from: 111F938
  loc_111FC8E: Proc_6_60_E62BC4()
  loc_111FC93: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E58D90
  'Data Table: 4BB5F4
  loc_E58D5B: Set global_100 = Nothing
  loc_E58D6D: Set global_112 = Nothing
  loc_E58D7F: Set global_96 = Nothing
  loc_E58D8B: MasterFormExit = 0
  loc_E58D8E: Exit Sub
End Sub

Private Sub Form_Activate() 'E464E8
  'Data Table: 4BB5F4
  loc_E464B8: On Error Goto loc_E464E2
  loc_E464BF: Set var_88 = Me.TopCtrl1
  loc_E464C5: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030000()
  loc_E464DA: If (CLng(CInt()) = &H2D) Then
  loc_E464DD:   Call TopCtrl1_UnknownEvent_15()
  loc_E464E2:   ' Referenced from: E464B8
  loc_E464E2: End If
  loc_E464E2: Proc_6_60_E62BC4()
  loc_E464E7: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E253E4
  'Data Table: 4BB5F4
  loc_E253C9: If (MasterFormExit = &HFF) Then
  loc_E253D9:   Me.Global.Unload Me
  loc_E253E1: End If
  loc_E253E1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E297D8
  'Data Table: 4BB5F4
  loc_E297B0: On Error Goto loc_E297D0
  loc_E297C7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E297CF: Exit Sub
  loc_E297D0: ' Referenced from: E297B0
  loc_E297D0: Proc_6_60_E62BC4(Shift)
  loc_E297D5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E84910
  'Data Table: 4BB5F4
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E848B3: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E848C6: Set var_A8 = Me.TxtGrid
  loc_E848CC: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E848D4: var_AC.Visible = False
  loc_E848EE: Set var_A8 = Me.TxtGrid
  loc_E848F4: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E848FC: var_AC.MaxLength = 0
  loc_E84908: Call Proc_278_61_DFC6C0()
  loc_E8490D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E65B58
  'Data Table: 4BB5F4
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E65B14: Set var_88 = Me.TxtGrid
  loc_E65B1A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E65B34: If (var_8C.Visible = 0) Then
  loc_E65B4D:   Me.FGrid.BackColorSel = CVar(CLng(global_84))
  loc_E65B55: End If
  loc_E65B55: Exit Sub
  loc_E65B56: Set arg_7C58 = 
End Sub

Private Sub FGrid_UnknownEvent_8 'E1CE30
  'Data Table: 4BB5F4
  loc_E1CE27: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1CE2F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFDB24
  'Data Table: 4BB5F4
  loc_DFDB1C: Call Proc_278_57_E435C4()
  loc_DFDB21: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1099360
  'Data Table: 4BB5F4
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10990AC: Set var_88 = Me.TopCtrl1
  loc_10990B2: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_10990F7: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_1099100:   Call Form_KeyDown(KeyCode, Shift)
  loc_1099105: End If
  loc_1099109: Set var_88 = Me.TopCtrl1
  loc_109910F: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_1099128: If (CStr() = "Browse") Then
  loc_109912B:   Exit Sub
  loc_109912C: End If
  loc_10991A0: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10991B6:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10991C6:   var_9C = "+{Tab}"
  loc_10991CC:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_10991D6:   KeyCode = 0
  loc_10991DC: Else
  loc_10991E6:   var_B0 = Me.FGrid.Rows
  loc_1099233:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1099249:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_109925F:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_1099269:     KeyCode = 0
  loc_109926C:   End If
  loc_109926C: End If
  loc_1099272: global_92 = KeyCode
  loc_1099298: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10992BC: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_10992D2:   var_EC = CLng(Me.FGrid.Col)
  loc_10992E2:   If Not (var_EC = CLng(4)) Then
  loc_10992EC:     If (var_EC = CLng(5)) Then
  loc_10992EF:     End If
  loc_1099302:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109931A:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_109931F:     var_11C = vbNullString
  loc_1099329:     Set var_B4 = Me.FGrid
  loc_109932F:     LateIdCallSt
  loc_1099347:   End If
  loc_1099347: End If
  loc_109934D: If (KeyCode = &HD) Then
  loc_1099355:   global_94 = 0
  loc_1099358: End If
  loc_109935A: KeyCode = 0
  loc_109935D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E14A98
  'Data Table: 4BB5F4
  loc_E14A89: Call FGrid_UnknownEvent_C()
  loc_E14A93: global_94 = 0
  loc_E14A96: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '11F5458
  'Data Table: 4BB5F4
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As String
  Dim var_A4 As Long
  Dim var_CE As Integer
  Dim var_B8 As TextBox
  Dim var_C8 As TextBox
  loc_11F4FDC: Set var_88 = Me.TopCtrl1
  loc_11F4FE2: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(CLng(Me.FGrid.Col))
  loc_11F4FFB: If (CStr() = "Browse") Then
  loc_11F4FFE:   Exit Sub
  loc_11F4FFF: End If
  loc_11F5012: var_A4 = CLng(Me.FGrid.Col)
  loc_11F5022: If (var_A4 = CLng(3)) Then
  loc_11F5029:   Set var_C8 = Me.FGrid
  loc_11F504D:   var_A0 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_11F507A:   Set var_B8 = var_C8
  loc_11F508C:   Proc_6_63_110ABA4(Me, var_B8, Me.TxtGrid, 0, 0)
  loc_11F50B4:   Set var_88 = Me.TxtGrid
  loc_11F50BA:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0, Asc(var_A0))
  loc_11F50C2:   0 = var_B8.Text
  loc_11F50DB:   If (Len(var_A0) <= 1) Then
  loc_11F50EA:     Set var_88 = Me.TxtGrid
  loc_11F50F0:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0)
  loc_11F50F8:     var_CE = var_B8.Text
  loc_11F5109:     Set var_BC = Me.TxtGrid
  loc_11F510F:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F5117:     var_C8.Text = var_A0
  loc_11F512A:   End If
  loc_11F5136:   Set var_88 = Me.TxtGrid
  loc_11F513C:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_11F5156:   Set var_BC = Me.TxtGrid
  loc_11F515C:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F5164:   var_C8.SelStart = Len(var_B8.Text)
  loc_11F517A: Else
  loc_11F5181:   If (var_A4 = CLng(2)) Then
  loc_11F5188:     Set var_C8 = Me.FGrid
  loc_11F51AC:     var_A0 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_11F51D9:     Set var_B8 = var_C8
  loc_11F51EB:     Proc_6_63_110ABA4(Me, var_B8, Me.TxtGrid, 0, 0)
  loc_11F5213:     Set var_88 = Me.TxtGrid
  loc_11F5219:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0, Asc(var_A0))
  loc_11F5221:     0 = var_B8.Text
  loc_11F523A:     If (Len(var_A0) <= 1) Then
  loc_11F5249:       Set var_88 = Me.TxtGrid
  loc_11F524F:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0)
  loc_11F5257:       var_CE = var_B8.Text
  loc_11F5268:       Set var_BC = Me.TxtGrid
  loc_11F526E:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F5276:       var_C8.Text = var_A0
  loc_11F5289:     End If
  loc_11F5295:     Set var_88 = Me.TxtGrid
  loc_11F529B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_11F52B5:     Set var_BC = Me.TxtGrid
  loc_11F52BB:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F52C3:     var_C8.SelStart = Len(var_B8.Text)
  loc_11F52D9:   Else
  loc_11F52E0:     If Not (var_A4 = CLng(4)) Then
  loc_11F52EA:       If (var_A4 = CLng(5)) Then
  loc_11F52ED:       End If
  loc_11F52F1:       Set var_C8 = Me.FGrid
  loc_11F5315:       var_A0 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_11F5342:       Set var_B8 = var_C8
  loc_11F5354:       Proc_6_63_110ABA4(Me, var_B8, Me.TxtGrid, 0, &HFF)
  loc_11F537C:       Set var_88 = Me.TxtGrid
  loc_11F5382:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0, Asc(var_A0))
  loc_11F538A:       0 = var_B8.Text
  loc_11F53A3:       If (Len(var_A0) <= 1) Then
  loc_11F53B2:         Set var_88 = Me.TxtGrid
  loc_11F53B8:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_A0)
  loc_11F53C0:         var_CE = var_B8.Text
  loc_11F53D1:         Set var_BC = Me.TxtGrid
  loc_11F53D7:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F53DF:         var_C8.Text = var_A0
  loc_11F53F2:       End If
  loc_11F53FE:       Set var_88 = Me.TxtGrid
  loc_11F5404:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_11F541E:       Set var_BC = Me.TxtGrid
  loc_11F5424:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11F542C:       var_C8.SelStart = Len(var_B8.Text)
  loc_11F543F:     End If
  loc_11F543F:   End If
  loc_11F543F: End If
  loc_11F5449: If (CLng(KeyCode) <> &HD) Then
  loc_11F5451:   global_94 = &HFF
  loc_11F5454: End If
  loc_11F5454: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1E820
  'Data Table: 4BB5F4
  loc_E1E817: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1E81F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1E780
  'Data Table: 4BB5F4
  loc_E1E777: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E77F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E7C8B0
  'Data Table: 4BB5F4
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_A0 As TextBox
  loc_E7C850: Call Proc_278_61_DFC6C0()
  loc_E7C868: var_9C = CLng(Me.FGrid.Col)
  loc_E7C878: If Not (var_9C = CLng(3)) Then
  loc_E7C882:   If (var_9C = CLng(2)) Then
  loc_E7C885:   End If
  loc_E7C888: Else
  loc_E7C893:   Set var_88 = Me.TxtGrid
  loc_E7C899:   Call 0.Method_FGrid_UnknownEvent_150 (0, var_A0)
  loc_E7C8A1:   var_A0.Visible = False
  loc_E7C8AD: End If
  loc_E7C8AD: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E483C4
  'Data Table: 4BB5F4
  loc_E483A2: Set var_88 = Me.Txt
  loc_E483A8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E483B6: Proc_6_74_E226B0(var_8C)
  loc_E483C2: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'EDD494
  'Data Table: 4BB5F4
  Dim var_86 As Integer
  loc_EDD3EA: If (CLng(Shift) = &H1B) Then
  loc_EDD3ED:   Exit Sub
  loc_EDD3EE: End If
  loc_EDD3F1: var_86 = KeyCode
  loc_EDD44A: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_EDD462:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EDD46B:     Proc_6_75_E527CC(Shift, arg_14)
  loc_EDD470:   End If
  loc_EDD485:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EDD48E:     Proc_6_76_E52838(Shift, arg_14)
  loc_EDD493:   End If
  loc_EDD493: End If
  loc_EDD493: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E05A40
  'Data Table: 4BB5F4
  Dim var_86 As Integer
  loc_E05A33: Proc_6_58_E054C0(arg_10)
  loc_E05A3B: var_86 = KeyAscii
  loc_E05A3E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFF0CC
  'Data Table: 4BB5F4
  Dim var_86 As Integer
  loc_DFF0C7: var_86 = KeyCode
  loc_DFF0CA: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48224
  'Data Table: 4BB5F4
  loc_E48202: Set var_88 = Me.Txt
  loc_E48208: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48216: Proc_6_73_E22704(var_8C)
  loc_E48222: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '103B834
  'Data Table: 4BB5F4
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_A0 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  loc_103B5EF: var_86 = Cancel
  loc_103B5FA: If (var_86 = CInt(0)) Then
  loc_103B608:   Set var_8C = Me.Txt
  loc_103B60E:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_103B637:   If (Proc_6_27_EA565C(var_90, "For Month") = 0) Then
  loc_103B645:     Set var_8C = Me.Txt
  loc_103B64B:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_103B653:     var_90.SetFocus
  loc_103B661:     arg_10 = &HFF
  loc_103B664:     Exit Sub
  loc_103B665:   End If
  loc_103B66F:   Set var_8C = Me.Txt
  loc_103B675:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103B695:   Set var_9C = Me.Txt
  loc_103B69B:   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_103B6A3:   var_A0.Text = Proc_6_120_133A1D8(var_90, arg_10)
  loc_103B6B6:   Call Proc_278_53_13F3200(var_86)
  loc_103B6BE: Else
  loc_103B6C6:   If (var_86 = CInt(1)) Then
  loc_103B6D4:     Set var_8C = Me.Txt
  loc_103B6DA:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_103B703:     If (Proc_6_27_EA565C(var_90, "Bill Date") = 0) Then
  loc_103B711:       Set var_8C = Me.Txt
  loc_103B717:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_103B71F:       var_90.SetFocus
  loc_103B72D:       arg_10 = &HFF
  loc_103B730:       Exit Sub
  loc_103B731:     End If
  loc_103B73B:     Set var_8C = Me.Txt
  loc_103B741:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103B761:     Set var_9C = Me.Txt
  loc_103B767:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_103B76F:     var_A0.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_103B78C:     Set var_8C = Me.Txt
  loc_103B792:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103B7CD:     Set var_94 = Me.Txt
  loc_103B7D3:     Call 0.Method_Txt_Validate0 (CInt(0), var_9C, CStr(Format(CVar(var_90), "MMM/yyyy")))
  loc_103B7DB:     var_9C.Text = 1
  loc_103B7F5:     Call Proc_278_53_13F3200(1)
  loc_103B80D:     Me.FGrid.Row = 1
  loc_103B828:     Me.FGrid.Col = 2
  loc_103B830:   End If
  loc_103B830: End If
  loc_103B830: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E7ED9C
  'Data Table: 4BB5F4
  Dim var_94 As TextBox
  loc_E7ED38: On Error Goto loc_E7ED94
  loc_E7ED5E: Call Proc_278_60_E9A258(Proc_5_1_100CB50("ADD", Me))
  loc_E7ED69: Call Proc_278_59_F18F48(global_100)
  loc_E7ED79: Set var_8C = Me.Txt
  loc_E7ED7F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_E7ED87: var_94.SetFocus
  loc_E7ED93: Exit Sub
  loc_E7ED94: ' Referenced from: E7ED38
  loc_E7ED94: Proc_6_60_E62BC4(var_94)
  loc_E7ED99: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E97D68
  'Data Table: 4BB5F4
  loc_E97CF4: On Error Goto loc_E97D60
  loc_E97D2E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E97D54:   Call Proc_278_60_E9A258(Proc_5_1_100CB50("INI", Me))
  loc_E97D5F: End If
  loc_E97D5F: Exit Sub
  loc_E97D60: ' Referenced from: E97CF4
  loc_E97D60: Proc_6_60_E62BC4(global_100)
  loc_E97D65: Exit Sub
  loc_E97D66: On Error Goto loc_E9F8FC
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16428
  'Data Table: 4BB5F4
  loc_E1641D: Me.Global.Unload Me
  loc_E16425: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC70F4
  'Data Table: 4BB5F4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EC7054: On Error Goto loc_EC70EC
  loc_EC706E: If (Me.RecordCount <= 0) Then
  loc_EC7077:   var_B8 = "Information"
  loc_EC7092:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC70A2:   Exit Sub
  loc_EC70A3: End If
  loc_EC70AA: var_10C = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)) AS Code,LM.Name As LocationName,Convert(Varchar(11),LF.AppDate,103) From (LocationFacility LF Left Join LocationMast LM On LF.LcCode=LM.Code) Where (LF.LOGSITE_CODE='" & MemVar_1F92078
  loc_EC70B1: MemVar_1F920E4 = var_10C & "' or LF.LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103))"
  loc_EC70BE: MemVar_1F92120 = Me
  loc_EC70CB: Proc_6_126_F1BCC0("4500,1500")
  loc_EC70E6: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC70EB: Exit Sub
  loc_EC70EC: ' Referenced from: EC7054
  loc_EC70EC: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC70F1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E296C4
  'Data Table: 4BB5F4
  loc_E296B8: Proc_5_0_110649C(&HFF, Me)
  loc_E296C0: Exit Sub
  loc_E296C1: Result global_100 End Sub 'Long
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E29668
  'Data Table: 4BB5F4
  loc_E2965C: Proc_5_0_110649C(&HFF, Me)
  loc_E29664: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2960C
  'Data Table: 4BB5F4
  loc_E29600: Proc_5_0_110649C(&HFF, Me)
  loc_E29608: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E295B0
  'Data Table: 4BB5F4
  loc_E295A4: Proc_5_0_110649C(&HFF, Me)
  loc_E295AC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E09B78
  'Data Table: 4BB5F4
  Dim Me As Recordset15
  loc_E09B6F: Me.Requery -1
  loc_E09B74: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12CF830
  'Data Table: 4BB5F4
  Dim unk_4BB601 As Connection15
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_130 As Variant
  Dim var_C4 As Variant
  Dim var_180 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_108 As Variant
  Dim var_98 As String
  Dim var_10C As Label
  Dim var_5AC As Double
  Dim var_5B4 As Double
  Dim var_5BC As Double
  Dim var_30C As Variant
  Dim var_4DC As Variant
  loc_12CF270: On Error Goto loc_12CF7DD
  loc_12CF277: var_86 = CByte(0) 'Byte
  loc_12CF286: Set var_8C = Me.Txt
  loc_12CF28C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_12CF2B5: If (Proc_6_27_EA565C(var_90, "For Month") = 0) Then
  loc_12CF2BF:   Call Txt_GotFocus(CInt(0))
  loc_12CF2C4:   Exit Sub
  loc_12CF2C5: End If
  loc_12CF2D0: Set var_8C = Me.Txt
  loc_12CF2D6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_90)
  loc_12CF2E7: Set var_94 = var_90
  loc_12CF2FF: If (Proc_6_27_EA565C(var_94, "Bill Date") = 0) Then
  loc_12CF309:   Call Txt_GotFocus(CInt(1))
  loc_12CF30E:   Exit Sub
  loc_12CF30F: End If
  loc_12CF312: Call Proc_278_56_DFE41C(var_9A)
  loc_12CF31D: If (var_9A = &HFF) Then
  loc_12CF320:   Exit Sub
  loc_12CF321: End If
  loc_12CF32A: unk_4BB601.BeginTrans var_A0
  loc_12CF333: var_86 = CByte(1) 'Byte
  loc_12CF378: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, CVar("Delete From MemFacilityBilling Where FcCode='" & Me.LblFacility.Tag & "' And EntryDate="), var_108)
  loc_12CF387: Proc_6_7_F25D88(var_C4, CVar(var_94), -1)
  loc_12CF39D: unk_4BB601.Execute CStr(var_10C & var_C4), Me.Txt, 
  loc_12CF3E6: For var_110 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_110 'Integer
  loc_12CF3F0:   var_F8 = CVar(CLng(var_88)) 'Long
  loc_12CF3F8:   var_130 = CVar(CLng(1)) 'Long
  loc_12CF418:   var_D4 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_12CF491:   If CBool(CVar(CLng(6)) And (CDbl(Val(CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))))) <> CDbl(0))) Then
  loc_12CF4A0:     var_130 = CVar(CLng(1)) 'Long
  loc_12CF4AF:     var_B4 = Me.FGrid.TextMatrix)
  loc_12CF4C6:     Set var_90 = Me.Txt
  loc_12CF4CC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_B4, var_130, CVar(CLng(var_88)))
  loc_12CF4D4:     var_C4 = CVar(var_94) 'Address
  loc_12CF4DB:     Proc_6_7_F25D88(var_D4, var_C4, CVar(CLng(var_88)), (var_D4 <> vbNullString))
  loc_12CF4FD:     Set var_1E8 = Me.Txt
  loc_12CF503:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1EC, var_130)
  loc_12CF51B:     var_180 = CVar(CLng(var_88)) 'Long
  loc_12CF545:     var_5AC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12CF576:     var_5B4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12CF5A7:     var_5BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12CF5AE:     Set var_3C8 = Me.TopCtrl1
  loc_12CF5B4:     Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_5BC)
  loc_12CF5F6:     Proc_6_7_F25D88(var_4CC, CVar(Proc_6_15_EF2C1C(CVar(CLng(6)), CVar(CLng(var_88)), var_5B4, CVar(CLng(5)), CVar(CLng(var_88)))), var_5AC, CVar(CLng(4)))
  loc_12CF60F:     var_98 = "Insert Into MemFacilityBilling (MemCode,EntryDate,FcCode,MthYear,Occurence,Rate,Amount,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_12CF621:     var_E4 = CVar(var_98 & CStr(var_B4) & "',") 'String
  loc_12CF672:     var_30C = var_E4 & var_D4 & ",'" & CVar(Me.LblFacility.Tag) & "','" & Trim(CVar(var_1EC)) & "'," & CVar(var_5AC) & "," & CVar(var_5B4) 
  loc_12CF6B9:     var_4DC = var_30C & "," & CVar(var_5BC) & ",'" & IIf((CStr(var_3D8) = "Add"), "A", "E") & "','" & CVar(MemVar_1F920C8) & "'," & var_4CC 
  loc_12CF6F6:     unk_4BB601.Execute CStr(var_4DC & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_5A0, -1
  loc_12CF776:   End If
  loc_12CF779: Next var_110 'Integer
  loc_12CF784: unk_4BB601.CommitTrans
  loc_12CF78D: var_86 = CByte(0) 'Byte
  loc_12CF79E: var_98 = Me.LblFacility.Caption
  loc_12CF7C2: MsgBox(CVar("Details Of " & var_98 & " Facility Saved."), &H40, var_C4, var_D4, var_E4)
  loc_12CF7DC: Exit Sub
  loc_12CF7DD: ' Referenced from: 12CF270
  loc_12CF7E6: If (CInt(var_86) = 1) Then
  loc_12CF7EF:   unk_4BB601.RollbackTrans
  loc_12CF7F4: End If
  loc_12CF7FC: Set var_8C = Err()
  loc_12CF802: Call 0.Method_arg_2C (var_98)
  loc_12CF81B: MsgBox(CVar(var_98), &H10, var_C4, var_D4, var_E4)
  loc_12CF82E: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'FF1A34
  'Data Table: 4BB5F4
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_FF1854: Call Proc_278_61_DFC6C0()
  loc_FF186C: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_FF1887: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF1890: Set var_BC = Me.FGrid
  loc_FF18C6: Set var_104 = Me.TxtGrid
  loc_FF18CC: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_FF18D4: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_FF1905: var_110 = CLng(Me.FGrid.Col)
  loc_FF1915: If (var_110 = CLng(3)) Then
  loc_FF1925:   Set var_A8 = Me.TxtGrid
  loc_FF192B:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, vbNullString)
  loc_FF1933:   var_BC.Text = var_110
  loc_FF194E:   Set var_A8 = Me.TxtGrid
  loc_FF1954:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF195C:   var_BC.MaxLength = &HA
  loc_FF196B: Else
  loc_FF1972:   If (var_110 = CLng(2)) Then
  loc_FF1982:     Set var_A8 = Me.TxtGrid
  loc_FF1988:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF1990:     var_BC.Text = vbNullString
  loc_FF19AB:     Set var_A8 = Me.TxtGrid
  loc_FF19B1:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF19B9:     var_BC.MaxLength = &H32
  loc_FF19C8:   Else
  loc_FF19CF:     If (var_110 = CLng(4)) Then
  loc_FF19E1:       Set var_A8 = Me.TxtGrid
  loc_FF19E7:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF19EF:       var_BC.MaxLength = 4
  loc_FF19FE:     Else
  loc_FF1A05:       If (var_110 = CLng(5)) Then
  loc_FF1A17:         Set var_A8 = Me.TxtGrid
  loc_FF1A1D:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_FF1A25:         var_BC.MaxLength = &HB
  loc_FF1A31:       End If
  loc_FF1A31:     End If
  loc_FF1A31:   End If
  loc_FF1A31: End If
  loc_FF1A31: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1101DF0
  'Data Table: 4BB5F4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_1101AB0: On Error Goto loc_1101DE7
  loc_1101ABD: If (CLng(Shift) = &H1B) Then
  loc_1101ACD:   Set var_88 = Me.TxtGrid
  loc_1101AD3:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1101AED:   Set var_94 = Me.TxtGrid
  loc_1101AF3:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_1101AFB:   var_98.Text = var_8C.Tag
  loc_1101B17:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1101B1C:   Call Proc_278_61_DFC6C0(arg_14)
  loc_1101B25:   Set var_88 = Me.FGrid
  loc_1101B42:   Set var_88 = Me.TxtGrid
  loc_1101B48:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1101B50:   var_8C.Visible = False
  loc_1101B5C:   Exit Sub
  loc_1101B5D: End If
  loc_1101B70: var_AC = CLng(Me.FGrid.Col)
  loc_1101B80: If (var_AC = CLng(3)) Then
  loc_1101B8D:   If (CLng(Shift) = &HD) Then
  loc_1101B96:     Call Proc_278_58_11A2000(KeyCode, var_AE)
  loc_1101BA1:     If (var_AE = &HFF) Then
  loc_1101BE7:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7)
  loc_1101BF7:     End If
  loc_1101BF7:   End If
  loc_1101BFA: Else
  loc_1101C01:   If (var_AC = CLng(2)) Then
  loc_1101C0E:     If (CLng(Shift) = &HD) Then
  loc_1101C17:       Call Proc_278_58_11A2000(KeyCode, var_AE, 0, 4)
  loc_1101C22:       If (var_AE = &HFF) Then
  loc_1101C68:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7)
  loc_1101C78:       End If
  loc_1101C78:     End If
  loc_1101C7B:   Else
  loc_1101C82:     If (var_AC = CLng(4)) Then
  loc_1101CC5:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1101CCE:         Call Proc_278_58_11A2000(KeyCode, var_AE, 0, 3)
  loc_1101CD9:         If (var_AE = &HFF) Then
  loc_1101D1F:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7, 0)
  loc_1101D2F:         End If
  loc_1101D2F:       End If
  loc_1101D32:     Else
  loc_1101D39:       If (var_AC = CLng(5)) Then
  loc_1101D7C:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1101D85:           Call Proc_278_58_11A2000(KeyCode, var_AE, 5, 0)
  loc_1101D90:           If (var_AE = &HFF) Then
  loc_1101DD6:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7, 0)
  loc_1101DE6:           End If
  loc_1101DE6:         End If
  loc_1101DE6:       End If
  loc_1101DE6:     End If
  loc_1101DE6:   End If
  loc_1101DE6: End If
  loc_1101DE6: Exit Sub
  loc_1101DE7: ' Referenced from: 1101AB0
  loc_1101DE7: Proc_6_60_E62BC4(3, 0, 0)
  loc_1101DEC: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '1112924
  'Data Table: 4BB5F4
  Dim var_86 As Integer
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim arg_10 As Integer
  loc_11125F4: On Error Goto loc_111291E
  loc_11125FA: Proc_6_58_E054C0(arg_10)
  loc_1112602: var_86 = KeyAscii
  loc_111260B: If (var_86 = 0) Then
  loc_1112621:   var_A0 = CLng(Me.FGrid.Col)
  loc_1112631:   If (var_A0 = CLng(3)) Then
  loc_1112638:     Set var_8C = Me.TopCtrl1
  loc_111263E:     Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_A0)
  loc_1112657:     If (CStr(var_86) = "Add") Then
  loc_1112664:       Set var_8C = Me.TxtGrid
  loc_111266A:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii)
  loc_11126D4:       Call MemSelGridKeyPress(var_A8, Me.FGrid, global_96, arg_10, Me.Fields.Item(1).Name, "14737632", "16777215")
  loc_11126F4:     Else
  loc_11126F8:       Set var_8C = Me.TopCtrl1
  loc_11126FE:       Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_A8)
  loc_1112717:       If (CStr() = "Edit") Then
  loc_111271A:       End If
  loc_111271A:     End If
  loc_1112723:     Set var_8C = Me.TxtGrid
  loc_1112729:     Call 0.Method_TxtGrid_KeyPress0 (0)
  loc_1112756:     If (Len(Trim(CVar(var_A8))) > 1) Then
  loc_111275B:       arg_10 = 0
  loc_111275E:     End If
  loc_1112761:   Else
  loc_1112768:     If (var_A0 = CLng(2)) Then
  loc_111276F:       Set var_8C = Me.TopCtrl1
  loc_1112775:       Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(arg_10)
  loc_111278E:       If (CStr(var_A8) = "Add") Then
  loc_111279B:         Set var_8C = Me.TxtGrid
  loc_11127A1:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii)
  loc_111280B:         Call MemSelGridKeyPress(var_A8, Me.FGrid, global_96, arg_10, Me.Fields.Item(2).Name, "14737632", "16777215")
  loc_111282B:       Else
  loc_111282F:         Set var_8C = Me.TopCtrl1
  loc_1112835:         Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_A8)
  loc_111284E:         If (CStr() = "Edit") Then
  loc_1112851:         End If
  loc_1112851:       End If
  loc_111285A:       Set var_8C = Me.TxtGrid
  loc_1112860:       Call 0.Method_TxtGrid_KeyPress0 (0)
  loc_111288D:       If (Len(Trim(CVar(var_A8))) > 1) Then
  loc_1112892:         arg_10 = 0
  loc_1112895:       End If
  loc_1112898:     Else
  loc_111289F:       If (var_A0 = CLng(4)) Then
  loc_11128AC:         Set var_8C = Me.TxtGrid
  loc_11128B2:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8)
  loc_11128CD:         Proc_6_42_129A86C(var_A8, arg_10, 4)
  loc_11128DC:       Else
  loc_11128E3:         If (var_A0 = CLng(5)) Then
  loc_11128F0:           Set var_8C = Me.TxtGrid
  loc_11128F6:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, 0)
  loc_1112911:           Proc_6_42_129A86C(var_A8, arg_10, 8)
  loc_111291D:         End If
  loc_111291D:       End If
  loc_111291D:     End If
  loc_111291D:   End If
  loc_111291D: End If
  loc_111291D: Exit Sub
  loc_111291E: ' Referenced from: 11125F4
  loc_111291E: Proc_6_60_E62BC4(2, arg_10)
  loc_1112923: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E2F9B4
  'Data Table: 4BB5F4
  Dim var_9C As Long
  loc_E2F98C: On Error Goto loc_E2F9AC
  loc_E2F9A2: var_9C = CLng(Me.FGrid.Col)
  loc_E2F9AB: Exit Sub
  loc_E2F9AC: ' Referenced from: E2F98C
  loc_E2F9AC: Proc_6_60_E62BC4(var_9C)
  loc_E2F9B1: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22758
  'Data Table: 4BB5F4
  Dim arg_10 As Integer
  Dim arg_7CFF As Double
  loc_E22740: If (Cancel = 0) Then
  loc_E22749:   Call Proc_278_58_11A2000(Cancel, var_88)
  loc_E22752:   arg_10 = Not(var_88)
  loc_E22755: End If
  loc_E22755: Exit Sub
  loc_E22756: arg_7CFF = arg_10
End Sub

Public Function MasterFormExitGet() '4BC4A0
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4BC4AF
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '4BC4BE
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '4BC4CD
  SearchCode = Value
End Sub

Public Function global_60Get() '4BC4DC
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4BC4EB
  global_60 = Value
End Sub

Public Function global_64Get() '4BC4FA
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '4BC509
  global_64 = Value
End Sub

Public Sub global_64Set(Value) '4BC518
  global_64 = Value
End Sub

Public Function global_80Get() '4BC527
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '4BC536
  global_80 = Value
End Sub

Public Sub global_80Set(Value) '4BC545
  global_80 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E8E3EC
  'Data Table: 4BB5F4
  Dim Me As Recordset15
  loc_E8E382: On Error Goto loc_E8E3E6
  loc_E8E38B: Me.MoveFirst
  loc_E8E3B5: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E8E3DD: Proc_5_0_110649C(&HFF, Me, global_100)
  loc_E8E3E5: Exit Sub
  loc_E8E3E6: ' Referenced from: E8E382
  loc_E8E3E6: Proc_6_60_E62BC4(0)
  loc_E8E3EB: Exit Sub
End Sub

Public Sub MemSelGridKeyPress(Txt, FGrid, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '114FA20
  'Data Table: 4BB5F4
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim KeyAscii As Integer
  loc_114F688: On Error Goto loc_114FA17
  loc_114F69E: If (.rows < 1) Then
  loc_114F6A1:   Exit Sub
  loc_114F6A2: End If
  loc_114F6B6: If (Me.RecordCount <= 0) Then
  loc_114F6C2:   Me.TEXT = vbNullString
  loc_114F6C6:   Exit Sub
  loc_114F6C7: End If
  loc_114F6E3: If (((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Or (KeyAscii = 0)) Then
  loc_114F6F0:   .CellBackColor = CVar(CellBackColLeave)
  loc_114F6F4:   Exit Sub
  loc_114F6F5: End If
  loc_114F6FF: If (CLng(KeyAscii) = 8) Then
  loc_114F719:   If (Len(Me.SelText) > 1) Then
  loc_114F72D:     var_E0 = (Len(Me.SelText) - 1)
  loc_114F735:     Me.SelLength = var_E0
  loc_114F745:     var_8C = CStr(Me.SelText)
  loc_114F74E:   Else
  loc_114F757:     Me.TEXT = vbNullString
  loc_114F75E:     Call .SetFocus
  loc_114F76C:     Me.Visible = False
  loc_114F770:     Exit Sub
  loc_114F771:   End If
  loc_114F774: Else
  loc_114F78B:   var_E0 = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_114F790:   var_8C = CStr(var_E0)
  loc_114F79C: End If
  loc_114F7B9: var_8C = Replace(var_8C, "'", "''", 1, -1, 0)
  loc_114F7BF: Me.Recordset15.MoveFirst
  loc_114F7FC: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_114F83F:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_8C)) & vbNullString, 0, 1
  loc_114F854: Else
  loc_114F884:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_8C & "*'", 0, 1
  loc_114F894: End If
  loc_114F896: KeyAscii = 0
  loc_114F8C2: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_114F8CF:   .CellBackColor = CVar(CellBackColLeave)
  loc_114F8E9:   .Row = CVar(Me.Recordset15.AbsolutePosition)
  loc_114F8F7:   .CellBackColor = CVar(CellBackColEnter)
  loc_114F92A:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_114F944:   Me.SelLength = CVar(Len(var_8C))
  loc_114F958:   var_E0 = (.CellLeft + .left)
  loc_114F960:   Me.left = var_E0
  loc_114F97D:   var_E0 = (.CellTop + .top)
  loc_114F985:   Me.top = var_E0
  loc_114F9A4:   If (Me.Visible = False) Then
  loc_114F9AE:     Me.Visible = True
  loc_114F9B2:     var_9C = 0
  loc_114F9BB:     Call Me.ZOrder
  loc_114F9C4:     Call Me.SetFocus
  loc_114F9D6:     Me.BackColor = .CellBackColor
  loc_114F9E9:     Me.ForeColor = .CellForeColor
  loc_114F9FC:     Me.width = .CellWidth
  loc_114FA0F:     Me.height = .CellHeight
  loc_114FA16:   End If
  loc_114FA16: End If
  loc_114FA16: Exit Sub
  loc_114FA17: ' Referenced from: 114F688
  loc_114FA17: Proc_6_60_E62BC4(var_9C, KeyAscii, var_9C)
  loc_114FA1C: Exit Sub
End Sub

Public Sub Proc_278_52_F1B040
  'Data Table: 4BB5F4
  loc_F1AF9A: Me.FacilityListView.ColumnHeaders.Add 1, var_DC, "Facility Name", var_11C, var_13C, var_15C
  loc_F1AFA5: Set var_88 = var_164
  loc_F1AFFC: Me.FacilityListView.ColumnHeaders.Add 2, var_DC, "Code", var_11C, var_13C, var_15C
  loc_F1B007: Set var_88 = var_164
  loc_F1B037: Me.FacilityListView.View = 2
  loc_F1B03F: Exit Sub
End Sub

Public Sub Proc_278_53_13F3200
  'Data Table: 4BB5F4
  Dim var_8C As Variant
  Dim var_94 As String
  Dim var_AC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim unk_4BB601 As Connection15
  Dim var_90 As String
  Dim var_BC As Variant
  Dim var_168 As Variant
  Dim var_124 As Variant
  Dim var_1A0 As Variant
  Dim var_178 As Variant
  Dim var_1C0 As Variant
  Dim var_1E0 As Variant
  Dim var_210 As Variant
  Dim var_98 As Label
  Dim var_240 As Variant
  Dim var_2A0 As Variant
  Dim Me As Recordset15
  Dim var_86 As Integer
  Dim var_9C As Fields15
  Dim var_104 As Fields15
  loc_13F2856: var_94 = "Select M.MemCode,S.Name As MemName,M.EntryDate,M.Occurence,M.Rate,M.Amount from (MemFacilityBilling M left Join SubGroup S On M.MemCode=S.SubCode) Where M.FcCode='" & Me.LblFacility.Tag
  loc_13F286B: Set var_98 = Me.Txt
  loc_13F2871: Call 0.Method_Proc_278_53_13F32000 (CInt(0), var_9C, CVar(var_94 & "' And M.MthYear='"))
  loc_13F2879: var_AC = CVar(var_9C) 'Address
  loc_13F28A0: Set var_100 = Me.Txt
  loc_13F28A6: Call 0.Method_Proc_278_53_13F32000 (CInt(1), var_104, var_178 & Trim(var_AC) & "' And M.EntryDate=")
  loc_13F28B5: Proc_6_7_F25D88(var_124, CVar(var_104))
  loc_13F28BD: var_134 = -1 & var_124 
  loc_13F28D4: unk_4BB601.Execute CStr(var_134 & " Order by S.Name"), var_17C, 
  loc_13F28E5: Set global_108 = var_17C
  loc_13F292A: var_90 = "select S.SubCode,S.CardNo,S.Name,S1.ChrgType,S1.FixedRate,S1.Pmember,S1.Spouse from subgroup S Left Join (Select MCF.* from " & "MemCatFacility MCF Inner Join (select max(MemCatCode)As MemCatCode,Max(AppDate) As AppDate from MemCatFacility "
  loc_13F293F: Proc_6_7_F25D88(var_AC, MemVar_1F920EC, CVar(var_90 & "where appdate<="))
  loc_13F2959: var_FC = var_2C4 & var_AC & " Group By MemCatCode) As M1 On MCF.MemCatCode=M1.MemCatCode And MCF.AppDate=M1.AppDate " & "Where fccode='" 
  loc_13F297E: var_134 = var_FC & CVar(Me.LblFacility.Tag) & "') As S1 On S.CompanyType=S1.MemCatCode Where S.CompanyType In(Select MCF.MemCatCode from " 
  loc_13F2982: var_1A0 = "MemCatFacility MCF Inner Join (select max(MemCatCode)As MemCatCode,Max(AppDate) As AppDate from MemCatFacility "
  loc_13F299F: Proc_6_7_F25D88(var_1D0, MemVar_1F920EC, var_134 & var_1A0 & "where appdate<=")
  loc_13F29A7: var_1E0 = -1 & var_1D0 
  loc_13F29D5: var_240 = var_1E0 & " Group By MemCatCode) As M1 On MCF.MemCatCode=M1.MemCatCode And MCF.AppDate=M1.AppDate " & "Where fccode='" & CVar(Me.LblFacility.Tag) 
  loc_13F29F1: var_2A0 = var_240 & "')And S.ActiveYN=1 And (S.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' or S.LOGSITE_CODE='HO') Order By S.CardNo,S.Name" 
  loc_13F29FF: unk_4BB601.Execute CStr(var_2A0), var_9C, 
  loc_13F2A10: Set global_96 = var_9C
  loc_13F2A64: Me.FGrid.Rows = 1
  loc_13F2A83: If (Me.RecordCount = 0) Then
  loc_13F2A99:   Me.FGrid.Rows = 2
  loc_13F2AB4:   Me.FGrid.FixedRows = 1
  loc_13F2ABC:   Exit Sub
  loc_13F2ABD: End If
  loc_13F2AD4: If (Me.RecordCount > 0) Then
  loc_13F2AD9:   var_86 = 1
  loc_13F2ADC:   ' Referenced from: 13F31A2
  loc_13F2AEE:   If Not(Me.EOF) Then
  loc_13F2AF6:     var_AC = CVar(CStr(var_86)) 'String
  loc_13F2AFE:     Set var_8C = Me.FGrid
  loc_13F2B4E:     var_BC = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("CardNo")), CVar(CLng(3)), CVar(CLng(var_86)))) 'String
  loc_13F2B5C:     LateIdCallSt
  loc_13F2BAE:     var_BC = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")), CVar(CLng(2)), CVar(CLng(var_86)), Me.FGrid)) 'String
  loc_13F2BBC:     LateIdCallSt
  loc_13F2C0E:     var_BC = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("subcode")), CVar(CLng(1)), CVar(CLng(var_86)), Me.FGrid, var_BC)) 'String
  loc_13F2C16:     Set var_9C = Me.FGrid
  loc_13F2C1C:     LateIdCallSt
  loc_13F2C49:     If (Me.RecordCount > 0) Then
  loc_13F2C52:       Me.MoveFirst
  loc_13F2C5B:       var_EC = CVar(CLng(var_86)) 'Long
  loc_13F2CA7:       Me.Find "MemCode='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_13F2CE4:       If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_13F2CEA:         var_EC = "Rate"
  loc_13F2D10:         Proc_6_39_E7C810(var_BC, CVar(Me.Fields.Item(var_EC)), var_1A0, CVar(Me.Fields.Item(var_EC)), CVar(CLng(1)), var_EC)
  loc_13F2D19:         var_168 = CVar(CLng(var_86)) 'Long
  loc_13F2D58:         LateIdCallSt
  loc_13F2D9D:         Proc_6_39_E7C810(var_BC, CVar(Me.Fields.Item("Occurence")), Me.FGrid, CVar(CStr(Format(var_BC, "0.00"))), 1, 1, CVar(CLng(5)))
  loc_13F2DA6:         var_168 = CVar(CLng(var_86)) 'Long
  loc_13F2DE5:         LateIdCallSt
  loc_13F2E2A:         Proc_6_39_E7C810(var_BC, CVar(Me.Fields.Item("Amount")), Me.FGrid, CVar(CStr(Format(var_BC, "0"))), 1, 1, CVar(CLng(4)))
  loc_13F2E33:         var_168 = CVar(CLng(var_86)) 'Long
  loc_13F2E3B:         var_1A0 = CVar(CLng(6)) 'Long
  loc_13F2E64:         var_FC = CVar(CStr(Format(var_BC, "0.00"))) 'String
  loc_13F2E6C:         Set var_9C = Me.FGrid
  loc_13F2E72:         LateIdCallSt
  loc_13F2E91:       Else
  loc_13F2F25:         var_1C0 = CVar(CLng(var_86)) 'Long
  loc_13F2F2D:         var_210 = CVar(CLng(5)) 'Long
  loc_13F2F5F:         var_90 = Proc_6_38_E68A98(CVar(Me.Fields.Item("ChrgType")), Me.Fields, CVar(Me.Fields.Item("PMember")), 1, 1, "0.00", "0.00")
  loc_13F2F6E:         var_134 = IIf((var_90 = "Fixed"), Format(CVar(Me.Fields.Item("FixedRate")), "0.00"), Format(CVar(Me.Fields.Item("PMember")), "0.00"))
  loc_13F2F77:         var_154 = CVar(CStr(var_134)) 'String
  loc_13F2F7F:         Set var_180 = Me.FGrid
  loc_13F2F85:         LateIdCallSt
  loc_13F2FBA:         var_EC = CVar(CLng(var_86)) 'Long
  loc_13F2FC2:         var_168 = CVar(CLng(4)) 'Long
  loc_13F2FC7:         var_1A0 = "0"
  loc_13F2FD1:         Set var_8C = Me.FGrid
  loc_13F2FD7:         LateIdCallSt
  loc_13F2FE6:         var_EC = CVar(CLng(var_86)) 'Long
  loc_13F2FEE:         var_168 = CVar(CLng(6)) 'Long
  loc_13F2FF3:         var_1A0 = "0.00"
  loc_13F2FFD:         Set var_8C = Me.FGrid
  loc_13F3003:         LateIdCallSt
  loc_13F300E:       End If
  loc_13F3011:     Else
  loc_13F3014:       var_EC = "ChrgType"
  loc_13F3023:       var_8C = Me.Fields
  loc_13F30A5:       var_1C0 = CVar(CLng(var_86)) 'Long
  loc_13F30AD:       var_210 = CVar(CLng(5)) 'Long
  loc_13F30EE:       var_134 = IIf((Proc_6_38_E68A98(CVar(var_8C.Item(var_EC)), var_8C, "0.00", "0.00", var_EC, var_8C, "0.00") = "Fixed"), Format(CVar(Me.Fields.Item("FixedRate")), "0.00"), Format(CVar(Me.Fields.Item("PMember")), "0.00"))
  loc_13F30F7:       var_154 = CVar(CStr(var_134)) 'String
  loc_13F30FF:       Set var_180 = Me.FGrid
  loc_13F3105:       LateIdCallSt
  loc_13F313A:       var_EC = CVar(CLng(var_86)) 'Long
  loc_13F3142:       var_168 = CVar(CLng(4)) 'Long
  loc_13F3147:       var_1A0 = "0"
  loc_13F3151:       Set var_8C = Me.FGrid
  loc_13F3157:       LateIdCallSt
  loc_13F3166:       var_EC = CVar(CLng(var_86)) 'Long
  loc_13F316E:       var_168 = CVar(CLng(6)) 'Long
  loc_13F3173:       var_1A0 = "0.00"
  loc_13F317D:       Set var_8C = Me.FGrid
  loc_13F3183:       LateIdCallSt
  loc_13F318E:     End If
  loc_13F3194:     var_86 = (var_86 + 1)
  loc_13F319D:     Me.MoveNext
  loc_13F31A2:     GoTo loc_13F2ADC
  loc_13F31A5:   End If
  loc_13F31A5: End If
  loc_13F31C4: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13F31C7:   var_EC = "1"
  loc_13F31D1:   Set var_8C = Me.FGrid
  loc_13F31E2: End If
  loc_13F31F5: Me.FGrid.FixedRows = 1
  loc_13F31FD: Exit Sub
End Sub

Public Sub Proc_278_54_F9AEFC
  'Data Table: 4BB5F4
  Dim var_8C As Variant
  Dim Me As Recordset15
  Dim var_168 As String
  loc_F9ADC3: Me.FacilityListView.ListItems.Clear
  loc_F9ADE9: If (Me.RecordCount > 0) Then
  loc_F9ADF2:   Me.MoveFirst
  loc_F9ADF7:   ' Referenced from: F9AEE3
  loc_F9AE09:   If Not(Me.EOF) Then
  loc_F9AE6A:     Me.FacilityListView.ListItems.Add var_EC, var_10C, CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))), var_13C, var_15C
  loc_F9AEC2:     var_168 = Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")))
  loc_F9AECA:     var_164.SubItems = 1
  loc_F9AEDE:     Me.MoveNext
  loc_F9AEE3:     GoTo loc_F9ADF7
  loc_F9AEE6:   End If
  loc_F9AEE6: End If
  loc_F9AEEA: Set var_8C = Me.FacilityListView
  loc_F9AEFB: Exit Sub
End Sub

Public Sub Proc_278_55_10E7EFC
  'Data Table: 4BB5F4
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_10E7BD0: On Error Goto loc_10E7EF5
  loc_10E7BD7: Set var_88 = Me.FGrid
  loc_10E7BE6: var_88.Height = CVar(CDbl(6500))
  loc_10E7BF7: var_88.Width = CVar(CDbl(8500))
  loc_10E7C08: var_88.Cols = 8
  loc_10E7C19: var_88.Rows = 2
  loc_10E7C32: global_84 = CStr(CLng(var_88.BackColor))
  loc_10E7C3C: var_98 = 0
  loc_10E7C45: var_CC = &H64
  loc_10E7C51: LateIdCallSt
  loc_10E7C5C: var_98 = CVar(CLng(1)) 'Long
  loc_10E7C61: var_CC = 0
  loc_10E7C6D: LateIdCallSt
  loc_10E7C78: var_98 = CVar(CLng(3)) 'Long
  loc_10E7C7D: var_CC = &H320
  loc_10E7C89: LateIdCallSt
  loc_10E7C91: var_98 = 0
  loc_10E7C9D: var_CC = CVar(CLng(3)) 'Long
  loc_10E7CA2: var_EC = "Card No"
  loc_10E7CAB: LateIdCallSt
  loc_10E7CB6: var_98 = CVar(CLng(3)) 'Long
  loc_10E7CC1: var_CC = CVar(CInt(1)) 'Integer
  loc_10E7CC8: LateIdCallSt
  loc_10E7CD3: var_98 = CVar(CLng(2)) 'Long
  loc_10E7CD8: var_CC = &HA28
  loc_10E7CE4: LateIdCallSt
  loc_10E7CEC: var_98 = 0
  loc_10E7CF8: var_CC = CVar(CLng(2)) 'Long
  loc_10E7CFD: var_EC = "Member Name"
  loc_10E7D06: LateIdCallSt
  loc_10E7D11: var_98 = CVar(CLng(2)) 'Long
  loc_10E7D1C: var_CC = CVar(CInt(1)) 'Integer
  loc_10E7D23: LateIdCallSt
  loc_10E7D2E: var_98 = CVar(CLng(4)) 'Long
  loc_10E7D33: var_CC = &H708
  loc_10E7D3F: LateIdCallSt
  loc_10E7D47: var_98 = 0
  loc_10E7D53: var_CC = CVar(CLng(4)) 'Long
  loc_10E7D58: var_EC = "No Of Occurences"
  loc_10E7D61: LateIdCallSt
  loc_10E7D6C: var_98 = CVar(CLng(4)) 'Long
  loc_10E7D77: var_CC = CVar(CInt(7)) 'Integer
  loc_10E7D7E: LateIdCallSt
  loc_10E7D89: var_98 = CVar(CLng(4)) 'Long
  loc_10E7D94: var_CC = CVar(CInt(7)) 'Integer
  loc_10E7D9B: LateIdCallSt
  loc_10E7DA6: var_98 = CVar(CLng(5)) 'Long
  loc_10E7DAB: var_CC = &H578
  loc_10E7DB7: LateIdCallSt
  loc_10E7DBF: var_98 = 0
  loc_10E7DCB: var_CC = CVar(CLng(5)) 'Long
  loc_10E7DD0: var_EC = "Rate"
  loc_10E7DD9: LateIdCallSt
  loc_10E7DE4: var_98 = CVar(CLng(5)) 'Long
  loc_10E7DEF: var_CC = CVar(CInt(7)) 'Integer
  loc_10E7DF6: LateIdCallSt
  loc_10E7E01: var_98 = CVar(CLng(5)) 'Long
  loc_10E7E0C: var_CC = CVar(CInt(7)) 'Integer
  loc_10E7E13: LateIdCallSt
  loc_10E7E1E: var_98 = CVar(CLng(6)) 'Long
  loc_10E7E23: var_CC = &H578
  loc_10E7E2F: LateIdCallSt
  loc_10E7E37: var_98 = 0
  loc_10E7E43: var_CC = CVar(CLng(6)) 'Long
  loc_10E7E48: var_EC = "Amount"
  loc_10E7E51: LateIdCallSt
  loc_10E7E5C: var_98 = CVar(CLng(6)) 'Long
  loc_10E7E67: var_CC = CVar(CInt(7)) 'Integer
  loc_10E7E6E: LateIdCallSt
  loc_10E7E79: var_98 = CVar(CLng(6)) 'Long
  loc_10E7E84: var_CC = CVar(CInt(7)) 'Integer
  loc_10E7E8B: LateIdCallSt
  loc_10E7E96: var_98 = CVar(CLng(7)) 'Long
  loc_10E7E9B: var_CC = 0
  loc_10E7EA7: LateIdCallSt
  loc_10E7EAF: var_98 = 0
  loc_10E7EBB: var_CC = CVar(CLng(7)) 'Long
  loc_10E7EC0: var_EC = "Charge Type"
  loc_10E7EC9: LateIdCallSt
  loc_10E7ED4: var_98 = CVar(CLng(7)) 'Long
  loc_10E7EDF: var_CC = CVar(CInt(1)) 'Integer
  loc_10E7EE6: LateIdCallSt
  loc_10E7EF0: Set var_88 = Nothing 
  loc_10E7EF4: Exit Sub
  loc_10E7EF5: ' Referenced from: 10E7BD0
  loc_10E7EF5: Proc_6_60_E62BC4(var_88, var_CC, var_98, var_88, var_EC, var_CC, var_98, var_88)
  loc_10E7EFA: Exit Sub
End Sub

Public Sub Proc_278_56_DFE41C
  'Data Table: 4BB5F4
  loc_DFE414: Proc_278_56_DFE41C = 
End Sub

Public Sub Proc_278_57_E435C4
  'Data Table: 4BB5F4
  loc_E435A0: Set var_88 = Me.TopCtrl1
  loc_E435A6: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_E435BF: If (CStr() = "Browse") Then
  loc_E435C2:   Exit Sub
  loc_E435C3: End If
  loc_E435C3: Exit Sub
End Sub

Public Sub Proc_278_58_11A2000
  'Data Table: 4BB5F4
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_B8 As Variant
  Dim var_A8 As String
  Dim var_170 As Variant
  Dim var_174 As MSHFlexGrid
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  loc_11A1C23: var_A0 = CLng(Me.FGrid.Col)
  loc_11A1C33: If (var_A0 = CLng(4)) Then
  loc_11A1C42:   Set var_8C = Me.TxtGrid
  loc_11A1C48:   Call 0.Method_Proc_278_58_11A20000 (0, var_A4)
  loc_11A1C73:   var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A1C8B:   var_140 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11A1CB8:   var_160 = CVar(CStr(Format(CVar(Val(var_A4.Text)), "0"))) 'String
  loc_11A1CC0:   Set var_174 = Me.FGrid
  loc_11A1CC6:   LateIdCallSt
  loc_11A1D00:   var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A1D09:   Set var_A4 = Me.FGrid
  loc_11A1D18:   var_120 = CVar(CLng(var_A4.Col)) 'Long
  loc_11A1D32:   var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_11A1D50:   var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A1D58:   var_170 = CVar(CLng(5)) 'Long
  loc_11A1D90:   var_1F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A1D98:   var_214 = CVar(CLng(6)) 'Long
  loc_11A1DC9:   var_234 = CVar(CStr(Format(CVar((Val(var_A8) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_11A1DD1:   Set var_248 = Me.FGrid
  loc_11A1DD7:   LateIdCallSt
  loc_11A1E11: Else
  loc_11A1E18:   If (var_A0 = CLng(5)) Then
  loc_11A1E27:     Set var_8C = Me.TxtGrid
  loc_11A1E2D:     Call 0.Method_Proc_278_58_11A20000 (0, var_A4, var_A8, var_248, var_234, 1, 1)
  loc_11A1E35:     var_214 = var_A4.Text
  loc_11A1E58:     var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A1E70:     var_140 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11A1E9D:     var_160 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_11A1EA5:     Set var_174 = Me.FGrid
  loc_11A1EAB:     LateIdCallSt
  loc_11A1EE5:     var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A1EFD:     var_120 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11A1F35:     var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A1F3D:     var_170 = CVar(CLng(4)) 'Long
  loc_11A1F75:     var_1F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A1F7D:     var_214 = CVar(CLng(6)) 'Long
  loc_11A1FAE:     var_234 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_11A1FB6:     Set var_248 = Me.FGrid
  loc_11A1FBC:     LateIdCallSt
  loc_11A1FF3:   End If
  loc_11A1FF3: End If
  loc_11A1FF8: Proc_278_58_11A2000 = &HFF
End Sub

Public Sub Proc_278_59_F18F48
  'Data Table: 4BB5F4
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F18E5E: Set var_8C = Me.Txt
  loc_F18E64: Call 0.Method_Proc_278_59_F18F48C (var_8E, var_86)
  loc_F18E74: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F18E8A:   Set var_8C = Me.Txt
  loc_F18E90:   Call 0.Method_Proc_278_59_F18F480 (CInt(var_86), var_98)
  loc_F18E98:   var_98.Text = vbNullString
  loc_F18EB4:   Set var_8C = Me.Txt
  loc_F18EBA:   Call 0.Method_Proc_278_59_F18F480 (CInt(var_86), var_98)
  loc_F18EC2:   var_98.Tag = vbNullString
  loc_F18ED1: Next var_92 'Byte
  loc_F18EEA: Me.FGrid.Rows = 1
  loc_F18F07: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F18F0F: Set var_98 = Me.FGrid
  loc_F18F3E: Me.FGrid.FixedRows = 1
  loc_F18F46: Exit Sub
End Sub

Public Sub Proc_278_60_E9A258(arg_C) 'E9A258
  'Data Table: 4BB5F4
  Dim var_98 As TextBox
  loc_E9A1DE: Set var_8C = Me.Txt
  loc_E9A1E4: Call 0.Method_Proc_278_60_E9A258C (var_8E, var_86)
  loc_E9A1F4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9A20A:   Set var_8C = Me.Txt
  loc_E9A210:   Call 0.Method_Proc_278_60_E9A2580 (CInt(var_86), var_98)
  loc_E9A218:   var_98.Enabled = arg_C
  loc_E9A227: Next var_92 'Byte
  loc_E9A23A: Set var_8C = Me.Txt
  loc_E9A240: Call 0.Method_Proc_278_60_E9A2580 (CInt(0), var_98)
  loc_E9A248: var_98.Enabled = False
  loc_E9A254: Exit Sub
End Sub

Public Sub Proc_278_61_DFC6C0
  'Data Table: 4BB5F4
  Dim MemVar_F6ECBAC0 As Currency
  loc_DFC6BC: Exit Sub
  loc_DFC6BD: MemVar_F6ECBAC0 = 
End Sub
