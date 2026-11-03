VERSION 5.00
Begin VB.Form FaMagic
  Caption = "Magic"
  BackColor = &HCBBE9E&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaMagic.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11130
  ClientHeight = 6600
  LockControls = -1  'True
  Begin CommandButton BtnSite
    Caption = "C&hange Sites"
    Left = 18570
    Top = 150
    Width = 1725
    Height = 330
    Visible = 0   'False
    TabIndex = 32
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Change Site"
    Style = 1
  End
  Begin TextBox TxtSearch1
    BackColor = &HE0E0E0&
    ForeColor = &HE0E0E0&
    Left = 12225
    Top = 1095
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 28
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin Frame Frame3
    BackColor = &HB7A4F0&
    Left = 4000
    Top = 6400
    Width = 4560
    Height = 2145
    TabIndex = 24
    BorderStyle = 0 'None
    Begin CommandButton BTNSITEOK
      Caption = "Ok"
      BackColor = &H8000000A&
      Left = 0
      Top = 1665
      Width = 4560
      Height = 495
      TabIndex = 26
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Refresh"
      Style = 1
    End
    Begin CheckBox Check
      Caption = "All"
      Index = 0
      BackColor = &H800000&
      ForeColor = &HFFFF&
      Left = 30
      Top = 45
      Width = 915
      Height = 195
      TabIndex = 25
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
      Index = 0
      Left = 15
      Top = 15
      Width = 4560
      Height = 1650
      TabIndex = 27
    End
  End
  Begin Frame Frame1
    BackColor = &HFF8080&
    Left = 2985
    Top = 2955
    Width = 5085
    Height = 2685
    TabIndex = 3
    BorderStyle = 0 'None
    Begin BtnEnh BtnOK
      Left = 3540
      Top = 1260
      Width = 1035
      Height = 615
      TabIndex = 45
    End
    Begin ComboBox Combo1
      Style = 2
      Left = 3480
      Top = 690
      Width = 1470
      Height = 315
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 30
      List = "FaMagic.frx":442
      ItemData = "FaMagic.frx":45D
    End
    Begin CheckBox Check5
      Caption = "Show Only Debit"
      BackColor = &HC0FFFF&
      Left = 105
      Top = 1410
      Width = 2100
      Height = 225
      TabIndex = 10
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CheckBox Check6
      Caption = "Show Only Credit"
      BackColor = &HC0C0FF&
      Left = 105
      Top = 1635
      Width = 2100
      Height = 225
      TabIndex = 11
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CheckBox Check4
      Caption = "Group Wise"
      BackColor = &HC0FFC0&
      Left = 105
      Top = 1185
      Width = 2100
      Height = 225
      TabIndex = 9
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CheckBox Check3
      Caption = "Show Zero Balance"
      BackColor = &HFFFFC0&
      Left = 105
      Top = 960
      Width = 2100
      Height = 225
      TabIndex = 8
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CheckBox Check2
      Caption = "Detailed"
      BackColor = &HFFC0C0&
      Left = 105
      Top = 735
      Width = 2100
      Height = 225
      TabIndex = 7
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CheckBox Check1
      Caption = "Op.Balance"
      BackColor = &HFFC0FF&
      Left = 105
      Top = 540
      Width = 2100
      Height = 225
      TabIndex = 6
      Value = 1
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox TXTE_DATE
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 270
      Width = 1395
      Height = 195
      TabIndex = 5
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin TextBox TXTS_DATE
      BackColor = &HFFFFFF&
      Left = 2010
      Top = 30
      Width = 1395
      Height = 195
      TabIndex = 4
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "For Period"
      Index = 2
      ForeColor = &H0&
      Left = 2385
      Top = 735
      Width = 735
      Height = 225
      Visible = 0   'False
      TabIndex = 31
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "From Date"
      Index = 0
      ForeColor = &H0&
      Left = 105
      Top = 30
      Width = 720
      Height = 225
      TabIndex = 13
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "To Date "
      Index = 1
      ForeColor = &H0&
      Left = 105
      Top = 270
      Width = 555
      Height = 225
      TabIndex = 12
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin MSHFlexGrid FGrid1
    Left = 0
    Top = 1710
    Width = 9240
    Height = 4155
    TabIndex = 0
  End
  Begin TextBox TxtSearch
    BackColor = &HE0E0E0&
    Left = 11595
    Top = 1860
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
  Begin Frame Frame2
    Caption = "Frame1"
    BackColor = &HFF0000&
    Left = 0
    Top = 0
    Width = 13080
    Height = 660
    TabIndex = 14
    BorderStyle = 0 'None
    Begin BtnEnh LblShort
      Index = 3
      Left = 15
      Top = 0
      Width = 1680
      Height = 645
      TabIndex = 37
    End
    Begin BtnEnh CmdExit
      Left = 11940
      Top = 0
      Width = 1125
      Height = 645
      TabIndex = 34
    End
    Begin BtnEnh BTNRefresh
      Left = 8700
      Top = 0
      Width = 1080
      Height = 645
      TabIndex = 35
    End
    Begin BtnEnh BtnPrint
      Index = 2
      Left = 10860
      Top = 0
      Width = 1080
      Height = 645
      TabIndex = 36
    End
    Begin BtnEnh BtnPrint
      Index = 0
      Left = 9780
      Top = 0
      Width = 1080
      Height = 660
      TabIndex = 33
    End
    Begin BtnEnh LblShort
      Index = 2
      Left = 1695
      Top = 0
      Width = 1680
      Height = 645
      TabIndex = 38
    End
    Begin BtnEnh LblShort
      Index = 1
      Left = 3375
      Top = 0
      Width = 1680
      Height = 645
      TabIndex = 39
    End
    Begin BtnEnh LblShort
      Index = 0
      Left = 5055
      Top = 0
      Width = 1680
      Height = 645
      TabIndex = 40
    End
    Begin BtnEnh LblShort
      Index = 4
      Left = 0
      Top = 615
      Width = 330
      Height = 645
      Visible = 0   'False
      TabIndex = 41
    End
    Begin BtnEnh LblShort
      Index = 5
      Left = 330
      Top = 630
      Width = 330
      Height = 645
      Visible = 0   'False
      TabIndex = 42
    End
    Begin BtnEnh LblShort
      Index = 6
      Left = 6735
      Top = 0
      Width = 1680
      Height = 645
      Visible = 0   'False
      TabIndex = 43
    End
    Begin BtnEnh LblShort
      Index = 7
      Left = 930
      Top = 630
      Width = 330
      Height = 645
      Visible = 0   'False
      TabIndex = 44
    End
    Begin Label LblShortz
      Caption = "Vr. Wise Analysis (Ctl F3)"
      Index = 7
      BackColor = &H80000005&
      ForeColor = &HFFFF&
      Left = 7845
      Top = 1020
      Width = 1800
      Height = 240
      Visible = 0   'False
      TabIndex = 29
      AutoSize = -1  'True
      Tag = "vbKeyF6"
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblShortz
      Caption = "Trial-Group (F5)"
      Index = 2
      BackColor = &H80000005&
      ForeColor = &HFFFFC0&
      Left = 2010
      Top = 1005
      Width = 1785
      Height = 285
      Visible = 0   'False
      TabIndex = 23
      AutoSize = -1  'True
      Tag = "vbKeyF6"
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblShortz
      Caption = "Trial-Ledger (F6)"
      Index = 3
      BackColor = &H80000005&
      ForeColor = &HC0FFC0&
      Left = 75
      Top = 1005
      Width = 1875
      Height = 285
      Visible = 0   'False
      TabIndex = 22
      AutoSize = -1  'True
      Tag = "vbKeyF7"
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblShortz
      Caption = "Profit/Loss (F4)"
      Index = 1
      BackColor = &H80000005&
      ForeColor = &HFFFFC0&
      Left = 3870
      Top = 1005
      Width = 1740
      Height = 285
      Visible = 0   'False
      TabIndex = 21
      AutoSize = -1  'True
      Tag = "vbKeyF9"
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblShortz
      Caption = "Balance sheet (F3)"
      Index = 0
      BackColor = &H80000005&
      ForeColor = &HFFFFC0&
      Left = 5670
      Top = 990
      Width = 2115
      Height = 285
      Visible = 0   'False
      TabIndex = 20
      AutoSize = -1  'True
      Tag = "vbKeyF6"
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblShortz
      Caption = "CashFlow (F7)"
      Index = 4
      BackColor = &H80000005&
      ForeColor = &HFFFF&
      Left = 10260
      Top = 1005
      Width = 1080
      Height = 240
      Visible = 0   'False
      TabIndex = 19
      AutoSize = -1  'True
      Tag = "vbKeyF7"
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblShortz
      Caption = "FundFlow (F8)"
      Index = 5
      BackColor = &H80000005&
      ForeColor = &HFFFF&
      Left = 10200
      Top = 735
      Width = 1080
      Height = 240
      Visible = 0   'False
      TabIndex = 18
      AutoSize = -1  'True
      Tag = "vbKeyF7"
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblShortz
      Caption = "Cash/Bank Books (F9)"
      Index = 6
      BackColor = &H80000005&
      ForeColor = &HFFFF&
      Left = 8685
      Top = 870
      Width = 1620
      Height = 240
      Visible = 0   'False
      TabIndex = 17
      AutoSize = -1  'True
      Tag = "vbKeyF7"
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin TextBox Text2
    BackColor = &HCBBE9E&
    ForeColor = &HFF0000&
    Left = 0
    Top = 1110
    Width = 7110
    Height = 240
    TabIndex = 15
    BorderStyle = 0 'None
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    BackColor = &HCBBE9E&
    ForeColor = &HFF&
    Left = -15
    Top = 1380
    Width = 7110
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSFlexGrid FGrid2
    Left = -30
    Top = 5880
    Width = 9105
    Height = 255
    TabStop = 0   'False
    TabIndex = 1
  End
End

Attribute VB_Name = "FaMagic"

Private global_88 As Integer
Private global_90 As Integer
Private mREFRESH As Integer
Private X11 As Variant

Private Sub BTNRefresh_UnknownEvent_9 'E92DB4
  'Data Table: 5167A4
  loc_E92D70: If ((Me.Frame1.Visible = &HFF) Or (Me.Frame3.Visible = &HFF)) Then
  loc_E92D73:   Exit Sub
  loc_E92D74: End If
  loc_E92D80: Me.Frame1.Visible = True
  loc_E92D98: Me.Frame1.ZOrder 0
  loc_E92DAA: Me.TXTS_DATE.SetFocus
  loc_E92DB2: Exit Sub
End Sub

Private Sub LblShort_UnknownEvent_9 '10872BC
  'Data Table: 5167A4
  Dim var_86 As Integer
  Dim var_A0 As String
  loc_108700C: On Error Goto loc_1087293
  loc_1087012: Call Proc_189_60_E84A60(Cancel)
  loc_108701A: var_86 = Cancel
  loc_1087023: If (var_86 = 0) Then
  loc_1087049:   If (CStr(Me.FGrid1.Tag) <> "BALSHEET") Then
  loc_1087057:     Set MagicStack = Nothing
  loc_1087064:     FaMagic.OpenType = "BALSHEET"
  loc_1087069:   End If
  loc_108706C: Else
  loc_1087072:   If (var_86 = 1) Then
  loc_1087098:     If (CStr(Me.FGrid1.Tag) <> "PROFLOSS") Then
  loc_10870A6:       Set MagicStack = Nothing
  loc_10870B3:       FaMagic.OpenType = "PROFLOSS"
  loc_10870B8:     End If
  loc_10870BB:   Else
  loc_10870C1:     If (var_86 = 2) Then
  loc_10870E7:       If (CStr(Me.FGrid1.Tag) <> "GROUPTRIAL") Then
  loc_10870F5:         Set MagicStack = Nothing
  loc_1087102:         FaMagic.OpenType = "GROUPTRIAL"
  loc_1087107:       End If
  loc_108710A:     Else
  loc_1087110:       If (var_86 = 3) Then
  loc_1087136:         If (CStr(Me.FGrid1.Tag) <> "LEDTRIAL") Then
  loc_1087144:           Set MagicStack = Nothing
  loc_1087151:           FaMagic.OpenType = "LEDTRIAL"
  loc_1087156:         End If
  loc_1087159:       Else
  loc_108715F:         If (var_86 = 4) Then
  loc_1087185:           If (CStr(Me.FGrid1.Tag) <> "CASHFLOW") Then
  loc_1087193:             Set MagicStack = Nothing
  loc_10871A0:             FaMagic.OpenType = "CASHFLOW"
  loc_10871A5:           End If
  loc_10871A8:         Else
  loc_10871AE:           If (var_86 = 5) Then
  loc_10871D4:             If (CStr(Me.FGrid1.Tag) <> "FUNDFLOW") Then
  loc_10871E2:               Set MagicStack = Nothing
  loc_10871EF:               FaMagic.OpenType = "FUNDFLOW"
  loc_10871F4:             End If
  loc_10871F7:           Else
  loc_10871FD:             If (var_86 = 6) Then
  loc_1087223:               If (CStr(Me.FGrid1.Tag) <> "CASHBANKSUM") Then
  loc_1087231:                 Set MagicStack = Nothing
  loc_108723E:                 FaMagic.OpenType = "CASHBANKSUM"
  loc_1087243:               End If
  loc_1087246:             Else
  loc_108724C:               If (var_86 = 7) Then
  loc_1087261:                 var_A0 = CStr(Me.FGrid1.Tag)
  loc_1087272:                 If (var_A0 <> "VRANAL") Then
  loc_1087280:                   Set MagicStack = Nothing
  loc_108728D:                   FaMagic.OpenType = "VRANAL"
  loc_1087292:                 End If
  loc_1087292:               End If
  loc_1087292:             End If
  loc_1087292:           End If
  loc_1087292:         End If
  loc_1087292:       End If
  loc_1087292:     End If
  loc_1087292:   End If
  loc_1087292: End If
  loc_1087292: Exit Sub
  loc_1087293: ' Referenced from: 108700C
  loc_1087299: Call 0.Method_arg_50 (var_A0)
  loc_10872AE: Proc_183_57_104AA84(var_A0, "LblShort_Click")
  loc_10872BA: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E22F88
  'Data Table: 5167A4
  loc_E22F6E: If (KeyCode = &HD) Then
  loc_E22F7F:   Proc_303_0_FB9B68("	")
  loc_E22F87: End If
  loc_E22F87: Exit Sub
End Sub

Private Sub Check_Click(Index As Integer) '1022610
  'Data Table: 5167A4
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_C8 As MSHFlexGrid
  loc_10223E8: On Error Goto loc_10225E7
  loc_10223F8: Set var_88 = Me.Check
  loc_10223FE: Call 0.Method_Check_Click0 (Index, var_8C)
  loc_102241C: If (CLng(var_8C.Value) = 0) Then
  loc_102242D:   Set var_88 = Me.GridSel
  loc_1022433:   Call 0.Method_Check_Click0 (Index, var_8C)
  loc_102243B:   var_8C.Enabled = True
  loc_1022451:   Set var_88 = Me.GridSel
  loc_1022457:   Call 0.Method_Check_Click0 (Index)
  loc_1022478:   If (CLng(var_8C.Rows) > 1) Then
  loc_102248E:     Set var_88 = Me.GridSel
  loc_1022494:     Call 0.Method_Check_Click0 (Index, var_8C)
  loc_102249C:     var_8C.Row = 1
  loc_10224BB:     Set var_88 = Me.GridSel
  loc_10224C1:     Call 0.Method_Check_Click0 (Index, var_8C)
  loc_10224C9:     var_8C.Col = 0
  loc_10224D5:   End If
  loc_10224D8: Else
  loc_10224E7:   Set var_88 = Me.GridSel
  loc_10224ED:   Call 0.Method_Check_Click0 (Index, var_8C)
  loc_10224F5:   var_8C.Enabled = False
  loc_102250B:   Set var_88 = Me.GridSel
  loc_1022511:   Call 0.Method_Check_Click0 (Index, var_8C)
  loc_1022532:   If (CLng(var_8C.Rows) > 1) Then
  loc_1022548:     Set var_88 = Me.GridSel
  loc_102254E:     Call 0.Method_Check_Click0 (Index, var_8C)
  loc_1022575:     Set var_88 = Me.GridSel
  loc_102257B:     Call 0.Method_Check_Click0 (Index, var_8C)
  loc_1022583:     var_8C.Col = 0
  loc_1022599:     Set var_88 = Me.GridSel
  loc_102259F:     Call 0.Method_Check_Click0 (Index, var_8C)
  loc_10225B6:     var_A0 = CVar((CLng(var_8C.Rows) - 1)) 'Long
  loc_10225C5:     Set var_C4 = Me.GridSel
  loc_10225CB:     Call 0.Method_Check_Click0 (Index, var_C8)
  loc_10225D3:     var_C8.RowSel = 0
  loc_10225E6:   End If
  loc_10225E6: End If
  loc_10225E6: Exit Sub
  loc_10225E7: ' Referenced from: 10223E8
  loc_10225ED: Call 0.Method_arg_50 (var_CC)
  loc_1022602: Proc_183_57_104AA84(var_CC, "Check_Click")
  loc_102260E: Exit Sub
End Sub

Private Sub Check_GotFocus(Index As Integer) 'E3EE4C
  'Data Table: 5167A4
  Dim var_8C As CheckBox
  loc_E3EE2F: Set var_88 = Me.Check
  loc_E3EE35: Call 0.Method_Check_GotFocus0 (Index, var_8C)
  loc_E3EE3D: var_8C.BackColor = &HFF
  loc_E3EE49: Exit Sub
End Sub

Private Sub Check_KeyDown(KeyCode As Integer, Shift As Integer) 'E21350
  'Data Table: 5167A4
  loc_E21336: If (Shift = &HD) Then
  loc_E21347:   Proc_303_0_FB9B68("	")
  loc_E2134F: End If
  loc_E2134F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E4CA78
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  loc_E4CA5B: Set var_88 = Me.GridSel
  loc_E4CA61: Call 0.Method_GridSel_UnknownEvent_00 (KeyCode, var_8C)
  loc_E4CA69: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E4CA75: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_8 'E4D298
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  loc_E4D27B: Set var_88 = Me.GridSel
  loc_E4D281: Call 0.Method_GridSel_UnknownEvent_80 (KeyCode, var_8C)
  loc_E4D289: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E4D295: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A '1109640
  'Data Table: 5167A4
  Dim var_98 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_E0 As Long
  Dim var_D0 As MSHFlexGrid
  Dim var_8C As String
  Dim var_122 As Integer
  Dim var_128 As Integer
  Dim var_86 As Integer
  loc_1109308: On Error Goto loc_1109618
  loc_1109311: If (Shift = &HD) Then
  loc_1109322:   Proc_303_0_FB9B68("	")
  loc_110932A: End If
  loc_1109334: Set var_94 = Me.GridSel
  loc_110933A: Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_110935B: If (CLng(var_98.Rows) < 1) Then
  loc_110935E:   Exit Sub
  loc_110935F: End If
  loc_1109373: Set var_94 = Me.GridSel
  loc_1109379: Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_110939B: If ((CLng(Shift) = &H20) And (CLng(var_98.Col) = 0)) Then
  loc_11093AE:   Set var_94 = Me.GridSel
  loc_11093B4:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_11093BC:   var_98.CellFontName = "WINGDINGS"
  loc_11093DA:   Set var_94 = Me.GridSel
  loc_11093E0:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_11093E8:   var_98.CellFontSize = CVar(CDbl(&HE))
  loc_11093FE:   Set var_94 = Me.GridSel
  loc_1109404:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_1109415:   var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_110942D:   Set var_CC = Me.GridSel
  loc_1109433:   Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_D0, 0)
  loc_1109446:   var_8C = CStr(var_D0.TextMatrix))
  loc_1109463:   If (var_8C = "�") Then
  loc_1109470:     Set var_94 = Me.GridSel
  loc_1109476:     Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98)
  loc_1109487:     var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_11094A5:     Set var_CC = Me.GridSel
  loc_11094AB:     Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_D0, " ", 0)
  loc_11094B3:     LateIdCallSt
  loc_11094CC:     var_122 = KeyCode
  loc_11094D5:     If (var_122 = 0) Then
  loc_11094E8:       For var_126 = 0 To CInt(UBound(global_84, 1)): var_86 = var_126 'Integer
  loc_1109504:         Set var_94 = Me.GridSel
  loc_110950A:         Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98, CLng(global_84(CLng(var_86))), 0, var_122)
  loc_1109526:         If (var_D0 = CLng(var_98.Row)) Then
  loc_1109535:           global_84(CLng(var_86)) = 0
  loc_1109536:         End If
  loc_1109539:       Next var_126 'Integer
  loc_110953E:     End If
  loc_1109541:   Else
  loc_110954B:     Set var_94 = Me.GridSel
  loc_1109551:     Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode)
  loc_1109562:     var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_1109567:     var_E0 = 0
  loc_1109580:     Set var_CC = Me.GridSel
  loc_1109586:     Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_D0, "�")
  loc_110958E:     LateIdCallSt
  loc_11095A7:     var_128 = KeyCode
  loc_11095B0:     If (var_128 = 0) Then
  loc_11095C4:       var_86 = CInt((UBound(global_84, 1) + 1))
  loc_11095D6:       ReDim Preserve global_84(0 To CLng(var_86))
  loc_11095EA:       Set var_94 = Me.GridSel
  loc_11095F0:       Call 0.Method_GridSel_UnknownEvent_A0 (KeyCode, var_98, var_86, var_128)
  loc_110960C:       global_84(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1109617:     End If
  loc_1109617:   End If
  loc_1109617: End If
  loc_1109617: Exit Sub
  loc_1109618: ' Referenced from: 1109308
  loc_110961E: Call 0.Method_arg_50 (var_8C, var_D0, var_E0)
  loc_1109633: Proc_183_57_104AA84(var_8C, "GridSel_KeyDown")
  loc_110963F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_C 'FBF324
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_A4 As MSHFlexGrid
  Dim Me As Recordset15
  Dim Shift As Integer
  Dim var_D4 As String
  Dim var_88 As TextBox
  loc_FBF19C: On Error Goto loc_FBF2F9
  loc_FBF1A9: Set var_88 = Me.GridSel
  loc_FBF1AF: Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode)
  loc_FBF1D0: Set var_A0 = Me.GridSel
  loc_FBF1D6: Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_A4)
  loc_FBF200: If ((CLng(var_8C.Col) = 0) Or (CLng(var_A4.Row) = 0)) Then
  loc_FBF203:   Exit Sub
  loc_FBF204: End If
  loc_FBF210: If (KeyCode = 0) Then
  loc_FBF224:   Set var_88 = Me.GridSel
  loc_FBF22A:   Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_8C)
  loc_FBF239:   Set var_A0 = Me.GridSel
  loc_FBF23F:   Call 0.Method_GridSel_UnknownEvent_C0 (KeyCode, var_A4)
  loc_FBF247:   var_9C = var_A4.Col
  loc_FBF281:   var_E8 = "15595518"
  loc_FBF28A:   var_E4 = "16777152"
  loc_FBF2B2:   Proc_183_11_113C750(Me.TxtSearch1, var_8C, global_80, Shift, Me.Fields.Item(CVar(CLng(var_9C))).Name)
  loc_FBF2D8:   Shift = 0
  loc_FBF2DB: End If
  loc_FBF2E0: var_D4 = CStr(KeyCode)
  loc_FBF2ED: Me.TxtSearch.Tag = var_D4
  loc_FBF2F8: Exit Sub
  loc_FBF2F9: ' Referenced from: FBF19C
  loc_FBF2FF: Call 0.Method_arg_50 (var_D4, Shift, var_E4, var_E8)
  loc_FBF314: Proc_183_57_104AA84(var_D4, "GridSel_KeyPress", var_9C)
  loc_FBF320: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E83368
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  loc_E8330A: Set var_88 = Me.GridSel
  loc_E83310: Call 0.Method_GridSel_UnknownEvent_E0 (KeyCode)
  loc_E83331: If (CLng(var_8C.Col) <> 0) Then
  loc_E83334:   Exit Sub
  loc_E83335: End If
  loc_E8333F: Set var_88 = Me.GridSel
  loc_E83345: Call 0.Method_GridSel_UnknownEvent_E0 (KeyCode, var_8C)
  loc_E8335A: global_88 = CInt(CLng(var_8C.Row))
  loc_E83367: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '114B368
  'Data Table: 5167A4
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_DC As Long
  Dim var_CC As MSHFlexGrid
  Dim var_100 As String
  Dim var_122 As Integer
  Dim var_128 As Integer
  Dim var_86 As Integer
  loc_114AFD0: On Error Goto loc_114B33D
  loc_114AFDD: Set var_8C = Me.GridSel
  loc_114AFE3: Call 0.Method_GridSel_UnknownEvent_100 (KeyCode)
  loc_114B00E: If ((CLng(var_90.Col) <> 0) Or (global_88 = 0)) Then
  loc_114B011:   Exit Sub
  loc_114B012: End If
  loc_114B01C: Set var_8C = Me.GridSel
  loc_114B022: Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_114B037: global_90 = CInt(CLng(var_90.RowSel))
  loc_114B053: For var_A4 = global_88 To global_90: var_88 = var_A4 'Integer
  loc_114B06C:   Set var_8C = Me.GridSel
  loc_114B072:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, CVar(CLng(var_88)))
  loc_114B07A:   var_90.Row = global_88
  loc_114B099:   Set var_8C = Me.GridSel
  loc_114B09F:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, 0)
  loc_114B0A7:   var_90.Col = global_90
  loc_114B0C3:   Set var_8C = Me.GridSel
  loc_114B0C9:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_114B0D1:   var_90.CellFontName = "WINGDINGS"
  loc_114B0EF:   Set var_8C = Me.GridSel
  loc_114B0F5:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_114B0FD:   var_90.CellFontSize = CVar(CDbl(&HE))
  loc_114B113:   Set var_8C = Me.GridSel
  loc_114B119:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_114B12A:   var_B4 = CVar(CLng(var_90.Row)) 'Long
  loc_114B142:   Set var_C8 = Me.GridSel
  loc_114B148:   Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_CC, 0)
  loc_114B15B:   var_100 = CStr(var_CC.TextMatrix))
  loc_114B178:   If (var_100 = "�") Then
  loc_114B185:     Set var_8C = Me.GridSel
  loc_114B18B:     Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90)
  loc_114B19C:     var_B4 = CVar(CLng(var_90.Row)) 'Long
  loc_114B1BA:     Set var_C8 = Me.GridSel
  loc_114B1C0:     Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_CC, " ", 0)
  loc_114B1C8:     LateIdCallSt
  loc_114B1E1:     var_122 = KeyCode
  loc_114B1EA:     If (var_122 = 0) Then
  loc_114B1FD:       For var_126 = 0 To CInt(UBound(global_84, 1)): var_86 = var_126 'Integer
  loc_114B219:         Set var_8C = Me.GridSel
  loc_114B21F:         Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, CLng(global_84(CLng(var_86))), 0, var_122)
  loc_114B23B:         If (var_CC = CLng(var_90.Row)) Then
  loc_114B24A:           global_84(CLng(var_86)) = 0
  loc_114B24B:         End If
  loc_114B24E:       Next var_126 'Integer
  loc_114B253:     End If
  loc_114B256:   Else
  loc_114B260:     Set var_8C = Me.GridSel
  loc_114B266:     Call 0.Method_GridSel_UnknownEvent_100 (KeyCode)
  loc_114B277:     var_B4 = CVar(CLng(var_90.Row)) 'Long
  loc_114B27C:     var_DC = 0
  loc_114B295:     Set var_C8 = Me.GridSel
  loc_114B29B:     Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_CC, "�")
  loc_114B2A3:     LateIdCallSt
  loc_114B2BC:     var_128 = KeyCode
  loc_114B2C5:     If (var_128 = 0) Then
  loc_114B2D9:       var_86 = CInt((UBound(global_84, 1) + 1))
  loc_114B2EB:       ReDim Preserve global_84(0 To CLng(var_86))
  loc_114B2FF:       Set var_8C = Me.GridSel
  loc_114B305:       Call 0.Method_GridSel_UnknownEvent_100 (KeyCode, var_90, var_86, var_128)
  loc_114B321:       global_84(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_114B32C:     End If
  loc_114B32C:   End If
  loc_114B32F: Next var_A4 'Integer
  loc_114B339: global_88 = 0
  loc_114B33C: Exit Sub
  loc_114B33D: ' Referenced from: 114AFD0
  loc_114B343: Call 0.Method_arg_50 (var_100)
  loc_114B358: Proc_183_57_104AA84(var_100, "GridSel_MouseUp")
  loc_114B364: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_13 'E4C8D8
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  loc_E4C8BB: Set var_88 = Me.GridSel
  loc_E4C8C1: Call 0.Method_GridSel_UnknownEvent_130 (KeyCode, var_8C)
  loc_E4C8C9: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E4C8D5: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'E4CB48
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  loc_E4CB2B: Set var_88 = Me.GridSel
  loc_E4CB31: Call 0.Method_GridSel_UnknownEvent_140 (KeyCode, var_8C)
  loc_E4CB39: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E4CB45: Exit Sub
  loc_E4CB46: CExtInstUnk
End Sub

Private Sub TXTS_DATE_KeyDown(KeyCode As Integer, Shift As Integer) 'E21254
  'Data Table: 5167A4
  loc_E2123A: If (KeyCode = &HD) Then
  loc_E2124B:   Proc_303_0_FB9B68("	")
  loc_E21253: End If
  loc_E21253: Exit Sub
End Sub

Private Sub TXTS_DATE_Validate(Cancel As Boolean) 'E564C0
  'Data Table: 5167A4
  loc_E5649E: Call 0.Method_arg_184 (Me.TXTS_DATE)
  loc_E564AA: Set var_90 = Me.TXTS_DATE
  loc_E564B0: Me.TXTS_DATE.Text = var_8C
  loc_E564BF: Exit Sub
End Sub

Private Sub BTNSITEOK_Click() 'E02468
  'Data Table: 5167A4
  loc_E0245C: Call Proc_189_64_1291848()
  loc_E02461: Call btnok_UnknownEvent_9()
  loc_E02466: Exit Sub
End Sub

Private Sub BtnSite_Click() 'E81178
  'Data Table: 5167A4
  loc_E81144: If ((Me.Frame1.Visible = &HFF) Or (Me.Frame3.Visible = &HFF)) Then
  loc_E81147:   Exit Sub
  loc_E81148: End If
  loc_E81154: Me.Frame3.Visible = True
  loc_E8116C: Me.Frame3.ZOrder 0
  loc_E81174: Exit Sub
loc_E81175: End Sub
End Sub

Private Sub TXTE_DATE_KeyDown(KeyCode As Integer, Shift As Integer) 'E21200
  'Data Table: 5167A4
  loc_E211E6: If (KeyCode = &HD) Then
  loc_E211F7:   Proc_303_0_FB9B68("	")
  loc_E211FF: End If
  loc_E211FF: Exit Sub
End Sub

Private Sub TXTE_DATE_Validate(Cancel As Boolean) 'E565A8
  'Data Table: 5167A4
  loc_E56586: Call 0.Method_arg_184 (Me.TXTE_DATE)
  loc_E56592: Set var_90 = Me.TXTE_DATE
  loc_E56598: Me.TXTE_DATE.Text = var_8C
  loc_E565A7: Exit Sub
End Sub

Private Sub btnok_UnknownEvent_9 '13C8FE0
  'Data Table: 5167A4
  Dim Me As Recordset15
  Dim var_88 As Variant
  Dim var_A4 As String
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim var_8C As String
  loc_13C8658: On Error Goto loc_13C8FB5
  loc_13C8661: Me.MoveLast
  loc_13C86A3: If (CDate(Me.TXTE_DATE.Text) < CDate(Me.TXTS_DATE.Text)) Then
  loc_13C86BF:   MsgBox("To Date Can't be less then From Date", 0, var_D4, var_F4, var_114)
  loc_13C86D9:   Me.TXTE_DATE.SetFocus
  loc_13C86E1:   Exit Sub
  loc_13C86E2: End If
  loc_13C86EE: Me.Frame1.Visible = False
  loc_13C86FA: var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_13C870B: Me.Collect = "FS_DATE"
  loc_13C8717: var_B4 = CVar(Me.TXTE_DATE) 'Address
  loc_13C8728: Me.Collect = "FE_DATE"
  loc_13C8745: var_C4 = CVar(Me.Check1.Value) 'Integer
  loc_13C8755: Me.Collect = "Check1"
  loc_13C8772: var_C4 = CVar(Me.Check2.Value) 'Integer
  loc_13C8782: Me.Collect = "Check2"
  loc_13C879F: var_C4 = CVar(Me.Check3.Value) 'Integer
  loc_13C87AF: Me.Collect = "Check3"
  loc_13C87CC: var_C4 = CVar(Me.Check4.Value) 'Integer
  loc_13C87DC: Me.Collect = "Check4"
  loc_13C87F9: var_C4 = CVar(Me.Check5.Value) 'Integer
  loc_13C8809: Me.Collect = "Check5"
  loc_13C8826: var_C4 = CVar(Me.Check6.Value) 'Integer
  loc_13C882A: var_A4 = "Check6"
  loc_13C8836: Me.Collect = var_A4
  loc_13C884C: Me.Update var_A4, var_C4
  loc_13C888D: var_128 = Ucase(Trim(CVar(Me.Fields.Item("TypeName")))) 'Variant
  loc_13C88A6: If (var_128 = "VRANAL") Then
  loc_13C88B6:   Me.Text1.Text = vbNullString
  loc_13C88C8:   Call Proc_189_77_F0CEFC(0, 0, var_C4, var_C4, var_C4)
  loc_13C88D0: Else
  loc_13C88DB:   If (var_128 = "VRANALPER") Then
  loc_13C8919:     Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13C895D:     var_C4 = "Name"
  loc_13C899B:     Call Proc_189_78_F079D4(CStr(Me.Fields.Item("LedCode").Value), CStr(Me.Fields.Item(var_C4).Value), 0, 0, var_C4)
  loc_13C89BC:   Else
  loc_13C89C7:     If (var_128 = "VRREG") Then
  loc_13C8A05:       Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13C8A49:       var_C4 = "Name"
  loc_13C8AA1:       Call Proc_189_79_F0D3AC(CStr(Me.Fields.Item("LedCode").Value), CStr(Me.Fields.Item(var_C4).Value), 0, 0, 0)
  loc_13C8AC2:     Else
  loc_13C8ACD:       If (var_128 = "PROFLOSS") Then
  loc_13C8ADD:         Me.Text1.Text = vbNullString
  loc_13C8AEF:         Call Proc_189_66_F0DBE0(0, 0, 0, var_C4)
  loc_13C8AF7:       Else
  loc_13C8B02:         If (var_128 = "BALSHEET") Then
  loc_13C8B12:           Me.Text1.Text = vbNullString
  loc_13C8B24:           Call Proc_189_65_F0D85C(0, 0, var_C4)
  loc_13C8B2C:         Else
  loc_13C8B37:           If (var_128 = "SUBTRIAL") Then
  loc_13C8B75:             Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13C8BC5:             Call Proc_189_69_F0DF64(CStr(Me.Fields.Item("GroupCode").Value), 0, 0)
  loc_13C8BDA:           Else
  loc_13C8BE5:             If (var_128 = "LEDGER") Then
  loc_13C8C23:               Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13C8C80:               var_94 = Me.TXTE_DATE.Text
  loc_13C8CA9:               Call Proc_189_74_F186B8(CStr(Me.Fields.Item("LedCode").Value), 0, 0, CDate(Me.TXTS_DATE.Text))
  loc_13C8CC8:             Else
  loc_13C8CD3:               If (var_128 = "CASHBOOK") Then
  loc_13C8D11:                 Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13C8D6E:                 var_94 = Me.TXTE_DATE.Text
  loc_13C8D97:                 Call Proc_189_75_F07AFC(CStr(Me.Fields.Item("LedCode").Value), 0, 0, CDate(Me.TXTS_DATE.Text))
  loc_13C8DB6:               Else
  loc_13C8DC1:                 If (var_128 = "GROUPTRIAL") Then
  loc_13C8DD1:                   Me.Text1.Text = vbNullString
  loc_13C8DE3:                   Call Proc_189_67_F0D028(0, 0, CDate(var_94))
  loc_13C8DEB:                 Else
  loc_13C8DF6:                   If (var_128 = "LEDTRIAL") Then
  loc_13C8E06:                     Me.Text1.Text = vbNullString
  loc_13C8E18:                     Call Proc_189_68_F0E090(0, 0, CDate(var_94))
  loc_13C8E20:                   Else
  loc_13C8E2B:                     If (var_128 = "MONTHSUM") Then
  loc_13C8E69:                       Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13C8EB9:                       Call Proc_189_76_F05C28(CStr(Me.Fields.Item("LedCode").Value), 0, 0)
  loc_13C8ECE:                     Else
  loc_13C8ED9:                       If (var_128 = "CASHBANKSUM") Then
  loc_13C8F07:                         var_8C = Proc_183_2_E5A304(CVar(Me.Fields.Item("Name")), CVar(Me.Fields.Item("Name")))
  loc_13C8F14:                         Me.Text1.Text = var_8C
  loc_13C8F30:                         Call Proc_189_70_F0D988(0, 0)
  loc_13C8F38:                       Else
  loc_13C8F43:                         If (var_128 = "CASHFLOW") Then
  loc_13C8F53:                           Me.Text1.Text = vbNullString
  loc_13C8F65:                           Call Proc_189_71_F0D154(0, 0)
  loc_13C8F6D:                         Else
  loc_13C8F78:                           If (var_128 = "FUNDFLOW") Then
  loc_13C8F88:                             Me.Text1.Text = vbNullString
  loc_13C8F9A:                             Call Proc_189_72_F0DAB4(0, 0)
  loc_13C8F9F:                           End If
  loc_13C8F9F:                         End If
  loc_13C8F9F:                       End If
  loc_13C8F9F:                     End If
  loc_13C8F9F:                   End If
  loc_13C8F9F:                 End If
  loc_13C8F9F:               End If
  loc_13C8F9F:             End If
  loc_13C8F9F:           End If
  loc_13C8F9F:         End If
  loc_13C8F9F:       End If
  loc_13C8F9F:     End If
  loc_13C8F9F:   End If
  loc_13C8F9F: End If
  loc_13C8FA3: Set var_88 = Me.FGrid1
  loc_13C8FB4: Exit Sub
  loc_13C8FB5: ' Referenced from: 13C8658
  loc_13C8FBB: Call 0.Method_arg_50 (var_8C, FGrid1.DispID_8001)
  loc_13C8FD0: Proc_183_57_104AA84(var_8C, "btnok_Click")
  loc_13C8FDC: Exit Sub
End Sub

Private Sub Form_Load() '13185C4
  'Data Table: 5167A4
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_B4 As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_CC As Variant
  Dim Me As Recordset15
  Dim var_100 As CheckBox
  Dim unk_5167C7 As Connection15
  loc_1317E5C: On Error Goto loc_131859B
  loc_1317E66: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1317E7E: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1317E94: Me.Text1.BackColor = CLng(MemVar_1F921B4)
  loc_1317EAA: Me.Text2.BackColor = CLng(MemVar_1F921B4)
  loc_1317EC0: Me.Frame2.BackColor = CLng(MemVar_1F921B4)
  loc_1317EDA: Me.TXTS_DATE.Text = CStr(MemVar_1F920F4)
  loc_1317EF7: Me.TXTE_DATE.Text = CStr(MemVar_1F920EC)
  loc_1317F0F: Me.Text1.Text = vbNullString
  loc_1317F25: Me.Frame2.Left = CDbl(0)
  loc_1317F3B: Me.Frame2.Top = CDbl(0)
  loc_1317F79: Me.Text2.Top = (Me.Frame2.Top + Me.Frame2.Height)
  loc_1317FBD: Me.Text1.Top = (Me.Text2.Top + Me.Text2.Height)
  loc_1317FDD: Me.FGrid1.Left = CVar(CDbl(0))
  loc_1318014: var_94 = CVar(((Me.Text1.Top + Me.Text1.Height) + CDbl(&H19))) 'Single
  loc_1318023: Me.FGrid1.Top = CVar(CDbl(0))
  loc_1318044: Me.FGrid1.Width = CVar(CDbl(11850))
  loc_131805F: Me.FGrid1.Height = CVar(CDbl(5400))
  loc_1318079: Me.FGrid2.Left = CVar(CDbl(0))
  loc_131808B: var_DC = Me.FGrid1.Height
  loc_13180AD: var_94 = CVar((CDbl(Me.FGrid1.Top) + CDbl(var_DC))) 'Single
  loc_13180BC: Me.FGrid2.Top = CVar(CDbl(0))
  loc_13180E4: Me.FGrid2.Width = CVar(CDbl(11850))
  loc_131810A: Me.Frame2.Width = CDbl(Me.FGrid2.Width)
  loc_1318120: Call 0.Method_arg_A4 (CInt(&HB))
  loc_131812C: Call 0.Method_arg_A4 (CInt(0))
  loc_131813D: Me.Frame1.Visible = False
  loc_1318154: Me.Frame1.Left = CDbl(1500)
  loc_131816B: Me.Frame1.Top = CDbl(500)
  loc_131817F: Me.Frame3.Visible = False
  loc_1318196: Me.Frame3.Left = CDbl(1500)
  loc_13181AD: Me.Frame3.Top = CDbl(500)
  loc_13181C1: Me.Frame3.Visible = False
  loc_13181D5: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_13181E6: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_13181F7: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_1318208: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_1318219: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_131822A: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_131823B: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_131824C: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_131825D: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_131826E: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_1318288: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_1318296: Set var_A8 = MemVar_1F92044
  loc_13182A5: Call 0.Method_Form_Load8 (var_A8)
  loc_13182BB: Me.Recordset20.Clone
  loc_13182C6: Set var_B4 = var_A8
  loc_13182D5: Call 0.Method_arg_50 (var_B4, -1)
  loc_13182E7: global_96 = MemVar_1F92070
  loc_1318307: Me.Recordset15.CursorLocation = 3
  loc_131832F: Me.Open "SELECT '' as O,SITE_DESC AS Site,SITE_CODE FROM SITE ORDER BY SITE_dESC", CVar(MemVar_1F921DC), 3
  loc_131833D: CVarUnk
  loc_1318342: VerifyVarObj
  loc_131834D: Set var_A8 = Me.GridSel
  loc_1318353: Call 0.Method_Form_Load0 (0, var_B4, New, 1)
  loc_131835B: LateIdStAd
  loc_131837D: ReDim Preserve global_84(0 To 0)
  loc_1318399: Set var_A8 = Me.GridSel
  loc_131839F: Call 0.Method_Form_Load0 (0, var_B4, CVar(CDbl(5200)), var_B4)
  loc_13183A7: var_B4.Width = -1
  loc_13183B3: var_94 = 0
  loc_13183CE: Set var_A8 = Me.GridSel
  loc_13183D4: Call 0.Method_Form_Load0 (0, var_B4, &H3E8)
  loc_13183DC: LateIdCallSt
  loc_1318406: Set var_A8 = Me.GridSel
  loc_131840C: Call 0.Method_Form_Load0 (0, var_B4, 0, 2)
  loc_1318414: LateIdCallSt
  loc_1318423: var_94 = 1
  loc_131843E: Set var_A8 = Me.GridSel
  loc_1318444: Call 0.Method_Form_Load0 (0, var_B4, &HBB8, var_94, var_B4)
  loc_131844C: LateIdCallSt
  loc_1318468: global_84(0) = 0
  loc_1318472: Set var_A8 = Me.GridSel
  loc_1318478: Call 0.Method_Form_Load0 (0, var_B4, var_B4, var_B4)
  loc_1318497: Set var_BC = Me.Check
  loc_131849D: Call 0.Method_Form_Load0 (0, var_100, (CDbl(var_B4.Top) + CDbl(&H14)))
  loc_13184A5: var_100.Top = var_94
  loc_13184C1: Set var_A8 = Me.GridSel
  loc_13184C7: Call 0.Method_Form_Load0 (0, var_B4)
  loc_13184CF: var_CC = var_B4.Left
  loc_13184E6: Set var_BC = Me.Check
  loc_13184EC: Call 0.Method_Form_Load0 (0, var_100, (CDbl(var_CC) + CDbl(&H28)))
  loc_13184F4: var_100.Left = var_A8
  loc_131851B: var_AC = "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078
  loc_131852B: unk_5167C7.Execute var_AC & "'", var_CC, -1
  loc_131853C: Set RstEnviro = var_A8
  loc_1318568: If (Me.RecordCount <= 0) Then
  loc_1318584:   MsgBox("Parameter Not Set", 0, var_DC, var_114, var_124)
  loc_1318594:   Exit Sub
  loc_1318595: End If
  loc_1318595: Proc_7_6_DFC4EC(var_A8)
  loc_131859A: Exit Sub
  loc_131859B: ' Referenced from: 1317E5C
  loc_13185A1: Call 0.Method_arg_50 (var_AC)
  loc_13185B6: Proc_183_57_104AA84(var_AC, "Form_Load")
  loc_13185C2: Exit Sub
End Sub

Private Sub Form_Resize() 'F7BCD4
  'Data Table: 5167A4
  Dim var_98 As Variant
  loc_F7BB8C: On Error Resume Next
  loc_F7BB97: Call 0.Method_arg_100 (var_88)
  loc_F7BBA4: var_98 = CVar((var_88 - CDbl(250))) 'Single
  loc_F7BBB3: Me.FGrid1.Width = var_98
  loc_F7BBE7: Call 0.Method_arg_108 (var_88)
  loc_F7BBFC: var_98 = CVar(((var_88 - (Me.Frame2.Height + Me.Text1.Height)) - CDbl(1000))) 'Single
  loc_F7BC0B: Me.FGrid1.Height = var_98
  loc_F7BC4B: var_98 = CVar(((CDbl(Me.FGrid1.Top) + CDbl(Me.FGrid1.Height)) + CDbl(&H19))) 'Single
  loc_F7BC5A: Me.FGrid2.Top = var_98
  loc_F7BC93: Me.FGrid2.Width = CVar(CDbl(Me.FGrid1.Width))
  loc_F7BCC2: Me.Frame2.Width = CDbl(Me.FGrid1.Width)
  loc_F7BCD3: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5EDB8
  'Data Table: 5167A4
  loc_E5ED77: Set MagicStack = Nothing
  loc_E5ED89: Set global_92 = Nothing
  loc_E5ED9B: Set RstEnviro = Nothing
  loc_E5EDAD: Set global_80 = Nothing
  loc_E5EDB4: Exit Sub
End Sub

Private Sub Form_Activate() '13DF0D8
  'Data Table: 5167A4
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_A0 As String
  Dim var_B4 As Variant
  Dim var_B8 As String
  Dim var_CC As Variant
  Dim Me As Variant
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim unk_5167C7 As Connection15
  loc_13DE708: On Error Goto loc_13DF0AF
  loc_13DE72F: var_B4 = Me.FGrid1.Tag
  loc_13DE74A: var_CC = Me.FGrid1.Tag
  loc_13DE776: If (((CStr(Me.FGrid1.Tag) = "VOUCHER") Or (CStr(var_B4) = "VOUCHERREG")) Or (CStr(var_CC) = "OPDIFF")) Then
  loc_13DE790:   If (Me.RecordCount > 1) Then
  loc_13DE799:     Me.MoveLast
  loc_13DE7D0:     If Not(IsNull(CVar(Me.Fields.Item("FS_DATE")))) Then
  loc_13DE80E:       Me.TXTS_DATE.Text = CStr(Me.Fields.Item("FS_DATE").Value)
  loc_13DE822:     End If
  loc_13DE854:     If Not(IsNull(CVar(Me.Fields.Item("FE_DATE")))) Then
  loc_13DE892:       Me.TXTE_DATE.Text = CStr(Me.Fields.Item("FE_DATE").Value)
  loc_13DE8A6:     End If
  loc_13DE8D8:     If Not(IsNull(CVar(Me.Fields.Item("Check1")))) Then
  loc_13DE913:       Me.Check1.Value = CInt(Me.Fields.Item("Check1").Value)
  loc_13DE927:     Else
  loc_13DE933:       Me.Check1.Value = 1
  loc_13DE93B:     End If
  loc_13DE96D:     If Not(IsNull(CVar(Me.Fields.Item("Check2")))) Then
  loc_13DE9A8:       Me.Check2.Value = CInt(Me.Fields.Item("Check2").Value)
  loc_13DE9BC:     Else
  loc_13DE9C8:       Me.Check2.Value = 0
  loc_13DE9D0:     End If
  loc_13DEA02:     If Not(IsNull(CVar(Me.Fields.Item("Check3")))) Then
  loc_13DEA3D:       Me.Check3.Value = CInt(Me.Fields.Item("Check3").Value)
  loc_13DEA51:     Else
  loc_13DEA5D:       Me.Check3.Value = 0
  loc_13DEA65:     End If
  loc_13DEA97:     If Not(IsNull(CVar(Me.Fields.Item("Check4")))) Then
  loc_13DEAD2:       Me.Check4.Value = CInt(Me.Fields.Item("Check4").Value)
  loc_13DEAE6:     Else
  loc_13DEAF2:       Me.Check4.Value = 0
  loc_13DEAFA:     End If
  loc_13DEB2C:     If Not(IsNull(CVar(Me.Fields.Item("Check5")))) Then
  loc_13DEB67:       Me.Check5.Value = CInt(Me.Fields.Item("Check5").Value)
  loc_13DEB7B:     Else
  loc_13DEB87:       Me.Check5.Value = 0
  loc_13DEB8F:     End If
  loc_13DEBC1:     If Not(IsNull(CVar(Me.Fields.Item("Check6")))) Then
  loc_13DEBFC:       Me.Check6.Value = CInt(Me.Fields.Item("Check6").Value)
  loc_13DEC10:     Else
  loc_13DEC1C:       Me.Check6.Value = 0
  loc_13DEC24:     End If
  loc_13DEC46:     var_9C = CVar(Me.Fields.Item("FRow")) 'Address
  loc_13DEC4D:     Proc_183_3_E7D1C8(var_B4)
  loc_13DEC56:     var_86 = CInt(var_B4)
  loc_13DEC8C:     Proc_183_3_E7D1C8(var_B4, CVar(Me.Fields.Item("Fcol")))
  loc_13DEC95:     var_88 = CInt(var_B4)
  loc_13DECAD:     Me.Delete
  loc_13DECD5:     If (CStr(Me.FGrid1.Tag) = "VOUCHER") Then
  loc_13DECEF:       If (Me.RecordCount > 0) Then
  loc_13DECF8:         Me.MoveLast
  loc_13DED35:         Me.Text1.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("Name")), 1, var_88)
  loc_13DED47:         Call Proc_189_64_1291848(var_86)
  loc_13DED83:         var_A0 = Me.TXTS_DATE.Text
  loc_13DED95:         var_B8 = Me.TXTE_DATE.Text
  loc_13DEDBA:         Call Proc_189_74_F186B8(CStr(Me.Fields.Item("LedCode").Value), var_86, var_88)
  loc_13DEDD6:       End If
  loc_13DEDD9:     Else
  loc_13DEDFC:       If (CStr(Me.FGrid1.Tag) = "VOUCHERREG") Then
  loc_13DEE16:         If (Me.RecordCount > 0) Then
  loc_13DEE1F:           Me.MoveLast
  loc_13DEE5C:           Me.Text1.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("Name")), CDate(var_A0))
  loc_13DEE6E:           Call Proc_189_64_1291848(CDate(var_B8))
  loc_13DEEC2:           var_B4 = Me.Fields.Item("Name").Value
  loc_13DEED4:           var_A0 = Me.TXTS_DATE.Text
  loc_13DEEE6:           var_B8 = Me.TXTE_DATE.Text
  loc_13DEF13:           Call Proc_189_79_F0D3AC(CStr(Me.Fields.Item("LedCode").Value), CStr(var_B4), var_86, var_88)
  loc_13DEF39:         End If
  loc_13DEF3C:       Else
  loc_13DEF5F:         If (CStr(Me.FGrid1.Tag) = "OPDIFF") Then
  loc_13DEF79:           If (Me.RecordCount > 0) Then
  loc_13DEF82:             Me.MoveLast
  loc_13DEFA9:             var_9C = CVar(Me.Fields.Item("Name")) 'Address
  loc_13DEFBF:             Me.Text1.Text = Proc_183_2_E5A304(var_9C, CDate(var_A0))
  loc_13DEFD1:             Call Proc_189_64_1291848(CDate(var_B8))
  loc_13DEFDD:             Set var_8C = Me.TXTS_DATE
  loc_13DEFE3:             var_A0 = var_8C.Text
  loc_13DEFF7:             Call Proc_189_73_F0E1BC(var_86, var_88)
  loc_13DF002:           End If
  loc_13DF002:         End If
  loc_13DF002:       End If
  loc_13DF002:     End If
  loc_13DF008:     MemVar_1F92070 = global_96
  loc_13DF00C:   End If
  loc_13DF00C: End If
  loc_13DF015: If (mREFRESH = &HFF) Then
  loc_13DF02C:   var_A0 = "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078
  loc_13DF03C:   unk_5167C7.Execute var_A0 & "'", var_9C, -1
  loc_13DF04D:   Set RstEnviro = var_8C
  loc_13DF079:   If (Me.RecordCount <= 0) Then
  loc_13DF095:     MsgBox("Parameter Not Set", 0, var_B4, var_CC, var_144)
  loc_13DF0A5:     Exit Sub
  loc_13DF0A6:   End If
  loc_13DF0AB:   mREFRESH = 0
  loc_13DF0AE: End If
  loc_13DF0AE: Exit Sub
  loc_13DF0AF: ' Referenced from: 13DE708
  loc_13DF0B5: Call 0.Method_arg_50 (var_A0, mREFRESH, var_8C)
  loc_13DF0CA: Proc_183_57_104AA84(var_A0, "Form_Activate")
  loc_13DF0D6: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E01EC8
  'Data Table: 5167A4
  loc_E01EC1: mREFRESH = &HFF
  loc_E01EC4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'FB5FD8
  'Data Table: 5167A4
  Dim var_88 As Frame
  Dim var_8C As TextBox
  Dim var_96 As Integer
  loc_FB5E2C: On Error Resume Next
  loc_FB5E37: Call 0.Method_arg_1E8 (var_88)
  loc_FB5E49: Call 0.Method_arg_1E8 (var_8C)
  loc_FB5E5D: If (TypeOf var_88 Is arg_B Or TypeOf var_8C Is Shift) Then
  loc_FB5E9A:   If ((Me.Frame1.Visible = 0) And (Me.TxtSearch.Visible = 0)) Then
  loc_FB5EA5:     If (KeyCode = &HD) Then
  loc_FB5EB8:       Proc_303_0_FB9B68("	")
  loc_FB5EC0:     End If
  loc_FB5EC0:   End If
  loc_FB5EC0: End If
  loc_FB5ECA: If (Shift = 0) Then
  loc_FB5ED2:   var_96 = KeyCode
  loc_FB5EDD:   If (var_96 = &H72) Then
  loc_FB5EE7:     Call LblShort_UnknownEvent_9()
  loc_FB5EEF:   Else
  loc_FB5EF7:     If (var_96 = &H73) Then
  loc_FB5F01:       Call LblShort_UnknownEvent_9()
  loc_FB5F09:     Else
  loc_FB5F11:       If (var_96 = &H74) Then
  loc_FB5F1B:         Call LblShort_UnknownEvent_9()
  loc_FB5F23:       Else
  loc_FB5F2B:         If (var_96 = &H75) Then
  loc_FB5F35:           Call LblShort_UnknownEvent_9()
  loc_FB5F3D:         Else
  loc_FB5F45:           If (var_96 = &H76) Then
  loc_FB5F4F:             Call LblShort_UnknownEvent_9()
  loc_FB5F57:           Else
  loc_FB5F5F:             If (var_96 = &H77) Then
  loc_FB5F69:               Call LblShort_UnknownEvent_9()
  loc_FB5F71:             Else
  loc_FB5F79:               If (var_96 = &H78) Then
  loc_FB5F83:                 Call LblShort_UnknownEvent_9()
  loc_FB5F8B:               Else
  loc_FB5F93:                 If (var_96 = &H79) Then
  loc_FB5F9D:                   Call Proc_189_61_E1948C(0, 6, 5, 4, 3)
  loc_FB5FA2:                 End If
  loc_FB5FA2:               End If
  loc_FB5FA2:             End If
  loc_FB5FA2:           End If
  loc_FB5FA2:         End If
  loc_FB5FA2:       End If
  loc_FB5FA2:     End If
  loc_FB5FA2:   End If
  loc_FB5FA4: End If
  loc_FB5FAE: If (Shift = 2) Then
  loc_FB5FC1:   If (KeyCode = &H72) Then
  loc_FB5FCB:     Call LblShort_UnknownEvent_9()
  loc_FB5FD0:   End If
  loc_FB5FD2: End If
  loc_FB5FD6: Exit Sub
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '14977FC
  'Data Table: 5167A4
  Dim var_8C As Variant
  Dim KeyAscii As Integer
  Dim Me As Recordset15
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_CC As String
  Dim var_C8 As Variant
  loc_1496B84: On Error Goto loc_14977D1
  loc_1496B8D: If (KeyAscii = &H1B) Then
  loc_1496BAB:   If (Me.Frame1.Visible = &HFF) Then
  loc_1496BBA:     Me.Frame1.Visible = False
  loc_1496BC4:     KeyAscii = 0
  loc_1496BC7:     Exit Sub
  loc_1496BC8:   End If
  loc_1496BDF:   If (Me.RecordCount = 1) Then
  loc_1496BE2:     Exit Sub
  loc_1496BE3:   End If
  loc_1496BFA:   If (Me.RecordCount > 1) Then
  loc_1496C03:     Me.MoveLast
  loc_1496C31:     Proc_183_3_E7D1C8(var_C8, CVar(Me.Fields.Item("FRow")))
  loc_1496C3A:     var_86 = CInt(var_C8)
  loc_1496C70:     Proc_183_3_E7D1C8(var_C8, CVar(Me.Fields.Item("Fcol")))
  loc_1496C79:     var_88 = CInt(var_C8)
  loc_1496C91:     Me.Delete
  loc_1496C96:   End If
  loc_1496CAD:   If (Me.RecordCount > 0) Then
  loc_1496CB6:     Me.MoveLast
  loc_1496CED:     If Not(IsNull(CVar(Me.Fields.Item("FS_DATE")))) Then
  loc_1496D2B:       Me.TXTS_DATE.Text = CStr(Me.Fields.Item("FS_DATE").Value)
  loc_1496D3F:     End If
  loc_1496D71:     If Not(IsNull(CVar(Me.Fields.Item("FE_DATE")))) Then
  loc_1496DAF:       Me.TXTE_DATE.Text = CStr(Me.Fields.Item("FE_DATE").Value)
  loc_1496DC3:     End If
  loc_1496DF5:     If Not(IsNull(CVar(Me.Fields.Item("Check1")))) Then
  loc_1496E30:       Me.Check1.Value = CInt(Me.Fields.Item("Check1").Value)
  loc_1496E44:     Else
  loc_1496E50:       Me.Check1.Value = 1
  loc_1496E58:     End If
  loc_1496E8A:     If Not(IsNull(CVar(Me.Fields.Item("Check2")))) Then
  loc_1496EC5:       Me.Check2.Value = CInt(Me.Fields.Item("Check2").Value)
  loc_1496ED9:     Else
  loc_1496EE5:       Me.Check2.Value = 0
  loc_1496EED:     End If
  loc_1496F1F:     If Not(IsNull(CVar(Me.Fields.Item("Check3")))) Then
  loc_1496F5A:       Me.Check3.Value = CInt(Me.Fields.Item("Check3").Value)
  loc_1496F6E:     Else
  loc_1496F7A:       Me.Check3.Value = 0
  loc_1496F82:     End If
  loc_1496FB4:     If Not(IsNull(CVar(Me.Fields.Item("Check4")))) Then
  loc_1496FEF:       Me.Check4.Value = CInt(Me.Fields.Item("Check4").Value)
  loc_1497003:     Else
  loc_149700F:       Me.Check4.Value = 0
  loc_1497017:     End If
  loc_1497049:     If Not(IsNull(CVar(Me.Fields.Item("Check5")))) Then
  loc_1497084:       Me.Check5.Value = CInt(Me.Fields.Item("Check5").Value)
  loc_1497098:     Else
  loc_14970A4:       Me.Check5.Value = 0
  loc_14970AC:     End If
  loc_14970DE:     If Not(IsNull(CVar(Me.Fields.Item("Check6")))) Then
  loc_1497119:       Me.Check6.Value = CInt(Me.Fields.Item("Check6").Value)
  loc_149712D:     Else
  loc_1497139:       Me.Check6.Value = 0
  loc_1497141:     End If
  loc_149717D:     var_F0 = Ucase(Trim(CVar(Me.Fields.Item("TypeName")))) 'Variant
  loc_1497196:     If (var_F0 = "PROFLOSS") Then
  loc_14971A6:       Me.Text1.Text = vbNullString
  loc_14971B4:       Call Proc_189_66_F0DBE0(var_86, var_88, 1)
  loc_14971BC:     Else
  loc_14971C7:       If (var_F0 = "BALSHEET") Then
  loc_14971D7:         Me.Text1.Text = vbNullString
  loc_14971E5:         Call Proc_189_65_F0D85C(var_86, var_88, var_88)
  loc_14971ED:       Else
  loc_14971F8:         If (var_F0 = "SUBTRIAL") Then
  loc_1497236:           Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1497282:           Call Proc_189_69_F0DF64(CStr(Me.Fields.Item("GroupCode").Value), var_86, var_88)
  loc_1497297:         Else
  loc_14972A2:           If (var_F0 = "GROUPTRIAL") Then
  loc_14972B2:             Me.Text1.Text = vbNullString
  loc_14972C0:             Call Proc_189_67_F0D028(var_86, var_88)
  loc_14972C8:           Else
  loc_14972D3:             If (var_F0 = "LEDTRIAL") Then
  loc_14972E3:               Me.Text1.Text = vbNullString
  loc_14972F1:               Call Proc_189_68_F0E090(var_86, var_88)
  loc_14972F9:             Else
  loc_1497304:               If (var_F0 = "LEDGER") Then
  loc_1497342:                 Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_149739F:                 var_104 = Me.TXTE_DATE.Text
  loc_14973C4:                 Call Proc_189_74_F186B8(CStr(Me.Fields.Item("LedCode").Value), var_86, var_88, CDate(Me.TXTS_DATE.Text))
  loc_14973E3:               Else
  loc_14973EE:                 If (var_F0 = "CASHBOOK") Then
  loc_149742C:                   Me.Text1.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1497492:                   Call Proc_189_74_F186B8(CStr(Me.Fields.Item("LedCode").Value), var_86, var_88, 0)
  loc_14974A7:                 Else
  loc_14974B2:                   If (var_F0 = "MONTHSUM") Then
  loc_14974E3:                     var_CC = CStr(Me.Fields.Item("Name").Value)
  loc_14974F0:                     Me.Text1.Text = var_CC
  loc_149753C:                     Call Proc_189_76_F05C28(CStr(Me.Fields.Item("LedCode").Value), var_86, var_88, 0)
  loc_1497551:                   Else
  loc_149755C:                     If (var_F0 = "CASHBANKSUM") Then
  loc_149756C:                       Me.Text1.Text = vbNullString
  loc_149757A:                       Call Proc_189_70_F0D988(var_86, var_88, CDate(var_104))
  loc_1497582:                     Else
  loc_149758D:                       If (var_F0 = "CASHFLOW") Then
  loc_149759D:                         Me.Text1.Text = vbNullString
  loc_14975AB:                         Call Proc_189_71_F0D154(var_86, var_88)
  loc_14975B3:                       Else
  loc_14975BE:                         If (var_F0 = "FUNDFLOW") Then
  loc_14975CE:                           Me.Text1.Text = vbNullString
  loc_14975DC:                           Call Proc_189_72_F0DAB4(var_86, var_88)
  loc_14975E4:                         Else
  loc_14975EF:                           If (var_F0 = "VRANAL") Then
  loc_14975FF:                             Me.Text1.Text = vbNullString
  loc_1497611:                             Call Proc_189_77_F0CEFC(0, 0)
  loc_1497619:                           Else
  loc_1497624:                             If (var_F0 = "VRANALPER") Then
  loc_1497634:                               Me.Text1.Text = vbNullString
  loc_14976A6:                               Call Proc_189_78_F079D4(CStr(Me.Fields.Item("LedCode").Value), CStr(Me.Fields.Item("Name").Value), var_86)
  loc_14976C4:                             End If
  loc_14976C4:                           End If
  loc_14976C4:                         End If
  loc_14976C4:                       End If
  loc_14976C4:                     End If
  loc_14976C4:                   End If
  loc_14976C4:                 End If
  loc_14976C4:               End If
  loc_14976C4:             End If
  loc_14976C4:           End If
  loc_14976C4:         End If
  loc_14976C4:       End If
  loc_14976C4:     End If
  loc_14976C4:   End If
  loc_14976C7: Else
  loc_14976CD:   If (KeyAscii = &HD) Then
  loc_14976EB:     If (Me.Frame1.Visible = 0) Then
  loc_14976EE:       Call Fgrid1_UnknownEvent_B()
  loc_14976F3:     End If
  loc_14976F3:   End If
  loc_14976F3: End If
  loc_149772B: If ((Me.Frame1.Visible = 0) And (Me.TxtSearch.Visible = 0)) Then
  loc_14977B8:   If CBool((Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) <> "VOUCHER") And (Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) <> "VOUCHERREG")) Then
  loc_14977BF:     Set var_8C = Me.FGrid1
  loc_14977D0:   End If
  loc_14977D0: End If
  loc_14977D0: Exit Sub
  loc_14977D1: ' Referenced from: 1496B84
  loc_14977D7: Call 0.Method_arg_50 (var_CC, FGrid1.DispID_8001, var_88)
  loc_14977EC: Proc_183_57_104AA84(var_CC, "Form_KeyPress")
  loc_14977F8: Exit Sub
End Sub

Private Sub TxtSearch1_KeyDown(KeyCode As Integer, Shift As Integer) 'F697A8
  'Data Table: 5167A4
  loc_F69678: On Error Goto loc_F69780
  loc_F69686: If (Proc_183_12_E7A3E4(KeyCode) = &HFF) Then
  loc_F696B1:   Set var_90 = Me.GridSel
  loc_F696B7:   Call 0.Method_TxtSearch1_KeyDown0 (CInt(Val(Me.TxtSearch1.Tag)), var_94)
  loc_F696DF:   Me.TxtSearch1.Visible = False
  loc_F696E7: End If
  loc_F696F1: If (CLng(KeyCode) = &H2E) Then
  loc_F69701:   Me.TxtSearch.Text = vbNullString
  loc_F69709: End If
  loc_F6971E: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_F6972E:   var_8C = Me.TxtSearch1.Tag
  loc_F69749:   Set var_90 = Me.GridSel
  loc_F6974F:   Call 0.Method_TxtSearch1_KeyDown0 (CInt(Val(var_8C)), var_94, Val(var_8C))
  loc_F69777:   Me.TxtSearch1.Visible = False
  loc_F6977F: End If
  loc_F6977F: Exit Sub
  loc_F69780: ' Referenced from: F69678
  loc_F69786: Call 0.Method_arg_50 (var_8C, GridSel.DispID_8001)
  loc_F6979B: Proc_183_57_104AA84(var_8C, "TxtSearch1_KeyDown")
  loc_F697A7: Exit Sub
End Sub

Private Sub TxtSearch1_KeyPress(KeyAscii As Integer) 'FAEC6C
  'Data Table: 5167A4
  Dim var_8C As String
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim Me As Recordset15
  loc_FAEB0C: On Error Goto loc_FAEC44
  loc_FAEB39: If (Me.TxtSearch1.Tag = CStr(0)) Then
  loc_FAEB50:   var_8C = Me.TxtSearch1.Tag
  loc_FAEB6B:   Set var_98 = Me.GridSel
  loc_FAEB71:   Call 0.Method_TxtSearch1_KeyPress0 (CInt(Val(var_8C)), var_9C)
  loc_FAEB9E:   Set var_A8 = Me.GridSel
  loc_FAEBA4:   Call 0.Method_TxtSearch1_KeyPress0 (CInt(Val(Me.TxtSearch1.Tag)), var_AC)
  loc_FAEBAC:   var_BC = var_AC.Col
  loc_FAEBE6:   var_EC = "15595518"
  loc_FAEBEF:   var_E8 = "16777152"
  loc_FAEC17:   Proc_183_11_113C750(Me.TxtSearch1, var_9C, global_80, KeyAscii, Me.Fields.Item(CVar(CLng(var_BC))).Name)
  loc_FAEC43: End If
  loc_FAEC43: Exit Sub
  loc_FAEC44: ' Referenced from: FAEB0C
  loc_FAEC4A: Call 0.Method_arg_50 (var_8C, var_E8, var_EC)
  loc_FAEC5F: Proc_183_57_104AA84(var_8C, "TxtSearch1_KeyPress", var_BC)
  loc_FAEC6B: Exit Sub
End Sub

Private Sub TxtSearch1_LostFocus() 'ECB708
  'Data Table: 5167A4
  loc_ECB668: On Error Goto loc_ECB6DF
  loc_ECB678: Me.TxtSearch1.Text = vbNullString
  loc_ECB68D: var_8C = Me.TxtSearch1.Tag
  loc_ECB6A8: Set var_90 = Me.GridSel
  loc_ECB6AE: Call 0.Method_TxtSearch1_LostFocus0 (CInt(Val(var_8C)), var_94)
  loc_ECB6D6: Me.TxtSearch1.Visible = False
  loc_ECB6DE: Exit Sub
  loc_ECB6DF: ' Referenced from: ECB668
  loc_ECB6E5: Call 0.Method_arg_50 (var_8C, GridSel.DispID_8001)
  loc_ECB6FA: Proc_183_57_104AA84(var_8C, "TxtSearch1_LostFocus")
  loc_ECB706: Exit Sub
End Sub

Private Sub TxtSearch1_Click() 'ECB8D8
  'Data Table: 5167A4
  loc_ECB838: On Error Goto loc_ECB8AF
  loc_ECB848: Me.TxtSearch1.Text = vbNullString
  loc_ECB85D: var_8C = Me.TxtSearch1.Tag
  loc_ECB878: Set var_90 = Me.GridSel
  loc_ECB87E: Call 0.Method_TxtSearch1_Click0 (CInt(Val(var_8C)), var_94)
  loc_ECB8A6: Me.TxtSearch1.Visible = False
  loc_ECB8AE: Exit Sub
  loc_ECB8AF: ' Referenced from: ECB838
  loc_ECB8B5: Call 0.Method_arg_50 (var_8C, GridSel.DispID_8001)
  loc_ECB8CA: Proc_183_57_104AA84(var_8C, "TxtSearch1_Click")
  loc_ECB8D6: Exit Sub
End Sub

Private Sub Check2_KeyDown(KeyCode As Integer, Shift As Integer) 'E20F60
  'Data Table: 5167A4
  loc_E20F46: If (KeyCode = &HD) Then
  loc_E20F57:   Proc_303_0_FB9B68("	")
  loc_E20F5F: End If
  loc_E20F5F: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E197D0
  'Data Table: 5167A4
  loc_E197C5: Me.Global.Unload Me
  loc_E197CD: Exit Sub
End Sub

Private Sub BTNPRINT_UnknownEvent_9 '15AF70C
  'Data Table: 5167A4
  Dim var_9C As Variant
  Dim var_A4 As Variant
  Dim var_A8 As Integer
  Dim var_B8 As Variant
  Dim var_108 As Variant
  Dim var_118 As String
  Dim Me As Recordset15
  Dim var_12C As Field20
  Dim var_178 As String
  Dim var_9E As Integer
  loc_15AE4E0: On Error Goto loc_15AF6E4
  loc_15AE51B: If ((Me.Frame1.Visible = &HFF) Or (Me.Frame3.Visible = &HFF)) Then
  loc_15AE51E:   Exit Sub
  loc_15AE51F: End If
  loc_15AE52B: If (KeyCode = 1) Then
  loc_15AE52E:   GoTo loc_15AEDC2
  loc_15AE531: End If
  loc_15AE55C: var_F8 = Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) 'Variant
  loc_15AE577: If Not (var_F8 = "BALSHEET") Then
  loc_15AE585:   If (var_F8 = "PROFLOSS") Then
  loc_15AE588:   End If
  loc_15AE58C:   Set var_9C = Me.FGrid1
  loc_15AE5D2:   var_A4 = Me.Fields
  loc_15AE610:   If CBool((Ucase(Trim(CVar(CStr(var_9C.Tag)))) = "PROFLOSS") And (var_A4.Item("ShowQty").Value = "Yes")) Then
  loc_15AE61F:     Call 0.Method_arg_AC (var_9C)
  loc_15AE62A:     MemVar_1F921E4 = var_9C
  loc_15AE634:   Else
  loc_15AE640:     Call 0.Method_arg_A8 (var_9C)
  loc_15AE64B:     MemVar_1F921E4 = var_9C
  loc_15AE663:     Call 0.Method_arg_90 (var_9C, var_170, var_86)
  loc_15AE66B:     Call 0.Method_arg_24 (1)
  loc_15AE677:     For var_174 =  To CInt(var_170):   var_A8 = var_174 'Integer
  loc_15AE690:       Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AE698:       Call 0.Method_arg_20 (var_A4)
  loc_15AE6A0:       Call 0.Method_arg_30 (var_178)
  loc_15AE6A8:       var_17C = var_178
  loc_15AE6BA:       If (var_17C = "comp_name") Then
  loc_15AE6DE:         Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AE6E6:         Call 0.Method_arg_20 (var_A4)
  loc_15AE6EE:         Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_15AE704:       Else
  loc_15AE70C:         If (var_17C = "comp_add1") Then
  loc_15AE730:           Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AE738:           Call 0.Method_arg_20 (var_A4)
  loc_15AE740:           Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_15AE756:         Else
  loc_15AE75E:           If (var_17C = "comp_city") Then
  loc_15AE782:             Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AE78A:             Call 0.Method_arg_20 (var_A4)
  loc_15AE792:             Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_15AE7A5:           End If
  loc_15AE7A5:         End If
  loc_15AE7A5:       End If
  loc_15AE7A8:     Next var_174 'Integer
  loc_15AE7AD:   End If
  loc_15AE7B1:   Set var_9C = Me.FGrid1
  loc_15AE7EB:   var_9E = CreateFieldDefFile(var_9C.DataSource, MemVar_1F923B0 & "\FaProfLoss.ttx")
  loc_15AE7F5:   var_98 = CVar(var_9E) 'Variant
  loc_15AE80F: Else
  loc_15AE81A:   If Not (var_F8 = "GROUPTRIAL") Then
  loc_15AE828:     If Not (var_F8 = "LEDTRIAL") Then
  loc_15AE836:       If (var_F8 = "SUBTRIAL") Then
  loc_15AE839:       End If
  loc_15AE839:     End If
  loc_15AE845:     Call 0.Method_arg_BC (var_9C, var_9E)
  loc_15AE850:     MemVar_1F921E4 = var_9C
  loc_15AE85B:     Set var_9C = Me.FGrid1
  loc_15AE861:     var_B8 = var_9C.DataSource
  loc_15AE895:     var_9E = CreateFieldDefFile(var_B8, MemVar_1F923B0 & "\FaLedTrial.ttx", &HFF)
  loc_15AE89F:     var_98 = CVar(var_9E) 'Variant
  loc_15AE8B9:   Else
  loc_15AE8C4:     If (var_F8 = "MONTHSUM") Then
  loc_15AE8D3:       Call 0.Method_arg_B0 (var_9C, var_9E, var_B8)
  loc_15AE8DE:       MemVar_1F921E4 = var_9C
  loc_15AE8E9:       Set var_9C = Me.FGrid1
  loc_15AE8EF:       var_B8 = Me.FGrid1.DataSource
  loc_15AE923:       var_9E = CreateFieldDefFile(var_B8, MemVar_1F923B0 & "\FaMonthSum.ttx", &HFF)
  loc_15AE92D:       var_98 = CVar(var_9E) 'Variant
  loc_15AE947:     Else
  loc_15AE952:       If Not (var_F8 = "CASHFLOW") Then
  loc_15AE958:         var_118 = "FUNDFLOW"
  loc_15AE960:         If (var_F8 = var_118) Then
  loc_15AE963:         End If
  loc_15AE96F:         Call 0.Method_arg_B4 (var_9C, var_9E, var_B8)
  loc_15AE97A:         MemVar_1F921E4 = var_9C
  loc_15AE985:         Set var_9C = Me.FGrid1
  loc_15AE98B:         var_B8 = var_9C.DataSource
  loc_15AE9BF:         var_9E = CreateFieldDefFile(var_B8, MemVar_1F923B0 & "\FaCashfl.ttx", &HFF)
  loc_15AE9C9:         var_98 = CVar(var_9E) 'Variant
  loc_15AE9E3:       Else
  loc_15AE9EE:         If (var_F8 = "CASHBANKSUM") Then
  loc_15AE9FD:           Call 0.Method_arg_B8 (var_9C, var_9E, var_B8)
  loc_15AEA08:           MemVar_1F921E4 = var_9C
  loc_15AEA13:           Set var_9C = Me.FGrid1
  loc_15AEA19:           var_B8 = Me.FGrid1.DataSource
  loc_15AEA4D:           var_9E = CreateFieldDefFile(var_B8, MemVar_1F923B0 & "\FaCBCB.ttx", &HFF)
  loc_15AEA57:           var_98 = CVar(var_9E) 'Variant
  loc_15AEA71:         Else
  loc_15AEA7C:           If (var_F8 = "CASHBOOK") Then
  loc_15AEA8B:             Call 0.Method_arg_A4 (var_9C, var_9E, var_B8)
  loc_15AEA96:             MemVar_1F921E4 = var_9C
  loc_15AEAA1:             Set var_9C = Me.FGrid1
  loc_15AEAA7:             var_B8 = Me.FGrid1.DataSource
  loc_15AEADB:             var_9E = CreateFieldDefFile(var_B8, MemVar_1F923B0 & "\FaMagCashBook.ttx", &HFF)
  loc_15AEAE5:             var_98 = CVar(var_9E) 'Variant
  loc_15AEAFF:           Else
  loc_15AEB0A:             If (var_F8 = "LEDGER") Then
  loc_15AEB19:               Call 0.Method_arg_A0 (var_9C, var_9E, var_B8)
  loc_15AEB24:               MemVar_1F921E4 = var_9C
  loc_15AEB2F:               Set var_9C = Me.FGrid1
  loc_15AEB35:               var_B8 = Me.FGrid1.DataSource
  loc_15AEB69:               var_9E = CreateFieldDefFile(var_B8, MemVar_1F923B0 & "\FaMagLedger.ttx", &HFF)
  loc_15AEB73:               var_98 = CVar(var_9E) 'Variant
  loc_15AEB8D:             Else
  loc_15AEB98:               If (var_F8 = "OPDIFF") Then
  loc_15AEBA7:                 Call 0.Method_arg_1EC (var_9C, var_9E, var_B8)
  loc_15AEBB2:                 MemVar_1F921E4 = var_9C
  loc_15AEBBD:                 Set var_9C = Me.FGrid1
  loc_15AEBC3:                 var_B8 = Me.FGrid1.DataSource
  loc_15AEBF7:                 var_9E = CreateFieldDefFile(var_B8, MemVar_1F923B0 & "\FaOpDiff.ttx", &HFF)
  loc_15AEC01:                 var_98 = CVar(var_9E) 'Variant
  loc_15AEC1B:               Else
  loc_15AEC26:                 If (var_F8 = "VRANAL") Then
  loc_15AEC35:                   Call 0.Method_arg_D8 (var_9C, var_9E, var_B8)
  loc_15AEC40:                   MemVar_1F921E4 = var_9C
  loc_15AEC4B:                   Set var_9C = Me.FGrid1
  loc_15AEC51:                   var_B8 = Me.FGrid1.DataSource
  loc_15AEC85:                   var_9E = CreateFieldDefFile(var_B8, MemVar_1F923B0 & "\FaVrAnal.ttx", &HFF)
  loc_15AEC8F:                   var_98 = CVar(var_9E) 'Variant
  loc_15AECA9:                 Else
  loc_15AECB4:                   If (var_F8 = "VRANALPER") Then
  loc_15AECC3:                     Call 0.Method_arg_DC (var_9C, var_9E, var_B8)
  loc_15AECCE:                     MemVar_1F921E4 = var_9C
  loc_15AECD9:                     Set var_9C = Me.FGrid1
  loc_15AECDF:                     var_B8 = Me.FGrid1.DataSource
  loc_15AED13:                     var_9E = CreateFieldDefFile(var_B8, MemVar_1F923B0 & "\FaVrAnalPer.ttx", &HFF)
  loc_15AED1D:                     var_98 = CVar(var_9E) 'Variant
  loc_15AED37:                   Else
  loc_15AED42:                     If (var_F8 = "VRREG") Then
  loc_15AED51:                       Call 0.Method_arg_D4 (var_9C, var_9E, var_B8)
  loc_15AED5C:                       MemVar_1F921E4 = var_9C
  loc_15AED67:                       Set var_9C = Me.FGrid1
  loc_15AED7F:                       var_178 = MemVar_1F923B0 & "\FaVrReg.ttx"
  loc_15AED96:                       Set var_12C = Me.FGrid1.DataSource
  loc_15AEDA1:                       var_9E = CreateFieldDefFile(var_12C, var_178, &HFF)
  loc_15AEDA8:                       var_108 = CVar(var_9E) 'Integer
  loc_15AEDAB:                       var_98 = var_108 'Variant
  loc_15AEDC2:                     End If
  loc_15AEDC2:                   End If
  loc_15AEDC2:                 End If
  loc_15AEDC2:               End If
  loc_15AEDC2:             End If
  loc_15AEDC2:           End If
  loc_15AEDC2:         End If
  loc_15AEDC2:       End If
  loc_15AEDC2:     End If
  loc_15AEDC2:   End If
  loc_15AEDC2:   ' Referenced from: 15AE52E
  loc_15AEDC2: End If
  loc_15AEDCE: Set var_9C = Me.FGrid1
  loc_15AEDD4: var_B8 = var_9C.DataSource
  loc_15AEDDF: CVarUnk
  loc_15AEDED: Call 0.Method_arg_64 (var_A4, var_B8, var_108, var_118)
  loc_15AEDF5: Call 0.Method_arg_2C (var_9E, var_B8)
  loc_15AEE19: Call 0.Method_arg_90 (var_9C, var_170, var_86)
  loc_15AEE21: Call 0.Method_arg_24 (1, &HFF)
  loc_15AEE2D: For var_184 =  To CInt(var_170): var_B8 = var_184 'Integer
  loc_15AEE46:   Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AEE4E:   Call 0.Method_arg_20 (var_A4)
  loc_15AEE56:   Call 0.Method_arg_30 (var_178)
  loc_15AEE5E:   var_188 = var_178
  loc_15AEE70:   If Not (var_188 = "title") Then
  loc_15AEE7B:     If (var_188 = "TITLE") Then
  loc_15AEE7E:     End If
  loc_15AEE87:     Call 0.Method_arg_50 (var_178)
  loc_15AEEAA:     Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AEEB2:     Call 0.Method_arg_20 (var_A4)
  loc_15AEEBA:     Call 0.Method_arg_38 ("'" & var_178 & "'")
  loc_15AEED2:   Else
  loc_15AEEDA:     If Not (var_188 = "DATE") Then
  loc_15AEEE5:       If Not (var_188 = "date") Then
  loc_15AEEF0:         If Not (var_188 = "FROMDATE") Then
  loc_15AEEFB:           If (var_188 = "DT") Then
  loc_15AEEFE:           End If
  loc_15AEEFE:         End If
  loc_15AEEFE:       End If
  loc_15AEF3F:       If (Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) = "BALSHEET") Then
  loc_15AEF75:         Call 0.Method_arg_90 (var_A4, CLng(var_86))
  loc_15AEF7D:         Call 0.Method_arg_20 (var_12C)
  loc_15AEF85:         Call 0.Method_arg_38 ("'As On " & Me.TXTE_DATE.Text & "'")
  loc_15AEF9F:       Else
  loc_15AEFC9:         Set var_A4 = Me.TXTE_DATE
  loc_15AEFF2:         Call 0.Method_arg_90 (var_12C, CLng(var_86))
  loc_15AEFFA:         Call 0.Method_arg_20 (var_198)
  loc_15AF002:         Call 0.Method_arg_38 ("'From " & Me.TXTS_DATE.Text & " To " & var_A4.Text & "'")
  loc_15AF021:       End If
  loc_15AF024:     Else
  loc_15AF02C:       If (var_188 = "ForParty") Then
  loc_15AF0A0:         Call 0.Method_arg_90 (var_A4, CLng(var_86))
  loc_15AF0A8:         Call 0.Method_arg_20 (var_12C)
  loc_15AF0B0:         Call 0.Method_arg_38 (CStr(IIf((Trim(CVar(Me.Text1)) = vbNullString), "''", CVar("'For       :     " & Me.Text1.Text & "'"))))
  loc_15AF0D9:       Else
  loc_15AF0E1:         If (var_188 = "Lia") Then
  loc_15AF10F:           var_1AC = Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) 'Variant
  loc_15AF12A:           If (var_1AC = "BALSHEET") Then
  loc_15AF142:             var_9C = Me.Fields
  loc_15AF14A:             var_A4 = var_9C.Item("VerticleBalanceSheet")
  loc_15AF16C:             If (var_A4.Value = "No") Then
  loc_15AF182:               Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AF18A:               Call 0.Method_arg_20 (var_A4)
  loc_15AF192:               Call 0.Method_arg_38 ("'Liabilities'")
  loc_15AF1A1:             Else
  loc_15AF1B4:               Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AF1BC:               Call 0.Method_arg_20 (var_A4)
  loc_15AF1C4:               Call 0.Method_arg_38 ("'Particulars'")
  loc_15AF1D0:             End If
  loc_15AF1D3:           Else
  loc_15AF1DE:             If (var_1AC = "PROFLOSS") Then
  loc_15AF1F4:               Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AF1FC:               Call 0.Method_arg_20 (var_A4)
  loc_15AF204:               Call 0.Method_arg_38 ("'Particulars'")
  loc_15AF210:             End If
  loc_15AF210:           End If
  loc_15AF213:         Else
  loc_15AF21B:           If (var_188 = "ASS") Then
  loc_15AF249:             var_1BC = Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) 'Variant
  loc_15AF264:             If (var_1BC = "BALSHEET") Then
  loc_15AF27C:               var_9C = Me.Fields
  loc_15AF284:               var_A4 = var_9C.Item("VerticleBalanceSheet")
  loc_15AF2A6:               If (var_A4.Value = "No") Then
  loc_15AF2BC:                 Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AF2C4:                 Call 0.Method_arg_20 (var_A4)
  loc_15AF2CC:                 Call 0.Method_arg_38 ("'Assets'")
  loc_15AF2DB:               Else
  loc_15AF2EE:                 Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AF2F6:                 Call 0.Method_arg_20 (var_A4)
  loc_15AF2FE:                 Call 0.Method_arg_38 ("''")
  loc_15AF30A:               End If
  loc_15AF30D:             Else
  loc_15AF318:               If (var_1BC = "PROFLOSS") Then
  loc_15AF32E:                 Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AF336:                 Call 0.Method_arg_20 (var_A4)
  loc_15AF33E:                 Call 0.Method_arg_38 ("'Particulars'")
  loc_15AF34A:               End If
  loc_15AF34A:             End If
  loc_15AF34D:           Else
  loc_15AF355:             If (var_188 = "Amt") Then
  loc_15AF383:               var_1CC = Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) 'Variant
  loc_15AF39E:               If (var_1CC = "BALSHEET") Then
  loc_15AF3B6:                 var_9C = Me.Fields
  loc_15AF3BE:                 var_A4 = var_9C.Item("VerticleBalanceSheet")
  loc_15AF3E0:                 If (var_A4.Value = "No") Then
  loc_15AF3F6:                   Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AF3FE:                   Call 0.Method_arg_20 (var_A4)
  loc_15AF406:                   Call 0.Method_arg_38 ("'Amount'")
  loc_15AF415:                 Else
  loc_15AF428:                   Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AF430:                   Call 0.Method_arg_20 (var_A4)
  loc_15AF438:                   Call 0.Method_arg_38 ("''")
  loc_15AF444:                 End If
  loc_15AF447:               Else
  loc_15AF452:                 If (var_1CC = "PROFLOSS") Then
  loc_15AF468:                   Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AF470:                   Call 0.Method_arg_20 (var_A4)
  loc_15AF478:                   Call 0.Method_arg_38 ("'Amount'")
  loc_15AF484:                 End If
  loc_15AF484:               End If
  loc_15AF487:             Else
  loc_15AF48F:               If (var_188 = "DosPrint") Then
  loc_15AF4D1:                 Call 0.Method_arg_90 (var_9C, CLng(var_86))
  loc_15AF4D9:                 Call 0.Method_arg_20 (var_A4)
  loc_15AF4E1:                 Call 0.Method_arg_38 (CStr(IIf((KeyCode = 1), "'Y'", "'N'")))
  loc_15AF4FE:               Else
  loc_15AF506:                 If (var_188 = "ShowQty") Then
  loc_15AF55C:                   Call 0.Method_arg_90 (var_12C, CLng(var_86))
  loc_15AF564:                   Call 0.Method_arg_20 (var_198)
  loc_15AF56C:                   Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("ShowQty").Value & "'"))
  loc_15AF58B:                 Else
  loc_15AF593:                   If (var_188 = "PageNo") Then
  loc_15AF5E9:                     Call 0.Method_arg_90 (var_12C, CLng(var_86))
  loc_15AF5F1:                     Call 0.Method_arg_20 (var_198)
  loc_15AF5F9:                     Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_15AF618:                   Else
  loc_15AF620:                     If (var_188 = "DT1") Then
  loc_15AF662:                       var_178 = CStr("'" & Me.Fields.Item("daterfill").Value & "'")
  loc_15AF676:                       Call 0.Method_arg_90 (var_12C, CLng(var_86))
  loc_15AF67E:                       Call 0.Method_arg_20 (var_198)
  loc_15AF686:                       Call 0.Method_arg_38 (var_178)
  loc_15AF6A2:                     End If
  loc_15AF6A2:                   End If
  loc_15AF6A2:                 End If
  loc_15AF6A2:               End If
  loc_15AF6A2:             End If
  loc_15AF6A2:           End If
  loc_15AF6A2:         End If
  loc_15AF6A2:       End If
  loc_15AF6A2:     End If
  loc_15AF6A2:   End If
  loc_15AF6A5: Next var_184 'Integer
  loc_15AF6B0: Call 0.Method_arg_150 ()
  loc_15AF6BB: Call 0.Method_arg_50 (var_178)
  loc_15AF6D2: Proc_183_10_14991A4(MemVar_1F921E4, KeyCode)
  loc_15AF6DF: MemVar_1F921E4 = Nothing
  loc_15AF6E3: Exit Sub
  loc_15AF6E4: ' Referenced from: 15AE4E0
  loc_15AF6EA: Call 0.Method_arg_50 (var_178, var_178)
  loc_15AF6FF: Proc_183_57_104AA84(var_178, "BTNPRINT_Click")
  loc_15AF70B: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'E6BAA8
  'Data Table: 5167A4
  Dim var_88 As TextBox
  loc_E6BA57: If (Proc_183_12_E7A3E4(KeyCode) = &HFF) Then
  loc_E6BA5E:   Set var_88 = Me.FGrid1
  loc_E6BA7B:   Me.TxtSearch.Visible = False
  loc_E6BA83: End If
  loc_E6BA8D: If (CLng(KeyCode) = &H2E) Then
  loc_E6BA9D:   Me.TxtSearch.Text = vbNullString
  loc_E6BAA5: End If
  loc_E6BAA5: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'E01A90
  'Data Table: 5167A4
  loc_E01A87: Call Fgrid1_UnknownEvent_C()
  loc_E01A8C: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E8A96C
  'Data Table: 5167A4
  Dim var_88 As TextBox
  loc_E8A900: On Error Goto loc_E8A942
  loc_E8A910: Me.TxtSearch.Text = vbNullString
  loc_E8A91C: Set var_88 = Me.FGrid1
  loc_E8A939: Me.TxtSearch.Visible = False
  loc_E8A941: Exit Sub
  loc_E8A942: ' Referenced from: E8A900
  loc_E8A948: Call 0.Method_arg_50 (var_8C)
  loc_E8A95D: Proc_183_57_104AA84(var_8C, "TxtSearch_LostFocus")
  loc_E8A969: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E57AFC
  'Data Table: 5167A4
  Dim var_88 As TextBox
  loc_E57AC9: Me.TxtSearch.Text = vbNullString
  loc_E57AD5: Set var_88 = Me.FGrid1
  loc_E57AF2: Me.TxtSearch.Visible = False
  loc_E57AFA: Exit Sub
End Sub

Private Sub Check3_KeyDown(KeyCode As Integer, Shift As Integer) 'E23084
  'Data Table: 5167A4
  loc_E2306A: If (KeyCode = &HD) Then
  loc_E2307B:   Proc_303_0_FB9B68("	")
  loc_E23083: End If
  loc_E23083: Exit Sub
End Sub

Private Sub Check4_KeyDown(KeyCode As Integer, Shift As Integer) 'E21008
  'Data Table: 5167A4
  loc_E20FEE: If (KeyCode = &HD) Then
  loc_E20FFF:   Proc_303_0_FB9B68("	")
  loc_E21007: End If
  loc_E21007: Exit Sub
End Sub

Private Sub Check5_KeyDown(KeyCode As Integer, Shift As Integer) 'E210B0
  'Data Table: 5167A4
  loc_E21096: If (KeyCode = &HD) Then
  loc_E210A7:   Proc_303_0_FB9B68("	")
  loc_E210AF: End If
  loc_E210AF: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A 'E5DBB8
  'Data Table: 5167A4
  Dim var_88 As TextBox
  loc_E5DB7A: If (CLng(KeyCode) = &H1B) Then
  loc_E5DB8A:   Me.TxtSearch.Text = vbNullString
  loc_E5DB92: End If
  loc_E5DB9C: If (CLng(KeyCode) = &HD) Then
  loc_E5DBA3:   Set var_88 = Me.FGrid1
  loc_E5DBB4: End If
  loc_E5DBB4: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '1ACE628
  'Data Table: 5167A4
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_13C As Variant
  Dim Me As Recordset15
  Dim var_170 As Long
  Dim var_174 As Long
  Dim var_198 As Variant
  Dim var_1EC As Variant
  Dim var_154 As String
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_240 As Long
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_314 As Variant
  loc_1ACA558: On Error Goto loc_1ACE5FF
  loc_1ACA586: var_E8 = Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) 'Variant
  loc_1ACA5A1: If Not (var_E8 = "PROFLOSS") Then
  loc_1ACA5A7:   var_108 = "BALSHEET"
  loc_1ACA5AF:   If Not (var_E8 = var_108) Then
  loc_1ACA5BD:     If Not (var_E8 = "CASHFLOW") Then
  loc_1ACA5CB:       If (var_E8 = "FUNDFLOW") Then
  loc_1ACA5CE:       End If
  loc_1ACA5CE:     End If
  loc_1ACA5CE:   End If
  loc_1ACA5E6:   var_118 = 0
  loc_1ACA62C:   If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "*****") Then
  loc_1ACA63D:     Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1ACA642:     var_108 = "PROFLOSS"
  loc_1ACA654:     Me.Collect = "TypeName"
  loc_1ACA65D:     var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACA66E:     Me.Collect = "FS_DATE"
  loc_1ACA67A:     var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACA68B:     Me.Collect = "FE_DATE"
  loc_1ACA6A8:     var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACA6B8:     Me.Collect = "Check1"
  loc_1ACA6D5:     var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACA6E5:     Me.Collect = "Check2"
  loc_1ACA702:     var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACA712:     Me.Collect = "Check3"
  loc_1ACA72F:     var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACA73F:     Me.Collect = "Check4"
  loc_1ACA75C:     var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACA76C:     Me.Collect = "Check5"
  loc_1ACA789:     var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACA78D:     var_F8 = "Check6"
  loc_1ACA799:     Me.Collect = var_F8
  loc_1ACA7AF:     Me.Update var_F8, var_108
  loc_1ACA7C1:     Me.Text1.Text = vbNullString
  loc_1ACA7D3:     Call Proc_189_66_F0DBE0(0, 0, var_108, var_108, var_108, var_108, var_108)
  loc_1ACA7DB:   Else
  loc_1ACA7F3:     var_118 = 0
  loc_1ACA839:     If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "Diff") Then
  loc_1ACA84A:       Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1ACA84F:       var_108 = "OPDIFF"
  loc_1ACA861:       Me.Collect = "TypeName"
  loc_1ACA86A:       var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACA87B:       Me.Collect = "FS_DATE"
  loc_1ACA887:       var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACA898:       Me.Collect = "FE_DATE"
  loc_1ACA8B5:       var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACA8C5:       Me.Collect = "Check1"
  loc_1ACA8E2:       var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACA8F2:       Me.Collect = "Check2"
  loc_1ACA90F:       var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACA91F:       Me.Collect = "Check3"
  loc_1ACA93C:       var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACA94C:       Me.Collect = "Check4"
  loc_1ACA969:       var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACA979:       Me.Collect = "Check5"
  loc_1ACA996:       var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACA99A:       var_F8 = "Check6"
  loc_1ACA9A6:       Me.Collect = var_F8
  loc_1ACA9BC:       Me.Update var_F8, var_108
  loc_1ACA9CE:       Me.Text1.Text = vbNullString
  loc_1ACA9FB:       Call Proc_189_73_F0E1BC(0, 0, CDate(Me.TXTS_DATE.Text), var_108, var_108, var_108, var_108, var_108)
  loc_1ACAA09:     Else
  loc_1ACAA34:       var_16C = Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) 'Variant
  loc_1ACAA4F:       If Not (var_16C = "CASHFLOW") Then
  loc_1ACAA55:         var_108 = "FUNDFLOW"
  loc_1ACAA5D:         If (var_16C = var_108) Then
  loc_1ACAA60:         End If
  loc_1ACAA73:         var_170 = CLng(Me.FGrid1.Col)
  loc_1ACAA85:         If Not (var_170 = 1) Then
  loc_1ACAA91:           If (var_170 = 3) Then
  loc_1ACAA94:           End If
  loc_1ACAAA7:           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACAAAC:           var_118 = 0
  loc_1ACAAF2:           If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1ACAB3E:             Call Proc_189_62_1041E58(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, CVar(CLng(Me.FGrid1.Row)), 0, CVar(CLng(Me.FGrid1.Row)), var_170, var_108)
  loc_1ACAB58:           End If
  loc_1ACAB5B:         Else
  loc_1ACAB64:           If Not (var_170 = 6) Then
  loc_1ACAB70:             If (var_170 = 8) Then
  loc_1ACAB73:             End If
  loc_1ACAB86:             var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACAB8B:             var_118 = 5
  loc_1ACABD1:             If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1ACABDE:               var_A8 = Me.FGrid1.Row
  loc_1ACAC1D:               Call Proc_189_62_1041E58(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 5, CVar(CLng(var_A8)), 5, CVar(CLng(var_A8)), var_A8)
  loc_1ACAC37:             End If
  loc_1ACAC37:           End If
  loc_1ACAC37:         End If
  loc_1ACAC3A:       Else
  loc_1ACAC4D:         var_174 = CLng(Me.FGrid1.Col)
  loc_1ACAC5F:         If Not (var_174 = 1) Then
  loc_1ACAC6B:           If Not (var_174 = 2) Then
  loc_1ACAC77:             If Not (var_174 = 3) Then
  loc_1ACAC83:               If (var_174 = 4) Then
  loc_1ACAC86:               End If
  loc_1ACAC86:             End If
  loc_1ACAC86:           End If
  loc_1ACAC99:           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACAC9E:           var_118 = 0
  loc_1ACACE4:           If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1ACAD30:             Call Proc_189_62_1041E58(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, CVar(CLng(Me.FGrid1.Row)), 0, CVar(CLng(Me.FGrid1.Row)), var_174)
  loc_1ACAD4A:           End If
  loc_1ACAD4D:         Else
  loc_1ACAD56:           If Not (var_174 = 7) Then
  loc_1ACAD62:             If Not (var_174 = 8) Then
  loc_1ACAD6E:               If Not (var_174 = 9) Then
  loc_1ACAD7A:                 If (var_174 = &HA) Then
  loc_1ACAD7D:                 End If
  loc_1ACAD7D:               End If
  loc_1ACAD7D:             End If
  loc_1ACAD90:             var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACAD95:             var_118 = 6
  loc_1ACADDB:             If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1ACADE8:               var_A8 = Me.FGrid1.Row
  loc_1ACAE27:               Call Proc_189_62_1041E58(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6, CVar(CLng(var_A8)), 6, CVar(CLng(var_A8)), var_A8)
  loc_1ACAE41:             End If
  loc_1ACAE41:           End If
  loc_1ACAE41:         End If
  loc_1ACAE41:       End If
  loc_1ACAE41:     End If
  loc_1ACAE41:   End If
  loc_1ACAE44: Else
  loc_1ACAE4F:   If (var_E8 = "OPDIFF") Then
  loc_1ACAE65:     var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACAE6A:     var_118 = 6
  loc_1ACAE8E:     var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACAE96:     var_13C = "Opening Balance"
  loc_1ACAEB3:     var_198 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACAF12:     If CBool(1 Or (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = vbNullString)) Then
  loc_1ACAF15:       Exit Sub
  loc_1ACAF16:     End If
  loc_1ACAF24:     Me.AddNew var_F8, var_108
  loc_1ACAF29:     var_108 = "OPDIFF"
  loc_1ACAF3B:     Me.Collect = "TypeName"
  loc_1ACAF53:     var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACAF58:     var_118 = &HB
  loc_1ACAF7C:     var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACAF91:     Me.Collect = "GroupCode"
  loc_1ACAFBB:     var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACAFC0:     var_118 = &HC
  loc_1ACAFE4:     var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACAFF9:     Me.Collect = "LedCode"
  loc_1ACB023:     var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACB028:     var_118 = 2
  loc_1ACB04C:     var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACB061:     Me.Collect = "Name"
  loc_1ACB095:     var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACB0A6:     Me.Collect = "FRow"
  loc_1ACB0D1:     var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACB0E2:     Me.Collect = "Fcol"
  loc_1ACB0F4:     var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACB105:     Me.Collect = "FS_DATE"
  loc_1ACB111:     var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACB122:     Me.Collect = "FE_DATE"
  loc_1ACB13F:     var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACB14F:     Me.Collect = "Check1"
  loc_1ACB16C:     var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACB17C:     Me.Collect = "Check2"
  loc_1ACB199:     var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACB1A9:     Me.Collect = "Check3"
  loc_1ACB1C6:     var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACB1D6:     Me.Collect = "Check4"
  loc_1ACB1F3:     var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACB203:     Me.Collect = "Check5"
  loc_1ACB224:     var_F8 = "Check6"
  loc_1ACB230:     Me.Collect = var_F8
  loc_1ACB246:     Me.Update var_F8, CVar(Me.Check6.Value)
  loc_1ACB258:     Me.Text1.Text = vbNullString
  loc_1ACB273:     var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACB278:     var_118 = 8
  loc_1ACB2B4:     var_13C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACB344:     Proc_7_7_F2F5A4(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), CLng(Val(CStr(Me.FGrid1.TextMatrix)))), CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), Me.FGrid1, &HA, CVar(CLng(Me.FGrid1.Row)), Val(CStr(Me.FGrid1.TextMatrix))), 9)
  loc_1ACB37D:   Else
  loc_1ACB388:     If Not (var_E8 = "LEDGER") Then
  loc_1ACB38E:       var_108 = "CASHBOOK"
  loc_1ACB396:       If (var_E8 = var_108) Then
  loc_1ACB399:       End If
  loc_1ACB3AC:       var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACB3B1:       var_118 = 6
  loc_1ACB3D5:       var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACB3DD:       var_13C = "Opening Balance"
  loc_1ACB3FA:       var_198 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACB459:       If CBool(1 Or (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = vbNullString)) Then
  loc_1ACB45C:         Exit Sub
  loc_1ACB45D:       End If
  loc_1ACB46B:       Me.AddNew var_F8, var_108
  loc_1ACB470:       var_108 = "VOUCHER"
  loc_1ACB482:       Me.Collect = "TypeName"
  loc_1ACB49A:       var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACB49F:       var_118 = 0
  loc_1ACB4C3:       var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACB4D8:       Me.Collect = "GroupCode"
  loc_1ACB502:       var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACB507:       var_118 = 1
  loc_1ACB52B:       var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACB540:       Me.Collect = "LedCode"
  loc_1ACB56A:       var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACB56F:       var_118 = 2
  loc_1ACB593:       var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACB5A8:       Me.Collect = "Name"
  loc_1ACB5DC:       var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACB5ED:       Me.Collect = "FRow"
  loc_1ACB618:       var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACB629:       Me.Collect = "Fcol"
  loc_1ACB63B:       var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACB64C:       Me.Collect = "FS_DATE"
  loc_1ACB658:       var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACB669:       Me.Collect = "FE_DATE"
  loc_1ACB686:       var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACB696:       Me.Collect = "Check1"
  loc_1ACB6B3:       var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACB6C3:       Me.Collect = "Check2"
  loc_1ACB6E0:       var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACB6F0:       Me.Collect = "Check3"
  loc_1ACB70D:       var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACB71D:       Me.Collect = "Check4"
  loc_1ACB73A:       var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACB74A:       Me.Collect = "Check5"
  loc_1ACB767:       var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACB76B:       var_F8 = "Check6"
  loc_1ACB777:       Me.Collect = var_F8
  loc_1ACB78D:       Me.Update var_F8, var_108
  loc_1ACB79F:       Me.Text1.Text = vbNullString
  loc_1ACB7BA:       var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACB7BF:       var_118 = 3
  loc_1ACB7FB:       var_13C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACB88B:       Proc_7_1_1365344(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), CLng(Val(CStr(Me.FGrid1.TextMatrix)))), CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), Me.FGrid1, 5, CVar(CLng(Me.FGrid1.Row)), Val(CStr(Me.FGrid1.TextMatrix))), 4)
  loc_1ACB8C4:     Else
  loc_1ACB8CF:       If (var_E8 = "VRREG") Then
  loc_1ACB8E5:         var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACB8EA:         var_118 = 6
  loc_1ACB90E:         var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACB916:         var_13C = "Opening Balance"
  loc_1ACB933:         var_198 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACB992:         If CBool(1 Or (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = vbNullString)) Then
  loc_1ACB995:           Exit Sub
  loc_1ACB996:         End If
  loc_1ACB9A4:         Me.AddNew var_F8, var_108
  loc_1ACB9A9:         var_108 = "VOUCHERREG"
  loc_1ACB9BB:         Me.Collect = "TypeName"
  loc_1ACB9DD:         var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACB9EE:         Me.Collect = "FRow"
  loc_1ACBA19:         var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACBA2A:         Me.Collect = "Fcol"
  loc_1ACBA3C:         var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACBA4D:         Me.Collect = "FS_DATE"
  loc_1ACBA59:         var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACBA6A:         Me.Collect = "FE_DATE"
  loc_1ACBA87:         var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACBA97:         Me.Collect = "Check1"
  loc_1ACBAB4:         var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACBAC4:         Me.Collect = "Check2"
  loc_1ACBAE1:         var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACBAF1:         Me.Collect = "Check3"
  loc_1ACBB0E:         var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACBB1E:         Me.Collect = "Check4"
  loc_1ACBB3B:         var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACBB4B:         Me.Collect = "Check5"
  loc_1ACBB68:         var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACBB6C:         var_F8 = "Check6"
  loc_1ACBB78:         Me.Collect = var_F8
  loc_1ACBB8E:         Me.Update var_F8, var_108
  loc_1ACBBA0:         Me.Text1.Text = vbNullString
  loc_1ACBBBB:         var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACBBC0:         var_118 = 1
  loc_1ACBBFC:         var_13C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACBC8C:         Proc_7_0_F78958(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), CLng(Val(CStr(Me.FGrid1.TextMatrix)))), CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), Me.FGrid1, 9, CVar(CLng(Me.FGrid1.Row)), Val(CStr(Me.FGrid1.TextMatrix))), 2)
  loc_1ACBCC5:       Else
  loc_1ACBCD0:         If (var_E8 = "MONTHSUM") Then
  loc_1ACBCE6:           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACBCEB:           var_118 = 2
  loc_1ACBD0F:           var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACBD17:           var_13C = "Opening Balance"
  loc_1ACBD34:           var_198 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACBD93:           If CBool(2 Or (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = vbNullString)) Then
  loc_1ACBD96:             Exit Sub
  loc_1ACBD97:           End If
  loc_1ACBDAA:           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACBDAF:           var_118 = 8
  loc_1ACBDD2:           var_8C = CDate(CStr(Me.FGrid1.TextMatrix)))
  loc_1ACBDFE:           var_118 = 9
  loc_1ACBE21:           var_94 = CDate(CStr(Me.FGrid1.TextMatrix)))
  loc_1ACBE47:           Me.TXTS_DATE.Text = CStr(var_8C)
  loc_1ACBE64:           Me.TXTE_DATE.Text = CStr(var_94)
  loc_1ACBE7D:           Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1ACBE82:           var_108 = "LEDGER"
  loc_1ACBE94:           Me.Collect = "TypeName"
  loc_1ACBEAC:           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACBEB1:           var_118 = 0
  loc_1ACBED5:           var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACBEEA:           Me.Collect = "LedCode"
  loc_1ACBF14:           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACBF19:           var_118 = 6
  loc_1ACBF3D:           var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACBF52:           Me.Collect = "Name"
  loc_1ACBF86:           var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACBF97:           Me.Collect = "FRow"
  loc_1ACBFC2:           var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACBFD3:           Me.Collect = "Fcol"
  loc_1ACBFE4:           var_108 = CDate(var_8C)
  loc_1ACBFF5:           Me.Collect = "FS_DATE"
  loc_1ACBFFD:           var_108 = CDate(var_94)
  loc_1ACC00E:           Me.Collect = "FE_DATE"
  loc_1ACC028:           var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACC038:           Me.Collect = "Check1"
  loc_1ACC055:           var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACC065:           Me.Collect = "Check2"
  loc_1ACC082:           var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACC092:           Me.Collect = "Check3"
  loc_1ACC0AF:           var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACC0BF:           Me.Collect = "Check4"
  loc_1ACC0DC:           var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACC0EC:           Me.Collect = "Check5"
  loc_1ACC109:           var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACC10D:           var_F8 = "Check6"
  loc_1ACC119:           Me.Collect = var_F8
  loc_1ACC12F:           Me.Update var_F8, var_108
  loc_1ACC147:           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACC14C:           var_118 = 6
  loc_1ACC186:           Me.Text1.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1ACC203:           Call Proc_189_74_F186B8(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, 0, var_8C, var_94, 0, CVar(CLng(Me.FGrid1.Row)), 0)
  loc_1ACC220:         Else
  loc_1ACC22B:           If (var_E8 = "VRANAL") Then
  loc_1ACC246:             var_118 = 1
  loc_1ACC2D1:             If CBool((Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) And (Me.Fields.Item("MonthTotal").Value = "Yes")) Then
  loc_1ACC2E2:               Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1ACC2E7:               var_108 = "VRANALPER"
  loc_1ACC2F9:               Me.Collect = "TypeName"
  loc_1ACC311:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACC316:               var_118 = 1
  loc_1ACC33A:               var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACC34F:               Me.Collect = "LedCode"
  loc_1ACC379:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACC37E:               var_118 = 0
  loc_1ACC3A2:               var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACC3B7:               Me.Collect = "Name"
  loc_1ACC3EB:               var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACC3FC:               Me.Collect = "FRow"
  loc_1ACC427:               var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACC438:               Me.Collect = "Fcol"
  loc_1ACC44A:               var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACC45B:               Me.Collect = "FS_DATE"
  loc_1ACC467:               var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACC478:               Me.Collect = "FE_DATE"
  loc_1ACC495:               var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACC4A5:               Me.Collect = "Check1"
  loc_1ACC4C2:               var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACC4D2:               Me.Collect = "Check2"
  loc_1ACC4EF:               var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACC4FF:               Me.Collect = "Check3"
  loc_1ACC51C:               var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACC52C:               Me.Collect = "Check4"
  loc_1ACC549:               var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACC559:               Me.Collect = "Check5"
  loc_1ACC576:               var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACC57A:               var_F8 = "Check6"
  loc_1ACC586:               Me.Collect = var_F8
  loc_1ACC59C:               Me.Update var_F8, var_108
  loc_1ACC5B4:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACC5B9:               var_118 = 0
  loc_1ACC5F3:               Me.Text1.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1ACC6AB:               Call Proc_189_78_F079D4(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, 0, 0, CVar(CLng(Me.FGrid1.Row)), 1, CVar(CLng(Me.FGrid1.Row)))
  loc_1ACC6D8:             Else
  loc_1ACC6F0:               var_118 = 1
  loc_1ACC736:               If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1ACC747:                 Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1ACC74C:                 var_108 = "VRREG"
  loc_1ACC75E:                 Me.Collect = "TypeName"
  loc_1ACC776:                 var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACC77B:                 var_118 = 1
  loc_1ACC79F:                 var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACC7B4:                 Me.Collect = "LedCode"
  loc_1ACC7DE:                 var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACC7E3:                 var_118 = 0
  loc_1ACC807:                 var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACC81C:                 Me.Collect = "Name"
  loc_1ACC850:                 var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACC861:                 Me.Collect = "FRow"
  loc_1ACC88C:                 var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACC89D:                 Me.Collect = "Fcol"
  loc_1ACC8AF:                 var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACC8C0:                 Me.Collect = "FS_DATE"
  loc_1ACC8CC:                 var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACC8DD:                 Me.Collect = "FE_DATE"
  loc_1ACC8FA:                 var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACC90A:                 Me.Collect = "Check1"
  loc_1ACC927:                 var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACC937:                 Me.Collect = "Check2"
  loc_1ACC954:                 var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACC964:                 Me.Collect = "Check3"
  loc_1ACC981:                 var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACC991:                 Me.Collect = "Check4"
  loc_1ACC9AE:                 var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACC9BE:                 Me.Collect = "Check5"
  loc_1ACC9DB:                 var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACC9DF:                 var_F8 = "Check6"
  loc_1ACC9EB:                 Me.Collect = var_F8
  loc_1ACCA01:                 Me.Update var_F8, var_108
  loc_1ACCA19:                 var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACCA1E:                 var_118 = 0
  loc_1ACCA58:                 Me.Text1.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1ACCA87:                 var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACCA8C:                 var_118 = 1
  loc_1ACCB46:                 Call Proc_189_79_F0D3AC(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, 0, CDate(Me.TXTS_DATE.Text), CDate(Me.TXTE_DATE.Text), 0, CVar(CLng(Me.FGrid1.Row)))
  loc_1ACCB78:               End If
  loc_1ACCB78:             End If
  loc_1ACCB7B:           Else
  loc_1ACCB7E:             var_F8 = "VRANALPER"
  loc_1ACCB86:             If (var_E8 = var_F8) Then
  loc_1ACCB97:               Me.AddNew var_F8, var_108
  loc_1ACCB9C:               var_108 = "VRREG"
  loc_1ACCBAE:               Me.Collect = "TypeName"
  loc_1ACCBC6:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACCBCB:               var_118 = 4
  loc_1ACCBEF:               var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACCC04:               Me.Collect = "LedCode"
  loc_1ACCC2E:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACCC33:               var_118 = 0
  loc_1ACCC57:               var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACCC6C:               Me.Collect = "Name"
  loc_1ACCCA0:               var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACCCB1:               Me.Collect = "FRow"
  loc_1ACCCDC:               var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACCCED:               Me.Collect = "Fcol"
  loc_1ACCCFF:               var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACCD10:               Me.Collect = "FS_DATE"
  loc_1ACCD1C:               var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACCD2D:               Me.Collect = "FE_DATE"
  loc_1ACCD4A:               var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACCD5A:               Me.Collect = "Check1"
  loc_1ACCD77:               var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACCD87:               Me.Collect = "Check2"
  loc_1ACCDA4:               var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACCDB4:               Me.Collect = "Check3"
  loc_1ACCDD1:               var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACCDE1:               Me.Collect = "Check4"
  loc_1ACCDFE:               var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACCE0E:               Me.Collect = "Check5"
  loc_1ACCE2B:               var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACCE2F:               var_F8 = "Check6"
  loc_1ACCE3B:               Me.Collect = var_F8
  loc_1ACCE51:               Me.Update var_F8, var_108
  loc_1ACCE69:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACCE6E:               var_118 = 2
  loc_1ACCEA8:               Me.TXTS_DATE.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1ACCED7:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACCEDC:               var_118 = 3
  loc_1ACCF16:               Me.TXTE_DATE.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1ACCF45:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACCF4A:               var_118 = 0
  loc_1ACCF84:               Me.Text1.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1ACCFB3:               var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACCFB8:               var_118 = 4
  loc_1ACCFF4:               var_13C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACCFF9:               var_1A8 = 0
  loc_1ACD035:               var_1C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACD03A:               var_240 = 2
  loc_1ACD0D0:               Call Proc_189_79_F0D3AC(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, 0, CDate(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), CDate(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 3, CVar(CLng(Me.FGrid1.Row)))
  loc_1ACD119:             Else
  loc_1ACD11C:               var_F8 = "CASHBANKSUM"
  loc_1ACD124:               If (var_E8 = var_F8) Then
  loc_1ACD135:                 Me.AddNew var_F8, var_108
  loc_1ACD13A:                 var_108 = "CASHBOOK"
  loc_1ACD14C:                 Me.Collect = "TypeName"
  loc_1ACD164:                 var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACD169:                 var_118 = 0
  loc_1ACD18D:                 var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACD1A2:                 Me.Collect = "LedCode"
  loc_1ACD1CC:                 var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACD1D1:                 var_118 = 1
  loc_1ACD1F5:                 var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACD20A:                 Me.Collect = "Name"
  loc_1ACD23E:                 var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACD24F:                 Me.Collect = "FRow"
  loc_1ACD27A:                 var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACD28B:                 Me.Collect = "Fcol"
  loc_1ACD29D:                 var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACD2AE:                 Me.Collect = "FS_DATE"
  loc_1ACD2BA:                 var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACD2CB:                 Me.Collect = "FE_DATE"
  loc_1ACD2E8:                 var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACD2F8:                 Me.Collect = "Check1"
  loc_1ACD315:                 var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACD325:                 Me.Collect = "Check2"
  loc_1ACD342:                 var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACD352:                 Me.Collect = "Check3"
  loc_1ACD36F:                 var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACD37F:                 Me.Collect = "Check4"
  loc_1ACD39C:                 var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACD3AC:                 Me.Collect = "Check5"
  loc_1ACD3C9:                 var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACD3CD:                 var_F8 = "Check6"
  loc_1ACD3D9:                 Me.Collect = var_F8
  loc_1ACD3EF:                 Me.Update var_F8, var_108
  loc_1ACD407:                 var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACD40C:                 var_118 = 1
  loc_1ACD446:                 Me.Text1.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1ACD4EB:                 Call Proc_189_75_F07AFC(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, 0, CDate(Me.TXTS_DATE.Text), CDate(Me.TXTE_DATE.Text), 0, CVar(CLng(Me.FGrid1.Row)), 0)
  loc_1ACD512:               Else
  loc_1ACD51D:                 If (var_E8 = "GROUPTRIAL") Then
  loc_1ACD538:                   var_118 = 2
  loc_1ACD57E:                   If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "# Difference in Opening Balance") Then
  loc_1ACD58F:                     Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1ACD594:                     var_108 = "OPDIFF"
  loc_1ACD5A6:                     Me.Collect = "TypeName"
  loc_1ACD5AF:                     var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACD5C0:                     Me.Collect = "FS_DATE"
  loc_1ACD5CC:                     var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACD5DD:                     Me.Collect = "FE_DATE"
  loc_1ACD602:                     var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACD613:                     Me.Collect = "FRow"
  loc_1ACD63E:                     var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACD64F:                     Me.Collect = "Fcol"
  loc_1ACD672:                     var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACD682:                     Me.Collect = "Check1"
  loc_1ACD69F:                     var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACD6AF:                     Me.Collect = "Check2"
  loc_1ACD6CC:                     var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACD6DC:                     Me.Collect = "Check3"
  loc_1ACD6F9:                     var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACD709:                     Me.Collect = "Check4"
  loc_1ACD726:                     var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACD736:                     Me.Collect = "Check5"
  loc_1ACD753:                     var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACD757:                     var_F8 = "Check6"
  loc_1ACD763:                     Me.Collect = var_F8
  loc_1ACD779:                     Me.Update var_F8, var_108
  loc_1ACD78B:                     Me.Text1.Text = vbNullString
  loc_1ACD7B8:                     Call Proc_189_73_F0E1BC(0, 0, CDate(Me.TXTS_DATE.Text), var_108, var_108, var_108, var_108, var_108)
  loc_1ACD7C6:                   Else
  loc_1ACD80F:                     Call Proc_189_62_1041E58(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, CVar(CLng(Me.FGrid1.Row)), var_108, var_108, var_108)
  loc_1ACD829:                   End If
  loc_1ACD82C:                 Else
  loc_1ACD837:                   If Not (var_E8 = "LEDTRIAL") Then
  loc_1ACD83D:                     var_108 = "SUBTRIAL"
  loc_1ACD845:                     If (var_E8 = var_108) Then
  loc_1ACD848:                     End If
  loc_1ACD860:                     var_118 = 2
  loc_1ACD8A6:                     If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "# Difference in Opening Balance") Then
  loc_1ACD8B7:                       Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1ACD8BC:                       var_108 = "OPDIFF"
  loc_1ACD8CE:                       Me.Collect = "TypeName"
  loc_1ACD8D7:                       var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACD8E8:                       Me.Collect = "FS_DATE"
  loc_1ACD8F4:                       var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACD905:                       Me.Collect = "FE_DATE"
  loc_1ACD92A:                       var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACD93B:                       Me.Collect = "FRow"
  loc_1ACD966:                       var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACD977:                       Me.Collect = "Fcol"
  loc_1ACD99A:                       var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACD9AA:                       Me.Collect = "Check1"
  loc_1ACD9C7:                       var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACD9D7:                       Me.Collect = "Check2"
  loc_1ACD9F4:                       var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACDA04:                       Me.Collect = "Check3"
  loc_1ACDA21:                       var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACDA31:                       Me.Collect = "Check4"
  loc_1ACDA4E:                       var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACDA5E:                       Me.Collect = "Check5"
  loc_1ACDA7B:                       var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACDA7F:                       var_F8 = "Check6"
  loc_1ACDA8B:                       Me.Collect = var_F8
  loc_1ACDAA1:                       Me.Update var_F8, var_108
  loc_1ACDAB3:                       Me.Text1.Text = vbNullString
  loc_1ACDAE0:                       Call Proc_189_73_F0E1BC(0, 0, CDate(Me.TXTS_DATE.Text), var_108, var_108, var_108, var_108, var_108)
  loc_1ACDAEE:                     Else
  loc_1ACDB01:                       var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACDB06:                       var_118 = 0
  loc_1ACDB2A:                       var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACDBAE:                       If CBool(1 And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = vbNullString)) Then
  loc_1ACDBFA:                         Call Proc_189_62_1041E58(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, CVar(CLng(Me.FGrid1.Row)), CVar(CLng(Me.FGrid1.Row)), (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString), 0, CVar(CLng(Me.FGrid1.Row)), var_108)
  loc_1ACDC17:                       Else
  loc_1ACDC2F:                         var_118 = 1
  loc_1ACDC9C:                         var_1EC = (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) And (Me.Fields.Item("MonthTotal").Value = "Yes")
  loc_1ACDCBA:                         If CBool(var_1EC) Then
  loc_1ACDCCB:                           Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1ACDCD0:                           var_108 = "MONTHSUM"
  loc_1ACDCE2:                           Me.Collect = "TypeName"
  loc_1ACDCFA:                           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACDCFF:                           var_118 = 0
  loc_1ACDD23:                           var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACDD38:                           Me.Collect = "GroupCode"
  loc_1ACDD62:                           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACDD67:                           var_118 = 1
  loc_1ACDD8B:                           var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACDDA0:                           Me.Collect = "LedCode"
  loc_1ACDDCA:                           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACDDCF:                           var_118 = 2
  loc_1ACDDF3:                           var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACDE08:                           Me.Collect = "Name"
  loc_1ACDE3C:                           var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACDE4D:                           Me.Collect = "FRow"
  loc_1ACDE78:                           var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACDE89:                           Me.Collect = "Fcol"
  loc_1ACDE9B:                           var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACDEAC:                           Me.Collect = "FS_DATE"
  loc_1ACDEB8:                           var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACDEC9:                           Me.Collect = "FE_DATE"
  loc_1ACDEE6:                           var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACDEF6:                           Me.Collect = "Check1"
  loc_1ACDF13:                           var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACDF23:                           Me.Collect = "Check2"
  loc_1ACDF40:                           var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACDF50:                           Me.Collect = "Check3"
  loc_1ACDF6D:                           var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACDF7D:                           Me.Collect = "Check4"
  loc_1ACDF9A:                           var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACDFAA:                           Me.Collect = "Check5"
  loc_1ACDFC7:                           var_108 = CVar(Me.Check6.Value) 'Integer
  loc_1ACDFCB:                           var_F8 = "Check6"
  loc_1ACDFD7:                           Me.Collect = var_F8
  loc_1ACDFED:                           Me.Update var_F8, var_108
  loc_1ACE005:                           var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACE00A:                           var_118 = 2
  loc_1ACE044:                           Me.Text1.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1ACE0B3:                           Call Proc_189_76_F05C28(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, 0, 1, CVar(CLng(Me.FGrid1.Row)), 1, CVar(CLng(Me.FGrid1.Row)), var_108)
  loc_1ACE0D0:                         Else
  loc_1ACE0E8:                           var_118 = 1
  loc_1ACE12E:                           If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1ACE13F:                             Me.AddNew CVar(CLng(Me.FGrid1.Row)), var_108
  loc_1ACE144:                             var_108 = "LEDGER"
  loc_1ACE156:                             Me.Collect = "TypeName"
  loc_1ACE16E:                             var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACE173:                             var_118 = 1
  loc_1ACE197:                             var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACE1AC:                             Me.Collect = "LedCode"
  loc_1ACE1D6:                             var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACE1DB:                             var_118 = 2
  loc_1ACE1FF:                             var_D8 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1ACE214:                             Me.Collect = "Name"
  loc_1ACE248:                             var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1ACE259:                             Me.Collect = "FRow"
  loc_1ACE284:                             var_108 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1ACE295:                             Me.Collect = "Fcol"
  loc_1ACE2A7:                             var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1ACE2B8:                             Me.Collect = "FS_DATE"
  loc_1ACE2C4:                             var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1ACE2D5:                             Me.Collect = "FE_DATE"
  loc_1ACE2F2:                             var_108 = CVar(Me.Check1.Value) 'Integer
  loc_1ACE302:                             Me.Collect = "Check1"
  loc_1ACE31F:                             var_108 = CVar(Me.Check2.Value) 'Integer
  loc_1ACE32F:                             Me.Collect = "Check2"
  loc_1ACE34C:                             var_108 = CVar(Me.Check3.Value) 'Integer
  loc_1ACE35C:                             Me.Collect = "Check3"
  loc_1ACE379:                             var_108 = CVar(Me.Check4.Value) 'Integer
  loc_1ACE389:                             Me.Collect = "Check4"
  loc_1ACE3A6:                             var_108 = CVar(Me.Check5.Value) 'Integer
  loc_1ACE3B6:                             Me.Collect = "Check5"
  loc_1ACE3D7:                             var_F8 = "Check6"
  loc_1ACE3E3:                             Me.Collect = var_F8
  loc_1ACE3F9:                             Me.Update var_F8, CVar(Me.Check6.Value)
  loc_1ACE411:                             var_F8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1ACE416:                             var_118 = 2
  loc_1ACE450:                             Me.Text1.Text = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1ACE4BA:                             var_154 = Me.TXTS_DATE.Text
  loc_1ACE4F5:                             Call Proc_189_74_F186B8(CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 0, 0, CDate(var_154), CDate(Me.TXTE_DATE.Text), 1, CVar(CLng(Me.FGrid1.Row)), 1)
  loc_1ACE519:                           End If
  loc_1ACE519:                         End If
  loc_1ACE519:                       End If
  loc_1ACE519:                     End If
  loc_1ACE519:                   End If
  loc_1ACE519:                 End If
  loc_1ACE519:               End If
  loc_1ACE519:             End If
  loc_1ACE519:           End If
  loc_1ACE519:         End If
  loc_1ACE519:       End If
  loc_1ACE519:     End If
  loc_1ACE519:   End If
  loc_1ACE519: End If
  loc_1ACE544: var_F8 = "VOUCHERREG"
  loc_1ACE579: var_108 = "VOUCHER"
  loc_1ACE5BC: var_314 = (Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) <> var_F8) And (Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) <> var_108) And (Ucase(Trim(CVar(CStr(Me.FGrid1.Tag)))) <> "OPDIFF")
  loc_1ACE5E6: If CBool(var_314) Then
  loc_1ACE5ED:   Set var_98 = Me.FGrid1
  loc_1ACE5FE: End If
  loc_1ACE5FE: Exit Sub
  loc_1ACE5FF: ' Referenced from: 1ACA558
  loc_1ACE605: Call 0.Method_arg_50 (var_154, FGrid1.DispID_8001, var_F8, var_108, var_108)
  loc_1ACE61A: Proc_183_57_104AA84(var_154, "FGrid1_DblClick", var_108, var_108)
  loc_1ACE626: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'F1B174
  'Data Table: 5167A4
  Dim var_88 As Recordset15
  Dim KeyCode As Integer
  loc_F1B0B7: Set var_88 = Me.FGrid1.DataSource
  loc_F1B10B: var_B8 = var_88.Fields.Item(CVar(CLng(Me.FGrid1.Col))).Name
  loc_F1B113: var_CC = "8454143"
  loc_F1B11C: var_C8 = "8454143"
  loc_F1B141: Proc_183_11_113C750(Me.TxtSearch, Me.FGrid1, var_88, KeyCode)
  loc_F1B165: KeyCode = 0
  loc_F1B16D: Set var_88 = Nothing
  loc_F1B170: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_14 'E1D1A0
  'Data Table: 5167A4
  loc_E1D197: Me.FGrid1.CellBackColor = &H80FFFF
  loc_E1D19F: Exit Sub
End Sub

Private Sub Check6_KeyDown(KeyCode As Integer, Shift As Integer) 'E21104
  'Data Table: 5167A4
  loc_E210EA: If (KeyCode = &HD) Then
  loc_E210FB:   Proc_303_0_FB9B68("	")
  loc_E21103: End If
  loc_E21103: Exit Sub
End Sub

Public Function MagicStackGet() '517EC8
  MagicStackGet = MagicStack
End Function

Public Sub MagicStackPut(Value) '517ED7
  MagicStack = Value
End Sub

Public Sub MagicStackSet(Value) '517EE6
  MagicStack = Value
End Sub

Public Function X11Get() '517EF5
  X11Get = X11
End Function

Public Sub X11Put(Value) '517F04
  X11 = Value
End Sub

Public Sub X11Set(Value) '517F13
  X11 = Value
End Sub

Public Function RstEnviroGet() '517F22
  RstEnviroGet = RstEnviro
End Function

Public Sub RstEnviroPut(Value) '517F31
  RstEnviro = Value
End Sub

Public Sub RstEnviroSet(Value) '517F40
  RstEnviro = Value
End Sub

Public Function mREFRESHGet() '517F4F
  mREFRESHGet = mREFRESH
End Function

Public Sub mREFRESHPut(Value) '517F5E
  mREFRESH = Value
End Sub

Public Property Let OpenType(TITL) '124F778
  'Data Table: 5167A4
  Dim var_A4 As Variant
  Dim var_D4 As String
  Dim Me As Recordset15
  Dim var_B4 As Variant
  loc_124F226: On Error Goto loc_124F74D
  loc_124F246: Set var_8C = New
  loc_124F255: Call 0.Method_arg_1A4 (var_8C)
  loc_124F263: MagicStack = var_8C
  loc_124F273: Set MagicStack = var_90
  loc_124F293: var_C4 = Ucase(TITL) 'Variant
  loc_124F29A: var_A4 = "BALSHEET"
  loc_124F2A2: If (var_C4 = var_A4) Then
  loc_124F2B3:   Me.Recordset15.AddNew var_A4, var_D4
  loc_124F2B8:   var_D4 = "BALSHEET"
  loc_124F2CA:   Me.Collect = "TypeName"
  loc_124F2D3:   var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_124F2E4:   Me.Collect = "FS_DATE"
  loc_124F2F5:   var_A4 = "FE_DATE"
  loc_124F301:   Me.Collect = var_A4
  loc_124F317:   Me.Update var_A4, var_D4
  loc_124F326:   Call Proc_189_65_F0D85C(0, 0, CVar(Me.TXTE_DATE))
  loc_124F32E: Else
  loc_124F331:   var_A4 = "PROFLOSS"
  loc_124F339:   If (var_C4 = var_A4) Then
  loc_124F34A:     Me.AddNew var_A4, var_D4
  loc_124F34F:     var_D4 = "PROFLOSS"
  loc_124F361:     Me.Collect = "TypeName"
  loc_124F36A:     var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_124F37B:     Me.Collect = "FS_DATE"
  loc_124F38C:     var_A4 = "FE_DATE"
  loc_124F398:     Me.Collect = var_A4
  loc_124F3AE:     Me.Update var_A4, var_D4
  loc_124F3BD:     Call Proc_189_66_F0DBE0(0, 0, CVar(Me.TXTE_DATE), CVar(Me.TXTE_DATE))
  loc_124F3C5:   Else
  loc_124F3C8:     var_A4 = "GROUPTRIAL"
  loc_124F3D0:     If (var_C4 = var_A4) Then
  loc_124F3E1:       Me.AddNew var_A4, var_D4
  loc_124F3E6:       var_D4 = "GROUPTRIAL"
  loc_124F3F8:       Me.Collect = "TypeName"
  loc_124F401:       var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_124F412:       Me.Collect = "FS_DATE"
  loc_124F423:       var_A4 = "FE_DATE"
  loc_124F42F:       Me.Collect = var_A4
  loc_124F445:       Me.Update var_A4, var_D4
  loc_124F454:       Call Proc_189_67_F0D028(0, 0, CVar(Me.TXTE_DATE), CVar(Me.TXTE_DATE), var_D4)
  loc_124F45C:     Else
  loc_124F45F:       var_A4 = "LEDTRIAL"
  loc_124F467:       If (var_C4 = var_A4) Then
  loc_124F478:         Me.AddNew var_A4, var_D4
  loc_124F47D:         var_D4 = "LEDTRIAL"
  loc_124F48F:         Me.Collect = "TypeName"
  loc_124F498:         var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_124F4A9:         Me.Collect = "FS_DATE"
  loc_124F4BA:         var_A4 = "FE_DATE"
  loc_124F4C6:         Me.Collect = var_A4
  loc_124F4DC:         Me.Update var_A4, var_D4
  loc_124F4EB:         Call Proc_189_68_F0E090(0, 0, CVar(Me.TXTE_DATE), CVar(Me.TXTE_DATE), var_D4)
  loc_124F4F3:       Else
  loc_124F4F6:         var_A4 = "CASHBANKSUM"
  loc_124F4FE:         If (var_C4 = var_A4) Then
  loc_124F50F:           Me.AddNew var_A4, var_D4
  loc_124F514:           var_D4 = "CASHBANKSUM"
  loc_124F526:           Me.Collect = "TypeName"
  loc_124F52F:           var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_124F540:           Me.Collect = "FS_DATE"
  loc_124F551:           var_A4 = "FE_DATE"
  loc_124F55D:           Me.Collect = var_A4
  loc_124F573:           Me.Update var_A4, var_D4
  loc_124F582:           Call Proc_189_70_F0D988(0, 0, CVar(Me.TXTE_DATE), CVar(Me.TXTE_DATE), var_D4)
  loc_124F58A:         Else
  loc_124F58D:           var_A4 = "CASHFLOW"
  loc_124F595:           If (var_C4 = var_A4) Then
  loc_124F5A6:             Me.AddNew var_A4, var_D4
  loc_124F5AB:             var_D4 = "CASHFLOW"
  loc_124F5BD:             Me.Collect = "TypeName"
  loc_124F5C6:             var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_124F5D7:             Me.Collect = "FS_DATE"
  loc_124F5E8:             var_A4 = "FE_DATE"
  loc_124F5F4:             Me.Collect = var_A4
  loc_124F60A:             Me.Update var_A4, var_D4
  loc_124F619:             Call Proc_189_71_F0D154(0, 0, CVar(Me.TXTE_DATE), CVar(Me.TXTE_DATE), var_D4)
  loc_124F621:           Else
  loc_124F624:             var_A4 = "FUNDFLOW"
  loc_124F62C:             If (var_C4 = var_A4) Then
  loc_124F63D:               Me.AddNew var_A4, var_D4
  loc_124F642:               var_D4 = "FUNDFLOW"
  loc_124F654:               Me.Collect = "TypeName"
  loc_124F65D:               var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_124F66E:               Me.Collect = "FS_DATE"
  loc_124F67F:               var_A4 = "FE_DATE"
  loc_124F68B:               Me.Collect = var_A4
  loc_124F6A1:               Me.Update var_A4, var_D4
  loc_124F6B0:               Call Proc_189_72_F0DAB4(0, 0, CVar(Me.TXTE_DATE), CVar(Me.TXTE_DATE), var_D4)
  loc_124F6B8:             Else
  loc_124F6BB:               var_A4 = "VRANAL"
  loc_124F6C3:               If (var_C4 = var_A4) Then
  loc_124F6D4:                 Me.AddNew var_A4, var_D4
  loc_124F6D9:                 var_D4 = "VRANAL"
  loc_124F6EB:                 Me.Collect = "TypeName"
  loc_124F6F4:                 var_B4 = CVar(Me.TXTS_DATE) 'Address
  loc_124F705:                 Me.Collect = "FS_DATE"
  loc_124F711:                 var_B4 = CVar(Me.TXTE_DATE) 'Address
  loc_124F716:                 var_A4 = "FE_DATE"
  loc_124F722:                 Me.Collect = var_A4
  loc_124F738:                 Me.Update var_A4, var_D4
  loc_124F747:                 Call Proc_189_77_F0CEFC(0, 0, var_B4, var_B4, var_D4)
  loc_124F74C:               End If
  loc_124F74C:             End If
  loc_124F74C:           End If
  loc_124F74C:         End If
  loc_124F74C:       End If
  loc_124F74C:     End If
  loc_124F74C:   End If
  loc_124F74C: End If
  loc_124F74C: Exit Sub
  loc_124F74D: ' Referenced from: 124F226
  loc_124F753: Call 0.Method_arg_50 (var_DC, var_D4, var_B4)
  loc_124F768: Proc_183_57_104AA84(var_DC, "OpenType")
  loc_124F774: Exit Sub
End Sub

Public Property Let ShowSiteWise(YesNo) 'DFBD00
  'Data Table: 5167A4
  loc_DFBCFC: Exit Sub
End Sub

Public Sub Proc_189_60_E84A60(arg_C) 'E84A60
  'Data Table: 5167A4
  Dim var_A4 As Long
  loc_E849F7: For var_8A = 0 To 7: var_86 = var_8A 'Integer
  loc_E849FD:   var_A4 = -2147483643
  loc_E84A10:   Set var_90 = Me.LblShort
  loc_E84A16:   Call 0.Method_Proc_189_60_E84A600 (var_86, var_94)
  loc_E84A1E:   Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_2E(var_A4)
  loc_E84A2D: Next var_8A 'Integer
  loc_E84A45: Set var_90 = Me.LblShort
  loc_E84A4B: Call 0.Method_Proc_189_60_E84A600 (arg_C, var_94)
  loc_E84A53: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_2E(&HFFFF00)
  loc_E84A5F: Exit Sub
End Sub

Public Sub Proc_189_61_E1948C
  'Data Table: 5167A4
  loc_E19481: Me.Global.Unload Me
  loc_E19489: Exit Sub
End Sub

Public Sub Proc_189_62_1041E58(arg_C) '1041E58
  'Data Table: 5167A4
  Dim var_C8 As Variant
  Dim var_98 As Variant
  Dim var_DC As String
  Dim unk_5167C7 As Connection15
  Dim var_88 As Recordset15
  Dim Me As Recordset15
  Dim var_100 As Variant
  Dim var_A8 As Variant
  loc_1041C10: On Error Goto loc_1041E30
  loc_1041C20: var_C8 = "SELECT GROUPNAME FROM ACGROUP WHERE GROUPCODE="
  loc_1041C28: var_98 = arg_C
  loc_1041C3B: Proc_183_9_EAA760(var_B8, Trim(var_98), var_C8)
  loc_1041C51: unk_5167C7.Execute CStr(var_FC & var_B8), -1, var_100
  loc_1041C5C: Set var_88 = var_100
  loc_1041C84: If (var_88.RecordCount > 0) Then
  loc_1041C95:   Me.AddNew var_98, var_C8
  loc_1041C9A:   var_C8 = "SUBTRIAL"
  loc_1041CAC:   Me.Collect = "TypeName"
  loc_1041CB4:   var_C8 = CVar(arg_C) 'String
  loc_1041CC4:   Me.Collect = "GroupCode"
  loc_1041CE8:   var_A8 = CVar(var_88.Fields.Item("GroupName")) 'Address
  loc_1041CF9:   Me.Collect = "Name"
  loc_1041D21:   var_C8 = CVar(Val(CStr(CLng(Me.FGrid1.Row)))) 'Double
  loc_1041D32:   Me.Collect = "FRow"
  loc_1041D5D:   var_C8 = CVar(Val(CStr(CLng(Me.FGrid1.Col)))) 'Double
  loc_1041D6E:   Me.Collect = "Fcol"
  loc_1041D80:   var_A8 = CVar(Me.TXTS_DATE) 'Address
  loc_1041D91:   Me.Collect = "FS_DATE"
  loc_1041D9D:   var_A8 = CVar(Me.TXTE_DATE) 'Address
  loc_1041DA2:   var_98 = "FE_DATE"
  loc_1041DAE:   Me.Collect = var_98
  loc_1041DC4:   Me.Update var_98, var_C8
  loc_1041DEB:   var_A8 = var_88.Fields.Item("GroupName").Value
  loc_1041DF4:   var_DC = CStr(var_A8)
  loc_1041E01:   Me.Text1.Text = var_DC
  loc_1041E22:   Call Proc_189_69_F0DF64(arg_C, 0, 0, var_A8, var_A8)
  loc_1041E27: End If
  loc_1041E2C: Set var_88 = Nothing
  loc_1041E2F: Exit Sub
  loc_1041E30: ' Referenced from: 1041C10
  loc_1041E36: Call 0.Method_arg_50 (var_DC, var_C8, var_C8)
  loc_1041E4B: Proc_183_57_104AA84(var_DC, "ShowSubtrial", var_A8)
  loc_1041E57: Exit Sub
End Sub

Public Sub Proc_189_63_EDC9F8
  'Data Table: 5167A4
  loc_EDC93F: For var_8A = 0 To 7: var_86 = var_8A 'Integer
  loc_EDC954:   Set var_90 = Me.LblShort
  loc_EDC95A:   Call 0.Method_Proc_189_63_EDC9F80 (var_86, var_94)
  loc_EDC962:   var_94.FontBold = False
  loc_EDC980:   Set var_90 = var_94(var_86)
  loc_EDC986:   Call 0.Method_Proc_189_63_EDC9F80 (&HFFFF)
  loc_EDC98E:   Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_2E(0)
  loc_EDC99D: Next var_8A 'Integer
  loc_EDC9B5: Set var_90 = var_94(arg_10)
  loc_EDC9BB: Call 0.Method_Proc_189_63_EDC9F80 (&HFFFF00)
  loc_EDC9C3: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_2E()
  loc_EDC9DD: Set var_90 = var_94(arg_10)
  loc_EDC9E3: Call 0.Method_Proc_189_63_EDC9F80 (True)
  loc_EDC9EB: var_94.FontBold = 
  loc_EDC9F6: Exit Sub
End Sub

Public Sub Proc_189_64_1291848
  'Data Table: 5167A4
  Dim var_98 As Variant
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_138 As Variant
  Dim var_104 As Fields15
  Dim var_118 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_1A8 As Variant
  Dim var_C0 As Variant
  Dim var_1AC As String
  Dim MemVar_1F923D0 As String
  Dim var_90 As Integer
  Dim var_1C8 As String
  loc_1291290: On Error Goto loc_1291820
  loc_129129F: Me.Frame3.Visible = False
  loc_12912AA: var_88 = vbNullString
  loc_12912B0: var_8C = vbNullString
  loc_12912BF: Set var_98 = Me.Check
  loc_12912C5: Call 0.Method_Proc_189_64_12918480 (0, var_9C)
  loc_12912DF: If (var_9C.Value = 1) Then
  loc_12912E8:   Me.MoveFirst
  loc_12912ED:   ' Referenced from: 1291481
  loc_12912FF:   If Not(Me.EOF) Then
  loc_1291369:     var_148 = (CVar("," & "'") + Me.Fields.Item("Site_Code").Value)
  loc_1291372:     var_168 = (var_148 + "'")
  loc_129137E:     var_E0 = ("'" + Me.Fields.Item("Site_Code").Value)
  loc_1291387:     var_100 = (var_E0 + "'")
  loc_12913A2:     var_1A8 = (CVar(var_88) + IIf((var_88 = vbNullString), var_100, var_168))
  loc_12913A7:     var_88 = CStr(var_1A8)
  loc_12913E6:     var_9C = Me.Fields.Item("Site")
  loc_129141F:     var_118 = Me.Fields.Item("Site")
  loc_1291436:     var_138 = ("," + Trim(CVar(var_118)))
  loc_1291454:     var_168 = (CVar(var_8C) + IIf((var_8C = vbNullString), Trim(CVar(var_9C)), CVar("," & "'")))
  loc_1291459:     var_8C = CStr(var_168)
  loc_129147C:     Me.MoveNext
  loc_1291481:     GoTo loc_12912ED
  loc_1291484:   End If
  loc_129148C:   If (var_88 <> vbNullString) Then
  loc_12914A9:     Call 0.Method_arg_28 ("(" & var_88 & ")")
  loc_12914C3:     MemVar_1F923D0 = "(" & var_88 & ")"
  loc_12914CA:   End If
  loc_12914D2:   If (var_8C <> vbNullString) Then
  loc_12914E1:     Call 0.Method_arg_24 (var_8C)
  loc_12914E9:     MemVar_1F923D4 = var_8C
  loc_12914ED:   End If
  loc_12914F0: Else
  loc_12914F3:   var_88 = vbNullString
  loc_1291506:   For var_1B4 = 0 To CInt(UBound(global_84, 1)):   var_8E = var_1B4 'Integer
  loc_129151A:     If (global_84(CLng(var_8E)) = 0) Then
  loc_129151D:       GoTo loc_129165E
  loc_1291520:     End If
  loc_129152B:     var_90 = global_84(CLng(var_8E))
  loc_1291549:     Set var_98 = Me.GridSel
  loc_129154F:     Call 0.Method_Proc_189_64_12918480 (0, var_9C, 0, CVar(CLng(var_90)))
  loc_1291577:     If (CStr(var_9C.TextMatrix)) = "�") Then
  loc_1291595:       Set var_98 = Me.GridSel
  loc_129159B:       Call 0.Method_Proc_189_64_12918480 (0, var_9C, 2, CVar(CLng(var_90)))
  loc_12915A3:       var_C0 = var_9C.TextMatrix)
  loc_12915DA:       Set var_104 = Me.GridSel
  loc_12915E0:       Call 0.Method_Proc_189_64_12918480 (0, var_118, 2, CVar(CLng(var_90)), "," & "'")
  loc_129162D:       var_148 = (var_C0 + IIf((var_88 = vbNullString), CVar("'" & CStr(var_C0) & "'"), CVar(CVar(var_88) & CStr(var_118.TextMatrix)) & "'")))
  loc_1291632:       var_88 = CStr(IIf((var_8C = vbNullString), Trim(CVar(var_9C)), CVar("," & "'")))
  loc_129165E:       ' Referenced from:   129151D
  loc_129165E:     End If
  loc_1291661:   Next var_1B4 'Integer
  loc_129166E:   If (var_88 <> vbNullString) Then
  loc_129168B:     Call 0.Method_arg_28 ("(" & var_88 & ")")
  loc_12916A5:     MemVar_1F923D0 = "(" & var_88 & ")"
  loc_12916AC:   End If
  loc_12916AF:   var_88 = vbNullString
  loc_12916C2:   For var_1F4 = 0 To CInt(UBound(global_84, 1)):   var_8E = var_1F4 'Integer
  loc_12916D6:     If (global_84(CLng(var_8E)) = 0) Then
  loc_12916D9:       GoTo loc_12917F4
  loc_12916DC:     End If
  loc_12916E7:     var_90 = global_84(CLng(var_8E))
  loc_1291705:     Set var_98 = Me.GridSel
  loc_129170B:     Call 0.Method_Proc_189_64_12918480 (0, var_9C, 0, CVar(CLng(var_90)))
  loc_1291733:     If (CStr(var_9C.TextMatrix)) = "�") Then
  loc_1291751:       Set var_98 = Me.GridSel
  loc_1291757:       Call 0.Method_Proc_189_64_12918480 (0, var_9C, 1, CVar(CLng(var_90)))
  loc_129175F:       var_C0 = var_9C.TextMatrix)
  loc_129178F:       Set var_104 = Me.GridSel
  loc_1291795:       Call 0.Method_Proc_189_64_12918480 (0, var_118, 1, CVar(CLng(var_90)), ",")
  loc_12917A8:       var_1AC = CStr(var_118.TextMatrix))
  loc_12917CD:       var_148 = (var_C0 + IIf((var_88 = vbNullString), CVar(CStr(var_C0)), CVar(CVar(var_88) & var_1AC)))
  loc_12917D2:       var_88 = CStr(IIf((var_8C = vbNullString), Trim(CVar(var_9C)), CVar("," & "'")))
  loc_12917F4:       ' Referenced from:   12916D9
  loc_12917F4:     End If
  loc_12917F7:   Next var_1F4 'Integer
  loc_1291804:   If (var_88 <> vbNullString) Then
  loc_1291813:     Call 0.Method_arg_24 (var_88)
  loc_129181B:     MemVar_1F923D4 = var_88
  loc_129181F:   End If
  loc_129181F: End If
  loc_129181F: Exit Sub
  loc_1291820: ' Referenced from: 1291290
  loc_1291826: Call 0.Method_arg_50 (var_1AC)
  loc_129182E: var_1C8 = "SiteAsign"
  loc_129183B: Proc_183_57_104AA84(var_1AC)
  loc_1291847: Exit Sub
End Sub

Public Sub Proc_189_65_F0D85C(arg_C) 'F0D85C
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0D778: On Error Goto loc_F0D831
  loc_F0D797: Call 0.Method_Me0 (Me, arg_C)
  loc_F0D7A2: Set var_88 = var_90
  loc_F0D7B1: Call Proc_189_60_E84A60(0)
  loc_F0D7CA: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0D7D7:   arg_2C = Me.FGrid1.Text
  loc_F0D7E2: End If
  loc_F0D7EB: var_9C = MemVar_1F923B0 & "\FaBalSheet.ttx"
  loc_F0D7F8: Set var_8C = var_88 
  loc_F0D804: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0D80E: Set var_88 = var_8C
  loc_F0D81A: X11 = CVar(var_92)
  loc_F0D82D: Set var_88 = Nothing
  loc_F0D830: Exit Sub
  loc_F0D831: ' Referenced from: F0D778
  loc_F0D837: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0D84C: Proc_183_57_104AA84(var_9C, "BalSheet", arg_2C)
  loc_F0D858: Exit Sub
  loc_F0D859: StAryRecMove
End Sub

Public Sub Proc_189_66_F0DBE0(arg_C) 'F0DBE0
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0DAFC: On Error Goto loc_F0DBB5
  loc_F0DB1B: Call 0.Method_Me8 (Me, arg_C)
  loc_F0DB26: Set var_88 = var_90
  loc_F0DB35: Call Proc_189_60_E84A60(1)
  loc_F0DB4E: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0DB5B:   arg_2C = Me.FGrid1.Text
  loc_F0DB66: End If
  loc_F0DB6F: var_9C = MemVar_1F923B0 & "\FaProfLoss.ttx"
  loc_F0DB7C: Set var_8C = var_88 
  loc_F0DB88: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0DB92: Set var_88 = var_8C
  loc_F0DB9E: X11 = CVar(var_92)
  loc_F0DBB1: Set var_88 = Nothing
  loc_F0DBB4: Exit Sub
  loc_F0DBB5: ' Referenced from: F0DAFC
  loc_F0DBBB: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0DBD0: Proc_183_57_104AA84(var_9C, "ProfLoss", arg_2C)
  loc_F0DBDC: Exit Sub
  loc_F0DBDD: StAryRecMove
End Sub

Public Sub Proc_189_67_F0D028(arg_C) 'F0D028
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0CF44: On Error Goto loc_F0CFFD
  loc_F0CF63: Call 0.Method_MeC (Me, arg_C)
  loc_F0CF6E: Set var_88 = var_90
  loc_F0CF7D: Call Proc_189_60_E84A60(2)
  loc_F0CF96: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0CFA3:   arg_2C = Me.FGrid1.Text
  loc_F0CFAE: End If
  loc_F0CFB7: var_9C = MemVar_1F923B0 & "\FaGroupTrial.ttx"
  loc_F0CFC4: Set var_8C = var_88 
  loc_F0CFD0: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0CFDA: Set var_88 = var_8C
  loc_F0CFE6: X11 = CVar(var_92)
  loc_F0CFF9: Set var_88 = Nothing
  loc_F0CFFC: Exit Sub
  loc_F0CFFD: ' Referenced from: F0CF44
  loc_F0D003: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0D018: Proc_183_57_104AA84(var_9C, "GroupTrial", arg_2C)
  loc_F0D024: Exit Sub
  loc_F0D025: StAryRecMove
End Sub

Public Sub Proc_189_68_F0E090(arg_C) 'F0E090
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0DFAC: On Error Goto loc_F0E065
  loc_F0DFCB: Call 0.Method_arg_90 (Me, arg_C)
  loc_F0DFD6: Set var_88 = var_90
  loc_F0DFE5: Call Proc_189_60_E84A60(3)
  loc_F0DFFE: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0E00B:   arg_2C = Me.FGrid1.Text
  loc_F0E016: End If
  loc_F0E01F: var_9C = MemVar_1F923B0 & "\FaLedTrial.ttx"
  loc_F0E02C: Set var_8C = var_88 
  loc_F0E038: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0E042: Set var_88 = var_8C
  loc_F0E04E: X11 = CVar(var_92)
  loc_F0E061: Set var_88 = Nothing
  loc_F0E064: Exit Sub
  loc_F0E065: ' Referenced from: F0DFAC
  loc_F0E06B: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0E080: Proc_183_57_104AA84(var_9C, "LedTrial", arg_2C)
  loc_F0E08C: Exit Sub
  loc_F0E08D: StAryRecMove
End Sub

Public Sub Proc_189_69_F0DF64(arg_C, arg_10) 'F0DF64
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_98 As String
  Dim var_9E As Integer
  loc_F0DE80: On Error Goto loc_F0DF39
  loc_F0DE87: Set var_88 = New 
  loc_F0DEA9: Call 0.Method_arg_78 (Me, arg_C, arg_10)
  loc_F0DEB4: Set var_88 = var_90
  loc_F0DED2: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0DEDF:   arg_2C = Me.FGrid1.Text
  loc_F0DEEA: End If
  loc_F0DEF3: var_98 = MemVar_1F923B0 & "\FaSubTrial.ttx"
  loc_F0DF00: Set var_8C = var_88 
  loc_F0DF0C: var_9E = CreateFieldDefFile(var_8C, var_98, &HFF)
  loc_F0DF16: Set var_88 = var_8C
  loc_F0DF22: X11 = CVar(var_9E)
  loc_F0DF35: Set var_88 = Nothing
  loc_F0DF38: Exit Sub
  loc_F0DF39: ' Referenced from: F0DE80
  loc_F0DF3F: Call 0.Method_arg_50 (var_98, X11, var_9E)
  loc_F0DF54: Proc_183_57_104AA84(var_98, "Subtrial", arg_2C)
  loc_F0DF60: Exit Sub
  loc_F0DF61: StAryRecMove
End Sub

Public Sub Proc_189_70_F0D988(arg_C) 'F0D988
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0D8A4: On Error Goto loc_F0D95D
  loc_F0D8C3: Call 0.Method_arg_7C (Me, arg_C)
  loc_F0D8CE: Set var_88 = var_90
  loc_F0D8DD: Call Proc_189_60_E84A60(6)
  loc_F0D8F6: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0D903:   arg_2C = Me.FGrid1.Text
  loc_F0D90E: End If
  loc_F0D917: var_9C = MemVar_1F923B0 & "\FaCashBankSum.ttx"
  loc_F0D924: Set var_8C = var_88 
  loc_F0D930: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0D93A: Set var_88 = var_8C
  loc_F0D946: X11 = CVar(var_92)
  loc_F0D959: Set var_88 = Nothing
  loc_F0D95C: Exit Sub
  loc_F0D95D: ' Referenced from: F0D8A4
  loc_F0D963: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0D978: Proc_183_57_104AA84(var_9C, "CashBankSum", arg_2C)
  loc_F0D984: Exit Sub
  loc_F0D985: StAryRecMove
End Sub

Public Sub Proc_189_71_F0D154(arg_C) 'F0D154
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0D070: On Error Goto loc_F0D129
  loc_F0D08F: Call 0.Method_arg_94 (Me, arg_C)
  loc_F0D09A: Set var_88 = var_90
  loc_F0D0A9: Call Proc_189_60_E84A60(4)
  loc_F0D0C2: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0D0CF:   arg_2C = Me.FGrid1.Text
  loc_F0D0DA: End If
  loc_F0D0E3: var_9C = MemVar_1F923B0 & "\FaCashFundFlow.ttx"
  loc_F0D0F0: Set var_8C = var_88 
  loc_F0D0FC: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0D106: Set var_88 = var_8C
  loc_F0D112: X11 = CVar(var_92)
  loc_F0D125: Set var_88 = Nothing
  loc_F0D128: Exit Sub
  loc_F0D129: ' Referenced from: F0D070
  loc_F0D12F: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0D144: Proc_183_57_104AA84(var_9C, "CashFlow", arg_2C)
  loc_F0D150: Exit Sub
  loc_F0D151: StAryRecMove
End Sub

Public Sub Proc_189_72_F0DAB4(arg_C) 'F0DAB4
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0D9D0: On Error Goto loc_F0DA89
  loc_F0D9EF: Call 0.Method_arg_98 (Me, arg_C)
  loc_F0D9FA: Set var_88 = var_90
  loc_F0DA09: Call Proc_189_60_E84A60(5)
  loc_F0DA22: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0DA2F:   arg_2C = Me.FGrid1.Text
  loc_F0DA3A: End If
  loc_F0DA43: var_9C = MemVar_1F923B0 & "\FaCashFundFlow.ttx"
  loc_F0DA50: Set var_8C = var_88 
  loc_F0DA5C: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0DA66: Set var_88 = var_8C
  loc_F0DA72: X11 = CVar(var_92)
  loc_F0DA85: Set var_88 = Nothing
  loc_F0DA88: Exit Sub
  loc_F0DA89: ' Referenced from: F0D9D0
  loc_F0DA8F: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0DAA4: Proc_183_57_104AA84(var_9C, "FundFlow", arg_2C)
  loc_F0DAB0: Exit Sub
  loc_F0DAB1: StAryRecMove
End Sub

Public Sub Proc_189_73_F0E1BC(arg_C) 'F0E1BC
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0E0D8: On Error Goto loc_F0E191
  loc_F0E0F7: Call 0.Method_Me4 (Me, arg_C)
  loc_F0E102: Set var_88 = var_90
  loc_F0E111: Call Proc_189_60_E84A60(0)
  loc_F0E12A: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0E137:   arg_2C = Me.FGrid1.Text
  loc_F0E142: End If
  loc_F0E14B: var_9C = MemVar_1F923B0 & "\FaBalSheet.ttx"
  loc_F0E158: Set var_8C = var_88 
  loc_F0E164: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0E16E: Set var_88 = var_8C
  loc_F0E17A: X11 = CVar(var_92)
  loc_F0E18D: Set var_88 = Nothing
  loc_F0E190: Exit Sub
  loc_F0E191: ' Referenced from: F0E0D8
  loc_F0E197: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0E1AC: Proc_183_57_104AA84(var_9C, "OpDiff", arg_2C)
  loc_F0E1B8: Exit Sub
  loc_F0E1B9: StAryRecMove
End Sub

Public Sub Proc_189_74_F186B8(arg_C, arg_10, arg_14, arg_18, arg_1C) 'F186B8
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_90 As String
  Dim var_9E As Integer
  loc_F185C8: On Error Goto loc_F1868E
  loc_F185D3: var_90 = 0
  loc_F185FB: Call 0.Method_arg_64 (Me, arg_C, arg_10, arg_14)
  loc_F18606: Set var_88 = var_94
  loc_F18627: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F18634:   arg_2C = Me.FGrid1.Text
  loc_F1863F: End If
  loc_F18648: var_90 = MemVar_1F923B0 & "\FaMagLedger.ttx"
  loc_F18655: Set var_8C = var_88 
  loc_F18661: var_9E = CreateFieldDefFile(var_8C, var_90, &HFF, arg_2C)
  loc_F1866B: Set var_88 = var_8C
  loc_F18677: X11 = CVar(var_9E)
  loc_F1868A: Set var_88 = Nothing
  loc_F1868D: Exit Sub
  loc_F1868E: ' Referenced from: F185C8
  loc_F18694: Call 0.Method_arg_50 (var_90, X11, var_9E, arg_18)
  loc_F186A9: Proc_183_57_104AA84(var_90, "MagLedger", arg_1C)
  loc_F186B5: Exit Sub
End Sub

Public Sub Proc_189_75_F07AFC(arg_C, arg_10, arg_14, arg_18) 'F07AFC
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_98 As String
  Dim var_9E As Integer
  loc_F07A1C: On Error Goto loc_F07AD4
  loc_F07A44: Call 0.Method_arg_60 (Me, arg_C, arg_10, arg_14)
  loc_F07A4F: Set var_88 = var_90
  loc_F07A6D: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F07A7A:   arg_2C = Me.FGrid1.Text
  loc_F07A85: End If
  loc_F07A8E: var_98 = MemVar_1F923B0 & "\FaMagCashBook.ttx"
  loc_F07A9B: Set var_8C = var_88 
  loc_F07AA7: var_9E = CreateFieldDefFile(var_8C, var_98, &HFF, arg_2C)
  loc_F07AB1: Set var_88 = var_8C
  loc_F07ABD: X11 = CVar(var_9E)
  loc_F07AD0: Set var_88 = Nothing
  loc_F07AD3: Exit Sub
  loc_F07AD4: ' Referenced from: F07A1C
  loc_F07ADA: Call 0.Method_arg_50 (var_98, X11, var_9E)
  loc_F07AEF: Proc_183_57_104AA84(var_98, "MagCashBook", arg_18)
  loc_F07AFB: Exit Sub
End Sub

Public Sub Proc_189_76_F05C28(arg_C, arg_10) 'F05C28
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_98 As String
  Dim var_9E As Integer
  loc_F05B4C: On Error Goto loc_F05BFE
  loc_F05B6E: Call 0.Method_arg_68 (Me, arg_C, arg_10)
  loc_F05B79: Set var_88 = var_90
  loc_F05B97: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F05BA4:   arg_2C = Me.FGrid1.Text
  loc_F05BAF: End If
  loc_F05BB8: var_98 = MemVar_1F923B0 & "\FaMonthSum.ttx"
  loc_F05BC5: Set var_8C = var_88 
  loc_F05BD1: var_9E = CreateFieldDefFile(var_8C, var_98, &HFF)
  loc_F05BDB: Set var_88 = var_8C
  loc_F05BE7: X11 = CVar(var_9E)
  loc_F05BFA: Set var_88 = Nothing
  loc_F05BFD: Exit Sub
  loc_F05BFE: ' Referenced from: F05B4C
  loc_F05C04: Call 0.Method_arg_50 (var_98, X11, var_9E)
  loc_F05C19: Proc_183_57_104AA84(var_98, "monthSum", arg_2C)
  loc_F05C25: Exit Sub
End Sub

Public Sub Proc_189_77_F0CEFC(arg_C) 'F0CEFC
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_9C As String
  Dim var_92 As Integer
  loc_F0CE18: On Error Goto loc_F0CED1
  loc_F0CE37: Call 0.Method_arg_70 (Me, arg_C)
  loc_F0CE42: Set var_88 = var_90
  loc_F0CE51: Call Proc_189_60_E84A60(7)
  loc_F0CE6A: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0CE77:   arg_2C = Me.FGrid1.Text
  loc_F0CE82: End If
  loc_F0CE8B: var_9C = MemVar_1F923B0 & "\FaGroupTrial.ttx"
  loc_F0CE98: Set var_8C = var_88 
  loc_F0CEA4: var_92 = CreateFieldDefFile(var_8C, var_9C, &HFF)
  loc_F0CEAE: Set var_88 = var_8C
  loc_F0CEBA: X11 = CVar(var_92)
  loc_F0CECD: Set var_88 = Nothing
  loc_F0CED0: Exit Sub
  loc_F0CED1: ' Referenced from: F0CE18
  loc_F0CED7: Call 0.Method_arg_50 (var_9C, X11, var_92)
  loc_F0CEEC: Proc_183_57_104AA84(var_9C, "VrAnal", arg_2C)
  loc_F0CEF8: Exit Sub
End Sub

Public Sub Proc_189_78_F079D4(arg_C, arg_10, arg_14) 'F079D4
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_98 As String
  Dim var_9E As Integer
  loc_F078F4: On Error Goto loc_F079A9
  loc_F07919: Call 0.Method_arg_6C (Me, arg_C, arg_10)
  loc_F07924: Set var_88 = var_90
  loc_F07942: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0794F:   arg_2C = Me.FGrid1.Text
  loc_F0795A: End If
  loc_F07963: var_98 = MemVar_1F923B0 & "\FaMonthSum.ttx"
  loc_F07970: Set var_8C = var_88 
  loc_F0797C: var_9E = CreateFieldDefFile(var_8C, var_98, &HFF, arg_2C)
  loc_F07986: Set var_88 = var_8C
  loc_F07992: X11 = CVar(var_9E)
  loc_F079A5: Set var_88 = Nothing
  loc_F079A8: Exit Sub
  loc_F079A9: ' Referenced from: F078F4
  loc_F079AF: Call 0.Method_arg_50 (var_98, X11, var_9E)
  loc_F079C4: Proc_183_57_104AA84(var_98, "monthSumVrAnal", arg_14)
  loc_F079D0: Exit Sub
End Sub

Public Sub Proc_189_79_F0D3AC(arg_C, arg_10, arg_14, arg_18, arg_1C) 'F0D3AC
  'Data Table: 5167A4
  Dim var_8C As MSHFlexGrid
  Dim arg_2C As Variant
  Dim var_98 As String
  Dim var_9E As Integer
  loc_F0D2C8: On Error Goto loc_F0D383
  loc_F0D2F3: Call 0.Method_arg_74 (Me, arg_C, arg_10, arg_14)
  loc_F0D2FE: Set var_88 = var_90
  loc_F0D31C: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F0D329:   arg_2C = Me.FGrid1.Text
  loc_F0D334: End If
  loc_F0D33D: var_98 = MemVar_1F923B0 & "\FaMonthSum.ttx"
  loc_F0D34A: Set var_8C = var_88 
  loc_F0D356: var_9E = CreateFieldDefFile(var_8C, var_98, &HFF, arg_2C)
  loc_F0D360: Set var_88 = var_8C
  loc_F0D36C: X11 = CVar(var_9E)
  loc_F0D37F: Set var_88 = Nothing
  loc_F0D382: Exit Sub
  loc_F0D383: ' Referenced from: F0D2C8
  loc_F0D389: Call 0.Method_arg_50 (var_98, X11, var_9E, arg_18)
  loc_F0D39E: Proc_183_57_104AA84(var_98, "VrRegister", arg_1C)
  loc_F0D3AA: Exit Sub
End Sub
