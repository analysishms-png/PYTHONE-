VERSION 5.00
Begin VB.Form rRepReserv
  Caption = "ReprtForm"
  ForeColor = &HE0E0E0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form3"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 165
  ClientTop = 345
  ClientWidth = 11880
  ClientHeight = 7545
  Begin BtnEnh BTNPRINTzz
    Index = 0
    Left = 8325
    Top = 7590
    Width = 1410
    Height = 600
    Visible = 0   'False
    TabIndex = 17
  End
  Begin MainCtrl TopCtrl1
    Left = 510
    Top = 8790
    Width = 2235
    Height = 225
    Visible = 0   'False
    TabIndex = 16
  End
  Begin CommandButton BTNPRINT
    Caption = "&Dos Print"
    Index = 1
    Left = 4890
    Top = 7920
    Width = 1620
    Height = 375
    Visible = 0   'False
    TabIndex = 15
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Print Report"
    Style = 1
  End
  Begin DataGrid DGForFolio
    Left = 9405
    Top = 3600
    Width = 5325
    Height = 2295
    Visible = 0   'False
    TabIndex = 14
  End
  Begin Frame FrmList
    Left = 8520
    Top = 180
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 90
      Top = 15
      Width = 2325
      Height = 1830
      TabStop = 0   'False
      TabIndex = 13
    End
  End
  Begin PictureBox Pic
    BackColor = &H808080&
    Left = 0
    Top = 7050
    Width = 11880
    Height = 500
    TabIndex = 11
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 2 'Align Bottom
    Begin CommandButton BTNEXIT
      Caption = "E&xit"
      Left = 7200
      Top = 75
      Width = 1620
      Height = 375
      TabIndex = 22
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Exit Form"
      Style = 1
    End
    Begin CommandButton BTNPRINT
      Caption = "Windows &Print"
      Index = 0
      Left = 5565
      Top = 75
      Width = 1620
      Height = 375
      TabIndex = 21
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Print Report"
      Style = 1
    End
    Begin Label LblTitle
      Caption = "."
      BackColor = &H0&
      ForeColor = &HFFFFFF&
      Left = 7320
      Top = 60
      Width = 4470
      Height = 495
      TabIndex = 20
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 15.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = 375
    Top = 30
    Width = 690
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtSearch
    BackColor = &HFFFFFF&
    ForeColor = &H0&
    Left = -135
    Top = 1470
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin CheckBox Check1
    Caption = "All"
    Index = 4
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 5040
    Top = 3900
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CheckBox Check1
    Caption = "All"
    Index = 3
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 225
    Top = 3885
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 5
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CheckBox Check1
    Caption = "All"
    Index = 2
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 5010
    Top = 1830
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 3
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CheckBox Check1
    Caption = "All"
    Index = 1
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 240
    Top = 1860
    Width = 915
    Height = 195
    Visible = 0   'False
    TabIndex = 1
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid GridSel
    Index = 1
    Left = 180
    Top = 1785
    Width = 4695
    Height = 1650
    Visible = 0   'False
    TabIndex = 2
  End
  Begin MSHFlexGrid GridSel
    Index = 2
    Left = 4950
    Top = 1785
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 4
  End
  Begin MSHFlexGrid GridSel
    Index = 4
    Left = 4995
    Top = 3825
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 8
  End
  Begin MSHFlexGrid GridSel
    Index = 3
    Left = 165
    Top = 3825
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 6
  End
  Begin MSHFlexGrid FGrid
    Left = 1590
    Top = 75
    Width = 4455
    Height = 1560
    TabIndex = 0
  End
  Begin BtnEnh BTNEXITzz
    Left = 11340
    Top = 7575
    Width = 1410
    Height = 600
    Visible = 0   'False
    TabIndex = 18
  End
  Begin BtnEnh BTNPRINTzz
    Index = 1
    Left = 9825
    Top = 7620
    Width = 1410
    Height = 600
    Visible = 0   'False
    TabIndex = 19
  End
  Begin Image GuestImage
    Left = 0
    Top = 0
    Width = 1740
    Height = 1980
    Visible = 0   'False
    Stretch = -1  'True
  End
End

Attribute VB_Name = "rRepReserv"

Private global_128 As Integer
Private global_130 As Integer
Private global_196 As Integer
Private global_198 As Integer
Private global_104 As Integer
Private global_88 As Integer
Private global_106 As Integer
Private global_112 As Variant
Private global_110 As Integer
Private global_108 As Integer

Private Sub FGrid_UnknownEvent_0 'E3F040
  'Data Table: 540784
  Dim var_8C As TextBox
  loc_E3F014: Call Proc_66_43_E50A44()
  loc_E3F024: Set var_88 = Me.TxtGrid
  loc_E3F02A: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E3F032: var_8C.Visible = False
  loc_E3F03E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1075764
  'Data Table: 540784
  Dim var_9C As String
  Dim Cancel As Integer
  Dim var_C4 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_11C As Long
  loc_107550F: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_110))) Then
  loc_107551A:   var_9C = "+{Tab}"
  loc_1075520:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag))
  loc_107552A:   Cancel = 0
  loc_1075530: Else
  loc_1075567:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_108))) Then
  loc_1075578:     Proc_303_0_FB9B68("	", 0)
  loc_1075582:     Cancel = 0
  loc_1075585:   End If
  loc_1075585: End If
  loc_107558B: global_128 = Cancel
  loc_10755B1: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10755D5: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10755EB:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1075603:   var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1075608:   var_104 = vbNullString
  loc_1075612:   Set var_118 = Me.FGrid
  loc_1075618:   LateIdCallSt
  loc_1075643:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1075648:   var_E4 = 2
  loc_1075651:   var_104 = vbNullString
  loc_107565B:   Set var_C4 = Me.FGrid
  loc_1075661:   LateIdCallSt
  loc_1075673: End If
  loc_107567D: If (CLng(Cancel) = &HD) Then
  loc_1075693:   var_11C = CLng(Me.FGrid.Row)
  loc_10756A3:   If Not (var_11C = CLng(0)) Then
  loc_10756AD:     If Not (var_11C = CLng(1)) Then
  loc_10756B7:       If Not (var_11C = CLng(2)) Then
  loc_10756C1:         If Not (var_11C = CLng(3)) Then
  loc_10756CB:           If Not (var_11C = CLng(4)) Then
  loc_10756D5:             If Not (var_11C = CLng(5)) Then
  loc_10756DF:               If Not (var_11C = CLng(6)) Then
  loc_10756E9:                 If Not (var_11C = CLng(7)) Then
  loc_10756F3:                   If Not (var_11C = CLng(8)) Then
  loc_10756FD:                     If (var_11C = CLng(9)) Then
  loc_1075700:                     End If
  loc_1075700:                   End If
  loc_1075700:                 End If
  loc_1075700:               End If
  loc_1075700:             End If
  loc_1075700:           End If
  loc_1075700:         End If
  loc_1075700:       End If
  loc_1075700:     End If
  loc_1075741:     Proc_6_61_1077428(Me, Me.FGrid, Me.TxtGrid, 0, 0, 0, var_11C, Me.FGrid)
  loc_107575B:     global_130 = 0
  loc_107575E:   End If
  loc_107575E: End If
  loc_1075760: Cancel = 0
  loc_1075763: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F0B65C
  'Data Table: 540784
  Dim var_9C As Long
  loc_F0B58F: var_9C = CLng(Me.FGrid.Row)
  loc_F0B59F: If Not (var_9C = CLng(0)) Then
  loc_F0B5A9:   If Not (var_9C = CLng(1)) Then
  loc_F0B5B3:     If Not (var_9C = CLng(2)) Then
  loc_F0B5BD:       If Not (var_9C = CLng(3)) Then
  loc_F0B5C7:         If Not (var_9C = CLng(4)) Then
  loc_F0B5D1:           If Not (var_9C = CLng(5)) Then
  loc_F0B5DB:             If Not (var_9C = CLng(6)) Then
  loc_F0B5E5:               If Not (var_9C = CLng(7)) Then
  loc_F0B5EF:                 If Not (var_9C = CLng(8)) Then
  loc_F0B5F9:                   If (var_9C = CLng(9)) Then
  loc_F0B5FC:                   End If
  loc_F0B5FC:                 End If
  loc_F0B5FC:               End If
  loc_F0B5FC:             End If
  loc_F0B5FC:           End If
  loc_F0B5FC:         End If
  loc_F0B5FC:       End If
  loc_F0B5FC:     End If
  loc_F0B5FC:   End If
  loc_F0B614:   var_AC = 0
  loc_F0B63D:   Proc_6_61_1077428(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F0B652: End If
  loc_F0B657: global_130 = 0
  loc_F0B65A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F710B8
  'Data Table: 540784
  Dim var_9C As Long
  loc_F70F8F: var_9C = CLng(Me.FGrid.Row)
  loc_F70F9F: If Not (var_9C = CLng(5)) Then
  loc_F70FA9:   If Not (var_9C = CLng(6)) Then
  loc_F70FB3:     If Not (var_9C = CLng(7)) Then
  loc_F70FBD:       If Not (var_9C = CLng(8)) Then
  loc_F70FC7:         If (var_9C = CLng(9)) Then
  loc_F70FCA:         End If
  loc_F70FCA:       End If
  loc_F70FCA:     End If
  loc_F70FCA:   End If
  loc_F71008:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F7101D: Else
  loc_F71024:   If Not (var_9C = CLng(0)) Then
  loc_F7102E:     If Not (var_9C = CLng(1)) Then
  loc_F71038:       If Not (var_9C = CLng(2)) Then
  loc_F71042:         If Not (var_9C = CLng(3)) Then
  loc_F7104C:           If (var_9C = CLng(4)) Then
  loc_F7104F:           End If
  loc_F7104F:         End If
  loc_F7104F:       End If
  loc_F7104F:     End If
  loc_F7108D:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Cancel)
  loc_F7109F:   End If
  loc_F7109F: End If
  loc_F710A9: If (CLng(Cancel) <> &HD) Then
  loc_F710B1:   global_130 = &HFF
  loc_F710B4: End If
  loc_F710B4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3F0A4
  'Data Table: 540784
  Dim var_8C As TextBox
  loc_E3F083: Set var_88 = Me.TxtGrid
  loc_E3F089: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3F091: var_8C.Visible = False
  loc_E3F09D: Call Proc_66_43_E50A44()
  loc_E3F0A2: Exit Sub
End Sub

Private Sub Form_Load(Index As Integer) 'FAB8F0
  'Data Table: 540784
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As Variant
  loc_FAB754: On Error Goto loc_FAB8E8
  loc_FAB757: Call Proc_66_42_162A980()
  loc_FAB763: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_FAB77B: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_FAB795: Set var_A8 = Me.GridSel
  loc_FAB79B: Call 0.Method_Form_Load0 (1, var_AC)
  loc_FAB7A3: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_FAB7C1: Set var_A8 = Me.GridSel
  loc_FAB7C7: Call 0.Method_Form_Load0 (2, var_AC)
  loc_FAB7CF: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_FAB7ED: Set var_A8 = Me.GridSel
  loc_FAB7F3: Call 0.Method_Form_Load0 (3, var_AC)
  loc_FAB7FB: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_FAB819: Set var_A8 = Me.GridSel
  loc_FAB81F: Call 0.Method_Form_Load0 (4, var_AC)
  loc_FAB827: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_FAB840: Set var_A8 = Me.Check1
  loc_FAB846: Call 0.Method_Form_Load0 (1, var_AC)
  loc_FAB84E: var_AC.BackColor = CLng(MemVar_1F921B0)
  loc_FAB867: Set var_A8 = Me.Check1
  loc_FAB86D: Call 0.Method_Form_Load0 (2, var_AC)
  loc_FAB875: var_AC.BackColor = CLng(MemVar_1F921B0)
  loc_FAB88E: Set var_A8 = Me.Check1
  loc_FAB894: Call 0.Method_Form_Load0 (3, var_AC)
  loc_FAB89C: var_AC.BackColor = CLng(MemVar_1F921B0)
  loc_FAB8B5: Set var_A8 = Me.Check1
  loc_FAB8BB: Call 0.Method_Form_Load0 (4, var_AC)
  loc_FAB8C3: var_AC.BackColor = CLng(MemVar_1F921B0)
  loc_FAB8D9: Set var_A8 = Me.TopCtrl1
  loc_FAB8DF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005("Add")
  loc_FAB8E7: Exit Sub
  loc_FAB8E8: ' Referenced from: FAB754
  loc_FAB8E8: Proc_6_60_E62BC4()
  loc_FAB8ED: Exit Sub
  loc_FAB8EE: Index2B = 
End Sub

Private Sub Form_Resize() 'DFCDA8
  'Data Table: 540784
  loc_DFCDA4: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E76AE0
  'Data Table: 540784
  loc_E76A87: Set global_64 = Nothing
  loc_E76A99: Set global_68 = Nothing
  loc_E76AAB: Set global_72 = Nothing
  loc_E76ABD: Set global_76 = Nothing
  loc_E76ACF: Set global_208 = Nothing
  loc_E76ADB: MemVar_1F921E4 = Nothing
  loc_E76ADF: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10E6030
  'Data Table: 540784
  Dim var_C0 As Variant
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_10E5D4F: var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E5D8D: Set var_108 = Me.TxtGrid
  loc_10E5D93: Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_10E5D9B: var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_10E5DCC: var_114 = CLng(Me.FGrid.Row)
  loc_10E5DDC: If (var_114 = CLng(2)) Then
  loc_10E5DE5:   var_118 = global_52
  loc_10E5DF0:   If Not (var_118 = "LuxuryTaxRegister") Then
  loc_10E5DFB:     If (var_118 = "LuxuryTaxRegisterI") Then
  loc_10E5DFE:     End If
  loc_10E5E0B:     ReDim var_11C(0 To 1)
  loc_10E5E22:     var_11C(0) = "Yes"
  loc_10E5E31:     var_11C(1) = "No"
  loc_10E5E88:     Set global_208 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_11C))
  loc_10E5E99:   End If
  loc_10E5E9C: Else
  loc_10E5EA3:   If (var_114 = CLng(3)) Then
  loc_10E5EAC:     var_124 = global_52
  loc_10E5EB7:     If Not (var_124 = "LuxuryTaxRegister") Then
  loc_10E5EC2:       If (var_124 = "LuxuryTaxRegisterI") Then
  loc_10E5EC5:       End If
  loc_10E5ED2:       ReDim var_11C(0 To 1)
  loc_10E5EE9:       var_11C(0) = "Yes"
  loc_10E5EF8:       var_11C(1) = "No"
  loc_10E5F4F:       Set global_208 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 2)
  loc_10E5F60:     End If
  loc_10E5F63:   Else
  loc_10E5F6A:     If (var_114 = CLng(4)) Then
  loc_10E5F73:       var_128 = global_52
  loc_10E5F7E:       If Not (var_128 = "LuxuryTaxRegister") Then
  loc_10E5F89:         If (var_128 = "LuxuryTaxRegisterI") Then
  loc_10E5F8C:         End If
  loc_10E5F99:         ReDim var_11C(0 To 1)
  loc_10E5FB0:         var_11C(0) = "Yes"
  loc_10E5FBF:         var_11C(1) = "No"
  loc_10E6016:         Set global_208 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 2, Array(var_11C))
  loc_10E6027:       End If
  loc_10E6027:     End If
  loc_10E6027:   End If
  loc_10E6027: End If
  loc_10E602C: Set var_88 = Nothing
  loc_10E602F: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12C33A8
  'Data Table: 540784
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As Variant
  Dim var_B0 As Long
  Dim var_C4 As TextBox
  Dim var_D0 As TextBox
  Dim Me As Recordset15
  Dim var_108 As Variant
  loc_12C2D6E: If (CLng(Shift) = &H1B) Then
  loc_12C2D7D:   Set var_8C = Me.TxtGrid
  loc_12C2D83:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12C2D9C:   Set var_98 = Me.TxtGrid
  loc_12C2DA2:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12C2DAA:   var_9C.Text = var_90.Tag
  loc_12C2DC6:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12C2DCF:   Set var_8C = Me.FGrid
  loc_12C2DEB:   Set var_8C = Me.TxtGrid
  loc_12C2DF1:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_12C2DF9:   var_90.Visible = FGrid.DispID_8001
  loc_12C2E05:   Call Proc_66_43_E50A44(arg_14)
  loc_12C2E0A:   Exit Sub
  loc_12C2E0B: End If
  loc_12C2E1E: var_B0 = CLng(Me.FGrid.Row)
  loc_12C2E2E: If Not (var_B0 = CLng(2)) Then
  loc_12C2E38:   If Not (var_B0 = CLng(3)) Then
  loc_12C2E42:     If (var_B0 = CLng(4)) Then
  loc_12C2E45:     End If
  loc_12C2E45:   End If
  loc_12C2E4B:   var_B4 = global_52
  loc_12C2E56:   If Not (var_B4 = "LuxuryTaxRegister") Then
  loc_12C2E61:     If (var_B4 = "LuxuryTaxRegisterI") Then
  loc_12C2E64:     End If
  loc_12C2E85:     Set var_8C = Me.TxtGrid
  loc_12C2E8B:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12C2EA4:     Set var_98 = Me.TxtGrid
  loc_12C2EAA:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12C2EC3:     Set var_C0 = Me.TxtGrid
  loc_12C2EC9:     Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_12C2EE2:     Set var_CC = Me.TxtGrid
  loc_12C2EE8:     Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12C2F3D:     Proc_6_114_11A290C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12C2FA1:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_130 = &HFF))) Then
  loc_12C2FB1:       Call Proc_66_41_1494440(0, 0, var_E6, CInt(var_90.Left))
  loc_12C2FBC:       If (var_E6 = &HFF) Then
  loc_12C2FBF:         Call Proc_66_45_EFFE8C(CInt(((var_9C.Top + var_C4.Height) + CDbl(&H19))), CInt(var_D0.Width))
  loc_12C2FC4:       End If
  loc_12C2FC4:     End If
  loc_12C2FC7:   Else
  loc_12C2FCF:     If Not (var_B4 = "FormCReport") Then
  loc_12C2FDA:       If (var_B4 = "GRC") Then
  loc_12C2FDD:       End If
  loc_12C2FE6:       var_B8 = Me.RecordCount
  loc_12C2FF4:       If (var_B8 > 0) Then
  loc_12C3014:         If (CLng(Me.FGrid.Row) = CLng(2)) Then
  loc_12C302F:           var_108 = CVar((CDbl(Me.FGrid.Left) + CDbl(2200))) 'Single
  loc_12C303E:           Me.DGForFolio.Left = var_108
  loc_12C3065:           var_108 = CVar((CDbl(Me.FGrid.Top) + CDbl(300))) 'Single
  loc_12C3074:           Me.DGForFolio.Top = var_108
  loc_12C3086:         Else
  loc_12C309E:           var_108 = CVar((CDbl(Me.FGrid.Left) + CDbl(2200))) 'Single
  loc_12C30AD:           Me.DGForFolio.Left = var_108
  loc_12C30D4:           var_108 = CVar((CDbl(Me.FGrid.Top) + CDbl(570))) 'Single
  loc_12C30E3:           Me.DGForFolio.Top = var_108
  loc_12C30F2:         End If
  loc_12C30FC:         If (CLng(Shift) = &H1B) Then
  loc_12C311B:           If (CBool(Me.DGForFolio.Visible) = &HFF) Then
  loc_12C312D:             Me.DGForFolio.Visible = False
  loc_12C3135:           End If
  loc_12C3135:           Exit Sub
  loc_12C3136:         End If
  loc_12C3141:         Set var_C4 = Me.TxtGrid
  loc_12C314E:         Set var_9C = Nothing
  loc_12C317A:         Set var_90 = var_C4
  loc_12C3189:         Proc_6_69_134A198(Me.DGForFolio, var_90, 0, global_200, Shift, &HFF)
  loc_12C31A3:         If (Shift = &HD) Then
  loc_12C31B5:           Me.DGForFolio.Visible = False
  loc_12C31CA:           Call Proc_66_41_1494440(0, 0, var_E6, 1, Nothing)
  loc_12C31D5:           If (var_E6 = &HFF) Then
  loc_12C31D8:             Call Proc_66_45_EFFE8C(var_9C, 0)
  loc_12C31DD:           End If
  loc_12C31DD:         End If
  loc_12C31DD:       End If
  loc_12C31DD:     End If
  loc_12C31DD:   End If
  loc_12C31E0: Else
  loc_12C31E7:   If (var_B0 = CLng(4)) Then
  loc_12C320B:     Set var_8C = Me.TxtGrid
  loc_12C3211:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8)
  loc_12C3219:     0 = var_90.Left
  loc_12C322A:     Set var_98 = Me.TxtGrid
  loc_12C3230:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12C3249:     Set var_C0 = Me.TxtGrid
  loc_12C324F:     Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_12C3268:     Set var_CC = Me.TxtGrid
  loc_12C326E:     Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12C32C3:     Proc_6_114_11A290C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12C32F1:     If (CLng(Shift) = &HD) Then
  loc_12C3301:       Call Proc_66_41_1494440(0, 0, var_E6, CInt(var_B8))
  loc_12C330C:       If (var_E6 = &HFF) Then
  loc_12C330F:         Call Proc_66_45_EFFE8C(CInt(((var_9C.Top + var_C4.Height) + CDbl(&H19))), CInt(var_D0.Width))
  loc_12C3314:       End If
  loc_12C3314:     End If
  loc_12C3317:   Else
  loc_12C331E:     If Not (var_B0 = CLng(0)) Then
  loc_12C3328:       If (var_B0 = CLng(1)) Then
  loc_12C332B:       End If
  loc_12C336B:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_130 = &HFF))) Then
  loc_12C337B:         Call Proc_66_41_1494440(0, 0, var_E6)
  loc_12C3386:         If (var_E6 = &HFF) Then
  loc_12C3389:           Call Proc_66_45_EFFE8C(0)
  loc_12C338E:         End If
  loc_12C338E:       End If
  loc_12C3391:     Else
  loc_12C3398:       If (var_B0 = CLng(5)) Then
  loc_12C33A1:         var_11C = global_52
  loc_12C33A4:       End If
  loc_12C33A4:     End If
  loc_12C33A4:   End If
  loc_12C33A4: End If
  loc_12C33A4: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F069D8
  'Data Table: 540784
  Dim arg_10 As Integer
  Dim var_94 As Variant
  Dim var_9C As Long
  loc_F068FF: Proc_6_58_E054C0(arg_10)
  loc_F0690A: Proc_6_133_E7EF78(var_94)
  loc_F06913: arg_10 = CInt(var_94)
  loc_F0692C: var_9C = CLng(Me.FGrid.Row)
  loc_F0693C: If Not (var_9C = CLng(2)) Then
  loc_F06946:   If (var_9C = CLng(3)) Then
  loc_F06949:   End If
  loc_F0694F:   var_A0 = global_52
  loc_F0695A:   If Not (var_A0 = "FormCReport") Then
  loc_F06965:     If (var_A0 = "GRC") Then
  loc_F06968:     End If
  loc_F06984:     If (CBool(Me.DGForFolio.Visible) = &HFF) Then
  loc_F069B1:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_200, arg_10, "Name")
  loc_F069C0:     End If
  loc_F069C0:   End If
  loc_F069C3: Else
  loc_F069CA:   If (var_9C = CLng(5)) Then
  loc_F069D3:     var_B0 = global_52
  loc_F069D6:   End If
  loc_F069D6: End If
  loc_F069D6: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F87A28
  'Data Table: 540784
  Dim var_9C As Long
  loc_F878EB: var_9C = CLng(Me.FGrid.Row)
  loc_F878FB: If Not (var_9C = CLng(2)) Then
  loc_F87905:   If (var_9C = CLng(3)) Then
  loc_F87908:   End If
  loc_F8790E:   var_A0 = global_52
  loc_F87919:   If Not (var_A0 = "FormCReport") Then
  loc_F87924:     If (var_A0 = "GRC") Then
  loc_F87927:     End If
  loc_F8794A:     If ((Shift <> &HD) And (CBool(Me.DGForFolio.Visible) = 0)) Then
  loc_F8795B:       Call TxtGrid_KeyDown(KeyCode, global_128)
  loc_F8796F:       var_A8 = "Name"
  loc_F8798A:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_200, Shift)
  loc_F87999:     End If
  loc_F87999:   End If
  loc_F8799C: Else
  loc_F879A3:   If (var_9C = CLng(4)) Then
  loc_F879AC:     var_B0 = global_52
  loc_F879D1:     If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F879E2:       Call TxtGrid_KeyDown(KeyCode, global_128)
  loc_F879E7:     End If
  loc_F87A15:     Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, 0, Shift, global_208)
  loc_F87A25:   End If
  loc_F87A25: End If
  loc_F87A25: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21990
  'Data Table: 540784
  Dim arg_10 As Integer
  loc_E2196C: On Error Goto loc_E21987
  loc_E2197A: Call Proc_66_41_1494440(Cancel, &HFF)
  loc_E21983: arg_10 = Not(var_88)
  loc_E21986: Exit Sub
  loc_E21987: ' Referenced from: E2196C
  loc_E21987: Proc_6_60_E62BC4(arg_10)
  loc_E2198C: Exit Sub
  loc_E2198D: CExtInstUnk
End Sub

Private Sub ListView_UnknownEvent_13 'EB5320
  'Data Table: 540784
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_EB52AC: Set var_9C = Me.ListView.SelectedItem
  loc_EB52C3: Set var_A4 = Me.TxtGrid
  loc_EB52C9: Call 0.Method_ListView_UnknownEvent_130 (0, var_A8)
  loc_EB52D1: var_A8.Text = var_9C.Text
  loc_EB52F3: Me.FrmList.Visible = False
  loc_EB5304: Set var_88 = Me.TxtGrid
  loc_EB530A: Call 0.Method_ListView_UnknownEvent_130 (0)
  loc_EB5312: var_9C.SetFocus
  loc_EB531E: Exit Sub
End Sub

Private Sub btnExit_Click() 'E187C8
  'Data Table: 540784
  loc_E187BD: Me.Global.Unload Me
  loc_E187C5: Exit Sub
End Sub

Private Sub Check1_Click(Index As Integer) 'FFAB58
  'Data Table: 540784
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_C8 As MSHFlexGrid
  loc_FFA969: Set var_88 = Me.Check1
  loc_FFA96F: Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA98D: If (CLng(var_8C.Value) = 0) Then
  loc_FFA99E:   Set var_88 = Me.GridSel
  loc_FFA9A4:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFA9AC:   var_8C.Enabled = True
  loc_FFA9C2:   Set var_88 = Me.GridSel
  loc_FFA9C8:   Call 0.Method_Check1_Click0 (Index)
  loc_FFA9E9:   If (CLng(var_8C.Rows) > 1) Then
  loc_FFA9FF:     Set var_88 = Me.GridSel
  loc_FFAA05:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFAA0D:     var_8C.Row = 1
  loc_FFAA2C:     Set var_88 = Me.GridSel
  loc_FFAA32:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFAA3A:     var_8C.Col = 0
  loc_FFAA46:   End If
  loc_FFAA49: Else
  loc_FFAA58:   Set var_88 = Me.GridSel
  loc_FFAA5E:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFAA66:   var_8C.Enabled = False
  loc_FFAA7C:   Set var_88 = Me.GridSel
  loc_FFAA82:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFAAA3:   If (CLng(var_8C.Rows) > 1) Then
  loc_FFAAB9:     Set var_88 = Me.GridSel
  loc_FFAABF:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFAAE6:     Set var_88 = Me.GridSel
  loc_FFAAEC:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFAAF4:     var_8C.Col = 0
  loc_FFAB0A:     Set var_88 = Me.GridSel
  loc_FFAB10:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFAB27:     var_A0 = CVar((CLng(var_8C.Rows) - 1)) 'Long
  loc_FFAB36:     Set var_C4 = Me.GridSel
  loc_FFAB3C:     Call 0.Method_Check1_Click0 (Index, var_C8)
  loc_FFAB44:     var_C8.RowSel = 0
  loc_FFAB57:   End If
  loc_FFAB57: End If
  loc_FFAB57: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E2183C
  'Data Table: 540784
  loc_E21822: If (Shift = &HD) Then
  loc_E21833:   Proc_303_0_FB9B68("	")
  loc_E2183B: End If
  loc_E2183B: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A '1178468
  'Data Table: 540784
  Dim var_98 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_168 As MSHFlexGrid
  Dim var_190 As Variant
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  loc_11780BE: If (Shift = &HD) Then
  loc_11780CF:   Proc_303_0_FB9B68("	")
  loc_11780D7: End If
  loc_11780E1: Set var_94 = Me.GridSel
  loc_11780E7: Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_1178108: If (CLng(var_98.Rows) < 1) Then
  loc_117810B:   Exit Sub
  loc_117810C: End If
  loc_1178120: Set var_94 = Me.GridSel
  loc_1178126: Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_1178148: If ((CLng(Shift) = &H20) And (CLng(var_98.Col) = 0)) Then
  loc_117815B:   Set var_94 = Me.GridSel
  loc_1178161:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_1178169:   var_98.CellFontName = "WINGDINGS"
  loc_1178187:   Set var_94 = Me.GridSel
  loc_117818D:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_1178195:   var_98.CellFontSize = CVar(CDbl(&HE))
  loc_11781AB:   Set var_94 = Me.GridSel
  loc_11781B1:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_11781C2:   var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_11781DA:   Set var_CC = Me.GridSel
  loc_11781E0:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_D0, 0)
  loc_11781E8:   var_100 = var_D0.TextMatrix)
  loc_11781FE:   Set var_164 = Me.GridSel
  loc_1178204:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_168, var_100)
  loc_1178215:   var_190 = CVar(CLng(var_168.Row)) 'Long
  loc_1178263:   Set var_17C = Me.GridSel
  loc_1178269:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_180, CVar(CStr(IIf((CStr(var_100) = "ü"), " ", "ü"))), 0)
  loc_1178271:   LateIdCallSt
  loc_11782A5:   var_1E2 = KeyCode
  loc_11782AE:   If (var_1E2 = 1) Then
  loc_11782C2:     var_86 = CInt((UBound(global_164, 1) + 1))
  loc_11782D4:     ReDim Preserve global_164(0 To CLng(var_86))
  loc_11782E8:     Set var_94 = Me.GridSel
  loc_11782EE:     Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98, var_86, var_1E2)
  loc_117830A:     global_164(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1178318:   Else
  loc_117831E:     If (var_1E2 = 2) Then
  loc_1178332:       var_86 = CInt((UBound(global_168, 1) + 1))
  loc_1178344:       ReDim Preserve global_168(0 To CLng(var_86))
  loc_1178358:       Set var_94 = Me.GridSel
  loc_117835E:       Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98, var_86, var_180)
  loc_117837A:       global_168(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1178388:     Else
  loc_117838E:       If (var_1E2 = 3) Then
  loc_11783A2:         var_86 = CInt((UBound(global_172, 1) + 1))
  loc_11783B4:         ReDim Preserve global_172(0 To CLng(var_86))
  loc_11783C8:         Set var_94 = Me.GridSel
  loc_11783CE:         Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98, var_86)
  loc_11783EA:         global_172(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_11783F8:       Else
  loc_11783FE:         If (var_1E2 = 4) Then
  loc_1178412:           var_86 = CInt((UBound(global_176, 1) + 1))
  loc_1178424:           ReDim Preserve global_176(0 To CLng(var_86))
  loc_1178438:           Set var_94 = Me.GridSel
  loc_117843E:           Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98, var_86)
  loc_117845A:           global_176(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1178465:         End If
  loc_1178465:       End If
  loc_1178465:     End If
  loc_1178465:   End If
  loc_1178465: End If
  loc_1178465: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_C '113A4E0
  'Data Table: 540784
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_A4 As Variant
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_88 As TextBox
  loc_113A17A: Set var_88 = Me.GridSel
  loc_113A180: Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode)
  loc_113A1A1: Set var_A0 = Me.GridSel
  loc_113A1A7: Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_A4)
  loc_113A1D1: If ((CLng(var_8C.Col) = 0) Or (CLng(var_A4.Row) = 0)) Then
  loc_113A1D4:   Exit Sub
  loc_113A1D5: End If
  loc_113A1D8: var_B6 = KeyCode
  loc_113A1E1: If (var_B6 = 1) Then
  loc_113A1FC:   Set var_88 = Me.GridSel
  loc_113A202:   Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_8C)
  loc_113A20A:   var_9C = var_8C.Col
  loc_113A274:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, KeyCode, global_64, Shift, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_113A295: Else
  loc_113A29B:   If (var_B6 = 2) Then
  loc_113A2B6:     Set var_88 = Me.GridSel
  loc_113A2BC:     Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_8C, var_9C)
  loc_113A2C4:     var_9C = var_8C.Col
  loc_113A32E:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, KeyCode, global_68, Shift, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_113A34F:   Else
  loc_113A355:     If (var_B6 = 3) Then
  loc_113A370:       Set var_88 = Me.GridSel
  loc_113A376:       Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_8C, var_9C)
  loc_113A37E:       var_9C = var_8C.Col
  loc_113A3E8:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, KeyCode, global_72, Shift, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_113A409:     Else
  loc_113A40F:       If (var_B6 = 4) Then
  loc_113A42A:         Set var_88 = Me.GridSel
  loc_113A430:         Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_8C, var_9C)
  loc_113A4A2:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, KeyCode, global_76, Shift, Me.Fields.Item(CVar(CLng(var_8C.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_113A4C0:       End If
  loc_113A4C0:     End If
  loc_113A4C0:   End If
  loc_113A4C0: End If
  loc_113A4D2: Me.TxtSearch.Tag = CStr(KeyCode)
  loc_113A4DD: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E822C0
  'Data Table: 540784
  Dim var_8C As MSHFlexGrid
  loc_E82262: Set var_88 = Me.GridSel
  loc_E82268: Call 0.Method_GridSel_UnknownEvent_E0 (KeyCode)
  loc_E82289: If (CLng(var_8C.Col) <> 0) Then
  loc_E8228C:   Exit Sub
  loc_E8228D: End If
  loc_E82297: Set var_88 = Me.GridSel
  loc_E8229D: Call 0.Method_GridSel_UnknownEvent_E0 (KeyCode, var_8C)
  loc_E822B2: global_196 = CInt(CLng(var_8C.Row))
  loc_E822BF: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1175B40
  'Data Table: 540784
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_160 As Variant
  Dim var_1B2 As Integer
  Dim var_86 As Integer
  loc_1175782: Set var_8C = Me.GridSel
  loc_1175788: Call 0.Method_GridSel_UnknownEvent_100 (KeyCode)
  loc_11757B3: If ((CLng(var_90.Col) <> 0) Or (global_196 = 0)) Then
  loc_11757B6:   Exit Sub
  loc_11757B7: End If
  loc_11757C1: Set var_8C = Me.GridSel
  loc_11757C7: Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_11757DC: global_198 = CInt(CLng(var_90.RowSel))
  loc_11757F8: For var_A4 = global_196 To global_198: var_88 = var_A4 'Integer
  loc_1175811:   Set var_8C = Me.GridSel
  loc_1175817:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, CVar(CLng(var_88)))
  loc_117581F:   var_90.Row = global_196
  loc_117583E:   Set var_8C = Me.GridSel
  loc_1175844:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, 0)
  loc_117584C:   var_90.Col = global_198
  loc_1175868:   Set var_8C = Me.GridSel
  loc_117586E:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_1175876:   var_90.CellFontName = "WINGDINGS"
  loc_1175894:   Set var_8C = Me.GridSel
  loc_117589A:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_11758A2:   var_90.CellFontSize = CVar(CDbl(&HE))
  loc_11758B2:   var_B4 = CVar(CLng(var_88)) 'Long
  loc_11758CA:   Set var_8C = Me.GridSel
  loc_11758D0:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, 0)
  loc_11758E8:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1175936:   Set var_14C = Me.GridSel
  loc_117593C:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_150, CVar(CStr(IIf((CStr(var_90.TextMatrix)) = "ü"), " ", "ü"))), 0)
  loc_1175944:   LateIdCallSt
  loc_117596C:   var_1B2 = KeyCode
  loc_1175975:   If (var_1B2 = 1) Then
  loc_1175989:     var_86 = CInt((UBound(global_164, 1) + 1))
  loc_117599B:     ReDim Preserve global_164(0 To CLng(var_86))
  loc_11759AF:     Set var_8C = Me.GridSel
  loc_11759B5:     Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, var_86, var_1B2, var_150)
  loc_11759D1:     global_164(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11759DF:   Else
  loc_11759E5:     If (var_1B2 = 2) Then
  loc_11759F9:       var_86 = CInt((UBound(global_168, 1) + 1))
  loc_1175A0B:       ReDim Preserve global_168(0 To CLng(var_86))
  loc_1175A1F:       Set var_8C = Me.GridSel
  loc_1175A25:       Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, var_86, var_160)
  loc_1175A41:       global_168(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_1175A4F:     Else
  loc_1175A55:       If (var_1B2 = 3) Then
  loc_1175A69:         var_86 = CInt((UBound(global_172, 1) + 1))
  loc_1175A7B:         ReDim Preserve global_172(0 To CLng(var_86))
  loc_1175A8F:         Set var_8C = Me.GridSel
  loc_1175A95:         Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, var_86)
  loc_1175AB1:         global_172(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_1175ABF:       Else
  loc_1175AC5:         If (var_1B2 = 4) Then
  loc_1175AD9:           var_86 = CInt((UBound(global_176, 1) + 1))
  loc_1175AEB:           ReDim Preserve global_176(0 To CLng(var_86))
  loc_1175AFF:           Set var_8C = Me.GridSel
  loc_1175B05:           Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, var_86)
  loc_1175B21:           global_176(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_1175B2C:         End If
  loc_1175B2C:       End If
  loc_1175B2C:     End If
  loc_1175B2C:   End If
  loc_1175B2F: Next var_A4 'Integer
  loc_1175B39: global_196 = 0
  loc_1175B3C: Exit Sub
End Sub

Private Sub BTNPRINT_Click(Index As Integer) '11092BC
  'Data Table: 540784
  Dim var_AC As Variant
  Dim var_94 As Variant
  loc_1108F7C: On Error Goto loc_11092B5
  loc_1108F84: global_104 = 0
  loc_1108F8C: global_88 = &HFF
  loc_1108F95: var_88 = global_52
  loc_1108FA0: If (var_88 = "ConfirmLetter") Then
  loc_1108FA3:   Call Proc_66_57_1607DE4(global_88)
  loc_1108FAB: Else
  loc_1108FB3:   If (var_88 = "RegistrationCard") Then
  loc_1108FB6:     Call Proc_66_60_1037754(global_104)
  loc_1108FBE:   Else
  loc_1108FC6:     If (var_88 = "CancellLetter") Then
  loc_1108FC9:       Call Proc_66_58_15F83C8()
  loc_1108FD1:     Else
  loc_1108FD9:       If (var_88 = "GRC") Then
  loc_1108FDC:         Call Proc_66_37_192B0DC()
  loc_1108FE4:       Else
  loc_1108FEC:         If (var_88 = "FormCReport") Then
  loc_1108FEF:           Call Proc_66_64_120207C()
  loc_1108FF7:         Else
  loc_1108FFF:           If (var_88 = "Form1TourismReport") Then
  loc_1109008:             If (Index = 1) Then
  loc_110900B:               Call Proc_66_65_1622718()
  loc_1109013:             Else
  loc_1109013:               Call Proc_66_66_15E662C()
  loc_1109018:             End If
  loc_110901B:           Else
  loc_1109023:             If (var_88 = "Form2TourismReport") Then
  loc_110902C:               If (Index = 1) Then
  loc_110902F:                 Call Proc_66_67_156D320()
  loc_1109037:               Else
  loc_1109037:                 Call Proc_66_68_152F11C()
  loc_110903C:               End If
  loc_110903F:             Else
  loc_1109047:               If (var_88 = "Form5TourismReport") Then
  loc_1109050:                 If (Index = 1) Then
  loc_1109053:                   Call Proc_66_69_15FEB68()
  loc_110905B:                 Else
  loc_110905B:                   Call Proc_66_70_174143C()
  loc_1109060:                 End If
  loc_1109063:               Else
  loc_110906B:                 If (var_88 = "LuxuryTaxRegister") Then
  loc_1109074:                   If (Index = 1) Then
  loc_1109077:                     Call Proc_66_71_1B913B4()
  loc_110907F:                   Else
  loc_110907F:                     Call Proc_66_72_1CA0280()
  loc_1109084:                   End If
  loc_1109087:                 Else
  loc_110908F:                   If (var_88 = "Form6TourismReport") Then
  loc_1109098:                     If (Index = 1) Then
  loc_110909B:                       Call Proc_66_75_167C5EC()
  loc_11090A3:                     Else
  loc_11090A3:                       Call Proc_66_76_1555EF0()
  loc_11090A8:                     End If
  loc_11090AB:                   Else
  loc_11090B3:                     If (var_88 = "Form4TourismReport") Then
  loc_11090BC:                       If (Index = 1) Then
  loc_11090BF:                         Call Proc_66_34_18004B8()
  loc_11090C7:                       Else
  loc_11090C7:                         Call Proc_66_35_15C9E88()
  loc_11090CC:                       End If
  loc_11090CF:                     Else
  loc_11090D7:                       If (var_88 = "CheckedInGuestDtl") Then
  loc_11090DA:                         Call Proc_66_39_189C0B0()
  loc_11090E2:                       Else
  loc_11090EA:                         If (var_88 = "LuxuryTaxRegisterI") Then
  loc_11090F3:                           If (Index = 1) Then
  loc_11090F6:                             Call Proc_66_71_1B913B4()
  loc_11090FE:                           Else
  loc_11090FE:                             Call Proc_66_73_1CC9514()
  loc_1109103:                           End If
  loc_1109106:                         Else
  loc_110910E:                           If (var_88 = "MonthlyStatisticalReturn") Then
  loc_1109117:                             If (Index = 1) Then
  loc_110911A:                               GoTo loc_1109122
  loc_110911D:                             End If
  loc_110911D:                             Call Proc_66_79_19E1AE0()
  loc_1109122:                             ' Referenced from:                           110911A
  loc_1109125:                           Else
  loc_110912D:                             If (var_88 = "LTFORMII") Then
  loc_1109136:                               If (Index = 1) Then
  loc_1109139:                                 GoTo loc_1109141
  loc_110913C:                               End If
  loc_110913C:                               Call Proc_66_81_14B1C10()
  loc_1109141:                               ' Referenced from:                             1109139
  loc_1109144:                             Else
  loc_110914C:                               If (var_88 = "LTFORMIV") Then
  loc_1109155:                                 If (Index = 1) Then
  loc_1109158:                                   GoTo loc_1109160
  loc_110915B:                                 End If
  loc_110915B:                                 Call Proc_66_83_132F034()
  loc_1109160:                                 ' Referenced from:                               1109158
  loc_1109160:                               End If
  loc_1109160:                             End If
  loc_1109160:                           End If
  loc_1109160:                         End If
  loc_1109160:                       End If
  loc_1109160:                     End If
  loc_1109160:                   End If
  loc_1109160:                 End If
  loc_1109160:               End If
  loc_1109160:             End If
  loc_1109160:           End If
  loc_1109160:         End If
  loc_1109160:       End If
  loc_1109160:     End If
  loc_1109160:   End If
  loc_1109160: End If
  loc_1109169: If (global_88 = 0) Then
  loc_110916C:   Exit Sub
  loc_110916D: End If
  loc_1109197: Set var_94 = global_96 
  loc_110919E: CreateFieldDefFile(var_94, MemVar_1F920B4 & "\" & global_84 & ".ttx")
  loc_11091E7: Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & global_84 & ".RPT", var_AC)
  loc_110921E: Call 0.Method_arg_64 (var_94, CVar(var_94), var_BC)
  loc_1109226: Call 0.Method_arg_2C (var_CC, var_94)
  loc_1109234: Call 0.Method_arg_150 (&HFF)
  loc_1109244: Set global_96 = Nothing
  loc_110924B: Call Proc_66_40_147C5A0()
  loc_1109255: Set var_D4 = Nothing
  loc_110926C: Set var_94 = var_94 
  loc_1109278: Proc_6_99_1483714(var_94, Index, global_80)
  loc_1109283: MemVar_1F921E4 = var_94
  loc_1109293: global_106 = 0
  loc_110929B: MemVar_1F921E4 = Nothing
  loc_11092AC: Me.Global.Unload Me
  loc_11092B4: Exit Sub
  loc_11092B5: ' Referenced from: 1108F7C
  loc_11092B5: Proc_6_60_E62BC4(global_106, &HFF)
  loc_11092BA: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'F27738
  'Data Table: 540784
  loc_F2763B: If (Proc_6_113_E6CF7C(KeyCode) = &HFF) Then
  loc_F27666:   Set var_90 = Me.GridSel
  loc_F2766C:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_F27694:   Me.TxtSearch.Visible = False
  loc_F2769C: End If
  loc_F276A6: If (CLng(KeyCode) = &H2E) Then
  loc_F276B6:   Me.TxtSearch.Text = vbNullString
  loc_F276BE: End If
  loc_F276D3: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_F276FE:   Set var_90 = Me.GridSel
  loc_F27704:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94, Val(Me.TxtSearch.Tag))
  loc_F2772C:   Me.TxtSearch.Visible = False
  loc_F27734: End If
  loc_F27734: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) '11CC998
  'Data Table: 540784
  Dim var_F4 As Double
  Dim var_A4 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim Me As Recordset15
  loc_11CC561: var_90 = Me.TxtSearch.Tag
  loc_11CC576: If (var_90 = CStr(1)) Then
  loc_11CC5CC:   Set var_A0 = Me.GridSel
  loc_11CC5D2:   Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4)
  loc_11CC648:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(Val(Me.TxtSearch.Tag)), global_64, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CC673: Else
  loc_11CC682:   If (var_90 = CStr(2)) Then
  loc_11CC6AD:     var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CC6D8:     Set var_A0 = Me.GridSel
  loc_11CC6DE:     Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CC754:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_68, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CC77F:   Else
  loc_11CC78E:     If (var_90 = CStr(3)) Then
  loc_11CC7B9:       var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CC7E4:       Set var_A0 = Me.GridSel
  loc_11CC7EA:       Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CC7F2:       var_B4 = var_A4.Col
  loc_11CC860:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_72, KeyAscii, Me.Fields.Item(CVar(CLng(var_B4))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CC88B:     Else
  loc_11CC89A:       If (var_90 = CStr(4)) Then
  loc_11CC8C5:         var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CC8F0:         Set var_A0 = Me.GridSel
  loc_11CC8F6:         Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4, var_B4)
  loc_11CC8FE:         var_B4 = var_A4.Col
  loc_11CC96C:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_76, KeyAscii, Me.Fields.Item(CVar(CLng(var_B4))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CC994:       End If
  loc_11CC994:     End If
  loc_11CC994:   End If
  loc_11CC994: End If
  loc_11CC994: Exit Sub
  loc_11CC995: var_B4(var_B4) = var_B4
End Sub

Private Sub TxtSearch_LostFocus() 'E90CA0
  'Data Table: 540784
  loc_E90C39: Me.TxtSearch.Text = vbNullString
  loc_E90C69: Set var_90 = Me.GridSel
  loc_E90C6F: Call 0.Method_TxtSearch_LostFocus0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E90C97: Me.TxtSearch.Visible = False
  loc_E90C9F: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E9280C
  'Data Table: 540784
  loc_E927A5: Me.TxtSearch.Text = vbNullString
  loc_E927D5: Set var_90 = Me.GridSel
  loc_E927DB: Call 0.Method_TxtSearch_Click0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E92803: Me.TxtSearch.Visible = False
  loc_E9280B: Exit Sub
End Sub

Public Function global_52Get() '5423EC
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '5423FB
  global_52 = Value
End Sub

Public Function global_56Get() '54240A
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '542419
  global_56 = Value
End Sub

Public Function global_60Get() '542428
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '542437
  global_60 = Value
End Sub

Public Sub SelGridKeyPressLocal(Txt, SelGrid, index, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '11893C4
  'Data Table: 540784
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim KeyAscii As Integer
  Dim var_138 As Variant
  loc_1189019: If ().rows < 1) Then
  loc_118901C:   Exit Sub
  loc_118901D: End If
  loc_1189031: If (Me.RecordCount <= 0) Then
  loc_118903D:   Me.TEXT = vbNullString
  loc_1189041:   Exit Sub
  loc_1189042: End If
  loc_1189057: If ((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Then
  loc_118905A:   Exit Sub
  loc_118905B: End If
  loc_1189065: If (CLng(KeyAscii) = 8) Then
  loc_118907F:   If (Len(Me.SelText) > 1) Then
  loc_1189093:     var_DC = (Len(Me.SelText) - 1)
  loc_118909B:     Me.SelLength = var_DC
  loc_11890AB:     var_88 = CStr(Me.SelText)
  loc_11890B4:   Else
  loc_11890BD:     Me.TEXT = vbNullString
  loc_11890D7:     Call ).SetFocus
  loc_11890E8:     Me.Visible = False
  loc_11890EC:     Exit Sub
  loc_11890ED:   End If
  loc_11890F0: Else
  loc_1189107:   var_DC = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_118910C:   var_88 = CStr(var_DC)
  loc_1189118: End If
  loc_118911B: Me.Recordset15.MoveFirst
  loc_1189158: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_118919B:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_11891B0: Else
  loc_11891E0:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_88 & "*'", 0, 1
  loc_11891F0: End If
  loc_11891F2: KeyAscii = 0
  loc_118921E: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_118922F:   var_BC = CVar(Me.Recordset15.AbsolutePosition) 'Long
  loc_1189248:   ).Row = index
  loc_118927E:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_1189298:   Me.SelLength = CVar(Len(var_88))
  loc_11892B0:   var_DC = ).CellLeft
  loc_11892D0:   var_138 = (index + ).left)
  loc_11892D8:   Me.left = var_138
  loc_11892FD:   var_DC = ).CellTop
  loc_118931D:   var_138 = (index + ).top)
  loc_1189325:   Me.top = var_138
  loc_1189348:   If (Me.Visible = False) Then
  loc_1189352:     Me.Visible = True
  loc_1189356:     var_9C = 0
  loc_118935F:     Call Me.ZOrder
  loc_1189368:     Call Me.SetFocus
  loc_118938C:     Me.width = ).CellWidth
  loc_11893B5:     Me.height = ).CellHeight
  loc_11893C0:   End If
  loc_11893C0: End If
  loc_11893C0: Exit Sub
End Sub

Public Function ListView_Items_RecordSet_Local(LV, Txt, index, Rst) 'FF7324
  'Data Table: 540784
  Dim var_104 As String
  Dim var_A0 As Variant
  Dim Me As Variant
  Dim var_134 As String
  Dim var_8C As ListItem
  Dim var_E4 As Integer
  loc_FF7144: Call Me.ListItems.Clear
  loc_FF7161: If (Me.Recordset15.RecordCount <= 0) Then
  loc_FF7164:   ListView_Items_RecordSet_Local = 
  loc_FF716A: End If
  loc_FF7175: If (global_52 <> "HundiPrint") Then
  loc_FF7180:   var_104 = "All"
  loc_FF7189:   var_A0 = Me.ListItems
  loc_FF719A:   Set var_8C = var_A0.add
  loc_FF71AC:   var_A0.ListItem.SubItems = 1
  loc_FF71B1:   ' Referenced from: FF72AC
  loc_FF71B1: End If
  loc_FF71B7: var_116 = Me.EOF
  loc_FF71C0: If Not(var_116) Then
  loc_FF71ED:   var_A0 = Me.Recordset15.Fields.Item("Name").Value
  loc_FF7257:   If Not(IsNull(Me.Recordset15.Fields.Item("Code").Value)) Then
  loc_FF7286:     var_134 = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_FF728E:     Me.ListItems.add.SubItems = 1
  loc_FF72A4:   End If
  loc_FF72A7:   Me.MoveNext
  loc_FF72AC:   GoTo loc_FF71B1
  loc_FF72AF: End If
  loc_FF72C4: var_E4 = 0
  loc_FF72E3: Set var_8C = Me.FindItem
  loc_FF72F4: If (var_8C Is Nothing) Then
  loc_FF72F7:   ListView_Items_RecordSet_Local = 1
  loc_FF7300: Else
  loc_FF7306:   var_8C.EnsureVisible var_116
  loc_FF7310:   var_8C.Selected = True
  loc_FF7315: End If
  loc_FF7318: Set var_88 = var_8C 
  loc_FF731C: ListView_Items_RecordSet_Local = var_104
End Function

Public Sub Proc_66_34_18004B8
  'Data Table: 540784
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_160 As String
  Dim var_170 As Variant
  Dim var_1A4 As String
  Dim var_190 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_244 As Variant
  Dim var_264 As Variant
  Dim unk_5407B4 As Connection15
  Dim var_C8 As Long
  Dim var_CC As Long
  Dim var_D0 As Long
  Dim var_D4 As Long
  Dim var_B0 As Recordset15
  Dim var_E8 As Double
  Dim var_1A0 As Variant
  Dim var_AC As Recordset15
  Dim var_E0 As Double
  Dim var_F8 As Double
  Dim var_F0 As Double
  Dim var_100 As Double
  Dim var_88 As Long
  Dim var_1E4 As Variant
  Dim var_288 As String
  Dim var_290 As String
  Dim var_2A0 As String
  Dim var_234 As Variant
  Dim var_2D4 As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_30C As Variant
  Dim var_32C As Variant
  Dim var_344 As Variant
  Dim var_354 As Variant
  Dim var_384 As Variant
  Dim var_3A4 As Variant
  Dim var_3C4 As Variant
  Dim var_3D4 As Variant
  Dim var_31C As Variant
  Dim var_394 As Variant
  Dim var_3F8 As Variant
  Dim var_408 As Variant
  Dim var_418 As Variant
  Dim var_42C As Variant
  Dim var_43C As Variant
  Dim var_45C As Variant
  Dim var_47C As Variant
  Dim var_49C As Variant
  Dim var_4BC As Variant
  Dim var_4EC As Variant
  Dim var_50C As Variant
  Dim var_53C As Variant
  loc_17FE35F: var_118 = CVar(CLng(0)) 'Long
  loc_17FE364: var_138 = 1
  loc_17FE3B2: var_A4 = CStr(Format(CVar("01/" & CStr(Me.FGrid.TextMatrix))), "dd/MMM/yyyy"))
  loc_17FE3CC: var_118 = CVar(CLng(0)) 'Long
  loc_17FE3DE: Set var_14C = Me.FGrid
  loc_17FE3E4: var_15C = var_14C.TextMatrix)
  loc_17FE418: var_1A0 = DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & CStr(var_15C)))))
  loc_17FE441: var_A8 = CStr(Format(var_1A0, "dd/MMM/yyyy"))
  loc_17FE45D: On Error Goto loc_18004A7
  loc_17FE470: Proc_6_7_F25D88(var_15C, var_A4, " (ChkInDt Between ", 1, 1, var_A4)
  loc_17FE47C: var_138 = " and  "
  loc_17FE490: Proc_6_7_F25D88(var_1A0, var_A8, "01/" & var_15C & var_138, 1)
  loc_17FE4B0: Proc_6_7_F25D88(var_1E4, var_A4, 1 & var_1A0 & " Or ChkOutDt Between ")
  loc_17FE4D0: Proc_6_7_F25D88(var_234, var_A8, var_15C & var_1E4 & " and  ")
  loc_17FE4E6: var_C0 = CStr(var_138 & var_234 & " Or ChkOutDt Is Null)")
  loc_17FE518: var_160 = "Select DocId,(Adult+Children) As Indian,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & var_C0
  loc_17FE528: unk_5407B4.Execute CStr(var_15C) & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' Order By DocId,SNo", var_15C, -1
  loc_17FE533: Set var_B0 = var_14C
  loc_17FE557: var_160 = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & var_C0
  loc_17FE567: unk_5407B4.Execute CStr(var_15C) & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By DocId,SNo", var_15C, -1
  loc_17FE572: Set var_AC = var_14C
  loc_17FE5B0: var_B4 = Replace(CStr(Space(&H96)), " ", "-", 1, -1, 0)
  loc_17FE5E7: var_B8 = Replace(CStr(Space(&H2B)), " ", "-", 1, -1, 0)
  loc_17FE61E: var_BC = Replace(CStr(Space(&H96)), " ", "=", 1, -1, 0)
  loc_17FE655: var_104 = Replace(CStr(Space(&H15)), " ", "-", 1, -1, 0)
  loc_17FE660: Close 1
  loc_17FE669: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_17FE672: var_C8 = 0
  loc_17FE67A: var_CC = 0
  loc_17FE682: var_D0 = 0
  loc_17FE68A: var_D4 = 0
  loc_17FE690: var_D8 = vbNullString
  loc_17FE6A7: If (var_B0.RecordCount > 0) Then
  loc_17FE6AA:   ' Referenced from: 17FEB01
  loc_17FE6B9:   If Not(var_B0.EOF) Then
  loc_17FE6FC:     If (var_B0.Fields.Item("CheckIn").Value < CDate(CDate(var_A4))) Then
  loc_17FE704:       var_E8 = CDate(var_A4)
  loc_17FE70A:     Else
  loc_17FE74A:       If (var_B0.Fields.Item("CheckIn").Value > CDate(CDate(var_A8))) Then
  loc_17FE752:         var_E8 = CDate(var_A8)
  loc_17FE758:       Else
  loc_17FE784:         var_E8 = CDate(var_B0.Fields.Item("CheckIn").Value)
  loc_17FE791:       End If
  loc_17FE791:     End If
  loc_17FE7CD:     If CBool(var_B0.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_17FE810:       If (var_B0.Fields.Item("CheckOut").Value > CDate(CDate(var_A8))) Then
  loc_17FE871:         var_1C4 = (CVar(var_C8) + (DateDiff("D", var_E8, CDate(CDate(var_A8)), 1, 1) * var_B0.Fields.Item("Indian").Value))
  loc_17FE877:         var_C8 = CLng(1 & (DateDiff("D", var_E8, CDate(CDate(var_A8)), 1, 1) * var_B0.Fields.Item("Indian").Value))
  loc_17FE88F:       Else
  loc_17FE907:         var_1C4 = (CVar(var_C8) + (DateDiff("D", var_E8, CVar(var_B0.Fields.Item("CheckOut")), 1, 1) * var_B0.Fields.Item("Indian").Value))
  loc_17FE90D:         var_C8 = CLng(1 & (DateDiff("D", var_E8, CVar(var_B0.Fields.Item("CheckOut")), 1, 1) * var_B0.Fields.Item("Indian").Value))
  loc_17FE924:       End If
  loc_17FE927:     Else
  loc_17FE930:       If (MemVar_1F920EC < CDate(var_A8)) Then
  loc_17FE98F:         var_1C4 = (CVar(var_C8) + (DateDiff("D", var_E8, CDate(MemVar_1F920EC), 1, 1) * var_B0.Fields.Item("Indian").Value))
  loc_17FE995:         var_C8 = CLng(1 & (DateDiff("D", var_E8, CDate(MemVar_1F920EC), 1, 1) * var_B0.Fields.Item("Indian").Value))
  loc_17FE9AD:       Else
  loc_17FEA0B:         var_1C4 = (CVar(var_C8) + (DateDiff("D", var_E8, CDate(CDate(var_A8)), 1, 1) * var_B0.Fields.Item("Indian").Value))
  loc_17FEA11:         var_C8 = CLng(1 & (DateDiff("D", var_E8, CDate(CDate(var_A8)), 1, 1) * var_B0.Fields.Item("Indian").Value))
  loc_17FEA26:       End If
  loc_17FEA26:     End If
  loc_17FEA96:     var_1C4 = (var_B0.Fields.Item("CheckIn").Value >= CDate(CDate(var_A4))) And (var_B0.Fields.Item("CheckIn").Value <= CDate(CDate(var_A8)))
  loc_17FEAAE:     If CBool(var_1C4) Then
  loc_17FEAE2:       var_170 = (CVar(var_D0) + var_B0.Fields.Item("Indian").Value)
  loc_17FEAE8:       var_D0 = CLng(DateDiff("D", var_E8, CDate(CDate(var_A8)), 1, 1))
  loc_17FEAF9:     End If
  loc_17FEAFC:     var_B0.MoveNext
  loc_17FEB01:     GoTo loc_17FE6AA
  loc_17FEB04:   End If
  loc_17FEB04: End If
  loc_17FEB18: If (var_AC.RecordCount > 0) Then
  loc_17FEB1B:   ' Referenced from: 17FEF72
  loc_17FEB2A:   If Not(var_AC.EOF) Then
  loc_17FEB6D:     If (var_AC.Fields.Item("CheckIn").Value < CDate(CDate(var_A4))) Then
  loc_17FEB75:       var_E8 = CDate(var_A4)
  loc_17FEB7B:     Else
  loc_17FEBBB:       If (var_AC.Fields.Item("CheckIn").Value > CDate(CDate(var_A8))) Then
  loc_17FEBC3:         var_E8 = CDate(var_A8)
  loc_17FEBC9:       Else
  loc_17FEBF5:         var_E8 = CDate(var_AC.Fields.Item("CheckIn").Value)
  loc_17FEC02:       End If
  loc_17FEC02:     End If
  loc_17FEC3E:     If CBool(var_AC.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_17FEC81:       If (var_AC.Fields.Item("CheckOut").Value > CDate(CDate(var_A8))) Then
  loc_17FECE2:         var_1C4 = (CVar(var_CC) + (DateDiff("D", var_E8, CDate(CDate(var_A8)), 1, 1) * var_AC.Fields.Item("Foreigner").Value))
  loc_17FECE8:         var_CC = CLng(var_1C4)
  loc_17FED00:       Else
  loc_17FED78:         var_1C4 = (CVar(var_CC) + (DateDiff("D", var_E8, CVar(var_AC.Fields.Item("CheckOut")), 1, 1) * var_AC.Fields.Item("Foreigner").Value))
  loc_17FED7E:         var_CC = CLng(var_1C4)
  loc_17FED95:       End If
  loc_17FED98:     Else
  loc_17FEDA1:       If (MemVar_1F920EC < CDate(var_A8)) Then
  loc_17FEE00:         var_1C4 = (CVar(var_CC) + (DateDiff("D", var_E8, CDate(MemVar_1F920EC), 1, 1) * var_AC.Fields.Item("Foreigner").Value))
  loc_17FEE06:         var_CC = CLng(var_1C4)
  loc_17FEE1E:       Else
  loc_17FEE7C:         var_1C4 = (CVar(var_CC) + (DateDiff("D", var_E8, CDate(CDate(var_A8)), 1, 1) * var_AC.Fields.Item("Foreigner").Value))
  loc_17FEE82:         var_CC = CLng(var_1C4)
  loc_17FEE97:       End If
  loc_17FEE97:     End If
  loc_17FEF07:     var_1C4 = (var_AC.Fields.Item("CheckIn").Value >= CDate(CDate(var_A4))) And (var_AC.Fields.Item("CheckIn").Value <= CDate(CDate(var_A8)))
  loc_17FEF1F:     If CBool(var_1C4) Then
  loc_17FEF3B:       var_14C = var_AC.Fields
  loc_17FEF4B:       var_15C = var_14C.Item("Foreigner").Value
  loc_17FEF53:       var_170 = (CVar(var_D4) + var_15C)
  loc_17FEF59:       var_D4 = CLng(DateDiff("D", var_E8, CDate(CDate(var_A8)), 1, 1))
  loc_17FEF6A:     End If
  loc_17FEF6D:     var_AC.MoveNext
  loc_17FEF72:     GoTo loc_17FEB1B
  loc_17FEF75:   End If
  loc_17FEF75: End If
  loc_17FEF98: Proc_6_7_F25D88(var_15C, var_A4, CVar("PP.Vtype='RC' AND PP.PayCode='" & MemVar_1F92078 & "RMCH" & "'  AND PP.VDate Between "), var_D4, var_CC, var_CC, var_CC)
  loc_17FEFB8: Proc_6_7_F25D88(var_1C4, var_A8, var_CC & var_15C & " and  ", var_E8, var_E8)
  loc_17FEFC5: var_C0 = CStr(var_E8 & var_1C4)
  loc_17FEFF3: var_170 = CVar("PP.Vtype='RC' AND PP.PayCode='" & MemVar_1F92078 & "LT" & "'  AND PP.VDate Between ") 'String
  loc_17FF001: Proc_6_7_F25D88(var_15C, var_A4, var_170)
  loc_17FF021: Proc_6_7_F25D88(var_1C4, var_A8, var_D0 & var_15C & " and  ")
  loc_17FF02E: var_C4 = CStr(var_C8 & var_1C4)
  loc_17FF05B: var_160 = "Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr) As LTAmount From PayCharge PP JOIN  GuestFolio GF  on PP.FolioNoDocId = GF.DocID  Join GuestProf GP ON GF.GuestProf=GP.Code Where  GP.Type<>'Foreign' AND " & var_C0
  loc_17FF064: unk_5407B4.Execute var_160, var_15C, -1
  loc_17FF08A: var_14C = var_14C.Fields
  loc_17FF09A: var_15C = CVar(var_14C.Item("BillAmount")) 'Address
  loc_17FF0A1: Proc_6_39_E7C810(var_170, var_15C)
  loc_17FF0AA: var_E0 = CSng(var_170)
  loc_17FF0CB: var_160 = "Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr) As LTAmount From PayCharge PP JOIN  GuestFolio GF  on PP.FolioNoDocId = GF.DocID  Join GuestProf GP ON GF.GuestProf=GP.Code Where  GP.Type<>'Foreign' AND " & var_C4
  loc_17FF0D4: unk_5407B4.Execute var_160, var_15C, -1
  loc_17FF0FA: var_14C = var_14C.Fields
  loc_17FF10A: var_15C = CVar(var_14C.Item("LTAmount")) 'Address
  loc_17FF111: Proc_6_39_E7C810(var_170, var_15C, var_14C)
  loc_17FF11A: var_F8 = CSng(var_170)
  loc_17FF13B: var_160 = "Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr) As LTAmount From PayCharge PP JOIN  GuestFolio GF  on PP.FolioNoDocId = GF.DocID Join GuestProf GP ON GF.GuestProf=GP.Code Where  GP.Type='Foreign' AND " & var_C0
  loc_17FF144: unk_5407B4.Execute var_160, var_15C, -1
  loc_17FF16A: var_14C = var_14C.Fields
  loc_17FF17A: var_15C = CVar(var_14C.Item("BillAmount")) 'Address
  loc_17FF181: Proc_6_39_E7C810(var_170, var_15C, var_14C, var_F8)
  loc_17FF18A: var_F0 = CSng(var_170)
  loc_17FF1AB: var_160 = "Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr) As LTAmount From PayCharge PP JOIN  GuestFolio GF  on PP.FolioNoDocId = GF.DocID Join GuestProf GP ON GF.GuestProf=GP.Code Where  GP.Type='Foreign' AND " & var_C4
  loc_17FF1B4: unk_5407B4.Execute var_160, var_15C, -1
  loc_17FF1DA: var_14C = var_14C.Fields
  loc_17FF1F1: Proc_6_39_E7C810(var_170, CVar(var_14C.Item("LTAmount")), var_14C, var_F0)
  loc_17FF1FA: var_100 = CSng(var_170)
  loc_17FF21C: Print 1, vbNullString
  loc_17FF26D: var_1D4 = Me.FGrid.TextMatrix)
  loc_17FF292: var_288 = Proc_6_45_EAD428("MONTH - " & CStr(var_1D4), &H14, var_1D4, 1, CVar(CLng(0)))
  loc_17FF29E: var_190 = (Space(&H2A) + CVar(Proc_6_45_EAD428("L. T. FORM  IV", &H14, 0, 1)))
  loc_17FF2A5: var_1C4 = (var_D0 & Space(&H2A) + Space(2))
  loc_17FF2AF: var_1F4 = (var_1C4 + CVar(var_288))
  loc_17FF2B5: Print 1, Space(&H2A) & CVar(var_288)
  loc_17FF2E3: Print 1, vbNullString
  loc_17FF315: var_190 = (Space(&H32) + CVar(Proc_6_45_EAD428("(See Rule 4 & 16)", &H14, var_100)))
  loc_17FF31B: Print 1, var_D0 & Space(&H32)
  loc_17FF336: Print 1, vbNullString
  loc_17FF368: var_190 = (Space(&H19) + CVar(Proc_6_45_EAD428("Monthly abstract of collection and remittance of luxury Tax", &H3C, var_E0)))
  loc_17FF36E: Print 1, var_D0 & Space(&H19)
  loc_17FF3B0: var_190 = (Space(&H19) + CVar(Proc_6_45_EAD428("Return for calender Month .....................................................", &H46)))
  loc_17FF3B6: Print 1, var_D0 & Space(&H19)
  loc_17FF3D1: Print 1, vbNullString
  loc_17FF422: var_288 = Proc_6_45_EAD428(MemVar_1F92130 & ",", CInt((Len(MemVar_1F92130 & ",") + 1)))
  loc_17FF448: var_290 = Proc_6_45_EAD428(MemVar_1F9213C, CInt((Len(MemVar_1F9213C) + 1)))
  loc_17FF454: var_190 = (Space(&H19) + CVar(Proc_6_45_EAD428("Name of the Hotel : ", CInt(Len("Name of the Hotel : ")))))
  loc_17FF45E: var_1C4 = (var_D0 & Space(&H19) + CVar(var_288))
  loc_17FF465: var_1E4 = (var_1C4 + Space(1))
  loc_17FF46F: var_214 = (CVar(var_288) + CVar(var_290))
  loc_17FF475: Print 1, Space(&H19) & CVar(var_288) & " and  "
  loc_17FF4A4: Print 1, vbNullString
  loc_17FF4AF: Print 1, var_BC
  loc_17FF5BE: var_2A0 = Proc_6_45_EAD428("Total No.", &HD) & "|" & Proc_6_45_EAD428("CHECKED IN TOURISTS", &H15) & "|" & Proc_6_45_EAD428("TOURISTS SPENT NIGHTS", &H15)
  loc_17FF5DC: var_190 = (CVar(var_2A0 & "|" & Proc_6_45_EAD428("TOTAL Charges Covered", &H15) & "|") + Space(5))
  loc_17FF5E6: var_1C4 = (var_D0 & Space(5) + CVar(Proc_6_45_EAD428("TOTAL", &H10)))
  loc_17FF5EF: var_1D4 = (var_1C4 + "|")
  loc_17FF5F6: var_1F4 = (Space(1) + Space(5))
  loc_17FF600: var_234 = (CVar(Proc_6_45_EAD428("Total No.", &HD) & "|" & Proc_6_45_EAD428("CHECKED IN TOURISTS", &H15)) + CVar(Proc_6_45_EAD428("Luxury Tax", &H10)))
  loc_17FF609: var_244 = (var_234 + "|")
  loc_17FF610: var_2D4 = (1 & var_234 + Space(3))
  loc_17FF61A: var_2FC = (var_2D4 + CVar(Proc_6_45_EAD428("Balance", &HA)))
  loc_17FF623: var_30C = (var_2FC + "|")
  loc_17FF62A: var_32C = (var_30C + Space(3))
  loc_17FF634: var_354 = (var_32C + CVar(Proc_6_45_EAD428("Remarks", &HA)))
  loc_17FF63A: Print 1, var_354
  loc_17FF788: var_2A0 = Proc_6_45_EAD428("of Guests", &HD) & "|" & Proc_6_45_EAD428("IN THE MONTH", &H15) & "|" & Proc_6_45_EAD428("IN THE MONTH", &H15)
  loc_17FF7A6: var_190 = (CVar(var_2A0 & "|" & Proc_6_45_EAD428("for Accommodation", &H15) & "|") + Space(5))
  loc_17FF7B0: var_1C4 = (var_D0 & Space(5) + CVar(Proc_6_45_EAD428("Luxury tax", &H10)))
  loc_17FF7B9: var_1D4 = (var_1C4 + "|")
  loc_17FF7C0: var_1F4 = (Space(1) + Space(5))
  loc_17FF7CA: var_234 = (CVar(Proc_6_45_EAD428("of Guests", &HD) & "|" & Proc_6_45_EAD428("IN THE MONTH", &H15)) + CVar(Proc_6_45_EAD428("Paid to ", &H10)))
  loc_17FF7D3: var_244 = (var_234 + "|")
  loc_17FF7DA: var_2D4 = ("|" & var_234 + Space(3))
  loc_17FF7E4: var_2FC = (var_2D4 + CVar(Proc_6_45_EAD428("if", &HA)))
  loc_17FF7ED: var_30C = (var_2FC + "|")
  loc_17FF7F3: Print 1, var_30C
  loc_17FF8FD: var_170 = (Space(&HD) + "|")
  loc_17FF904: var_1A0 = (CVar(var_2A0 & "|" & Proc_6_45_EAD428("for Accommodation", &H15) & "|") + Space(&H15))
  loc_17FF90D: var_1C4 = (CVar(Proc_6_45_EAD428("Luxury tax", &H10)) + "|")
  loc_17FF914: var_1E4 = (var_1C4 + Space(&H15))
  loc_17FF91D: var_1F4 = (Space(5) + "|")
  loc_17FF927: var_234 = (CVar(Proc_6_45_EAD428("collected", &H10)) + CVar(Proc_6_45_EAD428("For Residence", &H15)))
  loc_17FF930: var_244 = (var_234 + "|")
  loc_17FF937: var_2D4 = ("|" & var_234 + Space(5))
  loc_17FF941: var_2FC = (var_2D4 + CVar(Proc_6_45_EAD428("collected", &H10)))
  loc_17FF94A: var_30C = (var_2FC + "|")
  loc_17FF951: var_32C = (var_30C + Space(5))
  loc_17FF95B: var_354 = (var_32C + CVar(Proc_6_45_EAD428("Government", &H10)))
  loc_17FF964: var_384 = (var_354 + "|")
  loc_17FF96B: var_3A4 = (var_384 + Space(3))
  loc_17FF975: var_3C4 = (var_3A4 + CVar(Proc_6_45_EAD428("any", &HA)))
  loc_17FF97E: var_3D4 = (var_3C4 + "|")
  loc_17FF984: Print 1, var_3D4
  loc_17FF9F6: var_170 = (Space(&HD) + "|")
  loc_17FFA00: var_190 = (CVar(var_2A0 & "|" & Proc_6_45_EAD428("for Accommodation", &H15) & "|") + CVar(var_B8))
  loc_17FFA09: var_1A0 = (Space(&H15) + "|")
  loc_17FFA13: var_1C4 = (CVar(Proc_6_45_EAD428("Luxury tax", &H10)) + CVar(var_104))
  loc_17FFA1C: var_1D4 = (var_1C4 + "|")
  loc_17FFA26: var_1E4 = (Space(&H15) + CVar(var_104))
  loc_17FFA2F: var_1F4 = (Space(5) + "|")
  loc_17FFA39: var_214 = (CVar(Proc_6_45_EAD428("collected", &H10)) + CVar(var_104))
  loc_17FFA42: var_234 = (CVar(Proc_6_45_EAD428("For Residence", &H15)) + "|")
  loc_17FFA49: var_264 = (var_234 + Space(&HD))
  loc_17FFA52: var_2D4 = (Space(5) + "|")
  loc_17FFA58: Print 1, var_2D4
  loc_17FFB6C: var_46C = Space(&HD)
  loc_17FFB79: var_170 = (Space(&HD) + "|")
  loc_17FFB80: var_190 = CVar(Proc_6_45_EAD428("INDIAN", &HA)) 'String
  loc_17FFB83: var_1A0 = (CVar("Challan No" & "|" & Proc_6_45_EAD428("for Accommodation", &H15) & "|") + var_190)
  loc_17FFB8C: var_1C4 = (CVar(Proc_6_45_EAD428("Luxury tax", &H10)) + "|")
  loc_17FFB96: var_1E4 = (var_1C4 + CVar(Proc_6_45_EAD428("FOREIGNER", &HA)))
  loc_17FFB9F: var_1F4 = (Space(5) + "|")
  loc_17FFBA9: var_234 = (CVar("FOREIGNER") + CVar(Proc_6_45_EAD428("INDIAN", &HA)))
  loc_17FFBB2: var_244 = (var_234 + "|")
  loc_17FFBBC: var_2D4 = (Space(&HD) + CVar(Proc_6_45_EAD428("FOREIGNER", &HA)))
  loc_17FFBC5: var_2EC = (var_2D4 + "|")
  loc_17FFBCF: var_30C = (CVar(Proc_6_45_EAD428("collected", &H10)) + CVar(Proc_6_45_EAD428("INDIAN", &HA)))
  loc_17FFBD8: var_31C = (var_30C + "|")
  loc_17FFBDF: var_32C = CVar(Proc_6_45_EAD428("FOREIGNER", &HA)) 'String
  loc_17FFBE2: var_344 = (Space(5) + var_32C)
  loc_17FFBEB: var_354 = (CVar(Proc_6_45_EAD428("Government", &H10)) + "|")
  loc_17FFBF5: var_394 = (var_354 + CVar(Proc_6_45_EAD428("INDIAN", &HA)))
  loc_17FFBFE: var_3A4 = (Space(3) + "|")
  loc_17FFC08: var_3C4 = (var_3A4 + CVar(Proc_6_45_EAD428("FOREIGNER", &HA)))
  loc_17FFC11: var_3D4 = (var_3C4 + "|")
  loc_17FFC1B: var_408 = (var_3D4 + CVar(Proc_6_45_EAD428("Amount", &HA)))
  loc_17FFC24: var_418 = (var_408 + "|")
  loc_17FFC2E: var_43C = (var_418 + CVar(Proc_6_45_EAD428("Challan No", &HA)))
  loc_17FFC37: var_45C = (var_43C + "|")
  loc_17FFC3E: var_47C = (var_45C + var_46C)
  loc_17FFC47: var_49C = (var_47C + "|")
  loc_17FFC4D: Print 1, var_49C
  loc_17FFCCC: Print 1, var_B4
  loc_17FFCD7: Print 1, vbNullString
  loc_17FFCF1: var_170 = CVar((var_D0 + var_D4)) 'Long
  loc_17FFCF8: Proc_6_39_E7C810(var_190, CVar("Challan No" & "|" & Proc_6_45_EAD428("for Accommodation", &H15) & "|"))
  loc_17FFD2A: Proc_6_39_E7C810(CVar("FOREIGNER"), var_D0)
  loc_17FFD5C: Proc_6_39_E7C810(var_2D4, var_D4)
  loc_17FFD8E: Proc_6_39_E7C810(var_32C, var_C8)
  loc_17FFDC0: Proc_6_39_E7C810(var_3A4, var_CC)
  loc_17FFDF2: Proc_6_39_E7C810(var_408, var_E0)
  loc_17FFE24: Proc_6_39_E7C810(var_46C, var_F0)
  loc_17FFE56: Proc_6_39_E7C810(var_4CC, var_F8)
  loc_17FFE88: Proc_6_39_E7C810(var_51C, var_100)
  loc_17FFEAB: var_1C4 = (Space(2) + CVar(Proc_6_45_EAD428(CStr(var_190), 8)))
  loc_17FFEB2: var_1E4 = (var_1C4 + Space(3))
  loc_17FFEBC: var_234 = (Space(5) + CVar(Proc_6_52_EAD4F4(CStr(CVar("FOREIGNER")), 8)))
  loc_17FFEC3: var_264 = (var_234 + Space(3))
  loc_17FFECD: var_2FC = (CVar(Proc_6_45_EAD428("FOREIGNER", &HA)) + CVar(Proc_6_52_EAD4F4(CStr(var_2D4), 8)))
  loc_17FFED4: var_31C = (CVar(Proc_6_45_EAD428("INDIAN", &HA)) + Space(3))
  loc_17FFEDE: var_354 = (Space(5) + CVar(Proc_6_52_EAD4F4(CStr(var_32C), 8)))
  loc_17FFEE5: var_394 = (var_354 + Space(3))
  loc_17FFEEF: var_3C4 = (Space(3) + CVar(Proc_6_52_EAD4F4(CStr(var_3A4), 8)))
  loc_17FFEF6: var_3F8 = (var_3C4 + Space(3))
  loc_17FFF00: var_42C = (CVar(Proc_6_45_EAD428("Amount", &HA)) + CVar(Proc_6_52_EAD4F4(CStr(var_408), 8)))
  loc_17FFF07: var_45C = (CVar(Proc_6_45_EAD428("Challan No", &HA)) + Space(3))
  loc_17FFF11: var_49C = (var_45C + CVar(Proc_6_52_EAD4F4(CStr(var_46C), 8)))
  loc_17FFF18: var_4BC = (var_49C + Space(3))
  loc_17FFF22: var_4EC = (var_4BC + CVar(Proc_6_52_EAD4F4(CStr(var_4CC), 8)))
  loc_17FFF29: var_50C = (var_4EC + Space(3))
  loc_17FFF33: var_53C = (var_50C + CVar(Proc_6_52_EAD4F4(CStr(var_51C), 8)))
  loc_17FFF39: Print 1, var_53C
  loc_17FFFC8: Print 1, vbNullString
  loc_17FFFD3: Print 1, vbNullString
  loc_17FFFDE: Print 1, vbNullString
  loc_17FFFE9: Print 1, var_BC
  loc_17FFFF4: Print 1, vbNullString
  loc_17FFFFF: Print 1, vbNullString
  loc_1800025: var_190 = Space((&H96 - (&H5A + Len("Signature:"))))
  loc_180004B: var_1A4 = Replace(CStr(var_190), " ", ".", 1, -1, 0)
  loc_1800056: var_170 = (Space(&H5A) + "Signature:")
  loc_1800060: var_1C4 = (CVar(Proc_6_45_EAD428(CStr(var_190), 8) & "|" & Proc_6_45_EAD428("for Accommodation", &H15) & "|") + CVar("FOREIGNER"))
  loc_1800066: Print 1, var_1C4
  loc_1800085: Print 1, vbNullString
  loc_18000AB: var_190 = Space((&H96 - (&H5A + Len("Name:"))))
  loc_18000D1: var_1A4 = Replace(CStr(var_190), " ", ".", 1, -1, 0)
  loc_18000DC: var_170 = (Space(&H5A) + "Name:")
  loc_18000E6: var_1C4 = (CVar(Proc_6_45_EAD428(CStr(var_190), 8) & "|" & Proc_6_45_EAD428("for Accommodation", &H15) & "|") + CVar("FOREIGNER"))
  loc_18000EC: Print 1, var_1C4
  loc_180010B: Print 1, vbNullString
  loc_1800131: var_190 = Space((&H96 - (&H5A + Len("Designation:"))))
  loc_1800157: var_1A4 = Replace(CStr(var_190), " ", ".", 1, -1, 0)
  loc_1800162: var_170 = (Space(&H5A) + "Designation:")
  loc_180016C: var_1C4 = (CVar(Proc_6_45_EAD428(CStr(var_190), 8) & "|" & Proc_6_45_EAD428("for Accommodation", &H15) & "|") + CVar("FOREIGNER"))
  loc_1800172: Print 1, var_1C4
  loc_18001A1: var_170 = (Space(2) + "Date ........................")
  loc_18001A7: Print 1, CVar(Proc_6_45_EAD428(CStr(var_190), 8) & "|" & Proc_6_45_EAD428("for Accommodation", &H15) & "|")
  loc_18001B9: Print 1, vbNullString
  loc_18001DF: var_190 = Space((&H96 - (5 + Len("I, the above named Shri "))))
  loc_1800205: var_1A4 = Replace(CStr(var_190), " ", ".", 1, -1, 0)
  loc_1800210: var_170 = (Space(5) + "I, the above named Shri ")
  loc_180021A: var_1C4 = (CVar(Proc_6_45_EAD428(CStr(var_190), 8) & "|" & Proc_6_45_EAD428("for Accommodation", &H15) & "|") + CVar("FOREIGNER"))
  loc_1800220: Print 1, var_1C4
  loc_180023F: Print 1, vbNullString
  loc_180026A: var_190 = Space((&H96 - ((2 + Len("Residence of ")) + Len("do hereby solemnly affirm and"))))
  loc_1800290: var_1A4 = Replace(CStr(var_190), " ", ".", 1, -1, 0)
  loc_180029B: var_170 = (Space(2) + "Residence of ")
  loc_18002A5: var_1C4 = (CVar(Proc_6_45_EAD428(CStr(var_190), 8) & "|" & Proc_6_45_EAD428("for Accommodation", &H15) & "|") + CVar("FOREIGNER"))
  loc_18002AE: var_1D4 = (var_1C4 + " do hereby solemnly affirm and")
  loc_18002B4: Print 1, Space(3)
  loc_18002D5: Print 1, vbNullString
  loc_18002F0: var_170 = (Space(2) + "State that the contents of the return are true to best of my information and belief.")
  loc_18002F6: Print 1, CVar(Proc_6_45_EAD428(CStr(var_190), 8) & "|" & Proc_6_45_EAD428("for Accommodation", &H15) & "|")
  loc_1800308: Print 1, vbNullString
  loc_180033A: var_190 = Space((&H96 - ((2 + Len(MemVar_1F9213C)) + Len("For " & MemVar_1F92130))))
  loc_1800348: var_170 = (Space(2) + CVar(MemVar_1F9213C))
  loc_180034F: var_1A0 = (CVar(Proc_6_45_EAD428(CStr(var_190), 8) & "|" & Proc_6_45_EAD428("for Accommodation", &H15) & "|") + var_190)
  loc_1800358: var_1C4 = (CVar("FOREIGNER") + "For ")
  loc_1800362: var_1D4 = (var_1C4 + CVar(MemVar_1F92130))
  loc_1800368: Print 1, Space(3)
  loc_1800385: Print 1, vbNullString
  loc_1800390: Print 1, vbNullString
  loc_18003BB: var_190 = Space((&H96 - ((2 + Len("Date ........................")) + Len(" Signature of Prop. / Manager"))))
  loc_18003C8: var_170 = (Space(2) + "Date ........................")
  loc_18003CF: var_1A0 = (CVar(Proc_6_45_EAD428(CStr(var_190), 8) & "|" & Proc_6_45_EAD428("for Accommodation", &H15) & "|") + var_190)
  loc_18003D8: var_1C4 = (CVar("FOREIGNER") + " Signature of Prop. / Manager")
  loc_18003DE: Print 1, var_1C4
  loc_18003FA: var_88 = (var_88 + &H1B)
  loc_180040F: Print 1, Chr(&HC)
  loc_180041A: Close 1
  loc_1800423: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1800433: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_180043E: Close 1
  loc_1800448: If (MemVar_1F923B8 = "Y") Then
  loc_1800464:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_180046E: Else
  loc_1800487:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_180048E: End If
  loc_1800493: global_88 = 0
  loc_180049B: Set var_B0 = Nothing
  loc_18004A3: Set var_AC = Nothing
  loc_18004A6: Exit Sub
  loc_18004A7: ' Referenced from: 17FE45D
  loc_18004A7: Proc_6_60_E62BC4(global_88, 0)
  loc_18004B1: global_88 = 0
  loc_18004B4: Exit Sub
End Sub

Public Sub Proc_66_35_15C9E88
  'Data Table: 540784
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_13C As String
  Dim var_14C As Variant
  Dim var_104 As Variant
  Dim var_1A0 As Variant
  Dim var_AC As Long
  Dim var_B0 As Long
  Dim var_B4 As Long
  Dim var_B8 As Long
  Dim unk_5407B4 As Connection15
  Dim var_9C As Recordset15
  Dim var_24C As Field20
  Dim var_C4 As Double
  Dim var_17C As Variant
  Dim var_250 As Fields15
  Dim var_98 As Recordset15
  Dim var_CC As Double
  Dim var_DC As Double
  Dim var_D4 As Double
  Dim var_E4 As Double
  Dim var_258 As Recordset15
  loc_15C8B9C: On Error Goto loc_15C9E77
  loc_15C8BA2: var_F4 = CVar(CLng(0)) 'Long
  loc_15C8BA7: var_114 = 1
  loc_15C8BF5: var_8C = CStr(Format(CVar("01/" & CStr(Me.FGrid.TextMatrix))), "dd/MMM/yyyy"))
  loc_15C8C0F: var_F4 = CVar(CLng(0)) 'Long
  loc_15C8C21: Set var_128 = Me.FGrid
  loc_15C8C27: var_138 = var_128.TextMatrix)
  loc_15C8C5B: var_17C = DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & CStr(var_138)))))
  loc_15C8C84: var_90 = CStr(Format(var_17C, "dd/MMM/yyyy"))
  loc_15C8CB0: Proc_6_7_F25D88(var_138, var_8C, " (ChkInDt Between ", 1, 1, var_8C)
  loc_15C8CBC: var_114 = " and  "
  loc_15C8CD0: Proc_6_7_F25D88(var_17C, var_90, "01/" & var_138 & var_114, 1)
  loc_15C8CF0: Proc_6_7_F25D88(var_1C0, var_8C, 1 & var_17C & " Or ChkOutDt Between ")
  loc_15C8D10: Proc_6_7_F25D88(var_210, var_90, var_138 & var_1C0 & " and  ")
  loc_15C8D26: var_A4 = CStr(var_114 & var_210 & " Or ChkOutDt Is Null)")
  loc_15C8D49: var_AC = 0
  loc_15C8D51: var_B0 = 0
  loc_15C8D59: var_B4 = 0
  loc_15C8D61: var_B8 = 0
  loc_15C8D67: var_BC = vbNullString
  loc_15C8D7E: var_13C = "Select DocId,(Adult+Children) As Indian,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & var_A4
  loc_15C8D8E: unk_5407B4.Execute CStr(var_138) & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' Order By DocId,SNo", var_138, -1
  loc_15C8D99: Set var_9C = var_128
  loc_15C8DBD: var_13C = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & var_A4
  loc_15C8DCD: unk_5407B4.Execute CStr(var_138) & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By DocId,SNo", var_138, -1
  loc_15C8DD8: Set var_98 = var_128
  loc_15C8DFC: If (var_9C.RecordCount > 0) Then
  loc_15C8DFF:   ' Referenced from: 15C9256
  loc_15C8E0E:   If Not(var_9C.EOF) Then
  loc_15C8E51:     If (var_9C.Fields.Item("CheckIn").Value < CDate(CDate(var_8C))) Then
  loc_15C8E59:       var_C4 = CDate(var_8C)
  loc_15C8E5F:     Else
  loc_15C8E9F:       If (var_9C.Fields.Item("CheckIn").Value > CDate(CDate(var_90))) Then
  loc_15C8EA7:         var_C4 = CDate(var_90)
  loc_15C8EAD:       Else
  loc_15C8ED9:         var_C4 = CDate(var_9C.Fields.Item("CheckIn").Value)
  loc_15C8EE6:       End If
  loc_15C8EE6:     End If
  loc_15C8F22:     If CBool(var_9C.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_15C8F65:       If (var_9C.Fields.Item("CheckOut").Value > CDate(CDate(var_90))) Then
  loc_15C8FC6:         var_1A0 = (CVar(var_AC) + (DateDiff("D", var_C4, CDate(CDate(var_90)), 1, 1) * var_9C.Fields.Item("Indian").Value))
  loc_15C8FCC:         var_AC = CLng(1 & (DateDiff("D", var_C4, CDate(CDate(var_90)), 1, 1) * var_9C.Fields.Item("Indian").Value))
  loc_15C8FE4:       Else
  loc_15C905C:         var_1A0 = (CVar(var_AC) + (DateDiff("D", var_C4, CVar(var_9C.Fields.Item("CheckOut")), 1, 1) * var_9C.Fields.Item("Indian").Value))
  loc_15C9062:         var_AC = CLng(1 & (DateDiff("D", var_C4, CVar(var_9C.Fields.Item("CheckOut")), 1, 1) * var_9C.Fields.Item("Indian").Value))
  loc_15C9079:       End If
  loc_15C907C:     Else
  loc_15C9085:       If (MemVar_1F920EC < CDate(var_90)) Then
  loc_15C90E4:         var_1A0 = (CVar(var_AC) + (DateDiff("D", var_C4, CDate(MemVar_1F920EC), 1, 1) * var_9C.Fields.Item("Indian").Value))
  loc_15C90EA:         var_AC = CLng(1 & (DateDiff("D", var_C4, CDate(MemVar_1F920EC), 1, 1) * var_9C.Fields.Item("Indian").Value))
  loc_15C9102:       Else
  loc_15C9160:         var_1A0 = (CVar(var_AC) + (DateDiff("D", var_C4, CDate(CDate(var_90)), 1, 1) * var_9C.Fields.Item("Indian").Value))
  loc_15C9166:         var_AC = CLng(1 & (DateDiff("D", var_C4, CDate(CDate(var_90)), 1, 1) * var_9C.Fields.Item("Indian").Value))
  loc_15C917B:       End If
  loc_15C917B:     End If
  loc_15C91EB:     var_1A0 = (var_9C.Fields.Item("CheckIn").Value >= CDate(CDate(var_8C))) And (var_9C.Fields.Item("CheckIn").Value <= CDate(CDate(var_90)))
  loc_15C9203:     If CBool(var_1A0) Then
  loc_15C9237:       var_14C = (CVar(var_B4) + var_9C.Fields.Item("Indian").Value)
  loc_15C923D:       var_B4 = CLng(DateDiff("D", var_C4, CDate(CDate(var_90)), 1, 1))
  loc_15C924E:     End If
  loc_15C9251:     var_9C.MoveNext
  loc_15C9256:     GoTo loc_15C8DFF
  loc_15C9259:   End If
  loc_15C9259: End If
  loc_15C925F: var_244 = var_98.RecordCount
  loc_15C926D: If (var_244 > 0) Then
  loc_15C9270:   ' Referenced from: 15C96C7
  loc_15C927F:   If Not(var_98.EOF) Then
  loc_15C92C2:     If (var_98.Fields.Item("CheckIn").Value < CDate(CDate(var_8C))) Then
  loc_15C92CA:       var_C4 = CDate(var_8C)
  loc_15C92D0:     Else
  loc_15C9310:       If (var_98.Fields.Item("CheckIn").Value > CDate(CDate(var_90))) Then
  loc_15C9318:         var_C4 = CDate(var_90)
  loc_15C931E:       Else
  loc_15C934A:         var_C4 = CDate(var_98.Fields.Item("CheckIn").Value)
  loc_15C9357:       End If
  loc_15C9357:     End If
  loc_15C9393:     If CBool(var_98.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_15C93D6:       If (var_98.Fields.Item("CheckOut").Value > CDate(CDate(var_90))) Then
  loc_15C9437:         var_1A0 = (CVar(var_B0) + (DateDiff("D", var_C4, CDate(CDate(var_90)), 1, 1) * var_98.Fields.Item("Foreigner").Value))
  loc_15C943D:         var_B0 = CLng(var_1A0)
  loc_15C9455:       Else
  loc_15C94CD:         var_1A0 = (CVar(var_B0) + (DateDiff("D", var_C4, CVar(var_98.Fields.Item("CheckOut")), 1, 1) * var_98.Fields.Item("Foreigner").Value))
  loc_15C94D3:         var_B0 = CLng(var_1A0)
  loc_15C94EA:       End If
  loc_15C94ED:     Else
  loc_15C94F6:       If (MemVar_1F920EC < CDate(var_90)) Then
  loc_15C9555:         var_1A0 = (CVar(var_B0) + (DateDiff("D", var_C4, CDate(MemVar_1F920EC), 1, 1) * var_98.Fields.Item("Foreigner").Value))
  loc_15C955B:         var_B0 = CLng(var_1A0)
  loc_15C9573:       Else
  loc_15C95D1:         var_1A0 = (CVar(var_B0) + (DateDiff("D", var_C4, CDate(CDate(var_90)), 1, 1) * var_98.Fields.Item("Foreigner").Value))
  loc_15C95D7:         var_B0 = CLng(var_1A0)
  loc_15C95EC:       End If
  loc_15C95EC:     End If
  loc_15C9636:     var_250 = var_98.Fields
  loc_15C9658:     var_17C = (var_250.Item("CheckIn").Value <= CDate(CDate(var_90)))
  loc_15C9674:     If CBool((var_98.Fields.Item("CheckIn").Value >= CDate(CDate(var_8C))) And var_17C) Then
  loc_15C9690:       var_128 = var_98.Fields
  loc_15C96A0:       var_138 = var_128.Item("Foreigner").Value
  loc_15C96A8:       var_14C = (CVar(var_B8) + var_138)
  loc_15C96AE:       var_B8 = CLng(DateDiff("D", var_C4, CDate(CDate(var_90)), 1, 1))
  loc_15C96BF:     End If
  loc_15C96C2:     var_98.MoveNext
  loc_15C96C7:     GoTo loc_15C9270
  loc_15C96CA:   End If
  loc_15C96CA: End If
  loc_15C96DA: Proc_6_7_F25D88(var_138, var_8C, "R.Nature='Room Charge' AND PP.VDate Between ", var_B8, var_B0, var_B0, var_B0)
  loc_15C96FA: Proc_6_7_F25D88(var_17C, var_90, var_B0 & var_138 & " and  ", var_C4, var_C4)
  loc_15C9702: var_1A0 = var_C4 & var_17C 
  loc_15C9707: var_A4 = CStr(var_1A0)
  loc_15C972C: var_14C = CVar("PP.PayCode='" & MemVar_1F92078 & "LT" & "'  AND PP.VDate Between ") 'String
  loc_15C973A: Proc_6_7_F25D88(var_138, var_8C, var_14C)
  loc_15C9752: var_114 = var_90
  loc_15C975A: Proc_6_7_F25D88(var_1A0, var_114, var_B4 & var_138 & " and  ")
  loc_15C9767: var_A8 = CStr(var_AC & var_1A0)
  loc_15C9794: var_13C = "Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr-pp.AmtCr) As Amount From PayCharge PP JOIN  GuestFolio GF  on PP.FolioNoDocId = GF.DocID  Join GuestProf GP ON GF.GuestProf=GP.Code Left Join RevMast R On R.Code=pp.PayCode Where GP.Type<>'Foreign' AND " & var_A4
  loc_15C979D: unk_5407B4.Execute MemVar_1F92078 & "LT", var_138, -1
  loc_15C97C3: var_128 = var_128.Fields
  loc_15C97D3: var_138 = CVar(var_128.Item("Amount")) 'Address
  loc_15C97DA: Proc_6_39_E7C810(var_14C, var_138)
  loc_15C9803: var_CC = CSng(Format(var_14C, "0.00"))
  loc_15C9828: var_13C = "Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr-pp.AmtCr) As Amount From PayCharge PP JOIN  GuestFolio GF  on PP.FolioNoDocId = GF.DocID  Join GuestProf GP ON GF.GuestProf=GP.Code Where GP.Type<>'Foreign' AND " & var_A8
  loc_15C9831: unk_5407B4.Execute MemVar_1F92078 & "LT", var_138, -1
  loc_15C9857: var_128 = var_128.Fields
  loc_15C9867: var_138 = CVar(var_128.Item("Amount")) 'Address
  loc_15C986E: Proc_6_39_E7C810(var_14C, var_138, var_128, var_CC)
  loc_15C9897: var_DC = CSng(Format(var_14C, "0.00"))
  loc_15C98BC: var_13C = "Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr-pp.AmtCr) As Amount From PayCharge PP JOIN  GuestFolio GF  on PP.FolioNoDocId = GF.DocID Join GuestProf GP ON GF.GuestProf=GP.Code Left Join RevMast R On R.Code=pp.PayCode Where GP.Type='Foreign' AND " & var_A4
  loc_15C98C5: unk_5407B4.Execute MemVar_1F92078 & "LT", var_138, -1
  loc_15C98EB: var_128 = var_128.Fields
  loc_15C98FB: var_138 = CVar(var_128.Item("Amount")) 'Address
  loc_15C9902: Proc_6_39_E7C810(var_14C, var_138, var_128, var_DC, 1)
  loc_15C992B: var_D4 = CSng(Format(var_14C, "0.00"))
  loc_15C9950: var_13C = "Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr-pp.AmtCr) As Amount From PayCharge PP JOIN  GuestFolio GF  on PP.FolioNoDocId = GF.DocID Join GuestProf GP ON GF.GuestProf=GP.Code Where GP.Type='Foreign' AND " & var_A8
  loc_15C9959: unk_5407B4.Execute MemVar_1F92078 & "LT", var_138, -1
  loc_15C9973: var_F4 = "Amount"
  loc_15C997F: var_128 = var_128.Fields
  loc_15C9987: var_24C = var_128.Item(var_F4)
  loc_15C9996: Proc_6_39_E7C810(var_14C, CVar(var_24C), var_128, var_D4, 1, 1)
  loc_15C99A5: var_104 = "0.00"
  loc_15C99BF: var_E4 = CSng(Format(var_14C, var_104))
  loc_15C99DD: Call Proc_66_54_FC4368(New, var_128, var_E4, 1, 1)
  loc_15C99E5: Set var_A0 = var_128
  loc_15C99EB: Set var_258 = var_A0 
  loc_15C99FA: Me.Recordset15.AddNew var_F4, var_104
  loc_15C9A04: var_138 = CVar(CStr(var_B4)) 'String
  loc_15C9A11: var_258.Collect = "IndianGuest"
  loc_15C9A1E: var_138 = CVar(CStr(var_B8)) 'String
  loc_15C9A2B: var_258.Collect = "ForeignerGuest"
  loc_15C9A38: var_138 = CVar(CStr(var_AC)) 'String
  loc_15C9A45: var_258.Collect = "IndianNight"
  loc_15C9A52: var_138 = CVar(CStr(var_B0)) 'String
  loc_15C9A5F: var_258.Collect = "ForeignerNight"
  loc_15C9A6C: var_138 = CVar(CStr(var_CC)) 'String
  loc_15C9A79: var_258.Collect = "IndianChrgs"
  loc_15C9A86: var_138 = CVar(CStr(var_D4)) 'String
  loc_15C9A93: var_258.Collect = "ForeignerChrgs"
  loc_15C9AA0: var_138 = CVar(CStr(var_DC)) 'String
  loc_15C9AAD: var_258.Collect = "IndianTax"
  loc_15C9ABE: var_F4 = "ForeignerTax"
  loc_15C9AC7: var_258.Collect = var_F4
  loc_15C9ADA: var_258.Update var_F4, var_104
  loc_15C9AE1: Set var_258 = Nothing 
  loc_15C9AEB: global_84 = "Form-4"
  loc_15C9AF5: Call 0.Method_arg_50 (MemVar_1F92078 & "LT", CVar(CStr(var_E4)), CVar(CStr(var_E4)), CVar(CStr(var_E4)), CVar(CStr(var_E4)), CVar(CStr(var_E4)), CVar(CStr(var_E4)))
  loc_15C9AFD: var_138 = CVar(MemVar_1F92078 & "LT") 'String
  loc_15C9B12: global_80 = CStr(Ucase(var_138))
  loc_15C9B47: Set var_128 = var_A0 
  loc_15C9B4E: CreateFieldDefFile(var_128, MemVar_1F920B4 & "\" & global_84 & ".ttx", &HFF, var_138, var_138)
  loc_15C9B79: var_13C = MemVar_1F920B4 & "\"
  loc_15C9B93: Call 0.Method_arg_1C (var_13C & global_84 & ".RPT", var_F4, var_128, 1)
  loc_15C9B9E: MemVar_1F921E4 = var_128
  loc_15C9BC7: Call 0.Method_arg_64 (var_128, CVar(var_128), var_104, var_114)
  loc_15C9BCF: Call 0.Method_arg_2C (1, 1)
  loc_15C9BDD: Call 0.Method_arg_150 (var_128)
  loc_15C9BF6: Call 0.Method_arg_90 (var_128, var_244, var_94)
  loc_15C9BFE: Call 0.Method_arg_24 (1)
  loc_15C9C09: For var_268 =  To var_244: var_AC = var_268 'Long
  loc_15C9C21:   Call 0.Method_arg_90 (var_128, var_94)
  loc_15C9C29:   Call 0.Method_arg_20 (var_24C)
  loc_15C9C31:   Call 0.Method_arg_30 (var_13C)
  loc_15C9C47:   var_278 = Ucase(CVar(var_13C)) 'Variant
  loc_15C9C60:   If (var_278 = "FROMDATE") Then
  loc_15C9CA9:     Call 0.Method_arg_90 (var_24C, var_94, var_250)
  loc_15C9CB1:     Call 0.Method_arg_20 (1 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(0)))
  loc_15C9CB9:     Call 0.Method_arg_38 ("'")
  loc_15C9CD6:   Else
  loc_15C9CE1:     If (var_278 = "TODATE") Then
  loc_15C9CFC:       Set var_128 = Me.FGrid
  loc_15C9D2A:       Call 0.Method_arg_90 (var_24C, var_94, var_250)
  loc_15C9D32:       Call 0.Method_arg_20 (1 & CStr(var_128.TextMatrix)) & "'", CVar(CLng(1)))
  loc_15C9D3A:       Call 0.Method_arg_38 ("'")
  loc_15C9D57:     Else
  loc_15C9D62:       If (var_278 = "TITLE") Then
  loc_15C9D88:         Call 0.Method_arg_90 (var_128, var_94)
  loc_15C9D90:         Call 0.Method_arg_20 (var_24C)
  loc_15C9D98:         Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_15C9DAE:       Else
  loc_15C9DB9:         If (var_278 = "PRINTDATE") Then
  loc_15C9DE8:           Call 0.Method_arg_90 (var_128, var_94)
  loc_15C9DF0:           Call 0.Method_arg_20 (var_24C)
  loc_15C9DF8:           Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F920EC) & "'"))
  loc_15C9E0E:         End If
  loc_15C9E0E:       End If
  loc_15C9E0E:     End If
  loc_15C9E0E:   End If
  loc_15C9E11: Next var_268 'Long
  loc_15C9E1B: Set var_24C = Nothing
  loc_15C9E34: Set var_128 = MemVar_1F921E4 
  loc_15C9E40: Proc_6_99_1483714(var_128, 0, global_80)
  loc_15C9E4B: MemVar_1F921E4 = var_128
  loc_15C9E5B: global_88 = 0
  loc_15C9E63: Set var_A0 = Nothing
  loc_15C9E6B: Set var_9C = Nothing
  loc_15C9E73: Set var_98 = Nothing
  loc_15C9E76: Exit Sub
  loc_15C9E77: ' Referenced from: 15C8B9C
  loc_15C9E77: Proc_6_60_E62BC4(global_88, &HFF)
  loc_15C9E81: global_88 = 0
  loc_15C9E84: Exit Sub
End Sub

Public Sub Proc_66_36_14E3070(arg_C) '14E3070
  'Data Table: 540784
  Dim var_8C As Recordset15
  loc_14E225D: Set var_8C = arg_C 
  loc_14E2285: var_8C.Fields.Append "DocId", &HC8, &H28
  loc_14E22B1: var_8C.Fields.Append "PartyName", &HC8, &H32
  loc_14E22DD: var_8C.Fields.Append "PartyAdd1", &HC8, &H64
  loc_14E2309: var_8C.Fields.Append "PartyAdd2", &HC8, &H64
  loc_14E2335: var_8C.Fields.Append "PartyCity", &HC8, &H32
  loc_14E2361: var_8C.Fields.Append "ChkInDate", &HC8, &H14
  loc_14E238D: var_8C.Fields.Append "ChkOutDate", &HC8, &H14
  loc_14E23B9: var_8C.Fields.Append "ChkInTime", &HC8, &H14
  loc_14E23E5: var_8C.Fields.Append "FolioNo", &HC8, &HF
  loc_14E2411: var_8C.Fields.Append "Persons", &HC8, &HF
  loc_14E243D: var_8C.Fields.Append "RoomRate", &HC8, &H14
  loc_14E2469: var_8C.Fields.Append "RoomNo", &HC8, &HA
  loc_14E2495: var_8C.Fields.Append "DisRoom", &HC8, &H14
  loc_14E24C1: var_8C.Fields.Append "incTax", &HC8, &HA
  loc_14E24ED: var_8C.Fields.Append "ServiceChrg", &HC8, &HA
  loc_14E2519: var_8C.Fields.Append "Company", &HC8, &H4B
  loc_14E2545: var_8C.Fields.Append "Nationality", &HC8, &H1E
  loc_14E2571: var_8C.Fields.Append "Agent", &HC8, &H4B
  loc_14E259D: var_8C.Fields.Append "Plan", &HC8, &H32
  loc_14E25C9: var_8C.Fields.Append "Phone", &HC8, &H19
  loc_14E25F5: var_8C.Fields.Append "ArrFrom", &HC8, &H1E
  loc_14E2621: var_8C.Fields.Append "Destination", &HC8, &H32
  loc_14E264D: var_8C.Fields.Append "Cmt1", &HC8, &H32
  loc_14E2679: var_8C.Fields.Append "Cmt2", &HC8, &H32
  loc_14E26A5: var_8C.Fields.Append "Cmt3", &HC8, &H32
  loc_14E26D1: var_8C.Fields.Append "grpRooms", &HC8, &HFF
  loc_14E26FD: var_8C.Fields.Append "Leader", &HC8, &H14
  loc_14E2729: var_8C.Fields.Append "User", &HC8, &H32
  loc_14E2755: var_8C.Fields.Append "Remark", &HC8, &H50
  loc_14E2781: var_8C.Fields.Append "Picture1", &HCD, &H3E8
  loc_14E27AD: var_8C.Fields.Append "PlanAmt", &HC8, &HC
  loc_14E27D9: var_8C.Fields.Append "EMailId", &HC8, &H32
  loc_14E2805: var_8C.Fields.Append "TravelMode", &HC8, &H1E
  loc_14E2831: var_8C.Fields.Append "RoomCat", &HC8, &H19
  loc_14E285D: var_8C.Fields.Append "BookedBy", &HC8, &H19
  loc_14E2889: var_8C.Fields.Append "ResMode", &HC8, &H1E
  loc_14E28B5: var_8C.Fields.Append "IdProof", &HC8, &H32
  loc_14E28E1: var_8C.Fields.Append "Anniversary", &HC8, &HC
  loc_14E290D: var_8C.Fields.Append "DateOfBirth", &HC8, &HC
  loc_14E2939: var_8C.Fields.Append "Age", &HC8, 4
  loc_14E2965: var_8C.Fields.Append "P_RegNo", &HC8, 8
  loc_14E2991: var_8C.Fields.Append "P_SerialNo", &HC8, 8
  loc_14E29BD: var_8C.Fields.Append "P_GuestName", &HC8, &H23
  loc_14E29E9: var_8C.Fields.Append "P_Add1", &HC8, &H32
  loc_14E2A15: var_8C.Fields.Append "P_Add2", &HC8, &H32
  loc_14E2A41: var_8C.Fields.Append "P_Nationality", &HC8, &H32
  loc_14E2A6D: var_8C.Fields.Append "P_Age", &HC8, 4
  loc_14E2A99: var_8C.Fields.Append "P_PurVisit", &HC8, &H32
  loc_14E2AC5: var_8C.Fields.Append "P_AddIndiaIfAny", &HC8, &H32
  loc_14E2AF1: var_8C.Fields.Append "P_DateArr", &HC8, &HC
  loc_14E2B1D: var_8C.Fields.Append "P_ArrPlace", &HC8, &H32
  loc_14E2B49: var_8C.Fields.Append "P_PropStay", &HC8, &H32
  loc_14E2B75: var_8C.Fields.Append "P_ArrFrom", &HC8, &H32
  loc_14E2BA1: var_8C.Fields.Append "P_ModeTravelatArrival", &HC8, &H32
  loc_14E2BCD: var_8C.Fields.Append "P_ProposedDepart", &HC8, &H32
  loc_14E2BF9: var_8C.Fields.Append "P_GoingTo", &HC8, &H32
  loc_14E2C25: var_8C.Fields.Append "P_ModeTravelAfterDepart", &HC8, &H32
  loc_14E2C51: var_8C.Fields.Append "P_VisaIssAuth", &HC8, &H32
  loc_14E2C7D: var_8C.Fields.Append "P_Extension", &HC8, &H64
  loc_14E2CA9: var_8C.Fields.Append "P_PassNo", &HC8, &H32
  loc_14E2CD5: var_8C.Fields.Append "P_IssDate", &HC8, &HC
  loc_14E2D01: var_8C.Fields.Append "P_IssPlace", &HC8, &H32
  loc_14E2D2D: var_8C.Fields.Append "P_PassExpDate", &HC8, &HC
  loc_14E2D59: var_8C.Fields.Append "P_WorkPermit", &HC8, &H32
  loc_14E2D85: var_8C.Fields.Append "P_VisaNo", &HC8, &H32
  loc_14E2DB1: var_8C.Fields.Append "P_VisaIssDate", &HC8, &HC
  loc_14E2DDD: var_8C.Fields.Append "P_VisaIssPlace", &HC8, &H32
  loc_14E2E09: var_8C.Fields.Append "P_VisaExpDate", &HC8, &HC
  loc_14E2E35: var_8C.Fields.Append "P_VisaDuration", &HC8, &H32
  loc_14E2E61: var_8C.Fields.Append "P_Vdate", &HC8, &HC
  loc_14E2E8D: var_8C.Fields.Append "FatherName", &HC8, &H4B
  loc_14E2EB9: var_8C.Fields.Append "PurVisit", &HC8, &H4B
  loc_14E2EE5: var_8C.Fields.Append "Mobile", &HC8, &H19
  loc_14E2F11: var_8C.Fields.Append "IdProofPic", &HCD, &H3E8
  loc_14E2F3D: var_8C.Fields.Append "IdProofNo", &HC8, &H4B
  loc_14E2F69: var_8C.Fields.Append "grpFolios", &HC8, &HFF
  loc_14E2F95: var_8C.Fields.Append "CompanyGSTIN", &HC8, &H14
  loc_14E2FC1: var_8C.Fields.Append "AgentGSTIN", &HC8, &H14
  loc_14E2FED: var_8C.Fields.Append "Nights", &HC8, 5
  loc_14E3019: var_8C.Fields.Append "Days", &HC8, 5
  loc_14E3029: var_8C.CursorType = 3
  loc_14E3036: var_8C.LockType = 3
  loc_14E3055: var_8C.Open var_A0, var_B0, -1
  loc_14E305C: Set var_8C = Nothing 
  loc_14E3063: Set var_88 = arg_C 
  loc_14E3067: Proc_66_36_14E3070 = -1
End Sub

Public Sub Proc_66_37_192B0DC
  'Data Table: 540784
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_26C As Double
  Dim var_138 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_274 As Double
  Dim var_AC As String
  Dim var_B0 As String
  Dim var_B4 As String
  Dim var_B8 As String
  Dim var_BC As String
  Dim var_C0 As String
  Dim var_C4 As String
  Dim var_18C As String
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_21C As Variant
  Dim unk_5407B4 As Connection15
  Dim var_88 As Recordset15
  Dim var_280 As Recordset15
  Dim var_E4 As Variant
  Dim var_264 As Variant
  Dim var_284 As Variant
  Dim var_1AC As Variant
  Dim var_288 As Variant
  Dim var_104 As Variant
  Dim var_8C As Recordset15
  Dim var_20C As Variant
  Dim var_90 As Recordset15
  Dim var_A4 As Image
  loc_19284E0: On Error Goto loc_192B099
  loc_19284E6: var_D4 = CVar(CLng(2)) 'Long
  loc_19284EB: var_F4 = 1
  loc_19284F8: Set var_108 = Me.FGrid
  loc_1928511: var_26C = Val(CStr(var_108.TextMatrix)))
  loc_192852F: var_17C = Me.FGrid.TextMatrix)
  loc_1928542: var_274 = Val(CStr(var_17C))
  loc_1928550: Proc_6_7_F25D88(var_1AC, MemVar_1F920F4, var_274, 1)
  loc_1928560: Proc_6_7_F25D88(var_20C, MemVar_1F920FC, CVar(CLng(3)))
  loc_1928579: var_AC = "SELECT GuestFolio.DocId, RoomCat.Name AS RoomCatNAme, RoomCat.Type, RoomCat.Name As RoomCategory, RoomOcc.RoomCat, RoomOcc.RoomNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.Adult, RoomOcc.Children, RoomOcc.DepDate, RoomOcc.DepTime, RoomOcc.Type, RoomOcc.PlanCode, GuestFolio.FolioNo, GuestFolio.Vtype, GuestFolio.Vdate, GuestFolio.Vprefix, GuestFolio.GuestProf, GuestProf.Name, GuestProf.FatherName, GuestFolio.Add1, GuestFolio.Add2, GuestProf.CityName, GuestProf.StateName," & " GuestProf.CountryName,GuestProf.PicPath,GuestProf.IdPicPath, GuestFolio.NoDays,Datediff(d,RoomOcc.ChkInDate,RoomOcc.DepDate) Nights, GuestFolio.SplitFolio, GuestFolio.Remarks, GuestFolio.Authorisation, GuestFolio.Company, GuestFolio.PurVisit, Country_1.Name As Nationality, GuestFolio.ArrFrom, GuestFolio.Destination, GuestFolio.TravelMode, GuestFolio.TclFac, GuestFolio.Remark, GuestFolio.RODisc, GuestFolio.RSDisc,GuestFolio.BookingDocId, City.CityName AS ArrivedFrom, City_1.CityName AS DestinationCity, SubGroup.Name AS CompanyName, SubGroup.GSTIN AS CompanyGSTIN, RoomOcc.ChkOutDate,"
  loc_1928580: var_B0 = var_AC & " RoomOcc.ChkOutTime,GuestFolio.GroupCode,RoomOcc.RRTaxInc,RoomOcc.RRServiceChrg, Book.BookedBy, Book.ResMode, GuestProf.Anniversary, GuestProf.BirthDate, GuestProf.Age"
  loc_1928587: var_B4 = var_B0 & " , GuestProf.PhoneNo, GuestProf.MobileNo, GuestProf.EmailId, GuestProf.IdProof, GuestProf.IdProofNo, GuestProf.Comments1,GuestProf.Comments2,GuestProf.Comments3 , GuestFolio.U_Name, PlanMast.Name As PlanName, GuestProf.U_Name  "
  loc_192858E: var_B8 = var_B4 & " , GuestFolio.BussSource, GuestFolio.MarketSeg, MarketSeg.Name as MarketSegName, BussSource.Name as BussSourceName, GuestFolio.TravelAgent, SG.Name as TravelAgentName, SG.GSTIN as TravelAgentGSTIN,GuestFolio.MFolioNo, RoomOcc.PlanAmt, RoomOcc.IncInRate, RoomOcc.RoomTaxStru, RoomOcc.RoomTarrif,Q.* FROM ((((((((((GuestFolio LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN PlanMAst On RoomOcc.PlanCode = PlanMast.Code ) LEFT JOIN City ON GuestFolio.ArrFrom = City.CityCode) "
  loc_1928595: var_BC = var_B8 & " LEFT JOIN City AS City_1 ON GuestFolio.Destination = City_1.CityCode) LEFT JOIN Country AS Country_1 ON GuestProf.Nationality = Country_1.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) LEFT JOIN MarketSeg ON GuestFolio.MarketSeg = MarketSeg.Code) LEFT JOIN BussSource ON GuestFolio.BussSource = BussSource.Code) LEFT JOIN SubGroup AS SG ON GuestFolio.TravelAgent = SG.SubCode LEFT JOIN Booking Book On Book.DocId=GuestFolio.BookingDocid "
  loc_192859C: var_C0 = var_BC & " Left Join (Select RO.Docid As P_DocId,RO.FolioNo As P_RegNo,GFor.SerialNo As P_SerialNo,GFor.Name As P_GuestName,GFor.Add1 As P_Add1,GFor.Add2 As P_Add2,Country.Name As P_Nationality,GFor.Age AS P_Age,GFor.PurVisit As P_PurVisit,GFor.AddIndia As P_AddIndiaIfAny,GFor.DateArr As P_DateArr,GFor.ArrPlace As P_ArrPlace,GFor.PropStay As P_PropStay,GFor.ArrFrom As P_ArrFrom,GFor.ModeTravel As P_ModeTravelatArrival,RO.DepDate As P_ProposedDepart,GFor.Dest As P_GoingTo, GFor.ModeTravelUsed As P_ModeTravelAfterDepart,GFor.VisaIssAuth As P_VisaIssAuth,"
  loc_19285A3: var_C4 = var_C0 & " GFor.Extension As P_Extension,GFor.PassNo As P_PassNo,GFor.IssDate As P_IssDate, GFor.IssPlace As P_IssPlace,GFor.PassExpDate As P_PassExpDate,GFor.WorkPermit As P_WorkPermit,GFor.VisaNo As P_VisaNo,GFor.VisaIssDate As P_VisaIssDate,GFor.VisaIssPlace As P_VisaIssPlace,GFor.ExpDate AS P_VisaExpDate,GFor.VisaDuration As P_VisaDuration,RO.VDate As P_Vdate From (((GuestFolio RO Left Join GuestProf GF ON RO.GuestProf=GF.Code) Left Join GuestProfFor GFor ON GF.Code=GFor.Code) LEFT JOIN Country ON GFor.Nationality = Country.Code)) Q On GuestFolio.DocId=Q.P_DocId "
  loc_19285C9: var_18C = var_C4 & " Where isnull(Roomocc.type,'')<>'C' and Guestfolio.FolioNo >=" & CStr(var_26C) & " AND Guestfolio.FolioNo <=" & CStr(var_274)
  loc_19285D0: var_1BC = CVar(var_18C & " AND RoomOcc.ChkInDate BETWEEN ") 'String
  loc_19285E6: var_21C = var_1BC & var_1AC & " AND " & var_20C 
  loc_19285FD: unk_5407B4.Execute CStr(var_21C & " Order By Guestfolio.DocId,P_SerialNo"), var_260, -1
  loc_1928608: Set var_88 = var_264
  loc_1928662: If (var_88.RecordCount <= 0) Then
  loc_1928673:   var_D4 = "No Records For Printing "
  loc_192867E:   MsgBox(var_D4, &H40, var_17C, var_1AC, var_1BC)
  loc_1928693:   global_88 = 0
  loc_1928696:   Exit Sub
  loc_1928697: End If
  loc_19286B1: Call Proc_66_36_14E3070(New)
  loc_19286BC: Set global_96 = var_108
  loc_19286C3: ' Referenced from: 192B04C
  loc_19286D2: If Not(var_88.EOF) Then
  loc_19286DB:   Set var_280 = global_96 
  loc_19286EA:   var_280.AddNew var_D4, var_E4
  loc_19286FE:   var_108 = var_88.Fields
  loc_192873A:   var_280.Fields.Item("DocId").Value = CVar(Proc_6_38_E68A98(CVar(var_108.Item("DocID")), var_108, global_88, var_280.Fields))
  loc_192879A:   var_280.Fields.Item("PartyName").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")), var_26C))
  loc_19287FA:   var_280.Fields.Item("PartyAdd1").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")), var_F4))
  loc_192885A:   var_280.Fields.Item("PartyAdd2").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2"))))
  loc_19288BA:   var_280.Fields.Item("PartyCity").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName"))))
  loc_192891A:   var_280.Fields.Item("ChkInDate").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChkInDate"))))
  loc_192897A:   var_280.Fields.Item("ChkOutDate").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DepDate"))))
  loc_19289DA:   var_280.Fields.Item("ChkInTime").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChkInTime"))))
  loc_1928A3A:   var_280.Fields.Item("FolioNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FolioNo"))))
  loc_1928A52:   var_D4 = "Adult"
  loc_1928AA0:   var_17C = CVar(var_88.Fields.Item("children")) 'Address
  loc_1928AD0:   var_280.Fields.Item("Persons").Value = CVar(var_D4 & Proc_6_38_E68A98(var_17C, Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_D4))) & "/"))
  loc_1928B11:   var_118 = CVar(var_88.Fields.Item("RoomTarrif")) 'Address
  loc_1928B18:   Proc_6_39_E7C810(var_17C)
  loc_1928B40:   var_280.Fields.Item("RoomRate").Value = var_17C
  loc_1928B7D:   var_17C = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomNo")))) 'String
  loc_1928BA0:   var_280.Fields.Item("RoomNo").Value = var_17C
  loc_1928BDB:   Proc_6_39_E7C810(var_17C, CVar(var_88.Fields.Item("RoDisc")))
  loc_1928C03:   var_280.Fields.Item("DisRoom").Value = var_17C
  loc_1928C63:   var_280.Fields.Item("incTax").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RRTaxInc"))))
  loc_1928CC3:   var_280.Fields.Item("ServiceChrg").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RRServiceChrg"))))
  loc_1928D23:   var_280.Fields.Item("Company").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CompanyName"))))
  loc_1928D83:   var_280.Fields.Item("Nationality").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nationality"))))
  loc_1928DE3:   var_280.Fields.Item("Agent").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TravelAgentName"))))
  loc_1928E6B:   var_1CC = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("PlanName"))) = vbNullString), "EP", CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PlanName")))))
  loc_1928E93:   var_280.Fields.Item("Plan").Value = var_1CC
  loc_1928F04:   var_280.Fields.Item("Phone").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PhoneNo"))))
  loc_1928F64:   var_280.Fields.Item("ArrFrom").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ArrFrom"))))
  loc_1928FC4:   var_280.Fields.Item("Destination").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Destination"))))
  loc_1929024:   var_280.Fields.Item("Cmt1").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Comments1"))))
  loc_1929084:   var_280.Fields.Item("Cmt2").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Comments2"))))
  loc_19290E4:   var_280.Fields.Item("Cmt3").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Comments3"))))
  loc_1929144:   var_280.Fields.Item("Remark").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remarks"))))
  loc_19291A4:   var_280.Fields.Item("User").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name"))))
  loc_1929204:   var_280.Fields.Item("PlanAmt").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PLANAmt"))))
  loc_1929264:   var_280.Fields.Item("EMailId").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("EmailId"))))
  loc_19292C4:   var_280.Fields.Item("TravelMode").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TravelMode"))))
  loc_1929324:   var_280.Fields.Item("RoomCat").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomCategory"))))
  loc_1929384:   var_280.Fields.Item("BookedBy").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("BookedBY"))))
  loc_19293E4:   var_280.Fields.Item("ResMode").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ResMode"))))
  loc_1929444:   var_280.Fields.Item("IdProof").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("IdProof"))))
  loc_19294CC:   var_1CC = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("Anniversary"))) = vbNullString), "NA", CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Anniversary")))))
  loc_19294F4:   var_280.Fields.Item("Anniversary").Value = var_1CC
  loc_192958D:   var_1CC = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("BirthDate"))) = vbNullString), "NA", CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("BirthDate")))))
  loc_19295B5:   var_280.Fields.Item("DateOfBirth").Value = var_1CC
  loc_192962E:   var_1BC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Age")))) 'String
  loc_192964E:   var_1CC = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("Age"))) = "0"), "NA", var_1BC)
  loc_1929676:   var_280.Fields.Item("Age").Value = var_1CC
  loc_19296E7:   var_280.Fields.Item("P_RegNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_RegNo"))))
  loc_1929747:   var_280.Fields.Item("P_SerialNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_SerialNo"))))
  loc_19297A7:   var_280.Fields.Item("P_GuestName").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_GuestName"))))
  loc_1929807:   var_280.Fields.Item("P_Add1").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_Add1"))))
  loc_1929867:   var_280.Fields.Item("P_Add2").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_Add2"))))
  loc_19298C7:   var_280.Fields.Item("P_Nationality").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_Nationality"))))
  loc_1929927:   var_280.Fields.Item("P_Age").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_Age"))))
  loc_1929987:   var_280.Fields.Item("P_PurVisit").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_PurVisit"))))
  loc_19299E7:   var_280.Fields.Item("P_AddIndiaIfAny").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_AddIndiaIfAny"))))
  loc_1929A47:   var_280.Fields.Item("P_DateArr").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_DateArr"))))
  loc_1929AA7:   var_280.Fields.Item("P_ArrPlace").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_ArrPlace"))))
  loc_1929B07:   var_280.Fields.Item("P_PropStay").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_PropStay"))))
  loc_1929B67:   var_280.Fields.Item("P_ArrFrom").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_ArrFrom"))))
  loc_1929BC7:   var_280.Fields.Item("P_ModeTravelatArrival").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_ModeTravelatArrival"))))
  loc_1929C27:   var_280.Fields.Item("P_ProposedDepart").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_ProposedDepart"))))
  loc_1929C87:   var_280.Fields.Item("P_GoingTo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_GoingTo"))))
  loc_1929CE7:   var_280.Fields.Item("P_ModeTravelAfterDepart").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_ModeTravelAfterDepart"))))
  loc_1929D47:   var_280.Fields.Item("P_VisaIssAuth").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaIssAuth"))))
  loc_1929DA7:   var_280.Fields.Item("P_Extension").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_Extension"))))
  loc_1929E07:   var_280.Fields.Item("P_PassNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_PassNo"))))
  loc_1929E67:   var_280.Fields.Item("P_IssDate").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_IssDate"))))
  loc_1929EC7:   var_280.Fields.Item("P_IssPlace").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_IssPlace"))))
  loc_1929F27:   var_280.Fields.Item("P_PassExpDate").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_PassExpDate"))))
  loc_1929F87:   var_280.Fields.Item("P_WorkPermit").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_WorkPermit"))))
  loc_1929FE7:   var_280.Fields.Item("P_VisaNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaNo"))))
  loc_192A047:   var_280.Fields.Item("P_VisaIssDate").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaIssDate"))))
  loc_192A0A7:   var_280.Fields.Item("P_VisaIssPlace").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaIssPlace"))))
  loc_192A107:   var_280.Fields.Item("P_VisaExpDate").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaExpDate"))))
  loc_192A167:   var_280.Fields.Item("P_VisaDuration").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaDuration"))))
  loc_192A1C7:   var_280.Fields.Item("P_Vdate").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_Vdate"))))
  loc_192A227:   var_280.Fields.Item("FatherName").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FatherName"))))
  loc_192A287:   var_280.Fields.Item("PurVisit").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PurVisit"))))
  loc_192A2FD:   var_280.Fields.Item("Mobile").Value = Left(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("MobileNo")))), &H19)
  loc_192A362:   var_280.Fields.Item("IdProofNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("IdProofNo"))))
  loc_192A3C2:   var_280.Fields.Item("CompanyGSTIN").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CompanyGSTIN"))))
  loc_192A422:   var_280.Fields.Item("AgentGSTIN").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TravelAgentGSTIN"))))
  loc_192A482:   var_280.Fields.Item("Nights").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nights"))))
  loc_192A4DA:   var_284 = var_280.Fields.Item("Days")
  loc_192A4E2:   var_284.Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("NoDays"))))
  loc_192A4FA:   var_98 = vbNullString
  loc_192A500:   var_94 = vbNullString
  loc_192A506:   var_9C = vbNullString
  loc_192A531:   var_98 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("FolioNo")))
  loc_192A562:   var_94 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomNo")))
  loc_192A571:   var_138 = 0
  loc_192A5CD:   unk_5407B4.Execute CStr("SELECT Count(*) FROM GuestFolio WHERE Docid='" & var_88.Fields.Item("DocID").Value & "' AND  MFolioNo > 0 "), var_1BC, -1
  loc_192A5D5:   var_264 = var_264.Fields
  loc_192A5DD:   var_138 = var_284.Item(var_284)
  loc_192A5E5:   var_288 = var_288.Value
  loc_192A612:   If (var_1CC > 0) Then
  loc_192A65A:     var_1AC = "SELECT DocId, MFolioNoDocId,MFolioNo FROM GuestFolio WHERE Docid='" & var_88.Fields.Item("DocID").Value & "' AND  MFolioNo > 0 " 
  loc_192A668:     unk_5407B4.Execute CStr(var_1AC), var_1BC, -1
  loc_192A673:     Set var_8C = var_264
  loc_192A6C9:     var_17C = "SELECT R.Roomno, R.FolioNo, R.DocId FROM RoomOcc R WHERE DocId IN ( SELECT DocID FROM GuestFolio WHERE MFolioNoDocId='" & var_8C.Fields.Item("mFolioNoDocid").Value 
  loc_192A6E0:     var_138 = "' AND LogSite_Code='"
  loc_192A6E5:     var_1CC = var_17C & "') AND R.Sno=1 AND Site_Code='" & CVar(MemVar_1F92070) & var_138 
  loc_192A706:     unk_5407B4.Execute CStr(var_1CC & CVar(MemVar_1F92078) & "'"), var_21C, -1
  loc_192A711:     Set var_90 = var_264
  loc_192A79B:     If (var_8C.Fields.Item("mFolioNoDocid").Value = var_8C.Fields.Item("DocID").Value) Then
  loc_192A7A1:       var_9C = "Leader"
  loc_192A7AB:       var_98 = var_98 & "(L), "
  loc_192A7B5:       var_94 = var_94 & "(L), "
  loc_192A7BB:     Else
  loc_192A7C2:       var_98 = var_98 & ", "
  loc_192A7CC:       var_94 = var_94 & ", "
  loc_192A7CF:     End If
  loc_192A7E3:     If (var_90.RecordCount > 0) Then
  loc_192A7E9:       var_90.MoveFirst
  loc_192A7EE:       ' Referenced from: 192AAAE
  loc_192A7F4:       var_27A = var_90.EOF
  loc_192A7FD:       If Not(var_27A) Then
  loc_192A868:         If CBool(var_90.Fields.Item("DocID").Value <> var_8C.Fields.Item("DocID").Value) Then
  loc_192A88D:           var_17C = var_90.Fields.Item("DocID").Value
  loc_192A8A7:           var_264 = var_8C.Fields
  loc_192A8D3:           If CBool(var_17C <> var_264.Item("mFolioNoDocid").Value) Then
  loc_192A902:             Proc_6_39_E7C810(var_17C, CVar(var_90.Fields.Item("FolioNo")), CVar(var_98), var_264)
  loc_192A918:             var_98 = CStr(var_264 & var_17C & ", ")
  loc_192A955:             Proc_6_39_E7C810(var_17C, CVar(var_90.Fields.Item("RoomNo")), CVar(var_94))
  loc_192A96B:             var_94 = CStr(var_1CC & var_17C & ", ")
  loc_192A97F:           Else
  loc_192A9A1:             var_17C = var_90.Fields.Item("DocID").Value
  loc_192A9FD:             If CBool((var_17C = var_8C.Fields.Item("mFolioNoDocid").Value) And (var_9C = vbNullString)) Then
  loc_192AA2C:               Proc_6_39_E7C810(var_17C, CVar(var_90.Fields.Item("FolioNo")))
  loc_192AA42:               var_98 = CStr(CVar(var_98) & var_17C & "(L), ")
  loc_192AA7F:               Proc_6_39_E7C810(var_17C, CVar(var_90.Fields.Item("RoomNo")))
  loc_192AA95:               var_94 = CStr(CVar(var_94) & var_17C & "(L), ")
  loc_192AAA6:             End If
  loc_192AAA6:           End If
  loc_192AAA6:         End If
  loc_192AAA9:         var_90.MoveNext
  loc_192AAAE:         GoTo loc_192A7EE
  loc_192AAB1:       End If
  loc_192AAB1:     End If
  loc_192AAB1:   End If
  loc_192AAE1:   var_280.Fields.Item("grpRooms").Value = CVar(Proc_6_38_E68A98(var_94))
  loc_192AB20:   var_280.Fields.Item("grpFolios").Value = CVar(Proc_6_38_E68A98(var_98))
  loc_192AB5F:   var_280.Fields.Item("Leader").Value = CVar(Proc_6_38_E68A98(var_9C))
  loc_192AB7D:   var_108 = var_88.Fields
  loc_192AB8D:   var_118 = CVar(var_108.Item("PicPath")) 'Address
  loc_192AB96:   var_104 = IsNull(var_118)
  loc_192AB9D:   var_E4 = "PicPath"
  loc_192ABD0:   var_F4 = vbNullString
  loc_192ABF4:   If CBool(var_118 Or (Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_E4)), var_104))) = var_F4)) Then
  loc_192AC15:     Me.Global.LoadPicture var_D4, var_E4, var_F4, var_104, var_138
  loc_192AC24:     Set var_264 = Me.GuestImage
  loc_192AC2A:     var_264.Picture = var_108
  loc_192AC39:   Else
  loc_192AC6D:     Call 0.Method_Proc_66_37_192B0DC4 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("PicPath")), var_27A))
  loc_192AC7E:     If var_27A Then
  loc_192ACA3:       var_108 = Me.Recordset15.Fields
  loc_192ACC6:       Me.Global.LoadPicture CVar(Proc_6_38_E68A98(CVar(var_108.Item("PicPath")), var_E4, var_F4, var_104)), var_138, var_264, var_108, 
  loc_192ACDB:       Me.GuestImage.Picture = var_264
  loc_192ACF4:       Set var_108 = Me.GuestImage
  loc_192ACFA:       var_108.Refresh
  loc_192AD05:     Else
  loc_192AD23:       Me.Global.LoadPicture var_D4, var_E4, var_F4, var_104, var_138
  loc_192AD38:       Me.GuestImage.Picture = var_108
  loc_192AD44:     End If
  loc_192AD44:   End If
  loc_192AD59:   Set var_A4 = Me.GuestImage.Picture
  loc_192AD7C:   If ((var_A4 Is Nothing) Or (CLng(var_A4._Default) = 0)) Then
  loc_192AD8A:     var_280.Update var_D4, var_E4
  loc_192AD92:   Else
  loc_192AD9C:     var_AC = "Picture1"
  loc_192ADA8:     Set var_16C = global_96 
  loc_192ADB8:     Proc_142_0_F96C2C(Me.GuestImage, var_16C)
  loc_192ADC6:     global_96 = var_16C
  loc_192ADD6:   End If
  loc_192ADE5:   var_108 = var_88.Fields
  loc_192ADFE:   var_104 = IsNull(CVar(var_108.Item("IdPicPath")))
  loc_192AE05:   var_E4 = "IdPicPath"
  loc_192AE2A:   var_1AC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_E4)), var_104)) 'String
  loc_192AE30:   var_1BC = Trim(var_1AC)
  loc_192AE38:   var_F4 = vbNullString
  loc_192AE5C:   If CBool(var_AC Or (var_1BC = var_F4)) Then
  loc_192AE7D:     Me.Global.LoadPicture var_D4, var_E4, var_F4, var_104, var_138
  loc_192AE8C:     Set var_264 = Me.GuestImage
  loc_192AE92:     var_264.Picture = var_108
  loc_192AEA1:   Else
  loc_192AEB3:     var_108 = var_88.Fields
  loc_192AED5:     Call 0.Method_Proc_66_37_192B0DC4 (Proc_6_38_E68A98(CVar(var_108.Item("IdPicPath")), var_27A), var_108)
  loc_192AEE6:     If var_27A Then
  loc_192AF0B:       var_108 = Me.Recordset15.Fields
  loc_192AF2E:       Me.Global.LoadPicture CVar(Proc_6_38_E68A98(CVar(var_108.Item("IdPicPath")), var_E4, var_F4, var_104)), var_138, var_264, var_108, 
  loc_192AF43:       Me.GuestImage.Picture = var_264
  loc_192AF5C:       Set var_108 = Me.GuestImage
  loc_192AF62:       var_108.Refresh
  loc_192AF6D:     Else
  loc_192AF8B:       Me.Global.LoadPicture var_D4, var_E4, var_F4, var_104, var_138
  loc_192AFA0:       Me.GuestImage.Picture = var_108
  loc_192AFAC:     End If
  loc_192AFAC:   End If
  loc_192AFC1:   Set var_A4 = Me.GuestImage.Picture
  loc_192AFE4:   If ((var_A4 Is Nothing) Or (CLng(var_A4._Default) = 0)) Then
  loc_192AFF2:     var_280.Update var_D4, var_E4
  loc_192AFFA:   Else
  loc_192B004:     var_AC = "IdProofPic"
  loc_192B010:     Set var_16C = global_96 
  loc_192B020:     Proc_142_0_F96C2C(Me.GuestImage, var_16C)
  loc_192B02E:     global_96 = var_16C
  loc_192B03E:   End If
  loc_192B040:   Set var_280 = Nothing 
  loc_192B047:   var_88.MoveNext
  loc_192B04C:   GoTo loc_19286C3
  loc_192B04F: End If
  loc_192B055: global_84 = "FolioPrinting"
  loc_192B05F: Call 0.Method_arg_50 (var_AC, var_AC)
  loc_192B06D: var_17C = Ucase(CVar(var_AC))
  loc_192B076: var_A0 = CStr(var_17C)
  loc_192B085: Set var_8C = Nothing
  loc_192B08D: Set var_88 = Nothing
  loc_192B095: Set var_90 = Nothing
  loc_192B098: Exit Sub
  loc_192B099: ' Referenced from: 19284E0
  loc_192B0A1: Set var_108 = Err()
  loc_192B0A7: Call 0.Method_arg_2C (var_AC)
  loc_192B0C4: MsgBox(CVar("Error " & var_AC), &H40, var_17C, var_1AC, var_1BC)
  loc_192B0DA: Exit Sub
End Sub

Public Sub Proc_66_38_14B0F38(arg_C) '14B0F38
  'Data Table: 540784
  Dim var_8C As Recordset15
  loc_14B022D: Set var_8C = arg_C 
  loc_14B0255: var_8C.Fields.Append "DocId", &HC8, &H28
  loc_14B0281: var_8C.Fields.Append "VDate", &HC8, &H28
  loc_14B02AD: var_8C.Fields.Append "GuestProf", &HC8, &HA
  loc_14B02D9: var_8C.Fields.Append "LeaderName", &HC8, &H64
  loc_14B0305: var_8C.Fields.Append "PartyName", &HC8, &H64
  loc_14B0331: var_8C.Fields.Append "FatherName", &HC8, &H64
  loc_14B035D: var_8C.Fields.Append "PartyAdd1", &HC8, &H64
  loc_14B0389: var_8C.Fields.Append "PartyAdd2", &HC8, &H64
  loc_14B03B5: var_8C.Fields.Append "PartyCity", &HC8, &H32
  loc_14B03E1: var_8C.Fields.Append "ChkInDate", &HC8, &H14
  loc_14B040D: var_8C.Fields.Append "ChkOutDate", &HC8, &H14
  loc_14B0439: var_8C.Fields.Append "ChkInTime", &HC8, &H14
  loc_14B0465: var_8C.Fields.Append "FolioNo", &HC8, &HF
  loc_14B0491: var_8C.Fields.Append "Persons", &HC8, &HF
  loc_14B04BD: var_8C.Fields.Append "RoomRate", &HC8, &H14
  loc_14B04E9: var_8C.Fields.Append "RoomNo", &HC8, &HA
  loc_14B0515: var_8C.Fields.Append "DisRoom", &HC8, &H14
  loc_14B0541: var_8C.Fields.Append "incTax", &HC8, &HA
  loc_14B056D: var_8C.Fields.Append "ServiceChrg", &HC8, &HA
  loc_14B0599: var_8C.Fields.Append "Company", &HC8, &H4B
  loc_14B05C5: var_8C.Fields.Append "Nationality", &HC8, &H32
  loc_14B05F1: var_8C.Fields.Append "Agent", &HC8, &H32
  loc_14B061D: var_8C.Fields.Append "Plan", &HC8, &H32
  loc_14B0649: var_8C.Fields.Append "Phone", &HC8, &H1E
  loc_14B0675: var_8C.Fields.Append "ArrFrom", &HC8, &H1E
  loc_14B06A1: var_8C.Fields.Append "Destination", &HC8, &H32
  loc_14B06CD: var_8C.Fields.Append "Cmt1", &HC8, &H32
  loc_14B06F9: var_8C.Fields.Append "Cmt2", &HC8, &H32
  loc_14B0725: var_8C.Fields.Append "Cmt3", &HC8, &H32
  loc_14B0751: var_8C.Fields.Append "grpRooms", &HC8, &HFF
  loc_14B077D: var_8C.Fields.Append "Leader", &HC8, &H32
  loc_14B07A9: var_8C.Fields.Append "User", &HC8, &H32
  loc_14B07D5: var_8C.Fields.Append "Remark", &HC8, &H50
  loc_14B0801: var_8C.Fields.Append "Picture1", &HCD, &H3E8
  loc_14B082D: var_8C.Fields.Append "PlanAmt", &HC8, &HC
  loc_14B0859: var_8C.Fields.Append "EMailId", &HC8, &H32
  loc_14B0885: var_8C.Fields.Append "TravelMode", &HC8, &H1E
  loc_14B08B1: var_8C.Fields.Append "RoomCat", &HC8, &H19
  loc_14B08DD: var_8C.Fields.Append "BookedBy", &HC8, &H19
  loc_14B0909: var_8C.Fields.Append "ResMode", &HC8, &H1E
  loc_14B0935: var_8C.Fields.Append "IdProof", &HC8, &H32
  loc_14B0961: var_8C.Fields.Append "Anniversary", &HC8, &HC
  loc_14B098D: var_8C.Fields.Append "DateOfBirth", &HC8, &HC
  loc_14B09B9: var_8C.Fields.Append "Age", &HC8, 4
  loc_14B09E5: var_8C.Fields.Append "P_RegNo", &HC8, 8
  loc_14B0A11: var_8C.Fields.Append "P_SerialNo", &HC8, 8
  loc_14B0A3D: var_8C.Fields.Append "P_GuestName", &HC8, &H23
  loc_14B0A69: var_8C.Fields.Append "P_Add1", &HC8, &H32
  loc_14B0A95: var_8C.Fields.Append "P_Add2", &HC8, &H32
  loc_14B0AC1: var_8C.Fields.Append "P_Nationality", &HC8, &H32
  loc_14B0AED: var_8C.Fields.Append "P_Age", &HC8, 4
  loc_14B0B19: var_8C.Fields.Append "P_PurVisit", &HC8, &H32
  loc_14B0B45: var_8C.Fields.Append "P_AddIndiaIfAny", &HC8, &H32
  loc_14B0B71: var_8C.Fields.Append "P_DateArr", &HC8, &HC
  loc_14B0B9D: var_8C.Fields.Append "P_ArrPlace", &HC8, &H32
  loc_14B0BC9: var_8C.Fields.Append "P_PropStay", &HC8, &H32
  loc_14B0BF5: var_8C.Fields.Append "P_ArrFrom", &HC8, &H32
  loc_14B0C21: var_8C.Fields.Append "P_ModeTravelatArrival", &HC8, &H32
  loc_14B0C4D: var_8C.Fields.Append "P_ProposedDepart", &HC8, &H32
  loc_14B0C79: var_8C.Fields.Append "P_GoingTo", &HC8, &H32
  loc_14B0CA5: var_8C.Fields.Append "P_ModeTravelAfterDepart", &HC8, &H32
  loc_14B0CD1: var_8C.Fields.Append "P_VisaIssAuth", &HC8, &H32
  loc_14B0CFD: var_8C.Fields.Append "P_Extension", &HC8, &H64
  loc_14B0D29: var_8C.Fields.Append "P_PassNo", &HC8, &H32
  loc_14B0D55: var_8C.Fields.Append "P_IssDate", &HC8, &HC
  loc_14B0D81: var_8C.Fields.Append "P_IssPlace", &HC8, &H32
  loc_14B0DAD: var_8C.Fields.Append "P_PassExpDate", &HC8, &HC
  loc_14B0DD9: var_8C.Fields.Append "P_WorkPermit", &HC8, &H32
  loc_14B0E05: var_8C.Fields.Append "P_VisaNo", &HC8, &H32
  loc_14B0E31: var_8C.Fields.Append "P_VisaIssDate", &HC8, &HC
  loc_14B0E5D: var_8C.Fields.Append "P_VisaIssPlace", &HC8, &H32
  loc_14B0E89: var_8C.Fields.Append "P_VisaExpDate", &HC8, &HC
  loc_14B0EB5: var_8C.Fields.Append "P_VisaDuration", &HC8, &H32
  loc_14B0EE1: var_8C.Fields.Append "P_Vdate", &HC8, &HC
  loc_14B0EF1: var_8C.CursorType = 3
  loc_14B0EFE: var_8C.LockType = 3
  loc_14B0F1D: var_8C.Open var_A0, var_B0, -1
  loc_14B0F24: Set var_8C = Nothing 
  loc_14B0F2B: Set var_88 = arg_C 
  loc_14B0F2F: Proc_66_38_14B0F38 = -1
End Sub

Public Sub Proc_66_39_189C0B0
  'Data Table: 540784
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_190 As Variant
  Dim var_B4 As String
  Dim var_B8 As String
  Dim var_BC As String
  Dim var_C0 As String
  Dim var_C4 As String
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_224 As Variant
  Dim unk_5408CC As Connection15
  Dim var_88 As Recordset15
  Dim var_9E As Integer
  Dim var_92 As Integer
  Dim var_94 As Integer
  Dim var_258 As Recordset15
  Dim var_EC As Variant
  Dim var_24C As Fields15
  Dim var_140 As Variant
  Dim var_A4 As Integer
  Dim Me As Recordset15
  Dim var_A2 As Integer
  loc_1899944: On Error Goto loc_189C06B
  loc_189994A: var_DC = CVar(CLng(0)) 'Long
  loc_189994F: var_FC = 1
  loc_189995C: Set var_110 = Me.FGrid
  loc_189996D: var_130 = CVar(CStr(var_110.TextMatrix))) 'String
  loc_1899973: Proc_6_7_F25D88(var_140, var_130)
  loc_189997B: var_190 = CVar(CLng(0)) 'Long
  loc_18999A4: Proc_6_7_F25D88(var_1F4, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_18999BD: var_B4 = "SELECT 0 as SrNo, CntP.Name as NewNationality, GuestFolio.DocId, GuestFolio.GuestProf as LeaderProf, Gpf.Name as Leader, RoomCat.Name AS RoomCatNAme, RoomCat.Type, RoomCat.Name As RoomCategory, RoomOcc.RoomCat, RoomOcc.RoomNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.Adult, RoomOcc.Children, RoomOcc.DepDate, RoomOcc.DepTime, RoomOcc.Type, RoomOcc.PlanCode, GuestFolio.FolioNo, GuestFolio.Vtype, GuestFolio.Vdate, GuestFolio.Vprefix, GPFDtl.GuestProf, LTrim(RTrim(Isnull(GuestProf.ConPrefix,'')))+' '+LTrim(RTrim(Isnull(GuestProf.Name,''))) Name, IsNull(GuestProf.FatherName,'') as FatherName, GuestProf.Add1, GuestProf.Add2, GuestProf.CityName, GuestProf.StateName," & " GuestProf.CountryName,GuestProf.PicPath, GuestFolio.NoDays, GuestFolio.SplitFolio, GuestFolio.Remarks, GuestFolio.Authorisation, GuestFolio.Company, GuestFolio.PurVisit, GuestFolio.Nationality, GuestFolio.ArrFrom, GuestFolio.Destination, GuestFolio.TravelMode, GuestFolio.TclFac, GuestFolio.Remark, GuestFolio.RODisc, GuestFolio.RSDisc,GuestFolio.BookingDocId, City.CityName AS ArrivedFrom, City_1.CityName AS DestinationCity, SubGroup.Name AS CompanyName, RoomOcc.ChkOutDate,"
  loc_18999C4: var_B8 = var_B4 & " RoomOcc.ChkOutTime,GuestFolio.GroupCode,RoomOcc.RRTaxInc,RoomOcc.RRServiceChrg, Book.BookedBy, Book.ResMode, GuestProf.Anniversary, GuestProf.BirthDate, GuestProf.Age"
  loc_18999CB: var_BC = var_B8 & " , GuestProf.PhoneNo, GuestProf.MobileNo, GuestProf.EmailId, GuestProf.IdProof, GuestProf.Comments1,GuestProf.Comments2,GuestProf.Comments3 , GuestFolio.U_Name, PlanMast.Name As PlanName, GuestProf.U_Name  "
  loc_18999D2: var_C0 = var_BC & " , GuestFolio.MarketSeg, MarketSeg.Name as MarketSegName, GuestFolio.TravelAgent, SG.Name as travelAgentName,GuestFolio.MFolioNo, RoomOcc.PlanAmt, RoomOcc.IncInRate,Q.* FROM ((((((((((((GuestFolio LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) LEFT JOIN GuestFolioProfDetail GPFDtl On GuestFolio.DocId = GPFDtl.DocId) LEFT JOIN GuestProf ON GPFDtl.GuestProf = GuestProf.Code) LEFT JOIN Country CntP ON GuestProf.Nationality = CntP.Code) LEFT JOIN GuestProf GPF ON GPFDtl.mProf = GPF.Code) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN PlanMAst On RoomOcc.PlanCode = PlanMast.Code ) LEFT JOIN City ON GuestFolio.ArrFrom = City.CityCode) "
  loc_18999D9: var_C4 = var_C0 & " LEFT JOIN City AS City_1 ON GuestFolio.Destination = City_1.CityCode) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) LEFT JOIN MarketSeg ON GuestFolio.MarketSeg = MarketSeg.Code)) LEFT JOIN SubGroup AS SG ON GuestFolio.TravelAgent = SG.SubCode LEFT JOIN Booking Book On Book.DocId=GuestFolio.BookingDocid "
  loc_18999E0: var_C8 = var_C4 & " Left Join (Select RO.Docid As P_DocId,RO.FolioNo As P_RegNo,GFor.SerialNo As P_SerialNo,GFor.Name As P_GuestName,GFor.Add1 As P_Add1,GFor.Add2 As P_Add2,Country.Name As P_Nationality,GFor.Age AS P_Age,GFor.PurVisit As P_PurVisit,GFor.AddIndia As P_AddIndiaIfAny,GFor.DateArr As P_DateArr,GFor.ArrPlace As P_ArrPlace,GFor.PropStay As P_PropStay,GFor.ArrFrom As P_ArrFrom,GFor.ModeTravel As P_ModeTravelatArrival,RO.DepDate As P_ProposedDepart,GFor.Dest As P_GoingTo, GFor.ModeTravelUsed As P_ModeTravelAfterDepart,GFor.VisaIssAuth As P_VisaIssAuth,"
  loc_18999E7: var_CC = var_C8 & " GFor.Extension As P_Extension,GFor.PassNo As P_PassNo,GFor.IssDate As P_IssDate, GFor.IssPlace As P_IssPlace,GFor.PassExpDate As P_PassExpDate,GFor.WorkPermit As P_WorkPermit,GFor.VisaNo As P_VisaNo,GFor.VisaIssDate As P_VisaIssDate,GFor.VisaIssPlace As P_VisaIssPlace,GFor.ExpDate AS P_VisaExpDate,GFor.VisaDuration As P_VisaDuration,RO.VDate As P_Vdate From (((GuestFolio RO Left Join GuestProf GF ON RO.GuestProf=GF.Code) Left Join GuestProfFor GFor ON GF.Code=GFor.Code) LEFT JOIN Country ON GFor.Nationality = Country.Code)) Q On GuestFolio.DocId=Q.P_DocId "
  loc_18999EE: var_150 = CVar(var_CC & " Where isnull(Roomocc.type,'')<>'C' AND RoomOcc.ChkInDate<=") 'String
  loc_1899A0D: var_224 = var_150 & var_140 & " And (RoomOcc.ChkOutDate>=" & var_1F4 & " Or RoomOcc.ChkOutDate IS NULL) Order By Guestfolio.DocId,P_SerialNo" 
  loc_1899A1B: unk_5408CC.Execute CStr(var_224), var_248, -1
  loc_1899A26: Set var_88 = var_24C
  loc_1899A74: If (var_88.RecordCount <= 0) Then
  loc_1899A85:   var_DC = "No Records For Printing "
  loc_1899A90:   MsgBox(var_DC, &H40, var_130, var_140, var_150)
  loc_1899AA5:   global_88 = 0
  loc_1899AA8:   Exit Sub
  loc_1899AA9: End If
  loc_1899AC3: Call Proc_66_38_14B0F38(New)
  loc_1899ACE: Set global_96 = var_110
  loc_1899AD7: var_9E = &HD
  loc_1899ADA: ' Referenced from: 189B890
  loc_1899AE9: If Not(var_88.EOF) Then
  loc_1899AF2:   var_92 = (var_92 + 1)
  loc_1899AF7:   var_94 = 0
  loc_1899B01:   If (var_92 <= var_9E) Then
  loc_1899B07:     var_9C = "First"
  loc_1899B0D:   Else
  loc_1899B10:     var_9C = "Second"
  loc_1899B13:   End If
  loc_1899B19:   Set var_258 = global_96 
  loc_1899B28:   var_258.AddNew var_DC, var_EC
  loc_1899B3C:   var_110 = var_88.Fields
  loc_1899B78:   var_258.Fields.Item("DocId").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Item("DocID")), var_94, var_92, var_9E, var_110))
  loc_1899BD4:   var_FC = "VDate"
  loc_1899BF0:   var_258.Fields.Item(var_FC).Value = Format(CVar(var_88.Fields.Item("VDate")), "dd/MM/yy")
  loc_1899C42:   var_24C = var_258.Fields
  loc_1899C52:   var_24C.Item("PartyName").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")), 1, 1, global_88))
  loc_1899CB2:   var_258.Fields.Item("FatherName").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FatherName")), var_258.Fields, var_190))
  loc_1899D12:   var_258.Fields.Item("PartyAdd1").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")), var_FC))
  loc_1899D72:   var_258.Fields.Item("PartyAdd2").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2"))))
  loc_1899DEA:   var_258.Fields.Item("ChkInDate").Value = Format(CVar(var_88.Fields.Item("ChkInDate")), "dd/MM/yy")
  loc_1899E29:   var_130 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChkInTime")), 1)) 'String
  loc_1899E4C:   var_258.Fields.Item("ChkInTime").Value = var_130
  loc_1899E87:   Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("RoomNo")))
  loc_1899EAF:   var_258.Fields.Item("RoomNo").Value = var_130
  loc_1899F0F:   var_258.Fields.Item("Nationality").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("NewNationality")), 1))
  loc_1899F6F:   var_258.Fields.Item("Phone").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("MobileNo"))))
  loc_1899FCF:   var_258.Fields.Item("ArrFrom").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ArrFrom"))))
  loc_189A02F:   var_258.Fields.Item("IdProof").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("NoDays"))))
  loc_189A0B7:   var_160 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("Age"))) = "0"), "NA", CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Age")))))
  loc_189A0DF:   var_258.Fields.Item("Age").Value = var_160
  loc_189A150:   var_258.Fields.Item("P_PurVisit").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PurVisit"))))
  loc_189A1C8:   var_258.Fields.Item("ChkOutDate").Value = Format(CVar(var_88.Fields.Item("ChkOutDate")), "dd/MM/yy")
  loc_189A22A:   var_258.Fields.Item("Destination").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Destination")), 1))
  loc_189A28A:   var_258.Fields.Item("Cmt1").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChkOutTime")), 1))
  loc_189A2EA:   var_258.Fields.Item("Cmt2").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("IdProof"))))
  loc_189A34A:   var_258.Fields.Item("GuestProf").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("LeaderProf"))))
  loc_189A3AA:   var_258.Fields.Item("Leader").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Leader"))))
  loc_189A40A:   var_258.Fields.Item("PartyCity").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName"))))
  loc_189A46A:   var_258.Fields.Item("FolioNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FolioNo"))))
  loc_189A482:   var_DC = "Adult"
  loc_189A4D0:   var_130 = CVar(var_88.Fields.Item("children")) 'Address
  loc_189A500:   var_258.Fields.Item("Persons").Value = CVar(var_DC & Proc_6_38_E68A98(var_130, Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_DC))) & "/"))
  loc_189A541:   var_120 = CVar(var_88.Fields.Item("RoomRate")) 'Address
  loc_189A548:   Proc_6_39_E7C810(var_130)
  loc_189A570:   var_258.Fields.Item("RoomRate").Value = var_130
  loc_189A5AB:   Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("RoDisc")))
  loc_189A5D3:   var_258.Fields.Item("DisRoom").Value = var_130
  loc_189A633:   var_258.Fields.Item("incTax").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RRTaxInc"))))
  loc_189A693:   var_258.Fields.Item("ServiceChrg").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RRServiceChrg"))))
  loc_189A6F3:   var_258.Fields.Item("Company").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CompanyName"))))
  loc_189A753:   var_258.Fields.Item("Agent").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TravelAgentName"))))
  loc_189A7DB:   var_160 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("PlanName"))) = vbNullString), "EP", CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PlanName")))))
  loc_189A803:   var_258.Fields.Item("Plan").Value = var_160
  loc_189A874:   var_258.Fields.Item("Cmt3").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Comments3"))))
  loc_189A8D4:   var_258.Fields.Item("Remark").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remarks"))))
  loc_189A911:   var_130 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")))) 'String
  loc_189A934:   var_258.Fields.Item("User").Value = var_130
  loc_189A95A:   Proc_6_39_E7C810(var_130, var_88.Bookmark)
  loc_189A982:   var_258.Fields.Item("PlanAmt").Value = var_130
  loc_189A9A6:   Proc_6_39_E7C810(var_130, var_88.Bookmark)
  loc_189A9AF:   var_A4 = CInt(var_130)
  loc_189AA04:   var_258.Fields.Item("EMailId").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("EmailId")), var_A4))
  loc_189AA64:   var_258.Fields.Item("TravelMode").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TravelMode"))))
  loc_189AAC4:   var_258.Fields.Item("RoomCat").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomCategory"))))
  loc_189AB24:   var_258.Fields.Item("BookedBy").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("BookedBY"))))
  loc_189AB84:   var_258.Fields.Item("ResMode").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ResMode"))))
  loc_189AC0C:   var_160 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("Anniversary"))) = vbNullString), "NA", CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Anniversary")))))
  loc_189AC34:   var_258.Fields.Item("Anniversary").Value = var_160
  loc_189ACAD:   var_150 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("BirthDate")))) 'String
  loc_189ACBE:   var_B4 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("BirthDate")))
  loc_189ACF5:   var_258.Fields.Item("DateOfBirth").Value = IIf((var_B4 = vbNullString), "NA", var_150)
  loc_189AD66:   var_258.Fields.Item("P_RegNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_RegNo"))))
  loc_189ADC6:   var_258.Fields.Item("P_SerialNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_SerialNo"))))
  loc_189AE26:   var_258.Fields.Item("P_GuestName").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_GuestName"))))
  loc_189AE86:   var_258.Fields.Item("P_Add1").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_Add1"))))
  loc_189AEE6:   var_258.Fields.Item("P_Add2").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_Add2"))))
  loc_189AF46:   var_258.Fields.Item("P_Nationality").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_Nationality"))))
  loc_189AFA6:   var_258.Fields.Item("P_Age").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_Age"))))
  loc_189B006:   var_258.Fields.Item("P_AddIndiaIfAny").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_AddIndiaIfAny"))))
  loc_189B066:   var_258.Fields.Item("P_DateArr").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_DateArr"))))
  loc_189B0C6:   var_258.Fields.Item("P_ArrPlace").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_ArrPlace"))))
  loc_189B126:   var_258.Fields.Item("P_PropStay").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_PropStay"))))
  loc_189B186:   var_258.Fields.Item("P_ArrFrom").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_ArrFrom"))))
  loc_189B1E6:   var_258.Fields.Item("P_ModeTravelatArrival").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_ModeTravelatArrival"))))
  loc_189B246:   var_258.Fields.Item("P_ProposedDepart").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_ProposedDepart"))))
  loc_189B2A6:   var_258.Fields.Item("P_GoingTo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_GoingTo"))))
  loc_189B306:   var_258.Fields.Item("P_ModeTravelAfterDepart").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_ModeTravelAfterDepart"))))
  loc_189B366:   var_258.Fields.Item("P_VisaIssAuth").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaIssAuth"))))
  loc_189B3C6:   var_258.Fields.Item("P_Extension").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_Extension"))))
  loc_189B426:   var_258.Fields.Item("P_PassNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_PassNo"))))
  loc_189B486:   var_258.Fields.Item("P_IssDate").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_IssDate"))))
  loc_189B4E6:   var_258.Fields.Item("P_IssPlace").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_IssPlace"))))
  loc_189B546:   var_258.Fields.Item("P_PassExpDate").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_PassExpDate"))))
  loc_189B5A6:   var_258.Fields.Item("P_WorkPermit").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_WorkPermit"))))
  loc_189B606:   var_258.Fields.Item("P_VisaNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaNo"))))
  loc_189B666:   var_258.Fields.Item("P_VisaIssDate").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaIssDate"))))
  loc_189B6C6:   var_258.Fields.Item("P_VisaIssPlace").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaIssPlace"))))
  loc_189B726:   var_258.Fields.Item("P_VisaExpDate").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaExpDate"))))
  loc_189B786:   var_258.Fields.Item("P_VisaDuration").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaDuration"))))
  loc_189B7C3:   var_130 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_Vdate")))) 'String
  loc_189B7E6:   var_258.Fields.Item("P_Vdate").Value = var_130
  loc_189B7FD:   Set var_258 = Nothing 
  loc_189B808:   If (var_92 = var_9E) Then
  loc_189B80D:     var_94 = &HFF
  loc_189B813:     var_DC = "PlanAmt"
  loc_189B839:     Proc_6_39_E7C810(var_130, CVar(Me.Fields.Item(var_DC)))
  loc_189B84A:     var_EC = CVar(var_9E) 'Integer
  loc_189B84D:     var_140 = (var_130 - var_EC)
  loc_189B856:     var_88.Move CLng("NA"), 1
  loc_189B868:   Else
  loc_189B872:     If (var_92 = (var_9E * 2)) Then
  loc_189B877:       var_94 = 0
  loc_189B87C:       var_92 = 0
  loc_189B87F:     End If
  loc_189B87F:   End If
  loc_189B885:   If (var_94 = 0) Then
  loc_189B88B:     var_88.MoveNext
  loc_189B890:   End If
  loc_189B890:   GoTo loc_1899ADA
  loc_189B893: End If
  loc_189B896: var_A2 = var_92
  loc_189B8A1: If (var_9C = "First") Then
  loc_189B8B3:   For var_268 = (var_A2 + 1) To (var_9E * 2): var_A0 = var_268 'Integer
  loc_189B8BF:     var_92 = (var_92 + 1)
  loc_189B8C9:     If (var_92 <= var_9E) Then
  loc_189B8DA:       Me.AddNew var_DC, var_EC
  loc_189B8ED:       Me.Update var_DC, var_EC
  loc_189B8F5:     Else
  loc_189B8FB:       If (var_A2 > 0) Then
  loc_189B8FE:         var_DC = 1
  loc_189B90F:         var_88.Move CLng((var_A4 - var_A2)), var_DC
  loc_189B922:         Me.AddNew var_DC, var_EC
  loc_189B962:         var_140 = Format(CVar(var_88.Fields.Item("ChkOutDate")), "dd/MM/yy")
  loc_189B98D:         Me.Fields.Item("ChkOutDate").Value = var_140
  loc_189B9CC:         var_130 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Destination")), 1, 1, var_92, (var_A2 + 1))) 'String
  loc_189B9F2:         Me.Fields.Item("Destination").Value = "dd/MM/yy"
  loc_189BA55:         Me.Fields.Item("Cmt1").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChkOutTime")), var_A2, var_92))
  loc_189BAB8:         Me.Fields.Item("Cmt2").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("IdProof")), var_94))
  loc_189BB1B:         Me.Fields.Item("P_PassNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_PassNo")), var_94))
  loc_189BB7E:         Me.Fields.Item("P_IssDate").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_IssDate"))))
  loc_189BBE1:         Me.Fields.Item("P_IssPlace").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_IssPlace"))))
  loc_189BC44:         Me.Fields.Item("P_PassExpDate").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_PassExpDate"))))
  loc_189BCA7:         Me.Fields.Item("P_WorkPermit").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_WorkPermit"))))
  loc_189BD0A:         Me.Fields.Item("P_VisaNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaNo"))))
  loc_189BD6D:         Me.Fields.Item("P_VisaIssDate").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaIssDate"))))
  loc_189BDD0:         Me.Fields.Item("P_VisaIssPlace").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaIssPlace"))))
  loc_189BE33:         Me.Fields.Item("P_VisaExpDate").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaExpDate"))))
  loc_189BE96:         Me.Fields.Item("P_VisaDuration").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_VisaDuration"))))
  loc_189BEF9:         Me.Fields.Item("P_Vdate").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("P_Vdate"))))
  loc_189BF5C:         Me.Fields.Item("FolioNo").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FolioNo"))))
  loc_189BF74:         var_DC = "CompanyName"
  loc_189BFA0:         var_EC = "Company"
  loc_189BFBF:         Me.Fields.Item(var_EC).Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_DC))))
  loc_189BFE2:         Me.Update var_DC, var_EC
  loc_189BFEA:       Else
  loc_189BFF8:         Me.AddNew var_DC, var_EC
  loc_189C00B:         Me.Update var_DC, var_EC
  loc_189C010:       End If
  loc_189C016:       var_A2 = (var_A2 - 1)
  loc_189C019:     End If
  loc_189C01C:   Next var_268 'Integer
  loc_189C021: End If
  loc_189C027: global_84 = "CheckInDtl"
  loc_189C031: Call 0.Method_arg_50 (var_B4)
  loc_189C03F: var_130 = Ucase(CVar(var_B4))
  loc_189C048: var_A8 = CStr(var_130)
  loc_189C057: Set var_8C = Nothing
  loc_189C05F: Set var_88 = Nothing
  loc_189C067: Set var_90 = Nothing
  loc_189C06A: Exit Sub
  loc_189C06B: ' Referenced from: 1899944
  loc_189C073: Set var_110 = Err()
  loc_189C079: Call 0.Method_arg_2C (var_B4)
  loc_189C096: MsgBox(CVar("Error " & var_B4), &H40, var_130, var_140, var_150)
  loc_189C0AC: Exit Sub
End Sub

Public Sub Proc_66_40_147C5A0
  'Data Table: 540784
  Dim var_BC As String
  Dim var_9C As Variant
  Dim var_D0 As String
  Dim unk_5407B4 As Connection15
  Dim var_AC As Variant
  Dim var_F4 As Variant
  Dim var_100 As MSHFlexGrid
  Dim var_1DC As Variant
  Dim var_15C As String
  Dim var_17C As String
  Dim var_F0 As Variant
  Dim var_8C As Recordset15
  loc_147B99C: On Error Goto loc_147C598
  loc_147B9BC: Proc_6_17_EAA2B0(var_AC, MemVar_1F92078, "Select * From Enviro Where LogSite_Code=")
  loc_147B9C8: var_D0 = CStr(var_F0 & var_AC)
  loc_147B9D2: unk_5407B4.Execute var_D0, -1, var_F4
  loc_147B9DD: Set var_8C = var_F4
  loc_147BA00: Call 0.Method_arg_90 (var_F4, var_F8)
  loc_147BA08: Call 0.Method_arg_24 (var_86)
  loc_147BA14: For var_FC =  To CInt(var_F8): 1 = var_FC 'Integer
  loc_147BA2D:   Call 0.Method_arg_90 (var_F4, CLng(var_86))
  loc_147BA35:   Call 0.Method_arg_20 (var_100)
  loc_147BA3D:   Call 0.Method_arg_30 (var_D0)
  loc_147BA53:   var_110 = Ucase(CVar(var_D0)) 'Variant
  loc_147BA83:   If (var_110 = Ucase("Title")) Then
  loc_147BA8F:     Call 0.Method_arg_50 (var_D0)
  loc_147BAB2:     Call 0.Method_arg_90 (var_F4, CLng(var_86))
  loc_147BABA:     Call 0.Method_arg_20 (var_100)
  loc_147BAC2:     Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_147BADA:   Else
  loc_147BAFC:     If (var_110 = Ucase("BetweenDate")) Then
  loc_147BB02:       var_9C = CVar(CLng(0)) 'Long
  loc_147BB14:       Set var_F4 = Me.FGrid
  loc_147BB1A:       var_AC = var_F4.TextMatrix)
  loc_147BB3B:       Set var_100 = Me.FGrid
  loc_147BB41:       var_1DC = var_100.TextMatrix)
  loc_147BB4D:       var_15C = "'From :'+ '"
  loc_147BB7D:       var_17C = "' + ' To ' + '"
  loc_147BBBA:       var_D0 = CStr(1 & Format(CVar(CStr(var_1DC)), "dd/mmm/yyyy") & "'")
  loc_147BBCE:       Call 0.Method_arg_90 (var_250, CLng(var_86), var_254, var_D0, 1, 1 & Format(CVar(CStr(var_AC)), "dd/mmm/yyyy") & var_17C, 1)
  loc_147BBD6:       Call 0.Method_arg_20 (var_15C, var_1DC, 1, CVar(CLng(1)))
  loc_147BBDE:       Call 0.Method_arg_38 (var_AC, 1)
  loc_147BC0C:     End If
  loc_147BC0C:   End If
  loc_147BC0F: Next var_FC 'Integer
  loc_147BC25: If (global_52 = "ConfirmLetter") Then
  loc_147BC39:   Call 0.Method_arg_90 (var_F4, var_F8)
  loc_147BC41:   Call 0.Method_arg_24 (var_86)
  loc_147BC4D:   For var_25C =  To CInt(var_F8): 1 = var_25C 'Integer
  loc_147BC66:     Call 0.Method_arg_90 (var_F4, CLng(var_86))
  loc_147BC6E:     Call 0.Method_arg_20 (var_100)
  loc_147BC76:     Call 0.Method_arg_30 (var_D0)
  loc_147BC8C:     var_26C = Ucase(CVar(var_D0)) 'Variant
  loc_147BCBC:     If (var_26C = Ucase("line1")) Then
  loc_147BCCF:       var_BC = "'Our friendly staff is prepared to insure that your stay at the '+'"
  loc_147BCE7:       var_F0 = "Select * From Enviro Where LogSite_Code=" & Left(Trim(MemVar_1F92130), &H1E) 
  loc_147BD08:       Call 0.Method_arg_90 (var_F4, CLng(var_86))
  loc_147BD10:       Call 0.Method_arg_20 (var_100)
  loc_147BD18:       Call 0.Method_arg_38 (CStr(var_F0 & "'"))
  loc_147BD35:     Else
  loc_147BD57:       If (var_26C = Ucase("ChkTime")) Then
  loc_147BD64:         var_D0 = "'Check in time is after '+'" & global_56
  loc_147BD7E:         Call 0.Method_arg_90 (var_F4, CLng(var_86))
  loc_147BD86:         Call 0.Method_arg_20 (var_100)
  loc_147BD8E:         Call 0.Method_arg_38 (CStr(var_F0 & "'") & "'")
  loc_147BDA1:       End If
  loc_147BDA1:     End If
  loc_147BDA4:   Next var_25C 'Integer
  loc_147BDAF:   var_F8 = var_8C.RecordCount
  loc_147BDBD:   If (var_F8 > 0) Then
  loc_147BDC3:     var_8C.MoveFirst
  loc_147BDD9:     Call 0.Method_arg_90 (var_F4, var_F8)
  loc_147BDE1:     Call 0.Method_arg_24 (var_86)
  loc_147BDED:     For var_270 =  To CInt(var_F8): 1 = var_270 'Integer
  loc_147BE06:       Call 0.Method_arg_90 (var_F4, CLng(var_86))
  loc_147BE0E:       Call 0.Method_arg_20 (var_100)
  loc_147BE16:       Call 0.Method_arg_30 (CStr(var_F0 & "'"))
  loc_147BE2C:       var_280 = Ucase(CVar(CStr(var_F0 & "'"))) 'Variant
  loc_147BE5C:       If (var_280 = Ucase("Instruction1")) Then
  loc_147BE8D:         Proc_6_17_EAA2B0(var_F0)
  loc_147BEA9:         Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147BEB1:         Call 0.Method_arg_20 (CStr(var_F0))
  loc_147BEB9:         Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ResInstruction1")))))
  loc_147BED6:       Else
  loc_147BEF8:         If (var_280 = Ucase("Instruction2")) Then
  loc_147BF29:           Proc_6_17_EAA2B0(var_F0)
  loc_147BF45:           Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147BF4D:           Call 0.Method_arg_20 (CStr(var_F0))
  loc_147BF55:           Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ResInstruction2")))))
  loc_147BF72:         Else
  loc_147BF94:           If (var_280 = Ucase("Instruction3")) Then
  loc_147BFC5:             Proc_6_17_EAA2B0(var_F0)
  loc_147BFE1:             Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147BFE9:             Call 0.Method_arg_20 (CStr(var_F0))
  loc_147BFF1:             Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ResInstruction3")))))
  loc_147C00E:           Else
  loc_147C030:             If (var_280 = Ucase("Instruction4")) Then
  loc_147C061:               Proc_6_17_EAA2B0(var_F0)
  loc_147C07D:               Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147C085:               Call 0.Method_arg_20 (CStr(var_F0))
  loc_147C08D:               Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ResInstruction4")))))
  loc_147C0AA:             Else
  loc_147C0CC:               If (var_280 = Ucase("Instruction5")) Then
  loc_147C0FD:                 Proc_6_17_EAA2B0(var_F0)
  loc_147C119:                 Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147C121:                 Call 0.Method_arg_20 (CStr(var_F0))
  loc_147C129:                 Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ResInstruction5")))))
  loc_147C146:               Else
  loc_147C168:                 If (var_280 = Ucase("Instruction6")) Then
  loc_147C199:                   Proc_6_17_EAA2B0(var_F0)
  loc_147C1B5:                   Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147C1BD:                   Call 0.Method_arg_20 (CStr(var_F0))
  loc_147C1C5:                   Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ResInstruction6")))))
  loc_147C1E2:                 Else
  loc_147C204:                   If (var_280 = Ucase("Instruction7")) Then
  loc_147C235:                     Proc_6_17_EAA2B0(var_F0)
  loc_147C251:                     Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147C259:                     Call 0.Method_arg_20 (CStr(var_F0))
  loc_147C261:                     Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ResInstruction7")))))
  loc_147C27E:                   Else
  loc_147C2A0:                     If (var_280 = Ucase("Instruction8")) Then
  loc_147C2D1:                       Proc_6_17_EAA2B0(var_F0)
  loc_147C2ED:                       Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147C2F5:                       Call 0.Method_arg_20 (CStr(var_F0))
  loc_147C2FD:                       Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ResInstruction8")))))
  loc_147C31A:                     Else
  loc_147C33C:                       If (var_280 = Ucase("Instruction9")) Then
  loc_147C36D:                         Proc_6_17_EAA2B0(var_F0)
  loc_147C389:                         Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147C391:                         Call 0.Method_arg_20 (CStr(var_F0))
  loc_147C399:                         Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ResInstruction9")))))
  loc_147C3B6:                       Else
  loc_147C3D8:                         If (var_280 = Ucase("Instruction10")) Then
  loc_147C409:                           Proc_6_17_EAA2B0(var_F0)
  loc_147C425:                           Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147C42D:                           Call 0.Method_arg_20 (CStr(var_F0))
  loc_147C435:                           Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ResInstruction10")))))
  loc_147C452:                         Else
  loc_147C474:                           If (var_280 = Ucase("Instruction11")) Then
  loc_147C4A5:                             Proc_6_17_EAA2B0(var_F0)
  loc_147C4C1:                             Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147C4C9:                             Call 0.Method_arg_20 (CStr(var_F0))
  loc_147C4D1:                             Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ResInstruction11")))))
  loc_147C4EE:                           Else
  loc_147C510:                             If (var_280 = Ucase("Instruction12")) Then
  loc_147C541:                               Proc_6_17_EAA2B0(var_F0)
  loc_147C55D:                               Call 0.Method_arg_90 (var_250, CLng(var_86), var_254)
  loc_147C565:                               Call 0.Method_arg_20 (CStr(var_F0))
  loc_147C56D:                               Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ResInstruction12")))))
  loc_147C587:                             End If
  loc_147C587:                           End If
  loc_147C587:                         End If
  loc_147C587:                       End If
  loc_147C587:                     End If
  loc_147C587:                   End If
  loc_147C587:                 End If
  loc_147C587:               End If
  loc_147C587:             End If
  loc_147C587:           End If
  loc_147C587:         End If
  loc_147C587:       End If
  loc_147C58A:     Next var_270 'Integer
  loc_147C58F:   End If
  loc_147C58F: End If
  loc_147C594: Set var_8C = Nothing
  loc_147C597: Exit Sub
  loc_147C598: ' Referenced from: 147B99C
  loc_147C598: Proc_6_60_E62BC4()
  loc_147C59D: Exit Sub
End Sub

Public Sub Proc_66_41_1494440
  'Data Table: 540784
  Dim var_9C As Variant
  Dim var_B0 As Long
  Dim var_B8 As Variant
  Dim var_C0 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim Me As Recordset15
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_144 As String
  Dim var_148 As MSHFlexGrid
  Dim var_184 As Variant
  loc_14937E3: var_B0 = CLng(Me.FGrid.Row)
  loc_14937F3: If Not (var_B0 = CLng(2)) Then
  loc_14937FD:   If Not (var_B0 = CLng(3)) Then
  loc_1493807:     If (var_B0 = CLng(4)) Then
  loc_149380A:     End If
  loc_149380A:   End If
  loc_1493810:   var_B4 = global_52
  loc_149381B:   If Not (var_B4 = "LuxuryTaxRegister") Then
  loc_1493826:     If (var_B4 = "LuxuryTaxRegisterI") Then
  loc_1493829:     End If
  loc_1493835:     Set var_9C = Me.TxtGrid
  loc_149383B:     Call 0.Method_Proc_66_41_14944400 (0, var_B8)
  loc_149385A:     If (var_B8.Text <> vbNullString) Then
  loc_1493870:       var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1493888:       var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_14938A5:       Set var_B8 = Me.ListView.SelectedItem
  loc_14938AB:       var_BC = var_B8.Text
  loc_14938B3:       var_134 = CVar(var_BC) 'String
  loc_14938BB:       Set var_148 = Me.FGrid
  loc_14938C1:       LateIdCallSt
  loc_14938E1:     End If
  loc_14938E4:   Else
  loc_14938EC:     If (var_B4 = "GRC") Then
  loc_1493918:       If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_1493938:         If (CLng(Me.FGrid.Row) = CLng(2)) Then
  loc_1493947:           Set var_9C = Me.TxtGrid
  loc_149394D:           Call 0.Method_Proc_66_41_14944400 (0, var_B8, var_BC, var_148)
  loc_1493955:           var_134 = var_B8.Text
  loc_149396C:           If (var_BC <> vbNullString) Then
  loc_1493972:             var_104 = CVar(CLng(2)) 'Long
  loc_1493977:             var_124 = 1
  loc_149399D:             var_B8 = Me.Fields.Item("Name")
  loc_14939AE:             var_D0 = CVar(CStr(var_B8.Value)) 'String
  loc_14939B6:             Set var_C0 = Me.FGrid
  loc_14939BC:             LateIdCallSt
  loc_14939D7:           Else
  loc_14939DA:             var_F4 = CVar(CLng(2)) 'Long
  loc_14939DF:             var_114 = 1
  loc_14939E8:             var_144 = vbNullString
  loc_14939F2:             Set var_9C = Me.FGrid
  loc_14939F8:             LateIdCallSt
  loc_1493A03:           End If
  loc_1493A06:         Else
  loc_1493A18:           Call 0.Method_Proc_66_41_14944400 (0, var_B8, var_BC, Me.TxtGrid, var_144, var_114, var_F4)
  loc_1493A20:           var_C0 = var_B8.Text
  loc_1493A37:           If (var_BC <> vbNullString) Then
  loc_1493A3D:             var_104 = CVar(CLng(3)) 'Long
  loc_1493A42:             var_124 = 1
  loc_1493A68:             var_B8 = Me.Fields.Item("Name")
  loc_1493A79:             var_D0 = CVar(CStr(var_B8.Value)) 'String
  loc_1493A81:             Set var_C0 = Me.FGrid
  loc_1493A87:             LateIdCallSt
  loc_1493AA2:           Else
  loc_1493AA5:             var_F4 = CVar(CLng(3)) 'Long
  loc_1493AAA:             var_114 = 1
  loc_1493AB3:             var_144 = vbNullString
  loc_1493ABD:             Set var_9C = Me.FGrid
  loc_1493AC3:             LateIdCallSt
  loc_1493ACE:           End If
  loc_1493ACE:         End If
  loc_1493ACE:       End If
  loc_1493AD1:     Else
  loc_1493AD9:       If (var_B4 = "FormCReport") Then
  loc_1493B05:         If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_1493B25:           If (CLng(Me.FGrid.Row) = CLng(2)) Then
  loc_1493B3A:             Call 0.Method_Proc_66_41_14944400 (0, var_B8, var_BC, Me.TxtGrid, var_144, var_114, var_F4)
  loc_1493B42:             var_C0 = var_B8.Text
  loc_1493B59:             If (var_BC <> vbNullString) Then
  loc_1493B5F:               var_104 = CVar(CLng(2)) 'Long
  loc_1493B64:               var_124 = 1
  loc_1493B9B:               var_D0 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1493BA3:               Set var_C0 = Me.FGrid
  loc_1493BA9:               LateIdCallSt
  loc_1493BC4:               var_104 = CVar(CLng(2)) 'Long
  loc_1493BC9:               var_124 = 2
  loc_1493BEF:               var_B8 = Me.Fields.Item("DocID")
  loc_1493C00:               var_D0 = CVar(CStr(var_B8.Value)) 'String
  loc_1493C08:               Set var_C0 = Me.FGrid
  loc_1493C0E:               LateIdCallSt
  loc_1493C29:             Else
  loc_1493C2C:               var_F4 = CVar(CLng(2)) 'Long
  loc_1493C31:               var_114 = 1
  loc_1493C3A:               var_144 = vbNullString
  loc_1493C44:               Set var_9C = Me.FGrid
  loc_1493C4A:               LateIdCallSt
  loc_1493C58:               var_F4 = CVar(CLng(2)) 'Long
  loc_1493C5D:               var_114 = 2
  loc_1493C66:               var_144 = vbNullString
  loc_1493C70:               Set var_9C = Me.FGrid
  loc_1493C76:               LateIdCallSt
  loc_1493C81:             End If
  loc_1493C84:           Else
  loc_1493C96:             Call 0.Method_Proc_66_41_14944400 (0, var_B8, var_BC, Me.TxtGrid, var_144, var_114, var_F4)
  loc_1493C9E:             var_9C = var_B8.Text
  loc_1493CB5:             If (var_BC <> vbNullString) Then
  loc_1493CBB:               var_104 = CVar(CLng(3)) 'Long
  loc_1493CC0:               var_124 = 1
  loc_1493CF7:               var_D0 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1493CFF:               Set var_C0 = Me.FGrid
  loc_1493D05:               LateIdCallSt
  loc_1493D20:               var_104 = CVar(CLng(3)) 'Long
  loc_1493D25:               var_124 = 2
  loc_1493D4B:               var_B8 = Me.Fields.Item("DocID")
  loc_1493D5C:               var_D0 = CVar(CStr(var_B8.Value)) 'String
  loc_1493D64:               Set var_C0 = Me.FGrid
  loc_1493D6A:               LateIdCallSt
  loc_1493D85:             Else
  loc_1493D88:               var_F4 = CVar(CLng(3)) 'Long
  loc_1493D8D:               var_114 = 1
  loc_1493D96:               var_144 = vbNullString
  loc_1493DA0:               Set var_9C = Me.FGrid
  loc_1493DA6:               LateIdCallSt
  loc_1493DB4:               var_F4 = CVar(CLng(3)) 'Long
  loc_1493DB9:               var_114 = 2
  loc_1493DC2:               var_144 = vbNullString
  loc_1493DCC:               Set var_9C = Me.FGrid
  loc_1493DD2:               LateIdCallSt
  loc_1493DDD:             End If
  loc_1493DDD:           End If
  loc_1493DDD:         End If
  loc_1493DDD:       End If
  loc_1493DDD:     End If
  loc_1493DDD:   End If
  loc_1493DE0: Else
  loc_1493DE7:   If Not (var_B0 = CLng(5)) Then
  loc_1493DF1:     If Not (var_B0 = CLng(6)) Then
  loc_1493DFB:       If Not (var_B0 = CLng(7)) Then
  loc_1493E05:         If Not (var_B0 = CLng(8)) Then
  loc_1493E0F:           If (var_B0 = CLng(9)) Then
  loc_1493E12:           End If
  loc_1493E12:         End If
  loc_1493E12:       End If
  loc_1493E12:     End If
  loc_1493E24:     Call 0.Method_Proc_66_41_14944400 (0, var_B8, var_BC, Me.TxtGrid, var_144, var_114, var_F4)
  loc_1493E2C:     var_9C = var_B8.Text
  loc_1493E43:     If (var_BC <> vbNullString) Then
  loc_1493E59:       var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1493E71:       var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1493E8E:       Set var_B8 = Me.ListView.SelectedItem
  loc_1493E9C:       var_134 = CVar(var_B8.Text) 'String
  loc_1493EA4:       Set var_148 = Me.FGrid
  loc_1493EAA:       LateIdCallSt
  loc_1493ECA:     End If
  loc_1493ECD:   Else
  loc_1493ED4:     If (var_B0 = CLng(4)) Then
  loc_1493EDD:       var_160 = global_52
  loc_1493EE3:     Else
  loc_1493EEA:       If Not (var_B0 = CLng(0)) Then
  loc_1493EF4:         If (var_B0 = CLng(1)) Then
  loc_1493EF7:         End If
  loc_1493F0A:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1493F13:         Set var_148 = Me.FGrid
  loc_1493F22:         var_114 = CVar(CLng(var_148.Col)) 'Long
  loc_1493F30:         Set var_9C = Me.TxtGrid
  loc_1493F36:         Call 0.Method_Proc_66_41_14944400 (0, var_B8, var_114, var_F4, var_148, var_134, var_114)
  loc_1493F57:         LateIdCallSt
  loc_1493F80:         If (global_52 = "LuxuryTaxRegister") Then
  loc_1493F8C:           Set var_9C = Me.TxtGrid
  loc_1493F92:           Call 0.Method_Proc_66_41_14944400 (0, var_B8, Me.FGrid, CVar(Proc_6_33_1512840(var_B8, var_F4, var_144, var_114)))
  loc_1493FBB:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1493FD3:           var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1493FFF:           var_184 = CVar(CStr(Format(CVar(Proc_6_33_1512840(var_B8, "dd/MMM/yyyy", var_B8)), "dd/MMM/yyyy"))) 'String
  loc_1494007:           Set var_164 = Me.FGrid
  loc_149400D:           LateIdCallSt
  loc_1494034:         End If
  loc_149403F:         If (global_52 = "Form6TourismReport") Then
  loc_149404B:           Set var_9C = Me.TxtGrid
  loc_1494051:           Call 0.Method_Proc_66_41_14944400 (0, var_B8, var_164, var_184, 1)
  loc_149407A:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1494092:           var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_14940BE:           var_184 = CVar(CStr(Format(CVar(Proc_6_120_133A1D8(var_B8, 1, var_124)), "MMM/YYYY"))) 'String
  loc_14940C6:           Set var_164 = Me.FGrid
  loc_14940CC:           LateIdCallSt
  loc_14940F3:         End If
  loc_14940FE:         If (global_52 = "Form4TourismReport") Then
  loc_149410A:           Set var_9C = Me.TxtGrid
  loc_1494110:           Call 0.Method_Proc_66_41_14944400 (0, var_B8, var_164, var_184, 1, 1)
  loc_1494139:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1494151:           var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_149417D:           var_184 = CVar(CStr(Format(CVar(Proc_6_120_133A1D8(var_B8, var_124, var_104)), "MMM/YYYY"))) 'String
  loc_1494185:           Set var_164 = Me.FGrid
  loc_149418B:           LateIdCallSt
  loc_14941B2:         End If
  loc_14941BD:         If (global_52 = "LuxuryTaxRegisterI") Then
  loc_14941C9:           Set var_9C = Me.TxtGrid
  loc_14941CF:           Call 0.Method_Proc_66_41_14944400 (0, var_B8, var_164, var_184, 1, 1)
  loc_14941F8:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1494210:           var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_149423C:           var_184 = CVar(CStr(Format(CVar(Proc_6_33_1512840(var_B8, var_124, var_104)), "dd/MMM/yyyy"))) 'String
  loc_1494244:           Set var_164 = Me.FGrid
  loc_149424A:           LateIdCallSt
  loc_1494271:         End If
  loc_149427C:         If (global_52 = "LTFORMII") Then
  loc_1494288:           Set var_9C = Me.TxtGrid
  loc_149428E:           Call 0.Method_Proc_66_41_14944400 (0, var_B8, var_164, var_184, 1, 1)
  loc_14942B7:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14942CF:           var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_14942FB:           var_184 = CVar(CStr(Format(CVar(Proc_6_120_133A1D8(var_B8, var_124, var_104)), "MMM/YYYY"))) 'String
  loc_1494303:           Set var_164 = Me.FGrid
  loc_1494309:           LateIdCallSt
  loc_1494330:         End If
  loc_149433B:         If (global_52 = "LTFORMIV") Then
  loc_1494347:           Set var_9C = Me.TxtGrid
  loc_149434D:           Call 0.Method_Proc_66_41_14944400 (0, var_B8, var_164, var_184, 1, 1)
  loc_1494376:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149438E:           var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_14943BA:           var_184 = CVar(CStr(Format(CVar(Proc_6_120_133A1D8(var_B8, var_124, var_104)), "MMM/YYYY"))) 'String
  loc_14943C2:           Set var_164 = Me.FGrid
  loc_14943C8:           LateIdCallSt
  loc_14943EF:         End If
  loc_14943EF:       End If
  loc_14943EF:     End If
  loc_14943EF:   End If
  loc_14943EF: End If
  loc_14943FA: If (arg_10 = 0) Then
  loc_1494401:   Set var_9C = Me.FGrid
  loc_149441D:   Set var_9C = Me.TxtGrid
  loc_1494423:   Call 0.Method_Proc_66_41_14944400 (0, var_B8, 0, FGrid.DispID_8001, &HFF, var_164, var_184)
  loc_149442B:   var_B8.Visible = True
  loc_1494437: End If
  loc_1494437: Proc_66_41_1494440 = 1
End Sub

Public Sub Proc_66_42_162A980
  'Data Table: 540784
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_88 As Integer
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_124 As MSHFlexGrid
  loc_162942C: Call 0.Method_arg_78 (var_8C)
  loc_1629447: Me.Pic.Top = ((var_8C - Me.Pic.Width) - CDbl(&HA))
  loc_162946C: Call 0.Method_Me0 (var_8C)
  loc_162947E: var_B8 = CVar(((var_8C - CDbl(Me.FGrid.Width)) / CDbl(2))) 'Single
  loc_1629487: Set var_98 = Me.FGrid
  loc_162948D: var_98.Left = var_B8
  loc_16294AE: Me.FGrid.Top = CVar(CDbl(&H4B))
  loc_16294C9: Me.FGrid.Rows = &HA
  loc_16294E4: Me.FGrid.Cols = 3
  loc_16294FF: Me.FGrid.FixedCols = 1
  loc_1629507: var_B8 = 0
  loc_1629510: var_D8 = &H898
  loc_162951D: Set var_90 = Me.FGrid
  loc_1629523: LateIdCallSt
  loc_162952E: var_B8 = 1
  loc_1629537: var_D8 = &H898
  loc_1629544: Set var_90 = Me.FGrid
  loc_162954A: LateIdCallSt
  loc_1629555: var_B8 = 2
  loc_162955E: var_D8 = 0
  loc_162956B: Set var_90 = Me.FGrid
  loc_1629571: LateIdCallSt
  loc_162957C: var_B8 = 1
  loc_162958B: var_D8 = CVar(CInt(1)) 'Integer
  loc_1629593: Set var_90 = Me.FGrid
  loc_1629599: LateIdCallSt
  loc_16295C9: For var_EC = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_EC 'Integer
  loc_16295D3:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_16295D8:   var_D8 = 0
  loc_16295E5:   Set var_90 = Me.FGrid
  loc_16295EB:   LateIdCallSt
  loc_16295F9: Next var_EC 'Integer
  loc_16295FE: Call Proc_66_47_140FAB0()
  loc_162960A: For var_F0 = 1 To 4: var_86 = var_F0 'Integer
  loc_162961A:   Set var_90 = Me.GridSel
  loc_1629620:   Call 0.Method_Proc_66_42_162A9800 (var_86, var_98)
  loc_162963E:   If (CBool(var_98.Visible) = &HFF) Then
  loc_1629647:     var_88 = (var_88 + 1)
  loc_162964A:   End If
  loc_162964D: Next var_F0 'Integer
  loc_162966D: var_B8 = CVar(CDbl(((((global_108 - global_110) + 1) * CInt(220)) + 500))) 'Single
  loc_162967C: Me.FGrid.Height = var_B8
  loc_162968A: var_100 = global_112 'Variant
  loc_1629699: If (var_100 = 0) Then
  loc_16296AF:   Me.FGrid.Top = CVar(CDbl(1000))
  loc_16296BA: Else
  loc_16296C5:   If (var_100 = 1) Then
  loc_16296D1:     Set var_90 = Me.GridSel
  loc_16296D7:     Call 0.Method_Proc_66_42_162A9800 (1)
  loc_16296DF:     var_A8 = var_98.Width
  loc_16296EE:     Call 0.Method_Me0 (var_8C, var_A8)
  loc_1629700:     var_B8 = CVar(((var_8C - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_162970E:     Set var_104 = Me.GridSel
  loc_1629714:     Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_162971C:     var_108.Left = 1
  loc_1629739:     var_118 = Me.FGrid.Height
  loc_1629760:     var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162976E:     Set var_104 = Me.GridSel
  loc_1629774:     Call 0.Method_Proc_66_42_162A9800 (1, var_108, 1)
  loc_162977C:     var_108.Top = var_118
  loc_162979D:     var_A8 = Me.FGrid.Height
  loc_16297AD:     Set var_98 = Me.Pic
  loc_16297BE:     Call 0.Method_Me8 (var_8C, var_A8)
  loc_16297D5:     var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_98.Height) - CDbl(1200))) 'Single
  loc_16297E3:     Set var_104 = Me.GridSel
  loc_16297E9:     Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_16297F1:     var_108.Height = 1
  loc_162980D:     Set var_90 = Me.GridSel
  loc_1629813:     Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_1629832:     Set var_104 = Me.Check1
  loc_1629838:     Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_1629840:     var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162985C:     Set var_90 = Me.GridSel
  loc_1629862:     Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_1629881:     Set var_104 = Me.Check1
  loc_1629887:     Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_162988F:     var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_16298A8:     var_11C = global_52
  loc_16298B3:     If Not (var_11C = "ConfirmLetter") Then
  loc_16298BE:       If Not (var_11C = "RegistrationCard") Then
  loc_16298C9:         If (var_11C = "CancellLetter") Then
  loc_16298CC:         End If
  loc_16298CC:       End If
  loc_16298DE:       Set var_90 = Me.GridSel
  loc_16298E4:       Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_16298EC:       var_98.Top = CVar(CDbl(500))
  loc_16298F8:       var_B8 = 1
  loc_1629913:       Set var_90 = Me.GridSel
  loc_1629919:       Call 0.Method_Proc_66_42_162A9800 (1, var_98, &H3E8)
  loc_1629921:       LateIdCallSt
  loc_162994C:       Set var_90 = Me.GridSel
  loc_1629952:       Call 0.Method_Proc_66_42_162A9800 (1, var_98, CVar(CInt(1)), 1)
  loc_162995A:       LateIdCallSt
  loc_1629984:       Set var_90 = Me.GridSel
  loc_162998A:       Call 0.Method_Proc_66_42_162A9800 (1, var_98, &HBB8, 3)
  loc_1629992:       LateIdCallSt
  loc_16299BC:       Set var_90 = Me.GridSel
  loc_16299C2:       Call 0.Method_Proc_66_42_162A9800 (1, var_98, &H4B0, 4, var_98)
  loc_16299CA:       LateIdCallSt
  loc_16299DD:       var_B8 = CVar(CDbl(6000)) 'Single
  loc_16299EB:       Set var_90 = Me.GridSel
  loc_16299F1:       Call 0.Method_Proc_66_42_162A9800 (1, var_98, var_B8, var_98)
  loc_16299F9:       var_98.Width = var_98
  loc_1629A0E:       Set var_90 = Me.GridSel
  loc_1629A14:       Call 0.Method_Proc_66_42_162A9800 (1, var_98, var_98)
  loc_1629A33:       Set var_104 = Me.Check1
  loc_1629A39:       Call 0.Method_Proc_66_42_162A9800 (1, var_108, (CDbl(var_98.Top) + CDbl(&H14)))
  loc_1629A41:       var_108.Top = var_B8
  loc_1629A5D:       Set var_90 = Me.GridSel
  loc_1629A63:       Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_1629A82:       Set var_104 = Me.Check1
  loc_1629A88:       Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_1629A90:       var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1629AA3:     End If
  loc_1629AA6:   Else
  loc_1629AB1:     If (var_100 = 2) Then
  loc_1629ABD:       Set var_90 = Me.GridSel
  loc_1629AC3:       Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_1629ACB:       var_A8 = var_98.Width
  loc_1629ADA:       Call 0.Method_Me0 (var_8C, var_A8)
  loc_1629AF0:       var_B8 = CVar((((var_8C / CDbl(2)) - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_1629AFE:       Set var_104 = Me.GridSel
  loc_1629B04:       Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_1629B0C:       var_108.Left = 2
  loc_1629B29:       var_118 = Me.FGrid.Height
  loc_1629B50:       var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_1629B5E:       Set var_104 = Me.GridSel
  loc_1629B64:       Call 0.Method_Proc_66_42_162A9800 (1, var_108, 2)
  loc_1629B6C:       var_108.Top = var_118
  loc_1629B8D:       var_A8 = Me.FGrid.Height
  loc_1629B9D:       Set var_98 = Me.Pic
  loc_1629BA3:       var_94 = var_98.Height
  loc_1629BAE:       Call 0.Method_Me8 (var_8C, var_A8)
  loc_1629BC5:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_94) - CDbl(1200))) 'Single
  loc_1629BD3:       Set var_104 = Me.GridSel
  loc_1629BD9:       Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_1629BE1:       var_108.Height = 2
  loc_1629BFD:       Set var_90 = Me.GridSel
  loc_1629C03:       Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_1629C22:       Set var_104 = Me.Check1
  loc_1629C28:       Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_1629C30:       var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_1629C4C:       Set var_90 = Me.GridSel
  loc_1629C52:       Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_1629C71:       Set var_104 = Me.Check1
  loc_1629C77:       Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_1629C7F:       var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1629C98:       Call 0.Method_Me0 (var_94)
  loc_1629CA6:       Set var_90 = Me.GridSel
  loc_1629CAC:       Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_1629CB4:       var_A8 = var_98.Width
  loc_1629CC3:       Call 0.Method_Me0 (var_8C, var_A8)
  loc_1629CE1:       var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_1629CEF:       Set var_104 = Me.GridSel
  loc_1629CF5:       Call 0.Method_Proc_66_42_162A9800 (2, var_108)
  loc_1629CFD:       var_108.Left = 2
  loc_1629D1A:       var_118 = Me.FGrid.Height
  loc_1629D41:       var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_1629D4F:       Set var_104 = Me.GridSel
  loc_1629D55:       Call 0.Method_Proc_66_42_162A9800 (2, var_108, 2)
  loc_1629D5D:       var_108.Top = var_118
  loc_1629D7E:       var_A8 = Me.FGrid.Height
  loc_1629D8E:       Set var_98 = Me.Pic
  loc_1629D94:       var_94 = var_98.Height
  loc_1629D9F:       Call 0.Method_Me8 (var_8C, var_A8)
  loc_1629DB6:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_94) - CDbl(1200))) 'Single
  loc_1629DC4:       Set var_104 = Me.GridSel
  loc_1629DCA:       Call 0.Method_Proc_66_42_162A9800 (2, var_108)
  loc_1629DD2:       var_108.Height = 2
  loc_1629DEE:       Set var_90 = Me.GridSel
  loc_1629DF4:       Call 0.Method_Proc_66_42_162A9800 (2, var_98)
  loc_1629E13:       Set var_104 = Me.Check1
  loc_1629E19:       Call 0.Method_Proc_66_42_162A9800 (2, var_108)
  loc_1629E21:       var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_1629E3D:       Set var_90 = Me.GridSel
  loc_1629E43:       Call 0.Method_Proc_66_42_162A9800 (2, var_98)
  loc_1629E62:       Set var_104 = Me.Check1
  loc_1629E68:       Call 0.Method_Proc_66_42_162A9800 (2, var_108)
  loc_1629E70:       var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1629E86:     Else
  loc_1629E91:       If (var_100 = 3) Then
  loc_1629E9D:         Set var_90 = Me.GridSel
  loc_1629EA3:         Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_1629EAB:         var_A8 = var_98.Width
  loc_1629EBA:         Call 0.Method_Me0 (var_8C, var_A8)
  loc_1629ED0:         var_B8 = CVar((((var_8C / CDbl(2)) - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_1629EDE:         Set var_104 = Me.GridSel
  loc_1629EE4:         Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_1629EEC:         var_108.Left = 3
  loc_1629F03:         Set var_98 = Me.FGrid
  loc_1629F09:         var_118 = var_98.Height
  loc_1629F30:         var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_1629F3E:         Set var_104 = Me.GridSel
  loc_1629F44:         Call 0.Method_Proc_66_42_162A9800 (1, var_108, 3)
  loc_1629F4C:         var_108.Top = var_118
  loc_1629F6C:         Set var_90 = Me.GridSel
  loc_1629F72:         Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_1629F91:         Set var_104 = Me.Check1
  loc_1629F97:         Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_1629F9F:         var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_1629FBB:         Set var_90 = Me.GridSel
  loc_1629FC1:         Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_1629FE0:         Set var_104 = Me.Check1
  loc_1629FE6:         Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_1629FEE:         var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162A00A:         Set var_90 = Me.GridSel
  loc_162A010:         Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_162A02F:         Set var_104 = Me.GridSel
  loc_162A035:         Call 0.Method_Proc_66_42_162A9800 (3, var_108)
  loc_162A03D:         var_108.Left = CVar(CDbl(var_98.Left))
  loc_162A059:         Set var_104 = Me.GridSel
  loc_162A05F:         Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_162A067:         var_118 = var_108.Height
  loc_162A079:         Set var_90 = Me.GridSel
  loc_162A07F:         Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_162A09B:         var_B8 = CVar(((CDbl(var_98.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162A0A9:         Set var_120 = Me.GridSel
  loc_162A0AF:         Call 0.Method_Proc_66_42_162A9800 (3, var_124, CVar(CDbl(var_98.Left)))
  loc_162A0B7:         var_124.Top = var_118
  loc_162A0DB:         Set var_90 = Me.GridSel
  loc_162A0E1:         Call 0.Method_Proc_66_42_162A9800 (3, var_98)
  loc_162A100:         Set var_104 = Me.Check1
  loc_162A106:         Call 0.Method_Proc_66_42_162A9800 (3, var_108)
  loc_162A10E:         var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162A12A:         Set var_90 = Me.GridSel
  loc_162A130:         Call 0.Method_Proc_66_42_162A9800 (3, var_98)
  loc_162A14F:         Set var_104 = Me.Check1
  loc_162A155:         Call 0.Method_Proc_66_42_162A9800 (3, var_108)
  loc_162A15D:         var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162A176:         Call 0.Method_Me0 (var_94)
  loc_162A184:         Set var_90 = Me.GridSel
  loc_162A18A:         Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_162A192:         var_A8 = var_98.Width
  loc_162A1A1:         Call 0.Method_Me0 (var_8C, var_A8)
  loc_162A1BF:         var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_162A1CD:         Set var_104 = Me.GridSel
  loc_162A1D3:         Call 0.Method_Proc_66_42_162A9800 (2, var_108)
  loc_162A1DB:         var_108.Left = CVar(CDbl(var_98.Left))
  loc_162A1F2:         Set var_98 = Me.FGrid
  loc_162A1F8:         var_118 = var_98.Height
  loc_162A21F:         var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162A22D:         Set var_104 = Me.GridSel
  loc_162A233:         Call 0.Method_Proc_66_42_162A9800 (2, var_108, CVar(CDbl(var_98.Left)))
  loc_162A23B:         var_108.Top = var_118
  loc_162A25B:         Set var_104 = Me.GridSel
  loc_162A261:         Call 0.Method_Proc_66_42_162A9800 (2, var_108)
  loc_162A269:         var_118 = var_108.Height
  loc_162A27B:         Set var_90 = Me.GridSel
  loc_162A281:         Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_162A29D:         var_B8 = CVar(((CDbl(var_98.Height) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162A2AB:         Set var_120 = Me.GridSel
  loc_162A2B1:         Call 0.Method_Proc_66_42_162A9800 (2, var_124, CVar(CDbl(var_98.Left)))
  loc_162A2B9:         var_124.Height = var_118
  loc_162A2DD:         Set var_90 = Me.GridSel
  loc_162A2E3:         Call 0.Method_Proc_66_42_162A9800 (2, var_98)
  loc_162A302:         Set var_104 = Me.Check1
  loc_162A308:         Call 0.Method_Proc_66_42_162A9800 (2, var_108)
  loc_162A310:         var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162A32C:         Set var_90 = Me.GridSel
  loc_162A332:         Call 0.Method_Proc_66_42_162A9800 (2, var_98)
  loc_162A351:         Set var_104 = Me.Check1
  loc_162A357:         Call 0.Method_Proc_66_42_162A9800 (2, var_108)
  loc_162A35F:         var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162A375:       Else
  loc_162A380:         If (var_100 = 4) Then
  loc_162A38C:           Set var_90 = Me.GridSel
  loc_162A392:           Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_162A39A:           var_A8 = var_98.Width
  loc_162A3A9:           Call 0.Method_Me0 (var_8C, var_A8)
  loc_162A3BF:           var_B8 = CVar((((var_8C / CDbl(2)) - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_162A3CD:           Set var_104 = Me.GridSel
  loc_162A3D3:           Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_162A3DB:           var_108.Left = 4
  loc_162A3F2:           Set var_98 = Me.FGrid
  loc_162A3F8:           var_118 = var_98.Height
  loc_162A41F:           var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162A42D:           Set var_104 = Me.GridSel
  loc_162A433:           Call 0.Method_Proc_66_42_162A9800 (1, var_108, 4)
  loc_162A43B:           var_108.Top = var_118
  loc_162A45B:           Set var_90 = Me.GridSel
  loc_162A461:           Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_162A480:           Set var_104 = Me.Check1
  loc_162A486:           Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_162A48E:           var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162A4AA:           Set var_90 = Me.GridSel
  loc_162A4B0:           Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_162A4CF:           Set var_104 = Me.Check1
  loc_162A4D5:           Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_162A4DD:           var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162A4F6:           Call 0.Method_Me0 (var_94)
  loc_162A504:           Set var_90 = Me.GridSel
  loc_162A50A:           Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_162A512:           var_A8 = var_98.Width
  loc_162A521:           Call 0.Method_Me0 (var_8C, var_A8)
  loc_162A53F:           var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_162A54D:           Set var_104 = Me.GridSel
  loc_162A553:           Call 0.Method_Proc_66_42_162A9800 (2, var_108)
  loc_162A55B:           var_108.Left = 4
  loc_162A572:           Set var_98 = Me.FGrid
  loc_162A578:           var_118 = var_98.Height
  loc_162A59F:           var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162A5AD:           Set var_104 = Me.GridSel
  loc_162A5B3:           Call 0.Method_Proc_66_42_162A9800 (2, var_108, 4)
  loc_162A5BB:           var_108.Top = var_118
  loc_162A5DB:           Set var_90 = Me.GridSel
  loc_162A5E1:           Call 0.Method_Proc_66_42_162A9800 (2, var_98)
  loc_162A600:           Set var_104 = Me.Check1
  loc_162A606:           Call 0.Method_Proc_66_42_162A9800 (2, var_108)
  loc_162A60E:           var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162A62A:           Set var_90 = Me.GridSel
  loc_162A630:           Call 0.Method_Proc_66_42_162A9800 (2, var_98)
  loc_162A64F:           Set var_104 = Me.Check1
  loc_162A655:           Call 0.Method_Proc_66_42_162A9800 (2, var_108)
  loc_162A65D:           var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162A679:           Set var_90 = Me.GridSel
  loc_162A67F:           Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_162A69E:           Set var_104 = Me.GridSel
  loc_162A6A4:           Call 0.Method_Proc_66_42_162A9800 (3, var_108)
  loc_162A6AC:           var_108.Left = CVar(CDbl(var_98.Left))
  loc_162A6C8:           Set var_104 = Me.GridSel
  loc_162A6CE:           Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_162A6D6:           var_118 = var_108.Height
  loc_162A6E8:           Set var_90 = Me.GridSel
  loc_162A6EE:           Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_162A70A:           var_B8 = CVar(((CDbl(var_98.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162A718:           Set var_120 = Me.GridSel
  loc_162A71E:           Call 0.Method_Proc_66_42_162A9800 (3, var_124, CVar(CDbl(var_98.Left)))
  loc_162A726:           var_124.Top = var_118
  loc_162A74A:           Set var_90 = Me.GridSel
  loc_162A750:           Call 0.Method_Proc_66_42_162A9800 (3, var_98)
  loc_162A76F:           Set var_104 = Me.Check1
  loc_162A775:           Call 0.Method_Proc_66_42_162A9800 (3, var_108)
  loc_162A77D:           var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162A799:           Set var_90 = Me.GridSel
  loc_162A79F:           Call 0.Method_Proc_66_42_162A9800 (3, var_98)
  loc_162A7BE:           Set var_104 = Me.Check1
  loc_162A7C4:           Call 0.Method_Proc_66_42_162A9800 (3, var_108)
  loc_162A7CC:           var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162A7E5:           Call 0.Method_Me0 (var_94)
  loc_162A7F3:           Set var_90 = Me.GridSel
  loc_162A7F9:           Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_162A801:           var_A8 = var_98.Width
  loc_162A810:           Call 0.Method_Me0 (var_8C, var_A8)
  loc_162A82E:           var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_162A83C:           Set var_104 = Me.GridSel
  loc_162A842:           Call 0.Method_Proc_66_42_162A9800 (4, var_108)
  loc_162A84A:           var_108.Left = CVar(CDbl(var_98.Left))
  loc_162A866:           Set var_104 = Me.GridSel
  loc_162A86C:           Call 0.Method_Proc_66_42_162A9800 (1, var_108)
  loc_162A874:           var_118 = var_108.Height
  loc_162A886:           Set var_90 = Me.GridSel
  loc_162A88C:           Call 0.Method_Proc_66_42_162A9800 (1, var_98)
  loc_162A8A8:           var_B8 = CVar(((CDbl(var_98.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_162A8B6:           Set var_120 = Me.GridSel
  loc_162A8BC:           Call 0.Method_Proc_66_42_162A9800 (4, var_124, CVar(CDbl(var_98.Left)))
  loc_162A8C4:           var_124.Top = var_118
  loc_162A8E8:           Set var_90 = Me.GridSel
  loc_162A8EE:           Call 0.Method_Proc_66_42_162A9800 (4, var_98)
  loc_162A90D:           Set var_104 = Me.Check1
  loc_162A913:           Call 0.Method_Proc_66_42_162A9800 (4, var_108)
  loc_162A91B:           var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_162A937:           Set var_90 = Me.GridSel
  loc_162A93D:           Call 0.Method_Proc_66_42_162A9800 (4, var_98)
  loc_162A95C:           Set var_104 = Me.Check1
  loc_162A962:           Call 0.Method_Proc_66_42_162A9800 (4, var_108)
  loc_162A96A:           var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_162A97D:         End If
  loc_162A97D:       End If
  loc_162A97D:     End If
  loc_162A97D:   End If
  loc_162A97D: End If
  loc_162A97D: Exit Sub
End Sub

Public Sub Proc_66_43_E50A44
  'Data Table: 540784
  loc_E50A2B: If (Me.FrmList.Visible = &HFF) Then
  loc_E50A3A:   Me.FrmList.Visible = False
  loc_E50A42: End If
  loc_E50A42: Exit Sub
End Sub

Public Sub Proc_66_44_1281BC4(arg_C, arg_10, arg_14) '1281BC4
  'Data Table: 540784
  Dim var_B8 As Integer
  Dim var_90 As Integer
  Dim var_A8 As Variant
  Dim var_F0 As Long
  Dim var_E0 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_10C As MSHFlexGrid
  Dim var_17C As Variant
  Dim var_16C As Variant
  Dim var_1AC As Variant
  Dim var_1C2 As Integer
  loc_128162A: On Error Goto loc_1281BAE
  loc_1281630: var_8C = vbNullString
  loc_128163B: CRefVarAry
  loc_1281643: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_1281664:   If (arg_C(var_8E) = 0) Then
  loc_1281667:     GoTo loc_12819FF
  loc_128166A:   End If
  loc_128167B:   var_90 = CInt(arg_C(var_8E))
  loc_1281685:   var_A8 = CVar(CLng(var_90)) 'Long
  loc_128169D:   Set var_DC = Me.GridSel
  loc_12816A3:   Call 0.Method_Proc_66_44_1281BC40 (arg_10, var_E0, 0)
  loc_12816CB:   If (CStr(var_E0.TextMatrix)) = "ü") Then
  loc_12816D7:     If (CInt(arg_14) = 0) Then
  loc_12816F6:       Set var_DC = Me.GridSel
  loc_12816FC:       Call 0.Method_Proc_66_44_1281BC40 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_1281704:       var_C8 = var_E0.TextMatrix)
  loc_1281735:       Set var_108 = Me.GridSel
  loc_128173B:       Call 0.Method_Proc_66_44_1281BC40 (arg_10, var_10C, 2, CVar(CLng(var_90)), ",")
  loc_1281773:       var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar(CStr(var_C8)), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)))))
  loc_1281778:       var_8C = CStr(var_1AC)
  loc_128179D:     Else
  loc_12817A6:       If (CInt(arg_14) = 1) Then
  loc_12817C5:         Set var_DC = Me.GridSel
  loc_12817CB:         Call 0.Method_Proc_66_44_1281BC40 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_12817D3:         var_C8 = var_E0.TextMatrix)
  loc_128180B:         Set var_108 = Me.GridSel
  loc_1281811:         Call 0.Method_Proc_66_44_1281BC40 (arg_10, var_10C, 2, CVar(CLng(var_90)), "," & "'")
  loc_128185E:         var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar("'" & CStr(var_C8) & "'"), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)) & "'")))
  loc_1281863:         var_8C = CStr(var_1AC)
  loc_128188F:       End If
  loc_128188F:     End If
  loc_12818AE:     Set var_DC = Me.GridSel
  loc_12818B4:     Call 0.Method_Proc_66_44_1281BC40 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_12818E6:     If (Len(var_94 & CStr(var_E0.TextMatrix))) < &HFF) Then
  loc_1281905:       Set var_DC = Me.GridSel
  loc_128190B:       Call 0.Method_Proc_66_44_1281BC40 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_1281913:       var_C8 = var_E0.TextMatrix)
  loc_1281944:       Set var_108 = Me.GridSel
  loc_128194A:       Call 0.Method_Proc_66_44_1281BC40 (arg_10, var_10C, 1, CVar(CLng(var_90)), ",")
  loc_1281961:       var_17C = CVar(CVar(var_94) & CStr(var_10C.TextMatrix))) 'String
  loc_1281968:       var_16C = CVar(CStr(var_C8)) 'String
  loc_128197A:       var_18C = IIf((var_94 = vbNullString), var_16C, var_17C)
  loc_1281982:       var_1AC = (var_C8 + var_18C)
  loc_1281987:       var_94 = CStr(var_1AC)
  loc_12819A9:     End If
  loc_12819AD:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_12819CB:     Set var_DC = Me.GridSel
  loc_12819D1:     Call 0.Method_Proc_66_44_1281BC40 (arg_10, var_E0, vbNullString, 0)
  loc_12819D9:     LateIdCallSt
  loc_12819EB:   Else
  loc_12819F2:     var_B8 = 0
  loc_12819FB:     VarIndexSt
  loc_12819FF:   End If
  loc_12819FF:   ' Referenced from: 1281667
  loc_1281A02: Next var_98 'Integer
  loc_1281A0F: CRefVarAry
  loc_1281A17: For var_1C0 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_1C0 'Integer
  loc_1281A4F:   If CBool(arg_C(var_8E) <> 0) Then
  loc_1281A56:     var_A8 = CVar(CLng(CInt(arg_C(var_8E)))) 'Long
  loc_1281A74:     Set var_DC = Me.GridSel
  loc_1281A7A:     Call 0.Method_Proc_66_44_1281BC40 (arg_10, var_E0, "ü", 0)
  loc_1281A82:     LateIdCallSt
  loc_1281A91:   End If
  loc_1281A94: Next var_1C0 'Integer
  loc_1281AA1: If (var_8C = vbNullString) Then
  loc_1281AA4:   var_A8 = 0
  loc_1281AAD:   var_F0 = 1
  loc_1281AC0:   Set var_DC = Me.GridSel
  loc_1281AC6:   Call 0.Method_Proc_66_44_1281BC40 (arg_10, var_E0)
  loc_1281ACE:   var_C8 = var_E0.TextMatrix)
  loc_1281AF6:   MsgBox(CVar("Select " & CStr(var_C8)), &H40, var_16C, var_17C, var_18C)
  loc_1281B1C:   Set var_DC = Me.GridSel
  loc_1281B22:   Call 0.Method_Proc_66_44_1281BC40 (arg_10, var_E0, var_C8)
  loc_1281B41:   Proc_66_44_1281BC4 = 0
  loc_1281B47: End If
  loc_1281B4A: var_88 = var_8C
  loc_1281B50: var_1C2 = arg_10
  loc_1281B59: If (var_1C2 = 1) Then
  loc_1281B62:   global_180 = var_94
  loc_1281B69: Else
  loc_1281B6F:   If (var_1C2 = 2) Then
  loc_1281B78:     global_184 = var_94
  loc_1281B7F:   Else
  loc_1281B85:     If (var_1C2 = 3) Then
  loc_1281B8E:       global_188 = var_94
  loc_1281B95:     Else
  loc_1281B9B:       If (var_1C2 = 4) Then
  loc_1281BA4:         global_192 = var_94
  loc_1281BA8:       End If
  loc_1281BA8:     End If
  loc_1281BA8:   End If
  loc_1281BA8: End If
  loc_1281BA8: Proc_66_44_1281BC4 = var_1C2
  loc_1281BAE: ' Referenced from: 128162A
  loc_1281BB6: Proc_6_60_E62BC4(0, GridSel.DispID_8001)
  loc_1281BBB: Proc_66_44_1281BC4 = var_F0
End Sub

Public Sub Proc_66_45_EFFE8C
  'Data Table: 540784
  Dim var_CC As Variant
  loc_EFFDD1: If (CLng(Me.FGrid.Row) = CLng(global_108)) Then
  loc_EFFDE2:   Proc_303_0_FB9B68("	")
  loc_EFFDEA:   Exit Sub
  loc_EFFDEB: End If
  loc_EFFE2A: For var_BC = CInt(CLng(Me.FGrid.Row)) To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_EFFE37:   var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_EFFE5E:   If (CLng(Me.FGrid.RowHeight)) <> 0) Then
  loc_EFFE68:     var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_EFFE77:     Me.FGrid.Row = var_CC
  loc_EFFE7F:     Exit For
  loc_EFFE82:   End If
  loc_EFFE85: Next var_BC 'Integer
  loc_EFFE8A: ' Referenced from: EFFE7F
  loc_EFFE8A: Exit Sub
End Sub

Public Sub Proc_66_46_122334C(arg_C, arg_10) '122334C
  'Data Table: 540784
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_E8 As CheckBox
  loc_1222E43: var_86 = arg_C
  loc_1222E4C: If (var_86 = 1) Then
  loc_1222E6B:   Me.Recordset15.CursorLocation = 3
  loc_1222E94:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_1222EA2:   CVarUnk
  loc_1222EA7:   VerifyVarObj
  loc_1222EB3:   Set var_8C = Me.GridSel
  loc_1222EB9:   Call 0.Method_Proc_66_46_122334C0 (var_86, var_B0, New)
  loc_1222EC1:   LateIdStAd
  loc_1222EE3:   ReDim Preserve global_164(0 To 0)
  loc_1222EFA:   global_164(0) = 0
  loc_1222EFB: End If
  loc_1222F01: If (var_86 = 2) Then
  loc_1222F20:   Me.Recordset15.CursorLocation = 3
  loc_1222F49:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_1222F57:   CVarUnk
  loc_1222F5C:   VerifyVarObj
  loc_1222F68:   Set var_8C = Me.GridSel
  loc_1222F6E:   Call 0.Method_Proc_66_46_122334C0 (var_86, var_B0, New, 1, -1)
  loc_1222F76:   LateIdStAd
  loc_1222F98:   ReDim Preserve global_168(0 To 0)
  loc_1222FAF:   global_168(0) = 0
  loc_1222FB0: End If
  loc_1222FB6: If (var_86 = 3) Then
  loc_1222FD5:   Me.Recordset15.CursorLocation = 3
  loc_1222FFE:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_122300C:   CVarUnk
  loc_1223011:   VerifyVarObj
  loc_122301D:   Set var_8C = Me.GridSel
  loc_1223023:   Call 0.Method_Proc_66_46_122334C0 (var_86, var_B0, New, 1, -1)
  loc_122302B:   LateIdStAd
  loc_122304D:   ReDim Preserve global_172(0 To 0)
  loc_1223064:   global_172(0) = 0
  loc_1223065: End If
  loc_122306B: If (var_86 = 4) Then
  loc_122308A:   Me.Recordset15.CursorLocation = 3
  loc_12230B3:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_12230C1:   CVarUnk
  loc_12230C6:   VerifyVarObj
  loc_12230D2:   Set var_8C = Me.GridSel
  loc_12230D8:   Call 0.Method_Proc_66_46_122334C0 (var_86, var_B0, New, 1, -1, var_B0)
  loc_12230E0:   LateIdStAd
  loc_1223102:   ReDim Preserve global_176(0 To 0)
  loc_1223119:   global_176(0) = 0
  loc_122311A: End If
  loc_122312D: Set var_8C = Me.GridSel
  loc_1223133: Call 0.Method_Proc_66_46_122334C0 (var_86, var_B0, CVar(CDbl(1700)), var_B0, var_B0)
  loc_122313B: var_B0.Height = var_B0
  loc_1223155: Set var_8C = Me.GridSel
  loc_122315B: Call 0.Method_Proc_66_46_122334C0 (var_86, var_B0, True)
  loc_1223163: var_B0.Visible = 1
  loc_122317E: Set var_8C = Me.GridSel
  loc_1223184: Call 0.Method_Proc_66_46_122334C0 (var_86, var_B0, False)
  loc_122318C: var_B0.Enabled = -1
  loc_12231A4: Set var_8C = Me.Check1
  loc_12231AA: Call 0.Method_Proc_66_46_122334C0 (var_86, var_B0)
  loc_12231B2: var_B0.Visible = True
  loc_12231D1: Set var_8C = Me.GridSel
  loc_12231D7: Call 0.Method_Proc_66_46_122334C0 (var_86, var_B0)
  loc_12231DF: var_B0.Width = CVar(CDbl(5200))
  loc_12231EB: var_9C = 0
  loc_1223207: Set var_8C = Me.GridSel
  loc_122320D: Call 0.Method_Proc_66_46_122334C0 (var_86, var_B0, &H258)
  loc_1223215: LateIdCallSt
  loc_1223240: Set var_8C = Me.GridSel
  loc_1223246: Call 0.Method_Proc_66_46_122334C0 (var_86, var_B0, 0, 2)
  loc_122324E: LateIdCallSt
  loc_1223279: Set var_8C = Me.GridSel
  loc_122327F: Call 0.Method_Proc_66_46_122334C0 (var_86, var_B0, &HFA0, 1)
  loc_1223287: LateIdCallSt
  loc_12232A5: Set var_8C = Me.Check1
  loc_12232AB: Call 0.Method_Proc_66_46_122334C0 (var_86, var_B0, CDbl(580), var_B0)
  loc_12232B3: var_B0.Width = var_B0
  loc_12232BF: var_9C = 0
  loc_12232D2: Set var_8C = Me.GridSel
  loc_12232D8: Call 0.Method_Proc_66_46_122334C0 (var_86, var_B0, var_9C)
  loc_12232FE: Set var_E4 = Me.Check1
  loc_1223304: Call 0.Method_Proc_66_46_122334C0 (var_86, var_E8, CDbl((CLng(var_B0.RowHeight)) + &H14)))
  loc_122330C: var_E8.Height = var_B0
  loc_122332F: Set var_8C = Me.Check1
  loc_1223335: Call 0.Method_Proc_66_46_122334C0 (var_86, var_B0, CInt(1))
  loc_122333D: var_B0.Value = var_9C
  loc_1223349: Exit Sub
End Sub

Public Sub Proc_66_47_140FAB0
  'Data Table: 540784
  Dim var_A8 As Variant
  Dim var_BC As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_B8 As String
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_E4 As Variant
  Dim unk_5407B4 As Connection15
  Dim var_17C As Variant
  Dim var_114 As Variant
  Dim var_104 As Long
  Dim var_144 As Variant
  Dim var_198 As Long
  Dim var_178 As Variant
  loc_140F072: var_98 = global_52
  loc_140F07D: If Not (var_98 = "ConfirmLetter") Then
  loc_140F088:   If Not (var_98 = "RegistrationCard") Then
  loc_140F093:     If (var_98 = "CancellLetter") Then
  loc_140F096:     End If
  loc_140F096:   End If
  loc_140F0A5:   Me.FGrid.Visible = False
  loc_140F0B5:   global_112 = 1
  loc_140F0BC:   var_88 = "Select '' as O,B.BookNo As BookNo,DocId As Code,GF.Name AS GNAME,convert(varchar(11),B.ArrDate) as ArrDate From Booking B Left Join GuestProf GF ON B.GuestProf=GF.Code Order by BookNo desc"
  loc_140F0C7:   Call Proc_66_46_122334C(1, var_88)
  loc_140F0CF: Else
  loc_140F0D7:   If Not (var_98 = "FormCReport") Then
  loc_140F0E2:     If (var_98 = "GRC") Then
  loc_140F0E5:     End If
  loc_140F0E9:     Set var_C4 = Me.FGrid
  loc_140F0EF:     var_A8 = CVar(CLng(2)) 'Long
  loc_140F0F4:     var_D4 = 0
  loc_140F0FD:     var_F4 = "From Folio No "
  loc_140F106:     LateIdCallSt
  loc_140F111:     var_A8 = CVar(CLng(2)) 'Long
  loc_140F116:     var_D4 = &H10E
  loc_140F122:     LateIdCallSt
  loc_140F12D:     var_A8 = CVar(CLng(3)) 'Long
  loc_140F132:     var_D4 = 0
  loc_140F13B:     var_F4 = "To Folio No"
  loc_140F144:     LateIdCallSt
  loc_140F14F:     var_A8 = CVar(CLng(3)) 'Long
  loc_140F154:     var_D4 = &H10E
  loc_140F160:     LateIdCallSt
  loc_140F16B:     var_A8 = CVar(CLng(2)) 'Long
  loc_140F170:     var_D4 = 1
  loc_140F179:     var_F4 = vbNullString
  loc_140F182:     LateIdCallSt
  loc_140F18D:     var_A8 = CVar(CLng(3)) 'Long
  loc_140F192:     var_D4 = 1
  loc_140F1A4:     LateIdCallSt
  loc_140F1AE:     Set var_C4 = Nothing 
  loc_140F1B9:     global_110 = CInt(2)
  loc_140F1CC:     Set var_BC = Me.FGrid
  loc_140F1D2:     var_BC.Row = CVar(CLng(global_110))
  loc_140F1FB:     If (global_52 <> "GRC") Then
  loc_140F20B:       var_B8 = "Select '' As O,CAST(GF.FolioNo AS VARCHAR) As Name,GF.DocId,GF.Name as GuestName,RO.ChkInDate As ArrDate From ((GuestFolio GF Left Join RoomOCC RO ON GF.DOCID=RO.DOCID) Left Join GuestProf on GF.GuestProf=GuestProf.Code) Where GF.VType='CHK' AND RO.ChkInDate BETWEEN "
  loc_140F213:       var_A8 = MemVar_1F920F4
  loc_140F21B:       Proc_6_7_F25D88(var_114, var_A8, var_B8, var_178, -1, var_BC, 0, CInt(3))
  loc_140F227:       var_D4 = " AND "
  loc_140F23B:       Proc_6_7_F25D88(var_144, MemVar_1F920FC, global_110 & var_114 & var_D4, var_C4, vbNullString)
  loc_140F25A:       unk_5407B4.Execute CStr(var_D4 & var_144 & " AND GuestProf.Type='Foreign' AND RO.SNO=1 Order By GF.FolioNo"), var_A8, var_C4
  loc_140F26B:       Set global_200 = var_BC
  loc_140F28D:     Else
  loc_140F29A:       var_B8 = "Select '' As O,CAST(GF.FolioNo AS VARCHAR) As Name,GF.DocId,GF.Name as GuestName,RO.ChkInDate As ArrDate From ((GuestFolio GF Left Join RoomOCC RO ON GF.DOCID=RO.DOCID) Left Join GuestProf on GF.GuestProf=GuestProf.Code) Where GF.VType='CHK' AND RO.ChkInDate BETWEEN "
  loc_140F2AA:       Proc_6_7_F25D88(var_114, MemVar_1F920F4, var_B8, var_178)
  loc_140F2B2:       var_124 = -1 & var_114 
  loc_140F2B6:       var_D4 = " AND "
  loc_140F2CA:       Proc_6_7_F25D88(var_144, MemVar_1F920FC, global_110 & var_114 & var_D4)
  loc_140F2D6:       var_F4 = " AND RO.SNO=1 Order By GF.FolioNo"
  loc_140F2E9:       unk_5407B4.Execute CStr(var_BC & var_144 & var_F4), var_F4, var_D4
  loc_140F2FA:       Set global_200 = var_BC
  loc_140F329:       Set var_BC = Me.DGForFolio
  loc_140F33A:       Set var_17C = DGForFolio.DispID_69
  loc_140F348:       var_17C.Item(1).Caption = "Folio No"
  loc_140F359:     End If
  loc_140F362:     CVarUnk
  loc_140F367:     VerifyVarObj
  loc_140F36D:     Set var_BC = Me.DGForFolio
  loc_140F373:     LateIdStAd
  loc_140F392:     Call 0.Method_Proc_66_47_140FAB00 (1, var_17C, 0)
  loc_140F39A:     var_17C.Visible = Me.BTNPRINT
  loc_140F3A9:   Else
  loc_140F3B1:     If Not (var_98 = "Form1TourismReport") Then
  loc_140F3BC:       If Not (var_98 = "Form2TourismReport") Then
  loc_140F3C7:         If Not (var_98 = "Form5TourismReport") Then
  loc_140F3D2:           If (var_98 = "MonthlyStatisticalReturn") Then
  loc_140F3D5:           End If
  loc_140F3D5:         End If
  loc_140F3D5:       End If
  loc_140F3D9:       Set var_184 = Me.FGrid
  loc_140F3DF:       var_A8 = CVar(CLng(0)) 'Long
  loc_140F3E4:       var_D4 = 0
  loc_140F3ED:       var_F4 = "From Date"
  loc_140F3F6:       LateIdCallSt
  loc_140F401:       var_A8 = CVar(CLng(0)) 'Long
  loc_140F406:       var_D4 = &H10E
  loc_140F412:       LateIdCallSt
  loc_140F41D:       var_A8 = CVar(CLng(1)) 'Long
  loc_140F422:       var_D4 = 0
  loc_140F42B:       var_F4 = "To Date"
  loc_140F434:       LateIdCallSt
  loc_140F43F:       var_A8 = CVar(CLng(1)) 'Long
  loc_140F444:       var_D4 = &H10E
  loc_140F450:       LateIdCallSt
  loc_140F45B:       var_A8 = CVar(CLng(0)) 'Long
  loc_140F460:       var_D4 = 1
  loc_140F46E:       var_114 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_140F475:       LateIdCallSt
  loc_140F483:       var_A8 = CVar(CLng(1)) 'Long
  loc_140F488:       var_D4 = 1
  loc_140F496:       var_114 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_140F49D:       LateIdCallSt
  loc_140F4AA:       Set var_184 = Nothing 
  loc_140F4CE:       Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_140F4DD:       global_108 = CInt(1)
  loc_140F4E8:       global_112 = 0
  loc_140F4EF:     Else
  loc_140F4F7:       If Not (var_98 = "LuxuryTaxRegister") Then
  loc_140F502:         If (var_98 = "LuxuryTaxRegisterI") Then
  loc_140F505:         End If
  loc_140F509:         Set var_188 = Me.FGrid
  loc_140F50F:         var_A8 = CVar(CLng(0)) 'Long
  loc_140F514:         var_D4 = 0
  loc_140F51D:         var_F4 = "From Date"
  loc_140F526:         LateIdCallSt
  loc_140F531:         var_A8 = CVar(CLng(0)) 'Long
  loc_140F536:         var_D4 = &H10E
  loc_140F542:         LateIdCallSt
  loc_140F54D:         var_A8 = CVar(CLng(1)) 'Long
  loc_140F552:         var_D4 = 0
  loc_140F55B:         var_F4 = "To Date"
  loc_140F564:         LateIdCallSt
  loc_140F56F:         var_A8 = CVar(CLng(1)) 'Long
  loc_140F574:         var_D4 = &H10E
  loc_140F580:         LateIdCallSt
  loc_140F58B:         var_A8 = CVar(CLng(2)) 'Long
  loc_140F590:         var_D4 = 0
  loc_140F599:         var_F4 = "Print Summary "
  loc_140F5A2:         LateIdCallSt
  loc_140F5AD:         var_A8 = CVar(CLng(2)) 'Long
  loc_140F5B2:         var_D4 = &H10E
  loc_140F5BE:         LateIdCallSt
  loc_140F5C9:         var_A8 = CVar(CLng(3)) 'Long
  loc_140F5CE:         var_D4 = 0
  loc_140F5D7:         var_F4 = "Print All Bills "
  loc_140F5E0:         LateIdCallSt
  loc_140F5EB:         var_A8 = CVar(CLng(3)) 'Long
  loc_140F5F0:         var_D4 = &H10E
  loc_140F5FC:         LateIdCallSt
  loc_140F607:         var_A8 = CVar(CLng(4)) 'Long
  loc_140F60C:         var_D4 = 0
  loc_140F615:         var_F4 = "All Guest Profile"
  loc_140F61E:         LateIdCallSt
  loc_140F629:         var_A8 = CVar(CLng(4)) 'Long
  loc_140F62E:         var_D4 = &H10E
  loc_140F63A:         LateIdCallSt
  loc_140F645:         var_E4 = CVar(CLng(0)) 'Long
  loc_140F64A:         var_104 = 1
  loc_140F653:         var_D4 = "01/"
  loc_140F688:         var_144 = CVar(CStr(CDate(1 & Format(MemVar_1F920EC, "MMM/yyyy")))) 'String
  loc_140F68F:         LateIdCallSt
  loc_140F6A7:         var_A8 = CVar(CLng(0)) 'Long
  loc_140F6AC:         var_D4 = &H10E
  loc_140F6B8:         LateIdCallSt
  loc_140F6C3:         var_F4 = CVar(CLng(1)) 'Long
  loc_140F6C8:         var_198 = 1
  loc_140F6D1:         var_D4 = "01/"
  loc_140F72D:         var_178 = CVar(CStr(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & Format(MemVar_1F920EC, "MMM/yyyy"))))))) 'String
  loc_140F734:         LateIdCallSt
  loc_140F752:         var_A8 = CVar(CLng(1)) 'Long
  loc_140F757:         var_D4 = &H10E
  loc_140F763:         LateIdCallSt
  loc_140F76E:         var_A8 = CVar(CLng(2)) 'Long
  loc_140F773:         var_D4 = 1
  loc_140F77C:         var_F4 = "Yes"
  loc_140F785:         LateIdCallSt
  loc_140F790:         var_A8 = CVar(CLng(3)) 'Long
  loc_140F795:         var_D4 = 1
  loc_140F79E:         var_F4 = "Yes"
  loc_140F7A7:         LateIdCallSt
  loc_140F7B2:         var_A8 = CVar(CLng(4)) 'Long
  loc_140F7C9:         LateIdCallSt
  loc_140F7D3:         Set var_188 = Nothing 
  loc_140F7DE:         global_110 = CInt(0)
  loc_140F7F7:         Me.FGrid.Row = CVar(CLng(global_110))
  loc_140F809:         var_A8 = 1
  loc_140F823:         var_88 = "Select '' as O,Name As TaxName,Code From RevMast Where FieldType='T' AND cODE IN ('" & MemVar_1F92070 & "LT') Order by Name"
  loc_140F831:         Call Proc_66_46_122334C(1, var_88)
  loc_140F841:         Set var_BC = Me.Check1
  loc_140F847:         Call 0.Method_Proc_66_47_140FAB00 (1, var_17C, 0, var_A8, CInt(4), global_110, var_188)
  loc_140F84F:         var_17C.Value = "No"
  loc_140F866:         Set var_BC = Me.Check1
  loc_140F86C:         Call 0.Method_Proc_66_47_140FAB00 (1, var_17C, 0, 1, var_A8)
  loc_140F874:         var_17C.Visible = var_188
  loc_140F880:         var_A8 = 0
  loc_140F8A1:         Set var_BC = Me.GridSel
  loc_140F8A7:         Call 0.Method_Proc_66_47_140FAB00 (1, var_17C, vbNullString, 0)
  loc_140F8AF:         LateIdCallSt
  loc_140F8C1:       Else
  loc_140F8C9:         If Not (var_98 = "Form6TourismReport") Then
  loc_140F8D4:           If Not (var_98 = "Form4TourismReport") Then
  loc_140F8DF:             If Not (var_98 = "LTFORMII") Then
  loc_140F8EA:               If (var_98 = "LTFORMIV") Then
  loc_140F8ED:               End If
  loc_140F8ED:             End If
  loc_140F8ED:           End If
  loc_140F8F1:           Set var_1BC = Me.FGrid
  loc_140F8F7:           var_A8 = CVar(CLng(0)) 'Long
  loc_140F8FC:           var_D4 = 0
  loc_140F905:           var_F4 = "For Month"
  loc_140F90E:           LateIdCallSt
  loc_140F919:           var_A8 = CVar(CLng(0)) 'Long
  loc_140F91E:           var_D4 = &H10E
  loc_140F92A:           LateIdCallSt
  loc_140F935:           var_D4 = CVar(CLng(0)) 'Long
  loc_140F93A:           var_F4 = 1
  loc_140F96C:           var_134 = CVar(CStr(Format(MemVar_1F920EC, "MMM/YYYY"))) 'String
  loc_140F973:           LateIdCallSt
  loc_140F986:           Set var_1BC = Nothing 
  loc_140F991:           global_110 = CInt(0)
  loc_140F9AA:           Me.FGrid.Row = CVar(CLng(global_110))
  loc_140F9BB:           global_108 = global_110
  loc_140F9C6:           global_112 = 0
  loc_140F9CD:         Else
  loc_140F9D5:           If (var_98 = "CheckedInGuestDtl") Then
  loc_140F9DC:             Set var_1C0 = Me.FGrid
  loc_140F9E2:             var_A8 = CVar(CLng(0)) 'Long
  loc_140F9E7:             var_D4 = 0
  loc_140F9F0:             var_F4 = "For Date"
  loc_140F9F9:             LateIdCallSt
  loc_140FA04:             var_A8 = CVar(CLng(0)) 'Long
  loc_140FA09:             var_D4 = &H10E
  loc_140FA15:             LateIdCallSt
  loc_140FA20:             var_A8 = CVar(CLng(0)) 'Long
  loc_140FA25:             var_D4 = 1
  loc_140FA3A:             LateIdCallSt
  loc_140FA52:             global_110 = CInt(0)
  loc_140FA6B:             Me.FGrid.Row = CVar(CLng(global_110))
  loc_140FA94:             Set var_BC = Me.BTNPRINT
  loc_140FA9A:             Call 0.Method_Proc_66_47_140FAB00 (1, var_17C, 0, 0, CInt(0), global_110, Nothing)
  loc_140FAA2:             var_17C.Visible = CVar(CStr(MemVar_1F920EC))
  loc_140FAAE:           End If
  loc_140FAAE:         End If
  loc_140FAAE:       End If
  loc_140FAAE:     End If
  loc_140FAAE:   End If
  loc_140FAAE: End If
  loc_140FAAE: Exit Sub
End Sub

Public Sub Proc_66_48_125975C(arg_C) '125975C
  'Data Table: 540784
  Dim var_8C As Recordset15
  loc_12591E1: Set var_8C = arg_C 
  loc_1259209: var_8C.Fields.Append "PlanTariff", &HC8, &H3C
  loc_1259235: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_1259261: var_8C.Fields.Append "BookingRef", &HC8, &H19
  loc_125928D: var_8C.Fields.Append "PartyName", &HC8, &H32
  loc_12592B9: var_8C.Fields.Append "PartyAdd1", &HC8, &H32
  loc_12592E5: var_8C.Fields.Append "Diplomat", &HC8, &HF
  loc_1259311: var_8C.Fields.Append "User", &HC8, &HA
  loc_125933D: var_8C.Fields.Append "PartyAdd2", &HC8, &H32
  loc_1259369: var_8C.Fields.Append "PartyCity", &HC8, &H28
  loc_1259395: var_8C.Fields.Append "PartyState", &HC8, &H14
  loc_12593C1: var_8C.Fields.Append "arrDt", &HC8, &H14
  loc_12593ED: var_8C.Fields.Append "depdt", &HC8, &H14
  loc_1259419: var_8C.Fields.Append "RoomType", &HC8, &H32
  loc_1259445: var_8C.Fields.Append "NoRooms", &HC8, 5
  loc_1259471: var_8C.Fields.Append "Adults", &HC8, 5
  loc_125949D: var_8C.Fields.Append "Childs", &HC8, 5
  loc_12594C9: var_8C.Fields.Append "Tarrif", &HC8, &H19
  loc_12594F5: var_8C.Fields.Append "incTax", &HC8, 5
  loc_1259521: var_8C.Fields.Append "Plan_Package", &HC8, &H19
  loc_125954D: var_8C.Fields.Append "Remarks", &HC8, &H19
  loc_1259579: var_8C.Fields.Append "receiptNo", &HC8, &HF
  loc_12595A5: var_8C.Fields.Append "Addate", &HC8, &H14
  loc_12595D1: var_8C.Fields.Append "Adamount", &HC8, &H14
  loc_12595FD: var_8C.Fields.Append "Rdisc", &HC8, &H19
  loc_1259629: var_8C.Fields.Append "RSDisc", &HC8, &H19
  loc_1259655: var_8C.Fields.Append "U_EntDt", &HC8, &H19
  loc_1259681: var_8C.Fields.Append "NoDays", &HC8, 3
  loc_12596AD: var_8C.Fields.Append "Comment1", &HC8, &H32
  loc_12596D9: var_8C.Fields.Append "Comment2", &HC8, &H32
  loc_1259705: var_8C.Fields.Append "Comment3", &HC8, &H32
  loc_1259715: var_8C.CursorType = 3
  loc_1259722: var_8C.LockType = 3
  loc_1259741: var_8C.Open var_A0, var_B0, -1
  loc_1259748: Set var_8C = Nothing 
  loc_125974F: Set var_88 = arg_C 
  loc_1259753: Proc_66_48_125975C = -1
  loc_1259759: -1 = &H20
End Sub

Public Sub Proc_66_49_1243378(arg_C) '1243378
  'Data Table: 540784
  Dim var_8C As Recordset15
  Dim -1.global_184 As Single
  loc_1242E29: Set var_8C = arg_C 
  loc_1242E51: var_8C.Fields.Append "PlanTariff", &HC8, &H3C
  loc_1242E7D: var_8C.Fields.Append "DocId", &HC8, &H19
  loc_1242EA9: var_8C.Fields.Append "BookingRef", &HC8, &H19
  loc_1242ED5: var_8C.Fields.Append "PartyName", &HC8, &H32
  loc_1242F01: var_8C.Fields.Append "PartyAdd1", &HC8, &H32
  loc_1242F2D: var_8C.Fields.Append "Diplomat", &HC8, &HF
  loc_1242F59: var_8C.Fields.Append "User", &HC8, &HA
  loc_1242F85: var_8C.Fields.Append "PartyAdd2", &HC8, &H32
  loc_1242FB1: var_8C.Fields.Append "PartyCity", &HC8, &H28
  loc_1242FDD: var_8C.Fields.Append "PartyState", &HC8, &H14
  loc_1243009: var_8C.Fields.Append "arrDt", &HC8, &H14
  loc_1243035: var_8C.Fields.Append "depdt", &HC8, &H14
  loc_1243061: var_8C.Fields.Append "RoomType", &HC8, &H32
  loc_124308D: var_8C.Fields.Append "NoRooms", &HC8, 5
  loc_12430B9: var_8C.Fields.Append "Adults", &HC8, 5
  loc_12430E5: var_8C.Fields.Append "Childs", &HC8, 5
  loc_1243111: var_8C.Fields.Append "Tarrif", &HC8, &H19
  loc_124313D: var_8C.Fields.Append "incTax", &HC8, 5
  loc_1243169: var_8C.Fields.Append "Plan_Package", &HC8, &H19
  loc_1243195: var_8C.Fields.Append "Remarks", &HC8, &H19
  loc_12431C1: var_8C.Fields.Append "Cancel", &HC8, 1
  loc_12431ED: var_8C.Fields.Append "CancelDt", &HC8, &H14
  loc_1243219: var_8C.Fields.Append "CancelDay", &HC8, &H14
  loc_1243245: var_8C.Fields.Append "receiptNo", &HC8, &HF
  loc_1243271: var_8C.Fields.Append "Addate", &HC8, &H14
  loc_124329D: var_8C.Fields.Append "Adamount", &HC8, &H14
  loc_12432C9: var_8C.Fields.Append "Rdisc", &HC8, &H19
  loc_12432F5: var_8C.Fields.Append "RSDisc", &HC8, &H19
  loc_1243321: var_8C.Fields.Append "U_EntDt", &HC8, &H19
  loc_1243331: var_8C.CursorType = 3
  loc_124333E: var_8C.LockType = 3
  loc_124335D: var_8C.Open var_A0, var_B0, -1
  loc_1243364: Set var_8C = Nothing 
  loc_124336B: Set var_88 = arg_C 
  loc_124336F: Proc_66_49_1243378 = -1
  loc_1243375: -1.global_184 = &H20
End Sub

Public Sub Proc_66_50_EFAAF4(arg_C) 'EFAAF4
  'Data Table: 540784
  Dim var_8C As Recordset15
  loc_EFAA1D: Set var_8C = arg_C 
  loc_EFAA45: var_8C.Fields.Append "Country", &HC8, &H32
  loc_EFAA71: var_8C.Fields.Append "Guest", &HC8, &HC
  loc_EFAA9D: var_8C.Fields.Append "Night", &HC8, &HC
  loc_EFAAAD: var_8C.CursorType = 3
  loc_EFAABA: var_8C.LockType = 3
  loc_EFAAD9: var_8C.Open var_A0, var_B0, -1
  loc_EFAAE0: Set var_8C = Nothing 
  loc_EFAAE7: Set var_88 = arg_C 
  loc_EFAAEB: Proc_66_50_EFAAF4 = -1
End Sub

Public Sub Proc_66_51_F22548(arg_C) 'F22548
  'Data Table: 540784
  Dim var_8C As Recordset15
  loc_F22445: Set var_8C = arg_C 
  loc_F2246D: var_8C.Fields.Append "IndianGuest", &HC8, &HC
  loc_F22499: var_8C.Fields.Append "ForeignerGuest", &HC8, &HC
  loc_F224C5: var_8C.Fields.Append "IndianNight", &HC8, &HC
  loc_F224F1: var_8C.Fields.Append "ForeignerNight", &HC8, &HC
  loc_F22501: var_8C.CursorType = 3
  loc_F2250E: var_8C.LockType = 3
  loc_F2252D: var_8C.Open var_A0, var_B0, -1
  loc_F22534: Set var_8C = Nothing 
  loc_F2253B: Set var_88 = arg_C 
  loc_F2253F: Proc_66_51_F22548 = -1
  loc_F22545: Me01 = Mid$(-1, &H20, var_A0)
End Sub

Public Sub Proc_66_52_EFAE3C(arg_C) 'EFAE3C
  'Data Table: 540784
  Dim var_8C As Recordset15
  loc_EFAD65: Set var_8C = arg_C 
  loc_EFAD8D: var_8C.Fields.Append "State", &HC8, &H32
  loc_EFADB9: var_8C.Fields.Append "Guest", &HC8, &HC
  loc_EFADE5: var_8C.Fields.Append "Night", &HC8, &HC
  loc_EFADF5: var_8C.CursorType = 3
  loc_EFAE02: var_8C.LockType = 3
  loc_EFAE21: var_8C.Open var_A0, var_B0, -1
  loc_EFAE28: Set var_8C = Nothing 
  loc_EFAE2F: Set var_88 = arg_C 
  loc_EFAE33: Proc_66_52_EFAE3C = -1
End Sub

Public Sub Proc_66_53_F2175C(arg_C) 'F2175C
  'Data Table: 540784
  Dim var_8C As Recordset15
  loc_F21659: Set var_8C = arg_C 
  loc_F21681: var_8C.Fields.Append "IndianGuest", &HC8, &HC
  loc_F216AD: var_8C.Fields.Append "ForeignerGuest", &HC8, &HC
  loc_F216D9: var_8C.Fields.Append "IndianNight", &HC8, &HC
  loc_F21705: var_8C.Fields.Append "ForeignerNight", &HC8, &HC
  loc_F21715: var_8C.CursorType = 3
  loc_F21722: var_8C.LockType = 3
  loc_F21741: var_8C.Open var_A0, var_B0, -1
  loc_F21748: Set var_8C = Nothing 
  loc_F2174F: Set var_88 = arg_C 
  loc_F21753: Proc_66_53_F2175C = -1
  loc_F21759: Me01 = Mid$(-1, &H20, var_A0)
End Sub

Public Sub Proc_66_54_FC4368(arg_C) 'FC4368
  'Data Table: 540784
  Dim var_8C As Recordset15
  loc_FC41B5: Set var_8C = arg_C 
  loc_FC41DD: var_8C.Fields.Append "IndianGuest", &HC8, &HC
  loc_FC4209: var_8C.Fields.Append "ForeignerGuest", &HC8, &HC
  loc_FC4235: var_8C.Fields.Append "IndianNight", &HC8, &HC
  loc_FC4261: var_8C.Fields.Append "ForeignerNight", &HC8, &HC
  loc_FC428D: var_8C.Fields.Append "IndianChrgs", &HC8, &HC
  loc_FC42B9: var_8C.Fields.Append "ForeignerChrgs", &HC8, &HC
  loc_FC42E5: var_8C.Fields.Append "IndianTax", &HC8, &HC
  loc_FC4311: var_8C.Fields.Append "ForeignerTax", &HC8, &HC
  loc_FC4321: var_8C.CursorType = 3
  loc_FC432E: var_8C.LockType = 3
  loc_FC434D: var_8C.Open var_A0, var_B0, -1
  loc_FC4354: Set var_8C = Nothing 
  loc_FC435B: Set var_88 = arg_C 
  loc_FC435F: Proc_66_54_FC4368 = -1
  loc_FC4365: CExtInstUnk
End Sub

Public Sub Proc_66_55_1181A2C(arg_C) '1181A2C
  'Data Table: 540784
  Dim var_8C As Recordset15
  loc_118163D: Set var_8C = arg_C 
  loc_1181665: var_8C.Fields.Append "Sno", &HC8, 4
  loc_1181691: var_8C.Fields.Append "GuestName", &HC8, &H32
  loc_11816BD: var_8C.Fields.Append "BirthAge", &HC8, 3
  loc_11816E9: var_8C.Fields.Append "Age", &HC8, 3
  loc_1181715: var_8C.Fields.Append "Nationality", &HC8, &H19
  loc_1181741: var_8C.Fields.Append "RoomNo", &HC8, 5
  loc_118176D: var_8C.Fields.Append "RoomRate", &HC8, 8
  loc_1181799: var_8C.Fields.Append "ChkInDate", &HC8, &HB
  loc_11817C5: var_8C.Fields.Append "ChkInTime", &HC8, 5
  loc_11817F1: var_8C.Fields.Append "ChkOutDate", &HC8, &HB
  loc_118181D: var_8C.Fields.Append "ChkOutTime", &HC8, 5
  loc_1181849: var_8C.Fields.Append "StPeriod", &HC8, 3
  loc_1181875: var_8C.Fields.Append "TotalTax", &HC8, 8
  loc_11818A1: var_8C.Fields.Append "Person", &HC8, 5
  loc_11818CD: var_8C.Fields.Append "BillNo", &HC8, 8
  loc_11818F9: var_8C.Fields.Append "Billdate", &HC8, &HB
  loc_1181925: var_8C.Fields.Append "LTPerOcc", &HC8, 8
  loc_1181951: var_8C.Fields.Append "LTTotal", &HC8, 8
  loc_118197D: var_8C.Fields.Append "GuestProf", &HC8, 8
  loc_11819A9: var_8C.Fields.Append "mProf", &HC8, 8
  loc_11819D5: var_8C.Fields.Append "RackRate", &HC8, 8
  loc_11819E5: var_8C.CursorType = 3
  loc_11819F2: var_8C.LockType = 3
  loc_1181A11: var_8C.Open var_A0, var_B0, -1
  loc_1181A18: Set var_8C = Nothing 
  loc_1181A1F: Set var_88 = arg_C 
  loc_1181A23: Proc_66_55_1181A2C = -1
End Sub

Public Sub Proc_66_56_1002FA8(arg_C) '1002FA8
  'Data Table: 540784
  Dim var_8C As Recordset15
  loc_1002D9D: Set var_8C = arg_C 
  loc_1002DC5: var_8C.Fields.Append "IndianGuestForm1", &HC8, &HC
  loc_1002DF1: var_8C.Fields.Append "ForeignerGuestForm1", &HC8, &HC
  loc_1002E1D: var_8C.Fields.Append "IndianNightForm1", &HC8, &HC
  loc_1002E49: var_8C.Fields.Append "ForeignerNightForm1", &HC8, &HC
  loc_1002E75: var_8C.Fields.Append "CountryForm2", &HC8, &H32
  loc_1002EA1: var_8C.Fields.Append "GuestForm2", &HC8, &HC
  loc_1002ECD: var_8C.Fields.Append "NightForm2", &HC8, &HC
  loc_1002EF9: var_8C.Fields.Append "StateForm5", &HC8, &H32
  loc_1002F25: var_8C.Fields.Append "GuestForm5", &HC8, &HC
  loc_1002F51: var_8C.Fields.Append "NightForm5", &HC8, &HC
  loc_1002F61: var_8C.CursorType = 3
  loc_1002F6E: var_8C.LockType = 3
  loc_1002F8D: var_8C.Open var_A0, var_B0, -1
  loc_1002F94: Set var_8C = Nothing 
  loc_1002F9B: Set var_88 = arg_C 
  loc_1002F9F: Proc_66_56_1002FA8 = -1
End Sub

Public Sub Proc_66_57_1607DE4
  'Data Table: 540784
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_C0 As String
  Dim var_C4 As String
  Dim var_C8 As String
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim unk_5407B4 As Connection15
  Dim var_8C As Recordset15
  Dim var_A0 As Fields15
  Dim var_D8 As Variant
  Dim var_120 As String
  Dim var_124 As String
  Dim var_12C As String
  Dim var_9C As Recordset15
  Dim var_96 As Integer
  Dim var_174 As Variant
  Dim var_118 As Variant
  Dim var_160 As Variant
  Dim var_164 As Variant
  Dim var_178 As Variant
  Dim var_94 As Recordset15
  Dim var_90 As Recordset15
  Dim var_1AC As Recordset15
  Dim var_188 As Variant
  Dim var_14C As Variant
  Dim var_1A8 As Variant
  loc_1606995: global_88 = &HFF
  loc_160699E: global_60 = vbNullString
  loc_16069AE: Set var_A0 = Me.Check1
  loc_16069B4: Call 0.Method_Proc_66_57_1607DE40 (1, var_A4)
  loc_16069BC: var_A6 = var_A4.Value
  loc_16069D2: If (CLng(var_A6) = 0) Then
  loc_16069F0:   Call Proc_66_44_1281BC4(global_164, 1, CByte(1))
  loc_16069FB:   global_148 = var_C0
  loc_1606A0B:   If (global_88 = 0) Then
  loc_1606A0E:     Exit Sub
  loc_1606A0F:   End If
  loc_1606A0F: End If
  loc_1606A1B: Set var_A0 = Me.Check1
  loc_1606A21: Call 0.Method_Proc_66_57_1607DE40 (1, var_A4, var_A6)
  loc_1606A29: var_C0 = var_A4.Value
  loc_1606A3F: If (CLng(var_A6) = 0) Then
  loc_1606A63:   global_60 = global_60 & " And B.DocId in ( " & global_148 & ") "
  loc_1606A70: End If
  loc_1606A8D: Proc_6_17_EAA2B0(var_D8, MemVar_1F92070, "Select * From Enviro WHERE LOGSITE_CODE=", var_118)
  loc_1606A95: var_F8 = -1 & var_D8 
  loc_1606AA3: unk_5407B4.Execute CStr(var_F8), var_A0, global_88
  loc_1606AAE: Set var_8C = var_A0
  loc_1606AD4: If (var_8C.RecordCount > 0) Then
  loc_1606AEE:   var_A4 = var_8C.Fields.Item("CheckoutVar")
  loc_1606AFF:   var_C0 = Proc_6_38_E68A98(CVar(var_A4))
  loc_1606B05:   global_56 = var_C0
  loc_1606B12: End If
  loc_1606B1E: Set var_A0 = Me.BTNPRINT
  loc_1606B24: Call 0.Method_Proc_66_57_1607DE40 (1, var_A4)
  loc_1606B3E: If (var_A4.Value = &HFF) Then
  loc_1606B41:   Call Proc_66_63_14D30CC()
  loc_1606B46:   Exit Sub
  loc_1606B47: End If
  loc_1606B4D: global_84 = "NewConfermationLetters"
  loc_1606B57: Call 0.Method_arg_50 (var_C0)
  loc_1606B5F: var_D8 = CVar(var_C0) 'String
  loc_1606B74: global_80 = CStr(Ucase(var_D8))
  loc_1606B89: var_C0 = "Select B.DocId,Max(B.BookNo) AS BookNo,Max(B.Vdate) AS ResDate,Max(B.ArrDate) AS ArrDate, " & " Max(B.DepDate) AS DepDate,Max(B.RoomRate) AS RoomRate,Max(B.Adult) AS Adult,Max(B.Child) AS Child, "
  loc_1606B90: var_C4 = var_C0 & " Max(B.DepositeReq) AS DepositeReq,Max(RM.Name) As RoomName,Max(GF.ConPrefix+' '+GF.Name) AS GNAME,Max(B.U_Name) As U_Name,Max(GF.Add1) AS Add1, "
  loc_1606B97: var_C8 = CStr(Ucase(var_D8)) & " Max(GF.Add2) AS Add2,Max(GF.DiplomatYN) As DiplomatYN, Max(City.CityName) AS CityName,Max(City.ZipCode) AS Zip,Max(State.Name) as StateName, "
  loc_1606B9E: var_120 = var_C8 & " Sum(PC.AmtCr) AS Advance,Max(PM.Name) AS PaymentType , MAx(RoomCat.Name) As RoomCat , Max(PlanMast.Name) as Plan_NAme,Max(PlanMast.Tariff) As Plan_Tariff,Max(B.U_EntDt) As U_EntDt,Max(GF.Comments1) AS Comment1,Max(GF.Comments2) AS Comment2,Max(GF.Comments3) AS Comment3 "
  loc_1606BA5: var_124 = var_120 & " From ((((((((Booking B Left Join RoomMast RM ON B.RoomNo=RM.Code) Left Join PlanMast on B.PackageCode = PlanMast.Code) Left Join RoomCat on B.RoomCat=RoomCat.Code) Left Join GuestProf GF ON B.GuestProf=GF.Code) "
  loc_1606BB3: var_12C = var_124 & " LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) " & " Left Join PayCharge PC ON B.DocId=PC.RefDocId) LEFT JOIN RevMast PM ON (PC.Site_Code = PM.Site_Code) AND "
  loc_1606C0B: unk_5407B4.Execute var_12C & "(PC.PayCode = PM.Code)) Where B.LogSite_Code='" & MemVar_1F92078 & "' " & global_60 & "  Group By B.DocId ", var_D8, -1
  loc_1606C16: Set var_9C = var_A0
  loc_1606C33: If (var_9C.RecordCount <= 0) Then
  loc_1606C3C:   Call 0.Method_arg_50 (var_C0)
  loc_1606C5D:   MsgBox("** No Records Found to Print **", &H40, CVar(var_C0), var_118, var_14C)
  loc_1606C72:   global_88 = 0
  loc_1606C75:   Exit Sub
  loc_1606C76: End If
  loc_1606C90: Call Proc_66_48_125975C(New)
  loc_1606C9B: Set global_96 = var_A0
  loc_1606CA5: var_9C.MoveFirst
  loc_1606CAA: ' Referenced from: 1607DB8
  loc_1606CB9: If Not(var_9C.EOF) Then
  loc_1606CBE:   var_96 = 0
  loc_1606CC7:   var_174 = 0
  loc_1606D23:   unk_5407B4.Execute CStr("SELECT Count(*) FROM GRPBookingDetails WHERE BookingDocId='" & var_9C.Fields.Item("DocID").Value & "'"), var_14C, -1
  loc_1606D2B:   var_160 = var_160.Fields
  loc_1606D33:   var_174 = var_164.Item(var_164)
  loc_1606D3B:   var_178 = var_178.Value
  loc_1606D68:   If (var_188 > 0) Then
  loc_1606D78:     var_E8 = "SELECT RC.Name As RoomType, RoomDet, Adults, Childs , GR.Tarrif, IncTax,CAST('0.00' as FLOAT) As PlanTariff,GR.PLAN_PACKAGE,GR.REMARKS,Booking.RDisc,Booking.RSDisc,GR.NoDays FROM (GRPBookingDetails GR Left Join RoomCat RC on GR.RoomCat=RC.Code) Inner join Booking On gr.BookingDocid=Booking.docid WHERE BookingDocid='"
  loc_1606DBE:     unk_5407B4.Execute CStr(var_E8 & var_9C.Fields.Item("DocID").Value & "'"), var_14C, -1
  loc_1606DC9:     Set var_90 = var_160
  loc_1606DE6:   Else
  loc_1606DF3:     var_E8 = "SELECT RC.Name As RoomType,NoofRooms As RoomDet, Adult AS Adults,Child AS Childs ,B.RoomRate AS Tarrif, RRTaxInc AS IncTax,CAST(ISNULL(PM.Total,'0.00') AS FLOAT) As PlanTariff,'' as plan_package,'' as Remarks,B.RDisc,B.RSDisc,B.NoDays FROM (Booking B Left Join RoomCat RC on B.RoomCat=RC.Code)left join PlanMast PM on PM.Code=B.PackageCode WHERE Docid='"
  loc_1606E39:     unk_5407B4.Execute CStr(var_E8 & var_9C.Fields.Item("DocID").Value & "'"), var_14C, -1
  loc_1606E44:     Set var_90 = var_160
  loc_1606E5E:   End If
  loc_1606E64:   var_174 = 0
  loc_1606EC0:   unk_5407B4.Execute CStr("SELECT Count(*) FROM PayCharge WHERE RefDocId='" & var_9C.Fields.Item("DocID").Value & "'"), var_14C, -1
  loc_1606EC8:   var_160 = var_160.Fields
  loc_1606ED0:   var_174 = var_164.Item(var_164)
  loc_1606ED8:   var_178 = var_178.Value
  loc_1606F05:   If (var_188 > 0) Then
  loc_1606F15:     var_E8 = "SELECT MAX(Vno) as Receipt , Max(Vdate) As PayDate , Sum(AmtCr) as Amount FROM PayCharge WHERE RefDocId='"
  loc_1606F20:     var_B8 = "DocID"
  loc_1606F5B:     unk_5407B4.Execute CStr(var_E8 & var_9C.Fields.Item(var_B8).Value & "'"), var_14C, -1
  loc_1606F66:     Set var_94 = var_160
  loc_1606F94:     If (var_94.RecordCount > 0) Then
  loc_1606F99:       var_96 = &HFF
  loc_1606F9C:     End If
  loc_1606F9C:   End If
  loc_1606F9F:   var_90.MoveFirst
  loc_1606FA4:   ' Referenced from: 1607DAD
  loc_1606FB3:   If Not(var_90.EOF) Then
  loc_1606FBC:     Set var_1AC = global_96 
  loc_1606FCB:     var_1AC.AddNew var_B8, var_E8
  loc_160700A:     var_160 = var_9C.Fields
  loc_160704E:     var_188 = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Plan_Tariff")), var_160)) 'String
  loc_1607069:     var_1A8 = IIf((Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Plan_Tariff")), var_96, var_160, var_188) = vbNullString), CVar(Proc_6_38_E68A98(CVar(var_160.Item("Plan_Name")), var_160)), var_188)
  loc_1607091:     var_1AC.Fields.Item("PlanTariff").Value = var_1A8
  loc_1607108:     var_1AC.Fields.Item("DocId").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("DocID"))))
  loc_160714C:     var_C4 = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("BookNo"))) & "-"
  loc_1607177:     var_C8 = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("ResDate")), Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Plan_Tariff")), var_96, var_9C.Fields, var_188))
  loc_160719E:     var_1AC.Fields.Item("BookingRef").Value = CVar(var_188 & var_C8)
  loc_160720B:     var_1AC.Fields.Item("PartyName").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("GName"))))
  loc_160726B:     var_1AC.Fields.Item("PartyAdd1").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add1"))))
  loc_16072FB:     var_1AC.Fields.Item("DiploMat").Value = IIf((Proc_6_38_E68A98(CVar(var_9C.Fields.Item("DiplomatYN"))) = "Yes"), "Diplomat", vbNullString)
  loc_1607368:     var_1AC.Fields.Item("User").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("U_Name"))))
  loc_16073C8:     var_1AC.Fields.Item("PartyAdd2").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add2"))))
  loc_1607416:     If (Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Zip"))) <> vbNullString) Then
  loc_1607448:       var_C4 = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("CityName"))) & "-"
  loc_1607477:       var_118 = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("DiplomatYN"))) & Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Zip")))) 'String
  loc_160749A:       var_1AC.Fields.Item("PartyCity").Value = var_118
  loc_16074BF:     Else
  loc_160750A:       var_1AC.Fields.Item("PartyCity").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("CityName"))))
  loc_160751F:     End If
  loc_160756A:     var_1AC.Fields.Item("PartyState").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("StateName"))))
  loc_16075CA:     var_1AC.Fields.Item("arrDt").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("ArrDate"))))
  loc_160762A:     var_1AC.Fields.Item("depdt").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("DepDate"))))
  loc_160768A:     var_1AC.Fields.Item("RoomType").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Roomtype"))))
  loc_16076EA:     var_1AC.Fields.Item("NoRooms").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("RoomDet"))))
  loc_160774A:     var_1AC.Fields.Item("Adults").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Adults"))))
  loc_16077AA:     var_1AC.Fields.Item("Childs").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Childs"))))
  loc_1607859:     var_1D8 = IIf((var_90.Fields.Item("PlanTariff").Value <> 0), CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("PlanTariff")))), CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Tarrif")))))
  loc_1607881:     var_1AC.Fields.Item("Tarrif").Value = var_1D8
  loc_16078F4:     var_1AC.Fields.Item("incTax").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("IncTax"))))
  loc_1607954:     var_1AC.Fields.Item("PLan_Package").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("PLan_Package"))))
  loc_16079B4:     var_1AC.Fields.Item("Remarks").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Remarks"))))
  loc_1607A14:     var_1AC.Fields.Item("RSDisc").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("RSDisc"))))
  loc_1607A74:     var_1AC.Fields.Item("RDisc").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("RDisc"))))
  loc_1607A8C:     If var_96 Then
  loc_1607ADA:       var_1AC.Fields.Item("receiptNo").Value = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("receipt"))))
  loc_1607B3A:       var_1AC.Fields.Item("Addate").Value = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("paydate"))))
  loc_1607B9A:       var_1AC.Fields.Item("Adamount").Value = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Amount"))))
  loc_1607BAF:     End If
  loc_1607BFA:     var_1AC.Fields.Item("U_EntDt").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("U_EntDt"))))
  loc_1607C5A:     var_1AC.Fields.Item("NoDays").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("NoDays"))))
  loc_1607CBA:     var_1AC.Fields.Item("Comment1").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Comment1"))))
  loc_1607D1A:     var_1AC.Fields.Item("Comment2").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Comment2"))))
  loc_1607D32:     var_B8 = "Comment3"
  loc_1607D5E:     var_E8 = "Comment3"
  loc_1607D7A:     var_1AC.Fields.Item(var_E8).Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item(var_B8))))
  loc_1607D9A:     var_1AC.Update var_B8, var_E8
  loc_1607DA1:     Set var_1AC = Nothing 
  loc_1607DA8:     var_90.MoveNext
  loc_1607DAD:     GoTo loc_1606FA4
  loc_1607DB0:   End If
  loc_1607DB3:   var_9C.MoveNext
  loc_1607DB8:   GoTo loc_1606CAA
  loc_1607DBB: End If
  loc_1607DC0: Set var_9C = Nothing
  loc_1607DC8: Set var_90 = Nothing
  loc_1607DD0: Set var_94 = Nothing
  loc_1607DD3: Exit Sub
  loc_1607DDC: Proc_6_60_E62BC4(0)
  loc_1607DE1: Exit Sub
End Sub

Public Sub Proc_66_58_15F83C8
  'Data Table: 540784
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_C0 As String
  Dim var_C4 As String
  Dim var_C8 As String
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim unk_5407B4 As Connection15
  Dim var_8C As Recordset15
  Dim var_A0 As Fields15
  Dim var_D8 As Variant
  Dim var_120 As String
  Dim var_124 As String
  Dim var_12C As String
  Dim var_9C As Recordset15
  Dim var_96 As Integer
  Dim var_174 As Variant
  Dim var_118 As Variant
  Dim var_160 As Variant
  Dim var_164 As Variant
  Dim var_178 As Variant
  Dim var_94 As Recordset15
  Dim var_90 As Recordset15
  Dim var_1AC As Recordset15
  Dim var_188 As Variant
  Dim var_14C As Variant
  Dim var_1A8 As Variant
  loc_15F6FD0: On Error Goto loc_15F83B7
  loc_15F6FD9: global_60 = vbNullString
  loc_15F6FE9: Set var_A0 = Me.Check1
  loc_15F6FEF: Call 0.Method_Proc_66_58_15F83C80 (1, var_A4)
  loc_15F6FF7: var_A6 = var_A4.Value
  loc_15F700D: If (CLng(var_A6) = 0) Then
  loc_15F702B:   Call Proc_66_44_1281BC4(global_164, 1, CByte(1))
  loc_15F7036:   global_148 = var_C0
  loc_15F7046:   If (global_88 = 0) Then
  loc_15F7049:     Exit Sub
  loc_15F704A:   End If
  loc_15F704A: End If
  loc_15F704F: global_88 = &HFF
  loc_15F705E: Set var_A0 = Me.Check1
  loc_15F7064: Call 0.Method_Proc_66_58_15F83C80 (1, var_A4, var_A6)
  loc_15F706C: global_88 = var_A4.Value
  loc_15F7082: If (CLng(var_A6) = 0) Then
  loc_15F70A6:   global_60 = global_60 & " And B.DocId in ( " & global_148 & ") "
  loc_15F70B3: End If
  loc_15F70D0: Proc_6_17_EAA2B0(var_D8, MemVar_1F92070, "Select * From Enviro WHERE LOGSITE_CODE=", var_118)
  loc_15F70D8: var_F8 = -1 & var_D8 
  loc_15F70E6: unk_5407B4.Execute CStr(var_F8), var_A0, CStr(var_F8)
  loc_15F70F1: Set var_8C = var_A0
  loc_15F7117: If (var_8C.RecordCount > 0) Then
  loc_15F7131:   var_A4 = var_8C.Fields.Item("CheckoutVar")
  loc_15F7142:   var_C0 = Proc_6_38_E68A98(CVar(var_A4))
  loc_15F7148:   global_56 = var_C0
  loc_15F7155: End If
  loc_15F7161: Set var_A0 = Me.BTNPRINT
  loc_15F7167: Call 0.Method_Proc_66_58_15F83C80 (1, var_A4)
  loc_15F7181: If (var_A4.Value = &HFF) Then
  loc_15F7184:   Call Proc_66_62_1404464()
  loc_15F7189:   Exit Sub
  loc_15F718A: End If
  loc_15F7190: global_84 = "NewCancelationLetters"
  loc_15F719A: Call 0.Method_arg_50 (var_C0)
  loc_15F71A2: var_D8 = CVar(var_C0) 'String
  loc_15F71B7: global_80 = CStr(Ucase(var_D8))
  loc_15F71CC: var_C0 = "Select B.DocId,Max(B.BookNo) AS BookNo,Max(B.Vdate) AS ResDate,Max(B.ArrDate) AS ArrDate, " & " Max(B.DepDate) AS DepDate,Max(B.Cancel) As Cancel,Max(B.CancelDate) As CancelDate,day(Max(B.CancelDate)-Max(B.Vdate)) As CancelDay,Max(B.RoomRate) AS RoomRate,Max(B.Adult) AS Adult,Max(B.Child) AS Child, "
  loc_15F71D3: var_C4 = var_C0 & " Max(B.DepositeReq) AS DepositeReq,Max(RM.Name) As RoomName,Max(GF.ConPrefix+' '+GF.Name) AS GNAME,Max(B.U_Name) As U_Name,Max(GF.Add1) AS Add1, "
  loc_15F71DA: var_C8 = CStr(Ucase(var_D8)) & " Max(GF.Add2) AS Add2,Max(GF.DiplomatYN) As DiplomatYN, Max(City.CityName) AS CityName,Max(City.ZipCode) AS Zip,Max(State.Name) as StateName, "
  loc_15F71E1: var_120 = var_C8 & " Sum(PC.AmtCr) AS Advance,Max(PM.Name) AS PaymentType , MAx(RoomCat.Name) As RoomCat , Max(PlanMast.Name) as Plan_NAme,Max(PlanMast.Tariff) As Plan_Tariff,Max(B.U_EntDt) As U_EntDt "
  loc_15F71E8: var_124 = var_120 & " From ((((((((Booking B Left Join RoomMast RM ON B.RoomNo=RM.Code) Left Join PlanMast on B.PackageCode = PlanMast.Code) Left Join RoomCat on B.RoomCat=RoomCat.Code) Left Join GuestProf GF ON B.GuestProf=GF.Code) "
  loc_15F71F6: var_12C = var_124 & " LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) " & " Left Join PayCharge PC ON B.DocId=PC.DocId) LEFT JOIN RevMast PM ON (PC.Site_Code = PM.Site_Code) AND "
  loc_15F721C: var_88 = var_12C & "(PC.PayCode = PM.Code)) Where B.Cancel='Y' And B.LogSite_Code='" & MemVar_1F92078 & "' " & global_60 & "  Group By B.DocId "
  loc_15F724E: unk_5407B4.Execute var_88, var_D8, -1
  loc_15F7259: Set var_9C = var_A0
  loc_15F7276: If (var_9C.RecordCount <= 0) Then
  loc_15F727F:   Call 0.Method_arg_50 (var_C0)
  loc_15F72A0:   MsgBox("** No Records Found to Print **", &H40, CVar(var_C0), var_118, var_14C)
  loc_15F72B5:   global_88 = 0
  loc_15F72B8:   Exit Sub
  loc_15F72B9: End If
  loc_15F72D3: Call Proc_66_49_1243378(New)
  loc_15F72DE: Set global_96 = var_A0
  loc_15F72E8: var_9C.MoveFirst
  loc_15F72ED: ' Referenced from: 15F839B
  loc_15F72FC: If Not(var_9C.EOF) Then
  loc_15F7301:   var_96 = 0
  loc_15F730A:   var_174 = 0
  loc_15F7366:   unk_5407B4.Execute CStr("SELECT Count(*) FROM GRPBookingDetails WHERE BookingDocId='" & var_9C.Fields.Item("DocID").Value & "'"), var_14C, -1
  loc_15F736E:   var_160 = var_160.Fields
  loc_15F7376:   var_174 = var_164.Item(var_164)
  loc_15F737E:   var_178 = var_178.Value
  loc_15F73AB:   If (var_188 > 0) Then
  loc_15F73BB:     var_E8 = "SELECT RC.Name As RoomType, RoomDet, Adults, Childs , GR.Tarrif, IncTax,CAST('0.00' as FLOAT) As PlanTariff,GR.PLAN_PACKAGE,GR.REMARKS,Booking.RDisc,Booking.RSDisc FROM (GRPBookingDetails GR Left Join RoomCat RC on GR.RoomCat=RC.Code) Inner join Booking On gr.BookingDocid=Booking.docid WHERE BookingDocid='"
  loc_15F7401:     unk_5407B4.Execute CStr(var_E8 & var_9C.Fields.Item("DocID").Value & "'"), var_14C, -1
  loc_15F740C:     Set var_90 = var_160
  loc_15F7429:   Else
  loc_15F7436:     var_E8 = "SELECT RC.Name As RoomType,NoofRooms As RoomDet, Adult AS Adults,Child AS Childs ,B.RoomRate AS Tarrif, RRTaxInc AS IncTax,CAST(ISNULL(PM.Total,'0.00') AS FLOAT) As PlanTariff,'' as plan_package,'' as Remarks,B.RDisc,B.RSDisc FROM (Booking B Left Join RoomCat RC on B.RoomCat=RC.Code)left join PlanMast PM on PM.Code=B.PackageCode WHERE Docid='"
  loc_15F747C:     unk_5407B4.Execute CStr(var_E8 & var_9C.Fields.Item("DocID").Value & "'"), var_14C, -1
  loc_15F7487:     Set var_90 = var_160
  loc_15F74A1:   End If
  loc_15F74A7:   var_174 = 0
  loc_15F7503:   unk_5407B4.Execute CStr("SELECT Count(*) FROM PayCharge WHERE RefDocId='" & var_9C.Fields.Item("DocID").Value & "'"), var_14C, -1
  loc_15F750B:   var_160 = var_160.Fields
  loc_15F7513:   var_174 = var_164.Item(var_164)
  loc_15F751B:   var_178 = var_178.Value
  loc_15F7548:   If (var_188 > 0) Then
  loc_15F7558:     var_E8 = "SELECT MAX(Vno) as Receipt , Max(Vdate) As PayDate , Sum(AmtCr) as Amount FROM PayCharge WHERE RefDocId='"
  loc_15F7563:     var_B8 = "DocID"
  loc_15F759E:     unk_5407B4.Execute CStr(var_E8 & var_9C.Fields.Item(var_B8).Value & "'"), var_14C, -1
  loc_15F75A9:     Set var_94 = var_160
  loc_15F75D7:     If (var_94.RecordCount > 0) Then
  loc_15F75DC:       var_96 = &HFF
  loc_15F75DF:     End If
  loc_15F75DF:   End If
  loc_15F75E2:   var_90.MoveFirst
  loc_15F75E7:   ' Referenced from: 15F8390
  loc_15F75F6:   If Not(var_90.EOF) Then
  loc_15F75FF:     Set var_1AC = global_96 
  loc_15F760E:     var_1AC.AddNew var_B8, var_E8
  loc_15F764D:     var_160 = var_9C.Fields
  loc_15F7691:     var_188 = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Plan_Tariff")), var_160)) 'String
  loc_15F76AC:     var_1A8 = IIf((Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Plan_Tariff")), var_96, var_160, var_188) = vbNullString), CVar(Proc_6_38_E68A98(CVar(var_160.Item("Plan_Name")), var_160)), var_188)
  loc_15F76D4:     var_1AC.Fields.Item("PlanTariff").Value = var_1A8
  loc_15F774B:     var_1AC.Fields.Item("DocId").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("DocID"))))
  loc_15F778F:     var_C4 = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("BookNo"))) & "-"
  loc_15F77BA:     var_C8 = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("ResDate")), Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Plan_Tariff")), var_96, var_9C.Fields, var_188))
  loc_15F77E1:     var_1AC.Fields.Item("BookingRef").Value = CVar(var_188 & var_C8)
  loc_15F784E:     var_1AC.Fields.Item("PartyName").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("GName"))))
  loc_15F78AE:     var_1AC.Fields.Item("PartyAdd1").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add1"))))
  loc_15F793E:     var_1AC.Fields.Item("DiploMat").Value = IIf((Proc_6_38_E68A98(CVar(var_9C.Fields.Item("DiplomatYN"))) = "Yes"), "Diplomat", vbNullString)
  loc_15F79AB:     var_1AC.Fields.Item("User").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("U_Name"))))
  loc_15F7A0B:     var_1AC.Fields.Item("PartyAdd2").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add2"))))
  loc_15F7A59:     If (Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Zip"))) <> vbNullString) Then
  loc_15F7A8B:       var_C4 = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("CityName"))) & "-"
  loc_15F7ABA:       var_118 = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("DiplomatYN"))) & Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Zip")))) 'String
  loc_15F7ADD:       var_1AC.Fields.Item("PartyCity").Value = var_118
  loc_15F7B02:     Else
  loc_15F7B4D:       var_1AC.Fields.Item("PartyCity").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("CityName"))))
  loc_15F7B62:     End If
  loc_15F7BAD:     var_1AC.Fields.Item("PartyState").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("StateName"))))
  loc_15F7C0D:     var_1AC.Fields.Item("arrDt").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("ArrDate"))))
  loc_15F7C6D:     var_1AC.Fields.Item("depdt").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("DepDate"))))
  loc_15F7CCD:     var_1AC.Fields.Item("RoomType").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Roomtype"))))
  loc_15F7D2D:     var_1AC.Fields.Item("NoRooms").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("RoomDet"))))
  loc_15F7D8D:     var_1AC.Fields.Item("Adults").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Adults"))))
  loc_15F7DED:     var_1AC.Fields.Item("Childs").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Childs"))))
  loc_15F7E9C:     var_1D8 = IIf((var_90.Fields.Item("PlanTariff").Value <> 0), CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("PlanTariff")))), CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Tarrif")))))
  loc_15F7EC4:     var_1AC.Fields.Item("Tarrif").Value = var_1D8
  loc_15F7F37:     var_1AC.Fields.Item("incTax").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("IncTax"))))
  loc_15F7F97:     var_1AC.Fields.Item("PLan_Package").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("PLan_Package"))))
  loc_15F7FF7:     var_1AC.Fields.Item("Remarks").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Remarks"))))
  loc_15F8057:     var_1AC.Fields.Item("CancelDt").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("CancelDate"))))
  loc_15F80B7:     var_1AC.Fields.Item("Cancel").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Cancel"))))
  loc_15F8117:     var_1AC.Fields.Item("CancelDay").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("CancelDay"))))
  loc_15F8177:     var_1AC.Fields.Item("RSDisc").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("RSDisc"))))
  loc_15F81D7:     var_1AC.Fields.Item("RDisc").Value = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("RDisc"))))
  loc_15F81EF:     If var_96 Then
  loc_15F823D:       var_1AC.Fields.Item("receiptNo").Value = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("receipt"))))
  loc_15F829D:       var_1AC.Fields.Item("Addate").Value = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("paydate"))))
  loc_15F82FD:       var_1AC.Fields.Item("Adamount").Value = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Amount"))))
  loc_15F8312:     End If
  loc_15F8315:     var_B8 = "U_EntDt"
  loc_15F8341:     var_E8 = "U_EntDt"
  loc_15F835D:     var_1AC.Fields.Item(var_E8).Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item(var_B8))))
  loc_15F837D:     var_1AC.Update var_B8, var_E8
  loc_15F8384:     Set var_1AC = Nothing 
  loc_15F838B:     var_90.MoveNext
  loc_15F8390:     GoTo loc_15F75E7
  loc_15F8393:   End If
  loc_15F8396:   var_9C.MoveNext
  loc_15F839B:   GoTo loc_15F72ED
  loc_15F839E: End If
  loc_15F83A3: Set var_9C = Nothing
  loc_15F83AB: Set var_90 = Nothing
  loc_15F83B3: Set var_94 = Nothing
  loc_15F83B6: Exit Sub
  loc_15F83B7: ' Referenced from: 15F6FD0
  loc_15F83BF: Proc_6_60_E62BC4(0)
  loc_15F83C4: Exit Sub
End Sub

Public Sub Proc_66_59_101FEC4
  'Data Table: 540784
  Dim var_90 As Variant
  Dim var_AC As String
  Dim var_B0 As String
  Dim unk_5407B4 As Connection15
  Dim Me As Variant
  Dim var_C4 As Variant
  loc_101FCAC: On Error Goto loc_101FEB3
  loc_101FCB5: global_60 = vbNullString
  loc_101FCC5: Set var_8C = Me.Check1
  loc_101FCCB: Call 0.Method_Proc_66_59_101FEC40 (1, var_90)
  loc_101FCE9: If (CLng(var_90.Value) = 0) Then
  loc_101FD07:   Call Proc_66_44_1281BC4(global_164, 1, CByte(1))
  loc_101FD12:   global_148 = var_AC
  loc_101FD22:   If (global_88 = 0) Then
  loc_101FD25:     Exit Sub
  loc_101FD26:   End If
  loc_101FD26: End If
  loc_101FD3C: Set var_8C = Me.Check1
  loc_101FD42: Call 0.Method_Proc_66_59_101FEC40 (1, var_90)
  loc_101FD60: If (CLng(var_90.Value) = 0) Then
  loc_101FD6D:   var_AC = " Where B.Cancel='Y'" & " AND B.DocId in ( "
  loc_101FD84:   global_60 = var_AC & global_148 & ") "
  loc_101FD91: End If
  loc_101FD9D: Set var_8C = Me.BTNPRINT
  loc_101FDA3: Call 0.Method_Proc_66_59_101FEC40 (1, var_90)
  loc_101FDBD: If (var_90.Value = &HFF) Then
  loc_101FDC0:   Call Proc_66_62_1404464(var_AC)
  loc_101FDC5:   Exit Sub
  loc_101FDC6: End If
  loc_101FDCD: var_AC = "Select B.DocId,B.BookNo,B.Vdate,B.ArrDate,B.DepDate,B.Cancel,B.CancelDate,day(B.CancelDate-B.Vdate) As CancelDay," & " B.Adult,B.Child,B.GuestName AS GNAME,GF.Add1,GF.Add2, City.CityName AS CityName,City.ZipCode AS Zip,State.Name AS StateName  "
  loc_101FDD4: var_B0 = var_AC & " From (((Booking B Left Join GuestProf GF ON B.GuestProf=GF.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) "
  loc_101FDFE: unk_5407B4.Execute var_B0 & global_60, var_C4, -1
  loc_101FE0F: Set global_96 = var_8C
  loc_101FE34: If (Me.RecordCount <= 0) Then
  loc_101FE3D:   Call 0.Method_arg_50 (var_AC)
  loc_101FE5E:   MsgBox("** No Records Found to Print **", &H40, CVar(var_AC), var_F8, var_118)
  loc_101FE73:   global_88 = 0
  loc_101FE76:   Exit Sub
  loc_101FE77: End If
  loc_101FE7D: global_84 = "CancellLetter"
  loc_101FE87: Call 0.Method_arg_50 (var_AC, global_88)
  loc_101FEA4: global_80 = CStr(Ucase(CVar(var_AC)))
  loc_101FEB2: Exit Sub
  loc_101FEB3: ' Referenced from: 101FCAC
  loc_101FEBB: Proc_6_60_E62BC4(0)
  loc_101FEC0: Exit Sub
End Sub

Public Sub Proc_66_60_1037754
  'Data Table: 540784
  Dim var_90 As Variant
  Dim var_AC As String
  Dim var_B0 As String
  Dim var_B4 As String
  Dim var_BC As String
  Dim unk_5407B4 As Connection15
  Dim Me As Variant
  Dim var_D0 As Variant
  loc_1037524: On Error Goto loc_1037745
  loc_103752D: global_60 = vbNullString
  loc_103753D: Set var_8C = Me.Check1
  loc_1037543: Call 0.Method_Proc_66_60_10377540 (1, var_90)
  loc_1037561: If (CLng(var_90.Value) = 0) Then
  loc_103757F:   Call Proc_66_44_1281BC4(global_164, 1, CByte(1))
  loc_103758A:   global_148 = var_AC
  loc_103759A:   If (global_88 = 0) Then
  loc_103759D:     Exit Sub
  loc_103759E:   End If
  loc_103759E: End If
  loc_10375AA: Set var_8C = Me.Check1
  loc_10375B0: Call 0.Method_Proc_66_60_10377540 (1, var_90)
  loc_10375CE: If (CLng(var_90.Value) = 0) Then
  loc_10375DB:   var_AC = global_60 & " Where B.DocId in ( "
  loc_10375F2:   global_60 = var_AC & global_148 & ") "
  loc_10375FF: End If
  loc_103760B: Set var_8C = Me.BTNPRINT
  loc_1037611: Call 0.Method_Proc_66_60_10377540 (1, var_90)
  loc_103762B: If (var_90.Value = &HFF) Then
  loc_103762E:   Call Proc_66_61_1530118(var_AC)
  loc_1037633:   Exit Sub
  loc_1037634: End If
  loc_103763B: var_AC = "Select B.DocId,Max(B.BookNo) AS BookNo,Max(B.VDate) AS VDate,Max(B.ArrDate) AS ArrDate,Max(B.DepDate) AS DepDate,Max(B.RoomNo) AS RoomNo,Max(B.RoomRate) AS RoomRate, " & " Max(B.Adult) AS Adult,Max(B.Child) AS Child,Max(RC.Name) As RoomType,Max(B.GuestName) AS GNAME,Max(GroupProf.Name) AS GroupName,Max(GF.Add1) AS Add1,Max(GF.Add2) AS Add2,Max(GF.PhoneNo) AS PhoneNo,Max(GF.MobileNo) AS MobileNo,"
  loc_1037642: var_B0 = var_AC & " Max(GF.CreditCardNo) AS CCardNo,Max(GF.ExpiresOn) AS CCExpDate,Max(City.CityName) AS CityName,Max(City.ZipCode) AS Zip,Max(State.Name) as StateName,Max(SG.NAME) AS CompanyName,Sum(PC.AmtCr) AS ADVANCE,Max(B.Guarantee) as Guarantee,Max(PM.Name) As PlanName,Max(PM.Tariff) As [Plan] "
  loc_1037649: var_B4 = var_B0 & " From ((((((((Booking B LEFT JOIN RoomCat RC ON B.RoomCat = RC.Code) Left Join GuestProf GF ON B.GuestProf=GF.Code) LEFT JOIN City ON GF.City = City.CityCode) "
  loc_1037657: var_BC = var_B4 & " LEFT JOIN State ON City.State = State.Code) LEFT JOIN SUBGROUP SG ON B.Company=SG.SubCode) " & " LEFT JOIN GroupProf ON B.GroupCode = GroupProf.Code) Left Join PayCharge PC ON B.DocId=PC.DocId) Left Join PlanMast PM On B.PackageCode=PM.Code) "
  loc_1037690: unk_5407B4.Execute var_BC & global_60 & " Group By B.DocId", var_D0, -1
  loc_10376A1: Set global_96 = var_8C
  loc_10376C6: If (Me.RecordCount <= 0) Then
  loc_10376CF:   Call 0.Method_arg_50 (var_AC)
  loc_10376F0:   MsgBox("** No Records Found to Print **", &H40, CVar(var_AC), var_104, var_124)
  loc_1037705:   global_88 = 0
  loc_1037708:   Exit Sub
  loc_1037709: End If
  loc_103770F: global_84 = "RegistrCard"
  loc_1037719: Call 0.Method_arg_50 (var_AC, global_88)
  loc_1037736: global_80 = CStr(Ucase(CVar(var_AC)))
  loc_1037744: Exit Sub
  loc_1037745: ' Referenced from: 1037524
  loc_103774D: Proc_6_60_E62BC4(0)
  loc_1037752: Exit Sub
End Sub

Public Sub Proc_66_61_1530118
  'Data Table: 540784
  Dim var_C4 As String
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_D4 As String
  Dim var_D8 As String
  Dim unk_5407B4 As Connection15
  Dim var_88 As Integer
  Dim var_B0 As Recordset15
  Dim var_86 As Integer
  Dim var_F0 As Fields15
  Dim var_EC As Variant
  Dim var_118 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_148 As Variant
  Dim var_1A0 As Variant
  Dim var_1E8 As Variant
  Dim var_1F8 As Variant
  Dim var_1C0 As Variant
  Dim var_218 As Variant
  Dim var_108 As String
  Dim var_128 As Variant
  Dim var_190 As Variant
  Dim var_258 As Variant
  loc_152F1FC: On Error Goto loc_153010A
  loc_152F202: var_AC = " GUEST REGISTRATION "
  loc_152F207: Close 1
  loc_152F210: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_152F228: var_C4 = "Select B.DocId,Max(B.BookNo) AS BookNo,Max(B.VDate) AS VDate,Max(B.ArrDate) AS ArrDate,Max(B.DepDate) AS DepDate,Max(B.RoomNo) AS RoomNo,Max(B.RoomRate) AS RoomRate, " & " Max(B.Adult) AS Adult,Max(B.Child) AS Child,Max(RC.Name) As RoomType,Max(B.GuestName) AS GNAME,Max(GroupProf.Name) AS GroupName,Max(GF.Add1) AS Add1,Max(GF.Add2) AS Add2,Max(GF.PhoneNo) AS PhoneNo,Max(GF.MobileNo) AS MobileNo,"
  loc_152F22F: var_C8 = var_C4 & " Max(GF.CreditCardNo) AS CCardNo,Max(GF.ExpiresOn) AS CCExpDate,Max(City.CityName) AS CityName,Max(City.ZipCode) AS Zip,Max(State.Name) as StateName,Max(SG.NAME) AS CompanyName,Sum(PC.AmtCr) AS ADVANCE,Max(B.Guarantee) as Guarantee "
  loc_152F236: var_CC = var_C8 & " From (((((((Booking B LEFT JOIN RoomCat RC ON B.RoomCat = RC.Code) Left Join GuestProf GF ON B.GuestProf=GF.Code) LEFT JOIN City ON GF.City = City.CityCode) "
  loc_152F244: var_D4 = var_CC & " LEFT JOIN State ON City.State = State.Code) LEFT JOIN SUBGROUP SG ON B.Company=SG.SubCode) " & " LEFT JOIN GroupProf ON B.GroupCode = GroupProf.Code) Left Join PayCharge PC ON B.DocId=PC.DocId) "
  loc_152F25E: unk_5407B4.Execute var_D4 & global_60 & " Group By B.DocId ", var_EC, -1
  loc_152F269: Set var_B0 = var_F0
  loc_152F285: var_88 = 1
  loc_152F28B: MemVar_1F923C0 = "N"
  loc_152F292: MemVar_1F923C4 = "N"
  loc_152F299: MemVar_1F923C8 = "M"
  loc_152F2B1: If (var_B0.RecordCount > 0) Then
  loc_152F2B4:   ' Referenced from: 1530088
  loc_152F2C3:   If Not(var_B0.EOF) Then
  loc_152F2CC:     If (var_86 = 0) Then
  loc_152F2E7:       Print 1, vbNullString
  loc_152F30E:       Print 1, Proc_6_128_10272A8(var_AC, "B", &H50)
  loc_152F322:       Print 1, vbNullString
  loc_152F32D:       Print 1, vbNullString
  loc_152F39C:       var_D8 = Proc_6_52_EAD4F4("NAME:", &HD, Proc_6_129_12B6C1C(var_88, Proc_6_129_12B6C1C(var_88, Proc_6_129_12B6C1C(var_88, var_86, &H50), &H50), &H50)) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("GName")), var_88), &H32)
  loc_152F3A1:       Print 1, var_D8
  loc_152F3C7:       Print 1, vbNullString
  loc_152F456:       var_148 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("Add1"))))) + " , ")
  loc_152F45D:       var_1A0 = (var_148 + Trim(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("Add2"))))))
  loc_152F487:       Print 1, Proc_6_52_EAD4F4("ADDRESS:", &HD) & " " & Proc_6_45_EAD428(CStr(var_1A0), &H40)
  loc_152F576:       var_148 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("CityName"))))) + " ")
  loc_152F57D:       var_1A0 = (var_148 + Trim(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("StateName"))))))
  loc_152F586:       var_1C0 = (var_1A0 + " ")
  loc_152F58D:       var_218 = (var_1C0 + Trim(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("Zip"))))))
  loc_152F5B7:       Print 1, Proc_6_52_EAD4F4("CITY,ST,ZIP:", &HD) & " " & Proc_6_45_EAD428(CStr(var_218), &H40)
  loc_152F65F:       var_D8 = Proc_6_52_EAD4F4("COMPANY:", &HD) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("CompanyName"))), &H32)
  loc_152F664:       Print 1, var_D8
  loc_152F74D:       var_108 = Proc_6_52_EAD4F4("PHONE:", &HD) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("PhoneNo"))), &H23) & Proc_6_52_EAD4F4("MOBILE:", 7)
  loc_152F763:       Print 1, var_108 & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("MobileNo"))), &H14)
  loc_152F7A5:       Print 1, vbNullString
  loc_152F874:       var_128 = CVar(Proc_6_52_EAD4F4("CONFIRMATION NO:", &H10) & " " & Proc_6_45_EAD428(CStr(var_B0.Fields.Item("BookNo").Value), 8)) 'String
  loc_152F87A:       var_148 = (var_128 + Space(&H14))
  loc_152F884:       var_180 = (var_148 + CVar(Proc_6_52_EAD4F4("ARRIVAL DATE:", &H10)))
  loc_152F88D:       var_190 = (CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("StateName")))) + " ")
  loc_152F894:       var_1F8 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("StateName"))))) + Format(CVar(var_B0.Fields.Item("ArrDate")), "DD/MM/YY"))
  loc_152F89A:       Print 1, CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("Zip"))))
  loc_152F8DC:       Print 1, vbNullString
  loc_152F9C4:       var_170 = CVar(Proc_6_52_EAD4F4("RESERVATION:", &H10, 1) & " " & Proc_6_45_EAD428(CStr(Format(CVar(var_B0.Fields.Item("VDate")), "DD/MM/YY")), 8, 1)) 'String
  loc_152F9CA:       var_180 = (var_170 + Space(&H14))
  loc_152F9D4:       var_1A0 = (CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("StateName")))) + CVar(Proc_6_52_EAD4F4("DEPARTURE DATE:", &H10, 1)))
  loc_152F9DD:       var_1C0 = (CVar(var_B0.Fields.Item("ArrDate")) + " ")
  loc_152F9E4:       var_218 = ("DD/MM/YY" + Format(CVar(var_B0.Fields.Item("DepDate")), "DD/MM/YY"))
  loc_152F9EA:       Print 1, var_218
  loc_152FA2E:       Print 1, vbNullString
  loc_152FAD2:       Proc_6_39_E7C810("DD/MM/YY", CVar(var_B0.Fields.Item("RoomRate")))
  loc_152FB20:       var_128 = CVar(Proc_6_52_EAD4F4("GUEST ROOM NO.:", &H10, 1) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("RoomNo")), 1), 5)) 'String
  loc_152FB26:       var_148 = (var_128 + Space(&H17))
  loc_152FB30:       var_180 = (Space(&H14) + CVar(Proc_6_52_EAD4F4("ROOM RATE:", &H10)))
  loc_152FB39:       var_190 = (CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("StateName")))) + " ")
  loc_152FB43:       var_218 = (CVar(Proc_6_52_EAD4F4("DEPARTURE DATE:", &H10, 1)) + CVar(Proc_6_45_EAD428(CStr(Format("DD/MM/YY", "0.00")), 7, 1)))
  loc_152FB4C:       var_258 = (var_218 + " PLUS TAX ")
  loc_152FB52:       Print 1, var_258
  loc_152FB9E:       Print 1, vbNullString
  loc_152FC01:       var_118 = Space(3)
  loc_152FC42:       Proc_6_39_E7C810("DD/MM/YY", CVar(var_B0.Fields.Item("Advance")))
  loc_152FC90:       var_128 = CVar(Proc_6_52_EAD4F4("ROOM TYPE:", &H10, 1) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("Roomtype")), 1), &H19)) 'String
  loc_152FC96:       var_148 = (var_128 + var_118)
  loc_152FCA0:       var_180 = (Space(&H14) + CVar(Proc_6_52_EAD4F4("DEPOSIT:", &H10)))
  loc_152FCA9:       var_190 = (CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("StateName")))) + " ")
  loc_152FCB3:       var_218 = (CVar(Proc_6_52_EAD4F4("DEPARTURE DATE:", &H10, 1)) + CVar(Proc_6_45_EAD428(CStr(Format("DD/MM/YY", "0.00")), 8, 1)))
  loc_152FCB9:       Print 1, var_218
  loc_152FD03:       Print 1, vbNullString
  loc_152FD45:       Proc_6_39_E7C810(var_118, CVar(var_B0.Fields.Item("Adult")))
  loc_152FD62:       var_148 = (Trim(var_118) + "/ ")
  loc_152FDEF:       var_190 = (CVar(Proc_6_52_EAD4F4("ADULTS:", &H10) & " " & Proc_6_45_EAD428(CStr(Space(&H14)), 5)) + Space(&H17))
  loc_152FDF9:       var_1C0 = (CVar(Proc_6_52_EAD4F4("DEPARTURE DATE:", &H10, 1)) + CVar(Proc_6_45_EAD428("CREDIT CARD NO.:", &H10)))
  loc_152FE02:       var_1E8 = ("DD/MM/YY" + " ")
  loc_152FE0C:       var_218 = ("0.00" + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("CCardNo")), 1), &H19)))
  loc_152FE12:       Print 1, var_218
  loc_152FE5C:       Print 1, vbNullString
  loc_152FE9E:       Proc_6_39_E7C810(var_118, CVar(var_B0.Fields.Item("Child")))
  loc_152FED1:       Print 1, Proc_6_52_EAD4F4("CHILDERN:", &H10) & " " & Proc_6_45_EAD428(CStr(var_118), 3)
  loc_152FEF9:       Print 1, vbNullString
  loc_152FFCB:       var_128 = CVar(Proc_6_52_EAD4F4("GROUP:", &H10) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("GroupName"))), &H19)) 'String
  loc_152FFD1:       var_148 = (var_128 + Space(3))
  loc_152FFDB:       var_180 = (Space(&H14) + CVar(Proc_6_52_EAD4F4("EXP DATE:", &H10)))
  loc_152FFE4:       var_190 = (CVar(Proc_6_52_EAD4F4("ADULTS:", &H10) & " " & Proc_6_45_EAD428(CStr(Space(&H14)), 5)) + " ")
  loc_152FFEB:       var_1F8 = (CVar(Proc_6_52_EAD4F4("DEPARTURE DATE:", &H10, 1)) + Format(CVar(var_B0.Fields.Item("CCExpDate")), "MM/YY"))
  loc_152FFF1:       Print 1, CVar(var_B0.Fields.Item("CCardNo"))
  loc_153002E:     End If
  loc_1530034:     var_86 = (var_86 + &H18)
  loc_1530037:     ' Referenced from: 1530054
  loc_153003D:     If (Proc_6_129_12B6C1C(var_88, var_86, &H50) < &H22) Then
  loc_1530045:       Print 1, vbNullString
  loc_1530051:       var_86 = (var_86 + 1)
  loc_1530054:       GoTo loc_1530037
  loc_1530057:     End If
  loc_1530059:     var_86 = 0
  loc_1530062:     var_88 = (var_88 + 1)
  loc_1530077:     Print 1, Chr(&HC)
  loc_1530083:     var_B0.MoveNext
  loc_1530088:     GoTo loc_152F2B4
  loc_153008B:   End If
  loc_153008B: End If
  loc_153008D: Close 1
  loc_1530096: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_15300A6: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_15300B1: Close 1
  loc_15300BB: If (MemVar_1F923B8 = "Y") Then
  loc_15300D7:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_15300E1: Else
  loc_15300FA:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1530101: End If
  loc_1530106: global_88 = 0
  loc_1530109: Exit Sub
  loc_153010A: ' Referenced from: 152F1FC
  loc_153010A: Proc_6_60_E62BC4(global_88, var_88, var_86, var_86)
  loc_1530114: global_88 = 0
  loc_1530117: Exit Sub
End Sub

Public Sub Proc_66_62_1404464
  'Data Table: 540784
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_5407B4 As Connection15
  Dim var_88 As Integer
  Dim var_A0 As Recordset15
  Dim var_86 As Integer
  Dim var_EC As Variant
  Dim var_D4 As Fields15
  Dim var_130 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_170 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_1BC As Variant
  Dim var_1D4 As Variant
  Dim var_D0 As Variant
  Dim var_254 As String
  loc_1403A80: On Error Goto loc_1404456
  loc_1403A85: Close 1
  loc_1403A8E: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1403AA6: var_B4 = "Select B.DocId,B.BookNo,B.Vdate,B.ArrDate,B.DepDate,B.Cancel,B.CancelDate,day(B.CancelDate-B.Vdate) As CancelDay," & " B.Adult,B.Child,B.GuestName AS GNAME,GF.Add1,GF.Add2, City.CityName AS CityName,City.ZipCode AS Zip,State.Name AS StateName "
  loc_1403AAD: var_B8 = var_B4 & " From (((Booking B Left Join GuestProf GF ON B.GuestProf=GF.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) "
  loc_1403AC7: unk_5407B4.Execute var_B8 & global_60 & vbNullString, var_D0, -1
  loc_1403AD2: Set var_A0 = var_D4
  loc_1403AE8: var_88 = 1
  loc_1403AEE: MemVar_1F923C0 = "N"
  loc_1403AF5: MemVar_1F923C4 = "N"
  loc_1403AFC: MemVar_1F923C8 = "M"
  loc_1403B14: If (var_A0.RecordCount > 0) Then
  loc_1403B17:   ' Referenced from: 14043CC
  loc_1403B26:   If Not(var_A0.EOF) Then
  loc_1403B2F:     If (var_86 = 0) Then
  loc_1403B4A:       Print 1, vbNullString
  loc_1403B55:       Print 1, vbNullString
  loc_1403B70:       var_EC = (Space(2) + "To: ")
  loc_1403B76:       Print 1, var_EC
  loc_1403BEF:       var_FC = (Space(&H30) + CVar(Proc_6_52_EAD4F4("Arrival Date:", &H11, Proc_6_129_12B6C1C(var_88, var_86, &H50))))
  loc_1403BF8:       var_10C = (var_FC + " ")
  loc_1403BFF:       var_170 = (var_10C + Format(CVar(var_A0.Fields.Item("ArrDate")), "DD/MM/YY"))
  loc_1403C05:       Print 1, var_170
  loc_1403CB5:       var_19C = "DD/MM/YY"
  loc_1403CD3:       var_10C = (Space(2) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("GName")), 1, 1), &H2E)))
  loc_1403CDD:       var_150 = (var_10C + CVar(Proc_6_52_EAD4F4("Departure Date:", &H11)))
  loc_1403CE6:       var_160 = ("DD/MM/YY" + " ")
  loc_1403CED:       var_1BC = (Format(CVar(var_A0.Fields.Item("ArrDate")), "DD/MM/YY") + Format(CVar(var_A0.Fields.Item("DepDate")), var_19C))
  loc_1403CF3:       Print 1, var_1BC
  loc_1403DAE:       Proc_6_39_E7C810(var_19C, CVar(var_A0.Fields.Item("Adult")))
  loc_1403DF6:       Proc_6_39_E7C810(var_21C, CVar(var_A0.Fields.Item("Child")))
  loc_1403E21:       var_10C = (Space(5) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Add1")), 1, 1), &H2B)))
  loc_1403E2B:       var_150 = (var_10C + CVar(Proc_6_52_EAD4F4("Adults/children:", &H11)))
  loc_1403E34:       var_160 = ("DD/MM/YY" + " ")
  loc_1403E3B:       var_1D4 = (Format(CVar(var_A0.Fields.Item("ArrDate")), "DD/MM/YY") + Trim(CVar(Proc_6_45_EAD428(CStr(var_19C), 3))))
  loc_1403E51:       Print 1, var_1D4 & " " & Trim(CVar(Proc_6_45_EAD428(CStr(var_21C), 3)))
  loc_1403EED:       var_10C = (Space(5) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Add2")), var_88), &H2B)))
  loc_1403EF3:       Print 1, var_10C
  loc_1403F65:       var_10C = (Space(5) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("CityName"))), &H23)))
  loc_1403F6B:       Print 1, var_10C
  loc_1403FDD:       var_10C = (Space(5) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("StateName"))), &H23)))
  loc_1403FE3:       Print 1, var_10C
  loc_1404005:       Print 1, vbNullString
  loc_1404010:       Print 1, vbNullString
  loc_140401B:       Print 1, vbNullString
  loc_1404089:       var_FC = (Space(2) + CVar(Proc_6_45_EAD428("Your cancellation number is:", &H1C)))
  loc_1404092:       var_10C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("StateName"))), &H23)) + " ")
  loc_140409C:       var_160 = (var_10C + CVar(Proc_6_45_EAD428(CStr(var_A0.Fields.Item("BookNo").Value), 8)))
  loc_14040A2:       Print 1, Format(CVar(var_A0.Fields.Item("ArrDate")), "DD/MM/YY")
  loc_14040D0:       Print 1, vbNullString
  loc_14040DB:       Print 1, vbNullString
  loc_1404122:       var_EC = "DD/MM/YY"
  loc_1404160:       var_254 = Proc_6_45_EAD428("Date:", 5) & " " & Proc_6_45_EAD428(CStr(Format(CVar(var_A0.Fields.Item("CancelDate")), var_EC)), 8, 1)
  loc_1404165:       Print 1, var_254
  loc_140418F:       Print 1, vbNullString
  loc_14041B3:       Print 1, Proc_6_45_EAD428("Dear Guest: ", &HC)
  loc_14041C7:       Print 1, vbNullString
  loc_14041D2:       Print 1, vbNullString
  loc_1404214:       Proc_6_39_E7C810(var_EC, CVar(var_A0.Fields.Item("CancelDay")))
  loc_140422D:       var_130 = (CVar(Proc_6_45_EAD428("We have not received your deposit within the ", &H2D)) + Trim(var_EC))
  loc_1404236:       var_150 = (var_A0.Fields.Item("BookNo").Value + " days agreed upon. ")
  loc_140423C:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_A0.Fields.Item("BookNo").Value), 8))
  loc_1404260:       Print 1, vbNullString
  loc_1404284:       Print 1, Proc_6_45_EAD428("We have therefore cancelled your reservation. Please choose the ", &H40)
  loc_14042C1:       var_EC = (Trim(MemVar_1F92130) + " ")
  loc_14042CB:       var_10C = (var_EC + CVar(Proc_6_45_EAD428("the next time your travel to our city.", &H28)))
  loc_14042D1:       Print 1, CVar(Proc_6_45_EAD428("We have not received your deposit within the ", &H2D))
  loc_14042EE:       Print 1, vbNullString
  loc_14042F9:       Print 1, vbNullString
  loc_140431D:       Print 1, Proc_6_45_EAD428("Thank you,", &HA)
  loc_1404331:       Print 1, vbNullString
  loc_140433C:       Print 1, vbNullString
  loc_1404347:       Print 1, vbNullString
  loc_1404365:       Print 1, Proc_6_45_EAD428(MemVar_1F92130, &H28)
  loc_1404372:     End If
  loc_1404378:     var_86 = (var_86 + &H1F)
  loc_140437B:     ' Referenced from: 1404398
  loc_1404381:     If (Proc_6_129_12B6C1C(var_88, var_86, &H50) < &H45) Then
  loc_1404389:       Print 1, vbNullString
  loc_1404395:       var_86 = (var_86 + 1)
  loc_1404398:       GoTo loc_140437B
  loc_140439B:     End If
  loc_140439D:     var_86 = 0
  loc_14043A6:     var_88 = (var_88 + 1)
  loc_14043BB:     Print 1, Chr(&HC)
  loc_14043C7:     var_A0.MoveNext
  loc_14043CC:     GoTo loc_1403B17
  loc_14043CF:   End If
  loc_14043CF: End If
  loc_14043D1: Close 1
  loc_14043DA: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_14043EA: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_14043F5: Close 1
  loc_14043FF: If (MemVar_1F923B8 = "Y") Then
  loc_140441B:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1404425: Else
  loc_140443E:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1404445: End If
  loc_140444A: global_88 = 0
  loc_1404452: Set var_A0 = Nothing
  loc_1404455: Exit Sub
  loc_1404456: ' Referenced from: 1403A80
  loc_1404456: Proc_6_60_E62BC4(global_88, var_88, var_86, var_86)
  loc_1404460: global_88 = 0
  loc_1404463: Exit Sub
End Sub

Public Sub Proc_66_63_14D30CC
  'Data Table: 540784
  Dim var_B8 As String
  Dim var_BC As String
  Dim var_C8 As String
  Dim unk_5407B4 As Connection15
  Dim var_88 As Integer
  Dim var_A4 As Recordset15
  Dim var_86 As Integer
  Dim var_F4 As Variant
  Dim var_DC As Fields15
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  loc_14D237C: On Error Goto loc_14D30BD
  loc_14D2381: Close 1
  loc_14D238A: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_14D23A2: var_B8 = "Select B.DocId,Max(B.BookNo) AS BookNo,Max(B.Vdate) AS ResDate,Max(B.ArrDate) AS ArrDate,Max(B.DepDate) AS DepDate,Max(B.RoomRate) AS RoomRate,Max(B.Adult) AS Adult," & " Max(B.Child) AS Child,Max(B.DepositeReq) AS DepositeReq,Max(RM.Name) As RoomName,Max(B.GuestName) AS GNAME,Max(GF.Add1) AS Add1,Max(GF.Add2) AS Add2, Max(City.CityName) AS CityName,Max(City.ZipCode) AS Zip,Max(State.Name) as StateName,Sum(PC.AmtCr) AS Advance,Max(PM.NAME) AS PaymentType "
  loc_14D23A9: var_BC = var_B8 & " From ((((((Booking B Left Join RoomMast RM ON B.RoomNo=RM.Code) Left Join GuestProf GF ON B.GuestProf=GF.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) Left Join PayCharge PC ON B.DocId=PC.DocId)  LEFT JOIN RevMast PM ON PC.PAYCODE = PM.Code) "
  loc_14D23CA: unk_5407B4.Execute var_BC & " Where PM.FieldType='P' " & global_60 & "Group By B.DocId ", var_D8, -1
  loc_14D23D5: Set var_A4 = var_DC
  loc_14D23ED: var_88 = 1
  loc_14D23F3: MemVar_1F923C0 = "N"
  loc_14D23FA: MemVar_1F923C4 = "N"
  loc_14D2401: MemVar_1F923C8 = "M"
  loc_14D2419: If (var_A4.RecordCount > 0) Then
  loc_14D241C:   ' Referenced from: 14D3033
  loc_14D242B:   If Not(var_A4.EOF) Then
  loc_14D2434:     If (var_86 = 0) Then
  loc_14D244F:       Print 1, vbNullString
  loc_14D245A:       Print 1, vbNullString
  loc_14D2475:       var_F4 = (Space(2) + "To: ")
  loc_14D247B:       Print 1, var_F4
  loc_14D2534:       var_104 = (Space(&H30) + CVar(Proc_6_52_EAD4F4("Arrival Date:", &H11, Proc_6_129_12B6C1C(var_88, var_86, &H50))))
  loc_14D253D:       var_114 = (var_104 + " ")
  loc_14D2544:       var_178 = (var_114 + Format(CVar(var_A4.Fields.Item("ArrDate")), "DDD"))
  loc_14D255A:       Print 1, var_178 & ", " & Format(CVar(var_A4.Fields.Item("ArrDate")), "DD/MM/YY")
  loc_14D2676:       var_114 = (Space(2) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("GName")), 1, 1, 1), &H2E, 1)))
  loc_14D2680:       var_158 = (var_114 + CVar(Proc_6_52_EAD4F4("Departure Date:", &H11)))
  loc_14D2689:       var_168 = ("DDD" + " ")
  loc_14D2690:       var_1E0 = (Format(CVar(var_A4.Fields.Item("ArrDate")), "DDD") + Format(CVar(var_A4.Fields.Item("DepDate")), "DDD"))
  loc_14D26A6:       Print 1, "DD/MM/YY" & ", " & Format(CVar(var_A4.Fields.Item("DepDate")), "DD/MM/YY")
  loc_14D27D8:       var_114 = (Space(5) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("Add1")), 1, 1, 1), &H2B, 1)))
  loc_14D27E2:       var_158 = (var_114 + CVar(Proc_6_52_EAD4F4("Adults/children:", &H11)))
  loc_14D27EB:       var_168 = ("DDD" + " ")
  loc_14D27F2:       var_1E0 = (Format(CVar(var_A4.Fields.Item("ArrDate")), "DDD") + Trim(CVar(Proc_6_45_EAD428(CStr(var_A4.Fields.Item("Adult").Value), 3))))
  loc_14D2808:       Print 1, "DD/MM/YY" & " " & Trim(CVar(Proc_6_45_EAD428(CStr(var_A4.Fields.Item("Child").Value), 3)))
  loc_14D290F:       var_114 = (Space(5) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("Add2")), var_88), &H2B)))
  loc_14D2919:       var_158 = (var_114 + CVar(Proc_6_52_EAD4F4("Rate: ", &H11)))
  loc_14D2922:       var_168 = ("DDD" + " ")
  loc_14D292C:       var_1F0 = (Format(CVar(var_A4.Fields.Item("ArrDate")), "DDD") + CVar(Proc_6_45_EAD428(CStr(Format(CVar(var_A4.Fields.Item("RoomRate")), "0.00")), 7, 1)))
  loc_14D2932:       Print 1, "DD/MM/YY" & " "
  loc_14D2A22:       var_114 = (Space(5) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("CityName")), 1), &H23)))
  loc_14D2A29:       var_158 = (var_114 + Space(8))
  loc_14D2A33:       var_178 = ("DDD" + CVar(Proc_6_52_EAD4F4("Requested: ", &H11)))
  loc_14D2A3C:       var_198 = (CVar(var_A4.Fields.Item("RoomRate")) + " ")
  loc_14D2A46:       var_1F0 = ("0.00" + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("RoomName"))), &HF)))
  loc_14D2A4C:       Print 1, "DD/MM/YY" & " "
  loc_14D2ADC:       var_114 = (Space(5) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("StateName"))), &H23)))
  loc_14D2AE2:       Print 1, var_114
  loc_14D2B04:       Print 1, vbNullString
  loc_14D2B0F:       Print 1, vbNullString
  loc_14D2B7D:       If (var_A4.Fields.Item("Advance").Value >= var_A4.Fields.Item("DepositeReq").Value) Then
  loc_14D2B83:         var_9C = "RESERVATION GURANTEED"
  loc_14D2B89:       Else
  loc_14D2B8C:         var_9C = "RESERVATION NOT GURANTEED"
  loc_14D2B8F:       End If
  loc_14D2C2B:       var_104 = (Space(2) + CVar(Proc_6_45_EAD428("Your confirmation number is:", &H1C)))
  loc_14D2C34:       var_114 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("StateName"))), &H23)) + " ")
  loc_14D2C3E:       var_168 = (var_114 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("BookNo"))), 8)))
  loc_14D2C45:       var_198 = (CVar(Proc_6_52_EAD4F4("Requested: ", &H11)) + Space(&HB))
  loc_14D2C4F:       var_1E0 = ("0.00" + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(var_9C), &H19)))
  loc_14D2C55:       Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("RoomName"))), &HF))
  loc_14D2CDF:       var_114 = (Space(&H32) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("PaymentType"))), &H19)))
  loc_14D2CE5:       Print 1, var_114
  loc_14D2D07:       Print 1, vbNullString
  loc_14D2D8E:       var_104 = (CVar(Proc_6_45_EAD428("Date:", 5)) + Space(2))
  loc_14D2D98:       var_178 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("PaymentType"))), &H19)) + CVar(Proc_6_45_EAD428(CStr(Format(CVar(var_A4.Fields.Item("ResDate")), "DD/MM/YY")), 8, 1)))
  loc_14D2D9E:       Print 1, Space(&HB)
  loc_14D2DCA:       Print 1, vbNullString
  loc_14D2DD5:       Print 1, vbNullString
  loc_14D2DF9:       Print 1, Proc_6_45_EAD428("Dear Guest: ", &HC)
  loc_14D2E0D:       Print 1, vbNullString
  loc_14D2E31:       Print 1, Proc_6_45_EAD428("We are pleased to confirm your reservation on the above date. ", &H3E)
  loc_14D2E45:       Print 1, vbNullString
  loc_14D2E93:       var_C8 = Proc_6_45_EAD428("Our friendly staff is prepared to insure that your stay at the ", &H3F) & Proc_6_45_EAD428(CStr(Trim(MemVar_1F92130)), &H16)
  loc_14D2E98:       Print 1, var_C8
  loc_14D2ED0:       Print 1, Proc_6_45_EAD428(" is an enjoyable one.", &H15)
  loc_14D2EE4:       Print 1, vbNullString
  loc_14D2F08:       Print 1, Proc_6_45_EAD428("Thank you,", &HA)
  loc_14D2F1C:       Print 1, vbNullString
  loc_14D2F27:       Print 1, vbNullString
  loc_14D2F32:       Print 1, vbNullString
  loc_14D2F50:       Print 1, Proc_6_45_EAD428(MemVar_1F92130, &H46)
  loc_14D2F62:       Print 1, vbNullString
  loc_14D2F90:       Print 1, Proc_6_45_EAD428("Check in time is after ", &H17) & global_56
  loc_14D2FA6:       Print 1, vbNullString
  loc_14D2FCA:       Print 1, Proc_6_45_EAD428("Cancellations must be made at least 72 hours in advance.", &H38)
  loc_14D2FD9:     End If
  loc_14D2FDF:     var_86 = (var_86 + &H21)
  loc_14D2FE2:     ' Referenced from: 14D2FFF
  loc_14D2FE8:     If (Proc_6_129_12B6C1C(var_88, var_86, &H50) <= &H45) Then
  loc_14D2FF0:       Print 1, vbNullString
  loc_14D2FFC:       var_86 = (var_86 + 1)
  loc_14D2FFF:       GoTo loc_14D2FE2
  loc_14D3002:     End If
  loc_14D3004:     var_86 = 0
  loc_14D300D:     var_88 = (var_88 + 1)
  loc_14D3022:     Print 1, Chr(&HC)
  loc_14D302E:     var_A4.MoveNext
  loc_14D3033:     GoTo loc_14D241C
  loc_14D3036:   End If
  loc_14D3036: End If
  loc_14D3038: Close 1
  loc_14D3041: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_14D3051: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_14D305C: Close 1
  loc_14D3066: If (MemVar_1F923B8 = "Y") Then
  loc_14D3082:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_14D308C: Else
  loc_14D30A5:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_14D30AC: End If
  loc_14D30B1: global_88 = 0
  loc_14D30B9: Set var_A4 = Nothing
  loc_14D30BC: Exit Sub
  loc_14D30BD: ' Referenced from: 14D237C
  loc_14D30BD: Proc_6_60_E62BC4(global_88, var_88, var_86, var_86)
  loc_14D30C7: global_88 = 0
  loc_14D30CA: Exit Sub
End Sub

Public Sub Proc_66_64_120207C
  'Data Table: 540784
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim var_154 As String
  Dim var_140 As MSHFlexGrid
  Dim var_15C As String
  Dim var_164 As String
  Dim unk_5407B4 As Connection15
  Dim var_9C As Recordset15
  Dim var_C0 As Variant
  loc_1201BF2: var_B0 = CVar(CLng(2)) 'Long
  loc_1201BF7: var_D0 = 2
  loc_1201C04: Set var_E4 = Me.FGrid
  loc_1201C0A: var_F4 = var_E4.TextMatrix)
  loc_1201C20: var_154 = var_D0 & CStr(var_F4) & "' And '"
  loc_1201C38: Set var_140 = Me.FGrid
  loc_1201C7D: Close 1
  loc_1201C86: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1201C9E: var_F8 = "Select RO.Docid,RO.FolioNo As RegNo,GFor.SerialNo,GFor.Name As GuestName,GFor.Add1,GFor.Add2,Country.Name As Nationality,GFor.Age,GFor.PurVisit,GFor.AddIndia AddIndiaIfAny," & "GFor.DateArr,GFor.ArrPlace,GFor.PropStay,GFor.ArrFrom,GFor.ModeTravel As ModeTravelatArrival,RO.DepDate As ProposedDepart,"
  loc_1201CAC: var_154 = var_F8 & "GFor.Dest As GoingTo, GFor.ModeTravelUsed As ModeTravelAfterDepart,GFor.VisaIssAuth,GFor.Extension," & "GFor.PassNo,GFor.IssDate, GFor.IssPlace,GFor.PassExpDate,GFor.WorkPermit,GFor.VisaNo,GFor.VisaIssDate,GFor.VisaIssPlace,"
  loc_1201CBA: var_15C = var_154 & "GFor.ExpDate AS VisaExpDate,GFor.VisaDuration,RO.VDate From " & "(((GuestFolio RO Inner Join GuestFolioProfDetail GFP ON RO.DocId=GFP.DocID Left Join GuestProf GF ON GFP.GuestProf=GF.Code) Left Join GuestProfFor GFor ON GF.Code=GFor.Code) "
  loc_1201CCB: var_164 = var_15C & "LEFT JOIN Country ON GFor.Nationality = Country.Code) Where (GF.Type='Foreign') " & 2 & CStr(var_140.TextMatrix)) & "'"
  loc_1201CDB: unk_5407B4.Execute var_164 & " ORDER BY GFor.SerialNo", var_F4, -1
  loc_1201CE6: Set var_9C = var_E4
  loc_1201D16: If (var_9C.RecordCount <= 0) Then
  loc_1201D1F:   Call 0.Method_arg_50 (var_F8, var_E4, CVar(CLng(3)))
  loc_1201D35:   var_B0 = "** No Records Found to Print **"
  loc_1201D40:   MsgBox(var_B0, &H40, CVar(var_F8), var_17C, var_18C)
  loc_1201D55:   global_88 = 0
  loc_1201D58:   Exit Sub
  loc_1201D59: End If
  loc_1201D64: var_16C = var_9C.RecordCount
  loc_1201D72: If (var_16C > 0) Then
  loc_1201D7B:   global_84 = "Form-C"
  loc_1201D85:   Call 0.Method_arg_50 (var_F8, 1, global_88)
  loc_1201DA2:   global_80 = CStr(Ucase(CVar(var_F8)))
  loc_1201DD7:   Set var_E4 = var_9C 
  loc_1201DDE:   CreateFieldDefFile(var_E4, MemVar_1F920B4 & "\" & global_84 & ".ttx", &HFF)
  loc_1201E09:   var_F8 = MemVar_1F920B4 & "\"
  loc_1201E1A:   var_154 = var_F8 & global_84 & ".RPT"
  loc_1201E23:   Call 0.Method_arg_1C (var_154, var_B0, var_E4)
  loc_1201E2E:   MemVar_1F921E4 = var_E4
  loc_1201E49:   var_B0 = CVar(var_E4) 'Address
  loc_1201E57:   Call 0.Method_arg_64 (var_E4, var_B0, var_C0, var_D0)
  loc_1201E5F:   Call 0.Method_arg_2C (var_154, var_B0)
  loc_1201E6D:   Call 0.Method_arg_150 ("AND RO.Docid Between '")
  loc_1201E83:   Call 0.Method_arg_90 (var_E4, var_16C)
  loc_1201E8B:   Call 0.Method_arg_24 (var_9E)
  loc_1201E97:   For var_190 =  To CInt(var_16C): 1 = var_190 'Integer
  loc_1201EB0:     Call 0.Method_arg_90 (var_E4, CLng(var_9E))
  loc_1201EB8:     Call 0.Method_arg_20 (var_140)
  loc_1201EC0:     Call 0.Method_arg_30 (var_F8)
  loc_1201ED6:     var_1A0 = Ucase(CVar(var_F8)) 'Variant
  loc_1201EEF:     If (var_1A0 = "TITLE") Then
  loc_1201F16:       Call 0.Method_arg_90 (var_E4, CLng(var_9E))
  loc_1201F1E:       Call 0.Method_arg_20 (var_140)
  loc_1201F26:       Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_1201F3C:     Else
  loc_1201F47:       If (var_1A0 = "PRINTDATE") Then
  loc_1201F77:         Call 0.Method_arg_90 (var_E4, CLng(var_9E))
  loc_1201F7F:         Call 0.Method_arg_20 (var_140)
  loc_1201F87:         Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F920EC) & "'"))
  loc_1201F9D:       End If
  loc_1201F9D:     End If
  loc_1201FA0:   Next var_190 'Integer
  loc_1201FAA:   Set var_140 = Nothing
  loc_1201FC3:   Set var_E4 = MemVar_1F921E4 
  loc_1201FCF:   Proc_6_99_1483714(var_E4, 0, global_80)
  loc_1201FDA:   MemVar_1F921E4 = var_E4
  loc_1201FE5: End If
  loc_1201FE7: Close 1
  loc_1201FF0: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1202000: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_120200B: Close 1
  loc_1202015: If (MemVar_1F923B8 = "Y") Then
  loc_1202031:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_120203B: Else
  loc_1202054:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_120205B: End If
  loc_1202068: Set var_9C = Nothing
  loc_120206B: Exit Sub
  loc_120206C: Proc_6_60_E62BC4(0, &HFF)
  loc_1202076: global_88 = 0
  loc_1202079: Exit Sub
End Sub

Public Sub Proc_66_65_1622718
  'Data Table: 540784
  Dim var_14C As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_200 As Variant
  Dim var_220 As Variant
  Dim var_274 As Variant
  Dim var_284 As Variant
  Dim var_2A4 As Variant
  Dim var_318 As Variant
  Dim var_328 As Variant
  Dim var_348 As Variant
  Dim var_36C As String
  Dim var_370 As String
  Dim unk_5407B4 As Connection15
  Dim var_A4 As Recordset15
  Dim var_A8 As Recordset15
  Dim var_B8 As Long
  Dim var_BC As Long
  Dim var_C0 As Long
  Dim var_C4 As Long
  Dim var_8C As Long
  Dim var_88 As Long
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B4 As Double
  Dim var_13C As Variant
  Dim var_1F0 As Variant
  Dim var_294 As Variant
  Dim var_338 As Variant
  loc_1621254: On Error Goto loc_1622707
  loc_1621257: var_14C = " (ChkInDt Between "
  loc_1621271: Set var_10C = Me.FGrid
  loc_1621277: var_11C = var_10C.TextMatrix)
  loc_1621288: Proc_6_7_F25D88(var_13C, CVar(CStr(var_11C)), 1)
  loc_1621290: var_15C = CVar(CLng(0)) & var_13C 
  loc_1621299: var_17C = var_15C & " And " 
  loc_16212C9: Proc_6_7_F25D88(var_1F0, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_1621304: var_284 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_162130A: Proc_6_7_F25D88(var_294, var_284, 1, CVar(CLng(0)))
  loc_1621345: var_328 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_162134B: Proc_6_7_F25D88(var_338, var_328, 1, CVar(CLng(1)))
  loc_1621367: global_60 = CStr(CVar(CLng(1)) & var_1F0 & " Or ChkOutDt Between " & var_294 & " And " & var_338 & " Or ChkOutDt Is Null)")
  loc_16213BB: var_36C = "Select DocId,(Adult+Children) As Indian,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_16213C2: var_370 = CStr(CVar(CLng(1)) & var_1F0 & " Or ChkOutDt Between " & var_294 & " And " & var_338 & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' Order By DocId,SNo"
  loc_16213CB: unk_5407B4.Execute var_370, var_11C, -1
  loc_16213D6: Set var_A8 = var_10C
  loc_16213FD: var_36C = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_1621404: var_370 = CStr(CVar(CLng(1)) & var_1F0 & " Or ChkOutDt Between " & var_294 & " And " & var_338 & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By DocId,SNo"
  loc_162140D: unk_5407B4.Execute var_370, var_11C, -1
  loc_1621418: Set var_A4 = var_10C
  loc_1621451: If ((var_A4.RecordCount <= 0) And (var_A8.RecordCount <= 0)) Then
  loc_162145A:   Call 0.Method_arg_50 (CStr(CVar(CLng(1)) & var_1F0 & " Or ChkOutDt Between " & var_294 & " And " & var_338 & " Or ChkOutDt Is Null)"), var_10C, var_10C)
  loc_1621468:   var_12C = CVar(CStr(CVar(CLng(1)) & var_1F0 & " Or ChkOutDt Between " & var_294 & " And " & var_338 & " Or ChkOutDt Is Null)")) 'String
  loc_162147B:   MsgBox("** No Records Found to Print **", &H40, var_12C, var_13C, var_15C)
  loc_1621490:   global_88 = 0
  loc_1621493:   Exit Sub
  loc_1621494: End If
  loc_1621497: var_AC = "-------------------------------------------------------------------------------------------"
  loc_162149C: Close 1
  loc_16214A5: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16214AE: var_B8 = 0
  loc_16214B6: var_BC = 0
  loc_16214BE: var_C0 = 0
  loc_16214C6: var_C4 = 0
  loc_16214CC: var_C8 = vbNullString
  loc_16214D4: var_8C = 1
  loc_16214DC: var_88 = 0
  loc_16214F3: If (var_A8.RecordCount > 0) Then
  loc_16214F6:   ' Referenced from: 1621B2B
  loc_1621505:   If Not(var_A8.EOF) Then
  loc_162152A:     var_12C = var_A8.Fields.Item("CheckIn").Value
  loc_1621535:     var_E8 = CVar(CLng(0)) 'Long
  loc_1621577:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_162157D:       var_D8 = CVar(CLng(0)) 'Long
  loc_1621582:       var_F8 = 1
  loc_16215A5:       var_B4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_16215B4:     Else
  loc_16215D6:       var_12C = var_A8.Fields.Item("CheckIn").Value
  loc_16215E1:       var_E8 = CVar(CLng(1)) 'Long
  loc_1621623:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1621629:         var_D8 = CVar(CLng(1)) 'Long
  loc_162162E:         var_F8 = 1
  loc_1621651:         var_B4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1621660:       Else
  loc_162168C:         var_B4 = CDate(var_A8.Fields.Item("CheckIn").Value)
  loc_1621699:       End If
  loc_1621699:     End If
  loc_16216D5:     If CBool(var_A8.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_16216FA:       var_12C = var_A8.Fields.Item("CheckOut").Value
  loc_1621705:       var_E8 = CVar(CLng(1)) 'Long
  loc_1621747:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_162174D:         var_D8 = CVar(CLng(1)) 'Long
  loc_1621752:         var_F8 = 1
  loc_16217D3:         var_1D0 = (CVar(var_B8) + (DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A8.Fields.Item("Indian").Value))
  loc_16217D9:         var_B8 = CLng(Me.FGrid.TextMatrix))
  loc_16217F8:       Else
  loc_1621870:         var_17C = (CVar(var_B8) + (DateDiff("D", var_B4, CVar(var_A8.Fields.Item("CheckOut")), 1, 1) * var_A8.Fields.Item("Indian").Value))
  loc_1621876:         var_B8 = CLng((DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A8.Fields.Item("Indian").Value))
  loc_162188D:       End If
  loc_1621890:     Else
  loc_1621893:       var_D8 = CVar(CLng(1)) 'Long
  loc_1621898:       var_F8 = 1
  loc_16218CD:       If (MemVar_1F920EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_162192C:         var_17C = (CVar(var_B8) + (DateDiff("D", var_B4, CDate(MemVar_1F920EC), 1, 1) * var_A8.Fields.Item("Indian").Value))
  loc_1621932:         var_B8 = CLng((DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A8.Fields.Item("Indian").Value))
  loc_162194A:       Else
  loc_162194D:         var_D8 = CVar(CLng(1)) 'Long
  loc_1621952:         var_F8 = 1
  loc_16219D3:         var_1D0 = (CVar(var_B8) + (DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A8.Fields.Item("Indian").Value))
  loc_16219D9:         var_B8 = CLng(Me.FGrid.TextMatrix))
  loc_16219F5:       End If
  loc_16219F5:     End If
  loc_1621A17:     var_12C = var_A8.Fields.Item("CheckIn").Value
  loc_1621A22:     var_E8 = CVar(CLng(0)) 'Long
  loc_1621A27:     var_108 = 1
  loc_1621A4A:     var_16C = CDate(CDate(CStr(Me.FGrid.TextMatrix))))
  loc_1621A75:     var_17C = var_A8.Fields.Item("CheckIn").Value
  loc_1621AD8:     If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))) Then
  loc_1621B0C:       var_12C = (CVar(var_C0) + var_A8.Fields.Item("Indian").Value)
  loc_1621B12:       var_C0 = CLng(var_12C)
  loc_1621B23:     End If
  loc_1621B26:     var_A8.MoveNext
  loc_1621B2B:     GoTo loc_16214F6
  loc_1621B2E:   End If
  loc_1621B2E: End If
  loc_1621B42: If (var_A4.RecordCount > 0) Then
  loc_1621B45:   ' Referenced from: 162217A
  loc_1621B54:   If Not(var_A4.EOF) Then
  loc_1621B79:     var_12C = var_A4.Fields.Item("CheckIn").Value
  loc_1621B84:     var_E8 = CVar(CLng(0)) 'Long
  loc_1621BC6:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1621BCC:       var_D8 = CVar(CLng(0)) 'Long
  loc_1621BD1:       var_F8 = 1
  loc_1621BF4:       var_B4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1621C03:     Else
  loc_1621C25:       var_12C = var_A4.Fields.Item("CheckIn").Value
  loc_1621C30:       var_E8 = CVar(CLng(1)) 'Long
  loc_1621C72:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1621C78:         var_D8 = CVar(CLng(1)) 'Long
  loc_1621C7D:         var_F8 = 1
  loc_1621CA0:         var_B4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1621CAF:       Else
  loc_1621CDB:         var_B4 = CDate(var_A4.Fields.Item("CheckIn").Value)
  loc_1621CE8:       End If
  loc_1621CE8:     End If
  loc_1621D24:     If CBool(var_A4.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_1621D49:       var_12C = var_A4.Fields.Item("CheckOut").Value
  loc_1621D54:       var_E8 = CVar(CLng(1)) 'Long
  loc_1621D96:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1621D9C:         var_D8 = CVar(CLng(1)) 'Long
  loc_1621DA1:         var_F8 = 1
  loc_1621E22:         var_1D0 = (CVar(var_BC) + (DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1621E28:         var_BC = CLng((1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_1621E47:       Else
  loc_1621EBF:         var_17C = (CVar(var_BC) + (DateDiff("D", var_B4, CVar(var_A4.Fields.Item("CheckOut")), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1621EC5:         var_BC = CLng((DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1621EDC:       End If
  loc_1621EDF:     Else
  loc_1621EE2:       var_D8 = CVar(CLng(1)) 'Long
  loc_1621EE7:       var_F8 = 1
  loc_1621F1C:       If (MemVar_1F920EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_1621F7B:         var_17C = (CVar(var_BC) + (DateDiff("D", var_B4, CDate(MemVar_1F920EC), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1621F81:         var_BC = CLng((DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1621F99:       Else
  loc_1621F9C:         var_D8 = CVar(CLng(1)) 'Long
  loc_1621FA1:         var_F8 = 1
  loc_1622022:         var_1D0 = (CVar(var_BC) + (DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1622028:         var_BC = CLng((1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_1622044:       End If
  loc_1622044:     End If
  loc_1622066:     var_12C = var_A4.Fields.Item("CheckIn").Value
  loc_1622071:     var_E8 = CVar(CLng(0)) 'Long
  loc_1622076:     var_108 = 1
  loc_1622099:     var_16C = CDate(CDate(CStr(Me.FGrid.TextMatrix))))
  loc_16220C4:     var_17C = var_A4.Fields.Item("CheckIn").Value
  loc_1622127:     If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))) Then
  loc_162212D:       var_E8 = CVar(var_C4) 'Long
  loc_1622153:       var_11C = var_A4.Fields.Item("Foreigner").Value
  loc_162215B:       var_12C = (var_E8 + var_11C)
  loc_1622161:       var_C4 = CLng(var_12C)
  loc_1622172:     End If
  loc_1622175:     var_A4.MoveNext
  loc_162217A:     GoTo loc_1621B45
  loc_162217D:   End If
  loc_162217D: End If
  loc_16221B4: Print 1, Proc_6_128_10272A8("FORM 1 ", "B", &H50, 0, 1, var_C4, var_17C, (var_108 >= var_16C))
  loc_16221EC: Print 1, Proc_6_128_10272A8("GOVT. OF INDIA", "B", &H50, var_E8, var_12C, var_BC)
  loc_1622224: Print 1, Proc_6_128_10272A8("MINISTRY OF TOURISM", "B", &H50, var_11C)
  loc_162223A: Print 1, vbNullString
  loc_1622267: Print 1, Proc_6_128_10272A8("STATISTICS OF DOMESTIC AND FOREIGN TOURIST", "B", &H50, var_F8)
  loc_162227D: Print 1, vbNullString
  loc_1622286: var_D8 = CVar(CLng(0)) 'Long
  loc_162228B: var_F8 = 1
  loc_162229E: var_11C = Me.FGrid.TextMatrix)
  loc_16222C5: var_12C = Me.FGrid.TextMatrix)
  loc_16222F3: Print 1, "FROM : " & CStr(var_11C) & " TO : " & CStr(var_12C)
  loc_1622319: Print 1, vbNullString
  loc_162233E: Print 1, "NAME OF THE HOTEL : " & Proc_6_45_EAD428(MemVar_1F92130, &H32, var_12C, 1, CVar(CLng(1)), var_11C)
  loc_1622390: var_13C = (Space(&H14) + Trim(MemVar_1F92134))
  loc_1622399: var_15C = (DateDiff("D", var_B4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) + ", ")
  loc_16223A0: var_1D0 = (Me.FGrid.TextMatrix) + Trim(MemVar_1F92138))
  loc_16223A9: var_1E0 = ((1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))) + ", ")
  loc_16223B0: var_200 = (CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))) + Trim(MemVar_1F9213C))
  loc_16223B6: Print 1, CVar(CLng(1)) & Trim(MemVar_1F9213C)
  loc_16223D6: Print 1, vbNullString
  loc_16223E1: Print 1, var_AC
  loc_1622409: var_12C = (Space(6) + "NO. OF GUEST CHECKED IN")
  loc_1622410: var_15C = (Trim(MemVar_1F92134) + Space(6))
  loc_1622419: var_17C = (Me.FGrid.TextMatrix) + "TOTAL NO. OF BED NIGHTS SPENT")
  loc_162241F: Print 1, Trim(MemVar_1F92138)
  loc_162246E: var_12C = (Space(8) + "INDIAN")
  loc_1622475: var_15C = (Trim(MemVar_1F92134) + Space(4))
  loc_162247E: var_17C = (Me.FGrid.TextMatrix) + "FOREIGNER")
  loc_1622485: var_1E0 = (Trim(MemVar_1F92138) + Space(&HB))
  loc_1622489: var_F8 = "INDIAN"
  loc_162248E: var_1F0 = (CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))) + var_F8)
  loc_1622495: var_220 = (Trim(MemVar_1F9213C) + Space(&HA))
  loc_162249E: var_274 = (CVar(CLng(1)) & Trim(MemVar_1F9213C) & " Or ChkOutDt Between " + "FOREIGNER")
  loc_16224A4: Print 1, Me.FGrid.TextMatrix)
  loc_16224C8: Print 1, var_AC
  loc_16224D3: Print 1, vbNullString
  loc_16224E9: var_D8 = var_C0
  loc_16224F1: Proc_6_39_E7C810(Trim(MemVar_1F92134), var_D8, var_F8, var_D8)
  loc_1622523: Proc_6_39_E7C810(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))), var_C4)
  loc_1622555: Proc_6_39_E7C810(var_284, var_B8)
  loc_1622587: Proc_6_39_E7C810(var_328, var_BC)
  loc_16225AA: var_15C = (Space(4) + CVar(Proc_6_52_EAD4F4(CStr(Trim(MemVar_1F92134)), 8, var_D8)))
  loc_16225B1: var_1D0 = (Me.FGrid.TextMatrix) + Space(4))
  loc_16225BB: var_200 = (Space(&HB) + CVar(Proc_6_52_EAD4F4(CStr(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))), 8)))
  loc_16225C2: var_274 = (Space(&HA) + Space(&HB))
  loc_16225CC: var_2A4 = (Me.FGrid.TextMatrix) + CVar(Proc_6_52_EAD4F4(CStr(var_284), 8)))
  loc_16225D3: var_318 = (CVar(CLng(1)) & CVar(Proc_6_52_EAD4F4(CStr(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))), 8)) & " Or ChkOutDt Between " & CVar(Proc_6_52_EAD4F4(CStr(var_284), 8)) + Space(&HB))
  loc_16225DD: var_348 = (Me.FGrid.TextMatrix) + CVar(Proc_6_52_EAD4F4(CStr(var_328), 8)))
  loc_16225E3: Print 1, CVar(CLng(1)) & CVar(Proc_6_52_EAD4F4(CStr(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))), 8)) & " Or ChkOutDt Between " & CVar(Proc_6_52_EAD4F4(CStr(var_284), 8)) & " And " & CVar(Proc_6_52_EAD4F4(CStr(var_328), 8))
  loc_162262A: Print 1, vbNullString
  loc_1622635: Print 1, var_AC
  loc_1622640: Print 1, vbNullString
  loc_162264B: Print 1, vbNullString
  loc_162265A: var_88 = (var_88 + &H15)
  loc_162266F: Print 1, Chr(&HC)
  loc_162267A: Close 1
  loc_1622683: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1622693: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_162269E: Close 1
  loc_16226A8: If (MemVar_1F923B8 = "Y") Then
  loc_16226C4:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16226CE: Else
  loc_16226E7:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16226EE: End If
  loc_16226F3: global_88 = 0
  loc_16226FB: Set var_A8 = Nothing
  loc_1622703: Set var_A4 = Nothing
  loc_1622706: Exit Sub
  loc_1622707: ' Referenced from: 1621254
  loc_1622707: Proc_6_60_E62BC4(global_88, 0)
  loc_1622711: global_88 = 0
  loc_1622714: Exit Sub
End Sub

Public Sub Proc_66_66_15E662C
  'Data Table: 540784
  Dim var_13C As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_1B0 As Variant
  Dim var_1C0 As Variant
  Dim var_254 As Variant
  Dim var_35C As String
  Dim var_360 As String
  Dim unk_5407B4 As Connection15
  Dim var_A8 As Long
  Dim var_AC As Long
  Dim var_B0 As Long
  Dim var_B4 As Long
  Dim var_94 As Recordset15
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_A4 As Double
  Dim var_90 As Recordset15
  Dim var_378 As Recordset15
  loc_15E52D8: On Error Goto loc_15E661B
  loc_15E52DB: var_13C = " (ChkInDt Between "
  loc_15E52F5: Set var_FC = Me.FGrid
  loc_15E52FB: var_10C = var_FC.TextMatrix)
  loc_15E530C: Proc_6_7_F25D88(var_12C, CVar(CStr(var_10C)), 1)
  loc_15E531D: var_16C = CVar(CLng(0)) & var_12C & " And " 
  loc_15E534D: Proc_6_7_F25D88(var_1E0, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_15E538E: Proc_6_7_F25D88(var_284, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_15E53CF: Proc_6_7_F25D88(var_328, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_15E53EB: global_60 = CStr(CVar(CLng(1)) & var_1E0 & " Or ChkOutDt Between " & var_284 & " And " & var_328 & " Or ChkOutDt Is Null)")
  loc_15E543F: var_35C = "Select DocId,(Adult+Children) As Indian,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_15E5446: var_360 = CStr(CVar(CLng(1)) & var_1E0 & " Or ChkOutDt Between " & var_284 & " And " & var_328 & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' Order By DocId,SNo"
  loc_15E544F: unk_5407B4.Execute var_360, var_10C, -1
  loc_15E545A: Set var_94 = var_FC
  loc_15E5481: var_35C = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_15E5488: var_360 = CStr(CVar(CLng(1)) & var_1E0 & " Or ChkOutDt Between " & var_284 & " And " & var_328 & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By DocId,SNo"
  loc_15E5491: unk_5407B4.Execute var_360, var_10C, -1
  loc_15E549C: Set var_90 = var_FC
  loc_15E54B1: var_A8 = 0
  loc_15E54B9: var_AC = 0
  loc_15E54C1: var_B0 = 0
  loc_15E54C9: var_B4 = 0
  loc_15E54CF: var_B8 = vbNullString
  loc_15E54E6: If (var_94.RecordCount > 0) Then
  loc_15E54E9:   ' Referenced from: 15E5B1E
  loc_15E54F8:   If Not(var_94.EOF) Then
  loc_15E551D:     var_11C = var_94.Fields.Item("CheckIn").Value
  loc_15E5528:     var_D8 = CVar(CLng(0)) 'Long
  loc_15E556A:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15E5570:       var_C8 = CVar(CLng(0)) 'Long
  loc_15E5575:       var_E8 = 1
  loc_15E5598:       var_A4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_15E55A7:     Else
  loc_15E55C9:       var_11C = var_94.Fields.Item("CheckIn").Value
  loc_15E55D4:       var_D8 = CVar(CLng(1)) 'Long
  loc_15E5616:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15E561C:         var_C8 = CVar(CLng(1)) 'Long
  loc_15E5621:         var_E8 = 1
  loc_15E5644:         var_A4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_15E5653:       Else
  loc_15E567F:         var_A4 = CDate(var_94.Fields.Item("CheckIn").Value)
  loc_15E568C:       End If
  loc_15E568C:     End If
  loc_15E56C8:     If CBool(var_94.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_15E56ED:       var_11C = var_94.Fields.Item("CheckOut").Value
  loc_15E56F8:       var_D8 = CVar(CLng(1)) 'Long
  loc_15E573A:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15E5740:         var_C8 = CVar(CLng(1)) 'Long
  loc_15E5745:         var_E8 = 1
  loc_15E57C6:         var_1C0 = (CVar(var_A8) + (DateDiff("D", var_A4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_94.Fields.Item("Indian").Value))
  loc_15E57CC:         var_A8 = CLng(Me.FGrid.TextMatrix))
  loc_15E57EB:       Else
  loc_15E5863:         var_16C = (CVar(var_A8) + (DateDiff("D", var_A4, CVar(var_94.Fields.Item("CheckOut")), 1, 1) * var_94.Fields.Item("Indian").Value))
  loc_15E5869:         var_A8 = CLng((DateDiff("D", var_A4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_94.Fields.Item("Indian").Value))
  loc_15E5880:       End If
  loc_15E5883:     Else
  loc_15E5886:       var_C8 = CVar(CLng(1)) 'Long
  loc_15E588B:       var_E8 = 1
  loc_15E58C0:       If (MemVar_1F920EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_15E591F:         var_16C = (CVar(var_A8) + (DateDiff("D", var_A4, CDate(MemVar_1F920EC), 1, 1) * var_94.Fields.Item("Indian").Value))
  loc_15E5925:         var_A8 = CLng((DateDiff("D", var_A4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_94.Fields.Item("Indian").Value))
  loc_15E593D:       Else
  loc_15E5940:         var_C8 = CVar(CLng(1)) 'Long
  loc_15E5945:         var_E8 = 1
  loc_15E59C6:         var_1C0 = (CVar(var_A8) + (DateDiff("D", var_A4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_94.Fields.Item("Indian").Value))
  loc_15E59CC:         var_A8 = CLng(Me.FGrid.TextMatrix))
  loc_15E59E8:       End If
  loc_15E59E8:     End If
  loc_15E5A0A:     var_11C = var_94.Fields.Item("CheckIn").Value
  loc_15E5A15:     var_D8 = CVar(CLng(0)) 'Long
  loc_15E5A1A:     var_F8 = 1
  loc_15E5A3D:     var_15C = CDate(CDate(CStr(Me.FGrid.TextMatrix))))
  loc_15E5A68:     var_16C = var_94.Fields.Item("CheckIn").Value
  loc_15E5ACB:     If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))) Then
  loc_15E5AFF:       var_11C = (CVar(var_B0) + var_94.Fields.Item("Indian").Value)
  loc_15E5B05:       var_B0 = CLng(var_11C)
  loc_15E5B16:     End If
  loc_15E5B19:     var_94.MoveNext
  loc_15E5B1E:     GoTo loc_15E54E9
  loc_15E5B21:   End If
  loc_15E5B21: End If
  loc_15E5B35: If (var_90.RecordCount > 0) Then
  loc_15E5B38:   ' Referenced from: 15E616D
  loc_15E5B47:   If Not(var_90.EOF) Then
  loc_15E5B6C:     var_11C = var_90.Fields.Item("CheckIn").Value
  loc_15E5B77:     var_D8 = CVar(CLng(0)) 'Long
  loc_15E5BB9:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15E5BBF:       var_C8 = CVar(CLng(0)) 'Long
  loc_15E5BC4:       var_E8 = 1
  loc_15E5BE7:       var_A4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_15E5BF6:     Else
  loc_15E5C18:       var_11C = var_90.Fields.Item("CheckIn").Value
  loc_15E5C23:       var_D8 = CVar(CLng(1)) 'Long
  loc_15E5C65:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15E5C6B:         var_C8 = CVar(CLng(1)) 'Long
  loc_15E5C70:         var_E8 = 1
  loc_15E5C93:         var_A4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_15E5CA2:       Else
  loc_15E5CCE:         var_A4 = CDate(var_90.Fields.Item("CheckIn").Value)
  loc_15E5CDB:       End If
  loc_15E5CDB:     End If
  loc_15E5D17:     If CBool(var_90.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_15E5D3C:       var_11C = var_90.Fields.Item("CheckOut").Value
  loc_15E5D47:       var_D8 = CVar(CLng(1)) 'Long
  loc_15E5D89:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15E5D8F:         var_C8 = CVar(CLng(1)) 'Long
  loc_15E5D94:         var_E8 = 1
  loc_15E5E15:         var_1C0 = (CVar(var_AC) + (DateDiff("D", var_A4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_90.Fields.Item("Foreigner").Value))
  loc_15E5E1B:         var_AC = CLng((1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_15E5E3A:       Else
  loc_15E5EB2:         var_16C = (CVar(var_AC) + (DateDiff("D", var_A4, CVar(var_90.Fields.Item("CheckOut")), 1, 1) * var_90.Fields.Item("Foreigner").Value))
  loc_15E5EB8:         var_AC = CLng((DateDiff("D", var_A4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_90.Fields.Item("Foreigner").Value))
  loc_15E5ECF:       End If
  loc_15E5ED2:     Else
  loc_15E5ED5:       var_C8 = CVar(CLng(1)) 'Long
  loc_15E5EDA:       var_E8 = 1
  loc_15E5F0F:       If (MemVar_1F920EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_15E5F6E:         var_16C = (CVar(var_AC) + (DateDiff("D", var_A4, CDate(MemVar_1F920EC), 1, 1) * var_90.Fields.Item("Foreigner").Value))
  loc_15E5F74:         var_AC = CLng((DateDiff("D", var_A4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_90.Fields.Item("Foreigner").Value))
  loc_15E5F8C:       Else
  loc_15E5F8F:         var_C8 = CVar(CLng(1)) 'Long
  loc_15E5F94:         var_E8 = 1
  loc_15E5FDF:         var_12C = DateDiff("D", var_A4, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1)
  loc_15E6015:         var_1C0 = (CVar(var_AC) + (var_12C * var_90.Fields.Item("Foreigner").Value))
  loc_15E601B:         var_AC = CLng((1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_15E6037:       End If
  loc_15E6037:     End If
  loc_15E6059:     var_11C = var_90.Fields.Item("CheckIn").Value
  loc_15E6064:     var_D8 = CVar(CLng(0)) 'Long
  loc_15E6069:     var_F8 = 1
  loc_15E6076:     Set var_254 = Me.FGrid
  loc_15E6087:     var_35C = CStr(var_254.TextMatrix))
  loc_15E608C:     var_15C = CDate(CDate(var_35C))
  loc_15E60B7:     var_16C = var_90.Fields.Item("CheckIn").Value
  loc_15E60DA:     var_14C = Me.FGrid.TextMatrix)
  loc_15E611A:     If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(var_14C))))) Then
  loc_15E6120:       var_D8 = CVar(var_B4) 'Long
  loc_15E6136:       var_FC = var_90.Fields
  loc_15E613E:       var_1B0 = var_FC.Item("Foreigner")
  loc_15E614E:       var_11C = (var_D8 + var_1B0.Value)
  loc_15E6154:       var_B4 = CLng(var_11C)
  loc_15E6165:     End If
  loc_15E6168:     var_90.MoveNext
  loc_15E616D:     GoTo loc_15E5B38
  loc_15E6170:   End If
  loc_15E6170: End If
  loc_15E6176: var_364 = var_90.RecordCount
  loc_15E6199: If ((var_364 <= 0) And (var_94.RecordCount <= 0)) Then
  loc_15E61A2:   Call 0.Method_arg_50 (var_35C, var_B4, var_16C, (var_F8 >= var_15C), var_D8, var_11C)
  loc_15E61B8:   var_C8 = "** No Records Found to Print **"
  loc_15E61C3:   MsgBox(var_C8, &H40, CVar(var_35C), var_12C, var_14C)
  loc_15E61D8:   global_88 = 0
  loc_15E61DB:   Exit Sub
  loc_15E61DC: End If
  loc_15E61E9: Call Proc_66_51_F22548(New)
  loc_15E61F1: Set var_98 = var_FC
  loc_15E61F7: Set var_378 = var_98 
  loc_15E6206: var_378.AddNew var_C8, var_D8
  loc_15E6210: var_10C = CVar(CStr(var_B0)) 'String
  loc_15E621D: var_378.Collect = "IndianGuest"
  loc_15E622A: var_10C = CVar(CStr(var_B4)) 'String
  loc_15E6237: var_378.Collect = "ForeignerGuest"
  loc_15E6244: var_10C = CVar(CStr(var_A8)) 'String
  loc_15E6251: var_378.Collect = "IndianNight"
  loc_15E6262: var_C8 = "ForeignerNight"
  loc_15E626B: var_378.Collect = var_C8
  loc_15E627E: var_378.Update var_C8, var_D8
  loc_15E6285: Set var_378 = Nothing 
  loc_15E628F: global_84 = "Form-1"
  loc_15E6299: Call 0.Method_arg_50 (var_35C, CVar(CStr(var_AC)), CVar(CStr(var_AC)), CVar(CStr(var_AC)), CVar(CStr(var_AC)), var_FC, global_88)
  loc_15E62A1: var_10C = CVar(var_35C) 'String
  loc_15E62B6: global_80 = CStr(Ucase(var_10C))
  loc_15E62EB: Set var_FC = var_98 
  loc_15E62F2: CreateFieldDefFile(var_FC, MemVar_1F920B4 & "\" & global_84 & ".ttx", &HFF, var_AC, var_10C)
  loc_15E631D: var_35C = MemVar_1F920B4 & "\"
  loc_15E6337: Call 0.Method_arg_1C (var_35C & global_84 & ".RPT", var_C8, var_FC, var_E8)
  loc_15E6342: MemVar_1F921E4 = var_FC
  loc_15E635D: var_C8 = CVar(var_FC) 'Address
  loc_15E636B: Call 0.Method_arg_64 (var_FC, var_C8, var_D8, var_E8)
  loc_15E6373: Call 0.Method_arg_2C (var_C8, var_AC)
  loc_15E6381: Call 0.Method_arg_150 (var_10C)
  loc_15E639A: Call 0.Method_arg_90 (var_FC, var_364)
  loc_15E63A2: Call 0.Method_arg_24 (var_8C)
  loc_15E63AD: For var_388 =  To var_364: 1 = var_388 'Long
  loc_15E63C5:   Call 0.Method_arg_90 (var_FC, var_8C)
  loc_15E63CD:   Call 0.Method_arg_20 (var_1B0)
  loc_15E63D5:   Call 0.Method_arg_30 (var_35C)
  loc_15E63EB:   var_398 = Ucase(CVar(var_35C)) 'Variant
  loc_15E6404:   If (var_398 = "FROMDATE") Then
  loc_15E644D:     Call 0.Method_arg_90 (var_1B0, var_8C, var_254)
  loc_15E6455:     Call 0.Method_arg_20 (1 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(0)))
  loc_15E645D:     Call 0.Method_arg_38 ("'")
  loc_15E647A:   Else
  loc_15E6485:     If (var_398 = "TODATE") Then
  loc_15E64A0:       Set var_FC = Me.FGrid
  loc_15E64CE:       Call 0.Method_arg_90 (var_1B0, var_8C, var_254)
  loc_15E64D6:       Call 0.Method_arg_20 (1 & CStr(var_FC.TextMatrix)) & "'", CVar(CLng(1)))
  loc_15E64DE:       Call 0.Method_arg_38 ("'")
  loc_15E64FB:     Else
  loc_15E6506:       If (var_398 = "TITLE") Then
  loc_15E652C:         Call 0.Method_arg_90 (var_FC, var_8C)
  loc_15E6534:         Call 0.Method_arg_20 (var_1B0)
  loc_15E653C:         Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_15E6552:       Else
  loc_15E655D:         If (var_398 = "PRINTDATE") Then
  loc_15E658C:           Call 0.Method_arg_90 (var_FC, var_8C)
  loc_15E6594:           Call 0.Method_arg_20 (var_1B0)
  loc_15E659C:           Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F920EC) & "'"))
  loc_15E65B2:         End If
  loc_15E65B2:       End If
  loc_15E65B2:     End If
  loc_15E65B2:   End If
  loc_15E65B5: Next var_388 'Long
  loc_15E65BF: Set var_1B0 = Nothing
  loc_15E65D8: Set var_FC = MemVar_1F921E4 
  loc_15E65E4: Proc_6_99_1483714(var_FC, 0, global_80)
  loc_15E65EF: MemVar_1F921E4 = var_FC
  loc_15E65FF: global_88 = 0
  loc_15E6607: Set var_98 = Nothing
  loc_15E660F: Set var_94 = Nothing
  loc_15E6617: Set var_90 = Nothing
  loc_15E661A: Exit Sub
  loc_15E661B: ' Referenced from: 15E52D8
  loc_15E661B: Proc_6_60_E62BC4(global_88, &HFF)
  loc_15E6625: global_88 = 0
  loc_15E6628: Exit Sub
End Sub

Public Sub Proc_66_67_156D320
  'Data Table: 540784
  Dim var_148 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_1CC As Variant
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  Dim var_270 As Variant
  Dim var_368 As String
  Dim var_36C As String
  Dim unk_5407B4 As Connection15
  Dim var_A0 As Recordset15
  Dim var_B4 As Long
  Dim var_B8 As Long
  Dim var_C0 As Long
  Dim var_C4 As Long
  Dim var_8C As Long
  Dim var_88 As Long
  Dim var_138 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_B0 As Double
  Dim var_1EC As Variant
  loc_156C2A8: On Error Goto loc_156D310
  loc_156C2AB: var_148 = " (ChkInDt Between "
  loc_156C2C5: Set var_108 = Me.FGrid
  loc_156C2CB: var_118 = var_108.TextMatrix)
  loc_156C2DC: Proc_6_7_F25D88(var_138, CVar(CStr(var_118)), 1)
  loc_156C2E4: var_158 = CVar(CLng(0)) & var_138 
  loc_156C2ED: var_178 = var_158 & " And " 
  loc_156C31D: Proc_6_7_F25D88(var_1EC, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_156C35E: Proc_6_7_F25D88(var_290, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_156C39F: Proc_6_7_F25D88(var_334, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_156C40F: var_368 = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut,Country.Name As Country From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Left Join City On City.CityCode=GF.City Left Join Country On City.Country=Country.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & CStr(CVar(CLng(1)) & var_1EC & " Or ChkOutDt Between " & var_290 & " And " & var_334 & " Or ChkOutDt Is Null)")
  loc_156C416: var_36C = CStr(CVar(CLng(1)) & var_1EC & " Or ChkOutDt Between " & var_290 & " And " & var_334 & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By Country.Name,DocId,SNo"
  loc_156C41F: unk_5407B4.Execute var_36C, var_118, -1
  loc_156C42A: Set var_A0 = var_108
  loc_156C44E: If (var_A0.RecordCount <= 0) Then
  loc_156C457:   Call 0.Method_arg_50 (CStr(CVar(CLng(1)) & var_1EC & " Or ChkOutDt Between " & var_290 & " And " & var_334 & " Or ChkOutDt Is Null)"), var_108)
  loc_156C465:   var_128 = CVar(CStr(CVar(CLng(1)) & var_1EC & " Or ChkOutDt Between " & var_290 & " And " & var_334 & " Or ChkOutDt Is Null)")) 'String
  loc_156C478:   MsgBox("** No Records Found to Print **", &H40, var_128, var_138, var_158)
  loc_156C48D:   global_88 = 0
  loc_156C490:   Exit Sub
  loc_156C491: End If
  loc_156C494: var_A4 = "-------------------------------------------------------------------------------------------"
  loc_156C499: Close 1
  loc_156C4A2: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_156C4AB: var_B4 = 0
  loc_156C4B3: var_B8 = 0
  loc_156C4B9: var_BC = vbNullString
  loc_156C4C1: var_C0 = 0
  loc_156C4C9: var_C4 = 0
  loc_156C4CF: var_A8 = vbNullString
  loc_156C4D7: var_8C = 1
  loc_156C4DF: var_88 = 0
  loc_156C4E2: ' Referenced from: 156D04D
  loc_156C509: Print 1, Proc_6_128_10272A8("FORM 2 ", "B", &H50, var_88, var_8C, var_C4)
  loc_156C541: Print 1, Proc_6_128_10272A8("GOVT. OF INDIA", "B", &H50, var_C0, var_B8)
  loc_156C579: Print 1, Proc_6_128_10272A8("MINISTRY OF TOURISM", "B", &H50, var_B4)
  loc_156C58F: Print 1, vbNullString
  loc_156C5BC: Print 1, Proc_6_128_10272A8("STATISTICS OF FOREIGN TOURIST", "B", &H50)
  loc_156C5D2: Print 1, vbNullString
  loc_156C5DB: var_D4 = CVar(CLng(0)) 'Long
  loc_156C5E0: var_F4 = 1
  loc_156C5F3: var_118 = Me.FGrid.TextMatrix)
  loc_156C61A: var_128 = Me.FGrid.TextMatrix)
  loc_156C648: Print 1, "FROM : " & CStr(var_118) & " TO : " & CStr(var_128)
  loc_156C66E: Print 1, vbNullString
  loc_156C693: Print 1, "NAME OF THE HOTEL : " & Proc_6_45_EAD428(MemVar_1F92130, &H32, var_128, 1, CVar(CLng(1)), var_118)
  loc_156C6E5: var_138 = (Space(&H14) + Trim(MemVar_1F92134))
  loc_156C6EE: var_158 = (var_138 + ", ")
  loc_156C6F5: var_1CC = (var_158 + Trim(MemVar_1F92138))
  loc_156C6FE: var_1DC = (Me.FGrid.TextMatrix) + ", ")
  loc_156C705: var_1FC = (CVar(CStr(Me.FGrid.TextMatrix))) + Trim(MemVar_1F9213C))
  loc_156C70B: Print 1, CVar(CLng(1)) & Trim(MemVar_1F9213C)
  loc_156C72B: Print 1, vbNullString
  loc_156C736: Print 1, var_A4
  loc_156C75E: var_128 = ("COUNTRY NAME" + Space(&HF))
  loc_156C767: var_138 = (Trim(MemVar_1F92134) + "NO. OF TOURISTS")
  loc_156C76E: var_178 = (var_138 + Space(4))
  loc_156C777: var_1CC = (Trim(MemVar_1F92138) + "BED NIGHTS SPENT")
  loc_156C77D: Print 1, Me.FGrid.TextMatrix)
  loc_156C797: Print 1, var_A4
  loc_156C7A6: var_88 = (var_88 + &HE)
  loc_156C7D4: var_BC = CStr(var_A0.Fields.Item("Country").Value)
  loc_156C7E1: ' Referenced from: 156D18B
  loc_156C7F0: If Not(var_A0.EOF) Then
  loc_156C7F3:   ' Referenced from: 156D050
  loc_156C830:   If (CVar(var_BC) = var_A0.Fields.Item("Country").Value) Then
  loc_156C855:     var_128 = var_A0.Fields.Item("CheckIn").Value
  loc_156C860:     var_E4 = CVar(CLng(0)) 'Long
  loc_156C8A2:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_156C8A8:       var_D4 = CVar(CLng(0)) 'Long
  loc_156C8AD:       var_F4 = 1
  loc_156C8D0:       var_B0 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_156C8DF:     Else
  loc_156C901:       var_128 = var_A0.Fields.Item("CheckIn").Value
  loc_156C90C:       var_E4 = CVar(CLng(1)) 'Long
  loc_156C94E:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_156C954:         var_D4 = CVar(CLng(1)) 'Long
  loc_156C959:         var_F4 = 1
  loc_156C97C:         var_B0 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_156C98B:       Else
  loc_156C9B7:         var_B0 = CDate(var_A0.Fields.Item("CheckIn").Value)
  loc_156C9C4:       End If
  loc_156C9C4:     End If
  loc_156CA00:     If CBool(var_A0.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_156CA25:       var_128 = var_A0.Fields.Item("CheckOut").Value
  loc_156CA30:       var_E4 = CVar(CLng(1)) 'Long
  loc_156CA72:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_156CA78:         var_D4 = CVar(CLng(1)) 'Long
  loc_156CA7D:         var_F4 = 1
  loc_156CAFE:         var_1CC = (CVar(var_B4) + (DateDiff("D", var_B0, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_156CB04:         var_B4 = CLng(Me.FGrid.TextMatrix))
  loc_156CB23:       Else
  loc_156CB9B:         var_178 = (CVar(var_B4) + (DateDiff("D", var_B0, CVar(var_A0.Fields.Item("CheckOut")), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_156CBA1:         var_B4 = CLng((DateDiff("D", var_B0, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_156CBB8:       End If
  loc_156CBBB:     Else
  loc_156CBBE:       var_D4 = CVar(CLng(1)) 'Long
  loc_156CBC3:       var_F4 = 1
  loc_156CBF8:       If (MemVar_1F920EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_156CC57:         var_178 = (CVar(var_B4) + (DateDiff("D", var_B0, CDate(MemVar_1F920EC), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_156CC5D:         var_B4 = CLng((DateDiff("D", var_B0, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_156CC75:       Else
  loc_156CC78:         var_D4 = CVar(CLng(1)) 'Long
  loc_156CC7D:         var_F4 = 1
  loc_156CCC8:         var_138 = DateDiff("D", var_B0, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1)
  loc_156CCFE:         var_1CC = (CVar(var_B4) + (var_138 * var_A0.Fields.Item("Foreigner").Value))
  loc_156CD04:         var_B4 = CLng(Me.FGrid.TextMatrix))
  loc_156CD20:       End If
  loc_156CD20:     End If
  loc_156CD42:     var_128 = var_A0.Fields.Item("CheckIn").Value
  loc_156CD4D:     var_E4 = CVar(CLng(0)) 'Long
  loc_156CD52:     var_104 = 1
  loc_156CD75:     var_168 = CDate(CDate(CStr(Me.FGrid.TextMatrix))))
  loc_156CDA0:     var_178 = var_A0.Fields.Item("CheckIn").Value
  loc_156CDC3:     var_158 = Me.FGrid.TextMatrix)
  loc_156CE03:     If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(var_158))))) Then
  loc_156CE37:       var_128 = (CVar(var_B8) + var_A0.Fields.Item("Foreigner").Value)
  loc_156CE3D:       var_B8 = CLng(var_128)
  loc_156CE4E:     End If
  loc_156CE51:     var_A0.MoveNext
  loc_156CE67:     If (var_A0.EOF = &HFF) Then
  loc_156CE6A:       GoTo loc_156D053
  loc_156CE6D:     End If
  loc_156CE8F:     var_118 = var_A0.Fields.Item("Country").Value
  loc_156CE9A:     var_E4 = CVar(var_BC) 'String
  loc_156CEAA:     If CBool(var_118 <> var_E4) Then
  loc_156CEB0:       var_D4 = var_B8
  loc_156CEB8:       Proc_6_39_E7C810(var_118, var_D4, var_B8, var_178, (var_104 >= var_168), var_E4, var_128)
  loc_156CECD:       var_F4 = var_B4
  loc_156CED5:       Proc_6_39_E7C810(var_138, var_F4, (var_118 = 0), var_B4, var_118)
  loc_156CEF8:       If CBool(Not var_F4 And (var_138 = 0)) Then
  loc_156CF23:         Proc_6_39_E7C810(var_158, var_B8)
  loc_156CF55:         Proc_6_39_E7C810(CVar(CLng(1)) & Trim(MemVar_1F9213C), var_B4)
  loc_156CF78:         var_138 = (CVar(Proc_6_45_EAD428(var_BC, &H1E, var_B8)) + Space(2))
  loc_156CF82:         var_1CC = (var_138 + CVar(Proc_6_52_EAD4F4(CStr(var_158), 8)))
  loc_156CF89:         var_1EC = (Not var_F4 And (var_138 = 0) + Space(&HD))
  loc_156CF93:         var_270 = (Trim(MemVar_1F9213C) + CVar(Proc_6_52_EAD4F4(CStr(CVar(CLng(1)) & Trim(MemVar_1F9213C)), 8)))
  loc_156CF99:         Print 1, Me.FGrid.TextMatrix)
  loc_156CFCE:         var_88 = (var_88 + 1)
  loc_156CFD1:       End If
  loc_156CFD8:       var_C0 = (var_C0 + var_B8)
  loc_156CFE2:       var_C4 = (var_C4 + var_B4)
  loc_156CFEA:       var_B4 = 0
  loc_156CFF2:       var_B8 = 0
  loc_156CFF5:     End If
  loc_156D017:     var_118 = var_A0.Fields.Item("Country").Value
  loc_156D020:     var_BC = CStr(var_118)
  loc_156D036:     If (var_88 > &H3D) Then
  loc_156D03E:       var_88 = 0
  loc_156D04A:       var_8C = (var_8C + 1)
  loc_156D04D:       GoTo loc_156C4E2
  loc_156D050:     End If
  loc_156D050:     GoTo loc_156C7F3
  loc_156D053:     ' Referenced from: 156CE6A
  loc_156D053:   End If
  loc_156D05E:   Proc_6_39_E7C810(var_118, var_B8, var_8C, var_88, var_B8, var_B4)
  loc_156D07B:   Proc_6_39_E7C810(var_138, var_B4, (var_118 = 0), var_C4)
  loc_156D09E:   If CBool(Not var_C0 And (var_138 = 0)) Then
  loc_156D0C9:     Proc_6_39_E7C810(var_158, var_B8)
  loc_156D0FB:     Proc_6_39_E7C810(CVar(CLng(1)) & Trim(MemVar_1F9213C), var_B4)
  loc_156D11E:     var_138 = (CVar(Proc_6_45_EAD428(var_BC, &H1E, var_88)) + Space(2))
  loc_156D128:     var_1CC = (var_138 + CVar(Proc_6_52_EAD4F4(CStr(var_158), 8)))
  loc_156D12F:     var_1EC = (Not var_C0 And (var_138 = 0) + Space(&HD))
  loc_156D139:     var_270 = (Trim(MemVar_1F9213C) + CVar(Proc_6_52_EAD4F4(CStr(CVar(CLng(1)) & Trim(MemVar_1F9213C)), 8)))
  loc_156D13F:     Print 1, Me.FGrid.TextMatrix)
  loc_156D174:     var_88 = (var_88 + 1)
  loc_156D177:   End If
  loc_156D17E:   var_C0 = (var_C0 + var_B8)
  loc_156D188:   var_C4 = (var_C4 + var_B4)
  loc_156D18B:   GoTo loc_156C7E1
  loc_156D18E: End If
  loc_156D193: var_88 = 0
  loc_156D19B: Print 1, var_A4
  loc_156D1AA: var_88 = (var_88 + 1)
  loc_156D1FB: var_128 = ("TOTAL ==> " + Space(&H14))
  loc_156D205: var_158 = (CVar(Proc_6_45_EAD428(var_BC, &H1E, var_88)) + CVar(Proc_6_52_EAD4F4(CStr(var_C0), &HA, var_88, var_88, var_C4)))
  loc_156D20C: var_1CC = (var_158 + Space(&HB))
  loc_156D216: var_1EC = (Not var_C0 And (CVar(Proc_6_52_EAD4F4(CStr(var_C0), &HA, var_88, var_88, var_C4)) = 0) + CVar(Proc_6_52_EAD4F4(CStr(var_C4), &HA, var_C0)))
  loc_156D21C: Print 1, Trim(MemVar_1F9213C)
  loc_156D249: var_88 = (var_88 + 1)
  loc_156D251: Print 1, var_A4
  loc_156D260: var_88 = (var_88 + 1)
  loc_156D263: ' Referenced from: 156D286
  loc_156D26C: If (var_88 <= &H41) Then
  loc_156D274:   Print 1, vbNullString
  loc_156D283:   var_88 = (var_88 + 1)
  loc_156D286:   GoTo loc_156D263
  loc_156D289: End If
  loc_156D28B: Close 1
  loc_156D294: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_156D2A4: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_156D2AF: Close 1
  loc_156D2B9: If (MemVar_1F923B8 = "Y") Then
  loc_156D2D5:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_156D2DF: Else
  loc_156D2F8:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_156D2FF: End If
  loc_156D304: global_88 = 0
  loc_156D30C: Set var_A0 = Nothing
  loc_156D30F: Exit Sub
  loc_156D310: ' Referenced from: 156C2A8
  loc_156D310: Proc_6_60_E62BC4(global_88, var_88, var_88, var_88)
  loc_156D31A: global_88 = 0
  loc_156D31D: Exit Sub
End Sub

Public Sub Proc_66_68_152F11C
  'Data Table: 540784
  Dim var_138 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_198 As Long
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_20C As Variant
  Dim var_21C As Variant
  Dim var_23C As Long
  Dim var_250 As Variant
  Dim var_290 As Variant
  Dim var_3D8 As Variant
  Dim var_3FC As String
  Dim var_400 As String
  Dim unk_5407B4 As Connection15
  Dim var_8C As Recordset15
  Dim var_A0 As Long
  Dim var_A4 As Long
  Dim var_AC As Long
  Dim var_B0 As Long
  Dim var_D4 As Variant
  Dim var_9C As Double
  Dim var_128 As Variant
  Dim var_280 As Variant
  Dim var_418 As Recordset15
  Dim var_41C As Recordset15
  loc_152E1FC: On Error Goto loc_152F10D
  loc_152E1FF: var_138 = " (ChkInDt Between "
  loc_152E219: Set var_F8 = Me.FGrid
  loc_152E21F: var_108 = var_F8.TextMatrix)
  loc_152E230: Proc_6_7_F25D88(var_128, CVar(CStr(var_108)), 1)
  loc_152E238: var_148 = CVar(CLng(0)) & var_128 
  loc_152E241: var_168 = var_148 & " And " 
  loc_152E271: Proc_6_7_F25D88(var_1DC, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_152E2B2: Proc_6_7_F25D88(var_280, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_152E2F3: Proc_6_7_F25D88(var_324, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_152E334: Proc_6_7_F25D88(var_3C8, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_152E33C: var_3D8 = CVar(CLng(1)) & var_1DC & " Or (ChkInDt<=" & var_280 & " And ChkOutDt Is Null) Or ChkOutDt Between " & var_324 & " And " & var_3C8 
  loc_152E3B0: var_3FC = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut,Country.Name As Country From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Left Join City On City.CityCode=GF.City Left Join Country On City.Country=Country.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & CStr(var_3D8 & ")")
  loc_152E3B7: var_400 = CStr(var_3D8 & ")") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By Country.Name,DocId,SNo"
  loc_152E3C0: unk_5407B4.Execute var_400, var_108, -1
  loc_152E3CB: Set var_8C = var_F8
  loc_152E3E1: var_404 = var_8C.RecordCount
  loc_152E3EF: If (var_404 <= 0) Then
  loc_152E3F8:   Call 0.Method_arg_50 (CStr(var_3D8 & ")"), var_F8)
  loc_152E419:   MsgBox("** No Records Found to Print **", &H40, CVar(CStr(var_3D8 & ")")), var_128, var_148)
  loc_152E42E:   global_88 = 0
  loc_152E431:   Exit Sub
  loc_152E432: End If
  loc_152E43F: Call Proc_66_50_EFAAF4(New)
  loc_152E447: Set var_B4 = var_F8
  loc_152E44F: var_A0 = 0
  loc_152E457: var_A4 = 0
  loc_152E45D: var_A8 = vbNullString
  loc_152E465: var_AC = 0
  loc_152E46D: var_B0 = 0
  loc_152E473: var_94 = vbNullString
  loc_152E4A1: var_A8 = CStr(var_8C.Fields.Item("Country").Value)
  loc_152E4AE: ' Referenced from: 152ED88
  loc_152E4BD: If Not(var_8C.EOF) Then
  loc_152E4C0:   ' Referenced from: 152EC97
  loc_152E4FD:   If (CVar(var_A8) = var_8C.Fields.Item("Country").Value) Then
  loc_152E522:     var_118 = var_8C.Fields.Item("CheckIn").Value
  loc_152E52D:     var_D4 = CVar(CLng(0)) 'Long
  loc_152E56F:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_152E575:       var_C4 = CVar(CLng(0)) 'Long
  loc_152E57A:       var_E4 = 1
  loc_152E59D:       var_9C = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_152E5AC:     Else
  loc_152E5CE:       var_118 = var_8C.Fields.Item("CheckIn").Value
  loc_152E5D9:       var_D4 = CVar(CLng(1)) 'Long
  loc_152E61B:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_152E621:         var_C4 = CVar(CLng(1)) 'Long
  loc_152E626:         var_E4 = 1
  loc_152E649:         var_9C = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_152E658:       Else
  loc_152E684:         var_9C = CDate(var_8C.Fields.Item("CheckIn").Value)
  loc_152E691:       End If
  loc_152E691:     End If
  loc_152E6CD:     If CBool(var_8C.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_152E6F2:       var_118 = var_8C.Fields.Item("CheckOut").Value
  loc_152E6FD:       var_D4 = CVar(CLng(1)) 'Long
  loc_152E73F:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_152E745:         var_C4 = CVar(CLng(1)) 'Long
  loc_152E74A:         var_E4 = 1
  loc_152E793:         var_178 = CVar(CLng(1)) 'Long
  loc_152E798:         var_198 = 1
  loc_152E7D1:         var_21C = CVar(CLng(1)) 'Long
  loc_152E7D6:         var_23C = 1
  loc_152E81F:         var_20C = IIf((CDate(CDate(CStr(Me.FGrid.TextMatrix)))) < var_8C.Fields.Item("CheckOut").Value), DateAdd("D", CDbl(1), CDate(CDate(CStr(Me.FGrid.TextMatrix))))), CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_152E87C:         var_290 = (CVar(var_A0) + (DateDiff("D", var_9C, var_20C, 1, 1) * var_8C.Fields.Item("Foreigner").Value))
  loc_152E882:         var_A0 = CLng(CVar(CLng(1)) & (CDate(CDate(CStr(Me.FGrid.TextMatrix)))) < var_8C.Fields.Item("CheckOut").Value) & " Or (ChkInDt<=" & (DateDiff("D", var_9C, var_20C, 1, 1) * var_8C.Fields.Item("Foreigner").Value))
  loc_152E8BD:       Else
  loc_152E935:         var_168 = (CVar(var_A0) + (DateDiff("D", var_9C, CVar(var_8C.Fields.Item("CheckOut")), 1, 1) * var_8C.Fields.Item("Foreigner").Value))
  loc_152E93B:         var_A0 = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_152E952:       End If
  loc_152E955:     Else
  loc_152E958:       var_C4 = CVar(CLng(1)) 'Long
  loc_152E95D:       var_E4 = 1
  loc_152E992:       If (MemVar_1F920EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_152E9F1:         var_168 = (CVar(var_A0) + (DateDiff("D", var_9C, CDate(MemVar_1F920EC), 1, 1) * var_8C.Fields.Item("Foreigner").Value))
  loc_152E9F7:         var_A0 = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_152EA0F:       Else
  loc_152EA12:         var_C4 = CVar(CLng(1)) 'Long
  loc_152EA17:         var_E4 = 1
  loc_152EA4B:         var_3FC = CStr(Me.FGrid.TextMatrix))
  loc_152EA62:         var_128 = DateDiff("D", var_9C, CDate(CDate(var_3FC)), 1, 1)
  loc_152EA84:         var_250 = var_8C.Fields.Item("Foreigner")
  loc_152EA98:         var_1BC = (CVar(var_A0) + (var_128 * var_250.Value))
  loc_152EA9E:         var_A0 = CLng(DateAdd("D", CDbl(1), CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_152EABA:       End If
  loc_152EABA:     End If
  loc_152EAEB:     var_118 = (CVar(var_A4) + var_8C.Fields.Item("Foreigner").Value)
  loc_152EAF1:     var_A4 = CLng(CDate(CDate(var_3FC)))
  loc_152EB05:     var_8C.MoveNext
  loc_152EB1B:     If (var_8C.EOF = &HFF) Then
  loc_152EB1E:       GoTo loc_152EC9A
  loc_152EB21:     End If
  loc_152EB43:     var_108 = var_8C.Fields.Item("Country").Value
  loc_152EB5E:     If CBool(var_108 <> CVar(var_A8)) Then
  loc_152EB64:       var_C4 = var_A4
  loc_152EB6C:       Proc_6_39_E7C810(var_108, var_C4, var_A4, var_A0, var_108, var_E4, var_C4)
  loc_152EB74:       var_D4 = 0
  loc_152EB81:       var_E4 = var_A0
  loc_152EB89:       Proc_6_39_E7C810(var_128, var_E4, (var_108 = var_D4), var_A0, var_108)
  loc_152EBAC:       If CBool(Not var_E4 And (var_128 = 0)) Then
  loc_152EBB2:         Set var_418 = var_B4 
  loc_152EBC1:         var_418.AddNew var_C4, var_D4
  loc_152EBD6:         var_418.Collect = "Country"
  loc_152EBE6:         Proc_6_39_E7C810(var_108, var_A4, CVar(var_A8))
  loc_152EBF8:         var_418.Collect = "Guest"
  loc_152EC03:         var_C4 = var_A0
  loc_152EC0B:         Proc_6_39_E7C810(var_108, var_C4, var_108)
  loc_152EC14:         var_D4 = "Night"
  loc_152EC1D:         var_418.Collect = var_D4
  loc_152EC30:         var_418.Update var_C4, var_D4
  loc_152EC37:         Set var_418 = Nothing 
  loc_152EC3B:       End If
  loc_152EC42:       var_AC = (var_AC + var_A4)
  loc_152EC4C:       var_B0 = (var_B0 + var_A0)
  loc_152EC54:       var_A0 = 0
  loc_152EC5C:       var_A4 = 0
  loc_152EC5F:     End If
  loc_152EC79:     var_1AC = var_8C.Fields.Item("Country")
  loc_152EC81:     var_108 = var_1AC.Value
  loc_152EC8A:     var_A8 = CStr(var_108)
  loc_152EC97:     GoTo loc_152E4C0
  loc_152EC9A:     ' Referenced from: 152EB1E
  loc_152EC9A:   End If
  loc_152EC9D:   var_C4 = var_A4
  loc_152ECA5:   Proc_6_39_E7C810(var_108, var_C4, var_A4, var_A0, var_B0)
  loc_152ECAD:   var_D4 = 0
  loc_152ECBA:   var_E4 = var_A0
  loc_152ECC2:   Proc_6_39_E7C810(var_128, var_E4, (var_108 = var_D4), var_AC)
  loc_152ECE5:   If CBool(Not var_108 And (var_128 = 0)) Then
  loc_152ECEB:     Set var_41C = var_B4 
  loc_152ECFA:     var_41C.AddNew var_C4, var_D4
  loc_152ED0F:     var_41C.Collect = "Country"
  loc_152ED1F:     Proc_6_39_E7C810(var_108, var_A4, CVar(var_A8))
  loc_152ED31:     var_41C.Collect = "Guest"
  loc_152ED3C:     var_C4 = var_A0
  loc_152ED44:     Proc_6_39_E7C810(var_108, var_C4, var_108)
  loc_152ED4D:     var_D4 = "Night"
  loc_152ED56:     var_41C.Collect = var_D4
  loc_152ED69:     var_41C.Update var_C4, var_D4
  loc_152ED70:     Set var_41C = Nothing 
  loc_152ED74:   End If
  loc_152ED7B:   var_AC = (var_AC + var_A4)
  loc_152ED85:   var_B0 = (var_B0 + var_A0)
  loc_152ED88:   GoTo loc_152E4AE
  loc_152ED8B: End If
  loc_152ED91: global_84 = "Form-2"
  loc_152ED9B: Call 0.Method_arg_50 (var_3FC, var_B0, var_AC, var_108)
  loc_152EDB8: global_80 = CStr(Ucase(CVar(var_3FC)))
  loc_152EDED: Set var_F8 = var_B4 
  loc_152EDF4: CreateFieldDefFile(var_F8, MemVar_1F920B4 & "\" & global_84 & ".ttx", &HFF)
  loc_152EE1F: var_3FC = MemVar_1F920B4 & "\"
  loc_152EE39: Call 0.Method_arg_1C (var_3FC & global_84 & ".RPT", var_C4, var_F8)
  loc_152EE44: MemVar_1F921E4 = var_F8
  loc_152EE5F: var_C4 = CVar(var_F8) 'Address
  loc_152EE6D: Call 0.Method_arg_64 (var_F8, var_C4, var_D4, var_E4)
  loc_152EE75: Call 0.Method_arg_2C (var_C4, var_A0)
  loc_152EE83: Call 0.Method_arg_150 (var_A0)
  loc_152EE9C: Call 0.Method_arg_90 (var_F8, var_404)
  loc_152EEA4: Call 0.Method_arg_24 (var_88)
  loc_152EEAF: For var_428 =  To var_404: 1 = var_428 'Long
  loc_152EEC7:   Call 0.Method_arg_90 (var_F8, var_88)
  loc_152EECF:   Call 0.Method_arg_20 (var_1AC)
  loc_152EED7:   Call 0.Method_arg_30 (var_3FC)
  loc_152EEED:   var_438 = Ucase(CVar(var_3FC)) 'Variant
  loc_152EF06:   If (var_438 = "FROMDATE") Then
  loc_152EF4F:     Call 0.Method_arg_90 (var_1AC, var_88, var_250)
  loc_152EF57:     Call 0.Method_arg_20 (1 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(0)))
  loc_152EF5F:     Call 0.Method_arg_38 ("'")
  loc_152EF7C:   Else
  loc_152EF87:     If (var_438 = "TODATE") Then
  loc_152EFA2:       Set var_F8 = Me.FGrid
  loc_152EFD0:       Call 0.Method_arg_90 (var_1AC, var_88, var_250)
  loc_152EFD8:       Call 0.Method_arg_20 (1 & CStr(var_F8.TextMatrix)) & "'", CVar(CLng(1)))
  loc_152EFE0:       Call 0.Method_arg_38 ("'")
  loc_152EFFD:     Else
  loc_152F008:       If (var_438 = "TITLE") Then
  loc_152F02E:         Call 0.Method_arg_90 (var_F8, var_88)
  loc_152F036:         Call 0.Method_arg_20 (var_1AC)
  loc_152F03E:         Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_152F054:       Else
  loc_152F05F:         If (var_438 = "PRINTDATE") Then
  loc_152F08E:           Call 0.Method_arg_90 (var_F8, var_88)
  loc_152F096:           Call 0.Method_arg_20 (var_1AC)
  loc_152F09E:           Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F920EC) & "'"))
  loc_152F0B4:         End If
  loc_152F0B4:       End If
  loc_152F0B4:     End If
  loc_152F0B4:   End If
  loc_152F0B7: Next var_428 'Long
  loc_152F0C1: Set var_1AC = Nothing
  loc_152F0DA: Set var_F8 = MemVar_1F921E4 
  loc_152F0E6: Proc_6_99_1483714(var_F8, 0, global_80)
  loc_152F0F1: MemVar_1F921E4 = var_F8
  loc_152F101: global_88 = 0
  loc_152F109: Set var_8C = Nothing
  loc_152F10C: Exit Sub
  loc_152F10D: ' Referenced from: 152E1FC
  loc_152F10D: Proc_6_60_E62BC4(global_88, &HFF)
  loc_152F117: global_88 = 0
  loc_152F11A: Exit Sub
End Sub

Public Sub Proc_66_69_15FEB68
  'Data Table: 540784
  Dim var_15C As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  Dim var_214 As String
  Dim var_288 As Variant
  Dim var_298 As Variant
  Dim var_2D8 As Variant
  Dim var_380 As String
  Dim unk_5407B4 As Connection15
  Dim var_B0 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_D4 As Long
  Dim var_B8 As Recordset15
  Dim var_D8 As Long
  Dim var_C8 As Long
  Dim var_CC As Long
  Dim var_C4 As Long
  Dim var_A0 As Long
  Dim var_8C As Long
  Dim var_88 As Long
  Dim var_F8 As Variant
  Dim var_200 As Variant
  Dim var_118 As Variant
  Dim var_14C As Variant
  Dim var_AC As Double
  loc_15FD768: On Error Goto loc_15FEB59
  loc_15FD76B: var_15C = " WHERE ChkInDt Between "
  loc_15FD79C: Proc_6_7_F25D88(var_14C, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_15FD7AD: var_18C = CVar(CLng(0)) & var_14C & " And " 
  loc_15FD7DD: Proc_6_7_F25D88(var_200, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_15FD7F0: global_60 = CStr(CVar(CLng(1)) & var_200)
  loc_15FD82D: Set var_11C = Me.FGrid
  loc_15FD833: var_12C = var_11C.TextMatrix)
  loc_15FD844: Proc_6_7_F25D88(var_14C, CVar(CStr(var_12C)), 1, CVar(CLng(0)))
  loc_15FD84C: var_16C = " WHERE (ChkInDt Between " & var_14C 
  loc_15FD855: var_18C = var_16C & " And " 
  loc_15FD885: Proc_6_7_F25D88(var_200, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_15FD8C6: Proc_6_7_F25D88(var_2A8, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_15FD907: Proc_6_7_F25D88(var_34C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_15FD96A: var_214 = "Select RO.DocId,(Adult+Children) As Tourist,ChkInDt As CheckIn,ChkOutDt as CheckOut,GF.Name,GF.StateName,GF.Type From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet " & CStr(var_18C & var_200 & " Or ChkOutDt Between " & var_2A8 & " And " & var_34C & " Or ChkOutDt Is Null)")
  loc_15FD971: var_380 = CStr(CVar(CLng(1)) & var_200) & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' And IsNull(GF.StateName,'') <>'' Order By GF.StateName,RO.DOCID,SNO"
  loc_15FD97A: unk_5407B4.Execute var_380, var_12C, -1
  loc_15FD985: Set var_B0 = var_11C
  loc_15FD9A9: If (var_B0.RecordCount <= 0) Then
  loc_15FD9B2:   Call 0.Method_arg_50 (CStr(CVar(CLng(1)) & var_200), var_11C)
  loc_15FD9C0:   var_13C = CVar(CStr(CVar(CLng(1)) & var_200)) 'String
  loc_15FD9CD:   var_12C = "** No Records Found to Print **"
  loc_15FD9D3:   MsgBox(var_12C, &H40, var_13C, var_14C, var_16C)
  loc_15FD9E8:   global_88 = 0
  loc_15FD9EB:   Exit Sub
  loc_15FD9EC: End If
  loc_15FDA03: var_214 = "Select Sum(Adult+Children) AS Indian From RoomOccDet RO Inner Join GuestProf GF ON RO.GuestProf=GF.Code " & global_60
  loc_15FDA13: unk_5407B4.Execute CStr(CVar(CLng(1)) & var_200) & " And IsNull(GF.StateName,'') <>'' And GF.Type<>'Foreign' AND SNO=1", var_12C, -1
  loc_15FDA1E: Set var_B4 = var_11C
  loc_15FDA42: If (var_B4.RecordCount > 0) Then
  loc_15FDA54:   var_11C = var_B4.Fields
  loc_15FDA64:   var_12C = CVar(var_11C.Item("Indian")) 'Address
  loc_15FDA6B:   Proc_6_39_E7C810(var_13C, var_12C, var_11C)
  loc_15FDA75:   var_D4 = CLng(var_13C)
  loc_15FDA85: Else
  loc_15FDA8A:   var_D4 = 0
  loc_15FDA8D: End If
  loc_15FDAA4: var_214 = "Select Sum(Adult+Children) AS Foreigner From RoomOccDet RO Inner Join GuestProf GF ON RO.GuestProf=GF.Code " & global_60
  loc_15FDAB4: unk_5407B4.Execute CStr(CVar(CLng(1)) & var_200) & " And IsNull(GF.StateName,'') <>'' And GF.Type='Foreign' AND SNO=1", var_12C, -1
  loc_15FDABF: Set var_B8 = var_11C
  loc_15FDAE3: If (var_B8.RecordCount > 0) Then
  loc_15FDAF5:   var_11C = var_B8.Fields
  loc_15FDB0C:   Proc_6_39_E7C810(var_13C, CVar(var_11C.Item("Foreigner")), var_11C, var_D4)
  loc_15FDB16:   var_D8 = CLng(var_13C)
  loc_15FDB26: Else
  loc_15FDB2B:   var_D8 = 0
  loc_15FDB2E: End If
  loc_15FDB31: var_BC = "-------------------------------------------------------------------------------------------"
  loc_15FDB36: Close 1
  loc_15FDB3F: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_15FDB48: var_C8 = 0
  loc_15FDB50: var_CC = 0
  loc_15FDB58: var_C4 = 0
  loc_15FDB60: var_A0 = 0
  loc_15FDB66: var_C0 = vbNullString
  loc_15FDB6E: var_8C = 1
  loc_15FDB76: var_88 = 0
  loc_15FDB79: ' Referenced from: 15FE893
  loc_15FDBA0: Print 1, Proc_6_128_10272A8("FORM 5 ", "B", &H50, var_88, var_8C, var_A0, var_C4, var_CC)
  loc_15FDBD8: Print 1, Proc_6_128_10272A8("GOVT. OF INDIA", "B", &H50, var_C8, var_D8)
  loc_15FDC10: Print 1, Proc_6_128_10272A8("MINISTRY OF TOURISM", "B", &H50, var_D8)
  loc_15FDC26: Print 1, vbNullString
  loc_15FDC53: Print 1, Proc_6_128_10272A8("STATISTICS OF TOURISTs", "B", &H50, var_D4)
  loc_15FDC69: Print 1, vbNullString
  loc_15FDC72: var_E8 = CVar(CLng(0)) 'Long
  loc_15FDC8A: var_12C = Me.FGrid.TextMatrix)
  loc_15FDCB1: var_13C = Me.FGrid.TextMatrix)
  loc_15FDCDF: Print 1, "FROM : " & CStr(var_12C) & " TO : " & CStr(var_13C)
  loc_15FDD05: Print 1, vbNullString
  loc_15FDD2A: Print 1, "NAME OF THE HOTEL : " & Proc_6_45_EAD428(MemVar_1F92130, &H32, var_13C, 1, CVar(CLng(1)), var_12C)
  loc_15FDD94: var_16C = (Space(&H14) + Trim(CVar(Proc_6_38_E68A98(MemVar_1F92134, 1, MemVar_1F92134))))
  loc_15FDD9D: var_18C = (var_16C + ", ")
  loc_15FDDA4: var_200 = (var_18C + Trim(CVar(Proc_6_38_E68A98(MemVar_1F92138, global_88))))
  loc_15FDDAD: var_210 = (var_200 + ", ")
  loc_15FDDB4: var_298 = (var_18C & var_200 + Trim(CVar(Proc_6_38_E68A98(MemVar_1F9213C, var_18C))))
  loc_15FDDBA: Print 1, CVar(CStr(Me.FGrid.TextMatrix)))
  loc_15FDDE0: Print 1, vbNullString
  loc_15FDDEB: Print 1, var_BC
  loc_15FDE20: var_13C = ("STATE NAME" + Space(&H16))
  loc_15FDE29: var_14C = (CVar(Proc_6_38_E68A98(MemVar_1F92134, 1, MemVar_1F92134)) + "PERSONS")
  loc_15FDE30: var_18C = (Trim(CVar(Proc_6_38_E68A98(MemVar_1F92134, 1, MemVar_1F92134))) + Space(4))
  loc_15FDE39: var_1E0 = (var_18C + "DAYS SPENT")
  loc_15FDE40: var_200 = (CVar(Proc_6_38_E68A98(MemVar_1F92138, global_88)) + Space(4))
  loc_15FDE44: var_118 = "<----- NO. OF TOURISTS ---->"
  loc_15FDE49: var_210 = (var_200 + ", ")
  loc_15FDE4F: Print 1, var_18C & var_200
  loc_15FDE99: var_13C = (Space(&H38) + "INDIAN")
  loc_15FDEA0: var_16C = (CVar(Proc_6_38_E68A98(MemVar_1F92134, 1, MemVar_1F92134)) + Space(4))
  loc_15FDEA9: var_18C = (Space(4) + "FOREIGNER")
  loc_15FDEB0: var_1F0 = (var_18C + Space(5))
  loc_15FDEB9: var_200 = (Space(4) + "TOTAL")
  loc_15FDEBF: Print 1, var_200
  loc_15FDEDD: Print 1, var_BC
  loc_15FDEFB: Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(MemVar_1F92134, 1, MemVar_1F92134)), var_D4)
  loc_15FDF2D: Proc_6_39_E7C810(Space(4), var_D8)
  loc_15FDF5B: var_298 = CVar((var_D4 + var_D8)) 'Long
  loc_15FDF62: Proc_6_39_E7C810(var_2A8, CVar(CStr(Me.FGrid.TextMatrix))))
  loc_15FDF85: var_16C = (Space(&H33) + CVar(Proc_6_52_EAD4F4(CStr(CVar(Proc_6_38_E68A98(MemVar_1F92134, 1, MemVar_1F92134))), &HA)))
  loc_15FDF8C: var_1E0 = (Space(4) + Space(4))
  loc_15FDF96: var_210 = (Space(5) + CVar(Proc_6_52_EAD4F4(CStr(Space(4)), &HA)))
  loc_15FDF9D: var_288 = (Space(4) & CVar(Proc_6_52_EAD4F4(CStr(Space(4)), &HA)) + Space(2))
  loc_15FDFA7: var_2D8 = (Trim(CVar(Proc_6_38_E68A98(MemVar_1F9213C, Space(4)))) + CVar(Proc_6_52_EAD4F4(CStr(var_2A8), 8)))
  loc_15FDFAD: Print 1, Space(4) & CVar(Proc_6_52_EAD4F4(CStr(Space(4)), &HA)) & " Or ChkOutDt Between " & var_2A8 & " And "
  loc_15FDFEC: var_88 = (var_88 + &H10)
  loc_15FE01A: var_D0 = CStr(var_B0.Fields.Item("StateName").Value)
  loc_15FE027: ' Referenced from: 15FE9D1
  loc_15FE036: If Not(var_B0.EOF) Then
  loc_15FE039:   ' Referenced from: 15FE896
  loc_15FE076:   If (CVar(var_D0) = var_B0.Fields.Item("StateName").Value) Then
  loc_15FE09B:     var_13C = var_B0.Fields.Item("CheckIn").Value
  loc_15FE0A6:     var_F8 = CVar(CLng(0)) 'Long
  loc_15FE0E8:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15FE0EE:       var_E8 = CVar(CLng(0)) 'Long
  loc_15FE0F3:       var_108 = 1
  loc_15FE116:       var_AC = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_15FE125:     Else
  loc_15FE147:       var_13C = var_B0.Fields.Item("CheckIn").Value
  loc_15FE152:       var_F8 = CVar(CLng(1)) 'Long
  loc_15FE194:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15FE19A:         var_E8 = CVar(CLng(1)) 'Long
  loc_15FE19F:         var_108 = 1
  loc_15FE1C2:         var_AC = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_15FE1D1:       Else
  loc_15FE1FD:         var_AC = CDate(var_B0.Fields.Item("CheckIn").Value)
  loc_15FE20A:       End If
  loc_15FE20A:     End If
  loc_15FE246:     If CBool(var_B0.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_15FE26B:       var_13C = var_B0.Fields.Item("CheckOut").Value
  loc_15FE276:       var_F8 = CVar(CLng(1)) 'Long
  loc_15FE2B8:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_15FE2BE:         var_E8 = CVar(CLng(1)) 'Long
  loc_15FE2C3:         var_108 = 1
  loc_15FE344:         var_1E0 = (CVar(var_C8) + (DateDiff("D", var_AC, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_B0.Fields.Item("Tourist").Value))
  loc_15FE34A:         var_C8 = CLng(Space(5))
  loc_15FE369:       Else
  loc_15FE3E1:         var_18C = (CVar(var_C8) + (DateDiff("D", var_AC, CVar(var_B0.Fields.Item("CheckOut")), 1, 1) * var_B0.Fields.Item("Tourist").Value))
  loc_15FE3E7:         var_C8 = CLng((DateDiff("D", var_AC, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_B0.Fields.Item("Tourist").Value))
  loc_15FE3FE:       End If
  loc_15FE401:     Else
  loc_15FE404:       var_E8 = CVar(CLng(1)) 'Long
  loc_15FE409:       var_108 = 1
  loc_15FE43E:       If (MemVar_1F920EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_15FE49D:         var_18C = (CVar(var_C8) + (DateDiff("D", var_AC, CDate(MemVar_1F920EC), 1, 1) * var_B0.Fields.Item("Tourist").Value))
  loc_15FE4A3:         var_C8 = CLng((DateDiff("D", var_AC, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_B0.Fields.Item("Tourist").Value))
  loc_15FE4BB:       Else
  loc_15FE4BE:         var_E8 = CVar(CLng(1)) 'Long
  loc_15FE4C3:         var_108 = 1
  loc_15FE50E:         var_14C = DateDiff("D", var_AC, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1)
  loc_15FE544:         var_1E0 = (CVar(var_C8) + (var_14C * var_B0.Fields.Item("Tourist").Value))
  loc_15FE54A:         var_C8 = CLng(Space(5))
  loc_15FE566:       End If
  loc_15FE566:     End If
  loc_15FE588:     var_13C = var_B0.Fields.Item("CheckIn").Value
  loc_15FE593:     var_F8 = CVar(CLng(0)) 'Long
  loc_15FE598:     var_118 = 1
  loc_15FE5BB:     var_17C = CDate(CDate(CStr(Me.FGrid.TextMatrix))))
  loc_15FE5E6:     var_18C = var_B0.Fields.Item("CheckIn").Value
  loc_15FE609:     var_16C = Me.FGrid.TextMatrix)
  loc_15FE649:     If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(var_16C))))) Then
  loc_15FE67D:       var_13C = (CVar(var_CC) + var_B0.Fields.Item("Tourist").Value)
  loc_15FE683:       var_CC = CLng(var_13C)
  loc_15FE694:     End If
  loc_15FE697:     var_B0.MoveNext
  loc_15FE6AD:     If (var_B0.EOF = &HFF) Then
  loc_15FE6B0:       GoTo loc_15FE899
  loc_15FE6B3:     End If
  loc_15FE6D5:     var_12C = var_B0.Fields.Item("StateName").Value
  loc_15FE6E0:     var_F8 = CVar(var_D0) 'String
  loc_15FE6F0:     If CBool(var_12C <> var_F8) Then
  loc_15FE6FA:       var_A0 = (var_A0 + var_C8)
  loc_15FE708:       Proc_6_39_E7C810(var_12C, var_CC, var_A0, var_CC, var_18C, (var_118 >= var_17C), var_F8)
  loc_15FE71D:       var_108 = var_C8
  loc_15FE725:       Proc_6_39_E7C810(var_14C, var_108, (var_12C = 0), var_13C, var_C8)
  loc_15FE748:       If CBool(Not var_12C And (var_14C = 0)) Then
  loc_15FE773:         Proc_6_39_E7C810(var_16C, var_CC, var_CC)
  loc_15FE7A5:         Proc_6_39_E7C810(Space(1) And (var_14C = 0) & CVar(Proc_6_52_EAD4F4(CStr(Space(4)), &HA)), var_C8)
  loc_15FE7C8:         var_14C = (CVar(Proc_6_45_EAD428(var_D0, &H1E, var_108)) + Space(1))
  loc_15FE7D2:         var_1E0 = (var_14C + CVar(Proc_6_52_EAD4F4(CStr(var_16C), 8)))
  loc_15FE7D9:         var_200 = (Not Space(1) And (var_14C = 0) + Space(6))
  loc_15FE7E3:         var_288 = (CVar(Proc_6_52_EAD4F4(CStr(Space(4)), &HA)) + CVar(Proc_6_52_EAD4F4(CStr(Space(1) And (var_14C = 0) & CVar(Proc_6_52_EAD4F4(CStr(Space(4)), &HA))), 8)))
  loc_15FE7E9:         Print 1, Trim(CVar(Proc_6_38_E68A98(MemVar_1F9213C, CVar(Proc_6_52_EAD4F4(CStr(var_16C), 8)))))
  loc_15FE81E:         var_88 = (var_88 + 1)
  loc_15FE821:       End If
  loc_15FE828:       var_C4 = (var_C4 + var_CC)
  loc_15FE830:       var_CC = 0
  loc_15FE838:       var_C8 = 0
  loc_15FE83B:     End If
  loc_15FE85D:     var_12C = var_B0.Fields.Item("StateName").Value
  loc_15FE866:     var_D0 = CStr(var_12C)
  loc_15FE87C:     If (var_88 > &H3D) Then
  loc_15FE884:       var_88 = 0
  loc_15FE890:       var_8C = (var_8C + 1)
  loc_15FE893:       GoTo loc_15FDB79
  loc_15FE896:     End If
  loc_15FE896:     GoTo loc_15FE039
  loc_15FE899:     ' Referenced from: 15FE6B0
  loc_15FE899:   End If
  loc_15FE8A0:   var_A0 = (var_A0 + var_C8)
  loc_15FE8AE:   Proc_6_39_E7C810(var_12C, var_CC, var_A0, var_8C, var_88, var_C8)
  loc_15FE8CB:   Proc_6_39_E7C810(var_14C, var_C8, (var_12C = 0), var_CC)
  loc_15FE8EE:   If CBool(Not var_C4 And (var_14C = 0)) Then
  loc_15FE919:     Proc_6_39_E7C810(var_16C, var_CC)
  loc_15FE94B:     Proc_6_39_E7C810(var_C4 And (var_14C = 0) & CVar(Proc_6_52_EAD4F4(CStr(Space(4)), &HA)), var_C8)
  loc_15FE96E:     var_14C = (CVar(Proc_6_45_EAD428(var_D0, &H1E, var_88)) + Space(1))
  loc_15FE978:     var_1E0 = (var_14C + CVar(Proc_6_52_EAD4F4(CStr(var_16C), 8)))
  loc_15FE97F:     var_200 = (Not var_C4 And (var_14C = 0) + Space(6))
  loc_15FE989:     var_288 = (CVar(Proc_6_52_EAD4F4(CStr(Space(4)), &HA)) + CVar(Proc_6_52_EAD4F4(CStr(var_C4 And (var_14C = 0) & CVar(Proc_6_52_EAD4F4(CStr(Space(4)), &HA))), 8)))
  loc_15FE98F:     Print 1, Trim(CVar(Proc_6_38_E68A98(MemVar_1F9213C, CVar(Proc_6_52_EAD4F4(CStr(var_16C), 8)))))
  loc_15FE9C4:     var_88 = (var_88 + 1)
  loc_15FE9C7:   End If
  loc_15FE9CE:   var_C4 = (var_C4 + var_CC)
  loc_15FE9D1:   GoTo loc_15FE027
  loc_15FE9D4: End If
  loc_15FE9D9: Print 1, var_BC
  loc_15FE9E8: var_88 = (var_88 + 1)
  loc_15FEA39: var_13C = ("TOTAL ==> " + Space(&H13))
  loc_15FEA43: var_16C = (CVar(Proc_6_45_EAD428(var_D0, &H1E, var_88)) + CVar(Proc_6_52_EAD4F4(CStr(var_C4), &HA, var_88, var_C4)))
  loc_15FEA4A: var_1E0 = (var_16C + Space(4))
  loc_15FEA54: var_200 = (Not var_C4 And (CVar(Proc_6_52_EAD4F4(CStr(var_C4), &HA, var_88, var_C4)) = 0) + CVar(Proc_6_52_EAD4F4(CStr(var_A0), &HA, var_88)))
  loc_15FEA5A: Print 1, CVar(Proc_6_52_EAD4F4(CStr(Space(4)), &HA))
  loc_15FEA83: Print 1, vbNullString
  loc_15FEA92: var_88 = (var_88 + 1)
  loc_15FEA9A: Print 1, var_BC
  loc_15FEAA9: var_88 = (var_88 + 1)
  loc_15FEAAC: ' Referenced from: 15FEACF
  loc_15FEAB5: If (var_88 <= &H41) Then
  loc_15FEABD:   Print 1, vbNullString
  loc_15FEACC:   var_88 = (var_88 + 1)
  loc_15FEACF:   GoTo loc_15FEAAC
  loc_15FEAD2: End If
  loc_15FEAD4: Close 1
  loc_15FEADD: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_15FEAED: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_15FEAF8: Close 1
  loc_15FEB02: If (MemVar_1F923B8 = "Y") Then
  loc_15FEB1E:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_15FEB28: Else
  loc_15FEB41:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_15FEB48: End If
  loc_15FEB4D: global_88 = 0
  loc_15FEB55: Set var_B0 = Nothing
  loc_15FEB58: Exit Sub
  loc_15FEB59: ' Referenced from: 15FD768
  loc_15FEB59: Proc_6_60_E62BC4(global_88, var_88, var_88)
  loc_15FEB63: global_88 = 0
  loc_15FEB66: Exit Sub
End Sub

Public Sub Proc_66_70_174143C
  'Data Table: 540784
  Dim var_150 As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Long
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_254 As Long
  Dim var_268 As Variant
  Dim var_2A8 As Variant
  Dim var_3F0 As Variant
  Dim var_414 As String
  Dim var_418 As String
  Dim unk_5407B4 As Connection15
  Dim var_9C As Recordset15
  Dim var_C4 As Long
  Dim var_C0 As Long
  Dim var_A0 As Recordset15
  Dim var_EC As Variant
  Dim var_94 As Double
  Dim var_140 As Variant
  Dim var_298 As Variant
  Dim var_CC As Long
  Dim var_C8 As Long
  Dim var_A4 As Recordset15
  Dim var_B4 As Long
  Dim var_B8 As Long
  Dim var_B0 As Long
  Dim var_88 As Long
  Dim var_430 As Recordset15
  Dim var_434 As Recordset15
  loc_173F7AC: On Error Goto loc_174142B
  loc_173F7AF: var_150 = " (ChkInDt Between "
  loc_173F7C9: Set var_110 = Me.FGrid
  loc_173F7CF: var_120 = var_110.TextMatrix)
  loc_173F7E0: Proc_6_7_F25D88(var_140, CVar(CStr(var_120)), 1)
  loc_173F7E8: var_160 = CVar(CLng(0)) & var_140 
  loc_173F7F1: var_180 = var_160 & " And " 
  loc_173F821: Proc_6_7_F25D88(var_1F4, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_173F862: Proc_6_7_F25D88(var_298, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_173F8A3: Proc_6_7_F25D88(var_33C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_173F8E4: Proc_6_7_F25D88(var_3E0, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_173F8EC: var_3F0 = CVar(CLng(1)) & var_1F4 & " Or (ChkInDt<=" & var_298 & " And ChkOutDt Is Null) Or ChkOutDt Between " & var_33C & " And " & var_3E0 
  loc_173F900: global_60 = CStr(var_3F0 & ")")
  loc_173F960: var_414 = "Select DocId,(Adult+Children) As Indian,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_173F970: unk_5407B4.Execute CStr(var_3F0 & ")") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' Order By DocId,SNo", var_120, -1
  loc_173F97B: Set var_A0 = var_110
  loc_173F9A2: var_414 = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut,Country.Name As Country From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Left Join City On City.CityCode=GF.City Left Join Country On City.Country=Country.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_173F9A9: var_418 = CStr(var_3F0 & ")") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By Country.Name,DocId,SNo"
  loc_173F9B2: unk_5407B4.Execute var_418, var_120, -1
  loc_173F9BD: Set var_A4 = var_110
  loc_173F9E4: var_414 = "Select RO.DocId,(Adult+Children) As Tourist,ChkInDt As CheckIn,ChkOutDt as CheckOut,GF.Name,GF.StateName,GF.Type From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_173F9EB: var_418 = CStr(var_3F0 & ")") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' And IsNull(GF.StateName,'') <>'' Order By GF.StateName,RO.DOCID,SNO"
  loc_173F9F4: unk_5407B4.Execute var_418, var_120, -1
  loc_173F9FF: Set var_9C = var_110
  loc_173FA15: var_41C = var_9C.RecordCount
  loc_173FA23: If (var_41C <= 0) Then
  loc_173FA2C:   Call 0.Method_arg_50 (CStr(var_3F0 & ")"), var_110, var_110)
  loc_173FA4D:   MsgBox("** No Records Found to Print **", &H40, CVar(CStr(var_3F0 & ")")), var_140, var_160)
  loc_173FA62:   global_88 = 0
  loc_173FA65:   Exit Sub
  loc_173FA66: End If
  loc_173FA6B: var_C4 = 0
  loc_173FA73: var_C0 = 0
  loc_173FA76: ' Referenced from: 1740092
  loc_173FA85: If Not(var_A0.EOF) Then
  loc_173FAAA:   var_130 = var_A0.Fields.Item("CheckIn").Value
  loc_173FAB5:   var_EC = CVar(CLng(0)) 'Long
  loc_173FAF7:   If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_173FAFD:     var_DC = CVar(CLng(0)) 'Long
  loc_173FB02:     var_FC = 1
  loc_173FB25:     var_94 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_173FB34:   Else
  loc_173FB56:     var_130 = var_A0.Fields.Item("CheckIn").Value
  loc_173FB61:     var_EC = CVar(CLng(1)) 'Long
  loc_173FBA3:     If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_173FBA9:       var_DC = CVar(CLng(1)) 'Long
  loc_173FBAE:       var_FC = 1
  loc_173FBD1:       var_94 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_173FBE0:     Else
  loc_173FC0C:       var_94 = CDate(var_A0.Fields.Item("CheckIn").Value)
  loc_173FC19:     End If
  loc_173FC19:   End If
  loc_173FC55:   If CBool(var_A0.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_173FC7A:     var_130 = var_A0.Fields.Item("CheckOut").Value
  loc_173FC85:     var_EC = CVar(CLng(1)) 'Long
  loc_173FCC7:     If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_173FCCD:       var_DC = CVar(CLng(1)) 'Long
  loc_173FCD2:       var_FC = 1
  loc_173FD1B:       var_190 = CVar(CLng(1)) 'Long
  loc_173FD20:       var_1B0 = 1
  loc_173FD59:       var_234 = CVar(CLng(1)) 'Long
  loc_173FD5E:       var_254 = 1
  loc_173FDA7:       var_224 = IIf((CDate(CDate(CStr(Me.FGrid.TextMatrix)))) < var_A0.Fields.Item("CheckOut").Value), DateAdd("D", CDbl(1), CDate(CDate(CStr(Me.FGrid.TextMatrix))))), CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_173FE04:       var_2A8 = (CVar(var_C4) + (DateDiff("D", var_94, var_224, 1, 1) * var_A0.Fields.Item("Indian").Value))
  loc_173FE0A:       var_C4 = CLng(CVar(CLng(1)) & (CDate(CDate(CStr(Me.FGrid.TextMatrix)))) < var_A0.Fields.Item("CheckOut").Value) & " Or (ChkInDt<=" & (DateDiff("D", var_94, var_224, 1, 1) * var_A0.Fields.Item("Indian").Value))
  loc_173FE45:     Else
  loc_173FEBD:       var_180 = (CVar(var_C4) + (DateDiff("D", var_94, CVar(var_A0.Fields.Item("CheckOut")), 1, 1) * var_A0.Fields.Item("Indian").Value))
  loc_173FEC3:       var_C4 = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_173FEDA:     End If
  loc_173FEDD:   Else
  loc_173FEE0:     var_DC = CVar(CLng(1)) 'Long
  loc_173FEE5:     var_FC = 1
  loc_173FF1A:     If (MemVar_1F920EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_173FF79:       var_180 = (CVar(var_C4) + (DateDiff("D", var_94, CDate(MemVar_1F920EC), 1, 1) * var_A0.Fields.Item("Indian").Value))
  loc_173FF7F:       var_C4 = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_173FF97:     Else
  loc_173FF9A:       var_DC = CVar(CLng(1)) 'Long
  loc_173FF9F:       var_FC = 1
  loc_1740020:       var_1D4 = (CVar(var_C4) + (DateDiff("D", var_94, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A0.Fields.Item("Indian").Value))
  loc_1740026:       var_C4 = CLng(DateAdd("D", CDbl(1), CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_1740042:     End If
  loc_1740042:   End If
  loc_1740073:   var_130 = (CVar(var_C0) + var_A0.Fields.Item("Indian").Value)
  loc_1740079:   var_C0 = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_174008D:   var_A0.MoveNext
  loc_1740092:   GoTo loc_173FA76
  loc_1740095: End If
  loc_174009A: var_CC = 0
  loc_17400A2: var_C8 = 0
  loc_17400A5: ' Referenced from: 17406C1
  loc_17400B4: If Not(var_A4.EOF) Then
  loc_17400D9:   var_130 = var_A4.Fields.Item("CheckIn").Value
  loc_17400E4:   var_EC = CVar(CLng(0)) 'Long
  loc_1740126:   If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_174012C:     var_DC = CVar(CLng(0)) 'Long
  loc_1740131:     var_FC = 1
  loc_1740154:     var_94 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1740163:   Else
  loc_1740185:     var_130 = var_A4.Fields.Item("CheckIn").Value
  loc_1740190:     var_EC = CVar(CLng(1)) 'Long
  loc_17401D2:     If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_17401D8:       var_DC = CVar(CLng(1)) 'Long
  loc_17401DD:       var_FC = 1
  loc_1740200:       var_94 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_174020F:     Else
  loc_174023B:       var_94 = CDate(var_A4.Fields.Item("CheckIn").Value)
  loc_1740248:     End If
  loc_1740248:   End If
  loc_1740284:   If CBool(var_A4.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_17402A9:     var_130 = var_A4.Fields.Item("CheckOut").Value
  loc_17402B4:     var_EC = CVar(CLng(1)) 'Long
  loc_17402F6:     If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_17402FC:       var_DC = CVar(CLng(1)) 'Long
  loc_1740301:       var_FC = 1
  loc_174034A:       var_190 = CVar(CLng(1)) 'Long
  loc_174034F:       var_1B0 = 1
  loc_1740388:       var_234 = CVar(CLng(1)) 'Long
  loc_174038D:       var_254 = 1
  loc_17403D6:       var_224 = IIf((CDate(CDate(CStr(Me.FGrid.TextMatrix)))) < var_A4.Fields.Item("CheckOut").Value), DateAdd("D", CDbl(1), CDate(CDate(CStr(Me.FGrid.TextMatrix))))), CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_1740433:       var_2A8 = (CVar(var_CC) + (DateDiff("D", var_94, var_224, 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1740439:       var_CC = CLng(CVar(CLng(1)) & (CDate(CDate(CStr(Me.FGrid.TextMatrix)))) < var_A4.Fields.Item("CheckOut").Value) & " Or (ChkInDt<=" & (DateDiff("D", var_94, var_224, 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1740474:     Else
  loc_17404EC:       var_180 = (CVar(var_CC) + (DateDiff("D", var_94, CVar(var_A4.Fields.Item("CheckOut")), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_17404F2:       var_CC = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_1740509:     End If
  loc_174050C:   Else
  loc_174050F:     var_DC = CVar(CLng(1)) 'Long
  loc_1740514:     var_FC = 1
  loc_1740549:     If (MemVar_1F920EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_17405A8:       var_180 = (CVar(var_CC) + (DateDiff("D", var_94, CDate(MemVar_1F920EC), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_17405AE:       var_CC = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_17405C6:     Else
  loc_17405C9:       var_DC = CVar(CLng(1)) 'Long
  loc_17405CE:       var_FC = 1
  loc_174064F:       var_1D4 = (CVar(var_CC) + (DateDiff("D", var_94, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_A4.Fields.Item("Foreigner").Value))
  loc_1740655:       var_CC = CLng(DateAdd("D", CDbl(1), CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_1740671:     End If
  loc_1740671:   End If
  loc_174068A:   var_110 = var_A4.Fields
  loc_17406A2:   var_130 = (CVar(var_C8) + var_110.Item("Foreigner").Value)
  loc_17406A8:   var_C8 = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_17406BC:   var_A4.MoveNext
  loc_17406C1:   GoTo loc_17400A5
  loc_17406C4: End If
  loc_17406D1: Call Proc_66_52_EFAE3C(New)
  loc_17406D9: Set var_A8 = var_110
  loc_17406E1: var_B4 = 0
  loc_17406E9: var_B8 = 0
  loc_17406F1: var_B0 = 0
  loc_17406F9: var_88 = 0
  loc_17406FF: var_AC = vbNullString
  loc_174072D: var_BC = CStr(var_9C.Fields.Item("StateName").Value)
  loc_174073A: ' Referenced from: 1740FE8
  loc_1740749: If Not(var_9C.EOF) Then
  loc_174074C:   ' Referenced from: 1740F0D
  loc_1740789:   If (CVar(var_BC) = var_9C.Fields.Item("StateName").Value) Then
  loc_17407AE:     var_130 = var_9C.Fields.Item("CheckIn").Value
  loc_17407B9:     var_EC = CVar(CLng(0)) 'Long
  loc_17407FB:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1740801:       var_DC = CVar(CLng(0)) 'Long
  loc_1740806:       var_FC = 1
  loc_1740829:       var_94 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1740838:     Else
  loc_174085A:       var_130 = var_9C.Fields.Item("CheckIn").Value
  loc_1740865:       var_EC = CVar(CLng(1)) 'Long
  loc_17408A7:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_17408AD:         var_DC = CVar(CLng(1)) 'Long
  loc_17408B2:         var_FC = 1
  loc_17408D5:         var_94 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_17408E4:       Else
  loc_1740910:         var_94 = CDate(var_9C.Fields.Item("CheckIn").Value)
  loc_174091D:       End If
  loc_174091D:     End If
  loc_1740959:     If CBool(var_9C.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_174097E:       var_130 = var_9C.Fields.Item("CheckOut").Value
  loc_1740989:       var_EC = CVar(CLng(1)) 'Long
  loc_17409CB:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_17409D1:         var_DC = CVar(CLng(1)) 'Long
  loc_17409D6:         var_FC = 1
  loc_1740A1F:         var_190 = CVar(CLng(1)) 'Long
  loc_1740A24:         var_1B0 = 1
  loc_1740A5D:         var_234 = CVar(CLng(1)) 'Long
  loc_1740A62:         var_254 = 1
  loc_1740AAB:         var_224 = IIf((CDate(CDate(CStr(Me.FGrid.TextMatrix)))) < var_9C.Fields.Item("CheckOut").Value), DateAdd("D", CDbl(1), CDate(CDate(CStr(Me.FGrid.TextMatrix))))), CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_1740B08:         var_2A8 = (CVar(var_B4) + (DateDiff("D", var_94, var_224, 1, 1) * var_9C.Fields.Item("Tourist").Value))
  loc_1740B0E:         var_B4 = CLng(CVar(CLng(1)) & (CDate(CDate(CStr(Me.FGrid.TextMatrix)))) < var_9C.Fields.Item("CheckOut").Value) & " Or (ChkInDt<=" & (DateDiff("D", var_94, var_224, 1, 1) * var_9C.Fields.Item("Tourist").Value))
  loc_1740B49:       Else
  loc_1740BC1:         var_180 = (CVar(var_B4) + (DateDiff("D", var_94, CVar(var_9C.Fields.Item("CheckOut")), 1, 1) * var_9C.Fields.Item("Tourist").Value))
  loc_1740BC7:         var_B4 = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_1740BDE:       End If
  loc_1740BE1:     Else
  loc_1740BE4:       var_DC = CVar(CLng(1)) 'Long
  loc_1740BE9:       var_FC = 1
  loc_1740C1E:       If (MemVar_1F920EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_1740C7D:         var_180 = (CVar(var_B4) + (DateDiff("D", var_94, CDate(MemVar_1F920EC), 1, 1) * var_9C.Fields.Item("Tourist").Value))
  loc_1740C83:         var_B4 = CLng(CDate(CDate(CStr(Me.FGrid.TextMatrix)))))
  loc_1740C9B:       Else
  loc_1740C9E:         var_DC = CVar(CLng(1)) 'Long
  loc_1740CA3:         var_FC = 1
  loc_1740CD7:         var_414 = CStr(Me.FGrid.TextMatrix))
  loc_1740CEE:         var_140 = DateDiff("D", var_94, CDate(CDate(var_414)), 1, 1)
  loc_1740D10:         var_268 = var_9C.Fields.Item("Tourist")
  loc_1740D24:         var_1D4 = (CVar(var_B4) + (var_140 * var_268.Value))
  loc_1740D2A:         var_B4 = CLng(DateAdd("D", CDbl(1), CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_1740D46:       End If
  loc_1740D46:     End If
  loc_1740D77:     var_130 = (CVar(var_B8) + var_9C.Fields.Item("Tourist").Value)
  loc_1740D7D:     var_B8 = CLng(CDate(CDate(var_414)))
  loc_1740D91:     var_9C.MoveNext
  loc_1740DA7:     If (var_9C.EOF = &HFF) Then
  loc_1740DAA:       GoTo loc_1740F10
  loc_1740DAD:     End If
  loc_1740DCF:     var_120 = var_9C.Fields.Item("StateName").Value
  loc_1740DEA:     If CBool(var_120 <> CVar(var_BC)) Then
  loc_1740DF4:       var_88 = (var_88 + var_B4)
  loc_1740DFA:       var_DC = var_B8
  loc_1740E02:       Proc_6_39_E7C810(var_120, var_DC, var_88, var_B8, var_B4, var_120, var_FC)
  loc_1740E0A:       var_EC = 0
  loc_1740E1F:       Proc_6_39_E7C810(var_140, var_B4, (var_120 = var_EC), var_DC, var_B4)
  loc_1740E42:       If CBool(Not var_120 And (var_140 = 0)) Then
  loc_1740E48:         Set var_430 = var_A8 
  loc_1740E57:         var_430.AddNew var_DC, var_EC
  loc_1740E6C:         var_430.Collect = "State"
  loc_1740E76:         var_120 = CVar(CStr(var_B8)) 'String
  loc_1740E83:         var_430.Collect = "Guest"
  loc_1740E90:         var_120 = CVar(CStr(var_B4)) 'String
  loc_1740E94:         var_DC = "Night"
  loc_1740E9D:         var_430.Collect = var_DC
  loc_1740EB0:         var_430.Update var_DC, CVar(var_BC)
  loc_1740EB7:         Set var_430 = Nothing 
  loc_1740EBB:       End If
  loc_1740EC2:       var_B0 = (var_B0 + var_B8)
  loc_1740ECA:       var_B8 = 0
  loc_1740ED2:       var_B4 = 0
  loc_1740ED5:     End If
  loc_1740EEF:     var_1C4 = var_9C.Fields.Item("StateName")
  loc_1740EF7:     var_120 = var_1C4.Value
  loc_1740F00:     var_BC = CStr(var_120)
  loc_1740F0D:     GoTo loc_174074C
  loc_1740F10:     ' Referenced from: 1740DAA
  loc_1740F10:   End If
  loc_1740F17:   var_88 = (var_88 + var_B4)
  loc_1740F1D:   var_DC = var_B8
  loc_1740F25:   Proc_6_39_E7C810(var_120, var_DC, var_88, var_B4, var_B8, var_B0, var_120)
  loc_1740F2D:   var_EC = 0
  loc_1740F3A:   var_FC = var_B4
  loc_1740F42:   Proc_6_39_E7C810(var_140, var_FC, (var_120 = var_EC), var_120, var_EC)
  loc_1740F65:   If CBool(Not var_FC And (var_140 = 0)) Then
  loc_1740F6B:     Set var_434 = var_A8 
  loc_1740F7A:     var_434.AddNew var_DC, var_EC
  loc_1740F82:     var_EC = CVar(var_BC) 'String
  loc_1740F8F:     var_434.Collect = "State"
  loc_1740F99:     var_120 = CVar(CStr(var_B8)) 'String
  loc_1740FA6:     var_434.Collect = "Guest"
  loc_1740FB3:     var_120 = CVar(CStr(var_B4)) 'String
  loc_1740FB7:     var_DC = "Night"
  loc_1740FC0:     var_434.Collect = var_DC
  loc_1740FD3:     var_434.Update var_DC, var_EC
  loc_1740FDA:     Set var_434 = Nothing 
  loc_1740FDE:   End If
  loc_1740FE5:   var_B0 = (var_B0 + var_B8)
  loc_1740FE8:   GoTo loc_174073A
  loc_1740FEB: End If
  loc_1740FF1: global_84 = "Form-5"
  loc_1740FFB: Call 0.Method_arg_50 (var_414, var_B0, var_120, var_120)
  loc_1741018: global_80 = CStr(Ucase(CVar(var_414)))
  loc_174104D: Set var_110 = var_A8 
  loc_1741054: CreateFieldDefFile(var_110, MemVar_1F920B4 & "\" & global_84 & ".ttx", &HFF, var_EC)
  loc_174107F: var_414 = MemVar_1F920B4 & "\"
  loc_1741099: Call 0.Method_arg_1C (var_414 & global_84 & ".RPT", var_DC, var_110)
  loc_17410A4: MemVar_1F921E4 = var_110
  loc_17410BF: var_DC = CVar(var_110) 'Address
  loc_17410CD: Call 0.Method_arg_64 (var_110, var_DC, var_EC, var_FC)
  loc_17410D5: Call 0.Method_arg_2C (var_DC, var_B4)
  loc_17410E3: Call 0.Method_arg_150 (var_B4)
  loc_17410FC: Call 0.Method_arg_90 (var_110, var_41C)
  loc_1741104: Call 0.Method_arg_24 (var_98)
  loc_174110F: For var_440 =  To var_41C: 1 = var_440 'Long
  loc_1741127:   Call 0.Method_arg_90 (var_110, var_98)
  loc_174112F:   Call 0.Method_arg_20 (var_1C4)
  loc_1741137:   Call 0.Method_arg_30 (var_414)
  loc_174114D:   var_450 = Ucase(CVar(var_414)) 'Variant
  loc_1741166:   If (var_450 = "FROMDATE") Then
  loc_17411AF:     Call 0.Method_arg_90 (var_1C4, var_98, var_268)
  loc_17411B7:     Call 0.Method_arg_20 (1 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(0)))
  loc_17411BF:     Call 0.Method_arg_38 ("'")
  loc_17411DC:   Else
  loc_17411E7:     If (var_450 = "TODATE") Then
  loc_1741202:       Set var_110 = Me.FGrid
  loc_1741230:       Call 0.Method_arg_90 (var_1C4, var_98, var_268)
  loc_1741238:       Call 0.Method_arg_20 (1 & CStr(var_110.TextMatrix)) & "'", CVar(CLng(1)))
  loc_1741240:       Call 0.Method_arg_38 ("'")
  loc_174125D:     Else
  loc_1741268:       If (var_450 = "TITLE") Then
  loc_174128E:         Call 0.Method_arg_90 (var_110, var_98)
  loc_1741296:         Call 0.Method_arg_20 (var_1C4)
  loc_174129E:         Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_17412B4:       Else
  loc_17412BF:         If (var_450 = "PRINTDATE") Then
  loc_17412EE:           Call 0.Method_arg_90 (var_110, var_98)
  loc_17412F6:           Call 0.Method_arg_20 (var_1C4)
  loc_17412FE:           Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F920EC) & "'"))
  loc_1741317:         Else
  loc_1741322:           If (var_450 = "INDIANCHKIN") Then
  loc_174134A:             Call 0.Method_arg_90 (var_110, var_98)
  loc_1741352:             Call 0.Method_arg_20 (var_1C4)
  loc_174135A:             Call 0.Method_arg_38 ("'" & CStr(var_C0) & "'")
  loc_1741372:           Else
  loc_174137D:             If (var_450 = "FOREIGNERCHKIN") Then
  loc_17413A5:               Call 0.Method_arg_90 (var_110, var_98)
  loc_17413AD:               Call 0.Method_arg_20 (var_1C4)
  loc_17413B5:               Call 0.Method_arg_38 ("'" & CStr(var_C8) & "'")
  loc_17413CA:             End If
  loc_17413CA:           End If
  loc_17413CA:         End If
  loc_17413CA:       End If
  loc_17413CA:     End If
  loc_17413CA:   End If
  loc_17413CD: Next var_440 'Long
  loc_17413D7: Set var_1C4 = Nothing
  loc_17413F0: Set var_110 = MemVar_1F921E4 
  loc_17413FC: Proc_6_99_1483714(var_110, 0, global_80)
  loc_1741407: MemVar_1F921E4 = var_110
  loc_1741417: global_88 = 0
  loc_174141F: Set var_A8 = Nothing
  loc_1741427: Set var_9C = Nothing
  loc_174142A: Exit Sub
  loc_174142B: ' Referenced from: 173F7AC
  loc_174142B: Proc_6_60_E62BC4(global_88, &HFF)
  loc_1741435: global_88 = 0
  loc_1741438: Exit Sub
End Sub

Public Sub Proc_66_71_1B913B4
  'Data Table: 540784
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_194 As String
  Dim var_D0 As Double
  Dim var_D8 As Double
  Dim var_1F0 As String
  Dim var_1A8 As Variant
  Dim var_1DC As Variant
  Dim var_1EC As Variant
  Dim unk_5407B4 As Connection15
  Dim var_9A As Integer
  Dim var_208 As Variant
  Dim var_218 As Variant
  Dim var_238 As Variant
  Dim var_17C As Variant
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_268 As Variant
  Dim var_88 As Variant
  Dim var_DA As Integer
  Dim var_A4 As Double
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_B4 As Variant
  Dim var_28C As Variant
  Dim var_29C As Variant
  Dim var_2BC As Variant
  Dim var_228 As Variant
  Dim var_278 As Variant
  Dim var_2AC As Variant
  Dim var_2DC As Variant
  Dim var_2EC As Variant
  Dim var_30C As Variant
  Dim var_31C As Variant
  Dim var_2CC As Variant
  Dim var_2FC As Variant
  Dim var_340 As Variant
  Dim var_350 As Variant
  Dim var_370 As Variant
  Dim var_388 As Variant
  Dim var_398 As Variant
  Dim var_3B8 As Variant
  Dim var_3D0 As Variant
  Dim var_3E0 As Variant
  Dim var_400 As Variant
  Dim var_418 As Variant
  Dim var_428 As Variant
  Dim var_448 As Variant
  Dim var_470 As Variant
  Dim var_490 As Variant
  Dim var_4B8 As Variant
  Dim var_1D8 As Variant
  Dim var_504 As Variant
  Dim var_3A8 As Variant
  Dim var_3F0 As Variant
  Dim var_86 As Variant
  Dim var_538 As Variant
  Dim var_53C As Variant
  Dim var_540 As Variant
  Dim var_544 As Variant
  Dim var_548 As Variant
  Dim var_54C As Variant
  Dim var_550 As Variant
  Dim var_558 As Fields15
  Dim var_360 As Variant
  Dim var_BC As Variant
  Dim var_E4 As Double
  Dim var_59C As Variant
  Dim var_5A0 As Variant
  Dim var_5A4 As Variant
  Dim var_5A8 As Variant
  Dim var_EC As Double
  Dim var_604 As Variant
  Dim var_5F0 As Variant
  Dim var_5F4 As Fields15
  Dim var_608 As Variant
  Dim var_124 As Recordset15
  Dim var_12C As Recordset15
  Dim var_130 As Recordset15
  Dim var_118 As Double
  Dim var_108 As Double
  Dim var_F8 As Double
  Dim var_100 As Double
  Dim var_970 As Variant
  Dim var_438 As Variant
  Dim var_628 As Variant
  Dim var_658 As Variant
  Dim var_678 As Variant
  Dim var_6B8 As Variant
  Dim var_6D8 As Variant
  Dim var_70C As Variant
  Dim var_72C As Variant
  Dim var_81C As Variant
  Dim var_87C As Variant
  Dim var_89C As Variant
  Dim var_8E4 As Variant
  Dim var_904 As Variant
  Dim var_918 As Variant
  Dim var_928 As Variant
  Dim var_948 As Variant
  Dim var_9B0 As Variant
  Dim var_9D0 As Variant
  Dim var_B54 As Variant
  Dim var_BD8 As Variant
  Dim var_BE8 As Variant
  Dim var_82C As Variant
  Dim var_AF0 As Integer
  Dim var_8C4 As Variant
  Dim var_8F4 As Variant
  Dim var_938 As Variant
  Dim var_9F8 As Variant
  Dim var_B84 As Variant
  Dim var_C14 As Variant
  loc_1B8C3A8: On Error Goto loc_1B913A5
  loc_1B8C3AE: var_14C = CVar(CLng(0)) 'Long
  loc_1B8C3B3: var_16C = 1
  loc_1B8C3D6: var_D0 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1B8C3E5: var_14C = CVar(CLng(1)) 'Long
  loc_1B8C3EA: var_16C = 1
  loc_1B8C40D: var_D8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1B8C424: var_16C = 1
  loc_1B8C437: var_190 = Me.FGrid.TextMatrix)
  loc_1B8C442: var_194 = CStr(var_190)
  loc_1B8C465: Set var_1DC = Me.FGrid
  loc_1B8C47A: var_F0 = 1 & CStr(var_1DC.TextMatrix))
  loc_1B8C4A2: Set var_180 = Me.Check1
  loc_1B8C4A8: Call 0.Method_Proc_66_71_1B913B40 (1, var_1DC, var_1F6, CVar(CLng(1)), var_16C & var_194 & " TO ", CVar(CLng(0)), "FROM ")
  loc_1B8C4B0: var_D8 = var_1DC.Value
  loc_1B8C4C6: If (CLng(var_1F6) = 0) Then
  loc_1B8C4E4:   Call Proc_66_44_1281BC4(global_164, 1, CByte(1))
  loc_1B8C4EF:   global_148 = var_194
  loc_1B8C4FF:   If (global_88 = 0) Then
  loc_1B8C502:     Exit Sub
  loc_1B8C503:   End If
  loc_1B8C503: End If
  loc_1B8C50B: var_14C = var_D8
  loc_1B8C513: Proc_6_7_F25D88(var_190, var_14C, " AND RO.ChkOutDate <=", var_194, var_16C)
  loc_1B8C526: global_60 = CStr(var_14C & var_190)
  loc_1B8C540: Set var_180 = Me.Check1
  loc_1B8C546: Call 0.Method_Proc_66_71_1B913B40 (1, var_1DC, var_1F6)
  loc_1B8C54E: var_D0 = var_1DC.Value
  loc_1B8C564: If (CLng(var_1F6) = 0) Then
  loc_1B8C57F:   var_C4 = var_C4 & " and R.Code in ( " & global_148 & ") "
  loc_1B8C5A1:   var_C8 = var_C8 & " and R.Code not in ( " & global_148 & ") "
  loc_1B8C5AB: End If
  loc_1B8C5C1: unk_5407B4.Execute "Update PayCharge set GuestProf=GF.GuestProf from GuestFolio GF Where FolioNoDocid=GF.Docid And ISNULL(PayCharge.FolioNoDocid,'')<>''", var_190, -1
  loc_1B8C5CC: ' Referenced from: 1B8C5E9
  loc_1B8C5D3: If (var_9A < 200) Then
  loc_1B8C5DD:   var_C0 = var_C0 & "-"
  loc_1B8C5E6:   var_9A = (var_9A + 1)
  loc_1B8C5E9:   GoTo loc_1B8C5CC
  loc_1B8C5EC: End If
  loc_1B8C5EE: Close 1
  loc_1B8C5F7: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1B8C60F: var_1EC = CVar("Select Distinct RO.DocId,GF.Vdate,(RO.Adult+RO.Children) As Person,RO.FolioNo,RO.ChkInDate as ChkinDT,RO.ChkInTime as ChkinTm,RO.ChkOutDate as CHkOutDt,RO.ChkOutTime as CHkOutTm, ROOMRATE =case when GF.RODISC>0 then (RO.RoomRate-(RO.RoomRate*GF.RODISC/100)) else RO.ROOMRATE end ,RO.RoomNo,GP.Name AS GuestName,GP.BirthDate,Country.Name As Nationality,GF.RODISC,RO.Type,paycharge.Bill_No,Cast(paycharge.Bill_NO As Numeric) As OBill_No,BD.ChkInDAte,BD.ChkInTime,BD.ChkOutDate,BD.ChkOutTime " & "From ((((BillSummary as BD LEFT JOIN RoomOcc AS RO ON BD.FolioNoDocid = RO.Docid) Left Join GuestProf GP ON RO.GuestProf=GP.Code) Left Join Country ON GP.Nationality=Country.Code) Left Join GuestFolio GF ON RO.DOCID=GF.DOCID)  LEFT JOIN PayCharge ON (GF.GuestProf = PayCharge.GuestProf) AND (GF.FolioNo = PayCharge.FolioNo) Where  Paycharge.bill_no is not NULL and BD.BillSettleDate between ") 'String
  loc_1B8C615: var_14C = var_D0
  loc_1B8C61D: Proc_6_7_F25D88(var_190, var_14C, var_14C & var_190, var_278, -1)
  loc_1B8C635: var_16C = var_D8
  loc_1B8C63D: Proc_6_7_F25D88(var_228, var_16C, var_180 & var_190 & " And ", var_9A)
  loc_1B8C649: var_17C = " and isnull(Paycharge.ModeSet,'')<>'S'  and (paycharge.Bill_NO is not null and paycharge.Bill_NO<>'') AND Paycharge.SettleDate is Not NULL and RO.RoomType ='RO' "
  loc_1B8C672: unk_5407B4.Execute CStr(var_180 & var_228 & var_17C & CVar(global_60) & " ORDER BY OBill_No,RO.Type"), var_16C, var_14C
  loc_1B8C67D: Set var_B4 = var_180
  loc_1B8C69F: var_88 = 1
  loc_1B8C6A4: var_DA = 0
  loc_1B8C6AA: var_A4 = CDbl(0)
  loc_1B8C6AF: var_9C = 0
  loc_1B8C6B5: var_AC = CDbl(0)
  loc_1B8C6CC: If (var_B4.RecordCount > 0) Then
  loc_1B8C6CF:   ' Referenced from: 1B909B6
  loc_1B8C6DE:   If Not(var_B4.EOF) Then
  loc_1B8C6E7:     If (var_86 = 0) Then
  loc_1B8C712:       Print 1, Proc_6_128_10272A8("L.T.FORM NO. III", "B", 130, var_AC)
  loc_1B8C74B:       Print 1, Proc_6_128_10272A8("(SEE RULES 4 & 16)", "B", 130, var_9C)
  loc_1B8C784:       Print 1, Proc_6_128_10272A8("DAILY ACCOUNT OF OCCUPANCY OF ROOMS & COLLECTIONS OF TAX", "B", 130)
  loc_1B8C7A7:       var_194 = "N.B.-(SEPERATE ENTRY SHOULD BE MADE IN RESPECT OF EACH PERSON"
  loc_1B8C7BD:       Print 1, Proc_6_128_10272A8("DAILY ACCOUNT OF OCCUPANCY OF ROOMS & COLLECTIONS OF TAX", "B", 130)
  loc_1B8C7F8:       Print 1, Proc_6_128_10272A8("RETURN FOR THE CALENDER DATE " & var_F0, "B", 130)
  loc_1B8C86E:       var_1EC = (Space(&H1E) + "NAME AND ADDRESS OF HOTEL : ")
  loc_1B8C875:       var_218 = ("NAME AND ADDRESS OF HOTEL : " & Space(&H1E) + Trim(MemVar_1F92130))
  loc_1B8C87C:       var_238 = (var_180 & Space(&H1E) & " And " + Space(2))
  loc_1B8C883:       var_258 = (var_180 & Space(2) + Trim(MemVar_1F92134))
  loc_1B8C88C:       var_268 = (var_180 & Space(2) & ", " & CVar(global_60) + ", ")
  loc_1B8C893:       var_28C = (var_180 & Space(2) & ", " & CVar(global_60) & " ORDER BY OBill_No,RO.Type" + Trim(MemVar_1F92138))
  loc_1B8C89C:       var_29C = (var_28C + ", ")
  loc_1B8C8A3:       var_2BC = (var_29C + Trim(MemVar_1F9213C))
  loc_1B8C8A9:       Print 1, var_2BC, vbNullString
  loc_1B8C8D3:       Print 1, vbNullString
  loc_1B8C8EF:       var_1EC = (Chr(&HF) + CVar(var_C0))
  loc_1B8C8F5:       Print 1, CVar(var_C0) & Chr(&HF)
  loc_1B8C931:       var_1EC = (Space(&H87) + "NUMBER OF")
  loc_1B8C938:       var_218 = ("NUMBER OF" & Space(&H87) + Space(&H22))
  loc_1B8C941:       var_228 = (var_180 & Space(&H87) & " And " + "TOTAL")
  loc_1B8C948:       var_248 = (Space(2) + Space(7))
  loc_1B8C951:       var_258 = (Trim(MemVar_1F92134) + "REMARKS")
  loc_1B8C957:       Print 1, var_180 & Space(2) & ", " & CVar(global_60)
  loc_1B8C9D3:       var_1EC = (Space(&H41) + "RATE OF")
  loc_1B8C9DA:       var_218 = ("RATE OF" & Space(&H41) + Space(7))
  loc_1B8C9E3:       var_228 = (var_180 & Space(&H41) & " And " + "A R R I V A L  D E P A R T U R E")
  loc_1B8C9EA:       var_248 = (Space(2) + Space(4))
  loc_1B8C9F3:       var_258 = (Trim(MemVar_1F92134) + "PERIOD")
  loc_1B8C9FA:       var_278 = (var_180 & Space(2) & ", " & CVar(global_60) + Space(2))
  loc_1B8CA03:       var_28C = (Trim(MemVar_1F92138) + "TOTAL  AMT")
  loc_1B8CA0A:       var_2AC = (var_28C + Space(2))
  loc_1B8CA13:       var_2BC = (Trim(MemVar_1F9213C) + "OCCUPANTS")
  loc_1B8CA1A:       var_2DC = (var_2BC + Space(&H16))
  loc_1B8CA23:       var_2EC = (var_2DC + "AMOUNT  OF")
  loc_1B8CA2A:       var_30C = (var_2EC + Space(2))
  loc_1B8CA33:       var_31C = (var_30C + "LUXURY")
  loc_1B8CA39:       Print 1, var_31C
  loc_1B8CB8A:       var_404 = "WHO OCCUP-"
  loc_1B8CBA0:       var_438 = Space(&H15)
  loc_1B8CBE7:       var_208 = (Space(2) + CVar(Proc_6_45_EAD428("SR.", 3, var_A4)))
  loc_1B8CBEE:       var_228 = (Space(7) + Space(2))
  loc_1B8CBF8:       var_248 = (Space(2) + CVar(Proc_6_45_EAD428("NAME OF OCCUPANT", &H10)))
  loc_1B8CBFF:       var_268 = (Trim(MemVar_1F92134) + Space(&HB))
  loc_1B8CC09:       var_28C = (Space(2) + CVar(Proc_6_45_EAD428("AGE", 3)))
  loc_1B8CC10:       var_2AC = (var_28C + Space(2))
  loc_1B8CC1A:       var_2CC = (Trim(MemVar_1F9213C) + CVar(Proc_6_45_EAD428("NATIONALITY", &HB)))
  loc_1B8CC21:       var_2EC = (Space(&H16) + Space(1))
  loc_1B8CC2B:       var_30C = (var_2EC + CVar(Proc_6_45_EAD428("NAME & NO. OF", &HD)))
  loc_1B8CC34:       var_31C = (var_30C + " ")
  loc_1B8CC3E:       var_350 = (var_31C + CVar(Proc_6_45_EAD428("CHARGES FOR", &HB)))
  loc_1B8CC45:       var_370 = (var_350 + Space(&H29))
  loc_1B8CC4F:       var_398 = (var_370 + CVar(Proc_6_45_EAD428("OF", 2)))
  loc_1B8CC56:       var_3B8 = (var_398 + Space(4))
  loc_1B8CC60:       var_3E0 = (var_3B8 + CVar(Proc_6_45_EAD428("OF CHARGES", &HA)))
  loc_1B8CC67:       var_400 = (var_3E0 + Space(2))
  loc_1B8CC71:       var_428 = (var_400 + CVar(Proc_6_45_EAD428(var_404, &HA)))
  loc_1B8CC78:       var_448 = (var_428 + var_438)
  loc_1B8CC82:       var_470 = (var_448 + CVar(Proc_6_45_EAD428("LUXURY TAX", &HA)))
  loc_1B8CC89:       var_490 = (var_470 + Space(4))
  loc_1B8CC93:       var_4B8 = (var_490 + CVar(Proc_6_45_EAD428("TAX", 3)))
  loc_1B8CC99:       Print 1, var_4B8
  loc_1B8CDBC:       var_1EC = (Space(2) + "NO.")
  loc_1B8CDC3:       var_218 = (CVar(Proc_6_45_EAD428("SR.", 3, var_A4)) + Space(&H2E))
  loc_1B8CDCC:       var_228 = (Space(2) + "ROOM OCCUPIED")
  loc_1B8CDD5:       var_238 = (Space(2) + " ")
  loc_1B8CDDE:       var_248 = (CVar(Proc_6_45_EAD428("NAME OF OCCUPANT", &H10)) + "ACCOMODATION")
  loc_1B8CDE5:       var_268 = (Trim(MemVar_1F92134) + Space(4))
  loc_1B8CDEE:       var_278 = (Space(2) + "DATE")
  loc_1B8CDF5:       var_29C = (CVar(Proc_6_45_EAD428("AGE", 3)) + Space(4))
  loc_1B8CDFE:       var_2AC = (Space(2) + "TIME")
  loc_1B8CE05:       var_2CC = (Trim(MemVar_1F9213C) + Space(5))
  loc_1B8CE0E:       var_2DC = (Space(&H16) + "DATE")
  loc_1B8CE15:       var_2FC = (Space(1) + Space(4))
  loc_1B8CE1E:       var_30C = (CVar(Proc_6_45_EAD428("NAME & NO. OF", &HD)) + "TIME")
  loc_1B8CE25:       var_340 = (var_30C + Space(7))
  loc_1B8CE2E:       var_350 = (CVar(Proc_6_45_EAD428("CHARGES FOR", &HB)) + "STAY")
  loc_1B8CE35:       var_370 = (var_350 + Space(2))
  loc_1B8CE39:       var_504 = "FOR ACCOM-"
  loc_1B8CE3E:       var_388 = (var_370 + var_504)
  loc_1B8CE45:       var_3A8 = (CVar(Proc_6_45_EAD428("OF", 2)) + Space(2))
  loc_1B8CE4E:       var_3B8 = (Space(4) + "PIED  THE")
  loc_1B8CE55:       var_3E0 = (var_3B8 + Space(&H17))
  loc_1B8CE5E:       var_3F0 = (var_3E0 + "COLLECTED")
  loc_1B8CE65:       var_418 = (Space(2) + Space(2))
  loc_1B8CE6E:       var_428 = (CVar(Proc_6_45_EAD428(var_404, &HA)) + "COLLECTED")
  loc_1B8CE74:       Print 1, var_428
  loc_1B8CEFD:       var_1EC = (Space(&H41) + "FOR RESIDENCE")
  loc_1B8CF04:       var_218 = (CVar(Proc_6_45_EAD428("SR.", 3, var_A4)) + Space(&H2D))
  loc_1B8CF0D:       var_228 = (Space(2) + "ODATION FOR")
  loc_1B8CF16:       var_238 = (Space(2) + " ")
  loc_1B8CF1F:       var_248 = (CVar(Proc_6_45_EAD428("NAME OF OCCUPANT", &H10)) + "ROOM OR")
  loc_1B8CF26:       var_268 = (Trim(MemVar_1F92134) + Space(4))
  loc_1B8CF2F:       var_278 = (Space(2) + "BILL NO. & DATE")
  loc_1B8CF36:       var_29C = (CVar(Proc_6_45_EAD428("AGE", 3)) + Space(6))
  loc_1B8CF3F:       var_2AC = (Space(2) + "FROM EACH")
  loc_1B8CF45:       Print 1, Trim(MemVar_1F9213C)
  loc_1B8CFA4:       var_1EC = (Space(&H41) + "PER DAY PER")
  loc_1B8CFAB:       var_218 = (CVar(Proc_6_45_EAD428("SR.", 3, var_A4)) + Space(&H2F))
  loc_1B8CFB4:       var_228 = (Space(2) + "RESIDENCE")
  loc_1B8CFBB:       var_248 = (Space(2) + Space(3))
  loc_1B8CFBF:       var_16C = "ACCOMODA-"
  loc_1B8CFC4:       var_258 = (Trim(MemVar_1F92134) + " ")
  loc_1B8CFCB:       var_278 = (Space(4) + Space(&H17))
  loc_1B8CFD4:       var_28C = (CVar(Proc_6_45_EAD428("AGE", 3)) + "OCCUPANT")
  loc_1B8CFDA:       Print 1, Space(6)
  loc_1B8D01B:       var_1EC = (Space(&H41) + "OCCUPANT")
  loc_1B8D022:       var_218 = (CVar(Proc_6_45_EAD428("SR.", 3, var_A4)) + Space(&H3E))
  loc_1B8D02B:       var_228 = (Space(2) + "TION IN")
  loc_1B8D031:       Print 1, Space(2)
  loc_1B8D059:       var_1EC = (Space(&H87) + "THE HOTEL")
  loc_1B8D05F:       Print 1, CVar(Proc_6_45_EAD428("SR.", 3, var_A4))
  loc_1B8D071:       Print 1, var_C0
  loc_1B8D07D:       var_86 = (var_86 + &H11)
  loc_1B8D080:     End If
  loc_1B8D0BC:     If (var_B4.Fields.Item("Type").Value = "C") Then
  loc_1B8D106:       Proc_6_7_F25D88(CVar(Proc_6_45_EAD428("SR.", 3, var_A4)), CVar(var_B4.Fields.Item("ChkInDate")), "sELECT sno FROM ROOMOCC WHERE chkindate=", CVar(Proc_6_45_EAD428("AGE", 3)), -1, var_548, var_54C)
  loc_1B8D14E:       var_248 = 0 & CVar(Proc_6_45_EAD428("SR.", 3, var_A4)) & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" 
  loc_1B8D18A:       unk_5407B4.Execute CStr(var_248 & var_B4.Fields.Item("FolioNo").Value), var_550, Space(6)
  loc_1B8D192:       var_86 = var_548.Fields
  loc_1B8D19A:       var_88 = var_54C.Item(var_DA)
  loc_1B8D1A2:        = var_550.Value
  loc_1B8D1E1:       If (Space(6) = 1) Then
  loc_1B8D1F8:         var_1EC = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime <= '") 'String
  loc_1B8D25C:         var_238 = CVar(Proc_6_45_EAD428("SR.", 3, var_A4)) & var_B4.Fields.Item("ChkOutDate").Value & " " & var_B4.Fields.Item("ChkOutTime").Value 
  loc_1B8D294:         var_278 = -1 & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), var_238 & "' AND  PC.Bill_No='", Space(1))) 
  loc_1B8D2DE:         var_2CC = CVar(Proc_6_45_EAD428("AGE", 3)) & "' AND PC.FOLIONO=" & var_B4.Fields.Item("FolioNo").Value & CVar(var_C4) & " GROUP By PC.Bill_No " 
  loc_1B8D2EC:         unk_5407B4.Execute CStr(var_2CC), var_550, 
  loc_1B8D2F7:         Set var_BC = var_550
  loc_1B8D336:       Else
  loc_1B8D374:         var_53C = var_B4.Fields.Item("ChkInTime")
  loc_1B8D388:         var_218 = "hh:nn:ss"
  loc_1B8D391:         var_208 = CVar(var_53C) 'Address
  loc_1B8D413:         var_550 = var_B4.Fields
  loc_1B8D46A:         var_248 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime Between '") 'String
  loc_1B8D480:         var_258 = var_B4.Fields.Item("ChkInDate").Value & " " & Format(var_208, var_218) & "' AND  PC.Bill_No='" & var_B4.Fields.Item("ChkInDate").Value & " " & Format(var_208, var_218) 
  loc_1B8D4A0:         var_2DC = var_258 & "' and '" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1B8D4B0:         var_30C = CVar(Proc_6_38_E68A98(CVar(var_550.Item("Bill_no")), 1, 1)) 'String
  loc_1B8D4D6:         var_388 = var_2DC & "' AND  PC.Bill_No='" & var_30C & "' AND PC.FOLIONODOCID='" & var_B4.Fields.Item("DocID").Value & "'" & CVar(var_C4) 
  loc_1B8D4ED:         unk_5407B4.Execute CStr(var_388 & " GROUP By PC.Bill_No "), Space(4), -1
  loc_1B8D4F8:         Set var_BC = var_5A0
  loc_1B8D552:       End If
  loc_1B8D555:     Else
  loc_1B8D55B:       var_17C = 0
  loc_1B8D5AE:       unk_5407B4.Execute CStr("sELECT COUNT(*) FROM ROOMOCC WHERE fOLIONO=" & var_B4.Fields.Item("FolioNo").Value), var_208, -1
  loc_1B8D5B6:       var_538 = var_538.Fields
  loc_1B8D5BE:       var_17C = var_53C.Item(var_53C)
  loc_1B8D5C6:       var_540 = var_540.Value
  loc_1B8D5F1:       If (var_218 > 1) Then
  loc_1B8D646:         var_218 = "hh:nn:ss"
  loc_1B8D698:         var_548 = var_B4.Fields
  loc_1B8D6A0:         var_54C = var_548.Item("DocID")
  loc_1B8D6C1:         var_248 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.BillAmount) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime > '") 'String
  loc_1B8D6CC:         var_1EC = var_B4.Fields.Item("ChkInDate").Value & " " 
  loc_1B8D6D7:         var_258 = var_1EC & Format(CVar(var_B4.Fields.Item("ChkInTime")), var_218) & "' AND  PC.Bill_No='" & var_1EC & Format(CVar(var_B4.Fields.Item("ChkInTime")), var_218) 
  loc_1B8D6F3:         var_2AC = var_258 & "' AND  PC.Bill_No='" & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), 1, 1, var_218)) & "' AND PC.FOLIONODOCID='" 
  loc_1B8D6FA:         var_2CC = var_2AC & var_54C.Value 
  loc_1B8D724:         unk_5407B4.Execute CStr(var_2CC & "'" & CVar(var_C4) & " GROUP By PC.Bill_No "), var_30C, -1
  loc_1B8D72F:         Set var_BC = var_550
  loc_1B8D776:       Else
  loc_1B8D78A:         var_208 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.BillAmount) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE vdate >= ") 'String
  loc_1B8D7B3:         Proc_6_7_F25D88(var_1EC, CVar(var_B4.Fields.Item("ChkInDate")), var_208, var_2CC, -1)
  loc_1B8D7F0:         var_248 = CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), var_548 & var_1EC & " AND  PC.Bill_No='", var_550)) 'String
  loc_1B8D822:         var_278 = var_B4.Fields.Item("DocID").Value
  loc_1B8D854:         unk_5407B4.Execute CStr(var_5A0 & var_248 & "' AND PC.FOLIONODOCID='" & var_278 & "'" & CVar(var_C4) & " GROUP By PC.Bill_No "), 1, 1
  loc_1B8D85F:         Set var_BC = var_548
  loc_1B8D893:       End If
  loc_1B8D893:     End If
  loc_1B8D8A7:     If (var_BC.RecordCount > 0) Then
  loc_1B8D91E:       If (var_B4.Fields.Item("Type").Value = "C") Then
  loc_1B8D968:         Proc_6_7_F25D88(var_1EC, CVar(var_B4.Fields.Item("ChkInDate")), "sELECT sno FROM ROOMOCC WHERE chkindate=", var_278, -1, var_548)
  loc_1B8D9DE:         var_268 = var_54C & var_1EC & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("FolioNo").Value 
  loc_1B8D9EC:         unk_5407B4.Execute CStr(var_268), 0, var_550
  loc_1B8D9F4:         var_28C = var_548.Fields
  loc_1B8D9FC:          = var_54C.Item(CSng(var_BC.Fields.Item("LuxuryTax").Value))
  loc_1B8DA04:          = var_550.Value
  loc_1B8DA43:         If (var_28C = 1) Then
  loc_1B8DAD3:           Proc_6_7_F25D88(var_28C, CVar(var_B4.Fields.Item("ChkInDate")))
  loc_1B8DAFE:           Proc_6_7_F25D88(var_2CC, CVar(var_B4.Fields.Item("ChkOutDate")))
  loc_1B8DB5B:           var_59C = 0
  loc_1B8DB78:           var_248 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime <= '") 'String
  loc_1B8DB8E:           var_258 = var_B4.Fields.Item("ChkOutDate") & var_B4.Fields.Item("ChkOutDate").Value & " " & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1B8DBBE:           var_30C = CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), 1)) 'String
  loc_1B8DBCA:           var_340 = var_258 & "' AND PC.VDATE BETWEEN " & var_28C & " AND " & var_2CC & " AND  PC.Bill_No='" & var_30C & "' and PC.FOLIONO=" 
  loc_1B8DBD1:           var_360 = var_340 & var_B4.Fields.Item("FolioNo").Value 
  loc_1B8DBFB:           unk_5407B4.Execute CStr(var_360 & " and PC.PAYCode in ( '" & CVar(MemVar_1F92070) & "RMCH') GROUP By PC.Bill_No"), Space(4), -1
  loc_1B8DC03:           var_5A0 = var_5A0.Fields
  loc_1B8DC0B:           var_59C = var_5A4.Item(var_5A4)
  loc_1B8DC13:           var_5A8 = var_5A8.Value
  loc_1B8DC1C:           var_EC = CSng(var_3B8)
  loc_1B8DC7D:         Else
  loc_1B8DCBB:           var_53C = var_B4.Fields.Item("ChkInTime")
  loc_1B8DCCF:           var_218 = "hh:nn:ss"
  loc_1B8DCDF:           var_228 = Format(CVar(var_53C), var_218)
  loc_1B8DD71:           Proc_6_7_F25D88(var_30C, CVar(var_B4.Fields.Item("ChkInDate")), 1, 1, 1)
  loc_1B8DD9C:           Proc_6_7_F25D88(var_360, CVar(var_B4.Fields.Item("ChkOutDate")), 1)
  loc_1B8DDF9:           var_604 = 0
  loc_1B8DE16:           var_248 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime Between '") 'String
  loc_1B8DE2C:           var_258 = var_B4.Fields.Item("ChkOutTime") & var_B4.Fields.Item("ChkInDate").Value & " " & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("ChkInDate").Value & " " & var_228 
  loc_1B8DE4C:           var_2DC = var_258 & "' and '" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1B8DE7F:           var_3B8 = var_2DC & "' AND PC.VDATE BETWEEN " & var_30C & " AND " & var_360 & " AND  PC.Bill_No='" & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), var_EC)) 
  loc_1B8DEA2:           var_418 = var_3B8 & "' and PC.FOLIONO=" & var_B4.Fields.Item("FolioNo").Value & " and PC.PAYCode in ( '" & CVar(MemVar_1F92070) 
  loc_1B8DEB9:           unk_5407B4.Execute CStr(var_418 & "RMCH') GROUP By PC.Bill_No"), var_438, -1
  loc_1B8DEC1:           var_5F0 = var_5F0.Fields
  loc_1B8DEC9:           var_604 = var_5F4.Item(var_5F4)
  loc_1B8DED1:           var_608 = var_608.Value
  loc_1B8DEDA:           var_EC = CSng(var_448)
  loc_1B8DF4E:         End If
  loc_1B8DF51:       Else
  loc_1B8DF57:         var_1A8 = 0
  loc_1B8DFB3:         unk_5407B4.Execute CStr("sELECT COUNT(*) FROM ROOMOCC WHERE Docid='" & var_B4.Fields.Item("DocID").Value & "'"), var_218, -1
  loc_1B8DFBB:         var_538 = var_538.Fields
  loc_1B8DFC3:         var_1A8 = var_53C.Item(var_53C)
  loc_1B8DFCB:         var_540 = var_540.Value
  loc_1B8DFF8:         If (var_228 > 1) Then
  loc_1B8E05D:           var_228 = Format(CVar(var_B4.Fields.Item("ChkInTime")), "hh:nn:ss")
  loc_1B8E158:           var_5A8 = var_B4.Fields
  loc_1B8E181:           var_248 = CVar("Select SUM(PC.BillAmount) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime > '") 'String
  loc_1B8E18C:           var_1EC = var_B4.Fields.Item("ChkInDate").Value & " " 
  loc_1B8E197:           var_258 = var_B4.Fields.Item("FolioNo") & var_1EC & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_1EC & var_228 
  loc_1B8E1B3:           var_2AC = var_258 & "' AND  PC.Bill_No='" & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), 1, 1, var_228)) & "' AND PC.FOLIONO=" 
  loc_1B8E1C8:           var_504 = " and docid not in (Select Docid from paycharge WHERE cast(vdate as varchar(11))+' '+vtime > '"
  loc_1B8E1E4:           var_370 = var_2AC & var_B4.Fields.Item("FolioNo").Value & CVar(var_C4) & "' AND PC.VDATE BETWEEN " & var_B4.Fields.Item("ChkInDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1B8E200:           var_3D0 = var_370 & "' AND  Bill_No='" & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), 1, 1)) & "' AND FOLIONO=" 
  loc_1B8E210:           var_400 = var_3D0 & var_5A8.Item("FolioNo").Value & " and paycode ='" 
  loc_1B8E231:           unk_5407B4.Execute CStr(var_400 & CVar(MemVar_1F92078) & "LT' and AMTDR=0) GROUP By PC.Bill_No "), var_438, -1
  loc_1B8E23C:           Set var_124 = var_5F0
  loc_1B8E2C2:           If (var_124.RecordCount > 0) Then
  loc_1B8E2EB:             Proc_6_39_E7C810(var_1EC, CVar(var_124.Fields.Item(0)), var_5F0)
  loc_1B8E2F4:             var_EC = CSng(var_1EC)
  loc_1B8E304:           Else
  loc_1B8E307:             var_EC = CDbl(0)
  loc_1B8E30A:           End If
  loc_1B8E30D:         Else
  loc_1B8E333:           Proc_6_7_F25D88(var_1EC, CVar(var_B4.Fields.Item("ChkInDate")), var_EC, var_EC)
  loc_1B8E34F:           var_53C = var_B4.Fields.Item("Bill_no")
  loc_1B8E37D:           var_544 = var_B4.Fields.Item("FolioNo")
  loc_1B8E385:           var_278 = var_544.Value
  loc_1B8E39C:           var_548 = var_B4.Fields
  loc_1B8E42E:           var_5A0 = var_B4.Fields
  loc_1B8E43E:           var_3A8 = var_5A0.Item("FolioNo").Value
  loc_1B8E457:           var_208 = CVar("Select SUM(PC.billAmount) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE vdate >= ") 'String
  loc_1B8E45D:           var_218 = var_208 & var_1EC 
  loc_1B8E479:           var_268 = var_218 & " AND  PC.Bill_No='" & CVar(Proc_6_38_E68A98(CVar(var_53C), var_EC)) & "' and PC.FOLIONO=" 
  loc_1B8E497:           var_1D8 = "LT') and docid not in (Select Docid from paycharge WHERE cast(vdate as varchar(11))+' '+vtime > '"
  loc_1B8E4B3:           var_340 = var_268 & var_278 & " and PC.PAYCode in ('" & CVar(MemVar_1F92070) & "FolioNo" & var_548.Item("ChkInDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1B8E4CF:           var_398 = var_340 & "' AND  Bill_No='" & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), 1, 1)) & "' AND FOLIONO=" 
  loc_1B8E4E9:           var_3E0 = var_398 & var_3A8 & " and paycode ='" & CVar(MemVar_1F92078) 
  loc_1B8E500:           unk_5407B4.Execute CStr(var_3E0 & "LT' and AMTDR=0)GROUP By PC.Bill_No"), var_400, -1
  loc_1B8E50B:           Set var_12C = var_5A8
  loc_1B8E587:           If (var_12C.RecordCount > 0) Then
  loc_1B8E5B0:             Proc_6_39_E7C810(var_1EC, CVar(var_12C.Fields.Item("TotalTax")), var_5A8)
  loc_1B8E5B9:             var_EC = CSng(var_1EC)
  loc_1B8E5C9:           Else
  loc_1B8E5CC:             var_EC = CDbl(0)
  loc_1B8E5CF:           End If
  loc_1B8E5CF:         End If
  loc_1B8E5CF:       End If
  loc_1B8E5D2:     Else
  loc_1B8E5D5:       var_E4 = CDbl(0)
  loc_1B8E5DE:       var_17C = 0
  loc_1B8E631:       unk_5407B4.Execute CStr("sELECT COUNT(*) FROM ROOMOCC WHERE fOLIONO=" & var_B4.Fields.Item("FolioNo").Value), var_208, -1
  loc_1B8E639:       var_538 = var_538.Fields
  loc_1B8E641:       var_17C = var_53C.Item(var_53C)
  loc_1B8E649:       var_540 = var_540.Value
  loc_1B8E674:       If (var_218 > 1) Then
  loc_1B8E6CE:         var_208 = CVar("Select Count(*) from PayCharge where PayCode='" & MemVar_1F92070 & "LT' And FolioNO=") & var_B4.Fields.Item("FolioNo").Value 
  loc_1B8E703:         var_238 = CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), var_208 & " and Bill_no='", var_268, -1, var_540, var_544)) 'String
  loc_1B8E70F:         var_258 = 0 & CVar(var_B4.Fields.Item("Bill_no")) & "'" 
  loc_1B8E71D:         unk_5407B4.Execute CStr(var_258), var_548, var_278
  loc_1B8E725:         var_218 = var_540.Fields
  loc_1B8E72D:         var_EC = var_544.Item(var_E4)
  loc_1B8E735:          = var_548.Value
  loc_1B8E772:         If (var_278 = 0) Then
  loc_1B8E789:           var_194 = "Select SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE  PC.Bill_No='"
  loc_1B8E7B8:           var_1F0 = -1 & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), var_194, var_258)
  loc_1B8E7EC:           var_218 = CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), 1, 1) & "' and PC.FOLIONO=") & var_B4.Fields.Item("FolioNo").Value 
  loc_1B8E816:           unk_5407B4.Execute CStr(var_218 & " and PC.PAYCode in ('" & CVar(MemVar_1F92070) & "LT') GROUP By PC.Bill_No"), var_540, 
  loc_1B8E821:           Set var_130 = var_540
  loc_1B8E861:           If (var_130.RecordCount > 0) Then
  loc_1B8E88F:             var_EC = CSng(var_130.Fields.Item(0).Value)
  loc_1B8E89F:           Else
  loc_1B8E8A2:             var_EC = CDbl(0)
  loc_1B8E8A5:           End If
  loc_1B8E8A8:         Else
  loc_1B8E945:           var_548 = var_B4.Fields
  loc_1B8E94D:           var_54C = var_548.Item("ChkOutTime")
  loc_1B8E985:           var_550 = var_B4.Fields
  loc_1B8E9B3:           var_558 = var_B4.Fields
  loc_1B8E9C3:           var_350 = var_558.Item("FolioNo").Value
  loc_1B8E9DC:           var_248 = CVar("Select SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE  cast(vdate as varchar(11))+' '+vtime Between '") 'String
  loc_1B8E9E7:           var_1EC = var_B4.Fields.Item("ChkInDate").Value & " " 
  loc_1B8E9F2:           var_258 = "hh:nn:ss" & " and PC.PAYCode in ('" & CVar(MemVar_1F92070) & "LT') GROUP By PC.Bill_No" & var_1EC & Format(CVar(var_B4.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1B8EA0E:           var_2CC = var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_54C), "hh:nn:ss") 
  loc_1B8EA25:           var_31C = var_258 & "' and '" & var_2CC & "' AND PC.Bill_No='" & CVar(Proc_6_38_E68A98(CVar(var_550.Item("Bill_no")), 1, 1, 1)) 
  loc_1B8EA51:           var_398 = var_31C & "' and PC.FOLIONO=" & var_350 & " and PC.PAYCode in ('" & CVar(MemVar_1F92070) & "LT') GROUP By PC.Bill_No" 
  loc_1B8EA5F:           unk_5407B4.Execute CStr(var_398), var_3A8, -1
  loc_1B8EA6A:           Set var_130 = var_5A0
  loc_1B8EAD8:           If (var_130.RecordCount > 0) Then
  loc_1B8EB06:             var_EC = CSng(var_130.Fields.Item(0).Value)
  loc_1B8EB16:           Else
  loc_1B8EB19:             var_EC = CDbl(0)
  loc_1B8EB1C:           End If
  loc_1B8EB1C:         End If
  loc_1B8EB1F:       Else
  loc_1B8EB33:         var_208 = CVar("Select SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE vdate >= ") 'String
  loc_1B8EB5C:         Proc_6_7_F25D88(var_1EC, CVar(var_B4.Fields.Item("ChkInDate")), var_208, var_2CC, -1, var_548)
  loc_1B8EB99:         var_248 = CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), var_EC & var_1EC & " AND  PC.Bill_No='", var_EC, var_5A0)) 'String
  loc_1B8EBCB:         var_278 = var_B4.Fields.Item("FolioNo").Value
  loc_1B8EBEF:         var_2BC = 1 & var_248 & "' and PC.FOLIONO=" & var_278 & " and PC.PAYCode in ('" & CVar(MemVar_1F92070) & "RMCH') GROUP By PC.Bill_No" 
  loc_1B8EBFD:         unk_5407B4.Execute CStr(var_2BC), var_EC, var_EC
  loc_1B8EC08:         Set var_130 = var_548
  loc_1B8EC50:         If (var_130.RecordCount > 0) Then
  loc_1B8EC7E:           var_EC = CSng(var_130.Fields.Item(0).Value)
  loc_1B8EC8E:         Else
  loc_1B8EC91:           var_EC = CDbl(0)
  loc_1B8EC94:         End If
  loc_1B8EC94:       End If
  loc_1B8EC94:     End If
  loc_1B8EC9B:     If (var_E4 = CDbl(0)) Then
  loc_1B8ECDA:       If (var_B4.Fields.Item("Type").Value = "C") Then
  loc_1B8ED24:         Proc_6_7_F25D88(var_1EC, CVar(var_B4.Fields.Item("ChkInDate")), "sELECT sno FROM ROOMOCC WHERE chkindate=", var_278, -1, var_548)
  loc_1B8ED9A:         var_268 = var_54C & var_1EC & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("FolioNo").Value 
  loc_1B8EDA8:         unk_5407B4.Execute CStr(var_268), 0, var_550
  loc_1B8EDB8:         var_EC = var_54C.Item(var_EC)
  loc_1B8EDC0:          = var_550.Value
  loc_1B8EDFF:         If (var_548.Fields = 1) Then
  loc_1B8EEF6:           var_248 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime <= '") 'String
  loc_1B8EF0C:           var_258 = var_B4.Fields.Item("Bill_no") & var_B4.Fields.Item("ChkOutDate").Value & " " & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1B8EF2F:           var_2CC = var_258 & "' and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), 1)) 
  loc_1B8EF52:           var_31C = var_2CC & "' and PC.FOLIONO=" & var_B4.Fields.Item("FolioNo").Value & " AND PC.PAYCode in ('" & CVar(MemVar_1F92070) 
  loc_1B8EF69:           unk_5407B4.Execute CStr(var_31C & "RMCH') GROUP By PC.BILL_NO"), var_350, -1
  loc_1B8EFD6:           If (var_558.RecordCount = 0) Then
  loc_1B8EFD9:             GoTo loc_1B909AE
  loc_1B8EFDC:           End If
  loc_1B8EFDF:         Else
  loc_1B8F01D:           var_53C = var_B4.Fields.Item("ChkOutTime")
  loc_1B8F031:           var_218 = "hh:nn:ss"
  loc_1B8F03A:           var_208 = CVar(var_53C) 'Address
  loc_1B8F0E3:           var_558 = var_B4.Fields
  loc_1B8F13A:           var_248 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime between '") 'String
  loc_1B8F150:           var_258 = var_B4.Fields.Item("ChkOutTime") & var_B4.Fields.Item("ChkOutDate").Value & " " & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(var_208, var_218) 
  loc_1B8F170:           var_2DC = var_258 & "' and '" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1B8F190:           var_350 = CVar(Proc_6_38_E68A98(CVar(var_558.Item("Bill_no")), 1, 1, 1)) 'String
  loc_1B8F19C:           var_370 = var_2DC & "' and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" & var_350 & "' and PC.FOLIONO=" 
  loc_1B8F1BF:           var_3D0 = var_370 & var_B4.Fields.Item("FolioNo").Value & " and PC.PAYCode In ('" & CVar(MemVar_1F92070) & "RMCH') GROUP By PC.BILL_NO" 
  loc_1B8F1CD:           unk_5407B4.Execute CStr(var_3D0), var_3E0, -1
  loc_1B8F1D8:           Set var_BC = var_5A8
  loc_1B8F23C:         End If
  loc_1B8F23F:       Else
  loc_1B8F245:         var_17C = 0
  loc_1B8F298:         unk_5407B4.Execute CStr("sELECT COUNT(*) FROM ROOMOCC WHERE fOLIONO=" & var_B4.Fields.Item("FolioNo").Value), var_208, -1
  loc_1B8F2A0:         var_538 = var_538.Fields
  loc_1B8F2A8:         var_17C = var_53C.Item(var_53C)
  loc_1B8F2B0:         var_540 = var_540.Value
  loc_1B8F2DB:         If (var_218 > 1) Then
  loc_1B8F330:           var_218 = "hh:nn:ss"
  loc_1B8F3A9:           var_550 = var_B4.Fields
  loc_1B8F3D2:           var_248 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime > '") 'String
  loc_1B8F3DD:           var_1EC = var_B4.Fields.Item("ChkInDate").Value & " " 
  loc_1B8F3E8:           var_258 = var_B4.Fields.Item("Bill_no") & var_1EC & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_1EC & Format(CVar(var_B4.Fields.Item("ChkInTime")), var_218) 
  loc_1B8F40B:           var_2CC = var_258 & "' and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), 1, 1, var_218)) 
  loc_1B8F41B:           var_2FC = var_2CC & "' and PC.FOLIONO=" & var_550.Item("FolioNo").Value 
  loc_1B8F445:           unk_5407B4.Execute CStr(var_2FC & " AND PC.PAYCode In ('" & CVar(MemVar_1F92070) & "RMCH') GROUP By PC.BILL_NO"), var_350, -1
  loc_1B8F450:           Set var_BC = var_558
  loc_1B8F4A1:         Else
  loc_1B8F4B5:           var_208 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE vdate >= ") 'String
  loc_1B8F4DE:           Proc_6_7_F25D88(var_1EC, CVar(var_B4.Fields.Item("ChkInDate")), var_208, var_2FC, -1)
  loc_1B8F552:           var_278 = CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), var_550 & var_1EC & " and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='", var_558)) 'String
  loc_1B8F59F:           var_2DC = var_5A8 & var_278 & "' and PC.FOLIONO=" & var_B4.Fields.Item("FolioNo").Value & " and PC.PAYCode In ('" & CVar(MemVar_1F92070) 
  loc_1B8F5B6:           unk_5407B4.Execute CStr(var_2DC & "RMCH') GROUP By PC.BILL_NO"), 1, var_558
  loc_1B8F5C1:           Set var_BC = var_550
  loc_1B8F5FF:         End If
  loc_1B8F5FF:       End If
  loc_1B8F613:       If (var_BC.RecordCount > 0) Then
  loc_1B8F635:         var_190 = CVar(var_BC.Fields.Item("LuxuryTax")) 'Address
  loc_1B8F63C:         Proc_6_39_E7C810(var_1EC)
  loc_1B8F659:         var_108 = (var_108 + CSng(var_1EC))
  loc_1B8F65F:       Else
  loc_1B8F662:         var_118 = CDbl(0)
  loc_1B8F665:       End If
  loc_1B8F668:     Else
  loc_1B8F66F:       var_F8 = (var_F8 + var_EC)
  loc_1B8F679:       var_100 = (var_100 + var_E4)
  loc_1B8F67C:     End If
  loc_1B8F6A4:     var_11C = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), var_100, var_F8, var_118)
  loc_1B8F6B4:     If (var_E4 > CDbl(0)) Then
  loc_1B8F6BD:       var_DA = (var_DA + 1)
  loc_1B8F7CB:       var_30C = IIf((var_B4.Fields.Item("BirthDate").Value <> vbNullString), DateDiff("yyyy", CVar(var_B4.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1), 0)
  loc_1B8FAD1:       var_7EC = IIf((DateDiff("D", CVar(var_B4.Fields.Item("ChkInDate")), CVar(var_B4.Fields.Item("ChkOutDate")), 1, 1) = 0), 1, DateDiff("D", CVar(var_B4.Fields.Item("ChkInDate")), CVar(var_B4.Fields.Item("ChkOutDate")), 1, 1))
  loc_1B8FB03:       Proc_6_39_E7C810(var_82C, var_EC)
  loc_1B8FB17:       var_84C = "0.00"
  loc_1B8FC90:       var_AF0 = IIf((var_E4 > CDbl(0)), (CVar(var_E4) / IIf((var_B4.Fields.Item("Person").Value = 0), 1, CVar(var_B4.Fields.Item("Person")))), 0)
  loc_1B8FCE2:       Proc_6_39_E7C810(var_B84, var_E4, 1)
  loc_1B8FCF6:       var_BA4 = "0.00"
  loc_1B8FD25:       var_208 = (Space(2) + CVar(Proc_6_52_EAD4F4(CStr(var_DA), 3, var_DA)))
  loc_1B8FD2C:       var_228 = (var_208 + Space(2))
  loc_1B8FD36:       var_258 = (var_B4.Fields & CVar(Proc_6_52_EAD4F4(CStr(var_DA), 3, var_DA)) & " and PC.RoomNo='" + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("GuestName")), var_108), &H19)))
  loc_1B8FD3D:       var_278 = (var_B4.Fields & CVar(Proc_6_52_EAD4F4(CStr(var_DA), 3, var_DA)) & " and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" + Space(2))
  loc_1B8FD47:       var_340 = (var_278 + CVar(Proc_6_52_EAD4F4(CStr(var_30C), 3)))
  loc_1B8FD4E:       var_360 = (0 & " AND PC.PAYCode In ('" & CVar(MemVar_1F92070) & "RMCH') GROUP By PC.BILL_NO" + Space(2))
  loc_1B8FD58:       var_398 = (DateDiff("yyyy", CVar(var_B4.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1) & "' and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" & Space(2) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Nationality")), var_118), &HB)))
  loc_1B8FD5F:       var_3B8 = (CVar(var_B4.Fields.Item("Nationality")) & var_B4.Fields.Item("FolioNo").Value + Space(5))
  loc_1B8FD69:       var_3F0 = (CVar(var_B4.Fields.Item("Nationality")) & var_B4.Fields.Item("FolioNo").Value & " and PC.PAYCode In ('" & CVar(MemVar_1F92070) + CVar(Proc_6_45_EAD428(CStr(var_B4.Fields.Item("RoomNo").Value), 5)))
  loc_1B8FD70:       var_418 = (CVar(Proc_6_45_EAD428(CStr(var_B4.Fields.Item("RoomNo").Value), 5)) & "LT' and AMTDR=0)GROUP By PC.Bill_No" + Space(8))
  loc_1B8FD7A:       var_448 = (Space(8) & CVar(MemVar_1F92078) + CVar(Proc_6_52_EAD4F4(CStr(var_B4.Fields.Item("RoomRate").Value), 7)))
  loc_1B8FD81:       var_470 = (var_448 + Space(4))
  loc_1B8FD88:       var_4B8 = (var_470 + Format(CVar(var_B4.Fields.Item("ChkInDate")), "DD/MM/YYYY"))
  loc_1B8FD8F:       var_628 = (var_4B8 + Space(2))
  loc_1B8FD99:       var_658 = (var_628 + CVar(Proc_6_45_EAD428(CStr(var_B4.Fields.Item("ChkInTime").Value), 5, 1)))
  loc_1B8FDA0:       var_678 = (var_658 + Space(2))
  loc_1B8FDA7:       var_6B8 = (var_678 + Format(CVar(var_B4.Fields.Item("ChkOutDate")), "DD/MM/YYYY"))
  loc_1B8FDAE:       var_6D8 = (var_6B8 + Space(2))
  loc_1B8FDB8:       var_70C = (var_6D8 + CVar(Proc_6_45_EAD428(CStr(var_B4.Fields.Item("ChkOutTime").Value), 5, 1)))
  loc_1B8FDBF:       var_72C = (var_70C + Space(2))
  loc_1B8FDCC:       var_81C = (CVar(Proc_6_52_EAD4F4(CStr(var_7EC), 3, 1)) + Space(3))
  loc_1B8FDD6:       var_87C = (var_81C + CVar(Proc_6_52_EAD4F4(CStr(Format(var_82C, var_84C)), 8, 1)))
  loc_1B8FDDD:       var_89C = (var_87C + Space(5))
  loc_1B8FDE7:       var_8E4 = (var_89C + CVar(Proc_6_52_EAD4F4(CStr(var_B4.Fields.Item("Person").Value), 5, 1)))
  loc_1B8FDEE:       var_904 = (var_8E4 + Space(4))
  loc_1B8FDF8:       var_928 = (var_904 + CVar(Proc_6_52_EAD4F4(var_11C, 8)))
  loc_1B8FDFF:       var_948 = (var_928 + Space(2))
  loc_1B8FE06:       var_9B0 = (var_948 + Format(CVar(var_B4.Fields.Item("ChkOutDate")), "DD/MM/YYYY"))
  loc_1B8FE0D:       var_9D0 = (var_9B0 + Space(3))
  loc_1B8FE17:       var_B44 = (var_9D0 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_AF0, "0.00")), 8, 1, 1)))
  loc_1B8FE28:       var_BD8 = (Space(3) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_B84, var_BA4)), 8, 1, 1)))
  loc_1B8FE32:       Print 1, var_72C & var_B44 & var_BD8
  loc_1B8FFC3:       var_1EC = (CVar(var_9C) + var_B4.Fields.Item("Person").Value)
  loc_1B8FFC8:       var_9C = CInt(CVar(Proc_6_52_EAD4F4(CStr(var_DA), 3, var_DA)))
  loc_1B8FFDF:       var_86 = (var_86 + 1)
  loc_1B8FFE5:     Else
  loc_1B9001C:       If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1B90025:         var_DA = (var_DA + 1)
  loc_1B90133:         var_30C = IIf((var_B4.Fields.Item("BirthDate").Value <> vbNullString), DateDiff("yyyy", CVar(var_B4.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1), 0)
  loc_1B90439:         var_7EC = IIf((DateDiff("D", CVar(var_B4.Fields.Item("ChkInDate")), CVar(var_B4.Fields.Item("ChkOutDate")), 1, 1) = 0), 1, DateDiff("D", CVar(var_B4.Fields.Item("ChkInDate")), CVar(var_B4.Fields.Item("ChkOutDate")), 1, 1))
  loc_1B90467:         var_82C = CVar((var_118 + var_E4)) 'Double
  loc_1B9046E:         Proc_6_39_E7C810(var_84C, var_82C)
  loc_1B905FB:         var_B10 = IIf((var_E4 > CDbl(0)), (CVar(var_E4) / IIf((var_B4.Fields.Item("Person").Value = 0), 1, CVar(var_B4.Fields.Item("Person")))), 0)
  loc_1B9064D:         Proc_6_39_E7C810(var_BA4, var_E4, 1)
  loc_1B90690:         var_208 = (Space(2) + CVar(Proc_6_52_EAD4F4(CStr(var_DA), 3, var_DA, 1, CVar(CLng(3)))))
  loc_1B90697:         var_228 = (var_208 + Space(2))
  loc_1B906A1:         var_258 = (var_B4.Fields & CVar(Proc_6_52_EAD4F4(CStr(var_DA), 3, var_DA, 1, CVar(CLng(3)))) & " and PC.RoomNo='" + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("GuestName")), var_86, var_9C), &H19, 1)))
  loc_1B906A8:         var_278 = (var_B4.Fields & CVar(Proc_6_52_EAD4F4(CStr(var_DA), 3, var_DA, 1, CVar(CLng(3)))) & " and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" + Space(2))
  loc_1B906B2:         var_340 = (var_278 + CVar(Proc_6_52_EAD4F4(CStr(var_30C), 3)))
  loc_1B906B9:         var_360 = (0 & " AND PC.PAYCode In ('" & CVar(MemVar_1F92070) & "RMCH') GROUP By PC.BILL_NO" + Space(2))
  loc_1B906C3:         var_398 = (DateDiff("yyyy", CVar(var_B4.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1) & "' and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" & Space(2) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Nationality")), 1), &HB)))
  loc_1B906CA:         var_3B8 = (CVar(var_B4.Fields.Item("Nationality")) & var_B4.Fields.Item("FolioNo").Value + Space(5))
  loc_1B906D4:         var_3F0 = (CVar(var_B4.Fields.Item("Nationality")) & var_B4.Fields.Item("FolioNo").Value & " and PC.PAYCode In ('" & CVar(MemVar_1F92070) + CVar(Proc_6_45_EAD428(CStr(var_B4.Fields.Item("RoomNo").Value), 5)))
  loc_1B906DB:         var_418 = (CVar(Proc_6_45_EAD428(CStr(var_B4.Fields.Item("RoomNo").Value), 5)) & "LT' and AMTDR=0)GROUP By PC.Bill_No" + Space(8))
  loc_1B906E5:         var_448 = (Space(8) & CVar(MemVar_1F92078) + CVar(Proc_6_52_EAD4F4(CStr(var_B4.Fields.Item("RoomRate").Value), 7)))
  loc_1B906EC:         var_470 = (var_448 + Space(4))
  loc_1B906F3:         var_4B8 = (var_470 + Format(CVar(var_B4.Fields.Item("ChkInDate")), "DD/MM/YYYY"))
  loc_1B906FA:         var_628 = (var_4B8 + Space(2))
  loc_1B90704:         var_658 = (var_628 + CVar(Proc_6_45_EAD428(CStr(var_B4.Fields.Item("ChkInTime").Value), 5, 1)))
  loc_1B9070B:         var_678 = (var_658 + Space(2))
  loc_1B90712:         var_6B8 = (var_678 + Format(CVar(var_B4.Fields.Item("ChkOutDate")), "DD/MM/YYYY"))
  loc_1B90719:         var_6D8 = (var_6B8 + Space(2))
  loc_1B90723:         var_70C = (var_6D8 + CVar(Proc_6_45_EAD428(CStr(var_B4.Fields.Item("ChkOutTime").Value), 5, 1)))
  loc_1B9072A:         var_72C = (var_70C + Space(2))
  loc_1B90737:         var_81C = (CVar(Proc_6_52_EAD4F4(CStr(var_7EC), 3, 1)) + Space(3))
  loc_1B90741:         var_88C = (var_81C + CVar(Proc_6_52_EAD4F4(CStr(Format(var_84C, "0.00")), 8, 1)))
  loc_1B90748:         var_8C4 = (Space(5) + Space(5))
  loc_1B90752:         var_8F4 = (var_B4.Fields.Item("Person").Value + CVar(Proc_6_52_EAD4F4(CStr(var_B4.Fields.Item("Person").Value), 5, 1)))
  loc_1B90759:         var_918 = (Space(4) + Space(4))
  loc_1B90763:         var_938 = (CVar(Proc_6_52_EAD4F4(var_11C, 8)) + CVar(Proc_6_52_EAD4F4(var_11C, 8)))
  loc_1B9076A:         var_970 = (Space(2) + Space(2))
  loc_1B90771:         var_9C0 = (CVar(var_B4.Fields.Item("ChkOutDate")) + Format(CVar(var_B4.Fields.Item("ChkOutDate")), "DD/MM/YYYY"))
  loc_1B90778:         var_9F8 = (Space(3) + Space(3))
  loc_1B90782:         var_B54 = (var_B4.Fields.Item("Person").Value + CVar(Proc_6_52_EAD4F4(CStr(Format(var_B10, "0.00")), 8, 1, 1)))
  loc_1B90789:         var_B84 = (var_72C & CVar(Proc_6_52_EAD4F4(CStr(Format(var_B10, "0.00")), 8, 1, 1)) + Space(3))
  loc_1B90793:         var_BE8 = (var_B84 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_BA4, "0.00")), 8, 1, 1)))
  loc_1B90797:         var_C14 = var_72C & var_72C & CVar(Proc_6_52_EAD4F4(CStr(Format(var_B10, "0.00")), 8, 1, 1)) & CVar(Proc_6_52_EAD4F4(CStr(Format(var_BA4, "0.00")), 8, 1, 1)) 
  loc_1B9079D:         Print 1, var_C14
  loc_1B90900:       End If
  loc_1B90900:     End If
  loc_1B90907:     var_A4 = (var_A4 + var_E4)
  loc_1B9090D:     var_14C = CVar(CLng(3)) 'Long
  loc_1B90912:     var_16C = 1
  loc_1B90941:     If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1B9094B:       If (var_E4 > CDbl(0)) Then
  loc_1B90955:         var_AC = (var_AC + var_EC)
  loc_1B9095B:       Else
  loc_1B90962:         var_AC = (var_AC + var_118)
  loc_1B90965:       End If
  loc_1B90968:     Else
  loc_1B9096F:       If (var_E4 <> CDbl(0)) Then
  loc_1B90979:         var_AC = (var_AC + var_EC)
  loc_1B9097C:       End If
  loc_1B9097C:     End If
  loc_1B90982:     If (var_86 >= &H41) Then
  loc_1B90987:       var_86 = 0
  loc_1B90990:       var_88 = (var_88 + 1)
  loc_1B909A5:       Print 1, Chr(&HC)
  loc_1B909AE:       ' Referenced from: 1B8EFD9
  loc_1B909AE:     End If
  loc_1B909B1:     var_B4.MoveNext
  loc_1B909B6:     GoTo loc_1B8C6CF
  loc_1B909B9:   End If
  loc_1B909BE:   Print 1, var_C0
  loc_1B909CA:   var_86 = (var_86 + 1)
  loc_1B909D5:   var_194 = "TOTAL -->"
  loc_1B90A08:   var_14C = var_AC
  loc_1B90A10:   var_228 = Format(var_14C, "0.00")
  loc_1B90A40:   var_278 = Space(5)
  loc_1B90A95:   var_208 = (CVar(Proc_6_45_EAD428(CStr(Me.FGrid.TextMatrix)), &HA, var_86, var_88, var_86, var_AC, var_AC)) + Space(&H70))
  loc_1B90A9F:   var_248 = (var_208 + CVar(Proc_6_45_EAD428(CStr(var_228), &HA, 1, 1, var_AC, var_A4)))
  loc_1B90AA6:   var_268 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("GuestName")), var_86, var_9C), &H19, 1)) + Space(4))
  loc_1B90AAD:   var_28C = (Space(2) + var_278)
  loc_1B90AB4:   var_2AC = (var_B4.Fields.Item("BirthDate").Value + Space(&H26))
  loc_1B90ABB:   var_2DC = CVar(Proc_6_52_EAD4F4(CStr(Format(var_A4, "0.00")), 8, 1, 1, var_14C)) 'String
  loc_1B90ABE:   var_2EC = (Date + var_2DC)
  loc_1B90AC4:   Print 1, (var_B4.Fields.Item("BirthDate").Value <> vbNullString)
  loc_1B90B06:   var_86 = (var_86 + 1)
  loc_1B90B0E:   Print 1, var_C0
  loc_1B90B1A:   var_86 = (var_86 + 1)
  loc_1B90B2F:   Print 1, Chr(&H12)
  loc_1B90B3B:   var_14C = CVar(CLng(2)) 'Long
  loc_1B90B40:   var_16C = 1
  loc_1B90B4D:   Set var_180 = Me.FGrid
  loc_1B90B53:   var_190 = var_180.TextMatrix)
  loc_1B90B6F:   If (CStr(var_190) = "Yes") Then
  loc_1B90B7B:     If ((var_86 + &HC) >= &H41) Then
  loc_1B90B80:       var_86 = 0
  loc_1B90B89:       var_88 = (var_88 + 1)
  loc_1B90B8C:     End If
  loc_1B90B8C:   End If
  loc_1B90BA7:   var_1EC = CVar("Select Sum(BillAmOUNt) from Paycharge where Paycode in ('" & MemVar_1F92070 & "LT') and SettleDate between ") 'String
  loc_1B90BAD:   var_14C = var_D0
  loc_1B90BB5:   Proc_6_7_F25D88(var_190, var_14C, var_1EC, var_2DC, -1, var_180, var_88, var_86)
  loc_1B90BD5:   Proc_6_7_F25D88(var_228, var_D8, var_D8 & var_190 & " and ", var_14C, var_86)
  loc_1B90BF9:   var_268 = var_86 & var_228 & " and Docid not in (Select Docid from Paycharge where Paycode in ('" & CVar(MemVar_1F92070) & "LT') and SettleDate between " 
  loc_1B90C08:   Proc_6_7_F25D88(var_278, var_D0, var_268, var_A4)
  loc_1B90C28:   Proc_6_7_F25D88(Date, var_D8, 1 & var_278 & " and ")
  loc_1B90C47:   unk_5407B4.Execute CStr(1 & Date & " and AmtDr=0)"), var_190, 
  loc_1B90C52:   Set var_130 = var_180
  loc_1B90C85:   var_14C = CVar(CLng(2)) 'Long
  loc_1B90C8A:   var_16C = 1
  loc_1B90CB9:   If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1B90CC1:     Print 1, "LUXURY TAX SUMMARY REPORT "
  loc_1B90CCC:     Print 1, "-----------------------------------------------------------"
  loc_1B90D01:     var_1EC = ("PARTICULAR" + Space(6))
  loc_1B90D0A:     var_208 = (var_1EC + "TOTAL AMT.")
  loc_1B90D11:     var_228 = (var_16C & Space(6) + Space(7))
  loc_1B90D1A:     var_238 = (var_228 + "LUX.TAX")
  loc_1B90D21:     var_258 = (var_86 & var_228 + Space(5))
  loc_1B90D2A:     var_268 = (var_86 & var_228 & " and Docid not in (Select Docid from Paycharge where Paycode in ('" & CVar(MemVar_1F92070) + "NET AMOUNT")
  loc_1B90D30:     Print 1, var_268
  loc_1B90D50:     Print 1, "-----------------------------------------------------------"
  loc_1B90D5B:     Print 1, vbNullString
  loc_1B90E18:     var_2CC = CVar((var_108 + var_110)) 'Double
  loc_1B90E41:     var_1EC = ("WITHOUT TAX" + Space(5))
  loc_1B90E4B:     var_238 = (var_1EC + CVar(Proc_6_52_EAD4F4(CStr(Format(var_108, "0.00")), &HA, 1)))
  loc_1B90E52:     var_258 = (var_86 & CVar(Proc_6_52_EAD4F4(CStr(Format(var_108, "0.00")), &HA, 1)) + Space(4))
  loc_1B90E5C:     var_29C = (var_86 & CVar(Proc_6_52_EAD4F4(CStr(Format(var_108, "0.00")), &HA, 1)) & " and Docid not in (Select Docid from Paycharge where Paycode in ('" & CVar(MemVar_1F92070) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_110, "0.00")), &HA, 1, 1)))
  loc_1B90E63:     var_2BC = (1 & Format(var_110, "0.00") & " and " + Space(5))
  loc_1B90E6D:     var_30C = (1 & Date + CVar(Proc_6_52_EAD4F4(CStr(Format(1 & Date & " and AmtDr=0)", "0.00")), &HA, 1, 1)))
  loc_1B90E73:     Print 1, var_30C
  loc_1B90EB6:     Print 1, vbNullString
  loc_1B90FB8:     var_2EC = (var_130.Fields.Item(0).Value + CVar(var_100))
  loc_1B90FE1:     var_1EC = ("WITH TAX" + Space(8))
  loc_1B90FEB:     var_248 = (var_1EC + CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(var_130.Fields.Item(0)), "0.00")), &HA, 1, 1)))
  loc_1B90FF2:     var_268 = (Space(4) + Space(4))
  loc_1B90FFC:     var_2AC = ("0.00" + CVar(Proc_6_52_EAD4F4(CStr(Format(var_100, "0.00")), &HA, 1, 1)))
  loc_1B91003:     var_2CC = (Space(5) + Space(5))
  loc_1B9100D:     var_340 = (1 & Date & " and AmtDr=0)" + CVar(Proc_6_52_EAD4F4(CStr(Format(Format(1 & Date & " and AmtDr=0)", "0.00"), "0.00")), &HA, 1, 1)))
  loc_1B91013:     Print 1, "0.00" & " AND PC.PAYCode In ('" & CVar(MemVar_1F92070) & "RMCH') GROUP By PC.BILL_NO"
  loc_1B91063:     Print 1, vbNullString
  loc_1B9106E:     Print 1, "-----------------------------------------------------------"
  loc_1B910A3:     var_208 = var_130.Fields.Item(0).Value
  loc_1B910C7:     var_218 = (var_208 + CVar(var_108))
  loc_1B91111:     var_28C = CVar((var_110 + var_100)) 'Double
  loc_1B91185:     var_30C = (CVar(var_108) + var_130.Fields.Item(0).Value)
  loc_1B91190:     var_31C = (Format(Format(1 & Date & " and AmtDr=0)", "0.00"), "0.00") + CVar(var_110))
  loc_1B9119B:     var_340 = (CVar(Proc_6_52_EAD4F4(CStr(Format(Format(1 & Date & " and AmtDr=0)", "0.00"), "0.00")), &HA, 1, 1)) + CVar(var_100))
  loc_1B911A2:     var_360 = Format(var_130.Fields.Item(0).Value & " AND PC.PAYCode In ('" & CVar(MemVar_1F92070) & "RMCH') GROUP By PC.BILL_NO", "0.00")
  loc_1B911C4:     var_1EC = ("TOTAL" + Space(&HB))
  loc_1B911CE:     var_258 = (var_1EC + CVar(Proc_6_52_EAD4F4(CStr(Format("0.00", "0.00")), &HA, 1, 1)))
  loc_1B911D5:     var_278 = (Space(4) + Space(4))
  loc_1B911DF:     var_2CC = ("0.00" + CVar(Proc_6_52_EAD4F4(CStr(Format(Format(var_100, "0.00"), "0.00")), &HA, 1, 1)))
  loc_1B911E6:     var_2EC = (1 & Date & " and AmtDr=0)" + Space(5))
  loc_1B911F0:     var_388 = (Format(1 & Date & " and AmtDr=0)", "0.00") + CVar(Proc_6_52_EAD4F4(CStr(var_360), &HA, 1, 1)))
  loc_1B911F6:     Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Nationality")), 1), &HB))
  loc_1B91250:     Print 1, "-----------------------------------------------------------"
  loc_1B91256:   End If
  loc_1B91268:   Print 1, Chr(&HC)
  loc_1B91271: End If
  loc_1B91273: Close 1
  loc_1B912A4: If (MsgBox("Do You want to Print Tax Report", &H24, var_1EC, var_208, "0.00") = 6) Then
  loc_1B912AE:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1B912BE:   Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_1B912C9:   Close 1
  loc_1B912D3:   If (MemVar_1F923B8 = "Y") Then
  loc_1B912EF:     var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1B912F9:   Else
  loc_1B91312:     var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1B91319:   End If
  loc_1B9131C: Else
  loc_1B91323:   Open "C:\reptmp\SCRBILL.BAT" For Output As 1 Len = &HFF
  loc_1B9132C:   Print 1, "Edit C:\reptmp\TEXTFILE.TXT"
  loc_1B91334:   Close 1
  loc_1B9133E:   If (MemVar_1F923B8 = "Y") Then
  loc_1B9135A:     var_98 = CVar(Shell("C:\reptmp\SCRBILL.PIF", 3)) 'Variant
  loc_1B91364:   Else
  loc_1B9137D:     var_98 = CVar(Shell("C:\reptmp\SCRBILL.BAT", 3)) 'Variant
  loc_1B91384:   End If
  loc_1B91384: End If
  loc_1B91389: global_88 = 0
  loc_1B91391: Set var_130 = Nothing
  loc_1B91399: Set var_B4 = Nothing
  loc_1B913A1: Set var_12C = Nothing
  loc_1B913A4: Exit Sub
  loc_1B913A5: ' Referenced from: 1B8C3A8
  loc_1B913A5: Proc_6_60_E62BC4(global_88, 1)
  loc_1B913AF: global_88 = 0
  loc_1B913B2: Exit Sub
End Sub

Public Sub Proc_66_72_1CA0280
  'Data Table: 540784
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_1AC As String
  Dim var_DC As Double
  Dim var_E4 As Double
  Dim var_1B0 As String
  Dim var_208 As String
  Dim var_1C0 As Variant
  Dim var_1F4 As Variant
  Dim var_204 As Variant
  Dim var_174 As Variant
  Dim var_220 As Variant
  Dim var_194 As Variant
  Dim var_240 As Variant
  Dim unk_5407B4 As Connection15
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_260 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_88 As Integer
  Dim var_E6 As Integer
  Dim var_A4 As Double
  Dim var_9C As Integer
  Dim var_AC As Double
  Dim var_C0 As Recordset15
  Dim var_298 As Variant
  Dim var_29C As Variant
  Dim var_2A0 As Variant
  Dim var_2A4 As Variant
  Dim var_2CC As Variant
  Dim var_290 As Variant
  Dim var_2B8 As Variant
  Dim var_2BC As Variant
  Dim var_2D0 As Variant
  Dim var_2B4 As Variant
  Dim var_300 As Variant
  Dim var_310 As Variant
  Dim var_320 As Variant
  Dim var_330 As Variant
  Dim var_2E0 As Variant
  Dim var_340 As Variant
  Dim var_364 As Variant
  Dim var_3A8 As Variant
  Dim var_350 As Variant
  Dim var_374 As Variant
  Dim var_384 As Variant
  Dim var_3A4 As Variant
  Dim var_3DC As Variant
  Dim var_3FC As Variant
  Dim var_40C As Variant
  Dim var_41C As Variant
  Dim var_42C As Variant
  Dim var_43C As Variant
  Dim var_F8 As Double
  Dim var_124 As Double
  Dim var_C8 As Recordset15
  Dim var_F0 As Double
  Dim var_130 As Recordset15
  Dim var_460 As Variant
  Dim var_464 As Fields15
  Dim var_468 As Variant
  Dim var_AE As Integer
  Dim var_45C As Variant
  Dim var_478 As Variant
  Dim var_4AC As Variant
  Dim var_4CC As Variant
  Dim var_504 As Integer
  Dim var_4F0 As Recordset15
  Dim var_4F4 As Fields15
  Dim var_508 As Field20
  Dim var_138 As Recordset15
  Dim var_140 As Recordset15
  Dim var_354 As Fields15
  Dim var_B8 As Double
  Dim var_114 As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_51C As Recordset15
  Dim var_144 As Recordset15
  Dim var_520 As Recordset15
  Dim var_148 As Recordset15
  Dim var_524 As Recordset15
  Dim var_86 As Integer
  Dim var_528 As Recordset15
  Dim var_52C As Recordset15
  Dim var_530 As Recordset15
  loc_1C99A27: var_164 = CVar(CLng(0)) 'Long
  loc_1C99A2C: var_184 = 1
  loc_1C99A4F: var_DC = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1C99A5E: var_164 = CVar(CLng(1)) 'Long
  loc_1C99A63: var_184 = 1
  loc_1C99A86: var_E4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1C99A9D: var_184 = 1
  loc_1C99AB0: var_1A8 = Me.FGrid.TextMatrix)
  loc_1C99ABB: var_1AC = CStr(var_1A8)
  loc_1C99ADE: Set var_1F4 = Me.FGrid
  loc_1C99AF3: var_FC = 1 & CStr(var_1F4.TextMatrix))
  loc_1C99B1B: Set var_198 = Me.Check1
  loc_1C99B21: Call 0.Method_Proc_66_72_1CA02800 (1, var_1F4, var_20E, CVar(CLng(1)), var_184 & var_1AC & " TO ", CVar(CLng(0)), "FROM ")
  loc_1C99B29: var_E4 = var_1F4.Value
  loc_1C99B3F: If (CLng(var_20E) = 0) Then
  loc_1C99B5D:   Call Proc_66_44_1281BC4(global_164, 1, CByte(1))
  loc_1C99B68:   global_148 = var_1AC
  loc_1C99B78:   If (global_88 = 0) Then
  loc_1C99B7B:     Exit Sub
  loc_1C99B7C:   End If
  loc_1C99B7C: End If
  loc_1C99B84: var_164 = var_E4
  loc_1C99B8C: Proc_6_7_F25D88(var_1A8, var_164, " AND RO.ChkOutDate <=", var_1AC, var_184)
  loc_1C99B9F: global_60 = CStr(var_164 & var_1A8)
  loc_1C99BB9: Set var_198 = Me.Check1
  loc_1C99BBF: Call 0.Method_Proc_66_72_1CA02800 (1, var_1F4, var_20E)
  loc_1C99BC7: var_DC = var_1F4.Value
  loc_1C99BDD: If (CLng(var_20E) = 0) Then
  loc_1C99BF8:   var_D0 = var_D0 & " and R.Code in ( " & global_148 & ") "
  loc_1C99C1A:   var_D4 = var_D4 & " and R.Code not in ( " & global_148 & ") "
  loc_1C99C24: End If
  loc_1C99C31: var_174 = "Update PayCharge set GuestProf=GF.GuestProf from GuestFolio GF Where FolioNoDocid=GF.Docid And ISNULL(PayCharge.FolioNoDocid,'')<>'' And PayCharge.SettleDate between "
  loc_1C99C39: var_164 = var_DC
  loc_1C99C41: Proc_6_7_F25D88(var_1A8, var_164, var_174, var_250)
  loc_1C99C49: var_204 = -1 & var_1A8 
  loc_1C99C4D: var_184 = " And "
  loc_1C99C61: Proc_6_7_F25D88(var_230, var_E4, var_164 & var_1A8 & var_184)
  loc_1C99C69: var_240 = var_198 & var_230 
  loc_1C99C77: unk_5407B4.Execute CStr(var_240), var_184, var_164
  loc_1C99C99: If (MemVar_1F923AC = "A") Then
  loc_1C99CB0:   var_204 = CVar("Select Distinct RO.DocId,GF.Vdate,GF.GuestProf,(RO.Adult+RO.Children) As Person,RO.FolioNo,RO.ChkInDate,RO.ChkInTime,RO.ChkOutDate,RO.ChkOutTime,IIF(GF.RODISC>0,(RO.RoomRate-(RO.RoomRate*GF.RODISC/100)),RO.ROOMRATE) AS ROOMRATE,RO.RoomNo,GP.Name AS GuestName,GP.BirthDate,GP.Age,Country.Name As Nationality,GF.RODISC,RO.Type,paycharge.Bill_No,BD.ChkInDAte as ChkinDT,BD.ChkInTime as ChkinTm,BD.ChkOutDate as CHkOutDt,BD.ChkOutTime as CHkOutTm " & "From ((((BillSummary as BD LEFT JOIN RoomOcc AS RO ON BD.FolioNo = RO.FolioNo) Left Join GuestProf GP ON RO.GuestProf=GP.Code) Left Join Country ON GP.Nationality=Country.Code) Left Join GuestFolio GF ON RO.DOCID=GF.DOCID)  LEFT JOIN PayCharge ON (GF.GuestProf = PayCharge.GuestProf) AND (GF.FolioNo = PayCharge.FolioNo) Where  Paycharge.bill_no is not NULL and BD.BillSettleDate between ") 'String
  loc_1C99CBE:   Proc_6_7_F25D88(var_1A8, var_DC, var_DC & var_1A8)
  loc_1C99CDE:   Proc_6_7_F25D88(var_240, var_E4, var_290 & var_1A8 & " And ")
  loc_1C99CE6:   var_250 = -1 & var_240 
  loc_1C99CEA:   var_194 = " and iif(isnull(Paycharge.ModeSet),'',Paycharge.ModeSet)<>'S' AND Paycharge.SettleDate is Not NULL and RO.RoomType ='RO' "
  loc_1C99CFC:   var_270 = var_250 & var_194 & CVar(global_60) 
  loc_1C99D13:   unk_5407B4.Execute CStr(var_270 & " ORDER BY paycharge.Bill_NO,RO.Type"), var_198, 
  loc_1C99D1E:   Set var_C0 = var_198
  loc_1C99D41: Else
  loc_1C99D49:   If (MemVar_1F923AC = "S") Then
  loc_1C99D60:     var_1AC = "Select Distinct RO.DocId,RO.MFolionoDocId,GF.Vdate,GF.GuestProf,Case When IsNull(RO.mFolioNoDocId,'')<>'' Then (Select Sum(Adult+Children) From RoomOccDet Where MFolionoDocId=RO.MFolionoDocId) Else (RO.Adult+RO.Children) End As Person,RO.FolioNo,Case When RO.SNO=(Select Min(SNo) From RoomOccDet Where Docid=RO.DocId) Then RO.ChkInDt Else (Select Top 1 ChkOutDate From RoomOcc Where DocId=RO.DocId And ChngDate<RO.ChngDate Order By Sno Desc)End As ChkInDate,Case When RO.SNO=(Select Min(SNo) From RoomOccDet Where Docid=RO.DocId) Then RO.ChkInTm Else (Select Top 1 ChkOutTime From RoomOcc Where DocId=RO.DocId And ChngDate<RO.ChngDate Order By Sno Desc) End As ChkInTime,RO.ChkOutDate,RO.ChkOutTime, " & "ROOMRATE =case when GF.RODISC>0 then (RO.RoomRate-(RO.RoomRate*GF.RODISC/100)) else RO.ROOMRATE end ,RO.RoomNo,RO.RRTaxInc,RO.RRServiceChrg,GP.ConPrefix,GP.Name AS GuestName,GP.BirthDate,GP.Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality,GF.RODISC,RO.Type,paycharge.Bill_No,Cast(paycharge.Bill_NO As INTEGER) As OBill_No,RO.ChkinDT,RO.ChkinTm,RO.CHkOutDt,RO.CHkOutTm "
  loc_1C99D67:     var_1B0 = CStr(var_270 & " ORDER BY paycharge.Bill_NO,RO.Type") & "From ((((BillSummary as BD LEFT JOIN RoomOccDet AS RO ON BD.FolioNoDocid = RO.Docid AND RO.RoomType ='RO' "
  loc_1C99D78:     var_204 = CVar(var_1B0 & global_60 & " AND BD.BillSettleDate Between ") 'String
  loc_1C99D86:     Proc_6_7_F25D88(var_1A8, var_DC, var_204)
  loc_1C99DA6:     Proc_6_7_F25D88(var_240, var_E4, var_270 & var_1A8 & " And ")
  loc_1C99DAE:     var_250 = -1 & var_240 
  loc_1C99DB2:     var_194 = ") Left Join GuestProf GP ON RO.GuestProf=GP.Code) Left Join Country ON GP.Nationality=Country.Code) Left Join GuestFolio GF ON RO.DOCID=GF.DOCID) LEFT JOIN PayCharge ON (GF.GuestProf = PayCharge.GuestProf) AND (GF.DocId = PayCharge.FolioNoDocId) AND IsNull(Paycharge.bill_no,'')<>'' And IsNull(Paycharge.ModeSet,'')<>'S' AND Paycharge.SettleDate IS NOT NULL ORDER BY OBill_No,RO.Type"
  loc_1C99DC5:     unk_5407B4.Execute CStr(var_250 & var_194), var_198, 
  loc_1C99DD0:     Set var_C0 = var_198
  loc_1C99DF4:   End If
  loc_1C99DF4: End If
  loc_1C99DF6: var_88 = 1
  loc_1C99DFB: var_E6 = 0
  loc_1C99E01: var_A4 = CDbl(0)
  loc_1C99E06: var_9C = 0
  loc_1C99E0C: var_AC = CDbl(0)
  loc_1C99E23: If (var_C0.RecordCount > 0) Then
  loc_1C99E33:   Call Proc_66_55_1181A2C(New)
  loc_1C99E3B:   Set var_13C = var_198
  loc_1C99E3E:   ' Referenced from: 1C9F9E1
  loc_1C99E4D:   If Not(Me.Recordset15.EOF) Then
  loc_1C99EDC:     var_250 = (var_C0.Fields.Item("Type").Value = "C") And (var_C0.Fields.Item("mFolioNoDocid").Value <> var_C0.Fields.Item("DocID").Value)
  loc_1C99EFA:     If CBool(var_250) Then
  loc_1C99F44:       Proc_6_7_F25D88(var_204, CVar(var_C0.Fields.Item("ChkInDate")), "sELECT Min(Sno) FROM ROOMOCC WHERE chkindate=", var_2B4, -1, var_2B8, var_2BC)
  loc_1C99FBA:       var_280 = 0 & var_204 & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DocId='" & var_C0.Fields.Item("DocID").Value 
  loc_1C99FD1:       unk_5407B4.Execute CStr(var_280 & "'"), var_2D0, var_2E0
  loc_1C99FD9:       var_198 = var_2B8.Fields
  loc_1C99FE1:       var_9C = var_2BC.Item(var_AC)
  loc_1C99FE9:       var_A4 = var_2D0.Value
  loc_1C9A02A:       If (var_2E0 = 1) Then
  loc_1C9A041:         var_204 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1C9A0AE:         var_260 = var_204 & var_C0.Fields.Item("ChkOutDate").Value & " " & var_C0.Fields.Item("ChkOutTime").Value & "',120) AND  PC.Bill_No='" 
  loc_1C9A0DD:         var_290 = -1 & CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), var_260, var_350)) 
  loc_1C9A114:         var_300 = CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), var_260, var_350)) & "'" & "' AND PC.FOLIONODOCID='" & var_C0.Fields.Item("DocID").Value 
  loc_1C9A13E:         unk_5407B4.Execute CStr(var_300 & "'" & CVar(var_D0) & " GROUP By PC.Bill_No "), var_2D0, 
  loc_1C9A149:         Set var_C8 = var_2D0
  loc_1C9A18A:       Else
  loc_1C9A1C8:         var_29C = var_C0.Fields.Item("ChkInTime")
  loc_1C9A1DC:         var_230 = "hh:nn:ss"
  loc_1C9A1EC:         var_240 = Format(CVar(var_29C), var_230)
  loc_1C9A2BE:         var_260 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) Between Convert(datetime,'") 'String
  loc_1C9A2F4:         var_330 = var_260 & var_C0.Fields.Item("ChkInDate").Value & " " & var_240 & "',120) and Convert(datetime,'" & var_C0.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1C9A304:         var_374 = CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), 1, 1)) 'String
  loc_1C9A320:         var_3FC = var_330 & "',120) AND  PC.Bill_No='" & var_374 & "' AND PC.FOLIONODOCID='" & var_C0.Fields.Item("DocID").Value & "'" 
  loc_1C9A32A:         var_41C = var_3FC & CVar(var_D0) 
  loc_1C9A333:         var_43C = var_41C & " GROUP By PC.Bill_No " 
  loc_1C9A341:         unk_5407B4.Execute CStr(var_43C), var_45C, -1
  loc_1C9A34C:         Set var_C8 = var_460
  loc_1C9A3A6:       End If
  loc_1C9A3A9:     Else
  loc_1C9A3AF:       var_1C0 = 0
  loc_1C9A40B:       unk_5407B4.Execute CStr("sELECT COUNT(*) FROM ROomOccDet WHERE DocId='" & var_C0.Fields.Item("DocID").Value & "'"), var_230, -1
  loc_1C9A413:       var_298 = var_298.Fields
  loc_1C9A41B:       var_1C0 = var_29C.Item(var_29C)
  loc_1C9A423:       var_2A0 = var_2A0.Value
  loc_1C9A479:       var_2D0 = var_C0.Fields.Item("DocID")
  loc_1C9A4BC:       If CBool((var_240 > 1) And (var_C0.Fields.Item("mFolioNoDocid").Value <> var_2D0.Value)) Then
  loc_1C9A521:         var_240 = Format(CVar(var_C0.Fields.Item("ChkInTime")), "hh:nn:ss")
  loc_1C9A535:         var_2A0 = var_C0.Fields
  loc_1C9A563:         var_2B8 = var_C0.Fields
  loc_1C9A56B:         var_2BC = var_2B8.Item("DocID")
  loc_1C9A58C:         var_260 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.BillAmount END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.BillAmount END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) > Convert(datetime,'") 'String
  loc_1C9A5A2:         var_270 = var_2D0.Value & var_C0.Fields.Item("ChkInDate").Value & " " & var_240 
  loc_1C9A5AB:         var_280 = var_270 & "',120) AND  PC.Bill_No='" 
  loc_1C9A5B5:         var_2E0 = var_280 & CVar(Proc_6_38_E68A98(CVar(var_2A0.Item("Bill_no")), 1, 1, var_240)) 
  loc_1C9A5C5:         var_320 = var_2E0 & "' AND PC.FOLIONODOCID='" & var_2BC.Value 
  loc_1C9A5EF:         unk_5407B4.Execute CStr(var_320 & "'" & CVar(var_D0) & " GROUP By PC.Bill_No "), var_374, -1
  loc_1C9A5FA:         Set var_C8 = var_2D0
  loc_1C9A641:       Else
  loc_1C9A67D:         If CBool(var_C0.Fields.Item("Type").Value <> "C") Then
  loc_1C9A6E8:           If (var_C0.Fields.Item("mFolioNoDocid").Value = var_C0.Fields.Item("DocID").Value) Then
  loc_1C9A6FF:             var_1AC = "Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.BillAmount END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.BillAmount END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1C9A72A:             var_1B0 = Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), CStr(var_320 & "'" & CVar(var_D0) & " GROUP By PC.Bill_No "), var_270, -1, var_2A0)
  loc_1C9A735:             var_220 = CVar(var_2D0 & Proc_6_38_E68A98(CVar(var_2A0.Item("Bill_no")), 1, 1, var_240) & "' AND PC.FOLIONODOCID='") 'String
  loc_1C9A78C:             unk_5407B4.Execute CStr(var_220 & var_C0.Fields.Item("DocID").Value & "'" & CVar(var_D0) & " GROUP By PC.Bill_No "), var_460, 1
  loc_1C9A797:             Set var_C8 = var_2A0
  loc_1C9A7C6:           Else
  loc_1C9A7DA:             var_1AC = "Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.BillAmount END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.BillAmount END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1C9A805:             var_1B0 = Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), CStr(var_320 & "'" & CVar(var_D0) & " GROUP By PC.Bill_No "), var_2E0)
  loc_1C9A809:             var_208 = -1 & var_1B0
  loc_1C9A810:             var_220 = CVar(var_2D0 & Proc_6_38_E68A98(CVar(var_2A0.Item("Bill_no")), 1, 1, var_220 & var_C0.Fields.Item("DocID").Value & "'") & "' AND PC.FOLIONODOCID='") 'String
  loc_1C9A835:             var_204 = var_C0.Fields.Item("DocID").Value
  loc_1C9A883:             Proc_6_7_F25D88(var_280, CVar(var_C0.Fields.Item("ChkInDate")), var_220 & var_204 & "'" & CVar(var_D0) & " AND vdate >= ")
  loc_1C9A894:             var_2B4 = var_2B8 & var_280 & " GROUP By PC.Bill_No " 
  loc_1C9A8A2:             unk_5407B4.Execute CStr(var_2B4), 1, 
  loc_1C9A8AD:             Set var_C8 = var_2B8
  loc_1C9A8E3:           End If
  loc_1C9A8E3:         End If
  loc_1C9A8E3:       End If
  loc_1C9A8E3:     End If
  loc_1C9A8E6:     var_F8 = CDbl(0)
  loc_1C9A8EC:     var_124 = CDbl(0)
  loc_1C9A8F6:     If (var_C8 Is Nothing) Then
  loc_1C9A8F9:       GoTo loc_1C9F9D9
  loc_1C9A8FC:     End If
  loc_1C9A910:     If (var_C8.RecordCount > 0) Then
  loc_1C9A93E:       var_F0 = CSng(var_C8.Fields.Item("LuxuryTax").Value)
  loc_1C9A9D7:       var_250 = (var_C0.Fields.Item("Type").Value = "C") And (var_C0.Fields.Item("mFolioNoDocid").Value <> var_C0.Fields.Item("DocID").Value)
  loc_1C9A9F5:       If CBool(var_250) Then
  loc_1C9AA3F:         Proc_6_7_F25D88(var_204, CVar(var_C0.Fields.Item("ChkInDate")), "sELECT Min(Sno) FROM ROOMOCC WHERE chkindate=", var_2B4, -1, var_2B8, var_2BC)
  loc_1C9AAB5:         var_280 = 0 & var_204 & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C0.Fields.Item("DocID").Value 
  loc_1C9AACC:         unk_5407B4.Execute CStr(var_280 & "'"), var_2D0, var_2E0
  loc_1C9AAD4:         var_F0 = var_2B8.Fields
  loc_1C9AADC:         var_F8 = var_2BC.Item(var_124)
  loc_1C9AAE4:          = var_2D0.Value
  loc_1C9AB25:         If (var_2E0 = 1) Then
  loc_1C9AB7A:           var_230 = "hh:nn:ss"
  loc_1C9ABB5:           Proc_6_7_F25D88(var_2B4, CVar(var_C0.Fields.Item("ChkInDate")))
  loc_1C9ABE0:           Proc_6_7_F25D88(var_320, CVar(var_C0.Fields.Item("ChkOutDate")))
  loc_1C9AC4B:           var_260 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1C9AC56:           var_204 = var_C0.Fields.Item("ChkOutDate").Value & " " 
  loc_1C9AC61:           var_270 = 0 & var_204 & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_204 & Format(CVar(var_C0.Fields.Item("ChkOutTime")), var_230) 
  loc_1C9AC94:           var_384 = var_270 & "',120) AND PC.VDATE BETWEEN " & var_2B4 & " AND " & var_320 & " AND  PC.Bill_No='" & CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), 1)) 
  loc_1C9ACAD:           var_3FC = var_384 & "' and PC.FOLIONODOCID='" & var_C0.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No" 
  loc_1C9ACBB:           unk_5407B4.Execute CStr(var_3FC), var_41C, -1
  loc_1C9ACC6:           Set var_130 = var_460
  loc_1C9AD2E:           If (var_130.RecordCount > 0) Then
  loc_1C9AD57:             Proc_6_39_E7C810(var_204, CVar(var_130.Fields.Item("LuxuryTax")))
  loc_1C9AD93:             Proc_6_39_E7C810(var_204, CVar(var_130.Fields.Item("LuxuryTax")), CSng(var_204))
  loc_1C9ADC1:             Proc_6_39_E7C810(var_230, CVar(var_C8.Fields.Item("TotalTax")), var_204)
  loc_1C9ADDD:             If (var_460 > var_230) Then
  loc_1C9AE06:               Proc_6_39_E7C810(var_204, CVar(var_130.Fields.Item("LuxuryTax")))
  loc_1C9AE34:               Proc_6_39_E7C810(var_230, CVar(var_C8.Fields.Item("TotalTax")))
  loc_1C9AE3C:               var_240 = (var_204 - var_230)
  loc_1C9AE41:               var_124 = CSng(Format(CVar(var_C0.Fields.Item("ChkOutTime")), var_230))
  loc_1C9AE59:             Else
  loc_1C9AE5C:               var_124 = CDbl(0)
  loc_1C9AE5F:             End If
  loc_1C9AEEC:             Proc_6_7_F25D88(var_2B4, CVar(var_C0.Fields.Item("ChkInDate")), 1, 1)
  loc_1C9AF17:             Proc_6_7_F25D88(var_320, CVar(var_C0.Fields.Item("ChkOutDate")), var_124)
  loc_1C9AF74:             var_40C = 0
  loc_1C9AF91:             var_260 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1C9AFA7:             var_270 = 0 & var_C0.Fields.Item("ChkOutDate").Value & " " & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C0.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1C9AFD7:             var_374 = CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), var_124)) 'String
  loc_1C9AFE3:             var_3A4 = var_270 & "',120) AND PC.VDATE BETWEEN " & var_2B4 & " AND " & var_320 & " AND  PC.Bill_No='" & var_374 & "' and PC.FOLIONODOCID='" 
  loc_1C9AFEA:             var_3DC = var_3A4 & var_C0.Fields.Item("DocID").Value 
  loc_1C9B001:             unk_5407B4.Execute CStr(var_3DC & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_41C, -1
  loc_1C9B009:             var_460 = var_460.Fields
  loc_1C9B011:             var_40C = var_464.Item(var_464)
  loc_1C9B019:             var_468 = var_468.Value
  loc_1C9B022:             var_AE = CInt(var_43C)
  loc_1C9B07F:           Else
  loc_1C9B082:             var_F8 = CDbl(0)
  loc_1C9B087:             var_AE = 0
  loc_1C9B08A:           End If
  loc_1C9B08D:         Else
  loc_1C9B0DF:           var_230 = "hh:nn:ss"
  loc_1C9B181:           Proc_6_7_F25D88(var_374, CVar(var_C0.Fields.Item("ChkInDate")), 1, 1, 1, 1)
  loc_1C9B1AC:           Proc_6_7_F25D88(var_3DC, CVar(var_C0.Fields.Item("ChkOutDate")), var_AE, var_F8)
  loc_1C9B1D0:           var_43C = CVar(var_C0.Fields.Item("Bill_no")) 'Address
  loc_1C9B217:           var_260 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) Between Convert(datetime,'") 'String
  loc_1C9B222:           var_204 = var_C0.Fields.Item("ChkInDate").Value & " " 
  loc_1C9B22D:           var_270 = 0 & var_204 & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_204 & Format(CVar(var_C0.Fields.Item("ChkInTime")), var_230) 
  loc_1C9B24D:           var_330 = var_270 & "',120) and Convert(datetime,'" & var_C0.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1C9B280:           var_478 = var_330 & "',120) AND PC.VDATE BETWEEN " & var_374 & " AND " & var_3DC & " AND  PC.Bill_No='" & CVar(Proc_6_38_E68A98(var_43C, var_AE)) 
  loc_1C9B299:           var_4CC = var_478 & "' and PC.FOLIONODOCID='" & var_C0.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No" 
  loc_1C9B2A7:           unk_5407B4.Execute CStr(var_4CC), var_4EC, -1
  loc_1C9B2B2:           Set var_130 = var_4F0
  loc_1C9B330:           If (var_130.RecordCount > 0) Then
  loc_1C9B359:             Proc_6_39_E7C810(var_204, CVar(var_130.Fields.Item("LuxuryTax")), var_4F0)
  loc_1C9B395:             Proc_6_39_E7C810(var_204, CVar(var_130.Fields.Item("LuxuryTax")), CSng(var_204))
  loc_1C9B3C3:             Proc_6_39_E7C810(var_230, CVar(var_C8.Fields.Item("TotalTax")), var_204)
  loc_1C9B3CB:             var_240 = (var_43C - var_230)
  loc_1C9B3E3:             If CBool(Format(CVar(var_C0.Fields.Item("ChkInTime")), var_230)) Then
  loc_1C9B40C:               Proc_6_39_E7C810(var_204, CVar(var_130.Fields.Item("LuxuryTax")))
  loc_1C9B43A:               Proc_6_39_E7C810(var_230, CVar(var_C8.Fields.Item("TotalTax")))
  loc_1C9B442:               var_240 = (var_204 - var_230)
  loc_1C9B447:               var_124 = CSng(Format(CVar(var_C0.Fields.Item("ChkInTime")), var_230))
  loc_1C9B45F:             Else
  loc_1C9B462:               var_124 = CDbl(0)
  loc_1C9B465:             End If
  loc_1C9B4A3:             var_29C = var_C0.Fields.Item("ChkInTime")
  loc_1C9B4B7:             var_230 = "hh:nn:ss"
  loc_1C9B4C7:             var_240 = Format(CVar(var_29C), var_230)
  loc_1C9B559:             Proc_6_7_F25D88(var_374, CVar(var_C0.Fields.Item("ChkInDate")), 1, 1, 1)
  loc_1C9B584:             Proc_6_7_F25D88(var_3DC, CVar(var_C0.Fields.Item("ChkOutDate")), 1)
  loc_1C9B598:             var_460 = var_C0.Fields
  loc_1C9B5A0:             var_464 = var_460.Item("Bill_no")
  loc_1C9B5E1:             var_504 = 0
  loc_1C9B5FE:             var_260 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) Between Convert(datetime,'") 'String
  loc_1C9B614:             var_270 = 0 & var_C0.Fields.Item("ChkInDate").Value & " " & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C0.Fields.Item("ChkInDate").Value & " " & var_240 
  loc_1C9B634:             var_330 = var_270 & "',120) and Convert(datetime,'" & var_C0.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1C9B63D:             var_350 = var_330 & "',120) AND PC.VDATE BETWEEN " 
  loc_1C9B664:             var_45C = CVar(Proc_6_38_E68A98(CVar(var_464), var_124)) 'String
  loc_1C9B677:             var_4AC = var_350 & var_374 & " AND " & var_3DC & " AND  PC.Bill_No='" & var_45C & "' and PC.FOLIONODOCID='" & var_C0.Fields.Item("DocID").Value 
  loc_1C9B68E:             unk_5407B4.Execute CStr(var_4AC & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_4EC, -1
  loc_1C9B696:             var_4F0 = var_4F0.Fields
  loc_1C9B69E:             var_504 = var_4F4.Item(var_4F4)
  loc_1C9B6A6:             var_508 = var_508.Value
  loc_1C9B6AF:             var_AE = CInt(var_518)
  loc_1C9B722:           Else
  loc_1C9B725:             var_F8 = CDbl(0)
  loc_1C9B72A:             var_AE = 0
  loc_1C9B72D:           End If
  loc_1C9B72D:         End If
  loc_1C9B730:       Else
  loc_1C9B736:         var_1C0 = 0
  loc_1C9B792:         unk_5407B4.Execute CStr("sELECT COUNT(*) FROM RoomOccDet WHERE Docid='" & var_C0.Fields.Item("DocID").Value & "'"), var_230, -1
  loc_1C9B79A:         var_298 = var_298.Fields
  loc_1C9B7A2:         var_1C0 = var_29C.Item(var_29C)
  loc_1C9B7AA:         var_2A0 = var_2A0.Value
  loc_1C9B800:         var_2D0 = var_C0.Fields.Item("DocID")
  loc_1C9B843:         If CBool((var_240 > 1) And (var_C0.Fields.Item("mFolioNoDocid").Value <> var_2D0.Value)) Then
  loc_1C9B898:           var_230 = "hh:nn:ss"
  loc_1C9B8A8:           var_240 = Format(CVar(var_C0.Fields.Item("ChkInTime")), var_230)
  loc_1C9B8BC:           var_2A0 = var_C0.Fields
  loc_1C9B8CC:           var_290 = CVar(var_2A0.Item("Bill_no")) 'Address
  loc_1C9B8EA:           var_2B8 = var_C0.Fields
  loc_1C9B913:           var_260 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS TotalTax,Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(PC.Vdate as varchar(11))+' '+vtime,120) > Convert(datetime,'") 'String
  loc_1C9B91E:           var_204 = var_C0.Fields.Item("ChkInDate").Value & " " 
  loc_1C9B925:           var_250 = var_204 & var_240 
  loc_1C9B945:           var_300 = var_2D0.Value & var_250 & "',120) AND PC.Bill_No='" & CVar(Proc_6_38_E68A98(var_290, 1, 1, var_240)) & "' AND PC.FOLIONODOCID='" 
  loc_1C9B963:           unk_5407B4.Execute CStr(var_300 & var_2B8.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No"), var_350, -1
  loc_1C9B96E:           Set var_130 = var_2D0
  loc_1C9B9C2:           If (var_130.RecordCount > 0) Then
  loc_1C9B9EB:             Proc_6_39_E7C810(var_204, CVar(var_130.Fields.Item("TotalTax")), var_2D0)
  loc_1C9B9F4:             var_F8 = CSng(var_204)
  loc_1C9BA27:             Proc_6_39_E7C810(var_204, CVar(var_130.Fields.Item("TotalTax")), var_F8)
  loc_1C9BA55:             Proc_6_39_E7C810(var_230, CVar(var_C8.Fields.Item("TotalTax")), var_204)
  loc_1C9BA71:             If (var_AE > var_230) Then
  loc_1C9BA9A:               Proc_6_39_E7C810(var_204, CVar(var_130.Fields.Item("TotalTax")))
  loc_1C9BAC8:               Proc_6_39_E7C810(var_230, CVar(var_C8.Fields.Item("TotalTax")), var_204)
  loc_1C9BAD0:               var_240 = (var_F8 - var_230)
  loc_1C9BAD5:               var_124 = CSng(var_240)
  loc_1C9BAED:             Else
  loc_1C9BAF0:               var_124 = CDbl(0)
  loc_1C9BAF3:             End If
  loc_1C9BB19:             Proc_6_39_E7C810(var_204, CVar(var_130.Fields.Item("TotDays")), var_124)
  loc_1C9BB22:             var_AE = CInt(var_204)
  loc_1C9BB32:           Else
  loc_1C9BB35:             var_F8 = CDbl(0)
  loc_1C9BB3A:             var_AE = 0
  loc_1C9BB3D:           End If
  loc_1C9BB40:         Else
  loc_1C9BB7C:           If CBool(var_C0.Fields.Item("Type").Value <> "C") Then
  loc_1C9BBE7:             If (var_C0.Fields.Item("mFolioNoDocid").Value = var_C0.Fields.Item("DocID").Value) Then
  loc_1C9BBFE:               var_1AC = "Select SUM(PC.AMTDR-PC.AMTCR) AS TotalTax,Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1C9BC29:               var_1B0 = Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), CStr(var_300 & var_2B8.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No"), var_250, -1, var_2A0)
  loc_1C9BC61:               var_230 = CVar(var_AE & Proc_6_38_E68A98(var_290, 1, 1, var_240) & "' and PC.FOLIONODOCID='") & var_C0.Fields.Item("DocID").Value 
  loc_1C9BC78:               unk_5407B4.Execute CStr(var_230 & "' and R.Nature='Room Charge' GROUP By PC.Bill_No"), var_F8, var_AE
  loc_1C9BC83:               Set var_138 = var_2A0
  loc_1C9BCAE:             Else
  loc_1C9BCC2:               var_1AC = "Select SUM(PC.AMTDR-PC.AMTCR) AS TotalTax,Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1C9BCED:               var_1B0 = Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), CStr(var_300 & var_2B8.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No"), var_290, -1)
  loc_1C9BCF8:               var_220 = CVar(var_2B8 & Proc_6_38_E68A98(var_290, 1, 1, var_230 & "' and R.Nature='Room Charge' GROUP By PC.Bill_No") & "' and PC.FOLIONODOCID='") 'String
  loc_1C9BD1D:               var_204 = var_C0.Fields.Item("DocID").Value
  loc_1C9BD25:               var_230 = var_220 & var_204 
  loc_1C9BD58:               Proc_6_7_F25D88(var_2D0.Value, CVar(var_C0.Fields.Item("ChkInDate")), var_230 & "' And PC.Vdate >= ")
  loc_1C9BD69:               var_280 = var_124 & var_2D0.Value & " And R.Nature='Room Charge' GROUP By PC.Bill_No" 
  loc_1C9BD77:               unk_5407B4.Execute CStr(var_280), var_AE, 
  loc_1C9BD82:               Set var_138 = var_2B8
  loc_1C9BDB4:             End If
  loc_1C9BDC8:             If (var_138.RecordCount > 0) Then
  loc_1C9BDEA:               var_1A8 = CVar(var_138.Fields.Item("TotalTax")) 'Address
  loc_1C9BDF1:               Proc_6_39_E7C810(var_204)
  loc_1C9BE2D:               Proc_6_39_E7C810(var_204, CVar(var_138.Fields.Item("TotalTax")))
  loc_1C9BE5B:               Proc_6_39_E7C810(var_230, CVar(var_C8.Fields.Item("TotalTax")), var_204)
  loc_1C9BE77:               If (CSng(var_204) > var_230) Then
  loc_1C9BEA0:                 Proc_6_39_E7C810(var_204, CVar(var_138.Fields.Item("TotalTax")))
  loc_1C9BEBF:                 var_29C = var_C8.Fields.Item("TotalTax")
  loc_1C9BECE:                 Proc_6_39_E7C810(var_230, CVar(var_29C))
  loc_1C9BED6:                 var_240 = (var_204 - var_230)
  loc_1C9BEDB:                 var_124 = CSng(var_230 & "' And PC.Vdate >= ")
  loc_1C9BEF3:               Else
  loc_1C9BEF6:                 var_124 = CDbl(0)
  loc_1C9BEF9:               End If
  loc_1C9BF1F:               Proc_6_39_E7C810(var_204, CVar(var_138.Fields.Item("TotDays")), var_124)
  loc_1C9BF28:               var_AE = CInt(var_204)
  loc_1C9BF38:             Else
  loc_1C9BF3B:               var_F8 = CDbl(0)
  loc_1C9BF40:               var_AE = 0
  loc_1C9BF43:             End If
  loc_1C9BF46:           Else
  loc_1C9BF49:           Else
  loc_1C9BF49:           End If
  loc_1C9BF49:         End If
  loc_1C9BF4C:       Else
  loc_1C9BF4F:         var_F0 = CDbl(0)
  loc_1C9BF58:         var_1C0 = 0
  loc_1C9BFB4:         unk_5407B4.Execute CStr("sELECT COUNT(*) FROM RoomOcc WHERE DOCID='" & var_C0.Fields.Item("DocID").Value & "'"), var_230, -1
  loc_1C9BFBC:         var_298 = var_298.Fields
  loc_1C9BFC4:         var_1C0 = var_29C.Item(var_29C)
  loc_1C9BFCC:         var_2A0 = var_2A0.Value
  loc_1C9BFF0:         var_2A4 = var_C0.Fields
  loc_1C9BFF8:         var_2B8 = var_2A4.Item("mFolioNoDocid")
  loc_1C9C036:         var_290 = (var_230 & "' And PC.Vdate >= " > 1) And (var_2B8.Value <> var_C0.Fields.Item("DocID").Value)
  loc_1C9C065:         If CBool(var_290) Then
  loc_1C9C0BF:           var_220 = CVar("Select Count(*) from PayCharge where PayCode='" & MemVar_1F92070 & "LT' And FOLIONODOCID='") & var_C0.Fields.Item("DocID").Value 
  loc_1C9C0F4:           var_250 = CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), var_220 & "' and Bill_no='", var_280, -1, var_2A0, var_2A4)) 'String
  loc_1C9C100:           var_270 = 0 & (var_220 & "' and Bill_no='" & "' And PC.Vdate >= " > 1) & "'" 
  loc_1C9C10E:           unk_5407B4.Execute CStr(var_270), var_2B8, var_290
  loc_1C9C116:           var_240 = var_2A0.Fields
  loc_1C9C11E:           var_AE = var_2A4.Item(var_F0)
  loc_1C9C126:            = var_2B8.Value
  loc_1C9C163:           If (var_290 = 0) Then
  loc_1C9C17A:             var_1AC = "Select (ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE  PC.Bill_No='"
  loc_1C9C1A5:             var_1B0 = Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), "Select Count(*) from PayCharge where PayCode='" & MemVar_1F92070, var_270)
  loc_1C9C1A9:             var_208 = -1 & var_1B0
  loc_1C9C1B0:             var_220 = CVar(var_2B8 & Proc_6_38_E68A98(var_290, 1, 1, var_220 & "' and Bill_no='" & "' and R.Nature='Room Charge' GROUP By PC.Bill_No") & "' and PC.FOLIONODOCID='") 'String
  loc_1C9C1D5:             var_204 = var_C0.Fields.Item("DocID").Value
  loc_1C9C207:             unk_5407B4.Execute CStr(var_220 & var_204 & "' and PC.PAYCode in ('" & CVar(MemVar_1F92070) & "LT') GROUP By PC.Bill_No"), var_2A0, 
  loc_1C9C212:             Set var_140 = var_2A0
  loc_1C9C252:             If (var_140.RecordCount > 0) Then
  loc_1C9C274:               var_1A8 = CVar(var_140.Fields.Item("TotalTax")) 'Address
  loc_1C9C27B:               Proc_6_39_E7C810(var_204)
  loc_1C9C284:               var_F8 = CSng(var_204)
  loc_1C9C294:             Else
  loc_1C9C297:               var_F8 = CDbl(0)
  loc_1C9C29A:             End If
  loc_1C9C29D:           Else
  loc_1C9C316:             var_2A0 = var_C0.Fields
  loc_1C9C326:             var_290 = var_2A0.Item("ChkOutDate").Value
  loc_1C9C33A:             var_2B8 = var_C0.Fields
  loc_1C9C342:             var_2BC = var_2B8.Item("ChkOutTime")
  loc_1C9C35F:             var_2E0 = CVar(var_2BC) 'Address
  loc_1C9C37A:             var_2D0 = var_C0.Fields
  loc_1C9C382:             var_354 = var_2D0.Item("Bill_no")
  loc_1C9C38A:             var_364 = CVar(var_354) 'Address
  loc_1C9C3D1:             var_260 = CVar("Select (ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE  Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) Between Convert(datetime,'") 'String
  loc_1C9C3DC:             var_204 = var_C0.Fields.Item("ChkInDate").Value & " " 
  loc_1C9C3E3:             var_250 = var_204 & Format(CVar(var_C0.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1C9C3E7:             var_270 = CVar(var_C0.Fields.Item("ChkInTime")) & var_204 & "' and PC.PAYCode in ('" & CVar(MemVar_1F92070) & "LT') GROUP By PC.Bill_No" & var_250 
  loc_1C9C3FC:             var_2B4 = var_290 & " " 
  loc_1C9C410:             var_350 = var_270 & "',120) and Convert(datetime,'" & var_2B4 & Format(var_2E0, "hh:nn:ss") & "',120) AND PC.Bill_No='" 
  loc_1C9C42A:             var_3DC = var_350 & CVar(Proc_6_38_E68A98(var_364, 1, 1, 1)) & "' and PC.FOLIONODOCID='" & var_C0.Fields.Item("DocID").Value 
  loc_1C9C43D:             var_41C = var_3DC & "' and PC.PAYCode in ('" & CVar(MemVar_1F92070) 
  loc_1C9C446:             var_43C = var_41C & "LT') GROUP By PC.Bill_No" 
  loc_1C9C454:             unk_5407B4.Execute CStr(var_43C), var_45C, -1
  loc_1C9C45F:             Set var_140 = var_460
  loc_1C9C4CD:             If (var_140.RecordCount > 0) Then
  loc_1C9C4F6:               Proc_6_39_E7C810(var_204, CVar(var_140.Fields.Item("TotalTax")), var_460, 1)
  loc_1C9C4FF:               var_F8 = CSng(var_204)
  loc_1C9C50F:             Else
  loc_1C9C512:               var_F8 = CDbl(0)
  loc_1C9C515:             End If
  loc_1C9C515:           End If
  loc_1C9C518:         Else
  loc_1C9C554:           If CBool(var_C0.Fields.Item("Type").Value <> "C") Then
  loc_1C9C5BF:             If (var_C0.Fields.Item("mFolioNoDocid").Value = var_C0.Fields.Item("DocID").Value) Then
  loc_1C9C5D6:               var_1AC = "Select (ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1C9C601:               var_1B0 = Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), CStr(var_43C), var_250, -1, var_2A0)
  loc_1C9C639:               var_230 = CVar(var_F8 & Proc_6_38_E68A98(var_364, 1, 1, 1) & "' and PC.FOLIONODOCID='") & var_C0.Fields.Item("DocID").Value 
  loc_1C9C650:               unk_5407B4.Execute CStr(var_230 & "' And R.Nature='Room Charge' GROUP By PC.Bill_No"), var_F8, var_F8
  loc_1C9C65B:               Set var_140 = var_2A0
  loc_1C9C686:             Else
  loc_1C9C69A:               var_1AC = "Select (ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1C9C6BC:               var_1A8 = CVar(var_C0.Fields.Item("Bill_no")) 'Address
  loc_1C9C6C5:               var_1B0 = Proc_6_38_E68A98(var_1A8, CStr(var_43C), var_290, -1)
  loc_1C9C6F5:               var_204 = var_C0.Fields.Item("DocID").Value
  loc_1C9C730:               Proc_6_7_F25D88(CVar(var_2B8 & Proc_6_38_E68A98(var_364, 1, 1, 1) & "' and PC.FOLIONODOCID='") & var_204 & "' and PC.PAYCode in ('" & CVar(MemVar_1F92070) & "LT') GROUP By PC.Bill_No", CVar(var_C0.Fields.Item("ChkInDate")), CVar(var_2B8 & Proc_6_38_E68A98(var_364, 1, 1, 1) & "' and PC.FOLIONODOCID='") & var_204 & "' And vdate >= ")
  loc_1C9C738:               var_270 = var_F8 & CVar(var_2B8 & Proc_6_38_E68A98(var_364, 1, 1, 1) & "' and PC.FOLIONODOCID='") & var_204 & "' and PC.PAYCode in ('" & CVar(MemVar_1F92070) & "LT') GROUP By PC.Bill_No" 
  loc_1C9C74F:               unk_5407B4.Execute CStr(var_270 & " And R.Nature='Room Charge' GROUP By PC.Bill_No"), var_1A8, 
  loc_1C9C75A:               Set var_140 = var_2B8
  loc_1C9C78C:             End If
  loc_1C9C7A0:             If (var_140.RecordCount > 0) Then
  loc_1C9C7C2:               var_1A8 = CVar(var_140.Fields.Item("TotalTax")) 'Address
  loc_1C9C7C9:               Proc_6_39_E7C810(var_204)
  loc_1C9C7D2:               var_F8 = CSng(var_204)
  loc_1C9C7E2:             Else
  loc_1C9C7E5:               var_F8 = CDbl(0)
  loc_1C9C7E8:             End If
  loc_1C9C7E8:           End If
  loc_1C9C7E8:         End If
  loc_1C9C7E8:       End If
  loc_1C9C7EF:       If (var_F0 = CDbl(0)) Then
  loc_1C9C87E:         var_250 = (var_C0.Fields.Item("Type").Value = "C") And (var_C0.Fields.Item("mFolioNoDocid").Value <> var_C0.Fields.Item("DocID").Value)
  loc_1C9C89C:         If CBool(var_250) Then
  loc_1C9C8E6:           Proc_6_7_F25D88(var_204, CVar(var_C0.Fields.Item("ChkInDate")), "sELECT Min(Sno) FROM ROOMOCC WHERE chkindate=", var_2B4, -1, var_2B8, var_2BC)
  loc_1C9C95C:           var_280 = 0 & var_204 & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C0.Fields.Item("DocID").Value 
  loc_1C9C973:           unk_5407B4.Execute CStr(var_280 & "'"), var_2D0, var_2E0
  loc_1C9C97B:           var_F8 = var_2B8.Fields
  loc_1C9C983:           var_1A8 = var_2BC.Item(var_F8)
  loc_1C9C98B:            = var_2D0.Value
  loc_1C9C9CC:           If (var_2E0 = 1) Then
  loc_1C9CA9C:             var_260 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1C9CAB2:             var_270 = 0 & var_C0.Fields.Item("ChkOutDate").Value & " " & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C0.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1C9CACE:             var_300 = var_270 & "',120) AND PC.BIll_NO='" & CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), 1)) & "' and PC.FOLIONODOCID='" 
  loc_1C9CAEC:             unk_5407B4.Execute CStr(var_300 & var_C0.Fields.Item("DocID").Value & "' AND R.Nature='Room Charge' GROUP By PC.BILL_NO"), var_350, -1
  loc_1C9CAF7:             Set var_C8 = var_2D0
  loc_1C9CB4B:             If (var_C8.RecordCount > 0) Then
  loc_1C9CC0D:               var_340 = 0
  loc_1C9CC2A:               var_260 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1C9CC40:               var_270 = 0 & var_C0.Fields.Item("ChkOutDate").Value & " " & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C0.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1C9CC5C:               var_300 = var_270 & "',120) AND PC.BIll_NO='" & CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), 1, 1)) & "' and PC.FOLIONODOCID='" 
  loc_1C9CC7A:               unk_5407B4.Execute CStr(var_300 & var_C0.Fields.Item("DocID").Value & "' AND R.Nature='Room Charge' and PC.AMTDR>0"), var_350, -1
  loc_1C9CC82:               var_2D0 = var_2D0.Fields
  loc_1C9CC8A:               var_340 = var_354.Item(var_354)
  loc_1C9CC92:               var_3A8 = var_3A8.Value
  loc_1C9CC9B:               var_AE = CInt(var_364)
  loc_1C9CCE1:             End If
  loc_1C9CCF5:             If (var_C8.RecordCount = 0) Then
  loc_1C9CCF8:               GoTo loc_1C9F9D9
  loc_1C9CCFB:             End If
  loc_1C9CCFE:           Else
  loc_1C9CE32:             var_260 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) between Convert(datetime,'") 'String
  loc_1C9CE48:             var_270 = 0 & var_C0.Fields.Item("ChkInDate").Value & " " & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C0.Fields.Item("ChkInDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1C9CE68:             var_330 = var_270 & "',120) and Convert(datetime,'" & var_C0.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1C9CE84:             var_3A4 = var_330 & "',120) AND PC.BIll_NO='" & CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), 1, 1, 1, 1)) & "' and PC.FOLIONODOCID='" 
  loc_1C9CEA2:             unk_5407B4.Execute CStr(var_3A4 & var_C0.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.BILL_NO"), var_41C, -1
  loc_1C9CF17:             If (var_460.RecordCount > 0) Then
  loc_1C9CF58:               var_29C = var_C0.Fields.Item("ChkInTime")
  loc_1C9CF6C:               var_230 = "hh:nn:ss"
  loc_1C9CF7C:               var_240 = Format(CVar(var_29C), var_230)
  loc_1C9CFD3:               var_300 = "hh:nn:ss"
  loc_1C9CFE3:               var_310 = Format(CVar(var_C0.Fields.Item("ChkOutTime")), var_300)
  loc_1C9D040:               var_42C = 0
  loc_1C9D05D:               var_260 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) between Convert(datetime,'") 'String
  loc_1C9D073:               var_270 = 0 & var_C0.Fields.Item("ChkInDate").Value & " " & " and ChkInTime='" & var_C0.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C0.Fields.Item("ChkInDate").Value & " " & var_240 
  loc_1C9D09C:               var_350 = var_270 & "',120) and Convert(datetime,'" & var_C0.Fields.Item("ChkOutDate").Value & " " & var_310 & "',120) AND PC.BIll_NO='" 
  loc_1C9D0B6:               var_3DC = var_350 & CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), 1, 1, 1, 1)) & "' and PC.FOLIONODOCID='" & var_C0.Fields.Item("DocID").Value 
  loc_1C9D0CD:               unk_5407B4.Execute CStr(var_3DC & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_41C, -1
  loc_1C9D0D5:               var_460 = var_460.Fields
  loc_1C9D0DD:               var_42C = var_464.Item(var_464)
  loc_1C9D0E5:               var_468 = var_468.Value
  loc_1C9D0EE:               var_AE = CInt(var_43C)
  loc_1C9D14A:             End If
  loc_1C9D14A:           End If
  loc_1C9D14D:         Else
  loc_1C9D153:           var_1C0 = 0
  loc_1C9D1AF:           unk_5407B4.Execute CStr("sELECT COUNT(*) FROM RoomOccDet WHERE DOCID='" & var_C0.Fields.Item("DocID").Value & "'"), var_230, -1
  loc_1C9D1B7:           var_298 = var_298.Fields
  loc_1C9D1BF:           var_1C0 = var_29C.Item(var_29C)
  loc_1C9D1C7:           var_2A0 = var_2A0.Value
  loc_1C9D1F3:           var_2B8 = var_C0.Fields.Item("mFolioNoDocid")
  loc_1C9D215:           var_2BC = var_C0.Fields
  loc_1C9D260:           If CBool((var_240 > 1) And (var_2B8.Value <> var_2BC.Item("DocID").Value)) Then
  loc_1C9D305:             var_260 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) > Convert(datetime,'") 'String
  loc_1C9D31B:             var_270 = var_2BC.Item("DocID").Value & var_C0.Fields.Item("ChkInDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1C9D334:             var_2E0 = var_270 & "',120) AND PC.FOLIONODOCID='" & var_C0.Fields.Item("DocID").Value & "' AND R.Nature='Room Charge' GROUP By PC.BILL_NO" 
  loc_1C9D342:             unk_5407B4.Execute CStr(var_2E0), var_300, -1
  loc_1C9D393:             If (var_2B8.RecordCount > 0) Then
  loc_1C9D40F:               var_2A0 = var_C0.Fields
  loc_1C9D41F:               var_290 = var_2A0.Item("DocID").Value
  loc_1C9D42A:               var_2CC = 0
  loc_1C9D447:               var_260 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) > Convert(datetime,'") 'String
  loc_1C9D459:               var_250 = var_C0.Fields.Item("ChkInDate").Value & " " & Format(CVar(var_C0.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1C9D476:               var_2E0 = var_2BC.Item("DocID").Value & var_250 & "',120) AND PC.FOLIONODOCID='" & var_290 & "' AND R.Nature='Room Charge' and PC.AMTDR>0" 
  loc_1C9D484:               unk_5407B4.Execute CStr(var_2E0), var_300, -1
  loc_1C9D48C:               var_2B8 = var_2B8.Fields
  loc_1C9D494:               var_2CC = var_2BC.Item(var_2BC)
  loc_1C9D49C:               var_2D0 = var_2D0.Value
  loc_1C9D4A5:               var_AE = CInt(var_310)
  loc_1C9D4DD:             End If
  loc_1C9D4E0:           Else
  loc_1C9D51C:             If CBool(var_C0.Fields.Item("Type").Value <> "C") Then
  loc_1C9D587:               If (var_C0.Fields.Item("mFolioNoDocid").Value = var_C0.Fields.Item("DocID").Value) Then
  loc_1C9D59E:                 var_1AC = "Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.BIll_NO='"
  loc_1C9D5C9:                 var_1B0 = Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), CStr(var_2E0), var_250, -1, var_2A0, var_AE, var_310)
  loc_1C9D5D4:                 var_220 = CVar(1 & Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), 1, 1, 1, 1) & "' and PC.FOLIONODOCID='") 'String
  loc_1C9D5F1:                 var_29C = var_C0.Fields.Item("DocID")
  loc_1C9D60A:                 var_240 = var_220 & var_29C.Value & "' and R.Nature='Room Charge' GROUP By PC.BILL_NO" 
  loc_1C9D618:                 unk_5407B4.Execute CStr(var_240), 1, var_2B8
  loc_1C9D65F:                 If (var_2A0.RecordCount > 0) Then
  loc_1C9D668:                   var_194 = 0
  loc_1C9D685:                   var_204 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.FOLIONODOCID='") 'String
  loc_1C9D6C9:                   unk_5407B4.Execute CStr(var_204 & var_C0.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_240, -1
  loc_1C9D6D1:                   var_298 = var_298.Fields
  loc_1C9D6D9:                   var_194 = var_29C.Item(var_29C)
  loc_1C9D6E1:                   var_2A0 = var_2A0.Value
  loc_1C9D6EA:                   var_AE = CInt(var_250)
  loc_1C9D70C:                 End If
  loc_1C9D70F:               Else
  loc_1C9D723:                 var_1AC = "Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.BIll_NO='"
  loc_1C9D74E:                 var_1B0 = Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), CStr(var_204 & var_C0.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_290, -1, var_2B8)
  loc_1C9D759:                 var_220 = CVar(var_AE & Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Bill_no")), 1, 1, 1, 1) & "' and PC.FOLIONODOCID='") 'String
  loc_1C9D78F:                 var_240 = var_220 & var_C0.Fields.Item("DocID").Value & "' And vdate >= " 
  loc_1C9D7A2:                 var_2A0 = var_C0.Fields
  loc_1C9D7AA:                 var_2A4 = var_2A0.Item("ChkInDate")
  loc_1C9D7B2:                 var_250 = CVar(var_2A4) 'Address
  loc_1C9D7B9:                 Proc_6_7_F25D88(var_2BC.Item("DocID").Value, var_250, var_240, var_250)
  loc_1C9D7CA:                 var_280 = 1 & var_2BC.Item("DocID").Value & " And R.Nature='Room Charge' GROUP By PC.BILL_NO" 
  loc_1C9D7D8:                 unk_5407B4.Execute CStr(var_280), 1, var_240
  loc_1C9D7E3:                 Set var_C8 = var_2B8
  loc_1C9D829:                 If (var_C8.RecordCount > 0) Then
  loc_1C9D84F:                   var_204 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.FOLIONODOCID='") 'String
  loc_1C9D880:                   var_174 = "' And vdate >= "
  loc_1C9D8AF:                   Proc_6_7_F25D88(var_250, CVar(var_C0.Fields.Item("ChkInDate")), var_204 & var_C0.Fields.Item("DocID").Value & var_174, var_280, -1)
  loc_1C9D8CE:                   unk_5407B4.Execute CStr(var_2A0 & var_250 & " And R.Nature='Room Charge' and PC.AMTDR>0"), var_2A4, 0
  loc_1C9D8DE:                    = var_2A4.Item(var_290)
  loc_1C9D8E6:                    = var_2A0.Fields.Value
  loc_1C9D8EF:                   var_AE = CInt(var_290)
  loc_1C9D91B:                 End If
  loc_1C9D91B:               End If
  loc_1C9D91B:             End If
  loc_1C9D91B:           End If
  loc_1C9D91B:         End If
  loc_1C9D92F:         If (var_C8.RecordCount > 0) Then
  loc_1C9D958:           Proc_6_39_E7C810(var_204, CVar(var_C8.Fields.Item("RoomChrg")))
  loc_1C9D961:           var_B8 = CSng(var_204)
  loc_1C9D994:           Proc_6_39_E7C810(var_204, CVar(var_C8.Fields.Item("LuxuryTax")))
  loc_1C9D9B1:           var_114 = (var_114 + CSng(var_204))
  loc_1C9D9B7:         Else
  loc_1C9D9BA:           var_B8 = CDbl(0)
  loc_1C9D9C0:           var_124 = CDbl(0)
  loc_1C9D9C3:         End If
  loc_1C9D9C6:       Else
  loc_1C9D9CD:         var_114 = (var_114 + var_124)
  loc_1C9D9DB:         var_104 = ((var_104 + var_F8) - var_124)
  loc_1C9D9E5:         var_10C = (var_10C + var_F0)
  loc_1C9D9E8:       End If
  loc_1C9D9EB:       var_164 = "Bill_no"
  loc_1C9DA10:       var_128 = Proc_6_38_E68A98(CVar(var_C0.Fields.Item(var_164)), var_10C, var_104, var_114, var_124)
  loc_1C9DA20:       If (var_F0 > CDbl(0)) Then
  loc_1C9DA29:         var_E6 = (var_E6 + 1)
  loc_1C9DA2F:         Set var_51C = var_13C 
  loc_1C9DA3E:         var_51C.AddNew var_164, var_174
  loc_1C9DA56:         var_1A8 = CVar(Proc_6_52_EAD4F4(CStr(var_E6), 3, var_E6, var_B8)) 'String
  loc_1C9DA63:         var_51C.Collect = "SNo"
  loc_1C9DA96:         var_204 = CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("ConPrefix")), CVar(var_C0.Fields.Item("ConPrefix")), var_114)) 'String
  loc_1C9DAEC:         var_240 = (Trim(var_204) + Space(1))
  loc_1C9DAF3:         var_280 = (CVar(var_C0.Fields.Item("ChkInDate")) + Trim(CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("GuestName")), var_124))))
  loc_1C9DB01:         var_290 = CVar(Proc_6_45_EAD428(CStr(var_280), &H32)) 'String
  loc_1C9DB0E:         var_51C.Collect = "GuestName"
  loc_1C9DBC3:         var_280 = IIf((var_C0.Fields.Item("BirthDate").Value <> vbNullString), DateDiff("yyyy", CVar(var_C0.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1), 0)
  loc_1C9DBE7:         var_51C.Collect = "BirthAge"
  loc_1C9DC35:         Proc_6_39_E7C810(var_204, CVar(var_C0.Fields.Item("Age")), CVar(Proc_6_52_EAD4F4(CStr(var_280), 3, var_290)))
  loc_1C9DC59:         var_51C.Collect = "Age"
  loc_1C9DCA9:         var_204 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Nationality")), CVar(Proc_6_52_EAD4F4(CStr(var_204), 3))), &H19)) 'String
  loc_1C9DCB6:         var_51C.Collect = "Nationality"
  loc_1C9DD05:         var_204 = CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item("RoomNo").Value), 5, var_204)) 'String
  loc_1C9DD12:         var_51C.Collect = "RoomNo"
  loc_1C9DD61:         var_204 = CVar(Proc_6_52_EAD4F4(CStr(var_C0.Fields.Item("RoomRate").Value), 8, var_204)) 'String
  loc_1C9DD6E:         var_51C.Collect = "RoomRate"
  loc_1C9DDD1:         var_51C.Collect = "ChkInDate"
  loc_1C9DE1B:         var_204 = CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item("ChkInTm").Value), 5, Format(CVar(var_C0.Fields.Item("ChkInDt")), "DD/MM/YYYY"), 1)) 'String
  loc_1C9DE28:         var_51C.Collect = "ChkInTime"
  loc_1C9DE8B:         var_51C.Collect = "ChkOutDate"
  loc_1C9DED5:         var_204 = CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item("ChkOutTm").Value), 5, Format(CVar(var_C0.Fields.Item("ChkOutDt")), "DD/MM/YYYY"), 1, 1)) 'String
  loc_1C9DEE2:         var_51C.Collect = "ChkOutTime"
  loc_1C9DEFD:         var_1A8 = CVar(CStr(var_AE)) 'String
  loc_1C9DF0A:         var_51C.Collect = "StPeriod"
  loc_1C9DF1D:         Proc_6_39_E7C810(var_1A8, var_F8, var_1A8, var_204, var_204)
  loc_1C9DF61:         var_51C.Collect = "TotalTax"
  loc_1C9DFAD:         var_204 = CVar(Proc_6_52_EAD4F4(CStr(var_C0.Fields.Item("Person").Value), 5, CVar(Proc_6_52_EAD4F4(CStr(Format(var_C0.Fields.Item("Person").Value, "0.00")), 8, 1, 1)), 1)) 'String
  loc_1C9DFBA:         var_51C.Collect = "Person"
  loc_1C9DFDD:         var_1A8 = CVar(Proc_6_52_EAD4F4(var_128, 8, var_204)) 'String
  loc_1C9DFEA:         var_51C.Collect = "BillNo"
  loc_1C9E02D:         var_220 = Format(CVar(var_C0.Fields.Item("ChkOutDate")), "DD/MM/YYYY")
  loc_1C9E03F:         var_51C.Collect = "Billdate"
  loc_1C9E072:         var_1A8 = var_C0.Fields.Item("Person").Value
  loc_1C9E0AC:         var_220 = (var_1A8 = 0) 'Variant
  loc_1C9E0CA:         var_260 = (CVar(var_F0) / IIf(var_220, 1, CVar(var_C0.Fields.Item("Person"))))
  loc_1C9E11A:         var_300 = CVar(Proc_6_52_EAD4F4(CStr(Format(IIf((var_F0 > CDbl(0)), var_260, 0), "0.00")), 8, 1, 1, var_220, 1)) 'String
  loc_1C9E127:         var_51C.Collect = "LTPerOcc"
  loc_1C9E156:         var_164 = var_F0
  loc_1C9E15E:         Proc_6_39_E7C810(var_1A8, var_164, var_300, 1)
  loc_1C9E16D:         var_174 = "0.00"
  loc_1C9E195:         var_230 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_1A8, var_174)), 8, 1, 1)) 'String
  loc_1C9E1A2:         var_51C.Collect = "LTTotal"
  loc_1C9E1C0:         var_51C.Update var_164, var_174
  loc_1C9E1C7:         Set var_51C = Nothing 
  loc_1C9E1CE:         var_164 = CVar(CLng(4)) 'Long
  loc_1C9E1D3:         var_184 = 1
  loc_1C9E202:         If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1C9E212:           var_174 = "Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality From GuestFolioProfDetail GD Inner Join GuestProf GP On GD.GuestProf=GP.Code Left Join Country ON GP.Nationality=Country.Code Where GD.Docid='"
  loc_1C9E21D:           var_164 = "DocID"
  loc_1C9E245:           var_184 = "' And GD.GuestProf<>'"
  loc_1C9E270:           var_230 = var_C0.Fields.Item("GuestProf").Value
  loc_1C9E28F:           unk_5407B4.Execute CStr(var_174 & var_C0.Fields.Item(var_164).Value & var_184 & var_230 & "'"), var_260, -1
  loc_1C9E29A:           Set var_144 = var_2A0
  loc_1C9E2D2:           If (var_144.RecordCount > 0) Then
  loc_1C9E2D5:             ' Referenced from:   1C9E4FB
  loc_1C9E2E4:             If Not(var_144.EOF) Then
  loc_1C9E2EA:               Set var_520 = var_13C 
  loc_1C9E2F9:               var_520.AddNew var_164, var_174
  loc_1C9E301:               var_164 = "ConPrefix"
  loc_1C9E31D:               var_1A8 = CVar(var_144.Fields.Item(var_164)) 'Address
  loc_1C9E326:               var_204 = CVar(Proc_6_38_E68A98(var_1A8, var_2A0, var_184, var_164, var_230)) 'String
  loc_1C9E366:               var_260 = CVar(Proc_6_38_E68A98(CVar(var_144.Fields.Item("Name")), var_1A8, var_204)) 'String
  loc_1C9E37C:               var_240 = (Trim(var_204) + Space(1))
  loc_1C9E383:               var_280 = ("Name" & var_C0.Fields.Item(var_164).Value & var_184 & Space(1) + Trim(var_260))
  loc_1C9E39E:               var_520.Collect = "GuestName"
  loc_1C9E3EA:               Proc_6_39_E7C810(var_204, CVar(var_144.Fields.Item("Age")), CVar(Proc_6_45_EAD428(CStr(0), &H32)))
  loc_1C9E40E:               var_520.Collect = "Age"
  loc_1C9E45E:               var_204 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_144.Fields.Item("Nationality")), CVar(Proc_6_52_EAD4F4(CStr(var_204), 3))), &H19)) 'String
  loc_1C9E46B:               var_520.Collect = "Nationality"
  loc_1C9E487:               var_164 = "RoomNo"
  loc_1C9E4BA:               var_204 = CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item(var_164).Value), 5, var_204)) 'String
  loc_1C9E4BE:               var_174 = "RoomNo"
  loc_1C9E4C7:               var_520.Collect = var_174
  loc_1C9E4E8:               var_520.Update var_164, var_174
  loc_1C9E4EF:               Set var_520 = Nothing 
  loc_1C9E4F6:               var_144.MoveNext
  loc_1C9E4FB:               GoTo loc_1C9E2D5
  loc_1C9E4FE:             End If
  loc_1C9E4FE:           End If
  loc_1C9E4FE:         End If
  loc_1C9E501:         var_164 = CVar(CLng(4)) 'Long
  loc_1C9E506:         var_184 = 1
  loc_1C9E535:         If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1C9E574:           var_204 = "Select Distinct RelatedFoliono,VPrefix From PayCharge PC Where PC.FolionoDocid='" & var_C0.Fields.Item("DocID").Value 
  loc_1C9E5C2:           unk_5407B4.Execute CStr(var_204 & "' And RelatedFoliono<>" & var_C0.Fields.Item("FolioNo").Value & " And RelatedFoliono<>0"), var_260, -1
  loc_1C9E5CD:           Set var_148 = var_2A0
  loc_1C9E5F1:           ' Referenced from:   1C9E989
  loc_1C9E600:           If Not(var_148.EOF) Then
  loc_1C9E610:             var_174 = "Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality,RO.RoomNo From GuestFolioProfDetail GD Inner Join GuestProf GP On GD.GuestProf=GP.Code Left Join (Select RoomNo, DocId From RoomOcc  Where Foliono="
  loc_1C9E61B:             var_164 = "RelatedFolioNo"
  loc_1C9E643:             var_184 = " And VPrefix ="
  loc_1C9E67A:             var_1C0 = " And Sno=1) RO On RO.DocId=GD.DocId Left Join Country ON GP.Nationality=Country.Code Where GD.Docid In (Select DocId From GuestFolio Where Foliono="
  loc_1C9E695:             var_2A0 = var_148.Fields
  loc_1C9E6AD:             var_270 = var_174 & var_148.Fields.Item(var_164).Value & var_184 & var_148.Fields.Item("vPrefix").Value & var_1C0 & var_2A0.Item("RelatedFolioNo").Value 
  loc_1C9E6FB:             unk_5407B4.Execute CStr(var_270 & " And VPrefix =" & var_148.Fields.Item("vPrefix").Value & ")"), var_300, -1
  loc_1C9E706:             Set var_144 = var_2D0
  loc_1C9E752:             If (var_144.RecordCount > 0) Then
  loc_1C9E755:               ' Referenced from:   1C9E97E
  loc_1C9E764:               If Not(var_144.EOF) Then
  loc_1C9E76A:                 Set var_524 = var_13C 
  loc_1C9E779:                 var_524.AddNew var_164, var_174
  loc_1C9E781:                 var_164 = "ConPrefix"
  loc_1C9E7A6:                 var_204 = CVar(Proc_6_38_E68A98(CVar(var_144.Fields.Item(var_164)), var_2D0, var_2A0, var_184)) 'String
  loc_1C9E7FC:                 var_240 = (Trim(var_204) + Space(1))
  loc_1C9E803:                 var_280 = ("Name" & var_148.Fields.Item(var_164).Value & var_184 & var_148.Fields.Item("vPrefix").Value + Trim(CVar(Proc_6_38_E68A98(CVar(var_144.Fields.Item("Name")), var_164, var_204))))
  loc_1C9E811:                 var_290 = CVar(Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_144.Fields.Item("Name")), var_164, var_204))) & " And VPrefix ="), &H32)) 'String
  loc_1C9E81E:                 var_524.Collect = "GuestName"
  loc_1C9E86A:                 Proc_6_39_E7C810(var_204, CVar(var_144.Fields.Item("Age")), var_290)
  loc_1C9E88E:                 var_524.Collect = "Age"
  loc_1C9E8DE:                 var_204 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_144.Fields.Item("Nationality")), CVar(Proc_6_52_EAD4F4(CStr(var_204), 3))), &H19)) 'String
  loc_1C9E8EB:                 var_524.Collect = "Nationality"
  loc_1C9E904:                 var_164 = "RoomNo"
  loc_1C9E93D:                 var_204 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_144.Fields.Item(var_164)), var_204), 5)) 'String
  loc_1C9E941:                 var_174 = "RoomNo"
  loc_1C9E94A:                 var_524.Collect = var_174
  loc_1C9E96B:                 var_524.Update var_164, var_174
  loc_1C9E972:                 Set var_524 = Nothing 
  loc_1C9E979:                 var_144.MoveNext
  loc_1C9E97E:                 GoTo loc_1C9E755
  loc_1C9E981:               End If
  loc_1C9E981:             End If
  loc_1C9E984:             var_148.MoveNext
  loc_1C9E989:             GoTo loc_1C9E5F1
  loc_1C9E98C:           End If
  loc_1C9E98C:         End If
  loc_1C9E98F:         var_174 = CVar(var_9C) 'Integer
  loc_1C9E9BC:         var_204 = (var_174 + var_C0.Fields.Item("Person").Value)
  loc_1C9E9C1:         var_9C = CInt(var_204)
  loc_1C9E9D8:         var_86 = (var_86 + 1)
  loc_1C9E9DE:       Else
  loc_1C9E9E1:         var_164 = CVar(CLng(3)) 'Long
  loc_1C9EA1D:         If ((CStr(Me.FGrid.TextMatrix)) = "Yes") And (var_124 > CDbl(0))) Then
  loc_1C9EA26:           var_E6 = (var_E6 + 1)
  loc_1C9EA2C:           Set var_528 = var_13C 
  loc_1C9EA3B:           var_528.AddNew var_164, var_174
  loc_1C9EA53:           var_1A8 = CVar(Proc_6_52_EAD4F4(CStr(var_E6), 3, var_E6, 1, var_164)) 'String
  loc_1C9EA60:           var_528.Collect = "SNo"
  loc_1C9EA93:           var_204 = CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("ConPrefix")), CVar(var_C0.Fields.Item("ConPrefix")), var_86, var_9C)) 'String
  loc_1C9EAE9:           var_240 = (Trim(var_204) + Space(1))
  loc_1C9EAF0:           var_280 = ("GuestName" & var_148.Fields.Item("ConPrefix").Value & 1 & var_148.Fields.Item("vPrefix").Value + Trim(CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("GuestName")), var_204))))
  loc_1C9EAFE:           var_290 = CVar(Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("GuestName")), var_204))) & " And VPrefix ="), &H32)) 'String
  loc_1C9EB0B:           var_528.Collect = "GuestName"
  loc_1C9EBC0:           var_280 = IIf((var_C0.Fields.Item("BirthDate").Value <> vbNullString), DateDiff("yyyy", CVar(var_C0.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1), 0)
  loc_1C9EBE4:           var_528.Collect = "BirthAge"
  loc_1C9EC32:           Proc_6_39_E7C810(var_204, CVar(var_C0.Fields.Item("Age")), CVar(Proc_6_52_EAD4F4(CStr(var_280), 3, var_290)))
  loc_1C9EC56:           var_528.Collect = "Age"
  loc_1C9ECA6:           var_204 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Nationality")), CVar(Proc_6_52_EAD4F4(CStr(var_204), 3))), &H19)) 'String
  loc_1C9ECB3:           var_528.Collect = "Nationality"
  loc_1C9ED0F:           var_528.Collect = "RoomNo"
  loc_1C9ED38:           var_1A8 = CVar(Proc_6_52_EAD4F4(CStr(var_B8), 8, CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item("RoomNo").Value), 5, var_204)))) 'String
  loc_1C9ED45:           var_528.Collect = "RoomRate"
  loc_1C9ED9D:           var_528.Collect = "ChkInDate"
  loc_1C9EDE7:           var_204 = CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item("ChkInTm").Value), 5, Format(CVar(var_C0.Fields.Item("ChkInDt")), "DD/MM/YYYY"), 1)) 'String
  loc_1C9EDF4:           var_528.Collect = "ChkInTime"
  loc_1C9EE57:           var_528.Collect = "ChkOutDate"
  loc_1C9EEA1:           var_204 = CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item("ChkOutTm").Value), 5, Format(CVar(var_C0.Fields.Item("ChkOutDt")), "DD/MM/YYYY"), 1, 1)) 'String
  loc_1C9EEAE:           var_528.Collect = "ChkOutTime"
  loc_1C9EEC9:           var_1A8 = CVar(CStr(var_AE)) 'String
  loc_1C9EED6:           var_528.Collect = "StPeriod"
  loc_1C9EEE5:           var_1A8 = CVar((var_124 + var_F0)) 'Double
  loc_1C9EEEC:           Proc_6_39_E7C810(var_204, var_1A8, var_1A8, var_204, var_204)
  loc_1C9EF30:           var_528.Collect = "TotalTax"
  loc_1C9EF7E:           var_204 = CVar(Proc_6_52_EAD4F4(CStr(var_C0.Fields.Item("Person").Value), 5, CVar(Proc_6_52_EAD4F4(CStr(Format(var_204, "0.00")), 8, 1, 1)), 1)) 'String
  loc_1C9EF8B:           var_528.Collect = "Person"
  loc_1C9EFAE:           var_1A8 = CVar(Proc_6_52_EAD4F4(var_128, 8, var_204)) 'String
  loc_1C9EFBB:           var_528.Collect = "BillNo"
  loc_1C9EFFE:           var_220 = Format(CVar(var_C0.Fields.Item("ChkOutDate")), "DD/MM/YYYY")
  loc_1C9F010:           var_528.Collect = "Billdate"
  loc_1C9F043:           var_1A8 = var_C0.Fields.Item("Person").Value
  loc_1C9F07D:           var_220 = (var_1A8 = 0) 'Variant
  loc_1C9F09B:           var_260 = (CVar(var_F0) / IIf(var_220, 1, CVar(var_C0.Fields.Item("Person"))))
  loc_1C9F0EB:           var_300 = CVar(Proc_6_52_EAD4F4(CStr(Format(IIf((var_F0 > CDbl(0)), var_260, 0), "0.00")), 8, 1, 1, var_220, 1)) 'String
  loc_1C9F0F8:           var_528.Collect = "LTPerOcc"
  loc_1C9F127:           var_164 = var_F0
  loc_1C9F12F:           Proc_6_39_E7C810(var_1A8, var_164, var_300, 1)
  loc_1C9F13E:           var_174 = "0.00"
  loc_1C9F166:           var_230 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_1A8, var_174)), 8, 1, 1)) 'String
  loc_1C9F173:           var_528.Collect = "LTTotal"
  loc_1C9F191:           var_528.Update var_164, var_174
  loc_1C9F198:           Set var_528 = Nothing 
  loc_1C9F19F:           var_164 = CVar(CLng(4)) 'Long
  loc_1C9F1A4:           var_184 = 1
  loc_1C9F1D3:           If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1C9F1E3:             var_174 = "Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality From GuestFolioProfDetail GD Inner Join GuestProf GP On GD.GuestProf=GP.Code Left Join Country ON GP.Nationality=Country.Code Where GD.Docid='"
  loc_1C9F1EE:             var_164 = "DocID"
  loc_1C9F216:             var_184 = "' And GD.GuestProf<>'"
  loc_1C9F241:             var_230 = var_C0.Fields.Item("GuestProf").Value
  loc_1C9F260:             unk_5407B4.Execute CStr(var_174 & var_C0.Fields.Item(var_164).Value & var_184 & var_230 & "'"), var_260, -1
  loc_1C9F26B:             Set var_144 = var_2A0
  loc_1C9F2A3:             If (var_144.RecordCount > 0) Then
  loc_1C9F2A6:               ' Referenced from:     1C9F4CC
  loc_1C9F2B5:               If Not(var_144.EOF) Then
  loc_1C9F2BB:                 Set var_52C = var_13C 
  loc_1C9F2CA:                 var_52C.AddNew var_164, var_174
  loc_1C9F2D2:                 var_164 = "ConPrefix"
  loc_1C9F2EE:                 var_1A8 = CVar(var_144.Fields.Item(var_164)) 'Address
  loc_1C9F2F7:                 var_204 = CVar(Proc_6_38_E68A98(var_1A8, var_2A0, var_184, var_164, var_230)) 'String
  loc_1C9F337:                 var_260 = CVar(Proc_6_38_E68A98(CVar(var_144.Fields.Item("Name")), var_1A8, var_1A8)) 'String
  loc_1C9F34D:                 var_240 = (Trim(var_204) + Space(1))
  loc_1C9F354:                 var_280 = ("Name" & var_C0.Fields.Item(var_164).Value & var_184 & Space(1) + Trim(var_260))
  loc_1C9F36F:                 var_52C.Collect = "GuestName"
  loc_1C9F3BB:                 Proc_6_39_E7C810(var_204, CVar(var_144.Fields.Item("Age")), CVar(Proc_6_45_EAD428(CStr(0), &H32)))
  loc_1C9F3DF:                 var_52C.Collect = "Age"
  loc_1C9F42F:                 var_204 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_144.Fields.Item("Nationality")), CVar(Proc_6_52_EAD4F4(CStr(var_204), 3))), &H19)) 'String
  loc_1C9F43C:                 var_52C.Collect = "Nationality"
  loc_1C9F458:                 var_164 = "RoomNo"
  loc_1C9F48B:                 var_204 = CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item(var_164).Value), 5, var_204)) 'String
  loc_1C9F48F:                 var_174 = "RoomNo"
  loc_1C9F498:                 var_52C.Collect = var_174
  loc_1C9F4B9:                 var_52C.Update var_164, var_174
  loc_1C9F4C0:                 Set var_52C = Nothing 
  loc_1C9F4C7:                 var_144.MoveNext
  loc_1C9F4CC:                 GoTo loc_1C9F2A6
  loc_1C9F4CF:               End If
  loc_1C9F4CF:             End If
  loc_1C9F4CF:           End If
  loc_1C9F4D2:           var_164 = CVar(CLng(4)) 'Long
  loc_1C9F4D7:           var_184 = 1
  loc_1C9F506:           If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1C9F545:             var_204 = "Select Distinct RelatedFoliono,VPrefix From PayCharge PC Where PC.FolionoDocid='" & var_C0.Fields.Item("DocID").Value 
  loc_1C9F593:             unk_5407B4.Execute CStr(var_204 & "' And RelatedFoliono<>" & var_C0.Fields.Item("FolioNo").Value & " And RelatedFoliono<>0"), var_260, -1
  loc_1C9F59E:             Set var_148 = var_2A0
  loc_1C9F5C2:             ' Referenced from:     1C9F95A
  loc_1C9F5D1:             If Not(var_148.EOF) Then
  loc_1C9F5E1:               var_174 = "Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality,RO.RoomNo From GuestFolioProfDetail GD Inner Join GuestProf GP On GD.GuestProf=GP.Code Left Join (Select RoomNo, DocId From RoomOcc  Where Foliono="
  loc_1C9F5EC:               var_164 = "RelatedFolioNo"
  loc_1C9F614:               var_184 = " And VPrefix ="
  loc_1C9F64B:               var_1C0 = " And Sno=1) RO On RO.DocId=GD.DocId Left Join Country ON GP.Nationality=Country.Code Where GD.Docid In (Select DocId From GuestFolio Where Foliono="
  loc_1C9F666:               var_2A0 = var_148.Fields
  loc_1C9F67E:               var_270 = var_174 & var_148.Fields.Item(var_164).Value & var_184 & var_148.Fields.Item("vPrefix").Value & var_1C0 & var_2A0.Item("RelatedFolioNo").Value 
  loc_1C9F6CC:               unk_5407B4.Execute CStr(var_270 & " And VPrefix =" & var_148.Fields.Item("vPrefix").Value & ")"), var_300, -1
  loc_1C9F6D7:               Set var_144 = var_2D0
  loc_1C9F715:               var_294 = var_144.RecordCount
  loc_1C9F723:               If (var_294 > 0) Then
  loc_1C9F726:                 ' Referenced from:     1C9F94F
  loc_1C9F735:                 If Not(var_144.EOF) Then
  loc_1C9F73B:                   Set var_530 = var_13C 
  loc_1C9F74A:                   var_530.AddNew var_164, var_174
  loc_1C9F752:                   var_164 = "ConPrefix"
  loc_1C9F777:                   var_204 = CVar(Proc_6_38_E68A98(CVar(var_144.Fields.Item(var_164)), var_2D0, var_2A0, var_184)) 'String
  loc_1C9F78A:                   var_230 = Space(1)
  loc_1C9F79E:                   var_298 = var_144.Fields
  loc_1C9F7CD:                   var_240 = (Trim(var_204) + var_230)
  loc_1C9F7D4:                   var_280 = ("Name" & var_148.Fields.Item(var_164).Value & var_184 & var_148.Fields.Item("vPrefix").Value + Trim(CVar(Proc_6_38_E68A98(CVar(var_298.Item("Name")), var_164, var_204))))
  loc_1C9F7E2:                   var_290 = CVar(Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_298.Item("Name")), var_164, var_204))) & " And VPrefix ="), &H32)) 'String
  loc_1C9F7EF:                   var_530.Collect = "GuestName"
  loc_1C9F83B:                   Proc_6_39_E7C810(var_204, CVar(var_144.Fields.Item("Age")), var_290)
  loc_1C9F852:                   var_220 = CVar(Proc_6_52_EAD4F4(CStr(var_204), 3)) 'String
  loc_1C9F85F:                   var_530.Collect = "Age"
  loc_1C9F8BC:                   var_530.Collect = "Nationality"
  loc_1C9F8D5:                   var_164 = "RoomNo"
  loc_1C9F8E9:                   var_1F4 = var_144.Fields.Item(var_164)
  loc_1C9F8FA:                   var_1B0 = Proc_6_38_E68A98(CVar(var_1F4), CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_144.Fields.Item("Nationality")), var_220), &H19)))
  loc_1C9F90E:                   var_204 = CVar(Proc_6_45_EAD428(var_1B0, 5)) 'String
  loc_1C9F912:                   var_174 = "RoomNo"
  loc_1C9F91B:                   var_530.Collect = var_174
  loc_1C9F93C:                   var_530.Update var_164, var_174
  loc_1C9F943:                   Set var_530 = Nothing 
  loc_1C9F94A:                   var_144.MoveNext
  loc_1C9F94F:                   GoTo loc_1C9F726
  loc_1C9F952:                 End If
  loc_1C9F952:               End If
  loc_1C9F955:               var_148.MoveNext
  loc_1C9F95A:               GoTo loc_1C9F5C2
  loc_1C9F95D:             End If
  loc_1C9F95D:           End If
  loc_1C9F95D:         End If
  loc_1C9F95D:       End If
  loc_1C9F964:       var_A4 = (var_A4 + var_F0)
  loc_1C9F96A:       var_164 = CVar(CLng(3)) 'Long
  loc_1C9F96F:       var_184 = 1
  loc_1C9F98D:       var_1AC = CStr(Me.FGrid.TextMatrix))
  loc_1C9F99E:       If (var_1AC = "Yes") Then
  loc_1C9F9A8:         If (var_F0 > CDbl(0)) Then
  loc_1C9F9B2:           var_AC = (var_AC + var_F8)
  loc_1C9F9B8:         Else
  loc_1C9F9BF:           var_AC = (var_AC + var_124)
  loc_1C9F9C2:         End If
  loc_1C9F9C5:       Else
  loc_1C9F9CC:         If (var_F0 <> CDbl(0)) Then
  loc_1C9F9D6:           var_AC = (var_AC + var_F8)
  loc_1C9F9D9:         End If
  loc_1C9F9D9:         ' Referenced from:   1C9CCF8
  loc_1C9F9D9:       End If
  loc_1C9F9D9:       ' Referenced from: 1C9A8F9
  loc_1C9F9D9:     End If
  loc_1C9F9DC:     var_C0.MoveNext
  loc_1C9F9E1:     GoTo loc_1C99E3E
  loc_1C9F9E4:   End If
  loc_1C9F9EA:   global_84 = "LuxuryTax"
  loc_1C9F9F4:   Call 0.Method_arg_50 (var_1AC, var_AC, var_AC, var_AC, var_184)
  loc_1C9FA02:   var_204 = Ucase(CVar(var_1AC))
  loc_1C9FA11:   global_80 = CStr(var_204)
  loc_1C9FA46:   Set var_198 = var_13C 
  loc_1C9FA4D:   CreateFieldDefFile(var_198, MemVar_1F920B4 & "\" & global_84 & ".ttx", &HFF, var_164)
  loc_1C9FA78:   var_1AC = MemVar_1F920B4 & "\"
  loc_1C9FA92:   Call 0.Method_arg_1C (var_1AC & global_84 & ".RPT", var_164, var_198, var_A4)
  loc_1C9FA9D:   MemVar_1F921E4 = var_198
  loc_1C9FAC6:   Call 0.Method_arg_64 (var_198, CVar(var_198), var_174, var_184)
  loc_1C9FACE:   Call 0.Method_arg_2C (var_204, var_B8)
  loc_1C9FADC:   Call 0.Method_arg_150 (var_AE)
  loc_1C9FAF2:   Call 0.Method_arg_90 (var_198, var_294)
  loc_1C9FAFA:   Call 0.Method_arg_24 (var_9A)
  loc_1C9FB06:   For var_534 =  To CInt(var_294): 1 = var_534 'Integer
  loc_1C9FB1F:     Call 0.Method_arg_90 (var_198, CLng(var_9A))
  loc_1C9FB27:     Call 0.Method_arg_20 (var_1F4)
  loc_1C9FB2F:     Call 0.Method_arg_30 (var_1AC)
  loc_1C9FB37:     var_1A8 = CVar(var_1AC) 'String
  loc_1C9FB45:     var_544 = Ucase(var_1A8) 'Variant
  loc_1C9FB5E:     If (var_544 = "FORMONTH") Then
  loc_1C9FB6C:       Proc_6_17_EAA2B0(var_1A8)
  loc_1C9FB88:       Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1C9FB90:       Call 0.Method_arg_20 (CStr(var_1A8))
  loc_1C9FB98:       Call 0.Method_arg_38 (var_FC)
  loc_1C9FBAD:     Else
  loc_1C9FBB8:       If (var_544 = "TOTAMT") Then
  loc_1C9FBD3:         Call 0.Method_arg_90 (var_198, CLng(var_9A))
  loc_1C9FBDB:         Call 0.Method_arg_20 (var_1F4)
  loc_1C9FBE3:         Call 0.Method_arg_38 (CStr(var_AC))
  loc_1C9FBF5:       Else
  loc_1C9FC00:         If (var_544 = "TOTLT") Then
  loc_1C9FC1B:           Call 0.Method_arg_90 (var_198, CLng(var_9A))
  loc_1C9FC23:           Call 0.Method_arg_20 (var_1F4)
  loc_1C9FC2B:           Call 0.Method_arg_38 (CStr(var_A4))
  loc_1C9FC3D:         Else
  loc_1C9FC48:           If (var_544 = "TITLE") Then
  loc_1C9FC6F:             Call 0.Method_arg_90 (var_198, CLng(var_9A))
  loc_1C9FC77:             Call 0.Method_arg_20 (var_1F4)
  loc_1C9FC7F:             Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_1C9FC95:           Else
  loc_1C9FCA0:             If (var_544 = "PRINTDATE") Then
  loc_1C9FCD0:               Call 0.Method_arg_90 (var_198, CLng(var_9A))
  loc_1C9FCD8:               Call 0.Method_arg_20 (var_1F4)
  loc_1C9FCE0:               Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F920EC) & "'"))
  loc_1C9FCF9:             Else
  loc_1C9FD04:               If (var_544 = "SUMMARYYN") Then
  loc_1C9FD1C:                 Set var_198 = Me.FGrid
  loc_1C9FD33:                 Proc_6_17_EAA2B0(var_220, CVar(CStr(var_198.TextMatrix))))
  loc_1C9FD4F:                 Call 0.Method_arg_90 (var_1F4, CLng(var_9A), var_298)
  loc_1C9FD57:                 Call 0.Method_arg_20 (CStr(var_220), 1)
  loc_1C9FD5F:                 Call 0.Method_arg_38 (CVar(CLng(2)))
  loc_1C9FD7C:               Else
  loc_1C9FD87:                 If (var_544 = "WT_TOTAMT") Then
  loc_1C9FDC6:                   Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1C9FDCE:                   Call 0.Method_arg_20 (CStr(Format(var_114, "0.00")), 1)
  loc_1C9FDD6:                   Call 0.Method_arg_38 (1)
  loc_1C9FDEF:                 Else
  loc_1C9FDFA:                   If (var_544 = "WT_LT") Then
  loc_1C9FE39:                     Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1C9FE41:                     Call 0.Method_arg_20 (CStr(Format(var_11C, "0.00")), 1)
  loc_1C9FE49:                     Call 0.Method_arg_38 (1)
  loc_1C9FE62:                   Else
  loc_1C9FE6D:                     If (var_544 = "WT_NETAMT") Then
  loc_1C9FE8C:                       var_1A8 = CVar((var_114 + var_11C)) 'Double
  loc_1C9FEAF:                       Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1C9FEB7:                       Call 0.Method_arg_20 (CStr(Format("0.00", "0.00")), 1)
  loc_1C9FEBF:                       Call 0.Method_arg_38 (1)
  loc_1C9FEDA:                     Else
  loc_1C9FEE5:                       If (var_544 = "W_TOTAMT") Then
  loc_1C9FF24:                         Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1C9FF2C:                         Call 0.Method_arg_20 (CStr(Format(var_104, "0.00")), 1)
  loc_1C9FF34:                         Call 0.Method_arg_38 (1)
  loc_1C9FF4D:                       Else
  loc_1C9FF58:                         If (var_544 = "W_LT") Then
  loc_1C9FF97:                           Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1C9FF9F:                           Call 0.Method_arg_20 (CStr(Format(var_10C, "0.00")), 1)
  loc_1C9FFA7:                           Call 0.Method_arg_38 (1)
  loc_1C9FFC0:                         Else
  loc_1C9FFCB:                           If (var_544 = "W_NETAMT") Then
  loc_1C9FFEA:                             var_1A8 = CVar((var_104 + var_10C)) 'Double
  loc_1CA000D:                             Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1CA0015:                             Call 0.Method_arg_20 (CStr(Format("0.00", "0.00")), 1)
  loc_1CA001D:                             Call 0.Method_arg_38 (1)
  loc_1CA0038:                           Else
  loc_1CA0043:                             If (var_544 = "T_TOTAMT") Then
  loc_1CA0062:                               var_1A8 = CVar((var_114 + var_104)) 'Double
  loc_1CA0085:                               Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1CA008D:                               Call 0.Method_arg_20 (CStr(Format("0.00", "0.00")), 1)
  loc_1CA0095:                               Call 0.Method_arg_38 (1)
  loc_1CA00B0:                             Else
  loc_1CA00BB:                               If (var_544 = "T_LT") Then
  loc_1CA00DA:                                 var_1A8 = CVar((var_11C + var_10C)) 'Double
  loc_1CA00FD:                                 Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1CA0105:                                 Call 0.Method_arg_20 (CStr(Format("0.00", "0.00")), 1)
  loc_1CA010D:                                 Call 0.Method_arg_38 (1)
  loc_1CA0128:                               Else
  loc_1CA0133:                                 If (var_544 = "T_NETAMT") Then
  loc_1CA0145:                                   var_204 = "0.00"
  loc_1CA015A:                                   var_1A8 = CVar((((var_114 + var_11C) + var_104) + var_10C)) 'Double
  loc_1CA0161:                                   var_220 = Format("0.00", var_204)
  loc_1CA017D:                                   Call 0.Method_arg_90 (var_198, CLng(var_9A), var_1F4)
  loc_1CA0185:                                   Call 0.Method_arg_20 (CStr(var_220), 1)
  loc_1CA018D:                                   Call 0.Method_arg_38 (1)
  loc_1CA01A5:                                 End If
  loc_1CA01A5:                               End If
  loc_1CA01A5:                             End If
  loc_1CA01A5:                           End If
  loc_1CA01A5:                         End If
  loc_1CA01A5:                       End If
  loc_1CA01A5:                     End If
  loc_1CA01A5:                   End If
  loc_1CA01A5:                 End If
  loc_1CA01A5:               End If
  loc_1CA01A5:             End If
  loc_1CA01A5:           End If
  loc_1CA01A5:         End If
  loc_1CA01A5:       End If
  loc_1CA01A5:     End If
  loc_1CA01A8:   Next var_534 'Integer
  loc_1CA01B2:   Set var_1F4 = Nothing
  loc_1CA01CB:   Set var_198 = MemVar_1F921E4 
  loc_1CA01D7:   Proc_6_99_1483714(var_198, 0, global_80)
  loc_1CA01E2:   MemVar_1F921E4 = var_198
  loc_1CA01F0: Else
  loc_1CA0209:   MsgBox("*No Records to print*", 0, var_204, var_220, var_230)
  loc_1CA0219: End If
  loc_1CA0226: Set var_140 = Nothing
  loc_1CA022E: Set var_C0 = Nothing
  loc_1CA0236: Set var_138 = Nothing
  loc_1CA023E: Set var_13C = Nothing
  loc_1CA0246: Set var_14C = Nothing
  loc_1CA024E: Set var_C8 = Nothing
  loc_1CA0256: Set var_12C = Nothing
  loc_1CA025E: Set var_130 = Nothing
  loc_1CA0266: Set var_144 = Nothing
  loc_1CA026E: Set var_148 = Nothing
  loc_1CA0271: Exit Sub
  loc_1CA0272: Proc_6_60_E62BC4(0, &HFF)
  loc_1CA027C: global_88 = 0
  loc_1CA027F: Exit Sub
End Sub

Public Sub Proc_66_73_1CC9514
  'Data Table: 540784
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_1BC As String
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_1C0 As String
  Dim var_218 As String
  Dim var_1D0 As Variant
  Dim var_204 As Variant
  Dim var_214 As Variant
  Dim var_184 As Variant
  Dim var_230 As Variant
  Dim var_1A4 As Variant
  Dim var_250 As Variant
  Dim unk_5407B4 As Connection15
  Dim var_240 As Variant
  Dim var_260 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_8C As Long
  Dim var_F0 As Long
  Dim var_AC As Double
  Dim var_A4 As Long
  Dim var_B4 As Double
  Dim var_C8 As Recordset15
  Dim var_2A8 As Variant
  Dim var_2AC As Variant
  Dim var_2B0 As Variant
  Dim var_2B4 As Variant
  Dim var_2DC As Variant
  Dim var_2A0 As Variant
  Dim var_2C8 As Variant
  Dim var_2CC As Variant
  Dim var_2E0 As Variant
  Dim var_2C4 As Variant
  Dim var_310 As Variant
  Dim var_320 As Variant
  Dim var_330 As Variant
  Dim var_340 As Variant
  Dim var_2F0 As Variant
  Dim var_350 As Variant
  Dim var_374 As Variant
  Dim var_3B8 As Variant
  Dim var_360 As Variant
  Dim var_384 As Variant
  Dim var_394 As Variant
  Dim var_3B4 As Variant
  Dim var_3EC As Variant
  Dim var_40C As Variant
  Dim var_41C As Variant
  Dim var_42C As Variant
  Dim var_43C As Variant
  Dim var_44C As Variant
  Dim var_100 As Double
  Dim var_108 As Double
  Dim var_134 As Double
  Dim var_D0 As Recordset15
  Dim var_F8 As Double
  Dim var_140 As Recordset15
  Dim var_470 As Variant
  Dim var_474 As Fields15
  Dim var_478 As Variant
  Dim var_B8 As Long
  Dim var_46C As Variant
  Dim var_488 As Variant
  Dim var_4BC As Variant
  Dim var_4DC As Variant
  Dim var_514 As Integer
  Dim var_500 As Recordset15
  Dim var_504 As Fields15
  Dim var_518 As Field20
  Dim var_148 As Recordset15
  Dim var_150 As Recordset15
  Dim var_364 As Fields15
  Dim var_C0 As Double
  Dim var_124 As Double
  Dim var_114 As Double
  Dim var_11C As Double
  Dim var_52C As Recordset15
  Dim var_154 As Recordset15
  Dim var_530 As Recordset15
  Dim var_158 As Recordset15
  Dim var_534 As Recordset15
  Dim var_88 As Long
  Dim var_538 As Recordset15
  Dim var_53C As Recordset15
  Dim var_540 As Recordset15
  loc_1CC2700: On Error Goto loc_1CC9505
  loc_1CC2706: var_174 = CVar(CLng(0)) 'Long
  loc_1CC270B: var_194 = 1
  loc_1CC272E: var_E4 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1CC273D: var_174 = CVar(CLng(1)) 'Long
  loc_1CC2742: var_194 = 1
  loc_1CC2765: var_EC = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1CC277C: var_194 = 1
  loc_1CC278F: var_1B8 = Me.FGrid.TextMatrix)
  loc_1CC279A: var_1BC = CStr(var_1B8)
  loc_1CC27BD: Set var_204 = Me.FGrid
  loc_1CC27D2: var_10C = 1 & CStr(var_204.TextMatrix))
  loc_1CC27FA: Set var_1A8 = Me.Check1
  loc_1CC2800: Call 0.Method_Proc_66_73_1CC95140 (1, var_204, var_21E, CVar(CLng(1)), var_194 & var_1BC & " TO ", CVar(CLng(0)), "FROM ")
  loc_1CC2808: var_EC = var_204.Value
  loc_1CC281E: If (CLng(var_21E) = 0) Then
  loc_1CC283C:   Call Proc_66_44_1281BC4(global_164, 1, CByte(1))
  loc_1CC2847:   global_148 = var_1BC
  loc_1CC2857:   If (global_88 = 0) Then
  loc_1CC285A:     Exit Sub
  loc_1CC285B:   End If
  loc_1CC285B: End If
  loc_1CC2863: var_174 = var_EC
  loc_1CC286B: Proc_6_7_F25D88(var_1B8, var_174, " AND RO.ChkOutDate <=", var_1BC, var_194)
  loc_1CC287E: global_60 = CStr(var_174 & var_1B8)
  loc_1CC2898: Set var_1A8 = Me.Check1
  loc_1CC289E: Call 0.Method_Proc_66_73_1CC95140 (1, var_204, var_21E)
  loc_1CC28A6: var_E4 = var_204.Value
  loc_1CC28BC: If (CLng(var_21E) = 0) Then
  loc_1CC28D7:   var_D8 = var_D8 & " and R.Code in ( " & global_148 & ") "
  loc_1CC28F9:   var_DC = var_DC & " and R.Code not in ( " & global_148 & ") "
  loc_1CC2903: End If
  loc_1CC2910: var_184 = "Update PayCharge set GuestProf=GF.GuestProf from GuestFolio GF Where FolioNoDocid=GF.Docid And ISNULL(PayCharge.FolioNoDocid,'')<>'' And PayCharge.SettleDate between "
  loc_1CC2918: var_174 = var_E4
  loc_1CC2920: Proc_6_7_F25D88(var_1B8, var_174, var_184, var_260)
  loc_1CC2928: var_214 = -1 & var_1B8 
  loc_1CC292C: var_194 = " And "
  loc_1CC2940: Proc_6_7_F25D88(var_240, var_EC, var_174 & var_1B8 & var_194)
  loc_1CC2948: var_250 = var_1A8 & var_240 
  loc_1CC2956: unk_5407B4.Execute CStr(var_250), var_194, var_174
  loc_1CC2978: If (MemVar_1F923AC = "A") Then
  loc_1CC298F:   var_214 = CVar("Select Distinct RO.DocId,GF.Vdate,GF.GuestProf,(RO.Adult+RO.Children) As Person,RO.FolioNo,RO.ChkInDate,RO.ChkInTime,RO.ChkOutDate,RO.ChkOutTime,IIF(GF.RODISC>0,(RO.RoomRate-(RO.RoomRate*GF.RODISC/100)),RO.ROOMRATE) AS ROOMRATE,RO.RoomNo,GP.Name AS GuestName,GP.BirthDate,GP.Age,Country.Name As Nationality,GF.RODISC,RO.Type,paycharge.Bill_No,BD.ChkInDAte as ChkinDT,BD.ChkInTime as ChkinTm,BD.ChkOutDate as CHkOutDt,BD.ChkOutTime as CHkOutTm " & "From ((((BillSummary as BD LEFT JOIN RoomOcc AS RO ON BD.FolioNo = RO.FolioNo) Left Join GuestProf GP ON RO.GuestProf=GP.Code) Left Join Country ON GP.Nationality=Country.Code) Left Join GuestFolio GF ON RO.DOCID=GF.DOCID)  LEFT JOIN PayCharge ON (GF.GuestProf = PayCharge.GuestProf) AND (GF.FolioNo = PayCharge.FolioNo) Where  Paycharge.bill_no is not NULL and BD.BillSettleDate between ") 'String
  loc_1CC299D:   Proc_6_7_F25D88(var_1B8, var_E4, var_E4 & var_1B8)
  loc_1CC29BD:   Proc_6_7_F25D88(var_250, var_EC, var_2A0 & var_1B8 & " And ")
  loc_1CC29C5:   var_260 = -1 & var_250 
  loc_1CC29C9:   var_1A4 = " and iif(isnull(Paycharge.ModeSet),'',Paycharge.ModeSet)<>'S' AND Paycharge.SettleDate is Not NULL and RO.RoomType ='RO' "
  loc_1CC29DB:   var_280 = var_260 & var_1A4 & CVar(global_60) 
  loc_1CC29F2:   unk_5407B4.Execute CStr(var_280 & " ORDER BY paycharge.Bill_NO,RO.Type"), var_1A8, 
  loc_1CC29FD:   Set var_C8 = var_1A8
  loc_1CC2A20: Else
  loc_1CC2A28:   If (MemVar_1F923AC = "S") Then
  loc_1CC2A3F:     var_1BC = "Select Distinct RO.DocId,RO.MFolionoDocId,GF.Vdate,GF.GuestProf,Case When IsNull(RO.mFolioNoDocId,'')<>'' Then (Select Sum(Adult+Children) From RoomOccDet Where MFolionoDocId=RO.MFolionoDocId) Else (RO.Adult+RO.Children) End As Person,RO.FolioNo,Case When RO.SNO=(Select Min(SNo) From RoomOccDet Where Docid=RO.DocId) Then RO.ChkInDt Else (Select Top 1 ChkOutDate From RoomOcc Where DocId=RO.DocId And ChngDate<RO.ChngDate Order By Sno Desc)End As ChkInDate,Case When RO.SNO=(Select Min(SNo) From RoomOccDet Where Docid=RO.DocId) Then RO.ChkInTm Else (Select Top 1 ChkOutTime From RoomOcc Where DocId=RO.DocId And ChngDate<RO.ChngDate Order By Sno Desc) End As ChkInTime,RO.ChkOutDate,RO.ChkOutTime, " & "ROOMRATE =case when GF.RODISC>0 then (RO.RoomRate-(RO.RoomRate*GF.RODISC/100)) else RO.ROOMRATE end ,IsNull(RO.RoomTarrif,0) RoomTarrif, RO.RoomNo,RO.RRTaxInc,RO.RRServiceChrg,GP.ConPrefix,GP.Name AS GuestName,GP.BirthDate,GP.Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality,GF.RODISC,RO.Type,paycharge.Bill_No,Cast(paycharge.Bill_NO As INTEGER) As OBill_No,RO.ChkinDT,RO.ChkinTm,RO.CHkOutDt,RO.CHkOutTm "
  loc_1CC2A46:     var_1C0 = CStr(var_280 & " ORDER BY paycharge.Bill_NO,RO.Type") & "From ((((BillSummary as BD LEFT JOIN RoomOccDet AS RO ON BD.FolioNoDocid = RO.Docid AND RO.RoomType ='RO' "
  loc_1CC2A57:     var_214 = CVar(var_1C0 & global_60 & " AND BD.BillSettleDate Between ") 'String
  loc_1CC2A65:     Proc_6_7_F25D88(var_1B8, var_E4, var_214)
  loc_1CC2A85:     Proc_6_7_F25D88(var_250, var_EC, var_280 & var_1B8 & " And ")
  loc_1CC2A8D:     var_260 = -1 & var_250 
  loc_1CC2A91:     var_1A4 = ") Left Join GuestProf GP ON RO.GuestProf=GP.Code) Left Join Country ON GP.Nationality=Country.Code) Left Join GuestFolio GF ON RO.DOCID=GF.DOCID) LEFT JOIN PayCharge ON (GF.GuestProf = PayCharge.GuestProf) AND (GF.DocId = PayCharge.FolioNoDocId) AND IsNull(Paycharge.bill_no,'')<>'' And IsNull(Paycharge.ModeSet,'')<>'S' AND Paycharge.SettleDate IS NOT NULL ORDER BY OBill_No,RO.Type"
  loc_1CC2AA4:     unk_5407B4.Execute CStr(var_260 & var_1A4), var_1A8, 
  loc_1CC2AAF:     Set var_C8 = var_1A8
  loc_1CC2AD3:   End If
  loc_1CC2AD3: End If
  loc_1CC2AD8: var_8C = 1
  loc_1CC2AE0: var_F0 = 0
  loc_1CC2AE6: var_AC = CDbl(0)
  loc_1CC2AEE: var_A4 = 0
  loc_1CC2AF4: var_B4 = CDbl(0)
  loc_1CC2B0B: If (var_C8.RecordCount > 0) Then
  loc_1CC2B1B:   Call Proc_66_55_1181A2C(New)
  loc_1CC2B23:   Set var_14C = var_1A8
  loc_1CC2B26:   ' Referenced from: 1CC8C82
  loc_1CC2B35:   If Not(Me.Recordset15.EOF) Then
  loc_1CC2BC4:     var_260 = (var_C8.Fields.Item("Type").Value = "C") And (var_C8.Fields.Item("mFolioNoDocid").Value <> var_C8.Fields.Item("DocID").Value)
  loc_1CC2BE2:     If CBool(var_260) Then
  loc_1CC2C2C:       Proc_6_7_F25D88(var_214, CVar(var_C8.Fields.Item("ChkInDate")), "sELECT Min(Sno) FROM ROOMOCC WHERE chkindate=", var_2C4, -1, var_2C8, var_2CC)
  loc_1CC2CA2:       var_290 = 0 & var_214 & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DocId='" & var_C8.Fields.Item("DocID").Value 
  loc_1CC2CB9:       unk_5407B4.Execute CStr(var_290 & "'"), var_2E0, var_2F0
  loc_1CC2CC1:       var_1A8 = var_2C8.Fields
  loc_1CC2CC9:       var_A4 = var_2CC.Item(var_B4)
  loc_1CC2CD1:       var_AC = var_2E0.Value
  loc_1CC2D12:       If (var_2F0 = 1) Then
  loc_1CC2D29:         var_214 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1CC2D96:         var_270 = var_214 & var_C8.Fields.Item("ChkOutDate").Value & " " & var_C8.Fields.Item("ChkOutTime").Value & "',120) AND  PC.Bill_No='" 
  loc_1CC2DC5:         var_2A0 = -1 & CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), var_270, var_360)) 
  loc_1CC2DFC:         var_310 = CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), var_270, var_360)) & "'" & "' AND PC.FOLIONODOCID='" & var_C8.Fields.Item("DocID").Value 
  loc_1CC2E26:         unk_5407B4.Execute CStr(var_310 & "'" & CVar(var_D8) & " GROUP By PC.Bill_No "), var_2E0, 
  loc_1CC2E31:         Set var_D0 = var_2E0
  loc_1CC2E72:       Else
  loc_1CC2EB0:         var_2AC = var_C8.Fields.Item("ChkInTime")
  loc_1CC2EC4:         var_240 = "hh:nn:ss"
  loc_1CC2ED4:         var_250 = Format(CVar(var_2AC), var_240)
  loc_1CC2FA6:         var_270 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) Between Convert(datetime,'") 'String
  loc_1CC2FDC:         var_340 = var_270 & var_C8.Fields.Item("ChkInDate").Value & " " & var_250 & "',120) and Convert(datetime,'" & var_C8.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1CC2FEC:         var_384 = CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), 1, 1)) 'String
  loc_1CC3008:         var_40C = var_340 & "',120) AND  PC.Bill_No='" & var_384 & "' AND PC.FOLIONODOCID='" & var_C8.Fields.Item("DocID").Value & "'" 
  loc_1CC3012:         var_42C = var_40C & CVar(var_D8) 
  loc_1CC301B:         var_44C = var_42C & " GROUP By PC.Bill_No " 
  loc_1CC3029:         unk_5407B4.Execute CStr(var_44C), var_46C, -1
  loc_1CC3034:         Set var_D0 = var_470
  loc_1CC308E:       End If
  loc_1CC3091:     Else
  loc_1CC3097:       var_1D0 = 0
  loc_1CC30F3:       unk_5407B4.Execute CStr("sELECT COUNT(*) FROM ROomOccDet WHERE DocId='" & var_C8.Fields.Item("DocID").Value & "'"), var_240, -1
  loc_1CC30FB:       var_2A8 = var_2A8.Fields
  loc_1CC3103:       var_1D0 = var_2AC.Item(var_2AC)
  loc_1CC310B:       var_2B0 = var_2B0.Value
  loc_1CC3161:       var_2E0 = var_C8.Fields.Item("DocID")
  loc_1CC31A4:       If CBool((var_250 > 1) And (var_C8.Fields.Item("mFolioNoDocid").Value <> var_2E0.Value)) Then
  loc_1CC3209:         var_250 = Format(CVar(var_C8.Fields.Item("ChkInTime")), "hh:nn:ss")
  loc_1CC321D:         var_2B0 = var_C8.Fields
  loc_1CC324B:         var_2C8 = var_C8.Fields
  loc_1CC3253:         var_2CC = var_2C8.Item("DocID")
  loc_1CC3274:         var_270 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.BillAmount END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.BillAmount END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) > Convert(datetime,'") 'String
  loc_1CC328A:         var_280 = var_2E0.Value & var_C8.Fields.Item("ChkInDate").Value & " " & var_250 
  loc_1CC3293:         var_290 = var_280 & "',120) AND  PC.Bill_No='" 
  loc_1CC329D:         var_2F0 = var_290 & CVar(Proc_6_38_E68A98(CVar(var_2B0.Item("Bill_no")), 1, 1, var_250)) 
  loc_1CC32AD:         var_330 = var_2F0 & "' AND PC.FOLIONODOCID='" & var_2CC.Value 
  loc_1CC32D7:         unk_5407B4.Execute CStr(var_330 & "'" & CVar(var_D8) & " GROUP By PC.Bill_No "), var_384, -1
  loc_1CC32E2:         Set var_D0 = var_2E0
  loc_1CC3329:       Else
  loc_1CC3365:         If CBool(var_C8.Fields.Item("Type").Value <> "C") Then
  loc_1CC33D0:           If (var_C8.Fields.Item("mFolioNoDocid").Value = var_C8.Fields.Item("DocID").Value) Then
  loc_1CC33E7:             var_1BC = "Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.BillAmount END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.BillAmount END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1CC3412:             var_1C0 = Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), CStr(var_330 & "'" & CVar(var_D8) & " GROUP By PC.Bill_No "), var_280, -1, var_2B0)
  loc_1CC341D:             var_230 = CVar(var_2E0 & Proc_6_38_E68A98(CVar(var_2B0.Item("Bill_no")), 1, 1, var_250) & "' AND PC.FOLIONODOCID='") 'String
  loc_1CC3474:             unk_5407B4.Execute CStr(var_230 & var_C8.Fields.Item("DocID").Value & "'" & CVar(var_D8) & " GROUP By PC.Bill_No "), var_470, 1
  loc_1CC347F:             Set var_D0 = var_2B0
  loc_1CC34AE:           Else
  loc_1CC34C2:             var_1BC = "Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.BillAmount END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.BillAmount END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1CC34ED:             var_1C0 = Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), CStr(var_330 & "'" & CVar(var_D8) & " GROUP By PC.Bill_No "), var_2F0)
  loc_1CC34F1:             var_218 = -1 & var_1C0
  loc_1CC34F8:             var_230 = CVar(var_2E0 & Proc_6_38_E68A98(CVar(var_2B0.Item("Bill_no")), 1, 1, var_230 & var_C8.Fields.Item("DocID").Value & "'") & "' AND PC.FOLIONODOCID='") 'String
  loc_1CC351D:             var_214 = var_C8.Fields.Item("DocID").Value
  loc_1CC356B:             Proc_6_7_F25D88(var_290, CVar(var_C8.Fields.Item("ChkInDate")), var_230 & var_214 & "'" & CVar(var_D8) & " AND vdate >= ")
  loc_1CC357C:             var_2C4 = var_2C8 & var_290 & " GROUP By PC.Bill_No " 
  loc_1CC358A:             unk_5407B4.Execute CStr(var_2C4), 1, 
  loc_1CC3595:             Set var_D0 = var_2C8
  loc_1CC35CB:           End If
  loc_1CC35CB:         End If
  loc_1CC35CB:       End If
  loc_1CC35CB:     End If
  loc_1CC35CE:     var_100 = CDbl(0)
  loc_1CC35D4:     var_108 = CDbl(0)
  loc_1CC35DA:     var_134 = CDbl(0)
  loc_1CC35E4:     If (var_D0 Is Nothing) Then
  loc_1CC35E7:       GoTo loc_1CC8C7A
  loc_1CC35EA:     End If
  loc_1CC35FE:     If (var_D0.RecordCount > 0) Then
  loc_1CC362C:       var_F8 = CSng(var_D0.Fields.Item("LuxuryTax").Value)
  loc_1CC36C5:       var_260 = (var_C8.Fields.Item("Type").Value = "C") And (var_C8.Fields.Item("mFolioNoDocid").Value <> var_C8.Fields.Item("DocID").Value)
  loc_1CC36E3:       If CBool(var_260) Then
  loc_1CC372D:         Proc_6_7_F25D88(var_214, CVar(var_C8.Fields.Item("ChkInDate")), "sELECT Min(Sno) FROM ROOMOCC WHERE chkindate=", var_2C4, -1, var_2C8, var_2CC)
  loc_1CC37A3:         var_290 = 0 & var_214 & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C8.Fields.Item("DocID").Value 
  loc_1CC37BA:         unk_5407B4.Execute CStr(var_290 & "'"), var_2E0, var_2F0
  loc_1CC37C2:         var_F8 = var_2C8.Fields
  loc_1CC37CA:         var_108 = var_2CC.Item(var_134)
  loc_1CC37D2:         var_100 = var_2E0.Value
  loc_1CC3813:         If (var_2F0 = 1) Then
  loc_1CC3868:           var_240 = "hh:nn:ss"
  loc_1CC38A3:           Proc_6_7_F25D88(var_2C4, CVar(var_C8.Fields.Item("ChkInDate")))
  loc_1CC38CE:           Proc_6_7_F25D88(var_330, CVar(var_C8.Fields.Item("ChkOutDate")))
  loc_1CC3939:           var_270 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1CC3944:           var_214 = var_C8.Fields.Item("ChkOutDate").Value & " " 
  loc_1CC394F:           var_280 = 0 & var_214 & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_214 & Format(CVar(var_C8.Fields.Item("ChkOutTime")), var_240) 
  loc_1CC3982:           var_394 = var_280 & "',120) AND PC.VDATE BETWEEN " & var_2C4 & " AND " & var_330 & " AND  PC.Bill_No='" & CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), 1)) 
  loc_1CC399B:           var_40C = var_394 & "' and PC.FOLIONODOCID='" & var_C8.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No" 
  loc_1CC39A9:           unk_5407B4.Execute CStr(var_40C), var_42C, -1
  loc_1CC39B4:           Set var_140 = var_470
  loc_1CC3A2E:           Proc_6_39_E7C810(var_214, CVar(var_D0.Fields.Item("TotalTax")))
  loc_1CC3A6A:           Proc_6_39_E7C810(var_214, CVar(var_D0.Fields.Item("TotalTax")), CSng(var_214))
  loc_1CC3A94:           If (var_140.RecordCount > 0) Then
  loc_1CC3ABD:             Proc_6_39_E7C810(var_214, CVar(var_140.Fields.Item("TotalTax")), CSng(var_214))
  loc_1CC3AEB:             Proc_6_39_E7C810(var_240, CVar(var_D0.Fields.Item("TotalTax")), var_214)
  loc_1CC3B07:             If (var_470 > var_240) Then
  loc_1CC3B30:               Proc_6_39_E7C810(var_214, CVar(var_140.Fields.Item("TotalTax")))
  loc_1CC3B39:               var_108 = CSng(var_214)
  loc_1CC3B46:             End If
  loc_1CC3B6C:             Proc_6_39_E7C810(var_214, CVar(var_140.Fields.Item("TotalTax")))
  loc_1CC3B9A:             Proc_6_39_E7C810(var_240, CVar(var_D0.Fields.Item("TotalTax")), var_214)
  loc_1CC3BB6:             If (var_108 > var_240) Then
  loc_1CC3BDF:               Proc_6_39_E7C810(var_214, CVar(var_140.Fields.Item("TotalTax")))
  loc_1CC3C0D:               Proc_6_39_E7C810(var_240, CVar(var_D0.Fields.Item("TotalTax")))
  loc_1CC3C15:               var_250 = (var_214 - var_240)
  loc_1CC3C1A:               var_134 = CSng(Format(CVar(var_C8.Fields.Item("ChkOutTime")), var_240))
  loc_1CC3C32:             Else
  loc_1CC3C35:               var_134 = CDbl(0)
  loc_1CC3C38:             End If
  loc_1CC3CC5:             Proc_6_7_F25D88(var_2C4, CVar(var_C8.Fields.Item("ChkInDate")), 1, 1)
  loc_1CC3CF0:             Proc_6_7_F25D88(var_330, CVar(var_C8.Fields.Item("ChkOutDate")), var_134)
  loc_1CC3D4D:             var_41C = 0
  loc_1CC3D6A:             var_270 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1CC3D80:             var_280 = 0 & var_C8.Fields.Item("ChkOutDate").Value & " " & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C8.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1CC3DB0:             var_384 = CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), var_134)) 'String
  loc_1CC3DBC:             var_3B4 = var_280 & "',120) AND PC.VDATE BETWEEN " & var_2C4 & " AND " & var_330 & " AND  PC.Bill_No='" & var_384 & "' and PC.FOLIONODOCID='" 
  loc_1CC3DC3:             var_3EC = var_3B4 & var_C8.Fields.Item("DocID").Value 
  loc_1CC3DDA:             unk_5407B4.Execute CStr(var_3EC & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_42C, -1
  loc_1CC3DE2:             var_470 = var_470.Fields
  loc_1CC3DEA:             var_41C = var_474.Item(var_474)
  loc_1CC3DF2:             var_478 = var_478.Value
  loc_1CC3DFC:             var_B8 = CLng(var_44C)
  loc_1CC3E59:           Else
  loc_1CC3E5E:             var_B8 = 0
  loc_1CC3E61:           End If
  loc_1CC3E64:         Else
  loc_1CC3EB6:           var_240 = "hh:nn:ss"
  loc_1CC3F58:           Proc_6_7_F25D88(var_384, CVar(var_C8.Fields.Item("ChkInDate")), 1, 1, 1)
  loc_1CC3F83:           Proc_6_7_F25D88(var_3EC, CVar(var_C8.Fields.Item("ChkOutDate")), 1, var_B8)
  loc_1CC3FA7:           var_44C = CVar(var_C8.Fields.Item("Bill_no")) 'Address
  loc_1CC3FEE:           var_270 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) Between Convert(datetime,'") 'String
  loc_1CC3FF9:           var_214 = var_C8.Fields.Item("ChkInDate").Value & " " 
  loc_1CC4004:           var_280 = 0 & var_214 & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_214 & Format(CVar(var_C8.Fields.Item("ChkInTime")), var_240) 
  loc_1CC4024:           var_340 = var_280 & "',120) and Convert(datetime,'" & var_C8.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1CC4057:           var_488 = var_340 & "',120) AND PC.VDATE BETWEEN " & var_384 & " AND " & var_3EC & " AND  PC.Bill_No='" & CVar(Proc_6_38_E68A98(var_44C, var_B8)) 
  loc_1CC4070:           var_4DC = var_488 & "' and PC.FOLIONODOCID='" & var_C8.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No" 
  loc_1CC407E:           unk_5407B4.Execute CStr(var_4DC), var_4FC, -1
  loc_1CC4089:           Set var_140 = var_500
  loc_1CC4119:           Proc_6_39_E7C810(var_214, CVar(var_D0.Fields.Item("TotalTax")), var_500)
  loc_1CC4155:           Proc_6_39_E7C810(var_214, CVar(var_D0.Fields.Item("TotalTax")), CSng(var_214))
  loc_1CC417F:           If (var_140.RecordCount > 0) Then
  loc_1CC41A8:             Proc_6_39_E7C810(var_214, CVar(var_140.Fields.Item("TotalTax")), CSng(var_214))
  loc_1CC41D6:             Proc_6_39_E7C810(var_240, CVar(var_D0.Fields.Item("TotalTax")), var_214)
  loc_1CC41F2:             If (var_44C > var_240) Then
  loc_1CC421B:               Proc_6_39_E7C810(var_214, CVar(var_140.Fields.Item("TotalTax")))
  loc_1CC4224:               var_108 = CSng(var_214)
  loc_1CC4231:             End If
  loc_1CC4257:             Proc_6_39_E7C810(var_214, CVar(var_140.Fields.Item("TotalTax")))
  loc_1CC4260:             var_108 = CSng(var_214)
  loc_1CC4293:             Proc_6_39_E7C810(var_214, CVar(var_140.Fields.Item("TotalTax")), var_108)
  loc_1CC42C1:             Proc_6_39_E7C810(var_240, CVar(var_D0.Fields.Item("TotalTax")), var_214)
  loc_1CC42DD:             If (var_108 > var_240) Then
  loc_1CC4306:               Proc_6_39_E7C810(var_214, CVar(var_140.Fields.Item("TotalTax")))
  loc_1CC4334:               Proc_6_39_E7C810(var_240, CVar(var_D0.Fields.Item("TotalTax")))
  loc_1CC433C:               var_250 = (var_214 - var_240)
  loc_1CC4341:               var_134 = CSng(Format(CVar(var_C8.Fields.Item("ChkInTime")), var_240))
  loc_1CC4359:             Else
  loc_1CC435C:               var_134 = CDbl(0)
  loc_1CC435F:             End If
  loc_1CC439D:             var_2AC = var_C8.Fields.Item("ChkInTime")
  loc_1CC43B1:             var_240 = "hh:nn:ss"
  loc_1CC43C1:             var_250 = Format(CVar(var_2AC), var_240)
  loc_1CC4453:             Proc_6_7_F25D88(var_384, CVar(var_C8.Fields.Item("ChkInDate")), 1, 1, 1)
  loc_1CC447E:             Proc_6_7_F25D88(var_3EC, CVar(var_C8.Fields.Item("ChkOutDate")), 1)
  loc_1CC4492:             var_470 = var_C8.Fields
  loc_1CC449A:             var_474 = var_470.Item("Bill_no")
  loc_1CC44DB:             var_514 = 0
  loc_1CC44F8:             var_270 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) Between Convert(datetime,'") 'String
  loc_1CC450E:             var_280 = 0 & var_C8.Fields.Item("ChkInDate").Value & " " & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C8.Fields.Item("ChkInDate").Value & " " & var_250 
  loc_1CC452E:             var_340 = var_280 & "',120) and Convert(datetime,'" & var_C8.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1CC4537:             var_360 = var_340 & "',120) AND PC.VDATE BETWEEN " 
  loc_1CC455E:             var_46C = CVar(Proc_6_38_E68A98(CVar(var_474), var_134)) 'String
  loc_1CC4571:             var_4BC = var_360 & var_384 & " AND " & var_3EC & " AND  PC.Bill_No='" & var_46C & "' and PC.FOLIONODOCID='" & var_C8.Fields.Item("DocID").Value 
  loc_1CC4588:             unk_5407B4.Execute CStr(var_4BC & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_4FC, -1
  loc_1CC4590:             var_500 = var_500.Fields
  loc_1CC4598:             var_514 = var_504.Item(var_504)
  loc_1CC45A0:             var_518 = var_518.Value
  loc_1CC45AA:             var_B8 = CLng(var_528)
  loc_1CC461D:           Else
  loc_1CC4622:             var_B8 = 0
  loc_1CC4625:           End If
  loc_1CC4625:         End If
  loc_1CC4628:       Else
  loc_1CC462E:         var_1D0 = 0
  loc_1CC468A:         unk_5407B4.Execute CStr("sELECT COUNT(*) FROM RoomOccDet WHERE Docid='" & var_C8.Fields.Item("DocID").Value & "'"), var_240, -1
  loc_1CC4692:         var_2A8 = var_2A8.Fields
  loc_1CC469A:         var_1D0 = var_2AC.Item(var_2AC)
  loc_1CC46A2:         var_2B0 = var_2B0.Value
  loc_1CC46F8:         var_2E0 = var_C8.Fields.Item("DocID")
  loc_1CC473B:         If CBool((var_250 > 1) And (var_C8.Fields.Item("mFolioNoDocid").Value <> var_2E0.Value)) Then
  loc_1CC4790:           var_240 = "hh:nn:ss"
  loc_1CC47A0:           var_250 = Format(CVar(var_C8.Fields.Item("ChkInTime")), var_240)
  loc_1CC47B4:           var_2B0 = var_C8.Fields
  loc_1CC47C4:           var_2A0 = CVar(var_2B0.Item("Bill_no")) 'Address
  loc_1CC47E2:           var_2C8 = var_C8.Fields
  loc_1CC480B:           var_270 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS TotalTax,Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(PC.Vdate as varchar(11))+' '+vtime,120) > Convert(datetime,'") 'String
  loc_1CC4816:           var_214 = var_C8.Fields.Item("ChkInDate").Value & " " 
  loc_1CC481D:           var_260 = var_214 & var_250 
  loc_1CC483D:           var_310 = var_2E0.Value & var_260 & "',120) AND PC.Bill_No='" & CVar(Proc_6_38_E68A98(var_2A0, 1, 1, var_250)) & "' AND PC.FOLIONODOCID='" 
  loc_1CC485B:           unk_5407B4.Execute CStr(var_310 & var_2C8.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No"), var_360, -1
  loc_1CC4866:           Set var_140 = var_2E0
  loc_1CC48CC:           Proc_6_39_E7C810(var_214, CVar(var_D0.Fields.Item("TotalTax")), var_2E0)
  loc_1CC4908:           Proc_6_39_E7C810(var_214, CVar(var_D0.Fields.Item("TotalTax")), CSng(var_214))
  loc_1CC4932:           If (var_140.RecordCount > 0) Then
  loc_1CC495B:             Proc_6_39_E7C810(var_214, CVar(var_140.Fields.Item("TotalTax")), CSng(var_214))
  loc_1CC4989:             Proc_6_39_E7C810(var_240, CVar(var_D0.Fields.Item("TotalTax")), var_214)
  loc_1CC49A5:             If (var_B8 > var_240) Then
  loc_1CC49CE:               Proc_6_39_E7C810(var_214, CVar(var_140.Fields.Item("TotalTax")))
  loc_1CC49D7:               var_108 = CSng(var_214)
  loc_1CC49E4:             End If
  loc_1CC4A0A:             Proc_6_39_E7C810(var_214, CVar(var_140.Fields.Item("TotalTax")), var_108)
  loc_1CC4A38:             Proc_6_39_E7C810(var_240, CVar(var_D0.Fields.Item("TotalTax")), var_214)
  loc_1CC4A54:             If (var_B8 > var_240) Then
  loc_1CC4A7D:               Proc_6_39_E7C810(var_214, CVar(var_140.Fields.Item("TotalTax")))
  loc_1CC4AAB:               Proc_6_39_E7C810(var_240, CVar(var_D0.Fields.Item("TotalTax")))
  loc_1CC4AB3:               var_250 = (var_214 - var_240)
  loc_1CC4AB8:               var_134 = CSng(var_250)
  loc_1CC4AD0:             Else
  loc_1CC4AD3:               var_134 = CDbl(0)
  loc_1CC4AD6:             End If
  loc_1CC4AFC:             Proc_6_39_E7C810(var_214, CVar(var_140.Fields.Item("TotDays")), var_134)
  loc_1CC4B06:             var_B8 = CLng(var_214)
  loc_1CC4B16:           Else
  loc_1CC4B1B:             var_B8 = 0
  loc_1CC4B1E:           End If
  loc_1CC4B21:         Else
  loc_1CC4B5D:           If CBool(var_C8.Fields.Item("Type").Value <> "C") Then
  loc_1CC4BC8:             If (var_C8.Fields.Item("mFolioNoDocid").Value = var_C8.Fields.Item("DocID").Value) Then
  loc_1CC4BDF:               var_1BC = "Select SUM(PC.AMTDR-PC.AMTCR) AS TotalTax,Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1CC4C0A:               var_1C0 = Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), CStr(var_310 & var_2C8.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No"), var_260, -1, var_2B0)
  loc_1CC4C42:               var_240 = CVar(var_B8 & Proc_6_38_E68A98(var_2A0, 1, 1, var_250) & "' and PC.FOLIONODOCID='") & var_C8.Fields.Item("DocID").Value 
  loc_1CC4C59:               unk_5407B4.Execute CStr(var_240 & "' and R.Nature='Room Charge' GROUP By PC.Bill_No"), var_B8, var_134
  loc_1CC4C64:               Set var_148 = var_2B0
  loc_1CC4C8F:             Else
  loc_1CC4CA3:               var_1BC = "Select SUM(PC.AMTDR-PC.AMTCR) AS TotalTax,Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1CC4CCE:               var_1C0 = Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), CStr(var_310 & var_2C8.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.Bill_No"), var_2A0)
  loc_1CC4CD2:               var_218 = -1 & var_1C0
  loc_1CC4CD9:               var_230 = CVar(var_B8 & Proc_6_38_E68A98(var_2A0, 1, 1, var_240 & "' and R.Nature='Room Charge' GROUP By PC.Bill_No") & "' and PC.FOLIONODOCID='") 'String
  loc_1CC4CFE:               var_214 = var_C8.Fields.Item("DocID").Value
  loc_1CC4D06:               var_240 = var_230 & var_214 
  loc_1CC4D39:               Proc_6_7_F25D88(var_2E0.Value, CVar(var_C8.Fields.Item("ChkInDate")), var_240 & "' And PC.Vdate >= ")
  loc_1CC4D4A:               var_290 = var_2C8 & var_2E0.Value & " And R.Nature='Room Charge' GROUP By PC.Bill_No" 
  loc_1CC4D58:               unk_5407B4.Execute CStr(var_290), var_528, 
  loc_1CC4D63:               Set var_148 = var_2C8
  loc_1CC4D95:             End If
  loc_1CC4DB4:             var_1B8 = CVar(var_D0.Fields.Item("TotalTax")) 'Address
  loc_1CC4DBB:             Proc_6_39_E7C810(var_214)
  loc_1CC4DF7:             Proc_6_39_E7C810(var_214, CVar(var_D0.Fields.Item("TotalTax")))
  loc_1CC4E21:             If (var_148.RecordCount > 0) Then
  loc_1CC4E4A:               Proc_6_39_E7C810(var_214, CVar(var_148.Fields.Item("TotalTax")), CSng(var_214))
  loc_1CC4E78:               Proc_6_39_E7C810(var_240, CVar(var_D0.Fields.Item("TotalTax")), var_214)
  loc_1CC4E94:               If (CSng(var_214) > var_240) Then
  loc_1CC4EBD:                 Proc_6_39_E7C810(var_214, CVar(var_148.Fields.Item("TotalTax")))
  loc_1CC4EC6:                 var_108 = CSng(var_214)
  loc_1CC4ED3:               End If
  loc_1CC4EF9:               Proc_6_39_E7C810(var_214, CVar(var_148.Fields.Item("TotalTax")))
  loc_1CC4F27:               Proc_6_39_E7C810(var_240, CVar(var_D0.Fields.Item("TotalTax")), var_214)
  loc_1CC4F43:               If (var_108 > var_240) Then
  loc_1CC4F6C:                 Proc_6_39_E7C810(var_214, CVar(var_148.Fields.Item("TotalTax")))
  loc_1CC4F8B:                 var_2AC = var_D0.Fields.Item("TotalTax")
  loc_1CC4F9A:                 Proc_6_39_E7C810(var_240, CVar(var_2AC))
  loc_1CC4FA2:                 var_250 = (var_214 - var_240)
  loc_1CC4FA7:                 var_134 = CSng(var_240 & "' And PC.Vdate >= ")
  loc_1CC4FBF:               Else
  loc_1CC4FC2:                 var_134 = CDbl(0)
  loc_1CC4FC5:               End If
  loc_1CC4FEB:               Proc_6_39_E7C810(var_214, CVar(var_148.Fields.Item("TotDays")), var_134)
  loc_1CC4FF5:               var_B8 = CLng(var_214)
  loc_1CC5005:             Else
  loc_1CC500A:               var_B8 = 0
  loc_1CC500D:             End If
  loc_1CC5010:           Else
  loc_1CC5013:           Else
  loc_1CC5013:           End If
  loc_1CC5013:         End If
  loc_1CC5016:       Else
  loc_1CC5019:         var_F8 = CDbl(0)
  loc_1CC5022:         var_1D0 = 0
  loc_1CC507E:         unk_5407B4.Execute CStr("sELECT COUNT(*) FROM RoomOcc WHERE DOCID='" & var_C8.Fields.Item("DocID").Value & "'"), var_240, -1
  loc_1CC5086:         var_2A8 = var_2A8.Fields
  loc_1CC508E:         var_1D0 = var_2AC.Item(var_2AC)
  loc_1CC5096:         var_2B0 = var_2B0.Value
  loc_1CC50BA:         var_2B4 = var_C8.Fields
  loc_1CC50C2:         var_2C8 = var_2B4.Item("mFolioNoDocid")
  loc_1CC5100:         var_2A0 = (var_240 & "' And PC.Vdate >= " > 1) And (var_2C8.Value <> var_C8.Fields.Item("DocID").Value)
  loc_1CC512F:         If CBool(var_2A0) Then
  loc_1CC5189:           var_230 = CVar("Select Count(*) from PayCharge where PayCode='" & MemVar_1F92070 & "LT' And FOLIONODOCID='") & var_C8.Fields.Item("DocID").Value 
  loc_1CC51BE:           var_260 = CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), var_230 & "' and Bill_no='", var_290, -1, var_2B0, var_2B4)) 'String
  loc_1CC51CA:           var_280 = 0 & (var_230 & "' and Bill_no='" & "' And PC.Vdate >= " > 1) & "'" 
  loc_1CC51D8:           unk_5407B4.Execute CStr(var_280), var_2C8, var_2A0
  loc_1CC51E0:           var_250 = var_2B0.Fields
  loc_1CC51E8:           var_B8 = var_2B4.Item(var_F8)
  loc_1CC51F0:            = var_2C8.Value
  loc_1CC522D:           If (var_2A0 = 0) Then
  loc_1CC5244:             var_1BC = "Select (ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE  PC.Bill_No='"
  loc_1CC526F:             var_1C0 = Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), "Select Count(*) from PayCharge where PayCode='" & MemVar_1F92070, var_280)
  loc_1CC5273:             var_218 = -1 & var_1C0
  loc_1CC529F:             var_214 = var_C8.Fields.Item("DocID").Value
  loc_1CC52B0:             var_250 = CVar(var_B8 & Proc_6_38_E68A98(var_2A0, 1, 1, var_250) & "' and PC.FOLIONODOCID='") & var_214 & "' and PC.PAYCode in ('" 
  loc_1CC52D1:             unk_5407B4.Execute CStr(var_250 & CVar(MemVar_1F92070) & "LT') GROUP By PC.Bill_No"), var_2B0, 
  loc_1CC52DC:             Set var_150 = var_2B0
  loc_1CC531C:             If (var_150.RecordCount > 0) Then
  loc_1CC533E:               var_1B8 = CVar(var_150.Fields.Item("TotalTax")) 'Address
  loc_1CC5345:               Proc_6_39_E7C810(var_214)
  loc_1CC534E:               var_108 = CSng(var_214)
  loc_1CC5381:               Proc_6_39_E7C810(var_214, CVar(var_150.Fields.Item("TotalTax")))
  loc_1CC538A:               var_100 = CSng(var_214)
  loc_1CC539A:             Else
  loc_1CC539D:               var_108 = CDbl(0)
  loc_1CC53A3:               var_100 = CDbl(0)
  loc_1CC53A6:             End If
  loc_1CC53A9:           Else
  loc_1CC5422:             var_2B0 = var_C8.Fields
  loc_1CC5432:             var_2A0 = var_2B0.Item("ChkOutDate").Value
  loc_1CC5446:             var_2C8 = var_C8.Fields
  loc_1CC544E:             var_2CC = var_2C8.Item("ChkOutTime")
  loc_1CC546B:             var_2F0 = CVar(var_2CC) 'Address
  loc_1CC5486:             var_2E0 = var_C8.Fields
  loc_1CC548E:             var_364 = var_2E0.Item("Bill_no")
  loc_1CC5496:             var_374 = CVar(var_364) 'Address
  loc_1CC54DD:             var_270 = CVar("Select (ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE  Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) Between Convert(datetime,'") 'String
  loc_1CC54E8:             var_214 = var_C8.Fields.Item("ChkInDate").Value & " " 
  loc_1CC54EF:             var_260 = var_214 & Format(CVar(var_C8.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1CC54F3:             var_280 = Format(CVar(var_C8.Fields.Item("ChkInTime")), "hh:nn:ss") & CVar(MemVar_1F92070) & "LT') GROUP By PC.Bill_No" & var_260 
  loc_1CC5508:             var_2C4 = var_2A0 & " " 
  loc_1CC551C:             var_360 = var_280 & "',120) and Convert(datetime,'" & var_2C4 & Format(var_2F0, "hh:nn:ss") & "',120) AND PC.Bill_No='" 
  loc_1CC5536:             var_3EC = var_360 & CVar(Proc_6_38_E68A98(var_374, 1, 1, 1, 1)) & "' and PC.FOLIONODOCID='" & var_C8.Fields.Item("DocID").Value 
  loc_1CC5549:             var_42C = var_3EC & "' and PC.PAYCode in ('" & CVar(MemVar_1F92070) 
  loc_1CC5552:             var_44C = var_42C & "LT') GROUP By PC.Bill_No" 
  loc_1CC5560:             unk_5407B4.Execute CStr(var_44C), var_46C, -1
  loc_1CC556B:             Set var_150 = var_470
  loc_1CC55D9:             If (var_150.RecordCount > 0) Then
  loc_1CC5602:               Proc_6_39_E7C810(var_214, CVar(var_150.Fields.Item("TotalTax")), var_470, var_100)
  loc_1CC563E:               Proc_6_39_E7C810(var_214, CVar(var_150.Fields.Item("TotalTax")), CSng(var_214), CSng(var_214))
  loc_1CC5647:               var_100 = CSng(var_214)
  loc_1CC5657:             Else
  loc_1CC565A:               var_108 = CDbl(0)
  loc_1CC5660:               var_100 = CDbl(0)
  loc_1CC5663:             End If
  loc_1CC5663:           End If
  loc_1CC5666:         Else
  loc_1CC56A2:           If CBool(var_C8.Fields.Item("Type").Value <> "C") Then
  loc_1CC570D:             If (var_C8.Fields.Item("mFolioNoDocid").Value = var_C8.Fields.Item("DocID").Value) Then
  loc_1CC5724:               var_1BC = "Select (ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1CC574F:               var_1C0 = Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), CStr(var_44C), var_260, -1, var_2B0, var_100)
  loc_1CC5787:               var_240 = CVar(var_108 & Proc_6_38_E68A98(var_374, 1, 1, 1, 1) & "' and PC.FOLIONODOCID='") & var_C8.Fields.Item("DocID").Value 
  loc_1CC579E:               unk_5407B4.Execute CStr(var_240 & "' And R.Nature='Room Charge' GROUP By PC.Bill_No"), var_100, var_100
  loc_1CC57A9:               Set var_150 = var_2B0
  loc_1CC57D4:             Else
  loc_1CC57E8:               var_1BC = "Select (ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.Bill_No='"
  loc_1CC580A:               var_1B8 = CVar(var_C8.Fields.Item("Bill_no")) 'Address
  loc_1CC5813:               var_1C0 = Proc_6_38_E68A98(var_1B8, CStr(var_44C), var_2A0, -1)
  loc_1CC5843:               var_214 = var_C8.Fields.Item("DocID").Value
  loc_1CC5854:               var_250 = CVar(var_2C8 & Proc_6_38_E68A98(var_374, 1, 1, 1, 1) & "' and PC.FOLIONODOCID='") & var_214 & "' And vdate >= " 
  loc_1CC587E:               Proc_6_7_F25D88(var_250 & CVar(MemVar_1F92070) & "LT') GROUP By PC.Bill_No", CVar(var_C8.Fields.Item("ChkInDate")), var_250)
  loc_1CC588F:               var_290 = var_108 & var_250 & CVar(MemVar_1F92070) & "LT') GROUP By PC.Bill_No" & " And R.Nature='Room Charge' GROUP By PC.Bill_No" 
  loc_1CC589D:               unk_5407B4.Execute CStr(var_290), var_1B8, 
  loc_1CC58A8:               Set var_150 = var_2C8
  loc_1CC58DA:             End If
  loc_1CC58EE:             If (var_150.RecordCount > 0) Then
  loc_1CC5910:               var_1B8 = CVar(var_150.Fields.Item("TotalTax")) 'Address
  loc_1CC5917:               Proc_6_39_E7C810(var_214)
  loc_1CC5920:               var_108 = CSng(var_214)
  loc_1CC5953:               Proc_6_39_E7C810(var_214, CVar(var_150.Fields.Item("TotalTax")))
  loc_1CC595C:               var_100 = CSng(var_214)
  loc_1CC596C:             Else
  loc_1CC596F:               var_108 = CDbl(0)
  loc_1CC5975:               var_100 = CDbl(0)
  loc_1CC5978:             End If
  loc_1CC5978:           End If
  loc_1CC5978:         End If
  loc_1CC5978:       End If
  loc_1CC597F:       If (var_F8 = CDbl(0)) Then
  loc_1CC5A0E:         var_260 = (var_C8.Fields.Item("Type").Value = "C") And (var_C8.Fields.Item("mFolioNoDocid").Value <> var_C8.Fields.Item("DocID").Value)
  loc_1CC5A2C:         If CBool(var_260) Then
  loc_1CC5A76:           Proc_6_7_F25D88(var_214, CVar(var_C8.Fields.Item("ChkInDate")), "sELECT Min(Sno) FROM ROOMOCC WHERE chkindate=", var_2C4, -1, var_2C8, var_2CC)
  loc_1CC5AEC:           var_290 = 0 & var_214 & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C8.Fields.Item("DocID").Value 
  loc_1CC5B03:           unk_5407B4.Execute CStr(var_290 & "'"), var_2E0, var_2F0
  loc_1CC5B0B:           var_100 = var_2C8.Fields
  loc_1CC5B13:           var_100 = var_2CC.Item(var_108)
  loc_1CC5B1B:           var_108 = var_2E0.Value
  loc_1CC5B5C:           If (var_2F0 = 1) Then
  loc_1CC5C2C:             var_270 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1CC5C42:             var_280 = 0 & var_C8.Fields.Item("ChkOutDate").Value & " " & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C8.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1CC5C5E:             var_310 = var_280 & "',120) AND PC.BIll_NO='" & CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), 1)) & "' and PC.FOLIONODOCID='" 
  loc_1CC5C7C:             unk_5407B4.Execute CStr(var_310 & var_C8.Fields.Item("DocID").Value & "' AND R.Nature='Room Charge' GROUP By PC.BILL_NO"), var_360, -1
  loc_1CC5C87:             Set var_D0 = var_2E0
  loc_1CC5CDB:             If (var_D0.RecordCount > 0) Then
  loc_1CC5D9D:               var_350 = 0
  loc_1CC5DBA:               var_270 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) <= Convert(datetime,'") 'String
  loc_1CC5DD0:               var_280 = 0 & var_C8.Fields.Item("ChkOutDate").Value & " " & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C8.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1CC5DEC:               var_310 = var_280 & "',120) AND PC.BIll_NO='" & CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), 1, 1)) & "' and PC.FOLIONODOCID='" 
  loc_1CC5E0A:               unk_5407B4.Execute CStr(var_310 & var_C8.Fields.Item("DocID").Value & "' AND R.Nature='Room Charge' and PC.AMTDR>0"), var_360, -1
  loc_1CC5E12:               var_2E0 = var_2E0.Fields
  loc_1CC5E1A:               var_350 = var_364.Item(var_364)
  loc_1CC5E22:               var_3B8 = var_3B8.Value
  loc_1CC5E2C:               var_B8 = CLng(var_374)
  loc_1CC5E72:             End If
  loc_1CC5E86:             If (var_D0.RecordCount = 0) Then
  loc_1CC5E89:               GoTo loc_1CC8C7A
  loc_1CC5E8C:             End If
  loc_1CC5E8F:           Else
  loc_1CC5FC3:             var_270 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) between Convert(datetime,'") 'String
  loc_1CC5FD9:             var_280 = 0 & var_C8.Fields.Item("ChkInDate").Value & " " & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C8.Fields.Item("ChkInDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1CC5FF9:             var_340 = var_280 & "',120) and Convert(datetime,'" & var_C8.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1CC6015:             var_3B4 = var_340 & "',120) AND PC.BIll_NO='" & CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), 1, 1, 1, 1)) & "' and PC.FOLIONODOCID='" 
  loc_1CC6033:             unk_5407B4.Execute CStr(var_3B4 & var_C8.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' GROUP By PC.BILL_NO"), var_42C, -1
  loc_1CC60A8:             If (var_470.RecordCount > 0) Then
  loc_1CC60E9:               var_2AC = var_C8.Fields.Item("ChkInTime")
  loc_1CC60FD:               var_240 = "hh:nn:ss"
  loc_1CC610D:               var_250 = Format(CVar(var_2AC), var_240)
  loc_1CC6164:               var_310 = "hh:nn:ss"
  loc_1CC6174:               var_320 = Format(CVar(var_C8.Fields.Item("ChkOutTime")), var_310)
  loc_1CC61D1:               var_43C = 0
  loc_1CC61EE:               var_270 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) between Convert(datetime,'") 'String
  loc_1CC6204:               var_280 = 0 & var_C8.Fields.Item("ChkInDate").Value & " " & " and ChkInTime='" & var_C8.Fields.Item("ChkInTime").Value & "' and DOCID='" & var_C8.Fields.Item("ChkInDate").Value & " " & var_250 
  loc_1CC622D:               var_360 = var_280 & "',120) and Convert(datetime,'" & var_C8.Fields.Item("ChkOutDate").Value & " " & var_320 & "',120) AND PC.BIll_NO='" 
  loc_1CC6247:               var_3EC = var_360 & CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), 1, 1, 1, 1)) & "' and PC.FOLIONODOCID='" & var_C8.Fields.Item("DocID").Value 
  loc_1CC625E:               unk_5407B4.Execute CStr(var_3EC & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_42C, -1
  loc_1CC6266:               var_470 = var_470.Fields
  loc_1CC626E:               var_43C = var_474.Item(var_474)
  loc_1CC6276:               var_478 = var_478.Value
  loc_1CC6280:               var_B8 = CLng(var_44C)
  loc_1CC62DC:             End If
  loc_1CC62DC:           End If
  loc_1CC62DF:         Else
  loc_1CC62E5:           var_1D0 = 0
  loc_1CC6341:           unk_5407B4.Execute CStr("sELECT COUNT(*) FROM RoomOccDet WHERE DOCID='" & var_C8.Fields.Item("DocID").Value & "'"), var_240, -1
  loc_1CC6349:           var_2A8 = var_2A8.Fields
  loc_1CC6351:           var_1D0 = var_2AC.Item(var_2AC)
  loc_1CC6359:           var_2B0 = var_2B0.Value
  loc_1CC6385:           var_2C8 = var_C8.Fields.Item("mFolioNoDocid")
  loc_1CC63A7:           var_2CC = var_C8.Fields
  loc_1CC63F2:           If CBool((var_250 > 1) And (var_2C8.Value <> var_2CC.Item("DocID").Value)) Then
  loc_1CC6497:             var_270 = CVar("Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) > Convert(datetime,'") 'String
  loc_1CC64AD:             var_280 = var_2CC.Item("DocID").Value & var_C8.Fields.Item("ChkInDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1CC64C6:             var_2F0 = var_280 & "',120) AND PC.FOLIONODOCID='" & var_C8.Fields.Item("DocID").Value & "' AND R.Nature='Room Charge' GROUP By PC.BILL_NO" 
  loc_1CC64D4:             unk_5407B4.Execute CStr(var_2F0), var_310, -1
  loc_1CC6525:             If (var_2C8.RecordCount > 0) Then
  loc_1CC65A1:               var_2B0 = var_C8.Fields
  loc_1CC65B1:               var_2A0 = var_2B0.Item("DocID").Value
  loc_1CC65BC:               var_2DC = 0
  loc_1CC65D9:               var_270 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE Convert(datetime,cast(vdate as varchar(11))+' '+vtime,120) > Convert(datetime,'") 'String
  loc_1CC65EB:               var_260 = var_C8.Fields.Item("ChkInDate").Value & " " & Format(CVar(var_C8.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1CC6608:               var_2F0 = var_2CC.Item("DocID").Value & var_260 & "',120) AND PC.FOLIONODOCID='" & var_2A0 & "' AND R.Nature='Room Charge' and PC.AMTDR>0" 
  loc_1CC6616:               unk_5407B4.Execute CStr(var_2F0), var_310, -1
  loc_1CC661E:               var_2C8 = var_2C8.Fields
  loc_1CC6626:               var_2DC = var_2CC.Item(var_2CC)
  loc_1CC662E:               var_2E0 = var_2E0.Value
  loc_1CC6638:               var_B8 = CLng(var_320)
  loc_1CC6670:             End If
  loc_1CC6673:           Else
  loc_1CC66AF:             If CBool(var_C8.Fields.Item("Type").Value <> "C") Then
  loc_1CC671A:               If (var_C8.Fields.Item("mFolioNoDocid").Value = var_C8.Fields.Item("DocID").Value) Then
  loc_1CC6731:                 var_1BC = "Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.BIll_NO='"
  loc_1CC675C:                 var_1C0 = Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), CStr(var_2F0), var_260, -1, var_2B0, var_B8, var_320)
  loc_1CC6767:                 var_230 = CVar(1 & Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), 1, 1, 1, 1) & "' and PC.FOLIONODOCID='") 'String
  loc_1CC6784:                 var_2AC = var_C8.Fields.Item("DocID")
  loc_1CC679D:                 var_250 = var_230 & var_2AC.Value & "' and R.Nature='Room Charge' GROUP By PC.BILL_NO" 
  loc_1CC67AB:                 unk_5407B4.Execute CStr(var_250), 1, var_2C8
  loc_1CC67F2:                 If (var_2B0.RecordCount > 0) Then
  loc_1CC67FB:                   var_1A4 = 0
  loc_1CC6818:                   var_214 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.FOLIONODOCID='") 'String
  loc_1CC685C:                   unk_5407B4.Execute CStr(var_214 & var_C8.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_250, -1
  loc_1CC6864:                   var_2A8 = var_2A8.Fields
  loc_1CC686C:                   var_1A4 = var_2AC.Item(var_2AC)
  loc_1CC6874:                   var_2B0 = var_2B0.Value
  loc_1CC687E:                   var_B8 = CLng(var_260)
  loc_1CC68A0:                 End If
  loc_1CC68A3:               Else
  loc_1CC68B7:                 var_1BC = "Select SUM(PC.AMTDR-PC.AMTCR) AS LuxuryTax,(ISNULL(SUM(CASE WHEN PC.AMTDR<>0 THEN PC.OnAmt END),0) - ISNULL(SUM(CASE WHEN PC.AMTCR<>0 THEN PC.OnAmt END),0)) AS TotalTax,Max(PC.AMTDR) AS RoomChrg " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.BIll_NO='"
  loc_1CC68E2:                 var_1C0 = Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), CStr(var_214 & var_C8.Fields.Item("DocID").Value & "' and R.Nature='Room Charge' and PC.AMTDR>0"), var_2A0, -1, var_2C8)
  loc_1CC68ED:                 var_230 = CVar(var_B8 & Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Bill_no")), 1, 1, 1, 1) & "' and PC.FOLIONODOCID='") 'String
  loc_1CC6923:                 var_250 = var_230 & var_C8.Fields.Item("DocID").Value & "' And vdate >= " 
  loc_1CC6936:                 var_2B0 = var_C8.Fields
  loc_1CC693E:                 var_2B4 = var_2B0.Item("ChkInDate")
  loc_1CC6946:                 var_260 = CVar(var_2B4) 'Address
  loc_1CC694D:                 Proc_6_7_F25D88(var_2CC.Item("DocID").Value, var_260, var_250, var_260)
  loc_1CC695E:                 var_290 = 1 & var_2CC.Item("DocID").Value & " And R.Nature='Room Charge' GROUP By PC.BILL_NO" 
  loc_1CC696C:                 unk_5407B4.Execute CStr(var_290), 1, var_250
  loc_1CC6977:                 Set var_D0 = var_2C8
  loc_1CC69BD:                 If (var_D0.RecordCount > 0) Then
  loc_1CC69E3:                   var_214 = CVar("Select Count(Distinct PC.VDate) AS TotDays " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE PC.FOLIONODOCID='") 'String
  loc_1CC6A14:                   var_184 = "' And vdate >= "
  loc_1CC6A43:                   Proc_6_7_F25D88(var_260, CVar(var_C8.Fields.Item("ChkInDate")), var_214 & var_C8.Fields.Item("DocID").Value & var_184, var_290, -1)
  loc_1CC6A62:                   unk_5407B4.Execute CStr(var_2B0 & var_260 & " And R.Nature='Room Charge' and PC.AMTDR>0"), var_2B4, 0
  loc_1CC6A72:                    = var_2B4.Item(var_2A0)
  loc_1CC6A7A:                    = var_2B0.Fields.Value
  loc_1CC6A84:                   var_B8 = CLng(var_2A0)
  loc_1CC6AB0:                 End If
  loc_1CC6AB0:               End If
  loc_1CC6AB0:             End If
  loc_1CC6AB0:           End If
  loc_1CC6AB0:         End If
  loc_1CC6AC4:         If (var_D0.RecordCount > 0) Then
  loc_1CC6AED:           Proc_6_39_E7C810(var_214, CVar(var_D0.Fields.Item("RoomChrg")))
  loc_1CC6AF6:           var_C0 = CSng(var_214)
  loc_1CC6B29:           Proc_6_39_E7C810(var_214, CVar(var_D0.Fields.Item("LuxuryTax")))
  loc_1CC6B46:           var_124 = (var_124 + CSng(var_214))
  loc_1CC6B4C:         Else
  loc_1CC6B4F:           var_C0 = CDbl(0)
  loc_1CC6B55:           var_134 = CDbl(0)
  loc_1CC6B58:         End If
  loc_1CC6B5B:       Else
  loc_1CC6B62:         var_124 = (var_124 + var_134)
  loc_1CC6B6C:         var_114 = (var_114 + var_100)
  loc_1CC6B76:         var_11C = (var_11C + var_F8)
  loc_1CC6B79:       End If
  loc_1CC6B7C:       var_174 = "Bill_no"
  loc_1CC6BA1:       var_138 = Proc_6_38_E68A98(CVar(var_C8.Fields.Item(var_174)), var_11C, var_114, var_124, var_134)
  loc_1CC6BB1:       If (var_F8 > CDbl(0)) Then
  loc_1CC6BBD:         var_F0 = (var_F0 + 1)
  loc_1CC6BC3:         Set var_52C = var_14C 
  loc_1CC6BD2:         var_52C.AddNew var_174, var_184
  loc_1CC6BEA:         var_1B8 = CVar(Proc_6_52_EAD4F4(CStr(var_F0), 4, var_F0, var_C0)) 'String
  loc_1CC6BF7:         var_52C.Collect = "SNo"
  loc_1CC6C2A:         var_214 = CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("ConPrefix")), CVar(var_C8.Fields.Item("ConPrefix")), var_124)) 'String
  loc_1CC6C80:         var_250 = (Trim(var_214) + Space(1))
  loc_1CC6C87:         var_290 = (CVar(var_C8.Fields.Item("ChkInDate")) + Trim(CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("GuestName")), var_134))))
  loc_1CC6C95:         var_2A0 = CVar(Proc_6_45_EAD428(CStr(var_290), &H32)) 'String
  loc_1CC6CA2:         var_52C.Collect = "GuestName"
  loc_1CC6D57:         var_290 = IIf((var_C8.Fields.Item("BirthDate").Value <> vbNullString), DateDiff("yyyy", CVar(var_C8.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1), 0)
  loc_1CC6D7B:         var_52C.Collect = "BirthAge"
  loc_1CC6DC9:         Proc_6_39_E7C810(var_214, CVar(var_C8.Fields.Item("Age")), CVar(Proc_6_52_EAD4F4(CStr(var_290), 3, var_2A0)))
  loc_1CC6DED:         var_52C.Collect = "Age"
  loc_1CC6E3D:         var_214 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Nationality")), CVar(Proc_6_52_EAD4F4(CStr(var_214), 3))), &H19)) 'String
  loc_1CC6E4A:         var_52C.Collect = "Nationality"
  loc_1CC6E99:         var_214 = CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("RoomNo").Value), 5, var_214)) 'String
  loc_1CC6EA6:         var_52C.Collect = "RoomNo"
  loc_1CC6EF5:         var_214 = CVar(Proc_6_52_EAD4F4(CStr(var_C8.Fields.Item("RoomRate").Value), 8, var_214)) 'String
  loc_1CC6F02:         var_52C.Collect = "RoomRate"
  loc_1CC6F65:         var_52C.Collect = "ChkInDate"
  loc_1CC6FAF:         var_214 = CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("ChkInTm").Value), 5, Format(CVar(var_C8.Fields.Item("ChkInDt")), "DD/MM/YYYY"), 1)) 'String
  loc_1CC6FBC:         var_52C.Collect = "ChkInTime"
  loc_1CC700D:         var_230 = Format(CVar(var_C8.Fields.Item("ChkOutDt")), "DD/MM/YYYY")
  loc_1CC701F:         var_52C.Collect = "ChkOutDate"
  loc_1CC7069:         var_214 = CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("ChkOutTm").Value), 5, var_230, 1, 1)) 'String
  loc_1CC7076:         var_52C.Collect = "ChkOutTime"
  loc_1CC7091:         var_1B8 = CVar(CStr(var_B8)) 'String
  loc_1CC709E:         var_52C.Collect = "StPeriod"
  loc_1CC70C1:         var_1B8 = Me.FGrid.TextMatrix)
  loc_1CC70D8:         Proc_6_39_E7C810(var_214, var_108, var_1B8, 1, CVar(CLng(3)), var_1B8)
  loc_1CC70E8:         Proc_6_39_E7C810(var_230, var_100, var_214, var_214)
  loc_1CC714A:         var_52C.Collect = "TotalTax"
  loc_1CC71A5:         var_214 = CVar(Proc_6_52_EAD4F4(CStr(var_C8.Fields.Item("Person").Value), 5, CVar(Proc_6_52_EAD4F4(CStr(Format(IIf((CStr(var_C8.Fields.Item("Person").Value) = "Yes"), var_214, var_230), "0.00")), 8, 1, 1)), 1)) 'String
  loc_1CC71B2:         var_52C.Collect = "Person"
  loc_1CC71D5:         var_1B8 = CVar(Proc_6_52_EAD4F4(var_138, 8, var_214)) 'String
  loc_1CC71E2:         var_52C.Collect = "BillNo"
  loc_1CC7225:         var_230 = Format(CVar(var_C8.Fields.Item("ChkOutDate")), "DD/MM/YYYY")
  loc_1CC7237:         var_52C.Collect = "Billdate"
  loc_1CC726A:         var_1B8 = var_C8.Fields.Item("Person").Value
  loc_1CC72A4:         var_230 = (var_1B8 = 0) 'Variant
  loc_1CC72C2:         var_270 = (CVar(var_F8) / IIf(var_230, 1, CVar(var_C8.Fields.Item("Person"))))
  loc_1CC7312:         var_310 = CVar(Proc_6_52_EAD4F4(CStr(Format(IIf((var_F8 > CDbl(0)), var_270, 0), "0.00")), 8, 1, 1, var_230, 1)) 'String
  loc_1CC731F:         var_52C.Collect = "LTPerOcc"
  loc_1CC7356:         Proc_6_39_E7C810(var_1B8, var_F8, var_310, 1)
  loc_1CC739A:         var_52C.Collect = "LTTotal"
  loc_1CC73B3:         var_174 = "RoomTarrif"
  loc_1CC73E6:         var_214 = CVar(Proc_6_52_EAD4F4(CStr(var_C8.Fields.Item(var_174).Value), 8, CVar(Proc_6_52_EAD4F4(CStr(Format(var_C8.Fields.Item(var_174).Value, "0.00")), 8, 1, 1)), var_C8.Fields.Item(var_174).Value)) 'String
  loc_1CC73EA:         var_184 = "RackRate"
  loc_1CC73F3:         var_52C.Collect = var_184
  loc_1CC7414:         var_52C.Update var_174, var_184
  loc_1CC741B:         Set var_52C = Nothing 
  loc_1CC7422:         var_174 = CVar(CLng(4)) 'Long
  loc_1CC7427:         var_194 = 1
  loc_1CC7456:         If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1CC7466:           var_184 = "Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality From GuestFolioProfDetail GD Inner Join GuestProf GP On GD.GuestProf=GP.Code Left Join Country ON GP.Nationality=Country.Code Where GD.Docid='"
  loc_1CC7471:           var_174 = "DocID"
  loc_1CC7499:           var_194 = "' And GD.GuestProf<>'"
  loc_1CC74E3:           unk_5407B4.Execute CStr(var_184 & var_C8.Fields.Item(var_174).Value & var_194 & var_C8.Fields.Item("GuestProf").Value & "'"), var_270, -1
  loc_1CC74EE:           Set var_154 = var_2B0
  loc_1CC7526:           If (var_154.RecordCount > 0) Then
  loc_1CC7529:             ' Referenced from:   1CC774F
  loc_1CC7538:             If Not(var_154.EOF) Then
  loc_1CC753E:               Set var_530 = var_14C 
  loc_1CC754D:               var_530.AddNew var_174, var_184
  loc_1CC7555:               var_174 = "ConPrefix"
  loc_1CC757A:               var_214 = CVar(Proc_6_38_E68A98(CVar(var_154.Fields.Item(var_174)), var_2B0, var_194, var_174)) 'String
  loc_1CC75BA:               var_270 = CVar(Proc_6_38_E68A98(CVar(var_154.Fields.Item("Name")), var_214, var_214)) 'String
  loc_1CC75D0:               var_250 = (Trim(var_214) + Space(1))
  loc_1CC75D7:               var_290 = ("Name" & var_C8.Fields.Item(var_174).Value & var_194 & var_C8.Fields.Item("GuestProf").Value + Trim(var_270))
  loc_1CC75F2:               var_530.Collect = "GuestName"
  loc_1CC763E:               Proc_6_39_E7C810(var_214, CVar(var_154.Fields.Item("Age")), CVar(Proc_6_45_EAD428(CStr(0), &H32)))
  loc_1CC7662:               var_530.Collect = "Age"
  loc_1CC76B2:               var_214 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_154.Fields.Item("Nationality")), CVar(Proc_6_52_EAD4F4(CStr(var_214), 3))), &H19)) 'String
  loc_1CC76BF:               var_530.Collect = "Nationality"
  loc_1CC76DB:               var_174 = "RoomNo"
  loc_1CC770E:               var_214 = CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item(var_174).Value), 5, var_214)) 'String
  loc_1CC7712:               var_184 = "RoomNo"
  loc_1CC771B:               var_530.Collect = var_184
  loc_1CC773C:               var_530.Update var_174, var_184
  loc_1CC7743:               Set var_530 = Nothing 
  loc_1CC774A:               var_154.MoveNext
  loc_1CC774F:               GoTo loc_1CC7529
  loc_1CC7752:             End If
  loc_1CC7752:           End If
  loc_1CC7752:         End If
  loc_1CC7755:         var_174 = CVar(CLng(4)) 'Long
  loc_1CC775A:         var_194 = 1
  loc_1CC7789:         If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1CC77C8:           var_214 = "Select Distinct RelatedFoliono,VPrefix From PayCharge PC Where PC.FolionoDocid='" & var_C8.Fields.Item("DocID").Value 
  loc_1CC7816:           unk_5407B4.Execute CStr(var_214 & "' And RelatedFoliono<>" & var_C8.Fields.Item("FolioNo").Value & " And RelatedFoliono<>0"), var_270, -1
  loc_1CC7821:           Set var_158 = var_2B0
  loc_1CC7845:           ' Referenced from:   1CC7BDD
  loc_1CC7854:           If Not(var_158.EOF) Then
  loc_1CC7864:             var_184 = "Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality,RO.RoomNo From GuestFolioProfDetail GD Inner Join GuestProf GP On GD.GuestProf=GP.Code Left Join (Select RoomNo, DocId From RoomOcc  Where Foliono="
  loc_1CC786F:             var_174 = "RelatedFolioNo"
  loc_1CC7897:             var_194 = " And VPrefix ="
  loc_1CC78CE:             var_1D0 = " And Sno=1) RO On RO.DocId=GD.DocId Left Join Country ON GP.Nationality=Country.Code Where GD.Docid In (Select DocId From GuestFolio Where Foliono="
  loc_1CC78E9:             var_2B0 = var_158.Fields
  loc_1CC7901:             var_280 = var_184 & var_158.Fields.Item(var_174).Value & var_194 & var_158.Fields.Item("vPrefix").Value & var_1D0 & var_2B0.Item("RelatedFolioNo").Value 
  loc_1CC794F:             unk_5407B4.Execute CStr(var_280 & " And VPrefix =" & var_158.Fields.Item("vPrefix").Value & ")"), var_310, -1
  loc_1CC795A:             Set var_154 = var_2E0
  loc_1CC79A6:             If (var_154.RecordCount > 0) Then
  loc_1CC79A9:               ' Referenced from:   1CC7BD2
  loc_1CC79B8:               If Not(var_154.EOF) Then
  loc_1CC79BE:                 Set var_534 = var_14C 
  loc_1CC79CD:                 var_534.AddNew var_174, var_184
  loc_1CC79D5:                 var_174 = "ConPrefix"
  loc_1CC79FA:                 var_214 = CVar(Proc_6_38_E68A98(CVar(var_154.Fields.Item(var_174)), var_2E0, var_2B0, var_194)) 'String
  loc_1CC7A50:                 var_250 = (Trim(var_214) + Space(1))
  loc_1CC7A57:                 var_290 = ("Name" & var_158.Fields.Item(var_174).Value & var_194 & var_158.Fields.Item("vPrefix").Value + Trim(CVar(Proc_6_38_E68A98(CVar(var_154.Fields.Item("Name")), var_174, var_214))))
  loc_1CC7A65:                 var_2A0 = CVar(Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_154.Fields.Item("Name")), var_174, var_214))) & " And VPrefix ="), &H32)) 'String
  loc_1CC7A72:                 var_534.Collect = "GuestName"
  loc_1CC7ABE:                 Proc_6_39_E7C810(var_214, CVar(var_154.Fields.Item("Age")), var_2A0)
  loc_1CC7AE2:                 var_534.Collect = "Age"
  loc_1CC7B32:                 var_214 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_154.Fields.Item("Nationality")), CVar(Proc_6_52_EAD4F4(CStr(var_214), 3))), &H19)) 'String
  loc_1CC7B3F:                 var_534.Collect = "Nationality"
  loc_1CC7B58:                 var_174 = "RoomNo"
  loc_1CC7B91:                 var_214 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_154.Fields.Item(var_174)), var_214), 5)) 'String
  loc_1CC7B95:                 var_184 = "RoomNo"
  loc_1CC7B9E:                 var_534.Collect = var_184
  loc_1CC7BBF:                 var_534.Update var_174, var_184
  loc_1CC7BC6:                 Set var_534 = Nothing 
  loc_1CC7BCD:                 var_154.MoveNext
  loc_1CC7BD2:                 GoTo loc_1CC79A9
  loc_1CC7BD5:               End If
  loc_1CC7BD5:             End If
  loc_1CC7BD8:             var_158.MoveNext
  loc_1CC7BDD:             GoTo loc_1CC7845
  loc_1CC7BE0:           End If
  loc_1CC7BE0:         End If
  loc_1CC7BE3:         var_184 = CVar(var_A4) 'Long
  loc_1CC7C11:         var_214 = (var_184 + var_C8.Fields.Item("Person").Value)
  loc_1CC7C17:         var_A4 = CLng(var_214)
  loc_1CC7C31:         var_88 = (var_88 + 1)
  loc_1CC7C37:       Else
  loc_1CC7C3A:         var_174 = CVar(CLng(3)) 'Long
  loc_1CC7C76:         If ((CStr(Me.FGrid.TextMatrix)) = "Yes") And (var_134 > CDbl(0))) Then
  loc_1CC7C82:           var_F0 = (var_F0 + 1)
  loc_1CC7C88:           Set var_538 = var_14C 
  loc_1CC7C97:           var_538.AddNew var_174, var_184
  loc_1CC7CAF:           var_1B8 = CVar(Proc_6_52_EAD4F4(CStr(var_F0), 4, var_F0, 1, var_174)) 'String
  loc_1CC7CBC:           var_538.Collect = "SNo"
  loc_1CC7CEF:           var_214 = CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("ConPrefix")), CVar(var_C8.Fields.Item("ConPrefix")), var_88, var_A4)) 'String
  loc_1CC7D45:           var_250 = (Trim(var_214) + Space(1))
  loc_1CC7D4C:           var_290 = ("GuestName" & var_158.Fields.Item("ConPrefix").Value & 1 & var_158.Fields.Item("vPrefix").Value + Trim(CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("GuestName")), var_214))))
  loc_1CC7D5A:           var_2A0 = CVar(Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("GuestName")), var_214))) & " And VPrefix ="), &H32)) 'String
  loc_1CC7D67:           var_538.Collect = "GuestName"
  loc_1CC7E1C:           var_290 = IIf((var_C8.Fields.Item("BirthDate").Value <> vbNullString), DateDiff("yyyy", CVar(var_C8.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1), 0)
  loc_1CC7E40:           var_538.Collect = "BirthAge"
  loc_1CC7E8E:           Proc_6_39_E7C810(var_214, CVar(var_C8.Fields.Item("Age")), CVar(Proc_6_52_EAD4F4(CStr(var_290), 3, var_2A0)))
  loc_1CC7EB2:           var_538.Collect = "Age"
  loc_1CC7F02:           var_214 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("Nationality")), CVar(Proc_6_52_EAD4F4(CStr(var_214), 3))), &H19)) 'String
  loc_1CC7F0F:           var_538.Collect = "Nationality"
  loc_1CC7F6B:           var_538.Collect = "RoomNo"
  loc_1CC7F94:           var_1B8 = CVar(Proc_6_52_EAD4F4(CStr(var_C0), 8, CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("RoomNo").Value), 5, var_214)))) 'String
  loc_1CC7FA1:           var_538.Collect = "RoomRate"
  loc_1CC7FF9:           var_538.Collect = "ChkInDate"
  loc_1CC8043:           var_214 = CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("ChkInTm").Value), 5, Format(CVar(var_C8.Fields.Item("ChkInDt")), "DD/MM/YYYY"), 1)) 'String
  loc_1CC8050:           var_538.Collect = "ChkInTime"
  loc_1CC80B3:           var_538.Collect = "ChkOutDate"
  loc_1CC80FD:           var_214 = CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("ChkOutTm").Value), 5, Format(CVar(var_C8.Fields.Item("ChkOutDt")), "DD/MM/YYYY"), 1, 1)) 'String
  loc_1CC810A:           var_538.Collect = "ChkOutTime"
  loc_1CC8125:           var_1B8 = CVar(CStr(var_B8)) 'String
  loc_1CC8132:           var_538.Collect = "StPeriod"
  loc_1CC8141:           var_1B8 = CVar((var_134 + var_F8)) 'Double
  loc_1CC8148:           Proc_6_39_E7C810(var_214, var_1B8, var_1B8, var_214, var_214)
  loc_1CC818C:           var_538.Collect = "TotalTax"
  loc_1CC81DA:           var_214 = CVar(Proc_6_52_EAD4F4(CStr(var_C8.Fields.Item("Person").Value), 5, CVar(Proc_6_52_EAD4F4(CStr(Format(var_214, "0.00")), 8, 1, 1)), 1)) 'String
  loc_1CC81E7:           var_538.Collect = "Person"
  loc_1CC820A:           var_1B8 = CVar(Proc_6_52_EAD4F4(var_138, 8, var_214)) 'String
  loc_1CC8217:           var_538.Collect = "BillNo"
  loc_1CC825A:           var_230 = Format(CVar(var_C8.Fields.Item("ChkOutDate")), "DD/MM/YYYY")
  loc_1CC826C:           var_538.Collect = "Billdate"
  loc_1CC829F:           var_1B8 = var_C8.Fields.Item("Person").Value
  loc_1CC82D9:           var_230 = (var_1B8 = 0) 'Variant
  loc_1CC82F7:           var_270 = (CVar(var_F8) / IIf(var_230, 1, CVar(var_C8.Fields.Item("Person"))))
  loc_1CC8347:           var_310 = CVar(Proc_6_52_EAD4F4(CStr(Format(IIf((var_F8 > CDbl(0)), var_270, 0), "0.00")), 8, 1, 1, var_230, 1)) 'String
  loc_1CC8354:           var_538.Collect = "LTPerOcc"
  loc_1CC838B:           Proc_6_39_E7C810(var_1B8, var_F8, var_310, 1)
  loc_1CC83CF:           var_538.Collect = "LTTotal"
  loc_1CC83E8:           var_174 = "RoomTarrif"
  loc_1CC841B:           var_214 = CVar(Proc_6_52_EAD4F4(CStr(var_C8.Fields.Item(var_174).Value), 8, CVar(Proc_6_52_EAD4F4(CStr(Format(var_C8.Fields.Item(var_174).Value, "0.00")), 8, 1, 1)), var_C8.Fields.Item(var_174).Value)) 'String
  loc_1CC841F:           var_184 = "RackRate"
  loc_1CC8428:           var_538.Collect = var_184
  loc_1CC8449:           var_538.Update var_174, var_184
  loc_1CC8450:           Set var_538 = Nothing 
  loc_1CC8457:           var_174 = CVar(CLng(4)) 'Long
  loc_1CC845C:           var_194 = 1
  loc_1CC848B:           If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1CC849B:             var_184 = "Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality From GuestFolioProfDetail GD Inner Join GuestProf GP On GD.GuestProf=GP.Code Left Join Country ON GP.Nationality=Country.Code Where GD.Docid='"
  loc_1CC84A6:             var_174 = "DocID"
  loc_1CC84CE:             var_194 = "' And GD.GuestProf<>'"
  loc_1CC8518:             unk_5407B4.Execute CStr(var_184 & var_C8.Fields.Item(var_174).Value & var_194 & var_C8.Fields.Item("GuestProf").Value & "'"), var_270, -1
  loc_1CC8523:             Set var_154 = var_2B0
  loc_1CC855B:             If (var_154.RecordCount > 0) Then
  loc_1CC855E:               ' Referenced from:     1CC8784
  loc_1CC856D:               If Not(var_154.EOF) Then
  loc_1CC8573:                 Set var_53C = var_14C 
  loc_1CC8582:                 var_53C.AddNew var_174, var_184
  loc_1CC858A:                 var_174 = "ConPrefix"
  loc_1CC85A6:                 var_1B8 = CVar(var_154.Fields.Item(var_174)) 'Address
  loc_1CC85AF:                 var_214 = CVar(Proc_6_38_E68A98(var_1B8, var_2B0, var_194, var_174)) 'String
  loc_1CC85EF:                 var_270 = CVar(Proc_6_38_E68A98(CVar(var_154.Fields.Item("Name")), var_214, var_1B8)) 'String
  loc_1CC8605:                 var_250 = (Trim(var_214) + Space(1))
  loc_1CC860C:                 var_290 = ("Name" & var_C8.Fields.Item(var_174).Value & var_194 & var_C8.Fields.Item("GuestProf").Value + Trim(var_270))
  loc_1CC8627:                 var_53C.Collect = "GuestName"
  loc_1CC8673:                 Proc_6_39_E7C810(var_214, CVar(var_154.Fields.Item("Age")), CVar(Proc_6_45_EAD428(CStr(0), &H32)))
  loc_1CC8697:                 var_53C.Collect = "Age"
  loc_1CC86E7:                 var_214 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_154.Fields.Item("Nationality")), CVar(Proc_6_52_EAD4F4(CStr(var_214), 3))), &H19)) 'String
  loc_1CC86F4:                 var_53C.Collect = "Nationality"
  loc_1CC8710:                 var_174 = "RoomNo"
  loc_1CC8743:                 var_214 = CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item(var_174).Value), 5, var_214)) 'String
  loc_1CC8747:                 var_184 = "RoomNo"
  loc_1CC8750:                 var_53C.Collect = var_184
  loc_1CC8771:                 var_53C.Update var_174, var_184
  loc_1CC8778:                 Set var_53C = Nothing 
  loc_1CC877F:                 var_154.MoveNext
  loc_1CC8784:                 GoTo loc_1CC855E
  loc_1CC8787:               End If
  loc_1CC8787:             End If
  loc_1CC8787:           End If
  loc_1CC878A:           var_174 = CVar(CLng(4)) 'Long
  loc_1CC878F:           var_194 = 1
  loc_1CC87BE:           If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1CC87FD:             var_214 = "Select Distinct RelatedFoliono,VPrefix From PayCharge PC Where PC.FolionoDocid='" & var_C8.Fields.Item("DocID").Value 
  loc_1CC884B:             unk_5407B4.Execute CStr(var_214 & "' And RelatedFoliono<>" & var_C8.Fields.Item("FolioNo").Value & " And RelatedFoliono<>0"), var_270, -1
  loc_1CC8856:             Set var_158 = var_2B0
  loc_1CC887A:             ' Referenced from:     1CC8C12
  loc_1CC8889:             If Not(var_158.EOF) Then
  loc_1CC8899:               var_184 = "Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality,RO.RoomNo From GuestFolioProfDetail GD Inner Join GuestProf GP On GD.GuestProf=GP.Code Left Join (Select RoomNo, DocId From RoomOcc  Where Foliono="
  loc_1CC88A4:               var_174 = "RelatedFolioNo"
  loc_1CC88CC:               var_194 = " And VPrefix ="
  loc_1CC8903:               var_1D0 = " And Sno=1) RO On RO.DocId=GD.DocId Left Join Country ON GP.Nationality=Country.Code Where GD.Docid In (Select DocId From GuestFolio Where Foliono="
  loc_1CC891E:               var_2B0 = var_158.Fields
  loc_1CC8936:               var_280 = var_184 & var_158.Fields.Item(var_174).Value & var_194 & var_158.Fields.Item("vPrefix").Value & var_1D0 & var_2B0.Item("RelatedFolioNo").Value 
  loc_1CC8984:               unk_5407B4.Execute CStr(var_280 & " And VPrefix =" & var_158.Fields.Item("vPrefix").Value & ")"), var_310, -1
  loc_1CC898F:               Set var_154 = var_2E0
  loc_1CC89CD:               var_2A4 = var_154.RecordCount
  loc_1CC89DB:               If (var_2A4 > 0) Then
  loc_1CC89DE:                 ' Referenced from:     1CC8C07
  loc_1CC89ED:                 If Not(var_154.EOF) Then
  loc_1CC89F3:                   Set var_540 = var_14C 
  loc_1CC8A02:                   var_540.AddNew var_174, var_184
  loc_1CC8A0A:                   var_174 = "ConPrefix"
  loc_1CC8A2F:                   var_214 = CVar(Proc_6_38_E68A98(CVar(var_154.Fields.Item(var_174)), var_2E0, var_2B0, var_194)) 'String
  loc_1CC8A42:                   var_240 = Space(1)
  loc_1CC8A56:                   var_2A8 = var_154.Fields
  loc_1CC8A85:                   var_250 = (Trim(var_214) + var_240)
  loc_1CC8A8C:                   var_290 = ("Name" & var_158.Fields.Item(var_174).Value & var_194 & var_158.Fields.Item("vPrefix").Value + Trim(CVar(Proc_6_38_E68A98(CVar(var_2A8.Item("Name")), var_174, var_214))))
  loc_1CC8A9A:                   var_2A0 = CVar(Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_2A8.Item("Name")), var_174, var_214))) & " And VPrefix ="), &H32)) 'String
  loc_1CC8AA7:                   var_540.Collect = "GuestName"
  loc_1CC8AF3:                   Proc_6_39_E7C810(var_214, CVar(var_154.Fields.Item("Age")), var_2A0)
  loc_1CC8B0A:                   var_230 = CVar(Proc_6_52_EAD4F4(CStr(var_214), 3)) 'String
  loc_1CC8B17:                   var_540.Collect = "Age"
  loc_1CC8B74:                   var_540.Collect = "Nationality"
  loc_1CC8B8D:                   var_174 = "RoomNo"
  loc_1CC8BA1:                   var_204 = var_154.Fields.Item(var_174)
  loc_1CC8BB2:                   var_1C0 = Proc_6_38_E68A98(CVar(var_204), CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_154.Fields.Item("Nationality")), var_230), &H19)))
  loc_1CC8BC6:                   var_214 = CVar(Proc_6_45_EAD428(var_1C0, 5)) 'String
  loc_1CC8BCA:                   var_184 = "RoomNo"
  loc_1CC8BD3:                   var_540.Collect = var_184
  loc_1CC8BF4:                   var_540.Update var_174, var_184
  loc_1CC8BFB:                   Set var_540 = Nothing 
  loc_1CC8C02:                   var_154.MoveNext
  loc_1CC8C07:                   GoTo loc_1CC89DE
  loc_1CC8C0A:                 End If
  loc_1CC8C0A:               End If
  loc_1CC8C0D:               var_158.MoveNext
  loc_1CC8C12:               GoTo loc_1CC887A
  loc_1CC8C15:             End If
  loc_1CC8C15:           End If
  loc_1CC8C15:         End If
  loc_1CC8C15:       End If
  loc_1CC8C1C:       var_AC = (var_AC + var_F8)
  loc_1CC8C22:       var_174 = CVar(CLng(3)) 'Long
  loc_1CC8C27:       var_194 = 1
  loc_1CC8C45:       var_1BC = CStr(Me.FGrid.TextMatrix))
  loc_1CC8C56:       If (var_1BC = "Yes") Then
  loc_1CC8C60:         var_B4 = (var_B4 + var_108)
  loc_1CC8C66:       Else
  loc_1CC8C6D:         If (var_F8 <> CDbl(0)) Then
  loc_1CC8C77:           var_B4 = (var_B4 + var_100)
  loc_1CC8C7A:         End If
  loc_1CC8C7A:         ' Referenced from:   1CC5E89
  loc_1CC8C7A:       End If
  loc_1CC8C7A:       ' Referenced from: 1CC35E7
  loc_1CC8C7A:     End If
  loc_1CC8C7D:     var_C8.MoveNext
  loc_1CC8C82:     GoTo loc_1CC2B26
  loc_1CC8C85:   End If
  loc_1CC8C8B:   global_84 = "LuxuryTax"
  loc_1CC8C95:   Call 0.Method_arg_50 (var_1BC, var_B4, var_B4, var_194, var_174)
  loc_1CC8CA3:   var_214 = Ucase(CVar(var_1BC))
  loc_1CC8CB2:   global_80 = CStr(var_214)
  loc_1CC8CE7:   Set var_1A8 = var_14C 
  loc_1CC8CEE:   CreateFieldDefFile(var_1A8, MemVar_1F920B4 & "\" & global_84 & ".ttx", &HFF, var_AC)
  loc_1CC8D19:   var_1BC = MemVar_1F920B4 & "\"
  loc_1CC8D33:   Call 0.Method_arg_1C (var_1BC & global_84 & ".RPT", var_174, var_1A8)
  loc_1CC8D3E:   MemVar_1F921E4 = var_1A8
  loc_1CC8D67:   Call 0.Method_arg_64 (var_1A8, CVar(var_1A8), var_184, var_194)
  loc_1CC8D6F:   Call 0.Method_arg_2C (var_214, var_C0)
  loc_1CC8D7D:   Call 0.Method_arg_150 (var_B8)
  loc_1CC8D96:   Call 0.Method_arg_90 (var_1A8, var_2A4)
  loc_1CC8D9E:   Call 0.Method_arg_24 (var_A0)
  loc_1CC8DA9:   For var_548 =  To var_2A4: 1 = var_548 'Long
  loc_1CC8DC1:     Call 0.Method_arg_90 (var_1A8, var_A0)
  loc_1CC8DC9:     Call 0.Method_arg_20 (var_204)
  loc_1CC8DD1:     Call 0.Method_arg_30 (var_1BC)
  loc_1CC8DD9:     var_1B8 = CVar(var_1BC) 'String
  loc_1CC8DE7:     var_558 = Ucase(var_1B8) 'Variant
  loc_1CC8E00:     If (var_558 = "FORMONTH") Then
  loc_1CC8E0E:       Proc_6_17_EAA2B0(var_1B8)
  loc_1CC8E29:       Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CC8E31:       Call 0.Method_arg_20 (CStr(var_1B8))
  loc_1CC8E39:       Call 0.Method_arg_38 (var_10C)
  loc_1CC8E4E:     Else
  loc_1CC8E59:       If (var_558 = "TOTAMT") Then
  loc_1CC8E73:         Call 0.Method_arg_90 (var_1A8, var_A0)
  loc_1CC8E7B:         Call 0.Method_arg_20 (var_204)
  loc_1CC8E83:         Call 0.Method_arg_38 (CStr(var_B4))
  loc_1CC8E95:       Else
  loc_1CC8EA0:         If (var_558 = "TOTLT") Then
  loc_1CC8EBA:           Call 0.Method_arg_90 (var_1A8, var_A0)
  loc_1CC8EC2:           Call 0.Method_arg_20 (var_204)
  loc_1CC8ECA:           Call 0.Method_arg_38 (CStr(var_AC))
  loc_1CC8EDC:         Else
  loc_1CC8EE7:           If (var_558 = "TITLE") Then
  loc_1CC8F0D:             Call 0.Method_arg_90 (var_1A8, var_A0)
  loc_1CC8F15:             Call 0.Method_arg_20 (var_204)
  loc_1CC8F1D:             Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_1CC8F33:           Else
  loc_1CC8F3E:             If (var_558 = "PRINTDATE") Then
  loc_1CC8F6D:               Call 0.Method_arg_90 (var_1A8, var_A0)
  loc_1CC8F75:               Call 0.Method_arg_20 (var_204)
  loc_1CC8F7D:               Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F920EC) & "'"))
  loc_1CC8F96:             Else
  loc_1CC8FA1:               If (var_558 = "SUMMARYYN") Then
  loc_1CC8FB9:                 Set var_1A8 = Me.FGrid
  loc_1CC8FD0:                 Proc_6_17_EAA2B0(var_230, CVar(CStr(var_1A8.TextMatrix))))
  loc_1CC8FEB:                 Call 0.Method_arg_90 (var_204, var_A0, var_2A8)
  loc_1CC8FF3:                 Call 0.Method_arg_20 (CStr(var_230), 1)
  loc_1CC8FFB:                 Call 0.Method_arg_38 (CVar(CLng(2)))
  loc_1CC9018:               Else
  loc_1CC9023:                 If (var_558 = "WT_TOTAMT") Then
  loc_1CC9061:                   Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CC9069:                   Call 0.Method_arg_20 (CStr(Format(var_124, "0.00")), 1)
  loc_1CC9071:                   Call 0.Method_arg_38 (1)
  loc_1CC908A:                 Else
  loc_1CC9095:                   If (var_558 = "WT_LT") Then
  loc_1CC90D3:                     Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CC90DB:                     Call 0.Method_arg_20 (CStr(Format(var_12C, "0.00")), 1)
  loc_1CC90E3:                     Call 0.Method_arg_38 (1)
  loc_1CC90FC:                   Else
  loc_1CC9107:                     If (var_558 = "WT_NETAMT") Then
  loc_1CC9126:                       var_1B8 = CVar((var_124 + var_12C)) 'Double
  loc_1CC9148:                       Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CC9150:                       Call 0.Method_arg_20 (CStr(Format("0.00", "0.00")), 1)
  loc_1CC9158:                       Call 0.Method_arg_38 (1)
  loc_1CC9173:                     Else
  loc_1CC917E:                       If (var_558 = "W_TOTAMT") Then
  loc_1CC91BC:                         Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CC91C4:                         Call 0.Method_arg_20 (CStr(Format(var_114, "0.00")), 1)
  loc_1CC91CC:                         Call 0.Method_arg_38 (1)
  loc_1CC91E5:                       Else
  loc_1CC91F0:                         If (var_558 = "W_LT") Then
  loc_1CC922E:                           Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CC9236:                           Call 0.Method_arg_20 (CStr(Format(var_11C, "0.00")), 1)
  loc_1CC923E:                           Call 0.Method_arg_38 (1)
  loc_1CC9257:                         Else
  loc_1CC9262:                           If (var_558 = "W_NETAMT") Then
  loc_1CC9281:                             var_1B8 = CVar((var_114 + var_11C)) 'Double
  loc_1CC92A3:                             Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CC92AB:                             Call 0.Method_arg_20 (CStr(Format("0.00", "0.00")), 1)
  loc_1CC92B3:                             Call 0.Method_arg_38 (1)
  loc_1CC92CE:                           Else
  loc_1CC92D9:                             If (var_558 = "T_TOTAMT") Then
  loc_1CC92F8:                               var_1B8 = CVar((var_124 + var_114)) 'Double
  loc_1CC931A:                               Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CC9322:                               Call 0.Method_arg_20 (CStr(Format("0.00", "0.00")), 1)
  loc_1CC932A:                               Call 0.Method_arg_38 (1)
  loc_1CC9345:                             Else
  loc_1CC9350:                               If (var_558 = "T_LT") Then
  loc_1CC936F:                                 var_1B8 = CVar((var_12C + var_11C)) 'Double
  loc_1CC9391:                                 Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CC9399:                                 Call 0.Method_arg_20 (CStr(Format("0.00", "0.00")), 1)
  loc_1CC93A1:                                 Call 0.Method_arg_38 (1)
  loc_1CC93BC:                               Else
  loc_1CC93C7:                                 If (var_558 = "T_NETAMT") Then
  loc_1CC93D9:                                   var_214 = "0.00"
  loc_1CC93EE:                                   var_1B8 = CVar((((var_124 + var_12C) + var_114) + var_11C)) 'Double
  loc_1CC93F5:                                   var_230 = Format("0.00", var_214)
  loc_1CC9410:                                   Call 0.Method_arg_90 (var_1A8, var_A0, var_204)
  loc_1CC9418:                                   Call 0.Method_arg_20 (CStr(var_230), 1)
  loc_1CC9420:                                   Call 0.Method_arg_38 (1)
  loc_1CC9438:                                 End If
  loc_1CC9438:                               End If
  loc_1CC9438:                             End If
  loc_1CC9438:                           End If
  loc_1CC9438:                         End If
  loc_1CC9438:                       End If
  loc_1CC9438:                     End If
  loc_1CC9438:                   End If
  loc_1CC9438:                 End If
  loc_1CC9438:               End If
  loc_1CC9438:             End If
  loc_1CC9438:           End If
  loc_1CC9438:         End If
  loc_1CC9438:       End If
  loc_1CC9438:     End If
  loc_1CC943B:   Next var_548 'Long
  loc_1CC9445:   Set var_204 = Nothing
  loc_1CC945E:   Set var_1A8 = MemVar_1F921E4 
  loc_1CC946A:   Proc_6_99_1483714(var_1A8, 0, global_80)
  loc_1CC9475:   MemVar_1F921E4 = var_1A8
  loc_1CC9483: Else
  loc_1CC949C:   MsgBox("*No Records to print*", 0, var_214, var_230, var_240)
  loc_1CC94AC: End If
  loc_1CC94B1: global_88 = 0
  loc_1CC94B9: Set var_150 = Nothing
  loc_1CC94C1: Set var_C8 = Nothing
  loc_1CC94C9: Set var_148 = Nothing
  loc_1CC94D1: Set var_14C = Nothing
  loc_1CC94D9: Set var_15C = Nothing
  loc_1CC94E1: Set var_D0 = Nothing
  loc_1CC94E9: Set var_13C = Nothing
  loc_1CC94F1: Set var_140 = Nothing
  loc_1CC94F9: Set var_154 = Nothing
  loc_1CC9501: Set var_158 = Nothing
  loc_1CC9504: Exit Sub
  loc_1CC9505: ' Referenced from: 1CC2700
  loc_1CC9505: Proc_6_60_E62BC4(global_88, &HFF)
  loc_1CC950F: global_88 = 0
  loc_1CC9512: Exit Sub
End Sub

Public Sub Proc_66_74_1AF84AC
  'Data Table: 540784
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_198 As String
  Dim var_D0 As Double
  Dim var_D8 As Double
  Dim var_1F4 As String
  Dim var_1AC As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  Dim var_160 As Variant
  Dim unk_5407B4 As Connection15
  Dim var_20C As Variant
  Dim var_21C As Variant
  Dim var_23C As Variant
  Dim var_180 As Variant
  Dim var_24C As Variant
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_88 As Integer
  Dim var_DA As Integer
  Dim var_A4 As Double
  Dim var_9C As Integer
  Dim var_AC As Double
  Dim var_B4 As Recordset15
  Dim var_1DC As Variant
  Dim var_284 As Variant
  Dim var_288 As Variant
  Dim var_28C As Variant
  Dim var_290 As Variant
  Dim var_294 As Variant
  Dim var_298 As Variant
  Dim var_29C As Variant
  Dim var_27C As Variant
  Dim var_2AC As Variant
  Dim var_2DC As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_350 As Variant
  Dim var_394 As Fields15
  Dim var_31C As Variant
  Dim var_30C As Variant
  Dim var_360 As Variant
  Dim var_370 As Variant
  Dim var_390 As Variant
  Dim var_3C8 As Variant
  Dim var_3E8 As Variant
  Dim var_408 As Variant
  Dim var_428 As Variant
  Dim var_22C As Variant
  Dim var_BC As Recordset15
  Dim var_E4 As Double
  Dim var_438 As Variant
  Dim var_44C As Variant
  Dim var_450 As Variant
  Dim var_454 As Variant
  Dim var_EC As Double
  Dim var_3B8 As Variant
  Dim var_530 As Integer
  Dim var_448 As Variant
  Dim var_464 As Variant
  Dim var_474 As Variant
  Dim var_4B8 As Variant
  Dim var_4D8 As Variant
  Dim var_51C As Recordset15
  Dim var_520 As Fields15
  Dim var_534 As Field20
  Dim var_124 As Recordset15
  Dim var_488 As Variant
  Dim var_12C As Recordset15
  Dim var_134 As Recordset15
  Dim var_118 As Double
  Dim var_108 As Double
  Dim var_F8 As Double
  Dim var_100 As Double
  Dim var_548 As Recordset15
  Dim var_86 As Integer
  Dim var_54C As Recordset15
  loc_1AF40E8: On Error Goto loc_1AF849D
  loc_1AF40EE: var_150 = CVar(CLng(0)) 'Long
  loc_1AF40F3: var_170 = 1
  loc_1AF4116: var_D0 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1AF4125: var_150 = CVar(CLng(1)) 'Long
  loc_1AF412A: var_170 = 1
  loc_1AF414D: var_D8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_1AF4164: var_170 = 1
  loc_1AF4177: var_194 = Me.FGrid.TextMatrix)
  loc_1AF4182: var_198 = CStr(var_194)
  loc_1AF41A5: Set var_1E0 = Me.FGrid
  loc_1AF41BA: var_F0 = 1 & CStr(var_1E0.TextMatrix))
  loc_1AF41E2: Set var_184 = Me.Check1
  loc_1AF41E8: Call 0.Method_Proc_66_74_1AF84AC0 (1, var_1E0, var_1FA, CVar(CLng(1)), var_170 & var_198 & " TO ", CVar(CLng(0)), "FROM ")
  loc_1AF41F0: var_D8 = var_1E0.Value
  loc_1AF4206: If (CLng(var_1FA) = 0) Then
  loc_1AF4224:   Call Proc_66_44_1281BC4(global_164, 1, CByte(1))
  loc_1AF422F:   global_148 = var_198
  loc_1AF423F:   If (global_88 = 0) Then
  loc_1AF4242:     Exit Sub
  loc_1AF4243:   End If
  loc_1AF4243: End If
  loc_1AF424B: var_150 = var_D8
  loc_1AF4253: Proc_6_7_F25D88(var_194, var_150, " AND RO.ChkOutDate <=", var_198, var_170)
  loc_1AF4266: global_60 = CStr(var_150 & var_194)
  loc_1AF4280: Set var_184 = Me.Check1
  loc_1AF4286: Call 0.Method_Proc_66_74_1AF84AC0 (1, var_1E0, var_1FA)
  loc_1AF428E: var_D0 = var_1E0.Value
  loc_1AF42A4: If (CLng(var_1FA) = 0) Then
  loc_1AF42BF:   var_C4 = var_C4 & " and R.Code in ( " & global_148 & ") "
  loc_1AF42E1:   var_C8 = var_C8 & " and R.Code not in ( " & global_148 & ") "
  loc_1AF42EB: End If
  loc_1AF4301: unk_5407B4.Execute "Update PayCharge set GuestProf=GF.GuestProf from GuestFolio GF Where FolioNoDocid=GF.Docid And ISNULL(PayCharge.FolioNoDocid,'')<>''", var_194, -1
  loc_1AF4320: var_1F0 = CVar("Select Distinct RO.DocId,GF.Vdate,(RO.Adult+RO.Children) As Person,RO.FolioNo,RO.ChkInDate,RO.ChkInTime,RO.ChkOutDate,RO.ChkOutTime, ROOMRATE =case when GF.RODISC>0 then (RO.RoomRate-(RO.RoomRate*GF.RODISC/100)) else RO.ROOMRATE end ,RO.RoomNo,GP.Name AS GuestName,GP.BirthDate,GP.Age,Country.Name As Nationality,GF.RODISC,RO.Type,paycharge.Bill_No,Cast(paycharge.Bill_NO As Numeric) As OBill_No,BD.ChkInDAte as ChkinDT,BD.ChkInTime as ChkinTm,BD.ChkOutDate as CHkOutDt,BD.ChkOutTime as CHkOutTm " & "From ((((BillSummary as BD LEFT JOIN RoomOcc AS RO ON BD.FolioNoDocid = RO.Docid) Left Join GuestProf GP ON RO.GuestProf=GP.Code) Left Join Country ON GP.Nationality=Country.Code) Left Join GuestFolio GF ON RO.DOCID=GF.DOCID)  LEFT JOIN PayCharge ON (GF.GuestProf = PayCharge.GuestProf) AND (GF.FolioNo = PayCharge.FolioNo) Where  Paycharge.bill_no is not NULL and BD.BillSettleDate between ") 'String
  loc_1AF4326: var_150 = var_D0
  loc_1AF432E: Proc_6_7_F25D88(var_194, var_150, var_150 & var_194, var_27C, -1)
  loc_1AF4346: var_170 = var_D8
  loc_1AF434E: Proc_6_7_F25D88(var_22C, var_170, var_184 & var_194 & " And ")
  loc_1AF435A: var_180 = " and isnull(Paycharge.ModeSet,'')<>'S'  and (paycharge.Bill_NO is not null and paycharge.Bill_NO<>'') AND Paycharge.SettleDate is Not NULL and RO.RoomType ='RO' "
  loc_1AF4383: unk_5407B4.Execute CStr(var_184 & var_22C & var_180 & CVar(global_60) & " ORDER BY OBill_No,RO.Type"), var_170, var_150
  loc_1AF438E: Set var_B4 = var_184
  loc_1AF43B0: var_88 = 1
  loc_1AF43B5: var_DA = 0
  loc_1AF43BB: var_A4 = CDbl(0)
  loc_1AF43C0: var_9C = 0
  loc_1AF43C6: var_AC = CDbl(0)
  loc_1AF43DD: If (var_B4.RecordCount > 0) Then
  loc_1AF43ED:   Call Proc_66_55_1181A2C(New)
  loc_1AF43F5:   Set var_130 = var_184
  loc_1AF43F8:   ' Referenced from: 1AF7BEA
  loc_1AF4407:   If Not(Me.Recordset15.EOF) Then
  loc_1AF4446:     If (var_B4.Fields.Item("Type").Value = "C") Then
  loc_1AF4490:       Proc_6_7_F25D88("ChkInDate" & CVar(var_B4.Fields.Item("ChkInDate")), CVar(var_B4.Fields.Item("ChkInDate")), "sELECT sno FROM ROOMOCC WHERE chkindate=", var_27C, -1, var_294, var_298)
  loc_1AF44D8:       var_24C = 0 & "ChkInDate" & CVar(var_B4.Fields.Item("ChkInDate")) & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" 
  loc_1AF4514:       unk_5407B4.Execute CStr(var_24C & var_B4.Fields.Item("FolioNo").Value), var_29C, var_2AC
  loc_1AF451C:       var_184 = var_294.Fields
  loc_1AF4524:       var_9C = var_298.Item(var_AC)
  loc_1AF452C:       var_A4 = var_29C.Value
  loc_1AF456B:       If (var_2AC = 1) Then
  loc_1AF4582:         var_1F0 = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime <= '") 'String
  loc_1AF45E6:         var_23C = "ChkOutDate" & var_B4.Fields.Item("ChkOutDate").Value & var_B4.Fields.Item("ChkOutDate").Value & " " & var_B4.Fields.Item("ChkOutTime").Value 
  loc_1AF461E:         var_27C = -1 & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), var_23C & "' AND  PC.Bill_No='", var_31C)) 
  loc_1AF4676:         unk_5407B4.Execute CStr(var_27C & "' AND PC.FOLIONO=" & var_B4.Fields.Item("FolioNo").Value & CVar(var_C4) & " GROUP By PC.Bill_No "), var_29C, 
  loc_1AF4681:         Set var_BC = var_29C
  loc_1AF46C0:       Else
  loc_1AF46FE:         var_288 = var_B4.Fields.Item("ChkInTime")
  loc_1AF4712:         var_21C = "hh:nn:ss"
  loc_1AF471B:         var_20C = CVar(var_288) 'Address
  loc_1AF479D:         var_29C = var_B4.Fields
  loc_1AF47F4:         var_24C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime Between '") 'String
  loc_1AF480A:         var_25C = var_B4.Fields.Item("ChkInDate").Value & " " & Format(var_20C, var_21C) & "' AND  PC.Bill_No='" & var_B4.Fields.Item("ChkInDate").Value & " " & Format(var_20C, var_21C) 
  loc_1AF482A:         var_31C = var_25C & "' and '" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1AF483A:         var_360 = CVar(Proc_6_38_E68A98(CVar(var_29C.Item("Bill_no")), 1, 1)) 'String
  loc_1AF4860:         var_408 = var_31C & "' AND  PC.Bill_No='" & var_360 & "' AND PC.FOLIONODOCID='" & var_B4.Fields.Item("DocID").Value & "'" & CVar(var_C4) 
  loc_1AF4877:         unk_5407B4.Execute CStr(var_408 & " GROUP By PC.Bill_No "), var_448, -1
  loc_1AF4882:         Set var_BC = var_44C
  loc_1AF48DC:       End If
  loc_1AF48DF:     Else
  loc_1AF48E5:       var_180 = 0
  loc_1AF4938:       unk_5407B4.Execute CStr("sELECT COUNT(*) FROM ROOMOCC WHERE fOLIONO=" & var_B4.Fields.Item("FolioNo").Value), var_20C, -1
  loc_1AF4940:       var_284 = var_284.Fields
  loc_1AF4948:       var_180 = var_288.Item(var_288)
  loc_1AF4950:       var_28C = var_28C.Value
  loc_1AF497B:       If (var_21C > 1) Then
  loc_1AF49D0:         var_21C = "hh:nn:ss"
  loc_1AF4A22:         var_294 = var_B4.Fields
  loc_1AF4A2A:         var_298 = var_294.Item("DocID")
  loc_1AF4A4B:         var_24C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.BillAmount) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime > '") 'String
  loc_1AF4A56:         var_1F0 = var_B4.Fields.Item("ChkInDate").Value & " " 
  loc_1AF4A61:         var_25C = var_1F0 & Format(CVar(var_B4.Fields.Item("ChkInTime")), var_21C) & "' AND  PC.Bill_No='" & var_1F0 & Format(CVar(var_B4.Fields.Item("ChkInTime")), var_21C) 
  loc_1AF4A7D:         var_2DC = var_25C & "' AND  PC.Bill_No='" & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), 1, 1, var_21C)) & "' AND PC.FOLIONODOCID='" 
  loc_1AF4A84:         var_2FC = var_2DC & var_298.Value 
  loc_1AF4AAE:         unk_5407B4.Execute CStr(var_2FC & "'" & CVar(var_C4) & " GROUP By PC.Bill_No "), var_360, -1
  loc_1AF4AB9:         Set var_BC = var_29C
  loc_1AF4B00:       Else
  loc_1AF4B14:         var_20C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.BillAmount) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE vdate >= ") 'String
  loc_1AF4B3D:         Proc_6_7_F25D88(var_1F0, CVar(var_B4.Fields.Item("ChkInDate")), var_20C, var_2FC, -1)
  loc_1AF4B7A:         var_24C = CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), var_294 & var_1F0 & " AND  PC.Bill_No='", var_29C)) 'String
  loc_1AF4BAC:         var_27C = var_B4.Fields.Item("DocID").Value
  loc_1AF4BDE:         unk_5407B4.Execute CStr(var_44C & var_24C & "' AND PC.FOLIONODOCID='" & var_27C & "'" & CVar(var_C4) & " GROUP By PC.Bill_No "), 1, 1
  loc_1AF4BE9:         Set var_BC = var_294
  loc_1AF4C1D:       End If
  loc_1AF4C1D:     End If
  loc_1AF4C31:     If (var_BC.RecordCount > 0) Then
  loc_1AF4CA8:       If (var_B4.Fields.Item("Type").Value = "C") Then
  loc_1AF4CF2:         Proc_6_7_F25D88(var_1F0, CVar(var_B4.Fields.Item("ChkInDate")), "sELECT sno FROM ROOMOCC WHERE chkindate=", var_27C, -1, var_294)
  loc_1AF4D68:         var_26C = var_298 & var_1F0 & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("FolioNo").Value 
  loc_1AF4D76:         unk_5407B4.Execute CStr(var_26C), 0, var_29C
  loc_1AF4D7E:         var_2AC = var_294.Fields
  loc_1AF4D86:          = var_298.Item(CSng(var_BC.Fields.Item("LuxuryTax").Value))
  loc_1AF4D8E:          = var_29C.Value
  loc_1AF4DCD:         If (var_2AC = 1) Then
  loc_1AF4E5D:           Proc_6_7_F25D88(var_2AC, CVar(var_B4.Fields.Item("ChkInDate")))
  loc_1AF4E88:           Proc_6_7_F25D88(var_2FC, CVar(var_B4.Fields.Item("ChkOutDate")))
  loc_1AF4EE5:           var_438 = 0
  loc_1AF4F02:           var_24C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime <= '") 'String
  loc_1AF4F18:           var_25C = var_B4.Fields.Item("ChkOutDate") & var_B4.Fields.Item("ChkOutDate").Value & " " & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1AF4F48:           var_360 = CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), 1)) 'String
  loc_1AF4F54:           var_390 = var_25C & "' AND PC.VDATE BETWEEN " & var_2AC & " AND " & var_2FC & " AND  PC.Bill_No='" & var_360 & "' and PC.FOLIONO=" 
  loc_1AF4F5B:           var_3C8 = var_390 & var_B4.Fields.Item("FolioNo").Value 
  loc_1AF4F85:           unk_5407B4.Execute CStr(var_3C8 & " and PC.PAYCode in ( '" & CVar(MemVar_1F92070) & "RMCH') GROUP By PC.Bill_No"), var_448, -1
  loc_1AF4F8D:           var_44C = var_44C.Fields
  loc_1AF4F95:           var_438 = var_450.Item(var_450)
  loc_1AF4F9D:           var_454 = var_454.Value
  loc_1AF4FA6:           var_EC = CSng(var_464)
  loc_1AF5007:         Else
  loc_1AF5045:           var_288 = var_B4.Fields.Item("ChkInTime")
  loc_1AF5059:           var_21C = "hh:nn:ss"
  loc_1AF5069:           var_22C = Format(CVar(var_288), var_21C)
  loc_1AF50FB:           Proc_6_7_F25D88(var_360, CVar(var_B4.Fields.Item("ChkInDate")), 1, 1, 1)
  loc_1AF5126:           Proc_6_7_F25D88(var_3C8, CVar(var_B4.Fields.Item("ChkOutDate")), 1)
  loc_1AF5183:           var_530 = 0
  loc_1AF51A0:           var_24C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime Between '") 'String
  loc_1AF51B6:           var_25C = var_B4.Fields.Item("ChkOutTime") & var_B4.Fields.Item("ChkInDate").Value & " " & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("ChkInDate").Value & " " & var_22C 
  loc_1AF51D6:           var_31C = var_25C & "' and '" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1AF5209:           var_464 = var_31C & "' AND PC.VDATE BETWEEN " & var_360 & " AND " & var_3C8 & " AND  PC.Bill_No='" & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), var_EC)) 
  loc_1AF522C:           var_4D8 = var_464 & "' and PC.FOLIONO=" & var_B4.Fields.Item("FolioNo").Value & " and PC.PAYCode in ( '" & CVar(MemVar_1F92070) 
  loc_1AF5243:           unk_5407B4.Execute CStr(var_4D8 & "RMCH') GROUP By PC.Bill_No"), var_518, -1
  loc_1AF524B:           var_51C = var_51C.Fields
  loc_1AF5253:           var_530 = var_520.Item(var_520)
  loc_1AF525B:           var_534 = var_534.Value
  loc_1AF5264:           var_EC = CSng(var_544)
  loc_1AF52D8:         End If
  loc_1AF52DB:       Else
  loc_1AF52E1:         var_1AC = 0
  loc_1AF533D:         unk_5407B4.Execute CStr("sELECT COUNT(*) FROM ROOMOCC WHERE Docid='" & var_B4.Fields.Item("DocID").Value & "'"), var_21C, -1
  loc_1AF5345:         var_284 = var_284.Fields
  loc_1AF534D:         var_1AC = var_288.Item(var_288)
  loc_1AF5355:         var_28C = var_28C.Value
  loc_1AF5382:         If (var_22C > 1) Then
  loc_1AF53E7:           var_22C = Format(CVar(var_B4.Fields.Item("ChkInTime")), "hh:nn:ss")
  loc_1AF54E2:           var_454 = var_B4.Fields
  loc_1AF550B:           var_24C = CVar("Select SUM(PC.BillAmount) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime > '") 'String
  loc_1AF5516:           var_1F0 = var_B4.Fields.Item("ChkInDate").Value & " " 
  loc_1AF5521:           var_25C = var_B4.Fields.Item("FolioNo") & var_1F0 & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_1F0 & var_22C 
  loc_1AF553D:           var_2DC = var_25C & "' AND  PC.Bill_No='" & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), 1, 1, var_22C)) & "' AND PC.FOLIONO=" 
  loc_1AF5552:           var_30C = " and docid not in (Select Docid from paycharge WHERE cast(vdate as varchar(11))+' '+vtime > '"
  loc_1AF556E:           var_3E8 = var_2DC & var_B4.Fields.Item("FolioNo").Value & CVar(var_C4) & "' AND PC.VDATE BETWEEN " & var_B4.Fields.Item("ChkInDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1AF558A:           var_474 = var_3E8 & "' AND  Bill_No='" & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), 1, 1)) & "' AND FOLIONO=" 
  loc_1AF559A:           var_4B8 = var_474 & var_454.Item("FolioNo").Value & " and paycode ='" 
  loc_1AF55BB:           unk_5407B4.Execute CStr(var_4B8 & CVar(MemVar_1F92078) & "LT' and AMTDR=0) GROUP By PC.Bill_No "), var_518, -1
  loc_1AF55C6:           Set var_124 = var_51C
  loc_1AF564C:           If (var_124.RecordCount > 0) Then
  loc_1AF5675:             Proc_6_39_E7C810(var_1F0, CVar(var_124.Fields.Item(0)), var_51C)
  loc_1AF567E:             var_EC = CSng(var_1F0)
  loc_1AF568E:           Else
  loc_1AF5691:             var_EC = CDbl(0)
  loc_1AF5694:           End If
  loc_1AF5697:         Else
  loc_1AF56BD:           Proc_6_7_F25D88(var_1F0, CVar(var_B4.Fields.Item("ChkInDate")), var_EC, var_EC)
  loc_1AF56D9:           var_288 = var_B4.Fields.Item("Bill_no")
  loc_1AF5707:           var_290 = var_B4.Fields.Item("FolioNo")
  loc_1AF570F:           var_27C = var_290.Value
  loc_1AF5726:           var_294 = var_B4.Fields
  loc_1AF57B8:           var_44C = var_B4.Fields
  loc_1AF57C8:           var_448 = var_44C.Item("FolioNo").Value
  loc_1AF57E1:           var_20C = CVar("Select SUM(PC.billAmount) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE vdate >= ") 'String
  loc_1AF57E7:           var_21C = var_20C & var_1F0 
  loc_1AF5803:           var_26C = var_21C & " AND  PC.Bill_No='" & CVar(Proc_6_38_E68A98(CVar(var_288), var_EC)) & "' and PC.FOLIONO=" 
  loc_1AF5821:           var_1DC = "LT') and docid not in (Select Docid from paycharge WHERE cast(vdate as varchar(11))+' '+vtime > '"
  loc_1AF583D:           var_390 = var_26C & var_27C & " and PC.PAYCode in ('" & CVar(MemVar_1F92070) & "FolioNo" & var_294.Item("ChkInDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1AF5859:           var_428 = var_390 & "' AND  Bill_No='" & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), 1, 1)) & "' AND FOLIONO=" 
  loc_1AF5873:           var_488 = var_428 & var_448 & " and paycode ='" & CVar(MemVar_1F92078) 
  loc_1AF588A:           unk_5407B4.Execute CStr(var_488 & "LT' and AMTDR=0)GROUP By PC.Bill_No"), var_4B8, -1
  loc_1AF5895:           Set var_12C = var_454
  loc_1AF5911:           If (var_12C.RecordCount > 0) Then
  loc_1AF593A:             Proc_6_39_E7C810(var_1F0, CVar(var_12C.Fields.Item("TotalTax")), var_454)
  loc_1AF5943:             var_EC = CSng(var_1F0)
  loc_1AF5953:           Else
  loc_1AF5956:             var_EC = CDbl(0)
  loc_1AF5959:           End If
  loc_1AF5959:         End If
  loc_1AF5959:       End If
  loc_1AF595C:     Else
  loc_1AF595F:       var_E4 = CDbl(0)
  loc_1AF5968:       var_180 = 0
  loc_1AF59BB:       unk_5407B4.Execute CStr("sELECT COUNT(*) FROM ROOMOCC WHERE fOLIONO=" & var_B4.Fields.Item("FolioNo").Value), var_20C, -1
  loc_1AF59C3:       var_284 = var_284.Fields
  loc_1AF59CB:       var_180 = var_288.Item(var_288)
  loc_1AF59D3:       var_28C = var_28C.Value
  loc_1AF59FE:       If (var_21C > 1) Then
  loc_1AF5A58:         var_20C = CVar("Select Count(*) from PayCharge where PayCode='" & MemVar_1F92070 & "LT' And FolioNO=") & var_B4.Fields.Item("FolioNo").Value 
  loc_1AF5A8D:         var_23C = CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), var_20C & " and Bill_no='", var_26C, -1, var_28C, var_290)) 'String
  loc_1AF5A99:         var_25C = 0 & CVar(var_B4.Fields.Item("Bill_no")) & "'" 
  loc_1AF5AA7:         unk_5407B4.Execute CStr(var_25C), var_294, var_27C
  loc_1AF5AAF:         var_21C = var_28C.Fields
  loc_1AF5AB7:         var_EC = var_290.Item(var_E4)
  loc_1AF5ABF:          = var_294.Value
  loc_1AF5AFC:         If (var_27C = 0) Then
  loc_1AF5B13:           var_198 = "Select SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE  PC.Bill_No='"
  loc_1AF5B42:           var_1F4 = -1 & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), var_198, var_25C)
  loc_1AF5B76:           var_21C = CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), 1, 1) & "' and PC.FOLIONO=") & var_B4.Fields.Item("FolioNo").Value 
  loc_1AF5BA0:           unk_5407B4.Execute CStr(var_21C & " and PC.PAYCode in ('" & CVar(MemVar_1F92070) & "LT') GROUP By PC.Bill_No"), var_28C, 
  loc_1AF5BAB:           Set var_134 = var_28C
  loc_1AF5BEB:           If (var_134.RecordCount > 0) Then
  loc_1AF5C19:             var_EC = CSng(var_134.Fields.Item(0).Value)
  loc_1AF5C29:           Else
  loc_1AF5C2C:             var_EC = CDbl(0)
  loc_1AF5C2F:           End If
  loc_1AF5C32:         Else
  loc_1AF5CCF:           var_294 = var_B4.Fields
  loc_1AF5CD7:           var_298 = var_294.Item("ChkOutTime")
  loc_1AF5D0F:           var_29C = var_B4.Fields
  loc_1AF5D3D:           var_394 = var_B4.Fields
  loc_1AF5D4D:           var_3B8 = var_394.Item("FolioNo").Value
  loc_1AF5D66:           var_24C = CVar("Select SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE  cast(vdate as varchar(11))+' '+vtime Between '") 'String
  loc_1AF5D71:           var_1F0 = var_B4.Fields.Item("ChkInDate").Value & " " 
  loc_1AF5D7C:           var_25C = "hh:nn:ss" & " and PC.PAYCode in ('" & CVar(MemVar_1F92070) & "LT') GROUP By PC.Bill_No" & var_1F0 & Format(CVar(var_B4.Fields.Item("ChkInTime")), "hh:nn:ss") 
  loc_1AF5D98:           var_2FC = var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_298), "hh:nn:ss") 
  loc_1AF5DAF:           var_370 = var_25C & "' and '" & var_2FC & "' AND PC.Bill_No='" & CVar(Proc_6_38_E68A98(CVar(var_29C.Item("Bill_no")), 1, 1, 1)) 
  loc_1AF5DDB:           var_428 = var_370 & "' and PC.FOLIONO=" & var_3B8 & " and PC.PAYCode in ('" & CVar(MemVar_1F92070) & "LT') GROUP By PC.Bill_No" 
  loc_1AF5DE9:           unk_5407B4.Execute CStr(var_428), var_448, -1
  loc_1AF5DF4:           Set var_134 = var_44C
  loc_1AF5E62:           If (var_134.RecordCount > 0) Then
  loc_1AF5E90:             var_EC = CSng(var_134.Fields.Item(0).Value)
  loc_1AF5EA0:           Else
  loc_1AF5EA3:             var_EC = CDbl(0)
  loc_1AF5EA6:           End If
  loc_1AF5EA6:         End If
  loc_1AF5EA9:       Else
  loc_1AF5EBD:         var_20C = CVar("Select SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE vdate >= ") 'String
  loc_1AF5EE6:         Proc_6_7_F25D88(var_1F0, CVar(var_B4.Fields.Item("ChkInDate")), var_20C, var_2FC, -1, var_294)
  loc_1AF5F23:         var_24C = CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), var_EC & var_1F0 & " AND  PC.Bill_No='", var_EC, var_44C)) 'String
  loc_1AF5F55:         var_27C = var_B4.Fields.Item("FolioNo").Value
  loc_1AF5F79:         var_2EC = 1 & var_24C & "' and PC.FOLIONO=" & var_27C & " and PC.PAYCode in ('" & CVar(MemVar_1F92070) & "RMCH') GROUP By PC.Bill_No" 
  loc_1AF5F87:         unk_5407B4.Execute CStr(var_2EC), var_EC, var_EC
  loc_1AF5F92:         Set var_134 = var_294
  loc_1AF5FDA:         If (var_134.RecordCount > 0) Then
  loc_1AF6008:           var_EC = CSng(var_134.Fields.Item(0).Value)
  loc_1AF6018:         Else
  loc_1AF601B:           var_EC = CDbl(0)
  loc_1AF601E:         End If
  loc_1AF601E:       End If
  loc_1AF601E:     End If
  loc_1AF6025:     If (var_E4 = CDbl(0)) Then
  loc_1AF6064:       If (var_B4.Fields.Item("Type").Value = "C") Then
  loc_1AF60AE:         Proc_6_7_F25D88(var_1F0, CVar(var_B4.Fields.Item("ChkInDate")), "sELECT sno FROM ROOMOCC WHERE chkindate=", var_27C, -1, var_294)
  loc_1AF6124:         var_26C = var_298 & var_1F0 & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("FolioNo").Value 
  loc_1AF6132:         unk_5407B4.Execute CStr(var_26C), 0, var_29C
  loc_1AF6142:         var_EC = var_298.Item(var_EC)
  loc_1AF614A:          = var_29C.Value
  loc_1AF6189:         If (var_294.Fields = 1) Then
  loc_1AF6280:           var_24C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime <= '") 'String
  loc_1AF6296:           var_25C = var_B4.Fields.Item("Bill_no") & var_B4.Fields.Item("ChkOutDate").Value & " " & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1AF62B9:           var_2FC = var_25C & "' and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), 1)) 
  loc_1AF62DC:           var_370 = var_2FC & "' and PC.FOLIONO=" & var_B4.Fields.Item("FolioNo").Value & " AND PC.PAYCode in ('" & CVar(MemVar_1F92070) 
  loc_1AF62F3:           unk_5407B4.Execute CStr(var_370 & "RMCH') GROUP By PC.BILL_NO"), var_3B8, -1
  loc_1AF6360:           If (var_394.RecordCount = 0) Then
  loc_1AF6363:             GoTo loc_1AF7BE2
  loc_1AF6366:           End If
  loc_1AF6369:         Else
  loc_1AF63A7:           var_288 = var_B4.Fields.Item("ChkOutTime")
  loc_1AF63BB:           var_21C = "hh:nn:ss"
  loc_1AF63C4:           var_20C = CVar(var_288) 'Address
  loc_1AF646D:           var_394 = var_B4.Fields
  loc_1AF64C4:           var_24C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime between '") 'String
  loc_1AF64DA:           var_25C = var_B4.Fields.Item("ChkOutTime") & var_B4.Fields.Item("ChkOutDate").Value & " " & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(var_20C, var_21C) 
  loc_1AF64FA:           var_31C = var_25C & "' and '" & var_B4.Fields.Item("ChkOutDate").Value & " " & Format(CVar(var_B4.Fields.Item("ChkOutTime")), "hh:nn:ss") 
  loc_1AF651A:           var_3B8 = CVar(Proc_6_38_E68A98(CVar(var_394.Item("Bill_no")), 1, 1, 1)) 'String
  loc_1AF6526:           var_3E8 = var_31C & "' and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" & var_3B8 & "' and PC.FOLIONO=" 
  loc_1AF6549:           var_474 = var_3E8 & var_B4.Fields.Item("FolioNo").Value & " and PC.PAYCode In ('" & CVar(MemVar_1F92070) & "RMCH') GROUP By PC.BILL_NO" 
  loc_1AF6557:           unk_5407B4.Execute CStr(var_474), var_488, -1
  loc_1AF6562:           Set var_BC = var_454
  loc_1AF65C6:         End If
  loc_1AF65C9:       Else
  loc_1AF65CF:         var_180 = 0
  loc_1AF6622:         unk_5407B4.Execute CStr("sELECT COUNT(*) FROM ROOMOCC WHERE fOLIONO=" & var_B4.Fields.Item("FolioNo").Value), var_20C, -1
  loc_1AF662A:         var_284 = var_284.Fields
  loc_1AF6632:         var_180 = var_288.Item(var_288)
  loc_1AF663A:         var_28C = var_28C.Value
  loc_1AF6665:         If (var_21C > 1) Then
  loc_1AF66BA:           var_21C = "hh:nn:ss"
  loc_1AF6733:           var_29C = var_B4.Fields
  loc_1AF675C:           var_24C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE cast(vdate as varchar(11))+' '+vtime > '") 'String
  loc_1AF6767:           var_1F0 = var_B4.Fields.Item("ChkInDate").Value & " " 
  loc_1AF6772:           var_25C = var_B4.Fields.Item("Bill_no") & var_1F0 & " and ChkinTime='" & var_B4.Fields.Item("ChkInTime").Value & "' and fOLIONO=" & var_1F0 & Format(CVar(var_B4.Fields.Item("ChkInTime")), var_21C) 
  loc_1AF6795:           var_2FC = var_25C & "' and PC.RoomNo='" & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='" & CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), 1, 1, var_21C)) 
  loc_1AF67A5:           var_350 = var_2FC & "' and PC.FOLIONO=" & var_29C.Item("FolioNo").Value 
  loc_1AF67CF:           unk_5407B4.Execute CStr(var_350 & " AND PC.PAYCode In ('" & CVar(MemVar_1F92070) & "RMCH') GROUP By PC.BILL_NO"), var_3B8, -1
  loc_1AF67DA:           Set var_BC = var_394
  loc_1AF682B:         Else
  loc_1AF683F:           var_20C = CVar("Select SUM(PC.AMTDR) AS LuxuryTax,SUM(PC.OnAmt) AS TotalTax " & "From (PayCharge PC LEFT JOIN REVMAST R On PC.PayCode=R.Code) WHERE vdate >= ") 'String
  loc_1AF6868:           Proc_6_7_F25D88(var_1F0, CVar(var_B4.Fields.Item("ChkInDate")), var_20C, var_350, -1)
  loc_1AF6874:           var_160 = " and PC.RoomNo='"
  loc_1AF68DC:           var_27C = CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Bill_no")), var_29C & var_1F0 & var_160 & var_B4.Fields.Item("RoomNo").Value & "' AND PC.BIll_NO='", var_394)) 'String
  loc_1AF6929:           var_31C = var_454 & var_27C & "' and PC.FOLIONO=" & var_B4.Fields.Item("FolioNo").Value & " and PC.PAYCode In ('" & CVar(MemVar_1F92070) 
  loc_1AF6940:           unk_5407B4.Execute CStr(var_31C & "RMCH') GROUP By PC.BILL_NO"), 1, var_394
  loc_1AF694B:           Set var_BC = var_29C
  loc_1AF6989:         End If
  loc_1AF6989:       End If
  loc_1AF698F:       var_280 = var_BC.RecordCount
  loc_1AF699D:       If (var_280 > 0) Then
  loc_1AF69BF:         var_194 = CVar(var_BC.Fields.Item("LuxuryTax")) 'Address
  loc_1AF69C6:         Proc_6_39_E7C810(var_1F0)
  loc_1AF69E3:         var_108 = (var_108 + CSng(var_1F0))
  loc_1AF69E9:       Else
  loc_1AF69EC:         var_118 = CDbl(0)
  loc_1AF69EF:       End If
  loc_1AF69F2:     Else
  loc_1AF69F9:       var_F8 = (var_F8 + var_EC)
  loc_1AF6A03:       var_100 = (var_100 + var_E4)
  loc_1AF6A06:     End If
  loc_1AF6A09:     var_150 = "Bill_no"
  loc_1AF6A2E:     var_11C = Proc_6_38_E68A98(CVar(var_B4.Fields.Item(var_150)), var_100, var_F8, var_118)
  loc_1AF6A3E:     If (var_E4 > CDbl(0)) Then
  loc_1AF6A47:       var_DA = (var_DA + 1)
  loc_1AF6A4D:       Set var_548 = var_130 
  loc_1AF6A5C:       var_548.AddNew var_150, var_160
  loc_1AF6A74:       var_194 = CVar(Proc_6_52_EAD4F4(CStr(var_DA), 3, var_DA)) 'String
  loc_1AF6A81:       var_548.Collect = "SNo"
  loc_1AF6AC8:       var_1F0 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("GuestName")), CVar(var_B4.Fields.Item("GuestName")), var_108), &H32)) 'String
  loc_1AF6AD5:       var_548.Collect = "GuestName"
  loc_1AF6B7A:       var_26C = IIf((var_B4.Fields.Item("BirthDate").Value <> vbNullString), DateDiff("yyyy", CVar(var_B4.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1), 0)
  loc_1AF6B9E:       var_548.Collect = "BirthAge"
  loc_1AF6BEC:       Proc_6_39_E7C810(var_1F0, CVar(var_B4.Fields.Item("Age")), CVar(Proc_6_52_EAD4F4(CStr(var_26C), 3, var_1F0)))
  loc_1AF6C10:       var_548.Collect = "Age"
  loc_1AF6C60:       var_1F0 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Nationality")), CVar(Proc_6_52_EAD4F4(CStr(var_1F0), 3))), &H19)) 'String
  loc_1AF6C6D:       var_548.Collect = "Nationality"
  loc_1AF6CBC:       var_1F0 = CVar(Proc_6_45_EAD428(CStr(var_B4.Fields.Item("RoomNo").Value), 5, var_1F0)) 'String
  loc_1AF6CC9:       var_548.Collect = "RoomNo"
  loc_1AF6D18:       var_1F0 = CVar(Proc_6_52_EAD4F4(CStr(var_B4.Fields.Item("RoomRate").Value), 7, var_1F0)) 'String
  loc_1AF6D25:       var_548.Collect = "RoomRate"
  loc_1AF6D88:       var_548.Collect = "ChkInDate"
  loc_1AF6DD2:       var_1F0 = CVar(Proc_6_45_EAD428(CStr(var_B4.Fields.Item("ChkInTime").Value), 5, Format(CVar(var_B4.Fields.Item("ChkInDate")), "DD/MM/YYYY"), 1)) 'String
  loc_1AF6DDF:       var_548.Collect = "ChkInTime"
  loc_1AF6E42:       var_548.Collect = "ChkOutDate"
  loc_1AF6E8C:       var_1F0 = CVar(Proc_6_45_EAD428(CStr(var_B4.Fields.Item("ChkOutTime").Value), 5, Format(CVar(var_B4.Fields.Item("ChkOutDate")), "DD/MM/YYYY"), 1, 1)) 'String
  loc_1AF6E99:       var_548.Collect = "ChkOutTime"
  loc_1AF6EF4:       var_1F0 = CVar(var_B4.Fields.Item("ChkOutDate")) 'Address
  loc_1AF6EFB:       var_194 = CVar(var_B4.Fields.Item("ChkInDate")) 'Address
  loc_1AF6F84:       var_27C = IIf((DateDiff("D", var_194, var_1F0, 1, 1) = 0), 1, DateDiff("D", CVar(var_B4.Fields.Item("ChkInDate")), CVar(var_B4.Fields.Item("ChkOutDate")), 1, 1))
  loc_1AF6FA8:       var_548.Collect = "StPeriod"
  loc_1AF6FDD:       Proc_6_39_E7C810(var_194, var_EC, CVar(Proc_6_52_EAD4F4(CStr(var_27C), 3, var_1F0, var_1F0)), 1)
  loc_1AF7021:       var_548.Collect = "TotalTax"
  loc_1AF706D:       var_1F0 = CVar(Proc_6_52_EAD4F4(CStr(var_B4.Fields.Item("Person").Value), 5, CVar(Proc_6_52_EAD4F4(CStr(Format(var_B4.Fields.Item("Person").Value, "0.00")), 8, 1, 1)))) 'String
  loc_1AF707A:       var_548.Collect = "Person"
  loc_1AF709D:       var_194 = CVar(Proc_6_52_EAD4F4(var_11C, 8, var_1F0)) 'String
  loc_1AF70AA:       var_548.Collect = "BillNo"
  loc_1AF70ED:       var_20C = Format(CVar(var_B4.Fields.Item("ChkOutDate")), "DD/MM/YYYY")
  loc_1AF70FF:       var_548.Collect = "Billdate"
  loc_1AF7132:       var_194 = var_B4.Fields.Item("Person").Value
  loc_1AF716C:       var_20C = (var_194 = 0) 'Variant
  loc_1AF71DA:       var_2DC = CVar(Proc_6_52_EAD4F4(CStr(Format(IIf((var_E4 > CDbl(0)), (CVar(var_E4) / IIf(var_20C, 1, CVar(var_B4.Fields.Item("Person")))), 0), "0.00")), 8, 1, 1, var_20C, 1)) 'String
  loc_1AF71E7:       var_548.Collect = "LTPerOcc"
  loc_1AF7216:       var_150 = var_E4
  loc_1AF721E:       Proc_6_39_E7C810(var_194, var_150, var_2DC, 1)
  loc_1AF722D:       var_160 = "0.00"
  loc_1AF7255:       var_21C = CVar(Proc_6_52_EAD4F4(CStr(Format(var_194, var_160)), 8, 1, 1)) 'String
  loc_1AF7262:       var_548.Collect = "LTTotal"
  loc_1AF7280:       var_548.Update var_150, var_160
  loc_1AF7287:       Set var_548 = Nothing 
  loc_1AF728E:       var_160 = CVar(var_9C) 'Integer
  loc_1AF72BB:       var_1F0 = (var_160 + var_B4.Fields.Item("Person").Value)
  loc_1AF72C0:       var_9C = CInt(var_160)
  loc_1AF72D7:       var_86 = (var_86 + 1)
  loc_1AF72DD:     Else
  loc_1AF72E0:       var_150 = CVar(CLng(3)) 'Long
  loc_1AF7314:       If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1AF731D:         var_DA = (var_DA + 1)
  loc_1AF7323:         Set var_54C = var_130 
  loc_1AF7332:         var_54C.AddNew var_150, var_160
  loc_1AF734A:         var_194 = CVar(Proc_6_52_EAD4F4(CStr(var_DA), 3, var_DA, 1, var_150, var_86)) 'String
  loc_1AF7357:         var_54C.Collect = "SNo"
  loc_1AF7381:         var_194 = CVar(var_B4.Fields.Item("GuestName")) 'Address
  loc_1AF739E:         var_1F0 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(var_194, var_194, var_9C, var_21C), &H32, var_194)) 'String
  loc_1AF73AB:         var_54C.Collect = "GuestName"
  loc_1AF7450:         var_26C = IIf((var_B4.Fields.Item("BirthDate").Value <> vbNullString), DateDiff("yyyy", CVar(var_B4.Fields.Item("BirthDate")), CDate(CDate(Date)), 1, 1), 0)
  loc_1AF7474:         var_54C.Collect = "BirthAge"
  loc_1AF74C2:         Proc_6_39_E7C810(var_1F0, CVar(var_B4.Fields.Item("Age")), CVar(Proc_6_52_EAD4F4(CStr(var_26C), 3, var_1F0)))
  loc_1AF74E6:         var_54C.Collect = "Age"
  loc_1AF7536:         var_1F0 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Nationality")), CVar(Proc_6_52_EAD4F4(CStr(var_1F0), 3, var_1F0))), &H19)) 'String
  loc_1AF7543:         var_54C.Collect = "Nationality"
  loc_1AF7592:         var_1F0 = CVar(Proc_6_45_EAD428(CStr(var_B4.Fields.Item("RoomNo").Value), 5, var_1F0)) 'String
  loc_1AF759F:         var_54C.Collect = "RoomNo"
  loc_1AF75EE:         var_1F0 = CVar(Proc_6_52_EAD4F4(CStr(var_B4.Fields.Item("RoomRate").Value), 8, var_1F0)) 'String
  loc_1AF75FB:         var_54C.Collect = "RoomRate"
  loc_1AF765E:         var_54C.Collect = "ChkInDate"
  loc_1AF76A8:         var_1F0 = CVar(Proc_6_45_EAD428(CStr(var_B4.Fields.Item("ChkInTime").Value), 5, Format(CVar(var_B4.Fields.Item("ChkInDate")), "DD/MM/YYYY"), 1)) 'String
  loc_1AF76B5:         var_54C.Collect = "ChkInTime"
  loc_1AF7718:         var_54C.Collect = "ChkOutDate"
  loc_1AF7762:         var_1F0 = CVar(Proc_6_45_EAD428(CStr(var_B4.Fields.Item("ChkOutTime").Value), 5, Format(CVar(var_B4.Fields.Item("ChkOutDate")), "DD/MM/YYYY"), 1, 1)) 'String
  loc_1AF776F:         var_54C.Collect = "ChkOutTime"
  loc_1AF77CA:         var_1F0 = CVar(var_B4.Fields.Item("ChkOutDate")) 'Address
  loc_1AF785A:         var_27C = IIf((DateDiff("D", CVar(var_B4.Fields.Item("ChkInDate")), var_1F0, 1, 1) = 0), 1, DateDiff("D", CVar(var_B4.Fields.Item("ChkInDate")), CVar(var_B4.Fields.Item("ChkOutDate")), 1, 1))
  loc_1AF787E:         var_54C.Collect = "StPeriod"
  loc_1AF78AF:         var_194 = CVar((var_118 + var_E4)) 'Double
  loc_1AF78B6:         Proc_6_39_E7C810(var_1F0, CVar(var_B4.Fields.Item("ChkInDate")), CVar(Proc_6_52_EAD4F4(CStr(var_27C), 3, var_1F0, var_1F0)), 1)
  loc_1AF78FA:         var_54C.Collect = "TotalTax"
  loc_1AF7948:         var_1F0 = CVar(Proc_6_52_EAD4F4(CStr(var_B4.Fields.Item("Person").Value), 5, CVar(Proc_6_52_EAD4F4(CStr(Format(var_1F0, "0.00")), 8, 1, 1)))) 'String
  loc_1AF7955:         var_54C.Collect = "Person"
  loc_1AF7978:         var_194 = CVar(Proc_6_52_EAD4F4(var_11C, 8, var_1F0)) 'String
  loc_1AF7985:         var_54C.Collect = "BillNo"
  loc_1AF79C8:         var_20C = Format(CVar(var_B4.Fields.Item("ChkOutDate")), "DD/MM/YYYY")
  loc_1AF79DA:         var_54C.Collect = "Billdate"
  loc_1AF7A05:         var_1E0 = var_B4.Fields.Item("Person")
  loc_1AF7A0D:         var_194 = var_1E0.Value
  loc_1AF7A21:         var_284 = var_B4.Fields
  loc_1AF7A29:         var_288 = var_284.Item("Person")
  loc_1AF7A31:         var_22C = CVar(var_288) 'Address
  loc_1AF7A47:         var_20C = (var_194 = 0) 'Variant
  loc_1AF7A7E:         var_27C = IIf((var_E4 > CDbl(0)), (CVar(var_E4) / IIf(var_20C, 1, var_22C)), 0)
  loc_1AF7AB5:         var_2DC = CVar(Proc_6_52_EAD4F4(CStr(Format(var_27C, "0.00")), 8, 1, 1, var_20C, 1)) 'String
  loc_1AF7AC2:         var_54C.Collect = "LTPerOcc"
  loc_1AF7AF1:         var_150 = var_E4
  loc_1AF7AF9:         Proc_6_39_E7C810(var_194, var_150, var_2DC, 1)
  loc_1AF7B08:         var_160 = "0.00"
  loc_1AF7B30:         var_21C = CVar(Proc_6_52_EAD4F4(CStr(Format(var_194, var_160)), 8, 1, 1)) 'String
  loc_1AF7B3D:         var_54C.Collect = "LTTotal"
  loc_1AF7B5B:         var_54C.Update var_150, var_160
  loc_1AF7B62:         Set var_54C = Nothing 
  loc_1AF7B66:       End If
  loc_1AF7B66:     End If
  loc_1AF7B6D:     var_A4 = (var_A4 + var_E4)
  loc_1AF7B73:     var_150 = CVar(CLng(3)) 'Long
  loc_1AF7B78:     var_170 = 1
  loc_1AF7B85:     Set var_184 = Me.FGrid
  loc_1AF7B8B:     var_194 = var_184.TextMatrix)
  loc_1AF7BA7:     If (CStr(var_194) = "Yes") Then
  loc_1AF7BB1:       If (var_E4 > CDbl(0)) Then
  loc_1AF7BBB:         var_AC = (var_AC + var_EC)
  loc_1AF7BC1:       Else
  loc_1AF7BC8:         var_AC = (var_AC + var_118)
  loc_1AF7BCB:       End If
  loc_1AF7BCE:     Else
  loc_1AF7BD5:       If (var_E4 <> CDbl(0)) Then
  loc_1AF7BDF:         var_AC = (var_AC + var_EC)
  loc_1AF7BE2:       End If
  loc_1AF7BE2:       ' Referenced from: 1AF6363
  loc_1AF7BE2:     End If
  loc_1AF7BE5:     var_B4.MoveNext
  loc_1AF7BEA:     GoTo loc_1AF43F8
  loc_1AF7BED:   End If
  loc_1AF7C01:   var_198 = "Select Sum(BillAmOUNt) from Paycharge where Paycode in ('" & MemVar_1F92070
  loc_1AF7C08:   var_1F0 = CVar(var_198 & "LT') and SettleDate between ") 'String
  loc_1AF7C0E:   var_150 = var_D0
  loc_1AF7C16:   Proc_6_7_F25D88(var_194, var_150, var_1F0, var_31C, -1, var_184, var_AC, var_AC)
  loc_1AF7C1E:   var_20C = var_AC & var_194 
  loc_1AF7C22:   var_160 = " and "
  loc_1AF7C27:   var_21C = var_20C & var_160 
  loc_1AF7C2E:   var_170 = var_D8
  loc_1AF7C36:   Proc_6_7_F25D88(var_22C, var_170, var_21C, var_170, var_150)
  loc_1AF7C5A:   var_26C = var_A4 & var_22C & " and Docid Not in (Select Docid from Paycharge where Paycode in ('" & CVar(MemVar_1F92070) & "LT') and SettleDate between " 
  loc_1AF7C69:   Proc_6_7_F25D88(var_27C, var_D0, var_26C, var_21C)
  loc_1AF7C89:   Proc_6_7_F25D88(var_2DC, var_D8, var_194 & var_27C & " and ")
  loc_1AF7CA8:   unk_5407B4.Execute CStr(var_1F0 & var_2DC & " and AmtDr=0)"), var_118, 
  loc_1AF7CB3:   Set var_134 = var_184
  loc_1AF7CE3: End If
  loc_1AF7CE9: global_84 = "LuxuryTax"
  loc_1AF7CF3: Call 0.Method_arg_50 (var_198)
  loc_1AF7D10: global_80 = CStr(Ucase(CVar(var_198)))
  loc_1AF7D45: Set var_184 = var_130 
  loc_1AF7D4C: CreateFieldDefFile(var_184, MemVar_1F920B4 & "\" & global_84 & ".ttx")
  loc_1AF7D77: var_198 = MemVar_1F920B4 & "\"
  loc_1AF7D91: Call 0.Method_arg_1C (var_198 & global_84 & ".RPT", var_150)
  loc_1AF7D9C: MemVar_1F921E4 = var_184
  loc_1AF7DC5: Call 0.Method_arg_64 (var_184, CVar(var_184), var_160)
  loc_1AF7DCD: Call 0.Method_arg_2C (var_170, var_184)
  loc_1AF7DDB: Call 0.Method_arg_150 (&HFF)
  loc_1AF7DF1: Call 0.Method_arg_90 (var_184, var_280)
  loc_1AF7DF9: Call 0.Method_arg_24 (var_9A)
  loc_1AF7E05: For var_550 =  To CInt(var_280): 1 = var_550 'Integer
  loc_1AF7E1E:   Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AF7E26:   Call 0.Method_arg_20 (var_1E0)
  loc_1AF7E2E:   Call 0.Method_arg_30 (var_198)
  loc_1AF7E36:   var_194 = CVar(var_198) 'String
  loc_1AF7E44:   var_560 = Ucase(var_194) 'Variant
  loc_1AF7E5D:   If (var_560 = "FORMONTH") Then
  loc_1AF7E6B:     Proc_6_17_EAA2B0(var_194)
  loc_1AF7E87:     Call 0.Method_arg_90 (var_184, CLng(var_9A), var_1E0)
  loc_1AF7E8F:     Call 0.Method_arg_20 (CStr(var_194))
  loc_1AF7E97:     Call 0.Method_arg_38 (var_F0)
  loc_1AF7EAC:   Else
  loc_1AF7EB7:     If (var_560 = "TOTAMT") Then
  loc_1AF7ED2:       Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AF7EDA:       Call 0.Method_arg_20 (var_1E0)
  loc_1AF7EE2:       Call 0.Method_arg_38 (CStr(var_AC))
  loc_1AF7EF4:     Else
  loc_1AF7EFF:       If (var_560 = "TOTLT") Then
  loc_1AF7F1A:         Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AF7F22:         Call 0.Method_arg_20 (var_1E0)
  loc_1AF7F2A:         Call 0.Method_arg_38 (CStr(var_A4))
  loc_1AF7F3C:       Else
  loc_1AF7F47:         If (var_560 = "TITLE") Then
  loc_1AF7F6E:           Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AF7F76:           Call 0.Method_arg_20 (var_1E0)
  loc_1AF7F7E:           Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_1AF7F94:         Else
  loc_1AF7F9F:           If (var_560 = "PRINTDATE") Then
  loc_1AF7FCF:             Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AF7FD7:             Call 0.Method_arg_20 (var_1E0)
  loc_1AF7FDF:             Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F920EC) & "'"))
  loc_1AF7FF8:           Else
  loc_1AF8003:             If (var_560 = "SUMMARYYN") Then
  loc_1AF801B:               Set var_184 = Me.FGrid
  loc_1AF802C:               var_1F0 = CVar(CStr(var_184.TextMatrix))) 'String
  loc_1AF8032:               Proc_6_17_EAA2B0(var_20C, var_1F0)
  loc_1AF804E:               Call 0.Method_arg_90 (var_1E0, CLng(var_9A), var_284)
  loc_1AF8056:               Call 0.Method_arg_20 (CStr(var_20C), 1)
  loc_1AF805E:               Call 0.Method_arg_38 (CVar(CLng(2)))
  loc_1AF807B:             Else
  loc_1AF8086:               If (var_560 = "WT_TOTAMT") Then
  loc_1AF80A1:                 Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AF80A9:                 Call 0.Method_arg_20 (var_1E0)
  loc_1AF80B1:                 Call 0.Method_arg_38 (CStr(var_108))
  loc_1AF80C3:               Else
  loc_1AF80CE:                 If (var_560 = "WT_LT") Then
  loc_1AF80E9:                   Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AF80F1:                   Call 0.Method_arg_20 (var_1E0)
  loc_1AF80F9:                   Call 0.Method_arg_38 (CStr(var_110))
  loc_1AF810B:                 Else
  loc_1AF8116:                   If (var_560 = "WT_NETAMT") Then
  loc_1AF8122:                     var_198 = CStr((var_108 + var_110))
  loc_1AF8135:                     Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AF813D:                     Call 0.Method_arg_20 (var_1E0)
  loc_1AF8145:                     Call 0.Method_arg_38 (CStr(var_110))
  loc_1AF8157:                   Else
  loc_1AF8162:                     If (var_560 = "W_TOTAMT") Then
  loc_1AF8174:                       var_184 = var_134.Fields
  loc_1AF817C:                       var_1E0 = var_184.Item(0)
  loc_1AF818B:                       Proc_6_39_E7C810(var_1F0)
  loc_1AF81A7:                       Call 0.Method_arg_90 (var_284, CLng(var_9A), var_288)
  loc_1AF81AF:                       Call 0.Method_arg_20 (CStr(var_1F0))
  loc_1AF81B7:                       Call 0.Method_arg_38 (CVar(var_1E0))
  loc_1AF81D2:                     Else
  loc_1AF81DD:                       If (var_560 = "W_LT") Then
  loc_1AF81F8:                         Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AF8200:                         Call 0.Method_arg_20 (var_1E0)
  loc_1AF8208:                         Call 0.Method_arg_38 (CStr(var_100))
  loc_1AF821A:                       Else
  loc_1AF8225:                         If (var_560 = "W_NETAMT") Then
  loc_1AF824E:                           Proc_6_39_E7C810(var_1F0)
  loc_1AF825D:                           var_20C = (var_1F0 + CVar(var_100))
  loc_1AF8275:                           Call 0.Method_arg_90 (var_284, CLng(var_9A), var_288)
  loc_1AF827D:                           Call 0.Method_arg_20 (CStr(var_20C))
  loc_1AF8285:                           Call 0.Method_arg_38 (CVar(var_134.Fields.Item(0)))
  loc_1AF82A2:                         Else
  loc_1AF82AD:                           If (var_560 = "T_TOTAMT") Then
  loc_1AF82C6:                             var_184 = var_134.Fields
  loc_1AF82CE:                             var_1E0 = var_184.Item(0)
  loc_1AF82DD:                             Proc_6_39_E7C810(var_1F0, CVar(var_1E0))
  loc_1AF82E5:                             var_20C = (CVar(var_108) + var_1F0)
  loc_1AF82FD:                             Call 0.Method_arg_90 (var_284, CLng(var_9A))
  loc_1AF8305:                             Call 0.Method_arg_20 (var_288)
  loc_1AF830D:                             Call 0.Method_arg_38 (CStr(var_20C))
  loc_1AF832A:                           Else
  loc_1AF8335:                             If (var_560 = "T_LT") Then
  loc_1AF8341:                               var_198 = CStr((var_110 + var_100))
  loc_1AF8354:                               Call 0.Method_arg_90 (var_184, CLng(var_9A))
  loc_1AF835C:                               Call 0.Method_arg_20 (var_1E0)
  loc_1AF8364:                               Call 0.Method_arg_38 (CStr(var_20C))
  loc_1AF8376:                             Else
  loc_1AF8381:                               If (var_560 = "T_NETAMT") Then
  loc_1AF838B:                                 var_160 = CVar((var_108 + var_110)) 'Double
  loc_1AF83B5:                                 Proc_6_39_E7C810(var_1F0, CVar(var_134.Fields.Item(0)))
  loc_1AF83BD:                                 var_20C = (CVar(var_108) + var_1F0)
  loc_1AF83C8:                                 var_21C = (var_20C + CVar(var_100))
  loc_1AF83E0:                                 Call 0.Method_arg_90 (var_284, CLng(var_9A))
  loc_1AF83E8:                                 Call 0.Method_arg_20 (var_288)
  loc_1AF83F0:                                 Call 0.Method_arg_38 (CStr(var_21C))
  loc_1AF840C:                               End If
  loc_1AF840C:                             End If
  loc_1AF840C:                           End If
  loc_1AF840C:                         End If
  loc_1AF840C:                       End If
  loc_1AF840C:                     End If
  loc_1AF840C:                   End If
  loc_1AF840C:                 End If
  loc_1AF840C:               End If
  loc_1AF840C:             End If
  loc_1AF840C:           End If
  loc_1AF840C:         End If
  loc_1AF840C:       End If
  loc_1AF840C:     End If
  loc_1AF840C:   End If
  loc_1AF840F: Next var_550 'Integer
  loc_1AF8419: Set var_1E0 = Nothing
  loc_1AF8432: Set var_184 = MemVar_1F921E4 
  loc_1AF843E: Proc_6_99_1483714(var_184, 0, global_80)
  loc_1AF8449: MemVar_1F921E4 = var_184
  loc_1AF8459: global_88 = 0
  loc_1AF8461: Set var_134 = Nothing
  loc_1AF8469: Set var_B4 = Nothing
  loc_1AF8471: Set var_12C = Nothing
  loc_1AF8479: Set var_130 = Nothing
  loc_1AF8481: Set var_138 = Nothing
  loc_1AF8489: Set var_BC = Nothing
  loc_1AF8491: Set var_120 = Nothing
  loc_1AF8499: Set var_124 = Nothing
  loc_1AF849C: Exit Sub
  loc_1AF849D: ' Referenced from: 1AF40E8
  loc_1AF849D: Proc_6_60_E62BC4(global_88, &HFF)
  loc_1AF84A7: global_88 = 0
  loc_1AF84AA: Exit Sub
End Sub

Public Sub Proc_66_75_167C5EC
  'Data Table: 540784
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_134 As String
  Dim var_144 As Variant
  Dim var_178 As String
  Dim var_164 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_218 As Variant
  Dim var_238 As Variant
  Dim unk_5407B4 As Connection15
  Dim var_B4 As Recordset15
  Dim var_B8 As Recordset15
  Dim var_CC As Long
  Dim var_D0 As Long
  Dim var_D4 As Long
  Dim var_D8 As Long
  Dim var_B0 As Double
  Dim var_174 As Variant
  Dim var_88 As Long
  Dim var_1B8 As Variant
  Dim var_260 As String
  Dim var_264 As String
  Dim var_2A0 As String
  Dim var_208 As Variant
  Dim var_2C4 As Variant
  Dim var_2D4 As Variant
  Dim var_2E4 As Variant
  Dim var_2F4 As Variant
  Dim var_304 As Variant
  Dim var_318 As Variant
  Dim var_328 As Variant
  Dim var_348 As Variant
  Dim var_358 As Variant
  Dim var_378 As Variant
  Dim var_388 As Variant
  Dim var_3A8 As Variant
  Dim var_3C8 As Variant
  Dim var_3E8 As Variant
  Dim var_408 As Variant
  Dim var_428 As Variant
  Dim var_448 As Variant
  Dim var_468 As Variant
  Dim var_488 As Variant
  Dim var_4A8 As Variant
  loc_167AF28: On Error Goto loc_167C5DB
  loc_167AF2E: var_EC = CVar(CLng(0)) 'Long
  loc_167AF33: var_10C = 1
  loc_167AF81: var_A4 = CStr(Format(CVar("01/" & CStr(Me.FGrid.TextMatrix))), "dd/MMM/yyyy"))
  loc_167AF9B: var_EC = CVar(CLng(0)) 'Long
  loc_167AFAD: Set var_120 = Me.FGrid
  loc_167AFB3: var_130 = var_120.TextMatrix)
  loc_167AFE7: var_174 = DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & CStr(var_130)))))
  loc_167B010: var_A8 = CStr(Format(var_174, "dd/MMM/yyyy"))
  loc_167B03C: Proc_6_7_F25D88(var_130, var_A4, " (ChkInDt Between ", 1, 1, var_A4)
  loc_167B048: var_10C = " and  "
  loc_167B04D: var_164 = "01/" & var_130 & var_10C 
  loc_167B05C: Proc_6_7_F25D88(var_174, var_A8, var_164, 1)
  loc_167B07C: Proc_6_7_F25D88(var_1B8, var_A4, 1 & var_174 & " Or ChkOutDt Between ")
  loc_167B09C: Proc_6_7_F25D88(var_208, var_A8, var_130 & var_1B8 & " and  ")
  loc_167B0B8: global_60 = CStr(var_10C & var_208 & " Or ChkOutDt Is Null)")
  loc_167B0F1: var_134 = "Select DocId,(Adult+Children) As Indian,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_167B0F8: var_178 = CStr(var_10C & var_208 & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' Order By DocId,SNo"
  loc_167B101: unk_5407B4.Execute var_178, var_130, -1
  loc_167B10C: Set var_B8 = var_120
  loc_167B133: var_134 = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_167B13A: var_178 = CStr(var_10C & var_208 & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By DocId,SNo"
  loc_167B143: unk_5407B4.Execute var_178, var_130, -1
  loc_167B14E: Set var_B4 = var_120
  loc_167B187: If ((var_B4.RecordCount <= 0) And (var_B8.RecordCount <= 0)) Then
  loc_167B190:   Call 0.Method_arg_50 (CStr(var_10C & var_208 & " Or ChkOutDt Is Null)"), var_120)
  loc_167B1B1:   MsgBox("** No Records Found to Print **", &H40, CVar(CStr(var_10C & var_208 & " Or ChkOutDt Is Null)")), var_164, var_174)
  loc_167B1C6:   global_88 = 0
  loc_167B1C9:   Exit Sub
  loc_167B1CA: End If
  loc_167B1F8: var_BC = Replace(CStr(Space(&H64)), " ", "-", 1, -1, 0)
  loc_167B22F: var_C0 = Replace(CStr(Space(&H2B)), " ", "-", 1, -1, 0)
  loc_167B266: var_C4 = Replace(CStr(Space(&H64)), " ", "=", 1, -1, 0)
  loc_167B271: Close 1
  loc_167B27A: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_167B283: var_CC = 0
  loc_167B28B: var_D0 = 0
  loc_167B293: var_D4 = 0
  loc_167B29B: var_D8 = 0
  loc_167B2A1: var_DC = vbNullString
  loc_167B2B8: If (var_B8.RecordCount > 0) Then
  loc_167B2BB:   ' Referenced from: 167B712
  loc_167B2CA:   If Not(var_B8.EOF) Then
  loc_167B30D:     If (var_B8.Fields.Item("CheckIn").Value < CDate(CDate(var_A4))) Then
  loc_167B315:       var_B0 = CDate(var_A4)
  loc_167B31B:     Else
  loc_167B35B:       If (var_B8.Fields.Item("CheckIn").Value > CDate(CDate(var_A8))) Then
  loc_167B363:         var_B0 = CDate(var_A8)
  loc_167B369:       Else
  loc_167B395:         var_B0 = CDate(var_B8.Fields.Item("CheckIn").Value)
  loc_167B3A2:       End If
  loc_167B3A2:     End If
  loc_167B3DE:     If CBool(var_B8.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_167B421:       If (var_B8.Fields.Item("CheckOut").Value > CDate(CDate(var_A8))) Then
  loc_167B482:         var_198 = (CVar(var_CC) + (DateDiff("D", var_B0, CDate(CDate(var_A8)), 1, 1) * var_B8.Fields.Item("Indian").Value))
  loc_167B488:         var_CC = CLng(1 & (DateDiff("D", var_B0, CDate(CDate(var_A8)), 1, 1) * var_B8.Fields.Item("Indian").Value))
  loc_167B4A0:       Else
  loc_167B518:         var_198 = (CVar(var_CC) + (DateDiff("D", var_B0, CVar(var_B8.Fields.Item("CheckOut")), 1, 1) * var_B8.Fields.Item("Indian").Value))
  loc_167B51E:         var_CC = CLng(1 & (DateDiff("D", var_B0, CVar(var_B8.Fields.Item("CheckOut")), 1, 1) * var_B8.Fields.Item("Indian").Value))
  loc_167B535:       End If
  loc_167B538:     Else
  loc_167B541:       If (MemVar_1F920EC < CDate(var_A8)) Then
  loc_167B5A0:         var_198 = (CVar(var_CC) + (DateDiff("D", var_B0, CDate(MemVar_1F920EC), 1, 1) * var_B8.Fields.Item("Indian").Value))
  loc_167B5A6:         var_CC = CLng(1 & (DateDiff("D", var_B0, CDate(MemVar_1F920EC), 1, 1) * var_B8.Fields.Item("Indian").Value))
  loc_167B5BE:       Else
  loc_167B61C:         var_198 = (CVar(var_CC) + (DateDiff("D", var_B0, CDate(CDate(var_A8)), 1, 1) * var_B8.Fields.Item("Indian").Value))
  loc_167B622:         var_CC = CLng(1 & (DateDiff("D", var_B0, CDate(CDate(var_A8)), 1, 1) * var_B8.Fields.Item("Indian").Value))
  loc_167B637:       End If
  loc_167B637:     End If
  loc_167B6A7:     var_198 = (var_B8.Fields.Item("CheckIn").Value >= CDate(CDate(var_A4))) And (var_B8.Fields.Item("CheckIn").Value <= CDate(CDate(var_A8)))
  loc_167B6BF:     If CBool(var_198) Then
  loc_167B6F3:       var_144 = (CVar(var_D4) + var_B8.Fields.Item("Indian").Value)
  loc_167B6F9:       var_D4 = CLng(DateDiff("D", var_B0, CDate(CDate(var_A8)), 1, 1))
  loc_167B70A:     End If
  loc_167B70D:     var_B8.MoveNext
  loc_167B712:     GoTo loc_167B2BB
  loc_167B715:   End If
  loc_167B715: End If
  loc_167B718: var_DC = vbNullString
  loc_167B72F: If (var_B4.RecordCount > 0) Then
  loc_167B732:   ' Referenced from: 167BB89
  loc_167B741:   If Not(var_B4.EOF) Then
  loc_167B784:     If (var_B4.Fields.Item("CheckIn").Value < CDate(CDate(var_A4))) Then
  loc_167B78C:       var_B0 = CDate(var_A4)
  loc_167B792:     Else
  loc_167B7D2:       If (var_B4.Fields.Item("CheckIn").Value > CDate(CDate(var_A8))) Then
  loc_167B7DA:         var_B0 = CDate(var_A8)
  loc_167B7E0:       Else
  loc_167B80C:         var_B0 = CDate(var_B4.Fields.Item("CheckIn").Value)
  loc_167B819:       End If
  loc_167B819:     End If
  loc_167B855:     If CBool(var_B4.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_167B898:       If (var_B4.Fields.Item("CheckOut").Value > CDate(CDate(var_A8))) Then
  loc_167B8F9:         var_198 = (CVar(var_D0) + (DateDiff("D", var_B0, CDate(CDate(var_A8)), 1, 1) * var_B4.Fields.Item("Foreigner").Value))
  loc_167B8FF:         var_D0 = CLng(var_198)
  loc_167B917:       Else
  loc_167B98F:         var_198 = (CVar(var_D0) + (DateDiff("D", var_B0, CVar(var_B4.Fields.Item("CheckOut")), 1, 1) * var_B4.Fields.Item("Foreigner").Value))
  loc_167B995:         var_D0 = CLng(var_198)
  loc_167B9AC:       End If
  loc_167B9AF:     Else
  loc_167B9B8:       If (MemVar_1F920EC < CDate(var_A8)) Then
  loc_167BA17:         var_198 = (CVar(var_D0) + (DateDiff("D", var_B0, CDate(MemVar_1F920EC), 1, 1) * var_B4.Fields.Item("Foreigner").Value))
  loc_167BA1D:         var_D0 = CLng(var_198)
  loc_167BA35:       Else
  loc_167BA93:         var_198 = (CVar(var_D0) + (DateDiff("D", var_B0, CDate(CDate(var_A8)), 1, 1) * var_B4.Fields.Item("Foreigner").Value))
  loc_167BA99:         var_D0 = CLng(var_198)
  loc_167BAAE:       End If
  loc_167BAAE:     End If
  loc_167BB1E:     var_198 = (var_B4.Fields.Item("CheckIn").Value >= CDate(CDate(var_A4))) And (var_B4.Fields.Item("CheckIn").Value <= CDate(CDate(var_A8)))
  loc_167BB36:     If CBool(var_198) Then
  loc_167BB6A:       var_144 = (CVar(var_D8) + var_B4.Fields.Item("Foreigner").Value)
  loc_167BB70:       var_D8 = CLng(DateDiff("D", var_B0, CDate(CDate(var_A8)), 1, 1))
  loc_167BB81:     End If
  loc_167BB84:     var_B4.MoveNext
  loc_167BB89:     GoTo loc_167B732
  loc_167BB8C:   End If
  loc_167BB8C: End If
  loc_167BBA1: Print 1, vbNullString
  loc_167BBBC: var_134 = "FORM - 6"
  loc_167BBF2: var_1A8 = Me.FGrid.TextMatrix)
  loc_167BC17: var_260 = Proc_6_45_EAD428("MONTH - " & CStr(var_1A8), &H14, var_1A8, 1, CVar(CLng(0)), var_D0)
  loc_167BC23: var_164 = (Space(&H14) + CVar(Proc_6_45_EAD428(CStr(Space(&H64)), &H14, 0, 1, var_D8, var_D0, var_D0, var_D0)))
  loc_167BC2A: var_198 = (var_B4.Fields.Item("CheckIn").Value + Space(&H14))
  loc_167BC34: var_1C8 = (var_198 + CVar(var_260))
  loc_167BC3A: Print 1, Space(&H14) & CVar(var_260)
  loc_167BC68: Print 1, vbNullString
  loc_167BC73: Print 1, var_C4
  loc_167BCFB: var_264 = Proc_6_45_EAD428("NAME OF THE PROPERITY", &H1C, var_B0, var_B0) & "|" & Proc_6_45_EAD428("CHECKED IN TOURISTS", &H15, var_B0)
  loc_167BD2E: var_2A0 = var_264 & "|" & Proc_6_45_EAD428("TOURISTS SPENT NIGHTS", &H15, var_D4) & "|" & Proc_6_45_EAD428("NO. OF TOTAL", &HD) & "|" & Proc_6_45_EAD428("NO. OF TOTAL", &HD)
  loc_167BD33: Print 1, var_2A0
  loc_167BDD7: var_144 = (Space(&H1C) + "|")
  loc_167BDE1: var_174 = (CVar(Proc_6_45_EAD428(CStr(Space(&H64)), &H14, 0, 1, var_D8, var_D0, var_D0, var_D0)) + CVar(Proc_6_45_EAD428("IN THE MONTH", &H15)))
  loc_167BDEA: var_198 = (Space(&H14) + "|")
  loc_167BDF4: var_1B8 = (var_198 + CVar(Proc_6_45_EAD428("IN THE MONTH", &H15)))
  loc_167BDFD: var_1C8 = (CVar(Proc_6_45_EAD428("IN THE MONTH", &H15)) + "|")
  loc_167BE07: var_208 = (Space(&H1C) & CVar(Proc_6_45_EAD428("IN THE MONTH", &H15)) + CVar(Proc_6_45_EAD428("AVAILABLE", &HD)))
  loc_167BE10: var_218 = (var_208 + "|")
  loc_167BE1A: var_2C4 = ("|" & var_208 + CVar(Proc_6_45_EAD428("AVAILABLE", &HD)))
  loc_167BE20: Print 1, var_2C4
  loc_167BE97: var_144 = (Space(&H1C) + "|")
  loc_167BEA1: var_164 = (CVar(Proc_6_45_EAD428(CStr(Space(&H64)), &H14, 0, 1, var_D8, var_D0, var_D0, var_D0)) + CVar(var_C0))
  loc_167BEAA: var_174 = (CVar(Proc_6_45_EAD428("IN THE MONTH", &H15)) + "|")
  loc_167BEB4: var_1A8 = (Space(&H14) + CVar(Proc_6_45_EAD428("ROOMS IN", &HD)))
  loc_167BEBD: var_1B8 = (CVar(Proc_6_45_EAD428("IN THE MONTH", &H15)) + "|")
  loc_167BEC7: var_1E8 = (CVar(Proc_6_45_EAD428("IN THE MONTH", &H15)) + CVar(Proc_6_45_EAD428("BEDS IN", &HD)))
  loc_167BECD: Print 1, CVar(Proc_6_45_EAD428("AVAILABLE", &HD))
  loc_167BF8C: var_144 = (Space(&H1C) + "|")
  loc_167BF96: var_174 = (CVar(Proc_6_45_EAD428(CStr(Space(&H64)), &H14, 0, 1, var_D8, var_D0, var_D0, var_D0)) + CVar(Proc_6_45_EAD428("INDIAN", &HA)))
  loc_167BF9F: var_198 = (Space(&H14) + "|")
  loc_167BFA9: var_1B8 = (CVar(Proc_6_45_EAD428("ROOMS IN", &HD)) + CVar(Proc_6_45_EAD428("FOREIGNER", &HA)))
  loc_167BFB2: var_1C8 = (CVar("THE MONTH") + "|")
  loc_167BFBC: var_208 = (CVar(Proc_6_45_EAD428("BEDS IN", &HD)) + CVar(Proc_6_45_EAD428("INDIAN", &HA)))
  loc_167BFC5: var_218 = (var_208 + "|")
  loc_167BFCF: var_2C4 = ("|" & var_208 + CVar(Proc_6_45_EAD428("FOREIGNER", &HA)))
  loc_167BFD8: var_2D4 = (var_2C4 + "|")
  loc_167BFE2: var_2F4 = (var_2D4 + CVar(Proc_6_45_EAD428("THE MONTH", &HD)))
  loc_167BFEB: var_304 = (var_2F4 + "|")
  loc_167BFF5: var_328 = (var_304 + CVar(Proc_6_45_EAD428("THE MONTH", &HD)))
  loc_167BFFB: Print 1, var_328
  loc_167C04A: Print 1, var_BC
  loc_167C058: var_130 = Space(&HD)
  loc_167C10E: var_2E4 = ("3" + Space(5))
  loc_167C117: var_2F4 = (CVar(Proc_6_45_EAD428("THE MONTH", &HD)) + "|")
  loc_167C11E: var_318 = (var_2F4 + Space(4))
  loc_167C127: var_328 = (CVar(Proc_6_45_EAD428("THE MONTH", &HD)) + "4")
  loc_167C12E: var_348 = (var_328 + Space(5))
  loc_167C137: var_358 = (var_348 + "|")
  loc_167C13E: var_378 = (var_358 + Space(4))
  loc_167C147: var_388 = (var_378 + "5")
  loc_167C14E: var_3A8 = (var_388 + Space(5))
  loc_167C157: var_3C8 = (var_3A8 + "|")
  loc_167C15E: var_3E8 = (var_3C8 + Space(6))
  loc_167C167: var_408 = (var_3E8 + "6")
  loc_167C16E: var_428 = (var_408 + Space(6))
  loc_167C177: var_448 = (var_428 + "|")
  loc_167C17E: var_468 = (var_448 + Space(6))
  loc_167C187: var_488 = (var_468 + "7")
  loc_167C18E: var_4A8 = (var_488 + Space(6))
  loc_167C19A: var_144 = (var_130 + "1")
  loc_167C1A1: var_174 = (CVar(Proc_6_45_EAD428(CStr(Space(&H64)), &H14, 0, 1, var_D8, var_D0, var_D0, var_D0)) + Space(&HE))
  loc_167C1AA: var_198 = (Space(&H14) + "|")
  loc_167C1B1: var_1B8 = (CVar(Proc_6_45_EAD428("ROOMS IN", &HD)) + Space(4))
  loc_167C1BA: var_1C8 = (CVar("THE MONTH") + "2")
  loc_167C1C1: var_208 = (CVar(Proc_6_45_EAD428("BEDS IN", &HD)) + Space(5))
  loc_167C1CA: var_218 = (var_208 + "|")
  loc_167C1D1: var_2C4 = ("2" & var_208 + Space(4))
  loc_167C1D7: Print 1, var_2C4, var_4A8
  loc_167C233: Print 1, var_C4
  loc_167C254: Proc_6_39_E7C810(var_130, var_D4)
  loc_167C286: Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("ROOMS IN", &HD)), var_D8)
  loc_167C2B8: Proc_6_39_E7C810(var_208, var_CC)
  loc_167C2EA: Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("THE MONTH", &HD)), var_D0)
  loc_167C317: var_174 = (CVar(Proc_6_45_EAD428(MemVar_1F92130, &H1D) & Proc_6_52_EAD4F4(CStr(var_130), 8)) + Space(3))
  loc_167C321: var_1B8 = (Space(&H14) + CVar(Proc_6_52_EAD4F4(CStr(CVar(Proc_6_45_EAD428("ROOMS IN", &HD))), 8)))
  loc_167C328: var_1E8 = (CVar("THE MONTH") + Space(3))
  loc_167C332: var_238 = (Space(5) + CVar(Proc_6_52_EAD4F4(CStr(var_208), 8)))
  loc_167C339: var_2D4 = (Space(4) + Space(3))
  loc_167C343: var_304 = (Space(5) + CVar(Proc_6_52_EAD4F4(CStr(CVar(Proc_6_45_EAD428("THE MONTH", &HD))), 8)))
  loc_167C349: Print 1, Space(4)
  loc_167C3BA: Print 1, Proc_6_45_EAD428(CStr(Trim(MemVar_1F92134)), &H1D)
  loc_167C3F9: Print 1, Proc_6_45_EAD428(CStr(Trim(MemVar_1F92138)), &H1D)
  loc_167C438: Print 1, Proc_6_45_EAD428(CStr(Trim(MemVar_1F9213C)), &H1D)
  loc_167C44F: Print 1, vbNullString
  loc_167C45A: Print 1, vbNullString
  loc_167C465: Print 1, vbNullString
  loc_167C470: Print 1, var_C4
  loc_167C47B: Print 1, vbNullString
  loc_167C486: Print 1, vbNullString
  loc_167C491: Print 1, vbNullString
  loc_167C4AC: var_144 = (Space(&H46) + "Signature:")
  loc_167C4B2: Print 1, Space(3)
  loc_167C4C4: Print 1, vbNullString
  loc_167C4CF: Print 1, vbNullString
  loc_167C4EA: var_144 = (Space(&H46) + "Prop./Manager,")
  loc_167C4F0: Print 1, Space(3)
  loc_167C512: var_144 = (Space(&H46) + "Stamp:")
  loc_167C518: Print 1, Space(3)
  loc_167C52E: var_88 = (var_88 + &H1B)
  loc_167C543: Print 1, Chr(&HC)
  loc_167C54E: Close 1
  loc_167C557: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_167C567: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_167C572: Close 1
  loc_167C57C: If (MemVar_1F923B8 = "Y") Then
  loc_167C598:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_167C5A2: Else
  loc_167C5BB:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_167C5C2: End If
  loc_167C5C7: global_88 = 0
  loc_167C5CF: Set var_B8 = Nothing
  loc_167C5D7: Set var_B4 = Nothing
  loc_167C5DA: Exit Sub
  loc_167C5DB: ' Referenced from: 167AF28
  loc_167C5DB: Proc_6_60_E62BC4(global_88, 0)
  loc_167C5E5: global_88 = 0
  loc_167C5E8: Exit Sub
End Sub

Public Sub Proc_66_76_1555EF0
  'Data Table: 540784
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_118 As String
  Dim var_128 As Variant
  Dim var_15C As String
  Dim var_E0 As Variant
  Dim var_148 As Variant
  Dim var_17C As Variant
  Dim var_B0 As Long
  Dim var_B4 As Long
  Dim var_B8 As Long
  Dim var_BC As Long
  Dim unk_5407B4 As Connection15
  Dim var_A4 As Recordset15
  Dim var_228 As Field20
  Dim var_98 As Double
  Dim var_158 As Variant
  Dim var_22C As Fields15
  Dim var_A0 As Recordset15
  Dim var_238 As Recordset15
  loc_1554EF0: On Error Goto loc_1555EDF
  loc_1554EF6: var_D0 = CVar(CLng(0)) 'Long
  loc_1554EFB: var_F0 = 1
  loc_1554F49: var_8C = CStr(Format(CVar("01/" & CStr(Me.FGrid.TextMatrix))), "dd/MMM/yyyy"))
  loc_1554F63: var_D0 = CVar(CLng(0)) 'Long
  loc_1554F75: Set var_104 = Me.FGrid
  loc_1554F7B: var_114 = var_104.TextMatrix)
  loc_1554FAF: var_158 = DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & CStr(var_114)))))
  loc_1554FD8: var_90 = CStr(Format(var_158, "dd/MMM/yyyy"))
  loc_1555004: Proc_6_7_F25D88(var_114, var_8C, " (ChkInDt Between ", 1, 1, var_8C)
  loc_1555010: var_F0 = " and  "
  loc_1555024: Proc_6_7_F25D88(var_158, var_90, "01/" & var_114 & var_F0, 1)
  loc_1555044: Proc_6_7_F25D88(var_19C, var_8C, 1 & var_158 & " Or ChkOutDt Between ")
  loc_1555064: Proc_6_7_F25D88(var_1EC, var_90, var_114 & var_19C & " and  ")
  loc_1555080: global_60 = CStr(var_F0 & var_1EC & " Or ChkOutDt Is Null)")
  loc_15550A7: var_B0 = 0
  loc_15550AF: var_B4 = 0
  loc_15550B7: var_B8 = 0
  loc_15550BF: var_BC = 0
  loc_15550C5: var_C0 = vbNullString
  loc_15550DF: var_118 = "Select DocId,(Adult+Children) As Indian,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_15550E6: var_15C = CStr(var_F0 & var_1EC & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' Order By DocId,SNo"
  loc_15550EF: unk_5407B4.Execute var_15C, var_114, -1
  loc_15550FA: Set var_A4 = var_104
  loc_1555121: var_118 = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_1555128: var_15C = CStr(var_F0 & var_1EC & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By DocId,SNo"
  loc_1555131: unk_5407B4.Execute var_15C, var_114, -1
  loc_155513C: Set var_A0 = var_104
  loc_1555160: If (var_A4.RecordCount > 0) Then
  loc_1555163:   ' Referenced from: 15555BA
  loc_1555172:   If Not(var_A4.EOF) Then
  loc_15551B5:     If (var_A4.Fields.Item("CheckIn").Value < CDate(CDate(var_8C))) Then
  loc_15551BD:       var_98 = CDate(var_8C)
  loc_15551C3:     Else
  loc_1555203:       If (var_A4.Fields.Item("CheckIn").Value > CDate(CDate(var_90))) Then
  loc_155520B:         var_98 = CDate(var_90)
  loc_1555211:       Else
  loc_155523D:         var_98 = CDate(var_A4.Fields.Item("CheckIn").Value)
  loc_155524A:       End If
  loc_155524A:     End If
  loc_1555286:     If CBool(var_A4.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_15552C9:       If (var_A4.Fields.Item("CheckOut").Value > CDate(CDate(var_90))) Then
  loc_155532A:         var_17C = (CVar(var_B0) + (DateDiff("D", var_98, CDate(CDate(var_90)), 1, 1) * var_A4.Fields.Item("Indian").Value))
  loc_1555330:         var_B0 = CLng(1 & (DateDiff("D", var_98, CDate(CDate(var_90)), 1, 1) * var_A4.Fields.Item("Indian").Value))
  loc_1555348:       Else
  loc_15553C0:         var_17C = (CVar(var_B0) + (DateDiff("D", var_98, CVar(var_A4.Fields.Item("CheckOut")), 1, 1) * var_A4.Fields.Item("Indian").Value))
  loc_15553C6:         var_B0 = CLng(1 & (DateDiff("D", var_98, CVar(var_A4.Fields.Item("CheckOut")), 1, 1) * var_A4.Fields.Item("Indian").Value))
  loc_15553DD:       End If
  loc_15553E0:     Else
  loc_15553E9:       If (MemVar_1F920EC < CDate(var_90)) Then
  loc_1555448:         var_17C = (CVar(var_B0) + (DateDiff("D", var_98, CDate(MemVar_1F920EC), 1, 1) * var_A4.Fields.Item("Indian").Value))
  loc_155544E:         var_B0 = CLng(1 & (DateDiff("D", var_98, CDate(MemVar_1F920EC), 1, 1) * var_A4.Fields.Item("Indian").Value))
  loc_1555466:       Else
  loc_15554C4:         var_17C = (CVar(var_B0) + (DateDiff("D", var_98, CDate(CDate(var_90)), 1, 1) * var_A4.Fields.Item("Indian").Value))
  loc_15554CA:         var_B0 = CLng(1 & (DateDiff("D", var_98, CDate(CDate(var_90)), 1, 1) * var_A4.Fields.Item("Indian").Value))
  loc_15554DF:       End If
  loc_15554DF:     End If
  loc_155554F:     var_17C = (var_A4.Fields.Item("CheckIn").Value >= CDate(CDate(var_8C))) And (var_A4.Fields.Item("CheckIn").Value <= CDate(CDate(var_90)))
  loc_1555567:     If CBool(var_17C) Then
  loc_155559B:       var_128 = (CVar(var_B8) + var_A4.Fields.Item("Indian").Value)
  loc_15555A1:       var_B8 = CLng(DateDiff("D", var_98, CDate(CDate(var_90)), 1, 1))
  loc_15555B2:     End If
  loc_15555B5:     var_A4.MoveNext
  loc_15555BA:     GoTo loc_1555163
  loc_15555BD:   End If
  loc_15555BD: End If
  loc_15555C0: var_C0 = vbNullString
  loc_15555D7: If (var_A0.RecordCount > 0) Then
  loc_15555DA:   ' Referenced from: 1555A31
  loc_15555E9:   If Not(var_A0.EOF) Then
  loc_155562C:     If (var_A0.Fields.Item("CheckIn").Value < CDate(CDate(var_8C))) Then
  loc_1555634:       var_98 = CDate(var_8C)
  loc_155563A:     Else
  loc_155567A:       If (var_A0.Fields.Item("CheckIn").Value > CDate(CDate(var_90))) Then
  loc_1555682:         var_98 = CDate(var_90)
  loc_1555688:       Else
  loc_15556B4:         var_98 = CDate(var_A0.Fields.Item("CheckIn").Value)
  loc_15556C1:       End If
  loc_15556C1:     End If
  loc_15556FD:     If CBool(var_A0.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_1555740:       If (var_A0.Fields.Item("CheckOut").Value > CDate(CDate(var_90))) Then
  loc_15557A1:         var_17C = (CVar(var_B4) + (DateDiff("D", var_98, CDate(CDate(var_90)), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_15557A7:         var_B4 = CLng(var_17C)
  loc_15557BF:       Else
  loc_1555837:         var_17C = (CVar(var_B4) + (DateDiff("D", var_98, CVar(var_A0.Fields.Item("CheckOut")), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_155583D:         var_B4 = CLng(var_17C)
  loc_1555854:       End If
  loc_1555857:     Else
  loc_1555860:       If (MemVar_1F920EC < CDate(var_90)) Then
  loc_15558BF:         var_17C = (CVar(var_B4) + (DateDiff("D", var_98, CDate(MemVar_1F920EC), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_15558C5:         var_B4 = CLng(var_17C)
  loc_15558DD:       Else
  loc_155593B:         var_17C = (CVar(var_B4) + (DateDiff("D", var_98, CDate(CDate(var_90)), 1, 1) * var_A0.Fields.Item("Foreigner").Value))
  loc_1555941:         var_B4 = CLng(var_17C)
  loc_1555956:       End If
  loc_1555956:     End If
  loc_1555994:     var_F0 = "CheckIn"
  loc_15559A0:     var_22C = var_A0.Fields
  loc_15559B0:     var_148 = var_22C.Item(var_F0).Value
  loc_15559C2:     var_158 = (var_148 <= CDate(CDate(var_90)))
  loc_15559DE:     If CBool((var_A0.Fields.Item("CheckIn").Value >= CDate(CDate(var_8C))) And var_158) Then
  loc_15559E4:       var_E0 = CVar(var_BC) 'Long
  loc_15559FA:       var_104 = var_A0.Fields
  loc_1555A02:       var_228 = var_104.Item("Foreigner")
  loc_1555A12:       var_128 = (var_E0 + var_228.Value)
  loc_1555A18:       var_BC = CLng(DateDiff("D", var_98, CDate(CDate(var_90)), 1, 1))
  loc_1555A29:     End If
  loc_1555A2C:     var_A0.MoveNext
  loc_1555A31:     GoTo loc_15555DA
  loc_1555A34:   End If
  loc_1555A34: End If
  loc_1555A3A: var_220 = var_A0.RecordCount
  loc_1555A5D: If ((var_220 <= 0) And (var_A4.RecordCount <= 0)) Then
  loc_1555A66:   Call 0.Method_arg_50 (CStr(var_F0 & var_1EC & " Or ChkOutDt Is Null)"), var_BC, var_B4, var_B4, var_B4, var_B4)
  loc_1555A7C:   var_D0 = "** No Records Found to Print **"
  loc_1555A87:   MsgBox(var_D0, &H40, CVar(CStr(var_F0 & var_1EC & " Or ChkOutDt Is Null)")), var_148, var_158)
  loc_1555A9C:   global_88 = 0
  loc_1555A9F:   Exit Sub
  loc_1555AA0: End If
  loc_1555AAD: Call Proc_66_53_F2175C(New)
  loc_1555AB5: Set var_A8 = var_104
  loc_1555ABB: Set var_238 = var_A8 
  loc_1555ACA: var_238.AddNew var_D0, var_E0
  loc_1555AD4: var_114 = CVar(CStr(var_B8)) 'String
  loc_1555AE1: var_238.Collect = "IndianGuest"
  loc_1555AEE: var_114 = CVar(CStr(var_BC)) 'String
  loc_1555AFB: var_238.Collect = "ForeignerGuest"
  loc_1555B08: var_114 = CVar(CStr(var_B0)) 'String
  loc_1555B15: var_238.Collect = "IndianNight"
  loc_1555B26: var_D0 = "ForeignerNight"
  loc_1555B2F: var_238.Collect = var_D0
  loc_1555B42: var_238.Update var_D0, var_E0
  loc_1555B49: Set var_238 = Nothing 
  loc_1555B53: global_84 = "Form-6"
  loc_1555B5D: Call 0.Method_arg_50 (CStr(var_F0 & var_1EC & " Or ChkOutDt Is Null)"), CVar(CStr(var_B4)), CVar(CStr(var_B4)), CVar(CStr(var_B4)), CVar(CStr(var_B4)), var_104, global_88)
  loc_1555B7A: global_80 = CStr(Ucase(CVar(CStr(var_F0 & var_1EC & " Or ChkOutDt Is Null)"))))
  loc_1555BAF: Set var_104 = var_A8 
  loc_1555BB6: CreateFieldDefFile(var_104, MemVar_1F920B4 & "\" & global_84 & ".ttx", &HFF, var_98, var_98)
  loc_1555BE1: var_118 = MemVar_1F920B4 & "\"
  loc_1555BFB: Call 0.Method_arg_1C (var_118 & global_84 & ".RPT", var_D0, var_104, var_98)
  loc_1555C06: MemVar_1F921E4 = var_104
  loc_1555C2F: Call 0.Method_arg_64 (var_104, CVar(var_104), var_E0, var_F0)
  loc_1555C37: Call 0.Method_arg_2C (var_B8, var_B0)
  loc_1555C45: Call 0.Method_arg_150 (var_B0)
  loc_1555C5E: Call 0.Method_arg_90 (var_104, var_220)
  loc_1555C66: Call 0.Method_arg_24 (var_9C)
  loc_1555C71: For var_248 =  To var_220: 1 = var_248 'Long
  loc_1555C89:   Call 0.Method_arg_90 (var_104, var_9C)
  loc_1555C91:   Call 0.Method_arg_20 (var_228)
  loc_1555C99:   Call 0.Method_arg_30 (var_118)
  loc_1555CAF:   var_258 = Ucase(CVar(var_118)) 'Variant
  loc_1555CC8:   If (var_258 = "FROMDATE") Then
  loc_1555D11:     Call 0.Method_arg_90 (var_228, var_9C, var_22C)
  loc_1555D19:     Call 0.Method_arg_20 (1 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(0)))
  loc_1555D21:     Call 0.Method_arg_38 ("'")
  loc_1555D3E:   Else
  loc_1555D49:     If (var_258 = "TODATE") Then
  loc_1555D64:       Set var_104 = Me.FGrid
  loc_1555D92:       Call 0.Method_arg_90 (var_228, var_9C, var_22C)
  loc_1555D9A:       Call 0.Method_arg_20 (1 & CStr(var_104.TextMatrix)) & "'", CVar(CLng(1)))
  loc_1555DA2:       Call 0.Method_arg_38 ("'")
  loc_1555DBF:     Else
  loc_1555DCA:       If (var_258 = "TITLE") Then
  loc_1555DF0:         Call 0.Method_arg_90 (var_104, var_9C)
  loc_1555DF8:         Call 0.Method_arg_20 (var_228)
  loc_1555E00:         Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_1555E16:       Else
  loc_1555E21:         If (var_258 = "PRINTDATE") Then
  loc_1555E50:           Call 0.Method_arg_90 (var_104, var_9C)
  loc_1555E58:           Call 0.Method_arg_20 (var_228)
  loc_1555E60:           Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F920EC) & "'"))
  loc_1555E76:         End If
  loc_1555E76:       End If
  loc_1555E76:     End If
  loc_1555E76:   End If
  loc_1555E79: Next var_248 'Long
  loc_1555E83: Set var_228 = Nothing
  loc_1555E9C: Set var_104 = MemVar_1F921E4 
  loc_1555EA8: Proc_6_99_1483714(var_104, 0, global_80)
  loc_1555EB3: MemVar_1F921E4 = var_104
  loc_1555EC3: global_88 = 0
  loc_1555ECB: Set var_A8 = Nothing
  loc_1555ED3: Set var_A4 = Nothing
  loc_1555EDB: Set var_A0 = Nothing
  loc_1555EDE: Exit Sub
  loc_1555EDF: ' Referenced from: 1554EF0
  loc_1555EDF: Proc_6_60_E62BC4(global_88, &HFF)
  loc_1555EE9: global_88 = 0
  loc_1555EEC: Exit Sub
End Sub

Public Sub Proc_66_77_EF728C(arg_C, arg_10) 'EF728C
  'Data Table: 540784
  Dim var_98 As Variant
  Dim var_B8 As Long
  Dim var_CC As MSHFlexGrid
  Dim var_86 As Integer
  loc_EF71C4: var_98 = CVar(CLng(arg_C)) 'Long
  loc_EF71C9: var_B8 = 1
  loc_EF71F8: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_EF721B:   MsgBox(CVar(arg_10 & " Should not be Blank."), &H40, "Validation Check", var_100, var_110)
  loc_EF722F:   Set var_CC = Me.FGrid
  loc_EF7253:   Me.FGrid.Row = CVar(CLng(arg_C))
  loc_EF726E:   Me.FGrid.Col = 1
  loc_EF7278:   var_86 = 0
  loc_EF727E: Else
  loc_EF7280:   var_86 = &HFF
  loc_EF7283: End If
  loc_EF7283: Proc_66_77_EF728C = var_86
End Sub

Public Sub Proc_66_78_106A178(arg_C) '106A178
  'Data Table: 540784
  Dim var_8C As Recordset15
  loc_1069EE9: Set var_8C = arg_C 
  loc_1069F11: var_8C.Fields.Append "DocId", &HC8, &H15
  loc_1069F3D: var_8C.Fields.Append "VDate", &HC8, &HB
  loc_1069F69: var_8C.Fields.Append "Person", &HC8, &H19
  loc_1069F95: var_8C.Fields.Append "FolioNo", &HC8, 5
  loc_1069FC1: var_8C.Fields.Append "ChkInDate", &HC8, &HB
  loc_1069FED: var_8C.Fields.Append "ChkInTime", &HC8, 5
  loc_106A019: var_8C.Fields.Append "ChkOutDate", &HC8, &HB
  loc_106A045: var_8C.Fields.Append "ChkOutTime", &HC8, 5
  loc_106A071: var_8C.Fields.Append "RoomRate", &HC8, 7
  loc_106A09D: var_8C.Fields.Append "RoomNo", &HC8, 5
  loc_106A0C9: var_8C.Fields.Append "GuestName", &HC8, &H19
  loc_106A0F5: var_8C.Fields.Append "BirthDate", &HC8, &HB
  loc_106A121: var_8C.Fields.Append "Nationality", &HC8, &HB
  loc_106A131: var_8C.CursorType = 3
  loc_106A13E: var_8C.LockType = 3
  loc_106A15D: var_8C.Open var_A0, var_B0, -1
  loc_106A164: Set var_8C = Nothing 
  loc_106A16B: Set var_88 = arg_C 
  loc_106A16F: Proc_66_78_106A178 = -1
End Sub

Public Sub Proc_66_79_19E1AE0
  'Data Table: 540784
  Dim var_17C As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_18C As Variant
  Dim var_19C As Variant
  Dim var_1AC As Variant
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_210 As Variant
  Dim var_250 As Variant
  Dim var_294 As Variant
  Dim var_398 As Variant
  Dim var_39C As String
  Dim var_3A0 As String
  Dim unk_5407B4 As Connection15
  Dim var_AC As Long
  Dim var_B0 As Long
  Dim var_B4 As Long
  Dim var_B8 As Long
  Dim var_98 As Recordset15
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_A8 As Double
  Dim var_94 As Recordset15
  Dim var_3B8 As Recordset15
  Dim var_C8 As Long
  Dim var_CC As Long
  Dim var_C0 As Recordset15
  Dim var_16C As Variant
  Dim var_3C0 As String
  Dim var_3C4 As Recordset15
  Dim var_3C8 As Recordset15
  Dim var_DC As Recordset15
  Dim var_E0 As Recordset15
  Dim var_F4 As Long
  Dim var_F8 As Long
  Dim var_E8 As Long
  Dim var_EC As Long
  Dim var_D4 As Long
  Dim var_3CC As Recordset15
  Dim var_3D0 As Recordset15
  Dim var_9C As Recordset15
  Dim var_D0 As Recordset15
  Dim var_E4 As Recordset15
  Dim var_3D2 As Integer
  Dim var_3DC As Recordset15
  Dim var_3E8 As Double
  loc_19DE95D: Call Proc_66_56_1002FA8(New)
  loc_19DE965: Set var_90 = var_FC
  loc_19DE968: On Error Goto loc_19E1AD2
  loc_19DE96B: var_17C = " (ChkInDt Between "
  loc_19DE985: Set var_FC = Me.FGrid
  loc_19DE98B: var_14C = Me.FGrid.TextMatrix)
  loc_19DE99C: Proc_6_7_F25D88(var_16C, CVar(CStr(var_14C)), 1)
  loc_19DE9DD: Proc_6_7_F25D88(var_220, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_19DEA1E: Proc_6_7_F25D88(var_2C4, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_19DEA5F: Proc_6_7_F25D88(var_368, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_19DEA70: var_398 = CVar(CLng(0)) & var_16C & " And " & var_220 & " Or ChkOutDt Between " & var_2C4 & " And " & var_368 & " Or ChkOutDt Is Null)" 
  loc_19DEA7B: global_60 = CStr(var_398)
  loc_19DEACF: var_39C = "Select DocId,(Adult+Children) As Indian,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_19DEADF: unk_5407B4.Execute CStr(var_398) & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' Order By DocId,SNo", var_14C, -1
  loc_19DEAEA: Set var_98 = var_FC
  loc_19DEB11: var_39C = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & global_60
  loc_19DEB21: unk_5407B4.Execute CStr(var_398) & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By DocId,SNo", var_14C, -1
  loc_19DEB2C: Set var_94 = var_FC
  loc_19DEB41: var_AC = 0
  loc_19DEB49: var_B0 = 0
  loc_19DEB51: var_B4 = 0
  loc_19DEB59: var_B8 = 0
  loc_19DEB5F: var_BC = vbNullString
  loc_19DEB76: If (var_98.RecordCount > 0) Then
  loc_19DEB79:   ' Referenced from: 19DF1AE
  loc_19DEB88:   If Not(var_98.EOF) Then
  loc_19DEBAD:     var_15C = var_98.Fields.Item("CheckIn").Value
  loc_19DEBB8:     var_11C = CVar(CLng(0)) 'Long
  loc_19DEBFA:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19DEC00:       var_10C = CVar(CLng(0)) 'Long
  loc_19DEC05:       var_12C = 1
  loc_19DEC28:       var_A8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_19DEC37:     Else
  loc_19DEC59:       var_15C = var_98.Fields.Item("CheckIn").Value
  loc_19DEC64:       var_11C = CVar(CLng(1)) 'Long
  loc_19DECA6:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19DECAC:         var_10C = CVar(CLng(1)) 'Long
  loc_19DECB1:         var_12C = 1
  loc_19DECD4:         var_A8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_19DECE3:       Else
  loc_19DED0F:         var_A8 = CDate(var_98.Fields.Item("CheckIn").Value)
  loc_19DED1C:       End If
  loc_19DED1C:     End If
  loc_19DED58:     If CBool(var_98.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_19DED7D:       var_15C = var_98.Fields.Item("CheckOut").Value
  loc_19DED88:       var_11C = CVar(CLng(1)) 'Long
  loc_19DEDCA:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19DEDD0:         var_10C = CVar(CLng(1)) 'Long
  loc_19DEDD5:         var_12C = 1
  loc_19DEE56:         var_200 = (CVar(var_AC) + (DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_98.Fields.Item("Indian").Value))
  loc_19DEE5C:         var_AC = CLng(Me.FGrid.TextMatrix))
  loc_19DEE7B:       Else
  loc_19DEEF3:         var_1AC = (CVar(var_AC) + (DateDiff("D", var_A8, CVar(var_98.Fields.Item("CheckOut")), 1, 1) * var_98.Fields.Item("Indian").Value))
  loc_19DEEF9:         var_AC = CLng((DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_98.Fields.Item("Indian").Value))
  loc_19DEF10:       End If
  loc_19DEF13:     Else
  loc_19DEF16:       var_10C = CVar(CLng(1)) 'Long
  loc_19DEF1B:       var_12C = 1
  loc_19DEF50:       If (MemVar_1F920EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_19DEFAF:         var_1AC = (CVar(var_AC) + (DateDiff("D", var_A8, CDate(MemVar_1F920EC), 1, 1) * var_98.Fields.Item("Indian").Value))
  loc_19DEFB5:         var_AC = CLng((DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_98.Fields.Item("Indian").Value))
  loc_19DEFCD:       Else
  loc_19DEFD0:         var_10C = CVar(CLng(1)) 'Long
  loc_19DEFD5:         var_12C = 1
  loc_19DF056:         var_200 = (CVar(var_AC) + (DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_98.Fields.Item("Indian").Value))
  loc_19DF05C:         var_AC = CLng(Me.FGrid.TextMatrix))
  loc_19DF078:       End If
  loc_19DF078:     End If
  loc_19DF09A:     var_15C = var_98.Fields.Item("CheckIn").Value
  loc_19DF0A5:     var_11C = CVar(CLng(0)) 'Long
  loc_19DF0AA:     var_13C = 1
  loc_19DF0CD:     var_19C = CDate(CDate(CStr(Me.FGrid.TextMatrix))))
  loc_19DF0F8:     var_1AC = var_98.Fields.Item("CheckIn").Value
  loc_19DF15B:     If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))) Then
  loc_19DF18F:       var_15C = (CVar(var_B4) + var_98.Fields.Item("Indian").Value)
  loc_19DF195:       var_B4 = CLng(var_15C)
  loc_19DF1A6:     End If
  loc_19DF1A9:     var_98.MoveNext
  loc_19DF1AE:     GoTo loc_19DEB79
  loc_19DF1B1:   End If
  loc_19DF1B1: End If
  loc_19DF1C5: If (var_94.RecordCount > 0) Then
  loc_19DF1C8:   ' Referenced from: 19DF7FD
  loc_19DF1D7:   If Not(var_94.EOF) Then
  loc_19DF1FC:     var_15C = var_94.Fields.Item("CheckIn").Value
  loc_19DF207:     var_11C = CVar(CLng(0)) 'Long
  loc_19DF249:     If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19DF24F:       var_10C = CVar(CLng(0)) 'Long
  loc_19DF254:       var_12C = 1
  loc_19DF277:       var_A8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_19DF286:     Else
  loc_19DF2A8:       var_15C = var_94.Fields.Item("CheckIn").Value
  loc_19DF2B3:       var_11C = CVar(CLng(1)) 'Long
  loc_19DF2F5:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19DF2FB:         var_10C = CVar(CLng(1)) 'Long
  loc_19DF300:         var_12C = 1
  loc_19DF323:         var_A8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_19DF332:       Else
  loc_19DF35E:         var_A8 = CDate(var_94.Fields.Item("CheckIn").Value)
  loc_19DF36B:       End If
  loc_19DF36B:     End If
  loc_19DF3A7:     If CBool(var_94.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_19DF3CC:       var_15C = var_94.Fields.Item("CheckOut").Value
  loc_19DF3D7:       var_11C = CVar(CLng(1)) 'Long
  loc_19DF419:       If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19DF41F:         var_10C = CVar(CLng(1)) 'Long
  loc_19DF424:         var_12C = 1
  loc_19DF4A5:         var_200 = (CVar(var_B0) + (DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_94.Fields.Item("Foreigner").Value))
  loc_19DF4AB:         var_B0 = CLng((1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_19DF4CA:       Else
  loc_19DF542:         var_1AC = (CVar(var_B0) + (DateDiff("D", var_A8, CVar(var_94.Fields.Item("CheckOut")), 1, 1) * var_94.Fields.Item("Foreigner").Value))
  loc_19DF548:         var_B0 = CLng((DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_94.Fields.Item("Foreigner").Value))
  loc_19DF55F:       End If
  loc_19DF562:     Else
  loc_19DF565:       var_10C = CVar(CLng(1)) 'Long
  loc_19DF56A:       var_12C = 1
  loc_19DF59F:       If (MemVar_1F920EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_19DF5FE:         var_1AC = (CVar(var_B0) + (DateDiff("D", var_A8, CDate(MemVar_1F920EC), 1, 1) * var_94.Fields.Item("Foreigner").Value))
  loc_19DF604:         var_B0 = CLng((DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_94.Fields.Item("Foreigner").Value))
  loc_19DF61C:       Else
  loc_19DF61F:         var_10C = CVar(CLng(1)) 'Long
  loc_19DF624:         var_12C = 1
  loc_19DF66F:         var_16C = DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1)
  loc_19DF6A5:         var_200 = (CVar(var_B0) + (var_16C * var_94.Fields.Item("Foreigner").Value))
  loc_19DF6AB:         var_B0 = CLng((1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix))))))
  loc_19DF6C7:       End If
  loc_19DF6C7:     End If
  loc_19DF6E9:     var_15C = var_94.Fields.Item("CheckIn").Value
  loc_19DF6F4:     var_11C = CVar(CLng(0)) 'Long
  loc_19DF6F9:     var_13C = 1
  loc_19DF71C:     var_19C = CDate(CDate(CStr(Me.FGrid.TextMatrix))))
  loc_19DF747:     var_1AC = var_94.Fields.Item("CheckIn").Value
  loc_19DF7AA:     If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))) Then
  loc_19DF7B0:       var_11C = CVar(var_B8) 'Long
  loc_19DF7BA:       var_10C = "Foreigner"
  loc_19DF7C6:       var_FC = var_94.Fields
  loc_19DF7DE:       var_15C = (var_11C + var_FC.Item(var_10C).Value)
  loc_19DF7E4:       var_B8 = CLng(var_15C)
  loc_19DF7F5:     End If
  loc_19DF7F8:     var_94.MoveNext
  loc_19DF7FD:     GoTo loc_19DF1C8
  loc_19DF800:   End If
  loc_19DF800: End If
  loc_19DF80D: Call Proc_66_51_F22548(New)
  loc_19DF815: Set var_9C = var_FC
  loc_19DF841: If ((var_94.RecordCount > 0) Or (var_98.RecordCount > 0)) Then
  loc_19DF847:   Set var_3B8 = var_9C 
  loc_19DF856:   var_3B8.AddNew var_10C, var_11C
  loc_19DF860:   var_14C = CVar(CStr(var_B4)) 'String
  loc_19DF86D:   var_3B8.Collect = "IndianGuest"
  loc_19DF87A:   var_14C = CVar(CStr(var_B8)) 'String
  loc_19DF887:   var_3B8.Collect = "ForeignerGuest"
  loc_19DF894:   var_14C = CVar(CStr(var_AC)) 'String
  loc_19DF8A1:   var_3B8.Collect = "IndianNight"
  loc_19DF8AE:   var_14C = CVar(CStr(var_B0)) 'String
  loc_19DF8B2:   var_10C = "ForeignerNight"
  loc_19DF8BB:   var_3B8.Collect = var_10C
  loc_19DF8CE:   var_3B8.Update var_10C, var_11C
  loc_19DF8D5:   Set var_3B8 = Nothing 
  loc_19DF8D9: End If
  loc_19DF8F3: Set var_FC = Me.FGrid
  loc_19DF8F9: var_14C = var_FC.TextMatrix)
  loc_19DF90A: Proc_6_7_F25D88(var_16C, CVar(CStr(var_14C)), 1, CVar(CLng(0)), " (ChkInDt Between ", var_14C, var_14C, var_14C)
  loc_19DF916: var_19C = " And "
  loc_19DF91B: var_1AC = var_14C & var_16C & var_19C 
  loc_19DF94B: Proc_6_7_F25D88(var_220, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), var_1AC, var_FC)
  loc_19DF98C: Proc_6_7_F25D88(var_2C4, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), var_B8 & var_220 & " Or ChkOutDt Between ")
  loc_19DF9CD: Proc_6_7_F25D88(var_368, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), var_1AC & var_2C4 & " And ")
  loc_19DFA3D: var_39C = "Select DocId,(Adult+Children) As Foreigner,ChkInDt As CheckIn,ChkOutDt as CheckOut,Country.Name As Country From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Left Join City On City.CityCode=GF.City Left Join Country On City.Country=Country.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet Where " & CStr((var_13C >= var_19C) & var_368 & " Or ChkOutDt Is Null)")
  loc_19DFA44: var_3A0 = CStr((var_13C >= var_19C) & var_368 & " Or ChkOutDt Is Null)") & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type='Foreign' Order By Country.Name,DocId,SNo"
  loc_19DFA4D: unk_5407B4.Execute var_3A0, var_14C, -1
  loc_19DFA58: Set var_C0 = var_FC
  loc_19DFA75: Call Proc_66_50_EFAAF4(New)
  loc_19DFA7D: Set var_D0 = var_FC
  loc_19DFA94: If (Me.Recordset15.RecordCount > 0) Then
  loc_19DFA9C:   var_B0 = 0
  loc_19DFAAA:   var_C4 = vbNullString
  loc_19DFAC0:   var_BC = vbNullString
  loc_19DFAEB:   var_C4 = Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Country")), 0, 0, 0, var_B0)
  loc_19DFAF4:   ' Referenced from: 19E03F7
  loc_19DFB03:   If Not(var_C0.EOF) Then
  loc_19DFB06:     ' Referenced from: 19E030A
  loc_19DFB18:     var_FC = var_C0.Fields
  loc_19DFB3F:     If (var_11C = Proc_6_38_E68A98(CVar(var_FC.Item("Country")), var_C4, var_FC, var_FC)) Then
  loc_19DFB45:       var_11C = CVar(CLng(0)) 'Long
  loc_19DFB5D:       var_15C = Me.FGrid.TextMatrix)
  loc_19DFBB5:       If (CDate(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("CheckIn")), var_15C, 1)) < CDate(CStr(var_15C))) Then
  loc_19DFBBB:         var_10C = CVar(CLng(0)) 'Long
  loc_19DFBC0:         var_12C = 1
  loc_19DFBE3:         var_A8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_19DFBF2:       Else
  loc_19DFC0D:         var_15C = Me.FGrid.TextMatrix)
  loc_19DFC65:         If (CDate(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("CheckIn")), var_15C, 1, CVar(CLng(1)), var_A8)) > CDate(CStr(var_15C))) Then
  loc_19DFC6B:           var_10C = CVar(CLng(1)) 'Long
  loc_19DFC70:           var_12C = 1
  loc_19DFC93:           var_A8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_19DFCA2:         Else
  loc_19DFCCE:           var_A8 = CDate(var_C0.Fields.Item("CheckIn").Value)
  loc_19DFCDB:         End If
  loc_19DFCDB:       End If
  loc_19DFD17:       If CBool(var_C0.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_19DFD35:         var_15C = Me.FGrid.TextMatrix)
  loc_19DFD8D:         If (CDate(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("CheckOut")), var_15C, 1, CVar(CLng(1)), var_A8, var_A8, var_12C)) > CDate(CStr(var_15C))) Then
  loc_19DFD93:           var_10C = CVar(CLng(1)) 'Long
  loc_19DFD98:           var_12C = 1
  loc_19DFDAB:           var_14C = Me.FGrid.TextMatrix)
  loc_19DFE11:           Proc_6_39_E7C810(var_1AC, CVar(var_C0.Fields.Item("Foreigner")), DateDiff("D", var_A8, CDate(CDate(CStr(var_14C))), 1, 1), CVar(var_B0), var_14C, var_12C, var_10C)
  loc_19DFE1D:           var_210 = (var_12C + (var_10C * var_1AC))
  loc_19DFE23:           var_B0 = CLng(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_19DFE42:         Else
  loc_19DFE48:           var_10C = "CheckOut"
  loc_19DFE86:           var_11C = var_A8
  loc_19DFEB8:           var_18C = CVar(var_C0.Fields.Item("Foreigner")) 'Address
  loc_19DFEBF:           Proc_6_39_E7C810(var_1AC, var_18C, DateDiff("D", var_11C, CDate(CDate(var_C0.Fields.Item(var_10C).Value)), 1, 1), CVar(var_B0), var_B0)
  loc_19DFECB:           var_210 = (var_11C + (var_10C * var_1AC))
  loc_19DFED1:           var_B0 = CLng(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_19DFEEC:         End If
  loc_19DFEEF:       Else
  loc_19DFEF2:         var_10C = CVar(CLng(1)) 'Long
  loc_19DFEF7:         var_12C = 1
  loc_19DFF2C:         If (MemVar_1F920EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_19DFF43:           var_14C = CDate(MemVar_1F920EC)
  loc_19DFF4A:           var_10C = var_A8
  loc_19DFF60:           var_12C = "Foreigner"
  loc_19DFF83:           Proc_6_39_E7C810(var_18C, CVar(var_C0.Fields.Item(var_12C)), DateDiff("D", var_10C, var_14C, 1, 1), CVar(var_B0), var_14C)
  loc_19DFF8B:           var_1AC = (var_12C * var_18C)
  loc_19DFF8F:           var_200 = (var_10C + var_1AC)
  loc_19DFF95:           var_B0 = CLng((var_10C * var_1AC))
  loc_19DFFAB:         Else
  loc_19DFFC6:           var_14C = Me.FGrid.TextMatrix)
  loc_19E002C:           Proc_6_39_E7C810(var_1AC, CVar(var_C0.Fields.Item("Foreigner")), DateDiff("D", var_A8, CDate(CDate(CStr(var_14C))), 1, 1), CVar(var_B0), var_14C, 1)
  loc_19E0038:           var_210 = (var_B0 + (CVar(CLng(1)) * var_1AC))
  loc_19E003E:           var_B0 = CLng(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_19E005A:         End If
  loc_19E005A:       End If
  loc_19E0075:       var_15C = Me.FGrid.TextMatrix)
  loc_19E009C:       var_18C = Me.FGrid.TextMatrix)
  loc_19E00FE:       var_16C = CVar(var_C0.Fields.Item("CheckIn")) 'Address
  loc_19E0107:       var_3C0 = Proc_6_38_E68A98(var_16C, (CDate(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("CheckIn")), var_18C, 1, CVar(CLng(1)), var_15C, 1)) >= CDate(CStr(var_15C))), CVar(CLng(0)), var_B0)
  loc_19E0138:       If (var_B0 And (CDate(var_3C0) <= CDate(CStr(var_18C)))) Then
  loc_19E0174:         var_B8 = CLng((CDbl(var_B8) + CDbl(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Foreigner")), var_15C))))
  loc_19E0184:       End If
  loc_19E0187:       var_C0.MoveNext
  loc_19E019D:       If (var_C0.EOF = &HFF) Then
  loc_19E01A0:         GoTo loc_19E030D
  loc_19E01A3:       End If
  loc_19E01C2:       var_14C = CVar(var_C0.Fields.Item("Country")) 'Address
  loc_19E01DC:       If (Proc_6_38_E68A98(var_14C, 0) <> var_C4) Then
  loc_19E01E2:         var_10C = 0
  loc_19E01EA:         Proc_6_39_E7C810(var_14C, var_10C)
  loc_19E01F2:         var_11C = 0
  loc_19E0207:         Proc_6_39_E7C810(var_16C, var_B0)
  loc_19E0226:         If CBool((var_14C > var_11C) Or (var_16C > 0)) Then
  loc_19E022C:           Set var_3C4 = var_D0 
  loc_19E023B:           var_3C4.AddNew var_10C, var_11C
  loc_19E0243:           var_11C = CVar(var_C4) 'String
  loc_19E0250:           var_3C4.Collect = "Country"
  loc_19E0260:           Proc_6_39_E7C810(var_14C, 0)
  loc_19E0272:           var_3C4.Collect = "Guest"
  loc_19E027D:           var_10C = var_B0
  loc_19E0285:           Proc_6_39_E7C810(var_14C, var_10C, var_14C)
  loc_19E028E:           var_11C = "Night"
  loc_19E0297:           var_3C4.Collect = var_11C
  loc_19E02AA:           var_3C4.Update var_10C, var_11C
  loc_19E02B1:           Set var_3C4 = Nothing 
  loc_19E02B5:         End If
  loc_19E02BC:         var_C8 = (var_C8 + 0)
  loc_19E02C6:         var_CC = (var_CC + var_B0)
  loc_19E02CE:         var_B0 = 0
  loc_19E02D6:         var_B8 = 0
  loc_19E02D9:       End If
  loc_19E02F8:       var_14C = CVar(var_C0.Fields.Item("Country")) 'Address
  loc_19E0301:       var_C4 = Proc_6_38_E68A98(var_14C, var_B8, var_B0, 0)
  loc_19E030A:       GoTo loc_19DFB06
  loc_19E030D:       ' Referenced from: 19E01A0
  loc_19E030D:     End If
  loc_19E0310:     var_10C = var_B8
  loc_19E0318:     Proc_6_39_E7C810(var_14C, var_10C, 0)
  loc_19E0320:     var_11C = 0
  loc_19E0335:     Proc_6_39_E7C810(var_16C, var_B0, (var_14C > var_11C))
  loc_19E0354:     If CBool(var_14C Or (var_16C > 0)) Then
  loc_19E035A:       Set var_3C8 = var_D0 
  loc_19E0369:       var_3C8.AddNew var_10C, var_11C
  loc_19E037E:       var_3C8.Collect = "Country"
  loc_19E038E:       Proc_6_39_E7C810(var_14C, var_B8, CVar(var_C4))
  loc_19E03A0:       var_3C8.Collect = "Guest"
  loc_19E03AB:       var_10C = var_B0
  loc_19E03B3:       Proc_6_39_E7C810(var_14C, var_10C, var_14C)
  loc_19E03BC:       var_11C = "Night"
  loc_19E03C5:       var_3C8.Collect = var_11C
  loc_19E03D8:       var_3C8.Update var_10C, var_11C
  loc_19E03DF:       Set var_3C8 = Nothing 
  loc_19E03E3:     End If
  loc_19E03EA:     var_C8 = (var_C8 + var_B8)
  loc_19E03F4:     var_CC = (var_CC + var_B0)
  loc_19E03F7:     GoTo loc_19DFAF4
  loc_19E03FA:   End If
  loc_19E03FA: End If
  loc_19E042B: Proc_6_7_F25D88(var_16C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), " WHERE ChkInDt Between ")
  loc_19E046C: Proc_6_7_F25D88(var_220, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), 0 & var_16C & " And ")
  loc_19E047F: global_60 = CStr(0 & var_220)
  loc_19E04BC: Set var_FC = Me.FGrid
  loc_19E04C2: var_14C = var_FC.TextMatrix)
  loc_19E04CD: var_15C = CVar(CStr(var_14C)) 'String
  loc_19E04D3: Proc_6_7_F25D88(var_16C, var_15C, 1, CVar(CLng(0)))
  loc_19E0514: Proc_6_7_F25D88(var_220, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_19E0555: Proc_6_7_F25D88(var_2C4, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_19E0596: Proc_6_7_F25D88(var_368, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_19E05A7: var_398 = " WHERE (ChkInDt Between " & var_16C & " And " & var_220 & " Or ChkOutDt Between " & var_2C4 & " And " & var_368 & " Or ChkOutDt Is Null)" 
  loc_19E05F9: var_39C = "Select RO.DocId,(Adult+Children) As Tourist,ChkInDt As CheckIn,ChkOutDt as CheckOut,GF.Name,GF.StateName,GF.Type From RoomOccDet RO Left Join GuestProf GF ON RO.GuestProf=GF.Code Inner Join (Select DocId DocId1,Max(Sno) Sno1 From RoomOccDet " & CStr(var_398)
  loc_19E0600: var_3A0 = CStr(0 & var_220) & " Group By DocId)Q On RO.DocId=Q.DocId1 And RO.Sno=Q.Sno1 Where GF.Type<>'Foreign' And IsNull(GF.StateName,'') <>'' Order By GF.StateName,RO.DOCID,SNO"
  loc_19E0609: unk_5407B4.Execute var_3A0, var_14C, -1
  loc_19E0614: Set var_DC = var_FC
  loc_19E0638: If (var_DC.RecordCount > 0) Then
  loc_19E0652:   var_39C = "Select Sum(Adult+Children) AS Indian From RoomOccDet RO Inner Join GuestProf GF ON RO.GuestProf=GF.Code " & global_60
  loc_19E0662:   unk_5407B4.Execute CStr(0 & var_220) & " And IsNull(GF.StateName,'') <>'' And GF.Type<>'Foreign' AND SNO=1", var_14C, -1
  loc_19E066D:   Set var_E0 = var_FC
  loc_19E0691:   If (var_E0.RecordCount > 0) Then
  loc_19E06A3:     var_FC = var_E0.Fields
  loc_19E06B3:     var_14C = CVar(var_FC.Item("Indian")) 'Address
  loc_19E06BA:     Proc_6_39_E7C810(var_15C, var_14C, var_FC, var_FC)
  loc_19E06C4:     var_F4 = CLng(var_15C)
  loc_19E06D4:   Else
  loc_19E06D9:     var_F4 = 0
  loc_19E06DC:   End If
  loc_19E06F3:   var_39C = "Select Sum(Adult+Children) AS Foreigner From RoomOccDet RO Inner Join GuestProf GF ON RO.GuestProf=GF.Code " & global_60
  loc_19E0703:   unk_5407B4.Execute CStr(0 & var_220) & " And IsNull(GF.StateName,'') <>'' And GF.Type='Foreign' AND SNO=1", var_14C, -1
  loc_19E070E:   Set var_C0 = var_FC
  loc_19E0732:   If (var_C0.RecordCount > 0) Then
  loc_19E0744:     var_FC = var_C0.Fields
  loc_19E075B:     Proc_6_39_E7C810(var_15C, CVar(var_FC.Item("Foreigner")), var_FC, var_F4)
  loc_19E0765:     var_F8 = CLng(var_15C)
  loc_19E0775:   Else
  loc_19E077A:     var_F8 = 0
  loc_19E077D:   End If
  loc_19E078A:   Call Proc_66_52_EFAE3C(New)
  loc_19E0792:   Set var_E4 = var_FC
  loc_19E079A:   var_E8 = 0
  loc_19E07A2:   var_EC = 0
  loc_19E07AA:   var_C8 = 0
  loc_19E07B2:   var_D4 = 0
  loc_19E07B8:   var_BC = vbNullString
  loc_19E07E6:   var_F0 = CStr(Me.Recordset15.Fields.Item("StateName").Value)
  loc_19E07F3:   ' Referenced from: 19E10B2
  loc_19E0802:   If Not(var_DC.EOF) Then
  loc_19E0805:     ' Referenced from: 19E0FDB
  loc_19E0842:     If (CVar(var_F0) = var_DC.Fields.Item("StateName").Value) Then
  loc_19E0867:       var_15C = var_DC.Fields.Item("CheckIn").Value
  loc_19E0872:       var_11C = CVar(CLng(0)) 'Long
  loc_19E08B4:       If (1 < CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19E08BA:         var_10C = CVar(CLng(0)) 'Long
  loc_19E08BF:         var_12C = 1
  loc_19E08E2:         var_A8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_19E08F1:       Else
  loc_19E0913:         var_15C = var_DC.Fields.Item("CheckIn").Value
  loc_19E091E:         var_11C = CVar(CLng(1)) 'Long
  loc_19E0960:         If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19E0966:           var_10C = CVar(CLng(1)) 'Long
  loc_19E096B:           var_12C = 1
  loc_19E098E:           var_A8 = CDate(CStr(Me.FGrid.TextMatrix)))
  loc_19E099D:         Else
  loc_19E09C9:           var_A8 = CDate(var_DC.Fields.Item("CheckIn").Value)
  loc_19E09D6:         End If
  loc_19E09D6:       End If
  loc_19E0A12:       If CBool(var_DC.Fields.Item("CheckOut").Value <> vbNullString) Then
  loc_19E0A37:         var_15C = var_DC.Fields.Item("CheckOut").Value
  loc_19E0A42:         var_11C = CVar(CLng(1)) 'Long
  loc_19E0A84:         If (1 > CDate(CDate(CStr(Me.FGrid.TextMatrix))))) Then
  loc_19E0A8A:           var_10C = CVar(CLng(1)) 'Long
  loc_19E0A8F:           var_12C = 1
  loc_19E0B10:           var_200 = (CVar(var_E8) + (DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_DC.Fields.Item("Tourist").Value))
  loc_19E0B16:           var_E8 = CLng(Me.FGrid.TextMatrix))
  loc_19E0B35:         Else
  loc_19E0BAD:           var_1AC = (CVar(var_E8) + (DateDiff("D", var_A8, CVar(var_DC.Fields.Item("CheckOut")), 1, 1) * var_DC.Fields.Item("Tourist").Value))
  loc_19E0BB3:           var_E8 = CLng((DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_DC.Fields.Item("Tourist").Value))
  loc_19E0BCA:         End If
  loc_19E0BCD:       Else
  loc_19E0BD0:         var_10C = CVar(CLng(1)) 'Long
  loc_19E0BD5:         var_12C = 1
  loc_19E0C0A:         If (MemVar_1F920EC < CDate(CStr(Me.FGrid.TextMatrix)))) Then
  loc_19E0C69:           var_1AC = (CVar(var_E8) + (DateDiff("D", var_A8, CDate(MemVar_1F920EC), 1, 1) * var_DC.Fields.Item("Tourist").Value))
  loc_19E0C6F:           var_E8 = CLng((DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1) * var_DC.Fields.Item("Tourist").Value))
  loc_19E0C87:         Else
  loc_19E0C8A:           var_10C = CVar(CLng(1)) 'Long
  loc_19E0C8F:           var_12C = 1
  loc_19E0CDA:           var_16C = DateDiff("D", var_A8, CDate(CDate(CStr(Me.FGrid.TextMatrix)))), 1, 1)
  loc_19E0D10:           var_200 = (CVar(var_E8) + (var_16C * var_DC.Fields.Item("Tourist").Value))
  loc_19E0D16:           var_E8 = CLng(Me.FGrid.TextMatrix))
  loc_19E0D32:         End If
  loc_19E0D32:       End If
  loc_19E0D54:       var_15C = var_DC.Fields.Item("CheckIn").Value
  loc_19E0D5F:       var_11C = CVar(CLng(0)) 'Long
  loc_19E0D64:       var_13C = 1
  loc_19E0D71:       Set var_294 = Me.FGrid
  loc_19E0D87:       var_19C = CDate(CDate(CStr(var_294.TextMatrix))))
  loc_19E0DB2:       var_1AC = var_DC.Fields.Item("CheckIn").Value
  loc_19E0E15:       If CBool(CVar(CLng(1)) And (1 <= CDate(CDate(CStr(Me.FGrid.TextMatrix)))))) Then
  loc_19E0E49:         var_15C = (CVar(var_EC) + var_DC.Fields.Item("Tourist").Value)
  loc_19E0E4F:         var_EC = CLng(var_15C)
  loc_19E0E60:       End If
  loc_19E0E63:       var_DC.MoveNext
  loc_19E0E79:       If (var_DC.EOF = &HFF) Then
  loc_19E0E7C:         GoTo loc_19E0FDE
  loc_19E0E7F:       End If
  loc_19E0EA1:       var_14C = var_DC.Fields.Item("StateName").Value
  loc_19E0EAC:       var_11C = CVar(var_F0) 'String
  loc_19E0EBC:       If CBool(var_14C <> var_11C) Then
  loc_19E0EC6:         var_D4 = (var_D4 + var_E8)
  loc_19E0ECC:         var_10C = var_EC
  loc_19E0ED4:         Proc_6_39_E7C810(var_14C, var_10C, var_D4, var_EC, var_1AC, (var_13C >= var_19C), var_11C)
  loc_19E0EDC:         var_11C = 0
  loc_19E0EF1:         Proc_6_39_E7C810(var_16C, var_E8, (var_14C > var_11C), (var_14C > var_11C), var_E8)
  loc_19E0F10:         If CBool(var_14C Or (var_16C > 0)) Then
  loc_19E0F16:           Set var_3CC = var_E4 
  loc_19E0F25:           var_3CC.AddNew var_10C, var_11C
  loc_19E0F3A:           var_3CC.Collect = "State"
  loc_19E0F44:           var_14C = CVar(CStr(var_EC)) 'String
  loc_19E0F51:           var_3CC.Collect = "Guest"
  loc_19E0F5E:           var_14C = CVar(CStr(var_E8)) 'String
  loc_19E0F62:           var_10C = "Night"
  loc_19E0F6B:           var_3CC.Collect = var_10C
  loc_19E0F7E:           var_3CC.Update var_10C, CVar(var_F0)
  loc_19E0F85:           Set var_3CC = Nothing 
  loc_19E0F89:         End If
  loc_19E0F90:         var_C8 = (var_C8 + var_EC)
  loc_19E0F98:         var_EC = 0
  loc_19E0FA0:         var_E8 = 0
  loc_19E0FA3:       End If
  loc_19E0FC5:       var_14C = var_DC.Fields.Item("StateName").Value
  loc_19E0FCE:       var_F0 = CStr(var_14C)
  loc_19E0FDB:       GoTo loc_19E0805
  loc_19E0FDE:       ' Referenced from: 19E0E7C
  loc_19E0FDE:     End If
  loc_19E0FE5:     var_D4 = (var_D4 + var_E8)
  loc_19E0FEB:     var_10C = var_EC
  loc_19E0FF3:     Proc_6_39_E7C810(var_14C, var_10C, var_D4, var_E8, var_EC, var_C8, var_14C)
  loc_19E0FFB:     var_11C = 0
  loc_19E1008:     var_12C = var_E8
  loc_19E1010:     Proc_6_39_E7C810(var_16C, var_12C, (var_14C > var_11C), var_14C, var_11C)
  loc_19E102F:     If CBool(var_12C Or (var_16C > 0)) Then
  loc_19E1035:       Set var_3D0 = var_E4 
  loc_19E1044:       var_3D0.AddNew var_10C, var_11C
  loc_19E104C:       var_11C = CVar(var_F0) 'String
  loc_19E1059:       var_3D0.Collect = "State"
  loc_19E1063:       var_14C = CVar(CStr(var_EC)) 'String
  loc_19E1070:       var_3D0.Collect = "Guest"
  loc_19E107D:       var_14C = CVar(CStr(var_E8)) 'String
  loc_19E1081:       var_10C = "Night"
  loc_19E108A:       var_3D0.Collect = var_10C
  loc_19E109D:       var_3D0.Update var_10C, var_11C
  loc_19E10A4:       Set var_3D0 = Nothing 
  loc_19E10A8:     End If
  loc_19E10AF:     var_C8 = (var_C8 + var_EC)
  loc_19E10B2:     GoTo loc_19E07F3
  loc_19E10B5:   End If
  loc_19E10B5: End If
  loc_19E10C9: If (var_9C.RecordCount > 0) Then
  loc_19E10CF:   var_9C.MoveFirst
  loc_19E10D4: End If
  loc_19E10E8: If (var_D0.RecordCount > 0) Then
  loc_19E10EE:   var_D0.MoveFirst
  loc_19E10F3: End If
  loc_19E1107: If (var_E4.RecordCount > 0) Then
  loc_19E110D:   var_E4.MoveFirst
  loc_19E1112: End If
  loc_19E112F: If (var_9C.RecordCount > var_D0.RecordCount) Then
  loc_19E1141:   var_3D2 = CInt(var_9C.RecordCount)
  loc_19E1147: Else
  loc_19E1156:   var_3D2 = CInt(var_D0.RecordCount)
  loc_19E1159: End If
  loc_19E116C: If (CLng(var_3D2) > var_E4.RecordCount) Then
  loc_19E1172:   var_3D2 = var_3D2
  loc_19E1178: Else
  loc_19E117E:   var_3A4 = var_E4.RecordCount
  loc_19E1187:   var_3D2 = CInt(var_3A4)
  loc_19E118A: End If
  loc_19E1192: For var_3D8 = 1 To var_3D2: var_3D4 = var_3D8 'Integer
  loc_19E119B:   Set var_3DC = var_90 
  loc_19E11AA:   var_3DC.AddNew var_10C, var_11C
  loc_19E11AF:   var_11C = vbNullString
  loc_19E11BE:   var_3DC.Collect = "IndianGuestForm1"
  loc_19E11C3:   var_11C = vbNullString
  loc_19E11D2:   var_3DC.Collect = "ForeignerGuestForm1"
  loc_19E11D7:   var_11C = vbNullString
  loc_19E11E6:   var_3DC.Collect = "IndianNightForm1"
  loc_19E11EB:   var_11C = vbNullString
  loc_19E11FA:   var_3DC.Collect = "ForeignerNightForm1"
  loc_19E11FF:   var_11C = vbNullString
  loc_19E120E:   var_3DC.Collect = "CountryForm2"
  loc_19E1213:   var_11C = vbNullString
  loc_19E1222:   var_3DC.Collect = "GuestForm2"
  loc_19E1227:   var_11C = vbNullString
  loc_19E1236:   var_3DC.Collect = "NightForm2"
  loc_19E123B:   var_11C = vbNullString
  loc_19E124A:   var_3DC.Collect = "StateForm5"
  loc_19E124F:   var_11C = vbNullString
  loc_19E125E:   var_3DC.Collect = "GuestForm5"
  loc_19E1272:   var_3DC.Collect = "NightForm5"
  loc_19E1286:   If Not(var_9C.EOF) Then
  loc_19E12B1:     var_15C = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("IndianGuest")), vbNullString, vbNullString, vbNullString, vbNullString, vbNullString, vbNullString)) 'String
  loc_19E12B5:     var_11C = "IndianGuestForm1"
  loc_19E12BE:     var_3DC.Collect = var_11C
  loc_19E12F5:     var_15C = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("ForeignerGuest")), var_15C, var_11C, var_11C)) 'String
  loc_19E12F9:     var_11C = "ForeignerGuestForm1"
  loc_19E1302:     var_3DC.Collect = var_11C
  loc_19E1339:     var_15C = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("IndianNight")), var_15C, var_11C)) 'String
  loc_19E133D:     var_11C = "IndianNightForm1"
  loc_19E1346:     var_3DC.Collect = var_11C
  loc_19E137D:     var_15C = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("ForeignerNight")), var_15C, var_11C)) 'String
  loc_19E138A:     var_3DC.Collect = "ForeignerNightForm1"
  loc_19E139C:     var_9C.MoveNext
  loc_19E13A1:   End If
  loc_19E13B0:   If Not(var_D0.EOF) Then
  loc_19E13DB:     var_15C = CVar(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("Country")), var_15C)) 'String
  loc_19E13E8:     var_3DC.Collect = "CountryForm2"
  loc_19E141F:     var_15C = CVar(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("Guest")), var_15C)) 'String
  loc_19E142C:     var_3DC.Collect = "GuestForm2"
  loc_19E1463:     var_15C = CVar(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("Night")), var_15C)) 'String
  loc_19E1470:     var_3DC.Collect = "NightForm2"
  loc_19E1482:     var_D0.MoveNext
  loc_19E1487:   End If
  loc_19E1496:   If Not(var_E4.EOF) Then
  loc_19E14C1:     var_15C = CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("State")), var_15C)) 'String
  loc_19E14CE:     var_3DC.Collect = "StateForm5"
  loc_19E1505:     var_15C = CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Guest")), var_15C)) 'String
  loc_19E1512:     var_3DC.Collect = "GuestForm5"
  loc_19E1524:     var_10C = "Night"
  loc_19E1549:     var_15C = CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item(var_10C)), var_15C)) 'String
  loc_19E154D:     var_11C = "NightForm5"
  loc_19E1556:     var_3DC.Collect = var_11C
  loc_19E1568:     var_E4.MoveNext
  loc_19E156D:   End If
  loc_19E1578:   var_3DC.Update var_10C, var_11C
  loc_19E157F:   Set var_3DC = Nothing 
  loc_19E1586: Next var_3D8 'Integer
  loc_19E158E: var_10C = CVar(CLng(0)) 'Long
  loc_19E15B1: var_15C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_19E15B7: Proc_6_7_F25D88(var_16C, var_15C)
  loc_19E15E8: Proc_6_7_F25D88(var_220, CVar(CStr(Me.FGrid.TextMatrix))), 1)
  loc_19E161B: var_250 = "Select count(distinct foliono) as Cnt from RoomOccDet where ChkInDT between " & var_16C & " And " & var_220 & " and LogSite_Code='" 
  loc_19E1632: var_39C = CStr(var_250 & CVar(MemVar_1F92078) & "'")
  loc_19E163C: unk_5407B4.Execute var_39C, var_2C4, -1
  loc_19E1676: var_10C = "cnt"
  loc_19E168A: var_1F0 = var_294.Fields.Item(var_10C)
  loc_19E1699: Proc_6_39_E7C810(var_15C, CVar(var_1F0), var_294)
  loc_19E16A2: var_3E8 = CSng(var_15C)
  loc_19E16B5: global_84 = "MonthlyStatisticalReturn"
  loc_19E16BF: Call 0.Method_arg_50 (var_39C, var_3E8, CVar(CLng(1)))
  loc_19E16DC: global_80 = CStr(Ucase(CVar(var_39C)))
  loc_19E1711: Set var_FC = var_90 
  loc_19E1718: CreateFieldDefFile(var_FC, MemVar_1F920B4 & "\" & global_84 & ".ttx", &HFF)
  loc_19E1743: var_39C = MemVar_1F920B4 & "\"
  loc_19E175D: Call 0.Method_arg_1C (var_39C & global_84 & ".RPT", var_10C, var_FC)
  loc_19E1768: MemVar_1F921E4 = var_FC
  loc_19E1783: var_10C = CVar(var_FC) 'Address
  loc_19E1791: Call 0.Method_arg_64 (var_FC, var_10C, var_11C)
  loc_19E1799: Call 0.Method_arg_2C (1, 1)
  loc_19E17A7: Call 0.Method_arg_150 (var_10C)
  loc_19E17C0: Call 0.Method_arg_90 (var_FC, var_3A4)
  loc_19E17C8: Call 0.Method_arg_24 (var_8C)
  loc_19E17D3: For var_3F0 =  To var_3A4: 1 = var_3F0 'Long
  loc_19E17EB:   Call 0.Method_arg_90 (var_FC, var_8C)
  loc_19E17F3:   Call 0.Method_arg_20 (var_1F0)
  loc_19E17FB:   Call 0.Method_arg_30 (var_39C)
  loc_19E1811:   var_400 = Ucase(CVar(var_39C)) 'Variant
  loc_19E182A:   If (var_400 = "FROMDATE") Then
  loc_19E1873:     Call 0.Method_arg_90 (var_1F0, var_8C, var_294)
  loc_19E187B:     Call 0.Method_arg_20 (1 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(0)))
  loc_19E1883:     Call 0.Method_arg_38 ("'")
  loc_19E18A0:   Else
  loc_19E18AB:     If (var_400 = "TODATE") Then
  loc_19E18C6:       Set var_FC = Me.FGrid
  loc_19E18F4:       Call 0.Method_arg_90 (var_1F0, var_8C, var_294)
  loc_19E18FC:       Call 0.Method_arg_20 (1 & CStr(var_FC.TextMatrix)) & "'", CVar(CLng(1)))
  loc_19E1904:       Call 0.Method_arg_38 ("'")
  loc_19E1921:     Else
  loc_19E192C:       If (var_400 = "TITLE") Then
  loc_19E1952:         Call 0.Method_arg_90 (var_FC, var_8C)
  loc_19E195A:         Call 0.Method_arg_20 (var_1F0)
  loc_19E1962:         Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_19E1978:       Else
  loc_19E1983:         If (var_400 = "PRINTDATE") Then
  loc_19E1992:           var_14C = "'" & CDate(MemVar_1F920EC) 
  loc_19E19B2:           Call 0.Method_arg_90 (var_FC, var_8C)
  loc_19E19BA:           Call 0.Method_arg_20 (var_1F0)
  loc_19E19C2:           Call 0.Method_arg_38 (CStr(var_14C & "'"))
  loc_19E19DB:         Else
  loc_19E19E6:           If (var_400 = "NOOFROOMS") Then
  loc_19E19F9:             Proc_6_39_E7C810(var_14C, var_3E8)
  loc_19E1A21:             Call 0.Method_arg_90 (var_FC, var_8C)
  loc_19E1A29:             Call 0.Method_arg_20 (var_1F0)
  loc_19E1A31:             Call 0.Method_arg_38 (CStr("'" & var_14C & "'"))
  loc_19E1A49:           End If
  loc_19E1A49:         End If
  loc_19E1A49:       End If
  loc_19E1A49:     End If
  loc_19E1A49:   End If
  loc_19E1A4C: Next var_3F0 'Long
  loc_19E1A56: Set var_1F0 = Nothing
  loc_19E1A6F: Set var_FC = MemVar_1F921E4 
  loc_19E1A7B: Proc_6_99_1483714(var_FC, 0, global_80)
  loc_19E1A86: MemVar_1F921E4 = var_FC
  loc_19E1A96: global_88 = 0
  loc_19E1A9E: Set var_9C = Nothing
  loc_19E1AA6: Set var_98 = Nothing
  loc_19E1AAE: Set var_94 = Nothing
  loc_19E1AB6: Set var_C0 = Nothing
  loc_19E1ABE: Set var_E4 = Nothing
  loc_19E1AC6: Set var_DC = Nothing
  loc_19E1ACE: Set var_90 = Nothing
  loc_19E1AD1: Exit Sub
  loc_19E1AD2: ' Referenced from: 19DE968
  loc_19E1AD2: Proc_6_60_E62BC4(global_88, &HFF)
  loc_19E1ADC: global_88 = 0
  loc_19E1ADF: Exit Sub
End Sub

Public Sub Proc_66_80_FA39FC(arg_C) 'FA39FC
  'Data Table: 540784
  Dim var_8C As Recordset15
  loc_FA3875: Set var_8C = arg_C 
  loc_FA389D: var_8C.Fields.Append "RoomType", &HC8, &H32
  loc_FA38C9: var_8C.Fields.Append "NoOfRooms", &HC8, &HC
  loc_FA38F5: var_8C.Fields.Append "NoOfBeds", &HC8, &HC
  loc_FA3921: var_8C.Fields.Append "RoomNumbers", &HC8, &HFF
  loc_FA394D: var_8C.Fields.Append "RSingle", &HC8, &HC
  loc_FA3979: var_8C.Fields.Append "RDouble", &HC8, &HC
  loc_FA39A5: var_8C.Fields.Append "RExtra", &HC8, &HC
  loc_FA39B5: var_8C.CursorType = 3
  loc_FA39C2: var_8C.LockType = 3
  loc_FA39E1: var_8C.Open var_A0, var_B0, -1
  loc_FA39E8: Set var_8C = Nothing 
  loc_FA39EF: Set var_88 = arg_C 
  loc_FA39F3: Proc_66_80_FA39FC = -1
End Sub

Public Sub Proc_66_81_14B1C10
  'Data Table: 540784
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_11C As String
  Dim var_12C As Variant
  Dim var_E4 As Variant
  Dim var_14C As Variant
  Dim var_194 As String
  Dim var_19C As String
  Dim var_1B0 As String
  Dim var_1B8 As String
  Dim unk_5407B4 As Connection15
  Dim var_94 As Recordset15
  Dim var_A8 As Integer
  Dim var_1C0 As Field20
  Dim var_A6 As Integer
  Dim var_1CC As Double
  Dim var_B4 As Double
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_1D8 As Recordset15
  Dim var_1DC As Recordset15
  Dim var_15C As Variant
  loc_14B0F77: var_D4 = CVar(CLng(0)) 'Long
  loc_14B0F7C: var_F4 = 1
  loc_14B0FCA: var_88 = CStr(Format(CVar("01/" & CStr(Me.FGrid.TextMatrix))), "dd/MMM/yyyy"))
  loc_14B0FE4: var_D4 = CVar(CLng(0)) 'Long
  loc_14B0FF6: Set var_108 = Me.FGrid
  loc_14B0FFC: var_118 = var_108.TextMatrix)
  loc_14B1030: var_15C = DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & CStr(var_118)))))
  loc_14B1059: var_8C = CStr(Format(var_15C, "dd/MMM/yyyy"))
  loc_14B1085: Proc_6_7_F25D88(var_118, var_88, " And P.SettleDate Between ", 1, 1, var_88)
  loc_14B1091: var_F4 = " And "
  loc_14B1096: var_14C = "01/" & var_118 & var_F4 
  loc_14B10A5: Proc_6_7_F25D88(var_15C, var_8C, var_14C, 1)
  loc_14B10EB: var_11C = "Select RC.Name As RoomType,RM.Code As RoomNo,RM.Multper,SingleRent=Case When RM.MultPer=1 Then Q.RoomCharge Else 0 End,DoubleRent=Case When RM.MultPer=2 Then Q.RoomCharge Else 0 End,Q.ExtraRent From RoomMast RM Left Join RoomCat RC On RC.Code=RM.RoomCat Left Join (Select P.RoomNo,Sum(P.RoomCharge) RoomCharge,Sum(P.ExtraRent) ExtraRent " & "From (Select P.RoomNo,RoomCharge=Case When PayCode<>'"
  loc_14B10F9: var_194 = var_11C & MemVar_1F92078 & "EXTB' Then IsNull(AmtDr,0)-IsNull(AmtCr,0) Else 0 End,ExtraRent=Case When PayCode='"
  loc_14B1107: var_19C = var_194 & MemVar_1F92078 & "EXTB' Then IsNull(AmtDr,0)-IsNull(AmtCr,0) Else 0 End From Paycharge P Where P.RoomType='RO' And P.Paycode In (Select Code From RevMast Where Nature='Room Charge') "
  loc_14B112D: var_1B0 = var_19C & "And IsNull(Bill_No,'')<>'' " & CStr(1 & var_15C & " ") & " And P.LogSite_Code='" & MemVar_1F92078 & "')P Group By P.RoomNo)Q On RM.Code=Q.RoomNo Where RM.Type='RO' And RM.InclCount='Y' And RM.LogSite_Code='"
  loc_14B113B: var_1B8 = var_1B0 & MemVar_1F92078 & "' Order By RC.Name,RM.Multper,Case When IsNumeric(RM.Code)=1 Then Cast(RM.Code As Integer) Else Ascii(RM.Code) End"
  loc_14B1144: unk_5407B4.Execute var_1B8, var_118, -1
  loc_14B114F: Set var_94 = var_108
  loc_14B1179: var_1BC = var_94.RecordCount
  loc_14B1187: If (var_1BC <= 0) Then
  loc_14B1190:   Call 0.Method_arg_50 (var_11C, var_108, var_118)
  loc_14B119E:   var_12C = CVar(var_11C) 'String
  loc_14B11B1:   MsgBox("** No Records Found to Print **", &H40, var_12C, var_14C, var_15C)
  loc_14B11C6:   global_88 = 0
  loc_14B11C9:   Exit Sub
  loc_14B11CA: End If
  loc_14B11D7: Call Proc_66_80_FA39FC(New)
  loc_14B11DF: Set var_98 = var_108
  loc_14B11F1: var_108 = var_94.Fields
  loc_14B120A: var_9C = Proc_6_38_E68A98(CVar(var_108.Item("Roomtype")), var_108, global_88)
  loc_14B1239: Proc_6_39_E7C810(var_12C, CVar(var_94.Fields.Item("MultPer")))
  loc_14B1242: var_A8 = CInt(var_12C)
  loc_14B124F: ' Referenced from: 14B184B
  loc_14B125E: If Not(var_94.EOF) Then
  loc_14B1261:   ' Referenced from: 14B171F
  loc_14B129E:   If (CVar(var_9C) = var_94.Fields.Item("Roomtype").Value) Then
  loc_14B12A7:     var_A6 = (var_A6 + 1)
  loc_14B12AD:     var_A4 = var_A0
  loc_14B12D8:     var_A0 = Proc_6_38_E68A98(CVar(var_94.Fields.Item("RoomNo")), var_A6, var_A8)
  loc_14B12E9:     If (var_AC = vbNullString) Then
  loc_14B12F9:       var_AC = Proc_6_38_E68A98(var_A0, var_F4)
  loc_14B12FC:     End If
  loc_14B1304:     var_1CC = Val(var_A4)
  loc_14B133A:     If ((CDbl(((Val(Proc_6_38_E68A98(var_A0, var_1CC)) - var_1CC) - CDbl(1))) <> CDbl(0)) And (CDbl(Val(var_A4)) <> CDbl(0))) Then
  loc_14B1348:       var_D4 = var_A4
  loc_14B1365:       If (InStr(var_D4, 1, Proc_6_38_E68A98(var_D4, var_AC), 0) = 0) Then
  loc_14B139E:         var_AC = var_AC & " to " & Proc_6_38_E68A98(var_A4) & ", " & Proc_6_38_E68A98(var_A0)
  loc_14B13B1:       Else
  loc_14B13CC:         var_AC = var_AC & ", " & Proc_6_38_E68A98(var_A0)
  loc_14B13D6:       End If
  loc_14B13D6:     End If
  loc_14B1403:     Proc_6_39_E7C810(var_12C, CVar(var_94.Fields.Item("SingleRent")))
  loc_14B140B:     var_14C = (CVar(var_B4) + var_12C)
  loc_14B1410:     var_B4 = CSng(var_14C)
  loc_14B144C:     Proc_6_39_E7C810(var_12C, CVar(var_94.Fields.Item("DoubleRent")))
  loc_14B1454:     var_14C = (CVar(var_BC) + var_12C)
  loc_14B1459:     var_BC = CSng(var_14C)
  loc_14B1495:     Proc_6_39_E7C810(var_12C, CVar(var_94.Fields.Item("ExtraRent")), CVar(var_C4))
  loc_14B149D:     var_14C = (var_BC + var_12C)
  loc_14B14A2:     var_C4 = CSng(var_14C)
  loc_14B14B4:     var_94.MoveNext
  loc_14B14CA:     If (var_94.EOF = &HFF) Then
  loc_14B14CD:       GoTo loc_14B1722
  loc_14B14D0:     End If
  loc_14B14FD:     var_E4 = CVar(var_9C) 'String
  loc_14B1508:     var_F4 = "MultPer"
  loc_14B152B:     Proc_6_39_E7C810(var_15C, CVar(var_94.Fields.Item(var_F4)), (var_94.Fields.Item("Roomtype").Value <> var_E4))
  loc_14B1556:     If CBool(var_C4 Or (var_15C <> CVar(var_A8))) Then
  loc_14B1581:       If (InStr(var_B4, 1, Proc_6_38_E68A98(var_A0, var_AC), 0) = 0) Then
  loc_14B1591:         var_D4 = var_A0
  loc_14B159F:         var_AC = var_AC & " to " & Proc_6_38_E68A98(var_D4)
  loc_14B15A9:       End If
  loc_14B15AC:       Set var_1D8 = var_98 
  loc_14B15BB:       var_1D8.AddNew var_D4, var_E4
  loc_14B15C3:       var_E4 = CVar(var_9C) 'String
  loc_14B15D0:       var_1D8.Collect = "Roomtype"
  loc_14B15DA:       var_118 = CVar(CStr(var_A6)) 'String
  loc_14B15E7:       var_1D8.Collect = "NoOfRooms"
  loc_14B15F4:       var_118 = CVar(CStr(var_A8)) 'String
  loc_14B1601:       var_1D8.Collect = "NoOfBeds"
  loc_14B160C:       var_E4 = CVar(var_AC) 'String
  loc_14B1619:       var_1D8.Collect = "RoomNumbers"
  loc_14B1623:       var_118 = CVar(CStr(var_B4)) 'String
  loc_14B1630:       var_1D8.Collect = "RSingle"
  loc_14B163D:       var_118 = CVar(CStr(var_BC)) 'String
  loc_14B164A:       var_1D8.Collect = "RDouble"
  loc_14B1657:       var_118 = CVar(CStr(var_C4)) 'String
  loc_14B165B:       var_D4 = "RExtra"
  loc_14B1664:       var_1D8.Collect = var_D4
  loc_14B1677:       var_1D8.Update var_D4, var_E4
  loc_14B167E:       Set var_1D8 = Nothing 
  loc_14B1684:       var_A6 = 0
  loc_14B168A:       var_A0 = vbNullString
  loc_14B1690:       var_A4 = vbNullString
  loc_14B1696:       var_AC = vbNullString
  loc_14B169C:       var_B4 = CDbl(0)
  loc_14B16A2:       var_BC = CDbl(0)
  loc_14B16A8:       var_C4 = CDbl(0)
  loc_14B16AB:     End If
  loc_14B16D6:     var_9C = CStr(var_94.Fields.Item("Roomtype").Value)
  loc_14B16FA:     var_1C0 = var_94.Fields.Item("MultPer")
  loc_14B1702:     var_118 = CVar(var_1C0) 'Address
  loc_14B1709:     Proc_6_39_E7C810(var_12C, var_118, var_C4, var_BC, var_B4, var_A6, var_118)
  loc_14B1712:     var_A8 = CInt(var_12C)
  loc_14B171F:     GoTo loc_14B1261
  loc_14B1722:     ' Referenced from: 14B14CD
  loc_14B1722:   End If
  loc_14B1725:   Set var_1DC = var_98 
  loc_14B1751:   If (InStr(var_E4, var_118, Proc_6_38_E68A98(var_A0, var_AC, 1, var_A8, var_118), 0) = 0) Then
  loc_14B175B:     var_11C = var_AC & " to "
  loc_14B1761:     var_D4 = var_A0
  loc_14B176F:     var_AC = var_118 & Proc_6_38_E68A98(var_D4, var_11C, var_118)
  loc_14B1779:   End If
  loc_14B1784:   var_1DC.AddNew var_D4, var_E4
  loc_14B178C:   var_E4 = CVar(var_9C) 'String
  loc_14B1799:   var_1DC.Collect = "Roomtype"
  loc_14B17A3:   var_118 = CVar(CStr(var_A6)) 'String
  loc_14B17B0:   var_1DC.Collect = "NoOfRooms"
  loc_14B17BD:   var_118 = CVar(CStr(var_A8)) 'String
  loc_14B17CA:   var_1DC.Collect = "NoOfBeds"
  loc_14B17D5:   var_E4 = CVar(var_AC) 'String
  loc_14B17E2:   var_1DC.Collect = "RoomNumbers"
  loc_14B17EC:   var_118 = CVar(CStr(var_B4)) 'String
  loc_14B17F9:   var_1DC.Collect = "RSingle"
  loc_14B1806:   var_118 = CVar(CStr(var_BC)) 'String
  loc_14B1813:   var_1DC.Collect = "RDouble"
  loc_14B1820:   var_118 = CVar(CStr(var_C4)) 'String
  loc_14B1824:   var_D4 = "RExtra"
  loc_14B182D:   var_1DC.Collect = var_D4
  loc_14B1840:   var_1DC.Update var_D4, var_E4
  loc_14B1847:   Set var_1DC = Nothing 
  loc_14B184B:   GoTo loc_14B124F
  loc_14B184E: End If
  loc_14B1854: global_84 = "LTFORMII"
  loc_14B185E: Call 0.Method_arg_50 (var_11C, var_118, var_118, var_118, var_E4)
  loc_14B1866: var_118 = CVar(var_11C) 'String
  loc_14B187B: global_80 = CStr(Ucase(var_118))
  loc_14B18B0: Set var_108 = var_98 
  loc_14B18B7: CreateFieldDefFile(var_108, MemVar_1F920B4 & "\" & global_84 & ".ttx", &HFF, var_118)
  loc_14B18E2: var_11C = MemVar_1F920B4 & "\"
  loc_14B18FC: Call 0.Method_arg_1C (var_11C & global_84 & ".RPT", var_D4, var_108)
  loc_14B1907: MemVar_1F921E4 = var_108
  loc_14B1930: Call 0.Method_arg_64 (var_108, CVar(var_108), var_E4, var_F4)
  loc_14B1938: Call 0.Method_arg_2C (var_118, var_E4)
  loc_14B1946: Call 0.Method_arg_150 (var_E4)
  loc_14B195C: Call 0.Method_arg_90 (var_108, var_1BC)
  loc_14B1964: Call 0.Method_arg_24 (var_8E)
  loc_14B1970: For var_1E0 =  To CInt(var_1BC): 1 = var_1E0 'Integer
  loc_14B1989:   Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_14B1991:   Call 0.Method_arg_20 (var_1C0)
  loc_14B1999:   Call 0.Method_arg_30 (var_11C)
  loc_14B19AF:   var_1F0 = Ucase(CVar(var_11C)) 'Variant
  loc_14B19C8:   If (var_1F0 = "FROMDATE") Then
  loc_14B19EC:     Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_14B19F4:     Call 0.Method_arg_20 (var_1C0)
  loc_14B19FC:     Call 0.Method_arg_38 ("'" & var_88 & "'")
  loc_14B1A12:   Else
  loc_14B1A1D:     If (var_1F0 = "TODATE") Then
  loc_14B1A41:       Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_14B1A49:       Call 0.Method_arg_20 (var_1C0)
  loc_14B1A51:       Call 0.Method_arg_38 ("'" & var_8C & "'")
  loc_14B1A67:     Else
  loc_14B1A72:       If (var_1F0 = "FORMONTH") Then
  loc_14B1AC3:         Call 0.Method_arg_90 (var_108, CLng(var_8E), var_1C0)
  loc_14B1ACB:         Call 0.Method_arg_20 (CStr(1 & Format(var_88, "MMMM/yyyy") & "'"), 1)
  loc_14B1AD3:         Call 0.Method_arg_38 ("'")
  loc_14B1AF0:       Else
  loc_14B1AFB:         If (var_1F0 = "TITLE") Then
  loc_14B1B22:           Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_14B1B2A:           Call 0.Method_arg_20 (var_1C0)
  loc_14B1B32:           Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_14B1B48:         Else
  loc_14B1B53:           If (var_1F0 = "PRINTDATE") Then
  loc_14B1B83:             Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_14B1B8B:             Call 0.Method_arg_20 (var_1C0)
  loc_14B1B93:             Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F920EC) & "'"))
  loc_14B1BA9:           End If
  loc_14B1BA9:         End If
  loc_14B1BA9:       End If
  loc_14B1BA9:     End If
  loc_14B1BA9:   End If
  loc_14B1BAC: Next var_1E0 'Integer
  loc_14B1BB6: Set var_1C0 = Nothing
  loc_14B1BCF: Set var_108 = MemVar_1F921E4 
  loc_14B1BDB: Proc_6_99_1483714(var_108, 0, global_80)
  loc_14B1BE6: MemVar_1F921E4 = var_108
  loc_14B1BFE: Set var_94 = Nothing
  loc_14B1C01: Exit Sub
  loc_14B1C02: Proc_6_60_E62BC4(0, &HFF)
  loc_14B1C0C: global_88 = 0
  loc_14B1C0F: Exit Sub
End Sub

Public Sub Proc_66_82_EFC534(arg_C) 'EFC534
  'Data Table: 540784
  Dim var_8C As Recordset15
  loc_EFC45D: Set var_8C = arg_C 
  loc_EFC485: var_8C.Fields.Append "Guest", &HC8, &HC
  loc_EFC4B1: var_8C.Fields.Append "RoomRent", &HC8, &HC
  loc_EFC4DD: var_8C.Fields.Append "Tax", &HC8, &HC
  loc_EFC4ED: var_8C.CursorType = 3
  loc_EFC4FA: var_8C.LockType = 3
  loc_EFC519: var_8C.Open var_A0, var_B0, -1
  loc_EFC520: Set var_8C = Nothing 
  loc_EFC527: Set var_88 = arg_C 
  loc_EFC52B: Proc_66_82_EFC534 = -1
End Sub

Public Sub Proc_66_83_132F034
  'Data Table: 540784
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_11C As String
  Dim var_12C As Variant
  Dim var_E4 As Variant
  Dim var_14C As Variant
  Dim var_194 As String
  Dim var_19C As String
  Dim var_1B4 As String
  Dim var_1B8 As String
  Dim unk_5407B4 As Connection15
  Dim var_94 As Recordset15
  Dim var_1C4 As Recordset15
  Dim var_15C As Variant
  loc_132E8E0: On Error Goto loc_132F024
  loc_132E8E6: var_D4 = CVar(CLng(0)) 'Long
  loc_132E8EB: var_F4 = 1
  loc_132E939: var_88 = CStr(Format(CVar("01/" & CStr(Me.FGrid.TextMatrix))), "dd/MMM/yyyy"))
  loc_132E953: var_D4 = CVar(CLng(0)) 'Long
  loc_132E965: Set var_108 = Me.FGrid
  loc_132E96B: var_118 = var_108.TextMatrix)
  loc_132E99F: var_15C = DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & CStr(var_118)))))
  loc_132E9C8: var_8C = CStr(Format(var_15C, "dd/MMM/yyyy"))
  loc_132E9E4: var_E4 = " And P.SettleDate Between "
  loc_132E9F4: Proc_6_7_F25D88(var_118, var_88, var_E4, 1, 1, var_88)
  loc_132EA00: var_F4 = " And "
  loc_132EA05: var_14C = "01/" & var_118 & var_F4 
  loc_132EA14: Proc_6_7_F25D88(var_15C, var_8C, var_14C, 1)
  loc_132EA5A: var_11C = "Select Sum(R.Adult) Guest,Round(Sum(Q.RoomCharge),2) RoomRent,Round(Sum(Q.LuxuryTax),2) Tax From (Select P.FolionoDocid,Sum(P.RoomCharge) RoomCharge,Sum(P.LuxuryTax) LuxuryTax From (Select FolionoDocid=Case When IsNull(P.RelatedFolionoDocid,'')<>'' Then P.RelatedFolionoDocid Else P.FolionoDocid End," & "RoomCharge=Case When PayCode<>'"
  loc_132EA68: var_194 = var_11C & MemVar_1F92078 & "LT' Then IsNull(AmtDr,0)-IsNull(AmtCr,0) Else 0 End,LuxuryTax=Case When PayCode='"
  loc_132EA76: var_19C = var_194 & MemVar_1F92078 & "LT' Then IsNull(AmtDr,0)-IsNull(AmtCr,0) Else 0 End From Paycharge P Where P.RoomType='RO' And (P.Paycode In (Select Code From RevMast Where Nature='Room Charge') Or P.PayCode='"
  loc_132EAA3: var_1B4 = var_19C & MemVar_1F92078 & "LT') And " & "IsNull(Bill_No,'')<>'' " & CStr(1 & var_15C & " ") & " And P.LogSite_Code='" & MemVar_1F92078
  loc_132EAAA: var_1B8 = var_1B4 & "')P Group By P.FolionoDocid)Q Left Join (Select DocId,Max(Adult) Adult From RoomOcc Group By DocId)R On Q.FolioNoDocid=R.DocId"
  loc_132EAB3: unk_5407B4.Execute var_1B8, var_118, -1
  loc_132EABE: Set var_94 = var_108
  loc_132EAE8: var_1BC = var_94.RecordCount
  loc_132EAF6: If (var_1BC <= 0) Then
  loc_132EAFF:   Call 0.Method_arg_50 (var_11C, var_108, var_118)
  loc_132EB0D:   var_12C = CVar(var_11C) 'String
  loc_132EB15:   var_D4 = "** No Records Found to Print **"
  loc_132EB20:   MsgBox(var_D4, &H40, var_12C, var_14C, var_15C)
  loc_132EB35:   global_88 = 0
  loc_132EB38:   Exit Sub
  loc_132EB39: End If
  loc_132EB46: Call Proc_66_82_EFC534(New)
  loc_132EB4E: Set var_98 = var_108
  loc_132EB51: ' Referenced from: 132EC6D
  loc_132EB60: If Not(var_94.EOF) Then
  loc_132EB66:   Set var_1C4 = var_98 
  loc_132EB75:   var_1C4.AddNew var_D4, var_E4
  loc_132EB89:   var_108 = var_94.Fields
  loc_132EBA0:   Proc_6_48_EF4270(var_12C, CVar(var_108.Item("Guest")), var_108)
  loc_132EBB2:   var_1C4.Collect = "Guest"
  loc_132EBE7:   Proc_6_47_EF59D0(var_12C, CVar(var_94.Fields.Item("RoomRent")), var_12C)
  loc_132EBF9:   var_1C4.Collect = "RoomRent"
  loc_132EC0B:   var_D4 = "Tax"
  loc_132EC1F:   var_1C8 = var_94.Fields.Item(var_D4)
  loc_132EC2E:   Proc_6_47_EF59D0(var_12C, CVar(var_1C8), var_12C)
  loc_132EC37:   var_E4 = "Tax"
  loc_132EC40:   var_1C4.Collect = var_E4
  loc_132EC5A:   var_1C4.Update var_D4, var_E4
  loc_132EC61:   Set var_1C4 = Nothing 
  loc_132EC68:   var_94.MoveNext
  loc_132EC6D:   GoTo loc_132EB51
  loc_132EC70: End If
  loc_132EC76: global_84 = "LTFORMIV"
  loc_132EC80: Call 0.Method_arg_50 (var_11C, var_12C, global_88)
  loc_132EC9D: global_80 = CStr(Ucase(CVar(var_11C)))
  loc_132ECD2: Set var_108 = var_98 
  loc_132ECD9: CreateFieldDefFile(var_108, MemVar_1F920B4 & "\" & global_84 & ".ttx", &HFF)
  loc_132ED04: var_11C = MemVar_1F920B4 & "\"
  loc_132ED1E: Call 0.Method_arg_1C (var_11C & global_84 & ".RPT", var_D4, var_108)
  loc_132ED29: MemVar_1F921E4 = var_108
  loc_132ED44: var_D4 = CVar(var_108) 'Address
  loc_132ED52: Call 0.Method_arg_64 (var_108, var_D4, var_E4)
  loc_132ED5A: Call 0.Method_arg_2C (var_F4, var_F4)
  loc_132ED68: Call 0.Method_arg_150 (var_D4)
  loc_132ED7E: Call 0.Method_arg_90 (var_108, var_1BC)
  loc_132ED86: Call 0.Method_arg_24 (var_8E)
  loc_132ED92: For var_1CC =  To CInt(var_1BC): 1 = var_1CC 'Integer
  loc_132EDAB:   Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_132EDB3:   Call 0.Method_arg_20 (var_1C8)
  loc_132EDBB:   Call 0.Method_arg_30 (var_11C)
  loc_132EDD1:   var_1DC = Ucase(CVar(var_11C)) 'Variant
  loc_132EDEA:   If (var_1DC = "FROMDATE") Then
  loc_132EE0E:     Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_132EE16:     Call 0.Method_arg_20 (var_1C8)
  loc_132EE1E:     Call 0.Method_arg_38 ("'" & var_88 & "'")
  loc_132EE34:   Else
  loc_132EE3F:     If (var_1DC = "TODATE") Then
  loc_132EE63:       Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_132EE6B:       Call 0.Method_arg_20 (var_1C8)
  loc_132EE73:       Call 0.Method_arg_38 ("'" & var_8C & "'")
  loc_132EE89:     Else
  loc_132EE94:       If (var_1DC = "FORMONTH") Then
  loc_132EEE5:         Call 0.Method_arg_90 (var_108, CLng(var_8E), var_1C8)
  loc_132EEED:         Call 0.Method_arg_20 (CStr(1 & Format(var_88, "MMMM/yyyy") & "'"), 1)
  loc_132EEF5:         Call 0.Method_arg_38 ("'")
  loc_132EF12:       Else
  loc_132EF1D:         If (var_1DC = "TITLE") Then
  loc_132EF44:           Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_132EF4C:           Call 0.Method_arg_20 (var_1C8)
  loc_132EF54:           Call 0.Method_arg_38 ("'" & global_84 & "'")
  loc_132EF6A:         Else
  loc_132EF75:           If (var_1DC = "PRINTDATE") Then
  loc_132EFA5:             Call 0.Method_arg_90 (var_108, CLng(var_8E))
  loc_132EFAD:             Call 0.Method_arg_20 (var_1C8)
  loc_132EFB5:             Call 0.Method_arg_38 (CStr("'" & CDate(MemVar_1F920EC) & "'"))
  loc_132EFCB:           End If
  loc_132EFCB:         End If
  loc_132EFCB:       End If
  loc_132EFCB:     End If
  loc_132EFCB:   End If
  loc_132EFCE: Next var_1CC 'Integer
  loc_132EFD8: Set var_1C8 = Nothing
  loc_132EFF1: Set var_108 = MemVar_1F921E4 
  loc_132EFFD: Proc_6_99_1483714(var_108, 0, global_80)
  loc_132F008: MemVar_1F921E4 = var_108
  loc_132F018: global_88 = 0
  loc_132F020: Set var_94 = Nothing
  loc_132F023: Exit Sub
  loc_132F024: ' Referenced from: 132E8E0
  loc_132F024: Proc_6_60_E62BC4(global_88, &HFF)
  loc_132F02E: global_88 = 0
  loc_132F031: Exit Sub
End Sub
