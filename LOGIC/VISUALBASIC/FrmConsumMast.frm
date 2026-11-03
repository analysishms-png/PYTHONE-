VERSION 5.00
Begin VB.Form FrmConsumMast
  Caption = "Consumption Master"
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
  ClientWidth = 10035
  ClientHeight = 6645
  Begin DataGrid DGRest
    Left = 8325
    Top = 6900
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 25
  End
  Begin Frame Frame1
    BackColor = &HC0FFFF&
    Left = 9600
    Top = 6240
    Width = 5640
    Height = 2130
    Visible = 0   'False
    TabIndex = 20
    Begin TextBox Txt
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1500
      Top = 330
      Width = 3855
      Height = 285
      TabIndex = 21
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
    Begin BtnEnh Command2
      Index = 1
      Left = 3450
      Top = 1530
      Width = 1080
      Height = 570
      TabIndex = 22
    End
    Begin BtnEnh Command2
      Index = 0
      Left = 4530
      Top = 1530
      Width = 1080
      Height = 570
      TabIndex = 23
    End
    Begin Label LblName
      Caption = "Restaurant"
      Index = 4
      ForeColor = &HC00000&
      Left = 240
      Top = 330
      Width = 1020
      Height = 240
      TabIndex = 24
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10035
    Height = 450
    TabIndex = 19
  End
  Begin DataGrid DGItem
    Left = 10395
    Top = 1290
    Width = 4230
    Height = 1890
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin DataGrid DGFinish
    Left = 2370
    Top = 3300
    Width = 7950
    Height = 1290
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3690
    Top = 2400
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3690
    Top = 2085
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
    Left = 3690
    Top = 1770
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3690
    Top = 1455
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
    BackColor = &HFFC0C0&
    ForeColor = &H800000&
    Left = 10800
    Top = 180
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 240
      Top = 120
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 10
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H800000&
    Left = 1950
    Top = 4995
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 1800
    Top = 4680
    Width = 7740
    Height = 1875
    TabIndex = 4
  End
  Begin MSFlexGrid FGPoint
    Left = 30
    Top = 3075
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 26
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5160
    Top = 8100
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
    Left = 1785
    Top = 8100
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
    Left = 15
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
    ForeColor = &H80&
    Left = 7260
    Top = 1470
    Width = 4380
    Height = 285
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
    Left = 1980
    Top = 2400
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
    Left = 5310
    Top = 2385
    Width = 1680
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
    Left = 1980
    Top = 2085
    Width = 375
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
  Begin Label LblName
    Caption = "Finish Item Qty"
    Index = 1
    ForeColor = &HC00000&
    Left = 1980
    Top = 1770
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
    Left = 1980
    Top = 1455
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

Attribute VB_Name = "FrmConsumMast"

Private global_64 As Integer
Private global_66 As Integer
Private MasterFormExit As Integer
Private global_108 As Long

Private Sub DGItem_UnknownEvent_9 'FC2FCC
  'Data Table: 4DD3B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FC2E37: Me.DGItem.Visible = False
  loc_FC2E56: If (Me.RecordCount > 0) Then
  loc_FC2E93:   Set var_B4 = Me.TxtGrid
  loc_FC2E99:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_FC2EA1:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FC2ECA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC2ED2:   var_EC = CVar(CLng(1)) 'Long
  loc_FC2F05:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_FC2F0D:   Set var_B8 = Me.FGrid
  loc_FC2F13:   LateIdCallSt
  loc_FC2F42:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FC2F4A:   var_EC = CVar(CLng(2)) 'Long
  loc_FC2F6C:   var_B0 = Me.Fields.Item("Name")
  loc_FC2F7D:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FC2F85:   Set var_B8 = Me.FGrid
  loc_FC2F8B:   LateIdCallSt
  loc_FC2FA7: End If
  loc_FC2FB0: Set var_A8 = Me.TxtGrid
  loc_FC2FB6: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8, var_11C, var_EC)
  loc_FC2FBE: var_B0.SetFocus
  loc_FC2FCA: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10DC55C
  'Data Table: 4DD3B4
  Dim var_92 As Integer
  Dim var_90 As Variant
  Dim var_88 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_C4 As TextBox
  Dim Me As Recordset15
  Dim var_8C As TextBox
  loc_10DC26E: Set var_88 = Me.Txt
  loc_10DC274: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10DC27C: Set var_90 = var_8C
  loc_10DC282: Proc_6_74_E226B0(var_90)
  loc_10DC28E: Call Proc_28_58_EF8940(var_8C)
  loc_10DC296: var_92 = Index
  loc_10DC2A1: If (var_92 = CInt(4)) Then
  loc_10DC2B2:   Set var_8C = Me.Txt
  loc_10DC2B8:   Call 0.Method_Txt_GotFocus0 (CInt(4), var_90)
  loc_10DC2DE:   var_AC = CVar((Me.Frame1.Left + var_90.Left)) 'Single
  loc_10DC2ED:   Me.DGRest.Left = var_AC
  loc_10DC30B:   Set var_8C = Me.Txt
  loc_10DC311:   Call 0.Method_Txt_GotFocus0 (CInt(4), var_90)
  loc_10DC32C:   Set var_C0 = Me.Txt
  loc_10DC332:   Call 0.Method_Txt_GotFocus0 (CInt(4), var_C4)
  loc_10DC360:   var_AC = CVar((((Me.Frame1.Top + var_90.Top) + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_10DC36F:   Me.DGRest.Top = var_AC
  loc_10DC392:   Me.Filter = 0
  loc_10DC3A3:   Me.Filter = "RestType<>'Kitchen'"
  loc_10DC3BF:   If (Me.RecordCount > 0) Then
  loc_10DC3CD:     Set var_8C = Me.FGPoint
  loc_10DC3E5:     Proc_6_137_1193554(Me.DGRest, global_80, Index)
  loc_10DC3F3:   End If
  loc_10DC441:   Set var_88 = Me.Txt
  loc_10DC447:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_10DC44F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10DC467:   If (var_8C Or (var_D4 = vbNullString)) Then
  loc_10DC46A:     Exit Sub
  loc_10DC46B:   End If
  loc_10DC478:   Set var_88 = Me.Txt
  loc_10DC47E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10DC486:   var_D4 = var_8C.Text
  loc_10DC498:   var_AC = "Name"
  loc_10DC4D3:   If CBool(CVar(var_D4) <> Me.Fields.Item(var_AC).Value) Then
  loc_10DC4DC:     Me.MoveFirst
  loc_10DC4FF:     Set var_88 = Me.Txt
  loc_10DC505:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name ='")
  loc_10DC50D:     0 = var_8C.Text
  loc_10DC526:     Me.Find 1 & var_D4 & "'", var_AC, var_92
  loc_10DC53B:   End If
  loc_10DC54E:   Me.DGRest.Tag = CVar(CStr(Index))
  loc_10DC559: End If
  loc_10DC559: Exit Sub
loc_10DC55A: End Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '105BF6C
  'Data Table: 4DD3B4
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  loc_105BD0A: If (CLng(Shift) = &H1B) Then
  loc_105BD0D:   Call Proc_28_58_EF8940()
  loc_105BD12:   Exit Sub
  loc_105BD13: End If
  loc_105BD16: var_86 = KeyCode
  loc_105BD21: If (var_86 = CInt(0)) Then
  loc_105BD3C:   Set var_9C = Nothing
  loc_105BD47:   Set var_98 = Nothing
  loc_105BD75:   Proc_6_69_134A198(Me.DGFinish, Me.Txt, KeyCode, global_72, Shift, 0)
  loc_105BD8C: Else
  loc_105BD94:   If (var_86 = CInt(4)) Then
  loc_105BDB4:     Set var_9C = Me.FGPoint
  loc_105BDED:     Proc_6_69_134A198(Me.DGRest, Me.Txt, KeyCode, global_80, Shift, 0, 1, Nothing)
  loc_105BE5C:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_105BE63:       Set var_98 = Me.DGRest
  loc_105BE82:       Proc_6_138_106D6F8(var_98, global_80, KeyCode, Me.FGPoint, var_9C, 0)
  loc_105BE90:     End If
  loc_105BE90:   End If
  loc_105BE90: End If
  loc_105BECB: If ((CBool(Me.DGFinish.Visible) = 0) And (CBool(Me.DGRest.Visible) = 0)) Then
  loc_105BEE3:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_105BEE6:   End If
  loc_105BEFB:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_105BF04:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_105BF09:   End If
  loc_105BF13:   If (CLng(Shift) = &H26) Then
  loc_105BF1A:     Set var_8C = Me.TopCtrl1
  loc_105BF20:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_105BF39:     If (CStr(0) = "Add") Then
  loc_105BF44:       If (KeyCode <> CInt(0)) Then
  loc_105BF4D:         Proc_6_76_E52838(Shift, arg_14)
  loc_105BF52:       End If
  loc_105BF55:     Else
  loc_105BF5D:       If (KeyCode <> CInt(1)) Then
  loc_105BF66:         Proc_6_76_E52838(Shift, arg_14)
  loc_105BF6B:       End If
  loc_105BF6B:     End If
  loc_105BF6B:   End If
  loc_105BF6B: End If
  loc_105BF6B: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F8F1D8
  'Data Table: 4DD3B4
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F8F07A: Proc_6_133_E7EF78(var_94)
  loc_F8F083: arg_10 = CInt(var_94)
  loc_F8F08C: Proc_6_58_E054C0(arg_10, arg_10)
  loc_F8F094: var_96 = KeyAscii
  loc_F8F09F: If (var_96 = CInt(0)) Then
  loc_F8F0BE:   If (CBool(Me.DGFinish.Visible) = &HFF) Then
  loc_F8F0D0:     var_A0 = "Name"
  loc_F8F0EB:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_72, arg_10)
  loc_F8F0FA:   End If
  loc_F8F0FD: Else
  loc_F8F105:   If (var_96 = CInt(4)) Then
  loc_F8F124:     If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_F8F136:       var_A0 = "Name"
  loc_F8F151:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_80, arg_10, var_A0)
  loc_F8F16B:       Set var_A8 = Me.FGPoint
  loc_F8F183:       Proc_6_138_106D6F8(Me.DGRest, global_80, KeyAscii, var_A8, 0)
  loc_F8F191:     End If
  loc_F8F194:   Else
  loc_F8F19C:     If (var_96 = CInt(1)) Then
  loc_F8F1A9:       Set var_9C = Me.Txt
  loc_F8F1AF:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_F8F1CA:       Proc_6_42_129A86C(var_A8, arg_10, 7, 4)
  loc_F8F1D6:     End If
  loc_F8F1D6:   End If
  loc_F8F1D6: End If
  loc_F8F1D6: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFE56C
  'Data Table: 4DD3B4
  Dim var_86 As Integer
  loc_DFE567: var_86 = KeyCode
  loc_DFE56A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46F74
  'Data Table: 4DD3B4
  loc_E46F52: Set var_88 = Me.Txt
  loc_E46F58: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46F66: Proc_6_73_E22704(var_8C)
  loc_E46F72: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '11D10B4
  'Data Table: 4DD3B4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim arg_10 As Integer
  Dim var_AC As Variant
  Dim var_8C As Variant
  Dim var_94 As String
  Dim var_B4 As TextBox
  Dim var_B0 As Label
  Dim var_104 As TextBox
  loc_11D0C53: var_86 = Cancel
  loc_11D0C5E: If (var_86 = CInt(0)) Then
  loc_11D0C80:   Set var_8C = Me.Txt
  loc_11D0C86:   Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_94, "Code='")
  loc_11D0C8E:   0 = var_90.Tag
  loc_11D0CA7:   Me.Find 1 & var_94 & "'", var_AC, var_86
  loc_11D0CC6:   Set var_8C = Me.Txt
  loc_11D0CCC:   Call 0.Method_Txt_Validate0 (Cancel)
  loc_11D0CF5:   If (Proc_6_27_EA565C(var_90, "Name") = 0) Then
  loc_11D0D02:     Set var_8C = Me.Txt
  loc_11D0D08:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11D0D10:     var_90.SetFocus
  loc_11D0D1E:     arg_10 = &HFF
  loc_11D0D21:     Exit Sub
  loc_11D0D22:   End If
  loc_11D0D5E:   Set var_B0 = Me.Txt
  loc_11D0D64:   Call 0.Method_Txt_Validate0 (CInt(2), var_B4, CStr(Me.Fields.Item("Unit").Value))
  loc_11D0D6C:   var_B4.Text = arg_10
  loc_11D0DBD:   Me.LblOutlet.Caption = CStr(Me.Fields.Item("RestName").Value)
  loc_11D0DEE:   var_90 = Me.Fields.Item("RestCode")
  loc_11D0DFF:   var_94 = CStr(var_90.Value)
  loc_11D0E0C:   Me.LblOutlet.Tag = var_94
  loc_11D0E23:   Call Proc_28_52_10793A8(var_C6)
  loc_11D0E2B: Else
  loc_11D0E33:   If (var_86 = CInt(4)) Then
  loc_11D0E84:     Set var_8C = Me.Txt
  loc_11D0E8A:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_11D0E92:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_11D0EAA:     If (var_90 Or (var_94 = vbNullString)) Then
  loc_11D0EBA:       Set var_8C = Me.Txt
  loc_11D0EC0:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11D0EC8:       var_90.Text = vbNullString
  loc_11D0EE1:       Set var_8C = Me.Txt
  loc_11D0EE7:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11D0EEF:       var_90.Tag = vbNullString
  loc_11D0EFB:       Exit Sub
  loc_11D0EFC:     End If
  loc_11D0F37:     Set var_B0 = Me.Txt
  loc_11D0F3D:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_11D0F45:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11D0F78:     var_90 = Me.Fields.Item("Code")
  loc_11D0F96:     Set var_B0 = Me.Txt
  loc_11D0F9C:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_11D0FA4:     var_B4.Tag = CStr(var_90.Value)
  loc_11D0FBD:   Else
  loc_11D0FC5:     If (var_86 = CInt(1)) Then
  loc_11D0FD2:       Set var_8C = Me.Txt
  loc_11D0FD8:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_11D1012:       Set var_B0 = Me.Txt
  loc_11D1018:       Call 0.Method_Txt_Validate0 (Cancel, var_B4, CStr(Format(CVar(var_90), "0.0000")))
  loc_11D1020:       var_B4.Text = 1
  loc_11D104C:       Me.FGrid.Col = CVar(CLng(2))
  loc_11D1057:     Else
  loc_11D105F:       If (var_86 = CInt(3)) Then
  loc_11D106C:         Set var_8C = Me.Txt
  loc_11D1072:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11D1092:         Set var_B4 = Me.Txt
  loc_11D1098:         Call 0.Method_Txt_Validate0 (Cancel, var_104)
  loc_11D10A0:         var_104.Text = Proc_6_33_1512840(var_90, 1)
  loc_11D10B3:       End If
  loc_11D10B3:     End If
  loc_11D10B3:   End If
  loc_11D10B3: End If
  loc_11D10B3: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10E26C8
  'Data Table: 4DD3B4
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_10E23C4: Call Proc_28_58_EF8940()
  loc_10E23DC: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10E23F7: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E2400: Set var_BC = Me.FGrid
  loc_10E2436: Set var_104 = Me.TxtGrid
  loc_10E243C: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_10E2444: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_10E2475: var_110 = CLng(Me.FGrid.Col)
  loc_10E2485: If (var_110 = CLng(2)) Then
  loc_10E2497:   Set var_A8 = Me.TxtGrid
  loc_10E249D:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H23)
  loc_10E24A5:   var_BC.MaxLength = var_110
  loc_10E24F2:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10E24F5:     Exit Sub
  loc_10E24F6:   End If
  loc_10E2509:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E2511:   var_DC = CVar(CLng(2)) 'Long
  loc_10E2544:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_10E254D:     Me.MoveFirst
  loc_10E2565:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E256D:     var_DC = CVar(CLng(1)) 'Long
  loc_10E2576:     Set var_BC = Me.FGrid
  loc_10E257C:     var_CC = var_BC.TextMatrix)
  loc_10E25B1:     Me.Find "Code ='" & CStr(var_CC) & "'", 0, 1
  loc_10E25E1:     If (Me.EOF = &HFF) Then
  loc_10E25EA:       Me.MoveFirst
  loc_10E25EF:     End If
  loc_10E25EF:   End If
  loc_10E25F2: Else
  loc_10E25F9:   If (var_110 = CLng(3)) Then
  loc_10E260B:     Set var_A8 = Me.TxtGrid
  loc_10E2611:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_130, var_CC)
  loc_10E2619:     var_BC.MaxLength = var_DC
  loc_10E2628:   Else
  loc_10E262F:     If (var_110 = CLng(4)) Then
  loc_10E2641:       Set var_A8 = Me.TxtGrid
  loc_10E2647:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H19, var_94)
  loc_10E264F:       var_BC.MaxLength = var_DC
  loc_10E265E:     Else
  loc_10E2665:       If (var_110 = CLng(5)) Then
  loc_10E2677:         Set var_A8 = Me.TxtGrid
  loc_10E267D:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB)
  loc_10E2685:         var_BC.MaxLength = var_94
  loc_10E2694:       Else
  loc_10E269B:         If (var_110 = CLng(7)) Then
  loc_10E26AD:           Set var_A8 = Me.TxtGrid
  loc_10E26B3:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_10E26BB:           var_BC.MaxLength = &HB
  loc_10E26C7:         End If
  loc_10E26C7:       End If
  loc_10E26C7:     End If
  loc_10E26C7:   End If
  loc_10E26C7: End If
  loc_10E26C7: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11815E8
  'Data Table: 4DD3B4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C0 As Variant
  Dim var_94 As DataGrid
  loc_118120C: On Error Goto loc_11815E0
  loc_1181219: If (CLng(Shift) = &H1B) Then
  loc_1181229:   Set var_88 = Me.TxtGrid
  loc_118122F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1181249:   Set var_94 = Me.TxtGrid
  loc_118124F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_1181257:   var_98.Text = var_8C.Tag
  loc_1181273:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1181278:   Call Proc_28_58_EF8940(arg_14)
  loc_1181281:   Set var_88 = Me.FGrid
  loc_118129E:   Set var_88 = Me.TxtGrid
  loc_11812A4:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_11812AC:   var_8C.Visible = False
  loc_11812B8:   Exit Sub
  loc_11812B9: End If
  loc_11812DC: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_11812EB:   Set var_88 = Me.TxtGrid
  loc_11812F1:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B0)
  loc_11812F9:   var_AC = var_8C.Left
  loc_1181310:   Me.DGItem.Left = CVar(var_B0)
  loc_118132A:   Set var_94 = Me.TxtGrid
  loc_1181330:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_1181349:   Set var_88 = Me.TxtGrid
  loc_118134F:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_1181363:   var_C0 = CVar((var_8C.Top + var_98.Height)) 'Single
  loc_1181372:   Me.DGItem.Top = CVar(var_8C.Top)
  loc_118139C:   Set var_98 = Nothing
  loc_11813D5:   Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_76, Shift, &HFF)
  loc_11813F3:   If (CLng(Shift) = &HD) Then
  loc_11813FC:     Call Proc_28_54_136BBFC(KeyCode, var_DA, 1, Nothing)
  loc_1181407:     If (var_DA = &HFF) Then
  loc_118144D:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 4)
  loc_118145D:     End If
  loc_118145D:   End If
  loc_1181460: Else
  loc_1181467:   If (var_AC = CLng(3)) Then
  loc_1181474:     If (CLng(Shift) = &HD) Then
  loc_118147D:       Call Proc_28_54_136BBFC(KeyCode, var_DA, 0, 3)
  loc_1181488:       If (var_DA = &HFF) Then
  loc_11814CE:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 7, 0)
  loc_11814DE:       End If
  loc_11814DE:     End If
  loc_11814E1:   Else
  loc_11814E8:     If (var_AC = CLng(5)) Then
  loc_11814F5:       If (CLng(Shift) = &HD) Then
  loc_11814FE:         Call Proc_28_54_136BBFC(KeyCode, var_DA, 5, 0)
  loc_1181509:         If (var_DA = &HFF) Then
  loc_118154F:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 7, 0)
  loc_118155F:         End If
  loc_118155F:       End If
  loc_1181562:     Else
  loc_1181569:       If (var_AC = CLng(7)) Then
  loc_1181576:         If (CLng(Shift) = &HD) Then
  loc_118157F:           Call Proc_28_54_136BBFC(KeyCode, var_DA, 7, 0)
  loc_118158A:           If (var_DA = &HFF) Then
  loc_11815D0:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_66, 7, 0)
  loc_11815E0:           End If
  loc_11815E0:         End If
  loc_11815E0:       End If
  loc_11815E0:       ' Referenced from: 118120C
  loc_11815E0:     End If
  loc_11815E0:   End If
  loc_11815E0: End If
  loc_11815E0: Proc_6_60_E62BC4(0, 0, 0)
  loc_11815E5: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F8EE88
  'Data Table: 4DD3B4
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F8ED27: Proc_6_58_E054C0(arg_10)
  loc_F8ED38: If (KeyAscii = 0) Then
  loc_F8ED4E:   var_A0 = CLng(Me.FGrid.Col)
  loc_F8ED5E:   If (var_A0 = CLng(2)) Then
  loc_F8ED7D:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F8ED84:       Set var_AC = Me.TxtGrid
  loc_F8ED8F:       var_A4 = "Name"
  loc_F8EDAA:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_76, arg_10)
  loc_F8EDB9:     End If
  loc_F8EDBC:   Else
  loc_F8EDC3:     If (var_A0 = CLng(3)) Then
  loc_F8EDD0:       Set var_8C = Me.TxtGrid
  loc_F8EDD6:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F8EDF1:       Proc_6_42_129A86C(var_AC, arg_10, 7, 5)
  loc_F8EE00:     Else
  loc_F8EE07:       If (var_A0 = CLng(5)) Then
  loc_F8EE14:         Set var_8C = Me.TxtGrid
  loc_F8EE1A:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F8EE35:         Proc_6_42_129A86C(var_AC, arg_10, 7)
  loc_F8EE44:       Else
  loc_F8EE4B:         If (var_A0 = CLng(7)) Then
  loc_F8EE58:           Set var_8C = Me.TxtGrid
  loc_F8EE5E:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 5)
  loc_F8EE79:           Proc_6_42_129A86C(var_AC, arg_10, 2)
  loc_F8EE85:         End If
  loc_F8EE85:       End If
  loc_F8EE85:     End If
  loc_F8EE85:   End If
  loc_F8EE85: End If
  loc_F8EE85: Exit Sub
  loc_F8EE86: CExtInstUnk
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EC08B4
  'Data Table: 4DD3B4
  loc_EC0814: On Error Goto loc_EC08AD
  loc_EC083A: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_EC0860:   If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_EC086E:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_EC0882:     var_A4 = "Name"
  loc_EC089D:     Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_76, Shift)
  loc_EC08AC:   End If
  loc_EC08AC: End If
  loc_EC08AC: Exit Sub
  loc_EC08AD: ' Referenced from: EC0814
  loc_EC08AD: Proc_6_60_E62BC4(var_A4, &HFF)
  loc_EC08B2: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22170
  'Data Table: 4DD3B4
  Dim arg_10 As Integer
  loc_E22158: If (Cancel = 0) Then
  loc_E22161:   Call Proc_28_54_136BBFC(Cancel, var_88)
  loc_E2216A:   arg_10 = Not(var_88)
  loc_E2216D: End If
  loc_E2216D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5E9B4
  'Data Table: 4DD3B4
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5E97F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5E992: Set var_A8 = Me.TxtGrid
  loc_E5E998: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5E9A0: var_AC.Visible = False
  loc_E5E9AC: Call Proc_28_58_EF8940()
  loc_E5E9B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68EE0
  'Data Table: 4DD3B4
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68E9C: Set var_88 = Me.TxtGrid
  loc_E68EA2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E68EBC: If (var_8C.Visible = 0) Then
  loc_E68ED5:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E68EDD: End If
  loc_E68EDD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1D790
  'Data Table: 4DD3B4
  loc_E1D787: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D78F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE3E4
  'Data Table: 4DD3B4
  loc_DFE3DC: Call Proc_28_53_E3EB8C()
  loc_DFE3E1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10BF484
  'Data Table: 4DD3B4
  Dim var_9C As String
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_10BF1A8: Set var_88 = Me.TopCtrl1
  loc_10BF1AE: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10BF1F3: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10BF1FC:   Call Form_KeyDown(Cancel, arg_10)
  loc_10BF201: End If
  loc_10BF205: Set var_88 = Me.TopCtrl1
  loc_10BF20B: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10BF224: If (CStr() = "Browse") Then
  loc_10BF227:   Exit Sub
  loc_10BF228: End If
  loc_10BF245: var_C4 = Me.FGrid.Rows
  loc_10BF29C: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_10BF2B2:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10BF2C2:   var_9C = "+{Tab}"
  loc_10BF2C8:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_10BF2D2:   Cancel = 0
  loc_10BF2D8: Else
  loc_10BF32F:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10BF345:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10BF384:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_10BF387:       Call TopCtrl1_UnknownEvent_16()
  loc_10BF38C:     End If
  loc_10BF38C:   End If
  loc_10BF38C: End If
  loc_10BF392: global_64 = Cancel
  loc_10BF3B8: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10BF3DC: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10BF3F2:   var_11C = CLng(Me.FGrid.Col)
  loc_10BF402:   If Not (var_11C = CLng(2)) Then
  loc_10BF40C:     If Not (var_11C = CLng(1)) Then
  loc_10BF416:       If Not (var_11C = CLng(3)) Then
  loc_10BF420:         If (var_11C = CLng(4)) Then
  loc_10BF423:         End If
  loc_10BF423:       End If
  loc_10BF423:     End If
  loc_10BF436:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10BF44E:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10BF453:     var_12C = vbNullString
  loc_10BF45D:     Set var_B4 = Me.FGrid
  loc_10BF463:     LateIdCallSt
  loc_10BF47B:   End If
  loc_10BF47B: End If
  loc_10BF480: Exit Sub
  loc_10BF481: Set var_120 = 0
End Sub

Private Sub FGrid_UnknownEvent_B 'E14588
  'Data Table: 4DD3B4
  loc_E14579: Call FGrid_UnknownEvent_C()
  loc_E14586: Exit Sub
  loc_E14587: End Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1286B44
  'Data Table: 4DD3B4
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1286574: Set var_88 = Me.TopCtrl1
  loc_128657A: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1286593: If (CStr() = "Browse") Then
  loc_1286596:   Exit Sub
  loc_1286597: End If
  loc_12865AA: var_A0 = CLng(Me.FGrid.Col)
  loc_12865BA: If (var_A0 = CLng(2)) Then
  loc_12865C1:   Set var_C4 = Me.FGrid
  loc_12865E5:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1286612:   Set var_B4 = var_C4
  loc_1286624:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_128664C:   Set var_88 = Me.TxtGrid
  loc_1286652:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_128665A:   0 = var_B4.Text
  loc_1286673:   If (Len(var_9C) <= 1) Then
  loc_1286682:     Set var_88 = Me.TxtGrid
  loc_1286688:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1286690:     var_CA = var_B4.Text
  loc_12866A1:     Set var_B8 = Me.TxtGrid
  loc_12866A7:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12866AF:     var_C4.Text = var_9C
  loc_12866C2:   End If
  loc_12866CE:   Set var_88 = Me.TxtGrid
  loc_12866D4:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_12866EE:   Set var_B8 = Me.TxtGrid
  loc_12866F4:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12866FC:   var_C4.SelStart = Len(var_B4.Text)
  loc_1286712: Else
  loc_1286719:   If (var_A0 = CLng(3)) Then
  loc_1286720:     Set var_C4 = Me.FGrid
  loc_1286744:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1286771:     Set var_B4 = var_C4
  loc_1286783:     Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_12867AB:     Set var_88 = Me.TxtGrid
  loc_12867B1:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_12867B9:     0 = var_B4.Text
  loc_12867D2:     If (Len(var_9C) <= 1) Then
  loc_12867E1:       Set var_88 = Me.TxtGrid
  loc_12867E7:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_12867EF:       var_CA = var_B4.Text
  loc_1286800:       Set var_B8 = Me.TxtGrid
  loc_1286806:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_128680E:       var_C4.Text = var_9C
  loc_1286821:     End If
  loc_128682D:     Set var_88 = Me.TxtGrid
  loc_1286833:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_128684D:     Set var_B8 = Me.TxtGrid
  loc_1286853:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_128685B:     var_C4.SelStart = Len(var_B4.Text)
  loc_1286871:   Else
  loc_1286878:     If (var_A0 = CLng(5)) Then
  loc_128687F:       Set var_C4 = Me.FGrid
  loc_12868A3:       var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_12868D0:       Set var_B4 = var_C4
  loc_12868E2:       Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_128690A:       Set var_88 = Me.TxtGrid
  loc_1286910:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1286918:       0 = var_B4.Text
  loc_1286931:       If (Len(var_9C) <= 1) Then
  loc_1286940:         Set var_88 = Me.TxtGrid
  loc_1286946:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_128694E:         var_CA = var_B4.Text
  loc_128695F:         Set var_B8 = Me.TxtGrid
  loc_1286965:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_128696D:         var_C4.Text = var_9C
  loc_1286980:       End If
  loc_128698C:       Set var_88 = Me.TxtGrid
  loc_1286992:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_12869AC:       Set var_B8 = Me.TxtGrid
  loc_12869B2:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_12869BA:       var_C4.SelStart = Len(var_B4.Text)
  loc_12869D0:     Else
  loc_12869D7:       If (var_A0 = CLng(7)) Then
  loc_12869DE:         Set var_C4 = Me.FGrid
  loc_1286A02:         var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1286A2F:         Set var_B4 = var_C4
  loc_1286A41:         Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_1286A69:         Set var_88 = Me.TxtGrid
  loc_1286A6F:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1286A77:         0 = var_B4.Text
  loc_1286A90:         If (Len(var_9C) <= 1) Then
  loc_1286A9F:           Set var_88 = Me.TxtGrid
  loc_1286AA5:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1286AAD:           var_CA = var_B4.Text
  loc_1286ABE:           Set var_B8 = Me.TxtGrid
  loc_1286AC4:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1286ACC:           var_C4.Text = var_9C
  loc_1286ADF:         End If
  loc_1286AEB:         Set var_88 = Me.TxtGrid
  loc_1286AF1:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1286B0B:         Set var_B8 = Me.TxtGrid
  loc_1286B11:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1286B19:         var_C4.SelStart = Len(var_B4.Text)
  loc_1286B2C:       End If
  loc_1286B2C:     End If
  loc_1286B2C:   End If
  loc_1286B2C: End If
  loc_1286B36: If (CLng(Cancel) <> &HD) Then
  loc_1286B3E:   global_66 = &HFF
  loc_1286B41: End If
  loc_1286B41: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1031124
  'Data Table: 4DD3B4
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  loc_1030EF0: Set var_90 = Me.TopCtrl1
  loc_1030EF6: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1030F0F: If (CStr() = "Browse") Then
  loc_1030F12:   Exit Sub
  loc_1030F13: End If
  loc_1030F30: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1030F33:   Exit Sub
  loc_1030F34: End If
  loc_1030F45: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_1030F67:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1030FA1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_1030FC3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1030FD9:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1030FE2:         Set var_118 = Me.FGrid
  loc_1030FFD:       Else
  loc_1031010:         Me.FGrid.Rows = 1
  loc_103102D:         var_D4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1031035:         Set var_118 = Me.FGrid
  loc_1031064:         Me.FGrid.FixedRows = 1
  loc_103106C:       End If
  loc_1031091:       For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_11C 'Integer
  loc_103109B:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_10310A3:         var_E4 = CVar(CLng(0)) 'Long
  loc_10310AD:         var_A0 = CVar(CStr(var_86)) 'String
  loc_10310B5:         Set var_90 = Me.FGrid
  loc_10310BB:         LateIdCallSt
  loc_10310CC:       Next var_11C 'Integer
  loc_10310D1:     End If
  loc_10310D4:   Else
  loc_10310F5:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_1031105:   End If
  loc_1031109:   Set var_90 = Me.FGrid
  loc_103111A: End If
  loc_103111F: Set var_8C = Nothing
  loc_1031122: Exit Sub
  loc_1031123: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1D4C0
  'Data Table: 4DD3B4
  loc_E1D4B7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1D4BF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1D650
  'Data Table: 4DD3B4
  loc_E1D647: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D64F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3EC58
  'Data Table: 4DD3B4
  Dim var_8C As TextBox
  loc_E3EC2C: Call Proc_28_58_EF8940()
  loc_E3EC3C: Set var_88 = Me.TxtGrid
  loc_E3EC42: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3EC4A: var_8C.Visible = False
  loc_E3EC56: Exit Sub
End Sub

Private Sub Form_Load() '1120794
  'Data Table: 4DD3B4
  Dim var_88 As Variant
  Dim var_AC As String
  Dim var_B0 As String
  Dim var_B4 As String
  Dim var_B8 As String
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim var_D0 As String
  Dim unk_4DD3C9 As Connection15
  loc_112043C: On Error Goto loc_112078D
  loc_112044E: Me.LblUser.Left = CDbl(13500)
  loc_1120465: Me.LblUser.Top = CDbl(7800)
  loc_112047C: Me.LblLDt.Top = CDbl(8160)
  loc_1120493: Me.LblLDt.Left = CDbl(13500)
  loc_11204A2: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_11204B4: Set var_88 = Me.FGrid
  loc_11204BA: var_88.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_11204DE: Me.var_88.CursorLocation = 3
  loc_1120508: var_B0 = "SELECT ItemMast.Code, ItemMast.Name, ItemMast.Unit, Depart.Name as Department,Case When Itemmast.RestCode='" & MemVar_1F92078 & "BANQ"
  loc_112050F: var_B4 = var_B0 & "' Then 'BANQUET' Else D1.Name End as RestName,Itemmast.RestCode FROM (ItemMast Inner JOIN Depart ON ItemMast.Kitchen = Depart.Code) Left join Depart  as D1 on D1.Code=ItemMast.RestCode Where (Itemmast.LogSite_Code='"
  loc_112051D: var_C8 = CVar(var_B4 & MemVar_1F92078 & "' or ItemMast.LogSite_Code='HO') AND ITEMMAST.DISPCODE<>9999 and Type IN ('Finish','Semi Finish') Order by ItemMast.Name") 'String
  loc_1120543: CVarUnk
  loc_1120548: VerifyVarObj
  loc_1120554: LateIdStAd
  loc_112056C: Set global_76 = New 
  loc_112057E: Me.DGFinish.CursorLocation = 3
  loc_1120597: var_AC = "Select Code,Name,IssueUnit as Unit,CASE WHEN ISNULL(LPurRate,0)=0 THEN ISNULL(PURCHRATE,0) ELSE ISNULL(LPurRate,0) END AS LPurRate,ConvRatio From ItemMast where (LOGSITE_CODE='" & MemVar_1F92078
  loc_11205AC: var_B8 = var_AC & "' or LOGSITE_CODE='HO') and DispCode<>9999 and Code=ConsumptionItem And ActiveYN<>'No'" & " Union " & "Select Code,Name,Unit as Unit,CASE WHEN ISNULL(LPurRate,0)=0 THEN ISNULL(PURCHRATE,0) ELSE ISNULL(LPurRate,0) END AS LPurRate,ConvRatio From ItemMast Where (LOGSITE_CODE='"
  loc_11205BA: var_D0 = var_B8 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type IN ('Semi Finish') and gravyItem='Yes' And ItemMast.ActiveYN<>'No' Order by Name"
  loc_11205C3: unk_4DD3C9.Execute var_D0, var_C8, -1
  loc_11205FA: CVarUnk
  loc_11205FF: VerifyVarObj
  loc_112060B: LateIdStAd
  loc_1120634: var_B0 = "SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_112063D: unk_4DD3C9.Execute var_B0, var_C8, -1
  loc_112066C: CVarUnk
  loc_1120671: VerifyVarObj
  loc_1120677: Set var_88 = Me.DGRest
  loc_112067D: LateIdStAd
  loc_11206A7: Me.DGRest.CursorLocation = 3
  loc_11206D1: var_B0 = "Select Distinct BOM.FinItem+BOM.RestCode+Convert(Varchar(11),BOM.AppDate,103) as SearchCode,BOM.FinItem,ItemMast.Name,BOM.FinQty,BOM.AppDAte,ItemMast.Unit,BOM.Site_Code,Bom.LogSite_Code,BOM.RestCode,Case When BOM.RestCode='" & MemVar_1F92078 & "BANQ"
  loc_11206D8: var_B4 = var_B0 & "' Then 'BANQUET' Else Depart.Name End RestName From BOM Inner Join ItemMast on ItemMast.Code=BOM.FinItem And ItemMast.RestCode=BOM.RestCode Left join Depart on Depart.Code=ItemMast.RestCode Where (BOM.LOGSITE_CODE='"
  loc_11206F0: r_C8, CVar(MemVar_1F92044), 2 CVar(var_B4 & MemVar_1F92078 & "') AND ITEMMAST.DISPCODE<>9999 Order by ItemMast.Name,RestName"), CVar(MemVar_1F92044), 2
  loc_112070F: Set var_88 = Me
  loc_1120726: Call Proc_28_57_EAD2A4(Proc_5_1_100CB50("INI", var_88, New, 3, -1, var_88, Me.DGItem), var_88, var_88, Me.DGFinish)
  loc_1120731: Call Proc_28_51_11DADF4(var_88, var_88)
  loc_1120736: Call Proc_28_56_1415C4C(New)
  loc_112074E: Me.FGrid.Left = CVar(CDbl(700))
  loc_1120769: Me.FGrid.Top = CVar(CDbl(2750))
  loc_1120784: Me.FGrid.Height = CVar(CDbl(5000))
  loc_112078C: Exit Sub
  loc_112078D: ' Referenced from: 112043C
  loc_112078D: Proc_6_60_E62BC4(3)
  loc_1120792: Exit Sub
End Sub

Private Sub Form_Resize() 'ED7498
  'Data Table: 4DD3B4
  Dim var_8C As Label
  loc_ED73F6: Call 0.Method_arg_50 (var_88)
  loc_ED7408: Me.LblFormCaption.Caption = var_88
  loc_ED7421: Me.LblFormCaption.Left = CDbl(0)
  loc_ED742D: Set var_A0 = Me.TopCtrl1
  loc_ED7433: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED7440: Set var_8C = Me.TopCtrl1
  loc_ED7446: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED7460: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED747B: Call 0.Method_arg_100 (var_B8)
  loc_ED748D: Me.LblFormCaption.Width = var_B8
  loc_ED7495: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E55CA0
  'Data Table: 4DD3B4
  loc_E55C6B: Set global_76 = Nothing
  loc_E55C7D: Set global_68 = Nothing
  loc_E55C8F: Set global_72 = Nothing
  loc_E55C9B: MasterFormExit = 0
  loc_E55C9E: Exit Sub
End Sub

Private Sub Form_Activate() 'E46F10
  'Data Table: 4DD3B4
  loc_E46EE0: On Error Goto loc_E46F0A
  loc_E46EE7: Set var_88 = Me.TopCtrl1
  loc_E46EED: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E46F02: If (CLng(CInt()) = &H2D) Then
  loc_E46F05:   Call TopCtrl1_UnknownEvent_15()
  loc_E46F0A:   ' Referenced from: E46EE0
  loc_E46F0A: End If
  loc_E46F0A: Proc_6_60_E62BC4()
  loc_E46F0F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26934
  'Data Table: 4DD3B4
  Dim .global_15360 As Currency
  loc_E26919: If (MasterFormExit = &HFF) Then
  loc_E26929:   Me.Global.Unload Me
  loc_E26931: End If
  loc_E26931: Exit Sub
  loc_E26932: .global_15360 = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A9D0
  'Data Table: 4DD3B4
  loc_E2A9A8: On Error Goto loc_E2A9C8
  loc_E2A9BF: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2A9C7: Exit Sub
  loc_E2A9C8: ' Referenced from: E2A9A8
  loc_E2A9C8: Proc_6_60_E62BC4(Shift)
  loc_E2A9CD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ED72C4
  'Data Table: 4DD3B4
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_ED7210: On Error Goto loc_ED72BD
  loc_ED7220: Me.LblUser.Caption = vbNullString
  loc_ED7235: Me.LblLDt.Caption = vbNullString
  loc_ED7260: Call Proc_28_57_EAD2A4(Proc_5_1_100CB50("ADD", Me))
  loc_ED726B: Call Proc_28_55_F319D0(global_68)
  loc_ED727D: Set var_88 = Me.Txt
  loc_ED7283: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_ED728B: var_94.Enabled = True
  loc_ED72A2: Set var_88 = Me.Txt
  loc_ED72A8: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED72B0: var_94.SetFocus
  loc_ED72BC: Exit Sub
  loc_ED72BD: ' Referenced from: ED7210
  loc_ED72BD: Proc_6_60_E62BC4(var_94)
  loc_ED72C2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EAE5B4
  'Data Table: 4DD3B4
  loc_EAE530: On Error Goto loc_EAE5AC
  loc_EAE56A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EAE590:   Call Proc_28_57_EAD2A4(Proc_5_1_100CB50("INI", Me))
  loc_EAE5A6:   Call Proc_28_56_1415C4C(2)
  loc_EAE5AB: End If
  loc_EAE5AB: Exit Sub
  loc_EAE5AC: ' Referenced from: EAE530
  loc_EAE5AC: Proc_6_60_E62BC4(global_68)
  loc_EAE5B1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '113AC58
  'Data Table: 4DD3B4
  Dim var_C8 As String
  Dim var_96 As Integer
  Dim unk_4DD3C9 As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_113A910: On Error Goto loc_113AC01
  loc_113A921: If (Proc_183_56_FE8818(global_68) = &HFF) Then
  loc_113A924:   Exit Sub
  loc_113A925: End If
  loc_113A95C: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_113A961:   var_96 = 0
  loc_113A96D:   unk_4DD3C9.BeginTrans var_11C
  loc_113A974:   var_96 = &HFF
  loc_113A988:   var_94 = Me.Bookmark 'Variant
  loc_113A999:   var_C8 = "Delete From BOM Where BOM.FinItem+BOM.RestCode+Convert(Varchar(11),BOM.AppDate,103)='"
  loc_113A9E2:   unk_4DD3C9.Execute CStr("Confirmation" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_113AA77:   var_F8 = Me.Fields.Item("AppDate").Value
  loc_113AA81:   var_170 = 0
  loc_113AA94:   var_168 = 0
  loc_113AA9F:   var_164 = 0
  loc_113AAB2:   var_15C = 0
  loc_113AACB:   var_150 = "AppDate"
  loc_113AB06:   var_128 = "BOM"
  loc_113AB0F:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "FinItem", &HC8, CStr(Me.Fields.Item("FinItem").Value), "RestCode", &HC8, CStr(Me.Fields.Item("RestCode").Value))
  loc_113AB4B:   unk_4DD3C9.CommitTrans
  loc_113AB52:   var_96 = 0
  loc_113AB60:   Me.Requery -1
  loc_113AB70:   Me.Requery -1
  loc_113AB80:   Me.Requery -1
  loc_113ABA0:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_113ABAD:     Me.Bookmark = var_94
  loc_113ABB5:   Else
  loc_113ABC9:     If (Me.EOF = 0) Then
  loc_113ABD2:       Me.MoveLast
  loc_113ABD7:     End If
  loc_113ABD7:   End If
  loc_113ABD7:   Call Proc_28_56_1415C4C(var_96, var_150, 3, CStr(var_F8), var_15C)
  loc_113ABF8:   Proc_5_0_110649C(&HFF, Me, global_68, 0)
  loc_113AC00: End If
  loc_113AC00: Exit Sub
  loc_113AC01: ' Referenced from: 113A910
  loc_113AC07: If (var_96 = &HFF) Then
  loc_113AC10:   unk_4DD3C9.RollbackTrans
  loc_113AC15: End If
  loc_113AC1D: Set var_120 = Err()
  loc_113AC23: Call 0.Method_arg_2C (var_128, 0, var_164)
  loc_113AC44: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_113AC57: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA4DA4
  'Data Table: 4DD3B4
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_FA4C24: On Error Goto loc_FA4D61
  loc_FA4C35: If (Proc_183_55_FE7900(global_68) = &HFF) Then
  loc_FA4C38:   Exit Sub
  loc_FA4C39: End If
  loc_FA4C50: If (Me.RecordCount > 0) Then
  loc_FA4C76:   Call Proc_28_57_EAD2A4(Proc_5_1_100CB50("EDIT", Me))
  loc_FA4C8F:   Set var_90 = Me.Txt
  loc_FA4C95:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FA4C9D:   var_8C = var_98.Tag
  loc_FA4CA8:   global_84 = var_8C
  loc_FA4CC3:   Set var_90 = Me.Txt
  loc_FA4CC9:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FA4CD1:   var_98.Enabled = False
  loc_FA4CE8:   Set var_90 = Me.Txt
  loc_FA4CEE:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_FA4CF6:   var_98.SetFocus
  loc_FA4D05: Else
  loc_FA4D26:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FA4D36: End If
  loc_FA4D43: Me.LblUser.Caption = vbNullString
  loc_FA4D58: Me.LblLDt.Caption = vbNullString
  loc_FA4D60: Exit Sub
  loc_FA4D61: ' Referenced from: FA4C24
  loc_FA4D69: Set var_90 = Err()
  loc_FA4D6F: Call 0.Method_arg_2C (var_8C)
  loc_FA4D90: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_FA4DA3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B10C
  'Data Table: 4DD3B4
  loc_E1B101: Me.Global.Unload Me
  loc_E1B109: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEF048
  'Data Table: 4DD3B4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_110 As String
  Dim var_114 As String
  Dim MemVar_1F920E4 As String
  loc_EEEF8C: On Error Goto loc_EEF041
  loc_EEEFA6: If (Me.RecordCount <= 0) Then
  loc_EEEFAF:   var_B8 = "Information"
  loc_EEEFCA:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EEEFDA:   Exit Sub
  loc_EEEFDB: End If
  loc_EEEFE9: var_110 = "Select Distinct BOM.FinItem+BOM.RestCode+Convert(Varchar(11),BOM.AppDate,103) As SearchCode,ItemMast.Name,Convert(Varchar(11),AppDate,106) AppDate,FinQty,Case When BOM.RestCode='" & MemVar_1F92078 & "BANQ"
  loc_EEEFF0: var_114 = var_110 & "' Then 'BANQUET' Else Depart.Name End Outlet FROM BOM Inner Join ItemMast on ItemMast.Code=BOM.FinItem And ItemMast.RestCode=BOM.RestCode Left Join Depart On Depart.Code=ItemMast.RestCode Where (BOM.LOGSITE_CODE='"
  loc_EEEFFE: MemVar_1F920E4 = var_114 & MemVar_1F92078 & "' or BOM.LOGSITE_CODE='HO') AND ITEMMAST.DISPCODE<>9999 Order by ItemMast.Name,AppDate,Outlet"
  loc_EEF013: MemVar_1F92120 = Me
  loc_EEF020: Proc_6_126_F1BCC0("2500,1200,1000,2500")
  loc_EEF03B: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEF040: Exit Sub
  loc_EEF041: ' Referenced from: EEEF8C
  loc_EEF041: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EEF046: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3BA18
  'Data Table: 4DD3B4
  Dim MemVar_4EBC88 As Currency
  loc_E3BA08: Proc_5_0_110649C(&HFF, Me)
  loc_E3BA10: Call Proc_28_56_1415C4C(global_68)
  loc_E3BA15: Exit Sub
  loc_E3BA16: MemVar_4EBC88 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3C3D8
  'Data Table: 4DD3B4
  loc_E3C3C8: Proc_5_0_110649C(&HFF, Me)
  loc_E3C3D0: Call Proc_28_56_1415C4C(global_68)
  loc_E3C3D5: Exit Sub
  loc_E3C3D6: Set arg_3C00 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3C858
  'Data Table: 4DD3B4
  loc_E3C848: Proc_5_0_110649C(&HFF, Me)
  loc_E3C850: Call Proc_28_56_1415C4C(global_68)
  loc_E3C855: Exit Sub
  loc_E3C856: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3DA58
  'Data Table: 4DD3B4
  loc_E3DA48: Proc_5_0_110649C(&HFF, Me)
  loc_E3DA50: Call Proc_28_56_1415C4C(global_68)
  loc_E3DA55: Exit Sub
  loc_E3DA56: Set arg_3C00 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'EB55A8
  'Data Table: 4DD3B4
  Dim var_90 As Variant
  Dim var_88 As Variant
  loc_EB5517: Set var_90 = Me.LblFormCaption
  loc_EB5546: Me.Frame1.Top = (Me.LblFormCaption.Top + var_90.Height)
  loc_EB5563: Me.Frame1.Left = CDbl(900)
  loc_EB5577: Me.Frame1.Visible = True
  loc_EB558A: Set var_88 = Me.Txt
  loc_EB5590: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(4))
  loc_EB5598: var_90.SetFocus
  loc_EB55A4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E21ED0
  'Data Table: 4DD3B4
  Dim Me As Recordset15
  loc_E21EB7: Me.Requery -1
  loc_E21EC7: Me.Requery -1
  loc_E21ECC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1505058
  'Data Table: 4DD3B4
  Dim var_FC As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_DC As Variant
  Dim var_13C As Variant
  Dim var_15C As String
  Dim var_220 As Variant
  Dim var_B0 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_A8 As Double
  Dim var_B8 As String
  Dim var_258 As Double
  Dim var_25C As String
  Dim var_264 As String
  Dim var_B4 As Label
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_274 As String
  Dim unk_4DD3C9 As Connection15
  Dim var_278 As Variant
  Dim var_27C As Variant
  Dim var_280 As Variant
  Dim var_26C As TextBox
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
  Dim var_2B4 As Variant
  Dim var_51C As Variant
  Dim var_6F0 As Variant
  Dim var_260 As String
  Dim var_4FC As String
  Dim Me As Variant
  loc_15042D4: On Error Goto loc_1505005
  loc_15042DB: var_86 = CByte(0) 'Byte
  loc_15042EA: Set var_AC = Me.Txt
  loc_15042F0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1504319: If (Proc_183_19_E8DAFC(var_B0, "Finish Name") = 0) Then
  loc_1504323:   Call Txt_GotFocus(CInt(0))
  loc_1504328:   Exit Sub
  loc_1504329: End If
  loc_1504334: Set var_AC = Me.Txt
  loc_150433A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B0)
  loc_1504363: If (Proc_183_19_E8DAFC(var_B0, "Finish Qty") = 0) Then
  loc_150436D:   Call Txt_GotFocus(CInt(1))
  loc_1504372:   Exit Sub
  loc_1504373: End If
  loc_150437E: Set var_AC = Me.Txt
  loc_1504384: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B0)
  loc_15043AD: If (Proc_183_19_E8DAFC(var_B0, "Applicable Date") = 0) Then
  loc_15043B7:   Call Txt_GotFocus(CInt(3))
  loc_15043BC:   Exit Sub
  loc_15043BD: End If
  loc_15043DE: var_EC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15043E8: For var_11C = 1 To var_EC: var_9C = var_11C 'Variant
  loc_15043F3:   var_DC = CVar(CLng(var_9C)) 'Long
  loc_15043FB:   var_FC = CVar(CLng(2)) 'Long
  loc_1504437:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_150445F:     For var_170 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9E = var_170 'Integer
  loc_150446D:       var_220 = (var_9E = CInt(3))
  loc_1504476:       var_DC = CVar(CLng(var_9C)) 'Long
  loc_150447F:       var_FC = CVar(CLng(var_9E)) 'Long
  loc_1504499:       var_13C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15044A7:       var_15C = vbNullString
  loc_15044C8:       Set var_B0 = Me.FGrid
  loc_15044CE:       var_1C0 = var_B0.TextMatrix)
  loc_15044D9:       var_1D0 = CVar(CStr(var_1C0)) 'String
  loc_1504513:       If CBool(CVar(CLng(var_9C)) And CVar(CLng(var_9E)) Or (Trim(var_1D0) = "0.00")) Then
  loc_150451E:         If (var_9E = CInt(3)) Then
  loc_150453A:           MsgBox("Item Qty is required", 0, var_13C, Trim(var_13C), var_16C)
  loc_150454A:         End If
  loc_150455E:         Me.FGrid.Row = CVar(CLng(var_9C))
  loc_1504579:         Me.FGrid.Col = CVar(CLng(var_9E))
  loc_1504585:         Set var_AC = Me.FGrid
  loc_15045A9:         Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_15045B1:         Exit Sub
  loc_15045B2:       End If
  loc_15045B5:     Next var_170 'Integer
  loc_15045BA:   End If
  loc_15045BD: Next var_11C 'Variant
  loc_15045C6: var_A8 = CDbl(0)
  loc_15045EA: var_EC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15045F4: For var_250 = 1 To var_EC: var_9C = var_250 'Variant
  loc_15045FF:   var_DC = CVar(CLng(var_9C)) 'Long
  loc_1504607:   var_FC = CVar(CLng(6)) 'Long
  loc_1504633:   var_A8 = (var_A8 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1504642: Next var_250 'Variant
  loc_150464C: Set var_AC = Me.TopCtrl1
  loc_1504652: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_150465A: var_B8 = CStr()
  loc_150466B: If (var_B8 = "Add") Then
  loc_150469B:   Set var_AC = Me.Txt
  loc_15046A1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_B8, "Select Count(*) From BOM Where FinItem='", var_1C0, -1)
  loc_15046A9:   var_278 = var_B0.Tag
  loc_15046D9:   var_14C = CVar(var_27C & var_B8 & "' And RestCode='" & Me.LblOutlet.Tag & "' And AppDate=") 'String
  loc_15046E7:   Set var_26C = Me.Txt
  loc_15046ED:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_270, var_14C)
  loc_15046FC:   Proc_6_7_F25D88(var_13C, CVar(var_270), 0)
  loc_1504704:   var_16C = var_280 & var_13C 
  loc_1504712:   unk_4DD3C9.Execute CStr(var_16C), var_1D0, 
  loc_150471A:    = var_278.Fields
  loc_1504722:    = var_27C.Item()
  loc_150472A:    = var_280.Value
  loc_1504769:   If (var_1D0 > 0) Then
  loc_1504785:     MsgBox("Entry Already Exits Please Modify.", &H10, var_13C, var_14C, var_16C)
  loc_1504795:     Exit Sub
  loc_1504796:   End If
  loc_1504796: End If
  loc_150479F: unk_4DD3C9.BeginTrans var_284
  loc_15047A8: var_86 = CByte(1) 'Byte
  loc_15047B0: Set var_AC = Me.TopCtrl1
  loc_15047B6: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_15047BE: var_B8 = CStr()
  loc_15047CF: If (var_B8 = "Edit") Then
  loc_15047F0:   Set var_AC = Me.Txt
  loc_15047F6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_B8, "Delete From BOM Where FinItem='")
  loc_15047FE:   var_1C0 = var_B0.Tag
  loc_1504807:   var_25C = -1 & var_B8
  loc_150480E:   var_264 = var_27C & var_B8 & "' And RestCode='"
  loc_150481E:   var_260 = Me.LblOutlet.Tag
  loc_150483C:   Set var_26C = Me.Txt
  loc_1504842:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_270)
  loc_1504851:   Proc_6_7_F25D88(var_13C, CVar(var_270))
  loc_150485D:   var_274 = CStr(CVar(var_264 & var_260 & "' And AppDate=") & var_13C)
  loc_1504867:   unk_4DD3C9.Execute var_274, var_278, 
  loc_1504895: End If
  loc_15048B6: var_EC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15048C0: For var_2A4 = 1 To 0: var_9C = var_2A4 'Variant
  loc_15048CB:   var_DC = CVar(CLng(var_9C)) 'Long
  loc_15048D3:   var_FC = CVar(CLng(1)) 'Long
  loc_150490F:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1504920:     Set var_AC = Me.Txt
  loc_1504926:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_27C & var_B8)
  loc_150492E:     var_FC = var_B0.Tag
  loc_1504936:     var_CC = CVar(var_27C & var_B8) 'String
  loc_150494F:     Set var_B4 = Me.Txt
  loc_1504955:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_26C, var_260)
  loc_150495D:     var_DC = var_26C.Text
  loc_150496A:     var_258 = Val(var_260)
  loc_150497B:     Set var_270 = Me.Txt
  loc_1504981:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_278, var_264)
  loc_15049D0:     var_1B0 = CVar(CLng(var_9C)) 'Long
  loc_15049FA:     var_7D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1504A0B:     Set var_2E8 = Me.Txt
  loc_1504A11:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_2EC, var_274, var_7D0, CVar(CLng(3)))
  loc_1504A19:     var_1B0 = var_2EC.Text
  loc_1504A26:     var_7D8 = Val(var_274)
  loc_1504A2E:     var_36C = CVar(CLng(var_9C)) 'Long
  loc_1504A36:     var_38C = CVar(CLng(5)) 'Long
  loc_1504A58:     var_7E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1504A8A:     var_7E8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1504A9B:     Set var_450 = Me.Txt
  loc_1504AA1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_454, var_458, var_7E8, CVar(CLng(7)), CVar(CLng(var_9C)), var_7E0)
  loc_1504AA9:     var_38C = var_454.Text
  loc_1504AB6:     var_7F0 = Val(var_458)
  loc_1504AE8:     var_7F8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1504AF9:     Set var_4F4 = Me.Txt
  loc_1504AFF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4F8, var_4FC, var_7F8, CVar(CLng(6)), CVar(CLng(var_9C)), var_7F0)
  loc_1504B07:     var_36C = var_4F8.Text
  loc_1504B14:     var_800 = Val(var_4FC)
  loc_1504B25:     Proc_6_7_F25D88(var_59C, Date, var_800, var_7D8)
  loc_1504B35:     Set var_5D0 = Me.Txt
  loc_1504B3B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_5D4, CVar(CLng(1)))
  loc_1504B4A:     Proc_6_39_E7C810(var_5F4, CVar(var_5D4), CVar(CLng(var_9C)))
  loc_1504B5A:     Set var_628 = Me.Txt
  loc_1504B60:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_62C)
  loc_1504B6F:     Proc_6_7_F25D88(var_64C, CVar(var_62C))
  loc_1504B79:     var_68C = CVar(CLng(var_9C)) 'Long
  loc_1504B81:     var_6AC = CVar(CLng(4)) 'Long
  loc_1504BC2:     var_B8 = "Insert Into BOM(Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,Cost,Waste,Total,U_Name,U_EntDt,U_AE,SavedForQty,AppDate,WtUnit,LogSite_Code,RestCode) Values ('" & MemVar_1F92070
  loc_1504BEB:     var_FC = ",'"
  loc_1504BF7:     var_2B4 = CVar(var_B8 & "','") & Trim(var_CC) & "'," & CVar((var_278.Text / Val(var_264))) & var_FC & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1504C63:     var_51C = var_2B4 & "'," & CVar((var_7D0 / var_7D8)) & "," & var_9C & "," & CVar(var_7E0) & "," & CVar((var_7E8 / var_7F0)) & "," & CVar((var_7F8 / var_800)) 
  loc_1504CBA:     var_6F0 = var_51C & ",'" & CVar(MemVar_1F920C8) & "'," & var_59C & ",'A'," & var_5F4 & "," & var_64C & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1504CF7:     unk_4DD3C9.Execute CStr(var_6F0 & "','" & CVar(MemVar_1F92078) & "','" & CVar(Me.LblOutlet.Tag) & "')"), var_7BC, -1
  loc_1504DAB:   End If
  loc_1504DAE: Next var_2A4 'Variant
  loc_1504DC2: Set var_AC = Me.Txt
  loc_1504DC8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0)
  loc_1504DFC: var_B8 = CStr(var_A8)
  loc_1504E21: var_44C = "Update ItemMast Set IssueUnit=Unit,convRatio=1,PurchRate=" & var_B8 & ",LPurRate=" & CStr(var_A8) & " where Code='" & var_B0.Tag
  loc_1504E3F: unk_4DD3C9.Execute var_44C & "' And RestCode='" & Me.LblOutlet.Tag & "'", var_CC, -1
  loc_1504E73: unk_4DD3C9.CommitTrans
  loc_1504E7C: var_86 = CByte(0) 'Byte
  loc_1504E8B: Me.Requery -1
  loc_1504E9B: Me.Requery -1
  loc_1504EA4: Set var_AC = Me.DGItem
  loc_1504EB9: Set var_AC = Me.DGFinish
  loc_1504ED8: Set var_AC = Me.Txt
  loc_1504EDE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B0, var_B8)
  loc_1504EE6: DGFinish.DispID_FFFF = var_B0.Tag
  loc_1504F08: Set var_26C = Me.Txt
  loc_1504F0E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_270)
  loc_1504F22: var_13C = "dd/mm/yyyy"
  loc_1504F32: var_14C = Format(CVar(var_270), var_13C)
  loc_1504F53: var_16C = CVar("SearchCode='" & var_B8 & Me.LblOutlet.Tag) 'String
  loc_1504F70: Me.Find CStr(var_16C & var_14C & "'"), 0, 1
  loc_1504FA9: Set var_AC = Me.TopCtrl1
  loc_1504FAF: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(2)
  loc_1504FC8: If (CStr(var_FC) = "Add") Then
  loc_1504FCB:   Call TopCtrl1_UnknownEvent_A()
  loc_1504FD0:   Exit Sub
  loc_1504FD1: End If
  loc_1504FE6: var_B8 = "INI"
  loc_1504FF4: Call Proc_28_57_EAD2A4(Proc_5_1_100CB50(var_B8, Me, global_68, 1), 1)
  loc_1504FFF: Call Proc_28_56_1415C4C(DGItem.DispID_FFFF)
  loc_1505004: Exit Sub
  loc_1505005: ' Referenced from: 15042D4
  loc_150500E: If (CInt(var_86) = 1) Then
  loc_1505017:   unk_4DD3C9.RollbackTrans
  loc_150501C: End If
  loc_1505024: Set var_AC = Err()
  loc_150502A: Call 0.Method_arg_2C (var_B8)
  loc_1505043: MsgBox(CVar(var_B8), &H10, var_13C, var_14C, var_16C)
  loc_1505056: Exit Sub
End Sub

Private Sub DGFinish_UnknownEvent_9 'FCD1E8
  'Data Table: 4DD3B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As Label
  loc_FCD03F: Me.DGFinish.Visible = False
  loc_FCD05E: If (Me.RecordCount > 0) Then
  loc_FCD09D:   Set var_B4 = Me.Txt
  loc_FCD0A3:   Call 0.Method_DGFinish_UnknownEvent_90 (CInt(0), var_B8)
  loc_FCD0AB:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FCD0FD:   Set var_B4 = Me.Txt
  loc_FCD103:   Call 0.Method_DGFinish_UnknownEvent_90 (CInt(0), var_B8)
  loc_FCD10B:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FCD15C:   Me.LblOutlet.Caption = CStr(Me.Fields.Item("RestName").Value)
  loc_FCD18D:   var_B0 = Me.Fields.Item("RestCode")
  loc_FCD1AB:   Me.LblOutlet.Tag = CStr(var_B0.Value)
  loc_FCD1BF: End If
  loc_FCD1CA: Set var_A8 = Me.Txt
  loc_FCD1D0: Call 0.Method_DGFinish_UnknownEvent_90 (CInt(0))
  loc_FCD1D8: var_B0.SetFocus
  loc_FCD1E4: Exit Sub
  loc_FCD1E5: StAryRecMove
End Sub

Private Sub Command2_UnknownEvent_9 '117F88C
  'Data Table: 4DD3B4
  Dim var_A8 As TextBox
  Dim var_B0 As String
  Dim var_B2 As Integer
  Dim var_AC As String
  Dim var_C4 As String
  Dim unk_4DD3C9 As Connection15
  Dim var_88 As Recordset15
  Dim var_D4 As Variant
  Dim var_A4 As Frame
  Dim var_14A As Integer
  Dim var_E4 As Variant
  Dim var_108 As Variant
  loc_117F4E6: Set var_A4 = Me.Txt
  loc_117F4EC: Call 0.Method_Command2_UnknownEvent_90 (CInt(4), var_A8)
  loc_117F50B: If (var_A8.Tag <> vbNullString) Then
  loc_117F51F:   Set var_A4 = Me.Txt
  loc_117F525:   Call 0.Method_Command2_UnknownEvent_90 (CInt(4), var_A8)
  loc_117F53D:   var_A0 = " And ItemMast2.RestCode='" & var_A8.Tag & "'"
  loc_117F54E: End If
  loc_117F54E: On Error Goto loc_117F842
  loc_117F55D: If (KeyCode = 0) Then
  loc_117F574:   var_AC = "Select D.Name as Depart,BOM.*,ItemMast1.Name as Name,ItemMast1.Unit as WtUnit,ItemMast1.LPurRate,ItemMast1.IssueUnit,Itemmast2.Name as FinItemName,ItemMast2.Unit,(ItemMast1.LPurRate*BOM.RawQty) as ItemTotal, cast('1' as numeric) as DtlCnt From BOM Left Join ItemMast ItemMast1 on ItemMast1.Code=BOM.RawItem And ItemMast1.ItemType='Store' Left Join ItemMast ItemMast2 on ItemMast2.Code=BOM.FinItem And ItemMast2.RestCode=BOM.RestCode Left Join Depart D on Itemmast2.RestCode=D.Code Where BOM.LogSite_Code='" & MemVar_1F92078
  loc_117F597:   var_C4 = var_AC & "' and BOM.Site_Code='" & MemVar_1F92070 & "' And ItemMast2.ItemType<>'Store'" & var_A0 & " Order By Itemmast1.Name,BOM.AppDate"
  loc_117F5A0:   unk_4DD3C9.Execute var_C4, var_E4, -1
  loc_117F5C9:   var_E8 = var_A4.RecordCount
  loc_117F5D7:   If (var_E8 = 0) Then
  loc_117F5F3:     MsgBox("No Record Present For Printing", 0, var_108, var_128, var_148)
  loc_117F608:     Set var_88 = Nothing
  loc_117F617:     Me.Frame1.Visible = False
  loc_117F61F:     Exit Sub
  loc_117F620:   End If
  loc_117F636:   Set var_A4 = var_88 
  loc_117F642:   var_14A = CreateFieldDefFile(var_A4, MemVar_1F920B4 & "\ConsumMast.ttx", &HFF)
  loc_117F64C:   Set var_88 = var_A4
  loc_117F652:   var_D4 = CVar(var_14A) 'Integer
  loc_117F655:   var_98 = var_D4 'Variant
  loc_117F671:   var_AC = MemVar_1F920B4 & "\ConsumMast.RPT"
  loc_117F67A:   Call 0.Method_arg_1C (var_AC, var_D4, var_A4)
  loc_117F685:   MemVar_1F921E4 = var_A4
  loc_117F6A0:   Call 0.Method_arg_90 (var_A4, var_E8, var_9A, 1)
  loc_117F6A8:   Call 0.Method_arg_24 (var_14A, var_A4)
  loc_117F6B4:   For var_14E =  To CInt(var_E8): var_B2 = var_14E 'Integer
  loc_117F6CD:     Call 0.Method_arg_90 (var_A4, CLng(var_9A))
  loc_117F6D5:     Call 0.Method_arg_20 (var_A8)
  loc_117F6DD:     Call 0.Method_arg_30 (var_AC)
  loc_117F723:     If (Ucase(CVar(var_AC)) = Ucase("Title")) Then
  loc_117F72D:       var_B0 = "'Consumption Master" & " ("
  loc_117F73E:       Set var_A4 = Me.Txt
  loc_117F744:       Call 0.Method_Command2_UnknownEvent_90 (CInt(4), var_A8)
  loc_117F74C:       var_AC = var_A8.Text
  loc_117F76F:       Call 0.Method_arg_90 (var_164, CLng(var_9A))
  loc_117F777:       Call 0.Method_arg_20 (var_168)
  loc_117F77F:       Call 0.Method_arg_38 (var_B0 & var_AC & ")'")
  loc_117F79A:     End If
  loc_117F79D:   Next var_14E 'Integer
  loc_117F7BB:   Call 0.Method_arg_64 (var_A4, CVar(var_88))
  loc_117F7C3:   Call 0.Method_arg_2C (var_F8)
  loc_117F7D1:   Call 0.Method_arg_150 (var_118)
  loc_117F7DC:   Call 0.Method_arg_50 (var_AC)
  loc_117F7E6:   Set var_A8 = Nothing
  loc_117F800:   Set var_A4 = MemVar_1F921E4 
  loc_117F80C:   Proc_6_99_1483714(var_A4, 0, var_AC)
  loc_117F817:   MemVar_1F921E4 = var_A4
  loc_117F825: End If
  loc_117F82A: Set var_88 = Nothing
  loc_117F839: Me.Frame1.Visible = False
  loc_117F841: Exit Sub
  loc_117F842: ' Referenced from: 117F54E
  loc_117F84A: Set var_A4 = Err()
  loc_117F850: Call 0.Method_arg_2C (var_AC, &HFF)
  loc_117F85B: Call 0.Method_arg_50 (var_B0)
  loc_117F877: MsgBox(CVar(var_AC), &H10, CVar(var_B0), var_128, var_148)
  loc_117F88A: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F9F31C
  'Data Table: 4DD3B4
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_F9F1BF: Me.DGRest.Visible = False
  loc_F9F1DE: If (Me.RecordCount > 0) Then
  loc_F9F230:   Set var_CC = Me.Txt
  loc_F9F236:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)), var_D0)
  loc_F9F23E:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F9F296:   Set var_B4 = Me.DGRest
  loc_F9F2AD:   Set var_CC = Me.Txt
  loc_F9F2B3:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_F9F2BB:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F9F2DB: End If
  loc_F9F2F9: Set var_B0 = Me.Txt
  loc_F9F2FF: Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)))
  loc_F9F307: var_B4.SetFocus
  loc_F9F31B: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E9A908
  'Data Table: 4DD3B4
  loc_E9A8A6: Proc_6_153_E91194(Me.DGRest, arg_14)
  loc_E9A8D0: Set var_A8 = Me.FGPoint
  loc_E9A8F1: Proc_6_138_106D6F8(Me.DGRest, global_80, CInt(CStr(Me.DGRest.Tag)))
  loc_E9A907: Exit Sub
End Sub

Public Function MasterFormExitGet() '4DE4EC
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4DE4FB
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E93920
  'Data Table: 4DD3B4
  Dim Me As Recordset15
  loc_E938AE: On Error Goto loc_E93917
  loc_E938B7: Me.MoveFirst
  loc_E938E1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93909: Proc_5_0_110649C(&HFF, Me, global_68)
  loc_E93911: Call Proc_28_56_1415C4C(0)
  loc_E93916: Exit Sub
  loc_E93917: ' Referenced from: E938AE
  loc_E93917: Proc_6_60_E62BC4(var_A0)
  loc_E9391C: Exit Sub
End Sub

Public Property Get Mode() 'E04B80
  'Data Table: 4DD3B4
  loc_E04B79: Mode = global_108
End Sub

Public Property Let Mode(vNewValue) 'E01040
  'Data Table: 4DD3B4
  loc_E0103A: global_108 = vNewValue
  loc_E0103D: Exit Sub
End Sub

Public Sub Proc_28_51_11DADF4
  'Data Table: 4DD3B4
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_11DA978: On Error Goto loc_11DADEB
  loc_11DA989: Set var_88 = Me.Txt
  loc_11DA98F: Call 0.Method_Proc_28_51_11DADF40 (CInt(0), var_8C)
  loc_11DA9AE: Me.DGFinish.Left = CVar(var_8C.Left)
  loc_11DA9CA: Set var_B4 = Me.Txt
  loc_11DA9D0: Call 0.Method_Proc_28_51_11DADF40 (CInt(0), var_B8)
  loc_11DA9EB: Set var_88 = Me.Txt
  loc_11DA9F1: Call 0.Method_Proc_28_51_11DADF40 (CInt(0), var_8C)
  loc_11DA9F9: var_90 = var_8C.Top
  loc_11DAA09: var_A0 = CVar(((var_90 + var_B8.Height) + CDbl(&H19))) 'Single
  loc_11DAA18: Me.DGFinish.Top = CVar(var_8C.Left)
  loc_11DAA30: Call 0.Method_Me0 (var_90)
  loc_11DAA3C: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_11DAA4B: Me.FGrid.Width = CVar(var_8C.Left)
  loc_11DAA59: Call 0.Method_Me8 (var_90)
  loc_11DAA65: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_11DAA74: Me.FGrid.Height = CVar(var_8C.Left)
  loc_11DAA88: Set var_88 = Me.TxtGrid
  loc_11DAA8E: Call 0.Method_Proc_28_51_11DADF40 (0, var_8C)
  loc_11DAAAD: Me.DGItem.Left = CVar(var_8C.Left)
  loc_11DAAC7: Set var_B4 = Me.TxtGrid
  loc_11DAACD: Call 0.Method_Proc_28_51_11DADF40 (0, var_B8)
  loc_11DAAE6: Set var_88 = Me.TxtGrid
  loc_11DAAEC: Call 0.Method_Proc_28_51_11DADF40 (0, var_8C)
  loc_11DAB00: var_A0 = CVar((var_8C.Top + var_B8.Height)) 'Single
  loc_11DAB0F: Me.DGItem.Top = CVar(var_8C.Left)
  loc_11DAB25: Set var_C4 = Me.FGrid
  loc_11DAB34: var_C4.Cols = 8
  loc_11DAB45: var_C4.Rows = 1
  loc_11DAB5E: global_56 = CStr(CLng(var_C4.BackColor))
  loc_11DAB6B: var_A0 = CVar(CLng(0)) 'Long
  loc_11DAB70: var_E8 = &H226
  loc_11DAB7C: LateIdCallSt
  loc_11DAB84: var_A0 = 0
  loc_11DAB90: var_E8 = CVar(CLng(0)) 'Long
  loc_11DAB95: var_108 = "S.No"
  loc_11DAB9E: LateIdCallSt
  loc_11DABA9: var_A0 = CVar(CLng(1)) 'Long
  loc_11DABAE: var_E8 = 0
  loc_11DABBA: LateIdCallSt
  loc_11DABC5: var_A0 = CVar(CLng(2)) 'Long
  loc_11DABCA: var_E8 = &HBB8
  loc_11DABD6: LateIdCallSt
  loc_11DABDE: var_A0 = 0
  loc_11DABEA: var_E8 = CVar(CLng(2)) 'Long
  loc_11DABEF: var_108 = "Name"
  loc_11DABF8: LateIdCallSt
  loc_11DAC03: var_A0 = CVar(CLng(2)) 'Long
  loc_11DAC0E: var_E8 = CVar(CInt(1)) 'Integer
  loc_11DAC15: LateIdCallSt
  loc_11DAC20: var_A0 = CVar(CLng(3)) 'Long
  loc_11DAC25: var_E8 = &H3E8
  loc_11DAC31: LateIdCallSt
  loc_11DAC3C: var_A0 = CVar(CLng(3)) 'Long
  loc_11DAC47: var_E8 = CVar(CInt(7)) 'Integer
  loc_11DAC4E: LateIdCallSt
  loc_11DAC56: var_A0 = 0
  loc_11DAC62: var_E8 = CVar(CLng(3)) 'Long
  loc_11DAC67: var_108 = "Qty"
  loc_11DAC70: LateIdCallSt
  loc_11DAC7B: var_A0 = CVar(CLng(4)) 'Long
  loc_11DAC80: var_E8 = &H320
  loc_11DAC8C: LateIdCallSt
  loc_11DAC94: var_A0 = 0
  loc_11DACA0: var_E8 = CVar(CLng(4)) 'Long
  loc_11DACA5: var_108 = "Wt.Unit"
  loc_11DACAE: LateIdCallSt
  loc_11DACB9: var_A0 = CVar(CLng(4)) 'Long
  loc_11DACC4: var_E8 = CVar(CInt(1)) 'Integer
  loc_11DACCB: LateIdCallSt
  loc_11DACD6: var_A0 = CVar(CLng(5)) 'Long
  loc_11DACDB: var_E8 = &H5DC
  loc_11DACE7: LateIdCallSt
  loc_11DACEF: var_A0 = 0
  loc_11DACFB: var_E8 = CVar(CLng(5)) 'Long
  loc_11DAD00: var_108 = "Cost"
  loc_11DAD09: LateIdCallSt
  loc_11DAD14: var_A0 = CVar(CLng(5)) 'Long
  loc_11DAD1F: var_E8 = CVar(CInt(7)) 'Integer
  loc_11DAD26: LateIdCallSt
  loc_11DAD31: var_A0 = CVar(CLng(6)) 'Long
  loc_11DAD36: var_E8 = &H5DC
  loc_11DAD42: LateIdCallSt
  loc_11DAD4A: var_A0 = 0
  loc_11DAD56: var_E8 = CVar(CLng(6)) 'Long
  loc_11DAD5B: var_108 = "Total"
  loc_11DAD64: LateIdCallSt
  loc_11DAD6F: var_A0 = CVar(CLng(6)) 'Long
  loc_11DAD7A: var_E8 = CVar(CInt(7)) 'Integer
  loc_11DAD81: LateIdCallSt
  loc_11DAD8C: var_A0 = CVar(CLng(7)) 'Long
  loc_11DAD91: var_E8 = &H3E8
  loc_11DAD9D: LateIdCallSt
  loc_11DADA5: var_A0 = 0
  loc_11DADB1: var_E8 = CVar(CLng(7)) 'Long
  loc_11DADB6: var_108 = "Waste %"
  loc_11DADBF: LateIdCallSt
  loc_11DADCA: var_A0 = CVar(CLng(7)) 'Long
  loc_11DADD5: var_E8 = CVar(CInt(7)) 'Integer
  loc_11DADDC: LateIdCallSt
  loc_11DADE6: Set var_C4 = Nothing 
  loc_11DADEA: Exit Sub
  loc_11DADEB: ' Referenced from: 11DA978
  loc_11DADEB: Proc_6_60_E62BC4(var_C4, var_E8, var_A0, var_C4, var_108, var_E8, var_A0, var_C4)
  loc_11DADF0: Exit Sub
End Sub

Public Sub Proc_28_52_10793A8
  'Data Table: 4DD3B4
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_4DD3C9 As Connection15
  Dim var_120 As Fields15
  Dim var_134 As Field20
  Dim var_154 As Integer
  Dim var_118 As Variant
  Dim var_144 As Variant
  loc_107915F: If (Me.RecordCount = 0) Then
  loc_1079162:   Proc_28_52_10793A8 = 
  loc_1079168: End If
  loc_1079174: If (global_108 = 1) Then
  loc_1079177:   Proc_28_52_10793A8 = 
  loc_107917D: End If
  loc_1079181: Set var_90 = Me.TopCtrl1
  loc_1079187: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_107918F: var_A4 = CStr()
  loc_10791A0: If (var_A4 = "Add") Then
  loc_10791D0:   Set var_90 = Me.Txt
  loc_10791D6:   Call 0.Method_Proc_28_52_10793A80 (CInt(0), var_A8, var_A4, "Select Count(*) From BOM Where FinItem='", var_118, -1)
  loc_107921C:   Set var_C0 = Me.Txt
  loc_1079222:   Call 0.Method_Proc_28_52_10793A80 (CInt(3), var_C4, CVar(var_120 & var_A4 & "' And RestCode='" & Me.LblOutlet.Tag & "' And AppDate="))
  loc_1079231:   Proc_6_7_F25D88(var_D4, CVar(var_C4), 0)
  loc_1079247:   unk_4DD3C9.Execute CStr(var_134 & var_D4), var_144, 
  loc_107924F:    = var_A8.Tag.Fields
  loc_1079257:    = var_120.Item()
  loc_107925F:    = var_134.Value
  loc_1079267:   var_154 = 0
  loc_107929E:   If (var_144 > var_154) Then
  loc_10792B8:     If (Me.RecordCount > 0) Then
  loc_10792C1:       Me.MoveFirst
  loc_10792D4:       Set var_90 = Me.Txt
  loc_10792DA:       Call 0.Method_Proc_28_52_10793A80 (CInt(0), var_A8)
  loc_1079304:       Set var_C0 = Me.Txt
  loc_107930A:       Call 0.Method_Proc_28_52_10793A80 (CInt(3))
  loc_107936C:       Me.Find CStr(CVar("SearchCode='" & var_A8.Tag & Me.LblOutlet.Tag) & Format(CVar(var_C4), "dd/mm/yyyy") & "'"), 0, 1
  loc_1079396:       Call TopCtrl1_UnknownEvent_D()
  loc_107939B:       Call Proc_28_56_1415C4C(var_154, 1)
  loc_10793A0:     End If
  loc_10793A0:   End If
  loc_10793A0: End If
  loc_10793A0: Proc_28_52_10793A8 = 1
End Sub

Public Sub Proc_28_53_E3EB8C
  'Data Table: 4DD3B4
  loc_E3EB68: Set var_88 = Me.TopCtrl1
  loc_E3EB6E: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E3EB87: If (CStr() = "Browse") Then
  loc_E3EB8A:   Exit Sub
  loc_E3EB8B: End If
  loc_E3EB8B: Exit Sub
End Sub

Public Sub Proc_28_54_136BBFC(arg_C) '136BBFC
  'Data Table: 4DD3B4
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
  Dim var_124 As Variant
  Dim var_158 As Variant
  Dim var_17C As Variant
  Dim var_B0 As String
  Dim var_198 As Double
  Dim var_148 As Variant
  Dim var_138 As MSHFlexGrid
  Dim var_244 As Double
  loc_136B3BF: var_A0 = CLng(Me.FGrid.Col)
  loc_136B3CF: If (var_A0 = CLng(2)) Then
  loc_136B420:   Set var_8C = Me.TxtGrid
  loc_136B426:   Call 0.Method_Proc_28_54_136BBFC0 (arg_C, var_AC, var_B0)
  loc_136B42E:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_136B446:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_136B45C:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136B464:     var_E0 = CVar(CLng(2)) 'Long
  loc_136B469:     var_100 = vbNullString
  loc_136B473:     Set var_AC = Me.FGrid
  loc_136B479:     LateIdCallSt
  loc_136B49E:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136B4A6:     var_E0 = CVar(CLng(1)) 'Long
  loc_136B4AB:     var_100 = vbNullString
  loc_136B4B5:     Set var_AC = Me.FGrid
  loc_136B4BB:     LateIdCallSt
  loc_136B4E0:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136B4E8:     var_E0 = CVar(CLng(5)) 'Long
  loc_136B4ED:     var_100 = vbNullString
  loc_136B4F7:     Set var_AC = Me.FGrid
  loc_136B4FD:     LateIdCallSt
  loc_136B512:   Else
  loc_136B525:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136B52D:     var_F0 = CVar(CLng(2)) 'Long
  loc_136B560:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_136B568:     Set var_138 = Me.FGrid
  loc_136B56E:     LateIdCallSt
  loc_136B59D:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136B5A5:     var_F0 = CVar(CLng(1)) 'Long
  loc_136B5D8:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_136B5E6:     LateIdCallSt
  loc_136B60C:     var_124 = Me.FGrid.Row
  loc_136B61D:     var_F0 = CVar(CLng(4)) 'Long
  loc_136B64D:     var_134 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")), var_F0, CVar(CLng(var_124)), Me.FGrid, var_134, var_F0, CVar(CLng(var_124)))) 'String
  loc_136B65B:     LateIdCallSt
  loc_136B6BE:     Proc_6_39_E7C810(var_124, CVar(Me.Fields.Item("LPurRate")), CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134)
  loc_136B6E0:     var_138 = Me.Fields.Item("ConvRatio")
  loc_136B6EF:     Proc_6_39_E7C810(var_148, CVar(var_138), var_124, var_138, CVar(var_138))
  loc_136B6FC:     var_17C = CVar(CStr((var_F0 / var_148))) 'String
  loc_136B704:     Set var_190 = Me.FGrid
  loc_136B70A:     LateIdCallSt
  loc_136B72C:   End If
  loc_136B745:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_136B74A:   var_E0 = 1
  loc_136B768:   var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_136B781:   If (var_B0 <> vbNullString) Then
  loc_136B799:     var_124 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_136B7A1:     Set var_AC = Me.FGrid
  loc_136B7BD:   End If
  loc_136B7C0: Else
  loc_136B7C7:   If (var_A0 = CLng(3)) Then
  loc_136B7D6:     Set var_8C = Me.TxtGrid
  loc_136B7DC:     Call 0.Method_Proc_28_54_136BBFC0 (0, var_AC, var_B0, FGrid.DispID_10000, var_124, var_E0)
  loc_136B7E4:     var_C0 = var_AC.Text
  loc_136B807:     var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136B80F:     var_100 = CVar(CLng(3)) 'Long
  loc_136B83C:     var_158 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00000"))) 'String
  loc_136B844:     Set var_138 = Me.FGrid
  loc_136B84A:     LateIdCallSt
  loc_136B880:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136B888:     var_E0 = CVar(CLng(3)) 'Long
  loc_136B891:     Set var_AC = Me.FGrid
  loc_136B8A2:     var_B0 = CStr(var_AC.TextMatrix))
  loc_136B8AA:     var_198 = Val(var_B0)
  loc_136B8C0:     var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136B8EA:     var_244 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_136B947:     LateIdCallSt
  loc_136B97A:     Call Proc_28_60_F0A278(Me.FGrid, CVar(CStr(Format(CVar((var_198 * var_244)), "0.0000"))), 1, 1, CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), var_244, CVar(CLng(5)))
  loc_136B982:   Else
  loc_136B989:     If (var_A0 = CLng(5)) Then
  loc_136B998:       Set var_8C = Me.TxtGrid
  loc_136B99E:       Call 0.Method_Proc_28_54_136BBFC0 (0, var_AC, var_B0, var_100, var_198)
  loc_136B9A6:       var_E0 = var_AC.Text
  loc_136B9C9:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136B9D1:       var_100 = CVar(CLng(5)) 'Long
  loc_136B9FE:       var_158 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00000"))) 'String
  loc_136BA06:       Set var_138 = Me.FGrid
  loc_136BA0C:       LateIdCallSt
  loc_136BA42:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136BA4A:       var_E0 = CVar(CLng(3)) 'Long
  loc_136BA53:       Set var_AC = Me.FGrid
  loc_136BA64:       var_B0 = CStr(var_AC.TextMatrix))
  loc_136BA6C:       var_198 = Val(var_B0)
  loc_136BA82:       var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136BAAC:       var_244 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_136BB09:       LateIdCallSt
  loc_136BB3C:       Call Proc_28_60_F0A278(Me.FGrid, CVar(CStr(Format(CVar((var_198 * var_244)), "0.0000"))), 1, 1, CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), var_244, CVar(CLng(5)))
  loc_136BB44:     Else
  loc_136BB4B:       If (var_A0 = CLng(7)) Then
  loc_136BB5A:         Set var_8C = Me.TxtGrid
  loc_136BB60:         Call 0.Method_Proc_28_54_136BBFC0 (0, var_AC, var_B0, var_100, var_198)
  loc_136BB68:         var_E0 = var_AC.Text
  loc_136BB8B:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_136BB93:         var_100 = CVar(CLng(7)) 'Long
  loc_136BBC0:         var_158 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_136BBC8:         Set var_138 = Me.FGrid
  loc_136BBCE:         LateIdCallSt
  loc_136BBF1:       End If
  loc_136BBF1:     End If
  loc_136BBF1:   End If
  loc_136BBF1: End If
  loc_136BBF6: Proc_28_54_136BBFC = &HFF
End Sub

Public Sub Proc_28_55_F319D0
  'Data Table: 4DD3B4
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F318BE: global_84 = vbNullString
  loc_F318D0: Set var_8C = Me.Txt
  loc_F318D6: Call 0.Method_Proc_28_55_F319D0C (var_8E, var_86)
  loc_F318E6: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F318FC:   Set var_8C = Me.Txt
  loc_F31902:   Call 0.Method_Proc_28_55_F319D00 (CInt(var_86), var_98)
  loc_F3190A:   var_98.Text = vbNullString
  loc_F31926:   Set var_8C = Me.Txt
  loc_F3192C:   Call 0.Method_Proc_28_55_F319D00 (CInt(var_86), var_98)
  loc_F31934:   var_98.Tag = vbNullString
  loc_F31943: Next var_92 'Byte
  loc_F31956: Me.lbltotal.Caption = vbNullString
  loc_F31971: Me.FGrid.Rows = 1
  loc_F3198E: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F31996: Set var_98 = Me.FGrid
  loc_F319C5: Me.FGrid.FixedRows = 1
  loc_F319CD: Exit Sub
  loc_F319CE: If FGrid.DispID_10000 Then Exit Sub
  loc_F319CE: End If
End Sub

Public Sub Proc_28_56_1415C4C
  'Data Table: 4DD3B4
  Dim var_C0 As Variant
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  Dim unk_4DD3C9 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Variant
  Dim var_130 As Variant
  Dim var_104 As Variant
  Dim var_11C As TextBox
  Dim var_1DC As Recordset15
  Dim var_1E0 As Integer
  Dim var_114 As Variant
  Dim var_140 As Variant
  loc_1415200: On Error Goto loc_1415C43
  loc_1415210: var_C0 = "Select U_Name,U_AE,U_EntDt From Bom where FinItem+RestCode+Convert(Varchar(11),AppDate,103)='"
  loc_1415259: unk_4DD3C9.Execute CStr(var_C0 & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_1415264: Set var_88 = var_118
  loc_14152B8: var_118 = var_88.Fields
  loc_1415321: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1415366: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_14153E0: var_11C = var_88.Fields.Item("U_AE")
  loc_14153F9: var_114 = "entdt : "
  loc_1415441: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), "Last Update : ", var_114))
  loc_1415486: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_14154D5: If (Me.RecordCount > 0) Then
  loc_14154D8:   Call Proc_28_55_F319D0()
  loc_1415519:   Set var_118 = Me.Txt
  loc_141551F:   Call 0.Method_Proc_28_56_1415C4C0 (CInt(0), var_11C)
  loc_1415527:   var_11C.Tag = CStr(Me.Fields.Item("FinItem").Value)
  loc_1415576:   Set var_118 = Me.Txt
  loc_141557C:   Call 0.Method_Proc_28_56_1415C4C0 (CInt(0), var_11C)
  loc_1415584:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_14155D0:   Me.LblOutlet.Caption = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestName")))
  loc_141561A:   Me.LblOutlet.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestCode")))
  loc_1415681:   Set var_118 = Me.Txt
  loc_1415687:   Call 0.Method_Proc_28_56_1415C4C0 (CInt(1), var_11C, CStr(Format(CVar(Me.Fields.Item("FinQty")), "0.0000")))
  loc_141568F:   var_11C.Text = 1
  loc_14156E2:   Set var_118 = Me.Txt
  loc_14156E8:   Call 0.Method_Proc_28_56_1415C4C0 (CInt(2), var_11C)
  loc_14156F0:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")))
  loc_1415743:   Call 0.Method_Proc_28_56_1415C4C0 (CInt(3), var_11C)
  loc_141574B:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("AppDate")))
  loc_141576C:   var_C0 = "Select BOM.*,ItemMast.Name as Name,ItemMast.Unit,ItemMast.LPurRate,ItemMast.IssueUnit From BOM Left Join ItemMast on ItemMast.Code=BOM.RawItem And (ItemMast.ItemType='Store' Or GravyItem='Yes') where BOM.FinItem+BOM.RestCode+Convert(Varchar(11),BOM.AppDate,103)='"
  loc_14157B5:   unk_4DD3C9.Execute CStr("0.0000" & Me.Fields.Item("SearchCode").Value & "' Order By BOM.RawSno"), var_114, -1
  loc_14157C0:   Set var_1DC = Me.Txt
  loc_14157EE:   If (var_1DC.RecordCount > 0) Then
  loc_14157F3:     var_1E0 = 1
  loc_1415809:     Me.FGrid.Rows = 1
  loc_1415811:     ' Referenced from: 1415B9A
  loc_1415820:     If Not(var_1DC.EOF) Then
  loc_1415823:       var_9C = vbNullString
  loc_141582D:       Set var_8C = Me.FGrid
  loc_1415842:       Set var_1F8 = Me.FGrid
  loc_1415849:       var_C0 = CVar(CLng(var_1E0)) 'Long
  loc_1415851:       var_104 = CVar(CLng(0)) 'Long
  loc_1415881:       var_D0 = CVar(CStr(var_1DC.Fields.Item("RawSno").Value)) 'String
  loc_1415888:       LateIdCallSt
  loc_14158D7:       var_D0 = CVar(Proc_6_38_E68A98(CVar(var_1DC.Fields.Item("RawItem")), CVar(CLng(1)), CVar(CLng(var_1E0)), var_1F8, var_D0, CVar(CLng(1)))) 'String
  loc_14158DE:       LateIdCallSt
  loc_1415929:       var_D0 = CVar(Proc_6_38_E68A98(CVar(var_1DC.Fields.Item("Name")), CVar(CLng(2)), CVar(CLng(var_1E0)), var_1F8, var_D0, CVar(CLng(var_1E0)))) 'String
  loc_1415930:       LateIdCallSt
  loc_141597B:       var_D0 = CVar(Proc_6_38_E68A98(CVar(var_1DC.Fields.Item("IssueUnit")), CVar(CLng(4)), CVar(CLng(var_1E0)), var_1F8, var_D0)) 'String
  loc_1415982:       LateIdCallSt
  loc_14159B4:       var_E0 = CVar(CLng(var_1E0)) 'Long
  loc_14159D0:       var_D0 = "0.00000"
  loc_14159F0:       LateIdCallSt
  loc_1415A2C:       Proc_6_39_E7C810(var_D0, CVar(var_1DC.Fields.Item("Waste")), var_1F8, CVar(CStr(Format(CVar(var_1DC.Fields.Item("RawQty")), var_D0))), 1, 1, CVar(CLng(3)))
  loc_1415A35:       var_E0 = CVar(CLng(var_1E0)) 'Long
  loc_1415A6D:       LateIdCallSt
  loc_1415AAB:       Proc_6_39_E7C810(var_D0, CVar(var_1DC.Fields.Item("Cost")), var_1F8, CVar(CStr(Format(var_D0, "0.00"))), 1, 1, CVar(CLng(7)))
  loc_1415AB4:       var_E0 = CVar(CLng(var_1E0)) 'Long
  loc_1415AEC:       LateIdCallSt
  loc_1415B2A:       Proc_6_39_E7C810(var_D0, CVar(var_1DC.Fields.Item("Total")), var_1F8, CVar(CStr(Format(var_D0, "0.00000"))), 1, 1, CVar(CLng(5)))
  loc_1415B33:       var_E0 = CVar(CLng(var_1E0)) 'Long
  loc_1415B3B:       var_130 = CVar(CLng(6)) 'Long
  loc_1415B64:       var_140 = CVar(CStr(Format(var_D0, "0.0000"))) 'String
  loc_1415B6B:       LateIdCallSt
  loc_1415B85:       Set var_1F8 = Nothing 
  loc_1415B8F:       var_1E0 = (var_1E0 + 1)
  loc_1415B95:       var_1DC.MoveNext
  loc_1415B9A:       GoTo loc_1415811
  loc_1415B9D:     End If
  loc_1415B9D:   End If
  loc_1415B9D:   var_9C = 0
  loc_1415BA7:   Set var_8C = Me.FGrid
  loc_1415BD4:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_1415BD7:     var_9C = "1"
  loc_1415BE1:     Set var_8C = Me.FGrid
  loc_1415BF2:   End If
  loc_1415BF2:   var_9C = 1
  loc_1415C05:   Me.FGrid.FixedRows = var_9C
  loc_1415C0D:   Call Proc_28_60_F0A278(FGrid.DispID_10000, var_9C, FGrid.DispID_2E, var_9C, var_1E0, var_1F8, var_140)
  loc_1415C15: Else
  loc_1415C15:   Call Proc_28_55_F319D0(1, 1, var_130)
  loc_1415C1A: End If
  loc_1415C2D: Me.FGrid.Col = 1
  loc_1415C35: Call Proc_28_58_EF8940(var_E0, var_E0)
  loc_1415C3F: Set var_1DC = Nothing
  loc_1415C42: Exit Sub
  loc_1415C43: ' Referenced from: 1415200
  loc_1415C43: Proc_6_60_E62BC4(var_E0)
  loc_1415C48: Exit Sub
End Sub

Public Sub Proc_28_57_EAD2A4(arg_C) 'EAD2A4
  'Data Table: 4DD3B4
  Dim var_98 As TextBox
  loc_EAD21E: Set var_8C = Me.Txt
  loc_EAD224: Call 0.Method_Proc_28_57_EAD2A4C (var_8E, var_86)
  loc_EAD234: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAD241:   If (var_86 <> 2) Then
  loc_EAD254:     Set var_8C = Me.Txt
  loc_EAD25A:     Call 0.Method_Proc_28_57_EAD2A40 (CInt(var_86), var_98)
  loc_EAD262:     var_98.Enabled = arg_C
  loc_EAD26E:   End If
  loc_EAD271: Next var_92 'Byte
  loc_EAD286: Set var_8C = Me.Txt
  loc_EAD28C: Call 0.Method_Proc_28_57_EAD2A40 (CInt(4), var_98)
  loc_EAD294: var_98.Enabled = Not(arg_C)
  loc_EAD2A0: Exit Sub
End Sub

Public Sub Proc_28_58_EF8940
  'Data Table: 4DD3B4
  loc_EF8880: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF8892:   Me.DGItem.Visible = False
  loc_EF889A: End If
  loc_EF88B6: If (CBool(Me.DGFinish.Visible) = &HFF) Then
  loc_EF88C8:   Me.DGFinish.Visible = False
  loc_EF88D0: End If
  loc_EF88EC: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF88FE:   Me.DGRest.Visible = False
  loc_EF8906: End If
  loc_EF8922: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF8934:   Me.FGPoint.Visible = False
  loc_EF893C: End If
  loc_EF893C: Exit Sub
  loc_EF893D: var_114 = 
End Sub

Public Sub Proc_28_59_E92F0C(arg_C) 'E92F0C
  'Data Table: 4DD3B4
  Dim var_10C As TextBox
  loc_E92EA0: Call Proc_28_58_EF8940()
  loc_E92EDC: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E92EDF:   Call TopCtrl1_UnknownEvent_16()
  loc_E92EE7: Else
  loc_E92EF1:   Set var_108 = Me.Txt
  loc_E92EF7:   Call 0.Method_Proc_28_59_E92F0C0 (arg_C)
  loc_E92EFF:   var_10C.SetFocus
  loc_E92F0B: End If
  loc_E92F0B: Exit Sub
End Sub

Public Sub Proc_28_60_F0A278
  'Data Table: 4DD3B4
  Dim var_90 As Double
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  loc_F0A19D: Me.lbltotal.Caption = vbNullString
  loc_F0A1A8: var_90 = CDbl(0)
  loc_F0A1D0: For var_A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A8 'Integer
  loc_F0A1DA:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_F0A1E2:   var_D8 = CVar(CLng(6)) 'Long
  loc_F0A20E:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F0A21D: Next var_A8 'Integer
  loc_F0A222: var_D8 = "Total->"
  loc_F0A261: Me.lbltotal.Caption = CStr(1 & Format(var_90, "0.00"))
  loc_F0A275: Exit Sub
  loc_F0A276: ArrayRebase1Var
End Sub
