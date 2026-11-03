VERSION 5.00
Begin VB.Form FrmLocationMast
  Caption = "Location Master"
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
  ClientWidth = 9360
  ClientHeight = 8130
  Begin DataGrid DGHelp
    Left = 4425
    Top = 6000
    Width = 4410
    Height = 3150
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9360
    Height = 420
    TabIndex = 18
  End
  Begin Frame FrTerm
    Caption = "Terms && Conditions"
    ForeColor = &HC0&
    Left = 1800
    Top = 2280
    Width = 9285
    Height = 3495
    Visible = 0   'False
    TabIndex = 4
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox TxtTerm
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 375
      Top = 780
      Width = 8565
      Height = 2400
      TabIndex = 7
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 750
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
    Begin TextBox Txt
      Index = 5
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 5985
      Top = 420
      Width = 1380
      Height = 255
      TabIndex = 6
      BorderStyle = 0 'None
      MaxLength = 11
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
    Begin TextBox Txt
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2940
      Top = 420
      Width = 1380
      Height = 255
      TabIndex = 5
      BorderStyle = 0 'None
      MaxLength = 11
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
    Begin Label LblName
      Caption = "End Date :"
      Index = 5
      ForeColor = &HFF0000&
      Left = 4980
      Top = 420
      Width = 900
      Height = 240
      TabIndex = 17
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
      Caption = "Start Date :"
      Index = 4
      ForeColor = &HFF0000&
      Left = 1875
      Top = 420
      Width = 1005
      Height = 240
      TabIndex = 16
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
  End
  Begin CommandButton CmdTerm
    Caption = "Terms && Conditions"
    Left = 4410
    Top = 1770
    Width = 1845
    Height = 345
    TabIndex = 3
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7035
    Top = 825
    Width = 1290
    Height = 255
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
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
  Begin Frame FrmList
    Left = 330
    Top = 6120
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 9
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1890
    Top = 1395
    Width = 1290
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1890
    Top = 1125
    Width = 1290
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 6
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1890
    Top = 855
    Width = 4170
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 360
    Top = 8055
    Width = 3375
    Height = 285
    TabIndex = 20
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
    Left = 360
    Top = 8340
    Width = 3330
    Height = 255
    TabIndex = 19
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
  Begin Label LblName
    Caption = "Area"
    Index = 3
    ForeColor = &HFF0000&
    Left = 705
    Top = 1395
    Width = 375
    Height = 210
    TabIndex = 14
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Short Name"
    Index = 2
    ForeColor = &HFF0000&
    Left = 705
    Top = 1125
    Width = 975
    Height = 210
    TabIndex = 13
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 705
    Top = 855
    Width = 465
    Height = 210
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "(In Sq Feet)"
    Index = 1
    ForeColor = &HC0&
    Left = 3225
    Top = 1395
    Width = 1155
    Height = 240
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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

Attribute VB_Name = "FrmLocationMast"


Private Sub DGHelp_UnknownEvent_9 'F1234C
  'Data Table: 465BD8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F12268: On Error Goto loc_F12322
  loc_F1227A: Me.DGHelp.Visible = False
  loc_F12299: If (Me.RecordCount > 0) Then
  loc_F122B9:   var_B0 = Me.Fields.Item("Name")
  loc_F122CA:   var_CC = CStr(var_B0.Value)
  loc_F122D8:   Set var_B4 = Me.Txt
  loc_F122DE:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F122E6:   var_B8.Text = var_CC
  loc_F122FC: End If
  loc_F12307: Set var_A8 = Me.Txt
  loc_F1230D: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F12315: var_B0.SetFocus
  loc_F12321: Exit Sub
  loc_F12322: ' Referenced from: F12268
  loc_F12328: Call 0.Method_arg_50 (var_CC)
  loc_F1233D: Proc_183_57_104AA84(var_CC, "DGHelp_Click")
  loc_F12349: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F8201C
  'Data Table: 465BD8
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_C4 As TextBox
  Dim var_A4 As String
  loc_F81EDC: On Error Goto loc_F81FF3
  loc_F81F15: If (Me.ListView.ListItems.Count > 0) Then
  loc_F81F1C:   Set var_A8 = Me.ListView
  loc_F81F66:   Set var_C0 = Me.Txt
  loc_F81F6C:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F81F74:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F81F94: End If
  loc_F81FA0: Me.FrmList.Visible = False
  loc_F81FBA: var_A4 = CStr(Me.ListView.Tag)
  loc_F81FC2: var_CC = Val(var_A4)
  loc_F81FD0: Set var_9C = Me.Txt
  loc_F81FD6: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_CC), var_A8)
  loc_F81FDE: var_A8.SetFocus
  loc_F81FF2: Exit Sub
  loc_F81FF3: ' Referenced from: F81EDC
  loc_F81FF9: Call 0.Method_arg_50 (var_A4, var_CC)
  loc_F8200E: Proc_183_57_104AA84(var_A4, "ListView_Click")
  loc_F8201A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EA94A4
  'Data Table: 465BD8
  Dim var_94 As TextBox
  loc_EA9420: On Error Goto loc_EA947C
  loc_EA9438: var_88 = "ADD"
  loc_EA9446: Call Proc_323_26_E8B83C(Proc_5_1_100CB50(var_88, Me))
  loc_EA9451: Call Proc_323_27_ECF1D8(global_52)
  loc_EA9461: Set var_8C = Me.Txt
  loc_EA9467: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EA946F: var_94.SetFocus
  loc_EA947B: Exit Sub
  loc_EA947C: ' Referenced from: EA9420
  loc_EA9482: Call 0.Method_arg_50 (var_88)
  loc_EA9497: Proc_183_57_104AA84(var_88, "TopCtrl1_eAdd")
  loc_EA94A3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EEC9C0
  'Data Table: 465BD8
  loc_EEC908: On Error Goto loc_EEC998
  loc_EEC942: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EEC951:   Set var_110 = Me
  loc_EEC95A:   var_10C = "INI"
  loc_EEC968:   Call Proc_323_26_E8B83C(Proc_5_1_100CB50(var_10C, var_110))
  loc_EEC973:   Call Proc_323_28_12A2E40(global_52)
  loc_EEC978:   Call Proc_323_31_E81EEC()
  loc_EEC980: Else
  loc_EEC986:   Call 0.Method_arg_1E8 (var_110)
  loc_EEC98E:   Call var_110.SetFocus
  loc_EEC997: End If
  loc_EEC997: Exit Sub
  loc_EEC998: ' Referenced from: EEC908
  loc_EEC99E: Call 0.Method_arg_50 (var_10C)
  loc_EEC9A6: var_11C = "TopCtrl1_eCancel"
  loc_EEC9B3: Proc_183_57_104AA84(var_10C)
  loc_EEC9BF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10B36BC
  'Data Table: 465BD8
  Dim Me As Recordset15
  Dim unk_465BE7 As Connection15
  Dim var_96 As Integer
  Dim var_114 As Variant
  Dim var_B4 As String
  Dim var_C8 As Variant
  loc_10B33F8: On Error Goto loc_10B367E
  loc_10B3409: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_10B340C:   Exit Sub
  loc_10B340D: End If
  loc_10B3432: var_C8 = Me.Fields.Item("Code").Value
  loc_10B343A: var_D4 = "Facility master"
  loc_10B3482: If (Proc_183_53_FE2130(MemVar_1F921DC, "LocationFacility", "LcCode") = 0) Then
  loc_10B3485:   Exit Sub
  loc_10B3486: End If
  loc_10B34B3: var_D4 = "Party Locations"
  loc_10B34FB: If (Proc_183_53_FE2130(MemVar_1F921DC, "PartyLocation", "LcCode", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_10B34FE:   Exit Sub
  loc_10B34FF: End If
  loc_10B3536: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_10B3542:   unk_465BE7.BeginTrans var_D0
  loc_10B3549:   var_96 = &HFF
  loc_10B35B1:   var_B4 = CStr("Delete From LocationMast Where Code='" & Me.Fields.Item("Code").Value & "'")
  loc_10B35BB:   unk_465BE7.Execute var_B4, var_134, -1
  loc_10B35DD:   unk_465BE7.CommitTrans
  loc_10B35E4:   var_96 = 0
  loc_10B35F2:   Me.Requery -1
  loc_10B3602:   Me.Requery -1
  loc_10B361E:   If (Me.RecordCount > 0) Then
  loc_10B3638:     If (Me.AbsolutePosition > 1) Then
  loc_10B3643:       var_C8 = (CVar(Me.AbsolutePosition) - 1)
  loc_10B364F:       Me.AbsolutePosition = CLng(Me.Fields.Item("Code").Value)
  loc_10B3654:     End If
  loc_10B3654:   End If
  loc_10B3654:   Call Proc_323_28_12A2E40(var_96, var_138, var_96, var_D4)
  loc_10B3675:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_10B367D: End If
  loc_10B367D: Exit Sub
  loc_10B367E: ' Referenced from: 10B33F8
  loc_10B3684: If (var_96 = &HFF) Then
  loc_10B368D:   unk_465BE7.RollbackTrans
  loc_10B3692: End If
  loc_10B3698: Call 0.Method_arg_50 (var_B4, CStr(Me.Fields.Item("Code").Value))
  loc_10B36AD: Proc_183_57_104AA84(var_B4, "TopCtrl1_eDel")
  loc_10B36B9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F1BB78
  'Data Table: 465BD8
  Dim var_94 As TextBox
  loc_F1BA7C: On Error Goto loc_F1BB4F
  loc_F1BA8D: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F1BA90:   Exit Sub
  loc_F1BA91: End If
  loc_F1BAB4: Call Proc_323_26_E8B83C(Proc_5_1_100CB50("EDIT", Me))
  loc_F1BACD: Set var_8C = Me.Txt
  loc_F1BAD3: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F1BAE6: global_84 = var_94.Text
  loc_F1BB02: Set var_8C = Me.Txt
  loc_F1BB08: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F1BB10: var_88 = var_94.Text
  loc_F1BB1B: global_88 = var_88
  loc_F1BB34: Set var_8C = Me.Txt
  loc_F1BB3A: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F1BB42: var_94.SetFocus
  loc_F1BB4E: Exit Sub
  loc_F1BB4F: ' Referenced from: F1BA7C
  loc_F1BB55: Call 0.Method_arg_50 (var_88)
  loc_F1BB6A: Proc_183_57_104AA84(var_88, "TopCtrl1_eEdit")
  loc_F1BB76: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15E38
  'Data Table: 465BD8
  loc_E15E2D: Me.Global.Unload Me
  loc_E15E35: Exit Sub
  loc_E15E36: arg_6008 = Mid$(, , )
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EF053C
  'Data Table: 465BD8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EF047C: On Error Goto loc_EF0514
  loc_EF0496: If (Me.RecordCount <= 0) Then
  loc_EF049F:   var_B8 = "Information"
  loc_EF04BA:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_EF04CA:   Exit Sub
  loc_EF04CB: End If
  loc_EF04D9: MemVar_1F920E4 = "Select L.Code As SearchCode,L.Name FROM LocationMast L WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by L.Name"
  loc_EF04E6: MemVar_1F92120 = Me
  loc_EF04ED: var_10C = "4500"
  loc_EF04F3: Proc_183_54_F1DE80(var_10C)
  loc_EF050E: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EF0513: Exit Sub
  loc_EF0514: ' Referenced from: EF047C
  loc_EF051A: Call 0.Method_arg_50 (var_10C)
  loc_EF052F: Proc_183_57_104AA84(var_10C, "TopCtrl1_eFind")
  loc_EF053B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E31038
  'Data Table: 465BD8
  loc_E31028: Proc_5_0_110649C(&HFF, Me)
  loc_E31030: Call Proc_323_28_12A2E40(global_52)
  loc_E31035: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E31758
  'Data Table: 465BD8
  loc_E31748: Proc_5_0_110649C(&HFF, Me)
  loc_E31750: Call Proc_323_28_12A2E40(global_52)
  loc_E31755: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E31638
  'Data Table: 465BD8
  loc_E31628: Proc_5_0_110649C(&HFF, Me)
  loc_E31630: Call Proc_323_28_12A2E40(global_52)
  loc_E31635: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E310F8
  'Data Table: 465BD8
  loc_E310E8: Proc_5_0_110649C(&HFF, Me)
  loc_E310F0: Call Proc_323_28_12A2E40(global_52)
  loc_E310F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '104D2CC
  'Data Table: 465BD8
  Dim var_A0 As String
  Dim unk_465BE7 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  loc_104D080: On Error Goto loc_104D2A4
  loc_104D0A7: unk_465BE7.Execute "select * FROM LocationMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_104D0B2: Set var_88 = var_C8
  loc_104D0C8: var_CC = var_88.RecordCount
  loc_104D0D6: If (var_CC = 0) Then
  loc_104D0F2:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_104D102:   Exit Sub
  loc_104D103: End If
  loc_104D119: Set var_C8 = var_88 
  loc_104D125: var_12E = CreateFieldDefFile(var_C8, MemVar_1F920B4 & "\LocationMast.ttx")
  loc_104D12F: Set var_88 = var_C8
  loc_104D135: var_B4 = CVar(var_12E) 'Integer
  loc_104D138: var_98 = var_B4 'Variant
  loc_104D154: var_A0 = MemVar_1F920B4 & "\LocationMast.RPT"
  loc_104D15D: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_104D168: MemVar_1F921E4 = var_C8
  loc_104D183: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_104D18B: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_104D197: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_104D1B0:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_104D1B8:   Call 0.Method_arg_20 (var_138)
  loc_104D1C0:   Call 0.Method_arg_30 (var_A0)
  loc_104D206:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_104D21C:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_104D224:     Call 0.Method_arg_20 (var_138)
  loc_104D22C:     Call 0.Method_arg_38 ("'Location Master'")
  loc_104D238:   End If
  loc_104D23B: Next var_132 'Integer
  loc_104D259: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_104D261: Call 0.Method_arg_2C (var_DC)
  loc_104D26F: Call 0.Method_arg_150 (var_FC)
  loc_104D27A: Call 0.Method_arg_50 (var_A0)
  loc_104D293: Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_104D2A0: Set var_88 = Nothing
  loc_104D2A3: Exit Sub
  loc_104D2A4: ' Referenced from: 104D080
  loc_104D2AA: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_104D2BF: Proc_183_57_104AA84(var_A0, "TopCtrl1_ePrn")
  loc_104D2CB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E09CCC
  'Data Table: 465BD8
  Dim Me As Recordset15
  loc_E09CC3: Me.Requery -1
  loc_E09CC8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '140B9A8
  'Data Table: 465BD8
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_90 As Variant
  Dim var_9C As String
  Dim var_138 As String
  Dim unk_465BE7 As Connection15
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_13C As String
  Dim var_E0 As Variant
  Dim Me As Recordset15
  Dim var_E4 As TextBox
  Dim var_158 As TextBox
  Dim var_328 As Double
  Dim var_1C8 As Variant
  Dim var_248 As Variant
  Dim var_2F8 As Variant
  Dim var_31C As Variant
  loc_140AFE4: On Error Goto loc_140B966
  loc_140AFEB: var_86 = CByte(0) 'Byte
  loc_140AFFA: Set var_90 = Me.Txt
  loc_140B000: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_140B029: If (Proc_183_19_E8DAFC(var_94, "Name") = 0) Then
  loc_140B033:   Call Txt_GotFocus()
  loc_140B038:   Exit Sub
  loc_140B039: End If
  loc_140B044: Set var_90 = Me.Txt
  loc_140B04A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_140B073: If (Proc_183_19_E8DAFC(var_94, "Short Name") = 0) Then
  loc_140B07D:   Call Txt_GotFocus()
  loc_140B082:   Exit Sub
  loc_140B083: End If
  loc_140B086: Call Proc_323_29_1090688(var_9E, CInt(1))
  loc_140B091: If (var_9E = &HFF) Then
  loc_140B094:   Exit Sub
  loc_140B095: End If
  loc_140B0A0: Set var_90 = Me.Txt
  loc_140B0A6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94)
  loc_140B0CF: If CBool(Trim(CVar(var_94)) <> vbNullString) Then
  loc_140B0DD:   Set var_90 = Me.Txt
  loc_140B0E3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_94)
  loc_140B10C:   If (Proc_183_19_E8DAFC(var_94, "End Date") = 0) Then
  loc_140B116:     Call Txt_GotFocus()
  loc_140B11B:     Exit Sub
  loc_140B11C:   End If
  loc_140B11C: End If
  loc_140B127: Set var_90 = Me.Txt
  loc_140B12D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_94, CInt(5))
  loc_140B156: If CBool(Trim(CVar(var_94)) <> vbNullString) Then
  loc_140B164:   Set var_90 = Me.Txt
  loc_140B16A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94)
  loc_140B193:   If (Proc_183_19_E8DAFC(var_94, "Start Date") = 0) Then
  loc_140B19D:     Call Txt_GotFocus()
  loc_140B1A2:     Exit Sub
  loc_140B1A3:   End If
  loc_140B1A3: End If
  loc_140B1AE: Set var_90 = Me.Txt
  loc_140B1B4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, CInt(4))
  loc_140B1BC: var_B0 = CVar(var_94) 'Address
  loc_140B1C3: var_C0 = Trim(var_B0)
  loc_140B1E0: Set var_98 = Me.Txt
  loc_140B1E6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_E4, (var_C0 <> vbNullString))
  loc_140B207: var_134 = CInt(0) Or (Trim(CVar(var_E4)) <> vbNullString)
  loc_140B21F: If CBool(var_134) Then
  loc_140B226:   Set var_94 = Me.TxtTerm
  loc_140B24D:   If (Proc_183_19_E8DAFC(var_94, "Terms & Conditions") = 0) Then
  loc_140B25A:     Me.TxtTerm.SetFocus
  loc_140B262:     Exit Sub
  loc_140B263:   End If
  loc_140B263: End If
  loc_140B267: Set var_90 = Me.TopCtrl1
  loc_140B26D: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_94)
  loc_140B286: If (CStr() = "Add") Then
  loc_140B291:   If (MemVar_1F923AC = "A") Then
  loc_140B29A:     var_114 = 0
  loc_140B2B7:     var_9C = "Select iif(IsNull(Max(val(MID(Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From LocationMast WHERE SITE_CODE='" & MemVar_1F92070
  loc_140B2C7:     unk_465BE7.Execute CStr() & "'", var_B0, -1
  loc_140B2CF:     var_90 = var_90.Fields
  loc_140B2D7:     var_114 = var_94.Item(var_94)
  loc_140B2DF:     var_98 = var_98.Value
  loc_140B2EE:     global_80 = CStr(var_C0)
  loc_140B30E:   Else
  loc_140B316:     If (MemVar_1F923AC = "S") Then
  loc_140B31F:       var_114 = 0
  loc_140B33C:       var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From LocationMast WHERE SITE_CODE='" & MemVar_1F92070
  loc_140B343:       var_138 = CStr() & "'"
  loc_140B34C:       unk_465BE7.Execute var_138, var_B0, -1
  loc_140B354:       var_90 = var_90.Fields
  loc_140B35C:       var_114 = var_94.Item(var_94)
  loc_140B364:       var_98 = var_98.Value
  loc_140B373:       global_80 = CStr(var_C0)
  loc_140B390:     End If
  loc_140B390:   End If
  loc_140B39D:   var_E0 = CVar(Proc_183_15_EAC900(MemVar_1F92070, 2)) 'String
  loc_140B3CB:   var_F4 = (1 + Format(global_80, "0000"))
  loc_140B3D6:   global_80 = CStr(CVar(var_E4))
  loc_140B3EB: Else
  loc_140B408:   var_94 = Me.Fields.Item("Code")
  loc_140B41F:   global_80 = CStr(var_94.Value)
  loc_140B430: End If
  loc_140B439: unk_465BE7.BeginTrans var_140
  loc_140B442: var_86 = CByte(1) 'Byte
  loc_140B44A: Set var_90 = Me.TopCtrl1
  loc_140B450: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(1)
  loc_140B469: If (CStr(var_E0) = "Add") Then
  loc_140B47A:   Set var_90 = Me.Txt
  loc_140B480:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_138)
  loc_140B488:   var_C0 = var_94.Text
  loc_140B49B:   Set var_98 = Me.Txt
  loc_140B4A1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E4)
  loc_140B4BC:   Set var_154 = Me.Txt
  loc_140B4C2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_158)
  loc_140B4D7:   var_328 = Val(var_158.Text)
  loc_140B4E5:   Set var_16C = Me.Txt
  loc_140B4EB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_170)
  loc_140B4FA:   Proc_183_7_EB0C44(var_C0, CVar(var_170))
  loc_140B50A:   Set var_174 = Me.Txt
  loc_140B510:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_178)
  loc_140B51F:   Proc_183_7_EB0C44(var_134, CVar(var_178))
  loc_140B52F:   Proc_6_17_EAA2B0(var_1B8, CVar(Me.TxtTerm))
  loc_140B53F:   Proc_6_8_EB0DE4(var_288, CVar(Proc_6_14_EF349C(var_328)))
  loc_140B55B:   var_9C = "Insert Into LocationMast(Code,Name,ShortName,Area,TStartDate,TEndDate,TTerm,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_80
  loc_140B5B7:   var_1C8 = CVar(var_9C & "','" & var_138 & "','" & var_E4.Text & "'," & CStr(var_328) & ",") & var_C0 & "," & var_134 & "," & var_1B8 
  loc_140B609:   var_2F8 = var_1C8 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_288 & ",'A','" & CVar(MemVar_1F92078) & "')" 
  loc_140B617:   unk_465BE7.Execute CStr(var_2F8), var_31C, -1
  loc_140B682: Else
  loc_140B690:   Set var_90 = Me.Txt
  loc_140B696:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C)
  loc_140B69E:   var_320 = var_94.Text
  loc_140B6B1:   Set var_98 = Me.Txt
  loc_140B6B7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E4)
  loc_140B6D2:   Set var_154 = Me.Txt
  loc_140B6D8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_158)
  loc_140B6ED:   var_328 = Val(var_158.Text)
  loc_140B6FB:   Set var_16C = Me.Txt
  loc_140B701:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_170)
  loc_140B710:   Proc_183_7_EB0C44(var_C0, CVar(var_170))
  loc_140B720:   Set var_174 = Me.Txt
  loc_140B726:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_178)
  loc_140B735:   Proc_183_7_EB0C44(var_134, CVar(var_178))
  loc_140B745:   Proc_6_17_EAA2B0(var_1B8, CVar(Me.TxtTerm))
  loc_140B755:   Proc_6_8_EB0DE4(var_288, CVar(Proc_6_14_EF349C(var_328)))
  loc_140B796:   var_E0 = CVar("UPDATE LocationMast SET Name='" & var_9C & "',ShortName = '" & var_E4.Text & "',Area=" & CStr(var_328) & ",TStartDate=") 'String
  loc_140B7A0:   var_D0 = ",TEndDate="
  loc_140B7E2:   var_248 = var_E0 & var_C0 & var_D0 & var_134 & ",TTerm=" & var_1B8 & ",SITE_CODE='" & CVar(MemVar_1F92070) & "',U_name='" & CVar(MemVar_1F920C8) 
  loc_140B81B:   var_31C = var_248 & "',U_EntDt=" & var_288 & ",U_AE='E',LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' WHERE Code='" & CVar(global_80) 
  loc_140B832:   unk_465BE7.Execute CStr(var_31C & "'"), var_368, -1
  loc_140B89A: End If
  loc_140B8A0: unk_465BE7.CommitTrans
  loc_140B8A9: var_86 = CByte(0) 'Byte
  loc_140B8B8: Me.Requery -1
  loc_140B8C8: Me.Requery -1
  loc_140B8F5: Me.Find "Code='" & global_80 & "'", 0, 1
  loc_140B905: Set var_90 = Me.TopCtrl1
  loc_140B90B: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_D0)
  loc_140B924: If (CStr(var_320) = "Add") Then
  loc_140B927:   Call TopCtrl1_UnknownEvent_A()
  loc_140B92C:   Exit Sub
  loc_140B92D: End If
  loc_140B942: var_9C = "INI"
  loc_140B950: Call Proc_323_26_E8B83C(Proc_5_1_100CB50(var_9C, Me), global_52)
  loc_140B95B: Call Proc_323_31_E81EEC(var_C0)
  loc_140B960: Call Proc_323_28_12A2E40()
  loc_140B965: Exit Sub
  loc_140B966: ' Referenced from: 140AFE4
  loc_140B96F: If (CInt(var_86) = 1) Then
  loc_140B978:   unk_465BE7.RollbackTrans
  loc_140B97D: End If
  loc_140B983: Call 0.Method_arg_50 (var_9C)
  loc_140B98B: var_13C = "TopCtrl1_eSave"
  loc_140B998: Proc_183_57_104AA84(var_9C)
  loc_140B9A4: Exit Sub
End Sub

Private Sub Form_Load() '1089EF8
  'Data Table: 465BD8
  Dim var_8C As Variant
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_D8 As Variant
  Dim var_C8 As String
  Dim unk_465BE7 As Connection15
  loc_1089C58: On Error Goto loc_1089ECF
  loc_1089C62: Call 0.Method_arg_74 (CDbl(0))
  loc_1089C6E: Call 0.Method_arg_7C (CDbl(0))
  loc_1089C7A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1089C8E: Me.LblUser.Left = CDbl(13500)
  loc_1089CA5: Me.LblUser.Top = CDbl(7800)
  loc_1089CBC: Me.LblLDt.Top = CDbl(8160)
  loc_1089CD3: Me.LblLDt.Left = CDbl(13500)
  loc_1089CE9: Me.FrTerm.BackColor = CLng(MemVar_1F921B0)
  loc_1089CFF: Set var_8C = Me.Txt
  loc_1089D05: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_1089D24: Me.DGHelp.Left = CVar(var_90.Left)
  loc_1089D40: Set var_B8 = Me.Txt
  loc_1089D46: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_1089D61: Set var_8C = Me.Txt
  loc_1089D67: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_1089D7F: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_1089D8E: Me.DGHelp.Top = CVar(var_90.Left)
  loc_1089DAA: Set var_8C = Me.TopCtrl1
  loc_1089DB0: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000B("AEDP")
  loc_1089DBE: Call 0.Method_arg_50 (var_C8)
  loc_1089DC6: var_D8 = CVar(var_C8) 'String
  loc_1089DD4: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030007(var_D8)
  loc_1089E03: unk_465BE7.Execute "SELECT Code,Name FROM LocationMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_1089E32: CVarUnk
  loc_1089E37: VerifyVarObj
  loc_1089E43: LateIdStAd
  loc_1089E75: unk_465BE7.Execute "SELECT * FROM LocationMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') ORDER BY Name", var_D8, -1
  loc_1089EB0: var_C8 = "INI"
  loc_1089EBE: Call Proc_323_26_E8B83C(Proc_5_1_100CB50(var_C8, Me, Me.DGHelp, Me), Me)
  loc_1089EC9: Call Proc_323_28_12A2E40(Me.TopCtrl1)
  loc_1089ECE: Exit Sub
  loc_1089ECF: ' Referenced from: 1089C58
  loc_1089ED5: Call 0.Method_arg_50 (var_C8)
  loc_1089EEA: Proc_183_57_104AA84(var_C8, "Form_Load")
  loc_1089EF6: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2904C
  'Data Table: 465BD8
  loc_E2902F: Set global_52 = Nothing
  loc_E29041: Set global_56 = Nothing
  loc_E29048: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E696D0
  'Data Table: 465BD8
  loc_E69688: On Error Goto loc_E696A6
  loc_E6969D: Proc_183_40_F30B0C(Me, KeyCode)
  loc_E696A5: Exit Sub
  loc_E696A6: ' Referenced from: E69688
  loc_E696AC: Call 0.Method_arg_50 (var_8C)
  loc_E696C1: Proc_183_57_104AA84(var_8C, "Form_KeyDown")
  loc_E696CD: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E8C0E8
  'Data Table: 465BD8
  Dim var_92 As Integer
  loc_E8C084: On Error Goto loc_E8C0BD
  loc_E8C091: Set var_88 = Me.Txt
  loc_E8C097: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E8C0A5: Proc_183_28_E20B20(var_8C)
  loc_E8C0B1: Call Proc_323_31_E81EEC(var_8C)
  loc_E8C0B9: var_92 = Index
  loc_E8C0BC: Exit Sub
  loc_E8C0BD: ' Referenced from: E8C084
  loc_E8C0C3: Call 0.Method_arg_50 (var_98)
  loc_E8C0D8: Proc_183_57_104AA84(var_98, "Txt_GotFocus")
  loc_E8C0E4: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FB8FDC
  'Data Table: 465BD8
  loc_FB8E48: On Error Goto loc_FB8FB4
  loc_FB8E55: If (CLng(Shift) = &H1B) Then
  loc_FB8E58:   Call Proc_323_31_E81EEC()
  loc_FB8E5D:   Exit Sub
  loc_FB8E5E: End If
  loc_FB8E6C: If (KeyCode = CInt(0)) Then
  loc_FB8EA9:   Proc_183_31_100809C(Me.DGHelp, Me.Txt, CInt(0), global_56)
  loc_FB8EB9: End If
  loc_FB8EF4: If ((CBool(Me.ListView.Visible) = 0) And (CBool(Me.DGHelp.Visible) = 0)) Then
  loc_FB8F0A:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FB8F13:     Proc_183_30_E53180(Shift, arg_14, Shift)
  loc_FB8F18:   End If
  loc_FB8F36:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(2))) Then
  loc_FB8F3F:     Call Txt_Validate(KeyCode)
  loc_FB8F4A:     If (var_86 = 0) Then
  loc_FB8F84:       If (MsgBox("Save Record ?", 4, "Save Data", var_100, var_120) = 6) Then
  loc_FB8F87:         Call TopCtrl1_UnknownEvent_16()
  loc_FB8F8C:       End If
  loc_FB8F8C:       Exit Sub
  loc_FB8F8D:     End If
  loc_FB8F90:   Else
  loc_FB8FA5:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FB8FAE:       Proc_183_29_E52C04(Shift, arg_14, var_86)
  loc_FB8FB3:     End If
  loc_FB8FB3:   End If
  loc_FB8FB3: End If
  loc_FB8FB3: Exit Sub
  loc_FB8FB4: ' Referenced from: FB8E48
  loc_FB8FBA: Call 0.Method_arg_50 (var_124, 0)
  loc_FB8FCF: Proc_183_57_104AA84(var_124, "Txt_KeyDown")
  loc_FB8FDB: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E7F978
  'Data Table: 465BD8
  Dim var_96 As Integer
  loc_E7F91E: Proc_183_52_E7F478(var_94)
  loc_E7F930: var_96 = KeyAscii
  loc_E7F93B: If (var_96 = CInt(2)) Then
  loc_E7F948:   Set var_9C = Me.Txt
  loc_E7F94E:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_E7F969:   Proc_6_42_129A86C(var_A0, CInt(var_94), 6)
  loc_E7F975: End If
  loc_E7F975: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EBC5D8
  'Data Table: 465BD8
  loc_EBC544: On Error Goto loc_EBC5B0
  loc_EBC555: If (KeyCode = CInt(0)) Then
  loc_EBC574:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBC581:     var_A4 = "Name"
  loc_EBC5A0:     Proc_183_32_FE7F70(Me.Txt, CInt(0), global_56)
  loc_EBC5AF:   End If
  loc_EBC5AF: End If
  loc_EBC5AF: Exit Sub
  loc_EBC5B0: ' Referenced from: EBC544
  loc_EBC5B6: Call 0.Method_arg_50 (var_A4, Shift)
  loc_EBC5CB: Proc_183_57_104AA84(var_A4, "Txt_KeyUp")
  loc_EBC5D7: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D024
  'Data Table: 465BD8
  loc_E4D002: Set var_88 = Me.Txt
  loc_E4D008: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D016: Proc_183_27_E22608(var_8C)
  loc_E4D022: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FA09EC
  'Data Table: 465BD8
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_DC As String
  Dim var_D8 As TextBox
  Dim var_E0 As TextBox
  loc_FA0884: On Error Goto loc_FA09C1
  loc_FA088A: var_86 = Cancel
  loc_FA0895: If (var_86 = CInt(0)) Then
  loc_FA089B:   Call Proc_323_29_1090688(var_88)
  loc_FA08A6:   If (var_88 = &HFF) Then
  loc_FA08AB:     arg_10 = &HFF
  loc_FA08AE:     Exit Sub
  loc_FA08AF:   End If
  loc_FA08B2: Else
  loc_FA08BA:   If (var_86 = CInt(1)) Then
  loc_FA08C0:     Call Proc_323_30_106ED9C(var_88, arg_10)
  loc_FA08CB:     If (var_88 = &HFF) Then
  loc_FA08D0:       arg_10 = &HFF
  loc_FA08D3:       Exit Sub
  loc_FA08D4:     End If
  loc_FA08D7:   Else
  loc_FA08DF:     If (var_86 = CInt(2)) Then
  loc_FA08ED:       Set var_8C = Me.Txt
  loc_FA08F3:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_FA092E:       Set var_D4 = Me.Txt
  loc_FA0934:       Call 0.Method_Txt_Validate0 (CInt(2), var_D8, CStr(Format(CVar(var_90), "0.000")), 1)
  loc_FA093C:       var_D8.Text = 1
  loc_FA0959:     Else
  loc_FA0961:       If Not (var_86 = CInt(4)) Then
  loc_FA096C:         If (var_86 = CInt(5)) Then
  loc_FA096F:         End If
  loc_FA0979:         Set var_8C = Me.Txt
  loc_FA097F:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FA0992:         var_DC = Proc_6_33_1512840(var_90, arg_10)
  loc_FA099F:         Set var_D8 = Me.Txt
  loc_FA09A5:         Call 0.Method_Txt_Validate0 (Cancel, var_E0)
  loc_FA09AD:         var_E0.Text = var_DC
  loc_FA09C0:       End If
  loc_FA09C0:     End If
  loc_FA09C0:   End If
  loc_FA09C0: End If
  loc_FA09C0: Exit Sub
  loc_FA09C1: ' Referenced from: FA0884
  loc_FA09C7: Call 0.Method_arg_50 (var_DC)
  loc_FA09DC: Proc_183_57_104AA84(var_DC, "Txt_Validate")
  loc_FA09E8: Exit Sub
  loc_FA09EA: DOC
End Sub

Private Sub CmdTerm_Click() 'EB8C54
  'Data Table: 465BD8
  Dim var_88 As Frame
  Dim var_90 As TextBox
  loc_EB8BCF: If (Me.FrTerm.Visible = &HFF) Then
  loc_EB8BDE:   Me.FrTerm.Visible = False
  loc_EB8BE9: Else
  loc_EB8BF5:   Me.FrTerm.Visible = True
  loc_EB8C0B:   Set var_88 = Me.Txt
  loc_EB8C11:   Call 0.Method_CmdTerm_Click0 (CInt(4), var_90)
  loc_EB8C2B:   If (var_90.Enabled = &HFF) Then
  loc_EB8C39:     Set var_88 = Me.Txt
  loc_EB8C3F:     Call 0.Method_CmdTerm_Click0 (CInt(4))
  loc_EB8C47:     var_90.SetFocus
  loc_EB8C53:   End If
  loc_EB8C53: End If
  loc_EB8C53: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E8EE64
  'Data Table: 465BD8
  Dim Me As Recordset15
  Dim var_8C As String
  loc_E8EDF6: On Error Goto loc_E8EE3B
  loc_E8EDFF: Me.MoveFirst
  loc_E8EE19: var_8C = "code='" & MyValue
  loc_E8EE29: Me.Find var_8C & "'", 0, 1
  loc_E8EE35: Call Proc_323_28_12A2E40(var_A0)
  loc_E8EE3A: Exit Sub
  loc_E8EE3B: ' Referenced from: E8EDF6
  loc_E8EE41: Call 0.Method_arg_50 (var_8C)
  loc_E8EE56: Proc_183_57_104AA84(var_8C)
  loc_E8EE62: Exit Sub
  loc_E8EE63: End Sub
End Sub

Public Sub Proc_323_26_E8B83C(arg_C) 'E8B83C
  'Data Table: 465BD8
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  loc_E8B7D6: Set var_8C = Me.Txt
  loc_E8B7DC: Call 0.Method_Proc_323_26_E8B83CC (var_8E, var_86)
  loc_E8B7EC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E8B802:   Set var_8C = Me.Txt
  loc_E8B808:   Call 0.Method_Proc_323_26_E8B83C0 (CInt(var_86), var_98)
  loc_E8B810:   var_98.Enabled = arg_C
  loc_E8B81F: Next var_92 'Byte
  loc_E8B832: Me.TxtTerm.Enabled = arg_C
  loc_E8B83A: Exit Sub
End Sub

Public Sub Proc_323_27_ECF1D8
  'Data Table: 465BD8
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  loc_ECF12A: global_84 = vbNullString
  loc_ECF134: global_88 = vbNullString
  loc_ECF146: Set var_8C = Me.Txt
  loc_ECF14C: Call 0.Method_Proc_323_27_ECF1D8C (var_8E, var_86)
  loc_ECF15C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_ECF172:   Set var_8C = Me.Txt
  loc_ECF178:   Call 0.Method_Proc_323_27_ECF1D80 (CInt(var_86), var_98)
  loc_ECF180:   var_98.Text = vbNullString
  loc_ECF19C:   Set var_8C = Me.Txt
  loc_ECF1A2:   Call 0.Method_Proc_323_27_ECF1D80 (CInt(var_86), var_98)
  loc_ECF1AA:   var_98.Tag = vbNullString
  loc_ECF1B9: Next var_92 'Byte
  loc_ECF1CC: Me.TxtTerm.Text = vbNullString
  loc_ECF1D4: Exit Sub
End Sub

Public Sub Proc_323_28_12A2E40
  'Data Table: 465BD8
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As Variant
  Dim var_DC As Variant
  Dim var_B4 As String
  Dim var_CC As TextBox
  loc_12A2860: On Error Goto loc_12A2E16
  loc_12A2869: Proc_183_45_E5C118(global_52)
  loc_12A2885: If (Me.RecordCount <= 0) Then
  loc_12A2888:   Call Proc_323_27_ECF1D8()
  loc_12A2890: Else
  loc_12A2939:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_12A2981:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_Name")))))
  loc_12A2A01:   var_CC = Me.Fields.Item("U_AE")
  loc_12A2A09:   var_DC = CVar(var_CC) 'Address
  loc_12A2A62:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(var_DC) = "E"), "Last Update :   ", "entdt :   "))
  loc_12A2AAA:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_EntDt")))))
  loc_12A2B16:   global_80 = CStr(Me.Fields.Item("Name").Value)
  loc_12A2B63:   Set var_B8 = Me.Txt
  loc_12A2B69:   Call 0.Method_Proc_323_28_12A2E400 (CInt(0), var_CC)
  loc_12A2B71:   var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_12A2BC3:   Set var_B8 = Me.Txt
  loc_12A2BC9:   Call 0.Method_Proc_323_28_12A2E400 (CInt(0), var_CC)
  loc_12A2BD1:   var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12A2C23:   Set var_B8 = Me.Txt
  loc_12A2C29:   Call 0.Method_Proc_323_28_12A2E400 (CInt(1), var_CC)
  loc_12A2C31:   var_CC.Text = CStr(Me.Fields.Item("ShortName").Value)
  loc_12A2C69:   var_B0 = CVar(Me.Fields.Item("Area")) 'Address
  loc_12A2C70:   Proc_6_39_E7C810(var_DC)
  loc_12A2CA7:   Set var_B8 = Me.Txt
  loc_12A2CAD:   Call 0.Method_Proc_323_28_12A2E400 (CInt(2), var_CC, CStr(Format(var_DC, "0.000")))
  loc_12A2CB5:   var_CC.Text = 1
  loc_12A2D26:   Set var_B8 = Me.Txt
  loc_12A2D2C:   Call 0.Method_Proc_323_28_12A2E400 (CInt(4), var_CC, CStr(Format(CVar(Me.Fields.Item("TStartDate")), "dd/MMM/yyyy")), 1)
  loc_12A2D34:   var_CC.Text = 1
  loc_12A2DA3:   Set var_B8 = Me.Txt
  loc_12A2DA9:   Call 0.Method_Proc_323_28_12A2E400 (CInt(5), var_CC, CStr(Format(CVar(Me.Fields.Item("TEndDate")), "dd/MMM/yyyy")), 1)
  loc_12A2DB1:   var_CC.Text = 1
  loc_12A2DF6:   var_B4 = Proc_6_38_E68A98(CVar(Me.Fields.Item("TTerm")), 1)
  loc_12A2E03:   Me.TxtTerm.Text = var_B4
  loc_12A2E15: End If
  loc_12A2E15: Exit Sub
  loc_12A2E16: ' Referenced from: 12A2860
  loc_12A2E1C: Call 0.Method_arg_50 (var_B4)
  loc_12A2E31: Proc_183_57_104AA84(var_B4, "MoveRec")
  loc_12A2E3D: Exit Sub
  loc_12A2E3E: Exit Sub
End Sub

Public Sub Proc_323_29_1090688
  'Data Table: 465BD8
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_465BE7 As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_10903F8: On Error Goto loc_1090659
  loc_1090412: If (Me.RecordCount = 0) Then
  loc_1090415:   Proc_323_29_1090688 = 
  loc_109041B: End If
  loc_109041F: Set var_90 = Me.TopCtrl1
  loc_1090425: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_109042D: var_A4 = CStr()
  loc_109043E: If (var_A4 = "Add") Then
  loc_109046E:   Set var_90 = Me.Txt
  loc_1090474:   Call 0.Method_Proc_323_29_10906880 (CInt(0), var_A8, var_A4, "Select Count(*) From LocationMast Where Name='", var_A0, -1)
  loc_1090495:   unk_465BE7.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_10904A5:    = var_C8.Item()
  loc_10904AD:    = var_DC.Value
  loc_10904DA:   If (var_A8.Text.Fields > 0) Then
  loc_10904F8:     var_A0 = "Duplicate Name"
  loc_10904FE:     MsgBox(var_A0, &H40, "Information", var_10C, var_12C)
  loc_1090519:     Set var_90 = Me.Txt
  loc_109051F:     Call 0.Method_Proc_323_29_10906880 (CInt(0))
  loc_1090527:     var_A8.SetFocus
  loc_1090538:     Proc_323_29_1090688 = &HFF
  loc_109053E:   End If
  loc_1090541: Else
  loc_109056E:   Set var_90 = Me.Txt
  loc_1090574:   Call 0.Method_Proc_323_29_10906880 (CInt(0), var_A8, var_A4, "Select Count(*) From LocationMast Where Name='", var_A0, -1)
  loc_10905A6:   unk_465BE7.Execute var_C8 & var_A4 & "' And Name<>'" & global_84 & "'", 0, var_DC
  loc_10905B6:    = var_C8.Item(var_A8)
  loc_10905BE:    = var_DC.Value
  loc_10905EF:   If (var_A8.Text.Fields > 0) Then
  loc_1090613:     MsgBox("Duplicate Name", &H40, "Information", var_10C, var_12C)
  loc_109062E:     Set var_90 = Me.Txt
  loc_1090634:     Call 0.Method_Proc_323_29_10906880 (CInt(0))
  loc_109063C:     var_A8.SetFocus
  loc_109064D:     Proc_323_29_1090688 = &HFF
  loc_1090653:   End If
  loc_1090653: End If
  loc_1090653: Proc_323_29_1090688 = var_A8
  loc_1090659: ' Referenced from: 10903F8
  loc_109065F: Call 0.Method_arg_50 (var_A4)
  loc_1090674: Proc_183_57_104AA84(var_A4)
  loc_1090680: Proc_323_29_1090688 = "ValidateName"
End Sub

Public Sub Proc_323_30_106ED9C
  'Data Table: 465BD8
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_465BE7 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_106EB2C: On Error Goto loc_106ED6D
  loc_106EB33: Set var_8C = Me.TopCtrl1
  loc_106EB39: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_106EB41: var_A0 = CStr()
  loc_106EB52: If (var_A0 = "Add") Then
  loc_106EB82:   Set var_8C = Me.Txt
  loc_106EB88:   Call 0.Method_Proc_323_30_106ED9C0 (CInt(1), var_A4, var_A0, "Select Count(*) From LocationMast Where ShortName='", var_9C, -1)
  loc_106EBA9:   unk_465BE7.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_106EBB9:    = var_C4.Item()
  loc_106EBC1:    = var_D8.Value
  loc_106EBEE:   If (var_A4.Text.Fields > 0) Then
  loc_106EC0C:     var_9C = "Duplicate Short Name"
  loc_106EC12:     MsgBox(var_9C, &H40, "Information", var_108, var_128)
  loc_106EC2D:     Set var_8C = Me.Txt
  loc_106EC33:     Call 0.Method_Proc_323_30_106ED9C0 (CInt(1))
  loc_106EC3B:     var_A4.SetFocus
  loc_106EC4C:     Proc_323_30_106ED9C = &HFF
  loc_106EC52:   End If
  loc_106EC55: Else
  loc_106EC82:   Set var_8C = Me.Txt
  loc_106EC88:   Call 0.Method_Proc_323_30_106ED9C0 (CInt(1), var_A4, var_A0, "Select Count(*) From LocationMast Where ShortName='", var_9C, -1)
  loc_106ECBA:   unk_465BE7.Execute var_C4 & var_A0 & "' And ShortName<>'" & global_88 & "'", 0, var_D8
  loc_106ECCA:    = var_C4.Item(var_A4)
  loc_106ECD2:    = var_D8.Value
  loc_106ED03:   If (var_A4.Text.Fields > 0) Then
  loc_106ED27:     MsgBox("Duplicate Short Name", &H40, "Information", var_108, var_128)
  loc_106ED42:     Set var_8C = Me.Txt
  loc_106ED48:     Call 0.Method_Proc_323_30_106ED9C0 (CInt(1))
  loc_106ED50:     var_A4.SetFocus
  loc_106ED61:     Proc_323_30_106ED9C = &HFF
  loc_106ED67:   End If
  loc_106ED67: End If
  loc_106ED67: Proc_323_30_106ED9C = var_A4
  loc_106ED6D: ' Referenced from: 106EB2C
  loc_106ED73: Call 0.Method_arg_50 (var_A0)
  loc_106ED88: Proc_183_57_104AA84(var_A0)
  loc_106ED94: Proc_323_30_106ED9C = "ValidateSName"
End Sub

Public Sub Proc_323_31_E81EEC
  'Data Table: 465BD8
  loc_E81E9C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E81EAE:   Me.DGHelp.Visible = False
  loc_E81EB6: End If
  loc_E81ED1: If (Me.FrmList.Visible = &HFF) Then
  loc_E81EE0:   Me.FrmList.Visible = False
  loc_E81EE8: End If
  loc_E81EE8: Exit Sub
End Sub
