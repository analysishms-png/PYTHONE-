VERSION 5.00
Begin VB.Form memCategoryFacilities
  Caption = "Category wise Facility"
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
  ClientWidth = 8955
  ClientHeight = 7545
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8955
    Height = 450
    TabIndex = 9
  End
  Begin Frame FrmList
    Left = 14385
    Top = 4080
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 105
      Top = 15
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 8
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1920
    Top = 2910
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4605
    Top = 1485
    Width = 3510
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 30
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4605
    Top = 1800
    Width = 1425
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
  Begin DataGrid DGCategory
    Left = 14145
    Top = 540
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin MSHFlexGrid FGrid
    Left = 1650
    Top = 2625
    Width = 11160
    Height = 4275
    TabIndex = 2
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 195
    Top = 8115
    Width = 2520
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
    Left = 180
    Top = 8445
    Width = 2430
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
  Begin Label LblName
    Caption = "Member Category Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 2220
    Top = 1485
    Width = 2310
    Height = 240
    TabIndex = 6
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
    Caption = "App.Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 2220
    Top = 1800
    Width = 870
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

Attribute VB_Name = "memCategoryFacilities"

Private global_92 As Integer
Private global_94 As Integer
Private global_96 As Integer
Private global_98 As Integer
Private MasterFormExit As Integer
Private global_64 As Variant

Private Sub Txt_GotFocus(Index As Integer) 'E51384
  'Data Table: 48AB6C
  loc_E5135E: Set var_88 = Me.Txt
  loc_E51364: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E51372: Proc_6_74_E226B0(var_8C)
  loc_E5137E: Call Proc_269_61_E5378C(var_8C)
  loc_E51383: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F1B2C8
  'Data Table: 48AB6C
  loc_F1B1E2: If (CLng(Shift) = &H1B) Then
  loc_F1B1E5:   Call Proc_269_61_E5378C()
  loc_F1B1EA:   Exit Sub
  loc_F1B1EB: End If
  loc_F1B1F9: If (KeyCode = CInt(0)) Then
  loc_F1B214:   Set var_9C = Nothing
  loc_F1B21F:   Set var_98 = Nothing
  loc_F1B24D:   Proc_6_69_134A198(Me.DGCategory, Me.Txt, KeyCode, global_104, Shift, 0)
  loc_F1B261: End If
  loc_F1B27D: If (CBool(Me.DGCategory.Visible) = 0) Then
  loc_F1B295:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F1B29E:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_F1B2A3:   End If
  loc_F1B2B8:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F1B2C1:     Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_F1B2C6:   End If
  loc_F1B2C6: End If
  loc_F1B2C6: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E08F00
  'Data Table: 48AB6C
  Dim var_86 As Integer
  loc_E08EF3: Proc_6_58_E054C0(arg_10)
  loc_E08EFB: var_86 = KeyAscii
  loc_E08EFE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA5718
  'Data Table: 48AB6C
  loc_EA56AA: If (KeyCode = CInt(0)) Then
  loc_EA56C9:   If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_EA56DD:     var_A4 = "Name"
  loc_EA5701:     Proc_6_68_129FB34(Me.DGCategory, Me.Txt, KeyCode, global_104)
  loc_EA5714:   End If
  loc_EA5714: End If
  loc_EA5714: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49A1C
  'Data Table: 48AB6C
  loc_E499FA: Set var_88 = Me.Txt
  loc_E49A00: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49A0E: Proc_6_73_E22704(var_8C)
  loc_E49A1A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10CFB14
  'Data Table: 48AB6C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_C8 As TextBox
  loc_10CF817: var_86 = Cancel
  loc_10CF822: If (var_86 = CInt(0)) Then
  loc_10CF830:   Set var_8C = Me.Txt
  loc_10CF836:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_10CF83E:   var_98 = "Member Category Name"
  loc_10CF85F:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_10CF86D:     Set var_8C = Me.Txt
  loc_10CF873:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_10CF87B:     var_90.SetFocus
  loc_10CF889:     arg_10 = &HFF
  loc_10CF88C:     Exit Sub
  loc_10CF88D:   End If
  loc_10CF8DB:   Set var_8C = Me.Txt
  loc_10CF8E1:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_10CF8E9:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_10CF901:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_10CF911:     Set var_8C = Me.Txt
  loc_10CF917:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10CF91F:     var_90.Text = vbNullString
  loc_10CF938:     Set var_8C = Me.Txt
  loc_10CF93E:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10CF946:     var_90.Tag = vbNullString
  loc_10CF955:   Else
  loc_10CF990:     Set var_94 = Me.Txt
  loc_10CF996:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10CF99E:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10CF9D1:     var_90 = Me.Fields.Item("Code")
  loc_10CF9EF:     Set var_94 = Me.Txt
  loc_10CF9F5:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10CF9FD:     var_B4.Tag = CStr(var_90.Value)
  loc_10CFA13:   End If
  loc_10CFA16: Else
  loc_10CFA1E:   If (var_86 = CInt(1)) Then
  loc_10CFA2C:     Set var_8C = Me.Txt
  loc_10CFA32:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_10CFA5B:     If (Proc_6_27_EA565C(var_90, "App. Date") = 0) Then
  loc_10CFA69:       Set var_8C = Me.Txt
  loc_10CFA6F:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_10CFA77:       var_90.SetFocus
  loc_10CFA85:       arg_10 = &HFF
  loc_10CFA88:       Exit Sub
  loc_10CFA89:     End If
  loc_10CFA93:     Set var_8C = Me.Txt
  loc_10CFA99:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10CFAB9:     Set var_B4 = Me.Txt
  loc_10CFABF:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_10CFAC7:     var_C8.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_10CFAED:     Me.FGrid.Row = 1
  loc_10CFB08:     Me.FGrid.Col = 1
  loc_10CFB10:   End If
  loc_10CFB10: End If
  loc_10CFB10: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E864A0
  'Data Table: 48AB6C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E86443: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E86456: Set var_A8 = Me.TxtGrid
  loc_E8645C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E86464: var_AC.Visible = False
  loc_E8647E: Set var_A8 = Me.TxtGrid
  loc_E86484: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E8648C: var_AC.MaxLength = 0
  loc_E86498: Call Proc_269_61_E5378C()
  loc_E8649D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E66928
  'Data Table: 48AB6C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E668E4: Set var_88 = Me.TxtGrid
  loc_E668EA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E66904: If (var_8C.Visible = 0) Then
  loc_E6691D:   Me.FGrid.BackColorSel = CVar(CLng(global_84))
  loc_E66925: End If
  loc_E66925: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1F4A0
  'Data Table: 48AB6C
  loc_E1F497: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F49F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF9C4
  'Data Table: 48AB6C
  loc_DFF9BC: Call Proc_269_56_101E400()
  loc_DFF9C1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '110B2BC
  'Data Table: 48AB6C
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_110AF7C: Set var_88 = Me.TopCtrl1
  loc_110AF82: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_110AFC7: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_110AFD0:   Call Form_KeyDown(Cancel, arg_10)
  loc_110AFD5: End If
  loc_110AFD9: Set var_88 = Me.TopCtrl1
  loc_110AFDF: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_110AFF8: If (CStr() = "Browse") Then
  loc_110AFFB:   Exit Sub
  loc_110AFFC: End If
  loc_110B070: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_110B086:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_110B096:   var_9C = "+{Tab}"
  loc_110B09C:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_110B0A6:   Cancel = 0
  loc_110B0AC: Else
  loc_110B0B6:   var_B0 = Me.FGrid.Rows
  loc_110B103:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_110B119:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_110B12F:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_110B139:     Cancel = 0
  loc_110B13C:   End If
  loc_110B13C: End If
  loc_110B142: global_92 = Cancel
  loc_110B168: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_110B18C: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_110B1A2:   var_EC = CLng(Me.FGrid.Col)
  loc_110B1B2:   If (var_EC = CLng(4)) Then
  loc_110B1C8:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110B1E0:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_110B1E5:     var_11C = vbNullString
  loc_110B1EF:     Set var_B4 = Me.FGrid
  loc_110B1F5:     LateIdCallSt
  loc_110B210:   Else
  loc_110B217:     If Not (var_EC = CLng(5)) Then
  loc_110B221:       If Not (var_EC = CLng(6)) Then
  loc_110B22B:         If Not (var_EC = CLng(7)) Then
  loc_110B235:           If Not (var_EC = CLng(8)) Then
  loc_110B23F:             If Not (var_EC = CLng(9)) Then
  loc_110B249:               If (var_EC = CLng(&HA)) Then
  loc_110B24C:               End If
  loc_110B24C:             End If
  loc_110B24C:           End If
  loc_110B24C:         End If
  loc_110B24C:       End If
  loc_110B25F:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110B277:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_110B27C:       var_11C = "0.00"
  loc_110B286:       Set var_B4 = Me.FGrid
  loc_110B28C:       LateIdCallSt
  loc_110B2A4:     End If
  loc_110B2A4:   End If
  loc_110B2A4: End If
  loc_110B2AA: If (Cancel = &HD) Then
  loc_110B2B2:   global_94 = 0
  loc_110B2B5: End If
  loc_110B2B7: Cancel = 0
  loc_110B2BA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E14D20
  'Data Table: 48AB6C
  loc_E14D11: Call FGrid_UnknownEvent_C()
  loc_E14D1B: global_94 = 0
  loc_E14D1E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '11474E8
  'Data Table: 48AB6C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1147158: Set var_88 = Me.TopCtrl1
  loc_114715E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1147177: If (CStr() = "Browse") Then
  loc_114717A:   Exit Sub
  loc_114717B: End If
  loc_114717F: Set var_88 = Me.TopCtrl1
  loc_1147185: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_114719E: If (CStr() = "Browse") Then
  loc_11471A1:   Exit Sub
  loc_11471A2: End If
  loc_11471B5: var_A0 = CLng(Me.FGrid.Col)
  loc_11471C5: If (var_A0 = CLng(1)) Then
  loc_11471CE:   If (Cancel = &H20) Then
  loc_11471D1:     Call Proc_269_56_101E400(var_A0)
  loc_11471D6:   End If
  loc_11471D9: Else
  loc_11471E0:   If Not (var_A0 = CLng(3)) Then
  loc_11471EA:     If (var_A0 = CLng(4)) Then
  loc_11471ED:     End If
  loc_11471F1:     Set var_C4 = Me.FGrid
  loc_1147215:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_114721E:     var_CA = Asc(var_9C)
  loc_1147242:     Set var_B4 = var_C4
  loc_1147254:     Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0)
  loc_114727C:     Set var_88 = Me.TxtGrid
  loc_1147282:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, 0)
  loc_114728A:     var_CA = var_B4.Text
  loc_11472A3:     If (Len(var_9C) <= 1) Then
  loc_11472B2:       Set var_88 = Me.TxtGrid
  loc_11472B8:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_11472C0:       0 = var_B4.Text
  loc_11472D1:       Set var_B8 = Me.TxtGrid
  loc_11472D7:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_11472DF:       var_C4.Text = var_9C
  loc_11472F2:     End If
  loc_11472FE:     Set var_88 = Me.TxtGrid
  loc_1147304:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_114731E:     Set var_B8 = Me.TxtGrid
  loc_1147324:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_114732C:     var_C4.SelStart = Len(var_B4.Text)
  loc_1147342:   Else
  loc_1147349:     If Not (var_A0 = CLng(5)) Then
  loc_1147353:       If Not (var_A0 = CLng(6)) Then
  loc_114735D:         If Not (var_A0 = CLng(7)) Then
  loc_1147367:           If Not (var_A0 = CLng(8)) Then
  loc_1147371:             If Not (var_A0 = CLng(9)) Then
  loc_114737B:               If (var_A0 = CLng(&HA)) Then
  loc_114737E:               End If
  loc_114737E:             End If
  loc_114737E:           End If
  loc_114737E:         End If
  loc_114737E:       End If
  loc_1147382:       Set var_C4 = Me.FGrid
  loc_11473A6:       var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11473D3:       Set var_B4 = var_C4
  loc_11473E5:       Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_114740D:       Set var_88 = Me.TxtGrid
  loc_1147413:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_114741B:       0 = var_B4.Text
  loc_1147434:       If (Len(var_9C) <= 1) Then
  loc_1147443:         Set var_88 = Me.TxtGrid
  loc_1147449:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1147451:         var_CA = var_B4.Text
  loc_1147462:         Set var_B8 = Me.TxtGrid
  loc_1147468:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1147470:         var_C4.Text = var_9C
  loc_1147483:       End If
  loc_114748F:       Set var_88 = Me.TxtGrid
  loc_1147495:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_11474AF:       Set var_B8 = Me.TxtGrid
  loc_11474B5:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_11474BD:       var_C4.SelStart = Len(var_B4.Text)
  loc_11474D0:     End If
  loc_11474D0:   End If
  loc_11474D0: End If
  loc_11474DA: If (CLng(Cancel) <> &HD) Then
  loc_11474E2:   global_94 = &HFF
  loc_11474E5: End If
  loc_11474E5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E27274
  'Data Table: 48AB6C
  loc_E27267: global_96 = CInt(CLng(Me.FGrid.Row))
  loc_E27270: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_10 'E27AB8
  'Data Table: 48AB6C
  loc_E27AAB: global_98 = CInt(CLng(Me.FGrid.RowSel))
  loc_E27AB4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1F2C0
  'Data Table: 48AB6C
  loc_E1F2B7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1F2BF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1F400
  'Data Table: 48AB6C
  loc_E1F3F7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F3FF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E43D98
  'Data Table: 48AB6C
  Dim var_8C As TextBox
  loc_E43D6C: Call Proc_269_61_E5378C()
  loc_E43D7C: Set var_88 = Me.TxtGrid
  loc_E43D82: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E43D8A: var_8C.Visible = False
  loc_E43D96: Exit Sub
End Sub

Private Sub Form_Load() '10157A8
  'Data Table: 48AB6C
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  loc_1015580: On Error Goto loc_10157A0
  loc_101558A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10155A2: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_10155B9: Me.LblUser.Left = CDbl(13500)
  loc_10155D0: Me.LblUser.Top = CDbl(7800)
  loc_10155E7: Me.LblLDt.Top = CDbl(8160)
  loc_10155FE: Me.LblLDt.Left = CDbl(13500)
  loc_1015610: Set var_A8 = Me.TopCtrl1
  loc_1015616: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1015624: Call 0.Method_arg_50 (var_AC)
  loc_1015634: Set var_A8 = Me.TopCtrl1
  loc_101563A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_1015661: Me.TopCtrl1.CursorLocation = 3
  loc_101568B: var_BC = CVar("Select Code,Name From MemCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10156A9: CVarUnk
  loc_10156AE: VerifyVarObj
  loc_10156B4: Set var_A8 = Me.DGCategory
  loc_10156BA: LateIdStAd
  loc_10156E4: Me.DGCategory.CursorLocation = 3
  loc_1015707: var_AC = "Select DISTINCT (CF.MemCatCode+Space(6-len(CF.MemCatCode))+'**'+Convert(Varchar(11),CF.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From MemCatFacility CF Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_101570E: var_BC = CVar("Select Code,Name From MemCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By (CF.MemCatCode+Space(6-len(CF.MemCatCode))+'**'+Convert(Varchar(11),CF.AppDate,103))") 'String
  loc_1015718: r_BC, CVar(MemVar_1F92044), 3 var_BC, CVar(MemVar_1F92044), 3
  loc_1015746: Call Proc_269_60_E7C0F4(Proc_5_1_100CB50("INI", Me, New, 1, -1), Me, New)
  loc_1015759: Set var_A8 = Me.TopCtrl1
  loc_101575F: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_1015770: Set var_A8 = Me.TopCtrl1
  loc_1015776: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_1015787: Set var_A8 = Me.TopCtrl1
  loc_101578D: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_1015795: Call Proc_269_54_123A900(1)
  loc_101579A: Call Proc_269_59_13AB198(-1)
  loc_101579F: Exit Sub
  loc_10157A0: ' Referenced from: 1015580
  loc_10157A0: Proc_6_60_E62BC4()
  loc_10157A5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E45C14
  'Data Table: 48AB6C
  loc_E45BEF: Set global_104 = Nothing
  loc_E45C01: Set global_100 = Nothing
  loc_E45C0D: MasterFormExit = 0
  loc_E45C10: Exit Sub
End Sub

Private Sub Form_Activate() 'E4FC70
  'Data Table: 48AB6C
  loc_E4FC40: On Error Goto loc_E4FC6A
  loc_E4FC47: Set var_88 = Me.TopCtrl1
  loc_E4FC4D: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4FC62: If (CLng(CInt()) = &H2D) Then
  loc_E4FC65:   Call TopCtrl1_UnknownEvent_15()
  loc_E4FC6A:   ' Referenced from: E4FC40
  loc_E4FC6A: End If
  loc_E4FC6A: Proc_6_60_E62BC4()
  loc_E4FC6F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E258B4
  'Data Table: 48AB6C
  loc_E25899: If (MasterFormExit = &HFF) Then
  loc_E258A9:   Me.Global.Unload Me
  loc_E258B1: End If
  loc_E258B1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27C2C
  'Data Table: 48AB6C
  loc_E27C04: On Error Goto loc_E27C24
  loc_E27C1B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E27C23: Exit Sub
  loc_E27C24: ' Referenced from: E27C04
  loc_E27C24: Proc_6_60_E62BC4(Shift)
  loc_E27C29: Exit Sub
  loc_E27C2A: On Error Goto loc_E2700C
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EB0430
  'Data Table: 48AB6C
  Dim var_8C As Label
  Dim var_94 As TextBox
  loc_EB039C: On Error Goto loc_EB0427
  loc_EB03C2: Call Proc_269_60_E7C0F4(Proc_5_1_100CB50("ADD", Me))
  loc_EB03CD: Call Proc_269_58_F17E38(global_100)
  loc_EB03DF: Me.LblUser.Caption = vbNullString
  loc_EB03F4: Me.LblLDt.Caption = vbNullString
  loc_EB03FC: Call Proc_269_53_12690E8()
  loc_EB040C: Set var_8C = Me.Txt
  loc_EB0412: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EB041A: var_94.SetFocus
  loc_EB0426: Exit Sub
  loc_EB0427: ' Referenced from: EB039C
  loc_EB0427: Proc_6_60_E62BC4(var_94)
  loc_EB042C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EE8C40
  'Data Table: 48AB6C
  loc_EE8B84: On Error Goto loc_EE8C39
  loc_EE8BBE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE8BE4:   Call Proc_269_60_E7C0F4(Proc_5_1_100CB50("INI", Me))
  loc_EE8BF7:   Set var_10C = Me.TopCtrl1
  loc_EE8BFD:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_EE8C0E:   Set var_10C = Me.TopCtrl1
  loc_EE8C14:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_EE8C25:   Set var_10C = Me.TopCtrl1
  loc_EE8C2B:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_EE8C33:   Call Proc_269_59_13AB198(global_100)
  loc_EE8C38: End If
  loc_EE8C38: Exit Sub
  loc_EE8C39: ' Referenced from: EE8B84
  loc_EE8C39: Proc_6_60_E62BC4()
  loc_EE8C3E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16000
  'Data Table: 48AB6C
  loc_E15FF5: Me.Global.Unload Me
  loc_E15FFD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC8570
  'Data Table: 48AB6C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EC84D0: On Error Goto loc_EC8568
  loc_EC84EA: If (Me.RecordCount <= 0) Then
  loc_EC84F3:   var_B8 = "Information"
  loc_EC850E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC851E:   Exit Sub
  loc_EC851F: End If
  loc_EC8526: var_10C = "Select DISTINCT (CF.MemCatCode+Space(6-len(CF.MemCatCode))+'**'+Convert(Varchar(11),CF.AppDate,103)) AS Code,M.Name As MemberCategory,Convert(Varchar(11),CF.AppDate,106)  As AppDate From (MemCatFacility CF Left Join MemCatMast M On CF.MemCatCode=M.Code) Where (CF.LOGSITE_CODE='" & MemVar_1F92078
  loc_EC852D: MemVar_1F920E4 = var_10C & "' or CF.LOGSITE_CODE='HO') Order By (CF.MemCatCode+Space(6-len(CF.MemCatCode))+'**'+Convert(Varchar(11),CF.AppDate,103))"
  loc_EC853A: MemVar_1F92120 = Me
  loc_EC8547: Proc_6_126_F1BCC0("3000,1500")
  loc_EC8562: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC8567: Exit Sub
  loc_EC8568: ' Referenced from: EC84D0
  loc_EC8568: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC856D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2CE98
  'Data Table: 48AB6C
  loc_E2CE88: Proc_5_0_110649C(&HFF, Me)
  loc_E2CE90: Call Proc_269_59_13AB198(global_100)
  loc_E2CE95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2D018
  'Data Table: 48AB6C
  loc_E2D008: Proc_5_0_110649C(&HFF, Me)
  loc_E2D010: Call Proc_269_59_13AB198(global_100)
  loc_E2D015: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2D0D8
  'Data Table: 48AB6C
  loc_E2D0C8: Proc_5_0_110649C(&HFF, Me)
  loc_E2D0D0: Call Proc_269_59_13AB198(global_100)
  loc_E2D0D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2D5B8
  'Data Table: 48AB6C
  loc_E2D5A8: Proc_5_0_110649C(&HFF, Me)
  loc_E2D5B0: Call Proc_269_59_13AB198(global_100)
  loc_E2D5B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0AB24
  'Data Table: 48AB6C
  Dim Me As Recordset15
  loc_E0AB1B: Me.Requery -1
  loc_E0AB20: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14577C4
  'Data Table: 48AB6C
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_120 As String
  Dim var_140 As Variant
  Dim var_90 As Variant
  Dim var_98 As String
  Dim var_1A0 As Variant
  Dim var_130 As Variant
  Dim unk_48AB6F As Connection15
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_1C8 As MSHFlexGrid
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_1EC As MSHFlexGrid
  Dim var_24C As Variant
  Dim var_26C As Variant
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_37C As Variant
  Dim var_39C As Variant
  Dim var_7CC As Double
  Dim var_7D4 As Double
  Dim var_7DC As Double
  Dim var_1BC As String
  Dim var_110 As Variant
  Dim var_1B0 As Variant
  Dim var_1D8 As Variant
  Dim var_21C As Variant
  Dim var_3E4 As Variant
  Dim var_654 As Variant
  Dim var_784 As Variant
  Dim var_1C4 As TextBox
  Dim Me As Recordset15
  loc_1456D34: On Error Goto loc_1457772
  loc_1456D3B: var_86 = CByte(0) 'Byte
  loc_1456D4A: Set var_8C = Me.Txt
  loc_1456D50: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1456D79: If (Proc_6_27_EA565C(var_90, "Category Name") = 0) Then
  loc_1456D83:   Call Txt_GotFocus(CInt(0))
  loc_1456D88:   Exit Sub
  loc_1456D89: End If
  loc_1456D94: Set var_8C = Me.Txt
  loc_1456D9A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_90)
  loc_1456DC3: If (Proc_6_27_EA565C(var_90, "App. Date") = 0) Then
  loc_1456DCD:   Call Txt_GotFocus(CInt(1))
  loc_1456DD2:   Exit Sub
  loc_1456DD3: End If
  loc_1456DD6: Call Proc_269_55_FCAFB8(var_9A)
  loc_1456DE1: If (var_9A = &HFF) Then
  loc_1456DE4:   Exit Sub
  loc_1456DE5: End If
  loc_1456E0A: For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B0 'Integer
  loc_1456E14:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1456E1C:   var_E0 = CVar(CLng(2)) 'Long
  loc_1456E3C:   var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1456E44:   var_120 = vbNullString
  loc_1456E52:   var_140 = CVar(CLng(var_88)) 'Long
  loc_1456E80:   var_1A0 = CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = "ü")
  loc_1456E9D:   If CBool(var_1A0) Then
  loc_1456EA4:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1456EAC:     var_E0 = CVar(CLng(4)) 'Long
  loc_1456EE8:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Fixed") Then
  loc_1456EEF:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_1456EF7:       var_E0 = CVar(CLng(5)) 'Long
  loc_1456F3C:       If (CDbl(Val(CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))))) = CDbl(0)) Then
  loc_1456F43:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_1456F4B:         var_E0 = CVar(CLng(3)) 'Long
  loc_1456F92:         MsgBox("Fill Fixed Rate For Facility " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_1A0, var_1B0)
  loc_1456FAF:         Set var_8C = Me.FGrid
  loc_1456FC0:         Exit Sub
  loc_1456FC4:       Else
  loc_1456FC8:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_1456FD0:         var_E0 = CVar(CLng(6)) 'Long
  loc_1456FD5:         var_120 = "0.00"
  loc_1456FDF:         Set var_8C = Me.FGrid
  loc_1456FE5:         LateIdCallSt
  loc_1456FF4:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_1456FFC:         var_E0 = CVar(CLng(7)) 'Long
  loc_1457001:         var_120 = "0.00"
  loc_145700B:         Set var_8C = Me.FGrid
  loc_1457011:         LateIdCallSt
  loc_1457020:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_1457028:         var_E0 = CVar(CLng(8)) 'Long
  loc_145702D:         var_120 = "0.00"
  loc_1457037:         Set var_8C = Me.FGrid
  loc_145703D:         LateIdCallSt
  loc_145704C:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_1457054:         var_E0 = CVar(CLng(9)) 'Long
  loc_1457059:         var_120 = "0.00"
  loc_1457063:         Set var_8C = Me.FGrid
  loc_1457069:         LateIdCallSt
  loc_1457078:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_1457080:         var_E0 = CVar(CLng(&HA)) 'Long
  loc_1457085:         var_120 = "0.00"
  loc_145708F:         Set var_8C = Me.FGrid
  loc_1457095:         LateIdCallSt
  loc_14570A0:       End If
  loc_14570A3:     Else
  loc_14570A7:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_14570AF:       var_E0 = CVar(CLng(4)) 'Long
  loc_14570EB:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Memberwise") Then
  loc_14570F2:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_14570FA:         var_E0 = CVar(CLng(5)) 'Long
  loc_14570FF:         var_120 = "0.00"
  loc_1457109:         Set var_8C = Me.FGrid
  loc_145710F:         LateIdCallSt
  loc_145711A:       End If
  loc_145711A:     End If
  loc_145711A:   End If
  loc_145711D: Next var_B0 'Integer
  loc_145712B: unk_48AB6F.BeginTrans var_1B4
  loc_1457134: var_86 = CByte(1) 'Byte
  loc_145715D: For var_1B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_1B8 'Integer
  loc_1457167:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1457189:   var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14571B6:   Set var_90 = Me.FGrid
  loc_14571C7:   var_98 = CStr(var_90.TextMatrix))
  loc_14571F0:   If CBool(CVar(CLng(1)) And (var_98 = "ü")) Then
  loc_1457201:     Set var_8C = Me.Txt
  loc_1457207:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_90, var_98, CVar(CLng(var_88)))
  loc_145720F:     (Trim(var_100) <> vbNullString) = var_90.Tag
  loc_145721F:     Set var_94 = Me.Txt
  loc_1457225:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4, CVar(CLng(2)))
  loc_1457234:     Proc_6_7_F25D88(var_100, CVar(var_1C4))
  loc_145723D:     var_D0 = CVar(CLng(var_88)) 'Long
  loc_1457245:     var_F0 = CVar(CLng(2)) 'Long
  loc_1457264:     var_150 = CVar(CLng(var_88)) 'Long
  loc_145726C:     var_170 = CVar(CLng(4)) 'Long
  loc_1457275:     Set var_1EC = Me.FGrid
  loc_145728B:     var_24C = CVar(CLng(var_88)) 'Long
  loc_1457293:     var_26C = CVar(CLng(5)) 'Long
  loc_14572BC:     var_2E4 = CVar(CLng(var_88)) 'Long
  loc_14572C4:     var_304 = CVar(CLng(6)) 'Long
  loc_14572ED:     var_37C = CVar(CLng(var_88)) 'Long
  loc_14572F5:     var_39C = CVar(CLng(7)) 'Long
  loc_1457348:     var_7CC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1457379:     var_7D4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14573AA:     var_7DC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14573B1:     Set var_5D0 = Me.TopCtrl1
  loc_14573B7:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_7DC)
  loc_14573F9:     Proc_6_7_F25D88(var_6D4, CVar(Proc_6_15_EF2C1C(CVar(CLng(&HA)), CVar(CLng(var_88)), var_7D4, CVar(CLng(9)), CVar(CLng(var_88)), var_7CC)), CVar(CLng(8)), CVar(CLng(var_88)))
  loc_1457412:     var_1BC = "Insert Into MemCatFacility (MemCatCode,AppDate,FcCode,ChrgType,FixedRate,PMember,Spouse,Child,ExtraAdult,ExtraChild,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_145744E:     var_21C = CVar(var_1BC & var_98 & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_1EC.TextMatrix))) 
  loc_145748A:     var_3E4 = var_21C & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_14574D6:     var_654 = var_3E4 & "," & CVar(var_7CC) & "," & CVar(var_7D4) & "," & CVar(var_7DC) & ",'" & IIf((CStr(var_5E0) = "Add"), "A", "E") 
  loc_1457528:     var_784 = var_654 & "','" & CVar(MemVar_1F920C8) & "'," & var_6D4 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_1457536:     unk_48AB6F.Execute CStr(var_784), var_7A8, -1
  loc_14575D6:   End If
  loc_14575D9: Next var_1B8 'Integer
  loc_14575E4: unk_48AB6F.CommitTrans
  loc_14575ED: var_86 = CByte(0) 'Byte
  loc_14575FC: Set var_1C8 = Me.Txt
  loc_1457602: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1457615: Set var_8C = Me.Txt
  loc_145761B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_90)
  loc_145762B: var_100 = CVar(var_90.Tag) 'String
  loc_1457641: Set var_94 = Me.Txt
  loc_1457647: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1C4, var_1BC)
  loc_145764F: 6 = var_1C4.Tag
  loc_145765C: var_AC = Space((var_100 - Len(var_1BC)))
  loc_1457664: var_110 = (var_1EC + CVar(var_1C4))
  loc_1457668: var_C0 = "**"
  loc_145766D: var_130 = (CVar(var_1BC & var_90.Tag & "',") + var_C0)
  loc_1457698: var_1D8 = (1 + Format(CVar(var_1EC), "dd/mm/yyyy"))
  loc_14576D9: Me.Requery -1
  loc_1457706: Me.Find "SearchCode ='" & CStr(CVar(var_1BC & var_90.Tag & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'", 0, 1
  loc_1457716: Set var_8C = Me.TopCtrl1
  loc_145771C: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_1457735: If (CStr(1) = "Add") Then
  loc_1457738:   Call TopCtrl1_UnknownEvent_A()
  loc_145773D:   Exit Sub
  loc_145773E: End If
  loc_1457753: var_98 = "INI"
  loc_1457761: Call Proc_269_60_E7C0F4(Proc_5_1_100CB50(var_98, Me), global_100)
  loc_145776C: Call Proc_269_59_13AB198(CVar("SearchCode ='" & CStr(CVar(var_1BC & var_90.Tag & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'" & var_98 & "',") & var_100)
  loc_1457771: Exit Sub
  loc_1457772: ' Referenced from: 1456D34
  loc_145777B: If (CInt(var_86) = 1) Then
  loc_1457784:   unk_48AB6F.RollbackTrans
  loc_1457789: End If
  loc_1457791: Set var_8C = Err()
  loc_1457797: Call 0.Method_arg_2C (var_98)
  loc_14577B0: MsgBox(CVar(var_98), &H10, var_100, CVar("SearchCode ='" & CStr(CVar(var_1BC & var_90.Tag & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'" & var_98 & "',"), CVar("SearchCode ='" & CStr(CVar(var_1BC & var_90.Tag & "',") & var_100 & ",'" & CVar(CStr(Me.FGrid.TextMatrix)))) & "'" & var_98 & "',") & var_100)
  loc_14577C3: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_9 'F40F24
  'Data Table: 48AB6C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F40E1B: Me.DGCategory.Visible = False
  loc_F40E3A: If (Me.RecordCount > 0) Then
  loc_F40E79:   Set var_B4 = Me.Txt
  loc_F40E7F:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0), var_B8)
  loc_F40E87:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F40EBA:   var_B0 = Me.Fields.Item("Code")
  loc_F40ED9:   Set var_B4 = Me.Txt
  loc_F40EDF:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0), var_B8)
  loc_F40EE7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F40EFD: End If
  loc_F40F08: Set var_A8 = Me.Txt
  loc_F40F0E: Call 0.Method_DGCategory_UnknownEvent_90 (CInt(0))
  loc_F40F16: var_B0.SetFocus
  loc_F40F22: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5BFAC
  'Data Table: 48AB6C
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5BECE: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5BED5:   Set var_A8 = Me.ListView
  loc_F5BF1F:   Set var_C0 = Me.TxtGrid
  loc_F5BF25:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5BF2D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5BF4D: End If
  loc_F5BF59: Me.FrmList.Visible = False
  loc_F5BF89: Set var_9C = Me.TxtGrid
  loc_F5BF8F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5BF97: var_A8.SetFocus
  loc_F5BFAB: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '103EC5C
  'Data Table: 48AB6C
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim var_104 As TextBox
  loc_103EA1C: Call Proc_269_61_E5378C()
  loc_103EA34: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_103EA4F: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103EA58: Set var_BC = Me.FGrid
  loc_103EA81: var_10C = CStr(Me.FGrid.TextMatrix))
  loc_103EA8E: Set var_104 = Me.TxtGrid
  loc_103EA94: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_10C)
  loc_103EA9C: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_103EACD: var_110 = CLng(Me.FGrid.Col)
  loc_103EADD: If (var_110 = CLng(4)) Then
  loc_103EAEF:   Set var_A8 = Me.TxtGrid
  loc_103EAF5:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HF)
  loc_103EAFD:   var_BC.MaxLength = var_110
  loc_103EB16:   ReDim var_114(0 To 1)
  loc_103EB2D:   var_114(0) = "Fixed"
  loc_103EB3C:   var_114(1) = "Memberwise"
  loc_103EB53:   global_64 = Array(var_114)
  loc_103EB5E:   Set var_104 = Me.ListView
  loc_103EB79:   Set var_BC = Me.TxtGrid
  loc_103EB93:   Set global_80 = Proc_6_66_EFF8FC(var_104, var_BC, Index, global_64)
  loc_103EBB1:   Set var_A8 = Me.TxtGrid
  loc_103EBB7:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, var_10C)
  loc_103EBBF:   2 = var_BC.Text
  loc_103EBD1:   Set var_F0 = Me.TxtGrid
  loc_103EBD7:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, var_10C)
  loc_103EBDF:   var_104.Tag = global_64
  loc_103EBF5: Else
  loc_103EBFC:   If Not (var_110 = CLng(5)) Then
  loc_103EC06:     If Not (var_110 = CLng(7)) Then
  loc_103EC10:       If Not (var_110 = CLng(6)) Then
  loc_103EC1A:         If Not (var_110 = CLng(9)) Then
  loc_103EC24:           If Not (var_110 = CLng(&HA)) Then
  loc_103EC2E:             If (var_110 = CLng(8)) Then
  loc_103EC31:             End If
  loc_103EC31:           End If
  loc_103EC31:         End If
  loc_103EC31:       End If
  loc_103EC31:     End If
  loc_103EC40:     Set var_A8 = Me.TxtGrid
  loc_103EC46:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_103EC4E:     var_BC.MaxLength = &HB
  loc_103EC5A:   End If
  loc_103EC5A: End If
  loc_103EC5A: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11B311C
  'Data Table: 48AB6C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim var_C4 As TextBox
  Dim var_D0 As TextBox
  loc_11B2D04: On Error Goto loc_11B3115
  loc_11B2D11: If (CLng(Shift) = &H1B) Then
  loc_11B2D21:   Set var_88 = Me.TxtGrid
  loc_11B2D27:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_11B2D41:   Set var_94 = Me.TxtGrid
  loc_11B2D47:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_11B2D4F:   var_98.Text = var_8C.Tag
  loc_11B2D6B:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_11B2D70:   Call Proc_269_61_E5378C(arg_14)
  loc_11B2D79:   Set var_88 = Me.FGrid
  loc_11B2D96:   Set var_88 = Me.TxtGrid
  loc_11B2D9C:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_11B2DA4:   var_8C.Visible = False
  loc_11B2DB0:   Exit Sub
  loc_11B2DB1: End If
  loc_11B2DC4: var_AC = CLng(Me.FGrid.Col)
  loc_11B2DD4: If (var_AC = CLng(3)) Then
  loc_11B2DE1:   If (CLng(Shift) = &HD) Then
  loc_11B2DEA:     Call Proc_269_57_1036A74(KeyCode, var_AE)
  loc_11B2DF5:     If (var_AE = &HFF) Then
  loc_11B2E03:       Set var_98 = Me.TxtGrid
  loc_11B2E2C:       Set var_8C = var_98
  loc_11B2E3B:       Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_94, &HA)
  loc_11B2E4B:     End If
  loc_11B2E4B:   End If
  loc_11B2E4E: Else
  loc_11B2E55:   If (var_AC = CLng(4)) Then
  loc_11B2E7A:     Set var_88 = Me.TxtGrid
  loc_11B2E80:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, var_B8, 0)
  loc_11B2E88:     4 = var_8C.Left
  loc_11B2E9A:     Set var_94 = Me.TxtGrid
  loc_11B2EA0:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98, var_BC)
  loc_11B2EA8:     0 = var_98.Top
  loc_11B2EBA:     Set var_C0 = Me.TxtGrid
  loc_11B2EC0:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C4, var_C8)
  loc_11B2EC8:     var_AC = var_C4.Height
  loc_11B2EDA:     Set var_CC = Me.TxtGrid
  loc_11B2EE0:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_D0)
  loc_11B2EE8:     var_D4 = var_D0.Width
  loc_11B2F30:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_11B2F5E:     If (CLng(Shift) = &HD) Then
  loc_11B2F67:       Call Proc_269_57_1036A74(KeyCode, var_AE, CInt(var_B8), CInt((var_BC + var_C8)))
  loc_11B2F72:       If (var_AE = &HFF) Then
  loc_11B2FB8:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, &HA)
  loc_11B2FC8:       End If
  loc_11B2FC8:     End If
  loc_11B2FCB:   Else
  loc_11B2FD2:     If Not (var_AC = CLng(5)) Then
  loc_11B2FDC:       If Not (var_AC = CLng(7)) Then
  loc_11B2FE6:         If Not (var_AC = CLng(6)) Then
  loc_11B2FF0:           If Not (var_AC = CLng(8)) Then
  loc_11B2FFA:             If (var_AC = CLng(9)) Then
  loc_11B2FFD:             End If
  loc_11B2FFD:           End If
  loc_11B2FFD:         End If
  loc_11B2FFD:       End If
  loc_11B3007:       If (CLng(Shift) = &HD) Then
  loc_11B3010:         Call Proc_269_57_1036A74(KeyCode, var_AE, 0, 5)
  loc_11B301B:         If (var_AE = &HFF) Then
  loc_11B3036:           var_A8 = Me.FGrid.Col
  loc_11B307F:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, &HA, 0)
  loc_11B3094:         End If
  loc_11B3094:       End If
  loc_11B3097:     Else
  loc_11B309E:       If (var_AC = CLng(&HA)) Then
  loc_11B30AB:         If (CLng(Shift) = &HD) Then
  loc_11B30B4:           Call Proc_269_57_1036A74(KeyCode, var_AE, CByte((CLng(var_A8) + 1)), 0, var_A8)
  loc_11B30BF:           If (var_AE = &HFF) Then
  loc_11B3105:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, &HA, 0)
  loc_11B3115:           End If
  loc_11B3115:         End If
  loc_11B3115:       End If
  loc_11B3115:       ' Referenced from: 11B2D04
  loc_11B3115:     End If
  loc_11B3115:   End If
  loc_11B3115: End If
  loc_11B3115: Proc_6_60_E62BC4(&HA, 0, 0)
  loc_11B311A: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'ECC108
  'Data Table: 48AB6C
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  loc_ECC063: Proc_6_58_E054C0(arg_10)
  loc_ECC074: If (KeyAscii = 0) Then
  loc_ECC08A:   var_A0 = CLng(Me.FGrid.Col)
  loc_ECC09A:   If Not (var_A0 = CLng(5)) Then
  loc_ECC0A4:     If Not (var_A0 = CLng(6)) Then
  loc_ECC0AE:       If Not (var_A0 = CLng(9)) Then
  loc_ECC0B8:         If Not (var_A0 = CLng(7)) Then
  loc_ECC0C2:           If Not (var_A0 = CLng(8)) Then
  loc_ECC0CC:             If (var_A0 = CLng(&HA)) Then
  loc_ECC0CF:             End If
  loc_ECC0CF:           End If
  loc_ECC0CF:         End If
  loc_ECC0CF:       End If
  loc_ECC0CF:     End If
  loc_ECC0D9:     Set var_8C = Me.TxtGrid
  loc_ECC0DF:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_ECC0FA:     Proc_6_42_129A86C(var_A4, arg_10, 8)
  loc_ECC106:   End If
  loc_ECC106: End If
  loc_ECC106: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EEC18C
  'Data Table: 48AB6C
  loc_EEC0C8: On Error Goto loc_EEC184
  loc_EEC0EE: If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_EEC113:   If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_EEC124:     Call TxtGrid_KeyDown(KeyCode, global_92)
  loc_EEC129:   End If
  loc_EEC144:   If (Me.FrmList.Visible = &HFF) Then
  loc_EEC173:     Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, KeyCode, Shift)
  loc_EEC183:   End If
  loc_EEC183: End If
  loc_EEC183: Exit Sub
  loc_EEC184: ' Referenced from: EEC0C8
  loc_EEC184: Proc_6_60_E62BC4(global_80, 0)
  loc_EEC189: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E208D4
  'Data Table: 48AB6C
  Dim arg_10 As Integer
  loc_E208BC: If (Cancel = 0) Then
  loc_E208C5:   Call Proc_269_57_1036A74(Cancel, var_88)
  loc_E208CE:   arg_10 = Not(var_88)
  loc_E208D1: End If
  loc_E208D1: Exit Sub
End Sub

Public Function MasterFormExitGet() '48B6B8
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '48B6C7
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '48B6D6
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '48B6E5
  SearchCode = Value
End Sub

Public Function global_60Get() '48B6F4
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '48B703
  global_60 = Value
End Sub

Public Function global_64Get() '48B712
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '48B721
  global_64 = Value
End Sub

Public Sub global_64Set(Value) '48B730
  global_64 = Value
End Sub

Public Function global_80Get() '48B73F
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '48B74E
  global_80 = Value
End Sub

Public Sub global_80Set(Value) '48B75D
  global_80 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E97410
  'Data Table: 48AB6C
  Dim Me As Recordset15
  loc_E9739E: On Error Goto loc_E97407
  loc_E973A7: Me.MoveFirst
  loc_E973D1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E973F9: Proc_5_0_110649C(&HFF, Me, global_100)
  loc_E97401: Call Proc_269_59_13AB198(0)
  loc_E97406: Exit Sub
  loc_E97407: ' Referenced from: E9739E
  loc_E97407: Proc_6_60_E62BC4(var_A0)
  loc_E9740C: Exit Sub
End Sub

Public Sub Proc_269_53_12690E8
  'Data Table: 48AB6C
  Dim var_B0 As Variant
  Dim var_90 As String
  Dim var_A0 As Variant
  Dim var_8C As Recordset15
  Dim var_C8 As Variant
  Dim var_86 As Integer
  Dim var_C4 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_144 As Variant
  loc_1268B60: Set var_8C = New 
  loc_1268B6B: Me.Recordset15.CursorLocation = 3
  loc_1268B8E: var_90 = "Select Code,Name,FixedRate,ChargeType,PrimaryMember,Spouse,Child,AddAdult,AddChild From MemFacilityMast where ActiveYN='Y' And (LOGSITE_CODE='" & MemVar_1F92078
  loc_1268B9C: var_8C.Open CVar(var_90 & "' or LOGSITE_CODE='HO') Order By Name"), CVar(MemVar_1F92044), 3
  loc_1268BBB: If (var_8C.RecordCount = 0) Then
  loc_1268BD1:   Me.FGrid.Rows = 2
  loc_1268BEC:   Me.FGrid.FixedRows = 1
  loc_1268BF4:   Exit Sub
  loc_1268BF5: End If
  loc_1268C09: If (var_8C.RecordCount > 0) Then
  loc_1268C1F:   Me.FGrid.Rows = 1
  loc_1268C29:   var_86 = 1
  loc_1268C2C:   ' Referenced from: 1269084
  loc_1268C3B:   If Not(var_8C.EOF) Then
  loc_1268C43:     var_A0 = CVar(CStr(var_86)) 'String
  loc_1268C4B:     Set var_C8 = Me.FGrid
  loc_1268C63:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_1268C6B:     var_F0 = CVar(CLng(3)) 'Long
  loc_1268C9B:     var_110 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1268CA3:     Set var_124 = Me.FGrid
  loc_1268CA9:     LateIdCallSt
  loc_1268CC5:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_1268CCD:     var_F0 = CVar(CLng(2)) 'Long
  loc_1268CFD:     var_110 = CVar(CStr(var_8C.Fields.Item("Code").Value)) 'String
  loc_1268D05:     Set var_124 = Me.FGrid
  loc_1268D0B:     LateIdCallSt
  loc_1268D27:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_1268D2F:     var_F0 = CVar(CLng(4)) 'Long
  loc_1268D5F:     var_110 = CVar(CStr(var_8C.Fields.Item("ChargeType").Value)) 'String
  loc_1268D67:     Set var_124 = Me.FGrid
  loc_1268D6D:     LateIdCallSt
  loc_1268DA5:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1268DAD:     var_100 = CVar(CLng(5)) 'Long
  loc_1268DDA:     var_144 = CVar(CStr(Format(CVar(var_8C.Fields.Item("FixedRate")), "0.00"))) 'String
  loc_1268DE2:     Set var_124 = Me.FGrid
  loc_1268DE8:     LateIdCallSt
  loc_1268E22:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1268E2A:     var_100 = CVar(CLng(6)) 'Long
  loc_1268E57:     var_144 = CVar(CStr(Format(CVar(var_8C.Fields.Item("PrimaryMember")), "0.00"))) 'String
  loc_1268E5F:     Set var_124 = Me.FGrid
  loc_1268E65:     LateIdCallSt
  loc_1268E9F:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1268EA7:     var_100 = CVar(CLng(7)) 'Long
  loc_1268ED4:     var_144 = CVar(CStr(Format(CVar(var_8C.Fields.Item("Spouse")), "0.00"))) 'String
  loc_1268EDC:     Set var_124 = Me.FGrid
  loc_1268EE2:     LateIdCallSt
  loc_1268F1C:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1268F24:     var_100 = CVar(CLng(8)) 'Long
  loc_1268F51:     var_144 = CVar(CStr(Format(CVar(var_8C.Fields.Item("Child")), "0.00"))) 'String
  loc_1268F59:     Set var_124 = Me.FGrid
  loc_1268F5F:     LateIdCallSt
  loc_1268F99:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1268FA1:     var_100 = CVar(CLng(9)) 'Long
  loc_1268FCE:     var_144 = CVar(CStr(Format(CVar(var_8C.Fields.Item("AddAdult")), "0.00"))) 'String
  loc_1268FD6:     Set var_124 = Me.FGrid
  loc_1268FDC:     LateIdCallSt
  loc_1269016:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_126901E:     var_100 = CVar(CLng(&HA)) 'Long
  loc_126904B:     var_144 = CVar(CStr(Format(CVar(var_8C.Fields.Item("addChild")), "0.00"))) 'String
  loc_1269053:     Set var_124 = Me.FGrid
  loc_1269059:     LateIdCallSt
  loc_1269079:     var_86 = (var_86 + 1)
  loc_126907F:     var_8C.MoveNext
  loc_1269084:     GoTo loc_1268C2C
  loc_1269087:   End If
  loc_1269087: End If
  loc_12690A6: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_12690A9:   var_B0 = "1"
  loc_12690B3:   Set var_C8 = Me.FGrid
  loc_12690C4: End If
  loc_12690D7: Me.FGrid.FixedRows = 1
  loc_12690E4: Set var_8C = Nothing
  loc_12690E7: Exit Sub
End Sub

Public Sub Proc_269_54_123A900
  'Data Table: 48AB6C
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_123A3D0: On Error Goto loc_123A8FA
  loc_123A3E1: Set var_88 = Me.Txt
  loc_123A3E7: Call 0.Method_Proc_269_54_123A9000 (CInt(0), var_8C)
  loc_123A406: Me.DGCategory.Left = CVar(var_8C.Left)
  loc_123A422: Set var_B4 = Me.Txt
  loc_123A428: Call 0.Method_Proc_269_54_123A9000 (CInt(0), var_B8)
  loc_123A443: Set var_88 = Me.Txt
  loc_123A449: Call 0.Method_Proc_269_54_123A9000 (CInt(0), var_8C)
  loc_123A461: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_123A470: Me.DGCategory.Top = CVar(var_8C.Left)
  loc_123A486: Set var_C4 = Me.FGrid
  loc_123A495: var_C4.Height = CVar(CDbl(4250))
  loc_123A4A6: var_C4.Width = CVar(CDbl(11350))
  loc_123A4B7: var_C4.Cols = &HB
  loc_123A4C8: var_C4.Rows = 2
  loc_123A4D9: var_C4.FixedCols = 1
  loc_123A4F2: global_84 = CStr(CLng(var_C4.BackColor))
  loc_123A4FF: var_A0 = CVar(CLng(0)) 'Long
  loc_123A504: var_E8 = 0
  loc_123A510: LateIdCallSt
  loc_123A51B: var_A0 = CVar(CLng(1)) 'Long
  loc_123A520: var_E8 = &H1F4
  loc_123A52C: LateIdCallSt
  loc_123A537: var_A0 = CVar(CLng(2)) 'Long
  loc_123A53C: var_E8 = 0
  loc_123A548: LateIdCallSt
  loc_123A553: var_A0 = CVar(CLng(3)) 'Long
  loc_123A558: var_E8 = &H9C4
  loc_123A564: LateIdCallSt
  loc_123A56C: var_A0 = 0
  loc_123A578: var_E8 = CVar(CLng(3)) 'Long
  loc_123A57D: var_108 = "Facility Name"
  loc_123A586: LateIdCallSt
  loc_123A591: var_A0 = CVar(CLng(3)) 'Long
  loc_123A59C: var_E8 = CVar(CInt(1)) 'Integer
  loc_123A5A3: LateIdCallSt
  loc_123A5AE: var_A0 = CVar(CLng(4)) 'Long
  loc_123A5B3: var_E8 = &H4E2
  loc_123A5BF: LateIdCallSt
  loc_123A5C7: var_A0 = 0
  loc_123A5D3: var_E8 = CVar(CLng(4)) 'Long
  loc_123A5D8: var_108 = "Charge Type"
  loc_123A5E1: LateIdCallSt
  loc_123A5EC: var_A0 = CVar(CLng(4)) 'Long
  loc_123A5F7: var_E8 = CVar(CInt(1)) 'Integer
  loc_123A5FE: LateIdCallSt
  loc_123A609: var_A0 = CVar(CLng(4)) 'Long
  loc_123A614: var_E8 = CVar(CInt(1)) 'Integer
  loc_123A61B: LateIdCallSt
  loc_123A626: var_A0 = CVar(CLng(5)) 'Long
  loc_123A62B: var_E8 = &H44C
  loc_123A637: LateIdCallSt
  loc_123A63F: var_A0 = 0
  loc_123A64B: var_E8 = CVar(CLng(5)) 'Long
  loc_123A650: var_108 = "Fixed Rate"
  loc_123A659: LateIdCallSt
  loc_123A664: var_A0 = CVar(CLng(5)) 'Long
  loc_123A66F: var_E8 = CVar(CInt(7)) 'Integer
  loc_123A676: LateIdCallSt
  loc_123A681: var_A0 = CVar(CLng(5)) 'Long
  loc_123A68C: var_E8 = CVar(CInt(7)) 'Integer
  loc_123A693: LateIdCallSt
  loc_123A69E: var_A0 = CVar(CLng(6)) 'Long
  loc_123A6A3: var_E8 = &H47E
  loc_123A6AF: LateIdCallSt
  loc_123A6B7: var_A0 = 0
  loc_123A6C3: var_E8 = CVar(CLng(6)) 'Long
  loc_123A6C8: var_108 = "Pri Member"
  loc_123A6D1: LateIdCallSt
  loc_123A6DC: var_A0 = CVar(CLng(6)) 'Long
  loc_123A6E7: var_E8 = CVar(CInt(7)) 'Integer
  loc_123A6EE: LateIdCallSt
  loc_123A6F9: var_A0 = CVar(CLng(6)) 'Long
  loc_123A704: var_E8 = CVar(CInt(7)) 'Integer
  loc_123A70B: LateIdCallSt
  loc_123A716: var_A0 = CVar(CLng(7)) 'Long
  loc_123A71B: var_E8 = &H44C
  loc_123A727: LateIdCallSt
  loc_123A72F: var_A0 = 0
  loc_123A73B: var_E8 = CVar(CLng(7)) 'Long
  loc_123A740: var_108 = "Spouse"
  loc_123A749: LateIdCallSt
  loc_123A754: var_A0 = CVar(CLng(7)) 'Long
  loc_123A75F: var_E8 = CVar(CInt(7)) 'Integer
  loc_123A766: LateIdCallSt
  loc_123A771: var_A0 = CVar(CLng(7)) 'Long
  loc_123A77C: var_E8 = CVar(CInt(7)) 'Integer
  loc_123A783: LateIdCallSt
  loc_123A78E: var_A0 = CVar(CLng(8)) 'Long
  loc_123A793: var_E8 = &H44C
  loc_123A79F: LateIdCallSt
  loc_123A7A7: var_A0 = 0
  loc_123A7B3: var_E8 = CVar(CLng(8)) 'Long
  loc_123A7B8: var_108 = "Child"
  loc_123A7C1: LateIdCallSt
  loc_123A7CC: var_A0 = CVar(CLng(8)) 'Long
  loc_123A7D7: var_E8 = CVar(CInt(7)) 'Integer
  loc_123A7DE: LateIdCallSt
  loc_123A7E9: var_A0 = CVar(CLng(8)) 'Long
  loc_123A7F4: var_E8 = CVar(CInt(7)) 'Integer
  loc_123A7FB: LateIdCallSt
  loc_123A806: var_A0 = CVar(CLng(9)) 'Long
  loc_123A80B: var_E8 = &H47E
  loc_123A817: LateIdCallSt
  loc_123A81F: var_A0 = 0
  loc_123A82B: var_E8 = CVar(CLng(9)) 'Long
  loc_123A830: var_108 = "Extra Adult"
  loc_123A839: LateIdCallSt
  loc_123A844: var_A0 = CVar(CLng(9)) 'Long
  loc_123A84F: var_E8 = CVar(CInt(7)) 'Integer
  loc_123A856: LateIdCallSt
  loc_123A861: var_A0 = CVar(CLng(9)) 'Long
  loc_123A86C: var_E8 = CVar(CInt(7)) 'Integer
  loc_123A873: LateIdCallSt
  loc_123A87E: var_A0 = CVar(CLng(&HA)) 'Long
  loc_123A883: var_E8 = &H47E
  loc_123A88F: LateIdCallSt
  loc_123A897: var_A0 = 0
  loc_123A8A3: var_E8 = CVar(CLng(&HA)) 'Long
  loc_123A8A8: var_108 = "Extra Child"
  loc_123A8B1: LateIdCallSt
  loc_123A8BC: var_A0 = CVar(CLng(&HA)) 'Long
  loc_123A8C7: var_E8 = CVar(CInt(7)) 'Integer
  loc_123A8CE: LateIdCallSt
  loc_123A8D9: var_A0 = CVar(CLng(&HA)) 'Long
  loc_123A8E4: var_E8 = CVar(CInt(7)) 'Integer
  loc_123A8EB: LateIdCallSt
  loc_123A8F5: Set var_C4 = Nothing 
  loc_123A8F9: Exit Sub
  loc_123A8FA: ' Referenced from: 123A3D0
  loc_123A8FA: Proc_6_60_E62BC4(var_C4, var_E8, var_A0, var_C4, var_E8, var_A0, var_C4, var_108)
  loc_123A8FF: Exit Sub
End Sub

Public Sub Proc_269_55_FCAFB8
  'Data Table: 48AB6C
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_48AB6F As Connection15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  loc_FCAE53: If (Me.RecordCount = 0) Then
  loc_FCAE56:   Proc_269_55_FCAFB8 = 
  loc_FCAE5C: End If
  loc_FCAE97: Set var_94 = Me.Txt
  loc_FCAE9D: Call 0.Method_Proc_269_55_FCAFB80 (CInt(0), var_98, var_9C, "Select Count(*) From MemCatFacility Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (MemCatCode='", var_130, -1)
  loc_FCAEB5: var_DC = CVar(var_138 & var_9C & "' And AppDate=") 'String
  loc_FCAEC3: Set var_A8 = Me.Txt
  loc_FCAEC9: Call 0.Method_Proc_269_55_FCAFB80 (CInt(1), var_AC, var_DC)
  loc_FCAED8: Proc_6_7_F25D88(var_CC, CVar(var_AC), 0)
  loc_FCAEE0: var_EC = var_14C & var_CC 
  loc_FCAEF7: unk_48AB6F.Execute CStr(var_EC & ")"), var_15C, 
  loc_FCAEFF:  = var_98.Tag.Fields
  loc_FCAF07:  = var_138.Item()
  loc_FCAF0F:  = var_14C.Value
  loc_FCAF4C: If (var_15C > 0) Then
  loc_FCAF70:   MsgBox("Duplicate Entry", &H40, "Information", var_DC, var_EC)
  loc_FCAF8B:   Set var_94 = Me.Txt
  loc_FCAF91:   Call 0.Method_Proc_269_55_FCAFB80 (CInt(0))
  loc_FCAF99:   var_98.SetFocus
  loc_FCAFAA:   Proc_269_55_FCAFB8 = &HFF
  loc_FCAFB0: End If
  loc_FCAFB0: Proc_269_55_FCAFB8 = var_98
  loc_FCAFB6:  = var_B01
End Sub

Public Sub Proc_269_56_101E400
  'Data Table: 48AB6C
  Dim var_88 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_E8 As Variant
  Dim var_FC As MSHFlexGrid
  Dim var_11C As String
  loc_101E1E0: Set var_88 = Me.TopCtrl1
  loc_101E1E6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_101E1FF: If (CStr() = "Browse") Then
  loc_101E202:   Exit Sub
  loc_101E203: End If
  loc_101E222: If (CLng(Me.FGrid.Col) <> 1) Then
  loc_101E225:   Exit Sub
  loc_101E226: End If
  loc_101E235: For var_A2 = global_96 To global_98: var_9E = var_A2 'Integer
  loc_101E24E:   Me.FGrid.Row = CVar(CLng(var_9E))
  loc_101E278:   Me.FGrid.Col = CVar(CLng(Me.FGrid.Col))
  loc_101E297:   Me.FGrid.CellFontName = "wingdings"
  loc_101E2B1:   Me.FGrid.CellFontSize = CVar(CDbl(&H12))
  loc_101E2CC:   Me.FGrid.CellForeColor = &HFF0000
  loc_101E2E7:   var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_101E2FF:   var_E8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_101E336:   If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_101E34C:     var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_101E364:     var_E8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_101E369:     var_11C = "ü"
  loc_101E373:     Set var_FC = Me.FGrid
  loc_101E379:     LateIdCallSt
  loc_101E394:   Else
  loc_101E3A7:     var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_101E3BF:     var_E8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_101E3C4:     var_11C = vbNullString
  loc_101E3CE:     Set var_FC = Me.FGrid
  loc_101E3D4:     LateIdCallSt
  loc_101E3EC:   End If
  loc_101E3EF: Next var_A2 'Integer
  loc_101E3F9: global_96 = 0
  loc_101E3FC: Exit Sub
End Sub

Public Sub Proc_269_57_1036A74(arg_C) '1036A74
  'Data Table: 48AB6C
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_A4 As Variant
  Dim var_B0 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_164 As Variant
  loc_1036857: var_A0 = CLng(Me.FGrid.Col)
  loc_1036867: If (var_A0 = CLng(4)) Then
  loc_1036877:   Set var_8C = Me.TxtGrid
  loc_103687D:   Call 0.Method_Proc_269_57_1036A740 (arg_C, var_A4)
  loc_103689C:   If (var_A4.Text <> vbNullString) Then
  loc_10368B7:     Set var_A4 = Me.ListView.SelectedItem
  loc_10368BD:     var_A8 = var_A4.Text
  loc_10368CF:     Set var_AC = Me.TxtGrid
  loc_10368D5:     Call 0.Method_Proc_269_57_1036A740 (arg_C, var_B0)
  loc_10368DD:     var_B0.Text = var_A8
  loc_10368F3:   End If
  loc_1036906:   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103691E:   var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1036930:   Set var_8C = Me.TxtGrid
  loc_1036936:   Call 0.Method_Proc_269_57_1036A740 (arg_C, var_A4, var_A8)
  loc_103693E:   var_F0 = var_A4.Text
  loc_1036946:   var_110 = CVar(var_A8) 'String
  loc_103694E:   Set var_124 = Me.FGrid
  loc_1036954:   LateIdCallSt
  loc_1036975: Else
  loc_103697C:   If Not (var_A0 = CLng(5)) Then
  loc_1036986:     If Not (var_A0 = CLng(6)) Then
  loc_1036990:       If Not (var_A0 = CLng(7)) Then
  loc_103699A:         If Not (var_A0 = CLng(8)) Then
  loc_10369A4:           If Not (var_A0 = CLng(9)) Then
  loc_10369AE:             If (var_A0 = CLng(&HA)) Then
  loc_10369B1:             End If
  loc_10369B1:           End If
  loc_10369B1:         End If
  loc_10369B1:       End If
  loc_10369B1:     End If
  loc_10369BD:     Set var_8C = Me.TxtGrid
  loc_10369C3:     Call 0.Method_Proc_269_57_1036A740 (0, var_A4, var_A8, var_124)
  loc_10369CB:     var_110 = var_A4.Text
  loc_10369EE:     var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1036A06:     var_120 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1036A33:     var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_1036A3B:     Set var_124 = Me.FGrid
  loc_1036A41:     LateIdCallSt
  loc_1036A68:   End If
  loc_1036A68: End If
  loc_1036A6D: Proc_269_57_1036A74 = &HFF
End Sub

Public Sub Proc_269_58_F17E38
  'Data Table: 48AB6C
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F17D4E: Set var_8C = Me.Txt
  loc_F17D54: Call 0.Method_Proc_269_58_F17E38C (var_8E, var_86)
  loc_F17D64: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F17D7A:   Set var_8C = Me.Txt
  loc_F17D80:   Call 0.Method_Proc_269_58_F17E380 (CInt(var_86), var_98)
  loc_F17D88:   var_98.Text = vbNullString
  loc_F17DA4:   Set var_8C = Me.Txt
  loc_F17DAA:   Call 0.Method_Proc_269_58_F17E380 (CInt(var_86), var_98)
  loc_F17DB2:   var_98.Tag = vbNullString
  loc_F17DC1: Next var_92 'Byte
  loc_F17DDA: Me.FGrid.Rows = 1
  loc_F17DF7: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F17DFF: Set var_98 = Me.FGrid
  loc_F17E2E: Me.FGrid.FixedRows = 1
  loc_F17E36: Exit Sub
End Sub

Public Sub Proc_269_59_13AB198
  'Data Table: 48AB6C
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Variant
  Dim var_104 As Variant
  Dim unk_48AB6F As Connection15
  Dim var_88 As Recordset15
  Dim var_12C As Fields15
  Dim var_150 As Variant
  Dim var_118 As Variant
  Dim var_130 As TextBox
  Dim var_8A As Integer
  loc_13AA898: On Error Goto loc_13AB192
  loc_13AA8B2: If (Me.RecordCount > 0) Then
  loc_13AA8B5:   Call Proc_269_58_F17E38()
  loc_13AA8CE:   var_94 = "Select MF.*,M.Name As MemCatName,FM.Name As FacilityName From ((memCatFacility MF Left Join MemCatMast M On MF.MemCatCode=M.Code) Left Join memFacilityMast FM On MF.FcCode=FM.Code) Where MF.LogSite_Code='" & MemVar_1F92078
  loc_13AA8E3:   var_D4 = CVar(var_94 & "' and MF.Site_Code='" & MemVar_1F92070 & "' and MF.MemCatCode+Space(6-len(MF.MemCatCode))+'**'+Convert(Varchar(11),MF.AppDate,103)='") 'String
  loc_13AA92A:   unk_48AB6F.Execute CStr(var_D4 & Me.Fields.Item("SearchCode").Value & "' Order By MF.AppDate"), var_128, -1
  loc_13AA935:   Set var_88 = var_12C
  loc_13AA96D:   If (var_88.RecordCount > 0) Then
  loc_13AA9AA:     var_12C = var_88.Fields
  loc_13AAA13:     var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_12C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_13AAA58:     Me.LblUser.Caption = CStr(var_12C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_13AAAD2:     var_130 = var_88.Fields.Item("U_AE")
  loc_13AAB33:     var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_130)) = "E"), "Last Update : ", "entdt : "))
  loc_13AAB78:     Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_13AABE6:     Set var_12C = Me.Txt
  loc_13AABEC:     Call 0.Method_Proc_269_59_13AB1980 (CInt(0), var_130)
  loc_13AABF4:     var_130.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCatcode")))
  loc_13AAC3E:     Set var_12C = Me.Txt
  loc_13AAC44:     Call 0.Method_Proc_269_59_13AB1980 (CInt(0), var_130)
  loc_13AAC4C:     var_130.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCatName")))
  loc_13AACB2:     Set var_12C = Me.Txt
  loc_13AACB8:     Call 0.Method_Proc_269_59_13AB1980 (CInt(1), var_130, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/MMM/yyyy")))
  loc_13AACC0:     var_130.Text = 1
  loc_13AACDC:     var_8A = 1
  loc_13AACF2:     Me.FGrid.Rows = 1
  loc_13AACFA:     ' Referenced from: 13AB109
  loc_13AAD09:     If Not(var_88.EOF) Then
  loc_13AAD0C:       var_B0 = vbNullString
  loc_13AAD16:       Set var_A0 = Me.FGrid
  loc_13AAD2B:       Set var_1E8 = Me.FGrid
  loc_13AAD32:       var_B0 = CVar(CLng(var_8A)) 'Long
  loc_13AAD48:       LateIdCallSt
  loc_13AAD89:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("fcCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1E8, "***", CVar(CLng(1)))) 'String
  loc_13AAD90:       LateIdCallSt
  loc_13AADDB:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FacilityName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1E8, var_D4)) 'String
  loc_13AADE2:       LateIdCallSt
  loc_13AAE2D:       var_D4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChrgType")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1E8, var_D4)) 'String
  loc_13AAE34:       LateIdCallSt
  loc_13AAE66:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_13AAE6E:       var_150 = CVar(CLng(5)) 'Long
  loc_13AAE9B:       var_104 = CVar(CStr(Format(CVar(var_88.Fields.Item("FixedRate")), "0.00"))) 'String
  loc_13AAEA2:       LateIdCallSt
  loc_13AAED8:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_13AAEE0:       var_150 = CVar(CLng(6)) 'Long
  loc_13AAF0D:       var_104 = CVar(CStr(Format(CVar(var_88.Fields.Item("PMember")), "0.00"))) 'String
  loc_13AAF14:       LateIdCallSt
  loc_13AAF4A:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_13AAF52:       var_150 = CVar(CLng(7)) 'Long
  loc_13AAF7F:       var_104 = CVar(CStr(Format(CVar(var_88.Fields.Item("Spouse")), "0.00"))) 'String
  loc_13AAF86:       LateIdCallSt
  loc_13AAFBC:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_13AAFC4:       var_150 = CVar(CLng(8)) 'Long
  loc_13AAFF1:       var_104 = CVar(CStr(Format(CVar(var_88.Fields.Item("Child")), "0.00"))) 'String
  loc_13AAFF8:       LateIdCallSt
  loc_13AB02E:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_13AB036:       var_150 = CVar(CLng(9)) 'Long
  loc_13AB063:       var_104 = CVar(CStr(Format(CVar(var_88.Fields.Item("ExtraAdult")), "0.00"))) 'String
  loc_13AB06A:       LateIdCallSt
  loc_13AB0A0:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_13AB0A8:       var_150 = CVar(CLng(&HA)) 'Long
  loc_13AB0D5:       var_104 = CVar(CStr(Format(CVar(var_88.Fields.Item("ExtraChild")), "0.00"))) 'String
  loc_13AB0DC:       LateIdCallSt
  loc_13AB0F4:       Set var_1E8 = Nothing 
  loc_13AB0FE:       var_8A = (var_8A + 1)
  loc_13AB104:       var_88.MoveNext
  loc_13AB109:       GoTo loc_13AACFA
  loc_13AB10C:     End If
  loc_13AB10C:   End If
  loc_13AB10C:   var_B0 = 0
  loc_13AB116:   Set var_A0 = Me.FGrid
  loc_13AB143:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13AB146:     var_B0 = "1"
  loc_13AB150:     Set var_A0 = Me.FGrid
  loc_13AB161:   End If
  loc_13AB161:   var_B0 = 1
  loc_13AB174:   Me.FGrid.FixedRows = var_B0
  loc_13AB17F: Else
  loc_13AB17F:   Call Proc_269_58_F17E38(FGrid.DispID_10000, var_B0, FGrid.DispID_2E, var_B0, var_8A, var_1E8, var_104)
  loc_13AB184: End If
  loc_13AB184: Call Proc_269_61_E5378C(1, 1, var_150)
  loc_13AB18E: Set var_88 = Nothing
  loc_13AB191: Exit Sub
  loc_13AB192: ' Referenced from: 13AA898
  loc_13AB192: Proc_6_60_E62BC4(var_118, var_1E8)
  loc_13AB197: Exit Sub
End Sub

Public Sub Proc_269_60_E7C0F4(arg_C) 'E7C0F4
  'Data Table: 48AB6C
  Dim var_98 As TextBox
  loc_E7C0A2: Set var_8C = Me.Txt
  loc_E7C0A8: Call 0.Method_Proc_269_60_E7C0F4C (var_8E, var_86)
  loc_E7C0B8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7C0CE:   Set var_8C = Me.Txt
  loc_E7C0D4:   Call 0.Method_Proc_269_60_E7C0F40 (CInt(var_86), var_98)
  loc_E7C0DC:   var_98.Enabled = arg_C
  loc_E7C0EB: Next var_92 'Byte
  loc_E7C0F1: Exit Sub
End Sub

Public Sub Proc_269_61_E5378C
  'Data Table: 48AB6C
  loc_E53770: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_E53782:   Me.DGCategory.Visible = False
  loc_E5378A: End If
  loc_E5378A: Exit Sub
End Sub
