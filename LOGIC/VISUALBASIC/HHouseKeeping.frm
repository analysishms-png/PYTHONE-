VERSION 5.00
Begin VB.Form HHouseKeeping
  Caption = "House Keeping Screen"
  BackColor = &HFFC0FF&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "HHouseKeeping.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11460
  ClientHeight = 7905
  BeginProperty Font
    Name = "Times New Roman"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin BtnEnh lblOccRoom
    Left = 9390
    Top = 8415
    Width = 2430
    Height = 480
    TabIndex = 27
  End
  Begin BtnEnh BtnEnh2
    Left = 15
    Top = 8415
    Width = 9375
    Height = 480
    TabIndex = 26
  End
  Begin TextBox Text1
    Left = 15075
    Top = 8445
    Width = 1590
    Height = 315
    Visible = 0   'False
    TabIndex = 3
  End
  Begin TextBox Text3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 810
    Top = 1290
    Width = 975
    Height = 285
    Visible = 0   'False
    TabIndex = 0
    Tag = "2,0"
    Alignment = 2 'Center
    MaxLength = 1
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
    Left = 0
    Top = 555
    Width = 15255
    Height = 7170
    TabIndex = 2
  End
  Begin BtnEnh BtnEnh1
    Left = 11820
    Top = 8415
    Width = 1080
    Height = 495
    TabIndex = 24
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 25
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
  Begin Label Label2
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &H80000008&
    Left = 0
    Top = 3300
    Width = 285
    Height = 270
    TabIndex = 23
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 7
    BackColor = &HFF&
    ForeColor = &H80000008&
    Left = 3075
    Top = 3300
    Width = 285
    Height = 270
    TabIndex = 22
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 6
    BackColor = &HFFFF&
    ForeColor = &H80000008&
    Left = 1575
    Top = 3300
    Width = 285
    Height = 270
    TabIndex = 21
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Vacant Dirty"
    Index = 10
    ForeColor = &H0&
    Left = 1935
    Top = 3315
    Width = 1065
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
  Begin Label Label1
    Caption = "Out Of Order "
    Index = 9
    ForeColor = &H0&
    Left = 3435
    Top = 3315
    Width = 1140
    Height = 225
    TabIndex = 19
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
    Caption = "Vacant Clean"
    Index = 8
    ForeColor = &H0&
    Left = 360
    Top = 3315
    Width = 1155
    Height = 225
    TabIndex = 18
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
    Index = 5
    BackColor = &HFF00&
    ForeColor = &H80000008&
    Left = 4575
    Top = 3300
    Width = 285
    Height = 270
    TabIndex = 17
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Guest In House"
    Index = 7
    ForeColor = &H0&
    Left = 4935
    Top = 3315
    Width = 1290
    Height = 225
    TabIndex = 16
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
    Caption = "Expected Arrival"
    Index = 6
    ForeColor = &H0&
    Left = 6705
    Top = 3330
    Width = 1410
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
  Begin Label Label2
    Index = 4
    BackColor = &HFFFF00&
    ForeColor = &H80000008&
    Left = 6270
    Top = 3300
    Width = 285
    Height = 270
    TabIndex = 14
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label3
    BackColor = &HE0E0E0&
    ForeColor = &HC00000&
    Left = 0
    Top = 1605
    Width = 11340
    Height = 360
    TabIndex = 13
    BorderStyle = 1 'Fixed Single
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
  Begin Label Label2
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &H80000008&
    Left = 75
    Top = 1650
    Width = 285
    Height = 270
    TabIndex = 12
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 1
    BackColor = &HFF&
    ForeColor = &H80000008&
    Left = 3150
    Top = 1650
    Width = 285
    Height = 270
    TabIndex = 11
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 2
    BackColor = &HFFFF&
    ForeColor = &H80000008&
    Left = 1650
    Top = 1650
    Width = 285
    Height = 270
    TabIndex = 10
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Vacant Dirty"
    Index = 5
    ForeColor = &H0&
    Left = 2010
    Top = 1665
    Width = 1065
    Height = 225
    TabIndex = 9
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
    ForeColor = &H0&
    Left = 3510
    Top = 1665
    Width = 1140
    Height = 225
    TabIndex = 8
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
    Caption = "Vacant Clean"
    Index = 0
    ForeColor = &H0&
    Left = 435
    Top = 1665
    Width = 1155
    Height = 225
    TabIndex = 7
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
    Index = 3
    BackColor = &HFF00&
    ForeColor = &H80000008&
    Left = 4650
    Top = 1650
    Width = 285
    Height = 270
    TabIndex = 6
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Guest In House"
    Index = 3
    ForeColor = &H0&
    Left = 5010
    Top = 1665
    Width = 1290
    Height = 225
    TabIndex = 5
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
    Caption = "Expected Arrival"
    Index = 4
    ForeColor = &H0&
    Left = 6765
    Top = 1665
    Width = 1410
    Height = 225
    TabIndex = 4
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
  Begin Label LBLRoomName
    ForeColor = &HFF0000&
    Left = 120
    Top = 7965
    Width = 11685
    Height = 360
    TabIndex = 1
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

Attribute VB_Name = "HHouseKeeping"

Private global_60 As Long
Private global_64 As Integer

Private Sub Text3_GotFocus() 'EF4054
  'Data Table: 43D138
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  loc_EF3F9F: Me.Text3.SelStart = 0
  loc_EF3FDA: Me.Text3.SelLength = CLng(Len(Trim(CVar(Me.Text3.Text))))
  loc_EF4000: var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_EF4018: var_F0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_EF4038: global_68 = CStr(Me.FGrid1.TextMatrix))
  loc_EF4051: Exit Sub
End Sub

Private Sub Text3_KeyDown(KeyCode As Integer, Shift As Integer) '122B388
  'Data Table: 43D138
  Dim var_88 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_108 As Variant
  loc_122AE7A: If (KeyCode = &H28) Then
  loc_122AEB8:   If (CLng(Me.FGrid1.Rows) > (CLng(Me.FGrid1.Row) + 1)) Then
  loc_122AEC0:     Call Text3_Validate(0)
  loc_122AED8:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_122AEF0:     var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_122AF0A:     var_108 = CVar(Me.Text3.Text) 'String
  loc_122AF12:     Set var_11C = Me.FGrid1
  loc_122AF18:     LateIdCallSt
  loc_122AF40:     Me.Text3.Visible = False
  loc_122AF61:     var_C0 = CVar((CLng(Me.FGrid1.Row) + 1)) 'Long
  loc_122AF70:     Me.FGrid1.Row = var_C0
  loc_122AF7F:   End If
  loc_122AF82: Else
  loc_122AF88:   If (KeyCode = &H26) Then
  loc_122AFAA:     If (CLng(Me.FGrid1.Row) > 1) Then
  loc_122AFB2:       Call Text3_Validate(0)
  loc_122AFCA:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_122AFE2:       var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_122AFFC:       var_108 = CVar(Me.Text3.Text) 'String
  loc_122B004:       Set var_11C = Me.FGrid1
  loc_122B00A:       LateIdCallSt
  loc_122B032:       Me.Text3.Visible = False
  loc_122B053:       var_C0 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_122B062:       Me.FGrid1.Row = var_C0
  loc_122B071:     End If
  loc_122B074:   Else
  loc_122B07E:     If (CLng(KeyCode) = &H25) Then
  loc_122B0D4:       If ((0 < (CLng(Me.FGrid1.Col) - 6)) And (((CLng(Me.FGrid1.Col) - 2) Mod 6) = 0)) Then
  loc_122B0DC:         Call Text3_Validate(0)
  loc_122B0F4:         var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_122B10C:         var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_122B126:         var_108 = CVar(Me.Text3.Text) 'String
  loc_122B12E:         Set var_11C = Me.FGrid1
  loc_122B134:         LateIdCallSt
  loc_122B15C:         Me.Text3.Visible = False
  loc_122B17D:         var_C0 = CVar((CLng(Me.FGrid1.Col) - 6)) 'Long
  loc_122B18C:         Me.FGrid1.Col = var_C0
  loc_122B19B:       End If
  loc_122B19E:     Else
  loc_122B1A8:       If (CLng(KeyCode) = &H27) Then
  loc_122B210:         If ((CLng(Me.FGrid1.Cols) > (CLng(Me.FGrid1.Col) + 6)) And (((CLng(Me.FGrid1.Col) - 2) Mod 6) = 0)) Then
  loc_122B218:           Call Text3_Validate(0)
  loc_122B230:           var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_122B248:           var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_122B262:           var_108 = CVar(Me.Text3.Text) 'String
  loc_122B26A:           Set var_11C = Me.FGrid1
  loc_122B270:           LateIdCallSt
  loc_122B298:           Me.Text3.Visible = False
  loc_122B2B9:           var_C0 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_122B2C8:           Me.FGrid1.Col = var_C0
  loc_122B2D7:         End If
  loc_122B2D7:       End If
  loc_122B2D7:     End If
  loc_122B2D7:   End If
  loc_122B2D7: End If
  loc_122B2DD: If (KeyCode = &HD) Then
  loc_122B2E0:   DoEvents()
  loc_122B2EA:   Call Text3_Validate(0)
  loc_122B302:   var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_122B31A:   var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_122B334:   var_108 = CVar(Me.Text3.Text) 'String
  loc_122B33C:   Set var_11C = Me.FGrid1
  loc_122B342:   LateIdCallSt
  loc_122B36A:   Me.Text3.Visible = False
  loc_122B376:   Set var_88 = Me.FGrid1
  loc_122B387: End If
  loc_122B387: Exit Sub
End Sub

Private Sub Text3_KeyPress(KeyAscii As Integer) '12E33FC
  'Data Table: 43D138
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_DC As Integer
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_154 As MSHFlexGrid
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_1B4 As Variant
  Dim var_AC As Variant
  Dim var_EC As Variant
  Dim var_21C As Variant
  Dim var_20C As Variant
  Dim var_23C As Variant
  Dim var_25C As Variant
  Dim var_24C As Variant
  Dim KeyAscii As Integer
  loc_12E2D83: Me.Text1.MaxLength = &HB
  loc_12E2D8E: var_88 = "CDOR"
  loc_12E2D97: If (KeyAscii = &H1B) Then
  loc_12E2DAA:   Me.Text3.Text = global_68
  loc_12E2DB2: End If
  loc_12E2DDC: var_CC = InStr(1, CVar(var_88), Ucase(Chr(CLng(KeyAscii))), 1)
  loc_12E2DE0: var_DC = 0
  loc_12E2DFD: var_120 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E2E1B: var_140 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_12E2E35: var_174 = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_12E2E3B: var_184 = Trim(var_174)
  loc_12E2E4D: var_1B4 = var_140 And (var_184 <> vbNullString)
  loc_12E2E6F: If CBool(var_1B4) Then
  loc_12E2E9B:   If (Ucase(Chr(CLng(KeyAscii))) = "O") Then
  loc_12E2EB1:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E2ECF:     var_120 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_12E2F07:     var_21C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E2F25:     var_23C = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_12E2F3E:     var_164 = "Out Of Order Reason"
  loc_12E2F54:     var_25C = CVar(InputBox("Reason For Out of Order ?", var_164, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), var_174, var_184, var_1A4, var_1B4)) 'String
  loc_12E2F5C:     Set var_270 = Me.FGrid1
  loc_12E2F62:     LateIdCallSt
  loc_12E2FAB:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E2FC9:     var_120 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_12E2FD8:     var_CC = Me.FGrid1.TextMatrix)
  loc_12E3015:     var_24C = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_12E3046:     var_EC = "From Date "
  loc_12E305A:     var_20C = CVar(Proc_6_34_14ECF20(InputBox(var_EC, "From Date", CVar(CStr(var_CC)), var_164, var_174, var_184, var_1A4), var_24C, CVar(CLng(Me.FGrid1.Row)), var_CC, var_120)) 'String
  loc_12E3062:     Set var_270 = Me.FGrid1
  loc_12E3068:     LateIdCallSt
  loc_12E30B6:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E30D4:     var_120 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_12E310C:     If (CDate(CStr(Me.FGrid1.TextMatrix))) < MemVar_1F920EC) Then
  loc_12E3122:       var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E3131:       var_AC = Me.FGrid1.Col
  loc_12E3140:       var_120 = CVar((CLng(var_AC) + 2)) 'Long
  loc_12E3152:       Set var_154 = Me.FGrid1
  loc_12E3158:       LateIdCallSt
  loc_12E3196:       MsgBox(CVar("Date Can not be less then Audit date,So Audit date (" & CStr(MemVar_1F920EC) & ") will be stored here"), 0, var_AC, CVar(CStr(MemVar_1F920EC)), var_EC)
  loc_12E31AD:     End If
  loc_12E31C0:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E31DE:     var_120 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_12E31ED:     var_CC = Me.FGrid1.TextMatrix)
  loc_12E322A:     var_24C = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_12E325B:     var_EC = "To Date "
  loc_12E326F:     var_20C = CVar(Proc_6_34_14ECF20(InputBox(var_EC, "To Date", CVar(CStr(var_CC)), var_164, var_174, var_184, var_1A4), var_24C, CVar(CLng(Me.FGrid1.Row)), var_CC, var_120)) 'String
  loc_12E3277:     Set var_270 = Me.FGrid1
  loc_12E327D:     LateIdCallSt
  loc_12E32CB:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E32E9:     var_120 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_12E3321:     If (CDate(CStr(Me.FGrid1.TextMatrix))) < MemVar_1F920EC) Then
  loc_12E3337:       var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12E3346:       var_AC = Me.FGrid1.Col
  loc_12E3355:       var_120 = CVar((CLng(var_AC) + 3)) 'Long
  loc_12E3367:       Set var_154 = Me.FGrid1
  loc_12E336D:       LateIdCallSt
  loc_12E33AB:       MsgBox(CVar("Date Can not be less then Audit date,So Audit date (" & CStr(MemVar_1F920EC) & ") will be stored here"), 0, var_AC, CVar(CStr(MemVar_1F920EC)), var_EC)
  loc_12E33C2:     End If
  loc_12E33C2:   End If
  loc_12E33E5:   KeyAscii = Asc(CStr(Ucase(Chr(CLng(KeyAscii)))))
  loc_12E33F5: Else
  loc_12E33F7:   KeyAscii = 0
  loc_12E33FA: End If
  loc_12E33FA: Exit Sub
End Sub

Private Sub Text3_KeyUp(KeyCode As Integer, Shift As Integer) 'E6B0A4
  'Data Table: 43D138
  Dim var_AC As Variant
  Dim var_CC As Variant
  loc_E6B069: var_AC = CVar(CLng(global_64)) 'Long
  loc_E6B083: var_CC = CVar(Me.Text3.Text) 'String
  loc_E6B08B: Set var_E0 = Me.FGrid1
  loc_E6B091: LateIdCallSt
  loc_E6B0A3: Exit Sub
End Sub

Private Sub Text3_Validate(Cancel As Boolean) '1661860
  'Data Table: 43D138
  Dim var_8C As Variant
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_B0 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_158 As MSHFlexGrid
  Dim var_90 As String
  Dim Cancel As Integer
  Dim var_15C As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_170 As Variant
  Dim var_188 As String
  Dim var_88 As Integer
  Dim unk_43D14F As Connection15
  Dim var_1C0 As Variant
  Dim var_1F0 As Variant
  Dim var_214 As Variant
  Dim var_2CC As Variant
  Dim var_2F0 As Variant
  Dim var_3BC As Variant
  Dim var_194 As String
  Dim var_198 As String
  Dim var_244 As Variant
  Dim var_45C As Variant
  Dim var_234 As Variant
  loc_166023C: On Error Goto loc_16617E1
  loc_1660295: var_104 = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_16602B1: If CBool((Len(Trim(CVar(Me.Text3.Text))) = 1) And var_104) Then
  loc_16602C9:   var_86 = CByte(CLng(Me.FGrid1.Col)) 'Byte
  loc_16602F3:   If (Me.Text3.Text = "D") Then
  loc_1660301:     If (global_68 = "O") Then
  loc_1660317:       var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_166032F:       var_124 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1660334:       var_144 = "O"
  loc_166033E:       Set var_158 = Me.FGrid1
  loc_1660344:       LateIdCallSt
  loc_166035C:       Exit Sub
  loc_166035D:     End If
  loc_1660370:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_166038E:     var_124 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1660393:     var_144 = vbNullString
  loc_166039D:     Set var_158 = Me.FGrid1
  loc_16603A3:     LateIdCallSt
  loc_16603CE:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_16603EC:     var_124 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_16603F1:     var_144 = vbNullString
  loc_16603FB:     Set var_158 = Me.FGrid1
  loc_1660401:     LateIdCallSt
  loc_166042C:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_166044A:     var_124 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_166044F:     var_144 = vbNullString
  loc_1660459:     Set var_158 = Me.FGrid1
  loc_166045F:     LateIdCallSt
  loc_1660490:     var_D0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_166049F:     Me.FGrid1.Col = var_D0
  loc_16604C1:     Me.FGrid1.CellBackColor = &HFFFF
  loc_16604E2:     var_D0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_16604F1:     Me.FGrid1.Col = &HFFFF
  loc_1660513:     Me.FGrid1.CellBackColor = &HFFFF
  loc_166051E:   Else
  loc_166053E:     If (Me.Text3.Text = "O") Then
  loc_1660554:       var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1660572:       var_124 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1660581:       var_C0 = Me.FGrid1.TextMatrix)
  loc_16605A9:       If (CStr(var_C0) = "Occupied") Then
  loc_16605BF:         var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_16605CE:         var_B0 = Me.FGrid1.Col
  loc_16605D7:         var_124 = CVar(CLng(var_B0)) 'Long
  loc_16605EA:         Set var_158 = Me.FGrid1
  loc_16605F0:         LateIdCallSt
  loc_1660618:         Me.Text3.Text = global_68
  loc_1660639:         MsgBox("Sorry Room Is Not vacant", &H40, var_B0, var_C0, var_E0)
  loc_166064B:         Cancel = &HFF
  loc_166064E:         Exit Sub
  loc_166064F:       End If
  loc_1660662:       var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1660680:       var_124 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_166069A:       var_90 = CStr(Me.FGrid1.TextMatrix))
  loc_16606AC:       var_E0 = Me.FGrid1.Row
  loc_16606B5:       var_144 = CVar(CLng(var_E0)) 'Long
  loc_16606D3:       var_170 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_166071B:       If (var_170 And (CStr(Me.FGrid1.TextMatrix)) <> vbNullString)) Then
  loc_1660731:         var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1660749:         var_124 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1660763:         var_C0 = CVar(Me.Text3.Text) 'String
  loc_166076B:         Set var_15C = Me.FGrid1
  loc_1660771:         LateIdCallSt
  loc_166078F:         var_88 = &HFF
  loc_166079B:         unk_43D14F.BeginTrans var_18C
  loc_16607B3:         var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_16607CB:         var_124 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1660802:         If (CStr(Me.FGrid1.TextMatrix)) = "O") Then
  loc_1660818:           var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1660836:           var_124 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1660879:           unk_43D14F.Execute "delete from RoomBlockOut where RoomCode='" & CStr(Me.FGrid1.TextMatrix)) & "' And Type='O'", var_E0, -1
  loc_16608CE:           var_124 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_16608DD:           var_C0 = Me.FGrid1.TextMatrix)
  loc_16608ED:           Set var_15C = Me.FGrid1
  loc_166091A:           var_170 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1660929:           var_114 = Me.FGrid1.TextMatrix)
  loc_1660966:           var_1F0 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1660986:           Proc_6_7_F25D88(var_234, CVar(CStr(Me.FGrid1.TextMatrix))), var_1F0, CVar(CLng(Me.FGrid1.Row)), var_114, var_170, CVar(CLng(var_15C.Row)), var_C0)
  loc_16609BC:           var_2CC = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_16609DC:           Proc_6_7_F25D88(var_310, CVar(CStr(Me.FGrid1.TextMatrix))), var_2CC, CVar(CLng(Me.FGrid1.Row)), var_124, CVar(CLng(Me.FGrid1.Row)))
  loc_1660A1B:           var_3BC = Me.FGrid1.TextMatrix)
  loc_1660A35:           Proc_6_7_F25D88(var_49C, Date, var_3BC, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), var_15C)
  loc_1660A7A:           var_188 = "Insert into RoomBlockOut (RoomCode,Reasons,FromDate,ToDate,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,VTime) Values ('" & CStr(var_C0)
  loc_1660A93:           var_244 = CVar(var_188 & "','" & CStr(var_114) & "',") 'String
  loc_1660AE3:           var_45C = var_244 & var_234 & "," & var_310 & ",'" & CVar(CStr(var_3BC)) & "','" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) 
  loc_1660B2D:           unk_43D14F.Execute CStr(var_45C & "'," & var_49C & ",'A','" & CVar(MemVar_1F92078) & "','" & Format(Time, "hh:nn") & "')"), var_5A0, -1
  loc_1660BBD:         End If
  loc_1660BC3:         unk_43D14F.CommitTrans
  loc_1660BCA:         var_88 = 0
  loc_1660BCD:       End If
  loc_1660BE6:       var_D0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1660BF5:       Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Row))
  loc_1660C17:       var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1660C2F:       var_124 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1660C34:       var_144 = "Out Of Order"
  loc_1660C3E:       Set var_158 = Me.FGrid1
  loc_1660C44:       LateIdCallSt
  loc_1660C6F:       Me.FGrid1.CellBackColor = &HFF
  loc_1660C90:       var_D0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1660C9F:       Me.FGrid1.Col = &HFF
  loc_1660CC1:       Me.FGrid1.CellBackColor = &HFF
  loc_1660CCC:     Else
  loc_1660CEC:       If (Me.Text3.Text = "C") Then
  loc_1660CFA:         If (global_68 = "O") Then
  loc_1660D10:           var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1660D28:           var_124 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1660D2D:           var_144 = "O"
  loc_1660D37:           Set var_158 = Me.FGrid1
  loc_1660D3D:           LateIdCallSt
  loc_1660D55:           Exit Sub
  loc_1660D56:         End If
  loc_1660D69:         var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1660D87:         var_124 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1660D8C:         var_144 = vbNullString
  loc_1660D96:         Set var_158 = Me.FGrid1
  loc_1660D9C:         LateIdCallSt
  loc_1660DC7:         var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1660DE5:         var_124 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1660DEA:         var_144 = vbNullString
  loc_1660DF4:         Set var_158 = Me.FGrid1
  loc_1660DFA:         LateIdCallSt
  loc_1660E25:         var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1660E43:         var_124 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1660E48:         var_144 = vbNullString
  loc_1660E52:         Set var_158 = Me.FGrid1
  loc_1660E58:         LateIdCallSt
  loc_1660E89:         var_D0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1660E98:         Me.FGrid1.Col = var_D0
  loc_1660EBA:         Me.FGrid1.CellBackColor = &HFFFFFF
  loc_1660EDB:         var_D0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1660EEA:         Me.FGrid1.Col = &HFFFFFF
  loc_1660F0C:         Me.FGrid1.CellBackColor = &HFFFFFF
  loc_1660F17:       Else
  loc_1660F37:         If (Me.Text3.Text = "R") Then
  loc_1660F4D:           var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1660F5C:           var_B0 = Me.FGrid1.Col
  loc_1660F65:           var_124 = CVar(CLng(var_B0)) 'Long
  loc_1660F74:           var_C0 = Me.FGrid1.TextMatrix)
  loc_1660F7F:           var_90 = CStr(var_C0)
  loc_1660F91:           var_E0 = Me.FGrid1.Row
  loc_1660F9A:           var_144 = CVar(CLng(var_E0)) 'Long
  loc_1660FFA:           If (CVar(CLng(Me.FGrid1.Col)) Or (CStr(Me.FGrid1.TextMatrix)) = "D")) Then
  loc_1660FFF:             Cancel = &HFF
  loc_1661002:             Exit Sub
  loc_1661003:           End If
  loc_1661032:           If (MsgBox("Change Out of Order room to Vacant?", &H24, var_B0, var_C0, var_E0) = 6) Then
  loc_1661064:             If (MsgBox("Clear Comments?", &H24, var_B0, var_C0, var_E0) = 6) Then
  loc_1661074:               Me.Text3.Text = "C"
  loc_166108F:               var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_16610A7:               var_124 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16610AC:               var_144 = "C"
  loc_16610B6:               Set var_158 = Me.FGrid1
  loc_16610BC:               LateIdCallSt
  loc_16610E7:               var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661105:               var_124 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_166110A:               var_144 = vbNullString
  loc_1661114:               Set var_158 = Me.FGrid1
  loc_166111A:               LateIdCallSt
  loc_1661145:               var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661163:               var_124 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1661168:               var_144 = vbNullString
  loc_1661172:               Set var_158 = Me.FGrid1
  loc_1661178:               LateIdCallSt
  loc_16611A3:               var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_16611C1:               var_124 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_16611C6:               var_144 = vbNullString
  loc_16611D0:               Set var_158 = Me.FGrid1
  loc_16611D6:               LateIdCallSt
  loc_1661201:               var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_166121F:               var_124 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1661224:               var_144 = "Vacant"
  loc_166122E:               Set var_158 = Me.FGrid1
  loc_1661234:               LateIdCallSt
  loc_166124F:             Else
  loc_1661262:               var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661280:               var_124 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1661285:               var_144 = vbNullString
  loc_166128F:               Set var_158 = Me.FGrid1
  loc_1661295:               LateIdCallSt
  loc_16612C0:               var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_16612DE:               var_124 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_16612E3:               var_144 = vbNullString
  loc_16612ED:               Set var_158 = Me.FGrid1
  loc_16612F3:               LateIdCallSt
  loc_166130B:             End If
  loc_166131E:             var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_166133C:             var_124 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_166137D:             var_194 = "delete from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F92078 & "') and RoomCode='" & CStr(Me.FGrid1.TextMatrix))
  loc_166138D:             unk_43D14F.Execute var_194 & "' And Type='O'", var_E0, -1
  loc_16613CE:             var_D0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_16613DD:             Me.FGrid1.Col = var_D0
  loc_16613FF:             Me.FGrid1.CellBackColor = &HFFFFFF
  loc_1661420:             var_D0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_166142F:             Me.FGrid1.Col = &HFFFFFF
  loc_1661451:             Me.FGrid1.CellBackColor = &HFFFFFF
  loc_1661459:           End If
  loc_1661459:         End If
  loc_1661459:       End If
  loc_1661459:     End If
  loc_1661459:   End If
  loc_166146D:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_1661488:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_16614A0:   var_124 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16614E6:   If CBool(Ucase(CVar(CStr(Me.FGrid1.TextMatrix)))) <> "O") Then
  loc_16614EB:     var_88 = &HFF
  loc_16614F7:     unk_43D14F.BeginTrans var_18C
  loc_166150F:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661527:     var_124 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1661555:     var_144 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1661573:     var_170 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1661593:     var_1C0 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_16615C5:     var_214 = CVar("Update RoomMast set RoomStat='" & CStr(Me.FGrid1.TextMatrix)) & "' where (LOGSITE_CODE='" & MemVar_1F92078 & "') and code='") 'String
  loc_16615E2:     unk_43D14F.Execute CStr(var_214 & var_1C0 & "'"), var_244, -1
  loc_1661651:     var_124 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1661660:     var_C0 = Me.FGrid1.TextMatrix)
  loc_16616A6:     var_114 = Me.FGrid1.TextMatrix)
  loc_16616C0:     Proc_6_7_F25D88(var_1C0, Date, var_114, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), var_C0, var_124, CVar(CLng(Me.FGrid1.Row)))
  loc_1661717:     var_198 = "Insert into RoomBlockOut (RoomCode,Type,Site_Code,U_Name,FromDate,LogSite_Code,VTime) Values ('" & CStr(var_C0) & "','" & CStr(var_114)
  loc_1661763:     var_2F0 = CVar(var_198 & "','" & MemVar_1F92078 & "','" & MemVar_1F920C8 & "',") & var_1C0 & ",'" & CVar(MemVar_1F92078) & "','" & Format(Time, "hh:nn") 
  loc_166177A:     unk_43D14F.Execute CStr(var_2F0 & "')"), var_310, -1
  loc_16617D6:     unk_43D14F.CommitTrans
  loc_16617DD:     var_88 = 0
  loc_16617E0:   End If
  loc_16617E0: End If
  loc_16617E0: Exit Sub
  loc_16617E1: ' Referenced from: 166023C
  loc_16617E7: If (var_88 = &HFF) Then
  loc_16617F0:   unk_43D14F.RollbackTrans
  loc_16617F5: End If
  loc_1661806: var_104 = CVar(CLng(global_64)) 'Long
  loc_1661819: Set var_8C = Me.FGrid1
  loc_166181F: LateIdCallSt
  loc_1661845: If (Me.Text3.Visible = &HFF) Then
  loc_1661854:   Me.Text3.Visible = False
  loc_166185C: End If
  loc_166185C: Exit Sub
End Sub

Private Sub Form_Load() 'EB46B4
  'Data Table: 43D138
  Dim var_A8 As Variant
  loc_EB4628: On Error Goto loc_EB466E
  loc_EB4632: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_EB464A: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_EB4660: Me.LBLRoomName.BackColor = CLng(MemVar_1F921B0)
  loc_EB4668: Call Proc_33_14_15B68C0()
  loc_EB466D: Exit Sub
  loc_EB466E: ' Referenced from: EB4628
  loc_EB4676: Set var_A8 = Err()
  loc_EB467C: Call 0.Method_arg_2C (var_AC)
  loc_EB469D: MsgBox(CVar(var_AC), &H10, "Information", var_DC, var_FC)
  loc_EB46B0: Exit Sub
  loc_EB46B1: Exit Sub
End Sub

Private Sub Form_Resize() 'E75CF8
  'Data Table: 43D138
  loc_E75CA2: Call 0.Method_arg_50 (var_88)
  loc_E75CB4: Me.LblFormCaption.Caption = var_88
  loc_E75CCD: Me.LblFormCaption.Left = CDbl(0)
  loc_E75CDB: Call 0.Method_arg_100 (var_90)
  loc_E75CED: Me.LblFormCaption.Width = var_90
  loc_E75CF5: Exit Sub
End Sub

Private Sub Form_Activate() 'DFE87C
  'Data Table: 43D138
  loc_DFE874: Call Proc_33_14_15B68C0()
  loc_DFE879: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E56E4C
  'Data Table: 43D138
  loc_E56E16: If (CLng(KeyCode) = &H74) Then
  loc_E56E19:   Call Proc_33_14_15B68C0()
  loc_E56E1E: End If
  loc_E56E33: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &H79)) Then
  loc_E56E43:   Me.Global.Unload Me
  loc_E56E4B: End If
  loc_E56E4B: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '10C37B0
  'Data Table: 43D138
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  loc_10C34EB: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_10C34EE:   Exit Sub
  loc_10C34EF: End If
  loc_10C350A: If (Me.Text3.Visible = &HFF) Then
  loc_10C3519:   Me.Text3.Visible = False
  loc_10C3521: End If
  loc_10C352B: var_98 = Me.FGrid1.Rows
  loc_10C353A: var_AC = 1
  loc_10C357B: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_10C357E:   Exit Sub
  loc_10C357F: End If
  loc_10C35AA: If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_10C35C3:   global_60 = CLng(Me.FGrid1.Row)
  loc_10C35E3:   global_64 = CInt(CLng(Me.FGrid1.Col))
  loc_10C3624:   Me.Text3.Left = (CDbl(Me.FGrid1.Left) + CDbl(CLng(Me.FGrid1.CellLeft)))
  loc_10C3671:   Me.Text3.Top = (CDbl(Me.FGrid1.Top) + CDbl(CLng(Me.FGrid1.CellTop)))
  loc_10C3699:   var_AC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10C36C0:   Me.Text3.Width = CDbl(CLng(Me.FGrid1.ColWidth)))
  loc_10C36F4:   Me.Text3.Height = CDbl(CLng(Me.FGrid1.CellHeight))
  loc_10C370F:   Me.Text3.Visible = True
  loc_10C372A:   var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10C3742:   var_CC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10C3769:   Me.Text3.Text = CStr(Me.FGrid1.TextMatrix))
  loc_10C378F:   Me.Text3.SetFocus
  loc_10C37A7:   Me.Text3.ZOrder 0
  loc_10C37AF: End If
  loc_10C37AF: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A '132B0A4
  'Data Table: 43D138
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_AC As Variant
  Dim var_E0 As Variant
  Dim var_108 As String
  Dim var_140 As Variant
  loc_132A938: var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_132A955: var_88 = CInt(CLng(Me.FGrid1.Row))
  loc_132A989: If ((((CLng(KeyCode) = &H43) Or (CLng(KeyCode) = &H44)) Or (CLng(KeyCode) = &H4F)) Or (CLng(KeyCode) = &H52)) Then
  loc_132A99B:   Me.FGrid1.Redraw = False
  loc_132A9CE:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_132A9E4:     var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_132A9FC:     var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_132AA16:     var_108 = CStr(Me.FGrid1.TextMatrix))
  loc_132AA31:     var_140 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_132AAB8:     If CBool((CVar(CLng(Me.FGrid1.Col)) Or (CStr(Me.FGrid1.TextMatrix)) = "D")) And (Chr(CLng(KeyCode)) = "R")) Then
  loc_132AABB:       Exit Sub
  loc_132AABC:     End If
  loc_132AABC:     Call Text3_GotFocus()
  loc_132AAC4:     Call Text3_KeyPress(KeyCode)
  loc_132AAD1:     Call Text3_KeyDown(KeyCode, 0)
  loc_132AB24:     LateIdCallSt
  loc_132AB68:     Me.Text3.Text = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_132AB7F:     Call Text3_Validate(0)
  loc_132AB90:     Me.Text3.Visible = False
  loc_132AB98:     Call Proc_33_14_15B68C0(Me.FGrid1, CVar(CStr(Chr(CLng(KeyCode)))), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), var_140)
  loc_132ABA0:   Else
  loc_132ABCB:     If (((CLng(Me.FGrid1.ColSel) - 2) + 1) = 0) Then
  loc_132ABFB:       var_AC = CVar((CLng(Me.FGrid1.Col) + (CLng(Me.FGrid1.Col) Mod 6))) 'Long
  loc_132AC0A:       Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Row))
  loc_132AC32:       var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_132AC4A:       var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_132AC64:       var_108 = CStr(Me.FGrid1.TextMatrix))
  loc_132AC7F:       var_140 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_132AD06:       If CBool((CVar(CLng(Me.FGrid1.Col)) Or (CStr(Me.FGrid1.TextMatrix)) = "D")) And (Chr(CLng(KeyCode)) = "R")) Then
  loc_132AD09:         Exit Sub
  loc_132AD0A:       End If
  loc_132AD0A:       Call Text3_GotFocus()
  loc_132AD12:       Call Text3_KeyPress(KeyCode)
  loc_132AD1F:       Call Text3_KeyDown(KeyCode, 0)
  loc_132AD3E:       var_108 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_132AD4C:       Me.Text3.Text = var_108
  loc_132ADAC:       LateIdCallSt
  loc_132ADCD:       Call Text3_Validate(0)
  loc_132ADDE:       Me.Text3.Visible = False
  loc_132ADE6:       Call Proc_33_14_15B68C0(Me.FGrid1, CVar(CStr(Chr(CLng(KeyCode)))), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), var_140, (var_108 = "C"), CVar(CLng(Me.FGrid1.Col)))
  loc_132ADEE:     Else
  loc_132AE19:       If (((CLng(Me.FGrid1.ColSel) - 2) + 2) = 0) Then
  loc_132AE4F:         var_AC = CVar((CLng(Me.FGrid1.Col) + ((CLng(Me.FGrid1.Col) + 2) Mod 6))) 'Long
  loc_132AE5E:         Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Row))
  loc_132AE86:         var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_132AE9E:         var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_132AEB8:         var_108 = CStr(Me.FGrid1.TextMatrix))
  loc_132AED3:         var_140 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_132AF5A:         If CBool((CVar(CLng(Me.FGrid1.Col)) Or (CStr(Me.FGrid1.TextMatrix)) = "D")) And (Chr(CLng(KeyCode)) = "R")) Then
  loc_132AF5D:           Exit Sub
  loc_132AF5E:         End If
  loc_132AF5E:         Call Text3_GotFocus()
  loc_132AF66:         Call Text3_KeyPress(KeyCode)
  loc_132AF73:         Call Text3_KeyDown(KeyCode, 0)
  loc_132AF92:         var_108 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_132AFA0:         Me.Text3.Text = var_108
  loc_132B000:         LateIdCallSt
  loc_132B021:         Call Text3_Validate(0)
  loc_132B032:         Me.Text3.Visible = False
  loc_132B03A:         Call Proc_33_14_15B68C0(Me.FGrid1, CVar(CStr(Chr(CLng(KeyCode)))), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), var_140, (var_108 = "C"), CVar(CLng(Me.FGrid1.Col)))
  loc_132B03F:       End If
  loc_132B03F:     End If
  loc_132B03F:   End If
  loc_132B043:   Set var_8C = Me.FGrid1
  loc_132B067:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_132B082:   Me.FGrid1.Row = CVar(CLng(var_88))
  loc_132B098:   Me.FGrid1.Redraw = True
  loc_132B0A0: End If
  loc_132B0A0: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '1034BCC
  'Data Table: 43D138
  Dim var_8C As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_124 As Variant
  loc_1034998: var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_10349B5: var_88 = CInt(CLng(Me.FGrid1.Row))
  loc_10349F8: var_86 = CInt(((CLng(Me.FGrid1.Col) + 3) - ((CLng(Me.FGrid1.ColSel) + 1) Mod 6)))
  loc_1034A27: If (CLng(var_86) >= CLng(Me.FGrid1.Cols)) Then
  loc_1034A2A:   Exit Sub
  loc_1034A2B: End If
  loc_1034A3E: Me.FGrid1.Col = CVar(CLng(var_86))
  loc_1034A4A: var_C0 = CVar(CLng(var_88)) 'Long
  loc_1034A53: var_E0 = CVar(CLng(var_86)) 'Long
  loc_1034A6D: var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_1034A79: var_104 = CVar(CLng(var_88)) 'Long
  loc_1034A85: var_124 = CVar(CLng((var_86 - 1))) 'Long
  loc_1034ABD: If (var_124 And (CStr(Me.FGrid1.TextMatrix)) <> "Out Of Order")) Then
  loc_1034AC4:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1034ACD:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_1034AD2:   var_104 = "C"
  loc_1034ADC:   Set var_8C = Me.FGrid1
  loc_1034AE2:   LateIdCallSt
  loc_1034AED:   Call Fgrid1_UnknownEvent_9()
  loc_1034AF7:   Call Text3_Validate(0)
  loc_1034AFF: Else
  loc_1034B03:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1034B0C:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_1034B26:   var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_1034B32:   var_104 = CVar(CLng(var_88)) 'Long
  loc_1034B3E:   var_124 = CVar(CLng((var_86 - 1))) 'Long
  loc_1034B76:   If (var_124 And (CStr(Me.FGrid1.TextMatrix)) <> "Out Of Order")) Then
  loc_1034B7D:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1034B86:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1034B8B:     var_104 = "D"
  loc_1034B95:     Set var_8C = Me.FGrid1
  loc_1034B9B:     LateIdCallSt
  loc_1034BA6:     Call Fgrid1_UnknownEvent_9()
  loc_1034BB0:     Call Text3_Validate(0)
  loc_1034BB5:   End If
  loc_1034BB5: End If
  loc_1034BB9: Set var_8C = Me.FGrid1
  loc_1034BCA: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 '1397AB8
  'Data Table: 43D138
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_174 As Variant
  Dim var_AC As Variant
  Dim var_E0 As Variant
  Dim var_C0 As Variant
  Dim var_100 As Variant
  Dim var_134 As Variant
  Dim var_18C As String
  Dim var_190 As String
  Dim var_F0 As Variant
  Dim unk_43D14F As Connection15
  Dim var_88 As Recordset15
  Dim var_164 As Variant
  Dim var_1E8 As Variant
  Dim var_2C8 As Variant
  loc_139725B: var_174 = ((CLng(Me.FGrid1.ColSel) Mod 6) = 0)
  loc_1397272: var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13972DE: If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_13972F4:   var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_139730C:   var_100 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1397326:   var_90 = CStr(Me.FGrid1.TextMatrix))
  loc_1397351:   var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_139736F:   var_100 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1397394:   var_8C = var_100 & CStr(Me.FGrid1.TextMatrix)) & ")"
  loc_13973C3:   var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13973E1:   var_100 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_13973FB:   var_94 = CStr(Me.FGrid1.TextMatrix))
  loc_1397413: Else
  loc_1397438:   var_174 = (((CLng(Me.FGrid1.ColSel) - 1) Mod 6) = 0)
  loc_139744F:   var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13974BB:   If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_13974D1:     var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13974EF:     var_100 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1397509:     var_90 = CStr(Me.FGrid1.TextMatrix))
  loc_1397534:     var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1397571:     var_8C = CVar(CLng(Me.FGrid1.Col)) & CStr(Me.FGrid1.TextMatrix)) & ")"
  loc_13975A0:     var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13975BE:     var_100 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_13975D8:     var_94 = CStr(Me.FGrid1.TextMatrix))
  loc_13975F0:   Else
  loc_1397615:     var_174 = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_139762C:     var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_139765E:     var_134 = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_1397698:     If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(var_134) <> vbNullString)) Then
  loc_13976AE:       var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13976CC:       var_100 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_13976E6:       var_90 = CStr(Me.FGrid1.TextMatrix))
  loc_1397711:       var_E0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_139772F:       var_100 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1397754:       var_8C = CVar(CLng(Me.FGrid1.Col)) & CStr(Me.FGrid1.TextMatrix)) & ")"
  loc_1397774:       Set var_98 = Me.FGrid1
  loc_139777A:       var_A8 = var_98.Row
  loc_1397783:       var_E0 = CVar(CLng(var_A8)) 'Long
  loc_139779B:       var_100 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_13977B5:       var_94 = CStr(Me.FGrid1.TextMatrix))
  loc_13977CA:     End If
  loc_13977CA:   End If
  loc_13977CA: End If
  loc_13977E5: var_18C = "Select * from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type In ('O','M') And RoomCode='"
  loc_13977F9: var_E0 = MemVar_1F920EC
  loc_1397801: Proc_6_7_F25D88(var_A8, var_E0, CVar(var_18C & var_90 & "' And "), var_134, -1, var_98, var_100, var_E0)
  loc_1397820: unk_43D14F.Execute CStr(var_E0 & var_A8 & " between fromdate and ToDate"), "(", var_100
  loc_139782B: Set var_88 = var_98
  loc_139785D: If (var_88.RecordCount > 0) Then
  loc_139786F:   var_C0 = var_88.Fields
  loc_139789B:   var_E0 = CVar(var_8C) 'String
  loc_13978A6:   var_A8 = Space(3)
  loc_13978D2:   var_AC = var_88.Fields.Item("U_Name")
  loc_13978EF:   var_164 = var_174 & CVar(Proc_6_38_E68A98(CVar(var_AC), var_E0 & var_A8 & "Blocked By : ", var_E0, var_E0)) & " From : " 
  loc_1397923:   var_1E8 = 1 & Format(CVar(var_C0.Item("FromDate")), "dd/MMM/yyyy") & " To " 
  loc_1397999:   var_2C8 = 1 & Format(CVar(var_88.Fields.Item("ToDate")), "dd/MMM/yyyy") & Space(3) & "Reason: " & var_88.Fields.Item("Reasons").Value 
  loc_139799E:   var_8C = CStr(var_2C8)
  loc_13979DB: End If
  loc_13979E1: var_F0 = 0
  loc_1397A0C: var_190 = "Select IsNull(Max(Name),'') from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and code='" & var_90
  loc_1397A1C: unk_43D14F.Execute var_190 & "'", var_A8, -1
  loc_1397A24: var_98 = var_98.Fields
  loc_1397A2C: var_F0 = var_AC.Item(var_AC)
  loc_1397A70: Me.LBLRoomName.Caption = CStr(CVar(1 & Proc_6_38_E68A98(CVar(var_C0), var_C0, " ", 1, var_1E8)) & Space(3) & CVar(var_8C))
  loc_1397AA6: Me.LBLRoomName.Refresh
  loc_1397AB3: Set var_88 = Nothing
  loc_1397AB6: Exit Sub
End Sub

Private Sub BtnEnh1_UnknownEvent_9 'E17F2C
  'Data Table: 43D138
  Dim var_3F01 As Double
  loc_E17F21: Me.Global.Unload Me
  loc_E17F29: Exit Sub
  loc_E17F2A: var_3F01 = 
End Sub

Public Sub Proc_33_14_15B68C0
  'Data Table: 43D138
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_1F8 As String
  Dim unk_43D14F As Connection15
  Dim var_21C As Variant
  Dim var_220 As Variant
  Dim var_234 As Variant
  Dim var_96 As Integer
  Dim var_8A As Integer
  Dim var_294 As Double
  Dim var_C4 As Variant
  Dim var_8C As Integer
  Dim var_88 As Recordset15
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_A0 As Recordset15
  Dim var_92 As Integer
  loc_15B566F: var_D4 = CVar("SELECT Count(*) FROM RoomOcc WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "') and Type Not IN ('O','C')  AND (CHKINDATE<") 'String
  loc_15B567D: Proc_6_7_F25D88(var_C4, MemVar_1F920EC, var_D4, var_218, -1, var_21C)
  loc_15B569D: Proc_6_7_F25D88(var_124, MemVar_1F920EC, var_220 & var_C4 & " and  ChkOutDate IS NULL)  Or (ChkInDate <= ", 0)
  loc_15B56BD: Proc_6_7_F25D88(var_174, MemVar_1F920EC, var_234 & var_124 & " And ChkOutDate > ")
  loc_15B56DD: Proc_6_7_F25D88(var_1C4, MemVar_1F920EC)
  loc_15B56FC: unk_43D14F.Execute CStr(var_244 & var_174 & ") OR (CHKINDATE=" & var_1C4 & " and  ChkOutDate is null)"), "Occupied Rooms: ", 
  loc_15B5704:  = var_21C.Fields
  loc_15B570C:  = var_220.Item()
  loc_15B5714:  = var_234.Value
  loc_15B5725: Set var_278 = Me.lblOccRoom
  loc_15B572B: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_244)
  loc_15B5767: var_96 = 0
  loc_15B5773: Set var_21C = Me.FGrid1
  loc_15B5779: var_21C.Redraw = False
  loc_15B579C: var_1F8 = "Select * from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type='RO' AND InclCount='Y' order by COde"
  loc_15B57A5: unk_43D14F.Execute var_1F8, var_C4, -1
  loc_15B57B0: Set var_88 = var_21C
  loc_15B57E4: unk_43D14F.Execute "Select * from RoomOcc where (LOGSITE_CODE='" & MemVar_1F92078 & "') and ChkOutDate is Null ", var_C4, -1
  loc_15B57EF: Set var_9C = var_21C
  loc_15B581A: var_D4 = CVar("Select * from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type='O' And ") 'String
  loc_15B5828: Proc_6_7_F25D88(var_C4, MemVar_1F920EC, var_D4, var_124, -1)
  loc_15B5839: var_104 = var_21C & var_C4 & " between fromdate and ToDate" 
  loc_15B5847: unk_43D14F.Execute CStr(var_104), var_21C, var_21C
  loc_15B5852: Set var_A0 = var_21C
  loc_15B586E: var_8A = &H10
  loc_15B587E: Set var_21C = Me.FGrid1
  loc_15B5884: var_21C.RowHeightMin = &H1B8
  loc_15B58A3: If (Me.var_21C.RecordCount > 0) Then
  loc_15B58D3:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_15B590F:     var_294 = Val(CStr(Me.Recordset15.RecordCount))
  loc_15B5940:     var_C4 = CVar(((Val(CStr(Me.Recordset15.RecordCount)) - CDbl((CLng(var_294) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_15B5961:     var_8C = CInt(((Val(CStr(Format(var_C4, "00"))) + CDbl(1)) * CDbl(6)))
  loc_15B5979:   Else
  loc_15B5996:     var_D4 = "00"
  loc_15B59A8:     var_C4 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_15B59AF:     var_E4 = Format(var_C4, var_D4)
  loc_15B59C9:     var_8C = CInt(((Val(CStr(var_E4)) + CDbl(1)) * CDbl(6)))
  loc_15B59D8:   End If
  loc_15B59DB: Else
  loc_15B59F4:   MsgBox("First Fill Room Master", &H40, var_D4, var_E4, var_104)
  loc_15B5A07: Else
  loc_15B5A09:   var_90 = 1
  loc_15B5A0E:   var_8E = 0
  loc_15B5A24:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_15B5A3F:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_15B5A59:   Call Proc_33_15_10D7C18((var_8A - 1), (var_8C - 1), var_8E, var_90, var_8C, 1, 1)
  loc_15B5A71:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_15B5A8C:   Me.FGrid1.Col = CVar(CLng(var_8E))
  loc_15B5A9D:   Set var_21C = Me.FGrid1
  loc_15B5AA3:   var_21C.Redraw = False
  loc_15B5AAB:   ' Referenced from:   15B688B
  loc_15B5ABF:   If (Me.var_21C.EOF = 0) Then
  loc_15B5AC4:     var_90 = 1
  loc_15B5AC7:     ' Referenced from:   15B6888
  loc_15B5AD1:     If (var_90 <= (var_8A - 1)) Then
  loc_15B5AE8:       For var_29C = (var_8C - 6) To (var_8C - 1):   var_94 = var_29C 'Integer
  loc_15B5AF8:         If (var_94 = (var_8C - 6)) Then
  loc_15B5AFF:           var_F4 = CVar(CLng(var_90)) 'Long
  loc_15B5B0E:           var_D4 = Me.FGrid1.Col
  loc_15B5B47:           var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_D4.Fields.Item("Code")), CVar(CLng(var_D4)), var_F4, (var_8C - 6), &HFF, var_90, var_8C)) 'String
  loc_15B5B4F:           Set var_278 = Me.FGrid1
  loc_15B5B55:           LateIdCallSt
  loc_15B5B88:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15B5B97:           Me.FGrid1.Col = "Code"
  loc_15B5BA6:         End If
  loc_15B5BB0:         If (var_94 = (var_8C - 5)) Then
  loc_15B5BCA:           If (Me.Recordset15.RecordCount > 0) Then
  loc_15B5BD3:             Me.Recordset15.MoveFirst
  loc_15B5BD8:           End If
  loc_15B5C28:           Me.Recordset15.Find 1 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "RoomNo='", 0, 1, var_F4, var_278, var_E4) & "'", 1, var_294
  loc_15B5C53:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15B5C5A:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B5C72:             var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B5C77:             var_164 = "Occupied"
  loc_15B5C81:             Set var_220 = Me.FGrid1
  loc_15B5C87:             LateIdCallSt
  loc_15B5C9C:           Else
  loc_15B5CB0:             If (var_A0.RecordCount > 0) Then
  loc_15B5CB6:               var_A0.MoveFirst
  loc_15B5CBB:             End If
  loc_15B5CCF:             var_B4 = "Code"
  loc_15B5CE6:             var_220 = Me.Recordset15.Fields.Item(var_B4)
  loc_15B5D08:             var_A0.Find var_164 & Proc_6_38_E68A98(CVar(var_220), "RoomCode='", 0, 1, var_F4, var_220) & "'", var_114, var_B4
  loc_15B5D33:             If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15B5D3A:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B5D52:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B5D57:               var_164 = "Out Of Order"
  loc_15B5D61:               Set var_220 = Me.FGrid1
  loc_15B5D67:               LateIdCallSt
  loc_15B5D7C:             Else
  loc_15B5D80:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B5D98:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B5D9D:               var_164 = "Vacant"
  loc_15B5DA7:               Set var_220 = Me.FGrid1
  loc_15B5DAD:               LateIdCallSt
  loc_15B5DBF:             End If
  loc_15B5DBF:           End If
  loc_15B5DD8:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15B5DE7:           Me.FGrid1.Col = var_B4
  loc_15B5DF6:         End If
  loc_15B5E00:         If (var_94 = (var_8C - 4)) Then
  loc_15B5E17:           If (var_A0.RecordCount > 0) Then
  loc_15B5E1D:             var_A0.MoveFirst
  loc_15B5E22:           End If
  loc_15B5E36:           var_B4 = "Code"
  loc_15B5E4D:           var_220 = Me.Recordset15.Fields.Item(var_B4)
  loc_15B5E6F:           var_A0.Find var_114 & Proc_6_38_E68A98(CVar(var_220), "RoomCode='", 0, 1, var_F4, var_220, var_164) & "'", var_B4, var_220
  loc_15B5E97:           If (var_A0.AbsolutePosition > 0) Then
  loc_15B5EE3:             var_E4 = CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Type")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))) 'String
  loc_15B5EEB:             Set var_278 = Me.FGrid1
  loc_15B5EF1:             LateIdCallSt
  loc_15B5F0E:           Else
  loc_15B5F40:             var_164 = CVar(CLng(var_90)) 'Long
  loc_15B5F4F:             var_134 = Me.FGrid1.Col
  loc_15B5FA1:             var_114 = (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomStat")), Me.var_134.Fields.Item("RoomStat"), "C") = vbNullString)
  loc_15B5FA8:             var_124 = IIf(var_114, "C", CVar(Proc_6_38_E68A98(CVar(Me.var_134.Fields.Item("RoomStat")), CVar(CLng(var_134)), var_164)))
  loc_15B5FB1:             var_154 = CVar(CStr(var_124)) 'String
  loc_15B5FB9:             Set var_2A4 = Me.FGrid1
  loc_15B5FBF:             LateIdCallSt
  loc_15B5FEC:           End If
  loc_15B6000:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_15B601C:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_15B603D:           Call Proc_33_16_112C53C(CByte(CLng(Me.FGrid1.Col)), var_92, var_2A4, var_154)
  loc_15B605B:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_15B607C:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15B608B:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_15B609A:         End If
  loc_15B60A4:         If (var_94 = (var_8C - 3)) Then
  loc_15B60F4:           If (Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomStat")), var_164))) = "O") Then
  loc_15B610B:             If (var_A0.RecordCount > 0) Then
  loc_15B6111:               var_A0.MoveFirst
  loc_15B616A:               var_A0.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & "'"), 0, 1
  loc_15B6199:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15B61E5:                 var_E4 = CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Reasons")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))) 'String
  loc_15B61ED:                 Set var_278 = Me.FGrid1
  loc_15B61F3:                 LateIdCallSt
  loc_15B6210:               Else
  loc_15B6214:                 var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B622C:                 var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B6231:                 var_164 = vbNullString
  loc_15B623B:                 Set var_220 = Me.FGrid1
  loc_15B6241:                 LateIdCallSt
  loc_15B6253:               End If
  loc_15B6256:             Else
  loc_15B625A:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B6272:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B6277:               var_164 = vbNullString
  loc_15B6281:               Set var_220 = Me.FGrid1
  loc_15B6287:               LateIdCallSt
  loc_15B6299:             End If
  loc_15B629C:           Else
  loc_15B62A0:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B62B8:             var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B62BD:             var_164 = vbNullString
  loc_15B62C7:             Set var_220 = Me.FGrid1
  loc_15B62CD:             LateIdCallSt
  loc_15B62DF:           End If
  loc_15B62F8:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15B6307:           Me.FGrid1.Col = var_B4
  loc_15B6316:         End If
  loc_15B6320:         If (var_94 = (var_8C - 2)) Then
  loc_15B6326:           var_B4 = "RoomStat"
  loc_15B633D:           var_220 = Me.Recordset15.Fields.Item(var_B4)
  loc_15B6370:           If (Trim(CVar(Proc_6_38_E68A98(CVar(var_220), var_220, var_164, var_114, var_B4, var_220, var_164))) = "O") Then
  loc_15B6387:             If (var_A0.RecordCount > 0) Then
  loc_15B638D:               var_A0.MoveFirst
  loc_15B63D6:               var_114 = "'"
  loc_15B63E6:               var_A0.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & var_114), 0, 1
  loc_15B6415:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15B6461:                 var_E4 = CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("FromDate")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)), var_114)) 'String
  loc_15B6469:                 Set var_278 = Me.FGrid1
  loc_15B646F:                 LateIdCallSt
  loc_15B648C:               Else
  loc_15B6490:                 var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B64A8:                 var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B64AD:                 var_164 = vbNullString
  loc_15B64B7:                 Set var_220 = Me.FGrid1
  loc_15B64BD:                 LateIdCallSt
  loc_15B64CF:               End If
  loc_15B64D2:             Else
  loc_15B64D6:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B64EE:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B64F3:               var_164 = vbNullString
  loc_15B64FD:               Set var_220 = Me.FGrid1
  loc_15B6503:               LateIdCallSt
  loc_15B6515:             End If
  loc_15B6518:           Else
  loc_15B651C:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B6534:             var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B6539:             var_164 = vbNullString
  loc_15B6543:             Set var_220 = Me.FGrid1
  loc_15B6549:             LateIdCallSt
  loc_15B655B:           End If
  loc_15B6574:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15B6583:           Me.FGrid1.Col = var_B4
  loc_15B6592:         End If
  loc_15B659C:         If (var_94 = (var_8C - 1)) Then
  loc_15B65A2:           var_B4 = "RoomStat"
  loc_15B65B9:           var_220 = Me.Recordset15.Fields.Item(var_B4)
  loc_15B65EC:           If (Trim(CVar(Proc_6_38_E68A98(CVar(var_220), var_220, var_164, var_114, var_B4, var_220, var_164))) = "O") Then
  loc_15B6603:             If (var_A0.RecordCount > 0) Then
  loc_15B6609:               var_A0.MoveFirst
  loc_15B6652:               var_114 = "'"
  loc_15B6662:               var_A0.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & var_114), 0, 1
  loc_15B6691:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15B66DD:                 var_E4 = CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("ToDate")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)), var_114)) 'String
  loc_15B66E5:                 Set var_278 = Me.FGrid1
  loc_15B66EB:                 LateIdCallSt
  loc_15B6708:               Else
  loc_15B670C:                 var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B6724:                 var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B6729:                 var_164 = vbNullString
  loc_15B6733:                 Set var_220 = Me.FGrid1
  loc_15B6739:                 LateIdCallSt
  loc_15B674B:               End If
  loc_15B674E:             Else
  loc_15B6752:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B676A:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B676F:               var_164 = vbNullString
  loc_15B6779:               Set var_220 = Me.FGrid1
  loc_15B677F:               LateIdCallSt
  loc_15B6791:             End If
  loc_15B6794:           Else
  loc_15B6798:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_15B67B0:             var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15B67B5:             var_164 = vbNullString
  loc_15B67BF:             Set var_220 = Me.FGrid1
  loc_15B67C5:             LateIdCallSt
  loc_15B67D7:           End If
  loc_15B67F0:           var_B4 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_15B67FF:           Me.FGrid1.Col = var_B4
  loc_15B680E:         End If
  loc_15B6811:       Next var_29C 'Integer
  loc_15B681C:       var_90 = (var_90 + 1)
  loc_15B6829:       If (var_90 > (var_8A - 1)) Then
  loc_15B6845:         var_B4 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_15B6854:         Me.FGrid1.Col = var_B4
  loc_15B6863:       End If
  loc_15B6869:       var_88.MoveNext
  loc_15B6882:       If (var_88.EOF = &HFF) Then
  loc_15B6885:         GoTo loc_15B688E
  loc_15B6888:       End If
  loc_15B6888:       GoTo loc_15B5AC7
  loc_15B688B:     End If
  loc_15B688B:     GoTo loc_15B5AAB
  loc_15B688E:     ' Referenced from:   15B6885
  loc_15B688E:   End If
  loc_15B688E: End If
  loc_15B689C: Me.FGrid1.Redraw = True
  loc_15B68A9: Set var_88 = Nothing
  loc_15B68B1: Set var_9C = Nothing
  loc_15B68B9: Set var_A0 = Nothing
  loc_15B68BC: Exit Sub
End Sub

Public Sub Proc_33_15_10D7C18(arg_C, arg_10) '10D7C18
  'Data Table: 43D138
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_F8 As String
  Dim arg_10 As Integer
  loc_10D7917: Me.FGrid1.Row = 0
  loc_10D791F: ' Referenced from: 10D7B76
  loc_10D7925: If (arg_10 < 5) Then
  loc_10D7928:   GoTo loc_10D7B79
  loc_10D792B: End If
  loc_10D792F: Set var_B0 = Me.FGrid1
  loc_10D7940: For var_B4 = arg_10 To (arg_10 - 2) Step &HFF: var_86 = var_B4 'Integer
  loc_10D794A:   var_98 = CVar(CLng(var_86)) 'Long
  loc_10D794F:   var_C4 = 0
  loc_10D795C:   Set var_AC = Me.FGrid1
  loc_10D7962:   LateIdCallSt
  loc_10D7970: Next var_B4 'Integer
  loc_10D7984: For var_D8 = (arg_10 - 5) To (arg_10 - 3): var_86 = var_D8 'Integer
  loc_10D7994:   If (var_86 = (arg_10 - 5)) Then
  loc_10D799B:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D79A0:     var_C4 = &H3E8
  loc_10D79AD:     Set var_AC = Me.FGrid1
  loc_10D79B3:     LateIdCallSt
  loc_10D79C2:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D79C7:     var_C4 = 1
  loc_10D79D1:     Set var_AC = Me.FGrid1
  loc_10D79D7:     LateIdCallSt
  loc_10D79F5:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D79FE:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10D7A03:     var_F8 = "Room No"
  loc_10D7A0D:     Set var_10C = Me.FGrid1
  loc_10D7A13:     LateIdCallSt
  loc_10D7A25:   End If
  loc_10D7A2F:   If (var_86 = (arg_10 - 4)) Then
  loc_10D7A36:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D7A3B:     var_C4 = &H4B0
  loc_10D7A48:     Set var_AC = Me.FGrid1
  loc_10D7A4E:     LateIdCallSt
  loc_10D7A5D:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D7A62:     var_C4 = 1
  loc_10D7A6C:     Set var_AC = Me.FGrid1
  loc_10D7A72:     LateIdCallSt
  loc_10D7A90:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D7A99:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10D7A9E:     var_F8 = "Status"
  loc_10D7AA8:     Set var_10C = Me.FGrid1
  loc_10D7AAE:     LateIdCallSt
  loc_10D7AC0:   End If
  loc_10D7ACA:   If (var_86 = (arg_10 - 3)) Then
  loc_10D7AD1:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D7AD6:     var_C4 = &H190
  loc_10D7AE3:     Set var_AC = Me.FGrid1
  loc_10D7AE9:     LateIdCallSt
  loc_10D7AF8:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D7B03:     var_C4 = CVar(CInt(4)) 'Integer
  loc_10D7B0B:     Set var_AC = Me.FGrid1
  loc_10D7B11:     LateIdCallSt
  loc_10D7B2F:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D7B38:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10D7B3D:     var_F8 = vbNullString
  loc_10D7B47:     Set var_10C = Me.FGrid1
  loc_10D7B4D:     LateIdCallSt
  loc_10D7B5F:   End If
  loc_10D7B62: Next var_D8 'Integer
  loc_10D7B69: Set var_B0 = Nothing 
  loc_10D7B73: arg_10 = (arg_10 - 6)
  loc_10D7B76: GoTo loc_10D791F
  loc_10D7B79: ' Referenced from: 10D7928
  loc_10D7BA0: For var_110 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_110 'Integer
  loc_10D7BB9:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_10D7BC9:   For var_114 = 1 To arg_C: var_88 = var_114 'Integer
  loc_10D7BE2:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_10D7BFD:     Me.FGrid1.CellBackColor = &HFFFF00
  loc_10D7C08:   Next var_114 'Integer
  loc_10D7C10: Next var_110 'Integer
  loc_10D7C15: Exit Sub
End Sub

Public Sub Proc_33_16_112C53C(arg_C) '112C53C
  'Data Table: 43D138
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_11C As String
  loc_112C1DB: var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112C1E5: var_C8 = CVar(CLng(arg_C)) 'Long
  loc_112C227: If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "D") Then
  loc_112C243:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112C252:   Me.FGrid1.Col = var_A8
  loc_112C274:   Me.FGrid1.CellBackColor = &HFFFF
  loc_112C295:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112C2A4:   Me.FGrid1.Col = &HFFFF
  loc_112C2C6:   Me.FGrid1.CellBackColor = &HFFFF
  loc_112C2D1: Else
  loc_112C2E4:   var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112C2EE:   var_C8 = CVar(CLng(arg_C)) 'Long
  loc_112C330:   If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "O") Then
  loc_112C34C:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112C35B:     Me.FGrid1.Col = var_A8
  loc_112C37D:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112C395:     var_C8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_112C39A:     var_11C = "Out Of Order"
  loc_112C3A4:     Set var_140 = Me.FGrid1
  loc_112C3AA:     LateIdCallSt
  loc_112C3D5:     Me.FGrid1.CellBackColor = &HFF
  loc_112C3F6:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112C405:     Me.FGrid1.Col = &HFF
  loc_112C427:     Me.FGrid1.CellBackColor = &HFF
  loc_112C432:   Else
  loc_112C445:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112C44F:     var_C8 = CVar(CLng(arg_C)) 'Long
  loc_112C491:     If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "C") Then
  loc_112C4AD:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112C4BC:       Me.FGrid1.Col = var_A8
  loc_112C4DE:       Me.FGrid1.CellBackColor = &HFFFFFF
  loc_112C4FF:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112C50E:       Me.FGrid1.Col = &HFFFFFF
  loc_112C51D:       var_A8 = &HFFFFFF
  loc_112C530:       Me.FGrid1.CellBackColor = var_A8
  loc_112C538:     End If
  loc_112C538:   End If
  loc_112C538: End If
  loc_112C538: Exit Sub
  loc_112C539: var_C8 = var_A8
End Sub
