VERSION 5.00
Begin VB.Form FrmConsumMast9999
  Caption = "Open Item Consumption Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 9525
  ClientHeight = 6645
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9525
    Height = 450
    TabIndex = 19
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3225
    Top = 2175
    Width = 1425
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
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
  Begin DataGrid DGFinish
    Left = 7560
    Top = 5100
    Width = 5850
    Height = 2400
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3225
    Top = 1860
    Width = 1425
    Height = 285
    Enabled = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 6
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
    ForeColor = &HC00000&
    Left = 3225
    Top = 1545
    Width = 1425
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin DataGrid DGItem
    Left = 8505
    Top = 4455
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3225
    Top = 1230
    Width = 3510
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin Frame FrmList
    ForeColor = &HC00000&
    Left = 9840
    Top = 1980
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 150
      Top = 45
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 10
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 735
    Top = 2775
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 630
    Top = 2535
    Width = 9645
    Height = 4275
    TabIndex = 4
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5415
    Top = 7890
    Width = 2790
    Height = 285
    TabIndex = 18
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
    Left = 2040
    Top = 7890
    Width = 2880
    Height = 255
    TabIndex = 17
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 16
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "System"
      Size = 19.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblOutlet
    Caption = "Outlet"
    BackColor = &HFFC0C0&
    ForeColor = &H80&
    Left = 6795
    Top = 1245
    Width = 4380
    Height = 270
    TabIndex = 15
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "App Date"
    Index = 3
    ForeColor = &HC00000&
    Left = 1545
    Top = 2175
    Width = 870
    Height = 240
    TabIndex = 14
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
  Begin Label lbltotal
    Caption = "."
    ForeColor = &H80&
    Left = 4710
    Top = 2205
    Width = 60
    Height = 270
    TabIndex = 13
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Unit"
    Index = 2
    ForeColor = &HC00000&
    Left = 1545
    Top = 1860
    Width = 360
    Height = 195
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Finish Item Qty"
    Index = 1
    ForeColor = &HC00000&
    Left = 1545
    Top = 1545
    Width = 1425
    Height = 240
    TabIndex = 11
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
    Caption = "Finish Item Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1545
    Top = 1230
    Width = 1665
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
End

Attribute VB_Name = "FrmConsumMast9999"

Private global_64 As Integer
Private global_66 As Integer
Private MasterFormExit As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '10E3E68
  'Data Table: 4AF600
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_10E3B64: Call Proc_132_52_E850F0()
  loc_10E3B7C: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10E3B97: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E3BA0: Set var_BC = Me.FGrid
  loc_10E3BD6: Set var_104 = Me.TxtGrid
  loc_10E3BDC: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_10E3BE4: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_10E3C15: var_110 = CLng(Me.FGrid.Col)
  loc_10E3C25: If (var_110 = CLng(2)) Then
  loc_10E3C37:   Set var_A8 = Me.TxtGrid
  loc_10E3C3D:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H23)
  loc_10E3C45:   var_BC.MaxLength = var_110
  loc_10E3C92:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10E3C95:     Exit Sub
  loc_10E3C96:   End If
  loc_10E3CA9:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E3CB1:   var_DC = CVar(CLng(2)) 'Long
  loc_10E3CE4:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_10E3CED:     Me.MoveFirst
  loc_10E3D05:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E3D0D:     var_DC = CVar(CLng(1)) 'Long
  loc_10E3D16:     Set var_BC = Me.FGrid
  loc_10E3D1C:     var_CC = var_BC.TextMatrix)
  loc_10E3D51:     Me.Find "Code ='" & CStr(var_CC) & "'", 0, 1
  loc_10E3D81:     If (Me.EOF = &HFF) Then
  loc_10E3D8A:       Me.MoveFirst
  loc_10E3D8F:     End If
  loc_10E3D8F:   End If
  loc_10E3D92: Else
  loc_10E3D99:   If (var_110 = CLng(3)) Then
  loc_10E3DAB:     Set var_A8 = Me.TxtGrid
  loc_10E3DB1:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_130, var_CC)
  loc_10E3DB9:     var_BC.MaxLength = var_DC
  loc_10E3DC8:   Else
  loc_10E3DCF:     If (var_110 = CLng(4)) Then
  loc_10E3DE1:       Set var_A8 = Me.TxtGrid
  loc_10E3DE7:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H19, var_94)
  loc_10E3DEF:       var_BC.MaxLength = var_DC
  loc_10E3DFE:     Else
  loc_10E3E05:       If (var_110 = CLng(5)) Then
  loc_10E3E17:         Set var_A8 = Me.TxtGrid
  loc_10E3E1D:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB)
  loc_10E3E25:         var_BC.MaxLength = var_94
  loc_10E3E34:       Else
  loc_10E3E3B:         If (var_110 = CLng(7)) Then
  loc_10E3E4D:           Set var_A8 = Me.TxtGrid
  loc_10E3E53:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_10E3E5B:           var_BC.MaxLength = &HB
  loc_10E3E67:         End If
  loc_10E3E67:       End If
  loc_10E3E67:     End If
  loc_10E3E67:   End If
  loc_10E3E67: End If
  loc_10E3E67: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1180964
  'Data Table: 4AF600
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C0 As Variant
  Dim var_94 As DataGrid
  loc_1180588: On Error Goto loc_118095C
  loc_1180595: If (CLng(Shift) = &H1B) Then
  loc_11805A5:   Set var_88 = Me.TxtGrid
  loc_11805AB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_11805C5:   Set var_94 = Me.TxtGrid
  loc_11805CB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_11805D3:   var_98.Text = var_8C.Tag
  loc_11805EF:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_11805F4:   Call Proc_132_52_E850F0(arg_14)
  loc_11805FD:   Set var_88 = Me.FGrid
  loc_118061A:   Set var_88 = Me.TxtGrid
  loc_1180620:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1180628:   var_8C.Visible = False
  loc_1180634:   Exit Sub
  loc_1180635: End If
  loc_1180658: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_1180667:   Set var_88 = Me.TxtGrid
  loc_118066D:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B0)
  loc_1180675:   var_AC = var_8C.Left
  loc_118068C:   Me.DGItem.Left = CVar(var_B0)
  loc_11806A6:   Set var_94 = Me.TxtGrid
  loc_11806AC:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_11806C5:   Set var_88 = Me.TxtGrid
  loc_11806CB:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_11806DF:   var_C0 = CVar((var_8C.Top + var_98.Height)) 'Single
  loc_11806EE:   Me.DGItem.Top = CVar(var_8C.Top)
  loc_1180718:   Set var_98 = Nothing
  loc_1180751:   Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_76, Shift, &HFF)
  loc_118076F:   If (CLng(Shift) = &HD) Then
  loc_1180778:     Call Proc_132_48_135C0B4(KeyCode, var_DA, 1, Nothing)
  loc_1180783:     If (var_DA = &HFF) Then
  loc_11807C9:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 4)
  loc_11807D9:     End If
  loc_11807D9:   End If
  loc_11807DC: Else
  loc_11807E3:   If (var_AC = CLng(3)) Then
  loc_11807F0:     If (CLng(Shift) = &HD) Then
  loc_11807F9:       Call Proc_132_48_135C0B4(KeyCode, var_DA, 0, 3)
  loc_1180804:       If (var_DA = &HFF) Then
  loc_118084A:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 7, 0)
  loc_118085A:       End If
  loc_118085A:     End If
  loc_118085D:   Else
  loc_1180864:     If (var_AC = CLng(5)) Then
  loc_1180871:       If (CLng(Shift) = &HD) Then
  loc_118087A:         Call Proc_132_48_135C0B4(KeyCode, var_DA, 5, 0)
  loc_1180885:         If (var_DA = &HFF) Then
  loc_11808CB:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 7, 0)
  loc_11808DB:         End If
  loc_11808DB:       End If
  loc_11808DE:     Else
  loc_11808E5:       If (var_AC = CLng(7)) Then
  loc_11808F2:         If (CLng(Shift) = &HD) Then
  loc_11808FB:           Call Proc_132_48_135C0B4(KeyCode, var_DA, 7, 0)
  loc_1180906:           If (var_DA = &HFF) Then
  loc_118094C:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 7, 0)
  loc_118095C:           End If
  loc_118095C:         End If
  loc_118095C:       End If
  loc_118095C:       ' Referenced from: 1180588
  loc_118095C:     End If
  loc_118095C:   End If
  loc_118095C: End If
  loc_118095C: Proc_6_60_E62BC4(0, 0, 0)
  loc_1180961: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F5EE44
  'Data Table: 4AF600
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F5ED1F: Proc_6_58_E054C0(arg_10)
  loc_F5ED30: If (KeyAscii = 0) Then
  loc_F5ED46:   var_A0 = CLng(Me.FGrid.Col)
  loc_F5ED56:   If (var_A0 = CLng(2)) Then
  loc_F5ED75:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F5ED7C:       Set var_AC = Me.TxtGrid
  loc_F5ED87:       var_A4 = "Name"
  loc_F5EDA2:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_76, arg_10)
  loc_F5EDB1:     End If
  loc_F5EDB4:   Else
  loc_F5EDBB:     If Not (var_A0 = CLng(3)) Then
  loc_F5EDC5:       If (var_A0 = CLng(5)) Then
  loc_F5EDC8:       End If
  loc_F5EDD2:       Set var_8C = Me.TxtGrid
  loc_F5EDD8:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F5EDF3:       Proc_6_42_129A86C(var_AC, arg_10, 7, 4)
  loc_F5EE02:     Else
  loc_F5EE09:       If (var_A0 = CLng(7)) Then
  loc_F5EE16:         Set var_8C = Me.TxtGrid
  loc_F5EE1C:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F5EE37:         Proc_6_42_129A86C(var_AC, arg_10, 2)
  loc_F5EE43:       End If
  loc_F5EE43:     End If
  loc_F5EE43:   End If
  loc_F5EE43: End If
  loc_F5EE43: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EC32B4
  'Data Table: 4AF600
  loc_EC3214: On Error Goto loc_EC32AD
  loc_EC323A: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_EC3260:   If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_EC326E:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_EC3282:     var_A4 = "Name"
  loc_EC329D:     Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_76, Shift)
  loc_EC32AC:   End If
  loc_EC32AC: End If
  loc_EC32AC: Exit Sub
  loc_EC32AD: ' Referenced from: EC3214
  loc_EC32AD: Proc_6_60_E62BC4(var_A4, &HFF)
  loc_EC32B2: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23574
  'Data Table: 4AF600
  Dim arg_10 As Integer
  loc_E2355C: If (Cancel = 0) Then
  loc_E23565:   Call Proc_132_48_135C0B4(Cancel, var_88)
  loc_E2356E:   arg_10 = Not(var_88)
  loc_E23571: End If
  loc_E23571: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E50B14
  'Data Table: 4AF600
  loc_E50AEE: Set var_88 = Me.Txt
  loc_E50AF4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E50B02: Proc_6_74_E226B0(var_8C)
  loc_E50B0E: Call Proc_132_52_E850F0(var_8C)
  loc_E50B13: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F839A4
  'Data Table: 4AF600
  Dim var_8C As DataGrid
  loc_F83866: If (CLng(Shift) = &H1B) Then
  loc_F83869:   Call Proc_132_52_E850F0()
  loc_F8386E:   Exit Sub
  loc_F8386F: End If
  loc_F8387D: If (KeyCode = CInt(0)) Then
  loc_F83898:   Set var_9C = Nothing
  loc_F838A3:   Set var_98 = Nothing
  loc_F838D1:   Proc_6_69_134A198(Me.DGFinish, Me.Txt, KeyCode, global_72, Shift, 0)
  loc_F838E5: End If
  loc_F83901: If (CBool(Me.DGFinish.Visible) = 0) Then
  loc_F83919:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F8391C:   End If
  loc_F83931:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F8393A:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_F8393F:   End If
  loc_F83949:   If (CLng(Shift) = &H26) Then
  loc_F83950:     Set var_8C = Me.TopCtrl1
  loc_F83956:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_F8396F:     If (CStr(0) = "Add") Then
  loc_F8397A:       If (KeyCode <> CInt(0)) Then
  loc_F83983:         Proc_6_76_E52838(Shift, arg_14)
  loc_F83988:       End If
  loc_F8398B:     Else
  loc_F83993:       If (KeyCode <> CInt(1)) Then
  loc_F8399C:         Proc_6_76_E52838(Shift, arg_14)
  loc_F839A1:       End If
  loc_F839A1:     End If
  loc_F839A1:   End If
  loc_F839A1: End If
  loc_F839A1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EF4D1C
  'Data Table: 4AF600
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_EF4C56: Proc_6_133_E7EF78(var_94)
  loc_EF4C5F: arg_10 = CInt(var_94)
  loc_EF4C68: Proc_6_58_E054C0(arg_10, arg_10)
  loc_EF4C70: var_96 = KeyAscii
  loc_EF4C7B: If (var_96 = CInt(0)) Then
  loc_EF4C9A:   If (CBool(Me.DGFinish.Visible) = &HFF) Then
  loc_EF4CA1:     Set var_A8 = Me.Txt
  loc_EF4CAC:     var_A0 = "Name"
  loc_EF4CC7:     Proc_6_89_146F1AC(var_A8, KeyAscii, global_72, arg_10)
  loc_EF4CD6:   End If
  loc_EF4CD9: Else
  loc_EF4CE1:   If (var_96 = CInt(1)) Then
  loc_EF4CEE:     Set var_9C = Me.Txt
  loc_EF4CF4:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_EF4D0F:     Proc_6_42_129A86C(var_A8, arg_10, 7, 4)
  loc_EF4D1B:   End If
  loc_EF4D1B: End If
  loc_EF4D1B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFF8AC
  'Data Table: 4AF600
  Dim var_86 As Integer
  loc_DFF8A7: var_86 = KeyCode
  loc_DFF8AA: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4EF6C
  'Data Table: 4AF600
  loc_E4EF4A: Set var_88 = Me.Txt
  loc_E4EF50: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4EF5E: Proc_6_73_E22704(var_8C)
  loc_E4EF6A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10BEE18
  'Data Table: 4AF600
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim arg_10 As Integer
  Dim var_AC As Variant
  Dim var_8C As Variant
  Dim var_94 As String
  Dim var_B4 As TextBox
  Dim var_B0 As Label
  Dim var_FC As TextBox
  loc_10BEB47: var_86 = Cancel
  loc_10BEB52: If (var_86 = CInt(0)) Then
  loc_10BEB74:   Set var_8C = Me.Txt
  loc_10BEB7A:   Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_94, "Name='")
  loc_10BEB82:   0 = var_90.Text
  loc_10BEB9B:   Me.Find 1 & var_94 & "'", var_AC, var_86
  loc_10BEBBA:   Set var_8C = Me.Txt
  loc_10BEBC0:   Call 0.Method_Txt_Validate0 (Cancel)
  loc_10BEBE9:   If (Proc_6_27_EA565C(var_90, "Name") = 0) Then
  loc_10BEBF6:     Set var_8C = Me.Txt
  loc_10BEBFC:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10BEC04:     var_90.SetFocus
  loc_10BEC12:     arg_10 = &HFF
  loc_10BEC15:     Exit Sub
  loc_10BEC16:   End If
  loc_10BEC52:   Set var_B0 = Me.Txt
  loc_10BEC58:   Call 0.Method_Txt_Validate0 (CInt(2), var_B4, CStr(Me.Fields.Item("Unit").Value))
  loc_10BEC60:   var_B4.Text = arg_10
  loc_10BECB1:   Me.LblOutlet.Caption = CStr(Me.Fields.Item("RestName").Value)
  loc_10BECE2:   var_90 = Me.Fields.Item("RestCode")
  loc_10BED00:   Me.LblOutlet.Tag = CStr(var_90.Value)
  loc_10BED17:   Call Proc_132_46_FE9718(var_C6)
  loc_10BED1F: Else
  loc_10BED27:   If (var_86 = CInt(1)) Then
  loc_10BED34:     Set var_8C = Me.Txt
  loc_10BED3A:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10BED74:     Set var_B0 = Me.Txt
  loc_10BED7A:     Call 0.Method_Txt_Validate0 (Cancel, var_B4, CStr(Format(CVar(var_90), "0.0000")))
  loc_10BED82:     var_B4.Text = 1
  loc_10BEDAE:     Me.FGrid.Col = CVar(CLng(2))
  loc_10BEDB9:   Else
  loc_10BEDC1:     If (var_86 = CInt(3)) Then
  loc_10BEDCE:       Set var_8C = Me.Txt
  loc_10BEDD4:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10BEDF4:       Set var_B4 = Me.Txt
  loc_10BEDFA:       Call 0.Method_Txt_Validate0 (Cancel, var_FC)
  loc_10BEE02:       var_FC.Text = Proc_6_33_1512840(var_90, 1)
  loc_10BEE15:     End If
  loc_10BEE15:   End If
  loc_10BEE15: End If
  loc_10BEE15: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 'FC4B24
  'Data Table: 4AF600
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FC498F: Me.DGItem.Visible = False
  loc_FC49AE: If (Me.RecordCount > 0) Then
  loc_FC49EB:   Set var_B4 = Me.TxtGrid
  loc_FC49F1:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_FC49F9:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FC4A22:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC4A2A:   var_EC = CVar(CLng(1)) 'Long
  loc_FC4A5D:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_FC4A65:   Set var_B8 = Me.FGrid
  loc_FC4A6B:   LateIdCallSt
  loc_FC4A9A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC4AA2:   var_EC = CVar(CLng(2)) 'Long
  loc_FC4AC4:   var_B0 = Me.Fields.Item("Name")
  loc_FC4AD5:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FC4ADD:   Set var_B8 = Me.FGrid
  loc_FC4AE3:   LateIdCallSt
  loc_FC4AFF: End If
  loc_FC4B08: Set var_A8 = Me.TxtGrid
  loc_FC4B0E: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8, var_11C, var_EC)
  loc_FC4B16: var_B0.SetFocus
  loc_FC4B22: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5E434
  'Data Table: 4AF600
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5E3FF: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5E412: Set var_A8 = Me.TxtGrid
  loc_E5E418: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5E420: var_AC.Visible = False
  loc_E5E42C: Call Proc_132_52_E850F0()
  loc_E5E431: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6A288
  'Data Table: 4AF600
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6A244: Set var_88 = Me.TxtGrid
  loc_E6A24A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6A264: If (var_8C.Visible = 0) Then
  loc_E6A27D:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E6A285: End If
  loc_E6A285: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1FE00
  'Data Table: 4AF600
  loc_E1FDF7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1FDFF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFDF14
  'Data Table: 4AF600
  loc_DFDF0C: Call Proc_132_47_E417B0()
  loc_DFDF11: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10BF7B4
  'Data Table: 4AF600
  Dim var_9C As String
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_10BF4D8: Set var_88 = Me.TopCtrl1
  loc_10BF4DE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10BF523: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10BF52C:   Call Form_KeyDown(Cancel, arg_10)
  loc_10BF531: End If
  loc_10BF535: Set var_88 = Me.TopCtrl1
  loc_10BF53B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10BF554: If (CStr() = "Browse") Then
  loc_10BF557:   Exit Sub
  loc_10BF558: End If
  loc_10BF575: var_C4 = Me.FGrid.Rows
  loc_10BF5CC: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_10BF5E2:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10BF5F2:   var_9C = "+{Tab}"
  loc_10BF5F8:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_10BF602:   Cancel = 0
  loc_10BF608: Else
  loc_10BF65F:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10BF675:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10BF6B4:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_10BF6B7:       Call TopCtrl1_UnknownEvent_16()
  loc_10BF6BC:     End If
  loc_10BF6BC:   End If
  loc_10BF6BC: End If
  loc_10BF6C2: global_64 = Cancel
  loc_10BF6E8: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10BF70C: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10BF722:   var_11C = CLng(Me.FGrid.Col)
  loc_10BF732:   If Not (var_11C = CLng(2)) Then
  loc_10BF73C:     If Not (var_11C = CLng(1)) Then
  loc_10BF746:       If Not (var_11C = CLng(3)) Then
  loc_10BF750:         If (var_11C = CLng(4)) Then
  loc_10BF753:         End If
  loc_10BF753:       End If
  loc_10BF753:     End If
  loc_10BF766:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10BF77E:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10BF783:     var_12C = vbNullString
  loc_10BF78D:     Set var_B4 = Me.FGrid
  loc_10BF793:     LateIdCallSt
  loc_10BF7AB:   End If
  loc_10BF7AB: End If
  loc_10BF7AD: Cancel = 0
  loc_10BF7B0: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0BA50
  'Data Table: 4AF600
  loc_E0BA41: Call FGrid_UnknownEvent_C()
  loc_E0BA4B: global_66 = 0
  loc_E0BA4E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '128778C
  'Data Table: 4AF600
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_12871BC: Set var_88 = Me.TopCtrl1
  loc_12871C2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12871DB: If (CStr() = "Browse") Then
  loc_12871DE:   Exit Sub
  loc_12871DF: End If
  loc_12871F2: var_A0 = CLng(Me.FGrid.Col)
  loc_1287202: If (var_A0 = CLng(2)) Then
  loc_1287209:   Set var_C4 = Me.FGrid
  loc_128722D:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_128725A:   Set var_B4 = var_C4
  loc_128726C:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1287294:   Set var_88 = Me.TxtGrid
  loc_128729A:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_12872A2:   0 = var_B4.Text
  loc_12872BB:   If (Len(var_9C) <= 1) Then
  loc_12872CA:     Set var_88 = Me.TxtGrid
  loc_12872D0:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_12872D8:     var_CA = var_B4.Text
  loc_12872E9:     Set var_B8 = Me.TxtGrid
  loc_12872EF:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12872F7:     var_C4.Text = var_9C
  loc_128730A:   End If
  loc_1287316:   Set var_88 = Me.TxtGrid
  loc_128731C:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1287336:   Set var_B8 = Me.TxtGrid
  loc_128733C:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1287344:   var_C4.SelStart = Len(var_B4.Text)
  loc_128735A: Else
  loc_1287361:   If (var_A0 = CLng(3)) Then
  loc_1287368:     Set var_C4 = Me.FGrid
  loc_128738C:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_12873B9:     Set var_B4 = var_C4
  loc_12873CB:     Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_12873F3:     Set var_88 = Me.TxtGrid
  loc_12873F9:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1287401:     0 = var_B4.Text
  loc_128741A:     If (Len(var_9C) <= 1) Then
  loc_1287429:       Set var_88 = Me.TxtGrid
  loc_128742F:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1287437:       var_CA = var_B4.Text
  loc_1287448:       Set var_B8 = Me.TxtGrid
  loc_128744E:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1287456:       var_C4.Text = var_9C
  loc_1287469:     End If
  loc_1287475:     Set var_88 = Me.TxtGrid
  loc_128747B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1287495:     Set var_B8 = Me.TxtGrid
  loc_128749B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12874A3:     var_C4.SelStart = Len(var_B4.Text)
  loc_12874B9:   Else
  loc_12874C0:     If (var_A0 = CLng(5)) Then
  loc_12874C7:       Set var_C4 = Me.FGrid
  loc_12874EB:       var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1287518:       Set var_B4 = var_C4
  loc_128752A:       Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_1287552:       Set var_88 = Me.TxtGrid
  loc_1287558:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1287560:       0 = var_B4.Text
  loc_1287579:       If (Len(var_9C) <= 1) Then
  loc_1287588:         Set var_88 = Me.TxtGrid
  loc_128758E:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1287596:         var_CA = var_B4.Text
  loc_12875A7:         Set var_B8 = Me.TxtGrid
  loc_12875AD:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12875B5:         var_C4.Text = var_9C
  loc_12875C8:       End If
  loc_12875D4:       Set var_88 = Me.TxtGrid
  loc_12875DA:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_12875F4:       Set var_B8 = Me.TxtGrid
  loc_12875FA:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1287602:       var_C4.SelStart = Len(var_B4.Text)
  loc_1287618:     Else
  loc_128761F:       If (var_A0 = CLng(7)) Then
  loc_1287626:         Set var_C4 = Me.FGrid
  loc_128764A:         var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1287677:         Set var_B4 = var_C4
  loc_1287689:         Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_12876B1:         Set var_88 = Me.TxtGrid
  loc_12876B7:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_12876BF:         0 = var_B4.Text
  loc_12876D8:         If (Len(var_9C) <= 1) Then
  loc_12876E7:           Set var_88 = Me.TxtGrid
  loc_12876ED:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_12876F5:           var_CA = var_B4.Text
  loc_1287706:           Set var_B8 = Me.TxtGrid
  loc_128770C:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1287714:           var_C4.Text = var_9C
  loc_1287727:         End If
  loc_1287733:         Set var_88 = Me.TxtGrid
  loc_1287739:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1287753:         Set var_B8 = Me.TxtGrid
  loc_1287759:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1287761:         var_C4.SelStart = Len(var_B4.Text)
  loc_1287774:       End If
  loc_1287774:     End If
  loc_1287774:   End If
  loc_1287774: End If
  loc_128777E: If (CLng(Cancel) <> &HD) Then
  loc_1287786:   global_66 = &HFF
  loc_1287789: End If
  loc_1287789: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '102E8A4
  'Data Table: 4AF600
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  loc_102E670: Set var_90 = Me.TopCtrl1
  loc_102E676: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_102E68F: If (CStr() = "Browse") Then
  loc_102E692:   Exit Sub
  loc_102E693: End If
  loc_102E6B0: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_102E6B3:   Exit Sub
  loc_102E6B4: End If
  loc_102E6C5: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_102E6E7:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_102E721:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_102E743:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_102E759:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102E762:         Set var_118 = Me.FGrid
  loc_102E77D:       Else
  loc_102E790:         Me.FGrid.Rows = 1
  loc_102E7AD:         var_D4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_102E7B5:         Set var_118 = Me.FGrid
  loc_102E7E4:         Me.FGrid.FixedRows = 1
  loc_102E7EC:       End If
  loc_102E811:       For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_11C 'Integer
  loc_102E81B:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_102E823:         var_E4 = CVar(CLng(0)) 'Long
  loc_102E82D:         var_A0 = CVar(CStr(var_86)) 'String
  loc_102E835:         Set var_90 = Me.FGrid
  loc_102E83B:         LateIdCallSt
  loc_102E84C:       Next var_11C 'Integer
  loc_102E851:     End If
  loc_102E854:   Else
  loc_102E875:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_102E885:   End If
  loc_102E889:   Set var_90 = Me.FGrid
  loc_102E89A: End If
  loc_102E89F: Set var_8C = Nothing
  loc_102E8A2: Exit Sub
  loc_102E8A3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1EF00
  'Data Table: 4AF600
  loc_E1EEF7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1EEFF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1EF50
  'Data Table: 4AF600
  loc_E1EF47: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EF4F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E41EBC
  'Data Table: 4AF600
  Dim var_8C As TextBox
  loc_E41E90: Call Proc_132_52_E850F0()
  loc_E41EA0: Set var_88 = Me.TxtGrid
  loc_E41EA6: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E41EAE: var_8C.Visible = False
  loc_E41EBA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ED5014
  'Data Table: 4AF600
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_ED4F60: On Error Goto loc_ED500D
  loc_ED4F70: Me.LblUser.Caption = vbNullString
  loc_ED4F85: Me.LblLDt.Caption = vbNullString
  loc_ED4FB0: Call Proc_132_51_E7FF20(Proc_5_1_100CB50("ADD", Me))
  loc_ED4FBB: Call Proc_132_49_F31068(global_68)
  loc_ED4FCD: Set var_88 = Me.Txt
  loc_ED4FD3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_ED4FDB: var_94.Enabled = True
  loc_ED4FF2: Set var_88 = Me.Txt
  loc_ED4FF8: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED5000: var_94.SetFocus
  loc_ED500C: Exit Sub
  loc_ED500D: ' Referenced from: ED4F60
  loc_ED500D: Proc_6_60_E62BC4(var_94)
  loc_ED5012: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9B508
  'Data Table: 4AF600
  loc_E9B490: On Error Goto loc_E9B501
  loc_E9B4CA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9B4F0:   Call Proc_132_51_E7FF20(Proc_5_1_100CB50("INI", Me))
  loc_E9B4FB:   Call Proc_132_50_1413BA0(global_68)
  loc_E9B500: End If
  loc_E9B500: Exit Sub
  loc_E9B501: ' Referenced from: E9B490
  loc_E9B501: Proc_6_60_E62BC4()
  loc_E9B506: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1151D80
  'Data Table: 4AF600
  Dim var_96 As Integer
  Dim unk_4AF61C As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_160 As String
  loc_1151A1C: On Error Goto loc_1151D26
  loc_1151A2D: If (Proc_183_56_FE8818(global_68) = &HFF) Then
  loc_1151A30:   Exit Sub
  loc_1151A31: End If
  loc_1151A68: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_1151A6D:   var_96 = 0
  loc_1151A79:   unk_4AF61C.BeginTrans var_11C
  loc_1151A80:   var_96 = &HFF
  loc_1151A94:   var_94 = Me.Bookmark 'Variant
  loc_1151AE0:   var_F8 = "Delete From BOM Where FinItem='" & Me.Fields.Item("FinItem").Value & "' And RestCode='" 
  loc_1151B09:   var_118 = Me.Fields.Item("RestCode").Value
  loc_1151B28:   unk_4AF61C.Execute CStr(var_F8 & var_118 & "'"), var_180, -1
  loc_1151BA7:   var_1BC = 0
  loc_1151BBA:   var_1B4 = 0
  loc_1151BC5:   var_1B0 = 0
  loc_1151BD8:   var_1A8 = 0
  loc_1151BE3:   var_1A4 = 0
  loc_1151BF6:   var_19C = 0
  loc_1151C31:   var_160 = "BOM"
  loc_1151C3A:   Proc_154_5_10E33A4(MemVar_1F92044, var_160, "FinItem", &HC8, CStr(Me.Fields.Item("FinItem").Value), "RestCode", &HC8, CStr(Me.Fields.Item("RestCode").Value))
  loc_1151C70:   unk_4AF61C.CommitTrans
  loc_1151C77:   var_96 = 0
  loc_1151C85:   Me.Requery -1
  loc_1151C95:   Me.Requery -1
  loc_1151CA5:   Me.Requery -1
  loc_1151CC5:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1151CD2:     Me.Bookmark = var_94
  loc_1151CDA:   Else
  loc_1151CEE:     If (Me.EOF = 0) Then
  loc_1151CF7:       Me.MoveLast
  loc_1151CFC:     End If
  loc_1151CFC:   End If
  loc_1151CFC:   Call Proc_132_50_1413BA0(var_96, var_19C, 0, var_1A4, var_1A8)
  loc_1151D1D:   Proc_5_0_110649C(&HFF, Me, global_68, 0)
  loc_1151D25: End If
  loc_1151D25: Exit Sub
  loc_1151D26: ' Referenced from: 1151A1C
  loc_1151D2C: If (var_96 = &HFF) Then
  loc_1151D35:   unk_4AF61C.RollbackTrans
  loc_1151D3A: End If
  loc_1151D42: Set var_120 = Err()
  loc_1151D48: Call 0.Method_arg_2C (var_160, 0, var_1B0)
  loc_1151D69: MsgBox(CVar(var_160), &H30, " Deletion Error ", var_F8, var_118)
  loc_1151D7C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FC9810
  'Data Table: 4AF600
  Dim var_88 As Label
  Dim Me As Variant
  Dim var_98 As TextBox
  loc_FC966C: On Error Goto loc_FC97CA
  loc_FC967C: Me.LblUser.Caption = vbNullString
  loc_FC9691: Me.LblLDt.Caption = vbNullString
  loc_FC96A7: If (Proc_183_55_FE7900(global_68) = &HFF) Then
  loc_FC96AA:   Exit Sub
  loc_FC96AB: End If
  loc_FC96C2: If (Me.RecordCount > 0) Then
  loc_FC96E8:   Call Proc_132_51_E7FF20(Proc_5_1_100CB50("EDIT", Me))
  loc_FC9701:   Set var_88 = Me.Txt
  loc_FC9707:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FC970F:   var_90 = var_98.Tag
  loc_FC9733:   global_80 = var_90 & Me.LblOutlet.Tag
  loc_FC9756:   Set var_88 = Me.Txt
  loc_FC975C:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FC9764:   var_98.Enabled = False
  loc_FC977B:   Set var_88 = Me.Txt
  loc_FC9781:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_FC9789:   var_98.SetFocus
  loc_FC9798: Else
  loc_FC97B9:   MsgBox("No Record To Edit.", &H40, "Information", var_104, var_124)
  loc_FC97C9: End If
  loc_FC97C9: Exit Sub
  loc_FC97CA: ' Referenced from: FC966C
  loc_FC97D2: Set var_88 = Err()
  loc_FC97D8: Call 0.Method_arg_2C (var_90)
  loc_FC97F9: MsgBox(CVar(var_90), &H30, " Editing Error ", var_104, var_124)
  loc_FC980C: Exit Sub
  loc_FC980D: MeFF = global_68
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E159C4
  'Data Table: 4AF600
  loc_E159B9: Me.Global.Unload Me
  loc_E159C1: Exit Sub
  loc_E159C2: ArrayRebase1Var
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEF584
  'Data Table: 4AF600
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_110 As String
  Dim var_114 As String
  Dim MemVar_1F920E4 As String
  loc_EEF4C8: On Error Goto loc_EEF57D
  loc_EEF4E2: If (Me.RecordCount <= 0) Then
  loc_EEF4EB:   var_B8 = "Information"
  loc_EEF506:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EEF516:   Exit Sub
  loc_EEF517: End If
  loc_EEF525: var_110 = "Select Distinct BOM.FinItem+BOM.RestCode As SearchCode,ItemMast.Name,FinQty,Case When BOM.RestCode='" & MemVar_1F92078 & "BANQ"
  loc_EEF52C: var_114 = var_110 & "' Then 'BANQUET' Else Depart.Name End Outlet FROM BOM Inner Join ItemMast on ItemMast.Code=BOM.FinItem And ItemMast.RestCode=BOM.RestCode Left Join Depart On Depart.Code=ItemMast.RestCode Where (BOM.LOGSITE_CODE='"
  loc_EEF53A: MemVar_1F920E4 = var_114 & MemVar_1F92078 & "' or BOM.LOGSITE_CODE='HO') AND ITEMMAST.DISPCODE=9999 Order by ItemMast.Name,Outlet"
  loc_EEF54F: MemVar_1F92120 = Me
  loc_EEF55C: Proc_6_126_F1BCC0("2500,1000,2500")
  loc_EEF577: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEF57C: Exit Sub
  loc_EEF57D: ' Referenced from: EEF4C8
  loc_EEF57D: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EEF582: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E30C18
  'Data Table: 4AF600
  loc_E30C08: Proc_5_0_110649C(&HFF, Me)
  loc_E30C10: Call Proc_132_50_1413BA0(global_68)
  loc_E30C15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E30BB8
  'Data Table: 4AF600
  Dim var_7701 As Double
  loc_E30BA8: Proc_5_0_110649C(&HFF, Me)
  loc_E30BB0: Call Proc_132_50_1413BA0(global_68)
  loc_E30BB5: Exit Sub
  loc_E30BB6: var_7701 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E30A98
  'Data Table: 4AF600
  loc_E30A88: Proc_5_0_110649C(&HFF, Me)
  loc_E30A90: Call Proc_132_50_1413BA0(global_68)
  loc_E30A95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E309D8
  'Data Table: 4AF600
  loc_E309C8: Proc_5_0_110649C(&HFF, Me)
  loc_E309D0: Call Proc_132_50_1413BA0(global_68)
  loc_E309D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2376C
  'Data Table: 4AF600
  Dim Me As Recordset15
  loc_E23753: Me.Requery -1
  loc_E23763: Me.Requery -1
  loc_E23768: Exit Sub
  loc_E23769: End Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14AF334
  'Data Table: 4AF600
  Dim var_FC As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_DC As Variant
  Dim var_13C As Variant
  Dim var_15C As String
  Dim var_220 As Variant
  Dim var_B0 As Variant
  Dim var_A8 As Double
  Dim var_B8 As String
  Dim var_258 As Double
  Dim unk_4AF61C As Connection15
  Dim var_260 As String
  Dim var_268 As String
  Dim var_B4 As Label
  Dim var_270 As String
  Dim var_274 As TextBox
  Dim var_29C As TextBox
  Dim var_1B0 As Variant
  Dim var_7D0 As Double
  Dim var_2EC As TextBox
  Dim var_7D8 As Double
  Dim var_36C As Variant
  Dim var_38C As Variant
  Dim var_7E0 As Double
  Dim var_44C As String
  Dim var_7E8 As Double
  Dim var_454 As TextBox
  Dim var_7F0 As Double
  Dim var_7F8 As Double
  Dim var_4F8 As TextBox
  Dim var_800 As Double
  Dim var_68C As Variant
  Dim var_6AC As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_30C As Variant
  Dim var_55C As Variant
  Dim var_730 As Variant
  Dim var_264 As String
  Dim var_4FC As String
  Dim Me As Recordset15
  loc_14AE79C: On Error Goto loc_14AF2E2
  loc_14AE7A3: var_86 = CByte(0) 'Byte
  loc_14AE7B2: Set var_AC = Me.Txt
  loc_14AE7B8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_14AE7E1: If (Proc_183_19_E8DAFC(var_B0, "Finish Name") = 0) Then
  loc_14AE7EB:   Call Txt_GotFocus(CInt(0))
  loc_14AE7F0:   Exit Sub
  loc_14AE7F1: End If
  loc_14AE7FC: Set var_AC = Me.Txt
  loc_14AE802: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B0)
  loc_14AE82B: If (Proc_183_19_E8DAFC(var_B0, "Finish Qty") = 0) Then
  loc_14AE835:   Call Txt_GotFocus(CInt(1))
  loc_14AE83A:   Exit Sub
  loc_14AE83B: End If
  loc_14AE846: Set var_AC = Me.Txt
  loc_14AE84C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B0)
  loc_14AE875: If (Proc_183_19_E8DAFC(var_B0, "Applicable Date") = 0) Then
  loc_14AE87F:   Call Txt_GotFocus(CInt(3))
  loc_14AE884:   Exit Sub
  loc_14AE885: End If
  loc_14AE8A6: var_EC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14AE8B0: For var_11C = 1 To var_EC: var_9C = var_11C 'Variant
  loc_14AE8BB:   var_DC = CVar(CLng(var_9C)) 'Long
  loc_14AE8C3:   var_FC = CVar(CLng(2)) 'Long
  loc_14AE8FF:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_14AE927:     For var_170 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9E = var_170 'Integer
  loc_14AE935:       var_220 = (var_9E = CInt(3))
  loc_14AE93E:       var_DC = CVar(CLng(var_9C)) 'Long
  loc_14AE947:       var_FC = CVar(CLng(var_9E)) 'Long
  loc_14AE961:       var_13C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14AE96F:       var_15C = vbNullString
  loc_14AE990:       Set var_B0 = Me.FGrid
  loc_14AE9DB:       If CBool(CVar(CLng(var_9C)) And CVar(CLng(var_9E)) Or (Trim(CVar(CStr(var_B0.TextMatrix)))) = "0.00")) Then
  loc_14AE9E6:         If (var_9E = CInt(3)) Then
  loc_14AEA02:           MsgBox("Item Qty is required", 0, var_13C, Trim(var_13C), var_16C)
  loc_14AEA12:         End If
  loc_14AEA26:         Me.FGrid.Row = CVar(CLng(var_9C))
  loc_14AEA41:         Me.FGrid.Col = CVar(CLng(var_9E))
  loc_14AEA4D:         Set var_AC = Me.FGrid
  loc_14AEA71:         Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_14AEA79:         Exit Sub
  loc_14AEA7A:       End If
  loc_14AEA7D:     Next var_170 'Integer
  loc_14AEA82:   End If
  loc_14AEA85: Next var_11C 'Variant
  loc_14AEA8E: var_A8 = CDbl(0)
  loc_14AEAB2: var_EC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14AEABC: For var_250 = 1 To var_EC: var_9C = var_250 'Variant
  loc_14AEAC7:   var_DC = CVar(CLng(var_9C)) 'Long
  loc_14AEACF:   var_FC = CVar(CLng(6)) 'Long
  loc_14AEAFB:   var_A8 = (var_A8 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_14AEB0A: Next var_250 'Variant
  loc_14AEB19: unk_4AF61C.BeginTrans var_25C
  loc_14AEB22: var_86 = CByte(1) 'Byte
  loc_14AEB2A: Set var_AC = Me.TopCtrl1
  loc_14AEB30: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14AEB38: var_B8 = CStr()
  loc_14AEB49: If (var_B8 = "Edit") Then
  loc_14AEB6A:   Set var_AC = Me.Txt
  loc_14AEB70:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_B8, "Delete From BOM Where FinItem='")
  loc_14AEB78:   var_CC = var_B0.Tag
  loc_14AEB81:   var_260 = -1 & var_B8
  loc_14AEB88:   var_268 = var_260 & "' And RestCode='"
  loc_14AEB98:   var_264 = Me.LblOutlet.Tag
  loc_14AEBA8:   var_270 = var_268 & var_264 & "'"
  loc_14AEBB1:   unk_4AF61C.Execute var_270, var_274, 
  loc_14AEBD3: End If
  loc_14AEBF4: var_EC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14AEBFE: For var_294 = 1 To var_EC: var_9C = var_294 'Variant
  loc_14AEC09:   var_DC = CVar(CLng(var_9C)) 'Long
  loc_14AEC11:   var_FC = CVar(CLng(1)) 'Long
  loc_14AEC4D:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_14AEC5E:     Set var_AC = Me.Txt
  loc_14AEC64:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_260)
  loc_14AEC6C:     var_FC = var_B0.Tag
  loc_14AEC74:     var_CC = CVar(var_260) 'String
  loc_14AEC7A:     var_13C = Trim(var_CC)
  loc_14AEC8D:     Set var_B4 = Me.Txt
  loc_14AEC93:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_274, var_264)
  loc_14AEC9B:     var_DC = var_274.Text
  loc_14AECA8:     var_258 = Val(var_264)
  loc_14AECB9:     Set var_298 = Me.Txt
  loc_14AECBF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_29C, var_268)
  loc_14AED0E:     var_1B0 = CVar(CLng(var_9C)) 'Long
  loc_14AED38:     var_7D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AED49:     Set var_2E8 = Me.Txt
  loc_14AED4F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_2EC, var_270, var_7D0, CVar(CLng(3)))
  loc_14AED57:     var_1B0 = var_2EC.Text
  loc_14AED64:     var_7D8 = Val(var_270)
  loc_14AED6C:     var_36C = CVar(CLng(var_9C)) 'Long
  loc_14AED74:     var_38C = CVar(CLng(5)) 'Long
  loc_14AED96:     var_7E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AEDC8:     var_7E8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AEDD9:     Set var_450 = Me.Txt
  loc_14AEDDF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_454, var_458, var_7E8, CVar(CLng(7)), CVar(CLng(var_9C)), var_7E0)
  loc_14AEDE7:     var_38C = var_454.Text
  loc_14AEDF4:     var_7F0 = Val(var_458)
  loc_14AEE26:     var_7F8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AEE37:     Set var_4F4 = Me.Txt
  loc_14AEE3D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4F8, var_4FC, var_7F8, CVar(CLng(6)), CVar(CLng(var_9C)), var_7F0)
  loc_14AEE45:     var_36C = var_4F8.Text
  loc_14AEE52:     var_800 = Val(var_4FC)
  loc_14AEE63:     Proc_6_7_F25D88(var_59C, Date, var_800, var_7D8)
  loc_14AEE73:     Set var_5D0 = Me.Txt
  loc_14AEE79:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_5D4, CVar(CLng(1)))
  loc_14AEE88:     Proc_6_39_E7C810(var_5F4, CVar(var_5D4), CVar(CLng(var_9C)))
  loc_14AEE98:     Set var_628 = Me.Txt
  loc_14AEE9E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_62C)
  loc_14AEEAD:     Proc_6_7_F25D88(var_64C, CVar(var_62C))
  loc_14AEEB7:     var_68C = CVar(CLng(var_9C)) 'Long
  loc_14AEEBF:     var_6AC = CVar(CLng(4)) 'Long
  loc_14AEF00:     var_B8 = "Insert Into BOM(Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,Cost,Waste,Total,U_Name,U_EntDt,U_AE,SavedForQty,AppDate,WtUnit,LogSite_Code,RestCode) Values ('" & MemVar_1F92070
  loc_14AEF07:     var_14C = CVar(var_B8 & "','") 'String
  loc_14AEF0D:     var_16C = var_14C & var_13C 
  loc_14AEF11:     var_DC = "',"
  loc_14AEF4D:     var_30C = var_16C & var_DC & CVar((var_29C.Text / Val(var_268))) & ",'" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar((var_7D0 / var_7D8)) 
  loc_14AEFB4:     var_55C = var_30C & "," & var_9C & "," & CVar(var_7E0) & "," & CVar((var_7E8 / var_7F0)) & "," & CVar((var_7F8 / var_800)) & ",'" & CVar(MemVar_1F920C8) 
  loc_14AF00B:     var_730 = var_55C & "'," & var_59C & ",'A'," & var_5F4 & "," & var_64C & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(MemVar_1F92078) 
  loc_14AF035:     unk_4AF61C.Execute CStr(var_730 & "','" & CVar(Me.LblOutlet.Tag) & "')"), var_7BC, -1
  loc_14AF0E9:   End If
  loc_14AF0EC: Next var_294 'Variant
  loc_14AF100: Set var_AC = Me.Txt
  loc_14AF106: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0)
  loc_14AF13A: var_B8 = CStr(var_A8)
  loc_14AF15F: var_44C = "Update ItemMast Set IssueUnit=Unit,convRatio=1,PurchRate=" & var_B8 & ",LPurRate=" & CStr(var_A8) & " where Code='" & var_B0.Tag
  loc_14AF17D: unk_4AF61C.Execute var_44C & "' And RestCode='" & Me.LblOutlet.Tag & "'", var_CC, -1
  loc_14AF1B1: unk_4AF61C.CommitTrans
  loc_14AF1BA: var_86 = CByte(0) 'Byte
  loc_14AF1C9: Me.Requery -1
  loc_14AF1D9: Me.Requery -1
  loc_14AF1E2: Set var_AC = Me.DGItem
  loc_14AF1F7: Set var_AC = Me.DGFinish
  loc_14AF227: Set var_AC = Me.Txt
  loc_14AF22D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_B8, "SearchCode='", 0)
  loc_14AF235: 1 = var_B0.Tag
  loc_14AF267: Me.Find var_DC & var_B8 & Me.LblOutlet.Tag & "'", DGFinish.DispID_FFFF, DGItem.DispID_FFFF
  loc_14AF286: Set var_AC = Me.TopCtrl1
  loc_14AF28C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_274)
  loc_14AF2A5: If (CStr() = "Add") Then
  loc_14AF2A8:   Call TopCtrl1_UnknownEvent_A()
  loc_14AF2AD:   Exit Sub
  loc_14AF2AE: End If
  loc_14AF2C3: var_B8 = "INI"
  loc_14AF2D1: Call Proc_132_51_E7FF20(Proc_5_1_100CB50(var_B8, Me))
  loc_14AF2DC: Call Proc_132_50_1413BA0(global_68)
  loc_14AF2E1: Exit Sub
  loc_14AF2E2: ' Referenced from: 14AE79C
  loc_14AF2EB: If (CInt(var_86) = 1) Then
  loc_14AF2F4:   unk_4AF61C.RollbackTrans
  loc_14AF2F9: End If
  loc_14AF301: Set var_AC = Err()
  loc_14AF307: Call 0.Method_arg_2C (var_B8)
  loc_14AF320: MsgBox(CVar(var_B8), &H10, var_13C, var_14C, var_16C)
  loc_14AF333: Exit Sub
End Sub

Private Sub Form_Load() '10D9350
  'Data Table: 4AF600
  Dim var_88 As Variant
  Dim var_AC As String
  Dim var_B0 As String
  Dim var_B4 As String
  Dim var_B8 As String
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim var_D0 As String
  Dim unk_4AF61C As Connection15
  loc_10D9050: On Error Goto loc_10D934A
  loc_10D9062: Me.LblUser.Left = CDbl(13500)
  loc_10D9079: Me.LblUser.Top = CDbl(7800)
  loc_10D9090: Me.LblLDt.Top = CDbl(8160)
  loc_10D90A7: Me.LblLDt.Left = CDbl(13500)
  loc_10D90B6: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10D90C8: Set var_88 = Me.FGrid
  loc_10D90CE: var_88.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_10D90F2: Me.var_88.CursorLocation = 3
  loc_10D911C: var_B0 = "SELECT ItemMast.Code, ItemMast.Name, ItemMast.Unit, Depart.Name as Department,Case When Itemmast.RestCode='" & MemVar_1F92078 & "BANQ"
  loc_10D9123: var_B4 = var_B0 & "' Then 'BANQUET' Else D1.Name End as RestName,Itemmast.RestCode FROM (ItemMast Inner JOIN Depart ON ItemMast.Kitchen = Depart.Code) Left join Depart  as D1 on D1.Code=ItemMast.RestCode Where (Itemmast.LogSite_Code='"
  loc_10D9131: var_C8 = CVar(var_B4 & MemVar_1F92078 & "' or ItemMast.LogSite_Code='HO') AND ITEMMAST.DISPCODE=9999 and Type IN ('Finish','Semi Finish') Order by ItemMast.Name") 'String
  loc_10D9157: CVarUnk
  loc_10D915C: VerifyVarObj
  loc_10D9168: LateIdStAd
  loc_10D9180: Set global_76 = New 
  loc_10D9192: Me.DGFinish.CursorLocation = 3
  loc_10D91AB: var_AC = "Select Code,Name,IssueUnit as Unit,CASE WHEN ISNULL(LPurRate,0)=0 THEN ISNULL(PURCHRATE,0) ELSE ISNULL(LPurRate,0) END AS LPurRate,ConvRatio From ItemMast where (LOGSITE_CODE='" & MemVar_1F92078
  loc_10D91C0: var_B8 = var_AC & "' or LOGSITE_CODE='HO') and DispCode<>9999 and Code=ConsumptionItem And ActiveYN<>'No'" & " Union " & "Select Code,Name,Unit as Unit,CASE WHEN ISNULL(LPurRate,0)=0 THEN ISNULL(PURCHRATE,0) ELSE ISNULL(LPurRate,0) END AS LPurRate,ConvRatio From ItemMast Where (LOGSITE_CODE='"
  loc_10D91CE: var_D0 = var_B8 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type IN ('Semi Finish') and gravyItem='Yes' And ItemMast.ActiveYN<>'No' Order by Name"
  loc_10D91D7: unk_4AF61C.Execute var_D0, var_C8, -1
  loc_10D920E: CVarUnk
  loc_10D9213: VerifyVarObj
  loc_10D9219: Set var_88 = Me.DGItem
  loc_10D921F: LateIdStAd
  loc_10D9249: Me.DGItem.CursorLocation = 3
  loc_10D9273: var_B0 = "Select Distinct BOM.FinItem+BOM.RestCode as SearchCode,BOM.FinItem,ItemMast.Name,BOM.FinQty,BOM.AppDAte,ItemMast.Unit,BOM.Site_Code,Bom.LogSite_Code,BOM.RestCode,Case When BOM.RestCode='" & MemVar_1F92078 & "BANQ"
  loc_10D927A: var_B4 = MemVar_1F92078 & "BANQ" & "' or LOGSITE_CODE='HO') and DispCode<>9999 and Code=ConsumptionItem And ActiveYN<>'No'" & "' Then 'BANQUET' Else Depart.Name End RestName From BOM Inner Join ItemMast on ItemMast.Code=BOM.FinItem And ItemMast.RestCode=BOM.RestCode Left join Depart on Depart.Code=ItemMast.RestCode Where (BOM.LOGSITE_CODE='"
  loc_10D9292: r_C8, CVar(MemVar_1F92044), 2 CVar(var_B4 & MemVar_1F92078 & "') AND ITEMMAST.DISPCODE=9999 Order by ItemMast.Name,RestName"), CVar(MemVar_1F92044), 2
  loc_10D92C8: Call Proc_132_51_E7FF20(Proc_5_1_100CB50("INI", Me, New, 3, -1, Me), Me.DGFinish, Me, Me)
  loc_10D92D3: Call Proc_132_45_11DE2B8(New, 3)
  loc_10D92D8: Call Proc_132_50_1413BA0(-1)
  loc_10D92F0: Me.FGrid.Left = CVar(CDbl(700))
  loc_10D930B: Me.FGrid.Width = CVar(CDbl(9025))
  loc_10D9326: Me.FGrid.Top = CVar(CDbl(2750))
  loc_10D9341: Me.FGrid.Height = CVar(CDbl(5000))
  loc_10D9349: Exit Sub
  loc_10D934A: ' Referenced from: 10D9050
  loc_10D934A: Proc_6_60_E62BC4()
  loc_10D934F: Exit Sub
End Sub

Private Sub Form_Resize() 'ED2A88
  'Data Table: 4AF600
  Dim var_8C As Label
  loc_ED29E6: Call 0.Method_arg_50 (var_88)
  loc_ED29F8: Me.LblFormCaption.Caption = var_88
  loc_ED2A11: Me.LblFormCaption.Left = CDbl(0)
  loc_ED2A1D: Set var_A0 = Me.TopCtrl1
  loc_ED2A23: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED2A30: Set var_8C = Me.TopCtrl1
  loc_ED2A36: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED2A50: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED2A6B: Call 0.Method_arg_100 (var_B8)
  loc_ED2A7D: Me.LblFormCaption.Width = var_B8
  loc_ED2A85: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E58A64
  'Data Table: 4AF600
  loc_E58A2F: Set global_76 = Nothing
  loc_E58A41: Set global_68 = Nothing
  loc_E58A53: Set global_72 = Nothing
  loc_E58A5F: MasterFormExit = 0
  loc_E58A62: Exit Sub
End Sub

Private Sub Form_Activate() 'E4EEA0
  'Data Table: 4AF600
  loc_E4EE70: On Error Goto loc_E4EE9A
  loc_E4EE77: Set var_88 = Me.TopCtrl1
  loc_E4EE7D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4EE92: If (CLng(CInt()) = &H2D) Then
  loc_E4EE95:   Call TopCtrl1_UnknownEvent_15()
  loc_E4EE9A:   ' Referenced from: E4EE70
  loc_E4EE9A: End If
  loc_E4EE9A: Proc_6_60_E62BC4()
  loc_E4EE9F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2430C
  'Data Table: 4AF600
  Dim var_7701 As Double
  loc_E242F1: If (MasterFormExit = &HFF) Then
  loc_E24301:   Me.Global.Unload Me
  loc_E24309: End If
  loc_E24309: Exit Sub
  loc_E2430A: var_7701 = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28D10
  'Data Table: 4AF600
  loc_E28CE8: On Error Goto loc_E28D08
  loc_E28CFF: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E28D07: Exit Sub
  loc_E28D08: ' Referenced from: E28CE8
  loc_E28D08: Proc_6_60_E62BC4(Shift)
  loc_E28D0D: Exit Sub
End Sub

Private Sub DGFinish_UnknownEvent_9 'FCCBE8
  'Data Table: 4AF600
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As Label
  loc_FCCA3F: Me.DGFinish.Visible = False
  loc_FCCA5E: If (Me.RecordCount > 0) Then
  loc_FCCA9D:   Set var_B4 = Me.Txt
  loc_FCCAA3:   Call 0.Method_DGFinish_UnknownEvent_90 (CInt(0), var_B8)
  loc_FCCAAB:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FCCAFD:   Set var_B4 = Me.Txt
  loc_FCCB03:   Call 0.Method_DGFinish_UnknownEvent_90 (CInt(0), var_B8)
  loc_FCCB0B:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FCCB5C:   Me.LblOutlet.Caption = CStr(Me.Fields.Item("RestName").Value)
  loc_FCCB8D:   var_B0 = Me.Fields.Item("RestCode")
  loc_FCCBAB:   Me.LblOutlet.Tag = CStr(var_B0.Value)
  loc_FCCBBF: End If
  loc_FCCBCA: Set var_A8 = Me.Txt
  loc_FCCBD0: Call 0.Method_DGFinish_UnknownEvent_90 (CInt(0))
  loc_FCCBD8: var_B0.SetFocus
  loc_FCCBE4: Exit Sub
End Sub

Public Function MasterFormExitGet() '4B03CC
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4B03DB
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E97B40
  'Data Table: 4AF600
  Dim Me As Recordset15
  loc_E97ACE: On Error Goto loc_E97B37
  loc_E97AD7: Me.MoveFirst
  loc_E97B01: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97B29: Proc_5_0_110649C(&HFF, Me, global_68)
  loc_E97B31: Call Proc_132_50_1413BA0(0)
  loc_E97B36: Exit Sub
  loc_E97B37: ' Referenced from: E97ACE
  loc_E97B37: Proc_6_60_E62BC4(var_A0)
  loc_E97B3C: Exit Sub
End Sub

Public Sub Proc_132_45_11DE2B8
  'Data Table: 4AF600
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_11DDE3C: On Error Goto loc_11DE2AF
  loc_11DDE4D: Set var_88 = Me.Txt
  loc_11DDE53: Call 0.Method_Proc_132_45_11DE2B80 (CInt(0), var_8C)
  loc_11DDE72: Me.DGFinish.Left = CVar(var_8C.Left)
  loc_11DDE8E: Set var_B4 = Me.Txt
  loc_11DDE94: Call 0.Method_Proc_132_45_11DE2B80 (CInt(0), var_B8)
  loc_11DDEAF: Set var_88 = Me.Txt
  loc_11DDEB5: Call 0.Method_Proc_132_45_11DE2B80 (CInt(0), var_8C)
  loc_11DDEBD: var_90 = var_8C.Top
  loc_11DDECD: var_A0 = CVar(((var_90 + var_B8.Height) + CDbl(&H19))) 'Single
  loc_11DDEDC: Me.DGFinish.Top = CVar(var_8C.Left)
  loc_11DDEF4: Call 0.Method_Me0 (var_90)
  loc_11DDF00: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_11DDF0F: Me.FGrid.Width = CVar(var_8C.Left)
  loc_11DDF1D: Call 0.Method_Me8 (var_90)
  loc_11DDF29: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_11DDF38: Me.FGrid.Height = CVar(var_8C.Left)
  loc_11DDF4C: Set var_88 = Me.TxtGrid
  loc_11DDF52: Call 0.Method_Proc_132_45_11DE2B80 (0, var_8C)
  loc_11DDF71: Me.DGItem.Left = CVar(var_8C.Left)
  loc_11DDF8B: Set var_B4 = Me.TxtGrid
  loc_11DDF91: Call 0.Method_Proc_132_45_11DE2B80 (0, var_B8)
  loc_11DDFAA: Set var_88 = Me.TxtGrid
  loc_11DDFB0: Call 0.Method_Proc_132_45_11DE2B80 (0, var_8C)
  loc_11DDFC4: var_A0 = CVar((var_8C.Top + var_B8.Height)) 'Single
  loc_11DDFD3: Me.DGItem.Top = CVar(var_8C.Left)
  loc_11DDFE9: Set var_C4 = Me.FGrid
  loc_11DDFF8: var_C4.Cols = 8
  loc_11DE009: var_C4.Rows = 1
  loc_11DE022: global_56 = CStr(CLng(var_C4.BackColor))
  loc_11DE02F: var_A0 = CVar(CLng(0)) 'Long
  loc_11DE034: var_E8 = &H226
  loc_11DE040: LateIdCallSt
  loc_11DE048: var_A0 = 0
  loc_11DE054: var_E8 = CVar(CLng(0)) 'Long
  loc_11DE059: var_108 = "S.No"
  loc_11DE062: LateIdCallSt
  loc_11DE06D: var_A0 = CVar(CLng(1)) 'Long
  loc_11DE072: var_E8 = 0
  loc_11DE07E: LateIdCallSt
  loc_11DE089: var_A0 = CVar(CLng(2)) 'Long
  loc_11DE08E: var_E8 = &HB54
  loc_11DE09A: LateIdCallSt
  loc_11DE0A2: var_A0 = 0
  loc_11DE0AE: var_E8 = CVar(CLng(2)) 'Long
  loc_11DE0B3: var_108 = "Name"
  loc_11DE0BC: LateIdCallSt
  loc_11DE0C7: var_A0 = CVar(CLng(2)) 'Long
  loc_11DE0D2: var_E8 = CVar(CInt(1)) 'Integer
  loc_11DE0D9: LateIdCallSt
  loc_11DE0E4: var_A0 = CVar(CLng(3)) 'Long
  loc_11DE0E9: var_E8 = &H384
  loc_11DE0F5: LateIdCallSt
  loc_11DE100: var_A0 = CVar(CLng(3)) 'Long
  loc_11DE10B: var_E8 = CVar(CInt(7)) 'Integer
  loc_11DE112: LateIdCallSt
  loc_11DE11A: var_A0 = 0
  loc_11DE126: var_E8 = CVar(CLng(3)) 'Long
  loc_11DE12B: var_108 = "Qty"
  loc_11DE134: LateIdCallSt
  loc_11DE13F: var_A0 = CVar(CLng(4)) 'Long
  loc_11DE144: var_E8 = &H320
  loc_11DE150: LateIdCallSt
  loc_11DE158: var_A0 = 0
  loc_11DE164: var_E8 = CVar(CLng(4)) 'Long
  loc_11DE169: var_108 = "Unit"
  loc_11DE172: LateIdCallSt
  loc_11DE17D: var_A0 = CVar(CLng(4)) 'Long
  loc_11DE188: var_E8 = CVar(CInt(1)) 'Integer
  loc_11DE18F: LateIdCallSt
  loc_11DE19A: var_A0 = CVar(CLng(5)) 'Long
  loc_11DE19F: var_E8 = &H3E8
  loc_11DE1AB: LateIdCallSt
  loc_11DE1B3: var_A0 = 0
  loc_11DE1BF: var_E8 = CVar(CLng(5)) 'Long
  loc_11DE1C4: var_108 = "Cost"
  loc_11DE1CD: LateIdCallSt
  loc_11DE1D8: var_A0 = CVar(CLng(5)) 'Long
  loc_11DE1E3: var_E8 = CVar(CInt(7)) 'Integer
  loc_11DE1EA: LateIdCallSt
  loc_11DE1F5: var_A0 = CVar(CLng(6)) 'Long
  loc_11DE1FA: var_E8 = &H3E8
  loc_11DE206: LateIdCallSt
  loc_11DE20E: var_A0 = 0
  loc_11DE21A: var_E8 = CVar(CLng(6)) 'Long
  loc_11DE21F: var_108 = "Total"
  loc_11DE228: LateIdCallSt
  loc_11DE233: var_A0 = CVar(CLng(6)) 'Long
  loc_11DE23E: var_E8 = CVar(CInt(7)) 'Integer
  loc_11DE245: LateIdCallSt
  loc_11DE250: var_A0 = CVar(CLng(7)) 'Long
  loc_11DE255: var_E8 = &H3B6
  loc_11DE261: LateIdCallSt
  loc_11DE269: var_A0 = 0
  loc_11DE275: var_E8 = CVar(CLng(7)) 'Long
  loc_11DE27A: var_108 = "Waste %"
  loc_11DE283: LateIdCallSt
  loc_11DE28E: var_A0 = CVar(CLng(7)) 'Long
  loc_11DE299: var_E8 = CVar(CInt(7)) 'Integer
  loc_11DE2A0: LateIdCallSt
  loc_11DE2AA: Set var_C4 = Nothing 
  loc_11DE2AE: Exit Sub
  loc_11DE2AF: ' Referenced from: 11DDE3C
  loc_11DE2AF: Proc_6_60_E62BC4(var_C4, var_E8, var_A0, var_C4, var_108, var_E8, var_A0, var_C4)
  loc_11DE2B4: Exit Sub
End Sub

Public Sub Proc_132_46_FE9718
  'Data Table: 4AF600
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_4AF61C As Connection15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  loc_FE9573: If (Me.RecordCount = 0) Then
  loc_FE9576:   Proc_132_46_FE9718 = 
  loc_FE957C: End If
  loc_FE9580: Set var_90 = Me.TopCtrl1
  loc_FE9586: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE958E: var_A4 = CStr()
  loc_FE959F: If (var_A4 = "Add") Then
  loc_FE95CF:   Set var_90 = Me.Txt
  loc_FE95D5:   Call 0.Method_Proc_132_46_FE97180 (CInt(0), var_A8, var_A4, "Select Count(*) From BOM Where FinItem='", var_A0, -1)
  loc_FE9616:   unk_4AF61C.Execute var_D8 & var_A4 & "' And RestCode='" & Me.LblOutlet.Tag & "'", 0, var_EC
  loc_FE9626:    = var_D8.Item()
  loc_FE962E:    = var_EC.Value
  loc_FE9663:   If (var_A8.Tag.Fields > 0) Then
  loc_FE967D:     If (Me.RecordCount > 0) Then
  loc_FE9686:       Me.MoveFirst
  loc_FE96AA:       Set var_90 = Me.Txt
  loc_FE96B0:       Call 0.Method_Proc_132_46_FE97180 (CInt(0), var_A8, var_A4, "SearchCode='")
  loc_FE96B8:       0 = var_A8.Tag
  loc_FE96EA:       Me.Find 1 & var_A4 & Me.LblOutlet.Tag & "'", var_D0, 
  loc_FE9705:       Call TopCtrl1_UnknownEvent_D()
  loc_FE970A:       Call Proc_132_50_1413BA0()
  loc_FE970F:     End If
  loc_FE970F:   End If
  loc_FE970F: End If
  loc_FE970F: Proc_132_46_FE9718 = 
End Sub

Public Sub Proc_132_47_E417B0
  'Data Table: 4AF600
  loc_E4178C: Set var_88 = Me.TopCtrl1
  loc_E41792: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E417AB: If (CStr() = "Browse") Then
  loc_E417AE:   Exit Sub
  loc_E417AF: End If
  loc_E417AF: Exit Sub
End Sub

Public Sub Proc_132_48_135C0B4(arg_C) '135C0B4
  'Data Table: 4AF600
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_148 As Variant
  Dim var_124 As Variant
  Dim var_B0 As String
  Dim var_170 As Double
  Dim var_158 As Variant
  Dim var_138 As MSHFlexGrid
  Dim var_244 As Double
  loc_135B8AB: var_A0 = CLng(Me.FGrid.Col)
  loc_135B8BB: If (var_A0 = CLng(2)) Then
  loc_135B90C:   Set var_8C = Me.TxtGrid
  loc_135B912:   Call 0.Method_Proc_132_48_135C0B40 (arg_C, var_AC, var_B0)
  loc_135B91A:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_135B932:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_135B948:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135B950:     var_E0 = CVar(CLng(2)) 'Long
  loc_135B955:     var_100 = vbNullString
  loc_135B95F:     Set var_AC = Me.FGrid
  loc_135B965:     LateIdCallSt
  loc_135B98A:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135B992:     var_E0 = CVar(CLng(1)) 'Long
  loc_135B997:     var_100 = vbNullString
  loc_135B9A1:     Set var_AC = Me.FGrid
  loc_135B9A7:     LateIdCallSt
  loc_135B9CC:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135B9D4:     var_E0 = CVar(CLng(5)) 'Long
  loc_135B9D9:     var_100 = vbNullString
  loc_135B9E3:     Set var_AC = Me.FGrid
  loc_135B9E9:     LateIdCallSt
  loc_135B9FE:   Else
  loc_135BA11:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135BA19:     var_F0 = CVar(CLng(2)) 'Long
  loc_135BA4C:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_135BA54:     Set var_138 = Me.FGrid
  loc_135BA5A:     LateIdCallSt
  loc_135BA89:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135BA91:     var_F0 = CVar(CLng(1)) 'Long
  loc_135BAC4:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_135BACC:     Set var_138 = Me.FGrid
  loc_135BAD2:     LateIdCallSt
  loc_135BB01:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135BB09:     var_F0 = CVar(CLng(4)) 'Long
  loc_135BB33:     var_124 = Me.Fields.Item("Unit").Value
  loc_135BB3C:     var_134 = CVar(CStr(var_124)) 'String
  loc_135BB4A:     LateIdCallSt
  loc_135BB70:     var_134 = Me.FGrid.Row
  loc_135BBAF:     Proc_6_39_E7C810(var_124, CVar(Me.Fields.Item("LPurRate")), CVar(CLng(5)), CVar(CLng(var_134)), Me.FGrid, var_134, CVar(CLng(5)))
  loc_135BBB8:     var_148 = CVar(CStr(var_124)) 'String
  loc_135BBC0:     Set var_138 = Me.FGrid
  loc_135BBC6:     LateIdCallSt
  loc_135BBE2:   End If
  loc_135BBFB:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_135BC00:   var_E0 = 1
  loc_135BC1E:   var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_135BC37:   If (var_B0 <> vbNullString) Then
  loc_135BC4F:     var_124 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_135BC57:     Set var_AC = Me.FGrid
  loc_135BC73:   End If
  loc_135BC76: Else
  loc_135BC7D:   If (var_A0 = CLng(3)) Then
  loc_135BC8C:     Set var_8C = Me.TxtGrid
  loc_135BC92:     Call 0.Method_Proc_132_48_135C0B40 (0, var_AC, var_B0, FGrid.DispID_10000, var_124, var_E0, "LPurRate")
  loc_135BC9A:     var_138 = var_AC.Text
  loc_135BCBD:     var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135BCC5:     var_100 = CVar(CLng(3)) 'Long
  loc_135BCF2:     var_158 = CVar(CStr(Format(CVar(Val(var_B0)), "0.0000"))) 'String
  loc_135BCFA:     Set var_138 = Me.FGrid
  loc_135BD00:     LateIdCallSt
  loc_135BD36:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135BD3E:     var_E0 = CVar(CLng(3)) 'Long
  loc_135BD47:     Set var_AC = Me.FGrid
  loc_135BD58:     var_B0 = CStr(var_AC.TextMatrix))
  loc_135BD60:     var_170 = Val(var_B0)
  loc_135BD76:     var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135BDA0:     var_244 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_135BDFD:     LateIdCallSt
  loc_135BE30:     Call Proc_132_54_F0CB7C(Me.FGrid, CVar(CStr(Format(CVar((var_170 * var_244)), "0.000"))), 1, 1, CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), var_244, CVar(CLng(5)))
  loc_135BE38:   Else
  loc_135BE3F:     If (var_A0 = CLng(5)) Then
  loc_135BE4E:       Set var_8C = Me.TxtGrid
  loc_135BE54:       Call 0.Method_Proc_132_48_135C0B40 (0, var_AC, var_B0, var_100, var_170)
  loc_135BE5C:       var_E0 = var_AC.Text
  loc_135BE7F:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135BE87:       var_100 = CVar(CLng(5)) 'Long
  loc_135BEB4:       var_158 = CVar(CStr(Format(CVar(Val(var_B0)), "0.0000"))) 'String
  loc_135BEBC:       Set var_138 = Me.FGrid
  loc_135BEC2:       LateIdCallSt
  loc_135BEF8:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135BF00:       var_E0 = CVar(CLng(3)) 'Long
  loc_135BF09:       Set var_AC = Me.FGrid
  loc_135BF1A:       var_B0 = CStr(var_AC.TextMatrix))
  loc_135BF22:       var_170 = Val(var_B0)
  loc_135BF38:       var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135BF62:       var_244 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_135BFBF:       LateIdCallSt
  loc_135BFF2:       Call Proc_132_54_F0CB7C(Me.FGrid, CVar(CStr(Format(CVar((var_170 * var_244)), "0.000"))), 1, 1, CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), var_244, CVar(CLng(5)))
  loc_135BFFA:     Else
  loc_135C001:       If (var_A0 = CLng(7)) Then
  loc_135C010:         Set var_8C = Me.TxtGrid
  loc_135C016:         Call 0.Method_Proc_132_48_135C0B40 (0, var_AC, var_B0, var_100, var_170)
  loc_135C01E:         var_E0 = var_AC.Text
  loc_135C041:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_135C049:         var_100 = CVar(CLng(7)) 'Long
  loc_135C076:         var_158 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_135C07E:         Set var_138 = Me.FGrid
  loc_135C084:         LateIdCallSt
  loc_135C0A7:       End If
  loc_135C0A7:     End If
  loc_135C0A7:   End If
  loc_135C0A7: End If
  loc_135C0AC: Proc_132_48_135C0B4 = &HFF
End Sub

Public Sub Proc_132_49_F31068
  'Data Table: 4AF600
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F30F56: global_80 = vbNullString
  loc_F30F68: Set var_8C = Me.Txt
  loc_F30F6E: Call 0.Method_Proc_132_49_F31068C (var_8E, var_86)
  loc_F30F7E: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F30F94:   Set var_8C = Me.Txt
  loc_F30F9A:   Call 0.Method_Proc_132_49_F310680 (CInt(var_86), var_98)
  loc_F30FA2:   var_98.Text = vbNullString
  loc_F30FBE:   Set var_8C = Me.Txt
  loc_F30FC4:   Call 0.Method_Proc_132_49_F310680 (CInt(var_86), var_98)
  loc_F30FCC:   var_98.Tag = vbNullString
  loc_F30FDB: Next var_92 'Byte
  loc_F30FEE: Me.lbltotal.Caption = vbNullString
  loc_F31009: Me.FGrid.Rows = 1
  loc_F31026: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F3102E: Set var_98 = Me.FGrid
  loc_F3105D: Me.FGrid.FixedRows = 1
  loc_F31065: Exit Sub
End Sub

Public Sub Proc_132_50_1413BA0
  'Data Table: 4AF600
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_A4 As Variant
  Dim var_C0 As TextBox
  Dim var_BC As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim unk_4AF61C As Connection15
  Dim var_9C As Recordset15
  Dim var_148 As Variant
  Dim var_124 As Variant
  Dim var_88 As Recordset15
  Dim var_8C As Integer
  Dim var_134 As Variant
  Dim var_158 As Variant
  loc_1413154: On Error Goto loc_1413B97
  loc_141316E: If (Me.RecordCount > 0) Then
  loc_1413171:   Call Proc_132_49_F31068()
  loc_14131B2:   Set var_BC = Me.Txt
  loc_14131B8:   Call 0.Method_Proc_132_50_1413BA00 (CInt(0), var_C0)
  loc_14131C0:   var_C0.Tag = CStr(Me.Fields.Item("FinItem").Value)
  loc_141320F:   Set var_BC = Me.Txt
  loc_1413215:   Call 0.Method_Proc_132_50_1413BA00 (CInt(0), var_C0)
  loc_141321D:   var_C0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_1413269:   Me.LblOutlet.Caption = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestName")))
  loc_14132B3:   Me.LblOutlet.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestCode")))
  loc_141331A:   Set var_BC = Me.Txt
  loc_1413320:   Call 0.Method_Proc_132_50_1413BA00 (CInt(1), var_C0, CStr(Format(CVar(Me.Fields.Item("FinQty")), "0.0000")))
  loc_1413328:   var_C0.Text = 1
  loc_141337B:   Set var_BC = Me.Txt
  loc_1413381:   Call 0.Method_Proc_132_50_1413BA00 (CInt(2), var_C0)
  loc_1413389:   var_C0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")))
  loc_14133D6:   Set var_BC = Me.Txt
  loc_14133DC:   Call 0.Method_Proc_132_50_1413BA00 (CInt(3), var_C0)
  loc_14133E4:   var_C0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("AppDate")))
  loc_1413405:   var_E4 = "Select BOM.*,ItemMast.Name as Name,ItemMast.Unit,ItemMast.LPurRate,ItemMast.IssueUnit From BOM Left Join ItemMast on ItemMast.Code=BOM.RawItem And (ItemMast.ItemType='Store' Or GravyItem='Yes') where BOM.FinItem+BOM.RestCode='"
  loc_141344E:   unk_4AF61C.Execute CStr("0.0000" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_1413459:   Set var_88 = var_BC
  loc_1413480:   var_E4 = "Select BOM.U_name,bom.U_EntDt,BOm.U_AE From BOM Left Join ItemMast on ItemMast.Code=BOM.RawItem where BOM.FinItem+BOM.RestCode='"
  loc_14134C9:   unk_4AF61C.Execute CStr("0.0000" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_14134D4:   Set var_9C = var_BC
  loc_1413528:   var_BC = var_9C.Fields
  loc_1413591:   var_198 = IIf((Proc_6_38_E68A98(CVar(var_9C.Fields.Item("U_AE")), var_BC) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_BC.Item("U_AE")), var_BC) = "E"), "Modified By : ", "User : "))
  loc_14135D6:   Me.LblUser.Caption = CStr(1 & CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("U_Name")), var_198)))
  loc_14136B1:   var_198 = IIf((Proc_6_38_E68A98(CVar(var_9C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_9C.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_14136F6:   Me.LblLDt.Caption = CStr(var_198 & CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("U_EntDt")))))
  loc_1413742:   If (var_88.RecordCount > 0) Then
  loc_1413747:     var_8C = 1
  loc_141375D:     Me.FGrid.Rows = 1
  loc_1413765:     ' Referenced from: 1413AEE
  loc_1413774:     If Not(var_88.EOF) Then
  loc_1413777:       var_B4 = vbNullString
  loc_1413781:       Set var_A4 = Me.FGrid
  loc_1413796:       Set var_1F8 = Me.FGrid
  loc_141379D:       var_E4 = CVar(CLng(var_8C)) 'Long
  loc_14137A5:       var_124 = CVar(CLng(0)) 'Long
  loc_14137D5:       var_F4 = CVar(CStr(var_88.Fields.Item("RawSno").Value)) 'String
  loc_14137DC:       LateIdCallSt
  loc_141382B:       var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RawItem")), CVar(CLng(1)), CVar(CLng(var_8C)), var_1F8, var_F4)) 'String
  loc_1413832:       LateIdCallSt
  loc_141387D:       var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")), CVar(CLng(2)), CVar(CLng(var_8C)), var_1F8, var_F4)) 'String
  loc_1413884:       LateIdCallSt
  loc_14138CF:       var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(4)), CVar(CLng(var_8C)), var_1F8, var_F4)) 'String
  loc_14138D6:       LateIdCallSt
  loc_1413908:       var_114 = CVar(CLng(var_8C)) 'Long
  loc_1413924:       var_F4 = "0.0000"
  loc_1413944:       LateIdCallSt
  loc_1413980:       Proc_6_39_E7C810(var_F4, CVar(var_88.Fields.Item("Waste")), var_1F8, CVar(CStr(Format(CVar(var_88.Fields.Item("RawQty")), var_F4))), 1, 1, CVar(CLng(3)))
  loc_1413989:       var_114 = CVar(CLng(var_8C)) 'Long
  loc_14139C1:       LateIdCallSt
  loc_14139FF:       Proc_6_39_E7C810(var_F4, CVar(var_88.Fields.Item("Cost")), var_1F8, CVar(CStr(Format(var_F4, "0.00"))), 1, 1, CVar(CLng(7)))
  loc_1413A08:       var_114 = CVar(CLng(var_8C)) 'Long
  loc_1413A40:       LateIdCallSt
  loc_1413A7E:       Proc_6_39_E7C810(var_F4, CVar(var_88.Fields.Item("Total")), var_1F8, CVar(CStr(Format(var_F4, "0.00000"))), 1, 1, CVar(CLng(5)))
  loc_1413A87:       var_114 = CVar(CLng(var_8C)) 'Long
  loc_1413A8F:       var_148 = CVar(CLng(6)) 'Long
  loc_1413AB8:       var_158 = CVar(CStr(Format(var_F4, "0.0000"))) 'String
  loc_1413ABF:       LateIdCallSt
  loc_1413AD9:       Set var_1F8 = Nothing 
  loc_1413AE3:       var_8C = (var_8C + 1)
  loc_1413AE9:       var_88.MoveNext
  loc_1413AEE:       GoTo loc_1413765
  loc_1413AF1:     End If
  loc_1413AF1:   End If
  loc_1413AF1:   var_B4 = 0
  loc_1413AFB:   Set var_A4 = Me.FGrid
  loc_1413B28:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1413B2B:     var_B4 = "1"
  loc_1413B35:     Set var_A4 = Me.FGrid
  loc_1413B46:   End If
  loc_1413B46:   var_B4 = 1
  loc_1413B59:   Me.FGrid.FixedRows = var_B4
  loc_1413B61:   Call Proc_132_54_F0CB7C(FGrid.DispID_10000, var_B4, FGrid.DispID_2E, var_B4, var_8C, var_1F8, var_158)
  loc_1413B69: Else
  loc_1413B69:   Call Proc_132_49_F31068(1, 1, var_148)
  loc_1413B6E: End If
  loc_1413B81: Me.FGrid.Col = 1
  loc_1413B89: Call Proc_132_52_E850F0(var_114, var_114)
  loc_1413B93: Set var_88 = Nothing
  loc_1413B96: Exit Sub
  loc_1413B97: ' Referenced from: 1413154
  loc_1413B97: Proc_6_60_E62BC4(var_114)
  loc_1413B9C: Exit Sub
End Sub

Public Sub Proc_132_51_E7FF20(arg_C) 'E7FF20
  'Data Table: 4AF600
  Dim var_98 As TextBox
  loc_E7FEC6: Set var_8C = Me.Txt
  loc_E7FECC: Call 0.Method_Proc_132_51_E7FF20C (var_8E, var_86)
  loc_E7FEDC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7FEE9:   If (var_86 <> 2) Then
  loc_E7FEFC:     Set var_8C = Me.Txt
  loc_E7FF02:     Call 0.Method_Proc_132_51_E7FF200 (CInt(var_86), var_98)
  loc_E7FF0A:     var_98.Enabled = arg_C
  loc_E7FF16:   End If
  loc_E7FF19: Next var_92 'Byte
  loc_E7FF1F: Exit Sub
End Sub

Public Sub Proc_132_52_E850F0
  'Data Table: 4AF600
  loc_E8509C: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E850AE:   Me.DGItem.Visible = False
  loc_E850B6: End If
  loc_E850D2: If (CBool(Me.DGFinish.Visible) = &HFF) Then
  loc_E850E4:   Me.DGFinish.Visible = False
  loc_E850EC: End If
  loc_E850EC: Exit Sub
End Sub

Public Sub Proc_132_53_E92AD4(arg_C) 'E92AD4
  'Data Table: 4AF600
  Dim var_10C As TextBox
  loc_E92A68: Call Proc_132_52_E850F0()
  loc_E92AA4: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E92AA7:   Call TopCtrl1_UnknownEvent_16()
  loc_E92AAF: Else
  loc_E92AB9:   Set var_108 = Me.Txt
  loc_E92ABF:   Call 0.Method_Proc_132_53_E92AD40 (arg_C)
  loc_E92AC7:   var_10C.SetFocus
  loc_E92AD3: End If
  loc_E92AD3: Exit Sub
End Sub

Public Sub Proc_132_54_F0CB7C
  'Data Table: 4AF600
  Dim var_90 As Double
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  loc_F0CAA1: Me.lbltotal.Caption = vbNullString
  loc_F0CAAC: var_90 = CDbl(0)
  loc_F0CAD4: For var_A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A8 'Integer
  loc_F0CADE:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_F0CAE6:   var_D8 = CVar(CLng(6)) 'Long
  loc_F0CB12:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F0CB21: Next var_A8 'Integer
  loc_F0CB26: var_D8 = "Total->"
  loc_F0CB65: Me.lbltotal.Caption = CStr(1 & Format(var_90, "0.0000"))
  loc_F0CB79: Exit Sub
End Sub
