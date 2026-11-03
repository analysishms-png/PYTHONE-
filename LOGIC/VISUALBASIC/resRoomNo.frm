VERSION 5.00
Begin VB.Form resRoomNo
  Caption = "Reservation Look Up Room Wise"
  BackColor = &HE0E0E0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11820
  ClientHeight = 7830
  LockControls = -1  'True
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
    Top = 7380
    Width = 11820
    Height = 450
    Visible = 0   'False
    TabIndex = 27
  End
  Begin Frame FrParameter
    Caption = "Parameter"
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 16065
    Height = 735
    TabIndex = 5
    BorderStyle = 0 'None
    Begin BtnEnh Cmd
      Index = 1
      Left = 10080
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 9
    End
    Begin TextBox Txt
      Index = 0
      BackColor = &H8000000E&
      ForeColor = &HC00000&
      Left = 1305
      Top = 120
      Width = 1350
      Height = 285
      TabIndex = 6
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
    Begin BtnEnh CmdExit
      Left = 14385
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 10
    End
    Begin BtnEnh Cmd
      Index = 0
      Left = 9000
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 11
    End
    Begin BtnEnh Cmd
      Index = 2
      Left = 11145
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 12
    End
    Begin BtnEnh BtnPrint
      Index = 2
      Left = 13305
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 23
    End
    Begin BtnEnh BtnPrint
      Index = 0
      Left = 12225
      Top = 45
      Width = 1080
      Height = 660
      TabIndex = 24
    End
    Begin Label Label5
      Caption = "d"
      ForeColor = &HFF&
      Left = 8355
      Top = 135
      Width = 105
      Height = 225
      TabIndex = 8
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label4
      Caption = "With advance"
      ForeColor = &H404040&
      Left = 7815
      Top = 135
      Width = 1155
      Height = 225
      TabIndex = 22
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label3
      Caption = "*"
      BackColor = &HE0E0E0&
      ForeColor = &HFF&
      Left = 7500
      Top = 120
      Width = 285
      Height = 270
      TabIndex = 21
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Courier New"
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
      Caption = "Expected Arrival"
      Index = 4
      ForeColor = &HFF0000&
      Left = 6045
      Top = 135
      Width = 1410
      Height = 225
      TabIndex = 20
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label2
      Index = 4
      BackColor = &HFFFF00&
      ForeColor = &H80000008&
      Left = 6015
      Top = 120
      Width = 1455
      Height = 270
      TabIndex = 19
      BorderStyle = 1 'Fixed Single
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Guest In House"
      Index = 3
      ForeColor = &HC0&
      Left = 4680
      Top = 135
      Width = 1290
      Height = 225
      TabIndex = 17
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Out Of Order "
      Index = 2
      ForeColor = &HFFFFFF&
      Left = 3540
      Top = 135
      Width = 1125
      Height = 225
      TabIndex = 15
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Vacant "
      Index = 1
      ForeColor = &HC00000&
      Left = 2835
      Top = 135
      Width = 675
      Height = 225
      TabIndex = 13
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Start Date"
      Index = 15
      ForeColor = &HC00000&
      Left = 195
      Top = 135
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
    Begin Label Label2
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 2790
      Top = 120
      Width = 705
      Height = 270
      TabIndex = 14
      BorderStyle = 1 'Fixed Single
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Index = 1
      BackColor = &HFF&
      ForeColor = &H80000008&
      Left = 3510
      Top = 120
      Width = 1110
      Height = 270
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Index = 3
      BackColor = &HFF00&
      ForeColor = &H80000008&
      Left = 4650
      Top = 120
      Width = 1335
      Height = 270
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
      Appearance = 0 'Flat
    End
  End
  Begin Frame FrLabel
    Caption = "Frame1"
    BackColor = &HE0E0E0&
    Left = 360
    Top = 8775
    Width = 3780
    Height = 390
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Begin Label LBLRoomName
      BackColor = &HE0E0E0&
      ForeColor = &HC00000&
      Left = 60
      Top = 15
      Width = 5970
      Height = 315
      Visible = 0   'False
      TabIndex = 4
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 1080
    Top = 1575
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MultiLine = -1  'True
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
  Begin MSHFlexGrid FGrid
    Left = 0
    Top = 750
    Width = 11820
    Height = 6270
    TabIndex = 0
  End
  Begin BtnEnh CmdUP
    Left = 16230
    Top = 3465
    Width = 1110
    Height = 885
    TabIndex = 25
  End
  Begin BtnEnh CmdDown
    Left = 16245
    Top = 4350
    Width = 1110
    Height = 885
    TabIndex = 26
  End
  Begin Label Label2
    Index = 2
    BackColor = &HFFFF00&
    ForeColor = &H80000008&
    Left = 1650
    Top = 9885
    Width = 285
    Height = 270
    TabIndex = 2
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "resRoomNo"

Private global_112 As Long
Private global_56 As Integer
Private global_58 As Integer
Private global_96 As Integer
Private global_80 As Double
Private global_100 As Integer

Private Sub CmdUp_UnknownEvent_9 'EE6AC8
  'Data Table: 4B0888
  Dim var_A8 As Variant
  loc_EE6A23: If (CLng(Me.FGrid.Row) > 1) Then
  loc_EE6A3F:   var_A8 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_EE6A4E:   Me.FGrid.Row = var_A8
  loc_EE6A76:   var_A8 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_EE6A85:   Me.FGrid.ColSel = var_A8
  loc_EE6AB6:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_EE6AC5: End If
  loc_EE6AC5: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E56534
  'Data Table: 4B0888
  Dim var_92 As Integer
  loc_E56506: Set var_88 = Me.Txt
  loc_E5650C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E5651A: Proc_6_74_E226B0(var_8C)
  loc_E56526: Call Proc_54_36_DFD2F0(var_8C)
  loc_E5652E: var_92 = Index
  loc_E56531: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'ED3D48
  'Data Table: 4B0888
  Dim var_98 As TextBox
  loc_ED3CAA: If (CLng(Shift) = &H1B) Then
  loc_ED3CAD:   Call Proc_54_36_DFD2F0()
  loc_ED3CB2:   Exit Sub
  loc_ED3CB3: End If
  loc_ED3CC2: If ((KeyCode = CInt(0)) And (Shift = &HD)) Then
  loc_ED3CCF:   Set var_88 = Me.Txt
  loc_ED3CD5:   Call 0.Method_Txt_KeyDown0 (KeyCode)
  loc_ED3CF5:   Set var_94 = Me.Txt
  loc_ED3CFB:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_98)
  loc_ED3D03:   var_98.Text = Proc_6_33_1512840(var_8C)
  loc_ED3D1B:   Call Cmd_UnknownEvent_9()
  loc_ED3D29:   Set var_88 = Me.Cmd
  loc_ED3D2F:   Call 0.Method_Txt_KeyDown0 (0, var_8C)
  loc_ED3D37:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001(0)
  loc_ED3D46: End If
  loc_ED3D46: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E3E8D8
  'Data Table: 4B0888
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_E3E8A8: On Error Goto loc_E3E8CF
  loc_E3E8AE: Proc_6_58_E054C0(arg_10)
  loc_E3E8B9: Proc_6_133_E7EF78(var_94)
  loc_E3E8C2: arg_10 = CInt(var_94)
  loc_E3E8CB: var_96 = KeyAscii
  loc_E3E8CE: Exit Sub
  loc_E3E8CF: ' Referenced from: E3E8A8
  loc_E3E8CF: Proc_6_60_E62BC4(var_96, arg_10)
  loc_E3E8D4: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFFDB4
  'Data Table: 4B0888
  Dim var_86 As Integer
  loc_DFFDAF: var_86 = KeyCode
  loc_DFFDB2: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C804
  'Data Table: 4B0888
  loc_E4C7E2: Set var_88 = Me.Txt
  loc_E4C7E8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C7F6: Proc_6_73_E22704(var_8C)
  loc_E4C802: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F99F70
  'Data Table: 4B0888
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_F0 As TextBox
  Dim arg_10 As Integer
  loc_F99E10: On Error Goto loc_F99F67
  loc_F99E21: If (Cancel = CInt(0)) Then
  loc_F99E31:   Set var_8C = Me.Txt
  loc_F99E37:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F99E6F:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_F99E84:     Set var_8C = Me.Txt
  loc_F99E8A:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F99E92:     var_90.Text = CStr(MemVar_1F920EC)
  loc_F99EA4:   Else
  loc_F99EAE:     Set var_8C = Me.Txt
  loc_F99EB4:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F99ED4:     Set var_EC = Me.Txt
  loc_F99EDA:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_F99EE2:     var_F0.Text = Proc_6_33_1512840(var_90)
  loc_F99EF5:   End If
  loc_F99F02:   Set var_8C = Me.Txt
  loc_F99F08:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F99F39:   If (CDate(CDate(var_90.Text)) < Date) Then
  loc_F99F46:     Set var_8C = Me.Txt
  loc_F99F4C:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F99F54:     var_90.SetFocus
  loc_F99F62:     arg_10 = &HFF
  loc_F99F65:     Exit Sub
  loc_F99F66:   End If
  loc_F99F66: End If
  loc_F99F66: Exit Sub
  loc_F99F67: ' Referenced from: F99E10
  loc_F99F67: Proc_6_60_E62BC4(arg_10)
  loc_F99F6C: Exit Sub
  loc_F99F6D: var_86 = 
End Sub

Private Sub CmdDown_UnknownEvent_9 'F00430
  'Data Table: 4B0888
  Dim var_BC As Variant
  loc_F0038B: If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_F003A7:   var_BC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_F003B6:   Me.FGrid.Row = var_BC
  loc_F003DE:   var_BC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_F003ED:   Me.FGrid.ColSel = var_BC
  loc_F0041E:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_F0042D: End If
  loc_F0042D: Exit Sub
End Sub

Private Sub Form_Load() 'F32B50
  'Data Table: 4B0888
  Dim var_88 As Variant
  Dim var_AC As Variant
  loc_F32A30: On Error Goto loc_F32B4A
  loc_F32A3A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_F32A4D: Me.FrParameter.BackColor = CLng(MemVar_1F921B0)
  loc_F32A68: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_F32A78: global_112 = &HFDC293
  loc_F32A8A: Set var_88 = Me.Label2
  loc_F32A90: Call 0.Method_Form_Load0 (4, var_AC)
  loc_F32A98: var_AC.BackColor = global_112
  loc_F32AD8: Set var_88 = Me.Txt
  loc_F32ADE: Call 0.Method_Form_Load0 (CInt(0), var_AC, CStr(MemVar_1F920EC), &HFFFFFF)
  loc_F32AE6: var_AC.Text = &H40C0
  loc_F32B0B: Proc_6_23_DFBA28(Me, 0, 0)
  loc_F32B1A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), &HFF00)
  loc_F32B32: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_F32B3A: Call Proc_54_30_1036054(global_112)
  loc_F32B44: Call Cmd_UnknownEvent_9()
  loc_F32B49: Exit Sub
  loc_F32B4A: ' Referenced from: F32A30
  loc_F32B4A: Proc_6_60_E62BC4(0)
  loc_F32B4F: Exit Sub
End Sub

Private Sub Form_Resize() 'F90E00
  'Data Table: 4B0888
  Dim var_94 As Variant
  loc_F90CAF: Me.FGrid.Width = CVar(CDbl(16150))
  loc_F90CE1: Call 0.Method_arg_108 (var_AC)
  loc_F90CF1: var_94 = CVar(((var_AC - Me.FrLabel.Height) - Me.FrParameter.Height)) 'Single
  loc_F90D00: Me.FGrid.Height = CVar(CDbl(16150))
  loc_F90D32: Me.FGrid.Left = CVar(Me.FrParameter.Left)
  loc_F90D69: var_94 = CVar((Me.FrParameter.Top + Me.FrParameter.Height)) 'Single
  loc_F90D78: Me.FGrid.Top = CVar(Me.FrParameter.Left)
  loc_F90DA5: Me.FrLabel.Left = Me.FrParameter.Left
  loc_F90DE8: Me.FrLabel.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_F90DFD: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0DFB4
  'Data Table: 4B0888
  loc_E0DFAB: Set global_104 = Nothing
  loc_E0DFB2: Exit Sub
End Sub

Private Sub Form_Activate() 'E1721C
  'Data Table: 4B0888
  loc_E17208: Set var_88 = Me.FGrid
  loc_E17219: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E299A4
  'Data Table: 4B0888
  loc_E2997C: On Error Goto loc_E2999C
  loc_E29993: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2999B: Exit Sub
  loc_E2999C: ' Referenced from: E2997C
  loc_E2999C: Proc_6_60_E62BC4(Shift)
  loc_E299A1: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E17184
  'Data Table: 4B0888
  loc_E17179: Me.Global.Unload Me
  loc_E17181: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 '100FD08
  'Data Table: 4B0888
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_B8 As Long
  Dim var_D8 As Long
  Dim var_8C As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_94 As TextBox
  loc_100FAFB: var_86 = KeyCode
  loc_100FB04: If (var_86 = 0) Then
  loc_100FB12:   Set var_8C = Me.Txt
  loc_100FB18:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_100FB29:   Set var_94 = var_90
  loc_100FB41:   If (Proc_6_27_EA565C(var_94, "Start Date") = 0) Then
  loc_100FB44:     Exit Sub
  loc_100FB45:   End If
  loc_100FB53:   Set var_8C = Me.Txt
  loc_100FB59:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_100FB61:   var_98 = var_90.Text
  loc_100FB69:   var_A8 = "RoomNo"
  loc_100FB7D:   Call Proc_54_37_15E021C(CDate(var_98), 1)
  loc_100FB93: Else
  loc_100FB99:   If (var_86 = 1) Then
  loc_100FB9C:     var_B8 = 1
  loc_100FBA5:     var_D8 = 1
  loc_100FBB8:     var_F8 = Me.FGrid.ColHeaderCaption)
  loc_100FBD2:     Set var_90 = Me.Txt
  loc_100FBD8:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_94, var_98, var_F8)
  loc_100FBE0:     var_D8 = var_94.Text
  loc_100FC1B:     If (CDate(Right(CVar(CStr(var_F8)), 9)) <> CDate(var_98)) Then
  loc_100FC1E:       var_B8 = 1
  loc_100FC3A:       var_F8 = Me.FGrid.ColHeaderCaption)
  loc_100FC76:       Call Proc_54_37_15E021C(CDate((CDate(Right(CVar(CStr(var_F8)), 9)) - CDbl(1))), &HFF, "RoomNo", var_F8, 1)
  loc_100FC8C:     End If
  loc_100FC8F:   Else
  loc_100FC95:     If (var_86 = 2) Then
  loc_100FC98:       var_B8 = 1
  loc_100FCB4:       var_F8 = Me.FGrid.ColHeaderCaption)
  loc_100FCF0:       Call Proc_54_37_15E021C(CDate((CDate(Right(CVar(CStr(var_F8)), 9)) + CDbl(1))), 1, "RoomNo", var_F8, &H1E)
  loc_100FD06:     End If
  loc_100FD06:   End If
  loc_100FD06: End If
  loc_100FD06: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F0F838
  'Data Table: 4B0888
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F0F766: Set var_88 = Me.TxtGrid
  loc_F0F76C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_F0F77A: Proc_6_74_E226B0(var_8C)
  loc_F0F786: Call Proc_54_36_DFD2F0(var_8C)
  loc_F0F797: If (Index = 0) Then
  loc_F0F7AD:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F0F7EC:   Set var_108 = Me.TxtGrid
  loc_F0F7F2:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_F0F7FA:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_F0F82B:   var_114 = CLng(Me.FGrid.Col)
  loc_F0F834: End If
  loc_F0F834: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'F035A8
  'Data Table: 4B0888
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_F034DC: If (KeyCode = 0) Then
  loc_F034E9:   If (CLng(Shift) = &H1B) Then
  loc_F034F9:     Set var_8C = Me.TxtGrid
  loc_F034FF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_F03519:     Set var_98 = Me.TxtGrid
  loc_F0351F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_F03527:     var_9C.Text = var_90.Tag
  loc_F03543:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_F03548:     Call Proc_54_36_DFD2F0(arg_14)
  loc_F03551:     Set var_8C = Me.FGrid
  loc_F0356E:     Set var_8C = Me.TxtGrid
  loc_F03574:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_F0357C:     var_90.Visible = FGrid.DispID_8001
  loc_F03588:     Exit Sub
  loc_F03589:   End If
  loc_F0359C:   var_B0 = CLng(Me.FGrid.Col)
  loc_F035A5: End If
  loc_F035A5: Exit Sub
  loc_F035A6: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E53254
  'Data Table: 4B0888
  Dim var_A0 As Long
  loc_E53223: Proc_6_58_E054C0(arg_10)
  loc_E53234: If (KeyAscii = 0) Then
  loc_E5324A:   var_A0 = CLng(Me.FGrid.Col)
  loc_E53253: End If
  loc_E53253: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E54B3C
  'Data Table: 4B0888
  Dim var_A0 As Long
  loc_E54B04: On Error Goto loc_E54B33
  loc_E54B13: If (KeyCode = 0) Then
  loc_E54B29:   var_A0 = CLng(Me.FGrid.Col)
  loc_E54B32: End If
  loc_E54B32: Exit Sub
  loc_E54B33: ' Referenced from: E54B04
  loc_E54B33: Proc_6_60_E62BC4(var_A0)
  loc_E54B38: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E2226C
  'Data Table: 4B0888
  Dim arg_10 As Integer
  loc_E22254: If (Cancel = 0) Then
  loc_E2225D:   Call Proc_54_32_E54BAC(Cancel, var_88)
  loc_E22266:   arg_10 = Not(var_88)
  loc_E22269: End If
  loc_E22269: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E60EB4
  'Data Table: 4B0888
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E60E7F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60E92: Set var_A8 = Me.TxtGrid
  loc_E60E98: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60EA0: var_AC.Visible = False
  loc_E60EAC: Call Proc_54_36_DFD2F0()
  loc_E60EB1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6A200
  'Data Table: 4B0888
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6A1BC: Set var_88 = Me.TxtGrid
  loc_E6A1C2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6A1DC: If (var_8C.Visible = 0) Then
  loc_E6A1F5:   Me.FGrid.BackColorSel = CVar(CLng(global_52))
  loc_E6A1FD: End If
  loc_E6A1FD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '103C010
  'Data Table: 4B0888
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_103BDC4: Set var_88 = Me.TopCtrl1
  loc_103BDCA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103BE0F: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_103BE18:   Call Form_KeyDown(Cancel, arg_10)
  loc_103BE1D: End If
  loc_103BE21: Set var_88 = Me.TopCtrl1
  loc_103BE27: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103BE40: If (CStr() = "Browse") Then
  loc_103BE43:   Exit Sub
  loc_103BE44: End If
  loc_103BEB8: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_103BED1:   Me.FGrid.CellBackColor = CVar(CLng(global_52))
  loc_103BEE1:   var_9C = "+{Tab}"
  loc_103BEE7:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_103BEF1:   Cancel = 0
  loc_103BEF7: Else
  loc_103BF01:   var_B0 = Me.FGrid.Rows
  loc_103BF4E:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_103BF67:     Me.FGrid.CellBackColor = CVar(CLng(global_52))
  loc_103BF7D:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_103BF87:     Cancel = 0
  loc_103BF8A:   End If
  loc_103BF8A: End If
  loc_103BF90: global_56 = Cancel
  loc_103BFB6: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_103BFDA: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_103BFF0:   var_EC = CLng(Me.FGrid.Col)
  loc_103BFF9: End If
  loc_103BFFF: If (Cancel = &HD) Then
  loc_103C007:   global_58 = 0
  loc_103C00A: End If
  loc_103C00C: Cancel = 0
  loc_103C00F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0C938
  'Data Table: 4B0888
  loc_E0C929: Call FGrid_UnknownEvent_C()
  loc_E0C933: global_58 = 0
  loc_E0C936: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'E4CC18
  'Data Table: 4B0888
  loc_E4CC0E: If (CLng(Cancel) = &HD) Then
  loc_E4CC11:   Call Proc_54_31_13020BC(CLng(Me.FGrid.Col))
  loc_E4CC16: End If
  loc_E4CC16: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E40558
  'Data Table: 4B0888
  Dim var_8C As TextBox
  loc_E4052C: Call Proc_54_36_DFD2F0()
  loc_E4053C: Set var_88 = Me.TxtGrid
  loc_E40542: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4054A: var_8C.Visible = False
  loc_E40556: Exit Sub
End Sub

Private Sub BTNPRINT_UnknownEvent_9 '13F9B1C
  'Data Table: 4B0888
  Dim unk_4B088E As Connection15
  Dim var_A8 As Variant
  Dim var_94 As Recordset15
  Dim var_BC As Fields15
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_C8 As Fields15
  Dim var_EC As Variant
  Dim var_12C As Variant
  Dim var_10C As String
  Dim var_C4 As String
  Dim var_FC As Variant
  Dim MemVar_1F923C0 As String
  Dim MemVar_1F923C4 As String
  Dim MemVar_1F923CC As String
  Dim var_C0 As TextBox
  Dim var_13C As Variant
  Dim var_20C As Variant
  loc_13F9138: On Error Goto loc_13F9B15
  loc_13F9140: global_96 = &HFF
  loc_13F9159: unk_4B088E.Execute "Select * From FAEnviro", var_B8, -1
  loc_13F9164: Set var_94 = var_BC
  loc_13F917C: var_BC = var_94.Fields
  loc_13F91E0: var_13C = IIf((Proc_6_38_E68A98(CVar(var_BC.Item("daterfill")), var_BC) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("daterfill")))))
  loc_13F91E9: MemVar_1F923C0 = CStr(var_13C)
  loc_13F927D: var_13C = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F923C0) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")))))
  loc_13F9286: MemVar_1F923C4 = CStr(var_13C)
  loc_13F931A: var_13C = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F923C4) = vbNullString), "M", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")))))
  loc_13F935B: var_C0 = var_94.Fields.Item("linefiller")
  loc_13F9372: var_D8 = "linefiller"
  loc_13F937E: var_C8 = var_94.Fields
  loc_13F9386: var_DC = var_C8.Item(var_D8)
  loc_13F939A: var_10C = "-"
  loc_13F93B0: var_FC = (Proc_6_38_E68A98(CVar(var_C0), CStr(var_13C)) = vbNullString)
  loc_13F93C0: MemVar_1F923CC = CStr(IIf(var_FC, "M", CVar(Proc_6_38_E68A98(CVar(var_DC)))))
  loc_13F93E7: global_88 = "23 Day Room Availability Forecast (Report)"
  loc_13F93EE: var_88 = "Day23RoomAvail"
  loc_13F93F7: var_A8 = global_88
  loc_13F940E: global_92 = CStr(Ucase(var_A8))
  loc_13F942A: If ((global_96 = 0) Or (var_88 = vbNullString)) Then
  loc_13F942D:   Exit Sub
  loc_13F942E: End If
  loc_13F942E: Call Day23RoomAvail()
  loc_13F945A: Set var_BC = global_104 
  loc_13F9461: CreateFieldDefFile(var_BC, MemVar_1F920B4 & "\" & var_88 & ".ttx", &HFF)
  loc_13F9493: var_C4 = "\" & var_88
  loc_13F94A7: Call 0.Method_arg_1C (MemVar_1F920B4 & var_C4 & ".RPT", var_A8, var_BC)
  loc_13F94B2: MemVar_1F921E4 = var_BC
  loc_13F94DE: Call 0.Method_arg_64 (var_BC, CVar(var_BC), var_D8)
  loc_13F94E6: Call 0.Method_arg_2C (var_FC, MemVar_1F923CC)
  loc_13F94F4: Call 0.Method_arg_150 (global_96)
  loc_13F950A: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13F9512: Call 0.Method_arg_24 (var_8A)
  loc_13F951E: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_13F9537:   Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13F953F:   Call 0.Method_arg_20 (var_C0)
  loc_13F9547:   Call 0.Method_arg_30 (var_C4)
  loc_13F955D:   var_160 = Ucase(CVar(var_C4)) 'Variant
  loc_13F958D:   If (var_160 = Ucase("Title")) Then
  loc_13F95B4:     Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13F95BC:     Call 0.Method_arg_20 (var_C0)
  loc_13F95C4:     Call 0.Method_arg_38 ("'" & global_88 & "'")
  loc_13F95DA:   Else
  loc_13F95FC:     If (var_160 = Ucase("BetweenDate")) Then
  loc_13F9610:       Set var_BC = Me.Txt
  loc_13F9616:       Call 0.Method_BTNPRINT_UnknownEvent_90 (CInt(0), var_C0)
  loc_13F9641:       Call 0.Method_arg_90 (var_C8, CLng(var_8A))
  loc_13F9649:       Call 0.Method_arg_20 (var_DC)
  loc_13F9651:       Call 0.Method_arg_38 ("'From Date " & var_C0.Text & "'")
  loc_13F966D:     Else
  loc_13F968F:       If (var_160 = Ucase("Dater")) Then
  loc_13F96B3:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13F96BB:         Call 0.Method_arg_20 (var_C0)
  loc_13F96C3:         Call 0.Method_arg_38 ("'" & MemVar_1F923C0 & "'")
  loc_13F96D9:       Else
  loc_13F96FB:         If (var_160 = Ucase("Pager")) Then
  loc_13F9705:           var_C4 = "'" & MemVar_1F923C4
  loc_13F971F:           Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13F9727:           Call 0.Method_arg_20 (var_C0)
  loc_13F972F:           Call 0.Method_arg_38 (var_C4 & "'")
  loc_13F9742:         End If
  loc_13F9742:       End If
  loc_13F9742:     End If
  loc_13F9742:   End If
  loc_13F9745: Next var_150 'Integer
  loc_13F975B: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13F9763: Call 0.Method_arg_24 (var_8A)
  loc_13F976F: For var_166 =  To CInt(var_14C): 1 = var_166 'Integer
  loc_13F977C:   For var_16A = 1 To &H17: var_96 = var_16A 'Integer
  loc_13F978D:     Set var_BC = Me.Txt
  loc_13F9793:     Call 0.Method_BTNPRINT_UnknownEvent_90 (CInt(0), var_C0)
  loc_13F97AD:     var_EC = DateAdd("d", CDbl((var_96 - 1)), CVar(var_C0))
  loc_13F97BA:     global_80 = CDate(Ucase("Pager"))
  loc_13F97DA:     Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13F97E2:     Call 0.Method_arg_20 (var_C4, global_80)
  loc_13F97EA:     Call 0.Method_arg_30 (1)
  loc_13F9800:     var_17C = Ucase(CVar(var_C4)) 'Variant
  loc_13F9837:     If (var_17C = Ucase(CVar("Day" & CStr(var_96)))) Then
  loc_13F9896:       Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13F989E:       Call 0.Method_arg_20 (CStr(1 & Ucase(Format(global_80, "DDD")) & "'"), 1)
  loc_13F98A6:       Call 0.Method_arg_38 ("'")
  loc_13F98C5:     Else
  loc_13F98EE:       If (var_17C = Ucase(CVar("Date" & CStr(var_96)))) Then
  loc_13F990E:         var_12C = CVar(CStr(Day(global_80))) 'String
  loc_13F9936:         var_11C = Space((2 - Len(CStr(Day(global_80)))))
  loc_13F993E:         var_13C = (var_12C + Ucase(Format(global_80, "DDD")))
  loc_13F9974:         var_1CC = Space((2 - Len(CStr(Month(global_80)))))
  loc_13F9997:         var_20C = (var_1CC + CVar(CStr(Month(global_80))))
  loc_13F99BC:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13F99C4:         Call 0.Method_arg_20 (var_C0)
  loc_13F99CC:         Call 0.Method_arg_38 (CStr("'" & 1 & Ucase(Format(global_80, "DDD")) & "'" & vbNullString & var_20C & "'"))
  loc_13F9A08:       End If
  loc_13F9A08:     End If
  loc_13F9A0B:   Next var_16A 'Integer
  loc_13F9A13: Next var_166 'Integer
  loc_13F9A1E: If (Cancel = 1) Then
  loc_13F9A2E:   ReDim Preserve var_90(0 To 1)
  loc_13F9A49:   Set var_BC = Me.Txt
  loc_13F9A4F:   Call 0.Method_BTNPRINT_UnknownEvent_90 (CInt(0), var_C0)
  loc_13F9A72:   var_90(0) = vbNullString & var_C0.Text & vbNullString
  loc_13F9A83: End If
  loc_13F9A89: If (Cancel = 1) Then
  loc_13F9AAD:   MsgBox("Please set 80 col. in your Printer & put it on.", &H40, "Paper Setting", Ucase(Format(global_80, "DDD")), var_12C)
  loc_13F9ABD:   Call Proc_54_39_16B8084()
  loc_13F9AC5: Else
  loc_13F9ACA:   Set var_C0 = Nothing
  loc_13F9AE1:   Set var_BC = MemVar_1F921E4 
  loc_13F9AED:   Proc_6_99_1483714(var_BC, Cancel, global_92)
  loc_13F9AF8:   MemVar_1F921E4 = var_BC
  loc_13F9B03: End If
  loc_13F9B08: global_100 = 0
  loc_13F9B10: MemVar_1F921E4 = Nothing
  loc_13F9B14: Exit Sub
  loc_13F9B15: ' Referenced from: 13F9138
  loc_13F9B15: Proc_6_60_E62BC4(global_100, &HFF)
  loc_13F9B1A: Exit Sub
End Sub

Public Sub Day23RoomAvail() '110412C
  'Data Table: 4B0888
  Dim var_A4 As Recordset15
  Dim var_C4 As String
  Dim var_B4 As Variant
  Dim var_8C As Variant
  Dim Me As Variant
  loc_1103E00: On Error Goto loc_110411D
  loc_1103E1D: Call Proc_54_40_F89DF4(New)
  loc_1103E38: Set var_8C = Me.FGrid
  loc_1103E54: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_1103E60:   Set var_A4 = var_8C 
  loc_1103E6F:   var_A4.AddNew var_B4, var_C4
  loc_1103E99:   var_A4.Fields.Item("mLine").Value = vbNullString
  loc_1103EF7:   var_A4.Fields.Item("RoomNo").Value = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), 0, CVar(CLng(var_86))))
  loc_1103F5F:   var_A4.Fields.Item("RoomCat").Value = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_86))))
  loc_1103F7D:   For var_120 = 5 To &H1B: var_88 = var_120 'Integer
  loc_1103FC7:     If (Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86))) = "@  RFF") Then
  loc_1103FF9:       var_A4.Fields.Item(CVar("Day" & CStr(var_88))).Value = "***"
  loc_110400E:     Else
  loc_1104080:       var_A4.Fields.Item(CVar("Day" & CStr(var_88))).Value = Left(CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86)))), &HF)
  loc_11040A2:     End If
  loc_11040A5:   Next var_120 'Integer
  loc_11040AA:   var_C4 = "*"
  loc_11040B3:   var_B4 = "Mark"
  loc_11040CF:   var_A4.Fields.Item(var_B4).Value = var_C4
  loc_11040E6:   var_A4.Update var_B4, var_C4
  loc_11040ED:   Set var_A4 = Nothing 
  loc_11040F4: Next var_A0 'Integer
  loc_1104110: If (Me.RecordCount <= 0) Then
  loc_1104118:   global_96 = 0
  loc_110411B:   Exit Sub
  loc_110411C: End If
  loc_110411C: Exit Sub
  loc_110411D: ' Referenced from: 1103E00
  loc_1104125: Proc_6_60_E62BC4(0)
  loc_110412A: Exit Sub
End Sub

Public Property Get OpenMode() 'E040C0
  'Data Table: 4B0888
  loc_E040B9: OpenMode = global_108
End Sub

Public Property Let OpenMode(vNewValue) 'E014F0
  'Data Table: 4B0888
  loc_E014ED: Exit Sub
  loc_E014EE: Set arg_1078 = vNewValue
End Sub

Public Sub Proc_54_30_1036054
  'Data Table: 4B0888
  Dim var_9C As Variant
  Dim var_88 As Long
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_1035E16: Me.FGrid.Left = CVar(CDbl(0))
  loc_1035E31: Me.FGrid.Top = CVar(CDbl(495))
  loc_1035E3E: var_88 = &H249
  loc_1035E45: Set var_B4 = Me.FGrid
  loc_1035E5C: global_52 = CStr(CLng(var_B4.BackColor))
  loc_1035E72: var_B4.Cols = &H23
  loc_1035E77: var_9C = 0
  loc_1035E83: var_D8 = CVar(CLng(1)) 'Long
  loc_1035E88: var_F8 = "SNo"
  loc_1035E91: LateIdCallSt
  loc_1035E9C: var_9C = CVar(CLng(1)) 'Long
  loc_1035EA1: var_D8 = 0
  loc_1035EAD: LateIdCallSt
  loc_1035EB5: var_9C = 0
  loc_1035EC1: var_D8 = CVar(CLng(2)) 'Long
  loc_1035EC6: var_F8 = "Type"
  loc_1035ECF: LateIdCallSt
  loc_1035EDA: var_9C = CVar(CLng(2)) 'Long
  loc_1035EE5: var_D8 = CVar(CInt(1)) 'Integer
  loc_1035EEC: LateIdCallSt
  loc_1035EF7: var_9C = CVar(CLng(2)) 'Long
  loc_1035F02: var_D8 = CVar(CInt(1)) 'Integer
  loc_1035F09: LateIdCallSt
  loc_1035F14: var_9C = CVar(CLng(2)) 'Long
  loc_1035F19: var_D8 = 0
  loc_1035F25: LateIdCallSt
  loc_1035F2D: var_9C = 0
  loc_1035F39: var_D8 = CVar(CLng(3)) 'Long
  loc_1035F3E: var_F8 = "Rate"
  loc_1035F47: LateIdCallSt
  loc_1035F52: var_9C = CVar(CLng(3)) 'Long
  loc_1035F5D: var_D8 = CVar(CInt(7)) 'Integer
  loc_1035F64: LateIdCallSt
  loc_1035F6F: var_9C = CVar(CLng(3)) 'Long
  loc_1035F7A: var_D8 = CVar(CInt(7)) 'Integer
  loc_1035F81: LateIdCallSt
  loc_1035F8C: var_9C = CVar(CLng(3)) 'Long
  loc_1035F91: var_D8 = 0
  loc_1035F9D: LateIdCallSt
  loc_1035FAC: For var_10C = 5 To &H22: var_8A = var_10C 'Byte
  loc_1035FB2:   var_9C = 0
  loc_1035FC0:   var_D8 = CVar(CLng(var_8A)) 'Long
  loc_1035FD2:   var_C4 = CVar("Day" & CStr(var_8A)) 'String
  loc_1035FD9:   LateIdCallSt
  loc_1035FEC:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_1035FF7:   var_D8 = CVar(CInt(4)) 'Integer
  loc_1035FFE:   LateIdCallSt
  loc_103600B:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_1036016:   var_D8 = CVar(CInt(1)) 'Integer
  loc_103601D:   LateIdCallSt
  loc_103602A:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_1036039:   LateIdCallSt
  loc_1036044: Next var_10C 'Byte
  loc_103604C: Set var_B4 = Nothing 
  loc_1036050: Exit Sub
End Sub

Public Sub Proc_54_31_13020BC
  'Data Table: 4B0888
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_16C As Variant
  Dim var_228 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_218 As Variant
  Dim var_248 As Variant
  Dim var_340 As Variant
  loc_1301A43: If (CLng(Me.FGrid.Col) = 4) Then
  loc_1301A46:   Exit Sub
  loc_1301A47: End If
  loc_1301A5A: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301A72: var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1301A81: var_108 = Me.FGrid.TextMatrix)
  loc_1301A96: var_118 = CVar(CStr(var_108)) 'String
  loc_1301AC2: If (Left(var_118, 1) = "@") Then
  loc_1301AE6:   MsgBox("Selected Room is currently Out Of Order ", 0, "<<<<<<<<< Out Of Order >>>>>>>>>", var_108, var_118)
  loc_1301AF6:   Exit Sub
  loc_1301AF7: End If
  loc_1301B17: If (CLng(Me.FGrid.CellBackColor) = global_116) Then
  loc_1301B3B:   MsgBox("Selected Room is not Vacant ", 0, "<<<<<<<<< Room Is Not Vacant >>>>>>>>>", var_108, var_118)
  loc_1301B4B:   Exit Sub
  loc_1301B4C: End If
  loc_1301B6C: If (CLng(Me.FGrid.CellBackColor) = global_112) Then
  loc_1301B90:   MsgBox("Selected Room is Reserved ", 0, "<<<<<<<<< Room Is Not Vacant >>>>>>>>>", var_108, var_118)
  loc_1301BA0:   Exit Sub
  loc_1301BA1: End If
  loc_1301BB4: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301BCC: var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1301C1C: If (Right(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "#") Then
  loc_1301C40:   For var_14C = CInt(CLng(Me.FGrid.Col)) To 5 Step &HFF: var_8A = var_14C 'Integer
  loc_1301C59:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301C71:     var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1301CC1:     If (Right(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "#") Then
  loc_1301CC4:       var_C4 = 1
  loc_1301CD4:       var_E4 = CVar(CLng((var_8A - 4))) 'Long
  loc_1301D07:       var_88 = CStr(Right(CVar(CStr(Me.FGrid.ColHeaderCaption))), 8))
  loc_1301D19:     Else
  loc_1301D19:       Exit For
  loc_1301D1C:     End If
  loc_1301D1F:   Next var_14C 'Integer
  loc_1301D24:   ' Referenced from: 1301D19
  loc_1301D27: Else
  loc_1301D27:   var_C4 = 1
  loc_1301D49:   var_E4 = CVar((CLng(Me.FGrid.Col) - 4)) 'Long
  loc_1301D7C:   var_88 = CStr(Right(CVar(CStr(Me.FGrid.ColHeaderCaption))), 9))
  loc_1301D91: End If
  loc_1301D9D: If (global_108 = 1) Then
  loc_1301DB3:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301DBB:   var_E4 = CVar(CLng(1)) 'Long
  loc_1301DDB:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1301DF7:   var_138 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301DFF:   var_16C = CVar(CLng(2)) 'Long
  loc_1301E19:   var_228 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1301E37:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301E3F:   var_1C4 = CVar(CLng(0)) 'Long
  loc_1301E5F:   var_208 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1301E6E:   Call unk_4B08EB.SEARCHBACKRoomNo
  loc_1301E9F: Else
  loc_1301EB2:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301EBA:   var_E4 = CVar(CLng(1)) 'Long
  loc_1301EF2:   var_138 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301EFA:   var_16C = CVar(CLng(2)) 'Long
  loc_1301F28:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301F30:   var_1C4 = CVar(CLng(0)) 'Long
  loc_1301F68:   var_218 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301F80:   var_248 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1301FE9:   var_340 = Me.FGrid.TextMatrix)
  loc_1302049:   Proc_146_0_E7D9C8(1, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(Me.FGrid.TextMatrix)), var_88, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(IIf((Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "@"), vbNullString, CVar(CStr(var_340)))), CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_13020A3: End If
  loc_13020B0: Me.var_340.Unload Me
  loc_13020B8: Exit Sub
End Sub

Public Sub Proc_54_32_E54BAC(arg_C) 'E54BAC
  'Data Table: 4B0888
  Dim var_A0 As Long
  loc_E54B80: If (arg_C = 0) Then
  loc_E54B96:   var_A0 = CLng(Me.FGrid.Col)
  loc_E54B9F: End If
  loc_E54BA4: Proc_54_32_E54BAC = &HFF
End Sub

Public Sub Proc_54_33_E097FC
  'Data Table: 4B0888
  loc_E097F5: Proc_54_33_E097FC = &HFF
End Sub

Public Sub Proc_54_34_F1D6FC
  'Data Table: 4B0888
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_F1D60A: Set var_8C = Me.Txt
  loc_F1D610: Call 0.Method_Proc_54_34_F1D6FCC (var_8E, var_86)
  loc_F1D620: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1D636:   Set var_8C = Me.Txt
  loc_F1D63C:   Call 0.Method_Proc_54_34_F1D6FC0 (CInt(var_86), var_98)
  loc_F1D644:   var_98.Text = vbNullString
  loc_F1D660:   Set var_8C = Me.Txt
  loc_F1D666:   Call 0.Method_Proc_54_34_F1D6FC0 (CInt(var_86), var_98)
  loc_F1D66E:   var_98.Tag = vbNullString
  loc_F1D67D: Next var_92 'Byte
  loc_F1D696: Me.FGrid.Rows = 1
  loc_F1D6BC: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_F1D6C4: Set var_98 = Me.FGrid
  loc_F1D6F1: Me.FGrid.FixedRows = 1
  loc_F1D6F9: Exit Sub
End Sub

Public Sub Proc_54_35_E7C484(arg_C) 'E7C484
  'Data Table: 4B0888
  Dim var_98 As TextBox
  loc_E7C432: Set var_8C = Me.Txt
  loc_E7C438: Call 0.Method_Proc_54_35_E7C484C (var_8E, var_86)
  loc_E7C448: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7C45E:   Set var_8C = Me.Txt
  loc_E7C464:   Call 0.Method_Proc_54_35_E7C4840 (CInt(var_86), var_98)
  loc_E7C46C:   var_98.Enabled = arg_C
  loc_E7C47B: Next var_92 'Byte
  loc_E7C481: Exit Sub
End Sub

Public Sub Proc_54_36_DFD2F0
  'Data Table: 4B0888
  Dim arg_7FFF As Double
  loc_DFD2EC: Exit Sub
  loc_DFD2ED: arg_7FFF = 
End Sub

Public Sub Proc_54_37_15E021C(arg_C, arg_10) '15E021C
  'Data Table: 4B0888
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_BA As Integer
  Dim var_BC As Integer
  Dim var_BE As Integer
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_F4 As String
  Dim var_100 As String
  Dim var_114 As String
  Dim unk_4B088E As Connection15
  Dim var_124 As Variant
  Dim var_168 As Variant
  Dim var_198 As Variant
  Dim var_178 As Variant
  Dim var_1D8 As Variant
  Dim var_B8 As Double
  Dim var_1E8 As Long
  Dim var_274 As Variant
  Dim var_EC As Variant
  Dim var_144 As Variant
  Dim var_188 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_254 As Variant
  Dim var_294 As Variant
  Dim var_CC As Recordset15
  Dim var_1EC As Variant
  Dim var_C8 As Integer
  Dim var_1A8 As Variant
  Dim var_C6 As Integer
  loc_15DEEF7: Me.FGrid.FixedCols = 0
  loc_15DEF12: Me.FGrid.FixedRows = 1
  loc_15DEF2D: Me.FGrid.RowHeightMin = &H1F4
  loc_15DEF3E: Set var_F0 = Me.FGrid
  loc_15DEF44: var_F0.Redraw = False
  loc_15DEF52: If (arg_10 = 1) Then
  loc_15DEF59:   var_BA = CInt(5)
  loc_15DEF60:   var_BC = CInt(&H22)
  loc_15DEF65:   var_BE = 1
  loc_15DEF6B:   var_8C = arg_C
  loc_15DEF76:   var_94 = CDate((arg_C + CDbl(&H1E)))
  loc_15DEF7C: Else
  loc_15DEF80:   var_BA = CInt(&H22)
  loc_15DEF87:   var_BC = CInt(5)
  loc_15DEF8C:   var_BE = &HFF
  loc_15DEF97:   var_8C = CDate((arg_C - CDbl(&H1D)))
  loc_15DEFA2:   var_94 = CDate((arg_C + CDbl(1)))
  loc_15DEFA5: End If
  loc_15DEFC1: var_F4 = "SHAPE {select R.Code as RoomNo,RC.Code as RoomCat,RC.Name as Category,RL.Rate2 as Rate from " & "(RoomMast R left Join RoomCat RC on RC.Code=R.RoomCat) "
  loc_15DEFD6: var_100 = var_F4 & "Left Join RateList RL on RC.Code=RL.RoomCat Where R.logsite_Code='" & MemVar_1F92078 & "' and R.Type='RO' And R.InclCount='Y' And RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' Order By R.Code} "
  loc_15DEFE6: Call Proc_54_38_F9EF68(CStr(var_8C), var_104, var_100 & "APPEND ({SELECT Distinct r.Code as RoomNo, ", var_124, -1, var_F0, var_94, var_8C)
  loc_15DEFFD: var_114 = var_BE & var_104 & " FROM ((RoomMast R Left Join Booking B On B.OccRoom=R.Code) " & "Left Join GuestFolio GF on GF.BookingDocid=B.DociD)Left Join RoomOccDet RO on RO.Docid=GF.DocId Where (R.Type='RO' or r.Type is Null) And R.InclCount='Y' Group By r.Code} RELATE RoomNo TO RoomNo) AS AA"
  loc_15DF006: unk_4B088E.Execute var_114, var_BC, var_BA
  loc_15DF011: Set var_A0 = var_F0
  loc_15DF035: CVarUnk
  loc_15DF03A: VerifyVarObj
  loc_15DF040: Set var_F0 = Me.FGrid
  loc_15DF046: LateIdStAd
  loc_15DF07B: For var_12C = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_12C 'Long
  loc_15DF08E:   For var_134 = 5 To &H22: var_A8 = var_134 'Long
  loc_15DF0D8:     If (InStr(var_A8, CStr(Me.FGrid.TextMatrix)), "*", 0) <> 0) Then
  loc_15DF0EC:       Me.FGrid.Row = var_A4
  loc_15DF105:       Me.FGrid.Col = var_A8
  loc_15DF121:       Me.FGrid.CellBackColor = global_116
  loc_15DF13C:       Me.FGrid.CellForeColor = 0
  loc_15DF154:       Me.FGrid.CellFontName = "Arial"
  loc_15DF16E:       Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_15DF1D5:       var_198 = CVar((Len(CStr(Me.FGrid.TextMatrix))) - 1)) 'Long
  loc_15DF1F1:       var_1D8 = CVar(CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, var_198))) 'String
  loc_15DF1F9:       Set var_1EC = Me.FGrid
  loc_15DF1FF:       LateIdCallSt
  loc_15DF225:     Else
  loc_15DF259:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_15DF26D:         Me.FGrid.Row = var_A4
  loc_15DF286:         Me.FGrid.Col = var_A8
  loc_15DF2A2:         Me.FGrid.CellBackColor = global_112
  loc_15DF2BE:         Me.FGrid.CellForeColor = global_124
  loc_15DF2D6:         Me.FGrid.CellFontName = "Arial"
  loc_15DF2F0:         Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_15DF2F8:       End If
  loc_15DF2F8:     End If
  loc_15DF2FB:   Next var_134 'Long
  loc_15DF303: Next var_12C 'Long
  loc_15DF317: For var_1F4 = CLng(var_BA) To CLng(var_BC) Step CLng(var_BE): var_A4 = var_1F4 'Long
  loc_15DF325:   If (var_A4 = CLng(var_BA)) Then
  loc_15DF32B:     var_B8 = arg_C
  loc_15DF331:   Else
  loc_15DF34D:     var_B8 = CDate(DateAdd("d", CDbl(arg_10), CDate(var_B8)))
  loc_15DF357:   End If
  loc_15DF357:   var_1E8 = 1
  loc_15DF369:   var_274 = CVar((var_A4 - 4)) 'Long
  loc_15DF386:   var_124 = CDate(var_B8)
  loc_15DF39A:   var_198 = (Format(var_124, "DDD") + vbCr)
  loc_15DF3BE:   var_1D8 = Format(var_B8, "dd/MM")
  loc_15DF3C6:   var_204 = (1 + var_1D8)
  loc_15DF3DA:   var_224 = (var_204 + Space(5))
  loc_15DF406:   var_254 = (1 + Format(var_B8, "dd/MMM/yy"))
  loc_15DF40B:   var_294 = CVar(CStr(var_254)) 'String
  loc_15DF413:   Set var_F0 = Me.FGrid
  loc_15DF419:   LateIdCallSt
  loc_15DF44A:   var_DC = CVar((var_A4 - 4)) 'Long
  loc_15DF44F:   var_144 = 1
  loc_15DF458:   var_188 = &H1F4
  loc_15DF465:   Set var_F0 = Me.FGrid
  loc_15DF46B:   LateIdCallSt
  loc_15DF479: Next var_1F4 'Long
  loc_15DF492: var_F4 = "Select RoomNO as RoomCode,ChkinDt as FromDate ,dATEdiff(D,ChkInDt,DepDate) as Days,GuestProf.Name as Reasons,dateadd(D,dATEdiff(D,ChkInDt,DepDate),chkindt) as TODate From RoomOccDet left join GuestProf on GuestProf.Code=RoomOccDet.GuestProf Where RoomOccDet.Logsite_Code='" & MemVar_1F92078
  loc_15DF4A7: Proc_6_7_F25D88(var_124, var_8C, CVar(var_F4 & "' and ChkOutDate is NULL And dateadd(D,dATEdiff(D,ChkInDt,DepDate),chkindt)>="))
  loc_15DF4BD: unk_4B088E.Execute CStr(var_198 & var_124), -1, var_F0
  loc_15DF4C8: Set var_CC = var_F0
  loc_15DF4F4: If (var_CC.RecordCount > 0) Then
  loc_15DF4F7:   ' Referenced from: 15DF877
  loc_15DF506:   If Not(var_CC.EOF) Then
  loc_15DF530:     For var_2B4 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_2B4 'Long
  loc_15DF53D:       var_EC = 0
  loc_15DF59D:       If (CVar(CStr(Me.FGrid.TextMatrix))) = var_CC.Fields.Item("RoomCode").Value) Then
  loc_15DF5DA:         If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15DF640:           var_198 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) - 1)
  loc_15DF645:           var_C8 = CInt(var_198)
  loc_15DF65B:         Else
  loc_15DF6A3:           var_178 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("ToDate")), 1, 1) - 1)
  loc_15DF6A8:           var_C8 = CInt(DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1))
  loc_15DF6B5:         End If
  loc_15DF6C1:         For var_2C0 = 0 To CLng(var_C8): var_A8 = var_2C0 'Long
  loc_15DF701:           If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15DF74C:             var_178 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("FromDate")), 1, 1) + 1)
  loc_15DF755:             var_198 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) + 4)
  loc_15DF760:             var_1A8 = (var_198 + CVar(var_A8))
  loc_15DF765:             var_C6 = CInt("dd/MM")
  loc_15DF77B:           Else
  loc_15DF785:             var_C6 = CInt((5 + var_A8))
  loc_15DF788:           End If
  loc_15DF78E:           If (var_C6 > &H22) Then
  loc_15DF791:             GoTo loc_15DF867
  loc_15DF794:           End If
  loc_15DF7A7:           Me.FGrid.Col = CVar(CLng(var_C6))
  loc_15DF7C0:           Me.FGrid.Row = var_A4
  loc_15DF7DC:           Me.FGrid.CellBackColor = global_116
  loc_15DF803:           var_124 = CVar(var_CC.Fields.Item("Reasons")) 'Address
  loc_15DF81A:           Me.FGrid.Text = CVar(Proc_6_38_E68A98(var_124, var_C6, var_C6, 0, var_C8))
  loc_15DF83D:           Me.FGrid.CellFontName = "Arial"
  loc_15DF851:           Set var_F0 = Me.FGrid
  loc_15DF857:           var_F0.CellFontSize = CVar(CDbl(8))
  loc_15DF862:         Next var_2C0 'Long
  loc_15DF867:         ' Referenced from: 15DF791
  loc_15DF867:       End If
  loc_15DF86A:     Next var_2B4 'Long
  loc_15DF872:     var_CC.MoveNext
  loc_15DF877:     GoTo loc_15DF4F7
  loc_15DF87A:   End If
  loc_15DF87A: End If
  loc_15DF897: Proc_6_7_F25D88(var_124, var_8C, "Select RoomCode,FromDate ,dATEdiff(D,")
  loc_15DF8B7: Proc_6_7_F25D88(var_198, var_8C, var_1D8 & var_124 & ",Todate) as Days,Reasons,todate From RoomBlockOut Where Type='O' and ToDate>=")
  loc_15DF8BF: var_1A8 = -1 & var_198 
  loc_15DF8CD: unk_4B088E.Execute CStr("dd/MM"), var_F0, 
  loc_15DF8D8: Set var_CC = var_F0
  loc_15DF904: If (var_CC.RecordCount > 0) Then
  loc_15DF907:   ' Referenced from: 15DFC9A
  loc_15DF916:   If Not(var_CC.EOF) Then
  loc_15DF940:     For var_2C8 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_2C8 'Long
  loc_15DF94D:       var_EC = 0
  loc_15DF9AD:       If (CVar(CStr(Me.FGrid.TextMatrix))) = var_CC.Fields.Item("RoomCode").Value) Then
  loc_15DF9EA:         If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15DFA4C:           var_C8 = CInt(DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1))
  loc_15DFA62:         Else
  loc_15DFAA6:           var_C8 = CInt(DateDiff("d", var_8C, CVar(var_CC.Fields.Item("ToDate")), 1, 1))
  loc_15DFAB3:         End If
  loc_15DFABF:         For var_2D0 = 0 To CLng(var_C8): var_A8 = var_2D0 'Long
  loc_15DFAFF:           If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15DFB4A:             var_178 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("FromDate")), 1, 1) + 1)
  loc_15DFB53:             var_198 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) + 4)
  loc_15DFB5E:             var_1A8 = (var_198 + CVar(var_A8))
  loc_15DFB63:             var_C6 = CInt("dd/MM")
  loc_15DFB79:           Else
  loc_15DFB83:             var_C6 = CInt((5 + var_A8))
  loc_15DFB86:           End If
  loc_15DFB8C:           If (var_C6 > &H22) Then
  loc_15DFB8F:             GoTo loc_15DFC8A
  loc_15DFB92:           End If
  loc_15DFBA5:           Me.FGrid.Col = CVar(CLng(var_C6))
  loc_15DFBBE:           Me.FGrid.Row = var_A4
  loc_15DFBDA:           Me.FGrid.CellBackColor = global_120
  loc_15DFBF5:           Me.FGrid.CellForeColor = &HFFFF
  loc_15DFC0D:           Me.FGrid.CellFontName = "Webdings"
  loc_15DFC37:           var_124 = CVar(var_CC.Fields.Item("Reasons")) 'Address
  loc_15DFC52:           Me.FGrid.Text = CVar(var_C8 & Proc_6_38_E68A98(var_124, "@  ", var_C6, var_C6, 0))
  loc_15DFC74:           Set var_F0 = Me.FGrid
  loc_15DFC7A:           var_F0.CellFontSize = CVar(CDbl(&H14))
  loc_15DFC85:         Next var_2D0 'Long
  loc_15DFC8A:         ' Referenced from: 15DFB8F
  loc_15DFC8A:       End If
  loc_15DFC8D:     Next var_2C8 'Long
  loc_15DFC95:     var_CC.MoveNext
  loc_15DFC9A:     GoTo loc_15DF907
  loc_15DFC9D:   End If
  loc_15DFC9D: End If
  loc_15DFCB1: var_F4 = "Select RoomNO as RoomCode,ArrDate as FromDate ,dATEdiff(D,ArrDate,DepDate) as Days,GuestProf.Name as Reasons,dateadd(D,dATEdiff(D,ArrDate,DepDate),ArrDate) as TODate,IsNull(P.Advance,0) Advance From ViewBooking B left join GuestProf on GuestProf.Code=B.GuestProf LEFT JOIN (Select RefDocId,IsNull(Sum(AmtCr),0) Advance From PayCharge Where VType In ('ADRES','ARRES') And Logsite_Code='" & MemVar_1F92078
  loc_15DFCC6: var_168 = CVar(var_F4 & "' Group By RefDocId) P ON B.DocId = P.RefDocId Where B.Cancel='N' And B.Logsite_Code='" & MemVar_1F92078 & "' And dateadd(D,dATEdiff(D,ArrDate,DepDate),ArrDate)>=") 'String
  loc_15DFCD4: Proc_6_7_F25D88(var_124, var_8C, var_168)
  loc_15DFCEA: unk_4B088E.Execute CStr(var_198 & var_124), -1, var_F0
  loc_15DFCF5: Set var_CC = var_F0
  loc_15DFD25: If (var_CC.RecordCount > 0) Then
  loc_15DFD28:   ' Referenced from: 15E011C
  loc_15DFD37:   If Not(var_CC.EOF) Then
  loc_15DFD61:     For var_2D8 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_2D8 'Long
  loc_15DFD6E:       var_EC = 0
  loc_15DFDCE:       If (CVar(CStr(Me.FGrid.TextMatrix))) = var_CC.Fields.Item("RoomCode").Value) Then
  loc_15DFE0B:         If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15DFE71:           var_198 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) - 1)
  loc_15DFE76:           var_C8 = CInt(var_198)
  loc_15DFE8C:         Else
  loc_15DFED4:           var_178 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("ToDate")), 1, 1) - 1)
  loc_15DFED9:           var_C8 = CInt(DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1))
  loc_15DFEE6:         End If
  loc_15DFEF2:         For var_2E0 = 0 To CLng(var_C8): var_A8 = var_2E0 'Long
  loc_15DFF32:           If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15DFF7D:             var_178 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("FromDate")), 1, 1) + 1)
  loc_15DFF86:             var_198 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) + 4)
  loc_15DFF91:             var_1A8 = (var_198 + CVar(var_A8))
  loc_15DFF96:             var_C6 = CInt("dd/MM")
  loc_15DFFAC:           Else
  loc_15DFFB6:             var_C6 = CInt((5 + var_A8))
  loc_15DFFB9:           End If
  loc_15DFFBF:           If (var_C6 > &H22) Then
  loc_15DFFC2:             GoTo loc_15E010C
  loc_15DFFC5:           End If
  loc_15DFFD8:           Me.FGrid.Col = CVar(CLng(var_C6))
  loc_15DFFF1:           Me.FGrid.Row = var_A4
  loc_15E000D:           Me.FGrid.CellBackColor = global_112
  loc_15E003D:           var_168 = CVar(Proc_6_38_E68A98(CVar(var_CC.Fields.Item("Reasons")), var_C6, var_C6, 0, var_C8)) 'String
  loc_15E004B:           Me.FGrid.Text = var_168
  loc_15E006E:           Me.FGrid.CellFontName = "Arial"
  loc_15E0088:           Me.FGrid.CellFontSize = CVar(CDbl(&HA))
  loc_15E00B6:           Proc_6_39_E7C810(var_168, CVar(var_CC.Fields.Item("Advance")), var_C8)
  loc_15E00D0:           If (var_168 > 0) Then
  loc_15E00E6:             Me.FGrid.CellForeColor = &HFF
  loc_15E00FC:             Me.FGrid.CellFontBold = True
  loc_15E0104:           End If
  loc_15E0107:         Next var_2E0 'Long
  loc_15E010C:         ' Referenced from: 15DFFC2
  loc_15E010C:       End If
  loc_15E010F:     Next var_2D8 'Long
  loc_15E0117:     var_CC.MoveNext
  loc_15E011C:     GoTo loc_15DFD28
  loc_15E011F:   End If
  loc_15E011F: End If
  loc_15E011F: var_DC = 0
  loc_15E0128: var_144 = &H1F4
  loc_15E0135: Set var_F0 = Me.FGrid
  loc_15E013B: LateIdCallSt
  loc_15E0146: var_DC = 0
  loc_15E014F: var_144 = 1
  loc_15E0158: var_188 = 0
  loc_15E0165: Set var_F0 = Me.FGrid
  loc_15E016B: LateIdCallSt
  loc_15E0189: Me.FGrid.FixedCols = 4
  loc_15E01A4: Me.FGrid.Col = 5
  loc_15E01BF: Me.FGrid.Row = 1
  loc_15E01C7: var_DC = 0
  loc_15E01D0: var_144 = False
  loc_15E01D9: Set var_F0 = Me.FGrid
  loc_15E01DF: LateIdCallSt
  loc_15E01F8: Me.FGrid.Redraw = True
  loc_15E0205: Set var_98 = Nothing
  loc_15E020D: Set var_A0 = Nothing
  loc_15E0215: Set var_9C = Nothing
  loc_15E0218: Exit Sub
End Sub

Public Sub Proc_54_38_F9EF68(arg_C) 'F9EF68
  'Data Table: 4B0888
  Dim var_B4 As Variant
  Dim var_F4 As String
  Dim var_124 As Date
  Dim var_164 As Variant
  Dim var_184 As Date
  Dim var_1B4 As String
  Dim var_1E4 As Date
  Dim var_20C As String
  loc_F9EE39: For var_94 = 0 To &H1D: var_8A = var_94 'Integer
  loc_F9EE54:   var_B4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9EE5B:   Proc_6_7_F25D88(var_C4, var_B4)
  loc_F9EE67:   var_F4 = " and B.ArrDate+B.NoDays-1>="
  loc_F9EE7B:   var_124 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9EE82:   Proc_6_7_F25D88(var_134, var_124)
  loc_F9EE93:   var_164 = CVar(var_88 & "Max(Case When RO.ChkInDt is null Then Case When B.ArrDate<=") & var_C4 & var_F4 & var_134 & " Then B.GuestName Else '' End Else Case When Ro.ChkInDt<=" 
  loc_F9EEA2:   var_184 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9EEA9:   Proc_6_7_F25D88(var_194, var_184)
  loc_F9EEB5:   var_1B4 = " and RO.DEPDATE-1>="
  loc_F9EEC9:   var_1E4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9EED0:   Proc_6_7_F25D88(var_1F4, var_1E4)
  loc_F9EEE8:   var_20C = " Then case RO.tYPE When 'O' then ''Else B.GuestName +'#*' end Else '' End End ) as Day" & CStr(var_8A)
  loc_F9EEF7:   var_88 = CStr(var_164 & var_194 & var_1B4 & var_1F4 & CVar(var_20C & ","))
  loc_F9EF2B: Next var_94 'Integer
  loc_F9EF3A: var_B4 = CVar((Len(var_88) - 1)) 'Long
  loc_F9EF57: var_88 = CStr(Mid(var_88, 1, var_B4))
  loc_F9EF61: Proc_54_38_F9EF68 = 
End Sub

Public Sub Proc_54_39_16B8084
  'Data Table: 4B0888
  Dim var_100 As String
  Dim var_88 As Variant
  Dim Me As Variant
  Dim var_86 As Variant
  Dim var_118 As TextBox
  Dim var_128 As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_14C As Variant
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  Dim var_28C As Variant
  Dim var_29C As Variant
  Dim var_2BC As Variant
  Dim var_2D0 As Variant
  Dim var_2E0 As Variant
  Dim var_300 As Variant
  Dim var_314 As Variant
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_358 As Variant
  Dim var_368 As Variant
  Dim var_388 As Variant
  Dim var_39C As Variant
  Dim var_3AC As Variant
  Dim var_3CC As Variant
  Dim var_3E0 As Variant
  Dim var_3F0 As Variant
  Dim var_410 As Variant
  Dim var_424 As Variant
  Dim var_434 As Variant
  Dim var_454 As Variant
  Dim var_468 As Variant
  Dim var_478 As Variant
  Dim var_498 As Variant
  Dim var_4AC As Variant
  Dim var_4BC As Variant
  Dim var_4DC As Variant
  Dim var_4F0 As Variant
  Dim var_500 As Variant
  Dim var_520 As Variant
  Dim var_534 As Variant
  Dim var_544 As Variant
  Dim var_564 As Variant
  Dim var_588 As Variant
  Dim var_5A8 As Variant
  Dim var_5CC As Variant
  Dim var_5EC As Variant
  Dim var_610 As Variant
  Dim var_630 As Variant
  Dim var_654 As Variant
  Dim var_674 As Variant
  Dim var_698 As Variant
  Dim var_6B8 As Variant
  Dim var_6DC As Variant
  Dim var_6FC As Variant
  Dim var_720 As Variant
  Dim var_740 As Variant
  Dim var_114 As Variant
  Dim var_748 As String
  Dim var_768 As String
  Dim var_788 As String
  Dim var_964 As String
  Dim var_994 As String
  Dim var_9C4 As String
  Dim var_9F4 As String
  Dim var_A34 As String
  Dim var_A64 As String
  Dim var_A94 As String
  Dim var_AC4 As String
  Dim var_AFC As String
  loc_16B6B28: On Error Goto loc_16B807E
  loc_16B6B2D: Close 1
  loc_16B6B36: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16B6B68: var_A0 = Replace(CStr(Space(&H82)), " ", MemVar_1F923CC, 1, -1, 0)
  loc_16B6B73: var_88 = 1
  loc_16B6B8D: If (Me.RecordCount > 0) Then
  loc_16B6B96:   Me.MoveFirst
  loc_16B6B9B:   ' Referenced from: 16B7FC4
  loc_16B6BAD:   If Not(Me.EOF) Then
  loc_16B6BB6:     If (var_86 = 0) Then
  loc_16B6BC9:       var_86 = Proc_6_129_12B6C1C(var_88, var_86)
  loc_16B6BD4:       var_100 = "B"
  loc_16B6BF0:       Print 1, Proc_6_128_10272A8(global_88, var_100, &H50)
  loc_16B6C0D:       Set var_114 = Me.Txt
  loc_16B6C13:       Call 0.Method_Proc_54_39_16B80840 (CInt(0), var_118, var_100)
  loc_16B6C1B:       var_86 = var_118.Text
  loc_16B6C2C:       Print 1, "From Date " & var_100
  loc_16B6C45:       Print 1, "* = OUT OF ORDER"
  loc_16B6C61:       var_128 = (Chr(&HF) + CVar(var_A0))
  loc_16B6C67:       Print 1, var_128
  loc_16B6C7B:       For var_12C = 1 To &H17: var_A4 = var_12C 'Integer
  loc_16B6C8C:         Set var_114 = Me.Txt
  loc_16B6C92:         Call 0.Method_Proc_54_39_16B80840 (CInt(0), var_118, 1)
  loc_16B6CAC:         var_128 = DateAdd("d", CDbl((var_A4 - 1)), CVar(var_118))
  loc_16B6CB9:         global_80 = CDate(var_128)
  loc_16B6D07:         var_BC(CLng(var_A4)) = CStr(Ucase(Format(global_80, "DDD")))
  loc_16B6D54:         var_14C = Space((2 - Len(CStr(Day(global_80)))))
  loc_16B6D5C:         var_16C = (CVar(CStr(Day(global_80))) + Ucase(Format(global_80, "DDD")))
  loc_16B6D8E:         var_1BC = Space((2 - Len(CStr(Month(global_80)))))
  loc_16B6DB1:         var_1FC = (var_1BC + CVar(CStr(Month(global_80))))
  loc_16B6DC4:         var_D8(CLng(var_A4)) = CStr(var_16C & vbNullString & var_1FC)
  loc_16B6DF4:       Next var_12C 'Integer
  loc_16B7008:       var_128 = (Space(&HA) + "|")
  loc_16B7012:       var_15C = (Day(global_80) + CVar(Proc_6_45_EAD428(var_BC(1))))
  loc_16B701B:       var_16C = (CVar(CStr(Day(global_80))) + "|")
  loc_16B7025:       var_1AC = (var_16C + CVar(Proc_6_45_EAD428(var_BC(2), 4)))
  loc_16B702E:       var_1BC = (Month(global_80) + "|")
  loc_16B7038:       var_1EC = (var_1BC + CVar(Proc_6_45_EAD428(var_BC(3), 4)))
  loc_16B7041:       var_1FC = (CVar(CStr(Month(global_80))) + "|")
  loc_16B704B:       var_224 = (var_1FC + CVar(Proc_6_45_EAD428(var_BC(4), 4)))
  loc_16B7054:       var_234 = (var_224 + "|")
  loc_16B705E:       var_258 = (var_234 + CVar(Proc_6_45_EAD428(var_BC(5), 4)))
  loc_16B7067:       var_278 = (var_258 + "|")
  loc_16B7071:       var_29C = (var_278 + CVar(Proc_6_45_EAD428(var_BC(6), 4)))
  loc_16B707A:       var_2BC = (var_29C + "|")
  loc_16B7084:       var_2E0 = (var_2BC + CVar(Proc_6_45_EAD428(var_BC(7), 4)))
  loc_16B708D:       var_300 = (var_2E0 + "|")
  loc_16B7097:       var_324 = (var_300 + CVar(Proc_6_45_EAD428(var_BC(8), 4)))
  loc_16B70A0:       var_344 = (var_324 + "|")
  loc_16B70AA:       var_368 = (var_344 + CVar(Proc_6_45_EAD428(var_BC(9), 4)))
  loc_16B70B3:       var_388 = (var_368 + "|")
  loc_16B70BD:       var_3AC = (var_388 + CVar(Proc_6_45_EAD428(var_BC(&HA), 4)))
  loc_16B70C6:       var_3CC = (var_3AC + "|")
  loc_16B70D0:       var_3F0 = (var_3CC + CVar(Proc_6_45_EAD428(var_BC(&HB), 4)))
  loc_16B70D9:       var_410 = (var_3F0 + "|")
  loc_16B70E3:       var_434 = (var_410 + CVar(Proc_6_45_EAD428(var_BC(&HC), 4)))
  loc_16B70EC:       var_454 = (var_434 + "|")
  loc_16B70F6:       var_478 = (var_454 + CVar(Proc_6_45_EAD428(var_BC(&HD), 4)))
  loc_16B70FF:       var_498 = (var_478 + "|")
  loc_16B7109:       var_4BC = (var_498 + CVar(Proc_6_45_EAD428(var_BC(&HE), 4)))
  loc_16B7112:       var_4DC = (var_4BC + "|")
  loc_16B711C:       var_500 = (var_4DC + CVar(Proc_6_45_EAD428(var_BC(&HF), 4)))
  loc_16B7125:       var_520 = (var_500 + "|")
  loc_16B712F:       var_544 = (var_520 + CVar(Proc_6_45_EAD428(var_BC(&H10), 4)))
  loc_16B7138:       var_564 = (var_544 + "|")
  loc_16B7142:       var_588 = (var_564 + CVar(Proc_6_45_EAD428(var_BC(&H11), 4)))
  loc_16B714B:       var_5A8 = (var_588 + "|")
  loc_16B7155:       var_5CC = (var_5A8 + CVar(Proc_6_45_EAD428(var_BC(&H12), 4)))
  loc_16B715E:       var_5EC = (var_5CC + "|")
  loc_16B7168:       var_610 = (var_5EC + CVar(Proc_6_45_EAD428(var_BC(&H13), 4)))
  loc_16B7171:       var_630 = (var_610 + "|")
  loc_16B717B:       var_654 = (var_630 + CVar(Proc_6_45_EAD428(var_BC(&H14), 4)))
  loc_16B7184:       var_674 = (var_654 + "|")
  loc_16B718E:       var_698 = (var_674 + CVar(Proc_6_45_EAD428(var_BC(&H15), 4)))
  loc_16B7197:       var_6B8 = (var_698 + "|")
  loc_16B71A1:       var_6DC = (var_6B8 + CVar(Proc_6_45_EAD428(var_BC(&H16), 4)))
  loc_16B71AA:       var_6FC = (var_6DC + "|")
  loc_16B71B4:       var_720 = (var_6FC + CVar(Proc_6_45_EAD428(var_BC(&H17), 4)))
  loc_16B71BD:       var_740 = (var_720 + "|")
  loc_16B71C3:       Print 1, var_740
  loc_16B72A0:       var_128 = ("TYPE" + Space(6))
  loc_16B72A9:       var_14C = (Day(global_80) + "|")
  loc_16B72B9:       var_15C = (CVar(Proc_6_45_EAD428(var_BC(1))) + CVar(var_D8(1)))
  loc_16B72C2:       var_16C = (CVar(CStr(Day(global_80))) + "|")
  loc_16B72D2:       var_18C = (var_16C + CVar(var_D8(2)))
  loc_16B72DB:       var_1AC = (CVar(Proc_6_45_EAD428(var_BC(2), 4)) + "|")
  loc_16B72EB:       var_1BC = (Month(global_80) + CVar(var_D8(3)))
  loc_16B72F4:       var_1DC = (var_1BC + "|")
  loc_16B7304:       var_1EC = (CVar(Proc_6_45_EAD428(var_BC(3), 4)) + CVar(var_D8(4)))
  loc_16B730D:       var_1FC = (CVar(CStr(Month(global_80))) + "|")
  loc_16B731D:       var_20C = (var_1FC + CVar(var_D8(5)))
  loc_16B7326:       var_224 = (CVar(Proc_6_45_EAD428(var_BC(4), 4)) + "|")
  loc_16B7336:       var_234 = (var_224 + CVar(var_D8(6)))
  loc_16B733F:       var_248 = (var_234 + "|")
  loc_16B734F:       var_258 = (CVar(Proc_6_45_EAD428(var_BC(5), 4)) + CVar(var_D8(7)))
  loc_16B7358:       var_278 = (var_258 + "|")
  loc_16B7368:       var_28C = (var_278 + CVar(var_D8(8)))
  loc_16B7371:       var_29C = (CVar(Proc_6_45_EAD428(var_BC(6), 4)) + "|")
  loc_16B7381:       var_2BC = (var_29C + CVar(var_D8(9)))
  loc_16B738A:       var_2D0 = (var_2BC + "|")
  loc_16B739A:       var_2E0 = (CVar(Proc_6_45_EAD428(var_BC(7), 4)) + CVar(var_D8(&HA)))
  loc_16B73A3:       var_300 = (var_2E0 + "|")
  loc_16B73B3:       var_314 = (var_300 + CVar(var_D8(&HB)))
  loc_16B73BC:       var_324 = (CVar(Proc_6_45_EAD428(var_BC(8), 4)) + "|")
  loc_16B73CC:       var_344 = (var_324 + CVar(var_D8(&HC)))
  loc_16B73D5:       var_358 = (var_344 + "|")
  loc_16B73E5:       var_368 = (CVar(Proc_6_45_EAD428(var_BC(9), 4)) + CVar(var_D8(&HD)))
  loc_16B73EE:       var_388 = (var_368 + "|")
  loc_16B73FE:       var_39C = (var_388 + CVar(var_D8(&HE)))
  loc_16B7407:       var_3AC = (CVar(Proc_6_45_EAD428(var_BC(&HA), 4)) + "|")
  loc_16B7417:       var_3CC = (var_3AC + CVar(var_D8(&HF)))
  loc_16B7420:       var_3E0 = (var_3CC + "|")
  loc_16B7430:       var_3F0 = (CVar(Proc_6_45_EAD428(var_BC(&HB), 4)) + CVar(var_D8(&H10)))
  loc_16B7439:       var_410 = (var_3F0 + "|")
  loc_16B7449:       var_424 = (var_410 + CVar(var_D8(&H11)))
  loc_16B7452:       var_434 = (CVar(Proc_6_45_EAD428(var_BC(&HC), 4)) + "|")
  loc_16B7462:       var_454 = (var_434 + CVar(var_D8(&H12)))
  loc_16B746B:       var_468 = (var_454 + "|")
  loc_16B747B:       var_478 = (CVar(Proc_6_45_EAD428(var_BC(&HD), 4)) + CVar(var_D8(&H13)))
  loc_16B7484:       var_498 = (var_478 + "|")
  loc_16B7494:       var_4AC = (var_498 + CVar(var_D8(&H14)))
  loc_16B749D:       var_4BC = (CVar(Proc_6_45_EAD428(var_BC(&HE), 4)) + "|")
  loc_16B74AD:       var_4DC = (var_4BC + CVar(var_D8(&H15)))
  loc_16B74B6:       var_4F0 = (var_4DC + "|")
  loc_16B74C6:       var_500 = (CVar(Proc_6_45_EAD428(var_BC(&HF), 4)) + CVar(var_D8(&H16)))
  loc_16B74CF:       var_520 = (var_500 + "|")
  loc_16B74DF:       var_534 = (var_520 + CVar(var_D8(&H17)))
  loc_16B74E8:       var_544 = (CVar(Proc_6_45_EAD428(var_BC(&H10), 4)) + "|")
  loc_16B74EE:       Print 1, var_544
  loc_16B755E:       Print 1, var_A0
  loc_16B7564:     End If
  loc_16B756A:     var_86 = (var_86 + 7)
  loc_16B7592:     For var_914 = 3 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_914 'Integer
  loc_16B759E:       If (var_A2 = 3) Then
  loc_16B75A1:         GoTo loc_16B7FBC
  loc_16B75A4:       End If
  loc_16B7C23:       var_748 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomNo")), 3), 5) & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCat")), var_86), 4)
  loc_16B7C45:       var_768 = var_748 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day5"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day6"))), 4)
  loc_16B7C67:       var_788 = var_768 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day7"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day8"))), 4)
  loc_16B7C89:       var_964 = var_788 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day9"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day10"))), 4)
  loc_16B7CAB:       var_994 = var_964 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day11"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day12"))), 4)
  loc_16B7CCD:       var_9C4 = var_994 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day13"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day14"))), 4)
  loc_16B7CEF:       var_9F4 = var_9C4 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day15"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day16"))), 4)
  loc_16B7D1E:       var_A34 = Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day18"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day19"))), 4)
  loc_16B7D40:       var_A64 = var_A34 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day20"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day21"))), 4)
  loc_16B7D62:       var_A94 = var_A64 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day22"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day23"))), 4)
  loc_16B7D84:       var_AC4 = var_A94 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day24"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day25"))), 4)
  loc_16B7DA6:       var_AFC = var_AC4 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day26"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day27"))), 4)
  loc_16B7DB6:       Print 1, var_9F4 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day17"))), 4) & "|" & var_AFC & "|"
  loc_16B7F57:       var_86 = (var_86 + 1)
  loc_16B7F60:       If (var_86 > &H3C) Then
  loc_16B7F68:         Print 1, var_A0
  loc_16B7F70:         var_86 = 0
  loc_16B7F79:         var_88 = (var_88 + 1)
  loc_16B7F8E:         Print 1, Chr(&HC)
  loc_16B7F97:       End If
  loc_16B7F9D:       Me.MoveNext
  loc_16B7FB6:       If (Me.EOF = &HFF) Then
  loc_16B7FB9:         GoTo loc_16B7FC4
  loc_16B7FBC:         ' Referenced from: 16B75A1
  loc_16B7FBC:       End If
  loc_16B7FBF:     Next var_914 'Integer
  loc_16B7FC4:     ' Referenced from: 16B7FB9
  loc_16B7FC4:     GoTo loc_16B6B9B
  loc_16B7FC7:   End If
  loc_16B7FC7: End If
  loc_16B7FCC: Print 1, var_A0
  loc_16B7FF2: var_14C = (Chr(&H12) + Chr(&HC))
  loc_16B7FF8: Print 1, CVar(Me.Fields.Item("Day5"))
  loc_16B8009: Close 1
  loc_16B8012: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16B8022: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_16B802D: Close 1
  loc_16B8037: If (MemVar_1F923B8 = "Y") Then
  loc_16B8053:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16B805D: Else
  loc_16B8076:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16B807D: End If
  loc_16B807D: Exit Sub
  loc_16B807E: ' Referenced from: 16B6B28
  loc_16B807E: Proc_6_60_E62BC4()
  loc_16B8083: Exit Sub
End Sub

Public Sub Proc_54_40_F89DF4(arg_C) 'F89DF4
  'Data Table: 4B0888
  Dim var_90 As Recordset15
  loc_F89C9D: Set var_90 = arg_C 
  loc_F89CC5: var_90.Fields.Append "mLine", &HC8, &HA
  loc_F89CF1: var_90.Fields.Append "RoomNo", &HC8, 5
  loc_F89D1D: var_90.Fields.Append "RoomCat", &HC8, &H19
  loc_F89D2C: For var_A8 = 5 To &H1B: var_8A = var_A8 'Integer
  loc_F89D62:   var_90.Fields.Append "Day" & CStr(var_8A), &HC8, &HF
  loc_F89D74: Next var_A8 'Integer
  loc_F89D9D: var_90.Fields.Append "Mark", &HC8, 1
  loc_F89DAD: var_90.CursorType = 3
  loc_F89DBA: var_90.LockType = 3
  loc_F89DD9: var_90.Open var_A4, var_C0, -1
  loc_F89DE0: Set var_90 = Nothing 
  loc_F89DE7: Set var_88 = arg_C 
  loc_F89DEB: Proc_54_40_F89DF4 = -1
End Sub
