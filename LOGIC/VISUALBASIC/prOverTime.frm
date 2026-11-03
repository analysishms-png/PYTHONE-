VERSION 5.00
Begin VB.Form prOverTime
  Caption = "Over Time"
  BackColor = &HD0C7BB&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "prOverTime.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8235
  ClientHeight = 5940
  Begin DataGrid DGEmployee
    Left = 6330
    Top = 5505
    Width = 11250
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin DataGrid DGMaster
    Left = 1155
    Top = 3675
    Width = 11970
    Height = 3375
    TabIndex = 10
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8235
    Height = 405
    TabIndex = 18
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC00000&
    Left = 4725
    Top = 2235
    Width = 1320
    Height = 315
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
    Index = 5
    Left = 3375
    Top = 2580
    Width = 4620
    Height = 1065
    TabIndex = 6
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 3375
    Top = 2235
    Width = 1320
    Height = 315
    TabIndex = 4
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
  Begin PictureBox Picture3
    Picture = "prOverTime.frx":1082
    Left = 14580
    Top = 960
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 14
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3765
    Top = 1890
    Width = 360
    Height = 315
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 2
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
    Left = 3375
    Top = 1890
    Width = 360
    Height = 315
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 2
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
    Left = 3375
    Top = 1545
    Width = 1335
    Height = 315
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3375
    Top = 1230
    Width = 4300
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
  Begin MSFlexGrid FGPoint
    Left = 5730
    Top = 5385
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 13
  End
  Begin Label LblEmpRef
    Caption = "."
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 7785
    Top = 1230
    Width = 105
    Height = 270
    TabIndex = 23
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 435
    Width = 180
    Height = 540
    TabIndex = 21
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 7245
    Top = 8655
    Width = 2790
    Height = 285
    TabIndex = 20
    Alignment = 2 'Center
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
    Left = 3870
    Top = 8655
    Width = 2880
    Height = 255
    TabIndex = 19
    Alignment = 2 'Center
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
  Begin Label Label1
    Caption = "Amount"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 5085
    Top = 2250
    Width = 735
    Height = 270
    TabIndex = 17
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Remark"
    Index = 7
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 1815
    Top = 2580
    Width = 735
    Height = 270
    TabIndex = 16
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "OT Rate / Hr"
    Index = 5
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 1785
    Top = 2250
    Width = 1155
    Height = 270
    TabIndex = 15
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Caption = ":"
    ForeColor = &HC00000&
    Left = 3795
    Top = 2055
    Width = 60
    Height = 270
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Min"
    Index = 0
    ForeColor = &HC00000&
    Left = 4185
    Top = 1905
    Width = 390
    Height = 270
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
  Begin Label Label3
    Caption = "Over TIme    Hr"
    ForeColor = &HC00000&
    Left = 1785
    Top = 1905
    Width = 1440
    Height = 240
    TabIndex = 9
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
    Caption = "Over Time Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 1785
    Top = 1560
    Width = 1485
    Height = 270
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
  Begin Label LblName
    Caption = "Employee"
    Index = 0
    ForeColor = &HC00000&
    Left = 1785
    Top = 1230
    Width = 945
    Height = 240
    TabIndex = 7
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

Attribute VB_Name = "prOverTime"


Private Sub FGPoint_UnknownEvent_9 'E3C134
  'Data Table: 48BBCC
  loc_E3C128: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_E3C12B:   Call DGEmployee_UnknownEvent_9()
  loc_E3C130: End If
  loc_E3C130: Exit Sub
End Sub

Private Sub DGMaster_UnknownEvent_22 'E52AB8
  'Data Table: 48BBCC
  loc_E52A8C: Set var_88 = Me.TopCtrl1
  loc_E52A92: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C()
  loc_E52AAB: If (CStr() <> "Browse") Then
  loc_E52AAE:   Exit Sub
  loc_E52AAF: End If
  loc_E52AAF: Call Proc_309_30_1302FDC()
  loc_E52AB4: Exit Sub
  loc_E52AB5: ThisVCallHidden
End Sub

Private Sub DGEmployee_UnknownEvent_9 'F3A964
  'Data Table: 48BBCC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3A85B: Me.DGEmployee.Visible = False
  loc_F3A87A: If (Me.RecordCount > 0) Then
  loc_F3A8B9:   Set var_B4 = Me.Txt
  loc_F3A8BF:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3A8C7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3A8FA:   var_B0 = Me.Fields.Item("Code")
  loc_F3A919:   Set var_B4 = Me.Txt
  loc_F3A91F:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3A927:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3A93D: End If
  loc_F3A948: Set var_A8 = Me.Txt
  loc_F3A94E: Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(0))
  loc_F3A956: var_B0.SetFocus
  loc_F3A962: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_1F 'EA6980
  'Data Table: 48BBCC
  Dim var_A8 As Variant
  loc_EA6900: Set var_88 = Me.DGEmployee
  loc_EA692A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6932: Set var_BC = Me.DGEmployee
  loc_EA696E: Proc_6_138_106D6F8(Me.DGEmployee, global_56, CInt(0), Me.FGPoint)
  loc_EA697C: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '104D584
  'Data Table: 48BBCC
  Dim var_8C As TextBox
  Dim var_C4 As Variant
  Dim var_C6 As Integer
  Dim Me As Recordset15
  Dim var_E4 As String
  Dim var_90 As Fields15
  loc_104D336: Set var_88 = Me.Txt
  loc_104D33C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_104D34A: Proc_6_74_E226B0(var_8C)
  loc_104D365: Set var_88 = Me.Txt
  loc_104D36B: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_104D373: var_8C.SelStart = 0
  loc_104D389: Set var_88 = Me.Txt
  loc_104D38F: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_104D3B6: Set var_90 = Me.Txt
  loc_104D3BC: Call 0.Method_Txt_GotFocus0 (Index, var_C4)
  loc_104D3C4: var_C4.SelLength = CLng(Len(Trim(CVar(var_8C))))
  loc_104D3D9: Call Proc_309_32_E84280(var_8C)
  loc_104D3E1: var_C6 = Index
  loc_104D3EC: If (var_C6 = CInt(0)) Then
  loc_104D406:   If (Me.RecordCount > 0) Then
  loc_104D414:     Set var_8C = Me.FGPoint
  loc_104D42C:     Proc_6_137_1193554(Me.DGEmployee, global_56, Index)
  loc_104D43A:   End If
  loc_104D488:   Set var_88 = Me.Txt
  loc_104D48E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_104D496:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_104D4AE:   If (var_8C Or (var_D4 = vbNullString)) Then
  loc_104D4B1:     Exit Sub
  loc_104D4B2:   End If
  loc_104D4BF:   Set var_88 = Me.Txt
  loc_104D4C5:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_104D4CD:   var_D4 = var_8C.Text
  loc_104D4DF:   var_E4 = "Name"
  loc_104D51A:   If CBool(CVar(var_D4) <> Me.Fields.Item(var_E4).Value) Then
  loc_104D523:     Me.MoveFirst
  loc_104D546:     Set var_88 = Me.Txt
  loc_104D54C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name ='")
  loc_104D554:     0 = var_8C.Text
  loc_104D56D:     Me.Find 1 & var_D4 & "'", var_E4, var_C6
  loc_104D582:   End If
  loc_104D582: End If
  loc_104D582: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '105859C
  'Data Table: 48BBCC
  Dim var_8C As Integer
  Dim var_8E As Integer
  Dim Me As Recordset15
  Dim var_94 As DataGrid
  loc_1058333: var_8C = Shift
  loc_1058340: If (CLng(Shift) = &H1B) Then
  loc_1058343:   Call Proc_309_32_E84280(var_8C)
  loc_1058348:   Exit Sub
  loc_1058349: End If
  loc_105834C: var_8E = KeyCode
  loc_1058357: If (var_8E = CInt(0)) Then
  loc_1058377:   Set var_A4 = Me.FGPoint
  loc_1058382:   Set var_A0 = Nothing
  loc_10583B0:   Proc_6_69_134A198(Me.DGEmployee, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_105841F:   If ((Me.RecordCount > 0) And ((((((CLng(var_8C) = &H28) Or (CLng(var_8C) = &H26)) Or (CLng(var_8C) = &H25)) Or (CLng(var_8C) = &H27)) Or (CLng(var_8C) = &H21)) Or (CLng(var_8C) = &H22))) Then
  loc_1058426:     Set var_A0 = Me.DGEmployee
  loc_105842D:     Set var_98 = Me.FGPoint
  loc_1058445:     Proc_6_138_106D6F8(var_A0, global_56, KeyCode, var_98, 1)
  loc_1058453:   End If
  loc_1058456: Else
  loc_105845E:   If Not (var_8E = CInt(2)) Then
  loc_1058469:     If (var_8E = CInt(3)) Then
  loc_105846C:     End If
  loc_1058476:     Set var_94 = Me.Txt
  loc_105847C:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_98, var_A0)
  loc_1058497:     Proc_6_41_FA0BA4(var_98, Shift, 2, 0)
  loc_10584A6:   Else
  loc_10584AE:     If Not (var_8E = CInt(4)) Then
  loc_10584B9:       If (var_8E = CInt(6)) Then
  loc_10584BC:       End If
  loc_10584C6:       Set var_94 = Me.Txt
  loc_10584CC:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_98, var_A4)
  loc_10584E7:       Proc_6_41_FA0BA4(var_98, Shift, 7)
  loc_10584F6:     Else
  loc_10584FE:       If (var_8E = CInt(5)) Then
  loc_1058504:         Proc_6_58_E054C0(Shift, 2)
  loc_1058509:       End If
  loc_1058509:     End If
  loc_1058509:   End If
  loc_1058509: End If
  loc_1058525: If (CBool(Me.DGEmployee.Visible) = 0) Then
  loc_105853B:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_1058544:     Proc_6_76_E52838(Shift, arg_14)
  loc_1058549:   End If
  loc_1058567:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(5))) Then
  loc_105856A:     GoTo loc_1058590
  loc_105856D:   End If
  loc_1058582:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_105858B:     Proc_6_75_E527CC(Shift, arg_14)
  loc_1058590:     ' Referenced from: 105856A
  loc_1058590:   End If
  loc_1058590: End If
  loc_1058595: Set var_88 = Nothing
  loc_1058598: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '11F4F50
  'Data Table: 48BBCC
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  Dim var_118 As Double
  Dim var_B4 As TextBox
  Dim var_120 As Double
  Dim var_C0 As TextBox
  Dim var_128 As Double
  Dim var_10C As TextBox
  loc_11F4AD3: Proc_6_58_E054C0(arg_10)
  loc_11F4ADB: var_86 = KeyAscii
  loc_11F4AE6: If (var_86 = CInt(0)) Then
  loc_11F4B05:   If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_11F4B17:     var_A0 = "Name"
  loc_11F4B32:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56, arg_10)
  loc_11F4B4C:     Set var_A8 = Me.FGPoint
  loc_11F4B64:     Proc_6_138_106D6F8(Me.DGEmployee, global_56, KeyAscii, var_A8)
  loc_11F4B72:   End If
  loc_11F4B75: Else
  loc_11F4B7D:   If Not (var_86 = CInt(2)) Then
  loc_11F4B88:     If (var_86 = CInt(3)) Then
  loc_11F4B8B:     End If
  loc_11F4B95:     Set var_8C = Me.Txt
  loc_11F4B9B:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_11F4BB6:     Proc_6_42_129A86C(var_A8, arg_10, 2)
  loc_11F4BD0:     Set var_8C = Me.Txt
  loc_11F4BD6:     Call 0.Method_Txt_KeyPress0 (CInt(4), var_A8, var_A0)
  loc_11F4BDE:     0 = var_A8.Text
  loc_11F4BEB:     var_118 = Val(var_A0)
  loc_11F4BFC:     Set var_AC = Me.Txt
  loc_11F4C02:     Call 0.Method_Txt_KeyPress0 (CInt(2), var_B4, var_B8)
  loc_11F4C17:     var_120 = Val(var_B8)
  loc_11F4C28:     Set var_BC = Me.Txt
  loc_11F4C2E:     Call 0.Method_Txt_KeyPress0 (CInt(3), var_C0, var_C4)
  loc_11F4C43:     var_128 = Val(var_C4)
  loc_11F4C6A:     var_9C = CVar((var_B4.Text * (var_C0.Text + (var_128 / CDbl(&H3C))))) 'Double
  loc_11F4C88:     Set var_108 = Me.Txt
  loc_11F4C8E:     Call 0.Method_Txt_KeyPress0 (CInt(6), var_10C, CStr(Format(Me.DGEmployee.Visible, "0.00")), 1)
  loc_11F4C96:     var_10C.Text = 1
  loc_11F4CC5:   Else
  loc_11F4CCD:     If (var_86 = CInt(4)) Then
  loc_11F4CDA:       Set var_8C = Me.Txt
  loc_11F4CE0:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_128)
  loc_11F4CFB:       Proc_6_42_129A86C(var_A8, arg_10, 7)
  loc_11F4D15:       Set var_8C = Me.Txt
  loc_11F4D1B:       Call 0.Method_Txt_KeyPress0 (CInt(4), var_A8, var_A0)
  loc_11F4D23:       2 = var_A8.Text
  loc_11F4D30:       var_118 = Val(var_A0)
  loc_11F4D41:       Set var_AC = Me.Txt
  loc_11F4D47:       Call 0.Method_Txt_KeyPress0 (CInt(2), var_B4, var_B8)
  loc_11F4D5C:       var_120 = Val(var_B8)
  loc_11F4D6D:       Set var_BC = Me.Txt
  loc_11F4D73:       Call 0.Method_Txt_KeyPress0 (CInt(3), var_C0, var_C4)
  loc_11F4D88:       var_128 = Val(var_C4)
  loc_11F4DAF:       var_9C = CVar((var_B4.Text * (var_C0.Text + (var_128 / CDbl(&H3C))))) 'Double
  loc_11F4DCD:       Set var_108 = Me.Txt
  loc_11F4DD3:       Call 0.Method_Txt_KeyPress0 (CInt(6), var_10C, CStr(Format(Me.DGEmployee.Visible, "0.00")), 1)
  loc_11F4DDB:       var_10C.Text = 1
  loc_11F4E0A:     Else
  loc_11F4E12:       If (var_86 = CInt(6)) Then
  loc_11F4E1F:         Set var_8C = Me.Txt
  loc_11F4E25:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_128)
  loc_11F4E40:         Proc_6_42_129A86C(var_A8, arg_10, 7)
  loc_11F4E5A:         Set var_8C = Me.Txt
  loc_11F4E60:         Call 0.Method_Txt_KeyPress0 (CInt(6), var_A8, var_A0)
  loc_11F4E68:         2 = var_A8.Text
  loc_11F4E75:         var_118 = Val(var_A0)
  loc_11F4E86:         Set var_AC = Me.Txt
  loc_11F4E8C:         Call 0.Method_Txt_KeyPress0 (CInt(2), var_B4, var_B8)
  loc_11F4EA1:         var_120 = Val(var_B8)
  loc_11F4EB2:         Set var_BC = Me.Txt
  loc_11F4EB8:         Call 0.Method_Txt_KeyPress0 (CInt(3), var_C0, var_C4)
  loc_11F4EF4:         var_9C = CVar((var_B4.Text / (var_C0.Text + (Val(var_C4) / CDbl(&H3C))))) 'Double
  loc_11F4F12:         Set var_108 = Me.Txt
  loc_11F4F18:         Call 0.Method_Txt_KeyPress0 (CInt(4), var_10C, CStr(Format(Me.DGEmployee.Visible, "0.00")), 1)
  loc_11F4F20:         var_10C.Text = 1
  loc_11F4F4C:       End If
  loc_11F4F4C:     End If
  loc_11F4F4C:   End If
  loc_11F4F4C: End If
  loc_11F4F4C: Exit Sub
  loc_11F4F4D: StAryRecMove
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA9BA8
  'Data Table: 48BBCC
  loc_EA9B36: If (KeyCode = CInt(0)) Then
  loc_EA9B55:   If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_EA9B69:     var_A8 = "Name"
  loc_EA9B91:     Proc_6_68_129FB34(Me.DGEmployee, Me.Txt, CInt(0), global_56)
  loc_EA9BA4:   End If
  loc_EA9BA4: End If
  loc_EA9BA4: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48084
  'Data Table: 48BBCC
  loc_E48062: Set var_88 = Me.Txt
  loc_E48068: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48076: Proc_6_73_E22704(var_8C)
  loc_E48082: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14D5B10
  'Data Table: 48BBCC
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_118 As Variant
  Dim var_C4 As Variant
  Dim var_11C As TextBox
  Dim var_148 As Double
  Dim var_150 As Double
  Dim var_158 As Double
  Dim var_140 As String
  Dim var_13C As TextBox
  Dim var_134 As String
  Dim var_15C As TextBox
  Dim var_120 As String
  Dim unk_48BBDA As Connection15
  Dim var_138 As TextBox
  Dim var_104 As Variant
  Dim var_180 As Integer
  Dim var_16C As Recordset15
  Dim var_170 As Fields15
  Dim var_184 As Field20
  Dim var_18C As TextBox
  Dim arg_10 As Integer
  loc_14D4D9F: var_86 = Cancel
  loc_14D4DAA: If (var_86 = CInt(0)) Then
  loc_14D4DFB:   Set var_94 = Me.Txt
  loc_14D4E01:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_14D4E09:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_14D4E21:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_14D4E24:     Exit Sub
  loc_14D4E25:   End If
  loc_14D4E60:   Set var_B0 = Me.Txt
  loc_14D4E66:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_14D4E6E:   var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14D4EBF:   Set var_B0 = Me.Txt
  loc_14D4EC5:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_14D4ECD:   var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14D4F00:   var_98 = Me.Fields.Item("Department")
  loc_14D4F10:   var_D4 = " - "
  loc_14D4F15:   var_E4 = (var_98.Value + var_D4)
  loc_14D4F3E:   var_104 = Me.Fields.Item("Designation").Value
  loc_14D4F46:   var_114 = (var_E4 + var_104)
  loc_14D4F58:   Me.LblEmpRef.Caption = CStr(var_114)
  loc_14D4F86:   Set var_94 = Me.Txt
  loc_14D4F8C:   Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_14D4FC0:   var_B4 = Me.Fields.Item("OTRate")
  loc_14D4FCF:   Proc_6_39_E7C810(var_E4, CVar(var_B4))
  loc_14D4FE9:   Set var_118 = Me.Txt
  loc_14D4FEF:   Call 0.Method_Txt_Validate0 (CInt(4), var_11C)
  loc_14D4FF7:   var_120 = var_11C.Text
  loc_14D500D:   var_114 = (CVar(Val(var_98.Text)) <> var_E4) And (CDbl(Val(var_120)) <> CDbl(0))
  loc_14D5030:   If CBool(var_114) Then
  loc_14D503E:     var_E4 = "Change OT Rate"
  loc_14D506A:     If (MsgBox("Want Change OT Rate Acc. to Employee Master.", &H104, var_E4, var_104, var_114) = 6) Then
  loc_14D5087:       var_98 = Me.Fields.Item("OTRate")
  loc_14D508F:       var_C4 = CVar(var_98) 'Address
  loc_14D5096:       Proc_6_39_E7C810(var_E4)
  loc_14D50BE:       var_9C = CStr(Format(var_E4, "0.00"))
  loc_14D50CD:       Set var_B0 = Me.Txt
  loc_14D50D3:       Call 0.Method_Txt_Validate0 (CInt(4), var_B4, var_9C)
  loc_14D5105:       Set var_94 = Me.Txt
  loc_14D510B:       Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_9C)
  loc_14D5113:       1 = var_98.Text
  loc_14D5120:       var_148 = Val(var_9C)
  loc_14D5131:       Set var_B0 = Me.Txt
  loc_14D5137:       Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_120)
  loc_14D514C:       var_150 = Val(var_120)
  loc_14D515D:       Set var_118 = Me.Txt
  loc_14D5163:       Call 0.Method_Txt_Validate0 (CInt(3), var_11C, var_134)
  loc_14D518A:       var_E4 = "0.00"
  loc_14D519F:       var_C4 = CVar((1 * (var_11C.Text + (Val(var_134) / CDbl(&H3C))))) 'Double
  loc_14D51BD:       Set var_138 = Me.Txt
  loc_14D51C3:       Call 0.Method_Txt_Validate0 (CInt(6), var_13C, CStr(Format(var_C4, var_E4)), 1)
  loc_14D51CB:       var_13C.Text = 1
  loc_14D51F7:     End If
  loc_14D51FA:   Else
  loc_14D5214:     var_98 = Me.Fields.Item("OTRate")
  loc_14D5223:     Proc_6_39_E7C810(var_E4, CVar(var_98))
  loc_14D5243:     var_114 = Format(var_E4, "0.00")
  loc_14D524B:     var_9C = CStr(var_114)
  loc_14D525A:     Set var_B0 = Me.Txt
  loc_14D5260:     Call 0.Method_Txt_Validate0 (CInt(4), var_B4, var_9C, 1)
  loc_14D5292:     Set var_94 = Me.Txt
  loc_14D5298:     Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_9C)
  loc_14D52A0:     var_158 = var_98.Text
  loc_14D52AD:     var_148 = Val(var_9C)
  loc_14D52BE:     Set var_B0 = Me.Txt
  loc_14D52C4:     Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_120)
  loc_14D52D9:     var_150 = Val(var_120)
  loc_14D52EA:     Set var_118 = Me.Txt
  loc_14D52F0:     Call 0.Method_Txt_Validate0 (CInt(3), var_11C, var_134)
  loc_14D532C:     var_C4 = CVar((1 * (var_11C.Text + (Val(var_134) / CDbl(&H3C))))) 'Double
  loc_14D533B:     var_140 = CStr(Format(CVar(var_98), "0.00"))
  loc_14D534A:     Set var_138 = Me.Txt
  loc_14D5350:     Call 0.Method_Txt_Validate0 (CInt(6), var_13C, var_140, 1)
  loc_14D5358:     var_13C.Text = 1
  loc_14D5384:   End If
  loc_14D5387: Else
  loc_14D538F:   If (var_86 = CInt(1)) Then
  loc_14D539F:     Set var_94 = Me.Txt
  loc_14D53A5:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_14D53AD:     var_158 = var_98.Text
  loc_14D53CB:     Set var_B0 = Me.Txt
  loc_14D53D1:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_14D53D9:     var_B4.Text = Proc_6_34_14ECF20(var_9C)
  loc_14D53FE:     Set var_94 = Me.Txt
  loc_14D5404:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_14D541F:     Set var_13C = Me.Txt
  loc_14D5425:     Call 0.Method_Txt_Validate0 (CInt(0), var_15C)
  loc_14D5438:     var_D4 = 0
  loc_14D545C:     var_134 = "Select Max(Joining_date) from employee where code='" & var_98.Tag & "'"
  loc_14D5465:     unk_48BBDA.Execute var_134, CVar(var_98), -1
  loc_14D546D:     var_B0 = var_B0.Fields
  loc_14D5475:     var_D4 = var_B4.Item(var_B4)
  loc_14D547D:     var_118 = var_118.Value
  loc_14D5492:     Set var_11C = Me.Txt
  loc_14D5498:     Call 0.Method_Txt_Validate0 (Cancel, var_138, var_140)
  loc_14D54A0:     var_E4 = var_138.Text
  loc_14D54AF:     var_104 = (var_E4 > CDate(CDate(var_140)))
  loc_14D54B9:     var_180 = 0
  loc_14D54E6:     unk_48BBDA.Execute "Select Resign_date from employee where code='" & var_15C.Tag & "'", var_114, -1
  loc_14D54EE:     var_16C = var_16C.Fields
  loc_14D54F6:     var_180 = var_170.Item(var_170)
  loc_14D54FE:     var_184 = var_184.Value
  loc_14D5513:     Set var_188 = Me.Txt
  loc_14D5519:     Call 0.Method_Txt_Validate0 (Cancel, var_18C, var_190, var_1A0)
  loc_14D5521:     var_1A0 = var_18C.Text
  loc_14D5577:     If CBool(CVar(var_98) Or (var_104 < CDate(CDate(var_190)))) Then
  loc_14D5593:       MsgBox("Invalid Date For This Employee", &H40, var_E4, var_104, var_114)
  loc_14D55A5:       arg_10 = &HFF
  loc_14D55A8:     End If
  loc_14D55B5:     Set var_94 = Me.Txt
  loc_14D55BB:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14D55C3:     var_9C = var_98.Text
  loc_14D55F0:     If (Proc_6_95_EF4E30(CDate(var_9C), "Over Time Date") = 0) Then
  loc_14D55F5:       arg_10 = &HFF
  loc_14D55F8:     End If
  loc_14D55FB:   Else
  loc_14D5603:     If Not (var_86 = CInt(2)) Then
  loc_14D560E:       If (var_86 = CInt(3)) Then
  loc_14D5611:       End If
  loc_14D561E:       Set var_94 = Me.Txt
  loc_14D5624:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_14D562C:       arg_10 = var_98.Text
  loc_14D5657:       var_120 = CStr(Format(CVar(var_9C), "00"))
  loc_14D5665:       Set var_B0 = Me.Txt
  loc_14D566B:       Call 0.Method_Txt_Validate0 (Cancel, var_B4, var_120)
  loc_14D5673:       var_B4.Text = 1
  loc_14D569D:       Set var_94 = Me.Txt
  loc_14D56A3:       Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_9C)
  loc_14D56AB:       1 = var_98.Text
  loc_14D56C7:       If (CDbl(Val(var_9C)) > CDbl(&H18)) Then
  loc_14D56CC:         arg_10 = &HFF
  loc_14D56CF:       End If
  loc_14D56DD:       Set var_94 = Me.Txt
  loc_14D56E3:       Call 0.Method_Txt_Validate0 (CInt(3), var_98, var_9C)
  loc_14D56EB:       arg_10 = var_98.Text
  loc_14D5707:       If (CDbl(Val(var_9C)) >= CDbl(&H3C)) Then
  loc_14D570C:         arg_10 = &HFF
  loc_14D570F:       End If
  loc_14D571D:       Set var_94 = Me.Txt
  loc_14D5723:       Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_9C)
  loc_14D572B:       arg_10 = var_98.Text
  loc_14D5738:       var_148 = Val(var_9C)
  loc_14D5749:       Set var_B0 = Me.Txt
  loc_14D574F:       Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_120)
  loc_14D5764:       var_150 = Val(var_120)
  loc_14D5775:       Set var_118 = Me.Txt
  loc_14D577B:       Call 0.Method_Txt_Validate0 (CInt(3), var_11C, var_134)
  loc_14D57B7:       var_C4 = CVar((var_B4.Text * (var_11C.Text + (Val(var_134) / CDbl(&H3C))))) 'Double
  loc_14D57D5:       Set var_138 = Me.Txt
  loc_14D57DB:       Call 0.Method_Txt_Validate0 (CInt(6), var_13C, CStr(Format(CVar(var_9C), "0.00")), 1)
  loc_14D57E3:       var_13C.Text = 1
  loc_14D5812:     Else
  loc_14D581A:       If (var_86 = CInt(4)) Then
  loc_14D5827:         Set var_94 = Me.Txt
  loc_14D582D:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14D5859:         var_9C = CStr(Format(CVar(var_98), "0.00"))
  loc_14D5867:         Set var_B0 = Me.Txt
  loc_14D586D:         Call 0.Method_Txt_Validate0 (Cancel, var_B4, var_9C, 1)
  loc_14D589D:         Set var_94 = Me.Txt
  loc_14D58A3:         Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_9C)
  loc_14D58AB:         var_158 = var_98.Text
  loc_14D58B8:         var_148 = Val(var_9C)
  loc_14D58C9:         Set var_B0 = Me.Txt
  loc_14D58CF:         Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_120)
  loc_14D58E4:         var_150 = Val(var_120)
  loc_14D58F5:         Set var_118 = Me.Txt
  loc_14D58FB:         Call 0.Method_Txt_Validate0 (CInt(3), var_11C, var_134)
  loc_14D5937:         var_C4 = CVar((1 * (var_11C.Text + (Val(var_134) / CDbl(&H3C))))) 'Double
  loc_14D5955:         Set var_138 = Me.Txt
  loc_14D595B:         Call 0.Method_Txt_Validate0 (CInt(6), var_13C, CStr(Format(CVar(var_98), "0.00")), 1)
  loc_14D5963:         var_13C.Text = 1
  loc_14D5992:       Else
  loc_14D599A:         If (var_86 = CInt(6)) Then
  loc_14D59A7:           Set var_94 = Me.Txt
  loc_14D59AD:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14D59D9:           var_9C = CStr(Format(CVar(var_98), "0.00"))
  loc_14D59E7:           Set var_B0 = Me.Txt
  loc_14D59ED:           Call 0.Method_Txt_Validate0 (Cancel, var_B4, var_9C, 1)
  loc_14D5A1D:           Set var_94 = Me.Txt
  loc_14D5A23:           Call 0.Method_Txt_Validate0 (CInt(6), var_98, var_9C)
  loc_14D5A2B:           var_158 = var_98.Text
  loc_14D5A38:           var_148 = Val(var_9C)
  loc_14D5A49:           Set var_B0 = Me.Txt
  loc_14D5A4F:           Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_120)
  loc_14D5A64:           var_150 = Val(var_120)
  loc_14D5A75:           Set var_118 = Me.Txt
  loc_14D5A7B:           Call 0.Method_Txt_Validate0 (CInt(3), var_11C, var_134)
  loc_14D5AB7:           var_C4 = CVar((1 / (var_11C.Text + (Val(var_134) / CDbl(&H3C))))) 'Double
  loc_14D5AD5:           Set var_138 = Me.Txt
  loc_14D5ADB:           Call 0.Method_Txt_Validate0 (CInt(4), var_13C, CStr(Format(CVar(var_98), "0.00")), 1)
  loc_14D5AE3:           var_13C.Text = 1
  loc_14D5B0F:         End If
  loc_14D5B0F:       End If
  loc_14D5B0F:     End If
  loc_14D5B0F:   End If
  loc_14D5B0F: End If
  loc_14D5B0F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EA9D44
  'Data Table: 48BBCC
  Dim var_8C As Label
  Dim var_94 As TextBox
  loc_EA9CB8: On Error Goto loc_EA9D3E
  loc_EA9CDE: Call Proc_309_28_E91E3C(Proc_5_1_100CB50("ADD", Me))
  loc_EA9CF6: Me.LblUser.Caption = vbNullString
  loc_EA9D0B: Me.LblLDt.Caption = vbNullString
  loc_EA9D13: Call Proc_309_29_ECFCE8(global_52)
  loc_EA9D23: Set var_8C = Me.Txt
  loc_EA9D29: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EA9D31: var_94.SetFocus
  loc_EA9D3D: Exit Sub
  loc_EA9D3E: ' Referenced from: EA9CB8
  loc_EA9D3E: Proc_6_60_E62BC4(var_94)
  loc_EA9D43: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EDB11C
  'Data Table: 48BBCC
  loc_EDB070: On Error Goto loc_EDB115
  loc_EDB0AA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EDB0D0:   Call Proc_309_28_E91E3C(Proc_5_1_100CB50("INI", Me))
  loc_EDB0DB:   Call Proc_309_32_E84280(global_52)
  loc_EDB0E0:   Call Proc_309_30_1302FDC()
  loc_EDB0E9:   Set var_110 = Me.DGMaster
  loc_EDB0FD: Else
  loc_EDB103:   Call 0.Method_arg_1E8 (var_110)
  loc_EDB10B:   Call var_110.SetFocus
  loc_EDB114: End If
  loc_EDB114: Exit Sub
  loc_EDB115: ' Referenced from: EDB070
  loc_EDB115: Proc_6_60_E62BC4(DGMaster.DispID_8001)
  loc_EDB11A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '118DFE0
  'Data Table: 48BBCC
  Dim var_B8 As Variant
  Dim var_100 As Variant
  Dim var_140 As Variant
  Dim var_154 As String
  Dim var_A8 As Variant
  Dim unk_48BBDA As Connection15
  Dim var_96 As Integer
  Dim Me As Recordset15
  Dim var_A4 As Fields15
  Dim var_E8 As Variant
  loc_118DC2C: On Error Goto loc_118DF88
  loc_118DC3A: Set var_A4 = Me.Txt
  loc_118DC40: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1))
  loc_118DC50: Set var_EC = Me.Txt
  loc_118DC56: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_F0)
  loc_118DC73: var_B8 = CVar(var_A8) 'Address
  loc_118DC7A: var_E8 = Format(var_B8, "MMM")
  loc_118DC91: var_120 = "YYYY"
  loc_118DC9A: var_100 = CVar(var_F0) 'Address
  loc_118DCA9: var_140 = (1 + Format(var_100, var_120))
  loc_118DD02: Set var_A4 = Me.Txt
  loc_118DD08: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_A8, var_158, "Select * From Salary Where site_code='" & MemVar_1F92070 & "' and Emp_Code='", var_B8, -1)
  loc_118DD37: unk_48BBDA.Execute 1 & var_158 & "' and Mth_Year='" & CStr(Ucase(var_140)) & "'", var_E8, 1
  loc_118DD68: var_170 = var_A8.Tag.RecordCount
  loc_118DD76: If (var_170 > 0) Then
  loc_118DD7F:   Call 0.Method_arg_50 (var_158, 1)
  loc_118DDA6:   MsgBox(CVar("Salary Already Created, " & vbCrLf & " You Can Not delete Record ..."), &H40, CVar(var_158), var_E8, var_100)
  loc_118DDB9:   Exit Sub
  loc_118DDBA: End If
  loc_118DDF1: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_E8, var_100) = 6) Then
  loc_118DDF6:   var_96 = 0
  loc_118DE02:   unk_48BBDA.BeginTrans var_170
  loc_118DE09:   var_96 = &HFF
  loc_118DE1D:   var_94 = Me.Bookmark 'Variant
  loc_118DE50:   var_A8 = Me.Fields.Item("EmpCode")
  loc_118DE69:   var_E8 = "Delete From overTime Where EmpCode='" & var_A8.Value & "' And OTDate=" 
  loc_118DE78:   Set var_EC = Me.Txt
  loc_118DE7E:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_F0, var_E8, var_140, -1)
  loc_118DE86:   var_100 = CVar(var_F0) 'Address
  loc_118DE8D:   Proc_6_7_F25D88(var_120, var_100, var_194)
  loc_118DE99:   var_154 = CStr(var_96 & var_120)
  loc_118DEA3:   unk_48BBDA.Execute var_154, var_96, var_A8
  loc_118DECD:   unk_48BBDA.CommitTrans
  loc_118DED4:   var_96 = 0
  loc_118DEE2:   Me.Requery -1
  loc_118DEF2:   Me.Requery -1
  loc_118DF12:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_118DF1F:     Me.Bookmark = var_94
  loc_118DF27:   Else
  loc_118DF3B:     If (Me.EOF = 0) Then
  loc_118DF44:       Me.MoveLast
  loc_118DF49:     End If
  loc_118DF49:   End If
  loc_118DF49:   Call Proc_309_30_1302FDC(var_96)
  loc_118DF6A:   Proc_5_0_110649C(&HFF, Me)
  loc_118DF76:   Set var_A4 = Me.DGMaster
  loc_118DF87: End If
  loc_118DF87: Exit Sub
  loc_118DF88: ' Referenced from: 118DC2C
  loc_118DF8E: If (var_96 = &HFF) Then
  loc_118DF97:   unk_48BBDA.RollbackTrans
  loc_118DF9C: End If
  loc_118DFA4: Set var_A4 = Err()
  loc_118DFAA: Call 0.Method_arg_2C (var_154, DGMaster.DispID_8001)
  loc_118DFCB: MsgBox(CVar(var_154), &H30, " Deletion Error ", var_E8, var_100)
  loc_118DFDE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '109511C
  'Data Table: 48BBCC
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_12C As Variant
  Dim var_94 As TextBox
  Dim unk_48BBDA As Connection15
  Dim var_90 As Label
  loc_1094EA0: On Error Goto loc_1095116
  loc_1094EAE: Set var_90 = Me.Txt
  loc_1094EB4: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1))
  loc_1094EC4: Set var_D8 = Me.Txt
  loc_1094ECA: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_DC)
  loc_1094EE7: var_A4 = CVar(var_94) 'Address
  loc_1094EEE: var_D4 = Format(var_A4, "MMM")
  loc_1094F0E: var_EC = CVar(var_DC) 'Address
  loc_1094F1D: var_12C = (1 + Format(var_EC, "YYYY"))
  loc_1094F76: Set var_90 = Me.Txt
  loc_1094F7C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94, var_144, "Select * From Salary Where site_code='" & MemVar_1F92070 & "' and Emp_Code='", var_A4, -1)
  loc_1094FAB: unk_48BBDA.Execute 1 & var_144 & "' and Mth_Year='" & CStr(Ucase(var_12C)) & "'", var_D4, 1
  loc_1094FEA: If (var_94.Tag.RecordCount > 0) Then
  loc_1094FF3:   Call 0.Method_arg_50 (var_144, 1)
  loc_109501A:   MsgBox(CVar("Salary Already Created, " & vbCrLf & " You Can Not Edit Record ..."), &H40, CVar(var_144), var_D4, var_EC)
  loc_109502D:   Exit Sub
  loc_109502E: End If
  loc_1095051: Call Proc_309_28_E91E3C(Proc_5_1_100CB50("EDIT", Me), global_52)
  loc_109506A: Set var_90 = Me.Txt
  loc_1095070: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_1095083: global_64 = var_94.Tag
  loc_109509F: Set var_90 = Me.Txt
  loc_10950A5: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_10950B8: global_68 = var_94.Text
  loc_10950D1: Set var_90 = Me.Txt
  loc_10950D7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_10950DF: var_94.SetFocus
  loc_10950F8: Me.LblUser.Caption = vbNullString
  loc_109510D: Me.LblLDt.Caption = vbNullString
  loc_1095115: Exit Sub
  loc_1095116: ' Referenced from: 1094EA0
  loc_1095116: Proc_6_60_E62BC4(var_94)
  loc_109511B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1C160
  'Data Table: 48BBCC
  loc_E1C155: Me.Global.Unload Me
  loc_E1C15D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F7DF34
  'Data Table: 48BBCC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_E8 As Variant
  Dim MemVar_1F920E4 As String
  Dim var_A8 As Variant
  loc_F7DDF0: On Error Goto loc_F7DECC
  loc_F7DDFC: var_88 = Me.RecordCount
  loc_F7DE0A: If (var_88 <= 0) Then
  loc_F7DE28:   var_A8 = "Records Not Present For Searching."
  loc_F7DE2E:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F7DE3E:   Exit Sub
  loc_F7DE3F: End If
  loc_F7DE3F: var_B8 = "SELECT (EmpCode+convert(Varchar(12),OTDate,103)) as SearchCode,Employee.name,convert(Varchar(12),OTDate,103) AS OTDate,OverTime.OTime,OverTime.U_name,OverTime.Amount,OverTime.Remark FROM OverTime left join Employee on Employee.Code=OverTime.EmpCode Where Overtime.OTDate Between "
  loc_F7DE4F: Proc_6_7_F25D88(var_A8, MemVar_1F920F4)
  loc_F7DE60: var_E8 = "Information" & var_A8 & " And " 
  loc_F7DE6F: Proc_6_7_F25D88(var_108, MemVar_1F920FC)
  loc_F7DE85: MemVar_1F920E4 = CStr(var_E8 & var_108 & " ORDER BY OTDate")
  loc_F7DE9E: MemVar_1F92120 = Me
  loc_F7DEA5: var_13C = "2000,1000,1500,1000,1000,3500"
  loc_F7DEAB: Proc_6_126_F1BCC0(var_13C)
  loc_F7DEC6: Call 0.Method_arg_2B0 (1, "Information")
  loc_F7DECB: Exit Sub
  loc_F7DECC: ' Referenced from: F7DDF0
  loc_F7DED4: Set var_140 = Err()
  loc_F7DEDA: Call 0.Method_arg_1C (var_88)
  loc_F7DEEB: If (var_88 <> 0) Then
  loc_F7DEF6:   Set var_140 = Err()
  loc_F7DEFC:   Call 0.Method_arg_2C (var_13C)
  loc_F7DF1D:   MsgBox(CVar(var_13C), &H40, "Validation", var_E8, var_108)
  loc_F7DF30: End If
  loc_F7DF30: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E384D8
  'Data Table: 48BBCC
  loc_E384C8: Proc_5_0_110649C(&HFF, Me)
  loc_E384D0: Call Proc_309_30_1302FDC(global_52)
  loc_E384D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E36A98
  'Data Table: 48BBCC
  loc_E36A88: Proc_5_0_110649C(&HFF, Me)
  loc_E36A90: Call Proc_309_30_1302FDC(global_52)
  loc_E36A95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E36B58
  'Data Table: 48BBCC
  loc_E36B48: Proc_5_0_110649C(&HFF, Me)
  loc_E36B50: Call Proc_309_30_1302FDC(global_52)
  loc_E36B55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3B4D8
  'Data Table: 48BBCC
  loc_E3B4C8: Proc_5_0_110649C(&HFF, Me)
  loc_E3B4D0: Call Proc_309_30_1302FDC(global_52)
  loc_E3B4D5: Exit Sub
  loc_E3B4D6: arg_5408 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1071B4C
  'Data Table: 48BBCC
  Dim unk_48BBDA As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_10718CC: On Error Goto loc_1071B03
  loc_10718E5: unk_48BBDA.Execute "SELECT (EmpCode+' '+convert(Varchar(12),OTDate,103)) as SearchCode,Employee.name,Overtime.EmpCode,Overtime.OTDate,OverTime.OTime,OverTime.U_name,OverTime.OTRate,OverTime.Amount,OverTime.Remark FROM OverTime left join Employee on Employee.Code=OverTime.EmpCode ORDER BY OTDate", var_BC, -1
  loc_10718F0: Set var_88 = var_C0
  loc_10718FF: var_C4 = var_88.RecordCount
  loc_107190D: If (var_C4 = 0) Then
  loc_1071929:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1071939:   Exit Sub
  loc_107193A: End If
  loc_1071949: var_12C = MemVar_1F920B4 & "\OTRep.ttx"
  loc_1071950: Set var_C0 = var_88 
  loc_107195C: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_1071966: Set var_88 = var_C0
  loc_107196C: var_AC = CVar(var_12E) 'Integer
  loc_107196F: var_98 = var_AC 'Variant
  loc_107198B: var_128 = MemVar_1F920B4 & "\OTRep.RPT"
  loc_1071994: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_107199F: MemVar_1F921E4 = var_C0
  loc_10719BA: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_10719C2: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10719CE: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_10719E7:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10719EF:   Call 0.Method_arg_20 (var_138)
  loc_10719F7:   Call 0.Method_arg_30 (var_128)
  loc_1071A3D:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_1071A53:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1071A5B:     Call 0.Method_arg_20 (var_138)
  loc_1071A63:     Call 0.Method_arg_38 ("'Over Time Details'")
  loc_1071A6F:   End If
  loc_1071A72: Next var_132 'Integer
  loc_1071A90: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1071A98: Call 0.Method_arg_2C (var_D4)
  loc_1071AA6: Call 0.Method_arg_150 (var_F4)
  loc_1071AB1: Call 0.Method_arg_50 (var_128)
  loc_1071ABB: Set var_138 = Nothing
  loc_1071AD5: Set var_C0 = MemVar_1F921E4 
  loc_1071AE1: Proc_6_99_1483714(var_C0, 0, var_128)
  loc_1071AEC: MemVar_1F921E4 = var_C0
  loc_1071AFF: Set var_88 = Nothing
  loc_1071B02: Exit Sub
  loc_1071B03: ' Referenced from: 10718CC
  loc_1071B0B: Set var_C0 = Err()
  loc_1071B11: Call 0.Method_arg_2C (var_128, &HFF)
  loc_1071B1C: Call 0.Method_arg_50 (var_12C)
  loc_1071B38: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_1071B4B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B030
  'Data Table: 48BBCC
  Dim Me As Recordset15
  loc_E0B027: Me.Requery -1
  loc_E0B02C: Exit Sub
  loc_E0B02F: Result  End Sub 'Integer
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14C8974
  'Data Table: 48BBCC
  Dim var_A0 As TextBox
  Dim var_D0 As String
  Dim var_CC As TextBox
  Dim var_A4 As String
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_48BBDA As Connection15
  Dim var_118 As Recordset15
  Dim var_11C As Variant
  Dim var_130 As Field20
  Dim var_104 As String
  Dim var_114 As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_218 As Double
  Dim var_220 As Double
  Dim var_234 As TextBox
  Dim var_310 As TextBox
  Dim var_438 As Double
  Dim var_35C As TextBox
  Dim var_440 As Double
  Dim var_22C As String
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  Dim var_258 As Variant
  Dim var_354 As Variant
  Dim var_3E8 As Variant
  Dim var_140 As Variant
  Dim var_42C As Variant
  Dim var_314 As String
  Dim Me As Recordset15
  Dim var_230 As String
  loc_14C7CCC: On Error Goto loc_14C8921
  loc_14C7CD3: var_86 = CByte(0) 'Byte
  loc_14C7CE5: Set var_94 = Me.Txt
  loc_14C7CEB: Call 0.Method_TopCtrl1_UnknownEvent_16C (var_96, var_88)
  loc_14C7CFB: For var_9A =  To CByte((var_96 - 1)): CByte(0) = var_9A 'Byte
  loc_14C7D11:   Set var_94 = Me.Txt
  loc_14C7D17:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_88), var_A0)
  loc_14C7D2D:   var_C4 = Trim(CVar(var_A0.Text))
  loc_14C7D46:   Set var_C8 = Me.Txt
  loc_14C7D4C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_88), var_CC)
  loc_14C7D54:   var_CC.Text = CStr(var_C4)
  loc_14C7D71: Next var_9A 'Byte
  loc_14C7D7B: Set var_94 = Me.TopCtrl1
  loc_14C7D81: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C()
  loc_14C7D89: var_A4 = CStr()
  loc_14C7D9A: If (var_A4 = "Add") Then
  loc_14C7DCA:   Set var_94 = Me.Txt
  loc_14C7DD0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A4, "Select count(*) from OverTime where empcode='", var_114, -1)
  loc_14C7DE8:   var_E0 = CVar(var_11C & var_A4 & "' and OTDATE=") 'String
  loc_14C7DF6:   Set var_C8 = Me.Txt
  loc_14C7DFC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_CC, var_E0)
  loc_14C7E0B:   Proc_6_7_F25D88(var_C4, CVar(var_CC), 0)
  loc_14C7E13:   var_F0 = var_130 & var_C4 
  loc_14C7E21:   unk_48BBDA.Execute CStr(var_F0), var_140, 
  loc_14C7E29:    = var_A0.Tag.Fields
  loc_14C7E31:    = var_11C.Item()
  loc_14C7E39:    = var_130.Value
  loc_14C7E70:   If (var_140 > 0) Then
  loc_14C7E8C:     MsgBox(" Duplicate Entry ", &H40, var_C4, var_E0, var_F0)
  loc_14C7EA7:     Set var_94 = Me.Txt
  loc_14C7EAD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_14C7EB5:     var_A0.SetFocus
  loc_14C7EC1:     Exit Sub
  loc_14C7EC2:   End If
  loc_14C7EC5: Else
  loc_14C7EF2:   Set var_94 = Me.Txt
  loc_14C7EF8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A4, "Select count(*) from OverTime where empcode='", var_1D0, -1)
  loc_14C7F09:   var_D0 = var_11C & var_A4
  loc_14C7F10:   var_E0 = CVar(var_D0 & "' and OTDATE=") 'String
  loc_14C7F1E:   Set var_C8 = Me.Txt
  loc_14C7F24:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_CC, var_E0, 0)
  loc_14C7F33:   Proc_6_7_F25D88(var_C4, CVar(var_CC), var_130)
  loc_14C7F3B:   var_F0 = var_1F0 & var_C4 
  loc_14C7F56:   Proc_6_7_F25D88(var_140, global_68)
  loc_14C7F8B:   unk_48BBDA.Execute CStr(var_F0 & " And OTDate<>" & var_140 & " and EmpCode='" & CVar(global_64) & "'"), var_A0, 
  loc_14C7F93:    = var_A0.Tag.Fields
  loc_14C7F9B:    = var_11C.Item()
  loc_14C7FA3:    = var_130.Value
  loc_14C7FE6:   If (var_1F0 > 0) Then
  loc_14C8002:     MsgBox(" Duplicate Entry ", &H40, var_C4, var_E0, var_F0)
  loc_14C801D:     Set var_94 = Me.Txt
  loc_14C8023:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_14C802B:     var_A0.SetFocus
  loc_14C8037:     Exit Sub
  loc_14C8038:   End If
  loc_14C8038: End If
  loc_14C8043: Set var_94 = Me.Txt
  loc_14C8049: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0)
  loc_14C8072: If (Proc_183_19_E8DAFC(var_A0, "Name") = 0) Then
  loc_14C807C:   Call Txt_GotFocus(CInt(0))
  loc_14C8081:   Exit Sub
  loc_14C8082: End If
  loc_14C808D: Set var_94 = Me.Txt
  loc_14C8093: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0)
  loc_14C80BC: If (Proc_183_19_E8DAFC(var_A0, "Over Time Date") = 0) Then
  loc_14C80C6:   Call Txt_GotFocus(CInt(1))
  loc_14C80CB:   Exit Sub
  loc_14C80CC: End If
  loc_14C80DA: Set var_94 = Me.Txt
  loc_14C80E0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A0)
  loc_14C80F5: var_218 = Val(var_A0.Text)
  loc_14C8106: Set var_C8 = Me.Txt
  loc_14C810C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_CC, var_D0)
  loc_14C8121: var_220 = Val(var_D0)
  loc_14C8133: var_C4 = "00"
  loc_14C8143: var_E0 = Format(CVar(var_CC.Text), var_C4)
  loc_14C8150: var_F0 = (var_E0 + ":")
  loc_14C817B: var_180 = (1 + Format(CVar(var_220), "00"))
  loc_14C81AC: If (var_F0 & " And OTDate<>" & "00" & " and EmpCode='" = "00:00") Then
  loc_14C81C8:   MsgBox("Over Time Can't be Zero", &H40, var_C4, var_E0, var_F0)
  loc_14C81D8:   Exit Sub
  loc_14C81D9: End If
  loc_14C81DC: Call Proc_309_31_11354A0(var_96, 1, var_F0, 1)
  loc_14C81E7: If (var_96 = &HFF) Then
  loc_14C81EA:   Exit Sub
  loc_14C81EB: End If
  loc_14C81F4: unk_48BBDA.BeginTrans var_224
  loc_14C81FD: var_86 = CByte(1) 'Byte
  loc_14C8205: Set var_94 = Me.TopCtrl1
  loc_14C820B: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C(1)
  loc_14C8224: If (CStr(var_220) = "Add") Then
  loc_14C8235:   Set var_94 = Me.Txt
  loc_14C823B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0)
  loc_14C8243:   var_A4 = var_A0.Tag
  loc_14C8256:   Set var_C8 = Me.Txt
  loc_14C825C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_CC)
  loc_14C8264:   var_F4 = var_CC.Text
  loc_14C8277:   Set var_118 = Me.Txt
  loc_14C827D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_11C)
  loc_14C8285:   var_230 = var_11C.Text
  loc_14C82A4:   var_C4 = "00"
  loc_14C82C7:   Set var_130 = Me.Txt
  loc_14C82CD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_234, var_238, 1)
  loc_14C82D5:   1 = var_234.Text
  loc_14C82E2:   var_220 = Val(var_238)
  loc_14C8314:   Proc_6_8_EB0DE4(var_2D8, CVar(Proc_6_14_EF349C(1, 1, var_220)))
  loc_14C8327:   Set var_30C = Me.Txt
  loc_14C832D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_310, var_314)
  loc_14C8335:   var_218 = var_310.Text
  loc_14C8342:   var_438 = Val(var_314)
  loc_14C8353:   Set var_358 = Me.Txt
  loc_14C8359:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_35C, var_360)
  loc_14C837C:   Set var_3A4 = Me.Txt
  loc_14C8382:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_3A8)
  loc_14C839C:   Proc_6_17_EAA2B0(var_3D8, Trim(CVar(var_3A8)))
  loc_14C83B5:   var_D0 = "Insert Into Overtime(EmpCode,OTDate,OTIME,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE,OTRate,Amount,Remark) Values('" & var_A4
  loc_14C83C3:   var_22C = var_D0 & "','" & var_F4
  loc_14C83D5:   var_F0 = (Format(CVar(Val(var_230)), var_C4) + ":")
  loc_14C83DC:   var_180 = (var_F0 + Format(CVar(var_220), "00"))
  loc_14C8406:   var_258 = CVar(var_22C & "','") & var_F0 & " And OTDate<>" & "00" & " and EmpCode='" & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) 
  loc_14C8461:   var_3E8 = var_258 & "','" & CVar(MemVar_1F920C8) & "'," & var_2D8 & ",'A'," & CVar(var_35C.Text) & "," & CVar(Val(var_360)) & "," & var_3D8 
  loc_14C8478:   unk_48BBDA.Execute CStr(var_3E8 & ")"), var_42C, -1
  loc_14C84F7: Else
  loc_14C8505:   Set var_94 = Me.Txt
  loc_14C850B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A4)
  loc_14C8513:   var_430 = var_A0.Tag
  loc_14C8526:   Set var_C8 = Me.Txt
  loc_14C852C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_CC, var_F4)
  loc_14C8534:   var_440 = var_CC.Text
  loc_14C8542:   Proc_6_7_F25D88(var_C4, CVar(var_F4))
  loc_14C8555:   Set var_118 = Me.Txt
  loc_14C855B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_11C)
  loc_14C85A5:   Set var_130 = Me.Txt
  loc_14C85AB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_234, var_22C, 1)
  loc_14C85B3:   1 = var_234.Text
  loc_14C85C0:   var_220 = Val(var_22C)
  loc_14C85F2:   Proc_6_8_EB0DE4(var_2D8, CVar(Proc_6_14_EF349C(1, 1, var_220)))
  loc_14C8605:   Set var_30C = Me.Txt
  loc_14C860B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_310, var_230)
  loc_14C8613:   var_218 = var_310.Text
  loc_14C8620:   var_438 = Val(var_230)
  loc_14C8631:   Set var_358 = Me.Txt
  loc_14C8637:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_35C, var_238)
  loc_14C864C:   var_440 = Val(var_238)
  loc_14C865A:   Set var_3A4 = Me.Txt
  loc_14C8660:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_3A8)
  loc_14C867A:   Proc_6_17_EAA2B0(var_3D8, Trim(CVar(var_3A8)))
  loc_14C868D:   Proc_6_7_F25D88(var_460, global_68)
  loc_14C86A6:   var_D0 = "UPDATE OverTime SET EmpCode='" & var_A4
  loc_14C86AD:   var_E0 = CVar(var_D0 & "',OTDate = ") 'String
  loc_14C86B3:   var_F0 = var_E0 & var_C4 
  loc_14C86C8:   var_190 = (Format(CVar(Val(var_11C.Text)), "00") + ":")
  loc_14C86CF:   var_210 = (CVar(var_22C & "','") + Format(CVar(var_220), "00"))
  loc_14C86D3:   var_258 = var_F0 & ",OTIME='" & CVar(var_22C & "','") & var_F0 & " And OTDate<>" & "00" & " and EmpCode='" & "','" & CVar(MemVar_1F92070) & "','" 
  loc_14C8713:   var_354 = var_258 & "',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_2D8 & ",U_AE='E',OTRate=" & CVar(var_35C.Text) & ",Amount=" 
  loc_14C8758:   var_314 = CStr(var_354 & CVar(var_440) & ",Remark=" & var_3D8 & " WHERE EmpCode='" & CVar(global_64) & "' and OTDate=" & var_460)
  loc_14C8762:   unk_48BBDA.Execute var_314, var_480, -1
  loc_14C87E0: End If
  loc_14C87E6: unk_48BBDA.CommitTrans
  loc_14C87EF: var_86 = CByte(0) 'Byte
  loc_14C87FE: Me.Requery -1
  loc_14C880E: Me.Requery -1
  loc_14C8817: Set var_94 = Me.DGMaster
  loc_14C8847: Set var_94 = Me.Txt
  loc_14C884D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A4, "SearchCode='", 0, 1)
  loc_14C8855: var_104 = var_A0.Tag
  loc_14C8872: Set var_C8 = Me.Txt
  loc_14C8878: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_CC, var_D0, var_A4 & " ")
  loc_14C8880: DGMaster.DispID_FFFF = var_CC.Text
  loc_14C889D: Me.Find var_440 & var_430 & var_D0 & "'", var_A0, 
  loc_14C88C0: Set var_94 = Me.TopCtrl1
  loc_14C88C6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C()
  loc_14C88DF: If (CStr() = "Add") Then
  loc_14C88E2:   Call TopCtrl1_UnknownEvent_A()
  loc_14C88E7:   Exit Sub
  loc_14C88E8: End If
  loc_14C88FD: var_A4 = "INI"
  loc_14C890B: Call Proc_309_28_E91E3C(Proc_5_1_100CB50(var_A4, Me))
  loc_14C8916: Call Proc_309_32_E84280(global_52)
  loc_14C891B: Call Proc_309_30_1302FDC()
  loc_14C8920: Exit Sub
  loc_14C8921: ' Referenced from: 14C7CCC
  loc_14C892A: If (CInt(var_86) = 1) Then
  loc_14C8933:   unk_48BBDA.RollbackTrans
  loc_14C8938: End If
  loc_14C8940: Set var_94 = Err()
  loc_14C8946: Call 0.Method_arg_2C (var_A4)
  loc_14C895F: MsgBox(CVar(var_A4), &H10, var_C4, var_E0, var_F0)
  loc_14C8972: Exit Sub
End Sub

Private Sub Form_Load() '10B0478
  'Data Table: 48BBCC
  Dim var_8C As Label
  Dim var_9C As Variant
  Dim var_B0 As TextBox
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim unk_48BBDA As Connection15
  Dim var_AC As String
  Dim var_104 As Variant
  Dim var_158 As String
  Dim var_D4 As Variant
  loc_10B01B8: On Error Goto loc_10B0432
  loc_10B01CA: Me.LblUser.Left = CDbl(13500)
  loc_10B01E1: Me.LblUser.Top = CDbl(7800)
  loc_10B01F8: Me.LblLDt.Top = CDbl(8160)
  loc_10B020F: Me.LblLDt.Left = CDbl(13500)
  loc_10B021E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10B0227: var_9C = CVar(CLng(MemVar_1F921B0)) 'Long
  loc_10B0230: Set var_8C = Me.DGMaster
  loc_10B024C: Set var_8C = Me.Txt
  loc_10B0252: Call 0.Method_Form_Load0 (CInt(0), var_B0, var_B4)
  loc_10B025A: DGMaster.DispID_FFFFFE0B = var_B0.Left
  loc_10B0271: Me.DGEmployee.Left = CVar(var_B4)
  loc_10B028D: Set var_B8 = Me.Txt
  loc_10B0293: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_10B02B4: Call 0.Method_Form_Load0 (CInt(0), var_B0)
  loc_10B02CC: var_9C = CVar(((var_B0.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_10B02DB: Me.DGEmployee.Top = CVar(var_B0.Top)
  loc_10B0303: unk_48BBDA.Execute "Select Employee.Code,Employee.Name,IsNull(Depart.Name,'') As Department,Desig.Name As Designation,OTRate From Employee Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation Order by Employee.Name", var_D4, -1
  loc_10B032B: CVarUnk
  loc_10B0330: VerifyVarObj
  loc_10B0336: Set var_8C = Me.DGEmployee
  loc_10B033C: LateIdStAd
  loc_10B0357: var_AC = "SELECT (EmpCode+Convert(Varchar(12),OTDate,103)) as SearchCode,Employee.name,Overtime.EmpCode,Overtime.OTDate,OverTime.OTime,OverTime.U_AE,OverTime.U_name,OverTime.U_EntDt,OverTime.OTRate,OverTime.Amount,OverTime.Remark,IsNull(Depart.Name,'') As Department,Desig.Name As Designation FROM OverTime left join Employee on Employee.Code=OverTime.EmpCode Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation Where Overtime.OTDate Between "
  loc_10B035F: var_9C = MemVar_1F920F4
  loc_10B0367: Proc_6_7_F25D88(var_D4, var_9C, var_AC, var_178, -1)
  loc_10B0378: var_104 = var_8C & var_D4 & " And " 
  loc_10B0387: Proc_6_7_F25D88(var_124, MemVar_1F920FC, var_104, var_8C)
  loc_10B03A6: unk_48BBDA.Execute CStr(Me.Txt & var_124 & " ORDER BY OTDate"), var_8C, var_9C
  loc_10B03B7: Set global_52 = var_8C
  loc_10B03DF: CVarUnk
  loc_10B03E4: VerifyVarObj
  loc_10B03EA: Set var_8C = Me.DGMaster
  loc_10B03F0: LateIdStAd
  loc_10B0413: var_158 = "INI"
  loc_10B0421: Call Proc_309_28_E91E3C(Proc_5_1_100CB50(var_158, Me, global_52), Me)
  loc_10B042C: Call Proc_309_30_1302FDC(global_52)
  loc_10B0431: Exit Sub
  loc_10B0432: ' Referenced from: 10B01B8
  loc_10B043A: Set var_8C = Err()
  loc_10B0440: Call 0.Method_arg_2C (var_158)
  loc_10B0461: MsgBox(CVar(var_158), &H40, "Information", var_104, var_124)
  loc_10B0474: Exit Sub
  loc_10B0475: Exit Sub
End Sub

Private Sub Form_Resize() 'ED7588
  'Data Table: 48BBCC
  Dim var_8C As Label
  loc_ED74E6: Call 0.Method_arg_50 (var_88)
  loc_ED74F8: Me.LblFormCaption.Caption = var_88
  loc_ED7511: Me.LblFormCaption.Left = CDbl(0)
  loc_ED751D: Set var_A0 = Me.TopCtrl1
  loc_ED7523: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED7530: Set var_8C = Me.TopCtrl1
  loc_ED7536: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED7550: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED756B: Call 0.Method_arg_100 (var_B8)
  loc_ED757D: Me.LblFormCaption.Width = var_B8
  loc_ED7585: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E29388
  'Data Table: 48BBCC
  loc_E2936B: Set global_52 = Nothing
  loc_E2937D: Set global_56 = Nothing
  loc_E29384: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8AE18
  'Data Table: 48BBCC
  loc_E8ADB4: On Error Goto loc_E8ADD4
  loc_E8ADCB: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8ADD3: Exit Sub
  loc_E8ADD4: ' Referenced from: E8ADB4
  loc_E8ADDC: Set var_88 = Err()
  loc_E8ADE2: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8AE03: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8AE16: Exit Sub
  loc_E8AE17: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC2E44
  'Data Table: 48BBCC
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC2DBA: On Error Goto loc_EC2DFF
  loc_EC2DC3: Me.MoveFirst
  loc_EC2DDD: var_8C = "SearchCode='" & MyValue
  loc_EC2DED: Me.Find var_8C & "'", 0, 1
  loc_EC2DF9: Call Proc_309_30_1302FDC(var_A0)
  loc_EC2DFE: Exit Sub
  loc_EC2DFF: ' Referenced from: EC2DBA
  loc_EC2E07: Set var_A4 = Err()
  loc_EC2E0D: Call 0.Method_arg_2C (var_8C)
  loc_EC2E2E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC2E41: Exit Sub
  loc_EC2E42: Exit Sub
End Sub

Public Sub Proc_309_28_E91E3C(arg_C) 'E91E3C
  'Data Table: 48BBCC
  Dim var_98 As TextBox
  Dim var_8C As DataGrid
  loc_E91DCE: Set var_8C = Me.Txt
  loc_E91DD4: Call 0.Method_Proc_309_28_E91E3CC (var_8E, var_86)
  loc_E91DE4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E91DFA:   Set var_8C = Me.Txt
  loc_E91E00:   Call 0.Method_Proc_309_28_E91E3C0 (CInt(var_86), var_98)
  loc_E91E08:   var_98.Enabled = arg_C
  loc_E91E17: Next var_92 'Byte
  loc_E91E30: Me.DGMaster.Enabled = Not(arg_C)
  loc_E91E3B: Exit Sub
End Sub

Public Sub Proc_309_29_ECFCE8
  'Data Table: 48BBCC
  Dim var_98 As TextBox
  Dim var_8C As Label
  loc_ECFC3A: global_64 = vbNullString
  loc_ECFC44: global_68 = vbNullString
  loc_ECFC56: Set var_8C = Me.Txt
  loc_ECFC5C: Call 0.Method_Proc_309_29_ECFCE8C (var_8E, var_86)
  loc_ECFC6C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_ECFC82:   Set var_8C = Me.Txt
  loc_ECFC88:   Call 0.Method_Proc_309_29_ECFCE80 (CInt(var_86), var_98)
  loc_ECFC90:   var_98.Text = vbNullString
  loc_ECFCAC:   Set var_8C = Me.Txt
  loc_ECFCB2:   Call 0.Method_Proc_309_29_ECFCE80 (CInt(var_86), var_98)
  loc_ECFCBA:   var_98.Tag = vbNullString
  loc_ECFCC9: Next var_92 'Byte
  loc_ECFCDC: Me.LblEmpRef.Caption = vbNullString
  loc_ECFCE4: Exit Sub
End Sub

Public Sub Proc_309_30_1302FDC
  'Data Table: 48BBCC
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B0 As Variant
  Dim var_C8 As String
  Dim var_B8 As Fields15
  Dim var_DC As Variant
  Dim var_B4 As String
  Dim var_CC As Variant
  Dim var_130 As Variant
  loc_13028F8: On Error Goto loc_1302F98
  loc_1302901: Proc_183_45_E5C118(global_52)
  loc_130291D: If (Me.RecordCount <= 0) Then
  loc_1302920:   Call Proc_309_29_ECFCE8()
  loc_1302928: Else
  loc_13029D1:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_1302A19:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_Name")))))
  loc_1302A99:   var_CC = Me.Fields.Item("U_AE")
  loc_1302AFA:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_CC)) = "E"), "Last Update :   ", "entdt :   "))
  loc_1302B42:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_EntDt")))))
  loc_1302BB6:   Set var_B8 = Me.Txt
  loc_1302BBC:   Call 0.Method_Proc_309_30_1302FDC0 (CInt(0), var_CC)
  loc_1302BC4:   var_CC.Tag = CStr(Me.Fields.Item("EmpCode").Value)
  loc_1302C13:   Set var_B8 = Me.Txt
  loc_1302C19:   Call 0.Method_Proc_309_30_1302FDC0 (CInt(0), var_CC)
  loc_1302C21:   var_CC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_1302C71:   Set var_B8 = Me.Txt
  loc_1302C77:   Call 0.Method_Proc_309_30_1302FDC0 (CInt(1), var_CC)
  loc_1302C7F:   var_CC.Text = CStr(Me.Fields.Item("OTDate").Value)
  loc_1302CE8:   Set var_B8 = Me.Txt
  loc_1302CEE:   Call 0.Method_Proc_309_30_1302FDC0 (CInt(2), var_CC)
  loc_1302CF6:   var_CC.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("OTime")))), 2))
  loc_1302D4A:   var_DC = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("OTime")))) 'String
  loc_1302D67:   Set var_B8 = Me.Txt
  loc_1302D6D:   Call 0.Method_Proc_309_30_1302FDC0 (CInt(3), var_CC)
  loc_1302D75:   var_CC.Text = CStr(Right(var_DC, 2))
  loc_1302DB5:   var_B0 = CVar(Me.Fields.Item("OTRate")) 'Address
  loc_1302DBC:   Proc_6_39_E7C810(var_DC)
  loc_1302DF3:   Set var_B8 = Me.Txt
  loc_1302DF9:   Call 0.Method_Proc_309_30_1302FDC0 (CInt(4), var_CC, CStr(Format(var_DC, "0.00")))
  loc_1302E01:   var_CC.Text = 1
  loc_1302E46:   Proc_6_39_E7C810(var_DC, CVar(Me.Fields.Item("Amount")))
  loc_1302E7D:   Set var_B8 = Me.Txt
  loc_1302E83:   Call 0.Method_Proc_309_30_1302FDC0 (CInt(6), var_CC, CStr(Format(var_DC, "0.00")), 1)
  loc_1302E8B:   var_CC.Text = 1
  loc_1302EE0:   Set var_B8 = Me.Txt
  loc_1302EE6:   Call 0.Method_Proc_309_30_1302FDC0 (CInt(5), var_CC)
  loc_1302EEE:   var_CC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Remark")), 1)
  loc_1302F2F:   var_C8 = " - "
  loc_1302F34:   var_DC = (Me.Fields.Item("Department").Value + "0.00")
  loc_1302F5D:   var_110 = Me.Fields.Item("Designation").Value
  loc_1302F65:   var_130 = (var_DC + var_110)
  loc_1302F69:   var_B4 = CStr(Format(var_DC, "0.00"))
  loc_1302F77:   Me.LblEmpRef.Caption = var_B4
  loc_1302F97: End If
  loc_1302F97: Exit Sub
  loc_1302F98: ' Referenced from: 13028F8
  loc_1302FA0: Set var_8C = Err()
  loc_1302FA6: Call 0.Method_arg_2C (var_B4)
  loc_1302FC7: MsgBox(CVar(var_B4), &H40, "Information", var_110, Format("Information", "0.00"))
  loc_1302FDA: Exit Sub
End Sub

Public Sub Proc_309_31_11354A0
  'Data Table: 48BBCC
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_104 As String
  Dim var_A8 As TextBox
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_124 As String
  Dim unk_48BBDA As Connection15
  Dim var_160 As Fields15
  Dim var_174 As Field20
  Dim var_1F4 As Integer
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  loc_113517F: If (Me.RecordCount = 0) Then
  loc_1135182:   Proc_309_31_11354A0 = 
  loc_1135188: End If
  loc_113518C: Set var_90 = Me.TopCtrl1
  loc_1135192: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_113519A: var_A4 = CStr()
  loc_11351AB: If (var_A4 = "Add") Then
  loc_11351CA:   var_104 = "Select Count(*) From OVERTIME Where EmpCode+''+convert(Varchar(12),OTDate,103)='"
  loc_11351DD:   Set var_90 = Me.Txt
  loc_11351E3:   Call 0.Method_Proc_309_31_11354A00 (CInt(0), var_A8, var_A4, var_104, var_158, -1)
  loc_1135206:   var_C8 = (CVar(var_A4) + Space(1))
  loc_1135218:   Set var_CC = Me.Txt
  loc_113521E:   Call 0.Method_Proc_309_31_11354A00 (CInt(1), var_D0, var_D4, var_C8)
  loc_1135226:   var_160 = var_D0.Text
  loc_113522E:   var_E4 = CVar(var_D4) 'String
  loc_1135231:   var_F4 = (0 + var_E4)
  loc_113524C:   unk_48BBDA.Execute CStr(var_174 & var_F4 & "'"), var_184, 
  loc_1135254:    = var_A8.Tag.Fields
  loc_113525C:    = var_160.Item()
  loc_1135264:    = var_174.Value
  loc_113529D:   If (var_184 > 0) Then
  loc_11352C1:     MsgBox("Duplicate Entry", &H40, "Information", var_C8, var_E4)
  loc_11352DC:     Set var_90 = Me.Txt
  loc_11352E2:     Call 0.Method_Proc_309_31_11354A00 (CInt(0))
  loc_11352EA:     var_A8.SetFocus
  loc_11352FB:     Proc_309_31_11354A0 = &HFF
  loc_1135301:   End If
  loc_1135304: Else
  loc_113530A:   var_1F4 = 0
  loc_1135320:   var_104 = "Select Count(*) From OVERTIME Where EmpCode+''+convert(Varchar(12),OTDate,103)='"
  loc_1135333:   Set var_90 = Me.Txt
  loc_1135339:   Call 0.Method_Proc_309_31_11354A00 (CInt(0), var_A8, var_A4, "Duplicate Entry", var_1E4, -1)
  loc_113535C:   var_C8 = (CVar(var_A4) + Space(1))
  loc_113536E:   Set var_CC = Me.Txt
  loc_1135374:   Call 0.Method_Proc_309_31_11354A00 (CInt(1), var_D0, var_D4, var_C8, var_160)
  loc_113537C:   var_1F4 = var_D0.Text
  loc_1135384:   var_E4 = CVar(var_D4) 'String
  loc_1135387:   var_F4 = (var_174 + var_E4)
  loc_113538F:   var_124 = "' and EmpCode+''+convert(Varchar(12),OTDate,103)<>'"
  loc_11353B1:   var_184 = (CVar(global_64) + Space(1))
  loc_11353BE:   var_1A4 = (var_184 + CVar(global_68))
  loc_11353D9:   unk_48BBDA.Execute CStr(var_204 & var_F4 & "Information" & var_1A4 & "'"), var_A8, 
  loc_11353E1:    = var_A8.Tag.Fields
  loc_11353E9:    = var_160.Item()
  loc_11353F1:    = var_174.Value
  loc_1135434:   If (var_204 > 0) Then
  loc_1135458:     MsgBox("Duplicate Name", &H40, "Information", var_C8, var_E4)
  loc_1135473:     Set var_90 = Me.Txt
  loc_1135479:     Call 0.Method_Proc_309_31_11354A00 (CInt(0))
  loc_1135481:     var_A8.SetFocus
  loc_1135492:     Proc_309_31_11354A0 = &HFF
  loc_1135498:   End If
  loc_1135498: End If
  loc_1135498: Proc_309_31_11354A0 = var_A8
End Sub

Public Sub Proc_309_32_E84280
  'Data Table: 48BBCC
  loc_E8422C: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_E8423E:   Me.DGEmployee.Visible = False
  loc_E84246: End If
  loc_E84262: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E84274:   Me.FGPoint.Visible = False
  loc_E8427C: End If
  loc_E8427C: Exit Sub
End Sub

Public Sub Proc_309_33_E8FE88(arg_C) 'E8FE88
  'Data Table: 48BBCC
  Dim var_10C As TextBox
  loc_E8FE1C: Call Proc_309_32_E84280()
  loc_E8FE58: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8FE5B:   Call TopCtrl1_UnknownEvent_16()
  loc_E8FE63: Else
  loc_E8FE6D:   Set var_108 = Me.Txt
  loc_E8FE73:   Call 0.Method_Proc_309_33_E8FE880 (arg_C)
  loc_E8FE7B:   var_10C.SetFocus
  loc_E8FE87: End If
  loc_E8FE87: Exit Sub
End Sub
