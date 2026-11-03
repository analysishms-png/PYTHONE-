VERSION 5.00
Begin VB.Form FrmControlPanel
  Caption = "Control Panel"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "FrmControlPanel.frx":0
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  MDIChild = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 6915
  ClientHeight = 4875
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin Frame Frame3
    Caption = "Lock"
    Left = 4455
    Top = 345
    Width = 1905
    Height = 915
    TabIndex = 21
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin SSOption optLockType
      Index = 1
      Left = 165
      Top = 540
      Width = 1575
      Height = 225
      TabIndex = 23
    End
    Begin SSOption optLockType
      Index = 0
      Left = 180
      Top = 225
      Width = 1680
      Height = 240
      TabIndex = 22
    End
  End
  Begin Frame Frame1
    Left = 555
    Top = 3945
    Width = 5895
    Height = 555
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox Text1
      Index = 3
      BackColor = &HC0FFFF&
      ForeColor = &HC000&
      Left = 180
      Top = 165
      Width = 330
      Height = 315
      Text = ":"
      TabIndex = 13
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Text1
      Index = 2
      Left = 4350
      Top = 180
      Width = 345
      Height = 315
      Text = ":"
      TabIndex = 9
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Text1
      Index = 1
      ForeColor = &HFF0000&
      Left = 3000
      Top = 165
      Width = 330
      Height = 315
      Text = ":"
      TabIndex = 8
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Text1
      Index = 0
      ForeColor = &HFF&
      Left = 1530
      Top = 165
      Width = 345
      Height = 315
      Text = ":"
      TabIndex = 7
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Selected"
      Index = 3
      Left = 570
      Top = 225
      Width = 870
      Height = 285
      TabIndex = 14
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Not Active"
      Index = 2
      Left = 4755
      Top = 225
      Width = 975
      Height = 285
      TabIndex = 12
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Locked"
      Index = 1
      Left = 3405
      Top = 225
      Width = 885
      Height = 285
      TabIndex = 11
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "UnLocked"
      Index = 0
      Left = 1920
      Top = 225
      Width = 885
      Height = 285
      TabIndex = 10
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame Frame2
    Caption = "Frame2"
    Left = 495
    Top = 3705
    Width = 2220
    Height = 1890
    TabIndex = 16
    Begin CommandButton ConnectCmd
      Caption = "&Connect"
      Left = 165
      Top = 225
      Width = 1905
      Height = 375
      TabIndex = 20
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton DisconnectCmd
      Caption = "&Disconnect"
      Left = 165
      Top = 630
      Width = 1905
      Height = 375
      TabIndex = 19
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton LockBttn
      Caption = "L&ock System"
      Left = 165
      Top = 1035
      Width = 1905
      Height = 375
      TabIndex = 18
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton cmdUnlock
      Caption = "&UnLock System"
      Left = 165
      Top = 1440
      Width = 1905
      Height = 375
      TabIndex = 17
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Shape Shape1
      BackColor = &H808080&
      BorderColor = &HC0C0C0&
      Left = 105
      Top = 165
      Width = 2025
      Height = 1710
      Shape = 4
      FillColor = &HC0C0C0&
      FillStyle = 0
    End
  End
  Begin CheckBox cmdClose
    Caption = "Clo&se"
    BackColor = &H80000000&
    ForeColor = &H0&
    Left = 4335
    Top = 3375
    Width = 2130
    Height = 525
    TabIndex = 15
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CheckBox cmdUnLockAll
    Caption = " UnLock All Machine where Application are Running"
    BackColor = &H80000000&
    ForeColor = &HFF0000&
    Left = 4350
    Top = 2670
    Width = 2115
    Height = 735
    TabIndex = 5
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CheckBox cmdLockALL
    Caption = " Lock All Machine where Application are Running"
    BackColor = &H80000000&
    ForeColor = &HC0&
    Left = 4350
    Top = 1965
    Width = 2115
    Height = 735
    TabIndex = 4
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CheckBox cmdSearch
    Caption = "  &Search Host 's Name  (Application on Running)"
    BackColor = &H80000000&
    ForeColor = &H8000&
    Left = 4350
    Top = 1245
    Width = 2115
    Height = 735
    TabIndex = 3
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin MSHFlexGrid FGrid1
    Left = 555
    Top = 405
    Width = 3480
    Height = 3465
    TabIndex = 0
  End
  Begin Winsock sckControlPanel
    Index = 0
  End
  Begin TextBox txtHost
    Left = 240
    Top = 1020
    Width = 2040
    Height = 345
    TabIndex = 1
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
  Begin TextBox txtStatus
    Left = 300
    Top = 3345
    Width = 3480
    Height = 345
    TabIndex = 2
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
  Begin Winsock sckControlPanel
    Index = 1
  End
End

Attribute VB_Name = "FrmControlPanel"


Private Sub ConnectCmd_Click() '10BF158
  'Data Table: 464DD0
  Dim var_88 As TextBox
  Dim var_110 As Winsock
  Dim ConnectCmd_Click6 As Variant
  Dim ConnectCmd_Click0 As Variant
  loc_10BEE81: Me.txtStatus.Text = vbNullString
  loc_10BEE89: On Error Goto loc_10BF115
  loc_10BEE99: var_8C = Me.txtHost.Text
  loc_10BEECF: If (Trim(var_8C) = vbNullString) Then
  loc_10BEEEB:   MsgBox("Please enter correct Remote Computer's Name or IP Address.", &H40, var_CC, var_EC, var_10C)
  loc_10BEF01:   global_56 = vbNullString
  loc_10BEF05:   Exit Sub
  loc_10BEF06: End If
  loc_10BEF0F: Set var_88 = Me.sckControlPanel
  loc_10BEF15: Call 0.Method_ConnectCmd_Click0 (0)
  loc_10BEF32: If (CInt(var_110.State) > 0) Then
  loc_10BEF3E:   Set var_88 = Me.sckControlPanel
  loc_10BEF44:   Call 0.Method_ConnectCmd_Click0 (0, var_110)
  loc_10BEF65:   If (CLng(CInt(var_110.State)) <> &H2749) Then
  loc_10BEF71:     Set var_88 = Me.sckControlPanel
  loc_10BEF77:     Call 0.Method_ConnectCmd_Click0 (0, var_110)
  loc_10BEF7F:     ConnectCmd_Click6 = var_110._RemoteHost
  loc_10BEF8E:   End If
  loc_10BEF8E: End If
  loc_10BEF97: Set var_88 = Me.sckControlPanel
  loc_10BEF9D: Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_10BEFBA: If (CInt(var_110.State) > 0) Then
  loc_10BEFC6:   Set var_88 = Me.sckControlPanel
  loc_10BEFCC:   Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_10BEFED:   If (CLng(CInt(var_110.State)) <> &H2749) Then
  loc_10BEFF9:     Set var_88 = Me.sckControlPanel
  loc_10BEFFF:     Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_10BF007:     ConnectCmd_Click6 = var_110._RemoteHost
  loc_10BF016:   End If
  loc_10BF016: End If
  loc_10BF029: Set var_88 = Me.sckControlPanel
  loc_10BF02F: Call 0.Method_ConnectCmd_Click0 (0, var_110, global_56)
  loc_10BF037: var_110.RemoteHost = ConnectCmd_Click6
  loc_10BF055: Set var_88 = Me.sckControlPanel
  loc_10BF05B: Call 0.Method_ConnectCmd_Click0 (0, var_110, &H1F44)
  loc_10BF063: var_110.RemotePort = ConnectCmd_Click6
  loc_10BF078: Set var_88 = Me.sckControlPanel
  loc_10BF07E: Call 0.Method_ConnectCmd_Click0 (0, var_110)
  loc_10BF086: ConnectCmd_Click0 = var_110._RemoteHost
  loc_10BF0A8: Set var_88 = Me.sckControlPanel
  loc_10BF0AE: Call 0.Method_ConnectCmd_Click0 (1, var_110, global_56)
  loc_10BF0B6: var_110.RemoteHost = ConnectCmd_Click0
  loc_10BF0D4: Set var_88 = Me.sckControlPanel
  loc_10BF0DA: Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_10BF0E2: var_110.RemotePort = &H1F45
  loc_10BF0F7: Set var_88 = Me.sckControlPanel
  loc_10BF0FD: Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_10BF105: ConnectCmd_Click0 = var_110._RemoteHost
  loc_10BF114: Exit Sub
  loc_10BF115: ' Referenced from: 10BEE89
  loc_10BF11D: Set var_88 = Err()
  loc_10BF123: Call 0.Method_arg_2C (var_8C, ConnectCmd_Click0)
  loc_10BF144: MsgBox(CVar(var_8C), &H10, "Connection Error ...", var_EC, var_10C)
  loc_10BF157: Exit Sub
End Sub

Private Sub DisconnectCmd_Click() 'E161C8
  'Data Table: 464DD0
  loc_E161BC: Me.ConnectCmd.Enabled = True
  loc_E161C4: Exit Sub
End Sub

Public Sub sckControlPanel_UnknownEvent_B(Index As Integer) 'FC7C50
  'Data Table: 464DD0
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_AC As Variant
  Dim var_CC As Long
  Dim var_100 As Winsock
  loc_FC7AA7: var_86 = Index
  loc_FC7AB0: If (var_86 = 0) Then
  loc_FC7AC6:   var_AC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_FC7ACB:   var_CC = 2
  loc_FC7AE1:   Set var_100 = Me.FGrid1
  loc_FC7AE7:   LateIdCallSt
  loc_FC7B09:   Me.ConnectCmd.Enabled = False
  loc_FC7B1D:   Me.DisconnectCmd.Enabled = True
  loc_FC7B32:   Set var_8C = Me.sckControlPanel
  loc_FC7B38:   Call 0.Method_sckControlPanel_UnknownEvent_B0 (Index, var_100, " Connected with '", var_100)
  loc_FC7B60:   Me.txtStatus.Text = CVar(CStr(Index)) & CStr(var_100.RemoteHostIP) & "'   "
  loc_FC7B7D: Else
  loc_FC7B83:   If (var_86 = 1) Then
  loc_FC7B99:     var_AC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_FC7BB4:     Set var_100 = Me.FGrid1
  loc_FC7BBA:     LateIdCallSt
  loc_FC7BDC:     Me.ConnectCmd.Enabled = False
  loc_FC7BF0:     Me.DisconnectCmd.Enabled = True
  loc_FC7C05:     Set var_8C = Me.sckControlPanel
  loc_FC7C0B:     Call 0.Method_sckControlPanel_UnknownEvent_B0 (Index, var_100, " Connected with '", var_100, CVar(CStr(Index)))
  loc_FC7C33:     Me.txtStatus.Text = 2 & CStr(var_100.RemoteHostIP) & "'   "
  loc_FC7C4D:   End If
  loc_FC7C4D: End If
  loc_FC7C4D: Exit Sub
End Sub

Public Sub sckControlPanel_UnknownEvent_D(Index As Integer) 'E8D790
  'Data Table: 464DD0
  Dim var_8C As Winsock
  Dim var_88 As Variant
  loc_E8D726: Set var_88 = Me.sckControlPanel
  loc_E8D72C: Call 0.Method_sckControlPanel_UnknownEvent_D0 (Index)
  loc_E8D74D: If (CLng(CInt(var_8C.State)) <> &H2749) Then
  loc_E8D75C:   Me.ConnectCmd.Enabled = True
  loc_E8D770:   Me.DisconnectCmd.Enabled = False
  loc_E8D785:   Me.txtStatus.Text = "Not Connected."
  loc_E8D78D: End If
  loc_E8D78D: Exit Sub
End Sub

Private Sub txtStatus_Change() 'EC9A0C
  'Data Table: 464DD0
  loc_EC998A: If CBool(Trim(CVar(Me.txtStatus)) <> vbNullString) Then
  loc_EC99AF:   Me.FGrid1.Row = CVar(CLng(Me.FGrid1.RowSel))
  loc_EC99D1:   Me.FGrid1.Col = 0
  loc_EC99EC:   Me.FGrid1.CellForeColor = &HFF
  loc_EC9A02:   Me.FGrid1.CellFontBold = True
  loc_EC9A0A: End If
  loc_EC9A0A: Exit Sub
End Sub

Private Sub Form_Load() 'FF70F0
  'Data Table: 464DD0
  Dim var_88 As Variant
  Dim MemVar_1F936AC As Long
  Dim var_90 As Long
  Dim var_8C As Long
  Dim var_94 As Winsock
  loc_FF6F08: Me.txtHost.Visible = False
  loc_FF6F1C: Me.txtStatus.Visible = False
  loc_FF6F30: Me.Frame2.Visible = False
  loc_FF6F3D: MemVar_1F936AC = -1
  loc_FF6F87: SetWindowRgn(Me.cmdSearch.hWnd, CreateRoundRectRgn(5, 4, &H8C, &H30, &H12, &H2D), &HFF)
  loc_FF6FD7: SetWindowRgn(Me.cmdLockALL.hWnd, CreateRoundRectRgn(5, 4, &H8C, &H30, &H12, &H2D), &HFF)
  loc_FF7027: SetWindowRgn(Me.cmdUnLockAll.hWnd, CreateRoundRectRgn(5, 4, &H8C, &H30, &H12, &H2D), &HFF)
  loc_FF705A: var_8C = CreateRoundRectRgn(5, 4, &H8C, &H1E, &H12, &H1E)
  loc_FF706A: var_90 = Me.cmdClose.hWnd
  loc_FF7077: SetWindowRgn(var_90, var_8C, &HFF)
  loc_FF7092: Set var_88 = Me.sckControlPanel
  loc_FF7098: Call 0.Method_Form_Load0 (0, var_94, var_8C, var_90, var_8C, var_90)
  loc_FF70BD: Proc_156_2_F97D18(-2147483648, Me.FGrid1, CStr(var_94.LocalHostName), var_8C)
  loc_FF70DF: Me.DisconnectCmd.Enabled = False
  loc_FF70E7: Call Ini_Grid()
  loc_FF70EC: Exit Sub
End Sub

Private Sub Form_Resize() 'DFBEA0
  'Data Table: 464DD0
  loc_DFBE9C: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'EB3F40
  'Data Table: 464DD0
  Dim var_A8 As Variant
  Dim var_C8 As Long
  loc_EB3EC7: var_A8 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_EB3ECC: var_C8 = 1
  loc_EB3EF7: Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_EB3F1B: Me.ConnectCmd.Enabled = True
  loc_EB3F2F: Me.DisconnectCmd.Enabled = False
  loc_EB3F37: Call ConnectCmd_Click()
  loc_EB3F3C: Exit Sub
End Sub

Private Sub cmdSearch_Click() 'F61378
  'Data Table: 464DD0
  Dim var_8C As Variant
  loc_F61263: If (Me.cmdSearch.Value = 1) Then
  loc_F61272:   Me.cmdSearch.Value = 0
  loc_F6129F:   For var_A4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F612B8:     Me.FGrid1.Row = CVar(CLng(var_86))
  loc_F612D3:     Me.FGrid1.Col = 1
  loc_F612DF:     Set var_8C = Me.FGrid1
  loc_F61324:     Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_F61342:     Me.ConnectCmd.Enabled = True
  loc_F61356:     Me.DisconnectCmd.Enabled = False
  loc_F6135E:     Call ConnectCmd_Click()
  loc_F6136A:     Proc_96_21_E57C50(CDbl(1), 1, CVar(CLng(var_86)))
  loc_F61372:   Next var_A4 'Integer
  loc_F61377: End If
  loc_F61377: Exit Sub
End Sub

Private Sub cmdSearch_GotFocus() 'E2EF38
  'Data Table: 464DD0
  loc_E2EF18: Me.cmdSearch.FontBold = True
  loc_E2EF2E: Me.cmdSearch.FontSize = CDbl(8)
  loc_E2EF36: Exit Sub
End Sub

Private Sub cmdSearch_LostFocus() 'E2EF98
  'Data Table: 464DD0
  loc_E2EF78: Me.cmdSearch.FontBold = False
  loc_E2EF8E: Me.cmdSearch.FontSize = CDbl(9)
  loc_E2EF96: Exit Sub
End Sub

Private Sub cmdUnLockAll_Click() 'F9FF70
  'Data Table: 464DD0
  Dim var_8C As Variant
  Dim var_B4 As Variant
  loc_F9FE0B: If (Me.cmdUnLockAll.Value = 1) Then
  loc_F9FE1A:   Me.cmdUnLockAll.Value = 0
  loc_F9FE47:   For var_A4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F9FE60:     Me.FGrid1.Row = CVar(CLng(var_86))
  loc_F9FE7B:     Me.FGrid1.Col = 1
  loc_F9FE87:     Set var_8C = Me.FGrid1
  loc_F9FE9C:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_F9FECC:     Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_F9FEDE:     var_B4 = 0
  loc_F9FEF1:     Me.FGrid1.Col = var_B4
  loc_F9FF18:     If (CLng(Me.FGrid1.CellForeColor) = &HFF0000) Then
  loc_F9FF1B:       Call ConnectCmd_Click()
  loc_F9FF2D:       Proc_96_21_E57C50(0.2, 1, var_B4)
  loc_F9FF32:       Call cmdUnlock_Click()
  loc_F9FF44:       Proc_96_21_E57C50(0.2, FGrid1.DispID_8001)
  loc_F9FF5C:       Me.FGrid1.CellForeColor = &HFF
  loc_F9FF64:     End If
  loc_F9FF67:   Next var_A4 'Integer
  loc_F9FF6C: End If
  loc_F9FF6C: Exit Sub
End Sub

Private Sub cmdUnLockAll_GotFocus() 'E2F178
  'Data Table: 464DD0
  loc_E2F158: Me.cmdUnLockAll.FontBold = True
  loc_E2F16E: Me.cmdUnLockAll.FontSize = CDbl(8)
  loc_E2F176: Exit Sub
End Sub

Private Sub cmdUnLockAll_LostFocus() 'E2F1D8
  'Data Table: 464DD0
  loc_E2F1B8: Me.cmdUnLockAll.FontBold = False
  loc_E2F1CE: Me.cmdUnLockAll.FontSize = CDbl(9)
  loc_E2F1D6: Exit Sub
End Sub

Private Sub cmdLockALL_Click() 'F9FDB0
  'Data Table: 464DD0
  Dim var_8C As Variant
  Dim var_B4 As Variant
  loc_F9FC4B: If (Me.cmdLockALL.Value = 1) Then
  loc_F9FC5A:   Me.cmdLockALL.Value = 0
  loc_F9FC87:   For var_A4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F9FCA0:     Me.FGrid1.Row = CVar(CLng(var_86))
  loc_F9FCBB:     Me.FGrid1.Col = 1
  loc_F9FCC7:     Set var_8C = Me.FGrid1
  loc_F9FCDC:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_F9FD0C:     Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_F9FD1E:     var_B4 = 0
  loc_F9FD31:     Me.FGrid1.Col = var_B4
  loc_F9FD58:     If (CLng(Me.FGrid1.CellForeColor) = &HFF) Then
  loc_F9FD5B:       Call ConnectCmd_Click()
  loc_F9FD6D:       Proc_96_21_E57C50(0.2, 1, var_B4)
  loc_F9FD72:       Call LockBttn_Click()
  loc_F9FD84:       Proc_96_21_E57C50(0.2, FGrid1.DispID_8001)
  loc_F9FD9C:       Me.FGrid1.CellForeColor = &HFF0000
  loc_F9FDA4:     End If
  loc_F9FDA7:   Next var_A4 'Integer
  loc_F9FDAC: End If
  loc_F9FDAC: Exit Sub
  loc_F9FDAD: If  Then Exit Sub
  loc_F9FDAD: End If
End Sub

Private Sub cmdLockALL_GotFocus() 'E2EE78
  'Data Table: 464DD0
  loc_E2EE58: Me.cmdLockALL.FontBold = True
  loc_E2EE6E: Me.cmdLockALL.FontSize = CDbl(8)
  loc_E2EE76: Exit Sub
End Sub

Private Sub cmdLockALL_LostFocus() 'E2EED8
  'Data Table: 464DD0
  loc_E2EEB8: Me.cmdLockALL.FontBold = False
  loc_E2EECE: Me.cmdLockALL.FontSize = CDbl(9)
  loc_E2EED6: Exit Sub
End Sub

Private Sub CmdClose_Click() 'E1617C
  'Data Table: 464DD0
  Dim arg_58FF As Integer
  loc_E16171: Me.Global.Unload Me
  loc_E16179: Exit Sub
  loc_E1617A: arg_58FF = 
End Sub

Private Sub CmdClose_GotFocus() 'E2EDB8
  'Data Table: 464DD0
  loc_E2ED98: Me.cmdClose.FontBold = True
  loc_E2EDAE: Me.cmdClose.FontSize = CDbl(8)
  loc_E2EDB6: Exit Sub
End Sub

Private Sub CmdClose_LostFocus() 'E2EE18
  'Data Table: 464DD0
  loc_E2EDF8: Me.cmdClose.FontBold = False
  loc_E2EE0E: Me.cmdClose.FontSize = CDbl(9)
  loc_E2EE16: Exit Sub
End Sub

Private Sub LockBttn_Click() 'E8D6D4
  'Data Table: 464DD0
  Dim var_88 As TextBox
  Dim var_BC As String
  loc_E8D6A1: If CBool(Trim(CVar(Me.txtStatus.Text)) <> vbNullString) Then
  loc_E8D6A4:   var_BC = "LockSystem#"
  loc_E8D6B3:   Set var_88 = Me.sckControlPanel
  loc_E8D6B9:   Call 0.Method_LockBttn_Click0 (0, var_D0)
  loc_E8D6D0: End If
  loc_E8D6D0: Exit Sub
  loc_E8D6D1: DOC
End Sub

Private Sub cmdUnlock_Click() 'EEC8B8
  'Data Table: 464DD0
  Dim var_BC As Variant
  Dim var_EC As Long
  loc_EEC835: If CBool(Trim(CVar(Me.txtStatus.Text)) <> vbNullString) Then
  loc_EEC84B:   var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_EEC850:   var_EC = 2
  loc_EEC88A:   Set var_104 = Me.sckControlPanel
  loc_EEC890:   Call 0.Method_cmdUnlock_Click0 (CInt(Val(CStr(Me.FGrid1.TextMatrix)))), var_108, "UnLockSystem#")
  loc_EEC8B5: End If
  loc_EEC8B5: Exit Sub
  loc_EEC8B6: DOC
End Sub

Public Sub Ini_Grid() 'F057A8
  'Data Table: 464DD0
  Dim var_98 As Long
  Dim var_BC As Long
  Dim var_DC As String
  loc_F056C0: Set var_88 = Me.FGrid1
  loc_F056D6: Me.FGrid1.Cols = 3
  loc_F056DE: var_98 = 0
  loc_F056E7: var_BC = &H190
  loc_F056F3: LateIdCallSt
  loc_F056FB: var_98 = 1
  loc_F05704: var_BC = &HA5A
  loc_F05710: LateIdCallSt
  loc_F05718: var_98 = 2
  loc_F05721: var_BC = &H190
  loc_F0572D: LateIdCallSt
  loc_F05735: var_98 = 0
  loc_F0573E: var_BC = 0
  loc_F05747: var_DC = vbNullString
  loc_F05750: LateIdCallSt
  loc_F05758: var_98 = 0
  loc_F05761: var_BC = 1
  loc_F0576A: var_DC = "List of Remote Machine"
  loc_F05773: LateIdCallSt
  loc_F0577B: var_98 = 0
  loc_F05784: var_BC = 2
  loc_F05796: LateIdCallSt
  loc_F057A0: Set var_88 = Nothing 
  loc_F057A4: Exit Sub
  loc_F057A5: var_88 = vbNullString
End Sub

Public Sub Proc_155_23_E501B8
  'Data Table: 464DD0
  Dim var_9C As String
  loc_E50188: var_9C = "Shutdown#"
  loc_E50197: Set var_88 = Me.sckControlPanel
  loc_E5019D: Call 0.Method_Proc_155_23_E501B80 (0, var_8C)
  loc_E501B4: Exit Sub
End Sub
