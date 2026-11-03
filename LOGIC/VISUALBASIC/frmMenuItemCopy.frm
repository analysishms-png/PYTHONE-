VERSION 5.00
Begin VB.Form frmMenuItemCopy
  Caption = "Menu Item Copy"
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
  ClientWidth = 12960
  ClientHeight = 9765
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12960
    Height = 450
    Visible = 0   'False
    TabIndex = 21
  End
  Begin CommandButton CmdExitz
    Caption = "E&xit"
    BackColor = &HC0FFFF&
    Left = 13710
    Top = 6645
    Width = 1830
    Height = 495
    Visible = 0   'False
    TabIndex = 18
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4815
    Top = 1845
    Width = 1740
    Height = 285
    TabIndex = 2
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4815
    Top = 1215
    Width = 4050
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 50
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
    Left = 4815
    Top = 2475
    Width = 4050
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin CommandButton cmdCopyz
    Caption = "&Copy"
    BackColor = &HC0FFFF&
    Left = 13260
    Top = 4845
    Width = 1830
    Height = 495
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
    Style = 1
  End
  Begin CheckBox Check1
    Caption = "ALL"
    BackColor = &HC00000&
    ForeColor = &H8000000E&
    Left = 2100
    Top = 2925
    Width = 615
    Height = 195
    TabIndex = 11
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DGOutlet
    Left = 9165
    Top = 6165
    Width = 4230
    Height = 3060
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin DataGrid DGItemGroup
    Left = 9090
    Top = 5805
    Width = 4230
    Height = 2670
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4815
    Top = 2160
    Width = 4050
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 50
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
    Left = 4815
    Top = 1530
    Width = 4050
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin MSHFlexGrid FGrid1
    Left = 1785
    Top = 2865
    Width = 9945
    Height = 5625
    TabIndex = 8
  End
  Begin MSFlexGrid FGPoint
    Left = 11550
    Top = 690
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 9
  End
  Begin DataGrid DGItemCat
    Left = 9060
    Top = 5415
    Width = 4230
    Height = 2670
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin BtnEnh CmdExit
    Left = 10245
    Top = 1695
    Width = 1275
    Height = 1050
    TabIndex = 19
  End
  Begin BtnEnh cmdCopy
    Left = 8970
    Top = 1710
    Width = 1275
    Height = 1050
    TabIndex = 20
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 17
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
  Begin Label LblName
    Caption = "Applicable From"
    Index = 3
    ForeColor = &HC00000&
    Left = 2310
    Top = 1830
    Width = 1575
    Height = 240
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
    Caption = "Restaurant Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 2310
    Top = 1200
    Width = 1635
    Height = 240
    TabIndex = 15
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
    Caption = "Source Restaurant Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 2310
    Top = 1515
    Width = 2370
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
    Caption = "Item Group"
    Index = 1
    ForeColor = &HC00000&
    Left = 2310
    Top = 2145
    Width = 1065
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
    Caption = "Item Category"
    Index = 4
    ForeColor = &HC00000&
    Left = 2310
    Top = 2460
    Width = 1335
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
End

Attribute VB_Name = "frmMenuItemCopy"

Private global_88 As Integer

Private Sub Check1_Click() '100EED4
  'Data Table: 496164
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As String
  Dim var_108 As MSHFlexGrid
  loc_100ECD3: If (Me.Check1.Value = 1) Then
  loc_100ECE9:   Me.FGrid1.Col = 1
  loc_100ED16:   For var_C4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 2)): var_86 = var_C4 'Integer
  loc_100ED20:     var_A0 = CVar(CLng(var_86)) 'Long
  loc_100ED28:     var_D4 = CVar(CLng(1)) 'Long
  loc_100ED2D:     var_F4 = vbNullString
  loc_100ED37:     Set var_8C = Me.FGrid1
  loc_100ED3D:     LateIdCallSt
  loc_100ED67:     If (CLng(Me.FGrid1.Col) = 1) Then
  loc_100ED6E:       var_A0 = CVar(CLng(var_86)) 'Long
  loc_100ED86:       var_D4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_100EDB9:       If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_100EDCF:         Me.FGrid1.Row = CVar(CLng(var_86))
  loc_100EDE7:         Me.FGrid1.CellFontName = "wingdings"
  loc_100EE01:         Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_100EE1C:         Me.FGrid1.CellForeColor = &HFF0000
  loc_100EE28:         var_A0 = CVar(CLng(var_86)) 'Long
  loc_100EE40:         var_D4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_100EE45:         var_F4 = "ü"
  loc_100EE4F:         Set var_108 = Me.FGrid1
  loc_100EE55:         LateIdCallSt
  loc_100EE67:       End If
  loc_100EE67:     End If
  loc_100EE6A:   Next var_C4 'Integer
  loc_100EE72: Else
  loc_100EE97:   For var_120 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_86 = var_120 'Integer
  loc_100EEA1:     var_A0 = CVar(CLng(var_86)) 'Long
  loc_100EEA9:     var_D4 = CVar(CLng(1)) 'Long
  loc_100EEAE:     var_F4 = vbNullString
  loc_100EEB8:     Set var_8C = Me.FGrid1
  loc_100EEBE:     LateIdCallSt
  loc_100EECC:   Next var_120 'Integer
  loc_100EED1: End If
  loc_100EED1: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E153D4
  'Data Table: 496164
  Dim var_1301 As Double
  loc_E153C9: Me.Global.Unload Me
  loc_E153D1: Exit Sub
  loc_E153D2: var_1301 = 
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1377560
  'Data Table: 496164
  Dim var_92 As Integer
  Dim var_C4 As String
  Dim Me As Recordset15
  Dim var_88 As DataGrid
  Dim var_8C As TextBox
  Dim var_10C As String
  loc_1376CDC: On Error Goto loc_1377536
  loc_1376CE9: Set var_88 = Me.Txt
  loc_1376CEF: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1376CFD: Proc_183_28_E20B20(var_8C)
  loc_1376D09: Call Proc_176_27_EF80A0(var_8C)
  loc_1376D11: var_92 = Index
  loc_1376D1C: If (var_92 = CInt(0)) Then
  loc_1376D2F:   Set var_88 = Me.Txt
  loc_1376D35:   Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_1376D60:   Me.Filter = "Name <>'" & Trim(CVar(var_8C)) & "'"
  loc_1376D86:   Me.DGOutlet.Tag = CVar(CStr(Index))
  loc_1376DA8:   If (Me.RecordCount > 0) Then
  loc_1376DB6:     Set var_8C = Me.FGPoint
  loc_1376DCE:     Proc_6_137_1193554(Me.DGOutlet, global_56, Index)
  loc_1376DDC:   End If
  loc_1376E2A:   Set var_88 = Me.Txt
  loc_1376E30:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100)
  loc_1376E38:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1376E50:   If (var_8C Or (var_100 = vbNullString)) Then
  loc_1376E53:     Exit Sub
  loc_1376E54:   End If
  loc_1376E61:   Set var_88 = Me.Txt
  loc_1376E67:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1376E6F:   var_100 = var_8C.Text
  loc_1376E81:   var_C4 = "Name"
  loc_1376EBC:   If CBool(CVar(var_100) <> Me.Fields.Item(var_C4).Value) Then
  loc_1376EC5:     Me.MoveFirst
  loc_1376EE8:     Set var_88 = Me.Txt
  loc_1376EEE:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100, "Name ='")
  loc_1376EF6:     0 = var_8C.Text
  loc_1376F0F:     Me.Find 1 & var_100 & "'", var_C4, var_92
  loc_1376F24:   End If
  loc_1376F27: Else
  loc_1376F2F:   If (var_92 = CInt(1)) Then
  loc_1376F43:     Set var_88 = Me.Txt
  loc_1376F49:     Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_1376F51:     var_100 = var_8C.Tag
  loc_1376F76:     Me.Filter = CVar("Depart='" & Proc_6_38_E68A98(CVar(var_100)) & "'")
  loc_1376FA7:     If (Me.RecordCount > 0) Then
  loc_1376FB5:       Set var_8C = Me.FGPoint
  loc_1376FCD:       Proc_6_137_1193554(Me.DGItemGroup, global_60)
  loc_1376FDB:     End If
  loc_1377029:     Set var_88 = Me.Txt
  loc_137702F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100)
  loc_1377037:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_137704F:     If (Index Or (var_100 = vbNullString)) Then
  loc_1377052:       Exit Sub
  loc_1377053:     End If
  loc_1377060:     Set var_88 = Me.Txt
  loc_1377066:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_137706E:     var_100 = var_8C.Text
  loc_1377080:     var_C4 = "Name"
  loc_13770BB:     If CBool(CVar(var_100) <> Me.Fields.Item(var_C4).Value) Then
  loc_13770C4:       Me.MoveFirst
  loc_13770E7:       Set var_88 = Me.Txt
  loc_13770ED:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100, "Name ='")
  loc_13770F5:       0 = var_8C.Text
  loc_137710E:       Me.Find 1 & var_100 & "'", var_C4, var_8C
  loc_1377123:     End If
  loc_1377126:   Else
  loc_137712E:     If (var_92 = CInt(3)) Then
  loc_1377141:       Set var_88 = Me.Txt
  loc_1377147:       Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_1377172:       Me.Filter = "Name <>'" & Trim(CVar(var_8C)) & "' And RestType<>'Banquet'"
  loc_1377198:       Me.DGOutlet.Tag = CVar(CStr(Index))
  loc_13771BA:       If (Me.RecordCount > 0) Then
  loc_13771C8:         Set var_8C = Me.FGPoint
  loc_13771E0:         Proc_6_137_1193554(Me.DGOutlet, global_56)
  loc_13771EE:       End If
  loc_137723C:       Set var_88 = Me.Txt
  loc_1377242:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100)
  loc_137724A:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1377262:       If (Index Or (var_100 = vbNullString)) Then
  loc_1377265:         Exit Sub
  loc_1377266:       End If
  loc_1377273:       Set var_88 = Me.Txt
  loc_1377279:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1377281:       var_100 = var_8C.Text
  loc_1377293:       var_C4 = "Name"
  loc_13772CE:       If CBool(CVar(var_100) <> Me.Fields.Item(var_C4).Value) Then
  loc_13772D7:         Me.MoveFirst
  loc_13772FA:         Set var_88 = Me.Txt
  loc_1377300:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100, "Name ='")
  loc_1377308:         0 = var_8C.Text
  loc_1377321:         Me.Find 1 & var_100 & "'", var_C4, var_8C
  loc_1377336:       End If
  loc_1377339:     Else
  loc_1377341:       If (var_92 = CInt(2)) Then
  loc_1377355:         Set var_88 = Me.Txt
  loc_137735B:         Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_1377363:         var_100 = var_8C.Tag
  loc_1377388:         Me.Filter = CVar("Depart='" & Proc_6_38_E68A98(CVar(var_100)) & "'")
  loc_13773B9:         If (Me.RecordCount > 0) Then
  loc_13773C7:           Set var_8C = Me.FGPoint
  loc_13773DF:           Proc_6_137_1193554(Me.DGItemCat, global_64)
  loc_13773ED:         End If
  loc_137743B:         Set var_88 = Me.Txt
  loc_1377441:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100)
  loc_1377449:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1377461:         If (Index Or (var_100 = vbNullString)) Then
  loc_1377464:           Exit Sub
  loc_1377465:         End If
  loc_1377472:         Set var_88 = Me.Txt
  loc_1377478:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1377480:         var_100 = var_8C.Text
  loc_1377492:         var_C4 = "Name"
  loc_13774CD:         If CBool(CVar(var_100) <> Me.Fields.Item(var_C4).Value) Then
  loc_13774D6:           Me.MoveFirst
  loc_13774F9:           Set var_88 = Me.Txt
  loc_13774FF:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100, "Name ='")
  loc_1377507:           0 = var_8C.Text
  loc_1377520:           Me.Find 1 & var_100 & "'", var_C4, var_8C
  loc_1377535:         End If
  loc_1377535:       End If
  loc_1377535:     End If
  loc_1377535:   End If
  loc_1377535: End If
  loc_1377535: Exit Sub
  loc_1377536: ' Referenced from: 1376CDC
  loc_137753C: Call 0.Method_arg_50 (var_100)
  loc_1377544: var_10C = "Txt_GotFocus"
  loc_1377551: Proc_183_57_104AA84(var_100)
  loc_137755D: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11E12C0
  'Data Table: 496164
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  Dim var_9C As MSFlexGrid
  loc_11E0E58: On Error Goto loc_11E1295
  loc_11E0E65: If (CLng(Shift) = &H1B) Then
  loc_11E0E68:   Call Proc_176_27_EF80A0()
  loc_11E0E6D:   Exit Sub
  loc_11E0E6E: End If
  loc_11E0E71: var_88 = KeyCode
  loc_11E0E7C: If Not (var_88 = CInt(0)) Then
  loc_11E0E87:   If (var_88 = CInt(3)) Then
  loc_11E0E8A:   End If
  loc_11E0EA7:   Set var_9C = Me.FGPoint
  loc_11E0EB2:   Set var_98 = Nothing
  loc_11E0EE0:   Proc_6_69_134A198(Me.DGOutlet, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_11E0F4F:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11E0F75:     Proc_6_138_106D6F8(Me.DGOutlet, global_56, KeyCode, Me.FGPoint, 1)
  loc_11E0F83:   End If
  loc_11E0F86: Else
  loc_11E0F8E:   If (var_88 = CInt(1)) Then
  loc_11E0FB9:     Set var_98 = Nothing
  loc_11E0FE7:     Proc_6_69_134A198(Me.DGItemGroup, Me.Txt, KeyCode, global_60, Shift, 0, 1)
  loc_11E1056:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11E105D:       Set var_98 = Me.DGItemGroup
  loc_11E107C:       Proc_6_138_106D6F8(var_98, global_60, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_11E108A:     End If
  loc_11E108D:   Else
  loc_11E1095:     If (var_88 = CInt(2)) Then
  loc_11E10EE:       Proc_6_69_134A198(Me.DGItemCat, Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_11E115D:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11E1183:         Proc_6_138_106D6F8(Me.DGItemCat, global_64, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_11E1191:       End If
  loc_11E1191:     End If
  loc_11E1191:   End If
  loc_11E1191: End If
  loc_11E11C2: Set var_98 = Me.DGItemCat
  loc_11E11D9: Set var_9C = Me.FGPoint
  loc_11E1202: If ((((CBool(Me.DGOutlet.Visible) = 0) And (CBool(Me.DGItemGroup.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_11E1235:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (((KeyCode = CInt(4)) Or (KeyCode = CInt(2))) Or (KeyCode = CInt(1)))) Then
  loc_11E1240:     Call Txt_Validate(KeyCode)
  loc_11E124B:     Call Proc_176_28_161A6A4(KeyCode, 0, 0, var_98)
  loc_11E1250:   End If
  loc_11E1265:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11E126E:     Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_11E1273:   End If
  loc_11E1286:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(3))) Then
  loc_11E128F:     Proc_6_76_E52838(Shift, arg_14)
  loc_11E1294:   End If
  loc_11E1294: End If
  loc_11E1294: Exit Sub
  loc_11E1295: ' Referenced from: 11E0E58
  loc_11E129B: Call 0.Method_arg_50 (var_F4, 0)
  loc_11E12B0: Proc_183_57_104AA84(var_F4, "Txt_KeyDown")
  loc_11E12BC: Exit Sub
  loc_11E12BD: var_88() = 
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1000AD8
  'Data Table: 496164
  Dim var_86 As Integer
  loc_10008D8: On Error Goto loc_1000AAF
  loc_10008DE: var_86 = KeyAscii
  loc_10008E9: If Not (var_86 = CInt(0)) Then
  loc_10008F4:   If (var_86 = CInt(3)) Then
  loc_10008F7:   End If
  loc_1000913:   If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_1000925:     var_A0 = "Name"
  loc_1000940:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56, arg_10)
  loc_1000972:     Proc_6_138_106D6F8(Me.DGOutlet, global_56, KeyAscii, Me.FGPoint)
  loc_1000980:   End If
  loc_1000983: Else
  loc_100098B:   If (var_86 = CInt(1)) Then
  loc_10009AA:     If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_10009D7:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_1000A09:       Proc_6_138_106D6F8(Me.DGItemGroup, global_60, KeyAscii, Me.FGPoint)
  loc_1000A17:     End If
  loc_1000A1A:   Else
  loc_1000A22:     If (var_86 = CInt(2)) Then
  loc_1000A41:       If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_1000A53:         var_A0 = "Name"
  loc_1000A6E:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, var_A0)
  loc_1000AA0:         Proc_6_138_106D6F8(Me.DGItemCat, global_64, KeyAscii, Me.FGPoint, 0)
  loc_1000AAE:       End If
  loc_1000AAE:     End If
  loc_1000AAE:   End If
  loc_1000AAE: End If
  loc_1000AAE: Exit Sub
  loc_1000AAF: ' Referenced from: 10008D8
  loc_1000AB5: Call 0.Method_arg_50 (var_A0, 0, var_A0)
  loc_1000ACA: Proc_183_57_104AA84(var_A0, "TXT_KeyPress")
  loc_1000AD6: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '10A5994
  'Data Table: 496164
  Dim var_86 As Integer
  Dim var_A4 As TextBox
  loc_10A56D0: On Error Goto loc_10A596A
  loc_10A56D6: var_86 = KeyCode
  loc_10A56E1: If Not (var_86 = CInt(0)) Then
  loc_10A56EC:   If (var_86 = CInt(3)) Then
  loc_10A56EF:   End If
  loc_10A5712:   Set var_A0 = Me.Txt
  loc_10A5718:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8)
  loc_10A5720:   (CBool(Me.DGOutlet.Visible) = &HFF) = var_A4.Text
  loc_10A573D:   If (var_86 And (var_A8 <> vbNullString)) Then
  loc_10A5751:     var_A8 = "Name"
  loc_10A5775:     Proc_6_68_129FB34(Me.DGOutlet, Me.Txt, KeyCode)
  loc_10A578C:     Set var_A4 = Me.DGOutlet
  loc_10A57AB:     Proc_6_138_106D6F8(var_A4, global_56, KeyCode, Me.FGPoint)
  loc_10A57B9:   End If
  loc_10A57BC: Else
  loc_10A57C4:   If (var_86 = CInt(1)) Then
  loc_10A57EA:     Set var_A0 = Me.Txt
  loc_10A57F0:     Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8, (CBool(Me.DGItemGroup.Visible) = &HFF))
  loc_10A57F8:     global_56 = var_A4.Text
  loc_10A5815:     If (Shift And (var_A8 <> vbNullString)) Then
  loc_10A5829:       var_A8 = "Name"
  loc_10A584D:       Proc_6_68_129FB34(Me.DGItemGroup, Me.Txt, KeyCode, global_60)
  loc_10A5864:       Set var_A4 = Me.DGItemGroup
  loc_10A5883:       Proc_6_138_106D6F8(var_A4, global_60, KeyCode, Me.FGPoint)
  loc_10A5891:     End If
  loc_10A5894:   Else
  loc_10A589C:     If (var_86 = CInt(2)) Then
  loc_10A58C2:       Set var_A0 = Me.Txt
  loc_10A58C8:       Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8, (CBool(Me.DGItemCat.Visible) = &HFF))
  loc_10A58D0:       Shift = var_A4.Text
  loc_10A58ED:       If (var_A8 And (var_A8 <> vbNullString)) Then
  loc_10A5901:         var_A8 = "Name"
  loc_10A5925:         Proc_6_68_129FB34(Me.DGItemCat, Me.Txt, KeyCode, global_64)
  loc_10A595B:         Proc_6_138_106D6F8(Me.DGItemCat, global_64, KeyCode, Me.FGPoint)
  loc_10A5969:       End If
  loc_10A5969:     End If
  loc_10A5969:   End If
  loc_10A5969: End If
  loc_10A5969: Exit Sub
  loc_10A596A: ' Referenced from: 10A56D0
  loc_10A5970: Call 0.Method_arg_50 (var_A8, Shift)
  loc_10A5985: Proc_183_57_104AA84(var_A8, "Txt_KeyUp")
  loc_10A5991: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F9FC
  'Data Table: 496164
  loc_E4F9DA: Set var_88 = Me.Txt
  loc_E4F9E0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F9EE: Proc_6_73_E22704(var_8C)
  loc_E4F9FA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12D3024
  'Data Table: 496164
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_D0 As String
  Dim var_94 As Fields15
  Dim var_D4 As Variant
  Dim var_8C As Fields15
  Dim var_98 As String
  Dim var_100 As TextBox
  loc_12D2994: On Error Goto loc_12D2FFB
  loc_12D299A: var_86 = Cancel
  loc_12D29A5: If Not (var_86 = CInt(0)) Then
  loc_12D29B0:   If (var_86 = CInt(3)) Then
  loc_12D29B3:   End If
  loc_12D29BD:   Set var_8C = Me.Txt
  loc_12D29C3:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D29CB:   var_98 = "Outlet Name"
  loc_12D29EC:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_12D29F1:     arg_10 = &HFF
  loc_12D29F4:     Exit Sub
  loc_12D29F5:   End If
  loc_12D2A02:   Set var_8C = Me.Txt
  loc_12D2A08:   Call 0.Method_Txt_Validate0 (Cancel, var_90, vbNullString)
  loc_12D2A10:   var_90.Tag = arg_10
  loc_12D2A6A:   Set var_8C = Me.Txt
  loc_12D2A70:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_12D2A78:   ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) = var_90.Text
  loc_12D2A90:   If (var_86 Or (var_98 <> vbNullString)) Then
  loc_12D2AA0:     Set var_8C = Me.Txt
  loc_12D2AA6:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D2AAE:     var_98 = var_90.Text
  loc_12D2ACA:     var_D0 = "Name"
  loc_12D2AE1:     var_D4 = Me.Fields.Item(var_D0)
  loc_12D2B07:     If (Trim(CVar(var_98)) = var_D4.Value) Then
  loc_12D2B10:       Me.MoveFirst
  loc_12D2B33:       Set var_8C = Me.Txt
  loc_12D2B39:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98, "Name ='")
  loc_12D2B41:       0 = var_90.Text
  loc_12D2B5A:       Me.Find 1 & var_98 & "'", var_D0, 
  loc_12D2B8C:       var_90 = Me.Fields.Item("Code")
  loc_12D2BAA:       Set var_94 = Me.Txt
  loc_12D2BB0:       Call 0.Method_Txt_Validate0 (Cancel, var_D4)
  loc_12D2BB8:       var_D4.Tag = CStr(var_90.Value)
  loc_12D2BCE:     End If
  loc_12D2BCE:   End If
  loc_12D2BD1: Else
  loc_12D2BD9:   If (var_86 = CInt(1)) Then
  loc_12D2C2A:     Set var_8C = Me.Txt
  loc_12D2C30:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D2C50:     If (((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Or (var_90.Text <> vbNullString)) Then
  loc_12D2C60:       Set var_8C = Me.Txt
  loc_12D2C66:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D2C6E:       var_90.Tag = vbNullString
  loc_12D2C87:       Set var_8C = Me.Txt
  loc_12D2C8D:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D2C95:       var_98 = var_90.Text
  loc_12D2CB1:       var_D0 = "Name"
  loc_12D2CC8:       var_D4 = Me.Fields.Item(var_D0)
  loc_12D2CEE:       If (Trim(CVar(var_98)) = var_D4.Value) Then
  loc_12D2CF7:         Me.MoveFirst
  loc_12D2D1A:         Set var_8C = Me.Txt
  loc_12D2D20:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98, "Name ='")
  loc_12D2D28:         0 = var_90.Text
  loc_12D2D41:         Me.Find 1 & var_98 & "'", var_D0, 
  loc_12D2D73:         var_90 = Me.Fields.Item("Code")
  loc_12D2D91:         Set var_94 = Me.Txt
  loc_12D2D97:         Call 0.Method_Txt_Validate0 (Cancel, var_D4)
  loc_12D2D9F:         var_D4.Tag = CStr(var_90.Value)
  loc_12D2DB5:       End If
  loc_12D2DB5:     End If
  loc_12D2DB8:   Else
  loc_12D2DC0:     If (var_86 = CInt(2)) Then
  loc_12D2E11:       Set var_8C = Me.Txt
  loc_12D2E17:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D2E37:       If (((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Or (var_90.Text <> vbNullString)) Then
  loc_12D2E47:         Set var_8C = Me.Txt
  loc_12D2E4D:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D2E55:         var_90.Tag = vbNullString
  loc_12D2E6E:         Set var_8C = Me.Txt
  loc_12D2E74:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12D2E7C:         var_98 = var_90.Text
  loc_12D2E98:         var_D0 = "Name"
  loc_12D2EAF:         var_D4 = Me.Fields.Item(var_D0)
  loc_12D2ED5:         If (Trim(CVar(var_98)) = var_D4.Value) Then
  loc_12D2EDE:           Me.MoveFirst
  loc_12D2F01:           Set var_8C = Me.Txt
  loc_12D2F07:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98, "Name ='")
  loc_12D2F0F:           0 = var_90.Text
  loc_12D2F28:           Me.Find 1 & var_98 & "'", var_D0, 
  loc_12D2F5A:           var_90 = Me.Fields.Item("Code")
  loc_12D2F78:           Set var_94 = Me.Txt
  loc_12D2F7E:           Call 0.Method_Txt_Validate0 (Cancel, var_D4)
  loc_12D2F86:           var_D4.Tag = CStr(var_90.Value)
  loc_12D2F9C:         End If
  loc_12D2F9C:       End If
  loc_12D2F9F:     Else
  loc_12D2FA7:       If (var_86 = CInt(4)) Then
  loc_12D2FB4:         Set var_8C = Me.Txt
  loc_12D2FBA:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_12D2FCD:         var_98 = Proc_6_33_1512840(var_90)
  loc_12D2FDA:         Set var_D4 = Me.Txt
  loc_12D2FE0:         Call 0.Method_Txt_Validate0 (Cancel, var_100)
  loc_12D2FE8:         var_100.Text = var_98
  loc_12D2FFB:       End If
  loc_12D2FFB:     End If
  loc_12D2FFB:   End If
  loc_12D2FFB:   ' Referenced from: 12D2994
  loc_12D2FFB: End If
  loc_12D3001: Call 0.Method_arg_50 (var_98)
  loc_12D3016: Proc_183_57_104AA84(var_98, "Txt_Validate")
  loc_12D3022: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_9 'F37524
  'Data Table: 496164
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3741B: Me.DGItemCat.Visible = False
  loc_F3743A: If (Me.RecordCount > 0) Then
  loc_F37479:   Set var_B4 = Me.Txt
  loc_F3747F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2), var_B8)
  loc_F37487:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F374BA:   var_B0 = Me.Fields.Item("Code")
  loc_F374D9:   Set var_B4 = Me.Txt
  loc_F374DF:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2), var_B8)
  loc_F374E7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F374FD: End If
  loc_F37508: Set var_A8 = Me.Txt
  loc_F3750E: Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2))
  loc_F37516: var_B0.SetFocus
  loc_F37522: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_1F 'E712F4
  'Data Table: 496164
  loc_E712B2: Proc_6_153_E91194(Me.DGItemCat, arg_14)
  loc_E712C9: Set var_8C = Me.FGPoint
  loc_E712E5: Proc_6_138_106D6F8(Me.DGItemCat, global_64, CInt(2))
  loc_E712F3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1546C
  'Data Table: 496164
  loc_E15461: Me.Global.Unload Me
  loc_E15469: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E40114
  'Data Table: 496164
  Dim Me As Recordset15
  loc_E400EB: Me.Requery -1
  loc_E400FB: Me.Requery -1
  loc_E4010B: Me.Requery -1
  loc_E40110: Exit Sub
End Sub

Private Sub cmdCopy_UnknownEvent_9 '17D3634
  'Data Table: 496164
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_AC As Variant
  Dim var_C8 As Variant
  Dim unk_496185 As Connection15
  Dim var_12C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_118 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_E8 As Variant
  Dim var_B8 As String
  Dim var_1A4 As Variant
  Dim var_1F4 As Variant
  Dim var_128 As Variant
  Dim var_1D4 As Variant
  Dim var_A8 As Variant
  Dim var_1F8 As Variant
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_F8 As Variant
  Dim var_A0 As Variant
  Dim var_24C As String
  Dim var_108 As Variant
  Dim var_1E4 As Variant
  Dim var_208 As Variant
  Dim var_228 As Variant
  Dim var_26C As Variant
  Dim var_27C As Variant
  Dim var_29C As Variant
  Dim var_2DC As Variant
  Dim var_34C As Variant
  Dim var_35C As Variant
  Dim var_36C As Variant
  Dim var_460 As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_38C As Variant
  Dim var_3CC As Variant
  Dim var_3DC As Variant
  Dim var_3FC As Variant
  Dim var_40C As Variant
  Dim var_484 As Variant
  Dim var_494 As Variant
  Dim var_4E4 As Variant
  Dim var_4F4 As Variant
  Dim var_524 As Variant
  Dim var_534 As Variant
  Dim var_574 As Variant
  Dim var_394 As TextBox
  Dim var_42C As Variant
  Dim var_390 As String
  Dim var_5A0 As String
  Dim var_5AC As String
  Dim var_5B4 As String
  Dim var_618 As Variant
  Dim var_638 As Variant
  Dim var_668 As Variant
  Dim var_688 As Variant
  Dim var_6B8 As Variant
  Dim var_6D8 As Variant
  Dim var_708 As Variant
  Dim var_728 As Variant
  Dim var_76C As Variant
  Dim var_78C As Variant
  Dim var_7D0 As Variant
  Dim var_7F0 As Variant
  Dim var_854 As Variant
  Dim var_874 As Variant
  Dim var_8A4 As Variant
  Dim var_8C4 As Variant
  Dim var_934 As Variant
  Dim var_5C8 As String
  Dim var_5F8 As String
  Dim var_598 As Variant
  Dim var_904 As Variant
  Dim var_994 As Variant
  Dim var_90 As Recordset15
  Dim var_59C As Fields15
  Dim var_8E4 As Variant
  Dim var_B2C As TextBox
  Dim var_974 As Variant
  loc_17D16D8: On Error Goto loc_17D35F2
  loc_17D16DF: var_88 = CByte(0) 'Byte
  loc_17D16EE: Set var_A0 = Me.Txt
  loc_17D16F4: Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(0))
  loc_17D171D: If (Proc_6_27_EA565C(var_A4, "Source Outlet Name") = 0) Then
  loc_17D1727:   Call Txt_GotFocus(CInt(0))
  loc_17D172C:   Exit Sub
  loc_17D172D: End If
  loc_17D1738: Set var_A0 = Me.Txt
  loc_17D173E: Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4)
  loc_17D1767: If (Proc_6_27_EA565C(var_A4, "Outlet Name") = 0) Then
  loc_17D1771:   Call Txt_GotFocus(CInt(3))
  loc_17D1776:   Exit Sub
  loc_17D1777: End If
  loc_17D1782: Set var_A0 = Me.Txt
  loc_17D1788: Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(4), var_A4)
  loc_17D17B1: If (Proc_6_27_EA565C(var_A4, "Item Applicable Date") = 0) Then
  loc_17D17BB:   Call Txt_GotFocus(CInt(4))
  loc_17D17C0:   Exit Sub
  loc_17D17C1: End If
  loc_17D17CF: Set var_A0 = Me.Txt
  loc_17D17D5: Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(4), var_A4)
  loc_17D17F9: Set var_A8 = Me.Txt
  loc_17D17FF: Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(4), var_B4, var_B8)
  loc_17D1807: (CDate(var_A4.Text) < MemVar_1F920F4) = var_B4.Text
  loc_17D1828: If (var_A4 Or (CDate(var_B8) > MemVar_1F920EC)) Then
  loc_17D1847:   var_C8 = CVar("Item Applicable Date Should be greater or equal to" & vbCrLf & "Start Date of Financial Year And Less Or Equal To Current Date") 'String
  loc_17D184A:   MsgBox(var_C8, &H10, var_E8, var_108, var_128)
  loc_17D1864:   Call Txt_GotFocus(CInt(4))
  loc_17D1869:   Exit Sub
  loc_17D186A: End If
  loc_17D186E: Set var_12C = Me.FGrid1
  loc_17D187A: unk_496185.BeginTrans var_130
  loc_17D1883: var_88 = CByte(1) 'Byte
  loc_17D18A2: For var_134 = 1 To CInt((CLng(var_12C.Rows) - 1)): var_86 = var_134 'Integer
  loc_17D18AC:   var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D18B4:   var_118 = CVar(CLng(1)) 'Long
  loc_17D18C7:   var_AC = CStr(var_12C.TextMatrix))
  loc_17D18D3:   var_154 = CVar(CLng(var_86)) 'Long
  loc_17D1905:   If (CVar(CLng(0)) And (CStr(var_12C.TextMatrix)) <> vbNullString)) Then
  loc_17D191C:     var_C8 = var_12C.TextMatrix)
  loc_17D1940:     Set var_A0 = Me.Txt
  loc_17D1946:     Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4, var_AC, CVar(CLng(3)), CVar(CLng(var_86)))
  loc_17D194E:     var_154 = var_A4.Tag
  loc_17D1967:     var_1F4 = 0
  loc_17D199E:     var_1D4 = "select Count(*) from ItemMast where Name='" & Trim(CVar(CStr(var_C8))) & "' And RestCode= '" & Trim(CVar(var_AC)) & "' And ItemType Not In ('Combo','Store') And DispCode<>9999 And GravyItem<>'Yes'" 
  loc_17D19AC:     unk_496185.Execute CStr(var_1D4), var_1E4, -1
  loc_17D19B4:     var_A8 = var_A8.Fields
  loc_17D19BC:     var_1F4 = var_B4.Item(var_B4)
  loc_17D19C4:     var_1F8 = var_1F8.Value
  loc_17D19FD:     If (var_208 = 0) Then
  loc_17D1A04:       var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D1A0C:       var_118 = CVar(CLng(2)) 'Long
  loc_17D1A34:       global_100 = CStr(Trim(CVar(CStr(Txt.DispID_41))))
  loc_17D1A48:       var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D1A50:       var_118 = CVar(CLng(&H18)) 'Long
  loc_17D1A6F:       global_88 = CInt(Val(CStr(Txt.DispID_41)))
  loc_17D1A7C:       var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D1A84:       var_118 = CVar(CLng(&HD)) 'Long
  loc_17D1A97:       var_AC = CStr(Txt.DispID_41)
  loc_17D1A9F:       var_9C = Val(var_AC)
  loc_17D1AAF:       If (var_9C <= CDbl(0)) Then
  loc_17D1AB6:         var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D1ABE:         var_118 = CVar(CLng(3)) 'Long
  loc_17D1B0C:         var_1E4 = "Process Rollback"
  loc_17D1B3C:         MsgBox("Item " & Trim(CVar(CStr(Txt.DispID_41))) & " Can't be added With " & Format(var_9C, "0.00") & " Sale Rate.", &H10, var_1E4, var_208, var_228)
  loc_17D1B5C:         GoTo loc_17D35F2
  loc_17D1B5F:       End If
  loc_17D1B63:       var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D1B7E:       var_E8 = CVar(CStr(Txt.DispID_41)) 'String
  loc_17D1B97:       Set var_A0 = Me.Txt
  loc_17D1B9D:       Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4, var_AC, CVar(CLng(6)), var_D8, 1, 1)
  loc_17D1BA5:       var_118 = var_A4.Tag
  loc_17D1BF4:       unk_496185.Execute CStr("select Code,Name from ItemGrp where Name='" & Trim(var_E8) & "' And RestCode= '" & Trim(CVar(var_AC)) & "'"), var_1E4, -1
  loc_17D1C05:       Set global_72 = var_A8
  loc_17D1C3F:       If Me.EOF Then
  loc_17D1C48:         var_F8 = 0
  loc_17D1C65:         var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemGrp Where Site_Code='" & MemVar_1F92070
  loc_17D1C6C:         var_B8 = var_AC & "' and isnumeric(SUBSTRING(Code,3,4))=1 and Code <>'MISC'"
  loc_17D1C75:         unk_496185.Execute var_B8, var_C8, -1
  loc_17D1C7D:         var_A0 = var_A0.Fields
  loc_17D1C85:         var_F8 = var_A4.Item(var_A4)
  loc_17D1C8D:         var_A8 = var_A8.Value
  loc_17D1CC6:         var_108 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2, var_E8, var_A8, var_D8)) 'String
  loc_17D1CF4:         var_128 = (1 + Format(CStr(var_E8), "0000"))
  loc_17D1D1D:         var_118 = CVar(CLng(6)) 'Long
  loc_17D1D36:         var_108 = Trim(CVar(CStr(Txt.DispID_41)))
  loc_17D1D73:         Set var_A0 = Me.Txt
  loc_17D1D79:         Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4, var_B8, CVar(CLng(&HB)), CVar(CLng(var_86)), var_118, CVar(CLng(var_86)))
  loc_17D1D81:         1 = var_A4.Tag
  loc_17D1D94:         Proc_6_7_F25D88(var_2FC, Date, var_108, var_9C)
  loc_17D1DB0:         var_AC = "Insert Into ItemGrp(Code,Name,Type,RestCode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & CStr("select Code,Name from ItemGrp where Name='" & Trim(Format(CStr(var_E8), "0000")))
  loc_17D1DCD:         var_1E4 = CVar(var_AC & "','") & var_108 & "','" & Trim(CVar(CStr(Txt.DispID_41))) 
  loc_17D1DF3:         var_27C = var_1E4 & "','" & CVar(var_B8) & "','" & CVar(MemVar_1F92070) 
  loc_17D1E40:         unk_496185.Execute CStr(var_27C & "','" & CVar(MemVar_1F920C8) & "'," & var_2FC & ",'A','" & CVar(MemVar_1F92078) & "')"), var_38C, -1
  loc_17D1E8D:       Else
  loc_17D1EA7:         var_A4 = Me.Fields.Item("Code")
  loc_17D1EAF:         var_C8 = CVar(var_A4) 'Address
  loc_17D1EB8:         var_AC = Proc_6_38_E68A98(var_C8, var_A8, var_118)
  loc_17D1EBE:         global_92 = var_AC
  loc_17D1ECB:       End If
  loc_17D1ECF:       var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D1EEA:       var_E8 = CVar(CStr(Txt.DispID_41)) 'String
  loc_17D1F03:       Set var_A0 = Me.Txt
  loc_17D1F09:       Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4, var_AC, CVar(CLng(8)))
  loc_17D1F11:       var_D8 = var_A4.Tag
  loc_17D1F60:       unk_496185.Execute CStr("select Code,Name  from ItemCatMast where Name='" & Trim(var_E8) & "' And RestCode= '" & Trim(CVar(var_AC)) & "'"), var_1E4, -1
  loc_17D1F71:       Set global_68 = var_A8
  loc_17D1FAB:       If Me.EOF Then
  loc_17D1FB4:         var_F8 = 0
  loc_17D1FD1:         var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemCatMast WHERE isnumeric(SUBSTRING(Code,3,4) )=1 and SITE_CODE='" & MemVar_1F92070
  loc_17D1FE1:         unk_496185.Execute var_AC & "'", var_C8, -1
  loc_17D1FE9:         var_A0 = var_A0.Fields
  loc_17D1FF1:         var_F8 = var_A4.Item(var_A4)
  loc_17D1FF9:         var_A8 = var_A8.Value
  loc_17D2032:         var_108 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2, var_E8, var_A8)) 'String
  loc_17D2060:         var_128 = (1 + Format(CStr(var_E8), "0000"))
  loc_17D2065:         var_AC = CStr("select Code,Name  from ItemCatMast where Name='" & Trim(Format(CStr(var_E8), "0000")))
  loc_17D206B:         global_96 = var_AC
  loc_17D2081:         var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D20A2:         var_108 = Trim(CVar(CStr(Txt.DispID_41)))
  loc_17D20DF:         Set var_A0 = Me.Txt
  loc_17D20E5:         Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(0), var_A4, var_AC, CVar(CLng(7)), CVar(CLng(var_86)), CVar(CLng(8)))
  loc_17D20ED:         var_D8 = var_A4.Tag
  loc_17D212E:         var_1E4 = "Select * from ItemCatMast where  Name='" & var_108 & "' And Code='" & Trim(CVar(CStr(Txt.DispID_41))) & "'  And RestCode= '" 
  loc_17D214C:         unk_496185.Execute CStr(var_1E4 & Trim(CVar(var_AC)) & "'"), var_27C, -1
  loc_17D215D:         Set global_76 = var_A8
  loc_17D21A1:         Set var_A0 = Me.Txt
  loc_17D21A7:         Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4, var_AC, "Code='", var_A8)
  loc_17D21AF:         1 = var_A4.Tag
  loc_17D21B8:         var_B8 = var_108 & var_AC
  loc_17D21C9:         Me.Filter = CVar(var_B8 & "'")
  loc_17D21DF:         ' Referenced from: 17D2818
  loc_17D21F1:         If Not(Me.EOF) Then
  loc_17D2229:           Call Proc_176_26_F71220(CStr(Trim(CVar(CStr(Txt.DispID_41)))), var_B8, CVar(CLng(8)), CVar(CLng(var_86)))
  loc_17D2231:           var_94 = var_B8
  loc_17D2244:           var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D2278:           Set var_A0 = Me.Txt
  loc_17D227E:           Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4, var_390, CVar(CLng(8)))
  loc_17D22D3:           var_394 = Me.Fields.Item("AcName")
  loc_17D2309:           var_2DC = CVar(Me.Fields.Item("TaxStru")) 'Address
  loc_17D237F:           Proc_6_7_F25D88(var_42C, Date)
  loc_17D23C6:           var_AC = "Insert Into ItemCatMast(Code,Name,RestCode,RoundOff,AcName,TaxStru,Flag,CatType,OutletYN," & " U_Name,U_EntDt,U_AE,Drcr,RevCode,SITE_CODE,LOGSITE_CODE)"
  loc_17D23CD:           var_B8 = var_AC & " Values('"
  loc_17D240A:           var_228 = CVar(var_B8 & global_96 & "','") & Trim(CVar(CStr(Txt.DispID_41))) & "','" & CVar(var_390) & "','" & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), var_A4.Tag)) 
  loc_17D2430:           var_2FC = var_228 & "','" & CVar(Proc_6_38_E68A98(CVar(var_394), global_88)) & "','" & CVar(Proc_6_38_E68A98(var_2DC)) 
  loc_17D2456:           var_3DC = var_2FC & "','" & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Flag")))) & "','" & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("CatType")))) 
  loc_17D248C:           var_494 = var_3DC & "','Y','" & CVar(MemVar_1F920C8) & "'," & var_42C & ",'A','" & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DrCr")))) 
  loc_17D24BB:           var_534 = var_494 & "','" & CVar(var_94) & "','" & CVar(MemVar_1F92070) & "','" 
  loc_17D24DC:           unk_496185.Execute CStr(var_534 & CVar(MemVar_1F92078) & "')"), var_598, -1
  loc_17D259A:           var_118 = CVar(CLng(var_86)) 'Long
  loc_17D25DD:           var_B4 = Me.Fields.Item("ShortName")
  loc_17D25E5:           var_1E4 = var_B4.Value
  loc_17D25F8:           Proc_6_7_F25D88(var_2DC, Date, CVar(CLng(8)))
  loc_17D260B:           Set var_1F8 = Me.Txt
  loc_17D2611:           Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_394, var_B8)
  loc_17D2619:           var_118 = var_394.Tag
  loc_17D2640:           var_36C = CVar(Me.Fields.Item("TaxStru")) 'Address
  loc_17D266E:           var_3DC = CVar(Me.Fields.Item("DrCr")) 'Address
  loc_17D26BC:           var_AC = "Insert Into RevMast(Code,Name,ShortName,SysYN,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,FieldType,DeskCode,TaxStru,Type,AcCode,LOGSITE_CODE) Values ('" & var_94
  loc_17D26C3:           var_108 = CVar(var_AC & "','") 'String
  loc_17D26C9:           var_F8 = " - "
  loc_17D26CE:           var_E8 = (Me.Fields.Item("ShortName").Value + "0000")
  loc_17D26E2:           var_1D4 = var_108 & CVar(CStr(Txt.DispID_41)) & Trim(CVar(CStr(Txt.DispID_41))) & "','" 
  loc_17D2705:           var_26C = var_1D4 & var_1E4 & "','Y','Amount','Detail','POS','" & CVar(MemVar_1F92078) & "','" 
  loc_17D2728:           var_2FC = var_26C & CVar(MemVar_1F920C8) & "'," & var_2DC & ",'A','C','" 
  loc_17D2758:           var_3FC = var_2FC & CVar(var_B8) & "','" & CVar(Proc_6_38_E68A98(var_36C, var_59C)) & "','" & CVar(Proc_6_38_E68A98(var_3DC)) 
  loc_17D278B:           var_24C = CStr(var_3FC & "','" & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("AcName")))) & "','" & CVar(MemVar_1F92078) & "')")
  loc_17D2795:           unk_496185.Execute var_24C, var_494, -1
  loc_17D2813:           Me.MoveNext
  loc_17D2818:           GoTo loc_17D21DF
  loc_17D281B:         End If
  loc_17D281E:       Else
  loc_17D283B:         var_A4 = Me.Fields.Item("Code")
  loc_17D2843:         var_C8 = var_A4.Value
  loc_17D2852:         global_96 = CStr(var_C8)
  loc_17D2863:       End If
  loc_17D2869:       var_F8 = 0
  loc_17D2899:       unk_496185.Execute "select Count(*) from Item where Code='" & global_100 & "'", var_C8, -1
  loc_17D28A1:       var_A0 = var_A0.Fields
  loc_17D28A9:       var_F8 = var_A4.Item(var_A4)
  loc_17D28B1:       var_A8 = var_A8.Value
  loc_17D28D8:       If (CVar(CStr(Txt.DispID_41)) = 0) Then
  loc_17D28DF:         var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D28FE:         var_E8 = Date
  loc_17D2909:         Proc_6_7_F25D88(var_108, var_E8, Txt.DispID_41, CVar(CLng(3)))
  loc_17D2937:         var_390 = "Insert Into Item(Code,Name,BarCode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_100 & "','" & CStr(var_C8)
  loc_17D2948:         var_5A0 = var_390 & "','" & global_100
  loc_17D296B:         var_128 = CVar(var_5A0 & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") 'String
  loc_17D297A:         var_1A4 = var_128 & var_108 & ",'A','" 
  loc_17D299B:         unk_496185.Execute CStr(var_1A4 & CVar(MemVar_1F92078) & "')"), var_1D4, -1
  loc_17D29D1:       End If
  loc_17D29FF:       Set var_A0 = Me.Txt
  loc_17D2A05:       Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4, var_5A0, Txt.DispID_41, CVar(CLng(3)), CVar(CLng(var_86)))
  loc_17D2A16:       var_154 = CVar(CLng(var_86)) 'Long
  loc_17D2A1E:       var_174 = CVar(CLng(4)) 'Long
  loc_17D2A80:       Proc_6_7_F25D88(var_1A4, Date, Txt.DispID_41, CVar(CLng(&HA)), CVar(CLng(var_86)), Txt.DispID_41, CVar(CLng(9)), CVar(CLng(var_86)))
  loc_17D2A89:       var_35C = CVar(CLng(var_86)) 'Long
  loc_17D2A91:       var_460 = CVar(CLng(&HB)) 'Long
  loc_17D2AA9:       var_4E4 = CVar(CLng(var_86)) 'Long
  loc_17D2AB1:       var_524 = CVar(CLng(&HC)) 'Long
  loc_17D2AC9:       var_618 = CVar(CLng(var_86)) 'Long
  loc_17D2AD1:       var_638 = CVar(CLng(&HE)) 'Long
  loc_17D2AE9:       var_668 = CVar(CLng(var_86)) 'Long
  loc_17D2AF1:       var_688 = CVar(CLng(&HF)) 'Long
  loc_17D2B09:       var_6B8 = CVar(CLng(var_86)) 'Long
  loc_17D2B11:       var_6D8 = CVar(CLng(&H10)) 'Long
  loc_17D2B29:       var_708 = CVar(CLng(var_86)) 'Long
  loc_17D2B31:       var_728 = CVar(CLng(&H11)) 'Long
  loc_17D2B53:       var_76C = CVar(CLng(var_86)) 'Long
  loc_17D2B5B:       var_78C = CVar(CLng(&H12)) 'Long
  loc_17D2B7D:       var_7D0 = CVar(CLng(var_86)) 'Long
  loc_17D2B85:       var_7F0 = CVar(CLng(&H13)) 'Long
  loc_17D2BA7:       var_854 = CVar(CLng(var_86)) 'Long
  loc_17D2BAF:       var_874 = CVar(CLng(&H14)) 'Long
  loc_17D2BC7:       var_8A4 = CVar(CLng(var_86)) 'Long
  loc_17D2BCF:       var_8C4 = CVar(CLng(&H15)) 'Long
  loc_17D2BE7:       var_934 = CVar(CLng(var_86)) 'Long
  loc_17D2C57:       var_AC = "Insert Into ItemMast (Code,Name,RestCode,DispCode,Unit,ItemGroup,ItemCatCode,DiscApp,RateEdit,Site_Code,U_Name,U_EntDt,U_AE,Type,Kitchen,SaleRate,SChrgApp,RateIncTax,IssueUnit,ConvRatio,PurchRate,LPurRate,LOGSITE_CODE,ActiveYN,NType,FinItem,ItemType,BarCode,CommodityCode) " & " Values ('"
  loc_17D2C68:       var_24C = var_AC & global_100 & "','"
  loc_17D2CBA:       var_5C8 = var_24C & CStr(var_C8) & "','" & var_5A0 & "'," & CStr(global_88) & ",'" & CStr(var_E8) & "','" & global_92
  loc_17D2D0B:       var_5F8 = var_5C8 & "','" & global_96 & "','" & CStr(var_108) & "','" & CStr(var_128) & "', '" & MemVar_1F92070 & "','" & MemVar_1F920C8
  loc_17D2D29:       var_208 = CVar(CStr(var_1E4)) 'String
  loc_17D2D40:       var_29C = CVar(var_5F8 & "',") & var_1A4 & ",'A','" & var_208 & "','" & CVar(CStr(var_26C)) 
  loc_17D2D5D:       var_2EC = var_29C & "'," & CVar(var_9C) & ",'" 
  loc_17D2D71:       var_34C = var_2EC & CVar(CStr(var_2FC)) & "','" 
  loc_17D2D85:       var_3CC = var_34C & CVar(CStr(var_36C)) & "','" 
  loc_17D2DA4:       var_42C = var_3CC & CVar(CStr(var_3DC)) & "'," & CVar(Val(CStr(Txt.DispID_41))) 
  loc_17D2DC1:       var_484 = var_42C & "," & CVar(Val(CStr(Txt.DispID_41))) & "," 
  loc_17D2DDF:       var_4F4 = var_484 & CVar(Val(CStr(Txt.DispID_41))) & ",'" & CVar(MemVar_1F92078) 
  loc_17D2DF3:       var_574 = var_4F4 & "','Yes','" & CVar(CStr(var_534)) 
  loc_17D2E1B:       var_994 = var_574 & "','" & CVar(CStr(var_8E4)) & "','" & CVar(CStr(var_974)) 
  loc_17D2E5A:       unk_496185.Execute CStr(var_994 & "','" & CVar(CStr(var_A04)) & "','" & CVar(CStr(var_A94)) & "')"), var_AF8, -1
  loc_17D2F3A:       Set var_A0 = Me.Txt
  loc_17D2F40:       Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_A4, var_24C, var_A8, Txt.DispID_41, CVar(CLng(&H19)), CVar(CLng(var_86)))
  loc_17D2F48:       Txt.DispID_41 = var_A4.Tag
  loc_17D2F58:       Set var_A8 = Me.Txt
  loc_17D2F5E:       Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(4), var_B4, CVar(CLng(&H17)), CVar(CLng(var_86)))
  loc_17D2F66:       var_C8 = CVar(var_B4) 'Address
  loc_17D2F6D:       Proc_6_7_F25D88(var_E8, var_C8, Txt.DispID_41)
  loc_17D2F80:       Proc_6_7_F25D88(var_208, Date, CVar(CLng(&H16)))
  loc_17D2FA3:       var_B8 = "Insert Into Itemrate(ItemCode,RestCode,Rate,AppDate,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('" & global_100
  loc_17D2FCB:       var_108 = CVar(var_B8 & "','" & var_24C & "'," & CStr(var_9C) & ",") 'String
  loc_17D301A:       var_26C = var_108 & var_E8 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_208 & ",'A','" & CVar(MemVar_1F92078) 
  loc_17D3023:       var_27C = var_26C & "')" 
  loc_17D3027:       var_5AC = CStr(var_27C)
  loc_17D3031:       unk_496185.Execute var_5AC, var_29C, -1
  loc_17D307D:       var_D8 = CVar(CLng(var_86)) 'Long
  loc_17D30A7:       Set var_A0 = Me.Txt
  loc_17D30AD:       Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(0), var_A4, var_24C, Txt.DispID_41, CVar(CLng(2)))
  loc_17D30B5:       var_D8 = var_A4.Tag
  loc_17D30BE:       var_154 = CVar(CLng(var_86)) 'Long
  loc_17D30E8:       Set var_A8 = Me.Txt
  loc_17D30EE:       Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(0), var_B4, var_5AC, Txt.DispID_41, CVar(CLng(2)))
  loc_17D30F6:       var_154 = var_B4.Tag
  loc_17D311A:       var_390 = "Select * From BOM Where FinItem='" & CStr(var_C8) & "' And RestCode='"
  loc_17D3141:       var_5B4 = var_390 & var_24C & "' And AppDate=(Select Max(AppDate) From BOM Where FinItem='" & CStr(var_E8) & "' And RestCode='" & var_5AC
  loc_17D3151:       unk_496185.Execute var_5B4 & "') Order By RawSno", var_108, -1
  loc_17D315C:       Set var_90 = var_1F8
  loc_17D3190:       ' Referenced from: 17D353F
  loc_17D319F:       If Not(var_90.EOF) Then
  loc_17D31B6:         var_AC = "Insert Into BOM(Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,Cost,Waste,Total,U_Name,U_EntDt,U_AE,SavedForQty,AppDate,WtUnit,LogSite_Code,RestCode) Values ('" & MemVar_1F92070
  loc_17D31F7:         Proc_6_39_E7C810(var_E8, CVar(var_90.Fields.Item("FinQty")), CVar(var_AC & "','" & global_100 & "',"), var_994, -1)
  loc_17D326A:         Proc_6_39_E7C810(var_208, CVar(var_90.Fields.Item("RawQty")), var_90.Fields & CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("RawItem")), var_B30 & var_E8 & ",'", var_90.Fields)) & "',")
  loc_17D32A5:         Proc_6_39_E7C810(var_27C, CVar(var_90.Fields.Item("RawSno")))
  loc_17D32E0:         Proc_6_39_E7C810(var_2EC, CVar(var_90.Fields.Item("Cost")))
  loc_17D331B:         Proc_6_39_E7C810(var_34C, CVar(var_90.Fields.Item("Waste")))
  loc_17D3356:         Proc_6_39_E7C810(var_3CC, CVar(var_90.Fields.Item("Total")))
  loc_17D337A:         var_40C = var_934 & var_208 & "," & var_27C & "," & var_2EC & "," & var_34C & "," & var_3CC & ",'" & CVar(MemVar_1F920C8) & "'," 
  loc_17D338C:         Proc_6_7_F25D88(var_42C, Date)
  loc_17D33C7:         Proc_6_39_E7C810(var_484, CVar(var_90.Fields.Item("SavedForQty")))
  loc_17D33E7:         Set var_B18 = Me.Txt
  loc_17D33ED:         Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(4), var_B1C)
  loc_17D33FC:         Proc_6_7_F25D88(var_4F4, CVar(var_B1C))
  loc_17D3437:         Proc_6_39_E7C810(var_574, CVar(var_90.Fields.Item("WtUnit")))
  loc_17D345B:         var_904 = var_40C & var_42C & ",'A'," & var_484 & "," & var_4F4 & ",'" & var_574 & "','" & CVar(MemVar_1F92078) & "','" 
  loc_17D346D:         Set var_B28 = Me.Txt
  loc_17D3473:         Call 0.Method_cmdCopy_UnknownEvent_90 (CInt(3), var_B2C, var_390)
  loc_17D347B:         var_904 = var_B2C.Tag
  loc_17D349D:         unk_496185.Execute CStr(Txt.DispID_41 & CVar(var_390) & "')"), , 
  loc_17D353A:         var_90.MoveNext
  loc_17D353F:         GoTo loc_17D3190
  loc_17D3542:       End If
  loc_17D3542:     End If
  loc_17D3542:   End If
  loc_17D3545: Next var_134 'Integer
  loc_17D354C: Set var_12C = Nothing 
  loc_17D3556: unk_496185.CommitTrans
  loc_17D355F: var_88 = CByte(0) 'Byte
  loc_17D356E: Me.Requery -1
  loc_17D357E: Me.Requery -1
  loc_17D358E: Me.Requery -1
  loc_17D3593: Call Proc_176_27_EF80A0()
  loc_17D3598: Call Proc_176_25_EDC900()
  loc_17D35B0: Me.FGrid1.Rows = 2
  loc_17D35B8: Call Proc_176_29_133CAFC()
  loc_17D35C8: Set global_68 = Nothing
  loc_17D35D4: Set var_8C = Nothing
  loc_17D35DC: Set var_90 = Nothing
  loc_17D35EA: Set global_72 = Nothing
  loc_17D35F1: Exit Sub
  loc_17D35F2: ' Referenced from: 17D1B5C
  loc_17D35F2: ' Referenced from: 17D16D8
  loc_17D35FB: If (CInt(var_88) = 1) Then
  loc_17D3604:   unk_496185.RollbackTrans
  loc_17D3609: End If
  loc_17D360F: Call 0.Method_arg_50 (var_AC)
  loc_17D3617: var_24C = "cmdCopy_Click"
  loc_17D3624: Proc_183_57_104AA84(var_AC)
  loc_17D3630: Exit Sub
End Sub

Private Sub DGOutlet_UnknownEvent_9 'FB04F0
  'Data Table: 496164
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_EC As Double
  Dim var_B0 As Field20
  Dim var_D0 As TextBox
  loc_FB0373: Me.DGOutlet.Visible = False
  loc_FB0392: If (Me.RecordCount > 0) Then
  loc_FB03EE:   Set var_CC = Me.Txt
  loc_FB03F4:   Call 0.Method_DGOutlet_UnknownEvent_90 (CInt(Val(CStr(Me.DGOutlet.Tag))), var_D0)
  loc_FB03FC:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FB0420:   Set var_B4 = Me.DGOutlet
  loc_FB0436:   var_EC = Val(CStr(var_B4.Tag))
  loc_FB0475:   Set var_CC = Me.Txt
  loc_FB047B:   Call 0.Method_DGOutlet_UnknownEvent_90 (CInt(var_EC), var_D0, CStr(Me.Fields.Item("Code").Value))
  loc_FB0483:   var_D0.Tag = var_EC
  loc_FB04A3: End If
  loc_FB04CB: Set var_B0 = Me.Txt
  loc_FB04D1: Call 0.Method_DGOutlet_UnknownEvent_90 (CInt(Val(CStr(Me.DGOutlet.Tag))), var_B4)
  loc_FB04D9: var_B4.SetFocus
  loc_FB04ED: Exit Sub
End Sub

Private Sub DGOutlet_UnknownEvent_1F 'EA8A78
  'Data Table: 496164
  loc_EA8A0E: Proc_6_153_E91194(Me.DGOutlet, arg_14)
  loc_EA8A42: Set var_A8 = Me.FGPoint
  loc_EA8A5E: Proc_6_138_106D6F8(Me.DGOutlet, global_56, CInt(Val(CStr(Me.DGOutlet.Tag))))
  loc_EA8A74: Exit Sub
End Sub

Private Sub Form_Load() '11D95EC
  'Data Table: 496164
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_BC As Variant
  Dim var_D4 As Variant
  Dim var_DC As TextBox
  Dim var_E8 As String
  Dim var_EC As String
  Dim var_FC As String
  Dim unk_496185 As Connection15
  loc_11D9190: On Error Goto loc_11D95C2
  loc_11D919A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_11D91B2: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_11D91BA: Call Proc_176_29_133CAFC()
  loc_11D91BF: Call Proc_176_25_EDC900()
  loc_11D91C8: Set var_C0 = Me.FGrid1
  loc_11D91D7: var_98 = 0
  loc_11D91EA: var_BC = Me.FGrid1.ColWidth)
  loc_11D9208: Me.Check1.Left = (CDbl(CLng(var_BC)) + CDbl(var_C0.Left))
  loc_11D922B: Set var_AC = Me.Txt
  loc_11D9231: Call 0.Method_Form_Load0 (CInt(0), var_C0, var_D8)
  loc_11D9239: var_98 = var_C0.Left
  loc_11D9250: Me.DGOutlet.Left = CVar(var_D8)
  loc_11D926C: Set var_D4 = Me.Txt
  loc_11D9272: Call 0.Method_Form_Load0 (CInt(0), var_DC)
  loc_11D928D: Set var_AC = Me.Txt
  loc_11D9293: Call 0.Method_Form_Load0 (CInt(0), var_C0)
  loc_11D92AB: var_98 = CVar(((var_C0.Top + var_DC.Height) + CDbl(&H1E))) 'Single
  loc_11D92BA: Me.DGOutlet.Top = CVar(var_C0.Top)
  loc_11D92DA: Set var_AC = Me.Txt
  loc_11D92E0: Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_11D92FF: Me.DGItemGroup.Left = CVar(var_C0.Left)
  loc_11D931B: Set var_D4 = Me.Txt
  loc_11D9321: Call 0.Method_Form_Load0 (CInt(1), var_DC)
  loc_11D933C: Set var_AC = Me.Txt
  loc_11D9342: Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_11D935A: var_98 = CVar(((var_C0.Top + var_DC.Height) + CDbl(&H1E))) 'Single
  loc_11D9369: Me.DGItemGroup.Top = CVar(var_C0.Left)
  loc_11D9389: Set var_AC = Me.Txt
  loc_11D938F: Call 0.Method_Form_Load0 (CInt(2), var_C0)
  loc_11D93AE: Me.DGItemCat.Left = CVar(var_C0.Left)
  loc_11D93CA: Set var_D4 = Me.Txt
  loc_11D93D0: Call 0.Method_Form_Load0 (CInt(2), var_DC)
  loc_11D93F1: Call 0.Method_Form_Load0 (CInt(2), var_C0)
  loc_11D9409: var_98 = CVar(((var_C0.Top + var_DC.Height) + CDbl(&H1E))) 'Single
  loc_11D9418: Me.DGItemCat.Top = CVar(var_C0.Left)
  loc_11D9430: Call 0.Method_arg_1C4 ("AEDP")
  loc_11D9450: var_EC = "SELECT Code,Name,RestType,ShortName FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND (OutletYN='Y' and RestType<>'Banquet') "
  loc_11D946C: var_FC = var_EC & "Union All Select '" & MemVar_1F92078 & "BANQ' Code,'BANQUET' Name,'Banquet' RestType,'BANQ' ShortName " & "Union All Select '"
  loc_11D9483: unk_496185.Execute var_FC & MemVar_1F92078 & "ODC' Code,'BANQUET OUTDOOR' Name,'Banquet' RestType,'ODC' ShortName ORDER BY NAME", var_BC, -1
  loc_11D9494: Set global_56 = Me.Txt
  loc_11D94BE: CVarUnk
  loc_11D94C3: VerifyVarObj
  loc_11D94CF: LateIdStAd
  loc_11D94F8: var_EC = "select IG.code ,IG.name,IG.restcode as Depart from itemgrp IG WHERE (IG.LOGSITE_CODE='" & MemVar_1F92078 & "' OR IG.LOGSITE_CODE='HO') order by IG.Name"
  loc_11D9501: unk_496185.Execute var_EC, var_BC, -1
  loc_11D9512: Set global_60 = Me.DGOutlet
  loc_11D9530: CVarUnk
  loc_11D9535: VerifyVarObj
  loc_11D9541: LateIdStAd
  loc_11D9563: var_E8 = "Select IC.Code,IC.Name,IC.RestCode as Depart From ItemCatMast IC WHERE (IC.LOGSITE_CODE='" & MemVar_1F92078
  loc_11D9573: unk_496185.Execute var_E8 & "' OR IC.LOGSITE_CODE='HO') order by IC.Name", var_BC, -1
  loc_11D9584: Set global_64 = Me.DGItemGroup
  loc_11D95A2: CVarUnk
  loc_11D95A7: VerifyVarObj
  loc_11D95AD: Set var_AC = Me.DGItemCat
  loc_11D95B3: LateIdStAd
  loc_11D95C1: Exit Sub
  loc_11D95C2: ' Referenced from: 11D9190
  loc_11D95C8: Call 0.Method_arg_50 (var_E8, var_AC, global_64, var_AC, var_AC, global_60)
  loc_11D95DD: Proc_183_57_104AA84(var_E8, "Form_Load", var_AC, var_AC)
  loc_11D95E9: Exit Sub
End Sub

Private Sub Form_Resize() 'ED6688
  'Data Table: 496164
  Dim var_8C As Label
  loc_ED65E6: Call 0.Method_arg_50 (var_88)
  loc_ED65F8: Me.LblFormCaption.Caption = var_88
  loc_ED6611: Me.LblFormCaption.Left = CDbl(0)
  loc_ED661D: Set var_A0 = Me.TopCtrl1
  loc_ED6623: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED6630: Set var_8C = Me.TopCtrl1
  loc_ED6636: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED6650: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED666B: Call 0.Method_arg_100 (var_B8)
  loc_ED667D: Me.LblFormCaption.Width = var_B8
  loc_ED6685: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5FAB8
  'Data Table: 496164
  loc_E5FA77: Set global_52 = Nothing
  loc_E5FA89: Set global_56 = Nothing
  loc_E5FA9B: Set global_60 = Nothing
  loc_E5FAAD: Set global_64 = Nothing
  loc_E5FAB4: Exit Sub
End Sub

Private Sub Form_Activate() 'E2CB34
  'Data Table: 496164
  Dim var_8C As TextBox
  loc_E2CB17: Set var_88 = Me.Txt
  loc_E2CB1D: Call 0.Method_Form_Activate0 (CInt(3))
  loc_E2CB25: var_8C.SetFocus
  loc_E2CB31: Exit Sub
  loc_E2CB32: Set var_13AC = var_8C
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E69538
  'Data Table: 496164
  loc_E694F0: On Error Goto loc_E69510
  loc_E69507: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E6950F: Exit Sub
  loc_E69510: ' Referenced from: E694F0
  loc_E69516: Call 0.Method_arg_50 (var_8C, Shift)
  loc_E6952B: Proc_183_57_104AA84(var_8C, "Form_KeyDown")
  loc_E69537: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_9 'F364A4
  'Data Table: 496164
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3639B: Me.DGItemGroup.Visible = False
  loc_F363BA: If (Me.RecordCount > 0) Then
  loc_F363F9:   Set var_B4 = Me.Txt
  loc_F363FF:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(1), var_B8)
  loc_F36407:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3643A:   var_B0 = Me.Fields.Item("Code")
  loc_F36459:   Set var_B4 = Me.Txt
  loc_F3645F:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(1), var_B8)
  loc_F36467:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3647D: End If
  loc_F36488: Set var_A8 = Me.Txt
  loc_F3648E: Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(1))
  loc_F36496: var_B0.SetFocus
  loc_F364A2: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_1F 'E70EE8
  'Data Table: 496164
  loc_E70EA6: Proc_6_153_E91194(Me.DGItemGroup, arg_14)
  loc_E70EBD: Set var_8C = Me.FGPoint
  loc_E70ED9: Proc_6_138_106D6F8(Me.DGItemGroup, global_60, CInt(1))
  loc_E70EE7: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E87118
  'Data Table: 496164
  loc_E870C4: If (CBool(Me.DGOutlet.Visible) = &HFF) Then
  loc_E870C7:   Call DGOutlet_UnknownEvent_9()
  loc_E870CC: End If
  loc_E870E8: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_E870EB:   Call DGItemGroup_UnknownEvent_9()
  loc_E870F0: End If
  loc_E8710C: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_E8710F:   Call DGItemCat_UnknownEvent_9()
  loc_E87114: End If
  loc_E87114: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'FB97AC
  'Data Table: 496164
  Dim var_BC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_DC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_114 As String
  loc_FB9627: If (CLng(Me.FGrid1.Col) = 1) Then
  loc_FB963D:   var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FB9655:   var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_FB968C:   If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_FB96B1:     Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Col))
  loc_FB96D0:     Me.FGrid1.CellFontName = "wingdings"
  loc_FB96EA:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_FB9705:     Me.FGrid1.CellForeColor = &HFF0000
  loc_FB9720:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FB9738:     var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_FB973D:     var_114 = "ü"
  loc_FB9747:     Set var_F0 = Me.FGrid1
  loc_FB974D:     LateIdCallSt
  loc_FB9768:   Else
  loc_FB977B:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FB9783:     var_DC = CVar(CLng(1)) 'Long
  loc_FB9788:     var_114 = vbNullString
  loc_FB9792:     Set var_9C = Me.FGrid1
  loc_FB9798:     LateIdCallSt
  loc_FB97AA:   End If
  loc_FB97AA: End If
  loc_FB97AA: Exit Sub
End Sub

Public Sub Proc_176_24_E8827C(arg_C) 'E8827C
  'Data Table: 496164
  Dim var_98 As TextBox
  Dim var_8C As CheckBox
  loc_E88216: Set var_8C = Me.Txt
  loc_E8821C: Call 0.Method_Proc_176_24_E8827CC (var_8E, var_86)
  loc_E8822C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E88242:   Set var_8C = Me.Txt
  loc_E88248:   Call 0.Method_Proc_176_24_E8827C0 (CInt(var_86), var_98)
  loc_E88250:   var_98.Enabled = arg_C
  loc_E8825F: Next var_92 'Byte
  loc_E88272: Me.Check1.Enabled = arg_C
  loc_E8827A: Exit Sub
End Sub

Public Sub Proc_176_25_EDC900
  'Data Table: 496164
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_EDC852: Set var_8C = Me.Txt
  loc_EDC858: Call 0.Method_Proc_176_25_EDC900C (var_8E, var_86)
  loc_EDC868: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EDC87E:   Set var_8C = Me.Txt
  loc_EDC884:   Call 0.Method_Proc_176_25_EDC9000 (CInt(var_86), var_98)
  loc_EDC88C:   var_98.Text = vbNullString
  loc_EDC8A8:   Set var_8C = Me.Txt
  loc_EDC8AE:   Call 0.Method_Proc_176_25_EDC9000 (CInt(var_86), var_98)
  loc_EDC8B6:   var_98.Tag = vbNullString
  loc_EDC8C5: Next var_92 'Byte
  loc_EDC8DB: Me.Check1.Value = CInt(0)
  loc_EDC8F8: Call Proc_176_29_133CAFC(Me.FGrid1.Text)
  loc_EDC8FD: Exit Sub
End Sub

Public Sub Proc_176_26_F71220(arg_C) 'F71220
  'Data Table: 496164
  Dim var_148 As Integer
  Dim var_8C As String
  Dim var_DC As Variant
  Dim var_CC As Variant
  Dim unk_496185 As Connection15
  Dim var_134 As Recordset15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  Dim var_130 As Variant
  loc_F7111D: var_148 = 0
  loc_F7113A: var_8C = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),0)+1 AS MyCode From RevMast WHERE Site_Code='" & MemVar_1F92070
  loc_F7114D: var_CC = (CVar(MemVar_1F92070) + Left(arg_C, 1))
  loc_F71168: unk_496185.Execute CStr(CVar(var_8C & "' and isnumeric(SUBSTRING(Code,4,3))=1 and SUBSTRING(Code,1,3) ='") & var_CC & "'"), var_130, -1
  loc_F71170: var_134 = var_134.Fields
  loc_F71178: var_148 = var_138.Item(var_138)
  loc_F71180: var_14C = var_14C.Value
  loc_F711D5: var_DC = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) + Left(arg_C, 1))
  loc_F71201: var_130 = (1 + Format(CStr(var_15C), "000"))
  loc_F71206: var_88 = CStr(var_130)
  loc_F71218: Proc_176_26_F71220 = 1
End Sub

Public Sub Proc_176_27_EF80A0
  'Data Table: 496164
  Dim arg_AFF As Double
  loc_EF7FE0: If (CBool(Me.DGOutlet.Visible) = &HFF) Then
  loc_EF7FF2:   Me.DGOutlet.Visible = False
  loc_EF7FFA: End If
  loc_EF8016: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_EF8028:   Me.DGItemGroup.Visible = False
  loc_EF8030: End If
  loc_EF804C: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_EF805E:   Me.DGItemCat.Visible = False
  loc_EF8066: End If
  loc_EF8082: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF8094:   Me.FGPoint.Visible = False
  loc_EF809C: End If
  loc_EF809C: Exit Sub
  loc_EF809D: arg_AFF = 
End Sub

Public Sub Proc_176_28_161A6A4
  'Data Table: 496164
  Dim var_A0 As Variant
  Dim var_B0 As TextBox
  Dim var_A8 As String
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_9C As Variant
  Dim var_B4 As String
  Dim var_128 As String
  Dim var_138 As String
  Dim var_134 As String
  Dim var_E4 As Variant
  Dim unk_496185 As Connection15
  Dim var_148 As TextBox
  Dim var_14C As String
  Dim var_104 As Variant
  Dim Me As Recordset15
  Dim var_114 As Variant
  Dim var_178 As Variant
  Dim var_90 As Double
  Dim var_A4 As Fields15
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_94 As Recordset15
  Dim var_124 As Variant
  Dim var_144 As Fields15
  loc_16191F3: Set var_9C = Me.Txt
  loc_16191F9: Call 0.Method_Proc_176_28_161A6A40 (CInt(0))
  loc_1619222: If (Proc_6_27_EA565C(var_A0, "Source Outlet Name") = 0) Then
  loc_161922C:   Call Txt_GotFocus(CInt(0))
  loc_1619231:   Exit Sub
  loc_1619232: End If
  loc_161923D: Set var_9C = Me.Txt
  loc_1619243: Call 0.Method_Proc_176_28_161A6A40 (CInt(3), var_A0)
  loc_161926C: If (Proc_6_27_EA565C(var_A0, "Outlet Name") = 0) Then
  loc_1619276:   Call Txt_GotFocus(CInt(3))
  loc_161927B:   Exit Sub
  loc_161927C: End If
  loc_1619287: Set var_9C = Me.Txt
  loc_161928D: Call 0.Method_Proc_176_28_161A6A40 (CInt(4), var_A0)
  loc_16192B6: If (Proc_6_27_EA565C(var_A0, "Item Applicable Date") = 0) Then
  loc_16192C0:   Call Txt_GotFocus(CInt(4))
  loc_16192C5:   Exit Sub
  loc_16192C6: End If
  loc_16192D4: Set var_9C = Me.Txt
  loc_16192DA: Call 0.Method_Proc_176_28_161A6A40 (CInt(4), var_A0)
  loc_16192FE: Set var_A4 = Me.Txt
  loc_1619304: Call 0.Method_Proc_176_28_161A6A40 (CInt(4), var_B0, var_B4)
  loc_161930C: (CDate(var_A0.Text) < MemVar_1F920F4) = var_B0.Text
  loc_161932D: If (var_A0 Or (CDate(var_B4) > MemVar_1F920EC)) Then
  loc_1619345:   var_A8 = "Item Applicable Date Should be greater or equal to" & vbCrLf
  loc_161934F:   MsgBox(CVar(var_A8 & "Start Date of Financial Year And Less Or Equal To Current Date"), &H10, var_E4, var_104, var_124)
  loc_1619369:   Call Txt_GotFocus(CInt(4))
  loc_161936E:   Exit Sub
  loc_161936F: End If
  loc_161936F: var_D4 = vbNullString
  loc_1619379: Set var_9C = Me.FGrid1
  loc_161938A: var_D4 = 2
  loc_161939D: Me.FGrid1.Rows = var_D4
  loc_16193AC: var_B4 = "SELECT ItemMast.RestCode,ItemMast.Code as ItemCode,ItemMast.Name as ItemName,Unit, ItemGrp.Code AS GroupCode,ItemGrp.Name AS GroupName,ItemCatMast.Code AS ItemCatCode,ItemCatMast.Name AS ItemCatName,ItemMast.DiscApp,ItemMast.RateEdit,ItemMast.Type,ItemMast.Kitchen,ItemMast.SaleRate,ItemMast.SChrgApp,ItemMast.RateIncTax,ItemMast.IssueUnit,ItemMast.ConvRatio,ItemMast.PurchRate,ItemMast.LPurRate,ItemMast.NType,ItemMast.FinItem,ItemMast.ItemType,ItemMast.BarCode,ItemMast.CommodityCode,ItemMast.DispCode FROM ItemMast " & "LEFT JOIN ItemCatMast ON ItemMast.ItemCatCode = ItemCatMast.Code LEFT JOIN ItemGrp ON ItemMast.ItemGroup = ItemGrp.Code LEFT JOIN Depart ON ItemMast.RestCode = Depart.Code  WHERE ItemMast.RestCode='"
  loc_16193BD: Set var_9C = Me.Txt
  loc_16193C3: Call 0.Method_Proc_176_28_161A6A40 (CInt(0), var_A0, var_A8)
  loc_16193CB: var_B4 = var_A0.Tag
  loc_16193E9: var_138 = FGrid1.DispID_10000 & var_A8 & "' And (ItemMast.LOGSITE_CODE='" & MemVar_1F92078 & "' OR ItemMast.LOGSITE_CODE='HO') And ItemMast.Code Not In (Select Code From ItemMast Where RestCode='"
  loc_16193FA: Set var_A4 = Me.Txt
  loc_1619400: Call 0.Method_Proc_176_28_161A6A40 (CInt(3), var_B0, var_134)
  loc_1619408: var_138 = var_B0.Tag
  loc_1619418: var_98 = var_D4 & var_134 & "') And ItemMast.ActiveYN<>'N' And Itemmast.ItemType Not In ('Combo','Store') And ItemMast.DispCode<>9999 And GravyItem<>'Yes'"
  loc_1619447: Set var_9C = Me.Txt
  loc_161944D: Call 0.Method_Proc_176_28_161A6A40 (CInt(1), var_A0)
  loc_1619455: var_A8 = var_A0.Text
  loc_1619470: Set var_A4 = Me.Txt
  loc_1619476: Call 0.Method_Proc_176_28_161A6A40 (CInt(2), var_B0)
  loc_161949E: If ((var_A8 <> vbNullString) And (var_B0.Text <> vbNullString)) Then
  loc_16194C6:   Set var_9C = Me.Txt
  loc_16194CC:   Call 0.Method_Proc_176_28_161A6A40 (CInt(2), var_A0, var_A8, var_98 & " And (ItemMast.ItemCatCode='")
  loc_16194D4:   var_104 = var_A0.Tag
  loc_16194E4:   var_128 = Proc_6_38_E68A98(CVar(var_A8), -1)
  loc_1619500:   Set var_A4 = Me.Txt
  loc_1619506:   Call 0.Method_Proc_176_28_161A6A40 (CInt(1), var_B0)
  loc_1619532:   unk_496185.Execute var_144 & FGrid1.DispID_10000 & var_A8 & "' And ItemMast.ItemGroup='" & Proc_6_38_E68A98(CVar(var_B0.Tag)) & "')", , 
  loc_1619543:   Set global_80 = var_144
  loc_1619581:   Set var_9C = Me.Txt
  loc_1619587:   Call 0.Method_Proc_176_28_161A6A40 (CInt(0), var_A0)
  loc_16195B0:   Set var_A4 = Me.Txt
  loc_16195B6:   Call 0.Method_Proc_176_28_161A6A40 (CInt(2), var_B0)
  loc_16195C6:   var_C4 = CVar(var_B0.Tag) 'String
  loc_16195EA:   Set var_144 = Me.Txt
  loc_16195F0:   Call 0.Method_Proc_176_28_161A6A40 (CInt(1), var_148)
  loc_161960C:   var_14C = "RestCode='" & var_A0.Tag & "' And ItemCatCode='" & Proc_6_38_E68A98(var_C4) & "' And GroupCode='" & Proc_6_38_E68A98(CVar(var_148.Tag))
  loc_161961D:   Me.Filter = CVar(var_14C & "' ")
  loc_161964D: End If
  loc_1619661: Call 0.Method_Proc_176_28_161A6A40 (CInt(1), var_A0)
  loc_1619669: var_A8 = var_A0.Text
  loc_1619684: Set var_A4 = Me.Txt
  loc_161968A: Call 0.Method_Proc_176_28_161A6A40 (CInt(2), var_B0)
  loc_16196B2: If ((var_A8 = vbNullString) And (var_B0.Text = vbNullString)) Then
  loc_16196CB:   unk_496185.Execute var_98, var_C4, -1
  loc_16196DC:   Set global_80 = Me.Txt
  loc_1619701:   Call 0.Method_Proc_176_28_161A6A40 (CInt(0), var_A0, var_A8)
  loc_1619709:   "RestCode='" = var_A0.Tag
  loc_161972E:   Me.Filter = CVar(Me.Txt & Proc_6_38_E68A98(CVar(var_A8)) & "'")
  loc_1619748: End If
  loc_1619756: Set var_9C = Me.Txt
  loc_161975C: Call 0.Method_Proc_176_28_161A6A40 (CInt(1), var_A0)
  loc_1619764: var_A8 = var_A0.Text
  loc_161977F: Set var_A4 = Me.Txt
  loc_1619785: Call 0.Method_Proc_176_28_161A6A40 (CInt(2), var_B0)
  loc_16197AD: If ((var_A8 = vbNullString) And (var_B0.Text <> vbNullString)) Then
  loc_16197D5:   Set var_9C = Me.Txt
  loc_16197DB:   Call 0.Method_Proc_176_28_161A6A40 (CInt(2), var_A0, var_A8, var_98 & " Or ItemMast.ItemCatCode='")
  loc_16197E3:   var_E4 = var_A0.Tag
  loc_16197F3:   var_128 = Proc_6_38_E68A98(CVar(var_A8), -1)
  loc_1619807:   unk_496185.Execute var_A4 & Me.Txt & Proc_6_38_E68A98(CVar(var_A8)) & "'", , 
  loc_1619818:   Set global_80 = var_A4
  loc_161984A:   Set var_9C = Me.Txt
  loc_1619850:   Call 0.Method_Proc_176_28_161A6A40 (CInt(0), var_A0)
  loc_1619884:   Set var_A4 = Me.Txt
  loc_161988A:   Call 0.Method_Proc_176_28_161A6A40 (CInt(2), var_B0)
  loc_16198AD:   var_104 = CVar("RestCode='" & Proc_6_38_E68A98(CVar(var_A0.Tag)) & "' And ItemCatCode='" & Proc_6_38_E68A98(CVar(var_B0.Tag)) & "'") 'String
  loc_16198B7:   Me.Filter = var_104
  loc_16198DD: End If
  loc_16198EB: Set var_9C = Me.Txt
  loc_16198F1: Call 0.Method_Proc_176_28_161A6A40 (CInt(1), var_A0)
  loc_16198F9: var_A8 = var_A0.Text
  loc_1619914: Set var_A4 = Me.Txt
  loc_161991A: Call 0.Method_Proc_176_28_161A6A40 (CInt(2), var_B0)
  loc_1619942: If ((var_A8 <> vbNullString) And (var_B0.Text = vbNullString)) Then
  loc_161996A:   Set var_9C = Me.Txt
  loc_1619970:   Call 0.Method_Proc_176_28_161A6A40 (CInt(1), var_A0, var_A8, var_98 & " Or ItemMast.ItemGroup='")
  loc_1619978:   var_E4 = var_A0.Tag
  loc_1619988:   var_128 = Proc_6_38_E68A98(CVar(var_A8), -1)
  loc_161999C:   unk_496185.Execute var_A4 & "RestCode='" & Proc_6_38_E68A98(CVar(var_A0.Tag)) & "'", , 
  loc_16199AD:   Set global_80 = var_A4
  loc_16199DF:   Set var_9C = Me.Txt
  loc_16199E5:   Call 0.Method_Proc_176_28_161A6A40 (CInt(0), var_A0)
  loc_1619A19:   Set var_A4 = Me.Txt
  loc_1619A1F:   Call 0.Method_Proc_176_28_161A6A40 (CInt(1), var_B0)
  loc_1619A42:   var_104 = CVar("RestCode='" & Proc_6_38_E68A98(CVar(var_A0.Tag)) & "' And GroupCode='" & Proc_6_38_E68A98(CVar(var_B0.Tag)) & "' ") 'String
  loc_1619A4C:   Me.Filter = var_104
  loc_1619A72: End If
  loc_1619A7D: Me.Requery -1
  loc_1619A96: If (Me.EOF = 0) Then
  loc_1619AB0:   For var_154 = 1 To CInt(Me.RecordCount): var_86 = var_154 'Integer
  loc_1619ABA:     Set var_158 = Me.FGrid1
  loc_1619AC1:     var_D4 = CVar(CLng(var_86)) 'Long
  loc_1619AC9:     var_114 = CVar(CLng(0)) 'Long
  loc_1619AD3:     var_C4 = CVar(CStr(var_86)) 'String
  loc_1619ADA:     LateIdCallSt
  loc_1619AE9:     var_D4 = CVar(CLng(var_86)) 'Long
  loc_1619AF1:     var_114 = CVar(CLng(1)) 'Long
  loc_1619AFF:     LateIdCallSt
  loc_1619B43:     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemCode")), CVar(CLng(2)), CVar(CLng(var_86)), var_158, vbNullString, var_114)) 'String
  loc_1619B4A:     LateIdCallSt
  loc_1619B70:     var_D4 = "ItemName"
  loc_1619B98:     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_D4)), CVar(CLng(3)), CVar(CLng(var_86)), var_158, var_E4, var_D4)) 'String
  loc_1619B9F:     LateIdCallSt
  loc_1619BED:     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")), CVar(CLng(4)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_1619BF4:     LateIdCallSt
  loc_1619C42:     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("GroupCode")), CVar(CLng(5)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_1619C49:     LateIdCallSt
  loc_1619C97:     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("GroupName")), CVar(CLng(6)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_1619C9E:     LateIdCallSt
  loc_1619CEC:     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemCatCode")), CVar(CLng(7)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_1619CF3:     LateIdCallSt
  loc_1619D41:     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemCatName")), CVar(CLng(8)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_1619D48:     LateIdCallSt
  loc_1619D96:     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(9)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_1619D9D:     LateIdCallSt
  loc_1619DEB:     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&HA)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_1619DF2:     LateIdCallSt
  loc_1619E40:     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Type")), CVar(CLng(&HB)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_1619E47:     LateIdCallSt
  loc_1619E9C:     LateIdCallSt
  loc_1619EC7:     var_D4 = "ItemCode"
  loc_1619EE6:     var_C4 = CVar(Me.Fields.Item(var_D4)) 'Address
  loc_1619EEF:     var_A8 = Proc_6_38_E68A98(var_C4, "Select Rate From ItemRate Where ItemCode='", var_1C8, -1, var_1CC, CDbl(0), var_158)
  loc_1619EF3:     var_B4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&HC)), CVar(CLng(var_86)), var_158, var_E4)) & Me.Fields.Item(var_D4).Tag
  loc_1619F1F:     var_E4 = CVar(Me.Fields.Item("RestCode")) 'Address
  loc_1619F41:     Set var_144 = Me.Txt
  loc_1619F47:     Call 0.Method_Proc_176_28_161A6A40 (CInt(4), var_148, CVar(var_114 & Proc_6_38_E68A98(var_E4, var_B4 & "' And RestCode='", var_158, var_C4) & "' And AppDate<="))
  loc_1619F56:     Proc_6_7_F25D88(var_124, CVar(var_148))
  loc_1619F75:     unk_496185.Execute CStr(var_D4 & var_124 & " Order By AppDate Desc "), 1, 
  loc_1619F80:     Set var_94 = var_1CC
  loc_1619FC4:     If (var_94.RecordCount > 0) Then
  loc_1619FE6:       var_C4 = CVar(var_94.Fields.Item("Rate")) 'Address
  loc_1619FED:       Proc_6_39_E7C810(var_E4)
  loc_1619FF6:       var_90 = CSng(var_E4)
  loc_161A003:     End If
  loc_161A007:     var_114 = CVar(CLng(var_86)) 'Long
  loc_161A00F:     var_178 = CVar(CLng(&HD)) 'Long
  loc_161A044:     LateIdCallSt
  loc_161A091:     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&HE)), CVar(CLng(var_86)), var_158, CVar(CStr(Format(var_90, "0.00"))), 1)) 'String
  loc_161A098:     LateIdCallSt
  loc_161A114:     var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateIncTax")), CVar(CLng(&HF)), CVar(CLng(var_86)), CVar(CLng(var_86)))) 'String
  loc_161A12D:     var_114 = (Proc_6_38_E68A98(CVar(Me.Fields.Item("RateIncTax")), var_158, CVar(Me.Fields.Item("RateIncTax")), 1) = vbNullString)
  loc_161A144:     LateIdCallSt
  loc_161A1A7:     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("IssueUnit")), CVar(CLng(&H10)), CVar(CLng(var_86)), var_158)) 'String
  loc_161A1AE:     LateIdCallSt
  loc_161A1FA:     Proc_6_39_E7C810(var_E4, CVar(Me.Fields.Item("ConvRatio")), CVar(CLng(&H11)), CVar(CLng(var_86)), var_158)
  loc_161A20A:     LateIdCallSt
  loc_161A258:     Proc_6_39_E7C810(var_E4, CVar(Me.Fields.Item("PurchRate")), CVar(CLng(&H12)), CVar(CLng(var_86)), var_158, CVar(CStr(var_E4)))
  loc_161A268:     LateIdCallSt
  loc_161A2B6:     Proc_6_39_E7C810(var_E4, CVar(Me.Fields.Item("LPurRate")), CVar(CLng(&H13)), CVar(CLng(var_86)), var_158, CVar(CStr(var_E4)))
  loc_161A2C6:     LateIdCallSt
  loc_161A344:     var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("NType")), CVar(CLng(&H14)), CVar(CLng(var_86)), CVar(CStr(IIf(var_114, "N", var_124))))) 'String
  loc_161A355:     var_A8 = Proc_6_38_E68A98(CVar(Me.Fields.Item("NType")), var_158, CVar(CStr(CVar(Me.Fields.Item("NType")))), CVar(Me.Fields.Item("NType")))
  loc_161A35D:     var_114 = (var_A8 = vbNullString)
  loc_161A374:     LateIdCallSt
  loc_161A3D7:     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("FinItem")), CVar(CLng(&H15)), CVar(CLng(var_86)), var_158)) 'String
  loc_161A3DE:     LateIdCallSt
  loc_161A42C:     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemType")), CVar(CLng(&H16)), CVar(CLng(var_86)), var_158, var_E4)) 'String
  loc_161A433:     LateIdCallSt
  loc_161A4E3:     var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemCode")), "BarCode")) 'String
  loc_161A4E9:     var_A8 = Proc_6_38_E68A98(CVar(Me.Fields.Item("BarCode")), var_158, CVar(Me.Fields.Item("ItemCode")), CVar(CStr(IIf("BarCode", "Other", var_124))))
  loc_161A4F8:     var_1A8 = IIf((var_A8 = vbNullString), var_124, CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("BarCode")), CVar(CLng(&H17)), CVar(CLng(var_86)))))
  loc_161A501:     var_1B8 = CVar(CStr(var_1A8)) 'String
  loc_161A508:     LateIdCallSt
  loc_161A571:     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("CommodityCode")), CVar(CLng(&H19)), CVar(CLng(var_86)), var_158)) 'String
  loc_161A578:     LateIdCallSt
  loc_161A5C4:     Proc_6_39_E7C810(var_E4, CVar(Me.Fields.Item("DispCode")), CVar(CLng(&H18)), CVar(CLng(var_86)), var_158)
  loc_161A5CD:     var_104 = CVar(CStr(var_E4)) 'String
  loc_161A5D4:     LateIdCallSt
  loc_161A5EA:     Set var_158 = Nothing 
  loc_161A5F4:     Me.MoveNext
  loc_161A612:     var_D4 = CVar((CLng(Me.FGrid1.Rows) + 1)) 'Long
  loc_161A621:     Me.FGrid1.Rows = "DispCode"
  loc_161A633:   Next var_154 'Integer
  loc_161A63B: Else
  loc_161A650:   Call Proc_176_29_133CAFC(Me.FGrid1.Text)
  loc_161A676:   MsgBox("There is No Data", &H40, "Menu Item Copy", var_104, var_124)
  loc_161A686: End If
  loc_161A691: Set global_80 = Nothing
  loc_161A69D: Set var_94 = Nothing
  loc_161A6A0: Exit Sub
End Sub

Public Sub Proc_176_29_133CAFC
  'Data Table: 496164
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As String
  loc_133C31F: Me.FGrid1.Row = 0
  loc_133C33A: Me.FGrid1.Col = 0
  loc_133C342: var_98 = 0
  loc_133C351: var_BC = CVar(CInt(3)) 'Integer
  loc_133C359: Set var_AC = Me.FGrid1
  loc_133C35F: LateIdCallSt
  loc_133C37D: Me.FGrid1.Row = 1
  loc_133C398: Me.FGrid1.Cols = &H1A
  loc_133C39D: var_98 = 0
  loc_133C3A9: var_BC = CVar(CLng(0)) 'Long
  loc_133C3AE: var_E0 = "SNo"
  loc_133C3B7: LateIdCallSt
  loc_133C3BF: var_98 = 0
  loc_133C3CE: var_BC = CVar(CInt(3)) 'Integer
  loc_133C3D5: LateIdCallSt
  loc_133C3DD: var_98 = 0
  loc_133C3E6: var_BC = &H1C2
  loc_133C3F2: LateIdCallSt
  loc_133C3FA: var_98 = 0
  loc_133C406: var_BC = CVar(CLng(1)) 'Long
  loc_133C40B: var_E0 = vbNullString
  loc_133C414: LateIdCallSt
  loc_133C41F: var_98 = CVar(CLng(1)) 'Long
  loc_133C424: var_BC = &H1F4
  loc_133C430: LateIdCallSt
  loc_133C438: var_98 = 0
  loc_133C444: var_BC = CVar(CLng(2)) 'Long
  loc_133C449: var_E0 = "ItemCode"
  loc_133C452: LateIdCallSt
  loc_133C45D: var_98 = CVar(CLng(2)) 'Long
  loc_133C462: var_BC = 0
  loc_133C46E: LateIdCallSt
  loc_133C476: var_98 = 0
  loc_133C482: var_BC = CVar(CLng(3)) 'Long
  loc_133C487: var_E0 = "Name"
  loc_133C490: LateIdCallSt
  loc_133C49B: var_98 = CVar(CLng(3)) 'Long
  loc_133C4A6: var_BC = CVar(CInt(1)) 'Integer
  loc_133C4AD: LateIdCallSt
  loc_133C4B8: var_98 = CVar(CLng(3)) 'Long
  loc_133C4C3: var_BC = CVar(CInt(4)) 'Integer
  loc_133C4CA: LateIdCallSt
  loc_133C4D5: var_98 = CVar(CLng(3)) 'Long
  loc_133C4DA: var_BC = &HDAC
  loc_133C4E6: LateIdCallSt
  loc_133C4EE: var_98 = 0
  loc_133C4FA: var_BC = CVar(CLng(4)) 'Long
  loc_133C4FF: var_E0 = "Unit"
  loc_133C508: LateIdCallSt
  loc_133C513: var_98 = CVar(CLng(4)) 'Long
  loc_133C518: var_BC = 0
  loc_133C524: LateIdCallSt
  loc_133C52C: var_98 = 0
  loc_133C538: var_BC = CVar(CLng(5)) 'Long
  loc_133C53D: var_E0 = "GroupCode"
  loc_133C546: LateIdCallSt
  loc_133C551: var_98 = CVar(CLng(5)) 'Long
  loc_133C556: var_BC = 0
  loc_133C562: LateIdCallSt
  loc_133C56A: var_98 = 0
  loc_133C576: var_BC = CVar(CLng(6)) 'Long
  loc_133C57B: var_E0 = "Item Group"
  loc_133C584: LateIdCallSt
  loc_133C58F: var_98 = CVar(CLng(6)) 'Long
  loc_133C59A: var_BC = CVar(CInt(1)) 'Integer
  loc_133C5A1: LateIdCallSt
  loc_133C5AC: var_98 = CVar(CLng(6)) 'Long
  loc_133C5B7: var_BC = CVar(CInt(4)) 'Integer
  loc_133C5BE: LateIdCallSt
  loc_133C5C9: var_98 = CVar(CLng(6)) 'Long
  loc_133C5CE: var_BC = &HBB8
  loc_133C5DA: LateIdCallSt
  loc_133C5E2: var_98 = 0
  loc_133C5EE: var_BC = CVar(CLng(7)) 'Long
  loc_133C5F3: var_E0 = "ItemCatCode"
  loc_133C5FC: LateIdCallSt
  loc_133C607: var_98 = CVar(CLng(7)) 'Long
  loc_133C60C: var_BC = 0
  loc_133C618: LateIdCallSt
  loc_133C620: var_98 = 0
  loc_133C62C: var_BC = CVar(CLng(8)) 'Long
  loc_133C631: var_E0 = "Category"
  loc_133C63A: LateIdCallSt
  loc_133C645: var_98 = CVar(CLng(8)) 'Long
  loc_133C650: var_BC = CVar(CInt(1)) 'Integer
  loc_133C657: LateIdCallSt
  loc_133C662: var_98 = CVar(CLng(8)) 'Long
  loc_133C66D: var_BC = CVar(CInt(4)) 'Integer
  loc_133C674: LateIdCallSt
  loc_133C67F: var_98 = CVar(CLng(8)) 'Long
  loc_133C684: var_BC = &H834
  loc_133C690: LateIdCallSt
  loc_133C698: var_98 = 0
  loc_133C6A4: var_BC = CVar(CLng(9)) 'Long
  loc_133C6A9: var_E0 = "DiscApp"
  loc_133C6B2: LateIdCallSt
  loc_133C6BD: var_98 = CVar(CLng(9)) 'Long
  loc_133C6C2: var_BC = 0
  loc_133C6CE: LateIdCallSt
  loc_133C6D6: var_98 = 0
  loc_133C6E2: var_BC = CVar(CLng(&HA)) 'Long
  loc_133C6E7: var_E0 = "RateEdit"
  loc_133C6F0: LateIdCallSt
  loc_133C6FB: var_98 = CVar(CLng(&HA)) 'Long
  loc_133C700: var_BC = 0
  loc_133C70C: LateIdCallSt
  loc_133C714: var_98 = 0
  loc_133C720: var_BC = CVar(CLng(&HB)) 'Long
  loc_133C725: var_E0 = "Type"
  loc_133C72E: LateIdCallSt
  loc_133C739: var_98 = CVar(CLng(&HB)) 'Long
  loc_133C73E: var_BC = 0
  loc_133C74A: LateIdCallSt
  loc_133C752: var_98 = 0
  loc_133C75E: var_BC = CVar(CLng(&HC)) 'Long
  loc_133C763: var_E0 = "Kitchen"
  loc_133C76C: LateIdCallSt
  loc_133C777: var_98 = CVar(CLng(&HC)) 'Long
  loc_133C77C: var_BC = 0
  loc_133C788: LateIdCallSt
  loc_133C790: var_98 = 0
  loc_133C79C: var_BC = CVar(CLng(&HD)) 'Long
  loc_133C7A1: var_E0 = "SaleRate"
  loc_133C7AA: LateIdCallSt
  loc_133C7B5: var_98 = CVar(CLng(&HD)) 'Long
  loc_133C7BA: var_BC = 0
  loc_133C7C6: LateIdCallSt
  loc_133C7CE: var_98 = 0
  loc_133C7DA: var_BC = CVar(CLng(&HE)) 'Long
  loc_133C7DF: var_E0 = "SChrgApp"
  loc_133C7E8: LateIdCallSt
  loc_133C7F3: var_98 = CVar(CLng(&HE)) 'Long
  loc_133C7F8: var_BC = 0
  loc_133C804: LateIdCallSt
  loc_133C80C: var_98 = 0
  loc_133C818: var_BC = CVar(CLng(&HF)) 'Long
  loc_133C81D: var_E0 = "RateIncTax"
  loc_133C826: LateIdCallSt
  loc_133C831: var_98 = CVar(CLng(&HF)) 'Long
  loc_133C836: var_BC = 0
  loc_133C842: LateIdCallSt
  loc_133C84A: var_98 = 0
  loc_133C856: var_BC = CVar(CLng(&H10)) 'Long
  loc_133C85B: var_E0 = "IssueUnit"
  loc_133C864: LateIdCallSt
  loc_133C86F: var_98 = CVar(CLng(&H10)) 'Long
  loc_133C874: var_BC = 0
  loc_133C880: LateIdCallSt
  loc_133C888: var_98 = 0
  loc_133C894: var_BC = CVar(CLng(&H11)) 'Long
  loc_133C899: var_E0 = "ConvRatio"
  loc_133C8A2: LateIdCallSt
  loc_133C8AD: var_98 = CVar(CLng(&H11)) 'Long
  loc_133C8B2: var_BC = 0
  loc_133C8BE: LateIdCallSt
  loc_133C8C6: var_98 = 0
  loc_133C8D2: var_BC = CVar(CLng(&H12)) 'Long
  loc_133C8D7: var_E0 = "PurchRate"
  loc_133C8E0: LateIdCallSt
  loc_133C8EB: var_98 = CVar(CLng(&H12)) 'Long
  loc_133C8F0: var_BC = 0
  loc_133C8FC: LateIdCallSt
  loc_133C904: var_98 = 0
  loc_133C910: var_BC = CVar(CLng(&H13)) 'Long
  loc_133C915: var_E0 = "LPurRate"
  loc_133C91E: LateIdCallSt
  loc_133C929: var_98 = CVar(CLng(&H13)) 'Long
  loc_133C92E: var_BC = 0
  loc_133C93A: LateIdCallSt
  loc_133C942: var_98 = 0
  loc_133C94E: var_BC = CVar(CLng(&H14)) 'Long
  loc_133C953: var_E0 = "NType"
  loc_133C95C: LateIdCallSt
  loc_133C967: var_98 = CVar(CLng(&H14)) 'Long
  loc_133C96C: var_BC = 0
  loc_133C978: LateIdCallSt
  loc_133C980: var_98 = 0
  loc_133C98C: var_BC = CVar(CLng(&H15)) 'Long
  loc_133C991: var_E0 = "FinItem"
  loc_133C99A: LateIdCallSt
  loc_133C9A5: var_98 = CVar(CLng(&H15)) 'Long
  loc_133C9AA: var_BC = 0
  loc_133C9B6: LateIdCallSt
  loc_133C9BE: var_98 = 0
  loc_133C9CA: var_BC = CVar(CLng(&H16)) 'Long
  loc_133C9CF: var_E0 = "ItemType"
  loc_133C9D8: LateIdCallSt
  loc_133C9E3: var_98 = CVar(CLng(&H16)) 'Long
  loc_133C9E8: var_BC = 0
  loc_133C9F4: LateIdCallSt
  loc_133C9FC: var_98 = 0
  loc_133CA08: var_BC = CVar(CLng(&H17)) 'Long
  loc_133CA0D: var_E0 = "BarCode"
  loc_133CA16: LateIdCallSt
  loc_133CA21: var_98 = CVar(CLng(&H17)) 'Long
  loc_133CA26: var_BC = 0
  loc_133CA32: LateIdCallSt
  loc_133CA3A: var_98 = 0
  loc_133CA46: var_BC = CVar(CLng(&H19)) 'Long
  loc_133CA4B: var_E0 = "BarCode"
  loc_133CA54: LateIdCallSt
  loc_133CA5F: var_98 = CVar(CLng(&H19)) 'Long
  loc_133CA64: var_BC = 0
  loc_133CA70: LateIdCallSt
  loc_133CA78: var_98 = 0
  loc_133CA84: var_BC = CVar(CLng(&H18)) 'Long
  loc_133CA89: var_E0 = "DispCode"
  loc_133CA92: LateIdCallSt
  loc_133CA9D: var_98 = CVar(CLng(&H18)) 'Long
  loc_133CAA2: var_BC = 0
  loc_133CAAE: LateIdCallSt
  loc_133CAB8: Set var_D0 = Nothing 
  loc_133CADB: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_133CADE:   var_98 = vbNullString
  loc_133CAE8:   Set var_AC = Me.FGrid1
  loc_133CAF9: End If
  loc_133CAF9: Exit Sub
End Sub
