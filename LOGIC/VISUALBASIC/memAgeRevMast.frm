VERSION 5.00
Begin VB.Form memAgeRevMast
  Caption = "Member Category Wise Revenue"
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
  ClientWidth = 11130
  ClientHeight = 5145
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11130
    Height = 450
    TabIndex = 12
  End
  Begin CheckBox Check1
    Caption = "Carry Last Information"
    ForeColor = &HC0&
    Left = 735
    Top = 5925
    Width = 2655
    Height = 285
    TabIndex = 11
    Value = 1
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1515
    Top = 2580
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 975
    Top = 4035
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 8
    End
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 2085
    Top = 900
    Width = 1410
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
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
    ForeColor = &HFF0000&
    Left = 2085
    Top = 600
    Width = 3930
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin DataGrid DGCat
    Left = 10200
    Top = 2415
    Width = 4230
    Height = 2685
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin MSFlexGrid FGPoint
    Left = 12225
    Top = 4935
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGRev
    Left = 9555
    Top = 1680
    Width = 3930
    Height = 2565
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin MSHFlexGrid FGrid
    Left = 705
    Top = 1560
    Width = 8535
    Height = 4275
    TabIndex = 10
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3885
    Top = 6600
    Width = 2790
    Height = 285
    TabIndex = 14
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
    Left = 510
    Top = 6600
    Width = 2880
    Height = 255
    TabIndex = 13
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
  Begin Label Label2
    Caption = "Applicable Date:"
    ForeColor = &HFF0000&
    Left = 450
    Top = 915
    Width = 1515
    Height = 270
    TabIndex = 6
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
    Caption = "Member Category :"
    ForeColor = &HFF0000&
    Left = 450
    Top = 600
    Width = 1515
    Height = 270
    TabIndex = 5
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

Attribute VB_Name = "memAgeRevMast"

Private global_72 As Integer
Private global_52 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '1126F18
  'Data Table: 4A5324
  Dim var_8C As Variant
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_1126BC2: Set var_88 = Me.TxtGrid
  loc_1126BC8: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_1126BD6: Proc_6_74_E226B0(var_8C)
  loc_1126BE2: Call Proc_271_43_E873B8(var_8C)
  loc_1126BF5: Set var_88 = Me.TxtGrid
  loc_1126BFB: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_1126C03: var_8C.MaxLength = 0
  loc_1126C1B: If (Index = 0) Then
  loc_1126C34:   Me.FGrid.CellBackColor = CVar(CLng(global_96))
  loc_1126C4F:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1126C8E:   Set var_108 = Me.TxtGrid
  loc_1126C94:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_1126C9C:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1126CCD:   var_114 = CLng(Me.FGrid.Col)
  loc_1126CDD:   If (var_114 = CLng(1)) Then
  loc_1126D21:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1126D24:       Exit Sub
  loc_1126D25:     End If
  loc_1126D30:     Set var_8C = Me.FGPoint
  loc_1126D48:     Proc_6_137_1193554(Me.DGRev, global_68, Index, var_8C)
  loc_1126D64:     Set var_88 = Me.TxtGrid
  loc_1126D6A:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, &H32)
  loc_1126D72:     var_8C.MaxLength = var_114
  loc_1126D91:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1126D99:     var_E4 = CVar(CLng(1)) 'Long
  loc_1126DCC:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1126DD5:       Me.MoveFirst
  loc_1126DED:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1126DF5:       var_E4 = CVar(CLng(6)) 'Long
  loc_1126DFE:       Set var_8C = Me.FGrid
  loc_1126E15:       Proc_6_17_EAA2B0(var_12C, CVar(CStr(var_8C.TextMatrix))), var_E4, var_A4)
  loc_1126E3E:       Me.Find CStr("Code=" & var_12C), 0, 1
  loc_1126E6E:       If (Me.EOF = &HFF) Then
  loc_1126E77:         Me.MoveFirst
  loc_1126E7C:       End If
  loc_1126E7C:     End If
  loc_1126E7F:   Else
  loc_1126E86:     If (var_114 = CLng(2)) Then
  loc_1126E98:       Set var_88 = Me.TxtGrid
  loc_1126E9E:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 8, var_15C)
  loc_1126EA6:       var_8C.MaxLength = var_E4
  loc_1126EBB:       If (global_72 = 0) Then
  loc_1126EC6:         var_110 = "{Home}+{End}"
  loc_1126ECC:         Proc_303_0_FB9B68(CStr("Code=" & var_12C), 0, var_A4)
  loc_1126ED4:       End If
  loc_1126ED7:     Else
  loc_1126EDE:       If Not (var_114 = CLng(4)) Then
  loc_1126EE8:         If (var_114 = CLng(5)) Then
  loc_1126EEB:         End If
  loc_1126EFA:         Set var_88 = Me.TxtGrid
  loc_1126F00:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 3)
  loc_1126F08:         var_8C.MaxLength = var_A4
  loc_1126F14:       End If
  loc_1126F14:     End If
  loc_1126F14:   End If
  loc_1126F14: End If
  loc_1126F14: Exit Sub
  loc_1126F15: var_92 = 
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11BB150
  'Data Table: 4A5324
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C4 As Variant
  Dim var_98 As DataGrid
  Dim Me As Recordset15
  loc_11BAD14: If (KeyCode = 0) Then
  loc_11BAD21:   If (CLng(Shift) = &H1B) Then
  loc_11BAD31:     Set var_8C = Me.TxtGrid
  loc_11BAD37:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_11BAD51:     Set var_98 = Me.TxtGrid
  loc_11BAD57:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_11BAD5F:     var_9C.Text = var_90.Tag
  loc_11BAD76:     Set var_8C = Me.FGrid
  loc_11BAD93:     Set var_8C = Me.TxtGrid
  loc_11BAD99:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_11BADA1:     var_90.Visible = FGrid.DispID_8001
  loc_11BADBB:     Set var_8C = Me.TxtGrid
  loc_11BADC1:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_11BADC9:     var_90.MaxLength = 0
  loc_11BADD5:     Exit Sub
  loc_11BADD6:   End If
  loc_11BADF9:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_11BAE08:     Set var_8C = Me.TxtGrid
  loc_11BAE0E:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B4)
  loc_11BAE16:     var_B0 = var_90.Left
  loc_11BAE2D:     Me.DGRev.Left = CVar(var_B4)
  loc_11BAE47:     Set var_98 = Me.TxtGrid
  loc_11BAE4D:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_11BAE66:     Set var_8C = Me.TxtGrid
  loc_11BAE6C:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_11BAE80:     var_C4 = CVar((var_90.Top + var_9C.Height)) 'Single
  loc_11BAE8F:     Me.DGRev.Top = CVar(var_90.Top)
  loc_11BAEBE:     Set var_9C = Me.FGPoint
  loc_11BAEC9:     Set var_98 = Nothing
  loc_11BAEF7:     Proc_6_69_134A198(Me.DGRev, Me.TxtGrid, KeyCode, global_68, Shift, &HFF)
  loc_11BAF24:     If (Me.RecordCount > 0) Then
  loc_11BAF2B:       Set var_98 = Me.DGRev
  loc_11BAF4A:       Proc_6_138_106D6F8(var_98, global_68, KeyCode, Me.FGPoint, 1)
  loc_11BAF58:     End If
  loc_11BAF62:     If (CLng(Shift) = &HD) Then
  loc_11BAF6B:       Call Proc_271_46_12BDCB4(KeyCode, var_DE, var_98)
  loc_11BAF76:       If (var_DE = &HFF) Then
  loc_11BAFBC:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, 6)
  loc_11BAFCC:       End If
  loc_11BAFCC:     End If
  loc_11BAFCF:   Else
  loc_11BAFD6:     If (var_B0 = CLng(2)) Then
  loc_11BB019:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_11BB022:         Call Proc_271_46_12BDCB4(KeyCode, var_DE, 0, 2)
  loc_11BB02D:         If (var_DE = &HFF) Then
  loc_11BB073:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, 6, 0)
  loc_11BB083:         End If
  loc_11BB083:       End If
  loc_11BB086:     Else
  loc_11BB08D:       If Not (var_B0 = CLng(3)) Then
  loc_11BB097:         If Not (var_B0 = CLng(4)) Then
  loc_11BB0A1:           If (var_B0 = CLng(5)) Then
  loc_11BB0A4:           End If
  loc_11BB0A4:         End If
  loc_11BB0E4:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_11BB0ED:           Call Proc_271_46_12BDCB4(KeyCode, var_DE, 3, 0)
  loc_11BB0F8:           If (var_DE = &HFF) Then
  loc_11BB13E:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, 6, 0)
  loc_11BB14E:           End If
  loc_11BB14E:         End If
  loc_11BB14E:       End If
  loc_11BB14E:     End If
  loc_11BB14E:   End If
  loc_11BB14E: End If
  loc_11BB14E: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '10114CC
  'Data Table: 4A5324
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim arg_10 As Integer
  loc_10112BB: Proc_6_58_E054C0(arg_10)
  loc_10112CC: If (KeyAscii = 0) Then
  loc_10112E2:   var_A0 = CLng(Me.FGrid.Col)
  loc_10112F2:   If (var_A0 = CLng(1)) Then
  loc_1011311:     If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_1011323:       var_A4 = "Name"
  loc_101133E:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_68, arg_10)
  loc_1011358:       Set var_AC = Me.FGPoint
  loc_1011370:       Proc_6_138_106D6F8(Me.DGRev, global_68, KeyAscii, var_AC)
  loc_101137E:     End If
  loc_1011381:   Else
  loc_1011388:     If (var_A0 = CLng(2)) Then
  loc_1011395:       Set var_8C = Me.TxtGrid
  loc_101139B:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_10113B6:       Proc_6_42_129A86C(var_AC, arg_10, 5, 2)
  loc_10113C5:     Else
  loc_10113CC:       If (var_A0 = CLng(3)) Then
  loc_10113F8:         If (Ucase(Chr(CLng(arg_10))) = "P") Then
  loc_1011407:           Set var_8C = Me.TxtGrid
  loc_101140D:           Call 0.Method_TxtGrid_KeyPress0 (0, var_AC, "Per")
  loc_1011415:           var_AC.Text = 0
  loc_1011424:         Else
  loc_101144D:           If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_101145C:             Set var_8C = Me.TxtGrid
  loc_1011462:             Call 0.Method_TxtGrid_KeyPress0 (0, var_AC, "Amt")
  loc_101146A:             var_AC.Text = var_A0
  loc_1011476:           End If
  loc_1011476:         End If
  loc_1011478:         arg_10 = 0
  loc_101147E:       Else
  loc_1011485:         If Not (var_A0 = CLng(4)) Then
  loc_101148F:           If (var_A0 = CLng(5)) Then
  loc_1011492:           End If
  loc_101149C:           Set var_8C = Me.TxtGrid
  loc_10114A2:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC)
  loc_10114BD:           Proc_6_42_129A86C(var_AC, arg_10, 3)
  loc_10114C9:         End If
  loc_10114C9:       End If
  loc_10114C9:     End If
  loc_10114C9:   End If
  loc_10114C9: End If
  loc_10114C9: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDA1E4
  'Data Table: 4A5324
  Dim var_A0 As Long
  loc_EDA130: On Error Goto loc_EDA1DB
  loc_EDA13F: If (KeyCode = 0) Then
  loc_EDA155:   var_A0 = CLng(Me.FGrid.Col)
  loc_EDA165:   If (var_A0 = CLng(1)) Then
  loc_EDA18B:     If ((Shift <> &HD) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_EDA19C:       Call TxtGrid_KeyDown(KeyCode, global_74)
  loc_EDA1CB:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_68, Shift, "Name")
  loc_EDA1DA:     End If
  loc_EDA1DA:   End If
  loc_EDA1DA: End If
  loc_EDA1DA: Exit Sub
  loc_EDA1DB: ' Referenced from: EDA130
  loc_EDA1DB: Proc_6_60_E62BC4(&HFF, 0)
  loc_EDA1E0: Exit Sub
  loc_EDA1E1: If var_A0 Then Exit Sub
  loc_EDA1E1: End If
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23184
  'Data Table: 4A5324
  Dim arg_10 As Integer
  loc_E2316C: If (Cancel = 0) Then
  loc_E23175:   Call Proc_271_46_12BDCB4(Cancel, var_88)
  loc_E2317E:   arg_10 = Not(var_88)
  loc_E23181: End If
  loc_E23181: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FF2308
  'Data Table: 4A5324
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FF212E: Set var_88 = Me.Txt
  loc_FF2134: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FF2142: Proc_6_74_E226B0(var_8C)
  loc_FF214E: Call Proc_271_43_E873B8(var_8C)
  loc_FF2156: var_92 = Index
  loc_FF2161: If (var_92 = CInt(0)) Then
  loc_FF217B:   If (Me.RecordCount > 0) Then
  loc_FF2189:     Set var_8C = Me.FGPoint
  loc_FF21A1:     Proc_6_137_1193554(Me.DGCat, global_64, Index)
  loc_FF21AF:   End If
  loc_FF21FD:   Set var_88 = Me.Txt
  loc_FF2203:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FF220B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FF2223:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FF2226:     Exit Sub
  loc_FF2227:   End If
  loc_FF2234:   Set var_88 = Me.Txt
  loc_FF223A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FF2242:   var_A0 = var_8C.Text
  loc_FF224A:   var_D4 = CVar(var_A0) 'String
  loc_FF228F:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FF2298:     Me.MoveFirst
  loc_FF22BD:     Set var_88 = Me.Txt
  loc_FF22C3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_FF22CB:     0 = var_8C.Text
  loc_FF22D9:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_FF22EF:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_FF2307:   End If
  loc_FF2307: End If
  loc_FF2307: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F3B2FC
  'Data Table: 4A5324
  loc_F3B1F6: If (CLng(Shift) = &H1B) Then
  loc_F3B1F9:   Call Proc_271_43_E873B8()
  loc_F3B1FE:   Exit Sub
  loc_F3B1FF: End If
  loc_F3B20D: If (KeyCode = CInt(0)) Then
  loc_F3B228:   Set var_9C = Nothing
  loc_F3B233:   Set var_98 = Nothing
  loc_F3B261:   Proc_6_69_134A198(Me.DGCat, Me.Txt, KeyCode, global_64, Shift, 0)
  loc_F3B275: End If
  loc_F3B2B0: If ((CBool(Me.DGCat.Visible) = 0) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_F3B2C8:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F3B2D1:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_F3B2D6:   End If
  loc_F3B2EB:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F3B2F4:     Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_F3B2F9:   End If
  loc_F3B2F9: End If
  loc_F3B2F9: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E07940
  'Data Table: 4A5324
  Dim var_86 As Integer
  loc_E07933: Proc_6_58_E054C0(arg_10)
  loc_E0793B: var_86 = KeyAscii
  loc_E0793E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA6C88
  'Data Table: 4A5324
  loc_EA6C1A: If (KeyCode = CInt(0)) Then
  loc_EA6C39:   If (CBool(Me.DGCat.Visible) = &HFF) Then
  loc_EA6C4D:     var_A4 = "Name"
  loc_EA6C71:     Proc_6_68_129FB34(Me.DGCat, Me.Txt, KeyCode, global_64)
  loc_EA6C84:   End If
  loc_EA6C84: End If
  loc_EA6C84: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B82C
  'Data Table: 4A5324
  loc_E4B80A: Set var_88 = Me.Txt
  loc_E4B810: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B81E: Proc_6_73_E22704(var_8C)
  loc_E4B82A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10D293C
  'Data Table: 4A5324
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_C8 As TextBox
  loc_10D263F: var_86 = Cancel
  loc_10D264A: If (var_86 = CInt(0)) Then
  loc_10D2658:   Set var_8C = Me.Txt
  loc_10D265E:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_10D2666:   var_98 = "Category"
  loc_10D2687:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_10D2695:     Set var_8C = Me.Txt
  loc_10D269B:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_10D26A3:     var_90.SetFocus
  loc_10D26B1:     arg_10 = &HFF
  loc_10D26B4:     Exit Sub
  loc_10D26B5:   End If
  loc_10D2703:   Set var_8C = Me.Txt
  loc_10D2709:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_10D2711:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_10D2729:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_10D2739:     Set var_8C = Me.Txt
  loc_10D273F:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D2747:     var_90.Text = vbNullString
  loc_10D2760:     Set var_8C = Me.Txt
  loc_10D2766:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D276E:     var_90.Tag = vbNullString
  loc_10D277D:   Else
  loc_10D27B8:     Set var_94 = Me.Txt
  loc_10D27BE:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10D27C6:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10D27F9:     var_90 = Me.Fields.Item("Code")
  loc_10D2817:     Set var_94 = Me.Txt
  loc_10D281D:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10D2825:     var_B4.Tag = CStr(var_90.Value)
  loc_10D283B:   End If
  loc_10D283E: Else
  loc_10D2846:   If (var_86 = CInt(1)) Then
  loc_10D2854:     Set var_8C = Me.Txt
  loc_10D285A:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_10D2883:     If (Proc_6_27_EA565C(var_90, "App. Date") = 0) Then
  loc_10D2891:       Set var_8C = Me.Txt
  loc_10D2897:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_10D289F:       var_90.SetFocus
  loc_10D28AD:       arg_10 = &HFF
  loc_10D28B0:       Exit Sub
  loc_10D28B1:     End If
  loc_10D28BB:     Set var_8C = Me.Txt
  loc_10D28C1:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D28E1:     Set var_B4 = Me.Txt
  loc_10D28E7:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_10D28EF:     var_C8.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_10D2915:     Me.FGrid.Row = 1
  loc_10D2930:     Me.FGrid.Col = 1
  loc_10D2938:   End If
  loc_10D2938: End If
  loc_10D2938: Exit Sub
  loc_10D2939: DOC
End Sub

Private Sub FGrid_UnknownEvent_0 'E5E8B4
  'Data Table: 4A5324
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5E87F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5E892: Set var_A8 = Me.TxtGrid
  loc_E5E898: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5E8A0: var_AC.Visible = False
  loc_E5E8AC: Call Proc_271_43_E873B8()
  loc_E5E8B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E685D8
  'Data Table: 4A5324
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68594: Set var_88 = Me.TxtGrid
  loc_E6859A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E685B4: If (var_8C.Visible = 0) Then
  loc_E685CD:   Me.FGrid.BackColorSel = CVar(CLng(global_96))
  loc_E685D5: End If
  loc_E685D5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E4B6F4
  'Data Table: 4A5324
  loc_E4B6CC: Set var_88 = Me.TopCtrl1
  loc_E4B6D2: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_E4B6EB: If (CStr() <> "Browse") Then
  loc_E4B6EE:   Call Proc_271_45_E41558()
  loc_E4B6F3: End If
  loc_E4B6F3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10E4BFC
  'Data Table: 4A5324
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10E48E8: Set var_88 = Me.TopCtrl1
  loc_10E48EE: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_10E4933: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10E493C:   Call Form_KeyDown(Cancel, arg_10)
  loc_10E4941: End If
  loc_10E4945: Set var_88 = Me.TopCtrl1
  loc_10E494B: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_10E4964: If (CStr() = "Browse") Then
  loc_10E4967:   Exit Sub
  loc_10E4968: End If
  loc_10E49DC: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10E49E7:   var_9C = "+{Tab}"
  loc_10E49ED:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_10E49F7:   Cancel = 0
  loc_10E49FD: Else
  loc_10E4A54:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10E4A59:     Cancel = 0
  loc_10E4A5C:   End If
  loc_10E4A5C: End If
  loc_10E4A88: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10E4A9F: Set var_88 = Me.TopCtrl1
  loc_10E4AA5: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(Cancel)
  loc_10E4ABE: If (CStr(Cancel) = "Edit") Then
  loc_10E4AC1:   Exit Sub
  loc_10E4AC2: End If
  loc_10E4AD3: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10E4AE9:   var_DC = CLng(Me.FGrid.Col)
  loc_10E4AF9:   If (var_DC = CLng(1)) Then
  loc_10E4B0F:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E4B17:     var_FC = CVar(CLng(1)) 'Long
  loc_10E4B1C:     var_11C = vbNullString
  loc_10E4B26:     Set var_A0 = Me.FGrid
  loc_10E4B2C:     LateIdCallSt
  loc_10E4B51:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E4B59:     var_FC = CVar(CLng(6)) 'Long
  loc_10E4B5E:     var_11C = vbNullString
  loc_10E4B68:     Set var_A0 = Me.FGrid
  loc_10E4B6E:     LateIdCallSt
  loc_10E4B83:   Else
  loc_10E4B8A:     If (var_DC = CLng(2)) Then
  loc_10E4BA0:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E4BB8:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10E4BBD:       var_11C = vbNullString
  loc_10E4BC7:       Set var_B4 = Me.FGrid
  loc_10E4BCD:       LateIdCallSt
  loc_10E4BE5:     End If
  loc_10E4BE5:   End If
  loc_10E4BE5: End If
  loc_10E4BEB: If (Cancel = &HD) Then
  loc_10E4BF3:   global_72 = 0
  loc_10E4BF6: End If
  loc_10E4BF8: Cancel = 0
  loc_10E4BFB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E58F58
  'Data Table: 4A5324
  loc_E58F24: Set var_88 = Me.TopCtrl1
  loc_E58F2A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_E58F43: If (CStr() = "Browse") Then
  loc_E58F46:   Exit Sub
  loc_E58F47: End If
  loc_E58F50: Call FGrid_UnknownEvent_C()
  loc_E58F55: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1161D30
  'Data Table: 4A5324
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1161984: Set var_88 = Me.TopCtrl1
  loc_116198A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11619A3: If (CStr() = "Browse") Then
  loc_11619A6:   Exit Sub
  loc_11619A7: End If
  loc_11619BA: var_A0 = CLng(Me.FGrid.Col)
  loc_11619CA: If (var_A0 = CLng(1)) Then
  loc_11619D1:   Set var_C4 = Me.FGrid
  loc_11619F5:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1161A22:   Set var_B4 = var_C4
  loc_1161A34:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1161A5C:   Set var_88 = Me.TxtGrid
  loc_1161A62:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1161A6A:   0 = var_B4.Text
  loc_1161A83:   If (Len(var_9C) <= 1) Then
  loc_1161A92:     Set var_88 = Me.TxtGrid
  loc_1161A98:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1161AA0:     var_CA = var_B4.Text
  loc_1161AB1:     Set var_B8 = Me.TxtGrid
  loc_1161AB7:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1161ABF:     var_C4.Text = var_9C
  loc_1161AD2:   End If
  loc_1161ADE:   Set var_88 = Me.TxtGrid
  loc_1161AE4:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1161AFE:   Set var_B8 = Me.TxtGrid
  loc_1161B04:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1161B0C:   var_C4.SelStart = Len(var_B4.Text)
  loc_1161B22: Else
  loc_1161B29:   If (var_A0 = CLng(2)) Then
  loc_1161B6A:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1161B7F:   Else
  loc_1161B86:     If (var_A0 = CLng(3)) Then
  loc_1161BBA:       var_CA = Asc(CStr(Ucase(Chr(CLng(Cancel)))))
  loc_1161BDE:       Set var_B4 = Me.FGrid
  loc_1161BF0:       Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0, var_CA)
  loc_1161C35:       If (Ucase(Chr(CLng(Cancel))) = "P") Then
  loc_1161C44:         Set var_88 = Me.TxtGrid
  loc_1161C4A:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, "Per", 0, var_CA)
  loc_1161C52:         var_B4.Text = &HFF
  loc_1161C61:       Else
  loc_1161C8A:         If (Ucase(Chr(CLng(Cancel))) = "A") Then
  loc_1161C99:           Set var_88 = Me.TxtGrid
  loc_1161C9F:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, "Amt")
  loc_1161CA7:           var_B4.Text = Cancel
  loc_1161CB3:         End If
  loc_1161CB3:       End If
  loc_1161CB6:     Else
  loc_1161CBD:       If Not (var_A0 = CLng(4)) Then
  loc_1161CC7:         If (var_A0 = CLng(5)) Then
  loc_1161CCA:         End If
  loc_1161D08:         Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF)
  loc_1161D1A:       End If
  loc_1161D1A:     End If
  loc_1161D1A:   End If
  loc_1161D1A: End If
  loc_1161D24: If (CLng(Cancel) <> &HD) Then
  loc_1161D2C:   global_72 = &HFF
  loc_1161D2F: End If
  loc_1161D2F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1003B10
  'Data Table: 4A5324
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_1003918: Set var_88 = Me.TopCtrl1
  loc_100391E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_1003937: If (CStr() = "Browse") Then
  loc_100393A:   Exit Sub
  loc_100393B: End If
  loc_100393F: Set var_88 = Me.TopCtrl1
  loc_1003945: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_100395E: If (CStr() = "Edit") Then
  loc_1003961:   Exit Sub
  loc_1003962: End If
  loc_100397F: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1003982:   Exit Sub
  loc_1003983: End If
  loc_1003994: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_10039B6:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10039F0:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_1003A12:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1003A28:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1003A31:         Set var_110 = Me.FGrid
  loc_1003A4C:       Else
  loc_1003A5F:         Me.FGrid.Rows = 1
  loc_1003A85:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_1003A8D:         Set var_110 = Me.FGrid
  loc_1003ABA:         Me.FGrid.FixedRows = 1
  loc_1003AC2:       End If
  loc_1003AC2:     End If
  loc_1003AC5:   Else
  loc_1003AE6:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_1003AF6:   End If
  loc_1003AFA:   Set var_88 = Me.FGrid
  loc_1003B0B: End If
  loc_1003B0B: Exit Sub
  loc_1003B0C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E41368
  'Data Table: 4A5324
  Dim var_8C As TextBox
  loc_E4133C: Call Proc_271_43_E873B8()
  loc_E4134C: Set var_88 = Me.TxtGrid
  loc_E41352: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4135A: var_8C.Visible = False
  loc_E41366: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EA6738
  'Data Table: 4A5324
  Dim var_8C As CheckBox
  Dim var_94 As TextBox
  loc_EA66B0: On Error Goto loc_EA6732
  loc_EA66DA: Call Proc_271_42_E76DD4(Proc_5_1_100CB50("ADD", Me))
  loc_EA6704: If (CLng(Me.Check1.Value) = 0) Then
  loc_EA6707:   Call Proc_271_40_F18450(global_60)
  loc_EA670C: End If
  loc_EA6717: Set var_8C = Me.Txt
  loc_EA671D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EA6725: var_94.SetFocus
  loc_EA6731: Exit Sub
  loc_EA6732: ' Referenced from: EA66B0
  loc_EA6732: Proc_6_60_E62BC4(var_94)
  loc_EA6737: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EED418
  'Data Table: 4A5324
  loc_EED358: On Error Goto loc_EED411
  loc_EED392: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EED3BC:   Call Proc_271_42_E76DD4(Proc_5_1_100CB50("INI", Me))
  loc_EED3CF:   Set var_10C = Me.TopCtrl1
  loc_EED3D5:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_EED3E6:   Set var_10C = Me.TopCtrl1
  loc_EED3EC:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_EED3FD:   Set var_10C = Me.TopCtrl1
  loc_EED403:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_EED40B:   Call Proc_271_41_132A894(global_60)
  loc_EED410: End If
  loc_EED410: Exit Sub
  loc_EED411: ' Referenced from: EED358
  loc_EED411: Proc_6_60_E62BC4()
  loc_EED416: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15258
  'Data Table: 4A5324
  loc_E1524D: Me.Global.Unload Me
  loc_E15255: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'ECC2D4
  'Data Table: 4A5324
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_ECC230: On Error Goto loc_ECC2CB
  loc_ECC24D: If (Me.Recordset15.RecordCount <= 0) Then
  loc_ECC256:   var_B8 = "Information"
  loc_ECC271:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_ECC281:   Exit Sub
  loc_ECC282: End If
  loc_ECC289: var_10C = "Select DISTINCT (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103)) AS Code,MC.Name as Category,Convert(Varchar(11),MR.AppDate,106) As AppDate FROM (MemAgeRevWise MR Left Join MemCatMast MC On MR.MemCat=MC.Code) Where (MR.LOGSITE_CODE='" & MemVar_1F92078
  loc_ECC290: MemVar_1F920E4 = var_10C & "' or MR.LOGSITE_CODE='HO') Order By (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103))"
  loc_ECC29D: MemVar_1F92120 = Me
  loc_ECC2AA: Proc_6_126_F1BCC0("3000,1000")
  loc_ECC2C5: Call 0.Method_arg_2B0 (1, var_B8)
  loc_ECC2CA: Exit Sub
  loc_ECC2CB: ' Referenced from: ECC230
  loc_ECC2CB: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_ECC2D0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E41B3C
  'Data Table: 4A5324
  loc_E41B2C: Proc_5_0_110649C(&HFF, Me)
  loc_E41B34: Call Proc_271_41_132A894(global_60)
  loc_E41B39: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E41A10
  'Data Table: 4A5324
  loc_E41A00: Proc_5_0_110649C(&HFF, Me)
  loc_E41A08: Call Proc_271_41_132A894(global_60)
  loc_E41A0D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E419AC
  'Data Table: 4A5324
  loc_E4199C: Proc_5_0_110649C(&HFF, Me)
  loc_E419A4: Call Proc_271_41_132A894(global_60)
  loc_E419A9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E4168C
  'Data Table: 4A5324
  loc_E4167C: Proc_5_0_110649C(&HFF, Me)
  loc_E41684: Call Proc_271_41_132A894(global_60)
  loc_E41689: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E230DC
  'Data Table: 4A5324
  Dim Me As Recordset15
  loc_E230C3: Me.Requery -1
  loc_E230D3: Me.Requery -1
  loc_E230D8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14481A8
  'Data Table: 4A5324
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_130 As Variant
  Dim var_98 As String
  Dim unk_4A533A As Connection15
  Dim var_90 As TextBox
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_1AC As MSHFlexGrid
  Dim var_170 As Variant
  Dim var_1F0 As MSHFlexGrid
  Dim var_5F0 As Double
  Dim var_298 As Variant
  Dim var_5F8 As Double
  Dim var_600 As Double
  Dim var_458 As Variant
  Dim var_110 As Variant
  Dim var_190 As Variant
  Dim var_1BC As Variant
  Dim var_244 As Variant
  Dim var_478 As Variant
  Dim var_5C0 As Variant
  Dim var_1A8 As TextBox
  Dim var_19C As String
  loc_1447734: On Error Goto loc_1448153
  loc_144773B: var_86 = CByte(0) 'Byte
  loc_144774A: Set var_8C = Me.Txt
  loc_1447750: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1447779: If (Proc_6_27_EA565C(var_90, "Category") = 0) Then
  loc_1447783:   Call Txt_GotFocus(CInt(0))
  loc_1447788:   Exit Sub
  loc_1447789: End If
  loc_1447794: Set var_8C = Me.Txt
  loc_144779A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_90)
  loc_14477C3: If (Proc_6_27_EA565C(var_90, "App. Date") = 0) Then
  loc_14477CD:   Call Txt_GotFocus(CInt(1))
  loc_14477D2:   Exit Sub
  loc_14477D3: End If
  loc_14477D6: Call Proc_271_44_FC9BE0(var_9A)
  loc_14477E1: If (var_9A = &HFF) Then
  loc_14477E4:   Exit Sub
  loc_14477E5: End If
  loc_144780A: For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B0 'Integer
  loc_144783B:   If ((var_88 > 1) And (CLng(var_88) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_1447842:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_144784A:     var_E0 = CVar(CLng(6)) 'Long
  loc_1447864:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_144786A:     var_110 = Trim(var_100)
  loc_1447886:     If (var_110 = vbNullString) Then
  loc_14478A2:       MsgBox("Define revenue ", &H40, var_100, var_110, var_130)
  loc_14478B2:       Exit Sub
  loc_14478B3:     End If
  loc_14478B3:   End If
  loc_14478B7:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_14478BF:   var_E0 = CVar(CLng(6)) 'Long
  loc_14478FB:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1447902:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_144790A:     var_E0 = CVar(CLng(2)) 'Long
  loc_1447946:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_144794D:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1447955:       var_E0 = CVar(CLng(1)) 'Long
  loc_144799C:       MsgBox("Fill Value For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_14479B9:       Set var_8C = Me.FGrid
  loc_14479CA:       Exit Sub
  loc_14479CB:     End If
  loc_14479CF:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_14479D7:     var_E0 = CVar(CLng(3)) 'Long
  loc_1447A13:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1447A1A:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1447A22:       var_E0 = CVar(CLng(1)) 'Long
  loc_1447A69:       MsgBox("Fill P/A For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_1447A86:       Set var_8C = Me.FGrid
  loc_1447A97:       Exit Sub
  loc_1447A98:     End If
  loc_1447A9C:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1447AA4:     var_E0 = CVar(CLng(4)) 'Long
  loc_1447AD4:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1447ADB:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1447AE3:       var_E0 = CVar(CLng(1)) 'Long
  loc_1447B2A:       MsgBox("Fill From Age For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_1447B47:       Set var_8C = Me.FGrid
  loc_1447B58:       Exit Sub
  loc_1447B59:     End If
  loc_1447B5D:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1447B65:     var_E0 = CVar(CLng(5)) 'Long
  loc_1447B95:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1447B9C:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1447BA4:       var_E0 = CVar(CLng(1)) 'Long
  loc_1447BEB:       MsgBox("Fill To Age For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_1447C08:       Set var_8C = Me.FGrid
  loc_1447C19:       Exit Sub
  loc_1447C1A:     End If
  loc_1447C1A:   End If
  loc_1447C1D: Next var_B0 'Integer
  loc_1447C2B: unk_4A533A.BeginTrans var_194
  loc_1447C34: var_86 = CByte(1) 'Byte
  loc_1447C5D: For var_198 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_198 'Integer
  loc_1447C67:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1447C6F:   var_E0 = CVar(CLng(6)) 'Long
  loc_1447C89:   var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1447CAB:   If CBool(Trim(var_100) <> vbNullString) Then
  loc_1447CBC:     Set var_8C = Me.Txt
  loc_1447CC2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_90, var_19C)
  loc_1447CCA:     var_E0 = var_90.Tag
  loc_1447CDA:     Set var_94 = Me.Txt
  loc_1447CE0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1A8)
  loc_1447CEF:     Proc_6_7_F25D88(var_100, CVar(var_1A8))
  loc_1447CF8:     var_D0 = CVar(CLng(var_88)) 'Long
  loc_1447D00:     var_F0 = CVar(CLng(6)) 'Long
  loc_1447D30:     Set var_1F0 = Me.FGrid
  loc_1447D49:     var_5F0 = Val(CStr(var_1F0.TextMatrix)))
  loc_1447D67:     var_298 = Me.FGrid.TextMatrix)
  loc_1447DA1:     var_5F8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1447DD2:     var_600 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1447DDA:     var_458 = CVar(Proc_6_15_EF2C1C(var_600, CVar(CLng(5)), CVar(CLng(var_88)), var_5F8, CVar(CLng(4)), CVar(CLng(var_88)), var_298, CVar(CLng(3)))) 'String
  loc_1447DE0:     Proc_6_7_F25D88(var_468, var_458, CVar(CLng(var_88)), var_5F0, CVar(CLng(2)))
  loc_1447DE9:     Set var_49C = Me.TopCtrl1
  loc_1447DEF:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C(CVar(CLng(var_88)))
  loc_1447E3A:     var_98 = "Insert Into MemAgeRevWise (MemCat,AppDate,RevCode,SValue,PerOrAmt," & "FrAge,ToAge,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) "
  loc_1447E86:     var_244 = CVar(var_98 & " Values ('" & var_19C & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(var_5F0) & ",'" 
  loc_1447EDC:     var_478 = var_244 & CVar(CStr(var_298)) & "'," & CVar(var_5F8) & "," & CVar(var_600) & ",'" & CVar(MemVar_1F920C8) & "'," & var_468 
  loc_1447F1B:     var_5C0 = var_478 & ",'" & IIf((CStr(var_4AC) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_1447F29:     unk_4A533A.Execute CStr(var_5C0), var_5E4, -1
  loc_1447FAD:   End If
  loc_1447FB0: Next var_198 'Integer
  loc_1447FBB: unk_4A533A.CommitTrans
  loc_1447FC4: var_86 = CByte(0) 'Byte
  loc_1447FD3: Set var_1AC = Me.Txt
  loc_1447FD9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1447FEC: Set var_8C = Me.Txt
  loc_1447FF2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_90)
  loc_1448002: var_100 = CVar(var_90.Tag) 'String
  loc_1448018: Set var_94 = Me.Txt
  loc_144801E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_19C)
  loc_1448026: 6 = var_1A8.Tag
  loc_1448033: var_AC = Space((var_100 - Len(var_19C)))
  loc_144803B: var_110 = (var_1F0 + CVar(var_1A8))
  loc_144803F: var_C0 = "**"
  loc_1448044: var_130 = (CVar(var_90.Tag & " Values ('" & var_19C & "',") + var_C0)
  loc_144806F: var_1BC = (1 + Format(CVar(var_1F0), "dd/mm/yyyy"))
  loc_14480B3: Me.Recordset15.Requery -1
  loc_14480D7: var_19C = "SearchCode ='" & CStr(CVar(var_90.Tag & " Values ('" & var_19C & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'"
  loc_14480E3: Me.Recordset15.Find var_19C, 0, 1
  loc_14480F3: Set var_8C = Me.TopCtrl1
  loc_14480F9: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_C0)
  loc_1448112: If (CStr(1) = "Add") Then
  loc_1448115:   Call TopCtrl1_UnknownEvent_A()
  loc_144811A:   Exit Sub
  loc_144811B: End If
  loc_1448134: var_98 = "INI"
  loc_1448142: Call Proc_271_42_E76DD4(Proc_5_1_100CB50(var_98, Me), global_60)
  loc_144814D: Call Proc_271_41_132A894(CVar(var_98 & " Values ('" & var_19C & "',") & var_100)
  loc_1448152: Exit Sub
  loc_1448153: ' Referenced from: 1447734
  loc_144815C: If (CInt(var_86) = 1) Then
  loc_1448165:   unk_4A533A.RollbackTrans
  loc_144816A: End If
  loc_1448172: Set var_8C = Err()
  loc_1448178: Call 0.Method_arg_2C (var_98)
  loc_1448191: MsgBox(CVar(var_98), &H10, var_100, CVar(var_98 & " Values ('" & var_19C & "',"), CVar(var_98 & " Values ('" & var_19C & "',") & var_100)
  loc_14481A4: Exit Sub
End Sub

Private Sub Form_Load() '1143ACC
  'Data Table: 4A5324
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim var_C0 As String
  Dim unk_4A533A As Connection15
  loc_1143740: On Error Goto loc_1143A88
  loc_1143752: Me.LblUser.Left = CDbl(13500)
  loc_1143769: Me.LblUser.Top = CDbl(7800)
  loc_1143780: Me.LblLDt.Top = CDbl(8160)
  loc_1143797: Me.LblLDt.Left = CDbl(13500)
  loc_11437A6: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_11437B9: Me.Label1.BackColor = CLng(MemVar_1F921B0)
  loc_11437CF: Me.Label2.BackColor = CLng(MemVar_1F921B0)
  loc_11437E5: Me.Check1.BackColor = CLng(MemVar_1F921B0)
  loc_1143800: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B0))
  loc_1143812: Set var_88 = Me.TopCtrl1
  loc_1143818: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1143826: Call 0.Method_arg_50 (var_AC)
  loc_114382E: var_BC = CVar(var_AC) 'String
  loc_114383C: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_BC)
  loc_1143862: var_C0 = "SELECT MemCatMast.Code, MemCatMast.Name FROM MemCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY MemCatMast.Name"
  loc_114386B: unk_4A533A.Execute var_C0, var_BC, -1
  loc_114389A: CVarUnk
  loc_114389F: VerifyVarObj
  loc_11438AB: LateIdStAd
  loc_11438CD: var_AC = "SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_11438DD: unk_4A533A.Execute var_AC & "' or LOGSITE_CODE='HO') ORDER BY MembershipRevMast.Description", var_BC, -1
  loc_114390C: CVarUnk
  loc_1143911: VerifyVarObj
  loc_1143917: Set var_88 = Me.DGRev
  loc_114391D: LateIdStAd
  loc_1143949: var_AC = "Select DISTINCT (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From MemAgeRevWise MR Where (MR.LOGSITE_CODE='" & MemVar_1F92078
  loc_1143950: var_BC = CVar(var_AC & "' or MR.LOGSITE_CODE='HO') Order By (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103))") 'String
  loc_114395D: Me.DGRev.Open var_BC, CVar(MemVar_1F92044), 3
  loc_1143981: var_AC = "INI"
  loc_114398F: Call Proc_271_42_E76DD4(Proc_5_1_100CB50(var_AC, Me, global_60, 1, -1, Me), Me.DGCat, Me)
  loc_11439A2: Set var_88 = Me.TopCtrl1
  loc_11439A8: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_11439B9: Set var_88 = Me.TopCtrl1
  loc_11439BF: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_11439D0: Set var_88 = Me.TopCtrl1
  loc_11439D6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_11439DE: Call Proc_271_39_11A3648(var_88, Me.TopCtrl1)
  loc_11439E3: Call Proc_271_41_132A894(var_88)
  loc_11439FB: Me.FGrid.Left = CVar(CDbl(700))
  loc_1143A16: Me.FGrid.Top = CVar(CDbl(1340))
  loc_1143A22: Set var_88 = Me.FGrid
  loc_1143A37: Call 0.Method_Me8 (var_CC)
  loc_1143A4A: var_98 = CVar(((var_CC - CDbl(2400)) - CDbl(var_88.Top))) 'Single
  loc_1143A59: Me.FGrid.Height = CVar(CDbl(1340))
  loc_1143A71: Call 0.Method_arg_160 (var_88)
  loc_1143A7F: Call 0.Method_arg_164 (var_88)
  loc_1143A87: Exit Sub
  loc_1143A88: ' Referenced from: 1143740
  loc_1143A90: Set var_88 = Err()
  loc_1143A96: Call 0.Method_arg_2C (var_AC)
  loc_1143AB7: MsgBox(CVar(var_AC), &H40, "Information", var_EC, var_10C)
  loc_1143ACA: Exit Sub
  loc_1143ACB: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E58908
  'Data Table: 4A5324
  loc_E588D3: Set global_64 = Nothing
  loc_E588E5: Set global_60 = Nothing
  loc_E588F7: Set global_68 = Nothing
  loc_E58903: global_52 = 0
  loc_E58906: Exit Sub
End Sub

Private Sub Form_Activate() 'E4D570
  'Data Table: 4A5324
  loc_E4D540: On Error Goto loc_E4D56A
  loc_E4D547: Set var_88 = Me.TopCtrl1
  loc_E4D54D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4D562: If (CLng(CInt()) = &H2D) Then
  loc_E4D565:   Call TopCtrl1_UnknownEvent_15()
  loc_E4D56A:   ' Referenced from: E4D540
  loc_E4D56A: End If
  loc_E4D56A: Proc_6_60_E62BC4()
  loc_E4D56F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E242B4
  'Data Table: 4A5324
  loc_E24299: If (global_52 = &HFF) Then
  loc_E242A9:   Me.Global.Unload Me
  loc_E242B1: End If
  loc_E242B1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8B424
  'Data Table: 4A5324
  loc_E8B3C0: On Error Goto loc_E8B3E0
  loc_E8B3D7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8B3DF: Exit Sub
  loc_E8B3E0: ' Referenced from: E8B3C0
  loc_E8B3E8: Set var_88 = Err()
  loc_E8B3EE: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8B40F: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8B422: Exit Sub
  loc_E8B423: Exit Sub
End Sub

Public Function global_52Get() '4A60D8
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4A60E7
  global_52 = Value
End Sub

Public Function global_56Get() '4A60F6
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4A6105
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E9B390
  'Data Table: 4A5324
  loc_E9B316: On Error Goto loc_E9B389
  loc_E9B322: Me.Recordset15.MoveFirst
  loc_E9B34F: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E9B37B: Proc_5_0_110649C(&HFF, Me, global_60)
  loc_E9B383: Call Proc_271_41_132A894(0)
  loc_E9B388: Exit Sub
  loc_E9B389: ' Referenced from: E9B316
  loc_E9B389: Proc_6_60_E62BC4(var_A0)
  loc_E9B38E: Exit Sub
End Sub

Public Sub Proc_271_39_11A3648
  'Data Table: 4A5324
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_104 As TextBox
  Dim var_10C As DataGrid
  Dim var_110 As TextBox
  loc_11A3230: Set var_88 = Me.FGrid
  loc_11A323F: var_88.Height = CVar(CDbl(4250))
  loc_11A3250: var_88.Width = CVar(CDbl(7500))
  loc_11A3261: var_88.Cols = 7
  loc_11A3272: var_88.Rows = 2
  loc_11A328B: global_96 = CStr(CLng(var_88.BackColor))
  loc_11A3298: var_98 = CVar(CLng(6)) 'Long
  loc_11A329D: var_CC = 0
  loc_11A32A9: LateIdCallSt
  loc_11A32B4: var_98 = CVar(CLng(6)) 'Long
  loc_11A32BF: var_CC = CVar(CInt(4)) 'Integer
  loc_11A32C6: LateIdCallSt
  loc_11A32CE: var_98 = 1
  loc_11A32DA: var_CC = CVar(CLng(6)) 'Long
  loc_11A32DF: var_EC = "1"
  loc_11A32E8: LateIdCallSt
  loc_11A32F0: var_98 = 0
  loc_11A32FC: var_CC = CVar(CLng(1)) 'Long
  loc_11A3301: var_EC = "Revenue"
  loc_11A330A: LateIdCallSt
  loc_11A3315: var_98 = CVar(CLng(1)) 'Long
  loc_11A331A: var_CC = &HC80
  loc_11A3326: LateIdCallSt
  loc_11A3331: var_98 = CVar(CLng(1)) 'Long
  loc_11A333C: var_CC = CVar(CInt(1)) 'Integer
  loc_11A3343: LateIdCallSt
  loc_11A334B: var_98 = 0
  loc_11A3357: var_CC = CVar(CLng(2)) 'Long
  loc_11A335C: var_EC = "Value"
  loc_11A3365: LateIdCallSt
  loc_11A3370: var_98 = CVar(CLng(2)) 'Long
  loc_11A337B: var_CC = CVar(CInt(7)) 'Integer
  loc_11A3382: LateIdCallSt
  loc_11A338D: var_98 = CVar(CLng(2)) 'Long
  loc_11A3398: var_CC = CVar(CInt(7)) 'Integer
  loc_11A339F: LateIdCallSt
  loc_11A33AA: var_98 = CVar(CLng(2)) 'Long
  loc_11A33AF: var_CC = &H4B0
  loc_11A33BB: LateIdCallSt
  loc_11A33C3: var_98 = 0
  loc_11A33CF: var_CC = CVar(CLng(3)) 'Long
  loc_11A33D4: var_EC = "P/A"
  loc_11A33DD: LateIdCallSt
  loc_11A33E8: var_98 = CVar(CLng(3)) 'Long
  loc_11A33F3: var_CC = CVar(CInt(4)) 'Integer
  loc_11A33FA: LateIdCallSt
  loc_11A3405: var_98 = CVar(CLng(3)) 'Long
  loc_11A3410: var_CC = CVar(CInt(4)) 'Integer
  loc_11A3417: LateIdCallSt
  loc_11A3422: var_98 = CVar(CLng(3)) 'Long
  loc_11A3427: var_CC = &H258
  loc_11A3433: LateIdCallSt
  loc_11A343B: var_98 = 0
  loc_11A3447: var_CC = CVar(CLng(4)) 'Long
  loc_11A344C: var_EC = "From Age"
  loc_11A3455: LateIdCallSt
  loc_11A3460: var_98 = CVar(CLng(4)) 'Long
  loc_11A346B: var_CC = CVar(CInt(7)) 'Integer
  loc_11A3472: LateIdCallSt
  loc_11A347D: var_98 = CVar(CLng(4)) 'Long
  loc_11A3488: var_CC = CVar(CInt(7)) 'Integer
  loc_11A348F: LateIdCallSt
  loc_11A349A: var_98 = CVar(CLng(4)) 'Long
  loc_11A349F: var_CC = &H3E8
  loc_11A34AB: LateIdCallSt
  loc_11A34B3: var_98 = 0
  loc_11A34BF: var_CC = CVar(CLng(5)) 'Long
  loc_11A34C4: var_EC = "To Age"
  loc_11A34CD: LateIdCallSt
  loc_11A34D8: var_98 = CVar(CLng(5)) 'Long
  loc_11A34E3: var_CC = CVar(CInt(7)) 'Integer
  loc_11A34EA: LateIdCallSt
  loc_11A34F5: var_98 = CVar(CLng(5)) 'Long
  loc_11A3500: var_CC = CVar(CInt(7)) 'Integer
  loc_11A3507: LateIdCallSt
  loc_11A3512: var_98 = CVar(CLng(5)) 'Long
  loc_11A3517: var_CC = &H3E8
  loc_11A3523: LateIdCallSt
  loc_11A352B: var_98 = 0
  loc_11A3537: var_CC = CVar(CLng(0)) 'Long
  loc_11A353C: var_EC = "O"
  loc_11A3545: LateIdCallSt
  loc_11A3550: var_98 = CVar(CLng(0)) 'Long
  loc_11A3555: var_CC = &H64
  loc_11A3561: LateIdCallSt
  loc_11A356C: var_98 = CVar(CLng(0)) 'Long
  loc_11A357E: LateIdCallSt
  loc_11A3586: var_98 = True
  loc_11A358D: var_88.Enabled = var_98
  loc_11A35A0: Set var_100 = Me.Txt
  loc_11A35A6: Call 0.Method_Proc_271_39_11A36480 (CInt(0), var_104, var_108, var_88, CVar(CInt(4)), var_98, var_88)
  loc_11A35AE: var_CC = var_104.Left
  loc_11A35B6: var_98 = CVar(var_108) 'Single
  loc_11A35C5: Me.DGCat.Left = var_98
  loc_11A35E1: Set var_10C = Me.Txt
  loc_11A35E7: Call 0.Method_Proc_271_39_11A36480 (CInt(0), var_110, var_114, var_98, var_88)
  loc_11A35EF: var_EC = var_110.Height
  loc_11A3602: Set var_100 = Me.Txt
  loc_11A3608: Call 0.Method_Proc_271_39_11A36480 (CInt(0), var_104, var_108)
  loc_11A3610: var_CC = var_104.Top
  loc_11A3620: var_98 = CVar(((var_108 + var_114) + CDbl(&H19))) 'Single
  loc_11A362F: Me.DGCat.Top = var_98
  loc_11A3643: Set var_88 = Nothing 
  loc_11A3647: Exit Sub
End Sub

Public Sub Proc_271_40_F18450
  'Data Table: 4A5324
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F18366: Set var_8C = Me.Txt
  loc_F1836C: Call 0.Method_Proc_271_40_F18450C (var_8E, var_86)
  loc_F1837C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F18392:   Set var_8C = Me.Txt
  loc_F18398:   Call 0.Method_Proc_271_40_F184500 (CInt(var_86), var_98)
  loc_F183A0:   var_98.Text = vbNullString
  loc_F183BC:   Set var_8C = Me.Txt
  loc_F183C2:   Call 0.Method_Proc_271_40_F184500 (CInt(var_86), var_98)
  loc_F183CA:   var_98.Tag = vbNullString
  loc_F183D9: Next var_92 'Byte
  loc_F183F2: Me.FGrid.Rows = 1
  loc_F1840F: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F18417: Set var_98 = Me.FGrid
  loc_F18446: Me.FGrid.FixedRows = 1
  loc_F1844E: Exit Sub
End Sub

Public Sub Proc_271_41_132A894
  'Data Table: 4A5324
  Dim var_94 As String
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Variant
  Dim var_F4 As Variant
  Dim unk_4A533A As Connection15
  Dim var_88 As Recordset15
  Dim var_12C As Fields15
  Dim var_140 As Variant
  Dim var_118 As Variant
  Dim var_130 As TextBox
  Dim var_8A As Integer
  Dim var_128 As Variant
  loc_132A130: On Error Goto loc_132A88C
  loc_132A14D: If (Me.Recordset15.RecordCount > 0) Then
  loc_132A150:   Call Proc_271_40_F18450()
  loc_132A169:   var_94 = "Select MemCatMast.Code AS CatCode , MemCatMast.Name AS CatName , MR.U_Name,MR.U_EntDt, MR.U_AE,MembershipRevMast.Code As RevCode, MembershipRevMast.Description, MR.AppDate , MR.SValue , MR.PerOrAmt, MR.FrAge, MR.ToAge From ((MemAgeRevWise MR Left Join MemCatMast On MR.MemCat = MemCatMast.Code) LEFT JOIN MembershipRevMast ON MR.RevCode = MembershipRevMast.Code) Where MR.Site_Code='" & MemVar_1F92070
  loc_132A17E:   var_D4 = CVar(var_94 & "' and (MR.LOGSITE_CODE='" & MemVar_1F92078 & "' or MR.LOGSITE_CODE='HO') and (MR.MemCat+'**'+Convert(Varchar(11),MR.AppDate,103))='") 'String
  loc_132A1C8:   unk_4A533A.Execute CStr(var_D4 & Me.Recordset15.Fields.Item("SearchCode").Value & "'"), var_128, -1
  loc_132A1D3:   Set var_88 = var_12C
  loc_132A20B:   If (var_88.RecordCount > 0) Then
  loc_132A248:     var_12C = var_88.Fields
  loc_132A2B1:     var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_12C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_132A2F6:     Me.LblUser.Caption = CStr(var_12C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_132A370:     var_130 = var_88.Fields.Item("U_AE")
  loc_132A3D1:     var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_130)) = "E"), "Last Update : ", "entdt : "))
  loc_132A416:     Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_132A484:     Set var_12C = Me.Txt
  loc_132A48A:     Call 0.Method_Proc_271_41_132A8940 (CInt(0), var_130)
  loc_132A492:     var_130.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CatName")))
  loc_132A4DC:     Set var_12C = Me.Txt
  loc_132A4E2:     Call 0.Method_Proc_271_41_132A8940 (CInt(0), var_130)
  loc_132A4EA:     var_130.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CatCode")))
  loc_132A550:     Set var_12C = Me.Txt
  loc_132A556:     Call 0.Method_Proc_271_41_132A8940 (CInt(1), var_130, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/mmm/yyyy")))
  loc_132A55E:     var_130.Text = 1
  loc_132A57A:     var_8A = 1
  loc_132A590:     Me.FGrid.Rows = 1
  loc_132A598:     ' Referenced from: 132A803
  loc_132A5A7:     If Not(var_88.EOF) Then
  loc_132A5AA:       var_B0 = vbNullString
  loc_132A5B4:       Set var_A0 = Me.FGrid
  loc_132A5C9:       Set var_1E8 = Me.FGrid
  loc_132A5D0:       var_F4 = CVar(CLng(var_8A)) 'Long
  loc_132A5D8:       var_140 = CVar(CLng(6)) 'Long
  loc_132A608:       var_D4 = CVar(CStr(var_88.Fields.Item("RevCode").Value)) 'String
  loc_132A60F:       LateIdCallSt
  loc_132A629:       var_F4 = CVar(CLng(var_8A)) 'Long
  loc_132A65E:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Description")), CVar(CLng(1)), var_F4, var_1E8, var_D4, CVar(CLng(1)))) 'String
  loc_132A665:       LateIdCallSt
  loc_132A69D:       Proc_6_39_E7C810(var_D4, CVar(var_88.Fields.Item("SValue")), var_1E8, var_D4, var_F4)
  loc_132A6A6:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_132A6DE:       LateIdCallSt
  loc_132A72F:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PerOrAmt")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(Format(var_D4, "0.00"))), 1, 1)) 'String
  loc_132A736:       LateIdCallSt
  loc_132A781:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FrAge")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1E8, var_D4, CVar(CLng(2)))) 'String
  loc_132A788:       LateIdCallSt
  loc_132A7D3:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToAge")), CVar(CLng(5)), CVar(CLng(var_8A)), var_1E8, var_D4)) 'String
  loc_132A7DA:       LateIdCallSt
  loc_132A7EE:       Set var_1E8 = Nothing 
  loc_132A7F8:       var_8A = (var_8A + 1)
  loc_132A7FE:       var_88.MoveNext
  loc_132A803:       GoTo loc_132A598
  loc_132A806:     End If
  loc_132A806:   End If
  loc_132A806:   var_B0 = 0
  loc_132A810:   Set var_A0 = Me.FGrid
  loc_132A83D:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_132A840:     var_B0 = vbNullString
  loc_132A84A:     Set var_A0 = Me.FGrid
  loc_132A85B:   End If
  loc_132A85B:   var_B0 = 1
  loc_132A86E:   Me.FGrid.FixedRows = var_B0
  loc_132A879: Else
  loc_132A879:   Call Proc_271_40_F18450(FGrid.DispID_10000, var_B0, FGrid.DispID_2E, var_B0, var_8A, var_1E8)
  loc_132A87E: End If
  loc_132A87E: Call Proc_271_43_E873B8(var_D4, var_118, FGrid.DispID_10000)
  loc_132A888: Set var_88 = Nothing
  loc_132A88B: Exit Sub
  loc_132A88C: ' Referenced from: 132A130
  loc_132A88C: Proc_6_60_E62BC4(var_B0, var_8A)
  loc_132A891: Exit Sub
End Sub

Public Sub Proc_271_42_E76DD4(arg_C) 'E76DD4
  'Data Table: 4A5324
  Dim var_98 As TextBox
  loc_E76D82: Set var_8C = Me.Txt
  loc_E76D88: Call 0.Method_Proc_271_42_E76DD4C (var_8E, var_86)
  loc_E76D98: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E76DAE:   Set var_8C = Me.Txt
  loc_E76DB4:   Call 0.Method_Proc_271_42_E76DD40 (CInt(var_86), var_98)
  loc_E76DBC:   var_98.Enabled = arg_C
  loc_E76DCB: Next var_92 'Byte
  loc_E76DD1: Exit Sub
End Sub

Public Sub Proc_271_43_E873B8
  'Data Table: 4A5324
  loc_E87364: If (CBool(Me.DGCat.Visible) = &HFF) Then
  loc_E87376:   Me.DGCat.Visible = False
  loc_E8737E: End If
  loc_E8739A: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_E873AC:   Me.DGRev.Visible = False
  loc_E873B4: End If
  loc_E873B4: Exit Sub
  loc_E873B5: Result  End Sub 'Integer
End Sub

Public Sub Proc_271_44_FC9BE0
  'Data Table: 4A5324
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_4A533A As Connection15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  loc_FC9A7B: If (Me.RecordCount = 0) Then
  loc_FC9A7E:   Proc_271_44_FC9BE0 = 
  loc_FC9A84: End If
  loc_FC9ABF: Set var_94 = Me.Txt
  loc_FC9AC5: Call 0.Method_Proc_271_44_FC9BE00 (CInt(0), var_98, var_9C, "Select Count(*) From MemAgeRevWise Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (MemCat='", var_130, -1)
  loc_FC9ADD: var_DC = CVar(var_138 & var_9C & "' And AppDate=") 'String
  loc_FC9AEB: Set var_A8 = Me.Txt
  loc_FC9AF1: Call 0.Method_Proc_271_44_FC9BE00 (CInt(1), var_AC, var_DC)
  loc_FC9B00: Proc_6_7_F25D88(var_CC, CVar(var_AC), 0)
  loc_FC9B08: var_EC = var_14C & var_CC 
  loc_FC9B1F: unk_4A533A.Execute CStr(var_EC & ")"), var_15C, 
  loc_FC9B27:  = var_98.Tag.Fields
  loc_FC9B2F:  = var_138.Item()
  loc_FC9B37:  = var_14C.Value
  loc_FC9B74: If (var_15C > 0) Then
  loc_FC9B98:   MsgBox("Duplicate Entry", &H40, "Information", var_DC, var_EC)
  loc_FC9BB3:   Set var_94 = Me.Txt
  loc_FC9BB9:   Call 0.Method_Proc_271_44_FC9BE00 (CInt(0))
  loc_FC9BC1:   var_98.SetFocus
  loc_FC9BD2:   Proc_271_44_FC9BE0 = &HFF
  loc_FC9BD8: End If
  loc_FC9BD8: Proc_271_44_FC9BE0 = var_98
End Sub

Public Sub Proc_271_45_E41558
  'Data Table: 4A5324
  loc_E41534: Set var_88 = Me.TopCtrl1
  loc_E4153A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_E41553: If (CStr() = "Browse") Then
  loc_E41556:   Exit Sub
  loc_E41557: End If
  loc_E41557: Exit Sub
End Sub

Public Sub Proc_271_46_12BDCB4(arg_C) '12BDCB4
  'Data Table: 4A5324
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_B8 As String
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  loc_12BD67C: If (arg_C = 0) Then
  loc_12BD692:   var_A8 = CLng(Me.FGrid.Col)
  loc_12BD6A2:   If (var_A8 = CLng(1)) Then
  loc_12BD6C5:     var_AE = Me.EOF
  loc_12BD6F3:     Set var_94 = Me.TxtGrid
  loc_12BD6F9:     Call 0.Method_Proc_271_46_12BDCB40 (arg_C, var_B4, var_B8)
  loc_12BD701:     ((Me.RecordCount = 0) Or ((var_AE = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_12BD719:     If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_12BD72F:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BD737:       var_E8 = CVar(CLng(1)) 'Long
  loc_12BD73C:       var_108 = vbNullString
  loc_12BD746:       Set var_B4 = Me.FGrid
  loc_12BD74C:       LateIdCallSt
  loc_12BD771:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BD779:       var_E8 = CVar(CLng(6)) 'Long
  loc_12BD77E:       var_108 = vbNullString
  loc_12BD788:       Set var_B4 = Me.FGrid
  loc_12BD78E:       LateIdCallSt
  loc_12BD7A3:     Else
  loc_12BD7B6:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BD7BE:       var_F8 = CVar(CLng(1)) 'Long
  loc_12BD7F1:       var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12BD7F9:       Set var_140 = Me.FGrid
  loc_12BD7FF:       LateIdCallSt
  loc_12BD82E:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BD836:       var_F8 = CVar(CLng(6)) 'Long
  loc_12BD869:       var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_12BD871:       Set var_140 = Me.FGrid
  loc_12BD877:       LateIdCallSt
  loc_12BD893:     End If
  loc_12BD8AC:     var_C8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_12BD8B4:     var_E8 = CVar(CLng(6)) 'Long
  loc_12BD8BD:     Set var_B4 = Me.FGrid
  loc_12BD8E7:     If (CStr(var_B4.TextMatrix)) <> vbNullString) Then
  loc_12BD8EA:       var_C8 = vbNullString
  loc_12BD8F4:       Set var_94 = Me.FGrid
  loc_12BD905:     End If
  loc_12BD908:   Else
  loc_12BD90F:     If (var_A8 = CLng(2)) Then
  loc_12BD91C:       Set var_94 = Me.TxtGrid
  loc_12BD922:       Call 0.Method_Proc_271_46_12BDCB40 (arg_C, var_B4, FGrid.DispID_10000, var_C8, var_E8, var_C8, var_140)
  loc_12BD93A:       If Not(IsNumeric(CVar(var_B4))) Then
  loc_12BD941:         var_B8 = CStr(0)
  loc_12BD94E:         Set var_94 = Me.TxtGrid
  loc_12BD954:         Call 0.Method_Proc_271_46_12BDCB40 (arg_C, var_B4, var_B8, var_13C, var_F8)
  loc_12BD95C:         var_B4.Text = var_D8
  loc_12BD970:         Proc_271_46_12BDCB4 = 0
  loc_12BD976:       End If
  loc_12BD983:       Set var_94 = Me.TxtGrid
  loc_12BD989:       Call 0.Method_Proc_271_46_12BDCB40 (arg_C, var_B4, var_B8, var_140)
  loc_12BD991:       var_13C = var_B4.Text
  loc_12BD9A9:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BD9C1:       var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BD9ED:       var_170 = CVar(CStr(Format(CVar(var_B8), "0.00"))) 'String
  loc_12BD9F5:       Set var_174 = Me.FGrid
  loc_12BD9FB:       LateIdCallSt
  loc_12BDA22:     Else
  loc_12BDA29:       If (var_A8 = CLng(3)) Then
  loc_12BDA36:         Set var_94 = Me.TxtGrid
  loc_12BDA3C:         Call 0.Method_Proc_271_46_12BDCB40 (arg_C, var_B4, var_174, var_170, 1)
  loc_12BDA65:         If (Trim(CVar(var_B4)) = vbNullString) Then
  loc_12BDA6D:           Proc_271_46_12BDCB4 = 0
  loc_12BDA73:         End If
  loc_12BDA8F:         Set var_140 = Me.FGrid
  loc_12BDAAD:         Set var_94 = Me.TxtGrid
  loc_12BDAB3:         Call 0.Method_Proc_271_46_12BDCB40 (arg_C, var_B4, CVar(CLng(var_140.Col)), CVar(CLng(Me.FGrid.Row)), 1)
  loc_12BDACB:         var_160 = CVar(CStr(Trim(CVar(var_B4)))) 'String
  loc_12BDAD3:         Set var_174 = Me.FGrid
  loc_12BDAD9:         LateIdCallSt
  loc_12BDAFC:       Else
  loc_12BDB03:         If Not (var_A8 = CLng(4)) Then
  loc_12BDB0D:           If (var_A8 = CLng(5)) Then
  loc_12BDB10:           End If
  loc_12BDB1D:           Set var_94 = Me.TxtGrid
  loc_12BDB23:           Call 0.Method_Proc_271_46_12BDCB40 (arg_C, var_B4, var_B8, var_174, var_160)
  loc_12BDB4A:           Set var_11C = Me.TxtGrid
  loc_12BDB50:           Call 0.Method_Proc_271_46_12BDCB40 (arg_C, var_140, var_178, (CDbl(Val(var_B8)) > CDbl(0)))
  loc_12BDB58:           var_D8 = var_140.Text
  loc_12BDB7E:           If Not((var_B4.Text And (CDbl(Val(var_178)) <= CDbl(&H7D)))) Then
  loc_12BDB92:             Set var_94 = Me.TxtGrid
  loc_12BDB98:             Call 0.Method_Proc_271_46_12BDCB40 (arg_C, var_B4)
  loc_12BDBA0:             var_B4.Text = CStr(0)
  loc_12BDBB4:             Proc_271_46_12BDCB4 = 0
  loc_12BDBBA:           End If
  loc_12BDBBD:           Call Proc_271_47_1160920(var_AE)
  loc_12BDBC8:           If (var_AE = 0) Then
  loc_12BDBD0:             Proc_271_46_12BDCB4 = 0
  loc_12BDBD6:           End If
  loc_12BDBE3:           Set var_94 = Me.TxtGrid
  loc_12BDBE9:           Call 0.Method_Proc_271_46_12BDCB40 (arg_C, var_B4)
  loc_12BDC09:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BDC21:           var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BDC4D:           var_170 = CVar(CStr(Format(CVar(var_B4.Text), "0"))) 'String
  loc_12BDC55:           Set var_174 = Me.FGrid
  loc_12BDC5B:           LateIdCallSt
  loc_12BDC7F:         End If
  loc_12BDC7F:       End If
  loc_12BDC7F:     End If
  loc_12BDC7F:   End If
  loc_12BDC7F: End If
  loc_12BDC92: Set var_94 = Me.TxtGrid
  loc_12BDC98: Call 0.Method_Proc_271_46_12BDCB40 (0, var_B4, 0, &HFF, var_174, var_170)
  loc_12BDCA0: var_B4.MaxLength = 1
  loc_12BDCAC: Proc_271_46_12BDCB4 = 1
End Sub

Public Sub Proc_271_47_1160920
  'Data Table: 4A5324
  Dim var_A0 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_96 As Integer
  Dim var_10C As Long
  Dim var_8E As Integer
  Dim var_108 As String
  Dim var_90 As Integer
  Dim var_8A As Integer
  Dim var_8C As Integer
  Dim var_116 As Integer
  loc_116057F: var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1160587: var_E0 = CVar(CLng(6)) 'Long
  loc_1160590: Set var_F4 = Me.FGrid
  loc_11605A1: var_94 = CStr(var_F4.TextMatrix))
  loc_11605BE: Set var_A0 = Me.TxtGrid
  loc_11605C4: Call 0.Method_Proc_271_47_11609200 (0, var_F4, var_108)
  loc_11605CC: var_E0 = var_F4.Text
  loc_11605DA: var_96 = CInt(Val(var_108))
  loc_11605FA: var_10C = CLng(Me.FGrid.Col)
  loc_116060A: If (var_10C = CLng(4)) Then
  loc_1160610:   var_8E = var_96
  loc_1160626:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116062E:   var_E0 = CVar(CLng(5)) 'Long
  loc_1160651:   var_90 = CInt(Val(CStr(Me.FGrid.TextMatrix))))
  loc_1160668: Else
  loc_116066F:   If (var_10C = CLng(5)) Then
  loc_1160685:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116068D:     var_E0 = CVar(CLng(4)) 'Long
  loc_11606B0:     var_8E = CInt(Val(CStr(Me.FGrid.TextMatrix))))
  loc_11606C7:     var_90 = var_96
  loc_11606CA:   End If
  loc_11606CA: End If
  loc_11606EF: For var_110 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_110 'Integer
  loc_11606F9:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1160701:   var_E0 = CVar(CLng(6)) 'Long
  loc_116072B:   Set var_F4 = Me.FGrid
  loc_116074D:   If ((CStr(Me.FGrid.TextMatrix)) = var_94) And (CLng(var_88) <> CLng(var_F4.Row))) Then
  loc_1160754:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_116075C:     var_E0 = CVar(CLng(4)) 'Long
  loc_116077F:     var_8A = CInt(Val(CStr(Me.FGrid.TextMatrix))))
  loc_116078F:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1160797:     var_E0 = CVar(CLng(5)) 'Long
  loc_11607BA:     var_8C = CInt(Val(CStr(Me.FGrid.TextMatrix))))
  loc_11607D3:     If ((var_8E <> 0) And (var_90 <> 0)) Then
  loc_11607DD:       If (var_8E > var_90) Then
  loc_11607E7:         var_8E = (var_8E + var_90)
  loc_11607F1:         var_90 = (var_8E - var_90)
  loc_11607FB:         var_8E = (var_8E - var_90)
  loc_11607FE:       End If
  loc_1160807:       For var_114 = var_8E To var_90: var_96 = var_114 'Integer
  loc_1160810:         var_116 = var_96
  loc_116081E:         If Not (var_8C > var_116 > var_8A) Then
  loc_116082C:           If (var_8A > var_116 > var_8C) Then
  loc_116082F:           End If
  loc_1160850:           MsgBox("Given Age Range Not Valid!", &H40, "Validation", var_128, var_138)
  loc_1160869:           Set var_A0 = Me.TxtGrid
  loc_116086F:           Call 0.Method_Proc_271_47_11609200 (0, var_F4, var_116, var_8E, var_8E, var_90, var_8E)
  loc_1160877:           var_F4.SetFocus
  loc_1160888:           Proc_271_47_1160920 = 0
  loc_116088E:         End If
  loc_1160891:       Next var_114 'Integer
  loc_1160899:     Else
  loc_11608AA:       If (var_8C > var_96 > var_8A) Then
  loc_11608CE:         MsgBox("Given Age Not Valid!", &H40, "Validation", var_128, var_138)
  loc_11608E7:         Set var_A0 = Me.TxtGrid
  loc_11608ED:         Call 0.Method_Proc_271_47_11609200 (0, var_F4)
  loc_11608F5:         var_F4.SetFocus
  loc_1160906:         Proc_271_47_1160920 = 0
  loc_116090C:       End If
  loc_116090C:     End If
  loc_116090C:   End If
  loc_116090F: Next var_110 'Integer
  loc_1160919: Proc_271_47_1160920 = &HFF
End Sub
