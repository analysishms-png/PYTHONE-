VERSION 5.00
Begin VB.Form RewardPointParam1
  Caption = "Reward Points Parameter I"
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
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4605
    Top = 2175
    Width = 1665
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4605
    Top = 1905
    Width = 1665
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 20
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
    Left = 10620
    Top = 4710
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin MSFlexGrid FGPoint
    Left = 11610
    Top = 2685
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 15
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13365
    Height = 450
    TabIndex = 12
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4605
    Top = 1635
    Width = 1665
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 20
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
    Top = 2800
    Width = 11505
    Height = 3000
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4605
    Top = 1365
    Width = 4215
    Height = 255
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
  Begin Label LblName
    Caption = "Points Evaluate On"
    Index = 3
    ForeColor = &HC00000&
    Left = 2205
    Top = 2190
    Width = 1800
    Height = 240
    TabIndex = 17
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
  Begin Label LblName
    Caption = "Limit Applicable On"
    Index = 2
    ForeColor = &HC00000&
    Left = 2205
    Top = 1905
    Width = 1890
    Height = 240
    TabIndex = 16
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
  Begin Label LblName
    Caption = "Sales Considered As"
    Index = 1
    ForeColor = &HC00000&
    Left = 2190
    Top = 1635
    Width = 1950
    Height = 240
    TabIndex = 13
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 690
    Top = 6690
    Width = 2880
    Height = 255
    TabIndex = 11
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
    TabIndex = 10
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
    TabIndex = 9
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
    Caption = "Reward Points Scheme"
    Index = 0
    ForeColor = &HC00000&
    Left = 2205
    Top = 1365
    Width = 2220
    Height = 240
    TabIndex = 5
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

Attribute VB_Name = "RewardPointParam1"

Private MasterFormExit As Integer
Private global_84 As Variant
Private global_64 As Integer
Private global_66 As Integer

Private Sub DGHelp_UnknownEvent_9 'F43184
  'Data Table: 4A76E0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4307B: Me.DGHelp.Visible = False
  loc_F4309A: If (Me.RecordCount > 0) Then
  loc_F430D9:   Set var_B4 = Me.Txt
  loc_F430DF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F430E7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4311A:   var_B0 = Me.Fields.Item("Name")
  loc_F43139:   Set var_B4 = Me.Txt
  loc_F4313F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F43147:   var_B8.Text = CStr(var_B0.Value)
  loc_F4315D: End If
  loc_F43168: Set var_A8 = Me.Txt
  loc_F4316E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F43176: var_B0.SetFocus
  loc_F43182: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E72324
  'Data Table: 4A76E0
  loc_E722E2: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E722F9: Set var_8C = Me.FGPoint
  loc_E72313: Proc_6_138_106D6F8(Me.DGHelp, global_72, 0)
  loc_E72321: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E2E9F4
  'Data Table: 4A76E0
  loc_E2E9E8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E2E9EB:   Call DGHelp_UnknownEvent_9()
  loc_E2E9F0: End If
  loc_E2E9F0: Exit Sub
End Sub

Private Sub Form_Load() '1032AB0
  'Data Table: 4A76E0
  Dim var_88 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  loc_1032860: On Error Goto loc_1032AA8
  loc_1032872: Me.LblUser.Left = CDbl(13500)
  loc_1032889: Me.LblUser.Top = CDbl(7800)
  loc_10328A0: Me.LblLDt.Top = CDbl(8160)
  loc_10328B7: Me.LblLDt.Left = CDbl(13500)
  loc_10328C6: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10328DE: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_10328F0: Set var_88 = Me.TopCtrl1
  loc_10328F6: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000B("AEDP")
  loc_1032904: Call 0.Method_arg_50 (var_AC)
  loc_1032914: Set var_88 = Me.TopCtrl1
  loc_103291A: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030007(CVar(var_AC))
  loc_1032941: Me.TopCtrl1.CursorLocation = 3
  loc_103296B: var_BC = CVar("Select distinct Code As Code,Name From RWParameter WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1032989: CVarUnk
  loc_103298E: VerifyVarObj
  loc_1032994: Set var_88 = Me.DGHelp
  loc_103299A: LateIdStAd
  loc_10329C4: Me.DGHelp.CursorLocation = 3
  loc_10329EE: var_BC = CVar("Select distinct Code as SearchCode,Name,LOGSITE_CODE,SITE_CODE From RWParameter WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10329F8: r_BC, CVar(MemVar_1F92044), 2 var_BC, CVar(MemVar_1F92044), 2
  loc_1032A26: Call Proc_319_54_E7A6D4(Proc_5_1_100CB50("INI", Me, New, 3, -1), Me, New)
  loc_1032A31: Call Proc_319_48_120673C(3)
  loc_1032A36: Call Proc_319_53_140AF4C(-1)
  loc_1032A4E: Me.FGrid.Left = CVar(CDbl(600))
  loc_1032A69: Me.FGrid.Width = CVar(CDbl(14300))
  loc_1032A84: Me.FGrid.Top = CVar(CDbl(2800))
  loc_1032A9F: Me.FGrid.Height = CVar(CDbl(3000))
  loc_1032AA7: Exit Sub
  loc_1032AA8: ' Referenced from: 1032860
  loc_1032AA8: Proc_6_60_E62BC4()
  loc_1032AAD: Exit Sub
End Sub

Private Sub Form_Resize() 'ED5A58
  'Data Table: 4A76E0
  Dim var_8C As Label
  loc_ED59B6: Call 0.Method_arg_50 (var_88)
  loc_ED59C8: Me.LblFormCaption.Caption = var_88
  loc_ED59E1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED59ED: Set var_A0 = Me.TopCtrl1
  loc_ED59F3: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_80010006()
  loc_ED5A00: Set var_8C = Me.TopCtrl1
  loc_ED5A06: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_80010004()
  loc_ED5A20: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED5A3B: Call 0.Method_arg_100 (var_B8)
  loc_ED5A4D: Me.LblFormCaption.Width = var_B8
  loc_ED5A55: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E455D4
  'Data Table: 4A76E0
  loc_E455AF: Set global_72 = Nothing
  loc_E455C1: Set global_68 = Nothing
  loc_E455CD: MasterFormExit = 0
  loc_E455D0: Exit Sub
End Sub

Private Sub Form_Activate() 'E4B488
  'Data Table: 4A76E0
  loc_E4B458: On Error Goto loc_E4B482
  loc_E4B45F: Set var_88 = Me.TopCtrl1
  loc_E4B465: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030000()
  loc_E4B47A: If (CLng(CInt()) = &H2D) Then
  loc_E4B47D:   Call TopCtrl1_UnknownEvent_15()
  loc_E4B482:   ' Referenced from: E4B458
  loc_E4B482: End If
  loc_E4B482: Proc_6_60_E62BC4()
  loc_E4B487: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2451C
  'Data Table: 4A76E0
  loc_E24501: If (MasterFormExit = &HFF) Then
  loc_E24511:   Me.Global.Unload Me
  loc_E24519: End If
  loc_E24519: Exit Sub
  loc_E2451A: Result  End Sub 'Integer
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E289D4
  'Data Table: 4A76E0
  loc_E289AC: On Error Goto loc_E289CC
  loc_E289C3: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E289CB: Exit Sub
  loc_E289CC: ' Referenced from: E289AC
  loc_E289CC: Proc_6_60_E62BC4(Shift)
  loc_E289D1: Exit Sub
  loc_E289D2: BranchFVar 26631
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '100188C
  'Data Table: 4A76E0
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim var_104 As TextBox
  loc_10016A0: Call Proc_319_55_EB7154()
  loc_10016B8: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10016D3: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1001705: var_10C = CStr(Me.FGrid.TextMatrix))
  loc_1001712: Set var_104 = Me.TxtGrid
  loc_1001718: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_10C)
  loc_1001720: var_108.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1001751: var_110 = CLng(Me.FGrid.Col)
  loc_1001761: If (var_110 = CLng(6)) Then
  loc_1001771:   ReDim var_114(0 To 5)
  loc_1001788:   var_114(0) = "<"
  loc_1001797:   var_114(1) = "<="
  loc_10017A6:   var_114(2) = ">"
  loc_10017B5:   var_114(3) = ">="
  loc_10017C4:   var_114(4) = "="
  loc_10017D3:   var_114(5) = "Between"
  loc_10017F5:   Set var_104 = Me.ListView
  loc_1001810:   Set var_BC = Me.TxtGrid
  loc_100182A:   Set global_100 = Proc_6_66_EFF8FC(var_104, var_BC, Index, Array(var_114))
  loc_1001848:   Set var_A8 = Me.TxtGrid
  loc_100184E:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, var_10C, 6)
  loc_1001856:   global_84 = var_BC.Text
  loc_1001868:   Set var_F0 = Me.TxtGrid
  loc_100186E:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, var_10C)
  loc_1001876:   var_104.Tag = var_110
  loc_1001889: End If
  loc_1001889: Exit Sub
  loc_100188A: CExtInstUnk
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12CDD78
  'Data Table: 4A76E0
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C4 As TextBox
  Dim var_D0 As TextBox
  loc_12CD710: On Error Goto loc_12CDD6F
  loc_12CD71D: If (CLng(Shift) = &H1B) Then
  loc_12CD72D:   Set var_88 = Me.TxtGrid
  loc_12CD733:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_12CD74D:   Set var_94 = Me.TxtGrid
  loc_12CD753:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_12CD75B:   var_98.Text = var_8C.Tag
  loc_12CD777:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12CD77C:   Call Proc_319_55_EB7154(arg_14)
  loc_12CD785:   Set var_88 = Me.FGrid
  loc_12CD7A2:   Set var_88 = Me.TxtGrid
  loc_12CD7A8:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_12CD7B0:   var_8C.Visible = False
  loc_12CD7BC:   Exit Sub
  loc_12CD7BD: End If
  loc_12CD7D0: var_AC = CLng(Me.FGrid.Col)
  loc_12CD7E0: If (var_AC = CLng(1)) Then
  loc_12CD7ED:   If (CLng(Shift) = &HD) Then
  loc_12CD7F6:     Call Proc_319_51_1125C70(KeyCode, var_AE)
  loc_12CD801:     If (var_AE = &HFF) Then
  loc_12CD849:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HB))
  loc_12CD859:     End If
  loc_12CD859:   End If
  loc_12CD85C: Else
  loc_12CD863:   If (var_AC = CLng(2)) Then
  loc_12CD870:     If (CLng(Shift) = &HD) Then
  loc_12CD879:       Call Proc_319_51_1125C70(KeyCode, var_AE, 0, 0)
  loc_12CD884:       If (var_AE = &HFF) Then
  loc_12CD8CC:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HB))
  loc_12CD8DC:       End If
  loc_12CD8DC:     End If
  loc_12CD8DF:   Else
  loc_12CD8E6:     If (var_AC = CLng(3)) Then
  loc_12CD8F3:       If (CLng(Shift) = &HD) Then
  loc_12CD8FC:         Call Proc_319_51_1125C70(KeyCode, var_AE, 0, 0)
  loc_12CD907:         If (var_AE = &HFF) Then
  loc_12CD94F:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HB), 0)
  loc_12CD95F:         End If
  loc_12CD95F:       End If
  loc_12CD962:     Else
  loc_12CD969:       If (var_AC = CLng(4)) Then
  loc_12CD976:         If (CLng(Shift) = &HD) Then
  loc_12CD97F:           Call Proc_319_51_1125C70(KeyCode, var_AE, 0, 0)
  loc_12CD98A:           If (var_AE = &HFF) Then
  loc_12CD9D2:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HB), 0)
  loc_12CD9E2:           End If
  loc_12CD9E2:         End If
  loc_12CD9E5:       Else
  loc_12CD9EC:         If (var_AC = CLng(5)) Then
  loc_12CD9F9:           If (CLng(Shift) = &HD) Then
  loc_12CDA02:             Call Proc_319_51_1125C70(KeyCode, var_AE, 0, 0)
  loc_12CDA0D:             If (var_AE = &HFF) Then
  loc_12CDA55:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HB), 0)
  loc_12CDA65:             End If
  loc_12CDA65:           End If
  loc_12CDA68:         Else
  loc_12CDA6F:           If (var_AC = CLng(7)) Then
  loc_12CDA7C:             If (CLng(Shift) = &HD) Then
  loc_12CDA85:               Call Proc_319_51_1125C70(KeyCode, var_AE, 0, 0)
  loc_12CDA90:               If (var_AE = &HFF) Then
  loc_12CDA9E:                 Set var_98 = Me.TxtGrid
  loc_12CDAC9:                 Set var_8C = var_98
  loc_12CDAD8:                 Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_66, CByte(&HB), 0)
  loc_12CDAE8:               End If
  loc_12CDAE8:             End If
  loc_12CDAEB:           Else
  loc_12CDAF2:             If (var_AC = CLng(6)) Then
  loc_12CDB17:               Set var_88 = Me.TxtGrid
  loc_12CDB1D:               Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, var_B8, 0, 0)
  loc_12CDB25:               0 = var_8C.Left
  loc_12CDB37:               Set var_94 = Me.TxtGrid
  loc_12CDB3D:               Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98, var_BC)
  loc_12CDB45:               0 = var_98.Top
  loc_12CDB57:               Set var_C0 = Me.TxtGrid
  loc_12CDB5D:               Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C4, var_C8)
  loc_12CDB65:               var_AC = var_C4.Height
  loc_12CDB77:               Set var_CC = Me.TxtGrid
  loc_12CDB7D:               Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_D0)
  loc_12CDB85:               var_D4 = var_D0.Width
  loc_12CDBCD:               Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12CDBFB:               If (CLng(Shift) = &HD) Then
  loc_12CDC04:                 Call Proc_319_51_1125C70(KeyCode, var_AE, CInt(var_B8), CInt((var_BC + var_C8)))
  loc_12CDC0F:                 If (var_AE = &HFF) Then
  loc_12CDC57:                   Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HA))
  loc_12CDC67:                 End If
  loc_12CDC67:               End If
  loc_12CDC6A:             Else
  loc_12CDC71:               If (var_AC = CLng(9)) Then
  loc_12CDC7E:                 If (CLng(Shift) = &HD) Then
  loc_12CDC87:                   Call Proc_319_51_1125C70(KeyCode, var_AE, 0, 0)
  loc_12CDC92:                   If (var_AE = &HFF) Then
  loc_12CDCDA:                     Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HB), 0)
  loc_12CDCEA:                   End If
  loc_12CDCEA:                 End If
  loc_12CDCED:               Else
  loc_12CDCF6:                 If (var_AC = &HA) Then
  loc_12CDD03:                   If (CLng(Shift) = &HD) Then
  loc_12CDD0C:                     Call Proc_319_51_1125C70(KeyCode, var_AE, 0, 0)
  loc_12CDD17:                     If (var_AE = &HFF) Then
  loc_12CDD5F:                       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HA), 0)
  loc_12CDD6F:                     End If
  loc_12CDD6F:                   End If
  loc_12CDD6F:                 End If
  loc_12CDD6F:               End If
  loc_12CDD6F:             End If
  loc_12CDD6F:           End If
  loc_12CDD6F:         End If
  loc_12CDD6F:       End If
  loc_12CDD6F:       ' Referenced from: 12CD710
  loc_12CDD6F:     End If
  loc_12CDD6F:   End If
  loc_12CDD6F: End If
  loc_12CDD6F: Proc_6_60_E62BC4(0, 0, 0)
  loc_12CDD74: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F5D640
  'Data Table: 4A76E0
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  loc_F5D51B: Proc_6_58_E054C0(arg_10)
  loc_F5D52C: If (KeyAscii = 0) Then
  loc_F5D542:   var_A0 = CLng(Me.FGrid.Col)
  loc_F5D552:   If (var_A0 = CLng(3)) Then
  loc_F5D55F:     Set var_8C = Me.TxtGrid
  loc_F5D565:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_F5D580:     Proc_6_42_129A86C(var_A4, arg_10, 5)
  loc_F5D58F:   Else
  loc_F5D596:     If Not (var_A0 = CLng(2)) Then
  loc_F5D5A0:       If Not (var_A0 = CLng(4)) Then
  loc_F5D5AA:         If Not (var_A0 = CLng(5)) Then
  loc_F5D5B4:           If (var_A0 = CLng(7)) Then
  loc_F5D5B7:           End If
  loc_F5D5B7:         End If
  loc_F5D5B7:       End If
  loc_F5D5C1:       Set var_8C = Me.TxtGrid
  loc_F5D5C7:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, 2)
  loc_F5D5E2:       Proc_6_42_129A86C(var_A4, arg_10, 7)
  loc_F5D5F1:     Else
  loc_F5D5F8:       If Not (var_A0 = CLng(9)) Then
  loc_F5D604:         If (var_A0 = &HA) Then
  loc_F5D607:         End If
  loc_F5D611:         Set var_8C = Me.TxtGrid
  loc_F5D617:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, 2)
  loc_F5D632:         Proc_6_42_129A86C(var_A4, arg_10, 3)
  loc_F5D63E:       End If
  loc_F5D63E:     End If
  loc_F5D63E:   End If
  loc_F5D63E: End If
  loc_F5D63E: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EEA9D4
  'Data Table: 4A76E0
  loc_EEA910: On Error Goto loc_EEA9CC
  loc_EEA936: If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_EEA95B:   If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_EEA96C:     Call TxtGrid_KeyDown(KeyCode, global_64)
  loc_EEA971:   End If
  loc_EEA98C:   If (Me.FrmList.Visible = &HFF) Then
  loc_EEA9BB:     Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, KeyCode, Shift)
  loc_EEA9CB:   End If
  loc_EEA9CB: End If
  loc_EEA9CB: Exit Sub
  loc_EEA9CC: ' Referenced from: EEA910
  loc_EEA9CC: Proc_6_60_E62BC4(global_100, 0)
  loc_EEA9D1: Exit Sub
  loc_EEA9D2: BranchFVar 26879
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20730
  'Data Table: 4A76E0
  Dim arg_10 As Integer
  loc_E20718: If (Cancel = 0) Then
  loc_E20721:   Call Proc_319_51_1125C70(Cancel, var_88)
  loc_E2072A:   arg_10 = Not(var_88)
  loc_E2072D: End If
  loc_E2072D: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5D1F4
  'Data Table: 4A76E0
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5D116: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5D11D:   Set var_A8 = Me.ListView
  loc_F5D167:   Set var_C0 = Me.TxtGrid
  loc_F5D16D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5D175:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5D195: End If
  loc_F5D1A1: Me.FrmList.Visible = False
  loc_F5D1D1: Set var_9C = Me.TxtGrid
  loc_F5D1D7: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5D1DF: var_A8.SetFocus
  loc_F5D1F3: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12E65E0
  'Data Table: 4A76E0
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Variant
  Dim var_B4 As Variant
  loc_12E5F36: Set var_88 = Me.Txt
  loc_12E5F3C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12E5F4A: Proc_6_74_E226B0(var_8C)
  loc_12E5F56: Call Proc_319_55_EB7154(var_8C)
  loc_12E5F5E: var_92 = Index
  loc_12E5F69: If (var_92 = CInt(0)) Then
  loc_12E5F83:   If (Me.RecordCount > 0) Then
  loc_12E5F91:     Set var_8C = Me.FGPoint
  loc_12E5FA9:     Proc_6_137_1193554(Me.DGHelp, global_72, Index)
  loc_12E5FB7:   End If
  loc_12E6005:   Set var_88 = Me.Txt
  loc_12E600B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12E6013:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E602B:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_12E602E:     Exit Sub
  loc_12E602F:   End If
  loc_12E603C:   Set var_88 = Me.Txt
  loc_12E6042:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E604A:   var_A0 = var_8C.Text
  loc_12E605C:   var_B0 = "Name"
  loc_12E6097:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_12E60A0:     Me.MoveFirst
  loc_12E60C3:     Set var_88 = Me.Txt
  loc_12E60C9:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_12E60D1:     0 = var_8C.Text
  loc_12E60EA:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_12E60FF:   End If
  loc_12E6102: Else
  loc_12E610A:   If (var_92 = CInt(1)) Then
  loc_12E611A:     ReDim var_F0(0 To 2)
  loc_12E6131:     var_F0(0) = "Total"
  loc_12E6140:     var_F0(1) = "Discounted Total"
  loc_12E614F:     var_F0(2) = "Net Amount"
  loc_12E6166:     global_84 = Array(var_F0)
  loc_12E6171:     Set var_B4 = Me.ListView
  loc_12E618C:     Set var_8C = Me.Txt
  loc_12E61A6:     Set global_100 = Proc_6_66_EFF8FC(var_B4, var_8C, Index)
  loc_12E61C4:     Set var_88 = Me.Txt
  loc_12E61CA:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12E61D2:     global_84 = var_8C.Text
  loc_12E61E4:     Set var_90 = Me.Txt
  loc_12E61EA:     Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_12E61F2:     var_B4.Tag = 3
  loc_12E6212:     Set var_88 = Me.Txt
  loc_12E6218:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E6232:     Me.FrmList.Left = var_8C.Left
  loc_12E624D:     Set var_90 = Me.Txt
  loc_12E6253:     Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_12E626D:     Set var_88 = Me.Txt
  loc_12E6273:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E6296:     Me.FrmList.Top = ((var_8C.Top + var_B4.Height) + CDbl(&H1E))
  loc_12E62AB:   Else
  loc_12E62B3:     If (var_92 = CInt(2)) Then
  loc_12E62C3:       ReDim var_F0(0 To 1)
  loc_12E62DA:       var_F0(0) = "Sales"
  loc_12E62E9:       var_F0(1) = "Points"
  loc_12E6300:       global_84 = Array(var_F0)
  loc_12E630B:       Set var_B4 = Me.ListView
  loc_12E6326:       Set var_8C = Me.Txt
  loc_12E6340:       Set global_100 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_84)
  loc_12E635E:       Set var_88 = Me.Txt
  loc_12E6364:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12E636C:       2 = var_8C.Text
  loc_12E637E:       Set var_90 = Me.Txt
  loc_12E6384:       Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_12E638C:       var_B4.Tag = global_84
  loc_12E63AC:       Set var_88 = Me.Txt
  loc_12E63B2:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E63CC:       Me.FrmList.Left = var_8C.Left
  loc_12E63E7:       Set var_90 = Me.Txt
  loc_12E63ED:       Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_12E6407:       Set var_88 = Me.Txt
  loc_12E640D:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E6430:       Me.FrmList.Top = ((var_8C.Top + var_B4.Height) + CDbl(&H1E))
  loc_12E6445:     Else
  loc_12E644D:       If (var_92 = CInt(3)) Then
  loc_12E645D:         ReDim var_F0(0 To 1)
  loc_12E6474:         var_F0(0) = "Rewarding"
  loc_12E6483:         var_F0(1) = "Redemption"
  loc_12E649A:         global_84 = Array(var_F0)
  loc_12E64A5:         Set var_B4 = Me.ListView
  loc_12E64C0:         Set var_8C = Me.Txt
  loc_12E64DA:         Set global_100 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_84)
  loc_12E64F8:         Set var_88 = Me.Txt
  loc_12E64FE:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12E6506:         2 = var_8C.Text
  loc_12E6518:         Set var_90 = Me.Txt
  loc_12E651E:         Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_12E6526:         var_B4.Tag = global_84
  loc_12E6546:         Set var_88 = Me.Txt
  loc_12E654C:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E6566:         Me.FrmList.Left = var_8C.Left
  loc_12E6581:         Set var_90 = Me.Txt
  loc_12E6587:         Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_12E65A1:         Set var_88 = Me.Txt
  loc_12E65A7:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E65CA:         Me.FrmList.Top = ((var_8C.Top + var_B4.Height) + CDbl(&H1E))
  loc_12E65DC:       End If
  loc_12E65DC:     End If
  loc_12E65DC:   End If
  loc_12E65DC: End If
  loc_12E65DC: Exit Sub
  loc_12E65DD: Set var_A8 = global_84
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1234094
  'Data Table: 4A76E0
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As TextBox
  Dim var_B4 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As Frame
  loc_1233B92: If (CLng(Shift) = &H1B) Then
  loc_1233B95:   Call Proc_319_55_EB7154()
  loc_1233B9A:   Exit Sub
  loc_1233B9B: End If
  loc_1233B9E: var_86 = KeyCode
  loc_1233BA9: If (var_86 = CInt(0)) Then
  loc_1233BB0:   Set var_A4 = Me.DGHelp
  loc_1233BC4:   Set var_9C = Nothing
  loc_1233BF6:   Proc_6_79_11ACE04(var_A4, Me.Txt, CInt(0), global_72, Shift)
  loc_1233C11:   var_AC = Me.RecordCount
  loc_1233C61:   If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1233C6F:     Set var_90 = Me.FGPoint
  loc_1233C87:     Proc_6_138_106D6F8(Me.DGHelp, global_72, KeyCode, var_90, 0)
  loc_1233C95:   End If
  loc_1233C98: Else
  loc_1233CA0:   If (var_86 = CInt(1)) Then
  loc_1233CC5:     Set var_8C = Me.Txt
  loc_1233CCB:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 1)
  loc_1233CD3:     var_9C = var_90.Left
  loc_1233CE5:     Set var_9C = Me.Txt
  loc_1233CEB:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_1233CF3:     0 = var_A4.Top
  loc_1233D05:     Set var_A8 = Me.Txt
  loc_1233D0B:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_1233D13:     var_B8 = var_B4.Height
  loc_1233D25:     Set var_BC = Me.Txt
  loc_1233D2B:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1233D33:     var_C4 = var_C0.Width
  loc_1233D7F:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1233DA6:   Else
  loc_1233DAE:     If (var_86 = CInt(2)) Then
  loc_1233DD3:       Set var_8C = Me.Txt
  loc_1233DD9:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_1233DE1:       CInt(((var_B0 + var_B8) + CDbl(&H19))) = var_90.Left
  loc_1233DF3:       Set var_9C = Me.Txt
  loc_1233DF9:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_1233E01:       CInt(var_C4) = var_A4.Top
  loc_1233E13:       Set var_A8 = Me.Txt
  loc_1233E19:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4, var_B8)
  loc_1233E21:       780 = var_B4.Height
  loc_1233E33:       Set var_BC = Me.Txt
  loc_1233E39:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1233E41:       var_C4 = var_C0.Width
  loc_1233E8D:       Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1233EB4:     Else
  loc_1233EBC:       If (var_86 = CInt(3)) Then
  loc_1233EE1:         Set var_8C = Me.Txt
  loc_1233EE7:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_1233EEF:         CInt(((var_B0 + var_B8) + CDbl(&H19))) = var_90.Left
  loc_1233F01:         Set var_9C = Me.Txt
  loc_1233F07:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_1233F0F:         CInt(var_C4) = var_A4.Top
  loc_1233F21:         Set var_A8 = Me.Txt
  loc_1233F27:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4, var_B8)
  loc_1233F2F:         520 = var_B4.Height
  loc_1233F41:         Set var_BC = Me.Txt
  loc_1233F47:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1233F4F:         var_C4 = var_C0.Width
  loc_1233F9B:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1233FBF:       End If
  loc_1233FBF:     End If
  loc_1233FBF:   End If
  loc_1233FBF: End If
  loc_1233FCC: var_92 = Me.FrmList.Visible
  loc_1233FDB: Set var_90 = Me.DGHelp
  loc_1233FF8: If ((var_92 = 0) And (CBool(var_90.Visible) = 0)) Then
  loc_1234010:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1234016:     Call Proc_319_49_1097B28(var_92, CInt(var_AC), CInt(((var_B0 + var_B8) + CDbl(&H19))))
  loc_1234021:     If (var_92 = &HFF) Then
  loc_1234031:       Set var_8C = Me.Txt
  loc_1234037:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_123403F:       var_90.Text = CInt(var_C4)
  loc_123404B:       Exit Sub
  loc_123404C:     End If
  loc_123404C:   End If
  loc_1234061:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_123406A:     Proc_6_75_E527CC(Shift, arg_14)
  loc_123406F:   End If
  loc_1234082:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_123408B:     Proc_6_76_E52838(Shift, arg_14)
  loc_1234090:   End If
  loc_1234090: End If
  loc_1234090: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E26A94
  'Data Table: 4A76E0
  Dim var_96 As Integer
  loc_E26A76: Proc_6_133_E7EF78(var_94)
  loc_E26A88: Proc_6_58_E054C0(CInt(var_94), CInt(var_94))
  loc_E26A90: var_96 = KeyAscii
  loc_E26A93: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F35C64
  'Data Table: 4A76E0
  Dim var_86 As Integer
  loc_F35B4F: var_86 = KeyCode
  loc_F35B5A: If (var_86 = CInt(0)) Then
  loc_F35B79:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F35B86:     var_A4 = "Name"
  loc_F35BA5:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_72)
  loc_F35BD7:     Proc_6_138_106D6F8(Me.DGHelp, global_72, KeyCode, Me.FGPoint)
  loc_F35BE5:   End If
  loc_F35BE8: Else
  loc_F35BF0:   If Not (var_86 = CInt(1)) Then
  loc_F35BFB:     If Not (var_86 = CInt(2)) Then
  loc_F35C06:       If (var_86 = CInt(3)) Then
  loc_F35C09:       End If
  loc_F35C09:     End If
  loc_F35C24:     If (Me.FrmList.Visible = &HFF) Then
  loc_F35C53:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F35C63:     End If
  loc_F35C63:   End If
  loc_F35C63: End If
  loc_F35C63: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A71C
  'Data Table: 4A76E0
  loc_E4A6FA: Set var_88 = Me.Txt
  loc_E4A700: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A70E: Proc_6_73_E22704(var_8C)
  loc_E4A71A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FFEACC
  'Data Table: 4A76E0
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_8C As Variant
  Dim var_B0 As TextBox
  loc_FFE8CF: var_86 = Cancel
  loc_FFE8DA: If (var_86 = CInt(0)) Then
  loc_FFE8E8:   Set var_8C = Me.Txt
  loc_FFE8EE:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_FFE8F6:   var_98 = "Name"
  loc_FFE917:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_FFE924:     Set var_8C = Me.Txt
  loc_FFE92A:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FFE932:     var_90.SetFocus
  loc_FFE940:     arg_10 = &HFF
  loc_FFE943:     Exit Sub
  loc_FFE944:   End If
  loc_FFE947:   Call Proc_319_49_1097B28(var_9A, arg_10)
  loc_FFE952:   If (var_9A = &HFF) Then
  loc_FFE957:     arg_10 = &HFF
  loc_FFE95A:     Exit Sub
  loc_FFE95B:   End If
  loc_FFE95E: Else
  loc_FFE966:   If Not (var_86 = CInt(1)) Then
  loc_FFE971:     If (var_86 = CInt(2)) Then
  loc_FFE974:     End If
  loc_FFE981:     Set var_8C = Me.Txt
  loc_FFE987:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_FFE98F:     arg_10 = var_90.Text
  loc_FFE9A6:     If (var_98 <> vbNullString) Then
  loc_FFE9C1:       Set var_90 = Me.ListView.SelectedItem
  loc_FFE9D9:       Set var_94 = Me.Txt
  loc_FFE9DF:       Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_FFE9E7:       var_B0.Text = var_90.Text
  loc_FFE9FD:     End If
  loc_FFEA00:   Else
  loc_FFEA08:     If (var_86 = CInt(3)) Then
  loc_FFEA18:       Set var_8C = Me.Txt
  loc_FFEA1E:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FFEA3D:       If (var_90.Text <> vbNullString) Then
  loc_FFEA70:         Set var_94 = Me.Txt
  loc_FFEA76:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_FFEA7E:         var_B0.Text = Me.ListView.SelectedItem.Text
  loc_FFEA94:       End If
  loc_FFEAA7:       Me.FGrid.Row = 1
  loc_FFEAC2:       Me.FGrid.Col = 1
  loc_FFEACA:     End If
  loc_FFEACA:   End If
  loc_FFEACA: End If
  loc_FFEACA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAA9C4
  'Data Table: 4A76E0
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EAA938: On Error Goto loc_EAA9BE
  loc_EAA948: Me.LblUser.Caption = vbNullString
  loc_EAA95D: Me.LblLDt.Caption = vbNullString
  loc_EAA988: Call Proc_319_54_E7A6D4(Proc_5_1_100CB50("ADD", Me))
  loc_EAA993: Call Proc_319_52_F21B24(global_68)
  loc_EAA9A3: Set var_88 = Me.Txt
  loc_EAA9A9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EAA9B1: var_94.SetFocus
  loc_EAA9BD: Exit Sub
  loc_EAA9BE: ' Referenced from: EAA938
  loc_EAA9BE: Proc_6_60_E62BC4(var_94)
  loc_EAA9C3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9B748
  'Data Table: 4A76E0
  loc_E9B6D0: On Error Goto loc_E9B741
  loc_E9B70A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9B730:   Call Proc_319_54_E7A6D4(Proc_5_1_100CB50("INI", Me))
  loc_E9B73B:   Call Proc_319_53_140AF4C(global_68)
  loc_E9B740: End If
  loc_E9B740: Exit Sub
  loc_E9B741: ' Referenced from: E9B6D0
  loc_E9B741: Proc_6_60_E62BC4()
  loc_E9B746: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'E8744C
  'Data Table: 4A76E0
  Dim unk_4A7702 As Connection15
  loc_E873F0: On Error Goto loc_E873F3
  loc_E873F3: ' Referenced from: E873F0
  loc_E873F9: If (var_96 = &HFF) Then
  loc_E87402:   unk_4A7702.RollbackTrans
  loc_E87407: End If
  loc_E8740F: Set var_9C = Err()
  loc_E87415: Call 0.Method_arg_2C (var_A0)
  loc_E87436: MsgBox(CVar(var_A0), &H30, " Deletion Error ", var_F0, var_110)
  loc_E87449: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F8FF10
  'Data Table: 4A76E0
  Dim var_88 As Label
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F8FDB4: On Error Goto loc_F8FECA
  loc_F8FDC4: Me.LblUser.Caption = vbNullString
  loc_F8FDD9: Me.LblLDt.Caption = vbNullString
  loc_F8FDEF: If (Proc_183_55_FE7900(global_68) = &HFF) Then
  loc_F8FDF2:   Exit Sub
  loc_F8FDF3: End If
  loc_F8FE0A: If (Me.RecordCount > 0) Then
  loc_F8FE30:   Call Proc_319_54_E7A6D4(Proc_5_1_100CB50("EDIT", Me))
  loc_F8FE49:   Set var_88 = Me.Txt
  loc_F8FE4F:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F8FE57:   var_90 = var_98.Text
  loc_F8FE62:   global_80 = var_90
  loc_F8FE7B:   Set var_88 = Me.Txt
  loc_F8FE81:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F8FE89:   var_98.SetFocus
  loc_F8FE98: Else
  loc_F8FEB9:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F8FEC9: End If
  loc_F8FEC9: Exit Sub
  loc_F8FECA: ' Referenced from: F8FDB4
  loc_F8FED2: Set var_88 = Err()
  loc_F8FED8: Call 0.Method_arg_2C (var_90)
  loc_F8FEF9: MsgBox(CVar(var_90), &H30, " Editing Error ", var_F8, var_118)
  loc_F8FF0C: Exit Sub
  loc_F8FF0D: StAryRecMove
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BA40
  'Data Table: 4A76E0
  loc_E1BA35: Me.Global.Unload Me
  loc_E1BA3D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC82C4
  'Data Table: 4A76E0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F920E4 As String
  loc_EC8224: On Error Goto loc_EC82BC
  loc_EC823E: If (Me.RecordCount <= 0) Then
  loc_EC8247:   var_B8 = "Information"
  loc_EC8262:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC8272:   Exit Sub
  loc_EC8273: End If
  loc_EC8281: MemVar_1F920E4 = "Select distinct Code As SearchCode,Name FROM RWParameter where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_EC828E: MemVar_1F92120 = Me
  loc_EC829B: Proc_6_126_F1BCC0("3500")
  loc_EC82B6: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC82BB: Exit Sub
  loc_EC82BC: ' Referenced from: EC8224
  loc_EC82BC: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC82C1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2B878
  'Data Table: 4A76E0
  loc_E2B868: Proc_5_0_110649C(&HFF, Me)
  loc_E2B870: Call Proc_319_53_140AF4C(global_68)
  loc_E2B875: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2B278
  'Data Table: 4A76E0
  loc_E2B268: Proc_5_0_110649C(&HFF, Me)
  loc_E2B270: Call Proc_319_53_140AF4C(global_68)
  loc_E2B275: Exit Sub
  loc_E2B276: Set arg_6800 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2B398
  'Data Table: 4A76E0
  loc_E2B388: Proc_5_0_110649C(&HFF, Me)
  loc_E2B390: Call Proc_319_53_140AF4C(global_68)
  loc_E2B395: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2B638
  'Data Table: 4A76E0
  loc_E2B628: Proc_5_0_110649C(&HFF, Me)
  loc_E2B630: Call Proc_319_53_140AF4C(global_68)
  loc_E2B635: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10828D0
  'Data Table: 4A76E0
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4A7702 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  Dim arg_6860 As Variant
  loc_1082638: On Error Goto loc_1082884
  loc_108265F: unk_4A7702.Execute "Select * From RWParameter where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Sno", var_C4, -1
  loc_108266A: Set var_88 = var_C8
  loc_1082680: var_CC = var_88.RecordCount
  loc_108268E: If (var_CC = 0) Then
  loc_10826AA:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_10826BA:   Exit Sub
  loc_10826BB: End If
  loc_10826CA: var_A4 = MemVar_1F920B4 & "\RWParameter.ttx"
  loc_10826D1: Set var_C8 = var_88 
  loc_10826DD: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_10826E7: Set var_88 = var_C8
  loc_10826ED: var_B4 = CVar(var_12E) 'Integer
  loc_10826F0: var_98 = var_B4 'Variant
  loc_108270C: var_A0 = MemVar_1F920B4 & "\RWParameter.RPT"
  loc_1082715: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1082720: MemVar_1F921E4 = var_C8
  loc_108273B: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1082743: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108274F: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1082768:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1082770:   Call 0.Method_arg_20 (var_138)
  loc_1082778:   Call 0.Method_arg_30 (var_A0)
  loc_10827BE:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10827D4:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10827DC:     Call 0.Method_arg_20 (var_138)
  loc_10827E4:     Call 0.Method_arg_38 ("'Reward Points Parameter I'")
  loc_10827F0:   End If
  loc_10827F3: Next var_132 'Integer
  loc_1082811: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1082819: Call 0.Method_arg_2C (var_DC)
  loc_1082827: Call 0.Method_arg_150 (var_FC)
  loc_1082832: Call 0.Method_arg_50 (var_A0)
  loc_108283C: Set var_138 = Nothing
  loc_1082856: Set var_C8 = MemVar_1F921E4 
  loc_1082862: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_108286D: MemVar_1F921E4 = var_C8
  loc_1082880: Set var_88 = Nothing
  loc_1082883: Exit Sub
  loc_1082884: ' Referenced from: 1082638
  loc_108288C: Set var_C8 = Err()
  loc_1082892: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108289D: Call 0.Method_arg_50 (var_A4)
  loc_10828B9: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_10828CC: Exit Sub
  loc_10828CD: arg_6860 = CVar(var_138) 'Long
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A260
  'Data Table: 4A76E0
  Dim Me As Recordset15
  loc_E0A257: Me.Requery -1
  loc_E0A25C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1585310
  'Data Table: 4A76E0
  Dim var_F4 As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_A8 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_AC As Variant
  Dim var_298 As Variant
  Dim var_A0 As Integer
  Dim var_B0 As String
  Dim var_1D8 As Variant
  Dim var_2AC As String
  Dim unk_4A7702 As Connection15
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_238 As Variant
  Dim var_2F4 As Variant
  Dim var_33C As Variant
  Dim var_35C As Variant
  Dim var_3D4 As Variant
  Dim var_9D8 As Double
  Dim var_9E0 As Double
  Dim var_9E8 As Double
  Dim var_9F0 As Double
  Dim var_58C As Variant
  Dim var_7B0 As Variant
  Dim var_928 As Variant
  Dim Me As Recordset15
  loc_1584314: On Error Goto loc_15852BC
  loc_158431B: var_86 = CByte(0) 'Byte
  loc_158432A: Set var_A4 = Me.Txt
  loc_1584330: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1584359: If (Proc_183_19_E8DAFC(var_A8, "Name") = 0) Then
  loc_1584363:   Call Txt_GotFocus(CInt(0))
  loc_1584368:   Exit Sub
  loc_1584369: End If
  loc_158436C: Call Proc_319_49_1097B28(var_B2)
  loc_1584377: If (var_B2 = &HFF) Then
  loc_158437A:   Exit Sub
  loc_158437B: End If
  loc_158439C: var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15843A6: For var_114 = 1 To var_E4: var_9C = var_114 'Variant
  loc_15843D1:   For var_118 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9E = var_118 'Integer
  loc_15843DC:     var_D4 = CVar(CLng(var_9C)) 'Long
  loc_15843E4:     var_F4 = CVar(CLng(1)) 'Long
  loc_15843FE:     var_138 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1584404:     var_148 = Trim(var_138)
  loc_158440C:     var_158 = vbNullString
  loc_158441B:     var_178 = CVar(CLng(var_9C)) 'Long
  loc_1584424:     var_198 = CVar(CLng(var_9E)) 'Long
  loc_1584444:     var_1D8 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_158444C:     var_1E8 = vbNullString
  loc_15844BE:     If CBool(CVar(CLng(var_9C)) And CVar(CLng(var_9E)) Or (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "0.00")) Then
  loc_15844C9:       If (var_9E = CInt(1)) Then
  loc_15844E5:         MsgBox("Category is required", 0, var_138, var_148, var_168)
  loc_15844F7:         var_A0 = &HFF
  loc_15844FA:       End If
  loc_1584502:       If (var_9E = CInt(2)) Then
  loc_158451E:         MsgBox("RPoint On Amt is required", 0, var_138, var_148, var_168)
  loc_1584530:         var_A0 = &HFF
  loc_1584533:       End If
  loc_158453B:       If (var_9E = CInt(3)) Then
  loc_1584557:         MsgBox("RPoint is required", 0, var_138, var_148, var_168)
  loc_1584569:         var_A0 = &HFF
  loc_158456C:       End If
  loc_1584574:       If (var_9E = CInt(4)) Then
  loc_1584590:         MsgBox("RPoint Value is required", 0, var_138, var_148, var_168)
  loc_15845A2:         var_A0 = &HFF
  loc_15845A5:       End If
  loc_15845AD:       If (var_9E = CInt(5)) Then
  loc_15845C9:         MsgBox("Limit is required", 0, var_138, var_148, var_168)
  loc_15845DB:         var_A0 = &HFF
  loc_15845DE:       End If
  loc_15845E6:       If (var_9E = CInt(6)) Then
  loc_1584602:         MsgBox("Compare Operator is required", 0, var_138, var_148, var_168)
  loc_1584614:         var_A0 = &HFF
  loc_1584617:       End If
  loc_158461F:       var_178 = (var_9E = CInt(7))
  loc_1584628:       var_D4 = CVar(CLng(var_9C)) 'Long
  loc_158464A:       var_138 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1584650:       var_148 = Trim(var_138)
  loc_1584676:       If CBool(CVar(CLng(6)) And (var_148 = "Between")) Then
  loc_1584692:         MsgBox("Up Limit is required", 0, var_138, var_148, var_168)
  loc_15846A4:         var_A0 = &HFF
  loc_15846A7:       End If
  loc_15846AD:       If (var_A0 = &HFF) Then
  loc_15846C4:         Me.FGrid.Row = CVar(CLng(var_9C))
  loc_15846DF:         Me.FGrid.Col = CVar(CLng(var_9E))
  loc_15846EB:         Set var_A4 = Me.FGrid
  loc_158470F:         Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1584717:         Exit Sub
  loc_1584718:       End If
  loc_1584718:     End If
  loc_158471D:     var_D4 = CVar(CLng(var_9C)) 'Long
  loc_1584725:     var_F4 = CVar(CLng(1)) 'Long
  loc_1584745:     var_148 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_158474D:     var_158 = vbNullString
  loc_158475C:     var_178 = CVar(CLng(var_9C)) 'Long
  loc_158478A:     var_1C8 = CVar(CLng(3)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)
  loc_1584793:     var_208 = CVar(CLng(var_9C)) 'Long
  loc_15847E8:     If CBool(CVar(CLng(4)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_15847F8:       var_D4 = CVar(CLng(var_9C)) 'Long
  loc_1584800:       var_F4 = CVar(CLng(9)) 'Long
  loc_158481A:       var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_1584843:       var_138 = Me.FGrid.TextMatrix)
  loc_1584873:       If (CVar(CLng(var_9C)) And Not((CVar(CLng(9)) And (CDbl(Val(CStr(var_138))) <= CDbl(&H64))))) Then
  loc_158488F:         MsgBox("Check % Redemption", 0, var_138, var_148, var_168)
  loc_15848A1:         var_A0 = &HFF
  loc_15848A4:       End If
  loc_15848AA:       If (var_A0 = &HFF) Then
  loc_15848C1:         Me.FGrid.Row = CVar(CLng(var_9C))
  loc_15848DC:         Me.FGrid.Col = CVar(CLng(var_9E))
  loc_15848E8:         Set var_A4 = Me.FGrid
  loc_158490C:         Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1584914:         Exit Sub
  loc_1584915:       End If
  loc_1584920:       var_D4 = CVar(CLng(var_9C)) 'Long
  loc_1584925:       var_F4 = &HA
  loc_1584943:       var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_1584967:       Set var_A8 = Me.FGrid
  loc_158496D:       var_138 = var_A8.TextMatrix)
  loc_158499D:       If (CVar(CLng(var_9C)) And Not((&HA And (CDbl(Val(CStr(var_138))) <= CDbl(&H64))))) Then
  loc_15849B3:         var_C4 = "Check % App. UpTo Disc."
  loc_15849B9:         MsgBox(var_C4, 0, var_138, var_148, var_168)
  loc_15849CB:         var_A0 = &HFF
  loc_15849CE:       End If
  loc_15849D4:       If (var_A0 = &HFF) Then
  loc_15849EB:         Me.FGrid.Row = CVar(CLng(var_9C))
  loc_1584A06:         Me.FGrid.Col = CVar(CLng(var_9E))
  loc_1584A12:         Set var_A4 = Me.FGrid
  loc_1584A36:         Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1584A3E:         Exit Sub
  loc_1584A3F:       End If
  loc_1584A3F:     End If
  loc_1584A42:   Next var_118 'Integer
  loc_1584A4A: Next var_114 'Variant
  loc_1584A54: Set var_A4 = Me.TopCtrl1
  loc_1584A5A: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_1584A73: If (CStr() = "Add") Then
  loc_1584A7C:   var_E4 = 0
  loc_1584A99:   var_B0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS NUMERIC)),0)+1 AS MyCode From RWParameter WHERE ISNumeric(substring(Code,3,4))=1 AND SITE_CODE='" & MemVar_1F92070
  loc_1584AA9:   unk_4A7702.Execute CStr() & "'", var_C4, -1
  loc_1584AB1:   var_A4 = var_A4.Fields
  loc_1584AB9:   var_E4 = var_A8.Item(var_A8)
  loc_1584AC1:   var_AC = var_AC.Value
  loc_1584AFA:   var_148 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1584B0C:   var_C4 = "0000"
  loc_1584B28:   var_168 = (1 + Format(CStr(var_138), var_C4))
  loc_1584B2D:   var_B0 = CStr(var_168)
  loc_1584B33:   global_60 = var_B0
  loc_1584B48: Else
  loc_1584B56:   Set var_A4 = Me.Txt
  loc_1584B5C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0)
  loc_1584B64:   1 = var_A8.Tag
  loc_1584B6F:   global_60 = var_B0
  loc_1584B7D: End If
  loc_1584B86: unk_4A7702.BeginTrans var_2B4
  loc_1584B8F: var_86 = CByte(1) 'Byte
  loc_1584BBA: unk_4A7702.Execute "Delete From RWParameter Where Code='" & global_60 & "'", var_C4, -1
  loc_1584BED: var_E4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1584BF7: For var_2D4 = 1 To "0000": var_9C = var_2D4 'Variant
  loc_1584C02:   var_D4 = CVar(CLng(var_9C)) 'Long
  loc_1584C0A:   var_F4 = CVar(CLng(1)) 'Long
  loc_1584C52:   Set var_A8 = Me.FGrid
  loc_1584C9A:   var_2AC = CStr(Me.FGrid.TextMatrix))
  loc_1584CCD:   If CBool(CVar(CLng(4)) And (var_2AC <> vbNullString)) Then
  loc_1584CDE:     Set var_A4 = Me.Txt
  loc_1584CE4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_2AC, CVar(CLng(var_9C)), CVar(CLng(3)) And (CStr(var_A8.TextMatrix)) <> vbNullString), CVar(CLng(var_9C)), (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString))
  loc_1584CEC:     var_F4 = var_A8.Text
  loc_1584CF6:     var_D4 = CVar(CLng(var_9C)) 'Long
  loc_1584CFE:     var_F4 = CVar(CLng(1)) 'Long
  loc_1584D18:     var_138 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1584D1E:     var_148 = Trim(var_138)
  loc_1584D37:     var_198 = CVar(CLng(var_9C)) 'Long
  loc_1584D3F:     var_1E8 = CVar(CLng(2)) 'Long
  loc_1584D69:     var_238 = CVar(CLng(var_9C)) 'Long
  loc_1584D71:     var_2F4 = CVar(CLng(3)) 'Long
  loc_1584D9B:     var_33C = CVar(CLng(var_9C)) 'Long
  loc_1584DA3:     var_35C = CVar(CLng(4)) 'Long
  loc_1584DCD:     var_3D4 = CVar(CLng(var_9C)) 'Long
  loc_1584DF7:     var_9D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1584E29:     var_9E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1584E5B:     var_9E8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1584E8E:     var_9F0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1584EC0:     var_9F4 = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(var_9C)), var_9F0, &HA, CVar(CLng(var_9C)), var_9E8, CVar(CLng(9)))
  loc_1584ECE:     Set var_6CC = Me.Txt
  loc_1584ED4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_6D0, CVar(CLng(var_9C)), var_9E0, CVar(CLng(7)))
  loc_1584EF3:     Set var_724 = Me.Txt
  loc_1584EF9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_728, CVar(CLng(var_9C)))
  loc_1584F18:     Set var_77C = Me.Txt
  loc_1584F1E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_780, var_9D8)
  loc_1584F40:     Proc_183_7_EB0C44(var_870, Date)
  loc_1584F49:     Set var_8A4 = Me.TopCtrl1
  loc_1584F4F:     Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(CVar(CLng(5)))
  loc_1584F9D:     var_B0 = "Insert Into RWParameter(Code,Name,Category,Sno,RPointOnAmt,RPoint,RPointValue,LimitLow,LimitUp,RedeemPer,AppUpToDiscPer,CompOperator,CondApp,LimitAppOn,PointEvalOn,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & global_60
  loc_1584FB2:     var_168 = CVar(var_B0 & "','" & var_2AC & "','") 'String
  loc_1584FF4:     var_298 = var_168 & var_148 & "'," & CVar(Val(CStr(var_9C))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_158504D:     var_58C = var_298 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_9D8) & "," & CVar(var_9E0) & "," & CVar(var_9E8) & "," 
  loc_158509B:     var_7B0 = var_58C & CVar(var_9F0) & ",'" & CVar(var_9F4) & "','" & Trim(CVar(var_6D0)) & "','" & Trim(CVar(var_728)) & "','" & Trim(CVar(var_780)) 
  loc_15850E1:     var_928 = var_7B0 & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_870 & ",'" & IIf((CStr(var_8B4) = "Add"), "A", "E") 
  loc_158510B:     unk_4A7702.Execute CStr(var_928 & "','" & CVar(MemVar_1F92078) & "')"), var_9AC, -1
  loc_15851D7:   End If
  loc_15851DA: Next var_2D4 'Variant
  loc_15851E6: unk_4A7702.CommitTrans
  loc_15851EF: var_86 = CByte(0) 'Byte
  loc_15851FE: Me.Requery -1
  loc_158520E: Me.Requery -1
  loc_1585217: Set var_A4 = Me.DGHelp
  loc_1585250: Me.Find "SearchCode='" & global_60 & "'", 0, 1
  loc_1585260: Set var_A4 = Me.TopCtrl1
  loc_1585266: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_D4)
  loc_158527F: If (CStr(DGHelp.DispID_FFFF) = "Add") Then
  loc_1585282:   Call TopCtrl1_UnknownEvent_A()
  loc_1585287:   Exit Sub
  loc_1585288: End If
  loc_158529D: var_B0 = "INI"
  loc_15852AB: Call Proc_319_54_E7A6D4(Proc_5_1_100CB50(var_B0, Me))
  loc_15852B6: Call Proc_319_53_140AF4C(global_68)
  loc_15852BB: Exit Sub
  loc_15852BC: ' Referenced from: 1584314
  loc_15852C5: If (CInt(var_86) = 1) Then
  loc_15852CE:   unk_4A7702.RollbackTrans
  loc_15852D3: End If
  loc_15852DB: Set var_A4 = Err()
  loc_15852E1: Call 0.Method_arg_2C (var_B0)
  loc_15852FA: MsgBox(CVar(var_B0), &H10, var_138, var_148, var_168)
  loc_158530D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E60E34
  'Data Table: 4A76E0
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E60DFF: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60E12: Set var_A8 = Me.TxtGrid
  loc_E60E18: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60E20: var_AC.Visible = False
  loc_E60E2C: Call Proc_319_55_EB7154()
  loc_E60E31: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67670
  'Data Table: 4A76E0
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6762C: Set var_88 = Me.TxtGrid
  loc_E67632: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6764C: If (var_8C.Visible = 0) Then
  loc_E67665:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E6766D: End If
  loc_E6766D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1C8E0
  'Data Table: 4A76E0
  loc_E1C8D7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1C8DF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF91C
  'Data Table: 4A76E0
  loc_DFF914: Call Proc_319_50_E41AD0()
  loc_DFF919: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A 'FE3D10
  'Data Table: 4A76E0
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_FE3B3C: Set var_88 = Me.TopCtrl1
  loc_FE3B42: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_FE3B5B: If (CStr() = "Browse") Then
  loc_FE3B5E:   Exit Sub
  loc_FE3B5F: End If
  loc_FE3BD3: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_FE3BE9:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_FE3BF9:   var_9C = "+{Tab}"
  loc_FE3BFF:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_FE3C09:   Cancel = 0
  loc_FE3C0F: Else
  loc_FE3C66:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_FE3C7C:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_FE3C86:     Cancel = 0
  loc_FE3C89:   End If
  loc_FE3C89: End If
  loc_FE3C8F: global_64 = Cancel
  loc_FE3CB5: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_FE3CD9: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_FE3CEF:   var_EC = CLng(Me.FGrid.Col)
  loc_FE3CF8: End If
  loc_FE3CFE: If (Cancel = &HD) Then
  loc_FE3D06:   global_66 = 0
  loc_FE3D09: End If
  loc_FE3D0B: Cancel = 0
  loc_FE3D0E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E14BB8
  'Data Table: 4A76E0
  loc_E14BA9: Call FGrid_UnknownEvent_C()
  loc_E14BB3: global_66 = 0
  loc_E14BB6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1201194
  'Data Table: 4A76E0
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  Dim var_A8 As Long
  Dim var_CE As Integer
  Dim var_C8 As TextBox
  loc_1200CE4: Set var_88 = Me.TopCtrl1
  loc_1200CEA: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_1200D03: If (CStr() = "Browse") Then
  loc_1200D06:   Exit Sub
  loc_1200D07: End If
  loc_1200D1A: var_A0 = CLng(Me.FGrid.Col)
  loc_1200D2A: If (var_A0 = CLng(1)) Then
  loc_1200D3B:   Set var_88 = Me.TxtGrid
  loc_1200D41:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1200D49:   var_A4.MaxLength = &H23
  loc_1200D58: Else
  loc_1200D5F:   If (var_A0 = CLng(6)) Then
  loc_1200D70:     Set var_88 = Me.TxtGrid
  loc_1200D76:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1200D7E:     var_A4.MaxLength = 7
  loc_1200D8D:   Else
  loc_1200D94:     If (var_A0 = CLng(3)) Then
  loc_1200DA5:       Set var_88 = Me.TxtGrid
  loc_1200DAB:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1200DB3:       var_A4.MaxLength = 8
  loc_1200DC2:     Else
  loc_1200DC9:       If Not (var_A0 = CLng(2)) Then
  loc_1200DD3:         If Not (var_A0 = CLng(4)) Then
  loc_1200DDD:           If Not (var_A0 = CLng(5)) Then
  loc_1200DE7:             If (var_A0 = CLng(7)) Then
  loc_1200DEA:             End If
  loc_1200DEA:           End If
  loc_1200DEA:         End If
  loc_1200DF8:         Set var_88 = Me.TxtGrid
  loc_1200DFE:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1200E06:         var_A4.MaxLength = &HA
  loc_1200E15:       Else
  loc_1200E1C:         If Not (var_A0 = CLng(9)) Then
  loc_1200E28:           If (var_A0 = &HA) Then
  loc_1200E2B:           End If
  loc_1200E39:           Set var_88 = Me.TxtGrid
  loc_1200E3F:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1200E47:           var_A4.MaxLength = 6
  loc_1200E53:         End If
  loc_1200E53:       End If
  loc_1200E53:     End If
  loc_1200E53:   End If
  loc_1200E53: End If
  loc_1200E66: var_A8 = CLng(Me.FGrid.Col)
  loc_1200E76: If Not (var_A8 = CLng(1)) Then
  loc_1200E80:   If Not (var_A8 = CLng(8)) Then
  loc_1200E8A:     If (var_A8 = CLng(6)) Then
  loc_1200E8D:     End If
  loc_1200E8D:   End If
  loc_1200E91:   Set var_C8 = Me.FGrid
  loc_1200EB5:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1200EE2:   Set var_A4 = var_C8
  loc_1200EF4:   Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0, 0)
  loc_1200F1C:   Set var_88 = Me.TxtGrid
  loc_1200F22:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, Asc(var_9C))
  loc_1200F2A:   0 = var_A4.Text
  loc_1200F43:   If (Len(var_9C) <= 1) Then
  loc_1200F52:     Set var_88 = Me.TxtGrid
  loc_1200F58:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_1200F60:     var_CE = var_A4.Text
  loc_1200F71:     Set var_BC = Me.TxtGrid
  loc_1200F77:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8, var_9C)
  loc_1200F7F:     var_C8.Text = var_A8
  loc_1200F92:   End If
  loc_1200F9E:   Set var_88 = Me.TxtGrid
  loc_1200FA4:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1200FBE:   Set var_BC = Me.TxtGrid
  loc_1200FC4:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_1200FCC:   var_C8.SelStart = Len(var_A4.Text)
  loc_1200FE2: Else
  loc_1200FE9:   If Not (var_A8 = CLng(2)) Then
  loc_1200FF3:     If Not (var_A8 = CLng(3)) Then
  loc_1200FFD:       If Not (var_A8 = CLng(4)) Then
  loc_1201007:         If Not (var_A8 = CLng(5)) Then
  loc_1201011:           If Not (var_A8 = CLng(7)) Then
  loc_120101B:             If Not (var_A8 = CLng(9)) Then
  loc_1201027:               If (var_A8 = &HA) Then
  loc_120102A:               End If
  loc_120102A:             End If
  loc_120102A:           End If
  loc_120102A:         End If
  loc_120102A:       End If
  loc_120102A:     End If
  loc_120102E:     Set var_C8 = Me.FGrid
  loc_1201052:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_120107F:     Set var_A4 = var_C8
  loc_1201091:     Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0, &HFF)
  loc_12010B9:     Set var_88 = Me.TxtGrid
  loc_12010BF:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, Asc(var_9C))
  loc_12010C7:     0 = var_A4.Text
  loc_12010E0:     If (Len(var_9C) <= 1) Then
  loc_12010EF:       Set var_88 = Me.TxtGrid
  loc_12010F5:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_12010FD:       var_CE = var_A4.Text
  loc_120110E:       Set var_BC = Me.TxtGrid
  loc_1201114:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_120111C:       var_C8.Text = var_9C
  loc_120112F:     End If
  loc_120113B:     Set var_88 = Me.TxtGrid
  loc_1201141:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_120115B:     Set var_BC = Me.TxtGrid
  loc_1201161:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_1201169:     var_C8.SelStart = Len(var_A4.Text)
  loc_120117C:   End If
  loc_120117C: End If
  loc_1201186: If (CLng(Cancel) <> &HD) Then
  loc_120118E:   global_66 = &HFF
  loc_1201191: End If
  loc_1201191: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '102EB2C
  'Data Table: 4A76E0
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  loc_102E8F8: Set var_90 = Me.TopCtrl1
  loc_102E8FE: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_102E917: If (CStr() = "Browse") Then
  loc_102E91A:   Exit Sub
  loc_102E91B: End If
  loc_102E938: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_102E93B:   Exit Sub
  loc_102E93C: End If
  loc_102E94D: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_102E96F:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_102E9A9:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_102E9CB:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_102E9E1:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102E9EA:         Set var_118 = Me.FGrid
  loc_102EA05:       Else
  loc_102EA18:         Me.FGrid.Rows = 1
  loc_102EA35:         var_D4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_102EA3D:         Set var_118 = Me.FGrid
  loc_102EA6C:         Me.FGrid.FixedRows = 1
  loc_102EA74:       End If
  loc_102EA99:       For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_11C 'Integer
  loc_102EAA3:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_102EAAB:         var_E4 = CVar(CLng(0)) 'Long
  loc_102EAB5:         var_A0 = CVar(CStr(var_86)) 'String
  loc_102EABD:         Set var_90 = Me.FGrid
  loc_102EAC3:         LateIdCallSt
  loc_102EAD4:       Next var_11C 'Integer
  loc_102EAD9:     End If
  loc_102EADC:   Else
  loc_102EAFD:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_102EB0D:   End If
  loc_102EB11:   Set var_90 = Me.FGrid
  loc_102EB22: End If
  loc_102EB27: Set var_8C = Nothing
  loc_102EB2A: Exit Sub
  loc_102EB2B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1CC50
  'Data Table: 4A76E0
  loc_E1CC47: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1CC4F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1EE60
  'Data Table: 4A76E0
  loc_E1EE57: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EE5F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E41B9C
  'Data Table: 4A76E0
  Dim var_8C As TextBox
  loc_E41B70: Call Proc_319_55_EB7154()
  loc_E41B80: Set var_88 = Me.TxtGrid
  loc_E41B86: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E41B8E: var_8C.Visible = False
  loc_E41B9A: Exit Sub
End Sub

Public Function MasterFormExitGet() '4A83FC
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4A840B
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E96C28
  'Data Table: 4A76E0
  Dim Me As Recordset15
  loc_E96BB6: On Error Goto loc_E96C1F
  loc_E96BBF: Me.MoveFirst
  loc_E96BE9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96C11: Proc_5_0_110649C(&HFF, Me, global_68)
  loc_E96C19: Call Proc_319_53_140AF4C(0)
  loc_E96C1E: Exit Sub
  loc_E96C1F: ' Referenced from: E96BB6
  loc_E96C1F: Proc_6_60_E62BC4(var_A0)
  loc_E96C24: Exit Sub
End Sub

Public Sub Proc_319_48_120673C
  'Data Table: 4A76E0
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_1206278: On Error Goto loc_1206736
  loc_1206289: Set var_88 = Me.Txt
  loc_120628F: Call 0.Method_Proc_319_48_120673C0 (CInt(0), var_8C)
  loc_12062AE: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_12062CA: Set var_B4 = Me.Txt
  loc_12062D0: Call 0.Method_Proc_319_48_120673C0 (CInt(0), var_B8)
  loc_12062EB: Set var_88 = Me.Txt
  loc_12062F1: Call 0.Method_Proc_319_48_120673C0 (CInt(0), var_8C)
  loc_1206309: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1206318: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_120632E: Set var_C4 = Me.FGrid
  loc_1206345: global_56 = CStr(CLng(var_C4.BackColor))
  loc_120635B: var_C4.Cols = &HB
  loc_1206363: var_A0 = CVar(CLng(0)) 'Long
  loc_1206368: var_E8 = &H226
  loc_1206374: LateIdCallSt
  loc_120637C: var_A0 = 0
  loc_1206388: var_E8 = CVar(CLng(0)) 'Long
  loc_120638D: var_108 = "S.No"
  loc_1206396: LateIdCallSt
  loc_12063A1: var_A0 = CVar(CLng(1)) 'Long
  loc_12063A6: var_E8 = &HAF0
  loc_12063B2: LateIdCallSt
  loc_12063BD: var_A0 = CVar(CLng(1)) 'Long
  loc_12063C8: var_E8 = CVar(CInt(1)) 'Integer
  loc_12063CF: LateIdCallSt
  loc_12063D7: var_A0 = 0
  loc_12063E3: var_E8 = CVar(CLng(1)) 'Long
  loc_12063E8: var_108 = "Category"
  loc_12063F1: LateIdCallSt
  loc_12063FC: var_A0 = CVar(CLng(2)) 'Long
  loc_1206401: var_E8 = &H6A4
  loc_120640D: LateIdCallSt
  loc_1206418: var_A0 = CVar(CLng(2)) 'Long
  loc_1206423: var_E8 = CVar(CInt(7)) 'Integer
  loc_120642A: LateIdCallSt
  loc_1206432: var_A0 = 0
  loc_120643E: var_E8 = CVar(CLng(2)) 'Long
  loc_1206443: var_108 = "Points On Amt (Rs)"
  loc_120644C: LateIdCallSt
  loc_1206457: var_A0 = CVar(CLng(3)) 'Long
  loc_120645C: var_E8 = &H320
  loc_1206468: LateIdCallSt
  loc_1206473: var_A0 = CVar(CLng(3)) 'Long
  loc_120647E: var_E8 = CVar(CInt(7)) 'Integer
  loc_1206485: LateIdCallSt
  loc_120648D: var_A0 = 0
  loc_1206499: var_E8 = CVar(CLng(3)) 'Long
  loc_120649E: var_108 = "Points"
  loc_12064A7: LateIdCallSt
  loc_12064B2: var_A0 = CVar(CLng(4)) 'Long
  loc_12064B7: var_E8 = &H60E
  loc_12064C3: LateIdCallSt
  loc_12064CE: var_A0 = CVar(CLng(4)) 'Long
  loc_12064D9: var_E8 = CVar(CInt(7)) 'Integer
  loc_12064E0: LateIdCallSt
  loc_12064E8: var_A0 = 0
  loc_12064F4: var_E8 = CVar(CLng(4)) 'Long
  loc_12064F9: var_108 = "Per Point Val (Rs)"
  loc_1206502: LateIdCallSt
  loc_120650D: var_A0 = CVar(CLng(5)) 'Long
  loc_1206512: var_E8 = &H47E
  loc_120651E: LateIdCallSt
  loc_1206529: var_A0 = CVar(CLng(5)) 'Long
  loc_1206534: var_E8 = CVar(CInt(7)) 'Integer
  loc_120653B: LateIdCallSt
  loc_1206543: var_A0 = 0
  loc_120654F: var_E8 = CVar(CLng(5)) 'Long
  loc_1206554: var_108 = "L. Limit"
  loc_120655D: LateIdCallSt
  loc_1206568: var_A0 = CVar(CLng(6)) 'Long
  loc_120656D: var_E8 = &H47E
  loc_1206579: LateIdCallSt
  loc_1206584: var_A0 = CVar(CLng(6)) 'Long
  loc_120658F: var_E8 = CVar(CInt(1)) 'Integer
  loc_1206596: LateIdCallSt
  loc_120659E: var_A0 = 0
  loc_12065AA: var_E8 = CVar(CLng(6)) 'Long
  loc_12065AF: var_108 = "Comparison"
  loc_12065B8: LateIdCallSt
  loc_12065C3: var_A0 = CVar(CLng(7)) 'Long
  loc_12065C8: var_E8 = &H47E
  loc_12065D4: LateIdCallSt
  loc_12065DF: var_A0 = CVar(CLng(7)) 'Long
  loc_12065EA: var_E8 = CVar(CInt(7)) 'Integer
  loc_12065F1: LateIdCallSt
  loc_12065F9: var_A0 = 0
  loc_1206605: var_E8 = CVar(CLng(7)) 'Long
  loc_120660A: var_108 = "U. Limit"
  loc_1206613: LateIdCallSt
  loc_120661E: var_A0 = CVar(CLng(8)) 'Long
  loc_1206623: var_E8 = 0
  loc_120662F: LateIdCallSt
  loc_120663A: var_A0 = CVar(CLng(8)) 'Long
  loc_1206645: var_E8 = CVar(CInt(1)) 'Integer
  loc_120664C: LateIdCallSt
  loc_1206654: var_A0 = 0
  loc_1206660: var_E8 = CVar(CLng(8)) 'Long
  loc_1206665: var_108 = "Condition"
  loc_120666E: LateIdCallSt
  loc_1206679: var_A0 = CVar(CLng(9)) 'Long
  loc_120667E: var_E8 = &H672
  loc_120668A: LateIdCallSt
  loc_1206695: var_A0 = CVar(CLng(9)) 'Long
  loc_12066A0: var_E8 = CVar(CInt(7)) 'Integer
  loc_12066A7: LateIdCallSt
  loc_12066AF: var_A0 = 0
  loc_12066BB: var_E8 = CVar(CLng(9)) 'Long
  loc_12066C0: var_108 = "Sale Redemption%"
  loc_12066C9: LateIdCallSt
  loc_12066D1: var_A0 = &HA
  loc_12066DA: var_E8 = &H5AA
  loc_12066E6: LateIdCallSt
  loc_12066EE: var_A0 = &HA
  loc_12066FD: var_E8 = CVar(CInt(7)) 'Integer
  loc_1206704: LateIdCallSt
  loc_120670C: var_A0 = 0
  loc_1206715: var_E8 = &HA
  loc_120671E: var_108 = "App. Upto Disc%"
  loc_1206727: LateIdCallSt
  loc_1206731: Set var_C4 = Nothing 
  loc_1206735: Exit Sub
  loc_1206736: ' Referenced from: 1206278
  loc_1206736: Proc_6_60_E62BC4(var_C4, var_108, var_E8, var_A0, var_C4, var_E8, var_A0, var_C4)
  loc_120673B: Exit Sub
End Sub

Public Sub Proc_319_49_1097B28
  'Data Table: 4A76E0
  Dim Me As Recordset15
  Dim var_B8 As TextBox
  Dim unk_4A7702 As Connection15
  Dim var_E0 As Fields15
  Dim var_F4 As Field20
  loc_10978BC: If (Me.RecordCount = 0) Then
  loc_10978BF:   Proc_319_49_1097B28 = 0
  loc_10978C5: End If
  loc_10978C9: Set var_A0 = Me.TopCtrl1
  loc_10978CF: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_10978E8: If (CStr() = "Add") Then
  loc_1097926:   Set var_A0 = Me.Txt
  loc_109792C:   Call 0.Method_Proc_319_49_1097B280 (CInt(0), var_B8, var_BC, "Select Count(*) From RWParameter Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1)
  loc_109794D:   unk_4A7702.Execute var_E0 & var_BC & "'", 0, var_F4
  loc_109795D:    = var_E0.Item()
  loc_1097965:    = var_F4.Value
  loc_1097996:   If (var_B8.Text.Fields > 0) Then
  loc_10979B4:     var_B0 = "Duplicate Name"
  loc_10979BA:     MsgBox(var_B0, &H40, "Information", var_124, var_144)
  loc_10979D5:     Set var_A0 = Me.Txt
  loc_10979DB:     Call 0.Method_Proc_319_49_1097B280 (CInt(0))
  loc_10979E3:     var_B8.SetFocus
  loc_10979F4:     Proc_319_49_1097B28 = &HFF
  loc_10979FA:   End If
  loc_10979FD: Else
  loc_1097A38:   Set var_A0 = Me.Txt
  loc_1097A3E:   Call 0.Method_Proc_319_49_1097B280 (CInt(0), var_B8, var_BC, "Select Count(*) From RWParameter Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1)
  loc_1097A70:   unk_4A7702.Execute var_E0 & var_BC & "' And Name <>'" & global_80 & "'", 0, var_F4
  loc_1097A80:    = var_E0.Item(var_B8)
  loc_1097A88:    = var_F4.Value
  loc_1097ABD:   If (var_B8.Text.Fields > 0) Then
  loc_1097AE1:     MsgBox("Duplicate Name", &H40, "Information", var_124, var_144)
  loc_1097AFC:     Set var_A0 = Me.Txt
  loc_1097B02:     Call 0.Method_Proc_319_49_1097B280 (CInt(0))
  loc_1097B0A:     var_B8.SetFocus
  loc_1097B1B:     Proc_319_49_1097B28 = &HFF
  loc_1097B21:   End If
  loc_1097B21: End If
  loc_1097B21: Proc_319_49_1097B28 = var_B8
End Sub

Public Sub Proc_319_50_E41AD0
  'Data Table: 4A76E0
  loc_E41AAC: Set var_88 = Me.TopCtrl1
  loc_E41AB2: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_E41ACB: If (CStr() = "Browse") Then
  loc_E41ACE:   Exit Sub
  loc_E41ACF: End If
  loc_E41ACF: Exit Sub
End Sub

Public Sub Proc_319_51_1125C70(arg_C) '1125C70
  'Data Table: 4A76E0
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_BC As MSHFlexGrid
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_A4 As Variant
  Dim var_11C As Variant
  Dim var_168 As Double
  Dim var_12C As Variant
  Dim var_150 As Variant
  Dim var_130 As Variant
  Dim var_178 As Variant
  Dim var_B8 As Variant
  loc_112592B: var_A0 = CLng(Me.FGrid.Col)
  loc_112593B: If (var_A0 = CLng(1)) Then
  loc_1125951:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1125959:   var_FC = CVar(CLng(1)) 'Long
  loc_112596A:   Set var_8C = Me.TxtGrid
  loc_1125970:   Call 0.Method_Proc_319_51_1125C700 (0, var_A4, var_A8)
  loc_1125978:   var_FC = var_A4.Text
  loc_112598F:   var_11C = CVar(CStr(Trim(CVar(var_A8)))) 'String
  loc_1125997:   Set var_130 = Me.FGrid
  loc_112599D:   LateIdCallSt
  loc_11259BE: Else
  loc_11259C5:   If (var_A0 = CLng(3)) Then
  loc_11259D4:     Set var_8C = Me.TxtGrid
  loc_11259DA:     Call 0.Method_Proc_319_51_1125C700 (0, var_A4, var_A8, var_130)
  loc_11259E2:     var_11C = var_A4.Text
  loc_1125A05:     var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1125A0D:     var_12C = CVar(CLng(3)) 'Long
  loc_1125A3A:     var_150 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_1125A42:     Set var_130 = Me.FGrid
  loc_1125A48:     LateIdCallSt
  loc_1125A6E:   Else
  loc_1125A75:     If Not (var_A0 = CLng(2)) Then
  loc_1125A7F:       If Not (var_A0 = CLng(4)) Then
  loc_1125A89:         If Not (var_A0 = CLng(5)) Then
  loc_1125A93:           If Not (var_A0 = CLng(7)) Then
  loc_1125A9D:             If Not (var_A0 = CLng(9)) Then
  loc_1125AA9:               If (var_A0 = &HA) Then
  loc_1125AAC:               End If
  loc_1125AAC:             End If
  loc_1125AAC:           End If
  loc_1125AAC:         End If
  loc_1125AAC:       End If
  loc_1125AB8:       Set var_8C = Me.TxtGrid
  loc_1125ABE:       Call 0.Method_Proc_319_51_1125C700 (0, var_A4, var_A8, var_130, var_150, 1)
  loc_1125AC6:       1 = var_A4.Text
  loc_1125AD3:       var_168 = Val(var_A8)
  loc_1125AE9:       var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1125AF2:       Set var_130 = Me.FGrid
  loc_1125B01:       var_12C = CVar(CLng(var_130.Col)) 'Long
  loc_1125B2E:       var_178 = CVar(CStr(Format(CVar(var_168), "0.00"))) 'String
  loc_1125B36:       Set var_17C = Me.FGrid
  loc_1125B3C:       LateIdCallSt
  loc_1125B66:     Else
  loc_1125B6D:       If (var_A0 = CLng(6)) Then
  loc_1125B7D:         Set var_8C = Me.TxtGrid
  loc_1125B83:         Call 0.Method_Proc_319_51_1125C700 (arg_C, var_A4, var_A8, var_17C, var_178, 1, 1)
  loc_1125BA2:         If (var_A8 <> vbNullString) Then
  loc_1125BBD:           Set var_A4 = Me.ListView.SelectedItem
  loc_1125BC3:           var_A8 = var_A4.Text
  loc_1125BD5:           Set var_BC = Me.TxtGrid
  loc_1125BDB:           Call 0.Method_Proc_319_51_1125C700 (arg_C, var_130, var_A8, var_FC, var_168)
  loc_1125BE3:           var_130.Text = var_A4.Text
  loc_1125BF9:         End If
  loc_1125C0C:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1125C26:         Set var_8C = Me.TxtGrid
  loc_1125C2C:         Call 0.Method_Proc_319_51_1125C700 (arg_C, var_A4, var_A8, CVar(CLng(6)))
  loc_1125C34:         var_DC = var_A4.Text
  loc_1125C3C:         var_B8 = CVar(var_A8) 'String
  loc_1125C44:         Set var_130 = Me.FGrid
  loc_1125C4A:         LateIdCallSt
  loc_1125C64:       End If
  loc_1125C64:     End If
  loc_1125C64:   End If
  loc_1125C64: End If
  loc_1125C69: Proc_319_51_1125C70 = &HFF
End Sub

Public Sub Proc_319_52_F21B24
  'Data Table: 4A76E0
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F21A26: global_80 = vbNullString
  loc_F21A38: Set var_8C = Me.Txt
  loc_F21A3E: Call 0.Method_Proc_319_52_F21B24C (var_8E, var_86)
  loc_F21A4E: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F21A64:   Set var_8C = Me.Txt
  loc_F21A6A:   Call 0.Method_Proc_319_52_F21B240 (CInt(var_86), var_98)
  loc_F21A72:   var_98.Text = vbNullString
  loc_F21A8E:   Set var_8C = Me.Txt
  loc_F21A94:   Call 0.Method_Proc_319_52_F21B240 (CInt(var_86), var_98)
  loc_F21A9C:   var_98.Tag = vbNullString
  loc_F21AAB: Next var_92 'Byte
  loc_F21AC4: Me.FGrid.Rows = 1
  loc_F21AE1: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F21AE9: Set var_98 = Me.FGrid
  loc_F21B18: Me.FGrid.FixedRows = 1
  loc_F21B20: Exit Sub
End Sub

Public Sub Proc_319_53_140AF4C
  'Data Table: 4A76E0
  Dim var_90 As Integer
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim unk_4A7702 As Connection15
  Dim var_8C As Recordset15
  Dim var_88 As Recordset15
  Dim var_130 As Fields15
  Dim var_148 As Variant
  Dim var_11C As Variant
  Dim var_134 As TextBox
  Dim var_12C As Variant
  loc_140A528: On Error Goto loc_140AF43
  loc_140A52D: var_90 = 1
  loc_140A547: If (Me.RecordCount > 0) Then
  loc_140A592:   var_108 = "Select RWParameter.* From RWParameter where RWParameter.Code='" & Me.Fields.Item("SearchCode").Value & "' Order by Sno" 
  loc_140A5A0:   unk_4A7702.Execute CStr(var_108), var_12C, -1
  loc_140A5AB:   Set var_8C = var_130
  loc_140A618:   unk_4A7702.Execute CStr("Select U_Name,U_AE,U_EntDt From RWParameter where Code='" & var_8C.Fields.Item("Code").Value & "'  "), var_12C, -1
  loc_140A623:   Set var_88 = var_130
  loc_140A677:   var_130 = var_88.Fields
  loc_140A6E0:   var_198 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), var_130) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_130.Item("U_AE")), var_130) = "E"), "Modified By : ", "User : "))
  loc_140A725:   Me.LblUser.Caption = CStr(var_90 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_198)))
  loc_140A79F:   var_134 = var_88.Fields.Item("U_AE")
  loc_140A800:   var_198 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_134)) = "E"), "Last Update : ", "entdt : "))
  loc_140A845:   Me.LblLDt.Caption = CStr(var_198 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_140A891:   If (var_8C.RecordCount > 0) Then
  loc_140A894:     Call Proc_319_52_F21B24()
  loc_140A899:     ' Referenced from: 140AF0A
  loc_140A8A8:     If Not(var_8C.EOF) Then
  loc_140A8E4:       Set var_130 = Me.Txt
  loc_140A8EA:       Call 0.Method_Proc_319_53_140AF4C0 (CInt(0), var_134)
  loc_140A8F2:       var_134.Tag = CStr(var_8C.Fields.Item("Code").Value)
  loc_140A941:       Set var_130 = Me.Txt
  loc_140A947:       Call 0.Method_Proc_319_53_140AF4C0 (CInt(0), var_134)
  loc_140A94F:       var_134.Text = CStr(var_8C.Fields.Item("Name").Value)
  loc_140A99B:       Set var_130 = Me.Txt
  loc_140A9A1:       Call 0.Method_Proc_319_53_140AF4C0 (CInt(1), var_134)
  loc_140A9A9:       var_134.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CondApp")))
  loc_140A9F3:       Set var_130 = Me.Txt
  loc_140A9F9:       Call 0.Method_Proc_319_53_140AF4C0 (CInt(2), var_134)
  loc_140AA01:       var_134.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("LimitAppOn")))
  loc_140AA4B:       Set var_130 = Me.Txt
  loc_140AA51:       Call 0.Method_Proc_319_53_140AF4C0 (CInt(3), var_134)
  loc_140AA59:       var_134.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("PointEvalOn")))
  loc_140AA71:       Set var_1F8 = Me.FGrid
  loc_140AA74:       var_B4 = vbNullString
  loc_140AA89:       var_D8 = CVar(CLng(var_90)) 'Long
  loc_140AA91:       var_11C = CVar(CLng(0)) 'Long
  loc_140AAC1:       var_E8 = CVar(CStr(var_8C.Fields.Item("SNo").Value)) 'String
  loc_140AAC8:       LateIdCallSt
  loc_140AB17:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Category")), CVar(CLng(1)), CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_140AB1E:       LateIdCallSt
  loc_140AB50:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_140AB58:       var_148 = CVar(CLng(2)) 'Long
  loc_140AB85:       var_12C = CVar(CStr(Format(CVar(var_8C.Fields.Item("RPointOnAmt")), "0.00"))) 'String
  loc_140AB8C:       LateIdCallSt
  loc_140ABC2:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_140ABCA:       var_148 = CVar(CLng(3)) 'Long
  loc_140ABF7:       var_12C = CVar(CStr(Format(CVar(var_8C.Fields.Item("RPoint")), "0.00"))) 'String
  loc_140ABFE:       LateIdCallSt
  loc_140AC34:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_140AC3C:       var_148 = CVar(CLng(4)) 'Long
  loc_140AC69:       var_12C = CVar(CStr(Format(CVar(var_8C.Fields.Item("RPointValue")), "0.00"))) 'String
  loc_140AC70:       LateIdCallSt
  loc_140ACA6:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_140ACAE:       var_148 = CVar(CLng(5)) 'Long
  loc_140ACDB:       var_12C = CVar(CStr(Format(CVar(var_8C.Fields.Item("LimitLow")), "0.00"))) 'String
  loc_140ACE2:       LateIdCallSt
  loc_140AD18:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_140AD20:       var_148 = CVar(CLng(7)) 'Long
  loc_140AD4D:       var_12C = CVar(CStr(Format(CVar(var_8C.Fields.Item("LimitUp")), "0.00"))) 'String
  loc_140AD54:       LateIdCallSt
  loc_140AD8A:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_140AD92:       var_148 = CVar(CLng(9)) 'Long
  loc_140ADBF:       var_12C = CVar(CStr(Format(CVar(var_8C.Fields.Item("RedeemPer")), "0.00"))) 'String
  loc_140ADC6:       LateIdCallSt
  loc_140ADFC:       var_F8 = CVar(CLng(var_90)) 'Long
  loc_140AE32:       var_12C = CVar(CStr(Format(CVar(var_8C.Fields.Item("AppUpToDiscPer")), "0.00"))) 'String
  loc_140AE39:       LateIdCallSt
  loc_140AE88:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CompOperator")), CVar(CLng(6)), CVar(CLng(var_90)), var_1F8, var_12C, 1, 1)) 'String
  loc_140AE8F:       LateIdCallSt
  loc_140AEDA:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CondApp")), CVar(CLng(8)), CVar(CLng(var_90)), var_1F8, var_E8, &HA)) 'String
  loc_140AEE1:       LateIdCallSt
  loc_140AEF5:       Set var_1F8 = Nothing 
  loc_140AEFF:       var_90 = (var_90 + 1)
  loc_140AF05:       var_8C.MoveNext
  loc_140AF0A:       GoTo loc_140A899
  loc_140AF0D:     End If
  loc_140AF0F:     var_90 = 0
  loc_140AF25:     Me.FGrid.FixedRows = 1
  loc_140AF2D:   End If
  loc_140AF30: Else
  loc_140AF30:   Call Proc_319_52_F21B24(var_90, var_90, var_1F8, var_E8, var_F8)
  loc_140AF35: End If
  loc_140AF35: Call Proc_319_55_EB7154(var_1F8, var_12C)
  loc_140AF3F: Set var_8C = Nothing
  loc_140AF42: Exit Sub
  loc_140AF43: ' Referenced from: 140A528
  loc_140AF43: Proc_6_60_E62BC4(1)
  loc_140AF48: Exit Sub
End Sub

Public Sub Proc_319_54_E7A6D4(arg_C) 'E7A6D4
  'Data Table: 4A76E0
  Dim var_98 As TextBox
  loc_E7A682: Set var_8C = Me.Txt
  loc_E7A688: Call 0.Method_Proc_319_54_E7A6D4C (var_8E, var_86)
  loc_E7A698: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A6AE:   Set var_8C = Me.Txt
  loc_E7A6B4:   Call 0.Method_Proc_319_54_E7A6D40 (CInt(var_86), var_98)
  loc_E7A6BC:   var_98.Enabled = arg_C
  loc_E7A6CB: Next var_92 'Byte
  loc_E7A6D1: Exit Sub
End Sub

Public Sub Proc_319_55_EB7154
  'Data Table: 4A76E0
  loc_EB70D0: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EB70E2:   Me.DGHelp.Visible = False
  loc_EB70EA: End If
  loc_EB7105: If (Me.FrmList.Visible = &HFF) Then
  loc_EB7114:   Me.FrmList.Visible = False
  loc_EB711C: End If
  loc_EB7138: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB714A:   Me.FGPoint.Visible = False
  loc_EB7152: End If
  loc_EB7152: Exit Sub
End Sub

Public Sub Proc_319_56_FBF530
  'Data Table: 4A76E0
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBF3B3: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FBF3B8:   var_92 = 1 'Byte
  loc_FBF3BC: End If
  loc_FBF3C5: Set var_98 = Me.TxtGrid
  loc_FBF3CB: Call 0.Method_Proc_319_56_FBF5300 (0, var_B0)
  loc_FBF3EE: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBF422: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBF446:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBF449:     GoTo loc_FBF51B
  loc_FBF44C:   End If
  loc_FBF450:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBF47A:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBF484:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBF4B9:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBF4DD:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBF4F6:     Set var_98 = Me.TxtGrid
  loc_FBF4FC:     Call 0.Method_Proc_319_56_FBF5300 (0, var_B0, CVar(CLng(var_92)))
  loc_FBF504:     var_B0.SetFocus
  loc_FBF515:     Proc_319_56_FBF530 = 0
  loc_FBF51B:     ' Referenced from: FBF449
  loc_FBF51B:   End If
  loc_FBF51E: Next var_D4 'Integer
  loc_FBF528: Proc_319_56_FBF530 = &HFF
End Sub
