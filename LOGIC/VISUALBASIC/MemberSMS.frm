VERSION 5.00
Begin VB.Form MemberSMS
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
  ClientWidth = 11640
  ClientHeight = 6015
  StartUpPosition = 1 'CenterOwner
  Begin CommandButton Command2
    Caption = "Generate SMS.csv"
    Left = 885
    Top = 5715
    Width = 2145
    Height = 300
    TabIndex = 4
  End
  Begin PictureBox Picture1
    BackColor = &HE0E0E0&
    Picture = "MemberSMS.frx":0
    Left = 0
    Top = 2610
    Width = 3690
    Height = 3075
    Visible = 0   'False
    TabIndex = 3
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin CommandButton Command1
    Caption = "Help.?"
    Left = 0
    Top = 5715
    Width = 885
    Height = 300
    TabIndex = 2
  End
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
    Left = 15
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

Attribute VB_Name = "MemberSMS"


Private Sub Command2_Click() '10EA0B4
  'Data Table: 42D3A4
  Dim var_9C As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim var_98 As Recordset15
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_14C As String
  Dim var_180 As String
  loc_10E9DEC: var_9C = Me.Global.App
  loc_10E9E00: var_90 = App.Path & "\SMS.CSV"
  loc_10E9E0D: Set var_88 = New 
  loc_10E9E1D: Call 0.Method_arg_78 (var_90, &HFF)
  loc_10E9E28: Set var_8C = var_9C
  loc_10E9E33: Set var_8C = Nothing
  loc_10E9E4B: Call 0.Method_arg_7C (var_90, 8, 0, 0)
  loc_10E9E56: Set var_8C = var_9C
  loc_10E9E80: Me.Connection15.Execute "Select * from Enviro where Logsite_code='" & MemVar_1F92078 & "'", var_C4, -1
  loc_10E9E8B: Set var_98 = var_9C
  loc_10E9EC0: For var_C8 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_92 = var_C8 'Integer
  loc_10E9EDC:   Set var_9C = Me.GridSel
  loc_10E9F0F:   If CBool(Trim(CVar(CStr(var_9C.TextMatrix)))) <> vbNullString) Then
  loc_10E9F31:     var_108 = CVar(var_98.Fields.Item("SMSMessage")) 'Address
  loc_10E9F59:     var_118 = Me.GridSel.TextMatrix)
  loc_10E9F64:     var_138 = CVar(CStr(var_118)) 'String
  loc_10E9F89:     var_9C = var_98.Fields
  loc_10E9FCC:     var_14C = Replace(Proc_6_38_E68A98(var_108, 0, CVar(CLng(var_92)), 1), ",", " ", 1, -1, 0)
  loc_10E9FFA:     var_180 = Replace(Proc_6_38_E68A98(Trim(var_138), 0, CVar(CLng(var_92)), var_9C), ",", vbNullString, 1, -1, 0)
  loc_10EA004:     Call 0.Method_arg_3C (Proc_6_38_E68A98(CVar(var_9C.Item("MobileNo")), var_9C) & ", " & var_14C & ", " & var_180, 0)
  loc_10EA038:   End If
  loc_10EA03B: Next var_C8 'Integer
  loc_10EA043: Call 0.Method_Command2_ClickC ()
  loc_10EA073: var_9C = Me.Global.App
  loc_10EA087: MsgBox(CVar("Process Completed! " & vbCrLf & "SMS.csv is located on " & App.Path), 0, var_108, var_118, var_138)
  loc_10EA0A8: Set var_8C = Nothing
  loc_10EA0B0: Set var_88 = Nothing
  loc_10EA0B3: Exit Sub
End Sub

Private Sub Form_Load() '11A78CC
  'Data Table: 42D3A4
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim unk_42D3D0 As Connection15
  Dim MemVar_1F923A8 As Integer
  Dim var_E4 As Variant
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_8C As Double
  loc_11A74C4: On Error Goto loc_11A7869
  loc_11A74C7: var_9C = vbNullString
  loc_11A74CC: ImpAdStVarCopy
  loc_11A74D6: If (MemVar_1F923A8 = &HFF) Then
  loc_11A74E3:   var_BC = var_AC.Execute
  loc_11A74F5:   Set global_52 = var_BC
  loc_11A7502: Else
  loc_11A7518:   unk_42D3D0.Execute MemVar_1F920E4, var_BC, -1
  loc_11A7529:   Set global_52 = var_C0
  loc_11A7537: End If
  loc_11A7539: MemVar_1F923A8 = 0
  loc_11A7545: CVarUnk
  loc_11A754A: VerifyVarObj
  loc_11A7550: Set var_C0 = Me.GridSel
  loc_11A7556: LateIdStAd
  loc_11A7564: var_9C = 0
  loc_11A756D: var_E4 = 0
  loc_11A757A: Set var_C0 = Me.GridSel
  loc_11A7580: LateIdCallSt
  loc_11A75A2: If (Me.RecordCount > 0) Then
  loc_11A75B2:   If (UBound(MemVar_1F92008, 1) = 0) Then
  loc_11A75B5:     ' Referenced from: 11A788B
  loc_11A75DF:     var_D4 = CVar((Me.Fields.Count - 1)) 'Long
  loc_11A75E6:     For var_128 = 1 To var_D4: var_108 = var_128 'Variant
  loc_11A7624:       If (Me.Fields.Item(var_108).ActualSize = 0) Then
  loc_11A762C:         var_9C = CVar(CLng(var_108)) 'Long
  loc_11A7662:         var_E4 = CVar((Me.Fields.Item(var_108).DefinedSize * &H78)) 'Long
  loc_11A766B:         Set var_12C = Me.GridSel
  loc_11A7671:         LateIdCallSt
  loc_11A7685:       Else
  loc_11A768A:         var_9C = CVar(CLng(var_108)) 'Long
  loc_11A76B2:         var_F8 = Me.Fields.Item(var_108).ActualSize
  loc_11A76C0:         var_E4 = CVar((var_F8 * &H78)) 'Long
  loc_11A76C9:         Set var_12C = Me.GridSel
  loc_11A76CF:         LateIdCallSt
  loc_11A76E0:       End If
  loc_11A76E5:       var_9C = CVar(CLng(var_108)) 'Long
  loc_11A770A:       var_8C = (var_8C + CDbl(CLng(Me.GridSel.ColWidth))))
  loc_11A7716:     Next var_128 'Variant
  loc_11A771F:   Else
  loc_11A7732:     For var_14C = 1 To CVar(UBound(MemVar_1F92008, 1)):   var_108 = var_14C 'Variant
  loc_11A773D:       var_9C = CVar(CLng(var_108)) 'Long
  loc_11A7756:       Set var_C0 = Me.GridSel
  loc_11A775C:       LateIdCallSt
  loc_11A7778:       var_8C = (var_8C + CDbl(MemVar_1F92008(CLng(var_108))))
  loc_11A777E:     Next var_14C 'Variant
  loc_11A7784:   End If
  loc_11A7784: End If
  loc_11A778C: If (var_8C > CDbl(11085)) Then
  loc_11A77A2:   Me.GridSel.Width = CVar(CDbl(10935))
  loc_11A77B2:   Call 0.Method_Me4 (CDbl(11085))
  loc_11A77BA: Else
  loc_11A77C2:   var_9C = CVar((var_8C + CDbl(350))) 'Single
  loc_11A77D1:   Me.GridSel.Width = CVar(CDbl(10935))
  loc_11A77E5:   Call 0.Method_Me4 ((var_8C + CDbl(500)))
  loc_11A77EA: End If
  loc_11A7809: If (CLng(Me.GridSel.Rows) = 1) Then
  loc_11A780C:   var_9C = vbNullString
  loc_11A7816:   Set var_C0 = Me.GridSel
  loc_11A7827: End If
  loc_11A7827: Call GridSel_UnknownEvent_0()
  loc_11A782C: var_9C = 1
  loc_11A7839: Set var_C0 = Me.GridSel
  loc_11A783F: var_C0.Col = var_9C
  loc_11A7850: Call 0.Method_arg_160 (var_C0, GridSel.DispID_10000)
  loc_11A785C: Call 0.Method_arg_164 (var_C0)
  loc_11A7868: Exit Sub
  loc_11A7869: ' Referenced from: 11A74C4
  loc_11A7871: Set var_C0 = Err()
  loc_11A7877: Call 0.Method_arg_1C (var_F8)
  loc_11A7888: If (var_F8 = 9) Then
  loc_11A788B:   GoTo loc_11A75B5
  loc_11A788E: End If
  loc_11A78A4: Set var_C0 = Err()
  loc_11A78AA: Call 0.Method_arg_2C (var_154, 0, var_164)
  loc_11A78B5: MsgBox(CVar(var_154), var_174, var_184, var_9C, )
  loc_11A78C8: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '1030480
  'Data Table: 42D3A4
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim Me As Recordset15
  loc_103026A: If ((CLng(KeyCode) = &H1B) And (Me.TxtSearch.Visible = 0)) Then
  loc_103027A:   Me.Global.Unload Me
  loc_1030282: End If
  loc_1030293: If ((CLng(KeyCode) = &H53) And (Shift = 2)) Then
  loc_10302B7:   For var_A8 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A8 'Integer
  loc_10302F6:     var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & ","
  loc_103030A:   Next var_A8 'Integer
  loc_1030319:   var_A4 = CVar((Len(var_88) - 1)) 'Long
  loc_1030336:   var_88 = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_1030353:   Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_1030364:   Me.Sort = var_88
  loc_103036D:   Set var_90 = Me.GridSel
  loc_1030381: Else
  loc_1030392:   If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_10303B6:     For var_E8 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF:   var_8A = var_E8 'Integer
  loc_10303F5:       var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & " Desc ,"
  loc_1030409:     Next var_E8 'Integer
  loc_1030418:     var_A4 = CVar((Len(var_88) - 1)) 'Long
  loc_1030452:     Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_1030463:     Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_103046C:     Set var_90 = Me.GridSel
  loc_103047D:   End If
  loc_103047D: End If
  loc_103047D: Exit Sub
End Sub

Private Sub SD_Click() 'F1809C
  'Data Table: 42D3A4
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F17FD1: For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_F18010:   var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & " Desc ,"
  loc_F18024: Next var_A4 'Integer
  loc_F18033: var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_F1806D: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_F1807E: Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_F18087: Set var_90 = Me.GridSel
  loc_F18098: Exit Sub
End Sub

Private Sub SA_Click() 'F175A4
  'Data Table: 42D3A4
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim Me As Variant
  loc_F174D9: For var_A4 = CInt(CLng(Me.GridSel.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_F17518:   var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & ","
  loc_F1752C: Next var_A4 'Integer
  loc_F1753B: var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_F17575: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_F17586: Me.Sort = CStr(Mid(var_88, 1, Me.GridSel.Col))
  loc_F1758F: Set var_90 = Me.GridSel
  loc_F175A0: Exit Sub
  loc_F175A1: MeFF = GridSel.DispID_FFFF
End Sub

Private Sub FSR_Click() 'FB7A6C
  'Data Table: 42D3A4
  Dim Me As Recordset15
  Dim var_100 As MSHFlexGrid
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_1A4 As Variant
  loc_FB79AB: var_14C = (IIf((Len(CStr(Me.Filter)) > 1), CVar(CStr(Me.Filter) & " and "), vbNullString) + CVar(Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name))
  loc_FB79B4: var_16C = var_14C & " =  '" 
  loc_FB79CB: var_1A4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FB7A14: Me.Filter = CVar(CLng(Me.GridSel.Col)) & CVar(CStr(Me.GridSel.TextMatrix))) & "'"
  loc_FB7A5A: Set var_100 = Me.GridSel
  loc_FB7A6B: Exit Sub
End Sub

Private Sub Command1_Click() 'E5E638
  'Data Table: 42D3A4
  loc_E5E607: If (Me.Picture1.Visible = &HFF) Then
  loc_E5E616:   Me.Picture1.Visible = False
  loc_E5E621: Else
  loc_E5E62D:   Me.Picture1.Visible = True
  loc_E5E635: End If
  loc_E5E635: Exit Sub
End Sub

Private Sub FNSR_Click() 'FB72BC
  'Data Table: 42D3A4
  Dim Me As Recordset15
  Dim var_100 As MSHFlexGrid
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_1A4 As Variant
  loc_FB71FB: var_14C = (IIf((Len(CStr(Me.Filter)) > 1), CVar(CStr(Me.Filter) & " and "), vbNullString) + CVar(Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name))
  loc_FB7204: var_16C = var_14C & " <>  '" 
  loc_FB721B: var_1A4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FB7264: Me.Filter = CVar(CLng(Me.GridSel.Col)) & CVar(CStr(Me.GridSel.TextMatrix))) & "'"
  loc_FB72AA: Set var_100 = Me.GridSel
  loc_FB72BB: Exit Sub
End Sub

Private Sub RF_Click() 'E3D8D8
  'Data Table: 42D3A4
  Dim Me As Recordset15
  loc_E3D8BB: Me.Filter = 0
  loc_E3D8C4: Set var_98 = Me.GridSel
  loc_E3D8D5: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'EB0028
  'Data Table: 42D3A4
  Dim var_88 As TextBox
  loc_EAFF97: If (Proc_183_12_E7A3E4(KeyCode) = &HFF) Then
  loc_EAFF9E:   Set var_88 = Me.GridSel
  loc_EAFFBB:   Me.TxtSearch.Visible = False
  loc_EAFFC3: End If
  loc_EAFFCD: If (CLng(KeyCode) = &H2E) Then
  loc_EAFFDD:   Me.TxtSearch.Text = vbNullString
  loc_EAFFE5: End If
  loc_EAFFFA: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EB0001:   Set var_88 = Me.GridSel
  loc_EB001E:   Me.TxtSearch.Visible = False
  loc_EB0026: End If
  loc_EB0026: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'EF14DC
  'Data Table: 42D3A4
  Dim Me As Recordset15
  Dim KeyAscii As Integer
  loc_EF147A: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EF1482: var_C8 = "15595518"
  loc_EF148B: var_C4 = "16777152"
  loc_EF14B3: Proc_183_11_113C750(Me.TxtSearch, Me.GridSel, global_52, KeyAscii)
  loc_EF14D7: KeyAscii = 0
  loc_EF14DA: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E55AD0
  'Data Table: 42D3A4
  Dim var_88 As TextBox
  loc_E55A9D: Me.TxtSearch.Text = vbNullString
  loc_E55AA9: Set var_88 = Me.GridSel
  loc_E55AC6: Me.TxtSearch.Visible = False
  loc_E55ACE: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E578B8
  'Data Table: 42D3A4
  Dim var_88 As TextBox
  loc_E57885: Me.TxtSearch.Text = vbNullString
  loc_E57891: Set var_88 = Me.GridSel
  loc_E578AE: Me.TxtSearch.Visible = False
  loc_E578B6: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E1DBA0
  'Data Table: 42D3A4
  loc_E1DB97: Me.GridSel.CellBackColor = CVar(CLng("16777152"))
  loc_E1DB9F: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_A(Index As Integer) 'E0A76C
  'Data Table: 42D3A4
  loc_E0A762: If (CLng(Index) = &HD) Then
  loc_E0A765:   Call GridSel_UnknownEvent_B()
  loc_E0A76A: End If
  loc_E0A76A: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_B 'F76154
  'Data Table: 42D3A4
  Dim var_94 As Variant
  Dim var_B4 As Long
  Dim var_C8 As Variant
  Dim var_DC As String
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim MemVar_1F92110 As Variant
  loc_F76018: var_94 = 1
  loc_F76021: var_B4 = 0
  loc_F7603F: var_DC = CStr(Me.GridSel.TextMatrix))
  loc_F76050: If (var_DC <> vbNullString) Then
  loc_F76066:   var_94 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_F76093:   Call unk_42D3DC.SEARCHBACK
  loc_F760AD:   Set var_C8 = 0(CVar(CStr(Me.GridSel.TextMatrix))))
  loc_F760BC:   var_94 = CVar(CLng(unk_42D3DC.GridSel.Row)) 'Long
  loc_F760C1:   var_B4 = 0
  loc_F760D4:   var_F0 = Me.GridSel.TextMatrix)
  loc_F760DF:   var_100 = CVar(CStr(var_F0)) 'String
  loc_F760E2:   MemVar_1F92110 = var_100
  loc_F760F7: Else
  loc_F760F7:   var_94 = vbNullString
  loc_F760FC:   ImpAdStVarCopy
  loc_F76100: End If
  loc_F7610D: Me.Global.Unload Me
  loc_F76115: Exit Sub
  loc_F7611E: Set var_C8 = Err()
  loc_F76124: Call 0.Method_arg_2C (var_DC, var_94, MemVar_1F92110, var_B4)
  loc_F7613D: MsgBox(CVar(var_DC), &H40, var_F0, var_100, var_120)
  loc_F76150: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_C(Index As Integer) 'EEAFE8
  'Data Table: 42D3A4
  Dim Me As Recordset15
  loc_EEAF8A: var_B4 = Me.Fields.Item(CVar(CLng(Me.GridSel.Col))).Name
  loc_EEAF92: var_C8 = "15595518"
  loc_EEAF9B: var_C4 = "16777152"
  loc_EEAFC3: Proc_183_11_113C750(Me.TxtSearch, Me.GridSel, global_52, Index)
  loc_EEAFE5: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_E(Index As Integer) 'E3DAB8
  'Data Table: 42D3A4
  loc_E3DA92: If (Index = 2) Then
  loc_E3DAAD:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E3DAB5: End If
  loc_E3DAB5: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'E1CB10
  'Data Table: 42D3A4
  loc_E1CB07: Me.GridSel.CellBackColor = CVar(CLng("15595518"))
  loc_E1CB0F: Exit Sub
End Sub
