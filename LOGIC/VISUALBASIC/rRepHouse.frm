VERSION 5.00
Begin VB.Form rRepHouse
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
  ClientWidth = 11895
  ClientHeight = 7560
  Begin CommandButton BtnParam
    Caption = "&For Site"
    BackColor = &HC0C0C0&
    Left = 10605
    Top = 0
    Width = 1305
    Height = 375
    Visible = 0   'False
    TabIndex = 5
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DownPicture = "rRepHouse.frx":0
    ToolTipText = "Works Only at Head Office"
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
    TabIndex = 18
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
    TabIndex = 17
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
    TabIndex = 16
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
    TabIndex = 15
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
    TabIndex = 14
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
    TabIndex = 13
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
    Width = 2520
    Height = 1875
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 2325
      Height = 1830
      TabStop = 0   'False
      TabIndex = 12
    End
  End
  Begin Frame Frame1
    Caption = "Site Selection"
    Left = 7860
    Top = 240
    Width = 4065
    Height = 3540
    Visible = 0   'False
    TabIndex = 6
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
      Top = 300
      Width = 2820
      Height = 360
      TabIndex = 8
    End
    Begin CommandButton Command1
      Caption = "&OK"
      Left = 1485
      Top = 3060
      Width = 1485
      Height = 390
      TabIndex = 7
    End
    Begin DataGrid DGSite
      Left = 1095
      Top = 660
      Width = 2835
      Height = 2355
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 9
    End
    Begin Label Label1
      Caption = "Site Name"
      Left = 120
      Top = 315
      Width = 900
      Height = 270
      TabIndex = 10
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
    Width = 11895
    Height = 435
    Enabled = 0   'False
    TabIndex = 3
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 2 'Align Bottom
    Begin Label LblProcess
      ForeColor = &HC0&
      Left = 0
      Top = 0
      Width = 3375
      Height = 360
      TabIndex = 24
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
    End
    Begin Label LblTitle
      Caption = "LblTitle"
      BackColor = &H0&
      ForeColor = &HFFFFFF&
      Left = 7230
      Top = 15
      Width = 4470
      Height = 315
      TabIndex = 2
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
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
    TabIndex = 19
  End
  Begin MSHFlexGrid GridSel
    Index = 2
    Left = 5085
    Top = 1785
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 20
  End
  Begin MSHFlexGrid GridSel
    Index = 4
    Left = 5100
    Top = 3810
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 21
  End
  Begin MSHFlexGrid GridSel
    Index = 3
    Left = 300
    Top = 3825
    Width = 4710
    Height = 1650
    Visible = 0   'False
    TabIndex = 22
  End
  Begin MSHFlexGrid FGrid
    Left = 1725
    Top = 75
    Width = 4455
    Height = 1560
    TabIndex = 23
  End
End

Attribute VB_Name = "rRepHouse"

Private global_184 As Integer
Private global_186 As Integer
Private global_144 As Integer
Private global_146 As Integer
Private global_152 As Variant
Private global_148 As Integer
Private global_124 As Integer
Private global_128 As Variant

Private Sub Check1_Click(Index As Integer) 'FFB458
  'Data Table: 4E1708
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_C8 As MSHFlexGrid
  loc_FFB269: Set var_88 = Me.Check1
  loc_FFB26F: Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFB28D: If (CLng(var_8C.Value) = 0) Then
  loc_FFB29E:   Set var_88 = Me.GridSel
  loc_FFB2A4:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFB2AC:   var_8C.Enabled = True
  loc_FFB2C2:   Set var_88 = Me.GridSel
  loc_FFB2C8:   Call 0.Method_Check1_Click0 (Index)
  loc_FFB2E9:   If (CLng(var_8C.Rows) > 1) Then
  loc_FFB2FF:     Set var_88 = Me.GridSel
  loc_FFB305:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFB30D:     var_8C.Row = 1
  loc_FFB32C:     Set var_88 = Me.GridSel
  loc_FFB332:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFB33A:     var_8C.Col = 0
  loc_FFB346:   End If
  loc_FFB349: Else
  loc_FFB358:   Set var_88 = Me.GridSel
  loc_FFB35E:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFB366:   var_8C.Enabled = False
  loc_FFB37C:   Set var_88 = Me.GridSel
  loc_FFB382:   Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFB3A3:   If (CLng(var_8C.Rows) > 1) Then
  loc_FFB3B9:     Set var_88 = Me.GridSel
  loc_FFB3BF:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFB3E6:     Set var_88 = Me.GridSel
  loc_FFB3EC:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFB3F4:     var_8C.Col = 0
  loc_FFB40A:     Set var_88 = Me.GridSel
  loc_FFB410:     Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_FFB427:     var_A0 = CVar((CLng(var_8C.Rows) - 1)) 'Long
  loc_FFB436:     Set var_C4 = Me.GridSel
  loc_FFB43C:     Call 0.Method_Check1_Click0 (Index, var_C8)
  loc_FFB444:     var_C8.RowSel = 0
  loc_FFB457:   End If
  loc_FFB457: End If
  loc_FFB457: Exit Sub
End Sub

Private Sub Check1_GotFocus(Index As Integer) 'E413CC
  'Data Table: 4E1708
  Dim var_8C As CheckBox
  loc_E413AF: Set var_88 = Me.Check1
  loc_E413B5: Call 0.Method_Check1_GotFocus0 (Index, var_8C)
  loc_E413BD: var_8C.BackColor = &HFF
  loc_E413C9: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E2048C
  'Data Table: 4E1708
  loc_E20472: If (Shift = &HD) Then
  loc_E20483:   Proc_303_0_FB9B68("	")
  loc_E2048B: End If
  loc_E2048B: Exit Sub
End Sub

Private Sub Check1_Validate(Cancel As Boolean) 'E41494
  'Data Table: 4E1708
  Dim var_8C As CheckBox
  loc_E41477: Set var_88 = Me.Check1
  loc_E4147D: Call 0.Method_Check1_Validate0 (Cancel, var_8C)
  loc_E41485: var_8C.BackColor = &H800000
  loc_E41491: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'F250C8
  'Data Table: 4E1708
  loc_F24FCB: If (Proc_6_113_E6CF7C(KeyCode) = &HFF) Then
  loc_F24FF6:   Set var_90 = Me.GridSel
  loc_F24FFC:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_F25024:   Me.TxtSearch.Visible = False
  loc_F2502C: End If
  loc_F25036: If (CLng(KeyCode) = &H2E) Then
  loc_F25046:   Me.TxtSearch.Text = vbNullString
  loc_F2504E: End If
  loc_F25063: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_F2508E:   Set var_90 = Me.GridSel
  loc_F25094:   Call 0.Method_TxtSearch_KeyDown0 (CInt(Val(Me.TxtSearch.Tag)), var_94, Val(Me.TxtSearch.Tag))
  loc_F250BC:   Me.TxtSearch.Visible = False
  loc_F250C4: End If
  loc_F250C4: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) '11CC4DC
  'Data Table: 4E1708
  Dim var_F4 As Double
  Dim var_A4 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim Me As Recordset15
  loc_11CC0A5: var_90 = Me.TxtSearch.Tag
  loc_11CC0BA: If (var_90 = CStr(1)) Then
  loc_11CC110:   Set var_A0 = Me.GridSel
  loc_11CC116:   Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4)
  loc_11CC18C:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(Val(Me.TxtSearch.Tag)), global_96, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CC1B7: Else
  loc_11CC1C6:   If (var_90 = CStr(2)) Then
  loc_11CC1F1:     var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CC21C:     Set var_A0 = Me.GridSel
  loc_11CC222:     Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CC298:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_100, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CC2C3:   Else
  loc_11CC2D2:     If (var_90 = CStr(3)) Then
  loc_11CC2FD:       var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CC328:       Set var_A0 = Me.GridSel
  loc_11CC32E:       Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4)
  loc_11CC336:       var_B4 = var_A4.Col
  loc_11CC3A4:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_104, KeyAscii, Me.Fields.Item(CVar(CLng(var_B4))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CC3CF:     Else
  loc_11CC3DE:       If (var_90 = CStr(4)) Then
  loc_11CC409:         var_F4 = Val(Me.TxtSearch.Tag)
  loc_11CC434:         Set var_A0 = Me.GridSel
  loc_11CC43A:         Call 0.Method_TxtSearch_KeyPress0 (CInt(Val(Me.TxtSearch.Tag)), var_A4, Val(Me.TxtSearch.Tag), var_F4, var_B4)
  loc_11CC4B0:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, CInt(var_F4), global_108, KeyAscii, Me.Fields.Item(CVar(CLng(var_A4.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_11CC4D8:       End If
  loc_11CC4D8:     End If
  loc_11CC4D8:   End If
  loc_11CC4D8: End If
  loc_11CC4D8: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E91CCC
  'Data Table: 4E1708
  loc_E91C65: Me.TxtSearch.Text = vbNullString
  loc_E91C95: Set var_90 = Me.GridSel
  loc_E91C9B: Call 0.Method_TxtSearch_LostFocus0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E91CC3: Me.TxtSearch.Visible = False
  loc_E91CCB: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E91F9C
  'Data Table: 4E1708
  loc_E91F35: Me.TxtSearch.Text = vbNullString
  loc_E91F65: Set var_90 = Me.GridSel
  loc_E91F6B: Call 0.Method_TxtSearch_Click0 (CInt(Val(Me.TxtSearch.Tag)), var_94)
  loc_E91F93: Me.TxtSearch.Visible = False
  loc_E91F9B: Exit Sub
End Sub

Private Sub btnExit_Click() 'E1A234
  'Data Table: 4E1708
  loc_E1A229: Me.Global.Unload Me
  loc_E1A231: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_0(Index As Integer) 'E493A0
  'Data Table: 4E1708
  Dim var_8C As MSHFlexGrid
  loc_E49383: Set var_88 = Me.GridSel
  loc_E49389: Call 0.Method_GridSel_UnknownEvent_00 (Index, var_8C)
  loc_E49391: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E4939D: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_8(Index As Integer) 'E49060
  'Data Table: 4E1708
  Dim var_8C As MSHFlexGrid
  loc_E49043: Set var_88 = Me.GridSel
  loc_E49049: Call 0.Method_GridSel_UnknownEvent_80 (Index, var_8C)
  loc_E49051: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E4905D: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_A(arg_C, arg_10) '11752E8
  'Data Table: 4E1708
  Dim var_98 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_168 As MSHFlexGrid
  Dim var_190 As Variant
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  loc_1174F3E: If (arg_10 = &HD) Then
  loc_1174F4F:   Proc_303_0_FB9B68("	")
  loc_1174F57: End If
  loc_1174F61: Set var_94 = Me.GridSel
  loc_1174F67: Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_1174F88: If (CLng(var_98.Rows) < 1) Then
  loc_1174F8B:   Exit Sub
  loc_1174F8C: End If
  loc_1174FA0: Set var_94 = Me.GridSel
  loc_1174FA6: Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_1174FC8: If ((CLng(arg_10) = &H20) And (CLng(var_98.Col) = 0)) Then
  loc_1174FDB:   Set var_94 = Me.GridSel
  loc_1174FE1:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_1174FE9:   var_98.CellFontName = "WINGDINGS"
  loc_1175007:   Set var_94 = Me.GridSel
  loc_117500D:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_1175015:   var_98.CellFontSize = CVar(CDbl(&HE))
  loc_117502B:   Set var_94 = Me.GridSel
  loc_1175031:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_1175042:   var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_117505A:   Set var_CC = Me.GridSel
  loc_1175060:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_D0, 0)
  loc_1175068:   var_100 = var_D0.TextMatrix)
  loc_117507E:   Set var_164 = Me.GridSel
  loc_1175084:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_168, var_100)
  loc_1175095:   var_190 = CVar(CLng(var_168.Row)) 'Long
  loc_11750E3:   Set var_17C = Me.GridSel
  loc_11750E9:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_180, CVar(CStr(IIf((CStr(var_100) = "ü"), " ", "ü"))), 0)
  loc_11750F1:   LateIdCallSt
  loc_1175125:   var_1E2 = arg_C
  loc_117512E:   If (var_1E2 = 1) Then
  loc_1175142:     var_86 = CInt((UBound(global_168, 1) + 1))
  loc_1175154:     ReDim Preserve global_168(0 To CLng(var_86))
  loc_1175168:     Set var_94 = Me.GridSel
  loc_117516E:     Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86, var_1E2)
  loc_117518A:     global_168(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1175198:   Else
  loc_117519E:     If (var_1E2 = 2) Then
  loc_11751B2:       var_86 = CInt((UBound(global_172, 1) + 1))
  loc_11751C4:       ReDim Preserve global_172(0 To CLng(var_86))
  loc_11751D8:       Set var_94 = Me.GridSel
  loc_11751DE:       Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86, var_180)
  loc_11751FA:       global_172(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1175208:     Else
  loc_117520E:       If (var_1E2 = 3) Then
  loc_1175222:         var_86 = CInt((UBound(global_176, 1) + 1))
  loc_1175234:         ReDim Preserve global_176(0 To CLng(var_86))
  loc_1175248:         Set var_94 = Me.GridSel
  loc_117524E:         Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86)
  loc_117526A:         global_176(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_1175278:       Else
  loc_117527E:         If (var_1E2 = 4) Then
  loc_1175292:           var_86 = CInt((UBound(global_180, 1) + 1))
  loc_11752A4:           ReDim Preserve global_180(0 To CLng(var_86))
  loc_11752B8:           Set var_94 = Me.GridSel
  loc_11752BE:           Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86)
  loc_11752DA:           global_180(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_11752E5:         End If
  loc_11752E5:       End If
  loc_11752E5:     End If
  loc_11752E5:   End If
  loc_11752E5: End If
  loc_11752E5: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_C(arg_C, arg_10) '1136BB0
  'Data Table: 4E1708
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_A4 As Variant
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_88 As TextBox
  loc_113684A: Set var_88 = Me.GridSel
  loc_1136850: Call 0.Method_GridSel_UnknownEvent_C0 (arg_C)
  loc_1136871: Set var_A0 = Me.GridSel
  loc_1136877: Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_A4)
  loc_11368A1: If ((CLng(var_8C.Col) = 0) Or (CLng(var_A4.Row) = 0)) Then
  loc_11368A4:   Exit Sub
  loc_11368A5: End If
  loc_11368A8: var_B6 = arg_C
  loc_11368B1: If (var_B6 = 1) Then
  loc_11368CC:   Set var_88 = Me.GridSel
  loc_11368D2:   Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_8C)
  loc_11368DA:   var_9C = var_8C.Col
  loc_1136944:   Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, arg_C, global_96, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1136965: Else
  loc_113696B:   If (var_B6 = 2) Then
  loc_1136986:     Set var_88 = Me.GridSel
  loc_113698C:     Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_8C, var_9C)
  loc_1136994:     var_9C = var_8C.Col
  loc_11369FE:     Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, arg_C, global_100, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1136A1F:   Else
  loc_1136A25:     If (var_B6 = 3) Then
  loc_1136A40:       Set var_88 = Me.GridSel
  loc_1136A46:       Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_8C, var_9C)
  loc_1136A4E:       var_9C = var_8C.Col
  loc_1136AB8:       Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, arg_C, global_104, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name, CLng("16777152"), CLng("15595518"))
  loc_1136AD9:     Else
  loc_1136ADF:       If (var_B6 = 4) Then
  loc_1136AFA:         Set var_88 = Me.GridSel
  loc_1136B00:         Call 0.Method_GridSel_UnknownEvent_C0 (arg_C, var_8C, var_9C)
  loc_1136B72:         Call SelGridKeyPressLocal(Me.TxtSearch, Me.GridSel, arg_C, global_108, arg_10, Me.Fields.Item(CVar(CLng(var_8C.Col))).Name, CLng("16777152"), CLng("15595518"))
  loc_1136B90:       End If
  loc_1136B90:     End If
  loc_1136B90:   End If
  loc_1136B90: End If
  loc_1136BA2: Me.TxtSearch.Tag = CStr(arg_C)
  loc_1136BAD: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_E(Index As Integer) 'E8102C
  'Data Table: 4E1708
  Dim var_8C As MSHFlexGrid
  loc_E80FCE: Set var_88 = Me.GridSel
  loc_E80FD4: Call 0.Method_GridSel_UnknownEvent_E0 (Index)
  loc_E80FF5: If (CLng(var_8C.Col) <> 0) Then
  loc_E80FF8:   Exit Sub
  loc_E80FF9: End If
  loc_E81003: Set var_88 = Me.GridSel
  loc_E81009: Call 0.Method_GridSel_UnknownEvent_E0 (Index, var_8C)
  loc_E8101E: global_184 = CInt(CLng(var_8C.Row))
  loc_E8102B: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_10(Index As Integer) '1176BC0
  'Data Table: 4E1708
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_160 As Variant
  Dim var_1B2 As Integer
  Dim var_86 As Integer
  loc_1176802: Set var_8C = Me.GridSel
  loc_1176808: Call 0.Method_GridSel_UnknownEvent_100 (Index)
  loc_1176833: If ((CLng(var_90.Col) <> 0) Or (global_184 = 0)) Then
  loc_1176836:   Exit Sub
  loc_1176837: End If
  loc_1176841: Set var_8C = Me.GridSel
  loc_1176847: Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_117685C: global_186 = CInt(CLng(var_90.RowSel))
  loc_1176878: For var_A4 = global_184 To global_186: var_88 = var_A4 'Integer
  loc_1176891:   Set var_8C = Me.GridSel
  loc_1176897:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, CVar(CLng(var_88)))
  loc_117689F:   var_90.Row = global_184
  loc_11768BE:   Set var_8C = Me.GridSel
  loc_11768C4:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, 0)
  loc_11768CC:   var_90.Col = global_186
  loc_11768E8:   Set var_8C = Me.GridSel
  loc_11768EE:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_11768F6:   var_90.CellFontName = "WINGDINGS"
  loc_1176914:   Set var_8C = Me.GridSel
  loc_117691A:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_1176922:   var_90.CellFontSize = CVar(CDbl(&HE))
  loc_1176932:   var_B4 = CVar(CLng(var_88)) 'Long
  loc_117694A:   Set var_8C = Me.GridSel
  loc_1176950:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, 0)
  loc_1176968:   var_160 = CVar(CLng(var_88)) 'Long
  loc_11769B6:   Set var_14C = Me.GridSel
  loc_11769BC:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_150, CVar(CStr(IIf((CStr(var_90.TextMatrix)) = "ü"), " ", "ü"))), 0)
  loc_11769C4:   LateIdCallSt
  loc_11769EC:   var_1B2 = Index
  loc_11769F5:   If (var_1B2 = 1) Then
  loc_1176A09:     var_86 = CInt((UBound(global_168, 1) + 1))
  loc_1176A1B:     ReDim Preserve global_168(0 To CLng(var_86))
  loc_1176A2F:     Set var_8C = Me.GridSel
  loc_1176A35:     Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86, var_1B2, var_150)
  loc_1176A51:     global_168(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_1176A5F:   Else
  loc_1176A65:     If (var_1B2 = 2) Then
  loc_1176A79:       var_86 = CInt((UBound(global_172, 1) + 1))
  loc_1176A8B:       ReDim Preserve global_172(0 To CLng(var_86))
  loc_1176A9F:       Set var_8C = Me.GridSel
  loc_1176AA5:       Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86, var_160)
  loc_1176AC1:       global_172(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_1176ACF:     Else
  loc_1176AD5:       If (var_1B2 = 3) Then
  loc_1176AE9:         var_86 = CInt((UBound(global_176, 1) + 1))
  loc_1176AFB:         ReDim Preserve global_176(0 To CLng(var_86))
  loc_1176B0F:         Set var_8C = Me.GridSel
  loc_1176B15:         Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86)
  loc_1176B31:         global_176(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_1176B3F:       Else
  loc_1176B45:         If (var_1B2 = 4) Then
  loc_1176B59:           var_86 = CInt((UBound(global_180, 1) + 1))
  loc_1176B6B:           ReDim Preserve global_180(0 To CLng(var_86))
  loc_1176B7F:           Set var_8C = Me.GridSel
  loc_1176B85:           Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86)
  loc_1176BA1:           global_180(CLng(var_86)) = CInt(CLng(var_90.Row))
  loc_1176BAC:         End If
  loc_1176BAC:       End If
  loc_1176BAC:     End If
  loc_1176BAC:   End If
  loc_1176BAF: Next var_A4 'Integer
  loc_1176BB9: global_184 = 0
  loc_1176BBC: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_13(Index As Integer) 'E46B00
  'Data Table: 4E1708
  Dim var_8C As MSHFlexGrid
  loc_E46AE3: Set var_88 = Me.GridSel
  loc_E46AE9: Call 0.Method_GridSel_UnknownEvent_130 (Index, var_8C)
  loc_E46AF1: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E46AFD: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_14(Index As Integer) 'E49268
  'Data Table: 4E1708
  Dim var_8C As MSHFlexGrid
  loc_E4924B: Set var_88 = Me.GridSel
  loc_E49251: Call 0.Method_GridSel_UnknownEvent_140 (Index, var_8C)
  loc_E49259: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E49265: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E61534
  'Data Table: 4E1708
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E614FF: Me.FGrid.CellBackColor = CVar(CLng("16777152"))
  loc_E61507: Call Proc_47_71_E48F2C()
  loc_E61517: Set var_A8 = Me.TxtGrid
  loc_E6151D: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E61525: var_AC.Visible = False
  loc_E61531: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1CED0
  'Data Table: 4E1708
  loc_E1CEC7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1CECF: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '10A4408
  'Data Table: 4E1708
  Dim var_9C As String
  Dim var_AC As Variant
  Dim arg_C As Integer
  Dim var_D4 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_11C As Long
  Dim var_6F01 As Integer
  loc_10A417B: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_126))) Then
  loc_10A4191:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10A41A1:   var_9C = "+{Tab}"
  loc_10A41A7:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag))
  loc_10A41B1:   arg_C = 0
  loc_10A41B7: Else
  loc_10A41EE:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl(global_124))) Then
  loc_10A4204:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10A421A:     Proc_303_0_FB9B68("	", 0)
  loc_10A4224:     arg_C = 0
  loc_10A4227:   End If
  loc_10A4227: End If
  loc_10A422D: global_144 = arg_C
  loc_10A4253: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10A4277: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_10A428D:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A42A5:   var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10A42AA:   var_104 = vbNullString
  loc_10A42B4:   Set var_118 = Me.FGrid
  loc_10A42BA:   LateIdCallSt
  loc_10A42E5:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A42EA:   var_E4 = 2
  loc_10A42F3:   var_104 = vbNullString
  loc_10A42FD:   Set var_D4 = Me.FGrid
  loc_10A4303:   LateIdCallSt
  loc_10A4315: End If
  loc_10A431F: If (CLng(arg_C) = &HD) Then
  loc_10A4335:   var_11C = CLng(Me.FGrid.Row)
  loc_10A4345:   If Not (var_11C = CLng(0)) Then
  loc_10A434F:     If Not (var_11C = CLng(1)) Then
  loc_10A4359:       If Not (var_11C = CLng(2)) Then
  loc_10A4363:         If Not (var_11C = CLng(3)) Then
  loc_10A436D:           If Not (var_11C = CLng(4)) Then
  loc_10A4377:             If Not (var_11C = CLng(5)) Then
  loc_10A4381:               If Not (var_11C = CLng(6)) Then
  loc_10A438B:                 If Not (var_11C = CLng(7)) Then
  loc_10A4395:                   If Not (var_11C = CLng(8)) Then
  loc_10A439F:                     If (var_11C = CLng(9)) Then
  loc_10A43A2:                     End If
  loc_10A43A2:                   End If
  loc_10A43A2:                 End If
  loc_10A43A2:               End If
  loc_10A43A2:             End If
  loc_10A43A2:           End If
  loc_10A43A2:         End If
  loc_10A43A2:       End If
  loc_10A43A2:     End If
  loc_10A43E3:     Proc_6_61_1077428(Me, Me.FGrid, Me.TxtGrid, 0, 0, 0, var_11C, Me.FGrid)
  loc_10A43FD:     global_146 = 0
  loc_10A4400:   End If
  loc_10A4400: End If
  loc_10A4405: Exit Sub
  loc_10A4406: var_6F01 = 0
End Sub

Private Sub FGrid_UnknownEvent_B 'F0B404
  'Data Table: 4E1708
  Dim var_9C As Long
  loc_F0B337: var_9C = CLng(Me.FGrid.Row)
  loc_F0B347: If Not (var_9C = CLng(0)) Then
  loc_F0B351:   If Not (var_9C = CLng(1)) Then
  loc_F0B35B:     If Not (var_9C = CLng(2)) Then
  loc_F0B365:       If Not (var_9C = CLng(3)) Then
  loc_F0B36F:         If Not (var_9C = CLng(4)) Then
  loc_F0B379:           If Not (var_9C = CLng(5)) Then
  loc_F0B383:             If Not (var_9C = CLng(6)) Then
  loc_F0B38D:               If Not (var_9C = CLng(7)) Then
  loc_F0B397:                 If Not (var_9C = CLng(8)) Then
  loc_F0B3A1:                   If (var_9C = CLng(9)) Then
  loc_F0B3A4:                   End If
  loc_F0B3A4:                 End If
  loc_F0B3A4:               End If
  loc_F0B3A4:             End If
  loc_F0B3A4:           End If
  loc_F0B3A4:         End If
  loc_F0B3A4:       End If
  loc_F0B3A4:     End If
  loc_F0B3A4:   End If
  loc_F0B3BC:   var_AC = 0
  loc_F0B3E5:   Proc_6_61_1077428(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F0B3FA: End If
  loc_F0B3FF: global_146 = 0
  loc_F0B402: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'F71CD8
  'Data Table: 4E1708
  Dim var_9C As Long
  loc_F71BAF: var_9C = CLng(Me.FGrid.Row)
  loc_F71BBF: If Not (var_9C = CLng(5)) Then
  loc_F71BC9:   If Not (var_9C = CLng(6)) Then
  loc_F71BD3:     If Not (var_9C = CLng(7)) Then
  loc_F71BDD:       If Not (var_9C = CLng(8)) Then
  loc_F71BE7:         If (var_9C = CLng(9)) Then
  loc_F71BEA:         End If
  loc_F71BEA:       End If
  loc_F71BEA:     End If
  loc_F71BEA:   End If
  loc_F71C28:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F71C3D: Else
  loc_F71C44:   If Not (var_9C = CLng(0)) Then
  loc_F71C4E:     If Not (var_9C = CLng(1)) Then
  loc_F71C58:       If Not (var_9C = CLng(2)) Then
  loc_F71C62:         If Not (var_9C = CLng(3)) Then
  loc_F71C6C:           If (var_9C = CLng(4)) Then
  loc_F71C6F:           End If
  loc_F71C6F:         End If
  loc_F71C6F:       End If
  loc_F71C6F:     End If
  loc_F71CAD:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index)
  loc_F71CBF:   End If
  loc_F71CBF: End If
  loc_F71CC9: If (CLng(Index) <> &HD) Then
  loc_F71CD1:   global_146 = &HFF
  loc_F71CD4: End If
  loc_F71CD4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1CE80
  'Data Table: 4E1708
  loc_E1CE77: Me.FGrid.CellBackColor = CVar(CLng("16777152"))
  loc_E1CE7F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1CCF0
  'Data Table: 4E1708
  loc_E1CCE7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1CCEF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E41D90
  'Data Table: 4E1708
  Dim var_8C As TextBox
  loc_E41D6F: Set var_88 = Me.TxtGrid
  loc_E41D75: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E41D7D: var_8C.Visible = False
  loc_E41D89: Call Proc_47_71_E48F2C()
  loc_E41D8E: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '117E3C4
  'Data Table: 4E1708
  Dim var_98 As Variant
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim var_7000 As Double
  loc_117E01B: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_117E036: var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_117E074: Set var_108 = Me.TxtGrid
  loc_117E07A: Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_117E082: var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_117E0B3: var_114 = CLng(Me.FGrid.Row)
  loc_117E0C3: If (var_114 = CLng(2)) Then
  loc_117E0CC:   var_118 = global_52
  loc_117E0D7:   If (var_118 = "ComplaintList") Then
  loc_117E0E7:     ReDim var_11C(0 To 2)
  loc_117E0FE:     var_11C(0) = "UnSolved"
  loc_117E10D:     var_11C(1) = "Solved"
  loc_117E11C:     var_11C(2) = "ALL"
  loc_117E173:     Set global_188 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_11C))
  loc_117E187:   Else
  loc_117E18F:     If (var_118 = "IssueRegister") Then
  loc_117E19F:       ReDim var_11C(0 To 1)
  loc_117E1B6:       var_11C(0) = "Issue"
  loc_117E1C5:       var_11C(1) = "Receive"
  loc_117E21C:       Set global_188 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 2)
  loc_117E230:     Else
  loc_117E238:       If Not (var_118 = "StockRegister") Then
  loc_117E243:         If (var_118 = "StockSumm") Then
  loc_117E246:         End If
  loc_117E253:         ReDim var_11C(0 To 1)
  loc_117E26A:         var_11C(0) = "Room"
  loc_117E279:         var_11C(1) = "Department"
  loc_117E2D0:         Set global_188 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, Array(var_11C), 2, Array(var_11C))
  loc_117E2E1:       End If
  loc_117E2E1:     End If
  loc_117E2E1:   End If
  loc_117E2E4: Else
  loc_117E2EB:   If (var_114 = CLng(3)) Then
  loc_117E2FF:     If (global_52 = "RoomStatus") Then
  loc_117E30F:       ReDim var_11C(0 To 2)
  loc_117E326:       var_11C(0) = "Vacant"
  loc_117E335:       var_11C(1) = "Occupied"
  loc_117E344:       var_11C(2) = "ALL"
  loc_117E35B:       global_152 = Array(var_11C)
  loc_117E39B:       Set global_188 = Proc_6_66_EFF8FC(Me.ListView, Me.TxtGrid, Index, global_152, 3, global_152)
  loc_117E3AC:     End If
  loc_117E3AF:   Else
  loc_117E3B6:     If (var_114 = CLng(4)) Then
  loc_117E3B9:     End If
  loc_117E3B9:   End If
  loc_117E3B9: End If
  loc_117E3BE: Set var_88 = Nothing
  loc_117E3C1: Exit Sub
  loc_117E3C2: var_7000 = global_152
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12B65A8
  'Data Table: 4E1708
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C4 As TextBox
  Dim var_D0 As TextBox
  loc_12B5F9E: If (CLng(Shift) = &H1B) Then
  loc_12B5FAD:   Set var_8C = Me.TxtGrid
  loc_12B5FB3:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12B5FCC:   Set var_98 = Me.TxtGrid
  loc_12B5FD2:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12B5FDA:   var_9C.Text = var_90.Tag
  loc_12B5FF6:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12B5FFF:   Set var_8C = Me.FGrid
  loc_12B601B:   Set var_8C = Me.TxtGrid
  loc_12B6021:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_12B6029:   var_90.Visible = FGrid.DispID_8001
  loc_12B6035:   Call Proc_47_71_E48F2C(arg_14)
  loc_12B603A:   Exit Sub
  loc_12B603B: End If
  loc_12B604E: var_B0 = CLng(Me.FGrid.Row)
  loc_12B605E: If (var_B0 = CLng(2)) Then
  loc_12B6067:   var_B4 = global_52
  loc_12B6072:   If (var_B4 = "ComplaintList") Then
  loc_12B6096:     Set var_8C = Me.TxtGrid
  loc_12B609C:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12B60A4:     var_B8 = var_90.Left
  loc_12B60B5:     Set var_98 = Me.TxtGrid
  loc_12B60BB:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12B60C3:     var_BC = var_9C.Top
  loc_12B60D4:     Set var_C0 = Me.TxtGrid
  loc_12B60DA:     Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_12B60E2:     var_C8 = var_C4.Height
  loc_12B60F3:     Set var_CC = Me.TxtGrid
  loc_12B60F9:     Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12B6101:     var_D4 = var_D0.Width
  loc_12B614E:     Proc_6_114_11A290C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12B6175:   Else
  loc_12B617D:     If (var_B4 = "IssueRegister") Then
  loc_12B61A1:       Set var_8C = Me.TxtGrid
  loc_12B61A7:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8, CInt(var_B8))
  loc_12B61AF:       CInt(((var_BC + var_C8) + CDbl(&H19))) = var_90.Left
  loc_12B61C0:       Set var_98 = Me.TxtGrid
  loc_12B61C6:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C, var_BC)
  loc_12B61CE:       CInt(var_D4) = var_9C.Top
  loc_12B61DF:       Set var_C0 = Me.TxtGrid
  loc_12B61E5:       Call 0.Method_TxtGrid_KeyDown0 (0, var_C4, var_C8)
  loc_12B61ED:       0 = var_C4.Height
  loc_12B61FE:       Set var_CC = Me.TxtGrid
  loc_12B6204:       Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12B620C:       var_D4 = var_D0.Width
  loc_12B6259:       Proc_6_114_11A290C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12B6280:     Else
  loc_12B6288:       If Not (var_B4 = "StockRegister") Then
  loc_12B6293:         If (var_B4 = "StockSumm") Then
  loc_12B6296:         End If
  loc_12B62B7:         Set var_8C = Me.TxtGrid
  loc_12B62BD:         Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8, CInt(var_B8))
  loc_12B62C5:         CInt(((var_BC + var_C8) + CDbl(&H19))) = var_90.Left
  loc_12B62D6:         Set var_98 = Me.TxtGrid
  loc_12B62DC:         Call 0.Method_TxtGrid_KeyDown0 (0, var_9C, var_BC)
  loc_12B62E4:         CInt(var_D4) = var_9C.Top
  loc_12B62F5:         Set var_C0 = Me.TxtGrid
  loc_12B62FB:         Call 0.Method_TxtGrid_KeyDown0 (0, var_C4, var_C8)
  loc_12B6303:         0 = var_C4.Height
  loc_12B6314:         Set var_CC = Me.TxtGrid
  loc_12B631A:         Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12B6322:         var_D4 = var_D0.Width
  loc_12B636F:         Proc_6_114_11A290C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12B6393:       End If
  loc_12B6393:     End If
  loc_12B6393:   End If
  loc_12B639D:   If (CLng(Shift) = &HD) Then
  loc_12B63AD:     Call Proc_47_69_1126B48(0, 0, var_E6, CInt(var_B8))
  loc_12B63B8:     If (var_E6 = &HFF) Then
  loc_12B63BB:       Call Proc_47_73_F01BCC(CInt(((var_BC + var_C8) + CDbl(&H19))), CInt(var_D4))
  loc_12B63C0:     End If
  loc_12B63C0:   End If
  loc_12B63C3: Else
  loc_12B63CA:   If Not (var_B0 = CLng(3)) Then
  loc_12B63D4:     If (var_B0 = CLng(4)) Then
  loc_12B63D7:     End If
  loc_12B63E8:     If (global_52 = "RoomStatus") Then
  loc_12B640C:       Set var_8C = Me.TxtGrid
  loc_12B6412:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B8)
  loc_12B641A:       0 = var_90.Left
  loc_12B642B:       Set var_98 = Me.TxtGrid
  loc_12B6431:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12B6439:       var_BC = var_9C.Top
  loc_12B644A:       Set var_C0 = Me.TxtGrid
  loc_12B6450:       Call 0.Method_TxtGrid_KeyDown0 (0, var_C4)
  loc_12B6458:       var_C8 = var_C4.Height
  loc_12B6469:       Set var_CC = Me.TxtGrid
  loc_12B646F:       Call 0.Method_TxtGrid_KeyDown0 (0, var_D0)
  loc_12B6477:       var_D4 = var_D0.Width
  loc_12B64C4:       Proc_6_114_11A290C(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_12B64E8:     End If
  loc_12B64F2:     If (CLng(Shift) = &HD) Then
  loc_12B6502:       Call Proc_47_69_1126B48(0, 0, var_E6, CInt(var_B8))
  loc_12B650D:       If (var_E6 = &HFF) Then
  loc_12B6510:         Call Proc_47_73_F01BCC(CInt(((var_BC + var_C8) + CDbl(&H19))), CInt(var_D4))
  loc_12B6515:       End If
  loc_12B6515:     End If
  loc_12B6518:   Else
  loc_12B651F:     If Not (var_B0 = CLng(0)) Then
  loc_12B6529:       If (var_B0 = CLng(1)) Then
  loc_12B652C:       End If
  loc_12B656C:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_146 = &HFF))) Then
  loc_12B657C:         Call Proc_47_69_1126B48(0, 0, var_E6)
  loc_12B6587:         If (var_E6 = &HFF) Then
  loc_12B658A:           Call Proc_47_73_F01BCC(0)
  loc_12B658F:         End If
  loc_12B658F:       End If
  loc_12B6592:     Else
  loc_12B6599:       If (var_B0 = CLng(5)) Then
  loc_12B65A2:         var_100 = global_52
  loc_12B65A5:       End If
  loc_12B65A5:     End If
  loc_12B65A5:   End If
  loc_12B65A5: End If
  loc_12B65A5: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E62F60
  'Data Table: 4E1708
  Dim var_9C As Long
  loc_E62F1B: Proc_6_58_E054C0(arg_10)
  loc_E62F33: var_9C = CLng(Me.FGrid.Row)
  loc_E62F43: If (var_9C = CLng(5)) Then
  loc_E62F46:   GoTo loc_E62F5C
  loc_E62F49: End If
  loc_E62F50: If (var_9C = CLng(2)) Then
  loc_E62F59:   var_A0 = global_52
  loc_E62F5C:   ' Referenced from: E62F46
  loc_E62F5C: End If
  loc_E62F5C: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDD39C
  'Data Table: 4E1708
  Dim var_9C As Long
  loc_EDD2FB: var_9C = CLng(Me.FGrid.Row)
  loc_EDD30B: If Not (var_9C = CLng(2)) Then
  loc_EDD315:   If Not (var_9C = CLng(3)) Then
  loc_EDD31F:     If (var_9C = CLng(4)) Then
  loc_EDD322:     End If
  loc_EDD322:   End If
  loc_EDD344:   If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_EDD355:     Call TxtGrid_KeyDown(KeyCode, global_144)
  loc_EDD35A:   End If
  loc_EDD388:   Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, 0, Shift)
  loc_EDD398: End If
  loc_EDD398: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21060
  'Data Table: 4E1708
  Dim arg_10 As Integer
  loc_E2103C: On Error Goto loc_E21057
  loc_E2104A: Call Proc_47_69_1126B48(Cancel, &HFF)
  loc_E21053: arg_10 = Not(var_88)
  loc_E21056: Exit Sub
  loc_E21057: ' Referenced from: E2103C
  loc_E21057: Proc_6_60_E62BC4(arg_10)
  loc_E2105C: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'EB4014
  'Data Table: 4E1708
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_EB3FA0: Set var_9C = Me.ListView.SelectedItem
  loc_EB3FB7: Set var_A4 = Me.TxtGrid
  loc_EB3FBD: Call 0.Method_ListView_UnknownEvent_130 (0, var_A8)
  loc_EB3FC5: var_A8.Text = var_9C.Text
  loc_EB3FE7: Me.FrmList.Visible = False
  loc_EB3FF8: Set var_88 = Me.TxtGrid
  loc_EB3FFE: Call 0.Method_ListView_UnknownEvent_130 (0)
  loc_EB4006: var_9C.SetFocus
  loc_EB4012: Exit Sub
End Sub

Private Sub BTNPRINT_Click() '1267988
  'Data Table: 4E1708
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_BC As Long
  Dim var_EC As CheckBox
  loc_12673F4: On Error Goto loc_1267982
  loc_12673FC: global_148 = &HFF
  loc_126740C: Me.LblProcess.Caption = "Please Wait..."
  loc_126741E: Me.LblProcess.Refresh
  loc_126742C: var_8C = global_52
  loc_1267437: If (var_8C = "RoomStatus") Then
  loc_126743D:   var_9C = CVar(CLng(0)) 'Long
  loc_1267442:   var_BC = 0
  loc_1267473:   Call Proc_47_76_105F408(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix))
  loc_1267487:   If (var_E6 = 0) Then
  loc_126748F:     global_148 = 0
  loc_1267492:     Exit Sub
  loc_1267493:   End If
  loc_126749F:   Set var_88 = Me.Check1
  loc_12674A5:   Call 0.Method_BTNPRINT_Click0 (1, var_EC, var_DE, global_148)
  loc_12674AD:   var_BC = var_EC.Value
  loc_12674C3:   If (CLng(var_DE) = 0) Then
  loc_12674E1:     Call Proc_47_72_1280374(global_168, 1, CByte(1))
  loc_12674EC:     global_56 = var_E4
  loc_12674FC:     If (global_148 = 0) Then
  loc_12674FF:       Exit Sub
  loc_1267500:     End If
  loc_1267500:   End If
  loc_1267503: Else
  loc_126750B:   If (var_8C = "ComplaintList") Then
  loc_1267511:     var_9C = CVar(CLng(0)) 'Long
  loc_1267547:     Call Proc_47_76_105F408(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_126755B:     If (var_E6 = 0) Then
  loc_1267563:       global_148 = 0
  loc_1267566:       Exit Sub
  loc_1267567:     End If
  loc_12675A0:     Call Proc_47_76_105F408(CInt(2), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(2)))
  loc_12675B4:     If (var_E6 = 0) Then
  loc_12675BC:       global_148 = 0
  loc_12675BF:       Exit Sub
  loc_12675C0:     End If
  loc_12675CC:     Set var_88 = Me.Check1
  loc_12675D2:     Call 0.Method_BTNPRINT_Click0 (1, var_EC, var_DE, global_148, global_148)
  loc_12675DA:     var_9C = var_EC.Value
  loc_12675F0:     If (CLng(var_DE) = 0) Then
  loc_126760E:       Call Proc_47_72_1280374(global_168, 1, CByte(1), var_E4)
  loc_1267619:       global_56 = var_E4
  loc_1267629:       If (global_148 = 0) Then
  loc_126762C:         Exit Sub
  loc_126762D:       End If
  loc_126762D:     End If
  loc_1267630:   Else
  loc_1267638:     If (var_8C = "IssueRegister") Then
  loc_126763E:       var_9C = CVar(CLng(0)) 'Long
  loc_1267674:       Call Proc_47_76_105F408(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1267688:       If (var_E6 = 0) Then
  loc_1267690:         global_148 = 0
  loc_1267693:         Exit Sub
  loc_1267694:       End If
  loc_12676CD:       Call Proc_47_76_105F408(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_12676E1:       If (var_E6 = 0) Then
  loc_12676E9:         global_148 = 0
  loc_12676EC:         Exit Sub
  loc_12676ED:       End If
  loc_1267726:       Call Proc_47_76_105F408(CInt(2), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(2)))
  loc_126773A:       If (var_E6 = 0) Then
  loc_1267742:         global_148 = 0
  loc_1267745:         Exit Sub
  loc_1267746:       End If
  loc_1267752:       Set var_88 = Me.Check1
  loc_1267758:       Call 0.Method_BTNPRINT_Click0 (1, var_EC, var_DE, global_148, global_148)
  loc_1267776:       If (CLng(var_DE) = 0) Then
  loc_1267794:         Call Proc_47_72_1280374(global_168, 1, CByte(1), var_E4)
  loc_126779F:         global_56 = var_E4
  loc_12677AF:         If (var_EC.Value = 0) Then
  loc_12677B2:           Exit Sub
  loc_12677B3:         End If
  loc_12677B3:       End If
  loc_12677B6:     Else
  loc_12677BE:       If Not (var_8C = "StockRegister") Then
  loc_12677C9:         If (var_8C = "StockSumm") Then
  loc_12677CC:         End If
  loc_12677CF:         var_9C = CVar(CLng(0)) 'Long
  loc_1267805:         Call Proc_47_76_105F408(CInt(0), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0)
  loc_1267819:         If (var_E6 = 0) Then
  loc_1267821:           global_148 = 0
  loc_1267824:           Exit Sub
  loc_1267825:         End If
  loc_126785E:         Call Proc_47_76_105F408(CInt(1), CStr(Me.FGrid.TextMatrix)), var_E6, Me.FGrid.TextMatrix), 0, CVar(CLng(1)))
  loc_1267872:         If (var_E6 = 0) Then
  loc_126787A:           global_148 = 0
  loc_126787D:           Exit Sub
  loc_126787E:         End If
  loc_126788A:         Set var_88 = Me.Check1
  loc_1267890:         Call 0.Method_BTNPRINT_Click0 (1, var_EC, var_DE, global_148, global_148)
  loc_1267898:         var_9C = var_EC.Value
  loc_12678AE:         If (CLng(var_DE) = 0) Then
  loc_12678C7:           var_9C = global_168
  loc_12678CC:           Call Proc_47_72_1280374(var_9C, 1, CByte(1), var_E4)
  loc_12678D7:           global_56 = var_E4
  loc_12678E7:           If (global_148 = 0) Then
  loc_12678EA:             Exit Sub
  loc_12678EB:           End If
  loc_12678EB:         End If
  loc_12678F7:         Set var_88 = Me.Check1
  loc_12678FD:         Call 0.Method_BTNPRINT_Click0 (2, var_EC, var_DE, var_9C)
  loc_1267905:         var_E4 = var_EC.Value
  loc_126791B:         If (CLng(var_DE) = 0) Then
  loc_1267939:           Call Proc_47_72_1280374(global_172, 2, CByte(1))
  loc_1267944:           global_60 = var_E4
  loc_1267954:           If (global_148 = 0) Then
  loc_1267957:             Exit Sub
  loc_1267958:           End If
  loc_1267958:         End If
  loc_1267958:       End If
  loc_1267958:     End If
  loc_1267958:   End If
  loc_1267958: End If
  loc_126795B: var_9C = CVar(Me) 'Address
  loc_1267966: Call unk_4E171C.RetBack
  loc_1267979: Me.Global.Unload Me
  loc_1267981: Exit Sub
  loc_1267982: ' Referenced from: 12673F4
  loc_1267982: Proc_6_60_E62BC4(var_9C, var_E4)
  loc_1267987: Exit Sub
End Sub

Private Sub Command1_Click() 'EA0794
  'Data Table: 4E1708
  Dim var_88 As Frame
  Dim var_8C As TextBox
  loc_EA071C: Me.Frame1.Visible = False
  loc_EA0732: Set var_88 = Me.txtSite
  loc_EA0738: Call 0.Method_Command1_Click0 (CInt(0), var_8C)
  loc_EA074B: global_88 = var_8C.Tag
  loc_EA0767: Set var_88 = Me.txtSite
  loc_EA076D: Call 0.Method_Command1_Click0 (CInt(0), var_8C)
  loc_EA0780: global_92 = var_8C.Text
  loc_EA078E: Call Proc_47_75_13348C8()
  loc_EA0793: Exit Sub
End Sub

Private Sub DGSite_UnknownEvent_9 'F3E8A4
  'Data Table: 4E1708
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3E79B: Me.DGSite.Visible = False
  loc_F3E7BA: If (Me.RecordCount > 0) Then
  loc_F3E7F9:   Set var_B4 = Me.txtSite
  loc_F3E7FF:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3E807:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3E83A:   var_B0 = Me.Fields.Item("Name")
  loc_F3E859:   Set var_B4 = Me.txtSite
  loc_F3E85F:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3E867:   var_B8.Text = CStr(var_B0.Value)
  loc_F3E87D: End If
  loc_F3E888: Set var_A8 = Me.txtSite
  loc_F3E88E: Call 0.Method_DGSite_UnknownEvent_90 (CInt(0))
  loc_F3E896: var_B0.SetFocus
  loc_F3E8A2: Exit Sub
End Sub

Private Sub Form_Load() 'EDCCD8
  'Data Table: 4E1708
  loc_EDCC20: On Error Goto loc_EDCCD0
  loc_EDCC33: Set var_88 = Me
  loc_EDCC39: Proc_6_23_DFBA28(var_88, 0)
  loc_EDCC4A: Call 0.Method_arg_160 (var_88)
  loc_EDCC58: Call 0.Method_arg_164 (var_88)
  loc_EDCC60: Call Proc_47_70_1611224(0)
  loc_EDCC6D: Call 0.Method_arg_7C (CDbl(590))
  loc_EDCC7A: Call 0.Method_MeC (CDbl(8000))
  loc_EDCC87: Call 0.Method_Me4 (CDbl(11900))
  loc_EDCC94: If (MemVar_1F92070 = "HO") Then
  loc_EDCC9D:   Set var_88 = Me.PictShortCuts
  loc_EDCCA3:   MDIForm1.PictShortCuts.Visible = True
  loc_EDCCAB: End If
  loc_EDCCB5: Set var_88 = Me.TopCtrl1
  loc_EDCCBB: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6803000E("Add")
  loc_EDCCC4: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_EDCCCF: Exit Sub
  loc_EDCCD0: ' Referenced from: EDCC20
  loc_EDCCD0: Proc_6_60_E62BC4()
  loc_EDCCD5: Exit Sub
End Sub

Private Sub Form_Resize() 'E80BB4
  'Data Table: 4E1708
  loc_E80B4E: Call 0.Method_arg_98 (var_86)
  loc_E80B5D: If (CLng(var_86) <> 1) Then
  loc_E80B76:   Proc_6_23_DFBA28(Me, 0)
  loc_E80B86:   Call 0.Method_arg_7C (CDbl(580))
  loc_E80B92:   Call 0.Method_arg_74 (CDbl(&H14))
  loc_E80BAB:   Call 0.Method_arg_54 (Form.Caption)
  loc_E80BB3: End If
  loc_E80BB3: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E77038
  'Data Table: 4E1708
  loc_E76FDF: Set global_96 = Nothing
  loc_E76FF1: Set global_100 = Nothing
  loc_E77003: Set global_104 = Nothing
  loc_E77015: Set global_108 = Nothing
  loc_E77027: Set global_188 = Nothing
  loc_E77033: MemVar_1F921E4 = Nothing
  loc_E77037: Exit Sub
End Sub

Private Sub Form_Activate() 'E29F64
  'Data Table: 4E1708
  loc_E29F48: Set var_88 = MemVar_1F92244.Picture3
  loc_E29F59: Call 0.Method_arg_74 (MDIForm1.Picture3.Left)
  loc_E29F61: Exit Sub
End Sub

Private Sub BtnParam_Click() 'E9FB98
  'Data Table: 4E1708
  Dim Me As Recordset15
  Dim var_88 As Frame
  loc_E9FB2C: Me.Recordset15.CursorLocation = 3
  loc_E9FB54: Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", CVar(MemVar_1F92044), 0
  loc_E9FB62: CVarUnk
  loc_E9FB67: VerifyVarObj
  loc_E9FB6D: Set var_88 = Me.DGSite
  loc_E9FB73: LateIdStAd
  loc_E9FB8D: Me.Frame1.Visible = True
  loc_E9FB95: Exit Sub
  loc_E9FB96: var_88 = New
End Sub

Private Sub txtSite_GotFocus(Index As Integer) 'FC9610
  'Data Table: 4E1708
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_9C As TextBox
  Dim var_D8 As Variant
  loc_FC9470: On Error Goto loc_FC95E5
  loc_FC9476: var_8A = Index
  loc_FC9481: If (var_8A = CInt(0)) Then
  loc_FC94D2:   Set var_98 = Me.txtSite
  loc_FC94D8:   Call 0.Method_txtSite_GotFocus0 (Index, var_9C, var_A0)
  loc_FC94E0:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_FC94F8:   If (var_8A Or (var_A0 = vbNullString)) Then
  loc_FC94FB:     Exit Sub
  loc_FC94FC:   End If
  loc_FC9509:   Set var_98 = Me.txtSite
  loc_FC950F:   Call 0.Method_txtSite_GotFocus0 (Index, var_9C)
  loc_FC9517:   var_A0 = var_9C.Text
  loc_FC951F:   var_D8 = CVar(var_A0) 'String
  loc_FC9564:   If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_FC956D:     Me.MoveFirst
  loc_FC9592:     Set var_98 = Me.txtSite
  loc_FC9598:     Call 0.Method_txtSite_GotFocus0 (Index, var_9C, var_A0, "Name =")
  loc_FC95A0:     0 = var_9C.Text
  loc_FC95AE:     Proc_6_17_EAA2B0(var_D8, CVar(var_A0))
  loc_FC95C4:     Me.Find CStr(1 & var_D8), var_FC, 
  loc_FC95DC:   End If
  loc_FC95DC: End If
  loc_FC95E1: Set var_88 = Nothing
  loc_FC95E4: Exit Sub
  loc_FC95E5: ' Referenced from: FC9470
  loc_FC95EB: Call 0.Method_arg_50 (var_A0)
  loc_FC95F3: var_100 = "txtSite_GotFocus"
  loc_FC9600: Proc_6_152_1077F50(var_A0)
  loc_FC960C: Exit Sub
End Sub

Private Sub txtSite_KeyDown(KeyCode As Integer, Shift As Integer) 'EFB16C
  'Data Table: 4E1708
  loc_EFB0A8: On Error Goto loc_EFB141
  loc_EFB0B1: If (Shift = &HD) Then
  loc_EFB0BC:   var_88 = "	"
  loc_EFB0C2:   Proc_303_0_FB9B68(var_88)
  loc_EFB0CA: End If
  loc_EFB0D8: If (KeyCode = CInt(0)) Then
  loc_EFB0F3:   Set var_A0 = Nothing
  loc_EFB0FE:   Set var_9C = Nothing
  loc_EFB12C:   Proc_6_69_134A198(Me.DGSite, Me.txtSite, KeyCode, global_192, Shift, &HFF)
  loc_EFB140: End If
  loc_EFB140: Exit Sub
  loc_EFB141: ' Referenced from: EFB0A8
  loc_EFB147: Call 0.Method_arg_50 (var_88, 1, var_9C, var_A0)
  loc_EFB15C: Proc_6_152_1077F50(var_88, "txtSite_KeyDown", 0)
  loc_EFB168: Exit Sub
  loc_EFB169: CExtInstUnk
End Sub

Private Sub txtSite_KeyPress(KeyAscii As Integer) 'EC204C
  'Data Table: 4E1708
  loc_EC1FB4: On Error Goto loc_EC2021
  loc_EC1FC5: If (KeyAscii = CInt(0)) Then
  loc_EC1FE4:   If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_EC1FF6:     var_A0 = "Name"
  loc_EC2011:     Proc_6_89_146F1AC(Me.txtSite, KeyAscii, global_192, arg_10)
  loc_EC2020:   End If
  loc_EC2020: End If
  loc_EC2020: Exit Sub
  loc_EC2021: ' Referenced from: EC1FB4
  loc_EC2027: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_EC203C: Proc_6_152_1077F50(var_A0, "txtSite_KeyPress")
  loc_EC2048: Exit Sub
End Sub

Private Sub txtSite_KeyUp(KeyCode As Integer, Shift As Integer) 'EDCEC0
  'Data Table: 4E1708
  loc_EDCE10: On Error Goto loc_EDCE97
  loc_EDCE21: If (KeyCode = CInt(0)) Then
  loc_EDCE47:   If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_EDCE58:     Call txtSite_KeyDown(KeyCode, global_144)
  loc_EDCE6C:     var_A4 = "Name"
  loc_EDCE87:     Proc_6_89_146F1AC(Me.txtSite, KeyCode, global_192, Shift)
  loc_EDCE96:   End If
  loc_EDCE96: End If
  loc_EDCE96: Exit Sub
  loc_EDCE97: ' Referenced from: EDCE10
  loc_EDCE9D: Call 0.Method_arg_50 (var_A4, var_A4, &HFF)
  loc_EDCEB2: Proc_6_152_1077F50(var_A4, "txtSite_KeyUp")
  loc_EDCEBE: Exit Sub
End Sub

Private Sub txtSite_LostFocus(Index As Integer) 'E8A8C0
  'Data Table: 4E1708
  loc_E8A854: On Error Goto loc_E8A897
  loc_E8A85F: Call txtSite_Validate(Index)
  loc_E8A87F: If (Me.FrmList.Visible = &HFF) Then
  loc_E8A88E:   Me.FrmList.Visible = False
  loc_E8A896: End If
  loc_E8A896: Exit Sub
  loc_E8A897: ' Referenced from: E8A854
  loc_E8A89D: Call 0.Method_arg_50 (var_90)
  loc_E8A8B2: Proc_6_152_1077F50(var_90, "txtSite_LostFocus")
  loc_E8A8BE: Exit Sub
End Sub

Private Sub txtSite_Validate(Cancel As Boolean) 'FD7C9C
  'Data Table: 4E1708
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_FD7AD4: On Error Goto loc_FD7C73
  loc_FD7ADA: var_86 = Cancel
  loc_FD7AE5: If (var_86 = CInt(0)) Then
  loc_FD7B36:   Set var_94 = Me.txtSite
  loc_FD7B3C:   Call 0.Method_txtSite_Validate0 (Cancel, var_98, var_9C)
  loc_FD7B44:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_FD7B5C:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_FD7B6D:     Set var_94 = Me.txtSite
  loc_FD7B73:     Call 0.Method_txtSite_Validate0 (CInt(0), var_98)
  loc_FD7B7B:     var_98.Tag = vbNullString
  loc_FD7B95:     Set var_94 = Me.txtSite
  loc_FD7B9B:     Call 0.Method_txtSite_Validate0 (CInt(0), var_98)
  loc_FD7BA3:     var_98.Text = vbNullString
  loc_FD7BB2:   Else
  loc_FD7BEE:     Set var_B0 = Me.txtSite
  loc_FD7BF4:     Call 0.Method_txtSite_Validate0 (CInt(0), var_B4)
  loc_FD7BFC:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD7C40:     var_9C = CStr(Me.Fields.Item("Code").Value)
  loc_FD7C4E:     Set var_B0 = Me.txtSite
  loc_FD7C54:     Call 0.Method_txtSite_Validate0 (CInt(0), var_B4)
  loc_FD7C5C:     var_B4.Tag = var_9C
  loc_FD7C72:   End If
  loc_FD7C72: End If
  loc_FD7C72: Exit Sub
  loc_FD7C73: ' Referenced from: FD7AD4
  loc_FD7C79: Call 0.Method_arg_50 (var_9C)
  loc_FD7C81: var_CC = "txtSite_Validate"
  loc_FD7C8E: Proc_6_152_1077F50(var_9C)
  loc_FD7C9A: Exit Sub
End Sub

Public Function global_52Get() '4E2770
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4E277F
  global_52 = Value
End Sub

Public Function global_56Get() '4E278E
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4E279D
  global_56 = Value
End Sub

Public Function global_60Get() '4E27AC
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4E27BB
  global_60 = Value
End Sub

Public Function global_64Get() '4E27CA
  global_64Get = global_64
End Function

Public Sub global_64Put(Value) '4E27D9
  global_64 = Value
End Sub

Public Function global_68Get() '4E27E8
  global_68Get = global_68
End Function

Public Sub global_68Put(Value) '4E27F7
  global_68 = Value
End Sub

Public Function global_72Get() '4E2806
  global_72Get = global_72
End Function

Public Sub global_72Put(Value) '4E2815
  global_72 = Value
End Sub

Public Function global_76Get() '4E2824
  global_76Get = global_76
End Function

Public Sub global_76Put(Value) '4E2833
  global_76 = Value
End Sub

Public Function global_80Get() '4E2842
  global_80Get = global_80
End Function

Public Sub global_80Put(Value) '4E2851
  global_80 = Value
End Sub

Public Function global_84Get() '4E2874
  global_84Get = global_84
End Function

Public Sub global_84Put(Value) '4E2883
  global_84 = Value
End Sub

Public Function global_88Get() '4E2892
  global_88Get = global_88
End Function

Public Sub global_88Put(Value) '4E28A1
  global_88 = Value
End Sub

Public Function global_92Get() '4E28B0
  global_92Get = global_92
End Function

Public Sub global_92Put(Value) '4E28BF
  global_92 = Value
End Sub

Public Sub SelGridKeyPressLocal(Txt, SelGrid, index, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '11E0DF4
  'Data Table: 4E1708
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim KeyAscii As Integer
  Dim var_138 As Variant
  loc_11E09B1: If ().rows < 1) Then
  loc_11E09B4:   Exit Sub
  loc_11E09B5: End If
  loc_11E09C9: If (Me.RecordCount <= 0) Then
  loc_11E09D5:   Me.TEXT = vbNullString
  loc_11E09D9:   Exit Sub
  loc_11E09DA: End If
  loc_11E09EF: If ((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Then
  loc_11E09F2:   Exit Sub
  loc_11E09F3: End If
  loc_11E09FD: If (CLng(KeyAscii) = 8) Then
  loc_11E0A17:   If (Len(Me.SelText) > 1) Then
  loc_11E0A2B:     var_DC = (Len(Me.SelText) - 1)
  loc_11E0A33:     Me.SelLength = var_DC
  loc_11E0A43:     var_88 = CStr(Me.SelText)
  loc_11E0A4C:   Else
  loc_11E0A55:     Me.TEXT = vbNullString
  loc_11E0A6F:     Call ).SetFocus
  loc_11E0A80:     Me.Visible = False
  loc_11E0A84:     Exit Sub
  loc_11E0A85:   End If
  loc_11E0A88: Else
  loc_11E0A9F:   var_DC = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_11E0AA4:   var_88 = CStr(var_DC)
  loc_11E0AB0: End If
  loc_11E0AB3: Me.Recordset15.MoveFirst
  loc_11E0AF0: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_11E0B33:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_11E0B48: Else
  loc_11E0B78:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_88 & "*'", 0, 1
  loc_11E0B88: End If
  loc_11E0B8A: KeyAscii = 0
  loc_11E0BB6: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_11E0BBC:   var_BC = CVar(CellBackColLeave) 'Long
  loc_11E0BD5:   ).CellBackColor = index
  loc_11E0BEA:   var_BC = CVar(Me.Recordset15.AbsolutePosition) 'Long
  loc_11E0C03:   ).Row = index
  loc_11E0C0D:   var_BC = CVar(CellBackColEnter) 'Long
  loc_11E0C26:   ).CellBackColor = index
  loc_11E0C5C:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_11E0C76:   Me.SelLength = CVar(Len(var_88))
  loc_11E0C8E:   var_DC = ).CellLeft
  loc_11E0CAE:   var_138 = (index + ).left)
  loc_11E0CB6:   Me.left = var_138
  loc_11E0CDB:   var_DC = ).CellTop
  loc_11E0CFB:   var_138 = (index + ).top)
  loc_11E0D03:   Me.top = var_138
  loc_11E0D26:   If (Me.Visible = False) Then
  loc_11E0D30:     Me.Visible = True
  loc_11E0D34:     var_9C = 0
  loc_11E0D3D:     Call Me.ZOrder
  loc_11E0D46:     Call Me.SetFocus
  loc_11E0D6A:     Me.BackColor = ).CellBackColor
  loc_11E0D93:     Me.ForeColor = ).CellForeColor
  loc_11E0DBC:     Me.width = ).CellWidth
  loc_11E0DE5:     Me.height = ).CellHeight
  loc_11E0DF0:   End If
  loc_11E0DF0: End If
  loc_11E0DF0: Exit Sub
End Sub

Public Function ListView_Items_RecordSet_Local(LV, Txt, index, Rst) 'FF7C14
  'Data Table: 4E1708
  Dim var_104 As String
  Dim var_A0 As Variant
  Dim Me As Variant
  Dim var_134 As String
  Dim var_8C As ListItem
  Dim var_E4 As Integer
  Dim var_6FF8 As String
  loc_FF7A34: Call Me.ListItems.Clear
  loc_FF7A51: If (Me.Recordset15.RecordCount <= 0) Then
  loc_FF7A54:   ListView_Items_RecordSet_Local = 
  loc_FF7A5A: End If
  loc_FF7A65: If (global_52 <> "HundiPrint") Then
  loc_FF7A70:   var_104 = "All"
  loc_FF7A79:   var_A0 = Me.ListItems
  loc_FF7A8A:   Set var_8C = var_A0.add
  loc_FF7A9C:   var_A0.ListItem.SubItems = 1
  loc_FF7AA1:   ' Referenced from: FF7B9C
  loc_FF7AA1: End If
  loc_FF7AA7: var_116 = Me.EOF
  loc_FF7AB0: If Not(var_116) Then
  loc_FF7ADD:   var_A0 = Me.Recordset15.Fields.Item("Name").Value
  loc_FF7B47:   If Not(IsNull(Me.Recordset15.Fields.Item("Code").Value)) Then
  loc_FF7B76:     var_134 = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_FF7B7E:     Me.ListItems.add.SubItems = 1
  loc_FF7B94:   End If
  loc_FF7B97:   Me.MoveNext
  loc_FF7B9C:   GoTo loc_FF7AA1
  loc_FF7B9F: End If
  loc_FF7BB4: var_E4 = 0
  loc_FF7BD3: Set var_8C = Me.FindItem
  loc_FF7BE4: If (var_8C Is Nothing) Then
  loc_FF7BE7:   ListView_Items_RecordSet_Local = 1
  loc_FF7BF0: Else
  loc_FF7BF6:   var_8C.EnsureVisible var_116
  loc_FF7C00:   var_8C.Selected = True
  loc_FF7C05: End If
  loc_FF7C08: Set var_88 = var_8C 
  loc_FF7C0C: ListView_Items_RecordSet_Local = var_104
  loc_FF7C12: var_6FF8 = var_E4
End Function

Public Sub Proc_47_69_1126B48(arg_C, arg_10) '1126B48
  'Data Table: 4E1708
  Dim var_9C As Variant
  Dim var_B0 As Long
  Dim var_B4 As Variant
  Dim var_F0 As Variant
  Dim var_E0 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_B8 As String
  Dim var_144 As MSHFlexGrid
  loc_112680F: var_B0 = CLng(Me.FGrid.Row)
  loc_112681F: If (var_B0 = CLng(2)) Then
  loc_112682E:   Set var_9C = Me.TxtGrid
  loc_1126834:   Call 0.Method_Proc_47_69_1126B480 (0, var_B4)
  loc_1126853:   If (var_B4.Text <> vbNullString) Then
  loc_1126869:     var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1126881:     var_110 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_112689E:     Set var_B4 = Me.ListView.SelectedItem
  loc_11268AC:     var_130 = CVar(var_B4.Text) 'String
  loc_11268B4:     Set var_144 = Me.FGrid
  loc_11268BA:     LateIdCallSt
  loc_11268DA:   End If
  loc_11268E0:   var_148 = global_52
  loc_11268EB:   If Not (var_148 = "StockRegister") Then
  loc_11268F6:     If (var_148 = "StockSumm") Then
  loc_11268F9:     End If
  loc_112691F:     var_B8 = CStr(Me.FGrid.TextMatrix))
  loc_1126930:     If (var_B8 = "Room") Then
  loc_1126941:       Call Proc_47_74_1213DE8(2, "Select '' as O,Name As RoomNo,Code As Code From RoomMast where Type in ('RO') Order By Name", 1, CVar(CLng(2)), var_144)
  loc_1126949:     Else
  loc_1126957:       Call Proc_47_74_1213DE8(2, "Select '' as O,Name As Department,Code As Code From Depart  where RestType in ('House Keeping') Order By Name", var_130)
  loc_112695C:     End If
  loc_112695C:   End If
  loc_112695F: Else
  loc_1126966:   If Not (var_B0 = CLng(5)) Then
  loc_1126970:     If Not (var_B0 = CLng(6)) Then
  loc_112697A:       If Not (var_B0 = CLng(7)) Then
  loc_1126984:         If Not (var_B0 = CLng(8)) Then
  loc_112698E:           If (var_B0 = CLng(9)) Then
  loc_1126991:           End If
  loc_1126991:         End If
  loc_1126991:       End If
  loc_1126991:     End If
  loc_1126994:   Else
  loc_112699B:     If (var_B0 = CLng(3)) Then
  loc_11269AB:       Set var_9C = Me.TxtGrid
  loc_11269B1:       Call 0.Method_Proc_47_69_1126B480 (arg_C, var_B4, var_B8)
  loc_11269B9:       var_110 = var_B4.Text
  loc_11269D0:       If (var_B8 <> vbNullString) Then
  loc_11269E6:         var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11269FE:         var_110 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1126A1B:         Set var_B4 = Me.ListView.SelectedItem
  loc_1126A29:         var_130 = CVar(var_B4.Text) 'String
  loc_1126A31:         Set var_144 = Me.FGrid
  loc_1126A37:         LateIdCallSt
  loc_1126A57:       End If
  loc_1126A5A:     Else
  loc_1126A61:       If (var_B0 = CLng(4)) Then
  loc_1126A64:         GoTo loc_1126AF9
  loc_1126A67:       End If
  loc_1126A6E:       If Not (var_B0 = CLng(0)) Then
  loc_1126A78:         If (var_B0 = CLng(1)) Then
  loc_1126A7B:         End If
  loc_1126A97:         Set var_144 = Me.FGrid
  loc_1126AA6:         var_110 = CVar(CLng(var_144.Col)) 'Long
  loc_1126AB4:         Set var_9C = Me.TxtGrid
  loc_1126ABA:         Call 0.Method_Proc_47_69_1126B480 (0, var_B4, var_110, CVar(CLng(Me.FGrid.Row)), var_144)
  loc_1126ACD:         var_E0 = CVar(Proc_6_33_1512840(var_B4, var_130, var_110)) 'String
  loc_1126AD5:         Set var_150 = Me.FGrid
  loc_1126ADB:         LateIdCallSt
  loc_1126AF9:         ' Referenced from:       1126A64
  loc_1126AF9:       End If
  loc_1126AF9:     End If
  loc_1126AF9:   End If
  loc_1126AF9: End If
  loc_1126B04: If (arg_10 = 0) Then
  loc_1126B0B:   Set var_9C = Me.FGrid
  loc_1126B27:   Set var_9C = Me.TxtGrid
  loc_1126B2D:   Call 0.Method_Proc_47_69_1126B480 (0, var_B4, 0, FGrid.DispID_8001, &HFF)
  loc_1126B35:   var_B4.Visible = var_150
  loc_1126B41: End If
  loc_1126B41: Proc_47_69_1126B48 = var_E0
End Sub

Public Sub Proc_47_70_1611224
  'Data Table: 4E1708
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
  loc_160FD6C: Call 0.Method_arg_78 (var_8C)
  loc_160FD87: Me.Pic.Top = ((var_8C - Me.Pic.Width) - CDbl(&HA))
  loc_160FD9F: Set var_98 = Me.BTNPRINT
  loc_160FDA5: Call 0.Method_Proc_47_70_16112240 (0, var_9C)
  loc_160FDB9: Set var_A0 = Me.BTNEXIT
  loc_160FE05: Set var_B0 = Me.BTNPRINT
  loc_160FE0B: Call 0.Method_Proc_47_70_16112240 (0, var_B4)
  loc_160FE13: var_B4.Left = ((Me.Pic.Width - ((var_9C.Width + var_A0.Width) + Me.BTNEXIT.Width)) / CDbl(2))
  loc_160FE4C: Set var_98 = Me.BTNPRINT
  loc_160FE52: Call 0.Method_Proc_47_70_16112240 (0, var_9C)
  loc_160FE5A: var_9C.Top = (Me.Pic.Top + CDbl(&HA))
  loc_160FE74: Set var_9C = Me.BTNPRINT
  loc_160FE7A: Call 0.Method_Proc_47_70_16112240 (0, var_A0)
  loc_160FE93: Set var_90 = Me.BTNPRINT
  loc_160FE99: Call 0.Method_Proc_47_70_16112240 (0, var_98)
  loc_160FEB8: Me.BTNEXIT.Left = (var_98.Left + var_A0.Width)
  loc_160FED7: var_8C = Me.Pic.Top
  loc_160FEEE: Me.BTNEXIT.Top = (var_8C + CDbl(&HA))
  loc_160FF13: Call 0.Method_Me0 (var_8C)
  loc_160FF25: var_D4 = CVar(((var_8C - CDbl(Me.FGrid.Width)) / CDbl(2))) 'Single
  loc_160FF2E: Set var_98 = Me.FGrid
  loc_160FF34: var_98.Left = var_D4
  loc_160FF55: Me.FGrid.Top = CVar(CDbl(&H4B))
  loc_160FF70: Me.FGrid.Rows = &HA
  loc_160FF8B: Me.FGrid.Cols = 3
  loc_160FFA6: Me.FGrid.FixedCols = 1
  loc_160FFAE: var_D4 = 0
  loc_160FFB7: var_F4 = &H898
  loc_160FFC4: Set var_90 = Me.FGrid
  loc_160FFCA: LateIdCallSt
  loc_160FFD5: var_D4 = 1
  loc_160FFDE: var_F4 = &H898
  loc_160FFEB: Set var_90 = Me.FGrid
  loc_160FFF1: LateIdCallSt
  loc_160FFFC: var_D4 = 2
  loc_1610005: var_F4 = 0
  loc_1610012: Set var_90 = Me.FGrid
  loc_1610018: LateIdCallSt
  loc_1610023: var_D4 = 1
  loc_1610032: var_F4 = CVar(CInt(1)) 'Integer
  loc_161003A: Set var_90 = Me.FGrid
  loc_1610040: LateIdCallSt
  loc_1610070: For var_108 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_108 'Integer
  loc_161007A:   var_D4 = CVar(CLng(var_86)) 'Long
  loc_161007F:   var_F4 = 0
  loc_161008C:   Set var_90 = Me.FGrid
  loc_1610092:   LateIdCallSt
  loc_16100A0: Next var_108 'Integer
  loc_16100A5: Call Proc_47_75_13348C8()
  loc_16100B1: For var_10C = 1 To 4: var_86 = var_10C 'Integer
  loc_16100C1:   Set var_90 = Me.GridSel
  loc_16100C7:   Call 0.Method_Proc_47_70_16112240 (var_86, var_98)
  loc_16100E5:   If (CBool(var_98.Visible) = &HFF) Then
  loc_16100EE:     var_88 = (var_88 + 1)
  loc_16100F1:   End If
  loc_16100F4: Next var_10C 'Integer
  loc_1610114: var_D4 = CVar(CDbl(((((global_124 - global_126) + 1) * CInt(220)) + 500))) 'Single
  loc_1610123: Me.FGrid.Height = var_D4
  loc_1610131: var_11C = global_128 'Variant
  loc_1610140: If (var_11C = 0) Then
  loc_1610156:   Me.FGrid.Top = CVar(CDbl(1000))
  loc_1610161: Else
  loc_161016C:   If (var_11C = 1) Then
  loc_1610178:     Set var_90 = Me.GridSel
  loc_161017E:     Call 0.Method_Proc_47_70_16112240 (1)
  loc_1610186:     var_C4 = var_98.Width
  loc_1610195:     Call 0.Method_Me0 (var_8C, var_C4)
  loc_16101A7:     var_D4 = CVar(((var_8C - CDbl(var_C4)) / CDbl(2))) 'Single
  loc_16101B5:     Set var_9C = Me.GridSel
  loc_16101BB:     Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_16101C3:     var_A0.Left = 1
  loc_16101E0:     var_12C = Me.FGrid.Height
  loc_1610207:     var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_1610215:     Set var_9C = Me.GridSel
  loc_161021B:     Call 0.Method_Proc_47_70_16112240 (1, var_A0, 1)
  loc_1610223:     var_A0.Top = var_12C
  loc_1610244:     var_C4 = Me.FGrid.Height
  loc_1610254:     Set var_98 = Me.Pic
  loc_1610265:     Call 0.Method_Me8 (var_8C, var_C4)
  loc_161027C:     var_D4 = CVar((((var_8C - CDbl(var_C4)) - var_98.Height) - CDbl(1200))) 'Single
  loc_161028A:     Set var_9C = Me.GridSel
  loc_1610290:     Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_1610298:     var_A0.Height = 1
  loc_16102B4:     Set var_90 = Me.GridSel
  loc_16102BA:     Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_16102D9:     Set var_9C = Me.Check1
  loc_16102DF:     Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_16102E7:     var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_1610303:     Set var_90 = Me.GridSel
  loc_1610309:     Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_1610328:     Set var_9C = Me.Check1
  loc_161032E:     Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_1610336:     var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_161034C:   Else
  loc_1610357:     If (var_11C = 2) Then
  loc_1610363:       Set var_90 = Me.GridSel
  loc_1610369:       Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_1610371:       var_C4 = var_98.Width
  loc_1610380:       Call 0.Method_Me0 (var_8C, var_C4)
  loc_1610396:       var_D4 = CVar((((var_8C / CDbl(2)) - CDbl(var_C4)) / CDbl(2))) 'Single
  loc_16103A4:       Set var_9C = Me.GridSel
  loc_16103AA:       Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_16103B2:       var_A0.Left = 2
  loc_16103CF:       var_12C = Me.FGrid.Height
  loc_16103F6:       var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_1610404:       Set var_9C = Me.GridSel
  loc_161040A:       Call 0.Method_Proc_47_70_16112240 (1, var_A0, 2)
  loc_1610412:       var_A0.Top = var_12C
  loc_1610433:       var_C4 = Me.FGrid.Height
  loc_1610443:       Set var_98 = Me.Pic
  loc_1610449:       var_94 = var_98.Height
  loc_1610454:       Call 0.Method_Me8 (var_8C, var_C4)
  loc_161046B:       var_D4 = CVar((((var_8C - CDbl(var_C4)) - var_94) - CDbl(1200))) 'Single
  loc_1610479:       Set var_9C = Me.GridSel
  loc_161047F:       Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_1610487:       var_A0.Height = 2
  loc_16104A3:       Set var_90 = Me.GridSel
  loc_16104A9:       Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_16104C8:       Set var_9C = Me.Check1
  loc_16104CE:       Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_16104D6:       var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_16104F2:       Set var_90 = Me.GridSel
  loc_16104F8:       Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_1610517:       Set var_9C = Me.Check1
  loc_161051D:       Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_1610525:       var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_161053E:       Call 0.Method_Me0 (var_94)
  loc_161054C:       Set var_90 = Me.GridSel
  loc_1610552:       Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_161055A:       var_C4 = var_98.Width
  loc_1610569:       Call 0.Method_Me0 (var_8C, var_C4)
  loc_1610587:       var_D4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_C4)) / CDbl(2)))) 'Single
  loc_1610595:       Set var_9C = Me.GridSel
  loc_161059B:       Call 0.Method_Proc_47_70_16112240 (2, var_A0)
  loc_16105A3:       var_A0.Left = 2
  loc_16105C0:       var_12C = Me.FGrid.Height
  loc_16105E7:       var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_16105F5:       Set var_9C = Me.GridSel
  loc_16105FB:       Call 0.Method_Proc_47_70_16112240 (2, var_A0, 2)
  loc_1610603:       var_A0.Top = var_12C
  loc_1610624:       var_C4 = Me.FGrid.Height
  loc_1610634:       Set var_98 = Me.Pic
  loc_161063A:       var_94 = var_98.Height
  loc_1610645:       Call 0.Method_Me8 (var_8C, var_C4)
  loc_161065C:       var_D4 = CVar((((var_8C - CDbl(var_C4)) - var_94) - CDbl(1200))) 'Single
  loc_161066A:       Set var_9C = Me.GridSel
  loc_1610670:       Call 0.Method_Proc_47_70_16112240 (2, var_A0)
  loc_1610678:       var_A0.Height = 2
  loc_1610694:       Set var_90 = Me.GridSel
  loc_161069A:       Call 0.Method_Proc_47_70_16112240 (2, var_98)
  loc_16106B9:       Set var_9C = Me.Check1
  loc_16106BF:       Call 0.Method_Proc_47_70_16112240 (2, var_A0)
  loc_16106C7:       var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_16106E3:       Set var_90 = Me.GridSel
  loc_16106E9:       Call 0.Method_Proc_47_70_16112240 (2, var_98)
  loc_1610708:       Set var_9C = Me.Check1
  loc_161070E:       Call 0.Method_Proc_47_70_16112240 (2, var_A0)
  loc_1610716:       var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_161072C:     Else
  loc_1610737:       If (var_11C = 3) Then
  loc_1610743:         Set var_90 = Me.GridSel
  loc_1610749:         Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_1610751:         var_C4 = var_98.Width
  loc_1610760:         Call 0.Method_Me0 (var_8C, var_C4)
  loc_1610776:         var_D4 = CVar((((var_8C / CDbl(2)) - CDbl(var_C4)) / CDbl(2))) 'Single
  loc_1610784:         Set var_9C = Me.GridSel
  loc_161078A:         Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_1610792:         var_A0.Left = 3
  loc_16107A9:         Set var_98 = Me.FGrid
  loc_16107AF:         var_12C = var_98.Height
  loc_16107D6:         var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_16107E4:         Set var_9C = Me.GridSel
  loc_16107EA:         Call 0.Method_Proc_47_70_16112240 (1, var_A0, 3)
  loc_16107F2:         var_A0.Top = var_12C
  loc_1610812:         Set var_90 = Me.GridSel
  loc_1610818:         Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_1610837:         Set var_9C = Me.Check1
  loc_161083D:         Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_1610845:         var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_1610861:         Set var_90 = Me.GridSel
  loc_1610867:         Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_1610886:         Set var_9C = Me.Check1
  loc_161088C:         Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_1610894:         var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_16108B0:         Set var_90 = Me.GridSel
  loc_16108B6:         Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_16108D5:         Set var_9C = Me.GridSel
  loc_16108DB:         Call 0.Method_Proc_47_70_16112240 (3, var_A0)
  loc_16108E3:         var_A0.Left = CVar(CDbl(var_98.Left))
  loc_16108FF:         Set var_9C = Me.GridSel
  loc_1610905:         Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_161090D:         var_12C = var_A0.Height
  loc_161091F:         Set var_90 = Me.GridSel
  loc_1610925:         Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_1610941:         var_D4 = CVar(((CDbl(var_98.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_161094F:         Set var_A8 = Me.GridSel
  loc_1610955:         Call 0.Method_Proc_47_70_16112240 (3, var_B0, CVar(CDbl(var_98.Left)))
  loc_161095D:         var_B0.Top = var_12C
  loc_1610981:         Set var_90 = Me.GridSel
  loc_1610987:         Call 0.Method_Proc_47_70_16112240 (3, var_98)
  loc_16109A6:         Set var_9C = Me.Check1
  loc_16109AC:         Call 0.Method_Proc_47_70_16112240 (3, var_A0)
  loc_16109B4:         var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_16109D0:         Set var_90 = Me.GridSel
  loc_16109D6:         Call 0.Method_Proc_47_70_16112240 (3, var_98)
  loc_16109F5:         Set var_9C = Me.Check1
  loc_16109FB:         Call 0.Method_Proc_47_70_16112240 (3, var_A0)
  loc_1610A03:         var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1610A1C:         Call 0.Method_Me0 (var_94)
  loc_1610A2A:         Set var_90 = Me.GridSel
  loc_1610A30:         Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_1610A38:         var_C4 = var_98.Width
  loc_1610A47:         Call 0.Method_Me0 (var_8C, var_C4)
  loc_1610A65:         var_D4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_C4)) / CDbl(2)))) 'Single
  loc_1610A73:         Set var_9C = Me.GridSel
  loc_1610A79:         Call 0.Method_Proc_47_70_16112240 (2, var_A0)
  loc_1610A81:         var_A0.Left = CVar(CDbl(var_98.Left))
  loc_1610A98:         Set var_98 = Me.FGrid
  loc_1610A9E:         var_12C = var_98.Height
  loc_1610AC5:         var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_1610AD3:         Set var_9C = Me.GridSel
  loc_1610AD9:         Call 0.Method_Proc_47_70_16112240 (2, var_A0, CVar(CDbl(var_98.Left)))
  loc_1610AE1:         var_A0.Top = var_12C
  loc_1610B01:         Set var_9C = Me.GridSel
  loc_1610B07:         Call 0.Method_Proc_47_70_16112240 (2, var_A0)
  loc_1610B0F:         var_12C = var_A0.Height
  loc_1610B21:         Set var_90 = Me.GridSel
  loc_1610B27:         Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_1610B43:         var_D4 = CVar(((CDbl(var_98.Height) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_1610B51:         Set var_A8 = Me.GridSel
  loc_1610B57:         Call 0.Method_Proc_47_70_16112240 (2, var_B0, CVar(CDbl(var_98.Left)))
  loc_1610B5F:         var_B0.Height = var_12C
  loc_1610B83:         Set var_90 = Me.GridSel
  loc_1610B89:         Call 0.Method_Proc_47_70_16112240 (2, var_98)
  loc_1610BA8:         Set var_9C = Me.Check1
  loc_1610BAE:         Call 0.Method_Proc_47_70_16112240 (2, var_A0)
  loc_1610BB6:         var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_1610BD2:         Set var_90 = Me.GridSel
  loc_1610BD8:         Call 0.Method_Proc_47_70_16112240 (2, var_98)
  loc_1610BF7:         Set var_9C = Me.Check1
  loc_1610BFD:         Call 0.Method_Proc_47_70_16112240 (2, var_A0)
  loc_1610C05:         var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1610C1B:       Else
  loc_1610C26:         If (var_11C = 4) Then
  loc_1610C32:           Set var_90 = Me.GridSel
  loc_1610C38:           Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_1610C40:           var_C4 = var_98.Width
  loc_1610C4F:           Call 0.Method_Me0 (var_8C, var_C4)
  loc_1610C65:           var_D4 = CVar((((var_8C / CDbl(2)) - CDbl(var_C4)) / CDbl(2))) 'Single
  loc_1610C73:           Set var_9C = Me.GridSel
  loc_1610C79:           Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_1610C81:           var_A0.Left = 4
  loc_1610C98:           Set var_98 = Me.FGrid
  loc_1610C9E:           var_12C = var_98.Height
  loc_1610CC5:           var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_1610CD3:           Set var_9C = Me.GridSel
  loc_1610CD9:           Call 0.Method_Proc_47_70_16112240 (1, var_A0, 4)
  loc_1610CE1:           var_A0.Top = var_12C
  loc_1610D01:           Set var_90 = Me.GridSel
  loc_1610D07:           Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_1610D26:           Set var_9C = Me.Check1
  loc_1610D2C:           Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_1610D34:           var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_1610D50:           Set var_90 = Me.GridSel
  loc_1610D56:           Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_1610D75:           Set var_9C = Me.Check1
  loc_1610D7B:           Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_1610D83:           var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1610D9C:           Call 0.Method_Me0 (var_94)
  loc_1610DAA:           Set var_90 = Me.GridSel
  loc_1610DB0:           Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_1610DB8:           var_C4 = var_98.Width
  loc_1610DC7:           Call 0.Method_Me0 (var_8C, var_C4)
  loc_1610DE5:           var_D4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_C4)) / CDbl(2)))) 'Single
  loc_1610DF3:           Set var_9C = Me.GridSel
  loc_1610DF9:           Call 0.Method_Proc_47_70_16112240 (2, var_A0)
  loc_1610E01:           var_A0.Left = 4
  loc_1610E18:           Set var_98 = Me.FGrid
  loc_1610E1E:           var_12C = var_98.Height
  loc_1610E45:           var_D4 = CVar(((CDbl(Me.FGrid.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_1610E53:           Set var_9C = Me.GridSel
  loc_1610E59:           Call 0.Method_Proc_47_70_16112240 (2, var_A0, 4)
  loc_1610E61:           var_A0.Top = var_12C
  loc_1610E81:           Set var_90 = Me.GridSel
  loc_1610E87:           Call 0.Method_Proc_47_70_16112240 (2, var_98)
  loc_1610EA6:           Set var_9C = Me.Check1
  loc_1610EAC:           Call 0.Method_Proc_47_70_16112240 (2, var_A0)
  loc_1610EB4:           var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_1610ED0:           Set var_90 = Me.GridSel
  loc_1610ED6:           Call 0.Method_Proc_47_70_16112240 (2, var_98)
  loc_1610EF5:           Set var_9C = Me.Check1
  loc_1610EFB:           Call 0.Method_Proc_47_70_16112240 (2, var_A0)
  loc_1610F03:           var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1610F1F:           Set var_90 = Me.GridSel
  loc_1610F25:           Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_1610F44:           Set var_9C = Me.GridSel
  loc_1610F4A:           Call 0.Method_Proc_47_70_16112240 (3, var_A0)
  loc_1610F52:           var_A0.Left = CVar(CDbl(var_98.Left))
  loc_1610F6E:           Set var_9C = Me.GridSel
  loc_1610F74:           Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_1610F7C:           var_12C = var_A0.Height
  loc_1610F8E:           Set var_90 = Me.GridSel
  loc_1610F94:           Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_1610FB0:           var_D4 = CVar(((CDbl(var_98.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_1610FBE:           Set var_A8 = Me.GridSel
  loc_1610FC4:           Call 0.Method_Proc_47_70_16112240 (3, var_B0, CVar(CDbl(var_98.Left)))
  loc_1610FCC:           var_B0.Top = var_12C
  loc_1610FF0:           Set var_90 = Me.GridSel
  loc_1610FF6:           Call 0.Method_Proc_47_70_16112240 (3, var_98)
  loc_1611015:           Set var_9C = Me.Check1
  loc_161101B:           Call 0.Method_Proc_47_70_16112240 (3, var_A0)
  loc_1611023:           var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_161103F:           Set var_90 = Me.GridSel
  loc_1611045:           Call 0.Method_Proc_47_70_16112240 (3, var_98)
  loc_1611064:           Set var_9C = Me.Check1
  loc_161106A:           Call 0.Method_Proc_47_70_16112240 (3, var_A0)
  loc_1611072:           var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_161108B:           Call 0.Method_Me0 (var_94)
  loc_1611099:           Set var_90 = Me.GridSel
  loc_161109F:           Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_16110A7:           var_C4 = var_98.Width
  loc_16110B6:           Call 0.Method_Me0 (var_8C, var_C4)
  loc_16110D4:           var_D4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_C4)) / CDbl(2)))) 'Single
  loc_16110E2:           Set var_9C = Me.GridSel
  loc_16110E8:           Call 0.Method_Proc_47_70_16112240 (4, var_A0)
  loc_16110F0:           var_A0.Left = CVar(CDbl(var_98.Left))
  loc_161110C:           Set var_9C = Me.GridSel
  loc_1611112:           Call 0.Method_Proc_47_70_16112240 (1, var_A0)
  loc_161111A:           var_12C = var_A0.Height
  loc_161112C:           Set var_90 = Me.GridSel
  loc_1611132:           Call 0.Method_Proc_47_70_16112240 (1, var_98)
  loc_161114E:           var_D4 = CVar(((CDbl(var_98.Top) + CDbl(var_12C)) + CDbl(500))) 'Single
  loc_161115C:           Set var_A8 = Me.GridSel
  loc_1611162:           Call 0.Method_Proc_47_70_16112240 (4, var_B0, CVar(CDbl(var_98.Left)))
  loc_161116A:           var_B0.Top = var_12C
  loc_161118E:           Set var_90 = Me.GridSel
  loc_1611194:           Call 0.Method_Proc_47_70_16112240 (4, var_98)
  loc_16111B3:           Set var_9C = Me.Check1
  loc_16111B9:           Call 0.Method_Proc_47_70_16112240 (4, var_A0)
  loc_16111C1:           var_A0.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_16111DD:           Set var_90 = Me.GridSel
  loc_16111E3:           Call 0.Method_Proc_47_70_16112240 (4, var_98)
  loc_1611202:           Set var_9C = Me.Check1
  loc_1611208:           Call 0.Method_Proc_47_70_16112240 (4, var_A0)
  loc_1611210:           var_A0.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_1611223:         End If
  loc_1611223:       End If
  loc_1611223:     End If
  loc_1611223:   End If
  loc_1611223: End If
  loc_1611223: Exit Sub
End Sub

Public Sub Proc_47_71_E48F2C
  'Data Table: 4E1708
  loc_E48F13: If (Me.FrmList.Visible = &HFF) Then
  loc_E48F22:   Me.FrmList.Visible = False
  loc_E48F2A: End If
  loc_E48F2A: Exit Sub
End Sub

Public Sub Proc_47_72_1280374(arg_C, arg_10, arg_14) '1280374
  'Data Table: 4E1708
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
  loc_127FDDA: On Error Goto loc_128035E
  loc_127FDE0: var_8C = vbNullString
  loc_127FDEB: CRefVarAry
  loc_127FDF3: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_127FE14:   If (arg_C(var_8E) = 0) Then
  loc_127FE17:     GoTo loc_12801AF
  loc_127FE1A:   End If
  loc_127FE2B:   var_90 = CInt(arg_C(var_8E))
  loc_127FE35:   var_A8 = CVar(CLng(var_90)) 'Long
  loc_127FE4D:   Set var_DC = Me.GridSel
  loc_127FE53:   Call 0.Method_Proc_47_72_12803740 (arg_10, var_E0, 0)
  loc_127FE7B:   If (CStr(var_E0.TextMatrix)) = "ü") Then
  loc_127FE87:     If (CInt(arg_14) = 0) Then
  loc_127FEA6:       Set var_DC = Me.GridSel
  loc_127FEAC:       Call 0.Method_Proc_47_72_12803740 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_127FEB4:       var_C8 = var_E0.TextMatrix)
  loc_127FEE5:       Set var_108 = Me.GridSel
  loc_127FEEB:       Call 0.Method_Proc_47_72_12803740 (arg_10, var_10C, 2, CVar(CLng(var_90)), ",")
  loc_127FF23:       var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar(CStr(var_C8)), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)))))
  loc_127FF28:       var_8C = CStr(var_1AC)
  loc_127FF4D:     Else
  loc_127FF56:       If (CInt(arg_14) = 1) Then
  loc_127FF75:         Set var_DC = Me.GridSel
  loc_127FF7B:         Call 0.Method_Proc_47_72_12803740 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_127FF83:         var_C8 = var_E0.TextMatrix)
  loc_127FFBB:         Set var_108 = Me.GridSel
  loc_127FFC1:         Call 0.Method_Proc_47_72_12803740 (arg_10, var_10C, 2, CVar(CLng(var_90)), "," & "'")
  loc_128000E:         var_1AC = (var_C8 + IIf((var_8C = vbNullString), CVar("'" & CStr(var_C8) & "'"), CVar(CVar(var_8C) & CStr(var_10C.TextMatrix)) & "'")))
  loc_1280013:         var_8C = CStr(var_1AC)
  loc_128003F:       End If
  loc_128003F:     End If
  loc_128005E:     Set var_DC = Me.GridSel
  loc_1280064:     Call 0.Method_Proc_47_72_12803740 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_1280096:     If (Len(var_94 & CStr(var_E0.TextMatrix))) < &HFF) Then
  loc_12800B5:       Set var_DC = Me.GridSel
  loc_12800BB:       Call 0.Method_Proc_47_72_12803740 (arg_10, var_E0, 1, CVar(CLng(var_90)))
  loc_12800C3:       var_C8 = var_E0.TextMatrix)
  loc_12800F4:       Set var_108 = Me.GridSel
  loc_12800FA:       Call 0.Method_Proc_47_72_12803740 (arg_10, var_10C, 1, CVar(CLng(var_90)), ",")
  loc_1280111:       var_17C = CVar(CVar(var_94) & CStr(var_10C.TextMatrix))) 'String
  loc_1280118:       var_16C = CVar(CStr(var_C8)) 'String
  loc_128012A:       var_18C = IIf((var_94 = vbNullString), var_16C, var_17C)
  loc_1280132:       var_1AC = (var_C8 + var_18C)
  loc_1280137:       var_94 = CStr(var_1AC)
  loc_1280159:     End If
  loc_128015D:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_128017B:     Set var_DC = Me.GridSel
  loc_1280181:     Call 0.Method_Proc_47_72_12803740 (arg_10, var_E0, vbNullString, 0)
  loc_1280189:     LateIdCallSt
  loc_128019B:   Else
  loc_12801A2:     var_B8 = 0
  loc_12801AB:     VarIndexSt
  loc_12801AF:   End If
  loc_12801AF:   ' Referenced from: 127FE17
  loc_12801B2: Next var_98 'Integer
  loc_12801BF: CRefVarAry
  loc_12801C7: For var_1C0 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_1C0 'Integer
  loc_12801FF:   If CBool(arg_C(var_8E) <> 0) Then
  loc_1280206:     var_A8 = CVar(CLng(CInt(arg_C(var_8E)))) 'Long
  loc_1280224:     Set var_DC = Me.GridSel
  loc_128022A:     Call 0.Method_Proc_47_72_12803740 (arg_10, var_E0, "ü", 0)
  loc_1280232:     LateIdCallSt
  loc_1280241:   End If
  loc_1280244: Next var_1C0 'Integer
  loc_1280251: If (var_8C = vbNullString) Then
  loc_1280254:   var_A8 = 0
  loc_128025D:   var_F0 = 1
  loc_1280270:   Set var_DC = Me.GridSel
  loc_1280276:   Call 0.Method_Proc_47_72_12803740 (arg_10, var_E0)
  loc_128027E:   var_C8 = var_E0.TextMatrix)
  loc_12802A6:   MsgBox(CVar("Select " & CStr(var_C8)), &H40, var_16C, var_17C, var_18C)
  loc_12802CC:   Set var_DC = Me.GridSel
  loc_12802D2:   Call 0.Method_Proc_47_72_12803740 (arg_10, var_E0, var_C8)
  loc_12802F1:   Proc_47_72_1280374 = 0
  loc_12802F7: End If
  loc_12802FA: var_88 = var_8C
  loc_1280300: var_1C2 = arg_10
  loc_1280309: If (var_1C2 = 1) Then
  loc_1280312:   global_72 = var_94
  loc_1280319: Else
  loc_128031F:   If (var_1C2 = 2) Then
  loc_1280328:     global_76 = var_94
  loc_128032F:   Else
  loc_1280335:     If (var_1C2 = 3) Then
  loc_128033E:       global_80 = var_94
  loc_1280345:     Else
  loc_128034B:       If (var_1C2 = 4) Then
  loc_1280354:         global_84 = var_94
  loc_1280358:       End If
  loc_1280358:     End If
  loc_1280358:   End If
  loc_1280358: End If
  loc_1280358: Proc_47_72_1280374 = var_1C2
  loc_128035E: ' Referenced from: 127FDDA
  loc_1280366: Proc_6_60_E62BC4(0, GridSel.DispID_8001)
  loc_128036B: Proc_47_72_1280374 = var_F0
End Sub

Public Sub Proc_47_73_F01BCC
  'Data Table: 4E1708
  Dim var_CC As Variant
  loc_F01B11: If (CLng(Me.FGrid.Row) = CLng(global_124)) Then
  loc_F01B22:   Proc_303_0_FB9B68("	")
  loc_F01B2A:   Exit Sub
  loc_F01B2B: End If
  loc_F01B6A: For var_BC = CInt(CLng(Me.FGrid.Row)) To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_F01B77:   var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F01B9E:   If (CLng(Me.FGrid.RowHeight)) <> 0) Then
  loc_F01BA8:     var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F01BB7:     Me.FGrid.Row = var_CC
  loc_F01BBF:     Exit For
  loc_F01BC2:   End If
  loc_F01BC5: Next var_BC 'Integer
  loc_F01BCA: ' Referenced from: F01BBF
  loc_F01BCA: Exit Sub
End Sub

Public Sub Proc_47_74_1213DE8(arg_C, arg_10) '1213DE8
  'Data Table: 4E1708
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_E8 As CheckBox
  loc_121390B: var_86 = arg_C
  loc_1213914: If (var_86 = 1) Then
  loc_1213933:   Me.Recordset15.CursorLocation = 3
  loc_121395C:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_121396A:   CVarUnk
  loc_121396F:   VerifyVarObj
  loc_121397B:   Set var_8C = Me.GridSel
  loc_1213981:   Call 0.Method_Proc_47_74_1213DE80 (var_86, var_B0, New)
  loc_1213989:   LateIdStAd
  loc_12139AB:   ReDim Preserve global_168(0 To 0)
  loc_12139C2:   global_168(0) = 0
  loc_12139C3: End If
  loc_12139C9: If (var_86 = 2) Then
  loc_12139E8:   Me.Recordset15.CursorLocation = 3
  loc_1213A11:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_1213A1F:   CVarUnk
  loc_1213A24:   VerifyVarObj
  loc_1213A30:   Set var_8C = Me.GridSel
  loc_1213A36:   Call 0.Method_Proc_47_74_1213DE80 (var_86, var_B0, New, 1, -1)
  loc_1213A3E:   LateIdStAd
  loc_1213A60:   ReDim Preserve global_172(0 To 0)
  loc_1213A77:   global_172(0) = 0
  loc_1213A78: End If
  loc_1213A7E: If (var_86 = 3) Then
  loc_1213A9D:   Me.Recordset15.CursorLocation = 3
  loc_1213AC6:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_1213AD4:   CVarUnk
  loc_1213AD9:   VerifyVarObj
  loc_1213AE5:   Set var_8C = Me.GridSel
  loc_1213AEB:   Call 0.Method_Proc_47_74_1213DE80 (var_86, var_B0, New, 1, -1)
  loc_1213AF3:   LateIdStAd
  loc_1213B15:   ReDim Preserve global_176(0 To 0)
  loc_1213B2C:   global_176(0) = 0
  loc_1213B2D: End If
  loc_1213B33: If (var_86 = 4) Then
  loc_1213B52:   Me.Recordset15.CursorLocation = 3
  loc_1213B7B:   Me.Open CVar(arg_10), CVar(MemVar_1F92044), 3
  loc_1213B89:   CVarUnk
  loc_1213B8E:   VerifyVarObj
  loc_1213B9A:   Set var_8C = Me.GridSel
  loc_1213BA0:   Call 0.Method_Proc_47_74_1213DE80 (var_86, var_B0, New, 1, -1, var_B0)
  loc_1213BA8:   LateIdStAd
  loc_1213BCA:   ReDim Preserve global_180(0 To 0)
  loc_1213BE1:   global_180(0) = 0
  loc_1213BE2: End If
  loc_1213BF0: Set var_8C = Me.GridSel
  loc_1213BF6: Call 0.Method_Proc_47_74_1213DE80 (var_86, var_B0, True, var_B0, var_B0)
  loc_1213BFE: var_B0.Visible = var_B0
  loc_1213C19: Set var_8C = Me.GridSel
  loc_1213C1F: Call 0.Method_Proc_47_74_1213DE80 (var_86, var_B0, False)
  loc_1213C27: var_B0.Enabled = 1
  loc_1213C3F: Set var_8C = Me.Check1
  loc_1213C45: Call 0.Method_Proc_47_74_1213DE80 (var_86, var_B0, &HFF)
  loc_1213C4D: var_B0.Visible = True
  loc_1213C6C: Set var_8C = Me.GridSel
  loc_1213C72: Call 0.Method_Proc_47_74_1213DE80 (var_86, var_B0)
  loc_1213C7A: var_B0.Width = CVar(CDbl(5200))
  loc_1213C86: var_9C = 0
  loc_1213CA2: Set var_8C = Me.GridSel
  loc_1213CA8: Call 0.Method_Proc_47_74_1213DE80 (var_86, var_B0, &H258)
  loc_1213CB0: LateIdCallSt
  loc_1213CDB: Set var_8C = Me.GridSel
  loc_1213CE1: Call 0.Method_Proc_47_74_1213DE80 (var_86, var_B0, 0, 2)
  loc_1213CE9: LateIdCallSt
  loc_1213D14: Set var_8C = Me.GridSel
  loc_1213D1A: Call 0.Method_Proc_47_74_1213DE80 (var_86, var_B0, &HFA0, 1)
  loc_1213D22: LateIdCallSt
  loc_1213D40: Set var_8C = Me.Check1
  loc_1213D46: Call 0.Method_Proc_47_74_1213DE80 (var_86, var_B0, CDbl(580), var_B0)
  loc_1213D4E: var_B0.Width = var_B0
  loc_1213D5A: var_9C = 0
  loc_1213D6D: Set var_8C = Me.GridSel
  loc_1213D73: Call 0.Method_Proc_47_74_1213DE80 (var_86, var_B0, var_9C)
  loc_1213D99: Set var_E4 = Me.Check1
  loc_1213D9F: Call 0.Method_Proc_47_74_1213DE80 (var_86, var_E8, CDbl((CLng(var_B0.RowHeight)) + &H14)))
  loc_1213DA7: var_E8.Height = var_B0
  loc_1213DCA: Set var_8C = Me.Check1
  loc_1213DD0: Call 0.Method_Proc_47_74_1213DE80 (var_86, var_B0, CInt(1))
  loc_1213DD8: var_B0.Value = var_9C
  loc_1213DE4: Exit Sub
End Sub

Public Sub Proc_47_75_13348C8
  'Data Table: 4E1708
  Dim var_AC As Variant
  Dim var_CC As Long
  Dim var_EC As String
  Dim var_10C As Variant
  loc_1334122: var_98 = global_52
  loc_133412D: If (var_98 = "RoomStatus") Then
  loc_1334134:   Set var_9C = Me.FGrid
  loc_133413A:   var_AC = CVar(CLng(0)) 'Long
  loc_133413F:   var_CC = 0
  loc_1334148:   var_EC = "For Date"
  loc_1334151:   LateIdCallSt
  loc_133415C:   var_AC = CVar(CLng(0)) 'Long
  loc_1334161:   var_CC = &H10E
  loc_133416D:   LateIdCallSt
  loc_1334178:   var_AC = CVar(CLng(3)) 'Long
  loc_133417D:   var_CC = 0
  loc_1334186:   var_EC = "Occupancy Status"
  loc_133418F:   LateIdCallSt
  loc_133419A:   var_AC = CVar(CLng(3)) 'Long
  loc_133419F:   var_CC = &H10E
  loc_13341AB:   LateIdCallSt
  loc_13341B6:   var_AC = CVar(CLng(0)) 'Long
  loc_13341BB:   var_CC = 1
  loc_13341C9:   var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_13341D0:   LateIdCallSt
  loc_13341DE:   var_AC = CVar(CLng(3)) 'Long
  loc_13341E3:   var_CC = 1
  loc_13341EC:   var_EC = "ALL"
  loc_13341F5:   LateIdCallSt
  loc_13341FF:   Set var_9C = Nothing 
  loc_1334223:   Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1334232:   global_124 = CInt(3)
  loc_133423D:   global_128 = 1
  loc_133424F:   Call Proc_47_74_1213DE8(1, "Select '' as O,Name AS Name, Code As Code From Depart where RestType='House Keeping' Order by Name")
  loc_1334257: Else
  loc_133425F:   If (var_98 = "ComplaintList") Then
  loc_1334266:     Set var_118 = Me.FGrid
  loc_133426C:     var_AC = CVar(CLng(0)) 'Long
  loc_1334271:     var_CC = 0
  loc_133427A:     var_EC = "Up To Date"
  loc_1334283:     LateIdCallSt
  loc_133428E:     var_AC = CVar(CLng(0)) 'Long
  loc_1334293:     var_CC = &H10E
  loc_133429F:     LateIdCallSt
  loc_13342AA:     var_AC = CVar(CLng(2)) 'Long
  loc_13342AF:     var_CC = 0
  loc_13342B8:     var_EC = "For Status"
  loc_13342C1:     LateIdCallSt
  loc_13342CC:     var_AC = CVar(CLng(2)) 'Long
  loc_13342D1:     var_CC = &H10E
  loc_13342DD:     LateIdCallSt
  loc_13342E8:     var_AC = CVar(CLng(0)) 'Long
  loc_13342ED:     var_CC = 1
  loc_13342FB:     var_10C = CVar(CStr(MemVar_1F920F4)) 'String
  loc_1334302:     LateIdCallSt
  loc_1334310:     var_AC = CVar(CLng(2)) 'Long
  loc_1334315:     var_CC = 1
  loc_133431E:     var_EC = "ALL"
  loc_1334327:     LateIdCallSt
  loc_1334331:     Set var_118 = Nothing 
  loc_1334355:     Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1334364:     global_124 = CInt(2)
  loc_133436F:     global_128 = 1
  loc_1334381:     Call Proc_47_74_1213DE8(1, "Select '' as O,Category As Category,Code As Code From ComplaintCategory Order By Category")
  loc_1334389:   Else
  loc_1334391:     If (var_98 = "IssueRegister") Then
  loc_1334398:       Set var_11C = Me.FGrid
  loc_133439E:       var_AC = CVar(CLng(0)) 'Long
  loc_13343A3:       var_CC = 0
  loc_13343AC:       var_EC = "From Date"
  loc_13343B5:       LateIdCallSt
  loc_13343C0:       var_AC = CVar(CLng(0)) 'Long
  loc_13343C5:       var_CC = &H10E
  loc_13343D1:       LateIdCallSt
  loc_13343DC:       var_AC = CVar(CLng(1)) 'Long
  loc_13343E1:       var_CC = 0
  loc_13343EA:       var_EC = "To Date"
  loc_13343F3:       LateIdCallSt
  loc_13343FE:       var_AC = CVar(CLng(1)) 'Long
  loc_1334403:       var_CC = &H10E
  loc_133440F:       LateIdCallSt
  loc_133441A:       var_AC = CVar(CLng(2)) 'Long
  loc_133441F:       var_CC = 0
  loc_1334428:       var_EC = "Type"
  loc_1334431:       LateIdCallSt
  loc_133443C:       var_AC = CVar(CLng(2)) 'Long
  loc_1334441:       var_CC = &H10E
  loc_133444D:       LateIdCallSt
  loc_1334458:       var_AC = CVar(CLng(0)) 'Long
  loc_133445D:       var_CC = 1
  loc_133446B:       var_10C = CVar(CStr(MemVar_1F920F4)) 'String
  loc_1334472:       LateIdCallSt
  loc_1334480:       var_AC = CVar(CLng(1)) 'Long
  loc_1334485:       var_CC = 1
  loc_1334493:       var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_133449A:       LateIdCallSt
  loc_13344A8:       var_AC = CVar(CLng(2)) 'Long
  loc_13344AD:       var_CC = 1
  loc_13344B6:       var_EC = "Issue"
  loc_13344BF:       LateIdCallSt
  loc_13344C9:       Set var_11C = Nothing 
  loc_13344ED:       Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_13344FC:       global_124 = CInt(2)
  loc_1334507:       global_128 = 1
  loc_1334519:       Call Proc_47_74_1213DE8(1, "Select '' as O,Name As RoomNo,Code As Code From RoomMast where Type in ('RO') Order By Name")
  loc_1334521:     Else
  loc_1334529:       If (var_98 = "StockRegister") Then
  loc_1334530:         Set var_120 = Me.FGrid
  loc_1334536:         var_AC = CVar(CLng(0)) 'Long
  loc_133453B:         var_CC = 0
  loc_1334544:         var_EC = "From Date"
  loc_133454D:         LateIdCallSt
  loc_1334558:         var_AC = CVar(CLng(0)) 'Long
  loc_133455D:         var_CC = &H10E
  loc_1334569:         LateIdCallSt
  loc_1334574:         var_AC = CVar(CLng(1)) 'Long
  loc_1334579:         var_CC = 0
  loc_1334582:         var_EC = "To Date"
  loc_133458B:         LateIdCallSt
  loc_1334596:         var_AC = CVar(CLng(1)) 'Long
  loc_133459B:         var_CC = &H10E
  loc_13345A7:         LateIdCallSt
  loc_13345B2:         var_AC = CVar(CLng(2)) 'Long
  loc_13345B7:         var_CC = 0
  loc_13345C0:         var_EC = "ForType"
  loc_13345C9:         LateIdCallSt
  loc_13345D4:         var_AC = CVar(CLng(2)) 'Long
  loc_13345D9:         var_CC = &H10E
  loc_13345E5:         LateIdCallSt
  loc_13345F0:         var_AC = CVar(CLng(0)) 'Long
  loc_13345F5:         var_CC = 1
  loc_1334603:         var_10C = CVar(CStr(MemVar_1F920F4)) 'String
  loc_133460A:         LateIdCallSt
  loc_1334618:         var_AC = CVar(CLng(1)) 'Long
  loc_133461D:         var_CC = 1
  loc_133462B:         var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1334632:         LateIdCallSt
  loc_1334640:         var_AC = CVar(CLng(2)) 'Long
  loc_1334645:         var_CC = 1
  loc_133464E:         var_EC = "Room"
  loc_1334657:         LateIdCallSt
  loc_1334661:         Set var_120 = Nothing 
  loc_1334685:         Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_1334694:         global_124 = CInt(2)
  loc_133469F:         global_128 = 2
  loc_13346A6:         var_88 = "Select '' as O,Name As Item,Code As Code From ItemMast where Type Not in('Finish','Semi Finish') And ItemType='Store' Order By Name"
  loc_13346B1:         Call Proc_47_74_1213DE8(1, var_88)
  loc_13346B9:         var_AC = CVar(CLng(2)) 'Long
  loc_13346BE:         var_CC = 1
  loc_13346ED:         If (CStr(Me.FGrid.TextMatrix)) = "Room") Then
  loc_13346FE:           Call Proc_47_74_1213DE8(2, "Select '' as O,Name As RoomNo,Code As Code From RoomMast where Type in ('RO') Order By Name")
  loc_1334706:         Else
  loc_1334714:           Call Proc_47_74_1213DE8(2, "Select '' as O,Name As Department,Code As Code From Depart where RestType in ('House Keeping')  Order By Name")
  loc_1334719:         End If
  loc_133471C:       Else
  loc_1334724:         If (var_98 = "StockSumm") Then
  loc_133472B:           Set var_128 = Me.FGrid
  loc_1334731:           var_AC = CVar(CLng(0)) 'Long
  loc_1334736:           var_CC = 0
  loc_133473F:           var_EC = "From Date"
  loc_1334748:           LateIdCallSt
  loc_1334753:           var_AC = CVar(CLng(0)) 'Long
  loc_1334758:           var_CC = &H10E
  loc_1334764:           LateIdCallSt
  loc_133476F:           var_AC = CVar(CLng(1)) 'Long
  loc_1334774:           var_CC = 0
  loc_133477D:           var_EC = "To Date"
  loc_1334786:           LateIdCallSt
  loc_1334791:           var_AC = CVar(CLng(1)) 'Long
  loc_1334796:           var_CC = &H10E
  loc_13347A2:           LateIdCallSt
  loc_13347AD:           var_AC = CVar(CLng(2)) 'Long
  loc_13347B2:           var_CC = 0
  loc_13347BB:           var_EC = "ForType"
  loc_13347C4:           LateIdCallSt
  loc_13347CF:           var_AC = CVar(CLng(2)) 'Long
  loc_13347D4:           var_CC = &H10E
  loc_13347E0:           LateIdCallSt
  loc_13347EB:           var_AC = CVar(CLng(0)) 'Long
  loc_13347F0:           var_CC = 1
  loc_13347FE:           var_10C = CVar(CStr(MemVar_1F920F4)) 'String
  loc_1334805:           LateIdCallSt
  loc_1334813:           var_AC = CVar(CLng(1)) 'Long
  loc_1334818:           var_CC = 1
  loc_1334826:           var_10C = CVar(CStr(MemVar_1F920EC)) 'String
  loc_133482D:           LateIdCallSt
  loc_133483B:           var_AC = CVar(CLng(2)) 'Long
  loc_1334840:           var_CC = 1
  loc_1334849:           var_EC = "Room"
  loc_1334852:           LateIdCallSt
  loc_133485C:           Set var_128 = Nothing 
  loc_1334880:           Me.FGrid.Row = CVar(CLng(CInt(0)))
  loc_133488F:           global_124 = CInt(2)
  loc_133489A:           global_128 = 2
  loc_13348A1:           var_88 = "Select '' as O,Name As Item,Code As Code From ItemMast where Type Not in('Finish','Semi Finish') And ItemType='Store' Order By Name"
  loc_13348AC:           Call Proc_47_74_1213DE8(1, var_88)
  loc_13348BF:           Call Proc_47_74_1213DE8(2, "Select '' as O,Name As RoomNo,Code As Code From RoomMast where Type in ('RO') Order By Name")
  loc_13348C4:         End If
  loc_13348C4:       End If
  loc_13348C4:     End If
  loc_13348C4:   End If
  loc_13348C4: End If
  loc_13348C4: Exit Sub
End Sub

Public Sub Proc_47_76_105F408(arg_C, arg_10) '105F408
  'Data Table: 4E1708
  Dim var_98 As Variant
  Dim var_B8 As Long
  Dim var_CC As MSHFlexGrid
  Dim var_86 As Integer
  loc_105F190: var_98 = CVar(CLng(arg_C)) 'Long
  loc_105F195: var_B8 = 1
  loc_105F1C4: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_105F1E7:   MsgBox(CVar(arg_10 & " Should not be Blank."), &H40, "Validation Check", var_100, var_110)
  loc_105F1FB:   Set var_CC = Me.FGrid
  loc_105F21F:   Me.FGrid.Row = CVar(CLng(arg_C))
  loc_105F23A:   Me.FGrid.Col = 1
  loc_105F244:   var_86 = 0
  loc_105F24A: Else
  loc_105F257:   If ((arg_C = 0) Or (arg_C = 1)) Then
  loc_105F25E:     var_98 = CVar(CLng(arg_C)) 'Long
  loc_105F263:     var_B8 = 1
  loc_105F293:     If (CDate(CStr(Me.FGrid.TextMatrix))) < MemVar_1F920F4) Then
  loc_105F2C1:       MsgBox(CVar(arg_10 & " Should not be less than ") & CDate(MemVar_1F920F4), &H40, "Validation Check", var_110, var_120)
  loc_105F2D7:       Set var_CC = Me.FGrid
  loc_105F2FB:       Me.FGrid.Row = CVar(CLng(arg_C))
  loc_105F316:       Me.FGrid.Col = 1
  loc_105F320:       var_86 = 0
  loc_105F326:     Else
  loc_105F32A:       var_98 = CVar(CLng(arg_C)) 'Long
  loc_105F32F:       var_B8 = 1
  loc_105F35F:       If (CDate(CStr(Me.FGrid.TextMatrix))) > MemVar_1F920FC) Then
  loc_105F38D:         MsgBox(CVar(arg_10 & " Should not be greater than ") & CDate(MemVar_1F920FC), &H40, "Validation Check", var_110, var_120)
  loc_105F3A3:         Set var_CC = Me.FGrid
  loc_105F3C7:         Me.FGrid.Row = CVar(CLng(arg_C))
  loc_105F3E2:         Me.FGrid.Col = 1
  loc_105F3EC:         var_86 = 0
  loc_105F3F2:       Else
  loc_105F3F4:         var_86 = &HFF
  loc_105F3F7:       End If
  loc_105F3F7:     End If
  loc_105F3FA:   Else
  loc_105F3FC:     var_86 = &HFF
  loc_105F3FF:   End If
  loc_105F3FF: End If
  loc_105F3FF: Proc_47_76_105F408 = var_86
End Sub

Public Sub Proc_47_77_E1AD78
  'Data Table: 4E1708
  loc_E1AD64: On Error Goto loc_E1AD68
  loc_E1AD67: Exit Sub
  loc_E1AD68: ' Referenced from: E1AD64
  loc_E1AD70: Proc_6_60_E62BC4(0)
  loc_E1AD75: Exit Sub
End Sub
