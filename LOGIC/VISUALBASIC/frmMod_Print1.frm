VERSION 5.00
Begin VB.Form frmMod_Print1
  Caption = "Printing Setup"
  BackColor = &HFF8080&
  ForeColor = &HC00000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HC00000&
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11325
  ClientHeight = 6870
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 6420
    Width = 11325
    Height = 450
    Visible = 0   'False
    TabIndex = 10
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 1725
    Top = 2130
    Width = 915
    Height = 225
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 25
    Appearance = 0 'Flat
  End
  Begin DataGrid DgModDesc
    Left = 885
    Top = 6480
    Width = 6960
    Height = 2355
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin DataGrid DGModType
    Left = 870
    Top = 5745
    Width = 5835
    Height = 2355
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin Frame FrmList
    Left = 8295
    Top = 6795
    Width = 3060
    Height = 1725
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 60
      Width = 2970
      Height = 1815
      TabStop = 0   'False
      TabIndex = 1
    End
  End
  Begin MSFlexGrid FGrid
    Left = 1710
    Top = 1875
    Width = 13215
    Height = 3300
    TabIndex = 4
  End
  Begin MSFlexGrid FGPoint
    Left = 12105
    Top = 6780
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 6
  End
  Begin BtnEnh CmdCancel
    Left = 6960
    Top = 5295
    Width = 1455
    Height = 1110
    TabIndex = 8
  End
  Begin BtnEnh CmdSave
    Left = 5100
    Top = 5325
    Width = 1485
    Height = 1095
    TabIndex = 9
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -30
    Width = 180
    Height = 540
    TabIndex = 7
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
End

Attribute VB_Name = "frmMod_Print1"

Private global_64 As Integer
Private global_56 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) '1244F28
  'Data Table: 45FAB0
  Dim var_88 As MSFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_108 As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_1244A07: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1244A10: Set var_9C = Me.FGrid
  loc_1244A46: Set var_104 = Me.TxtGrid
  loc_1244A4C: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_1244A54: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_1244A81: Set var_88 = Me.TxtGrid
  loc_1244A87: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_1244A8F: var_9C.MaxLength = 0
  loc_1244AA7: If (Index = 0) Then
  loc_1244ABD:   var_114 = CLng(Me.FGrid.Col)
  loc_1244ACD:   If (var_114 = CLng(0)) Then
  loc_1244AE7:     If (Me.RecordCount > 0) Then
  loc_1244B0D:       Proc_6_137_1193554(Me.DGModType, global_72, Index, Me.FGPoint)
  loc_1244B1B:     End If
  loc_1244B24:     var_118 = Me.RecordCount
  loc_1244B3B:     var_11A = Me.EOF
  loc_1244B4F:     var_11C = Me.BOF
  loc_1244B6F:     var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1244BAB:     If (CVar(CLng(0)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_1244BAE:       Exit Sub
  loc_1244BAF:     End If
  loc_1244BC2:     var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1244BCA:     var_DC = CVar(CLng(0)) 'Long
  loc_1244BFD:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1244C06:       Me.MoveFirst
  loc_1244C1E:       var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1244C26:       var_DC = CVar(CLng(0)) 'Long
  loc_1244C6A:       Me.Find "Modtype='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_1244C9A:       If (Me.EOF = &HFF) Then
  loc_1244CA3:         Me.MoveFirst
  loc_1244CA8:       End If
  loc_1244CA8:     End If
  loc_1244CAB:   Else
  loc_1244CB2:     If (var_114 = CLng(1)) Then
  loc_1244CC4:       Me.Filter = 0
  loc_1244CF6:       var_AC = Me.FGrid.TextMatrix)
  loc_1244D16:       Me.Filter = CVar(CVar(CLng(5)) & CStr(var_AC) & "'")
  loc_1244D49:       If (Me.RecordCount > 0) Then
  loc_1244D6F:         Proc_6_137_1193554(Me.DgModDesc, global_68, Index, Me.FGPoint, CVar(CLng(Me.FGrid.Row)), "RestCode='", var_134, var_AC)
  loc_1244D7D:       End If
  loc_1244D86:       var_118 = Me.RecordCount
  loc_1244D9D:       var_11A = Me.EOF
  loc_1244DB1:       var_11C = Me.BOF
  loc_1244DD1:       var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1244E0D:       If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_1244E10:         Exit Sub
  loc_1244E11:       End If
  loc_1244E24:       var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1244E2C:       var_DC = CVar(CLng(1)) 'Long
  loc_1244E5F:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1244E68:         Me.MoveFirst
  loc_1244E80:         var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1244E88:         var_DC = CVar(CLng(1)) 'Long
  loc_1244ECC:         Me.Find "ModuleDescription='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_1244EFC:         If (Me.EOF = &HFF) Then
  loc_1244F05:           Me.MoveFirst
  loc_1244F0A:         End If
  loc_1244F0A:       End If
  loc_1244F0D:     Else
  loc_1244F14:       If (var_114 = CLng(3)) Then
  loc_1244F17:         GoTo loc_1244F24
  loc_1244F1A:       End If
  loc_1244F21:       If (var_114 = CLng(4)) Then
  loc_1244F24:         ' Referenced from:     1244F17
  loc_1244F24:       End If
  loc_1244F24:     End If
  loc_1244F24:   End If
  loc_1244F24: End If
  loc_1244F24: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1220E24
  'Data Table: 45FAB0
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSFlexGrid
  Dim var_B0 As Long
  Dim var_E0 As Variant
  Dim var_98 As DataGrid
  loc_1220933: var_86 = Shift
  loc_1220940: If (CLng(Shift) = &H1B) Then
  loc_122094F:   Set var_8C = Me.TxtGrid
  loc_1220955:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_122096E:   Set var_98 = Me.TxtGrid
  loc_1220974:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_122097C:   var_9C.Text = var_90.Tag
  loc_1220998:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12209A1:   Set var_8C = Me.FGrid
  loc_12209BD:   Set var_8C = Me.TxtGrid
  loc_12209C3:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_12209CB:   var_90.Visible = FGrid.DispID_8001
  loc_12209D7:   Exit Sub
  loc_12209D8: End If
  loc_12209FB: If (CLng(Me.FGrid.Col) = CLng(0)) Then
  loc_1220A54:   Proc_6_69_134A198(Me.DGModType, Me.TxtGrid, KeyCode, global_72, Shift, &HFF, 1)
  loc_1220A74:   If (CLng(Shift) = &HD) Then
  loc_1220A7F:     Call Proc_317_32_128D420(0, var_B4, Nothing, Me.FGPoint)
  loc_1220A8A:     If (var_B4 = &HFF) Then
  loc_1220A98:       Set var_9C = Me.TxtGrid
  loc_1220AC1:       Set var_90 = var_9C
  loc_1220AD0:       Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_56, 5, 0)
  loc_1220AE0:     End If
  loc_1220AE0:   End If
  loc_1220AED:   Set var_98 = Me.TxtGrid
  loc_1220AF3:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D0, 0, 0)
  loc_1220AFB:   0 = var_9C.Height
  loc_1220B0D:   Set var_8C = Me.TxtGrid
  loc_1220B13:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_CC)
  loc_1220B1B:   var_B0 = var_90.Top
  loc_1220B27:   var_E0 = CVar((var_CC + var_D0)) 'Single
  loc_1220B36:   Me.DGModType.Top = var_E0
  loc_1220B55:   Set var_8C = Me.TxtGrid
  loc_1220B5B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_CC)
  loc_1220B63:   arg_14 = var_90.Left
  loc_1220B7A:   Me.DGModType.Left = CVar(var_CC)
  loc_1220B8B: Else
  loc_1220B92:   If (var_B0 = CLng(1)) Then
  loc_1220BB2:     Set var_9C = Me.FGPoint
  loc_1220BEB:     Proc_6_69_134A198(Me.DgModDesc, Me.TxtGrid, KeyCode, global_68, Shift, &HFF)
  loc_1220C0B:     If (CLng(Shift) = &HD) Then
  loc_1220C16:       Call Proc_317_32_128D420(0, var_B4, 1, Nothing)
  loc_1220C21:       If (var_B4 = &HFF) Then
  loc_1220C2F:         Set var_9C = Me.TxtGrid
  loc_1220C58:         Set var_90 = var_9C
  loc_1220C67:         Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_56, 5)
  loc_1220C77:       End If
  loc_1220C77:     End If
  loc_1220C84:     Set var_98 = Me.TxtGrid
  loc_1220C8A:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D0, 0, 0)
  loc_1220C92:     0 = var_9C.Height
  loc_1220CA4:     Set var_8C = Me.TxtGrid
  loc_1220CAA:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_CC)
  loc_1220CB2:     var_9C = var_90.Top
  loc_1220CBE:     var_E0 = CVar((var_CC + var_D0)) 'Single
  loc_1220CCD:     Me.DgModDesc.Top = CVar(var_CC)
  loc_1220CEC:     Set var_8C = Me.TxtGrid
  loc_1220CF2:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_CC)
  loc_1220CFA:     0 = var_90.Left
  loc_1220D11:     Me.DgModDesc.Left = CVar(var_CC)
  loc_1220D22:   Else
  loc_1220D29:     If (var_B0 = CLng(3)) Then
  loc_1220D36:       If (CLng(Shift) = &HD) Then
  loc_1220D3F:         Call Proc_317_32_128D420(KeyCode, var_B2)
  loc_1220D4A:         If (var_B2 = &HFF) Then
  loc_1220D90:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56)
  loc_1220DA0:         End If
  loc_1220DA0:       End If
  loc_1220DA3:     Else
  loc_1220DAA:       If (var_B0 = CLng(4)) Then
  loc_1220DB7:         If (CLng(Shift) = &HD) Then
  loc_1220DC0:           Call Proc_317_32_128D420(KeyCode, var_B2, 5, 0)
  loc_1220DCB:           If (var_B2 = &HFF) Then
  loc_1220E11:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56, 5)
  loc_1220E21:           End If
  loc_1220E21:         End If
  loc_1220E21:       End If
  loc_1220E21:     End If
  loc_1220E21:   End If
  loc_1220E21: End If
  loc_1220E21: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '102EDB4
  'Data Table: 45FAB0
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim var_BC As TextBox
  Dim arg_10 As Integer
  loc_102EB7C: On Error Goto loc_102EDAB
  loc_102EB82: Proc_6_58_E054C0(arg_10)
  loc_102EBA2: var_88 = CStr(Ucase(Chr(CLng(arg_10))))
  loc_102EBBF: var_B0 = CLng(Me.FGrid.Col)
  loc_102EBCF: If (var_B0 = CLng(0)) Then
  loc_102EBEE:   If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_102EC00:     var_B4 = "ModType"
  loc_102EC1B:     Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_72, arg_10)
  loc_102EC4D:     Proc_6_138_106D6F8(Me.DGModType, global_72, KeyAscii, Me.FGPoint)
  loc_102EC5B:   End If
  loc_102EC5E: Else
  loc_102EC65:   If (var_B0 = CLng(1)) Then
  loc_102EC84:     If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_102EC96:       var_B4 = "ModuleDescription"
  loc_102ECB1:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_68, arg_10, var_B4)
  loc_102ECCB:       Set var_BC = Me.FGPoint
  loc_102ECE3:       Proc_6_138_106D6F8(Me.DgModDesc, global_68, KeyAscii, var_BC)
  loc_102ECF1:     End If
  loc_102ECF4:   Else
  loc_102ECFB:     If (var_B0 = CLng(4)) Then
  loc_102ED27:       If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_102ED36:         Set var_AC = Me.TxtGrid
  loc_102ED3C:         Call 0.Method_TxtGrid_KeyPress0 (0, var_BC, "Yes", 0)
  loc_102ED44:         var_BC.Text = var_B4
  loc_102ED53:       Else
  loc_102ED7C:         If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_102ED8B:           Set var_AC = Me.TxtGrid
  loc_102ED91:           Call 0.Method_TxtGrid_KeyPress0 (0, var_BC, "No")
  loc_102ED99:           var_BC.Text = 0
  loc_102EDA5:         End If
  loc_102EDA5:       End If
  loc_102EDA7:       arg_10 = 0
  loc_102EDAA:     End If
  loc_102EDAA:   End If
  loc_102EDAA: End If
  loc_102EDAA: Exit Sub
  loc_102EDAB: ' Referenced from: 102EB7C
  loc_102EDAB: Proc_6_60_E62BC4(arg_10)
  loc_102EDB0: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F60C48
  'Data Table: 45FAB0
  Dim var_A0 As Long
  loc_F60B18: On Error Goto loc_F60C42
  loc_F60B27: If (KeyCode = 0) Then
  loc_F60B3D:   var_A0 = CLng(Me.FGrid.Col)
  loc_F60B4D:   If (var_A0 = CLng(0)) Then
  loc_F60B73:     If ((Shift <> &HD) And (CBool(Me.DGModType.Visible) = 0)) Then
  loc_F60B84:       Call TxtGrid_KeyDown(KeyCode, global_64)
  loc_F60BB3:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_72, Shift, "ModType")
  loc_F60BC2:     End If
  loc_F60BC5:   Else
  loc_F60BCC:     If (var_A0 = CLng(1)) Then
  loc_F60BF2:       If ((Shift <> &HD) And (CBool(Me.DgModDesc.Visible) = 0)) Then
  loc_F60C03:         Call TxtGrid_KeyDown(KeyCode, global_64)
  loc_F60C32:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_68, Shift, "ModuleDescription", &HFF)
  loc_F60C41:       End If
  loc_F60C41:     End If
  loc_F60C41:   End If
  loc_F60C41: End If
  loc_F60C41: Exit Sub
  loc_F60C42: ' Referenced from: F60B18
  loc_F60C42: Proc_6_60_E62BC4(0, &HFF, 0)
  loc_F60C47: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E1A070
  'Data Table: 45FAB0
  Dim arg_10 As Integer
  loc_E1A054: On Error Goto loc_E1A06A
  loc_E1A05D: Call Proc_317_32_128D420(Cancel)
  loc_E1A066: arg_10 = Not(var_86)
  loc_E1A069: Exit Sub
  loc_E1A06A: ' Referenced from: E1A054
  loc_E1A06A: Proc_6_60_E62BC4(arg_10)
  loc_E1A06F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E125C0
  'Data Table: 45FAB0
  Dim Me As Recordset15
  loc_E125A8: Call Proc_317_27_10F0AC8()
  loc_E125B8: Me.Requery -1
  loc_E125BD: Exit Sub
End Sub

Private Sub DGModType_UnknownEvent_9 'F6ADD0
  'Data Table: 45FAB0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_F6ACB3: Me.DGModType.Visible = False
  loc_F6ACD2: If (Me.RecordCount > 0) Then
  loc_F6AD0F:   Set var_B4 = Me.TxtGrid
  loc_F6AD15:   Call 0.Method_DGModType_UnknownEvent_90 (0, var_B8)
  loc_F6AD1D:   var_B8.Text = CStr(Me.Fields.Item("ModType").Value)
  loc_F6AD46:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F6AD4E:   var_EC = CVar(CLng(0)) 'Long
  loc_F6AD70:   var_B0 = Me.Fields.Item("ModType")
  loc_F6AD81:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_F6AD89:   Set var_B8 = Me.FGrid
  loc_F6AD8F:   LateIdCallSt
  loc_F6ADAB: End If
  loc_F6ADB4: Set var_A8 = Me.TxtGrid
  loc_F6ADBA: Call 0.Method_DGModType_UnknownEvent_90 (0, var_B0, var_B8)
  loc_F6ADC2: var_B0.SetFocus
  loc_F6ADCE: Exit Sub
End Sub

Private Sub DGModType_UnknownEvent_1F 'E750D0
  'Data Table: 45FAB0
  loc_E7508E: Proc_6_153_E91194(Me.DGModType, arg_14)
  loc_E750A5: Set var_8C = Me.FGPoint
  loc_E750BF: Proc_6_138_106D6F8(Me.DGModType, global_72, 0)
  loc_E750CD: Exit Sub
End Sub

Private Sub Form_Load() '1231A58
  'Data Table: 45FAB0
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim unk_45FAB4 As Connection15
  Dim Me As Recordset15
  Dim var_C4 As Variant
  Dim var_114 As Variant
  Dim var_E4 As Integer
  Dim var_128 As String
  Dim unk_45FADB As Connection15
  Dim var_134 As Recordset15
  Dim var_138 As Fields15
  Dim var_13C As Field20
  Dim var_16C As Variant
  loc_1231558: On Error Goto loc_1231A12
  loc_1231562: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_123157A: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1231582: Call Proc_317_28_105A3FC()
  loc_1231594: Set var_AC = Me.FGrid
  loc_123159A: var_AC.Rows = 1
  loc_12315A6: var_86 = CByte(1) 'Byte
  loc_12315CE: unk_45FAB4.Execute "SELECT printersetup.* FROM PrinterSetup WHERE PrinterSetup.SITE_CODE='" & MemVar_1F92078 & "'", var_C4, -1
  loc_12315DF: Set global_52 = var_AC
  loc_123160B: If (Me.RecordCount > 0) Then
  loc_123160E:   ' Referenced from: 1231946
  loc_1231620:   If Not(Me.EOF) Then
  loc_1231627:     Set var_D4 = Me.FGrid
  loc_123162A:     var_98 = vbNullString
  loc_1231634:     Set var_AC = Me.FGrid
  loc_1231682:     var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ModType")), CVar(CLng(0)), CVar(CLng(var_86)))) 'String
  loc_1231689:     LateIdCallSt
  loc_12316D8:     var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ModDescription")), CVar(CLng(1)), CVar(CLng(var_86)), var_D4)) 'String
  loc_12316DF:     LateIdCallSt
  loc_123172E:     var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("modCODE")), CVar(CLng(2)), CVar(CLng(var_86)), var_D4, var_114)) 'String
  loc_1231735:     LateIdCallSt
  loc_1231784:     var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Printer")), CVar(CLng(3)), CVar(CLng(var_86)), var_D4, var_114)) 'String
  loc_123178B:     LateIdCallSt
  loc_12317DA:     var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("AutoPrint")), CVar(CLng(4)), CVar(CLng(var_86)), var_D4, var_114)) 'String
  loc_12317E1:     LateIdCallSt
  loc_1231830:     var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RestCode")), CVar(CLng(5)), CVar(CLng(var_86)), var_D4, var_114)) 'String
  loc_1231837:     LateIdCallSt
  loc_123186B:     var_C4 = CVar(Me.Fields.Item("RestCode")) 'Address
  loc_123188F:     var_E4 = 0
  loc_12318B6:     var_128 = "Select Max(Name) From Depart Where Code='" & Proc_6_38_E68A98(var_C4, var_D4, var_114, var_114) & "' And LogSite_Code='"
  loc_12318CD:     unk_45FADB.Execute var_128 & MemVar_1F92078 & "'", var_114, -1
  loc_12318D5:     var_134 = var_134.Fields
  loc_12318DD:     var_E4 = var_138.Item(var_138)
  loc_12318E5:     var_13C = var_13C.Value
  loc_12318F2:     var_16C = CVar(Proc_6_38_E68A98(var_14C, var_14C, CVar(CLng(6)), CVar(CLng(var_86)))) 'String
  loc_12318F9:     LateIdCallSt
  loc_1231928:     Set var_D4 = Nothing 
  loc_1231932:     Me.MoveNext
  loc_1231942:     var_86 = CByte((CInt(var_86) + 1)) 'Byte
  loc_1231946:     GoTo loc_123160E
  loc_1231949:   End If
  loc_123194C: Else
  loc_123194C:   var_98 = vbNullString
  loc_1231956:   Set var_AC = Me.FGrid
  loc_1231967: End If
  loc_1231967: var_98 = 1
  loc_1231974: Set var_AC = Me.FGrid
  loc_123197A: var_AC.FixedRows = var_98
  loc_1231982: Call Proc_317_27_10F0AC8(FGrid.DispID_10000, var_98, var_D4, var_16C)
  loc_123199B: var_B0 = "Select Distinct Code as ModCode,ModuleDescription,ModType,RestCode from PrintMast where SITE_CODE='" & MemVar_1F92078
  loc_12319AB: unk_45FAB4.Execute var_B0 & "'", var_C4, -1
  loc_12319BC: Set global_68 = var_AC
  loc_12319DA: CVarUnk
  loc_12319DF: VerifyVarObj
  loc_12319E5: Set var_AC = Me.DgModDesc
  loc_12319EB: LateIdStAd
  loc_1231A03: Set var_AC = Me.TopCtrl1
  loc_1231A09: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005("Add")
  loc_1231A11: Exit Sub
  loc_1231A12: ' Referenced from: 1231558
  loc_1231A20: Call 0.Method_arg_2C (var_B0, Err(), global_68, Err())
  loc_1231A41: MsgBox(CVar(var_B0), &H40, "Information", var_14C, var_16C)
  loc_1231A54: Exit Sub
  loc_1231A55: Exit Sub
End Sub

Private Sub Form_Resize() 'E85CC0
  'Data Table: 45FAB0
  loc_E85C56: Call 0.Method_arg_50 (var_88)
  loc_E85C68: Me.LblFormCaption.Caption = var_88
  loc_E85C81: Me.LblFormCaption.Left = CDbl(0)
  loc_E85C97: Me.LblFormCaption.Top = CDbl(0)
  loc_E85CA5: Call 0.Method_arg_100 (var_90)
  loc_E85CB7: Me.LblFormCaption.Width = var_90
  loc_E85CBF: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E50DA4
  'Data Table: 45FAB0
  loc_E50D77: Set global_52 = Nothing
  loc_E50D89: Set global_72 = Nothing
  loc_E50D9B: Set global_68 = Nothing
  loc_E50DA2: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E88DD8
  'Data Table: 45FAB0
  loc_E88D74: On Error Goto loc_E88D94
  loc_E88D8B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E88D93: Exit Sub
  loc_E88D94: ' Referenced from: E88D74
  loc_E88D9C: Set var_88 = Err()
  loc_E88DA2: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E88DC3: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E88DD6: Exit Sub
  loc_E88DD7: Exit Sub
End Sub

Private Sub CmdSave_UnknownEvent_9 '1186508
  'Data Table: 45FAB0
  Dim unk_45FAB4 As Connection15
  Dim var_88 As Integer
  Dim var_90 As String
  Dim var_94 As String
  Dim var_B4 As Variant
  Dim var_A4 As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_260 As Variant
  Dim var_2C0 As Variant
  Dim var_264 As String
  loc_11861A0: On Error Goto loc_11864EB
  loc_11861AC: unk_45FAB4.BeginTrans var_8C
  loc_11861B3: var_88 = &HFF
  loc_11861DA: unk_45FAB4.Execute "DELETE FROM PRINTERSETUP WHERE SITE_CODE='" & MemVar_1F92078 & "'", var_B4, -1
  loc_1186211: For var_BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_118621B:   var_A4 = CVar(CLng(var_86)) 'Long
  loc_1186223:   var_DC = CVar(CLng(0)) 'Long
  loc_118623D:   var_90 = CStr(Me.FGrid.TextMatrix))
  loc_1186249:   var_FC = CVar(CLng(var_86)) 'Long
  loc_1186251:   var_11C = CVar(CLng(1)) 'Long
  loc_118626B:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_1186278:   var_150 = CVar(CLng(var_86)) 'Long
  loc_11862BE:   If (CVar(CLng(3)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_11862C5:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_11862CD:     var_DC = CVar(CLng(0)) 'Long
  loc_11862EC:     var_FC = CVar(CLng(var_86)) 'Long
  loc_11862F4:     var_11C = CVar(CLng(1)) 'Long
  loc_1186313:     var_150 = CVar(CLng(var_86)) 'Long
  loc_118631B:     var_170 = CVar(CLng(2)) 'Long
  loc_118633A:     var_1BC = CVar(CLng(var_86)) 'Long
  loc_1186342:     var_1DC = CVar(CLng(3)) 'Long
  loc_1186378:     var_260 = Me.FGrid.TextMatrix)
  loc_118639F:     var_2C0 = Me.FGrid.TextMatrix)
  loc_11863B9:     Proc_6_7_F25D88(var_2F4, Date, var_2C0, CVar(CLng(5)), CVar(CLng(var_86)), var_260, CVar(CLng(4)), CVar(CLng(var_86)))
  loc_11863D6:     var_94 = "Insert into PrinterSetup (ModType,ModDescription,ModCode,Printer,AutoPrint,RestCode,Site_Code,U_EntDt,U_AE) values('" & CStr(Me.FGrid.TextMatrix))
  loc_1186413:     var_264 = var_94 & "','" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix)) & "','"
  loc_1186462:     unk_45FAB4.Execute CStr(CVar(var_264 & CStr(var_260) & "','" & CStr(var_2C0) & "','" & MemVar_1F92078 & "',") & var_2F4 & ",'A')"), var_358, -1
  loc_11864BE:   End If
  loc_11864C1: Next var_BC 'Integer
  loc_11864C8: var_88 = 0
  loc_11864D1: unk_45FAB4.CommitTrans
  loc_11864E3: Me.Global.Unload Me
  loc_11864EB: ' Referenced from: 11861A0
  loc_11864F1: If (var_88 = &HFF) Then
  loc_11864FA:   unk_45FAB4.RollbackTrans
  loc_11864FF: End If
  loc_11864FF: Proc_6_60_E62BC4(var_88)
  loc_1186504: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E64B3C
  'Data Table: 45FAB0
  loc_E64B0C: If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_E64B0F:   Call DGModType_UnknownEvent_9()
  loc_E64B14: End If
  loc_E64B30: If (CBool(Me.DgModDesc.Visible) = &HFF) Then
  loc_E64B33:   Call DgModDesc_UnknownEvent_9()
  loc_E64B38: End If
  loc_E64B38: Exit Sub
  loc_E64B39: Set var_110 = 
End Sub

Private Sub DgModDesc_UnknownEvent_9 'FBDDC4
  'Data Table: 45FAB0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FBDC2F: Me.DgModDesc.Visible = False
  loc_FBDC4E: If (Me.RecordCount > 0) Then
  loc_FBDC8B:   Set var_B4 = Me.TxtGrid
  loc_FBDC91:   Call 0.Method_DgModDesc_UnknownEvent_90 (0, var_B8)
  loc_FBDC99:   var_B8.Text = CStr(Me.Fields.Item("ModuleDescription").Value)
  loc_FBDCC2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FBDCCA:   var_EC = CVar(CLng(1)) 'Long
  loc_FBDCFD:   var_11C = CVar(CStr(Me.Fields.Item("ModuleDescription").Value)) 'String
  loc_FBDD05:   Set var_B8 = Me.FGrid
  loc_FBDD0B:   LateIdCallSt
  loc_FBDD3A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FBDD42:   var_EC = CVar(CLng(2)) 'Long
  loc_FBDD64:   var_B0 = Me.Fields.Item("modCODE")
  loc_FBDD75:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FBDD7D:   Set var_B8 = Me.FGrid
  loc_FBDD83:   LateIdCallSt
  loc_FBDD9F: End If
  loc_FBDDA8: Set var_A8 = Me.TxtGrid
  loc_FBDDAE: Call 0.Method_DgModDesc_UnknownEvent_90 (0, var_B0, var_B8, var_11C, var_EC)
  loc_FBDDB6: var_B0.SetFocus
  loc_FBDDC2: Exit Sub
End Sub

Private Sub DgModDesc_UnknownEvent_1F 'E757C0
  'Data Table: 45FAB0
  loc_E7577E: Proc_6_153_E91194(Me.DgModDesc, arg_14)
  loc_E75795: Set var_8C = Me.FGPoint
  loc_E757AF: Proc_6_138_106D6F8(Me.DgModDesc, global_68, 0)
  loc_E757BD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5FF34
  'Data Table: 45FAB0
  Dim var_A8 As MSFlexGrid
  Dim var_AC As TextBox
  loc_E5FEFF: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5FF12: Set var_A8 = Me.TxtGrid
  loc_E5FF18: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5FF20: var_AC.Visible = False
  loc_E5FF2C: Call Proc_317_30_EF5278()
  loc_E5FF31: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6B620
  'Data Table: 45FAB0
  Dim var_88 As MSFlexGrid
  Dim var_9C As TextBox
  Dim FGrid_UnknownEvent_9FF As Double
  loc_E6B5D0: Call Proc_317_31_E3F3C0()
  loc_E6B5F4: If (CLng(Me.FGrid.Col) = 0) Then
  loc_E6B602:   Set var_88 = Me.TxtGrid
  loc_E6B608:   Call 0.Method_FGrid_UnknownEvent_90 (0, var_9C)
  loc_E6B610:   var_9C.Visible = False
  loc_E6B61C: End If
  loc_E6B61C: Exit Sub
  loc_E6B61D: FGrid_UnknownEvent_9FF = 
End Sub

Private Sub FGrid_UnknownEvent_A '105F6D0
  'Data Table: 45FAB0
  Dim var_9C As String
  Dim var_B4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim KeyCode As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  Dim arg_38FF As Double
  loc_105F458: Set var_88 = Me.TopCtrl1
  loc_105F45E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_105F4A3: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_105F4AC:   Call Form_KeyDown(KeyCode, Shift)
  loc_105F4B1: End If
  loc_105F4B5: Set var_88 = Me.TopCtrl1
  loc_105F4BB: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_105F4D4: If (CStr() = "Browse") Then
  loc_105F4D7:   Exit Sub
  loc_105F4D8: End If
  loc_105F54C: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_105F557:   var_9C = "+{Tab}"
  loc_105F55D:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_105F567:   KeyCode = 0
  loc_105F56A: End If
  loc_105F570: global_64 = KeyCode
  loc_105F596: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_105F5BA: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_105F5D0:   var_DC = CLng(Me.FGrid.Col)
  loc_105F5E0:   If Not (var_DC = CLng(1)) Then
  loc_105F5EA:     If Not (var_DC = CLng(0)) Then
  loc_105F5F4:       If (var_DC = CLng(3)) Then
  loc_105F5F7:       End If
  loc_105F5F7:     End If
  loc_105F60A:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105F622:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_105F627:     var_11C = vbNullString
  loc_105F631:     Set var_B4 = Me.FGrid
  loc_105F637:     LateIdCallSt
  loc_105F652:   Else
  loc_105F659:     If (var_DC = CLng(4)) Then
  loc_105F66F:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105F687:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_105F68C:       var_11C = "Yes"
  loc_105F696:       Set var_B4 = Me.FGrid
  loc_105F69C:       LateIdCallSt
  loc_105F6B4:     End If
  loc_105F6B4:   End If
  loc_105F6B4:   GoTo loc_105F6B7
  loc_105F6B7:   ' Referenced from: 105F6B4
  loc_105F6B7: End If
  loc_105F6BD: If (KeyCode = &HD) Then
  loc_105F6C5:   global_56 = 0
  loc_105F6C8: End If
  loc_105F6CD: Exit Sub
  loc_105F6CE: arg_38FF = 0
End Sub

Private Sub FGrid_UnknownEvent_B 'E12530
  'Data Table: 45FAB0
  loc_E12521: Call FGrid_UnknownEvent_C()
  loc_E1252B: global_56 = 0
  loc_E1252E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '11729C4
  'Data Table: 45FAB0
  Dim var_9C As String
  Dim var_88 As MSFlexGrid
  Dim var_A0 As Long
  Dim var_CC As Integer
  Dim var_A4 As TextBox
  Dim var_B4 As TextBox
  loc_11725FC: Set var_88 = Me.TopCtrl1
  loc_1172602: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_117261B: If (CStr() = "Browse") Then
  loc_117261E:   Exit Sub
  loc_117261F: End If
  loc_1172632: var_A0 = CLng(Me.FGrid.Col)
  loc_1172642: If Not (var_A0 = CLng(0)) Then
  loc_117264C:   If (var_A0 = CLng(1)) Then
  loc_117264F:   End If
  loc_117268D:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_11726A2: Else
  loc_11726A9:   If (var_A0 = CLng(3)) Then
  loc_11726B0:     Set var_B4 = Me.FGrid
  loc_11726D4:     var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_11726DD:     var_CC = Asc(var_9C)
  loc_1172701:     Set var_A4 = var_B4
  loc_1172713:     Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0, 0, var_CC)
  loc_117273B:     Set var_88 = Me.TxtGrid
  loc_1172741:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, 0, var_CC)
  loc_1172749:     0 = var_A4.Text
  loc_1172762:     If (Len(var_9C) <= 1) Then
  loc_1172771:       Set var_88 = Me.TxtGrid
  loc_1172777:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_117277F:       KeyCode = var_A4.Text
  loc_1172790:       Set var_A8 = Me.TxtGrid
  loc_1172796:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_117279E:       var_B4.Text = 0
  loc_11727B1:     End If
  loc_11727BD:     Set var_88 = Me.TxtGrid
  loc_11727C3:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11727DD:     Set var_A8 = Me.TxtGrid
  loc_11727E3:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_11727EB:     var_B4.SelStart = Len(var_A4.Text)
  loc_1172801:   Else
  loc_1172808:     If (var_A0 = CLng(4)) Then
  loc_117280F:       Set var_B4 = Me.FGrid
  loc_1172833:       var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_1172860:       Set var_A4 = var_B4
  loc_1172872:       Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0, 0)
  loc_117289A:       Set var_88 = Me.TxtGrid
  loc_11728A0:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, Asc(var_9C))
  loc_11728A8:       0 = var_A4.Text
  loc_11728C1:       If (Len(var_9C) <= 1) Then
  loc_11728D0:         Set var_88 = Me.TxtGrid
  loc_11728D6:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_11728DE:         var_CC = var_A4.Text
  loc_117290F:         If (Left(CVar(var_9C), 1) = "N") Then
  loc_117291E:           Set var_88 = Me.TxtGrid
  loc_1172924:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_117292C:           var_A4.Text = "No"
  loc_117293B:         Else
  loc_1172947:           Set var_88 = Me.TxtGrid
  loc_117294D:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_1172955:           var_A4.Text = "Yes"
  loc_1172961:         End If
  loc_1172961:       End If
  loc_117296D:       Set var_88 = Me.TxtGrid
  loc_1172973:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_117298D:       Set var_A8 = Me.TxtGrid
  loc_1172993:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_117299B:       var_B4.SelStart = Len(var_A4.Text)
  loc_11729AE:     End If
  loc_11729AE:   End If
  loc_11729AE: End If
  loc_11729B8: If (CLng(KeyCode) <> &HD) Then
  loc_11729C0:   global_56 = &HFF
  loc_11729C3: End If
  loc_11729C3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FD7658
  'Data Table: 45FAB0
  Dim var_8C As MSFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_FD7490: Set var_8C = Me.TopCtrl1
  loc_FD7496: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FD74AF: If (CStr() = "Browse") Then
  loc_FD74B2:   Exit Sub
  loc_FD74B3: End If
  loc_FD74D0: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FD74D3:   Exit Sub
  loc_FD74D4: End If
  loc_FD74E5: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FD7507:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FD7541:     If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FD7563:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FD7579:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FD7582:         Set var_114 = Me.FGrid
  loc_FD759D:       Else
  loc_FD75B0:         Me.FGrid.Rows = 1
  loc_FD75CD:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FD75D5:         Set var_114 = Me.FGrid
  loc_FD7604:         Me.FGrid.FixedRows = 1
  loc_FD760C:       End If
  loc_FD760C:     End If
  loc_FD760F:   Else
  loc_FD7630:     MsgBox("No Entries To Delete", &H10, "Delete !", var_F0, var_110)
  loc_FD7640:   End If
  loc_FD7644:   Set var_8C = Me.FGrid
  loc_FD7655: End If
  loc_FD7655: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1C7F0
  'Data Table: 45FAB0
  loc_E1C7E7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1C7EF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3F2FC
  'Data Table: 45FAB0
  Dim var_8C As TextBox
  loc_E3F2D0: Call Proc_317_30_EF5278()
  loc_E3F2E0: Set var_88 = Me.TxtGrid
  loc_E3F2E6: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3F2EE: var_8C.Visible = False
  loc_E3F2FA: Exit Sub
End Sub

Private Sub cmdCancel_UnknownEvent_9 'E15D54
  'Data Table: 45FAB0
  loc_E15D49: Me.Global.Unload Me
  loc_E15D51: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EDBE70
  'Data Table: 45FAB0
  Dim Me As Recordset15
  Dim var_E8 As Variant
  Dim var_EC As String
  loc_EDBDCE: On Error Goto loc_EDBE2B
  loc_EDBDD7: Me.MoveFirst
  loc_EDBE0B: var_E8 = "SYear='" & Year(MyValue) & "'" 
  loc_EDBE0F: var_EC = CStr(var_E8)
  loc_EDBE19: Me.Find var_EC, 0, 1
  loc_EDBE2A: Exit Sub
  loc_EDBE2B: ' Referenced from: EDBDCE
  loc_EDBE33: Set var_100 = Err()
  loc_EDBE39: Call 0.Method_arg_2C (var_EC)
  loc_EDBE5A: MsgBox(CVar(var_EC), &H40, "Information", var_E8, var_110)
  loc_EDBE6D: Exit Sub
  loc_EDBE6E: Exit Sub
End Sub

Public Sub Proc_317_26_F1FF50(arg_C) 'F1FF50
  'Data Table: 45FAB0
  Dim var_8C As Recordset15
  Dim var_98 As String
  loc_F1FE4D: Set var_8C = arg_C 
  loc_F1FE75: var_8C.Fields.Append "ModType", &HC8, &H19
  loc_F1FEA1: var_8C.Fields.Append "Mod_Type", &HC8, &H19
  loc_F1FECD: var_8C.Fields.Append "RestCode", &HC8, 6
  loc_F1FEF9: var_8C.Fields.Append "Departname", &HC8, &H32
  loc_F1FF09: var_8C.CursorType = 3
  loc_F1FF16: var_8C.LockType = 3
  loc_F1FF35: var_8C.Open var_A0, var_B0, -1
  loc_F1FF3C: Set var_8C = Nothing 
  loc_F1FF43: Set var_88 = arg_C 
  loc_F1FF47: Proc_317_26_F1FF50 = -1
  loc_F1FF4D: var_98 = -1
End Sub

Public Sub Proc_317_27_10F0AC8
  'Data Table: 45FAB0
  Dim var_90 As String
  Dim var_98 As String
  Dim var_88 As Recordset15
  Dim var_C4 As Recordset15
  Dim var_AC As String
  Dim var_8C As Fields15
  Dim var_BC As Variant
  Dim var_F0 As Variant
  Dim var_D4 As String
  Dim var_DC As Variant
  Dim var_E0 As Variant
  Dim var_F4 As String
  Dim unk_45FADB As Connection15
  Dim var_108 As Field20
  loc_10F07EA: Call Proc_317_26_F1FF50(New)
  loc_10F07F5: Set global_72 = var_8C
  loc_10F081E: var_98 = "Select Distinct ModType,PrintMast.RestCode from " & MemVar_1F921D4 & ".PrintMast WHERE PrintMast.SITE_CODE='" & MemVar_1F92078
  loc_10F082E: Me.Connection15.Execute var_98 & "'", var_BC, -1
  loc_10F0839: Set var_88 = var_8C
  loc_10F084D: ' Referenced from: 10F0A94
  loc_10F085C: If Not(var_88.EOF) Then
  loc_10F0865:   Set var_C4 = global_72 
  loc_10F0874:   var_C4.AddNew var_AC, var_D4
  loc_10F0888:   var_8C = var_88.Fields
  loc_10F08C4:   var_C4.Fields.Item("ModType").Value = CVar(Proc_6_38_E68A98(CVar(var_8C.Item("ModType")), var_8C))
  loc_10F0924:   var_C4.Fields.Item("Mod_Type").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ModType"))))
  loc_10F0961:   var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RestCode")))) 'String
  loc_10F0968:   var_D4 = "RestCode"
  loc_10F0974:   var_DC = var_C4.Fields
  loc_10F097C:   var_E0 = var_DC.Item(var_D4)
  loc_10F0984:   var_E0.Value = var_F0
  loc_10F09BB:   var_AC = "RestCode"
  loc_10F09C7:   var_8C = var_88.Fields
  loc_10F09E0:   var_90 = Proc_6_38_E68A98(CVar(var_8C.Item(var_AC)), "Select Max(Name) From Depart Where Code='", var_F0, -1, var_DC)
  loc_10F09F9:   var_F4 = var_E0 & "Select Distinct ModType,PrintMast.RestCode from " & MemVar_1F921D4 & "' And LogSite_Code='" & MemVar_1F92078 & "'"
  loc_10F0A02:   unk_45FADB.Execute var_F4, 0, var_108
  loc_10F0A12:    = var_E0.Item(var_8C)
  loc_10F0A1A:    = var_108.Value
  loc_10F0A4A:   var_C4.Fields.Item("Departname").Value = CVar(Proc_6_38_E68A98(var_DC.Fields))
  loc_10F0A81:   var_C4.Update var_AC, var_D4
  loc_10F0A88:   Set var_C4 = Nothing 
  loc_10F0A8F:   var_88.MoveNext
  loc_10F0A94:   GoTo loc_10F084D
  loc_10F0A97: End If
  loc_10F0AA0: CVarUnk
  loc_10F0AA5: VerifyVarObj
  loc_10F0AAB: Set var_8C = Me.DGModType
  loc_10F0AB1: LateIdStAd
  loc_10F0AC4: Set var_88 = Nothing
  loc_10F0AC7: Exit Sub
End Sub

Public Sub Proc_317_28_105A3FC
  'Data Table: 45FAB0
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_DC As String
  loc_105A174: Set var_8C = Me.FGrid
  loc_105A177: var_9C = 0
  loc_105A183: var_BC = CVar(CLng(0)) 'Long
  loc_105A188: var_DC = "Module Type"
  loc_105A191: LateIdCallSt
  loc_105A19C: var_9C = CVar(CLng(0)) 'Long
  loc_105A1A1: var_BC = &H3E8
  loc_105A1AD: LateIdCallSt
  loc_105A1B8: var_9C = CVar(CLng(0)) 'Long
  loc_105A1C3: var_BC = CVar(CInt(1)) 'Integer
  loc_105A1CA: LateIdCallSt
  loc_105A1D2: var_9C = 0
  loc_105A1DE: var_BC = CVar(CLng(1)) 'Long
  loc_105A1E3: var_DC = "Description"
  loc_105A1EC: LateIdCallSt
  loc_105A1F7: var_9C = CVar(CLng(1)) 'Long
  loc_105A1FC: var_BC = &H1194
  loc_105A208: LateIdCallSt
  loc_105A213: var_9C = CVar(CLng(1)) 'Long
  loc_105A21E: var_BC = CVar(CInt(1)) 'Integer
  loc_105A225: LateIdCallSt
  loc_105A22D: var_9C = 0
  loc_105A239: var_BC = CVar(CLng(2)) 'Long
  loc_105A23E: var_DC = "ModuleCode"
  loc_105A247: LateIdCallSt
  loc_105A252: var_9C = CVar(CLng(2)) 'Long
  loc_105A257: var_BC = 0
  loc_105A263: LateIdCallSt
  loc_105A26E: var_9C = CVar(CLng(2)) 'Long
  loc_105A279: var_BC = CVar(CInt(1)) 'Integer
  loc_105A280: LateIdCallSt
  loc_105A288: var_9C = 0
  loc_105A294: var_BC = CVar(CLng(3)) 'Long
  loc_105A299: var_DC = "Printer"
  loc_105A2A2: LateIdCallSt
  loc_105A2AD: var_9C = CVar(CLng(3)) 'Long
  loc_105A2B2: var_BC = &HFD2
  loc_105A2BE: LateIdCallSt
  loc_105A2C9: var_9C = CVar(CLng(3)) 'Long
  loc_105A2D4: var_BC = CVar(CInt(1)) 'Integer
  loc_105A2DB: LateIdCallSt
  loc_105A2E3: var_9C = 0
  loc_105A2EF: var_BC = CVar(CLng(4)) 'Long
  loc_105A2F4: var_DC = "AutoPrintYN"
  loc_105A2FD: LateIdCallSt
  loc_105A308: var_9C = CVar(CLng(4)) 'Long
  loc_105A30D: var_BC = &H3E8
  loc_105A319: LateIdCallSt
  loc_105A324: var_9C = CVar(CLng(4)) 'Long
  loc_105A32F: var_BC = CVar(CInt(1)) 'Integer
  loc_105A336: LateIdCallSt
  loc_105A33E: var_9C = 0
  loc_105A34A: var_BC = CVar(CLng(5)) 'Long
  loc_105A34F: var_DC = "Printer Port"
  loc_105A358: LateIdCallSt
  loc_105A363: var_9C = CVar(CLng(5)) 'Long
  loc_105A368: var_BC = 0
  loc_105A374: LateIdCallSt
  loc_105A37F: var_9C = CVar(CLng(5)) 'Long
  loc_105A38A: var_BC = CVar(CInt(1)) 'Integer
  loc_105A391: LateIdCallSt
  loc_105A399: var_9C = 0
  loc_105A3A5: var_BC = CVar(CLng(6)) 'Long
  loc_105A3AA: var_DC = "Restaurant Name"
  loc_105A3B3: LateIdCallSt
  loc_105A3BE: var_9C = CVar(CLng(6)) 'Long
  loc_105A3C3: var_BC = &H9C4
  loc_105A3CF: LateIdCallSt
  loc_105A3DA: var_9C = CVar(CLng(6)) 'Long
  loc_105A3E5: var_BC = CVar(CInt(1)) 'Integer
  loc_105A3EC: LateIdCallSt
  loc_105A3F6: Set var_8C = Nothing 
  loc_105A3FA: Exit Sub
End Sub

Public Sub Proc_317_29_E8E6B8
  'Data Table: 45FAB0
  Dim var_98 As Long
  Dim var_AC As MSFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_E8E64F: Me.FGrid.FixedRows = 1
  loc_E8E66A: Me.FGrid.Rows = 2
  loc_E8E679: For var_B0 = 0 To 4: var_86 = var_B0 'Byte
  loc_E8E67F:   var_98 = 1
  loc_E8E68D:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_E8E692:   var_E0 = vbNullString
  loc_E8E69C:   Set var_AC = Me.FGrid
  loc_E8E6A2:   LateIdCallSt
  loc_E8E6B0: Next var_B0 'Byte
  loc_E8E6B6: Exit Sub
End Sub

Public Sub Proc_317_30_EF5278
  'Data Table: 45FAB0
  loc_EF51BC: If (CBool(Me.DGModType.Visible) = &HFF) Then
  loc_EF51CE:   Me.DGModType.Visible = False
  loc_EF51D6: End If
  loc_EF51F2: If (CBool(Me.DgModDesc.Visible) = &HFF) Then
  loc_EF5204:   Me.DgModDesc.Visible = False
  loc_EF520C: End If
  loc_EF5227: If (Me.FrmList.Visible = &HFF) Then
  loc_EF5236:   Me.FrmList.Visible = False
  loc_EF523E: End If
  loc_EF525A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF526C:   Me.FGPoint.Visible = False
  loc_EF5274: End If
  loc_EF5274: Exit Sub
End Sub

Public Sub Proc_317_31_E3F3C0
  'Data Table: 45FAB0
  loc_E3F39C: Set var_88 = Me.TopCtrl1
  loc_E3F3A2: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E3F3BB: If (CStr() = "Browse") Then
  loc_E3F3BE:   Exit Sub
  loc_E3F3BF: End If
  loc_E3F3BF: Exit Sub
End Sub

Public Sub Proc_317_32_128D420(arg_C) '128D420
  'Data Table: 45FAB0
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As String
  Dim var_124 As Variant
  Dim Me As Recordset15
  Dim var_138 As Variant
  Dim var_B0 As String
  loc_128CE4C: If (arg_C = 0) Then
  loc_128CE72:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_128CE82:     Set var_94 = Me.TxtGrid
  loc_128CE88:     Call 0.Method_Proc_317_32_128D4200 (arg_C, var_AC, var_B0)
  loc_128CE90:     var_A8 = var_AC.Text
  loc_128CEA7:     If (var_B0 = vbNullString) Then
  loc_128CEBD:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128CEC5:       var_E0 = CVar(CLng(1)) 'Long
  loc_128CECA:       var_100 = vbNullString
  loc_128CED4:       Set var_AC = Me.FGrid
  loc_128CEDA:       LateIdCallSt
  loc_128CEFF:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128CF07:       var_E0 = CVar(CLng(2)) 'Long
  loc_128CF0C:       var_100 = vbNullString
  loc_128CF16:       Set var_AC = Me.FGrid
  loc_128CF1C:       LateIdCallSt
  loc_128CF31:     Else
  loc_128CF5E:       Set var_94 = Me.TxtGrid
  loc_128CF64:       Call 0.Method_Proc_317_32_128D4200 (arg_C, var_AC, var_B0, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_AC, var_100)
  loc_128CF6C:       var_E0 = var_AC.Text
  loc_128CF74:       var_124 = CVar(var_B0) 'String
  loc_128CF82:       LateIdCallSt
  loc_128CFA6:       var_124 = Me.FGrid.Row
  loc_128CFBF:       var_C0 = "modCODE"
  loc_128CFD6:       var_AC = Me.Fields.Item(var_C0)
  loc_128CFE7:       var_138 = CVar(Proc_6_38_E68A98(CVar(var_AC), CVar(CLng(2)), CVar(CLng(var_124)), Me.FGrid, var_124, var_C0)) 'String
  loc_128CFEF:       Set var_128 = Me.FGrid
  loc_128CFF5:       LateIdCallSt
  loc_128D00F:     End If
  loc_128D012:   Else
  loc_128D019:     If (var_A8 = CLng(0)) Then
  loc_128D029:       Set var_94 = Me.TxtGrid
  loc_128D02F:       Call 0.Method_Proc_317_32_128D4200 (arg_C, var_AC, var_B0, var_128, var_138)
  loc_128D037:       var_AC = var_AC.Text
  loc_128D04E:       If (var_B0 = vbNullString) Then
  loc_128D064:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128D06C:         var_E0 = CVar(CLng(0)) 'Long
  loc_128D071:         var_100 = vbNullString
  loc_128D07B:         Set var_AC = Me.FGrid
  loc_128D081:         LateIdCallSt
  loc_128D0A6:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128D0AE:         var_E0 = CVar(CLng(6)) 'Long
  loc_128D0B3:         var_100 = vbNullString
  loc_128D0BD:         Set var_AC = Me.FGrid
  loc_128D0C3:         LateIdCallSt
  loc_128D0E8:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128D0F0:         var_E0 = CVar(CLng(5)) 'Long
  loc_128D0F5:         var_100 = vbNullString
  loc_128D0FF:         Set var_AC = Me.FGrid
  loc_128D105:         LateIdCallSt
  loc_128D11A:       Else
  loc_128D147:         Set var_94 = Me.TxtGrid
  loc_128D14D:         Call 0.Method_Proc_317_32_128D4200 (arg_C, var_AC, var_B0, CVar(CLng(0)), CVar(CLng(Me.FGrid.Row)), var_AC, var_100)
  loc_128D155:         var_E0 = var_AC.Text
  loc_128D15D:         var_124 = CVar(var_B0) 'String
  loc_128D16B:         LateIdCallSt
  loc_128D18F:         var_124 = Me.FGrid.Row
  loc_128D1A8:         var_C0 = "DEPARTNAME"
  loc_128D1D0:         var_138 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_C0)), CVar(CLng(6)), CVar(CLng(var_124)), Me.FGrid, var_124, var_C0)) 'String
  loc_128D1DE:         LateIdCallSt
  loc_128D232:         var_AC = Me.Fields.Item("RestCode")
  loc_128D243:         var_138 = CVar(Proc_6_38_E68A98(CVar(var_AC), CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_138)) 'String
  loc_128D24B:         Set var_128 = Me.FGrid
  loc_128D251:         LateIdCallSt
  loc_128D26B:       End If
  loc_128D26E:     Else
  loc_128D275:       If (var_A8 = CLng(3)) Then
  loc_128D2A5:         Set var_94 = Me.TxtGrid
  loc_128D2AB:         Call 0.Method_Proc_317_32_128D4200 (arg_C, var_AC, var_B0, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_128)
  loc_128D2B3:         var_138 = var_AC.Text
  loc_128D2BB:         var_124 = CVar(var_B0) 'String
  loc_128D2C3:         Set var_128 = Me.FGrid
  loc_128D2C9:         LateIdCallSt
  loc_128D2E6:       Else
  loc_128D2ED:         If (var_A8 = CLng(4)) Then
  loc_128D31D:           Set var_94 = Me.TxtGrid
  loc_128D323:           Call 0.Method_Proc_317_32_128D4200 (arg_C, var_AC, var_B0, CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), var_128)
  loc_128D32B:           var_124 = var_AC.Text
  loc_128D333:           var_124 = CVar(var_B0) 'String
  loc_128D33B:           Set var_128 = Me.FGrid
  loc_128D341:           LateIdCallSt
  loc_128D374:           var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_128D379:           var_E0 = 1
  loc_128D3B0:           If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_128D3C8:             var_124 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_128D3D0:             Set var_AC = Me.FGrid
  loc_128D3EC:           End If
  loc_128D3EC:         End If
  loc_128D3EC:       End If
  loc_128D3EC:     End If
  loc_128D3EC:   End If
  loc_128D3EC: End If
  loc_128D3FF: Set var_94 = Me.TxtGrid
  loc_128D405: Call 0.Method_Proc_317_32_128D4200 (0, var_AC, 0, &HFF, FGrid.DispID_10000, var_124, var_E0)
  loc_128D40D: var_AC.MaxLength = CVar(CLng(Me.FGrid.Row))
  loc_128D419: Proc_317_32_128D420 = var_128
End Sub
