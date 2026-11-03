VERSION 5.00
Begin VB.Form frmGuestInfo
  Caption = "Guest Information"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  Begin BtnEnh CmdRefresh
    Left = 13905
    Top = 2775
    Width = 1200
    Height = 885
    TabIndex = 17
  End
  Begin BtnEnh CmdSave
    Left = 13905
    Top = 3735
    Width = 1200
    Height = 885
    TabIndex = 11
  End
  Begin BtnEnh CmdExit
    Left = 13905
    Top = 4695
    Width = 1200
    Height = 885
    TabIndex = 14
  End
  Begin BtnEnh CmdAdd
    Left = 13905
    Top = 825
    Width = 1200
    Height = 885
    TabIndex = 15
  End
  Begin BtnEnh CmdEdit
    Left = 13905
    Top = 1800
    Width = 1200
    Height = 885
    TabIndex = 16
  End
  Begin Frame FrmList
    Left = 12330
    Top = 7920
    Width = 1845
    Height = 1755
    Visible = 0   'False
    TabIndex = 7
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 75
      Width = 1860
      Height = 1725
      TabStop = 0   'False
      TabIndex = 8
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 135
    Top = 30
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1215
    Top = 8750
    Width = 1425
    Height = 285
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 10
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
    Left = 3810
    Top = 8750
    Width = 1425
    Height = 285
    Visible = 0   'False
    TabIndex = 4
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
    Left = 135
    Top = 765
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    HideSelection = 0   'False
    MaxLength = 50
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
  Begin DataGrid DGVType
    Left = 14820
    Top = 7560
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 0
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2640
    Width = 4680
    Height = 450
    Visible = 0   'False
    TabIndex = 1
  End
  Begin ListView FacilityListView
    Left = 11145
    Top = 8220
    Width = 780
    Height = 1230
    Visible = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGSundry
    Left = 15105
    Top = 7200
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin MSHFlexGrid FGrid
    Left = 15
    Top = 0
    Width = 13700
    Height = 8700
    TabIndex = 10
  End
  Begin Label LblName
    Caption = "For Month"
    Index = 0
    ForeColor = &HFF0000&
    Left = 180
    Top = 8750
    Width = 960
    Height = 240
    Visible = 0   'False
    TabIndex = 13
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
    Caption = "Entry Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2775
    Top = 8750
    Width = 975
    Height = 240
    Visible = 0   'False
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
End

Attribute VB_Name = "frmGuestInfo"

Private global_92 As Integer
Private global_94 As Integer
Private MasterFormExit As Integer

Private Sub FGrid_UnknownEvent_0 'E619B4
  'Data Table: 4D6588
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6197F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E61992: Set var_A8 = Me.TxtGrid
  loc_E61998: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E619A0: var_AC.Visible = False
  loc_E619AC: Call Proc_302_70_DFB888()
  loc_E619B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69D38
  'Data Table: 4D6588
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69CF4: Set var_88 = Me.TxtGrid
  loc_E69CFA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E69D14: If (var_8C.Visible = 0) Then
  loc_E69D2D:   Me.FGrid.BackColorSel = CVar(CLng(global_84))
  loc_E69D35: End If
  loc_E69D35: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1F4F0
  'Data Table: 4D6588
  loc_E1F4E7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F4EF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF60C
  'Data Table: 4D6588
  loc_DFF604: Call Proc_302_66_E44EC4()
  loc_DFF609: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1039BA4
  'Data Table: 4D6588
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_103995C: Set var_88 = Me.TopCtrl1
  loc_1039962: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_10399A7: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10399B0:   Call Form_KeyDown(Cancel, arg_10)
  loc_10399B5: End If
  loc_10399B9: Set var_88 = Me.TopCtrl1
  loc_10399BF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_10399D8: If (CStr() = "Browse") Then
  loc_10399DB:   Exit Sub
  loc_10399DC: End If
  loc_1039A50: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1039A66:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1039A76:   var_9C = "+{Tab}"
  loc_1039A7C:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_1039A86:   Cancel = 0
  loc_1039A8C: Else
  loc_1039A96:   var_B0 = Me.FGrid.Rows
  loc_1039AE3:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1039AF9:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1039B0F:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_1039B19:     Cancel = 0
  loc_1039B1C:   End If
  loc_1039B1C: End If
  loc_1039B22: global_92 = Cancel
  loc_1039B48: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1039B6C: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1039B82:   var_EC = CLng(Me.FGrid.Col)
  loc_1039B8B: End If
  loc_1039B91: If (Cancel = &HD) Then
  loc_1039B99:   global_94 = 0
  loc_1039B9C: End If
  loc_1039B9E: Cancel = 0
  loc_1039BA1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0E678
  'Data Table: 4D6588
  loc_E0E669: Call FGrid_UnknownEvent_C()
  loc_E0E673: global_94 = 0
  loc_E0E676: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '12D52E0
  'Data Table: 4D6588
  Dim Cancel As Integer
  Dim var_9C As String
  Dim var_98 As MSHFlexGrid
  Dim var_94 As Variant
  Dim var_A0 As Long
  Dim var_A4 As Variant
  Dim var_CA As Integer
  Dim var_C4 As TextBox
  Dim var_DC As Variant
  Dim var_B8 As MSHFlexGrid
  loc_12D4C4A: Proc_6_133_E7EF78(var_94)
  loc_12D4C53: Cancel = CInt(var_94)
  loc_12D4C5D: Set var_98 = Me.TopCtrl1
  loc_12D4C63: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(Cancel)
  loc_12D4C7C: If (CStr(Cancel) = "Browse") Then
  loc_12D4C7F:   Exit Sub
  loc_12D4C80: End If
  loc_12D4C93: var_A0 = CLng(Me.FGrid.Col)
  loc_12D4CA3: If (var_A0 = CLng(3)) Then
  loc_12D4CB4:   Set var_98 = Me.TxtGrid
  loc_12D4CBA:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_12D4CC2:   var_A4.MaxLength = &HF
  loc_12D4CD2:   Set var_C4 = Me.FGrid
  loc_12D4CF6:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_12D4CFF:   var_CA = Asc(var_9C)
  loc_12D4D23:   Set var_A4 = var_C4
  loc_12D4D35:   Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0, 0)
  loc_12D4D5D:   Set var_98 = Me.TxtGrid
  loc_12D4D63:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, var_CA)
  loc_12D4D6B:   0 = var_A4.Text
  loc_12D4D7D:   Set var_B8 = Me.TxtGrid
  loc_12D4D83:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, Len(var_9C))
  loc_12D4D8B:   var_C4.SelStart = var_CA
  loc_12D4DA2:   Set var_98 = Me.TopCtrl1
  loc_12D4DA8:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A0)
  loc_12D4DB0:   var_9C = CStr()
  loc_12D4DBC:   Set var_A4 = Me.FGrid
  loc_12D4DCB:   var_DC = CVar(CLng(var_A4.Row)) 'Long
  loc_12D4E0F:   If (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_12D4E1A:     Call TxtGrid_KeyPress(0)
  loc_12D4E1F:   End If
  loc_12D4E22: Else
  loc_12D4E29:   If (var_A0 = CLng(2)) Then
  loc_12D4E3A:     Set var_98 = Me.TxtGrid
  loc_12D4E40:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, &H32)
  loc_12D4E48:     var_A4.MaxLength = Cancel
  loc_12D4E58:     Set var_C4 = Me.FGrid
  loc_12D4E7C:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_12D4E85:     var_CA = Asc(var_9C)
  loc_12D4EA9:     Set var_A4 = var_C4
  loc_12D4EBB:     Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0, 0)
  loc_12D4EE3:     Set var_98 = Me.TxtGrid
  loc_12D4EE9:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, var_CA)
  loc_12D4EF1:     0 = var_A4.Text
  loc_12D4F03:     Set var_B8 = Me.TxtGrid
  loc_12D4F09:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, Len(var_9C))
  loc_12D4F11:     var_C4.SelStart = var_CA
  loc_12D4F28:     Set var_98 = Me.TopCtrl1
  loc_12D4F2E:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_DC)
  loc_12D4F36:     var_9C = CStr((var_9C = "Add"))
  loc_12D4F42:     Set var_A4 = Me.FGrid
  loc_12D4F51:     var_DC = CVar(CLng(var_A4.Row)) 'Long
  loc_12D4F95:     If (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_12D4FA0:       Call TxtGrid_KeyPress(0)
  loc_12D4FA5:     End If
  loc_12D4FA8:   Else
  loc_12D4FAF:     If Not (var_A0 = CLng(4)) Then
  loc_12D4FBA:       If (var_A0 = CLng("5")) Then
  loc_12D4FBD:       End If
  loc_12D4FCB:       Set var_98 = Me.TxtGrid
  loc_12D4FD1:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, &H32)
  loc_12D4FD9:       var_A4.MaxLength = Cancel
  loc_12D4FE9:       Set var_C4 = Me.FGrid
  loc_12D500D:       var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_12D503A:       Set var_A4 = var_C4
  loc_12D504C:       Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0, 0)
  loc_12D5074:       Set var_98 = Me.TxtGrid
  loc_12D507A:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, Asc(var_9C))
  loc_12D5082:       0 = var_A4.Text
  loc_12D509B:       If (Len(var_9C) <= 1) Then
  loc_12D50AA:         Set var_98 = Me.TxtGrid
  loc_12D50B0:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_12D50B8:         var_CA = var_A4.Text
  loc_12D50C9:         Set var_B8 = Me.TxtGrid
  loc_12D50CF:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_9C)
  loc_12D50D7:         var_C4.Text = var_DC
  loc_12D50EA:       End If
  loc_12D50F6:       Set var_98 = Me.TxtGrid
  loc_12D50FC:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_12D5116:       Set var_B8 = Me.TxtGrid
  loc_12D511C:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12D5124:       var_C4.SelStart = Len(var_A4.Text)
  loc_12D513A:     Else
  loc_12D5141:       If Not (var_A0 = CLng(6)) Then
  loc_12D514B:         If (var_A0 = CLng(7)) Then
  loc_12D514E:         End If
  loc_12D515C:         Set var_98 = Me.TxtGrid
  loc_12D5162:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_12D516A:         var_A4.MaxLength = &HB
  loc_12D517A:         Set var_C4 = Me.FGrid
  loc_12D519E:         var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_12D51CB:         Set var_A4 = var_C4
  loc_12D51DD:         Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0, &HFF)
  loc_12D5205:         Set var_98 = Me.TxtGrid
  loc_12D520B:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, Asc(var_9C))
  loc_12D5213:         0 = var_A4.Text
  loc_12D522C:         If (Len(var_9C) <= 1) Then
  loc_12D523B:           Set var_98 = Me.TxtGrid
  loc_12D5241:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_12D5249:           var_CA = var_A4.Text
  loc_12D525A:           Set var_B8 = Me.TxtGrid
  loc_12D5260:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12D5268:           var_C4.Text = var_9C
  loc_12D527B:         End If
  loc_12D5287:         Set var_98 = Me.TxtGrid
  loc_12D528D:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_12D52A7:         Set var_B8 = Me.TxtGrid
  loc_12D52AD:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12D52B5:         var_C4.SelStart = Len(var_A4.Text)
  loc_12D52C8:       End If
  loc_12D52C8:     End If
  loc_12D52C8:   End If
  loc_12D52C8: End If
  loc_12D52D2: If (CLng(Cancel) <> &HD) Then
  loc_12D52DA:   global_94 = &HFF
  loc_12D52DD: End If
  loc_12D52DD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1F5E0
  'Data Table: 4D6588
  loc_E1F5D7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1F5DF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1F540
  'Data Table: 4D6588
  loc_E1F537: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F53F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E7CD90
  'Data Table: 4D6588
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_A0 As TextBox
  loc_E7CD30: Call Proc_302_70_DFB888()
  loc_E7CD48: var_9C = CLng(Me.FGrid.Col)
  loc_E7CD58: If Not (var_9C = CLng(2)) Then
  loc_E7CD62:   If (var_9C = CLng(3)) Then
  loc_E7CD65:   End If
  loc_E7CD68: Else
  loc_E7CD73:   Set var_88 = Me.TxtGrid
  loc_E7CD79:   Call 0.Method_FGrid_UnknownEvent_150 (0, var_A0)
  loc_E7CD81:   var_A0.Visible = False
  loc_E7CD8D: End If
  loc_E7CD8D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F0FF6C
  'Data Table: 4D6588
  Dim var_A0 As Variant
  Dim var_8C As MSHFlexGrid
  loc_F0FE7C: On Error Goto loc_F0FF66
  loc_F0FEA2: Call Proc_302_69_E78A54(Proc_5_1_100CB50("ADD", Me))
  loc_F0FEAD: var_A0 = vbNullString
  loc_F0FEB7: Set var_8C = Me.FGrid
  loc_F0FEE1: var_A0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_F0FEF0: Me.FGrid.TopRow = var_A0
  loc_F0FF18: var_A0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_F0FF27: Me.FGrid.Row = var_A0
  loc_F0FF48: Me.FGrid.Col = CVar(CLng(2))
  loc_F0FF54: Set var_8C = Me.FGrid
  loc_F0FF65: Exit Sub
  loc_F0FF66: ' Referenced from: F0FE7C
  loc_F0FF66: Proc_6_60_E62BC4(FGrid.DispID_8001, FGrid.DispID_10000)
  loc_F0FF6B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E98CD4
  'Data Table: 4D6588
  loc_E98C60: On Error Goto loc_E98CCC
  loc_E98C9A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E98CC0:   Call Proc_302_69_E78A54(Proc_5_1_100CB50("INI", Me))
  loc_E98CCB: End If
  loc_E98CCB: Exit Sub
  loc_E98CCC: ' Referenced from: E98C60
  loc_E98CCC: Proc_6_60_E62BC4(global_100)
  loc_E98CD1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E4F110
  'Data Table: 4D6588
  loc_E4F103: Call Proc_302_69_E78A54(Proc_5_1_100CB50("EDIT", Me))
  loc_E4F10E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18B58
  'Data Table: 4D6588
  loc_E18B4D: Me.Global.Unload Me
  loc_E18B55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC8F3C
  'Data Table: 4D6588
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EC8E9C: On Error Goto loc_EC8F34
  loc_EC8EB6: If (Me.RecordCount <= 0) Then
  loc_EC8EBF:   var_B8 = "Information"
  loc_EC8EDA:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC8EEA:   Exit Sub
  loc_EC8EEB: End If
  loc_EC8EF2: var_10C = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)) AS Code,LM.Name As LocationName,Convert(Varchar(11),LF.AppDate,103) From (LocationFacility LF Left Join LocationMast LM On LF.LcCode=LM.Code) Where (LF.LOGSITE_CODE='" & MemVar_1F92078
  loc_EC8EF9: MemVar_1F920E4 = var_10C & "' or LF.LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103))"
  loc_EC8F06: MemVar_1F92120 = Me
  loc_EC8F13: Proc_6_126_F1BCC0("4500,1500")
  loc_EC8F2E: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC8F33: Exit Sub
  loc_EC8F34: ' Referenced from: EC8E9C
  loc_EC8F34: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC8F39: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E27B74
  'Data Table: 4D6588
  loc_E27B68: Proc_5_0_110649C(&HFF, Me)
  loc_E27B70: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E27C88
  'Data Table: 4D6588
  loc_E27C7C: Proc_5_0_110649C(&HFF, Me)
  loc_E27C84: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E27BD0
  'Data Table: 4D6588
  loc_E27BC4: Proc_5_0_110649C(&HFF, Me)
  loc_E27BCC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E27A60
  'Data Table: 4D6588
  loc_E27A54: Proc_5_0_110649C(&HFF, Me)
  loc_E27A5C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E1F814
  'Data Table: 4D6588
  Dim Me As Recordset15
  loc_E1F7FF: Me.Requery -1
  loc_E1F804: Call Proc_302_68_F164A0()
  loc_E1F809: Call Proc_302_64_115E914()
  loc_E1F80E: Call Proc_302_62_11A12F4()
  loc_E1F813: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13E6138
  'Data Table: 4D6588
  Dim unk_4D658C As Connection15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As String
  Dim var_18C As Variant
  Dim var_230 As Variant
  Dim var_388 As Variant
  Dim var_41C As MSHFlexGrid
  Dim var_48C As Variant
  Dim var_4D0 As Variant
  Dim var_128 As Variant
  Dim var_1CC As Variant
  Dim var_270 As Variant
  Dim var_314 As Variant
  Dim var_324 As Variant
  Dim var_3B8 As Variant
  Dim var_45C As Variant
  Dim var_4E0 As Variant
  Dim var_514 As String
  Dim var_1BC As Variant
  Dim var_260 As Variant
  Dim var_354 As Variant
  Dim var_304 As Variant
  Dim var_C8 As Variant
  Dim var_108 As Variant
  Dim var_3A8 As Variant
  Dim var_44C As Variant
  Dim var_534 As Variant
  loc_13E57EC: On Error Goto loc_13E611D
  loc_13E57F3: var_86 = CByte(0) 'Byte
  loc_13E5800: unk_4D658C.BeginTrans var_90
  loc_13E5809: var_86 = CByte(1) 'Byte
  loc_13E5832: For var_A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A8 'Integer
  loc_13E583C:   var_B8 = CVar(CLng(var_88)) 'Long
  loc_13E5844:   var_D8 = CVar(CLng(8)) 'Long
  loc_13E5880:   If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "T") Then
  loc_13E5887:     var_B8 = CVar(CLng(var_88)) 'Long
  loc_13E588F:     var_D8 = CVar(CLng(1)) 'Long
  loc_13E58AF:     var_108 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_13E58CB:     If CBool(var_108 <> vbNullString) Then
  loc_13E58FA:       Proc_6_17_EAA2B0(var_108, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_88)), CVar(CLng(2)))
  loc_13E592B:       Proc_6_17_EAA2B0(var_1BC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_88)))
  loc_13E595C:       Proc_6_17_EAA2B0(var_260, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_88)))
  loc_13E598E:       Proc_6_17_EAA2B0(var_304, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng("5")), CVar(CLng(var_88)))
  loc_13E59AE:       var_388 = Me.FGrid.TextMatrix)
  loc_13E59BF:       Proc_6_7_F25D88(var_3A8, CVar(CStr(var_388)), CVar(CLng(6)), CVar(CLng(var_88)))
  loc_13E59F0:       Proc_6_7_F25D88(var_44C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(7)), CVar(CLng(var_88)))
  loc_13E59F9:       var_48C = CVar(CLng(var_88)) 'Long
  loc_13E5A10:       var_4D0 = Me.FGrid.TextMatrix)
  loc_13E5A41:       var_1CC = "Update GuestProf Set Name=" & var_108 & ",Add1=" & var_1BC 
  loc_13E5A51:       var_270 = var_1CC & ",MobileNo=" & var_260 
  loc_13E5A71:       var_3B8 = var_270 & ", CityName=" & var_304 & ", BirthDate=" & var_3A8 
  loc_13E5A81:       var_45C = var_3B8 & ",Anniversary=" & var_44C 
  loc_13E5AAC:       unk_4D658C.Execute CStr(var_45C & " Where Code='" & CVar(CStr(var_4D0)) & "'"), var_534, -1
  loc_13E5B3C:       Proc_6_17_EAA2B0(var_108, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_88)), var_538, var_4D0)
  loc_13E5BA2:       Proc_6_17_EAA2B0(var_1CC, CVar(CVar(CLng("5")) & CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CStr(Me.FGrid.TextMatrix)) & ", ", CVar(CLng(4)), CVar(CLng(var_88)))
  loc_13E5BD3:       Proc_6_17_EAA2B0(var_270, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_88)), CVar(CLng(1)))
  loc_13E5BDC:       var_324 = CVar(CLng(var_88)) 'Long
  loc_13E5BE4:       var_354 = CVar(CLng(1)) 'Long
  loc_13E5C48:       var_314 = "Update SmartCardRegistration Set Name=" & var_108 & ",Addr=" & var_1CC & ",Phone=" & var_270 & " Where MemberCode='" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_13E5C5F:       unk_4D658C.Execute CStr(var_314 & "' And CardType='Cash Card'"), var_388, -1
  loc_13E5CAE:     Else
  loc_13E5CB2:       var_B8 = CVar(CLng(var_88)) 'Long
  loc_13E5CBA:       var_D8 = CVar(CLng(1)) 'Long
  loc_13E5CC9:       var_A4 = Me.FGrid.TextMatrix)
  loc_13E5CD4:       var_F8 = CVar(CStr(var_A4)) 'String
  loc_13E5CDA:       var_108 = Trim(var_F8)
  loc_13E5D01:       Set var_18C = Me.FGrid
  loc_13E5D2A:       var_1CC = CVar(CLng(2)) And (Trim(CVar(CStr(var_18C.TextMatrix)))) <> vbNullString)
  loc_13E5D46:       If CBool(var_1CC) Then
  loc_13E5D4F:         var_C8 = 0
  loc_13E5D6C:         var_514 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode From GUESTPROF WHERE SITE_CODE='" & MemVar_1F92070
  loc_13E5D7C:         unk_4D658C.Execute CStr(Me.FGrid.TextMatrix)) & "'", var_A4, -1
  loc_13E5D84:         var_94 = var_94.Fields
  loc_13E5D8C:         var_C8 = var_18C.Item(var_18C)
  loc_13E5D94:         var_230 = var_230.Value
  loc_13E5DC4:         var_108 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2, var_F8, CVar(CLng(var_88)), (var_108 = vbNullString))) 'String
  loc_13E5DEF:         var_128 = (1 + Format(CStr(var_F8), "000000"))
  loc_13E5E06:         var_B8 = CVar(CLng(var_88)) 'Long
  loc_13E5E0E:         var_D8 = CVar(CLng(2)) 'Long
  loc_13E5E28:         var_F8 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13E5E2E:         Proc_6_17_EAA2B0(var_108, var_F8, var_D8, var_B8, 1, var_108)
  loc_13E5E5F:         Proc_6_17_EAA2B0(var_1CC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_88)), var_D8)
  loc_13E5E90:         Proc_6_17_EAA2B0(var_270, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_88)))
  loc_13E5EC2:         Proc_6_17_EAA2B0(var_314, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng("5")), CVar(CLng(var_88)))
  loc_13E5EF3:         Proc_6_7_F25D88(var_3B8, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(var_88)))
  loc_13E5F0D:         Set var_41C = Me.FGrid
  loc_13E5F24:         Proc_6_7_F25D88(var_45C, CVar(CStr(var_41C.TextMatrix))), CVar(CLng(7)), CVar(CLng(var_88)))
  loc_13E5F34:         Proc_6_7_F25D88(var_568, CVar(Proc_6_15_EF2C1C(var_B8, var_41C)))
  loc_13E5F4D:         var_514 = "Insert Into GuestProf (Code,Name,Add1,MobileNo,CityName,BirthDate,Anniversary,POS,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values ('" & CStr("Update SmartCardRegistration Set Name=" & var_108)
  loc_13E5F54:         var_128 = CVar(var_514 & "',") 'String
  loc_13E5FBD:         var_4E0 = var_128 & var_108 & "," & var_1CC & "," & var_270 & "," & var_314 & "," & var_3B8 & "," & var_45C & ",1,'" & CVar(MemVar_1F92070) 
  loc_13E600A:         unk_4D658C.Execute CStr(var_4E0 & "','" & CVar(MemVar_1F920C8) & "', " & var_568 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_5C8, -1
  loc_13E607E:       End If
  loc_13E607E:     End If
  loc_13E6082:     var_B8 = CVar(CLng(var_88)) 'Long
  loc_13E608A:     var_D8 = CVar(CLng(8)) 'Long
  loc_13E608F:     var_118 = vbNullString
  loc_13E6099:     Set var_94 = Me.FGrid
  loc_13E609F:     LateIdCallSt
  loc_13E60AA:   End If
  loc_13E60AD: Next var_A8 'Integer
  loc_13E60B8: unk_4D658C.CommitTrans
  loc_13E60C1: var_86 = CByte(0) 'Byte
  loc_13E60E8: Call Proc_302_69_E78A54(Proc_5_1_100CB50("ADD", Me))
  loc_13E610C: MsgBox("Details of Guest Saved.", &H40, var_F8, var_108, var_128)
  loc_13E611C: Exit Sub
  loc_13E611D: ' Referenced from: 13E57EC
  loc_13E6126: If (CInt(var_86) = 1) Then
  loc_13E612F:   unk_4D658C.RollbackTrans
  loc_13E6134: End If
  loc_13E6134: Exit Sub
End Sub

Private Sub Form_Load() 'F5537C
  'Data Table: 4D6588
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  Dim .global_2302 As Currency
  loc_F55250: On Error Goto loc_F55373
  loc_F5525A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_F55272: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B0))
  loc_F55284: Set var_A8 = Me.TopCtrl1
  loc_F5528A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B("AEDP")
  loc_F55298: Call 0.Method_arg_50 (var_AC)
  loc_F552A8: Set var_A8 = Me.TopCtrl1
  loc_F552AE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030007(CVar(var_AC))
  loc_F552C3: Set global_96 = New 
  loc_F552D5: Me.TopCtrl1.CursorLocation = 3
  loc_F552F6: Me.Recordset15.CursorLocation = 3
  loc_F55319: var_AC = "Select DISTINCT (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103)) AS SearchCode,SITE_CODE,LOGSITE_CODE From LocationFacility LF Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_F55320: var_BC = CVar(var_AC & "' or LOGSITE_CODE='HO') Order By (LF.LcCode+Space(6-len(LF.LcCode))+'**'+Convert(Varchar(11),LF.AppDate,103))") 'String
  loc_F5532A: Me.Open CVar(var_AC), CVar(MemVar_1F92044), 3
  loc_F55335: Call Proc_302_64_115E914(1)
  loc_F5535D: Call Proc_302_69_E78A54(Proc_5_1_100CB50("ADD", Me), New)
  loc_F55368: Call Proc_302_68_F164A0(-1)
  loc_F5536D: Call Proc_302_62_11A12F4()
  loc_F55372: Exit Sub
  loc_F55373: ' Referenced from: F55250
  loc_F55373: Proc_6_60_E62BC4()
  loc_F55378: Exit Sub
  loc_F55379: .global_2302 = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E56284
  'Data Table: 4D6588
  loc_E5624F: Set global_100 = Nothing
  loc_E56261: Set global_112 = Nothing
  loc_E56273: Set global_96 = Nothing
  loc_E5627F: MasterFormExit = 0
  loc_E56282: Exit Sub
End Sub

Private Sub Form_Activate() 'E508A0
  'Data Table: 4D6588
  loc_E50870: On Error Goto loc_E5089A
  loc_E50877: Set var_88 = Me.TopCtrl1
  loc_E5087D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030000()
  loc_E50892: If (CLng(CInt()) = &H2D) Then
  loc_E50895:   Call TopCtrl1_UnknownEvent_15()
  loc_E5089A:   ' Referenced from: E50870
  loc_E5089A: End If
  loc_E5089A: Proc_6_60_E62BC4()
  loc_E5089F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25284
  'Data Table: 4D6588
  loc_E25269: If (MasterFormExit = &HFF) Then
  loc_E25279:   Me.Global.Unload Me
  loc_E25281: End If
  loc_E25281: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E5BC60
  'Data Table: 4D6588
  loc_E5BC18: On Error Goto loc_E5BC58
  loc_E5BC25: If (CLng(KeyCode) = &H71) Then
  loc_E5BC28:   Call TopCtrl1_UnknownEvent_A()
  loc_E5BC30: Else
  loc_E5BC3A:   If (CLng(KeyCode) = &H72) Then
  loc_E5BC3D:     Call TopCtrl1_UnknownEvent_D()
  loc_E5BC45:   Else
  loc_E5BC4F:     If (CLng(KeyCode) = &H74) Then
  loc_E5BC52:       Call TopCtrl1_UnknownEvent_15()
  loc_E5BC57:     End If
  loc_E5BC57:   End If
  loc_E5BC57: End If
  loc_E5BC57: Exit Sub
  loc_E5BC58: ' Referenced from: E5BC18
  loc_E5BC58: Proc_6_60_E62BC4()
  loc_E5BC5D: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'EDB4E0
  'Data Table: 4D6588
  Dim var_94 As Variant
  Dim var_108 As TextBox
  loc_EDB440: Call Proc_302_70_DFB888()
  loc_EDB458: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_EDB473: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EDB4B2: Set var_104 = Me.TxtGrid
  loc_EDB4B8: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_EDB4C0: var_108.Tag = CVar(CLng(Me.FGrid.Col))
  loc_EDB4DE: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11EDEA0
  'Data Table: 4D6588
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_AC As Long
  loc_11EDA08: On Error Goto loc_11EDE97
  loc_11EDA15: If (CLng(Shift) = &H1B) Then
  loc_11EDA25:   Set var_88 = Me.TxtGrid
  loc_11EDA2B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_11EDA45:   Set var_94 = Me.TxtGrid
  loc_11EDA4B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_11EDA53:   var_98.Text = var_8C.Tag
  loc_11EDA6F:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_11EDA74:   Call Proc_302_70_DFB888(arg_14)
  loc_11EDA7D:   Set var_88 = Me.FGrid
  loc_11EDA9A:   Set var_88 = Me.TxtGrid
  loc_11EDAA0:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_11EDAA8:   var_8C.Visible = False
  loc_11EDAB4:   Exit Sub
  loc_11EDAB5: End If
  loc_11EDAC8: var_AC = CLng(Me.FGrid.Col)
  loc_11EDAD8: If (var_AC = CLng(3)) Then
  loc_11EDAE5:   If (CLng(Shift) = &HD) Then
  loc_11EDAEE:     Call Proc_302_67_11A057C(KeyCode, var_AE)
  loc_11EDAF9:     If (var_AE = &HFF) Then
  loc_11EDB14:       var_A8 = Me.FGrid.Col
  loc_11EDB5D:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 8)
  loc_11EDB72:     End If
  loc_11EDB72:   End If
  loc_11EDB75: Else
  loc_11EDB7C:   If (var_AC = CLng(2)) Then
  loc_11EDB89:     If (CLng(Shift) = &HD) Then
  loc_11EDB92:       Call Proc_302_67_11A057C(KeyCode, var_AE, 0, CByte((CLng(var_A8) + 1)))
  loc_11EDB9D:       If (var_AE = &HFF) Then
  loc_11EDBB8:         var_A8 = Me.FGrid.Col
  loc_11EDC01:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 8, 0)
  loc_11EDC16:       End If
  loc_11EDC16:     End If
  loc_11EDC19:   Else
  loc_11EDC20:     If Not (var_AC = CLng(4)) Then
  loc_11EDC2B:       If (var_AC = CLng("5")) Then
  loc_11EDC2E:       End If
  loc_11EDC6E:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_11EDC77:         Call Proc_302_67_11A057C(KeyCode, var_AE, CByte((CLng(var_A8) + 1)), 0, var_A8)
  loc_11EDC82:         If (var_AE = &HFF) Then
  loc_11EDC9D:           var_A8 = Me.FGrid.Col
  loc_11EDCE6:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 8, 0)
  loc_11EDCFB:         End If
  loc_11EDCFB:       End If
  loc_11EDCFE:     Else
  loc_11EDD05:       If (var_AC = CLng(6)) Then
  loc_11EDD48:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_11EDD51:           Call Proc_302_67_11A057C(KeyCode, var_AE, CByte((CLng(var_A8) + 1)), 0, var_A8)
  loc_11EDD5C:           If (var_AE = &HFF) Then
  loc_11EDD77:             var_A8 = Me.FGrid.Col
  loc_11EDDC0:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 8, 0)
  loc_11EDDD5:           End If
  loc_11EDDD5:         End If
  loc_11EDDD8:       Else
  loc_11EDDDF:         If Not (var_AC = CLng(6)) Then
  loc_11EDDE9:           If (var_AC = CLng(7)) Then
  loc_11EDDEC:           End If
  loc_11EDE2C:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_11EDE35:             Call Proc_302_67_11A057C(KeyCode, var_AE, CByte((CLng(var_A8) + 1)), 0, var_A8)
  loc_11EDE40:             If (var_AE = &HFF) Then
  loc_11EDE86:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 8, 0)
  loc_11EDE96:             End If
  loc_11EDE96:           End If
  loc_11EDE96:         End If
  loc_11EDE96:       End If
  loc_11EDE96:     End If
  loc_11EDE96:   End If
  loc_11EDE96: End If
  loc_11EDE96: Exit Sub
  loc_11EDE97: ' Referenced from: 11EDA08
  loc_11EDE97: Proc_6_60_E62BC4(3, 0, 0)
  loc_11EDE9C: Exit Sub
  loc_11EDE9D: CopyBytes 13567
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '10CA594
  'Data Table: 4D6588
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As MSHFlexGrid
  Dim var_94 As Variant
  Dim var_A0 As Long
  Dim var_A4 As String
  Dim var_A8 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim Me As Recordset15
  loc_10CA2B8: On Error Goto loc_10CA58D
  loc_10CA2BE: Proc_6_58_E054C0(arg_10)
  loc_10CA2C9: Proc_6_133_E7EF78(var_94)
  loc_10CA2DB: var_96 = KeyAscii
  loc_10CA2E4: If (var_96 = 0) Then
  loc_10CA2FA:   var_A0 = CLng(Me.FGrid.Col)
  loc_10CA30A:   If (var_A0 = CLng(3)) Then
  loc_10CA311:     Set var_9C = Me.TopCtrl1
  loc_10CA317:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A0)
  loc_10CA31F:     var_A4 = CStr(var_96)
  loc_10CA32B:     Set var_A8 = Me.FGrid
  loc_10CA37E:     If (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_10CA38B:       Set var_9C = Me.TxtGrid
  loc_10CA391:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, CVar(CLng(var_A8.Row)))
  loc_10CA3C2:       var_A4 = Me.Fields.Item(2).Name
  loc_10CA3FB:       Call MemSelGridKeyPress(var_A8, Me.FGrid, global_96, CInt(Me.FGrid.Col), var_A4, "14737632", "16777215")
  loc_10CA41A:       arg_10 = 0
  loc_10CA420:     Else
  loc_10CA424:       Set var_9C = Me.TopCtrl1
  loc_10CA42A:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(arg_10)
  loc_10CA443:       If (CStr((var_A4 = "Add")) = "Edit") Then
  loc_10CA446:       End If
  loc_10CA446:     End If
  loc_10CA449:   Else
  loc_10CA450:     If (var_A0 = CLng(2)) Then
  loc_10CA457:       Set var_9C = Me.TopCtrl1
  loc_10CA45D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(arg_10)
  loc_10CA465:       var_A4 = CStr(arg_10)
  loc_10CA471:       Set var_A8 = Me.FGrid
  loc_10CA480:       var_C8 = CVar(CLng(var_A8.Row)) 'Long
  loc_10CA4C4:       If (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_10CA4D1:         Set var_9C = Me.TxtGrid
  loc_10CA4D7:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8)
  loc_10CA4E9:         var_C8 = 1
  loc_10CA541:         Call MemSelGridKeyPress(var_A8, Me.FGrid, global_96, arg_10, Me.Fields.Item(var_C8).Name, "14737632", "16777215")
  loc_10CA560:         arg_10 = 0
  loc_10CA566:       Else
  loc_10CA56A:         Set var_9C = Me.TopCtrl1
  loc_10CA570:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(arg_10)
  loc_10CA578:         var_A4 = CStr(var_C8)
  loc_10CA589:         If (var_A4 = "Edit") Then
  loc_10CA58C:         End If
  loc_10CA58C:       End If
  loc_10CA58C:     End If
  loc_10CA58C:   End If
  loc_10CA58C: End If
  loc_10CA58C: Exit Sub
  loc_10CA58D: ' Referenced from: 10CA2B8
  loc_10CA58D: Proc_6_60_E62BC4((var_A4 = "Add"))
  loc_10CA592: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E30194
  'Data Table: 4D6588
  Dim var_9C As Long
  loc_E3016C: On Error Goto loc_E3018C
  loc_E30182: var_9C = CLng(Me.FGrid.Col)
  loc_E3018B: Exit Sub
  loc_E3018C: ' Referenced from: E3016C
  loc_E3018C: Proc_6_60_E62BC4(var_9C)
  loc_E30191: Exit Sub
  loc_E30192: BranchFVar 4096
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23E50
  'Data Table: 4D6588
  Dim arg_10 As Integer
  loc_E23E38: If (Cancel = 0) Then
  loc_E23E41:   Call Proc_302_67_11A057C(Cancel, var_88)
  loc_E23E4A:   arg_10 = Not(var_88)
  loc_E23E4D: End If
  loc_E23E4D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E4F8C4
  'Data Table: 4D6588
  loc_E4F8A2: Set var_88 = Me.Txt
  loc_E4F8A8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E4F8B6: Proc_6_74_E226B0(var_8C)
  loc_E4F8C2: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'EDDC54
  'Data Table: 4D6588
  Dim var_86 As Integer
  loc_EDDBAA: If (CLng(Shift) = &H1B) Then
  loc_EDDBAD:   Exit Sub
  loc_EDDBAE: End If
  loc_EDDBB1: var_86 = KeyCode
  loc_EDDC0A: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_EDDC22:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EDDC2B:     Proc_6_75_E527CC(Shift, arg_14)
  loc_EDDC30:   End If
  loc_EDDC45:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EDDC4E:     Proc_6_76_E52838(Shift, arg_14)
  loc_EDDC53:   End If
  loc_EDDC53: End If
  loc_EDDC53: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E06D00
  'Data Table: 4D6588
  Dim var_86 As Integer
  loc_E06CF3: Proc_6_58_E054C0(arg_10)
  loc_E06CFB: var_86 = KeyAscii
  loc_E06CFE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFEBC4
  'Data Table: 4D6588
  Dim var_86 As Integer
  loc_DFEBBF: var_86 = KeyCode
  loc_DFEBC2: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F51C
  'Data Table: 4D6588
  loc_E4F4FA: Set var_88 = Me.Txt
  loc_E4F500: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F50E: Proc_6_73_E22704(var_8C)
  loc_E4F51A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '103BD6C
  'Data Table: 4D6588
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_A0 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  loc_103BB27: var_86 = Cancel
  loc_103BB32: If (var_86 = CInt(0)) Then
  loc_103BB40:   Set var_8C = Me.Txt
  loc_103BB46:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_103BB6F:   If (Proc_6_27_EA565C(var_90, "For Month") = 0) Then
  loc_103BB7D:     Set var_8C = Me.Txt
  loc_103BB83:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_103BB8B:     var_90.SetFocus
  loc_103BB99:     arg_10 = &HFF
  loc_103BB9C:     Exit Sub
  loc_103BB9D:   End If
  loc_103BBA7:   Set var_8C = Me.Txt
  loc_103BBAD:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103BBCD:   Set var_9C = Me.Txt
  loc_103BBD3:   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_103BBDB:   var_A0.Text = Proc_6_120_133A1D8(var_90, arg_10)
  loc_103BBEE:   Call Proc_302_62_11A12F4(var_86)
  loc_103BBF6: Else
  loc_103BBFE:   If (var_86 = CInt(1)) Then
  loc_103BC0C:     Set var_8C = Me.Txt
  loc_103BC12:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_103BC3B:     If (Proc_6_27_EA565C(var_90, "Bill Date") = 0) Then
  loc_103BC49:       Set var_8C = Me.Txt
  loc_103BC4F:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_103BC57:       var_90.SetFocus
  loc_103BC65:       arg_10 = &HFF
  loc_103BC68:       Exit Sub
  loc_103BC69:     End If
  loc_103BC73:     Set var_8C = Me.Txt
  loc_103BC79:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103BC99:     Set var_9C = Me.Txt
  loc_103BC9F:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_103BCA7:     var_A0.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_103BCC4:     Set var_8C = Me.Txt
  loc_103BCCA:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_103BD05:     Set var_94 = Me.Txt
  loc_103BD0B:     Call 0.Method_Txt_Validate0 (CInt(0), var_9C, CStr(Format(CVar(var_90), "MMM/yyyy")))
  loc_103BD13:     var_9C.Text = 1
  loc_103BD2D:     Call Proc_302_62_11A12F4(1)
  loc_103BD45:     Me.FGrid.Row = 1
  loc_103BD60:     Me.FGrid.Col = 2
  loc_103BD68:   End If
  loc_103BD68: End If
  loc_103BD68: Exit Sub
End Sub

Private Sub CmdRefresh_UnknownEvent_9 'DFEA04
  'Data Table: 4D6588
  loc_DFE9FC: Call TopCtrl1_UnknownEvent_15()
  loc_DFEA01: Exit Sub
End Sub

Private Sub CmdEdit_UnknownEvent_9 'DFEB54
  'Data Table: 4D6588
  loc_DFEB4C: Call TopCtrl1_UnknownEvent_D()
  loc_DFEB51: Exit Sub
  loc_DFEB52: CExtInstUnk
End Sub

Private Sub CmdSave_UnknownEvent_9 'DFE684
  'Data Table: 4D6588
  loc_DFE67C: Call TopCtrl1_UnknownEvent_16()
  loc_DFE681: Exit Sub
End Sub

Private Sub FacilityListView_UnknownEvent_C 'E018AC
  'Data Table: 4D6588
  loc_E018A7: Set var_88 = Cancel 
  loc_E018AB: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1B36C
  'Data Table: 4D6588
  loc_E1B361: Me.Global.Unload Me
  loc_E1B369: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'EB0778
  'Data Table: 4D6588
  Dim var_88 As TextBox
  loc_EB06E7: If (Proc_183_12_E7A3E4(KeyCode) = &HFF) Then
  loc_EB06EE:   Set var_88 = Me.FGrid
  loc_EB070B:   Me.TxtSearch.Visible = False
  loc_EB0713: End If
  loc_EB071D: If (CLng(KeyCode) = &H2E) Then
  loc_EB072D:   Me.TxtSearch.Text = vbNullString
  loc_EB0735: End If
  loc_EB074A: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EB0751:   Set var_88 = Me.FGrid
  loc_EB076E:   Me.TxtSearch.Visible = False
  loc_EB0776: End If
  loc_EB0776: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'EF0C7C
  'Data Table: 4D6588
  Dim Me As Recordset15
  Dim KeyAscii As Integer
  loc_EF0C1A: var_B4 = Me.Fields.Item(CVar(CLng(Me.FGrid.Col))).Name
  loc_EF0C22: var_C8 = "15595518"
  loc_EF0C2B: var_C4 = "16777152"
  loc_EF0C53: Proc_183_11_113C750(Me.TxtSearch, Me.FGrid, global_96, KeyAscii)
  loc_EF0C77: KeyAscii = 0
  loc_EF0C7A: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E58568
  'Data Table: 4D6588
  Dim var_88 As TextBox
  loc_E58535: Me.TxtSearch.Text = vbNullString
  loc_E58541: Set var_88 = Me.FGrid
  loc_E5855E: Me.TxtSearch.Visible = False
  loc_E58566: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E55C2C
  'Data Table: 4D6588
  Dim var_88 As TextBox
  loc_E55BF9: Me.TxtSearch.Text = vbNullString
  loc_E55C05: Set var_88 = Me.FGrid
  loc_E55C22: Me.TxtSearch.Visible = False
  loc_E55C2A: Exit Sub
End Sub

Private Sub CmdAdd_UnknownEvent_9 'DFEDF4
  'Data Table: 4D6588
  loc_DFEDEC: Call TopCtrl1_UnknownEvent_A()
  loc_DFEDF1: Exit Sub
  loc_DFEDF2: arg_1008 = 
End Sub

Public Function MasterFormExitGet() '4D7554
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4D7563
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '4D7572
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '4D7581
  SearchCode = Value
End Sub

Public Function global_60Get() '4D7590
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4D759F
  global_60 = Value
End Sub

Public Function global_64Get() '4D75AE
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '4D75BD
  global_64 = Value
End Sub

Public Sub global_64Set(Value) '4D75CC
  global_64 = Value
End Sub

Public Function global_80Get() '4D75DB
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '4D75EA
  global_80 = Value
End Sub

Public Sub global_80Set(Value) '4D75F9
  global_80 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E8C4FC
  'Data Table: 4D6588
  Dim Me As Recordset15
  loc_E8C492: On Error Goto loc_E8C4F6
  loc_E8C49B: Me.MoveFirst
  loc_E8C4C5: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E8C4ED: Proc_5_0_110649C(&HFF, Me, global_100)
  loc_E8C4F5: Exit Sub
  loc_E8C4F6: ' Referenced from: E8C492
  loc_E8C4F6: Proc_6_60_E62BC4(0)
  loc_E8C4FB: Exit Sub
End Sub

Public Sub MemSelGridKeyPress(Txt, FGrid, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '1150208
  'Data Table: 4D6588
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim KeyAscii As Integer
  loc_114FE70: On Error Goto loc_11501FF
  loc_114FE86: If (Me.rows < 1) Then
  loc_114FE89:   Exit Sub
  loc_114FE8A: End If
  loc_114FE9E: If (Me.RecordCount <= 0) Then
  loc_114FEAA:   Me.TEXT = vbNullString
  loc_114FEAE:   Exit Sub
  loc_114FEAF: End If
  loc_114FECB: If (((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Or (KeyAscii = 0)) Then
  loc_114FED8:   Me.CellBackColor = CVar(CellBackColLeave)
  loc_114FEDC:   Exit Sub
  loc_114FEDD: End If
  loc_114FEE7: If (CLng(KeyAscii) = 8) Then
  loc_114FF01:   If (Len(Me.SelText) > 1) Then
  loc_114FF15:     var_E0 = (Len(Me.SelText) - 1)
  loc_114FF1D:     Me.SelLength = var_E0
  loc_114FF2D:     var_8C = CStr(Me.SelText)
  loc_114FF36:   Else
  loc_114FF3F:     Me.TEXT = vbNullString
  loc_114FF46:     Call Me.SetFocus
  loc_114FF54:     Me.Visible = False
  loc_114FF58:     Exit Sub
  loc_114FF59:   End If
  loc_114FF5C: Else
  loc_114FF73:   var_E0 = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_114FF78:   var_8C = CStr(var_E0)
  loc_114FF84: End If
  loc_114FFA1: var_8C = Replace(var_8C, "'", "''", 1, -1, 0)
  loc_114FFA7: Me.Recordset15.MoveFirst
  loc_114FFE4: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_1150027:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_8C)) & vbNullString, 0, 1
  loc_115003C: Else
  loc_115006C:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_8C & "*'", 0, 1
  loc_115007C: End If
  loc_115007E: KeyAscii = 0
  loc_11500AA: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_11500B7:   Me.CellBackColor = CVar(CellBackColLeave)
  loc_11500D1:   Me.Row = CVar(Me.Recordset15.AbsolutePosition)
  loc_11500DF:   Me.CellBackColor = CVar(CellBackColEnter)
  loc_1150112:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_115012C:   Me.SelLength = CVar(Len(var_8C))
  loc_1150140:   var_E0 = (Me.CellLeft + Me.left)
  loc_1150148:   Me.left = var_E0
  loc_1150165:   var_E0 = (Me.CellTop + Me.top)
  loc_115016D:   Me.top = var_E0
  loc_115018C:   If (Me.Visible = False) Then
  loc_1150196:     Me.Visible = True
  loc_115019A:     var_9C = 0
  loc_11501A3:     Call Me.ZOrder
  loc_11501AC:     Call Me.SetFocus
  loc_11501BE:     Me.BackColor = Me.CellBackColor
  loc_11501D1:     Me.ForeColor = Me.CellForeColor
  loc_11501E4:     Me.width = Me.CellWidth
  loc_11501F7:     Me.height = Me.CellHeight
  loc_11501FE:   End If
  loc_11501FE: End If
  loc_11501FE: Exit Sub
  loc_11501FF: ' Referenced from: 114FE70
  loc_11501FF: Proc_6_60_E62BC4(var_9C, KeyAscii, var_9C)
  loc_1150204: Exit Sub
End Sub

Public Sub Proc_302_61_DFEE60
  'Data Table: 4D6588
  Dim arg_7FFF As Double
  loc_DFEE5C: Exit Sub
  loc_DFEE5D: arg_7FFF = 
End Sub

Public Sub Proc_302_62_11A12F4
  'Data Table: 4D6588
  Dim var_8C As String
  Dim unk_4D658C As Connection15
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim Me As Recordset15
  Dim var_86 As Integer
  Dim var_B0 As Variant
  Dim var_110 As Variant
  loc_11A0EEC: var_8C = "Select Code,Name,MobileNo,Add1,BirthDate,Anniversary,CityName From GuestProf Where POS=1 And (LOGSITE_CODE='" & MemVar_1F92078
  loc_11A0EFC: unk_4D658C.Execute var_8C & "' or LOGSITE_CODE='HO') Order By Name", var_B0, -1
  loc_11A0F0D: Set global_96 = var_B4
  loc_11A0F35: Me.FGrid.Rows = 1
  loc_11A0F54: If (Me.RecordCount = 0) Then
  loc_11A0F6A:   Me.FGrid.Rows = 2
  loc_11A0F85:   Me.FGrid.FixedRows = 1
  loc_11A0F8D:   Exit Sub
  loc_11A0F8E: End If
  loc_11A0FA5: If (Me.RecordCount > 0) Then
  loc_11A0FAA:   var_86 = 1
  loc_11A0FAD:   ' Referenced from: 11A1298
  loc_11A0FBF:   If Not(Me.EOF) Then
  loc_11A0FC7:     var_B0 = CVar(CStr(var_86)) 'String
  loc_11A0FCF:     Set var_B4 = Me.FGrid
  loc_11A101F:     var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")), CVar(CLng(1)), CVar(CLng(var_86)), FGrid.DispID_10000)) 'String
  loc_11A102D:     LateIdCallSt
  loc_11A107F:     var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")), CVar(CLng(2)), CVar(CLng(var_86)), Me.FGrid)) 'String
  loc_11A108D:     LateIdCallSt
  loc_11A10DF:     var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("MobileNo")), CVar(CLng(3)), CVar(CLng(var_86)), Me.FGrid, var_110)) 'String
  loc_11A10ED:     LateIdCallSt
  loc_11A113F:     var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Add1")), CVar(CLng(4)), CVar(CLng(var_86)), Me.FGrid, var_110)) 'String
  loc_11A114D:     LateIdCallSt
  loc_11A11A0:     var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("CityName")), CVar(CLng("5")), CVar(CLng(var_86)), Me.FGrid, var_110)) 'String
  loc_11A11AE:     LateIdCallSt
  loc_11A1200:     var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("BirthDate")), CVar(CLng(6)), CVar(CLng(var_86)), Me.FGrid, var_110)) 'String
  loc_11A120E:     LateIdCallSt
  loc_11A1260:     var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Anniversary")), CVar(CLng(7)), CVar(CLng(var_86)), Me.FGrid, var_110)) 'String
  loc_11A1268:     Set var_124 = Me.FGrid
  loc_11A126E:     LateIdCallSt
  loc_11A128A:     var_86 = (var_86 + 1)
  loc_11A1293:     Me.MoveNext
  loc_11A1298:     GoTo loc_11A0FAD
  loc_11A129B:   End If
  loc_11A129B: End If
  loc_11A12BA: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_11A12BD:   var_A0 = "1"
  loc_11A12C7:   Set var_B4 = Me.FGrid
  loc_11A12D8: End If
  loc_11A12EB: Me.FGrid.FixedRows = 1
  loc_11A12F3: Exit Sub
End Sub

Public Sub Proc_302_63_F9C210
  'Data Table: 4D6588
  Dim var_8C As Variant
  Dim Me As Recordset15
  Dim var_168 As String
  loc_F9C0D7: Me.FacilityListView.ListItems.Clear
  loc_F9C0FD: If (Me.RecordCount > 0) Then
  loc_F9C106:   Me.MoveFirst
  loc_F9C10B:   ' Referenced from: F9C1F7
  loc_F9C11D:   If Not(Me.EOF) Then
  loc_F9C17E:     Me.FacilityListView.ListItems.Add var_EC, var_10C, CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))), var_13C, var_15C
  loc_F9C1D6:     var_168 = Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")))
  loc_F9C1DE:     var_164.SubItems = 1
  loc_F9C1F2:     Me.MoveNext
  loc_F9C1F7:     GoTo loc_F9C10B
  loc_F9C1FA:   End If
  loc_F9C1FA: End If
  loc_F9C1FE: Set var_8C = Me.FacilityListView
  loc_F9C20F: Exit Sub
End Sub

Public Sub Proc_302_64_115E914
  'Data Table: 4D6588
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_115E54C: On Error Goto loc_115E90D
  loc_115E553: Set var_88 = Me.FGrid
  loc_115E561: var_88.Top = CVar(CDbl(&H19))
  loc_115E571: var_88.Left = CVar(CDbl(&H19))
  loc_115E582: var_88.Height = CVar(CDbl(8700))
  loc_115E593: var_88.Width = CVar(CDbl(13700))
  loc_115E5A4: var_88.Cols = 9
  loc_115E5B5: var_88.Rows = 2
  loc_115E5CE: global_84 = CStr(CLng(var_88.BackColor))
  loc_115E5D8: var_98 = 0
  loc_115E5E1: var_CC = &H64
  loc_115E5ED: LateIdCallSt
  loc_115E5F8: var_98 = CVar(CLng(1)) 'Long
  loc_115E5FD: var_CC = 0
  loc_115E609: LateIdCallSt
  loc_115E611: var_98 = 0
  loc_115E61D: var_CC = CVar(CLng(1)) 'Long
  loc_115E622: var_EC = "Code"
  loc_115E62B: LateIdCallSt
  loc_115E636: var_98 = CVar(CLng(1)) 'Long
  loc_115E641: var_CC = CVar(CInt(1)) 'Integer
  loc_115E648: LateIdCallSt
  loc_115E653: var_98 = CVar(CLng(2)) 'Long
  loc_115E658: var_CC = &HDAC
  loc_115E664: LateIdCallSt
  loc_115E66C: var_98 = 0
  loc_115E678: var_CC = CVar(CLng(2)) 'Long
  loc_115E67D: var_EC = "Name"
  loc_115E686: LateIdCallSt
  loc_115E691: var_98 = CVar(CLng(2)) 'Long
  loc_115E69C: var_CC = CVar(CInt(1)) 'Integer
  loc_115E6A3: LateIdCallSt
  loc_115E6AE: var_98 = CVar(CLng(3)) 'Long
  loc_115E6B3: var_CC = &H578
  loc_115E6BF: LateIdCallSt
  loc_115E6C7: var_98 = 0
  loc_115E6D3: var_CC = CVar(CLng(3)) 'Long
  loc_115E6D8: var_EC = "Mobile No."
  loc_115E6E1: LateIdCallSt
  loc_115E6EC: var_98 = CVar(CLng(3)) 'Long
  loc_115E6F7: var_CC = CVar(CInt(1)) 'Integer
  loc_115E6FE: LateIdCallSt
  loc_115E709: var_98 = CVar(CLng(4)) 'Long
  loc_115E70E: var_CC = &HFA0
  loc_115E71A: LateIdCallSt
  loc_115E722: var_98 = 0
  loc_115E72E: var_CC = CVar(CLng(4)) 'Long
  loc_115E733: var_EC = "Address"
  loc_115E73C: LateIdCallSt
  loc_115E747: var_98 = CVar(CLng(4)) 'Long
  loc_115E752: var_CC = CVar(CInt(1)) 'Integer
  loc_115E759: LateIdCallSt
  loc_115E764: var_98 = CVar(CLng(4)) 'Long
  loc_115E76F: var_CC = CVar(CInt(1)) 'Integer
  loc_115E776: LateIdCallSt
  loc_115E782: var_98 = CVar(CLng("5")) 'Long
  loc_115E787: var_CC = &H708
  loc_115E793: LateIdCallSt
  loc_115E79B: var_98 = 0
  loc_115E7A8: var_CC = CVar(CLng("5")) 'Long
  loc_115E7AD: var_EC = "City"
  loc_115E7B6: LateIdCallSt
  loc_115E7C2: var_98 = CVar(CLng("5")) 'Long
  loc_115E7CD: var_CC = CVar(CInt(1)) 'Integer
  loc_115E7D4: LateIdCallSt
  loc_115E7E0: var_98 = CVar(CLng("5")) 'Long
  loc_115E7EB: var_CC = CVar(CInt(1)) 'Integer
  loc_115E7F2: LateIdCallSt
  loc_115E7FD: var_98 = CVar(CLng(6)) 'Long
  loc_115E802: var_CC = &H514
  loc_115E80E: LateIdCallSt
  loc_115E816: var_98 = 0
  loc_115E822: var_CC = CVar(CLng(6)) 'Long
  loc_115E827: var_EC = "Date of Birth"
  loc_115E830: LateIdCallSt
  loc_115E83B: var_98 = CVar(CLng(6)) 'Long
  loc_115E846: var_CC = CVar(CInt(7)) 'Integer
  loc_115E84D: LateIdCallSt
  loc_115E858: var_98 = CVar(CLng(6)) 'Long
  loc_115E863: var_CC = CVar(CInt(7)) 'Integer
  loc_115E86A: LateIdCallSt
  loc_115E875: var_98 = CVar(CLng(7)) 'Long
  loc_115E87A: var_CC = &H514
  loc_115E886: LateIdCallSt
  loc_115E88E: var_98 = 0
  loc_115E89A: var_CC = CVar(CLng(7)) 'Long
  loc_115E89F: var_EC = "Anniversary"
  loc_115E8A8: LateIdCallSt
  loc_115E8B3: var_98 = CVar(CLng(7)) 'Long
  loc_115E8BE: var_CC = CVar(CInt(7)) 'Integer
  loc_115E8C5: LateIdCallSt
  loc_115E8D0: var_98 = CVar(CLng(7)) 'Long
  loc_115E8DB: var_CC = CVar(CInt(7)) 'Integer
  loc_115E8E2: LateIdCallSt
  loc_115E8ED: var_98 = CVar(CLng(8)) 'Long
  loc_115E8F2: var_CC = 0
  loc_115E8FE: LateIdCallSt
  loc_115E908: Set var_88 = Nothing 
  loc_115E90C: Exit Sub
  loc_115E90D: ' Referenced from: 115E54C
  loc_115E90D: Proc_6_60_E62BC4(var_88, var_CC, var_98, var_88, var_CC, var_98, var_88, var_CC)
  loc_115E912: Exit Sub
End Sub

Public Sub Proc_302_65_DFF644
  'Data Table: 4D6588
  loc_DFF63C: Proc_302_65_DFF644 = 
End Sub

Public Sub Proc_302_66_E44EC4
  'Data Table: 4D6588
  loc_E44EA0: Set var_88 = Me.TopCtrl1
  loc_E44EA6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_E44EBF: If (CStr() = "Browse") Then
  loc_E44EC2:   Exit Sub
  loc_E44EC3: End If
  loc_E44EC3: Exit Sub
End Sub

Public Sub Proc_302_67_11A057C
  'Data Table: 4D6588
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As String
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As MSHFlexGrid
  Dim var_110 As String
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_148 As MSHFlexGrid
  Dim var_1D0 As Variant
  loc_11A01B7: var_A0 = CLng(Me.FGrid.Col)
  loc_11A01C7: If Not (var_A0 = CLng(2)) Then
  loc_11A01D1:   If (var_A0 = CLng(3)) Then
  loc_11A01D4:   End If
  loc_11A01D8:   Set var_8C = Me.TopCtrl1
  loc_11A01DE:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_6803000C(var_A0)
  loc_11A01E6:   var_A4 = CStr()
  loc_11A01F2:   Set var_A8 = Me.FGrid
  loc_11A0201:   var_C8 = CVar(CLng(var_A8.Row)) 'Long
  loc_11A0223:   var_110 = CStr(Me.FGrid.TextMatrix))
  loc_11A0245:   If (CVar(CLng(1)) Or (var_110 = vbNullString)) Then
  loc_11A025B:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A0284:     Set var_8C = Me.TxtGrid
  loc_11A028A:     Call 0.Method_Proc_302_67_11A057C0 (0, var_A8, var_A4, CVar(CLng(Me.FGrid.Col)))
  loc_11A0292:     var_C8 = var_A8.Text
  loc_11A02A9:     var_134 = CVar(CStr(Trim(CVar(var_A4)))) 'String
  loc_11A02B1:     Set var_148 = Me.FGrid
  loc_11A02B7:     LateIdCallSt
  loc_11A02EC:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A02F4:     var_E8 = CVar(CLng(8)) 'Long
  loc_11A02F9:     var_144 = "T"
  loc_11A0303:     Set var_A8 = Me.FGrid
  loc_11A0309:     LateIdCallSt
  loc_11A031B:   End If
  loc_11A031E: Else
  loc_11A0325:   If Not (var_A0 = CLng(4)) Then
  loc_11A0330:     If (var_A0 = CLng("5")) Then
  loc_11A0333:     End If
  loc_11A034F:     Set var_114 = Me.FGrid
  loc_11A036F:     Set var_8C = Me.TxtGrid
  loc_11A0375:     Call 0.Method_Proc_302_67_11A057C0 (0, var_A8, var_A4, CVar(CLng(var_114.Col)), CVar(CLng(Me.FGrid.Row)), var_A8, var_144)
  loc_11A037D:     var_E8 = var_A8.Text
  loc_11A0394:     var_134 = CVar(CStr(Trim(CVar(var_A4)))) 'String
  loc_11A039C:     Set var_148 = Me.FGrid
  loc_11A03A2:     LateIdCallSt
  loc_11A03D7:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A03DF:     var_E8 = CVar(CLng(8)) 'Long
  loc_11A03E4:     var_144 = "T"
  loc_11A03EE:     Set var_A8 = Me.FGrid
  loc_11A03F4:     LateIdCallSt
  loc_11A0409:   Else
  loc_11A0410:     If Not (var_A0 = CLng(6)) Then
  loc_11A041A:       If (var_A0 = CLng(7)) Then
  loc_11A041D:       End If
  loc_11A0429:       Set var_8C = Me.TxtGrid
  loc_11A042F:       Call 0.Method_Proc_302_67_11A057C0 (0, var_A8, var_A4, var_A8, var_144, var_E8, var_C8)
  loc_11A0437:       var_148 = var_A8.Text
  loc_11A0456:       Set var_FC = Me.TxtGrid
  loc_11A045C:       Call 0.Method_Proc_302_67_11A057C0 (0, var_114, var_110, var_134, var_C8)
  loc_11A0464:       var_148 = var_114.Text
  loc_11A049A:       var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A04B2:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11A04DF:       var_19C = IIf((Trim(CVar(var_A4)) <> vbNullString), CVar(Proc_6_34_14ECF20(CStr(Trim(CVar(var_110))), Trim(CVar(var_110)))), vbNullString)
  loc_11A04E8:       var_1D0 = CVar(CStr(var_19C)) 'String
  loc_11A04F0:       Set var_1E4 = Me.FGrid
  loc_11A04F6:       LateIdCallSt
  loc_11A0542:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11A054A:       var_E8 = CVar(CLng(8)) 'Long
  loc_11A054F:       var_144 = "T"
  loc_11A0559:       Set var_A8 = Me.FGrid
  loc_11A055F:       LateIdCallSt
  loc_11A0571:     End If
  loc_11A0571:   End If
  loc_11A0571: End If
  loc_11A0576: Proc_302_67_11A057C = &HFF
End Sub

Public Sub Proc_302_68_F164A0
  'Data Table: 4D6588
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F163B6: Set var_8C = Me.Txt
  loc_F163BC: Call 0.Method_Proc_302_68_F164A0C (var_8E, var_86)
  loc_F163CC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F163E2:   Set var_8C = Me.Txt
  loc_F163E8:   Call 0.Method_Proc_302_68_F164A00 (CInt(var_86), var_98)
  loc_F163F0:   var_98.Text = vbNullString
  loc_F1640C:   Set var_8C = Me.Txt
  loc_F16412:   Call 0.Method_Proc_302_68_F164A00 (CInt(var_86), var_98)
  loc_F1641A:   var_98.Tag = vbNullString
  loc_F16429: Next var_92 'Byte
  loc_F16442: Me.FGrid.Rows = 1
  loc_F1645F: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F16467: Set var_98 = Me.FGrid
  loc_F16496: Me.FGrid.FixedRows = 1
  loc_F1649E: Exit Sub
End Sub

Public Sub Proc_302_69_E78A54(arg_C) 'E78A54
  'Data Table: 4D6588
  Dim var_98 As TextBox
  loc_E78A02: Set var_8C = Me.Txt
  loc_E78A08: Call 0.Method_Proc_302_69_E78A54C (var_8E, var_86)
  loc_E78A18: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78A2E:   Set var_8C = Me.Txt
  loc_E78A34:   Call 0.Method_Proc_302_69_E78A540 (CInt(var_86), var_98)
  loc_E78A3C:   var_98.Enabled = arg_C
  loc_E78A4B: Next var_92 'Byte
  loc_E78A51: Exit Sub
End Sub

Public Sub Proc_302_70_DFB888
  'Data Table: 4D6588
  loc_DFB884: Exit Sub
End Sub
