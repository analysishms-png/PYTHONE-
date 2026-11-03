VERSION 5.00
Begin VB.Form frmSeasonMast
  Caption = "Season Master"
  BackColor = &HFFC0C0&
  ForeColor = &H800000&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8295
  ClientHeight = 4935
  ShowInTaskbar = 0   'False
  Begin Frame framhold
    BackColor = &HFFC0C0&
    ForeColor = &H800000&
    Left = 465
    Top = 1845
    Width = 5190
    Height = 3375
    TabIndex = 13
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HFFFFFF&
      Left = 75
      Top = 165
      Width = 915
      Height = 225
      Visible = 0   'False
      TabIndex = 2
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin MSFlexGrid FGrid
      Left = 15
      Top = 120
      Width = 5160
      Height = 3240
      TabIndex = 1
    End
  End
  Begin TextBox txt
    Index = 0
    ForeColor = &H800000&
    Left = 1575
    Top = 1440
    Width = 930
    Height = 270
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame framWeek
    Caption = "WeekEnd"
    BackColor = &HC0FFFF&
    ForeColor = &H800000&
    Left = 5880
    Top = 1815
    Width = 2055
    Height = 3375
    TabIndex = 10
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    Begin CheckBox chkday
      Caption = "Sunday"
      Index = 6
      BackColor = &H8080FF&
      ForeColor = &H404000&
      Left = 180
      Top = 2895
      Width = 1260
      Height = 255
      TabIndex = 9
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Saturday"
      Index = 5
      BackColor = &HFFC0FF&
      ForeColor = &H404000&
      Left = 180
      Top = 2475
      Width = 1365
      Height = 255
      TabIndex = 8
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Friday"
      Index = 4
      BackColor = &HFFC0C0&
      ForeColor = &H404000&
      Left = 180
      Top = 2055
      Width = 1125
      Height = 255
      TabIndex = 7
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Thursday"
      Index = 3
      BackColor = &HFFFFC0&
      ForeColor = &H404000&
      Left = 180
      Top = 1635
      Width = 1425
      Height = 255
      TabIndex = 6
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Wednesday"
      Index = 2
      BackColor = &HC0FFC0&
      ForeColor = &H404000&
      Left = 180
      Top = 1215
      Width = 1680
      Height = 255
      TabIndex = 5
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Tuesday"
      Index = 1
      BackColor = &HC0E0FF&
      ForeColor = &H404000&
      Left = 180
      Top = 795
      Width = 1410
      Height = 255
      TabIndex = 4
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CheckBox chkday
      Caption = "Monday"
      Index = 0
      BackColor = &HC0C0FF&
      ForeColor = &H404000&
      Left = 180
      Top = 375
      Width = 1305
      Height = 255
      TabIndex = 3
      BeginProperty Font
        Name = "MS Sans Serif"
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
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8295
    Height = 375
    TabIndex = 11
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4320
    Top = 6360
    Width = 2790
    Height = 285
    TabIndex = 16
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
  Begin Shape Shape2
    BorderColor = &HC00000&
    Left = 4200
    Top = 6240
    Width = 3135
    Height = 615
    Shape = 4
    BorderWidth = 2
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 945
    Top = 6360
    Width = 2880
    Height = 255
    TabIndex = 15
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
  Begin Shape Shape1
    BorderColor = &HC00000&
    Left = 840
    Top = 6240
    Width = 3135
    Height = 615
    Shape = 4
    BorderWidth = 2
  End
  Begin Label Label1
    Caption = "Season Master"
    BackColor = &HC0FFFF&
    Left = 1920
    Top = 720
    Width = 3000
    Height = 540
    TabIndex = 14
    BorderStyle = 1 'Fixed Single
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
  Begin Label lblyear
    Caption = "For Year"
    ForeColor = &H404000&
    Left = 495
    Top = 1455
    Width = 915
    Height = 240
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmSeasonMast"

Private global_64 As Integer
Private global_56 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) 'F9B288
  'Data Table: 46862C
  Dim var_88 As MSFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_10E As Integer
  Dim var_114 As Long
  loc_F9B133: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F9B13C: Set var_9C = Me.FGrid
  loc_F9B172: Set var_104 = Me.TxtGrid
  loc_F9B178: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F9B180: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_F9B1AD: Set var_88 = Me.TxtGrid
  loc_F9B1B3: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_F9B1BB: var_9C.MaxLength = 0
  loc_F9B1CA: var_10E = Index
  loc_F9B1D3: If (var_10E = 0) Then
  loc_F9B1E9:   var_114 = CLng(Me.FGrid.Col)
  loc_F9B1F9:   If Not (var_114 = CLng(1)) Then
  loc_F9B203:     If (var_114 = CLng(2)) Then
  loc_F9B206:     End If
  loc_F9B214:     Set var_88 = Me.TxtGrid
  loc_F9B21A:     Call 0.Method_TxtGrid_GotFocus0 (0, var_9C, 4)
  loc_F9B222:     var_9C.MaxLength = var_114
  loc_F9B237:     If (global_56 = 0) Then
  loc_F9B242:       var_10C = "{Home}+{End}"
  loc_F9B248:       Proc_303_0_FB9B68(CStr(Me.FGrid.TextMatrix)), 0)
  loc_F9B250:     End If
  loc_F9B253:   Else
  loc_F9B25A:     If (var_114 = CLng(3)) Then
  loc_F9B26B:       Set var_88 = Me.TxtGrid
  loc_F9B271:       Call 0.Method_TxtGrid_GotFocus0 (0, var_9C, 1)
  loc_F9B279:       var_9C.MaxLength = var_10E
  loc_F9B285:     End If
  loc_F9B285:   End If
  loc_F9B285: End If
  loc_F9B285: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1177830
  'Data Table: 46862C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSFlexGrid
  Dim var_B0 As Long
  Dim var_C8 As Variant
  Dim var_E8 As Long
  Dim var_108 As String
  loc_1177464: If (KeyCode = 0) Then
  loc_1177471:   If (CLng(Shift) = &H1B) Then
  loc_1177481:     Set var_8C = Me.TxtGrid
  loc_1177487:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_11774A1:     Set var_98 = Me.TxtGrid
  loc_11774A7:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_11774AF:     var_9C.Text = var_90.Tag
  loc_11774C6:     Set var_8C = Me.FGrid
  loc_11774E3:     Set var_8C = Me.TxtGrid
  loc_11774E9:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_11774F1:     var_90.Visible = FGrid.DispID_8001
  loc_117750B:     Set var_8C = Me.TxtGrid
  loc_1177511:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_1177519:     var_90.MaxLength = 0
  loc_1177525:     Exit Sub
  loc_1177526:   End If
  loc_1177539:   var_B0 = CLng(Me.FGrid.Col)
  loc_1177549:   If (var_B0 = CLng(1)) Then
  loc_117758C:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_1177595:       Call Proc_20_38_1222348(KeyCode, var_B2)
  loc_11775A0:       If (var_B2 = &HFF) Then
  loc_11775E6:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56, 3)
  loc_1177609:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_117760E:         var_E8 = 0
  loc_1177617:         var_108 = vbNullString
  loc_1177621:         Set var_90 = Me.FGrid
  loc_1177627:         LateIdCallSt
  loc_1177639:       End If
  loc_1177639:     End If
  loc_117763C:   Else
  loc_1177643:     If (var_B0 = CLng(2)) Then
  loc_1177686:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_117768F:         Call Proc_20_38_1222348(KeyCode, var_B2, var_90, var_108, var_E8, var_C8)
  loc_117769A:         If (var_B2 = &HFF) Then
  loc_11776E0:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56, 3, 0)
  loc_1177703:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1177708:           var_E8 = 0
  loc_1177711:           var_108 = vbNullString
  loc_117771B:           Set var_90 = Me.FGrid
  loc_1177721:           LateIdCallSt
  loc_1177733:         End If
  loc_1177733:       End If
  loc_1177736:     Else
  loc_117773D:       If (var_B0 = CLng(3)) Then
  loc_1177780:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_1177789:           Call Proc_20_38_1222348(KeyCode, var_B2, var_90, var_108, var_E8, var_C8, 3)
  loc_1177794:           If (var_B2 = &HFF) Then
  loc_11777DA:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56, 3, 0, 0)
  loc_11777FD:             var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1177802:             var_E8 = 0
  loc_117780B:             var_108 = vbNullString
  loc_1177815:             Set var_90 = Me.FGrid
  loc_117781B:             LateIdCallSt
  loc_117782D:           End If
  loc_117782D:         End If
  loc_117782D:       End If
  loc_117782D:     End If
  loc_117782D:   End If
  loc_117782D: End If
  loc_117782D: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EA0250
  'Data Table: 46862C
  Dim var_8C As MSFlexGrid
  Dim var_A0 As Long
  loc_EA01D3: Proc_6_58_E054C0(arg_10)
  loc_EA01E4: If (KeyAscii = 0) Then
  loc_EA01FA:   var_A0 = CLng(Me.FGrid.Col)
  loc_EA020A:   If Not (var_A0 = CLng(1)) Then
  loc_EA0214:     If (var_A0 = CLng(2)) Then
  loc_EA0217:     End If
  loc_EA0221:     Set var_8C = Me.TxtGrid
  loc_EA0227:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_EA0242:     Proc_6_42_129A86C(var_A4, arg_10, 4)
  loc_EA024E:   End If
  loc_EA024E: End If
  loc_EA024E: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E22AF4
  'Data Table: 46862C
  Dim arg_10 As Integer
  loc_E22ADC: If (Cancel = 0) Then
  loc_E22AE5:   Call Proc_20_38_1222348(Cancel, var_88)
  loc_E22AEE:   arg_10 = Not(var_88)
  loc_E22AF1: End If
  loc_E22AF1: Exit Sub
  loc_E22AF2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E7F65C
  'Data Table: 46862C
  Dim var_94 As TextBox
  loc_E7F5F8: On Error Goto loc_E7F654
  loc_E7F61E: Call Proc_20_32_E87F20(Proc_5_1_100CB50("ADD", Me))
  loc_E7F629: Call Proc_20_33_F1B7CC(global_52)
  loc_E7F639: Set var_8C = Me.txt
  loc_E7F63F: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0))
  loc_E7F647: var_94.SetFocus
  loc_E7F653: Exit Sub
  loc_E7F654: ' Referenced from: E7F5F8
  loc_E7F654: Proc_6_60_E62BC4(var_94)
  loc_E7F659: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'EA8DA0
  'Data Table: 46862C
  Dim var_9C As TextBox
  Dim var_4B01 As Double
  loc_EA8D18: On Error Goto loc_EA8D98
  loc_EA8D29: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_EA8D2C:   Exit Sub
  loc_EA8D2D: End If
  loc_EA8D50: Call Proc_20_32_E87F20(Proc_5_1_100CB50("EDIT", Me))
  loc_EA8D5F: Set var_94 = Me.FGrid
  loc_EA8D7D: Set var_94 = Me.txt
  loc_EA8D83: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_9C, 0)
  loc_EA8D8B: var_9C.Enabled = FGrid.DispID_8001
  loc_EA8D97: Exit Sub
  loc_EA8D98: ' Referenced from: EA8D18
  loc_EA8D98: Proc_6_60_E62BC4(global_52)
  loc_EA8D9D: Exit Sub
  loc_EA8D9E: var_4B01 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '1081120
  'Data Table: 46862C
  Dim unk_468639 As Connection15
  Dim Me As Recordset15
  Dim var_120 As TextBox
  Dim var_128 As String
  Dim var_B4 As Variant
  loc_1080EB0: On Error Goto loc_10810CF
  loc_1080EC1: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_1080EC4:   Exit Sub
  loc_1080EC5: End If
  loc_1080EFC: If (MsgBox("This Action Will Delete All The Entries Associated With This Year. Are You Sure?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_1080F08:   unk_468639.BeginTrans var_118
  loc_1080F1E:   var_94 = Me.Bookmark 'Variant
  loc_1080F40:   Set var_11C = Me.txt
  loc_1080F46:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_120, var_124, "Delete From SeasonMast Where Year(Fromdate) = '")
  loc_1080F4E:   var_B4 = var_120.Text
  loc_1080F57:   var_128 = -1 & var_124
  loc_1080F75:   unk_468639.Execute var_128 & "' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')", var_138, 
  loc_1080FA1:   Set var_11C = Me.txt
  loc_1080FA7:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_120)
  loc_1080FAF:   var_124 = var_120.Text
  loc_1080FB9:   var_164 = 0
  loc_1080FCC:   var_15C = 0
  loc_1080FD7:   var_158 = 0
  loc_1081050:   Proc_154_5_10E33A4(MemVar_1F92044, "SeasonMast", "Fromdate", 3, var_124, 0, 0, 0)
  loc_108107B:   unk_468639.CommitTrans
  loc_108108B:   Me.Requery -1
  loc_1081090:   Call Proc_20_34_124CFD0(0, 0, 0, 0)
  loc_10810B1:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_10810BD:   Set var_11C = Me.FGrid
  loc_10810CE: End If
  loc_10810CE: Exit Sub
  loc_10810CF: ' Referenced from: 1080EB0
  loc_10810D5: unk_468639.RollbackTrans
  loc_10810E2: Set var_11C = Err()
  loc_10810E8: Call 0.Method_arg_2C (var_124, FGrid.DispID_8001, 0)
  loc_1081109: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F4, var_114)
  loc_108111C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E15A5C
  'Data Table: 46862C
  loc_E15A51: Me.Global.Unload Me
  loc_E15A59: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2DC18
  'Data Table: 46862C
  loc_E2DC08: Proc_5_0_110649C(&HFF, Me)
  loc_E2DC10: Call Proc_20_34_124CFD0(global_52)
  loc_E2DC15: Exit Sub
  loc_E2DC16: var_4B90 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E2DB58
  'Data Table: 46862C
  loc_E2DB48: Proc_5_0_110649C(&HFF, Me)
  loc_E2DB50: Call Proc_20_34_124CFD0(global_52)
  loc_E2DB55: Exit Sub
  loc_E2DB56: var_4B90 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E2DAF8
  'Data Table: 46862C
  loc_E2DAE8: Proc_5_0_110649C(&HFF, Me)
  loc_E2DAF0: Call Proc_20_34_124CFD0(global_52)
  loc_E2DAF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E2DA98
  'Data Table: 46862C
  loc_E2DA88: Proc_5_0_110649C(&HFF, Me)
  loc_E2DA90: Call Proc_20_34_124CFD0(global_52)
  loc_E2DA95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '14F4408
  'Data Table: 46862C
  Dim var_A0 As MSFlexGrid
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_108 As String
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_14C As MSFlexGrid
  Dim var_15C As Variant
  Dim var_160 As String
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_20C As Variant
  Dim unk_468639 As Connection15
  Dim var_1EC As Variant
  Dim var_128 As Variant
  Dim var_1DC As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_264 As Variant
  Dim var_274 As Variant
  Dim var_284 As Variant
  Dim var_294 As Variant
  Dim var_2C4 As Variant
  Dim var_348 As String
  Dim Me As Recordset15
  loc_14F361C: On Error Goto loc_14F43B5
  loc_14F3623: var_86 = CByte(0) 'Byte
  loc_14F3631: var_B0 = Me.FGrid.Rows
  loc_14F3640: var_C0 = 1
  loc_14F364C: var_E0 = CVar(CLng(1)) 'Long
  loc_14F3655: Set var_F4 = Me.FGrid
  loc_14F3666: var_108 = CStr(var_F4.TextMatrix))
  loc_14F36B2: Set var_1A4 = Me.FGrid
  loc_14F36B8: var_1B4 = var_1A4.TextMatrix)
  loc_14F36D5: Set var_1BC = Me.TopCtrl1
  loc_14F36DB: Call {33AD4EFB-6699-11CF-B70C00AA0060D393}.DispID_6803000E((1 And (CVar(CLng(3)) And (CStr(var_1B4) = vbNullString))))
  loc_14F3717: If CBool(1 And ((CVar(CLng(2)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString)) <> "Add")) Then
  loc_14F371A:   Call TopCtrl1_UnknownEvent_13()
  loc_14F371F:   Exit Sub
  loc_14F3720: End If
  loc_14F372B: Set var_A0 = Me.txt
  loc_14F3731: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_F4, (var_108 = vbNullString))
  loc_14F375A: If (Proc_6_27_EA565C(var_F4, "Year", var_E0) = 0) Then
  loc_14F3764:   Call Txt_GotFocus()
  loc_14F3769:   Exit Sub
  loc_14F376A: End If
  loc_14F3792: For var_212 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_9A = var_212 'Byte
  loc_14F379C:   var_9C = CByte(1) 'Byte
  loc_14F37A5:   var_C0 = CVar(CLng(var_9A)) 'Long
  loc_14F37AF:   var_E0 = CVar(CLng(var_9C)) 'Long
  loc_14F37C9:   var_108 = CStr(Me.FGrid.TextMatrix))
  loc_14F37D6:   var_118 = CVar(CLng(var_9A)) 'Long
  loc_14F37E5:   var_138 = CVar(CLng((CInt(var_9C) + 1))) 'Long
  loc_14F37EE:   Set var_F4 = Me.FGrid
  loc_14F37FF:   var_160 = CStr(var_F4.TextMatrix))
  loc_14F380D:   var_170 = CVar(CLng(var_9A)) 'Long
  loc_14F381C:   var_190 = CVar(CLng((CInt(var_9C) + 2))) 'Long
  loc_14F382B:   var_15C = Me.FGrid.TextMatrix)
  loc_14F385B:   If Not((CVar(CLng(3)) And (CStr(var_15C) = vbNullString))) Then
  loc_14F3886:     For var_216 = CByte(1) To CByte((CLng(Me.FGrid.Cols) - 2)): var_9C = var_216 'Byte
  loc_14F3891:       var_C0 = CVar(CLng(var_9A)) 'Long
  loc_14F389B:       var_E0 = CVar(CLng(var_9C)) 'Long
  loc_14F38C6:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_14F38EF:         MsgBox(CVar("Value Required In Row " & CStr(var_9A)), &H40, "Data Missing", var_15C, var_1B4)
  loc_14F3902:         Exit Sub
  loc_14F3903:       End If
  loc_14F3906:     Next var_216 'Byte
  loc_14F390C:   End If
  loc_14F390F: Next var_212 'Byte
  loc_14F3920: For var_21A = CByte(0) To CByte(6): var_9A = var_21A 'Byte
  loc_14F3936:   Set var_A0 = Me.chkday
  loc_14F393C:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(var_9A), var_F4)
  loc_14F395A:   If (CLng(var_F4.Value) = 1) Then
  loc_14F3964:     var_90 = var_90 & "*"
  loc_14F396A:   Else
  loc_14F3971:     var_90 = var_90 & " "
  loc_14F3974:   End If
  loc_14F3977: Next var_21A 'Byte
  loc_14F3986: unk_468639.BeginTrans var_220
  loc_14F398F: var_86 = CByte(1) 'Byte
  loc_14F3997: Set var_A0 = Me.TopCtrl1
  loc_14F399D: Call {33AD4EFB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_14F39B2: If ( = "Add") Then
  loc_14F39DD:   For var_224 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_9A = var_224 'Byte
  loc_14F39E8:     var_C0 = CVar(CLng(var_9A)) 'Long
  loc_14F39F0:     var_E0 = CVar(CLng(1)) 'Long
  loc_14F3A0A:     var_108 = CStr(Me.FGrid.TextMatrix))
  loc_14F3A1B:     If (var_108 <> vbNullString) Then
  loc_14F3A23:       var_C0 = CVar(CLng(var_9A)) 'Long
  loc_14F3A2B:       var_E0 = CVar(CLng(1)) 'Long
  loc_14F3A3A:       var_B0 = Me.FGrid.TextMatrix)
  loc_14F3A62:       var_1EC = Me.FGrid.TextMatrix)
  loc_14F3A8F:       var_1DC = (Mid(CVar(CStr(var_B0)), 1, 2) + "/")
  loc_14F3AB8:       var_254 = CVar(Proc_6_119_F7508C(CInt(Mid(CVar(CStr(var_1EC)), 3, 2)), var_1DC, var_1EC, CVar(CLng(1)), CVar(CLng(var_9A)), var_B0)) 'String
  loc_14F3ABB:       var_264 = (var_E0 + var_254)
  loc_14F3AC4:       var_274 = (var_264 + "/")
  loc_14F3AD6:       Set var_14C = Me.txt
  loc_14F3ADC:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1A4, var_108, var_274)
  loc_14F3AE4:       var_C0 = var_1A4.Text
  loc_14F3AEF:       var_294 = (var_E0 + CVar(var_108))
  loc_14F3B2E:       var_E0 = CVar(CLng(2)) 'Long
  loc_14F3B3D:       var_B0 = Me.FGrid.TextMatrix)
  loc_14F3B5F:       Set var_F4 = Me.FGrid
  loc_14F3B65:       var_1EC = var_F4.TextMatrix)
  loc_14F3B85:       var_1B4 = Mid(CVar(CStr(var_B0)), 1, 2)
  loc_14F3B92:       var_1DC = (var_1B4 + "/")
  loc_14F3BBB:       var_254 = CVar(Proc_6_119_F7508C(CInt(Mid(CVar(CStr(var_1EC)), 3, 2)), var_1DC, var_1EC, CVar(CLng(2)), CVar(CLng(var_9A)))) 'String
  loc_14F3BBE:       var_264 = (var_B0 + var_254)
  loc_14F3BC7:       var_274 = (var_264 + "/")
  loc_14F3BD9:       Set var_14C = Me.txt
  loc_14F3BDF:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1A4, var_108, var_274)
  loc_14F3BE7:       var_E0 = var_1A4.Text
  loc_14F3BF2:       var_294 = (CVar(CLng(var_9A)) + CVar(var_108))
  loc_14F3C2F:       Proc_183_7_EB0C44(var_B0, CStr(var_294))
  loc_14F3C3F:       Proc_183_7_EB0C44(var_1B4, CStr(var_294))
  loc_14F3C49:       var_128 = CVar(CLng(var_9A)) 'Long
  loc_14F3C5A:       Set var_A0 = Me.FGrid
  loc_14F3C60:       var_20C = var_A0.TextMatrix)
  loc_14F3C7A:       Proc_6_7_F25D88(var_2B4, Date, var_20C, CVar(CLng(3)))
  loc_14F3C94:       var_104 = "Insert Into SeasonMast(FromDate,ToDate,RateCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values(" & var_B0 
  loc_14F3CB5:       var_234 = CVar(CStr(var_20C)) 'String
  loc_14F3CEE:       var_2C4 = var_104 & "," & var_1B4 & ",'" & var_234 & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_2B4 
  loc_14F3D18:       unk_468639.Execute CStr(var_2C4 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_344, -1
  loc_14F3D54:     End If
  loc_14F3D57:   Next var_224 'Byte
  loc_14F3D81:   unk_468639.Execute "Delete from SeasonMast1 WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')", var_B0, -1
  loc_14F3DA7:   var_108 = "Insert Into SeasonMast1(Weekend,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & var_90
  loc_14F3DDB:   Proc_6_7_F25D88(var_104, Date, CVar(var_108 & "','" & MemVar_1F92078 & "','" & MemVar_1F920C8 & "',"), var_234)
  loc_14F3DE3:   var_1B4 = -1 & var_104 
  loc_14F3E0D:   unk_468639.Execute CStr(var_1B4 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_A0, var_A0
  loc_14F3E3A: Else
  loc_14F3E58:   Set var_A0 = Me.txt
  loc_14F3E5E:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_F4, var_108, "Delete From SeasonMast Where year(Fromdate) = '")
  loc_14F3E66:   var_B0 = var_F4.Text
  loc_14F3E6F:   var_160 = -1 & var_108
  loc_14F3E8D:   unk_468639.Execute var_108 & "','" & "' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')", var_14C, 
  loc_14F3ED3:   For var_354 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):   var_9A = var_354 'Byte
  loc_14F3EDE:     var_C0 = CVar(CLng(var_9A)) 'Long
  loc_14F3EE6:     var_E0 = CVar(CLng(1)) 'Long
  loc_14F3F00:     var_108 = CStr(Me.FGrid.TextMatrix))
  loc_14F3F11:     If (var_108 <> vbNullString) Then
  loc_14F3F19:       var_C0 = CVar(CLng(var_9A)) 'Long
  loc_14F3F58:       var_1EC = Me.FGrid.TextMatrix)
  loc_14F3F85:       var_1DC = (Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, 2) + "/")
  loc_14F3FA5:       var_254 = (Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, 2) & ",'A','" + Mid(CVar(CStr(var_1EC)), 4, 3))
  loc_14F3FAE:       var_264 = (CVar(CStr(Me.FGrid.TextMatrix))) & "," & Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, 2) & ",'" & 3 & "','" + "/")
  loc_14F3FC0:       Set var_14C = Me.txt
  loc_14F3FC6:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1A4, var_108, CVar(CStr(Me.FGrid.TextMatrix))) & "," & Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, 2) & ",'" & 3 & "','" & CVar(MemVar_1F92070), var_1EC, CVar(CLng(1)), CVar(CLng(var_9A)))
  loc_14F3FCE:       var_B0 = var_1A4.Text
  loc_14F3FD9:       var_284 = (CVar(CLng(1)) + CVar(var_108))
  loc_14F3FDE:       var_94 = CStr(CVar(CStr(Me.FGrid.TextMatrix))) & "," & Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, 2) & ",'" & 3 & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8))
  loc_14F400E:       var_C0 = CVar(CLng(var_9A)) 'Long
  loc_14F4016:       var_E0 = CVar(CLng(2)) 'Long
  loc_14F4047:       Set var_F4 = Me.FGrid
  loc_14F404D:       var_1EC = var_F4.TextMatrix)
  loc_14F406D:       var_1B4 = Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, 2)
  loc_14F407A:       var_1DC = (var_1B4 + "/")
  loc_14F409A:       var_254 = (var_1B4 & ",'A','" + Mid(CVar(CStr(var_1EC)), 4, 3))
  loc_14F40A3:       var_264 = (CVar(CStr(Me.FGrid.TextMatrix))) & "," & var_1B4 & ",'" & 3 & "','" + "/")
  loc_14F40B5:       Set var_14C = Me.txt
  loc_14F40BB:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1A4, var_108, CVar(CStr(Me.FGrid.TextMatrix))) & "," & var_1B4 & ",'" & 3 & "','" & CVar(MemVar_1F92070), var_1EC, CVar(CLng(2)), CVar(CLng(var_9A)))
  loc_14F40C3:       var_B0 = var_1A4.Text
  loc_14F40CE:       var_284 = (var_E0 + CVar(var_108))
  loc_14F40D3:       var_98 = CStr(CVar(CStr(Me.FGrid.TextMatrix))) & "," & var_1B4 & ",'" & 3 & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8))
  loc_14F4109:       Proc_183_7_EB0C44(var_B0, var_94, var_94, var_94)
  loc_14F4119:       Proc_183_7_EB0C44(var_1B4, var_98, var_E0)
  loc_14F4123:       var_128 = CVar(CLng(var_9A)) 'Long
  loc_14F4134:       Set var_A0 = Me.FGrid
  loc_14F413A:       var_20C = var_A0.TextMatrix)
  loc_14F4154:       Proc_6_7_F25D88(var_2B4, Date, var_20C, CVar(CLng(3)))
  loc_14F416E:       var_104 = "Insert Into SeasonMast(FromDate,ToDate,RateCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values(" & var_B0 
  loc_14F418F:       var_234 = CVar(CStr(var_20C)) 'String
  loc_14F41C8:       var_2C4 = var_104 & "," & var_1B4 & ",'" & var_234 & "','" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "'," & var_2B4 
  loc_14F41F2:       unk_468639.Execute CStr(var_2C4 & ",'E','" & CVar(MemVar_1F92078) & "')"), var_344, -1
  loc_14F422E:     End If
  loc_14F4231:   Next var_354 'Byte
  loc_14F425B:   unk_468639.Execute "Delete from SeasonMast1 WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')", var_B0, -1
  loc_14F4296:   var_348 = "Insert Into SeasonMast1(Weekend,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & var_90 & "','" & MemVar_1F92070 & "','"
  loc_14F42A4:   var_15C = CVar(var_348 & MemVar_1F920C8 & "',") 'String
  loc_14F42B5:   Proc_6_7_F25D88(var_104, Date, var_15C, var_234)
  loc_14F42BD:   var_1B4 = -1 & var_104 
  loc_14F42E7:   unk_468639.Execute CStr(var_1B4 & ",'E','" & CVar(MemVar_1F92078) & "')"), var_A0, var_A0
  loc_14F4311: End If
  loc_14F4317: unk_468639.CommitTrans
  loc_14F4320: var_86 = CByte(0) 'Byte
  loc_14F432F: Me.Requery -1
  loc_14F4338: Set var_A0 = Me.TopCtrl1
  loc_14F433E: Call {33AD4EFB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_14F4353: If ( = "Add") Then
  loc_14F4356:   Call TopCtrl1_UnknownEvent_11()
  loc_14F435B:   Exit Sub
  loc_14F435C: End If
  loc_14F4371: var_108 = "INI"
  loc_14F437F: Call Proc_20_32_E87F20(Proc_5_1_100CB50(var_108, Me))
  loc_14F4395: Set var_A0 = Me.TxtGrid
  loc_14F439B: Call 0.Method_TopCtrl1_UnknownEvent_190 (0, var_F4)
  loc_14F43A3: var_F4.Visible = False
  loc_14F43AF: Call Proc_20_34_124CFD0(global_52)
  loc_14F43B4: Exit Sub
  loc_14F43B5: ' Referenced from: 14F361C
  loc_14F43BE: If (CInt(var_86) = 1) Then
  loc_14F43C7:   unk_468639.RollbackTrans
  loc_14F43CC: End If
  loc_14F43D4: Set var_A0 = Err()
  loc_14F43DA: Call 0.Method_arg_2C (var_108)
  loc_14F43F3: MsgBox(CVar(var_108), &H10, var_104, var_15C, var_1B4)
  loc_14F4406: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EFBB4C
  'Data Table: 46862C
  Dim var_118 As TextBox
  loc_EFBA80: On Error Goto loc_EFBB45
  loc_EFBABA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EFBAE0:   Call Proc_20_32_E87F20(Proc_5_1_100CB50("INI", Me))
  loc_EFBAEB:   Call Proc_20_34_124CFD0(global_52)
  loc_EFBAF4:   Set var_110 = Me.FGrid
  loc_EFBB10:   Set var_110 = Me.TxtGrid
  loc_EFBB16:   Call 0.Method_TopCtrl1_UnknownEvent_1A0 (0, var_118)
  loc_EFBB1E:   var_118.Visible = False
  loc_EFBB2D: Else
  loc_EFBB33:   Call 0.Method_arg_1E8 (var_110)
  loc_EFBB3B:   Call var_110.SetFocus
  loc_EFBB44: End If
  loc_EFBB44: Exit Sub
  loc_EFBB45: ' Referenced from: EFBA80
  loc_EFBB45: Proc_6_60_E62BC4(FGrid.DispID_8001)
  loc_EFBB4A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'F1127C
  'Data Table: 46862C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F11190: On Error Goto loc_F11217
  loc_F1119C: var_88 = Me.RecordCount
  loc_F111AA: If (var_88 <= 0) Then
  loc_F111B3:   var_B8 = "Information"
  loc_F111CE:   MsgBox("No Records Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F111DE:   Exit Sub
  loc_F111DF: End If
  loc_F111E6: var_10C = "Select CONVERT(VARCHAR(11), FromDate,103) As SearchCode,CONVERT(VARCHAR(11), FromDate,103) AS FromDate,CONVERT(VARCHAR(11), TODATE,103) AS ToDate,RateCode from SeasonMast where (LOGSITE_CODE='" & MemVar_1F92078
  loc_F111ED: MemVar_1F920E4 = var_10C & "' or LOGSITE_CODE='HO') Order by FromDate desc"
  loc_F111FA: MemVar_1F92120 = Me
  loc_F11211: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F11216: Exit Sub
  loc_F11217: ' Referenced from: F11190
  loc_F1121F: Set var_110 = Err()
  loc_F11225: Call 0.Method_arg_1C (var_88)
  loc_F11236: If (var_88 <> 0) Then
  loc_F11241:   Set var_110 = Err()
  loc_F11247:   Call 0.Method_arg_2C (var_10C)
  loc_F11268:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F1127B: End If
  loc_F1127B: Exit Sub
End Sub

Private Sub Form_Load() 'F768F8
  'Data Table: 46862C
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim var_E4 As String
  Dim unk_468639 As Connection15
  loc_F767C0: On Error Goto loc_F768B2
  loc_F767CD: Set var_AC = Me.TopCtrl1
  loc_F767D3: Call {33AD4EFB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_F767E1: Call 0.Method_arg_50 (var_B0)
  loc_F767E9: var_C0 = CVar(var_B0) 'String
  loc_F767F7: Call {33AD4EFB-6699-11CF-B70C00AA0060D393}.DispID_6803000F(var_C0)
  loc_F76800: Call {33AD4EFB-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_F7680F: Call Proc_20_31_F7CC84()
  loc_F7682F: var_E4 = "SELECT Distinct(year(FromDate)) as SYear,SITE_CODE,LOGSITE_CODE FROM SeasonMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY year(FromDate) desc"
  loc_F76838: unk_468639.Execute var_E4, var_C0, -1
  loc_F7686A: Set var_AC = Me
  loc_F76873: var_B0 = "INI"
  loc_F76881: Call Proc_20_32_E87F20(Proc_5_1_100CB50(var_B0, var_AC), Me.TopCtrl1)
  loc_F7688C: Call Proc_20_34_124CFD0(var_AC)
  loc_F768A9: Proc_6_23_DFBA28(Me, 5340)
  loc_F768B1: Exit Sub
  loc_F768B2: ' Referenced from: F767C0
  loc_F768BA: Set var_AC = Err()
  loc_F768C0: Call 0.Method_arg_2C (var_B0)
  loc_F768E1: MsgBox(CVar(var_B0), &H40, "Information", var_E0, var_10C)
  loc_F768F4: Exit Sub
  loc_F768F5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0D234
  'Data Table: 46862C
  loc_E0D22B: Set global_52 = Nothing
  loc_E0D232: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E89490
  'Data Table: 46862C
  loc_E8942C: On Error Goto loc_E8944C
  loc_E89443: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8944B: Exit Sub
  loc_E8944C: ' Referenced from: E8942C
  loc_E89454: Set var_88 = Err()
  loc_E8945A: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8947B: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8948E: Exit Sub
  loc_E8948F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E4CDB4
  'Data Table: 46862C
  loc_E4CD92: Set var_88 = Me.txt
  loc_E4CD98: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E4CDA6: Proc_6_74_E226B0(var_8C)
  loc_E4CDB2: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '103DA2C
  'Data Table: 46862C
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  loc_103D7E2: If (CLng(Shift) = &H1B) Then
  loc_103D7E5:   Exit Sub
  loc_103D7E6: End If
  loc_103D7E9: var_88 = KeyCode
  loc_103D7F4: If (var_88 = CInt(0)) Then
  loc_103D815:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_103D826:     Set var_8C = Me.txt
  loc_103D82C:     Call 0.Method_Txt_KeyDown0 (CInt(0), var_90)
  loc_103D834:     var_94 = var_90.Text
  loc_103D84D:     If (Len(var_94) = 1) Then
  loc_103D861:       Set var_8C = Me.txt
  loc_103D867:       Call 0.Method_Txt_KeyDown0 (CInt(0), var_90, var_94)
  loc_103D86F:       "200" = var_90.Text
  loc_103D886:       Set var_98 = Me.txt
  loc_103D88C:       Call 0.Method_Txt_KeyDown0 (CInt(0), var_9C)
  loc_103D894:       var_9C.Text = var_88 & var_94
  loc_103D8AE:     Else
  loc_103D8BC:       Set var_8C = Me.txt
  loc_103D8C2:       Call 0.Method_Txt_KeyDown0 (CInt(0), var_90)
  loc_103D8E3:       If (Len(var_90.Text) = 2) Then
  loc_103D8F7:         Set var_8C = Me.txt
  loc_103D8FD:         Call 0.Method_Txt_KeyDown0 (CInt(0), var_90)
  loc_103D91C:         Set var_98 = Me.txt
  loc_103D922:         Call 0.Method_Txt_KeyDown0 (CInt(0), var_9C)
  loc_103D92A:         var_9C.Text = "20" & var_90.Text
  loc_103D944:       Else
  loc_103D952:         Set var_8C = Me.txt
  loc_103D958:         Call 0.Method_Txt_KeyDown0 (CInt(0), var_90)
  loc_103D979:         If (Len(var_90.Text) = 3) Then
  loc_103D98D:           Set var_8C = Me.txt
  loc_103D993:           Call 0.Method_Txt_KeyDown0 (CInt(0), var_90)
  loc_103D9B2:           Set var_98 = Me.txt
  loc_103D9B8:           Call 0.Method_Txt_KeyDown0 (CInt(0), var_9C)
  loc_103D9C0:           var_9C.Text = "2" & var_90.Text
  loc_103D9D7:         End If
  loc_103D9D7:       End If
  loc_103D9D7:     End If
  loc_103D9DD:     Call Txt_Validate(KeyCode)
  loc_103D9E8:     If (var_86 = &HFF) Then
  loc_103D9F6:       Set var_8C = Me.txt
  loc_103D9FC:       Call 0.Method_Txt_KeyDown0 (CInt(0), var_90)
  loc_103DA04:       var_90.SetFocus
  loc_103DA10:       Exit Sub
  loc_103DA14:     Else
  loc_103DA18:       Set var_8C = Me.FGrid
  loc_103DA29:     End If
  loc_103DA29:   End If
  loc_103DA29: End If
  loc_103DA29: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E68A14
  'Data Table: 46862C
  loc_E689D6: If (KeyAscii = CInt(0)) Then
  loc_E689E4:   Set var_8C = Me.txt
  loc_E689EA:   Call 0.Method_Txt_KeyPress0 (CInt(0), var_90)
  loc_E68A05:   Proc_6_42_129A86C(var_90, arg_10, 4)
  loc_E68A11: End If
  loc_E68A11: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E884
  'Data Table: 46862C
  loc_E4E862: Set var_88 = Me.txt
  loc_E4E868: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E876: Proc_6_73_E22704(var_8C)
  loc_E4E882: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E0B86C
  'Data Table: 46862C
  loc_E0B866: If (Cancel = CInt(0)) Then
  loc_E0B869: End If
  loc_E0B869: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E2D914
  'Data Table: 46862C
  Dim var_8C As TextBox
  loc_E2D8F7: Set var_88 = Me.TxtGrid
  loc_E2D8FD: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E2D905: var_8C.Visible = False
  loc_E2D911: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6A900
  'Data Table: 46862C
  Dim var_88 As MSFlexGrid
  Dim var_9C As TextBox
  loc_E6A8B0: Call Proc_20_37_E2D610()
  loc_E6A8D4: If (CLng(Me.FGrid.Col) = 0) Then
  loc_E6A8E2:   Set var_88 = Me.TxtGrid
  loc_E6A8E8:   Call 0.Method_FGrid_UnknownEvent_90 (0, var_9C)
  loc_E6A8F0:   var_9C.Visible = False
  loc_E6A8FC: End If
  loc_E6A8FC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1017474
  'Data Table: 46862C
  Dim var_98 As Variant
  Dim var_E4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim var_DC As String
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_101725C: Set var_88 = Me.TopCtrl1
  loc_1017262: Call {33AD4EFB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_10172B2: If CBool(( = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10172BB:   Call Form_KeyDown(Cancel, arg_10)
  loc_10172C0: End If
  loc_10172C4: Set var_88 = Me.TopCtrl1
  loc_10172CA: Call {33AD4EFB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_10172DF: If ( = "Browse") Then
  loc_10172E2:   Exit Sub
  loc_10172E3: End If
  loc_1017357: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1017362:   var_DC = "+{Tab}"
  loc_1017368:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_1017372:   Cancel = 0
  loc_1017375: End If
  loc_101737B: global_64 = Cancel
  loc_10173A1: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10173C5: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10173DB:   var_EC = CLng(Me.FGrid.Col)
  loc_10173EB:   If Not (var_EC = CLng(1)) Then
  loc_10173F5:     If Not (var_EC = CLng(2)) Then
  loc_10173FF:       If (var_EC = CLng(3)) Then
  loc_1017402:       End If
  loc_1017402:     End If
  loc_1017415:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_101742D:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1017432:     var_11C = vbNullString
  loc_101743C:     Set var_E4 = Me.FGrid
  loc_1017442:     LateIdCallSt
  loc_101745A:   End If
  loc_101745A: End If
  loc_1017460: If (Cancel = &HD) Then
  loc_1017468:   global_56 = 0
  loc_101746B: End If
  loc_101746D: Cancel = 0
  loc_1017470: Exit Sub
  loc_1017471: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0BB70
  'Data Table: 46862C
  loc_E0BB61: Call FGrid_UnknownEvent_C()
  loc_E0BB6B: global_56 = 0
  loc_E0BB6E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1017208
  'Data Table: 46862C
  Dim var_88 As MSFlexGrid
  Dim var_BC As Long
  Dim var_D8 As String
  Dim var_DC As Integer
  Dim var_C0 As TextBox
  Dim var_D0 As TextBox
  loc_1016FF4: Set var_88 = Me.TopCtrl1
  loc_1016FFA: Call {33AD4EFB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_101700F: If ( = "Browse") Then
  loc_1017012:   Exit Sub
  loc_1017013: End If
  loc_1017026: var_BC = CLng(Me.FGrid.Col)
  loc_1017036: If Not (var_BC = CLng(1)) Then
  loc_1017040:   If (var_BC = CLng(2)) Then
  loc_1017043:   End If
  loc_1017081:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1017096: Else
  loc_101709D:   If (var_BC = CLng(3)) Then
  loc_10170A4:     Set var_D0 = Me.FGrid
  loc_10170C8:     var_D8 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_10170D1:     var_DC = Asc(var_D8)
  loc_10170F5:     Set var_C0 = var_D0
  loc_1017107:     Proc_6_63_110ABA4(Me, var_C0, Me.TxtGrid, 0, 0, var_DC)
  loc_101712F:     Set var_88 = Me.TxtGrid
  loc_1017135:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C0, var_D8, 0, var_DC)
  loc_101713D:     &HFF = var_C0.Text
  loc_1017156:     If (Len(var_D8) <= 1) Then
  loc_1017165:       Set var_88 = Me.TxtGrid
  loc_101716B:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C0, var_D8)
  loc_1017173:       Cancel = var_C0.Text
  loc_1017184:       Set var_C4 = Me.TxtGrid
  loc_101718A:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D0, var_D8)
  loc_1017192:       var_D0.Text = 0
  loc_10171A5:     End If
  loc_10171B1:     Set var_88 = Me.TxtGrid
  loc_10171B7:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C0)
  loc_10171D1:     Set var_C4 = Me.TxtGrid
  loc_10171D7:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D0)
  loc_10171DF:     var_D0.SelStart = Len(var_C0.Text)
  loc_10171F2:   End If
  loc_10171F2: End If
  loc_10171FC: If (CLng(Cancel) <> &HD) Then
  loc_1017204:   global_56 = &HFF
  loc_1017207: End If
  loc_1017207: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FD4284
  'Data Table: 46862C
  Dim var_9C As Variant
  Dim var_8C As MSFlexGrid
  Dim var_BC As Variant
  loc_FD40C0: Set var_8C = Me.TopCtrl1
  loc_FD40C6: Call {33AD4EFB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_FD40DB: If ( = "Browse") Then
  loc_FD40DE:   Exit Sub
  loc_FD40DF: End If
  loc_FD40FC: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FD40FF:   Exit Sub
  loc_FD4100: End If
  loc_FD4111: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FD4133:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FD416D:     If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FD418F:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FD41A5:         var_9C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FD41AE:         Set var_110 = Me.FGrid
  loc_FD41C9:       Else
  loc_FD41DC:         Me.FGrid.Rows = 1
  loc_FD41F9:         var_BC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FD4201:         Set var_110 = Me.FGrid
  loc_FD4230:         Me.FGrid.FixedRows = 1
  loc_FD4238:       End If
  loc_FD4238:     End If
  loc_FD423B:   Else
  loc_FD425C:     MsgBox("No Entries To Delete", &H10, "Delete !", var_EC, var_10C)
  loc_FD426C:   End If
  loc_FD4270:   Set var_8C = Me.FGrid
  loc_FD4281: End If
  loc_FD4281: Exit Sub
  loc_FD4282: Set var_4BE0 = FGrid.DispID_8001
End Sub

Private Sub FGrid_UnknownEvent_15 'E2D8B4
  'Data Table: 46862C
  Dim var_8C As TextBox
  loc_E2D897: Set var_88 = Me.TxtGrid
  loc_E2D89D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E2D8A5: var_8C.Visible = False
  loc_E2D8B1: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EDD86C
  'Data Table: 46862C
  Dim Me As Recordset15
  Dim var_E8 As Variant
  Dim var_EC As String
  loc_EDD7C6: On Error Goto loc_EDD828
  loc_EDD7CF: Me.MoveFirst
  loc_EDD803: var_E8 = "SYear='" & Year(MyValue) & "'" 
  loc_EDD807: var_EC = CStr(var_E8)
  loc_EDD811: Me.Find var_EC, 0, 1
  loc_EDD822: Call Proc_20_34_124CFD0(var_FC)
  loc_EDD827: Exit Sub
  loc_EDD828: ' Referenced from: EDD7C6
  loc_EDD830: Set var_100 = Err()
  loc_EDD836: Call 0.Method_arg_2C (var_EC)
  loc_EDD857: MsgBox(CVar(var_EC), &H40, "Information", var_E8, var_110)
  loc_EDD86A: Exit Sub
  loc_EDD86B: Exit Sub
End Sub

Public Sub Proc_20_31_F7CC84
  'Data Table: 46862C
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_F7CB2C: Set var_88 = Me.FGrid
  loc_F7CB2F: var_98 = 0
  loc_F7CB38: var_B8 = &H1F4
  loc_F7CB44: LateIdCallSt
  loc_F7CB4C: var_98 = 0
  loc_F7CB5B: var_B8 = CVar(CInt(4)) 'Integer
  loc_F7CB62: LateIdCallSt
  loc_F7CB6A: var_98 = 0
  loc_F7CB76: var_B8 = CVar(CLng(1)) 'Long
  loc_F7CB7B: var_D8 = "From Date (DDMM)"
  loc_F7CB84: LateIdCallSt
  loc_F7CB8F: var_98 = CVar(CLng(1)) 'Long
  loc_F7CB94: var_B8 = &H6A4
  loc_F7CBA0: LateIdCallSt
  loc_F7CBAB: var_98 = CVar(CLng(1)) 'Long
  loc_F7CBB6: var_B8 = CVar(CInt(4)) 'Integer
  loc_F7CBBD: LateIdCallSt
  loc_F7CBC5: var_98 = 0
  loc_F7CBD1: var_B8 = CVar(CLng(2)) 'Long
  loc_F7CBD6: var_D8 = "To Date (DDMM)"
  loc_F7CBDF: LateIdCallSt
  loc_F7CBEA: var_98 = CVar(CLng(2)) 'Long
  loc_F7CBEF: var_B8 = &H6A4
  loc_F7CBFB: LateIdCallSt
  loc_F7CC06: var_98 = CVar(CLng(2)) 'Long
  loc_F7CC11: var_B8 = CVar(CInt(4)) 'Integer
  loc_F7CC18: LateIdCallSt
  loc_F7CC20: var_98 = 0
  loc_F7CC2C: var_B8 = CVar(CLng(3)) 'Long
  loc_F7CC31: var_D8 = "Rate"
  loc_F7CC3A: LateIdCallSt
  loc_F7CC45: var_98 = CVar(CLng(3)) 'Long
  loc_F7CC4A: var_B8 = &H3E8
  loc_F7CC56: LateIdCallSt
  loc_F7CC61: var_98 = CVar(CLng(3)) 'Long
  loc_F7CC6C: var_B8 = CVar(CInt(4)) 'Integer
  loc_F7CC73: LateIdCallSt
  loc_F7CC7D: Set var_88 = Nothing 
  loc_F7CC81: Exit Sub
End Sub

Public Sub Proc_20_32_E87F20(arg_C) 'E87F20
  'Data Table: 46862C
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_E87EBA: Set var_8C = Me.txt
  loc_E87EC0: Call 0.Method_Proc_20_32_E87F20C (var_8E, var_86)
  loc_E87ED0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E87EE6:   Set var_8C = Me.txt
  loc_E87EEC:   Call 0.Method_Proc_20_32_E87F200 (CInt(var_86), var_98)
  loc_E87EF4:   var_98.Enabled = arg_C
  loc_E87F03: Next var_92 'Byte
  loc_E87F16: Me.framWeek.Enabled = arg_C
  loc_E87F1E: Exit Sub
End Sub

Public Sub Proc_20_33_F1B7CC
  'Data Table: 46862C
  Dim var_98 As TextBox
  Dim var_A8 As Long
  Dim var_8C As MSFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  loc_F1B6D6: Set var_8C = Me.txt
  loc_F1B6DC: Call 0.Method_Proc_20_33_F1B7CCC (var_8E, var_86)
  loc_F1B6EC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1B702:   Set var_8C = Me.txt
  loc_F1B708:   Call 0.Method_Proc_20_33_F1B7CC0 (CInt(var_86), var_98)
  loc_F1B710:   var_98.Text = vbNullString
  loc_F1B72C:   Set var_8C = Me.txt
  loc_F1B732:   Call 0.Method_Proc_20_33_F1B7CC0 (CInt(var_86), var_98)
  loc_F1B73A:   var_98.Tag = vbNullString
  loc_F1B749: Next var_92 'Byte
  loc_F1B762: Me.FGrid.FixedRows = 1
  loc_F1B77D: Me.FGrid.Rows = 2
  loc_F1B78C: For var_BC = 1 To 3: var_86 = var_BC 'Byte
  loc_F1B792:   var_A8 = 1
  loc_F1B7A0:   var_CC = CVar(CLng(var_86)) 'Long
  loc_F1B7A5:   var_EC = vbNullString
  loc_F1B7AF:   Set var_8C = Me.FGrid
  loc_F1B7B5:   LateIdCallSt
  loc_F1B7C3: Next var_BC 'Byte
  loc_F1B7C9: Exit Sub
End Sub

Public Sub Proc_20_34_124CFD0
  'Data Table: 46862C
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_468639 As Connection15
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Variant
  Dim Me As Recordset15
  Dim var_110 As TextBox
  Dim var_114 As String
  Dim var_118 As String
  Dim var_88 As Recordset15
  Dim var_144 As Variant
  Dim var_D8 As Variant
  Dim var_164 As Variant
  Dim var_134 As Variant
  Dim var_E8 As Variant
  loc_124CAA0: On Error Goto loc_124CF8A
  loc_124CABE: var_98 = "SELECT Weekend FROM SeasonMast1 WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'"
  loc_124CAC7: unk_468639.Execute var_98, var_B8, -1
  loc_124CAD2: Set var_8C = var_BC
  loc_124CAF7: If Not((var_8C.RecordCount <= 0)) Then
  loc_124CB14:   var_C4 = var_8C.Fields.Item("WeekEnd")
  loc_124CB48:   For var_C8 = CByte(1) To CByte(7): var_8E = var_C8 'Byte
  loc_124CB64:     Set var_BC = Me.chkday
  loc_124CB6A:     Call 0.Method_Proc_20_34_124CFD00 ((CInt(var_8E) - 1), var_C4, CInt(0))
  loc_124CB72:     var_C4.Value = CByte(1)
  loc_124CBAD:     If (Mid(CStr(var_C4.Value), CLng(var_8E), 1) = "*") Then
  loc_124CBC6:       Set var_BC = Me.chkday
  loc_124CBCC:       Call 0.Method_Proc_20_34_124CFD00 ((CInt(var_8E) - 1), var_C4)
  loc_124CBD4:       var_C4.Value = CInt(1)
  loc_124CBE0:     End If
  loc_124CBE3:   Next var_C8 'Byte
  loc_124CBE9: End If
  loc_124CBEF: Proc_183_45_E5C118(global_52)
  loc_124CC0B: If (Me.RecordCount <= 0) Then
  loc_124CC0E:   Call Proc_20_33_F1B7CC()
  loc_124CC16: Else
  loc_124CC33:   var_C4 = Me.Fields.Item("SYear")
  loc_124CC53:   Set var_10C = Me.txt
  loc_124CC59:   Call 0.Method_Proc_20_34_124CFD00 (CInt(0), var_110)
  loc_124CC61:   var_110.Text = CStr(var_C4.Value)
  loc_124CC92:   var_114 = "Select FromDate,ToDate,RateCode from SeasonMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Year(FromDate)='"
  loc_124CCA3:   Set var_BC = Me.txt
  loc_124CCA9:   Call 0.Method_Proc_20_34_124CFD00 (CInt(0), var_C4, var_98, var_114)
  loc_124CCB1:   var_B8 = var_C4.Text
  loc_124CCBA:   var_118 = -1 & var_98
  loc_124CCCA:   unk_468639.Execute var_118 & "'", var_10C, 
  loc_124CCD5:   Set var_88 = var_10C
  loc_124CD05:   If (var_88.RecordCount > 0) Then
  loc_124CD0C:     var_8E = CByte(1) 'Byte
  loc_124CD23:     Me.FGrid.FixedRows = 1
  loc_124CD3F:     var_A8 = CVar((var_88.RecordCount + 1)) 'Long
  loc_124CD4E:     Me.FGrid.Rows = 1
  loc_124CD56:     ' Referenced from:   124CECC
  loc_124CD65:     If Not(var_88.EOF) Then
  loc_124CD6C:       Set var_124 = Me.FGrid
  loc_124CD90:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_124CD98:       var_144 = CVar(CLng(1)) 'Long
  loc_124CDC5:       var_164 = CVar(CStr(Format(CVar(var_88.Fields.Item("FromDate")), "DD/MMM"))) 'String
  loc_124CDCC:       LateIdCallSt
  loc_124CE03:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_124CE0B:       var_144 = CVar(CLng(2)) 'Long
  loc_124CE2F:       var_108 = Format(CVar(var_88.Fields.Item("ToDate")), "DD/MMM")
  loc_124CE38:       var_164 = CVar(CStr(var_108)) 'String
  loc_124CE3F:       LateIdCallSt
  loc_124CE5A:       var_D8 = CVar(CLng(var_8E)) 'Long
  loc_124CE62:       var_134 = CVar(CLng(3)) 'Long
  loc_124CE81:       var_C4 = var_88.Fields.Item("RateCode")
  loc_124CE89:       var_B8 = var_C4.Value
  loc_124CE92:       var_E8 = CVar(CStr(var_B8)) 'String
  loc_124CE99:       LateIdCallSt
  loc_124CEB1:       Set var_124 = Nothing 
  loc_124CEC0:       var_8E = CByte((CInt(var_8E) + 1)) 'Byte
  loc_124CEC7:       var_88.MoveNext
  loc_124CECC:       GoTo loc_124CD56
  loc_124CECF:     End If
  loc_124CECF:   End If
  loc_124CECF: End If
  loc_124CEE3: var_94 = "Select FromDate,ToDate,RateCode from SeasonMast where (LOGSITE_CODE='" & MemVar_1F92078
  loc_124CEFB: Set var_BC = Me.txt
  loc_124CF01: Call 0.Method_Proc_20_34_124CFD00 (CInt(0), var_C4, var_98, var_94 & "' or LOGSITE_CODE='HO') and Year(FromDate)='", var_B8, -1, var_10C)
  loc_124CF22: unk_468639.Execute var_E8 & var_98 & "'", var_134, var_D8
  loc_124CF5E: If Not((var_10C.RecordCount > 0)) Then
  loc_124CF6F:   Set var_BC = Me.txt
  loc_124CF75:   Call 0.Method_Proc_20_34_124CFD00 (CInt(0), var_C4, vbNullString)
  loc_124CF7D:   var_C4.Text = var_C4.Text
  loc_124CF89: End If
  loc_124CF89: Exit Sub
  loc_124CF8A: ' Referenced from: 124CAA0
  loc_124CF92: Set var_BC = Err()
  loc_124CF98: Call 0.Method_arg_2C (var_94, var_164)
  loc_124CFB9: MsgBox(CVar(var_94), &H40, "Information", var_108, var_164)
  loc_124CFCC: Exit Sub
  loc_124CFCD: End Sub
End Sub

Public Sub Proc_20_35_F87EF0
  'Data Table: 46862C
  Dim var_C4 As TextBox
  Dim unk_468639 As Connection15
  Dim var_DC As Fields15
  Dim var_F0 As Field20
  loc_F87DBC: Set var_8C = Me.TopCtrl1
  loc_F87DC2: Call {33AD4EFB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_F87DD7: If ( = "Add") Then
  loc_F87E15:   Set var_8C = Me.txt
  loc_F87E1B:   Call 0.Method_Proc_20_35_F87EF00 (CInt(0), var_C4, var_C8, "Select Count(*) From SeasonMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and year(fromdate)='", var_AC, -1)
  loc_F87E3C:   unk_468639.Execute var_DC & var_C8 & "'", 0, var_F0
  loc_F87E4C:    = var_DC.Item()
  loc_F87E54:    = var_F0.Value
  loc_F87E85:   If (var_C4.Text.Fields > 0) Then
  loc_F87EA9:     MsgBox("Duplicate Year", &H40, "Information", var_110, var_130)
  loc_F87EC4:     Set var_8C = Me.txt
  loc_F87ECA:     Call 0.Method_Proc_20_35_F87EF00 (CInt(0))
  loc_F87ED2:     var_C4.SetFocus
  loc_F87EE3:     Proc_20_35_F87EF0 = &HFF
  loc_F87EE9:   End If
  loc_F87EE9: End If
  loc_F87EE9: Proc_20_35_F87EF0 = var_C4
End Sub

Public Sub Proc_20_36_E8D574(arg_C) 'E8D574
  'Data Table: 46862C
  Dim var_10C As TextBox
  loc_E8D543: If (MsgBox("Save Data ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8D546:   Call TopCtrl1_UnknownEvent_19()
  loc_E8D54E: Else
  loc_E8D558:   Set var_108 = Me.txt
  loc_E8D55E:   Call 0.Method_Proc_20_36_E8D5740 (arg_C)
  loc_E8D566:   var_10C.SetFocus
  loc_E8D572: End If
  loc_E8D572: Exit Sub
End Sub

Public Sub Proc_20_37_E2D610
  'Data Table: 46862C
  loc_E2D5F0: Set var_88 = Me.TopCtrl1
  loc_E2D5F6: Call {33AD4EFB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E2D60B: If ( = "Browse") Then
  loc_E2D60E:   Exit Sub
  loc_E2D60F: End If
  loc_E2D60F: Exit Sub
End Sub

Public Sub Proc_20_38_1222348(arg_C) '1222348
  'Data Table: 46862C
  Dim var_94 As MSFlexGrid
  Dim var_A8 As Long
  Dim var_B0 As TextBox
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_118 As MSFlexGrid
  Dim var_128 As Variant
  Dim var_B4 As String
  Dim var_13C As Variant
  Dim var_14C As Variant
  loc_1221E64: If (arg_C = 0) Then
  loc_1221E7A:   var_A8 = CLng(Me.FGrid.Col)
  loc_1221E8A:   If (var_A8 = CLng(1)) Then
  loc_1221E90:     Call Proc_20_39_1078B34(var_AA, var_A8)
  loc_1221E9B:     If (var_AA = 0) Then
  loc_1221EA3:       Proc_20_38_1222348 = 0
  loc_1221EA9:     End If
  loc_1221EAC:     Call Proc_20_40_11F76B4(var_AA)
  loc_1221EB7:     If (var_AA = &HFF) Then
  loc_1221EBF:       Proc_20_38_1222348 = 0
  loc_1221EC5:     End If
  loc_1221EC8:     Call Proc_20_42_10BCE20(var_AA)
  loc_1221ED3:     If (var_AA = &HFF) Then
  loc_1221EDB:       Proc_20_38_1222348 = 0
  loc_1221EE1:     End If
  loc_1221EEE:     Set var_94 = Me.TxtGrid
  loc_1221EF4:     Call 0.Method_Proc_20_38_12223480 (arg_C, var_B0)
  loc_1221EFC:     var_B4 = var_B0.Text
  loc_1221F13:     If (var_B4 = vbNullString) Then
  loc_1221F29:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1221F31:       var_E4 = CVar(CLng(1)) 'Long
  loc_1221F36:       var_104 = vbNullString
  loc_1221F40:       Set var_B0 = Me.FGrid
  loc_1221F46:       LateIdCallSt
  loc_1221F5B:     Else
  loc_1221F6E:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1221F76:       var_E4 = CVar(CLng(1)) 'Long
  loc_1221F88:       Set var_94 = Me.TxtGrid
  loc_1221F8E:       Call 0.Method_Proc_20_38_12223480 (arg_C, var_B0, var_B4, var_E4, var_C4)
  loc_1221F96:       var_B0 = var_B0.Text
  loc_1221F9E:       var_128 = CVar(var_B4) 'String
  loc_1221FA6:       Set var_12C = Me.FGrid
  loc_1221FAC:       LateIdCallSt
  loc_1221FC6:     End If
  loc_1221FC9:   Else
  loc_1221FD0:     If (var_A8 = CLng(2)) Then
  loc_1221FD6:       Call Proc_20_39_1078B34(var_AA, var_12C, var_128, var_104)
  loc_1221FE1:       If (var_AA = 0) Then
  loc_1221FE9:         Proc_20_38_1222348 = 0
  loc_1221FEF:       End If
  loc_1221FF2:       Call Proc_20_40_11F76B4(var_AA, var_E4)
  loc_1221FFD:       If (var_AA = &HFF) Then
  loc_1222005:         Proc_20_38_1222348 = 0
  loc_122200B:       End If
  loc_122200E:       Call Proc_20_41_1072F1C(var_AA, var_C4)
  loc_1222019:       If (var_AA = &HFF) Then
  loc_1222021:         Proc_20_38_1222348 = 0
  loc_1222027:       End If
  loc_1222034:       Set var_94 = Me.TxtGrid
  loc_122203A:       Call 0.Method_Proc_20_38_12223480 (arg_C, var_B0)
  loc_1222042:       var_B4 = var_B0.Text
  loc_1222059:       If (var_B4 = vbNullString) Then
  loc_122206F:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1222077:         var_E4 = CVar(CLng(2)) 'Long
  loc_122207C:         var_104 = vbNullString
  loc_1222086:         Set var_B0 = Me.FGrid
  loc_122208C:         LateIdCallSt
  loc_12220A1:       Else
  loc_12220BC:         var_E4 = CVar(CLng(2)) 'Long
  loc_12220CE:         Set var_94 = Me.TxtGrid
  loc_12220D4:         Call 0.Method_Proc_20_38_12223480 (arg_C, var_B0, var_B4, var_E4, CVar(CLng(Me.FGrid.Row)))
  loc_12220DC:         var_B0 = var_B0.Text
  loc_12220E4:         var_128 = CVar(var_B4) 'String
  loc_12220EC:         Set var_12C = Me.FGrid
  loc_12220F2:         LateIdCallSt
  loc_122210C:       End If
  loc_122210F:     Else
  loc_1222116:       If (var_A8 = CLng(3)) Then
  loc_1222123:         Set var_94 = Me.TxtGrid
  loc_1222129:         Call 0.Method_Proc_20_38_12223480 (arg_C, var_B0, var_12C, var_128)
  loc_1222152:         If (Trim(CVar(var_B0)) = vbNullString) Then
  loc_122215A:           Proc_20_38_1222348 = 0
  loc_1222163:         Else
  loc_122216D:           Set var_94 = Me.TxtGrid
  loc_1222173:           Call 0.Method_Proc_20_38_12223480 (arg_C, var_B0, var_104)
  loc_1222182:           var_128 = Ucase(CVar(var_B0))
  loc_122218A:           var_B4 = CStr(var_128)
  loc_12221A0:           Set var_118 = Me.TxtGrid
  loc_12221A6:           Call 0.Method_Proc_20_38_12223480 (arg_C, var_12C, (Asc(var_B4) < &H41))
  loc_12221AE:           var_13C = CVar(var_12C) 'Address
  loc_12221B5:           var_14C = Ucase(var_13C)
  loc_12221E3:           If (var_E4 Or (Asc(CStr(var_14C)) > &H5A)) Then
  loc_12221FF:             MsgBox("Select Valid Rate Code", &H40, var_128, var_13C, var_14C)
  loc_1222214:             Proc_20_38_1222348 = 0
  loc_122221D:           Else
  loc_122222A:             Set var_94 = Me.TxtGrid
  loc_1222230:             Call 0.Method_Proc_20_38_12223480 (arg_C, var_B0, var_B4)
  loc_1222238:             var_C4 = var_B0.Text
  loc_122224F:             If (var_B4 = vbNullString) Then
  loc_1222265:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122226D:               var_E4 = CVar(CLng(3)) 'Long
  loc_1222272:               var_104 = vbNullString
  loc_122227C:               Set var_B0 = Me.FGrid
  loc_1222282:               LateIdCallSt
  loc_1222297:             Else
  loc_12222C4:               Set var_94 = Me.TxtGrid
  loc_12222CA:               Call 0.Method_Proc_20_38_12223480 (arg_C, var_B0, var_B4, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)))
  loc_12222D2:               var_B0 = var_B0.Text
  loc_12222E9:               var_14C = CVar(CStr(Ucase(CVar(var_B4)))) 'String
  loc_12222F1:               Set var_12C = Me.FGrid
  loc_12222F7:               LateIdCallSt
  loc_1222315:             End If
  loc_1222315:           End If
  loc_1222315:         End If
  loc_1222315:       End If
  loc_1222315:     End If
  loc_1222315:   End If
  loc_1222315: End If
  loc_1222328: Set var_94 = Me.TxtGrid
  loc_122232E: Call 0.Method_Proc_20_38_12223480 (0, var_B0, 0, &HFF, var_12C)
  loc_1222336: var_B0.MaxLength = var_14C
  loc_1222342: Proc_20_38_1222348 = var_104
End Sub

Public Sub Proc_20_39_1078B34
  'Data Table: 46862C
  Dim var_90 As Integer
  Dim var_92 As Integer
  Dim var_9C As TextBox
  Dim var_98 As MSFlexGrid
  Dim var_B4 As Long
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim var_8C As Integer
  Dim var_EA As Integer
  Dim var_86 As Integer
  loc_107889E: var_90 = 0
  loc_10788A3: var_92 = 0
  loc_10788B2: Set var_98 = Me.TxtGrid
  loc_10788B8: Call 0.Method_Proc_20_39_1078B340 (0, var_9C, var_A0)
  loc_10788C0: var_92 = var_9C.Text
  loc_10788DA: If Not((Len(var_A0) < 4)) Then
  loc_10788F0:   var_B4 = CLng(Me.FGrid.Col)
  loc_1078900:   If Not (var_B4 = CLng(1)) Then
  loc_107890A:     If (var_B4 = CLng(2)) Then
  loc_107890D:     End If
  loc_1078919:     Set var_98 = Me.TxtGrid
  loc_107891F:     Call 0.Method_Proc_20_39_1078B340 (0, var_9C, var_A0)
  loc_1078927:     var_B4 = var_9C.Text
  loc_1078949:     var_88 = CInt(Mid(CVar(var_A0), 3, 2))
  loc_107896A:     Set var_98 = Me.TxtGrid
  loc_1078970:     Call 0.Method_Proc_20_39_1078B340 (0, var_9C, var_A0)
  loc_1078978:     var_88 = var_9C.Text
  loc_1078990:     var_E4 = Mid(CVar(var_A0), 1, 2)
  loc_107899A:     var_8A = CInt(var_E4)
  loc_10789BD:     Set var_98 = Me.txt
  loc_10789C3:     Call 0.Method_Proc_20_39_1078B340 (CInt(0), var_9C, var_A0)
  loc_10789CB:     var_8A = var_9C.Text
  loc_10789E5:     If ((CInt(var_A0) Mod 4) = 0) Then
  loc_10789EA:       var_8C = &H1D
  loc_10789F0:     Else
  loc_10789F2:       var_8C = &H1C
  loc_10789F5:     End If
  loc_10789FC:     For var_E8 = 1 To &HC: var_8E = var_E8 'Integer
  loc_1078A09:       If (var_88 = var_8E) Then
  loc_1078A0E:         var_90 = &HFF
  loc_1078A11:         Exit For
  loc_1078A14:       End If
  loc_1078A17:     Next var_E8 'Integer
  loc_1078A1C:     ' Referenced from: 1078A11
  loc_1078A22:     If (var_90 = &HFF) Then
  loc_1078A28:       var_EA = var_88
  loc_1078A31:       If Not (var_EA = 1) Then
  loc_1078A3A:         If Not (var_EA = 3) Then
  loc_1078A43:           If Not (var_EA = 5) Then
  loc_1078A4C:             If Not (var_EA = 7) Then
  loc_1078A55:               If Not (var_EA = 8) Then
  loc_1078A5E:                 If Not (var_EA = &HA) Then
  loc_1078A67:                   If (var_EA = &HC) Then
  loc_1078A6A:                   End If
  loc_1078A6A:                 End If
  loc_1078A6A:               End If
  loc_1078A6A:             End If
  loc_1078A6A:           End If
  loc_1078A6A:         End If
  loc_1078A77:         If ((var_8A >= 1) And (var_8A <= &H1F)) Then
  loc_1078A7C:           var_92 = &HFF
  loc_1078A7F:         End If
  loc_1078A82:       Else
  loc_1078A88:         If Not (var_EA = 4) Then
  loc_1078A91:           If Not (var_EA = 6) Then
  loc_1078A9A:             If Not (var_EA = 9) Then
  loc_1078AA3:               If (var_EA = &HB) Then
  loc_1078AA6:               End If
  loc_1078AA6:             End If
  loc_1078AA6:           End If
  loc_1078AB3:           If ((var_8A >= 1) And (var_8A <= &H1E)) Then
  loc_1078AB8:             var_92 = &HFF
  loc_1078ABB:           End If
  loc_1078ABE:         Else
  loc_1078AC4:           If (var_EA = 2) Then
  loc_1078AD5:             If ((var_8A >= 1) And (var_8A <= var_8C)) Then
  loc_1078ADA:               var_92 = &HFF
  loc_1078ADD:             End If
  loc_1078ADD:           End If
  loc_1078ADD:         End If
  loc_1078ADD:       End If
  loc_1078ADD:     End If
  loc_1078AEA:     If ((var_90 = &HFF) And (var_92 = &HFF)) Then
  loc_1078AEF:       var_86 = &HFF
  loc_1078AF5:     Else
  loc_1078B16:       MsgBox("InValid Date (DDMM Required)", &H40, "Validation", var_E4, var_12C)
  loc_1078B28:       var_86 = 0
  loc_1078B2B:     End If
  loc_1078B2B:   End If
  loc_1078B2B: End If
  loc_1078B2B: Proc_20_39_1078B34 = var_86
End Sub

Public Sub Proc_20_40_11F76B4
  'Data Table: 46862C
  Dim var_86 As Integer
  Dim var_A8 As MSFlexGrid
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_100 As String
  Dim var_144 As Variant
  Dim var_158 As String
  Dim var_1B8 As Variant
  Dim var_168 As Integer
  Dim var_188 As Variant
  Dim var_20C As Variant
  Dim var_21C As Variant
  Dim var_23C As Variant
  Dim var_244 As TextBox
  Dim var_264 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_26C As TextBox
  Dim var_178 As Variant
  Dim var_1F8 As Variant
  loc_11F7256: var_86 = 0
  loc_11F7281: For var_BC = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 2)): var_A2 = var_BC 'Byte
  loc_11F72A7:   If Not((CLng(var_A2) = CLng(Me.FGrid.Row))) Then
  loc_11F72AF:     var_CC = CVar(CLng(var_A2)) 'Long
  loc_11F72B7:     var_EC = CVar(CLng(1)) 'Long
  loc_11F72D1:     var_100 = CStr(Me.FGrid.TextMatrix))
  loc_11F7300:     var_158 = CStr(Me.FGrid.TextMatrix))
  loc_11F731E:     If (CVar(CLng(2)) And (var_158 <> vbNullString)) Then
  loc_11F732E:       var_EC = CVar(CLng(1)) 'Long
  loc_11F733D:       var_B8 = Me.FGrid.TextMatrix)
  loc_11F7365:       var_1B8 = Me.FGrid.TextMatrix)
  loc_11F7392:       var_188 = (Mid(CVar(CStr(var_B8)), 1, 2) + "/")
  loc_11F73BB:       var_20C = CVar(Proc_6_119_F7508C(CInt(Mid(CVar(CStr(var_1B8)), 3, 2)), var_188, var_1B8, CVar(CLng(1)), CVar(CLng(var_A2)), var_B8, var_EC)) 'String
  loc_11F73BE:       var_21C = (CVar(CLng(var_A2)) + var_20C)
  loc_11F73C7:       var_23C = (var_21C + "/")
  loc_11F73D9:       Set var_240 = Me.txt
  loc_11F73DF:       Call 0.Method_Proc_20_40_11F76B40 (CInt(0), var_244, var_100, var_23C, CVar(CLng(var_A2)))
  loc_11F73E7:       (var_100 <> vbNullString) = var_244.Text
  loc_11F73F2:       var_264 = (var_EC + CVar(var_100))
  loc_11F73F8:       var_90 = CDate(var_264)
  loc_11F742C:       var_CC = CVar(CLng(var_A2)) 'Long
  loc_11F7443:       var_B8 = Me.FGrid.TextMatrix)
  loc_11F7465:       Set var_144 = Me.FGrid
  loc_11F746B:       var_1B8 = var_144.TextMatrix)
  loc_11F7498:       var_188 = (Mid(CVar(CStr(var_B8)), 1, 2) + "/")
  loc_11F74C1:       var_20C = CVar(Proc_6_119_F7508C(CInt(Mid(CVar(CStr(var_1B8)), 3, 2)), var_188, var_1B8, CVar(CLng(2)), CVar(CLng(var_A2)), var_B8)) 'String
  loc_11F74C4:       var_21C = (CVar(CLng(2)) + var_20C)
  loc_11F74CD:       var_23C = (var_21C + "/")
  loc_11F74DF:       Set var_240 = Me.txt
  loc_11F74E5:       Call 0.Method_Proc_20_40_11F76B40 (CInt(0), var_244, var_100, var_23C)
  loc_11F74ED:       var_CC = var_244.Text
  loc_11F74F8:       var_264 = (var_90 + CVar(var_100))
  loc_11F74FE:       var_98 = CDate(var_264)
  loc_11F7539:       Set var_A8 = Me.TxtGrid
  loc_11F753F:       Call 0.Method_Proc_20_40_11F76B40 (0, var_144, var_100)
  loc_11F755F:       var_168 = Mid(CVar(var_100), 1, 2)
  loc_11F7570:       Set var_240 = Me.TxtGrid
  loc_11F7576:       Call 0.Method_Proc_20_40_11F76B40 (0, var_244, var_158)
  loc_11F757E:       var_CC = var_244.Text
  loc_11F75B8:       Set var_268 = Me.txt
  loc_11F75BE:       Call 0.Method_Proc_20_40_11F76B40 (CInt(0), var_26C)
  loc_11F75E8:       var_178 = (var_168 + "/")
  loc_11F75F2:       var_1F8 = (Mid(CVar(CStr(CVar(var_100))), 1, 2) + CVar(Proc_6_119_F7508C(CInt(Mid(CVar(var_158), 3, 2)))))
  loc_11F75FB:       var_20C = (Mid(CVar(CStr(2)), 3, 2) + "/")
  loc_11F7605:       var_23C = (var_20C + CVar(var_26C.Text))
  loc_11F7664:       If ((CDate(Format(CVar(CStr(var_23C)), "Short Date")) >= var_90) And (CDate(Format(CVar(CStr(var_23C)), "Short Date")) <= var_144.Text)) Then
  loc_11F7688:         MsgBox("Date Already Feeded", &H40, "Validation", var_168, Mid(CVar(CStr("Date Already Feeded")), 1, 2))
  loc_11F769D:         Proc_20_40_11F76B4 = &HFF
  loc_11F76A3:       End If
  loc_11F76A3:     End If
  loc_11F76A3:   End If
  loc_11F76A6: Next var_BC 'Byte
  loc_11F76AC: Proc_20_40_11F76B4 = 
End Sub

Public Sub Proc_20_41_1072F1C
  'Data Table: 46862C
  Dim var_86 As Integer
  Dim var_9C As MSFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_164 As MSFlexGrid
  Dim var_184 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_130 As Variant
  Dim var_110 As Variant
  Dim var_160 As Variant
  Dim var_1D8 As Variant
  Dim var_218 As Variant
  Dim var_238 As Variant
  Dim var_240 As TextBox
  Dim var_264 As Variant
  Dim var_90 As Double
  Dim var_208 As Variant
  loc_1072CE8: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1072CF0: var_DC = CVar(CLng(1)) 'Long
  loc_1072CF9: Set var_F0 = Me.FGrid
  loc_1072CFF: var_100 = var_F0.TextMatrix)
  loc_1072D1E: var_184 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1072D2F: Set var_1B8 = Me.FGrid
  loc_1072D35: var_1C8 = var_1B8.TextMatrix)
  loc_1072D62: var_160 = (Mid(CVar(CStr(var_100)), 1, 2) + "/")
  loc_1072D82: var_218 = (var_160 + Mid(CVar(CStr(var_1C8)), 3, 2))
  loc_1072D8B: var_238 = (var_218 + "/")
  loc_1072D9D: Set var_23C = Me.txt
  loc_1072DA3: Call 0.Method_Proc_20_41_1072F1C0 (CInt(0), var_240, var_244, var_238, var_1C8, CVar(CLng(1)))
  loc_1072DAB: var_184 = var_240.Text
  loc_1072DB6: var_264 = (var_100 + CVar(var_244))
  loc_1072DBC: var_90 = CDate(var_264)
  loc_1072DFD: Set var_9C = Me.TxtGrid
  loc_1072E03: Call 0.Method_Proc_20_41_1072F1C0 (0, var_F0, var_244, var_90)
  loc_1072E0B: var_DC = var_F0.Text
  loc_1072E1C: Set var_164 = Me.TxtGrid
  loc_1072E22: Call 0.Method_Proc_20_41_1072F1C0 (0, var_1B8, var_268)
  loc_1072E2A: var_BC = var_1B8.Text
  loc_1072E42: var_110 = Mid(CVar(var_244), 1, 2)
  loc_1072E4F: var_130 = (var_110 + "/")
  loc_1072E6E: var_1C8 = (2 + Mid(CVar(var_268), 3, 2))
  loc_1072E77: var_1D8 = (var_1C8 + "/")
  loc_1072E89: Set var_23C = Me.txt
  loc_1072E8F: Call 0.Method_Proc_20_41_1072F1C0 (CInt(0), var_240, var_26C)
  loc_1072E97: var_1D8 = var_240.Text
  loc_1072EA2: var_208 = (0 + CVar(var_26C))
  loc_1072EDC: If (CDate(Mid(CVar(CStr(var_1C8)), 3, 2)) <= var_90) Then
  loc_1072F00:   MsgBox("To Date Must Be Greater Than From Date", &H40, "Validation", var_110, 2)
  loc_1072F12:   var_86 = &HFF
  loc_1072F15: End If
  loc_1072F15: Proc_20_41_1072F1C = var_86
End Sub

Public Sub Proc_20_42_10BCE20
  'Data Table: 46862C
  Dim var_86 As Integer
  Dim var_9C As MSFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim var_12C As Variant
  Dim var_124 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_188 As TextBox
  Dim var_1AC As Variant
  Dim var_128 As MSFlexGrid
  Dim var_1DC As Variant
  Dim var_114 As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_26C As Variant
  loc_10BCB9C: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10BCBA4: var_DC = CVar(CLng(2)) 'Long
  loc_10BCBAD: Set var_F0 = Me.FGrid
  loc_10BCBBE: var_104 = CStr(var_F0.TextMatrix))
  loc_10BCBD7: If (var_104 <> vbNullString) Then
  loc_10BCBE6:   Set var_9C = Me.TxtGrid
  loc_10BCBEC:   Call 0.Method_Proc_20_42_10BCE200 (0, var_F0, var_104)
  loc_10BCBF4:   var_DC = var_F0.Text
  loc_10BCC05:   Set var_128 = Me.TxtGrid
  loc_10BCC0B:   Call 0.Method_Proc_20_42_10BCE200 (0, var_12C, var_130)
  loc_10BCC13:   var_BC = var_12C.Text
  loc_10BCC38:   var_124 = (Mid(CVar(var_104), 1, 2) + "/")
  loc_10BCC57:   var_170 = (var_124 + Mid(CVar(var_130), 3, 2))
  loc_10BCC60:   var_180 = (var_170 + "/")
  loc_10BCC72:   Set var_184 = Me.txt
  loc_10BCC78:   Call 0.Method_Proc_20_42_10BCE200 (CInt(0), var_188, var_18C)
  loc_10BCC80:   var_180 = var_188.Text
  loc_10BCC8B:   var_1AC = (0 + CVar(var_18C))
  loc_10BCCD1:   var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10BCCD9:   var_DC = CVar(CLng(2)) 'Long
  loc_10BCCE8:   var_100 = Me.FGrid.TextMatrix)
  loc_10BCD07:   var_1DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10BCD1E:   var_170 = Me.FGrid.TextMatrix)
  loc_10BCD2A:   var_124 = 2
  loc_10BCD38:   var_114 = CVar(CStr(var_100)) 'String
  loc_10BCD4B:   var_150 = (Mid(var_114, 1, var_124) + "/")
  loc_10BCD6B:   var_22C = (2 + Mid(CVar(CStr(var_170)), 3, 2))
  loc_10BCD74:   var_24C = (var_22C + "/")
  loc_10BCD86:   Set var_184 = Me.txt
  loc_10BCD8C:   Call 0.Method_Proc_20_42_10BCE200 (CInt(0), var_188, var_104, var_24C, var_170, CVar(CLng(2)))
  loc_10BCD94:   var_1DC = var_188.Text
  loc_10BCD9F:   var_26C = (var_100 + CVar(var_104))
  loc_10BCDE1:   If (CDate(Mid(CVar(CStr(var_170)), 3, 2)) >= CDate(var_26C)) Then
  loc_10BCE05:     MsgBox("From Date Must Be Lesser Than To Date", &H40, "Validation", var_114, var_124)
  loc_10BCE17:     var_86 = &HFF
  loc_10BCE1A:   End If
  loc_10BCE1A: End If
  loc_10BCE1A: Proc_20_42_10BCE20 = var_86
End Sub
