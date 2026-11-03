VERSION 5.00
Begin VB.Form frmMod_Print
  Caption = "Printing Setup"
  BackColor = &HFF8080&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11325
  ClientHeight = 6870
  LockControls = -1  'True
  Begin MSFlexGrid FGPoint1
    Left = 6690
    Top = 8595
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 11
  End
  Begin MSFlexGrid FGPoint
    Left = 8685
    Top = 8595
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 10
  End
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HE0E0E0&
    Left = 825
    Top = 4335
    Width = 915
    Height = 225
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    Left = 810
    Top = 960
    Width = 915
    Height = 225
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin MSHFlexGrid FGrid
    Left = 810
    Top = 945
    Width = 13995
    Height = 2800
    TabIndex = 1
  End
  Begin DataGrid DgModDesc
    Left = 6630
    Top = 9165
    Width = 6960
    Height = 2355
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGModType
    Left = 6615
    Top = 8880
    Width = 5835
    Height = 2355
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin Frame FrmList
    Left = 3360
    Top = 9165
    Width = 3060
    Height = 1725
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 60
      Width = 2970
      Height = 1815
      TabStop = 0   'False
      TabIndex = 7
    End
  End
  Begin MSHFlexGrid FGrid1
    Left = 810
    Top = 4320
    Width = 13995
    Height = 2800
    TabIndex = 4
  End
  Begin BtnEnh CmdCancel
    Left = 8100
    Top = 7500
    Width = 1755
    Height = 930
    TabIndex = 12
  End
  Begin BtnEnh CmdSave
    Left = 6240
    Top = 7500
    Width = 1755
    Height = 930
    TabIndex = 13
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 6420
    Width = 11325
    Height = 450
    Visible = 0   'False
    TabIndex = 14
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
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
    Caption = "KOT Printing :-"
    Index = 1
    ForeColor = &HFF0000&
    Left = 810
    Top = 4035
    Width = 3600
    Height = 240
    TabIndex = 3
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
    Caption = "Bill Printing :-"
    Index = 0
    ForeColor = &HFF0000&
    Left = 810
    Top = 660
    Width = 2760
    Height = 240
    TabIndex = 0
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

Attribute VB_Name = "frmMod_Print"

Private global_64 As Integer
Private global_56 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '13A4950
  'Data Table: 492F0C
  Dim var_86 As Integer
  Dim var_8C As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  Dim var_138 As Long
  loc_13A403F: var_86 = Index
  loc_13A4048: If (var_86 = 0) Then
  loc_13A4067:   Set var_A0 = Me.FGrid
  loc_13A409D:   Set var_108 = Me.TxtGrid
  loc_13A40A3:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_13A40AB:   var_10C.Tag = CVar(CLng(var_A0.Col))
  loc_13A40D8:   Set var_8C = Me.TxtGrid
  loc_13A40DE:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_A0, 0)
  loc_13A40E6:   var_A0.MaxLength = CVar(CLng(Me.FGrid.Row))
  loc_13A4105:   var_114 = CLng(Me.FGrid.Col)
  loc_13A4115:   If (var_114 = CLng(0)) Then
  loc_13A4118:     Call Proc_318_30_10EC2E8(var_114)
  loc_13A4126:     var_118 = Me.RecordCount
  loc_13A413D:     var_11A = Me.EOF
  loc_13A4151:     var_11C = Me.BOF
  loc_13A4171:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A41AD:     If (CVar(CLng(0)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_13A41B0:       Exit Sub
  loc_13A41B1:     End If
  loc_13A41C4:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A41CC:     var_E0 = CVar(CLng(0)) 'Long
  loc_13A41FF:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13A4208:       Me.MoveFirst
  loc_13A4220:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A4228:       var_E0 = CVar(CLng(0)) 'Long
  loc_13A4237:       var_B0 = Me.FGrid.TextMatrix)
  loc_13A426C:       Me.Find "Modtype='" & CStr(var_B0) & "'", 0, 1
  loc_13A429C:       If (Me.EOF = &HFF) Then
  loc_13A42A5:         Me.MoveFirst
  loc_13A42AA:       End If
  loc_13A42AA:     End If
  loc_13A42AD:   Else
  loc_13A42B4:     If (var_114 = CLng(1)) Then
  loc_13A42B7:       Call Proc_318_31_11108A4(var_134, var_B0, var_E0, var_C0, var_E0)
  loc_13A42CB:       Me.Filter = 0
  loc_13A42E6:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A431D:       Me.Filter = CVar(CVar(CLng(5)) & CStr(Me.FGrid.TextMatrix)) & "'")
  loc_13A4342:       var_118 = Me.RecordCount
  loc_13A4359:       var_11A = Me.EOF
  loc_13A436D:       var_11C = Me.BOF
  loc_13A438D:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A43C9:       If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_13A43CC:         Exit Sub
  loc_13A43CD:       End If
  loc_13A43E0:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A43E8:       var_E0 = CVar(CLng(1)) 'Long
  loc_13A441B:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13A4424:         Me.MoveFirst
  loc_13A443C:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A4444:         var_E0 = CVar(CLng(1)) 'Long
  loc_13A4488:         Me.Find "ModuleDescription='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_13A44B8:         If (Me.EOF = &HFF) Then
  loc_13A44C1:           Me.MoveFirst
  loc_13A44C6:         End If
  loc_13A44C6:       End If
  loc_13A44C6:     End If
  loc_13A44C6:   End If
  loc_13A44C9: Else
  loc_13A44CF:   If (var_86 = 1) Then
  loc_13A44E5:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13A44EE:     Set var_A0 = Me.FGrid1
  loc_13A44F4:     var_B0 = var_A0.Col
  loc_13A44FD:     var_E0 = CVar(CLng(var_B0)) 'Long
  loc_13A4524:     Set var_108 = Me.TxtGrid
  loc_13A452A:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid1.TextMatrix)), var_E0, var_C0, var_134, var_B0)
  loc_13A4532:     var_10C.Tag = var_E0
  loc_13A455F:     Set var_8C = Me.TxtGrid
  loc_13A4565:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_A0, 0, var_C0, var_E0)
  loc_13A456D:     var_A0.MaxLength = var_C0
  loc_13A458C:     var_138 = CLng(Me.FGrid1.Col)
  loc_13A459C:     If (var_138 = CLng(0)) Then
  loc_13A459F:       Call Proc_318_32_12AB59C(var_138, var_C0)
  loc_13A45AD:       var_118 = Me.RecordCount
  loc_13A45C4:       var_11A = Me.EOF
  loc_13A45D8:       var_11C = Me.BOF
  loc_13A45F8:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13A4634:       If (CVar(CLng(0)) Or (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_13A4637:         Exit Sub
  loc_13A4638:       End If
  loc_13A464B:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13A4653:       var_E0 = CVar(CLng(0)) 'Long
  loc_13A4686:       If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_13A468F:         Me.MoveFirst
  loc_13A46A7:         var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13A46AF:         var_E0 = CVar(CLng(0)) 'Long
  loc_13A46BE:         var_B0 = Me.FGrid1.TextMatrix)
  loc_13A46F3:         Me.Find "Modtype='" & CStr(var_B0) & "'", 0, 1
  loc_13A4723:         If (Me.EOF = &HFF) Then
  loc_13A472C:           Me.MoveFirst
  loc_13A4731:         End If
  loc_13A4731:       End If
  loc_13A4734:     Else
  loc_13A473B:       If (var_138 = CLng(1)) Then
  loc_13A473E:         Call Proc_318_33_1424D20(var_134, var_B0, var_E0, var_C0, var_E0)
  loc_13A4752:         Me.Filter = 0
  loc_13A476D:         var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13A47A4:         Me.Filter = CVar(CVar(CLng(5)) & CStr(Me.FGrid1.TextMatrix)) & "'")
  loc_13A47C9:         var_118 = Me.RecordCount
  loc_13A47E0:         var_11A = Me.EOF
  loc_13A47F4:         var_11C = Me.BOF
  loc_13A4814:         var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13A4850:         If (CVar(CLng(1)) Or (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_13A4853:           Exit Sub
  loc_13A4854:         End If
  loc_13A4867:         var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13A486F:         var_E0 = CVar(CLng(1)) 'Long
  loc_13A48A2:         If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_13A48AB:           Me.MoveFirst
  loc_13A48C3:           var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13A48CB:           var_E0 = CVar(CLng(1)) 'Long
  loc_13A490F:           Me.Find "ModuleDescription='" & CStr(Me.FGrid1.TextMatrix)) & "'", 0, 1
  loc_13A493F:           If (Me.EOF = &HFF) Then
  loc_13A4948:             Me.MoveFirst
  loc_13A494D:           End If
  loc_13A494D:         End If
  loc_13A494D:       End If
  loc_13A494D:     End If
  loc_13A494D:   End If
  loc_13A494D: End If
  loc_13A494D: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13D8AF0
  'Data Table: 492F0C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C8 As Variant
  Dim var_98 As DataGrid
  Dim var_F0 As Long
  loc_13D8117: var_86 = Shift
  loc_13D8126: If (KeyCode = 0) Then
  loc_13D8133:   If (CLng(Shift) = &H1B) Then
  loc_13D8143:     Set var_8C = Me.TxtGrid
  loc_13D8149:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_13D8151:     var_88 = var_90.Tag
  loc_13D8163:     Set var_98 = Me.TxtGrid
  loc_13D8169:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_13D8171:     var_9C.Text = var_94
  loc_13D818D:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13D8196:     Set var_8C = Me.FGrid
  loc_13D81B3:     Set var_8C = Me.TxtGrid
  loc_13D81B9:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_13D81C1:     var_90.Visible = FGrid.DispID_8001
  loc_13D81CD:     Exit Sub
  loc_13D81CE:   End If
  loc_13D81F1:   If (CLng(Me.FGrid.Col) = CLng(0)) Then
  loc_13D8201:     Set var_98 = Me.TxtGrid
  loc_13D8207:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_13D820F:     var_B0 = var_9C.Height
  loc_13D8221:     Set var_8C = Me.TxtGrid
  loc_13D8227:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_13D822F:     arg_14 = var_90.Top
  loc_13D823B:     var_C8 = CVar((var_B4 + var_B8)) 'Single
  loc_13D824A:     Me.DGModType.Top = var_C8
  loc_13D8269:     Set var_8C = Me.TxtGrid
  loc_13D826F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_13D8277:     var_B4 = var_90.Left
  loc_13D828E:     Me.DGModType.Left = CVar(var_B4)
  loc_13D82B4:     Set var_9C = Nothing
  loc_13D82ED:     Proc_6_69_134A198(Me.DGModType, Me.TxtGrid, KeyCode, global_72, Shift, &HFF)
  loc_13D830B:     If (CLng(Shift) = &HD) Then
  loc_13D8314:       Call Proc_318_39_1472364(KeyCode, var_DE, 1, Nothing)
  loc_13D831F:       If (var_DE = &HFF) Then
  loc_13D832D:         Set var_9C = Me.TxtGrid
  loc_13D8356:         Set var_90 = var_9C
  loc_13D8365:         Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_56, 5)
  loc_13D8375:       End If
  loc_13D8375:     End If
  loc_13D8378:   Else
  loc_13D837F:     If (var_B0 = CLng(1)) Then
  loc_13D838F:       Set var_98 = Me.TxtGrid
  loc_13D8395:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8, 0, 0)
  loc_13D839D:       0 = var_9C.Height
  loc_13D83AF:       Set var_8C = Me.TxtGrid
  loc_13D83B5:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_13D83BD:       var_9C = var_90.Top
  loc_13D83C9:       var_C8 = CVar((var_B4 + var_B8)) 'Single
  loc_13D83D8:       Me.DgModDesc.Top = CVar(var_B4)
  loc_13D83F7:       Set var_8C = Me.TxtGrid
  loc_13D83FD:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_13D8405:       0 = var_90.Left
  loc_13D841C:       Me.DgModDesc.Left = CVar(var_B4)
  loc_13D8442:       Set var_9C = Nothing
  loc_13D847B:       Proc_6_69_134A198(Me.DgModDesc, Me.TxtGrid, KeyCode, global_68, Shift, &HFF)
  loc_13D8499:       If (CLng(Shift) = &HD) Then
  loc_13D84A2:         Call Proc_318_39_1472364(KeyCode, var_DE, 1, Nothing)
  loc_13D84AD:         If (var_DE = &HFF) Then
  loc_13D84F3:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56, 5)
  loc_13D8503:         End If
  loc_13D8503:       End If
  loc_13D8506:     Else
  loc_13D850D:       If (var_B0 = CLng(3)) Then
  loc_13D851A:         If (CLng(Shift) = &HD) Then
  loc_13D8523:           Call Proc_318_39_1472364(KeyCode, var_DE, 0, 0)
  loc_13D852E:           If (var_DE = &HFF) Then
  loc_13D8574:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56, 5, 0)
  loc_13D8584:           End If
  loc_13D8584:         End If
  loc_13D8587:       Else
  loc_13D858E:         If (var_B0 = CLng(4)) Then
  loc_13D859B:           If (CLng(Shift) = &HD) Then
  loc_13D85A4:             Call Proc_318_39_1472364(KeyCode, var_DE, 0, 0)
  loc_13D85AF:             If (var_DE = &HFF) Then
  loc_13D85BD:               Set var_9C = Me.TxtGrid
  loc_13D85E6:               Set var_90 = var_9C
  loc_13D85F5:               Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_56, 5, 0)
  loc_13D8605:             End If
  loc_13D8605:           End If
  loc_13D8605:         End If
  loc_13D8605:       End If
  loc_13D8605:     End If
  loc_13D8605:   End If
  loc_13D8608: Else
  loc_13D860E:   If (var_88 = 1) Then
  loc_13D861B:     If (CLng(Shift) = &H1B) Then
  loc_13D862B:       Set var_8C = Me.TxtGrid
  loc_13D8631:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94, 0, 0)
  loc_13D8639:       0 = var_90.Tag
  loc_13D864B:       Set var_98 = Me.TxtGrid
  loc_13D8651:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_94)
  loc_13D8659:       var_9C.Text = var_9C
  loc_13D8675:       Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13D867E:       Set var_8C = Me.FGrid1
  loc_13D869B:       Set var_8C = Me.TxtGrid
  loc_13D86A1:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0, FGrid1.DispID_8001)
  loc_13D86A9:       var_90.Visible = arg_14
  loc_13D86B5:       Exit Sub
  loc_13D86B6:     End If
  loc_13D86D9:     If (CLng(Me.FGrid1.Col) = CLng(0)) Then
  loc_13D86E9:       Set var_98 = Me.TxtGrid
  loc_13D86EF:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_13D86F7:       var_F0 = var_9C.Height
  loc_13D8709:       Set var_8C = Me.TxtGrid
  loc_13D870F:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_13D8717:       0 = var_90.Top
  loc_13D8723:       var_C8 = CVar((var_B4 + var_B8)) 'Single
  loc_13D8732:       Me.DGModType.Top = CVar(var_B4)
  loc_13D8751:       Set var_8C = Me.TxtGrid
  loc_13D8757:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_13D875F:       var_B4 = var_90.Left
  loc_13D8776:       Me.DGModType.Left = CVar(var_B4)
  loc_13D879C:       Set var_9C = Nothing
  loc_13D87D5:       Proc_6_69_134A198(Me.DGModType, Me.TxtGrid, KeyCode, global_72, Shift, &HFF)
  loc_13D87F3:       If (CLng(Shift) = &HD) Then
  loc_13D87FC:         Call Proc_318_39_1472364(KeyCode, var_DE, 1, Nothing)
  loc_13D8807:         If (var_DE = &HFF) Then
  loc_13D8815:           Set var_9C = Me.TxtGrid
  loc_13D883E:           Set var_90 = var_9C
  loc_13D884D:           Proc_6_62_1253BC4(Me.FGrid1, var_90, KeyCode, Shift, global_56, 5)
  loc_13D885D:         End If
  loc_13D885D:       End If
  loc_13D8860:     Else
  loc_13D8867:       If (var_F0 = CLng(1)) Then
  loc_13D8877:         Set var_98 = Me.TxtGrid
  loc_13D887D:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8, 0, 0)
  loc_13D8885:         0 = var_9C.Height
  loc_13D8897:         Set var_8C = Me.TxtGrid
  loc_13D889D:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_13D88A5:         var_9C = var_90.Top
  loc_13D88B1:         var_C8 = CVar((var_B4 + var_B8)) 'Single
  loc_13D88C0:         Me.DgModDesc.Top = CVar(var_B4)
  loc_13D88DF:         Set var_8C = Me.TxtGrid
  loc_13D88E5:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_13D88ED:         0 = var_90.Left
  loc_13D8904:         Me.DgModDesc.Left = CVar(var_B4)
  loc_13D892A:         Set var_9C = Nothing
  loc_13D8963:         Proc_6_69_134A198(Me.DgModDesc, Me.TxtGrid, KeyCode, global_68, Shift, &HFF)
  loc_13D8981:         If (CLng(Shift) = &HD) Then
  loc_13D898A:           Call Proc_318_39_1472364(KeyCode, var_DE, 1, Nothing)
  loc_13D8995:           If (var_DE = &HFF) Then
  loc_13D89DB:             Proc_6_62_1253BC4(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_56, 5)
  loc_13D89EB:           End If
  loc_13D89EB:         End If
  loc_13D89EE:       Else
  loc_13D89F5:         If (var_F0 = CLng(3)) Then
  loc_13D8A02:           If (CLng(Shift) = &HD) Then
  loc_13D8A0B:             Call Proc_318_39_1472364(KeyCode, var_DE, 0, 0)
  loc_13D8A16:             If (var_DE = &HFF) Then
  loc_13D8A5C:               Proc_6_62_1253BC4(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_56, 5, 0)
  loc_13D8A6C:             End If
  loc_13D8A6C:           End If
  loc_13D8A6F:         Else
  loc_13D8A76:           If (var_F0 = CLng(4)) Then
  loc_13D8A83:             If (CLng(Shift) = &HD) Then
  loc_13D8A8C:               Call Proc_318_39_1472364(KeyCode, var_DE, 0, 0)
  loc_13D8A97:               If (var_DE = &HFF) Then
  loc_13D8ADD:                 Proc_6_62_1253BC4(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_56, 5, 0)
  loc_13D8AED:               End If
  loc_13D8AED:             End If
  loc_13D8AED:           End If
  loc_13D8AED:         End If
  loc_13D8AED:       End If
  loc_13D8AED:     End If
  loc_13D8AED:   End If
  loc_13D8AED: End If
  loc_13D8AED: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '1142F3C
  'Data Table: 492F0C
  Dim var_AA As Integer
  Dim var_B0 As Variant
  Dim var_B4 As Long
  Dim var_C0 As TextBox
  Dim arg_10 As Integer
  Dim var_E4 As Long
  loc_1142BAC: On Error Goto loc_1142F34
  loc_1142BB2: Proc_6_58_E054C0(arg_10)
  loc_1142BD2: var_88 = CStr(Ucase(Chr(CLng(arg_10))))
  loc_1142BDF: var_AA = KeyAscii
  loc_1142BE8: If (var_AA = 0) Then
  loc_1142BFE:   var_B4 = CLng(Me.FGrid.Col)
  loc_1142C0E:   If (var_B4 = CLng(0)) Then
  loc_1142C2D:     If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_1142C3F:       var_B8 = "ModType"
  loc_1142C5A:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_72, arg_10)
  loc_1142C69:     End If
  loc_1142C6C:   Else
  loc_1142C73:     If (var_B4 = CLng(1)) Then
  loc_1142C92:       If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_1142C99:         Set var_C0 = Me.TxtGrid
  loc_1142CA4:         var_B8 = "ModuleDescription"
  loc_1142CBF:         Proc_6_89_146F1AC(var_C0, KeyAscii, global_68, arg_10, var_B8)
  loc_1142CCE:       End If
  loc_1142CD1:     Else
  loc_1142CD8:       If (var_B4 = CLng(4)) Then
  loc_1142D04:         If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1142D14:           Set var_B0 = Me.TxtGrid
  loc_1142D1A:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_C0, "Yes", 0)
  loc_1142D22:           var_C0.Text = var_B8
  loc_1142D31:         Else
  loc_1142D5A:           If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1142D6A:             Set var_B0 = Me.TxtGrid
  loc_1142D70:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_C0, "No")
  loc_1142D78:             var_C0.Text = 0
  loc_1142D84:           End If
  loc_1142D84:         End If
  loc_1142D86:         arg_10 = 0
  loc_1142D89:       End If
  loc_1142D89:     End If
  loc_1142D89:   End If
  loc_1142D8C: Else
  loc_1142D92:   If (var_AA = 1) Then
  loc_1142DA8:     var_E4 = CLng(Me.FGrid1.Col)
  loc_1142DB8:     If (var_E4 = CLng(0)) Then
  loc_1142DD7:       If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_1142E04:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_72, arg_10, "ModType")
  loc_1142E13:       End If
  loc_1142E16:     Else
  loc_1142E1D:       If (var_E4 = CLng(1)) Then
  loc_1142E3C:         If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_1142E43:           Set var_C0 = Me.TxtGrid
  loc_1142E69:           Proc_6_89_146F1AC(var_C0, KeyAscii, global_68, arg_10, "ModuleDescription", 0)
  loc_1142E78:         End If
  loc_1142E7B:       Else
  loc_1142E82:         If (var_E4 = CLng(4)) Then
  loc_1142EAE:           If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1142EBE:             Set var_B0 = Me.TxtGrid
  loc_1142EC4:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_C0, "Yes", 0)
  loc_1142ECC:             var_C0.Text = var_E4
  loc_1142EDB:           Else
  loc_1142F04:             If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1142F14:               Set var_B0 = Me.TxtGrid
  loc_1142F1A:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_C0, "No")
  loc_1142F22:               var_C0.Text = arg_10
  loc_1142F2E:             End If
  loc_1142F2E:           End If
  loc_1142F30:           arg_10 = 0
  loc_1142F33:         End If
  loc_1142F33:       End If
  loc_1142F33:     End If
  loc_1142F33:   End If
  loc_1142F33: End If
  loc_1142F33: Exit Sub
  loc_1142F34: ' Referenced from: 1142BAC
  loc_1142F34: Proc_6_60_E62BC4(arg_10, var_B4)
  loc_1142F39: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '103845C
  'Data Table: 492F0C
  Dim var_86 As Integer
  Dim var_A0 As Long
  Dim var_B0 As Long
  loc_1038208: On Error Goto loc_1038455
  loc_103820E: var_86 = KeyCode
  loc_1038217: If (var_86 = 0) Then
  loc_103822D:   var_A0 = CLng(Me.FGrid.Col)
  loc_103823D:   If (var_A0 = CLng(0)) Then
  loc_1038263:     If ((Shift <> &HD) And (CBool(Me.DGModType.Visible) = 0)) Then
  loc_1038274:       Call TxtGrid_KeyDown(KeyCode, global_64)
  loc_10382A3:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_72, Shift, "ModType")
  loc_10382B2:     End If
  loc_10382B5:   Else
  loc_10382BC:     If (var_A0 = CLng(1)) Then
  loc_10382E2:       If ((Shift <> &HD) And (CBool(Me.DgModDesc.Visible) = 0)) Then
  loc_10382F3:         Call TxtGrid_KeyDown(KeyCode, global_64)
  loc_1038322:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_68, Shift, "ModuleDescription", &HFF)
  loc_1038331:       End If
  loc_1038331:     End If
  loc_1038331:   End If
  loc_1038334: Else
  loc_103833A:   If (var_86 = 1) Then
  loc_1038350:     var_B0 = CLng(Me.FGrid1.Col)
  loc_1038360:     If (var_B0 = CLng(0)) Then
  loc_1038386:       If ((Shift <> &HD) And (CBool(Me.DGModType.Visible) = 0)) Then
  loc_1038397:         Call TxtGrid_KeyDown(KeyCode, global_64)
  loc_10383C6:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_72, Shift, "ModType", &HFF, 0)
  loc_10383D5:       End If
  loc_10383D8:     Else
  loc_10383DF:       If (var_B0 = CLng(1)) Then
  loc_1038405:         If ((Shift <> &HD) And (CBool(Me.DgModDesc.Visible) = 0)) Then
  loc_1038416:           Call TxtGrid_KeyDown(KeyCode, global_64)
  loc_1038445:           Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_68, Shift, "ModuleDescription", &HFF, 0)
  loc_1038454:         End If
  loc_1038454:       End If
  loc_1038454:     End If
  loc_1038454:   End If
  loc_1038454: End If
  loc_1038454: Exit Sub
  loc_1038455: ' Referenced from: 1038208
  loc_1038455: Proc_6_60_E62BC4(var_B0, 0, &HFF)
  loc_103845A: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E168A0
  'Data Table: 492F0C
  Dim arg_10 As Integer
  loc_E16884: On Error Goto loc_E1689A
  loc_E1688D: Call Proc_318_39_1472364(Cancel)
  loc_E16896: arg_10 = Not(var_86)
  loc_E16899: Exit Sub
  loc_E1689A: ' Referenced from: E16884
  loc_E1689A: Proc_6_60_E62BC4(arg_10)
  loc_E1689F: Exit Sub
End Sub

Private Sub CmdSave_UnknownEvent_9 '12DA66C
  'Data Table: 492F0C
  Dim unk_492F10 As Connection15
  Dim var_88 As Integer
  Dim var_90 As String
  Dim var_94 As String
  Dim var_B4 As Variant
  Dim var_A4 As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_150 As Variant
  Dim var_194 As Variant
  Dim var_200 As Variant
  Dim var_260 As Variant
  Dim var_2C0 As Variant
  Dim var_2E4 As Variant
  Dim var_2C4 As String
  loc_12DA030: On Error Goto loc_12DA64F
  loc_12DA03C: unk_492F10.BeginTrans var_8C
  loc_12DA043: var_88 = &HFF
  loc_12DA06A: unk_492F10.Execute "DELETE FROM PRINTERSETUP WHERE SITE_CODE='" & MemVar_1F92078 & "'", var_B4, -1
  loc_12DA0A1: For var_BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_12DA0AB:   var_A4 = CVar(CLng(var_86)) 'Long
  loc_12DA0B3:   var_DC = CVar(CLng(0)) 'Long
  loc_12DA0CD:   var_90 = CStr(Me.FGrid.TextMatrix))
  loc_12DA0D9:   var_FC = CVar(CLng(var_86)) 'Long
  loc_12DA0E1:   var_11C = CVar(CLng(1)) 'Long
  loc_12DA0FB:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_12DA108:   var_150 = CVar(CLng(var_86)) 'Long
  loc_12DA14E:   If (CVar(CLng(3)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_12DA155:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_12DA15D:     var_DC = CVar(CLng(0)) 'Long
  loc_12DA17C:     var_FC = CVar(CLng(var_86)) 'Long
  loc_12DA184:     var_11C = CVar(CLng(1)) 'Long
  loc_12DA1A3:     var_150 = CVar(CLng(var_86)) 'Long
  loc_12DA1BA:     var_194 = Me.FGrid.TextMatrix)
  loc_12DA1E1:     var_200 = Me.FGrid.TextMatrix)
  loc_12DA208:     var_260 = Me.FGrid.TextMatrix)
  loc_12DA22F:     var_2C0 = Me.FGrid.TextMatrix)
  loc_12DA240:     var_2E4 = CVar(Proc_6_14_EF349C(var_2C0, CVar(CLng(5)), CVar(CLng(var_86)), var_260, CVar(CLng(4)), CVar(CLng(var_86)), var_200, CVar(CLng(3)))) 'String
  loc_12DA246:     Proc_183_8_EB0AA4(var_2F4, var_2E4, CVar(CLng(var_86)), var_194, CVar(CLng(2)))
  loc_12DA263:     var_94 = "Insert into PrinterSetup (ModType,ModDescription,ModCode,Printer,AutoPrint,RestCode,Site_Code,U_EntDt,U_AE) values('" & CStr(Me.FGrid.TextMatrix))
  loc_12DA2B2:     var_2C4 = var_94 & "','" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(var_194) & "','" & CStr(var_200) & "','" & CStr(var_260) & "','"
  loc_12DA2EF:     unk_492F10.Execute CStr(CVar(var_2C4 & CStr(var_2C0) & "','" & MemVar_1F92078 & "',") & var_2F4 & ",'A')"), var_358, -1
  loc_12DA34B:   End If
  loc_12DA34E: Next var_BC 'Integer
  loc_12DA378: For var_360 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_360 'Integer
  loc_12DA382:   var_A4 = CVar(CLng(var_86)) 'Long
  loc_12DA38A:   var_DC = CVar(CLng(0)) 'Long
  loc_12DA3A4:   var_90 = CStr(Me.FGrid1.TextMatrix))
  loc_12DA3B0:   var_FC = CVar(CLng(var_86)) 'Long
  loc_12DA3B8:   var_11C = CVar(CLng(1)) 'Long
  loc_12DA3D2:   var_94 = CStr(Me.FGrid1.TextMatrix))
  loc_12DA3DF:   var_150 = CVar(CLng(var_86)) 'Long
  loc_12DA425:   If (CVar(CLng(3)) And (CStr(Me.FGrid1.TextMatrix)) <> vbNullString)) Then
  loc_12DA42C:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_12DA434:     var_DC = CVar(CLng(0)) 'Long
  loc_12DA453:     var_FC = CVar(CLng(var_86)) 'Long
  loc_12DA45B:     var_11C = CVar(CLng(1)) 'Long
  loc_12DA47A:     var_150 = CVar(CLng(var_86)) 'Long
  loc_12DA491:     var_194 = Me.FGrid1.TextMatrix)
  loc_12DA4B8:     var_200 = Me.FGrid1.TextMatrix)
  loc_12DA4DF:     var_260 = Me.FGrid1.TextMatrix)
  loc_12DA506:     var_2C0 = Me.FGrid1.TextMatrix)
  loc_12DA517:     var_2E4 = CVar(Proc_6_14_EF349C(var_2C0, CVar(CLng(5)), CVar(CLng(var_86)), var_260, CVar(CLng(4)), CVar(CLng(var_86)), var_200, CVar(CLng(3)))) 'String
  loc_12DA51D:     Proc_183_8_EB0AA4(var_2F4, var_2E4, CVar(CLng(var_86)), var_194, CVar(CLng(2)))
  loc_12DA53A:     var_94 = "Insert into PrinterSetup (ModType,ModDescription,ModCode,Printer,AutoPrint,RestCode,Site_Code,U_EntDt,U_AE) values('" & CStr(Me.FGrid1.TextMatrix))
  loc_12DA589:     var_2C4 = var_94 & "','" & CStr(Me.FGrid1.TextMatrix)) & "','" & CStr(var_194) & "','" & CStr(var_200) & "','" & CStr(var_260) & "','"
  loc_12DA5C6:     unk_492F10.Execute CStr(CVar(var_2C4 & CStr(var_2C0) & "','" & MemVar_1F92078 & "',") & var_2F4 & ",'A')"), var_358, -1
  loc_12DA622:   End If
  loc_12DA625: Next var_360 'Integer
  loc_12DA62C: var_88 = 0
  loc_12DA635: unk_492F10.CommitTrans
  loc_12DA647: Me.Global.Unload Me
  loc_12DA64F: ' Referenced from: 12DA030
  loc_12DA655: If (var_88 = &HFF) Then
  loc_12DA65E:   unk_492F10.RollbackTrans
  loc_12DA663: End If
  loc_12DA663: Proc_6_60_E62BC4(var_88)
  loc_12DA668: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E611B4
  'Data Table: 492F0C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6117F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E61192: Set var_A8 = Me.TxtGrid
  loc_E61198: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E611A0: var_AC.Visible = False
  loc_E611AC: Call Proc_318_36_EB74B4()
  loc_E611B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6A874
  'Data Table: 492F0C
  Dim var_88 As MSHFlexGrid
  Dim var_9C As TextBox
  Dim MemVar_4B76E4 As Integer
  loc_E6A824: Call Proc_318_37_E40DEC()
  loc_E6A848: If (CLng(Me.FGrid.Col) = 0) Then
  loc_E6A856:   Set var_88 = Me.TxtGrid
  loc_E6A85C:   Call 0.Method_FGrid_UnknownEvent_90 (0, var_9C)
  loc_E6A864:   var_9C.Visible = False
  loc_E6A870: End If
  loc_E6A870: Exit Sub
  loc_E6A872: MemVar_4B76E4 = ( >= )
End Sub

Private Sub FGrid_UnknownEvent_A '1060780
  'Data Table: 492F0C
  Dim var_9C As String
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1060508: Set var_88 = Me.TopCtrl1
  loc_106050E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1060553: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_106055C:   Call Form_KeyDown(Cancel, arg_10)
  loc_1060561: End If
  loc_1060565: Set var_88 = Me.TopCtrl1
  loc_106056B: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1060584: If (CStr() = "Browse") Then
  loc_1060587:   Exit Sub
  loc_1060588: End If
  loc_10605FC: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1060607:   var_9C = "+{Tab}"
  loc_106060D:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_1060617:   Cancel = 0
  loc_106061A: End If
  loc_1060620: global_64 = Cancel
  loc_1060646: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_106066A: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1060680:   var_DC = CLng(Me.FGrid.Col)
  loc_1060690:   If Not (var_DC = CLng(1)) Then
  loc_106069A:     If Not (var_DC = CLng(0)) Then
  loc_10606A4:       If (var_DC = CLng(3)) Then
  loc_10606A7:       End If
  loc_10606A7:     End If
  loc_10606BA:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10606D2:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10606D7:     var_11C = vbNullString
  loc_10606E1:     Set var_B4 = Me.FGrid
  loc_10606E7:     LateIdCallSt
  loc_1060702:   Else
  loc_1060709:     If (var_DC = CLng(4)) Then
  loc_106071F:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1060737:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_106073C:       var_11C = "Yes"
  loc_1060746:       Set var_B4 = Me.FGrid
  loc_106074C:       LateIdCallSt
  loc_1060764:     End If
  loc_1060764:   End If
  loc_1060764:   GoTo loc_1060767
  loc_1060767:   ' Referenced from: 1060764
  loc_1060767: End If
  loc_106076D: If (Cancel = &HD) Then
  loc_1060775:   global_56 = 0
  loc_1060778: End If
  loc_106077A: Cancel = 0
  loc_106077D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E106D0
  'Data Table: 492F0C
  loc_E106C1: Call FGrid_UnknownEvent_C()
  loc_E106CB: global_56 = 0
  loc_E106CE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '11ED4D0
  'Data Table: 492F0C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  Dim var_A8 As Long
  Dim var_D0 As Integer
  Dim var_B8 As TextBox
  loc_11ED044: Set var_88 = Me.TopCtrl1
  loc_11ED04A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_11ED063: If (CStr() = "Browse") Then
  loc_11ED066:   Exit Sub
  loc_11ED067: End If
  loc_11ED07A: var_A0 = CLng(Me.FGrid.Col)
  loc_11ED08A: If (var_A0 = CLng(0)) Then
  loc_11ED09B:   Set var_88 = Me.TxtGrid
  loc_11ED0A1:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11ED0A9:   var_A4.MaxLength = 3
  loc_11ED0B8: Else
  loc_11ED0BF:   If Not (var_A0 = CLng(1)) Then
  loc_11ED0C9:     If (var_A0 = CLng(3)) Then
  loc_11ED0CC:     End If
  loc_11ED0DA:     Set var_88 = Me.TxtGrid
  loc_11ED0E0:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11ED0E8:     var_A4.MaxLength = &H4B
  loc_11ED0F7:   Else
  loc_11ED0FE:     If (var_A0 = CLng(4)) Then
  loc_11ED10F:       Set var_88 = Me.TxtGrid
  loc_11ED115:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11ED11D:       var_A4.MaxLength = 3
  loc_11ED129:     End If
  loc_11ED129:   End If
  loc_11ED129: End If
  loc_11ED13C: var_A8 = CLng(Me.FGrid.Col)
  loc_11ED14C: If Not (var_A8 = CLng(0)) Then
  loc_11ED156:   If (var_A8 = CLng(1)) Then
  loc_11ED159:   End If
  loc_11ED197:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0)
  loc_11ED1AC: Else
  loc_11ED1B3:   If (var_A8 = CLng(3)) Then
  loc_11ED1BA:     Set var_B8 = Me.FGrid
  loc_11ED1DE:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11ED1E7:     var_D0 = Asc(var_9C)
  loc_11ED20B:     Set var_A4 = var_B8
  loc_11ED21D:     Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0, 0, var_D0)
  loc_11ED245:     Set var_88 = Me.TxtGrid
  loc_11ED24B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, 0, var_D0)
  loc_11ED253:     Cancel = var_A4.Text
  loc_11ED26C:     If (Len(var_9C) <= 1) Then
  loc_11ED27B:       Set var_88 = Me.TxtGrid
  loc_11ED281:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_11ED289:       0 = var_A4.Text
  loc_11ED29A:       Set var_AC = Me.TxtGrid
  loc_11ED2A0:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_9C)
  loc_11ED2A8:       var_B8.Text = var_A8
  loc_11ED2BB:     End If
  loc_11ED2C7:     Set var_88 = Me.TxtGrid
  loc_11ED2CD:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11ED2E7:     Set var_AC = Me.TxtGrid
  loc_11ED2ED:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_11ED2F5:     var_B8.SelStart = Len(var_A4.Text)
  loc_11ED30B:   Else
  loc_11ED312:     If (var_A8 = CLng(4)) Then
  loc_11ED319:       Set var_B8 = Me.FGrid
  loc_11ED33D:       var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11ED36A:       Set var_A4 = var_B8
  loc_11ED37C:       Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0, 0)
  loc_11ED3A4:       Set var_88 = Me.TxtGrid
  loc_11ED3AA:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, Asc(var_9C))
  loc_11ED3B2:       0 = var_A4.Text
  loc_11ED3CB:       If (Len(var_9C) <= 1) Then
  loc_11ED3DA:         Set var_88 = Me.TxtGrid
  loc_11ED3E0:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_11ED3E8:         var_D0 = var_A4.Text
  loc_11ED419:         If (Left(CVar(var_9C), 1) = "N") Then
  loc_11ED428:           Set var_88 = Me.TxtGrid
  loc_11ED42E:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11ED436:           var_A4.Text = "No"
  loc_11ED445:         Else
  loc_11ED451:           Set var_88 = Me.TxtGrid
  loc_11ED457:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11ED45F:           var_A4.Text = "Yes"
  loc_11ED46B:         End If
  loc_11ED46B:       End If
  loc_11ED477:       Set var_88 = Me.TxtGrid
  loc_11ED47D:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11ED497:       Set var_AC = Me.TxtGrid
  loc_11ED49D:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_11ED4A5:       var_B8.SelStart = Len(var_A4.Text)
  loc_11ED4B8:     End If
  loc_11ED4B8:   End If
  loc_11ED4B8: End If
  loc_11ED4C2: If (CLng(Cancel) <> &HD) Then
  loc_11ED4CA:   global_56 = &HFF
  loc_11ED4CD: End If
  loc_11ED4CD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FD9190
  'Data Table: 492F0C
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_FD8FC8: Set var_8C = Me.TopCtrl1
  loc_FD8FCE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_FD8FE7: If (CStr() = "Browse") Then
  loc_FD8FEA:   Exit Sub
  loc_FD8FEB: End If
  loc_FD9008: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FD900B:   Exit Sub
  loc_FD900C: End If
  loc_FD901D: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FD903F:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FD9079:     If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FD909B:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FD90B1:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FD90BA:         Set var_114 = Me.FGrid
  loc_FD90D5:       Else
  loc_FD90E8:         Me.FGrid.Rows = 1
  loc_FD9105:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FD910D:         Set var_114 = Me.FGrid
  loc_FD913C:         Me.FGrid.FixedRows = 1
  loc_FD9144:       End If
  loc_FD9144:     End If
  loc_FD9147:   Else
  loc_FD9168:     MsgBox("No Entries To Delete", &H10, "Delete !", var_F0, var_110)
  loc_FD9178:   End If
  loc_FD917C:   Set var_8C = Me.FGrid
  loc_FD918D: End If
  loc_FD918D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1E2D0
  'Data Table: 492F0C
  loc_E1E2C7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1E2CF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E40D28
  'Data Table: 492F0C
  Dim var_8C As TextBox
  loc_E40CFC: Call Proc_318_36_EB74B4()
  loc_E40D0C: Set var_88 = Me.TxtGrid
  loc_E40D12: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E40D1A: var_8C.Visible = False
  loc_E40D26: Exit Sub
End Sub

Private Sub Form_Load() '13A5C18
  'Data Table: 492F0C
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_B4 As String
  Dim unk_492F10 As Connection15
  Dim Me As Recordset15
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_FC As Variant
  Dim var_EC As Variant
  Dim var_110 As Variant
  Dim unk_492F34 As Connection15
  Dim var_D8 As Fields15
  Dim var_170 As Variant
  loc_13A531C: On Error Goto loc_13A5BD2
  loc_13A5326: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_13A532B: Call Proc_318_34_123E05C()
  loc_13A5343: Me.FGrid.Rows = 1
  loc_13A5358: Set var_AC = Me.FGrid1
  loc_13A535E: var_AC.Rows = 1
  loc_13A536A: var_86 = CByte(1) 'Byte
  loc_13A5372: var_88 = CByte(1) 'Byte
  loc_13A539A: unk_492F10.Execute "SELECT printersetup.* FROM PrinterSetup WHERE PrinterSetup.SITE_CODE='" & MemVar_1F92078 & "'", var_C4, -1
  loc_13A53AB: Set global_52 = var_AC
  loc_13A53D7: If (Me.RecordCount > 0) Then
  loc_13A53DA:   ' Referenced from: 13A5AD2
  loc_13A53EC:   If Not(Me.EOF) Then
  loc_13A5401:     var_AC = Me.Fields
  loc_13A543C:     var_D8 = Me.Fields.Item("ModType")
  loc_13A5478:     var_110 = CVar(Me.Fields.Item("ModType")) 'Address
  loc_13A54A5:     If ((var_AC Or (Proc_6_38_E68A98(CVar(var_D8), (Proc_6_38_E68A98(CVar(var_AC.Item("ModType"))) = "KOT")) = "ORD")) Or (Proc_6_38_E68A98(var_110) = "TKN")) Then
  loc_13A54AC:       Set var_118 = Me.FGrid1
  loc_13A54AF:       var_98 = vbNullString
  loc_13A54FD:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ModType")), CVar(CLng(0)), CVar(CLng(var_86)))) 'String
  loc_13A5504:       LateIdCallSt
  loc_13A5553:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ModDescription")), CVar(CLng(1)), CVar(CLng(var_86)), var_118)) 'String
  loc_13A555A:       LateIdCallSt
  loc_13A55A9:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("modCODE")), CVar(CLng(2)), CVar(CLng(var_86)), var_118)) 'String
  loc_13A55B0:       LateIdCallSt
  loc_13A55FF:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Printer")), CVar(CLng(3)), CVar(CLng(var_86)), var_118, var_E8)) 'String
  loc_13A5606:       LateIdCallSt
  loc_13A5655:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("AutoPrint")), CVar(CLng(4)), CVar(CLng(var_86)), var_118, var_E8)) 'String
  loc_13A565C:       LateIdCallSt
  loc_13A56AB:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RestCode")), CVar(CLng(5)), CVar(CLng(var_86)), var_118, var_E8)) 'String
  loc_13A56B2:       LateIdCallSt
  loc_13A570A:       var_FC = 0
  loc_13A572A:       var_B4 = "Select Max(Name) From Depart Where Code='" & Proc_6_38_E68A98(CVar(Me.Fields.Item("RestCode")), var_118, var_E8, var_E8)
  loc_13A5748:       unk_492F34.Execute var_B4 & "' And LogSite_Code='" & MemVar_1F92078 & "'", var_E8, -1
  loc_13A5750:       var_D4 = var_D4.Fields
  loc_13A5758:       var_FC = var_D8.Item(var_D8)
  loc_13A5760:       var_EC = var_EC.Value
  loc_13A576D:       var_170 = CVar(Proc_6_38_E68A98(var_110, var_110, CVar(CLng(6)), CVar(CLng(var_86)))) 'String
  loc_13A5774:       LateIdCallSt
  loc_13A57A3:       Set var_118 = Nothing 
  loc_13A57B2:       var_86 = CByte((CInt(var_86) + 1)) 'Byte
  loc_13A57B9:     Else
  loc_13A57BD:       Set var_188 = Me.FGrid
  loc_13A57C0:       var_98 = vbNullString
  loc_13A57E6:       var_98 = "ModType"
  loc_13A580E:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_98)), CVar(CLng(0)), CVar(CLng(var_88)), FGrid.DispID_10000, var_98)) 'String
  loc_13A5815:       LateIdCallSt
  loc_13A5864:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ModDescription")), CVar(CLng(1)), CVar(CLng(var_88)), var_188, var_E8)) 'String
  loc_13A586B:       LateIdCallSt
  loc_13A58BA:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("modCODE")), CVar(CLng(2)), CVar(CLng(var_88)), var_188, var_E8)) 'String
  loc_13A58C1:       LateIdCallSt
  loc_13A5910:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Printer")), CVar(CLng(3)), CVar(CLng(var_88)), var_188, var_E8)) 'String
  loc_13A5917:       LateIdCallSt
  loc_13A5966:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("AutoPrint")), CVar(CLng(4)), CVar(CLng(var_88)), var_188, var_E8)) 'String
  loc_13A596D:       LateIdCallSt
  loc_13A59BC:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RestCode")), CVar(CLng(5)), CVar(CLng(var_88)), var_188, var_E8)) 'String
  loc_13A59C3:       LateIdCallSt
  loc_13A5A1B:       var_FC = 0
  loc_13A5A37:       var_B0 = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestCode")), var_188, var_E8, var_118)
  loc_13A5A59:       unk_492F34.Execute "Select Max(Name) From Depart Where Code='" & var_B0 & "' And LogSite_Code='" & MemVar_1F92078 & "'", var_E8, -1
  loc_13A5A61:       var_D4 = var_D4.Fields
  loc_13A5A69:       var_FC = var_D8.Item(var_D8)
  loc_13A5A71:       var_EC = var_EC.Value
  loc_13A5A7E:       var_170 = CVar(Proc_6_38_E68A98(var_110, var_110, CVar(CLng(6)), CVar(CLng(var_88)))) 'String
  loc_13A5A85:       LateIdCallSt
  loc_13A5AB4:       Set var_188 = Nothing 
  loc_13A5AC3:       var_88 = CByte((CInt(var_88) + 1)) 'Byte
  loc_13A5AC7:     End If
  loc_13A5ACD:     Me.MoveNext
  loc_13A5AD2:     GoTo loc_13A53DA
  loc_13A5AD5:   End If
  loc_13A5AD5: End If
  loc_13A5AF4: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13A5AF7:   var_98 = vbNullString
  loc_13A5B01:   Set var_AC = Me.FGrid
  loc_13A5B12: End If
  loc_13A5B31: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_13A5B34:   var_98 = vbNullString
  loc_13A5B3E:   Set var_AC = Me.FGrid1
  loc_13A5B4F: End If
  loc_13A5B62: Me.FGrid.FixedRows = 1
  loc_13A5B6A: var_98 = 1
  loc_13A5B7D: Me.FGrid1.FixedRows = var_98
  loc_13A5B85: Call Proc_318_30_10EC2E8(FGrid1.DispID_10000, var_98, FGrid.DispID_10000, var_98, var_188)
  loc_13A5B8A: Call Proc_318_32_12AB59C(var_170, var_170, var_E8)
  loc_13A5B8F: Call Proc_318_31_11108A4(FGrid1.DispID_10000)
  loc_13A5B94: Call Proc_318_33_1424D20(var_98)
  loc_13A5BA3: Set var_AC = Me.TopCtrl1
  loc_13A5BA9: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005("Add")
  loc_13A5BC9: Proc_6_23_DFBA28(Me, 4425)
  loc_13A5BD1: Exit Sub
  loc_13A5BD2: ' Referenced from: 13A531C
  loc_13A5BDA: Set var_AC = Err()
  loc_13A5BE0: Call 0.Method_arg_2C (var_B0)
  loc_13A5C01: MsgBox(CVar(var_B0), &H40, "Information", var_110, var_170)
  loc_13A5C14: Exit Sub
  loc_13A5C15: Exit Sub
End Sub

Private Sub Form_Resize() 'E84DA8
  'Data Table: 492F0C
  loc_E84D3E: Call 0.Method_arg_50 (var_88)
  loc_E84D50: Me.LblFormCaption.Caption = var_88
  loc_E84D69: Me.LblFormCaption.Left = CDbl(0)
  loc_E84D7F: Me.LblFormCaption.Top = CDbl(0)
  loc_E84D8D: Call 0.Method_arg_100 (var_90)
  loc_E84D9F: Me.LblFormCaption.Width = var_90
  loc_E84DA7: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E52A54
  'Data Table: 492F0C
  loc_E52A27: Set global_52 = Nothing
  loc_E52A39: Set global_72 = Nothing
  loc_E52A4B: Set global_68 = Nothing
  loc_E52A52: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E893E4
  'Data Table: 492F0C
  loc_E89380: On Error Goto loc_E893A0
  loc_E89397: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8939F: Exit Sub
  loc_E893A0: ' Referenced from: E89380
  loc_E893A8: Set var_88 = Err()
  loc_E893AE: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E893CF: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E893E2: Exit Sub
  loc_E893E3: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'E617B4
  'Data Table: 492F0C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6177F: Me.FGrid1.BackColorSel = CVar(CLng("14737632"))
  loc_E61792: Set var_A8 = Me.TxtGrid
  loc_E61798: Call 0.Method_Fgrid1_UnknownEvent_00 (1, var_AC)
  loc_E617A0: var_AC.Visible = False
  loc_E617AC: Call Proc_318_36_EB74B4()
  loc_E617B1: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'E6A98C
  'Data Table: 492F0C
  Dim var_88 As MSHFlexGrid
  Dim var_9C As TextBox
  loc_E6A93C: Call Proc_318_38_E40F18()
  loc_E6A960: If (CLng(Me.FGrid1.Col) = 0) Then
  loc_E6A96E:   Set var_88 = Me.TxtGrid
  loc_E6A974:   Call 0.Method_Fgrid1_UnknownEvent_90 (1, var_9C)
  loc_E6A97C:   var_9C.Visible = False
  loc_E6A988: End If
  loc_E6A988: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A '10604B8
  'Data Table: 492F0C
  Dim var_9C As String
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1060240: Set var_88 = Me.TopCtrl1
  loc_1060246: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_106028B: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_1060294:   Call Form_KeyDown(KeyCode, Shift)
  loc_1060299: End If
  loc_106029D: Set var_88 = Me.TopCtrl1
  loc_10602A3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10602BC: If (CStr() = "Browse") Then
  loc_10602BF:   Exit Sub
  loc_10602C0: End If
  loc_1060334: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_106033F:   var_9C = "+{Tab}"
  loc_1060345:   Proc_303_0_FB9B68(CStr(Me.FGrid1.Tag), 0)
  loc_106034F:   KeyCode = 0
  loc_1060352: End If
  loc_1060358: global_64 = KeyCode
  loc_106037E: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_10603A2: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_10603B8:   var_DC = CLng(Me.FGrid1.Col)
  loc_10603C8:   If Not (var_DC = CLng(1)) Then
  loc_10603D2:     If Not (var_DC = CLng(0)) Then
  loc_10603DC:       If (var_DC = CLng(3)) Then
  loc_10603DF:       End If
  loc_10603DF:     End If
  loc_10603F2:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_106040A:     var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_106040F:     var_11C = vbNullString
  loc_1060419:     Set var_B4 = Me.FGrid1
  loc_106041F:     LateIdCallSt
  loc_106043A:   Else
  loc_1060441:     If (var_DC = CLng(4)) Then
  loc_1060457:       var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_106046F:       var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1060474:       var_11C = "Yes"
  loc_106047E:       Set var_B4 = Me.FGrid1
  loc_1060484:       LateIdCallSt
  loc_106049C:     End If
  loc_106049C:   End If
  loc_106049C:   GoTo loc_106049F
  loc_106049F:   ' Referenced from: 106049C
  loc_106049F: End If
  loc_10604A5: If (KeyCode = &HD) Then
  loc_10604AD:   global_56 = 0
  loc_10604B0: End If
  loc_10604B2: KeyCode = 0
  loc_10604B5: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E10C28
  'Data Table: 492F0C
  loc_E10C19: Call Fgrid1_UnknownEvent_C()
  loc_E10C23: global_56 = 0
  loc_E10C26: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C '11EF228
  'Data Table: 492F0C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  Dim var_A8 As Long
  Dim var_D0 As Integer
  Dim var_B8 As TextBox
  loc_11EED9C: Set var_88 = Me.TopCtrl1
  loc_11EEDA2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_11EEDBB: If (CStr() = "Browse") Then
  loc_11EEDBE:   Exit Sub
  loc_11EEDBF: End If
  loc_11EEDD2: var_A0 = CLng(Me.FGrid1.Col)
  loc_11EEDE2: If (var_A0 = CLng(0)) Then
  loc_11EEDF3:   Set var_88 = Me.TxtGrid
  loc_11EEDF9:   Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4)
  loc_11EEE01:   var_A4.MaxLength = 3
  loc_11EEE10: Else
  loc_11EEE17:   If Not (var_A0 = CLng(1)) Then
  loc_11EEE21:     If (var_A0 = CLng(3)) Then
  loc_11EEE24:     End If
  loc_11EEE32:     Set var_88 = Me.TxtGrid
  loc_11EEE38:     Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4)
  loc_11EEE40:     var_A4.MaxLength = &H4B
  loc_11EEE4F:   Else
  loc_11EEE56:     If (var_A0 = CLng(4)) Then
  loc_11EEE67:       Set var_88 = Me.TxtGrid
  loc_11EEE6D:       Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4)
  loc_11EEE75:       var_A4.MaxLength = 3
  loc_11EEE81:     End If
  loc_11EEE81:   End If
  loc_11EEE81: End If
  loc_11EEE94: var_A8 = CLng(Me.FGrid1.Col)
  loc_11EEEA4: If Not (var_A8 = CLng(0)) Then
  loc_11EEEAE:   If (var_A8 = CLng(1)) Then
  loc_11EEEB1:   End If
  loc_11EEEEF:   Proc_6_63_110ABA4(Me, Me.FGrid1, Me.TxtGrid, 1, 0)
  loc_11EEF04: Else
  loc_11EEF0B:   If (var_A8 = CLng(3)) Then
  loc_11EEF12:     Set var_B8 = Me.FGrid1
  loc_11EEF36:     var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_11EEF3F:     var_D0 = Asc(var_9C)
  loc_11EEF63:     Set var_A4 = var_B8
  loc_11EEF75:     Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 1, 0, var_D0)
  loc_11EEF9D:     Set var_88 = Me.TxtGrid
  loc_11EEFA3:     Call 0.Method_Fgrid1_UnknownEvent_C0 (0, var_A4, var_9C, 0, var_D0)
  loc_11EEFAB:     KeyCode = var_A4.Text
  loc_11EEFC4:     If (Len(var_9C) <= 1) Then
  loc_11EEFD3:       Set var_88 = Me.TxtGrid
  loc_11EEFD9:       Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4, var_9C)
  loc_11EEFE1:       0 = var_A4.Text
  loc_11EEFF2:       Set var_AC = Me.TxtGrid
  loc_11EEFF8:       Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_B8, var_9C)
  loc_11EF000:       var_B8.Text = var_A8
  loc_11EF013:     End If
  loc_11EF01F:     Set var_88 = Me.TxtGrid
  loc_11EF025:     Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4)
  loc_11EF03F:     Set var_AC = Me.TxtGrid
  loc_11EF045:     Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_B8)
  loc_11EF04D:     var_B8.SelStart = Len(var_A4.Text)
  loc_11EF063:   Else
  loc_11EF06A:     If (var_A8 = CLng(4)) Then
  loc_11EF071:       Set var_B8 = Me.FGrid1
  loc_11EF095:       var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_11EF0C2:       Set var_A4 = var_B8
  loc_11EF0D4:       Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 1, 0)
  loc_11EF0FC:       Set var_88 = Me.TxtGrid
  loc_11EF102:       Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4, var_9C, Asc(var_9C))
  loc_11EF10A:       0 = var_A4.Text
  loc_11EF123:       If (Len(var_9C) <= 1) Then
  loc_11EF132:         Set var_88 = Me.TxtGrid
  loc_11EF138:         Call 0.Method_Fgrid1_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_11EF140:         var_D0 = var_A4.Text
  loc_11EF171:         If (Left(CVar(var_9C), 1) = "N") Then
  loc_11EF180:           Set var_88 = Me.TxtGrid
  loc_11EF186:           Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4)
  loc_11EF18E:           var_A4.Text = "No"
  loc_11EF19D:         Else
  loc_11EF1A9:           Set var_88 = Me.TxtGrid
  loc_11EF1AF:           Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4)
  loc_11EF1B7:           var_A4.Text = "Yes"
  loc_11EF1C3:         End If
  loc_11EF1C3:       End If
  loc_11EF1CF:       Set var_88 = Me.TxtGrid
  loc_11EF1D5:       Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_A4)
  loc_11EF1EF:       Set var_AC = Me.TxtGrid
  loc_11EF1F5:       Call 0.Method_Fgrid1_UnknownEvent_C0 (1, var_B8)
  loc_11EF1FD:       var_B8.SelStart = Len(var_A4.Text)
  loc_11EF210:     End If
  loc_11EF210:   End If
  loc_11EF210: End If
  loc_11EF21A: If (CLng(KeyCode) <> &HD) Then
  loc_11EF222:   global_56 = &HFF
  loc_11EF225: End If
  loc_11EF225: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_D 'FD8D60
  'Data Table: 492F0C
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_FD8B98: Set var_8C = Me.TopCtrl1
  loc_FD8B9E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_FD8BB7: If (CStr() = "Browse") Then
  loc_FD8BBA:   Exit Sub
  loc_FD8BBB: End If
  loc_FD8BD8: If (CLng(Me.FGrid1.ColSel) = CLng(0)) Then
  loc_FD8BDB:   Exit Sub
  loc_FD8BDC: End If
  loc_FD8BED: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FD8C0F:   If (CLng(Me.FGrid1.Row) >= 1) Then
  loc_FD8C49:     If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FD8C6B:       If (CLng(Me.FGrid1.Rows) > 2) Then
  loc_FD8C81:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FD8C8A:         Set var_114 = Me.FGrid1
  loc_FD8CA5:       Else
  loc_FD8CB8:         Me.FGrid1.Rows = 1
  loc_FD8CD5:         var_D0 = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_FD8CDD:         Set var_114 = Me.FGrid1
  loc_FD8D0C:         Me.FGrid1.FixedRows = 1
  loc_FD8D14:       End If
  loc_FD8D14:     End If
  loc_FD8D17:   Else
  loc_FD8D38:     MsgBox("No Entries To Delete", &H10, "Delete !", var_F0, var_110)
  loc_FD8D48:   End If
  loc_FD8D4C:   Set var_8C = Me.FGrid1
  loc_FD8D5D: End If
  loc_FD8D5D: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_14 'E1E7D0
  'Data Table: 492F0C
  loc_E1E7C7: Me.FGrid1.CellBackColor = CVar(CLng("16777215"))
  loc_E1E7CF: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E40D8C
  'Data Table: 492F0C
  Dim var_8C As TextBox
  loc_E40D60: Call Proc_318_36_EB74B4()
  loc_E40D70: Set var_88 = Me.TxtGrid
  loc_E40D76: Call 0.Method_Fgrid1_UnknownEvent_150 (1, var_8C)
  loc_E40D7E: var_8C.Visible = False
  loc_E40D8A: Exit Sub
End Sub

Private Sub cmdCancel_UnknownEvent_9 'E16BE0
  'Data Table: 492F0C
  loc_E16BD5: Me.Global.Unload Me
  loc_E16BDD: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EDC610
  'Data Table: 492F0C
  Dim Me As Recordset15
  Dim var_E8 As Variant
  Dim var_EC As String
  loc_EDC56E: On Error Goto loc_EDC5CB
  loc_EDC577: Me.MoveFirst
  loc_EDC5AB: var_E8 = "SYear='" & Year(MyValue) & "'" 
  loc_EDC5AF: var_EC = CStr(var_E8)
  loc_EDC5B9: Me.Find var_EC, 0, 1
  loc_EDC5CA: Exit Sub
  loc_EDC5CB: ' Referenced from: EDC56E
  loc_EDC5D3: Set var_100 = Err()
  loc_EDC5D9: Call 0.Method_arg_2C (var_EC)
  loc_EDC5FA: MsgBox(CVar(var_EC), &H40, "Information", var_E8, var_110)
  loc_EDC60D: Exit Sub
  loc_EDC60E: Exit Sub
End Sub

Public Sub Proc_318_28_F1ED98(arg_C) 'F1ED98
  'Data Table: 492F0C
  Dim var_8C As Recordset15
  loc_F1EC95: Set var_8C = arg_C 
  loc_F1ECBD: var_8C.Fields.Append "ModType", &HC8, &H19
  loc_F1ECE9: var_8C.Fields.Append "Mod_Type", &HC8, &H19
  loc_F1ED15: var_8C.Fields.Append "RestCode", &HC8, 6
  loc_F1ED41: var_8C.Fields.Append "Departname", &HC8, &H32
  loc_F1ED51: var_8C.CursorType = 3
  loc_F1ED5E: var_8C.LockType = 3
  loc_F1ED7D: var_8C.Open var_A0, var_B0, -1
  loc_F1ED84: Set var_8C = Nothing 
  loc_F1ED8B: Set var_88 = arg_C 
  loc_F1ED8F: Proc_318_28_F1ED98 = -1
End Sub

Public Sub Proc_318_29_F20970(arg_C) 'F20970
  'Data Table: 492F0C
  Dim var_8C As Recordset15
  loc_F2086D: Set var_8C = arg_C 
  loc_F20895: var_8C.Fields.Append "ModCode", &HC8, 5
  loc_F208C1: var_8C.Fields.Append "ModuleDescription", &HC8, &H4B
  loc_F208ED: var_8C.Fields.Append "ModType", &HC8, &H19
  loc_F20919: var_8C.Fields.Append "RestCode", &HC8, 6
  loc_F20929: var_8C.CursorType = 3
  loc_F20936: var_8C.LockType = 3
  loc_F20955: var_8C.Open var_A0, var_B0, -1
  loc_F2095C: Set var_8C = Nothing 
  loc_F20963: Set var_88 = arg_C 
  loc_F20967: Proc_318_29_F20970 = -1
End Sub

Public Sub Proc_318_30_10EC2E8
  'Data Table: 492F0C
  Dim var_94 As String
  Dim var_88 As Recordset15
  Dim var_A8 As String
  Dim var_90 As Fields15
  Dim var_B8 As Variant
  Dim var_C8 As String
  Dim unk_492F34 As Connection15
  Dim var_F0 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Field20
  Dim var_11C As Recordset15
  Dim var_EC As Variant
  Dim var_DC As Variant
  loc_10EC00A: Call Proc_318_28_F1ED98(New)
  loc_10EC015: Set global_72 = var_90
  loc_10EC040: Me.Connection15.Execute "Select Distinct ModType,PrintMast.RestCode from PrintMast where SITE_CODE='" & MemVar_1F92078 & "'", var_B8, -1
  loc_10EC04B: Set var_88 = var_90
  loc_10EC05B: ' Referenced from: 10EC2B4
  loc_10EC06A: If Not(var_88.EOF) Then
  loc_10EC08F:   var_A8 = "RestCode"
  loc_10EC0B4:   var_94 = Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_A8)), "Select Max(Name) From Depart Where Code='", var_EC, -1, var_F0, var_F4)
  loc_10EC0C6:   var_C8 = 0 & "Select Distinct ModType,PrintMast.RestCode from PrintMast where SITE_CODE='" & MemVar_1F92078 & "' And LogSite_Code='" & MemVar_1F92078
  loc_10EC0D6:   unk_492F34.Execute var_C8 & "'", var_108, var_118
  loc_10EC0E6:    = var_F4.Item(var_F0.Fields)
  loc_10EC0EE:    = var_108.Value
  loc_10EC0FB:   var_8C = Proc_6_38_E68A98(var_118)
  loc_10EC127:   If (var_8C <> vbNullString) Then
  loc_10EC130:     Set var_11C = global_72 
  loc_10EC13F:     var_11C.AddNew var_A8, var_DC
  loc_10EC18F:     var_11C.Fields.Item("ModType").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ModType"))))
  loc_10EC1EF:     var_11C.Fields.Item("Mod_Type").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ModType"))))
  loc_10EC24F:     var_11C.Fields.Item("RestCode").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RestCode"))))
  loc_10EC267:     var_DC = CVar(var_8C) 'String
  loc_10EC26E:     var_A8 = "Departname"
  loc_10EC28A:     var_11C.Fields.Item(var_A8).Value = var_DC
  loc_10EC2A1:     var_11C.Update var_A8, var_DC
  loc_10EC2A8:     Set var_11C = Nothing 
  loc_10EC2AC:   End If
  loc_10EC2AF:   var_88.MoveNext
  loc_10EC2B4:   GoTo loc_10EC05B
  loc_10EC2B7: End If
  loc_10EC2C0: CVarUnk
  loc_10EC2C5: VerifyVarObj
  loc_10EC2CB: Set var_90 = Me.DGModType
  loc_10EC2D1: LateIdStAd
  loc_10EC2E4: Set var_88 = Nothing
  loc_10EC2E7: Exit Sub
End Sub

Public Sub Proc_318_31_11108A4
  'Data Table: 492F0C
  Dim var_94 As String
  Dim var_88 As Recordset15
  Dim var_A8 As String
  Dim var_90 As Fields15
  Dim var_B8 As Variant
  Dim var_C4 As String
  Dim unk_492F34 As Connection15
  Dim var_F0 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Field20
  Dim var_11C As Recordset15
  Dim var_EC As Variant
  Dim var_DC As String
  loc_1110596: Call Proc_318_29_F20970(New)
  loc_11105A1: Set global_68 = var_90
  loc_11105CC: Me.Connection15.Execute "Select Distinct Code as ModCode,ModuleDescription,ModType,RestCode from PrintMast where SITE_CODE='" & MemVar_1F92078 & "'", var_B8, -1
  loc_11105D7: Set var_88 = var_90
  loc_11105E7: ' Referenced from: 111086E
  loc_11105F6: If Not(var_88.EOF) Then
  loc_111061B:   var_A8 = "RestCode"
  loc_1110640:   var_94 = Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_A8)), "Select Max(Name) From Depart Where Code='", var_EC, -1, var_F0, var_F4)
  loc_111064B:   var_C4 = 0 & "Select Distinct Code as ModCode,ModuleDescription,ModType,RestCode from PrintMast where SITE_CODE='" & MemVar_1F92078 & "' And LogSite_Code='"
  loc_1110662:   unk_492F34.Execute var_C4 & MemVar_1F92078 & "'", var_108, var_118
  loc_1110672:    = var_F4.Item(var_F0.Fields)
  loc_111067A:    = var_108.Value
  loc_11106B3:   If (Proc_6_38_E68A98(var_118) <> vbNullString) Then
  loc_11106BC:     Set var_11C = global_68 
  loc_11106CB:     var_11C.AddNew var_A8, var_DC
  loc_111071B:     var_11C.Fields.Item("ModCode").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("modCODE"))))
  loc_111077B:     var_11C.Fields.Item("ModuleDescription").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ModuleDescription"))))
  loc_11107DB:     var_11C.Fields.Item("ModType").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ModType"))))
  loc_11107F3:     var_A8 = "RestCode"
  loc_111081F:     var_DC = "RestCode"
  loc_111083B:     var_11C.Fields.Item(var_DC).Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_A8))))
  loc_111085B:     var_11C.Update var_A8, var_DC
  loc_1110862:     Set var_11C = Nothing 
  loc_1110866:   End If
  loc_1110869:   var_88.MoveNext
  loc_111086E:   GoTo loc_11105E7
  loc_1110871: End If
  loc_111087A: CVarUnk
  loc_111087F: VerifyVarObj
  loc_1110885: Set var_90 = Me.DgModDesc
  loc_111088B: LateIdStAd
  loc_111089E: Set var_88 = Nothing
  loc_11108A1: Exit Sub
End Sub

Public Sub Proc_318_32_12AB59C
  'Data Table: 492F0C
  Dim var_94 As String
  Dim var_98 As String
  Dim var_88 As Recordset15
  Dim var_A8 As String
  Dim var_90 As Fields15
  Dim var_B8 As Variant
  Dim var_C4 As String
  Dim unk_492F34 As Connection15
  Dim var_8C As Recordset15
  Dim var_F8 As Recordset15
  Dim var_DC As String
  Dim var_EC As Variant
  Dim var_F0 As Fields15
  Dim var_100 As Recordset15
  Dim var_104 As Recordset15
  loc_12AAFAE: Call Proc_318_28_F1ED98(New)
  loc_12AAFB9: Set global_72 = var_90
  loc_12AAFDB: var_98 = "Select Distinct Max(Code) as ModCode,RestCode from PrintMast where SITE_CODE='" & MemVar_1F92078 & "' And ModType='POS' Group By RestCode"
  loc_12AAFE4: Me.Connection15.Execute var_98, var_B8, -1
  loc_12AAFEF: Set var_88 = var_90
  loc_12AAFFF: ' Referenced from: 12AB560
  loc_12AB00E: If Not(var_88.EOF) Then
  loc_12AB030:   var_90 = var_88.Fields
  loc_12AB049:   var_94 = Proc_6_38_E68A98(CVar(var_90.Item("RestCode")), "Select Code RestCode,IsNull(Name,'') Department, IsNull(KOTYN,'') KOTYN, IsNull(Order_Booking,'') ORDYN From Depart Where Code='", var_EC, -1)
  loc_12AB054:   var_C4 = var_F0 & "Select Distinct Max(Code) as ModCode,RestCode from PrintMast where SITE_CODE='" & MemVar_1F92078 & "' And LogSite_Code='"
  loc_12AB06B:   unk_492F34.Execute var_C4 & MemVar_1F92078 & "'", var_90, var_90
  loc_12AB076:   Set var_8C = var_F0
  loc_12AB0A8:   If (var_8C.RecordCount > 0) Then
  loc_12AB0E4:     If (Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Department"))) <> vbNullString) Then
  loc_12AB0EA:       var_A8 = "KotYN"
  loc_12AB120:       If (Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_A8))) = "Y") Then
  loc_12AB129:         Set var_F8 = global_72 
  loc_12AB138:         var_F8.AddNew var_A8, var_DC
  loc_12AB162:         var_F8.Fields.Item("ModType").Value = "KOT"
  loc_12AB193:         var_F8.Fields.Item("Mod_Type").Value = "KOT"
  loc_12AB1EA:         var_F8.Fields.Item("RestCode").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RestCode"))))
  loc_12AB202:         var_A8 = "Department"
  loc_12AB22E:         var_DC = "Departname"
  loc_12AB24A:         var_F8.Fields.Item(var_DC).Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_A8))))
  loc_12AB26A:         var_F8.Update var_A8, var_DC
  loc_12AB271:         Set var_F8 = Nothing 
  loc_12AB278:       Else
  loc_12AB27B:         var_A8 = "ORDYN"
  loc_12AB2B1:         If (Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_A8))) = "Y") Then
  loc_12AB2BA:           Set var_100 = global_72 
  loc_12AB2C9:           var_100.AddNew var_A8, var_DC
  loc_12AB2F3:           var_100.Fields.Item("ModType").Value = "ORD"
  loc_12AB324:           var_100.Fields.Item("Mod_Type").Value = "ORD"
  loc_12AB37B:           var_100.Fields.Item("RestCode").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RestCode"))))
  loc_12AB393:           var_A8 = "Department"
  loc_12AB3BF:           var_DC = "Departname"
  loc_12AB3DB:           var_100.Fields.Item(var_DC).Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_A8))))
  loc_12AB3FB:           var_100.Update var_A8, var_DC
  loc_12AB402:           Set var_100 = Nothing 
  loc_12AB406:         End If
  loc_12AB40C:         Set var_104 = global_72 
  loc_12AB41B:         var_104.AddNew var_A8, var_DC
  loc_12AB445:         var_104.Fields.Item("ModType").Value = "TKN"
  loc_12AB476:         var_104.Fields.Item("Mod_Type").Value = "TKN"
  loc_12AB4CD:         var_104.Fields.Item("RestCode").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RestCode"))))
  loc_12AB4E5:         var_A8 = "Department"
  loc_12AB511:         var_DC = "Departname"
  loc_12AB52D:         var_104.Fields.Item(var_DC).Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_A8))))
  loc_12AB54D:         var_104.Update var_A8, var_DC
  loc_12AB554:         Set var_104 = Nothing 
  loc_12AB558:       End If
  loc_12AB558:     End If
  loc_12AB558:   End If
  loc_12AB55B:   var_88.MoveNext
  loc_12AB560:   GoTo loc_12AAFFF
  loc_12AB563: End If
  loc_12AB56C: CVarUnk
  loc_12AB571: VerifyVarObj
  loc_12AB577: Set var_90 = Me.DGModType
  loc_12AB57D: LateIdStAd
  loc_12AB590: Set var_88 = Nothing
  loc_12AB598: Set var_8C = Nothing
  loc_12AB59B: Exit Sub
End Sub

Public Sub Proc_318_33_1424D20
  'Data Table: 492F0C
  Dim var_94 As String
  Dim var_98 As String
  Dim var_88 As Recordset15
  Dim var_A8 As String
  Dim var_90 As Fields15
  Dim var_B8 As Variant
  Dim var_C4 As String
  Dim unk_492F34 As Connection15
  Dim var_F0 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Field20
  Dim var_11C As Recordset15
  Dim var_EC As Variant
  Dim var_DC As String
  Dim var_120 As Recordset15
  Dim var_124 As Recordset15
  Dim var_128 As Recordset15
  Dim var_12C As Recordset15
  Dim var_130 As Recordset15
  loc_14242BE: Call Proc_318_29_F20970(New)
  loc_14242C9: Set global_68 = var_90
  loc_14242EB: var_98 = "Select Distinct Max(Code) as ModCode,'KOT' As ModType,RestCode from PrintMast where SITE_CODE='" & MemVar_1F92078 & "' And ModType='POS' Group By RestCode"
  loc_14242F4: Me.Connection15.Execute var_98, var_B8, -1
  loc_14242FF: Set var_88 = var_90
  loc_142430F: ' Referenced from: 1424CEC
  loc_142431E: If Not(var_88.EOF) Then
  loc_1424343:   var_A8 = "RestCode"
  loc_1424368:   var_94 = Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_A8)), "Select Max(Name) From Depart Where Code='", var_EC, -1, var_F0, var_F4)
  loc_1424373:   var_C4 = 0 & "Select Distinct Max(Code) as ModCode,'KOT' As ModType,RestCode from PrintMast where SITE_CODE='" & MemVar_1F92078 & "' And LogSite_Code='"
  loc_142438A:   unk_492F34.Execute var_C4 & MemVar_1F92078 & "'", var_108, var_118
  loc_142439A:    = var_F4.Item(var_F0.Fields)
  loc_14243A2:    = var_108.Value
  loc_14243DB:   If (Proc_6_38_E68A98(var_118) <> vbNullString) Then
  loc_14243E4:     Set var_11C = global_68 
  loc_14243F3:     var_11C.AddNew var_A8, var_DC
  loc_1424443:     var_11C.Fields.Item("ModCode").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("modCODE"))))
  loc_142447D:     var_11C.Fields.Item("ModuleDescription").Value = "3 INCH RUNNING PAPER (NORMAL PRINTER)"
  loc_14244D4:     var_11C.Fields.Item("ModType").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ModType"))))
  loc_14244EC:     var_A8 = "RestCode"
  loc_1424518:     var_DC = "RestCode"
  loc_1424534:     var_11C.Fields.Item(var_DC).Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_A8))))
  loc_1424554:     var_11C.Update var_A8, var_DC
  loc_142455B:     Set var_11C = Nothing 
  loc_1424565:     Set var_120 = global_68 
  loc_1424574:     var_120.AddNew var_A8, var_DC
  loc_14245C4:     var_120.Fields.Item("ModCode").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("modCODE"))))
  loc_14245FE:     var_120.Fields.Item("ModuleDescription").Value = "3 INCH RUNNING PAPER (THERMAL PRINTER)"
  loc_1424655:     var_120.Fields.Item("ModType").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ModType"))))
  loc_142466D:     var_A8 = "RestCode"
  loc_1424699:     var_DC = "RestCode"
  loc_14246B5:     var_120.Fields.Item(var_DC).Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_A8))))
  loc_14246D5:     var_120.Update var_A8, var_DC
  loc_14246DC:     Set var_120 = Nothing 
  loc_14246E6:     Set var_124 = global_68 
  loc_14246F5:     var_124.AddNew var_A8, var_DC
  loc_1424745:     var_124.Fields.Item("ModCode").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("modCODE"))))
  loc_142477F:     var_124.Fields.Item("ModuleDescription").Value = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)"
  loc_14247D6:     var_124.Fields.Item("ModType").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ModType"))))
  loc_14247EE:     var_A8 = "RestCode"
  loc_142481A:     var_DC = "RestCode"
  loc_1424836:     var_124.Fields.Item(var_DC).Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_A8))))
  loc_1424856:     var_124.Update var_A8, var_DC
  loc_142485D:     Set var_124 = Nothing 
  loc_1424867:     Set var_128 = global_68 
  loc_1424876:     var_128.AddNew var_A8, var_DC
  loc_14248C6:     var_128.Fields.Item("ModCode").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("modCODE"))))
  loc_1424900:     var_128.Fields.Item("ModuleDescription").Value = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)"
  loc_1424957:     var_128.Fields.Item("ModType").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ModType"))))
  loc_142496F:     var_A8 = "RestCode"
  loc_142499B:     var_DC = "RestCode"
  loc_14249B7:     var_128.Fields.Item(var_DC).Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_A8))))
  loc_14249D7:     var_128.Update var_A8, var_DC
  loc_14249DE:     Set var_128 = Nothing 
  loc_14249E8:     Set var_12C = global_68 
  loc_14249F7:     var_12C.AddNew var_A8, var_DC
  loc_1424A47:     var_12C.Fields.Item("ModCode").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("modCODE"))))
  loc_1424A81:     var_12C.Fields.Item("ModuleDescription").Value = "3 INCH RUNNING PAPER WINPRINT"
  loc_1424AD8:     var_12C.Fields.Item("ModType").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ModType"))))
  loc_1424AF0:     var_A8 = "RestCode"
  loc_1424B1C:     var_DC = "RestCode"
  loc_1424B38:     var_12C.Fields.Item(var_DC).Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_A8))))
  loc_1424B58:     var_12C.Update var_A8, var_DC
  loc_1424B5F:     Set var_12C = Nothing 
  loc_1424B69:     Set var_130 = global_68 
  loc_1424B78:     var_130.AddNew var_A8, var_DC
  loc_1424BC8:     var_130.Fields.Item("ModCode").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("modCODE"))))
  loc_1424C02:     var_130.Fields.Item("ModuleDescription").Value = "ADJUSTABLE WINDOWS KOT PRINT"
  loc_1424C59:     var_130.Fields.Item("ModType").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ModType"))))
  loc_1424C71:     var_A8 = "RestCode"
  loc_1424C9D:     var_DC = "RestCode"
  loc_1424CB9:     var_130.Fields.Item(var_DC).Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_A8))))
  loc_1424CD9:     var_130.Update var_A8, var_DC
  loc_1424CE0:     Set var_130 = Nothing 
  loc_1424CE4:   End If
  loc_1424CE7:   var_88.MoveNext
  loc_1424CEC:   GoTo loc_142430F
  loc_1424CEF: End If
  loc_1424CF8: CVarUnk
  loc_1424CFD: VerifyVarObj
  loc_1424D03: Set var_90 = Me.DgModDesc
  loc_1424D09: LateIdStAd
  loc_1424D1C: Set var_88 = Nothing
  loc_1424D1F: Exit Sub
End Sub

Public Sub Proc_318_34_123E05C
  'Data Table: 492F0C
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_DC As String
  loc_123DB10: Set var_8C = Me.FGrid
  loc_123DB13: var_9C = 0
  loc_123DB1C: var_BC = &H1F4
  loc_123DB28: LateIdCallSt
  loc_123DB30: var_9C = 0
  loc_123DB3C: var_BC = CVar(CLng(0)) 'Long
  loc_123DB41: var_DC = "Module"
  loc_123DB4A: LateIdCallSt
  loc_123DB55: var_9C = CVar(CLng(0)) 'Long
  loc_123DB5A: var_BC = &H2EE
  loc_123DB66: LateIdCallSt
  loc_123DB71: var_9C = CVar(CLng(0)) 'Long
  loc_123DB7C: var_BC = CVar(CInt(1)) 'Integer
  loc_123DB83: LateIdCallSt
  loc_123DB8B: var_9C = 0
  loc_123DB97: var_BC = CVar(CLng(1)) 'Long
  loc_123DB9C: var_DC = "Description"
  loc_123DBA5: LateIdCallSt
  loc_123DBB0: var_9C = CVar(CLng(1)) 'Long
  loc_123DBB5: var_BC = &H13EC
  loc_123DBC1: LateIdCallSt
  loc_123DBCC: var_9C = CVar(CLng(1)) 'Long
  loc_123DBD7: var_BC = CVar(CInt(1)) 'Integer
  loc_123DBDE: LateIdCallSt
  loc_123DBE6: var_9C = 0
  loc_123DBF2: var_BC = CVar(CLng(2)) 'Long
  loc_123DBF7: var_DC = "ModuleCode"
  loc_123DC00: LateIdCallSt
  loc_123DC0B: var_9C = CVar(CLng(2)) 'Long
  loc_123DC10: var_BC = 0
  loc_123DC1C: LateIdCallSt
  loc_123DC27: var_9C = CVar(CLng(2)) 'Long
  loc_123DC32: var_BC = CVar(CInt(1)) 'Integer
  loc_123DC39: LateIdCallSt
  loc_123DC41: var_9C = 0
  loc_123DC4D: var_BC = CVar(CLng(3)) 'Long
  loc_123DC52: var_DC = "Printer Path"
  loc_123DC5B: LateIdCallSt
  loc_123DC66: var_9C = CVar(CLng(3)) 'Long
  loc_123DC6B: var_BC = &HFA0
  loc_123DC77: LateIdCallSt
  loc_123DC82: var_9C = CVar(CLng(3)) 'Long
  loc_123DC8D: var_BC = CVar(CInt(1)) 'Integer
  loc_123DC94: LateIdCallSt
  loc_123DC9C: var_9C = 0
  loc_123DCA8: var_BC = CVar(CLng(4)) 'Long
  loc_123DCAD: var_DC = "Auto Print Y/N"
  loc_123DCB6: LateIdCallSt
  loc_123DCC1: var_9C = CVar(CLng(4)) 'Long
  loc_123DCC6: var_BC = &H352
  loc_123DCD2: LateIdCallSt
  loc_123DCDD: var_9C = CVar(CLng(4)) 'Long
  loc_123DCE8: var_BC = CVar(CInt(1)) 'Integer
  loc_123DCEF: LateIdCallSt
  loc_123DCF7: var_9C = 0
  loc_123DD03: var_BC = CVar(CLng(5)) 'Long
  loc_123DD08: var_DC = "Printer Port"
  loc_123DD11: LateIdCallSt
  loc_123DD1C: var_9C = CVar(CLng(5)) 'Long
  loc_123DD21: var_BC = 0
  loc_123DD2D: LateIdCallSt
  loc_123DD38: var_9C = CVar(CLng(5)) 'Long
  loc_123DD43: var_BC = CVar(CInt(1)) 'Integer
  loc_123DD4A: LateIdCallSt
  loc_123DD52: var_9C = 0
  loc_123DD5E: var_BC = CVar(CLng(6)) 'Long
  loc_123DD63: var_DC = "Restaurant Name"
  loc_123DD6C: LateIdCallSt
  loc_123DD77: var_9C = CVar(CLng(6)) 'Long
  loc_123DD7C: var_BC = &HBB8
  loc_123DD88: LateIdCallSt
  loc_123DD93: var_9C = CVar(CLng(6)) 'Long
  loc_123DD9E: var_BC = CVar(CInt(1)) 'Integer
  loc_123DDA5: LateIdCallSt
  loc_123DDAF: Set var_8C = Nothing 
  loc_123DDB7: Set var_F0 = Me.FGrid1
  loc_123DDBA: var_9C = 0
  loc_123DDC3: var_BC = &H1F4
  loc_123DDCF: LateIdCallSt
  loc_123DDD7: var_9C = 0
  loc_123DDE3: var_BC = CVar(CLng(0)) 'Long
  loc_123DDE8: var_DC = "Module"
  loc_123DDF1: LateIdCallSt
  loc_123DDFC: var_9C = CVar(CLng(0)) 'Long
  loc_123DE01: var_BC = &H2EE
  loc_123DE0D: LateIdCallSt
  loc_123DE18: var_9C = CVar(CLng(0)) 'Long
  loc_123DE23: var_BC = CVar(CInt(1)) 'Integer
  loc_123DE2A: LateIdCallSt
  loc_123DE32: var_9C = 0
  loc_123DE3E: var_BC = CVar(CLng(1)) 'Long
  loc_123DE43: var_DC = "Description"
  loc_123DE4C: LateIdCallSt
  loc_123DE57: var_9C = CVar(CLng(1)) 'Long
  loc_123DE5C: var_BC = &H13EC
  loc_123DE68: LateIdCallSt
  loc_123DE73: var_9C = CVar(CLng(1)) 'Long
  loc_123DE7E: var_BC = CVar(CInt(1)) 'Integer
  loc_123DE85: LateIdCallSt
  loc_123DE8D: var_9C = 0
  loc_123DE99: var_BC = CVar(CLng(2)) 'Long
  loc_123DE9E: var_DC = "ModuleCode"
  loc_123DEA7: LateIdCallSt
  loc_123DEB2: var_9C = CVar(CLng(2)) 'Long
  loc_123DEB7: var_BC = 0
  loc_123DEC3: LateIdCallSt
  loc_123DECE: var_9C = CVar(CLng(2)) 'Long
  loc_123DED9: var_BC = CVar(CInt(1)) 'Integer
  loc_123DEE0: LateIdCallSt
  loc_123DEE8: var_9C = 0
  loc_123DEF4: var_BC = CVar(CLng(3)) 'Long
  loc_123DEF9: var_DC = "Printer Path"
  loc_123DF02: LateIdCallSt
  loc_123DF0D: var_9C = CVar(CLng(3)) 'Long
  loc_123DF12: var_BC = &HFA0
  loc_123DF1E: LateIdCallSt
  loc_123DF29: var_9C = CVar(CLng(3)) 'Long
  loc_123DF34: var_BC = CVar(CInt(1)) 'Integer
  loc_123DF3B: LateIdCallSt
  loc_123DF43: var_9C = 0
  loc_123DF4F: var_BC = CVar(CLng(4)) 'Long
  loc_123DF54: var_DC = "Auto Split Y/N"
  loc_123DF5D: LateIdCallSt
  loc_123DF68: var_9C = CVar(CLng(4)) 'Long
  loc_123DF6D: var_BC = &H352
  loc_123DF79: LateIdCallSt
  loc_123DF84: var_9C = CVar(CLng(4)) 'Long
  loc_123DF8F: var_BC = CVar(CInt(1)) 'Integer
  loc_123DF96: LateIdCallSt
  loc_123DF9E: var_9C = 0
  loc_123DFAA: var_BC = CVar(CLng(5)) 'Long
  loc_123DFAF: var_DC = "Printer Port"
  loc_123DFB8: LateIdCallSt
  loc_123DFC3: var_9C = CVar(CLng(5)) 'Long
  loc_123DFC8: var_BC = 0
  loc_123DFD4: LateIdCallSt
  loc_123DFDF: var_9C = CVar(CLng(5)) 'Long
  loc_123DFEA: var_BC = CVar(CInt(1)) 'Integer
  loc_123DFF1: LateIdCallSt
  loc_123DFF9: var_9C = 0
  loc_123E005: var_BC = CVar(CLng(6)) 'Long
  loc_123E00A: var_DC = "Restaurant Name"
  loc_123E013: LateIdCallSt
  loc_123E01E: var_9C = CVar(CLng(6)) 'Long
  loc_123E023: var_BC = &HBB8
  loc_123E02F: LateIdCallSt
  loc_123E03A: var_9C = CVar(CLng(6)) 'Long
  loc_123E045: var_BC = CVar(CInt(1)) 'Integer
  loc_123E04C: LateIdCallSt
  loc_123E056: Set var_F0 = Nothing 
  loc_123E05A: Exit Sub
End Sub

Public Sub Proc_318_35_F09A54
  'Data Table: 492F0C
  Dim var_98 As Long
  Dim var_AC As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_F0996F: Me.FGrid.FixedRows = 1
  loc_F0998A: Me.FGrid.Rows = 2
  loc_F09999: For var_B0 = 0 To 4: var_86 = var_B0 'Byte
  loc_F0999F:   var_98 = 1
  loc_F099AD:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_F099B2:   var_E0 = vbNullString
  loc_F099BC:   Set var_AC = Me.FGrid
  loc_F099C2:   LateIdCallSt
  loc_F099D0: Next var_B0 'Byte
  loc_F099E9: Me.FGrid1.FixedRows = 1
  loc_F09A04: Me.FGrid1.Rows = 2
  loc_F09A13: For var_F4 = 0 To 4: var_86 = var_F4 'Byte
  loc_F09A19:   var_98 = 1
  loc_F09A27:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_F09A2C:   var_E0 = vbNullString
  loc_F09A36:   Set var_AC = Me.FGrid1
  loc_F09A3C:   LateIdCallSt
  loc_F09A4A: Next var_F4 'Byte
  loc_F09A50: Exit Sub
End Sub

Public Sub Proc_318_36_EB74B4
  'Data Table: 492F0C
  loc_EB7430: If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_EB7442:   Me.DGModType.Visible = False
  loc_EB744A: End If
  loc_EB7466: If (CBool(Me.DgModDesc.Visible) = &HFF) Then
  loc_EB7478:   Me.DgModDesc.Visible = False
  loc_EB7480: End If
  loc_EB749B: If (Me.FrmList.Visible = &HFF) Then
  loc_EB74AA:   Me.FrmList.Visible = False
  loc_EB74B2: End If
  loc_EB74B2: Exit Sub
End Sub

Public Sub Proc_318_37_E40DEC
  'Data Table: 492F0C
  loc_E40DC8: Set var_88 = Me.TopCtrl1
  loc_E40DCE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E40DE7: If (CStr() = "Browse") Then
  loc_E40DEA:   Exit Sub
  loc_E40DEB: End If
  loc_E40DEB: Exit Sub
End Sub

Public Sub Proc_318_38_E40F18
  'Data Table: 492F0C
  loc_E40EF4: Set var_88 = Me.TopCtrl1
  loc_E40EFA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E40F13: If (CStr() = "Browse") Then
  loc_E40F16:   Exit Sub
  loc_E40F17: End If
  loc_E40F17: Exit Sub
End Sub

Public Sub Proc_318_39_1472364(arg_C) '1472364
  'Data Table: 492F0C
  Dim var_8E As Integer
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_128 As Variant
  Dim var_13C As Variant
  Dim var_B4 As String
  Dim var_140 As Long
  loc_147174F: var_8E = arg_C
  loc_1471758: If (var_8E = 0) Then
  loc_147176E:   var_A8 = CLng(Me.FGrid.Col)
  loc_147177E:   If (var_A8 = CLng(1)) Then
  loc_14717A5:     Set var_94 = Me.TxtGrid
  loc_14717AB:     Call 0.Method_Proc_318_39_14723640 (arg_C, var_B0, var_B4)
  loc_14717B3:     (Me.RecordCount = 0) = var_B0.Text
  loc_14717CB:     If (var_A8 Or (var_B4 = vbNullString)) Then
  loc_14717E1:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14717E9:       var_E4 = CVar(CLng(1)) 'Long
  loc_14717EE:       var_104 = vbNullString
  loc_14717F8:       Set var_B0 = Me.FGrid
  loc_14717FE:       LateIdCallSt
  loc_1471823:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_147182B:       var_E4 = CVar(CLng(2)) 'Long
  loc_1471830:       var_104 = vbNullString
  loc_147183A:       Set var_B0 = Me.FGrid
  loc_1471840:       LateIdCallSt
  loc_1471855:     Else
  loc_1471882:       Set var_94 = Me.TxtGrid
  loc_1471888:       Call 0.Method_Proc_318_39_14723640 (arg_C, var_B0, var_B4, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_B0, var_104)
  loc_1471890:       var_E4 = var_B0.Text
  loc_1471898:       var_128 = CVar(var_B4) 'String
  loc_14718A6:       LateIdCallSt
  loc_14718CA:       var_128 = Me.FGrid.Row
  loc_14718E3:       var_C4 = "modCODE"
  loc_14718FA:       var_B0 = Me.Fields.Item(var_C4)
  loc_147190B:       var_13C = CVar(Proc_6_38_E68A98(CVar(var_B0), CVar(CLng(2)), CVar(CLng(var_128)), Me.FGrid, var_128, var_C4)) 'String
  loc_1471913:       Set var_12C = Me.FGrid
  loc_1471919:       LateIdCallSt
  loc_1471933:     End If
  loc_1471936:   Else
  loc_147193D:     If (var_A8 = CLng(0)) Then
  loc_1471964:       Set var_94 = Me.TxtGrid
  loc_147196A:       Call 0.Method_Proc_318_39_14723640 (arg_C, var_B0, var_B4, (Me.RecordCount = 0), var_12C, var_13C)
  loc_1471972:       var_B0 = var_B0.Text
  loc_147198A:       If (var_104 Or (var_B4 = vbNullString)) Then
  loc_14719A0:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14719A8:         var_E4 = CVar(CLng(0)) 'Long
  loc_14719AD:         var_104 = vbNullString
  loc_14719B7:         Set var_B0 = Me.FGrid
  loc_14719BD:         LateIdCallSt
  loc_14719E2:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14719EA:         var_E4 = CVar(CLng(6)) 'Long
  loc_14719EF:         var_104 = vbNullString
  loc_14719F9:         Set var_B0 = Me.FGrid
  loc_14719FF:         LateIdCallSt
  loc_1471A24:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1471A2C:         var_E4 = CVar(CLng(5)) 'Long
  loc_1471A31:         var_104 = vbNullString
  loc_1471A3B:         Set var_B0 = Me.FGrid
  loc_1471A41:         LateIdCallSt
  loc_1471A56:       Else
  loc_1471A83:         Set var_94 = Me.TxtGrid
  loc_1471A89:         Call 0.Method_Proc_318_39_14723640 (arg_C, var_B0, var_B4, CVar(CLng(0)), CVar(CLng(Me.FGrid.Row)), var_B0, var_104)
  loc_1471A91:         var_E4 = var_B0.Text
  loc_1471A99:         var_128 = CVar(var_B4) 'String
  loc_1471AA7:         LateIdCallSt
  loc_1471ACB:         var_128 = Me.FGrid.Row
  loc_1471AE4:         var_C4 = "DEPARTNAME"
  loc_1471B0C:         var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_C4)), CVar(CLng(6)), CVar(CLng(var_128)), Me.FGrid, var_128, var_C4)) 'String
  loc_1471B1A:         LateIdCallSt
  loc_1471B6E:         var_B0 = Me.Fields.Item("RestCode")
  loc_1471B7F:         var_13C = CVar(Proc_6_38_E68A98(CVar(var_B0), CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_1471B87:         Set var_12C = Me.FGrid
  loc_1471B8D:         LateIdCallSt
  loc_1471BA7:       End If
  loc_1471BAA:     Else
  loc_1471BB1:       If (var_A8 = CLng(3)) Then
  loc_1471BE1:         Set var_94 = Me.TxtGrid
  loc_1471BE7:         Call 0.Method_Proc_318_39_14723640 (arg_C, var_B0, var_B4, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_12C)
  loc_1471BEF:         var_13C = var_B0.Text
  loc_1471BF7:         var_128 = CVar(var_B4) 'String
  loc_1471BFF:         Set var_12C = Me.FGrid
  loc_1471C05:         LateIdCallSt
  loc_1471C22:       Else
  loc_1471C29:         If (var_A8 = CLng(4)) Then
  loc_1471C59:           Set var_94 = Me.TxtGrid
  loc_1471C5F:           Call 0.Method_Proc_318_39_14723640 (arg_C, var_B0, var_B4, CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), var_12C)
  loc_1471C67:           var_128 = var_B0.Text
  loc_1471C6F:           var_128 = CVar(var_B4) 'String
  loc_1471C77:           Set var_12C = Me.FGrid
  loc_1471C7D:           LateIdCallSt
  loc_1471CB0:           var_C4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1471CB5:           var_E4 = 1
  loc_1471CD3:           var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_1471CEC:           If (var_B4 <> vbNullString) Then
  loc_1471D04:             var_128 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1471D0C:             Set var_B0 = Me.FGrid
  loc_1471D28:           End If
  loc_1471D28:         End If
  loc_1471D28:       End If
  loc_1471D28:     End If
  loc_1471D28:   End If
  loc_1471D3B:   Set var_94 = Me.TxtGrid
  loc_1471D41:   Call 0.Method_Proc_318_39_14723640 (0, var_B0, 0, &HFF, FGrid.DispID_10000, var_128, var_E4)
  loc_1471D49:   var_B0.MaxLength = CVar(CLng(Me.FGrid.Row))
  loc_1471D58: Else
  loc_1471D5E:   If (var_8E = 1) Then
  loc_1471D74:     var_140 = CLng(Me.FGrid1.Col)
  loc_1471D84:     If (var_140 = CLng(1)) Then
  loc_1471DAB:       Set var_94 = Me.TxtGrid
  loc_1471DB1:       Call 0.Method_Proc_318_39_14723640 (arg_C, var_B0, var_B4, (Me.RecordCount = 0), var_140, var_12C)
  loc_1471DB9:       var_128 = var_B0.Text
  loc_1471DD1:       If (var_B0 Or (var_B4 = vbNullString)) Then
  loc_1471DE7:         var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1471DEF:         var_E4 = CVar(CLng(1)) 'Long
  loc_1471DF4:         var_104 = vbNullString
  loc_1471DFE:         Set var_B0 = Me.FGrid1
  loc_1471E04:         LateIdCallSt
  loc_1471E29:         var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1471E31:         var_E4 = CVar(CLng(2)) 'Long
  loc_1471E36:         var_104 = vbNullString
  loc_1471E40:         Set var_B0 = Me.FGrid1
  loc_1471E46:         LateIdCallSt
  loc_1471E5B:       Else
  loc_1471E88:         Set var_94 = Me.TxtGrid
  loc_1471E8E:         Call 0.Method_Proc_318_39_14723640 (arg_C, var_B0, var_B4, CVar(CLng(1)), CVar(CLng(Me.FGrid1.Row)), var_B0, var_104)
  loc_1471E96:         var_E4 = var_B0.Text
  loc_1471E9E:         var_128 = CVar(var_B4) 'String
  loc_1471EAC:         LateIdCallSt
  loc_1471ED0:         var_128 = Me.FGrid1.Row
  loc_1471EE9:         var_C4 = "modCODE"
  loc_1471F00:         var_B0 = Me.Fields.Item(var_C4)
  loc_1471F11:         var_13C = CVar(Proc_6_38_E68A98(CVar(var_B0), CVar(CLng(2)), CVar(CLng(var_128)), Me.FGrid1, var_128, var_C4)) 'String
  loc_1471F19:         Set var_12C = Me.FGrid1
  loc_1471F1F:         LateIdCallSt
  loc_1471F39:       End If
  loc_1471F3C:     Else
  loc_1471F43:       If (var_140 = CLng(0)) Then
  loc_1471F6A:         Set var_94 = Me.TxtGrid
  loc_1471F70:         Call 0.Method_Proc_318_39_14723640 (arg_C, var_B0, var_B4, (Me.RecordCount = 0), var_12C, var_13C)
  loc_1471F78:         var_B0 = var_B0.Text
  loc_1471F90:         If (var_104 Or (var_B4 = vbNullString)) Then
  loc_1471FA6:           var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1471FAE:           var_E4 = CVar(CLng(0)) 'Long
  loc_1471FB3:           var_104 = vbNullString
  loc_1471FBD:           Set var_B0 = Me.FGrid1
  loc_1471FC3:           LateIdCallSt
  loc_1471FE8:           var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1471FF0:           var_E4 = CVar(CLng(6)) 'Long
  loc_1471FF5:           var_104 = vbNullString
  loc_1471FFF:           Set var_B0 = Me.FGrid1
  loc_1472005:           LateIdCallSt
  loc_147202A:           var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1472032:           var_E4 = CVar(CLng(5)) 'Long
  loc_1472037:           var_104 = vbNullString
  loc_1472041:           Set var_B0 = Me.FGrid1
  loc_1472047:           LateIdCallSt
  loc_147205C:         Else
  loc_1472089:           Set var_94 = Me.TxtGrid
  loc_147208F:           Call 0.Method_Proc_318_39_14723640 (arg_C, var_B0, var_B4, CVar(CLng(0)), CVar(CLng(Me.FGrid1.Row)), var_B0, var_104)
  loc_1472097:           var_E4 = var_B0.Text
  loc_147209F:           var_128 = CVar(var_B4) 'String
  loc_14720AD:           LateIdCallSt
  loc_14720D1:           var_128 = Me.FGrid1.Row
  loc_14720EA:           var_C4 = "DEPARTNAME"
  loc_1472112:           var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_C4)), CVar(CLng(6)), CVar(CLng(var_128)), Me.FGrid1, var_128, var_C4)) 'String
  loc_1472120:           LateIdCallSt
  loc_1472174:           var_B0 = Me.Fields.Item("RestCode")
  loc_1472185:           var_13C = CVar(Proc_6_38_E68A98(CVar(var_B0), CVar(CLng(5)), CVar(CLng(Me.FGrid1.Row)), Me.FGrid1, var_13C)) 'String
  loc_147218D:           Set var_12C = Me.FGrid1
  loc_1472193:           LateIdCallSt
  loc_14721AD:         End If
  loc_14721B0:       Else
  loc_14721B7:         If (var_140 = CLng(3)) Then
  loc_14721E7:           Set var_94 = Me.TxtGrid
  loc_14721ED:           Call 0.Method_Proc_318_39_14723640 (arg_C, var_B0, var_B4, CVar(CLng(3)), CVar(CLng(Me.FGrid1.Row)), var_12C)
  loc_14721F5:           var_13C = var_B0.Text
  loc_14721FD:           var_128 = CVar(var_B4) 'String
  loc_1472205:           Set var_12C = Me.FGrid1
  loc_147220B:           LateIdCallSt
  loc_1472228:         Else
  loc_147222F:           If (var_140 = CLng(4)) Then
  loc_147225F:             Set var_94 = Me.TxtGrid
  loc_1472265:             Call 0.Method_Proc_318_39_14723640 (arg_C, var_B0, var_B4, CVar(CLng(4)), CVar(CLng(Me.FGrid1.Row)), var_12C)
  loc_147226D:             var_128 = var_B0.Text
  loc_1472275:             var_128 = CVar(var_B4) 'String
  loc_147227D:             Set var_12C = Me.FGrid1
  loc_1472283:             LateIdCallSt
  loc_14722B6:             var_C4 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_14722BB:             var_E4 = 1
  loc_14722F2:             If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_147230A:               var_128 = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_1472312:               Set var_B0 = Me.FGrid1
  loc_147232E:             End If
  loc_147232E:           End If
  loc_147232E:         End If
  loc_147232E:       End If
  loc_147232E:     End If
  loc_1472341:     Set var_94 = Me.TxtGrid
  loc_1472347:     Call 0.Method_Proc_318_39_14723640 (1, var_B0, 0, &HFF, FGrid1.DispID_10000, var_128, var_E4)
  loc_147234F:     var_B0.MaxLength = CVar(CLng(Me.FGrid1.Row))
  loc_147235B:   End If
  loc_147235B: End If
  loc_147235B: Proc_318_39_1472364 = var_12C
End Sub
