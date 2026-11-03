VERSION 5.00
Begin VB.Form FrmComplaintClearing
  Caption = "Complaint Clearance"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmComplaintClearing.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 14100
  ClientHeight = 8145
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 14100
    Height = 450
    Visible = 0   'False
    TabIndex = 7
  End
  Begin CommandButton CmdRefressz
    Caption = "Re&fresh"
    Left = 12465
    Top = 8280
    Width = 1605
    Height = 330
    Visible = 0   'False
    TabIndex = 1
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
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HC0E0FF&
    ForeColor = &H80000012&
    Left = 915
    Top = 2235
    Width = 990
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSFlexGrid FGPoint
    Left = 10695
    Top = 1755
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1650
    Top = 1515
    Width = 2895
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin DataGrid DGCategory
    Left = 10680
    Top = 1110
    Width = 4230
    Height = 3060
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MSHFlexGrid FGrid1
    Left = 210
    Top = 1830
    Width = 12225
    Height = 5055
    Visible = 0   'False
    TabIndex = 2
  End
  Begin BtnEnh Exit
    Left = 1410
    Top = 7230
    Width = 1215
    Height = 660
    TabIndex = 9
  End
  Begin BtnEnh CmdRefress
    Left = 165
    Top = 7245
    Width = 1215
    Height = 660
    TabIndex = 10
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 420
    Width = 180
    Height = 540
    TabIndex = 8
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
    Caption = "For Category"
    Index = 3
    ForeColor = &HFF0000&
    Left = 300
    Top = 1500
    Width = 1230
    Height = 240
    TabIndex = 4
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

Attribute VB_Name = "FrmComplaintClearing"

Private global_60 As Integer

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'FB15DC
  'Data Table: 470868
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  loc_FB1450: If (KeyCode = 1) Then
  loc_FB145D:   If (CLng(Shift) = &H1B) Then
  loc_FB146D:     Set var_8C = Me.TxtGrid
  loc_FB1473:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_FB148D:     Set var_98 = Me.TxtGrid
  loc_FB1493:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_FB149B:     var_9C.Text = var_90.Tag
  loc_FB14B2:     Set var_8C = Me.FGrid1
  loc_FB14CF:     Set var_8C = Me.TxtGrid
  loc_FB14D5:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_FB14DD:     var_90.Visible = FGrid1.DispID_8001
  loc_FB14E9:     Exit Sub
  loc_FB14EA:   End If
  loc_FB150D:   If (CLng(Me.FGrid1.Col) = CLng(7)) Then
  loc_FB151A:     If (CLng(Shift) = &HD) Then
  loc_FB1523:       Call Proc_143_34_EF6AF4(KeyCode, var_B2)
  loc_FB152E:       If (var_B2 = &HFF) Then
  loc_FB1565:         Set var_90 = Me.TxtGrid
  loc_FB1574:         Proc_6_62_1253BC4(Me.FGrid1, var_90, KeyCode, Shift, global_60, 7)
  loc_FB1590:         Set var_8C = Me.TxtGrid
  loc_FB1596:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0, 0)
  loc_FB159E:         var_90.Visible = True
  loc_FB15BC:         Me.FGrid1.Col = CVar(CLng(8))
  loc_FB15C8:         Set var_8C = Me.FGrid1
  loc_FB15D9:       End If
  loc_FB15D9:     End If
  loc_FB15D9:   End If
  loc_FB15D9: End If
  loc_FB15D9: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E0B718
  'Data Table: 470868
  Dim arg_10 As Integer
  loc_E0B70A: Call Proc_143_34_EF6AF4(Cancel)
  loc_E0B713: arg_10 = Not(var_86)
  loc_E0B716: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E7D09C
  'Data Table: 470868
  Dim var_94 As TextBox
  loc_E7D03C: On Error Goto loc_E7D093
  loc_E7D062: Call Proc_143_35_E79044(Proc_5_1_100CB50("ADD", Me))
  loc_E7D078: Set var_8C = Me.Txt
  loc_E7D07E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_E7D086: var_94.SetFocus
  loc_E7D092: Exit Sub
  loc_E7D093: ' Referenced from: E7D03C
  loc_E7D093: Proc_6_60_E62BC4(global_56)
  loc_E7D098: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EEA7C4
  'Data Table: 470868
  loc_EEA700: On Error Goto loc_EEA7BD
  loc_EEA73A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EEA746:   Set var_10C = Me.TopCtrl1
  loc_EEA74C:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_EEA75C:   Set var_10C = Me.TopCtrl1
  loc_EEA762:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016(True)
  loc_EEA773:   Set var_10C = Me.TopCtrl1
  loc_EEA779:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_EEA78A:   Set var_10C = Me.TopCtrl1
  loc_EEA790:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000F(False)
  loc_EEA798:   Call Proc_143_38_E87268()
  loc_EEA79D:   Call Proc_143_37_1099650()
  loc_EEA7A5: Else
  loc_EEA7AB:   Call 0.Method_arg_1E8 (var_10C)
  loc_EEA7B3:   Call var_10C.SetFocus
  loc_EEA7BC: End If
  loc_EEA7BC: Exit Sub
  loc_EEA7BD: ' Referenced from: EEA700
  loc_EEA7BD: Proc_6_60_E62BC4()
  loc_EEA7C2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10D25C0
  'Data Table: 470868
  Dim var_96 As Integer
  Dim unk_47087C As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10D22F0: On Error Goto loc_10D2567
  loc_10D232A: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10D232F:   var_96 = 0
  loc_10D233B:   unk_47087C.BeginTrans var_11C
  loc_10D2342:   var_96 = &HFF
  loc_10D2356:   var_94 = Me.Bookmark 'Variant
  loc_10D23A2:   var_F8 = "Delete From ComplaintDetail Where Code='" & Me.Fields.Item("SCode").Value & "'" 
  loc_10D23B0:   unk_47087C.Execute CStr(var_F8), var_118, -1
  loc_10D23FB:   var_164 = 0
  loc_10D240E:   var_15C = 0
  loc_10D2419:   var_158 = 0
  loc_10D242C:   var_150 = 0
  loc_10D2437:   var_14C = 0
  loc_10D244A:   var_144 = 0
  loc_10D248A:   var_128 = "ComplaintDetail"
  loc_10D2493:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "Code", &HC8, CStr(Me.Fields.Item("SCode").Value), 0, 0, 0)
  loc_10D24C1:   unk_47087C.CommitTrans
  loc_10D24C8:   var_96 = 0
  loc_10D24D6:   Me.Requery -1
  loc_10D24E6:   Me.Requery -1
  loc_10D2506:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10D2513:     Me.Bookmark = var_94
  loc_10D251B:   Else
  loc_10D252F:     If (Me.EOF = 0) Then
  loc_10D2538:       Me.MoveLast
  loc_10D253D:     End If
  loc_10D253D:   End If
  loc_10D253D:   Call Proc_143_37_1099650(var_96, var_144, 0, var_14C, var_150)
  loc_10D255E:   Proc_5_0_110649C(&HFF, Me, global_56, 0)
  loc_10D2566: End If
  loc_10D2566: Exit Sub
  loc_10D2567: ' Referenced from: 10D22F0
  loc_10D256D: If (var_96 = &HFF) Then
  loc_10D2576:   unk_47087C.RollbackTrans
  loc_10D257B: End If
  loc_10D2583: Set var_120 = Err()
  loc_10D2589: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10D25AA: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10D25BD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EC72C4
  'Data Table: 470868
  Dim var_B4 As TextBox
  Dim var_8C As MSHFlexGrid
  loc_EC721C: On Error Goto loc_EC72BD
  loc_EC7229: If (global_56 Is Nothing) Then
  loc_EC722C:   Exit Sub
  loc_EC722D: End If
  loc_EC7250: Call Proc_143_35_E79044(Proc_5_1_100CB50("EDIT", Me))
  loc_EC7263: Set var_8C = Me.TopCtrl1
  loc_EC7269: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000D(True)
  loc_EC727F: Set var_8C = Me.Txt
  loc_EC7285: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_B4)
  loc_EC7298: global_68 = var_B4.Text
  loc_EC72B4: Me.FGrid1.Enabled = True
  loc_EC72BC: Exit Sub
  loc_EC72BD: ' Referenced from: EC721C
  loc_EC72BD: Proc_6_60_E62BC4(global_56)
  loc_EC72C2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17D64
  'Data Table: 470868
  loc_E17D59: Me.Global.Unload Me
  loc_E17D61: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F19690
  'Data Table: 470868
  Dim Me As Recordset15
  loc_F195A0: On Error Goto loc_F1962A
  loc_F195AC: var_88 = Me.RecordCount
  loc_F195BA: If (var_88 <= 0) Then
  loc_F195DE:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F195EE:   Exit Sub
  loc_F195EF: End If
  loc_F195F2: MemVar_1F920E4 = "SELECT  Code AS Scode,Category FROM ComplaintCategory"
  loc_F195FC: MemVar_1F92120 = Me
  loc_F19603: var_10C = "3500,800,1500"
  loc_F19609: Proc_6_126_F1BCC0(var_10C)
  loc_F19624: Call 0.Method_arg_2B0 (1)
  loc_F19629: Exit Sub
  loc_F1962A: ' Referenced from: F195A0
  loc_F19632: Set var_110 = Err()
  loc_F19638: Call 0.Method_arg_1C (var_88)
  loc_F19649: If (var_88 <> 0) Then
  loc_F19654:   Set var_110 = Err()
  loc_F1965A:   Call 0.Method_arg_2C (var_10C)
  loc_F1967B:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F1968E: End If
  loc_F1968E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E34B78
  'Data Table: 470868
  loc_E34B68: Proc_5_0_110649C(&HFF, Me)
  loc_E34B70: Call Proc_143_37_1099650(global_52)
  loc_E34B75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E34CF8
  'Data Table: 470868
  loc_E34CE8: Proc_5_0_110649C(&HFF, Me)
  loc_E34CF0: Call Proc_143_37_1099650(global_52)
  loc_E34CF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E34C98
  'Data Table: 470868
  loc_E34C88: Proc_5_0_110649C(&HFF, Me)
  loc_E34C90: Call Proc_143_37_1099650(global_52)
  loc_E34C95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E34BD8
  'Data Table: 470868
  loc_E34BC8: Proc_5_0_110649C(&HFF, Me)
  loc_E34BD0: Call Proc_143_37_1099650(global_52)
  loc_E34BD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1074354
  'Data Table: 470868
  Dim unk_47087C As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_10740D4: On Error Goto loc_107430B
  loc_10740ED: unk_47087C.Execute "SELECT State.Code as SCode, State.Name as SName, State.ShortName as SShortName,Country.Name AS CCountry FROM State LEFT JOIN Country ON State.Country = Country.Code ORDER BY State.Name", var_BC, -1
  loc_10740F8: Set var_88 = var_C0
  loc_1074107: var_C4 = var_88.RecordCount
  loc_1074115: If (var_C4 = 0) Then
  loc_1074131:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1074141:   Exit Sub
  loc_1074142: End If
  loc_1074151: var_12C = MemVar_1F920B4 & "\State.ttx"
  loc_1074158: Set var_C0 = var_88 
  loc_1074164: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_107416E: Set var_88 = var_C0
  loc_1074174: var_AC = CVar(var_12E) 'Integer
  loc_1074177: var_98 = var_AC 'Variant
  loc_1074193: var_128 = MemVar_1F920B4 & "\State.RPT"
  loc_107419C: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_10741A7: MemVar_1F921E4 = var_C0
  loc_10741C2: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_10741CA: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10741D6: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_10741EF:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10741F7:   Call 0.Method_arg_20 (var_138)
  loc_10741FF:   Call 0.Method_arg_30 (var_128)
  loc_1074245:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_107425B:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1074263:     Call 0.Method_arg_20 (var_138)
  loc_107426B:     Call 0.Method_arg_38 ("'State Master'")
  loc_1074277:   End If
  loc_107427A: Next var_132 'Integer
  loc_1074298: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_10742A0: Call 0.Method_arg_2C (var_D4)
  loc_10742AE: Call 0.Method_arg_150 (var_F4)
  loc_10742B9: Call 0.Method_arg_50 (var_128)
  loc_10742C3: Set var_138 = Nothing
  loc_10742DD: Set var_C0 = MemVar_1F921E4 
  loc_10742E9: Proc_6_99_1483714(var_C0, 0, var_128)
  loc_10742F4: MemVar_1F921E4 = var_C0
  loc_1074307: Set var_88 = Nothing
  loc_107430A: Exit Sub
  loc_107430B: ' Referenced from: 10740D4
  loc_1074313: Set var_C0 = Err()
  loc_1074319: Call 0.Method_arg_2C (var_128, &HFF)
  loc_1074324: Call 0.Method_arg_50 (var_12C)
  loc_1074340: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_1074353: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E21E7C
  'Data Table: 470868
  Dim Me As Recordset15
  loc_E21E63: Me.Requery -1
  loc_E21E73: Me.Requery -1
  loc_E21E78: Exit Sub
End Sub

Private Sub Exit_UnknownEvent_9 'E17B50
  'Data Table: 470868
  loc_E17B45: Me.Global.Unload Me
  loc_E17B4D: Exit Sub
End Sub

Private Sub Form_Load() '1039900
  'Data Table: 470868
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_B0 As TextBox
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim unk_47087C As Connection15
  Dim var_D4 As Variant
  loc_10396C0: On Error Goto loc_10398BC
  loc_10396CC: Set var_AC = Me.TopCtrl1
  loc_10396D2: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_10396E8: Me.FGrid1.Visible = True
  loc_10396F7: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_103970F: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1039725: Set var_AC = Me.Txt
  loc_103972B: Call 0.Method_Form_Load0 (CInt(0), var_B0)
  loc_103974A: Me.DGCategory.Left = CVar(var_B0.Left)
  loc_1039766: Set var_B8 = Me.Txt
  loc_103976C: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_103978D: Call 0.Method_Form_Load0 (CInt(0), var_B0)
  loc_10397A5: var_98 = CVar(((var_B0.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_10397B4: Me.DGCategory.Top = CVar(var_B0.Left)
  loc_10397DC: unk_47087C.Execute "SELECT  Code AS Scode,Category FROM ComplaintCategory Order BY Category", var_D4, -1
  loc_10397ED: Set global_52 = Me.Txt
  loc_1039804: CVarUnk
  loc_1039809: VerifyVarObj
  loc_103980F: Set var_AC = Me.DGCategory
  loc_1039815: LateIdStAd
  loc_1039838: var_D8 = "INI"
  loc_1039846: Call Proc_143_35_E79044(Proc_5_1_100CB50(var_D8, Me, global_52), Me)
  loc_103985A: Set var_AC = Me.TopCtrl1
  loc_1039860: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_1039870: Set var_AC = Me.TopCtrl1
  loc_1039876: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016(True)
  loc_1039887: Set var_AC = Me.TopCtrl1
  loc_103988D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_10398A4: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000F(False)
  loc_10398AC: Call Proc_143_39_1103A44(global_52)
  loc_10398B1: Call Proc_143_37_1099650(Me.TopCtrl1)
  loc_10398B6: Call TopCtrl1_UnknownEvent_D()
  loc_10398BB: Exit Sub
  loc_10398BC: ' Referenced from: 10396C0
  loc_10398C4: Set var_AC = Err()
  loc_10398CA: Call 0.Method_arg_2C (var_D8)
  loc_10398EB: MsgBox(CVar(var_D8), &H40, "Information", var_FC, var_11C)
  loc_10398FE: Exit Sub
  loc_10398FF: Exit Sub
End Sub

Private Sub Form_Resize() 'E85198
  'Data Table: 470868
  loc_E8512E: Call 0.Method_arg_50 (var_88)
  loc_E85140: Me.LblFormCaption.Caption = var_88
  loc_E85159: Me.LblFormCaption.Left = CDbl(0)
  loc_E8516F: Me.LblFormCaption.Top = CDbl(0)
  loc_E8517D: Call 0.Method_arg_100 (var_90)
  loc_E8518F: Me.LblFormCaption.Width = var_90
  loc_E85197: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E529E8
  'Data Table: 470868
  loc_E529BB: Set global_52 = Nothing
  loc_E529CD: Set global_52 = Nothing
  loc_E529DF: Set global_52 = Nothing
  loc_E529E6: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8A0A8
  'Data Table: 470868
  loc_E8A044: On Error Goto loc_E8A064
  loc_E8A05B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8A063: Exit Sub
  loc_E8A064: ' Referenced from: E8A044
  loc_E8A06C: Set var_88 = Err()
  loc_E8A072: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8A093: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8A0A6: Exit Sub
  loc_E8A0A7: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '13079E0
  'Data Table: 470868
  Dim var_150 As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_110 As Variant
  Dim var_130 As String
  Dim var_1E4 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_27C As Variant
  Dim var_340 As Variant
  Dim var_360 As Variant
  Dim var_3E8 As Variant
  Dim var_4B0 As Variant
  Dim var_4D0 As Variant
  Dim var_120 As Variant
  Dim var_2DC As Variant
  Dim var_524 As Variant
  Dim unk_47087C As Connection15
  loc_1307383: var_150 = (CLng(Me.FGrid1.ColSel) = CLng(8))
  loc_130739A: var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_13073F2: If CBool(CVar(CLng(1)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_1307408:   var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_1307410:   var_DC = CVar(CLng(8)) 'Long
  loc_1307430:   var_110 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1307438:   var_130 = vbNullString
  loc_1307455:   var_150 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_13074B3:   If CBool(CVar(CLng(7)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_13074C9:     var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_13074D1:     var_DC = CVar(CLng(8)) 'Long
  loc_13074E0:     Set var_9C = Me.FGrid1
  loc_13074E6:     LateIdCallSt
  loc_130751C:     Set var_9C = Me.FGrid1
  loc_1307533:     Proc_6_7_F25D88(var_110, CVar(CStr(var_9C.TextMatrix))), CVar(CLng(6)), CVar(CLng(Me.FGrid1.Row)), var_9C, "ü", CVar(CLng(6)))
  loc_130754B:     var_170 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1307553:     var_190 = CVar(CLng(7)) 'Long
  loc_1307602:     var_3E8 = Me.FGrid1.Row
  loc_1307633:     Proc_6_7_F25D88(var_45C, CVar(CStr(Me.FGrid1.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_3E8)), CVar(CLng(0)), CVar(CLng(Me.FGrid1.Row)), CVar(CLng(4)), CVar(CLng(Me.FGrid1.Row)))
  loc_130764B:     var_4B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1307653:     var_4D0 = CVar(CLng(3)) 'Long
  loc_130769D:     var_1E4 = "UPDATE ComplaintDetail SET Status='Solved', ClearingDate=" & var_110 & ", ClearingPerson='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) 
  loc_13076C0:     var_2DC = var_1E4 & "',Description='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "', UName2='" & CVar(MemVar_1F920C8) 
  loc_13076F9:     var_524 = var_2DC & "' " & "WHERE Code='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "' AND CDate=" & var_45C & " AND CTime='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) 
  loc_1307710:     unk_47087C.Execute CStr(var_524 & "'"), var_568, -1
  loc_130778B:   Else
  loc_130779E:     var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_13077A6:     var_DC = CVar(CLng(8)) 'Long
  loc_13077AB:     var_130 = vbNullString
  loc_13077B5:     Set var_9C = Me.FGrid1
  loc_13077BB:     LateIdCallSt
  loc_13077E0:     var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_13077E8:     var_DC = CVar(CLng(7)) 'Long
  loc_13077ED:     var_130 = vbNullString
  loc_13077F7:     Set var_9C = Me.FGrid1
  loc_13077FD:     LateIdCallSt
  loc_13078CA:     Proc_6_7_F25D88(var_2DC, CVar(CStr(Me.FGrid1.TextMatrix))), CVar(CLng(2)), CVar(CLng(Me.FGrid1.Row)), CVar(CLng(0)), CVar(CLng(Me.FGrid1.Row)), CVar(CLng(4)), CVar(CLng(Me.FGrid1.Row)))
  loc_13078E2:     var_340 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13078EA:     var_360 = CVar(CLng(3)) 'Long
  loc_1307924:     var_120 = "UPDATE ComplaintDetail SET Status='UnSolved', ClearingDate=NULL, ClearingPerson='',Description='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) 
  loc_1307959:     var_27C = var_120 & "', UName2='" & CVar(MemVar_1F920C8) & "' " & "WHERE Code='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "' AND CDate=" 
  loc_1307987:     unk_47087C.Execute CStr(var_27C & var_2DC & " AND CTime='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "'"), var_3E8, -1
  loc_13079DF:   End If
  loc_13079DF: End If
  loc_13079DF: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A '107FFB4
  'Data Table: 470868
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_107FD14: Set var_88 = Me.TopCtrl1
  loc_107FD1A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_107FD5F: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_107FD68:   Call Form_KeyDown(KeyCode, Shift)
  loc_107FD6D: End If
  loc_107FDE1: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_107FDEC:   var_9C = "+{Tab}"
  loc_107FDF2:   Proc_303_0_FB9B68(CStr(Me.FGrid1.Tag), 0)
  loc_107FDFC:   KeyCode = 0
  loc_107FE02: Else
  loc_107FE59:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - 1)))) Then
  loc_107FE5C:   End If
  loc_107FE5C: End If
  loc_107FE8B: If ((KeyCode = &HD) Or ((CLng(KeyCode) = &H20) And (CLng(Me.FGrid1.Col) = CLng(8)))) Then
  loc_107FE8E:   Call Fgrid1_UnknownEvent_9()
  loc_107FE93: End If
  loc_107FEB6: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_107FEDA: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_107FF00:   If (CLng(Me.FGrid1.Col) = CLng(7)) Then
  loc_107FF16:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_107FF2E:     var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_107FF33:     var_11C = vbNullString
  loc_107FF3D:     Set var_B4 = Me.FGrid1
  loc_107FF43:     LateIdCallSt
  loc_107FF6E:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_107FF76:     var_FC = CVar(CLng(8)) 'Long
  loc_107FF7B:     var_11C = vbNullString
  loc_107FF85:     Set var_A0 = Me.FGrid1
  loc_107FF8B:     LateIdCallSt
  loc_107FF9D:   End If
  loc_107FF9D: End If
  loc_107FFA3: If (KeyCode = &HD) Then
  loc_107FFAB:   global_60 = 0
  loc_107FFAE: End If
  loc_107FFB0: KeyCode = 0
  loc_107FFB3: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'FCF038
  'Data Table: 470868
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_FCEE84: Set var_88 = Me.TopCtrl1
  loc_FCEE8A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FCEEA3: If (CStr() = "Browse") Then
  loc_FCEEA6:   Exit Sub
  loc_FCEEA7: End If
  loc_FCEECA: If (CLng(Me.FGrid1.Col) = CLng(7)) Then
  loc_FCEED1:   Set var_C4 = Me.FGrid1
  loc_FCEEF5:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_FCEF22:   Set var_B4 = var_C4
  loc_FCEF34:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 1, 0)
  loc_FCEF5C:   Set var_88 = Me.TxtGrid
  loc_FCEF62:   Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_B4, var_9C, Asc(var_9C))
  loc_FCEF6A:   0 = var_B4.Text
  loc_FCEF83:   If (Len(var_9C) <= 1) Then
  loc_FCEF92:     Set var_88 = Me.TxtGrid
  loc_FCEF98:     Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_B4, var_9C)
  loc_FCEFA0:     var_CA = var_B4.Text
  loc_FCEFB1:     Set var_B8 = Me.TxtGrid
  loc_FCEFB7:     Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_C4)
  loc_FCEFBF:     var_C4.Text = var_9C
  loc_FCEFD2:   End If
  loc_FCEFDE:   Set var_88 = Me.TxtGrid
  loc_FCEFE4:   Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_B4)
  loc_FCEFFE:   Set var_B8 = Me.TxtGrid
  loc_FCF004:   Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_C4)
  loc_FCF00C:   var_C4.SelStart = Len(var_B4.Text)
  loc_FCF01F: End If
  loc_FCF029: If (CLng(KeyCode) <> &HD) Then
  loc_FCF031:   global_60 = &HFF
  loc_FCF034: End If
  loc_FCF034: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E3F61C
  'Data Table: 470868
  Dim var_8C As TextBox
  loc_E3F5F0: Call Proc_143_38_E87268()
  loc_E3F600: Set var_88 = Me.TxtGrid
  loc_E3F606: Call 0.Method_Fgrid1_UnknownEvent_150 (1, var_8C)
  loc_E3F60E: var_8C.Visible = False
  loc_E3F61A: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FEA660
  'Data Table: 470868
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_FEA496: Set var_88 = Me.Txt
  loc_FEA49C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FEA4AA: Proc_6_74_E226B0(var_8C)
  loc_FEA4B6: Call Proc_143_38_E87268(var_8C)
  loc_FEA4BE: var_92 = Index
  loc_FEA4C9: If (var_92 = CInt(0)) Then
  loc_FEA4E3:   If (Me.RecordCount > 0) Then
  loc_FEA4F1:     Set var_8C = Me.FGPoint
  loc_FEA509:     Proc_6_137_1193554(Me.DGCategory, global_52, Index)
  loc_FEA517:   End If
  loc_FEA565:   Set var_88 = Me.Txt
  loc_FEA56B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FEA573:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FEA58B:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FEA58E:     Exit Sub
  loc_FEA58F:   End If
  loc_FEA59C:   Set var_88 = Me.Txt
  loc_FEA5A2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FEA5AA:   var_A0 = var_8C.Text
  loc_FEA5BC:   var_B0 = "Category"
  loc_FEA5F7:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FEA600:     Me.MoveFirst
  loc_FEA623:     Set var_88 = Me.Txt
  loc_FEA629:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Category ='")
  loc_FEA631:     0 = var_8C.Text
  loc_FEA64A:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_FEA65F:   End If
  loc_FEA65F: End If
  loc_FEA65F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FB581C
  'Data Table: 470868
  Dim Me As Recordset15
  Dim var_8C As Variant
  loc_FB568E: If (CLng(Shift) = &H1B) Then
  loc_FB5691:   Call Proc_143_38_E87268()
  loc_FB5696:   Exit Sub
  loc_FB5697: End If
  loc_FB56A5: If (KeyCode = CInt(0)) Then
  loc_FB56C5:   Set var_9C = Me.FGPoint
  loc_FB56D0:   Set var_98 = Nothing
  loc_FB56FE:   Proc_6_69_134A198(Me.DGCategory, Me.Txt, KeyCode, global_52, Shift, 0)
  loc_FB576D:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FB5793:     Proc_6_138_106D6F8(Me.DGCategory, global_52, KeyCode, Me.FGPoint, 1)
  loc_FB57A1:   End If
  loc_FB57A1: End If
  loc_FB57C6: If ((CBool(Me.DGCategory.Visible) = 0) And (KeyCode = CInt(0))) Then
  loc_FB57E9:   If (((CLng(Shift) = &H26) Or (CLng(Shift) = &H28)) Or (CLng(Shift) = &HD)) Then
  loc_FB57FE:     Me.FGrid1.Col = CVar(CLng(7))
  loc_FB580A:     Set var_8C = Me.FGrid1
  loc_FB581B:   End If
  loc_FB581B: End If
  loc_FB581B: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EC3010
  'Data Table: 470868
  Dim arg_10 As Integer
  loc_EC2F7A: Proc_6_133_E7EF78(var_94)
  loc_EC2F83: arg_10 = CInt(var_94)
  loc_EC2F8C: Proc_6_58_E054C0(arg_10, arg_10)
  loc_EC2F9F: If (KeyAscii = CInt(0)) Then
  loc_EC2FB1:   var_A0 = "Category"
  loc_EC2FCC:   Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_52, arg_10)
  loc_EC2FFE:   Proc_6_138_106D6F8(Me.DGCategory, global_52, KeyAscii, Me.FGPoint)
  loc_EC300C: End If
  loc_EC300C: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'FCC1E8
  'Data Table: 470868
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim Me As Recordset15
  Dim var_A0 As Variant
  Dim var_A8 As String
  Dim var_B0 As TextBox
  loc_FCC033: var_86 = KeyCode
  loc_FCC03E: If (var_86 = CInt(0)) Then
  loc_FCC05D:   If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_FCC06B:     Set var_B0 = Me.Txt
  loc_FCC071:     var_A8 = "Category"
  loc_FCC08A:     Set var_A0 = var_B0
  loc_FCC099:     Proc_6_68_129FB34(Me.DGCategory, var_A0, CInt(0), global_52)
  loc_FCC0AC:   End If
  loc_FCC0FA:   Set var_8C = Me.Txt
  loc_FCC100:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_A0, var_A8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_FCC108:   Shift = var_A0.Text
  loc_FCC120:   If (var_A8 Or (var_A8 = vbNullString)) Then
  loc_FCC123:     Exit Sub
  loc_FCC124:   End If
  loc_FCC15F:   Set var_AC = Me.Txt
  loc_FCC165:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_B0)
  loc_FCC16D:   var_B0.Text = CStr(Me.Fields.Item("Category").Value)
  loc_FCC1BE:   Set var_AC = Me.Txt
  loc_FCC1C4:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_B0)
  loc_FCC1CC:   var_B0.Tag = CStr(Me.Fields.Item("SCode").Value)
  loc_FCC1E2:   Call Proc_143_37_1099650(var_86)
  loc_FCC1E7: End If
  loc_FCC1E7: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E5048C
  'Data Table: 470868
  loc_E5046A: Set var_88 = Me.Txt
  loc_E50470: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E5047E: Proc_6_73_E22704(var_8C)
  loc_E5048A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F8367C
  'Data Table: 470868
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_F8352F: var_86 = Cancel
  loc_F8353A: If (var_86 = CInt(0)) Then
  loc_F8358B:   Set var_94 = Me.Txt
  loc_F83591:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_F83599:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_F835B1:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_F835B4:     Exit Sub
  loc_F835B5:   End If
  loc_F835F0:   Set var_B0 = Me.Txt
  loc_F835F6:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_F835FE:   var_B4.Text = CStr(Me.Fields.Item("Category").Value)
  loc_F8364F:   Set var_B0 = Me.Txt
  loc_F83655:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_F8365D:   var_B4.Tag = CStr(Me.Fields.Item("SCode").Value)
  loc_F83673:   Call Proc_143_37_1099650()
  loc_F83678: End If
  loc_F83678: Exit Sub
End Sub

Private Sub CmdRefress_UnknownEvent_9 'DFDBCC
  'Data Table: 470868
  loc_DFDBC4: Call Proc_143_37_1099650()
  loc_DFDBC9: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_9 'F45EE4
  'Data Table: 470868
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F45DDB: Me.DGCategory.Visible = False
  loc_F45DFA: If (Me.RecordCount > 0) Then
  loc_F45E39:   Set var_B4 = Me.Txt
  loc_F45E3F:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0), var_B8)
  loc_F45E47:   var_B8.Tag = CStr(Me.Fields.Item("SCode").Value)
  loc_F45E7A:   var_B0 = Me.Fields.Item("Category")
  loc_F45E99:   Set var_B4 = Me.Txt
  loc_F45E9F:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0), var_B8)
  loc_F45EA7:   var_B8.Text = CStr(var_B0.Value)
  loc_F45EBD: End If
  loc_F45EC8: Set var_A8 = Me.Txt
  loc_F45ECE: Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0))
  loc_F45ED6: var_B0.SetFocus
  loc_F45EE2: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_1F 'EA4F78
  'Data Table: 470868
  Dim var_A8 As Variant
  loc_EA4EF8: Set var_88 = Me.DGCategory
  loc_EA4F22: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA4F2A: Set var_BC = Me.DGCategory
  loc_EA4F66: Proc_6_138_106D6F8(Me.DGCategory, global_52, CInt(0), Me.FGPoint)
  loc_EA4F74: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E63174
  'Data Table: 470868
  loc_E63144: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_E63147:   Call DGCategory_UnknownEvent_9()
  loc_E6314C: End If
  loc_E63168: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_E6316B:   Call DGCategory_UnknownEvent_9()
  loc_E63170: End If
  loc_E63170: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC29E4
  'Data Table: 470868
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC295A: On Error Goto loc_EC299F
  loc_EC2963: Me.MoveFirst
  loc_EC297D: var_8C = "SCode='" & MyValue
  loc_EC298D: Me.Find var_8C & "'", 0, 1
  loc_EC2999: Call Proc_143_37_1099650(var_A0)
  loc_EC299E: Exit Sub
  loc_EC299F: ' Referenced from: EC295A
  loc_EC29A7: Set var_A4 = Err()
  loc_EC29AD: Call 0.Method_arg_2C (var_8C)
  loc_EC29CE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC29E1: Exit Sub
  loc_EC29E2: Exit Sub
End Sub

Public Sub Proc_143_34_EF6AF4(arg_C) 'EF6AF4
  'Data Table: 470868
  Dim var_8C As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_A4 As TextBox
  Dim var_110 As Variant
  loc_EF6A40: If (arg_C = 1) Then
  loc_EF6A66:   If (CLng(Me.FGrid1.Col) = CLng(7)) Then
  loc_EF6A7C:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_EF6AA6:     Set var_8C = Me.TxtGrid
  loc_EF6AAC:     Call 0.Method_Proc_143_34_EF6AF40 (arg_C, var_A4, var_A8, CVar(CLng(Me.FGrid1.Col)))
  loc_EF6AB4:     var_D0 = var_A4.Text
  loc_EF6ABC:     var_110 = CVar(var_A8) 'String
  loc_EF6AC4:     Set var_124 = Me.FGrid1
  loc_EF6ACA:     LateIdCallSt
  loc_EF6AE8:   End If
  loc_EF6AE8: End If
  loc_EF6AED: Proc_143_34_EF6AF4 = &HFF
End Sub

Public Sub Proc_143_35_E79044(arg_C) 'E79044
  'Data Table: 470868
  Dim var_98 As TextBox
  loc_E78FF2: Set var_8C = Me.Txt
  loc_E78FF8: Call 0.Method_Proc_143_35_E79044C (var_8E, var_86)
  loc_E79008: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7901E:   Set var_8C = Me.Txt
  loc_E79024:   Call 0.Method_Proc_143_35_E790440 (CInt(var_86), var_98)
  loc_E7902C:   var_98.Enabled = arg_C
  loc_E7903B: Next var_92 'Byte
  loc_E79041: Exit Sub
End Sub

Public Sub Proc_143_36_EB58FC
  'Data Table: 470868
  Dim var_98 As TextBox
  loc_EB5866: global_68 = vbNullString
  loc_EB5870: global_72 = vbNullString
  loc_EB5882: Set var_8C = Me.Txt
  loc_EB5888: Call 0.Method_Proc_143_36_EB58FCC (var_8E, var_86)
  loc_EB5898: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB58AE:   Set var_8C = Me.Txt
  loc_EB58B4:   Call 0.Method_Proc_143_36_EB58FC0 (CInt(var_86), var_98)
  loc_EB58BC:   var_98.Text = vbNullString
  loc_EB58D8:   Set var_8C = Me.Txt
  loc_EB58DE:   Call 0.Method_Proc_143_36_EB58FC0 (CInt(var_86), var_98)
  loc_EB58E6:   var_98.Tag = vbNullString
  loc_EB58F5: Next var_92 'Byte
  loc_EB58FB: Exit Sub
End Sub

Public Sub Proc_143_37_1099650
  'Data Table: 470868
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_8C As Variant
  Dim var_B4 As String
  Dim var_BC As TextBox
  Dim var_CC As String
  Dim var_EC As String
  Dim var_FC As Variant
  Dim unk_47087C As Connection15
  Dim var_B0 As Variant
  loc_10993AC: On Error Goto loc_109960B
  loc_10993B5: Proc_183_45_E5C118(global_52)
  loc_10993D1: If (Me.RecordCount <= 0) Then
  loc_10993D4:   Call Proc_143_36_EB58FC()
  loc_10993DC: Else
  loc_1099410:   global_64 = CStr(Me.Fields.Item("SCode").Value)
  loc_109945D:   Set var_B8 = Me.Txt
  loc_1099463:   Call 0.Method_Proc_143_37_10996500 (CInt(0), var_BC)
  loc_109946B:   var_BC.Tag = CStr(Me.Fields.Item("SCode").Value)
  loc_10994A6:   var_B0 = Me.Fields.Item("Category").Value
  loc_10994BD:   Set var_B8 = Me.Txt
  loc_10994C3:   Call 0.Method_Proc_143_37_10996500 (CInt(0), var_BC)
  loc_10994CB:   var_BC.Text = CStr(var_B0)
  loc_10994EE:   var_CC = "SELECT CD.Code AS Scode,CD.Category,CD.CDate AS CDate,CD.CTime AS CTime,CD.Description AS Description,Depart.Name AS Depart,IsNull(CD.ClearingDate,"
  loc_10994FE:   Proc_6_7_F25D88(var_B0, MemVar_1F920EC, var_CC)
  loc_109950A:   var_EC = ") AS CLDate,CD.ClearingPerson AS CPerson,Status = CASE WHEN CD.Status='UnSolved' THEN ' ' ELSE 'ü' END FROM ComplaintDetail CD INNER JOIN Depart ON CD.Depart=Depart.Code WHERE CD.Category='"
  loc_109950F:   var_FC = var_16C & var_B0 & var_EC 
  loc_1099538:   var_11C = Me.Fields.Item("SCode").Value
  loc_109954D:   var_B4 = CStr(var_FC & var_11C & "' AND CD.Status='UnSolved' ORDER BY CD.Code")
  loc_1099557:   unk_47087C.Execute var_B4, -1, var_B8
  loc_1099568:   Set global_56 = var_B8
  loc_109958B: End If
  loc_10995A2: If (Me.RecordCount > 0) Then
  loc_10995AE:   Call Proc_143_40_119CCD0(global_56)
  loc_10995B9: Else
  loc_10995CC:   Me.FGrid1.Rows = 1
  loc_10995D4:   var_9C = vbNullString
  loc_10995DE:   Set var_8C = Me.FGrid1
  loc_1099602:   Me.FGrid1.FixedRows = 1
  loc_109960A: End If
  loc_109960A: Exit Sub
  loc_109960B: ' Referenced from: 10993AC
  loc_1099613: Set var_8C = Err()
  loc_1099619: Call 0.Method_arg_2C (var_B4, FGrid1.DispID_10000)
  loc_109963A: MsgBox(CVar(var_B4), &H40, "Information", var_FC, var_11C)
  loc_109964D: Exit Sub
End Sub

Public Sub Proc_143_38_E87268
  'Data Table: 470868
  loc_E87214: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_E87226:   Me.DGCategory.Visible = False
  loc_E8722E: End If
  loc_E8724A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E8725C:   Me.FGPoint.Visible = False
  loc_E87264: End If
  loc_E87264: Exit Sub
End Sub

Public Sub Proc_143_39_1103A44
  'Data Table: 470868
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_11036F4: Set var_88 = Me.FGrid1
  loc_1103703: var_88.Cols = &HA
  loc_1103714: var_88.Rows = 2
  loc_110371C: var_98 = CVar(CLng(0)) 'Long
  loc_1103721: var_B8 = 0
  loc_110372D: LateIdCallSt
  loc_1103735: var_98 = 0
  loc_1103741: var_B8 = CVar(CLng(1)) 'Long
  loc_1103746: var_D8 = "SNo."
  loc_110374F: LateIdCallSt
  loc_110375A: var_98 = CVar(CLng(1)) 'Long
  loc_1103765: var_B8 = CVar(CInt(7)) 'Integer
  loc_110376C: LateIdCallSt
  loc_1103777: var_98 = CVar(CLng(1)) 'Long
  loc_110377C: var_B8 = &H1F4
  loc_1103788: LateIdCallSt
  loc_1103790: var_98 = 0
  loc_110379C: var_B8 = CVar(CLng(2)) 'Long
  loc_11037A1: var_D8 = "Date"
  loc_11037AA: LateIdCallSt
  loc_11037B5: var_98 = CVar(CLng(2)) 'Long
  loc_11037C0: var_B8 = CVar(CInt(1)) 'Integer
  loc_11037C7: LateIdCallSt
  loc_11037D2: var_98 = CVar(CLng(2)) 'Long
  loc_11037D7: var_B8 = &H4B0
  loc_11037E3: LateIdCallSt
  loc_11037EB: var_98 = 0
  loc_11037F7: var_B8 = CVar(CLng(3)) 'Long
  loc_11037FC: var_D8 = "Time"
  loc_1103805: LateIdCallSt
  loc_1103810: var_98 = CVar(CLng(3)) 'Long
  loc_110381B: var_B8 = CVar(CInt(1)) 'Integer
  loc_1103822: LateIdCallSt
  loc_110382D: var_98 = CVar(CLng(3)) 'Long
  loc_1103832: var_B8 = &H2BC
  loc_110383E: LateIdCallSt
  loc_1103846: var_98 = 0
  loc_1103852: var_B8 = CVar(CLng(4)) 'Long
  loc_1103857: var_D8 = "Complaint Description"
  loc_1103860: LateIdCallSt
  loc_110386B: var_98 = CVar(CLng(4)) 'Long
  loc_1103876: var_B8 = CVar(CInt(1)) 'Integer
  loc_110387D: LateIdCallSt
  loc_1103888: var_98 = CVar(CLng(4)) 'Long
  loc_110388D: var_B8 = &HFA0
  loc_1103899: LateIdCallSt
  loc_11038A1: var_98 = 0
  loc_11038AD: var_B8 = CVar(CLng(5)) 'Long
  loc_11038B2: var_D8 = "Department"
  loc_11038BB: LateIdCallSt
  loc_11038C6: var_98 = CVar(CLng(5)) 'Long
  loc_11038D1: var_B8 = CVar(CInt(1)) 'Integer
  loc_11038D8: LateIdCallSt
  loc_11038E3: var_98 = CVar(CLng(5)) 'Long
  loc_11038E8: var_B8 = &H708
  loc_11038F4: LateIdCallSt
  loc_11038FC: var_98 = 0
  loc_1103908: var_B8 = CVar(CLng(6)) 'Long
  loc_110390D: var_D8 = "Solved Date"
  loc_1103916: LateIdCallSt
  loc_1103921: var_98 = CVar(CLng(6)) 'Long
  loc_110392C: var_B8 = CVar(CInt(1)) 'Integer
  loc_1103933: LateIdCallSt
  loc_110393E: var_98 = CVar(CLng(6)) 'Long
  loc_1103943: var_B8 = &H4B0
  loc_110394F: LateIdCallSt
  loc_1103957: var_98 = 0
  loc_1103963: var_B8 = CVar(CLng(7)) 'Long
  loc_1103968: var_D8 = "Resolved By"
  loc_1103971: LateIdCallSt
  loc_110397C: var_98 = CVar(CLng(7)) 'Long
  loc_1103987: var_B8 = CVar(CInt(1)) 'Integer
  loc_110398E: LateIdCallSt
  loc_1103999: var_98 = CVar(CLng(7)) 'Long
  loc_110399E: var_B8 = &H640
  loc_11039AA: LateIdCallSt
  loc_11039B2: var_98 = 0
  loc_11039BE: var_B8 = CVar(CLng(8)) 'Long
  loc_11039C3: var_D8 = "Mark"
  loc_11039CC: LateIdCallSt
  loc_11039D7: var_98 = CVar(CLng(8)) 'Long
  loc_11039E2: var_B8 = CVar(CInt(4)) 'Integer
  loc_11039E9: LateIdCallSt
  loc_11039F4: var_98 = CVar(CLng(8)) 'Long
  loc_11039F9: var_B8 = &H320
  loc_1103A05: LateIdCallSt
  loc_1103A10: var_98 = CVar(CLng(9)) 'Long
  loc_1103A15: var_B8 = 0
  loc_1103A21: LateIdCallSt
  loc_1103A35: var_88.FixedRows = 1
  loc_1103A3C: Set var_88 = Nothing 
  loc_1103A40: Exit Sub
End Sub

Public Sub Proc_143_40_119CCD0
  'Data Table: 470868
  Dim var_A4 As Variant
  Dim var_BC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_B4 As Variant
  Dim var_100 As Variant
  loc_119C8D5: Me.FGrid1.Rows = 2
  loc_119C8E1: Set var_BC = Me.FGrid1
  loc_119C8E4: ' Referenced from: 119CCAF
  loc_119C8F3: If Not(Me.FGrid1.EOF) Then
  loc_119C908:   var_A4 = CVar((CLng(var_BC.Rows) - 1)) 'Long
  loc_119C910:   var_BC.Row = 2
  loc_119C924:   var_A4 = CVar(CLng(var_BC.Row)) 'Long
  loc_119C92C:   var_F0 = CVar(CLng(1)) 'Long
  loc_119C93F:   var_110 = CVar(CStr(CLng(var_BC.Row))) 'String
  loc_119C946:   LateIdCallSt
  loc_119C95A:   var_D0 = var_BC.Row
  loc_119C963:   var_B4 = CVar(CLng(var_D0)) 'Long
  loc_119C96B:   var_100 = CVar(CLng(0)) 'Long
  loc_119C99B:   var_110 = CVar(CStr(Me.var_D0.Fields.Item("SCode").Value)) 'String
  loc_119C9A2:   LateIdCallSt
  loc_119C9BD:   var_D0 = var_BC.Row
  loc_119C9C6:   var_B4 = CVar(CLng(var_D0)) 'Long
  loc_119C9CE:   var_100 = CVar(CLng(2)) 'Long
  loc_119C9FE:   var_110 = CVar(CStr(Me.var_D0.Fields.Item("CDate").Value)) 'String
  loc_119CA05:   LateIdCallSt
  loc_119CA20:   var_D0 = var_BC.Row
  loc_119CA29:   var_B4 = CVar(CLng(var_D0)) 'Long
  loc_119CA31:   var_100 = CVar(CLng(3)) 'Long
  loc_119CA61:   var_110 = CVar(CStr(Me.var_D0.Fields.Item("CTime").Value)) 'String
  loc_119CA68:   LateIdCallSt
  loc_119CA83:   var_D0 = var_BC.Row
  loc_119CA8C:   var_B4 = CVar(CLng(var_D0)) 'Long
  loc_119CA94:   var_100 = CVar(CLng(4)) 'Long
  loc_119CAC4:   var_110 = CVar(CStr(Me.var_D0.Fields.Item("Description").Value)) 'String
  loc_119CACB:   LateIdCallSt
  loc_119CAE6:   var_D0 = var_BC.Row
  loc_119CAEF:   var_B4 = CVar(CLng(var_D0)) 'Long
  loc_119CAF7:   var_100 = CVar(CLng(5)) 'Long
  loc_119CB27:   var_110 = CVar(CStr(Me.var_D0.Fields.Item("Depart").Value)) 'String
  loc_119CB2E:   LateIdCallSt
  loc_119CB49:   var_D0 = var_BC.Row
  loc_119CB52:   var_B4 = CVar(CLng(var_D0)) 'Long
  loc_119CB5A:   var_100 = CVar(CLng(6)) 'Long
  loc_119CB8A:   var_110 = CVar(CStr(Me.var_D0.Fields.Item("CLDate").Value)) 'String
  loc_119CB91:   LateIdCallSt
  loc_119CBAC:   var_E0 = var_BC.Row
  loc_119CBEA:   var_110 = CVar(Proc_6_38_E68A98(CVar(Me.var_E0.Fields.Item("CPerson")), CVar(CLng(7)), CVar(CLng(var_E0)), var_BC, var_110, CVar(CLng(7)), CVar(CLng(var_E0)))) 'String
  loc_119CBF1:   LateIdCallSt
  loc_119CC10:   var_BC.Col = CVar(CLng(8))
  loc_119CC1E:   var_BC.CellFontName = "WINGDINGS"
  loc_119CC2E:   var_BC.CellFontSize = CVar(CDbl(&HE))
  loc_119CC36:   var_D0 = var_BC.Row
  loc_119CC3F:   var_B4 = CVar(CLng(var_D0)) 'Long
  loc_119CC47:   var_100 = CVar(CLng(8)) 'Long
  loc_119CC77:   var_110 = CVar(CStr(Me.var_D0.Fields.Item("Status").Value)) 'String
  loc_119CC7E:   LateIdCallSt
  loc_119CC96:   var_A4 = vbNullString
  loc_119CCAA:   Me.Recordset15.MoveNext
  loc_119CCAF:   GoTo loc_119C8E4
  loc_119CCB2: End If
  loc_119CCBD: var_BC.Col = CVar(CLng(7))
  loc_119CCC4: Set var_BC = Nothing 
  loc_119CCC8: Proc_143_40_119CCD0 = FGrid1.DispID_10000
End Sub
