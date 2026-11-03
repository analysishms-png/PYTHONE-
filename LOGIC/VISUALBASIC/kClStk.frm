VERSION 5.00
Begin VB.Form kClStk
  Caption = "Kitchen Closing Stock Entry"
  ForeColor = &H404040&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  Icon = "kClStk.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 7530
  ClientHeight = 6180
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7530
    Height = 450
    TabIndex = 18
  End
  Begin DataGrid DGDepart
    Left = 8145
    Top = 3525
    Width = 3990
    Height = 2625
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin DataGrid DGItem
    Left = 3900
    Top = 1365
    Width = 4140
    Height = 3315
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 12450
    Top = 8415
    Width = 2955
    Height = 240
    Visible = 0   'False
    TabIndex = 13
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
    Index = 3
    Left = 8850
    Top = 6255
    Width = 2340
    Height = 225
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 21
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
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
    ForeColor = &HC00000&
    Left = 6225
    Top = 1005
    Width = 3495
    Height = 285
    TabIndex = 2
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 1500
    Top = 1635
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 150
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
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
    ForeColor = &HC00000&
    Left = 3870
    Top = 1005
    Width = 1230
    Height = 285
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
    Index = 1
    ForeColor = &HC00000&
    Left = 2040
    Top = 1005
    Width = 1230
    Height = 285
    TabIndex = 1
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
  Begin MSHFlexGrid FGrid
    Left = 795
    Top = 1350
    Width = 7260
    Height = 7485
    TabIndex = 3
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 8490
    Top = 7305
    Width = 2790
    Height = 285
    TabIndex = 17
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
    Left = 8415
    Top = 6765
    Width = 2880
    Height = 255
    TabIndex = 16
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
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 15
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
  Begin Label Label1
    Caption = "Vr Type"
    Index = 0
    ForeColor = &HC00000&
    Left = 11730
    Top = 8415
    Width = 735
    Height = 240
    Visible = 0   'False
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
  Begin Label Label1
    Caption = "DocID"
    Index = 29
    ForeColor = &H0&
    Left = 8280
    Top = 6360
    Width = 555
    Height = 195
    Visible = 0   'False
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "Location"
    Index = 10
    ForeColor = &HC00000&
    Left = 5325
    Top = 1020
    Width = 825
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 13455
    Top = 7605
    Width = 690
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 3375
    Top = 1020
    Width = 435
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
  Begin Label Label1
    Caption = "Voucher No."
    Index = 3
    ForeColor = &HC00000&
    Left = 855
    Top = 1005
    Width = 1170
    Height = 240
    TabIndex = 4
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

Attribute VB_Name = "kClStk"

Private global_100 As Integer
Private MasterFormExit As Integer
Private global_96 As Integer
Private global_98 As Integer
Private global_84 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '1131838
  'Data Table: 4A4184
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim Me As Recordset15
  Dim var_108 As TextBox
  loc_11314CC: Call Proc_42_49_E839F8()
  loc_11314DD: If (Index = 0) Then
  loc_11314F6:   Me.FGrid.CellBackColor = CVar(CLng(global_68))
  loc_1131511:   var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1131550:   Set var_108 = Me.TxtGrid
  loc_1131556:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_113155E:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_113159F:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_11315B5:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11315BD:     var_E0 = CVar(CLng(4)) 'Long
  loc_11315DD:     global_120 = CStr(Me.FGrid.TextMatrix))
  loc_11315FB:     var_118 = Me.RecordCount
  loc_1131633:     If ((var_118 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1131636:       Exit Sub
  loc_1131637:     End If
  loc_113164A:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1131652:     var_E0 = CVar(CLng(1)) 'Long
  loc_1131685:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_113168E:       Me.MoveFirst
  loc_11316AE:       var_E0 = CVar(CLng(4)) 'Long
  loc_11316B7:       Set var_C0 = Me.FGrid
  loc_11316CE:       Proc_6_17_EAA2B0(var_12C, CVar(CStr(var_C0.TextMatrix))), var_E0, CVar(CLng(Me.FGrid.Row)), var_E0, CVar(CLng(Me.FGrid.Row)))
  loc_11316F7:       Me.Find CStr("Code =" & var_12C), 0, 1
  loc_1131727:       If (Me.EOF = &HFF) Then
  loc_1131730:         Me.MoveFirst
  loc_1131735:       End If
  loc_1131735:     End If
  loc_1131742:     Set var_AC = Me.TxtGrid
  loc_1131748:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_118, var_15C, var_E0)
  loc_1131750:     var_98 = var_C0.Left
  loc_1131767:     Me.DGItem.Left = CVar(var_118)
  loc_1131782:     Set var_F4 = Me.TxtGrid
  loc_1131788:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_160)
  loc_1131790:     var_114 = var_108.Height
  loc_11317A2:     Set var_AC = Me.TxtGrid
  loc_11317A8:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_118)
  loc_11317B0:     var_98 = var_C0.Top
  loc_11317BC:     var_98 = CVar((var_118 + var_160)) 'Single
  loc_11317CB:     Me.DGItem.Top = var_98
  loc_11317E0:   Else
  loc_11317E7:     If (var_114 = CLng(3)) Then
  loc_11317F9:       Set var_AC = Me.TxtGrid
  loc_11317FF:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_1131807:       var_C0.MaxLength = 0
  loc_113181C:       If (global_98 = 0) Then
  loc_1131827:         var_110 = "{Home}+{End}"
  loc_113182D:         Proc_303_0_FB9B68(CStr("Code =" & var_12C), 0)
  loc_1131835:       End If
  loc_1131835:     End If
  loc_1131835:   End If
  loc_1131835: End If
  loc_1131835: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1058860
  'Data Table: 4A4184
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_10585FC: If (KeyCode = 0) Then
  loc_1058609:   If (CLng(Shift) = &H1B) Then
  loc_1058619:     Set var_8C = Me.TxtGrid
  loc_105861F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1058639:     Set var_98 = Me.TxtGrid
  loc_105863F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1058647:     var_9C.Text = var_90.Tag
  loc_1058663:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1058668:     Call Proc_42_49_E839F8(arg_14)
  loc_1058671:     Set var_8C = Me.FGrid
  loc_105868E:     Set var_8C = Me.TxtGrid
  loc_1058694:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_105869C:     var_90.Visible = FGrid.DispID_8001
  loc_10586A8:     Exit Sub
  loc_10586A9:   End If
  loc_10586BC:   var_B0 = CLng(Me.FGrid.Col)
  loc_10586CC:   If (var_B0 = CLng(1)) Then
  loc_10586E7:     Set var_9C = Nothing
  loc_1058720:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_56, Shift, &HFF)
  loc_105873E:     If (CLng(Shift) = &HD) Then
  loc_1058747:       Call Proc_42_44_1225DA8(KeyCode, var_B2, 1, Nothing)
  loc_1058752:       If (var_B2 = &HFF) Then
  loc_1058798:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_98, 3, 2)
  loc_10587A8:       End If
  loc_10587A8:     End If
  loc_10587AB:   Else
  loc_10587B2:     If (var_B0 = CLng(3)) Then
  loc_10587F5:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_98 = &HFF))) Then
  loc_10587FE:         Call Proc_42_44_1225DA8(KeyCode, var_B2, 3, 0)
  loc_1058809:         If (var_B2 = &HFF) Then
  loc_105884F:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_98, 3, 0)
  loc_105885F:         End If
  loc_105885F:       End If
  loc_105885F:     End If
  loc_105885F:   End If
  loc_105885F: End If
  loc_105885F: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F008AC
  'Data Table: 4A4184
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F007D3: Proc_6_58_E054C0(arg_10)
  loc_F007E4: If (KeyAscii = 0) Then
  loc_F007FA:   var_A0 = CLng(Me.FGrid.Col)
  loc_F0080A:   If (var_A0 = CLng(1)) Then
  loc_F00829:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F00830:       Set var_AC = Me.TxtGrid
  loc_F0083B:       var_A4 = "Name"
  loc_F00856:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_56, arg_10)
  loc_F00865:     End If
  loc_F00868:   Else
  loc_F0086F:     If (var_A0 = CLng(3)) Then
  loc_F0087C:       Set var_8C = Me.TxtGrid
  loc_F00882:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F0089D:       Proc_6_42_129A86C(var_AC, arg_10, 8, 3)
  loc_F008A9:     End If
  loc_F008A9:   End If
  loc_F008A9: End If
  loc_F008A9: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'ED948C
  'Data Table: 4A4184
  loc_ED93D8: On Error Goto loc_ED9483
  loc_ED93E7: If (KeyCode = 0) Then
  loc_ED940D:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_ED9433:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_ED9444:       Call TxtGrid_KeyDown(KeyCode, global_96)
  loc_ED9473:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_56, Shift, "Name")
  loc_ED9482:     End If
  loc_ED9482:   End If
  loc_ED9482: End If
  loc_ED9482: Exit Sub
  loc_ED9483: ' Referenced from: ED93D8
  loc_ED9483: Proc_6_60_E62BC4(&HFF, 0)
  loc_ED9488: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23FA0
  'Data Table: 4A4184
  Dim arg_10 As Integer
  loc_E23F88: If (Cancel = 0) Then
  loc_E23F91:   Call Proc_42_44_1225DA8(Cancel, var_88)
  loc_E23F9A:   arg_10 = Not(var_88)
  loc_E23F9D: End If
  loc_E23F9D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFE098
  'Data Table: 4A4184
  Dim var_8C As String
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_EFDFBC: On Error Goto loc_EFE092
  loc_EFDFE2: Call Proc_42_48_F8D25C(Proc_5_1_100CB50("ADD", Me))
  loc_EFDFED: Call Proc_42_47_F57AD8(global_64)
  loc_EFDFF7: var_8C = CStr(MemVar_1F920EC)
  loc_EFE005: Set var_90 = Me.Txt
  loc_EFE00B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_EFE013: var_98.Text = var_8C
  loc_EFE028: Call Proc_42_51_114F5FC(MemVar_1F92044)
  loc_EFE033: global_72 = var_8C
  loc_EFE045: Set var_90 = Me.Txt
  loc_EFE04B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_98)
  loc_EFE053: var_98.SetFocus
  loc_EFE064: Set var_88 = Nothing
  loc_EFE074: Me.LblUser.Caption = vbNullString
  loc_EFE089: Me.LblLDt.Caption = vbNullString
  loc_EFE091: Exit Sub
  loc_EFE092: ' Referenced from: EFDFBC
  loc_EFE092: Proc_6_60_E62BC4(var_8C)
  loc_EFE097: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EB2244
  'Data Table: 4A4184
  loc_EB21B8: On Error Goto loc_EB223B
  loc_EB21F2: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EB2218:   Call Proc_42_48_F8D25C(Proc_5_1_100CB50("INI", Me))
  loc_EB2223:   Call Proc_42_45_141A8A4(global_64)
  loc_EB222E:   global_108 = vbNullString
  loc_EB2237:   global_100 = 0
  loc_EB223A: End If
  loc_EB223A: Exit Sub
  loc_EB223B: ' Referenced from: EB21B8
  loc_EB223B: Proc_6_60_E62BC4(global_100)
  loc_EB2240: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10F1C20
  'Data Table: 4A4184
  Dim unk_4A419C As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_10F1900: On Error Goto loc_10F1BD1
  loc_10F1911: If (Proc_183_56_FE8818(global_64) = &HFF) Then
  loc_10F1914:   Exit Sub
  loc_10F1915: End If
  loc_10F194C: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_10F1958:   unk_4A419C.BeginTrans var_118
  loc_10F196E:   var_94 = Me.Bookmark 'Variant
  loc_10F19C8:   unk_4A419C.Execute CStr("Delete From Ledger Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_10F1A3A:   unk_4A419C.Execute CStr("Delete From Purch1 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_10F1AAC:   unk_4A419C.Execute CStr("Delete From Stock Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_10F1B10:   var_F4 = "Delete From KClStk Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10F1B14:   var_124 = CStr(var_F4)
  loc_10F1B1E:   unk_4A419C.Execute var_124, var_114, -1
  loc_10F1B40:   unk_4A419C.CommitTrans
  loc_10F1B50:   Me.Requery -1
  loc_10F1B70:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10F1B7D:     Me.Bookmark = var_94
  loc_10F1B85:   Else
  loc_10F1B99:     If (Me.EOF = 0) Then
  loc_10F1BA2:       Me.MoveLast
  loc_10F1BA7:     End If
  loc_10F1BA7:   End If
  loc_10F1BA7:   Call Proc_42_45_141A8A4(var_128, var_128)
  loc_10F1BC8:   Proc_5_0_110649C(&HFF, Me, global_64)
  loc_10F1BD0: End If
  loc_10F1BD0: Exit Sub
  loc_10F1BD1: ' Referenced from: 10F1900
  loc_10F1BD7: unk_4A419C.RollbackTrans
  loc_10F1BE4: Set var_11C = Err()
  loc_10F1BEA: Call 0.Method_arg_2C (var_124, 0)
  loc_10F1C0B: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_10F1C1E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F13438
  'Data Table: 4A4184
  Dim var_8C As Label
  Dim var_94 As TextBox
  loc_F13340: On Error Goto loc_F13430
  loc_F13351: If (Proc_183_55_FE7900(global_64) = &HFF) Then
  loc_F13354:   Exit Sub
  loc_F13355: End If
  loc_F13378: Call Proc_42_48_F8D25C(Proc_5_1_100CB50("EDIT", Me))
  loc_F13390: Me.LblUser.Caption = vbNullString
  loc_F133A5: Me.LblLDt.Caption = vbNullString
  loc_F133BA: Set var_8C = Me.Txt
  loc_F133C0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_94)
  loc_F133E2: Set var_8C = Me.Txt
  loc_F133E8: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F13402: If (False = &HFF) Then
  loc_F13410:   Set var_8C = Me.Txt
  loc_F13416:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F1341E:   var_94.SetFocus
  loc_F1342A: End If
  loc_F1342A: Call Proc_42_53_E8A008(global_64)
  loc_F1342F: Exit Sub
  loc_F13430: ' Referenced from: F13340
  loc_F13430: Proc_6_60_E62BC4()
  loc_F13435: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19FD4
  'Data Table: 4A4184
  loc_E19FC9: Me.Global.Unload Me
  loc_E19FD1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB231C
  'Data Table: 4A4184
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB228C: On Error Goto loc_EB2316
  loc_EB22A6: If (Me.RecordCount <= 0) Then
  loc_EB22AF:   var_B8 = "Information"
  loc_EB22CA:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB22DA:   Exit Sub
  loc_EB22DB: End If
  loc_EB22DE: MemVar_1F920E4 = "Select DISTINCT Docid as SearchCode,K.Vtype As VType,Convert(Varchar(10),K.VNo) as VrNo ,Convert(Varchar(12),K.VDate,103) as VDate,GodownMast.NAME AS Location From KClStk K LEFT JOIN GodownMast ON K.DEPARTCODE=GodownMast.CODE Order By VRno"
  loc_EB22EB: Proc_6_126_F1BCC0("800,800,1100,4000")
  loc_EB22F9: MemVar_1F92120 = Me
  loc_EB2310: Call 0.Method_arg_2B0 (1)
  loc_EB2315: Exit Sub
  loc_EB2316: ' Referenced from: EB228C
  loc_EB2316: Proc_6_60_E62BC4(var_B8)
  loc_EB231B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2BDB8
  'Data Table: 4A4184
  Dim CancelFF As Double
  loc_E2BDA8: Proc_5_0_110649C(&HFF, Me)
  loc_E2BDB0: Call Proc_42_45_141A8A4(global_64)
  loc_E2BDB5: Exit Sub
  loc_E2BDB6: CancelFF = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2BD58
  'Data Table: 4A4184
  Dim CancelFF As Double
  loc_E2BD48: Proc_5_0_110649C(&HFF, Me)
  loc_E2BD50: Call Proc_42_45_141A8A4(global_64)
  loc_E2BD55: Exit Sub
  loc_E2BD56: CancelFF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2BC98
  'Data Table: 4A4184
  Dim CancelFF As Double
  loc_E2BC88: Proc_5_0_110649C(&HFF, Me)
  loc_E2BC90: Call Proc_42_45_141A8A4(global_64)
  loc_E2BC95: Exit Sub
  loc_E2BC96: CancelFF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2B6F8
  'Data Table: 4A4184
  Dim CancelFF As Double
  loc_E2B6E8: Proc_5_0_110649C(&HFF, Me)
  loc_E2B6F0: Call Proc_42_45_141A8A4(global_64)
  loc_E2B6F5: Exit Sub
  loc_E2B6F6: CancelFF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1064790
  'Data Table: 4A4184
  Dim var_A8 As TextBox
  Dim var_B0 As String
  Dim unk_4A419C As Connection15
  Dim var_9C As Recordset15
  Dim var_C0 As Variant
  Dim var_AC As String
  Dim var_126 As Integer
  loc_1064524: On Error Goto loc_1064789
  loc_1064538: Set var_A4 = Me.Txt
  loc_106453E: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(3), var_A8)
  loc_1064546: var_AC = var_A8.Text
  loc_106454F: var_B0 = "SELECT KS.VDATE,KS.VTYPE,KS.VNO,KS.SNO,I.NAME ITEMNAME,KS.UNIT,KS.QTY,ISNULL(KS.REMARKS,'') REMARKS,KS.U_NAME,G.NAME LOCATION,KS.DEPARTCODE,KS.ITEM From KClStk KS LEFT JOIN ITEMMAST I ON KS.ITEM=I.CODE AND I.ITEMTYPE='Store' LEFT JOIN GODOWNMAST G ON KS.DEPARTCODE=G.CODE WHERE KS.DOCID='" & var_AC
  loc_1064556: var_88 = var_B0 & "' ORDER BY KS.VNO,KS.SNO"
  loc_106456F: If (var_88 = vbNullString) Then
  loc_1064572:   Exit Sub
  loc_1064573: End If
  loc_1064589: unk_4A419C.Execute var_88, var_D0, -1
  loc_1064594: Set var_9C = var_A4
  loc_10645A3: var_D4 = var_9C.RecordCount
  loc_10645B1: If (var_D4 <= 0) Then
  loc_10645BA:   Call 0.Method_arg_50 (var_AC)
  loc_10645DB:   MsgBox("** No Records Found to Print **", &H40, CVar(var_AC), var_104, var_124)
  loc_10645EB:   Exit Sub
  loc_10645EC: End If
  loc_1064602: Set var_A4 = var_9C 
  loc_106460E: var_126 = CreateFieldDefFile(var_A4, MemVar_1F920B4 & "\kClStk.ttx")
  loc_106461E: var_C0 = CVar(var_126) 'Integer
  loc_1064621: var_98 = var_C0 'Variant
  loc_106463D: var_AC = MemVar_1F920B4 & "\kClStk.RPT"
  loc_1064646: Call 0.Method_arg_1C (var_AC, var_C0, var_A4)
  loc_1064651: MemVar_1F921E4 = var_A4
  loc_1064674: Call 0.Method_arg_64 (var_A4, CVar(var_A4), var_F4, var_114)
  loc_106467C: Call 0.Method_arg_2C (var_126, &HFF)
  loc_106468A: Call 0.Method_arg_150 (var_A4)
  loc_10646A0: Call 0.Method_arg_90 (var_A4, var_D4)
  loc_10646A8: Call 0.Method_arg_24 (var_9E)
  loc_10646B4: For var_12A =  To CInt(var_D4): 1 = var_12A 'Integer
  loc_10646CD:   Call 0.Method_arg_90 (var_A4, CLng(var_9E))
  loc_10646D5:   Call 0.Method_arg_20 (var_A8)
  loc_10646DD:   Call 0.Method_arg_30 (var_AC)
  loc_10646F7:   If (var_AC = "Title") Then
  loc_106470D:     Call 0.Method_arg_90 (var_A4, CLng(var_9E))
  loc_1064715:     Call 0.Method_arg_20 (var_A8)
  loc_106471D:     Call 0.Method_arg_38 ("'Kitchen Closing Stock'")
  loc_1064729:   End If
  loc_106472C: Next var_12A 'Integer
  loc_1064737: Call 0.Method_arg_50 (var_AC)
  loc_1064741: Set var_A8 = Nothing
  loc_106475B: Set var_A4 = MemVar_1F921E4 
  loc_1064767: Proc_6_99_1483714(var_A4, 0, var_AC)
  loc_1064772: MemVar_1F921E4 = var_A4
  loc_1064785: Set var_9C = Nothing
  loc_1064788: Exit Sub
  loc_1064789: ' Referenced from: 1064524
  loc_1064789: Proc_6_60_E62BC4(&HFF)
  loc_106478E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E238BC
  'Data Table: 4A4184
  Dim Me As Recordset15
  loc_E238A3: Me.Requery -1
  loc_E238B3: Me.Requery -1
  loc_E238B8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '146BF24
  'Data Table: 4A4184
  Dim var_B8 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_B4 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_C0 As String
  Dim var_158 As String
  Dim unk_4A419C As Connection15
  Dim var_BC As Variant
  Dim var_160 As Variant
  Dim var_164 As Variant
  Dim Me As Variant
  Dim var_8E As Integer
  Dim var_1DC As Variant
  Dim var_580 As Double
  Dim var_214 As TextBox
  Dim var_588 As Double
  Dim var_234 As TextBox
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_590 As Double
  Dim var_3A8 As Variant
  Dim var_1E0 As String
  Dim var_1E8 As String
  Dim var_1F0 As String
  Dim var_154 As Variant
  Dim var_258 As Variant
  Dim var_408 As Variant
  Dim var_134 As Variant
  Dim var_88 As Recordset15
  Dim var_1EC As String
  loc_146B438: On Error Goto loc_146BF08
  loc_146B446: Set var_B4 = Me.Txt
  loc_146B44C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_146B475: If (Proc_6_27_EA565C(var_B8, "Invoice Date") = 0) Then
  loc_146B478:   Exit Sub
  loc_146B479: End If
  loc_146B484: Set var_B4 = Me.Txt
  loc_146B48A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_146B4B3: If (Proc_6_27_EA565C(var_B8, "Invoice No") = 0) Then
  loc_146B4B6:   Exit Sub
  loc_146B4B7: End If
  loc_146B4BA: Call Proc_42_46_F95968(var_C2)
  loc_146B4C5: If (var_C2 = 0) Then
  loc_146B4C8:   Exit Sub
  loc_146B4C9: End If
  loc_146B4D4: Set var_B4 = Me.TxtGrid
  loc_146B4DA: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_B8)
  loc_146B4E2: var_B8.Visible = False
  loc_146B4EE: Call Proc_42_49_E839F8(var_B8)
  loc_146B4F3: var_D4 = 1
  loc_146B4FC: var_F4 = 1
  loc_146B51A: var_124 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_146B520: var_134 = Trim(var_124)
  loc_146B53C: If (var_134 = vbNullString) Then
  loc_146B552:   var_114 = "Item Detail Required "
  loc_146B558:   MsgBox(var_114, 0, var_124, var_134, var_154)
  loc_146B57B:   Me.FGrid.Row = 1
  loc_146B587:   Set var_B4 = Me.FGrid
  loc_146B59C:   var_D4 = CVar(CLng("14737632")) 'Long
  loc_146B5AB:   Me.FGrid.CellBackColor = var_D4
  loc_146B5B3:   Exit Sub
  loc_146B5B4: End If
  loc_146B5B7: Call Proc_42_52_100F364(var_C2, FGrid.DispID_8001)
  loc_146B5C2: If (var_C2 = 0) Then
  loc_146B5D0:   Set var_B4 = Me.Txt
  loc_146B5D6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_B8)
  loc_146B5DE:   var_B8.SetFocus
  loc_146B5EA:   Exit Sub
  loc_146B5EB: End If
  loc_146B5EF: Set var_B4 = Me.TopCtrl1
  loc_146B5F5: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_F4)
  loc_146B5FD: var_C0 = CStr(var_D4)
  loc_146B60E: If (var_C0 = "Add") Then
  loc_146B63E:   Set var_B4 = Me.Txt
  loc_146B644:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, "Select Count(*) From Purch1 Where DocID='", var_114, -1)
  loc_146B64C:   var_BC = var_B8.Text
  loc_146B665:   unk_4A419C.Execute var_160 & var_C0 & "'", 0, var_164
  loc_146B675:    = var_160.Item()
  loc_146B67D:    = var_164.Value
  loc_146B6AA:   If (var_BC.Fields > 0) Then
  loc_146B6B3:     Call Proc_42_51_114F5FC(MemVar_1F92044)
  loc_146B6C6:     Set var_B4 = Me.Txt
  loc_146B6CC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8)
  loc_146B6D4:     var_B8.Text = var_C0
  loc_146B6E3:     Exit Sub
  loc_146B6E4:   End If
  loc_146B6E7: Else
  loc_146B704:   var_B8 = Me.Fields.Item("DocID")
  loc_146B70C:   var_114 = var_B8.Value
  loc_146B715:   var_C0 = CStr(var_114)
  loc_146B71B:   global_72 = var_C0
  loc_146B72C: End If
  loc_146B73A: unk_4A419C.BeginTrans var_168
  loc_146B75D: Set var_B4 = Me.Txt
  loc_146B763: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, "Delete From KClStk Where DocID='", var_114)
  loc_146B76B: -1 = var_B8.Text
  loc_146B784: unk_4A419C.Execute var_BC & var_C0 & "'", &HFF, var_C0
  loc_146B7C3: For var_16C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_98 = var_16C 'Integer
  loc_146B7CD:   var_D4 = CVar(CLng(var_98)) 'Long
  loc_146B7D5:   var_F4 = CVar(CLng(1)) 'Long
  loc_146B7F5:   var_134 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_146B81C:   Set var_B8 = Me.FGrid
  loc_146B82D:   var_C0 = CStr(var_B8.TextMatrix))
  loc_146B85B:   If CBool(CVar(CLng(3)) And (CDbl(Val(var_C0)) >= CDbl(0))) Then
  loc_146B86C:     Set var_B4 = Me.Txt
  loc_146B872:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, CVar(CLng(var_98)))
  loc_146B87A:     (var_134 <> vbNullString) = var_B8.Text
  loc_146B883:     var_D4 = CVar(CLng(var_98)) 'Long
  loc_146B8AD:     var_580 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_146B8BE:     Set var_160 = Me.Txt
  loc_146B8C4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_164, var_1EC, var_580, CVar(CLng(0)))
  loc_146B8CC:     var_D4 = var_164.Tag
  loc_146B8F1:     Set var_210 = Me.Txt
  loc_146B8F7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_214, var_218)
  loc_146B8FF:     var_F4 = var_214.Text
  loc_146B90C:     var_588 = Val(var_218)
  loc_146B91A:     Set var_228 = Me.Txt
  loc_146B920:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_22C, var_588)
  loc_146B928:     var_124 = CVar(var_22C) 'Address
  loc_146B92F:     Proc_6_7_F25D88(var_134, var_124)
  loc_146B942:     Set var_230 = Me.Txt
  loc_146B948:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_234, var_238)
  loc_146B950:     var_D4 = var_234.Tag
  loc_146B959:     var_18C = CVar(CLng(var_98)) 'Long
  loc_146B961:     var_1AC = CVar(CLng(4)) 'Long
  loc_146B9AA:     var_590 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_146B9C8:     var_3A8 = Me.FGrid.TextMatrix)
  loc_146B9D7:     Proc_6_104_ED5D18(var_438, var_3A8, CVar(CLng(2)), CVar(CLng(var_98)), var_590, CVar(CLng(3)))
  loc_146B9E0:     Set var_46C = Me.TopCtrl1
  loc_146B9E6:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(var_98)))
  loc_146BA31:     var_158 = "Insert Into KClStk (DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,DepartCode,Item,Qty,Unit,U_Name,U_EntDt,U_AE,logSite_Code) Values ('" & var_C0
  loc_146BA38:     var_1E0 = var_158 & "',"
  loc_146BA88:     var_154 = CVar(var_1E0 & CStr(var_580) & ",'" & var_1EC & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "'," & CStr(var_588) & ",") 'String
  loc_146BAA1:     var_258 = var_154 & var_134 & ",'" & CVar(var_238) 
  loc_146BAF0:     var_408 = var_258 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(var_590) & ",'" & CVar(CStr(var_3A8)) & "','" & CVar(MemVar_1F920C8) 
  loc_146BB3A:     unk_4A419C.Execute CStr(var_408 & "'," & var_438 & ",'" & IIf((CStr(var_47C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_574, -1
  loc_146BBD8:   End If
  loc_146BBDB: Next var_16C 'Integer
  loc_146BBE4: Set var_B4 = Me.TopCtrl1
  loc_146BBEA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_146BC03: If (CStr() = "Add") Then
  loc_146BC1A:   var_C0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_146BC40:   Set var_B4 = Me.Txt
  loc_146BC46:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B8, var_1E0, var_C0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='")
  loc_146BC4E:   var_1DC = var_B8.Tag
  loc_146BC57:   var_1E8 = -1 & var_1E0
  loc_146BC5E:   var_134 = CVar(var_1E0 & CStr(var_580) & "' And VP.Date_From<=") 'String
  loc_146BC6F:   Set var_BC = Me.Txt
  loc_146BC75:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_160, var_1EC)
  loc_146BC7D:   var_134 = var_160.Text
  loc_146BC8B:   Proc_6_7_F25D88(var_124, CVar(var_1EC))
  loc_146BCAA:   unk_4A419C.Execute CStr(var_164 & var_124 & " Order By VP.Date_From DESC"), , 
  loc_146BCB5:   Set var_88 = var_164
  loc_146BCF9:   If (var_88.RecordCount > 0) Then
  loc_146BD0A:     Set var_B4 = Me.Txt
  loc_146BD10:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_146BD18:     var_C0 = var_B8.Text
  loc_146BD25:     var_580 = Val(var_C0)
  loc_146BD2E:     var_D4 = "V_Type"
  loc_146BD75:     Proc_6_7_F25D88(var_1DC, CVar(var_88.Fields.Item("Date_From")))
  loc_146BDA8:     var_1E8 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_580) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_146BDD0:     var_1F0 = CStr(CVar(var_1E8 & MemVar_1F92078 & "') and V_Type='") & var_88.Fields.Item(var_D4).Value & "' and Date_From=" & var_1DC)
  loc_146BDDA:     unk_4A419C.Execute var_1F0, var_258, -1
  loc_146BE14:   End If
  loc_146BE14: End If
  loc_146BE1A: unk_4A419C.CommitTrans
  loc_146BE21: var_8E = 0
  loc_146BE32: Set var_B4 = Me.Txt
  loc_146BE38: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0)
  loc_146BE40: var_8E = var_B8.Text
  loc_146BE54: var_8E = 0
  loc_146BE62: Me.Requery -1
  loc_146BE8C: Me.Find "SearchCode ='" & "SearchCode ='" & var_C0 & "'", 0, 1
  loc_146BE9C: Set var_B4 = Me.TopCtrl1
  loc_146BEA2: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D4)
  loc_146BEBB: If (CStr(var_8E) = "Add") Then
  loc_146BEBE:   Call TopCtrl1_UnknownEvent_A()
  loc_146BEC3:   Exit Sub
  loc_146BEC4: End If
  loc_146BEE7: Call Proc_42_48_F8D25C(Proc_5_1_100CB50("INI", Me, global_64), var_210)
  loc_146BEF2: Call Proc_42_45_141A8A4(var_580)
  loc_146BEFC: global_100 = 0
  loc_146BF04: Set var_88 = Nothing
  loc_146BF07: Exit Sub
  loc_146BF08: ' Referenced from: 146B438
  loc_146BF0E: If (var_8E = &HFF) Then
  loc_146BF17:   unk_4A419C.RollbackTrans
  loc_146BF1C: End If
  loc_146BF1C: Proc_6_60_E62BC4(global_100)
  loc_146BF21: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F44FC4
  'Data Table: 4A4184
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F44EBB: Me.DGDepart.Visible = False
  loc_F44EDA: If (Me.RecordCount > 0) Then
  loc_F44F19:   Set var_B4 = Me.Txt
  loc_F44F1F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(4), var_B8)
  loc_F44F27:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F44F5A:   var_B0 = Me.Fields.Item("Code")
  loc_F44F79:   Set var_B4 = Me.Txt
  loc_F44F7F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(4), var_B8)
  loc_F44F87:   var_B8.Tag = CStr(var_B0.Value)
  loc_F44F9D: End If
  loc_F44FA8: Set var_A8 = Me.Txt
  loc_F44FAE: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(4))
  loc_F44FB6: var_B0.SetFocus
  loc_F44FC2: Exit Sub
End Sub

Private Sub Form_Load(Index As Integer) '11423A0
  'Data Table: 4A4184
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_4A419C As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Variant
  Dim var_DC As Variant
  Dim Me As Recordset15
  Dim Index30 As Variant
  loc_1142018: On Error Goto loc_1142398
  loc_1142029: Set var_8C = Me.Txt
  loc_114202F: Call 0.Method_Form_Load0 (CInt(4), var_90)
  loc_114204E: Me.DGDepart.Left = CVar(var_90.Left)
  loc_114206A: Set var_B8 = Me.Txt
  loc_1142070: Call 0.Method_Form_Load0 (CInt(4), var_BC)
  loc_1142091: Call 0.Method_Form_Load0 (CInt(4), var_90)
  loc_11420A5: var_A4 = CVar((var_90.Top + var_BC.Height)) 'Single
  loc_11420B4: Me.DGDepart.Top = CVar(var_90.Left)
  loc_11420EA: unk_4A419C.Execute "Select AutoFillItemInKitchenClosingYN,DateEditableOnRequisitionYN from enviro where LogSite_Code='" & MemVar_1F92078 & "'", var_DC, -1
  loc_11420F5: Set var_88 = Me.Txt
  loc_1142133: global_104 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("AutoFillItemInKitchenClosingYN")))
  loc_114216E: global_124 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DateEditableOnRequisitionYN")))
  loc_1142197: Me.Recordset15.CursorLocation = 3
  loc_11421C1: var_DC = CVar("Select Code,I.Name as Name ,I.IssueUnit As Unit,I.PurchRate as Rate From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (type in ('Consumables','Store Item','Raw Material') OR (type='Finish' AND DirectSale='Y'))  Order by Name") 'String
  loc_11421CB: Me.Open var_DC, CVar(MemVar_1F92044), 3
  loc_11421DF: CVarUnk
  loc_11421E4: VerifyVarObj
  loc_11421EA: Set var_8C = Me.DGItem
  loc_11421F0: LateIdStAd
  loc_114221A: Me.DGItem.CursorLocation = 3
  loc_1142244: var_DC = CVar("Select G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078 & "' or G.LOGSITE_CODE='HO') and D.RestType in ('Kitchen','Staff Kitchen') Order by G.Name") 'String
  loc_1142262: CVarUnk
  loc_1142267: VerifyVarObj
  loc_114226D: Set var_8C = Me.DGDepart
  loc_1142273: LateIdStAd
  loc_114229D: Me.DGDepart.CursorLocation = 3
  loc_11422C0: var_C8 = "Select Distinct K.Docid as SearchCode,K.DocID,K.LogSite_Code,K.Site_Code From KClStk K where   LOGSITE_CODE='" & MemVar_1F92078
  loc_11422D1: r_DC, CVar(MemVar_1F92044), 2 CVar(var_C8 & "' Order by Docid"), CVar(MemVar_1F92044), 3
  loc_11422FF: Call Proc_42_48_F8D25C(Proc_5_1_100CB50("INI", Me, New, 1, -1, Me, New), 3, -1, Me)
  loc_1142319: Me.LblUser.Left = CDbl(13500)
  loc_1142330: Me.LblUser.Top = CDbl(7800)
  loc_1142347: Me.LblLDt.Top = CDbl(8160)
  loc_114235E: Me.LblLDt.Left = CDbl(13500)
  loc_114236D: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), New, 1)
  loc_114237F: Set var_8C = Me.FGrid
  loc_1142385: var_8C.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_114238D: Call Proc_42_42_102C7D4(-1)
  loc_1142392: Call Proc_42_45_141A8A4(var_8C)
  loc_1142397: Exit Sub
  loc_1142398: ' Referenced from: 1142018
  loc_1142398: Proc_6_60_E62BC4()
  loc_114239D: Exit Sub
  loc_114239E: Index30 = CVar() 'Integer
End Sub

Private Sub Form_Resize() 'ED5698
  'Data Table: 4A4184
  Dim var_8C As Label
  loc_ED55F6: Call 0.Method_arg_50 (var_88)
  loc_ED5608: Me.LblFormCaption.Caption = var_88
  loc_ED5621: Me.LblFormCaption.Left = CDbl(0)
  loc_ED562D: Set var_A0 = Me.TopCtrl1
  loc_ED5633: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED5640: Set var_8C = Me.TopCtrl1
  loc_ED5646: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED5660: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED567B: Call 0.Method_arg_100 (var_B8)
  loc_ED568D: Me.LblFormCaption.Width = var_B8
  loc_ED5695: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E584F4
  'Data Table: 4A4184
  loc_E584BF: Set global_56 = Nothing
  loc_E584D1: Set global_60 = Nothing
  loc_E584E3: Set global_64 = Nothing
  loc_E584EF: MasterFormExit = 0
  loc_E584F2: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25804
  'Data Table: 4A4184
  loc_E257E9: If (MasterFormExit = &HFF) Then
  loc_E257F9:   Me.Global.Unload Me
  loc_E25801: End If
  loc_E25801: Exit Sub
  loc_E25802: Get , ,  'get  bytes
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2BED8
  'Data Table: 4A4184
  loc_E2BEAC: On Error Goto loc_E2BED0
  loc_E2BEC7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2BECF: Exit Sub
  loc_E2BED0: ' Referenced from: E2BEAC
  loc_E2BED0: Proc_6_60_E62BC4(Shift)
  loc_E2BED5: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FE504C
  'Data Table: 4A4184
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FE4E86: Set var_88 = Me.Txt
  loc_FE4E8C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FE4E9A: Proc_6_74_E226B0(var_8C)
  loc_FE4EA6: Call Proc_42_49_E839F8(var_8C)
  loc_FE4EAE: var_92 = Index
  loc_FE4EB9: If (var_92 = CInt(4)) Then
  loc_FE4F0A:   Set var_88 = Me.Txt
  loc_FE4F10:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FE4F18:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FE4F30:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_FE4F33:     Exit Sub
  loc_FE4F34:   End If
  loc_FE4F41:   Set var_88 = Me.Txt
  loc_FE4F47:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FE4F5A:   global_112 = var_8C.Text
  loc_FE4F75:   Set var_88 = Me.Txt
  loc_FE4F7B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FE4F83:   var_A0 = var_8C.Text
  loc_FE4F8B:   var_D4 = CVar(var_A0) 'String
  loc_FE4FD0:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FE4FD9:     Me.MoveFirst
  loc_FE4FFE:     Set var_88 = Me.Txt
  loc_FE5004:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_FE500C:     0 = var_8C.Text
  loc_FE501A:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0))
  loc_FE5030:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_FE5048:   End If
  loc_FE5048: End If
  loc_FE5048: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FAF414
  'Data Table: 4A4184
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim KeyCodeFF As Double
  loc_FAF28E: If (CLng(Shift) = &H1B) Then
  loc_FAF291:   Call Proc_42_49_E839F8()
  loc_FAF296:   Exit Sub
  loc_FAF297: End If
  loc_FAF29A: var_86 = KeyCode
  loc_FAF2A5: If (var_86 = CInt(4)) Then
  loc_FAF2C0:   Set var_9C = Nothing
  loc_FAF2CB:   Set var_98 = Nothing
  loc_FAF2F9:   Proc_6_69_134A198(Me.DGDepart, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_FAF30D: End If
  loc_FAF329: If (CBool(Me.DGDepart.Visible) = 0) Then
  loc_FAF341:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FAF34A:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_FAF34F:   End If
  loc_FAF353:   Set var_8C = Me.TopCtrl1
  loc_FAF359:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_FAF372:   If (CStr(0) = "Add") Then
  loc_FAF38A:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FAF393:       Proc_6_76_E52838(Shift, arg_14)
  loc_FAF398:     End If
  loc_FAF39B:   Else
  loc_FAF39F:     Set var_8C = Me.TopCtrl1
  loc_FAF3A5:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_FAF3BE:     If (CStr() = "Edit") Then
  loc_FAF3D6:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FAF3DF:         Proc_6_76_E52838(Shift)
  loc_FAF3E4:       End If
  loc_FAF3E4:     End If
  loc_FAF3E4:   End If
  loc_FAF3F9:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FAF404:     Call Txt_Validate(KeyCode)
  loc_FAF40C:     Call Proc_42_50_F0A140(KeyCode, 0)
  loc_FAF411:   End If
  loc_FAF411: End If
  loc_FAF411: Exit Sub
  loc_FAF412: KeyCodeFF = arg_14
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE9360
  'Data Table: 4A4184
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_EE92A0: On Error Goto loc_EE935A
  loc_EE92A6: Proc_6_58_E054C0(arg_10)
  loc_EE92AE: var_86 = KeyAscii
  loc_EE92B9: If (var_86 = CInt(1)) Then
  loc_EE92C6:   Set var_8C = Me.Txt
  loc_EE92CC:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_EE92E7:   Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_EE92F6: Else
  loc_EE92FE:   If (var_86 = CInt(4)) Then
  loc_EE931D:     If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EE932F:       var_AC = "Name"
  loc_EE934A:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10)
  loc_EE9359:     End If
  loc_EE9359:   End If
  loc_EE9359: End If
  loc_EE9359: Exit Sub
  loc_EE935A: ' Referenced from: EE92A0
  loc_EE935A: Proc_6_60_E62BC4(var_AC, 0)
  loc_EE935F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B34C
  'Data Table: 4A4184
  loc_E4B32A: Set var_88 = Me.Txt
  loc_E4B330: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B33E: Proc_6_73_E22704(var_8C)
  loc_E4B34A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12E97BC
  'Data Table: 4A4184
  Dim var_94 As Integer
  Dim var_AC As String
  Dim var_B0 As Variant
  Dim var_98 As Variant
  Dim var_B4 As String
  Dim unk_4A419C As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim arg_10 As Integer
  Dim var_A8 As Variant
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_12E9100: On Error Goto loc_12E97B3
  loc_12E9106: var_94 = Cancel
  loc_12E9111: If (var_94 = CInt(1)) Then
  loc_12E9118:   Set var_98 = Me.TopCtrl1
  loc_12E911E:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_12E9126:   var_AC = CStr()
  loc_12E9137:   If (var_AC = "Add") Then
  loc_12E9140:     Call Proc_42_51_114F5FC(MemVar_1F92044)
  loc_12E9163:     Set var_98 = Me.Txt
  loc_12E9169:     Call 0.Method_Txt_Validate0 (CInt(3), var_B0)
  loc_12E9171:     var_B0.Text = var_AC
  loc_12E918D:     Me.LblVPrefix.Caption = global_80
  loc_12E9195:   End If
  loc_12E9199:   Set var_98 = Me.TopCtrl1
  loc_12E919F:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC)
  loc_12E91A7:   var_AC = CStr()
  loc_12E91B8:   If (var_AC = "Add") Then
  loc_12E91E8:     Set var_98 = Me.Txt
  loc_12E91EE:     Call 0.Method_Txt_Validate0 (CInt(3), var_B0, var_AC, "Select Count(*) From Purch1 Where DocID='", var_A8, -1)
  loc_12E91FF:     var_B4 = var_D0 & var_AC
  loc_12E920F:     unk_4A419C.Execute var_B4 & "'", 0, var_E4
  loc_12E921F:      = var_D0.Item()
  loc_12E9227:      = var_E4.Value
  loc_12E9254:     If (var_B0.Text.Fields > 0) Then
  loc_12E925D:       Call 0.Method_arg_50 (var_AC)
  loc_12E927E:       MsgBox("Duplicate Invoice No.", &H40, CVar(var_AC), var_114, var_124)
  loc_12E9294:       Call Proc_42_51_114F5FC(MemVar_1F92044)
  loc_12E92A4:       If (var_AC = vbNullString) Then
  loc_12E92B1:         Set var_98 = Me.Txt
  loc_12E92B7:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_12E92BF:         var_B0.SetFocus
  loc_12E92CD:         arg_10 = &HFF
  loc_12E92D0:         Exit Sub
  loc_12E92D1:       End If
  loc_12E92D7:       Call Proc_42_51_114F5FC(MemVar_1F92044, var_AC)
  loc_12E92EA:       Set var_98 = Me.Txt
  loc_12E92F0:       Call 0.Method_Txt_Validate0 (CInt(3), var_B0, var_AC)
  loc_12E92F8:       var_B0.Text = arg_10
  loc_12E9309:       arg_10 = &HFF
  loc_12E930C:       Exit Sub
  loc_12E930D:     End If
  loc_12E930D:   End If
  loc_12E9310: Else
  loc_12E9318:   If (var_94 = CInt(2)) Then
  loc_12E9329:     Set var_98 = Me.Txt
  loc_12E932F:     Call 0.Method_Txt_Validate0 (CInt(2), var_B0, var_AC)
  loc_12E9337:     arg_10 = var_B0.Text
  loc_12E934D:     var_114 = Len(Trim(CVar(var_AC)))
  loc_12E9367:     If (var_114 = 0) Then
  loc_12E937D:       Set var_98 = Me.Txt
  loc_12E9383:       Call 0.Method_Txt_Validate0 (CInt(2), var_B0)
  loc_12E938B:       var_B0.Text = CStr(MemVar_1F920EC)
  loc_12E939D:     Else
  loc_12E93A7:       Set var_98 = Me.Txt
  loc_12E93AD:       Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_12E93CD:       Set var_D0 = Me.Txt
  loc_12E93D3:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_12E93DB:       var_E4.Text = Proc_6_33_1512840(var_B0)
  loc_12E93EE:     End If
  loc_12E93FB:     Set var_98 = Me.Txt
  loc_12E9401:     Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_12E9409:     var_AC = var_B0.Text
  loc_12E9424:     Set var_CC = Me.Txt
  loc_12E942A:     Call 0.Method_Txt_Validate0 (Cancel, var_D0, var_B4)
  loc_12E9432:     (CDate(var_AC) >= MemVar_1F920F4) = var_D0.Text
  loc_12E9454:     If Not((var_AC And (CDate(var_B4) <= MemVar_1F920FC))) Then
  loc_12E9478:       MsgBox("Invoice Date Not Between Current Fin. Year", 0, "Date Validate", var_114, var_124)
  loc_12E9492:       Set var_98 = Me.Txt
  loc_12E9498:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_12E94A0:       var_B0.SetFocus
  loc_12E94AE:       arg_10 = &HFF
  loc_12E94B1:       Exit Sub
  loc_12E94B2:     End If
  loc_12E94B6:     Set var_98 = Me.TopCtrl1
  loc_12E94BC:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_12E94C4:     var_AC = CStr(var_B0)
  loc_12E94D5:     If (var_AC = "Add") Then
  loc_12E94DE:       Call Proc_42_51_114F5FC(MemVar_1F92044)
  loc_12E94F1:       Set var_98 = Me.Txt
  loc_12E94F7:       Call 0.Method_Txt_Validate0 (CInt(3), var_B0)
  loc_12E94FF:       var_B0.Text = var_AC
  loc_12E950E:     End If
  loc_12E9511:   Else
  loc_12E9519:     If (var_94 = CInt(4)) Then
  loc_12E9527:       Set var_98 = Me.Txt
  loc_12E952D:       Call 0.Method_Txt_Validate0 (CInt(4), var_B0)
  loc_12E9535:       var_AC = "Department Name"
  loc_12E9556:       If (Proc_6_27_EA565C(var_B0, var_AC) = 0) Then
  loc_12E9564:         Set var_98 = Me.Txt
  loc_12E956A:         Call 0.Method_Txt_Validate0 (CInt(4), var_B0)
  loc_12E9572:         var_B0.SetFocus
  loc_12E9580:         arg_10 = &HFF
  loc_12E9583:         Exit Sub
  loc_12E9584:       End If
  loc_12E95D2:       Set var_98 = Me.Txt
  loc_12E95D8:       Call 0.Method_Txt_Validate0 (Cancel, var_B0, var_AC)
  loc_12E95E0:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B0.Text
  loc_12E95F8:       If (arg_10 Or (var_AC = vbNullString)) Then
  loc_12E9608:         Set var_98 = Me.Txt
  loc_12E960E:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_12E9616:         var_B0.Text = vbNullString
  loc_12E962F:         Set var_98 = Me.Txt
  loc_12E9635:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_12E963D:         var_B0.Tag = vbNullString
  loc_12E964C:       Else
  loc_12E9687:         Set var_CC = Me.Txt
  loc_12E968D:         Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_12E9695:         var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12E96C8:         var_B0 = Me.Fields.Item("Code")
  loc_12E96D9:         var_AC = CStr(var_B0.Value)
  loc_12E96E6:         Set var_CC = Me.Txt
  loc_12E96EC:         Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_12E96F4:         var_D0.Tag = var_AC
  loc_12E9716:         Set var_98 = Me.Txt
  loc_12E971C:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_12E9724:         var_B0.Enabled = False
  loc_12E9730:       End If
  loc_12E9734:       Set var_98 = Me.TopCtrl1
  loc_12E973A:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC)
  loc_12E975F:       If ((CStr() = "Add") And (global_104 = "Yes")) Then
  loc_12E9798:         Call Proc_42_54_10E41CC(CStr(Trim(CVar(Me.Fields.Item("Code")))))
  loc_12E97AA:       End If
  loc_12E97AA:     End If
  loc_12E97AA:   End If
  loc_12E97AA: End If
  loc_12E97AF: Set var_88 = Nothing
  loc_12E97B2: Exit Sub
  loc_12E97B3: ' Referenced from: 12E9100
  loc_12E97B3: Proc_6_60_E62BC4()
  loc_12E97B8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA4A20
  'Data Table: 4A4184
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA49BB: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_68)) Then
  loc_EA49D0:   Me.FGrid.Col = CVar(CLng(1))
  loc_EA49D8: End If
  loc_EA49EB: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA49FE: Set var_88 = Me.TxtGrid
  loc_EA4A04: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA4A0C: var_BC.Visible = False
  loc_EA4A18: Call Proc_42_49_E839F8()
  loc_EA4A1D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67560
  'Data Table: 4A4184
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6751C: Set var_88 = Me.TxtGrid
  loc_E67522: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6753C: If (var_8C.Visible = 0) Then
  loc_E67555:   Me.FGrid.BackColorSel = CVar(CLng(global_68))
  loc_E6755D: End If
  loc_E6755D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFFE5C
  'Data Table: 4A4184
  Dim Cancel6C As Integer
  loc_DFFE54: Call Proc_42_43_E44B40()
  loc_DFFE59: Exit Sub
  loc_DFFE5A: Cancel6C = 
End Sub

Private Sub FGrid_UnknownEvent_A '116CB64
  'Data Table: 4A4184
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_116C79C: Set var_88 = Me.TopCtrl1
  loc_116C7A2: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_116C7E7: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_116C7F0:   Call Form_KeyDown(Cancel, arg_10)
  loc_116C7F5: End If
  loc_116C7F9: Set var_88 = Me.TopCtrl1
  loc_116C7FF: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_116C818: If (CStr() = "Browse") Then
  loc_116C81B:   Exit Sub
  loc_116C81C: End If
  loc_116C890: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_116C8A9:   Me.FGrid.CellBackColor = CVar(CLng(global_68))
  loc_116C8B9:   var_9C = "+{Tab}"
  loc_116C8BF:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_116C8C9:   Cancel = 0
  loc_116C8CF: Else
  loc_116C8D9:   var_B0 = Me.FGrid.Rows
  loc_116C926:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_116C93F:     Me.FGrid.CellBackColor = CVar(CLng(global_68))
  loc_116C94C:     Call Proc_42_50_F0A140(0, var_B0, Cancel)
  loc_116C951:   End If
  loc_116C951: End If
  loc_116C957: global_96 = Cancel
  loc_116C97D: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_116C9A1: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_116C9B7:   var_EC = CLng(Me.FGrid.Col)
  loc_116C9C7:   If (var_EC = CLng(1)) Then
  loc_116C9DD:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116C9F5:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116C9FA:     var_11C = vbNullString
  loc_116CA04:     Set var_B4 = Me.FGrid
  loc_116CA0A:     LateIdCallSt
  loc_116CA35:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116CA3D:     var_FC = CVar(CLng(4)) 'Long
  loc_116CA42:     var_11C = vbNullString
  loc_116CA4C:     Set var_A0 = Me.FGrid
  loc_116CA52:     LateIdCallSt
  loc_116CA77:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116CA7F:     var_FC = CVar(CLng(2)) 'Long
  loc_116CA84:     var_11C = vbNullString
  loc_116CA8E:     Set var_A0 = Me.FGrid
  loc_116CA94:     LateIdCallSt
  loc_116CAB9:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116CAC1:     var_FC = CVar(CLng(3)) 'Long
  loc_116CAC6:     var_11C = vbNullString
  loc_116CAD0:     Set var_A0 = Me.FGrid
  loc_116CAD6:     LateIdCallSt
  loc_116CAEB:   Else
  loc_116CAF2:     If (var_EC = CLng(3)) Then
  loc_116CB08:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116CB20:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116CB25:       var_11C = vbNullString
  loc_116CB2F:       Set var_B4 = Me.FGrid
  loc_116CB35:       LateIdCallSt
  loc_116CB4D:     End If
  loc_116CB4D:   End If
  loc_116CB4D: End If
  loc_116CB53: If (Cancel = &HD) Then
  loc_116CB5B:   global_98 = 0
  loc_116CB5E: End If
  loc_116CB60: Cancel = 0
  loc_116CB63: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E14F18
  'Data Table: 4A4184
  loc_E14F09: Call FGrid_UnknownEvent_C()
  loc_E14F13: global_98 = 0
  loc_E14F16: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1013880
  'Data Table: 4A4184
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1013670: Set var_88 = Me.TopCtrl1
  loc_1013676: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_101368F: If (CStr() = "Browse") Then
  loc_1013692:   Exit Sub
  loc_1013693: End If
  loc_10136A6: var_A0 = CLng(Me.FGrid.Col)
  loc_10136B6: If (var_A0 = CLng(1)) Then
  loc_10136BD:   Set var_C4 = Me.FGrid
  loc_10136E1:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_101370E:   Set var_B4 = var_C4
  loc_1013720:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1013748:   Set var_88 = Me.TxtGrid
  loc_101374E:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1013756:   0 = var_B4.Text
  loc_101376F:   If (Len(var_9C) <= 1) Then
  loc_101377E:     Set var_88 = Me.TxtGrid
  loc_1013784:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_101378C:     var_CA = var_B4.Text
  loc_101379D:     Set var_B8 = Me.TxtGrid
  loc_10137A3:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_10137AB:     var_C4.Text = var_9C
  loc_10137BE:   End If
  loc_10137CA:   Set var_88 = Me.TxtGrid
  loc_10137D0:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_10137EA:   Set var_B8 = Me.TxtGrid
  loc_10137F0:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_10137F8:   var_C4.SelStart = Len(var_B4.Text)
  loc_101380E: Else
  loc_1013815:   If (var_A0 = CLng(3)) Then
  loc_1013856:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1013868:   End If
  loc_1013868: End If
  loc_1013872: If (CLng(Cancel) <> &HD) Then
  loc_101387A:   global_98 = &HFF
  loc_101387D: End If
  loc_101387D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1056CFC
  'Data Table: 4A4184
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  loc_1056A98: Set var_90 = Me.TopCtrl1
  loc_1056A9E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1056AB7: If (CStr() = "Browse") Then
  loc_1056ABA:   Exit Sub
  loc_1056ABB: End If
  loc_1056AD8: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1056ADB:   Exit Sub
  loc_1056ADC: End If
  loc_1056AED: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_1056B0F:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1056B49:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_1056B6B:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1056B81:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1056B8A:         Set var_118 = Me.FGrid
  loc_1056BA5:       Else
  loc_1056BB8:         Me.FGrid.Rows = 1
  loc_1056BDE:         var_A0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_1056BE6:         Set var_118 = Me.FGrid
  loc_1056C13:         Me.FGrid.FixedRows = 1
  loc_1056C1B:       End If
  loc_1056C1F:       Set var_90 = Me.TopCtrl1
  loc_1056C25:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(FGrid.DispID_10000)
  loc_1056C3E:       If (CStr(var_A0) = "Add") Then
  loc_1056C66:         For var_124 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_124 'Integer
  loc_1056C70:           var_B4 = CVar(CLng(var_86)) 'Long
  loc_1056C78:           var_E4 = CVar(CLng(0)) 'Long
  loc_1056C82:           var_A0 = CVar(CStr(var_86)) 'String
  loc_1056C8A:           Set var_90 = Me.FGrid
  loc_1056C90:           LateIdCallSt
  loc_1056CA1:         Next var_124 'Integer
  loc_1056CA6:       End If
  loc_1056CA6:     End If
  loc_1056CA9:   Else
  loc_1056CCA:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_1056CDA:   End If
  loc_1056CDE:   Set var_90 = Me.FGrid
  loc_1056CEF: End If
  loc_1056CF4: Set var_8C = Nothing
  loc_1056CF7: Exit Sub
  loc_1056CF8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E43C08
  'Data Table: 4A4184
  Dim var_8C As TextBox
  loc_E43BDC: Call Proc_42_49_E839F8()
  loc_E43BEC: Set var_88 = Me.TxtGrid
  loc_E43BF2: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E43BFA: var_8C.Visible = False
  loc_E43C06: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10C3E14
  'Data Table: 4A4184
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_14C As Variant
  loc_10C3B43: Me.DGItem.Visible = False
  loc_10C3B62: If (Me.RecordCount > 0) Then
  loc_10C3B9F:   Set var_B4 = Me.TxtGrid
  loc_10C3BA5:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10C3BAD:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10C3BD6:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C3BDE:   var_EC = CVar(CLng(1)) 'Long
  loc_10C3C11:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10C3C19:   Set var_B8 = Me.FGrid
  loc_10C3C1F:   LateIdCallSt
  loc_10C3C4E:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C3C56:   var_EC = CVar(CLng(4)) 'Long
  loc_10C3C89:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10C3C91:   Set var_B8 = Me.FGrid
  loc_10C3C97:   LateIdCallSt
  loc_10C3CC6:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C3CCE:   var_EC = CVar(CLng(2)) 'Long
  loc_10C3D01:   var_11C = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_10C3D09:   Set var_B8 = Me.FGrid
  loc_10C3D0F:   LateIdCallSt
  loc_10C3D45:   var_B0 = Me.Fields.Item("qty")
  loc_10C3D5D:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10C3D65:   var_FC = CVar(CLng(3)) 'Long
  loc_10C3D92:   var_14C = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_10C3D9A:   Set var_B8 = Me.FGrid
  loc_10C3DA0:   LateIdCallSt
  loc_10C3DBE: End If
  loc_10C3DCA: Set var_A8 = Me.TxtGrid
  loc_10C3DD0: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15E, var_B8, var_14C, 1, 1)
  loc_10C3DD8: var_FC = var_B0.Visible
  loc_10C3DEA: If (var_15E = &HFF) Then
  loc_10C3DF6:   Set var_A8 = Me.TxtGrid
  loc_10C3DFC:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_DC, var_B8)
  loc_10C3E04:   var_B0.SetFocus
  loc_10C3E10: End If
  loc_10C3E10: Exit Sub
End Sub

Public Function MasterFormExitGet() '4A4E68
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4A4E77
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E94330
  'Data Table: 4A4184
  Dim Me As Recordset15
  loc_E942BE: On Error Goto loc_E94327
  loc_E942C7: Me.MoveFirst
  loc_E942F1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94319: Proc_5_0_110649C(&HFF, Me, global_64)
  loc_E94321: Call Proc_42_45_141A8A4(0)
  loc_E94326: Exit Sub
  loc_E94327: ' Referenced from: E942BE
  loc_E94327: Proc_6_60_E62BC4(var_A0)
  loc_E9432C: Exit Sub
End Sub

Public Sub FindMove(mDocId) 'E748BC
  'Data Table: 4A4184
  Dim Me As Recordset15
  loc_E74866: Me.MoveFirst
  loc_E74890: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E748B0: If (Me.EOF = 0) Then
  loc_E748B3:   Call Proc_42_45_141A8A4(var_9C)
  loc_E748B8: End If
  loc_E748B8: Exit Sub
End Sub

Public Sub Proc_42_42_102C7D4
  'Data Table: 4A4184
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_102C5A3: Me.FGrid.Left = CVar(CDbl(900))
  loc_102C5BE: Me.FGrid.Top = CVar(CDbl(1350))
  loc_102C5D8: Me.DGItem.Left = CVar(CDbl(&HF))
  loc_102C5F3: Me.DGItem.Top = CVar(CDbl(5145))
  loc_102C60E: Me.FGrid.Width = CVar(CDbl(7300))
  loc_102C629: Me.FGrid.Height = CVar(CDbl(7400))
  loc_102C635: Set var_AC = Me.FGrid
  loc_102C64C: global_68 = CStr(CLng(var_AC.BackColor))
  loc_102C662: var_AC.Cols = 5
  loc_102C66A: var_94 = CVar(CLng(0)) 'Long
  loc_102C66F: var_D0 = &H226
  loc_102C67B: LateIdCallSt
  loc_102C683: var_94 = 0
  loc_102C68F: var_D0 = CVar(CLng(1)) 'Long
  loc_102C694: var_F0 = "Item Name"
  loc_102C69D: LateIdCallSt
  loc_102C6A8: var_94 = CVar(CLng(1)) 'Long
  loc_102C6B3: var_D0 = CVar(CInt(1)) 'Integer
  loc_102C6BA: LateIdCallSt
  loc_102C6C5: var_94 = CVar(CLng(1)) 'Long
  loc_102C6CA: var_D0 = &HED8
  loc_102C6D6: LateIdCallSt
  loc_102C6DE: var_94 = 0
  loc_102C6EA: var_D0 = CVar(CLng(2)) 'Long
  loc_102C6EF: var_F0 = "Wt. Unit"
  loc_102C6F8: LateIdCallSt
  loc_102C703: var_94 = CVar(CLng(2)) 'Long
  loc_102C70E: var_D0 = CVar(CInt(1)) 'Integer
  loc_102C715: LateIdCallSt
  loc_102C720: var_94 = CVar(CLng(2)) 'Long
  loc_102C725: var_D0 = &H3B6
  loc_102C731: LateIdCallSt
  loc_102C739: var_94 = 0
  loc_102C745: var_D0 = CVar(CLng(3)) 'Long
  loc_102C74A: var_F0 = "Quantity"
  loc_102C753: LateIdCallSt
  loc_102C75E: var_94 = CVar(CLng(3)) 'Long
  loc_102C769: var_D0 = CVar(CInt(7)) 'Integer
  loc_102C770: LateIdCallSt
  loc_102C77B: var_94 = CVar(CLng(3)) 'Long
  loc_102C786: var_D0 = CVar(CInt(7)) 'Integer
  loc_102C78D: LateIdCallSt
  loc_102C798: var_94 = CVar(CLng(3)) 'Long
  loc_102C79D: var_D0 = &H5DC
  loc_102C7A9: LateIdCallSt
  loc_102C7B4: var_94 = CVar(CLng(4)) 'Long
  loc_102C7B9: var_D0 = 0
  loc_102C7C5: LateIdCallSt
  loc_102C7CF: Set var_AC = Nothing 
  loc_102C7D3: Exit Sub
End Sub

Public Sub Proc_42_43_E44B40
  'Data Table: 4A4184
  loc_E44B1C: Set var_88 = Me.TopCtrl1
  loc_E44B22: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E44B3B: If (CStr() = "Browse") Then
  loc_E44B3E:   Exit Sub
  loc_E44B3F: End If
  loc_E44B3F: Exit Sub
End Sub

Public Sub Proc_42_44_1225DA8(arg_C) '1225DA8
  'Data Table: 4A4184
  Dim var_98 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_BC As String
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_164 As MSHFlexGrid
  Dim var_178 As String
  Dim var_17C As MSHFlexGrid
  Dim var_1E0 As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_12258D4: If (arg_C = 0) Then
  loc_12258EA:   var_AC = CLng(Me.FGrid.Col)
  loc_12258FA:   If (var_AC = CLng(1)) Then
  loc_122594B:     Set var_98 = Me.TxtGrid
  loc_1225951:     Call 0.Method_Proc_42_44_1225DA80 (arg_C, var_B8, var_BC)
  loc_1225959:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_1225971:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_1225987:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122598F:       var_EC = CVar(CLng(1)) 'Long
  loc_1225994:       var_10C = vbNullString
  loc_122599E:       Set var_B8 = Me.FGrid
  loc_12259A4:       LateIdCallSt
  loc_12259C9:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12259D1:       var_EC = CVar(CLng(4)) 'Long
  loc_12259D6:       var_10C = vbNullString
  loc_12259E0:       Set var_B8 = Me.FGrid
  loc_12259E6:       LateIdCallSt
  loc_1225A0B:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1225A13:       var_EC = CVar(CLng(2)) 'Long
  loc_1225A18:       var_10C = vbNullString
  loc_1225A22:       Set var_B8 = Me.FGrid
  loc_1225A28:       LateIdCallSt
  loc_1225A3D:     Else
  loc_1225A56:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1225A5E:       var_EC = CVar(CLng(4)) 'Long
  loc_1225A78:       var_BC = CStr(Me.FGrid.TextMatrix))
  loc_1225A96:       var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1225A9E:       var_150 = CVar(CLng(4)) 'Long
  loc_1225AB8:       var_178 = CStr(Me.FGrid.TextMatrix))
  loc_1225B23:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(4)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1225B39:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1225B41:         var_FC = CVar(CLng(1)) 'Long
  loc_1225B74:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1225B7C:         Set var_164 = Me.FGrid
  loc_1225B82:         LateIdCallSt
  loc_1225BB1:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1225BB9:         var_FC = CVar(CLng(4)) 'Long
  loc_1225BEC:         var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1225BF4:         Set var_164 = Me.FGrid
  loc_1225BFA:         LateIdCallSt
  loc_1225C29:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1225C31:         var_FC = CVar(CLng(2)) 'Long
  loc_1225C53:         var_B8 = Me.Fields.Item("Unit")
  loc_1225C64:         var_140 = CVar(CStr(var_B8.Value)) 'String
  loc_1225C6C:         Set var_164 = Me.FGrid
  loc_1225C72:         LateIdCallSt
  loc_1225C8E:       End If
  loc_1225C8E:     End If
  loc_1225C91:   Else
  loc_1225C98:     If (var_AC = CLng(3)) Then
  loc_1225CA5:       Set var_98 = Me.TxtGrid
  loc_1225CAB:       Call 0.Method_Proc_42_44_1225DA80 (arg_C, var_B8, var_164, var_140, var_FC, var_DC, var_164)
  loc_1225CC3:       If Not(IsNumeric(CVar(var_B8))) Then
  loc_1225CCA:         var_BC = CStr(0)
  loc_1225CD7:         Set var_98 = Me.TxtGrid
  loc_1225CDD:         Call 0.Method_Proc_42_44_1225DA80 (arg_C, var_B8, var_BC, var_140, var_FC)
  loc_1225CE5:         var_B8.Text = var_DC
  loc_1225CF4:       End If
  loc_1225D01:       Set var_98 = Me.TxtGrid
  loc_1225D07:       Call 0.Method_Proc_42_44_1225DA80 (arg_C, var_B8, var_BC, var_164)
  loc_1225D0F:       var_140 = var_B8.Text
  loc_1225D27:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1225D3F:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1225D6B:       var_1E0 = CVar(CStr(Format(CVar(var_BC), "0.000"))) 'String
  loc_1225D73:       Set var_17C = Me.FGrid
  loc_1225D79:       LateIdCallSt
  loc_1225D9D:     End If
  loc_1225D9D:   End If
  loc_1225D9D: End If
  loc_1225DA2: Proc_42_44_1225DA8 = &HFF
End Sub

Public Sub Proc_42_45_141A8A4
  'Data Table: 4A4184
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_100 As String
  Dim unk_4A419C As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Variant
  Dim var_124 As Variant
  Dim var_138 As Variant
  Dim var_144 As Variant
  Dim var_BC As Variant
  Dim var_8E As Integer
  Dim var_88 As Recordset15
  Dim var_154 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  loc_1419E50: On Error Goto loc_141A89B
  loc_1419E6A: If (Me.RecordCount > 0) Then
  loc_1419E7A:   var_CC = "Select DISTINCT K.DOCID,K.VDATE, GodownMast.Name as Location,GodownMast.Code as DepartCode,K.Vno,K.Vtype,K.VPrefix From KClStk K  left join GodownMast on GodownMast.Code=K.DepartCode Where DocID='"
  loc_1419EC3:   unk_4A419C.Execute CStr(var_CC & Me.Fields.Item("DocID").Value & "'"), var_120, -1
  loc_1419EEB:   Set var_128 = var_124 
  loc_1419F28:   Set var_124 = Me.Txt
  loc_1419F2E:   Call 0.Method_Proc_42_45_141A8A40 (CInt(3), var_12C)
  loc_1419F36:   var_12C.Text = CStr(var_128.Fields.Item("DocID").Value)
  loc_1419F66:   var_AC = var_128.Fields.Item("vType")
  loc_1419F6E:   var_BC = var_AC.Value
  loc_1419F77:   var_100 = CStr(var_BC)
  loc_1419F85:   Set var_124 = Me.Txt
  loc_1419F8B:   Call 0.Method_Proc_42_45_141A8A40 (CInt(0), var_12C)
  loc_1419F93:   var_12C.Tag = var_100
  loc_1419FD6:   Set var_98 = Me.Txt
  loc_1419FDC:   Call 0.Method_Proc_42_45_141A8A40 (CInt(0), var_AC, var_100, "Select NCAT From Voucher_Type Where V_Type='", var_BC, -1)
  loc_1419FE4:   var_124 = var_AC.Tag
  loc_1419FFD:   unk_4A419C.Execute var_12C & var_100 & "'", 0, var_138
  loc_141A00D:    = var_12C.Item(var_124)
  loc_141A015:    = var_138.Value
  loc_141A024:   global_88 = CStr(var_124.Fields)
  loc_141A074:   Set var_98 = Me.Txt
  loc_141A07A:   Call 0.Method_Proc_42_45_141A8A40 (CInt(0), var_AC, var_100, "Select Description From Voucher_type Where V_Type='", var_BC, -1)
  loc_141A09B:   unk_4A419C.Execute var_12C & var_100 & "'", 0, var_138
  loc_141A0AB:    = var_12C.Item()
  loc_141A0B3:    = var_138.Value
  loc_141A0CA:   Set var_140 = Me.Txt
  loc_141A0D0:   Call 0.Method_Proc_42_45_141A8A40 (CInt(0), var_144)
  loc_141A0D8:   var_144.Text = CStr(var_AC.Tag.Fields)
  loc_141A139:   Set var_124 = Me.Txt
  loc_141A13F:   Call 0.Method_Proc_42_45_141A8A40 (CInt(1), var_12C)
  loc_141A147:   var_12C.Text = CStr(var_128.Fields.Item("VNo").Value)
  loc_141A1AF:   Set var_124 = Me.Txt
  loc_141A1B5:   Call 0.Method_Proc_42_45_141A8A40 (CInt(2), var_12C, CStr(Format(CVar(var_128.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_141A1BD:   var_12C.Text = 1
  loc_141A20F:   Me.LblVPrefix.Caption = CStr(var_128.Fields.Item("vPrefix").Value)
  loc_141A259:   Set var_124 = Me.Txt
  loc_141A25F:   Call 0.Method_Proc_42_45_141A8A40 (CInt(4), var_12C)
  loc_141A267:   var_12C.Tag = Proc_6_38_E68A98(CVar(var_128.Fields.Item("DepartCode")))
  loc_141A2B1:   Set var_124 = Me.Txt
  loc_141A2B7:   Call 0.Method_Proc_42_45_141A8A40 (CInt(4), var_12C)
  loc_141A2BF:   var_12C.Text = Proc_6_38_E68A98(CVar(var_128.Fields.Item("Location")))
  loc_141A2D5:   Set var_128 = Nothing 
  loc_141A2E8:   Me.FGrid.Redraw = False
  loc_141A303:   Me.FGrid.Rows = 1
  loc_141A30D:   var_8E = 1
  loc_141A34F:   var_DC = "Select S.*,I.Name as ItemName From KcLsTK S Left Join ItemMast I On S.Item=I.Code And I.ItemType='Store' Where S.Docid='" & Me.Fields.Item("DocID").Value 
  loc_141A366:   unk_4A419C.Execute CStr(var_DC & "' Order By I.Name"), var_120, -1
  loc_141A371:   Set var_88 = var_124
  loc_141A42E:   var_1A4 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), var_88.Fields) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), var_8E) = "E"), "Modified By : ", "User : "))
  loc_141A473:   Me.LblUser.Caption = CStr(1 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_1A4)))
  loc_141A54E:   var_1A4 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_141A593:   Me.LblLDt.Caption = CStr(var_1A4 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_141A5DF:   If (var_88.RecordCount > 0) Then
  loc_141A5E2:     ' Referenced from: 141A7D2
  loc_141A5F1:     If Not(var_88.EOF) Then
  loc_141A5F4:       var_A8 = vbNullString
  loc_141A5FE:       Set var_98 = Me.FGrid
  loc_141A613:       Set var_1F0 = Me.FGrid
  loc_141A61A:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_141A622:       var_EC = CVar(CLng(0)) 'Long
  loc_141A62C:       var_BC = CVar(CStr(var_8E)) 'String
  loc_141A633:       LateIdCallSt
  loc_141A642:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_141A64A:       var_110 = CVar(CLng(4)) 'Long
  loc_141A67A:       var_DC = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_141A681:       LateIdCallSt
  loc_141A69B:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_141A6A3:       var_110 = CVar(CLng(1)) 'Long
  loc_141A6D3:       var_DC = CVar(CStr(var_88.Fields.Item("ItemName").Value)) 'String
  loc_141A6DA:       LateIdCallSt
  loc_141A6F4:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_141A6FC:       var_110 = CVar(CLng(2)) 'Long
  loc_141A72C:       var_DC = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_141A733:       LateIdCallSt
  loc_141A769:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_141A771:       var_154 = CVar(CLng(3)) 'Long
  loc_141A780:       var_CC = "0.000"
  loc_141A785:       var_DC = var_CC
  loc_141A79E:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), var_DC))) 'String
  loc_141A7A5:       LateIdCallSt
  loc_141A7BD:       Set var_1F0 = Nothing 
  loc_141A7C7:       var_8E = (var_8E + 1)
  loc_141A7CD:       var_88.MoveNext
  loc_141A7D2:       GoTo loc_141A5E2
  loc_141A7D5:     End If
  loc_141A7E8:     Me.FGrid.FixedRows = 1
  loc_141A7F0:   End If
  loc_141A7FE:   Me.FGrid.Redraw = True
  loc_141A80C:   If (var_8E = 1) Then
  loc_141A822:     Me.FGrid.Rows = 1
  loc_141A848:     var_BC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_8E, var_1F0, var_120, 1, 1, var_154))) 'String
  loc_141A850:     Set var_AC = Me.FGrid
  loc_141A87D:     Me.FGrid.FixedRows = 1
  loc_141A885:   End If
  loc_141A888: Else
  loc_141A888:   Call Proc_42_47_F57AD8(FGrid.DispID_10000, var_BC, var_EC, var_1F0, var_DC)
  loc_141A88D: End If
  loc_141A88D: Call Proc_42_49_E839F8(var_110, var_CC)
  loc_141A897: Set var_88 = Nothing
  loc_141A89A: Exit Sub
  loc_141A89B: ' Referenced from: 1419E50
  loc_141A89B: Proc_6_60_E62BC4(var_1F0)
  loc_141A8A0: Exit Sub
End Sub

Public Sub Proc_42_46_F95968
  'Data Table: 4A4184
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_4A419C As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  loc_F95829: Set var_9C = Me.TopCtrl1
  loc_F9582F: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_F95837: var_B0 = CStr()
  loc_F95848: If (var_B0 = "Add") Then
  loc_F95878:   Set var_9C = Me.Txt
  loc_F9587E:   Call 0.Method_Proc_42_46_F959680 (CInt(3), var_B4, var_B0, "Select Count(*) From Purch1 Where DocID='", var_AC, -1)
  loc_F9589F:   unk_4A419C.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_F958AF:    = var_D4.Item()
  loc_F958B7:    = var_E8.Value
  loc_F958E4:   If (var_B4.Text.Fields > 0) Then
  loc_F958ED:     Call 0.Method_arg_50 (var_B0)
  loc_F9590E:     MsgBox("Duplicate Purch.Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_F95924:     Call Proc_42_51_114F5FC(MemVar_1F92044)
  loc_F95937:     Set var_9C = Me.Txt
  loc_F9593D:     Call 0.Method_Proc_42_46_F959680 (CInt(3), var_B4)
  loc_F95945:     var_B4.Text = var_B0
  loc_F95959:     Proc_42_46_F95968 = 0
  loc_F9595F:   End If
  loc_F9595F: End If
  loc_F9595F: Proc_42_46_F95968 = var_B0
  loc_F95965:  = 
End Sub

Public Sub Proc_42_47_F57AD8
  'Data Table: 4A4184
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_F579BD: Me.LblVPrefix.Caption = vbNullString
  loc_F579CB: global_108 = vbNullString
  loc_F579D5: global_112 = vbNullString
  loc_F579E7: Set var_8C = Me.Txt
  loc_F579ED: Call 0.Method_Proc_42_47_F57AD8C (var_8E, var_86)
  loc_F579FD: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F57A13:   Set var_8C = Me.Txt
  loc_F57A19:   Call 0.Method_Proc_42_47_F57AD80 (CInt(var_86), var_98)
  loc_F57A21:   var_98.Text = vbNullString
  loc_F57A3D:   Set var_8C = Me.Txt
  loc_F57A43:   Call 0.Method_Proc_42_47_F57AD80 (CInt(var_86), var_98)
  loc_F57A4B:   var_98.Tag = vbNullString
  loc_F57A5A: Next var_92 'Byte
  loc_F57A73: Me.FGrid.Rows = 1
  loc_F57A99: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_F57AA1: Set var_98 = Me.FGrid
  loc_F57ACE: Me.FGrid.FixedRows = 1
  loc_F57AD6: Exit Sub
End Sub

Public Sub Proc_42_48_F8D25C(arg_C) 'F8D25C
  'Data Table: 4A4184
  Dim var_98 As TextBox
  loc_F8D10E: Set var_8C = Me.Txt
  loc_F8D114: Call 0.Method_Proc_42_48_F8D25CC (var_8E, var_86)
  loc_F8D124: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F8D13A:   Set var_8C = Me.Txt
  loc_F8D140:   Call 0.Method_Proc_42_48_F8D25C0 (CInt(var_86), var_98)
  loc_F8D148:   var_98.Enabled = arg_C
  loc_F8D157: Next var_92 'Byte
  loc_F8D16A: Set var_8C = Me.Txt
  loc_F8D170: Call 0.Method_Proc_42_48_F8D25C0 (CInt(1), var_98)
  loc_F8D178: var_98.Enabled = False
  loc_F8D191: Set var_8C = Me.Txt
  loc_F8D197: Call 0.Method_Proc_42_48_F8D25C0 (CInt(2), var_98)
  loc_F8D19F: var_98.Enabled = False
  loc_F8D1B5: Set var_8C = Me.TopCtrl1
  loc_F8D1BB: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005((MemVar_1F920B8 = 1))
  loc_F8D1D0: Set var_98 = Me.TopCtrl1
  loc_F8D1D6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(( And (CStr() = "Edit")))
  loc_F8D1FC: If ( Or (CStr() = "Add")) Then
  loc_F8D20C:   Set var_8C = Me.Txt
  loc_F8D212:   Call 0.Method_Proc_42_48_F8D25C0 (CInt(2), var_98)
  loc_F8D21A:   var_98.Enabled = True
  loc_F8D226: End If
  loc_F8D231: If (global_124 = "No") Then
  loc_F8D241:   Set var_8C = Me.Txt
  loc_F8D247:   Call 0.Method_Proc_42_48_F8D25C0 (CInt(2), var_98)
  loc_F8D24F:   var_98.Enabled = False
  loc_F8D25B: End If
  loc_F8D25B: Exit Sub
End Sub

Public Sub Proc_42_49_E839F8
  'Data Table: 4A4184
  loc_E839A4: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E839B6:   Me.DGItem.Visible = False
  loc_E839BE: End If
  loc_E839DA: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_E839EC:   Me.DGDepart.Visible = False
  loc_E839F4: End If
  loc_E839F4: Exit Sub
End Sub

Public Sub Proc_42_50_F0A140
  'Data Table: 4A4184
  loc_F0A064: Call Proc_42_49_E839F8()
  loc_F0A074: Set var_88 = Me.Txt
  loc_F0A07A: Call 0.Method_Proc_42_50_F0A1400 (CInt(2))
  loc_F0A0A3: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F0A0A6:   Exit Sub
  loc_F0A0A7: End If
  loc_F0A0B2: Set var_88 = Me.Txt
  loc_F0A0B8: Call 0.Method_Proc_42_50_F0A1400 (CInt(1), var_8C)
  loc_F0A0E1: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F0A0E4:   Exit Sub
  loc_F0A0E5: End If
  loc_F0A11C: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0A11F:   Call TopCtrl1_UnknownEvent_16()
  loc_F0A127: Else
  loc_F0A12D:   Call 0.Method_arg_1E8 (var_88)
  loc_F0A135:   Call var_88.SetFocus
  loc_F0A13E: End If
  loc_F0A13E: Exit Sub
End Sub

Public Sub Proc_42_51_114F5FC
  'Data Table: 4A4184
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_180 As TextBox
  loc_114F29D: var_90 = "KC"
  loc_114F2B4: var_94 = "Select VT.Number_Method,VP.V_Type,Vt.Description,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_114F2E5: Set var_A8 = Me.Txt
  loc_114F2EB: Call 0.Method_Proc_42_51_114F5FC0 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_114F2FA: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_114F302: var_EC = -1 & var_CC 
  loc_114F316: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_114F321: Set var_8C = var_134
  loc_114F35D: If (var_8C.RecordCount > 0) Then
  loc_114F39C:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_114F39F:     GoTo loc_114F42C
  loc_114F3A2:   End If
  loc_114F3D3:   global_80 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_114F3FE:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_114F413:   var_CC = (var_AC.Value + 1)
  loc_114F41B:   global_84 = CInt(var_CC)
  loc_114F42C:   ' Referenced from: 114F39F
  loc_114F42C: End If
  loc_114F457: var_BC = Space((5 - Len(var_90)))
  loc_114F45F: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_114F473: var_EC = Space((5 - Len(global_80)))
  loc_114F47B: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_114F488: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_80))
  loc_114F4A1: var_14C = Space((8 - Len(CStr(global_84))))
  loc_114F4A9: var_15C = (var_130 + var_14C)
  loc_114F4B8: var_17C = (var_15C + CVar(CStr(global_84)))
  loc_114F4C3: global_72 = CStr(var_17C)
  loc_114F4F9: Me.LblVPrefix.Caption = global_80
  loc_114F512: Set var_A8 = Me.Txt
  loc_114F518: Call 0.Method_Proc_42_51_114F5FC0 (CInt(3), var_AC)
  loc_114F520: var_AC.Text = global_72
  loc_114F542: Set var_A8 = Me.Txt
  loc_114F548: Call 0.Method_Proc_42_51_114F5FC0 (CInt(1), var_AC)
  loc_114F550: var_AC.Text = CStr(global_84)
  loc_114F56D: Set var_A8 = Me.Txt
  loc_114F573: Call 0.Method_Proc_42_51_114F5FC0 (CInt(0), var_AC)
  loc_114F57B: var_AC.Tag = var_90
  loc_114F5C0: Set var_134 = Me.Txt
  loc_114F5C6: Call 0.Method_Proc_42_51_114F5FC0 (CInt(0), var_180)
  loc_114F5CE: var_180.Text = CStr(var_8C.Fields.Item("Description").Value)
  loc_114F5EA: var_88 = global_72
  loc_114F5F2: Set var_8C = Nothing
  loc_114F5F5: Proc_42_51_114F5FC = global_84
End Sub

Public Sub Proc_42_52_100F364
  'Data Table: 4A4184
  Dim unk_4A419C As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Fields15
  Dim var_B8 As Variant
  Dim var_13C As TextBox
  Dim var_120 As Variant
  loc_100F193: unk_4A419C.Execute "Select Name, Srno,IsNull(SDate,'') as SDate,IsNull(EDate,'') as EDate From DateLock Where Name='Purchase Bill Entry' ", var_AC, -1
  loc_100F19E: Set var_8C = var_B0
  loc_100F1BB: If (var_8C.RecordCount > 0) Then
  loc_100F1D8:   var_B8 = var_8C.Fields.Item("SDate")
  loc_100F23E:   If CBool((var_B8.Value <> vbNullString) And (var_8C.Fields.Item("EDate").Value <> vbNullString)) Then
  loc_100F24F:     Set var_B0 = Me.Txt
  loc_100F255:     Call 0.Method_Proc_42_52_100F3640 (CInt(2), var_B8, var_134)
  loc_100F25D:     var_B0 = var_B8.Text
  loc_100F2A8:     Set var_138 = Me.Txt
  loc_100F2AE:     Call 0.Method_Proc_42_52_100F3640 (CInt(2), var_13C, var_140)
  loc_100F2B6:     (CDate(CDate(var_134)) >= var_8C.Fields.Item("SDate").Value) = var_13C.Text
  loc_100F2E7:     var_100 = var_8C.Fields.Item("EDate").Value
  loc_100F2EF:     var_120 = (CDate(CDate(var_140)) <= var_100)
  loc_100F31E:     If CBool(Not &HFF And var_120) Then
  loc_100F342:       MsgBox("Date Locked!", &H40, "Date Validation", var_100, var_120)
  loc_100F357:       Proc_42_52_100F364 = 0
  loc_100F35D:     End If
  loc_100F35D:   End If
  loc_100F35D: End If
  loc_100F35D: Proc_42_52_100F364 = 
End Sub

Public Sub Proc_42_53_E8A008
  'Data Table: 4A4184
  loc_E89FA2: Set global_60 = New 
  loc_E89FBF: Me.Connection15.Execute "Select Code,D.Name as Name From Depart D Order by Name", var_A8, -1
  loc_E89FD0: Set global_60 = var_88
  loc_E89FE7: CVarUnk
  loc_E89FEC: VerifyVarObj
  loc_E89FF2: Set var_88 = Me.DGDepart
  loc_E89FF8: LateIdStAd
  loc_E8A006: Exit Sub
End Sub

Public Sub Proc_42_54_10E41CC(arg_C) '10E41CC
  'Data Table: 4A4184
  Dim var_90 As String
  Dim unk_4A419C As Connection15
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_8C As Recordset15
  Dim var_F4 As Variant
  Dim var_B4 As Variant
  Dim var_114 As Variant
  Dim var_C8 As Variant
  Dim var_104 As Variant
  Dim var_124 As String
  loc_10E3ED8: var_90 = "SELECT Distinct Stock.Item, ItemMast.Name,Itemmast.IssueUnit As Unit FROM Stock INNER JOIN ItemMast ON Stock.Item = ItemMast.Code And ItemMast.ItemType='Store' where GodownCode='" & arg_C
  loc_10E3EE8: unk_4A419C.Execute var_90 & "' and RecdQty>0 Order By ItemMast.Name", var_B4, -1
  loc_10E3EF3: Set var_8C = var_B8
  loc_10E3F16: Me.FGrid.Rows = 2
  loc_10E3F31: Me.FGrid.Row = 1
  loc_10E3F4C: Me.FGrid.FixedRows = 1
  loc_10E3F54: ' Referenced from: 10E41BE
  loc_10E3F63: If Not(var_8C.EOF) Then
  loc_10E3F6A:   Set var_D0 = Me.FGrid
  loc_10E3F80:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E3F88:   var_F4 = CVar(CLng(0)) 'Long
  loc_10E3FA2:   var_114 = CVar(CStr(CLng(Me.FGrid.Row))) 'String
  loc_10E3FA9:   LateIdCallSt
  loc_10E3FD4:   var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E3FDC:   var_104 = CVar(CLng(4)) 'Long
  loc_10E400C:   var_114 = CVar(CStr(var_8C.Fields.Item("Item").Value)) 'String
  loc_10E4013:   LateIdCallSt
  loc_10E4040:   var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E4048:   var_104 = CVar(CLng(1)) 'Long
  loc_10E4078:   var_114 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_10E407F:   LateIdCallSt
  loc_10E40AC:   var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E40B4:   var_104 = CVar(CLng(2)) 'Long
  loc_10E40E4:   var_114 = CVar(CStr(var_8C.Fields.Item("Unit").Value)) 'String
  loc_10E40EB:   LateIdCallSt
  loc_10E4118:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10E4120:   var_F4 = CVar(CLng(3)) 'Long
  loc_10E4125:   var_124 = "-1.00"
  loc_10E412E:   LateIdCallSt
  loc_10E413E:   Set var_D0 = Nothing 
  loc_10E4145:   var_8C.MoveNext
  loc_10E4169:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10E416C:     var_A4 = vbNullString
  loc_10E4176:     Set var_B8 = Me.FGrid
  loc_10E41A0:     var_A4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_10E41AF:     Me.FGrid.Row = var_A4
  loc_10E41BE:   End If
  loc_10E41BE:   GoTo loc_10E3F54
  loc_10E41C1: End If
  loc_10E41C6: Set var_8C = Nothing
  loc_10E41C9: Exit Sub
End Sub
