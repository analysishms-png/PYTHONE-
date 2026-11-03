VERSION 5.00
Begin VB.Form frmFdLeaderRev
  Caption = "Leader Revenue Allocation"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10035
  ClientHeight = 5640
  StartUpPosition = 3 'Windows Default
  Begin Frame Frame2
    Caption = "Frame2"
    BackColor = &HF8D1B1&
    ForeColor = &H80000008&
    Left = -30
    Top = -225
    Width = 10110
    Height = 5865
    Visible = 0   'False
    TabIndex = 1
    Appearance = 0 'Flat
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 3
      BackColor = &HFFFFFF&
      Left = 1815
      Top = 1590
      Width = 1335
      Height = 270
      TabIndex = 13
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 2
      BackColor = &HFFFFFF&
      Left = 1815
      Top = 1305
      Width = 1320
      Height = 270
      TabIndex = 12
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 1
      BackColor = &HFFFFFF&
      Left = 1815
      Top = 1020
      Width = 870
      Height = 270
      TabIndex = 11
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 0
      BackColor = &HFFFFFF&
      Left = 1815
      Top = 735
      Width = 870
      Height = 270
      TabIndex = 10
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin CommandButton Command5
      Caption = "&Ok"
      Left = 7080
      Top = 3870
      Width = 1140
      Height = 870
      TabIndex = 9
      BeginProperty Font
        Name = "Verdana"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HE0E0E0&
      ForeColor = &H80000012&
      Left = 855
      Top = 3690
      Width = 810
      Height = 240
      Visible = 0   'False
      TabIndex = 4
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin TextBox TxtGrid
      Index = 1
      BackColor = &HE0E0E0&
      ForeColor = &H80000012&
      Left = 5190
      Top = 630
      Width = 690
      Height = 195
      Visible = 0   'False
      TabIndex = 3
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin DataGrid DGRevenue
      Left = 6135
      Top = 1995
      Width = 3150
      Height = 1395
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 2
    End
    Begin MSHFlexGrid FGrid1
      Left = 90
      Top = 2895
      Width = 9915
      Height = 2910
      TabIndex = 5
    End
    Begin MSHFlexGrid FGrid2
      Left = 4695
      Top = 585
      Width = 5325
      Height = 2100
      TabIndex = 6
    End
    Begin Label Lbl
      Caption = "Leader Information"
      Index = 3
      BackColor = &HC00000&
      ForeColor = &H80000005&
      Left = 15
      Top = 360
      Width = 4680
      Height = 240
      TabIndex = 18
      Alignment = 2 'Center
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Lbl
      Caption = "Check Out Date"
      Index = 2
      ForeColor = &H0&
      Left = 105
      Top = 1590
      Width = 1395
      Height = 240
      Visible = 0   'False
      TabIndex = 17
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Check In Date"
      Index = 1
      ForeColor = &H0&
      Left = 105
      Top = 1305
      Width = 1245
      Height = 240
      Visible = 0   'False
      TabIndex = 16
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Leader FolioNo"
      Index = 0
      ForeColor = &H0&
      Left = 105
      Top = 1035
      Width = 1410
      Height = 240
      Visible = 0   'False
      TabIndex = 15
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Leader Room No."
      Index = 49
      ForeColor = &H0&
      Left = 105
      Top = 765
      Width = 1605
      Height = 240
      Visible = 0   'False
      TabIndex = 14
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Leader Revenue Allocation"
      Index = 57
      BackColor = &HC00000&
      ForeColor = &H80000005&
      Left = 4695
      Top = 360
      Width = 5325
      Height = 225
      TabIndex = 8
      Alignment = 2 'Center
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Lbl
      Caption = "Rooms/Leader Allocation"
      Index = 58
      BackColor = &HC00000&
      ForeColor = &H80000005&
      Left = 90
      Top = 2685
      Width = 9915
      Height = 225
      TabIndex = 7
      Alignment = 2 'Center
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
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
    Left = 0
    Top = 5265
    Width = 10035
    Height = 375
    Visible = 0   'False
    TabIndex = 0
  End
End

Attribute VB_Name = "frmFdLeaderRev"

Private global_52 As Integer
Private global_54 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '10DF450
  'Data Table: 4421D8
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_108 As TextBox
  Dim var_10E As Integer
  Dim var_114 As Long
  Dim var_118 As Long
  loc_10DF150: Call Proc_122_25_FA7198()
  loc_10DF168: Me.FGrid1.CellBackColor = CVar(CLng("16777215"))
  loc_10DF183: var_94 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10DF18C: Set var_BC = Me.FGrid1
  loc_10DF1C2: Set var_104 = Me.TxtGrid
  loc_10DF1C8: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid1.TextMatrix)))
  loc_10DF1D0: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_10DF1F1: var_10E = Index
  loc_10DF1FA: If (var_10E = 0) Then
  loc_10DF210:   var_114 = CLng(Me.FGrid1.Col)
  loc_10DF220:   If Not (var_114 = CLng(3)) Then
  loc_10DF22A:     If Not (var_114 = CLng(4)) Then
  loc_10DF234:       If Not (var_114 = CLng(5)) Then
  loc_10DF23E:         If (var_114 = CLng(6)) Then
  loc_10DF241:         End If
  loc_10DF241:       End If
  loc_10DF241:     End If
  loc_10DF250:     Set var_A8 = Me.TxtGrid
  loc_10DF256:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H23)
  loc_10DF25E:     var_BC.MaxLength = var_114
  loc_10DF26A:   End If
  loc_10DF26D: Else
  loc_10DF273:   If (var_10E = 1) Then
  loc_10DF289:     var_118 = CLng(Me.FGrid2.Col)
  loc_10DF299:     If (var_118 = CLng(1)) Then
  loc_10DF2AB:       Set var_A8 = Me.TxtGrid
  loc_10DF2B1:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H32)
  loc_10DF2B9:       var_BC.MaxLength = var_118
  loc_10DF30F:       If ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) Then
  loc_10DF312:         Exit Sub
  loc_10DF313:       End If
  loc_10DF326:       var_94 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_10DF32E:       var_DC = CVar(CLng(1)) 'Long
  loc_10DF33D:       var_CC = Me.FGrid2.TextMatrix)
  loc_10DF361:       If (CStr(var_CC) <> vbNullString) Then
  loc_10DF36D:         Me.var_CC.MoveFirst
  loc_10DF385:         var_94 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_10DF38D:         var_DC = CVar(CLng(2)) 'Long
  loc_10DF396:         Set var_BC = Me.FGrid2
  loc_10DF39C:         var_CC = var_BC.TextMatrix)
  loc_10DF3D4:         Me.var_CC.Find "Code ='" & CStr(var_CC) & "'", 0, 1
  loc_10DF407:         If (Me.Recordset15.EOF = &HFF) Then
  loc_10DF413:           Me.Recordset15.MoveFirst
  loc_10DF418:         End If
  loc_10DF418:       End If
  loc_10DF41B:     Else
  loc_10DF422:       If (var_118 = CLng(3)) Then
  loc_10DF434:         Set var_A8 = Me.TxtGrid
  loc_10DF43A:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HA, var_138, var_CC, var_DC)
  loc_10DF442:         var_BC.MaxLength = var_94
  loc_10DF44E:       End If
  loc_10DF44E:     End If
  loc_10DF44E:   End If
  loc_10DF44E: End If
  loc_10DF44E: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '119A9F8
  'Data Table: 4421D8
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_9A As Integer
  Dim var_88 As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_BC As Long
  Dim var_D0 As Variant
  Dim var_94 As DataGrid
  loc_119A5F0: On Error Goto loc_119A9EF
  loc_119A5FD: If (CLng(Shift) = &H1B) Then
  loc_119A60D:   Set var_88 = Me.TxtGrid
  loc_119A613:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_119A62D:   Set var_94 = Me.TxtGrid
  loc_119A633:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_119A63B:   var_98.Text = var_8C.Tag
  loc_119A657:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_119A65C:   Call Proc_122_25_FA7198(arg_14)
  loc_119A665:   Set var_88 = Me.FGrid1
  loc_119A682:   Set var_88 = Me.TxtGrid
  loc_119A688:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_119A690:   var_8C.Visible = False
  loc_119A69C:   Exit Sub
  loc_119A69D: End If
  loc_119A6A0: var_9A = KeyCode
  loc_119A6A9: If (var_9A = 0) Then
  loc_119A6BF:   var_B0 = CLng(Me.FGrid1.Col)
  loc_119A6CF:   If Not (var_B0 = CLng(3)) Then
  loc_119A6D9:     If Not (var_B0 = CLng(4)) Then
  loc_119A6E3:       If Not (var_B0 = CLng(5)) Then
  loc_119A6ED:         If (var_B0 = CLng(6)) Then
  loc_119A6F0:         End If
  loc_119A6F0:       End If
  loc_119A6F0:     End If
  loc_119A6FF:     Set var_88 = Me.TxtGrid
  loc_119A705:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, &H23)
  loc_119A70D:     var_8C.MaxLength = var_B0
  loc_119A723:     If (CLng(Shift) = &HD) Then
  loc_119A72C:       Call Proc_122_23_1186144(KeyCode, var_B2)
  loc_119A737:       If (var_B2 = &HFF) Then
  loc_119A745:         Set var_98 = Me.TxtGrid
  loc_119A770:         Set var_8C = var_98
  loc_119A77F:         Proc_6_62_1253BC4(Me.FGrid1, var_8C, KeyCode, Shift, global_54, CByte(7))
  loc_119A78F:       End If
  loc_119A78F:     End If
  loc_119A78F:   End If
  loc_119A792: Else
  loc_119A798:   If (var_9A = 1) Then
  loc_119A7AE:     var_BC = CLng(Me.FGrid2.Col)
  loc_119A7BE:     If (var_BC = CLng(1)) Then
  loc_119A7CD:       Set var_88 = Me.TxtGrid
  loc_119A7D3:       Call 0.Method_TxtGrid_KeyDown0 (1, var_8C, var_C0, var_BC, 0)
  loc_119A7DB:       0 = var_8C.Left
  loc_119A7F2:       Me.DGRevenue.Left = CVar(var_C0)
  loc_119A80C:       Set var_94 = Me.TxtGrid
  loc_119A812:       Call 0.Method_TxtGrid_KeyDown0 (1, var_98, var_E4)
  loc_119A81A:       0 = var_98.Height
  loc_119A82B:       Set var_88 = Me.TxtGrid
  loc_119A831:       Call 0.Method_TxtGrid_KeyDown0 (1, var_8C, var_C0)
  loc_119A839:       var_9A = var_8C.Top
  loc_119A845:       var_D0 = CVar((var_C0 + var_E4)) 'Single
  loc_119A854:       Me.DGRevenue.Top = CVar(var_C0)
  loc_119A87E:       Set var_98 = Nothing
  loc_119A8BB:       Proc_6_69_134A198(Me.DGRevenue, Me.TxtGrid, KeyCode, global_96, Shift, &HFF)
  loc_119A8D9:       If (CLng(Shift) = &HD) Then
  loc_119A8E2:         Call Proc_122_23_1186144(KeyCode, var_B2, 1, Nothing)
  loc_119A8ED:         If (var_B2 = &HFF) Then
  loc_119A8FB:           Set var_98 = Me.TxtGrid
  loc_119A926:           Set var_8C = var_98
  loc_119A935:           Proc_6_62_1253BC4(Me.FGrid2, var_8C, KeyCode, Shift, global_54, CByte(6))
  loc_119A945:         End If
  loc_119A945:       End If
  loc_119A948:     Else
  loc_119A94F:       If (var_BC = CLng(3)) Then
  loc_119A961:         Set var_88 = Me.TxtGrid
  loc_119A967:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, &HA, 0, 0)
  loc_119A96F:         var_8C.MaxLength = 0
  loc_119A985:         If (CLng(Shift) = &HD) Then
  loc_119A98E:           Call Proc_122_23_1186144(KeyCode, var_B2, var_98)
  loc_119A999:           If (var_B2 = &HFF) Then
  loc_119A9DF:             Proc_6_62_1253BC4(Me.FGrid2, Me.TxtGrid, KeyCode, Shift, global_54, 3)
  loc_119A9EF:           End If
  loc_119A9EF:         End If
  loc_119A9EF:         ' Referenced from: 119A5F0
  loc_119A9EF:       End If
  loc_119A9EF:     End If
  loc_119A9EF:   End If
  loc_119A9EF: End If
  loc_119A9EF: Proc_6_60_E62BC4(0, 0, 0)
  loc_119A9F4: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EFECC8
  'Data Table: 4421D8
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_EFEBFC: If (KeyAscii = 1) Then
  loc_EFEC12:   var_A0 = CLng(Me.FGrid2.Col)
  loc_EFEC22:   If (var_A0 = CLng(1)) Then
  loc_EFEC41:     If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_EFEC48:       Set var_AC = Me.TxtGrid
  loc_EFEC53:       var_A4 = "Name"
  loc_EFEC72:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_96, arg_10)
  loc_EFEC81:     End If
  loc_EFEC84:   Else
  loc_EFEC8B:     If (var_A0 = CLng(3)) Then
  loc_EFEC98:       Set var_8C = Me.TxtGrid
  loc_EFEC9E:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_EFECB9:       Proc_6_42_129A86C(var_AC, arg_10, 7, 2)
  loc_EFECC5:     End If
  loc_EFECC5:   End If
  loc_EFECC5: End If
  loc_EFECC5: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDAE48
  'Data Table: 4421D8
  loc_EDAD94: On Error Goto loc_EDAE40
  loc_EDADA3: If (KeyCode = 1) Then
  loc_EDADC9:   If (CLng(Me.FGrid2.Col) = CLng(1)) Then
  loc_EDADEF:     If ((Shift <> &HD) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_EDADFD:       Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_EDAE30:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_96, Shift, "Name")
  loc_EDAE3F:     End If
  loc_EDAE3F:   End If
  loc_EDAE3F: End If
  loc_EDAE3F: Exit Sub
  loc_EDAE40: ' Referenced from: EDAD94
  loc_EDAE40: Proc_6_60_E62BC4(&HFF, 0)
  loc_EDAE45: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E55084
  'Data Table: 4421D8
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E55047: var_86 = Cancel
  loc_E55050: If (var_86 = 0) Then
  loc_E55059:   Call Proc_122_23_1186144(Cancel, var_88)
  loc_E55062:   arg_10 = Not(var_88)
  loc_E55068: Else
  loc_E5506E:   If (var_86 = 1) Then
  loc_E55077:     Call Proc_122_23_1186144(Cancel, var_88)
  loc_E55080:     arg_10 = Not(var_88)
  loc_E55083:   End If
  loc_E55083: End If
  loc_E55083: Exit Sub
End Sub

Private Sub Form_Load() '14425A8
  'Data Table: 4421D8
  Dim var_B8 As Variant
  Dim var_11C As TextBox
  Dim Me As Recordset15
  Dim var_18C As Variant
  Dim var_1AC As Long
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_90 As Recordset15
  Dim var_94 As Fields15
  loc_1441B00: On Error Goto loc_14425A0
  loc_1441B1B: Proc_6_23_DFBA28(Me, 6400)
  loc_1441B2C: var_A8.top = 1890
  loc_1441B39: var_A8.left = 2470
  loc_1441B46: var_D8.top = 2745
  loc_1441B53: var_D8.left = 2520
  loc_1441B60: var_E8.top = 2520
  loc_1441B6D: var_E8.left = 2700
  loc_1441B76: var_F8 = 0 'Variant
  loc_1441B91: Set var_94 = var_11C(CInt(var_118))
  loc_1441B97: Call 0.Method_Form_Load0 (var_120)
  loc_1441B9F: 11400 = var_E8.TextBox.Left
  loc_1441BAF: var_130.left = CVar(var_120)
  loc_1441BC8: Set var_134 = var_138(CInt(var_118))
  loc_1441BCE: Call 0.Method_Form_Load0 (var_13C)
  loc_1441BD6:  = var_130.TextBox.Height
  loc_1441BE9: Set var_94 = Me.Txt
  loc_1441BEF: Call 0.Method_Form_Load0 (CInt(var_118), var_11C)
  loc_1441BF7: var_120 = var_11C.Top
  loc_1441C03: var_B8 = CVar((var_120 + var_13C)) 'Single
  loc_1441C0B: var_130.top = CVar(var_120)
  loc_1441C36: Me.Recordset15.CursorLocation = 3
  loc_1441C5E: Me.Open "Select CODE ,NAME  From MarketSeg Order by Name", CVar(MemVar_1F92044), 2
  loc_1441C69: var_B8 = CVar(New) 'Address
  loc_1441C71: VarLateMemStAd
  loc_1441C85: Set var_94 = Me.Txt
  loc_1441C8B: Call 0.Method_Form_Load0 (CInt(var_14C), var_11C, var_120, var_130)
  loc_1441C93: var_B8 = var_11C.Left
  loc_1441CA3: var_15C.left = CVar(var_120)
  loc_1441CBC: Set var_134 = var_138(CInt(var_14C))
  loc_1441CC2: Call 0.Method_Form_Load0 (var_13C, 3)
  loc_1441CCA: -1 = var_15C.TextBox.Height
  loc_1441CDD: Set var_94 = Me.Txt
  loc_1441CE3: Call 0.Method_Form_Load0 (CInt(var_14C), var_11C)
  loc_1441CEB: var_120 = var_11C.Top
  loc_1441CF7: var_B8 = CVar((var_120 + var_13C)) 'Single
  loc_1441CFF: var_15C.top = CVar(var_120)
  loc_1441D2A: Me.Recordset15.CursorLocation = 3
  loc_1441D52: Me.Open "Select CODE ,NAME  From BussSource Order by Name", CVar(MemVar_1F92044), 2
  loc_1441D5D: var_B8 = CVar(New) 'Address
  loc_1441D65: VarLateMemStAd
  loc_1441D6F: var_16C = New  'Address Function
  loc_1441D7F: var_16C.CursorLocation = 3
  loc_1441D83: var_B8 = "Select Code, Name,total   From PlanMast Order by Name"
  loc_1441DAE: Call var_16C.Open
  loc_1441DBA: MemVar_1F92044 = MemVar_1F92044
  loc_1441DC8: VarLateMemStAd
  loc_1441DE2: Call 0.Method_Form_Load0 (var_120, var_1CC, var_16C, 3, 2, var_11C(CInt(var_1DC)))
  loc_1441DEA: var_B8 = var_16C.TextBox.Left
  loc_1441DF2: var_B8 = CVar(var_120) 'Single
  loc_1441DFA: var_1EC.left = var_B8
  loc_1441E13: Set var_94 = var_11C(CInt(var_1DC))
  loc_1441E19: Call 0.Method_Form_Load0 (var_120, var_15C, var_B8)
  loc_1441E21: 3 = var_1EC.TextBox.Top
  loc_1441E30: var_1FC = var_1EC.height
  loc_1441E36: var_20C = (CVar(var_120) - var_1FC)
  loc_1441E3E: var_1EC.top = var_20C
  loc_1441E68: Me.Recordset15.CursorLocation = 3
  loc_1441E90: Me.Open "Select Code ,Name,Paytype From RevMast where FieldType='P' Order by Name", CVar(MemVar_1F92044), 2
  loc_1441E9B: var_B8 = CVar(New) 'Address
  loc_1441EA3: VarLateMemStAd
  loc_1441EC8: Me.Recordset15.CursorLocation = 3
  loc_1441EF3: Me.Recordset15.Open "Select Code ,Name,Paytype From RevMast where FieldType='C' Order by Name", CVar(MemVar_1F92044), 2
  loc_1441F04: CVarUnk
  loc_1441F09: VerifyVarObj
  loc_1441F0F: Set var_94 = Me.DGRevenue
  loc_1441F15: LateIdStAd
  loc_1441F37: Call 0.Method_Form_Load0 (CInt(var_21C), var_11C, var_120, Me.Txt, New, 3)
  loc_1441F3F: -1 = var_11C.Left
  loc_1441F47: var_B8 = CVar(var_120) 'Single
  loc_1441F4F: var_22C.left = var_B8
  loc_1441F68: Set var_134 = var_138(CInt(var_21C))
  loc_1441F6E: Call 0.Method_Form_Load0 (var_13C, var_1EC, var_B8)
  loc_1441F76: 3 = var_22C.TextBox.Height
  loc_1441F89: Set var_94 = Me.Txt
  loc_1441F8F: Call 0.Method_Form_Load0 (CInt(var_21C), var_11C, var_120)
  loc_1441F97: -1 = var_11C.Top
  loc_1441FA7: var_B8 = CVar(((var_120 + var_13C) + CDbl(&H1E))) 'Single
  loc_1441FAF: var_22C.top = var_B8
  loc_1441FC2: var_23C = New  'Address Function
  loc_1441FD2: var_23C.CursorLocation = 3
  loc_1441FD6: var_B8 = "Select SubCode ,Name,DiscountType,Discount From Subgroup where CompanyType like ('Corporate') Order by Name"
  loc_1441FEA: var_18C = 2
  loc_1442001: Call var_23C.Open
  loc_144200D: MemVar_1F92044 = MemVar_1F92044
  loc_144201B: VarLateMemStAd
  loc_1442035: Call 0.Method_Form_Load0 (var_120, var_22C, var_23C, 3)
  loc_144203D: var_18C = var_23C.TextBox.Left
  loc_144204D: var_25C.left = CVar(var_120)
  loc_1442066: Set var_134 = var_138(CInt(var_24C))
  loc_144206C: Call 0.Method_Form_Load0 (var_13C, var_11C(CInt(var_24C)))
  loc_1442074: var_B8 = var_25C.TextBox.Height
  loc_1442087: Set var_94 = Me.Txt
  loc_144208D: Call 0.Method_Form_Load0 (CInt(var_24C), var_11C)
  loc_1442095: var_120 = var_11C.Top
  loc_14420A5: var_B8 = CVar(((var_120 + var_13C) + CDbl(&H1E))) 'Single
  loc_14420AD: var_25C.top = var_B8
  loc_14420D8: Me.Recordset15.CursorLocation = 3
  loc_1442100: Me.Open "Select SubCode ,Name From Subgroup where CompanyType like ('Travel Agency') Order by Name", CVar(MemVar_1F92044), 2
  loc_144210B: var_B8 = CVar(New) 'Address
  loc_1442113: VarLateMemStAd
  loc_1442127: Set var_94 = Me.Txt
  loc_144212D: Call 0.Method_Form_Load0 (CInt(var_26C), var_11C, var_120, var_25C)
  loc_1442135: var_B8 = var_11C.Left
  loc_1442145: var_27C.left = CVar(var_120)
  loc_144215E: Set var_134 = var_138(CInt(var_26C))
  loc_1442164: Call 0.Method_Form_Load0 (var_13C, 3)
  loc_144216C: -1 = var_27C.TextBox.Height
  loc_144217F: Set var_94 = Me.Txt
  loc_1442185: Call 0.Method_Form_Load0 (CInt(var_26C), var_11C)
  loc_144218D: var_120 = var_11C.Top
  loc_144219D: var_B8 = CVar(((var_120 + var_13C) + CDbl(&H1E))) 'Single
  loc_14421A5: var_27C.top = CVar(var_120)
  loc_14421D0: Me.Recordset15.CursorLocation = 3
  loc_14421F8: Me.Open "Select Code as SearchCode,Code as RoomNo, Name as Quot From RoomMast where type='RO' Order by Code", CVar(MemVar_1F92044), 2
  loc_1442203: var_B8 = CVar(New) 'Address
  loc_144220B: VarLateMemStAd
  loc_144221F: Set var_94 = Me.Txt
  loc_1442225: Call 0.Method_Form_Load0 (CInt(var_28C), var_11C, var_120, var_27C)
  loc_144222D: var_B8 = var_11C.Left
  loc_144223D: var_29C.left = CVar(var_120)
  loc_1442256: Set var_134 = var_138(CInt(var_28C))
  loc_144225C: Call 0.Method_Form_Load0 (var_13C, 3)
  loc_1442264: -1 = var_29C.TextBox.Height
  loc_1442277: Set var_94 = Me.Txt
  loc_144227D: Call 0.Method_Form_Load0 (CInt(var_28C), var_11C)
  loc_1442285: var_120 = var_11C.Top
  loc_1442295: var_B8 = CVar(((var_120 + var_13C) + CDbl(&H1E))) 'Single
  loc_144229D: var_29C.top = CVar(var_120)
  loc_14422C8: Me.Recordset15.CursorLocation = 3
  loc_14422FB: var_B8 = CVar(New) 'Address
  loc_1442303: VarLateMemStAd
  loc_1442309: var_B8 = 1
  loc_1442314: Call var_D8.ZOrder
  loc_1442325: Call var_A8.ZOrder
  loc_1442339: Set var_94 = var_11C(CInt(var_2AC))
  loc_144233F: Call 0.Method_Form_Load0 (var_120, 1, 1, var_29C)
  loc_1442347: var_B8 = var_A8.TextBox.Left
  loc_1442357: var_2BC.left = CVar(var_120)
  loc_1442370: Set var_134 = var_138(CInt(var_2AC))
  loc_1442376: Call 0.Method_Form_Load0 (var_13C, 3)
  loc_144237E: -1 = var_2BC.TextBox.Height
  loc_1442391: Set var_94 = Me.Txt
  loc_1442397: Call 0.Method_Form_Load0 (CInt(var_2AC), var_11C)
  loc_14423AF: var_B8 = CVar(((var_11C.Top + var_13C) + CDbl(&H1E))) 'Single
  loc_14423B7: var_2BC.top = CVar(var_11C.Top)
  loc_14423CA: var_2CC = New  'Address Function
  loc_14423DA: var_2CC.CursorLocation = 3
  loc_14423DE: var_B8 = "Select Code ,Name From GuestProf Order by Name"
  loc_14423E7: Set var_94 = MemVar_1F92044 
  loc_14423F2: var_18C = 2
  loc_14423FB: var_1AC = 3
  loc_1442409: Call var_2CC.Open
  loc_1442423: VarLateMemStAd
  loc_144244D: var_2CC.Connection15.Execute "Select NCUR from enviro WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_1FC, -1
  loc_1442472: Set global_68 = New 
  loc_1442484: Me.Recordset15.CursorLocation = 3
  loc_1442498: var_94 = var_94.Fields
  loc_14424AF: Proc_6_7_F25D88(var_2F4, CVar(var_94.Item("Ncur")), var_94, var_2BC, var_2CC)
  loc_14424E7: var_18C = "  AND SNO=1"
  loc_14424F7: elect Code,Name From RoomCat Order by Name", CVar(var_94), 2 "SELECT Distinct DocId AS SearchCode FROM RoomOcc where VType='" & "CHK" & "' AND ChkInDate=" & var_2F4 & var_18C, CVar(var_94), 2
  loc_144250E: var_B8 = 1
  loc_1442519: Call var_D8.ZOrder
  loc_144251F: var_B8 = 1
  loc_144252A: Call var_A8.ZOrder
  loc_1442542: If (var_D8.Visible = True) Then
  loc_144254D:   var_D8.Visible = False
  loc_1442551:   var_B8 = True
  loc_1442558:   var_324.Enabled = var_B8
  loc_144255C: End If
  loc_1442568: Set var_94 = Me
  loc_144257F: Call Proc_122_26_E8E340(Proc_5_1_100CB50("INI", var_94, global_68, var_B8, var_B8, 3), -1, var_1AC, var_18C)
  loc_144258A: Call Proc_122_25_FA7198(var_94, var_B8)
  loc_1442594: Set var_8C = Nothing
  loc_144259C: Set var_90 = Nothing
  loc_144259F: Exit Sub
  loc_14425A0: ' Referenced from: 1441B00
  loc_14425A0: Proc_6_60_E62BC4(-1)
  loc_14425A5: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F57514
  'Data Table: 4421D8
  Dim var_A4 As Variant
  Dim var_128 As TextBox
  Dim var_10C As TextBox
  Dim arg_0 As String
  loc_F57410: On Error Goto loc_F5750B
  loc_F5743F: If CBool((var_94.Visible = True) And (CLng(KeyCode) = &H1B)) Then
  loc_F57442:   var_A4 = 1
  loc_F5744D:   Call var_94.ZOrder
  loc_F5745B:   var_94.Visible = False
  loc_F57466:   var_F4.Enabled = True
  loc_F57478:   Set var_108 = var_10C(CInt(var_104))
  loc_F5747E:   Call 0.Method_Form_KeyDown0 (var_110)
  loc_F57486:   var_A4 = var_F4.TextBox.Text
  loc_F574A3:   Set var_124 = Me.Txt
  loc_F574A9:   Call 0.Method_Form_KeyDown0 (CInt(var_120), var_128)
  loc_F574B1:   var_128.Text = CStr(Val(var_110))
  loc_F574D3:   Set var_108 = Me.Txt
  loc_F574D9:   Call 0.Method_Form_KeyDown0 (CInt(var_120))
  loc_F574E1:   var_10C.SetFocus
  loc_F574ED:   Exit Sub
  loc_F574EE: End If
  loc_F57502: Proc_6_88_FE81B4(Me, KeyCode, Shift)
  loc_F5750A: Exit Sub
  loc_F5750B: ' Referenced from: F57410
  loc_F5750B: Proc_6_60_E62BC4(0)
  loc_F57510: Exit Sub
  loc_F57511: arg_0 = var_10C
End Sub

Private Sub Fgrid1_UnknownEvent_9 '143F824
  'Data Table: 4421D8
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_B8 As Variant
  Dim var_DC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_104 As String
  Dim var_144 As String
  loc_143ED28: Set var_88 = Me.TopCtrl1
  loc_143ED2E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E()
  loc_143ED43: If ( = "Browse") Then
  loc_143ED46:   Exit Sub
  loc_143ED47: End If
  loc_143ED64: If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_143ED7A:   var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143ED89:   var_B8 = Me.FGrid1.Col
  loc_143ED92:   var_DC = CVar(CLng(var_B8)) 'Long
  loc_143EDA1:   var_100 = Me.FGrid1.TextMatrix)
  loc_143EDC9:   If (CStr(var_100) = vbNullString) Then
  loc_143EDEE:     Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Col))
  loc_143EE0D:     Me.FGrid1.CellFontName = "wingdings"
  loc_143EE27:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_143EE4E:     If (CLng(Me.FGrid1.Col) = 6) Then
  loc_143EE64:       Me.FGrid1.CellForeColor = &HFF
  loc_143EE6F:     Else
  loc_143EE82:       Me.FGrid1.CellForeColor = &HFF0000
  loc_143EE8A:     End If
  loc_143EE92:     If (var_114 < var_124) Then
  loc_143EE9D:       var_A8 = (var_114 + 1)
  loc_143EEA1:       var_114 = Me.FGrid1.Col 'Variant
  loc_143EEA8:     Else
  loc_143EEBD:       var_104 = "Guest Count Exceeded" & vbCrLf
  loc_143EEE0:       If (MsgBox(CVar(var_104 & "Want to Proceed with Exceeded guest ?"), 4, var_B8, var_100, var_134) = 7) Then
  loc_143EEE3:         Exit Sub
  loc_143EEE4:       End If
  loc_143EEE4:     End If
  loc_143EEF7:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143EF00:     Set var_BC = Me.FGrid1
  loc_143EF0F:     var_DC = CVar(CLng(var_BC.Col)) 'Long
  loc_143EF14:     var_144 = "ü"
  loc_143EF1E:     Set var_F0 = Me.FGrid1
  loc_143EF24:     LateIdCallSt
  loc_143EF40:     Set var_F0 = Me.FGrid1
  loc_143EF6A:     Set var_88 = Me.Txt
  loc_143EF70:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(var_164), var_BC, var_104, CVar(CLng(3)), CVar(CLng(var_F0.Row)), var_F0)
  loc_143EF78:     var_144 = var_BC.Text
  loc_143EF80:     var_B8 = CVar(var_104) 'String
  loc_143EF8E:     LateIdCallSt
  loc_143EFD6:     Set var_88 = Me.Txt
  loc_143EFDC:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(var_178), var_BC, var_104, CVar(CLng(4)), CVar(CLng(Me.FGrid1.Row)), Me.FGrid1)
  loc_143EFE4:     var_B8 = var_BC.Text
  loc_143EFEC:     var_B8 = CVar(var_104) 'String
  loc_143EFFA:     LateIdCallSt
  loc_143F042:     Set var_88 = Me.Txt
  loc_143F048:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(var_188), var_BC, var_104, CVar(CLng(5)), CVar(CLng(Me.FGrid1.Row)), Me.FGrid1)
  loc_143F050:     var_B8 = var_BC.Text
  loc_143F058:     var_B8 = CVar(var_104) 'String
  loc_143F066:     LateIdCallSt
  loc_143F0AE:     Set var_88 = Me.Txt
  loc_143F0B4:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(var_198), var_BC, var_104, CVar(CLng(6)), CVar(CLng(Me.FGrid1.Row)), Me.FGrid1)
  loc_143F0BC:     var_B8 = var_BC.Text
  loc_143F0C4:     var_B8 = CVar(var_104) 'String
  loc_143F0CC:     Set var_168 = Me.FGrid1
  loc_143F0D2:     LateIdCallSt
  loc_143F0EF:   Else
  loc_143F0FA:     If (var_114 > 0) Then
  loc_143F105:       var_A8 = (var_114 - 1)
  loc_143F109:       var_114 = Me.FGrid1.Row 'Variant
  loc_143F10D:     End If
  loc_143F120:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F138:     var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_143F13D:     var_144 = vbNullString
  loc_143F147:     Set var_F0 = Me.FGrid1
  loc_143F14D:     LateIdCallSt
  loc_143F178:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F180:     var_DC = CVar(CLng(3)) 'Long
  loc_143F185:     var_144 = vbNullString
  loc_143F18F:     Set var_BC = Me.FGrid1
  loc_143F195:     LateIdCallSt
  loc_143F1BA:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F1C2:     var_DC = CVar(CLng(4)) 'Long
  loc_143F1C7:     var_144 = vbNullString
  loc_143F1D1:     Set var_BC = Me.FGrid1
  loc_143F1D7:     LateIdCallSt
  loc_143F1FC:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F204:     var_DC = CVar(CLng(5)) 'Long
  loc_143F209:     var_144 = vbNullString
  loc_143F213:     Set var_BC = Me.FGrid1
  loc_143F219:     LateIdCallSt
  loc_143F23E:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F246:     var_DC = CVar(CLng(6)) 'Long
  loc_143F24B:     var_144 = vbNullString
  loc_143F255:     Set var_BC = Me.FGrid1
  loc_143F25B:     LateIdCallSt
  loc_143F28C:     If (CLng(Me.FGrid1.Col) = 6) Then
  loc_143F2A2:       var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F2A7:       var_DC = 7
  loc_143F2B0:       var_144 = vbNullString
  loc_143F2BA:       Set var_BC = Me.FGrid1
  loc_143F2C0:       LateIdCallSt
  loc_143F2E5:       var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F2EA:       var_DC = 8
  loc_143F2F3:       var_144 = vbNullString
  loc_143F2FD:       Set var_BC = Me.FGrid1
  loc_143F303:       LateIdCallSt
  loc_143F328:       var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F32D:       var_DC = 9
  loc_143F336:       var_144 = vbNullString
  loc_143F340:       Set var_BC = Me.FGrid1
  loc_143F346:       LateIdCallSt
  loc_143F358:     End If
  loc_143F358:   End If
  loc_143F358: End If
  loc_143F375: If (CLng(Me.FGrid1.Col) = CLng(&HC)) Then
  loc_143F38B:   var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F3A3:   var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_143F3DA:   If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_143F3FF:     Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Col))
  loc_143F41E:     Me.FGrid1.CellFontName = "wingdings"
  loc_143F438:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_143F453:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F46B:     var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_143F470:     var_144 = "ü"
  loc_143F47A:     Set var_F0 = Me.FGrid1
  loc_143F480:     LateIdCallSt
  loc_143F49B:   Else
  loc_143F4AE:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F4C6:     var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_143F4CB:     var_144 = vbNullString
  loc_143F4D5:     Set var_F0 = Me.FGrid1
  loc_143F4DB:     LateIdCallSt
  loc_143F4F3:   End If
  loc_143F4F3: End If
  loc_143F510: If (CLng(Me.FGrid1.Col) = CLng(7)) Then
  loc_143F526:   var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F535:   var_B8 = Me.FGrid1.Col
  loc_143F53E:   var_DC = CVar(CLng(var_B8)) 'Long
  loc_143F54D:   var_100 = Me.FGrid1.TextMatrix)
  loc_143F575:   If (CStr(var_100) = vbNullString) Then
  loc_143F59A:     Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Col))
  loc_143F5B9:     Me.FGrid1.CellFontName = "wingdings"
  loc_143F5D3:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_143F5FA:     If (CLng(Me.FGrid1.Col) = 6) Then
  loc_143F610:       Me.FGrid1.CellForeColor = &HFF
  loc_143F61B:     Else
  loc_143F62E:       Me.FGrid1.CellForeColor = &HFF0000
  loc_143F636:     End If
  loc_143F641:     If (var_1A8 = 0) Then
  loc_143F649:       var_1A8 = 1 'Variant
  loc_143F650:     Else
  loc_143F669:       MsgBox("Only One guest Leader Can be Selected", &H40, var_B8, var_100, var_134)
  loc_143F679:       Exit Sub
  loc_143F67A:     End If
  loc_143F68D:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F6A5:     var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_143F6AA:     var_144 = "ü"
  loc_143F6B4:     Set var_F0 = Me.FGrid1
  loc_143F6BA:     LateIdCallSt
  loc_143F6D5:   Else
  loc_143F6DA:     var_1A8 = 0 'Variant
  loc_143F6F1:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F709:     var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_143F70E:     var_144 = vbNullString
  loc_143F718:     Set var_F0 = Me.FGrid1
  loc_143F71E:     LateIdCallSt
  loc_143F755:     If (CLng(Me.FGrid1.Col) = 6) Then
  loc_143F76B:       var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F770:       var_DC = 7
  loc_143F779:       var_144 = vbNullString
  loc_143F783:       Set var_BC = Me.FGrid1
  loc_143F789:       LateIdCallSt
  loc_143F7AE:       var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F7B3:       var_DC = 8
  loc_143F7BC:       var_144 = vbNullString
  loc_143F7C6:       Set var_BC = Me.FGrid1
  loc_143F7CC:       LateIdCallSt
  loc_143F7F1:       var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143F7F6:       var_DC = 9
  loc_143F7FF:       var_144 = vbNullString
  loc_143F809:       Set var_BC = Me.FGrid1
  loc_143F80F:       LateIdCallSt
  loc_143F821:     End If
  loc_143F821:   End If
  loc_143F821: End If
  loc_143F821: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_0 'E604B4
  'Data Table: 4421D8
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6047F: Me.FGrid2.BackColorSel = CVar(CLng("14737632"))
  loc_E60492: Set var_A8 = Me.TxtGrid
  loc_E60498: Call 0.Method_FGrid2_UnknownEvent_00 (1, var_AC)
  loc_E604A0: var_AC.Visible = False
  loc_E604AC: Call Proc_122_25_FA7198()
  loc_E604B1: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_1 'DFB208
  'Data Table: 4421D8
  loc_DFB204: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_8 'E1F450
  'Data Table: 4421D8
  loc_E1F447: Me.FGrid2.CellBackColor = CVar(CLng("16777215"))
  loc_E1F44F: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_9 'DFF9FC
  'Data Table: 4421D8
  Dim arg_60FF As Double
  loc_DFF9F4: Call Proc_122_21_E38950()
  loc_DFF9F9: Exit Sub
  loc_DFF9FA: arg_60FF = 
End Sub

Private Sub FGrid2_UnknownEvent_A '1032D2C
  'Data Table: 4421D8
  Dim var_98 As Variant
  Dim var_C4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_BC As String
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1032AF0: Set var_88 = Me.TopCtrl1
  loc_1032AF6: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E()
  loc_1032B0B: If ( = "Browse") Then
  loc_1032B0E:   Exit Sub
  loc_1032B0F: End If
  loc_1032B83: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid2.Tag))) = CDbl((CLng(Me.FGrid2.Rows) - (CLng(Me.FGrid2.Rows) - 1))))) Then
  loc_1032B99:   Me.FGrid2.CellBackColor = CVar(CLng("16777215"))
  loc_1032BA9:   var_BC = "+{Tab}"
  loc_1032BAF:   Proc_303_0_FB9B68(CStr(Me.FGrid2.Tag), 0)
  loc_1032BB9:   KeyCode = 0
  loc_1032BBF: Else
  loc_1032C16:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid2.Tag))) = CDbl((CLng(Me.FGrid2.Rows) - 1)))) Then
  loc_1032C2C:     Me.FGrid2.CellBackColor = CVar(CLng("16777215"))
  loc_1032C36:     KeyCode = 0
  loc_1032C39:   End If
  loc_1032C39: End If
  loc_1032C3F: global_52 = KeyCode
  loc_1032C65: Me.FGrid2.Tag = CVar(CStr(CLng(Me.FGrid2.Row)))
  loc_1032C89: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_1032C9F:   var_EC = CLng(Me.FGrid2.Col)
  loc_1032CAF:   If Not (var_EC = CLng(1)) Then
  loc_1032CB9:     If (var_EC = CLng(3)) Then
  loc_1032CBC:     End If
  loc_1032CCF:     var_98 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1032CE7:     var_FC = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_1032CEC:     var_11C = vbNullString
  loc_1032CF6:     Set var_C4 = Me.FGrid2
  loc_1032CFC:     LateIdCallSt
  loc_1032D14:   End If
  loc_1032D14: End If
  loc_1032D1A: If (KeyCode = &HD) Then
  loc_1032D22:   global_54 = 0
  loc_1032D25: End If
  loc_1032D27: KeyCode = 0
  loc_1032D2A: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_B 'E0DB80
  'Data Table: 4421D8
  loc_E0DB71: Call FGrid2_UnknownEvent_C()
  loc_E0DB7B: global_54 = 0
  loc_E0DB7E: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_C '10E2D94
  'Data Table: 4421D8
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Long
  Dim var_C0 As String
  Dim var_DA As Integer
  Dim var_C4 As TextBox
  Dim var_D4 As TextBox
  loc_10E2A88: Set var_88 = Me.TopCtrl1
  loc_10E2A8E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E()
  loc_10E2AA3: If ( = "Browse") Then
  loc_10E2AA6:   Exit Sub
  loc_10E2AA7: End If
  loc_10E2ABA: var_BC = CLng(Me.FGrid2.Col)
  loc_10E2ACA: If (var_BC = CLng(1)) Then
  loc_10E2AD1:   Set var_D4 = Me.FGrid2
  loc_10E2AF5:   var_C0 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_10E2B22:   Set var_C4 = var_D4
  loc_10E2B34:   Proc_6_63_110ABA4(Me, var_C4, Me.TxtGrid, 1, 0)
  loc_10E2B5C:   Set var_88 = Me.TxtGrid
  loc_10E2B62:   Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_C4, var_C0, Asc(var_C0))
  loc_10E2B6A:   0 = var_C4.Text
  loc_10E2B83:   If (Len(var_C0) <= 1) Then
  loc_10E2B92:     Set var_88 = Me.TxtGrid
  loc_10E2B98:     Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_C4, var_C0)
  loc_10E2BA0:     var_DA = var_C4.Text
  loc_10E2BB1:     Set var_C8 = Me.TxtGrid
  loc_10E2BB7:     Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_D4)
  loc_10E2BBF:     var_D4.Text = var_C0
  loc_10E2BD2:   End If
  loc_10E2BDE:   Set var_88 = Me.TxtGrid
  loc_10E2BE4:   Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_C4)
  loc_10E2BFE:   Set var_C8 = Me.TxtGrid
  loc_10E2C04:   Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_D4)
  loc_10E2C0C:   var_D4.SelStart = Len(var_C4.Text)
  loc_10E2C22: Else
  loc_10E2C29:   If (var_BC = CLng(3)) Then
  loc_10E2C30:     Set var_D4 = Me.FGrid2
  loc_10E2C54:     var_C0 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_10E2C81:     Set var_C4 = var_D4
  loc_10E2C93:     Proc_6_63_110ABA4(Me, var_C4, Me.TxtGrid, 1, &HFF)
  loc_10E2CBB:     Set var_88 = Me.TxtGrid
  loc_10E2CC1:     Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_C4, var_C0, Asc(var_C0))
  loc_10E2CC9:     0 = var_C4.Text
  loc_10E2CE2:     If (Len(var_C0) <= 1) Then
  loc_10E2CF1:       Set var_88 = Me.TxtGrid
  loc_10E2CF7:       Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_C4, var_C0)
  loc_10E2CFF:       var_DA = var_C4.Text
  loc_10E2D10:       Set var_C8 = Me.TxtGrid
  loc_10E2D16:       Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_D4)
  loc_10E2D1E:       var_D4.Text = var_C0
  loc_10E2D31:     End If
  loc_10E2D3D:     Set var_88 = Me.TxtGrid
  loc_10E2D43:     Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_C4)
  loc_10E2D5D:     Set var_C8 = Me.TxtGrid
  loc_10E2D63:     Call 0.Method_FGrid2_UnknownEvent_C0 (1, var_D4)
  loc_10E2D6B:     var_D4.SelStart = Len(var_C4.Text)
  loc_10E2D7E:   End If
  loc_10E2D7E: End If
  loc_10E2D88: If (CLng(KeyCode) <> &HD) Then
  loc_10E2D90:   global_54 = &HFF
  loc_10E2D93: End If
  loc_10E2D93: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_D '102A9A0
  'Data Table: 4421D8
  Dim var_A0 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  loc_102A770: Set var_90 = Me.TopCtrl1
  loc_102A776: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E()
  loc_102A78B: If ( = "Browse") Then
  loc_102A78E:   Exit Sub
  loc_102A78F: End If
  loc_102A7AC: If (CLng(Me.FGrid2.ColSel) = CLng(0)) Then
  loc_102A7AF:   Exit Sub
  loc_102A7B0: End If
  loc_102A7C1: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_102A7E3:   If (CLng(Me.FGrid2.Row) >= 1) Then
  loc_102A81D:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_102A83F:       If (CLng(Me.FGrid2.Rows) > 2) Then
  loc_102A855:         var_A0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_102A85E:         Set var_114 = Me.FGrid2
  loc_102A879:       Else
  loc_102A88C:         Me.FGrid2.Rows = 1
  loc_102A8A9:         var_C0 = CVar(CStr(CLng(Me.FGrid2.Rows))) 'String
  loc_102A8B1:         Set var_114 = Me.FGrid2
  loc_102A8E0:         Me.FGrid2.FixedRows = 1
  loc_102A8E8:       End If
  loc_102A90D:       For var_118 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_86 = var_118 'Integer
  loc_102A917:         var_A0 = CVar(CLng(var_86)) 'Long
  loc_102A91F:         var_E0 = CVar(CLng(0)) 'Long
  loc_102A929:         var_B0 = CVar(CStr(var_86)) 'String
  loc_102A931:         Set var_90 = Me.FGrid2
  loc_102A937:         LateIdCallSt
  loc_102A948:       Next var_118 'Integer
  loc_102A94D:     End If
  loc_102A950:   Else
  loc_102A971:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_102A981:   End If
  loc_102A985:   Set var_90 = Me.FGrid2
  loc_102A996: End If
  loc_102A99B: Set var_8C = Nothing
  loc_102A99E: Exit Sub
  loc_102A99F: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_13 'E1F310
  'Data Table: 4421D8
  loc_E1F307: Me.FGrid2.CellBackColor = CVar(CLng("14737632"))
  loc_E1F30F: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_14 'E1F3B0
  'Data Table: 4421D8
  loc_E1F3A7: Me.FGrid2.CellBackColor = CVar(CLng("16777215"))
  loc_E1F3AF: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_15 'E447C0
  'Data Table: 4421D8
  Dim var_8C As TextBox
  loc_E44794: Call Proc_122_25_FA7198()
  loc_E447A4: Set var_88 = Me.TxtGrid
  loc_E447AA: Call 0.Method_FGrid2_UnknownEvent_150 (1, var_8C)
  loc_E447B2: var_8C.Visible = False
  loc_E447BE: Exit Sub
End Sub

Public Sub Proc_122_19_13687B8
  'Data Table: 4421D8
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As String
  Dim var_104 As MSHFlexGrid
  loc_1367F53: Me.FGrid1.Row = 0
  loc_1367F6E: Me.FGrid1.Col = 0
  loc_1367F76: var_98 = 0
  loc_1367F85: var_BC = CVar(CInt(3)) 'Integer
  loc_1367F8D: Set var_AC = Me.FGrid1
  loc_1367F93: LateIdCallSt
  loc_1367FB1: Me.FGrid1.Row = 1
  loc_1367FCC: Me.FGrid1.Cols = &HE
  loc_1367FD1: var_98 = 0
  loc_1367FDA: var_BC = 0
  loc_1367FE3: var_E0 = "Folio No"
  loc_1367FEC: LateIdCallSt
  loc_1367FF4: var_98 = 0
  loc_1368003: var_BC = CVar(CInt(3)) 'Integer
  loc_136800A: LateIdCallSt
  loc_1368012: var_98 = 0
  loc_136801B: var_BC = 0
  loc_1368027: LateIdCallSt
  loc_136802F: var_98 = 0
  loc_1368038: var_BC = 1
  loc_1368041: var_E0 = vbNullString
  loc_136804A: LateIdCallSt
  loc_1368052: var_98 = 1
  loc_136805B: var_BC = &H1F4
  loc_1368067: LateIdCallSt
  loc_136806F: var_98 = 0
  loc_1368078: var_BC = 2
  loc_1368081: var_E0 = "Room No"
  loc_136808A: LateIdCallSt
  loc_1368092: var_98 = 2
  loc_136809B: var_BC = &H384
  loc_13680A7: LateIdCallSt
  loc_13680AF: var_98 = 0
  loc_13680B8: var_BC = 3
  loc_13680C1: var_E0 = "Guest Name"
  loc_13680CA: LateIdCallSt
  loc_13680D2: var_98 = 3
  loc_13680E1: var_BC = CVar(CInt(1)) 'Integer
  loc_13680E8: LateIdCallSt
  loc_13680F0: var_98 = 3
  loc_13680FF: var_BC = CVar(CInt(1)) 'Integer
  loc_1368106: LateIdCallSt
  loc_136810E: var_98 = 3
  loc_1368117: var_BC = &H7D0
  loc_1368123: LateIdCallSt
  loc_136812B: var_98 = 0
  loc_1368134: var_BC = 4
  loc_136813D: var_E0 = "Address1"
  loc_1368146: LateIdCallSt
  loc_136814E: var_98 = 4
  loc_136815D: var_BC = CVar(CInt(1)) 'Integer
  loc_1368164: LateIdCallSt
  loc_136816C: var_98 = 4
  loc_136817B: var_BC = CVar(CInt(1)) 'Integer
  loc_1368182: LateIdCallSt
  loc_136818A: var_98 = 4
  loc_1368193: var_BC = &H7D0
  loc_136819F: LateIdCallSt
  loc_13681A7: var_98 = 0
  loc_13681B0: var_BC = 5
  loc_13681B9: var_E0 = "Address2"
  loc_13681C2: LateIdCallSt
  loc_13681CA: var_98 = 5
  loc_13681D9: var_BC = CVar(CInt(1)) 'Integer
  loc_13681E0: LateIdCallSt
  loc_13681E8: var_98 = 5
  loc_13681F7: var_BC = CVar(CInt(1)) 'Integer
  loc_13681FE: LateIdCallSt
  loc_1368206: var_98 = 5
  loc_136820F: var_BC = &H7D0
  loc_136821B: LateIdCallSt
  loc_1368223: var_98 = 0
  loc_136822C: var_BC = 6
  loc_1368235: var_E0 = "City"
  loc_136823E: LateIdCallSt
  loc_1368246: var_98 = 6
  loc_1368255: var_BC = CVar(CInt(1)) 'Integer
  loc_136825C: LateIdCallSt
  loc_1368264: var_98 = 6
  loc_1368273: var_BC = CVar(CInt(1)) 'Integer
  loc_136827A: LateIdCallSt
  loc_1368282: var_98 = 6
  loc_136828B: var_BC = &H3E8
  loc_1368297: LateIdCallSt
  loc_136829F: var_98 = 0
  loc_13682A8: var_BC = 7
  loc_13682B1: var_E0 = "Leader"
  loc_13682BA: LateIdCallSt
  loc_13682C2: var_98 = 7
  loc_13682D1: var_BC = CVar(CInt(1)) 'Integer
  loc_13682D8: LateIdCallSt
  loc_13682E0: var_98 = 7
  loc_13682EF: var_BC = CVar(CInt(1)) 'Integer
  loc_13682F6: LateIdCallSt
  loc_13682FE: var_98 = 7
  loc_1368307: var_BC = &H384
  loc_1368313: LateIdCallSt
  loc_136831B: var_98 = 0
  loc_1368324: var_BC = 8
  loc_136832D: var_E0 = "MasterFolio"
  loc_1368336: LateIdCallSt
  loc_136833E: var_98 = 8
  loc_136834D: var_BC = CVar(CInt(3)) 'Integer
  loc_1368354: LateIdCallSt
  loc_136835C: var_98 = 8
  loc_1368365: var_BC = 0
  loc_1368371: LateIdCallSt
  loc_1368379: var_98 = 0
  loc_1368382: var_BC = 9
  loc_136838B: var_E0 = "VPrefix"
  loc_1368394: LateIdCallSt
  loc_136839C: var_98 = 9
  loc_13683AB: var_BC = CVar(CInt(3)) 'Integer
  loc_13683B2: LateIdCallSt
  loc_13683BA: var_98 = 9
  loc_13683C3: var_BC = 0
  loc_13683CF: LateIdCallSt
  loc_13683D7: var_98 = 0
  loc_13683E0: var_BC = &HA
  loc_13683E9: var_E0 = "FDOCID"
  loc_13683F2: LateIdCallSt
  loc_13683FA: var_98 = &HA
  loc_1368409: var_BC = CVar(CInt(3)) 'Integer
  loc_1368410: LateIdCallSt
  loc_1368418: var_98 = &HA
  loc_1368421: var_BC = 0
  loc_136842D: LateIdCallSt
  loc_1368435: var_98 = 0
  loc_136843E: var_BC = &HB
  loc_1368447: var_E0 = "Room type"
  loc_1368450: LateIdCallSt
  loc_1368458: var_98 = &HB
  loc_1368461: var_BC = 0
  loc_136846D: LateIdCallSt
  loc_1368475: var_98 = 0
  loc_136847E: var_BC = &HC
  loc_1368487: var_E0 = "Complementary"
  loc_1368490: LateIdCallSt
  loc_1368498: var_98 = &HC
  loc_13684A1: var_BC = &H384
  loc_13684AD: LateIdCallSt
  loc_13684B5: var_98 = 0
  loc_13684BE: var_BC = &HD
  loc_13684C7: var_E0 = "Guest Code"
  loc_13684D0: LateIdCallSt
  loc_13684D8: var_98 = &HD
  loc_13684E1: var_BC = 0
  loc_13684ED: LateIdCallSt
  loc_13684F7: Set var_D0 = Nothing 
  loc_136851A: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_136851D:   var_98 = vbNullString
  loc_1368527:   Set var_AC = Me.FGrid1
  loc_1368538: End If
  loc_1368538: Call Proc_122_20_1208038(FGrid1.DispID_10000, var_98, var_D0, var_BC, var_98, var_D0, var_E0, var_BC)
  loc_1368550: Me.FGrid2.Row = 0
  loc_136856B: Me.FGrid2.Col = 0
  loc_1368573: var_98 = 0
  loc_1368582: var_BC = CVar(CInt(3)) 'Integer
  loc_136858A: Set var_AC = Me.FGrid2
  loc_1368590: LateIdCallSt
  loc_13685AE: Me.FGrid2.Row = 1
  loc_13685C9: Me.FGrid2.Cols = 4
  loc_13685CE: var_98 = 0
  loc_13685D7: var_BC = 0
  loc_13685E0: var_E0 = "S.No"
  loc_13685E9: LateIdCallSt
  loc_13685F1: var_98 = 0
  loc_1368600: var_BC = CVar(CInt(3)) 'Integer
  loc_1368607: LateIdCallSt
  loc_136860F: var_98 = 0
  loc_1368618: var_BC = &H1F4
  loc_1368624: LateIdCallSt
  loc_136862C: var_98 = 0
  loc_1368635: var_BC = 1
  loc_136863E: var_E0 = "Revenue"
  loc_1368647: LateIdCallSt
  loc_136864F: var_98 = 1
  loc_1368658: var_BC = &H9C4
  loc_1368664: LateIdCallSt
  loc_136866C: var_98 = 0
  loc_1368675: var_BC = 2
  loc_136867E: var_E0 = "RevCode"
  loc_1368687: LateIdCallSt
  loc_136868F: var_98 = 2
  loc_136869E: var_BC = CVar(CInt(7)) 'Integer
  loc_13686A5: LateIdCallSt
  loc_13686AD: var_98 = 2
  loc_13686B6: var_BC = 0
  loc_13686C2: LateIdCallSt
  loc_13686CA: var_98 = 0
  loc_13686D3: var_BC = 3
  loc_13686DC: var_E0 = "Limit"
  loc_13686E5: LateIdCallSt
  loc_13686ED: var_98 = 3
  loc_13686FC: var_BC = CVar(CInt(7)) 'Integer
  loc_1368703: LateIdCallSt
  loc_136870B: var_98 = 3
  loc_136871A: var_BC = CVar(CInt(7)) 'Integer
  loc_1368721: LateIdCallSt
  loc_1368729: var_98 = 3
  loc_1368732: var_BC = &H3E8
  loc_136873E: LateIdCallSt
  loc_1368748: Set var_104 = Nothing 
  loc_136876B: If (CLng(Me.FGrid2.Rows) = 1) Then
  loc_136876E:   var_98 = vbNullString
  loc_1368778:   Set var_AC = Me.FGrid2
  loc_1368789: End If
  loc_1368789: var_98 = 1
  loc_1368792: var_BC = 0
  loc_136879B: var_E0 = "1"
  loc_13687A5: Set var_AC = Me.FGrid2
  loc_13687AB: LateIdCallSt
  loc_13687B6: Exit Sub
End Sub

Public Sub Proc_122_20_1208038
  'Data Table: 4421D8
  Dim var_9C As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_E4 As TextBox
  Dim var_EC As String
  Dim var_FC As String
  Dim var_F4 As TextBox
  Dim var_118 As String
  Dim var_110 As TextBox
  Dim var_124 As TextBox
  Dim unk_4421FF As Connection15
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_148 As TextBox
  loc_1207BDC: On Error Goto loc_120802F
  loc_1207BE8: var_8A = CByte(1) 'Byte
  loc_1207BFF: Me.FGrid1.Rows = 1
  loc_1207C07: var_9C = vbNullString
  loc_1207C11: Set var_B0 = Me.FGrid1
  loc_1207C35: Me.FGrid1.FixedRows = 1
  loc_1207C41: Set var_B0 = Me.TopCtrl1
  loc_1207C47: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E(FGrid1.DispID_10000)
  loc_1207C5C: If ("Add" = "Add") Then
  loc_1207C7D:   Set var_B0 = Me.Txt
  loc_1207C83:   Call 0.Method_Proc_122_20_12080380 (CInt(var_E0), var_E4, var_E8, "SELECT RoomMast.Code,rOOMcAT.NAME,RoomCAt.Code as RoomCatCode  FROM RoomMast LEFT JOIN ROOMCAT ON ROOMMAST.ROOMCAT=ROOMCAT.CODE WHERE ROOMMAST.CODE NOT IN (Select RoomNo from RoomOcc where ChkOutDate is  Null) AND ROOMMAST.TYPE='RO' AND ROOMCAT.TYPE='RO' AND ROOMCAT.CODE='")
  loc_1207C8B:   var_C0 = var_E4.Tag
  loc_1207C94:   var_EC = -1 & var_E8
  loc_1207C9B:   var_FC = var_EC & "' AND ROOMMAST.ROOMCAT='"
  loc_1207CAC:   Set var_F0 = Me.Txt
  loc_1207CB2:   Call 0.Method_Proc_122_20_12080380 (CInt(var_E0), var_F4, var_F8)
  loc_1207CBA:   var_FC = var_F4.Tag
  loc_1207CD8:   var_118 = var_138 & var_F8 & "' ORDER BY rOOMMAST.CODE" & " Union All" & " SELECT RoomMast.Code,rOOMcAT.NAME,RoomCAt.Code as RoomCatCode  FROM RoomMast LEFT JOIN ROOMCAT ON ROOMMAST.ROOMCAT=ROOMCAT.CODE WHERE ROOMMAST.CODE NOT IN (Select RoomNo from RoomOcc where ChkOutDate is  Null) AND ROOMMAST.TYPE='RO' AND ROOMCAT.TYPE='RO' AND ROOMCAT.CODE<>'"
  loc_1207CE9:   Set var_10C = Me.Txt
  loc_1207CEF:   Call 0.Method_Proc_122_20_12080380 (CInt(var_E0), var_110, var_114)
  loc_1207CF7:   var_118 = var_110.Tag
  loc_1207D18:   Set var_120 = Me.Txt
  loc_1207D1E:   Call 0.Method_Proc_122_20_12080380 (CInt(var_E0), var_124)
  loc_1207D3F:   unk_4421FF.Execute 1 & var_114 & "' AND ROOMMAST.ROOMCAT<>'" & var_124.Tag & "' ", , 
  loc_1207D47:   var_148 = var_138 'Address Function
  loc_1207D83: Else
  loc_1207DA1:   Set var_B0 = Me.Txt
  loc_1207DA7:   Call 0.Method_Proc_122_20_12080380 (CInt(var_E0), var_E4, var_E8, "SELECT RoomMast.Code,rOOMcAT.NAME,RoomCAt.Code as RoomCatCode  FROM RoomMast LEFT JOIN ROOMCAT ON ROOMMAST.ROOMCAT=ROOMCAT.CODE WHERE ROOMMAST.CODE NOT IN (Select RoomNo from RoomOcc where ChkOutDate is  Null) AND ROOMMAST.TYPE='RO' AND ROOMCAT.TYPE='RO' AND ROOMCAT.CODE='")
  loc_1207DAF:   var_180 = var_E4.Tag
  loc_1207DB8:   var_EC = -1 & var_E8
  loc_1207DBF:   var_FC = var_EC & "' AND ROOMMAST.ROOMCAT='"
  loc_1207DD0:   Set var_F0 = Me.Txt
  loc_1207DD6:   Call 0.Method_Proc_122_20_12080380 (CInt(var_E0), var_F4, var_F8)
  loc_1207DDE:   var_FC = var_F4.Tag
  loc_1207DFC:   var_118 = var_138 & var_F8 & "' ORDER BY rOOMMAST.CODE" & " Union All" & " SELECT RoomMast.Code,rOOMcAT.NAME,RoomCAt.Code as RoomCatCode  FROM RoomMast LEFT JOIN ROOMCAT ON ROOMMAST.ROOMCAT=ROOMCAT.CODE WHERE ROOMMAST.CODE NOT IN (Select RoomNo from RoomOcc where ChkOutDate is  Null) AND ROOMMAST.TYPE='RO' AND ROOMCAT.TYPE='RO' AND ROOMCAT.CODE<>'"
  loc_1207E0D:   Set var_10C = Me.Txt
  loc_1207E13:   Call 0.Method_Proc_122_20_12080380 (CInt(var_E0), var_110)
  loc_1207E3C:   Set var_120 = Me.Txt
  loc_1207E42:   Call 0.Method_Proc_122_20_12080380 (CInt(var_E0), var_124)
  loc_1207E68:   var_C0 = CVar(var_118 & var_110.Tag & "' AND ROOMMAST.ROOMCAT<>'" & var_124.Tag & "'" & " Union All" & " SELECT RoomMast.Code,rOOMcAT.NAME,RoomCAt.Code as RoomCatCode  FROM RoomMast LEFT JOIN ROOMCAT ON ROOMMAST.ROOMCAT=ROOMCAT.CODE WHERE ROOMMAST.CODE  IN (Select RoomNo from RoomOcc LEFT JOIN GuestFolio ON (RoomOcc.FolioNo = GuestFolio.FolioNo) AND (RoomOcc.GuestProf = GuestFolio.GuestProf)  where MFolioNO=") 'String
  loc_1207E85:   unk_4421FF.Execute CStr(var_C0 & var_15C & ") AND ROOMMAST.TYPE='RO'"), , 
  loc_1207E8D:   var_148 = var_138 'Address Function
  loc_1207ED2: End If
  loc_1207EE6: If (var_148.RecordCount > 0) Then
  loc_1207EED:   Set var_B0 = ()
  loc_1207F08:   If (Txt.DispID_6803000E = "Add") Then
  loc_1207F20:     For var_184 = CByte(1) To CByte(var_148.RecordCount): var_8A = var_184 'Byte
  loc_1207F2A:       Set var_188 = (CByte(1))
  loc_1207F32:       var_9C = CVar(CLng(var_8A)) 'Long
  loc_1207F3A:       var_198 = CVar(CLng(0)) 'Long
  loc_1207F45:       var_C0 = CVar(CStr(var_8A)) 'String
  loc_1207F4C:       LateIdCallSt
  loc_1207F5C:       var_9C = CVar(CLng(var_8A)) 'Long
  loc_1207F64:       var_198 = CVar(CLng(1)) 'Long
  loc_1207F69:       var_1B8 = vbNullString
  loc_1207F72:       LateIdCallSt
  loc_1207F7F:       var_198 = CVar(CLng(var_8A)) 'Long
  loc_1207F87:       var_1B8 = CVar(CLng(2)) 'Long
  loc_1207F8C:       var_9C = "Code"
  loc_1207FA2:       var_D0 = CVar(CStr())) 'String
  loc_1207FA9:       LateIdCallSt
  loc_1207FBD:       var_198 = CVar(CLng(var_8A)) 'Long
  loc_1207FC5:       var_1B8 = CVar(CLng(&HB)) 'Long
  loc_1207FCA:       var_9C = "RoomCatCode"
  loc_1207FE0:       var_D0 = CVar(CStr())) 'String
  loc_1207FE7:       LateIdCallSt
  loc_1207FF8:       Set var_188 = Nothing 
  loc_1208001:       Call var_148.MoveNext
  loc_1208007:       var_9C = vbNullString
  loc_1208011:       Set var_B0 = Me.FGrid1
  loc_1208025:     Next var_184 'Byte
  loc_120802B:     GoTo loc_120802E
  loc_120802E:     ' Referenced from: 120802B
  loc_120802E:   End If
  loc_120802E: End If
  loc_120802E: Exit Sub
  loc_120802F: ' Referenced from: 1207BDC
  loc_120802F: Proc_6_60_E62BC4()
  loc_1208034: Exit Sub
End Sub

Public Sub Proc_122_21_E38950
  'Data Table: 4421D8
  loc_E38930: Set var_88 = Me.TopCtrl1
  loc_E38936: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E()
  loc_E3894B: If ( = "Browse") Then
  loc_E3894E:   Exit Sub
  loc_E3894F: End If
  loc_E3894F: Exit Sub
End Sub

Public Sub Proc_122_22_E30370
  'Data Table: 4421D8
  loc_E30350: Set var_88 = Me.TopCtrl1
  loc_E30356: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000E()
  loc_E3036B: If ( = "Browse") Then
  loc_E3036E:   Exit Sub
  loc_E3036F: End If
  loc_E3036F: Exit Sub
End Sub

Public Sub Proc_122_23_1186144(arg_C) '1186144
  'Data Table: 4421D8
  Dim var_88 As Integer
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_A0 As Long
  Dim var_D0 As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_F0 As Variant
  Dim var_A4 As Variant
  Dim var_110 As Variant
  Dim var_128 As Long
  Dim var_120 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_160 As Variant
  loc_1185D6F: var_88 = arg_C
  loc_1185D78: If (var_88 = 0) Then
  loc_1185D8E:   var_A0 = CLng(Me.FGrid1.Col)
  loc_1185D9E:   If Not (var_A0 = CLng(3)) Then
  loc_1185DA8:     If Not (var_A0 = CLng(4)) Then
  loc_1185DB2:       If Not (var_A0 = CLng(5)) Then
  loc_1185DBC:         If (var_A0 = CLng(6)) Then
  loc_1185DBF:         End If
  loc_1185DBF:       End If
  loc_1185DBF:     End If
  loc_1185DD2:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1185DFB:     Set var_8C = Me.TxtGrid
  loc_1185E01:     Call 0.Method_Proc_122_23_11861440 (0, var_A4, var_A8, CVar(CLng(Me.FGrid1.Col)))
  loc_1185E09:     var_D0 = var_A4.Text
  loc_1185E11:     var_110 = CVar(var_A8) 'String
  loc_1185E19:     Set var_124 = Me.FGrid1
  loc_1185E1F:     LateIdCallSt
  loc_1185E3D:   End If
  loc_1185E40: Else
  loc_1185E46:   If (var_88 = 1) Then
  loc_1185E53:     var_9C = Me.FGrid2.Col
  loc_1185E5C:     var_128 = CLng(var_9C)
  loc_1185E6C:     If (var_128 = CLng(1)) Then
  loc_1185E95:       var_12E = Me.Recordset15.EOF
  loc_1185EC6:       Set var_8C = Me.TxtGrid
  loc_1185ECC:       Call 0.Method_Proc_122_23_11861440 (arg_C, var_A4, var_A8, ((Me.var_9C.RecordCount = 0) Or ((var_12E = &HFF) Or (Me.Recordset15.BOF = &HFF))), var_128)
  loc_1185ED4:       var_124 = var_A4.Text
  loc_1185EEC:       If (var_110 Or (var_A8 = vbNullString)) Then
  loc_1185F02:         var_D0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1185F0A:         var_F0 = CVar(CLng(1)) 'Long
  loc_1185F0F:         var_120 = vbNullString
  loc_1185F19:         Set var_A4 = Me.FGrid2
  loc_1185F1F:         LateIdCallSt
  loc_1185F44:         var_D0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_1185F4C:         var_F0 = CVar(CLng(2)) 'Long
  loc_1185F51:         var_120 = vbNullString
  loc_1185F5B:         Set var_A4 = Me.FGrid2
  loc_1185F61:         LateIdCallSt
  loc_1185F76:       Else
  loc_1185F79:         Call Proc_122_24_FC4738(var_12E, var_A4, var_120, var_F0, var_D0, var_A4)
  loc_1185F84:         If (var_12E = 0) Then
  loc_1185F8C:           Proc_122_23_1186144 = 0
  loc_1185F92:         End If
  loc_1185F9C:         var_9C = Me.FGrid2.Row
  loc_1185FA5:         var_E0 = CVar(CLng(var_9C)) 'Long
  loc_1185FAD:         var_100 = CVar(CLng(1)) 'Long
  loc_1185FE3:         var_110 = CVar(CStr(Me.var_9C.Fields.Item("Name").Value)) 'String
  loc_1185FEB:         Set var_B0 = Me.FGrid2
  loc_1185FF1:         LateIdCallSt
  loc_1186017:         var_9C = Me.FGrid2.Row
  loc_1186020:         var_E0 = CVar(CLng(var_9C)) 'Long
  loc_1186028:         var_100 = CVar(CLng(2)) 'Long
  loc_118604D:         var_A4 = Me.var_9C.Fields.Item("Code")
  loc_118605E:         var_110 = CVar(CStr(var_A4.Value)) 'String
  loc_1186066:         Set var_B0 = Me.FGrid2
  loc_118606C:         LateIdCallSt
  loc_1186088:       End If
  loc_118608B:     Else
  loc_1186092:       If (var_128 = CLng(3)) Then
  loc_11860A1:         Set var_8C = Me.TxtGrid
  loc_11860A7:         Call 0.Method_Proc_122_23_11861440 (1, var_A4, var_A8, var_B0, var_110, var_100, var_E0)
  loc_11860AF:         var_B0 = var_A4.Text
  loc_11860D2:         var_F0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_11860DA:         var_120 = CVar(CLng(3)) 'Long
  loc_1186107:         var_160 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_118610F:         Set var_B0 = Me.FGrid2
  loc_1186115:         LateIdCallSt
  loc_1186138:       End If
  loc_1186138:     End If
  loc_1186138:   End If
  loc_1186138: End If
  loc_118613D: Proc_122_23_1186144 = &HFF
End Sub

Public Sub Proc_122_24_FC4738
  'Data Table: 4421D8
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC45BB: If (CLng(Me.FGrid2.Col) = CLng(1)) Then
  loc_FC45C0:   var_92 = 1 'Byte
  loc_FC45C4: End If
  loc_FC45CD: Set var_98 = Me.TxtGrid
  loc_FC45D3: Call 0.Method_Proc_122_24_FC47380 (1, var_B0)
  loc_FC45F6: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC462A: For var_D4 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC464E:   If (CLng(var_88) = CLng(Me.FGrid2.Row)) Then
  loc_FC4651:     GoTo loc_FC4723
  loc_FC4654:   End If
  loc_FC4658:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC4682:   var_D0 = Trim(CVar(CStr(Me.FGrid2.TextMatrix))))
  loc_FC468C:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC46C1:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC46E5:     MsgBox("Duplicate Revenue Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC46FE:     Set var_98 = Me.TxtGrid
  loc_FC4704:     Call 0.Method_Proc_122_24_FC47380 (1, var_B0, CVar(CLng(var_92)))
  loc_FC470C:     var_B0.SetFocus
  loc_FC471D:     Proc_122_24_FC4738 = 0
  loc_FC4723:     ' Referenced from: FC4651
  loc_FC4723:   End If
  loc_FC4726: Next var_D4 'Integer
  loc_FC4730: Proc_122_24_FC4738 = &HFF
End Sub

Public Sub Proc_122_25_FA7198
  'Data Table: 4421D8
  loc_FA703E: If (var_94.Visible = True) Then
  loc_FA7049:   var_94.Visible = False
  loc_FA704D: End If
  loc_FA705F: If (var_E4.Visible = True) Then
  loc_FA706A:   var_E4.Visible = False
  loc_FA706E: End If
  loc_FA7080: If (var_F4.Visible = True) Then
  loc_FA708B:   var_F4.Visible = False
  loc_FA708F: End If
  loc_FA70A1: If (var_104.Visible = True) Then
  loc_FA70AC:   var_104.Visible = False
  loc_FA70B0: End If
  loc_FA70C2: If (var_114.Visible = True) Then
  loc_FA70CD:   var_114.Visible = False
  loc_FA70D1: End If
  loc_FA70E3: If (var_124.Visible = True) Then
  loc_FA70EE:   var_124.Visible = False
  loc_FA70F2: End If
  loc_FA7104: If (var_134.Visible = True) Then
  loc_FA710F:   var_134.Visible = False
  loc_FA7113: End If
  loc_FA7125: If (var_144.Visible = True) Then
  loc_FA7130:   var_144.Visible = False
  loc_FA7134: End If
  loc_FA7146: If (var_154.Visible = True) Then
  loc_FA7151:   var_154.Visible = False
  loc_FA7155: End If
  loc_FA7167: If (var_164.Visible = True) Then
  loc_FA7172:   var_164.Visible = False
  loc_FA7176: End If
  loc_FA7188: If (var_174.Visible = True) Then
  loc_FA7193:   var_174.Visible = False
  loc_FA7197: End If
  loc_FA7197: Exit Sub
End Sub

Public Sub Proc_122_26_E8E340(arg_C) 'E8E340
  'Data Table: 4421D8
  Dim var_98 As TextBox
  loc_E8E2DA: Set var_8C = Me.Txt
  loc_E8E2E0: Call 0.Method_Proc_122_26_E8E340C (var_8E, var_86)
  loc_E8E2F0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E8E306:   Set var_8C = Me.Txt
  loc_E8E30C:   Call 0.Method_Proc_122_26_E8E3400 (CInt(var_86), var_98)
  loc_E8E314:   var_98.Enabled = arg_C
  loc_E8E323: Next var_92 'Byte
  loc_E8E335: var_A8.Enabled = Not(arg_C)
  loc_E8E33C: Exit Sub
End Sub

Public Sub Proc_122_27_FE4E0C
  'Data Table: 4421D8
  Dim var_A8 As Variant
  Dim var_E8 As TextBox
  loc_FE4C5D: var_98 = vbNullString 'Variant
  loc_FE4C66: var_B8 = vbNullString 'Variant
  loc_FE4C6F: var_C8 = vbNullString 'Variant
  loc_FE4C78: var_D8 = 0 'Variant
  loc_FE4C8A: Set var_DC = Me.Txt
  loc_FE4C90: Call 0.Method_Proc_122_27_FE4E0CC (var_DE, var_86)
  loc_FE4CA0: For var_E2 =  To CByte((var_DE - 1)): CByte(0) = var_E2 'Byte
  loc_FE4CB6:   Set var_DC = Me.Txt
  loc_FE4CBC:   Call 0.Method_Proc_122_27_FE4E0C0 (CInt(var_86), var_E8)
  loc_FE4CC4:   var_E8.Text = vbNullString
  loc_FE4CE0:   Set var_DC = Me.Txt
  loc_FE4CE6:   Call 0.Method_Proc_122_27_FE4E0C0 (CInt(var_86), var_E8)
  loc_FE4CEE:   var_E8.Tag = vbNullString
  loc_FE4CFD: Next var_E2 'Byte
  loc_FE4D08: var_F8 = vbNullString 'Variant
  loc_FE4D11: var_108 = vbNullString 'Variant
  loc_FE4D1A: var_118 = vbNullString 'Variant
  loc_FE4D23: var_128 = vbNullString 'Variant
  loc_FE4D2C: var_138 = vbNullString 'Variant
  loc_FE4D35: var_148 = vbNullString 'Variant
  loc_FE4D39: var_A8 = 1
  loc_FE4D44: Call var_158.ZOrder
  loc_FE4D5C: If (var_158.Visible = True) Then
  loc_FE4D67:   var_158.Visible = False
  loc_FE4D72:   var_198.Enabled = True
  loc_FE4D76: End If
  loc_FE4D7B: var_138 = "." 'Variant
  loc_FE4D88: Set var_DC = Me.TopCtrl1
  loc_FE4D8E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000B(False)
  loc_FE4D9F: Set var_DC = Me.TopCtrl1
  loc_FE4DA5: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6803000A(False)
  loc_FE4DB6: Set var_DC = Me.TopCtrl1
  loc_FE4DBC: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030008(False)
  loc_FE4DCD: Set var_DC = Me.TopCtrl1
  loc_FE4DD3: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030007(False)
  loc_FE4DE4: Set var_DC = Me.TopCtrl1
  loc_FE4DEA: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030009(False)
  loc_FE4DFB: Set var_DC = Me.TopCtrl1
  loc_FE4E01: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030006(False)
  loc_FE4E09: Exit Sub
End Sub
