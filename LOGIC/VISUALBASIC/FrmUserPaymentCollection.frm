VERSION 5.00
Begin VB.Form FrmUserPaymentCollection
  Caption = "User Payment Receive Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11010
  ClientHeight = 7950
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11010
    Height = 450
    TabIndex = 20
  End
  Begin DataGrid DGUser
    Left = 7665
    Top = 705
    Width = 4200
    Height = 2160
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin Frame FrmList
    Left = 11760
    Top = 5565
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 17
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 135
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 18
    End
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 2535
    Top = 1320
    Width = 1350
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 12
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2535
    Top = 2265
    Width = 4185
    Height = 285
    TabIndex = 6
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
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2535
    Top = 1950
    Width = 1350
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 2
    Left = 6900
    Top = 5700
    Width = 1350
    Height = 255
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 8
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HFF0000&
    Left = 2535
    Top = 1635
    Width = 1350
    Height = 285
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
  Begin TextBox Txt
    Index = 0
    Left = 6900
    Top = 6120
    Width = 1875
    Height = 255
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 21
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2535
    Top = 2580
    Width = 4185
    Height = 1050
    TabIndex = 7
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 150
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
  Begin MaskEdBox txtM
    Index = 4
    Left = 3900
    Top = 1635
    Width = 720
    Height = 255
    TabIndex = 4
  End
  Begin MSFlexGrid FGPoint
    Left = 11940
    Top = 3210
    Width = 1785
    Height = 1440
    Visible = 0   'False
    TabIndex = 19
  End
  Begin Label LblName
    Caption = "Type"
    Index = 3
    ForeColor = &HFF0000&
    Left = 1320
    Top = 1305
    Width = 465
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
    Caption = "Against User"
    Index = 0
    ForeColor = &HFF0000&
    Left = 1305
    Top = 2265
    Width = 1185
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
  Begin Label LblName
    Caption = "Amount"
    Index = 6
    ForeColor = &HFF0000&
    Left = 1305
    Top = 1950
    Width = 735
    Height = 240
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
    Caption = "Date"
    Index = 2
    ForeColor = &HFF0000&
    Left = 1305
    Top = 1635
    Width = 435
    Height = 240
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 6180
    Top = 5715
    Width = 600
    Height = 240
    TabIndex = 11
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Vr.No"
    Index = 1
    ForeColor = &H0&
    Left = 5535
    Top = 5700
    Width = 480
    Height = 240
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label1
    Caption = "DOC ID"
    Index = 3
    ForeColor = &H0&
    Left = 6105
    Top = 6120
    Width = 615
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Narration"
    Index = 4
    ForeColor = &HFF0000&
    Left = 1305
    Top = 2580
    Width = 885
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
End

Attribute VB_Name = "FrmUserPaymentCollection"

Private global_68 As Recordset15
Private global_72 As Variant
Private MasterFormExit As Integer

Private Sub FGPoint_UnknownEvent_9 'E33EB4
  'Data Table: 480BE4
  loc_E33EA8: If (CBool(Me.DGUser.Visible) = &HFF) Then
  loc_E33EAB:   Call DGUser_UnknownEvent_9()
  loc_E33EB0: End If
  loc_E33EB0: Exit Sub
End Sub

Private Sub DGUser_UnknownEvent_9 'EEABE0
  'Data Table: 480BE4
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EEAB29: Set var_A8 = Me.DGUser
  loc_EEAB2F: var_A8.Visible = False
  loc_EEAB51: If (Me.var_A8.RecordCount > 0) Then
  loc_EEAB74:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_EEAB93:   Set var_B4 = Me.Txt
  loc_EEAB99:   Call 0.Method_DGUser_UnknownEvent_90 (CInt(5), var_B8)
  loc_EEABA1:   var_B8.Text = CStr(var_B0.Value)
  loc_EEABB7: End If
  loc_EEABC2: Set var_A8 = Me.Txt
  loc_EEABC8: Call 0.Method_DGUser_UnknownEvent_90 (CInt(5))
  loc_EEABD0: var_B0.SetFocus
  loc_EEABDC: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1119D44
  'Data Table: 480BE4
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_B4 As String
  Dim var_90 As Fields15
  Dim var_B8 As Variant
  Dim arg_6CFF As Variant
  loc_1119A12: Set var_88 = Me.Txt
  loc_1119A18: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1119A26: Proc_6_74_E226B0(var_8C)
  loc_1119A32: Call Proc_287_39_EB84BC(var_8C)
  loc_1119A3A: var_92 = Index
  loc_1119A45: If Not (var_92 = CInt(3)) Then
  loc_1119A50:   If (var_92 = CInt(4)) Then
  loc_1119A53:   End If
  loc_1119A5B:   var_98 = "{Home}+{End}"
  loc_1119A61:   Proc_303_0_FB9B68(var_98, 0)
  loc_1119A6C: Else
  loc_1119A74:   If (var_92 = CInt(5)) Then
  loc_1119A91:     If (Me.Recordset15.RecordCount > 0) Then
  loc_1119A9F:       Set var_8C = Me.FGPoint
  loc_1119ABB:       Proc_6_137_1193554(Me.DGUser, global_68, Index)
  loc_1119AC9:     End If
  loc_1119B20:     Set var_88 = Me.Txt
  loc_1119B26:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1119B2E:     ((global_68.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_1119B46:     If (var_8C Or (var_98 = vbNullString)) Then
  loc_1119B56:       Set var_88 = Me.Txt
  loc_1119B5C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1119B64:       var_8C.Tag = vbNullString
  loc_1119B70:       Exit Sub
  loc_1119B71:     End If
  loc_1119B7E:     Set var_88 = Me.Txt
  loc_1119B84:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1119B8C:     var_98 = var_8C.Text
  loc_1119B9E:     var_B4 = "Name"
  loc_1119BDC:     If CBool(CVar(var_98) <> Me.Recordset15.Fields.Item(var_B4).Value) Then
  loc_1119BE8:       Me.Recordset15.MoveFirst
  loc_1119C0B:       Set var_88 = Me.Txt
  loc_1119C11:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name='")
  loc_1119C19:       0 = var_8C.Text
  loc_1119C35:       Me.Recordset15.Find 1 & var_98 & "'", var_B4, var_92
  loc_1119C4A:     End If
  loc_1119C4D:   Else
  loc_1119C55:     If (var_92 = CInt(1)) Then
  loc_1119C65:       ReDim var_F4(0 To 1)
  loc_1119C7C:       var_F4(0) = "Misc Rect."
  loc_1119C8B:       var_F4(1) = "Misc Payment"
  loc_1119CA2:       global_72 = Array(var_F4)
  loc_1119CAD:       Set var_B8 = Me.ListView
  loc_1119CC8:       Set var_8C = Me.Txt
  loc_1119CE2:       Set global_88 = Proc_6_66_EFF8FC(var_B8, var_8C, Index)
  loc_1119D00:       Set var_88 = Me.Txt
  loc_1119D06:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1119D0E:       global_72 = var_8C.Text
  loc_1119D20:       Set var_90 = Me.Txt
  loc_1119D26:       Call 0.Method_Txt_GotFocus0 (Index, var_B8, var_98)
  loc_1119D2E:       var_B8.Tag = 2
  loc_1119D41:     End If
  loc_1119D41:   End If
  loc_1119D41: End If
  loc_1119D41: Exit Sub
  loc_1119D42: arg_6CFF = CVar(global_72) 'Integer
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11E9074
  'Data Table: 480BE4
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As DataGrid
  Dim var_E0 As String
  loc_11E8C13: var_86 = Shift
  loc_11E8C20: If (CLng(Shift) = &H1B) Then
  loc_11E8C23:   Call Proc_287_39_EB84BC(var_86)
  loc_11E8C28:   Exit Sub
  loc_11E8C29: End If
  loc_11E8C2C: var_88 = KeyCode
  loc_11E8C37: If (var_88 = CInt(5)) Then
  loc_11E8C45:   Set var_A8 = Me.Txt
  loc_11E8C57:   Set var_9C = Me.FGPoint
  loc_11E8C62:   Set var_98 = Nothing
  loc_11E8C94:   Proc_6_69_134A198(Me.DGUser, var_A8, KeyCode, global_68, Shift, 0)
  loc_11E8CB6:   var_B0 = Me.FGPoint.RecordCount
  loc_11E8D06:   If ((var_B0 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11E8D0D:     Set var_98 = Me.DGUser
  loc_11E8D14:     Set var_90 = Me.FGPoint
  loc_11E8D30:     Proc_6_138_106D6F8(var_98, global_68, KeyCode, var_90, 1)
  loc_11E8D3E:   End If
  loc_11E8D41: Else
  loc_11E8D49:   If (var_88 = CInt(1)) Then
  loc_11E8D6E:     Set var_8C = Me.Txt
  loc_11E8D74:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, var_98)
  loc_11E8D7C:     var_9C = var_90.Left
  loc_11E8D8E:     Set var_98 = Me.Txt
  loc_11E8D94:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B4)
  loc_11E8D9C:     0 = var_9C.Top
  loc_11E8DAE:     Set var_A4 = Me.Txt
  loc_11E8DB4:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_11E8DBC:     var_B8 = var_A8.Height
  loc_11E8DCE:     Set var_AC = Me.Txt
  loc_11E8DD4:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_11E8DDC:     var_C0 = var_BC.Width
  loc_11E8E24:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11E8E4B:   Else
  loc_11E8E53:     If (var_88 = CInt(6)) Then
  loc_11E8E59:       Proc_6_58_E054C0(Shift, CInt(var_B0), CInt((var_B4 + var_B8)))
  loc_11E8E68:       If (CLng(Shift) = &H2D) Then
  loc_11E8E78:         Set var_8C = Me.Txt
  loc_11E8E7E:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_E4)
  loc_11E8E86:         CInt(var_C0) = var_90.Text
  loc_11E8E91:         Call Proc_287_42_EE36B8(var_E0, var_E4)
  loc_11E8EA7:         Set var_98 = Me.Txt
  loc_11E8EAD:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11E8EB5:         var_9C.Text = 680 & var_E0
  loc_11E8EDB:         Set var_8C = Me.Txt
  loc_11E8EE1:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11E8EFC:         Set var_98 = Me.Txt
  loc_11E8F02:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11E8F0A:         var_9C.SelStart = Len(var_90.Text)
  loc_11E8F1D:         Exit Sub
  loc_11E8F1E:       End If
  loc_11E8F1E:     End If
  loc_11E8F1E:   End If
  loc_11E8F1E: End If
  loc_11E8F57: If ((CBool(Me.DGUser.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_11E8F78:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(6))) Then
  loc_11E8F81:     Proc_6_75_E527CC(Shift, arg_14)
  loc_11E8F86:   End If
  loc_11E8F8A:   Set var_8C = Me.TopCtrl1
  loc_11E8F90:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_88)
  loc_11E8FB2:   If ((CStr() = "Add") And (KeyCode <> CInt(2))) Then
  loc_11E8FCA:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11E8FD3:       Proc_6_76_E52838(Shift)
  loc_11E8FD8:     End If
  loc_11E8FDB:   Else
  loc_11E8FDF:     Set var_8C = Me.TopCtrl1
  loc_11E8FE5:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(arg_14)
  loc_11E8FFE:     If (CStr() = "Edit") Then
  loc_11E9016:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11E901F:         Proc_6_76_E52838(Shift)
  loc_11E9024:       End If
  loc_11E9024:     End If
  loc_11E9024:   End If
  loc_11E9042:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(6))) Then
  loc_11E9048:     Call Proc_287_40_E917D8(KeyCode)
  loc_11E904D:     Exit Sub
  loc_11E904E:   End If
  loc_11E9063:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11E906C:     Proc_6_75_E527CC(Shift, arg_14)
  loc_11E9071:   End If
  loc_11E9071: End If
  loc_11E9071: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F1D5B8
  'Data Table: 480BE4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F1D4BC: On Error Goto loc_F1D5AF
  loc_F1D4C2: Proc_6_58_E054C0(arg_10)
  loc_F1D4CA: var_86 = KeyAscii
  loc_F1D4D5: If (var_86 = CInt(4)) Then
  loc_F1D4E2:   Set var_8C = Me.Txt
  loc_F1D4E8:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F1D503:   Proc_6_42_129A86C(var_90, arg_10, 7)
  loc_F1D512: Else
  loc_F1D51A:   If (var_86 = CInt(5)) Then
  loc_F1D539:     If (CBool(Me.DGUser.Visible) = &HFF) Then
  loc_F1D54B:       var_AC = "Name"
  loc_F1D56A:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10)
  loc_F1D5A0:       Proc_6_138_106D6F8(Me.DGUser, global_68, KeyAscii, Me.FGPoint)
  loc_F1D5AE:     End If
  loc_F1D5AE:   End If
  loc_F1D5AE: End If
  loc_F1D5AE: Exit Sub
  loc_F1D5AF: ' Referenced from: F1D4BC
  loc_F1D5AF: Proc_6_60_E62BC4(var_AC, 0)
  loc_F1D5B4: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFF52C
  'Data Table: 480BE4
  Dim var_86 As Integer
  loc_DFF527: var_86 = KeyCode
  loc_DFF52A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F724
  'Data Table: 480BE4
  loc_E4F702: Set var_88 = Me.Txt
  loc_E4F708: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F716: Proc_6_73_E22704(var_8C)
  loc_E4F722: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '11A2D64
  'Data Table: 480BE4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_C4 As Long
  Dim var_94 As String
  Dim var_F0 As TextBox
  Dim var_EC As TextBox
  Dim arg_10 As Integer
  Dim var_8C As Fields15
  loc_11A2957: var_86 = Cancel
  loc_11A2962: If (var_86 = CInt(3)) Then
  loc_11A2973:   Set var_8C = Me.Txt
  loc_11A2979:   Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_11A2997:   var_C4 = Len(Trim(CVar(var_90.Text)))
  loc_11A29B1:   If (var_C4 = 0) Then
  loc_11A29C7:     Set var_8C = Me.Txt
  loc_11A29CD:     Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_11A29D5:     var_90.Text = CStr(MemVar_1F920EC)
  loc_11A29E7:   Else
  loc_11A29F1:     Set var_8C = Me.Txt
  loc_11A29F7:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11A2A17:     Set var_EC = Me.Txt
  loc_11A2A1D:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_11A2A25:     var_F0.Text = Proc_6_33_1512840(var_90)
  loc_11A2A45:     Set var_8C = Me.Txt
  loc_11A2A4B:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11A2A6E:     Set var_E8 = Me.Txt
  loc_11A2A74:     Call 0.Method_Txt_Validate0 (Cancel, var_EC, var_F4)
  loc_11A2A7C:     (CDate(var_90.Text) >= MemVar_1F920F4) = var_EC.Text
  loc_11A2A9E:     If Not((var_86 And (CDate(var_F4) <= MemVar_1F920FC))) Then
  loc_11A2AC2:       MsgBox("Invalid Date !", &H10, "Validation Error", var_C4, var_E4)
  loc_11A2ADC:       Set var_8C = Me.Txt
  loc_11A2AE2:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_11A2AEA:       var_90.SetFocus
  loc_11A2AF8:       arg_10 = &HFF
  loc_11A2AFB:       Exit Sub
  loc_11A2AFC:     End If
  loc_11A2B00:     Set var_8C = Me.TopCtrl1
  loc_11A2B06:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_11A2B0E:     var_94 = CStr(var_90)
  loc_11A2B1F:     If (var_94 = "Add") Then
  loc_11A2B28:       Call Proc_287_41_115DCB8(MemVar_1F92044)
  loc_11A2B3B:       Set var_8C = Me.Txt
  loc_11A2B41:       Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_11A2B49:       var_90.Text = var_94
  loc_11A2B58:     End If
  loc_11A2B58:   End If
  loc_11A2B5B: Else
  loc_11A2B63:   If (var_86 = CInt(4)) Then
  loc_11A2B70:     Set var_8C = Me.Txt
  loc_11A2B76:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11A2BA2:     var_94 = CStr(Format(CVar(var_90), "0.00"))
  loc_11A2BB0:     Set var_E8 = Me.Txt
  loc_11A2BB6:     Call 0.Method_Txt_Validate0 (Cancel, var_EC, var_94)
  loc_11A2BBE:     var_EC.Text = 1
  loc_11A2BDB:   Else
  loc_11A2BE3:     If (var_86 = CInt(5)) Then
  loc_11A2C3D:       Set var_8C = Me.Txt
  loc_11A2C43:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_11A2C4B:       ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_90.Text
  loc_11A2C63:       If (1 Or (var_94 = vbNullString)) Then
  loc_11A2C73:         Set var_8C = Me.Txt
  loc_11A2C79:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11A2C81:         var_90.Tag = vbNullString
  loc_11A2C8D:         Exit Sub
  loc_11A2C8E:       End If
  loc_11A2CCC:       Set var_E8 = Me.Txt
  loc_11A2CD2:       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_11A2CDA:       var_EC.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_11A2D2E:       Set var_E8 = Me.Txt
  loc_11A2D34:       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_11A2D3C:       var_EC.Tag = CStr(Me.Recordset15.Fields.Item("SearchCode").Value)
  loc_11A2D55:     Else
  loc_11A2D5D:       If (var_86 = CInt(1)) Then
  loc_11A2D60:       End If
  loc_11A2D60:     End If
  loc_11A2D60:   End If
  loc_11A2D60: End If
  loc_11A2D60: Exit Sub
End Sub

Private Sub Form_Load() '119E6E8
  'Data Table: 480BE4
  Dim var_94 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim var_D0 As Variant
  Dim Me As Recordset15
  Dim var_15C As Double
  Dim var_154 As String
  Dim var_168 As TextBox
  Dim var_C0 As TextBox
  Dim var_164 As DataGrid
  loc_119E2F0: On Error Goto loc_119E6E1
  loc_119E2FD: Set var_A8 = Me.TopCtrl1
  loc_119E303: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_119E311: Call 0.Method_arg_50 (var_AC)
  loc_119E319: var_BC = CVar(var_AC) 'String
  loc_119E321: Set var_A8 = Me.TopCtrl1
  loc_119E327: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_BC)
  loc_119E339: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_119E34A: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_119E35B: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_119E36C: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_119E37D: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_119E38E: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_119E39F: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_119E3B0: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_119E3C1: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_119E3D2: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_119E3E3: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_119E3FD: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_119E40B: Set var_A8 = MemVar_1F92044
  loc_119E41A: Call 0.Method_Form_Load8 (var_A8)
  loc_119E430: Me.TopCtrl1.Clone
  loc_119E44A: Call 0.Method_Form_LoadC (var_A8, -1)
  loc_119E464: Me.Recordset20.Clone
  loc_119E46F: Set var_C0 = var_A8
  loc_119E47E: Call 0.Method_arg_50 (var_C0, -1)
  loc_119E4A6: Me.Recordset15.CursorLocation = 3
  loc_119E4B6: Proc_6_7_F25D88(var_BC, MemVar_1F920F4)
  loc_119E4C6: Proc_6_7_F25D88(var_110, MemVar_1F920FC)
  loc_119E4F0: var_D0 = CVar("Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From UserCollection where LOGSITE_CODE='" & MemVar_1F92078 & "' AND vdate between ") 'String
  loc_119E51A: Me.Open var_D0 & var_BC & " And " & var_110 & " Order by DocID", CVar(MemVar_1F92044), 2
  loc_119E552: Me.Recordset15.CursorLocation = 3
  loc_119E55F: var_15C = Val(MemVar_1F92128)
  loc_119E585: var_154 = "Select User_Name as SearchCode,User_Name Name From UserMast where ActiveYN='Y' And User_Name In (Select UserName From MenuHelp Where [Option] In ('Recharge Entry','Refund Entry') And UserName<>'SA' And Cast(CompCode As Int)=" & CStr(var_15C)
  loc_119E599: Me.Recordset15.Open CVar(var_154 & " And Flag<>'V') Order by Name"), CVar(MemVar_1F92044), 2
  loc_119E5B4: CVarUnk
  loc_119E5B9: VerifyVarObj
  loc_119E5C5: LateIdStAd
  loc_119E5E1: Set var_164 = Me.Txt
  loc_119E5E7: Call 0.Method_Form_Load0 (CInt(5), var_168, var_16C, Me.DGUser, New, 3)
  loc_119E5EF: -1 = var_168.Height
  loc_119E602: Set var_A8 = Me.Txt
  loc_119E608: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_160, var_15C)
  loc_119E610: 3 = var_C0.Top
  loc_119E61C: var_94 = CVar((var_160 + var_16C)) 'Single
  loc_119E62B: Me.DGUser.Top = CVar(MemVar_1F92044)
  loc_119E64B: Set var_A8 = Me.Txt
  loc_119E651: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_160)
  loc_119E659: -1 = var_C0.Left
  loc_119E670: Me.DGUser.Left = CVar(var_160)
  loc_119E684: global_60 = "UPREC"
  loc_119E6AB: Call Proc_287_38_EF4B08(Proc_5_1_100CB50("INI", Me, New), Me)
  loc_119E6C8: Set var_A8 = Me
  loc_119E6CE: Proc_6_23_DFBA28(var_A8, 4000)
  loc_119E6D6: Call Proc_287_36_EE35CC(6700)
  loc_119E6DB: Call Proc_287_37_11EC61C(var_A8)
  loc_119E6E0: Exit Sub
  loc_119E6E1: ' Referenced from: 119E2F0
  loc_119E6E1: Proc_6_60_E62BC4()
  loc_119E6E6: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E44F30
  'Data Table: 480BE4
  loc_E44F0B: Set global_64 = Nothing
  loc_E44F17: MasterFormExit = 0
  loc_E44F25: Set global_92 = Nothing
  loc_E44F2C: Exit Sub
  loc_E44F2D: BranchFVar 10752
End Sub

Private Sub Form_Deactivate() 'E247DC
  'Data Table: 480BE4
  loc_E247C1: If (MasterFormExit = &HFF) Then
  loc_E247D1:   Me.Global.Unload Me
  loc_E247D9: End If
  loc_E247D9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E33F78
  'Data Table: 480BE4
  loc_E33F4C: On Error Goto loc_E33F70
  loc_E33F67: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E33F6F: Exit Sub
  loc_E33F70: ' Referenced from: E33F4C
  loc_E33F70: Proc_6_60_E62BC4(Shift)
  loc_E33F75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F76D94
  'Data Table: 480BE4
  Dim var_D4 As Variant
  Dim var_88 As String
  loc_F76C58: On Error Goto loc_F76D8E
  loc_F76C7E: Call Proc_287_38_EF4B08(Proc_5_1_100CB50("ADD", Me))
  loc_F76C89: Call Proc_287_36_EE35CC(global_64)
  loc_F76CC9: Set var_8C = Me.txtM
  loc_F76CCF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_D4, CVar(CStr(Format(Now, "HH:MM"))))
  loc_F76CD7: var_D4.Text = 1
  loc_F76CFF: Set var_8C = Me.txtM
  loc_F76D05: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_D4)
  loc_F76D0D: var_D4.Tag = vbNullString
  loc_F76D1E: var_88 = CStr(MemVar_1F920EC)
  loc_F76D2C: Set var_8C = Me.Txt
  loc_F76D32: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4)
  loc_F76D3A: var_D4.Text = var_88
  loc_F76D55: Call Txt_Validate(CInt(3))
  loc_F76D60: Call Proc_287_41_115DCB8(MemVar_1F92044, var_88)
  loc_F76D73: Set var_8C = Me.Txt
  loc_F76D79: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_D4)
  loc_F76D81: var_D4.SetFocus
  loc_F76D8D: Exit Sub
  loc_F76D8E: ' Referenced from: F76C58
  loc_F76D8E: Proc_6_60_E62BC4(0)
  loc_F76D93: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EAC838
  'Data Table: 480BE4
  loc_EAC7B4: On Error Goto loc_EAC82F
  loc_EAC7EE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EAC814:   Call Proc_287_38_EF4B08(Proc_5_1_100CB50("INI", Me))
  loc_EAC81F:   Call Proc_287_39_EB84BC(global_64)
  loc_EAC824:   Call Proc_287_36_EE35CC()
  loc_EAC829:   Call Proc_287_37_11EC61C()
  loc_EAC82E: End If
  loc_EAC82E: Exit Sub
  loc_EAC82F: ' Referenced from: EAC7B4
  loc_EAC82F: Proc_6_60_E62BC4()
  loc_EAC834: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10BC4AC
  'Data Table: 480BE4
  Dim var_96 As Integer
  Dim unk_480BFD As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_10BC200: On Error Goto loc_10BC454
  loc_10BC211: If (Proc_183_56_FE8818(global_64) = &HFF) Then
  loc_10BC214:   Exit Sub
  loc_10BC215: End If
  loc_10BC24C: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10BC25D:   unk_480BFD.BeginTrans var_11C
  loc_10BC273:   var_94 = Me.Bookmark 'Variant
  loc_10BC295:   Set var_120 = Me.Txt
  loc_10BC29B:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Delete From UserCollection Where DocID='")
  loc_10BC2A3:   var_B8 = var_124.Text
  loc_10BC2AC:   var_12C = -1 & var_128
  loc_10BC2BC:   unk_480BFD.Execute var_12C & "'", var_134, &HFF
  loc_10BC2E4:   Set var_120 = Me.Txt
  loc_10BC2EA:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124)
  loc_10BC2FC:   var_168 = 0
  loc_10BC30F:   var_160 = 0
  loc_10BC31A:   var_15C = 0
  loc_10BC32D:   var_154 = 0
  loc_10BC338:   var_150 = 0
  loc_10BC34B:   var_148 = 0
  loc_10BC38A:   var_128 = "UserCollection"
  loc_10BC393:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_10BC3BE:   unk_480BFD.CommitTrans
  loc_10BC3C5:   var_96 = 0
  loc_10BC3D3:   Me.Requery -1
  loc_10BC3F3:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10BC400:     Me.Bookmark = var_94
  loc_10BC408:   Else
  loc_10BC41C:     If (Me.EOF = 0) Then
  loc_10BC425:       Me.MoveLast
  loc_10BC42A:     End If
  loc_10BC42A:   End If
  loc_10BC42A:   Call Proc_287_37_11EC61C(var_96, var_148, 0, var_150, var_154)
  loc_10BC44B:   Proc_5_0_110649C(&HFF, Me, global_64, 0)
  loc_10BC453: End If
  loc_10BC453: Exit Sub
  loc_10BC454: ' Referenced from: 10BC200
  loc_10BC45A: If (var_96 = &HFF) Then
  loc_10BC463:   unk_480BFD.RollbackTrans
  loc_10BC468: End If
  loc_10BC470: Set var_120 = Err()
  loc_10BC476: Call 0.Method_arg_2C (var_128, 0, var_15C)
  loc_10BC497: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10BC4AA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F7EF00
  'Data Table: 480BE4
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F7EDB8: On Error Goto loc_F7EEBD
  loc_F7EDC9: If (Proc_183_55_FE7900(global_64) = &HFF) Then
  loc_F7EDCC:   Exit Sub
  loc_F7EDCD: End If
  loc_F7EDE4: If (Me.RecordCount > 0) Then
  loc_F7EDFC:   var_8C = "EDIT"
  loc_F7EE0A:   Call Proc_287_38_EF4B08(Proc_5_1_100CB50(var_8C, Me))
  loc_F7EE22:   Set var_90 = Me.Txt
  loc_F7EE28:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98)
  loc_F7EE30:   var_98.Enabled = False
  loc_F7EE49:   Set var_90 = Me.Txt
  loc_F7EE4F:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_F7EE57:   var_98.Enabled = False
  loc_F7EE6E:   Set var_90 = Me.Txt
  loc_F7EE74:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98)
  loc_F7EE7C:   var_98.SetFocus
  loc_F7EE8B: Else
  loc_F7EEAC:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F7EEBC: End If
  loc_F7EEBC: Exit Sub
  loc_F7EEBD: ' Referenced from: F7EDB8
  loc_F7EEC5: Set var_90 = Err()
  loc_F7EECB: Call 0.Method_arg_2C (var_8C)
  loc_F7EEEC: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F7EEFF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19784
  'Data Table: 480BE4
  loc_E19779: Me.Global.Unload Me
  loc_E19781: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F201C4
  'Data Table: 480BE4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim MemVar_1F920E4 As String
  loc_F200D0: On Error Goto loc_F201BD
  loc_F200EA: If (Me.RecordCount <= 0) Then
  loc_F20108:   var_A8 = "No Records To Search."
  loc_F2010E:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F2011E:   Exit Sub
  loc_F2011F: End If
  loc_F20126: var_10C = "Select E.DocID as SearchCode,E.VNo VNo,cast(E.VDate as Varchar(11)) as Date,E.VTime Time,E.Remarks,cast(E.Amount as varchar) As Amount,E.AgUser Agnst_User From UserCollection E where (E.LOGSITE_CODE='" & MemVar_1F92078
  loc_F2013B: Proc_6_7_F25D88(var_A8, MemVar_1F920F4)
  loc_F20147: var_B8 = " And "
  loc_F2015B: Proc_6_7_F25D88(var_11C, MemVar_1F920FC)
  loc_F20171: MemVar_1F920E4 = CStr(CVar(var_10C & "' or E.LOGSITE_CODE='HO') AND E.vdate Between ") & var_A8 & var_B8 & var_11C & " Order by DocID,VNo")
  loc_F20192: Proc_6_126_F1BCC0("500,1300,500,4000,1000,1500")
  loc_F201A0: MemVar_1F92120 = Me
  loc_F201B7: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F201BC: Exit Sub
  loc_F201BD: ' Referenced from: F200D0
  loc_F201BD: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F201C2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E34038
  'Data Table: 480BE4
  loc_E34028: Proc_5_0_110649C(&HFF, Me)
  loc_E34030: Call Proc_287_37_11EC61C(global_64)
  loc_E34035: Exit Sub
  loc_E34036: arg_6C08 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E34218
  'Data Table: 480BE4
  loc_E34208: Proc_5_0_110649C(&HFF, Me)
  loc_E34210: Call Proc_287_37_11EC61C(global_64)
  loc_E34215: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E34158
  'Data Table: 480BE4
  loc_E34148: Proc_5_0_110649C(&HFF, Me)
  loc_E34150: Call Proc_287_37_11EC61C(global_64)
  loc_E34155: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E340F8
  'Data Table: 480BE4
  Dim arg_6CFF As Double
  loc_E340E8: Proc_5_0_110649C(&HFF, Me)
  loc_E340F0: Call Proc_287_37_11EC61C(global_64)
  loc_E340F5: Exit Sub
  loc_E340F6: arg_6CFF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFF414
  'Data Table: 480BE4
  loc_DFF40C: Call Proc_287_33_13CDF40()
  loc_DFF411: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A904
  'Data Table: 480BE4
  loc_E0A8FE: Me.Recordset15.Requery -1
  loc_E0A903: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '147F73C
  'Data Table: 480BE4
  Dim var_A4 As Variant
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_AC As String
  Dim unk_480BFD As Connection15
  Dim var_98 As Recordset15
  Dim var_A0 As Variant
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_134 As Variant
  Dim var_12C As Variant
  Dim var_10C As Variant
  Dim var_86 As Integer
  Dim var_13C As String
  Dim MemVar_1F920EC As Double
  Dim var_144 As Variant
  Dim var_444 As Double
  Dim var_19C As Variant
  Dim var_21C As TextBox
  Dim var_44C As Double
  Dim var_258 As TextBox
  Dim var_150 As String
  Dim var_184 As Variant
  Dim var_204 As Variant
  Dim var_3B4 As Variant
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_147EBF4: On Error Goto loc_147F722
  loc_147EC02: Set var_A0 = Me.Txt
  loc_147EC08: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_147EC31: If (Proc_6_27_EA565C(var_A4, "Date") = 0) Then
  loc_147EC34:   Exit Sub
  loc_147EC35: End If
  loc_147EC40: Set var_A0 = Me.Txt
  loc_147EC46: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_147EC6F: If (Proc_6_27_EA565C(var_A4, "Vr No") = 0) Then
  loc_147EC72:   Exit Sub
  loc_147EC73: End If
  loc_147EC81: Set var_A0 = Me.Txt
  loc_147EC87: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_147ECAB: If (CDbl(Val(var_A4.Text)) = CDbl(0)) Then
  loc_147ECC9:   var_CC = "Amount should not be zero."
  loc_147ECCF:   MsgBox(var_CC, &H10, "Validation Error", var_10C, var_12C)
  loc_147ECEA:   Set var_A0 = Me.Txt
  loc_147ECF0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_147ECF8:   var_A4.SetFocus
  loc_147ED04:   Exit Sub
  loc_147ED05: End If
  loc_147ED10: Set var_A0 = Me.Txt
  loc_147ED16: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_147ED3F: If (Proc_6_27_EA565C(var_A4, "Against User") = 0) Then
  loc_147ED42:   Exit Sub
  loc_147ED43: End If
  loc_147ED46: Call Proc_287_35_F8DC34(var_12E)
  loc_147ED51: If (var_12E = 0) Then
  loc_147ED54:   Exit Sub
  loc_147ED55: End If
  loc_147ED72: Proc_6_17_EAA2B0(var_CC, MemVar_1F92078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=", var_10C)
  loc_147ED7A: var_EC = -1 & var_CC 
  loc_147ED88: unk_480BFD.Execute CStr("Validation Error"), var_A0, var_A4
  loc_147ED93: Set var_98 = var_A0
  loc_147EDE3: var_A8 = var_98.Fields
  loc_147EDF3: var_EC = var_A8.Item("CashPayType").Value
  loc_147EE05: var_12C = IsNull(CVar(var_98.Fields.Item("CashPayType"))) Or (var_EC = vbNullString)
  loc_147EE1D: If CBool(var_12C) Then
  loc_147EE39:   MsgBox("Set Cash Pay Type in Enviro", &H40, var_EC, var_10C, var_12C)
  loc_147EE49:   Exit Sub
  loc_147EE4A: End If
  loc_147EE76: var_A4 = var_98.Fields.Item("CashPayType")
  loc_147EE7E: var_CC = var_A4.Value
  loc_147EE86: var_EC = "SELECT ACCODE FROM REVMAST WHERE cODE='" & var_CC 
  loc_147EE8F: var_10C = var_EC & "'" 
  loc_147EE9D: unk_480BFD.Execute CStr(var_10C), var_12C, -1
  loc_147EEA8: Set var_9C = var_A8
  loc_147EED0: unk_480BFD.BeginTrans var_138
  loc_147EED9: Set var_A0 = Me.TopCtrl1
  loc_147EEDF: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_147EEF8: If (CStr(var_A8) = "Add") Then
  loc_147EF01:   var_DC = 0
  loc_147EF1E:   var_AC = "Select NCUR from enviro where LOGsite_code='" & MemVar_1F92078
  loc_147EF2E:   unk_480BFD.Execute var_AC & "'", var_CC, -1
  loc_147EF36:   var_A0 = var_A0.Fields
  loc_147EF3E:   var_DC = var_A4.Item(var_A4)
  loc_147EF46:   var_A8 = var_A8.Value
  loc_147EF50:   MemVar_1F920EC = CDate(var_EC)
  loc_147EF97:   Set var_A0 = Me.Txt
  loc_147EF9D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "Select Count(*) From UserCollection Where DocID='", var_CC, -1, var_A8)
  loc_147EFBE:   unk_480BFD.Execute 0 & var_AC & "'", var_144, var_EC
  loc_147EFC6:   MemVar_1F920EC = var_A8.Fields
  loc_147EFCE:    = var_A4.Text.Item(var_EC)
  loc_147EFD6:    = var_144.Value
  loc_147F003:   If (var_EC > 0) Then
  loc_147F00C:     Call 0.Method_arg_50 (var_AC)
  loc_147F01A:     var_EC = CVar(var_AC) 'String
  loc_147F02D:     MsgBox("Duplicate Vr. No.", &H40, var_EC, var_10C, var_12C)
  loc_147F043:     Call Proc_287_41_115DCB8(MemVar_1F92044)
  loc_147F053:     If (var_AC = vbNullString) Then
  loc_147F056:       Exit Sub
  loc_147F057:     End If
  loc_147F05D:     Call Proc_287_41_115DCB8(MemVar_1F92044, var_AC)
  loc_147F070:     Set var_A0 = Me.Txt
  loc_147F076:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_147F07E:     var_A4.Text = var_AC
  loc_147F08D:     Exit Sub
  loc_147F08E:   End If
  loc_147F08E: End If
  loc_147F0AC: Set var_A0 = Me.Txt
  loc_147F0B2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "Delete From UserCollection Where DocID='")
  loc_147F0BA: var_CC = var_A4.Text
  loc_147F0C3: var_13C = -1 & var_AC
  loc_147F0D3: unk_480BFD.Execute 0 & var_AC & "'", var_A8, var_AC
  loc_147F0FB: Set var_A0 = Me.Txt
  loc_147F101: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_147F115: Set var_A8 = Me.LblVPrefix
  loc_147F12E: Set var_134 = Me.Txt
  loc_147F134: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_144)
  loc_147F149: var_444 = Val(var_144.Text)
  loc_147F157: Set var_170 = Me.Txt
  loc_147F15D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_174)
  loc_147F16C: Proc_6_7_F25D88(var_EC, CVar(var_174))
  loc_147F17C: Set var_188 = Me.txtM
  loc_147F182: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_18C)
  loc_147F191: Proc_6_17_EAA2B0(var_1AC, CVar(var_18C))
  loc_147F1A1: Set var_1D0 = Me.Txt
  loc_147F1A7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1D4)
  loc_147F1B6: Proc_6_17_EAA2B0(var_1F4, CVar(var_1D4))
  loc_147F1C9: Set var_218 = Me.Txt
  loc_147F1CF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_21C)
  loc_147F1E4: var_44C = Val(var_21C.Text)
  loc_147F1F5: Set var_254 = Me.Txt
  loc_147F1FB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_258, var_25C)
  loc_147F213: Proc_6_7_F25D88(var_2FC)
  loc_147F21C: Set var_330 = Me.TopCtrl1
  loc_147F222: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(Proc_6_15_EF2C1C(var_444)))
  loc_147F26D: var_13C = "Insert Into UserCollection(DocID,VType,VPrefix,Site_Code,VNo,VDate,Vtime,Remarks,Amount,AgUser,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_A4.Text
  loc_147F285: var_150 = var_13C & "','" & global_60 & "','"
  loc_147F2DA: var_204 = CVar(var_150 & var_A8.Caption & "','" & MemVar_1F92070 & "'," & CStr(var_444) & ",") & var_EC & "," & var_1AC & "," & var_1F4 
  loc_147F334: var_3B4 = var_204 & "," & CVar(var_258.Tag) & ",'" & CVar(var_25C) & "','" & CVar(MemVar_1F920C8) & "'," & var_2FC & ",'" & IIf((CStr(var_340) = "Add"), "A", "E") 
  loc_147F35E: unk_480BFD.Execute CStr(var_3B4 & "','" & CVar(MemVar_1F92078) & "')"), var_438, -1
  loc_147F3F0: Set var_A0 = Me.TopCtrl1
  loc_147F3F6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_43C)
  loc_147F40F: If (CStr() = "Add") Then
  loc_147F426:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_147F44C:   var_10C = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_147F45D:   Set var_A0 = Me.Txt
  loc_147F463:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4, var_150, var_10C)
  loc_147F46B:   var_19C = var_A4.Text
  loc_147F479:   Proc_6_7_F25D88(var_EC, CVar(var_150))
  loc_147F481:   var_12C = -1 & var_EC 
  loc_147F48A:   var_184 = CVar(var_150 & var_A8.Caption & "','" & MemVar_1F92070 & "'," & CStr(var_444) & ",") & var_EC & " Order By VP.Date_From DESC" 
  loc_147F498:   unk_480BFD.Execute CStr(var_184), var_A8, 
  loc_147F4A3:   Set var_8C = var_A8
  loc_147F4E1:   If (var_8C.RecordCount > 0) Then
  loc_147F4F2:     Set var_A0 = Me.Txt
  loc_147F4F8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_147F50D:     var_444 = Val(var_A4.Text)
  loc_147F513:     var_BC = "Date_From"
  loc_147F536:     Proc_6_7_F25D88(var_EC, CVar(var_8C.Fields.Item(var_BC)))
  loc_147F569:     var_150 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_444) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_147F588:     var_10C = CVar(var_150 & MemVar_1F92078 & "') and V_Type='" & global_60 & "' and Date_From=") 'String
  loc_147F58E:     var_12C = var_10C & var_EC 
  loc_147F59C:     unk_480BFD.Execute CStr(var_12C), var_184, -1
  loc_147F5D0:   End If
  loc_147F5D0: End If
  loc_147F5D6: unk_480BFD.CommitTrans
  loc_147F5DB: Call Proc_287_39_EB84BC(var_144)
  loc_147F5EE: Set var_A0 = Me.Txt
  loc_147F5F4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_147F610: var_86 = 0
  loc_147F61E: Me.Requery -1
  loc_147F648: Me.Find "SearchCode ='" & var_A4.Text & "'", 0, 1
  loc_147F658: Set var_A0 = Me.TopCtrl1
  loc_147F65E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_BC)
  loc_147F677: If (CStr(var_86) = "Add") Then
  loc_147F67A:   Call TopCtrl1_UnknownEvent_A()
  loc_147F67F:   Exit Sub
  loc_147F680: End If
  loc_147F695: var_AC = "INI"
  loc_147F6A3: Call Proc_287_38_EF4B08(Proc_5_1_100CB50(var_AC, Me), global_64)
  loc_147F6AE: Call Proc_287_37_11EC61C(var_444)
  loc_147F6CA: If (Me.RecordCount > 0) Then
  loc_147F6D3:   Call 0.Method_arg_50 (var_AC)
  loc_147F711:   If (MsgBox(CVar(var_AC & " ?"), &H24, "Print", var_10C, var_12C) = 6) Then
  loc_147F714:     Call TopCtrl1_UnknownEvent_14()
  loc_147F719:   End If
  loc_147F719: End If
  loc_147F71E: Set var_8C = Nothing
  loc_147F721: Exit Sub
  loc_147F722: ' Referenced from: 147EBF4
  loc_147F728: If (var_86 = &HFF) Then
  loc_147F731:   unk_480BFD.RollbackTrans
  loc_147F736: End If
  loc_147F736: Proc_6_60_E62BC4()
  loc_147F73B: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_0 'E52B90
  'Data Table: 480BE4
  loc_E52B6A: Set var_88 = Me.txtM
  loc_E52B70: Call 0.Method_txtM_UnknownEvent_00 (KeyCode)
  loc_E52B7E: Proc_6_74_E226B0(var_8C)
  loc_E52B8A: Call Proc_287_39_EB84BC(var_8C)
  loc_E52B8F: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_1 'E4F7F4
  'Data Table: 480BE4
  loc_E4F7D2: Set var_88 = Me.txtM
  loc_E4F7D8: Call 0.Method_txtM_UnknownEvent_10 (KeyCode)
  loc_E4F7E6: Proc_6_73_E22704(var_8C)
  loc_E4F7F2: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_8 'E540B8
  'Data Table: 480BE4
  Dim Shift As Integer
  loc_E5408E: Set var_88 = Me.txtM
  loc_E54094: Call 0.Method_txtM_UnknownEvent_80 (KeyCode)
  loc_E540AE: If (IsDate(CVar(var_8C)) = 0) Then
  loc_E540B3:   Shift = &HFF
  loc_E540B6: End If
  loc_E540B6: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_B 'E606BC
  'Data Table: 480BE4
  loc_E60676: If (CLng(Shift) = &H1B) Then
  loc_E60679:   Call Proc_287_39_EB84BC()
  loc_E6067E:   Exit Sub
  loc_E6067F: End If
  loc_E60694: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E6069D:   Proc_6_75_E527CC(Shift)
  loc_E606A2: End If
  loc_E606AC: If (CLng(Shift) = &H26) Then
  loc_E606B5:   Proc_6_76_E52838(Shift, arg_14)
  loc_E606BA: End If
  loc_E606BA: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F17CEC
  'Data Table: 480BE4
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F17C08: On Error Goto loc_F17CE6
  loc_F17C0F: Set var_A4 = Me.ListView
  loc_F17C59: Set var_BC = Me.Txt
  loc_F17C5F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F17C67: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F17C93: Me.FrmList.Visible = False
  loc_F17CB5: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F17CC3: Set var_9C = Me.Txt
  loc_F17CC9: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F17CD1: var_A4.SetFocus
  loc_F17CE5: Exit Sub
  loc_F17CE6: ' Referenced from: F17C08
  loc_F17CE6: Proc_6_60_E62BC4(var_C8)
  loc_F17CEB: Exit Sub
End Sub

Public Function MasterFormExitGet() '4817C0
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4817CF
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E937B0
  'Data Table: 480BE4
  Dim Me As Recordset15
  Dim arg_DFF As Double
  loc_E9373E: On Error Goto loc_E937A7
  loc_E93747: Me.MoveFirst
  loc_E93771: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93799: Proc_5_0_110649C(&HFF, Me, global_64)
  loc_E937A1: Call Proc_287_37_11EC61C(0)
  loc_E937A6: Exit Sub
  loc_E937A7: ' Referenced from: E9373E
  loc_E937A7: Proc_6_60_E62BC4(var_A0)
  loc_E937AC: Exit Sub
  loc_E937AD: arg_DFF = 
End Sub

Public Sub Proc_287_33_13CDF40
  'Data Table: 480BE4
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_B0 As Field20
  Dim var_E0 As Variant
  Dim var_F0 As String
  Dim var_104 As String
  Dim unk_480BFD As Connection15
  Dim var_98 As Recordset15
  Dim var_130 As Recordset15
  Dim var_128 As Fields15
  Dim var_124 As Variant
  Dim var_92 As Integer
  loc_13CD5D5: var_D0 = "SELECT UserCollection.* FROM UserCollection Where DocID='"
  loc_13CD5E0: var_AC = "DocID"
  loc_13CD5EF: var_9C = Me.Fields
  loc_13CD61E: unk_480BFD.Execute CStr(var_D0 & var_9C.Item(var_AC).Value & "'"), var_124, -1
  loc_13CD629: Set var_98 = var_128
  loc_13CD649: var_12C = var_98.RecordCount
  loc_13CD657: If (var_12C = 0) Then
  loc_13CD65A:   Exit Sub
  loc_13CD65B: End If
  loc_13CD668: Call Proc_287_34_FDF900(New, var_9C)
  loc_13CD670: Set var_88 = var_9C
  loc_13CD676: Set var_130 = var_88 
  loc_13CD685: var_130.AddNew var_AC, var_D0
  loc_13CD6D9: var_130.Fields.Item("VNo").Value = CVar(CStr(var_98.Fields.Item("VNo").Value))
  loc_13CD737: var_F0 = "VDate"
  loc_13CD753: var_130.Fields.Item(var_F0).Value = Format(CVar(var_98.Fields.Item("VDate")), "dd/MMM/yyyy")
  loc_13CD7AD: var_130.Fields.Item("VType").Value = CVar(var_98.Fields.Item("vType"))
  loc_13CD836: var_130.Fields.Item("AgUser").Value = CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("AgUser")), 1)), 3, 0)), &HA))
  loc_13CD87E: var_E0 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("Remarks")), 1)) 'String
  loc_13CD8E4: var_130.Fields.Item("Particulars").Value = CVar(Proc_6_45_EAD428(CStr(StrConv(Left(Trim(var_E0), &H96), 3, 0)), 150))
  loc_13CD92A: Proc_6_47_EF59D0(var_E0, CVar(var_98.Fields.Item("Amount")))
  loc_13CD952: var_130.Fields.Item("Amount").Value = var_E0
  loc_13CD98D: Proc_6_39_E7C810(var_E0, CVar(var_98.Fields.Item("Amount")))
  loc_13CD9F3: var_130.Fields.Item("Charge").Value = StrConv(CVar(Proc_6_43_10041F4(CSng(Abs(var_E0)), vbNullString)), 3, 0)
  loc_13CDA50: var_128 = var_130.Fields
  loc_13CDA60: var_128.Item("Uname").Value = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("U_Name")), vbNullString))
  loc_13CDA78: var_D0 = CVar(MemVar_1F920C8) 'String
  loc_13CDA7F: var_AC = "LUName"
  loc_13CDA93: var_B0 = var_130.Fields.Item(var_AC)
  loc_13CDA9B: var_B0.Value = var_D0
  loc_13CDAB2: var_130.Update var_AC, var_D0
  loc_13CDABA: var_8C = "UserPaymentCollection"
  loc_13CDAC0: var_90 = "User Payment Collection Receipt"
  loc_13CDAC5: var_92 = 0
  loc_13CDAEC: Set var_9C = var_88 
  loc_13CDAF3: CreateFieldDefFile(var_9C, MemVar_1F920B4 & "\" & var_8C & ".ttx", &HFF)
  loc_13CDB21: var_104 = "\" & var_8C
  loc_13CDB35: Call 0.Method_arg_1C (MemVar_1F920B4 & var_104 & ".RPT", var_AC, var_9C)
  loc_13CDB40: MemVar_1F921E4 = var_9C
  loc_13CDB69: Call 0.Method_arg_64 (var_9C, CVar(var_9C), var_D0)
  loc_13CDB71: Call 0.Method_arg_2C (var_F0, var_92)
  loc_13CDB7F: Call 0.Method_arg_150 (var_128)
  loc_13CDB95: Call 0.Method_arg_90 (var_9C, var_12C)
  loc_13CDB9D: Call 0.Method_arg_24 (var_94)
  loc_13CDBA9: For var_170 =  To CInt(var_12C): 1 = var_170 'Integer
  loc_13CDBC2:   Call 0.Method_arg_90 (var_9C, CLng(var_94))
  loc_13CDBCA:   Call 0.Method_arg_20 (var_B0)
  loc_13CDBD2:   Call 0.Method_arg_30 (var_104)
  loc_13CDBE8:   var_180 = Ucase(CVar(var_104)) 'Variant
  loc_13CDC18:   If (var_180 = Ucase("comp_name")) Then
  loc_13CDC3C:     Call 0.Method_arg_90 (var_9C, CLng(var_94))
  loc_13CDC44:     Call 0.Method_arg_20 (var_B0)
  loc_13CDC4C:     Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_13CDC62:   Else
  loc_13CDC84:     If (var_180 = Ucase("comp_add1")) Then
  loc_13CDCA8:       Call 0.Method_arg_90 (var_9C, CLng(var_94))
  loc_13CDCB0:       Call 0.Method_arg_20 (var_B0)
  loc_13CDCB8:       Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_13CDCCE:     Else
  loc_13CDCF0:       If (var_180 = Ucase("comp_pin")) Then
  loc_13CDD14:         Call 0.Method_arg_90 (var_9C, CLng(var_94))
  loc_13CDD1C:         Call 0.Method_arg_20 (var_B0)
  loc_13CDD24:         Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_13CDD3A:       Else
  loc_13CDD5C:         If (var_180 = Ucase("comp_GSTIN")) Then
  loc_13CDD80:           Call 0.Method_arg_90 (var_9C, CLng(var_94))
  loc_13CDD88:           Call 0.Method_arg_20 (var_B0)
  loc_13CDD90:           Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_13CDDA6:         Else
  loc_13CDDC8:           If (var_180 = Ucase("comp_tin")) Then
  loc_13CDDEC:             Call 0.Method_arg_90 (var_9C, CLng(var_94))
  loc_13CDDF4:             Call 0.Method_arg_20 (var_B0)
  loc_13CDDFC:             Call 0.Method_arg_38 ("'" & MemVar_1F92150 & "'")
  loc_13CDE12:           Else
  loc_13CDE34:             If (var_180 = Ucase("Title")) Then
  loc_13CDE58:               Call 0.Method_arg_90 (var_9C, CLng(var_94))
  loc_13CDE60:               Call 0.Method_arg_20 (var_B0)
  loc_13CDE68:               Call 0.Method_arg_38 ("'Phone No. " & MemVar_1F92140 & "'")
  loc_13CDE7E:             Else
  loc_13CDEA0:               If (var_180 = Ucase("BetweenDate")) Then
  loc_13CDEA3:                 GoTo loc_13CDEF3
  loc_13CDEA6:               End If
  loc_13CDEC8:               If (var_180 = Ucase("Dater")) Then
  loc_13CDECB:                 GoTo loc_13CDEF3
  loc_13CDECE:               End If
  loc_13CDEF0:               If (var_180 = Ucase("Pager")) Then
  loc_13CDEF3:                 ' Referenced from:             13CDECB
  loc_13CDEF3:                 ' Referenced from:             13CDEA3
  loc_13CDEF3:               End If
  loc_13CDEF3:             End If
  loc_13CDEF3:           End If
  loc_13CDEF3:         End If
  loc_13CDEF3:       End If
  loc_13CDEF3:     End If
  loc_13CDEF3:   End If
  loc_13CDEF6: Next var_170 'Integer
  loc_13CDF00: Set var_B0 = Nothing
  loc_13CDF14: Set var_9C = MemVar_1F921E4 
  loc_13CDF20: Proc_6_99_1483714(var_9C, var_92, var_90)
  loc_13CDF2B: MemVar_1F921E4 = var_9C
  loc_13CDF38: Set var_130 = Nothing 
  loc_13CDF3C: Exit Sub
End Sub

Public Sub Proc_287_34_FDF900(arg_C) 'FDF900
  'Data Table: 480BE4
  Dim var_8C As Recordset15
  loc_FDF721: Set var_8C = arg_C 
  loc_FDF749: var_8C.Fields.Append "VNo", &HC8, &HA
  loc_FDF775: var_8C.Fields.Append "VDate", &HC8, &HB
  loc_FDF7A1: var_8C.Fields.Append "VType", &HC8, &H32
  loc_FDF7CD: var_8C.Fields.Append "AgUser", &HC8, &HA
  loc_FDF7F9: var_8C.Fields.Append "Particulars", &HC8, &H96
  loc_FDF825: var_8C.Fields.Append "Amount", &HC8, &HB
  loc_FDF851: var_8C.Fields.Append "Charge", &HC8, &HC8
  loc_FDF87D: var_8C.Fields.Append "Uname", &HC8, &HA
  loc_FDF8A9: var_8C.Fields.Append "LUName", &HC8, &HA
  loc_FDF8B9: var_8C.CursorType = 3
  loc_FDF8C6: var_8C.LockType = 3
  loc_FDF8E5: var_8C.Open var_A0, var_B0, -1
  loc_FDF8EC: Set var_8C = Nothing 
  loc_FDF8F3: Set var_88 = arg_C 
  loc_FDF8F7: Proc_287_34_FDF900 = -1
End Sub

Public Sub Proc_287_35_F8DC34
  'Data Table: 480BE4
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_480BFD As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_F8DAF5: Set var_8C = Me.TopCtrl1
  loc_F8DAFB: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_F8DB03: var_A0 = CStr()
  loc_F8DB14: If (var_A0 = "Add") Then
  loc_F8DB44:   Set var_8C = Me.Txt
  loc_F8DB4A:   Call 0.Method_Proc_287_35_F8DC340 (CInt(0), var_A4, var_A0, "Select Count(*) From UserCollection Where DocID='", var_9C, -1)
  loc_F8DB6B:   unk_480BFD.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_F8DB7B:    = var_C4.Item()
  loc_F8DB83:    = var_D8.Value
  loc_F8DBB0:   If (var_A4.Text.Fields > 0) Then
  loc_F8DBB9:     Call 0.Method_arg_50 (var_A0)
  loc_F8DBDA:     MsgBox("Duplicate Serial No.", &H40, CVar(var_A0), var_108, var_118)
  loc_F8DBF0:     Call Proc_287_41_115DCB8(MemVar_1F92044)
  loc_F8DC03:     Set var_8C = Me.Txt
  loc_F8DC09:     Call 0.Method_Proc_287_35_F8DC340 (CInt(0), var_A4)
  loc_F8DC11:     var_A4.Text = var_A0
  loc_F8DC25:     Proc_287_35_F8DC34 = 0
  loc_F8DC2B:   End If
  loc_F8DC2B: End If
  loc_F8DC2B: Proc_287_35_F8DC34 = var_A0
End Sub

Public Sub Proc_287_36_EE35CC
  'Data Table: 480BE4
  Dim var_98 As Variant
  Dim var_8C As Label
  loc_EE3512: Set var_8C = Me.Txt
  loc_EE3518: Call 0.Method_Proc_287_36_EE35CCC (var_8E, var_86)
  loc_EE3528: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE353E:   Set var_8C = Me.Txt
  loc_EE3544:   Call 0.Method_Proc_287_36_EE35CC0 (CInt(var_86), var_98)
  loc_EE354C:   var_98.Text = vbNullString
  loc_EE3568:   Set var_8C = Me.Txt
  loc_EE356E:   Call 0.Method_Proc_287_36_EE35CC0 (CInt(var_86), var_98)
  loc_EE3576:   var_98.Tag = vbNullString
  loc_EE3585: Next var_92 'Byte
  loc_EE359C: Set var_8C = Me.txtM
  loc_EE35A2: Call 0.Method_Proc_287_36_EE35CC0 (CInt(4), var_98)
  loc_EE35AA: var_98.defaultText = vbNullString
  loc_EE35C3: Me.LblVPrefix.Caption = vbNullString
  loc_EE35CB: Exit Sub
End Sub

Public Sub Proc_287_37_11EC61C
  'Data Table: 480BE4
  Dim Me As Recordset15
  Dim unk_480BFD As Connection15
  Dim var_88 As Recordset15
  Dim var_124 As Recordset15
  Dim var_128 As Variant
  Dim var_120 As Label
  Dim var_11C As Variant
  loc_11EC19C: On Error Goto loc_11EC615
  loc_11EC1B6: If (Me.RecordCount > 0) Then
  loc_11EC20F:   unk_480BFD.Execute CStr("SELECT UserCollection.* FROM UserCollection Where DocID='" & Me.Fields.Item("DocID").Value & "'"), var_11C, -1
  loc_11EC21A:   Set var_88 = var_120
  loc_11EC237:   Set var_124 = var_88 
  loc_11EC26C:   global_60 = CStr(var_88.Fields.Item("vType").Value)
  loc_11EC2B6:   Set var_120 = Me.Txt
  loc_11EC2BC:   Call 0.Method_Proc_287_37_11EC61C0 (CInt(0), var_128)
  loc_11EC2C4:   var_128.Text = CStr(var_124.Fields.Item("DocID").Value)
  loc_11EC312:   Me.LblVPrefix.Caption = CStr(var_124.Fields.Item("vPrefix").Value)
  loc_11EC378:   Set var_120 = Me.Txt
  loc_11EC37E:   Call 0.Method_Proc_287_37_11EC61C0 (CInt(3), var_128, CStr(Format(CVar(var_124.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_11EC386:   var_128.Text = 1
  loc_11EC3D9:   Set var_120 = Me.Txt
  loc_11EC3DF:   Call 0.Method_Proc_287_37_11EC61C0 (CInt(2), var_128, CStr(var_124.Fields.Item("VNo").Value))
  loc_11EC3E7:   var_128.Text = 1
  loc_11EC450:   Set var_120 = Me.txtM
  loc_11EC456:   Call 0.Method_Proc_287_37_11EC61C0 (CInt(4), var_128, CVar(CStr(Format(CVar(var_124.Fields.Item("VTIME")), "hh:mm"))))
  loc_11EC45E:   var_128.defaultText = 1
  loc_11EC4C9:   Set var_120 = Me.Txt
  loc_11EC4CF:   Call 0.Method_Proc_287_37_11EC61C0 (CInt(4), var_128, CStr(Format(CVar(var_124.Fields.Item("Amount")), "0.00")), 1)
  loc_11EC4D7:   var_128.Text = 1
  loc_11EC527:   Set var_120 = Me.Txt
  loc_11EC52D:   Call 0.Method_Proc_287_37_11EC61C0 (CInt(6), var_128)
  loc_11EC535:   var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("Remarks")), 1)
  loc_11EC57F:   Set var_120 = Me.Txt
  loc_11EC585:   Call 0.Method_Proc_287_37_11EC61C0 (CInt(5), var_128)
  loc_11EC58D:   var_128.Tag = Proc_6_38_E68A98(CVar(var_124.Fields.Item("AgUser")))
  loc_11EC5D7:   Set var_120 = Me.Txt
  loc_11EC5DD:   Call 0.Method_Proc_287_37_11EC61C0 (CInt(5), var_128)
  loc_11EC5E5:   var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("AgUser")))
  loc_11EC5FB:   Set var_124 = Nothing 
  loc_11EC602: Else
  loc_11EC602:   Call Proc_287_36_EE35CC(var_120)
  loc_11EC607: End If
  loc_11EC607: Call Proc_287_39_EB84BC()
  loc_11EC611: Set var_88 = Nothing
  loc_11EC614: Exit Sub
  loc_11EC615: ' Referenced from: 11EC19C
  loc_11EC615: Proc_6_60_E62BC4()
  loc_11EC61A: Exit Sub
End Sub

Public Sub Proc_287_38_EF4B08(arg_C) 'EF4B08
  'Data Table: 480BE4
  Dim var_98 As Variant
  loc_EF4A3E: Set var_8C = Me.Txt
  loc_EF4A44: Call 0.Method_Proc_287_38_EF4B08C (var_8E, var_86)
  loc_EF4A54: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EF4A6A:   Set var_8C = Me.Txt
  loc_EF4A70:   Call 0.Method_Proc_287_38_EF4B080 (CInt(var_86), var_98)
  loc_EF4A78:   var_98.Enabled = arg_C
  loc_EF4A87: Next var_92 'Byte
  loc_EF4A9A: Set var_8C = Me.Txt
  loc_EF4AA0: Call 0.Method_Proc_287_38_EF4B080 (CInt(2), var_98)
  loc_EF4AA8: var_98.Enabled = False
  loc_EF4AC4: Set var_8C = Me.txtM
  loc_EF4ACA: Call 0.Method_Proc_287_38_EF4B080 (CInt(4), var_98)
  loc_EF4AD2: var_98.Enabled = False
  loc_EF4AEB: Set var_8C = Me.Txt
  loc_EF4AF1: Call 0.Method_Proc_287_38_EF4B080 (CInt(0), var_98)
  loc_EF4AF9: var_98.Enabled = False
  loc_EF4B05: Exit Sub
End Sub

Public Sub Proc_287_39_EB84BC
  'Data Table: 480BE4
  loc_EB8438: If (CBool(Me.DGUser.Visible) = &HFF) Then
  loc_EB844A:   Me.DGUser.Visible = False
  loc_EB8452: End If
  loc_EB846D: If (Me.FrmList.Visible = &HFF) Then
  loc_EB847C:   Me.FrmList.Visible = False
  loc_EB8484: End If
  loc_EB84A0: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB84B2:   Me.FGPoint.Visible = False
  loc_EB84BA: End If
  loc_EB84BA: Exit Sub
End Sub

Public Sub Proc_287_40_E917D8(arg_C) 'E917D8
  'Data Table: 480BE4
  Dim var_10C As TextBox
  loc_E9176C: Call Proc_287_39_EB84BC()
  loc_E917A8: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E917AB:   Call TopCtrl1_UnknownEvent_16()
  loc_E917B3: Else
  loc_E917BD:   Set var_108 = Me.Txt
  loc_E917C3:   Call 0.Method_Proc_287_40_E917D80 (arg_C)
  loc_E917CB:   var_10C.SetFocus
  loc_E917D7: End If
  loc_E917D7: Exit Sub
End Sub

Public Sub Proc_287_41_115DCB8
  'Data Table: 480BE4
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_115D950: var_90 = global_60
  loc_115D967: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_115D98A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115D998: Set var_B4 = Me.Txt
  loc_115D99E: Call 0.Method_Proc_287_41_115DCB80 (CInt(3), var_B8, var_E8)
  loc_115D9AD: Proc_6_7_F25D88(var_D8, CVar(var_B8), var_13C)
  loc_115D9B5: var_F8 = -1 & var_D8 
  loc_115D9C9: ŒÅš³í2¤E¾¢j(”„[.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115D9D4: Set var_8C = var_140
  loc_115DA10: If (var_8C.RecordCount <= 0) Then
  loc_115DA2C:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115DA3F:   var_88 = vbNullString
  loc_115DA42:   Proc_287_41_115DCB8 = 
  loc_115DA48: End If
  loc_115DA5C: If (var_8C.RecordCount > 0) Then
  loc_115DA9B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115DAB8:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115DAC9:     var_9C = CStr(var_B8.Value)
  loc_115DAE4:     Set var_B4 = Me.Txt
  loc_115DAEA:     Call 0.Method_Proc_287_41_115DCB80 (CInt(2), var_B8)
  loc_115DB00:     var_94 = CLng(Val(var_B8.Text))
  loc_115DB10:   Else
  loc_115DB3B:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115DB62:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115DB77:     var_D8 = (var_B8.Value + 1)
  loc_115DB7D:     var_94 = CLng(var_D8)
  loc_115DB8E:   End If
  loc_115DB8E: End If
  loc_115DBB9: var_C8 = Space((5 - Len(var_90)))
  loc_115DBC1: var_E8 = (CVar(var_94 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_B8.Value)
  loc_115DBCB: var_F8 = (var_E8 + CVar(var_9C))
  loc_115DBDC: var_118 = Space((5 - Len(var_9C)))
  loc_115DBE4: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115DBFA: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115DC02: var_188 = (var_13C + var_178)
  loc_115DC0E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115DC13: var_98 = CStr(var_1A8)
  loc_115DC43: Me.LblVPrefix.Caption = var_9C
  loc_115DC59: Set var_B4 = Me.Txt
  loc_115DC5F: Call 0.Method_Proc_287_41_115DCB80 (CInt(0), var_B8)
  loc_115DC67: var_B8.Text = var_98
  loc_115DC86: Set var_B4 = Me.Txt
  loc_115DC8C: Call 0.Method_Proc_287_41_115DCB80 (CInt(2), var_B8)
  loc_115DC94: var_B8.Text = CStr(var_94)
  loc_115DCA6: var_88 = var_98
  loc_115DCAE: Set var_8C = Nothing
  loc_115DCB1: Proc_287_41_115DCB8 = var_94
End Sub

Public Sub Proc_287_42_EE36B8
  'Data Table: 480BE4
  loc_EE3606: On Error Goto loc_EE364C
  loc_EE361E: Call 0.Method_arg_18C (var_8C)
  loc_EE3626: Call var_8C.Show
  loc_EE363B: Call 0.Method_arg_188 (var_B0)
  loc_EE3643: var_88 = var_B0
  loc_EE3646: Proc_287_42_EE36B8 = 1
  loc_EE364C: ' Referenced from: EE3606
  loc_EE3654: Set var_8C = Err()
  loc_EE365A: Call 0.Method_arg_1C (var_B4)
  loc_EE366B: If (var_B4 <> 0) Then
  loc_EE3676:   Set var_8C = Err()
  loc_EE367C:   Call 0.Method_arg_2C (var_B0)
  loc_EE369D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE36B0: End If
  loc_EE36B0: Proc_287_42_EE36B8 = 
End Sub
