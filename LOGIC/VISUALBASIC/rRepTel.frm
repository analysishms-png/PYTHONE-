VERSION 5.00
Begin VB.Form rRepTel
  Caption = "ReprtForm"
  ForeColor = &HE0E0E0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form3"
  MaxButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 165
  ClientTop = 345
  ClientWidth = 11790
  ClientHeight = 7560
  LockControls = -1  'True
  Begin CommandButton BtnParam
    Caption = "&For Site"
    BackColor = &HC0C0C0&
    Left = 9375
    Top = 0
    Width = 1305
    Height = 375
    Visible = 0   'False
    TabIndex = 19
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DownPicture = "rRepTel.frx":0
    ToolTipText = "Works Only at Head Office"
  End
  Begin Frame Frame1
    Caption = "Site Selection"
    Left = 6630
    Top = 240
    Width = 4065
    Height = 3540
    Visible = 0   'False
    TabIndex = 20
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox txtSite
      Index = 0
      Left = 1095
      Top = 285
      Width = 2820
      Height = 360
      TabIndex = 22
    End
    Begin CommandButton Command1
      Caption = "&OK"
      Left = 1485
      Top = 3060
      Width = 1485
      Height = 390
      TabIndex = 21
    End
    Begin DataGrid DGSite
      Left = 1095
      Top = 660
      Width = 2835
      Height = 2355
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 23
    End
    Begin Label Label1
      Caption = "Site Name"
      Left = 120
      Top = 315
      Width = 900
      Height = 270
      TabIndex = 24
    End
  End
  Begin DataGrid DGPNTNo
    Left = 6975
    Top = 4350
    Width = 3375
    Height = 2295
    Visible = 0   'False
    TabIndex = 5
  End
  Begin CheckBox Check1
    Caption = "All"
    Index = 1
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 375
    Top = 1860
    Width = 915
    Height = 195
    Visible = 0   'False
    TabIndex = 13
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
  Begin CheckBox Check1
    Caption = "All"
    Index = 2
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 5145
    Top = 1830
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 12
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
  Begin CheckBox Check1
    Caption = "All"
    Index = 3
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 360
    Top = 3885
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 11
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
  Begin CheckBox Check1
    Caption = "All"
    Index = 4
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 5175
    Top = 3900
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 10
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
  Begin TextBox TxtSearch
    BackColor = &HE0E0E0&
    Left = 0
    Top = 1470
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 510
    Top = 30
    Width = 690
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 1155
    Top = 5055
    Width = 2415
    Height = 1875
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 2325
      Height = 1830
      TabStop = 0   'False
      TabIndex = 7
    End
  End
  Begin CommandButton BTNEXIT
    Caption = "E&xit"
    Left = 5460
    Top = 7185
    Width = 1650
    Height = 375
    TabIndex = 1
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Exit Form"
    Style = 1
  End
  Begin CommandButton BTNPRINT
    Caption = "&Execute Report"
    Index = 0
    Left = 3840
    Top = 7185
    Width = 1620
    Height = 375
    TabIndex = 0
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Print Report"
    Style = 1
  End
  Begin PictureBox Pic
    BackColor = &H808080&
    Left = 0
    Top = 7125
    Width = 11790
    Height = 435
    Enabled = 0   'False
    TabIndex = 3
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 2 'Align Bottom
    Begin Label LblTitle
      Caption = "LblTitle"
      BackColor = &H0&
      ForeColor = &HFFFFFF&
      Left = 7230
      Top = 0
      Width = 4470
      Height = 315
      TabIndex = 2
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin TopCtrl TopCtrl1
    Left = 195
    Top = 270
    Width = 660
    Height = 375
    Visible = 0   'False
    TabIndex = 4
  End
  Begin MSHFlexGrid GridSel
    Index = 1
    Left = 315
    Top = 1785
    Width = 4695
    Height = 1650
    Visible = 0   'False
    TabIndex = 14
  End
  Begin MSHFlexGrid GridSel
    Index = 2
    Left = 5085
    Top = 1785
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 15
  End
  Begin MSHFlexGrid GridSel
    Index = 4
    Left = 5100
    Top = 3810
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 16
  End
  Begin MSHFlexGrid GridSel
    Index = 3
    Left = 300
    Top = 3825
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 17
  End
  Begin MSHFlexGrid FGrid
    Left = 1725
    Top = 75
    Width = 4455
    Height = 1560
    TabIndex = 18
  End
End

Attribute VB_Name = "rRepTel"

Private global_192 As Integer
Private global_194 As Integer
Private global_156 As Integer
Private global_158 As Integer
Private global_124 As Integer
Private global_136 As Integer
Private global_140 As Variant

Private Sub txtSite_GotFocus(Index As Integer) 'FCA9E8
  'Data Table: 4E4428
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_9C As TextBox
  Dim var_D8 As Variant
  loc_FCA848: On Error Goto loc_FCA9BD
  loc_FCA84E: var_8A = Index
  loc_FCA859: If (var_8A = CInt(0)) Then
  loc_FCA8AA:   Set var_98 = Me.txtSite
  loc_FCA8B0:   Call 0.Method_txtSite_GotFocus0 (Index, var_9C, var_A0)
  loc_FCA8B8:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_FCA8D0:   If (var_8A Or (var_A0 = vbNullString)) Then
  loc_FCA8D3:     Exit Sub
  loc_FCA8D4:   End If
  loc_FCA8E1:   Set var_98 = Me.txtSite
  loc_FCA8E7:   Call 0.Method_txtSite_GotFocus0 (Index, var_9C)
  loc_FCA8EF:   var_A0 = var_9C.Text
  loc_FCA8F7:   var_D8 = CVar(var_A0) 'String
  loc_FCA93C:   If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_FCA945:     Me.MoveFirst
  loc_FCA96A:     Set var_98 = Me.txtSite
  loc_FCA970:     Call 0.Method_txtSite_GotFocus0 (Index, var_9C, var_A0, "Name =")
  loc_FCA978:     0 = var_9C.Text
  loc_FCA986:     Proc_6_17_EAA2B0(var_D8, CVar(var_A0))
  loc_FCA99C:     Me.Find CStr(1 & var_D8), var_FC, 
  loc_FCA9B4:   End If
  loc_FCA9B4: End If
  loc_FCA9B9: Set var_88 = Nothing
  loc_FCA9BC: Exit Sub
  loc_FCA9BD: ' Referenced from: FCA848
  loc_FCA9C3: Call 0.Method_arg_50 (var_A0)
  loc_FCA9CB: var_100 = "txtSite_GotFocus"
  loc_FCA9D8: Proc_6_152_1077F50(var_A0)
  loc_FCA9E4: Exit Sub
End Sub

Private Sub txtSite_KeyDown(KeyCode As Integer, Shift As Integer) 'EFCBAC
  'Data Table: 4E4428
  loc_EFCAE8: On Error Goto loc_EFCB81
  loc_EFCAF1: If (Shift = &HD) Then
  loc_EFCAFC:   var_88 = "	"
  loc_EFCB02:   Proc_303_0_FB9B68(var_88)
  loc_EFCB0A: End If
  loc_EFCB18: If (KeyCode = CInt(0)) Then
  loc_EFCB33:   Set var_A0 = Nothing
  loc_EFCB3E:   Set var_9C = Nothing
  loc_EFCB6C:   Proc_6_69_134A198(Me.DGSite, Me.txtSite, KeyCode, global_200, Shift, &HFF)
  loc_EFCB80: End If
  loc_EFCB80: Exit Sub
  loc_EFCB81: ' Referenced from: EFCAE8
  loc_EFCB87: Call 0.Method_arg_50 (var_88, 1, var_9C, var_A0)
  loc_EFCB9C: Proc_6_152_1077F50(var_88, "txtSite_KeyDown", 0)
  loc_EFCBA8: Exit Sub
End Sub

Private Sub txtSite_KeyPress(KeyAscii As Integer) 'EBF1EC
  'Data Table: 4E4428
  loc_EBF154: On Error Goto loc_EBF1C1
  loc_EBF165: If (KeyAscii = CInt(0)) Then
  loc_EBF184:   If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_EBF196:     var_A0 = "Name"
  loc_EBF1B1:     Proc_6_89_146F1AC(Me.txtSite, KeyAscii, global_200, arg_10)
  loc_EBF1C0:   End If
  loc_EBF1C0: End If
  loc_EBF1C0: Exit Sub
  loc_EBF1C1: ' Referenced from: EBF154
  loc_EBF1C7: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_EBF1DC: Proc_6_152_1077F50(var_A0, "txtSite_KeyPress")
  loc_EBF1E8: Exit Sub
End Sub

Private Sub txtSite_KeyUp(KeyCode As Integer, Shift As Integer) 'EDEAD8
  'Data Table: 4E4428
  loc_EDEA28: On Error Goto loc_EDEAAF
  loc_EDEA39: If (KeyCode = CInt(0)) Then
  loc_EDEA5F:   If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_EDEA70:     Call txtSite_KeyDown(KeyCode, global_156)
  loc_EDEA84:     var_A4 = "Name"
  loc_EDEA9F:     Proc_6_89_146F1AC(Me.txtSite, KeyCode, global_200, Shift)
  loc_EDEAAE:   End If
  loc_EDEAAE: End If
  loc_EDEAAE: Exit Sub
  loc_EDEAAF: ' Referenced from: EDEA28
  loc_EDEAB5: Call 0.Method_arg_50 (var_A4, var_A4, &HFF)
  loc_EDEACA: Proc_6_152_1077F50(var_A4, "txtSite_KeyUp")
  loc_EDEAD6: Exit Sub
End Sub

Private Sub txtSite_LostFocus(Index As Integer) 'E88BDC
  'Data Table: 4E4428
  loc_E88B70: On Error Goto loc_E88BB3
  loc_E88B7B: Call txtSite_Validate(Index)
  loc_E88B9B: If (Me.FrmList.Visible = &HFF) Then
  loc_E88BAA:   Me.FrmList.Visible = False
  loc_E88BB2: End If
  loc_E88BB2: Exit Sub
  loc_E88BB3: ' Referenced from: E88B70
  loc_E88BB9: Call 0.Method_arg_50 (var_90)
  loc_E88BCE: Proc_6_152_1077F50(var_90, "txtSite_LostFocus")
  loc_E88BDA: Exit Sub
End Sub

Private Sub txtSite_Validate(Cancel As Boolean) 'FD97D4
  'Data Table: 4E4428
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_FD960C: On Error Goto loc_FD97AB
  loc_FD9612: var_86 = Cancel
  loc_FD961D: If (var_86 = CInt(0)) Then
  loc_FD966E:   Set var_94 = Me.txtSite
  loc_FD9674:   Call 0.Method_txtSite_Validate0 (Cancel, var_98, var_9C)
  loc_FD967C:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_FD9694:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_FD96A5:     Set var_94 = Me.txtSite
  loc_FD96AB:     Call 0.Method_txtSite_Validate0 (CInt(0), var_98)
  loc_FD96B3:     var_98.Tag = vbNullString
  loc_FD96CD:     Set var_94 = Me.txtSite
  loc_FD96D3:     Call 0.Method_txtSite_Validate0 (CInt(0), var_98)
  loc_FD96DB:     var_98.Text = vbNullString
  loc_FD96EA:   Else
  loc_FD9726:     Set var_B0 = Me.txtSite
  loc_FD972C:     Call 0.Method_txtSite_Validate0 (CInt(0), var_B4)
  loc_FD9734:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD9778:     var_9C = CStr(Me.Fields.Item("Code").Value)
  loc_FD9786:     Set var_B0 = Me.txtSite
  loc_FD978C:     Call 0.Method_txtSite_Validate0 (CInt(0), var_B4)
  loc_FD9794:     var_B4.Tag = var_9C
  loc_FD97AA:   End If
  loc_FD97AA: End If
  loc_FD97AA: Exit Sub
  loc_FD97AB: ' Referenced from: FD960C
  loc_FD97B1: Call 0.Method_arg_50 (var_9C)
  loc_FD97B9: var_CC = "txtSite_Validate"
  loc_FD97C6: Proc_6_152_1077F50(var_9C)
  loc_FD97D2: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'F247D0
  'Data Table: 4E4428
  loc_F246D3: If (Proc_6_113_E6CF7C(KeyCode) = &HFF) Then
  loc_F246FE:   Set var_90 = Me.GridSel
  loc_F24704:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_F2472C:   Me.TxtSearch.Visible = False
  loc_F24734: End If
  loc_F2473E: If (CLng(KeyCode) = &H2E) Then
  loc_F2474E:   Me.TxtSearch.Text = vbNullString
  loc_F24756: End If
  loc_F2476B: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_F24796:   Set var_90 = Me.GridSel
  loc_F2479C:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94, Val(Me.TxtSearch.Tag))
  loc_F247C4:   Me.TxtSearch.Visible = False
  loc_F247CC: End If
  loc_F247CC: Exit Sub
  loc_F247CD: Loop Until GridSel.DispID_8001 'do at: F23BC7
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) '11D0268
  'Data Table: 4E4428
  Dim var_F4 As Double
  Dim var_A4 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim Me As Recordset15
  loc_11CFE31: var_90 = Me.TxtSearch.Tag
  loc_11CFE46: If (var_90 = CStr(1)) Then
  loc_11CFE9C:   Set var_A0 = Me.GridSel
  loc_11CFEA2:   Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4)
  loc_11CFF18:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(Val(Me.TxtSearch.Tag)), global_100, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CFF43: Else
  loc_11CFF52:   If (var_90 = CStr(2)) Then
  loc_11CFF7D:     var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CFFA8:     Set var_A0 = Me.GridSel
  loc_11CFFAE:     Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11D0024:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_104, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11D004F:   Else
  loc_11D005E:     If (var_90 = CStr(3)) Then
  loc_11D0089:       var_F4 = Val(Me.TxtSearch.Tag)
  loc_11D00B4:       Set var_A0 = Me.GridSel
  loc_11D00BA:       Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11D00C2:       var_B4 = var_A4.Col
  loc_11D0130:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_108, KeyAscii, Me.Fields.Item(CVar(CLng(var_B4))).Name, CLng("16777152"), CLng("15595518"))
  loc_11D015B:     Else
  loc_11D016A:       If (var_90 = CStr(4)) Then
  loc_11D0195:         var_F4 = Val(Me.TxtSearch.Tag)
  loc_11D01C0:         Set var_A0 = Me.GridSel
  loc_11D01C6:         Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4, var_B4)
  loc_11D023C:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_112, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11D0264:       End If
  loc_11D0264:     End If
  loc_11D0264:   End If
  loc_11D0264: End If
  loc_11D0264: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E8F620
  'Data Table: 4E4428
  loc_E8F5B9: Me.TxtSearch.Text = vbNullString
  loc_E8F5E9: Set var_90 = Me.GridSel
  loc_E8F5EF: Call 0.Method_TxtSearch_LostFocus0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E8F617: Me.TxtSearch.Visible = False
  loc_E8F61F: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E8F350
  'Data Table: 4E4428
  loc_E8F2E9: Me.TxtSearch.Text = vbNullString
  loc_E8F319: Set var_90 = Me.GridSel
  loc_E8F31F: Call 0.Method_TxtSearch_Click0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E8F347: Me.TxtSearch.Visible = False
  loc_E8F34F: Exit Sub
End Sub

Private Sub btnExit_Click() 'E1793C
  'Data Table: 4E4428
  loc_E17931: Me.Global.Unload Me
  loc_E17939: Exit Sub
End Sub

Private Sub Check1_Click(Index As Integer) 'FF9058
  'Data Table: 4E4428
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_C8 As MSHFlexGrid
  loc_FF8E69: Set var_88 = Me.Check1
  loc_FF8E6F: Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF8E8D: If (CLng(var_8C.Value) = 0) Then
  loc_FF8E9E:   Set var_88 = Me.GridSel
  loc_FF8EA4:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF8EAC:   var_8C.Enabled = True
  loc_FF8EC2:   Set var_88 = Me.GridSel
  loc_FF8EC8:   Call 0.Method_Check1_Click0 (Index)
  loc_FF8EE9:   If (CLng(var_8C.Rows) > 1) Then
  loc_FF8EFF:     Set var_88 = Me.GridSel
  loc_FF8F05:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF8F0D:     var_8C.Row = 1
  loc_FF8F2C:     Set var_88 = Me.GridSel
  loc_FF8F32:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF8F3A:     var_8C.Col = 0
  loc_FF8F46:   End If
  loc_FF8F49: Else
  loc_FF8F58:   Set var_88 = Me.GridSel
  loc_FF8F5E:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF8F66:   var_8C.Enabled = False
  loc_FF8F7C:   Set var_88 = Me.GridSel
  loc_FF8F82:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF8FA3:   If (CLng(var_8C.Rows) > 1) Then
  loc_FF8FB9:     Set var_88 = Me.GridSel
  loc_FF8FBF:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF8FE6:     Set var_88 = Me.GridSel
  loc_FF8FEC:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF8FF4:     var_8C.Col = 0
  loc_FF900A:     Set var_88 = Me.GridSel
  loc_FF9010:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FF9027:     var_A0 = CVar((CLng(var_8C.Rows) - 1)) 'Long
  loc_FF9036:     Set var_C4 = Me.GridSel
  loc_FF903C:     Call 0.Method_Check1_Click0 (Index, var_C8)
  loc_FF9044:     var_C8.RowSel = 0
  loc_FF9057:   End If
  loc_FF9057: End If
  loc_FF9057: Exit Sub
End Sub

Private Sub Check1_GotFocus(Index As Integer) 'E41D2C
  'Data Table: 4E4428
  Dim var_8C As CheckBox
  loc_E41D0F: Set var_88 = Me.Check1
  loc_E41D15: Call 0.Method_Check1_GotFocus0 (Index, var_8C)
  loc_E41D1D: var_8C.BackColor = &HFF
  loc_E41D29: Exit Sub
  loc_E41D2A: Set var_5000 = 
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E21C2C
  'Data Table: 4E4428
  loc_E21C12: If (Shift = &HD) Then
  loc_E21C23:   Proc_303_0_FB9B68("	")
  loc_E21C2B: End If
  loc_E21C2B: Exit Sub
End Sub

Private Sub Check1_Validate(Cancel As Boolean) 'E41F20
  'Data Table: 4E4428
  Dim var_8C As CheckBox
  loc_E41F03: Set var_88 = Me.Check1
  loc_E41F09: Call 0.Method_Check1_Validate0 (Cancel, var_8C)
  loc_E41F11: var_8C.BackColor = &H800000
  loc_E41F1D: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E4A518
  'Data Table: 4E4428
  Dim var_8C As MSHFlexGrid
  loc_E4A4FB: Set var_88 = Me.GridSel
  loc_E4A501: Call 0.Method_GridSel_UnknownEvent_00 (Cancel, var_8C)
  loc_E4A509: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E4A515: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_8 'E4A7F0
  'Data Table: 4E4428
  Dim var_8C As MSHFlexGrid
  loc_E4A7D3: Set var_88 = Me.GridSel
  loc_E4A7D9: Call 0.Method_GridSel_UnknownEvent_80 (Cancel, var_8C)
  loc_E4A7E1: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E4A7ED: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A '1176788
  'Data Table: 4E4428
  Dim var_98 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_168 As MSHFlexGrid
  Dim var_190 As Variant
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  Dim var_4F01 As Integer
  loc_11763DE: If (arg_10 = &HD) Then
  loc_11763EF:   Proc_303_0_FB9B68("	")
  loc_11763F7: End If
  loc_1176401: Set var_94 = Me.GridSel
  loc_1176407: Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_1176428: If (CLng(var_98.Rows) < 1) Then
  loc_117642B:   Exit Sub
  loc_117642C: End If
  loc_1176440: Set var_94 = Me.GridSel
  loc_1176446: Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_1176468: If ((CLng(arg_10) = &H20) And (CLng(var_98.Col) = 0)) Then
  loc_117647B:   Set var_94 = Me.GridSel
  loc_1176481:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_1176489:   var_98.CellFontName = "WINGDINGS"
  loc_11764A7:   Set var_94 = Me.GridSel
  loc_11764AD:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_11764B5:   var_98.CellFontSize = CVar(CDbl(&HE))
  loc_11764CB:   Set var_94 = Me.GridSel
  loc_11764D1:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98)
  loc_11764E2:   var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_11764FA:   Set var_CC = Me.GridSel
  loc_1176500:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_D0, 0)
  loc_1176508:   var_100 = var_D0.TextMatrix)
  loc_117651E:   Set var_164 = Me.GridSel
  loc_1176524:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_168, var_100)
  loc_1176535:   var_190 = CVar(CLng(var_168.Row)) 'Long
  loc_1176583:   Set var_17C = Me.GridSel
  loc_1176589:   Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_180, CVar(CStr(IIf((CStr(var_100) = "ü"), " ", "ü"))), 0)
  loc_1176591:   LateIdCallSt
  loc_11765C5:   var_1E2 = Cancel
  loc_11765CE:   If (var_1E2 = 1) Then
  loc_11765E2:     var_86 = CInt((UBound(global_176, 1) + 1))
  loc_11765F4:     ReDim Preserve global_176(0 To CLng(var_86))
  loc_1176608:     Set var_94 = Me.GridSel
  loc_117660E:     Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86, var_1E2)
  loc_117662A:     global_176(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1176638:   Else
  loc_117663E:     If (var_1E2 = 2) Then
  loc_1176652:       var_86 = CInt((UBound(global_180, 1) + 1))
  loc_1176664:       ReDim Preserve global_180(0 To CLng(var_86))
  loc_1176678:       Set var_94 = Me.GridSel
  loc_117667E:       Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86, var_180)
  loc_117669A:       global_180(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_11766A8:     Else
  loc_11766AE:       If (var_1E2 = 3) Then
  loc_11766C2:         var_86 = CInt((UBound(global_184, 1) + 1))
  loc_11766D4:         ReDim Preserve global_184(0 To CLng(var_86))
  loc_11766E8:         Set var_94 = Me.GridSel
  loc_11766EE:         Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86)
  loc_117670A:         global_184(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1176718:       Else
  loc_117671E:         If (var_1E2 = 4) Then
  loc_1176732:           var_86 = CInt((UBound(global_188, 1) + 1))
  loc_1176744:           ReDim Preserve global_188(0 To CLng(var_86))
  loc_1176758:           Set var_94 = Me.GridSel
  loc_117675E:           Call 0.Method_GridSel_UnknownEvent_A0 (Cancel, var_98, var_86)
  loc_117677A:           global_188(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1176785:         End If
  loc_1176785:       End If
  loc_1176785:     End If
  loc_1176785:   End If
  loc_1176785: End If
  loc_1176785: Exit Sub
  loc_1176786: var_4F01 = var_190
End Sub

Private Sub GridSel_UnknownEvent_C '1137EC0
  'Data Table: 4E4428
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_A4 As Variant
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_88 As TextBox
  loc_1137B5A: Set var_88 = Me.GridSel
  loc_1137B60: Call 0.Method_GridSel_UnknownEvent_C0 (Cancel)
  loc_1137B81: Set var_A0 = Me.GridSel
  loc_1137B87: Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_A4)
  loc_1137BB1: If ((CLng(var_8C.Col) = 0) Or (CLng(var_A4.Row) = 0)) Then
  loc_1137BB4:   Exit Sub
  loc_1137BB5: End If
  loc_1137BB8: var_B6 = Cancel
  loc_1137BC1: If (var_B6 = 1) Then
  loc_1137BDC:   Set var_88 = Me.GridSel
  loc_1137BE2:   Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C)
  loc_1137BEA:   var_9C = var_8C.Col
  loc_1137C54:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_100, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1137C75: Else
  loc_1137C7B:   If (var_B6 = 2) Then
  loc_1137C96:     Set var_88 = Me.GridSel
  loc_1137C9C:     Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C, var_9C)
  loc_1137CA4:     var_9C = var_8C.Col
  loc_1137D0E:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_104, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1137D2F:   Else
  loc_1137D35:     If (var_B6 = 3) Then
  loc_1137D50:       Set var_88 = Me.GridSel
  loc_1137D56:       Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C, var_9C)
  loc_1137D5E:       var_9C = var_8C.Col
  loc_1137DC8:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_108, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1137DE9:     Else
  loc_1137DEF:       If (var_B6 = 4) Then
  loc_1137E0A:         Set var_88 = Me.GridSel
  loc_1137E10:         Call 0.Method_GridSel_UnknownEvent_C0 (Cancel, var_8C, var_9C)
  loc_1137E18:         var_9C = var_8C.Col
  loc_1137E82:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, Cancel, global_112, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1137EA0:       End If
  loc_1137EA0:     End If
  loc_1137EA0:   End If
  loc_1137EA0: End If
  loc_1137EB2: Me.TxtSearch.Tag = CStr(Cancel)
  loc_1137EBD: Exit Sub
  loc_1137EBE: Loop Until var_9C 'do at: 1132C4F
End Sub

Private Sub GridSel_UnknownEvent_E 'E80EE4
  'Data Table: 4E4428
  Dim var_8C As MSHFlexGrid
  loc_E80E86: Set var_88 = Me.GridSel
  loc_E80E8C: Call 0.Method_GridSel_UnknownEvent_E0 (Cancel)
  loc_E80EAD: If (CLng(var_8C.Col) <> 0) Then
  loc_E80EB0:   Exit Sub
  loc_E80EB1: End If
  loc_E80EBB: Set var_88 = Me.GridSel
  loc_E80EC1: Call 0.Method_GridSel_UnknownEvent_E0 (Cancel, var_8C)
  loc_E80ED6: global_192 = CInt(CLng(var_8C.Row))
  loc_E80EE3: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1173200
  'Data Table: 4E4428
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_160 As Variant
  Dim var_1B2 As Integer
  Dim var_86 As Integer
  loc_1172E42: Set var_8C = Me.GridSel
  loc_1172E48: Call 0.Method_GridSel_UnknownEvent_100 (Cancel)
  loc_1172E73: If ((CLng(var_90.Col) <> 0) Or (global_192 = 0)) Then
  loc_1172E76:   Exit Sub
  loc_1172E77: End If
  loc_1172E81: Set var_8C = Me.GridSel
  loc_1172E87: Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90)
  loc_1172E9C: global_194 = CInt(CLng(var_90.RowSel))
  loc_1172EB8: For var_A4 = global_192 To global_194: var_88 = var_A4 'Integer
  loc_1172ED1:   Set var_8C = Me.GridSel
  loc_1172ED7:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, CVar(CLng(var_88)))
  loc_1172EDF:   var_90.Row = global_192
  loc_1172EFE:   Set var_8C = Me.GridSel
  loc_1172F04:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, 0)
  loc_1172F0C:   var_90.Col = global_194
  loc_1172F28:   Set var_8C = Me.GridSel
  loc_1172F2E:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90)
  loc_1172F36:   var_90.CellFontName = "WINGDINGS"
  loc_1172F54:   Set var_8C = Me.GridSel
  loc_1172F5A:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90)
  loc_1172F62:   var_90.CellFontSize = CVar(CDbl(&HE))
  loc_1172F72:   var_B4 = CVar(CLng(var_88)) 'Long
  loc_1172F8A:   Set var_8C = Me.GridSel
  loc_1172F90:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, 0)
  loc_1172FA8:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1172FF6:   Set var_14C = Me.GridSel
  loc_1172FFC:   Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_150, CVar(CStr(IIf((CStr(var_90.TextMatrix)) = "ü"), " ", "ü"))), 0)
  loc_1173004:   LateIdCallSt
  loc_117302C:   var_1B2 = Cancel
  loc_1173035:   If (var_1B2 = 1) Then
  loc_1173049:     var_86 = CInt((UBound(global_176, 1) + 1))
  loc_117305B:     ReDim Preserve global_176(0 To CLng(var_86))
  loc_117306F:     Set var_8C = Me.GridSel
  loc_1173075:     Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86, var_1B2, var_150)
  loc_1173091:     global_176(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_117309F:   Else
  loc_11730A5:     If (var_1B2 = 2) Then
  loc_11730B9:       var_86 = CInt((UBound(global_180, 1) + 1))
  loc_11730CB:       ReDim Preserve global_180(0 To CLng(var_86))
  loc_11730DF:       Set var_8C = Me.GridSel
  loc_11730E5:       Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86, var_160)
  loc_1173101:       global_180(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_117310F:     Else
  loc_1173115:       If (var_1B2 = 3) Then
  loc_1173129:         var_86 = CInt((UBound(global_184, 1) + 1))
  loc_117313B:         ReDim Preserve global_184(0 To CLng(var_86))
  loc_117314F:         Set var_8C = Me.GridSel
  loc_1173155:         Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86)
  loc_1173171:         global_184(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_117317F:       Else
  loc_1173185:         If (var_1B2 = 4) Then
  loc_1173199:           var_86 = CInt((UBound(global_188, 1) + 1))
  loc_11731AB:           ReDim Preserve global_188(0 To CLng(var_86))
  loc_11731BF:           Set var_8C = Me.GridSel
  loc_11731C5:           Call 0.Method_GridSel_UnknownEvent_100 (Cancel, var_90, var_86)
  loc_11731E1:           global_188(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_11731EC:         End If
  loc_11731EC:       End If
  loc_11731EC:     End If
  loc_11731EC:   End If
  loc_11731EF: Next var_A4 'Integer
  loc_11731F9: global_192 = 0
  loc_11731FC: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_13 'E4A4B0
  'Data Table: 4E4428
  Dim var_8C As MSHFlexGrid
  loc_E4A493: Set var_88 = Me.GridSel
  loc_E4A499: Call 0.Method_GridSel_UnknownEvent_130 (Cancel, var_8C)
  loc_E4A4A1: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E4A4AD: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'E4A788
  'Data Table: 4E4428
  Dim var_8C As MSHFlexGrid
  loc_E4A76B: Set var_88 = Me.GridSel
  loc_E4A771: Call 0.Method_GridSel_UnknownEvent_140 (Cancel, var_8C)
  loc_E4A779: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E4A785: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E60A34
  'Data Table: 4E4428
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E609FF: Me.FGrid.CellBackColor = CVar(CLng("16777152"))
  loc_E60A07: Call Proc_102_73_E4A8C4()
  loc_E60A17: Set var_A8 = Me.TxtGrid
  loc_E60A1D: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60A25: var_AC.Visible = False
  loc_E60A31: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1E410
  'Data Table: 4E4428
  loc_E1E407: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E40F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10A4A30
  'Data Table: 4E4428
  Dim var_9C As String
  Dim var_AC As Variant
  Dim Cancel As Integer
  Dim var_D4 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_11C As Long
  loc_10A47A3: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_138))) Then
  loc_10A47B9:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10A47C9:   var_9C = "+{Tab}"
  loc_10A47CF:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag))
  loc_10A47D9:   Cancel = 0
  loc_10A47DF: Else
  loc_10A4816:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_136))) Then
  loc_10A482C:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10A4842:     Proc_303_0_FB9B68("	", 0)
  loc_10A484C:     Cancel = 0
  loc_10A484F:   End If
  loc_10A484F: End If
  loc_10A4855: global_156 = Cancel
  loc_10A487B: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10A489F: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10A48B5:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A48CD:   var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10A48D2:   var_104 = vbNullString
  loc_10A48DC:   Set var_118 = Me.FGrid
  loc_10A48E2:   LateIdCallSt
  loc_10A490D:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A4912:   var_E4 = 2
  loc_10A491B:   var_104 = vbNullString
  loc_10A4925:   Set var_D4 = Me.FGrid
  loc_10A492B:   LateIdCallSt
  loc_10A493D: End If
  loc_10A4947: If (CLng(Cancel) = &HD) Then
  loc_10A495D:   var_11C = CLng(Me.FGrid.Row)
  loc_10A496D:   If Not (var_11C = CLng(0)) Then
  loc_10A4977:     If Not (var_11C = CLng(1)) Then
  loc_10A4981:       If Not (var_11C = CLng(2)) Then
  loc_10A498B:         If Not (var_11C = CLng(3)) Then
  loc_10A4995:           If Not (var_11C = CLng(4)) Then
  loc_10A499F:             If Not (var_11C = CLng(5)) Then
  loc_10A49A9:               If Not (var_11C = CLng(6)) Then
  loc_10A49B3:                 If Not (var_11C = CLng(7)) Then
  loc_10A49BD:                   If Not (var_11C = CLng(8)) Then
  loc_10A49C7:                     If (var_11C = CLng(9)) Then
  loc_10A49CA:                     End If
  loc_10A49CA:                   End If
  loc_10A49CA:                 End If
  loc_10A49CA:               End If
  loc_10A49CA:             End If
  loc_10A49CA:           End If
  loc_10A49CA:         End If
  loc_10A49CA:       End If
  loc_10A49CA:     End If
  loc_10A4A0B:     Proc_6_61_1077428(Me, Me.FGrid, Me.TxtGrid, 0, 0, 0, var_11C, Me.FGrid)
  loc_10A4A25:     global_158 = 0
  loc_10A4A28:   End If
  loc_10A4A28: End If
  loc_10A4A2A: Cancel = 0
  loc_10A4A2D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F097E4
  'Data Table: 4E4428
  Dim var_9C As Long
  loc_F09717: var_9C = CLng(Me.FGrid.Row)
  loc_F09727: If Not (var_9C = CLng(0)) Then
  loc_F09731:   If Not (var_9C = CLng(1)) Then
  loc_F0973B:     If Not (var_9C = CLng(2)) Then
  loc_F09745:       If Not (var_9C = CLng(3)) Then
  loc_F0974F:         If Not (var_9C = CLng(4)) Then
  loc_F09759:           If Not (var_9C = CLng(5)) Then
  loc_F09763:             If Not (var_9C = CLng(6)) Then
  loc_F0976D:               If Not (var_9C = CLng(7)) Then
  loc_F09777:                 If Not (var_9C = CLng(8)) Then
  loc_F09781:                   If (var_9C = CLng(9)) Then
  loc_F09784:                   End If
  loc_F09784:                 End If
  loc_F09784:               End If
  loc_F09784:             End If
  loc_F09784:           End If
  loc_F09784:         End If
  loc_F09784:       End If
  loc_F09784:     End If
  loc_F09784:   End If
  loc_F0979C:   var_AC = 0
  loc_F097C5:   Proc_6_61_1077428(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F097DA: End If
  loc_F097DF: global_158 = 0
  loc_F097E2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F70DB0
  'Data Table: 4E4428
  Dim var_9C As Long
  loc_F70C87: var_9C = CLng(Me.FGrid.Row)
  loc_F70C97: If Not (var_9C = CLng(5)) Then
  loc_F70CA1:   If Not (var_9C = CLng(6)) Then
  loc_F70CAB:     If Not (var_9C = CLng(7)) Then
  loc_F70CB5:       If Not (var_9C = CLng(8)) Then
  loc_F70CBF:         If (var_9C = CLng(9)) Then
  loc_F70CC2:         End If
  loc_F70CC2:       End If
  loc_F70CC2:     End If
  loc_F70CC2:   End If
  loc_F70D00:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F70D15: Else
  loc_F70D1C:   If Not (var_9C = CLng(0)) Then
  loc_F70D26:     If Not (var_9C = CLng(1)) Then
  loc_F70D30:       If Not (var_9C = CLng(2)) Then
  loc_F70D3A:         If Not (var_9C = CLng(3)) Then
  loc_F70D44:           If (var_9C = CLng(4)) Then
  loc_F70D47:           End If
  loc_F70D47:         End If
  loc_F70D47:       End If
  loc_F70D47:     End If
  loc_F70D85:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Cancel)
  loc_F70D97:   End If
  loc_F70D97: End If
  loc_F70DA1: If (CLng(Cancel) <> &HD) Then
  loc_F70DA9:   global_158 = &HFF
  loc_F70DAC: End If
  loc_F70DAC: Exit Sub
  loc_F70DAD: WMemLdStr
End Sub

Private Sub FGrid_UnknownEvent_13 'E1E3C0
  'Data Table: 4E4428
  loc_E1E3B7: Me.FGrid.CellBackColor = CVar(CLng("16777152"))
  loc_E1E3BF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1E460
  'Data Table: 4E4428
  loc_E1E457: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E45F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E427B8
  'Data Table: 4E4428
  Dim var_8C As TextBox
  loc_E42797: Set var_88 = Me.TxtGrid
  loc_E4279D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E427A5: var_8C.Visible = False
  loc_E427B1: Call Proc_102_73_E4A8C4()
  loc_E427B6: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'FE5AE4
  'Data Table: 4E4428
  Dim var_98 As Variant
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_FE5943: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_FE595E: var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE599C: Set var_108 = Me.TxtGrid
  loc_FE59A2: Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_FE59AA: var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_FE59DB: var_114 = CLng(Me.FGrid.Row)
  loc_FE59EB: If (var_114 = CLng(2)) Then
  loc_FE59FF:   If (global_52 = "EpabxCallRep") Then
  loc_FE5A0F:     ReDim var_11C(0 To 1)
  loc_FE5A26:     var_11C(0) = "Room"
  loc_FE5A35:     var_11C(1) = "Department"
  loc_FE5A67:     CRefVarAry
  loc_FE5A9E:     Set global_196 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_11C))
  loc_FE5AAF:   End If
  loc_FE5AB2: Else
  loc_FE5AB9:   If (var_114 = CLng(3)) Then
  loc_FE5AC2:     var_124 = global_52
  loc_FE5AC8:   Else
  loc_FE5ACF:     If (var_114 = CLng(4)) Then
  loc_FE5AD8:       var_128 = global_52
  loc_FE5ADB:     End If
  loc_FE5ADB:   End If
  loc_FE5ADB: End If
  loc_FE5AE0: Set var_88 = Nothing
  loc_FE5AE3: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '126A850
  'Data Table: 4E4428
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As Variant
  Dim var_B0 As Long
  Dim var_C4 As TextBox
  Dim var_D0 As TextBox
  Dim Me As Recordset15
  Dim var_10C As Variant
  loc_126A2F2: If (CLng(Shift) = &H1B) Then
  loc_126A301:   Set var_8C = Me.TxtGrid
  loc_126A307:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_126A320:   Set var_98 = Me.TxtGrid
  loc_126A326:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_126A32E:   var_9C.Text = var_90.Tag
  loc_126A34A:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_126A353:   Set var_8C = Me.FGrid
  loc_126A36F:   Set var_8C = Me.TxtGrid
  loc_126A375:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_126A37D:   var_90.Visible = FGrid.DispID_8001
  loc_126A389:   Call Proc_102_73_E4A8C4(arg_14)
  loc_126A38E:   Exit Sub
  loc_126A38F: End If
  loc_126A3A2: var_B0 = CLng(Me.FGrid.Row)
  loc_126A3B2: If (var_B0 = CLng(2)) Then
  loc_126A3C6:   If (global_52 = "EpabxCallRep") Then
  loc_126A3EA:     Set var_8C = Me.TxtGrid
  loc_126A3F0:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_126A3F8:     var_B8 = var_90.Left
  loc_126A409:     Set var_98 = Me.TxtGrid
  loc_126A40F:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_126A417:     var_BC = var_9C.Top
  loc_126A428:     Set var_C0 = Me.TxtGrid
  loc_126A42E:     Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_126A436:     var_C8 = var_C4.Height
  loc_126A447:     Set var_CC = Me.TxtGrid
  loc_126A44D:     Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_126A455:     var_D4 = var_D0.Width
  loc_126A4A2:     Proc_6_114_11A290C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_126A4C6:   End If
  loc_126A4D0:   If (CLng(Shift) = &HD) Then
  loc_126A4E0:     Call Proc_102_71_11F456C(0, 0, var_E6, CInt(var_B8))
  loc_126A4EB:     If (var_E6 = &HFF) Then
  loc_126A4EE:       Call Proc_102_75_F0030C(CInt(((var_BC + var_C8) + CDbl(&H19))), CInt(var_D4))
  loc_126A4F3:     End If
  loc_126A4F3:   End If
  loc_126A4F6: Else
  loc_126A4FD:   If (var_B0 = CLng(3)) Then
  loc_126A511:     If (global_52 = "EpabxCallRep") Then
  loc_126A51D:       var_B8 = Me.RecordCount
  loc_126A52B:       If (var_B8 > 0) Then
  loc_126A546:         var_10C = CVar((CDbl(Me.FGrid.Left) + CDbl(2200))) 'Single
  loc_126A555:         Me.DGPNTNo.Left = var_10C
  loc_126A57C:         var_10C = CVar((CDbl(Me.FGrid.Top) + CDbl(1100))) 'Single
  loc_126A58B:         Me.DGPNTNo.Top = var_10C
  loc_126A5A4:         If (CLng(Shift) = &H1B) Then
  loc_126A5C3:           If (CBool(Me.DGPNTNo.Visible) = &HFF) Then
  loc_126A5D5:             Me.DGPNTNo.Visible = False
  loc_126A5DD:           End If
  loc_126A5DD:           Exit Sub
  loc_126A5DE:         End If
  loc_126A5E9:         Set var_C4 = Me.TxtGrid
  loc_126A5F6:         Set var_9C = Nothing
  loc_126A622:         Set var_90 = var_C4
  loc_126A631:         Proc_6_69_134A198(Me.DGPNTNo, var_90, 0, global_132, Shift, &HFF)
  loc_126A64B:         If (Shift = &HD) Then
  loc_126A65D:           Me.DGPNTNo.Visible = False
  loc_126A672:           Call Proc_102_71_11F456C(0, 0, var_E6, 1, Nothing)
  loc_126A67D:           If (var_E6 = &HFF) Then
  loc_126A680:             Call Proc_102_75_F0030C(var_9C, 0)
  loc_126A685:           End If
  loc_126A685:         End If
  loc_126A685:       End If
  loc_126A685:     End If
  loc_126A688:   Else
  loc_126A68F:     If (var_B0 = CLng(4)) Then
  loc_126A6B3:       Set var_8C = Me.TxtGrid
  loc_126A6B9:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8)
  loc_126A6C1:       0 = var_90.Left
  loc_126A6D2:       Set var_98 = Me.TxtGrid
  loc_126A6D8:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_126A6F1:       Set var_C0 = Me.TxtGrid
  loc_126A6F7:       Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_126A710:       Set var_CC = Me.TxtGrid
  loc_126A716:       Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_126A76B:       Proc_6_114_11A290C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_126A799:       If (CLng(Shift) = &HD) Then
  loc_126A7A9:         Call Proc_102_71_11F456C(0, 0, var_E6, CInt(var_B8))
  loc_126A7B4:         If (var_E6 = &HFF) Then
  loc_126A7B7:           Call Proc_102_75_F0030C(CInt(((var_9C.Top + var_C4.Height) + CDbl(&H19))), CInt(var_D0.Width))
  loc_126A7BC:         End If
  loc_126A7BC:       End If
  loc_126A7BF:     Else
  loc_126A7C6:       If Not (var_B0 = CLng(0)) Then
  loc_126A7D0:         If (var_B0 = CLng(1)) Then
  loc_126A7D3:         End If
  loc_126A813:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_158 = &HFF))) Then
  loc_126A823:           Call Proc_102_71_11F456C(0, 0, var_E6)
  loc_126A82E:           If (var_E6 = &HFF) Then
  loc_126A831:             Call Proc_102_75_F0030C(0)
  loc_126A836:           End If
  loc_126A836:         End If
  loc_126A839:       Else
  loc_126A840:         If (var_B0 = CLng(5)) Then
  loc_126A849:           var_120 = global_52
  loc_126A84C:         End If
  loc_126A84C:       End If
  loc_126A84C:     End If
  loc_126A84C:   End If
  loc_126A84C: End If
  loc_126A84C: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EE0348
  'Data Table: 4E4428
  Dim var_9C As Long
  loc_EE0297: Proc_6_58_E054C0(arg_10)
  loc_EE02AF: var_9C = CLng(Me.FGrid.Row)
  loc_EE02BF: If (var_9C = CLng(3)) Then
  loc_EE02D3:   If (global_52 = "EpabxCallRep") Then
  loc_EE02F2:     If (CBool(Me.DGPNTNo.Visible) = &HFF) Then
  loc_EE0304:       var_A4 = "PNTNo"
  loc_EE031F:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_132, arg_10)
  loc_EE032E:     End If
  loc_EE032E:   End If
  loc_EE0331: Else
  loc_EE0338:   If (var_9C = CLng(5)) Then
  loc_EE0341:     var_B0 = global_52
  loc_EE0344:   End If
  loc_EE0344: End If
  loc_EE0344: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F748D4
  'Data Table: 4E4428
  Dim var_9C As Long
  loc_F747AB: var_9C = CLng(Me.FGrid.Row)
  loc_F747BB: If Not (var_9C = CLng(2)) Then
  loc_F747C5:   If (var_9C = CLng(4)) Then
  loc_F747C8:   End If
  loc_F747EA:   If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F747FB:     Call TxtGrid_KeyDown(KeyCode, global_156)
  loc_F74800:   End If
  loc_F7482E:   Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, 0, Shift)
  loc_F74841: Else
  loc_F74848:   If (var_9C = CLng(3)) Then
  loc_F7485C:     If (global_52 = "EpabxCallRep") Then
  loc_F74882:       If ((Shift <> &HD) And (CBool(Me.DGPNTNo.Visible) = 0)) Then
  loc_F74893:         Call TxtGrid_KeyDown(KeyCode, global_156)
  loc_F748C2:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_132, Shift, "PNTNo")
  loc_F748D1:       End If
  loc_F748D1:     End If
  loc_F748D1:   End If
  loc_F748D1: End If
  loc_F748D1: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21C84
  'Data Table: 4E4428
  Dim arg_10 As Integer
  loc_E21C60: On Error Goto loc_E21C7B
  loc_E21C6E: Call Proc_102_71_11F456C(Cancel, &HFF)
  loc_E21C77: arg_10 = Not(var_88)
  loc_E21C7A: Exit Sub
  loc_E21C7B: ' Referenced from: E21C60
  loc_E21C7B: Proc_6_60_E62BC4(arg_10)
  loc_E21C80: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'EB32D4
  'Data Table: 4E4428
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_EB3260: Set var_9C = Me.ListView.SelectedItem
  loc_EB3277: Set var_A4 = Me.TxtGrid
  loc_EB327D: Call 0.Method_ListView_UnknownEvent_130 (0, var_A8)
  loc_EB3285: var_A8.Text = var_9C.Text
  loc_EB32A7: Me.FrmList.Visible = False
  loc_EB32B8: Set var_88 = Me.TxtGrid
  loc_EB32BE: Call 0.Method_ListView_UnknownEvent_130 (0)
  loc_EB32C6: var_9C.SetFocus
  loc_EB32D2: Exit Sub
End Sub

Private Sub BTNPRINT_Click() 'FE1058
  'Data Table: 4E4428
  Dim var_98 As Variant
  Dim var_B8 As Long
  Dim var_CC As Variant
  Dim var_EC As CheckBox
  loc_FE0E7C: On Error Goto loc_FE1051
  loc_FE0E84: global_124 = &HFF
  loc_FE0E98: If (global_52 = "EpabxCallRep") Then
  loc_FE0E9E:   var_98 = CVar(CLng(0)) 'Long
  loc_FE0EA3:   var_B8 = 0
  loc_FE0ED4:   Call Proc_102_78_1061AF8(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix))
  loc_FE0EE8:   If (var_E6 = 0) Then
  loc_FE0EF0:     global_124 = 0
  loc_FE0EF3:     Exit Sub
  loc_FE0EF4:   End If
  loc_FE0EF7:   var_98 = CVar(CLng(1)) 'Long
  loc_FE0F2D:   Call Proc_102_78_1061AF8(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_FE0F41:   If (var_E6 = 0) Then
  loc_FE0F49:     global_124 = 0
  loc_FE0F4C:     Exit Sub
  loc_FE0F4D:   End If
  loc_FE0F59:   Set var_CC = Me.Check1
  loc_FE0F5F:   Call 0.Method_BTNPRINT_Click0 (1, var_EC, var_DE, global_124, var_98)
  loc_FE0F67:   global_124 = var_EC.Value
  loc_FE0F7D:   If (CLng(var_DE) = 0) Then
  loc_FE0F9B:     Call Proc_102_74_127FD60(global_176, 1, CByte(0), var_E4)
  loc_FE0FA6:     global_60 = var_E4
  loc_FE0FB6:     If (global_124 = 0) Then
  loc_FE0FB9:       Exit Sub
  loc_FE0FBA:     End If
  loc_FE0FBA:   End If
  loc_FE0FC6:   Set var_CC = Me.Check1
  loc_FE0FCC:   Call 0.Method_BTNPRINT_Click0 (2, var_EC, var_DE)
  loc_FE0FD4:   var_B8 = var_EC.Value
  loc_FE0FEA:   If (CLng(var_DE) = 0) Then
  loc_FE1008:     Call Proc_102_74_127FD60(global_180, 2, CByte(1))
  loc_FE1013:     global_64 = var_E4
  loc_FE1023:     If (global_124 = 0) Then
  loc_FE1026:       Exit Sub
  loc_FE1027:     End If
  loc_FE1027:   End If
  loc_FE1027: End If
  loc_FE102A: var_98 = CVar(Me) 'Address
  loc_FE1035: Call unk_4E4430.RetBack
  loc_FE1048: Me.Global.Unload Me
  loc_FE1050: Exit Sub
  loc_FE1051: ' Referenced from: FE0E7C
  loc_FE1051: Proc_6_60_E62BC4(var_98, var_E4)
  loc_FE1056: Exit Sub
End Sub

Private Sub DGSite_UnknownEvent_9 'F440A4
  'Data Table: 4E4428
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F43F9B: Me.DGSite.Visible = False
  loc_F43FBA: If (Me.RecordCount > 0) Then
  loc_F43FF9:   Set var_B4 = Me.txtSite
  loc_F43FFF:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(0), var_B8)
  loc_F44007:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4403A:   var_B0 = Me.Fields.Item("Name")
  loc_F44059:   Set var_B4 = Me.txtSite
  loc_F4405F:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(0), var_B8)
  loc_F44067:   var_B8.Text = CStr(var_B0.Value)
  loc_F4407D: End If
  loc_F44088: Set var_A8 = Me.txtSite
  loc_F4408E: Call 0.Method_DGSite_UnknownEvent_90 (CInt(0))
  loc_F44096: var_B0.SetFocus
  loc_F440A2: Exit Sub
End Sub

Private Sub Command1_Click() 'E9D6D4
  'Data Table: 4E4428
  Dim var_88 As Frame
  Dim var_8C As TextBox
  loc_E9D65C: Me.Frame1.Visible = False
  loc_E9D672: Set var_88 = Me.txtSite
  loc_E9D678: Call 0.Method_Command1_Click0 (CInt(0), var_8C)
  loc_E9D68B: global_92 = var_8C.Tag
  loc_E9D6A7: Set var_88 = Me.txtSite
  loc_E9D6AD: Call 0.Method_Command1_Click0 (CInt(0), var_8C)
  loc_E9D6C0: global_96 = var_8C.Text
  loc_E9D6CE: Call Proc_102_77_105B460()
  loc_E9D6D3: Exit Sub
End Sub

Private Sub Form_Load() 'EDE7F8
  'Data Table: 4E4428
  loc_EDE740: On Error Goto loc_EDE7F0
  loc_EDE753: Set var_88 = Me
  loc_EDE759: Proc_6_23_DFBA28(var_88, 0)
  loc_EDE76A: Call 0.Method_arg_160 (var_88)
  loc_EDE778: Call 0.Method_arg_164 (var_88)
  loc_EDE780: Call Proc_102_72_160E7D4(0)
  loc_EDE78D: Call 0.Method_arg_7C (CDbl(590))
  loc_EDE79A: Call 0.Method_MeC (CDbl(8000))
  loc_EDE7A7: Call 0.Method_Me4 (CDbl(11900))
  loc_EDE7B4: If (MemVar_1F92070 = "HO") Then
  loc_EDE7BD:   Set var_88 = Me.PictShortCuts
  loc_EDE7C3:   MDIForm1.PictShortCuts.Visible = True
  loc_EDE7CB: End If
  loc_EDE7D5: Set var_88 = Me.TopCtrl1
  loc_EDE7DB: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E("Add")
  loc_EDE7E4: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_EDE7EF: Exit Sub
  loc_EDE7F0: ' Referenced from: EDE740
  loc_EDE7F0: Proc_6_60_E62BC4()
  loc_EDE7F5: Exit Sub
End Sub

Private Sub Form_Resize() 'E63EE0
  'Data Table: 4E4428
  loc_E63E96: Call 0.Method_arg_98 (var_86)
  loc_E63EA5: If (CLng(var_86) <> 1) Then
  loc_E63EBE:   Proc_6_23_DFBA28(Me, 0)
  loc_E63ECE:   Call 0.Method_arg_7C (CDbl(590))
  loc_E63EDA:   Call 0.Method_arg_74 (CDbl(&H14))
  loc_E63EDF: End If
  loc_E63EDF: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E89AB0
  'Data Table: 4E4428
  loc_E89A43: Set global_100 = Nothing
  loc_E89A55: Set global_104 = Nothing
  loc_E89A67: Set global_108 = Nothing
  loc_E89A79: Set global_112 = Nothing
  loc_E89A8B: Set global_196 = Nothing
  loc_E89A9D: Set global_132 = Nothing
  loc_E89AA9: MemVar_1F921E4 = Nothing
  loc_E89AAD: Exit Sub
End Sub

Private Sub Form_Activate() 'E270AC
  'Data Table: 4E4428
  loc_E27090: Set var_88 = MemVar_1F92244.Picture3
  loc_E270A1: Call 0.Method_arg_74 (MDIForm1.Picture3.Left)
  loc_E270A9: Exit Sub
End Sub

Private Sub BtnParam_Click() 'E9D618
  'Data Table: 4E4428
  Dim Me As Recordset15
  Dim var_88 As Frame
  loc_E9D59A: Set global_200 = New 
  loc_E9D5AC: Me.Recordset15.CursorLocation = 3
  loc_E9D5D4: Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", CVar(MemVar_1F92044), 0
  loc_E9D5E2: CVarUnk
  loc_E9D5E7: VerifyVarObj
  loc_E9D5ED: Set var_88 = Me.DGSite
  loc_E9D5F3: LateIdStAd
  loc_E9D60D: Me.Frame1.Visible = True
  loc_E9D615: Exit Sub
End Sub

Public Function global_52Get() '4E54A4
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4E54B3
  global_52 = Value
End Sub

Public Function global_56Get() '4E54C2
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4E54D1
  global_56 = Value
End Sub

Public Function global_60Get() '4E54E0
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4E54EF
  global_60 = Value
End Sub

Public Function global_64Get() '4E54FE
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '4E550D
  global_64 = Value
End Sub

Public Function global_68Get() '4E551C
  global_68Get = global_68
End Function

Public Sub global_68Put(Value) '4E552B
  global_68 = Value
End Sub

Public Function global_72Get() '4E553A
  global_72Get = global_72
End Function

Public Sub global_72Put(Value) '4E5549
  global_72 = Value
End Sub

Public Function global_76Get() '4E5558
  global_76Get = global_76
End Function

Public Sub global_76Put(Value) '4E5567
  global_76 = Value
End Sub

Public Function global_80Get() '4E5576
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '4E5585
  global_80 = Value
End Sub

Public Function global_84Get() '4E55A8
  global_84Get = global_84
End Function

Public Sub global_84Put(Value) '4E55B7
  global_84 = Value
End Sub

Public Function global_88Get() '4E55C6
  global_88Get = global_88
End Function

Public Sub global_88Put(Value) '4E55D5
  global_88 = Value
End Sub

Public Function global_92Get() '4E55E4
  global_92Get = global_92
End Function

Public Sub global_92Put(Value) '4E55F3
  global_92 = Value
End Sub

Public Function global_96Get() '4E5602
  global_96Get = global_96
End Function

Public Sub global_96Put(Value) '4E5611
  global_96 = Value
End Sub

Public Sub SelGridKeyPressLocal(Txt, SelGrid, index, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '11DF114
  'Data Table: 4E4428
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim KeyAscii As Integer
  Dim var_138 As Variant
  loc_11DECD1: If ().rows < 1) Then
  loc_11DECD4:   Exit Sub
  loc_11DECD5: End If
  loc_11DECE9: If (Me.RecordCount <= 0) Then
  loc_11DECF5:   Me.TEXT = vbNullString
  loc_11DECF9:   Exit Sub
  loc_11DECFA: End If
  loc_11DED0F: If ((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Then
  loc_11DED12:   Exit Sub
  loc_11DED13: End If
  loc_11DED1D: If (CLng(KeyAscii) = 8) Then
  loc_11DED37:   If (Len(Me.SelText) > 1) Then
  loc_11DED4B:     var_DC = (Len(Me.SelText) - 1)
  loc_11DED53:     Me.SelLength = var_DC
  loc_11DED63:     var_88 = CStr(Me.SelText)
  loc_11DED6C:   Else
  loc_11DED75:     Me.TEXT = vbNullString
  loc_11DED8F:     Call ).SetFocus
  loc_11DEDA0:     Me.Visible = False
  loc_11DEDA4:     Exit Sub
  loc_11DEDA5:   End If
  loc_11DEDA8: Else
  loc_11DEDBF:   var_DC = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_11DEDC4:   var_88 = CStr(var_DC)
  loc_11DEDD0: End If
  loc_11DEDD3: Me.Recordset15.MoveFirst
  loc_11DEE10: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_11DEE53:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_11DEE68: Else
  loc_11DEE98:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_88 & "*'", 0, 1
  loc_11DEEA8: End If
  loc_11DEEAA: KeyAscii = 0
  loc_11DEED6: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_11DEEDC:   var_BC = CVar(CellBackColLeave) 'Long
  loc_11DEEF5:   ).CellBackColor = index
  loc_11DEF0A:   var_BC = CVar(Me.Recordset15.AbsolutePosition) 'Long
  loc_11DEF23:   ).Row = index
  loc_11DEF2D:   var_BC = CVar(CellBackColEnter) 'Long
  loc_11DEF46:   ).CellBackColor = index
  loc_11DEF7C:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_11DEF96:   Me.SelLength = CVar(Len(var_88))
  loc_11DEFAE:   var_DC = ).CellLeft
  loc_11DEFCE:   var_138 = (index + ).left)
  loc_11DEFD6:   Me.left = var_138
  loc_11DEFFB:   var_DC = ).CellTop
  loc_11DF01B:   var_138 = (index + ).top)
  loc_11DF023:   Me.top = var_138
  loc_11DF046:   If (Me.Visible = False) Then
  loc_11DF050:     Me.Visible = True
  loc_11DF054:     var_9C = 0
  loc_11DF05D:     Call Me.ZOrder
  loc_11DF066:     Call Me.SetFocus
  loc_11DF08A:     Me.BackColor = ).CellBackColor
  loc_11DF0B3:     Me.ForeColor = ).CellForeColor
  loc_11DF0DC:     Me.width = ).CellWidth
  loc_11DF105:     Me.height = ).CellHeight
  loc_11DF110:   End If
  loc_11DF110: End If
  loc_11DF110: Exit Sub
End Sub

Public Function ListView_Items_RecordSet_Local(LV, Txt, index, Rst) 'FF5CCC
  'Data Table: 4E4428
  Dim var_104 As String
  Dim var_A0 As Variant
  Dim Me As Variant
  Dim var_134 As String
  Dim var_8C As ListItem
  Dim var_E4 As Integer
  loc_FF5AEC: Call Me.ListItems.Clear
  loc_FF5B09: If (Me.Recordset15.RecordCount <= 0) Then
  loc_FF5B0C:   ListView_Items_RecordSet_Local = 
  loc_FF5B12: End If
  loc_FF5B1D: If (global_52 <> "HundiPrint") Then
  loc_FF5B28:   var_104 = "All"
  loc_FF5B31:   var_A0 = Me.ListItems
  loc_FF5B42:   Set var_8C = var_A0.add
  loc_FF5B54:   var_A0.ListItem.SubItems = 1
  loc_FF5B59:   ' Referenced from: FF5C54
  loc_FF5B59: End If
  loc_FF5B5F: var_116 = Me.EOF
  loc_FF5B68: If Not(var_116) Then
  loc_FF5B95:   var_A0 = Me.Recordset15.Fields.Item("Name").Value
  loc_FF5BFF:   If Not(IsNull(Me.Recordset15.Fields.Item("Code").Value)) Then
  loc_FF5C2E:     var_134 = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_FF5C36:     Me.ListItems.add.SubItems = 1
  loc_FF5C4C:   End If
  loc_FF5C4F:   Me.MoveNext
  loc_FF5C54:   GoTo loc_FF5B59
  loc_FF5C57: End If
  loc_FF5C6C: var_E4 = 0
  loc_FF5C8B: Set var_8C = Me.FindItem
  loc_FF5C9C: If (var_8C Is Nothing) Then
  loc_FF5C9F:   ListView_Items_RecordSet_Local = 1
  loc_FF5CA8: Else
  loc_FF5CAE:   var_8C.EnsureVisible var_116
  loc_FF5CB8:   var_8C.Selected = True
  loc_FF5CBD: End If
  loc_FF5CC0: Set var_88 = var_8C 
  loc_FF5CC4: ListView_Items_RecordSet_Local = var_104
  loc_FF5CCA: ArrayRebase1Var
End Function

Public Sub Proc_102_71_11F456C
  'Data Table: 4E4428
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim var_B4 As Variant
  Dim var_BC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_F0 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim Me As Recordset15
  Dim var_100 As Variant
  Dim var_120 As Long
  Dim var_144 As MSHFlexGrid
  loc_11F410B: var_B0 = CLng(Me.FGrid.Row)
  loc_11F411B: If (var_B0 = CLng(2)) Then
  loc_11F412A:   Set var_9C = Me.TxtGrid
  loc_11F4130:   Call 0.Method_Proc_102_71_11F456C0 (0, var_B4)
  loc_11F414F:   If (var_B4.Text <> vbNullString) Then
  loc_11F4165:     var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F416E:     Set var_D0 = Me.FGrid
  loc_11F417D:     var_110 = CVar(CLng(var_D0.Col)) 'Long
  loc_11F419A:     Set var_B4 = Me.ListView.SelectedItem
  loc_11F41A8:     var_130 = CVar(var_B4.Text) 'String
  loc_11F41B0:     Set var_144 = Me.FGrid
  loc_11F41B6:     LateIdCallSt
  loc_11F41D6:   End If
  loc_11F41E7:   If (global_52 = "EpabxCallRep") Then
  loc_11F41ED:     var_F0 = CVar(CLng(2)) 'Long
  loc_11F41F2:     var_110 = 1
  loc_11F4221:     If (CStr(Me.FGrid.TextMatrix)) <> "Room") Then
  loc_11F4232:       Set var_9C = Me.GridSel
  loc_11F4238:       Call 0.Method_Proc_102_71_11F456C0 (2, var_B4, False, var_110, False)
  loc_11F4240:       var_B4.Visible = var_144
  loc_11F4257:       Set var_9C = Me.Check1
  loc_11F425D:       Call 0.Method_Proc_102_71_11F456C0 (2, var_B4, 0, var_130)
  loc_11F4265:       var_B4.Visible = var_110
  loc_11F4274:     Else
  loc_11F4274:       var_F0 = True
  loc_11F4281:       Set var_9C = Me.GridSel
  loc_11F4287:       Call 0.Method_Proc_102_71_11F456C0 (2, var_B4, var_F0)
  loc_11F428F:       var_B4.Visible = var_F0
  loc_11F42A6:       Set var_9C = Me.Check1
  loc_11F42AC:       Call 0.Method_Proc_102_71_11F456C0 (2, var_B4)
  loc_11F42B4:       var_B4.Visible = True
  loc_11F42CE:       Call Proc_102_76_122488C(2, "Select '' as O,RoomNo,Code From TelExt Where RoomNo is Not Null and RoomNo <>'' Order By RoomNo")
  loc_11F42DD:       var_AC = Me.FGrid.Height
  loc_11F42FE:       Call 0.Method_Me8 (var_150, var_AC)
  loc_11F4315:       var_F0 = CVar((((var_150 - CDbl(var_AC)) - Me.Pic.Height) - CDbl(1200))) 'Single
  loc_11F4323:       Set var_BC = Me.GridSel
  loc_11F4329:       Call 0.Method_Proc_102_71_11F456C0 (2, var_D0)
  loc_11F4331:       var_D0.Height = var_F0
  loc_11F4344:     End If
  loc_11F4344:   End If
  loc_11F4347: Else
  loc_11F434E:   If Not (var_B0 = CLng(5)) Then
  loc_11F4358:     If Not (var_B0 = CLng(6)) Then
  loc_11F4362:       If Not (var_B0 = CLng(7)) Then
  loc_11F436C:         If Not (var_B0 = CLng(8)) Then
  loc_11F4376:           If (var_B0 = CLng(9)) Then
  loc_11F4379:           End If
  loc_11F4379:         End If
  loc_11F4379:       End If
  loc_11F4379:     End If
  loc_11F437C:   Else
  loc_11F4383:     If (var_B0 = CLng(3)) Then
  loc_11F4397:       If (global_52 = "EpabxCallRep") Then
  loc_11F43C3:         If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_11F43C9:           var_100 = CVar(CLng(3)) 'Long
  loc_11F43CE:           var_120 = 1
  loc_11F4405:           var_CC = CVar(CStr(Me.Fields.Item("PntNo").Value)) 'String
  loc_11F440D:           Set var_BC = Me.FGrid
  loc_11F4413:           LateIdCallSt
  loc_11F4448:           var_B4 = Me.Fields.Item("Code")
  loc_11F445F:           global_56 = CStr(var_B4.Value)
  loc_11F4470:         End If
  loc_11F4470:       End If
  loc_11F4473:     Else
  loc_11F447A:       If (var_B0 = CLng(4)) Then
  loc_11F4483:         var_170 = global_52
  loc_11F4489:       Else
  loc_11F4490:         If Not (var_B0 = CLng(0)) Then
  loc_11F449A:           If (var_B0 = CLng(1)) Then
  loc_11F449D:           End If
  loc_11F44BF:           var_CC = Me.FGrid.Col
  loc_11F44D6:           Set var_9C = Me.TxtGrid
  loc_11F44DC:           Call 0.Method_Proc_102_71_11F456C0 (0, var_B4, CVar(CLng(var_CC)), CVar(CLng(Me.FGrid.Row)), var_BC)
  loc_11F44EF:           var_E0 = CVar(Proc_6_33_1512840(var_B4, var_CC, var_120)) 'String
  loc_11F44F7:           Set var_174 = Me.FGrid
  loc_11F44FD:           LateIdCallSt
  loc_11F451B:         End If
  loc_11F451B:       End If
  loc_11F451B:     End If
  loc_11F451B:   End If
  loc_11F451B: End If
  loc_11F4526: If (arg_10 = 0) Then
  loc_11F452D:   Set var_9C = Me.FGrid
  loc_11F4549:   Set var_9C = Me.TxtGrid
  loc_11F454F:   Call 0.Method_Proc_102_71_11F456C0 (0, var_B4, 0, FGrid.DispID_8001, &HFF)
  loc_11F4557:   var_B4.Visible = var_174
  loc_11F4563: End If
  loc_11F4563: Proc_102_71_11F456C = var_E0
End Sub

Public Sub Proc_102_72_160E7D4
  'Data Table: 4E4428
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim var_9C As CommandButton
  Dim var_A0 As Variant
  Dim var_A8 As CommandButton
  Dim var_B4 As CommandButton
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_88 As Integer
  Dim var_12C As Variant
  Dim var_B0 As MSHFlexGrid
  loc_160D31C: Call 0.Method_arg_78 (var_8C)
  loc_160D337: Me.Pic.Top = ((var_8C - Me.Pic.Width) - CDbl(&HA))
  loc_160D34F: Set var_98 = Me.BTNPRINT
  loc_160D355: Call 0.Method_Proc_102_72_160E7D40 (0, var_9C)
  loc_160D369: Set var_A0 = Me.BTNEXIT
  loc_160D3B5: Set var_B0 = Me.BTNPRINT
  loc_160D3BB: Call 0.Method_Proc_102_72_160E7D40 (0, var_B4)
  loc_160D3C3: var_B4.Left = ((Me.Pic.Width - ((var_9C.Width + var_A0.Width) + Me.BTNEXIT.Width)) / CDbl(2))
  loc_160D3FC: Set var_98 = Me.BTNPRINT
  loc_160D402: Call 0.Method_Proc_102_72_160E7D40 (0, var_9C)
  loc_160D40A: var_9C.Top = (Me.Pic.Top + CDbl(&HA))
  loc_160D424: Set var_9C = Me.BTNPRINT
  loc_160D42A: Call 0.Method_Proc_102_72_160E7D40 (0, var_A0)
  loc_160D443: Set var_90 = Me.BTNPRINT
  loc_160D449: Call 0.Method_Proc_102_72_160E7D40 (0, var_98)
  loc_160D468: Me.BTNEXIT.Left = (var_98.Left + var_A0.Width)
  loc_160D487: var_8C = Me.Pic.Top
  loc_160D49E: Me.BTNEXIT.Top = (var_8C + CDbl(&HA))
  loc_160D4C3: Call 0.Method_Me0 (var_8C)
  loc_160D4D5: var_D4 = CVar(((var_8C - CDbl(Me.FGrid.Width)) / CDbl(2))) 'Single
  loc_160D4DE: Set var_98 = Me.FGrid
  loc_160D4E4: var_98.Left = var_D4
  loc_160D505: Me.FGrid.Top = CVar(CDbl(&H4B))
  loc_160D520: Me.FGrid.Rows = &HA
  loc_160D53B: Me.FGrid.Cols = 3
  loc_160D556: Me.FGrid.FixedCols = 1
  loc_160D55E: var_D4 = 0
  loc_160D567: var_F4 = &H898
  loc_160D574: Set var_90 = Me.FGrid
  loc_160D57A: LateIdCallSt
  loc_160D585: var_D4 = 1
  loc_160D58E: var_F4 = &H898
  loc_160D59B: Set var_90 = Me.FGrid
  loc_160D5A1: LateIdCallSt
  loc_160D5AC: var_D4 = 2
  loc_160D5B5: var_F4 = 0
  loc_160D5C2: Set var_90 = Me.FGrid
  loc_160D5C8: LateIdCallSt
  loc_160D5D3: var_D4 = 1
  loc_160D5E2: var_F4 = CVar(CInt(1)) 'Integer
  loc_160D5EA: Set var_90 = Me.FGrid
  loc_160D5F0: LateIdCallSt
  loc_160D620: For var_108 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_108 'Integer
  loc_160D62A:   var_D4 = CVar(CLng(var_86)) 'Long
  loc_160D62F:   var_F4 = 0
  loc_160D63C:   Set var_90 = Me.FGrid
  loc_160D642:   LateIdCallSt
  loc_160D650: Next var_108 'Integer
  loc_160D655: Call Proc_102_77_105B460()
  loc_160D661: For var_10C = 1 To 4: var_86 = var_10C 'Integer
  loc_160D671:   Set var_90 = Me.GridSel
  loc_160D677:   Call 0.Method_Proc_102_72_160E7D40 (var_86, var_98)
  loc_160D695:   If (CBool(var_98.Visible) = &HFF) Then
  loc_160D69E:     var_88 = (var_88 + 1)
  loc_160D6A1:   End If
  loc_160D6A4: Next var_10C 'Integer
  loc_160D6C4: var_D4 = CVar(CDbl(((((global_136 - global_138) + 1) * CInt(220)) + 500))) 'Single
  loc_160D6D3: Me.FGrid.Height = var_D4
  loc_160D6E1: var_11C = global_140 'Variant
  loc_160D6F0: If (var_11C = 0) Then
  loc_160D706:   Me.FGrid.Top = CVar(CDbl(1000))
  loc_160D711: Else
  loc_160D71C:   If (var_11C = 1) Then
  loc_160D728:     Set var_90 = Me.GridSel
  loc_160D72E:     Call 0.Method_Proc_102_72_160E7D40 (1)
  loc_160D736:     var_C4 = var_98.Width
  loc_160D745:     Call 0.Method_Me0 (var_8C, var_C4)
  loc_160D757:     var_D4 = CVar(((var_8C - CDbl(var_C4)) / CDbl(2))) 'Single
  loc_160D765:     Set var_9C = Me.GridSel
  loc_160D76B:     Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160D773:     var_A0.Left = 1
  loc_160D790:     var_12C = Me.FGrid.Height
  loc_160D7B7:     var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160D7C5:     Set var_9C = Me.GridSel
  loc_160D7CB:     Call 0.Method_Proc_102_72_160E7D40 (1, var_A0, 1)
  loc_160D7D3:     var_A0.Top = var_12C
  loc_160D7F4:     var_C4 = Me.FGrid.Height
  loc_160D804:     Set var_98 = Me.Pic
  loc_160D815:     Call 0.Method_Me8 (var_8C, var_C4)
  loc_160D82C:     var_D4 = CVar((((var_8C - CDbl(var_C4)) - var_98.Height) - CDbl(1200))) 'Single
  loc_160D83A:     Set var_9C = Me.GridSel
  loc_160D840:     Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160D848:     var_A0.Height = 1
  loc_160D864:     Set var_90 = Me.GridSel
  loc_160D86A:     Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160D889:     Set var_9C = Me.Check1
  loc_160D88F:     Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160D897:     var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160D8B3:     Set var_90 = Me.GridSel
  loc_160D8B9:     Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160D8D8:     Set var_9C = Me.Check1
  loc_160D8DE:     Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160D8E6:     var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160D8FC:   Else
  loc_160D907:     If (var_11C = 2) Then
  loc_160D913:       Set var_90 = Me.GridSel
  loc_160D919:       Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160D921:       var_C4 = var_98.Width
  loc_160D930:       Call 0.Method_Me0 (var_8C, var_C4)
  loc_160D946:       var_D4 = CVar((((var_8C / CDbl(2)) - CDbl(var_C4)) / CDbl(2))) 'Single
  loc_160D954:       Set var_9C = Me.GridSel
  loc_160D95A:       Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160D962:       var_A0.Left = 2
  loc_160D97F:       var_12C = Me.FGrid.Height
  loc_160D9A6:       var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160D9B4:       Set var_9C = Me.GridSel
  loc_160D9BA:       Call 0.Method_Proc_102_72_160E7D40 (1, var_A0, 2)
  loc_160D9C2:       var_A0.Top = var_12C
  loc_160D9E3:       var_C4 = Me.FGrid.Height
  loc_160D9F3:       Set var_98 = Me.Pic
  loc_160D9F9:       var_94 = var_98.Height
  loc_160DA04:       Call 0.Method_Me8 (var_8C, var_C4)
  loc_160DA1B:       var_D4 = CVar((((var_8C - CDbl(var_C4)) - var_94) - CDbl(1200))) 'Single
  loc_160DA29:       Set var_9C = Me.GridSel
  loc_160DA2F:       Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160DA37:       var_A0.Height = 2
  loc_160DA53:       Set var_90 = Me.GridSel
  loc_160DA59:       Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160DA78:       Set var_9C = Me.Check1
  loc_160DA7E:       Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160DA86:       var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160DAA2:       Set var_90 = Me.GridSel
  loc_160DAA8:       Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160DAC7:       Set var_9C = Me.Check1
  loc_160DACD:       Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160DAD5:       var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160DAEE:       Call 0.Method_Me0 (var_94)
  loc_160DAFC:       Set var_90 = Me.GridSel
  loc_160DB02:       Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160DB0A:       var_C4 = var_98.Width
  loc_160DB19:       Call 0.Method_Me0 (var_8C, var_C4)
  loc_160DB37:       var_D4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_C4)) / CDbl(2)))) 'Single
  loc_160DB45:       Set var_9C = Me.GridSel
  loc_160DB4B:       Call 0.Method_Proc_102_72_160E7D40 (2, var_A0)
  loc_160DB53:       var_A0.Left = 2
  loc_160DB70:       var_12C = Me.FGrid.Height
  loc_160DB97:       var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160DBA5:       Set var_9C = Me.GridSel
  loc_160DBAB:       Call 0.Method_Proc_102_72_160E7D40 (2, var_A0, 2)
  loc_160DBB3:       var_A0.Top = var_12C
  loc_160DBD4:       var_C4 = Me.FGrid.Height
  loc_160DBE4:       Set var_98 = Me.Pic
  loc_160DBEA:       var_94 = var_98.Height
  loc_160DBF5:       Call 0.Method_Me8 (var_8C, var_C4)
  loc_160DC0C:       var_D4 = CVar((((var_8C - CDbl(var_C4)) - var_94) - CDbl(1200))) 'Single
  loc_160DC1A:       Set var_9C = Me.GridSel
  loc_160DC20:       Call 0.Method_Proc_102_72_160E7D40 (2, var_A0)
  loc_160DC28:       var_A0.Height = 2
  loc_160DC44:       Set var_90 = Me.GridSel
  loc_160DC4A:       Call 0.Method_Proc_102_72_160E7D40 (2, var_98)
  loc_160DC69:       Set var_9C = Me.Check1
  loc_160DC6F:       Call 0.Method_Proc_102_72_160E7D40 (2, var_A0)
  loc_160DC77:       var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160DC93:       Set var_90 = Me.GridSel
  loc_160DC99:       Call 0.Method_Proc_102_72_160E7D40 (2, var_98)
  loc_160DCB8:       Set var_9C = Me.Check1
  loc_160DCBE:       Call 0.Method_Proc_102_72_160E7D40 (2, var_A0)
  loc_160DCC6:       var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160DCDC:     Else
  loc_160DCE7:       If (var_11C = 3) Then
  loc_160DCF3:         Set var_90 = Me.GridSel
  loc_160DCF9:         Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160DD01:         var_C4 = var_98.Width
  loc_160DD10:         Call 0.Method_Me0 (var_8C, var_C4)
  loc_160DD26:         var_D4 = CVar((((var_8C / CDbl(2)) - CDbl(var_C4)) / CDbl(2))) 'Single
  loc_160DD34:         Set var_9C = Me.GridSel
  loc_160DD3A:         Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160DD42:         var_A0.Left = 3
  loc_160DD59:         Set var_98 = Me.FGrid
  loc_160DD5F:         var_12C = var_98.Height
  loc_160DD86:         var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160DD94:         Set var_9C = Me.GridSel
  loc_160DD9A:         Call 0.Method_Proc_102_72_160E7D40 (1, var_A0, 3)
  loc_160DDA2:         var_A0.Top = var_12C
  loc_160DDC2:         Set var_90 = Me.GridSel
  loc_160DDC8:         Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160DDE7:         Set var_9C = Me.Check1
  loc_160DDED:         Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160DDF5:         var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160DE11:         Set var_90 = Me.GridSel
  loc_160DE17:         Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160DE36:         Set var_9C = Me.Check1
  loc_160DE3C:         Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160DE44:         var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160DE60:         Set var_90 = Me.GridSel
  loc_160DE66:         Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160DE85:         Set var_9C = Me.GridSel
  loc_160DE8B:         Call 0.Method_Proc_102_72_160E7D40 (3, var_A0)
  loc_160DE93:         var_A0.Left = CVar(CDbl(var_98.Left))
  loc_160DEAF:         Set var_9C = Me.GridSel
  loc_160DEB5:         Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160DEBD:         var_12C = var_A0.Height
  loc_160DECF:         Set var_90 = Me.GridSel
  loc_160DED5:         Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160DEF1:         var_D4 = CVar(((CDbl(var_98.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160DEFF:         Set var_A8 = Me.GridSel
  loc_160DF05:         Call 0.Method_Proc_102_72_160E7D40 (3, var_B0, CVar(CDbl(var_98.Left)))
  loc_160DF0D:         var_B0.Top = var_12C
  loc_160DF31:         Set var_90 = Me.GridSel
  loc_160DF37:         Call 0.Method_Proc_102_72_160E7D40 (3, var_98)
  loc_160DF56:         Set var_9C = Me.Check1
  loc_160DF5C:         Call 0.Method_Proc_102_72_160E7D40 (3, var_A0)
  loc_160DF64:         var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160DF80:         Set var_90 = Me.GridSel
  loc_160DF86:         Call 0.Method_Proc_102_72_160E7D40 (3, var_98)
  loc_160DFA5:         Set var_9C = Me.Check1
  loc_160DFAB:         Call 0.Method_Proc_102_72_160E7D40 (3, var_A0)
  loc_160DFB3:         var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160DFCC:         Call 0.Method_Me0 (var_94)
  loc_160DFDA:         Set var_90 = Me.GridSel
  loc_160DFE0:         Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160DFE8:         var_C4 = var_98.Width
  loc_160DFF7:         Call 0.Method_Me0 (var_8C, var_C4)
  loc_160E015:         var_D4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_C4)) / CDbl(2)))) 'Single
  loc_160E023:         Set var_9C = Me.GridSel
  loc_160E029:         Call 0.Method_Proc_102_72_160E7D40 (2, var_A0)
  loc_160E031:         var_A0.Left = CVar(CDbl(var_98.Left))
  loc_160E048:         Set var_98 = Me.FGrid
  loc_160E04E:         var_12C = var_98.Height
  loc_160E075:         var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160E083:         Set var_9C = Me.GridSel
  loc_160E089:         Call 0.Method_Proc_102_72_160E7D40 (2, var_A0, CVar(CDbl(var_98.Left)))
  loc_160E091:         var_A0.Top = var_12C
  loc_160E0B1:         Set var_9C = Me.GridSel
  loc_160E0B7:         Call 0.Method_Proc_102_72_160E7D40 (2, var_A0)
  loc_160E0BF:         var_12C = var_A0.Height
  loc_160E0D1:         Set var_90 = Me.GridSel
  loc_160E0D7:         Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160E0F3:         var_D4 = CVar(((CDbl(var_98.Height) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160E101:         Set var_A8 = Me.GridSel
  loc_160E107:         Call 0.Method_Proc_102_72_160E7D40 (2, var_B0, CVar(CDbl(var_98.Left)))
  loc_160E10F:         var_B0.Height = var_12C
  loc_160E133:         Set var_90 = Me.GridSel
  loc_160E139:         Call 0.Method_Proc_102_72_160E7D40 (2, var_98)
  loc_160E158:         Set var_9C = Me.Check1
  loc_160E15E:         Call 0.Method_Proc_102_72_160E7D40 (2, var_A0)
  loc_160E166:         var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160E182:         Set var_90 = Me.GridSel
  loc_160E188:         Call 0.Method_Proc_102_72_160E7D40 (2, var_98)
  loc_160E1A7:         Set var_9C = Me.Check1
  loc_160E1AD:         Call 0.Method_Proc_102_72_160E7D40 (2, var_A0)
  loc_160E1B5:         var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160E1CB:       Else
  loc_160E1D6:         If (var_11C = 4) Then
  loc_160E1E2:           Set var_90 = Me.GridSel
  loc_160E1E8:           Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160E1F0:           var_C4 = var_98.Width
  loc_160E1FF:           Call 0.Method_Me0 (var_8C, var_C4)
  loc_160E215:           var_D4 = CVar((((var_8C / CDbl(2)) - CDbl(var_C4)) / CDbl(2))) 'Single
  loc_160E223:           Set var_9C = Me.GridSel
  loc_160E229:           Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160E231:           var_A0.Left = 4
  loc_160E248:           Set var_98 = Me.FGrid
  loc_160E24E:           var_12C = var_98.Height
  loc_160E275:           var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160E283:           Set var_9C = Me.GridSel
  loc_160E289:           Call 0.Method_Proc_102_72_160E7D40 (1, var_A0, 4)
  loc_160E291:           var_A0.Top = var_12C
  loc_160E2B1:           Set var_90 = Me.GridSel
  loc_160E2B7:           Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160E2D6:           Set var_9C = Me.Check1
  loc_160E2DC:           Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160E2E4:           var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160E300:           Set var_90 = Me.GridSel
  loc_160E306:           Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160E325:           Set var_9C = Me.Check1
  loc_160E32B:           Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160E333:           var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160E34C:           Call 0.Method_Me0 (var_94)
  loc_160E35A:           Set var_90 = Me.GridSel
  loc_160E360:           Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160E368:           var_C4 = var_98.Width
  loc_160E377:           Call 0.Method_Me0 (var_8C, var_C4)
  loc_160E395:           var_D4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_C4)) / CDbl(2)))) 'Single
  loc_160E3A3:           Set var_9C = Me.GridSel
  loc_160E3A9:           Call 0.Method_Proc_102_72_160E7D40 (2, var_A0)
  loc_160E3B1:           var_A0.Left = 4
  loc_160E3C8:           Set var_98 = Me.FGrid
  loc_160E3CE:           var_12C = var_98.Height
  loc_160E3F5:           var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160E403:           Set var_9C = Me.GridSel
  loc_160E409:           Call 0.Method_Proc_102_72_160E7D40 (2, var_A0, 4)
  loc_160E411:           var_A0.Top = var_12C
  loc_160E431:           Set var_90 = Me.GridSel
  loc_160E437:           Call 0.Method_Proc_102_72_160E7D40 (2, var_98)
  loc_160E456:           Set var_9C = Me.Check1
  loc_160E45C:           Call 0.Method_Proc_102_72_160E7D40 (2, var_A0)
  loc_160E464:           var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160E480:           Set var_90 = Me.GridSel
  loc_160E486:           Call 0.Method_Proc_102_72_160E7D40 (2, var_98)
  loc_160E4A5:           Set var_9C = Me.Check1
  loc_160E4AB:           Call 0.Method_Proc_102_72_160E7D40 (2, var_A0)
  loc_160E4B3:           var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160E4CF:           Set var_90 = Me.GridSel
  loc_160E4D5:           Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160E4F4:           Set var_9C = Me.GridSel
  loc_160E4FA:           Call 0.Method_Proc_102_72_160E7D40 (3, var_A0)
  loc_160E502:           var_A0.Left = CVar(CDbl(var_98.Left))
  loc_160E51E:           Set var_9C = Me.GridSel
  loc_160E524:           Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160E52C:           var_12C = var_A0.Height
  loc_160E53E:           Set var_90 = Me.GridSel
  loc_160E544:           Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160E560:           var_D4 = CVar(((CDbl(var_98.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160E56E:           Set var_A8 = Me.GridSel
  loc_160E574:           Call 0.Method_Proc_102_72_160E7D40 (3, var_B0, CVar(CDbl(var_98.Left)))
  loc_160E57C:           var_B0.Top = var_12C
  loc_160E5A0:           Set var_90 = Me.GridSel
  loc_160E5A6:           Call 0.Method_Proc_102_72_160E7D40 (3, var_98)
  loc_160E5C5:           Set var_9C = Me.Check1
  loc_160E5CB:           Call 0.Method_Proc_102_72_160E7D40 (3, var_A0)
  loc_160E5D3:           var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160E5EF:           Set var_90 = Me.GridSel
  loc_160E5F5:           Call 0.Method_Proc_102_72_160E7D40 (3, var_98)
  loc_160E614:           Set var_9C = Me.Check1
  loc_160E61A:           Call 0.Method_Proc_102_72_160E7D40 (3, var_A0)
  loc_160E622:           var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160E63B:           Call 0.Method_Me0 (var_94)
  loc_160E649:           Set var_90 = Me.GridSel
  loc_160E64F:           Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160E657:           var_C4 = var_98.Width
  loc_160E666:           Call 0.Method_Me0 (var_8C, var_C4)
  loc_160E684:           var_D4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_C4)) / CDbl(2)))) 'Single
  loc_160E692:           Set var_9C = Me.GridSel
  loc_160E698:           Call 0.Method_Proc_102_72_160E7D40 (4, var_A0)
  loc_160E6A0:           var_A0.Left = CVar(CDbl(var_98.Left))
  loc_160E6BC:           Set var_9C = Me.GridSel
  loc_160E6C2:           Call 0.Method_Proc_102_72_160E7D40 (1, var_A0)
  loc_160E6CA:           var_12C = var_A0.Height
  loc_160E6DC:           Set var_90 = Me.GridSel
  loc_160E6E2:           Call 0.Method_Proc_102_72_160E7D40 (1, var_98)
  loc_160E6FE:           var_D4 = CVar(((CDbl(var_98.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_160E70C:           Set var_A8 = Me.GridSel
  loc_160E712:           Call 0.Method_Proc_102_72_160E7D40 (4, var_B0, CVar(CDbl(var_98.Left)))
  loc_160E71A:           var_B0.Top = var_12C
  loc_160E73E:           Set var_90 = Me.GridSel
  loc_160E744:           Call 0.Method_Proc_102_72_160E7D40 (4, var_98)
  loc_160E763:           Set var_9C = Me.Check1
  loc_160E769:           Call 0.Method_Proc_102_72_160E7D40 (4, var_A0)
  loc_160E771:           var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_160E78D:           Set var_90 = Me.GridSel
  loc_160E793:           Call 0.Method_Proc_102_72_160E7D40 (4, var_98)
  loc_160E7B2:           Set var_9C = Me.Check1
  loc_160E7B8:           Call 0.Method_Proc_102_72_160E7D40 (4, var_A0)
  loc_160E7C0:           var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_160E7D3:         End If
  loc_160E7D3:       End If
  loc_160E7D3:     End If
  loc_160E7D3:   End If
  loc_160E7D3: End If
  loc_160E7D3: Exit Sub
End Sub

Public Sub Proc_102_73_E4A8C4
  'Data Table: 4E4428
  loc_E4A8AB: If (Me.FrmList.Visible = &HFF) Then
  loc_E4A8BA:   Me.FrmList.Visible = False
  loc_E4A8C2: End If
  loc_E4A8C2: Exit Sub
End Sub

Public Sub Proc_102_74_127FD60(arg_C, arg_10, arg_14) '127FD60
  'Data Table: 4E4428
  Dim var_B8 As Integer
  Dim var_90 As Integer
  Dim var_A8 As Variant
  Dim var_F0 As Long
  Dim var_E0 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_10C As MSHFlexGrid
  Dim var_17C As Variant
  Dim var_16C As Variant
  Dim var_1AC As Variant
  Dim var_1C2 As Integer
  loc_127F7C6: On Error Goto loc_127FD4A
  loc_127F7CC: var_8C = vbNullString
  loc_127F7D7: CRefVarAry
  loc_127F7DF: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_127F800:   If (arg_C(var_8E) = 0) Then
  loc_127F803:     GoTo loc_127FB9B
  loc_127F806:   End If
  loc_127F817:   var_90 = CInt(arg_C(var_8E))
  loc_127F821:   var_A8 = CVar(CLng(var_90)) 'Long
  loc_127F839:   Set var_DC = Me.GridSel
  loc_127F83F:   Call 0.Method_Proc_102_74_127FD600 (arg_10, var_E0, 0)
  loc_127F867:   If (CStr(var_E0.TextMatrix)) = "ü") Then
  loc_127F873:     If (CInt(arg_14) = 0) Then
  loc_127F892:       Set var_DC = Me.GridSel
  loc_127F898:       Call 0.Method_Proc_102_74_127FD600 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_127F8A0:       var_C8 = var_E0.TextMatrix)
  loc_127F8D1:       Set var_108 = Me.GridSel
  loc_127F8D7:       Call 0.Method_Proc_102_74_127FD600 (arg_10, var_10C, 2, CVar(CLng(var_90)), ",")
  loc_127F90F:       var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar(CStr(var_C8)), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)))))
  loc_127F914:       var_8C = CStr(var_1AC)
  loc_127F939:     Else
  loc_127F942:       If (CInt(arg_14) = 1) Then
  loc_127F961:         Set var_DC = Me.GridSel
  loc_127F967:         Call 0.Method_Proc_102_74_127FD600 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_127F96F:         var_C8 = var_E0.TextMatrix)
  loc_127F9A7:         Set var_108 = Me.GridSel
  loc_127F9AD:         Call 0.Method_Proc_102_74_127FD600 (arg_10, var_10C, 2, CVar(CLng(var_90)), "," & "'")
  loc_127F9FA:         var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar("'" & CStr(var_C8) & "'"), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)) & "'")))
  loc_127F9FF:         var_8C = CStr(var_1AC)
  loc_127FA2B:       End If
  loc_127FA2B:     End If
  loc_127FA4A:     Set var_DC = Me.GridSel
  loc_127FA50:     Call 0.Method_Proc_102_74_127FD600 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_127FA82:     If (Len(var_94 & CStr(var_E0.TextMatrix))) < &HFF) Then
  loc_127FAA1:       Set var_DC = Me.GridSel
  loc_127FAA7:       Call 0.Method_Proc_102_74_127FD600 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_127FAAF:       var_C8 = var_E0.TextMatrix)
  loc_127FAE0:       Set var_108 = Me.GridSel
  loc_127FAE6:       Call 0.Method_Proc_102_74_127FD600 (arg_10, var_10C, 1, CVar(CLng(var_90)), ",")
  loc_127FAFD:       var_17C = CVar(CVar(var_94) & CStr(var_10C.TextMatrix))) 'String
  loc_127FB04:       var_16C = CVar(CStr(var_C8)) 'String
  loc_127FB16:       var_18C = IIf((var_94 = vbNullString), var_16C, var_17C)
  loc_127FB1E:       var_1AC = (var_C8 + var_18C)
  loc_127FB23:       var_94 = CStr(var_1AC)
  loc_127FB45:     End If
  loc_127FB49:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_127FB67:     Set var_DC = Me.GridSel
  loc_127FB6D:     Call 0.Method_Proc_102_74_127FD600 (arg_10, var_E0, vbNullString, 0)
  loc_127FB75:     LateIdCallSt
  loc_127FB87:   Else
  loc_127FB8E:     var_B8 = 0
  loc_127FB97:     VarIndexSt
  loc_127FB9B:   End If
  loc_127FB9B:   ' Referenced from: 127F803
  loc_127FB9E: Next var_98 'Integer
  loc_127FBAB: CRefVarAry
  loc_127FBB3: For var_1C0 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_1C0 'Integer
  loc_127FBEB:   If CBool(arg_C(var_8E) <> 0) Then
  loc_127FBF2:     var_A8 = CVar(CLng(CInt(arg_C(var_8E)))) 'Long
  loc_127FC10:     Set var_DC = Me.GridSel
  loc_127FC16:     Call 0.Method_Proc_102_74_127FD600 (arg_10, var_E0, "ü", 0)
  loc_127FC1E:     LateIdCallSt
  loc_127FC2D:   End If
  loc_127FC30: Next var_1C0 'Integer
  loc_127FC3D: If (var_8C = vbNullString) Then
  loc_127FC40:   var_A8 = 0
  loc_127FC49:   var_F0 = 1
  loc_127FC5C:   Set var_DC = Me.GridSel
  loc_127FC62:   Call 0.Method_Proc_102_74_127FD600 (arg_10, var_E0)
  loc_127FC6A:   var_C8 = var_E0.TextMatrix)
  loc_127FC92:   MsgBox(CVar("Select " & CStr(var_C8)), &H40, var_16C, var_17C, var_18C)
  loc_127FCB8:   Set var_DC = Me.GridSel
  loc_127FCBE:   Call 0.Method_Proc_102_74_127FD600 (arg_10, var_E0, var_C8)
  loc_127FCDD:   Proc_102_74_127FD60 = 0
  loc_127FCE3: End If
  loc_127FCE6: var_88 = var_8C
  loc_127FCEC: var_1C2 = arg_10
  loc_127FCF5: If (var_1C2 = 1) Then
  loc_127FCFE:   global_76 = var_94
  loc_127FD05: Else
  loc_127FD0B:   If (var_1C2 = 2) Then
  loc_127FD14:     global_80 = var_94
  loc_127FD1B:   Else
  loc_127FD21:     If (var_1C2 = 3) Then
  loc_127FD2A:       global_84 = var_94
  loc_127FD31:     Else
  loc_127FD37:       If (var_1C2 = 4) Then
  loc_127FD40:         global_88 = var_94
  loc_127FD44:       End If
  loc_127FD44:     End If
  loc_127FD44:   End If
  loc_127FD44: End If
  loc_127FD44: Proc_102_74_127FD60 = var_1C2
  loc_127FD4A: ' Referenced from: 127F7C6
  loc_127FD52: Proc_6_60_E62BC4(0, GridSel.DispID_8001)
  loc_127FD57: Proc_102_74_127FD60 = var_F0
End Sub

Public Sub Proc_102_75_F0030C
  'Data Table: 4E4428
  Dim var_CC As Variant
  loc_F00251: If (CLng(Me.FGrid.Row) = CLng(global_136)) Then
  loc_F00262:   Proc_303_0_FB9B68("	")
  loc_F0026A:   Exit Sub
  loc_F0026B: End If
  loc_F002AA: For var_BC = CInt(CLng(Me.FGrid.Row)) To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_F002B7:   var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F002DE:   If (CLng(Me.FGrid.RowHeight)) <> 0) Then
  loc_F002E8:     var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F002F7:     Me.FGrid.Row = var_CC
  loc_F002FF:     Exit For
  loc_F00302:   End If
  loc_F00305: Next var_BC 'Integer
  loc_F0030A: ' Referenced from: F002FF
  loc_F0030A: Exit Sub
End Sub

Public Sub Proc_102_76_122488C(arg_C, arg_10) '122488C
  'Data Table: 4E4428
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_E8 As CheckBox
  loc_1224383: var_86 = arg_C
  loc_122438C: If (var_86 = 1) Then
  loc_12243AB:   Me.Recordset15.CursorLocation = 3
  loc_12243D4:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_12243E2:   CVarUnk
  loc_12243E7:   VerifyVarObj
  loc_12243F3:   Set var_8C = Me.GridSel
  loc_12243F9:   Call 0.Method_Proc_102_76_122488C0 (var_86, var_B0, New)
  loc_1224401:   LateIdStAd
  loc_1224423:   ReDim Preserve global_176(0 To 0)
  loc_122443A:   global_176(0) = 0
  loc_122443B: End If
  loc_1224441: If (var_86 = 2) Then
  loc_1224460:   Me.Recordset15.CursorLocation = 3
  loc_1224489:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_1224497:   CVarUnk
  loc_122449C:   VerifyVarObj
  loc_12244A8:   Set var_8C = Me.GridSel
  loc_12244AE:   Call 0.Method_Proc_102_76_122488C0 (var_86, var_B0, New, 1, -1)
  loc_12244B6:   LateIdStAd
  loc_12244D8:   ReDim Preserve global_180(0 To 0)
  loc_12244EF:   global_180(0) = 0
  loc_12244F0: End If
  loc_12244F6: If (var_86 = 3) Then
  loc_1224515:   Me.Recordset15.CursorLocation = 3
  loc_122453E:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_122454C:   CVarUnk
  loc_1224551:   VerifyVarObj
  loc_122455D:   Set var_8C = Me.GridSel
  loc_1224563:   Call 0.Method_Proc_102_76_122488C0 (var_86, var_B0, New, 1, -1)
  loc_122456B:   LateIdStAd
  loc_122458D:   ReDim Preserve global_184(0 To 0)
  loc_12245A4:   global_184(0) = 0
  loc_12245A5: End If
  loc_12245AB: If (var_86 = 4) Then
  loc_12245CA:   Me.Recordset15.CursorLocation = 3
  loc_12245F3:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_1224601:   CVarUnk
  loc_1224606:   VerifyVarObj
  loc_1224612:   Set var_8C = Me.GridSel
  loc_1224618:   Call 0.Method_Proc_102_76_122488C0 (var_86, var_B0, New, 1, -1, var_B0)
  loc_1224620:   LateIdStAd
  loc_1224642:   ReDim Preserve global_188(0 To 0)
  loc_1224659:   global_188(0) = 0
  loc_122465A: End If
  loc_122466D: Set var_8C = Me.GridSel
  loc_1224673: Call 0.Method_Proc_102_76_122488C0 (var_86, var_B0, CVar(CDbl(1700)), var_B0, var_B0)
  loc_122467B: var_B0.Height = var_B0
  loc_1224695: Set var_8C = Me.GridSel
  loc_122469B: Call 0.Method_Proc_102_76_122488C0 (var_86, var_B0, True)
  loc_12246A3: var_B0.Visible = 1
  loc_12246BE: Set var_8C = Me.GridSel
  loc_12246C4: Call 0.Method_Proc_102_76_122488C0 (var_86, var_B0, False)
  loc_12246CC: var_B0.Enabled = -1
  loc_12246E4: Set var_8C = Me.Check1
  loc_12246EA: Call 0.Method_Proc_102_76_122488C0 (var_86, var_B0)
  loc_12246F2: var_B0.Visible = True
  loc_1224711: Set var_8C = Me.GridSel
  loc_1224717: Call 0.Method_Proc_102_76_122488C0 (var_86, var_B0)
  loc_122471F: var_B0.Width = CVar(CDbl(5200))
  loc_122472B: var_9C = 0
  loc_1224747: Set var_8C = Me.GridSel
  loc_122474D: Call 0.Method_Proc_102_76_122488C0 (var_86, var_B0, &H258)
  loc_1224755: LateIdCallSt
  loc_1224780: Set var_8C = Me.GridSel
  loc_1224786: Call 0.Method_Proc_102_76_122488C0 (var_86, var_B0, 0, 2)
  loc_122478E: LateIdCallSt
  loc_12247B9: Set var_8C = Me.GridSel
  loc_12247BF: Call 0.Method_Proc_102_76_122488C0 (var_86, var_B0, &HFA0, 1)
  loc_12247C7: LateIdCallSt
  loc_12247E5: Set var_8C = Me.Check1
  loc_12247EB: Call 0.Method_Proc_102_76_122488C0 (var_86, var_B0, CDbl(580), var_B0)
  loc_12247F3: var_B0.Width = var_B0
  loc_12247FF: var_9C = 0
  loc_1224812: Set var_8C = Me.GridSel
  loc_1224818: Call 0.Method_Proc_102_76_122488C0 (var_86, var_B0, var_9C)
  loc_122483E: Set var_E4 = Me.Check1
  loc_1224844: Call 0.Method_Proc_102_76_122488C0 (var_86, var_E8, CDbl((CLng(var_B0.RowHeight)) + &H14)))
  loc_122484C: var_E8.Height = var_B0
  loc_122486F: Set var_8C = Me.Check1
  loc_1224875: Call 0.Method_Proc_102_76_122488C0 (var_86, var_B0, CInt(1))
  loc_122487D: var_B0.Value = var_9C
  loc_1224889: Exit Sub
End Sub

Public Sub Proc_102_77_105B460
  'Data Table: 4E4428
  Dim var_AC As Variant
  Dim var_CC As Long
  Dim var_EC As String
  Dim var_10C As Variant
  Dim var_110 As MSHFlexGrid
  Dim unk_4E4437 As Connection15
  loc_105B201: If (global_52 = "EpabxCallRep") Then
  loc_105B208:   Set var_9C = Me.FGrid
  loc_105B20E:   var_AC = CVar(CLng(0)) 'Long
  loc_105B213:   var_CC = 0
  loc_105B21C:   var_EC = "From Date"
  loc_105B225:   LateIdCallSt
  loc_105B230:   var_AC = CVar(CLng(0)) 'Long
  loc_105B235:   var_CC = &H10E
  loc_105B241:   LateIdCallSt
  loc_105B24C:   var_AC = CVar(CLng(1)) 'Long
  loc_105B251:   var_CC = 0
  loc_105B25A:   var_EC = "To Date"
  loc_105B263:   LateIdCallSt
  loc_105B26E:   var_AC = CVar(CLng(1)) 'Long
  loc_105B273:   var_CC = &H10E
  loc_105B27F:   LateIdCallSt
  loc_105B28A:   var_AC = CVar(CLng(2)) 'Long
  loc_105B28F:   var_CC = 0
  loc_105B298:   var_EC = "For Type"
  loc_105B2A1:   LateIdCallSt
  loc_105B2AC:   var_AC = CVar(CLng(2)) 'Long
  loc_105B2B1:   var_CC = &H10E
  loc_105B2BD:   LateIdCallSt
  loc_105B2C8:   var_AC = CVar(CLng(3)) 'Long
  loc_105B2CD:   var_CC = 0
  loc_105B2D6:   var_EC = "For PNT NO"
  loc_105B2DF:   LateIdCallSt
  loc_105B2EA:   var_AC = CVar(CLng(3)) 'Long
  loc_105B2EF:   var_CC = &H10E
  loc_105B2FB:   LateIdCallSt
  loc_105B306:   var_AC = CVar(CLng(0)) 'Long
  loc_105B30B:   var_CC = 1
  loc_105B319:   var_10C = CVar(CStr(MemVar_1F920F4)) 'String
  loc_105B320:   LateIdCallSt
  loc_105B32E:   var_AC = CVar(CLng(1)) 'Long
  loc_105B333:   var_CC = 1
  loc_105B348:   LateIdCallSt
  loc_105B356:   var_AC = CVar(CLng(2)) 'Long
  loc_105B35B:   var_CC = 1
  loc_105B364:   var_EC = "Room"
  loc_105B36D:   LateIdCallSt
  loc_105B378:   var_AC = CVar(CLng(3)) 'Long
  loc_105B37D:   var_CC = 1
  loc_105B386:   var_EC = vbNullString
  loc_105B38F:   LateIdCallSt
  loc_105B399:   Set var_9C = Nothing 
  loc_105B3B7:   Set var_110 = Me.FGrid
  loc_105B3BD:   var_110.Row = CVar(CLng(CInt(0)))
  loc_105B3CC:   global_136 = CInt(3)
  loc_105B3D7:   global_140 = 2
  loc_105B3E9:   Call Proc_102_76_122488C(1, "Select '' as O,CAST(Extension as VArChar(11)) AS Extension,Extension As Code From TelExt Order by Extension")
  loc_105B3FC:   Call Proc_102_76_122488C(2, "Select '' as O,RoomNo,RoomNo AS Code From TelExt Where RoomNo is Not Null and RoomNo <>'' Order By RoomNo")
  loc_105B417:   unk_4E4437.Execute "Select Distinct PNT_NO As PNTNo,PNT_No As Code From EPABX_Data Order by PNT_NO", CVar(CStr(MemVar_1F920EC)), -1
  loc_105B428:   Set global_132 = var_110
  loc_105B43F:   CVarUnk
  loc_105B444:   VerifyVarObj
  loc_105B44A:   Set var_110 = Me.DGPNTNo
  loc_105B450:   LateIdStAd
  loc_105B45E: End If
  loc_105B45E: Exit Sub
End Sub

Public Sub Proc_102_78_1061AF8(arg_C, arg_10) '1061AF8
  'Data Table: 4E4428
  Dim var_98 As Variant
  Dim var_B8 As Long
  Dim var_CC As MSHFlexGrid
  Dim var_86 As Integer
  loc_1061880: var_98 = CVar(CLng(arg_C)) 'Long
  loc_1061885: var_B8 = 1
  loc_10618B4: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_10618D7:   MsgBox(CVar(arg_10 & " Should not be Blank."), &H40, "Validation Check", var_100, var_110)
  loc_10618EB:   Set var_CC = Me.FGrid
  loc_106190F:   Me.FGrid.Row = CVar(CLng(arg_C))
  loc_106192A:   Me.FGrid.Col = 1
  loc_1061934:   var_86 = 0
  loc_106193A: Else
  loc_1061947:   If ((arg_C = 0) Or (arg_C = 1)) Then
  loc_106194E:     var_98 = CVar(CLng(arg_C)) 'Long
  loc_1061953:     var_B8 = 1
  loc_1061983:     If (CDate(CStr(Me.FGrid.TextMatrix))) < MemVar_1F920F4) Then
  loc_10619B1:       MsgBox(CVar(arg_10 & " Should not be less than ") & CDate(MemVar_1F920F4), &H40, "Validation Check", var_110, var_120)
  loc_10619C7:       Set var_CC = Me.FGrid
  loc_10619EB:       Me.FGrid.Row = CVar(CLng(arg_C))
  loc_1061A06:       Me.FGrid.Col = 1
  loc_1061A10:       var_86 = 0
  loc_1061A16:     Else
  loc_1061A1A:       var_98 = CVar(CLng(arg_C)) 'Long
  loc_1061A1F:       var_B8 = 1
  loc_1061A4F:       If (CDate(CStr(Me.FGrid.TextMatrix))) > MemVar_1F920FC) Then
  loc_1061A7D:         MsgBox(CVar(arg_10 & " Should not be greater than ") & CDate(MemVar_1F920FC), &H40, "Validation Check", var_110, var_120)
  loc_1061A93:         Set var_CC = Me.FGrid
  loc_1061AB7:         Me.FGrid.Row = CVar(CLng(arg_C))
  loc_1061AD2:         Me.FGrid.Col = 1
  loc_1061ADC:         var_86 = 0
  loc_1061AE2:       Else
  loc_1061AE4:         var_86 = &HFF
  loc_1061AE7:       End If
  loc_1061AE7:     End If
  loc_1061AEA:   Else
  loc_1061AEC:     var_86 = &HFF
  loc_1061AEF:   End If
  loc_1061AEF: End If
  loc_1061AEF: Proc_102_78_1061AF8 = var_86
End Sub
