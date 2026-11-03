VERSION 5.00
Begin VB.Form memOutStationEntry
  Caption = "Out-Station Member Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11130
  ClientHeight = 5145
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 0
    ForeColor = &HFF0000&
    Left = 2085
    Top = 600
    Width = 6120
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 75
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
    ForeColor = &HFF0000&
    Left = 2085
    Top = 990
    Width = 1410
    Height = 285
    TabIndex = 1
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
    ForeColor = &HFF0000&
    Left = 5235
    Top = 960
    Width = 1410
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
    ForeColor = &HFF0000&
    Left = 2085
    Top = 1770
    Width = 1410
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 8
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
    ForeColor = &HFF0000&
    Left = 5235
    Top = 1770
    Width = 1410
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 8
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
    ForeColor = &HFF0000&
    Left = 2085
    Top = 1380
    Width = 615
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin CommandButton CmdFillGrid
    Caption = "Fill Grid"
    Left = 6960
    Top = 1680
    Width = 1245
    Height = 315
    TabIndex = 6
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1515
    Top = 2940
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 975
    Top = 4395
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 12
    End
  End
  Begin DataGrid DGMember
    Left = 12720
    Top = 3480
    Width = 6720
    Height = 2685
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin MSFlexGrid FGPoint
    Left = 12225
    Top = 4935
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 9
  End
  Begin DataGrid DGRev
    Left = 9555
    Top = 1680
    Width = 3930
    Height = 2565
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin MSHFlexGrid FGrid
    Left = 1080
    Top = 2760
    Width = 13140
    Height = 4275
    TabIndex = 7
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11130
    Height = 450
    TabIndex = 14
  End
  Begin Label Label1
    Caption = "Member Name :"
    ForeColor = &HFF0000&
    Left = 450
    Top = 600
    Width = 1515
    Height = 285
    TabIndex = 22
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
  Begin Label Label2
    Caption = "Date From :"
    Index = 0
    ForeColor = &HFF0000&
    Left = 450
    Top = 1005
    Width = 1515
    Height = 285
    TabIndex = 21
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
  Begin Label Label2
    Caption = "Date To :"
    Index = 1
    ForeColor = &HFF0000&
    Left = 4380
    Top = 1020
    Width = 930
    Height = 285
    TabIndex = 20
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
  Begin Label Label2
    Caption = "App. Month From :"
    Index = 2
    ForeColor = &HFF0000&
    Left = 450
    Top = 1785
    Width = 1575
    Height = 285
    TabIndex = 19
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
  Begin Label Label2
    Caption = "App. Month To :"
    Index = 3
    ForeColor = &HFF0000&
    Left = 3795
    Top = 1785
    Width = 1425
    Height = 285
    TabIndex = 18
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
  Begin Label Label2
    Caption = "Change Revenue :"
    Index = 4
    ForeColor = &HFF0000&
    Left = 435
    Top = 1395
    Width = 1575
    Height = 285
    TabIndex = 17
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4485
    Top = 7725
    Width = 2790
    Height = 285
    TabIndex = 16
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
    Left = 1080
    Top = 7680
    Width = 2880
    Height = 255
    TabIndex = 15
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
End

Attribute VB_Name = "memOutStationEntry"

Private global_76 As Integer
Private global_60 As Recordset15
Private global_52 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '12B244C
  'Data Table: 4B8EC0
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Variant
  Dim var_108 As TextBox
  Dim var_15C As String
  loc_12B1E36: Set var_88 = Me.TxtGrid
  loc_12B1E3C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_12B1E4A: Proc_6_74_E226B0(var_8C)
  loc_12B1E56: Call Proc_295_47_E867E8(var_8C)
  loc_12B1E69: Set var_88 = Me.TxtGrid
  loc_12B1E6F: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12B1E77: var_8C.MaxLength = 0
  loc_12B1E8F: If (Index = 0) Then
  loc_12B1EA8:   Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_12B1EC3:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B1F02:   Set var_108 = Me.TxtGrid
  loc_12B1F08:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12B1F10:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_12B1F41:   var_114 = CLng(Me.FGrid.Col)
  loc_12B1F51:   If (var_114 = CLng(1)) Then
  loc_12B1F95:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12B1F98:       Exit Sub
  loc_12B1F99:     End If
  loc_12B1FA4:     Set var_8C = Me.FGPoint
  loc_12B1FBC:     Proc_6_137_1193554(Me.DGRev, global_68, Index, var_8C)
  loc_12B1FD8:     Set var_88 = Me.TxtGrid
  loc_12B1FDE:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, &H32)
  loc_12B1FE6:     var_8C.MaxLength = var_114
  loc_12B2005:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B200D:     var_E4 = CVar(CLng(1)) 'Long
  loc_12B2040:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_12B2049:       Me.MoveFirst
  loc_12B2069:       var_E4 = CVar(CLng(5)) 'Long
  loc_12B2072:       Set var_8C = Me.FGrid
  loc_12B2089:       Proc_6_17_EAA2B0(var_12C, CVar(CStr(var_8C.TextMatrix))), var_E4, CVar(CLng(Me.FGrid.Row)))
  loc_12B20A8:       var_110 = CStr("Code=" & var_12C)
  loc_12B20B2:       Me.Find var_110, 0, 1
  loc_12B20E2:       If (Me.EOF = &HFF) Then
  loc_12B20EB:         Me.MoveFirst
  loc_12B20F0:       End If
  loc_12B20F0:     End If
  loc_12B20F3:   Else
  loc_12B20FA:     If (var_114 = CLng(3)) Then
  loc_12B210C:       Set var_88 = Me.TxtGrid
  loc_12B2112:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &HF, var_15C)
  loc_12B211A:       var_8C.MaxLength = var_E4
  loc_12B2133:       ReDim var_160(0 To 4)
  loc_12B214A:       var_160(0) = "Monthly"
  loc_12B2159:       var_160(1) = "Bi Monthly"
  loc_12B2168:       var_160(2) = "Quarterly"
  loc_12B2177:       var_160(3) = "Half Yearly"
  loc_12B2186:       var_160(4) = "Annual"
  loc_12B219D:       global_84 = Array(var_160)
  loc_12B21A8:       Set var_108 = Me.ListView
  loc_12B21C3:       Set var_8C = Me.TxtGrid
  loc_12B21DD:       Set global_100 = Proc_6_66_EFF8FC(var_108, var_8C, Index, global_84, 5)
  loc_12B21FB:       Set var_88 = Me.TxtGrid
  loc_12B2201:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, global_84)
  loc_12B221B:       Set var_90 = Me.TxtGrid
  loc_12B2221:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_12B2229:       var_108.Tag = var_8C.Text
  loc_12B223F:     Else
  loc_12B2246:       If (var_114 = CLng(4)) Then
  loc_12B2257:         Set var_88 = Me.TxtGrid
  loc_12B225D:         Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12B2265:         var_8C.MaxLength = 3
  loc_12B227E:         ReDim var_160(0 To &HB)
  loc_12B2295:         var_160(0) = "Jan"
  loc_12B22A4:         var_160(1) = "Feb"
  loc_12B22B3:         var_160(2) = "Mar"
  loc_12B22C2:         var_160(3) = "Apr"
  loc_12B22D1:         var_160(4) = "May"
  loc_12B22E0:         var_160(5) = "Jun"
  loc_12B22EF:         var_160(6) = "Jul"
  loc_12B22FE:         var_160(7) = "Aug"
  loc_12B230D:         var_160(8) = "Sep"
  loc_12B231C:         var_160(9) = "Oct"
  loc_12B232B:         var_160(&HA) = "Nov"
  loc_12B233A:         var_160(&HB) = "Dec"
  loc_12B2351:         global_84 = Array(var_160)
  loc_12B235C:         Set var_108 = Me.ListView
  loc_12B2377:         Set var_8C = Me.TxtGrid
  loc_12B2391:         Set global_100 = Proc_6_66_EFF8FC(var_108, var_8C, Index, global_84)
  loc_12B23AF:         Set var_88 = Me.TxtGrid
  loc_12B23B5:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110)
  loc_12B23BD:         &HC = var_8C.Text
  loc_12B23CF:         Set var_90 = Me.TxtGrid
  loc_12B23D5:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_12B23DD:         var_108.Tag = global_84
  loc_12B23F3:       Else
  loc_12B23FA:         If (var_114 = CLng(2)) Then
  loc_12B240C:           Set var_88 = Me.TxtGrid
  loc_12B2412:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_12B241A:           var_8C.MaxLength = 8
  loc_12B242F:           If (global_76 = 0) Then
  loc_12B243A:             var_110 = "{Home}+{End}"
  loc_12B2440:             Proc_303_0_FB9B68(var_110, 0)
  loc_12B2448:           End If
  loc_12B2448:         End If
  loc_12B2448:       End If
  loc_12B2448:     End If
  loc_12B2448:   End If
  loc_12B2448: End If
  loc_12B2448: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12EF4F4
  'Data Table: 4B8EC0
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C4 As Variant
  Dim var_98 As DataGrid
  Dim var_DC As DataGrid
  Dim Me As Recordset15
  Dim var_E8 As TextBox
  Dim var_F8 As TextBox
  loc_12EEE38: If (KeyCode = 0) Then
  loc_12EEE45:   If (CLng(Shift) = &H1B) Then
  loc_12EEE55:     Set var_8C = Me.TxtGrid
  loc_12EEE5B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_12EEE75:     Set var_98 = Me.TxtGrid
  loc_12EEE7B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12EEE83:     var_9C.Text = var_90.Tag
  loc_12EEE9A:     Set var_8C = Me.FGrid
  loc_12EEEB7:     Set var_8C = Me.TxtGrid
  loc_12EEEBD:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12EEEC5:     var_90.Visible = FGrid.DispID_8001
  loc_12EEEDF:     Set var_8C = Me.TxtGrid
  loc_12EEEE5:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12EEEED:     var_90.MaxLength = 0
  loc_12EEEF9:     Exit Sub
  loc_12EEEFA:   End If
  loc_12EEF1D:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_12EEF2C:     Set var_8C = Me.TxtGrid
  loc_12EEF32:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B4)
  loc_12EEF3A:     var_B0 = var_90.Left
  loc_12EEF51:     Me.DGRev.Left = CVar(var_B4)
  loc_12EEF6B:     Set var_98 = Me.TxtGrid
  loc_12EEF71:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12EEF79:     var_D8 = var_9C.Height
  loc_12EEF8A:     Set var_8C = Me.TxtGrid
  loc_12EEF90:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12EEFA4:     var_C4 = CVar((var_90.Top + var_D8)) 'Single
  loc_12EEFB3:     Me.DGRev.Top = CVar(var_90.Top)
  loc_12EEFD0:     Set var_E8 = Me.TxtGrid
  loc_12EEFE2:     Set var_9C = Me.FGPoint
  loc_12EEFED:     Set var_98 = Nothing
  loc_12EF01B:     Proc_6_69_134A198(Me.DGRev, var_E8, KeyCode, global_68, Shift, &HFF)
  loc_12EF03A:     var_B4 = Me.RecordCount
  loc_12EF048:     If (var_B4 > 0) Then
  loc_12EF04F:       Set var_98 = Me.DGRev
  loc_12EF06E:       Proc_6_138_106D6F8(var_98, global_68, KeyCode, Me.FGPoint, 1)
  loc_12EF07C:     End If
  loc_12EF086:     If (CLng(Shift) = &HD) Then
  loc_12EF08F:       Call Proc_295_49_12563AC(KeyCode, var_DE, var_98)
  loc_12EF09A:       If (var_DE = &HFF) Then
  loc_12EF0E0:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_76, 5)
  loc_12EF0F0:       End If
  loc_12EF0F0:     End If
  loc_12EF0F3:   Else
  loc_12EF0FA:     If (var_B0 = CLng(2)) Then
  loc_12EF13D:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_76 = &HFF))) Then
  loc_12EF146:         Call Proc_295_49_12563AC(KeyCode, var_DE, 0, 2)
  loc_12EF151:         If (var_DE = &HFF) Then
  loc_12EF188:           Set var_90 = Me.TxtGrid
  loc_12EF197:           Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_76, 5, 0)
  loc_12EF1A7:         End If
  loc_12EF1A7:       End If
  loc_12EF1AA:     Else
  loc_12EF1B1:       If (var_B0 = CLng(3)) Then
  loc_12EF1C3:         Set var_8C = Me.TxtGrid
  loc_12EF1C9:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, &HF, 3, 0)
  loc_12EF1D1:         var_90.MaxLength = 0
  loc_12EF1FF:         Set var_8C = Me.TxtGrid
  loc_12EF205:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_12EF20D:         var_9C = var_90.Left
  loc_12EF21F:         Set var_98 = Me.TxtGrid
  loc_12EF225:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D8)
  loc_12EF22D:         0 = var_9C.Top
  loc_12EF23F:         Set var_DC = Me.TxtGrid
  loc_12EF245:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E8)
  loc_12EF25F:         Set var_EC = Me.TxtGrid
  loc_12EF265:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F8)
  loc_12EF26D:         var_FC = var_F8.Width
  loc_12EF2B5:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12EF2E3:         If (CLng(Shift) = &HD) Then
  loc_12EF2EC:           Call Proc_295_49_12563AC(KeyCode, var_DE, CInt(var_B4), CInt((var_D8 + var_E8.Height)))
  loc_12EF2F7:           If (var_DE = &HFF) Then
  loc_12EF305:             Set var_9C = Me.TxtGrid
  loc_12EF32E:             Set var_90 = var_9C
  loc_12EF33D:             Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_76, 5)
  loc_12EF34D:           End If
  loc_12EF34D:         End If
  loc_12EF350:       Else
  loc_12EF357:         If (var_B0 = CLng(4)) Then
  loc_12EF369:           Set var_8C = Me.TxtGrid
  loc_12EF36F:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 3, 0, 4)
  loc_12EF377:           var_90.MaxLength = 0
  loc_12EF3A5:           Set var_8C = Me.TxtGrid
  loc_12EF3AB:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_12EF3B3:           CInt(var_FC) = var_90.Left
  loc_12EF3C5:           Set var_98 = Me.TxtGrid
  loc_12EF3CB:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D8)
  loc_12EF3D3:           1300 = var_9C.Top
  loc_12EF3E5:           Set var_DC = Me.TxtGrid
  loc_12EF3EB:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E8)
  loc_12EF405:           Set var_EC = Me.TxtGrid
  loc_12EF40B:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F8)
  loc_12EF413:           var_FC = var_F8.Width
  loc_12EF45B:           Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12EF489:           If (CLng(Shift) = &HD) Then
  loc_12EF492:             Call Proc_295_49_12563AC(KeyCode, var_DE, CInt(var_B4), CInt((var_D8 + var_E8.Height)))
  loc_12EF49D:             If (var_DE = &HFF) Then
  loc_12EF4E3:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_76, 5)
  loc_12EF4F3:             End If
  loc_12EF4F3:           End If
  loc_12EF4F3:         End If
  loc_12EF4F3:       End If
  loc_12EF4F3:     End If
  loc_12EF4F3:   End If
  loc_12EF4F3: End If
  loc_12EF4F3: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F2E078
  'Data Table: 4B8EC0
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F2DF6F: Proc_6_58_E054C0(arg_10)
  loc_F2DF80: If (KeyAscii = 0) Then
  loc_F2DF96:   var_A0 = CLng(Me.FGrid.Col)
  loc_F2DFA6:   If (var_A0 = CLng(1)) Then
  loc_F2DFC5:     If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_F2DFD7:       var_A4 = "Name"
  loc_F2DFF2:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_68, arg_10)
  loc_F2E00C:       Set var_AC = Me.FGPoint
  loc_F2E024:       Proc_6_138_106D6F8(Me.DGRev, global_68, KeyAscii, var_AC)
  loc_F2E032:     End If
  loc_F2E035:   Else
  loc_F2E03C:     If (var_A0 = CLng(2)) Then
  loc_F2E049:       Set var_8C = Me.TxtGrid
  loc_F2E04F:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F2E06A:       Proc_6_42_129A86C(var_AC, arg_10, 5, 2)
  loc_F2E076:     End If
  loc_F2E076:   End If
  loc_F2E076: End If
  loc_F2E076: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F8CF14
  'Data Table: 4B8EC0
  Dim var_A0 As Long
  loc_F8CDB8: On Error Goto loc_F8CF0C
  loc_F8CDC7: If (KeyCode = 0) Then
  loc_F8CDDD:   var_A0 = CLng(Me.FGrid.Col)
  loc_F8CDED:   If (var_A0 = CLng(1)) Then
  loc_F8CE13:     If ((Shift <> &HD) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_F8CE24:       Call TxtGrid_KeyDown(KeyCode, global_78)
  loc_F8CE53:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_68, Shift, "Name")
  loc_F8CE62:     End If
  loc_F8CE65:   Else
  loc_F8CE6C:     If Not (var_A0 = CLng(3)) Then
  loc_F8CE76:       If (var_A0 = CLng(4)) Then
  loc_F8CE79:       End If
  loc_F8CE9B:       If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F8CEAC:         Call TxtGrid_KeyDown(KeyCode, global_78)
  loc_F8CEB1:       End If
  loc_F8CECC:       If (Me.FrmList.Visible = &HFF) Then
  loc_F8CEFB:         Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, KeyCode, Shift, global_100)
  loc_F8CF0B:       End If
  loc_F8CF0B:     End If
  loc_F8CF0B:   End If
  loc_F8CF0B: End If
  loc_F8CF0B: Exit Sub
  loc_F8CF0C: ' Referenced from: F8CDB8
  loc_F8CF0C: Proc_6_60_E62BC4(0, &HFF, 0)
  loc_F8CF11: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E218E8
  'Data Table: 4B8EC0
  Dim arg_10 As Integer
  loc_E218D0: If (Cancel = 0) Then
  loc_E218D9:   Call Proc_295_49_12563AC(Cancel, var_88)
  loc_E218E2:   arg_10 = Not(var_88)
  loc_E218E5: End If
  loc_E218E5: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '101A9B0
  'Data Table: 4B8EC0
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_101A7A2: Set var_88 = Me.Txt
  loc_101A7A8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_101A7B6: Proc_6_74_E226B0(var_8C)
  loc_101A7C2: Call Proc_295_47_E867E8(var_8C)
  loc_101A7CA: var_92 = Index
  loc_101A7D5: If (var_92 = CInt(0)) Then
  loc_101A7EF:   If (Me.RecordCount > 0) Then
  loc_101A7FD:     Set var_8C = Me.FGPoint
  loc_101A815:     Proc_6_137_1193554(Me.DGMember, global_64, Index)
  loc_101A823:   End If
  loc_101A871:   Set var_88 = Me.Txt
  loc_101A877:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_101A87F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_101A897:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_101A89A:     Exit Sub
  loc_101A89B:   End If
  loc_101A8A8:   Set var_88 = Me.Txt
  loc_101A8AE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_101A8C1:   global_72 = var_8C.Tag
  loc_101A8DC:   Set var_88 = Me.Txt
  loc_101A8E2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_101A8EA:   var_A0 = var_8C.Text
  loc_101A8F2:   var_D4 = CVar(var_A0) 'String
  loc_101A937:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_101A940:     Me.MoveFirst
  loc_101A965:     Set var_88 = Me.Txt
  loc_101A96B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_101A973:     0 = var_8C.Text
  loc_101A981:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_101A997:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_101A9AF:   End If
  loc_101A9AF: End If
  loc_101A9AF: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F361DC
  'Data Table: 4B8EC0
  loc_F360D6: If (CLng(Shift) = &H1B) Then
  loc_F360D9:   Call Proc_295_47_E867E8()
  loc_F360DE:   Exit Sub
  loc_F360DF: End If
  loc_F360ED: If (KeyCode = CInt(0)) Then
  loc_F36108:   Set var_9C = Nothing
  loc_F36113:   Set var_98 = Nothing
  loc_F36141:   Proc_6_69_134A198(Me.DGMember, Me.Txt, KeyCode, global_64, Shift, 0)
  loc_F36155: End If
  loc_F36190: If ((CBool(Me.DGMember.Visible) = 0) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_F361A8:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F361B1:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_F361B6:   End If
  loc_F361CB:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F361D4:     Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_F361D9:   End If
  loc_F361D9: End If
  loc_F361D9: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EF0868
  'Data Table: 4B8EC0
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_EF07A3: Proc_6_58_E054C0(arg_10)
  loc_EF07B6: If (KeyAscii = CInt(5)) Then
  loc_EF07E2:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_EF07F2:     Set var_CC = Me.Txt
  loc_EF07F8:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EF0800:     var_D0.Text = "Yes"
  loc_EF080F:   Else
  loc_EF0838:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_EF0848:       Set var_CC = Me.Txt
  loc_EF084E:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EF0856:       var_D0.Text = "No"
  loc_EF0862:     End If
  loc_EF0862:   End If
  loc_EF0864:   arg_10 = 0
  loc_EF0867: End If
  loc_EF0867: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA1914
  'Data Table: 4B8EC0
  loc_EA18A6: If (KeyCode = CInt(0)) Then
  loc_EA18C5:   If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_EA18D9:     var_A4 = "Name"
  loc_EA18FD:     Proc_6_68_129FB34(Me.DGMember, Me.Txt, KeyCode, global_64)
  loc_EA1910:   End If
  loc_EA1910: End If
  loc_EA1910: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C38C
  'Data Table: 4B8EC0
  loc_E4C36A: Set var_88 = Me.Txt
  loc_E4C370: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C37E: Proc_6_73_E22704(var_8C)
  loc_E4C38A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '160006C
  'Data Table: 4B8EC0
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_100 As Variant
  Dim var_DC As Variant
  Dim var_134 As String
  Dim var_13C As String
  Dim var_144 As String
  Dim unk_4B8ED3 As Connection15
  Dim var_148 As Variant
  Dim var_14C As Variant
  Dim var_138 As String
  Dim var_9C As Recordset15
  Dim var_150 As String
  Dim var_15C As Fields15
  Dim var_160 As Field20
  Dim var_120 As String
  Dim var_1A0 As Variant
  Dim var_130 As Variant
  loc_15FEC3B: var_8E = Cancel
  loc_15FEC46: If (var_8E = CInt(0)) Then
  loc_15FEC54:   Set var_94 = Me.Txt
  loc_15FEC5A:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15FEC62:   var_A0 = "Member Name"
  loc_15FEC83:   If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_15FEC91:     Set var_94 = Me.Txt
  loc_15FEC97:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15FEC9F:     var_98.SetFocus
  loc_15FECAD:     arg_10 = &HFF
  loc_15FECB0:     Exit Sub
  loc_15FECB1:   End If
  loc_15FECFF:   Set var_94 = Me.Txt
  loc_15FED05:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_15FED0D:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_15FED25:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_15FED35:     Set var_94 = Me.Txt
  loc_15FED3B:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15FED43:     var_98.Text = vbNullString
  loc_15FED5C:     Set var_94 = Me.Txt
  loc_15FED62:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15FED6A:     var_98.Tag = vbNullString
  loc_15FED79:   Else
  loc_15FEDB4:     Set var_9C = Me.Txt
  loc_15FEDBA:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_15FEDC2:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15FEDF5:     var_98 = Me.Fields.Item("Code")
  loc_15FEE06:     var_A0 = CStr(var_98.Value)
  loc_15FEE13:     Set var_9C = Me.Txt
  loc_15FEE19:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_15FEE21:     var_BC.Tag = var_A0
  loc_15FEE37:   End If
  loc_15FEE4A:   Set var_94 = Me.Txt
  loc_15FEE50:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_15FEE58:   global_72 = var_98.Tag
  loc_15FEE6C:   If (var_8E <> var_A0) Then
  loc_15FEE7D:     Set var_94 = Me.Txt
  loc_15FEE83:     Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_15FEE8B:     var_98.Text = vbNullString
  loc_15FEEA5:     Set var_94 = Me.Txt
  loc_15FEEAB:     Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_15FEEB3:     var_98.Text = vbNullString
  loc_15FEED2:     Me.FGrid.Rows = 1
  loc_15FEEEF:     var_EC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_15FEEF7:     Set var_98 = Me.FGrid
  loc_15FEF26:     Me.FGrid.FixedRows = 1
  loc_15FEF2E:   End If
  loc_15FEF31: Else
  loc_15FEF39:   If (var_8E = CInt(5)) Then
  loc_15FEF47:     Set var_94 = Me.Txt
  loc_15FEF4D:     Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_15FEF76:     If (Trim(CVar(var_98)) = vbNullString) Then
  loc_15FEF7B:       arg_10 = &HFF
  loc_15FEF7E:       Exit Sub
  loc_15FEF7F:     End If
  loc_15FEF8D:     Set var_94 = Me.Txt
  loc_15FEF93:     Call 0.Method_Txt_Validate0 (CInt(5), var_98, var_A0)
  loc_15FEF9B:     arg_10 = var_98.Text
  loc_15FEFB2:     If (var_A0 <> "Yes") Then
  loc_15FEFC2:       Set var_94 = Me.Txt
  loc_15FEFC8:       Call 0.Method_Txt_Validate0 (CInt(3), var_98, 0)
  loc_15FEFD0:       var_98.Enabled = FGrid.DispID_10000
  loc_15FEFE9:       Set var_94 = Me.Txt
  loc_15FEFEF:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_15FEFF7:       var_98.Enabled = False
  loc_15FF011:       Set var_94 = Me.Txt
  loc_15FF017:       Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_15FF01F:       var_98.Text = vbNullString
  loc_15FF039:       Set var_94 = Me.Txt
  loc_15FF03F:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_15FF047:       var_98.Text = vbNullString
  loc_15FF066:       Me.FGrid.Rows = 1
  loc_15FF083:       var_EC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_15FF08B:       Set var_98 = Me.FGrid
  loc_15FF0BA:       Me.FGrid.FixedRows = 1
  loc_15FF0D1:       Me.FGrid.Enabled = False
  loc_15FF0E5:       Me.CmdFillGrid.Enabled = False
  loc_15FF0F0:     Else
  loc_15FF0FD:       Set var_94 = Me.Txt
  loc_15FF103:       Call 0.Method_Txt_Validate0 (CInt(3), var_98, &HFF)
  loc_15FF10B:       var_98.Enabled = FGrid.DispID_10000
  loc_15FF124:       Set var_94 = Me.Txt
  loc_15FF12A:       Call 0.Method_Txt_Validate0 (CInt(4), var_98, &HFF)
  loc_15FF132:       var_98.Enabled = var_EC
  loc_15FF14C:       Me.FGrid.Enabled = True
  loc_15FF160:       Me.CmdFillGrid.Enabled = True
  loc_15FF173:       Set var_94 = Me.Txt
  loc_15FF179:       Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_15FF181:       var_98.SetFocus
  loc_15FF18D:     End If
  loc_15FF190:   Else
  loc_15FF198:     If (var_8E = CInt(2)) Then
  loc_15FF1A5:       Set var_94 = Me.Txt
  loc_15FF1AB:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15FF1CB:       Set var_BC = Me.Txt
  loc_15FF1D1:       Call 0.Method_Txt_Validate0 (Cancel, var_100)
  loc_15FF1D9:       var_100.Text = Proc_6_33_1512840(var_98)
  loc_15FF1FA:       Set var_94 = Me.Txt
  loc_15FF200:       Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_15FF21F:       If (var_98.Text = vbNullString) Then
  loc_15FF23B:         MsgBox("Date To Can't Be Blank", 0, var_EC, var_FC, var_130)
  loc_15FF256:         Set var_94 = Me.Txt
  loc_15FF25C:         Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_15FF264:         var_98.SetFocus
  loc_15FF272:         arg_10 = &HFF
  loc_15FF275:         Exit Sub
  loc_15FF276:       End If
  loc_15FF284:       Set var_9C = Me.Txt
  loc_15FF28A:       Call 0.Method_Txt_Validate0 (CInt(1), var_BC, var_134)
  loc_15FF292:       arg_10 = var_BC.Text
  loc_15FF2A5:       Set var_94 = Me.Txt
  loc_15FF2AB:       Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_15FF2D5:       If (CDate(var_98.Text) < CDate(var_134)) Then
  loc_15FF2F1:         MsgBox("To Date Can't Be Less Than From Date", 0, var_EC, var_FC, var_130)
  loc_15FF303:         arg_10 = &HFF
  loc_15FF306:       End If
  loc_15FF309:     Else
  loc_15FF311:       If (var_8E = CInt(1)) Then
  loc_15FF31E:         Set var_94 = Me.Txt
  loc_15FF324:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15FF344:         Set var_BC = Me.Txt
  loc_15FF34A:         Call 0.Method_Txt_Validate0 (Cancel, var_100)
  loc_15FF352:         var_100.Text = Proc_6_33_1512840(var_98, arg_10)
  loc_15FF373:         Set var_94 = Me.Txt
  loc_15FF379:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_15FF381:         var_A0 = var_98.Text
  loc_15FF398:         If (var_A0 = vbNullString) Then
  loc_15FF3B4:           MsgBox("Date From Can't Be Blank", 0, var_EC, var_FC, var_130)
  loc_15FF3CF:           Set var_94 = Me.Txt
  loc_15FF3D5:           Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_15FF3DD:           var_98.SetFocus
  loc_15FF3EB:           arg_10 = &HFF
  loc_15FF3EE:           Exit Sub
  loc_15FF3EF:         End If
  loc_15FF3FD:         Set var_94 = Me.Txt
  loc_15FF403:         Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_A0)
  loc_15FF40B:         arg_10 = var_98.Text
  loc_15FF429:         Set var_9C = Me.Txt
  loc_15FF42F:         Call 0.Method_Txt_Validate0 (CInt(1), var_BC, var_134)
  loc_15FF437:         IsDate(CVar(var_A0)) = var_BC.Text
  loc_15FF43F:         var_EC = CVar(var_134) 'String
  loc_15FF45A:         If (var_EC And IsDate(var_EC)) Then
  loc_15FF46B:           Set var_9C = Me.Txt
  loc_15FF471:           Call 0.Method_Txt_Validate0 (CInt(1), var_BC)
  loc_15FF48C:           Set var_94 = Me.Txt
  loc_15FF492:           Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_15FF4BC:           If (CDate(var_98.Text) < CDate(var_BC.Text)) Then
  loc_15FF4D8:             MsgBox("To Date Can't Be Less Than From Date", 0, var_EC, var_FC, var_130)
  loc_15FF4EA:             arg_10 = &HFF
  loc_15FF4ED:           End If
  loc_15FF4ED:         End If
  loc_15FF4F0:       Else
  loc_15FF4F8:         If (var_8E = CInt(4)) Then
  loc_15FF508:           Set var_94 = Me.Txt
  loc_15FF50E:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15FF52D:           If (var_98.Text = vbNullString) Then
  loc_15FF549:             MsgBox("App. Month To is a Required Field", 0, var_EC, var_FC, var_130)
  loc_15FF55B:             arg_10 = &HFF
  loc_15FF55E:             Exit Sub
  loc_15FF55F:           End If
  loc_15FF569:           Set var_94 = Me.Txt
  loc_15FF56F:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15FF58F:           Set var_BC = Me.Txt
  loc_15FF595:           Call 0.Method_Txt_Validate0 (Cancel, var_100)
  loc_15FF59D:           var_100.Text = Proc_6_120_133A1D8(var_98, arg_10)
  loc_15FF5BE:           Set var_94 = Me.Txt
  loc_15FF5C4:           Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_15FF5CC:           var_A0 = var_98.Text
  loc_15FF5D4:           var_CC = CVar(var_A0) 'String
  loc_15FF5E6:           If IsDate(var_CC) Then
  loc_15FF5F7:             Set var_94 = Me.Txt
  loc_15FF5FD:             Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_15FF617:             If (var_98.Enabled = &HFF) Then
  loc_15FF620:               var_DC = 0
  loc_15FF647:               Set var_94 = Me.Txt
  loc_15FF64D:               Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select count(*) from MemBill where Memcode='", var_CC, -1)
  loc_15FF665:               var_13C = var_148 & var_A0 & "' and cast('01/' + MthYear As smalldatetime)=cast('01/' + '"
  loc_15FF676:               Set var_9C = Me.Txt
  loc_15FF67C:               Call 0.Method_Txt_Validate0 (CInt(4), var_BC, var_138, var_13C)
  loc_15FF684:               var_DC = var_BC.Text
  loc_15FF694:               var_144 = var_14C & var_138 & "' As smalldatetime)"
  loc_15FF69D:               unk_4B8ED3.Execute var_144, var_EC, arg_10
  loc_15FF6A5:                = var_98.Tag.Fields
  loc_15FF6AD:                = var_148.Item()
  loc_15FF6B5:                = var_14C.Value
  loc_15FF6C0:               Proc_6_39_E7C810(var_FC)
  loc_15FF6F9:               If (var_FC > 0) Then
  loc_15FF70F:                 var_CC = "Bill Already Exists For Month For Perticular Member"
  loc_15FF715:                 MsgBox(var_CC, 0, var_EC, var_FC, var_130)
  loc_15FF727:                 arg_10 = &HFF
  loc_15FF72A:                 Exit Sub
  loc_15FF72B:               End If
  loc_15FF72E:             Else
  loc_15FF73C:               Set var_94 = Me.Txt
  loc_15FF742:               Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0)
  loc_15FF74A:               arg_10 = var_98.Tag
  loc_15FF75D:               Set var_148 = Me.Txt
  loc_15FF763:               Call 0.Method_Txt_Validate0 (CInt(4), var_14C)
  loc_15FF776:               var_DC = 0
  loc_15FF793:               var_134 = "Select Max(cast('01/' + MthYear As smalldatetime)) from MemBill where Memcode='" & var_A0
  loc_15FF79A:               var_138 = var_148 & var_A0 & "'"
  loc_15FF7A3:               unk_4B8ED3.Execute var_138, var_CC, -1
  loc_15FF7AB:               var_9C = var_9C.Fields
  loc_15FF7B3:               var_DC = var_BC.Item(var_BC)
  loc_15FF7BB:               var_100 = var_100.Value
  loc_15FF82B:               Set var_94 = Me.Txt
  loc_15FF831:               Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select count(*) from MemBill where Memcode='", var_CC, -1, var_14C)
  loc_15FF839:               var_15C = var_98.Tag
  loc_15FF842:               var_134 = 0 & var_A0
  loc_15FF849:               var_13C = var_134 & "' and cast('01/' + MthYear As smalldatetime)=cast('01/' + '"
  loc_15FF85A:               Set var_9C = Me.Txt
  loc_15FF860:               Call 0.Method_Txt_Validate0 (CInt(4), var_BC, var_138, var_14C.Text, var_160)
  loc_15FF868:               var_EC = var_BC.Text
  loc_15FF878:               var_150 = CDate(CDbl((CDate(var_EC) <> CDate("01/" & var_14C.Text)))) & var_138 & "' As smalldatetime) And cast('01/' + MthYear As smalldatetime)<>(Select Max(cast('01/' + MthYear As smalldatetime)) from MemBill where Memcode='"
  loc_15FF889:               Set var_100 = Me.Txt
  loc_15FF88F:               Call 0.Method_Txt_Validate0 (CInt(0), var_148, var_144)
  loc_15FF897:               var_150 = var_148.Tag
  loc_15FF8B0:               unk_4B8ED3.Execute var_EC & var_144 & "')", var_EC, 
  loc_15FF8B8:                = var_14C.Fields
  loc_15FF8C0:                = var_15C.Item()
  loc_15FF8C8:                = var_160.Value
  loc_15FF8D3:               Proc_6_39_E7C810(var_FC)
  loc_15FF916:               If (var_FC > 0) Then
  loc_15FF932:                 MsgBox("Bill Already Exists For Month For Perticular Member", 0, var_EC, var_FC, var_130)
  loc_15FF944:                 arg_10 = &HFF
  loc_15FF947:                 Exit Sub
  loc_15FF948:               End If
  loc_15FF948:             End If
  loc_15FF948:           End If
  loc_15FF956:           Set var_94 = Me.Txt
  loc_15FF95C:           Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0)
  loc_15FF964:           arg_10 = var_98.Text
  loc_15FF982:           Set var_9C = Me.Txt
  loc_15FF988:           Call 0.Method_Txt_Validate0 (CInt(3), var_BC, var_134)
  loc_15FF990:           IsDate(CVar(var_A0)) = var_BC.Text
  loc_15FF998:           var_EC = CVar(var_134) 'String
  loc_15FF9B3:           If (var_EC And IsDate(var_EC)) Then
  loc_15FF9C4:             Set var_9C = Me.Txt
  loc_15FF9CA:             Call 0.Method_Txt_Validate0 (CInt(3), var_BC)
  loc_15FF9D2:             var_134 = var_BC.Text
  loc_15FF9E5:             Set var_94 = Me.Txt
  loc_15FF9EB:             Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_15FF9F3:             var_A0 = var_98.Text
  loc_15FFA15:             If (CDate(var_A0) < CDate(var_134)) Then
  loc_15FFA31:               MsgBox("App Month To Can't Be Less Than App Month From", 0, var_EC, var_FC, var_130)
  loc_15FFA43:               arg_10 = &HFF
  loc_15FFA46:               Exit Sub
  loc_15FFA47:             End If
  loc_15FFA47:           End If
  loc_15FFA52:           Set var_9C = Me.Txt
  loc_15FFA58:           Call 0.Method_Txt_Validate0 (CInt(1), var_BC)
  loc_15FFA6C:           var_EC = "MMM/yyyy"
  loc_15FFA7C:           var_FC = Format(CVar(var_BC), var_EC)
  loc_15FFA8C:           Set var_14C = Me.Txt
  loc_15FFA92:           Call 0.Method_Txt_Validate0 (CInt(2), var_15C, 1)
  loc_15FFA97:           var_120 = "1/"
  loc_15FFAC3:           var_1A0 = (1 + Format(CVar(var_15C), "MMM/yyyy"))
  loc_15FFAF6:           Set var_94 = Me.Txt
  loc_15FFAFC:           Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0, 1)
  loc_15FFB04:           var_120 = var_98.Text
  loc_15FFB16:           var_130 = ("1/" + var_FC)
  loc_15FFB2B:           Set var_100 = Me.Txt
  loc_15FFB31:           Call 0.Method_Txt_Validate0 (CInt(4), var_148, var_134)
  loc_15FFB39:           (CDate(var_A0) >= CDate(var_130)) = var_148.Text
  loc_15FFB7C:           If Not((1 And (CDate(var_134) <= CDate(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), var_1A0)))))) Then
  loc_15FFB98:             MsgBox("App. Month To Must Be Between Date From and Date to", 0, var_EC, var_FC, var_130)
  loc_15FFBAA:             arg_10 = &HFF
  loc_15FFBB8:             Set var_94 = Me.Txt
  loc_15FFBBE:             Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_15FFBC6:             var_98.SetFocus
  loc_15FFBD2:             Exit Sub
  loc_15FFBD3:           End If
  loc_15FFBD6:         Else
  loc_15FFBDE:           If (var_8E = CInt(3)) Then
  loc_15FFBEE:             Set var_94 = Me.Txt
  loc_15FFBF4:             Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_15FFBFC:             arg_10 = var_98.Text
  loc_15FFC13:             If (var_A0 = vbNullString) Then
  loc_15FFC2F:               MsgBox("App. Month From is a Required Field", 0, var_EC, var_FC, var_130)
  loc_15FFC41:               arg_10 = &HFF
  loc_15FFC44:               Exit Sub
  loc_15FFC45:             End If
  loc_15FFC4F:             Set var_94 = Me.Txt
  loc_15FFC55:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15FFC75:             Set var_BC = Me.Txt
  loc_15FFC7B:             Call 0.Method_Txt_Validate0 (Cancel, var_100)
  loc_15FFC83:             var_100.Text = Proc_6_120_133A1D8(var_98, arg_10)
  loc_15FFCA3:             Set var_94 = Me.Txt
  loc_15FFCA9:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15FFCB1:             var_A0 = var_98.Text
  loc_15FFCB9:             var_CC = CVar(var_A0) 'String
  loc_15FFCCB:             If IsDate(var_CC) Then
  loc_15FFCD4:               var_DC = 0
  loc_15FFCFB:               Set var_94 = Me.Txt
  loc_15FFD01:               Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select count(*) from MemBill where Memcode='", var_CC, -1)
  loc_15FFD12:               var_134 = var_148 & var_A0
  loc_15FFD19:               var_13C = var_134 & "' and cast('01/' + MthYear As smalldatetime)=cast('01/' + '"
  loc_15FFD29:               Set var_9C = Me.Txt
  loc_15FFD2F:               Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_138, var_14C.Text)
  loc_15FFD37:               var_DC = var_BC.Text
  loc_15FFD50:               unk_4B8ED3.Execute var_14C & var_138 & "' As smalldatetime)", var_EC, arg_10
  loc_15FFD58:                = var_98.Tag.Fields
  loc_15FFD60:                = var_148.Item()
  loc_15FFD68:                = var_14C.Value
  loc_15FFD73:               Proc_6_39_E7C810(var_FC)
  loc_15FFDAC:               If (var_FC > 0) Then
  loc_15FFDC8:                 MsgBox("Bill Already Exists For Month For Perticular Member", 0, var_EC, var_FC, var_130)
  loc_15FFDDA:                 arg_10 = &HFF
  loc_15FFDDD:                 Exit Sub
  loc_15FFDDE:               End If
  loc_15FFDDE:             End If
  loc_15FFDEC:             Set var_94 = Me.Txt
  loc_15FFDF2:             Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0)
  loc_15FFDFA:             arg_10 = var_98.Text
  loc_15FFE18:             Set var_9C = Me.Txt
  loc_15FFE1E:             Call 0.Method_Txt_Validate0 (CInt(3), var_BC, var_134)
  loc_15FFE26:             IsDate(CVar(var_A0)) = var_BC.Text
  loc_15FFE2E:             var_EC = CVar(var_134) 'String
  loc_15FFE49:             If (var_EC And IsDate(var_EC)) Then
  loc_15FFE5A:               Set var_9C = Me.Txt
  loc_15FFE60:               Call 0.Method_Txt_Validate0 (CInt(3), var_BC)
  loc_15FFE68:               var_134 = var_BC.Text
  loc_15FFE7B:               Set var_94 = Me.Txt
  loc_15FFE81:               Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_15FFE89:               var_A0 = var_98.Text
  loc_15FFEAB:               If (CDate(var_A0) < CDate(var_134)) Then
  loc_15FFEC7:                 MsgBox("App Month To Can't Be Less Than App Month From", 0, var_EC, var_FC, var_130)
  loc_15FFED9:                 arg_10 = &HFF
  loc_15FFEDC:                 Exit Sub
  loc_15FFEDD:               End If
  loc_15FFEDD:             End If
  loc_15FFEE8:             Set var_9C = Me.Txt
  loc_15FFEEE:             Call 0.Method_Txt_Validate0 (CInt(1), var_BC)
  loc_15FFF02:             var_EC = "MMM/yyyy"
  loc_15FFF12:             var_FC = Format(CVar(var_BC), var_EC)
  loc_15FFF22:             Set var_14C = Me.Txt
  loc_15FFF28:             Call 0.Method_Txt_Validate0 (CInt(2), var_15C, 1)
  loc_15FFF2D:             var_120 = "1/"
  loc_15FFF59:             var_1A0 = (1 + Format(CVar(var_15C), "MMM/yyyy"))
  loc_15FFF8C:             Set var_94 = Me.Txt
  loc_15FFF92:             Call 0.Method_Txt_Validate0 (CInt(3), var_98, var_A0, 1)
  loc_15FFF9A:             var_120 = var_98.Text
  loc_15FFFAC:             var_130 = ("1/" + var_FC)
  loc_15FFFC1:             Set var_100 = Me.Txt
  loc_15FFFC7:             Call 0.Method_Txt_Validate0 (CInt(3), var_148, var_134)
  loc_15FFFCF:             (CDate(var_A0) >= CDate(var_130)) = var_148.Text
  loc_1600012:             If Not((1 And (CDate(var_134) <= CDate(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), var_1A0)))))) Then
  loc_160002E:               MsgBox("App. Month From Must Be Between Date From and Date to", 0, var_EC, var_FC, var_130)
  loc_1600040:               arg_10 = &HFF
  loc_160004E:               Set var_94 = Me.Txt
  loc_1600054:               Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_160005C:               var_98.SetFocus
  loc_1600068:               Exit Sub
  loc_1600069:             End If
  loc_1600069:           End If
  loc_1600069:         End If
  loc_1600069:       End If
  loc_1600069:     End If
  loc_1600069:   End If
  loc_1600069: End If
  loc_1600069: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E61834
  'Data Table: 4B8EC0
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E617FF: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E61812: Set var_A8 = Me.TxtGrid
  loc_E61818: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E61820: var_AC.Visible = False
  loc_E6182C: Call Proc_295_47_E867E8()
  loc_E61831: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E66BD0
  'Data Table: 4B8EC0
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E66B8C: Set var_88 = Me.TxtGrid
  loc_E66B92: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E66BAC: If (var_8C.Visible = 0) Then
  loc_E66BC5:   Me.FGrid.BackColorSel = CVar(CLng(global_104))
  loc_E66BCD: End If
  loc_E66BCD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E4BFE4
  'Data Table: 4B8EC0
  loc_E4BFBC: Set var_88 = Me.TopCtrl1
  loc_E4BFC2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4BFDB: If (CStr() <> "Browse") Then
  loc_E4BFDE:   Call Proc_295_48_E43CCC()
  loc_E4BFE3: End If
  loc_E4BFE3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10F799C
  'Data Table: 4B8EC0
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10F7674: Set var_88 = Me.TopCtrl1
  loc_10F767A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F76BF: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10F76C8:   Call Form_KeyDown(Cancel, arg_10)
  loc_10F76CD: End If
  loc_10F76D1: Set var_88 = Me.TopCtrl1
  loc_10F76D7: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F76F0: If (CStr() = "Browse") Then
  loc_10F76F3:   Exit Sub
  loc_10F76F4: End If
  loc_10F7768: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10F7773:   var_9C = "+{Tab}"
  loc_10F7779:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_10F7783:   Cancel = 0
  loc_10F7789: Else
  loc_10F77E0:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10F77E5:     Cancel = 0
  loc_10F77E8:   End If
  loc_10F77E8: End If
  loc_10F7814: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10F782B: Set var_88 = Me.TopCtrl1
  loc_10F7831: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(Cancel)
  loc_10F784A: If (CStr(Cancel) = "Edit") Then
  loc_10F784D:   Exit Sub
  loc_10F784E: End If
  loc_10F785F: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10F7875:   var_DC = CLng(Me.FGrid.Col)
  loc_10F7885:   If (var_DC = CLng(1)) Then
  loc_10F789B:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F78A3:     var_FC = CVar(CLng(1)) 'Long
  loc_10F78A8:     var_11C = vbNullString
  loc_10F78B2:     Set var_A0 = Me.FGrid
  loc_10F78B8:     LateIdCallSt
  loc_10F78DD:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F78E5:     var_FC = CVar(CLng(5)) 'Long
  loc_10F78EA:     var_11C = vbNullString
  loc_10F78F4:     Set var_A0 = Me.FGrid
  loc_10F78FA:     LateIdCallSt
  loc_10F790F:   Else
  loc_10F7916:     If Not (var_DC = CLng(2)) Then
  loc_10F7920:       If Not (var_DC = CLng(3)) Then
  loc_10F792A:         If (var_DC = CLng(4)) Then
  loc_10F792D:         End If
  loc_10F792D:       End If
  loc_10F7940:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F7958:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10F795D:       var_11C = vbNullString
  loc_10F7967:       Set var_B4 = Me.FGrid
  loc_10F796D:       LateIdCallSt
  loc_10F7985:     End If
  loc_10F7985:   End If
  loc_10F7985: End If
  loc_10F798B: If (Cancel = &HD) Then
  loc_10F7993:   global_76 = 0
  loc_10F7996: End If
  loc_10F7998: Cancel = 0
  loc_10F799B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E56B18
  'Data Table: 4B8EC0
  loc_E56AE4: Set var_88 = Me.TopCtrl1
  loc_E56AEA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E56B03: If (CStr() = "Browse") Then
  loc_E56B06:   Exit Sub
  loc_E56B07: End If
  loc_E56B10: Call FGrid_UnknownEvent_C()
  loc_E56B15: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1024628
  'Data Table: 4B8EC0
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1024404: Set var_88 = Me.TopCtrl1
  loc_102440A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1024423: If (CStr() = "Browse") Then
  loc_1024426:   Exit Sub
  loc_1024427: End If
  loc_102443A: var_A0 = CLng(Me.FGrid.Col)
  loc_102444A: If Not (var_A0 = CLng(1)) Then
  loc_1024454:   If Not (var_A0 = CLng(3)) Then
  loc_102445E:     If (var_A0 = CLng(4)) Then
  loc_1024461:     End If
  loc_1024461:   End If
  loc_1024465:   Set var_C4 = Me.FGrid
  loc_1024489:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_10244B6:   Set var_B4 = var_C4
  loc_10244C8:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_10244F0:   Set var_88 = Me.TxtGrid
  loc_10244F6:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_10244FE:   0 = var_B4.Text
  loc_1024517:   If (Len(var_9C) <= 1) Then
  loc_1024526:     Set var_88 = Me.TxtGrid
  loc_102452C:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1024534:     var_CA = var_B4.Text
  loc_1024545:     Set var_B8 = Me.TxtGrid
  loc_102454B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1024553:     var_C4.Text = var_9C
  loc_1024566:   End If
  loc_1024572:   Set var_88 = Me.TxtGrid
  loc_1024578:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1024592:   Set var_B8 = Me.TxtGrid
  loc_1024598:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_10245A0:   var_C4.SelStart = Len(var_B4.Text)
  loc_10245B6: Else
  loc_10245BD:   If (var_A0 = CLng(2)) Then
  loc_10245FE:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1024610:   End If
  loc_1024610: End If
  loc_102461A: If (CLng(Cancel) <> &HD) Then
  loc_1024622:   global_76 = &HFF
  loc_1024625: End If
  loc_1024625: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FE706C
  'Data Table: 4B8EC0
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE6E9C: Set var_88 = Me.TopCtrl1
  loc_FE6EA2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE6EBB: If (CStr() = "Browse") Then
  loc_FE6EBE:   Exit Sub
  loc_FE6EBF: End If
  loc_FE6EDC: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FE6EDF:   Exit Sub
  loc_FE6EE0: End If
  loc_FE6EF1: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE6F13:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FE6F4D:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE6F6F:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FE6F85:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE6F8E:         Set var_110 = Me.FGrid
  loc_FE6FA9:       Else
  loc_FE6FBC:         Me.FGrid.Rows = 1
  loc_FE6FE2:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FE6FEA:         Set var_110 = Me.FGrid
  loc_FE7017:         Me.FGrid.FixedRows = 1
  loc_FE701F:       End If
  loc_FE701F:     End If
  loc_FE7022:   Else
  loc_FE7043:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE7053:   End If
  loc_FE7057:   Set var_88 = Me.FGrid
  loc_FE7068: End If
  loc_FE7068: Exit Sub
  loc_FE7069: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E44180
  'Data Table: 4B8EC0
  Dim var_8C As TextBox
  loc_E44154: Call Proc_295_47_E867E8()
  loc_E44164: Set var_88 = Me.TxtGrid
  loc_E4416A: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E44172: var_8C.Visible = False
  loc_E4417E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EDA2DC
  'Data Table: 4B8EC0
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EDA224: On Error Goto loc_EDA2D6
  loc_EDA24E: Call Proc_295_46_E877BC(Proc_5_1_100CB50("ADD", Me))
  loc_EDA259: Call Proc_295_43_F181E0(global_60)
  loc_EDA26C: Set var_8C = Me.Txt
  loc_EDA272: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_94)
  loc_EDA27A: var_94.Text = "No"
  loc_EDA291: Set var_8C = Me.Txt
  loc_EDA297: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EDA29F: var_94.SetFocus
  loc_EDA2B8: Me.LblUser.Caption = vbNullString
  loc_EDA2CD: Me.LblLDt.Caption = vbNullString
  loc_EDA2D5: Exit Sub
  loc_EDA2D6: ' Referenced from: EDA224
  loc_EDA2D6: Proc_6_60_E62BC4(var_94)
  loc_EDA2DB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA51BC
  'Data Table: 4B8EC0
  loc_EA5140: On Error Goto loc_EA51B5
  loc_EA517A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA51A4:   Call Proc_295_46_E877BC(Proc_5_1_100CB50("INI", Me))
  loc_EA51AF:   Call Proc_295_45_14A488C(global_60)
  loc_EA51B4: End If
  loc_EA51B4: Exit Sub
  loc_EA51B5: ' Referenced from: EA5140
  loc_EA51B5: Proc_6_60_E62BC4()
  loc_EA51BA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1207B40
  'Data Table: 4B8EC0
  Dim var_CC As Variant
  Dim var_124 As Variant
  Dim var_BC As Variant
  Dim var_130 As Variant
  Dim var_DC As Variant
  Dim var_13C As String
  Dim var_150 As String
  Dim var_148 As TextBox
  Dim unk_4B8ED3 As Connection15
  Dim var_160 As Fields15
  Dim var_164 As Field20
  Dim var_96 As Integer
  Dim var_120 As Fields15
  Dim var_FC As Variant
  Dim var_128 As String
  Dim var_12C As Fields15
  loc_12076C8: On Error Goto loc_1207AE6
  loc_12076DD: If (Proc_183_56_FE8818(global_60) = &HFF) Then
  loc_12076E0:   Exit Sub
  loc_12076E1: End If
  loc_1207718: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_FC, var_11C) = 6) Then
  loc_1207729:   Set var_120 = Me.Txt
  loc_120772F:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_124)
  loc_1207737:   var_128 = var_124.Text
  loc_120773F:   var_BC = CVar(var_128) 'String
  loc_1207755:   Set var_12C = Me.Txt
  loc_120775B:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_130)
  loc_120776B:   var_DC = CVar(var_130.Text) 'String
  loc_1207786:   If (IsDate(var_BC) And IsDate(var_DC)) Then
  loc_120778F:     var_CC = 0
  loc_12077B6:     Set var_120 = Me.Txt
  loc_12077BC:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select count(*) from MemBill where Memcode='", var_BC, -1)
  loc_12077D4:     var_13C = var_160 & var_128 & "' and cast('01/' + MthYear As smalldatetime)>=cast('01/' + '"
  loc_12077E5:     Set var_12C = Me.Txt
  loc_12077EB:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_130, var_138, var_13C)
  loc_12077F3:     var_CC = var_130.Text
  loc_1207803:     var_150 = var_164 & var_138 & "' As smalldatetime) and cast('01/' + MthYear As smalldatetime)<=cast('01/' + '"
  loc_1207814:     Set var_144 = Me.Txt
  loc_120781A:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_148, var_14C)
  loc_1207822:     var_150 = var_148.Text
  loc_120783B:     unk_4B8ED3.Execute var_DC & var_14C & "' As smalldatetime)", , 
  loc_1207843:      = var_124.Tag.Fields
  loc_120784B:      = var_160.Item()
  loc_1207853:      = var_164.Value
  loc_120785E:     Proc_6_39_E7C810(var_FC)
  loc_12078A1:     If (var_FC > 0) Then
  loc_12078BD:       MsgBox("Bill Already Exists of This Member", 0, var_DC, var_FC, var_11C)
  loc_12078CD:       Exit Sub
  loc_12078CE:     End If
  loc_12078CE:   End If
  loc_12078D0:   var_96 = 0
  loc_12078DC:   unk_4B8ED3.BeginTrans var_168
  loc_12078E3:   var_96 = &HFF
  loc_12078FA:   var_94 = Me.Recordset15.Bookmark 'Variant
  loc_1207957:   unk_4B8ED3.Execute CStr("Delete From MemOutStation Where Code='" & Me.Recordset15.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_12079BE:   var_FC = "Delete From MemRevenueForPeriod Where Code='" & Me.Recordset15.Fields.Item("SearchCode").Value & "' And Type='" 
  loc_12079DA:   var_12C = Me.Recordset15.Fields
  loc_12079EA:   var_11C = var_12C.Item("Type").Value
  loc_12079FF:   var_128 = CStr(var_FC & var_11C & "'")
  loc_1207A09:   unk_4B8ED3.Execute var_128, var_1B8, -1
  loc_1207A35:   unk_4B8ED3.CommitTrans
  loc_1207A3C:   var_96 = 0
  loc_1207A4D:   Me.Recordset15.Requery -1
  loc_1207A70:   If (CVar(Me.Recordset15.RecordCount) >= var_94) Then
  loc_1207A80:     Me.Recordset15.Bookmark = var_94
  loc_1207A88:   Else
  loc_1207A9F:     If (global_60.EOF = 0) Then
  loc_1207AAB:       Me.Recordset15.MoveLast
  loc_1207AB0:     End If
  loc_1207AB0:   End If
  loc_1207AB0:   Call Proc_295_45_14A488C(var_96, var_144, var_12C)
  loc_1207AD5:   Proc_5_0_110649C(&HFF, Me, global_60, 0)
  loc_1207ADD: End If
  loc_1207AE2: Set var_9C = Nothing
  loc_1207AE5: Exit Sub
  loc_1207AE6: ' Referenced from: 12076C8
  loc_1207AEC: If (var_96 = &HFF) Then
  loc_1207AF5:   unk_4B8ED3.RollbackTrans
  loc_1207AFA: End If
  loc_1207B02: Set var_120 = Err()
  loc_1207B08: Call 0.Method_arg_2C (var_128, var_96)
  loc_1207B29: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_FC, var_11C)
  loc_1207B3C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '11B87A0
  'Data Table: 4B8EC0
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  Dim var_90 As Variant
  Dim var_12C As String
  Dim var_124 As TextBox
  Dim var_140 As String
  Dim var_138 As TextBox
  Dim unk_4B8ED3 As Connection15
  Dim var_150 As Fields15
  Dim var_154 As Field20
  Dim var_B8 As Variant
  loc_11B838C: On Error Goto loc_11B875A
  loc_11B83A1: If (Proc_183_55_FE7900(global_60) = &HFF) Then
  loc_11B83A4:   Exit Sub
  loc_11B83A5: End If
  loc_11B83BF: If (global_60.RecordCount > 0) Then
  loc_11B83E9:   Call Proc_295_46_E877BC(Proc_5_1_100CB50("EDIT", Me))
  loc_11B83FF:   Set var_90 = Me.Txt
  loc_11B8405:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_11B840D:   var_98.SetFocus
  loc_11B841C: Else
  loc_11B8427:   var_D8 = "Information"
  loc_11B8437:   var_B8 = "No Record To Edit."
  loc_11B843D:   MsgBox(var_B8, &H40, var_D8, var_F8, var_118)
  loc_11B844D: End If
  loc_11B845B: Set var_90 = Me.Txt
  loc_11B8461: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_98)
  loc_11B8469: var_8C = var_98.Text
  loc_11B8480: If (var_8C <> "Yes") Then
  loc_11B8490:   Set var_90 = Me.Txt
  loc_11B8496:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_11B849E:   var_98.Enabled = False
  loc_11B84B7:   Set var_90 = Me.Txt
  loc_11B84BD:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98)
  loc_11B84C5:   var_98.Enabled = False
  loc_11B84E0:   Me.FGrid.Enabled = False
  loc_11B84F4:   Me.CmdFillGrid.Enabled = False
  loc_11B84FF: Else
  loc_11B8505:   var_C8 = 0
  loc_11B852C:   Set var_90 = Me.Txt
  loc_11B8532:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98, var_8C, "Select count(*) from MemBill where Memcode='", var_B8, -1)
  loc_11B854A:   var_12C = var_150 & var_8C & "' and cast('01/' + MthYear As smalldatetime)>=cast('01/' + '"
  loc_11B855B:   Set var_120 = Me.Txt
  loc_11B8561:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_124, var_128, var_12C)
  loc_11B8569:   var_C8 = var_124.Text
  loc_11B8579:   var_140 = var_154 & var_128 & "' As smalldatetime) and cast('01/' + MthYear As smalldatetime)<=cast('01/' + '"
  loc_11B858A:   Set var_134 = Me.Txt
  loc_11B8590:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_138, var_13C)
  loc_11B8598:   var_140 = var_138.Text
  loc_11B85B1:   unk_4B8ED3.Execute var_D8 & var_13C & "' As smalldatetime)", global_60, 
  loc_11B85B9:    = var_98.Tag.Fields
  loc_11B85C1:    = var_150.Item()
  loc_11B85C9:    = var_154.Value
  loc_11B85D4:   Proc_6_39_E7C810(var_F8)
  loc_11B8617:   If (var_F8 > 0) Then
  loc_11B8627:     Set var_90 = Me.Txt
  loc_11B862D:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_11B8635:     var_98.Enabled = False
  loc_11B864E:     Set var_90 = Me.Txt
  loc_11B8654:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_11B865C:     var_98.Enabled = False
  loc_11B8675:     Set var_90 = Me.Txt
  loc_11B867B:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98)
  loc_11B8683:     var_98.Enabled = False
  loc_11B869C:     Set var_90 = Me.Txt
  loc_11B86A2:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_98)
  loc_11B86AA:     var_98.Enabled = False
  loc_11B86C3:     Set var_90 = Me.Txt
  loc_11B86C9:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_11B86D1:     var_98.Enabled = False
  loc_11B86EA:     Set var_90 = Me.Txt
  loc_11B86F0:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98)
  loc_11B86F8:     var_98.Enabled = True
  loc_11B8713:     Me.FGrid.Enabled = False
  loc_11B8727:     Me.CmdFillGrid.Enabled = False
  loc_11B872F:   End If
  loc_11B872F: End If
  loc_11B873C: Me.LblUser.Caption = vbNullString
  loc_11B8751: Me.LblLDt.Caption = vbNullString
  loc_11B8759: Exit Sub
  loc_11B875A: ' Referenced from: 11B838C
  loc_11B8762: Set var_90 = Err()
  loc_11B8768: Call 0.Method_arg_2C (var_8C)
  loc_11B8789: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_11B879C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E196A0
  'Data Table: 4B8EC0
  loc_E19695: Me.Global.Unload Me
  loc_E1969D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F25B00
  'Data Table: 4B8EC0
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F25A00: On Error Goto loc_F25A9B
  loc_F25A0F: var_88 = Me.Recordset15.RecordCount
  loc_F25A1D: If (var_88 <= 0) Then
  loc_F25A26:   var_B8 = "Information"
  loc_F25A41:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F25A51:   Exit Sub
  loc_F25A52: End If
  loc_F25A59: var_10C = "Select MemOutStation.Code As SearchCode,S.Name as MemberName,MemOutStation.Type,Convert(Varchar(11),MemOutStation.FrDate,103) as FromDate,Convert(Varchar(11),MemOutStation.ToDate,103) as ToDate,MemOutStation.RevenueChng,MemOutStation.FrMonth,MemOutStation.ToMonth FROM MemOutStation MemOutStation Left Join SubGroup S On MemOutStation.MemCode=S.SubCode where (MemOutStation.LOGSITE_CODE='" & MemVar_1F92078
  loc_F25A60: MemVar_1F920E4 = var_10C & "' or MemOutStation.LOGSITE_CODE='HO') Order by S.Name"
  loc_F25A6A: var_10C = "3000,1000,1000,1000,600,1000,1000"
  loc_F25A70: Proc_6_126_F1BCC0(var_10C)
  loc_F25A7E: MemVar_1F92120 = Me
  loc_F25A95: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F25A9A: Exit Sub
  loc_F25A9B: ' Referenced from: F25A00
  loc_F25AA3: Set var_110 = Err()
  loc_F25AA9: Call 0.Method_arg_1C (var_88)
  loc_F25ABA: If (var_88 <> 0) Then
  loc_F25AC5:   Set var_110 = Err()
  loc_F25ACB:   Call 0.Method_arg_2C (var_10C)
  loc_F25AEC:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F25AFF: End If
  loc_F25AFF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E44C10
  'Data Table: 4B8EC0
  loc_E44C00: Proc_5_0_110649C(&HFF, Me)
  loc_E44C08: Call Proc_295_45_14A488C(global_60)
  loc_E44C0D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E44A80
  'Data Table: 4B8EC0
  loc_E44A70: Proc_5_0_110649C(&HFF, Me)
  loc_E44A78: Call Proc_295_45_14A488C(global_60)
  loc_E44A7D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E44440
  'Data Table: 4B8EC0
  loc_E44430: Proc_5_0_110649C(&HFF, Me)
  loc_E44438: Call Proc_295_45_14A488C(global_60)
  loc_E4443D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E443DC
  'Data Table: 4B8EC0
  loc_E443CC: Proc_5_0_110649C(&HFF, Me)
  loc_E443D4: Call Proc_295_45_14A488C(global_60)
  loc_E443D9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E212AC
  'Data Table: 4B8EC0
  Dim Me As Recordset15
  loc_E21293: Me.Requery -1
  loc_E212A3: Me.Requery -1
  loc_E212A8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1636DB4
  'Data Table: 4B8EC0
  Dim var_B4 As TextBox
  Dim var_A4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_AC As String
  Dim var_B8 As String
  Dim unk_4B8ED3 As Connection15
  Dim var_A0 As Variant
  Dim var_A8 As Variant
  Dim var_13C As String
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_140 As String
  Dim var_148 As String
  Dim var_14C As String
  Dim var_150 As Variant
  Dim var_154 As Variant
  Dim var_158 As Variant
  Dim var_164 As Variant
  Dim var_8C As Recordset15
  Dim var_D8 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_170 As Double
  Dim var_180 As Variant
  Dim var_108 As Variant
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_168 As String
  Dim var_160 As Variant
  Dim var_F8 As Variant
  Dim var_26C As Variant
  Dim var_2A4 As TextBox
  Dim var_354 As Variant
  Dim var_258 As Variant
  Dim var_2B4 As Variant
  Dim var_2D4 As Variant
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_394 As Variant
  Dim var_364 As Variant
  Dim var_4FC As Double
  Dim var_410 As String
  loc_16358F4: On Error Goto loc_1636D61
  loc_16358FB: var_86 = CByte(0) 'Byte
  loc_163590A: Set var_A0 = Me.Txt
  loc_1635910: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1635939: If (Proc_6_27_EA565C(var_A4, "Member Name") = 0) Then
  loc_1635943:   Call Txt_GotFocus(CInt(0))
  loc_1635948:   Exit Sub
  loc_1635949: End If
  loc_1635954: Set var_A0 = Me.Txt
  loc_163595A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_1635983: If (Proc_6_27_EA565C(var_A4, "Date From") = 0) Then
  loc_163598D:   Call Txt_GotFocus(CInt(1))
  loc_1635992:   Exit Sub
  loc_1635993: End If
  loc_163599E: Set var_A0 = Me.Txt
  loc_16359A4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_16359CD: If (Proc_6_27_EA565C(var_A4, "Date To") = 0) Then
  loc_16359D7:   Call Txt_GotFocus(CInt(2))
  loc_16359DC:   Exit Sub
  loc_16359DD: End If
  loc_16359E8: Set var_A0 = Me.Txt
  loc_16359EE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_1635A17: If (Proc_6_27_EA565C(var_A4, "Change Revenue") = 0) Then
  loc_1635A21:   Call Txt_GotFocus(CInt(5))
  loc_1635A26:   Exit Sub
  loc_1635A27: End If
  loc_1635A35: Set var_A8 = Me.Txt
  loc_1635A3B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B4)
  loc_1635A56: Set var_A0 = Me.Txt
  loc_1635A5C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_1635A86: If (CDate(var_A4.Text) < CDate(var_B4.Text)) Then
  loc_1635A92:   Set var_A0 = Me.Txt
  loc_1635A98:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_A4)
  loc_1635AA0:   var_A4.SetFocus
  loc_1635ABF:   var_D8 = "To Date Can't Be Less Than From Date"
  loc_1635AC5:   MsgBox(var_D8, 0, var_F8, var_118, var_138)
  loc_1635AD5:   Exit Sub
  loc_1635AD6: End If
  loc_1635ADC: var_E8 = 0
  loc_1635AF9: var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,8) AS INT)),1)+1 AS MyCode From MemOutStation WHERE isnumeric(SUBSTRING(Code,3,8) )=1 and SITE_CODE='" & MemVar_1F92070
  loc_1635B00: var_B8 = var_A4.Text & "'"
  loc_1635B09: unk_4B8ED3.Execute var_B8, var_D8, -1
  loc_1635B11: var_A0 = var_A0.Fields
  loc_1635B19: var_E8 = var_A4.Item(var_A4)
  loc_1635B21: var_A8 = var_A8.Value
  loc_1635B5A: var_118 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1635B80: var_F8 = Format(CStr(var_F8), "00000000")
  loc_1635B88: var_138 = (1 + var_F8)
  loc_1635B93: global_108 = CStr(var_138)
  loc_1635BA9: Set var_A0 = Me.TopCtrl1
  loc_1635BAF: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1635BB7: var_AC = CStr(var_118)
  loc_1635BCD: Set var_A4 = Me.Txt
  loc_1635BD3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A8, var_B8)
  loc_1635BDB: (var_AC = "Add") = var_A8.Text
  loc_1635BED: Set var_B4 = Me.TopCtrl1
  loc_1635BF3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005((var_F8 And (var_B8 = "Yes")))
  loc_1635C09: var_E8 = 0
  loc_1635C37: var_148 = "Select Max(RevenueChng) From MemOutStation  WHERE Code='" & global_108 & "' and SITE_CODE='" & MemVar_1F92070
  loc_1635C47: unk_4B8ED3.Execute var_148 & "'", var_118, -1
  loc_1635C4F: var_150 = var_150.Fields
  loc_1635C57: var_E8 = var_154.Item(var_154)
  loc_1635C5F: var_158 = var_158.Value
  loc_1635C83: Set var_160 = Me.Txt
  loc_1635C89: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_164)
  loc_1635CD5: If ( Or (((CStr(var_A4) = "Edit") And (Proc_6_38_E68A98(var_138, var_138) = "N")) And (var_164.Text = "Yes"))) Then
  loc_1635CF6:   Set var_A0 = Me.Txt
  loc_1635CFC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "Select Convert(VarChar(11),Cast('01/' + FrMonth As smalldatetime),106) As FrMonth,Convert(VarChar(11),Cast('01/' + ToMonth As smalldatetime),106) As ToMonth,Type from MemRevenueForPeriod where Memcode='")
  loc_1635D04:   var_D8 = var_A4.Tag
  loc_1635D0D:   var_B8 = -1 & var_AC
  loc_1635D14:   var_13C = var_B8 & "'"
  loc_1635D1D:   unk_4B8ED3.Execute var_13C, var_A8, 
  loc_1635D28:   Set var_8C = var_A8
  loc_1635D40:   ' Referenced from: 1635F2C
  loc_1635D4F:   If Not(var_8C.EOF) Then
  loc_1635D7F:     var_94 = CDate(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("FrMonth"))))
  loc_1635DA2:     var_A4 = var_8C.Fields.Item("ToMonth")
  loc_1635DB3:     var_AC = Proc_6_38_E68A98(CVar(var_A4))
  loc_1635DB8:     var_9C = CDate(var_AC)
  loc_1635DC4:     ' Referenced from: 1635F21
  loc_1635DCB:     If (var_94 <= var_9C) Then
  loc_1635DD1:       var_170 = var_94
  loc_1635DE8:       Set var_A0 = Me.Txt
  loc_1635DEE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4, var_AC, "1/")
  loc_1635E15:       Set var_A8 = Me.Txt
  loc_1635E1B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_B4, var_13C, "1/")
  loc_1635E23:       CDate(var_A4.Text & var_AC) = var_B4.Text
  loc_1635E49:       If (CDate(var_9C & var_13C) >  > var_94) Then
  loc_1635E6C:         var_F8 = Format(var_94, "MMM/yyyy")
  loc_1635E88:         var_A4 = var_8C.Fields.Item("Type")
  loc_1635E99:         var_AC = Proc_6_38_E68A98(CVar(var_A4), 1)
  loc_1635EBA:         var_118 = "Entry For Month " & var_F8 
  loc_1635EC3:         var_138 = var_118 & " As " 
  loc_1635ECA:         var_1A0 = CVar(var_AC) 'String
  loc_1635ECD:         var_1B0 = var_138 & var_1A0 
  loc_1635EDA:         MsgBox(var_1B0 & " Already Exits.", &H40, "Duplicate Entry", var_210, var_230)
  loc_1635EFE:         Exit Sub
  loc_1635EFF:       End If
  loc_1635F11:       var_D8 = DateAdd("m", CDbl(1), var_94)
  loc_1635F1B:       var_94 = CDate(var_D8)
  loc_1635F21:       GoTo loc_1635DC4
  loc_1635F24:     End If
  loc_1635F27:     var_8C.MoveNext
  loc_1635F2C:     GoTo loc_1635D40
  loc_1635F2F:   End If
  loc_1635F34:   Set var_8C = Nothing
  loc_1635F64:   Set var_A0 = Me.Txt
  loc_1635F6A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "Select count(*) from MemBill where Memcode='", var_D8, -1, var_158)
  loc_1635F72:   var_160 = var_A4.Tag
  loc_1635F82:   var_140 = 0 & var_AC & "' and cast('01/' + MthYear As smalldatetime)>=cast('01/' + '"
  loc_1635F93:   Set var_A8 = Me.Txt
  loc_1635F99:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B4, var_13C, var_9C & var_13C)
  loc_1635FB1:   var_14C = var_F8 & var_13C & "' As smalldatetime) and cast('01/' + MthYear As smalldatetime)<=cast('01/' + '"
  loc_1635FC2:   Set var_150 = Me.Txt
  loc_1635FC8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_154, var_148)
  loc_1635FD0:   var_14C = var_154.Text
  loc_1635FE9:   unk_4B8ED3.Execute var_94 & var_148 & "' As smalldatetime)", 1, 
  loc_1635FF1:    = var_158.Fields
  loc_1635FF9:    = var_160.Item()
  loc_1636001:    = var_B4.Text.Value
  loc_163600C:   Proc_6_39_E7C810(var_118)
  loc_163604F:   If (var_118 > 0) Then
  loc_163606B:     MsgBox("Bill Already Exists of This Member", 0, var_F8, var_118, var_138)
  loc_163607B:     Exit Sub
  loc_163607C:   End If
  loc_163607C: End If
  loc_163608A: Set var_A0 = Me.Txt
  loc_1636090: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_16360AF: If (var_A4.Text = "Yes") Then
  loc_16360BD:   Set var_A0 = Me.Txt
  loc_16360C3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_16360EC:   If (Proc_6_27_EA565C(var_A4, "App. Month From") = 0) Then
  loc_16360F6:     Call Txt_GotFocus(CInt(3))
  loc_16360FB:     Exit Sub
  loc_16360FC:   End If
  loc_1636107:   Set var_A0 = Me.Txt
  loc_163610D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_1636136:   If (Proc_6_27_EA565C(var_A4, "App. Month To") = 0) Then
  loc_1636140:     Call Txt_GotFocus(CInt(4))
  loc_1636145:     Exit Sub
  loc_1636146:   End If
  loc_163616B:   For var_234 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_234 'Integer
  loc_1636177:     If (var_88 = 1) Then
  loc_163617E:       var_C8 = CVar(CLng(var_88)) 'Long
  loc_1636186:       var_108 = CVar(CLng(5)) 'Long
  loc_16361A0:       var_F8 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_16361A6:       var_118 = Trim(var_F8)
  loc_16361C2:       If (var_118 = vbNullString) Then
  loc_16361DE:         MsgBox("Define revenue ", &H40, var_F8, var_118, var_138)
  loc_16361EE:         Exit Sub
  loc_16361EF:       End If
  loc_16361EF:     End If
  loc_16361F3:     var_C8 = CVar(CLng(var_88)) 'Long
  loc_16361FB:     var_108 = CVar(CLng(5)) 'Long
  loc_1636237:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_163623E:       var_C8 = CVar(CLng(var_88)) 'Long
  loc_1636246:       var_108 = CVar(CLng(3)) 'Long
  loc_1636282:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1636289:         var_C8 = CVar(CLng(var_88)) 'Long
  loc_1636291:         var_108 = CVar(CLng(1)) 'Long
  loc_16362D8:         MsgBox("Fill Nature For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_1A0, var_1B0)
  loc_16362F5:         Set var_A0 = Me.FGrid
  loc_1636306:         Exit Sub
  loc_1636307:       End If
  loc_163630B:       var_C8 = CVar(CLng(var_88)) 'Long
  loc_1636313:       var_108 = CVar(CLng(4)) 'Long
  loc_163634F:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1636356:         var_C8 = CVar(CLng(var_88)) 'Long
  loc_163635E:         var_108 = CVar(CLng(1)) 'Long
  loc_1636378:         var_F8 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_16363A5:         MsgBox("Fill Month For Revenue " & Trim(var_F8), &H40, "Information", var_1A0, var_1B0)
  loc_16363C2:         Set var_A0 = Me.FGrid
  loc_16363D3:         Exit Sub
  loc_16363D4:       End If
  loc_16363D4:     End If
  loc_16363D7:   Next var_234 'Integer
  loc_16363DC: End If
  loc_16363E5: unk_4B8ED3.BeginTrans var_238
  loc_16363EE: var_86 = CByte(1) 'Byte
  loc_16363F6: Set var_A0 = Me.TopCtrl1
  loc_16363FC: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1636415: If (CStr() = "Add") Then
  loc_1636426:   Set var_A0 = Me.Txt
  loc_163642C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_1636444:   Set var_A8 = Me.Txt
  loc_163644A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1636452:   var_D8 = CVar(var_B4) 'Address
  loc_1636459:   Proc_6_7_F25D88(var_F8, var_D8)
  loc_1636469:   Set var_150 = Me.Txt
  loc_163646F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_154)
  loc_163647E:   Proc_6_7_F25D88(var_1B0, CVar(var_154))
  loc_1636491:   Set var_158 = Me.Txt
  loc_1636497:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_160)
  loc_16364DC:   Set var_164 = Me.Txt
  loc_16364E2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_26C)
  loc_16364FD:   Set var_2A0 = Me.Txt
  loc_1636503:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2A4)
  loc_163650B:   var_168 = var_2A4.Text
  loc_1636515:   var_354 = CVar(Proc_6_15_EF2C1C(var_B4)) 'String
  loc_163651B:   Proc_6_7_F25D88(var_364)
  loc_1636537:   var_AC = "Insert Into MemOutStation(Code,Type,MemCode,FrDate,ToDate,RevenueChng,FrMonth,ToMonth,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_108
  loc_1636583:   var_258 = CVar(var_AC & "','" & global_80 & "','" & var_A4.Tag & "',") & var_F8 & "," & var_1B0 & ",'" & IIf((var_160.Text = "Yes"), "Y", "N") 
  loc_16365CF:   var_324 = var_258 & "','" & CVar(var_26C.Text) & "','" & CVar(var_168) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_16365D8:   var_344 = var_324 & "'," 
  loc_1636609:   unk_4B8ED3.Execute CStr(var_344 & var_364 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_3F8, -1
  loc_1636680: Else
  loc_163669A:   If (global_60.RecordCount > 0) Then
  loc_16366B4:     var_AC = "Delete From MemRevenueForPeriod Where Code='" & global_108
  loc_16366C5:     var_13C = var_AC & "' And Type='" & global_80
  loc_16366D5:     unk_4B8ED3.Execute var_13C & "'", var_D8, -1
  loc_16366EB:   End If
  loc_16366F9:   Set var_A0 = Me.Txt
  loc_16366FF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC)
  loc_1636707:   var_A0 = var_A4.Tag
  loc_1636717:   Set var_A8 = Me.Txt
  loc_163671D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B4)
  loc_163672C:   Proc_6_7_F25D88(var_F8, CVar(var_B4))
  loc_163673C:   Set var_150 = Me.Txt
  loc_1636742:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_154)
  loc_163674A:   var_1A0 = CVar(var_154) 'Address
  loc_1636751:   Proc_6_7_F25D88(var_1B0, var_1A0)
  loc_1636764:   Set var_158 = Me.Txt
  loc_163676A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_160, var_13C)
  loc_1636772:   var_3FC = var_160.Text
  loc_1636787:   var_210 = "Y"
  loc_16367AF:   Set var_164 = Me.Txt
  loc_16367B5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_26C)
  loc_16367D0:   Set var_2A0 = Me.Txt
  loc_16367D6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2A4)
  loc_16367E8:   var_324 = CVar(Proc_6_15_EF2C1C(var_354)) 'String
  loc_16367EE:   Proc_6_7_F25D88(var_344)
  loc_1636834:   var_258 = CVar("UPDATE MemOutStation SET MemCode='" & var_AC & "',FrDate=") & var_F8 & ",ToDate=" & var_1B0 & ",RevenueChng='" & IIf((var_13C = "Yes"), var_210, "N") 
  loc_1636863:   var_2D4 = var_258 & "',FrMonth='" & CVar(var_26C.Text) & "',ToMonth='" & CVar(var_2A4.Text) & "',U_name='" 
  loc_1636899:   var_394 = var_2D4 & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_344 & ",U_AE='E',Site_Code='" & CVar(MemVar_1F92070) & "' WHERE Code='" 
  loc_16368BD:   unk_4B8ED3.Execute CStr(var_394 & CVar(global_108) & "'"), var_3F8, -1
  loc_1636929: End If
  loc_163694E: For var_400 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_400 'Integer
  loc_1636958:   var_C8 = CVar(CLng(var_88)) 'Long
  loc_1636960:   var_108 = CVar(CLng(5)) 'Long
  loc_163699C:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_16369A3:     var_C8 = CVar(CLng(var_88)) 'Long
  loc_16369BA:     var_D8 = Me.FGrid.TextMatrix)
  loc_16369D4:     Set var_A4 = Me.Txt
  loc_16369DA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_168, var_D8, CVar(CLng(5)), var_C8)
  loc_16369E2:     var_108 = var_A8.Tag
  loc_16369F5:     Set var_B4 = Me.Txt
  loc_16369FB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_150, var_408, var_C8)
  loc_1636A03:     1 = var_150.Text
  loc_1636A16:     Set var_154 = Me.Txt
  loc_1636A1C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_158, var_414)
  loc_1636A24:     var_3FC = var_158.Text
  loc_1636A2D:     var_180 = CVar(CLng(var_88)) 'Long
  loc_1636A44:     var_F8 = Me.FGrid.TextMatrix)
  loc_1636A57:     var_4FC = Val(CStr(var_F8))
  loc_1636A75:     var_118 = Me.FGrid.TextMatrix)
  loc_1636A9C:     var_138 = Me.FGrid.TextMatrix)
  loc_1636AB3:     Proc_6_7_F25D88(var_1A0, CVar(Proc_6_15_EF2C1C(var_138, CVar(CLng(4)), CVar(CLng(var_88)), var_118, CVar(CLng(3)))), CVar(CLng(var_88)), var_4FC)
  loc_1636ABC:     Set var_2A0 = Me.TopCtrl1
  loc_1636AC2:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(2)))
  loc_1636B0D:     var_AC = "Insert Into MemRevenueForPeriod(Code,Type,RevCode,MemCode,FrMonth,ToMonth,Amount,Nature,AppMonth," & "U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) "
  loc_1636B5D:     var_410 = var_AC & " Values ('" & global_108 & "','" & global_80 & "','" & CStr(var_D8) & "','" & var_168 & "','" & var_408
  loc_1636BB7:     var_1B0 = CVar(var_410 & "','" & var_414 & "'," & CStr(var_4FC) & ",'" & CStr(var_118) & "','" & CStr(var_138) & "','" & MemVar_1F920C8 & "',") 'String
  loc_1636BF3:     var_2B4 = var_1B0 & var_1A0 & ",'" & IIf((CStr(var_210) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) 
  loc_1636C0A:     unk_4B8ED3.Execute CStr(var_2B4 & "')"), var_2D4, -1
  loc_1636C98:   End If
  loc_1636C9B: Next var_400 'Integer
  loc_1636CA6: unk_4B8ED3.CommitTrans
  loc_1636CAF: var_86 = CByte(0) 'Byte
  loc_1636CC1: Me.Recordset15.Requery -1
  loc_1636CF1: Me.Recordset15.Find "SearchCode ='" & global_108 & "'", 0, 1
  loc_1636D01: Set var_A0 = Me.TopCtrl1
  loc_1636D07: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C8)
  loc_1636D20: If (CStr() = "Add") Then
  loc_1636D23:   Call TopCtrl1_UnknownEvent_A()
  loc_1636D28:   Exit Sub
  loc_1636D29: End If
  loc_1636D42: var_AC = "INI"
  loc_1636D50: Call Proc_295_46_E877BC(Proc_5_1_100CB50(var_AC, Me))
  loc_1636D5B: Call Proc_295_45_14A488C(global_60)
  loc_1636D60: Exit Sub
  loc_1636D61: ' Referenced from: 16358F4
  loc_1636D6A: If (CInt(var_86) = 1) Then
  loc_1636D73:   unk_4B8ED3.RollbackTrans
  loc_1636D78: End If
  loc_1636D80: Set var_A0 = Err()
  loc_1636D86: Call 0.Method_arg_2C (var_AC)
  loc_1636D9F: MsgBox(CVar(var_AC), &H10, var_F8, var_118, var_138)
  loc_1636DB2: Exit Sub
End Sub

Private Sub Form_Load() '116D38C
  'Data Table: 4B8EC0
  Dim var_BC As Variant
  Dim var_AC As String
  Dim var_C0 As String
  Dim Me As Recordset15
  Dim unk_4B8ED3 As Connection15
  Dim var_A8 As Variant
  Dim var_C8 As Label
  loc_116CFC8: On Error Goto loc_116D346
  loc_116CFD5: Set var_A8 = Me.TopCtrl1
  loc_116CFDB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_116CFE9: Call 0.Method_arg_50 (var_AC)
  loc_116CFF9: Set var_A8 = Me.TopCtrl1
  loc_116CFFF: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_116D010: global_80 = "OutStation"
  loc_116D030: Me.TopCtrl1.CursorLocation = 3
  loc_116D05A: var_C0 = "Select SubCode as Code,Name,Discount,CardNo,CompanyType From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_116D068: var_BC = CVar(var_C0 & MemVar_1F92078 & "') Order By Name") 'String
  loc_116D072: Me.Open var_BC, CVar(MemVar_1F92044), 3
  loc_116D08C: CVarUnk
  loc_116D091: VerifyVarObj
  loc_116D09D: LateIdStAd
  loc_116D0BF: var_AC = "SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_116D0CF: unk_4B8ED3.Execute var_AC & "' or LOGSITE_CODE='HO') ORDER BY MembershipRevMast.Description", var_BC, -1
  loc_116D0FE: CVarUnk
  loc_116D103: VerifyVarObj
  loc_116D109: Set var_A8 = Me.DGRev
  loc_116D10F: LateIdStAd
  loc_116D142: var_C0 = "Select Code as SearchCode,Type,SITE_CODE,LOGSITE_CODE From MemOutStation where Site_Code='" & MemVar_1F92070 & "' And (LOGSITE_CODE='"
  loc_116D15D: Me.DGRev.Open CVar(var_C0 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Code"), CVar(MemVar_1F92044), 3
  loc_116D17D: Set var_A8 = Me.TopCtrl1
  loc_116D183: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(CStr(5800)))
  loc_116D1A7: var_AC = "INI"
  loc_116D1B5: Call Proc_295_46_E877BC(Proc_5_1_100CB50(var_AC, Me, global_60, 1, -1, Me), Me.DGMember, Me, Me)
  loc_116D1C0: Call Proc_295_42_11149CC(New, 1)
  loc_116D1C5: Call Proc_295_45_14A488C(-1)
  loc_116D1D9: Me.LblUser.Left = CDbl(500)
  loc_116D1F0: Me.LblUser.Top = CDbl(7800)
  loc_116D207: Me.LblLDt.Top = CDbl(8160)
  loc_116D21E: Me.LblLDt.Left = CDbl(500)
  loc_116D234: Me.Label1.BackColor = CLng(MemVar_1F921B0)
  loc_116D249: Set var_A8 = Me.Label2
  loc_116D24F: Call 0.Method_Form_Load0 (0, var_C8)
  loc_116D257: var_C8.BackColor = CLng(MemVar_1F921B0)
  loc_116D270: Set var_A8 = Me.Label2
  loc_116D276: Call 0.Method_Form_Load0 (1, var_C8)
  loc_116D27E: var_C8.BackColor = CLng(MemVar_1F921B0)
  loc_116D297: Set var_A8 = Me.Label2
  loc_116D29D: Call 0.Method_Form_Load0 (2, var_C8)
  loc_116D2A5: var_C8.BackColor = CLng(MemVar_1F921B0)
  loc_116D2BE: Set var_A8 = Me.Label2
  loc_116D2C4: Call 0.Method_Form_Load0 (3, var_C8)
  loc_116D2CC: var_C8.BackColor = CLng(MemVar_1F921B0)
  loc_116D2E5: Set var_A8 = Me.Label2
  loc_116D2EB: Call 0.Method_Form_Load0 (4, var_C8)
  loc_116D2F3: var_C8.BackColor = CLng(MemVar_1F921B0)
  loc_116D306: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_116D318: Set var_A8 = Me.FGrid
  loc_116D31E: var_A8.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_116D32F: Call 0.Method_arg_160 (var_A8)
  loc_116D33D: Call 0.Method_arg_164 (var_A8)
  loc_116D345: Exit Sub
  loc_116D346: ' Referenced from: 116CFC8
  loc_116D34E: Set var_A8 = Err()
  loc_116D354: Call 0.Method_arg_2C (var_AC)
  loc_116D375: MsgBox(CVar(var_AC), &H40, "Information", var_EC, var_10C)
  loc_116D388: Exit Sub
  loc_116D389: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E55DFC
  'Data Table: 4B8EC0
  loc_E55DC7: Set global_64 = Nothing
  loc_E55DD9: Set global_60 = Nothing
  loc_E55DEB: Set global_68 = Nothing
  loc_E55DF7: global_52 = 0
  loc_E55DFA: Exit Sub
End Sub

Private Sub Form_Activate() 'E4FC08
  'Data Table: 4B8EC0
  loc_E4FBD8: On Error Goto loc_E4FC02
  loc_E4FBDF: Set var_88 = Me.TopCtrl1
  loc_E4FBE5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4FBFA: If (CLng(CInt()) = &H2D) Then
  loc_E4FBFD:   Call TopCtrl1_UnknownEvent_15()
  loc_E4FC02:   ' Referenced from: E4FBD8
  loc_E4FC02: End If
  loc_E4FC02: Proc_6_60_E62BC4()
  loc_E4FC07: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2472C
  'Data Table: 4B8EC0
  loc_E24711: If (global_52 = &HFF) Then
  loc_E24721:   Me.Global.Unload Me
  loc_E24729: End If
  loc_E24729: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E87FBC
  'Data Table: 4B8EC0
  loc_E87F58: On Error Goto loc_E87F78
  loc_E87F6F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E87F77: Exit Sub
  loc_E87F78: ' Referenced from: E87F58
  loc_E87F80: Set var_88 = Err()
  loc_E87F86: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E87FA7: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E87FBA: Exit Sub
  loc_E87FBB: Exit Sub
End Sub

Private Sub CmdFillGrid_Click() 'DFDE34
  'Data Table: 4B8EC0
  loc_DFDE2C: Call Proc_295_44_1191730()
  loc_DFDE31: Exit Sub
  loc_DFDE32: CExtInstUnk
End Sub

Public Function global_52Get() '4B9DF4
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4B9E03
  global_52 = Value
End Sub

Public Function global_56Get() '4B9E12
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4B9E21
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E9C890
  'Data Table: 4B8EC0
  loc_E9C816: On Error Goto loc_E9C889
  loc_E9C822: Me.Recordset15.MoveFirst
  loc_E9C84F: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E9C87B: Proc_5_0_110649C(&HFF, Me, global_60)
  loc_E9C883: Call Proc_295_45_14A488C(0)
  loc_E9C888: Exit Sub
  loc_E9C889: ' Referenced from: E9C816
  loc_E9C889: Proc_6_60_E62BC4(var_A0)
  loc_E9C88E: Exit Sub
End Sub

Public Sub Proc_295_42_11149CC
  'Data Table: 4B8EC0
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_104 As TextBox
  Dim var_10C As DataGrid
  Dim var_110 As TextBox
  Dim arg_50FF As Double
  loc_1114680: Set var_88 = Me.FGrid
  loc_111468F: var_88.Height = CVar(CDbl(4250))
  loc_11146A0: var_88.Width = CVar(CDbl(8500))
  loc_11146B1: var_88.Cols = 6
  loc_11146C2: var_88.Rows = 2
  loc_11146DB: global_104 = CStr(CLng(var_88.BackColor))
  loc_11146E8: var_98 = CVar(CLng(5)) 'Long
  loc_11146ED: var_CC = 0
  loc_11146F9: LateIdCallSt
  loc_1114704: var_98 = CVar(CLng(5)) 'Long
  loc_111470F: var_CC = CVar(CInt(4)) 'Integer
  loc_1114716: LateIdCallSt
  loc_111471E: var_98 = 1
  loc_111472A: var_CC = CVar(CLng(5)) 'Long
  loc_111472F: var_EC = "0"
  loc_1114738: LateIdCallSt
  loc_1114740: var_98 = 0
  loc_111474C: var_CC = CVar(CLng(1)) 'Long
  loc_1114751: var_EC = "Revenue"
  loc_111475A: LateIdCallSt
  loc_1114765: var_98 = CVar(CLng(1)) 'Long
  loc_111476A: var_CC = &HFA0
  loc_1114776: LateIdCallSt
  loc_1114781: var_98 = CVar(CLng(1)) 'Long
  loc_111478C: var_CC = CVar(CInt(1)) 'Integer
  loc_1114793: LateIdCallSt
  loc_111479B: var_98 = 0
  loc_11147A7: var_CC = CVar(CLng(2)) 'Long
  loc_11147AC: var_EC = "Amount"
  loc_11147B5: LateIdCallSt
  loc_11147C0: var_98 = CVar(CLng(2)) 'Long
  loc_11147C5: var_CC = &H4B0
  loc_11147D1: LateIdCallSt
  loc_11147DC: var_98 = CVar(CLng(2)) 'Long
  loc_11147E7: var_CC = CVar(CInt(7)) 'Integer
  loc_11147EE: LateIdCallSt
  loc_11147F6: var_98 = 0
  loc_1114802: var_CC = CVar(CLng(3)) 'Long
  loc_1114807: var_EC = "Nature"
  loc_1114810: LateIdCallSt
  loc_111481B: var_98 = CVar(CLng(3)) 'Long
  loc_1114820: var_CC = &H708
  loc_111482C: LateIdCallSt
  loc_1114837: var_98 = CVar(CLng(3)) 'Long
  loc_1114842: var_CC = CVar(CInt(1)) 'Integer
  loc_1114849: LateIdCallSt
  loc_1114851: var_98 = 0
  loc_111485D: var_CC = CVar(CLng(4)) 'Long
  loc_1114862: var_EC = "Month"
  loc_111486B: LateIdCallSt
  loc_1114876: var_98 = CVar(CLng(4)) 'Long
  loc_111487B: var_CC = &H320
  loc_1114887: LateIdCallSt
  loc_1114892: var_98 = CVar(CLng(4)) 'Long
  loc_111489D: var_CC = CVar(CInt(1)) 'Integer
  loc_11148A4: LateIdCallSt
  loc_11148AC: var_98 = 0
  loc_11148B8: var_CC = CVar(CLng(0)) 'Long
  loc_11148BD: var_EC = "O"
  loc_11148C6: LateIdCallSt
  loc_11148D1: var_98 = CVar(CLng(0)) 'Long
  loc_11148D6: var_CC = &H64
  loc_11148E2: LateIdCallSt
  loc_11148ED: var_98 = CVar(CLng(0)) 'Long
  loc_11148FF: LateIdCallSt
  loc_1114907: var_98 = True
  loc_111490E: var_88.Enabled = var_98
  loc_1114921: Set var_100 = Me.Txt
  loc_1114927: Call 0.Method_Proc_295_42_11149CC0 (CInt(0), var_104, var_108, var_88, CVar(CInt(4)), var_98, var_88)
  loc_111492F: var_CC = var_104.Left
  loc_1114937: var_98 = CVar(var_108) 'Single
  loc_1114946: Me.DGMember.Left = var_98
  loc_1114962: Set var_10C = Me.Txt
  loc_1114968: Call 0.Method_Proc_295_42_11149CC0 (CInt(0), var_110, var_114, var_98, var_88)
  loc_1114970: var_EC = var_110.Height
  loc_1114983: Set var_100 = Me.Txt
  loc_1114989: Call 0.Method_Proc_295_42_11149CC0 (CInt(0), var_104, var_108)
  loc_1114991: var_CC = var_104.Top
  loc_11149A1: var_98 = CVar(((var_108 + var_114) + CDbl(&H19))) 'Single
  loc_11149B0: Me.DGMember.Top = var_98
  loc_11149C4: Set var_88 = Nothing 
  loc_11149C8: Exit Sub
  loc_11149C9: arg_50FF = var_98
End Sub

Public Sub Proc_295_43_F181E0
  'Data Table: 4B8EC0
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F180F6: Set var_8C = Me.Txt
  loc_F180FC: Call 0.Method_Proc_295_43_F181E0C (var_8E, var_86)
  loc_F1810C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F18122:   Set var_8C = Me.Txt
  loc_F18128:   Call 0.Method_Proc_295_43_F181E00 (CInt(var_86), var_98)
  loc_F18130:   var_98.Text = vbNullString
  loc_F1814C:   Set var_8C = Me.Txt
  loc_F18152:   Call 0.Method_Proc_295_43_F181E00 (CInt(var_86), var_98)
  loc_F1815A:   var_98.Tag = vbNullString
  loc_F18169: Next var_92 'Byte
  loc_F18182: Me.FGrid.Rows = 1
  loc_F1819F: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F181A7: Set var_98 = Me.FGrid
  loc_F181D6: Me.FGrid.FixedRows = 1
  loc_F181DE: Exit Sub
End Sub

Public Sub Proc_295_44_1191730
  'Data Table: 4B8EC0
  Dim var_90 As String
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_FC As String
  Dim var_110 As Variant
  Dim var_150 As Variant
  Dim unk_4B8ED3 As Connection15
  Dim var_8A As Integer
  Dim var_88 As Recordset15
  loc_1191390: var_90 = "Select MemCatMast.Code AS CatCode , MemCatMast.Name AS CatName , MembershipRevMast.Code As RevCode, MembershipRevMast.Description, MR.AppDate , MR.Amount , MR.Nature, MR.AppMonth From ((MemCatRevWise MR Left Join MemCatMast On MR.MemCat = MemCatMast.Code) LEFT JOIN MembershipRevMast ON MR.RevCode = MembershipRevMast.Code) Where MR.Site_Code='" & MemVar_1F92070
  loc_11913D3: var_C8 = Proc_6_38_E68A98(CVar(Me.Fields.Item("CompanyType")), var_90 & "' and (MR.LOGSITE_CODE='" & MemVar_1F92078 & "' or MR.LOGSITE_CODE='HO') And MR.MemCat='", var_184)
  loc_11913D7: var_CC = -1 & var_C8
  loc_119140C: var_FC = Proc_6_38_E68A98(CVar(Me.Fields.Item("CompanyType")), var_CC & "' And MR.AppDate=(Select Top 1 AppDate From MemCatRevWise Where MemCat='")
  loc_1191425: Proc_6_7_F25D88(var_120, MemVar_1F920EC)
  loc_1191444: unk_4B8ED3.Execute CStr(CVar(var_188 & var_FC & "' And Appdate<=") & var_120 & "Order By AppDate Desc)"), , 
  loc_119144F: Set var_88 = var_188
  loc_1191485: var_8A = 1
  loc_119149B: Me.FGrid.Rows = 1
  loc_11914A3: ' Referenced from: 11916BC
  loc_11914B2: If Not(var_88.EOF) Then
  loc_11914B5:   var_AC = vbNullString
  loc_11914BF:   Set var_9C = Me.FGrid
  loc_11914D4:   Set var_190 = Me.FGrid
  loc_11914DB:   var_E0 = CVar(CLng(var_8A)) 'Long
  loc_11914E3:   var_150 = CVar(CLng(5)) 'Long
  loc_1191513:   var_F4 = CVar(CStr(var_88.Fields.Item("RevCode").Value)) 'String
  loc_119151A:   LateIdCallSt
  loc_119153C:   var_150 = CVar(CLng(1)) 'Long
  loc_1191569:   var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Description")), var_150, CVar(CLng(var_8A)), var_190, var_F4)) 'String
  loc_1191570:   LateIdCallSt
  loc_11915A8:   Proc_6_39_E7C810(var_F4, CVar(var_88.Fields.Item("Amount")), var_190, var_F4, var_150)
  loc_11915B1:   var_110 = CVar(CLng(var_8A)) 'Long
  loc_11915E9:   LateIdCallSt
  loc_119163A:   var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(3)), CVar(CLng(var_8A)), var_190, CVar(CStr(Format(var_F4, "0.00"))), 1, 1)) 'String
  loc_1191641:   LateIdCallSt
  loc_119168C:   var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("AppMonth")), CVar(CLng(4)), CVar(CLng(var_8A)), var_190, var_F4, CVar(CLng(2)))) 'String
  loc_1191693:   LateIdCallSt
  loc_11916A7:   Set var_190 = Nothing 
  loc_11916B1:   var_8A = (var_8A + 1)
  loc_11916B7:   var_88.MoveNext
  loc_11916BC:   GoTo loc_11914A3
  loc_11916BF: End If
  loc_11916BF: var_AC = 0
  loc_11916C9: Set var_9C = Me.FGrid
  loc_11916F6: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_11916F9:   var_AC = vbNullString
  loc_1191703:   Set var_9C = Me.FGrid
  loc_1191714: End If
  loc_1191727: Me.FGrid.FixedRows = 1
  loc_119172F: Exit Sub
End Sub

Public Sub Proc_295_45_14A488C
  'Data Table: 4B8EC0
  Dim var_98 As String
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As Field20
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim unk_4B8ED3 As Connection15
  Dim var_11C As Variant
  Dim var_130 As Fields15
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_88 As Recordset15
  Dim var_188 As Fields15
  Dim var_184 As Variant
  Dim var_1E0 As Label
  Dim var_1E6 As Integer
  Dim var_1BC As TextBox
  Dim var_1EC As TextBox
  Dim Me As Recordset15
  Dim var_8E As Integer
  Dim var_8C As Recordset15
  Dim var_12C As Variant
  loc_14A3C08: On Error Goto loc_14A4886
  loc_14A3C25: If (Me.Recordset15.RecordCount > 0) Then
  loc_14A3C28:   Call Proc_295_43_F181E0()
  loc_14A3C41:   var_98 = "Select M.*,S.Name As MemName From MemOutStation M Inner Join SubGroup S On M.MemCode=S.SubCode where M.Site_Code='" & MemVar_1F92070
  loc_14A3C89:   var_E8 = CVar(var_98 & "' And (M.LOGSITE_CODE='" & MemVar_1F92078 & "' or M.LOGSITE_CODE='HO') And M.Code='") & Me.Recordset15.Fields.Item("SearchCode").Value 
  loc_14A3CA0:   unk_4B8ED3.Execute CStr(var_E8 & "'"), var_12C, -1
  loc_14A3CAB:   Set var_88 = var_130
  loc_14A3CE3:   var_98 = "Select M.*,MR.Description As Description From MemRevenueForPeriod M Inner Join MembershipRevMast MR On M.RevCode=MR.Code where M.Site_Code='" & MemVar_1F92070
  loc_14A3D2B:   var_E8 = CVar(var_98 & "' And (M.LOGSITE_CODE='" & MemVar_1F92078 & "' or M.LOGSITE_CODE='HO') And M.Code='") & Me.Recordset15.Fields.Item("SearchCode").Value 
  loc_14A3D7F:   unk_4B8ED3.Execute CStr(var_E8 & "' And M.Type='" & Me.Recordset15.Fields.Item("Type").Value & "'"), var_184, -1
  loc_14A3D8A:   Set var_8C = var_188
  loc_14A3DF2:   var_130 = var_88.Fields
  loc_14A3E5B:   var_164 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), var_188) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_130.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_14A3EA0:   Me.LblUser.Caption = CStr(var_130 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_164)))
  loc_14A3F1A:   var_134 = var_88.Fields.Item("U_AE")
  loc_14A3F7B:   var_164 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_134)) = "E"), "Last Update : ", "entdt : "))
  loc_14A3F9A:   var_1BC = var_88.Fields.Item("U_EntDt")
  loc_14A3FC0:   Me.LblLDt.Caption = CStr(var_164 & CVar(Proc_6_38_E68A98(CVar(var_1BC))))
  loc_14A400C:   If (var_88.RecordCount > 0) Then
  loc_14A403D:     global_108 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Code")))
  loc_14A4080:     Set var_130 = Me.Txt
  loc_14A4086:     Call 0.Method_Proc_295_45_14A488C0 (CInt(0), var_134)
  loc_14A408E:     var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemName")))
  loc_14A40D8:     Set var_130 = Me.Txt
  loc_14A40DE:     Call 0.Method_Proc_295_45_14A488C0 (CInt(0), var_134)
  loc_14A40E6:     var_134.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCode")))
  loc_14A4185:     var_98 = CStr(IIf(IsNull(CVar(var_88.Fields.Item("FrDate"))), vbNullString, Format(CVar(var_88.Fields.Item("FrDate")), "dd/MMM/yyyy")))
  loc_14A4194:     Set var_188 = Me.Txt
  loc_14A419A:     Call 0.Method_Proc_295_45_14A488C0 (CInt(1), var_1BC, var_98)
  loc_14A41A2:     var_1BC.Text = 1
  loc_14A41EE:     var_1E6 = IsNull(CVar(var_88.Fields.Item("ToDate")))
  loc_14A4208:     var_134 = var_88.Fields.Item("ToDate")
  loc_14A4260:     Set var_188 = Me.Txt
  loc_14A4266:     Call 0.Method_Proc_295_45_14A488C0 (CInt(2), var_1BC, CStr(IIf(var_1E6, vbNullString, Format(CVar(var_134), "dd/MMM/yyyy"))), 1)
  loc_14A426E:     var_1BC.Text = 1
  loc_14A42FC:     Set var_130 = Me.Txt
  loc_14A4302:     Call 0.Method_Proc_295_45_14A488C0 (CInt(5), var_134, CStr(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevenueChng")), var_1E6) = "Y"), "Yes", "No")))
  loc_14A430A:     var_134.Text = 1
  loc_14A43DF:     var_164 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("FrMonth"))) = vbNullString), CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FrMonth")))), Format(CVar(var_88.Fields.Item("FrMonth")), "MMM/yyyy"))
  loc_14A43F6:     Set var_1E0 = Me.Txt
  loc_14A43FC:     Call 0.Method_Proc_295_45_14A488C0 (CInt(3), var_1EC, CStr(var_164))
  loc_14A4404:     var_1EC.Text = 1
  loc_14A444B:     var_B8 = var_88.Fields.Item("ToMonth")
  loc_14A4462:     var_F8 = "ToMonth"
  loc_14A447E:     var_D8 = CVar(var_88.Fields.Item(var_F8)) 'Address
  loc_14A44E5:     var_164 = IIf((Proc_6_38_E68A98(CVar(var_B8), 1) = vbNullString), CVar(Proc_6_38_E68A98(var_D8)), Format(CVar(var_88.Fields.Item("ToMonth")), "MMM/yyyy"))
  loc_14A44FC:     Set var_1E0 = Me.Txt
  loc_14A4502:     Call 0.Method_Proc_295_45_14A488C0 (CInt(4), var_1EC, CStr(var_164))
  loc_14A450A:     var_1EC.Text = 1
  loc_14A4551:     If (Me.RecordCount > 0) Then
  loc_14A455A:       Me.MoveFirst
  loc_14A457D:       Set var_A4 = Me.Txt
  loc_14A4583:       Call 0.Method_Proc_295_45_14A488C0 (CInt(0), var_B8, "Name =", 0)
  loc_14A4592:       Proc_6_17_EAA2B0(var_D8, CVar(var_B8), 1)
  loc_14A45A8:       Me.Find CStr(var_F8 & var_D8), 1, var_1E6
  loc_14A45BC:     End If
  loc_14A45BC:   End If
  loc_14A45BE:   var_8E = 1
  loc_14A45D4:   Me.FGrid.Rows = 1
  loc_14A45DC:   ' Referenced from: 14A47F5
  loc_14A45EB:   If Not(var_8C.EOF) Then
  loc_14A45EE:     var_B4 = vbNullString
  loc_14A45F8:     Set var_A4 = Me.FGrid
  loc_14A460D:     Set var_1F0 = Me.FGrid
  loc_14A4614:     var_F8 = CVar(CLng(var_8E)) 'Long
  loc_14A461C:     var_154 = CVar(CLng(5)) 'Long
  loc_14A464C:     var_D8 = CVar(CStr(var_8C.Fields.Item("RevCode").Value)) 'String
  loc_14A4653:     LateIdCallSt
  loc_14A4675:     var_154 = CVar(CLng(1)) 'Long
  loc_14A46A2:     var_D8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Description")), var_154, CVar(CLng(var_8E)), var_1F0, var_D8)) 'String
  loc_14A46A9:     LateIdCallSt
  loc_14A46E1:     Proc_6_39_E7C810(var_D8, CVar(var_8C.Fields.Item("Amount")), var_1F0, var_D8, var_154)
  loc_14A46EA:     var_11C = CVar(CLng(var_8E)) 'Long
  loc_14A4722:     LateIdCallSt
  loc_14A4773:     var_D8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Nature")), CVar(CLng(3)), CVar(CLng(var_8E)), var_1F0, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)) 'String
  loc_14A477A:     LateIdCallSt
  loc_14A4790:     var_F8 = CVar(CLng(var_8E)) 'Long
  loc_14A47C5:     var_D8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("AppMonth")), CVar(CLng(4)), var_F8, var_1F0, var_D8, CVar(CLng(2)))) 'String
  loc_14A47CC:     LateIdCallSt
  loc_14A47E0:     Set var_1F0 = Nothing 
  loc_14A47EA:     var_8E = (var_8E + 1)
  loc_14A47F0:     var_8C.MoveNext
  loc_14A47F5:     GoTo loc_14A45DC
  loc_14A47F8:   End If
  loc_14A47F8:   var_B4 = 0
  loc_14A4802:   Set var_A4 = Me.FGrid
  loc_14A482F:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_14A4832:     var_B4 = vbNullString
  loc_14A483C:     Set var_A4 = Me.FGrid
  loc_14A484D:   End If
  loc_14A484D:   var_B4 = 1
  loc_14A4860:   Me.FGrid.FixedRows = var_B4
  loc_14A486B: Else
  loc_14A486B:   Call Proc_295_43_F181E0(FGrid.DispID_10000, var_B4, FGrid.DispID_2E, var_B4, var_8E, var_1F0)
  loc_14A4870: End If
  loc_14A4870: Call Proc_295_47_E867E8(var_D8, var_11C, var_F8)
  loc_14A487A: Set var_88 = Nothing
  loc_14A4882: Set var_8C = Nothing
  loc_14A4885: Exit Sub
  loc_14A4886: ' Referenced from: 14A3C08
  loc_14A4886: Proc_6_60_E62BC4(FGrid.DispID_10000, var_B4)
  loc_14A488B: Exit Sub
End Sub

Public Sub Proc_295_46_E877BC(arg_C) 'E877BC
  'Data Table: 4B8EC0
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_E87756: Set var_8C = Me.Txt
  loc_E8775C: Call 0.Method_Proc_295_46_E877BCC (var_8E, var_86)
  loc_E8776C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E87782:   Set var_8C = Me.Txt
  loc_E87788:   Call 0.Method_Proc_295_46_E877BC0 (CInt(var_86), var_98)
  loc_E87790:   var_98.Enabled = arg_C
  loc_E8779F: Next var_92 'Byte
  loc_E877B2: Me.CmdFillGrid.Enabled = arg_C
  loc_E877BA: Exit Sub
End Sub

Public Sub Proc_295_47_E867E8
  'Data Table: 4B8EC0
  loc_E86794: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_E867A6:   Me.DGMember.Visible = False
  loc_E867AE: End If
  loc_E867CA: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_E867DC:   Me.DGRev.Visible = False
  loc_E867E4: End If
  loc_E867E4: Exit Sub
End Sub

Public Sub Proc_295_48_E43CCC
  'Data Table: 4B8EC0
  loc_E43CA8: Set var_88 = Me.TopCtrl1
  loc_E43CAE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E43CC7: If (CStr() = "Browse") Then
  loc_E43CCA:   Exit Sub
  loc_E43CCB: End If
  loc_E43CCB: Exit Sub
End Sub

Public Sub Proc_295_49_12563AC(arg_C) '12563AC
  'Data Table: 4B8EC0
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_B8 As String
  Dim var_140 As Variant
  Dim var_170 As Variant
  loc_1255E64: If (arg_C = 0) Then
  loc_1255E7A:   var_A8 = CLng(Me.FGrid.Col)
  loc_1255E8A:   If (var_A8 = CLng(1)) Then
  loc_1255EAD:     var_AE = Me.EOF
  loc_1255EDB:     Set var_94 = Me.TxtGrid
  loc_1255EE1:     Call 0.Method_Proc_295_49_12563AC0 (arg_C, var_B4, var_B8)
  loc_1255EE9:     ((Me.RecordCount = 0) Or ((var_AE = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_1255F01:     If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_1255F17:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1255F1F:       var_E8 = CVar(CLng(1)) 'Long
  loc_1255F24:       var_108 = vbNullString
  loc_1255F2E:       Set var_B4 = Me.FGrid
  loc_1255F34:       LateIdCallSt
  loc_1255F59:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1255F61:       var_E8 = CVar(CLng(5)) 'Long
  loc_1255F66:       var_108 = vbNullString
  loc_1255F70:       Set var_B4 = Me.FGrid
  loc_1255F76:       LateIdCallSt
  loc_1255F8B:     Else
  loc_1255F8E:       Call Proc_295_50_FBE978(var_AE, var_B4, var_108, var_E8, var_C8)
  loc_1255F99:       If (var_AE = 0) Then
  loc_1255FA1:         Proc_295_49_12563AC = 0
  loc_1255FA7:       End If
  loc_1255FBA:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1255FC2:       var_F8 = CVar(CLng(1)) 'Long
  loc_1255FF5:       var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1255FFD:       Set var_140 = Me.FGrid
  loc_1256003:       LateIdCallSt
  loc_1256032:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125603A:       var_F8 = CVar(CLng(5)) 'Long
  loc_125606D:       var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1256075:       Set var_140 = Me.FGrid
  loc_125607B:       LateIdCallSt
  loc_1256097:     End If
  loc_12560B0:     var_C8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_12560B8:     var_E8 = CVar(CLng(5)) 'Long
  loc_12560C1:     Set var_B4 = Me.FGrid
  loc_12560D2:     var_B8 = CStr(var_B4.TextMatrix))
  loc_12560EB:     If (var_B8 <> vbNullString) Then
  loc_12560EE:       var_C8 = vbNullString
  loc_12560F8:       Set var_94 = Me.FGrid
  loc_1256109:     End If
  loc_125610C:   Else
  loc_1256113:     If (var_A8 = CLng(2)) Then
  loc_1256120:       Set var_94 = Me.TxtGrid
  loc_1256126:       Call 0.Method_Proc_295_49_12563AC0 (arg_C, var_B4, FGrid.DispID_10000, var_C8, var_E8, var_C8, var_140)
  loc_1256145:       Set var_11C = Me.TxtGrid
  loc_125614B:       Call 0.Method_Proc_295_49_12563AC0 (arg_C, var_140, var_B8, Not(IsNumeric(CVar(var_B4))), var_13C, var_F8)
  loc_1256153:       var_D8 = var_140.Text
  loc_1256175:       If (var_140 Or (CDbl(Val(var_B8)) < CDbl(0))) Then
  loc_125617C:         var_B8 = CStr(0)
  loc_1256189:         Set var_94 = Me.TxtGrid
  loc_125618F:         Call 0.Method_Proc_295_49_12563AC0 (arg_C, var_B4, var_B8)
  loc_1256197:         var_B4.Text = var_13C
  loc_12561AB:         Proc_295_49_12563AC = 0
  loc_12561B1:       End If
  loc_12561BE:       Set var_94 = Me.TxtGrid
  loc_12561C4:       Call 0.Method_Proc_295_49_12563AC0 (arg_C, var_B4, var_B8)
  loc_12561CC:       var_F8 = var_B4.Text
  loc_12561E4:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12561ED:       Set var_140 = Me.FGrid
  loc_12561FC:       var_F8 = CVar(CLng(var_140.Col)) 'Long
  loc_1256228:       var_170 = CVar(CStr(Format(CVar(var_B8), "0.00"))) 'String
  loc_1256230:       Set var_174 = Me.FGrid
  loc_1256236:       LateIdCallSt
  loc_125625D:     Else
  loc_1256264:       If Not (var_A8 = CLng(3)) Then
  loc_125626E:         If (var_A8 = CLng(4)) Then
  loc_1256271:         End If
  loc_125627E:         Set var_94 = Me.TxtGrid
  loc_1256284:         Call 0.Method_Proc_295_49_12563AC0 (arg_C, var_B4, var_B8, var_174, var_170)
  loc_125628C:         1 = var_B4.Text
  loc_12562A3:         If (var_B8 <> vbNullString) Then
  loc_12562BE:           Set var_B4 = Me.ListView.SelectedItem
  loc_12562C4:           var_B8 = var_B4.Text
  loc_12562D6:           Set var_11C = Me.TxtGrid
  loc_12562DC:           Call 0.Method_Proc_295_49_12563AC0 (arg_C, var_140, var_B8, 1)
  loc_12562E4:           var_140.Text = var_F8
  loc_12562FA:         End If
  loc_125630D:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1256337:         Set var_94 = Me.TxtGrid
  loc_125633D:         Call 0.Method_Proc_295_49_12563AC0 (arg_C, var_B4, var_B8, CVar(CLng(Me.FGrid.Col)))
  loc_1256345:         var_C8 = var_B4.Text
  loc_125634D:         var_13C = CVar(var_B8) 'String
  loc_1256355:         Set var_174 = Me.FGrid
  loc_125635B:         LateIdCallSt
  loc_1256379:       End If
  loc_1256379:     End If
  loc_1256379:   End If
  loc_1256379: End If
  loc_125638C: Set var_94 = Me.TxtGrid
  loc_1256392: Call 0.Method_Proc_295_49_12563AC0 (0, var_B4, 0, &HFF)
  loc_125639A: var_B4.MaxLength = var_174
  loc_12563A6: Proc_295_49_12563AC = var_13C
End Sub

Public Sub Proc_295_50_FBE978
  'Data Table: 4B8EC0
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBE7FB: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FBE800:   var_92 = 1 'Byte
  loc_FBE804: End If
  loc_FBE80D: Set var_98 = Me.TxtGrid
  loc_FBE813: Call 0.Method_Proc_295_50_FBE9780 (0, var_B0)
  loc_FBE836: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBE86A: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBE88E:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBE891:     GoTo loc_FBE963
  loc_FBE894:   End If
  loc_FBE898:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBE8C2:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBE8CC:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBE901:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBE925:     MsgBox("Duplicate Revenue Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBE93E:     Set var_98 = Me.TxtGrid
  loc_FBE944:     Call 0.Method_Proc_295_50_FBE9780 (0, var_B0, CVar(CLng(var_92)))
  loc_FBE94C:     var_B0.SetFocus
  loc_FBE95D:     Proc_295_50_FBE978 = 0
  loc_FBE963:     ' Referenced from: FBE891
  loc_FBE963:   End If
  loc_FBE966: Next var_D4 'Integer
  loc_FBE970: Proc_295_50_FBE978 = &HFF
End Sub
