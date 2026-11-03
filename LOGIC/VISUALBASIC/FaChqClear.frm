VERSION 5.00
Begin VB.Form FaChqClear
  Caption = "Cheque/DD Clearing Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaChqClear.frx":0
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11580
  ClientHeight = 7320
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11580
    Height = 450
    TabIndex = 22
  End
  Begin DataGrid DGParty
    Left = 990
    Top = 4995
    Width = 5640
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 16
  End
  Begin DataGrid DGBank
    Left = 6780
    Top = 4965
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HC00000&
    Left = 3420
    Top = 2520
    Width = 1395
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
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
    Left = 6135
    Top = 7350
    Width = 2505
    Height = 1830
    Visible = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = -15
      Width = 2325
      Height = 1830
      TabStop = 0   'False
      TabIndex = 18
    End
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 3420
    Top = 1575
    Width = 4935
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
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
    Index = 1
    ForeColor = &HC00000&
    Left = 3420
    Top = 1260
    Width = 4935
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
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
    BackColor = &HC0FFFF&
    ForeColor = &H0&
    Left = 270
    Top = 4110
    Width = 690
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 3420
    Top = 2205
    Width = 1395
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
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
    Index = 2
    ForeColor = &HC00000&
    Left = 3420
    Top = 1890
    Width = 1395
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
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
    ForeColor = &HC00000&
    Left = 3420
    Top = 945
    Width = 1395
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
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
  Begin MSHFlexGrid FGrid
    Left = 345
    Top = 2850
    Width = 11775
    Height = 5505
    TabIndex = 6
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 345
    Width = 180
    Height = 540
    TabIndex = 21
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
  Begin Label Label1
    Caption = "(Not Applicable in case of multiple Debit && Credit Vouchers)"
    Index = 5
    ForeColor = &H80&
    Left = 8385
    Top = 1590
    Width = 3780
    Height = 480
    TabIndex = 20
    AutoSize = -1  'True
    WordWrap = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Status(Clear./UnClea/All)"
    Index = 2
    ForeColor = &HC00000&
    Left = 1035
    Top = 2535
    Width = 2340
    Height = 240
    TabIndex = 19
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
  Begin Label Label1
    Caption = "Party Account"
    Index = 0
    ForeColor = &HC00000&
    Left = 1035
    Top = 1590
    Width = 1320
    Height = 240
    TabIndex = 15
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
  Begin Label LblType
    Caption = " "
    Index = 1
    ForeColor = &H80&
    Left = 6270
    Top = 2220
    Width = 420
    Height = 225
    TabIndex = 14
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblType
    Caption = " "
    Index = 0
    ForeColor = &H80&
    Left = 6270
    Top = 1875
    Width = 435
    Height = 225
    TabIndex = 13
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Bank Account"
    Index = 28
    ForeColor = &HC00000&
    Left = 1035
    Top = 1275
    Width = 1305
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
  Begin Label Label1
    Caption = "Balance As Per Book"
    Index = 1
    ForeColor = &HC00000&
    Left = 1035
    Top = 2235
    Width = 1995
    Height = 240
    TabIndex = 10
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
  Begin Label Label1
    Caption = "Balance As Per Bank"
    Index = 4
    ForeColor = &HC00000&
    Left = 1035
    Top = 1905
    Width = 1995
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
  Begin Label Label1
    Caption = "UpTo Date"
    Index = 3
    ForeColor = &HC00000&
    Left = 1035
    Top = 960
    Width = 990
    Height = 240
    TabIndex = 8
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

Attribute VB_Name = "FaChqClear"

Private global_64 As Integer
Private global_66 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) 'F3FFF8
  'Data Table: 48ED04
  Dim var_98 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F3FEEC: Call Proc_194_42_E84130()
  loc_F3FEFD: If (Index = 0) Then
  loc_F3FF13:   Me.FGrid.CellBackColor = CVar(CLng("12648447"))
  loc_F3FF2E:   var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F3FF6D:   Set var_108 = Me.TxtGrid
  loc_F3FF73:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_F3FF7B:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_F3FFAC:   var_114 = CLng(Me.FGrid.Col)
  loc_F3FFBC:   If Not (var_114 = CLng(&HB)) Then
  loc_F3FFC6:     If Not (var_114 = CLng(&HC)) Then
  loc_F3FFD0:       If (var_114 = CLng(&HD)) Then
  loc_F3FFD3:       End If
  loc_F3FFD3:     End If
  loc_F3FFDC:     If (global_66 = 0) Then
  loc_F3FFE7:       var_110 = "{Home}+{End}"
  loc_F3FFED:       Proc_303_0_FB9B68(CStr(Me.FGrid.TextMatrix)), 0, var_114)
  loc_F3FFF5:     End If
  loc_F3FFF5:   End If
  loc_F3FFF5: End If
  loc_F3FFF5: Exit Sub
  loc_F3FFF6: CExtInstUnk
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '109E530
  'Data Table: 48ED04
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim var_DC As Variant
  loc_109E280: If (KeyCode = 0) Then
  loc_109E28D:   If (CLng(Shift) = &H1B) Then
  loc_109E29D:     Set var_8C = Me.TxtGrid
  loc_109E2A3:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_109E2BD:     Set var_98 = Me.TxtGrid
  loc_109E2C3:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_109E2CB:     var_9C.Text = var_90.Tag
  loc_109E2E7:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_109E2EC:     Call Proc_194_42_E84130(arg_14)
  loc_109E2F5:     Set var_8C = Me.FGrid
  loc_109E312:     Set var_8C = Me.TxtGrid
  loc_109E318:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_109E320:     var_90.Visible = FGrid.DispID_8001
  loc_109E32C:     Exit Sub
  loc_109E32D:   End If
  loc_109E340:   var_B0 = CLng(Me.FGrid.Col)
  loc_109E350:   If Not (var_B0 = CLng(&HB)) Then
  loc_109E35A:     If (var_B0 = CLng(&HC)) Then
  loc_109E35D:     End If
  loc_109E39D:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_66 = &HFF))) Then
  loc_109E3A6:       Call Proc_194_36_12B93C4(KeyCode, var_B2)
  loc_109E3B1:       If (var_B2 = &HFF) Then
  loc_109E3CC:         var_AC = Me.FGrid.Col
  loc_109E411:         Proc_183_25_11BD654(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, CByte(&HE))
  loc_109E426:       End If
  loc_109E426:     End If
  loc_109E429:   Else
  loc_109E430:     If (var_B0 = CLng(&HD)) Then
  loc_109E473:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_66 = &HFF))) Then
  loc_109E47C:         Call Proc_194_36_12B93C4(KeyCode, var_B2, 0, CByte(CLng(var_AC)))
  loc_109E487:         If (var_B2 = &HFF) Then
  loc_109E4C5:           If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_109E4E1:             var_DC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_109E4F0:             Me.FGrid.Row = var_DC
  loc_109E503:             Set var_8C = Me.FGrid
  loc_109E517:           Else
  loc_109E51B:             Set var_8C = Me.FGrid
  loc_109E52C:           End If
  loc_109E52C:         End If
  loc_109E52C:       End If
  loc_109E52C:     End If
  loc_109E52C:   End If
  loc_109E52C: End If
  loc_109E52C: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E52540
  'Data Table: 48ED04
  Dim var_A0 As Long
  loc_E5250F: Proc_183_46_E070C0(arg_10)
  loc_E52520: If (KeyAscii = 0) Then
  loc_E52536:   var_A0 = CLng(Me.FGrid.Col)
  loc_E5253F: End If
  loc_E5253F: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E8F564
  'Data Table: 48ED04
  loc_E8F4F8: On Error Goto loc_E8F4FC
  loc_E8F4FB: Exit Sub
  loc_E8F4FC: ' Referenced from: E8F4F8
  loc_E8F504: Set var_88 = Err()
  loc_E8F50A: Call 0.Method_arg_1C (var_8C)
  loc_E8F51B: If (var_8C <> 0) Then
  loc_E8F526:   Set var_88 = Err()
  loc_E8F52C:   Call 0.Method_arg_2C (var_90)
  loc_E8F54D:   MsgBox(CVar(var_90), &H40, "Validation", var_E0, var_100)
  loc_E8F560: End If
  loc_E8F560: Exit Sub
  loc_E8F561:  = 
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21798
  'Data Table: 48ED04
  Dim arg_10 As Integer
  loc_E21780: If (Cancel = 0) Then
  loc_E21789:   Call Proc_194_36_12B93C4(Cancel, var_88)
  loc_E21792:   arg_10 = Not(var_88)
  loc_E21795: End If
  loc_E21795: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EDF584
  'Data Table: 48ED04
  Dim var_88 As String
  Dim var_94 As TextBox
  loc_EDF4D0: On Error Goto loc_EDF55C
  loc_EDF4F6: Call Proc_194_41_F770B8(Proc_5_1_100CB50("ADD", Me))
  loc_EDF501: Call Proc_194_40_F99010(global_60)
  loc_EDF50B: var_88 = CStr(MemVar_1F920EC)
  loc_EDF519: Set var_8C = Me.Txt
  loc_EDF51F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EDF527: var_94.Text = var_88
  loc_EDF541: Set var_8C = Me.Txt
  loc_EDF547: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EDF54F: var_94.SetFocus
  loc_EDF55B: Exit Sub
  loc_EDF55C: ' Referenced from: EDF4D0
  loc_EDF562: Call 0.Method_arg_50 (var_88)
  loc_EDF577: Proc_183_57_104AA84(var_88, "TopCtrl1_eAdd")
  loc_EDF583: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F30844
  'Data Table: 48ED04
  Dim var_C4 As Variant
  loc_F30740: On Error Goto loc_F3081B
  loc_F3077A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_F30792:   var_108 = "INI"
  loc_F307A0:   Call Proc_194_41_F770B8(Proc_5_1_100CB50(var_108, Me))
  loc_F307BE:   Me.FGrid.Rows = 1
  loc_F307DB:   var_C4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F307E3:   Set var_114 = Me.FGrid
  loc_F30812:   Me.FGrid.FixedRows = 1
  loc_F3081A: End If
  loc_F3081A: Exit Sub
  loc_F3081B: ' Referenced from: F30740
  loc_F30821: Call 0.Method_arg_50 (var_108, FGrid.DispID_10000)
  loc_F30836: Proc_183_57_104AA84(var_108, "TopCtrl1_eCancel")
  loc_F30842: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18BF0
  'Data Table: 48ED04
  loc_E18BE5: Me.Global.Unload Me
  loc_E18BED: Exit Sub
  loc_E18BEE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '12E7B34
  'Data Table: 48ED04
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_124 As String
  Dim var_136 As Integer
  Dim var_C0 As Variant
  loc_12E7480: On Error Goto loc_12E7B0C
  loc_12E748C: var_A0 = Me.RecordCount
  loc_12E749A: If (var_A0 = 0) Then
  loc_12E74B6:   MsgBox("No Record Present For Printing", 0, var_E0, var_100, var_120)
  loc_12E74C6:   Exit Sub
  loc_12E74C7: End If
  loc_12E74CA: var_9C = "BankReconciliation"
  loc_12E74F4: Set var_12C = global_84 
  loc_12E7500: var_136 = CreateFieldDefFile(var_12C, MemVar_1F923B0 & "\" & var_9C & ".ttx")
  loc_12E750D: global_84 = var_12C
  loc_12E7514: var_B0 = CVar(var_136) 'Integer
  loc_12E7517: var_94 = var_B0 'Variant
  loc_12E7537: var_124 = MemVar_1F923B0 & "\"
  loc_12E754E: Call 0.Method_arg_1C (var_124 & var_9C & ".RPT", var_B0, var_12C)
  loc_12E7559: MemVar_1F921E4 = var_12C
  loc_12E757A: Call 0.Method_arg_90 (var_12C, var_A0, var_96)
  loc_12E7582: Call 0.Method_arg_24 (1, var_136)
  loc_12E758E: For var_13A =  To CInt(var_A0): &HFF = var_13A 'Integer
  loc_12E75A7:   Call 0.Method_arg_90 (var_12C, CLng(var_96))
  loc_12E75AF:   Call 0.Method_arg_20 (var_140)
  loc_12E75B7:   Call 0.Method_arg_30 (var_124)
  loc_12E75CD:   var_150 = Ucase(CVar(var_124)) 'Variant
  loc_12E75E3:   var_C0 = "Title"
  loc_12E75FD:   If (var_150 = Ucase(var_C0)) Then
  loc_12E760B:     Proc_6_17_EAA2B0(var_C0)
  loc_12E7627:     Call 0.Method_arg_90 (var_12C, CLng(var_96), var_140)
  loc_12E762F:     Call 0.Method_arg_20 (CStr(var_C0))
  loc_12E7637:     Call 0.Method_arg_38 (var_9C)
  loc_12E764C:   Else
  loc_12E765D:     var_E0 = Ucase("UpToDate")
  loc_12E766E:     If (var_150 = var_E0) Then
  loc_12E767C:       Set var_12C = Me.Txt
  loc_12E7682:       Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0))
  loc_12E7691:       Proc_6_17_EAA2B0(var_E0, CVar(var_140))
  loc_12E76AD:       Call 0.Method_arg_90 (var_154, CLng(var_96), var_158)
  loc_12E76B5:       Call 0.Method_arg_20 (CStr(var_E0))
  loc_12E76BD:       Call 0.Method_arg_38 (var_140)
  loc_12E76D8:     Else
  loc_12E76E9:       var_E0 = Ucase("BankAc")
  loc_12E76FA:       If (var_150 = var_E0) Then
  loc_12E7708:         Set var_12C = Me.Txt
  loc_12E770E:         Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1))
  loc_12E771D:         Proc_6_17_EAA2B0(var_E0, CVar(var_140))
  loc_12E7739:         Call 0.Method_arg_90 (var_154, CLng(var_96), var_158)
  loc_12E7741:         Call 0.Method_arg_20 (CStr(var_E0))
  loc_12E7749:         Call 0.Method_arg_38 (var_140)
  loc_12E7764:       Else
  loc_12E7775:         var_E0 = Ucase("PartyAc")
  loc_12E7786:         If (var_150 = var_E0) Then
  loc_12E7794:           Set var_12C = Me.Txt
  loc_12E779A:           Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(4))
  loc_12E77A9:           Proc_6_17_EAA2B0(var_E0, CVar(var_140))
  loc_12E77C5:           Call 0.Method_arg_90 (var_154, CLng(var_96), var_158)
  loc_12E77CD:           Call 0.Method_arg_20 (CStr(var_E0))
  loc_12E77D5:           Call 0.Method_arg_38 (var_140)
  loc_12E77F0:         Else
  loc_12E7801:           var_E0 = Ucase("BankBal")
  loc_12E7812:           If (var_150 = var_E0) Then
  loc_12E7820:             Set var_12C = Me.Txt
  loc_12E7826:             Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(2))
  loc_12E7835:             Proc_6_17_EAA2B0(var_E0, CVar(var_140))
  loc_12E7851:             Call 0.Method_arg_90 (var_154, CLng(var_96), var_158)
  loc_12E7859:             Call 0.Method_arg_20 (CStr(var_E0))
  loc_12E7861:             Call 0.Method_arg_38 (var_140)
  loc_12E787C:           Else
  loc_12E788D:             var_E0 = Ucase("BankBalType")
  loc_12E789E:             If (var_150 = var_E0) Then
  loc_12E78AA:               Set var_12C = Me.LblType
  loc_12E78B0:               Call 0.Method_TopCtrl1_UnknownEvent_140 (0)
  loc_12E78BF:               Proc_6_17_EAA2B0(var_E0, CVar(var_140))
  loc_12E78DB:               Call 0.Method_arg_90 (var_154, CLng(var_96), var_158)
  loc_12E78E3:               Call 0.Method_arg_20 (CStr(var_E0))
  loc_12E78EB:               Call 0.Method_arg_38 (var_140)
  loc_12E7906:             Else
  loc_12E7917:               var_E0 = Ucase("BookBal")
  loc_12E7928:               If (var_150 = var_E0) Then
  loc_12E7936:                 Set var_12C = Me.Txt
  loc_12E793C:                 Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(3))
  loc_12E794B:                 Proc_6_17_EAA2B0(var_E0, CVar(var_140))
  loc_12E7967:                 Call 0.Method_arg_90 (var_154, CLng(var_96), var_158)
  loc_12E796F:                 Call 0.Method_arg_20 (CStr(var_E0))
  loc_12E7977:                 Call 0.Method_arg_38 (var_140)
  loc_12E7992:               Else
  loc_12E79A3:                 var_E0 = Ucase("BookBalType")
  loc_12E79B4:                 If (var_150 = var_E0) Then
  loc_12E79C0:                   Set var_12C = Me.LblType
  loc_12E79C6:                   Call 0.Method_TopCtrl1_UnknownEvent_140 (1)
  loc_12E79D5:                   Proc_6_17_EAA2B0(var_E0, CVar(var_140))
  loc_12E79F1:                   Call 0.Method_arg_90 (var_154, CLng(var_96), var_158)
  loc_12E79F9:                   Call 0.Method_arg_20 (CStr(var_E0))
  loc_12E7A01:                   Call 0.Method_arg_38 (var_140)
  loc_12E7A1C:                 Else
  loc_12E7A2D:                   var_E0 = Ucase("Status")
  loc_12E7A3E:                   If (var_150 = var_E0) Then
  loc_12E7A4C:                     Set var_12C = Me.Txt
  loc_12E7A52:                     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(5))
  loc_12E7A61:                     Proc_6_17_EAA2B0(var_E0, CVar(var_140))
  loc_12E7A69:                     var_124 = CStr(var_E0)
  loc_12E7A7D:                     Call 0.Method_arg_90 (var_154, CLng(var_96), var_158)
  loc_12E7A85:                     Call 0.Method_arg_20 (var_124)
  loc_12E7A8D:                     Call 0.Method_arg_38 (var_140)
  loc_12E7AA5:                   End If
  loc_12E7AA5:                 End If
  loc_12E7AA5:               End If
  loc_12E7AA5:             End If
  loc_12E7AA5:           End If
  loc_12E7AA5:         End If
  loc_12E7AA5:       End If
  loc_12E7AA5:     End If
  loc_12E7AA5:   End If
  loc_12E7AA8: Next var_13A 'Integer
  loc_12E7AC9: Call 0.Method_arg_64 (var_12C, CVar(global_84))
  loc_12E7AD1: Call 0.Method_arg_2C (var_D0)
  loc_12E7ADF: Call 0.Method_arg_150 (var_F0)
  loc_12E7AEA: Call 0.Method_arg_50 (var_124)
  loc_12E7B03: Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_12E7B0B: Exit Sub
  loc_12E7B0C: ' Referenced from: 12E7480
  loc_12E7B12: Call 0.Method_arg_50 (var_124, var_124)
  loc_12E7B27: Proc_183_57_104AA84(var_124, "TopCtrl1_ePrn")
  loc_12E7B33: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B074
  'Data Table: 48ED04
  Dim Me As Recordset15
  loc_E0B06B: Me.Requery -1
  loc_E0B070: Exit Sub
  loc_E0B071: StAryRecCopy
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '130E3DC
  'Data Table: 48ED04
  Dim var_8A As Integer
  Dim unk_48ED2C As Connection15
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_2AC As Variant
  Dim var_2CC As Variant
  Dim var_340 As Variant
  Dim var_360 As Variant
  Dim var_384 As Variant
  Dim var_388 As String
  Dim var_3D8 As Double
  Dim var_27C As Variant
  Dim var_398 As Variant
  Dim var_3E8 As Variant
  Dim var_408 As Variant
  Dim var_3D0 As MSHFlexGrid
  Dim var_478 As Variant
  Dim var_498 As Variant
  Dim var_4BC As Variant
  Dim var_3CC As Variant
  loc_130DD20: On Error Goto loc_130E39D
  loc_130DD26: Call Proc_194_39_DFFECC(var_96)
  loc_130DD31: If (var_96 = &HFF) Then
  loc_130DD34:   Exit Sub
  loc_130DD35: End If
  loc_130DD37: var_8A = &HFF
  loc_130DD43: unk_48ED2C.BeginTrans var_9C
  loc_130DD6D: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_B4 'Integer
  loc_130DD77:   var_C4 = CVar(CLng(var_92)) 'Long
  loc_130DD7F:   var_E4 = CVar(CLng(1)) 'Long
  loc_130DDBB:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_130DDC2:     var_C4 = CVar(CLng(var_92)) 'Long
  loc_130DDCA:     var_E4 = CVar(CLng(3)) 'Long
  loc_130DE06:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "HPOST") Then
  loc_130DE15:       var_E4 = CVar(CLng(&HB)) 'Long
  loc_130DE66:       Proc_183_7_EB0C44(var_1C8, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_92)), var_E4, CVar(CLng(var_92)))
  loc_130DE97:       Proc_183_7_EB0C44(var_26C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_92)), var_E4)
  loc_130DEA0:       var_2AC = CVar(CLng(var_92)) 'Long
  loc_130DEA8:       var_2CC = CVar(CLng(1)) 'Long
  loc_130DEF1:       var_3D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_130DF29:       var_27C = "Update Ledger Set Chq_No='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "',Chq_Date=" & var_1C8 & ",Clg_Date=" & var_26C 
  loc_130DF5F:       unk_48ED2C.Execute CStr(var_27C & " Where DocID='" & CVar(CStr(Me.FGrid.TextMatrix))) & "' AND V_SNO=" & CVar(var_3D8)), var_3CC, -1
  loc_130E006:       Proc_183_7_EB0C44(var_1C8, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_92)), CVar(CLng(&HB)), CVar(CLng(var_92)), var_3D0, var_3D8)
  loc_130E037:       Proc_183_7_EB0C44(var_26C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_92)), CVar(CLng(2)), CVar(CLng(var_92)))
  loc_130E040:       var_2AC = CVar(CLng(var_92)) 'Long
  loc_130E048:       var_2CC = CVar(CLng(1)) 'Long
  loc_130E067:       var_340 = CVar(CLng(var_92)) 'Long
  loc_130E06F:       var_360 = CVar(CLng(2)) 'Long
  loc_130E07E:       var_384 = Me.FGrid.TextMatrix)
  loc_130E098:       var_3E8 = CVar(CLng(var_92)) 'Long
  loc_130E0A0:       var_408 = CVar(CLng(9)) 'Long
  loc_130E0C9:       var_478 = CVar(CLng(var_92)) 'Long
  loc_130E0D1:       var_498 = CVar(CLng(7)) 'Long
  loc_130E0E0:       var_4BC = Me.FGrid.TextMatrix)
  loc_130E121:       var_27C = "Update Ledger Set Chq_No='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "',Chq_Date=" & var_1C8 & ",Clg_Date=" & var_26C 
  loc_130E149:       var_398 = CVar((Val(CStr(var_384)) - CDbl(1))) 'Double
  loc_130E156:       var_3CC = var_27C & " Where DocID='" & CVar(CStr(Me.FGrid.TextMatrix))) & "' AND V_SNO=" & CVar(Val(CStr(var_384))) & " AND AmtCr=" 
  loc_130E18C:       unk_48ED2C.Execute CStr(var_3CC & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & " AND ContraSub='" & CVar(CStr(var_4BC)) & "'"), var_520, -1
  loc_130E1EF:     Else
  loc_130E24C:       Proc_183_7_EB0C44(var_1C8, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_92)), CVar(CLng(&HB)), CVar(CLng(var_92)), var_524, var_4BC)
  loc_130E27D:       Proc_183_7_EB0C44(var_26C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_92)), var_498, var_478)
  loc_130E286:       var_2AC = CVar(CLng(var_92)) 'Long
  loc_130E28E:       var_2CC = CVar(CLng(1)) 'Long
  loc_130E2DE:       var_27C = "Update Ledger Set Chq_No='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "',Chq_Date=" & var_1C8 & ",Clg_Date=" & var_26C 
  loc_130E309:       unk_48ED2C.Execute CStr(var_27C & " Where DocID='" & CVar(CStr(Me.FGrid.TextMatrix))) & "'"), var_384, -1
  loc_130E349:     End If
  loc_130E349:   End If
  loc_130E34C: Next var_B4 'Integer
  loc_130E357: unk_48ED2C.CommitTrans
  loc_130E35C: Call Proc_194_38_16D95A4()
  loc_130E363: var_8A = 0
  loc_130E37B: var_388 = "INI"
  loc_130E389: Call Proc_194_41_F770B8(Proc_5_1_100CB50(var_388, Me), global_60)
  loc_130E399: Set var_88 = Nothing
  loc_130E39C: Exit Sub
  loc_130E39D: ' Referenced from: 130DD20
  loc_130E3A3: If (var_8A = &HFF) Then
  loc_130E3AC:   unk_48ED2C.RollbackTrans
  loc_130E3B1: End If
  loc_130E3B7: Call 0.Method_arg_50 (var_388)
  loc_130E3CC: Proc_183_57_104AA84(var_388, "TopCtrl1_eSave")
  loc_130E3D8: Exit Sub
  loc_130E3D9: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F4A0E4
  'Data Table: 48ED04
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F49FDB: Me.DGParty.Visible = False
  loc_F49FFA: If (Me.RecordCount > 0) Then
  loc_F4A039:   Set var_B4 = Me.Txt
  loc_F4A03F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4A047:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4A07A:   var_B0 = Me.Fields.Item("Name")
  loc_F4A099:   Set var_B4 = Me.Txt
  loc_F4A09F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4A0A7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4A0BD: End If
  loc_F4A0C8: Set var_A8 = Me.Txt
  loc_F4A0CE: Call 0.Method_DGParty_UnknownEvent_90 (CInt(4))
  loc_F4A0D6: var_B0.SetFocus
  loc_F4A0E2: Exit Sub
End Sub

Private Sub Form_Load() '122AE20
  'Data Table: 48ED04
  Dim var_94 As Variant
  Dim var_BC As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_C0 As TextBox
  Dim var_C8 As DataGrid
  Dim var_CC As TextBox
  Dim var_D4 As DataGrid
  Dim var_AC As String
  Dim Me As Recordset15
  loc_122A914: On Error Goto loc_122ADF8
  loc_122A921: Set var_A8 = Me.TopCtrl1
  loc_122A927: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_122A935: Call 0.Method_arg_50 (var_AC)
  loc_122A93D: var_BC = CVar(var_AC) 'String
  loc_122A945: Set var_A8 = Me.TopCtrl1
  loc_122A94B: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_BC)
  loc_122A95D: Call 0.Method_arg_74 (CDbl(0))
  loc_122A969: Call 0.Method_arg_7C (CDbl(0))
  loc_122A976: Call 0.Method_Me4 (CDbl(11900))
  loc_122A983: Call 0.Method_MeC (CDbl(7725))
  loc_122A99B: Me.FGrid.Height = CVar(CDbl(5000))
  loc_122A9B1: Set var_A8 = Me.Txt
  loc_122A9B7: Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_122A9D6: Me.DGBank.Left = CVar(var_C0.Left)
  loc_122A9F2: Set var_C8 = Me.Txt
  loc_122A9F8: Call 0.Method_Form_Load0 (CInt(1), var_CC)
  loc_122AA13: Set var_A8 = Me.Txt
  loc_122AA19: Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_122AA31: var_94 = CVar(((var_C0.Top + var_CC.Height) + CDbl(&H1E))) 'Single
  loc_122AA40: Me.DGBank.Top = CVar(var_C0.Left)
  loc_122AA60: Set var_A8 = Me.Txt
  loc_122AA66: Call 0.Method_Form_Load0 (CInt(4), var_C0)
  loc_122AA85: Me.DGParty.Left = CVar(var_C0.Left)
  loc_122AAA1: Set var_C8 = Me.Txt
  loc_122AAA7: Call 0.Method_Form_Load0 (CInt(4), var_CC)
  loc_122AAC2: Set var_A8 = Me.Txt
  loc_122AAC8: Call 0.Method_Form_Load0 (CInt(4), var_C0)
  loc_122AAE0: var_94 = CVar(((var_C0.Top + var_CC.Height) + CDbl(&H1E))) 'Single
  loc_122AAE9: Set var_D4 = Me.DGParty
  loc_122AAEF: var_D4.Top = CVar(var_C0.Left)
  loc_122AB0D: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_122AB1E: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_122AB2F: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_122AB40: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_122AB51: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_122AB62: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_122AB73: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_122AB84: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_122AB95: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_122ABA6: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_122ABC0: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_122ABCE: Set var_A8 = MemVar_1F92044
  loc_122ABDD: Call 0.Method_Form_Load8 (var_A8)
  loc_122ABF3: Me.var_D4.Clone
  loc_122AC0D: Call 0.Method_arg_50 (var_A8, -1)
  loc_122AC3D: Me.Connection15.Execute "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_BC, -1
  loc_122AC4E: Set global_72 = var_A8
  loc_122AC7F: Me.Recordset15.CursorLocation = 3
  loc_122ACA9: var_BC = CVar("Select SubCode As Code,Name From SubGroup Where Nature in ('Bank') AND (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String
  loc_122ACB3: Me.Open var_BC, CVar(MemVar_1F921DC), 2
  loc_122ACC7: CVarUnk
  loc_122ACCC: VerifyVarObj
  loc_122ACD2: Set var_A8 = Me.DGBank
  loc_122ACD8: LateIdStAd
  loc_122AD02: Me.DGBank.CursorLocation = 3
  loc_122AD2C: var_BC = CVar("Select SubCode As Code,Name From SubGroup Where Nature <>'Bank' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String
  loc_122AD4A: CVarUnk
  loc_122AD4F: VerifyVarObj
  loc_122AD55: Set var_A8 = Me.DGParty
  loc_122AD5B: LateIdStAd
  loc_122AD85: Me.DGParty.CursorLocation = 3
  loc_122ADAF: var_BC = CVar("Select SubCode As Code,Name From SubGroup Where Nature in('Bank') AND LOGSITE_CODE='" & MemVar_1F92078 & "' Order by Name") 'String
  loc_122ADB9: r_BC, CVar(MemVar_1F921DC), 2 var_BC, CVar(MemVar_1F921DC), 2
  loc_122ADD0: Set var_A8 = Me
  loc_122ADD9: var_AC = "INI"
  loc_122ADE7: Call Proc_194_41_F770B8(Proc_5_1_100CB50(var_AC, var_A8, New, 3, -1, var_A8, New, 3), -1, var_A8, New)
  loc_122ADF2: Call Proc_194_34_129C200(3, -1)
  loc_122ADF7: Exit Sub
  loc_122ADF8: ' Referenced from: 122A914
  loc_122ADFE: Call 0.Method_arg_50 (var_AC, var_A8)
  loc_122AE13: Proc_183_57_104AA84(var_AC, "Form_Load")
  loc_122AE1F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E82B1C
  'Data Table: 48ED04
  loc_E82AB7: Set global_60 = Nothing
  loc_E82AC9: Set global_52 = Nothing
  loc_E82ADB: Set global_56 = Nothing
  loc_E82AED: Set global_80 = Nothing
  loc_E82AFF: Set global_72 = Nothing
  loc_E82B11: Set global_84 = Nothing
  loc_E82B18: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E00B90
  'Data Table: 48ED04
  loc_E00B89: Call Form_Unload(&HFF)
  loc_E00B8E: Exit Sub
  loc_E00B8F: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E661B0
  'Data Table: 48ED04
  loc_E66168: On Error Goto loc_E66186
  loc_E6617D: Proc_183_40_F30B0C(Me, KeyCode)
  loc_E66185: Exit Sub
  loc_E66186: ' Referenced from: E66168
  loc_E6618C: Call 0.Method_arg_50 (var_8C)
  loc_E661A1: Proc_183_57_104AA84(var_8C, "Form_KeyDown")
  loc_E661AD: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1195348
  'Data Table: 48ED04
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_100 As String
  Dim var_88 As ListView
  loc_1194F64: On Error Goto loc_119531E
  loc_1194F71: Set var_88 = Me.Txt
  loc_1194F77: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1194F85: Proc_183_28_E20B20(var_8C)
  loc_1194F91: Call Proc_194_42_E84130(var_8C)
  loc_1194F99: var_92 = Index
  loc_1194FA4: If (var_92 = CInt(1)) Then
  loc_1194FF5:   Set var_88 = Me.Txt
  loc_1194FFB:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1195003:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_119501B:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_119501E:     Exit Sub
  loc_119501F:   End If
  loc_119502C:   Set var_88 = Me.Txt
  loc_1195032:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_119503A:   var_A0 = var_8C.Text
  loc_119504C:   var_B0 = "Name"
  loc_1195087:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1195090:     Me.MoveFirst
  loc_11950B3:     Set var_88 = Me.Txt
  loc_11950B9:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_11950C1:     0 = var_8C.Text
  loc_11950DA:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_11950EF:   End If
  loc_11950F2: Else
  loc_11950FA:   If (var_92 = CInt(4)) Then
  loc_119514B:     Set var_88 = Me.Txt
  loc_1195151:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1195171:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1195174:       Exit Sub
  loc_1195175:     End If
  loc_1195182:     Set var_88 = Me.Txt
  loc_1195188:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1195190:     var_A0 = var_8C.Text
  loc_11951A2:     var_B0 = "Name"
  loc_11951DD:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_11951E6:       Me.MoveFirst
  loc_1195209:       Set var_88 = Me.Txt
  loc_119520F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1195217:       0 = var_8C.Text
  loc_1195230:       Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1195245:     End If
  loc_1195248:   Else
  loc_1195250:     If (var_92 = CInt(5)) Then
  loc_1195260:       ReDim var_F0(0 To 2)
  loc_1195277:       var_F0(0) = "Cleared"
  loc_1195279:       var_100 = "Un-Cleared"
  loc_1195286:       var_F0(1) = var_100
  loc_1195295:       var_F0(2) = "All"
  loc_11952AC:       global_88 = Array(var_F0)
  loc_11952EE:       Set global_104 = Proc_183_37_EFE3E8(Me.ListView, Me.Txt, 1)
  loc_1195312:       Me.ListView.Tag = CVar(CStr(Index))
  loc_119531D:     End If
  loc_119531D:   End If
  loc_119531D: End If
  loc_119531D: Exit Sub
  loc_119531E: ' Referenced from: 1194F64
  loc_1195324: Call 0.Method_arg_50 (var_A0, global_88)
  loc_1195339: Proc_183_57_104AA84(var_A0, "Txt_GotFocus")
  loc_1195345: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10B7C04
  'Data Table: 48ED04
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_AC As TextBox
  Dim var_B8 As TextBox
  Dim var_8C As DataGrid
  Dim var_98 As Frame
  loc_10B7958: On Error Goto loc_10B7BDB
  loc_10B7965: If (CLng(Shift) = &H1B) Then
  loc_10B7968:   Call Proc_194_42_E84130()
  loc_10B796D:   Exit Sub
  loc_10B796E: End If
  loc_10B7971: var_86 = KeyCode
  loc_10B797C: If (var_86 = CInt(1)) Then
  loc_10B79B5:   Proc_183_34_1305540(Me.DGBank, Me.Txt, KeyCode, global_52)
  loc_10B79C8: Else
  loc_10B79D0:   If (var_86 = CInt(4)) Then
  loc_10B79DE:     Set var_9C = Me.Txt
  loc_10B79FA:     Set var_90 = var_9C
  loc_10B7A09:     Proc_183_34_1305540(Me.DGParty, var_90, KeyCode, global_56, Shift, 0)
  loc_10B7A1C:   Else
  loc_10B7A24:     If (var_86 = CInt(5)) Then
  loc_10B7A31:       If (CLng(Shift) <> &H1B) Then
  loc_10B7A56:         Set var_8C = Me.Txt
  loc_10B7A5C:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_A0, 1)
  loc_10B7A64:         Shift = var_90.Left
  loc_10B7A76:         Set var_98 = Me.Txt
  loc_10B7A7C:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_A4)
  loc_10B7A84:         0 = var_9C.Top
  loc_10B7A96:         Set var_A8 = Me.Txt
  loc_10B7A9C:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_B0)
  loc_10B7AA4:         1 = var_AC.Height
  loc_10B7AB6:         Set var_B4 = Me.Txt
  loc_10B7ABC:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_B8)
  loc_10B7AC4:         var_BC = var_B8.Width
  loc_10B7B0C:         Proc_183_36_114886C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_10B7B30:       End If
  loc_10B7B30:     End If
  loc_10B7B30:   End If
  loc_10B7B30: End If
  loc_10B7B86: If (((CBool(Me.DGBank.Visible) = 0) And (CBool(Me.DGParty.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_10B7B9E:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10B7BA7:     Proc_183_29_E52C04(Shift, arg_14, CInt(var_A0), CInt((var_A4 + var_B0)))
  loc_10B7BAC:   End If
  loc_10B7BB4:   If (KeyCode <> CInt(0)) Then
  loc_10B7BCC:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10B7BD5:       Proc_183_30_E53180(Shift, arg_14, CInt(var_BC))
  loc_10B7BDA:     End If
  loc_10B7BDA:   End If
  loc_10B7BDA: End If
  loc_10B7BDA: Exit Sub
  loc_10B7BDB: ' Referenced from: 10B7958
  loc_10B7BE1: Call 0.Method_arg_50 (var_FC, 750)
  loc_10B7BF6: Proc_183_57_104AA84(var_FC, "Txt_KeyDown")
  loc_10B7C02: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EFC0D0
  'Data Table: 48ED04
  Dim var_86 As Integer
  loc_EFBFFB: Proc_183_46_E070C0(arg_10)
  loc_EFC003: var_86 = KeyAscii
  loc_EFC00E: If (var_86 = CInt(1)) Then
  loc_EFC02D:   If (CBool(Me.DGBank.Visible) = &HFF) Then
  loc_EFC03F:     var_A0 = "Name"
  loc_EFC05A:     Proc_183_41_1459C78(Me.Txt, KeyAscii, global_52, arg_10)
  loc_EFC069:   End If
  loc_EFC06C: Else
  loc_EFC074:   If (var_86 = CInt(4)) Then
  loc_EFC093:     If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_EFC0C0:       Proc_183_41_1459C78(Me.Txt, KeyAscii, global_56, arg_10, "Name")
  loc_EFC0CF:     End If
  loc_EFC0CF:   End If
  loc_EFC0CF: End If
  loc_EFC0CF: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E6CEDC
  'Data Table: 48ED04
  loc_E6CE9A: If (KeyCode = CInt(5)) Then
  loc_E6CEC9:   Proc_183_35_F29A04(Me.ListView, Me.Txt, KeyCode)
  loc_E6CED9: End If
  loc_E6CED9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4DFFC
  'Data Table: 48ED04
  loc_E4DFDA: Set var_88 = Me.Txt
  loc_E4DFE0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4DFEE: Proc_183_27_E22608(var_8C)
  loc_E4DFFA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '122731C
  'Data Table: 48ED04
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_94 As Variant
  Dim var_B0 As TextBox
  Dim Me As Recordset15
  Dim var_98 As String
  loc_1226E18: On Error Goto loc_12272F1
  loc_1226E1E: var_86 = Cancel
  loc_1226E29: If (var_86 = CInt(5)) Then
  loc_1226E47:   If (Me.FrmList.Visible = &HFF) Then
  loc_1226E57:     Set var_8C = Me.Txt
  loc_1226E5D:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1226E7C:     If (var_94.Text <> vbNullString) Then
  loc_1226E97:       Set var_94 = Me.ListView.SelectedItem
  loc_1226EAF:       Set var_AC = Me.Txt
  loc_1226EB5:       Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_1226EBD:       var_B0.Text = var_94.Text
  loc_1226ED3:     End If
  loc_1226ED3:   End If
  loc_1226EE1:   Set var_8C = Me.Txt
  loc_1226EE7:   Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_1226EEF:   var_98 = var_94.Tag
  loc_1226F06:   If (var_98 <> vbNullString) Then
  loc_1226F09:     Call Proc_194_38_16D95A4(var_86)
  loc_1226F21:     Me.FGrid.Row = 1
  loc_1226F2D:     Set var_8C = Me.FGrid
  loc_1226F50:     Me.FGrid.Col = CVar(CLng(&HD))
  loc_1226F58:   End If
  loc_1226F5B: Else
  loc_1226F63:   If (var_86 = CInt(1)) Then
  loc_1226FB4:     Set var_8C = Me.Txt
  loc_1226FBA:     Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_1226FC2:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_1226FDA:     If (FGrid.DispID_8001 Or (var_98 = vbNullString)) Then
  loc_1226FEA:       Set var_8C = Me.Txt
  loc_1226FF0:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_1226FF8:       var_94.Text = vbNullString
  loc_1227011:       Set var_8C = Me.Txt
  loc_1227017:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_122701F:       var_94.Tag = vbNullString
  loc_122702E:     Else
  loc_1227069:       Set var_AC = Me.Txt
  loc_122706F:       Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_1227077:       var_B0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12270AA:       var_94 = Me.Fields.Item("Code")
  loc_12270C8:       Set var_AC = Me.Txt
  loc_12270CE:       Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_12270D6:       var_B0.Tag = CStr(var_94.Value)
  loc_12270EC:     End If
  loc_12270EF:   Else
  loc_12270F7:     If (var_86 = CInt(4)) Then
  loc_1227148:       Set var_8C = Me.Txt
  loc_122714E:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_122716E:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_122717E:         Set var_8C = Me.Txt
  loc_1227184:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_122718C:         var_94.Text = vbNullString
  loc_12271A5:         Set var_8C = Me.Txt
  loc_12271AB:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_12271B3:         var_94.Tag = vbNullString
  loc_12271C2:       Else
  loc_12271FD:         Set var_AC = Me.Txt
  loc_1227203:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_122720B:         var_B0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_122723E:         var_94 = Me.Fields.Item("Code")
  loc_122724F:         var_98 = CStr(var_94.Value)
  loc_122725C:         Set var_AC = Me.Txt
  loc_1227262:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_122726A:         var_B0.Tag = var_98
  loc_1227280:       End If
  loc_1227283:     Else
  loc_122728B:       If (var_86 = CInt(0)) Then
  loc_122729B:         Set var_8C = Me.Txt
  loc_12272A1:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_12272B8:         Call 0.Method_arg_184 (var_94)
  loc_12272CA:         Set var_B0 = Me.Txt
  loc_12272D0:         Call 0.Method_Txt_Validate0 (Cancel, var_DC)
  loc_12272D8:         Me.Txt.Text = var_98
  loc_12272EB:         Call Proc_194_38_16D95A4(var_98)
  loc_12272F0:       End If
  loc_12272F0:     End If
  loc_12272F0:   End If
  loc_12272F0: End If
  loc_12272F0: Exit Sub
  loc_12272F1: ' Referenced from: 1226E18
  loc_12272F7: Call 0.Method_arg_50 (var_98)
  loc_12272FF: var_E4 = "Txt_Validate"
  loc_122730C: Proc_183_57_104AA84(var_98)
  loc_1227318: Exit Sub
End Sub

Private Sub DGBank_UnknownEvent_9 'F4C1E4
  'Data Table: 48ED04
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4C0DB: Me.DGBank.Visible = False
  loc_F4C0FA: If (Me.RecordCount > 0) Then
  loc_F4C139:   Set var_B4 = Me.Txt
  loc_F4C13F:   Call 0.Method_DGBank_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4C147:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4C17A:   var_B0 = Me.Fields.Item("Name")
  loc_F4C199:   Set var_B4 = Me.Txt
  loc_F4C19F:   Call 0.Method_DGBank_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4C1A7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4C1BD: End If
  loc_F4C1C8: Set var_A8 = Me.Txt
  loc_F4C1CE: Call 0.Method_DGBank_UnknownEvent_90 (CInt(1))
  loc_F4C1D6: var_B0.SetFocus
  loc_F4C1E2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E60BB4
  'Data Table: 48ED04
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E60B7F: Me.FGrid.BackColorSel = CVar(CLng("16308221"))
  loc_E60B92: Set var_A8 = Me.TxtGrid
  loc_E60B98: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60BA0: var_AC.Visible = False
  loc_E60BAC: Call Proc_194_42_E84130()
  loc_E60BB1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67890
  'Data Table: 48ED04
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6784C: Set var_88 = Me.TxtGrid
  loc_E67852: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6786C: If (var_8C.Visible = 0) Then
  loc_E67885:   Me.FGrid.BackColorSel = CVar(CLng(global_76))
  loc_E6788D: End If
  loc_E6788D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1D470
  'Data Table: 48ED04
  loc_E1D467: Me.FGrid.CellBackColor = CVar(CLng("12648447"))
  loc_E1D46F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFFE94
  'Data Table: 48ED04
  loc_DFFE8C: Call Proc_194_35_E3FDE8()
  loc_DFFE91: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '107491C
  'Data Table: 48ED04
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_E8 As Long
  Dim var_F8 As Variant
  Dim var_118 As String
  loc_1074690: Set var_88 = Me.TopCtrl1
  loc_1074696: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10746DB: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10746E4:   Call Form_KeyDown(Cancel, arg_10)
  loc_10746E9: End If
  loc_10746ED: Set var_88 = Me.TopCtrl1
  loc_10746F3: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_107470C: If (CStr() = "Browse") Then
  loc_107470F:   Exit Sub
  loc_1074710: End If
  loc_1074784: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_107479A:   Me.FGrid.CellBackColor = CVar(CLng("12648447"))
  loc_10747A4:   Cancel = 0
  loc_10747AA: Else
  loc_107480C:   If (((CLng(Cancel) = &H28) Or (CLng(Cancel) = &HD)) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_1074822:     Me.FGrid.CellBackColor = CVar(CLng("12648447"))
  loc_107482C:     Cancel = 0
  loc_107482F:   End If
  loc_107482F: End If
  loc_1074835: global_64 = Cancel
  loc_107485B: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_107487F: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1074895:   var_E8 = CLng(Me.FGrid.Col)
  loc_10748A5:   If Not (var_E8 = CLng(&HB)) Then
  loc_10748AF:     If Not (var_E8 = CLng(&HC)) Then
  loc_10748B9:       If (var_E8 = CLng(&HD)) Then
  loc_10748BC:       End If
  loc_10748BC:     End If
  loc_10748CF:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10748E7:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10748EC:     var_118 = vbNullString
  loc_10748F6:     Set var_B4 = Me.FGrid
  loc_10748FC:     LateIdCallSt
  loc_1074914:   End If
  loc_1074914: End If
  loc_1074916: Cancel = 0
  loc_1074919: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10BE0
  'Data Table: 48ED04
  loc_E10BD1: Call FGrid_UnknownEvent_C()
  loc_E10BDB: global_66 = 0
  loc_E10BDE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'EF2294
  'Data Table: 48ED04
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_EF21D4: Set var_88 = Me.TopCtrl1
  loc_EF21DA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_EF21F3: If (CStr() = "Browse") Then
  loc_EF21F6:   Exit Sub
  loc_EF21F7: End If
  loc_EF220A: var_A0 = CLng(Me.FGrid.Col)
  loc_EF221A: If Not (var_A0 = CLng(&HB)) Then
  loc_EF2224:   If Not (var_A0 = CLng(&HC)) Then
  loc_EF222E:     If (var_A0 = CLng(&HD)) Then
  loc_EF2231:     End If
  loc_EF2231:   End If
  loc_EF226A:   Proc_183_26_1158124(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_EF227C: End If
  loc_EF2286: If (CLng(Cancel) <> &HD) Then
  loc_EF228E:   global_66 = &HFF
  loc_EF2291: End If
  loc_EF2291: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1C340
  'Data Table: 48ED04
  loc_E1C337: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1C33F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1D510
  'Data Table: 48ED04
  loc_E1D507: Me.FGrid.CellBackColor = CVar(CLng("12648447"))
  loc_E1D50F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E410AC
  'Data Table: 48ED04
  Dim var_8C As TextBox
  loc_E41080: Call Proc_194_42_E84130()
  loc_E41090: Set var_88 = Me.TxtGrid
  loc_E41096: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4109E: var_8C.Visible = False
  loc_E410AA: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E009AC
  'Data Table: 48ED04
  loc_E009A7: var_88 = MyValue
  loc_E009AA: Exit Sub
End Sub

Public Sub Proc_194_34_129C200
  'Data Table: 48ED04
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_129BBFB: Me.FGrid.Left = CVar(CDbl(400))
  loc_129BC16: Me.FGrid.Top = CVar(CDbl(2875))
  loc_129BC31: Me.FGrid.Width = CVar(CDbl(16000))
  loc_129BC3D: Set var_AC = Me.FGrid
  loc_129BC54: global_76 = CStr(CLng(var_AC.BackColor))
  loc_129BC6A: var_AC.Cols = &HF
  loc_129BC72: var_94 = CVar(CLng(0)) 'Long
  loc_129BC77: var_D0 = &HFA
  loc_129BC83: LateIdCallSt
  loc_129BC8B: var_94 = 0
  loc_129BC97: var_D0 = CVar(CLng(1)) 'Long
  loc_129BC9C: var_F0 = "DocID"
  loc_129BCA5: LateIdCallSt
  loc_129BCB0: var_94 = CVar(CLng(1)) 'Long
  loc_129BCBB: var_D0 = CVar(CInt(1)) 'Integer
  loc_129BCC2: LateIdCallSt
  loc_129BCCD: var_94 = CVar(CLng(1)) 'Long
  loc_129BCD2: var_D0 = 0
  loc_129BCDE: LateIdCallSt
  loc_129BCE6: var_94 = 0
  loc_129BCF2: var_D0 = CVar(CLng(2)) 'Long
  loc_129BCF7: var_F0 = "V.SNo"
  loc_129BD00: LateIdCallSt
  loc_129BD0B: var_94 = CVar(CLng(2)) 'Long
  loc_129BD16: var_D0 = CVar(CInt(1)) 'Integer
  loc_129BD1D: LateIdCallSt
  loc_129BD28: var_94 = CVar(CLng(2)) 'Long
  loc_129BD2D: var_D0 = 0
  loc_129BD39: LateIdCallSt
  loc_129BD41: var_94 = 0
  loc_129BD4D: var_D0 = CVar(CLng(3)) 'Long
  loc_129BD52: var_F0 = "V.Type"
  loc_129BD5B: LateIdCallSt
  loc_129BD66: var_94 = CVar(CLng(3)) 'Long
  loc_129BD71: var_D0 = CVar(CInt(1)) 'Integer
  loc_129BD78: LateIdCallSt
  loc_129BD83: var_94 = CVar(CLng(3)) 'Long
  loc_129BD88: var_D0 = &H2BC
  loc_129BD94: LateIdCallSt
  loc_129BD9C: var_94 = 0
  loc_129BDA8: var_D0 = CVar(CLng(4)) 'Long
  loc_129BDAD: var_F0 = "V.Prefix"
  loc_129BDB6: LateIdCallSt
  loc_129BDC1: var_94 = CVar(CLng(4)) 'Long
  loc_129BDCC: var_D0 = CVar(CInt(1)) 'Integer
  loc_129BDD3: LateIdCallSt
  loc_129BDDE: var_94 = CVar(CLng(4)) 'Long
  loc_129BDE3: var_D0 = &H2BC
  loc_129BDEF: LateIdCallSt
  loc_129BDF7: var_94 = 0
  loc_129BE03: var_D0 = CVar(CLng(5)) 'Long
  loc_129BE08: var_F0 = "V.No"
  loc_129BE11: LateIdCallSt
  loc_129BE1C: var_94 = CVar(CLng(5)) 'Long
  loc_129BE27: var_D0 = CVar(CInt(7)) 'Integer
  loc_129BE2E: LateIdCallSt
  loc_129BE39: var_94 = CVar(CLng(5)) 'Long
  loc_129BE44: var_D0 = CVar(CInt(7)) 'Integer
  loc_129BE4B: LateIdCallSt
  loc_129BE56: var_94 = CVar(CLng(5)) 'Long
  loc_129BE5B: var_D0 = &H320
  loc_129BE67: LateIdCallSt
  loc_129BE6F: var_94 = 0
  loc_129BE7B: var_D0 = CVar(CLng(6)) 'Long
  loc_129BE80: var_F0 = "V.Date"
  loc_129BE89: LateIdCallSt
  loc_129BE94: var_94 = CVar(CLng(6)) 'Long
  loc_129BE9F: var_D0 = CVar(CInt(1)) 'Integer
  loc_129BEA6: LateIdCallSt
  loc_129BEB1: var_94 = CVar(CLng(6)) 'Long
  loc_129BEB6: var_D0 = &H384
  loc_129BEC2: LateIdCallSt
  loc_129BECA: var_94 = 0
  loc_129BED6: var_D0 = CVar(CLng(7)) 'Long
  loc_129BEDB: var_F0 = "Party Code"
  loc_129BEE4: LateIdCallSt
  loc_129BEEF: var_94 = CVar(CLng(7)) 'Long
  loc_129BEFA: var_D0 = CVar(CInt(1)) 'Integer
  loc_129BF01: LateIdCallSt
  loc_129BF0C: var_94 = CVar(CLng(7)) 'Long
  loc_129BF11: var_D0 = 0
  loc_129BF1D: LateIdCallSt
  loc_129BF25: var_94 = 0
  loc_129BF31: var_D0 = CVar(CLng(8)) 'Long
  loc_129BF36: var_F0 = "Ledger A/c"
  loc_129BF3F: LateIdCallSt
  loc_129BF4A: var_94 = CVar(CLng(8)) 'Long
  loc_129BF55: var_D0 = CVar(CInt(1)) 'Integer
  loc_129BF5C: LateIdCallSt
  loc_129BF67: var_94 = CVar(CLng(8)) 'Long
  loc_129BF6C: var_D0 = &H9C4
  loc_129BF78: LateIdCallSt
  loc_129BF80: var_94 = 0
  loc_129BF8C: var_D0 = CVar(CLng(9)) 'Long
  loc_129BF91: var_F0 = "Debit"
  loc_129BF9A: LateIdCallSt
  loc_129BFA5: var_94 = CVar(CLng(9)) 'Long
  loc_129BFB0: var_D0 = CVar(CInt(7)) 'Integer
  loc_129BFB7: LateIdCallSt
  loc_129BFC2: var_94 = CVar(CLng(9)) 'Long
  loc_129BFCD: var_D0 = CVar(CInt(7)) 'Integer
  loc_129BFD4: LateIdCallSt
  loc_129BFDF: var_94 = CVar(CLng(9)) 'Long
  loc_129BFE4: var_D0 = &H3E8
  loc_129BFF0: LateIdCallSt
  loc_129BFF8: var_94 = 0
  loc_129C004: var_D0 = CVar(CLng(&HA)) 'Long
  loc_129C009: var_F0 = "Credit"
  loc_129C012: LateIdCallSt
  loc_129C01D: var_94 = CVar(CLng(&HA)) 'Long
  loc_129C028: var_D0 = CVar(CInt(7)) 'Integer
  loc_129C02F: LateIdCallSt
  loc_129C03A: var_94 = CVar(CLng(&HA)) 'Long
  loc_129C045: var_D0 = CVar(CInt(7)) 'Integer
  loc_129C04C: LateIdCallSt
  loc_129C057: var_94 = CVar(CLng(&HA)) 'Long
  loc_129C05C: var_D0 = &H3E8
  loc_129C068: LateIdCallSt
  loc_129C070: var_94 = 0
  loc_129C07C: var_D0 = CVar(CLng(&HB)) 'Long
  loc_129C081: var_F0 = "Cheque No"
  loc_129C08A: LateIdCallSt
  loc_129C095: var_94 = CVar(CLng(&HB)) 'Long
  loc_129C0A0: var_D0 = CVar(CInt(1)) 'Integer
  loc_129C0A7: LateIdCallSt
  loc_129C0B2: var_94 = CVar(CLng(&HB)) 'Long
  loc_129C0BD: var_D0 = CVar(CInt(1)) 'Integer
  loc_129C0C4: LateIdCallSt
  loc_129C0CF: var_94 = CVar(CLng(&HB)) 'Long
  loc_129C0D4: var_D0 = &H44C
  loc_129C0E0: LateIdCallSt
  loc_129C0E8: var_94 = 0
  loc_129C0F4: var_D0 = CVar(CLng(&HC)) 'Long
  loc_129C0F9: var_F0 = "Cheque Date"
  loc_129C102: LateIdCallSt
  loc_129C10D: var_94 = CVar(CLng(&HC)) 'Long
  loc_129C118: var_D0 = CVar(CInt(1)) 'Integer
  loc_129C11F: LateIdCallSt
  loc_129C12A: var_94 = CVar(CLng(&HC)) 'Long
  loc_129C12F: var_D0 = &H4B0
  loc_129C13B: LateIdCallSt
  loc_129C143: var_94 = 0
  loc_129C14F: var_D0 = CVar(CLng(&HD)) 'Long
  loc_129C154: var_F0 = "Clearing Date"
  loc_129C15D: LateIdCallSt
  loc_129C168: var_94 = CVar(CLng(&HD)) 'Long
  loc_129C173: var_D0 = CVar(CInt(1)) 'Integer
  loc_129C17A: LateIdCallSt
  loc_129C185: var_94 = CVar(CLng(&HD)) 'Long
  loc_129C18A: var_D0 = &H514
  loc_129C196: LateIdCallSt
  loc_129C19E: var_94 = 0
  loc_129C1AA: var_D0 = CVar(CLng(&HE)) 'Long
  loc_129C1AF: var_F0 = "Narration"
  loc_129C1B8: LateIdCallSt
  loc_129C1C3: var_94 = CVar(CLng(&HE)) 'Long
  loc_129C1CE: var_D0 = CVar(CInt(1)) 'Integer
  loc_129C1D5: LateIdCallSt
  loc_129C1E0: var_94 = CVar(CLng(&HE)) 'Long
  loc_129C1E5: var_D0 = &H2AF8
  loc_129C1F1: LateIdCallSt
  loc_129C1FB: Set var_AC = Nothing 
  loc_129C1FF: Exit Sub
End Sub

Public Sub Proc_194_35_E3FDE8
  'Data Table: 48ED04
  loc_E3FDC4: Set var_88 = Me.TopCtrl1
  loc_E3FDCA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E3FDE3: If (CStr() = "Browse") Then
  loc_E3FDE6:   Exit Sub
  loc_E3FDE7: End If
  loc_E3FDE7: Exit Sub
End Sub

Public Sub Proc_194_36_12B93C4(arg_C) '12B93C4
  'Data Table: 48ED04
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_A8 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_A4 As Variant
  Dim var_110 As Variant
  Dim var_124 As MSHFlexGrid
  Dim var_120 As Variant
  Dim var_168 As Variant
  Dim var_138 As Variant
  Dim var_100 As String
  Dim var_17C As String
  loc_12B8D9C: If (arg_C = 0) Then
  loc_12B8DB2:   var_A0 = CLng(Me.FGrid.Col)
  loc_12B8DC2:   If (var_A0 = CLng(&HB)) Then
  loc_12B8DD8:     var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B8E02:     Set var_8C = Me.TxtGrid
  loc_12B8E08:     Call 0.Method_Proc_194_36_12B93C40 (arg_C, var_A4, var_100, CVar(CLng(Me.FGrid.Col)))
  loc_12B8E10:     var_CC = var_A4.Text
  loc_12B8E18:     var_110 = CVar(var_100) 'String
  loc_12B8E20:     Set var_124 = Me.FGrid
  loc_12B8E26:     LateIdCallSt
  loc_12B8E47:   Else
  loc_12B8E4E:     If (var_A0 = CLng(&HC)) Then
  loc_12B8E5B:       Set var_8C = Me.TxtGrid
  loc_12B8E61:       Call 0.Method_Proc_194_36_12B93C40 (arg_C, var_A4, var_124)
  loc_12B8EAB:       Call 0.Method_arg_184 (var_A4, var_100, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_12B8EB3:       var_110 = CVar(var_100) 'String
  loc_12B8EBB:       Set var_128 = Me.FGrid
  loc_12B8EC1:       LateIdCallSt
  loc_12B8F1E:       If (Me.FGrid.Fields.Item("PDCDt").Value = "No") Then
  loc_12B8F34:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B8F3C:         var_EC = CVar(CLng(&HC)) 'Long
  loc_12B8F7E:         If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_12B8F8B:           var_110 = Me.FGrid.Row
  loc_12B8F94:           var_120 = CVar(CLng(var_110)) 'Long
  loc_12B8F9C:           var_168 = CVar(CLng(6)) 'Long
  loc_12B8FAB:           var_138 = Me.FGrid.TextMatrix)
  loc_12B8FCA:           var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B8FD2:           var_EC = CVar(CLng(&HC)) 'Long
  loc_12B8FE1:           var_BC = Me.FGrid.TextMatrix)
  loc_12B8FEC:           var_100 = CStr(var_BC)
  loc_12B8FF5:           var_17C = CStr(var_138)
  loc_12B9018:           If (CDate(var_100) > CDate(var_17C)) Then
  loc_12B9034:             MsgBox("Cheque Date Should be Less than Voucher Date", 0, var_BC, var_110, var_138)
  loc_12B9057:             var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B905F:             var_EC = CVar(CLng(&HC)) 'Long
  loc_12B9064:             var_120 = vbNullString
  loc_12B906E:             Set var_A4 = Me.FGrid
  loc_12B9074:             LateIdCallSt
  loc_12B9093:             Set var_8C = Me.TxtGrid
  loc_12B9099:             Call 0.Method_Proc_194_36_12B93C40 (arg_C, var_A4, vbNullString, var_A4, var_120, var_EC, var_CC)
  loc_12B90A1:             var_A4.Text = var_EC
  loc_12B90B2:             Proc_194_36_12B93C4 = 0
  loc_12B90B8:           End If
  loc_12B90B8:         End If
  loc_12B90B8:       End If
  loc_12B90BB:     Else
  loc_12B90C2:       If (var_A0 = CLng(&HD)) Then
  loc_12B90CF:         Set var_8C = Me.TxtGrid
  loc_12B90D5:         Call 0.Method_Proc_194_36_12B93C40 (arg_C, var_A4, var_CC, var_138)
  loc_12B90DE:         Set var_AC = Me.FGrid
  loc_12B911F:         Call 0.Method_arg_184 (var_A4, var_100, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_AC.Row)))
  loc_12B9135:         LateIdCallSt
  loc_12B9170:         var_A4 = Me.FGrid.Fields.Item("PDCDt")
  loc_12B9192:         If (var_A4.Value = "No") Then
  loc_12B91A2:           Set var_8C = Me.TxtGrid
  loc_12B91A8:           Call 0.Method_Proc_194_36_12B93C40 (arg_C, var_A4, var_100, Me.FGrid, CVar(var_100))
  loc_12B91BF:           Call 0.Method_arg_184 (var_A4, var_168, var_120)
  loc_12B91EB:           If CBool(Trim(CVar(var_100)) <> vbNullString) Then
  loc_12B91F2:             Set var_8C = Me.FGrid
  loc_12B9212:             Set var_A4 = Me.FGrid
  loc_12B9223:             var_110 = CVar(CStr(var_A4.TextMatrix))) 'String
  loc_12B9229:             var_138 = Trim(var_110)
  loc_12B924B:             If (var_138 = vbNullString) Then
  loc_12B925B:               Set var_8C = Me.TxtGrid
  loc_12B9261:               Call 0.Method_Proc_194_36_12B93C40 (arg_C, var_A4, vbNullString, CVar(CLng(&HC)))
  loc_12B9269:               var_A4.Text = CVar(CLng(Me.FGrid.Row))
  loc_12B9278:             Else
  loc_12B9282:               Set var_A8 = Me.TxtGrid
  loc_12B9288:               Call 0.Method_Proc_194_36_12B93C40 (arg_C, var_AC)
  loc_12B92A2:               Call 0.Method_arg_184 (var_AC, var_17C)
  loc_12B92AB:               Set var_8C = Me.FGrid
  loc_12B92BA:               var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B92C2:               var_EC = CVar(CLng(&HC)) 'Long
  loc_12B92D1:               var_BC = Me.FGrid.TextMatrix)
  loc_12B9300:               If (CDate(CStr(var_BC)) > CDate(var_17C)) Then
  loc_12B931C:                 MsgBox("Clg.Date Must be Greater Than Cheque Date", 0, var_BC, var_110, var_138)
  loc_12B9348:                 Set var_A4 = Me.FGrid
  loc_12B936C:                 LateIdCallSt
  loc_12B9391:                 Set var_8C = Me.TxtGrid
  loc_12B9397:                 Call 0.Method_Proc_194_36_12B93C40 (arg_C, var_A4, vbNullString, Me.FGrid, vbNullString, CVar(CLng(var_A4.Col)))
  loc_12B939F:                 var_A4.Text = CVar(CLng(Me.FGrid.Row))
  loc_12B93B0:                 Proc_194_36_12B93C4 = 0
  loc_12B93B6:               End If
  loc_12B93B6:             End If
  loc_12B93B6:           End If
  loc_12B93B6:         End If
  loc_12B93B6:       End If
  loc_12B93B6:     End If
  loc_12B93B6:   End If
  loc_12B93B6: End If
  loc_12B93BB: Proc_194_36_12B93C4 = &HFF
End Sub

Public Sub Proc_194_37_10B791C(arg_C) '10B791C
  'Data Table: 48ED04
  Dim var_90 As Recordset15
  loc_10B7635: Set var_90 = arg_C 
  loc_10B765D: var_90.Fields.Append "SNo", 3, 0
  loc_10B7689: var_90.Fields.Append "DocID", &HC8, &H15
  loc_10B76B5: var_90.Fields.Append "VSNo", 3, 0
  loc_10B76E1: var_90.Fields.Append "VType", &HC8, 5
  loc_10B770D: var_90.Fields.Append "VPrefix", &HC8, 5
  loc_10B7739: var_90.Fields.Append "VNo", 3, 0
  loc_10B7765: var_90.Fields.Append "VDate", 7, 0
  loc_10B7791: var_90.Fields.Append "PartyCode", &HC8, 8
  loc_10B77BD: var_90.Fields.Append "PartyName", &HC8, &H4B
  loc_10B77E9: var_90.Fields.Append "DrAmt", 5, 0
  loc_10B7815: var_90.Fields.Append "CrAmt", 5, 0
  loc_10B7841: var_90.Fields.Append "ChqNo", &HC8, &H14
  loc_10B786D: var_90.Fields.Append "ChqDate", 7, 0
  loc_10B7899: var_90.Fields.Append "ClgDate", 7, 0
  loc_10B78C5: var_90.Fields.Append "Narration", &HC8, &HFF
  loc_10B78D5: var_90.CursorType = 3
  loc_10B78E2: var_90.LockType = 3
  loc_10B7901: var_90.Open var_A4, var_B4, -1
  loc_10B7908: Set var_90 = Nothing 
  loc_10B790F: Set var_88 = arg_C 
  loc_10B7913: Proc_194_37_10B791C = -1
End Sub

Public Sub Proc_194_38_16D95A4
  'Data Table: 48ED04
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_A8 As Variant
  Dim var_92 As Integer
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_D0 As Variant
  Dim var_110 As Variant
  Dim var_118 As Variant
  Dim var_160 As Variant
  Dim var_16C As TextBox
  Dim var_1A4 As Variant
  Dim var_184 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_204 As Variant
  Dim var_254 As Variant
  Dim unk_48ED2C As Connection15
  Dim var_8C As Recordset15
  Dim var_F0 As Variant
  Dim var_282 As Integer
  Dim var_114 As Fields15
  Dim var_B0 As String
  Dim var_28C As Recordset15
  Dim var_15C As Fields15
  Dim var_90 As Recordset15
  Dim var_9C As Double
  Dim var_A4 As Double
  loc_16D7B78: On Error Goto loc_16D9579
  loc_16D7B89: Set var_A8 = Me.Txt
  loc_16D7B8F: Call 0.Method_Proc_194_38_16D95A40 (CInt(1), var_AC)
  loc_16D7B97: var_B0 = var_AC.Tag
  loc_16D7BAE: If (var_B0 = vbNullString) Then
  loc_16D7BB1:   Exit Sub
  loc_16D7BB2: End If
  loc_16D7BC1: Me.FGrid.Redraw = False
  loc_16D7BD6: Set var_A8 = Me.FGrid
  loc_16D7BDC: var_A8.Rows = 1
  loc_16D7BFE: Call Proc_194_37_10B791C(New)
  loc_16D7C09: Set global_84 = var_A8
  loc_16D7C12: var_92 = 1
  loc_16D7C23: Set var_A8 = Me.Txt
  loc_16D7C29: Call 0.Method_Proc_194_38_16D95A40 (CInt(5), var_AC, var_B0)
  loc_16D7C31: var_92 = Me.Txt.Text
  loc_16D7C48: If (var_B0 = "Cleared") Then
  loc_16D7C5B:   Set var_A8 = Me.Txt
  loc_16D7C61:   Call 0.Method_Proc_194_38_16D95A40 (CInt(0), var_AC)
  loc_16D7C70:   Proc_183_7_EB0C44(var_F0, CVar(var_AC))
  loc_16D7C86:   var_88 = CStr(" and (Clg_Date is not null AND Clg_Date<=" & var_F0 & ") ")
  loc_16D7C9A: Else
  loc_16D7CA8:   Set var_A8 = Me.Txt
  loc_16D7CAE:   Call 0.Method_Proc_194_38_16D95A40 (CInt(5), var_AC)
  loc_16D7CCD:   If (var_AC.Text = "Un-Cleared") Then
  loc_16D7CE0:     Set var_A8 = Me.Txt
  loc_16D7CE6:     Call 0.Method_Proc_194_38_16D95A40 (CInt(0), var_AC)
  loc_16D7CF5:     Proc_183_7_EB0C44(var_F0, CVar(var_AC))
  loc_16D7D0B:     var_88 = CStr(" AND (Clg_Date is null OR Clg_Date>" & var_F0 & ") ")
  loc_16D7D1C:   End If
  loc_16D7D1C: End If
  loc_16D7D27: Set var_A8 = Me.Txt
  loc_16D7D2D: Call 0.Method_Proc_194_38_16D95A40 (CInt(0), var_AC)
  loc_16D7D3C: Proc_183_7_EB0C44(var_F0, CVar(var_AC))
  loc_16D7D4F: Set var_114 = Me.Txt
  loc_16D7D55: Call 0.Method_Proc_194_38_16D95A40 (CInt(1), var_118)
  loc_16D7D70: Set var_15C = Me.Txt
  loc_16D7D76: Call 0.Method_Proc_194_38_16D95A40 (CInt(4), var_160)
  loc_16D7D91: Set var_168 = Me.Txt
  loc_16D7D97: Call 0.Method_Proc_194_38_16D95A40 (CInt(4), var_16C)
  loc_16D7DCF: var_1C4 = IIf((var_160.Tag <> vbNullString), CVar(" And L.Party1='" & var_16C.Tag & "'"), vbNullString)
  loc_16D7DF2: var_110 = "Select L.*,SG.Name As PartyName From VIEWLedger L Left Join SubGroup SG on L.PARTY1=SG.SubCode Where L.V_Date<=" & var_F0 & " And L.PARTY='" 
  loc_16D7E32: var_254 = var_110 & CVar(var_118.Tag) & "'" & var_1C4 & CVar(var_88) & " AND L.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' ORDER BY L.V_Date,L.V_TYPE,L.V_NO" 
  loc_16D7E40: unk_48ED2C.Execute CStr(var_254), var_278, -1
  loc_16D7E4B: Set var_8C = var_27C
  loc_16D7EA5: If (var_8C.RecordCount > 0) Then
  loc_16D7EA8:   ' Referenced from: 16D8B0D
  loc_16D7EB7:   If Not(var_8C.EOF) Then
  loc_16D7EBA:     var_C0 = vbNullString
  loc_16D7EC4:     Set var_A8 = Me.FGrid
  loc_16D7ED9:     Set var_288 = Me.FGrid
  loc_16D7EE0:     var_C0 = CVar(CLng(var_92)) 'Long
  loc_16D7EE8:     var_148 = CVar(CLng(0)) 'Long
  loc_16D7EF2:     var_E0 = CVar(CStr(var_92)) 'String
  loc_16D7EF9:     LateIdCallSt
  loc_16D7F08:     var_D0 = CVar(CLng(var_92)) 'Long
  loc_16D7F10:     var_184 = CVar(CLng(1)) 'Long
  loc_16D7F40:     var_F0 = CVar(CStr(var_8C.Fields.Item("DocID").Value)) 'String
  loc_16D7F47:     LateIdCallSt
  loc_16D7F61:     var_D0 = CVar(CLng(var_92)) 'Long
  loc_16D7F69:     var_184 = CVar(CLng(2)) 'Long
  loc_16D7F99:     var_F0 = CVar(CStr(var_8C.Fields.Item("V_SNo").Value)) 'String
  loc_16D7FA0:     LateIdCallSt
  loc_16D7FBA:     var_D0 = CVar(CLng(var_92)) 'Long
  loc_16D7FC2:     var_184 = CVar(CLng(3)) 'Long
  loc_16D7FF2:     var_F0 = CVar(CStr(var_8C.Fields.Item("V_Type").Value)) 'String
  loc_16D7FF9:     LateIdCallSt
  loc_16D8013:     var_D0 = CVar(CLng(var_92)) 'Long
  loc_16D801B:     var_184 = CVar(CLng(4)) 'Long
  loc_16D804B:     var_F0 = CVar(CStr(var_8C.Fields.Item("V_ADD").Value)) 'String
  loc_16D8052:     LateIdCallSt
  loc_16D806C:     var_D0 = CVar(CLng(var_92)) 'Long
  loc_16D8074:     var_184 = CVar(CLng(5)) 'Long
  loc_16D80A4:     var_F0 = CVar(CStr(var_8C.Fields.Item("V_NO").Value)) 'String
  loc_16D80AB:     LateIdCallSt
  loc_16D80E1:     var_148 = CVar(CLng(var_92)) 'Long
  loc_16D80E9:     var_1A4 = CVar(CLng(6)) 'Long
  loc_16D8116:     var_110 = CVar(CStr(Format(CVar(var_8C.Fields.Item("V_DATE")), "dd/MMM/yyyy"))) 'String
  loc_16D811D:     LateIdCallSt
  loc_16D8137:     var_D0 = CVar(CLng(var_92)) 'Long
  loc_16D813F:     var_184 = CVar(CLng(7)) 'Long
  loc_16D816F:     var_F0 = CVar(CStr(var_8C.Fields.Item("Party").Value)) 'String
  loc_16D8176:     LateIdCallSt
  loc_16D81C5:     var_F0 = CVar(Proc_183_2_E5A304(CVar(var_8C.Fields.Item("PartyName")), CVar(CLng(8)), CVar(CLng(var_92)), var_288, var_F0, CVar(CLng(8)), CVar(CLng(var_92)))) 'String
  loc_16D81CC:     LateIdCallSt
  loc_16D81FE:     var_148 = CVar(CLng(var_92)) 'Long
  loc_16D8206:     var_1A4 = CVar(CLng(9)) 'Long
  loc_16D8233:     var_110 = CVar(CStr(Format(CVar(var_8C.Fields.Item("Debit")), "0.00"))) 'String
  loc_16D823A:     LateIdCallSt
  loc_16D8270:     var_148 = CVar(CLng(var_92)) 'Long
  loc_16D8278:     var_1A4 = CVar(CLng(&HA)) 'Long
  loc_16D82A5:     var_110 = CVar(CStr(Format(CVar(var_8C.Fields.Item("Credit")), "0.00"))) 'String
  loc_16D82AC:     LateIdCallSt
  loc_16D82F1:     var_1A4 = CVar(CLng(var_92)) 'Long
  loc_16D82F9:     var_204 = CVar(CLng(&HB)) 'Long
  loc_16D833F:     var_128 = CVar(CStr(IIf(IsNull(CVar(var_8C.Fields.Item("Chq_No"))), vbNullString, CVar(var_8C.Fields.Item("Chq_No"))))) 'String
  loc_16D8346:     LateIdCallSt
  loc_16D8384:     var_148 = CVar(CLng(var_92)) 'Long
  loc_16D838C:     var_1A4 = CVar(CLng(&HC)) 'Long
  loc_16D83B9:     var_110 = CVar(CStr(Format(CVar(var_8C.Fields.Item("Chq_Date")), "dd/MMM/yyyy"))) 'String
  loc_16D83C0:     LateIdCallSt
  loc_16D83F6:     var_148 = CVar(CLng(var_92)) 'Long
  loc_16D83FE:     var_1A4 = CVar(CLng(&HD)) 'Long
  loc_16D8432:     LateIdCallSt
  loc_16D844C:     var_148 = CVar(CLng(var_92)) 'Long
  loc_16D8454:     var_1A4 = CVar(CLng(&HE)) 'Long
  loc_16D845C:     var_C0 = "mNarr"
  loc_16D8481:     var_B0 = Proc_183_2_E5A304(CVar(var_8C.Fields.Item(var_C0)), var_1A4, var_148, var_288, CVar(CStr(Format(CVar(var_8C.Fields.Item("clg_date")), "dd/MMM/yyyy"))), 1, 1)
  loc_16D848E:     var_D0 = "NARR"
  loc_16D84BE:     LateIdCallSt
  loc_16D84EB:     Set var_28C = global_84 
  loc_16D84FA:     var_28C.AddNew var_C0, var_D0
  loc_16D8525:     var_28C.Fields.Item("SNo").Value = CVar(var_92)
  loc_16D8574:     var_28C.Fields.Item("DocID").Value = CVar(var_8C.Fields.Item("DocID"))
  loc_16D85C8:     var_28C.Fields.Item("VSNo").Value = CVar(var_8C.Fields.Item("V_SNo"))
  loc_16D861C:     var_28C.Fields.Item("VType").Value = CVar(var_8C.Fields.Item("V_Type"))
  loc_16D8670:     var_28C.Fields.Item("VPrefix").Value = CVar(var_8C.Fields.Item("V_ADD"))
  loc_16D86C4:     var_28C.Fields.Item("VNo").Value = CVar(var_8C.Fields.Item("V_NO"))
  loc_16D8718:     var_28C.Fields.Item("VDate").Value = CVar(var_8C.Fields.Item("V_DATE"))
  loc_16D876C:     var_28C.Fields.Item("PartyCode").Value = CVar(var_8C.Fields.Item("Party"))
  loc_16D87A5:     var_F0 = CVar(Proc_183_2_E5A304(CVar(var_8C.Fields.Item("PartyName")), Nothing, CVar(Nothing & Proc_183_2_E5A304(CVar(var_8C.Fields.Item("PartyCode")), var_B0 & " ", var_1A4, var_148)))) 'String
  loc_16D87C8:     var_28C.Fields.Item("PartyName").Value = var_F0
  loc_16D8840:     var_28C.Fields.Item("DrAmt").Value = Format(CVar(var_8C.Fields.Item("Debit")), "0.00")
  loc_16D88BA:     var_28C.Fields.Item("CrAmt").Value = Format(CVar(var_8C.Fields.Item("Credit")), "0.00")
  loc_16D88F9:     var_282 = IsNull(CVar(var_8C.Fields.Item("Chq_No")))
  loc_16D8934:     var_110 = IIf(var_282, vbNullString, CVar(var_8C.Fields.Item("Chq_No")))
  loc_16D895C:     var_28C.Fields.Item("ChqNo").Value = var_110
  loc_16D89BC:     var_28C.Fields.Item("ChqDate").Value = CVar(var_8C.Fields.Item("Chq_Date"))
  loc_16D8A10:     var_28C.Fields.Item("ClgDate").Value = CVar(var_8C.Fields.Item("clg_date"))
  loc_16D8A24:     var_C0 = "mNarr"
  loc_16D8A38:     var_AC = var_8C.Fields.Item(var_C0)
  loc_16D8A4F:     var_D0 = "NARR"
  loc_16D8A63:     var_118 = var_8C.Fields.Item(var_D0)
  loc_16D8A6B:     var_F0 = CVar(var_118) 'Address
  loc_16D8A7F:     var_B0 = Proc_183_2_E5A304(CVar(var_AC), var_282, 1, 1, 1)
  loc_16D8AAE:     var_15C = var_28C.Fields
  loc_16D8ABE:     var_15C.Item("Narration").Value = Left(CVar(var_B0 & " " & Proc_183_2_E5A304(var_F0, 1, var_110)), &HFF)
  loc_16D8AF1:     var_28C.Update var_C0, var_D0
  loc_16D8AF8:     Set var_28C = Nothing 
  loc_16D8B02:     var_92 = (var_92 + 1)
  loc_16D8B08:     var_8C.MoveNext
  loc_16D8B0D:     GoTo loc_16D7EA8
  loc_16D8B10:   End If
  loc_16D8B18:   If (MemVar_1F923AC = "S") Then
  loc_16D8B38:     Set var_A8 = Me.Txt
  loc_16D8B3E:     Call 0.Method_Proc_194_38_16D95A40 (CInt(0), var_AC, "Select IsNull(Sum(L.AmtDr),0) As AmtDr From Ledger L Where L.Clg_Date<=", var_1C4, -1)
  loc_16D8B4D:     Proc_183_7_EB0C44(var_F0, CVar(var_AC), var_15C)
  loc_16D8B5E:     var_110 = var_92 & var_F0 & " And L.SubCode='" 
  loc_16D8B70:     Set var_114 = Me.Txt
  loc_16D8B76:     Call 0.Method_Proc_194_38_16D95A40 (CInt(1), var_118, var_B0)
  loc_16D8B7E:     var_110 = var_118.Tag
  loc_16D8BB3:     unk_48ED2C.Execute CStr(1 & CVar(var_B0) & "' AND L.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), 1, 
  loc_16D8BBE:     Set var_90 = var_15C
  loc_16D8BE9:   Else
  loc_16D8BF1:     If (MemVar_1F923AC = "A") Then
  loc_16D8C11:       Set var_A8 = Me.Txt
  loc_16D8C17:       Call 0.Method_Proc_194_38_16D95A40 (CInt(0), var_AC, "Select IIF(IsNull(Sum(L.AmtDr)),0,Sum(L.AmtDr)) As AmtDr From Ledger L Where L.Clg_Date<=")
  loc_16D8C26:       Proc_183_7_EB0C44(var_F0, CVar(var_AC), var_1C4)
  loc_16D8C2E:       var_100 = -1 & var_F0 
  loc_16D8C37:       var_110 = var_92 & var_F0 & " And L.SubCode='" 
  loc_16D8C49:       Set var_114 = Me.Txt
  loc_16D8C4F:       Call 0.Method_Proc_194_38_16D95A40 (CInt(1), var_118, var_B0)
  loc_16D8C57:       var_110 = var_118.Tag
  loc_16D8C8C:       unk_48ED2C.Execute CStr(var_15C & CVar(var_B0) & "' AND L.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), , 
  loc_16D8C97:       Set var_90 = var_15C
  loc_16D8CBF:     End If
  loc_16D8CBF:   End If
  loc_16D8CD3:   If (var_90.RecordCount > 0) Then
  loc_16D8CF0:     var_AC = var_90.Fields.Item("AmtDr")
  loc_16D8D01:     var_9C = CSng(var_AC.Value)
  loc_16D8D11:   Else
  loc_16D8D14:     var_9C = CDbl(0)
  loc_16D8D17:   End If
  loc_16D8D1F:   If (MemVar_1F923AC = "S") Then
  loc_16D8D3F:     Set var_A8 = Me.Txt
  loc_16D8D45:     Call 0.Method_Proc_194_38_16D95A40 (CInt(0), var_AC, "Select IsNull(Sum(L.AmtCr),0) As AmtCr From Ledger L Where L.Clg_Date<=", var_1C4)
  loc_16D8D54:     Proc_183_7_EB0C44(var_F0, CVar(var_AC), -1)
  loc_16D8D65:     var_110 = var_15C & var_F0 & " And L.SubCode='" 
  loc_16D8D77:     Set var_114 = Me.Txt
  loc_16D8D7D:     Call 0.Method_Proc_194_38_16D95A40 (CInt(1), var_118, var_B0)
  loc_16D8D85:     var_110 = var_118.Tag
  loc_16D8DBA:     unk_48ED2C.Execute CStr(var_9C & CVar(var_B0) & "' AND L.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_9C, 
  loc_16D8DC5:     Set var_90 = var_15C
  loc_16D8DF0:   Else
  loc_16D8DF8:     If (MemVar_1F923AC = "A") Then
  loc_16D8E18:       Set var_A8 = Me.Txt
  loc_16D8E1E:       Call 0.Method_Proc_194_38_16D95A40 (CInt(0), var_AC, "Select IIF(IsNull(Sum(L.AmtCr)),0,Sum(L.AmtCr)) As AmtCr From Ledger L Where L.Clg_Date<=")
  loc_16D8E2D:       Proc_183_7_EB0C44(var_F0, CVar(var_AC), var_1C4)
  loc_16D8E35:       var_100 = -1 & var_F0 
  loc_16D8E3E:       var_110 = var_15C & var_F0 & " And L.SubCode='" 
  loc_16D8E50:       Set var_114 = Me.Txt
  loc_16D8E56:       Call 0.Method_Proc_194_38_16D95A40 (CInt(1), var_118, var_B0)
  loc_16D8E5E:       var_110 = var_118.Tag
  loc_16D8E93:       unk_48ED2C.Execute CStr(var_15C & CVar(var_B0) & "' AND L.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), , 
  loc_16D8E9E:       Set var_90 = var_15C
  loc_16D8EC6:     End If
  loc_16D8EC6:   End If
  loc_16D8EDA:   If (var_90.RecordCount > 0) Then
  loc_16D8EF7:     var_AC = var_90.Fields.Item("AmtCr")
  loc_16D8F08:     var_A4 = CSng(var_AC.Value)
  loc_16D8F18:   Else
  loc_16D8F1B:     var_A4 = CDbl(0)
  loc_16D8F1E:   End If
  loc_16D8F3B:   var_E0 = CVar(Abs((var_9C - var_A4))) 'Double
  loc_16D8F59:   Set var_A8 = Me.Txt
  loc_16D8F5F:   Call 0.Method_Proc_194_38_16D95A40 (CInt(2), var_AC, CStr(Format(var_AC.Value, "0.00")), 1)
  loc_16D8F67:   var_AC.Text = 1
  loc_16D8F84:   var_F0 = "Cr"
  loc_16D8FA1:   var_C0 = (CDbl((var_9C - var_A4)) > CDbl(0))
  loc_16D8FB0:   var_B0 = CStr(IIf("AmtCr", "Dr", var_F0))
  loc_16D8FBD:   Set var_A8 = Me.LblType
  loc_16D8FC3:   Call 0.Method_Proc_194_38_16D95A40 (0, var_AC, var_B0)
  loc_16D8FCB:   var_AC.Caption = var_A4
  loc_16D8FED:   If (MemVar_1F923AC = "S") Then
  loc_16D900D:     Set var_A8 = Me.Txt
  loc_16D9013:     Call 0.Method_Proc_194_38_16D95A40 (CInt(0), var_AC, "Select IsNull(Sum(L.AmtDr),0) As AmtDr From Ledger L Where L.V_Date<=", var_1C4)
  loc_16D9022:     Proc_183_7_EB0C44(var_F0, CVar(var_AC), -1)
  loc_16D9033:     var_110 = var_15C & var_F0 & " And L.SubCode='" 
  loc_16D9045:     Set var_114 = Me.Txt
  loc_16D904B:     Call 0.Method_Proc_194_38_16D95A40 (CInt(1), var_118, var_B0)
  loc_16D9053:     var_110 = var_118.Tag
  loc_16D9088:     unk_48ED2C.Execute CStr(var_A4 & CVar(var_B0) & "' AND L.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), , 
  loc_16D9093:     Set var_90 = var_15C
  loc_16D90BE:   Else
  loc_16D90C6:     If (MemVar_1F923AC = "A") Then
  loc_16D90E6:       Set var_A8 = Me.Txt
  loc_16D90EC:       Call 0.Method_Proc_194_38_16D95A40 (CInt(0), var_AC, "Select IIF(IsNull(Sum(L.AmtDr)),0,Sum(L.AmtDr)) As AmtDr From Ledger L Where L.V_Date<=")
  loc_16D90FB:       Proc_183_7_EB0C44(var_F0, CVar(var_AC), var_1C4)
  loc_16D9103:       var_100 = -1 & var_F0 
  loc_16D910C:       var_110 = var_15C & var_F0 & " And L.SubCode='" 
  loc_16D911E:       Set var_114 = Me.Txt
  loc_16D9124:       Call 0.Method_Proc_194_38_16D95A40 (CInt(1), var_118, var_B0)
  loc_16D912C:       var_110 = var_118.Tag
  loc_16D9161:       unk_48ED2C.Execute CStr(var_15C & CVar(var_B0) & "' AND L.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), , 
  loc_16D916C:       Set var_90 = var_15C
  loc_16D9194:     End If
  loc_16D9194:   End If
  loc_16D91A8:   If (var_90.RecordCount > 0) Then
  loc_16D91C5:     var_AC = var_90.Fields.Item("AmtDr")
  loc_16D91D6:     var_9C = CSng(var_AC.Value)
  loc_16D91E6:   Else
  loc_16D91E9:     var_9C = CDbl(0)
  loc_16D91EC:   End If
  loc_16D91F4:   If (MemVar_1F923AC = "S") Then
  loc_16D9214:     Set var_A8 = Me.Txt
  loc_16D921A:     Call 0.Method_Proc_194_38_16D95A40 (CInt(0), var_AC, "Select IsNull(Sum(L.AmtCr),0) As AmtCr From Ledger L Where L.V_Date<=", var_1C4)
  loc_16D9229:     Proc_183_7_EB0C44(var_F0, CVar(var_AC), -1)
  loc_16D923A:     var_110 = var_15C & var_F0 & " And L.SubCode='" 
  loc_16D924C:     Set var_114 = Me.Txt
  loc_16D9252:     Call 0.Method_Proc_194_38_16D95A40 (CInt(1), var_118, var_B0)
  loc_16D925A:     var_110 = var_118.Tag
  loc_16D928F:     unk_48ED2C.Execute CStr(var_9C & CVar(var_B0) & "' AND L.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_9C, 
  loc_16D929A:     Set var_90 = var_15C
  loc_16D92C5:   Else
  loc_16D92CD:     If (MemVar_1F923AC = "A") Then
  loc_16D92ED:       Set var_A8 = Me.Txt
  loc_16D92F3:       Call 0.Method_Proc_194_38_16D95A40 (CInt(0), var_AC, "Select IIF(IsNull(Sum(L.AmtCr)),0,Sum(L.AmtCr)) As AmtCr From Ledger L Where L.V_Date<=")
  loc_16D9302:       Proc_183_7_EB0C44(var_F0, CVar(var_AC), var_1C4)
  loc_16D930A:       var_100 = -1 & var_F0 
  loc_16D9313:       var_110 = var_15C & var_F0 & " And L.SubCode='" 
  loc_16D9325:       Set var_114 = Me.Txt
  loc_16D932B:       Call 0.Method_Proc_194_38_16D95A40 (CInt(1), var_118, var_B0)
  loc_16D9333:       var_110 = var_118.Tag
  loc_16D9368:       unk_48ED2C.Execute CStr(var_15C & CVar(var_B0) & "' AND L.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), , 
  loc_16D9373:       Set var_90 = var_15C
  loc_16D939B:     End If
  loc_16D939B:   End If
  loc_16D93AF:   If (var_90.RecordCount > 0) Then
  loc_16D93CC:     var_AC = var_90.Fields.Item("AmtCr")
  loc_16D93DD:     var_A4 = CSng(var_AC.Value)
  loc_16D93ED:   Else
  loc_16D93F0:     var_A4 = CDbl(0)
  loc_16D93F3:   End If
  loc_16D9410:   var_E0 = CVar(Abs((var_9C - var_A4))) 'Double
  loc_16D942E:   Set var_A8 = Me.Txt
  loc_16D9434:   Call 0.Method_Proc_194_38_16D95A40 (CInt(3), var_AC, CStr(Format(var_AC.Value, "0.00")), 1)
  loc_16D943C:   var_AC.Text = 1
  loc_16D9476:   var_C0 = (CDbl((var_9C - var_A4)) > CDbl(0))
  loc_16D9485:   var_B0 = CStr(IIf("AmtCr", "Dr", "Cr"))
  loc_16D9492:   Set var_A8 = Me.LblType
  loc_16D9498:   Call 0.Method_Proc_194_38_16D95A40 (1, var_AC, var_B0)
  loc_16D94A0:   var_AC.Caption = var_A4
  loc_16D94CD:   Me.FGrid.FixedRows = 1
  loc_16D94D5: End If
  loc_16D94E3: Me.FGrid.Redraw = True
  loc_16D94F1: If (var_92 = 1) Then
  loc_16D9507:   Me.FGrid.Rows = 1
  loc_16D9524:   var_F0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_16D952C:   Set var_AC = Me.FGrid
  loc_16D955B:   Me.FGrid.FixedRows = 1
  loc_16D9563: End If
  loc_16D9563: Call Proc_194_42_E84130(FGrid.DispID_10000, var_F0)
  loc_16D956D: Set var_8C = Nothing
  loc_16D9575: Set var_90 = Nothing
  loc_16D9578: Exit Sub
  loc_16D9579: ' Referenced from: 16D7B78
  loc_16D957F: Call 0.Method_arg_50 (var_B0)
  loc_16D9594: Proc_183_57_104AA84(var_B0, "MoveRec")
  loc_16D95A0: Exit Sub
End Sub

Public Sub Proc_194_39_DFFECC
  'Data Table: 48ED04
  loc_DFFEC4: Proc_194_39_DFFECC = 
End Sub

Public Sub Proc_194_40_F99010
  'Data Table: 48ED04
  Dim var_98 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F98E9E: global_68 = vbNullString
  loc_F98EB0: Set var_8C = Me.Txt
  loc_F98EB6: Call 0.Method_Proc_194_40_F99010C (var_8E, var_86)
  loc_F98EC6: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F98EDC:   Set var_8C = Me.Txt
  loc_F98EE2:   Call 0.Method_Proc_194_40_F990100 (CInt(var_86), var_98)
  loc_F98EEA:   var_98.Text = vbNullString
  loc_F98F06:   Set var_8C = Me.Txt
  loc_F98F0C:   Call 0.Method_Proc_194_40_F990100 (CInt(var_86), var_98)
  loc_F98F14:   var_98.Tag = vbNullString
  loc_F98F23: Next var_92 'Byte
  loc_F98F35: Set var_8C = Me.LblType
  loc_F98F3B: Call 0.Method_Proc_194_40_F990100 (0, var_98)
  loc_F98F43: var_98.Caption = vbNullString
  loc_F98F5B: Set var_8C = Me.LblType
  loc_F98F61: Call 0.Method_Proc_194_40_F990100 (1, var_98)
  loc_F98F69: var_98.Caption = vbNullString
  loc_F98F88: Me.FGrid.Rows = 1
  loc_F98FA5: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F98FAD: Set var_98 = Me.FGrid
  loc_F98FDC: Me.FGrid.FixedRows = 1
  loc_F98FF2: Set var_8C = Me.Txt
  loc_F98FF8: Call 0.Method_Proc_194_40_F990100 (CInt(5), var_98, "Un-Cleared")
  loc_F99000: var_98.Text = FGrid.DispID_10000
  loc_F9900C: Exit Sub
End Sub

Public Sub Proc_194_41_F770B8(arg_C) 'F770B8
  'Data Table: 48ED04
  Dim var_98 As TextBox
  loc_F76F76: Set var_8C = Me.Txt
  loc_F76F7C: Call 0.Method_Proc_194_41_F770B8C (var_8E, var_86)
  loc_F76F8C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F76FA2:   Set var_8C = Me.Txt
  loc_F76FA8:   Call 0.Method_Proc_194_41_F770B80 (CInt(var_86), var_98)
  loc_F76FB0:   var_98.Enabled = arg_C
  loc_F76FBF: Next var_92 'Byte
  loc_F76FD2: Set var_8C = Me.Txt
  loc_F76FD8: Call 0.Method_Proc_194_41_F770B80 (CInt(2), var_98)
  loc_F76FE0: var_98.Enabled = False
  loc_F76FF9: Set var_8C = Me.Txt
  loc_F76FFF: Call 0.Method_Proc_194_41_F770B80 (CInt(3), var_98)
  loc_F77007: var_98.Enabled = False
  loc_F7701C: Set var_8C = Me.TopCtrl1
  loc_F77022: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_F77033: Set var_8C = Me.TopCtrl1
  loc_F77039: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_F7704A: Set var_8C = Me.TopCtrl1
  loc_F77050: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_F77061: Set var_8C = Me.TopCtrl1
  loc_F77067: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_F77078: Set var_8C = Me.TopCtrl1
  loc_F7707E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_F7708F: Set var_8C = Me.TopCtrl1
  loc_F77095: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_F770A6: Set var_8C = Me.TopCtrl1
  loc_F770AC: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030014(False)
  loc_F770B4: Exit Sub
End Sub

Public Sub Proc_194_42_E84130
  'Data Table: 48ED04
  loc_E840DC: If (CBool(Me.DGBank.Visible) = &HFF) Then
  loc_E840EE:   Me.DGBank.Visible = False
  loc_E840F6: End If
  loc_E84112: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_E84124:   Me.DGParty.Visible = False
  loc_E8412C: End If
  loc_E8412C: Exit Sub
End Sub

Public Sub Proc_194_43_E83218
  'Data Table: 48ED04
  loc_E831B8: Call Proc_194_42_E84130()
  loc_E831F4: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E831F7:   Call TopCtrl1_UnknownEvent_16()
  loc_E831FF: Else
  loc_E83205:   Call 0.Method_arg_1E8 (var_108)
  loc_E8320D:   Call var_108.SetFocus
  loc_E83216: End If
  loc_E83216: Exit Sub
End Sub
