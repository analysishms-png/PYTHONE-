VERSION 5.00
Begin VB.Form FrmRevenueWiseBudget
  Caption = "Revenue Wise Budget"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  LockControls = -1  'True
  Begin CommandButton CmdCancel
    Caption = "&Cancel"
    BackColor = &H808080&
    Left = 4785
    Top = 7800
    Width = 1845
    Height = 420
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
  Begin CommandButton CmdSave
    Caption = "&Save/Exit"
    BackColor = &H808080&
    Left = 2925
    Top = 7800
    Width = 1845
    Height = 420
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 510
    Top = 1470
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    Left = 1935
    Top = 945
    Width = 1665
    Height = 270
    TabIndex = 1
    BorderStyle = 0 'None
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
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8250
    Height = 375
    Visible = 0   'False
    TabIndex = 6
  End
  Begin MSHFlexGrid FGrid
    Left = 495
    Top = 1455
    Width = 8670
    Height = 6000
    TabIndex = 3
  End
  Begin Label Lbl
    Caption = "Month &&Year"
    Index = 0
    Left = 525
    Top = 945
    Width = 1425
    Height = 270
    TabIndex = 0
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

Attribute VB_Name = "FrmRevenueWiseBudget"

Private global_64 As Integer
Private global_56 As Integer

Private Sub FGrid_UnknownEvent_0 'E30DF4
  'Data Table: 433254
  Dim var_8C As TextBox
  loc_E30DD7: Set var_88 = Me.TxtGrid
  loc_E30DDD: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E30DE5: var_8C.Visible = False
  loc_E30DF1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6AAA4
  'Data Table: 433254
  Dim var_88 As MSHFlexGrid
  Dim var_9C As TextBox
  loc_E6AA54: Call Proc_178_25_E30AF0()
  loc_E6AA78: If (CLng(Me.FGrid.Col) = 0) Then
  loc_E6AA86:   Set var_88 = Me.TxtGrid
  loc_E6AA8C:   Call 0.Method_FGrid_UnknownEvent_90 (0, var_9C)
  loc_E6AA94:   var_9C.Visible = False
  loc_E6AAA0: End If
  loc_E6AAA0: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1008530
  'Data Table: 433254
  Dim var_98 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim Cancel As Integer
  Dim var_FC As Variant
  Dim var_11C As String
  loc_100832C: Set var_88 = Me.TopCtrl1
  loc_1008332: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1008382: If CBool(( = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_100838B:   Call Form_KeyDown(Cancel, arg_10)
  loc_1008390: End If
  loc_1008394: Set var_88 = Me.TopCtrl1
  loc_100839A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_10083AF: If ( = "Browse") Then
  loc_10083B2:   Exit Sub
  loc_10083B3: End If
  loc_1008427: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1008432:   var_DC = "+{Tab}"
  loc_1008438:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_1008442:   Cancel = 0
  loc_1008445: End If
  loc_100844B: global_64 = Cancel
  loc_1008471: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1008495: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10084BB:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_10084D1:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10084E9:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10084EE:     var_11C = vbNullString
  loc_10084F8:     Set var_E4 = Me.FGrid
  loc_10084FE:     LateIdCallSt
  loc_1008516:   End If
  loc_1008516: End If
  loc_100851C: If (Cancel = &HD) Then
  loc_1008524:   global_56 = 0
  loc_1008527: End If
  loc_1008529: Cancel = 0
  loc_100852C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E11D50
  'Data Table: 433254
  loc_E11D41: Call FGrid_UnknownEvent_C()
  loc_E11D4B: global_56 = 0
  loc_E11D4E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F2D49C
  'Data Table: 433254
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_DC As Variant
  loc_F2D3A0: Set var_88 = Me.TopCtrl1
  loc_F2D3A6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_F2D3BB: If ( = "Browse") Then
  loc_F2D3BE:   Exit Sub
  loc_F2D3BF: End If
  loc_F2D3E2: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_F2D3F8:   var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F2D400:   var_DC = CVar(CLng(0)) 'Long
  loc_F2D433:   If (CStr(Me.FGrid.TextMatrix)) <> "Header") Then
  loc_F2D474:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF)
  loc_F2D486:   End If
  loc_F2D486: End If
  loc_F2D490: If (CLng(Cancel) <> &HD) Then
  loc_F2D498:   global_56 = &HFF
  loc_F2D49B: End If
  loc_F2D49B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FD48B4
  'Data Table: 433254
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_BC As Variant
  loc_FD46F0: Set var_8C = Me.TopCtrl1
  loc_FD46F6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_FD470B: If ( = "Browse") Then
  loc_FD470E:   Exit Sub
  loc_FD470F: End If
  loc_FD472C: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FD472F:   Exit Sub
  loc_FD4730: End If
  loc_FD4741: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FD4763:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FD479D:     If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FD47BF:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FD47D5:         var_9C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FD47DE:         Set var_110 = Me.FGrid
  loc_FD47F9:       Else
  loc_FD480C:         Me.FGrid.Rows = 1
  loc_FD4829:         var_BC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FD4831:         Set var_110 = Me.FGrid
  loc_FD4860:         Me.FGrid.FixedRows = 1
  loc_FD4868:       End If
  loc_FD4868:     End If
  loc_FD486B:   Else
  loc_FD488C:     MsgBox("No Entries To Delete", &H10, "Delete !", var_EC, var_10C)
  loc_FD489C:   End If
  loc_FD48A0:   Set var_8C = Me.FGrid
  loc_FD48B1: End If
  loc_FD48B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E30D34
  'Data Table: 433254
  Dim var_8C As TextBox
  loc_E30D17: Set var_88 = Me.TxtGrid
  loc_E30D1D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E30D25: var_8C.Visible = False
  loc_E30D31: Exit Sub
End Sub

Private Sub Form_Load() 'F1A8E8
  'Data Table: 433254
  Dim unk_43325B As Connection15
  Dim var_A8 As Variant
  loc_F1A7F8: On Error Goto loc_F1A8A2
  loc_F1A7FB: Call Proc_178_24_FFE898()
  loc_F1A800: Call Proc_178_23_13D9F0C()
  loc_F1A81B: unk_43325B.Execute "SELECT B.Month_Year As SearchCode FROM BUDGETDETAILS B ORDER BY MONTH_YEAR,SNO", var_A8, -1
  loc_F1A82C: Set global_52 = var_AC
  loc_F1A84C: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000F(5800)
  loc_F1A853: Me.TopCtrl1.left = 
  loc_F1A867: Set var_AC = ("Add")
  loc_F1A86D: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_F1A876: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_F1A899: Proc_6_23_DFBA28(Me, 4425)
  loc_F1A8A1: Exit Sub
  loc_F1A8A2: ' Referenced from: F1A7F8
  loc_F1A8AA: Set var_AC = Err()
  loc_F1A8B0: Call 0.Method_arg_2C (var_D8)
  loc_F1A8D1: MsgBox(CVar(var_D8), &H40, "Information", var_E8, var_108)
  loc_F1A8E4: Exit Sub
  loc_F1A8E5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E11CBC
  'Data Table: 433254
  loc_E11CB3: Set global_52 = Nothing
  loc_E11CBA: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E87A5C
  'Data Table: 433254
  loc_E879F8: On Error Goto loc_E87A18
  loc_E87A0F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E87A17: Exit Sub
  loc_E87A18: ' Referenced from: E879F8
  loc_E87A20: Set var_88 = Err()
  loc_E87A26: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E87A47: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E87A5A: Exit Sub
  loc_E87A5B: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F6C410
  'Data Table: 433254
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_114 As Long
  loc_F6C2FB: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F6C304: Set var_9C = Me.FGrid
  loc_F6C33A: Set var_104 = Me.TxtGrid
  loc_F6C340: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F6C348: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_F6C375: Set var_88 = Me.TxtGrid
  loc_F6C37B: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_F6C383: var_9C.MaxLength = 0
  loc_F6C39B: If (Index = 0) Then
  loc_F6C3B1:   var_114 = CLng(Me.FGrid.Col)
  loc_F6C3C1:   If (var_114 = CLng(3)) Then
  loc_F6C3D2:     Set var_88 = Me.TxtGrid
  loc_F6C3D8:     Call 0.Method_TxtGrid_GotFocus0 (0, var_9C, &H14)
  loc_F6C3E0:     var_9C.MaxLength = var_114
  loc_F6C3F5:     If (global_56 = 0) Then
  loc_F6C400:       var_10C = "{Home}+{End}"
  loc_F6C406:       Proc_303_0_FB9B68(CStr(Me.FGrid.TextMatrix)), 0)
  loc_F6C40E:     End If
  loc_F6C40E:   End If
  loc_F6C40E: End If
  loc_F6C40E: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1004D88
  'Data Table: 433254
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  loc_1004B90: If (KeyCode = 0) Then
  loc_1004B9D:   If (CLng(Shift) = &H1B) Then
  loc_1004BAD:     Set var_8C = Me.TxtGrid
  loc_1004BB3:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1004BCD:     Set var_98 = Me.TxtGrid
  loc_1004BD3:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1004BDB:     var_9C.Text = var_90.Tag
  loc_1004BF2:     Set var_8C = Me.FGrid
  loc_1004C0F:     Set var_8C = Me.TxtGrid
  loc_1004C15:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1004C1D:     var_90.Visible = FGrid.DispID_8001
  loc_1004C37:     Set var_8C = Me.TxtGrid
  loc_1004C3D:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_1004C45:     var_90.MaxLength = 0
  loc_1004C51:     Exit Sub
  loc_1004C52:   End If
  loc_1004C75:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_1004CB8:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_1004CC1:       Call Proc_178_26_FB06C0(KeyCode, var_B2)
  loc_1004D08:       If ((var_B2 = &HFF) And (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_1004D3F:         Set var_90 = Me.TxtGrid
  loc_1004D4E:         Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_56, 3)
  loc_1004D61:       Else
  loc_1004D6C:         Set var_8C = Me.TxtGrid
  loc_1004D72:         Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0, 0)
  loc_1004D7A:         var_90.Visible = False
  loc_1004D86:       End If
  loc_1004D86:     End If
  loc_1004D86:   End If
  loc_1004D86: End If
  loc_1004D86: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E8D4CC
  'Data Table: 433254
  Dim var_8C As MSHFlexGrid
  loc_E8D468: If (KeyAscii = 0) Then
  loc_E8D48E:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_E8D49B:     Set var_8C = Me.TxtGrid
  loc_E8D4A1:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_E8D4BC:     Proc_6_42_129A86C(var_A4, arg_10, &HA)
  loc_E8D4C8:   End If
  loc_E8D4C8: End If
  loc_E8D4C8: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22950
  'Data Table: 433254
  Dim arg_10 As Integer
  loc_E22938: If (Cancel = 0) Then
  loc_E22941:   Call Proc_178_26_FB06C0(Cancel, var_88)
  loc_E2294A:   arg_10 = Not(var_88)
  loc_E2294D: End If
  loc_E2294D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E4EA24
  'Data Table: 433254
  loc_E4EA02: Set var_88 = Me.Txt
  loc_E4EA08: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E4EA16: Proc_6_74_E226B0(var_8C)
  loc_E4EA22: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E228A8
  'Data Table: 433254
  loc_E22899: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E228A2:   Proc_6_75_E527CC(Shift)
  loc_E228A7: End If
  loc_E228A7: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E099E0
  'Data Table: 433254
  loc_E099CC: On Error Goto loc_E099D8
  loc_E099D2: Proc_6_58_E054C0(arg_10)
  loc_E099D7: Exit Sub
  loc_E099D8: ' Referenced from: E099CC
  loc_E099D8: Proc_6_60_E62BC4()
  loc_E099DD: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D5D4
  'Data Table: 433254
  loc_E4D5B2: Set var_88 = Me.Txt
  loc_E4D5B8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D5C6: Proc_6_73_E22704(var_8C)
  loc_E4D5D2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '102BB24
  'Data Table: 433254
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_C4 As Long
  Dim var_94 As String
  Dim var_F0 As TextBox
  Dim var_EC As TextBox
  Dim arg_10 As Integer
  Dim Me As Recordset15
  loc_102B8FF: var_86 = Cancel
  loc_102B90A: If (var_86 = CInt(0)) Then
  loc_102B91A:   Set var_8C = Me.Txt
  loc_102B920:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_102B958:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_102B97E:     var_C4 = Format(Now, "MMM/yyyy")
  loc_102B994:     Set var_8C = Me.Txt
  loc_102B99A:     Call 0.Method_Txt_Validate0 (Cancel, var_90, CStr(var_C4))
  loc_102B9A2:     var_90.Text = 1
  loc_102B9BD:   Else
  loc_102B9C7:     Set var_8C = Me.Txt
  loc_102B9CD:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_102B9ED:     Set var_EC = Me.Txt
  loc_102B9F3:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_102B9FB:     var_F0.Text = Proc_6_120_133A1D8(var_90, 1)
  loc_102BA0E:   End If
  loc_102BA1B:   Set var_8C = Me.Txt
  loc_102BA21:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_102BA29:   var_94 = var_90.Text
  loc_102BA44:   Set var_E8 = Me.Txt
  loc_102BA4A:   Call 0.Method_Txt_Validate0 (Cancel, var_EC, var_F4)
  loc_102BA52:   (CDate(var_94) >= MemVar_1F920F4) = var_EC.Text
  loc_102BA74:   If Not((var_86 And (CDate(var_F4) <= MemVar_1F920FC))) Then
  loc_102BA98:     MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_C4, var_E4)
  loc_102BAB2:     Set var_8C = Me.Txt
  loc_102BAB8:     Call 0.Method_Txt_Validate0 (Cancel)
  loc_102BAC0:     var_90.SetFocus
  loc_102BACE:     arg_10 = &HFF
  loc_102BAD1:     Exit Sub
  loc_102BAD2:   End If
  loc_102BAE9:   If (Me.RecordCount > 0) Then
  loc_102BAF9:     Set var_8C = Me.Txt
  loc_102BAFF:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_102BB07:     arg_10 = var_90.Text
  loc_102BB12:     Call FrmRevenueWiseBudget.SEARCHBACK(var_94)
  loc_102BB21:   End If
  loc_102BB21: End If
  loc_102BB21: Exit Sub
End Sub

Private Sub cmdCancel_Click() 'E16850
  'Data Table: 433254
  loc_E16845: Me.Global.Unload Me
  loc_E1684D: Exit Sub
End Sub

Private Sub CmdSave_Click() '11DDD50
  'Data Table: 433254
  Dim unk_43325B As Connection15
  Dim var_88 As Integer
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim var_108 As Variant
  Dim var_94 As Variant
  Dim var_14C As String
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_258 As Variant
  Dim var_520 As Double
  Dim var_228 As Variant
  Dim var_400 As Variant
  loc_11DD970: On Error Goto loc_11DDD33
  loc_11DD97C: unk_43325B.BeginTrans var_90
  loc_11DD9A3: Set var_94 = Me.Txt
  loc_11DD9A9: Call 0.Method_CmdSave_Click0 (CInt(0), var_98, "Delete from BudgetDetails WHERE Month_Year='", var_15C)
  loc_11DD9C0: var_D8 = -1 & Trim(CVar(var_98)) 
  loc_11DD9EA: unk_43325B.Execute CStr(var_D8 & "' And LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_160, &HFF
  loc_11DDA2F: For var_164 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_164 'Integer
  loc_11DDA39:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_11DDA41:   var_108 = CVar(CLng(0)) 'Long
  loc_11DDA7D:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> "Header") Then
  loc_11DDABC:     Set var_98 = Me.Txt
  loc_11DDAC2:     Call 0.Method_CmdSave_Click0 (CInt(0), var_160, CVar(CLng(0)), CVar(CLng(var_86)))
  loc_11DDADA:     var_1B4 = CVar(CLng(var_86)) 'Long
  loc_11DDAE2:     var_1D4 = CVar(CLng(4)) 'Long
  loc_11DDB0B:     var_258 = CVar(CLng(var_86)) 'Long
  loc_11DDB75:     var_520 = Val(CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))))
  loc_11DDB86:     Proc_6_7_F25D88(var_440, Now, var_520, CVar(CLng(3)), CVar(CLng(var_86)), CVar(CLng(1)))
  loc_11DDB98:     var_14C = "Insert into BudgetDetails(SNo,Month_Year,RevCode,Detail,Budget,Header,U_Name,U_EntDt,U_AE,Site_Code,lOGSITE_CODE) values ("
  loc_11DDBC0:     var_228 = var_14C & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ",'" & Trim(CVar(var_160)) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_11DDC0A:     var_400 = var_228 & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar(var_520) & ",'" & CVar(var_8C) & "','" & CVar(MemVar_1F920C8) 
  loc_11DDC57:     unk_43325B.Execute CStr(var_400 & "'," & var_440 & ",'A','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_514, -1
  loc_11DDCC2:   Else
  loc_11DDCC6:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_11DDCCE:     var_108 = CVar(CLng(1)) 'Long
  loc_11DDCF7:     var_8C = CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_11DDD06:   End If
  loc_11DDD09: Next var_164 'Integer
  loc_11DDD10: var_88 = 0
  loc_11DDD19: unk_43325B.CommitTrans
  loc_11DDD2B: Me.Global.Unload Me
  loc_11DDD33: ' Referenced from: 11DD970
  loc_11DDD39: If (var_88 = &HFF) Then
  loc_11DDD42:   unk_43325B.RollbackTrans
  loc_11DDD47: End If
  loc_11DDD47: Proc_6_60_E62BC4(var_88)
  loc_11DDD4C: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EE68B4
  'Data Table: 433254
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EE680A: On Error Goto loc_EE686E
  loc_EE6813: Me.MoveFirst
  loc_EE682D: var_8C = "SearchCode='" & MyValue
  loc_EE683D: Me.Find var_8C & "'", 0, 1
  loc_EE685D: If (Me.EOF = &HFF) Then
  loc_EE6860:   Call Proc_178_23_13D9F0C(var_A0)
  loc_EE6868: Else
  loc_EE6868:   Call Proc_178_22_1239DF0()
  loc_EE686D: End If
  loc_EE686D: Exit Sub
  loc_EE686E: ' Referenced from: EE680A
  loc_EE6876: Set var_A8 = Err()
  loc_EE687C: Call 0.Method_arg_2C (var_8C)
  loc_EE689D: MsgBox(CVar(var_8C), &H40, "Information", var_E8, var_108)
  loc_EE68B0: Exit Sub
  loc_EE68B1: Exit Sub
  loc_EE68B2: () = 
End Sub

Public Sub Proc_178_22_1239DF0
  'Data Table: 433254
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_A4 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim unk_43325B As Connection15
  Dim var_8A As Integer
  Dim var_88 As Recordset15
  Dim var_144 As Variant
  Dim var_12C As Variant
  Dim var_168 As Variant
  loc_12398D0: On Error Goto loc_1239DE9
  loc_12398EA: If (Me.RecordCount > 0) Then
  loc_123992C:   var_E8 = "Select * from BudgetDetails where Month_year='" & Me.Fields.Item("SearchCode").Value 
  loc_1239943:   unk_43325B.Execute CStr(var_E8 & "' Order by Month_Year,SNO"), var_12C, -1
  loc_123994E:   Set var_88 = var_130
  loc_1239977:   Me.FGrid.Redraw = False
  loc_1239992:   Me.FGrid.Rows = 1
  loc_123999C:   var_8A = 1
  loc_12399B3:   If (var_88.RecordCount > 0) Then
  loc_12399B6:     Call Proc_178_24_FFE898(var_8A)
  loc_12399BB:     ' Referenced from: 1239C8C
  loc_12399CA:     If Not(var_88.EOF) Then
  loc_1239A06:       If (var_130 <> Proc_6_38_E68A98(CVar(var_88.Fields.Item("HEADER")), var_98)) Then
  loc_1239A31:         var_98 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("HEADER")))
  loc_1239A3A:         var_B4 = vbNullString
  loc_1239A44:         Set var_A4 = Me.FGrid
  loc_1239A59:         var_B4 = CVar(CLng(var_8A)) 'Long
  loc_1239A61:         var_F8 = CVar(CLng(0)) 'Long
  loc_1239A66:         var_144 = "Header"
  loc_1239A70:         Set var_A4 = Me.FGrid
  loc_1239A76:         LateIdCallSt
  loc_1239A85:         var_B4 = CVar(CLng(var_8A)) 'Long
  loc_1239A8D:         var_F8 = CVar(CLng(1)) 'Long
  loc_1239A9D:         Set var_A4 = Me.FGrid
  loc_1239AA3:         LateIdCallSt
  loc_1239AB4:         var_8A = (var_8A + 1)
  loc_1239AB7:       End If
  loc_1239AB7:       var_B4 = vbNullString
  loc_1239AC1:       Set var_A4 = Me.FGrid
  loc_1239AD6:       Set var_158 = Me.FGrid
  loc_1239AED:       var_B4 = "SNo"
  loc_1239B10:       Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item(var_B4)), CVar(CLng(0)), CVar(CLng(var_8A)), FGrid.DispID_10000, var_B4, var_8A)
  loc_1239B19:       var_108 = CVar(CStr(var_E8)) 'String
  loc_1239B20:       LateIdCallSt
  loc_1239B64:       var_A4 = var_88.Fields
  loc_1239B74:       var_E8 = CVar(var_A4.Item("Detail")) 'Address
  loc_1239B85:       var_168 = CVar(CStr(var_98 & CVar(Proc_6_38_E68A98(var_E8, Space(&HA), CVar(CLng(1)), CVar(CLng(var_8A)), var_158, var_108, var_A4)))) 'String
  loc_1239B8C:       LateIdCallSt
  loc_1239BCA:       Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("Budget")), var_158, var_168, var_F8)
  loc_1239BD3:       var_F8 = CVar(CLng(var_8A)) 'Long
  loc_1239BDB:       var_144 = CVar(CLng(3)) 'Long
  loc_1239C0B:       LateIdCallSt
  loc_1239C5C:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(4)), CVar(CLng(var_8A)), var_158, CVar(CStr(Format(var_E8, "0.00"))), 1, 1)) 'String
  loc_1239C63:       LateIdCallSt
  loc_1239C77:       Set var_158 = Nothing 
  loc_1239C81:       var_8A = (var_8A + 1)
  loc_1239C87:       var_88.MoveNext
  loc_1239C8C:       GoTo loc_12399BB
  loc_1239C8F:     End If
  loc_1239CA2:     Me.FGrid.FixedRows = 1
  loc_1239CAA:   End If
  loc_1239CB8:   Me.FGrid.Redraw = True
  loc_1239CE5:   For var_17C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_17C 'Integer
  loc_1239CEF:     var_B4 = CVar(CLng(var_8A)) 'Long
  loc_1239CF4:     var_F8 = 0
  loc_1239D23:     If (CStr(Me.FGrid.TextMatrix)) = "Header") Then
  loc_1239D39:       Me.FGrid.Row = CVar(CLng(var_8A))
  loc_1239D66:       For var_180 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9A = var_180 'Integer
  loc_1239D7F:         Me.FGrid.Col = CVar(CLng(var_9A))
  loc_1239D87:         var_B4 = -2147483626
  loc_1239D9A:         Me.FGrid.CellBackColor = CVar(CLng(var_9A))
  loc_1239DA5:       Next var_180 'Integer
  loc_1239DAA:     End If
  loc_1239DAD:   Next var_17C 'Integer
  loc_1239DB2: End If
  loc_1239DC5: Me.FGrid.Row = 2
  loc_1239DE0: Me.FGrid.Col = 3
  loc_1239DE8: Exit Sub
  loc_1239DE9: ' Referenced from: 12398D0
  loc_1239DE9: Proc_6_60_E62BC4()
  loc_1239DEE: Exit Sub
End Sub

Public Sub Proc_178_23_13D9F0C
  'Data Table: 433254
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_8A As Integer
  Dim var_C8 As Variant
  Dim var_E8 As String
  Dim var_FC As String
  Dim var_100 As String
  Dim var_108 As String
  Dim unk_43325B As Connection15
  Dim var_88 As Recordset15
  Dim var_B0 As Variant
  Dim var_D8 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_178 As Variant
  Dim var_188 As String
  Dim var_8E As Integer
  Dim var_118 As Variant
  loc_13D957B: Me.FGrid.Redraw = False
  loc_13D9590: Set var_B4 = Me.FGrid
  loc_13D9596: var_B4.Rows = 1
  loc_13D95A0: var_8A = 1
  loc_13D95A7: Set var_B8 = Me.FGrid
  loc_13D95AA: var_A0 = vbNullString
  loc_13D95BF: var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13D95C7: var_C8 = CVar(CLng(0)) 'Long
  loc_13D95CC: var_E8 = "Header"
  loc_13D95D5: LateIdCallSt
  loc_13D95E1: var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13D95E9: var_C8 = CVar(CLng(1)) 'Long
  loc_13D95EE: var_E8 = "FRONT DESK"
  loc_13D95F7: LateIdCallSt
  loc_13D9605: var_8A = (var_8A + 1)
  loc_13D960A: Set var_B8 = Nothing 
  loc_13D9622: var_FC = "SELECT Name,Code From RevMast WHERE (FlagType = 'FOM') AND (FieldType = 'C') AND (FlagAMR <> 'Header') AND (Type = 'Cr') AND (Code IN ('" & MemVar_1F92078
  loc_13D9629: var_100 = var_FC & "RMCH')) AND (Code NOT IN (SELECT DISTINCT RevCode From FixedCharge WHERE ChgCategory = 'Meal Charges')) AND LOGSITE_CODE='"
  loc_13D9640: unk_43325B.Execute var_100 & MemVar_1F92078 & "'", var_118, -1
  loc_13D964B: Set var_88 = var_B4
  loc_13D9673: If (var_88.RecordCount > 0) Then
  loc_13D9676:   ' Referenced from: 13D9797
  loc_13D9685:   If Not(var_88.EOF) Then
  loc_13D9688:     var_A0 = vbNullString
  loc_13D9692:     Set var_B4 = Me.FGrid
  loc_13D96A7:     Set var_124 = Me.FGrid
  loc_13D96CE:     var_A0 = "Name"
  loc_13D96DA:     var_B4 = var_88.Fields
  loc_13D96F3:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_B4.Item(var_A0)), Space(&HA), CVar(CLng(1)), CVar(CLng(var_8A)), FGrid.DispID_10000, var_A0, var_B4)) 'String
  loc_13D9706:     var_178 = CVar(CStr(var_8A & Ucase(var_148))) 'String
  loc_13D970D:     LateIdCallSt
  loc_13D972B:     var_B0 = CVar(CLng(var_8A)) 'Long
  loc_13D9733:     var_D8 = CVar(CLng(4)) 'Long
  loc_13D974A:     var_B4 = var_88.Fields
  loc_13D975A:     var_118 = var_B4.Item("Code").Value
  loc_13D9763:     var_138 = CVar(CStr(var_118)) 'String
  loc_13D976A:     LateIdCallSt
  loc_13D9782:     Set var_124 = Nothing 
  loc_13D978C:     var_8A = (var_8A + 1)
  loc_13D9792:     var_88.MoveNext
  loc_13D9797:     GoTo loc_13D9676
  loc_13D979A:   End If
  loc_13D979A: End If
  loc_13D979E: Set var_17C = Me.FGrid
  loc_13D97A1: var_A0 = vbNullString
  loc_13D97B6: var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13D97BE: var_C8 = CVar(CLng(0)) 'Long
  loc_13D97C3: var_E8 = "Header"
  loc_13D97CC: LateIdCallSt
  loc_13D97D8: var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13D97E0: var_C8 = CVar(CLng(1)) 'Long
  loc_13D97E5: var_E8 = "FOOD & BEVERAGE"
  loc_13D97EE: LateIdCallSt
  loc_13D97FC: var_8A = (var_8A + 1)
  loc_13D9801: Set var_17C = Nothing 
  loc_13D9819: var_FC = "SELECT Name,Code From RevMast WHERE (FlagAMR = 'Header') AND (FlagType = 'POS') AND (Type = 'Cr') AND LOGSITE_CODE='" & MemVar_1F92078
  loc_13D9829: unk_43325B.Execute var_FC & "'", var_118, -1
  loc_13D9834: Set var_88 = var_B4
  loc_13D9858: If (var_88.RecordCount > 0) Then
  loc_13D985B:   ' Referenced from: 13D997C
  loc_13D986A:   If Not(var_88.EOF) Then
  loc_13D986D:     var_A0 = vbNullString
  loc_13D9877:     Set var_B4 = Me.FGrid
  loc_13D988C:     Set var_180 = Me.FGrid
  loc_13D98B3:     var_A0 = "Name"
  loc_13D98BF:     var_B4 = var_88.Fields
  loc_13D98D8:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_B4.Item(var_A0)), Space(&HA), CVar(CLng(1)), CVar(CLng(var_8A)), FGrid.DispID_10000, var_A0, var_B4)) 'String
  loc_13D98EB:     var_178 = CVar(CStr(var_8A & Ucase(var_148))) 'String
  loc_13D98F2:     LateIdCallSt
  loc_13D9910:     var_B0 = CVar(CLng(var_8A)) 'Long
  loc_13D9918:     var_D8 = CVar(CLng(4)) 'Long
  loc_13D992F:     var_B4 = var_88.Fields
  loc_13D993F:     var_118 = var_B4.Item("Code").Value
  loc_13D9948:     var_138 = CVar(CStr(var_118)) 'String
  loc_13D994F:     LateIdCallSt
  loc_13D9967:     Set var_180 = Nothing 
  loc_13D9971:     var_8A = (var_8A + 1)
  loc_13D9977:     var_88.MoveNext
  loc_13D997C:     GoTo loc_13D985B
  loc_13D997F:   End If
  loc_13D997F: End If
  loc_13D9993: var_FC = "SELECT Name,Code From RevMast WHERE (FlagType = 'FOM') AND (FieldType = 'C') AND (FlagAMR <> 'Header') AND (Type = 'Cr') AND (Code NOT IN ('" & MemVar_1F92078
  loc_13D99A8: var_108 = var_FC & "TOUT','" & MemVar_1F92078 & "ROFF')) AND (Code IN (SELECT DISTINCT RevCode From FixedCharge WHERE ChgCategory = 'Meal Charges')) AND LOGSITE_CODE='"
  loc_13D99BF: unk_43325B.Execute var_108 & MemVar_1F92078 & "'", var_118, -1
  loc_13D99CA: Set var_88 = var_B4
  loc_13D99F6: If (var_88.RecordCount > 0) Then
  loc_13D99F9:   ' Referenced from: 13D9B1A
  loc_13D9A08:   If Not(var_88.EOF) Then
  loc_13D9A0B:     var_A0 = vbNullString
  loc_13D9A15:     Set var_B4 = Me.FGrid
  loc_13D9A2A:     Set var_18C = Me.FGrid
  loc_13D9A51:     var_A0 = "Name"
  loc_13D9A5D:     var_B4 = var_88.Fields
  loc_13D9A76:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_B4.Item(var_A0)), Space(&HA), CVar(CLng(1)), CVar(CLng(var_8A)), FGrid.DispID_10000, var_A0, var_B4)) 'String
  loc_13D9A89:     var_178 = CVar(CStr(var_8A & Ucase(var_148))) 'String
  loc_13D9A90:     LateIdCallSt
  loc_13D9AAE:     var_B0 = CVar(CLng(var_8A)) 'Long
  loc_13D9AB6:     var_D8 = CVar(CLng(4)) 'Long
  loc_13D9ACD:     var_B4 = var_88.Fields
  loc_13D9ADD:     var_118 = var_B4.Item("Code").Value
  loc_13D9AE6:     var_138 = CVar(CStr(var_118)) 'String
  loc_13D9AED:     LateIdCallSt
  loc_13D9B05:     Set var_18C = Nothing 
  loc_13D9B0F:     var_8A = (var_8A + 1)
  loc_13D9B15:     var_88.MoveNext
  loc_13D9B1A:     GoTo loc_13D99F9
  loc_13D9B1D:   End If
  loc_13D9B1D: End If
  loc_13D9B21: Set var_190 = Me.FGrid
  loc_13D9B24: var_A0 = vbNullString
  loc_13D9B39: var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13D9B41: var_C8 = CVar(CLng(0)) 'Long
  loc_13D9B46: var_E8 = "Header"
  loc_13D9B4F: LateIdCallSt
  loc_13D9B5B: var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13D9B63: var_C8 = CVar(CLng(1)) 'Long
  loc_13D9B68: var_E8 = "MISC. CHARGES"
  loc_13D9B71: LateIdCallSt
  loc_13D9B7F: var_8A = (var_8A + 1)
  loc_13D9B84: Set var_190 = Nothing 
  loc_13D9B9C: var_FC = "SELECT Name,Code From RevMast WHERE (FlagType = 'FOM') AND (FieldType = 'C') AND (FlagAMR <> 'Header') AND (Type = 'Cr') AND (Code NOT IN ('" & MemVar_1F92078
  loc_13D9BBF: var_188 = var_FC & "TOUT','" & MemVar_1F92078 & "RMCH','" & MemVar_1F92078 & "ROFF')) AND (Code NOT IN (SELECT DISTINCT RevCode From FixedCharge WHERE ChgCategory = 'Meal Charges')) AND LOGSITE_CODE='"
  loc_13D9BD6: unk_43325B.Execute var_188 & MemVar_1F92078 & "'", var_118, -1
  loc_13D9BE1: Set var_88 = var_B4
  loc_13D9C11: If (var_88.RecordCount > 0) Then
  loc_13D9C14:   ' Referenced from: 13D9D35
  loc_13D9C23:   If Not(var_88.EOF) Then
  loc_13D9C26:     var_A0 = vbNullString
  loc_13D9C30:     Set var_B4 = Me.FGrid
  loc_13D9C45:     Set var_19C = Me.FGrid
  loc_13D9C6C:     var_A0 = "Name"
  loc_13D9C78:     var_B4 = var_88.Fields
  loc_13D9C91:     var_148 = CVar(Proc_6_38_E68A98(CVar(var_B4.Item(var_A0)), Space(&HA), CVar(CLng(1)), CVar(CLng(var_8A)), FGrid.DispID_10000, var_A0, var_B4)) 'String
  loc_13D9CA4:     var_178 = CVar(CStr(var_8A & Ucase(var_148))) 'String
  loc_13D9CAB:     LateIdCallSt
  loc_13D9CC9:     var_B0 = CVar(CLng(var_8A)) 'Long
  loc_13D9CD1:     var_D8 = CVar(CLng(4)) 'Long
  loc_13D9D01:     var_138 = CVar(CStr(var_88.Fields.Item("Code").Value)) 'String
  loc_13D9D08:     LateIdCallSt
  loc_13D9D20:     Set var_19C = Nothing 
  loc_13D9D2A:     var_8A = (var_8A + 1)
  loc_13D9D30:     var_88.MoveNext
  loc_13D9D35:     GoTo loc_13D9C14
  loc_13D9D38:   End If
  loc_13D9D38: End If
  loc_13D9D3A: var_8E = 1
  loc_13D9D50: Me.FGrid.FixedRows = 1
  loc_13D9D66: Me.FGrid.Redraw = True
  loc_13D9D93: For var_1A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_1A0 'Integer
  loc_13D9D9D:   var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13D9DA2:   var_C8 = 0
  loc_13D9DD1:   If (CStr(Me.FGrid.TextMatrix)) = "Header") Then
  loc_13D9DE7:     Me.FGrid.Row = CVar(CLng(var_8A))
  loc_13D9E14:     For var_1A4 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_8C = var_1A4 'Integer
  loc_13D9E2D:       Me.FGrid.Col = CVar(CLng(var_8C))
  loc_13D9E35:       var_A0 = -2147483626
  loc_13D9E48:       Me.FGrid.CellBackColor = CVar(CLng(var_8C))
  loc_13D9E53:     Next var_1A4 'Integer
  loc_13D9E5B:   Else
  loc_13D9E5F:     var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13D9E67:     var_C8 = CVar(CLng(3)) 'Long
  loc_13D9E6C:     var_E8 = "0.00"
  loc_13D9E76:     Set var_B4 = Me.FGrid
  loc_13D9E7C:     LateIdCallSt
  loc_13D9E8B:     var_A0 = CVar(CLng(var_8A)) 'Long
  loc_13D9E93:     var_C8 = CVar(CLng(0)) 'Long
  loc_13D9E9D:     var_118 = CVar(CStr(var_8E)) 'String
  loc_13D9EA5:     Set var_B4 = Me.FGrid
  loc_13D9EAB:     LateIdCallSt
  loc_13D9EBF:     var_8E = (var_8E + 1)
  loc_13D9EC2:   End If
  loc_13D9EC5: Next var_1A0 'Integer
  loc_13D9EDD: Me.FGrid.Row = 2
  loc_13D9EF8: Me.FGrid.Col = 3
  loc_13D9F05: Set var_88 = Nothing
  loc_13D9F08: Exit Sub
End Sub

Public Sub Proc_178_24_FFE898
  'Data Table: 433254
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_FFE688: Set var_8C = Me.FGrid
  loc_FFE697: var_8C.Width = CVar(CDbl(8500))
  loc_FFE6A8: var_8C.Cols = 5
  loc_FFE6AD: var_9C = 0
  loc_FFE6B9: var_BC = CVar(CLng(0)) 'Long
  loc_FFE6BE: var_DC = vbNullString
  loc_FFE6C7: LateIdCallSt
  loc_FFE6D2: var_9C = CVar(CLng(0)) 'Long
  loc_FFE6D7: var_BC = 0
  loc_FFE6E3: LateIdCallSt
  loc_FFE6EE: var_9C = CVar(CLng(0)) 'Long
  loc_FFE6F9: var_BC = CVar(CInt(1)) 'Integer
  loc_FFE700: LateIdCallSt
  loc_FFE708: var_9C = 0
  loc_FFE714: var_BC = CVar(CLng(1)) 'Long
  loc_FFE719: var_DC = "Details"
  loc_FFE722: LateIdCallSt
  loc_FFE72D: var_9C = CVar(CLng(1)) 'Long
  loc_FFE732: var_BC = &H1770
  loc_FFE73E: LateIdCallSt
  loc_FFE749: var_9C = CVar(CLng(1)) 'Long
  loc_FFE754: var_BC = CVar(CInt(1)) 'Integer
  loc_FFE75B: LateIdCallSt
  loc_FFE763: var_9C = 0
  loc_FFE76F: var_BC = CVar(CLng(2)) 'Long
  loc_FFE774: var_DC = "Currency"
  loc_FFE77D: LateIdCallSt
  loc_FFE788: var_9C = CVar(CLng(2)) 'Long
  loc_FFE78D: var_BC = 0
  loc_FFE799: LateIdCallSt
  loc_FFE7A4: var_9C = CVar(CLng(2)) 'Long
  loc_FFE7AF: var_BC = CVar(CInt(1)) 'Integer
  loc_FFE7B6: LateIdCallSt
  loc_FFE7BE: var_9C = 0
  loc_FFE7CA: var_BC = CVar(CLng(3)) 'Long
  loc_FFE7CF: var_DC = "Budget"
  loc_FFE7D8: LateIdCallSt
  loc_FFE7E3: var_9C = CVar(CLng(3)) 'Long
  loc_FFE7E8: var_BC = &H898
  loc_FFE7F4: LateIdCallSt
  loc_FFE7FF: var_9C = CVar(CLng(3)) 'Long
  loc_FFE80A: var_BC = CVar(CInt(7)) 'Integer
  loc_FFE811: LateIdCallSt
  loc_FFE81C: var_9C = CVar(CLng(3)) 'Long
  loc_FFE827: var_BC = CVar(CInt(7)) 'Integer
  loc_FFE82E: LateIdCallSt
  loc_FFE836: var_9C = 0
  loc_FFE842: var_BC = CVar(CLng(4)) 'Long
  loc_FFE847: var_DC = "RevCode"
  loc_FFE850: LateIdCallSt
  loc_FFE85B: var_9C = CVar(CLng(4)) 'Long
  loc_FFE860: var_BC = 0
  loc_FFE86C: LateIdCallSt
  loc_FFE877: var_9C = CVar(CLng(4)) 'Long
  loc_FFE882: var_BC = CVar(CInt(7)) 'Integer
  loc_FFE889: LateIdCallSt
  loc_FFE893: Set var_8C = Nothing 
  loc_FFE897: Exit Sub
End Sub

Public Sub Proc_178_25_E30AF0
  'Data Table: 433254
  loc_E30AD0: Set var_88 = Me.TopCtrl1
  loc_E30AD6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E30AEB: If ( = "Browse") Then
  loc_E30AEE:   Exit Sub
  loc_E30AEF: End If
  loc_E30AEF: Exit Sub
End Sub

Public Sub Proc_178_26_FB06C0(arg_C) 'FB06C0
  'Data Table: 433254
  Dim var_94 As MSHFlexGrid
  Dim var_A8 As Long
  Dim var_AC As TextBox
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  loc_FB0550: If (arg_C = 0) Then
  loc_FB0566:   var_A8 = CLng(Me.FGrid.Col)
  loc_FB0576:   If (var_A8 = CLng(3)) Then
  loc_FB0583:     Set var_94 = Me.TxtGrid
  loc_FB0589:     Call 0.Method_Proc_178_26_FB06C00 (arg_C, var_AC)
  loc_FB05A1:     If Not(IsNumeric(CVar(var_AC))) Then
  loc_FB05B5:       Set var_94 = Me.TxtGrid
  loc_FB05BB:       Call 0.Method_Proc_178_26_FB06C00 (arg_C, var_AC, CStr(0))
  loc_FB05C3:       var_AC.Text = var_A8
  loc_FB05D2:     End If
  loc_FB05DF:     Set var_94 = Me.TxtGrid
  loc_FB05E5:     Call 0.Method_Proc_178_26_FB06C00 (arg_C, var_AC)
  loc_FB0610:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB0628:     var_148 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FB0655:     var_168 = CVar(CStr(Format(CVar(Val(var_AC.Text)), "0.00"))) 'String
  loc_FB065D:     Set var_17C = Me.FGrid
  loc_FB0663:     LateIdCallSt
  loc_FB068A:   End If
  loc_FB068A: End If
  loc_FB069D: Set var_94 = Me.TxtGrid
  loc_FB06A3: Call 0.Method_Proc_178_26_FB06C00 (0, var_AC, 0, &HFF, var_17C, var_168)
  loc_FB06AB: var_AC.MaxLength = 1
  loc_FB06B7: Proc_178_26_FB06C0 = 1
  loc_FB06BD: var_148 = var_128
End Sub
