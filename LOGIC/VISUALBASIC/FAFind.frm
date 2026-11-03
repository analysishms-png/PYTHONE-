VERSION 5.00
Begin VB.Form FAFind
  BackColor = &HFFFFFF&
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
  ClientWidth = 11640
  ClientHeight = 5925
  LockControls = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 1 'CenterOwner
  Begin PictureBox Picture1
    BackColor = &HE0E0E0&
    Picture = "FAFind.frx":0
    Left = 0
    Top = 2520
    Width = 3690
    Height = 3075
    Visible = 0   'False
    TabIndex = 3
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin CommandButton Command1
    Caption = "Help.?"
    Left = 15
    Top = 5610
    Width = 885
    Height = 300
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
  End
  Begin TextBox TxtSearch
    BackColor = &HFFC0C0&
    Left = 345
    Top = 675
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    HideSelection = 0   'False
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid GridSel
    Left = 0
    Top = 0
    Width = 11625
    Height = 5575
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

Attribute VB_Name = "FAFind"


Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'EAFF58
  'Data Table: 42B138
  Dim var_88 As TextBox
  loc_EAFEC7: If (Proc_183_12_E7A3E4(KeyCode) = &HFF) Then
  loc_EAFECE:   Set var_88 = Me.GridSel
  loc_EAFEEB:   Me.TxtSearch.Visible = False
  loc_EAFEF3: End If
  loc_EAFEFD: If (CLng(KeyCode) = &H2E) Then
  loc_EAFF0D:   Me.TxtSearch.Text = vbNullString
  loc_EAFF15: End If
  loc_EAFF2A: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EAFF31:   Set var_88 = Me.GridSel
  loc_EAFF4E:   Me.TxtSearch.Visible = False
  loc_EAFF56: End If
  loc_EAFF56: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'EF0204
  'Data Table: 42B138
  Dim Me As Recordset15
  Dim KeyAscii As Integer
  loc_EF01A2: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EF01AA: var_C8 = "16777215"
  loc_EF01B3: var_C4 = "16761024"
  loc_EF01DB: Proc_183_11_113C750(Me.TxtSearch, Me.GridSel, global_52, KeyAscii)
  loc_EF01FF: KeyAscii = 0
  loc_EF0202: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E56868
  'Data Table: 42B138
  Dim var_88 As TextBox
  loc_E56835: Me.TxtSearch.Text = vbNullString
  loc_E56841: Set var_88 = Me.GridSel
  loc_E5685E: Me.TxtSearch.Visible = False
  loc_E56866: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E56454
  'Data Table: 42B138
  Dim var_88 As TextBox
  loc_E56421: Me.TxtSearch.Text = vbNullString
  loc_E5642D: Set var_88 = Me.GridSel
  loc_E5644A: Me.TxtSearch.Visible = False
  loc_E56452: Exit Sub
End Sub

Private Sub SD_Click() 'F1F00C
  'Data Table: 42B138
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F1EF39: For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_F1EF7F:   var_88 = var_88 & "[" & Me.Fields.Item(CVar(var_8A)).Name & "] Desc ,"
  loc_F1EF95: Next var_A4 'Integer
  loc_F1EFA4: var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_F1EFDE: Me.GridSel.CellBackColor = CVar(CLng("16761024"))
  loc_F1EFEF: Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_F1EFF8: Set var_90 = Me.GridSel
  loc_F1F009: Exit Sub
End Sub

Private Sub SA_Click() 'F1E9B8
  'Data Table: 42B138
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F1E8E5: For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_F1E92B:   var_88 = var_88 & "[" & Me.Fields.Item(CVar(var_8A)).Name & "],"
  loc_F1E941: Next var_A4 'Integer
  loc_F1E950: var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_F1E98A: Me.GridSel.CellBackColor = CVar(CLng("16761024"))
  loc_F1E99B: Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_F1E9A4: Set var_90 = Me.GridSel
  loc_F1E9B5: Exit Sub
End Sub

Private Sub FSR_Click() 'FC93DC
  'Data Table: 42B138
  Dim Me As Recordset15
  Dim var_120 As MSHFlexGrid
  Dim var_11C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1C4 As Variant
  loc_FC92E0: var_11C = (IIf((Len(CStr(Me.Filter)) > 1), CVar(CStr(Me.Filter) & " and "), vbNullString) + "[")
  loc_FC9318: var_16C = (var_11C + CVar(Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name))
  loc_FC9321: var_18C = var_16C & "] =  '" 
  loc_FC9338: var_1C4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FC9381: Me.Filter = CVar(CLng(Me.GridSel.Col)) & CVar(CStr(Me.GridSel.TextMatrix))) & "'"
  loc_FC93C9: Set var_120 = Me.GridSel
  loc_FC93DA: Exit Sub
End Sub

Private Sub FNSR_Click() 'FCA5B8
  'Data Table: 42B138
  Dim Me As Recordset15
  Dim var_120 As MSHFlexGrid
  Dim var_11C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1C4 As Variant
  loc_FCA4BC: var_11C = (IIf((Len(CStr(Me.Filter)) > 1), CVar(CStr(Me.Filter) & " and "), vbNullString) + "[")
  loc_FCA4F4: var_16C = (var_11C + CVar(Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name))
  loc_FCA4FD: var_18C = var_16C & "] <>  '" 
  loc_FCA514: var_1C4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FCA55D: Me.Filter = CVar(CLng(Me.GridSel.Col)) & CVar(CStr(Me.GridSel.TextMatrix))) & "'"
  loc_FCA5A5: Set var_120 = Me.GridSel
  loc_FCA5B6: Exit Sub
End Sub

Private Sub Command1_Click() 'E62638
  'Data Table: 42B138
  loc_E62607: If (Me.Picture1.Visible = &HFF) Then
  loc_E62616:   Me.Picture1.Visible = False
  loc_E62621: Else
  loc_E6262D:   Me.Picture1.Visible = True
  loc_E62635: End If
  loc_E62635: Exit Sub
  loc_E62636: Exit Sub
End Sub

Private Sub RF_Click() 'E3B2F8
  'Data Table: 42B138
  Dim Me As Recordset15
  loc_E3B2DB: Me.Filter = 0
  loc_E3B2E4: Set var_98 = Me.GridSel
  loc_E3B2F5: Exit Sub
  loc_E3B2F6: CExtInstUnk
End Sub

Private Sub GridSel_UnknownEvent_0 'E1E730
  'Data Table: 42B138
  loc_E1E727: Me.GridSel.CellBackColor = CVar(CLng("16761024"))
  loc_E1E72F: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_A(Index As Integer) 'E0A6A0
  'Data Table: 42B138
  loc_E0A696: If (CLng(Index) = &HD) Then
  loc_E0A699:   Call GridSel_UnknownEvent_B()
  loc_E0A69E: End If
  loc_E0A69E: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_B 'F75CBC
  'Data Table: 42B138
  Dim var_94 As Variant
  Dim var_B4 As Long
  Dim var_C8 As Variant
  Dim var_DC As String
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim MemVar_1F92110 As Variant
  loc_F75B80: var_94 = 1
  loc_F75B89: var_B4 = 0
  loc_F75BA7: var_DC = CStr(Me.GridSel.TextMatrix))
  loc_F75BB8: If (var_DC <> vbNullString) Then
  loc_F75BCE:   var_94 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_F75BFB:   Call unk_42B14D.SEARCHBACK
  loc_F75C15:   Set var_C8 = 0(CVar(CStr(Me.GridSel.TextMatrix))))
  loc_F75C24:   var_94 = CVar(CLng(unk_42B14D.GridSel.Row)) 'Long
  loc_F75C29:   var_B4 = 0
  loc_F75C3C:   var_F0 = Me.GridSel.TextMatrix)
  loc_F75C47:   var_100 = CVar(CStr(var_F0)) 'String
  loc_F75C4A:   MemVar_1F92110 = var_100
  loc_F75C5F: Else
  loc_F75C5F:   var_94 = vbNullString
  loc_F75C64:   ImpAdStVarCopy
  loc_F75C68: End If
  loc_F75C75: Me.Global.Unload Me
  loc_F75C7D: Exit Sub
  loc_F75C86: Set var_C8 = Err()
  loc_F75C8C: Call 0.Method_arg_2C (var_DC, var_94, MemVar_1F92110, var_B4)
  loc_F75CA5: MsgBox(CVar(var_DC), &H40, var_F0, var_100, var_120)
  loc_F75CB8: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_C(Index As Integer) 'EECDD0
  'Data Table: 42B138
  Dim Me As Recordset15
  loc_EECD72: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EECD7A: var_C8 = "16777215"
  loc_EECD83: var_C4 = "16761024"
  loc_EECDAB: Proc_183_11_113C750(Me.TxtSearch, Me.GridSel, global_52, Index)
  loc_EECDCD: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_E(Index As Integer) 'E3B1D8
  'Data Table: 42B138
  loc_E3B1B2: If (Index = 2) Then
  loc_E3B1CD:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E3B1D5: End If
  loc_E3B1D5: Exit Sub
  loc_E3B1D6: CExtInstUnk
End Sub

Private Sub GridSel_UnknownEvent_14 'E1CCA0
  'Data Table: 42B138
  loc_E1CC97: Me.GridSel.CellBackColor = CVar(CLng("16777215"))
  loc_E1CC9F: Exit Sub
End Sub

Private Sub Form_Load() '1226850
  'Data Table: 42B138
  Dim var_9C As Variant
  Dim var_A4 As String
  Dim var_C8 As Variant
  Dim unk_42B155 As Connection15
  Dim MemVar_1F923A8 As Integer
  Dim var_F0 As Variant
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_D0 As Field20
  Dim var_8C As Double
  loc_1226370: On Error Goto loc_12267EF
  loc_1226373: var_9C = vbNullString
  loc_1226378: ImpAdStVarCopy
  loc_1226388: var_A0 = Form.Caption
  loc_1226391: var_A4 = "Find :- {" & var_A0
  loc_122639E: Call 0.Method_arg_54 (var_A4 & "}")
  loc_12263B6: If (global_52 Is Nothing) Then
  loc_12263BF:   If (MemVar_1F923A8 = &HFF) Then
  loc_12263CC:     var_C8 = var_B8.Execute
  loc_12263DE:     Set global_52 = var_C8
  loc_12263EB:   Else
  loc_1226401:     unk_42B155.Execute MemVar_1F920E4, var_C8, -1
  loc_1226412:     Set global_52 = var_CC
  loc_1226420:   End If
  loc_1226422:   MemVar_1F923A8 = 0
  loc_122642E:   var_C8 = CVar(global_52) 'Address
  loc_1226433:   VerifyVarObj
  loc_1226439:   Set var_CC = Me.GridSel
  loc_122643F:   LateIdStAd
  loc_1226450: Else
  loc_1226453:   var_CC = FindRecSet
  loc_122645E:   CVarUnk
  loc_1226463:   VerifyVarObj
  loc_1226469:   Set var_D0 = Me.GridSel
  loc_122646F:   LateIdStAd
  loc_1226481: End If
  loc_1226481: var_9C = 0
  loc_122648A: var_F0 = &H1C2
  loc_1226497: Set var_CC = Me.GridSel
  loc_122649D: LateIdCallSt
  loc_12264A8: var_9C = 0
  loc_12264B1: var_F0 = 0
  loc_12264BE: Set var_CC = Me.GridSel
  loc_12264C4: LateIdCallSt
  loc_12264E6: If (Me.RecordCount > 0) Then
  loc_12264F6:   If (UBound(MemVar_1F92008, 1) = 0) Then
  loc_12264F9:     ' Referenced from: 1226811
  loc_1226523:     var_E0 = CVar((Me.Fields.Count - 1)) 'Long
  loc_122652A:     For var_134 = 1 To var_E0: var_114 = var_134 'Variant
  loc_1226568:       If (Me.Fields.Item(var_114).ActualSize = 0) Then
  loc_1226570:         var_9C = CVar(CLng(var_114)) 'Long
  loc_12265A6:         var_F0 = CVar((Me.Fields.Item(var_114).DefinedSize * &H78)) 'Long
  loc_12265AF:         Set var_138 = Me.GridSel
  loc_12265B5:         LateIdCallSt
  loc_12265C9:       Else
  loc_12265CE:         var_9C = CVar(CLng(var_114)) 'Long
  loc_12265F6:         var_104 = Me.Fields.Item(var_114).ActualSize
  loc_1226604:         var_F0 = CVar((var_104 * &H78)) 'Long
  loc_122660D:         Set var_138 = Me.GridSel
  loc_1226613:         LateIdCallSt
  loc_1226624:       End If
  loc_1226629:       var_9C = CVar(CLng(var_114)) 'Long
  loc_122665A:       If (CDbl((var_8C + CDbl(CLng(Me.GridSel.ColWidth))))) <= CDbl(11085)) Then
  loc_1226662:         var_9C = CVar(CLng(var_114)) 'Long
  loc_1226687:         var_8C = (var_8C + CDbl(CLng(Me.GridSel.ColWidth))))
  loc_1226690:       End If
  loc_1226693:     Next var_134 'Variant
  loc_122669C:   Else
  loc_12266AF:     For var_158 = 1 To CVar(UBound(MemVar_1F92008, 1)):   var_114 = var_158 'Variant
  loc_12266BA:       var_9C = CVar(CLng(var_114)) 'Long
  loc_12266D3:       Set var_CC = Me.GridSel
  loc_12266D9:       LateIdCallSt
  loc_12266FB:       If (CDbl((var_8C + CDbl(MemVar_1F92008(CLng(var_114))))) <= CDbl(11085)) Then
  loc_122670C:         var_8C = (var_8C + CDbl(MemVar_1F92008(CLng(var_114))))
  loc_122670F:       End If
  loc_1226712:     Next var_158 'Variant
  loc_1226718:   End If
  loc_1226718: End If
  loc_1226720: var_9C = CVar((var_8C + CDbl(270))) 'Single
  loc_122672F: Me.GridSel.Width = var_9C
  loc_1226743: Call 0.Method_Me4 ((var_8C + CDbl(360)))
  loc_122675B: Me.GridSel.Height = CVar(CDbl(5575))
  loc_122676B: Call 0.Method_MeC (CDbl(6300))
  loc_122678F: If (CLng(Me.GridSel.Rows) = 1) Then
  loc_1226792:   var_9C = vbNullString
  loc_122679C:   Set var_CC = Me.GridSel
  loc_12267AD: End If
  loc_12267AD: Call GridSel_UnknownEvent_0()
  loc_12267B2: var_9C = 1
  loc_12267BF: Set var_CC = Me.GridSel
  loc_12267C5: var_CC.Col = var_9C
  loc_12267D6: Call 0.Method_arg_160 (var_CC, GridSel.DispID_10000)
  loc_12267E2: Call 0.Method_arg_164 (var_CC)
  loc_12267EE: Exit Sub
  loc_12267EF: ' Referenced from: 1226370
  loc_12267F7: Set var_CC = Err()
  loc_12267FD: Call 0.Method_arg_1C (var_104)
  loc_122680E: If (var_104 = 9) Then
  loc_1226811:   GoTo loc_12264F9
  loc_1226814: End If
  loc_122682A: Set var_CC = Err()
  loc_1226830: Call 0.Method_arg_2C (var_A0, 0, var_16C)
  loc_122683B: MsgBox(CVar(var_A0), var_17C, var_18C, var_9C, )
  loc_122684E: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0FB44
  'Data Table: 42B138
  loc_E0FB3B: Set global_52 = Nothing
  loc_E0FB42: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '103B064
  'Data Table: 42B138
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim Me As Recordset15
  loc_103AE3E: If ((CLng(KeyCode) = &H1B) And (Me.TxtSearch.Visible = 0)) Then
  loc_103AE4E:   Me.Global.Unload Me
  loc_103AE56: End If
  loc_103AE67: If ((CLng(KeyCode) = &H53) And (Shift = 2)) Then
  loc_103AE8B:   For var_A8 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A8 'Integer
  loc_103AED1:     var_88 = var_88 & "[" & Me.Fields.Item(CVar(var_8A)).Name & "],"
  loc_103AEE7:   Next var_A8 'Integer
  loc_103AEF6:   var_A4 = CVar((Len(var_88) - 1)) 'Long
  loc_103AF13:   var_88 = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_103AF30:   Me.GridSel.CellBackColor = CVar(CLng("16761024"))
  loc_103AF41:   Me.Sort = var_88
  loc_103AF4A:   Set var_90 = Me.GridSel
  loc_103AF5E: Else
  loc_103AF6F:   If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_103AF93:     For var_EC = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF:   var_8A = var_EC 'Integer
  loc_103AFD9:       var_88 = var_88 & "[" & Me.Fields.Item(CVar(var_8A)).Name & "] Desc ,"
  loc_103AFEF:     Next var_EC 'Integer
  loc_103AFFE:     var_A4 = CVar((Len(var_88) - 1)) 'Long
  loc_103B038:     Me.GridSel.CellBackColor = CVar(CLng("16761024"))
  loc_103B049:     Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_103B052:     Set var_90 = Me.GridSel
  loc_103B063:   End If
  loc_103B063: End If
  loc_103B063: Exit Sub
End Sub

Public Property Let FindRecSet(mFindRst) 'E0FD84
  'Data Table: 42B138
  loc_E0FD7D: Set global_52 = mFindRst
  loc_E0FD81: Exit Sub
End Sub

Public Property Get FindRecSet() 'E0FD3C
  'Data Table: 42B138
  loc_E0FD30: Set var_88 = global_52 
  loc_E0FD34: FindRecSet = 
End Sub
