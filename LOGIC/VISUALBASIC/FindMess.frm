VERSION 5.00
Begin VB.Form FindMess
  BackColor = &H80C0FF&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 10995
  ClientHeight = 5715
  StartUpPosition = 1 'CenterOwner
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
    Height = 5685
    TabIndex = 0
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
  End
End

Attribute VB_Name = "FindMess"


Private Sub SA_Click() 'F15384
  'Data Table: 4257CC
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F152B9: For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_F152F8:   var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & ","
  loc_F1530C: Next var_A4 'Integer
  loc_F1531B: var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_F15355: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_F15366: Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_F1536F: Set var_90 = Me.GridSel
  loc_F15380: Exit Sub
  loc_F15381: CExtInstUnk
End Sub

Private Sub GridSel_UnknownEvent_0 'E1D2E0
  'Data Table: 4257CC
  loc_E1D2D7: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_E1D2DF: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_9 '10CAF78
  'Data Table: 4257CC
  Dim var_AC As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim Me As Recordset15
  Dim var_114 As Variant
  Dim unk_4257E1 As Connection15
  loc_10CACBF: If (CLng(Me.GridSel.Col) = (CLng(Me.GridSel.Cols) - 1)) Then
  loc_10CACD5:   var_BC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_10CACE4:   var_AC = Me.GridSel.Col
  loc_10CACED:   var_DC = CVar(CLng(var_AC)) 'Long
  loc_10CACFC:   var_100 = Me.GridSel.TextMatrix)
  loc_10CAD24:   If (CStr(var_100) = vbNullString) Then
  loc_10CAD56:     If (MsgBox("Are you sure to mark this as Delivered...", &H24, var_AC, var_100, var_114) = 6) Then
  loc_10CAD7B:       Me.GridSel.Col = CVar(CLng(Me.GridSel.Col))
  loc_10CAD9A:       Me.GridSel.CellFontName = "wingdings"
  loc_10CADB4:       Me.GridSel.CellFontSize = CVar(CDbl(&H12))
  loc_10CADCF:       Me.GridSel.CellForeColor = &HFF
  loc_10CADEA:       var_BC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_10CADF9:       var_AC = Me.GridSel.Col
  loc_10CAE02:       var_DC = CVar(CLng(var_AC)) 'Long
  loc_10CAE11:       Set var_F0 = Me.GridSel
  loc_10CAE17:       LateIdCallSt
  loc_10CAE6A:       Proc_6_17_EAA2B0(var_AC, CVar(Me.Fields.Item("SearchCode")), "Update GuestMessage set Solved='Y' where Docid=", var_144, -1, var_F0)
  loc_10CAE76:       var_DC = vbNullString
  loc_10CAE89:       unk_4257E1.Execute CStr(var_F0 & var_AC & var_DC), "ü", var_DC
  loc_10CAEA5:     End If
  loc_10CAEA8:   Else
  loc_10CAEBB:     var_BC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_10CAECA:     var_AC = Me.GridSel.Col
  loc_10CAED3:     var_DC = CVar(CLng(var_AC)) 'Long
  loc_10CAEE8:     LateIdCallSt
  loc_10CAF15:     var_BC = "SearchCode"
  loc_10CAF3B:     Proc_6_17_EAA2B0(var_AC, CVar(Me.Fields.Item(var_BC)), "Update GuestMessage set Solved='N' where Docid=", var_144, -1, Me.GridSel, Me.GridSel)
  loc_10CAF47:     var_DC = vbNullString
  loc_10CAF5A:     unk_4257E1.Execute CStr(vbNullString & var_AC & var_DC), var_DC, var_BC
  loc_10CAF76:   End If
  loc_10CAF76: End If
  loc_10CAF76: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_C(Index As Integer) 'EEC068
  'Data Table: 4257CC
  Dim Me As Recordset15
  loc_EEC00A: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EEC012: var_C8 = "15595518"
  loc_EEC01B: var_C4 = "16777152"
  loc_EEC043: Proc_183_11_113C750(Me.TxtSearch, Me.GridSel, global_52, Index)
  loc_EEC065: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_E(Index As Integer) 'E3A7B8
  'Data Table: 4257CC
  loc_E3A792: If (Index = 2) Then
  loc_E3A7AD:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E3A7B5: End If
  loc_E3A7B5: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'E1D330
  'Data Table: 4257CC
  loc_E1D327: Me.GridSel.CellBackColor = CVar(CLng("15595518"))
  loc_E1D32F: Exit Sub
End Sub

Private Sub FSR_Click() 'FB8408
  'Data Table: 4257CC
  Dim Me As Recordset15
  Dim var_100 As MSHFlexGrid
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_1A4 As Variant
  loc_FB8347: var_14C = (IIf((Len(CStr(Me.Filter)) > 1), CVar(CStr(Me.Filter) & " and "), vbNullString) + CVar(Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name))
  loc_FB8350: var_16C = var_14C & " =  '" 
  loc_FB8367: var_1A4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FB83B0: Me.Filter = CVar(CLng(Me.GridSel.Col)) & CVar(CStr(Me.GridSel.TextMatrix))) & "'"
  loc_FB83F6: Set var_100 = Me.GridSel
  loc_FB8407: Exit Sub
End Sub

Private Sub FNSR_Click() 'FB74A8
  'Data Table: 4257CC
  Dim Me As Recordset15
  Dim var_100 As MSHFlexGrid
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_1A4 As Variant
  loc_FB73E7: var_14C = (IIf((Len(CStr(Me.Filter)) > 1), CVar(CStr(Me.Filter) & " and "), vbNullString) + CVar(Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name))
  loc_FB73F0: var_16C = var_14C & " <>  '" 
  loc_FB7407: var_1A4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FB7450: Me.Filter = CVar(CLng(Me.GridSel.Col)) & CVar(CStr(Me.GridSel.TextMatrix))) & "'"
  loc_FB7496: Set var_100 = Me.GridSel
  loc_FB74A7: Exit Sub
End Sub

Private Sub RF_Click() 'E3A2D8
  'Data Table: 4257CC
  Dim Me As Recordset15
  loc_E3A2BB: Me.Filter = 0
  loc_E3A2C4: Set var_98 = Me.GridSel
  loc_E3A2D5: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'EB0B88
  'Data Table: 4257CC
  Dim var_88 As TextBox
  loc_EB0AF7: If (Proc_183_12_E7A3E4(KeyCode) = &HFF) Then
  loc_EB0AFE:   Set var_88 = Me.GridSel
  loc_EB0B1B:   Me.TxtSearch.Visible = False
  loc_EB0B23: End If
  loc_EB0B2D: If (CLng(KeyCode) = &H2E) Then
  loc_EB0B3D:   Me.TxtSearch.Text = vbNullString
  loc_EB0B45: End If
  loc_EB0B5A: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EB0B61:   Set var_88 = Me.GridSel
  loc_EB0B7E:   Me.TxtSearch.Visible = False
  loc_EB0B86: End If
  loc_EB0B86: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'EF0E94
  'Data Table: 4257CC
  Dim Me As Recordset15
  Dim KeyAscii As Integer
  loc_EF0E32: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EF0E3A: var_C8 = "15595518"
  loc_EF0E43: var_C4 = "16777152"
  loc_EF0E6B: Proc_183_11_113C750(Me.TxtSearch, Me.GridSel, global_52, KeyAscii)
  loc_EF0E8F: KeyAscii = 0
  loc_EF0E92: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E55730
  'Data Table: 4257CC
  Dim var_88 As TextBox
  loc_E556FD: Me.TxtSearch.Text = vbNullString
  loc_E55709: Set var_88 = Me.GridSel
  loc_E55726: Me.TxtSearch.Visible = False
  loc_E5572E: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E55560
  'Data Table: 4257CC
  Dim var_88 As TextBox
  loc_E5552D: Me.TxtSearch.Text = vbNullString
  loc_E55539: Set var_88 = Me.GridSel
  loc_E55556: Me.TxtSearch.Visible = False
  loc_E5555E: Exit Sub
End Sub

Private Sub Form_Load() '11AAE7C
  'Data Table: 4257CC
  Dim var_9C As Variant
  Dim unk_4257E1 As Connection15
  Dim unk_4257E4 As Connection15
  Dim MemVar_1F923A8 As Integer
  Dim var_D4 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_AC As Variant
  Dim var_8C As Double
  loc_11AAA68: On Error Goto loc_11AAE1C
  loc_11AAA6B: var_9C = vbNullString
  loc_11AAA70: ImpAdStVarCopy
  loc_11AAA7A: If (MemVar_1F923A8 = &HFF) Then
  loc_11AAA93:   unk_4257E1.Execute MemVar_1F920E4, var_AC, -1
  loc_11AAAA4:   Set global_52 = var_B0
  loc_11AAAB5: Else
  loc_11AAACB:   unk_4257E4.Execute MemVar_1F920E4, var_AC, -1
  loc_11AAADC:   Set global_52 = var_B0
  loc_11AAAEA: End If
  loc_11AAAEC: MemVar_1F923A8 = 0
  loc_11AAAF8: CVarUnk
  loc_11AAAFD: VerifyVarObj
  loc_11AAB03: Set var_B0 = Me.GridSel
  loc_11AAB09: LateIdStAd
  loc_11AAB17: var_9C = 0
  loc_11AAB20: var_D4 = 0
  loc_11AAB2D: Set var_B0 = Me.GridSel
  loc_11AAB33: LateIdCallSt
  loc_11AAB55: If (Me.RecordCount > 0) Then
  loc_11AAB65:   If (UBound(MemVar_1F92008, 1) = 0) Then
  loc_11AAB68:     ' Referenced from: 11AAE3E
  loc_11AAB92:     var_C4 = CVar((Me.Fields.Count - 1)) 'Long
  loc_11AAB99:     For var_118 = 1 To var_C4: var_F8 = var_118 'Variant
  loc_11AABD7:       If (Me.Fields.Item(var_F8).ActualSize = 0) Then
  loc_11AABDF:         var_9C = CVar(CLng(var_F8)) 'Long
  loc_11AAC15:         var_D4 = CVar((Me.Fields.Item(var_F8).DefinedSize * &H78)) 'Long
  loc_11AAC1E:         Set var_11C = Me.GridSel
  loc_11AAC24:         LateIdCallSt
  loc_11AAC38:       Else
  loc_11AAC3D:         var_9C = CVar(CLng(var_F8)) 'Long
  loc_11AAC65:         var_E8 = Me.Fields.Item(var_F8).ActualSize
  loc_11AAC73:         var_D4 = CVar((var_E8 * &H78)) 'Long
  loc_11AAC7C:         Set var_11C = Me.GridSel
  loc_11AAC82:         LateIdCallSt
  loc_11AAC93:       End If
  loc_11AAC98:       var_9C = CVar(CLng(var_F8)) 'Long
  loc_11AACBD:       var_8C = (var_8C + CDbl(CLng(Me.GridSel.ColWidth))))
  loc_11AACC9:     Next var_118 'Variant
  loc_11AACD2:   Else
  loc_11AACE5:     For var_13C = 1 To CVar(UBound(MemVar_1F92008, 1)):   var_F8 = var_13C 'Variant
  loc_11AACF0:       var_9C = CVar(CLng(var_F8)) 'Long
  loc_11AAD09:       Set var_B0 = Me.GridSel
  loc_11AAD0F:       LateIdCallSt
  loc_11AAD2B:       var_8C = (var_8C + CDbl(MemVar_1F92008(CLng(var_F8))))
  loc_11AAD31:     Next var_13C 'Variant
  loc_11AAD37:   End If
  loc_11AAD37: End If
  loc_11AAD3F: If (var_8C > CDbl(11085)) Then
  loc_11AAD55:   Me.GridSel.Width = CVar(CDbl(10935))
  loc_11AAD65:   Call 0.Method_Me4 (CDbl(11085))
  loc_11AAD6D: Else
  loc_11AAD75:   var_9C = CVar((var_8C + CDbl(350))) 'Single
  loc_11AAD84:   Me.GridSel.Width = CVar(CDbl(10935))
  loc_11AAD98:   Call 0.Method_Me4 ((var_8C + CDbl(500)))
  loc_11AAD9D: End If
  loc_11AADBC: If (CLng(Me.GridSel.Rows) = 1) Then
  loc_11AADBF:   var_9C = vbNullString
  loc_11AADC9:   Set var_B0 = Me.GridSel
  loc_11AADDA: End If
  loc_11AADDA: Call GridSel_UnknownEvent_0()
  loc_11AADDF: var_9C = 1
  loc_11AADEC: Set var_B0 = Me.GridSel
  loc_11AADF2: var_B0.Col = var_9C
  loc_11AAE03: Call 0.Method_arg_160 (var_B0, GridSel.DispID_10000)
  loc_11AAE0F: Call 0.Method_arg_164 (var_B0)
  loc_11AAE1B: Exit Sub
  loc_11AAE1C: ' Referenced from: 11AAA68
  loc_11AAE24: Set var_B0 = Err()
  loc_11AAE2A: Call 0.Method_arg_1C (var_E8)
  loc_11AAE3B: If (var_E8 = 9) Then
  loc_11AAE3E:   GoTo loc_11AAB68
  loc_11AAE41: End If
  loc_11AAE57: Set var_B0 = Err()
  loc_11AAE5D: Call 0.Method_arg_2C (var_144, 0, var_154)
  loc_11AAE68: MsgBox(CVar(var_144), var_164, var_174, var_9C, )
  loc_11AAE7B: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '10301F8
  'Data Table: 4257CC
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim Me As Recordset15
  loc_102FFE2: If ((CLng(KeyCode) = &H1B) And (Me.TxtSearch.Visible = 0)) Then
  loc_102FFF2:   Me.Global.Unload Me
  loc_102FFFA: End If
  loc_103000B: If ((CLng(KeyCode) = &H53) And (Shift = 2)) Then
  loc_103002F:   For var_A8 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A8 'Integer
  loc_103006E:     var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & ","
  loc_1030082:   Next var_A8 'Integer
  loc_1030091:   var_A4 = CVar((Len(var_88) - 1)) 'Long
  loc_10300AE:   var_88 = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_10300CB:   Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_10300DC:   Me.Sort = var_88
  loc_10300E5:   Set var_90 = Me.GridSel
  loc_10300F9: Else
  loc_103010A:   If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_103012E:     For var_E8 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF:   var_8A = var_E8 'Integer
  loc_103016D:       var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & " Desc ,"
  loc_1030181:     Next var_E8 'Integer
  loc_1030190:     var_A4 = CVar((Len(var_88) - 1)) 'Long
  loc_10301CA:     Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_10301DB:     Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_10301E4:     Set var_90 = Me.GridSel
  loc_10301F5:   End If
  loc_10301F5: End If
  loc_10301F5: Exit Sub
End Sub

Private Sub SD_Click() 'F1746C
  'Data Table: 4257CC
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F173A1: For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_F173E0:   var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & " Desc ,"
  loc_F173F4: Next var_A4 'Integer
  loc_F17403: var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_F1743D: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_F1744E: Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_F17457: Set var_90 = Me.GridSel
  loc_F17468: Exit Sub
End Sub

Public Sub Proc_134_16_E522B4
  'Data Table: 4257CC
  loc_E52296: If (var_94.Visible = True) Then
  loc_E522A1:   var_94.Visible = False
  loc_E522A8: Else
  loc_E522AF:   var_94.Visible = True
  loc_E522B3: End If
  loc_E522B3: Exit Sub
End Sub
