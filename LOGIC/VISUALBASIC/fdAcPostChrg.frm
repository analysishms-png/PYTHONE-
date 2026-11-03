VERSION 5.00
Begin VB.Form fdAcPostChrg
  Caption = "Night Audit Process"
  BackColor = &HDECCBE&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12555
  ClientHeight = 8820
  BeginProperty Font
    Name = "Arial Black"
    Size = 9
    Charset = 0
    Weight = 900
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8580
    Width = 12555
    Height = 240
    Visible = 0   'False
    TabIndex = 38
  End
  Begin CommandButton cmdShowHide
    Caption = "SHOW DETAILS"
    Left = 810
    Top = 4035
    Width = 5805
    Height = 210
    Visible = 0   'False
    TabIndex = 34
  End
  Begin OptionButton optLockType
    Caption = "Not In Active"
    Index = 1
    Left = 4740
    Top = 4680
    Width = 1815
    Height = 360
    Visible = 0   'False
    TabIndex = 33
    BeginProperty Font
      Name = "Arial Black"
      Size = 8.25
      Charset = 0
      Weight = 900
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin OptionButton optLockType
    Caption = "Active Machine"
    Index = 0
    Left = 4755
    Top = 4410
    Width = 1815
    Height = 360
    Visible = 0   'False
    TabIndex = 32
    BeginProperty Font
      Name = "Arial Black"
      Size = 8.25
      Charset = 0
      Weight = 900
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox txtCounter
    BackColor = &HC0FFC0&
    ForeColor = &HFF&
    Left = 6165
    Top = 7215
    Width = 450
    Height = 330
    Visible = 0   'False
    TabIndex = 31
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    Index = 3
    BackColor = &HC0FFFF&
    ForeColor = &HC000&
    Left = 900
    Top = 7215
    Width = 330
    Height = 315
    Visible = 0   'False
    Text = ":"
    TabIndex = 26
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
    BackColor = &HFF8080&
    ForeColor = &H80000005&
    Left = 4770
    Top = 7230
    Width = 345
    Height = 315
    Visible = 0   'False
    Text = ":"
    TabIndex = 25
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
    BackColor = &HFF8080&
    ForeColor = &HFF0000&
    Left = 3615
    Top = 7215
    Width = 330
    Height = 315
    Visible = 0   'False
    Text = ":"
    TabIndex = 24
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
    BackColor = &HFF8080&
    ForeColor = &HFF&
    Left = 2250
    Top = 7215
    Width = 345
    Height = 315
    Visible = 0   'False
    Text = ":"
    TabIndex = 23
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
  Begin MSHFlexGrid FGrid1
    Left = 1080
    Top = 4290
    Width = 3480
    Height = 2805
    Visible = 0   'False
    TabIndex = 20
  End
  Begin CheckBox cmdSearch
    Caption = "  &Search Application"
    BackColor = &HFF8080&
    ForeColor = &H8000&
    Left = 4590
    Top = 5145
    Width = 2115
    Height = 525
    Visible = 0   'False
    TabIndex = 19
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CheckBox cmdLockALL
    Caption = " &Lock All Machine"
    BackColor = &HFF8080&
    ForeColor = &HC0&
    Left = 4590
    Top = 5625
    Width = 2115
    Height = 525
    Visible = 0   'False
    TabIndex = 18
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CheckBox cmdUnLockAll
    Caption = " &UnLock All Machine"
    BackColor = &HFF8080&
    ForeColor = &HFF0000&
    Left = 4590
    Top = 6090
    Width = 2115
    Height = 540
    Visible = 0   'False
    TabIndex = 17
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CheckBox cmdClose
    Caption = "Clo&se"
    BackColor = &HFF8080&
    ForeColor = &H0&
    Left = 4590
    Top = 6540
    Width = 2115
    Height = 525
    Visible = 0   'False
    TabIndex = 16
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin Frame Frame2
    Caption = "Frame2"
    Left = 600
    Top = 8085
    Width = 2220
    Height = 1890
    Visible = 0   'False
    TabIndex = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton cmdUnlock
      Caption = "&UnLock System"
      Left = 165
      Top = 1440
      Width = 1905
      Height = 375
      TabIndex = 15
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
      TabIndex = 14
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
      TabIndex = 13
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
    Begin CommandButton ConnectCmd
      Caption = "&Connect"
      Left = 165
      Top = 225
      Width = 1905
      Height = 375
      TabIndex = 12
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
      Left = 135
      Top = 180
      Width = 2025
      Height = 1710
      Shape = 4
      FillColor = &HC0C0C0&
      FillStyle = 0
    End
  End
  Begin Frame Frame3
    Caption = "Status"
    BackColor = &H8000000B&
    Left = 4695
    Top = 4260
    Width = 1905
    Height = 810
    Visible = 0   'False
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
  Begin DataGrid DGNewHelp
    Left = 9480
    Top = 6960
    Width = 4230
    Height = 2220
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 3
    Left = 9345
    Top = 5415
    Width = 3225
    Height = 255
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 2
    Left = 9345
    Top = 5145
    Width = 3225
    Height = 255
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 1
    Left = 6825
    Top = 8220
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 0
    BackColor = &H8000000E&
    ForeColor = &HC00000&
    Left = 5100
    Top = 1425
    Width = 2325
    Height = 450
    Enabled = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 11
    BeginProperty Font
      Name = "Arial Black"
      Size = 15.75
      Charset = 0
      Weight = 900
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGOldHelp
    Left = 9180
    Top = 6600
    Width = 4230
    Height = 2220
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin MSFlexGrid FGPoint
    Left = 7935
    Top = 4950
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 9
  End
  Begin Winsock sckControlPanel
    Index = 0
  End
  Begin TextBox txtHost
    Left = 480
    Top = 4755
    Width = 2040
    Height = 345
    Visible = 0   'False
    TabIndex = 21
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
    Left = 315
    Top = 5925
    Width = 3480
    Height = 345
    Visible = 0   'False
    TabIndex = 22
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
  Begin BtnEnh CmdExit
    Left = 6315
    Top = 2940
    Width = 2520
    Height = 945
    TabIndex = 36
  End
  Begin BtnEnh Cmd
    Left = 3285
    Top = 2880
    Width = 2520
    Height = 945
    TabIndex = 37
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 35
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
  Begin Shape Shape2
    BorderColor = &HFF&
    Left = 795
    Top = 7170
    Width = 5895
    Height = 450
    Visible = 0   'False
    BorderWidth = 2
  End
  Begin Label Label1
    Caption = "Not Active"
    Index = 2
    ForeColor = &HFFFF&
    Left = 5175
    Top = 7275
    Width = 975
    Height = 285
    Visible = 0   'False
    TabIndex = 30
    BackStyle = 0 'Transparent
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
    ForeColor = &HFFFF&
    Left = 4020
    Top = 7275
    Width = 885
    Height = 285
    Visible = 0   'False
    TabIndex = 29
    BackStyle = 0 'Transparent
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
    ForeColor = &HFFFF&
    Left = 2640
    Top = 7275
    Width = 885
    Height = 285
    Visible = 0   'False
    TabIndex = 28
    BackStyle = 0 'Transparent
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
    Caption = "Selected"
    Index = 3
    ForeColor = &HFFFF&
    Left = 1290
    Top = 7275
    Width = 870
    Height = 285
    Visible = 0   'False
    TabIndex = 27
    BackStyle = 0 'Transparent
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
  Begin Label LblName
    Caption = "New Name"
    Index = 1
    ForeColor = &H0&
    Left = 12180
    Top = 4695
    Width = 1005
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 6
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
  Begin Label LblName
    Caption = "Old Name"
    Index = 0
    ForeColor = &H0&
    Left = 12180
    Top = 4365
    Width = 915
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 5
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
  Begin Label lblDisplay
    Caption = "."
    ForeColor = &HFF&
    Left = 2430
    Top = 2100
    Width = 6285
    Height = 285
    TabIndex = 2
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
End

Attribute VB_Name = "fdAcPostChrg"

Private MasterFormExit As Integer

Private Sub Fgrid1_UnknownEvent_9 'EB37CC
  'Data Table: 4F7A80
  Dim var_A8 As Variant
  Dim var_C8 As Long
  loc_EB3753: var_A8 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_EB3758: var_C8 = 1
  loc_EB3783: Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_EB37A7: Me.ConnectCmd.Enabled = True
  loc_EB37BB: Me.DisconnectCmd.Enabled = False
  loc_EB37C3: Call ConnectCmd_Click()
  loc_EB37C8: Exit Sub
End Sub

Private Sub cmdSearch_Click() 'F713C8
  'Data Table: 4F7A80
  Dim var_8C As Variant
  loc_F7129F: If (Me.cmdSearch.Value = 1) Then
  loc_F712AE:   Me.cmdSearch.Value = 0
  loc_F712DB:   For var_A4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F712F4:     Me.FGrid1.Row = CVar(CLng(var_86))
  loc_F7130F:     Me.FGrid1.Col = 1
  loc_F7131B:     Set var_8C = Me.FGrid1
  loc_F71360:     Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_F7137E:     Me.ConnectCmd.Enabled = True
  loc_F71392:     Me.DisconnectCmd.Enabled = False
  loc_F7139A:     Call ConnectCmd_Click()
  loc_F713A6:     Proc_96_21_E57C50(CDbl(1), 1, CVar(CLng(var_86)))
  loc_F713AE:   Next var_A4 'Integer
  loc_F713B3: End If
  loc_F713BF: Me.cmdLockALL.Enabled = True
  loc_F713C7: Exit Sub
End Sub

Private Sub cmdSearch_GotFocus() 'E2E098
  'Data Table: 4F7A80
  loc_E2E078: Me.cmdSearch.FontBold = True
  loc_E2E08E: Me.cmdSearch.FontSize = CDbl(9)
  loc_E2E096: Exit Sub
End Sub

Private Sub cmdSearch_LostFocus() 'E2E0F8
  'Data Table: 4F7A80
  loc_E2E0D8: Me.cmdSearch.FontBold = False
  loc_E2E0EE: Me.cmdSearch.FontSize = CDbl(&HA)
  loc_E2E0F6: Exit Sub
End Sub

Private Sub CmdClose_Click() 'E15CBC
  'Data Table: 4F7A80
  loc_E15CB1: Me.Global.Unload Me
  loc_E15CB9: Exit Sub
End Sub

Private Sub CmdClose_GotFocus() 'E2DF18
  'Data Table: 4F7A80
  loc_E2DEF8: Me.cmdClose.FontBold = True
  loc_E2DF0E: Me.cmdClose.FontSize = CDbl(9)
  loc_E2DF16: Exit Sub
End Sub

Private Sub CmdClose_LostFocus() 'E2DF78
  'Data Table: 4F7A80
  loc_E2DF58: Me.cmdClose.FontBold = False
  loc_E2DF6E: Me.cmdClose.FontSize = CDbl(&HA)
  loc_E2DF76: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '118CF14
  'Data Table: 4F7A80
  Dim var_8C As TextBox
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim Me As Recordset15
  Dim var_B4 As String
  Dim var_90 As Fields15
  loc_118CB36: Set var_88 = Me.Txt
  loc_118CB3C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_118CB4A: Proc_6_74_E226B0(var_8C)
  loc_118CB65: Set var_88 = Me.Txt
  loc_118CB6B: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_118CB73: var_8C.SelStart = 0
  loc_118CB8C: Set var_88 = Me.Txt
  loc_118CB92: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_118CB9A: var_94 = var_8C.Text
  loc_118CBAD: Set var_90 = Me.Txt
  loc_118CBB3: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_118CBBB: var_98.SelLength = Len(var_94)
  loc_118CBD1: var_9A = Index
  loc_118CBDC: If (var_9A = CInt(3)) Then
  loc_118CBF6:   If (Me.RecordCount > 0) Then
  loc_118CC04:     Set var_8C = Me.FGPoint
  loc_118CC1C:     Proc_6_137_1193554(Me.DGNewHelp, global_108, Index)
  loc_118CC2A:   End If
  loc_118CC78:   Set var_88 = Me.Txt
  loc_118CC7E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_118CC86:   var_8C = var_8C.Text
  loc_118CC9E:   If (var_9A Or (var_94 = vbNullString)) Then
  loc_118CCA1:     Exit Sub
  loc_118CCA2:   End If
  loc_118CCAF:   Set var_88 = Me.Txt
  loc_118CCB5:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_118CCBD:   var_94 = var_8C.Text
  loc_118CCCF:   var_B4 = "Name"
  loc_118CD0A:   If CBool(CVar(var_94) <> Me.Fields.Item(var_B4).Value) Then
  loc_118CD13:     Me.MoveFirst
  loc_118CD36:     Set var_88 = Me.Txt
  loc_118CD3C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_118CD44:     0 = var_8C.Text
  loc_118CD5D:     Me.Find 1 & var_94 & "'", var_B4, var_8C
  loc_118CD72:   End If
  loc_118CD75: Else
  loc_118CD7D:   If (var_9A = CInt(2)) Then
  loc_118CD97:     If (Me.RecordCount > 0) Then
  loc_118CDA5:       Set var_8C = Me.FGPoint
  loc_118CDBD:       Proc_6_137_1193554(Me.DGOldHelp, global_112)
  loc_118CDCB:     End If
  loc_118CE19:     Set var_88 = Me.Txt
  loc_118CE1F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_118CE27:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_118CE3F:     If (Index Or (var_94 = vbNullString)) Then
  loc_118CE42:       Exit Sub
  loc_118CE43:     End If
  loc_118CE50:     Set var_88 = Me.Txt
  loc_118CE56:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_118CE5E:     var_94 = var_8C.Text
  loc_118CE70:     var_B4 = "Name"
  loc_118CEAB:     If CBool(CVar(var_94) <> Me.Fields.Item(var_B4).Value) Then
  loc_118CEB4:       Me.MoveFirst
  loc_118CED7:       Set var_88 = Me.Txt
  loc_118CEDD:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_118CEE5:       0 = var_8C.Text
  loc_118CEFE:       Me.Find 1 & var_94 & "'", var_B4, var_8C
  loc_118CF13:     End If
  loc_118CF13:   End If
  loc_118CF13: End If
  loc_118CF13: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1084954
  'Data Table: 4F7A80
  Dim var_86 As Integer
  Dim Me As Variant
  loc_10846BE: If (CLng(Shift) = &H1B) Then
  loc_10846C1:   Call Proc_110_54_EB8E0C()
  loc_10846C6:   Exit Sub
  loc_10846C7: End If
  loc_10846CA: var_86 = KeyCode
  loc_10846D5: If (var_86 = CInt(3)) Then
  loc_10846F5:   Set var_9C = Me.FGPoint
  loc_1084700:   Set var_98 = Nothing
  loc_108472E:   Proc_6_69_134A198(Me.DGNewHelp, Me.Txt, KeyCode, global_108, Shift, 0)
  loc_108479D:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10847C3:     Proc_6_138_106D6F8(Me.DGNewHelp, global_108, KeyCode, Me.FGPoint, 1)
  loc_10847D1:   End If
  loc_10847D4: Else
  loc_10847DC:   If (var_86 = CInt(2)) Then
  loc_10847FC:     Set var_9C = Me.FGPoint
  loc_1084807:     Set var_98 = Nothing
  loc_1084835:     Proc_6_69_134A198(Me.DGOldHelp, Me.Txt, KeyCode, global_112, Shift, 0, 1)
  loc_10848A4:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10848AB:       Set var_98 = Me.DGOldHelp
  loc_10848CA:       Proc_6_138_106D6F8(var_98, global_112, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10848D8:     End If
  loc_10848D8:   End If
  loc_10848D8: End If
  loc_1084913: If ((CBool(Me.DGNewHelp.Visible) = 0) And (CBool(Me.DGOldHelp.Visible) = 0)) Then
  loc_1084920:   If (CLng(Shift) = &H26) Then
  loc_1084929:     Proc_6_76_E52838(Shift, arg_14, 0, var_98)
  loc_108492E:   End If
  loc_1084943:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_108494C:     Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_1084951:   End If
  loc_1084951: End If
  loc_1084951: Exit Sub
  loc_1084952: Me6C = 0
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F694BC
  'Data Table: 4F7A80
  Dim var_86 As Integer
  loc_F6938B: var_86 = KeyAscii
  loc_F69396: If (var_86 = CInt(3)) Then
  loc_F693B5:   If (CBool(Me.DGNewHelp.Visible) = &HFF) Then
  loc_F693C7:     var_A0 = "Name"
  loc_F693E2:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_108, arg_10)
  loc_F69414:     Proc_6_138_106D6F8(Me.DGNewHelp, global_108, KeyAscii, Me.FGPoint)
  loc_F69422:   End If
  loc_F69425: Else
  loc_F6942D:   If (var_86 = CInt(2)) Then
  loc_F6944C:     If (CBool(Me.DGOldHelp.Visible) = &HFF) Then
  loc_F69479:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_112, arg_10, "Name")
  loc_F694AB:       Proc_6_138_106D6F8(Me.DGOldHelp, global_112, KeyAscii, Me.FGPoint)
  loc_F694B9:     End If
  loc_F694B9:   End If
  loc_F694B9: End If
  loc_F694B9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4EDCC
  'Data Table: 4F7A80
  loc_E4EDAA: Set var_88 = Me.Txt
  loc_E4EDB0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4EDBE: Proc_6_73_E22704(var_8C)
  loc_E4EDCA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1110FF8
  'Data Table: 4F7A80
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim var_A4 As TextBox
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_98 As String
  loc_1110CB3: var_8A = Cancel
  loc_1110CBE: If (var_8A = CInt(0)) Then
  loc_1110CCE:   Set var_90 = Me.Txt
  loc_1110CD4:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1110CDC:   var_98 = var_94.Text
  loc_1110CFA:   Set var_A0 = Me.Txt
  loc_1110D00:   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1110D08:   var_A4.Text = Proc_6_34_14ECF20(var_98)
  loc_1110D22: Else
  loc_1110D2A:   If (var_8A = CInt(3)) Then
  loc_1110D7B:     Set var_90 = Me.Txt
  loc_1110D81:     Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_1110D89:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_1110DA1:     If (var_8A Or (var_98 = vbNullString)) Then
  loc_1110DB1:       Set var_90 = Me.Txt
  loc_1110DB7:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1110DBF:       var_94.Tag = vbNullString
  loc_1110DCB:       Exit Sub
  loc_1110DCC:     End If
  loc_1110E07:     Set var_A0 = Me.Txt
  loc_1110E0D:     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1110E15:     var_A4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1110E48:     var_94 = Me.Fields.Item("Code")
  loc_1110E66:     Set var_A0 = Me.Txt
  loc_1110E6C:     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1110E74:     var_A4.Tag = CStr(var_94.Value)
  loc_1110E8D:   Else
  loc_1110E95:     If (var_8A = CInt(2)) Then
  loc_1110EE6:       Set var_90 = Me.Txt
  loc_1110EEC:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1110F0C:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_1110F1C:         Set var_90 = Me.Txt
  loc_1110F22:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1110F2A:         var_94.Tag = vbNullString
  loc_1110F36:         Exit Sub
  loc_1110F37:       End If
  loc_1110F72:       Set var_A0 = Me.Txt
  loc_1110F78:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1110F80:       var_A4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1110FD1:       Set var_A0 = Me.Txt
  loc_1110FD7:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1110FDF:       var_A4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1110FF5:     End If
  loc_1110FF5:   End If
  loc_1110FF5: End If
  loc_1110FF5: Exit Sub
End Sub

Private Sub Form_Load() '11E9A58
  'Data Table: 4F7A80
  Dim var_88 As Variant
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim MemVar_1F936AC As Long
  Dim var_A4 As Long
  Dim var_A0 As Long
  Dim var_A8 As TextBox
  Dim unk_4F7A94 As Connection15
  Dim var_D4 As TextBox
  Dim var_BC As Variant
  Dim var_D0 As DataGrid
  loc_11E95CF: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_11E95E0: Me.txtHost.Visible = False
  loc_11E95F4: Me.txtStatus.Visible = False
  loc_11E9608: Me.Frame2.Visible = False
  loc_11E9613: var_96 = 3500
  loc_11E9619: var_98 = 1500
  loc_11E9623: For var_9C = 0 To &H32: var_92 = var_9C 'Integer
  loc_11E9635:   Call 0.Method_arg_6C (RGB(&H32, 0, 0), 0)
  loc_11E9640:   var_96 = (var_96 - 1)
  loc_11E9649:   var_98 = (var_98 - 1)
  loc_11E9652:   Call 0.Method_arg_E4 (CDbl(var_96), var_98, var_96)
  loc_11E965D:   Call 0.Method_arg_EC (CDbl(var_98), var_98)
  loc_11E9668:   Print Me, "For Date :"
  loc_11E9671: Next var_9C 'Integer
  loc_11E9683: Call 0.Method_arg_6C (RGB(250, 0, 0))
  loc_11E968E: Call 0.Method_arg_E4 (CDbl(var_96))
  loc_11E9699: Call 0.Method_arg_EC (CDbl(var_98))
  loc_11E96A4: Print Me, "For Date :"
  loc_11E96AA: On Error Goto loc_11E9A4F
  loc_11E96B2: MemVar_1F936AC = -1
  loc_11E96FC: SetWindowRgn(Me.cmdSearch.hWnd, CreateRoundRectRgn(5, 4, &H8C, &H1E, &H12, &H1E), &HFF)
  loc_11E974C: SetWindowRgn(Me.cmdLockALL.hWnd, CreateRoundRectRgn(5, 4, &H8C, &H1E, &H12, &H1E), &HFF)
  loc_11E979C: SetWindowRgn(Me.cmdUnLockAll.hWnd, CreateRoundRectRgn(5, 4, &H8C, &H1E, &H12, &H1E), &HFF)
  loc_11E97CF: var_A0 = CreateRoundRectRgn(5, 4, &H8C, &H1E, &H12, &H1E)
  loc_11E97DF: var_A4 = Me.cmdClose.hWnd
  loc_11E97EC: SetWindowRgn(var_A4, var_A0, &HFF)
  loc_11E9801: Me.DisconnectCmd.Enabled = False
  loc_11E9809: Call Ini_Grid()
  loc_11E9827: Call 0.Method_Form_Load0 (CInt(0), var_A8, CStr(MemVar_1F920EC), var_A0, var_A4, var_A0)
  loc_11E982F: var_A8.Text = var_A4
  loc_11E9854: unk_4F7A94.Execute "SELECT Code,Name FROM ItemMast Where Type IN ('Semi Finish','Consumables','Raw Material','Store Item') ORDER BY Name", var_CC, -1
  loc_11E987C: CVarUnk
  loc_11E9881: VerifyVarObj
  loc_11E988D: LateIdStAd
  loc_11E98A9: Set var_D0 = Me.Txt
  loc_11E98AF: Call 0.Method_Form_Load0 (CInt(3), var_D4, var_D8, Me.DGNewHelp, Me.Txt, Me.DGNewHelp)
  loc_11E98B7: var_A0 = var_D4.Height
  loc_11E98CA: Set var_88 = Me.Txt
  loc_11E98D0: Call 0.Method_Form_Load0 (CInt(3), var_A8, var_A4, var_A4)
  loc_11E98D8: var_A0 = var_A8.Top
  loc_11E98E4: var_BC = CVar((var_A4 + var_D8)) 'Single
  loc_11E98F3: Me.DGNewHelp.Top = var_BC
  loc_11E9919: Call 0.Method_Form_Load0 (CInt(3), var_A8, var_A4)
  loc_11E9921: var_A4 = var_A8.Left
  loc_11E9938: Me.DGNewHelp.Left = CVar(var_A4)
  loc_11E995C: unk_4F7A94.Execute "SELECT Code,Name FROM ItemMast Where Type IN ('Semi Finish','Consumables','Raw Material','Store Item') ORDER BY Name", var_CC, -1
  loc_11E996D: Set global_112 = Me.Txt
  loc_11E9984: CVarUnk
  loc_11E9989: VerifyVarObj
  loc_11E9995: LateIdStAd
  loc_11E99B1: Set var_D0 = Me.Txt
  loc_11E99B7: Call 0.Method_Form_Load0 (CInt(2), var_D4, var_D8, Me.DGOldHelp)
  loc_11E99BF: global_112 = var_D4.Height
  loc_11E99D2: Set var_88 = Me.Txt
  loc_11E99D8: Call 0.Method_Form_Load0 (CInt(2), var_A8, var_A4)
  loc_11E99E0: var_88 = var_A8.Top
  loc_11E99EC: var_BC = CVar((var_A4 + var_D8)) 'Single
  loc_11E99FB: Me.DGOldHelp.Top = CVar(var_A4)
  loc_11E9A1B: Set var_88 = Me.Txt
  loc_11E9A21: Call 0.Method_Form_Load0 (CInt(2), var_A8)
  loc_11E9A40: Me.DGOldHelp.Left = CVar(var_A8.Left)
  loc_11E9A4E: Exit Sub
  loc_11E9A4F: ' Referenced from: 11E96AA
  loc_11E9A4F: Proc_6_60_E62BC4(MemVar_1F936AC)
  loc_11E9A54: Exit Sub
End Sub

Private Sub Form_Resize() 'E7691C
  'Data Table: 4F7A80
  loc_E768C6: Call 0.Method_arg_50 (var_88)
  loc_E768D8: Me.LblFormCaption.Caption = var_88
  loc_E768F1: Me.LblFormCaption.Left = CDbl(0)
  loc_E768FF: Call 0.Method_arg_100 (var_90)
  loc_E76911: Me.LblFormCaption.Width = var_90
  loc_E76919: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E00488
  'Data Table: 4F7A80
  loc_E00481: MasterFormExit = 0
  loc_E00484: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5A0AC
  'Data Table: 4F7A80
  loc_E5A074: Set var_88 = Me.TopCtrl1
  loc_E5A07A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E5A09D: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5A0A5:   Call Form_Unload(&HFF)
  loc_E5A0AA: End If
  loc_E5A0AA: Exit Sub
End Sub

Private Sub Form_Activate() 'E763E0
  'Data Table: 4F7A80
  Dim var_90 As OptionButton
  loc_E7638C: On Error Goto loc_E763D7
  loc_E7639A: Set var_8C = Me.optLockType
  loc_E763A0: Call 0.Method_Form_Activate0 (1, var_90)
  loc_E763A8: var_90.Value = True
  loc_E763B8: Set var_8C = Me.TopCtrl1
  loc_E763BE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030000()
  loc_E763D3: If (CLng(CInt()) = &H2D) Then
  loc_E763D6: End If
  loc_E763D6: Exit Sub
  loc_E763D7: ' Referenced from: E7638C
  loc_E763D7: Proc_6_60_E62BC4()
  loc_E763DC: Exit Sub
  loc_E763DD: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2538C
  'Data Table: 4F7A80
  loc_E25371: If (MasterFormExit = &HFF) Then
  loc_E25381:   Me.Global.Unload Me
  loc_E25389: End If
  loc_E25389: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E61CB8
  'Data Table: 4F7A80
  loc_E61C6C: On Error Goto loc_E61CAF
  loc_E61C79: If (CLng(KeyCode) = &H1B) Then
  loc_E61C89:   Me.Global.Unload Me
  loc_E61C91:   Exit Sub
  loc_E61C92: End If
  loc_E61CA6: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E61CAE: Exit Sub
  loc_E61CAF: ' Referenced from: E61C6C
  loc_E61CAF: Proc_6_60_E62BC4(Shift)
  loc_E61CB4: Exit Sub
End Sub

Private Sub LockBttn_Click() 'EEC288
  'Data Table: 4F7A80
  Dim var_BC As Variant
  Dim var_EC As Long
  loc_EEC205: If CBool(Trim(CVar(Me.txtStatus.Text)) <> vbNullString) Then
  loc_EEC21B:   var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_EEC220:   var_EC = 2
  loc_EEC25A:   Set var_104 = Me.sckControlPanel
  loc_EEC260:   Call 0.Method_LockBttn_Click0 (CInt(Val(CStr(Me.FGrid1.TextMatrix)))), var_108, "LockSystem#")
  loc_EEC285: End If
  loc_EEC285: Exit Sub
End Sub

Private Sub cmdUnlock_Click() 'EEC7B0
  'Data Table: 4F7A80
  Dim var_BC As Variant
  Dim var_EC As Long
  Dim Me00 As Variant
  loc_EEC72D: If CBool(Trim(CVar(Me.txtStatus.Text)) <> vbNullString) Then
  loc_EEC743:   var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_EEC748:   var_EC = 2
  loc_EEC782:   Set var_104 = Me.sckControlPanel
  loc_EEC788:   Call 0.Method_cmdUnlock_Click0 (CInt(Val(CStr(Me.FGrid1.TextMatrix)))), var_108, "UnLockSystem#")
  loc_EEC7AD: End If
  loc_EEC7AD: Exit Sub
  loc_EEC7AE: Me00 = sckControlPanel.DispID_10000
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1592C
  'Data Table: 4F7A80
  loc_E15921: Me.Global.Unload Me
  loc_E15929: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 '10FD080
  'Data Table: 4F7A80
  Dim var_9C As Variant
  Dim var_124 As String
  Dim var_C0 As Variant
  Dim var_98 As Variant
  Dim unk_4F7A94 As Connection15
  Dim var_88 As Recordset15
  Dim var_94 As Double
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_1A8 As Variant
  Dim var_120 As Variant
  loc_10FCD7C: Set var_98 = Me.Txt
  loc_10FCD82: Call 0.Method_Cmd_UnknownEvent_90 (0, var_9C)
  loc_10FCDA2: If (MemVar_1F920EC <> CDate(var_9C.Text)) Then
  loc_10FCDBE:   MsgBox("Check Audit Date or Contact to Your Administrator", &H10, var_E0, var_100, var_120)
  loc_10FCDCE:   Exit Sub
  loc_10FCDCF: End If
  loc_10FCDEB: var_124 = "This Process is very critical" & vbCrLf & "Make sure that all the billings are stopped and no transactions have been made during Night Audit process."
  loc_10FCE1B: If (MsgBox(CVar(var_124 & vbCrLf & "Continue with Night Audit Process ?"), &H14, var_E0, var_100, var_120) <> 6) Then
  loc_10FCE1E:   Exit Sub
  loc_10FCE1F: End If
  loc_10FCE2B: var_C0 = "Night Audit for Date :" & CDate(MemVar_1F920EC) 
  loc_10FCE3D: Me.lblDisplay.Caption = CStr(var_C0)
  loc_10FCE4F: Set var_98 = Me.lblDisplay
  loc_10FCE55: var_98.Refresh
  loc_10FCE81: unk_4F7A94.Execute "Select PostingType,NoShowAtNightAudit from Enviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_C0, -1
  loc_10FCE8C: Set var_88 = var_98
  loc_10FCEAB: var_98 = var_88.Fields
  loc_10FCED5: If (Proc_6_38_E68A98(CVar(var_98.Item("NoShowAtNightAudit"))) = "Yes") Then
  loc_10FCED8:   Proc_96_48_EFA440(var_98)
  loc_10FCEDD: End If
  loc_10FCEE0: var_94 = MemVar_1F920EC
  loc_10FCEF5: var_98 = var_88.Fields
  loc_10FCF05: var_C0 = var_98.Item("PostingType").Value
  loc_10FCF1F: If (var_C0 = "Daily Bill wise Posting") Then
  loc_10FCF33:   Proc_96_14_1F81C7C(var_94, 0)
  loc_10FCF3E: Else
  loc_10FCF41:   Proc_96_16_1F479F8(var_94, var_8A)
  loc_10FCF46: End If
  loc_10FCF4F: If (CInt(var_8A) = 2) Then
  loc_10FCF6F:   Proc_6_7_F25D88(var_C0, var_94, "Update JobScheduledDetail Set JobEnabled=1,JobScheduledOn=", var_1C8)
  loc_10FCF77:   var_E0 = -1 & var_C0 
  loc_10FCF8F:   Proc_6_17_EAA2B0(var_120, MemVar_1F92078, var_E0 & " From JobSchedule JS Inner Join JobScheduledDetail JD On JS.Schedule_Id=JD.Schedule_Id Where JS.LogSite_Code=")
  loc_10FCFAF:   Proc_6_7_F25D88(var_178, var_94)
  loc_10FCFC0:   var_1A8 = var_98 & var_120 & " And " & var_178 & " Between JS.ScheduleStartDate And JS.ScheduleEndDate And JS.ScheduleEnabled=1 And [Event] Like '%<Night Audit>%'" 
  loc_10FCFCE:   unk_4F7A94.Execute CStr(var_1A8), var_94, 
  loc_10FCFF0: End If
  loc_10FCFFD: Me.lblDisplay.Caption = "Night Audit Completed.."
  loc_10FD00F: Me.lblDisplay.Refresh
  loc_10FD024: Me.Global.Unload Me
  loc_10FD035: var_110 = (CInt(var_8A) = 2)
  loc_10FD07A: If CBool(1 And (Format(var_94, "dd/MMM") <> "31/Mar")) Then
  loc_10FD07D:   End
  loc_10FD07F: End If
  loc_10FD07F: Exit Sub
End Sub

Private Sub ConnectCmd_Click() '112463C
  'Data Table: 4F7A80
  Dim var_88 As TextBox
  Dim var_110 As Variant
  Dim ConnectCmd_Click6 As Variant
  Dim ConnectCmd_Click0 As Variant
  loc_11242E1: Me.txtStatus.Text = vbNullString
  loc_11242E9: On Error Goto loc_11245F6
  loc_11242F9: var_8C = Me.txtHost.Text
  loc_112432F: If (Trim(var_8C) = vbNullString) Then
  loc_112434B:   MsgBox("Please enter correct Remote Computer's Name or IP Address.", &H40, var_CC, var_EC, var_10C)
  loc_1124361:   global_120 = vbNullString
  loc_1124365:   Exit Sub
  loc_1124366: End If
  loc_112436F: Set var_88 = Me.sckControlPanel
  loc_1124375: Call 0.Method_ConnectCmd_Click0 (0)
  loc_1124392: If (CInt(var_110.State) > 0) Then
  loc_112439E:   Set var_88 = Me.sckControlPanel
  loc_11243A4:   Call 0.Method_ConnectCmd_Click0 (0, var_110)
  loc_11243C5:   If (CLng(CInt(var_110.State)) <> &H2749) Then
  loc_11243D1:     Set var_88 = Me.sckControlPanel
  loc_11243D7:     Call 0.Method_ConnectCmd_Click0 (0, var_110)
  loc_11243DF:     ConnectCmd_Click6 = var_110._RemoteHost
  loc_11243EE:   End If
  loc_11243EE: End If
  loc_11243F7: Set var_88 = Me.sckControlPanel
  loc_11243FD: Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_112441A: If (CInt(var_110.State) > 0) Then
  loc_1124426:   Set var_88 = Me.sckControlPanel
  loc_112442C:   Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_112444D:   If (CLng(CInt(var_110.State)) <> &H2749) Then
  loc_1124459:     Set var_88 = Me.sckControlPanel
  loc_112445F:     Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_1124467:     ConnectCmd_Click6 = var_110._RemoteHost
  loc_1124476:   End If
  loc_1124476: End If
  loc_1124481: Set var_88 = Me.optLockType
  loc_1124487: Call 0.Method_ConnectCmd_Click0 (0, var_110, &HFF)
  loc_112448F: var_110.Value = ConnectCmd_Click6
  loc_11244AE: Set var_88 = Me.sckControlPanel
  loc_11244B4: Call 0.Method_ConnectCmd_Click0 (0, var_110, global_120)
  loc_11244BC: var_110.RemoteHost = ConnectCmd_Click6
  loc_11244DA: Set var_88 = Me.sckControlPanel
  loc_11244E0: Call 0.Method_ConnectCmd_Click0 (0, var_110)
  loc_11244E8: var_110.RemotePort = &H1F44
  loc_11244FD: Set var_88 = Me.sckControlPanel
  loc_1124503: Call 0.Method_ConnectCmd_Click0 (0, var_110)
  loc_112450B: ConnectCmd_Click0 = var_110._RemoteHost
  loc_1124527: Proc_96_21_E57C50(0.2, ConnectCmd_Click0)
  loc_112454E: If (Trim(CVar(Me.txtStatus)) = vbNullString) Then
  loc_112455C:   Set var_88 = Me.optLockType
  loc_1124562:   Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_112456A:   var_110.Value = True
  loc_1124589:   Set var_88 = Me.sckControlPanel
  loc_112458F:   Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_1124597:   var_110.RemoteHost = global_120
  loc_11245B5:   Set var_88 = Me.sckControlPanel
  loc_11245BB:   Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_11245C3:   var_110.RemotePort = &H1F45
  loc_11245D8:   Set var_88 = Me.sckControlPanel
  loc_11245DE:   Call 0.Method_ConnectCmd_Click0 (1, var_110)
  loc_11245E6:   ConnectCmd_Click0 = var_110._RemoteHost
  loc_11245F5: End If
  loc_11245F5: Exit Sub
  loc_11245F6: ' Referenced from: 11242E9
  loc_11245FE: Set var_88 = Err()
  loc_1124604: Call 0.Method_arg_2C (var_8C, ConnectCmd_Click0)
  loc_1124625: MsgBox(CVar(var_8C), &H10, "Connection Error ...", var_EC, var_10C)
  loc_1124638: Exit Sub
End Sub

Private Sub DisconnectCmd_Click() 'E15DA0
  'Data Table: 4F7A80
  Dim var_9C As Variant
  loc_E15D94: Me.ConnectCmd.Enabled = True
  loc_E15D9C: Exit Sub
  loc_E15D9D: var_9C = CVar() 'String
End Sub

Public Sub sckControlPanel_UnknownEvent_B(Index As Integer) 'EAF804
  'Data Table: 4F7A80
  Dim var_88 As CommandButton
  Dim var_8C As Winsock
  loc_EAF790: Me.ConnectCmd.Enabled = False
  loc_EAF7A4: Me.DisconnectCmd.Enabled = True
  loc_EAF7B9: Set var_88 = Me.sckControlPanel
  loc_EAF7BF: Call 0.Method_sckControlPanel_UnknownEvent_B0 (Index, var_8C)
  loc_EAF7E7: Me.txtStatus.Text = " Connected with '" & CStr(var_8C.RemoteHostIP) & "'   "
  loc_EAF801: Exit Sub
End Sub

Public Sub sckControlPanel_UnknownEvent_D(Index As Integer) 'E8E760
  'Data Table: 4F7A80
  Dim var_8C As Winsock
  Dim var_88 As Variant
  loc_E8E6F6: Set var_88 = Me.sckControlPanel
  loc_E8E6FC: Call 0.Method_sckControlPanel_UnknownEvent_D0 (Index)
  loc_E8E71D: If (CLng(CInt(var_8C.State)) <> &H2749) Then
  loc_E8E72C:   Me.ConnectCmd.Enabled = True
  loc_E8E740:   Me.DisconnectCmd.Enabled = False
  loc_E8E755:   Me.txtStatus.Text = vbNullString
  loc_E8E75D: End If
  loc_E8E75D: Exit Sub
  loc_E8E75E: CExtInstUnk
End Sub

Private Sub txtStatus_Change() 'F91EB4
  'Data Table: 4F7A80
  Dim var_B4 As Variant
  Dim var_C8 As MSHFlexGrid
  Dim var_DC As Variant
  Dim var_F0 As Long
  Dim var_A4 As Variant
  loc_F91D6E: If CBool(Trim(CVar(Me.txtStatus)) <> vbNullString) Then
  loc_F91D8D:   Set var_DC = Me.FGrid1
  loc_F91D93:   var_DC.Row = CVar(CLng(Me.FGrid1.RowSel))
  loc_F91DB5:   Me.FGrid1.Col = 0
  loc_F91DD0:   Me.FGrid1.CellForeColor = &HFF
  loc_F91DE6:   Me.FGrid1.CellFontBold = True
  loc_F91DFA:   Set var_C8 = Me.optLockType
  loc_F91E00:   Call 0.Method_txtStatus_Change0 (0, var_DC)
  loc_F91E1A:   If (var_DC.Value = &HFF) Then
  loc_F91E30:     var_B4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_F91E35:     var_F0 = 2
  loc_F91E42:     var_A4 = CVar(CStr(0)) 'String
  loc_F91E4A:     Set var_DC = Me.FGrid1
  loc_F91E50:     LateIdCallSt
  loc_F91E69:   Else
  loc_F91E7C:     var_B4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_F91E81:     var_F0 = 2
  loc_F91E8E:     var_A4 = CVar(CStr(1)) 'String
  loc_F91E96:     Set var_DC = Me.FGrid1
  loc_F91E9C:     LateIdCallSt
  loc_F91EB2:   End If
  loc_F91EB2: End If
  loc_F91EB2: Exit Sub
End Sub

Private Sub cmdShowHide_Click() 'F00AF8
  'Data Table: 4F7A80
  loc_F00A30: If (Me.cmdShowHide.Caption = "SHOW DETAILS") Then
  loc_F00A49:   Proc_6_23_DFBA28(Me, 0)
  loc_F00A59:   Call 0.Method_MeC (CDbl(7000))
  loc_F00A66:   Call 0.Method_arg_74 (CDbl(4000))
  loc_F00A73:   Call 0.Method_arg_7C (CDbl(1000))
  loc_F00A85:   Me.cmdShowHide.Caption = "HIDE DETAILS"
  loc_F00A90: Else
  loc_F00AA6:   Proc_6_23_DFBA28(Me, 0)
  loc_F00AB6:   Call 0.Method_MeC (CDbl(2900), 0)
  loc_F00AC3:   Call 0.Method_Me4 (CDbl(6450))
  loc_F00AD0:   Call 0.Method_arg_74 (CDbl(4000))
  loc_F00ADD:   Call 0.Method_arg_7C (CDbl(1000))
  loc_F00AEF:   Me.cmdShowHide.Caption = "SHOW DETAILS"
  loc_F00AF7: End If
  loc_F00AF7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'F311AC
  'Data Table: 4F7A80
  Dim var_A4 As TextBox
  Dim unk_4F7A94 As Connection15
  loc_F310A8: On Error Goto loc_F31159
  loc_F310C1: Set var_A0 = Me.Txt
  loc_F310C7: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_A4)
  loc_F310CF: var_A8 = var_A4.Text
  loc_F310E7: var_D8 = DateAdd("d", CDbl(1), CDate(CDate(var_A8)))
  loc_F31102: If CBool(CDate(MemVar_1F920EC) <> var_D8) Then
  loc_F3111E:   MsgBox("Invalid Date Contact to your Administrator", 0, var_D8, var_F8, var_128)
  loc_F3112E:   Exit Sub
  loc_F3112F: End If
  loc_F31138: unk_4F7A94.BeginTrans var_12C
  loc_F31141: var_86 = CByte(1) 'Byte
  loc_F3114B: unk_4F7A94.CommitTrans
  loc_F31154: var_86 = CByte(0) 'Byte
  loc_F31158: Exit Sub
  loc_F31159: ' Referenced from: F310A8
  loc_F31162: If (CInt(var_86) = 1) Then
  loc_F3116B:   unk_4F7A94.RollbackTrans
  loc_F31170: End If
  loc_F31178: Set var_A0 = Err()
  loc_F3117E: Call 0.Method_arg_2C (var_A8)
  loc_F31197: MsgBox(CVar(var_A8), &H10, var_D8, var_F8, var_128)
  loc_F311AA: Exit Sub
End Sub

Private Sub cmdLockALL_Click() '12A5B64
  'Data Table: 4F7A80
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Long
  loc_12A5567: If (Me.cmdLockALL.Value = 1) Then
  loc_12A5576:   Me.cmdLockALL.Value = 0
  loc_12A55A3:   For var_A4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_A4 'Integer
  loc_12A55BC:     Me.FGrid1.Row = CVar(CLng(var_86))
  loc_12A55D7:     Me.FGrid1.Col = 1
  loc_12A55E3:     Set var_8C = Me.FGrid1
  loc_12A55F8:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_12A5628:     Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_12A563A:     var_B4 = 0
  loc_12A564D:     Me.FGrid1.Col = var_B4
  loc_12A5674:     If (CLng(Me.FGrid1.CellForeColor) = &HFF) Then
  loc_12A5677:       Call ConnectCmd_Click()
  loc_12A5689:       Proc_96_21_E57C50(0.3, 1, var_B4)
  loc_12A56C3:       If CBool(Trim(CVar(Me.txtStatus.Text)) <> vbNullString) Then
  loc_12A56D9:         var_B4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_12A56DE:         var_D4 = 2
  loc_12A5718:         Set var_118 = Me.sckControlPanel
  loc_12A571E:         Call 0.Method_cmdLockALL_Click0 (CInt(Val(CStr(Me.FGrid1.TextMatrix)))), var_11C, "LockMessage#", Val(CStr(Me.FGrid1.TextMatrix))))
  loc_12A5743:       End If
  loc_12A5750:       Proc_96_21_E57C50(0.2, sckControlPanel.DispID_10000, var_D4)
  loc_12A5768:       Me.FGrid1.CellForeColor = &HFF
  loc_12A5770:     End If
  loc_12A5773:   Next var_A4 'Integer
  loc_12A5781:   For var_140 = &H3C To 1 Step &HFF: var_86 = var_140 'Integer
  loc_12A5799:     Me.txtCounter.Text = CStr(var_86)
  loc_12A57AB:     Proc_96_21_E57C50(CDbl(1))
  loc_12A57B3:   Next var_140 'Integer
  loc_12A57EF:   If (MsgBox("Are You Sure Lock All Application?", &H14, "Night Audit...", var_114, var_150) = 7) Then
  loc_12A5817:     For var_154 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_154 'Integer
  loc_12A5830:       Me.FGrid1.Row = CVar(CLng(var_86))
  loc_12A584B:       Me.FGrid1.Col = 1
  loc_12A5857:       Set var_8C = Me.FGrid1
  loc_12A586C:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_12A589C:       Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_12A58AE:       var_B4 = 0
  loc_12A58C1:       Me.FGrid1.Col = var_B4
  loc_12A58E8:       If (CLng(Me.FGrid1.CellForeColor) = &HFF) Then
  loc_12A58EB:         Call ConnectCmd_Click()
  loc_12A58FD:         Proc_96_21_E57C50(0.2, 1, var_B4)
  loc_12A5937:         If CBool(Trim(CVar(Me.txtStatus.Text)) <> vbNullString) Then
  loc_12A594D:           var_B4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_12A5952:           var_D4 = 2
  loc_12A598C:           Set var_118 = Me.sckControlPanel
  loc_12A5992:           Call 0.Method_cmdLockALL_Click0 (CInt(Val(CStr(Me.FGrid1.TextMatrix)))), var_11C, "LockClose#", Val(CStr(Me.FGrid1.TextMatrix))))
  loc_12A59B7:         End If
  loc_12A59C4:         Proc_96_21_E57C50(0.2, sckControlPanel.DispID_10000, var_D4)
  loc_12A59DC:         Me.FGrid1.CellForeColor = &HFF
  loc_12A59E4:       End If
  loc_12A59E7:     Next var_154 'Integer
  loc_12A59EF:   Else
  loc_12A5A14:     For var_158 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_86 = var_158 'Integer
  loc_12A5A2D:       Me.FGrid1.Row = CVar(CLng(var_86))
  loc_12A5A48:       Me.FGrid1.Col = 1
  loc_12A5A54:       Set var_8C = Me.FGrid1
  loc_12A5A69:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_12A5A99:       Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_12A5AAB:       var_B4 = 0
  loc_12A5ABE:       Me.FGrid1.Col = var_B4
  loc_12A5AE5:       If (CLng(Me.FGrid1.CellForeColor) = &HFF) Then
  loc_12A5AE8:         Call ConnectCmd_Click()
  loc_12A5AFA:         Proc_96_21_E57C50(0.2, 1, var_B4)
  loc_12A5AFF:         Call LockBttn_Click()
  loc_12A5B11:         Proc_96_21_E57C50(0.2, FGrid1.DispID_8001)
  loc_12A5B29:         Me.FGrid1.CellForeColor = &HFF0000
  loc_12A5B31:       End If
  loc_12A5B34:     Next var_158 'Integer
  loc_12A5B39:   End If
  loc_12A5B39: End If
  loc_12A5B45: Me.cmdLockALL.Enabled = False
  loc_12A5B59: Me.cmdUnLockAll.Enabled = True
  loc_12A5B61: Exit Sub
End Sub

Private Sub cmdLockALL_GotFocus() 'E2DFD8
  'Data Table: 4F7A80
  loc_E2DFB8: Me.cmdLockALL.FontBold = True
  loc_E2DFCE: Me.cmdLockALL.FontSize = CDbl(9)
  loc_E2DFD6: Exit Sub
End Sub

Private Sub cmdLockALL_LostFocus() 'E2E038
  'Data Table: 4F7A80
  loc_E2E018: Me.cmdLockALL.FontBold = False
  loc_E2E02E: Me.cmdLockALL.FontSize = CDbl(&HA)
  loc_E2E036: Exit Sub
End Sub

Private Sub cmdUnLockAll_Click() 'FB28AC
  'Data Table: 4F7A80
  Dim var_8C As Variant
  Dim var_B4 As Variant
  loc_FB2727: If (Me.cmdUnLockAll.Value = 1) Then
  loc_FB2736:   Me.cmdUnLockAll.Value = 0
  loc_FB2763:   For var_A4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_A4 'Integer
  loc_FB277C:     Me.FGrid1.Row = CVar(CLng(var_86))
  loc_FB2797:     Me.FGrid1.Col = 1
  loc_FB27A3:     Set var_8C = Me.FGrid1
  loc_FB27B8:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_FB27E8:     Me.txtHost.Text = CStr(Me.FGrid1.TextMatrix))
  loc_FB27FA:     var_B4 = 0
  loc_FB280D:     Me.FGrid1.Col = var_B4
  loc_FB2856:     If ((CLng(Me.FGrid1.CellForeColor) = &HFF0000) Or (CLng(Me.FGrid1.CellForeColor) = &HFF)) Then
  loc_FB2859:       Call ConnectCmd_Click()
  loc_FB286B:       Proc_96_21_E57C50(0.2, 1, var_B4)
  loc_FB2870:       Call cmdUnlock_Click()
  loc_FB2882:       Proc_96_21_E57C50(0.2, FGrid1.DispID_8001)
  loc_FB289A:       Me.FGrid1.CellForeColor = &HFF
  loc_FB28A2:     End If
  loc_FB28A5:   Next var_A4 'Integer
  loc_FB28AA: End If
  loc_FB28AA: Exit Sub
End Sub

Private Sub cmdUnLockAll_GotFocus() 'E2E2D8
  'Data Table: 4F7A80
  loc_E2E2B8: Me.cmdUnLockAll.FontBold = True
  loc_E2E2CE: Me.cmdUnLockAll.FontSize = CDbl(9)
  loc_E2E2D6: Exit Sub
End Sub

Private Sub cmdUnLockAll_LostFocus() 'E2E338
  'Data Table: 4F7A80
  loc_E2E318: Me.cmdUnLockAll.FontBold = False
  loc_E2E32E: Me.cmdUnLockAll.FontSize = CDbl(&HA)
  loc_E2E336: Exit Sub
End Sub

Public Function MasterFormExitGet() '4F8FB0
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4F8FBF
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '4F8FCE
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '4F8FDD
  mVType = Value
End Sub

Public Function VnoRCGet() '4F8FEC
  VnoRCGet = VnoRC
End Function

Public Sub VnoRCPut(Value) '4F8FFB
  VnoRC = Value
End Sub

Public Function VnoRTGet() '4F900A
  VnoRTGet = VnoRT
End Function

Public Sub VnoRTPut(Value) '4F9019
  VnoRT = Value
End Sub

Public Function vPrefixGet() '4F9028
  vPrefixGet = vPrefix
End Function

Public Sub vPrefixPut(Value) '4F9037
  vPrefix = Value
End Sub

Public Function VprefixRCGet() '4F9046
  VprefixRCGet = VprefixRC
End Function

Public Sub VprefixRCPut(Value) '4F9055
  VprefixRC = Value
End Sub

Public Function VprefixRTGet() '4F9064
  VprefixRTGet = VprefixRT
End Function

Public Sub VprefixRTPut(Value) '4F9073
  VprefixRT = Value
End Sub

Public Function DocIDGet() '4F9082
  DocIDGet = DocID
End Function

Public Sub DocIDPut(Value) '4F9091
  DocID = Value
End Sub

Public Sub Ini_Grid() 'ED46BC
  'Data Table: 4F7A80
  Dim var_98 As Long
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Long
  Dim var_D8 As String
  loc_ED4613: Me.FGrid1.Cols = 3
  loc_ED4618: var_98 = 0
  loc_ED4621: var_B8 = &H190
  loc_ED462D: LateIdCallSt
  loc_ED4635: var_98 = 1
  loc_ED463E: var_B8 = &HABE
  loc_ED464A: LateIdCallSt
  loc_ED4652: var_98 = 2
  loc_ED465B: var_B8 = 0
  loc_ED4667: LateIdCallSt
  loc_ED466F: var_98 = 0
  loc_ED4678: var_B8 = 0
  loc_ED4681: var_D8 = vbNullString
  loc_ED468A: LateIdCallSt
  loc_ED4692: var_98 = 0
  loc_ED469B: var_B8 = 1
  loc_ED46A4: var_D8 = "List of Remote Machine"
  loc_ED46AD: LateIdCallSt
  loc_ED46B7: Set var_88 = Nothing 
  loc_ED46BB: Exit Sub
End Sub

Public Sub Proc_110_53_11B23B8(arg_C) '11B23B8
  'Data Table: 4F7A80
  Dim var_8C As Recordset15
  loc_11B1F71: Set var_8C = arg_C 
  loc_11B1F99: var_8C.Fields.Append "DocId", &H81, &H15
  loc_11B1FC5: var_8C.Fields.Append "V_DATE", 7, 0
  loc_11B1FF1: var_8C.Fields.Append "V_TYPE", &H81, 5
  loc_11B201D: var_8C.Fields.Append "V_PREFIX", &H81, 5
  loc_11B2049: var_8C.Fields.Append "SiteCode", &H81, 2
  loc_11B2075: var_8C.Fields.Append "V_NO", 3, &HB
  loc_11B20A1: var_8C.Fields.Append "GuestProf", &H81, 8
  loc_11B20CD: var_8C.Fields.Append "Comp_Code", &H81, 8
  loc_11B20F9: var_8C.Fields.Append "RoomChargeAc", &H81, 8
  loc_11B2125: var_8C.Fields.Append "RoomTaxAc", &H81, 8
  loc_11B2151: var_8C.Fields.Append "PayCode", &H81, 5
  loc_11B217D: var_8C.Fields.Append "RoomCat", &H81, 5
  loc_11B21A9: var_8C.Fields.Append "RoomType", &H81, 5
  loc_11B21D5: var_8C.Fields.Append "TaxStru", &H81, 5
  loc_11B2201: var_8C.Fields.Append "RoomNo", &H81, 5
  loc_11B222D: var_8C.Fields.Append "RateCode", &H81, 1
  loc_11B2259: var_8C.Fields.Append "RoomRate", 5, &H13
  loc_11B2285: var_8C.Fields.Append "DR", 5, &H13
  loc_11B22B1: var_8C.Fields.Append "CR", 5, &H13
  loc_11B22DD: var_8C.Fields.Append "Tip", 5, &H13
  loc_11B2309: var_8C.Fields.Append "BillAmount", 5, &H13
  loc_11B2335: var_8C.Fields.Append "FolioNo", 3, &HB
  loc_11B2361: var_8C.Fields.Append "Particulars", &H81, &H64
  loc_11B2371: var_8C.CursorType = 3
  loc_11B237E: var_8C.LockType = 3
  loc_11B239D: var_8C.Open var_A0, var_B0, -1
  loc_11B23A4: Set var_8C = Nothing 
  loc_11B23AB: Set var_88 = arg_C 
  loc_11B23AF: Proc_110_53_11B23B8 = -1
End Sub

Public Sub Proc_110_54_EB8E0C
  'Data Table: 4F7A80
  loc_EB8D84: If (CBool(Me.DGNewHelp.Visible) = &HFF) Then
  loc_EB8D96:   Me.DGNewHelp.Visible = False
  loc_EB8D9E: End If
  loc_EB8DBA: If (CBool(Me.DGOldHelp.Visible) = &HFF) Then
  loc_EB8DCC:   Me.DGOldHelp.Visible = False
  loc_EB8DD4: End If
  loc_EB8DF0: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB8E02:   Me.FGPoint.Visible = False
  loc_EB8E0A: End If
  loc_EB8E0A: Exit Sub
End Sub
