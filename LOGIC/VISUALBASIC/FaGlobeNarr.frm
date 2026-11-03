VERSION 5.00
Begin VB.Form FaGlobeNarr
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 10995
  ClientHeight = 5805
  Begin TextBox TxtSearch
    BackColor = &HFFFF80&
    Left = 345
    Top = 675
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 1
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
  Begin MSHFlexGrid GridSel
    Left = 30
    Top = 0
    Width = 10965
    Height = 5445
    TabIndex = 0
  End
  Begin Label Label1
    Caption = "{Press <Esc> For Cancel && Exit} {Press <Enter> For Select && Exit} {Press Ctrl+S to Sort the selected Row}"
    BackColor = &HFFFFC0&
    ForeColor = &H80000008&
    Left = 0
    Top = 5475
    Width = 10995
    Height = 330
    TabIndex = 2
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "FaGlobeNarr"


Private Sub Form_Load() 'FCCFE0
  'Data Table: 41F984
  Dim var_94 As Variant
  Dim unk_41F98C As Connection15
  Dim var_CC As Long
  Dim var_A8 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_100 As Variant
  Dim var_104 As String
  loc_FCCE30: On Error Goto loc_FCCFA3
  loc_FCCE33: var_94 = vbNullString
  loc_FCCE38: ImpAdStVarCopy
  loc_FCCE52: unk_41F98C.Execute "Select Name From NarrMast Order by name", var_A4, -1
  loc_FCCE63: Set global_52 = var_A8
  loc_FCCE7A: CVarUnk
  loc_FCCE7F: VerifyVarObj
  loc_FCCE85: Set var_A8 = Me.GridSel
  loc_FCCE8B: LateIdStAd
  loc_FCCE99: var_94 = 0
  loc_FCCEA2: var_CC = &H2710
  loc_FCCEAF: Set var_A8 = Me.GridSel
  loc_FCCEB5: LateIdCallSt
  loc_FCCEDF: If (CLng(Me.GridSel.Rows) = 1) Then
  loc_FCCEE2:   var_94 = vbNullString
  loc_FCCEEC:   Set var_A8 = Me.GridSel
  loc_FCCEFD: End If
  loc_FCCF14: If (Me.RecordCount > 0) Then
  loc_FCCF1D:   Me.MoveFirst
  loc_FCCF41:   var_100 = "NAME>='" & var_F0 & "'" 
  loc_FCCF45:   var_104 = CStr(var_100)
  loc_FCCF4F:   Me.Find var_104, 0, 1
  loc_FCCF72:   If (Me.EOF = 0) Then
  loc_FCCF86:     var_94 = CVar(Me.AbsolutePosition) 'Long
  loc_FCCF95:     Me.GridSel.Row = var_94
  loc_FCCF9D:   End If
  loc_FCCF9D: End If
  loc_FCCF9D: Call GridSel_UnknownEvent_0()
  loc_FCCFA2: Exit Sub
  loc_FCCFA3: ' Referenced from: FCCE30
  loc_FCCFBF: Call 0.Method_arg_2C (var_104, 0, var_100, var_118, var_128, var_CC, GridSel.DispID_10000, var_94)
  loc_FCCFCA: MsgBox(CVar(var_104), Err(), var_CC, var_94, Err())
  loc_FCCFDD: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B4D8
  'Data Table: 41F984
  loc_E5B4BE: If ((CLng(KeyCode) = &H1B) And (Me.TxtSearch.Visible = 0)) Then
  loc_E5B4CE:   Me.Global.Unload Me
  loc_E5B4D6: End If
  loc_E5B4D6: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E1D150
  'Data Table: 41F984
  loc_E1D147: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_E1D14F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A 'E0A150
  'Data Table: 41F984
  loc_E0A146: If (CLng(KeyCode) = &HD) Then
  loc_E0A149:   Call GridSel_UnknownEvent_B()
  loc_E0A14E: End If
  loc_E0A14E: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_B 'F1100C
  'Data Table: 41F984
  Dim var_94 As Variant
  Dim var_B4 As Long
  Dim var_C8 As Variant
  Dim var_DC As String
  Dim var_F0 As Variant
  Dim var_110 As Variant
  loc_F10F28: var_94 = 1
  loc_F10F31: var_B4 = 0
  loc_F10F4F: var_DC = CStr(Me.GridSel.TextMatrix))
  loc_F10F60: If (var_DC <> vbNullString) Then
  loc_F10F76:   var_94 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_F10F7B:   var_B4 = 0
  loc_F10F8E:   var_F0 = Me.GridSel.TextMatrix)
  loc_F10F99:   var_110 = CVar(CStr(var_F0)) 'String
  loc_F10F9C:   var_100 = var_110 'Variant
  loc_F10FB1: Else
  loc_F10FB1:   var_94 = vbNullString
  loc_F10FB6:   var_100 = var_94 'Variant
  loc_F10FBA: End If
  loc_F10FC7: Me.Global.Unload Me
  loc_F10FCF: Exit Sub
  loc_F10FD8: Set var_C8 = Err()
  loc_F10FDE: Call 0.Method_arg_2C (var_DC, var_B4, var_94)
  loc_F10FF7: MsgBox(CVar(var_DC), &H40, var_F0, var_110, var_120)
  loc_F1100A: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_C 'EEAEE0
  'Data Table: 41F984
  Dim var_98 As Variant
  Dim Me As Recordset15
  loc_EEAE50: var_98 = Me.GridSel.Col
  loc_EEAEBB: Proc_183_11_113C750(Me.TxtSearch, Me.GridSel, global_52, KeyCode)
  loc_EEAEDD: Exit Sub
  loc_EEAEDE: Get var_98, "15595518", "16777152" 'get Me.Fields.Item(CVar(CLng(var_98))).Name bytes
End Sub

Private Sub GridSel_UnknownEvent_14 'E1D100
  'Data Table: 41F984
  loc_E1D0F7: Me.GridSel.CellBackColor = CVar(CLng("15595518"))
  loc_E1D0FF: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'EB1068
  'Data Table: 41F984
  Dim var_88 As TextBox
  loc_EB0FD7: If (Proc_183_12_E7A3E4(KeyCode) = &HFF) Then
  loc_EB0FDE:   Set var_88 = Me.GridSel
  loc_EB0FFB:   Me.TxtSearch.Visible = False
  loc_EB1003: End If
  loc_EB100D: If (CLng(KeyCode) = &H2E) Then
  loc_EB101D:   Me.TxtSearch.Text = vbNullString
  loc_EB1025: End If
  loc_EB103A: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EB1041:   Set var_88 = Me.GridSel
  loc_EB105E:   Me.TxtSearch.Visible = False
  loc_EB1066: End If
  loc_EB1066: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'EEDF78
  'Data Table: 41F984
  Dim Me As Recordset15
  Dim KeyAscii As Integer
  loc_EEDF16: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EEDF1E: var_C8 = "15595518"
  loc_EEDF27: var_C4 = "16777152"
  loc_EEDF4F: Proc_183_11_113C750(Me.TxtSearch, Me.GridSel, global_52, KeyAscii)
  loc_EEDF73: KeyAscii = 0
  loc_EEDF76: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E57844
  'Data Table: 41F984
  Dim var_88 As TextBox
  loc_E57811: Me.TxtSearch.Text = vbNullString
  loc_E5781D: Set var_88 = Me.GridSel
  loc_E5783A: Me.TxtSearch.Visible = False
  loc_E57842: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E576E8
  'Data Table: 41F984
  Dim var_88 As TextBox
  loc_E576B5: Me.TxtSearch.Text = vbNullString
  loc_E576C1: Set var_88 = Me.GridSel
  loc_E576DE: Me.TxtSearch.Visible = False
  loc_E576E6: Exit Sub
End Sub
