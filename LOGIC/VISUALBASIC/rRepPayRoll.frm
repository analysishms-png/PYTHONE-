VERSION 5.00
Begin VB.Form rRepPayRoll
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
  ClientWidth = 14100
  ClientHeight = 7545
  LockControls = -1  'True
  Begin Frame FrmList
    Left = 1155
    Top = 5025
    Width = 2520
    Height = 1875
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 2325
      Height = 1830
      TabStop = 0   'False
      TabIndex = 10
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 510
    Top = 0
    Width = 690
    Height = 240
    Visible = 0   'False
    TabIndex = 8
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
    BackColor = &HE0E0E0&
    Left = 0
    Top = 1440
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin CheckBox Check1
    Caption = "All"
    Index = 4
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 5175
    Top = 3840
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 6
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
    Left = 360
    Top = 3855
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
    Left = 5145
    Top = 1800
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 4
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
    Left = 375
    Top = 1830
    Width = 915
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
  Begin PictureBox Pic
    BackColor = &H808080&
    Left = 0
    Top = 7050
    Width = 14100
    Height = 500
    TabIndex = 1
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
      TabIndex = 18
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DownPicture = "rRepPayRoll.frx":0
      ToolTipText = "Exit Form"
      MaskColor = &H8000000F&
    End
    Begin CommandButton BTNPRINT
      Caption = "Windows &Print"
      Index = 0
      Left = 5565
      Top = 75
      Width = 1620
      Height = 375
      TabIndex = 17
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DownPicture = "rRepPayRoll.frx":3132
      ToolTipText = "Print Report"
      MaskColor = &H8000000F&
    End
    Begin CommandButton BTNPRINT
      Caption = "&Dos Print"
      Index = 1
      Left = 3930
      Top = 75
      Width = 1620
      Height = 375
      Visible = 0   'False
      TabIndex = 16
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DownPicture = "rRepPayRoll.frx":6264
      ToolTipText = "Print Report"
      MaskColor = &H8000000F&
    End
    Begin Label LblTitle
      Caption = "."
      BackColor = &H0&
      ForeColor = &HFFFFFF&
      Left = 9420
      Top = 60
      Width = 4470
      Height = 495
      TabIndex = 0
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
  Begin TopCtrl TopCtrl1
    Left = 195
    Top = 270
    Width = 660
    Height = 375
    Visible = 0   'False
    TabIndex = 2
  End
  Begin MSHFlexGrid GridSel
    Index = 1
    Left = 315
    Top = 1755
    Width = 4695
    Height = 1650
    Visible = 0   'False
    TabIndex = 11
  End
  Begin MSHFlexGrid GridSel
    Index = 2
    Left = 5085
    Top = 1755
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 12
  End
  Begin MSHFlexGrid GridSel
    Index = 4
    Left = 5115
    Top = 3780
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 13
  End
  Begin MSHFlexGrid GridSel
    Index = 3
    Left = 300
    Top = 3795
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 14
  End
  Begin MSHFlexGrid FGrid
    Left = 1725
    Top = 45
    Width = 4455
    Height = 1560
    TabIndex = 15
  End
End

Attribute VB_Name = "rRepPayRoll"

Private global_96 As Integer
Private global_80 As Integer
Private global_98 As Integer
Private global_120 As Integer
Private global_122 As Integer
Private global_188 As Integer
Private global_190 As Integer
Private global_100 As Integer
Private global_104 As Variant

Private Sub btnExit_Click() 'E1B878
  'Data Table: 4C934C
  Dim var_2B98 As String
  loc_E1B86D: Me.Global.Unload Me
  loc_E1B875: Exit Sub
  loc_E1B876: var_2B98 = 
End Sub

Private Sub BTNPRINT_Click(Index As Integer) '100BF98
  'Data Table: 4C934C
  Dim var_AC As Variant
  loc_100BD8C: On Error Goto loc_100BF90
  loc_100BD94: global_96 = 0
  loc_100BD9C: global_80 = &HFF
  loc_100BDA5: var_88 = global_52
  loc_100BDB0: If (var_88 = "AttendanceRep") Then
  loc_100BDB3:   Call Proc_311_48_11D9F40(global_80)
  loc_100BDBB: Else
  loc_100BDC3:   If (var_88 = "LoanAdvSumm") Then
  loc_100BDC6:     Call Proc_311_49_15D8B30(global_96)
  loc_100BDCE:   Else
  loc_100BDD6:     If (var_88 = "LoanReg") Then
  loc_100BDD9:       Call Proc_311_50_16840C4()
  loc_100BDE1:     Else
  loc_100BDE9:       If (var_88 = "PFStatement") Then
  loc_100BDEC:         Call Proc_311_47_1165124()
  loc_100BDF4:       Else
  loc_100BDFC:         If (var_88 = "PayrollReg") Then
  loc_100BDFF:           Call Proc_311_46_12427F0()
  loc_100BE07:         Else
  loc_100BE0F:           If (var_88 = "PaySlip") Then
  loc_100BE12:             Call Proc_311_54_11CDC50()
  loc_100BE1A:           Else
  loc_100BE22:             If (var_88 = "LoanLedg") Then
  loc_100BE25:               Call Proc_311_51_16210AC()
  loc_100BE2D:             Else
  loc_100BE35:               If (var_88 = "FormC") Then
  loc_100BE38:                 Call Proc_311_53_1432C04()
  loc_100BE40:               Else
  loc_100BE48:                 If (var_88 = "GratuityReport") Then
  loc_100BE4B:                   Call Proc_311_52_1485D34()
  loc_100BE50:                 End If
  loc_100BE50:               End If
  loc_100BE50:             End If
  loc_100BE50:           End If
  loc_100BE50:         End If
  loc_100BE50:       End If
  loc_100BE50:     End If
  loc_100BE50:   End If
  loc_100BE50: End If
  loc_100BE59: If (global_80 = 0) Then
  loc_100BE5C:   Exit Sub
  loc_100BE5D: End If
  loc_100BE87: Set var_94 = global_88 
  loc_100BE8E: CreateFieldDefFile(var_94, MemVar_1F920B4 & "\" & global_76 & ".ttx")
  loc_100BED7: Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & global_76 & ".RPT", var_AC)
  loc_100BF0E: Call 0.Method_arg_64 (var_94, CVar(var_94), var_BC)
  loc_100BF16: Call 0.Method_arg_2C (var_CC, var_94)
  loc_100BF24: Call 0.Method_arg_150 (&HFF)
  loc_100BF34: Set global_88 = Nothing
  loc_100BF3B: Call Proc_311_60_14F7F4C()
  loc_100BF45: Set var_D4 = Nothing
  loc_100BF5C: Set var_94 = var_94 
  loc_100BF68: Proc_6_99_1483714(var_94, Index, global_72)
  loc_100BF73: MemVar_1F921E4 = var_94
  loc_100BF83: global_98 = 0
  loc_100BF8B: MemVar_1F921E4 = Nothing
  loc_100BF8F: Exit Sub
  loc_100BF90: ' Referenced from: 100BD8C
  loc_100BF90: Proc_6_60_E62BC4(global_98, &HFF)
  loc_100BF95: Exit Sub
End Sub

Private Sub Check1_Click(Index As Integer) 'FFA018
  'Data Table: 4C934C
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_C8 As MSHFlexGrid
  loc_FF9E29: Set var_88 = Me.Check1
  loc_FF9E2F: Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9E4D: If (CLng(var_8C.Value) = 0) Then
  loc_FF9E5E:   Set var_88 = Me.GridSel
  loc_FF9E64:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9E6C:   var_8C.Enabled = True
  loc_FF9E82:   Set var_88 = Me.GridSel
  loc_FF9E88:   Call 0.Method_Check1_Click0 (Index)
  loc_FF9EA9:   If (CLng(var_8C.Rows) > 1) Then
  loc_FF9EBF:     Set var_88 = Me.GridSel
  loc_FF9EC5:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9ECD:     var_8C.Row = 1
  loc_FF9EEC:     Set var_88 = Me.GridSel
  loc_FF9EF2:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9EFA:     var_8C.Col = 0
  loc_FF9F06:   End If
  loc_FF9F09: Else
  loc_FF9F18:   Set var_88 = Me.GridSel
  loc_FF9F1E:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9F26:   var_8C.Enabled = False
  loc_FF9F3C:   Set var_88 = Me.GridSel
  loc_FF9F42:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9F63:   If (CLng(var_8C.Rows) > 1) Then
  loc_FF9F79:     Set var_88 = Me.GridSel
  loc_FF9F7F:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9FA6:     Set var_88 = Me.GridSel
  loc_FF9FAC:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9FB4:     var_8C.Col = 0
  loc_FF9FCA:     Set var_88 = Me.GridSel
  loc_FF9FD0:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9FE7:     var_A0 = CVar((CLng(var_8C.Rows) - 1)) 'Long
  loc_FF9FF6:     Set var_C4 = Me.GridSel
  loc_FF9FFC:     Call 0.Method_Check1_Click0 (Index, var_C8)
  loc_FFA004:     var_C8.RowSel = 0
  loc_FFA017:   End If
  loc_FFA017: End If
  loc_FFA017: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E20D68
  'Data Table: 4C934C
  loc_E20D4E: If (Shift = &HD) Then
  loc_E20D5F:   Proc_303_0_FB9B68("	")
  loc_E20D67: End If
  loc_E20D67: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'EB5744
  'Data Table: 4C934C
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_EB56D0: Set var_9C = Me.ListView.SelectedItem
  loc_EB56E7: Set var_A4 = Me.TxtGrid
  loc_EB56ED: Call 0.Method_ListView_UnknownEvent_130 (0, var_A8)
  loc_EB56F5: var_A8.Text = var_9C.Text
  loc_EB5717: Me.FrmList.Visible = False
  loc_EB5728: Set var_88 = Me.TxtGrid
  loc_EB572E: Call 0.Method_ListView_UnknownEvent_130 (0)
  loc_EB5736: var_9C.SetFocus
  loc_EB5742: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E609B4
  'Data Table: 4C934C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6097F: Me.FGrid.CellBackColor = CVar(CLng("16777152"))
  loc_E60987: Call Proc_311_40_E489E4()
  loc_E60997: Set var_A8 = Me.TxtGrid
  loc_E6099D: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E609A5: var_AC.Visible = False
  loc_E609B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1C200
  'Data Table: 4C934C
  loc_E1C1F7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1C1FF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10A5CA8
  'Data Table: 4C934C
  Dim var_9C As String
  Dim var_AC As Variant
  Dim KeyCode As Integer
  Dim var_D4 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_11C As Long
  loc_10A5A1B: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_102))) Then
  loc_10A5A31:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10A5A41:   var_9C = "+{Tab}"
  loc_10A5A47:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag))
  loc_10A5A51:   KeyCode = 0
  loc_10A5A57: Else
  loc_10A5A8E:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_100))) Then
  loc_10A5AA4:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10A5ABA:     Proc_303_0_FB9B68("	", 0)
  loc_10A5AC4:     KeyCode = 0
  loc_10A5AC7:   End If
  loc_10A5AC7: End If
  loc_10A5ACD: global_120 = KeyCode
  loc_10A5AF3: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10A5B17: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_10A5B2D:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A5B45:   var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10A5B4A:   var_104 = vbNullString
  loc_10A5B54:   Set var_118 = Me.FGrid
  loc_10A5B5A:   LateIdCallSt
  loc_10A5B85:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A5B8A:   var_E4 = 2
  loc_10A5B93:   var_104 = vbNullString
  loc_10A5B9D:   Set var_D4 = Me.FGrid
  loc_10A5BA3:   LateIdCallSt
  loc_10A5BB5: End If
  loc_10A5BBF: If (CLng(KeyCode) = &HD) Then
  loc_10A5BD5:   var_11C = CLng(Me.FGrid.Row)
  loc_10A5BE5:   If Not (var_11C = CLng(0)) Then
  loc_10A5BEF:     If Not (var_11C = CLng(1)) Then
  loc_10A5BF9:       If Not (var_11C = CLng(2)) Then
  loc_10A5C03:         If Not (var_11C = CLng(3)) Then
  loc_10A5C0D:           If Not (var_11C = CLng(4)) Then
  loc_10A5C17:             If Not (var_11C = CLng(5)) Then
  loc_10A5C21:               If Not (var_11C = CLng(6)) Then
  loc_10A5C2B:                 If Not (var_11C = CLng(7)) Then
  loc_10A5C35:                   If Not (var_11C = CLng(8)) Then
  loc_10A5C3F:                     If (var_11C = CLng(9)) Then
  loc_10A5C42:                     End If
  loc_10A5C42:                   End If
  loc_10A5C42:                 End If
  loc_10A5C42:               End If
  loc_10A5C42:             End If
  loc_10A5C42:           End If
  loc_10A5C42:         End If
  loc_10A5C42:       End If
  loc_10A5C42:     End If
  loc_10A5C83:     Proc_6_61_1077428(Me, Me.FGrid, Me.TxtGrid, 0, 0, 0, var_11C, Me.FGrid)
  loc_10A5C9D:     global_122 = 0
  loc_10A5CA0:   End If
  loc_10A5CA0: End If
  loc_10A5CA5: Exit Sub
  loc_10A5CA6: 0(global_122) = var_104
End Sub

Private Sub FGrid_UnknownEvent_B 'F0E410
  'Data Table: 4C934C
  Dim var_9C As Long
  loc_F0E343: var_9C = CLng(Me.FGrid.Row)
  loc_F0E353: If Not (var_9C = CLng(0)) Then
  loc_F0E35D:   If Not (var_9C = CLng(1)) Then
  loc_F0E367:     If Not (var_9C = CLng(2)) Then
  loc_F0E371:       If Not (var_9C = CLng(3)) Then
  loc_F0E37B:         If Not (var_9C = CLng(4)) Then
  loc_F0E385:           If Not (var_9C = CLng(5)) Then
  loc_F0E38F:             If Not (var_9C = CLng(6)) Then
  loc_F0E399:               If Not (var_9C = CLng(7)) Then
  loc_F0E3A3:                 If Not (var_9C = CLng(8)) Then
  loc_F0E3AD:                   If (var_9C = CLng(9)) Then
  loc_F0E3B0:                   End If
  loc_F0E3B0:                 End If
  loc_F0E3B0:               End If
  loc_F0E3B0:             End If
  loc_F0E3B0:           End If
  loc_F0E3B0:         End If
  loc_F0E3B0:       End If
  loc_F0E3B0:     End If
  loc_F0E3B0:   End If
  loc_F0E3C8:   var_AC = 0
  loc_F0E3F1:   Proc_6_61_1077428(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F0E406: End If
  loc_F0E40B: global_122 = 0
  loc_F0E40E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F7246C
  'Data Table: 4C934C
  Dim var_9C As Long
  loc_F72343: var_9C = CLng(Me.FGrid.Row)
  loc_F72353: If Not (var_9C = CLng(5)) Then
  loc_F7235D:   If Not (var_9C = CLng(6)) Then
  loc_F72367:     If Not (var_9C = CLng(7)) Then
  loc_F72371:       If Not (var_9C = CLng(8)) Then
  loc_F7237B:         If (var_9C = CLng(9)) Then
  loc_F7237E:         End If
  loc_F7237E:       End If
  loc_F7237E:     End If
  loc_F7237E:   End If
  loc_F723BC:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F723D1: Else
  loc_F723D8:   If Not (var_9C = CLng(0)) Then
  loc_F723E2:     If Not (var_9C = CLng(1)) Then
  loc_F723EC:       If Not (var_9C = CLng(2)) Then
  loc_F723F6:         If Not (var_9C = CLng(3)) Then
  loc_F72400:           If (var_9C = CLng(4)) Then
  loc_F72403:           End If
  loc_F72403:         End If
  loc_F72403:       End If
  loc_F72403:     End If
  loc_F72441:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, KeyCode)
  loc_F72453:   End If
  loc_F72453: End If
  loc_F7245D: If (CLng(KeyCode) <> &HD) Then
  loc_F72465:   global_122 = &HFF
  loc_F72468: End If
  loc_F72468: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1CA70
  'Data Table: 4C934C
  loc_E1CA67: Me.FGrid.CellBackColor = CVar(CLng("16777152"))
  loc_E1CA6F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1C390
  'Data Table: 4C934C
  loc_E1C387: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1C38F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E423D0
  'Data Table: 4C934C
  Dim var_8C As TextBox
  loc_E423AF: Set var_88 = Me.TxtGrid
  loc_E423B5: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E423BD: var_8C.Visible = False
  loc_E423C9: Call Proc_311_40_E489E4()
  loc_E423CE: Exit Sub
End Sub

Private Sub Form_Load() 'FB508C
  'Data Table: 4C934C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As Variant
  loc_FB4EE4: On Error Goto loc_FB5084
  loc_FB4EE7: Call Proc_311_39_15D2890()
  loc_FB4EF3: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_FB4F0B: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_FB4F25: Set var_A8 = Me.GridSel
  loc_FB4F2B: Call 0.Method_Form_Load0 (1, var_AC)
  loc_FB4F33: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_FB4F51: Set var_A8 = Me.GridSel
  loc_FB4F57: Call 0.Method_Form_Load0 (2, var_AC)
  loc_FB4F5F: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_FB4F7D: Set var_A8 = Me.GridSel
  loc_FB4F83: Call 0.Method_Form_Load0 (3, var_AC)
  loc_FB4F8B: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_FB4FA9: Set var_A8 = Me.GridSel
  loc_FB4FAF: Call 0.Method_Form_Load0 (4, var_AC)
  loc_FB4FB7: var_AC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_FB4FD0: Set var_A8 = Me.Check1
  loc_FB4FD6: Call 0.Method_Form_Load0 (1, var_AC)
  loc_FB4FDE: var_AC.BackColor = CLng(MemVar_1F921B0)
  loc_FB4FF7: Set var_A8 = Me.Check1
  loc_FB4FFD: Call 0.Method_Form_Load0 (2, var_AC)
  loc_FB5005: var_AC.BackColor = CLng(MemVar_1F921B0)
  loc_FB501E: Set var_A8 = Me.Check1
  loc_FB5024: Call 0.Method_Form_Load0 (3, var_AC)
  loc_FB502C: var_AC.BackColor = CLng(MemVar_1F921B0)
  loc_FB5045: Set var_A8 = Me.Check1
  loc_FB504B: Call 0.Method_Form_Load0 (4, var_AC)
  loc_FB5053: var_AC.BackColor = CLng(MemVar_1F921B0)
  loc_FB5069: Set var_A8 = Me.TopCtrl1
  loc_FB506F: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E("Add")
  loc_FB5078: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_FB5083: Exit Sub
  loc_FB5084: ' Referenced from: FB4EE4
  loc_FB5084: Proc_6_60_E62BC4()
  loc_FB5089: Exit Sub
End Sub

Private Sub Form_Resize() 'DFB8F0
  'Data Table: 4C934C
  loc_DFB8EC: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EB1208
  'Data Table: 4C934C
  loc_EB1177: Set global_56 = Nothing
  loc_EB1189: Set global_60 = Nothing
  loc_EB119B: Set global_64 = Nothing
  loc_EB11AD: Set global_68 = Nothing
  loc_EB11BF: Set global_88 = Nothing
  loc_EB11D1: Set global_192 = Nothing
  loc_EB11DD: MemVar_1F921E4 = Nothing
  loc_EB11EC: Set global_84 = Nothing
  loc_EB11FE: Set global_92 = Nothing
  loc_EB1205: Exit Sub
End Sub

Private Sub Form_Activate() 'DFBA90
  'Data Table: 4C934C
  loc_DFBA8C: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1144A28
  'Data Table: 4C934C
  Dim var_98 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Variant
  loc_11446C3: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11446DE: var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114471C: Set var_108 = Me.TxtGrid
  loc_1144722: Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_114472A: var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_114475B: var_114 = CLng(Me.FGrid.Row)
  loc_114476B: If (var_114 = CLng(2)) Then
  loc_1144774:   var_118 = global_52
  loc_114477F:   If Not (var_118 = "AttendanceRep") Then
  loc_114478A:     If Not (var_118 = "PaySlip") Then
  loc_1144795:       If (var_118 = "PFStatement") Then
  loc_1144798:       End If
  loc_1144798:     End If
  loc_11447AF:     If (Me.RecordCount > 0) Then
  loc_11447B8:       Me.MoveFirst
  loc_11447E9:       var_F4 = ListView_Items_RecordSet_Local(Me.ListView, Me.TxtGrid, Index, global_84)
  loc_11447FB:     End If
  loc_11447FE:   Else
  loc_1144806:     If (var_118 = "PayrollReg") Then
  loc_1144816:       ReDim var_120(0 To 1)
  loc_114482D:       var_120(0) = "Yes"
  loc_114483C:       var_120(1) = "No"
  loc_1144893:       Set global_192 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_120))
  loc_11448A7:     Else
  loc_11448AF:       If (var_118 = "LoanReg") Then
  loc_11448BF:         ReDim var_120(0 To 1)
  loc_11448D6:         var_120(0) = "Advance"
  loc_11448E5:         var_120(1) = "Loan"
  loc_114493C:         Set global_192 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_120), 2)
  loc_1144950:       Else
  loc_1144958:         If (var_118 = "LoanLedg") Then
  loc_1144968:           ReDim var_120(0 To 2)
  loc_114497F:           var_120(0) = "All"
  loc_114498E:           var_120(1) = "Advance"
  loc_114499D:           var_120(2) = "Loan"
  loc_11449F4:           Set global_192 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_120), 3, Array(var_120))
  loc_1144A05:         End If
  loc_1144A05:       End If
  loc_1144A05:     End If
  loc_1144A05:   End If
  loc_1144A08: Else
  loc_1144A0F:   If (var_114 = CLng(3)) Then
  loc_1144A12:     GoTo loc_1144A1F
  loc_1144A15:   End If
  loc_1144A1C:   If (var_114 = CLng(4)) Then
  loc_1144A1F:     ' Referenced from:   1144A12
  loc_1144A1F:   End If
  loc_1144A1F: End If
  loc_1144A24: Set var_88 = Nothing
  loc_1144A27: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '119D9B8
  'Data Table: 4C934C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_C4 As TextBox
  Dim var_D0 As TextBox
  loc_119D5DE: If (CLng(Shift) = &H1B) Then
  loc_119D5ED:   Set var_8C = Me.TxtGrid
  loc_119D5F3:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_119D60C:   Set var_98 = Me.TxtGrid
  loc_119D612:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_119D61A:   var_9C.Text = var_90.Tag
  loc_119D636:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_119D63F:   Set var_8C = Me.FGrid
  loc_119D65B:   Set var_8C = Me.TxtGrid
  loc_119D661:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_119D669:   var_90.Visible = FGrid.DispID_8001
  loc_119D675:   Call Proc_311_40_E489E4(arg_14)
  loc_119D67A:   Exit Sub
  loc_119D67B: End If
  loc_119D68E: var_B0 = CLng(Me.FGrid.Row)
  loc_119D69E: If (var_B0 = CLng(2)) Then
  loc_119D6A7:   var_B4 = global_52
  loc_119D6B2:   If Not (var_B4 = "AttendanceRep") Then
  loc_119D6BD:     If Not (var_B4 = "PaySlip") Then
  loc_119D6C8:       If (var_B4 = "PFStatement") Then
  loc_119D6CB:       End If
  loc_119D6CB:     End If
  loc_119D6E2:     If (Me.RecordCount > 0) Then
  loc_119D706:       Set var_8C = Me.TxtGrid
  loc_119D70C:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_119D714:       var_B8 = var_90.Left
  loc_119D725:       Set var_98 = Me.TxtGrid
  loc_119D72B:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_119D733:       var_BC = var_9C.Top
  loc_119D744:       Set var_C0 = Me.TxtGrid
  loc_119D74A:       Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_119D752:       var_C8 = var_C4.Height
  loc_119D790:       Set var_D0 = Me.ListView
  loc_119D79F:       Proc_6_114_11A290C(Me.FrmList, var_D0, Me.TxtGrid, 0, Shift, arg_14)
  loc_119D7BF:     End If
  loc_119D7C2:   Else
  loc_119D7CA:     If Not (var_B4 = "PayrollReg") Then
  loc_119D7D5:       If Not (var_B4 = "LoanReg") Then
  loc_119D7E0:         If (var_B4 = "LoanLedg") Then
  loc_119D7E3:         End If
  loc_119D7E3:       End If
  loc_119D804:       Set var_8C = Me.TxtGrid
  loc_119D80A:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8, CInt(var_B8))
  loc_119D812:       CInt(((var_BC + var_C8) + CDbl(&H19))) = var_90.Left
  loc_119D823:       Set var_98 = Me.TxtGrid
  loc_119D829:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C, var_BC)
  loc_119D831:       2200 = var_9C.Top
  loc_119D842:       Set var_C0 = Me.TxtGrid
  loc_119D848:       Call 0.Method_TxtGrid_KeyDown0 (0, var_C4, var_C8)
  loc_119D850:       2500 = var_C4.Height
  loc_119D861:       Set var_CC = Me.TxtGrid
  loc_119D867:       Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_119D86F:       var_F0 = var_D0.Width
  loc_119D8BC:       Proc_6_114_11A290C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_119D8E0:     End If
  loc_119D8E0:   End If
  loc_119D8EA:   If (CLng(Shift) = &HD) Then
  loc_119D8FA:     Call Proc_311_38_12A4E68(0, 0, var_DA, CInt(var_B8))
  loc_119D905:     If (var_DA = &HFF) Then
  loc_119D908:       Call Proc_311_42_F03EAC(CInt(((var_BC + var_C8) + CDbl(&H19))), CInt(var_F0))
  loc_119D90D:     End If
  loc_119D90D:   End If
  loc_119D910: Else
  loc_119D917:   If Not (var_B0 = CLng(3)) Then
  loc_119D921:     If (var_B0 = CLng(4)) Then
  loc_119D924:     End If
  loc_119D927:   Else
  loc_119D92E:     If Not (var_B0 = CLng(0)) Then
  loc_119D938:       If (var_B0 = CLng(1)) Then
  loc_119D93B:       End If
  loc_119D97B:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_122 = &HFF))) Then
  loc_119D98B:         Call Proc_311_38_12A4E68(0, 0, var_DA)
  loc_119D996:         If (var_DA = &HFF) Then
  loc_119D999:           Call Proc_311_42_F03EAC(0)
  loc_119D99E:         End If
  loc_119D99E:       End If
  loc_119D9A1:     Else
  loc_119D9A8:       If (var_B0 = CLng(5)) Then
  loc_119D9B1:         var_FC = global_52
  loc_119D9B4:       End If
  loc_119D9B4:     End If
  loc_119D9B4:   End If
  loc_119D9B4: End If
  loc_119D9B4: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E5888C
  'Data Table: 4C934C
  loc_E58857: Proc_6_58_E054C0(arg_10)
  loc_E5887F: If (CLng(Me.FGrid.Row) = CLng(5)) Then
  loc_E58888:   var_A0 = global_52
  loc_E5888B: End If
  loc_E5888B: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDD684
  'Data Table: 4C934C
  Dim var_9C As Long
  Dim arg_DFF As Double
  loc_EDD5E3: var_9C = CLng(Me.FGrid.Row)
  loc_EDD5F3: If Not (var_9C = CLng(2)) Then
  loc_EDD5FD:   If Not (var_9C = CLng(3)) Then
  loc_EDD607:     If (var_9C = CLng(4)) Then
  loc_EDD60A:     End If
  loc_EDD60A:   End If
  loc_EDD62C:   If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_EDD63D:     Call TxtGrid_KeyDown(KeyCode, global_120)
  loc_EDD642:   End If
  loc_EDD670:   Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, 0, Shift)
  loc_EDD680: End If
  loc_EDD680: Exit Sub
  loc_EDD681: arg_DFF = global_192
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20F10
  'Data Table: 4C934C
  Dim arg_10 As Integer
  loc_E20EEC: On Error Goto loc_E20F07
  loc_E20EFA: Call Proc_311_38_12A4E68(Cancel, &HFF)
  loc_E20F03: arg_10 = Not(var_88)
  loc_E20F06: Exit Sub
  loc_E20F07: ' Referenced from: E20EEC
  loc_E20F07: Proc_6_60_E62BC4(arg_10)
  loc_E20F0C: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E48568
  'Data Table: 4C934C
  Dim var_8C As MSHFlexGrid
  loc_E4854B: Set var_88 = Me.GridSel
  loc_E48551: Call 0.Method_GridSel_UnknownEvent_00 (Cancel, var_8C)
  loc_E48559: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E48565: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_8 'E48AB0
  'Data Table: 4C934C
  Dim var_8C As MSHFlexGrid
  loc_E48A93: Set var_88 = Me.GridSel
  loc_E48A99: Call 0.Method_GridSel_UnknownEvent_80 (Cancel, var_8C)
  loc_E48AA1: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E48AAD: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A '1173E48
  'Data Table: 4C934C
  Dim var_98 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_168 As MSHFlexGrid
  Dim var_190 As Variant
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  loc_1173A9E: If (arg_10 = &HD) Then
  loc_1173AAF:   Proc_303_0_FB9B68("	")
  loc_1173AB7: End If
  loc_1173AC1: Set var_94 = Me.GridSel
  loc_1173AC7: Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_1173AE8: If (CLng(var_98.Rows) < 1) Then
  loc_1173AEB:   Exit Sub
  loc_1173AEC: End If
  loc_1173B00: Set var_94 = Me.GridSel
  loc_1173B06: Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_1173B28: If ((CLng(arg_10) = &H20) And (CLng(var_98.Col) = 0)) Then
  loc_1173B3B:   Set var_94 = Me.GridSel
  loc_1173B41:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_1173B49:   var_98.CellFontName = "WINGDINGS"
  loc_1173B67:   Set var_94 = Me.GridSel
  loc_1173B6D:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_1173B75:   var_98.CellFontSize = CVar(CDbl(&HE))
  loc_1173B8B:   Set var_94 = Me.GridSel
  loc_1173B91:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_1173BA2:   var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_1173BBA:   Set var_CC = Me.GridSel
  loc_1173BC0:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_D0, 0)
  loc_1173BC8:   var_100 = var_D0.TextMatrix)
  loc_1173BDE:   Set var_164 = Me.GridSel
  loc_1173BE4:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_168, var_100)
  loc_1173BF5:   var_190 = CVar(CLng(var_168.Row)) 'Long
  loc_1173C43:   Set var_17C = Me.GridSel
  loc_1173C49:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_180, CVar(CStr(IIf((CStr(var_100) = "ü"), " ", "ü"))), 0)
  loc_1173C51:   LateIdCallSt
  loc_1173C85:   var_1E2 = Cancel
  loc_1173C8E:   If (var_1E2 = 1) Then
  loc_1173CA2:     var_86 = CInt((UBound(global_156, 1) + 1))
  loc_1173CB4:     ReDim Preserve global_156(0 To CLng(var_86))
  loc_1173CC8:     Set var_94 = Me.GridSel
  loc_1173CCE:     Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86, var_1E2)
  loc_1173CEA:     global_156(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1173CF8:   Else
  loc_1173CFE:     If (var_1E2 = 2) Then
  loc_1173D12:       var_86 = CInt((UBound(global_160, 1) + 1))
  loc_1173D24:       ReDim Preserve global_160(0 To CLng(var_86))
  loc_1173D38:       Set var_94 = Me.GridSel
  loc_1173D3E:       Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86, var_180)
  loc_1173D5A:       global_160(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1173D68:     Else
  loc_1173D6E:       If (var_1E2 = 3) Then
  loc_1173D82:         var_86 = CInt((UBound(global_164, 1) + 1))
  loc_1173D94:         ReDim Preserve global_164(0 To CLng(var_86))
  loc_1173DA8:         Set var_94 = Me.GridSel
  loc_1173DAE:         Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86)
  loc_1173DCA:         global_164(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1173DD8:       Else
  loc_1173DDE:         If (var_1E2 = 4) Then
  loc_1173DF2:           var_86 = CInt((UBound(global_168, 1) + 1))
  loc_1173E04:           ReDim Preserve global_168(0 To CLng(var_86))
  loc_1173E18:           Set var_94 = Me.GridSel
  loc_1173E1E:           Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86)
  loc_1173E3A:           global_168(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1173E45:         End If
  loc_1173E45:       End If
  loc_1173E45:     End If
  loc_1173E45:   End If
  loc_1173E45: End If
  loc_1173E45: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_C '1136F80
  'Data Table: 4C934C
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_A4 As Variant
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_88 As TextBox
  loc_1136C1A: Set var_88 = Me.GridSel
  loc_1136C20: Call 0.Method_GridSel_UnknownEvent_C0 (Cancel)
  loc_1136C41: Set var_A0 = Me.GridSel
  loc_1136C47: Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_A4)
  loc_1136C71: If ((CLng(var_8C.Col) = 0) Or (CLng(var_A4.Row) = 0)) Then
  loc_1136C74:   Exit Sub
  loc_1136C75: End If
  loc_1136C78: var_B6 = Cancel
  loc_1136C81: If (var_B6 = 1) Then
  loc_1136C9C:   Set var_88 = Me.GridSel
  loc_1136CA2:   Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C)
  loc_1136CAA:   var_9C = var_8C.Col
  loc_1136D14:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_56, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1136D35: Else
  loc_1136D3B:   If (var_B6 = 2) Then
  loc_1136D56:     Set var_88 = Me.GridSel
  loc_1136D5C:     Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C, var_9C)
  loc_1136D64:     var_9C = var_8C.Col
  loc_1136DCE:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_60, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1136DEF:   Else
  loc_1136DF5:     If (var_B6 = 3) Then
  loc_1136E10:       Set var_88 = Me.GridSel
  loc_1136E16:       Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C, var_9C)
  loc_1136E1E:       var_9C = var_8C.Col
  loc_1136E88:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_64, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1136EA9:     Else
  loc_1136EAF:       If (var_B6 = 4) Then
  loc_1136ECA:         Set var_88 = Me.GridSel
  loc_1136ED0:         Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C, var_9C)
  loc_1136F42:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_68, arg_10, Me.Fields.Item(CVar(CLng(var_8C.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_1136F60:       End If
  loc_1136F60:     End If
  loc_1136F60:   End If
  loc_1136F60: End If
  loc_1136F72: Me.TxtSearch.Tag = CStr(Cancel)
  loc_1136F7D: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E80B0C
  'Data Table: 4C934C
  Dim var_8C As MSHFlexGrid
  loc_E80AAE: Set var_88 = Me.GridSel
  loc_E80AB4: Call 0.Method_GridSel_UnknownEvent_E0 (Cancel)
  loc_E80AD5: If (CLng(var_8C.Col) <> 0) Then
  loc_E80AD8:   Exit Sub
  loc_E80AD9: End If
  loc_E80AE3: Set var_88 = Me.GridSel
  loc_E80AE9: Call 0.Method_GridSel_UnknownEvent_E0 (Cancel, var_8C)
  loc_E80AFE: global_188 = CInt(CLng(var_8C.Row))
  loc_E80B0B: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1175F60
  'Data Table: 4C934C
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_160 As Variant
  Dim var_1B2 As Integer
  Dim var_86 As Integer
  loc_1175BA2: Set var_8C = Me.GridSel
  loc_1175BA8: Call 0.Method_GridSel_UnknownEvent_100 (Cancel)
  loc_1175BD3: If ((CLng(var_90.Col) <> 0) Or (global_188 = 0)) Then
  loc_1175BD6:   Exit Sub
  loc_1175BD7: End If
  loc_1175BE1: Set var_8C = Me.GridSel
  loc_1175BE7: Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90)
  loc_1175BFC: global_190 = CInt(CLng(var_90.RowSel))
  loc_1175C18: For var_A4 = global_188 To global_190: var_88 = var_A4 'Integer
  loc_1175C31:   Set var_8C = Me.GridSel
  loc_1175C37:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, CVar(CLng(var_88)))
  loc_1175C3F:   var_90.Row = global_188
  loc_1175C5E:   Set var_8C = Me.GridSel
  loc_1175C64:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, 0)
  loc_1175C6C:   var_90.Col = global_190
  loc_1175C88:   Set var_8C = Me.GridSel
  loc_1175C8E:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90)
  loc_1175C96:   var_90.CellFontName = "WINGDINGS"
  loc_1175CB4:   Set var_8C = Me.GridSel
  loc_1175CBA:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90)
  loc_1175CC2:   var_90.CellFontSize = CVar(CDbl(&HE))
  loc_1175CD2:   var_B4 = CVar(CLng(var_88)) 'Long
  loc_1175CEA:   Set var_8C = Me.GridSel
  loc_1175CF0:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, 0)
  loc_1175D08:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1175D56:   Set var_14C = Me.GridSel
  loc_1175D5C:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_150, CVar(CStr(IIf((CStr(var_90.TextMatrix)) = "ü"), " ", "ü"))), 0)
  loc_1175D64:   LateIdCallSt
  loc_1175D8C:   var_1B2 = Cancel
  loc_1175D95:   If (var_1B2 = 1) Then
  loc_1175DA9:     var_86 = CInt((UBound(global_156, 1) + 1))
  loc_1175DBB:     ReDim Preserve global_156(0 To CLng(var_86))
  loc_1175DCF:     Set var_8C = Me.GridSel
  loc_1175DD5:     Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86, var_1B2, var_150)
  loc_1175DF1:     global_156(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_1175DFF:   Else
  loc_1175E05:     If (var_1B2 = 2) Then
  loc_1175E19:       var_86 = CInt((UBound(global_160, 1) + 1))
  loc_1175E2B:       ReDim Preserve global_160(0 To CLng(var_86))
  loc_1175E3F:       Set var_8C = Me.GridSel
  loc_1175E45:       Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86, var_160)
  loc_1175E61:       global_160(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_1175E6F:     Else
  loc_1175E75:       If (var_1B2 = 3) Then
  loc_1175E89:         var_86 = CInt((UBound(global_164, 1) + 1))
  loc_1175E9B:         ReDim Preserve global_164(0 To CLng(var_86))
  loc_1175EAF:         Set var_8C = Me.GridSel
  loc_1175EB5:         Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86)
  loc_1175ED1:         global_164(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_1175EDF:       Else
  loc_1175EE5:         If (var_1B2 = 4) Then
  loc_1175EF9:           var_86 = CInt((UBound(global_168, 1) + 1))
  loc_1175F0B:           ReDim Preserve global_168(0 To CLng(var_86))
  loc_1175F1F:           Set var_8C = Me.GridSel
  loc_1175F25:           Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86)
  loc_1175F41:           global_168(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_1175F4C:         End If
  loc_1175F4C:       End If
  loc_1175F4C:     End If
  loc_1175F4C:   End If
  loc_1175F4F: Next var_A4 'Integer
  loc_1175F59: global_188 = 0
  loc_1175F5C: Exit Sub
  loc_1175F5D: StAryRecMove
End Sub

Private Sub GridSel_UnknownEvent_13 'E486A0
  'Data Table: 4C934C
  Dim var_8C As MSHFlexGrid
  loc_E48683: Set var_88 = Me.GridSel
  loc_E48689: Call 0.Method_GridSel_UnknownEvent_130 (Cancel, var_8C)
  loc_E48691: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E4869D: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'E48978
  'Data Table: 4C934C
  Dim var_8C As MSHFlexGrid
  loc_E4895B: Set var_88 = Me.GridSel
  loc_E48961: Call 0.Method_GridSel_UnknownEvent_140 (Cancel, var_8C)
  loc_E48969: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E48975: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'F24020
  'Data Table: 4C934C
  loc_F23F23: If (Proc_6_113_E6CF7C(KeyCode) = &HFF) Then
  loc_F23F4E:   Set var_90 = Me.GridSel
  loc_F23F54:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_F23F7C:   Me.TxtSearch.Visible = False
  loc_F23F84: End If
  loc_F23F8E: If (CLng(KeyCode) = &H2E) Then
  loc_F23F9E:   Me.TxtSearch.Text = vbNullString
  loc_F23FA6: End If
  loc_F23FBB: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_F23FE6:   Set var_90 = Me.GridSel
  loc_F23FEC:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94, Val(Me.TxtSearch.Tag))
  loc_F24014:   Me.TxtSearch.Visible = False
  loc_F2401C: End If
  loc_F2401C: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) '11CEABC
  'Data Table: 4C934C
  Dim var_F4 As Double
  Dim var_A4 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim Me As Recordset15
  loc_11CE685: var_90 = Me.TxtSearch.Tag
  loc_11CE69A: If (var_90 = CStr(1)) Then
  loc_11CE6F0:   Set var_A0 = Me.GridSel
  loc_11CE6F6:   Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4)
  loc_11CE76C:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(Val(Me.TxtSearch.Tag)), global_56, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CE797: Else
  loc_11CE7A6:   If (var_90 = CStr(2)) Then
  loc_11CE7D1:     var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CE7FC:     Set var_A0 = Me.GridSel
  loc_11CE802:     Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CE878:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_60, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CE8A3:   Else
  loc_11CE8B2:     If (var_90 = CStr(3)) Then
  loc_11CE8DD:       var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CE908:       Set var_A0 = Me.GridSel
  loc_11CE90E:       Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CE916:       var_B4 = var_A4.Col
  loc_11CE984:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_64, KeyAscii, Me.Fields.Item(CVar(CLng(var_B4))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CE9AF:     Else
  loc_11CE9BE:       If (var_90 = CStr(4)) Then
  loc_11CE9E9:         var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CEA14:         Set var_A0 = Me.GridSel
  loc_11CEA1A:         Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4, var_B4)
  loc_11CEA90:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_68, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CEAB8:       End If
  loc_11CEAB8:     End If
  loc_11CEAB8:   End If
  loc_11CEAB8: End If
  loc_11CEAB8: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E8F83C
  'Data Table: 4C934C
  loc_E8F7D5: Me.TxtSearch.Text = vbNullString
  loc_E8F805: Set var_90 = Me.GridSel
  loc_E8F80B: Call 0.Method_TxtSearch_LostFocus0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E8F833: Me.TxtSearch.Visible = False
  loc_E8F83B: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E8F29C
  'Data Table: 4C934C
  loc_E8F235: Me.TxtSearch.Text = vbNullString
  loc_E8F265: Set var_90 = Me.GridSel
  loc_E8F26B: Call 0.Method_TxtSearch_Click0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E8F293: Me.TxtSearch.Visible = False
  loc_E8F29B: Exit Sub
End Sub

Public Function global_52Get() '4CA2B8
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4CA2C7
  global_52 = Value
End Sub

Public Sub SelGridKeyPressLocal(Txt, SelGrid, index, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '11DFAB4
  'Data Table: 4C934C
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim KeyAscii As Integer
  Dim var_138 As Variant
  loc_11DF671: If ().rows < 1) Then
  loc_11DF674:   Exit Sub
  loc_11DF675: End If
  loc_11DF689: If (Me.RecordCount <= 0) Then
  loc_11DF695:   .TEXT = vbNullString
  loc_11DF699:   Exit Sub
  loc_11DF69A: End If
  loc_11DF6AF: If ((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Then
  loc_11DF6B2:   Exit Sub
  loc_11DF6B3: End If
  loc_11DF6BD: If (CLng(KeyAscii) = 8) Then
  loc_11DF6D7:   If (Len(.SelText) > 1) Then
  loc_11DF6EB:     var_DC = (Len(.SelText) - 1)
  loc_11DF6F3:     .SelLength = var_DC
  loc_11DF703:     var_88 = CStr(.SelText)
  loc_11DF70C:   Else
  loc_11DF715:     .TEXT = vbNullString
  loc_11DF72F:     Call ).SetFocus
  loc_11DF740:     .Visible = False
  loc_11DF744:     Exit Sub
  loc_11DF745:   End If
  loc_11DF748: Else
  loc_11DF75F:   var_DC = (.SelText + Chr(CLng(KeyAscii)))
  loc_11DF764:   var_88 = CStr(var_DC)
  loc_11DF770: End If
  loc_11DF773: Me.Recordset15.MoveFirst
  loc_11DF7B0: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_11DF7F3:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_11DF808: Else
  loc_11DF838:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_88 & "*'", 0, 1
  loc_11DF848: End If
  loc_11DF84A: KeyAscii = 0
  loc_11DF876: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_11DF87C:   var_BC = CVar(CellBackColLeave) 'Long
  loc_11DF895:   ).CellBackColor = index
  loc_11DF8AA:   var_BC = CVar(Me.Recordset15.AbsolutePosition) 'Long
  loc_11DF8C3:   ).Row = index
  loc_11DF8CD:   var_BC = CVar(CellBackColEnter) 'Long
  loc_11DF8E6:   ).CellBackColor = index
  loc_11DF91C:   .TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_11DF936:   .SelLength = CVar(Len(var_88))
  loc_11DF94E:   var_DC = ).CellLeft
  loc_11DF96E:   var_138 = (index + ).left)
  loc_11DF976:   .left = var_138
  loc_11DF99B:   var_DC = ).CellTop
  loc_11DF9BB:   var_138 = (index + ).top)
  loc_11DF9C3:   .top = var_138
  loc_11DF9E6:   If (.Visible = False) Then
  loc_11DF9F0:     .Visible = True
  loc_11DF9F4:     var_9C = 0
  loc_11DF9FD:     Call .ZOrder
  loc_11DFA06:     Call .SetFocus
  loc_11DFA2A:     .BackColor = ).CellBackColor
  loc_11DFA53:     .ForeColor = ).CellForeColor
  loc_11DFA7C:     .width = ).CellWidth
  loc_11DFAA5:     .height = ).CellHeight
  loc_11DFAB0:   End If
  loc_11DFAB0: End If
  loc_11DFAB0: Exit Sub
  loc_11DFAB1: StAryRecMove
End Sub

Public Function ListView_Items_RecordSet_Local(LV, Txt, index, Rst) 'FF6C70
  'Data Table: 4C934C
  Dim var_104 As String
  Dim var_A0 As Variant
  Dim Me As Variant
  Dim var_134 As String
  Dim var_8C As ListItem
  Dim var_E4 As Integer
  loc_FF6A90: Call .ListItems.Clear
  loc_FF6AAD: If (Me.Recordset15.RecordCount <= 0) Then
  loc_FF6AB0:   ListView_Items_RecordSet_Local = 
  loc_FF6AB6: End If
  loc_FF6AC1: If (global_52 <> "HundiPrint") Then
  loc_FF6ACC:   var_104 = "All"
  loc_FF6AD5:   var_A0 = .ListItems
  loc_FF6AE6:   Set var_8C = var_A0.add
  loc_FF6AF8:   var_A0.ListItem.SubItems = 1
  loc_FF6AFD:   ' Referenced from: FF6BF8
  loc_FF6AFD: End If
  loc_FF6B03: var_116 = Me.EOF
  loc_FF6B0C: If Not(var_116) Then
  loc_FF6B39:   var_A0 = Me.Recordset15.Fields.Item("Name").Value
  loc_FF6BA3:   If Not(IsNull(Me.Recordset15.Fields.Item("Code").Value)) Then
  loc_FF6BD2:     var_134 = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_FF6BDA:     .ListItems.add.SubItems = 1
  loc_FF6BF0:   End If
  loc_FF6BF3:   Me.MoveNext
  loc_FF6BF8:   GoTo loc_FF6AFD
  loc_FF6BFB: End If
  loc_FF6C10: var_E4 = 0
  loc_FF6C2F: Set var_8C = .FindItem
  loc_FF6C40: If (var_8C Is Nothing) Then
  loc_FF6C43:   ListView_Items_RecordSet_Local = 1
  loc_FF6C4C: Else
  loc_FF6C52:   var_8C.EnsureVisible var_116
  loc_FF6C5C:   var_8C.Selected = True
  loc_FF6C61: End If
  loc_FF6C64: Set var_88 = var_8C 
  loc_FF6C68: ListView_Items_RecordSet_Local = var_104
End Function

Public Sub Proc_311_38_12A4E68
  'Data Table: 4C934C
  Dim var_9C As Variant
  Dim var_B0 As Long
  Dim var_B8 As Variant
  Dim Me As Recordset15
  Dim var_F8 As Variant
  Dim var_D8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_108 As Variant
  Dim var_15C As Variant
  Dim var_128 As Variant
  Dim var_16C As Variant
  Dim var_14C As MSHFlexGrid
  loc_12A4887: var_B0 = CLng(Me.FGrid.Row)
  loc_12A4897: If (var_B0 = CLng(2)) Then
  loc_12A48A0:   var_B4 = global_52
  loc_12A48AB:   If Not (var_B4 = "AttendanceRep") Then
  loc_12A48B6:     If Not (var_B4 = "PaySlip") Then
  loc_12A48C1:       If (var_B4 = "PFStatement") Then
  loc_12A48C4:       End If
  loc_12A48C4:     End If
  loc_12A48D0:     Set var_9C = Me.TxtGrid
  loc_12A48D6:     Call 0.Method_Proc_311_38_12A4E680 (0, var_B8)
  loc_12A48F5:     If (var_B8.Text <> vbNullString) Then
  loc_12A490F:       If (Me.RecordCount > 0) Then
  loc_12A4925:         var_F8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A493D:         var_118 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12A4960:         var_BC = Me.ListView.SelectedItem.Text
  loc_12A4968:         var_138 = CVar(var_BC) 'String
  loc_12A4970:         Set var_14C = Me.FGrid
  loc_12A4976:         LateIdCallSt
  loc_12A49A9:         var_F8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A49AE:         var_118 = 2
  loc_12A49D1:         Set var_B8 = Me.ListView.SelectedItem
  loc_12A49D7:         1 = var_B8.SubItems
  loc_12A49DF:         var_E8 = CVar(var_BC) 'String
  loc_12A49E7:         Set var_D8 = Me.FGrid
  loc_12A49ED:         LateIdCallSt
  loc_12A4A09:       End If
  loc_12A4A09:     End If
  loc_12A4A0C:   Else
  loc_12A4A14:     If Not (var_B4 = "PayrollReg") Then
  loc_12A4A1F:       If Not (var_B4 = "LoanReg") Then
  loc_12A4A2A:         If (var_B4 = "LoanLedg") Then
  loc_12A4A2D:         End If
  loc_12A4A2D:       End If
  loc_12A4A39:       Set var_9C = Me.TxtGrid
  loc_12A4A3F:       Call 0.Method_Proc_311_38_12A4E680 (0, var_B8, var_BC, var_D8, var_E8, var_BC, var_118)
  loc_12A4A47:       var_F8 = var_B8.Text
  loc_12A4A5E:       If (var_BC <> vbNullString) Then
  loc_12A4A74:         var_F8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A4A8C:         var_118 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12A4AA9:         Set var_B8 = Me.ListView.SelectedItem
  loc_12A4AAF:         var_BC = var_B8.Text
  loc_12A4AB7:         var_138 = CVar(var_BC) 'String
  loc_12A4ABF:         Set var_14C = Me.FGrid
  loc_12A4AC5:         LateIdCallSt
  loc_12A4AE5:       End If
  loc_12A4AE8:     Else
  loc_12A4AF0:       If (var_B4 = "FormC") Then
  loc_12A4AFF:         Set var_9C = Me.TxtGrid
  loc_12A4B05:         Call 0.Method_Proc_311_38_12A4E680 (0, var_B8, var_BC, var_14C, var_138, var_118)
  loc_12A4B0D:         var_F8 = var_B8.Text
  loc_12A4B1C:         var_138 = Me.FGrid.Row
  loc_12A4B25:         var_108 = CVar(CLng(var_138)) 'Long
  loc_12A4B3D:         var_128 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12A4B69:         var_16C = CVar(CStr(Format(CVar(var_BC), "0.00"))) 'String
  loc_12A4B71:         Set var_14C = Me.FGrid
  loc_12A4B77:         LateIdCallSt
  loc_12A4B9B:       End If
  loc_12A4B9B:     End If
  loc_12A4B9B:   End If
  loc_12A4B9E: Else
  loc_12A4BA5:   If Not (var_B0 = CLng(5)) Then
  loc_12A4BAF:     If Not (var_B0 = CLng(6)) Then
  loc_12A4BB9:       If Not (var_B0 = CLng(7)) Then
  loc_12A4BC3:         If Not (var_B0 = CLng(8)) Then
  loc_12A4BCD:           If (var_B0 = CLng(9)) Then
  loc_12A4BD0:           End If
  loc_12A4BD0:         End If
  loc_12A4BD0:       End If
  loc_12A4BD0:     End If
  loc_12A4BD3:   Else
  loc_12A4BDA:     If (var_B0 = CLng(3)) Then
  loc_12A4BDD:       GoTo loc_12A4E19
  loc_12A4BE0:     End If
  loc_12A4BE7:     If (var_B0 = CLng(4)) Then
  loc_12A4BEA:       GoTo loc_12A4E19
  loc_12A4BED:     End If
  loc_12A4BF4:     If Not (var_B0 = CLng(0)) Then
  loc_12A4BFE:       If (var_B0 = CLng(1)) Then
  loc_12A4C01:       End If
  loc_12A4C1D:       Set var_14C = Me.FGrid
  loc_12A4C3A:       Set var_9C = Me.TxtGrid
  loc_12A4C40:       Call 0.Method_Proc_311_38_12A4E680 (0, var_B8, CVar(CLng(var_14C.Col)), CVar(CLng(Me.FGrid.Row)), var_14C, var_16C, 1)
  loc_12A4C61:       LateIdCallSt
  loc_12A4CBA:       If (((((global_52 = "AttendanceRep") Or (global_52 = "LoanAdvSumm")) Or (global_52 = "PaySlip")) Or (global_52 = "PayrollReg")) Or (global_52 = "PFStatement")) Then
  loc_12A4CC6:         Set var_9C = Me.TxtGrid
  loc_12A4CCC:         Call 0.Method_Proc_311_38_12A4E680 (0, var_B8, Me.FGrid, CVar(Proc_6_33_1512840(var_B8, 1, var_128, var_108)))
  loc_12A4CF5:         var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A4CFD:         var_128 = CVar(CLng(1)) 'Long
  loc_12A4D29:         var_15C = CVar(CStr(Format(CVar(Proc_6_120_133A1D8(var_B8, var_14C, Me.FGrid.Row)), "MM/YYYY"))) 'String
  loc_12A4D31:         Set var_14C = Me.FGrid
  loc_12A4D37:         LateIdCallSt
  loc_12A4D5A:       End If
  loc_12A4D65:       If (global_52 = "FormC") Then
  loc_12A4D71:         Set var_9C = Me.TxtGrid
  loc_12A4D77:         Call 0.Method_Proc_311_38_12A4E680 (0, var_B8, var_14C, var_15C, 1)
  loc_12A4DA0:         var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12A4DB8:         var_128 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12A4DE4:         var_16C = CVar(CStr(Format(CVar(Proc_6_120_133A1D8(var_B8, 1, var_128)), "MMM/YYYY"))) 'String
  loc_12A4DEC:         Set var_180 = Me.FGrid
  loc_12A4DF2:         LateIdCallSt
  loc_12A4E19:         ' Referenced from:     12A4BEA
  loc_12A4E19:         ' Referenced from:     12A4BDD
  loc_12A4E19:       End If
  loc_12A4E19:     End If
  loc_12A4E19:   End If
  loc_12A4E19: End If
  loc_12A4E24: If (arg_10 = 0) Then
  loc_12A4E2B:   Set var_9C = Me.FGrid
  loc_12A4E47:   Set var_9C = Me.TxtGrid
  loc_12A4E4D:   Call 0.Method_Proc_311_38_12A4E680 (0, var_B8, 0, FGrid.DispID_8001, &HFF, var_180, var_16C)
  loc_12A4E55:   var_B8.Visible = True
  loc_12A4E61: End If
  loc_12A4E61: Proc_311_38_12A4E68 = 1
End Sub

Public Sub Proc_311_39_15D2890
  'Data Table: 4C934C
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_88 As Integer
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_120 As MSHFlexGrid
  loc_15D153C: Call 0.Method_arg_78 (var_8C)
  loc_15D1557: Me.Pic.Top = ((var_8C - Me.Pic.Width) - CDbl(&HA))
  loc_15D157C: Call 0.Method_Me0 (var_8C)
  loc_15D158E: var_B8 = CVar(((var_8C - CDbl(Me.FGrid.Width)) / CDbl(2))) 'Single
  loc_15D1597: Set var_98 = Me.FGrid
  loc_15D159D: var_98.Left = var_B8
  loc_15D15BE: Me.FGrid.Top = CVar(CDbl(&H4B))
  loc_15D15D9: Me.FGrid.Rows = &HA
  loc_15D15F4: Me.FGrid.Cols = 3
  loc_15D160F: Me.FGrid.FixedCols = 1
  loc_15D1617: var_B8 = 0
  loc_15D1620: var_D8 = &H898
  loc_15D162D: Set var_90 = Me.FGrid
  loc_15D1633: LateIdCallSt
  loc_15D163E: var_B8 = 1
  loc_15D1647: var_D8 = &H898
  loc_15D1654: Set var_90 = Me.FGrid
  loc_15D165A: LateIdCallSt
  loc_15D1665: var_B8 = 2
  loc_15D166E: var_D8 = 0
  loc_15D167B: Set var_90 = Me.FGrid
  loc_15D1681: LateIdCallSt
  loc_15D168C: var_B8 = 1
  loc_15D169B: var_D8 = CVar(CInt(1)) 'Integer
  loc_15D16A3: Set var_90 = Me.FGrid
  loc_15D16A9: LateIdCallSt
  loc_15D16D9: For var_EC = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_EC 'Integer
  loc_15D16E3:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_15D16E8:   var_D8 = 0
  loc_15D16F5:   Set var_90 = Me.FGrid
  loc_15D16FB:   LateIdCallSt
  loc_15D1709: Next var_EC 'Integer
  loc_15D170E: Call Proc_311_44_14E9518()
  loc_15D171A: For var_F0 = 1 To 4: var_86 = var_F0 'Integer
  loc_15D172A:   Set var_90 = Me.GridSel
  loc_15D1730:   Call 0.Method_Proc_311_39_15D28900 (var_86, var_98)
  loc_15D174E:   If (CBool(var_98.Visible) = &HFF) Then
  loc_15D1757:     var_88 = (var_88 + 1)
  loc_15D175A:   End If
  loc_15D175D: Next var_F0 'Integer
  loc_15D177D: var_B8 = CVar(CDbl(((((global_100 - global_102) + 1) * CInt(220)) + 500))) 'Single
  loc_15D178C: Me.FGrid.Height = var_B8
  loc_15D179A: var_100 = global_104 'Variant
  loc_15D17A9: If (var_100 = 0) Then
  loc_15D17BF:   Me.FGrid.Top = CVar(CDbl(1000))
  loc_15D17CA: Else
  loc_15D17D5:   If (var_100 = 1) Then
  loc_15D17E1:     Set var_90 = Me.GridSel
  loc_15D17E7:     Call 0.Method_Proc_311_39_15D28900 (1)
  loc_15D17EF:     var_A8 = var_98.Width
  loc_15D17FE:     Call 0.Method_Me0 (var_8C, var_A8)
  loc_15D1810:     var_B8 = CVar(((var_8C - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_15D181E:     Set var_104 = Me.GridSel
  loc_15D1824:     Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D182C:     var_108.Left = 1
  loc_15D1849:     var_118 = Me.FGrid.Height
  loc_15D1870:     var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D187E:     Set var_104 = Me.GridSel
  loc_15D1884:     Call 0.Method_Proc_311_39_15D28900 (1, var_108, 1)
  loc_15D188C:     var_108.Top = var_118
  loc_15D18AD:     var_A8 = Me.FGrid.Height
  loc_15D18BD:     Set var_98 = Me.Pic
  loc_15D18CE:     Call 0.Method_Me8 (var_8C, var_A8)
  loc_15D18E5:     var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_98.Height) - CDbl(1200))) 'Single
  loc_15D18F3:     Set var_104 = Me.GridSel
  loc_15D18F9:     Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D1901:     var_108.Height = 1
  loc_15D191D:     Set var_90 = Me.GridSel
  loc_15D1923:     Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D1942:     Set var_104 = Me.Check1
  loc_15D1948:     Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D1950:     var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D196C:     Set var_90 = Me.GridSel
  loc_15D1972:     Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D1991:     Set var_104 = Me.Check1
  loc_15D1997:     Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D199F:     var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D19B5:   Else
  loc_15D19C0:     If (var_100 = 2) Then
  loc_15D19CC:       Set var_90 = Me.GridSel
  loc_15D19D2:       Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D19DA:       var_A8 = var_98.Width
  loc_15D19E9:       Call 0.Method_Me0 (var_8C, var_A8)
  loc_15D19FF:       var_B8 = CVar((((var_8C / CDbl(2)) - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_15D1A0D:       Set var_104 = Me.GridSel
  loc_15D1A13:       Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D1A1B:       var_108.Left = 2
  loc_15D1A38:       var_118 = Me.FGrid.Height
  loc_15D1A5F:       var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D1A6D:       Set var_104 = Me.GridSel
  loc_15D1A73:       Call 0.Method_Proc_311_39_15D28900 (1, var_108, 2)
  loc_15D1A7B:       var_108.Top = var_118
  loc_15D1A9C:       var_A8 = Me.FGrid.Height
  loc_15D1AAC:       Set var_98 = Me.Pic
  loc_15D1AB2:       var_94 = var_98.Height
  loc_15D1ABD:       Call 0.Method_Me8 (var_8C, var_A8)
  loc_15D1AD4:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_94) - CDbl(1200))) 'Single
  loc_15D1AE2:       Set var_104 = Me.GridSel
  loc_15D1AE8:       Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D1AF0:       var_108.Height = 2
  loc_15D1B0C:       Set var_90 = Me.GridSel
  loc_15D1B12:       Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D1B31:       Set var_104 = Me.Check1
  loc_15D1B37:       Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D1B3F:       var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D1B5B:       Set var_90 = Me.GridSel
  loc_15D1B61:       Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D1B80:       Set var_104 = Me.Check1
  loc_15D1B86:       Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D1B8E:       var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D1BA7:       Call 0.Method_Me0 (var_94)
  loc_15D1BB5:       Set var_90 = Me.GridSel
  loc_15D1BBB:       Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D1BC3:       var_A8 = var_98.Width
  loc_15D1BD2:       Call 0.Method_Me0 (var_8C, var_A8)
  loc_15D1BF0:       var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_15D1BFE:       Set var_104 = Me.GridSel
  loc_15D1C04:       Call 0.Method_Proc_311_39_15D28900 (2, var_108)
  loc_15D1C0C:       var_108.Left = 2
  loc_15D1C29:       var_118 = Me.FGrid.Height
  loc_15D1C50:       var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D1C5E:       Set var_104 = Me.GridSel
  loc_15D1C64:       Call 0.Method_Proc_311_39_15D28900 (2, var_108, 2)
  loc_15D1C6C:       var_108.Top = var_118
  loc_15D1C8D:       var_A8 = Me.FGrid.Height
  loc_15D1C9D:       Set var_98 = Me.Pic
  loc_15D1CA3:       var_94 = var_98.Height
  loc_15D1CAE:       Call 0.Method_Me8 (var_8C, var_A8)
  loc_15D1CC5:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_94) - CDbl(1200))) 'Single
  loc_15D1CD3:       Set var_104 = Me.GridSel
  loc_15D1CD9:       Call 0.Method_Proc_311_39_15D28900 (2, var_108)
  loc_15D1CE1:       var_108.Height = 2
  loc_15D1CFD:       Set var_90 = Me.GridSel
  loc_15D1D03:       Call 0.Method_Proc_311_39_15D28900 (2, var_98)
  loc_15D1D22:       Set var_104 = Me.Check1
  loc_15D1D28:       Call 0.Method_Proc_311_39_15D28900 (2, var_108)
  loc_15D1D30:       var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D1D4C:       Set var_90 = Me.GridSel
  loc_15D1D52:       Call 0.Method_Proc_311_39_15D28900 (2, var_98)
  loc_15D1D71:       Set var_104 = Me.Check1
  loc_15D1D77:       Call 0.Method_Proc_311_39_15D28900 (2, var_108)
  loc_15D1D7F:       var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D1D95:     Else
  loc_15D1DA0:       If (var_100 = 3) Then
  loc_15D1DAC:         Set var_90 = Me.GridSel
  loc_15D1DB2:         Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D1DBA:         var_A8 = var_98.Width
  loc_15D1DC9:         Call 0.Method_Me0 (var_8C, var_A8)
  loc_15D1DDF:         var_B8 = CVar((((var_8C / CDbl(2)) - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_15D1DED:         Set var_104 = Me.GridSel
  loc_15D1DF3:         Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D1DFB:         var_108.Left = 3
  loc_15D1E12:         Set var_98 = Me.FGrid
  loc_15D1E18:         var_118 = var_98.Height
  loc_15D1E3F:         var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D1E4D:         Set var_104 = Me.GridSel
  loc_15D1E53:         Call 0.Method_Proc_311_39_15D28900 (1, var_108, 3)
  loc_15D1E5B:         var_108.Top = var_118
  loc_15D1E7B:         Set var_90 = Me.GridSel
  loc_15D1E81:         Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D1EA0:         Set var_104 = Me.Check1
  loc_15D1EA6:         Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D1EAE:         var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D1ECA:         Set var_90 = Me.GridSel
  loc_15D1ED0:         Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D1EEF:         Set var_104 = Me.Check1
  loc_15D1EF5:         Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D1EFD:         var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D1F19:         Set var_90 = Me.GridSel
  loc_15D1F1F:         Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D1F3E:         Set var_104 = Me.GridSel
  loc_15D1F44:         Call 0.Method_Proc_311_39_15D28900 (3, var_108)
  loc_15D1F4C:         var_108.Left = CVar(CDbl(var_98.Left))
  loc_15D1F68:         Set var_104 = Me.GridSel
  loc_15D1F6E:         Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D1F76:         var_118 = var_108.Height
  loc_15D1F88:         Set var_90 = Me.GridSel
  loc_15D1F8E:         Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D1FAA:         var_B8 = CVar(((CDbl(var_98.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D1FB8:         Set var_11C = Me.GridSel
  loc_15D1FBE:         Call 0.Method_Proc_311_39_15D28900 (3, var_120, CVar(CDbl(var_98.Left)))
  loc_15D1FC6:         var_120.Top = var_118
  loc_15D1FEA:         Set var_90 = Me.GridSel
  loc_15D1FF0:         Call 0.Method_Proc_311_39_15D28900 (3, var_98)
  loc_15D200F:         Set var_104 = Me.Check1
  loc_15D2015:         Call 0.Method_Proc_311_39_15D28900 (3, var_108)
  loc_15D201D:         var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D2039:         Set var_90 = Me.GridSel
  loc_15D203F:         Call 0.Method_Proc_311_39_15D28900 (3, var_98)
  loc_15D205E:         Set var_104 = Me.Check1
  loc_15D2064:         Call 0.Method_Proc_311_39_15D28900 (3, var_108)
  loc_15D206C:         var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D2085:         Call 0.Method_Me0 (var_94)
  loc_15D2093:         Set var_90 = Me.GridSel
  loc_15D2099:         Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D20A1:         var_A8 = var_98.Width
  loc_15D20B0:         Call 0.Method_Me0 (var_8C, var_A8)
  loc_15D20CE:         var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_15D20DC:         Set var_104 = Me.GridSel
  loc_15D20E2:         Call 0.Method_Proc_311_39_15D28900 (2, var_108)
  loc_15D20EA:         var_108.Left = CVar(CDbl(var_98.Left))
  loc_15D2101:         Set var_98 = Me.FGrid
  loc_15D2107:         var_118 = var_98.Height
  loc_15D212E:         var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D213C:         Set var_104 = Me.GridSel
  loc_15D2142:         Call 0.Method_Proc_311_39_15D28900 (2, var_108, CVar(CDbl(var_98.Left)))
  loc_15D214A:         var_108.Top = var_118
  loc_15D216A:         Set var_104 = Me.GridSel
  loc_15D2170:         Call 0.Method_Proc_311_39_15D28900 (2, var_108)
  loc_15D2178:         var_118 = var_108.Height
  loc_15D218A:         Set var_90 = Me.GridSel
  loc_15D2190:         Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D21AC:         var_B8 = CVar(((CDbl(var_98.Height) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D21BA:         Set var_11C = Me.GridSel
  loc_15D21C0:         Call 0.Method_Proc_311_39_15D28900 (2, var_120, CVar(CDbl(var_98.Left)))
  loc_15D21C8:         var_120.Height = var_118
  loc_15D21EC:         Set var_90 = Me.GridSel
  loc_15D21F2:         Call 0.Method_Proc_311_39_15D28900 (2, var_98)
  loc_15D2211:         Set var_104 = Me.Check1
  loc_15D2217:         Call 0.Method_Proc_311_39_15D28900 (2, var_108)
  loc_15D221F:         var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D223B:         Set var_90 = Me.GridSel
  loc_15D2241:         Call 0.Method_Proc_311_39_15D28900 (2, var_98)
  loc_15D2260:         Set var_104 = Me.Check1
  loc_15D2266:         Call 0.Method_Proc_311_39_15D28900 (2, var_108)
  loc_15D226E:         var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D2284:       Else
  loc_15D228F:         If (var_100 = 4) Then
  loc_15D229B:           Set var_90 = Me.GridSel
  loc_15D22A1:           Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D22A9:           var_A8 = var_98.Width
  loc_15D22B8:           Call 0.Method_Me0 (var_8C, var_A8)
  loc_15D22CE:           var_B8 = CVar((((var_8C / CDbl(2)) - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_15D22DC:           Set var_104 = Me.GridSel
  loc_15D22E2:           Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D22EA:           var_108.Left = 4
  loc_15D2301:           Set var_98 = Me.FGrid
  loc_15D2307:           var_118 = var_98.Height
  loc_15D232E:           var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D233C:           Set var_104 = Me.GridSel
  loc_15D2342:           Call 0.Method_Proc_311_39_15D28900 (1, var_108, 4)
  loc_15D234A:           var_108.Top = var_118
  loc_15D236A:           Set var_90 = Me.GridSel
  loc_15D2370:           Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D238F:           Set var_104 = Me.Check1
  loc_15D2395:           Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D239D:           var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D23B9:           Set var_90 = Me.GridSel
  loc_15D23BF:           Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D23DE:           Set var_104 = Me.Check1
  loc_15D23E4:           Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D23EC:           var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D2405:           Call 0.Method_Me0 (var_94)
  loc_15D2413:           Set var_90 = Me.GridSel
  loc_15D2419:           Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D2421:           var_A8 = var_98.Width
  loc_15D2430:           Call 0.Method_Me0 (var_8C, var_A8)
  loc_15D244E:           var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_15D245C:           Set var_104 = Me.GridSel
  loc_15D2462:           Call 0.Method_Proc_311_39_15D28900 (2, var_108)
  loc_15D246A:           var_108.Left = 4
  loc_15D2481:           Set var_98 = Me.FGrid
  loc_15D2487:           var_118 = var_98.Height
  loc_15D24AE:           var_B8 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D24BC:           Set var_104 = Me.GridSel
  loc_15D24C2:           Call 0.Method_Proc_311_39_15D28900 (2, var_108, 4)
  loc_15D24CA:           var_108.Top = var_118
  loc_15D24EA:           Set var_90 = Me.GridSel
  loc_15D24F0:           Call 0.Method_Proc_311_39_15D28900 (2, var_98)
  loc_15D250F:           Set var_104 = Me.Check1
  loc_15D2515:           Call 0.Method_Proc_311_39_15D28900 (2, var_108)
  loc_15D251D:           var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D2539:           Set var_90 = Me.GridSel
  loc_15D253F:           Call 0.Method_Proc_311_39_15D28900 (2, var_98)
  loc_15D255E:           Set var_104 = Me.Check1
  loc_15D2564:           Call 0.Method_Proc_311_39_15D28900 (2, var_108)
  loc_15D256C:           var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D2588:           Set var_90 = Me.GridSel
  loc_15D258E:           Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D25AD:           Set var_104 = Me.GridSel
  loc_15D25B3:           Call 0.Method_Proc_311_39_15D28900 (3, var_108)
  loc_15D25BB:           var_108.Left = CVar(CDbl(var_98.Left))
  loc_15D25D7:           Set var_104 = Me.GridSel
  loc_15D25DD:           Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D25E5:           var_118 = var_108.Height
  loc_15D25F7:           Set var_90 = Me.GridSel
  loc_15D25FD:           Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D2619:           var_B8 = CVar(((CDbl(var_98.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D2627:           Set var_11C = Me.GridSel
  loc_15D262D:           Call 0.Method_Proc_311_39_15D28900 (3, var_120, CVar(CDbl(var_98.Left)))
  loc_15D2635:           var_120.Top = var_118
  loc_15D2659:           Set var_90 = Me.GridSel
  loc_15D265F:           Call 0.Method_Proc_311_39_15D28900 (3, var_98)
  loc_15D267E:           Set var_104 = Me.Check1
  loc_15D2684:           Call 0.Method_Proc_311_39_15D28900 (3, var_108)
  loc_15D268C:           var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D26A8:           Set var_90 = Me.GridSel
  loc_15D26AE:           Call 0.Method_Proc_311_39_15D28900 (3, var_98)
  loc_15D26CD:           Set var_104 = Me.Check1
  loc_15D26D3:           Call 0.Method_Proc_311_39_15D28900 (3, var_108)
  loc_15D26DB:           var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D26F4:           Call 0.Method_Me0 (var_94)
  loc_15D2702:           Set var_90 = Me.GridSel
  loc_15D2708:           Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D2710:           var_A8 = var_98.Width
  loc_15D271F:           Call 0.Method_Me0 (var_8C, var_A8)
  loc_15D273D:           var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_15D274B:           Set var_104 = Me.GridSel
  loc_15D2751:           Call 0.Method_Proc_311_39_15D28900 (4, var_108)
  loc_15D2759:           var_108.Left = CVar(CDbl(var_98.Left))
  loc_15D2775:           Set var_104 = Me.GridSel
  loc_15D277B:           Call 0.Method_Proc_311_39_15D28900 (1, var_108)
  loc_15D2783:           var_118 = var_108.Height
  loc_15D2795:           Set var_90 = Me.GridSel
  loc_15D279B:           Call 0.Method_Proc_311_39_15D28900 (1, var_98)
  loc_15D27B7:           var_B8 = CVar(((CDbl(var_98.Top) + CDbl(var_118)) + CDbl(500))) 'Single
  loc_15D27C5:           Set var_11C = Me.GridSel
  loc_15D27CB:           Call 0.Method_Proc_311_39_15D28900 (4, var_120, CVar(CDbl(var_98.Left)))
  loc_15D27D3:           var_120.Top = var_118
  loc_15D27F7:           Set var_90 = Me.GridSel
  loc_15D27FD:           Call 0.Method_Proc_311_39_15D28900 (4, var_98)
  loc_15D281C:           Set var_104 = Me.Check1
  loc_15D2822:           Call 0.Method_Proc_311_39_15D28900 (4, var_108)
  loc_15D282A:           var_108.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_15D2846:           Set var_90 = Me.GridSel
  loc_15D284C:           Call 0.Method_Proc_311_39_15D28900 (4, var_98)
  loc_15D286B:           Set var_104 = Me.Check1
  loc_15D2871:           Call 0.Method_Proc_311_39_15D28900 (4, var_108)
  loc_15D2879:           var_108.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_15D288C:         End If
  loc_15D288C:       End If
  loc_15D288C:     End If
  loc_15D288C:   End If
  loc_15D288C: End If
  loc_15D288C: Exit Sub
End Sub

Public Sub Proc_311_40_E489E4
  'Data Table: 4C934C
  loc_E489CB: If (Me.FrmList.Visible = &HFF) Then
  loc_E489DA:   Me.FrmList.Visible = False
  loc_E489E2: End If
  loc_E489E2: Exit Sub
End Sub

Public Sub Proc_311_41_12821D8(arg_C, arg_10, arg_14) '12821D8
  'Data Table: 4C934C
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
  loc_1281C3E: On Error Goto loc_12821C2
  loc_1281C44: var_8C = vbNullString
  loc_1281C4F: CRefVarAry
  loc_1281C57: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_1281C78:   If (arg_C(var_8E) = 0) Then
  loc_1281C7B:     GoTo loc_1282013
  loc_1281C7E:   End If
  loc_1281C8F:   var_90 = CInt(arg_C(var_8E))
  loc_1281C99:   var_A8 = CVar(CLng(var_90)) 'Long
  loc_1281CB1:   Set var_DC = Me.GridSel
  loc_1281CB7:   Call 0.Method_Proc_311_41_12821D80 (arg_10, var_E0, 0)
  loc_1281CDF:   If (CStr(var_E0.TextMatrix)) = "ü") Then
  loc_1281CEB:     If (CInt(arg_14) = 0) Then
  loc_1281D0A:       Set var_DC = Me.GridSel
  loc_1281D10:       Call 0.Method_Proc_311_41_12821D80 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_1281D18:       var_C8 = var_E0.TextMatrix)
  loc_1281D49:       Set var_108 = Me.GridSel
  loc_1281D4F:       Call 0.Method_Proc_311_41_12821D80 (arg_10, var_10C, 2, CVar(CLng(var_90)), ",")
  loc_1281D87:       var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar(CStr(var_C8)), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)))))
  loc_1281D8C:       var_8C = CStr(var_1AC)
  loc_1281DB1:     Else
  loc_1281DBA:       If (CInt(arg_14) = 1) Then
  loc_1281DD9:         Set var_DC = Me.GridSel
  loc_1281DDF:         Call 0.Method_Proc_311_41_12821D80 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_1281DE7:         var_C8 = var_E0.TextMatrix)
  loc_1281E1F:         Set var_108 = Me.GridSel
  loc_1281E25:         Call 0.Method_Proc_311_41_12821D80 (arg_10, var_10C, 2, CVar(CLng(var_90)), "," & "'")
  loc_1281E72:         var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar("'" & CStr(var_C8) & "'"), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)) & "'")))
  loc_1281E77:         var_8C = CStr(var_1AC)
  loc_1281EA3:       End If
  loc_1281EA3:     End If
  loc_1281EC2:     Set var_DC = Me.GridSel
  loc_1281EC8:     Call 0.Method_Proc_311_41_12821D80 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_1281EFA:     If (Len(var_94 & CStr(var_E0.TextMatrix))) < &HFF) Then
  loc_1281F19:       Set var_DC = Me.GridSel
  loc_1281F1F:       Call 0.Method_Proc_311_41_12821D80 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_1281F27:       var_C8 = var_E0.TextMatrix)
  loc_1281F58:       Set var_108 = Me.GridSel
  loc_1281F5E:       Call 0.Method_Proc_311_41_12821D80 (arg_10, var_10C, 1, CVar(CLng(var_90)), ",")
  loc_1281F75:       var_17C = CVar(CVar(var_94) & CStr(var_10C.TextMatrix))) 'String
  loc_1281F7C:       var_16C = CVar(CStr(var_C8)) 'String
  loc_1281F8E:       var_18C = IIf((var_94 = vbNullString), var_16C, var_17C)
  loc_1281F96:       var_1AC = (var_C8 + var_18C)
  loc_1281F9B:       var_94 = CStr(var_1AC)
  loc_1281FBD:     End If
  loc_1281FC1:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_1281FDF:     Set var_DC = Me.GridSel
  loc_1281FE5:     Call 0.Method_Proc_311_41_12821D80 (arg_10, var_E0, vbNullString, 0)
  loc_1281FED:     LateIdCallSt
  loc_1281FFF:   Else
  loc_1282006:     var_B8 = 0
  loc_128200F:     VarIndexSt
  loc_1282013:   End If
  loc_1282013:   ' Referenced from: 1281C7B
  loc_1282016: Next var_98 'Integer
  loc_1282023: CRefVarAry
  loc_128202B: For var_1C0 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_1C0 'Integer
  loc_1282063:   If CBool(arg_C(var_8E) <> 0) Then
  loc_128206A:     var_A8 = CVar(CLng(CInt(arg_C(var_8E)))) 'Long
  loc_1282088:     Set var_DC = Me.GridSel
  loc_128208E:     Call 0.Method_Proc_311_41_12821D80 (arg_10, var_E0, "ü", 0)
  loc_1282096:     LateIdCallSt
  loc_12820A5:   End If
  loc_12820A8: Next var_1C0 'Integer
  loc_12820B5: If (var_8C = vbNullString) Then
  loc_12820B8:   var_A8 = 0
  loc_12820C1:   var_F0 = 1
  loc_12820D4:   Set var_DC = Me.GridSel
  loc_12820DA:   Call 0.Method_Proc_311_41_12821D80 (arg_10, var_E0)
  loc_12820E2:   var_C8 = var_E0.TextMatrix)
  loc_128210A:   MsgBox(CVar("Select " & CStr(var_C8)), &H40, var_16C, var_17C, var_18C)
  loc_1282130:   Set var_DC = Me.GridSel
  loc_1282136:   Call 0.Method_Proc_311_41_12821D80 (arg_10, var_E0, var_C8)
  loc_1282155:   Proc_311_41_12821D8 = 0
  loc_128215B: End If
  loc_128215E: var_88 = var_8C
  loc_1282164: var_1C2 = arg_10
  loc_128216D: If (var_1C2 = 1) Then
  loc_1282176:   global_172 = var_94
  loc_128217D: Else
  loc_1282183:   If (var_1C2 = 2) Then
  loc_128218C:     global_176 = var_94
  loc_1282193:   Else
  loc_1282199:     If (var_1C2 = 3) Then
  loc_12821A2:       global_180 = var_94
  loc_12821A9:     Else
  loc_12821AF:       If (var_1C2 = 4) Then
  loc_12821B8:         global_184 = var_94
  loc_12821BC:       End If
  loc_12821BC:     End If
  loc_12821BC:   End If
  loc_12821BC: End If
  loc_12821BC: Proc_311_41_12821D8 = var_1C2
  loc_12821C2: ' Referenced from: 1281C3E
  loc_12821CA: Proc_6_60_E62BC4(0, GridSel.DispID_8001)
  loc_12821CF: Proc_311_41_12821D8 = var_F0
End Sub

Public Sub Proc_311_42_F03EAC
  'Data Table: 4C934C
  Dim var_CC As Variant
  loc_F03DF1: If (CLng(Me.FGrid.Row) = CLng(global_100)) Then
  loc_F03E02:   Proc_303_0_FB9B68("	")
  loc_F03E0A:   Exit Sub
  loc_F03E0B: End If
  loc_F03E4A: For var_BC = CInt(CLng(Me.FGrid.Row)) To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_F03E57:   var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F03E7E:   If (CLng(Me.FGrid.RowHeight)) <> 0) Then
  loc_F03E88:     var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F03E97:     Me.FGrid.Row = var_CC
  loc_F03E9F:     Exit For
  loc_F03EA2:   End If
  loc_F03EA5: Next var_BC 'Integer
  loc_F03EAA: ' Referenced from: F03E9F
  loc_F03EAA: Exit Sub
End Sub

Public Sub Proc_311_43_1223DEC(arg_C, arg_10) '1223DEC
  'Data Table: 4C934C
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_E8 As CheckBox
  loc_12238E3: var_86 = arg_C
  loc_12238EC: If (var_86 = 1) Then
  loc_122390B:   Me.Recordset15.CursorLocation = 3
  loc_1223934:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_1223942:   CVarUnk
  loc_1223947:   VerifyVarObj
  loc_1223953:   Set var_8C = Me.GridSel
  loc_1223959:   Call 0.Method_Proc_311_43_1223DEC0 (var_86, var_B0, New)
  loc_1223961:   LateIdStAd
  loc_1223983:   ReDim Preserve global_156(0 To 0)
  loc_122399A:   global_156(0) = 0
  loc_122399B: End If
  loc_12239A1: If (var_86 = 2) Then
  loc_12239C0:   Me.Recordset15.CursorLocation = 3
  loc_12239E9:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_12239F7:   CVarUnk
  loc_12239FC:   VerifyVarObj
  loc_1223A08:   Set var_8C = Me.GridSel
  loc_1223A0E:   Call 0.Method_Proc_311_43_1223DEC0 (var_86, var_B0, New, 1, -1)
  loc_1223A16:   LateIdStAd
  loc_1223A38:   ReDim Preserve global_160(0 To 0)
  loc_1223A4F:   global_160(0) = 0
  loc_1223A50: End If
  loc_1223A56: If (var_86 = 3) Then
  loc_1223A75:   Me.Recordset15.CursorLocation = 3
  loc_1223A9E:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_1223AAC:   CVarUnk
  loc_1223AB1:   VerifyVarObj
  loc_1223ABD:   Set var_8C = Me.GridSel
  loc_1223AC3:   Call 0.Method_Proc_311_43_1223DEC0 (var_86, var_B0, New, 1, -1)
  loc_1223ACB:   LateIdStAd
  loc_1223AED:   ReDim Preserve global_164(0 To 0)
  loc_1223B04:   global_164(0) = 0
  loc_1223B05: End If
  loc_1223B0B: If (var_86 = 4) Then
  loc_1223B2A:   Me.Recordset15.CursorLocation = 3
  loc_1223B53:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_1223B61:   CVarUnk
  loc_1223B66:   VerifyVarObj
  loc_1223B72:   Set var_8C = Me.GridSel
  loc_1223B78:   Call 0.Method_Proc_311_43_1223DEC0 (var_86, var_B0, New, 1, -1, var_B0)
  loc_1223B80:   LateIdStAd
  loc_1223BA2:   ReDim Preserve global_168(0 To 0)
  loc_1223BB9:   global_168(0) = 0
  loc_1223BBA: End If
  loc_1223BCD: Set var_8C = Me.GridSel
  loc_1223BD3: Call 0.Method_Proc_311_43_1223DEC0 (var_86, var_B0, CVar(CDbl(1700)), var_B0, var_B0)
  loc_1223BDB: var_B0.Height = var_B0
  loc_1223BF5: Set var_8C = Me.GridSel
  loc_1223BFB: Call 0.Method_Proc_311_43_1223DEC0 (var_86, var_B0, True)
  loc_1223C03: var_B0.Visible = 1
  loc_1223C1E: Set var_8C = Me.GridSel
  loc_1223C24: Call 0.Method_Proc_311_43_1223DEC0 (var_86, var_B0, False)
  loc_1223C2C: var_B0.Enabled = -1
  loc_1223C44: Set var_8C = Me.Check1
  loc_1223C4A: Call 0.Method_Proc_311_43_1223DEC0 (var_86, var_B0)
  loc_1223C52: var_B0.Visible = True
  loc_1223C71: Set var_8C = Me.GridSel
  loc_1223C77: Call 0.Method_Proc_311_43_1223DEC0 (var_86, var_B0)
  loc_1223C7F: var_B0.Width = CVar(CDbl(5200))
  loc_1223C8B: var_9C = 0
  loc_1223CA7: Set var_8C = Me.GridSel
  loc_1223CAD: Call 0.Method_Proc_311_43_1223DEC0 (var_86, var_B0, &H258)
  loc_1223CB5: LateIdCallSt
  loc_1223CE0: Set var_8C = Me.GridSel
  loc_1223CE6: Call 0.Method_Proc_311_43_1223DEC0 (var_86, var_B0, 0, 2)
  loc_1223CEE: LateIdCallSt
  loc_1223D19: Set var_8C = Me.GridSel
  loc_1223D1F: Call 0.Method_Proc_311_43_1223DEC0 (var_86, var_B0, &HFA0, 1)
  loc_1223D27: LateIdCallSt
  loc_1223D45: Set var_8C = Me.Check1
  loc_1223D4B: Call 0.Method_Proc_311_43_1223DEC0 (var_86, var_B0, CDbl(580), var_B0)
  loc_1223D53: var_B0.Width = var_B0
  loc_1223D5F: var_9C = 0
  loc_1223D72: Set var_8C = Me.GridSel
  loc_1223D78: Call 0.Method_Proc_311_43_1223DEC0 (var_86, var_B0, var_9C)
  loc_1223D9E: Set var_E4 = Me.Check1
  loc_1223DA4: Call 0.Method_Proc_311_43_1223DEC0 (var_86, var_E8, CDbl((CLng(var_B0.RowHeight)) + &H14)))
  loc_1223DAC: var_E8.Height = var_B0
  loc_1223DCF: Set var_8C = Me.Check1
  loc_1223DD5: Call 0.Method_Proc_311_43_1223DEC0 (var_86, var_B0, CInt(1))
  loc_1223DDD: var_B0.Value = var_9C
  loc_1223DE9: Exit Sub
End Sub

Public Sub Proc_311_44_14E9518
  'Data Table: 4C934C
  Dim unk_4C9399 As Connection15
  Dim var_A8 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_134 As Variant
  Dim var_BC As MSHFlexGrid
  Dim var_148 As String
  Dim var_B8 As Variant
  loc_14E8726: var_98 = global_52
  loc_14E8731: If (var_98 = "AttendanceRep") Then
  loc_14E874A:   unk_4C9399.Execute "Select '' As O,Name,Code From EmpCategory Order By Name", var_B8, -1
  loc_14E875B:   Set global_84 = var_BC
  loc_14E876D:   Set var_C4 = Me.FGrid
  loc_14E8773:   var_A8 = CVar(CLng(1)) 'Long
  loc_14E8778:   var_E4 = 0
  loc_14E8781:   var_104 = "Month/Year"
  loc_14E878A:   LateIdCallSt
  loc_14E8795:   var_A8 = CVar(CLng(1)) 'Long
  loc_14E879A:   var_E4 = &H10E
  loc_14E87A6:   LateIdCallSt
  loc_14E87B1:   var_A8 = CVar(CLng(2)) 'Long
  loc_14E87B6:   var_E4 = 0
  loc_14E87BF:   var_104 = "For Category"
  loc_14E87C8:   LateIdCallSt
  loc_14E87D3:   var_A8 = CVar(CLng(2)) 'Long
  loc_14E87D8:   var_E4 = &H10E
  loc_14E87E4:   LateIdCallSt
  loc_14E87EF:   var_E4 = CVar(CLng(1)) 'Long
  loc_14E87F4:   var_104 = 1
  loc_14E880C:   var_B8 = "MM/YYYY"
  loc_14E8826:   var_134 = CVar(CStr(Format(MemVar_1F920EC, var_B8))) 'String
  loc_14E882D:   LateIdCallSt
  loc_14E8841:   var_A8 = CVar(CLng(1)) 'Long
  loc_14E8846:   var_E4 = &H10E
  loc_14E8852:   LateIdCallSt
  loc_14E885D:   var_A8 = CVar(CLng(2)) 'Long
  loc_14E8862:   var_E4 = 1
  loc_14E886B:   var_104 = "All"
  loc_14E8874:   LateIdCallSt
  loc_14E887F:   var_A8 = CVar(CLng(2)) 'Long
  loc_14E8884:   var_E4 = &H10E
  loc_14E8890:   LateIdCallSt
  loc_14E889A:   Set var_C4 = Nothing 
  loc_14E88B8:   Set var_BC = Me.FGrid
  loc_14E88BE:   var_BC.Row = CVar(CLng(CInt(1)))
  loc_14E88CD:   global_100 = CInt(2)
  loc_14E88D8:   global_104 = 1
  loc_14E88E3:   var_148 = "Select Distinct '' as O,G.Name As Department,G.Code From GodownMast G iNNER join Employee E on E.Department=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_14E88F8:   Call Proc_311_43_1223DEC(1, var_148 & "')  Order by G.Name")
  loc_14E8900: Else
  loc_14E8908:   If (var_98 = "PFStatement") Then
  loc_14E8921:     unk_4C9399.Execute "Select '' As O,Name,Code From EmpCategory Order By Name", var_B8, -1
  loc_14E8932:     Set global_84 = var_BC
  loc_14E8944:     Set var_150 = Me.FGrid
  loc_14E894A:     var_A8 = CVar(CLng(1)) 'Long
  loc_14E894F:     var_E4 = 0
  loc_14E8958:     var_104 = "Month/Year"
  loc_14E8961:     LateIdCallSt
  loc_14E896C:     var_A8 = CVar(CLng(1)) 'Long
  loc_14E8971:     var_E4 = &H10E
  loc_14E897D:     LateIdCallSt
  loc_14E8988:     var_A8 = CVar(CLng(2)) 'Long
  loc_14E898D:     var_E4 = 0
  loc_14E8996:     var_104 = "For Category"
  loc_14E899F:     LateIdCallSt
  loc_14E89AA:     var_A8 = CVar(CLng(2)) 'Long
  loc_14E89AF:     var_E4 = &H10E
  loc_14E89BB:     LateIdCallSt
  loc_14E89C6:     var_E4 = CVar(CLng(1)) 'Long
  loc_14E89CB:     var_104 = 1
  loc_14E89E3:     var_B8 = "MM/YYYY"
  loc_14E89FD:     var_134 = CVar(CStr(Format(MemVar_1F920EC, var_B8))) 'String
  loc_14E8A04:     LateIdCallSt
  loc_14E8A18:     var_A8 = CVar(CLng(1)) 'Long
  loc_14E8A1D:     var_E4 = &H10E
  loc_14E8A29:     LateIdCallSt
  loc_14E8A34:     var_A8 = CVar(CLng(2)) 'Long
  loc_14E8A39:     var_E4 = 1
  loc_14E8A42:     var_104 = "All"
  loc_14E8A4B:     LateIdCallSt
  loc_14E8A56:     var_A8 = CVar(CLng(2)) 'Long
  loc_14E8A5B:     var_E4 = &H10E
  loc_14E8A67:     LateIdCallSt
  loc_14E8A71:     Set var_150 = Nothing 
  loc_14E8A8F:     Set var_BC = Me.FGrid
  loc_14E8A95:     var_BC.Row = CVar(CLng(CInt(1)))
  loc_14E8AA4:     global_100 = CInt(2)
  loc_14E8AAF:     global_104 = 0
  loc_14E8AB6:   Else
  loc_14E8ABE:     If (var_98 = "PaySlip") Then
  loc_14E8AD7:       unk_4C9399.Execute "Select '' As O,Name,Code From EmpCategory Order By Name", var_B8, -1
  loc_14E8AE8:       Set global_84 = var_BC
  loc_14E8AFA:       Set var_154 = Me.FGrid
  loc_14E8B00:       var_A8 = CVar(CLng(1)) 'Long
  loc_14E8B05:       var_E4 = 0
  loc_14E8B0E:       var_104 = "For Month"
  loc_14E8B17:       LateIdCallSt
  loc_14E8B22:       var_A8 = CVar(CLng(1)) 'Long
  loc_14E8B27:       var_E4 = &H10E
  loc_14E8B33:       LateIdCallSt
  loc_14E8B3E:       var_A8 = CVar(CLng(2)) 'Long
  loc_14E8B43:       var_E4 = 0
  loc_14E8B4C:       var_104 = "For Category"
  loc_14E8B55:       LateIdCallSt
  loc_14E8B60:       var_A8 = CVar(CLng(2)) 'Long
  loc_14E8B65:       var_E4 = &H10E
  loc_14E8B71:       LateIdCallSt
  loc_14E8B7C:       var_E4 = CVar(CLng(1)) 'Long
  loc_14E8B81:       var_104 = 1
  loc_14E8BB3:       var_134 = CVar(CStr(Format(MemVar_1F920EC, "MMM/YYYY"))) 'String
  loc_14E8BBA:       LateIdCallSt
  loc_14E8BCE:       var_A8 = CVar(CLng(2)) 'Long
  loc_14E8BD3:       var_E4 = 1
  loc_14E8BDC:       var_104 = "All"
  loc_14E8BE5:       LateIdCallSt
  loc_14E8BF0:       var_A8 = CVar(CLng(2)) 'Long
  loc_14E8BF5:       var_E4 = &H10E
  loc_14E8C01:       LateIdCallSt
  loc_14E8C0B:       Set var_154 = Nothing 
  loc_14E8C2F:       Me.FGrid.Row = CVar(CLng(CInt(1)))
  loc_14E8C3E:       global_100 = CInt(2)
  loc_14E8C49:       global_104 = 1
  loc_14E8C5B:       Call Proc_311_43_1223DEC(1, "Select '' as O,Name As EmployeeName,Code From Employee Order by Name")
  loc_14E8C63:     Else
  loc_14E8C6B:       If (var_98 = "PayrollReg") Then
  loc_14E8C72:         Set var_158 = Me.FGrid
  loc_14E8C78:         var_A8 = CVar(CLng(1)) 'Long
  loc_14E8C7D:         var_E4 = 0
  loc_14E8C86:         var_104 = "For Month"
  loc_14E8C8F:         LateIdCallSt
  loc_14E8C9A:         var_A8 = CVar(CLng(1)) 'Long
  loc_14E8C9F:         var_E4 = &H10E
  loc_14E8CAB:         LateIdCallSt
  loc_14E8CB6:         var_A8 = CVar(CLng(2)) 'Long
  loc_14E8CBB:         var_E4 = 0
  loc_14E8CC4:         var_104 = "Other Than bank"
  loc_14E8CCD:         LateIdCallSt
  loc_14E8CD8:         var_A8 = CVar(CLng(2)) 'Long
  loc_14E8CDD:         var_E4 = &H10E
  loc_14E8CE9:         LateIdCallSt
  loc_14E8CF4:         var_E4 = CVar(CLng(1)) 'Long
  loc_14E8CF9:         var_104 = 1
  loc_14E8D2B:         var_134 = CVar(CStr(Format(MemVar_1F920EC, "MMM/YYYY"))) 'String
  loc_14E8D32:         LateIdCallSt
  loc_14E8D46:         var_A8 = CVar(CLng(2)) 'Long
  loc_14E8D4B:         var_E4 = 1
  loc_14E8D54:         var_104 = "Yes"
  loc_14E8D5D:         LateIdCallSt
  loc_14E8D68:         var_A8 = CVar(CLng(2)) 'Long
  loc_14E8D6D:         var_E4 = &H10E
  loc_14E8D79:         LateIdCallSt
  loc_14E8D83:         Set var_158 = Nothing 
  loc_14E8DA7:         Me.FGrid.Row = CVar(CLng(CInt(1)))
  loc_14E8DB6:         global_100 = CInt(2)
  loc_14E8DC1:         global_104 = 2
  loc_14E8DD2:         var_148 = "Select Distinct '' as O,G.Name As Department,G.Code From GodownMast G iNNER join Employee E on E.Department=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_14E8DE7:         Call Proc_311_43_1223DEC(1, "Select '' as O,Name As EmployeeName,Code From Employee Order by Name")
  loc_14E8DF4:         Call Proc_311_43_1223DEC(2, var_148 & "')  Order by G.Name")
  loc_14E8DFC:       Else
  loc_14E8E04:         If (var_98 = "LoanAdvSumm") Then
  loc_14E8E0B:           Set var_15C = Me.FGrid
  loc_14E8E11:           var_A8 = CVar(CLng(1)) 'Long
  loc_14E8E16:           var_E4 = 0
  loc_14E8E1F:           var_104 = "Month/Year"
  loc_14E8E28:           LateIdCallSt
  loc_14E8E33:           var_A8 = CVar(CLng(1)) 'Long
  loc_14E8E38:           var_E4 = &H10E
  loc_14E8E44:           LateIdCallSt
  loc_14E8E4F:           var_E4 = CVar(CLng(1)) 'Long
  loc_14E8E54:           var_104 = 1
  loc_14E8E86:           var_134 = CVar(CStr(Format(MemVar_1F920EC, "MM/YYYY"))) 'String
  loc_14E8E8D:           LateIdCallSt
  loc_14E8EA1:           var_A8 = CVar(CLng(1)) 'Long
  loc_14E8EA6:           var_E4 = &H10E
  loc_14E8EB2:           LateIdCallSt
  loc_14E8EBC:           Set var_15C = Nothing 
  loc_14E8EE0:           Me.FGrid.Row = CVar(CLng(CInt(1)))
  loc_14E8EEF:           global_100 = CInt(1)
  loc_14E8EFA:           global_104 = 0
  loc_14E8F01:         Else
  loc_14E8F09:           If (var_98 = "LoanReg") Then
  loc_14E8F10:             Set var_160 = Me.FGrid
  loc_14E8F16:             var_A8 = CVar(CLng(0)) 'Long
  loc_14E8F1B:             var_E4 = 0
  loc_14E8F24:             var_104 = "From Date"
  loc_14E8F2D:             LateIdCallSt
  loc_14E8F38:             var_A8 = CVar(CLng(0)) 'Long
  loc_14E8F3D:             var_E4 = &H10E
  loc_14E8F49:             LateIdCallSt
  loc_14E8F54:             var_A8 = CVar(CLng(1)) 'Long
  loc_14E8F59:             var_E4 = 0
  loc_14E8F62:             var_104 = "To Date"
  loc_14E8F6B:             LateIdCallSt
  loc_14E8F76:             var_A8 = CVar(CLng(1)) 'Long
  loc_14E8F7B:             var_E4 = &H10E
  loc_14E8F87:             LateIdCallSt
  loc_14E8F92:             var_A8 = CVar(CLng(2)) 'Long
  loc_14E8F97:             var_E4 = 0
  loc_14E8FA0:             var_104 = "Type"
  loc_14E8FA9:             LateIdCallSt
  loc_14E8FB4:             var_A8 = CVar(CLng(2)) 'Long
  loc_14E8FB9:             var_E4 = &H10E
  loc_14E8FC5:             LateIdCallSt
  loc_14E8FD0:             var_A8 = CVar(CLng(0)) 'Long
  loc_14E8FD5:             var_E4 = 1
  loc_14E8FE3:             var_B8 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_14E8FEA:             LateIdCallSt
  loc_14E8FF8:             var_A8 = CVar(CLng(1)) 'Long
  loc_14E8FFD:             var_E4 = 1
  loc_14E900B:             var_B8 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_14E9012:             LateIdCallSt
  loc_14E9020:             var_A8 = CVar(CLng(2)) 'Long
  loc_14E9025:             var_E4 = 1
  loc_14E902E:             var_104 = "Loan"
  loc_14E9037:             LateIdCallSt
  loc_14E9041:             Set var_160 = Nothing 
  loc_14E9065:             Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_14E9074:             global_100 = CInt(2)
  loc_14E907F:             global_104 = 1
  loc_14E9091:             Call Proc_311_43_1223DEC(1, "Select '' as O,Name As Employee,Code From Employee Order by Name")
  loc_14E9099:           Else
  loc_14E90A1:             If (var_98 = "LoanLedg") Then
  loc_14E90A8:               Set var_164 = Me.FGrid
  loc_14E90AE:               var_A8 = CVar(CLng(0)) 'Long
  loc_14E90B3:               var_E4 = 0
  loc_14E90BC:               var_104 = "From Date"
  loc_14E90C5:               LateIdCallSt
  loc_14E90D0:               var_A8 = CVar(CLng(0)) 'Long
  loc_14E90D5:               var_E4 = &H10E
  loc_14E90E1:               LateIdCallSt
  loc_14E90EC:               var_A8 = CVar(CLng(1)) 'Long
  loc_14E90F1:               var_E4 = 0
  loc_14E90FA:               var_104 = "To Date"
  loc_14E9103:               LateIdCallSt
  loc_14E910E:               var_A8 = CVar(CLng(1)) 'Long
  loc_14E9113:               var_E4 = &H10E
  loc_14E911F:               LateIdCallSt
  loc_14E912A:               var_A8 = CVar(CLng(2)) 'Long
  loc_14E912F:               var_E4 = 0
  loc_14E9138:               var_104 = "Type"
  loc_14E9141:               LateIdCallSt
  loc_14E914C:               var_A8 = CVar(CLng(2)) 'Long
  loc_14E9151:               var_E4 = &H10E
  loc_14E915D:               LateIdCallSt
  loc_14E9168:               var_A8 = CVar(CLng(0)) 'Long
  loc_14E916D:               var_E4 = 1
  loc_14E917B:               var_B8 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_14E9182:               LateIdCallSt
  loc_14E9190:               var_A8 = CVar(CLng(1)) 'Long
  loc_14E9195:               var_E4 = 1
  loc_14E91A3:               var_B8 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_14E91AA:               LateIdCallSt
  loc_14E91B8:               var_A8 = CVar(CLng(2)) 'Long
  loc_14E91BD:               var_E4 = 1
  loc_14E91C6:               var_104 = "Loan"
  loc_14E91CF:               LateIdCallSt
  loc_14E91D9:               Set var_164 = Nothing 
  loc_14E91FD:               Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_14E920C:               global_100 = CInt(2)
  loc_14E9217:               global_104 = 1
  loc_14E9229:               Call Proc_311_43_1223DEC(1, "Select '' as O,Name As Employee,Code From Employee Order by Name")
  loc_14E9231:             Else
  loc_14E9239:               If (var_98 = "FormC") Then
  loc_14E9240:                 Set var_168 = Me.FGrid
  loc_14E9246:                 var_A8 = CVar(CLng(0)) 'Long
  loc_14E924B:                 var_E4 = 0
  loc_14E9254:                 var_104 = "From Date"
  loc_14E925D:                 LateIdCallSt
  loc_14E9268:                 var_A8 = CVar(CLng(0)) 'Long
  loc_14E926D:                 var_E4 = &H10E
  loc_14E9279:                 LateIdCallSt
  loc_14E9284:                 var_A8 = CVar(CLng(1)) 'Long
  loc_14E9289:                 var_E4 = 0
  loc_14E9292:                 var_104 = "To Date"
  loc_14E929B:                 LateIdCallSt
  loc_14E92A6:                 var_A8 = CVar(CLng(1)) 'Long
  loc_14E92AB:                 var_E4 = &H10E
  loc_14E92B7:                 LateIdCallSt
  loc_14E92C2:                 var_A8 = CVar(CLng(2)) 'Long
  loc_14E92C7:                 var_E4 = 0
  loc_14E92D0:                 var_104 = "Type"
  loc_14E92D9:                 LateIdCallSt
  loc_14E92E4:                 var_A8 = CVar(CLng(2)) 'Long
  loc_14E92E9:                 var_E4 = &H10E
  loc_14E92F5:                 LateIdCallSt
  loc_14E9300:                 var_E4 = CVar(CLng(0)) 'Long
  loc_14E9305:                 var_104 = 1
  loc_14E9337:                 var_134 = CVar(CStr(Format(MemVar_1F920F4, "MMM/YYYY"))) 'String
  loc_14E933E:                 LateIdCallSt
  loc_14E9352:                 var_E4 = CVar(CLng(1)) 'Long
  loc_14E9357:                 var_104 = 1
  loc_14E9389:                 var_134 = CVar(CStr(Format(MemVar_1F920EC, "MMM/YYYY"))) 'String
  loc_14E9390:                 LateIdCallSt
  loc_14E93A4:                 var_A8 = CVar(CLng(2)) 'Long
  loc_14E93A9:                 var_E4 = 1
  loc_14E93B2:                 var_104 = "10.00"
  loc_14E93BB:                 LateIdCallSt
  loc_14E93C5:                 Set var_168 = Nothing 
  loc_14E93E9:                 Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_14E93F8:                 global_100 = CInt(2)
  loc_14E9403:                 global_104 = 1
  loc_14E9415:                 Call Proc_311_43_1223DEC(1, "Select '' as O,Name As Employee,Code From Employee Order by Name")
  loc_14E941D:               Else
  loc_14E9425:                 If (var_98 = "GratuityReport") Then
  loc_14E942C:                   Set var_16C = Me.FGrid
  loc_14E9432:                   var_A8 = CVar(CLng(0)) 'Long
  loc_14E9437:                   var_E4 = 0
  loc_14E9440:                   var_104 = "Up To Date"
  loc_14E9449:                   LateIdCallSt
  loc_14E9454:                   var_A8 = CVar(CLng(0)) 'Long
  loc_14E9459:                   var_E4 = &H10E
  loc_14E9465:                   LateIdCallSt
  loc_14E9470:                   var_E4 = CVar(CLng(0)) 'Long
  loc_14E9475:                   var_104 = 1
  loc_14E94A7:                   var_134 = CVar(CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy"))) 'String
  loc_14E94AE:                   LateIdCallSt
  loc_14E94C1:                   Set var_16C = Nothing 
  loc_14E94E5:                   Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_14E94F4:                   global_100 = CInt(0)
  loc_14E94FF:                   global_104 = 1
  loc_14E9511:                   Call Proc_311_43_1223DEC(1, "Select '' as O,Name As Employee,Code From Employee Order by Name")
  loc_14E9516:                 End If
  loc_14E9516:               End If
  loc_14E9516:             End If
  loc_14E9516:           End If
  loc_14E9516:         End If
  loc_14E9516:       End If
  loc_14E9516:     End If
  loc_14E9516:   End If
  loc_14E9516: End If
  loc_14E9516: Exit Sub
End Sub

Public Sub Proc_311_45_105FC60(arg_C, arg_10) '105FC60
  'Data Table: 4C934C
  Dim var_98 As Variant
  Dim var_B8 As Long
  Dim var_CC As MSHFlexGrid
  Dim var_86 As Integer
  loc_105F9E8: var_98 = CVar(CLng(arg_C)) 'Long
  loc_105F9ED: var_B8 = 1
  loc_105FA1C: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_105FA3F:   MsgBox(CVar(arg_10 & " Should not be Blank."), &H40, "Validation Check", var_100, var_110)
  loc_105FA53:   Set var_CC = Me.FGrid
  loc_105FA77:   Me.FGrid.Row = CVar(CLng(arg_C))
  loc_105FA92:   Me.FGrid.Col = 1
  loc_105FA9C:   var_86 = 0
  loc_105FAA2: Else
  loc_105FAAF:   If ((arg_C = 0) Or (arg_C = 1)) Then
  loc_105FAB6:     var_98 = CVar(CLng(arg_C)) 'Long
  loc_105FABB:     var_B8 = 1
  loc_105FAEB:     If (CDate(CStr(Me.FGrid.TextMatrix))) < MemVar_1F920F4) Then
  loc_105FB19:       MsgBox(CVar(arg_10 & " Should not be less than ") & CDate(MemVar_1F920F4), &H40, "Validation Check", var_110, var_120)
  loc_105FB2F:       Set var_CC = Me.FGrid
  loc_105FB53:       Me.FGrid.Row = CVar(CLng(arg_C))
  loc_105FB6E:       Me.FGrid.Col = 1
  loc_105FB78:       var_86 = 0
  loc_105FB7E:     Else
  loc_105FB82:       var_98 = CVar(CLng(arg_C)) 'Long
  loc_105FB87:       var_B8 = 1
  loc_105FBB7:       If (CDate(CStr(Me.FGrid.TextMatrix))) > MemVar_1F920FC) Then
  loc_105FBE5:         MsgBox(CVar(arg_10 & " Should not be greater than ") & CDate(MemVar_1F920FC), &H40, "Validation Check", var_110, var_120)
  loc_105FBFB:         Set var_CC = Me.FGrid
  loc_105FC1F:         Me.FGrid.Row = CVar(CLng(arg_C))
  loc_105FC3A:         Me.FGrid.Col = 1
  loc_105FC44:         var_86 = 0
  loc_105FC4A:       Else
  loc_105FC4C:         var_86 = &HFF
  loc_105FC4F:       End If
  loc_105FC4F:     End If
  loc_105FC52:   Else
  loc_105FC54:     var_86 = &HFF
  loc_105FC57:   End If
  loc_105FC57: End If
  loc_105FC57: Proc_311_45_105FC60 = var_86
  loc_105FC5D: StAryRecCopy
End Sub

Public Sub Proc_311_46_12427F0
  'Data Table: 4C934C
  Dim var_9C As Variant
  Dim var_BC As Long
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_140 As Variant
  Dim var_160 As Long
  Dim var_230 As Variant
  Dim var_250 As Long
  Dim var_274 As Variant
  Dim var_1D0 As Variant
  Dim var_E8 As String
  Dim unk_4C9399 As Connection15
  Dim Me As Recordset15
  loc_1242308: On Error Goto loc_12427E0
  loc_124230E: var_9C = CVar(CLng(1)) 'Long
  loc_1242313: var_BC = 0
  loc_1242344: Call Proc_311_45_105FC60(CInt(1), CStr(Me.FGrid.TextMatrix)))
  loc_1242358: If (var_EA = 0) Then
  loc_1242360:   global_80 = 0
  loc_1242363:   Exit Sub
  loc_1242364: End If
  loc_1242370: Set var_D0 = Me.Check1
  loc_1242376: Call 0.Method_Proc_311_46_12427F00 (1, var_F0, var_E2, global_80)
  loc_124237E: var_EA = var_F0.Value
  loc_1242394: If (CLng(var_E2) = 0) Then
  loc_12423B2:   Call Proc_311_41_12821D8(global_156, 1, CByte(1))
  loc_12423BD:   global_140 = var_E8
  loc_12423CD:   If (global_80 = 0) Then
  loc_12423D0:     Exit Sub
  loc_12423D1:   End If
  loc_12423D1: End If
  loc_12423DD: Set var_D0 = Me.Check1
  loc_12423E3: Call 0.Method_Proc_311_46_12427F00 (2, var_F0, var_E2, var_E8)
  loc_12423EB: var_E0 = var_F0.Value
  loc_1242401: If (CLng(var_E2) = 0) Then
  loc_124241F:   Call Proc_311_41_12821D8(global_160, 2, CByte(1))
  loc_124242A:   global_144 = var_E8
  loc_124243A:   If (global_80 = 0) Then
  loc_124243D:     Exit Sub
  loc_124243E:   End If
  loc_124243E: End If
  loc_1242441: var_9C = CVar(CLng(1)) 'Long
  loc_1242446: var_BC = 1
  loc_1242468: var_140 = CVar(CLng(1)) 'Long
  loc_124246D: var_160 = 1
  loc_124247A: Set var_F0 = Me.FGrid
  loc_124248F: var_230 = CVar(CLng(1)) 'Long
  loc_1242494: var_250 = 1
  loc_12424A7: var_274 = Me.FGrid.TextMatrix)
  loc_12424C7: var_120 = "MMM"
  loc_12424D7: var_130 = Format(CVar(CStr(Me.FGrid.TextMatrix))), var_120)
  loc_1242506: var_1D0 = (1 + Format(CVar(CStr(var_F0.TextMatrix))), "YYYY"))
  loc_124257F: Proc_6_7_F25D88(var_324, DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & Format(CVar(CStr(var_274)), "mmm/yyyy"))))), 1, "01/", 1 & Ucase(var_1D0) & "' And E.Joining_Date<=", var_130, 1)
  loc_12425D5: Set var_D0 = Me.Check1
  loc_12425DB: Call 0.Method_Proc_311_46_12427F00 (1, var_F0, var_E2, " WHERE S.Mth_year='", var_274)
  loc_12425E3: var_250 = var_F0.Value
  loc_12425F9: If (CLng(var_E2) = 0) Then
  loc_1242614:   var_8C = CStr(1 & var_324) & " And E.Code in (" & global_140 & ") "
  loc_124261E: End If
  loc_124262A: Set var_D0 = Me.Check1
  loc_1242630: Call 0.Method_Proc_311_46_12427F00 (2, var_F0, var_E2)
  loc_1242638: var_230 = var_F0.Value
  loc_124264E: If (CLng(var_E2) = 0) Then
  loc_1242669:   var_8C = var_8C & " And E.DepartMent in (" & global_144 & ") "
  loc_1242673: End If
  loc_124267A: var_88 = " Select E.Name as EmployeeName, E.F_Name,E.Joining_Date,Case When IsNull(S.Emp_Basic,0)<>0 Then IsNull(S.Emp_Basic,0) Else E.Basic END Basic,E.BankAcNo,S.Work_Day,S.CL,S.Leave,S.Sunday,S.Holiday,S.Absent,S.Income_Tax,S.Medical,S.Loan,S.Loan_Bal,S.Adv_Bal,S.Basic as CalBasic, EMPCategory.Name As CatDesc,S.DA as CalDA,S.HRA,S.LTA,S.Other_Allow,S.Other_Deduc,S.Conveyance as CalConv,S.PF,S.ESI,S.Advance,S.Net_Salary as NetSalary,S.Medical,Desig.Name As Designation,S.OverTime,S.OverTimeAmt,G.Name Department From (((Employee E Right Join Salary S on E.Code = S.Emp_Code) Left Join EMPCategory ON E.Category = EMPCategory.Code) Left Join Desig ON E.Designation = Desig.Code Left Join GoDownMast G ON E.Department = G.Code) " & var_8C
  loc_1242680: var_9C = CVar(CLng(2)) 'Long
  loc_1242685: var_BC = 1
  loc_1242692: Set var_D0 = Me.FGrid
  loc_1242698: var_E0 = var_D0.TextMatrix)
  loc_12426A3: var_E8 = CStr(var_E0)
  loc_12426B4: If (var_E8 = "Yes") Then
  loc_12426BE:   var_88 = var_88 & " And (IsNull(E.BankAcNo,'')='')"
  loc_12426C4: Else
  loc_12426CB:   var_88 = var_88 & " And (IsNull(E.BankAcNo,'')<>'') "
  loc_12426CE: End If
  loc_12426E4: unk_4C9399.Execute var_88, var_E0, -1
  loc_12426F5: Set global_88 = var_D0
  loc_124271A: If (Me.RecordCount <= 0) Then
  loc_1242723:   Call 0.Method_arg_50 (var_E8, var_D0, var_BC)
  loc_1242744:   MsgBox("** No Records Found to Print **", &H40, CVar(var_E8), var_120, var_130)
  loc_1242759:   global_80 = 0
  loc_124275C:   Exit Sub
  loc_124275D: End If
  loc_1242760: var_9C = CVar(CLng(2)) 'Long
  loc_1242765: var_BC = 1
  loc_1242783: var_E8 = CStr(Me.FGrid.TextMatrix))
  loc_1242794: If (var_E8 = "Yes") Then
  loc_124279D:   global_76 = "prPayRollRegOther"
  loc_12427A4: Else
  loc_12427AA:   global_76 = "prPayRollReg"
  loc_12427AE: End If
  loc_12427B4: Call 0.Method_arg_50 (var_E8, var_BC, var_9C, global_80)
  loc_12427D1: global_72 = CStr(Ucase(CVar(var_E8)))
  loc_12427DF: Exit Sub
  loc_12427E0: ' Referenced from: 1242308
  loc_12427E8: Proc_6_60_E62BC4(0, var_9C)
  loc_12427ED: Exit Sub
End Sub

Public Sub Proc_311_47_1165124
  'Data Table: 4C934C
  Dim var_A4 As Variant
  Dim var_C4 As Long
  Dim var_D8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_144 As Variant
  Dim var_164 As Long
  Dim var_238 As Variant
  Dim var_258 As Long
  Dim var_27C As Variant
  Dim var_1F8 As String
  Dim var_1D8 As Variant
  Dim var_F0 As String
  Dim unk_4C9399 As Connection15
  Dim Me As Recordset15
  loc_1164DC8: On Error Goto loc_1165115
  loc_1164DCE: var_A4 = CVar(CLng(1)) 'Long
  loc_1164DD3: var_C4 = 0
  loc_1164E04: Call Proc_311_45_105FC60(CInt(1), CStr(Me.FGrid.TextMatrix)))
  loc_1164E18: If (var_F2 = 0) Then
  loc_1164E20:   global_80 = 0
  loc_1164E23:   Exit Sub
  loc_1164E24: End If
  loc_1164E27: var_A4 = CVar(CLng(1)) 'Long
  loc_1164E2C: var_C4 = 1
  loc_1164E4E: var_144 = CVar(CLng(1)) 'Long
  loc_1164E53: var_164 = 1
  loc_1164E75: var_238 = CVar(CLng(1)) 'Long
  loc_1164E7A: var_258 = 1
  loc_1164E8D: var_27C = Me.FGrid.TextMatrix)
  loc_1164E99: var_1F8 = "WHERE S.Mth_year= '"
  loc_1164EAD: var_124 = "MMM"
  loc_1164EBD: var_134 = Format(CVar(CStr(Me.FGrid.TextMatrix))), var_124)
  loc_1164EEC: var_1D8 = (1 + Format(CVar(CStr(Me.FGrid.TextMatrix))), "YYYY"))
  loc_1164F65: Proc_6_7_F25D88(var_32C, DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & Format(CVar(CStr(var_27C)), "mmm/yyyy"))))), 1, "01/", 1 & Ucase(var_1D8) & "' And E.Joining_Date<=", var_134, 1)
  loc_1164FB2: var_A4 = CVar(CLng(2)) 'Long
  loc_1164FB7: var_C4 = 1
  loc_1164FE6: If (CStr(Me.FGrid.TextMatrix)) <> "All") Then
  loc_1164FF0:   var_F0 = CStr(1 & var_32C) & " And E.Category in ( '"
  loc_1164FF6:   var_A4 = CVar(CLng(2)) 'Long
  loc_1164FFB:   var_C4 = 2
  loc_1165008:   Set var_D8 = Me.FGrid
  loc_116500E:   var_E8 = var_D8.TextMatrix)
  loc_1165024:   var_94 = var_C4 & CStr(var_E8) & "') "
  loc_1165036: End If
  loc_116503D: var_F0 = " Select E.Name as EmployeeName, E.F_Name,E.Joining_Date,E.PF As EmpPF,E.PF_Code,S.Basic as CalBasic,Desig.Name As DesigDesc,S.DA as CalDA,S.PF As CalPF,S.Net_Salary as NetSalary From ((Employee E Left Join Salary S on E.Code = S.Emp_Code) Left Join Desig ON E.Designation = Desig.Code) " & var_94
  loc_1165060: unk_4C9399.Execute var_F0 & " Order By E.Name ", var_E8, -1
  loc_1165071: Set global_88 = var_D8
  loc_1165096: If (Me.RecordCount <= 0) Then
  loc_116509F:   Call 0.Method_arg_50 (var_F0, var_D8, var_A4, var_F0, var_C4, var_A4)
  loc_11650C0:   MsgBox("** No Records Found to Print **", &H40, CVar(var_F0), var_124, var_134)
  loc_11650D5:   global_80 = 0
  loc_11650D8:   Exit Sub
  loc_11650D9: End If
  loc_11650DF: global_76 = "prPFState"
  loc_11650E9: Call 0.Method_arg_50 (var_F0, global_80, var_1F8, var_27C)
  loc_1165106: global_72 = CStr(Ucase(CVar(var_F0)))
  loc_1165114: Exit Sub
  loc_1165115: ' Referenced from: 1164DC8
  loc_116511D: Proc_6_60_E62BC4(0, var_258, var_238)
  loc_1165122: Exit Sub
End Sub

Public Sub Proc_311_48_11D9F40
  'Data Table: 4C934C
  Dim var_9C As Variant
  Dim var_BC As Long
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_140 As Variant
  Dim var_160 As Long
  Dim var_230 As Variant
  Dim var_250 As Long
  Dim var_274 As Variant
  Dim var_1D0 As Variant
  Dim var_E8 As String
  Dim unk_4C9399 As Connection15
  Dim Me As Recordset15
  loc_11D9B20: On Error Goto loc_11D9F2F
  loc_11D9B26: var_9C = CVar(CLng(1)) 'Long
  loc_11D9B2B: var_BC = 0
  loc_11D9B5C: Call Proc_311_45_105FC60(CInt(1), CStr(Me.FGrid.TextMatrix)))
  loc_11D9B70: If (var_EA = 0) Then
  loc_11D9B78:   global_80 = 0
  loc_11D9B7B:   Exit Sub
  loc_11D9B7C: End If
  loc_11D9B88: Set var_D0 = Me.Check1
  loc_11D9B8E: Call 0.Method_Proc_311_48_11D9F400 (1, var_F0, var_E2, global_80)
  loc_11D9B96: var_EA = var_F0.Value
  loc_11D9BAC: If (CLng(var_E2) = 0) Then
  loc_11D9BCA:   Call Proc_311_41_12821D8(global_156, 1, CByte(1))
  loc_11D9BD5:   global_140 = var_E8
  loc_11D9BE5:   If (global_80 = 0) Then
  loc_11D9BE8:     Exit Sub
  loc_11D9BE9:   End If
  loc_11D9BE9: End If
  loc_11D9BEC: var_9C = CVar(CLng(1)) 'Long
  loc_11D9BF1: var_BC = 1
  loc_11D9C13: var_140 = CVar(CLng(1)) 'Long
  loc_11D9C18: var_160 = 1
  loc_11D9C25: Set var_F0 = Me.FGrid
  loc_11D9C3A: var_230 = CVar(CLng(1)) 'Long
  loc_11D9C3F: var_250 = 1
  loc_11D9C52: var_274 = Me.FGrid.TextMatrix)
  loc_11D9C72: var_120 = "MMM"
  loc_11D9C82: var_130 = Format(CVar(CStr(Me.FGrid.TextMatrix))), var_120)
  loc_11D9CB1: var_1D0 = (1 + Format(CVar(CStr(var_F0.TextMatrix))), "YYYY"))
  loc_11D9D2A: Proc_6_7_F25D88(var_324, DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & Format(CVar(CStr(var_274)), "mmm/yyyy"))))), 1, "01/", 1 & Ucase(var_1D0) & "' And E.Joining_Date<=", var_130, 1)
  loc_11D9D80: Set var_D0 = Me.Check1
  loc_11D9D86: Call 0.Method_Proc_311_48_11D9F400 (1, var_F0, var_E2, "WHERE S.Mth_year= '", var_274)
  loc_11D9D8E: var_250 = var_F0.Value
  loc_11D9DA4: If (CLng(var_E2) = 0) Then
  loc_11D9DBF:   var_8C = CStr(1 & var_324) & " And E.DepartMent in (" & global_140 & ") "
  loc_11D9DC9: End If
  loc_11D9DCC: var_9C = CVar(CLng(2)) 'Long
  loc_11D9DD1: var_BC = 1
  loc_11D9E00: If (CStr(Me.FGrid.TextMatrix)) <> "All") Then
  loc_11D9E0A:   var_E8 = var_8C & " And E.Category in ( '"
  loc_11D9E10:   var_9C = CVar(CLng(2)) 'Long
  loc_11D9E15:   var_BC = 2
  loc_11D9E22:   Set var_D0 = Me.FGrid
  loc_11D9E28:   var_E0 = var_D0.TextMatrix)
  loc_11D9E3E:   var_8C = var_BC & CStr(var_E0) & "') "
  loc_11D9E50: End If
  loc_11D9E57: var_E8 = "SELECT E.Code As EmpCode,E.Name As EmpName,E.F_Name,E.Joining_Date,EmpCategory.Name As CatDesc,S.Work_Day,S.CL,S.Leave,S.Sunday,S.Holiday,S.Absent,G.Name Department FROM ((Employee E LEFT JOIN EmpCategory ON E.Category=EmpCategory.Code) Left Join Salary S on E.Code = S.Emp_Code Left Join GoDownMast G ON E.Department = G.Code) " & var_8C
  loc_11D9E7A: unk_4C9399.Execute var_E8 & " Order By EmpCategory.Code,E.Name", var_E0, -1
  loc_11D9E8B: Set global_88 = var_D0
  loc_11D9EB0: If (Me.RecordCount <= 0) Then
  loc_11D9EB9:   Call 0.Method_arg_50 (var_E8, var_D0, var_9C, var_E8, var_BC)
  loc_11D9ECF:   var_9C = "** No Records Found to Print **"
  loc_11D9EDA:   MsgBox(var_9C, &H40, CVar(var_E8), var_120, var_130)
  loc_11D9EEF:   global_80 = 0
  loc_11D9EF2:   Exit Sub
  loc_11D9EF3: End If
  loc_11D9EF9: global_76 = "prAttendanceRep"
  loc_11D9F03: Call 0.Method_arg_50 (var_E8, global_80, var_9C)
  loc_11D9F20: global_72 = CStr(Ucase(CVar(var_E8)))
  loc_11D9F2E: Exit Sub
  loc_11D9F2F: ' Referenced from: 11D9B20
  loc_11D9F37: Proc_6_60_E62BC4(0, var_230)
  loc_11D9F3C: Exit Sub
End Sub

Public Sub Proc_311_49_15D8B30
  'Data Table: 4C934C
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_184 As Variant
  Dim var_144 As Variant
  Dim var_194 As Variant
  Dim var_B0 As Double
  Dim var_1B4 As Variant
  Dim var_B8 As Double
  Dim var_100 As Variant
  Dim var_164 As Variant
  Dim unk_4C9399 As Connection15
  Dim var_90 As Recordset15
  Dim var_1A4 As Variant
  Dim var_1DC As String
  Dim var_1EC As Variant
  Dim var_1F0 As Variant
  Dim var_1F4 As Field20
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_234 As Variant
  Dim var_1D4 As Variant
  Dim var_204 As Variant
  Dim var_D0 As Double
  Dim var_A8 As Double
  Dim var_D8 As Double
  Dim var_E0 As Double
  Dim var_248 As Recordset15
  Dim var_174 As Variant
  Dim var_1C4 As Variant
  Dim var_224 As Variant
  Dim var_244 As Variant
  Dim Me As Recordset15
  loc_15D77F0: On Error Goto loc_15D8B20
  loc_15D77F6: var_F0 = CVar(CLng(1)) 'Long
  loc_15D77FB: var_110 = 1
  loc_15D781A: var_184 = "01/"
  loc_15D784C: var_B0 = CDate(1 & Format(CVar(CStr(Me.FGrid.TextMatrix))), "mm/yyyy"))
  loc_15D7864: var_F0 = CVar(CLng(1)) 'Long
  loc_15D7869: var_110 = 1
  loc_15D7888: var_184 = "01/"
  loc_15D78AC: var_174 = Format(CVar(CStr(Me.FGrid.TextMatrix))), "mm/yyyy")
  loc_15D78C8: var_1C4 = DateAdd("m", CDbl(1), CDate(CDate(1 & var_174)))
  loc_15D78DA: var_1D4 = DateAdd("d", CDbl(&HFF), var_1C4)
  loc_15D78E4: var_B8 = CDate(var_1D4)
  loc_15D7902: var_F0 = CVar(CLng(1)) 'Long
  loc_15D7907: var_110 = 0
  loc_15D7914: Set var_124 = Me.FGrid
  loc_15D791A: var_134 = var_124.TextMatrix)
  loc_15D7938: Call Proc_311_45_105FC60(CInt(1), CStr(var_134))
  loc_15D794C: If (var_1DE = 0) Then
  loc_15D7954:   global_80 = 0
  loc_15D7957:   Exit Sub
  loc_15D7958: End If
  loc_15D7972: Call Proc_311_55_F83CF0(New, var_124, global_80, var_1DE, var_134, var_110, var_F0, var_B8)
  loc_15D797D: Set global_88 = var_124
  loc_15D7994: Proc_6_7_F25D88(var_134, var_B8, "select code As EmpCode,name As EmpName,F_Name As FName,OP_Loan,OP_Advance from employee Where Joining_Date<=", 1, var_184, var_134)
  loc_15D79CC: unk_4C9399.Execute CStr(vbNullString & var_134 & vbNullString), var_134, -1
  loc_15D79D7: Set var_90 = var_124
  loc_15D79F4: If (var_90.RecordCount > 0) Then
  loc_15D79F7:   ' Referenced from: 15D8A87
  loc_15D7A06:   If Not(var_90.EOF) Then
  loc_15D7A11:     If (MemVar_1F923AC = "A") Then
  loc_15D7A1A:       var_F0 = "EmpCode"
  loc_15D7A26:       var_124 = var_90.Fields
  loc_15D7A46:       Proc_6_7_F25D88(var_174, var_B0, var_124, var_F0)
  loc_15D7A51:       var_1A4 = 0
  loc_15D7A78:       var_164 = "Select IIF(isnull(sum(amount)),0,sum(amount)) as loan From Loan Where Emp_Code='" & var_124.Item(var_F0).Value & "' and V_Type='LO' and V_Date<" 
  loc_15D7A96:       unk_4C9399.Execute CStr(var_164 & var_174 & vbNullString), var_1C4, -1
  loc_15D7A9E:       var_1EC = var_1EC.Fields
  loc_15D7AA6:       var_1A4 = var_1F0.Item(var_1F0)
  loc_15D7AAE:       var_1F4 = var_1F4.Value
  loc_15D7B0F:       Proc_6_7_F25D88(var_174, var_B0, CSng(var_1D4), var_1D4)
  loc_15D7B1A:       var_1A4 = 0
  loc_15D7B38:       var_144 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as loanret FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_15D7B5F:       unk_4C9399.Execute CStr(var_144 & "' and V_Type IN ('LR','LR1') and V_Date<" & var_174 & vbNullString), var_1C4, -1
  loc_15D7B67:       var_1EC = var_1EC.Fields
  loc_15D7B6F:       var_1A4 = var_1F0.Item(var_1F0)
  loc_15D7B77:       var_1F4 = var_1F4.Value
  loc_15D7BD8:       Proc_6_7_F25D88(var_174, var_B0, CSng(var_1D4), var_1D4)
  loc_15D7BE3:       var_1A4 = 0
  loc_15D7C01:       var_144 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as ADVA FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_15D7C28:       unk_4C9399.Execute CStr(var_144 & "' and V_Type='ADE' and V_Date<" & var_174 & vbNullString), var_1C4, -1
  loc_15D7C30:       var_1EC = var_1EC.Fields
  loc_15D7C38:       var_1A4 = var_1F0.Item(var_1F0)
  loc_15D7C40:       var_1F4 = var_1F4.Value
  loc_15D7CA1:       Proc_6_7_F25D88(var_174, var_B0, CSng(var_1D4), var_1D4)
  loc_15D7CAC:       var_1A4 = 0
  loc_15D7CCA:       var_144 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as ARET FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_15D7CF1:       unk_4C9399.Execute CStr(var_144 & "' and V_Type IN ('AR1','AR2') and V_Date<" & var_174 & vbNullString), var_1C4, -1
  loc_15D7CF9:       var_1EC = var_1EC.Fields
  loc_15D7D01:       var_1A4 = var_1F0.Item(var_1F0)
  loc_15D7D09:       var_1F4 = var_1F4.Value
  loc_15D7D6A:       Proc_6_7_F25D88(var_174, var_B0, CSng(var_1D4), var_1D4)
  loc_15D7D7A:       Proc_6_7_F25D88(var_1C4, var_B8, var_B0)
  loc_15D7D85:       var_234 = 0
  loc_15D7DA3:       var_144 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as loan FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_15D7DDA:       unk_4C9399.Execute CStr(var_144 & "' and V_Type='LO' and V_Date>=" & var_174 & " AND V_DATE<=" & var_1C4 & vbNullString), var_224, -1
  loc_15D7DE2:       var_1EC = var_1EC.Fields
  loc_15D7DEA:       var_234 = var_1F0.Item(var_1F0)
  loc_15D7DF2:       var_1F4 = var_1F4.Value
  loc_15D7E59:       Proc_6_7_F25D88(var_174, var_B0, CSng(var_244))
  loc_15D7E69:       Proc_6_7_F25D88(var_1C4, var_B8, var_244)
  loc_15D7E74:       var_234 = 0
  loc_15D7E92:       var_144 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as loanret FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_15D7EC9:       unk_4C9399.Execute CStr(var_144 & "' and v_TYPE IN ('LR','LR1') and V_Date>=" & var_174 & " AND V_DATE<=" & var_1C4 & vbNullString), var_224, -1
  loc_15D7ED1:       var_1EC = var_1EC.Fields
  loc_15D7ED9:       var_234 = var_1F0.Item(var_1F0)
  loc_15D7EE1:       var_1F4 = var_1F4.Value
  loc_15D7F48:       Proc_6_7_F25D88(var_174, var_B0, CSng(var_244))
  loc_15D7F58:       Proc_6_7_F25D88(var_1C4, var_B8, var_244)
  loc_15D7F63:       var_234 = 0
  loc_15D7F81:       var_144 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as ADVA FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_15D7FB8:       unk_4C9399.Execute CStr(var_144 & "' and V_Type='ADE' and V_Date>=" & var_174 & " AND V_DATE<=" & var_1C4 & vbNullString), var_224, -1
  loc_15D7FC0:       var_1EC = var_1EC.Fields
  loc_15D7FC8:       var_234 = var_1F0.Item(var_1F0)
  loc_15D7FD0:       var_1F4 = var_1F4.Value
  loc_15D8037:       Proc_6_7_F25D88(var_174, var_B0, CSng(var_244))
  loc_15D8047:       Proc_6_7_F25D88(var_1C4, var_B8, var_244)
  loc_15D8052:       var_234 = 0
  loc_15D8070:       var_144 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as ARET FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_15D8090:       var_1D4 = var_144 & "' and V_Type IN ('AR1','AR2') and V_Date>=" & var_174 & " AND V_DATE<=" & var_1C4 
  loc_15D80A7:       unk_4C9399.Execute CStr(var_1D4 & vbNullString), var_224, -1
  loc_15D80AF:       var_1EC = var_1EC.Fields
  loc_15D80B7:       var_234 = var_1F0.Item(var_1F0)
  loc_15D80BF:       var_1F4 = var_1F4.Value
  loc_15D80C8:       var_E0 = CSng(var_244)
  loc_15D80F7:     Else
  loc_15D80FF:       If (MemVar_1F923AC = "S") Then
  loc_15D8134:         Proc_6_7_F25D88(var_174, var_B0, var_E0)
  loc_15D813F:         var_1A4 = 0
  loc_15D8166:         var_164 = "Select isnull(sum(amount),0) as loan From Loan Where Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type='LO' and V_Date<" 
  loc_15D8184:         unk_4C9399.Execute CStr(var_164 & var_174 & vbNullString), var_1C4, -1
  loc_15D818C:         var_1EC = var_1EC.Fields
  loc_15D8194:         var_1A4 = var_1F0.Item(var_1F0)
  loc_15D819C:         var_1F4 = var_1F4.Value
  loc_15D81A5:         var_98 = CSng(var_1D4)
  loc_15D81FD:         Proc_6_7_F25D88(var_174, var_B0, var_98, var_1D4)
  loc_15D8208:         var_1A4 = 0
  loc_15D822F:         var_164 = "SELECT isnull(sum(amount),0) as loanret FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type IN ('LR','LR1') and v_date<" 
  loc_15D824D:         unk_4C9399.Execute CStr(var_164 & var_174 & vbNullString), var_1C4, -1
  loc_15D8255:         var_1EC = var_1EC.Fields
  loc_15D825D:         var_1A4 = var_1F0.Item(var_1F0)
  loc_15D8265:         var_1F4 = var_1F4.Value
  loc_15D826E:         var_A0 = CSng(var_1D4)
  loc_15D82C6:         Proc_6_7_F25D88(var_174, var_B0, var_A0, var_1D4)
  loc_15D82D1:         var_1A4 = 0
  loc_15D82F8:         var_164 = "SELECT isnull(sum(amount),0) as ADVA FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type='ADE' and v_date<" 
  loc_15D8316:         unk_4C9399.Execute CStr(var_164 & var_174 & vbNullString), var_1C4, -1
  loc_15D831E:         var_1EC = var_1EC.Fields
  loc_15D8326:         var_1A4 = var_1F0.Item(var_1F0)
  loc_15D832E:         var_1F4 = var_1F4.Value
  loc_15D8337:         var_C0 = CSng(var_1D4)
  loc_15D838F:         Proc_6_7_F25D88(var_174, var_B0, var_C0, var_1D4)
  loc_15D839A:         var_1A4 = 0
  loc_15D83C1:         var_164 = "SELECT isnull(sum(amount),0) as ARET FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type IN ('AR1','AR2') and v_date<" 
  loc_15D83DF:         unk_4C9399.Execute CStr(var_164 & var_174 & vbNullString), var_1C4, -1
  loc_15D83E7:         var_1EC = var_1EC.Fields
  loc_15D83EF:         var_1A4 = var_1F0.Item(var_1F0)
  loc_15D83F7:         var_1F4 = var_1F4.Value
  loc_15D8400:         var_C8 = CSng(var_1D4)
  loc_15D8458:         Proc_6_7_F25D88(var_174, var_B0, var_C8, var_1D4)
  loc_15D8468:         Proc_6_7_F25D88(var_1C4, var_B8, var_244)
  loc_15D8473:         var_234 = 0
  loc_15D849A:         var_164 = "SELECT isnull(sum(amount),0) as loan FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type='LO' and V_DATE>=" 
  loc_15D84C8:         unk_4C9399.Execute CStr(var_164 & var_174 & " AND V_DATE<=" & var_1C4 & vbNullString), var_224, -1
  loc_15D84D0:         var_1EC = var_1EC.Fields
  loc_15D84D8:         var_234 = var_1F0.Item(var_1F0)
  loc_15D84E0:         var_1F4 = var_1F4.Value
  loc_15D84E9:         var_D0 = CSng(var_244)
  loc_15D8547:         Proc_6_7_F25D88(var_174, var_B0, var_D0)
  loc_15D8557:         Proc_6_7_F25D88(var_1C4, var_B8, var_244)
  loc_15D8562:         var_234 = 0
  loc_15D8589:         var_164 = "SELECT isnull(sum(amount),0) as loanret FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type IN ('LR','LR1') and V_DATE>=" 
  loc_15D85B7:         unk_4C9399.Execute CStr(var_164 & var_174 & " AND V_DATE<=" & var_1C4 & vbNullString), var_224, -1
  loc_15D85BF:         var_1EC = var_1EC.Fields
  loc_15D85C7:         var_234 = var_1F0.Item(var_1F0)
  loc_15D85CF:         var_1F4 = var_1F4.Value
  loc_15D85D8:         var_A8 = CSng(var_244)
  loc_15D8636:         Proc_6_7_F25D88(var_174, var_B0, var_A8)
  loc_15D8646:         Proc_6_7_F25D88(var_1C4, var_B8, var_244)
  loc_15D8651:         var_234 = 0
  loc_15D8678:         var_164 = "SELECT isnull(sum(amount),0) as ADVA FROM LOAN WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type='ADE' and V_DATE>=" 
  loc_15D86A6:         unk_4C9399.Execute CStr(var_164 & var_174 & " AND V_DATE<=" & var_1C4 & vbNullString), var_224, -1
  loc_15D86AE:         var_1EC = var_1EC.Fields
  loc_15D86B6:         var_234 = var_1F0.Item(var_1F0)
  loc_15D86BE:         var_1F4 = var_1F4.Value
  loc_15D86C7:         var_D8 = CSng(var_244)
  loc_15D86F9:         var_F0 = "EmpCode"
  loc_15D8725:         Proc_6_7_F25D88(var_174, var_B0, var_D8)
  loc_15D8735:         Proc_6_7_F25D88(var_1C4, var_B8, var_244)
  loc_15D8740:         var_234 = 0
  loc_15D8756:         var_100 = "SELECT isnull(sum(amount),0) as ARET FROM LOAN WHERE Emp_Code='"
  loc_15D8777:         var_1B4 = var_100 & var_90.Fields.Item(var_F0).Value & "' and V_Type IN ('AR1','AR2') and V_DATE>=" & var_174 & " AND V_DATE<=" 
  loc_15D878B:         var_1DC = CStr(var_1B4 & var_1C4 & vbNullString)
  loc_15D8795:         unk_4C9399.Execute var_1DC, var_224, -1
  loc_15D879D:         var_1EC = var_1EC.Fields
  loc_15D87A5:         var_234 = var_1F0.Item(var_1F0)
  loc_15D87AD:         var_1F4 = var_1F4.Value
  loc_15D87B6:         var_E0 = CSng(var_244)
  loc_15D87E2:       End If
  loc_15D87E2:     End If
  loc_15D87E8:     Set var_248 = global_88 
  loc_15D87F7:     var_248.AddNew var_F0, var_100
  loc_15D881B:     var_134 = CVar(var_90.Fields.Item("EmpName")) 'Address
  loc_15D8829:     var_248.Collect = "EmpName"
  loc_15D8853:     var_134 = CVar(var_90.Fields.Item("EmpCode")) 'Address
  loc_15D8861:     var_248.Collect = "EmpCode"
  loc_15D888B:     var_134 = CVar(var_90.Fields.Item("FName")) 'Address
  loc_15D8899:     var_248.Collect = "FName"
  loc_15D88D5:     var_144 = (var_90.Fields.Item("OP_Loan").Value + CVar(var_98))
  loc_15D88E0:     var_164 = (CVar(var_98) & var_90.Fields.Item("OP_Loan").Value - CVar(var_A0))
  loc_15D88EB:     var_174 = (CVar(var_98) & var_90.Fields.Item("OP_Loan").Value & "' and V_Type IN ('AR1','AR2') and V_DATE>=" + CVar(var_D0))
  loc_15D88F6:     var_194 = (var_174 - CVar(var_A8))
  loc_15D8904:     var_248.Collect = "Amount"
  loc_15D894A:     var_144 = (var_90.Fields.Item("OP_Advance").Value + CVar(var_C0))
  loc_15D8955:     var_164 = (CVar(var_C0) & var_90.Fields.Item("OP_Advance").Value - CVar(var_C8))
  loc_15D8960:     var_174 = (CVar(var_C0) & var_90.Fields.Item("OP_Advance").Value & "' and V_Type IN ('AR1','AR2') and V_DATE>=" + CVar(var_D8))
  loc_15D896B:     var_194 = (var_174 - CVar(var_E0))
  loc_15D8979:     var_248.Collect = "LoanInstall"
  loc_15D8994:     var_F0 = "OP_Loan"
  loc_15D89B0:     var_134 = var_90.Fields.Item(var_F0).Value
  loc_15D89BB:     var_100 = CVar(var_98) 'Double
  loc_15D89BF:     var_144 = (var_134 + var_100)
  loc_15D89CA:     var_164 = (var_100 & var_90.Fields.Item(var_F0).Value - CVar(var_A0))
  loc_15D89D5:     var_174 = (var_100 & var_90.Fields.Item(var_F0).Value & "' and V_Type IN ('AR1','AR2') and V_DATE>=" + CVar(var_D0))
  loc_15D89E0:     var_194 = (var_174 - CVar(var_A8))
  loc_15D8A0E:     var_1C4 = (var_100 & var_90.Fields.Item(var_F0).Value & "' and V_Type IN ('AR1','AR2') and V_DATE>=" & var_174 + var_90.Fields.Item("OP_Advance").Value)
  loc_15D8A19:     var_1D4 = (var_1C4 + CVar(var_C0))
  loc_15D8A24:     var_204 = (var_90.Fields.Item("OP_Advance").Value & var_1C4 - CVar(var_C8))
  loc_15D8A2F:     var_224 = (var_90.Fields.Item("OP_Advance").Value & var_1C4 & vbNullString + CVar(var_D8))
  loc_15D8A3A:     var_244 = (var_224 - CVar(var_E0))
  loc_15D8A48:     var_248.Collect = "LoanBal"
  loc_15D8A74:     var_248.Update var_F0, var_100
  loc_15D8A7B:     Set var_248 = Nothing 
  loc_15D8A82:     var_90.MoveNext
  loc_15D8A87:     GoTo loc_15D79F7
  loc_15D8A8A:   End If
  loc_15D8A8A: End If
  loc_15D8AA1: If (Me.RecordCount <= 0) Then
  loc_15D8AAA:   Call 0.Method_arg_50 (var_1DC, var_244, var_100 & var_90.Fields.Item(var_F0).Value & "' and V_Type IN ('AR1','AR2') and V_DATE>=" & var_174, var_100 & var_90.Fields.Item(var_F0).Value & "' and V_Type IN ('AR1','AR2') and V_DATE>=" & var_174, var_134, var_134)
  loc_15D8AC5:   var_134 = "** No Records Found to Print **"
  loc_15D8ACB:   MsgBox(var_134, &H40, CVar(var_1DC), var_100 & var_90.Fields.Item("** No Records Found to Print **").Value & "' and V_Type IN ('AR1','AR2') and V_DATE>=", var_174)
  loc_15D8AE0:   global_80 = 0
  loc_15D8AE3:   Exit Sub
  loc_15D8AE4: End If
  loc_15D8AEA: global_76 = "prLoanAdvSumm1"
  loc_15D8AF4: Call 0.Method_arg_50 (var_1DC, global_80, var_134, var_E0)
  loc_15D8B11: global_72 = CStr(Ucase(CVar(var_1DC)))
  loc_15D8B1F: Exit Sub
  loc_15D8B20: ' Referenced from: 15D77F0
  loc_15D8B28: Proc_6_60_E62BC4(0, var_244)
  loc_15D8B2D: Exit Sub
End Sub

Public Sub Proc_311_50_16840C4
  'Data Table: 4C934C
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_108 As String
  Dim var_124 As Variant
  Dim var_154 As Variant
  Dim unk_4C9399 As Connection15
  Dim var_90 As Recordset15
  Dim var_204 As Integer
  Dim var_CC As Variant
  Dim var_134 As Variant
  Dim var_1F0 As Variant
  Dim var_1F4 As Fields15
  Dim var_208 As Field20
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_1EC As Variant
  Dim var_218 As Variant
  Dim var_29C As Recordset15
  Dim var_AC As Double
  Dim var_2A0 As Recordset15
  Dim var_A4 As Recordset15
  Dim var_2A4 As Recordset15
  Dim Me As Recordset15
  loc_16828E8: On Error Goto loc_16840B6
  loc_16828EE: var_BC = CVar(CLng(0)) 'Long
  loc_16828F3: var_DC = 0
  loc_1682924: Call Proc_311_45_105FC60(CInt(0), CStr(Me.FGrid.TextMatrix)))
  loc_1682938: If (var_10A = 0) Then
  loc_1682940:   global_80 = 0
  loc_1682943:   Exit Sub
  loc_1682944: End If
  loc_1682947: var_BC = CVar(CLng(1)) 'Long
  loc_168294C: var_DC = 0
  loc_168295F: var_100 = Me.FGrid.TextMatrix)
  loc_168297D: Call Proc_311_45_105FC60(CInt(1), CStr(var_100))
  loc_1682991: If (var_10A = 0) Then
  loc_1682999:   global_80 = 0
  loc_168299C:   Exit Sub
  loc_168299D: End If
  loc_16829A9: Set var_F0 = Me.Check1
  loc_16829AF: Call 0.Method_Proc_311_50_16840C40 (1, var_110, var_102, global_80, var_10A, var_100, var_DC)
  loc_16829B7: var_BC = var_110.Value
  loc_16829CD: If (CLng(var_102) = 0) Then
  loc_16829EB:   Call Proc_311_41_12821D8(global_156, 1, CByte(1))
  loc_16829F6:   global_140 = var_108
  loc_1682A06:   If (global_80 = 0) Then
  loc_1682A09:     Exit Sub
  loc_1682A0A:   End If
  loc_1682A0A: End If
  loc_1682A16: Set var_F0 = Me.Check1
  loc_1682A1C: Call 0.Method_Proc_311_50_16840C40 (1, var_110, var_102, var_108, global_80)
  loc_1682A24: var_10A = var_110.Value
  loc_1682A3A: If (CLng(var_102) = 0) Then
  loc_1682A55:   var_8C = var_8C & " and Employee.Code in ( " & global_140 & ") "
  loc_1682A5F: End If
  loc_1682A79: Call Proc_311_56_FBE5A8(New, var_F0, var_100)
  loc_1682A84: Set global_88 = var_F0
  loc_1682AA5: Set var_F0 = Me.FGrid
  loc_1682AAB: var_100 = var_F0.TextMatrix)
  loc_1682ABC: Proc_6_7_F25D88(var_134, CVar(CStr(var_100)), 1, CVar(CLng(1)))
  loc_1682AFC: unk_4C9399.Execute CStr("select code As EmpCode,name As EmpName,OP_Loan,op_Advance from Employee Where Joining_Date<=" & var_134 & CVar(var_8C)), var_100, -1
  loc_1682B07: Set var_90 = var_F0
  loc_1682B24: If (var_90.RecordCount > 0) Then
  loc_1682B27:   ' Referenced from: 1683F71
  loc_1682B36:   If Not(var_90.EOF) Then
  loc_1682B41:     If (MemVar_1F923AC = "A") Then
  loc_1682B47:       var_BC = CVar(CLng(2)) 'Long
  loc_1682B7B:       If (CStr(Me.FGrid.TextMatrix)) = "Advance") Then
  loc_1682BD1:         Proc_6_7_F25D88(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), 1)
  loc_1682BDC:         var_204 = 0
  loc_1682BFA:         var_124 = "Select IIF(isnull(sum(amount)),0,sum(amount)) as loan From Loan Where Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_1682C21:         unk_4C9399.Execute CStr(var_124 & "' and V_Type='ADE' and V_Date<" & var_19C & vbNullString), var_1EC, -1
  loc_1682C29:         var_1F0 = var_1F0.Fields
  loc_1682C31:         var_204 = var_1F4.Item(var_1F4)
  loc_1682C39:         var_208 = var_208.Value
  loc_1682CC1:         Proc_6_7_F25D88(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), CSng(var_218))
  loc_1682CCC:         var_204 = 0
  loc_1682CEA:         var_124 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_1682D11:         unk_4C9399.Execute CStr(var_124 & "' and V_Type IN ('AR1','AR2') and V_Date<" & var_19C & vbNullString), var_1EC, -1
  loc_1682D19:         var_1F0 = var_1F0.Fields
  loc_1682D21:         var_204 = var_1F4.Item(var_1F4)
  loc_1682D29:         var_208 = var_208.Value
  loc_1682D32:         var_A0 = CSng(var_218)
  loc_1682D61:       Else
  loc_1682D64:         var_BC = CVar(CLng(2)) 'Long
  loc_1682D98:         If (CStr(Me.FGrid.TextMatrix)) = "Loan") Then
  loc_1682DA1:           var_BC = "EmpCode"
  loc_1682DEE:           Proc_6_7_F25D88(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), 1, var_BC, var_A0)
  loc_1682DF9:           var_204 = 0
  loc_1682E17:           var_124 = "Select IIF(isnull(sum(amount)),0,sum(amount)) as loan From Loan Where Emp_Code='" & var_90.Fields.Item(var_BC).Value 
  loc_1682E3E:           unk_4C9399.Execute CStr(var_124 & "' and V_Type='LO' and V_Date<" & var_19C & vbNullString), var_1EC, -1
  loc_1682E46:           var_1F0 = var_1F0.Fields
  loc_1682E4E:           var_204 = var_1F4.Item(var_1F4)
  loc_1682E56:           var_208 = var_208.Value
  loc_1682EDE:           Proc_6_7_F25D88(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), CSng(var_218), var_218)
  loc_1682EE9:           var_204 = 0
  loc_1682F07:           var_124 = "SELECT IIF(isnull(sum(amount)),0,sum(amount)) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value 
  loc_1682F2E:           unk_4C9399.Execute CStr(var_124 & "' and V_Type IN ('LR','LR1') and V_Date<" & var_19C & vbNullString), var_1EC, -1
  loc_1682F36:           var_1F0 = var_1F0.Fields
  loc_1682F3E:           var_204 = var_1F4.Item(var_1F4)
  loc_1682F46:           var_208 = var_208.Value
  loc_1682F4F:           var_A0 = CSng(var_218)
  loc_1682F7B:         End If
  loc_1682F7B:       End If
  loc_1682F7E:     Else
  loc_1682F86:       If (MemVar_1F923AC = "S") Then
  loc_1682F8C:         var_BC = CVar(CLng(2)) 'Long
  loc_1682FC0:         If (CStr(Me.FGrid.TextMatrix)) = "Advance") Then
  loc_1682FC9:           var_BC = "EmpCode"
  loc_1683016:           Proc_6_7_F25D88(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), 1, var_BC, var_A0)
  loc_1683021:           var_204 = 0
  loc_1683048:           var_134 = "Select isnull(sum(amount),0) as loan From Loan Where Emp_Code='" & var_90.Fields.Item(var_BC).Value & "' and V_Type='ADE' and V_Date<" 
  loc_1683066:           unk_4C9399.Execute CStr(var_134 & var_19C & vbNullString), var_1EC, -1
  loc_168306E:           var_1F0 = var_1F0.Fields
  loc_1683076:           var_204 = var_1F4.Item(var_1F4)
  loc_168307E:           var_208 = var_208.Value
  loc_1683106:           Proc_6_7_F25D88(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), CSng(var_218), var_218, var_218)
  loc_1683111:           var_204 = 0
  loc_1683138:           var_134 = "SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type IN ('AR1','AR2') and V_Date<" 
  loc_1683156:           unk_4C9399.Execute CStr(var_134 & var_19C & vbNullString), var_1EC, -1
  loc_168315E:           var_1F0 = var_1F0.Fields
  loc_1683166:           var_204 = var_1F4.Item(var_1F4)
  loc_168316E:           var_208 = var_208.Value
  loc_1683177:           var_A0 = CSng(var_218)
  loc_16831A6:         Else
  loc_16831A9:           var_BC = CVar(CLng(2)) 'Long
  loc_16831DD:           If (CStr(Me.FGrid.TextMatrix)) = "Loan") Then
  loc_16831E6:             var_BC = "EmpCode"
  loc_1683233:             Proc_6_7_F25D88(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), 1, var_BC, var_A0)
  loc_168323E:             var_204 = 0
  loc_1683265:             var_134 = "Select isnull(sum(amount),0) as loan From Loan Where Emp_Code='" & var_90.Fields.Item(var_BC).Value & "' and V_Type='LO' and V_Date<" 
  loc_1683283:             unk_4C9399.Execute CStr(var_134 & var_19C & vbNullString), var_1EC, -1
  loc_168328B:             var_1F0 = var_1F0.Fields
  loc_1683293:             var_204 = var_1F4.Item(var_1F4)
  loc_168329B:             var_208 = var_208.Value
  loc_16832A4:             var_98 = CSng(var_218)
  loc_1683323:             Proc_6_7_F25D88(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), var_98, var_218, var_218)
  loc_168332E:             var_204 = 0
  loc_1683355:             var_134 = "SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item("EmpCode").Value & "' and V_Type IN ('LR','LR1') and V_Date<" 
  loc_1683373:             unk_4C9399.Execute CStr(var_134 & var_19C & vbNullString), var_1EC, -1
  loc_168337B:             var_1F0 = var_1F0.Fields
  loc_1683383:             var_204 = var_1F4.Item(var_1F4)
  loc_168338B:             var_208 = var_208.Value
  loc_1683394:             var_A0 = CSng(var_218)
  loc_16833C0:           End If
  loc_16833C0:         End If
  loc_16833C0:       End If
  loc_16833C0:     End If
  loc_16833C8:     If (MemVar_1F923AC = "A") Then
  loc_16833CE:       var_BC = CVar(CLng(2)) 'Long
  loc_1683402:       If (CStr(Me.FGrid.TextMatrix)) = "Advance") Then
  loc_168340B:         var_BC = "EmpCode"
  loc_1683458:         Proc_6_7_F25D88(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), 1, var_BC, var_A0)
  loc_1683489:         Proc_6_7_F25D88(var_248, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), CVar(CStr(Me.FGrid.TextMatrix))), CVar(CStr(Me.FGrid.TextMatrix))))
  loc_168349B:         var_CC = "SELECT V_DATE,Emp_Code,SUM(IIF(V_TYPE IN ('ADE'),Amount,-Amount)) AS mBal,SUM(IIF(V_TYPE IN ('ADE'),Amount,0)) AS mAmt,SUM(IIF(V_TYPE IN ('ADE'),Installment,0)) AS mLInstall,SUM(IIF(V_TYPE IN ('ADE'),0,Amount)) AS mRefund FROM LOAN WHERE V_TYPE IN('ADE','AR1','AR2') AND EMP_CODE='"
  loc_16834AC:         var_134 = "SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item(var_BC).Value & "' AND V_DATE>=" 
  loc_16834DA:         unk_4C9399.Execute CStr(var_134 & var_19C & " and V_DATE<=" & var_248 & " Group By Emp_Code,V_Date "), var_298, -1
  loc_16834E5:         Set var_A4 = var_1F4
  loc_168351A:       Else
  loc_168351D:         var_BC = CVar(CLng(2)) 'Long
  loc_1683551:         If (CStr(Me.FGrid.TextMatrix)) = "Loan") Then
  loc_168355A:           var_BC = "EmpCode"
  loc_16835A7:           Proc_6_7_F25D88(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), 1, var_BC)
  loc_16835D8:           Proc_6_7_F25D88(var_248, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), var_1F4)
  loc_16835EA:           var_CC = "SELECT V_DATE,Emp_Code,SUM(IIF(V_TYPE IN ('LO'),Amount,-Amount)) AS mBal,SUM(IIF(V_TYPE IN ('LO'),Amount,0)) AS mAmt,SUM(IIF(V_TYPE IN ('LO'),Installment,0)) AS mLInstall,SUM(IIF(V_TYPE IN ('LO'),0,Amount)) AS mRefund FROM LOAN WHERE V_TYPE IN('LO','LR','LR1') AND EMP_CODE='"
  loc_16835FB:           var_134 = "SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item(var_BC).Value & "' AND V_DATE>=" 
  loc_1683629:           unk_4C9399.Execute CStr(var_134 & var_19C & " and V_DATE<=" & var_248 & " Group By Emp_Code,V_Date "), var_298, -1
  loc_1683634:           Set var_A4 = var_1F4
  loc_1683666:         End If
  loc_1683666:       End If
  loc_1683669:     Else
  loc_1683671:       If (MemVar_1F923AC = "S") Then
  loc_1683677:         var_BC = CVar(CLng(2)) 'Long
  loc_16836AB:         If (CStr(Me.FGrid.TextMatrix)) = "Advance") Then
  loc_16836B4:           var_BC = "EmpCode"
  loc_1683701:           Proc_6_7_F25D88(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), 1, var_BC)
  loc_1683732:           Proc_6_7_F25D88(var_248, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), var_1F4)
  loc_1683744:           var_CC = "SELECT V_DATE,Emp_Code,mBal=SUM(CASE V_TYPE WHEN 'ADE' THEN Amount ELSE -Amount END),mAmt=SUM(CASE V_TYPE WHEN 'ADE' THEN Amount ELSE 0 END),mLInstall=SUM(CASE V_TYPE WHEN 'ADE' THEN Installment ELSE 0 END),mRefund=SUM(CASE V_TYPE WHEN 'ADE' THEN 0 ELSE Amount END) FROM LOAN WHERE V_TYPE IN('ADE','AR1','AR2') AND EMP_CODE='"
  loc_1683755:           var_134 = "SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item(var_BC).Value & "' AND V_DATE>=" 
  loc_1683783:           unk_4C9399.Execute CStr(var_134 & var_19C & " and V_DATE<=" & var_248 & " Group By Emp_Code,V_Date "), var_298, -1
  loc_168378E:           Set var_A4 = var_1F4
  loc_16837C3:         Else
  loc_16837C6:           var_BC = CVar(CLng(2)) 'Long
  loc_16837FA:           If (CStr(Me.FGrid.TextMatrix)) = "Loan") Then
  loc_1683803:             var_BC = "EmpCode"
  loc_1683850:             Proc_6_7_F25D88(var_19C, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), 1, var_BC)
  loc_1683881:             Proc_6_7_F25D88(var_248, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), var_1F4)
  loc_1683893:             var_CC = "SELECT V_DATE,Emp_Code,mBal=SUM(CASE V_TYPE WHEN 'LO' THEN Amount ELSE -Amount END),mAmt=SUM(CASE V_TYPE WHEN 'LO' THEN Amount ELSE 0 END),mLInstall=SUM(CASE V_TYPE WHEN 'LO' THEN Installment ELSE 0 END),mRefund=SUM(CASE V_TYPE WHEN 'LO' THEN 0 ELSE Amount END) FROM LOAN WHERE V_TYPE IN('LO','LR','LR1') AND EMP_CODE='"
  loc_16838A4:             var_134 = "SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item(var_BC).Value & "' AND V_DATE>=" 
  loc_16838D2:             unk_4C9399.Execute CStr(var_134 & var_19C & " and V_DATE<=" & var_248 & " Group By Emp_Code,V_Date "), var_298, -1
  loc_16838DD:             Set var_A4 = var_1F4
  loc_168390F:           End If
  loc_168390F:         End If
  loc_168390F:       End If
  loc_168390F:     End If
  loc_1683912:     var_BC = CVar(CLng(2)) 'Long
  loc_1683917:     var_DC = 1
  loc_1683935:     var_108 = CStr(Me.FGrid.TextMatrix))
  loc_1683946:     If (var_108 = "Loan") Then
  loc_168394F:       var_BC = "OP_Loan"
  loc_1683973:       var_CC = 0
  loc_1683985:       If CBool(var_90.Fields.Item(var_BC).Value <> var_CC) Then
  loc_168398E:         Set var_29C = global_88 
  loc_168399D:         var_29C.AddNew var_BC, var_CC
  loc_16839C1:         var_100 = CVar(var_90.Fields.Item("EmpName")) 'Address
  loc_16839CF:         var_29C.Collect = "EmpName"
  loc_16839F9:         var_100 = CVar(var_90.Fields.Item("EmpCode")) 'Address
  loc_1683A07:         var_29C.Collect = "EmpCode"
  loc_1683A31:         var_100 = CVar(var_90.Fields.Item("OP_Loan")) 'Address
  loc_1683A3F:         var_29C.Collect = "OPLoan"
  loc_1683A4D:         var_CC = CDate(MemVar_1F920F4)
  loc_1683A5B:         var_29C.Collect = "LOAN_DATE"
  loc_1683A7F:         var_100 = CVar(var_90.Fields.Item("OP_Loan")) 'Address
  loc_1683A8D:         var_29C.Collect = "Balance"
  loc_1683A98:         var_CC = 0
  loc_1683AA7:         var_29C.Collect = "Amount"
  loc_1683AB2:         var_BC = "Refund"
  loc_1683ABB:         var_29C.Collect = var_BC
  loc_1683ACB:         var_29C.Update var_BC, 0
  loc_1683AD2:         Set var_29C = Nothing 
  loc_1683AD6:       End If
  loc_1683B07:       var_124 = (var_90.Fields.Item("OP_Loan").Value + CVar(var_98))
  loc_1683B12:       var_134 = ("SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item("OP_Loan").Value - CVar(var_A0))
  loc_1683B17:       var_AC = CSng(var_134)
  loc_1683B2B:     Else
  loc_1683B31:       var_BC = "OP_Advance"
  loc_1683B55:       var_CC = 0
  loc_1683B67:       If CBool(var_90.Fields.Item(var_BC).Value <> var_CC) Then
  loc_1683B70:         Set var_2A0 = global_88 
  loc_1683B7F:         var_2A0.AddNew var_BC, var_CC
  loc_1683BA3:         var_100 = CVar(var_90.Fields.Item("EmpName")) 'Address
  loc_1683BB1:         var_2A0.Collect = "EmpName"
  loc_1683BDB:         var_100 = CVar(var_90.Fields.Item("EmpCode")) 'Address
  loc_1683BE9:         var_2A0.Collect = "EmpCode"
  loc_1683C13:         var_100 = CVar(var_90.Fields.Item("OP_Advance")) 'Address
  loc_1683C21:         var_2A0.Collect = "OPLoan"
  loc_1683C2F:         var_CC = CDate(MemVar_1F920F4)
  loc_1683C3D:         var_2A0.Collect = "LOAN_DATE"
  loc_1683C61:         var_100 = CVar(var_90.Fields.Item("OP_Loan")) 'Address
  loc_1683C6F:         var_2A0.Collect = "Balance"
  loc_1683C7A:         var_CC = 0
  loc_1683C89:         var_2A0.Collect = "Amount"
  loc_1683C94:         var_BC = "Refund"
  loc_1683C9D:         var_2A0.Collect = var_BC
  loc_1683CAD:         var_2A0.Update var_BC, 0
  loc_1683CB4:         Set var_2A0 = Nothing 
  loc_1683CB8:       End If
  loc_1683CBE:       var_BC = "OP_Advance"
  loc_1683CE5:       var_CC = CVar(var_98) 'Double
  loc_1683CE9:       var_124 = (var_90.Fields.Item(var_BC).Value + var_CC)
  loc_1683CF4:       var_134 = ("SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item(var_BC).Value - CVar(var_A0))
  loc_1683CF9:       var_AC = CSng(var_134)
  loc_1683D0A:     End If
  loc_1683D1E:     If (var_A4.RecordCount > 0) Then
  loc_1683D21:       ' Referenced from: 1683F66
  loc_1683D30:       If Not(var_A4.EOF) Then
  loc_1683D39:         Set var_2A4 = global_88 
  loc_1683D48:         var_2A4.AddNew var_BC, var_CC
  loc_1683D6C:         var_100 = CVar(var_90.Fields.Item("EmpName")) 'Address
  loc_1683D7A:         var_2A4.Collect = "EmpName"
  loc_1683DA4:         var_100 = CVar(var_90.Fields.Item("EmpCode")) 'Address
  loc_1683DB2:         var_2A4.Collect = "EmpCode"
  loc_1683DC0:         var_CC = CVar(var_AC) 'Double
  loc_1683DCE:         var_2A4.Collect = "OPLoan"
  loc_1683DF2:         var_100 = CVar(var_A4.Fields.Item("V_DATE")) 'Address
  loc_1683E00:         var_2A4.Collect = "LOAN_DATE"
  loc_1683E3C:         var_124 = (CVar(var_AC) + var_A4.Fields.Item("mBal").Value)
  loc_1683E4A:         var_2A4.Collect = "Balance"
  loc_1683E7C:         var_100 = CVar(var_A4.Fields.Item("mAmt")) 'Address
  loc_1683E8A:         var_2A4.Collect = "Amount"
  loc_1683E98:         var_BC = "mRefund"
  loc_1683EB4:         var_100 = CVar(var_A4.Fields.Item(var_BC)) 'Address
  loc_1683EB9:         var_CC = "Refund"
  loc_1683EC2:         var_2A4.Collect = var_CC
  loc_1683ED8:         var_2A4.Update var_BC, var_CC
  loc_1683F06:         var_100 = var_A4.Fields.Item("mAmt").Value
  loc_1683F0E:         var_124 = (CVar(var_AC) + var_100)
  loc_1683F34:         var_134 = var_A4.Fields.Item("mRefund").Value
  loc_1683F3C:         var_154 = ("SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item("mAmt").Value - var_134)
  loc_1683F41:         var_AC = CSng(Me.FGrid.TextMatrix))
  loc_1683F5B:         var_A4.MoveNext
  loc_1683F62:         Set var_2A4 = Nothing 
  loc_1683F66:         GoTo loc_1683D21
  loc_1683F69:       End If
  loc_1683F69:     End If
  loc_1683F6C:     var_90.MoveNext
  loc_1683F71:     GoTo loc_1682B27
  loc_1683F74:   End If
  loc_1683F74: End If
  loc_1683F8B: If (Me.RecordCount <= 0) Then
  loc_1683F94:   Call 0.Method_arg_50 (var_108, var_AC, var_100, var_100, "SELECT isnull(sum(amount),0) as loanret From Loan WHERE Emp_Code='" & var_90.Fields.Item("mAmt").Value, var_100)
  loc_1683FB5:   MsgBox("** No Records Found to Print **", &H40, CVar(var_108), var_134, Me.FGrid.TextMatrix))
  loc_1683FCA:   global_80 = 0
  loc_1683FCD:   Exit Sub
  loc_1683FCE: End If
  loc_1683FD4: global_76 = "prLoanReg"
  loc_1683FDB: var_BC = CVar(CLng(2)) 'Long
  loc_1683FE0: var_DC = 1
  loc_168400F: If (CStr(Me.FGrid.TextMatrix)) = "Advance") Then
  loc_168402F:   global_72 = CStr(Ucase("Advance Register"))
  loc_1684040: Else
  loc_1684043:   var_BC = CVar(CLng(2)) 'Long
  loc_1684048:   var_DC = 1
  loc_1684077:   If (CStr(Me.FGrid.TextMatrix)) = "Loan") Then
  loc_168407A:     var_BC = "Loan Register"
  loc_1684097:     global_72 = CStr(Ucase(var_BC))
  loc_16840A5:   End If
  loc_16840A5: End If
  loc_16840AA: Set var_A4 = Nothing
  loc_16840B2: Set var_90 = Nothing
  loc_16840B5: Exit Sub
  loc_16840B6: ' Referenced from: 16828E8
  loc_16840BE: Proc_6_60_E62BC4(0, var_DC, var_BC, var_DC, var_BC, 0)
  loc_16840C3: Exit Sub
End Sub

Public Sub Proc_311_51_16210AC
  'Data Table: 4C934C
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_110 As String
  Dim var_15C As Variant
  Dim unk_4C9399 As Connection15
  Dim var_98 As Recordset15
  Dim var_D4 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_248 As Variant
  Dim var_304 As Variant
  Dim var_3A8 As Variant
  Dim var_438 As String
  Dim var_448 As Variant
  Dim var_480 As Variant
  Dim var_4A0 As Variant
  Dim var_524 As Variant
  Dim var_628 As Variant
  Dim var_314 As Variant
  Dim var_3B8 As Variant
  Dim var_514 As Variant
  Dim var_5B8 As Variant
  Dim var_73C As Variant
  Dim var_75C As Variant
  Dim var_794 As Variant
  Dim var_8FC As Variant
  Dim var_91C As Variant
  Dim var_AC As Recordset15
  Dim var_940 As Recordset15
  Dim Me As Recordset15
  loc_161FCDC: On Error Goto loc_162109C
  loc_161FCE2: var_C4 = CVar(CLng(0)) 'Long
  loc_161FCE7: var_E4 = 0
  loc_161FD18: Call Proc_311_45_105FC60(CInt(0), CStr(Me.FGrid.TextMatrix)))
  loc_161FD2C: If (var_112 = 0) Then
  loc_161FD34:   global_80 = 0
  loc_161FD37:   Exit Sub
  loc_161FD38: End If
  loc_161FD3B: var_C4 = CVar(CLng(1)) 'Long
  loc_161FD40: var_E4 = 0
  loc_161FD71: Call Proc_311_45_105FC60(CInt(1), CStr(Me.FGrid.TextMatrix)))
  loc_161FD85: If (var_112 = 0) Then
  loc_161FD8D:   global_80 = 0
  loc_161FD90:   Exit Sub
  loc_161FD91: End If
  loc_161FD94: var_C4 = CVar(CLng(2)) 'Long
  loc_161FD99: var_E4 = 0
  loc_161FDAC: var_108 = Me.FGrid.TextMatrix)
  loc_161FDCA: Call Proc_311_45_105FC60(CInt(2), CStr(var_108))
  loc_161FDDE: If (var_112 = 0) Then
  loc_161FDE6:   global_80 = 0
  loc_161FDE9:   Exit Sub
  loc_161FDEA: End If
  loc_161FDF6: Set var_F8 = Me.Check1
  loc_161FDFC: Call 0.Method_Proc_311_51_16210AC0 (1, var_118, var_10A, global_80, var_112, var_108, var_E4)
  loc_161FE04: var_C4 = var_118.Value
  loc_161FE1A: If (CLng(var_10A) = 0) Then
  loc_161FE38:   Call Proc_311_41_12821D8(global_156, 1, CByte(1))
  loc_161FE43:   global_140 = var_110
  loc_161FE53:   If (global_80 = 0) Then
  loc_161FE56:     Exit Sub
  loc_161FE57:   End If
  loc_161FE57: End If
  loc_161FE63: Set var_F8 = Me.Check1
  loc_161FE69: Call 0.Method_Proc_311_51_16210AC0 (1, var_118, var_10A, var_110, global_80)
  loc_161FE71: var_112 = var_118.Value
  loc_161FE87: If (CLng(var_10A) = 0) Then
  loc_161FEA2:   var_8C = var_8C & " and Employee.Code in ( " & global_140 & ") "
  loc_161FEAC: End If
  loc_161FEC6: Call Proc_311_57_FA34A4(New, var_F8, var_108)
  loc_161FED1: Set global_88 = var_F8
  loc_161FEDB: var_C4 = CVar(CLng(2)) 'Long
  loc_161FEE0: var_E4 = 1
  loc_161FF0F: If (CStr(Me.FGrid.TextMatrix)) = "All") Then
  loc_161FF15:   var_90 = " And V_Type in ('LO','ADE')"
  loc_161FF1B:   var_94 = " And V_Type in ('LR','LR1','AR1','AR2')"
  loc_161FF21: Else
  loc_161FF24:   var_C4 = CVar(CLng(2)) 'Long
  loc_161FF29:   var_E4 = 1
  loc_161FF58:   If (CStr(Me.FGrid.TextMatrix)) = "Advance") Then
  loc_161FF5E:     var_90 = " And V_Type in ('ADE')"
  loc_161FF64:     var_94 = " And V_Type in ('AR1','AR2')"
  loc_161FF6A:   Else
  loc_161FF6D:     var_C4 = CVar(CLng(2)) 'Long
  loc_161FF72:     var_E4 = 1
  loc_161FFA1:     If (CStr(Me.FGrid.TextMatrix)) = "Loan") Then
  loc_161FFA7:       var_90 = " And V_Type in ('LO')"
  loc_161FFAD:       var_94 = " And V_Type in ('LR','LR1')"
  loc_161FFB0:     End If
  loc_161FFB0:   End If
  loc_161FFB0: End If
  loc_161FFBD: var_E4 = 1
  loc_161FFCA: Set var_F8 = Me.FGrid
  loc_161FFD0: var_108 = var_F8.TextMatrix)
  loc_161FFE1: Proc_6_7_F25D88(var_13C, CVar(CStr(var_108)), var_E4, CVar(CLng(1)), "select code As EmpCode,name As EmpName,OP_Loan,op_Advance from Employee Where Joining_Date<=", var_E4, CVar(CLng(1)))
  loc_1620021: unk_4C9399.Execute CStr(var_E4 & var_13C & CVar(var_8C)), var_108, -1
  loc_162002C: Set var_98 = var_F8
  loc_1620049: If (var_98.RecordCount > 0) Then
  loc_162004C:   ' Referenced from: 1620F29
  loc_162005B:   If Not(var_98.EOF) Then
  loc_1620061:     var_C4 = CVar(CLng(2)) 'Long
  loc_1620066:     var_E4 = 1
  loc_1620095:     If (CStr(Me.FGrid.TextMatrix)) = "All") Then
  loc_1620098:       var_C4 = "select 'OPA' as V_type,'"
  loc_16200A8:       var_E4 = "' as V_Date,Code as Emp_Code,OP_Advance as CR,0 as DR,'Opening Advance' as Rem From Employee where OP_Advance>0 and Code='"
  loc_16200C3:       var_F8 = var_98.Fields
  loc_16200F8:       var_1B0 = var_C4 & CDate(MemVar_1F920F4) & var_E4 & var_F8.Item("EmpCode").Value & "' Union All " & " select 'OPL' as V_type,'" & CDate(MemVar_1F920F4) 
  loc_1620101:       var_1D0 = var_1B0 & "' as V_Date,Code as Emp_Code,OP_Loan as CR,0 as DR,'Opening Loan' as Rem From Employee where OP_Loan>0 and Code='" 
  loc_1620141:       var_248 = var_1D0 & var_98.Fields.Item("EmpCode").Value & "' Union All  " & " Select V_type, V_Date,Emp_Code,SUM(Amount) AS CR,0 AS DR,max(Remark) as Rem FROM LOAN WHERE Emp_Code='" 
  loc_16201A2:       var_304 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_16201A8:       Proc_6_7_F25D88(var_314, var_304, 1, CVar(CLng(0)), var_248 & var_98.Fields.Item("EmpCode").Value & "' and V_DATE>=", var_E4, var_C4)
  loc_16201E9:       Proc_6_7_F25D88(var_3B8, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), var_F8 & var_314 & " and V_DATE<=", var_C4)
  loc_1620216:       var_448 = var_E4 & var_3B8 & CVar(var_90) & " Group By Emp_Code,V_Date,v_type" & " Union All  " & " Select V_type, V_Date,Emp_Code,0 AS CR,SUM(Amount) AS DR,max(Remark) as Rem FROM LOAN WHERE Emp_Code='" 
  loc_1620244:       var_480 = var_448 & var_98.Fields.Item("EmpCode").Value 
  loc_162027D:       Proc_6_7_F25D88(var_514, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), var_480 & "' and V_DATE>=")
  loc_1620285:       var_524 = var_C4 & var_514 
  loc_16202BE:       Proc_6_7_F25D88(var_5B8, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_16202E2:       var_628 = var_524 & " and V_DATE<=" & var_5B8 & CVar(var_94) & " Group By Emp_Code,V_Date,v_type" & " order by V_Date" 
  loc_16202E7:       var_88 = CStr(var_628)
  loc_1620361:     Else
  loc_1620364:       var_C4 = CVar(CLng(2)) 'Long
  loc_1620369:       var_E4 = 1
  loc_1620398:       If (CStr(Me.FGrid.TextMatrix)) = "Loan") Then
  loc_162039B:         var_C4 = " select 'OPL' as V_type,'"
  loc_16203AB:         var_E4 = "' as V_Date,Code as Emp_Code,OP_Loan as CR,0 as DR,'Opening Loan' as Rem From Employee where OP_Loan>0 and Code='"
  loc_16203F0:         var_190 = var_C4 & CDate(MemVar_1F920F4) & var_E4 & var_98.Fields.Item("EmpCode").Value & "' Union All  " & " Select V_type, V_Date,Emp_Code,SUM(Amount) AS CR,0 AS DR,max(Remark) as Rem FROM LOAN WHERE Emp_Code='" 
  loc_1620457:         Proc_6_7_F25D88(var_248, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), var_190 & var_98.Fields.Item("EmpCode").Value & "' and V_DATE>=")
  loc_1620498:         Proc_6_7_F25D88(var_304, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)), var_E4 & var_248 & " and V_DATE<=")
  loc_16204F6:         var_438 = "' As V_Date,Q.Emp_Code,R.AmtCr AS CR,Q.AmtDr AS DR,'Previous Loan' as Rem FROM (Select Emp_Code,IsNull(SUM(Amount),0) AmtDr From Loan WHERE Emp_Code='"
  loc_1620541:         Proc_6_7_F25D88(var_480, MemVar_1F920F4, 1 & CVar(CStr(Me.FGrid.TextMatrix))) & var_438 & var_98.Fields.Item("EmpCode").Value & "' And V_Date>=", CVar(CLng(0)))
  loc_1620549:         var_4A0 = var_C4 & var_304 & CVar(var_90) & " Group By Emp_Code,V_Date,v_type" & " Union All " & " Select 'PBL' as V_type,'" & var_480 
  loc_1620582:         Proc_6_7_F25D88(var_524, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_16205A6:         var_5B8 = var_4A0 & " And V_DATE<" & var_524 & CVar(var_94) & " Group By Emp_Code) Q " & " Full Join (Select Emp_Code,IsNull(SUM(Amount),0) AmtCr From Loan WHERE Emp_Code='" 
  loc_16205EC:         Proc_6_7_F25D88(var_628, MemVar_1F920F4, var_5B8 & var_98.Fields.Item("EmpCode").Value & "' And V_Date>=")
  loc_162062D:         Proc_6_7_F25D88(var_6CC, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_1620651:         var_73C = var_E4 & var_628 & " And V_DATE<" & var_6CC & CVar(var_90) & " Group By Emp_Code) R On Q.Emp_Code=R.Emp_Code " & " Union All  " 
  loc_1620688:         var_794 = var_73C & " Select V_type, V_Date,Emp_Code,0 AS CR,SUM(Amount) AS DR,max(Remark) as Rem FROM LOAN WHERE Emp_Code='" & var_98.Fields.Item("EmpCode").Value 
  loc_16206C1:         Proc_6_7_F25D88(var_828, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_1620702:         Proc_6_7_F25D88(var_8CC, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_162071D:         var_91C = var_794 & "' and V_DATE>=" & var_828 & " and V_DATE<=" & var_8CC & CVar(var_94) & " Group By Emp_Code,V_Date,v_type" 
  loc_162072B:         var_88 = CStr(var_91C & " order by V_Date")
  loc_16207E1:       Else
  loc_16207E4:         var_C4 = CVar(CLng(2)) 'Long
  loc_16207E9:         var_E4 = 1
  loc_1620807:         var_110 = CStr(Me.FGrid.TextMatrix))
  loc_1620818:         If (var_110 = "Advance") Then
  loc_162081B:           var_C4 = "select 'OPA' as V_type,'"
  loc_1620823:           var_D4 = CDate(MemVar_1F920F4)
  loc_1620827:           var_108 = var_C4 & var_D4 
  loc_162082B:           var_E4 = "' as V_Date,Code as Emp_Code,OP_Advance as CR,0 as DR,'Opening Advance' as Rem From Employee where OP_Advance>0 and Code='"
  loc_1620846:           var_F8 = var_98.Fields
  loc_1620856:           var_13C = var_F8.Item("EmpCode").Value
  loc_162085E:           var_15C = var_108 & var_E4 & var_13C 
  loc_1620870:           var_190 = var_15C & "' Union All " & " Select V_type, V_Date,Emp_Code,SUM(Amount) AS CR,0 AS DR,max(Remark) as Rem FROM LOAN WHERE Emp_Code='" 
  loc_16208D7:           Proc_6_7_F25D88(var_248, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)), var_190 & var_98.Fields.Item("EmpCode").Value & "' and V_DATE>=")
  loc_1620918:           Proc_6_7_F25D88(var_304, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_1620945:           var_3A8 = var_E4 & var_248 & " and V_DATE<=" & var_304 & CVar(var_90) & " Group By Emp_Code,V_Date,v_type" & " Union All " & " Select 'PBA' as V_type,'" 
  loc_1620976:           var_438 = "' As V_Date,Q.Emp_Code,R.AmtCr AS CR,Q.AmtDr AS DR,'Previous Advance' as Rem FROM (Select Emp_Code,IsNull(SUM(Amount),0) AmtDr From Loan WHERE Emp_Code='"
  loc_16209C1:           Proc_6_7_F25D88(var_480, MemVar_1F920F4, 1 & CVar(CStr(Me.FGrid.TextMatrix))) & var_438 & var_98.Fields.Item("EmpCode").Value & "' And V_Date>=", CVar(CLng(0)))
  loc_1620A02:           Proc_6_7_F25D88(var_524, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_1620A26:           var_5B8 = var_3A8 & var_480 & " And V_DATE<" & var_524 & CVar(var_94) & " Group By Emp_Code) Q " & " Full Join (Select Emp_Code,IsNull(SUM(Amount),0) AmtCr From Loan WHERE Emp_Code='" 
  loc_1620A6C:           Proc_6_7_F25D88(var_628, MemVar_1F920F4, var_5B8 & var_98.Fields.Item("EmpCode").Value & "' And V_Date>=")
  loc_1620AAD:           Proc_6_7_F25D88(var_6CC, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_1620AD1:           var_73C = var_C4 & var_628 & " And V_DATE<" & var_6CC & CVar(var_90) & " Group By Emp_Code) R On Q.Emp_Code=R.Emp_Code " & " Union All  " 
  loc_1620ADA:           var_75C = var_73C & " Select V_type, V_Date,Emp_Code,0 AS CR,SUM(Amount) AS DR,max(Remark) as Rem FROM LOAN WHERE Emp_Code='" 
  loc_1620B41:           Proc_6_7_F25D88(var_828, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(0)))
  loc_1620B82:           Proc_6_7_F25D88(var_8CC, CVar(CStr(Me.FGrid.TextMatrix))), 1, CVar(CLng(1)))
  loc_1620B94:           var_8FC = var_75C & var_98.Fields.Item("EmpCode").Value & "' and V_DATE>=" & var_828 & " and V_DATE<=" & var_8CC & CVar(var_94) 
  loc_1620BAB:           var_88 = CStr(var_8FC & " Group By Emp_Code,V_Date,v_type" & " order by V_Date")
  loc_1620C5E:         End If
  loc_1620C5E:       End If
  loc_1620C5E:     End If
  loc_1620C74:     unk_4C9399.Execute var_88, var_108, -1
  loc_1620C7F:     Set var_AC = var_F8
  loc_1620C88:     ' Referenced from: 1620F1E
  loc_1620C97:     If Not(var_AC.EOF) Then
  loc_1620CA0:       Set var_940 = global_88 
  loc_1620CAF:       var_940.AddNew var_C4, var_D4
  loc_1620CF7:       var_940.Fields.Item("EmpName").Value = CVar(var_98.Fields.Item("EmpName"))
  loc_1620D4B:       var_940.Fields.Item("EmpCode").Value = CVar(var_98.Fields.Item("EmpCode"))
  loc_1620D9F:       var_940.Fields.Item("V_Type").Value = CVar(var_AC.Fields.Item("V_Type"))
  loc_1620DF3:       var_940.Fields.Item("V_Date").Value = CVar(var_AC.Fields.Item("V_DATE"))
  loc_1620E47:       var_940.Fields.Item("Cr").Value = CVar(var_AC.Fields.Item("cr"))
  loc_1620E9B:       var_940.Fields.Item("Dr").Value = CVar(var_AC.Fields.Item("dr"))
  loc_1620EAF:       var_C4 = "rem"
  loc_1620EBB:       var_F8 = var_AC.Fields
  loc_1620ED3:       var_D4 = "Remark"
  loc_1620EEF:       var_940.Fields.Item(var_D4).Value = CVar(var_F8.Item(var_C4))
  loc_1620F0B:       var_940.Update var_C4, var_D4
  loc_1620F12:       Set var_940 = Nothing 
  loc_1620F19:       var_AC.MoveNext
  loc_1620F1E:       GoTo loc_1620C88
  loc_1620F21:     End If
  loc_1620F24:     var_98.MoveNext
  loc_1620F29:     GoTo loc_162004C
  loc_1620F2C:   End If
  loc_1620F2C: End If
  loc_1620F43: If (Me.RecordCount <= 0) Then
  loc_1620F4C:   Call 0.Method_arg_50 (var_110, var_F8)
  loc_1620F6D:   MsgBox("** No Records Found to Print **", &H40, CVar(var_110), var_13C, var_15C)
  loc_1620F82:   global_80 = 0
  loc_1620F85:   Exit Sub
  loc_1620F86: End If
  loc_1620F8C: global_76 = "prLoanLedg"
  loc_1620F93: var_C4 = CVar(CLng(2)) 'Long
  loc_1620F98: var_E4 = 1
  loc_1620FC7: If (CStr(Me.FGrid.TextMatrix)) = "Advance") Then
  loc_1620FE7:   global_72 = CStr(Ucase("Advance Ledger"))
  loc_1620FF8: Else
  loc_1620FFB:   var_C4 = CVar(CLng(2)) 'Long
  loc_1621000:   var_E4 = 1
  loc_162102F:   If (CStr(Me.FGrid.TextMatrix)) = "Loan") Then
  loc_162104F:     global_72 = CStr(Ucase("Loan Ledger"))
  loc_1621060:   Else
  loc_1621060:     var_C4 = "Loan/Advance Ledger"
  loc_162107D:     global_72 = CStr(Ucase(var_C4))
  loc_162108B:   End If
  loc_162108B: End If
  loc_1621090: Set var_AC = Nothing
  loc_1621098: Set var_98 = Nothing
  loc_162109B: Exit Sub
  loc_162109C: ' Referenced from: 161FCDC
  loc_16210A4: Proc_6_60_E62BC4(0, var_E4, var_C4, var_E4)
  loc_16210A9: Exit Sub
End Sub

Public Sub Proc_311_52_1485D34
  'Data Table: 4C934C
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_D4 As Variant
  Dim var_128 As Variant
  Dim var_110 As String
  Dim unk_4C9399 As Connection15
  Dim var_90 As Recordset15
  Dim var_98 As Integer
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_9E As Integer
  Dim var_A8 As Double
  Dim var_138 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_23C As Variant
  Dim var_25C As Variant
  Dim var_94 As Recordset15
  Dim var_96 As Integer
  Dim var_280 As Recordset15
  Dim var_14C As Variant
  Dim var_2E0 As Variant
  Dim var_20C As Variant
  Dim Me As Recordset15
  loc_1485144: On Error Goto loc_1485D25
  loc_148514A: var_C4 = CVar(CLng(0)) 'Long
  loc_148514F: var_E4 = 1
  loc_1485162: var_108 = Me.FGrid.TextMatrix)
  loc_1485180: Call Proc_311_45_105FC60(CInt(0), CStr(var_108))
  loc_1485194: If (var_112 = 0) Then
  loc_148519C:   global_80 = 0
  loc_148519F:   Exit Sub
  loc_14851A0: End If
  loc_14851AC: Set var_F8 = Me.Check1
  loc_14851B2: Call 0.Method_Proc_311_52_1485D340 (1, var_118, var_10A, global_80)
  loc_14851BA: var_112 = var_118.Value
  loc_14851D0: If (CLng(var_10A) = 0) Then
  loc_14851EE:   Call Proc_311_41_12821D8(global_156, 1, CByte(1))
  loc_14851F9:   global_140 = var_110
  loc_1485209:   If (global_80 = 0) Then
  loc_148520C:     Exit Sub
  loc_148520D:   End If
  loc_148520D: End If
  loc_148522A: Proc_6_17_EAA2B0(var_108, MemVar_1F92078, "Select * From Enviro WHERE LOGSITE_CODE=", var_138, -1)
  loc_1485232: var_128 = var_F8 & var_108 
  loc_1485240: unk_4C9399.Execute CStr(var_128), CStr(var_128), var_108
  loc_148524B: Set var_90 = var_F8
  loc_1485271: If (var_90.RecordCount > 0) Then
  loc_148529A:   Proc_6_39_E7C810(var_128, CVar(var_90.Fields.Item("GAppCompYear")))
  loc_14852A3:   var_98 = CInt(var_128)
  loc_14852D6:   Proc_6_39_E7C810(var_128, CVar(var_90.Fields.Item("GMonthConsidered")), var_98)
  loc_14852DF:   var_9A = CInt(var_128)
  loc_1485312:   Proc_6_39_E7C810(var_128, CVar(var_90.Fields.Item("GWorkingDaysInAMonth")), var_9A)
  loc_148531B:   var_9C = CInt(var_128)
  loc_148533F:   var_118 = var_90.Fields.Item("GDaysSalary")
  loc_148534E:   Proc_6_39_E7C810(var_128, CVar(var_118), var_9C)
  loc_1485357:   var_9E = CInt(var_128)
  loc_1485364: End If
  loc_1485371: If ((var_9C = 0) Or (var_9E = 0)) Then
  loc_148538D:   MsgBox("Enviro Gratuity Parameter Not Set!", 0, var_128, var_138, var_14C)
  loc_14853A2:   global_80 = 0
  loc_14853A5:   Exit Sub
  loc_14853A6: End If
  loc_14853B2: Set var_F8 = Me.Check1
  loc_14853B8: Call 0.Method_Proc_311_52_1485D340 (1, var_118, var_10A, global_80)
  loc_14853C0: var_9E = var_118.Value
  loc_14853D6: If (CLng(var_10A) = 0) Then
  loc_14853EA:   var_8C = " Where E.Code in (" & global_140 & ") "
  loc_14853F0: End If
  loc_148540A: Call Proc_311_58_10248B4(New, var_F8)
  loc_1485415: Set global_88 = var_F8
  loc_148541F: var_C4 = CVar(CLng(0)) 'Long
  loc_1485431: Set var_F8 = Me.FGrid
  loc_1485437: var_108 = var_F8.TextMatrix)
  loc_1485447: var_A8 = CDate(CStr(var_108))
  loc_1485453: var_D4 = "Select E.Code As EmpCode,E.name As EmpName,E.F_Name As EmpFName,IsNull(E.Add1,'')+', '+IsNull(E.Add2,'') As Address,Convert(Varchar(11),E.Joining_Date,103) As DOJ,D.Name As Designation,(E.Basic+E.DA) As CurWages,Case When Datediff(yyyy,E.Joining_Date,"
  loc_148545B: var_C4 = var_A8
  loc_1485463: Proc_6_7_F25D88(var_108, var_C4, "Select * From Enviro WHERE LOGSITE_CODE=", var_A8)
  loc_148546B: var_128 = 1 & var_108 
  loc_148546F: var_E4 = ") IS NULL Then 0 Else Datediff(yyyy,E.Joining_Date,"
  loc_1485483: Proc_6_7_F25D88(var_14C, var_A8, var_128 & var_E4)
  loc_148548B: var_15C = var_C4 & var_14C 
  loc_14854AC: Proc_6_7_F25D88(var_1BC, var_A8, var_15C & ") End As JobYear," & "Case When Datediff(mm,E.Joining_Date,")
  loc_14854CC: Proc_6_7_F25D88(var_20C, var_A8)
  loc_14854DD: var_23C = var_E4 & var_1BC & ") IS NULL Then 0 Else Datediff(mm,E.Joining_Date," & var_20C & ")%12 End As JobMonth From Employee E Left Join Desig D On D.Code=E.Designation " 
  loc_14854E7: var_25C = var_23C & CVar(var_8C) 
  loc_148552F: unk_4C9399.Execute CStr(var_25C & " Order By E.Name"), var_108, -1
  loc_148553A: Set var_94 = var_F8
  loc_1485557: If (var_94.RecordCount > 0) Then
  loc_148555C:   var_96 = 1
  loc_148555F:   ' Referenced from: 1485C8A
  loc_148556E:   If Not(var_94.EOF) Then
  loc_1485574:     var_C4 = "JobYear"
  loc_1485597:     Proc_6_39_E7C810(var_128, CVar(var_94.Fields.Item(var_C4)), var_96)
  loc_14855A2:     var_D4 = CVar(var_98) 'Integer
  loc_14855B2:     If (var_128 >= var_D4) Then
  loc_14855BB:       Set var_280 = global_88 
  loc_14855CA:       var_280.AddNew var_C4, var_D4
  loc_14855F7:       var_280.Fields.Item("SNo").Value = CVar(CStr(var_96))
  loc_1485615:       var_F8 = var_94.Fields
  loc_1485651:       var_280.Fields.Item("EmpCode").Value = CVar(Proc_6_38_E68A98(CVar(var_F8.Item("EmpCode")), var_F8))
  loc_14856C7:       var_280.Fields.Item("EmpName").Value = Left(CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("EmpName")))), &H32)
  loc_1485742:       var_280.Fields.Item("EmpFName").Value = Left(CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("EmpFName")))), &H32)
  loc_14857BD:       var_280.Fields.Item("Address").Value = Left(CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Address")))), &H64)
  loc_1485822:       var_280.Fields.Item("DOJ").Value = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("DOJ"))))
  loc_148585F:       var_128 = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Designation")))) 'String
  loc_1485882:       var_280.Fields.Item("Desig").Value = var_128
  loc_14858BD:       Proc_6_47_EF59D0(var_128, CVar(var_94.Fields.Item("CurWages")))
  loc_14858E5:       var_280.Fields.Item("CurWages").Value = var_128
  loc_1485920:       Proc_6_39_E7C810(var_128, CVar(var_94.Fields.Item("JobYear")))
  loc_148594B:       Proc_6_39_E7C810(var_15C, CVar(var_94.Fields.Item("JobYear")))
  loc_1485976:       Proc_6_39_E7C810(var_20C, CVar(var_94.Fields.Item("JobMonth")))
  loc_14859A1:       Proc_6_39_E7C810(var_25C, CVar(var_94.Fields.Item("JobMonth")))
  loc_14859AB:       var_1BC = vbNullString
  loc_1485A1F:       var_2E0 = (IIf((var_128 > 0), CVar(CStr(var_15C) & " Year"), var_1BC) + IIf((var_20C > 0), CVar(" " & CStr(var_25C) & " Month"), vbNullString))
  loc_1485A43:       var_280.Fields.Item("SerPeriod").Value = var_2E0
  loc_1485AAF:       Proc_6_39_E7C810(var_128, CVar(var_94.Fields.Item("JobMonth")))
  loc_1485ADA:       Proc_6_39_E7C810(var_15C, CVar(var_94.Fields.Item("JobYear")))
  loc_1485B05:       Proc_6_39_E7C810(var_1BC, CVar(var_94.Fields.Item("JobYear")))
  loc_1485B1A:       var_17C = (var_15C + 1)
  loc_1485B63:       var_280.Fields.Item("WYear").Value = IIf((var_128 > CVar(var_9A)), CVar(CStr((var_128 > 0))), CVar(CStr(var_1BC)))
  loc_1485B95:       var_C4 = "CurWages"
  loc_1485BB8:       Proc_6_39_E7C810(var_128, CVar(var_94.Fields.Item(var_C4)))
  loc_1485BC6:       var_D4 = "WYear"
  loc_1485BE2:       var_138 = var_280.Fields.Item(var_D4).Value
  loc_1485BEB:       var_110 = CStr(var_138)
  loc_1485BF7:       var_14C = (var_128 * CVar(Val(var_110)))
  loc_1485C19:       Proc_6_47_EF59D0(var_1BC, ((var_14C * CVar(var_9E)) / CVar(var_9C)))
  loc_1485C41:       var_280.Fields.Item("Gratuity").Value = var_1BC
  loc_1485C6E:       var_280.Update var_C4, var_D4
  loc_1485C75:       Set var_280 = Nothing 
  loc_1485C7F:       var_96 = (var_96 + 1)
  loc_1485C82:     End If
  loc_1485C85:     var_94.MoveNext
  loc_1485C8A:     GoTo loc_148555F
  loc_1485C8D:   End If
  loc_1485C8D: End If
  loc_1485CA4: If (Me.RecordCount <= 0) Then
  loc_1485CAD:   Call 0.Method_arg_50 (var_110, var_96)
  loc_1485CCE:   MsgBox("** No Records Found to Print **", &H40, CVar(var_110), var_138, var_14C)
  loc_1485CE3:   global_80 = 0
  loc_1485CE6:   Exit Sub
  loc_1485CE7: End If
  loc_1485CED: global_76 = "GratuityReport"
  loc_1485D0E: global_72 = CStr(Ucase("Gratuity Report"))
  loc_1485D21: Set var_94 = Nothing
  loc_1485D24: Exit Sub
  loc_1485D25: ' Referenced from: 1485144
  loc_1485D2D: Proc_6_60_E62BC4(0, 0)
  loc_1485D32: Exit Sub
End Sub

Public Sub Proc_311_53_1432C04
  'Data Table: 4C934C
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_118 As String
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_184 As Variant
  Dim var_DC As String
  Dim var_164 As Variant
  Dim var_194 As Variant
  Dim var_1A4 As String
  Dim var_1B4 As Variant
  Dim var_BC As Double
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_1D4 As String
  Dim var_274 As Variant
  Dim unk_4C9399 As Connection15
  Dim var_94 As Recordset15
  Dim var_96 As Integer
  Dim var_27C As Recordset15
  Dim Me As Recordset15
  loc_1432160: On Error Goto loc_1432BF3
  loc_1432166: var_CC = CVar(CLng(0)) 'Long
  loc_143216B: var_EC = 1
  loc_143219C: Call Proc_311_45_105FC60(CInt(0), CStr(Me.FGrid.TextMatrix)))
  loc_14321B0: If (var_11A = 0) Then
  loc_14321B8:   global_80 = 0
  loc_14321BB:   Exit Sub
  loc_14321BC: End If
  loc_14321BF: var_CC = CVar(CLng(1)) 'Long
  loc_14321C4: var_EC = 1
  loc_14321F5: Call Proc_311_45_105FC60(CInt(1), CStr(Me.FGrid.TextMatrix)))
  loc_1432209: If (var_11A = 0) Then
  loc_1432211:   global_80 = 0
  loc_1432214:   Exit Sub
  loc_1432215: End If
  loc_1432218: var_CC = CVar(CLng(2)) 'Long
  loc_143221D: var_EC = 1
  loc_1432230: var_110 = Me.FGrid.TextMatrix)
  loc_143224E: Call Proc_311_45_105FC60(CInt(2), CStr(var_110))
  loc_1432262: If (var_11A = 0) Then
  loc_143226A:   global_80 = 0
  loc_143226D:   Exit Sub
  loc_143226E: End If
  loc_143227A: Set var_100 = Me.Check1
  loc_1432280: Call 0.Method_Proc_311_53_1432C040 (1, var_120, var_112, global_80, var_11A, var_110, var_EC)
  loc_1432288: var_CC = var_120.Value
  loc_143229E: If (CLng(var_112) = 0) Then
  loc_14322BC:   Call Proc_311_41_12821D8(global_156, 1, CByte(1))
  loc_14322C7:   global_140 = var_118
  loc_14322D7:   If (global_80 = 0) Then
  loc_14322DA:     Exit Sub
  loc_14322DB:   End If
  loc_14322DB: End If
  loc_14322E7: Set var_100 = Me.Check1
  loc_14322ED: Call 0.Method_Proc_311_53_1432C040 (1, var_120, var_112, var_118, global_80)
  loc_14322F5: var_11A = var_120.Value
  loc_143230B: If (CLng(var_112) = 0) Then
  loc_1432326:   var_90 = var_90 & " And Emp_Code in ( " & global_140 & ") "
  loc_1432330: End If
  loc_143234A: Call Proc_311_59_FE18E0(New, var_100, var_110)
  loc_1432355: Set global_88 = var_100
  loc_1432362: var_CC = CVar(CLng(0)) 'Long
  loc_143238E: var_A0 = CDate(1 & CStr(Me.FGrid.TextMatrix)))
  loc_14323A4: var_CC = CVar(CLng(1)) 'Long
  loc_14323D0: var_A8 = CDate(1 & CStr(Me.FGrid.TextMatrix)))
  loc_14323E3: var_B0 = var_A0
  loc_14323E6: ' Referenced from: 1432676
  loc_14323ED: If (var_B0 <= var_A8) Then
  loc_14323FF:   If ((var_B0 = var_A0) And (var_B0 = var_A8)) Then
  loc_1432409:     var_184 = CVar(var_B4 & "('") 'String
  loc_143242C:     var_134 = Format(var_B0, "MMM")
  loc_143245C:     var_164 = (1 + Format(var_B0, "YYYY"))
  loc_143246B:     var_194 = (1 + Ucase(var_164))
  loc_1432474:     var_1B4 = (var_194 + "')")
  loc_1432479:     var_B4 = CStr(var_1B4)
  loc_1432494:   Else
  loc_143249B:     If (var_B0 = var_A0) Then
  loc_143249E:       var_1A4 = "('"
  loc_14324C3:       var_134 = Format(var_B0, "MMM")
  loc_14324F3:       var_164 = (1 + Format(var_B0, "YYYY"))
  loc_1432502:       var_184 = (1 + Ucase(var_164))
  loc_143250B:       var_194 = (var_184 + "',")
  loc_1432510:       var_B4 = CStr(var_194)
  loc_1432529:     Else
  loc_1432530:       If (var_B0 = var_A8) Then
  loc_143253A:         var_184 = CVar(var_B4 & "'") 'String
  loc_143255D:         var_134 = Format(var_B0, "MMM")
  loc_143258D:         var_164 = (1 + Format(var_B0, "YYYY"))
  loc_143259C:         var_194 = (1 + Ucase(var_164))
  loc_14325A5:         var_1B4 = (var_194 + "')")
  loc_14325AA:         var_B4 = CStr(var_1B4)
  loc_14325C5:       Else
  loc_14325CC:         var_184 = CVar(var_B4 & "'") 'String
  loc_14325EF:         var_134 = Format(var_B0, "MMM")
  loc_1432617:         var_154 = Format(var_B0, "YYYY")
  loc_143261F:         var_164 = (1 + var_154)
  loc_143262E:         var_194 = (1 + Ucase(var_164))
  loc_1432637:         var_1B4 = (var_194 + "',")
  loc_143263C:         var_B4 = CStr(var_1B4)
  loc_1432654:       End If
  loc_1432654:     End If
  loc_1432654:   End If
  loc_1432670:   var_B0 = CDate(DateAdd("m", CDbl(1), var_B0))
  loc_1432676:   GoTo loc_14323E6
  loc_1432679: End If
  loc_1432686: var_CC = CVar(CLng(2)) 'Long
  loc_1432698: Set var_100 = Me.FGrid
  loc_143269E: var_110 = var_100.TextMatrix)
  loc_14326A9: var_118 = CStr(var_110)
  loc_14326B1: var_BC = Val(var_118)
  loc_14326BD: var_DC = "Select E.Code As EmpCode,E.name As EmpName,E.F_Name As EmpFName,Case When Datediff(yyyy,E.Birth_Date,"
  loc_14326C5: var_CC = MemVar_1F920F4
  loc_14326CD: Proc_6_7_F25D88(var_110, var_CC, var_DC, var_BC, 1, var_CC, var_B0, var_134)
  loc_14326D5: var_134 = 1 & var_110 
  loc_14326ED: Proc_6_7_F25D88(var_154, MemVar_1F920F4, var_134 & ") IS NULL Then '' When Datediff(yyyy,E.Birth_Date,", 1, var_184)
  loc_143270D: Proc_6_7_F25D88(var_184, MemVar_1F920F4, var_134 & var_154 & ")>=15 Then 'Yes' When Datediff(yyyy,E.Birth_Date,", 1)
  loc_1432719: var_1D4 = ")<15 Then 'No' End As AgeOver15,D.Name As Designation,S.TotWDays,S.TotWages,S.TotBonus From (Select Emp_Code, Sum(Work_day) As TotWDays,Sum(Basic+DA) As TotWages,Sum(Basic+DA)/100*"
  loc_143274F: var_274 = 1 & var_184 & var_1D4 & CVar(var_BC) & " As TotBonus from Salary Where" & CVar(" Mth_Year In " & var_B4) & CVar(var_90) & " Group By Emp_Code) S Left Join Employee E On S.Emp_Code=E.Code Left Join Desig D On D.Code=E.Designation Order By E.Name" 
  loc_143278C: unk_4C9399.Execute CStr(var_274), var_110, -1
  loc_1432797: Set var_94 = var_100
  loc_14327B4: If (var_94.RecordCount > 0) Then
  loc_14327B9:   var_96 = 1
  loc_14327BC:   ' Referenced from: 1432B58
  loc_14327CB:   If Not(var_94.EOF) Then
  loc_14327D4:     Set var_27C = global_88 
  loc_14327E3:     var_27C.AddNew var_CC, var_DC
  loc_1432810:     var_27C.Fields.Item("SNo").Value = CVar(CStr(var_96))
  loc_143282E:     var_100 = var_94.Fields
  loc_143286A:     var_27C.Fields.Item("EmpCode").Value = CVar(Proc_6_38_E68A98(CVar(var_100.Item("EmpCode")), var_96, var_100))
  loc_14328CA:     var_27C.Fields.Item("EmpName").Value = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("EmpName")), var_184))
  loc_143292A:     var_27C.Fields.Item("EmpFName").Value = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("EmpFName"))))
  loc_143298A:     var_27C.Fields.Item("Age15").Value = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("AgeOver15"))))
  loc_14329C7:     var_134 = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Designation")))) 'String
  loc_14329EA:     var_27C.Fields.Item("Desig").Value = var_134
  loc_1432A25:     Proc_6_39_E7C810(var_134, CVar(var_94.Fields.Item("TotWDays")))
  loc_1432A2F:     var_144 = CVar(CStr(var_134)) 'String
  loc_1432A52:     var_27C.Fields.Item("TotDays").Value = var_144
  loc_1432A91:     Proc_6_47_EF59D0(var_134, CVar(var_94.Fields.Item("TotWages")))
  loc_1432AB9:     var_27C.Fields.Item("TotWages").Value = var_134
  loc_1432AD1:     var_CC = "TotBonus"
  loc_1432AF4:     Proc_6_47_EF59D0(var_134, CVar(var_94.Fields.Item(var_CC)))
  loc_1432B00:     var_DC = "TotBonus"
  loc_1432B1C:     var_27C.Fields.Item(var_DC).Value = var_134
  loc_1432B3C:     var_27C.Update var_CC, var_DC
  loc_1432B43:     Set var_27C = Nothing 
  loc_1432B4D:     var_96 = (var_96 + 1)
  loc_1432B53:     var_94.MoveNext
  loc_1432B58:     GoTo loc_14327BC
  loc_1432B5B:   End If
  loc_1432B5B: End If
  loc_1432B72: If (Me.RecordCount <= 0) Then
  loc_1432B7B:   Call 0.Method_arg_50 (var_118, var_96)
  loc_1432B9C:   MsgBox("** No Records Found to Print **", &H40, CVar(var_118), var_144, var_154)
  loc_1432BB1:   global_80 = 0
  loc_1432BB4:   Exit Sub
  loc_1432BB5: End If
  loc_1432BBB: global_76 = "FormC"
  loc_1432BDC: global_72 = CStr(Ucase("Form C"))
  loc_1432BEF: Set var_94 = Nothing
  loc_1432BF2: Exit Sub
  loc_1432BF3: ' Referenced from: 1432160
  loc_1432BFB: Proc_6_60_E62BC4(0, 0)
  loc_1432C00: Exit Sub
End Sub

Public Sub Proc_311_54_11CDC50
  'Data Table: 4C934C
  Dim var_9C As Variant
  Dim var_BC As Long
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_13C As Variant
  Dim var_15C As Long
  Dim var_170 As Variant
  Dim var_230 As Variant
  Dim var_250 As Long
  Dim var_274 As Variant
  Dim var_1D0 As Variant
  Dim var_E8 As String
  Dim unk_4C9399 As Connection15
  Dim Me As Recordset15
  loc_11CD83C: On Error Goto loc_11CDC41
  loc_11CD842: var_9C = CVar(CLng(1)) 'Long
  loc_11CD847: var_BC = 0
  loc_11CD878: Call Proc_311_45_105FC60(CInt(1), CStr(Me.FGrid.TextMatrix)))
  loc_11CD88C: If (var_EA = 0) Then
  loc_11CD894:   global_80 = 0
  loc_11CD897:   Exit Sub
  loc_11CD898: End If
  loc_11CD89B: var_9C = CVar(CLng(1)) 'Long
  loc_11CD8A0: var_BC = 1
  loc_11CD8C2: var_13C = CVar(CLng(1)) 'Long
  loc_11CD8C7: var_15C = 1
  loc_11CD8D4: Set var_170 = Me.FGrid
  loc_11CD8E9: var_230 = CVar(CLng(1)) 'Long
  loc_11CD8EE: var_250 = 1
  loc_11CD901: var_274 = Me.FGrid.TextMatrix)
  loc_11CD921: var_11C = "MMM"
  loc_11CD931: var_12C = Format(CVar(CStr(Me.FGrid.TextMatrix))), var_11C)
  loc_11CD960: var_1D0 = (1 + Format(CVar(CStr(var_170.TextMatrix))), "YYYY"))
  loc_11CD9D9: Proc_6_7_F25D88(var_324, DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CDate(CDate(1 & Format(CVar(CStr(var_274)), "mmm/yyyy"))))), 1, "01/", 1 & Ucase(var_1D0) & "' And E.Joining_Date<=", var_12C, 1)
  loc_11CD9E6: var_8C = CStr(1 & var_324)
  loc_11CDA2F: Set var_D0 = Me.Check1
  loc_11CDA35: Call 0.Method_Proc_311_54_11CDC500 (1, var_170, var_E2, " WHERE SAL.Mth_year='", var_274)
  loc_11CDA3D: var_250 = var_170.Value
  loc_11CDA53: If (CLng(var_E2) = 0) Then
  loc_11CDA71:   Call Proc_311_41_12821D8(global_156, 1, CByte(1))
  loc_11CDA7C:   global_140 = var_E8
  loc_11CDA8C:   If (global_80 = 0) Then
  loc_11CDA8F:     Exit Sub
  loc_11CDA90:   End If
  loc_11CDA90: End If
  loc_11CDA9C: Set var_D0 = Me.Check1
  loc_11CDAA2: Call 0.Method_Proc_311_54_11CDC500 (1, var_170, var_E2, var_E8)
  loc_11CDAAA: var_230 = var_170.Value
  loc_11CDAC0: If (CLng(var_E2) = 0) Then
  loc_11CDADB:   var_8C = var_8C & " And E.Code in ( " & global_140 & ") "
  loc_11CDAE5: End If
  loc_11CDAE8: var_9C = CVar(CLng(2)) 'Long
  loc_11CDAED: var_BC = 1
  loc_11CDB1C: If (CStr(Me.FGrid.TextMatrix)) <> "All") Then
  loc_11CDB26:   var_E8 = var_8C & " And E.Category in ( '"
  loc_11CDB2C:   var_9C = CVar(CLng(2)) 'Long
  loc_11CDB31:   var_BC = 2
  loc_11CDB3E:   Set var_D0 = Me.FGrid
  loc_11CDB44:   var_E0 = var_D0.TextMatrix)
  loc_11CDB5A:   var_8C = var_BC & CStr(var_E0) & "') "
  loc_11CDB6C: End If
  loc_11CDB73: var_88 = "SELECT E.Name, E.F_Name, E.ESI_Code, E.PF_Code,E.BankAcNo,E.Joining_Date,Case When IsNull(SAL.Emp_Basic,0)<>0 Then IsNull(SAL.Emp_Basic,0) Else E.Basic END Basic,E.INCREMENT, SAL.Work_Day,SAL.CL,SAL.Sunday,SAL.Holiday,SAL.Absent,SAL.Income_Tax, SAL.Leave, SAL.Basic as CalBasic,SAL.DA, SAL.HRA, SAL.Income_Tax, SAL.Other_Allow, SAL.Other_Deduc, SAL.Conveyance, SAL.Medical, SAL.LTA, SAL.PF, SAL.ESI, SAL.Loan, SAL.Advance, SAL.OVERTIME,SAL.OVERTIMEAMT,SAL.Net_Salary, SAL.Loan_Bal, SAL.Adv_Bal, Desig.Name As DesigDesc, EMPCategory.Name As CatDesc,SAL.Mth_year,SAL.Emp_Code FROM ((EMPLOYEE E Left JOIN Desig ON E.Designation = Desig.Code) left JOIN EMPCategory ON E.Category = EMPCategory.Code) left JOIN SALARY SAL ON E.Code = SAL.Emp_Code " & var_8C
  loc_11CDB8C: unk_4C9399.Execute var_88, var_E0, -1
  loc_11CDB9D: Set global_88 = var_D0
  loc_11CDBC2: If (Me.RecordCount <= 0) Then
  loc_11CDBCB:   Call 0.Method_arg_50 (var_E8, var_D0, var_9C, var_E8)
  loc_11CDBE1:   var_9C = "** No Records Found to Print **"
  loc_11CDBEC:   MsgBox(var_9C, &H40, CVar(var_E8), var_11C, var_12C)
  loc_11CDC01:   global_80 = 0
  loc_11CDC04:   Exit Sub
  loc_11CDC05: End If
  loc_11CDC0B: global_76 = "prPaySlip"
  loc_11CDC15: Call 0.Method_arg_50 (var_E8, global_80, var_BC)
  loc_11CDC32: global_72 = CStr(Ucase(CVar(var_E8)))
  loc_11CDC40: Exit Sub
  loc_11CDC41: ' Referenced from: 11CD83C
  loc_11CDC49: Proc_6_60_E62BC4(0, var_9C)
  loc_11CDC4E: Exit Sub
End Sub

Public Sub Proc_311_55_F83CF0(arg_C) 'F83CF0
  'Data Table: 4C934C
  Dim var_8C As Recordset15
  loc_F83B95: Set var_8C = arg_C 
  loc_F83BBD: var_8C.Fields.Append "EmpName", &HC8, &H23
  loc_F83BE9: var_8C.Fields.Append "EmpCode", &HC8, 8
  loc_F83C15: var_8C.Fields.Append "FName", &HC8, &H23
  loc_F83C41: var_8C.Fields.Append "Amount", 5, 0
  loc_F83C6D: var_8C.Fields.Append "LoanInstall", 5, 0
  loc_F83C99: var_8C.Fields.Append "LoanBal", 5, 0
  loc_F83CA9: var_8C.CursorType = 3
  loc_F83CB6: var_8C.LockType = 3
  loc_F83CD5: var_8C.Open var_A0, var_B0, -1
  loc_F83CDC: Set var_8C = Nothing 
  loc_F83CE3: Set var_88 = arg_C 
  loc_F83CE7: Proc_311_55_F83CF0 = -1
End Sub

Public Sub Proc_311_56_FBE5A8(arg_C) 'FBE5A8
  'Data Table: 4C934C
  Dim var_8C As Recordset15
  loc_FBE3F5: Set var_8C = arg_C 
  loc_FBE41D: var_8C.Fields.Append "EmpName", &HC8, &H23
  loc_FBE449: var_8C.Fields.Append "EmpCode", &HC8, 8
  loc_FBE475: var_8C.Fields.Append "Loan_Date", 7, 4
  loc_FBE4A1: var_8C.Fields.Append "OpLoan", 5, 0
  loc_FBE4CD: var_8C.Fields.Append "Balance", 5, 0
  loc_FBE4F9: var_8C.Fields.Append "Amount", 5, 0
  loc_FBE525: var_8C.Fields.Append "Refund", 5, 0
  loc_FBE551: var_8C.Fields.Append "LoanInstall", 5, 0
  loc_FBE561: var_8C.CursorType = 3
  loc_FBE56E: var_8C.LockType = 3
  loc_FBE58D: var_8C.Open var_A0, var_B0, -1
  loc_FBE594: Set var_8C = Nothing 
  loc_FBE59B: Set var_88 = arg_C 
  loc_FBE59F: Proc_311_56_FBE5A8 = -1
  loc_FBE5A5: PrintNL
End Sub

Public Sub Proc_311_57_FA34A4(arg_C) 'FA34A4
  'Data Table: 4C934C
  Dim var_8C As Recordset15
  loc_FA331D: Set var_8C = arg_C 
  loc_FA3345: var_8C.Fields.Append "EmpName", &HC8, &H23
  loc_FA3371: var_8C.Fields.Append "EmpCode", &HC8, 8
  loc_FA339D: var_8C.Fields.Append "V_Type", &HC8, 4
  loc_FA33C9: var_8C.Fields.Append "V_Date", 7, 4
  loc_FA33F5: var_8C.Fields.Append "Cr", 5, 0
  loc_FA3421: var_8C.Fields.Append "Dr", 5, 0
  loc_FA344D: var_8C.Fields.Append "Remark", &HC8, &H32
  loc_FA345D: var_8C.CursorType = 3
  loc_FA346A: var_8C.LockType = 3
  loc_FA3489: var_8C.Open var_A0, var_B0, -1
  loc_FA3490: Set var_8C = Nothing 
  loc_FA3497: Set var_88 = arg_C 
  loc_FA349B: Proc_311_57_FA34A4 = -1
  loc_FA34A1: StAryRecMove
End Sub

Public Sub Proc_311_58_10248B4(arg_C) '10248B4
  'Data Table: 4C934C
  Dim var_8C As Recordset15
  loc_102467D: Set var_8C = arg_C 
  loc_10246A5: var_8C.Fields.Append "SNo", &HC8, 4
  loc_10246D1: var_8C.Fields.Append "EmpCode", &HC8, 8
  loc_10246FD: var_8C.Fields.Append "EmpName", &HC8, &H32
  loc_1024729: var_8C.Fields.Append "EmpFName", &HC8, &H32
  loc_1024755: var_8C.Fields.Append "Address", &HC8, &H64
  loc_1024781: var_8C.Fields.Append "DOJ", &HC8, &HB
  loc_10247AD: var_8C.Fields.Append "Desig", &HC8, &H23
  loc_10247D9: var_8C.Fields.Append "CurWages", &HC8, &HC
  loc_1024805: var_8C.Fields.Append "SerPeriod", &HC8, &H14
  loc_1024831: var_8C.Fields.Append "WYear", &HC8, 2
  loc_102485D: var_8C.Fields.Append "Gratuity", &HC8, &HC
  loc_102486D: var_8C.CursorType = 3
  loc_102487A: var_8C.LockType = 3
  loc_1024899: var_8C.Open var_A0, var_B0, -1
  loc_10248A0: Set var_8C = Nothing 
  loc_10248A7: Set var_88 = arg_C 
  loc_10248AB: Proc_311_58_10248B4 = -1
  loc_10248B3: Result -1 End Sub 'Currency
End Sub

Public Sub Proc_311_59_FE18E0(arg_C) 'FE18E0
  'Data Table: 4C934C
  Dim var_8C As Recordset15
  loc_FE1701: Set var_8C = arg_C 
  loc_FE1729: var_8C.Fields.Append "SNo", &HC8, 4
  loc_FE1755: var_8C.Fields.Append "EmpCode", &HC8, 8
  loc_FE1781: var_8C.Fields.Append "EmpName", &HC8, &H23
  loc_FE17AD: var_8C.Fields.Append "EmpFName", &HC8, &H32
  loc_FE17D9: var_8C.Fields.Append "Age15", &HC8, 3
  loc_FE1805: var_8C.Fields.Append "Desig", &HC8, &H23
  loc_FE1831: var_8C.Fields.Append "TotDays", &HC8, 5
  loc_FE185D: var_8C.Fields.Append "TotWages", &HC8, &HC
  loc_FE1889: var_8C.Fields.Append "TotBonus", &HC8, &HC
  loc_FE1899: var_8C.CursorType = 3
  loc_FE18A6: var_8C.LockType = 3
  loc_FE18C5: var_8C.Open var_A0, var_B0, -1
  loc_FE18CC: Set var_8C = Nothing 
  loc_FE18D3: Set var_88 = arg_C 
  loc_FE18D7: Proc_311_59_FE18E0 = -1
End Sub

Public Sub Proc_311_60_14F7F4C
  'Data Table: 4C934C
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_108 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_1D8 As Variant
  Dim var_158 As String
  Dim var_168 As Variant
  Dim var_178 As String
  Dim var_248 As Variant
  Dim var_9C As String
  Dim var_138 As Variant
  loc_14F7114: On Error Goto loc_14F7F44
  loc_14F7128: Call 0.Method_arg_90 (var_8C, var_90)
  loc_14F7130: Call 0.Method_arg_24 (var_86)
  loc_14F713C: For var_94 =  To CInt(var_90): 1 = var_94 'Integer
  loc_14F7155:   Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F715D:   Call 0.Method_arg_20 (var_98)
  loc_14F7165:   Call 0.Method_arg_30 (var_9C)
  loc_14F717B:   var_CC = Ucase(CVar(var_9C)) 'Variant
  loc_14F71AB:   If (var_CC = Ucase("Title")) Then
  loc_14F71B7:     Call 0.Method_arg_50 (var_9C)
  loc_14F71DA:     Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F71E2:     Call 0.Method_arg_20 (var_98)
  loc_14F71EA:     Call 0.Method_arg_38 ("'" & var_9C & "'")
  loc_14F7202:   Else
  loc_14F7224:     If (var_CC = Ucase("BetweenDate")) Then
  loc_14F722A:       var_DC = CVar(CLng(0)) 'Long
  loc_14F723C:       Set var_8C = Me.FGrid
  loc_14F7242:       var_AC = var_8C.TextMatrix)
  loc_14F7263:       Set var_98 = Me.FGrid
  loc_14F7269:       var_1D8 = var_98.TextMatrix)
  loc_14F7275:       var_158 = "'From :'+ '"
  loc_14F72A5:       var_178 = "' + ' To ' + '"
  loc_14F72DE:       var_248 = 1 & Format(CVar(CStr(var_1D8)), "dd/mmm/yyyy") & "'" 
  loc_14F72E2:       var_9C = CStr(var_248)
  loc_14F72F6:       Call 0.Method_arg_90 (var_24C, CLng(var_86), var_250, var_9C, 1, 1 & Format(CVar(CStr(var_AC)), "dd/mmm/yyyy") & var_178, 1)
  loc_14F72FE:       Call 0.Method_arg_20 (var_158, var_1D8, 1, CVar(CLng(1)))
  loc_14F7306:       Call 0.Method_arg_38 (var_AC, 1)
  loc_14F7334:     End If
  loc_14F7334:   End If
  loc_14F7337: Next var_94 'Integer
  loc_14F7342: var_254 = global_52
  loc_14F734D: If (var_254 = "LoanAdvSumm") Then
  loc_14F7361:   Call 0.Method_arg_90 (var_8C, var_90)
  loc_14F7369:   Call 0.Method_arg_24 (var_86)
  loc_14F7375:   For var_258 =  To CInt(var_90): 1 = var_258 'Integer
  loc_14F738E:     Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F7396:     Call 0.Method_arg_20 (var_98)
  loc_14F739E:     Call 0.Method_arg_30 (var_9C)
  loc_14F73E4:     If (Ucase(CVar(var_9C)) = Ucase("ForMonth")) Then
  loc_14F73EA:       var_DC = CVar(CLng(1)) 'Long
  loc_14F73FC:       Set var_8C = Me.FGrid
  loc_14F7402:       var_AC = var_8C.TextMatrix)
  loc_14F740E:       var_158 = "'For Month:'+' "
  loc_14F7447:       var_9C = CStr(1 & Format(CVar(CStr(var_AC)), "MMMYYYY") & "'")
  loc_14F745B:       Call 0.Method_arg_90 (var_98, CLng(var_86), var_24C, var_9C, 1)
  loc_14F7463:       Call 0.Method_arg_20 (var_158, var_AC)
  loc_14F746B:       Call 0.Method_arg_38 (1)
  loc_14F748B:     End If
  loc_14F748E:   Next var_258 'Integer
  loc_14F7496: Else
  loc_14F749E:   If (var_254 = "PayrollReg") Then
  loc_14F74B2:     Call 0.Method_arg_90 (var_8C, var_90)
  loc_14F74BA:     Call 0.Method_arg_24 (var_86)
  loc_14F74C6:     For var_26C =  To CInt(var_90):   1 = var_26C 'Integer
  loc_14F74DF:       Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F74E7:       Call 0.Method_arg_20 (var_98)
  loc_14F74EF:       Call 0.Method_arg_30 (var_9C)
  loc_14F7505:       var_27C = Ucase(CVar(var_9C)) 'Variant
  loc_14F7535:       If (var_27C = Ucase("ForMonth")) Then
  loc_14F753B:         var_DC = CVar(CLng(1)) 'Long
  loc_14F7553:         var_AC = Me.FGrid.TextMatrix)
  loc_14F755F:         var_158 = "'For Month:'+' "
  loc_14F75AC:         Call 0.Method_arg_90 (var_98, CLng(var_86), var_24C, CStr(1 & Format(CVar(CStr(var_AC)), "MMM/YYYY") & "'"), 1)
  loc_14F75B4:         Call 0.Method_arg_20 (var_158, var_AC)
  loc_14F75BC:         Call 0.Method_arg_38 (1)
  loc_14F75DF:       Else
  loc_14F7601:         If (var_27C = Ucase("OtherBank")) Then
  loc_14F7607:           var_DC = CVar(CLng(2)) 'Long
  loc_14F7619:           Set var_8C = Me.FGrid
  loc_14F762A:           var_9C = CStr(var_8C.TextMatrix))
  loc_14F763B:           If (var_9C = "Yes") Then
  loc_14F7651:             Call 0.Method_arg_90 (var_8C, CLng(var_86), var_98, "'Other than Bank:     Yes'")
  loc_14F7659:             Call 0.Method_arg_20 (1, var_DC)
  loc_14F7661:             Call 0.Method_arg_38 (var_DC)
  loc_14F7670:           Else
  loc_14F7683:             Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F768B:             Call 0.Method_arg_20 (var_98)
  loc_14F7693:             Call 0.Method_arg_38 ("'Other than Bank:       No'")
  loc_14F769F:           End If
  loc_14F769F:         End If
  loc_14F769F:       End If
  loc_14F76A2:     Next var_26C 'Integer
  loc_14F76AA:   Else
  loc_14F76B2:     If Not (var_254 = "PaySlip") Then
  loc_14F76BD:       If Not (var_254 = "PFStatement") Then
  loc_14F76C8:         If (var_254 = "AttendanceRep") Then
  loc_14F76CB:         End If
  loc_14F76CB:       End If
  loc_14F76DC:       Call 0.Method_arg_90 (var_8C, var_90)
  loc_14F76E4:       Call 0.Method_arg_24 (var_86)
  loc_14F76F0:       For var_280 =  To CInt(var_90):     1 = var_280 'Integer
  loc_14F7709:         Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F7711:         Call 0.Method_arg_20 (var_98)
  loc_14F7719:         Call 0.Method_arg_30 (var_9C)
  loc_14F772F:         var_290 = Ucase(CVar(var_9C)) 'Variant
  loc_14F775F:         If (var_290 = Ucase("ForMonth")) Then
  loc_14F7765:           var_DC = CVar(CLng(1)) 'Long
  loc_14F777D:           var_AC = Me.FGrid.TextMatrix)
  loc_14F7789:           var_158 = "'For Month:'+' "
  loc_14F77D6:           Call 0.Method_arg_90 (var_98, CLng(var_86), var_24C, CStr(1 & Format(CVar(CStr(var_AC)), "MMM/YYYY") & "'"), 1)
  loc_14F77DE:           Call 0.Method_arg_20 (var_158, var_AC)
  loc_14F77E6:           Call 0.Method_arg_38 (1)
  loc_14F7809:         Else
  loc_14F782B:           If (var_290 = Ucase("ForEmployee")) Then
  loc_14F783A:             Set var_8C = Me.Check1
  loc_14F7840:             Call 0.Method_Proc_311_60_14F7F4C0 (1, var_98)
  loc_14F785E:             If (CLng(var_98.Value) = 0) Then
  loc_14F7871:               var_DC = global_172
  loc_14F78A2:               Call 0.Method_arg_90 (var_8C, CLng(var_86), var_98)
  loc_14F78AA:               Call 0.Method_arg_20 (CStr("'For Employee :       " & Left(var_DC, &HC8) & "'"))
  loc_14F78B2:               Call 0.Method_arg_38 (var_DC)
  loc_14F78CD:             Else
  loc_14F78E0:               Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F78E8:               Call 0.Method_arg_20 (var_98)
  loc_14F78F0:               Call 0.Method_arg_38 ("'For Employees :All'")
  loc_14F78FC:             End If
  loc_14F78FF:           Else
  loc_14F7921:             If (var_290 = Ucase("ForCategory")) Then
  loc_14F7927:               var_DC = CVar(CLng(2)) 'Long
  loc_14F792C:               var_108 = 1
  loc_14F795B:               If (CStr(Me.FGrid.TextMatrix)) <> "All") Then
  loc_14F7964:                 var_DC = CVar(CLng(2)) 'Long
  loc_14F7969:                 var_108 = 1
  loc_14F7976:                 Set var_8C = Me.FGrid
  loc_14F7987:                 var_9C = CStr(var_8C.TextMatrix))
  loc_14F79A5:                 Call 0.Method_arg_90 (var_98, CLng(var_86), var_24C, var_108 & var_9C & "'")
  loc_14F79AD:                 Call 0.Method_arg_20 (var_DC, "'For Category :         ")
  loc_14F79B5:                 Call 0.Method_arg_38 (var_108)
  loc_14F79D2:               Else
  loc_14F79E5:                 Call 0.Method_arg_90 (var_8C, CLng(var_86), var_98)
  loc_14F79ED:                 Call 0.Method_arg_20 ("'For Category :All'")
  loc_14F79F5:                 Call 0.Method_arg_38 (var_DC)
  loc_14F7A01:               End If
  loc_14F7A01:             End If
  loc_14F7A01:           End If
  loc_14F7A01:         End If
  loc_14F7A04:       Next var_280 'Integer
  loc_14F7A0C:     Else
  loc_14F7A14:       If (var_254 = "LoanReg") Then
  loc_14F7A28:         Call 0.Method_arg_90 (var_8C, var_90)
  loc_14F7A30:         Call 0.Method_arg_24 (var_86)
  loc_14F7A3C:         For var_294 =  To CInt(var_90):       1 = var_294 'Integer
  loc_14F7A55:           Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F7A5D:           Call 0.Method_arg_20 (var_98)
  loc_14F7A65:           Call 0.Method_arg_30 (var_9C)
  loc_14F7AAB:           If (Ucase(CVar(var_9C)) = Ucase("ForEmployee")) Then
  loc_14F7ABA:             Set var_8C = Me.Check1
  loc_14F7AC0:             Call 0.Method_Proc_311_60_14F7F4C0 (1, var_98)
  loc_14F7ADE:             If (CLng(var_98.Value) = 0) Then
  loc_14F7B0E:               var_9C = CStr("'For Employee :       " & Left(global_172, &HC8) & "'")
  loc_14F7B22:               Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F7B2A:               Call 0.Method_arg_20 (var_98)
  loc_14F7B32:               Call 0.Method_arg_38 (var_9C)
  loc_14F7B4D:             Else
  loc_14F7B60:               Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F7B68:               Call 0.Method_arg_20 (var_98)
  loc_14F7B70:               Call 0.Method_arg_38 ("'For Employees :All'")
  loc_14F7B7C:             End If
  loc_14F7B7C:           End If
  loc_14F7B7F:         Next var_294 'Integer
  loc_14F7B87:       Else
  loc_14F7B8F:         If (var_254 = "FormC") Then
  loc_14F7BA3:           Call 0.Method_arg_90 (var_8C, var_90)
  loc_14F7BAB:           Call 0.Method_arg_24 (var_86)
  loc_14F7BB7:           For var_2A8 =  To CInt(var_90):         1 = var_2A8 'Integer
  loc_14F7BD0:             Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F7BD8:             Call 0.Method_arg_20 (var_98)
  loc_14F7BE0:             Call 0.Method_arg_30 (var_9C)
  loc_14F7BF6:             var_2B8 = Ucase(CVar(var_9C)) 'Variant
  loc_14F7C26:             If (var_2B8 = Ucase("ForMonth")) Then
  loc_14F7C2C:               var_DC = CVar(CLng(0)) 'Long
  loc_14F7C44:               var_AC = Me.FGrid.TextMatrix)
  loc_14F7C65:               Set var_98 = Me.FGrid
  loc_14F7C6B:               var_1D8 = var_98.TextMatrix)
  loc_14F7CA8:               var_168 = (Format(CVar(CStr(var_AC)), "MMMM YY") + " to ")
  loc_14F7CDE:               Proc_6_17_EAA2B0(var_248, 1 & Format(CVar(CStr(var_1D8)), "MMMM YY"), 1, 1 & 1 & Format(CVar(CStr(var_AC)), "MMM/YYYY"), 1, "Form ")
  loc_14F7CFA:               Call 0.Method_arg_90 (var_24C, CLng(var_86), var_250, CStr(var_248), var_1D8)
  loc_14F7D02:               Call 0.Method_arg_20 (1, CVar(CLng(1)), var_AC)
  loc_14F7D0A:               Call 0.Method_arg_38 (1)
  loc_14F7D3B:             Else
  loc_14F7D5D:               If (var_2B8 = Ucase("BonusPer")) Then
  loc_14F7D75:                 Set var_8C = Me.FGrid
  loc_14F7D7B:                 var_AC = var_8C.TextMatrix)
  loc_14F7D96:                 var_138 = "0.00"
  loc_14F7DB1:                 Proc_6_17_EAA2B0(1 & Format(CVar(CStr(var_AC)), "MMM/YYYY"), Format(CVar(CStr(var_AC)), var_138), 1, 1)
  loc_14F7DB9:                 var_9C = CStr(1 & Format(CVar(CStr(var_AC)), "MMM/YYYY"))
  loc_14F7DCD:                 Call 0.Method_arg_90 (var_98, CLng(var_86), var_24C, var_9C)
  loc_14F7DD5:                 Call 0.Method_arg_20 (var_AC, 1)
  loc_14F7DDD:                 Call 0.Method_arg_38 (CVar(CLng(2)))
  loc_14F7DFB:               End If
  loc_14F7DFB:             End If
  loc_14F7DFE:           Next var_2A8 'Integer
  loc_14F7E06:         Else
  loc_14F7E0E:           If (var_254 = "GratuityReport") Then
  loc_14F7E22:             Call 0.Method_arg_90 (var_8C, var_90)
  loc_14F7E2A:             Call 0.Method_arg_24 (var_86)
  loc_14F7E36:             For var_2BC =  To CInt(var_90):           1 = var_2BC 'Integer
  loc_14F7E4F:               Call 0.Method_arg_90 (var_8C, CLng(var_86))
  loc_14F7E57:               Call 0.Method_arg_20 (var_98)
  loc_14F7E5F:               Call 0.Method_arg_30 (var_9C)
  loc_14F7EA5:               If (Ucase(CVar(var_9C)) = Ucase("UpToDate")) Then
  loc_14F7EC3:                 var_AC = Me.FGrid.TextMatrix)
  loc_14F7EF1:                 Proc_6_17_EAA2B0(1 & Format(CVar(CStr(var_AC)), "MMM/YYYY"), Format(CVar(CStr(var_AC)), var_138), 1, 1)
  loc_14F7F0D:                 Call 0.Method_arg_90 (var_98, CLng(var_86), var_24C, CStr(1 & Format(CVar(CStr(var_AC)), "MMM/YYYY")))
  loc_14F7F15:                 Call 0.Method_arg_20 (var_AC, 1)
  loc_14F7F1D:                 Call 0.Method_arg_38 (CVar(CLng(0)))
  loc_14F7F3B:               End If
  loc_14F7F3E:             Next var_2BC 'Integer
  loc_14F7F43:           End If
  loc_14F7F43:         End If
  loc_14F7F43:       End If
  loc_14F7F43:     End If
  loc_14F7F43:   End If
  loc_14F7F43: End If
  loc_14F7F43: Exit Sub
  loc_14F7F44: ' Referenced from: 14F7114
  loc_14F7F44: Proc_6_60_E62BC4()
  loc_14F7F49: Exit Sub
End Sub
