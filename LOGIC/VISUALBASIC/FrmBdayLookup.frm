VERSION 5.00
Begin VB.Form FrmBdayLookup
  Caption = "Form1"
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
  ClientWidth = 11925
  ClientHeight = 7860
  Begin BtnEnh Command1
    Left = 60
    Top = 8760
    Width = 1065
    Height = 420
    TabIndex = 15
  End
  Begin BtnEnh CmdFill
    Left = 3945
    Top = 30
    Width = 1575
    Height = 765
    TabIndex = 13
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 7410
    Width = 11925
    Height = 450
    Visible = 0   'False
    TabIndex = 11
  End
  Begin Frame FrmList
    Left = 2865
    Top = 7740
    Width = 1890
    Height = 1725
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 30
      Top = 15
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 10
    End
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 1935
    Top = 60
    Width = 1695
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    Locked = -1  'True
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
    Left = 1935
    Top = 375
    Width = 1695
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
    Index = 2
    BackColor = &HFFFFFF&
    Left = 1935
    Top = 690
    Width = 1695
    Height = 285
    TabIndex = 2
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
  Begin TextBox TxtSearch
    BackColor = &HFFFF80&
    Left = 795
    Top = 2400
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 4
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
  Begin PictureBox Picture1
    BackColor = &HE0E0E0&
    Picture = "FrmBdayLookup.frx":0
    Left = 45
    Top = 5685
    Width = 3690
    Height = 3075
    Visible = 0   'False
    TabIndex = 5
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin MSHFlexGrid GridSel
    Left = 45
    Top = 1080
    Width = 15315
    Height = 7680
    TabIndex = 3
  End
  Begin BtnEnh CmdExit
    Left = 7395
    Top = 30
    Width = 1575
    Height = 765
    TabIndex = 12
  End
  Begin BtnEnh CmdPrint
    Left = 5685
    Top = 30
    Width = 1575
    Height = 765
    TabIndex = 14
  End
  Begin Label LblName
    Caption = "From Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 180
    Top = 390
    Width = 1080
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
  Begin Label LblName
    Caption = "B'Day/Anniversary"
    Index = 0
    ForeColor = &HFF0000&
    Left = 180
    Top = 75
    Width = 1815
    Height = 240
    TabIndex = 7
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
    Caption = "To Date"
    Index = 2
    ForeColor = &HFF0000&
    Left = 180
    Top = 690
    Width = 825
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
  Begin Menu popup
    Visible = 0   'False
    Caption = ""
    Begin Menu FSR
      Index = 0
      Caption = "Filter Same Records"
    End
    Begin Menu FNSR
      Index = 1
      Caption = "Filter Not Same Records"
    End
    Begin Menu RF
      Index = 2
      Caption = "Remove Filter"
    End
    Begin Menu SA
      Index = 3
      Caption = "Sort Ascending"
    End
    Begin Menu SD
      Index = 4
      Caption = "Sort Descending"
    End
    Begin Menu RR
      Index = 5
      Caption = "Remove Row"
    End
  End
End

Attribute VB_Name = "FrmBdayLookup"


Private Sub RR_Click() 'EB3CC4
  'Data Table: 485AC0
  Dim var_A8 As Variant
  Dim var_C8 As Long
  loc_EB3C57: If (CLng(Me.GridSel.Row) >= 1) Then
  loc_EB3C6D:   var_A8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_EB3C72:   var_C8 = 0
  loc_EB3C7F:   Set var_DC = Me.GridSel
  loc_EB3C85:   LateIdCallSt
  loc_EB3C9A: Else
  loc_EB3CB3:   MsgBox("No Entries To Remove", &H10, var_EC, var_FC, var_10C)
  loc_EB3CC3: End If
  loc_EB3CC3: Exit Sub
End Sub

Private Sub FSR_Click() 'FB7E44
  'Data Table: 485AC0
  Dim Me As Recordset15
  Dim var_100 As MSHFlexGrid
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_1A4 As Variant
  loc_FB7D83: var_14C = (IIf((Len(CStr(Me.Filter)) > 1), CVar(CStr(Me.Filter) & " and "), vbNullString) + CVar(Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name))
  loc_FB7D8C: var_16C = var_14C & " =  '" 
  loc_FB7DA3: var_1A4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FB7DEC: Me.Filter = CVar(CLng(Me.GridSel.Col)) & CVar(CStr(Me.GridSel.TextMatrix))) & "'"
  loc_FB7E32: Set var_100 = Me.GridSel
  loc_FB7E43: Exit Sub
End Sub

Private Sub SA_Click() 'F160EC
  'Data Table: 485AC0
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F16021: For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_F16060:   var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & ","
  loc_F16074: Next var_A4 'Integer
  loc_F16083: var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_F160BD: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_F160CE: Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_F160D7: Set var_90 = Me.GridSel
  loc_F160E8: Exit Sub
End Sub

Private Sub FNSR_Click() 'FB7C58
  'Data Table: 485AC0
  Dim Me As Recordset15
  Dim var_100 As MSHFlexGrid
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_1A4 As Variant
  loc_FB7B97: var_14C = (IIf((Len(CStr(Me.Filter)) > 1), CVar(CStr(Me.Filter) & " and "), vbNullString) + CVar(Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name))
  loc_FB7BA0: var_16C = var_14C & " <>  '" 
  loc_FB7BB7: var_1A4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FB7C00: Me.Filter = CVar(CLng(Me.GridSel.Col)) & CVar(CStr(Me.GridSel.TextMatrix))) & "'"
  loc_FB7C46: Set var_100 = Me.GridSel
  loc_FB7C57: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E15AA8
  'Data Table: 485AC0
  loc_E15A9D: Me.Global.Unload Me
  loc_E15AA5: Exit Sub
End Sub

Private Sub RF_Click() 'E2DD98
  'Data Table: 485AC0
  Dim Me As Recordset15
  loc_E2DD7B: Me.Filter = 0
  loc_E2DD84: Set var_98 = Me.GridSel
  loc_E2DD95: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'EB17B8
  'Data Table: 485AC0
  Dim var_88 As TextBox
  loc_EB1727: If (Proc_183_12_E7A3E4(KeyCode) = &HFF) Then
  loc_EB172E:   Set var_88 = Me.GridSel
  loc_EB174B:   Me.TxtSearch.Visible = False
  loc_EB1753: End If
  loc_EB175D: If (CLng(KeyCode) = &H2E) Then
  loc_EB176D:   Me.TxtSearch.Text = vbNullString
  loc_EB1775: End If
  loc_EB178A: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EB1791:   Set var_88 = Me.GridSel
  loc_EB17AE:   Me.TxtSearch.Visible = False
  loc_EB17B6: End If
  loc_EB17B6: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'EEF680
  'Data Table: 485AC0
  Dim Me As Recordset15
  Dim KeyAscii As Integer
  loc_EEF61E: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EEF626: var_C8 = "15595518"
  loc_EEF62F: var_C4 = "16777152"
  loc_EEF657: Proc_183_11_113C750(Me.TxtSearch, Me.GridSel, global_52, KeyAscii)
  loc_EEF67B: KeyAscii = 0
  loc_EEF67E: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E560B4
  'Data Table: 485AC0
  Dim var_88 As TextBox
  loc_E56081: Me.TxtSearch.Text = vbNullString
  loc_E5608D: Set var_88 = Me.GridSel
  loc_E560AA: Me.TxtSearch.Visible = False
  loc_E560B2: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E5588C
  'Data Table: 485AC0
  Dim var_88 As TextBox
  loc_E55859: Me.TxtSearch.Text = vbNullString
  loc_E55865: Set var_88 = Me.GridSel
  loc_E55882: Me.TxtSearch.Visible = False
  loc_E5588A: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E1E280
  'Data Table: 485AC0
  loc_E1E277: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_E1E27F: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_A(Index As Integer) 'E0B360
  'Data Table: 485AC0
  loc_E0B356: If (CLng(Index) = &HD) Then
  loc_E0B359:   Call GridSel_UnknownEvent_B()
  loc_E0B35E: End If
  loc_E0B35E: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_B 'DFCF14
  'Data Table: 485AC0
  loc_DFCF10: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_C(Index As Integer) 'EEC488
  'Data Table: 485AC0
  Dim Me As Recordset15
  loc_EEC42A: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EEC432: var_C8 = "15595518"
  loc_EEC43B: var_C4 = "16777152"
  loc_EEC463: Proc_183_11_113C750(Me.TxtSearch, Me.GridSel, global_52, Index)
  loc_EEC485: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_E(Index As Integer) 'E2DC78
  'Data Table: 485AC0
  loc_E2DC52: If (Index = 2) Then
  loc_E2DC6D:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E2DC75: End If
  loc_E2DC75: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'E1E870
  'Data Table: 485AC0
  loc_E1E867: Me.GridSel.CellBackColor = CVar(CLng("15595518"))
  loc_E1E86F: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F87D5C
  'Data Table: 485AC0
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F87C18: On Error Goto loc_F87CF6
  loc_F87C1F: Set var_A4 = Me.ListView
  loc_F87C69: Set var_BC = Me.Txt
  loc_F87C6F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F87C77: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F87CA3: Me.FrmList.Visible = False
  loc_F87CBD: var_A0 = CStr(Me.ListView.Tag)
  loc_F87CC5: var_C8 = Val(var_A0)
  loc_F87CD3: Set var_9C = Me.Txt
  loc_F87CD9: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F87CE1: var_A4.SetFocus
  loc_F87CF5: Exit Sub
  loc_F87CF6: ' Referenced from: F87C18
  loc_F87CFE: Set var_88 = Err()
  loc_F87D04: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F87D15: If (var_CC <> 0) Then
  loc_F87D20:   Set var_88 = Err()
  loc_F87D26:   Call 0.Method_arg_2C (var_A0)
  loc_F87D47:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F87D5A: End If
  loc_F87D5A: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10B4670
  'Data Table: 485AC0
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_E0 As TextBox
  loc_10B43B0: On Error Goto loc_10B462A
  loc_10B43BD: Set var_88 = Me.Txt
  loc_10B43C3: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10B43D1: Proc_6_74_E226B0(var_8C)
  loc_10B43DD: Call Proc_187_29_E4D9EC(var_8C)
  loc_10B43E5: var_92 = Index
  loc_10B43F0: If (var_92 = CInt(0)) Then
  loc_10B4400:   ReDim var_98(0 To 1)
  loc_10B4417:   var_98(0) = "BirthDay"
  loc_10B4426:   var_98(1) = "Anniversary"
  loc_10B443A:   var_D8 = Array(var_98) 'Variant
  loc_10B4442:   Set var_E0 = Me.ListView
  loc_10B445A:   Set var_8C = Me.Txt
  loc_10B4474:   Set global_56 = Proc_6_66_EFF8FC(var_E0, var_8C, Index)
  loc_10B4492:   Set var_88 = Me.Txt
  loc_10B4498:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_E8)
  loc_10B44A0:   var_D8 = var_8C.Text
  loc_10B44B2:   Set var_90 = Me.Txt
  loc_10B44B8:   Call 0.Method_Txt_GotFocus0 (Index, var_E0, var_E8)
  loc_10B44C0:   var_E0.Tag = 2
  loc_10B44D6: Else
  loc_10B44DE:   If (var_92 = CInt(1)) Then
  loc_10B44EE:     Set var_88 = Me.Txt
  loc_10B44F4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10B450F:     Set var_90 = Me.Txt
  loc_10B4515:     Call 0.Method_Txt_GotFocus0 (Index, var_E0)
  loc_10B451D:     var_E0.SelLength = Len(var_8C.Text)
  loc_10B453D:     Set var_88 = Me.Txt
  loc_10B4543:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10B455D:     Set var_90 = Me.Txt
  loc_10B4563:     Call 0.Method_Txt_GotFocus0 (Index, var_E0)
  loc_10B456B:     var_E0.Tag = var_8C.Text
  loc_10B4581:   Else
  loc_10B4589:     If (var_92 = CInt(2)) Then
  loc_10B4599:       Set var_88 = Me.Txt
  loc_10B459F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10B45BA:       Set var_90 = Me.Txt
  loc_10B45C0:       Call 0.Method_Txt_GotFocus0 (Index, var_E0)
  loc_10B45C8:       var_E0.SelLength = Len(var_8C.Text)
  loc_10B45E8:       Set var_88 = Me.Txt
  loc_10B45EE:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10B45F6:       var_E8 = var_8C.Text
  loc_10B4608:       Set var_90 = Me.Txt
  loc_10B460E:       Call 0.Method_Txt_GotFocus0 (Index, var_E0)
  loc_10B4616:       var_E0.Tag = var_E8
  loc_10B4629:     End If
  loc_10B4629:   End If
  loc_10B4629: End If
  loc_10B4629: Exit Sub
  loc_10B462A: ' Referenced from: 10B43B0
  loc_10B4632: Set var_88 = Err()
  loc_10B4638: Call 0.Method_arg_2C (var_E8)
  loc_10B4659: MsgBox(CVar(var_E8), &H40, "Information", var_108, var_128)
  loc_10B466C: Exit Sub
  loc_10B466D: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FF01E4
  'Data Table: 485AC0
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_B4 As TextBox
  Dim var_8C As Frame
  Dim Txt_KeyDown8FF As Integer
  loc_FF0022: If (CLng(Shift) = &H1B) Then
  loc_FF0025:   Call Proc_187_29_E4D9EC()
  loc_FF002A:   Exit Sub
  loc_FF002B: End If
  loc_FF0039: If (KeyCode = CInt(0)) Then
  loc_FF005E:   Set var_8C = Me.Txt
  loc_FF0064:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_FF006C:   var_94 = var_90.Left
  loc_FF007E:   Set var_98 = Me.Txt
  loc_FF0084:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_FF008C:   var_A0 = var_9C.Top
  loc_FF009E:   Set var_A4 = Me.Txt
  loc_FF00A4:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_FF00AC:   var_AC = var_A8.Height
  loc_FF00BE:   Set var_B0 = Me.Txt
  loc_FF00C4:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_FF00CC:   var_B8 = var_B4.Width
  loc_FF0114:   Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_FF0138: End If
  loc_FF0153: If (Me.FrmList.Visible = 0) Then
  loc_FF017D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(1)) Or (KeyCode = CInt(2)))) Then
  loc_FF0186:     Call Txt_Validate(KeyCode)
  loc_FF0191:     If (var_86 = &HFF) Then
  loc_FF0194:       Exit Sub
  loc_FF0195:     End If
  loc_FF019B:     Proc_6_75_E527CC(Shift, arg_14, var_86, CInt(var_94))
  loc_FF01A3:   Else
  loc_FF01B8:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FF01C1:       Proc_6_75_E527CC(Shift, arg_14, CInt((var_A0 + var_AC)))
  loc_FF01C9:     Else
  loc_FF01D3:       If (CLng(Shift) = &H26) Then
  loc_FF01DC:         Proc_6_76_E52838(Shift, arg_14, CInt(var_B8))
  loc_FF01E1:       End If
  loc_FF01E1:     End If
  loc_FF01E1:   End If
  loc_FF01E1: End If
  loc_FF01E1: Exit Sub
  loc_FF01E2: Txt_KeyDown8FF = 520
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E24D5C
  'Data Table: 485AC0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_E24D3B: Proc_6_58_E054C0(arg_10)
  loc_E24D46: Proc_6_133_E7EF78(var_94)
  loc_E24D4F: arg_10 = CInt(var_94)
  loc_E24D58: var_96 = KeyAscii
  loc_E24D5B: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4DEC4
  'Data Table: 485AC0
  loc_E4DEA2: Set var_88 = Me.Txt
  loc_E4DEA8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4DEB6: Proc_6_73_E22704(var_8C)
  loc_E4DEC2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F9F698
  'Data Table: 485AC0
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_98 As TextBox
  Dim var_9C As String
  Dim var_A0 As TextBox
  loc_F9F530: On Error Goto loc_F9F651
  loc_F9F536: var_86 = Cancel
  loc_F9F541: If (var_86 = CInt(0)) Then
  loc_F9F551:   Set var_8C = Me.Txt
  loc_F9F557:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9F571:   Set var_94 = Me.Txt
  loc_F9F577:   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_F9F57F:   var_98.Text = var_90.Text
  loc_F9F595: Else
  loc_F9F59D:   If (var_86 = CInt(1)) Then
  loc_F9F5AA:     Set var_8C = Me.Txt
  loc_F9F5B0:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9F5D0:     Set var_98 = Me.Txt
  loc_F9F5D6:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_F9F5DE:     var_A0.Text = Proc_6_33_1512840(var_90)
  loc_F9F5F4:   Else
  loc_F9F5FC:     If (var_86 = CInt(2)) Then
  loc_F9F609:       Set var_8C = Me.Txt
  loc_F9F60F:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9F622:       var_9C = Proc_6_33_1512840(var_90)
  loc_F9F62F:       Set var_98 = Me.Txt
  loc_F9F635:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_F9F63D:       var_A0.Text = var_9C
  loc_F9F650:     End If
  loc_F9F650:   End If
  loc_F9F650: End If
  loc_F9F650: Exit Sub
  loc_F9F651: ' Referenced from: F9F530
  loc_F9F659: Set var_8C = Err()
  loc_F9F65F: Call 0.Method_arg_2C (var_9C)
  loc_F9F680: MsgBox(CVar(var_9C), &H40, "Information", var_F0, var_110)
  loc_F9F693: Exit Sub
  loc_F9F694: Exit Sub
  loc_F9F695: If var_86 Then Exit Sub
  loc_F9F695: End If
End Sub

Private Sub CmdFill_UnknownEvent_9 'FA42D0
  'Data Table: 485AC0
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  loc_FA4167: Set var_88 = Me.Txt
  loc_FA416D: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_FA4196: If (Proc_6_27_EA565C(var_8C, "B'Day/Anniversary") = 0) Then
  loc_FA4199:   Exit Sub
  loc_FA419A: End If
  loc_FA41A5: Set var_88 = Me.Txt
  loc_FA41AB: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_8C)
  loc_FA41D4: If (Proc_6_27_EA565C(var_8C, "From Date") = 0) Then
  loc_FA41D7:   Exit Sub
  loc_FA41D8: End If
  loc_FA41E3: Set var_88 = Me.Txt
  loc_FA41E9: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(2), var_8C)
  loc_FA4212: If (Proc_6_27_EA565C(var_8C, "To Date") = 0) Then
  loc_FA4215:   Exit Sub
  loc_FA4216: End If
  loc_FA4224: Set var_90 = Me.Txt
  loc_FA422A: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(2), var_98)
  loc_FA4245: Set var_88 = Me.Txt
  loc_FA424B: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_8C)
  loc_FA4275: If (CDate(var_8C.Text) > CDate(var_98.Text)) Then
  loc_FA4291:   MsgBox("FromDate must be less than ToDate", &H10, var_DC, var_FC, var_11C)
  loc_FA42AC:   Set var_88 = Me.Txt
  loc_FA42B2:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_8C)
  loc_FA42BA:   var_8C.SetFocus
  loc_FA42C6:   Exit Sub
  loc_FA42C7: End If
  loc_FA42C7: Call Proc_187_28_111A46C(var_8C)
  loc_FA42CC: Exit Sub
End Sub

Private Sub CmdPrint_UnknownEvent_9 '140A4B0
  'Data Table: 485AC0
  Dim var_96 As Integer
  Dim var_9C As Variant
  Dim var_158 As Boolean
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_16C As Recordset15
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_128 As Variant
  Dim var_170 As String
  loc_1409A7D: Call Proc_187_30_10B5CB4(New)
  loc_1409A85: Set var_88 = var_9C
  loc_1409A8A: var_96 = 0
  loc_1409A99: Set var_9C = Me.GridSel
  loc_1409AB4: For var_B4 = 1 To (CLng(Me.GridSel.Rows) - 1): var_8C = var_B4 'Long
  loc_1409ADD:   var_158 = (CLng(Me.GridSel.RowHeight)) <> 0)
  loc_1409AEB:   var_E4 = CVar(CLng(1)) 'Long
  loc_1409B37:   If CBool(var_E4 And (Trim(CVar(CStr(Me.GridSel.TextMatrix)))) <> vbNullString)) Then
  loc_1409B3D:     Set var_16C = var_88 
  loc_1409B4C:     var_16C.AddNew var_C4, var_D4
  loc_1409B76:     var_16C.Fields.Item("mLine").Value = vbNullString
  loc_1409B8C:     var_D4 = CVar(CLng(1)) 'Long
  loc_1409BE6:     var_16C.Fields.Item("GuestName").Value = CVar(Proc_6_45_EAD428(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H32))
  loc_1409C0C:     var_D4 = CVar(CLng(2)) 'Long
  loc_1409C66:     var_16C.Fields.Item("GuestType").Value = CVar(Proc_6_45_EAD428(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &HA))
  loc_1409C8C:     var_D4 = CVar(CLng(3)) 'Long
  loc_1409CE6:     var_16C.Fields.Item("Address1").Value = CVar(Proc_6_45_EAD428(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H32))
  loc_1409D0C:     var_D4 = CVar(CLng(4)) 'Long
  loc_1409D66:     var_16C.Fields.Item("Address2").Value = CVar(Proc_6_45_EAD428(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H32))
  loc_1409D8C:     var_D4 = CVar(CLng(5)) 'Long
  loc_1409DF4:     var_16C.Fields.Item("BirthDay").Value = Format(Trim(CVar(CStr(Me.GridSel.TextMatrix)))), "dd/mmm/yyyy")
  loc_1409E19:     var_D4 = CVar(CLng(6)) 'Long
  loc_1409E81:     var_16C.Fields.Item("Anniversary").Value = Format(Trim(CVar(CStr(Me.GridSel.TextMatrix)))), "dd/mmm/yyyy")
  loc_1409F00:     var_16C.Fields.Item("MobileNo").Value = CVar(Proc_6_45_EAD428(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H18, CVar(CLng(7))))
  loc_1409F80:     var_16C.Fields.Item("PhoneNo").Value = CVar(Proc_6_45_EAD428(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H23, CVar(CLng(8))))
  loc_1409FA6:     var_D4 = CVar(CLng(9)) 'Long
  loc_140A000:     var_16C.Fields.Item("EmailId").Value = CVar(Proc_6_45_EAD428(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H32))
  loc_140A026:     var_D4 = CVar(CLng(&HA)) 'Long
  loc_140A080:     var_16C.Fields.Item("FaxNo").Value = CVar(Proc_6_45_EAD428(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H18))
  loc_140A0A6:     var_D4 = CVar(CLng(&HB)) 'Long
  loc_140A100:     var_16C.Fields.Item("City").Value = CVar(Proc_6_45_EAD428(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H23))
  loc_140A126:     var_D4 = CVar(CLng(&HC)) 'Long
  loc_140A180:     var_16C.Fields.Item("State").Value = CVar(Proc_6_45_EAD428(CStr(Trim(CVar(CStr(Me.GridSel.TextMatrix))))), &H1E))
  loc_140A1A6:     var_D4 = CVar(CLng(&HD)) 'Long
  loc_140A1C0:     var_108 = CVar(CStr(Me.GridSel.TextMatrix))) 'String
  loc_140A1C6:     var_118 = Trim(var_108)
  loc_140A1DD:     var_128 = CVar(Proc_6_45_EAD428(CStr(var_118), &H1E)) 'String
  loc_140A200:     var_16C.Fields.Item("Nation").Value = var_128
  loc_140A21C:     var_D4 = "*"
  loc_140A239:     var_F8 = var_16C.Fields.Item("Mark")
  loc_140A241:     var_F8.Value = var_D4
  loc_140A24F:     Set var_16C = Nothing 
  loc_140A255:     var_96 = &HFF
  loc_140A258:   End If
  loc_140A25B: Next var_B4 'Long
  loc_140A266: If (var_96 = 0) Then
  loc_140A277:   var_C4 = "No Data to print Lables"
  loc_140A282:   MsgBox(var_C4, &H40, var_108, var_118, var_128)
  loc_140A292:   Exit Sub
  loc_140A293: End If
  loc_140A299: Call 0.Method_arg_50 (var_170)
  loc_140A2A1: var_94 = var_170
  loc_140A2A7: var_90 = "GuestBDayAnniversaryLookup"
  loc_140A2CE: Set var_9C = var_88 
  loc_140A2D5: CreateFieldDefFile(var_9C, MemVar_1F920B4 & "\" & var_90 & ".ttx")
  loc_140A303: var_170 = "\" & var_90
  loc_140A317: Call 0.Method_arg_1C (MemVar_1F920B4 & var_170 & ".RPT", var_C4)
  loc_140A322: MemVar_1F921E4 = var_9C
  loc_140A34B: Call 0.Method_arg_64 (var_9C, CVar(var_9C), var_D4)
  loc_140A353: Call 0.Method_arg_2C (var_E4, var_9C)
  loc_140A361: Call 0.Method_arg_150 (&HFF)
  loc_140A37A: Call 0.Method_arg_90 (var_9C, var_188)
  loc_140A382: Call 0.Method_arg_24 (var_8C)
  loc_140A38D: For var_190 =  To var_188: 1 = var_190 'Long
  loc_140A3A5:   Call 0.Method_arg_90 (var_9C, var_8C)
  loc_140A3AD:   Call 0.Method_arg_20 (var_F8)
  loc_140A3B5:   Call 0.Method_arg_30 (var_170)
  loc_140A3FB:   If (Ucase(CVar(var_170)) = Ucase("Title")) Then
  loc_140A41E:     var_170 = Replace(var_94, "'", ",", 1, -1, 0)
  loc_140A43B:     Call 0.Method_arg_90 (var_9C, var_8C)
  loc_140A443:     Call 0.Method_arg_20 (var_F8)
  loc_140A44B:     Call 0.Method_arg_38 ("'" & var_170 & "'")
  loc_140A460:   End If
  loc_140A463: Next var_190 'Long
  loc_140A46B: Call 0.Method_arg_2B4 ()
  loc_140A476: Set var_F8 = Me
  loc_140A48C: Set var_9C = MemVar_1F921E4 
  loc_140A498: Proc_6_99_1483714(var_9C, 0, var_94)
  loc_140A4A3: MemVar_1F921E4 = var_9C
  loc_140A4AE: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_9 'E628B8
  'Data Table: 485AC0
  loc_E62887: If (Me.Picture1.Visible = &HFF) Then
  loc_E62896:   Me.Picture1.Visible = False
  loc_E628A1: Else
  loc_E628AD:   Me.Picture1.Visible = True
  loc_E628B5: End If
  loc_E628B5: Exit Sub
End Sub

Private Sub Form_Load() '11B9574
  'Data Table: 485AC0
  Dim var_A8 As Variant
  Dim var_94 As Variant
  Dim var_BC As String
  Dim var_C0 As String
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_D4 As String
  Dim unk_485AD2 As Connection15
  Dim var_FC As Variant
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_90 As Double
  loc_11B9160: On Error Goto loc_11B9513
  loc_11B9179: Proc_6_23_DFBA28(Me, 0)
  loc_11B9188: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_11B919A: Set var_94 = Me.GridSel
  loc_11B91A0: var_94.BackColorBkg = CVar(CLng(MemVar_1F921B0))
  loc_11B91AD: ImpAdStVarCopy
  loc_11B91B8: var_BC = "Select '',AA.Name As GuestName,AA.Type As GuestType,AA.Add1 As Address1,AA.Add2 As Address2, AA.Bday As BirthDay,AA.Aday as Anniversary," & "AA.MobileNo,AA.PhoneNo,AA.EmailId,AA.FaxNo,AA.CityName As City,AA.StateName As State,AA.CountryName As Nation from (Select Bday= case when dateadd(yy,datediff(yy,guestprof.Birthdate,getdate()),guestprof.Birthdate)< getdate() then "
  loc_11B91BF: var_C0 = var_BC & "dateadd(yy,datediff(yy,guestprof.Birthdate,getdate())+1,guestprof.Birthdate) Else "
  loc_11B91CD: var_C8 = var_C0 & "dateadd(yy,datediff(yy,guestprof.Birthdate,getdate()),guestprof.Birthdate) end, " & "Aday=case when dateadd(yy,datediff(yy,guestprof.Anniversary,getdate()),guestprof.Anniversary)< getdate() then "
  loc_11B91D4: var_CC = var_C8 & "dateadd(yy,datediff(yy,guestprof.Anniversary,getdate())+1,guestprof.Anniversary) Else "
  loc_11B91E2: var_D4 = var_CC & "dateadd(yy,datediff(yy,guestprof.Anniversary,getdate()),guestprof.Anniversary) end, " & "guestprof.* from GuestProf)as AA Where (AA.LOGSITE_CODE='"
  loc_11B9209: var_BC = "2200,800,2200,2200,1200,1200,1000,1000,2000,1000,1000,1000,1000"
  loc_11B920F: Proc_6_126_F1BCC0(var_BC, vbNullString)
  loc_11B922D: unk_485AD2.Execute var_D4 & MemVar_1F92078 & "' or AA.LOGSITE_CODE='HO')", var_E8, -1
  loc_11B923E: Set global_52 = var_94
  loc_11B9255: CVarUnk
  loc_11B925A: VerifyVarObj
  loc_11B9260: Set var_94 = Me.GridSel
  loc_11B9266: LateIdStAd
  loc_11B9274: var_A8 = 0
  loc_11B927D: var_FC = 0
  loc_11B928A: Set var_94 = Me.GridSel
  loc_11B9290: LateIdCallSt
  loc_11B92B2: If (Me.RecordCount > 0) Then
  loc_11B92C2:   If (UBound(MemVar_1F92008, 1) = 0) Then
  loc_11B92C5:     ' Referenced from: 11B9535
  loc_11B92EF:     var_B8 = CVar((Me.Fields.Count - 1)) 'Long
  loc_11B92F6:     For var_140 = 1 To var_B8: var_120 = var_140 'Variant
  loc_11B9334:       If (Me.Fields.Item(var_120).ActualSize = 0) Then
  loc_11B933C:         var_A8 = CVar(CLng(var_120)) 'Long
  loc_11B9372:         var_FC = CVar((Me.Fields.Item(var_120).DefinedSize * &H78)) 'Long
  loc_11B937B:         Set var_144 = Me.GridSel
  loc_11B9381:         LateIdCallSt
  loc_11B9395:       Else
  loc_11B939A:         var_A8 = CVar(CLng(var_120)) 'Long
  loc_11B93C2:         var_110 = Me.Fields.Item(var_120).ActualSize
  loc_11B93D0:         var_FC = CVar((var_110 * &H78)) 'Long
  loc_11B93D9:         Set var_144 = Me.GridSel
  loc_11B93DF:         LateIdCallSt
  loc_11B93F0:       End If
  loc_11B93F5:       var_A8 = CVar(CLng(var_120)) 'Long
  loc_11B941A:       var_90 = (var_90 + CDbl(CLng(Me.GridSel.ColWidth))))
  loc_11B9426:     Next var_140 'Variant
  loc_11B942F:   Else
  loc_11B9442:     For var_164 = 1 To CVar(UBound(MemVar_1F92008, 1)):   var_120 = var_164 'Variant
  loc_11B944D:       var_A8 = CVar(CLng(var_120)) 'Long
  loc_11B9466:       Set var_94 = Me.GridSel
  loc_11B946C:       LateIdCallSt
  loc_11B9488:       var_90 = (var_90 + CDbl(MemVar_1F92008(CLng(var_120))))
  loc_11B948E:     Next var_164 'Variant
  loc_11B9494:   End If
  loc_11B9494: End If
  loc_11B94B3: If (CLng(Me.GridSel.Rows) = 1) Then
  loc_11B94B6:   var_A8 = vbNullString
  loc_11B94C0:   Set var_94 = Me.GridSel
  loc_11B94D1: End If
  loc_11B94D1: Call GridSel_UnknownEvent_0()
  loc_11B94D6: var_A8 = 1
  loc_11B94E3: Set var_94 = Me.GridSel
  loc_11B94E9: var_94.Col = var_A8
  loc_11B94FA: Call 0.Method_arg_160 (var_94, GridSel.DispID_10000)
  loc_11B9506: Call 0.Method_arg_164 (var_94)
  loc_11B9512: Exit Sub
  loc_11B9513: ' Referenced from: 11B9160
  loc_11B951B: Set var_94 = Err()
  loc_11B9521: Call 0.Method_arg_1C (var_110)
  loc_11B9532: If (var_110 = 9) Then
  loc_11B9535:   GoTo loc_11B92C5
  loc_11B9538: End If
  loc_11B954E: Set var_94 = Err()
  loc_11B9554: Call 0.Method_arg_2C (var_BC, 0, var_178)
  loc_11B955F: MsgBox(CVar(var_BC), var_188, var_198, var_A8, )
  loc_11B9572: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '101B0FC
  'Data Table: 485AC0
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_101AEED: If ((CLng(KeyCode) = &H53) And (Shift = 2)) Then
  loc_101AF11:   For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_101AF50:     var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & ","
  loc_101AF64:   Next var_A4 'Integer
  loc_101AF73:   var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_101AF90:   var_88 = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_101AFAD:   Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_101AFBE:   Me.Sort = var_88
  loc_101AFC7:   Set var_90 = Me.GridSel
  loc_101AFDB: Else
  loc_101AFEC:   If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_101B010:     For var_E4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF:   var_8A = var_E4 'Integer
  loc_101B04F:       var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & " Desc ,"
  loc_101B063:     Next var_E4 'Integer
  loc_101B072:     var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_101B0AC:     Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_101B0BD:     Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_101B0C6:     Set var_90 = Me.GridSel
  loc_101B0DA:   Else
  loc_101B0EB:     If ((CLng(KeyCode) = &H52) And (Shift = 2)) Then
  loc_101B0F3:       Call RR_Click()
  loc_101B0F8:     End If
  loc_101B0F8:   End If
  loc_101B0F8: End If
  loc_101B0F8: Exit Sub
  loc_101B0F9: DOC
End Sub

Private Sub SD_Click() 'F15E7C
  'Data Table: 485AC0
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F15DB1: For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_F15DF0:   var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & " Desc ,"
  loc_F15E04: Next var_A4 'Integer
  loc_F15E13: var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_F15E4D: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_F15E5E: Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_F15E67: Set var_90 = Me.GridSel
  loc_F15E78: Exit Sub
End Sub

Public Sub Proc_187_28_111A46C
  'Data Table: 485AC0
  Dim var_8C As String
  Dim var_90 As String
  Dim var_98 As String
  Dim var_9C As String
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_1A0 As Variant
  Dim unk_485AD2 As Connection15
  Dim var_A4 As MSHFlexGrid
  loc_111A157: var_8C = "Select '',AA.Name As GuestName,AA.Type As GuestType,AA.Add1 As Address1,AA.Add2 As Address2, AA.Bday As BirthDay,AA.Aday as Anniversary," & "AA.MobileNo,AA.PhoneNo,AA.EmailId,AA.FaxNo,AA.CityName As City,AA.StateName As State,AA.CountryName As Nation from (Select Bday= case when dateadd(yy,datediff(yy,guestprof.Birthdate,getdate()),guestprof.Birthdate)< getdate() then "
  loc_111A15E: var_90 = var_8C & "dateadd(yy,datediff(yy,guestprof.Birthdate,getdate())+1,guestprof.Birthdate) Else "
  loc_111A16C: var_98 = var_90 & "dateadd(yy,datediff(yy,guestprof.Birthdate,getdate()),guestprof.Birthdate) end, " & "Aday=case when dateadd(yy,datediff(yy,guestprof.Anniversary,getdate()),guestprof.Anniversary)< getdate() then "
  loc_111A173: var_9C = var_98 & "dateadd(yy,datediff(yy,guestprof.Anniversary,getdate())+1,guestprof.Anniversary) Else "
  loc_111A181: var_88 = var_9C & "dateadd(yy,datediff(yy,guestprof.Anniversary,getdate()),guestprof.Anniversary) end, " & "guestprof.* from GuestProf)as AA"
  loc_111A19E: Set var_A4 = Me.Txt
  loc_111A1A4: Call 0.Method_Proc_187_28_111A46C0 (CInt(0))
  loc_111A1B3: var_C8 = Trim(CVar(var_A8))
  loc_111A1CD: If (var_C8 = "BirthDay") Then
  loc_111A1EB:   Call 0.Method_Proc_187_28_111A46C0 (CInt(1), var_A8)
  loc_111A1F3:   var_B8 = CVar(var_A8) 'Address
  loc_111A1FA:   Proc_6_7_F25D88(var_C8, var_B8)
  loc_111A21A:   Set var_10C = Me.Txt
  loc_111A220:   Call 0.Method_Proc_187_28_111A46C0 (CInt(2), var_110)
  loc_111A22F:   Proc_6_7_F25D88(var_130, CVar(var_110))
  loc_111A253:   var_1A0 = CVar(var_88 & " WHERE AA.Bday Between ") & var_C8 & " And " & var_130 & " And (AA.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' or AA.LOGSITE_CODE='HO') Order By AA.Bday" 
  loc_111A258:   var_88 = CStr(var_1A0)
  loc_111A291:   unk_485AD2.Execute var_88, var_B8, -1
  loc_111A2A2:   Set global_52 = Me.Txt
  loc_111A2B3: Else
  loc_111A2BE:   Set var_A4 = Me.Txt
  loc_111A2C4:   Call 0.Method_Proc_187_28_111A46C0 (CInt(0), var_A8)
  loc_111A2D3:   var_C8 = Trim(CVar(var_A8))
  loc_111A2ED:   If (var_C8 = "Anniversary") Then
  loc_111A305:     Set var_A4 = Me.Txt
  loc_111A30B:     Call 0.Method_Proc_187_28_111A46C0 (CInt(1), var_A8, CVar(var_88 & " WHERE AA.Aday Between "))
  loc_111A313:     var_B8 = CVar(var_A8) 'Address
  loc_111A31A:     Proc_6_7_F25D88(var_C8, var_B8)
  loc_111A33A:     Set var_10C = Me.Txt
  loc_111A340:     Call 0.Method_Proc_187_28_111A46C0 (CInt(2), var_110)
  loc_111A34F:     Proc_6_7_F25D88(var_130, CVar(var_110))
  loc_111A373:     var_1A0 = var_A4 & var_C8 & " And " & var_130 & " And (AA.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' or AA.LOGSITE_CODE='HO') Order By AA.Aday" 
  loc_111A3B1:     unk_485AD2.Execute CStr(var_1A0), var_B8, -1
  loc_111A3C2:     Set global_52 = var_A4
  loc_111A3D0:   End If
  loc_111A3D0: End If
  loc_111A3D9: CVarUnk
  loc_111A3DE: VerifyVarObj
  loc_111A3E4: Set var_A4 = Me.GridSel
  loc_111A3EA: LateIdStAd
  loc_111A3FC: Set var_A4 = Me.GridSel
  loc_111A42C: If (CLng(Me.GridSel.Rows) = 1) Then
  loc_111A42F:   var_D8 = vbNullString
  loc_111A439:   Set var_A4 = Me.GridSel
  loc_111A44A: End If
  loc_111A44A: Call GridSel_UnknownEvent_0()
  loc_111A462: Me.GridSel.Col = 1
  loc_111A46A: Exit Sub
End Sub

Public Sub Proc_187_29_E4D9EC
  'Data Table: 485AC0
  loc_E4D9D3: If (Me.FrmList.Visible = &HFF) Then
  loc_E4D9E2:   Me.FrmList.Visible = False
  loc_E4D9EA: End If
  loc_E4D9EA: Exit Sub
End Sub

Public Sub Proc_187_30_10B5CB4(arg_C) '10B5CB4
  'Data Table: 485AC0
  Dim var_8C As Recordset15
  loc_10B59CD: Set var_8C = arg_C 
  loc_10B59F5: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_10B5A21: var_8C.Fields.Append "GuestName", &HC8, &H32
  loc_10B5A4D: var_8C.Fields.Append "GuestType", &HC8, &HA
  loc_10B5A79: var_8C.Fields.Append "Address1", &HC8, &H32
  loc_10B5AA5: var_8C.Fields.Append "Address2", &HC8, &H32
  loc_10B5AD1: var_8C.Fields.Append "BirthDay", &HC8, &HC
  loc_10B5AFD: var_8C.Fields.Append "Anniversary", &HC8, &HC
  loc_10B5B29: var_8C.Fields.Append "MobileNo", &HC8, &H18
  loc_10B5B55: var_8C.Fields.Append "PhoneNo", &HC8, &H23
  loc_10B5B81: var_8C.Fields.Append "EmailId", &HC8, &H32
  loc_10B5BAD: var_8C.Fields.Append "FaxNo", &HC8, &H18
  loc_10B5BD9: var_8C.Fields.Append "City", &HC8, &H23
  loc_10B5C05: var_8C.Fields.Append "State", &HC8, &H1E
  loc_10B5C31: var_8C.Fields.Append "Nation", &HC8, &H1E
  loc_10B5C5D: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10B5C6D: var_8C.CursorType = 3
  loc_10B5C7A: var_8C.LockType = 3
  loc_10B5C99: var_8C.Open var_A0, var_B0, -1
  loc_10B5CA0: Set var_8C = Nothing 
  loc_10B5CA7: Set var_88 = arg_C 
  loc_10B5CAB: Proc_187_30_10B5CB4 = -1
End Sub
