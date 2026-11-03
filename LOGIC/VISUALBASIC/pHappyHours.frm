VERSION 5.00
Begin VB.Form pHappyHours
  Caption = "Happy Hours"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 9015
  ClientHeight = 7290
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 10
    Left = 4125
    Top = 1230
    Width = 1290
    Height = 240
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CheckBox Check1
    Caption = "Active all"
    Left = 4440
    Top = 1740
    Width = 1050
    Height = 255
    TabIndex = 12
  End
  Begin TextBox Txt
    Index = 9
    Left = 3480
    Top = 1740
    Width = 345
    Height = 240
    TabIndex = 11
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
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
    Index = 8
    Left = 3120
    Top = 1740
    Width = 345
    Height = 240
    TabIndex = 10
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
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
    Index = 7
    Left = 1785
    Top = 1740
    Width = 345
    Height = 240
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
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
    Index = 6
    Left = 1425
    Top = 1740
    Width = 345
    Height = 240
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton Cmd
    Caption = "E&xit"
    Index = 2
    BackColor = &H70E0FC&
    Left = 5970
    Top = 1560
    Width = 1335
    Height = 525
    Visible = 0   'False
    TabIndex = 22
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Cmd
    Caption = "&Save "
    Index = 1
    BackColor = &H70E0FC&
    Left = 5970
    Top = 1035
    Width = 1335
    Height = 525
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 21
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Cmd
    Caption = "&Fill Grid"
    Index = 0
    BackColor = &H70E0FC&
    Left = 5970
    Top = 510
    Width = 1335
    Height = 525
    TabIndex = 13
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 1
    Left = 1425
    Top = 720
    Width = 3990
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
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
    Left = 1425
    Top = 1230
    Width = 1290
    Height = 240
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Tahoma"
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
    Left = 1425
    Top = 975
    Width = 3990
    Height = 240
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 40
    BeginProperty Font
      Name = "Tahoma"
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
    Left = 4350
    Top = 1485
    Width = 1065
    Height = 240
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
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
    Left = 1425
    Top = 1485
    Width = 1290
    Height = 240
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 7
    BeginProperty Font
      Name = "Tahoma"
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
    Left = 1425
    Top = 465
    Width = 3990
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 8235
    Top = 690
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin PictureBox Picture3
    Picture = "pHappyHours.frx":0
    Left = 5430
    Top = 465
    Width = 300
    Height = 270
    TabIndex = 15
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture1
    Picture = "pHappyHours.frx":34E
    Left = 5430
    Top = 720
    Width = 300
    Height = 270
    TabIndex = 14
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture2
    Picture = "pHappyHours.frx":69C
    Left = 5430
    Top = 975
    Width = 300
    Height = 270
    TabIndex = 0
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin DataGrid DGItemCat
    Left = 4230
    Top = 4080
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 16
  End
  Begin MSFlexGrid FGPoint
    Left = 8880
    Top = 7560
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 17
  End
  Begin DataGrid DGRest
    Left = 840
    Top = 4095
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGItemGrp
    Left = 1980
    Top = 3555
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 19
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9015
    Height = 375
    TabIndex = 23
  End
  Begin MSHFlexGrid FGrid
    Left = 120
    Top = 2160
    Width = 11700
    Height = 4830
    TabIndex = 24
  End
  Begin Label Label1
    Caption = "End Date"
    Index = 9
    ForeColor = &H0&
    Left = 3180
    Top = 1230
    Width = 765
    Height = 240
    TabIndex = 34
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "To Time"
    Index = 8
    ForeColor = &H0&
    Left = 2235
    Top = 1740
    Width = 720
    Height = 240
    TabIndex = 33
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "From Time"
    Index = 7
    ForeColor = &H0&
    Left = 165
    Top = 1740
    Width = 945
    Height = 240
    TabIndex = 32
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Item Group"
    Index = 0
    ForeColor = &H0&
    Left = 165
    Top = 705
    Width = 960
    Height = 240
    TabIndex = 31
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Start Date"
    Index = 1
    ForeColor = &H0&
    Left = 165
    Top = 1230
    Width = 870
    Height = 240
    TabIndex = 30
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Item Category"
    Index = 2
    ForeColor = &H0&
    Left = 165
    Top = 975
    Width = 1215
    Height = 240
    TabIndex = 29
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Value"
    Index = 3
    ForeColor = &H0&
    Left = 3765
    Top = 1485
    Width = 480
    Height = 240
    TabIndex = 28
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Value Type"
    Index = 4
    ForeColor = &H0&
    Left = 165
    Top = 1485
    Width = 960
    Height = 240
    TabIndex = 27
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Outlet Name"
    Index = 5
    ForeColor = &H0&
    Left = 165
    Top = 450
    Width = 1065
    Height = 240
    TabIndex = 26
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Per/Amt"
    Index = 6
    ForeColor = &H0&
    Left = 2760
    Top = 1500
    Width = 735
    Height = 195
    TabIndex = 25
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
End

Attribute VB_Name = "pHappyHours"

Private global_80 As Integer
Private global_82 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) 'F7FA04
  'Data Table: 4CA7EC
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F7F8C4: Call Proc_180_54_EF6F60()
  loc_F7F8DC: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F7F8E5: Set var_9C = Me.FGrid
  loc_F7F91B: Set var_104 = Me.TxtGrid
  loc_F7F921: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F7F929: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_F7F95A: var_110 = CLng(Me.FGrid.Col)
  loc_F7F96A: If (var_110 = CLng(4)) Then
  loc_F7F97C:   Set var_88 = Me.TxtGrid
  loc_F7F982:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C, &HB)
  loc_F7F98A:   var_9C.MaxLength = var_110
  loc_F7F999: Else
  loc_F7F9A0:   If (var_110 = CLng(5)) Then
  loc_F7F9B2:     Set var_88 = Me.TxtGrid
  loc_F7F9B8:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_F7F9C0:     var_9C.MaxLength = &HB
  loc_F7F9CF:   Else
  loc_F7F9D6:     If (var_110 = CLng(6)) Then
  loc_F7F9E8:       Set var_88 = Me.TxtGrid
  loc_F7F9EE:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_F7F9F6:       var_9C.MaxLength = 3
  loc_F7FA02:     End If
  loc_F7FA02:   End If
  loc_F7FA02: End If
  loc_F7FA02: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10C64C8
  'Data Table: 4CA7EC
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_10C61D4: On Error Goto loc_10C64BF
  loc_10C61E1: If (CLng(Shift) = &H1B) Then
  loc_10C61F1:   Set var_88 = Me.TxtGrid
  loc_10C61F7:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_10C6211:   Set var_94 = Me.TxtGrid
  loc_10C6217:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_10C621F:   var_98.Text = var_8C.Tag
  loc_10C623B:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10C6240:   Call Proc_180_54_EF6F60(arg_14)
  loc_10C6249:   Set var_88 = Me.FGrid
  loc_10C6266:   Set var_88 = Me.TxtGrid
  loc_10C626C:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_10C6274:   var_8C.Visible = False
  loc_10C6280:   Exit Sub
  loc_10C6281: End If
  loc_10C6294: var_AC = CLng(Me.FGrid.Col)
  loc_10C62A4: If (var_AC = CLng(4)) Then
  loc_10C62E7:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_82 = &HFF))) Then
  loc_10C62F0:     Call Proc_180_51_107519C(KeyCode, var_AE)
  loc_10C62FB:     If (var_AE = &HFF) Then
  loc_10C6341:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82, 4)
  loc_10C6351:     End If
  loc_10C6351:   End If
  loc_10C6354: Else
  loc_10C635B:   If (var_AC = CLng(5)) Then
  loc_10C639E:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_82 = &HFF))) Then
  loc_10C63A7:       Call Proc_180_51_107519C(KeyCode, var_AE, 0, 0)
  loc_10C63B2:       If (var_AE = &HFF) Then
  loc_10C63F8:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82, 5)
  loc_10C6408:       End If
  loc_10C6408:     End If
  loc_10C640B:   Else
  loc_10C6412:     If (var_AC = CLng(6)) Then
  loc_10C6455:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_82 = &HFF))) Then
  loc_10C645E:         Call Proc_180_51_107519C(KeyCode, var_AE, 0, 0)
  loc_10C6469:         If (var_AE = &HFF) Then
  loc_10C64AF:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_82, 6, 0)
  loc_10C64BF:         End If
  loc_10C64BF:       End If
  loc_10C64BF:       ' Referenced from: 10C61D4
  loc_10C64BF:     End If
  loc_10C64BF:   End If
  loc_10C64BF: End If
  loc_10C64BF: Proc_6_60_E62BC4(0, 0, 0)
  loc_10C64C4: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F82B54
  'Data Table: 4CA7EC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As MSHFlexGrid
  Dim var_94 As Variant
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  loc_F82A07: Proc_6_58_E054C0(arg_10)
  loc_F82A12: Proc_6_133_E7EF78(var_94)
  loc_F82A1B: arg_10 = CInt(var_94)
  loc_F82A24: var_96 = KeyAscii
  loc_F82A2D: If (var_96 = 0) Then
  loc_F82A43:   var_A0 = CLng(Me.FGrid.Col)
  loc_F82A53:   If Not (var_A0 = CLng(4)) Then
  loc_F82A5D:     If (var_A0 = CLng(5)) Then
  loc_F82A60:     End If
  loc_F82A6A:     Set var_9C = Me.TxtGrid
  loc_F82A70:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, var_A0)
  loc_F82A8B:     Proc_6_42_129A86C(var_A4, arg_10, 8, 2)
  loc_F82A9A:   Else
  loc_F82AA1:     If (var_A0 = CLng(6)) Then
  loc_F82ACD:       If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_F82ADD:         Set var_9C = Me.TxtGrid
  loc_F82AE3:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, "Yes")
  loc_F82AEB:         var_A4.Text = var_96
  loc_F82AFA:       Else
  loc_F82B23:         If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_F82B33:           Set var_9C = Me.TxtGrid
  loc_F82B39:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, "No")
  loc_F82B41:           var_A4.Text = arg_10
  loc_F82B4D:         End If
  loc_F82B4D:       End If
  loc_F82B4F:       arg_10 = 0
  loc_F82B52:     End If
  loc_F82B52:   End If
  loc_F82B52: End If
  loc_F82B52: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E32774
  'Data Table: 4CA7EC
  Dim var_9C As Long
  loc_E3274C: On Error Goto loc_E3276C
  loc_E32762: var_9C = CLng(Me.FGrid.Col)
  loc_E3276B: Exit Sub
  loc_E3276C: ' Referenced from: E3274C
  loc_E3276C: Proc_6_60_E62BC4(var_9C)
  loc_E32771: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23EA4
  'Data Table: 4CA7EC
  Dim arg_10 As Integer
  loc_E23E8C: If (Cancel = 0) Then
  loc_E23E95:   Call Proc_180_51_107519C(Cancel, var_88)
  loc_E23E9E:   arg_10 = Not(var_88)
  loc_E23EA1: End If
  loc_E23EA1: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F3C224
  'Data Table: 4CA7EC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3C11B: Me.DGRest.Visible = False
  loc_F3C13A: If (Me.RecordCount > 0) Then
  loc_F3C179:   Set var_B4 = Me.Txt
  loc_F3C17F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3C187:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3C1BA:   var_B0 = Me.Fields.Item("Name")
  loc_F3C1D9:   Set var_B4 = Me.Txt
  loc_F3C1DF:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3C1E7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3C1FD: End If
  loc_F3C208: Set var_A8 = Me.Txt
  loc_F3C20E: Call 0.Method_DGRest_UnknownEvent_90 (CInt(0))
  loc_F3C216: var_B0.SetFocus
  loc_F3C222: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'EA6424
  'Data Table: 4CA7EC
  Dim var_A8 As Variant
  loc_EA63A4: Set var_88 = Me.DGRest
  loc_EA63CE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA63D6: Set var_BC = Me.DGRest
  loc_EA6412: Proc_6_138_106D6F8(Me.DGRest, global_60, CInt(0), Me.FGPoint)
  loc_EA6420: Exit Sub
  loc_EA6421: DGRest.DispID_1B = var_A8
End Sub

Private Sub Cmd_Click() '15E51EC
  'Data Table: 4CA7EC
  Dim var_C0 As Variant
  Dim var_E4 As Variant
  Dim var_F0 As String
  Dim var_F4 As String
  Dim var_F8 As TextBox
  Dim var_104 As String
  Dim var_10C As TextBox
  Dim var_88 As Variant
  Dim var_EC As String
  Dim var_138 As Variant
  Dim var_D0 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_128 As Variant
  Dim var_1D8 As Variant
  Dim var_230 As Variant
  Dim var_240 As Variant
  Dim var_248 As TextBox
  Dim var_268 As Variant
  Dim var_278 As String
  Dim unk_4CA80E As Connection15
  Dim var_AC As Recordset15
  Dim var_E8 As Fields15
  Dim var_E0 As Variant
  Dim var_96 As Integer
  Dim var_94 As Recordset15
  Dim Me As Recordset15
  loc_15E3ED0: Set var_88 = Err()
  loc_15E3ED6: Call 0.Method_arg_1C (var_8C)
  loc_15E3EE2: OnGoto
  loc_15E3EEC: CInt(var_8C)() = 
  loc_15E3EEF: () = 
  loc_15E3EF4: If  Then
  loc_15E3EFB:   Set var_88 = Me.TopCtrl1
  loc_15E3F01:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_15E3F16:   If ( = "Browse") Then
  loc_15E3F19:     Exit Sub
  loc_15E3F1A:   End If
  loc_15E3F25:   Set var_88 = Me.Txt
  loc_15E3F2B:   Call 0.Method_Cmd_Click0 (CInt(3))
  loc_15E3F54:   If (Proc_6_27_EA565C(var_E4, "Start Date") = 0) Then
  loc_15E3F57:     Exit Sub
  loc_15E3F58:   End If
  loc_15E3F63:   Set var_88 = Me.Txt
  loc_15E3F69:   Call 0.Method_Cmd_Click0 (CInt(&HA), var_E4)
  loc_15E3F92:   If (Proc_6_27_EA565C(var_E4, "End Date") = 0) Then
  loc_15E3F95:     Exit Sub
  loc_15E3F96:   End If
  loc_15E3FA4:   Set var_88 = Me.Txt
  loc_15E3FAA:   Call 0.Method_Cmd_Click0 (CInt(1), var_E4)
  loc_15E3FC9:   If (var_E4.Text <> vbNullString) Then
  loc_15E3FDA:     Set var_88 = Me.Txt
  loc_15E3FE0:     Call 0.Method_Cmd_Click0 (CInt(2), var_E4)
  loc_15E3FE8:     var_EC = var_E4.Text
  loc_15E3FFF:     If (var_EC <> vbNullString) Then
  loc_15E4009:       var_F0 = var_9C & "Where ItemCatCode='"
  loc_15E401A:       Set var_88 = Me.Txt
  loc_15E4020:       Call 0.Method_Cmd_Click0 (CInt(2), var_E4, var_EC)
  loc_15E4028:       var_F0 = var_E4.Tag
  loc_15E4049:       Set var_E8 = Me.Txt
  loc_15E404F:       Call 0.Method_Cmd_Click0 (CInt(1), var_F8)
  loc_15E4078:       Set var_108 = Me.Txt
  loc_15E407E:       Call 0.Method_Cmd_Click0 (CInt(0), var_10C)
  loc_15E4096:       var_9C = var_E4 & var_EC & "' And ItemGroup='" & var_F8.Tag & "' And RestCode='" & var_10C.Tag & "'"
  loc_15E40C0:     Else
  loc_15E40D8:       Set var_88 = Me.Txt
  loc_15E40DE:       Call 0.Method_Cmd_Click0 (CInt(1), var_E4)
  loc_15E4107:       Set var_E8 = Me.Txt
  loc_15E410D:       Call 0.Method_Cmd_Click0 (CInt(0), var_F8)
  loc_15E4125:       var_9C = var_9C & "Where ItemGroup='" & var_E4.Tag & "' And RestCode='" & var_F8.Tag & "'"
  loc_15E4142:     End If
  loc_15E4145:   Else
  loc_15E4153:     Set var_88 = Me.Txt
  loc_15E4159:     Call 0.Method_Cmd_Click0 (CInt(2), var_E4)
  loc_15E4178:     If (var_E4.Text <> vbNullString) Then
  loc_15E4193:       Set var_88 = Me.Txt
  loc_15E4199:       Call 0.Method_Cmd_Click0 (CInt(2), var_E4)
  loc_15E41C2:       Set var_E8 = Me.Txt
  loc_15E41C8:       Call 0.Method_Cmd_Click0 (CInt(0), var_F8)
  loc_15E41E0:       var_9C = var_9C & "Where ItemCatCode='" & var_E4.Tag & "' And RestCode='" & var_F8.Tag & "'"
  loc_15E4200:     Else
  loc_15E4211:       Set var_88 = Me.Txt
  loc_15E4217:       Call 0.Method_Cmd_Click0 (CInt(0), var_E4)
  loc_15E422F:       var_9C = "Where RestCode='" & var_E4.Tag & "'"
  loc_15E4240:     End If
  loc_15E4240:   End If
  loc_15E4253:   Me.FGrid.Rows = 1
  loc_15E425F:   Set var_88 = Me.TopCtrl1
  loc_15E4265:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_15E427A:   If ( = "Edit") Then
  loc_15E427D:     GoTo loc_15E4729
  loc_15E4280:   End If
  loc_15E4295:   var_F4 = "Select HappyHours.* From HappyHours Where ItemCode In (Select Code From ItemMast " & var_9C & " AND (LOGSITE_CODE='" & MemVar_1F92078
  loc_15E42AA:   var_138 = CVar(var_F4 & "' or LOGSITE_CODE='HO')) AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And (AppDate Between ") 'String
  loc_15E42BE:   Call 0.Method_Cmd_Click0 (CInt(3), var_E4)
  loc_15E42C6:   var_D0 = CVar(var_E4) 'Address
  loc_15E42CD:   Proc_6_7_F25D88(var_E0, var_D0)
  loc_15E42D5:   var_148 = var_138 & var_E0 
  loc_15E42DE:   var_158 = var_148 & " And " 
  loc_15E42ED:   Set var_E8 = Me.Txt
  loc_15E42F3:   Call 0.Method_Cmd_Click0 (CInt(&HA), var_F8)
  loc_15E42FB:   var_168 = CVar(var_F8) 'Address
  loc_15E4302:   Proc_6_7_F25D88(var_178, var_168)
  loc_15E4322:   Set var_108 = Me.Txt
  loc_15E4328:   Call 0.Method_Cmd_Click0 (CInt(3), var_10C)
  loc_15E4337:   Proc_6_7_F25D88(var_1B8, CVar(var_10C))
  loc_15E4357:   Set var_1EC = Me.Txt
  loc_15E435D:   Call 0.Method_Cmd_Click0 (CInt(&HA), var_1F0)
  loc_15E436C:   Proc_6_7_F25D88(var_210, CVar(var_1F0))
  loc_15E438F:   Set var_244 = Me.Txt
  loc_15E4395:   Call 0.Method_Cmd_Click0 (CInt(0), var_248)
  loc_15E43A8:   var_268 = var_158 & var_178 & " Or EndDate Between " & var_1B8 & " And " & var_210 & ") And isNull(Active,'')='Y' And RestCode='" & CVar(var_248.Tag) 
  loc_15E4416:   unk_4CA80E.Execute CStr(var_268 & "'"), var_D0, -1
  loc_15E4421:   Set var_AC = Me.Txt
  loc_15E443E:   If (var_AC.RecordCount > 0) Then
  loc_15E4463:     var_E4 = var_AC.Fields.Item("AppDate")
  loc_15E448E:     var_F8 = var_AC.Fields.Item("EndDate")
  loc_15E4496:     var_E0 = CVar(var_F8) 'Address
  loc_15E44D4:     var_104 = "In " & CStr(var_AC.RecordCount) & " Item discount is Already Applicable Between Date " & Proc_6_38_E68A98(CVar(var_E4)) & " And "
  loc_15E4529:     If (MsgBox(CVar(var_104 & Proc_6_38_E68A98(var_E0) & vbCrLf & "Do You Continue with rest of Items."), &H144, var_148, var_158, var_168) = 6) Then
  loc_15E4541:       var_F4 = "Select ItemCode From HappyHours Where ItemCode In (Select Code From ItemMast " & var_9C & " AND (LOGSITE_CODE='" & MemVar_1F92078
  loc_15E4556:       var_138 = CVar(var_F4 & "' or LOGSITE_CODE='HO')) AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And (AppDate Between ") 'String
  loc_15E4564:       Set var_88 = Me.Txt
  loc_15E456A:       Call 0.Method_Cmd_Click0 (CInt(3), var_E4)
  loc_15E4572:       var_D0 = CVar(var_E4) 'Address
  loc_15E4579:       Proc_6_7_F25D88(var_E0, var_D0)
  loc_15E4581:       var_148 = var_138 & var_E0 
  loc_15E4599:       Set var_E8 = Me.Txt
  loc_15E459F:       Call 0.Method_Cmd_Click0 (CInt(&HA), var_F8)
  loc_15E45AE:       Proc_6_7_F25D88(var_178, CVar(var_F8))
  loc_15E45CE:       Set var_108 = Me.Txt
  loc_15E45D4:       Call 0.Method_Cmd_Click0 (CInt(3), var_10C)
  loc_15E45E3:       Proc_6_7_F25D88(var_1B8, CVar(var_10C))
  loc_15E4603:       Set var_1EC = Me.Txt
  loc_15E4609:       Call 0.Method_Cmd_Click0 (CInt(&HA), var_1F0)
  loc_15E4618:       Proc_6_7_F25D88(var_210, CVar(var_1F0))
  loc_15E4629:       var_240 = var_148 & " And " & var_178 & " Or EndDate Between " & var_1B8 & " And " & var_210 & ") And isNull(Active,'')='Y' And RestCode='" 
  loc_15E463B:       Set var_244 = Me.Txt
  loc_15E4641:       Call 0.Method_Cmd_Click0 (CInt(0), var_248, var_104)
  loc_15E4649:       var_240 = var_248.Tag
  loc_15E46C7:       var_F0 = "Select DispCode,Code As ItemCode,Name As ItemName,ItemCatCode,ItemGroup From ItemMast " & var_9C & " And Code Not In ("
  loc_15E46E3:       var_104 = var_F0 & CStr(var_88 & CVar(var_104) & "'") & ") AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Code "
  loc_15E46EC:       unk_4CA80E.Execute var_104, var_D0, -1
  loc_15E46FD:       Set global_64 = var_88
  loc_15E471D:     Else
  loc_15E4722:       Set var_AC = Nothing
  loc_15E4725:       Exit Sub
  loc_15E4726:     End If
  loc_15E4726:     GoTo loc_15E4785
  loc_15E4729:     ' Referenced from: 15E427D
  loc_15E4729:   End If
  loc_15E473D:   var_EC = "Select DispCode,Code As ItemCode,Name As ItemName,ItemCatCode,ItemGroup From ItemMast " & var_9C
  loc_15E475B:   unk_4CA80E.Execute var_EC & " AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Code ", var_D0, -1
  loc_15E476C:   Set global_64 = var_88
  loc_15E4785:   ' Referenced from: 15E4726
  loc_15E47A9:   Call 0.Method_Cmd_Click0 (CInt(0), var_E4, var_EC, "Select ItemCode,Rate,AppDate From ItemRate Where RestCode='", var_D0)
  loc_15E47B1:   -1 = var_E4.Tag
  loc_15E47BA:   var_F0 = var_E8 & var_EC
  loc_15E47D8:   unk_4CA80E.Execute var_F0 & "' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By AppDate Desc,ItemCode ", Me.Txt, Me.Txt
  loc_15E47E3:   Set var_94 = var_E8
  loc_15E4801:   var_96 = 1
  loc_15E4818:   If (var_94.RecordCount <= 0) Then
  loc_15E4832:     If (Me.RecordCount > 0) Then
  loc_15E4835:       ' Referenced from: 15E4B31
  loc_15E4847:       If Not(Me.EOF) Then
  loc_15E484A:         var_C0 = vbNullString
  loc_15E4854:         Set var_88 = Me.FGrid
  loc_15E4869:         Set var_298 = Me.FGrid
  loc_15E4870:         var_C0 = CVar(CLng(var_96)) 'Long
  loc_15E4878:         var_1D8 = CVar(CLng(0)) 'Long
  loc_15E4882:         var_D0 = CVar(CStr(var_96)) 'String
  loc_15E4889:         LateIdCallSt
  loc_15E48D0:         var_E0 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DispCode")), CVar(CLng(1)), CVar(CLng(var_96)), var_298, CVar(Me.Fields.Item("DispCode")))) 'String
  loc_15E48D7:         LateIdCallSt
  loc_15E48ED:         var_128 = CVar(CLng(var_96)) 'Long
  loc_15E48F5:         var_230 = CVar(CLng(2)) 'Long
  loc_15E4928:         var_E0 = CVar(CStr(Me.Fields.Item("ItemCode").Value)) 'String
  loc_15E492F:         LateIdCallSt
  loc_15E4949:         var_128 = CVar(CLng(var_96)) 'Long
  loc_15E4951:         var_230 = CVar(CLng(3)) 'Long
  loc_15E4973:         var_E4 = Me.Fields.Item("ItemName")
  loc_15E4984:         var_E0 = CVar(CStr(var_E4.Value)) 'String
  loc_15E498B:         LateIdCallSt
  loc_15E49BD:         LateIdCallSt
  loc_15E49D6:         Set var_88 = Me.Txt
  loc_15E49DC:         Call 0.Method_Cmd_Click0 (CInt(4), var_E4, var_EC, var_298, CVar(CStr(0)), CVar(CLng(4)), CVar(CLng(var_96)))
  loc_15E49E4:         var_298 = var_E4.Text
  loc_15E49FB:         If (var_EC = "Amount") Then
  loc_15E49FE:           var_C0 = 0
  loc_15E4A0A:           var_1D8 = CVar(CLng(5)) 'Long
  loc_15E4A18:           LateIdCallSt
  loc_15E4A24:           var_C0 = CVar(CLng(var_96)) 'Long
  loc_15E4A3F:           Set var_88 = Me.Txt
  loc_15E4A45:           Call 0.Method_Cmd_Click0 (CInt(5), var_E4, var_EC, CVar(CLng(5)), var_C0, var_298, "Discount Amount")
  loc_15E4A4D:           var_1D8 = var_E4.Text
  loc_15E4A55:           var_D0 = CVar(var_EC) 'String
  loc_15E4A5C:           LateIdCallSt
  loc_15E4A71:         Else
  loc_15E4A7F:           Set var_88 = Me.Txt
  loc_15E4A85:           Call 0.Method_Cmd_Click0 (CInt(4), var_E4, var_EC, var_298, var_D0, var_C0)
  loc_15E4A8D:           var_E0 = var_E4.Text
  loc_15E4AA4:           If (var_EC = "Percent") Then
  loc_15E4AA7:             var_C0 = 0
  loc_15E4AB3:             var_1D8 = CVar(CLng(5)) 'Long
  loc_15E4AC1:             LateIdCallSt
  loc_15E4AE8:             Set var_88 = Me.Txt
  loc_15E4AEE:             Call 0.Method_Cmd_Click0 (CInt(5), var_E4, var_EC, CVar(CLng(5)), CVar(CLng(var_96)), var_298, "Discount Percent")
  loc_15E4AF6:             var_1D8 = var_E4.Text
  loc_15E4AFE:             var_D0 = CVar(var_EC) 'String
  loc_15E4B05:             LateIdCallSt
  loc_15E4B17:           End If
  loc_15E4B17:         End If
  loc_15E4B19:         Set var_298 = Nothing 
  loc_15E4B23:         var_96 = (var_96 + 1)
  loc_15E4B2C:         Me.MoveNext
  loc_15E4B31:         GoTo loc_15E4835
  loc_15E4B34:       End If
  loc_15E4B34:     End If
  loc_15E4B34:     GoTo loc_15E5023
  loc_15E4B37:     ' Referenced from: 15E5020
  loc_15E4B37:   End If
  loc_15E4B49:   If Not(Me.EOF) Then
  loc_15E4B4C:     var_C0 = vbNullString
  loc_15E4B56:     Set var_88 = Me.FGrid
  loc_15E4B6B:     Set var_2AC = Me.FGrid
  loc_15E4B72:     var_C0 = CVar(CLng(var_96)) 'Long
  loc_15E4B84:     var_D0 = CVar(CStr(var_96)) 'String
  loc_15E4B8B:     LateIdCallSt
  loc_15E4BAA:     var_C0 = "DispCode"
  loc_15E4BD2:     var_E0 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_C0)), CVar(CLng(1)), CVar(CLng(var_96)), var_2AC, CVar(Me.Fields.Item(var_C0)), CVar(CLng(0)), var_C0)) 'String
  loc_15E4BD9:     LateIdCallSt
  loc_15E4BEF:     var_128 = CVar(CLng(var_96)) 'Long
  loc_15E4BF7:     var_230 = CVar(CLng(2)) 'Long
  loc_15E4C2A:     var_E0 = CVar(CStr(Me.Fields.Item("ItemCode").Value)) 'String
  loc_15E4C31:     LateIdCallSt
  loc_15E4C4B:     var_128 = CVar(CLng(var_96)) 'Long
  loc_15E4C86:     var_E0 = CVar(CStr(Me.Fields.Item("ItemName").Value)) 'String
  loc_15E4C8D:     LateIdCallSt
  loc_15E4CA6:     var_94.MoveFirst
  loc_15E4CDB:     var_E4 = Me.Fields.Item("ItemCode")
  loc_15E4CEB:     var_E0 = "ItemCode='" & var_E4.Value 
  loc_15E4CF4:     var_138 = var_E0 & "'" 
  loc_15E4CF8:     var_EC = CStr(var_138)
  loc_15E4CFF:     var_94.Find var_EC, 0, 1
  loc_15E4D3A:     If ((var_94.EOF = 0) And (var_94.BOF = 0)) Then
  loc_15E4D4B:       Set var_88 = Me.Txt
  loc_15E4D51:       Call 0.Method_Cmd_Click0 (CInt(4), var_E4, var_EC, CVar(CLng(3)), var_2AC, var_E0)
  loc_15E4D59:       var_230 = var_E4.Text
  loc_15E4D70:       If (var_EC = "Amount") Then
  loc_15E4D77:         var_128 = CVar(CLng(var_96)) 'Long
  loc_15E4D7F:         var_230 = CVar(CLng(4)) 'Long
  loc_15E4DAF:         var_E0 = CVar(CStr(var_94.Fields.Item("Rate").Value)) 'String
  loc_15E4DB6:         LateIdCallSt
  loc_15E4DCF:       Else
  loc_15E4DD3:         var_128 = CVar(CLng(var_96)) 'Long
  loc_15E4DDB:         var_230 = CVar(CLng(4)) 'Long
  loc_15E4DFA:         var_E4 = var_94.Fields.Item("Rate")
  loc_15E4E0B:         var_E0 = CVar(CStr(var_E4.Value)) 'String
  loc_15E4E12:         LateIdCallSt
  loc_15E4E28:       End If
  loc_15E4E2B:     Else
  loc_15E4E2F:       var_C0 = CVar(CLng(var_96)) 'Long
  loc_15E4E37:       var_1D8 = CVar(CLng(4)) 'Long
  loc_15E4E40:       var_D0 = CVar(CStr(0)) 'String
  loc_15E4E47:       LateIdCallSt
  loc_15E4E52:     End If
  loc_15E4E60:     Set var_88 = Me.Txt
  loc_15E4E66:     Call 0.Method_Cmd_Click0 (CInt(4), var_E4, var_EC, var_2AC, var_D0, var_1D8, var_C0)
  loc_15E4E6E:     var_2AC = var_E4.Text
  loc_15E4E85:     If (var_EC = "Amount") Then
  loc_15E4E88:       var_C0 = 0
  loc_15E4E94:       var_1D8 = CVar(CLng(5)) 'Long
  loc_15E4EA2:       LateIdCallSt
  loc_15E4EAE:       var_C0 = CVar(CLng(var_96)) 'Long
  loc_15E4EC9:       Set var_88 = Me.Txt
  loc_15E4ECF:       Call 0.Method_Cmd_Click0 (CInt(5), var_E4, var_EC, CVar(CLng(5)), var_C0, var_2AC, "Discount Amount")
  loc_15E4ED7:       var_1D8 = var_E4.Text
  loc_15E4EDF:       var_D0 = CVar(var_EC) 'String
  loc_15E4EE6:       LateIdCallSt
  loc_15E4EFB:     Else
  loc_15E4F09:       Set var_88 = Me.Txt
  loc_15E4F0F:       Call 0.Method_Cmd_Click0 (CInt(4), var_E4, var_EC, var_2AC, var_D0, var_C0)
  loc_15E4F17:       var_E0 = var_E4.Text
  loc_15E4F2E:       If (var_EC = "Percent") Then
  loc_15E4F31:         var_C0 = 0
  loc_15E4F3D:         var_1D8 = CVar(CLng(5)) 'Long
  loc_15E4F4B:         LateIdCallSt
  loc_15E4F72:         Set var_88 = Me.Txt
  loc_15E4F78:         Call 0.Method_Cmd_Click0 (CInt(5), var_E4, var_EC, CVar(CLng(5)), CVar(CLng(var_96)), var_2AC, "Discount Percent")
  loc_15E4F80:         var_1D8 = var_E4.Text
  loc_15E4F88:         var_D0 = CVar(var_EC) 'String
  loc_15E4F8F:         LateIdCallSt
  loc_15E4FA1:       End If
  loc_15E4FA1:     End If
  loc_15E4FBC:     If (Me.Check1.Value = 1) Then
  loc_15E4FC3:       var_C0 = CVar(CLng(var_96)) 'Long
  loc_15E4FCB:       var_1D8 = CVar(CLng(6)) 'Long
  loc_15E4FD0:       var_278 = "Yes"
  loc_15E4FD9:       LateIdCallSt
  loc_15E4FE4:     Else
  loc_15E4FE8:       var_C0 = CVar(CLng(var_96)) 'Long
  loc_15E4FF0:       var_1D8 = CVar(CLng(6)) 'Long
  loc_15E4FF5:       var_278 = "No"
  loc_15E4FFE:       LateIdCallSt
  loc_15E5006:     End If
  loc_15E5008:     Set var_2AC = Nothing 
  loc_15E5012:     var_96 = (var_96 + 1)
  loc_15E501B:     Me.MoveNext
  loc_15E5020:     GoTo loc_15E4B37
  loc_15E5023:     ' Referenced from: 15E4B34
  loc_15E5023:   End If
  loc_15E502C:   var_8C = Me.RecordCount
  loc_15E503A:   If (var_8C > 0) Then
  loc_15E5050:     Me.FGrid.FixedRows = 1
  loc_15E5058:   End If
  loc_15E505E:   If (var_96 = 1) Then
  loc_15E5074:     Me.FGrid.Rows = 1
  loc_15E5091:     var_E0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_15E5099:     Set var_E4 = Me.FGrid
  loc_15E50C8:     Me.FGrid.FixedRows = 1
  loc_15E50DE:     var_C0 = "* Nothig To Examine *"
  loc_15E50E9:     MsgBox(var_C0, 0, var_E0, var_138, var_148)
  loc_15E5104:     Set var_88 = Me.Cmd
  loc_15E510A:     Call 0.Method_Cmd_Click0 (1, var_E4, 0, FGrid.DispID_10000, var_E0, var_96, var_2AC)
  loc_15E5112:     var_E4.Enabled = var_278
  loc_15E5121:   Else
  loc_15E512C:     Set var_88 = Me.Cmd
  loc_15E5132:     Call 0.Method_Cmd_Click0 (1, var_E4, &HFF, var_1D8, var_C0)
  loc_15E513A:     var_E4.Enabled = var_2AC
  loc_15E5146:   End If
  loc_15E5149: Else
  loc_15E514F:   If (var_AE = 1) Then
  loc_15E5152:     Call Proc_180_56_1798D60(var_278, var_1D8)
  loc_15E515A:   Else
  loc_15E5160:     If (var_AE = 2) Then
  loc_15E5170:       Me.Global.Unload Me
  loc_15E5178:     End If
  loc_15E5178:   End If
  loc_15E5178: End If
  loc_15E5178: Exit Sub
  loc_15E5181: Set var_88 = Err()
  loc_15E5187: Call 0.Method_arg_1C (var_8C)
  loc_15E5194: Set var_E4 = Err()
  loc_15E519A: Call 0.Method_arg_2C (var_F0)
  loc_15E51CB: MsgBox(CVar(CStr(var_8C) & " : " & var_F0), &H10, "Message ", var_138, var_148)
  loc_15E51EB: Exit Sub
End Sub

Private Sub Check1_Click() 'F191C0
  'Data Table: 4CA7EC
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_F190DB: If (Me.Check1.Value = 1) Then
  loc_F19103:   For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F1910D:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_F19115:     var_D4 = CVar(CLng(6)) 'Long
  loc_F1911A:     var_F4 = "Yes"
  loc_F19124:     Set var_8C = Me.FGrid
  loc_F1912A:     LateIdCallSt
  loc_F19138:   Next var_A4 'Integer
  loc_F19140: Else
  loc_F1915B:   If (Me.Check1.Value = 0) Then
  loc_F19183:     For var_108 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_86 = var_108 'Integer
  loc_F1918D:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_F19195:       var_D4 = CVar(CLng(6)) 'Long
  loc_F1919A:       var_F4 = "No"
  loc_F191A4:       Set var_8C = Me.FGrid
  loc_F191AA:       LateIdCallSt
  loc_F191B8:     Next var_108 'Integer
  loc_F191BD:   End If
  loc_F191BD: End If
  loc_F191BD: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1393134
  'Data Table: 4CA7EC
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  Dim var_A0 As String
  loc_139285E: Set var_88 = Me.Txt
  loc_1392864: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1392872: Proc_6_74_E226B0(var_8C)
  loc_139287E: Call Proc_180_54_EF6F60(var_8C)
  loc_1392886: var_92 = Index
  loc_1392891: If (var_92 = CInt(0)) Then
  loc_13928AB:   If (Me.RecordCount > 0) Then
  loc_13928B9:     Set var_8C = Me.FGPoint
  loc_13928D1:     Proc_6_137_1193554(Me.DGRest, global_60, Index)
  loc_13928DF:   End If
  loc_139292D:   Set var_88 = Me.Txt
  loc_1392933:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_139293B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1392953:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1392956:     Exit Sub
  loc_1392957:   End If
  loc_1392964:   Set var_88 = Me.Txt
  loc_139296A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1392972:   var_A0 = var_8C.Text
  loc_139297A:   var_D4 = CVar(var_A0) 'String
  loc_13929BF:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_13929C8:     Me.MoveFirst
  loc_13929ED:     Set var_88 = Me.Txt
  loc_13929F3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_13929FB:     0 = var_8C.Text
  loc_1392A09:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_1392A1F:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_1392A37:   End If
  loc_1392A3A: Else
  loc_1392A42:   If (var_92 = CInt(2)) Then
  loc_1392A54:     Me.Filter = 0
  loc_1392A6A:     Set var_88 = Me.Txt
  loc_1392A70:     Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_1392A78:     var_A0 = var_8C.Tag
  loc_1392A92:     Me.Filter = CVar("RestCode='" & var_A0 & "'")
  loc_1392ABF:     If (Me.RecordCount > 0) Then
  loc_1392ACD:       Set var_8C = Me.FGPoint
  loc_1392AE5:       Proc_6_137_1193554(Me.DGItemCat, global_52)
  loc_1392AF3:     End If
  loc_1392B41:     Set var_88 = Me.Txt
  loc_1392B47:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1392B4F:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1392B67:     If (Index Or (var_A0 = vbNullString)) Then
  loc_1392B6A:       Exit Sub
  loc_1392B6B:     End If
  loc_1392B78:     Set var_88 = Me.Txt
  loc_1392B7E:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1392B86:     var_A0 = var_8C.Text
  loc_1392B8E:     var_D4 = CVar(var_A0) 'String
  loc_1392BD3:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1392BDC:       Me.MoveFirst
  loc_1392C01:       Set var_88 = Me.Txt
  loc_1392C07:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1392C0F:       0 = var_8C.Text
  loc_1392C1D:       Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_1392C33:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1392C4B:     End If
  loc_1392C4E:   Else
  loc_1392C56:     If (var_92 = CInt(1)) Then
  loc_1392C68:       Me.Filter = 0
  loc_1392C7E:       Set var_88 = Me.Txt
  loc_1392C84:       Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_1392C8C:       var_A0 = var_8C.Tag
  loc_1392CA6:       Me.Filter = CVar("RestCode='" & var_A0 & "'")
  loc_1392CD3:       If (Me.RecordCount > 0) Then
  loc_1392CE1:         Set var_8C = Me.FGPoint
  loc_1392CF9:         Proc_6_137_1193554(Me.DGItemGrp, global_56)
  loc_1392D07:       End If
  loc_1392D55:       Set var_88 = Me.Txt
  loc_1392D5B:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1392D63:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1392D7B:       If (Index Or (var_A0 = vbNullString)) Then
  loc_1392D7E:         Exit Sub
  loc_1392D7F:       End If
  loc_1392D8C:       Set var_88 = Me.Txt
  loc_1392D92:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1392D9A:       var_A0 = var_8C.Text
  loc_1392DA2:       var_D4 = CVar(var_A0) 'String
  loc_1392DC3:       var_B4 = Me.Fields.Item("Name")
  loc_1392DE7:       If CBool(var_D4 <> var_B4.Value) Then
  loc_1392DF0:         Me.MoveFirst
  loc_1392E15:         Set var_88 = Me.Txt
  loc_1392E1B:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1392E23:         0 = var_8C.Text
  loc_1392E31:         Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_1392E47:         Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1392E5F:       End If
  loc_1392E62:     Else
  loc_1392E6A:       If (var_92 = CInt(6)) Then
  loc_1392E7A:         Set var_88 = Me.Txt
  loc_1392E80:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1392E88:         var_8C.Text = vbNullString
  loc_1392ECE:         Set var_88 = Me.Txt
  loc_1392ED4:         Call 0.Method_Txt_GotFocus0 (CInt(6), var_8C, CStr(Format(Time, "HH")))
  loc_1392EDC:         var_8C.Text = 1
  loc_1392EF7:       Else
  loc_1392EFF:         If (var_92 = CInt(8)) Then
  loc_1392F0F:           Set var_88 = Me.Txt
  loc_1392F15:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1392F1D:           var_8C.Text = vbNullString
  loc_1392F63:           Set var_88 = Me.Txt
  loc_1392F69:           Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C, CStr(Format(Time, "HH")))
  loc_1392F71:           var_8C.Text = 1
  loc_1392F8C:         Else
  loc_1392F94:           If (var_92 = CInt(7)) Then
  loc_1392FA4:             Set var_88 = Me.Txt
  loc_1392FAA:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, vbNullString)
  loc_1392FB2:             var_8C.Text = 1
  loc_1392FF8:             Set var_88 = Me.Txt
  loc_1392FFE:             Call 0.Method_Txt_GotFocus0 (CInt(7), var_8C, CStr(Format(Time, "NN")))
  loc_1393006:             var_8C.Text = 1
  loc_1393021:           Else
  loc_1393029:             If (var_92 = CInt(9)) Then
  loc_1393039:               Set var_88 = Me.Txt
  loc_139303F:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, vbNullString)
  loc_1393047:               var_8C.Text = 1
  loc_139307E:               var_A0 = CStr(Format(Time, "NN"))
  loc_139308D:               Set var_88 = Me.Txt
  loc_1393093:               Call 0.Method_Txt_GotFocus0 (CInt(9), var_8C, var_A0)
  loc_139309B:               var_8C.Text = 1
  loc_13930B6:             Else
  loc_13930BE:               If Not (var_92 = CInt(6)) Then
  loc_13930C9:                 If Not (var_92 = CInt(8)) Then
  loc_13930D4:                   If Not (var_92 = CInt(7)) Then
  loc_13930DF:                     If (var_92 = CInt(9)) Then
  loc_13930E2:                     End If
  loc_13930E2:                   End If
  loc_13930E2:                 End If
  loc_13930EF:                 Set var_88 = Me.Txt
  loc_13930F5:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13930FD:                 1 = var_8C.Text
  loc_139310F:                 Set var_90 = Me.Txt
  loc_1393115:                 Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_139311D:                 var_B4.SelText = var_A0
  loc_1393130:               End If
  loc_1393130:             End If
  loc_1393130:           End If
  loc_1393130:         End If
  loc_1393130:       End If
  loc_1393130:     End If
  loc_1393130:   End If
  loc_1393130: End If
  loc_1393130: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '117ADD0
  'Data Table: 4CA7EC
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  loc_117AA0E: If (CLng(Shift) = &H1B) Then
  loc_117AA11:   Call Proc_180_54_EF6F60()
  loc_117AA16:   Exit Sub
  loc_117AA17: End If
  loc_117AA1A: var_86 = KeyCode
  loc_117AA25: If (var_86 = CInt(0)) Then
  loc_117AA45:   Set var_9C = Me.FGPoint
  loc_117AA50:   Set var_98 = Nothing
  loc_117AA7E:   Proc_6_69_134A198(Me.DGRest, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_117AAED:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_117AB13:     Proc_6_138_106D6F8(Me.DGRest, global_60, KeyCode, Me.FGPoint, 1)
  loc_117AB21:   End If
  loc_117AB24: Else
  loc_117AB2C:   If (var_86 = CInt(2)) Then
  loc_117AB57:     Set var_98 = Nothing
  loc_117AB85:     Proc_6_69_134A198(Me.DGItemCat, Me.Txt, KeyCode, global_52, Shift, 0, 1)
  loc_117ABF4:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_117ABFB:       Set var_98 = Me.DGItemCat
  loc_117AC1A:       Proc_6_138_106D6F8(var_98, global_52, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_117AC28:     End If
  loc_117AC2B:   Else
  loc_117AC33:     If (var_86 = CInt(1)) Then
  loc_117AC53:       Set var_9C = Me.FGPoint
  loc_117AC8C:       Proc_6_69_134A198(Me.DGItemGrp, Me.Txt, KeyCode, global_56, Shift, 0, 1, Nothing)
  loc_117ACFB:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_117AD21:         Proc_6_138_106D6F8(Me.DGItemGrp, global_56, KeyCode, Me.FGPoint, var_9C, 0)
  loc_117AD2F:       End If
  loc_117AD2F:     End If
  loc_117AD2F:   End If
  loc_117AD2F: End If
  loc_117AD60: Set var_98 = Me.DGRest
  loc_117AD85: If (((CBool(Me.DGItemCat.Visible) = 0) And (CBool(Me.DGItemGrp.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_117AD9B:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_117ADA4:     Proc_6_76_E52838(Shift, arg_14, 0, var_98)
  loc_117ADA9:   End If
  loc_117ADBE:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_117ADC7:     Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_117ADCC:   End If
  loc_117ADCC: End If
  loc_117ADCC: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '11125A8
  'Data Table: 4CA7EC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_111225B: Proc_6_58_E054C0(arg_10)
  loc_1112266: Proc_6_133_E7EF78(var_94)
  loc_111226F: arg_10 = CInt(var_94)
  loc_1112278: var_96 = KeyAscii
  loc_1112283: If (var_96 = CInt(0)) Then
  loc_11122A2:   If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_11122CF:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_1112301:     Proc_6_138_106D6F8(Me.DGRest, global_60, KeyAscii, Me.FGPoint)
  loc_111230F:   End If
  loc_1112312: Else
  loc_111231A:   If (var_96 = CInt(2)) Then
  loc_1112339:     If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_1112366:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_52, arg_10, "Name")
  loc_1112398:       Proc_6_138_106D6F8(Me.DGItemCat, global_52, KeyAscii, Me.FGPoint, 0)
  loc_11123A6:     End If
  loc_11123A9:   Else
  loc_11123B1:     If (var_96 = CInt(1)) Then
  loc_11123D0:       If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_11123FD:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56, arg_10, "Name")
  loc_1112417:         Set var_A8 = Me.FGPoint
  loc_111242F:         Proc_6_138_106D6F8(Me.DGItemGrp, global_56, KeyAscii, var_A8, 0)
  loc_111243D:       End If
  loc_1112440:     Else
  loc_1112448:       If (var_96 = CInt(4)) Then
  loc_1112474:         If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_1112484:           Set var_9C = Me.Txt
  loc_111248A:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Amount", 0)
  loc_1112492:           var_A8.Text = var_96
  loc_11124A1:         Else
  loc_11124CA:           If (Ucase(Chr(CLng(arg_10))) = "P") Then
  loc_11124DA:             Set var_9C = Me.Txt
  loc_11124E0:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Percent")
  loc_11124E8:             var_A8.Text = arg_10
  loc_11124F4:           End If
  loc_11124F4:         End If
  loc_11124F6:         arg_10 = 0
  loc_11124FC:       Else
  loc_1112504:         If (var_96 = CInt(5)) Then
  loc_1112511:           Set var_9C = Me.Txt
  loc_1112517:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_1112532:           Proc_6_42_129A86C(var_A8, arg_10, 8)
  loc_1112541:         Else
  loc_1112549:           If Not (var_96 = CInt(6)) Then
  loc_1112554:             If Not (var_96 = CInt(7)) Then
  loc_111255F:               If Not (var_96 = CInt(8)) Then
  loc_111256A:                 If (var_96 = CInt(9)) Then
  loc_111256D:                 End If
  loc_111256D:               End If
  loc_111256D:             End If
  loc_1112577:             Set var_9C = Me.Txt
  loc_111257D:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 2)
  loc_1112598:             Proc_6_42_129A86C(var_A8, arg_10, 2)
  loc_11125A4:           End If
  loc_11125A4:         End If
  loc_11125A4:       End If
  loc_11125A4:     End If
  loc_11125A4:   End If
  loc_11125A4: End If
  loc_11125A4: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A98C
  'Data Table: 4CA7EC
  loc_E4A96A: Set var_88 = Me.Txt
  loc_E4A970: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A97E: Proc_6_73_E22704(var_8C)
  loc_E4A98A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13CADA8
  'Data Table: 4CA7EC
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_94 As String
  Dim var_A0 As TextBox
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_9C As TextBox
  loc_13CA417: var_86 = Cancel
  loc_13CA422: If Not (var_86 = CInt(3)) Then
  loc_13CA42D:   If (var_86 = CInt(&HA)) Then
  loc_13CA430:   End If
  loc_13CA43D:   Set var_8C = Me.Txt
  loc_13CA443:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CA462:   If (var_90.Text <> vbNullString) Then
  loc_13CA46F:     Set var_8C = Me.Txt
  loc_13CA475:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CA495:     Set var_9C = Me.Txt
  loc_13CA49B:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_13CA4A3:     var_A0.Text = Proc_6_33_1512840(var_90)
  loc_13CA4B9:   Else
  loc_13CA4CB:     Set var_8C = Me.Txt
  loc_13CA4D1:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CA4D9:     var_90.Text = CStr(MemVar_1F920EC)
  loc_13CA4E8:   End If
  loc_13CA4EB: Else
  loc_13CA4F3:   If (var_86 = CInt(0)) Then
  loc_13CA501:     Set var_8C = Me.Txt
  loc_13CA507:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_13CA50F:     var_94 = "Rest Name"
  loc_13CA530:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_13CA535:       arg_10 = &HFF
  loc_13CA538:       Exit Sub
  loc_13CA539:     End If
  loc_13CA587:     Set var_8C = Me.Txt
  loc_13CA58D:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CA595:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_13CA5AD:     If (arg_10 Or (var_94 = vbNullString)) Then
  loc_13CA5BD:       Set var_8C = Me.Txt
  loc_13CA5C3:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CA5CB:       var_90.Text = vbNullString
  loc_13CA5E4:       Set var_8C = Me.Txt
  loc_13CA5EA:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CA5F2:       var_90.Tag = vbNullString
  loc_13CA601:     Else
  loc_13CA63C:       Set var_98 = Me.Txt
  loc_13CA642:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_13CA64A:       var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13CA67D:       var_90 = Me.Fields.Item("Code")
  loc_13CA68E:       var_94 = CStr(var_90.Value)
  loc_13CA69B:       Set var_98 = Me.Txt
  loc_13CA6A1:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_13CA6A9:       var_9C.Tag = var_94
  loc_13CA6BF:     End If
  loc_13CA6C2:   Else
  loc_13CA6CA:     If (var_86 = CInt(2)) Then
  loc_13CA71B:       Set var_8C = Me.Txt
  loc_13CA721:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CA729:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_13CA741:       If (var_86 Or (var_94 = vbNullString)) Then
  loc_13CA751:         Set var_8C = Me.Txt
  loc_13CA757:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CA75F:         var_90.Text = vbNullString
  loc_13CA778:         Set var_8C = Me.Txt
  loc_13CA77E:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CA786:         var_90.Tag = vbNullString
  loc_13CA795:       Else
  loc_13CA7D0:         Set var_98 = Me.Txt
  loc_13CA7D6:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_13CA7DE:         var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13CA811:         var_90 = Me.Fields.Item("Code")
  loc_13CA82F:         Set var_98 = Me.Txt
  loc_13CA835:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_13CA83D:         var_9C.Tag = CStr(var_90.Value)
  loc_13CA853:       End If
  loc_13CA856:     Else
  loc_13CA85E:       If (var_86 = CInt(1)) Then
  loc_13CA8AF:         Set var_8C = Me.Txt
  loc_13CA8B5:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CA8D5:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_13CA8E5:           Set var_8C = Me.Txt
  loc_13CA8EB:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CA8F3:           var_90.Text = vbNullString
  loc_13CA90C:           Set var_8C = Me.Txt
  loc_13CA912:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CA91A:           var_90.Tag = vbNullString
  loc_13CA929:         Else
  loc_13CA964:           Set var_98 = Me.Txt
  loc_13CA96A:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_13CA972:           var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13CA9A5:           var_90 = Me.Fields.Item("Code")
  loc_13CA9C3:           Set var_98 = Me.Txt
  loc_13CA9C9:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_13CA9D1:           var_9C.Tag = CStr(var_90.Value)
  loc_13CA9E7:         End If
  loc_13CA9EA:       Else
  loc_13CA9F2:         If (var_86 = CInt(4)) Then
  loc_13CA9FF:           Set var_8C = Me.Txt
  loc_13CAA05:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_13CAA40:           If (Ucase(Left(CVar(var_90), 1)) = "P") Then
  loc_13CAA50:             Set var_8C = Me.Txt
  loc_13CAA56:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CAA5E:             var_90.Text = "Percent"
  loc_13CAA6D:           Else
  loc_13CAA7A:             Set var_8C = Me.Txt
  loc_13CAA80:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CAA88:             var_90.Text = "Amount"
  loc_13CAA94:           End If
  loc_13CAA97:         Else
  loc_13CAA9F:           If (var_86 = CInt(5)) Then
  loc_13CAAAC:             Set var_8C = Me.Txt
  loc_13CAAB2:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13CAADE:             var_94 = CStr(Format(CVar(var_90), "0.00"))
  loc_13CAAEC:             Set var_98 = Me.Txt
  loc_13CAAF2:             Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_94)
  loc_13CAAFA:             var_9C.Text = 1
  loc_13CAB17:           Else
  loc_13CAB1F:             If Not (var_86 = CInt(6)) Then
  loc_13CAB2A:               If (var_86 = CInt(8)) Then
  loc_13CAB2D:               End If
  loc_13CAB3A:               Set var_8C = Me.Txt
  loc_13CAB40:               Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CAB48:               1 = var_90.Text
  loc_13CAB5F:               If (var_94 = vbNullString) Then
  loc_13CAB8D:                 var_94 = CStr(Format(Time, "HH"))
  loc_13CAB9B:                 Set var_8C = Me.Txt
  loc_13CABA1:                 Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CABA9:                 var_90.Text = 1
  loc_13CABC1:                 Exit Sub
  loc_13CABC2:               End If
  loc_13CABCF:               Set var_8C = Me.Txt
  loc_13CABD5:               Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CABDD:               1 = var_90.Text
  loc_13CABF9:               If (CDbl(Val(var_94)) > CDbl(&H18)) Then
  loc_13CAC27:                 var_94 = CStr(Format(Time, "HH"))
  loc_13CAC35:                 Set var_8C = Me.Txt
  loc_13CAC3B:                 Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CAC43:                 var_90.Text = 1
  loc_13CAC5B:                 Exit Sub
  loc_13CAC5C:               End If
  loc_13CAC5F:             Else
  loc_13CAC67:               If Not (var_86 = CInt(7)) Then
  loc_13CAC72:                 If (var_86 = CInt(9)) Then
  loc_13CAC75:                 End If
  loc_13CAC82:                 Set var_8C = Me.Txt
  loc_13CAC88:                 Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CAC90:                 1 = var_90.Text
  loc_13CACA7:                 If (var_94 = vbNullString) Then
  loc_13CACD5:                   var_94 = CStr(Format(Time, "NN"))
  loc_13CACE3:                   Set var_8C = Me.Txt
  loc_13CACE9:                   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CACF1:                   var_90.Text = 1
  loc_13CAD09:                   Exit Sub
  loc_13CAD0A:                 End If
  loc_13CAD17:                 Set var_8C = Me.Txt
  loc_13CAD1D:                 Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_13CAD25:                 1 = var_90.Text
  loc_13CAD41:                 If (CDbl(Val(var_94)) > CDbl(&H3C)) Then
  loc_13CAD7D:                   Set var_8C = Me.Txt
  loc_13CAD83:                   Call 0.Method_Txt_Validate0 (Cancel, var_90, CStr(Format(Time, "NN")))
  loc_13CAD8B:                   var_90.Text = 1
  loc_13CADA3:                   Exit Sub
  loc_13CADA4:                 End If
  loc_13CADA4:               End If
  loc_13CADA4:             End If
  loc_13CADA4:           End If
  loc_13CADA4:         End If
  loc_13CADA4:       End If
  loc_13CADA4:     End If
  loc_13CADA4:   End If
  loc_13CADA4: End If
  loc_13CADA4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E4394C
  'Data Table: 4CA7EC
  Dim var_8C As TextBox
  loc_E4392B: Set var_88 = Me.TxtGrid
  loc_E43931: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E43939: var_8C.Visible = False
  loc_E43945: Call Proc_180_54_EF6F60()
  loc_E4394A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'DFCC70
  'Data Table: 4CA7EC
  loc_DFCC6C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'DFB750
  'Data Table: 4CA7EC
  loc_DFB74C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE5DC
  'Data Table: 4CA7EC
  loc_DFE5D4: Call Proc_180_50_DFCFB0()
  loc_DFE5D9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '102F550
  'Data Table: 4CA7EC
  Dim var_B4 As MSHFlexGrid
  Dim var_9C As String
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_102F388: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_102F393:   var_9C = "+{Tab}"
  loc_102F399:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_102F3A3:   Cancel = 0
  loc_102F3A9: Else
  loc_102F400:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_102F403:   End If
  loc_102F403: End If
  loc_102F409: global_80 = Cancel
  loc_102F42F: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_102F453: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_102F469:   var_DC = CLng(Me.FGrid.Col)
  loc_102F479:   If (var_DC = CLng(4)) Then
  loc_102F48F:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102F4A7:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_102F4AC:     var_11C = vbNullString
  loc_102F4B6:     Set var_B4 = Me.FGrid
  loc_102F4BC:     LateIdCallSt
  loc_102F4D7:   Else
  loc_102F4DE:     If (var_DC = CLng(5)) Then
  loc_102F4F4:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102F50C:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_102F511:       var_11C = vbNullString
  loc_102F51B:       Set var_B4 = Me.FGrid
  loc_102F521:       LateIdCallSt
  loc_102F539:     End If
  loc_102F539:   End If
  loc_102F539: End If
  loc_102F53F: If (Cancel = &HD) Then
  loc_102F547:   global_82 = 0
  loc_102F54A: End If
  loc_102F54C: Cancel = 0
  loc_102F54F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10208
  'Data Table: 4CA7EC
  loc_E101F9: Call FGrid_UnknownEvent_C()
  loc_E10203: global_82 = 0
  loc_E10206: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'FC379C
  'Data Table: 4CA7EC
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_B0 As String
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_FC360B: var_9C = CLng(Me.FGrid.Col)
  loc_FC361B: If Not (var_9C = CLng(4)) Then
  loc_FC3625:   If Not (var_9C = CLng(5)) Then
  loc_FC362F:     If (var_9C = CLng(6)) Then
  loc_FC3632:     End If
  loc_FC3632:   End If
  loc_FC3636:   Set var_C4 = Me.FGrid
  loc_FC365A:   var_B0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_FC3687:   Set var_B4 = var_C4
  loc_FC3699:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_FC36C1:   Set var_88 = Me.TxtGrid
  loc_FC36C7:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_B0, Asc(var_B0))
  loc_FC36CF:   0 = var_B4.Text
  loc_FC36E8:   If (Len(var_B0) <= 1) Then
  loc_FC36F7:     Set var_88 = Me.TxtGrid
  loc_FC36FD:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_B0)
  loc_FC3705:     var_CA = var_B4.Text
  loc_FC3716:     Set var_B8 = Me.TxtGrid
  loc_FC371C:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_FC3724:     var_C4.Text = var_B0
  loc_FC3737:   End If
  loc_FC3743:   Set var_88 = Me.TxtGrid
  loc_FC3749:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_FC3763:   Set var_B8 = Me.TxtGrid
  loc_FC3769:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_FC3771:   var_C4.SelStart = Len(var_B4.Text)
  loc_FC3784: End If
  loc_FC378E: If (CLng(Cancel) <> &HD) Then
  loc_FC3796:   global_82 = &HFF
  loc_FC3799: End If
  loc_FC3799: Exit Sub
  loc_FC379A: Set arg_744C = global_82
End Sub

Private Sub FGrid_UnknownEvent_D 'E28130
  'Data Table: 4CA7EC
  loc_E28129: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_E2812C:   Exit Sub
  loc_E2812D: End If
  loc_E2812D: Exit Sub
  loc_E2812E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9BBC0
  'Data Table: 4CA7EC
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9BB63: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9BB7B: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9BBA3: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9BBBE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'DFBA5C
  'Data Table: 4CA7EC
  loc_DFBA58: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'DFBAF8
  'Data Table: 4CA7EC
  loc_DFBAF4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'DFFC2C
  'Data Table: 4CA7EC
  loc_DFFC24: Call Proc_180_54_EF6F60()
  loc_DFFC29: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_9 'F3C904
  'Data Table: 4CA7EC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3C7FB: Me.DGItemCat.Visible = False
  loc_F3C81A: If (Me.RecordCount > 0) Then
  loc_F3C859:   Set var_B4 = Me.Txt
  loc_F3C85F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3C867:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3C89A:   var_B0 = Me.Fields.Item("Name")
  loc_F3C8B9:   Set var_B4 = Me.Txt
  loc_F3C8BF:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3C8C7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3C8DD: End If
  loc_F3C8E8: Set var_A8 = Me.Txt
  loc_F3C8EE: Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2))
  loc_F3C8F6: var_B0.SetFocus
  loc_F3C902: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_1F 'EA6670
  'Data Table: 4CA7EC
  Dim var_A8 As Variant
  loc_EA65F0: Set var_88 = Me.DGItemCat
  loc_EA661A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6622: Set var_BC = Me.DGItemCat
  loc_EA665E: Proc_6_138_106D6F8(Me.DGItemCat, global_52, CInt(2), Me.FGPoint)
  loc_EA666C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'ED91B4
  'Data Table: 4CA7EC
  Dim var_8C As MSHFlexGrid
  Dim var_B4 As TextBox
  loc_ED9100: On Error Goto loc_ED91AC
  loc_ED9126: Call Proc_180_53_EB5680(Proc_5_1_100CB50("ADD", Me))
  loc_ED9131: Call Proc_180_52_E9C958(global_68)
  loc_ED915E: Me.FGrid.Rows = 2
  loc_ED9179: Me.FGrid.FixedRows = 1
  loc_ED9181: Call Proc_180_55_10F8B08(Me.FGrid.Text)
  loc_ED9191: Set var_8C = Me.Txt
  loc_ED9197: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0))
  loc_ED919F: var_B4.SetFocus
  loc_ED91AB: Exit Sub
  loc_ED91AC: ' Referenced from: ED9100
  loc_ED91AC: Proc_6_60_E62BC4(var_B4)
  loc_ED91B1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E77B7C
  'Data Table: 4CA7EC
  loc_E77B1C: On Error Goto loc_E77B75
  loc_E77B2D: If (Proc_183_55_FE7900(global_68) = &HFF) Then
  loc_E77B30:   Exit Sub
  loc_E77B31: End If
  loc_E77B54: Call Proc_180_53_EB5680(Proc_5_1_100CB50("EDIT", Me))
  loc_E77B63: Set var_8C = Me.FGrid
  loc_E77B74: Exit Sub
  loc_E77B75: ' Referenced from: E77B1C
  loc_E77B75: Proc_6_60_E62BC4(FGrid.DispID_8001)
  loc_E77B7A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '11162F8
  'Data Table: 4CA7EC
  Dim unk_4CA80E As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_144 As String
  loc_1115FDC: On Error Goto loc_11162A9
  loc_1115FED: If (Proc_183_56_FE8818(global_68) = &HFF) Then
  loc_1115FF0:   Exit Sub
  loc_1115FF1: End If
  loc_1116028: If (MsgBox("This Action Will Delete All The Entries Associated With This Scheme . Are You Sure?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_1116034:   unk_4CA80E.BeginTrans var_118
  loc_111604A:   var_94 = Me.Bookmark 'Variant
  loc_11160A0:   var_114 = "Delete From HappyHours Where schemeCode = '" & Me.Fields.Item("Code").Value & "' AND   (LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_11160B7:   unk_4CA80E.Execute CStr(var_114 & "' or LOGSITE_CODE='HO')"), var_164, -1
  loc_111611F:   var_F4 = "Delete from HappyHoursHead WHERE schemeCode ='" & Me.Fields.Item("Code").Value & "' AND (LOGSITE_CODE='" 
  loc_1116129:   var_114 = var_F4 & CVar(MemVar_1F92078) 
  loc_1116140:   unk_4CA80E.Execute CStr(var_114 & "' or LOGSITE_CODE='HO') "), var_164, -1
  loc_111618F:   var_1A0 = 0
  loc_11161A2:   var_198 = 0
  loc_11161AD:   var_194 = 0
  loc_111621E:   var_144 = "HappyHoursHead"
  loc_1116227:   Proc_154_5_10E33A4(MemVar_1F92044, var_144, "SchemeCode", 2, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1116255:   unk_4CA80E.CommitTrans
  loc_1116265:   Me.Requery -1
  loc_111626A:   Call Proc_180_48_15BEFB0(0, 0, 0, 0)
  loc_111628B:   Proc_5_0_110649C(&HFF, Me, global_68, 0)
  loc_1116297:   Set var_11C = Me.FGrid
  loc_11162A8: End If
  loc_11162A8: Exit Sub
  loc_11162A9: ' Referenced from: 1115FDC
  loc_11162AF: unk_4CA80E.RollbackTrans
  loc_11162BC: Set var_11C = Err()
  loc_11162C2: Call 0.Method_arg_2C (var_144, FGrid.DispID_8001, 0)
  loc_11162E3: MsgBox(CVar(var_144), &H30, " Deletion Error ", var_F4, var_114)
  loc_11162F6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E16C78
  'Data Table: 4CA7EC
  loc_E16C6D: Me.Global.Unload Me
  loc_E16C75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E31E18
  'Data Table: 4CA7EC
  Dim arg_7450 As Variant
  loc_E31E08: Proc_5_0_110649C(&HFF, Me)
  loc_E31E10: Call Proc_180_48_15BEFB0(global_68)
  loc_E31E15: Exit Sub
  loc_E31E16: arg_7450 = CVar(1) 'String
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E32238
  'Data Table: 4CA7EC
  loc_E32228: Proc_5_0_110649C(&HFF, Me)
  loc_E32230: Call Proc_180_48_15BEFB0(global_68)
  loc_E32235: Exit Sub
  loc_E32236: Set arg_7400 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E31F98
  'Data Table: 4CA7EC
  loc_E31F88: Proc_5_0_110649C(&HFF, Me)
  loc_E31F90: Call Proc_180_48_15BEFB0(global_68)
  loc_E31F95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E31F38
  'Data Table: 4CA7EC
  loc_E31F28: Proc_5_0_110649C(&HFF, Me)
  loc_E31F30: Call Proc_180_48_15BEFB0(global_68)
  loc_E31F35: Exit Sub
  loc_E31F36: Set arg_7400 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_19 'DFF1AC
  'Data Table: 4CA7EC
  loc_DFF1A4: Call Proc_180_56_1798D60()
  loc_DFF1A9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EC3EEC
  'Data Table: 4CA7EC
  loc_EC3E54: On Error Goto loc_EC3EE4
  loc_EC3E8E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC3E9D:   Set var_110 = Me
  loc_EC3EB4:   Call Proc_180_53_EB5680(Proc_5_1_100CB50("INI", var_110))
  loc_EC3EBF:   Call Proc_180_48_15BEFB0(global_68)
  loc_EC3EC4:   Call Proc_180_54_EF6F60()
  loc_EC3ECC: Else
  loc_EC3ED2:   Call 0.Method_arg_1E8 (var_110)
  loc_EC3EDA:   Call var_110.SetFocus
  loc_EC3EE3: End If
  loc_EC3EE3: Exit Sub
  loc_EC3EE4: ' Referenced from: EC3E54
  loc_EC3EE4: Proc_6_60_E62BC4()
  loc_EC3EE9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'F16D20
  'Data Table: 4CA7EC
  Dim Me As Recordset15
  loc_F16C30: On Error Goto loc_F16CBA
  loc_F16C3C: var_88 = Me.RecordCount
  loc_F16C4A: If (var_88 <= 0) Then
  loc_F16C6E:   MsgBox("No Records Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F16C7E:   Exit Sub
  loc_F16C7F: End If
  loc_F16C82: MemVar_1F920E4 = "SELECT HP.SchemeCode as SearchCode, Convert(Varchar(11),HP.AppDate,103) As StartDate, Convert(Varchar(11),HP.EndDate,103) As EndDate,  Depart.Name as DeptName, ItemCatMast.Name as CatName , ItemGrp.Name as GrpName, HP.DiscountType AS DiscountType , HP.DiscountValue AS DiscountValue  , HP.FromTime AS FromTime ,HP.ToTime AS ToTime FROM HappyHoursHead HP LEFT JOIN Depart on HP.RestCode = Depart.Code LEFT JOIN ItemCatMast on HP.ItemCat = ItemCatMast.Code LEFT JOIN ItemGrp on HP.ItemGroup = ItemGrp.Code "
  loc_F16C8C: MemVar_1F92120 = Me
  loc_F16C93: var_10C = "1000,1000,2000,1500,1500,1000,1200,800,800"
  loc_F16C99: Proc_6_126_F1BCC0(var_10C)
  loc_F16CB4: Call 0.Method_arg_2B0 (1)
  loc_F16CB9: Exit Sub
  loc_F16CBA: ' Referenced from: F16C30
  loc_F16CC2: Set var_110 = Err()
  loc_F16CC8: Call 0.Method_arg_1C (var_88)
  loc_F16CD9: If (var_88 <> 0) Then
  loc_F16CE4:   Set var_110 = Err()
  loc_F16CEA:   Call 0.Method_arg_2C (var_10C)
  loc_F16D0B:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F16D1E: End If
  loc_F16D1E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E581CC
  'Data Table: 4CA7EC
  Dim Me As Recordset15
  loc_E58193: Me.Requery -1
  loc_E581A3: Me.Requery -1
  loc_E581B3: Me.Requery -1
  loc_E581C3: Me.Requery -1
  loc_E581C8: Exit Sub
End Sub

Private Sub DGItemGrp_UnknownEvent_9 'F36B84
  'Data Table: 4CA7EC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F36A7B: Me.DGItemGrp.Visible = False
  loc_F36A9A: If (Me.RecordCount > 0) Then
  loc_F36AD9:   Set var_B4 = Me.Txt
  loc_F36ADF:   Call 0.Method_DGItemGrp_UnknownEvent_90 (CInt(1), var_B8)
  loc_F36AE7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F36B1A:   var_B0 = Me.Fields.Item("Name")
  loc_F36B39:   Set var_B4 = Me.Txt
  loc_F36B3F:   Call 0.Method_DGItemGrp_UnknownEvent_90 (CInt(1), var_B8)
  loc_F36B47:   var_B8.Text = CStr(var_B0.Value)
  loc_F36B5D: End If
  loc_F36B68: Set var_A8 = Me.Txt
  loc_F36B6E: Call 0.Method_DGItemGrp_UnknownEvent_90 (CInt(1))
  loc_F36B76: var_B0.SetFocus
  loc_F36B82: Exit Sub
End Sub

Private Sub DGItemGrp_UnknownEvent_1F 'EA65AC
  'Data Table: 4CA7EC
  Dim var_A8 As Variant
  Dim arg_21FF As String
  loc_EA652C: Set var_88 = Me.DGItemGrp
  loc_EA6556: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA655E: Set var_BC = Me.DGItemGrp
  loc_EA659A: Proc_6_138_106D6F8(Me.DGItemGrp, global_56, CInt(1), Me.FGPoint)
  loc_EA65A8: Exit Sub
  loc_EA65A9: arg_21FF = DGItemGrp.DispID_1B
End Sub

Private Sub FGPoint_UnknownEvent_9 'E86158
  'Data Table: 4CA7EC
  loc_E86104: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E86107:   Call DGRest_UnknownEvent_9()
  loc_E8610C: End If
  loc_E86128: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_E8612B:   Call DGItemCat_UnknownEvent_9()
  loc_E86130: End If
  loc_E8614C: If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_E8614F:   Call DGItemGrp_UnknownEvent_9()
  loc_E86154: End If
  loc_E86154: Exit Sub
End Sub

Private Sub Form_Load() '123CA20
  'Data Table: 4CA7EC
  Dim var_B0 As Variant
  Dim var_DC As TextBox
  Dim var_98 As Variant
  Dim var_F4 As DataGrid
  Dim var_F8 As TextBox
  Dim var_100 As DataGrid
  Dim var_A0 As String
  Dim Me As Recordset15
  loc_123C4EC: On Error Goto loc_123CA18
  loc_123C4FA: Set var_9C = Me.TopCtrl1
  loc_123C500: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000B(MemVar_1F920BC)
  loc_123C50E: Call 0.Method_arg_50 (var_A0)
  loc_123C51E: Set var_9C = Me.TopCtrl1
  loc_123C524: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000F(CVar(var_A0))
  loc_123C52D: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_0()
  loc_123C548: Set var_9C = Me.Txt
  loc_123C54E: Call 0.Method_Form_LoadC (var_D2, var_86)
  loc_123C55C: For var_D6 =  To (var_D2 - 1): 0 = var_D6 'Integer
  loc_123C571:   Set var_9C = Me.Txt
  loc_123C577:   Call 0.Method_Form_Load0 (var_86, var_DC)
  loc_123C57F:   var_DC.BackColor = -2147483643
  loc_123C59A:   Set var_9C = Me.Txt
  loc_123C5A0:   Call 0.Method_Form_Load0 (var_86, var_DC)
  loc_123C5A8:   var_DC.ForeColor = &HC00000
  loc_123C5B7: Next var_D6 'Integer
  loc_123C5CA: Set var_9C = Me.Txt
  loc_123C5D0: Call 0.Method_Form_Load0 (CInt(0), var_DC)
  loc_123C5EF: Me.DGRest.Left = CVar(var_DC.Left)
  loc_123C60B: Set var_F4 = Me.Txt
  loc_123C611: Call 0.Method_Form_Load0 (CInt(0), var_F8)
  loc_123C62C: Set var_9C = Me.Txt
  loc_123C632: Call 0.Method_Form_Load0 (CInt(0), var_DC)
  loc_123C64A: var_98 = CVar(((var_DC.Top + var_F8.Height) + CDbl(&H1E))) 'Single
  loc_123C659: Me.DGRest.Top = CVar(var_DC.Left)
  loc_123C679: Set var_9C = Me.Txt
  loc_123C67F: Call 0.Method_Form_Load0 (CInt(2), var_DC)
  loc_123C69E: Me.DGItemCat.Left = CVar(var_DC.Left)
  loc_123C6BA: Set var_F4 = Me.Txt
  loc_123C6C0: Call 0.Method_Form_Load0 (CInt(2), var_F8)
  loc_123C6DB: Set var_9C = Me.Txt
  loc_123C6E1: Call 0.Method_Form_Load0 (CInt(2), var_DC)
  loc_123C6F9: var_98 = CVar(((var_DC.Top + var_F8.Height) + CDbl(&H1E))) 'Single
  loc_123C708: Me.DGItemCat.Top = CVar(var_DC.Left)
  loc_123C728: Set var_9C = Me.Txt
  loc_123C72E: Call 0.Method_Form_Load0 (CInt(1), var_DC)
  loc_123C74D: Me.DGItemGrp.Left = CVar(var_DC.Left)
  loc_123C769: Set var_F4 = Me.Txt
  loc_123C76F: Call 0.Method_Form_Load0 (CInt(1), var_F8)
  loc_123C78A: Set var_9C = Me.Txt
  loc_123C790: Call 0.Method_Form_Load0 (CInt(1), var_DC)
  loc_123C7A8: var_98 = CVar(((var_DC.Top + var_F8.Height) + CDbl(&H1E))) 'Single
  loc_123C7B1: Set var_100 = Me.DGItemGrp
  loc_123C7B7: var_100.Top = CVar(var_DC.Left)
  loc_123C7E5: Me.var_100.CursorLocation = 3
  loc_123C80F: var_B0 = CVar("Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' Order By Name") 'String
  loc_123C819: Me.Open var_B0, CVar(MemVar_1F92044), 2
  loc_123C82D: CVarUnk
  loc_123C832: VerifyVarObj
  loc_123C838: Set var_9C = Me.DGRest
  loc_123C83E: LateIdStAd
  loc_123C868: Me.DGRest.CursorLocation = 3
  loc_123C89C: Me.Open CVar("Select Code,Name,RestCode From ItemCatMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')"), CVar(MemVar_1F92044), 2
  loc_123C8B0: CVarUnk
  loc_123C8B5: VerifyVarObj
  loc_123C8BB: Set var_9C = Me.DGItemCat
  loc_123C8C1: LateIdStAd
  loc_123C8EB: Me.DGItemCat.CursorLocation = 3
  loc_123C915: var_B0 = CVar("Select Code,Name,RestCode From ItemGrp where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_123C933: CVarUnk
  loc_123C938: VerifyVarObj
  loc_123C93E: Set var_9C = Me.DGItemGrp
  loc_123C944: LateIdStAd
  loc_123C96E: Me.DGItemGrp.CursorLocation = 3
  loc_123C98A: var_98 = "SELECT HP.SchemeCode as Code,Depart.Code As DeptCode, Depart.Name as DeptName, ItemCatMast.Code as CatCode , ItemCatMast.Name as CatName , ItemGrp.Code as GrpCode, ItemGrp.Name as GrpName, HP.AppDate As AppDate, HP.EndDate As EndDate, HP.DiscountType AS DiscountType , HP.DiscountValue AS DiscountValue  , HP.FromTime AS FromTime ,HP.ToTime AS ToTime, HP.Site_Code , HP.LogSite_Code FROM HappyHoursHead HP LEFT JOIN Depart on HP.RestCode = Depart.Code LEFT JOIN ItemCatMast on HP.ItemCat = ItemCatMast.Code LEFT JOIN ItemGrp on HP.ItemGroup = ItemGrp.Code "
  loc_123C996: r_B0, CVar(MemVar_1F92044), 2 var_98, CVar(MemVar_1F92044), 3
  loc_123C9BE: Call Proc_180_53_EB5680(Proc_5_1_100CB50("INI", Me, New, 3, -1, Me, New, 3), -1, Me, New)
  loc_123C9C9: Call Proc_180_55_10F8B08(3, -1)
  loc_123C9D8: Set var_9C = Me.TopCtrl1
  loc_123C9DE: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E("Add")
  loc_123C9E7: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_0(New)
  loc_123C9F2: Call Proc_180_48_15BEFB0()
  loc_123CA0F: Proc_6_23_DFBA28(Me, 7590)
  loc_123CA17: Exit Sub
  loc_123CA18: ' Referenced from: 123C4EC
  loc_123CA18: Proc_6_60_E62BC4(8600)
  loc_123CA1D: Exit Sub
End Sub

Private Sub Form_Resize() 'DFCB6C
  'Data Table: 4CA7EC
  loc_DFCB68: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E525B0
  'Data Table: 4CA7EC
  loc_E52583: Set global_60 = Nothing
  loc_E52595: Set global_52 = Nothing
  loc_E525A7: Set global_56 = Nothing
  loc_E525AE: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27894
  'Data Table: 4CA7EC
  loc_E2786C: On Error Goto loc_E2788C
  loc_E27883: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2788B: Exit Sub
  loc_E2788C: ' Referenced from: E2786C
  loc_E2788C: Proc_6_60_E62BC4(Shift)
  loc_E27891: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC4184
  'Data Table: 4CA7EC
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC40FA: On Error Goto loc_EC413F
  loc_EC4103: Me.MoveFirst
  loc_EC411D: var_8C = "Code='" & MyValue
  loc_EC412D: Me.Find var_8C & "'", 0, 1
  loc_EC4139: Call Proc_180_48_15BEFB0(var_A0)
  loc_EC413E: Exit Sub
  loc_EC413F: ' Referenced from: EC40FA
  loc_EC4147: Set var_A4 = Err()
  loc_EC414D: Call 0.Method_arg_2C (var_8C)
  loc_EC416E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC4181: Exit Sub
  loc_EC4182: Exit Sub
End Sub

Public Sub Proc_180_48_15BEFB0
  'Data Table: 4CA7EC
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_C4 As String
  Dim var_B0 As TextBox
  Dim var_C0 As Variant
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim unk_4CA80E As Connection15
  Dim var_86 As Integer
  Dim var_8C As Recordset15
  Dim var_AC As Fields15
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_15BDCC0: On Error Goto loc_15BEF6D
  loc_15BDCC9: Proc_183_45_E5C118(global_68)
  loc_15BDCE5: If (Me.RecordCount <= 0) Then
  loc_15BDCE8:   Call Proc_180_52_E9C958()
  loc_15BDCF0: Else
  loc_15BDD2C:   Set var_AC = Me.Txt
  loc_15BDD32:   Call 0.Method_Proc_180_48_15BEFB00 (CInt(0), var_B0)
  loc_15BDD3A:   var_B0.Text = CStr(Me.Fields.Item("DeptName").Value)
  loc_15BDD8C:   Set var_AC = Me.Txt
  loc_15BDD92:   Call 0.Method_Proc_180_48_15BEFB00 (CInt(0), var_B0)
  loc_15BDD9A:   var_B0.Tag = CStr(Me.Fields.Item("DeptCode").Value)
  loc_15BDDE2:   If Not(IsNull(CVar(Me.Fields.Item("GrpName")))) Then
  loc_15BDE21:     Set var_AC = Me.Txt
  loc_15BDE27:     Call 0.Method_Proc_180_48_15BEFB00 (CInt(1), var_B0)
  loc_15BDE2F:     var_B0.Text = CStr(Me.Fields.Item("GrpName").Value)
  loc_15BDE81:     Set var_AC = Me.Txt
  loc_15BDE87:     Call 0.Method_Proc_180_48_15BEFB00 (CInt(1), var_B0)
  loc_15BDE8F:     var_B0.Tag = CStr(Me.Fields.Item("GrpCode").Value)
  loc_15BDEA5:   End If
  loc_15BDED7:   If Not(IsNull(CVar(Me.Fields.Item("CatName")))) Then
  loc_15BDF16:     Set var_AC = Me.Txt
  loc_15BDF1C:     Call 0.Method_Proc_180_48_15BEFB00 (CInt(2), var_B0)
  loc_15BDF24:     var_B0.Text = CStr(Me.Fields.Item("CatName").Value)
  loc_15BDF76:     Set var_AC = Me.Txt
  loc_15BDF7C:     Call 0.Method_Proc_180_48_15BEFB00 (CInt(2), var_B0)
  loc_15BDF84:     var_B0.Tag = CStr(Me.Fields.Item("CatCode").Value)
  loc_15BDF9A:   End If
  loc_15BDFD3:   Set var_AC = Me.Txt
  loc_15BDFD9:   Call 0.Method_Proc_180_48_15BEFB00 (CInt(3), var_B0)
  loc_15BDFE1:   var_B0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("AppDate")))
  loc_15BE02E:   Set var_AC = Me.Txt
  loc_15BE034:   Call 0.Method_Proc_180_48_15BEFB00 (CInt(&HA), var_B0)
  loc_15BE03C:   var_B0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("EndDate")))
  loc_15BE08C:   Set var_AC = Me.Txt
  loc_15BE092:   Call 0.Method_Proc_180_48_15BEFB00 (CInt(4), var_B0)
  loc_15BE09A:   var_B0.Text = CStr(Me.Fields.Item("DiscountType").Value)
  loc_15BE0EC:   Set var_AC = Me.Txt
  loc_15BE0F2:   Call 0.Method_Proc_180_48_15BEFB00 (CInt(5), var_B0)
  loc_15BE0FA:   var_B0.Text = CStr(Me.Fields.Item("DiscountValue").Value)
  loc_15BE155:   Set var_AC = Me.Txt
  loc_15BE15B:   Call 0.Method_Proc_180_48_15BEFB00 (CInt(6), var_B0)
  loc_15BE163:   var_B0.Text = CStr(Left(CVar(Me.Fields.Item("FromTime")), 2))
  loc_15BE1C0:   Set var_AC = Me.Txt
  loc_15BE1C6:   Call 0.Method_Proc_180_48_15BEFB00 (CInt(7), var_B0)
  loc_15BE1CE:   var_B0.Text = CStr(Right(CVar(Me.Fields.Item("FromTime")), 2))
  loc_15BE22B:   Set var_AC = Me.Txt
  loc_15BE231:   Call 0.Method_Proc_180_48_15BEFB00 (CInt(8), var_B0)
  loc_15BE239:   var_B0.Text = CStr(Left(CVar(Me.Fields.Item("ToTime")), 2))
  loc_15BE296:   Set var_AC = Me.Txt
  loc_15BE29C:   Call 0.Method_Proc_180_48_15BEFB00 (CInt(9), var_B0)
  loc_15BE2A4:   var_B0.Text = CStr(Right(CVar(Me.Fields.Item("ToTime")), 2))
  loc_15BE2CF:   Me.FGrid.Rows = 1
  loc_15BE2E4:   var_E4 = "Select IM.DispCode,IM.Code As ItemCode,IM.Name As ItemName, IM.ItemCatCode , IM.ItemGroup, HP.DiscountType,HP.DiscountValue,HP.Active From ItemMast IM Left outer join HappyHours HP on IM.Code = HP.ItemCode And IM.RestCode=HP.RestCode WHERE HP.SchemeCode='"
  loc_15BE332:   var_144 = var_E4 & Me.Fields.Item("Code").Value & "' AND (HP.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' or HP.LOGSITE_CODE='HO') Order By IM.Code " 
  loc_15BE340:   unk_4CA80E.Execute CStr(var_144), var_164, -1
  loc_15BE351:   Set global_64 = var_AC
  loc_15BE3BA:   var_104 = "Select ItemCode,Rate,AppDate From ItemRate Where RestCode='" & Me.Fields.Item("DeptCode").Value & "' AND (LOGSITE_CODE='" 
  loc_15BE3DB:   unk_4CA80E.Execute CStr(var_104 & CVar(MemVar_1F92078) & "' or LOGSITE_CODE='HO') Order By AppDate Desc,ItemCode "), var_164, -1
  loc_15BE3E6:   Set var_8C = var_AC
  loc_15BE406:   var_86 = 1
  loc_15BE41D:   If (var_8C.RecordCount <= 0) Then
  loc_15BE437:     If (Me.RecordCount > 0) Then
  loc_15BE43A:       ' Referenced from:   15BE8F9
  loc_15BE44C:       If Not(Me.EOF) Then
  loc_15BE44F:         var_A4 = vbNullString
  loc_15BE459:         Set var_94 = Me.FGrid
  loc_15BE475:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_15BE487:         var_C0 = CVar(CStr(var_86)) 'String
  loc_15BE48E:         LateIdCallSt
  loc_15BE4D5:         var_D4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DispCode")), CVar(CLng(1)), CVar(CLng(var_86)), Me.FGrid, CVar(Me.Fields.Item("DispCode")), CVar(CLng(0)))) 'String
  loc_15BE4DC:         LateIdCallSt
  loc_15BE4F2:         var_E4 = CVar(CLng(var_86)) 'Long
  loc_15BE4FA:         var_114 = CVar(CLng(2)) 'Long
  loc_15BE52D:         var_D4 = CVar(CStr(Me.Fields.Item("ItemCode").Value)) 'String
  loc_15BE534:         LateIdCallSt
  loc_15BE54E:         var_E4 = CVar(CLng(var_86)) 'Long
  loc_15BE556:         var_114 = CVar(CLng(3)) 'Long
  loc_15BE589:         var_D4 = CVar(CStr(Me.Fields.Item("ItemName").Value)) 'String
  loc_15BE590:         LateIdCallSt
  loc_15BE625:         If CBool((Me.Fields.Item("DiscountType").Value = "Amount") And Not(IsNull(CVar(Me.Fields.Item("DiscountType"))))) Then
  loc_15BE628:           var_A4 = 0
  loc_15BE634:           var_F4 = CVar(CLng(5)) 'Long
  loc_15BE639:           var_134 = "Discount Amount"
  loc_15BE642:           LateIdCallSt
  loc_15BE64E:           var_E4 = CVar(CLng(var_86)) 'Long
  loc_15BE656:           var_114 = CVar(CLng(5)) 'Long
  loc_15BE689:           var_D4 = CVar(CStr(Me.Fields.Item("DiscountValue").Value)) 'String
  loc_15BE690:           LateIdCallSt
  loc_15BE6AA:           var_A4 = CVar(CLng(var_86)) 'Long
  loc_15BE6B2:           var_F4 = CVar(CLng(7)) 'Long
  loc_15BE6B7:           var_134 = "N"
  loc_15BE6C0:           LateIdCallSt
  loc_15BE6CB:         Else
  loc_15BE74A:           If CBool((Me.Fields.Item("DiscountType").Value = "Percent") And Not(IsNull(CVar(Me.Fields.Item("DiscountType"))))) Then
  loc_15BE74D:             var_A4 = 0
  loc_15BE759:             var_F4 = CVar(CLng(5)) 'Long
  loc_15BE75E:             var_134 = "Discount Percent"
  loc_15BE767:             LateIdCallSt
  loc_15BE773:             var_E4 = CVar(CLng(var_86)) 'Long
  loc_15BE77B:             var_114 = CVar(CLng(5)) 'Long
  loc_15BE7AE:             var_D4 = CVar(CStr(Me.Fields.Item("DiscountValue").Value)) 'String
  loc_15BE7B5:             LateIdCallSt
  loc_15BE7CF:             var_A4 = CVar(CLng(var_86)) 'Long
  loc_15BE7D7:             var_F4 = CVar(CLng(7)) 'Long
  loc_15BE7DC:             var_134 = "N"
  loc_15BE7E5:             LateIdCallSt
  loc_15BE7ED:           End If
  loc_15BE7ED:         End If
  loc_15BE81F:         If Not(IsNull(CVar(Me.Fields.Item("Active")))) Then
  loc_15BE850:           var_134 = CVar(CLng(var_86)) 'Long
  loc_15BE858:           var_17C = CVar(CLng(6)) 'Long
  loc_15BE893:           var_19C = CVar(CStr(IIf((Me.Fields.Item("Active").Value = "Y"), "Yes", "No"))) 'String
  loc_15BE89A:           LateIdCallSt
  loc_15BE8B8:         End If
  loc_15BE8BC:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_15BE8C4:         var_F4 = CVar(CLng(4)) 'Long
  loc_15BE8CD:         var_C0 = CVar(CStr(0)) 'String
  loc_15BE8D4:         LateIdCallSt
  loc_15BE8E1:         Set var_16C = Nothing 
  loc_15BE8EB:         var_86 = (var_86 + 1)
  loc_15BE8F4:         Me.MoveNext
  loc_15BE8F9:         GoTo loc_15BE43A
  loc_15BE8FC:       End If
  loc_15BE8FC:     End If
  loc_15BE8FC:     GoTo loc_15BEF49
  loc_15BE8FF:     ' Referenced from:   15BEF46
  loc_15BE8FF:   End If
  loc_15BE911:   If Not(Me.EOF) Then
  loc_15BE914:     var_A4 = vbNullString
  loc_15BE91E:     Set var_94 = Me.FGrid
  loc_15BE933:     Set var_1B0 = Me.FGrid
  loc_15BE93A:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_15BE94C:     var_C0 = CVar(CStr(var_86)) 'String
  loc_15BE953:     LateIdCallSt
  loc_15BE972:     var_A4 = "DispCode"
  loc_15BE99A:     var_D4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_A4)), CVar(CLng(1)), CVar(CLng(var_86)), var_1B0, CVar(Me.Fields.Item(var_A4)), CVar(CLng(0)), var_A4)) 'String
  loc_15BE9A1:     LateIdCallSt
  loc_15BE9B7:     var_E4 = CVar(CLng(var_86)) 'Long
  loc_15BE9BF:     var_114 = CVar(CLng(2)) 'Long
  loc_15BE9F2:     var_D4 = CVar(CStr(Me.Fields.Item("ItemCode").Value)) 'String
  loc_15BE9F9:     LateIdCallSt
  loc_15BEA13:     var_E4 = CVar(CLng(var_86)) 'Long
  loc_15BEA4E:     var_D4 = CVar(CStr(Me.Fields.Item("ItemName").Value)) 'String
  loc_15BEA55:     LateIdCallSt
  loc_15BEA6E:     var_8C.MoveFirst
  loc_15BEAA3:     var_A8 = Me.Fields.Item("ItemCode")
  loc_15BEAB3:     var_D4 = "ItemCode='" & var_A8.Value 
  loc_15BEAC0:     var_C4 = CStr(var_D4 & "'")
  loc_15BEAC7:     var_8C.Find var_C4, 0, 1
  loc_15BEB02:     If ((var_8C.EOF = 0) And (var_8C.BOF = 0)) Then
  loc_15BEB13:       Set var_94 = Me.Txt
  loc_15BEB19:       Call 0.Method_Proc_180_48_15BEFB00 (CInt(4), var_A8, var_C4, CVar(CLng(3)), var_1B0, var_D4)
  loc_15BEB21:       var_114 = var_A8.Text
  loc_15BEB38:       If (var_C4 = "Amount") Then
  loc_15BEB3F:         var_E4 = CVar(CLng(var_86)) 'Long
  loc_15BEB47:         var_114 = CVar(CLng(4)) 'Long
  loc_15BEB77:         var_D4 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_15BEB7E:         LateIdCallSt
  loc_15BEB97:       Else
  loc_15BEB9B:         var_E4 = CVar(CLng(var_86)) 'Long
  loc_15BEBA3:         var_114 = CVar(CLng(4)) 'Long
  loc_15BEBD3:         var_D4 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_15BEBDA:         LateIdCallSt
  loc_15BEBF0:       End If
  loc_15BEBF3:     Else
  loc_15BEBF7:       var_A4 = CVar(CLng(var_86)) 'Long
  loc_15BEBFF:       var_F4 = CVar(CLng(4)) 'Long
  loc_15BEC08:       var_C0 = CVar(CStr(0)) 'String
  loc_15BEC0F:       LateIdCallSt
  loc_15BEC1A:     End If
  loc_15BEC99:     If CBool((Me.Fields.Item("DiscountType").Value = "Amount") And Not(IsNull(CVar(Me.Fields.Item("DiscountType"))))) Then
  loc_15BEC9C:       var_A4 = 0
  loc_15BECA8:       var_F4 = CVar(CLng(5)) 'Long
  loc_15BECAD:       var_134 = "Discount Amount"
  loc_15BECB6:       LateIdCallSt
  loc_15BECC2:       var_E4 = CVar(CLng(var_86)) 'Long
  loc_15BECCA:       var_114 = CVar(CLng(5)) 'Long
  loc_15BECFD:       var_D4 = CVar(CStr(Me.Fields.Item("DiscountValue").Value)) 'String
  loc_15BED04:       LateIdCallSt
  loc_15BED1E:       var_A4 = CVar(CLng(var_86)) 'Long
  loc_15BED26:       var_F4 = CVar(CLng(7)) 'Long
  loc_15BED2B:       var_134 = "N"
  loc_15BED34:       LateIdCallSt
  loc_15BED3F:     Else
  loc_15BEDBE:       If CBool((Me.Fields.Item("DiscountType").Value = "Percent") And Not(IsNull(CVar(Me.Fields.Item("DiscountType"))))) Then
  loc_15BEDC1:         var_A4 = 0
  loc_15BEDCD:         var_F4 = CVar(CLng(5)) 'Long
  loc_15BEDD2:         var_134 = "Discount Percent"
  loc_15BEDDB:         LateIdCallSt
  loc_15BEDE7:         var_E4 = CVar(CLng(var_86)) 'Long
  loc_15BEDEF:         var_114 = CVar(CLng(5)) 'Long
  loc_15BEE22:         var_D4 = CVar(CStr(Me.Fields.Item("DiscountValue").Value)) 'String
  loc_15BEE29:         LateIdCallSt
  loc_15BEE43:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_15BEE4B:         var_F4 = CVar(CLng(7)) 'Long
  loc_15BEE50:         var_134 = "N"
  loc_15BEE59:         LateIdCallSt
  loc_15BEE61:       End If
  loc_15BEE61:     End If
  loc_15BEE93:     If Not(IsNull(CVar(Me.Fields.Item("Active")))) Then
  loc_15BEEC4:       var_134 = CVar(CLng(var_86)) 'Long
  loc_15BEECC:       var_17C = CVar(CLng(6)) 'Long
  loc_15BEEE1:       var_124 = "Yes"
  loc_15BEEF4:       var_104 = (Me.Fields.Item("Active").Value = "Y") 'Variant
  loc_15BEF07:       var_19C = CVar(CStr(IIf(var_104, var_124, "No"))) 'String
  loc_15BEF0E:       LateIdCallSt
  loc_15BEF2C:     End If
  loc_15BEF2E:     Set var_1B0 = Nothing 
  loc_15BEF38:     var_86 = (var_86 + 1)
  loc_15BEF41:     Me.MoveNext
  loc_15BEF46:     GoTo loc_15BE8FF
  loc_15BEF49:     ' Referenced from:   15BE8FC
  loc_15BEF49:   End If
  loc_15BEF49: End If
  loc_15BEF5C: Me.FGrid.FixedRows = 1
  loc_15BEF69: Set var_8C = Nothing
  loc_15BEF6C: Exit Sub
  loc_15BEF6D: ' Referenced from: 15BDCC0
  loc_15BEF75: Set var_94 = Err()
  loc_15BEF7B: Call 0.Method_arg_2C (var_C4, var_86, var_1B0, var_19C, var_17C, var_134, var_1B0)
  loc_15BEF9C: MsgBox(CVar(var_C4), &H40, "Information", var_104, var_124)
  loc_15BEFAF: Exit Sub
End Sub

Public Sub Proc_180_49_FE83C4
  'Data Table: 4CA7EC
  Dim var_9C As TextBox
  Dim var_A8 As Double
  Dim var_90 As TextBox
  Dim var_86 As Integer
  loc_FE8202: Set var_98 = Me.Txt
  loc_FE8208: Call 0.Method_Proc_180_49_FE83C40 (CInt(8), var_9C)
  loc_FE822E: Set var_8C = Me.Txt
  loc_FE8234: Call 0.Method_Proc_180_49_FE83C40 (CInt(6), var_90)
  loc_FE823C: var_94 = var_90.Text
  loc_FE8261: If (CDbl(Val(var_94)) = CDbl(Val(var_9C.Text))) Then
  loc_FE8272:   Set var_98 = Me.Txt
  loc_FE8278:   Call 0.Method_Proc_180_49_FE83C40 (CInt(9), var_9C)
  loc_FE828D:   var_A8 = Val(var_9C.Text)
  loc_FE829E:   Set var_8C = Me.Txt
  loc_FE82A4:   Call 0.Method_Proc_180_49_FE83C40 (CInt(7), var_90, var_94)
  loc_FE82D1:   If (CDbl(Val(var_94)) > CDbl(var_90.Text)) Then
  loc_FE82F5:     MsgBox("'To Time' Should be greater than 'From Time'", &H40, "TIME", var_108, var_128)
  loc_FE830A:     Proc_180_49_FE83C4 = 0
  loc_FE8310:   End If
  loc_FE8310: End If
  loc_FE831E: Set var_98 = Me.Txt
  loc_FE8324: Call 0.Method_Proc_180_49_FE83C40 (CInt(8), var_9C)
  loc_FE8339: var_A8 = Val(var_9C.Text)
  loc_FE834A: Set var_8C = Me.Txt
  loc_FE8350: Call 0.Method_Proc_180_49_FE83C40 (CInt(6), var_90, var_94)
  loc_FE837D: If (CDbl(Val(var_94)) > CDbl(var_90.Text)) Then
  loc_FE83A1:   MsgBox("'To Time' Should be greater than 'From Time'", &H40, "TIME", var_108, var_128)
  loc_FE83B3:   var_86 = 0
  loc_FE83B6: End If
  loc_FE83BB: Proc_180_49_FE83C4 = &HFF
End Sub

Public Sub Proc_180_50_DFCFB0
  'Data Table: 4CA7EC
  loc_DFCFAC: Exit Sub
End Sub

Public Sub Proc_180_51_107519C
  'Data Table: 4CA7EC
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  loc_1074F33: var_A0 = CLng(Me.FGrid.Col)
  loc_1074F43: If (var_A0 = CLng(4)) Then
  loc_1074F52:   Set var_8C = Me.TxtGrid
  loc_1074F58:   Call 0.Method_Proc_180_51_107519C0 (0, var_A4)
  loc_1074F60:   var_A8 = var_A4.Text
  loc_1074F83:   var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1074F9B:   var_140 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1074FC8:   var_160 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_1074FD0:   Set var_174 = Me.FGrid
  loc_1074FD6:   LateIdCallSt
  loc_1075000: Else
  loc_1075007:   If (var_A0 = CLng(5)) Then
  loc_1075016:     Set var_8C = Me.TxtGrid
  loc_107501C:     Call 0.Method_Proc_180_51_107519C0 (0, var_A4, var_A8, var_174, var_160, 1)
  loc_1075024:     1 = var_A4.Text
  loc_1075047:     var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_107505F:     var_140 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_107508C:     var_160 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_1075094:     Set var_174 = Me.FGrid
  loc_107509A:     LateIdCallSt
  loc_10750C4:   Else
  loc_10750CB:     If (var_A0 = CLng(6)) Then
  loc_107510A:       Set var_8C = Me.TxtGrid
  loc_1075110:       Call 0.Method_Proc_180_51_107519C0 (0, var_A4, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_174, var_160)
  loc_1075118:       1 = var_A4.Text
  loc_1075120:       var_E8 = CVar(var_A8) 'String
  loc_1075128:       Set var_174 = Me.FGrid
  loc_107512E:       LateIdCallSt
  loc_107514C:     End If
  loc_107514C:   End If
  loc_107514C: End If
  loc_107515F: var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1075167: var_120 = CVar(CLng(7)) 'Long
  loc_107516C: var_140 = "Y"
  loc_1075176: Set var_A4 = Me.FGrid
  loc_107517C: LateIdCallSt
  loc_1075193: Proc_180_51_107519C = &HFF
End Sub

Public Sub Proc_180_52_E9C958
  'Data Table: 4CA7EC
  Dim var_98 As TextBox
  loc_E9C8DE: Set var_8C = Me.Txt
  loc_E9C8E4: Call 0.Method_Proc_180_52_E9C958C (var_8E, var_86)
  loc_E9C8F4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9C90A:   Set var_8C = Me.Txt
  loc_E9C910:   Call 0.Method_Proc_180_52_E9C9580 (CInt(var_86), var_98)
  loc_E9C918:   var_98.Text = vbNullString
  loc_E9C934:   Set var_8C = Me.Txt
  loc_E9C93A:   Call 0.Method_Proc_180_52_E9C9580 (CInt(var_86), var_98)
  loc_E9C942:   var_98.Tag = vbNullString
  loc_E9C951: Next var_92 'Byte
  loc_E9C957: Exit Sub
End Sub

Public Sub Proc_180_53_EB5680(arg_C) 'EB5680
  'Data Table: 4CA7EC
  Dim var_98 As Variant
  Dim var_8C As CheckBox
  loc_EB55F2: Set var_8C = Me.Txt
  loc_EB55F8: Call 0.Method_Proc_180_53_EB5680C (var_8E, var_86)
  loc_EB5608: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB561E:   Set var_8C = Me.Txt
  loc_EB5624:   Call 0.Method_Proc_180_53_EB56800 (CInt(var_86), var_98)
  loc_EB562C:   var_98.Enabled = arg_C
  loc_EB563B: Next var_92 'Byte
  loc_EB564E: Me.Check1.Enabled = arg_C
  loc_EB5662: Set var_8C = Me.Cmd
  loc_EB5668: Call 0.Method_Proc_180_53_EB56800 (0, var_98)
  loc_EB5670: var_98.Enabled = arg_C
  loc_EB567C: Exit Sub
End Sub

Public Sub Proc_180_54_EF6F60
  'Data Table: 4CA7EC
  loc_EF6EA0: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF6EB2:   Me.DGRest.Visible = False
  loc_EF6EBA: End If
  loc_EF6ED6: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_EF6EE8:   Me.DGItemCat.Visible = False
  loc_EF6EF0: End If
  loc_EF6F0C: If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_EF6F1E:   Me.DGItemGrp.Visible = False
  loc_EF6F26: End If
  loc_EF6F42: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF6F54:   Me.FGPoint.Visible = False
  loc_EF6F5C: End If
  loc_EF6F5C: Exit Sub
  loc_EF6F5D: Result  End Sub 'Currency
End Sub

Public Sub Proc_180_55_10F8B08
  'Data Table: 4CA7EC
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_10F87DA: Me.FGrid.Left = CVar(CDbl(&H23))
  loc_10F87F5: Me.FGrid.Width = CVar(CDbl(10700))
  loc_10F8810: Me.FGrid.Cols = 8
  loc_10F8818: var_94 = CVar(CLng(0)) 'Long
  loc_10F881D: var_BC = &H190
  loc_10F8829: LateIdCallSt
  loc_10F8831: var_94 = 0
  loc_10F883D: var_BC = CVar(CLng(1)) 'Long
  loc_10F8842: var_DC = "Code"
  loc_10F884B: LateIdCallSt
  loc_10F8856: var_94 = CVar(CLng(1)) 'Long
  loc_10F8861: var_BC = CVar(CInt(1)) 'Integer
  loc_10F8868: LateIdCallSt
  loc_10F8873: var_94 = CVar(CLng(1)) 'Long
  loc_10F8878: var_BC = &H5DC
  loc_10F8884: LateIdCallSt
  loc_10F888F: var_94 = CVar(CLng(2)) 'Long
  loc_10F8894: var_BC = 0
  loc_10F88A0: LateIdCallSt
  loc_10F88A8: var_94 = 0
  loc_10F88B4: var_BC = CVar(CLng(3)) 'Long
  loc_10F88B9: var_DC = "Item Name"
  loc_10F88C2: LateIdCallSt
  loc_10F88CD: var_94 = CVar(CLng(3)) 'Long
  loc_10F88D8: var_BC = CVar(CInt(1)) 'Integer
  loc_10F88DF: LateIdCallSt
  loc_10F88EA: var_94 = CVar(CLng(3)) 'Long
  loc_10F88F5: var_BC = CVar(CInt(1)) 'Integer
  loc_10F88FC: LateIdCallSt
  loc_10F8907: var_94 = CVar(CLng(3)) 'Long
  loc_10F890C: var_BC = &HDAC
  loc_10F8918: LateIdCallSt
  loc_10F8920: var_94 = 0
  loc_10F892C: var_BC = CVar(CLng(4)) 'Long
  loc_10F8931: var_DC = "Rate"
  loc_10F893A: LateIdCallSt
  loc_10F8945: var_94 = CVar(CLng(4)) 'Long
  loc_10F8950: var_BC = CVar(CInt(7)) 'Integer
  loc_10F8957: LateIdCallSt
  loc_10F8962: var_94 = CVar(CLng(4)) 'Long
  loc_10F896D: var_BC = CVar(CInt(7)) 'Integer
  loc_10F8974: LateIdCallSt
  loc_10F897F: var_94 = CVar(CLng(4)) 'Long
  loc_10F8984: var_BC = &H5DC
  loc_10F8990: LateIdCallSt
  loc_10F8998: var_94 = 0
  loc_10F89A4: var_BC = CVar(CLng(5)) 'Long
  loc_10F89A9: var_DC = "Discount"
  loc_10F89B2: LateIdCallSt
  loc_10F89BD: var_94 = CVar(CLng(5)) 'Long
  loc_10F89C8: var_BC = CVar(CInt(7)) 'Integer
  loc_10F89CF: LateIdCallSt
  loc_10F89DA: var_94 = CVar(CLng(5)) 'Long
  loc_10F89E5: var_BC = CVar(CInt(7)) 'Integer
  loc_10F89EC: LateIdCallSt
  loc_10F89F7: var_94 = CVar(CLng(5)) 'Long
  loc_10F89FC: var_BC = &H7D0
  loc_10F8A08: LateIdCallSt
  loc_10F8A10: var_94 = 0
  loc_10F8A1C: var_BC = CVar(CLng(6)) 'Long
  loc_10F8A21: var_DC = "Active"
  loc_10F8A2A: LateIdCallSt
  loc_10F8A35: var_94 = CVar(CLng(6)) 'Long
  loc_10F8A40: var_BC = CVar(CInt(7)) 'Integer
  loc_10F8A47: LateIdCallSt
  loc_10F8A52: var_94 = CVar(CLng(6)) 'Long
  loc_10F8A5D: var_BC = CVar(CInt(7)) 'Integer
  loc_10F8A64: LateIdCallSt
  loc_10F8A6F: var_94 = CVar(CLng(6)) 'Long
  loc_10F8A74: var_BC = &H320
  loc_10F8A80: LateIdCallSt
  loc_10F8A88: var_94 = 0
  loc_10F8A94: var_BC = CVar(CLng(7)) 'Long
  loc_10F8A99: var_DC = "Updated"
  loc_10F8AA2: LateIdCallSt
  loc_10F8AAD: var_94 = CVar(CLng(7)) 'Long
  loc_10F8AB8: var_BC = CVar(CInt(7)) 'Integer
  loc_10F8ABF: LateIdCallSt
  loc_10F8ACA: var_94 = CVar(CLng(7)) 'Long
  loc_10F8AD5: var_BC = CVar(CInt(7)) 'Integer
  loc_10F8ADC: LateIdCallSt
  loc_10F8AE7: var_94 = CVar(CLng(7)) 'Long
  loc_10F8AEC: var_BC = 0
  loc_10F8AF8: LateIdCallSt
  loc_10F8B02: Set var_AC = Nothing 
  loc_10F8B06: Exit Sub
End Sub

Public Sub Proc_180_56_1798D60
  'Data Table: 4CA7EC
  Dim unk_4CA80E As Connection15
  Dim var_A4 As Variant
  Dim var_E0 As Variant
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_94 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_118 As Variant
  Dim var_C4 As Variant
  Dim var_130 As Variant
  Dim var_1A0 As Variant
  Dim var_1F8 As Variant
  Dim var_204 As Variant
  Dim var_254 As TextBox
  Dim var_260 As TextBox
  Dim var_370 As TextBox
  Dim var_3BC As TextBox
  Dim var_48C As Double
  Dim var_10C As String
  Dim var_110 As String
  Dim var_114 As String
  Dim var_120 As String
  Dim var_124 As String
  Dim var_128 As String
  Dim var_138 As String
  Dim var_13C As String
  Dim var_140 As String
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  Dim var_21C As Variant
  Dim var_24C As Variant
  Dim var_278 As Variant
  Dim var_288 As Variant
  Dim var_2A8 As Variant
  Dim var_2C8 As Variant
  Dim var_2D8 As Variant
  Dim var_2E8 As Variant
  Dim var_308 As Variant
  Dim var_348 As Variant
  Dim var_368 As Variant
  Dim var_384 As Variant
  Dim var_394 As Variant
  Dim var_3B4 As Variant
  Dim var_400 As Variant
  Dim var_430 As Variant
  Dim var_450 As Variant
  Dim var_11C As String
  Dim var_158 As Variant
  Dim var_134 As String
  Dim var_1B0 As Variant
  Dim var_464 As Variant
  Dim var_420 As Variant
  Dim var_148 As Variant
  Dim var_190 As TextBox
  Dim var_4F0 As Variant
  Dim var_510 As Variant
  Dim var_25C As Variant
  Dim var_36C As TextBox
  Dim var_4B0 As Variant
  Dim var_4D0 As Variant
  Dim var_474 As Variant
  Dim var_560 As Variant
  Dim var_1FC As String
  Dim var_250 As MSHFlexGrid
  Dim var_144 As Variant
  Dim var_12C As Variant
  Dim var_18C As TextBox
  Dim var_1F4 As TextBox
  Dim var_200 As TextBox
  Dim var_208 As String
  Dim var_264 As String
  loc_1796F64: On Error Goto loc_1798CD5
  loc_1796F6A: Call Proc_180_49_FE83C4(var_8A)
  loc_1796F72: If var_8A Then
  loc_1796F7E:   unk_4CA80E.BeginTrans var_90
  loc_1796F87:   var_88 = CByte(1) 'Byte
  loc_1796F8F:   Set var_94 = Me.TopCtrl1
  loc_1796F95:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_1796FAA:   If ( = "Add") Then
  loc_1796FB3:     var_E0 = 0
  loc_1796FD0:     var_C8 = "Select IsNull(Max(CAST(SUBSTRING(SchemeCode,3,4) AS INT)),1)+1 AS MyCode From HappyHours Where SITE_CODE='" & MemVar_1F92070
  loc_1796FE0:     unk_4CA80E.Execute var_C8 & "'", var_B4, -1
  loc_1796FE8:     var_94 = var_94.Fields
  loc_1796FF0:     var_E0 = var_D0.Item(var_D0)
  loc_1796FF8:     var_E4 = var_E4.Value
  loc_1797031:     var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_179705F:     var_108 = (1 + Format(CStr(var_C4), "0000"))
  loc_179706A:     global_76 = CStr(var_108)
  loc_179707F:   Else
  loc_179709C:     var_D0 = Me.Fields.Item("Code")
  loc_17970B3:     global_76 = CStr(var_D0.Value)
  loc_17970C4:   End If
  loc_17970C8:   Set var_94 = Me.TopCtrl1
  loc_17970CE:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E(1)
  loc_17970E3:   If (var_F8 = "Add") Then
  loc_17970F4:     Set var_94 = Me.Txt
  loc_17970FA:     Call 0.Method_Proc_180_56_1798D600 (CInt(2), var_D0)
  loc_1797123:     Set var_E4 = Me.Txt
  loc_1797129:     Call 0.Method_Proc_180_56_1798D600 (CInt(1), var_118)
  loc_1797139:     var_C4 = CVar(var_118.Tag) 'String
  loc_1797152:     Set var_12C = Me.Txt
  loc_1797158:     Call 0.Method_Proc_180_56_1798D600 (CInt(0), var_130)
  loc_179717E:     Set var_144 = Me.Txt
  loc_1797184:     Call 0.Method_Proc_180_56_1798D600 (CInt(3), var_148)
  loc_1797193:     Proc_6_7_F25D88(var_158, CVar(var_148))
  loc_17971A3:     Set var_18C = Me.Txt
  loc_17971A9:     Call 0.Method_Proc_180_56_1798D600 (CInt(&HA), var_190)
  loc_17971B8:     Proc_6_7_F25D88(var_1B0, CVar(var_190))
  loc_17971CB:     Set var_1F4 = Me.Txt
  loc_17971D1:     Call 0.Method_Proc_180_56_1798D600 (CInt(6), var_1F8)
  loc_17971EC:     Set var_200 = Me.Txt
  loc_17971F2:     Call 0.Method_Proc_180_56_1798D600 (CInt(7), var_204)
  loc_179720D:     Set var_250 = Me.Txt
  loc_1797213:     Call 0.Method_Proc_180_56_1798D600 (CInt(8), var_254)
  loc_179721B:     var_258 = var_254.Text
  loc_179722E:     Set var_25C = Me.Txt
  loc_1797234:     Call 0.Method_Proc_180_56_1798D600 (CInt(9), var_260)
  loc_179724F:     Set var_36C = Me.Txt
  loc_1797255:     Call 0.Method_Proc_180_56_1798D600 (CInt(4), var_370)
  loc_1797270:     Set var_3B8 = Me.Txt
  loc_1797276:     Call 0.Method_Proc_180_56_1798D600 (CInt(5), var_3BC)
  loc_179728B:     var_48C = Val(var_3BC.Text)
  loc_179729C:     Proc_6_7_F25D88(var_420, Now)
  loc_17972B5:     var_C8 = "Insert into HappyHoursHead(SchemeCode,ItemCat,ItemGroup,RestCode,AppDate,EndDate,FromTime,ToTime,U_Name,U_AE,Site_Code,LogSite_Code,DiscountType,DiscountValue,U_EntDt) " & " Values ('"
  loc_17972F2:     var_140 = var_C8 & global_76 & "','" & Proc_6_38_E68A98(CVar(var_D0.Tag)) & "','" & Proc_6_38_E68A98(var_C4) & "','" & Proc_6_38_E68A98(CVar(var_130.Tag))
  loc_17972FF:     var_178 = CVar(var_140 & "',") & var_158 
  loc_1797354:     var_288 = var_178 & "," & var_1B0 & "," & "'" & CVar(var_1F8.Text & ":" & var_204.Text) & "','" & CVar(var_258 & ":" & var_260.Text) 
  loc_17973A0:     var_394 = var_288 & "','" & CVar(MemVar_1F920C8) & "','A','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "','" & CVar(var_370.Text) 
  loc_17973A9:     var_3B4 = var_394 & "'," 
  loc_17973C4:     var_430 = var_3B4 & CVar(var_48C) & "," & var_420 
  loc_17973DB:     unk_4CA80E.Execute CStr(var_430 & ")"), var_474, -1
  loc_1797488:   Else
  loc_179748C:     Set var_94 = Me.TopCtrl1
  loc_1797492:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E(var_478)
  loc_17974A7:     If (var_48C = "Edit") Then
  loc_17974B8:       Set var_94 = Me.Txt
  loc_17974BE:       Call 0.Method_Proc_180_56_1798D600 (CInt(2), var_D0)
  loc_17974D9:       Set var_E4 = Me.Txt
  loc_17974DF:       Call 0.Method_Proc_180_56_1798D600 (CInt(1), var_118)
  loc_17974FA:       Set var_12C = Me.Txt
  loc_1797500:       Call 0.Method_Proc_180_56_1798D600 (CInt(0), var_130)
  loc_1797518:       Set var_144 = Me.Txt
  loc_179751E:       Call 0.Method_Proc_180_56_1798D600 (CInt(3), var_148)
  loc_179752D:       Proc_6_7_F25D88(var_C4, CVar(var_148))
  loc_179753D:       Set var_18C = Me.Txt
  loc_1797543:       Call 0.Method_Proc_180_56_1798D600 (CInt(&HA), var_190)
  loc_1797552:       Proc_6_7_F25D88(var_178, CVar(var_190))
  loc_1797565:       Set var_1F4 = Me.Txt
  loc_179756B:       Call 0.Method_Proc_180_56_1798D600 (CInt(6), var_1F8)
  loc_1797573:       var_124 = var_1F8.Text
  loc_1797586:       Set var_200 = Me.Txt
  loc_179758C:       Call 0.Method_Proc_180_56_1798D600 (CInt(7), var_204)
  loc_17975A7:       Set var_250 = Me.Txt
  loc_17975AD:       Call 0.Method_Proc_180_56_1798D600 (CInt(8), var_254)
  loc_17975B5:       var_138 = var_254.Text
  loc_17975C8:       Set var_25C = Me.Txt
  loc_17975CE:       Call 0.Method_Proc_180_56_1798D600 (CInt(9), var_260)
  loc_17975E9:       Set var_36C = Me.Txt
  loc_17975EF:       Call 0.Method_Proc_180_56_1798D600 (CInt(4), var_370)
  loc_179760A:       Set var_3B8 = Me.Txt
  loc_1797610:       Call 0.Method_Proc_180_56_1798D600 (CInt(5), var_3BC)
  loc_1797636:       Proc_6_7_F25D88(var_3B4, Date)
  loc_1797656:       var_10C = "UPDATE HappyHoursHead SET ItemCat ='" & var_D0.Tag & "', ItemGroup='"
  loc_179766B:       var_120 = var_10C & var_118.Tag & "',RestCode='" & var_130.Tag
  loc_17976AF:       var_1D0 = CVar(var_120 & "', AppDate=") & var_C4 & ", EndDate=" & var_178 & ", FromTime='" & CVar(var_124 & ":" & var_204.Text) & "', ToTime='" 
  loc_17976BA:       var_140 = var_138 & ":"
  loc_17976C4:       var_21C = var_1D0 & CVar(var_140 & var_260.Text) 
  loc_17976EA:       var_288 = var_21C & "',U_Name='" & CVar(MemVar_1F920C8) & "', U_AE='E',Site_Code='" & CVar(MemVar_1F92070) 
  loc_179770D:       var_308 = CVar(var_370.Text) 'String
  loc_1797724:       var_368 = var_288 & "', LogSite_Code='" & CVar(MemVar_1F92078) & "',DiscountType='" & var_308 & "',DiscountValue=" & CVar(Val(var_3BC.Text)) 
  loc_179772D:       var_384 = var_368 & ",U_EntDt=" 
  loc_179773D:       var_400 = var_384 & var_3B4 & " WHERE SchemeCode='" 
  loc_1797761:       unk_4CA80E.Execute CStr(var_400 & CVar(global_76) & "'"), var_430, -1
  loc_17977FB:     End If
  loc_17977FB:   End If
  loc_1797820:   For var_4A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_4A0 'Integer
  loc_179782A:     Set var_94 = Me.TopCtrl1
  loc_1797830:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E(1)
  loc_1797845:     If (var_478 = "Edit") Then
  loc_179784C:       var_A4 = CVar(CLng(var_86)) 'Long
  loc_179786E:       var_C8 = CStr(Me.FGrid.TextMatrix))
  loc_179787F:       If (var_C8 <> vbNullString) Then
  loc_1797890:         Set var_94 = Me.Txt
  loc_1797896:         Call 0.Method_Proc_180_56_1798D600 (CInt(4), var_D0, var_C8, CVar(CLng(5)))
  loc_179789E:         var_A4 = var_D0.Text
  loc_17978B5:         If (var_C8 <> vbNullString) Then
  loc_17978BC:           var_A4 = CVar(CLng(var_86)) 'Long
  loc_17978C4:           var_1E0 = CVar(CLng(5)) 'Long
  loc_17978E6:           var_48C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17978F7:           Set var_D0 = Me.Txt
  loc_17978FD:           Call 0.Method_Proc_180_56_1798D600 (CInt(4), var_E4, var_10C, var_48C)
  loc_1797905:           var_1E0 = var_E4.Text
  loc_179791F:           Set var_118 = Me.FGrid
  loc_1797925:           var_C4 = var_118.TextMatrix)
  loc_179796D:           Proc_6_7_F25D88(var_21C, Date, var_C4, CVar(CLng(6)))
  loc_1797980:           Set var_12C = Me.Txt
  loc_1797986:           Call 0.Method_Proc_180_56_1798D600 (CInt(6), var_130, var_120, CVar(CLng(var_86)))
  loc_179798E:           var_A4 = var_130.Text
  loc_179799A:           var_128 = var_120 & ":"
  loc_17979AB:           Set var_144 = Me.Txt
  loc_17979B1:           Call 0.Method_Proc_180_56_1798D600 (CInt(7), var_148, var_124)
  loc_17979B9:           var_128 = var_148.Text
  loc_17979C8:           Proc_6_17_EAA2B0(var_288, CVar(var_48C & var_124))
  loc_17979DB:           Set var_18C = Me.Txt
  loc_17979E1:           Call 0.Method_Proc_180_56_1798D600 (CInt(8), var_190)
  loc_17979E9:           var_134 = var_190.Text
  loc_17979F5:           var_13C = var_134 & ":"
  loc_1797A06:           Set var_1F4 = Me.Txt
  loc_1797A0C:           Call 0.Method_Proc_180_56_1798D600 (CInt(9), var_1F8, var_138)
  loc_1797A14:           var_13C = var_1F8.Text
  loc_1797A1D:           var_2E8 = CVar(var_C4 & var_138) 'String
  loc_1797A23:           Proc_6_17_EAA2B0(var_308)
  loc_1797A33:           Set var_200 = Me.Txt
  loc_1797A39:           Call 0.Method_Proc_180_56_1798D600 (CInt(3), var_204)
  loc_1797A48:           Proc_6_7_F25D88(var_384, CVar(var_204))
  loc_1797A58:           Set var_250 = Me.Txt
  loc_1797A5E:           Call 0.Method_Proc_180_56_1798D600 (CInt(&HA), var_254)
  loc_1797A6D:           Proc_6_7_F25D88(var_400, CVar(var_254))
  loc_1797A76:           var_4F0 = CVar(CLng(var_86)) 'Long
  loc_1797A7E:           var_510 = CVar(CLng(2)) 'Long
  loc_1797A87:           Set var_25C = Me.FGrid
  loc_1797A8D:           var_430 = var_25C.TextMatrix)
  loc_1797AA7:           Set var_260 = Me.Txt
  loc_1797AAD:           Call 0.Method_Proc_180_56_1798D600 (CInt(0), var_36C, var_140, var_430)
  loc_1797AB5:           var_510 = var_36C.Tag
  loc_1797ADA:           var_110 = "Update HappyHours Set DiscountValue=" & CStr(var_48C) & ",DiscountType='"
  loc_1797AE1:           var_114 = var_110 & var_10C
  loc_1797B0A:           var_1B0 = CVar(var_114 & "', Active='") & IIf((CStr(var_C4) = "Yes"), "Y", "N") & "', Site_Code='" & CVar(MemVar_1F92070) & "',U_name='" 
  loc_1797B4D:           var_348 = var_1B0 & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_21C & ",U_AE='E',FromTime=" & var_288 & ", ToTime=" & var_308 & ", AppDate=" 
  loc_1797B8B:           var_560 = var_348 & var_384 & ", EndDate=" & var_400 & " Where ItemCode='" & CVar(CStr(var_430)) & "' And RestCode='" & CVar(var_140) 
  loc_1797BB8:           unk_4CA80E.Execute CStr(var_560 & "' And SchemeCode='" & CVar(global_76) & "'"), var_5E0, -1
  loc_1797C5F:         Else
  loc_1797C63:           var_A4 = CVar(CLng(var_86)) 'Long
  loc_1797C8D:           var_48C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1797CA5:           Set var_D0 = Me.FGrid
  loc_1797CAB:           var_C4 = var_D0.TextMatrix)
  loc_1797CC7:           var_F8 = "Y"
  loc_1797CE8:           var_1F0 = Date
  loc_1797CF3:           Proc_6_7_F25D88(var_21C, var_1F0, var_C4, CVar(CLng(6)), CVar(CLng(var_86)), var_48C)
  loc_1797D06:           Set var_E4 = Me.Txt
  loc_1797D0C:           Call 0.Method_Proc_180_56_1798D600 (CInt(6), var_118, var_110, CVar(CLng(5)))
  loc_1797D14:           var_A4 = var_118.Text
  loc_1797D31:           Set var_12C = Me.Txt
  loc_1797D37:           Call 0.Method_Proc_180_56_1798D600 (CInt(7), var_130, var_114, var_110 & ":")
  loc_1797D3F:           var_370 = var_130.Text
  loc_1797D48:           var_278 = CVar(var_4F0 & var_114) 'String
  loc_1797D4E:           Proc_6_17_EAA2B0(var_288, var_278)
  loc_1797D61:           Set var_144 = Me.Txt
  loc_1797D67:           Call 0.Method_Proc_180_56_1798D600 (CInt(8), var_148)
  loc_1797D6F:           var_120 = var_148.Text
  loc_1797D7B:           var_128 = var_120 & ":"
  loc_1797D8C:           Set var_18C = Me.Txt
  loc_1797D92:           Call 0.Method_Proc_180_56_1798D600 (CInt(9), var_190, var_124)
  loc_1797D9A:           var_128 = var_190.Text
  loc_1797DA3:           var_2E8 = CVar(var_2E8 & var_124) 'String
  loc_1797DA9:           Proc_6_17_EAA2B0(var_308)
  loc_1797DB9:           Set var_1F4 = Me.Txt
  loc_1797DBF:           Call 0.Method_Proc_180_56_1798D600 (CInt(3), var_1F8)
  loc_1797DCE:           Proc_6_7_F25D88(var_384, CVar(var_1F8))
  loc_1797DDE:           Set var_200 = Me.Txt
  loc_1797DE4:           Call 0.Method_Proc_180_56_1798D600 (CInt(&HA), var_204)
  loc_1797DF3:           Proc_6_7_F25D88(var_400, CVar(var_204))
  loc_1797DFC:           var_4F0 = CVar(CLng(var_86)) 'Long
  loc_1797E04:           var_510 = CVar(CLng(2)) 'Long
  loc_1797E13:           var_430 = Me.FGrid.TextMatrix)
  loc_1797E2D:           Set var_254 = Me.Txt
  loc_1797E33:           Call 0.Method_Proc_180_56_1798D600 (CInt(0), var_25C, var_134, var_430)
  loc_1797E3B:           var_510 = var_25C.Tag
  loc_1797E59:           var_E8 = "Update HappyHours Set DiscountValue=" & CStr(var_48C)
  loc_1797E66:           var_178 = CVar(var_E8 & ", Active='") & IIf((CStr(var_C4) = "Yes"), var_F8, "N") 
  loc_1797E6F:           var_188 = var_178 & "', Site_Code='" 
  loc_1797EA5:           var_24C = var_188 & CVar(MemVar_1F92070) & "',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_21C & ",U_AE='E',FromTime=" 
  loc_1797EE5:           var_420 = var_24C & var_288 & ", ToTime=" & var_308 & ", AppDate=" & var_384 & ", EndDate=" & var_400 & " Where ItemCode='" 
  loc_1797EED:           var_450 = CVar(CStr(var_430)) 'String
  loc_1797EF0:           var_474 = var_420 & var_450 
  loc_1797F26:           var_138 = CStr(var_474 & "' And RestCode='" & CVar(var_134) & "' AND SchemeCode='" & CVar(global_76) & "'")
  loc_1797F30:           unk_4CA80E.Execute var_138, var_5E0, -1
  loc_1797FCA:         End If
  loc_1797FCA:       End If
  loc_1797FCA:     End If
  loc_1797FCE:     Set var_94 = Me.TopCtrl1
  loc_1797FD4:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E(var_260)
  loc_1797FE9:     If (var_4F0 = "Add") Then
  loc_1797FF7:       Set var_94 = Me.Txt
  loc_1797FFD:       Call 0.Method_Proc_180_56_1798D600 (CInt(4), var_D0)
  loc_1798026:       If (Proc_183_19_E8DAFC(var_D0, "Discount Type") = 0) Then
  loc_1798030:         Call Txt_GotFocus(CInt(4))
  loc_1798035:         Exit Sub
  loc_1798036:       End If
  loc_1798041:       Set var_94 = Me.Txt
  loc_1798047:       Call 0.Method_Proc_180_56_1798D600 (CInt(5), var_D0)
  loc_1798058:       Set var_E4 = var_D0
  loc_1798070:       If (Proc_183_19_E8DAFC(var_E4, "Discount Value") = 0) Then
  loc_179807A:         Call Txt_GotFocus(CInt(5))
  loc_179807F:         Exit Sub
  loc_1798080:       End If
  loc_1798084:       var_A4 = CVar(CLng(var_86)) 'Long
  loc_179808C:       var_1E0 = CVar(CLng(2)) 'Long
  loc_179809B:       var_B4 = Me.FGrid.TextMatrix)
  loc_17980B5:       Set var_D0 = Me.Txt
  loc_17980BB:       Call 0.Method_Proc_180_56_1798D600 (CInt(0), var_E4, var_E8, var_B4)
  loc_17980C3:       var_1E0 = var_E4.Tag
  loc_17980D3:       Set var_118 = Me.Txt
  loc_17980D9:       Call 0.Method_Proc_180_56_1798D600 (CInt(3), var_12C)
  loc_17980E8:       Proc_6_7_F25D88(var_F8, CVar(var_12C))
  loc_17980F3:       var_2D8 = 0
  loc_1798129:       var_108 = CVar("Select count(*) From HappyHours Where ItemCode='" & CStr(var_B4) & "' And RestCode='" & var_E8 & "' And AppDate=") 'String
  loc_179812F:       var_158 = var_108 & var_F8 
  loc_1798146:       unk_4CA80E.Execute CStr(var_158 & vbNullString), var_178, -1
  loc_179814E:       var_130 = var_130.Fields
  loc_1798156:       var_2D8 = var_144.Item(var_144)
  loc_179815E:       var_148 = var_148.Value
  loc_17981A1:       If (var_188 > 0) Then
  loc_17981A8:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_17981BF:         var_B4 = Me.FGrid.TextMatrix)
  loc_17981E0:         var_C8 = CStr(var_B4)
  loc_17981F5:         var_10C = " !" & vbCrLf & " Change Previous One !"
  loc_1798222:         If (MsgBox(CVar("Entry Already Exist For Item Code " & var_C8 & var_10C), &H44, var_F8, var_108, var_158) = 6) Then
  loc_1798233:           Set var_94 = Me.Txt
  loc_1798239:           Call 0.Method_Proc_180_56_1798D600 (CInt(4), var_D0, var_C8, var_B4, CVar(CLng(1)))
  loc_1798241:           var_A4 = var_D0.Text
  loc_1798258:           If (var_C8 <> vbNullString) Then
  loc_1798269:             Set var_94 = Me.Txt
  loc_179826F:             Call 0.Method_Proc_180_56_1798D600 (CInt(5), var_D0, var_C8)
  loc_1798277:             var_188 = var_D0.Text
  loc_1798284:             var_48C = Val(var_C8)
  loc_1798295:             Set var_E4 = Me.Txt
  loc_179829B:             Call 0.Method_Proc_180_56_1798D600 (CInt(4), var_118, var_10C)
  loc_17982AC:             var_A4 = CVar(CLng(var_86)) 'Long
  loc_17982BD:             Set var_12C = Me.FGrid
  loc_17982C3:             var_B4 = var_12C.TextMatrix)
  loc_17982E9:             var_11C = CStr(var_B4)
  loc_179830B:             Proc_6_7_F25D88(var_1F0, Date, var_B4, CVar(CLng(6)))
  loc_179831E:             Set var_130 = Me.Txt
  loc_1798324:             Call 0.Method_Proc_180_56_1798D600 (CInt(6), var_144, var_120)
  loc_1798338:             var_128 = var_120 & ":"
  loc_1798349:             Set var_148 = Me.Txt
  loc_179834F:             Call 0.Method_Proc_180_56_1798D600 (CInt(7), var_18C, var_124)
  loc_1798357:             var_128 = var_18C.Text
  loc_1798366:             Proc_6_17_EAA2B0(var_278, CVar(var_144.Text & var_124))
  loc_1798379:             Set var_190 = Me.Txt
  loc_179837F:             Call 0.Method_Proc_180_56_1798D600 (CInt(8), var_1F4)
  loc_1798393:             var_13C = var_1F4.Text & ":"
  loc_17983A4:             Set var_1F8 = Me.Txt
  loc_17983AA:             Call 0.Method_Proc_180_56_1798D600 (CInt(9), var_200, var_138)
  loc_17983B2:             var_13C = var_200.Text
  loc_17983BB:             var_2C8 = CVar(var_2E8 & var_138) 'String
  loc_17983C1:             Proc_6_17_EAA2B0(var_2E8)
  loc_17983CA:             var_464 = CVar(CLng(var_86)) 'Long
  loc_17983D2:             var_4B0 = CVar(CLng(2)) 'Long
  loc_17983DB:             Set var_204 = Me.FGrid
  loc_17983E1:             var_348 = var_204.TextMatrix)
  loc_17983FB:             Set var_250 = Me.Txt
  loc_1798401:             Call 0.Method_Proc_180_56_1798D600 (CInt(0), var_254, var_140, var_348)
  loc_1798409:             var_4B0 = var_254.Tag
  loc_1798419:             Set var_25C = Me.Txt
  loc_179841F:             Call 0.Method_Proc_180_56_1798D600 (CInt(3), var_260)
  loc_179842E:             Proc_6_7_F25D88(var_420, CVar(var_260))
  loc_179845A:             var_114 = "Update HappyHours Set DiscountValue=" & CStr(var_118.Text) & ",DiscountType='" & var_10C
  loc_1798483:             var_1A0 = CVar(var_114 & "', Active='") & IIf((var_11C = "Yes"), "Y", "N") & "', Site_Code='" & CVar(MemVar_1F92070) & "',U_name='" 
  loc_17984BD:             var_308 = var_1A0 & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_1F0 & ",U_AE='E',FromTime=" & var_278 & ", ToTime=" & var_2E8 
  loc_17984F4:             var_430 = var_308 & "  Where ItemCode='" & CVar(CStr(var_348)) & "' And RestCode='" & CVar(var_140) & "' And AppDate=" & var_420 
  loc_17984F8:             var_1FC = CStr(var_430)
  loc_1798502:             unk_4CA80E.Execute var_1FC, var_450, -1
  loc_1798599:           Else
  loc_17985A7:             Set var_94 = Me.Txt
  loc_17985AD:             Call 0.Method_Proc_180_56_1798D600 (CInt(5), var_D0, var_C8)
  loc_17985B5:             var_36C = var_D0.Text
  loc_17985CC:             var_48C = Val(CStr(Val(var_C8)))
  loc_17985E4:             Set var_E4 = Me.FGrid
  loc_17985EA:             var_B4 = var_E4.TextMatrix)
  loc_179861F:             var_108 = IIf((CStr(var_B4) = "Yes"), "Y", "N")
  loc_1798632:             Proc_6_7_F25D88(var_1F0, Date, var_B4, CVar(CLng(6)))
  loc_1798645:             Set var_118 = Me.Txt
  loc_179864B:             Call 0.Method_Proc_180_56_1798D600 (CInt(6), var_12C, var_114, CVar(CLng(var_86)))
  loc_179865F:             var_120 = var_114 & ":"
  loc_1798670:             Set var_130 = Me.Txt
  loc_1798676:             Call 0.Method_Proc_180_56_1798D600 (CInt(7), var_144, var_11C)
  loc_179867E:             var_120 = var_144.Text
  loc_179868D:             Proc_6_17_EAA2B0(var_278, CVar(var_464 & var_11C))
  loc_17986A0:             Set var_148 = Me.Txt
  loc_17986A6:             Call 0.Method_Proc_180_56_1798D600 (CInt(8), var_18C)
  loc_17986BA:             var_134 = var_18C.Text & ":"
  loc_17986CB:             Set var_190 = Me.Txt
  loc_17986D1:             Call 0.Method_Proc_180_56_1798D600 (CInt(9), var_1F4, var_128)
  loc_17986D9:             var_134 = var_1F4.Text
  loc_17986E2:             var_2C8 = CVar(var_2C8 & var_128) 'String
  loc_17986E8:             Proc_6_17_EAA2B0(var_2E8)
  loc_17986F1:             var_464 = CVar(CLng(var_86)) 'Long
  loc_17986F9:             var_4B0 = CVar(CLng(2)) 'Long
  loc_1798702:             Set var_1F8 = Me.FGrid
  loc_1798708:             var_348 = var_1F8.TextMatrix)
  loc_1798722:             Set var_200 = Me.Txt
  loc_1798728:             Call 0.Method_Proc_180_56_1798D600 (CInt(0), var_204, var_138, var_348)
  loc_1798730:             var_4B0 = var_204.Tag
  loc_1798740:             Set var_250 = Me.Txt
  loc_1798746:             Call 0.Method_Proc_180_56_1798D600 (CInt(3), var_254)
  loc_1798755:             Proc_6_7_F25D88(var_420, CVar(var_254))
  loc_1798793:             var_188 = CVar("Update HappyHours Set DiscountValue=" & CStr(var_12C.Text) & ", Active='") & var_108 & "', Site_Code='" & CVar(MemVar_1F92070) 
  loc_17987CF:             var_2A8 = var_188 & "',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_1F0 & ",U_AE='E',FromTime=" & var_278 & ", ToTime=" 
  loc_17987D6:             var_308 = var_2A8 & var_2E8 
  loc_17987EA:             var_384 = var_308 & "  Where ItemCode='" & CVar(CStr(var_348)) 
  loc_1798811:             var_13C = CStr(var_384 & "' And RestCode='" & CVar(var_138) & "' And AppDate=" & var_420)
  loc_179881B:             unk_4CA80E.Execute var_13C, var_450, -1
  loc_17988A7:           End If
  loc_17988A7:         End If
  loc_17988AA:       Else
  loc_17988AE:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_17988C5:         var_B4 = Me.FGrid.TextMatrix)
  loc_17988DF:         Set var_D0 = Me.Txt
  loc_17988E5:         Call 0.Method_Proc_180_56_1798D600 (CInt(0), var_E4, var_114, var_B4, CVar(CLng(2)))
  loc_17988ED:         var_A4 = var_E4.Tag
  loc_179890D:         var_C4 = Me.FGrid.TextMatrix)
  loc_1798920:         var_48C = Val(CStr(var_C4))
  loc_179892E:         Set var_12C = Me.Txt
  loc_1798934:         Call 0.Method_Proc_180_56_1798D600 (CInt(3), var_130, var_48C, CVar(CLng(5)))
  loc_179893C:         var_F8 = CVar(var_130) 'Address
  loc_1798943:         Proc_6_7_F25D88(var_108, var_F8, CVar(CLng(var_86)))
  loc_1798956:         Proc_6_7_F25D88(var_1F0, Date, var_25C)
  loc_1798969:         Set var_144 = Me.Txt
  loc_179896F:         Call 0.Method_Proc_180_56_1798D600 (CInt(4), var_148, var_13C)
  loc_1798977:         var_464 = var_148.Text
  loc_179898A:         Set var_18C = Me.Txt
  loc_1798990:         Call 0.Method_Proc_180_56_1798D600 (CInt(6), var_190)
  loc_17989A4:         var_208 = var_190.Text & ":"
  loc_17989B5:         Set var_1F4 = Me.Txt
  loc_17989BB:         Call 0.Method_Proc_180_56_1798D600 (CInt(7), var_1F8, var_1FC)
  loc_17989C3:         var_208 = var_1F8.Text
  loc_17989D2:         Proc_6_17_EAA2B0(var_308)
  loc_17989E5:         Set var_200 = Me.Txt
  loc_17989EB:         Call 0.Method_Proc_180_56_1798D600 (CInt(8), var_204)
  loc_17989FF:         var_264 = var_204.Text & ":"
  loc_1798A10:         Set var_250 = Me.Txt
  loc_1798A16:         Call 0.Method_Proc_180_56_1798D600 (CInt(9), var_254, var_258)
  loc_1798A1E:         var_264 = var_254.Text
  loc_1798A27:         var_368 = CVar(CVar(var_2C8 & var_1FC) & var_258) 'String
  loc_1798A2D:         Proc_6_17_EAA2B0(var_384)
  loc_1798A36:         var_4D0 = CVar(CLng(var_86)) 'Long
  loc_1798A3E:         var_4F0 = CVar(CLng(6)) 'Long
  loc_1798A9B:         var_C8 = "Insert Into HappyHours(SchemeCode,ItemCode,RestCode,DiscountValue,AppDate,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE,DiscountType,FromTime,ToTime,Active)" & " Values('"
  loc_1798AA5:         var_CC = var_C8 & global_76
  loc_1798AF8:         var_188 = CVar(var_CC & "','" & CStr(var_B4) & "','" & var_114 & "'," & CStr(var_48C) & ",") & var_108 & ",'" & CVar(MemVar_1F92070) 
  loc_1798B4A:         var_2C8 = var_188 & "','" & CVar(MemVar_1F920C8) & "'," & var_1F0 & ",'A','" & CVar(MemVar_1F92078) & "','" & CVar(var_13C) & "'," 
  loc_1798B88:         unk_4CA80E.Execute CStr(var_2C8 & var_308 & "," & var_384 & ",'" & IIf((CStr(Me.FGrid.TextMatrix)) = "Yes"), "Y", "N") & "')"), var_474, -1
  loc_1798C28:       End If
  loc_1798C28:     End If
  loc_1798C2B:   Next var_4A0 'Integer
  loc_1798C30: End If
  loc_1798C36: unk_4CA80E.CommitTrans
  loc_1798C3F: var_88 = CByte(0) 'Byte
  loc_1798C4E: Me.Requery -1
  loc_1798C76: Call Proc_180_53_EB5680(Proc_5_1_100CB50("INI", Me))
  loc_1798C8C: Set var_94 = Me.TxtGrid
  loc_1798C92: Call 0.Method_Proc_180_56_1798D600 (0, var_D0)
  loc_1798C9A: var_D0.Visible = False
  loc_1798CBF: MsgBox("Record Saved !!", &H40, var_C4, var_F8, var_108)
  loc_1798CCF: Call Proc_180_48_15BEFB0(global_68)
  loc_1798CD4: Exit Sub
  loc_1798CD5: ' Referenced from: 1796F64
  loc_1798CDE: If (CInt(var_88) = 1) Then
  loc_1798CE7:   unk_4CA80E.RollbackTrans
  loc_1798CEC: End If
  loc_1798CF4: Set var_94 = Err()
  loc_1798CFA: Call 0.Method_arg_1C (var_90)
  loc_1798D07: Set var_D0 = Err()
  loc_1798D0D: Call 0.Method_arg_2C (var_CC)
  loc_1798D3E: MsgBox(CVar(CStr(var_90) & " : " & var_CC), &H10, "Message ", var_F8, var_108)
  loc_1798D5E: Exit Sub
End Sub
