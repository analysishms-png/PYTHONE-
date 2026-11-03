VERSION 5.00
Begin VB.Form HRoomCheckOutClearance
  Caption = "Check Out Clearance Screen"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "HRoomCheckOutClearance.frx":0
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
  Begin Frame Frame1
    ForeColor = &H80000008&
    Left = 18405
    Top = 9345
    Width = 1560
    Height = 1140
    Visible = 0   'False
    TabIndex = 26
    Appearance = 0 'Flat
    Begin Label Label2
      Index = 12
      BackColor = &HFF&
      ForeColor = &H80000008&
      Left = 15
      Top = 465
      Width = 285
      Height = 270
      TabIndex = 32
      BorderStyle = 1 'Fixed Single
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Index = 11
      BackColor = &HFFFF&
      ForeColor = &H80000008&
      Left = 15
      Top = 135
      Width = 285
      Height = 270
      TabIndex = 31
      BorderStyle = 1 'Fixed Single
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Dirty"
      Index = 15
      ForeColor = &H0&
      Left = 390
      Top = 150
      Width = 405
      Height = 225
      TabIndex = 30
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
      Index = 14
      ForeColor = &H0&
      Left = 345
      Top = 480
      Width = 1140
      Height = 225
      TabIndex = 29
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
      Caption = "Clean"
      Index = 1
      ForeColor = &H0&
      Left = 375
      Top = 810
      Width = 480
      Height = 225
      TabIndex = 28
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
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 15
      Top = 795
      Width = 285
      Height = 270
      TabIndex = 27
      BorderStyle = 1 'Fixed Single
      Appearance = 0 'Flat
    End
  End
  Begin CommandButton Command1
    Caption = "&Legends"
    Left = 8130
    Top = 10440
    Width = 1575
    Height = 450
    Visible = 0   'False
    TabIndex = 25
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
  Begin TextBox Text1
    Left = 15885
    Top = 10380
    Width = 1590
    Height = 315
    Visible = 0   'False
    TabIndex = 3
  End
  Begin TextBox Text3
    BackColor = &HFFFFFF&
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
  Begin MSHFlexGrid FGrid1
    Left = 0
    Top = 555
    Width = 13365
    Height = 7410
    TabIndex = 2
  End
  Begin BtnEnh lblOccRoom
    Left = 15
    Top = 8415
    Width = 2430
    Height = 480
    TabIndex = 33
  End
  Begin BtnEnh Exit
    Left = 2445
    Top = 8415
    Width = 1080
    Height = 495
    TabIndex = 35
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 34
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
  Begin Label Label4
    Caption = "(C)lean, (R)emove Out of Order, (D)irty, (O)ut of Order"
    Left = 10035
    Top = 10515
    Width = 5550
    Height = 360
    Visible = 0   'False
    TabIndex = 24
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
    Left = 12660
    Top = 8670
    Width = 8595
    Height = 360
    Visible = 0   'False
    TabIndex = 1
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

Attribute VB_Name = "HRoomCheckOutClearance"


Private Sub Form_Load() 'EB4438
  'Data Table: 43DCA8
  Dim var_A8 As Variant
  loc_EB43AC: On Error Goto loc_EB43F2
  loc_EB43B6: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_EB43CE: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_EB43E4: Me.LBLRoomName.BackColor = CLng(MemVar_1F921B0)
  loc_EB43EC: Call Proc_234_10_15DC68C()
  loc_EB43F1: Exit Sub
  loc_EB43F2: ' Referenced from: EB43AC
  loc_EB43FA: Set var_A8 = Err()
  loc_EB4400: Call 0.Method_arg_2C (var_AC)
  loc_EB4421: MsgBox(CVar(var_AC), &H10, "Information", var_DC, var_FC)
  loc_EB4434: Exit Sub
  loc_EB4435: Exit Sub
End Sub

Private Sub Form_Resize() 'E6E958
  'Data Table: 43DCA8
  loc_E6E902: Call 0.Method_arg_50 (var_88)
  loc_E6E914: Me.LblFormCaption.Caption = var_88
  loc_E6E92D: Me.LblFormCaption.Left = CDbl(0)
  loc_E6E93B: Call 0.Method_arg_100 (var_90)
  loc_E6E94D: Me.LblFormCaption.Width = var_90
  loc_E6E955: Exit Sub
End Sub

Private Sub Form_Activate() 'E001A4
  'Data Table: 43DCA8
  loc_E0019C: Call Proc_234_10_15DC68C()
  loc_E001A1: Exit Sub
  loc_E001A2: CExtInstUnk
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E55648
  'Data Table: 43DCA8
  loc_E55612: If (CLng(KeyCode) = &H74) Then
  loc_E55615:   Call Proc_234_10_15DC68C()
  loc_E5561A: End If
  loc_E5562F: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &H79)) Then
  loc_E5563F:   Me.Global.Unload Me
  loc_E55647: End If
  loc_E55647: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'F0D734
  'Data Table: 43DCA8
  Dim var_98 As Variant
  Dim var_AC As Long
  loc_F0D66B: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_F0D66E:   Exit Sub
  loc_F0D66F: End If
  loc_F0D68A: If (Me.Text3.Visible = &HFF) Then
  loc_F0D699:   Me.Text3.Visible = False
  loc_F0D6A1: End If
  loc_F0D6AB: var_98 = Me.FGrid1.Rows
  loc_F0D6BA: var_AC = 1
  loc_F0D6FB: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_F0D6FE:   Exit Sub
  loc_F0D6FF: End If
  loc_F0D72A: If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_F0D72D:   Call Fgrid1_UnknownEvent_B()
  loc_F0D732: End If
  loc_F0D732: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A 'F98CA8
  'Data Table: 43DCA8
  Dim var_8C As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_88 As Integer
  loc_F98B3C: var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_F98B59: var_88 = CInt(CLng(Me.FGrid1.Row))
  loc_F98B8D: If ((((CLng(KeyCode) = &H20) Or (CLng(KeyCode) = &H44)) Or (CLng(KeyCode) = &H4F)) Or (CLng(KeyCode) = &H52)) Then
  loc_F98B9F:   Me.FGrid1.Redraw = False
  loc_F98BD2:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_F98BD5:     Call Fgrid1_UnknownEvent_B()
  loc_F98BDD:   Else
  loc_F98C08:     If (((CLng(Me.FGrid1.ColSel) - 2) + 1) = 0) Then
  loc_F98C0B:       Call Fgrid1_UnknownEvent_B()
  loc_F98C13:     Else
  loc_F98C3E:       If (((CLng(Me.FGrid1.ColSel) - 2) + 2) = 0) Then
  loc_F98C41:         Call Fgrid1_UnknownEvent_B()
  loc_F98C46:       End If
  loc_F98C46:     End If
  loc_F98C46:   End If
  loc_F98C4A:   Set var_8C = Me.FGrid1
  loc_F98C6E:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_F98C89:   Me.FGrid1.Row = CVar(CLng(var_88))
  loc_F98C9F:   Me.FGrid1.Redraw = True
  loc_F98CA7: End If
  loc_F98CA7: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '1399FDC
  'Data Table: 43DCA8
  Dim var_8C As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_138 As String
  Dim var_188 As Variant
  Dim var_194 As String
  Dim unk_43DCB6 As Connection15
  Dim var_1B8 As Variant
  Dim var_214 As Variant
  Dim var_2F4 As Variant
  loc_139977C: var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_1399799: var_88 = CInt(CLng(Me.FGrid1.Row))
  loc_13997DC: var_86 = CInt(((CLng(Me.FGrid1.Col) + 3) - ((CLng(Me.FGrid1.ColSel) + 1) Mod 6)))
  loc_139980B: If (CLng(var_86) >= CLng(Me.FGrid1.Cols)) Then
  loc_139980E:   Exit Sub
  loc_139980F: End If
  loc_1399822: Me.FGrid1.Col = CVar(CLng(var_86))
  loc_139982E: var_C0 = CVar(CLng(var_88)) 'Long
  loc_1399837: var_E0 = CVar(CLng(var_86)) 'Long
  loc_1399851: var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_139985D: var_104 = CVar(CLng(var_88)) 'Long
  loc_1399869: var_124 = CVar(CLng((var_86 - 1))) 'Long
  loc_13998A1: If (var_124 And (CStr(Me.FGrid1.TextMatrix)) = "Occupied")) Then
  loc_13998A8:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_13998B1:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_13998B6:   var_104 = "¨"
  loc_13998C0:   Set var_8C = Me.FGrid1
  loc_13998C6:   LateIdCallSt
  loc_13998E4:   var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1399902:   var_E0 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1399930:   var_104 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_139994E:   var_124 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1399993:   var_194 = "Delete from RoomCheckOutStatus where FolioNoDocId='" & CStr(Me.FGrid1.TextMatrix)) & "' And RoomCode='" & CStr(Me.FGrid1.TextMatrix))
  loc_13999A3:   unk_43DCB6.Execute var_194 & "'", var_1B8, -1
  loc_13999EC:   var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1399A0A:   var_E0 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1399A38:   var_104 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1399A56:   var_124 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1399A65:   var_188 = Me.FGrid1.TextMatrix)
  loc_1399A7B:   var_1B8 = Me.FGrid1.Row
  loc_1399AAB:   var_214 = Me.FGrid1.TextMatrix)
  loc_1399AF3:   Proc_6_7_F25D88(var_354, Date, var_214, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_1B8)), var_188, var_124)
  loc_1399B10:   var_138 = "Insert into RoomCheckOutStatus (FolionoDocId,RoomCode,ChkOutClearanceYN,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & CStr(Me.FGrid1.TextMatrix))
  loc_1399B4B:   var_2F4 = CVar(var_138 & "','" & CStr(var_188) & "','") & IIf((CStr(var_214) = "þ"), "Y", "N") & "','" & CVar(MemVar_1F92078) & "','" 
  loc_1399B8F:   unk_43DCB6.Execute CStr(var_2F4 & CVar(MemVar_1F920C8) & "'," & var_354 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_3E8, -1
  loc_1399BF8: Else
  loc_1399BFC:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_1399C05:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_1399C1F:   var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_1399C2B:   var_104 = CVar(CLng(var_88)) 'Long
  loc_1399C37:   var_124 = CVar(CLng((var_86 - 1))) 'Long
  loc_1399C6F:   If (var_124 And (CStr(Me.FGrid1.TextMatrix)) = "Occupied")) Then
  loc_1399C76:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_1399C7F:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1399C84:     var_104 = "þ"
  loc_1399C8E:     Set var_8C = Me.FGrid1
  loc_1399C94:     LateIdCallSt
  loc_1399CB2:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1399CD0:     var_E0 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1399CFE:     var_104 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1399D1C:     var_124 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1399D61:     var_194 = "Delete from RoomCheckOutStatus where FolioNoDocId='" & CStr(Me.FGrid1.TextMatrix)) & "' And RoomCode='" & CStr(Me.FGrid1.TextMatrix))
  loc_1399D71:     unk_43DCB6.Execute var_194 & "'", var_1B8, -1
  loc_1399DBA:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1399DD8:     var_E0 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1399E06:     var_104 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1399E24:     var_124 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1399E33:     var_188 = Me.FGrid1.TextMatrix)
  loc_1399E79:     var_214 = Me.FGrid1.TextMatrix)
  loc_1399EC1:     Proc_6_7_F25D88(var_354, Date, var_214, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), var_188, var_124)
  loc_1399EDE:     var_138 = "Insert into RoomCheckOutStatus (FolionoDocId,RoomCode,ChkOutClearanceYN,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & CStr(Me.FGrid1.TextMatrix))
  loc_1399F19:     var_2F4 = CVar(var_138 & "','" & CStr(var_188) & "','") & IIf((CStr(var_214) = "þ"), "Y", "N") & "','" & CVar(MemVar_1F92078) & "','" 
  loc_1399F5D:     unk_43DCB6.Execute CStr(var_2F4 & CVar(MemVar_1F920C8) & "'," & var_354 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_3E8, -1
  loc_1399FC3:   End If
  loc_1399FC3: End If
  loc_1399FC7: Set var_8C = Me.FGrid1
  loc_1399FD8: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 '14F350C
  'Data Table: 43DCA8
  Dim var_16C As Variant
  Dim var_D8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_17C As Variant
  Dim var_184 As String
  Dim var_18C As String
  Dim var_15C As Variant
  Dim var_190 As String
  Dim unk_43DCB6 As Connection15
  Dim var_88 As Recordset15
  Dim var_1A8 As Fields15
  Dim var_1A0 As Variant
  Dim var_1F8 As Variant
  Dim var_26C As Variant
  Dim var_2A4 As Variant
  Dim var_2C4 As Variant
  Dim var_338 As Variant
  Dim var_370 As Variant
  Dim var_390 As Variant
  loc_14F2777: var_8C = vbNullString
  loc_14F2799: var_16C = ((CLng(Me.FGrid1.ColSel) Mod 6) = 0)
  loc_14F27B0: var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F27D1: Set var_10C = Me.FGrid1
  loc_14F27D7: var_11C = var_10C.TextMatrix)
  loc_14F27FA: var_17C = CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_11C))) <> vbNullString)
  loc_14F281C: If CBool(var_17C) Then
  loc_14F2832:   var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F2859:   var_C8 = Me.FGrid1.TextMatrix)
  loc_14F2870:   Proc_6_7_F25D88(var_11C, MemVar_1F920EC, var_C8, CVar(CLng(Me.FGrid1.Col)))
  loc_14F2890:   var_184 = "Select * from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type='O' And RoomCode='"
  loc_14F28BF:   unk_43DCB6.Execute CStr(CVar(var_184 & CStr(var_C8) & "' And ") & var_11C & " between fromdate and ToDate"), var_17C, -1
  loc_14F28CA:   Set var_88 = var_10C
  loc_14F290C:   If (var_88.RecordCount > 0) Then
  loc_14F293A:     var_8C = CStr(var_88.Fields.Item("Reasons").Value)
  loc_14F2947:   End If
  loc_14F2981:   var_C8 = Me.FGrid1.TextMatrix)
  loc_14F2993:   var_16C = 0
  loc_14F29C9:   var_190 = "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and code='" & CStr(var_C8) & "'"
  loc_14F29D2:   unk_43DCB6.Execute var_190, var_11C, -1
  loc_14F29DA:   var_10C = var_10C.Fields
  loc_14F29E2:   var_16C = var_1A8.Item(var_1A8)
  loc_14F2A0A:   var_17C = CVar(CVar(CLng(Me.FGrid1.Row)) & Proc_6_38_E68A98(CVar(var_1AC), var_1AC, " ", var_C8, CVar(CLng(Me.FGrid1.Col)))) & Space(5) 
  loc_14F2A21:   var_1A0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F2A3F:   var_1F8 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_14F2A7B:   var_26C = var_1F8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14F2A92:   var_2A4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F2AB0:   var_2C4 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_14F2AEC:   var_338 = var_2C4 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14F2B03:   var_370 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F2B21:   var_390 = CVar((CLng(Me.FGrid1.Col) + 5)) 'Long
  loc_14F2B65:   Me.LBLRoomName.Caption = CStr(var_390 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & CVar(var_8C))
  loc_14F2BE7:   Me.LBLRoomName.Refresh
  loc_14F2BF2: Else
  loc_14F2C17:   var_16C = (((CLng(Me.FGrid1.ColSel) - 1) Mod 6) = 0)
  loc_14F2C2E:   var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F2C4F:   Set var_10C = Me.FGrid1
  loc_14F2C55:   var_11C = var_10C.TextMatrix)
  loc_14F2C78:   var_17C = CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_11C))) <> vbNullString)
  loc_14F2C9A:   If CBool(var_17C) Then
  loc_14F2CCE:     var_F8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_14F2CDD:     var_C8 = Me.FGrid1.TextMatrix)
  loc_14F2CF4:     Proc_6_7_F25D88(var_11C, MemVar_1F920EC, var_C8, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), CVar(CLng(Me.FGrid1.Row)), var_16C, var_370)
  loc_14F2D14:     var_184 = "Select * from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type='O' And RoomCode='"
  loc_14F2D43:     unk_43DCB6.Execute CStr(CVar(var_184 & CStr(var_C8) & "' And ") & var_11C & " between fromdate and ToDate"), var_17C, -1
  loc_14F2D4E:     Set var_88 = var_10C
  loc_14F2D90:     If (var_88.RecordCount > 0) Then
  loc_14F2DBE:       var_8C = CStr(var_88.Fields.Item("Reasons").Value)
  loc_14F2DCB:     End If
  loc_14F2DFC:     var_F8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_14F2E0B:     var_C8 = Me.FGrid1.TextMatrix)
  loc_14F2E1D:     var_16C = 0
  loc_14F2E53:     var_190 = "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and code='" & CStr(var_C8) & "'"
  loc_14F2E5C:     unk_43DCB6.Execute var_190, var_11C, -1
  loc_14F2E64:     var_10C = var_10C.Fields
  loc_14F2E6C:     var_16C = var_1A8.Item(var_1A8)
  loc_14F2E81:     var_15C = CVar(CVar(CLng(Me.FGrid1.Row)) & Proc_6_38_E68A98(CVar(var_1AC), var_1AC, " ", var_C8, CVar(CLng(Me.FGrid1.Col)))) 'String
  loc_14F2E94:     var_17C = var_15C & Space(5) 
  loc_14F2EAB:     var_1A0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F2EC9:     var_1F8 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_14F2F05:     var_26C = var_1F8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14F2F1C:     var_2A4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F2F3A:     var_2C4 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_14F2F76:     var_338 = var_2C4 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14F2F8D:     var_370 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F2FAB:     var_390 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_14F2FEF:     Me.LBLRoomName.Caption = CStr(var_390 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & CVar(var_8C))
  loc_14F3071:     Me.LBLRoomName.Refresh
  loc_14F307C:   Else
  loc_14F30A1:     var_16C = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_14F30B8:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F30D9:     Set var_10C = Me.FGrid1
  loc_14F30DF:     var_11C = var_10C.TextMatrix)
  loc_14F3102:     var_17C = CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_11C))) <> vbNullString)
  loc_14F3124:     If CBool(var_17C) Then
  loc_14F3158:       var_F8 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_14F3167:       var_C8 = Me.FGrid1.TextMatrix)
  loc_14F317E:       Proc_6_7_F25D88(var_11C, MemVar_1F920EC, var_C8, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), CVar(CLng(Me.FGrid1.Row)), var_16C, var_370)
  loc_14F319E:       var_184 = "Select * from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type='O' And RoomCode='"
  loc_14F31CD:       unk_43DCB6.Execute CStr(CVar(var_184 & CStr(var_C8) & "' And ") & var_11C & " between fromdate and ToDate"), var_17C, -1
  loc_14F31D8:       Set var_88 = var_10C
  loc_14F321A:       If (var_88.RecordCount > 0) Then
  loc_14F3248:         var_8C = CStr(var_88.Fields.Item("Reasons").Value)
  loc_14F3255:       End If
  loc_14F3286:       var_F8 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_14F3295:       var_C8 = Me.FGrid1.TextMatrix)
  loc_14F32A7:       var_16C = 0
  loc_14F32D6:       var_18C = "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and code='" & CStr(var_C8)
  loc_14F32E6:       unk_43DCB6.Execute var_18C & "'", var_11C, -1
  loc_14F32EE:       var_10C = var_10C.Fields
  loc_14F32F6:       var_16C = var_1A8.Item(var_1A8)
  loc_14F330B:       var_15C = CVar(CVar(CLng(Me.FGrid1.Row)) & Proc_6_38_E68A98(CVar(var_1AC), var_1AC, " ", var_C8, CVar(CLng(Me.FGrid1.Col)))) 'String
  loc_14F331E:       var_17C = var_15C & Space(5) 
  loc_14F3335:       var_1A0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F3353:       var_1F8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14F338F:       var_26C = var_1F8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14F33A6:       var_2A4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F33C4:       var_2C4 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_14F3400:       var_338 = var_2C4 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14F3417:       var_370 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14F3435:       var_390 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_14F3479:       Me.LBLRoomName.Caption = CStr(var_390 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & CVar(var_8C))
  loc_14F34FB:       Me.LBLRoomName.Refresh
  loc_14F3503:     End If
  loc_14F3503:   End If
  loc_14F3503: End If
  loc_14F3508: Set var_88 = Nothing
  loc_14F350B: Exit Sub
End Sub

Private Sub Exit_UnknownEvent_9 'E18A74
  'Data Table: 43DCA8
  loc_E18A69: Me.Global.Unload Me
  loc_E18A71: Exit Sub
End Sub

Private Sub Command1_Click() 'E5F1B8
  'Data Table: 43DCA8
  loc_E5F187: If (Me.Frame1.Visible = &HFF) Then
  loc_E5F196:   Me.Frame1.Visible = False
  loc_E5F1A1: Else
  loc_E5F1AD:   Me.Frame1.Visible = True
  loc_E5F1B5: End If
  loc_E5F1B5: Exit Sub
  loc_E5F1B6: CExtInstUnk
End Sub

Public Sub Proc_234_10_15DC68C
  'Data Table: 43DCA8
  Dim var_A4 As String
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_164 As Variant
  Dim var_1B4 As Variant
  Dim var_1F8 As String
  Dim unk_43DCB6 As Connection15
  Dim var_21C As Variant
  Dim var_220 As Variant
  Dim var_234 As Variant
  Dim var_96 As Integer
  Dim var_8A As Integer
  Dim var_28C As Double
  Dim var_294 As Double
  Dim var_C4 As Variant
  Dim var_8C As Integer
  Dim var_88 As Recordset15
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_124 As Variant
  Dim var_A0 As Recordset15
  Dim var_92 As Integer
  loc_15DB37F: var_D4 = CVar("SELECT Count(*) FROM RoomOcc WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "') and Type Not IN ('O','C')  AND (CHKINDATE<") 'String
  loc_15DB38D: Proc_6_7_F25D88(var_C4, MemVar_1F920EC, var_D4, var_218, -1, var_21C)
  loc_15DB3AD: Proc_6_7_F25D88(var_124, MemVar_1F920EC, var_220 & var_C4 & " and  ChkOutDate IS NULL)  Or (ChkInDate <= ", 0)
  loc_15DB3CD: Proc_6_7_F25D88(var_174, MemVar_1F920EC, var_234 & var_124 & " And ChkOutDate > ")
  loc_15DB3ED: Proc_6_7_F25D88(var_1C4, MemVar_1F920EC)
  loc_15DB40C: unk_43DCB6.Execute CStr(var_244 & var_174 & ") OR (CHKINDATE=" & var_1C4 & " and  ChkOutDate is null)"), "Occupied Rooms: ", 
  loc_15DB414:  = var_21C.Fields
  loc_15DB41C:  = var_220.Item()
  loc_15DB424:  = var_234.Value
  loc_15DB435: Set var_278 = Me.lblOccRoom
  loc_15DB43B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_244)
  loc_15DB477: var_96 = 0
  loc_15DB483: Set var_21C = Me.FGrid1
  loc_15DB489: var_21C.Redraw = False
  loc_15DB4AC: var_1F8 = "Select * from roommast R left join roomocc  O on o.roomno=r.code where (R.LOGSITE_CODE='" & MemVar_1F92078 & "' or R.LOGSITE_CODE='HO') and R.Type='RO' AND R.InclCount='Y' and O.Type Not IN ('O','C') order by COde"
  loc_15DB4B5: unk_43DCB6.Execute var_1F8, var_C4, -1
  loc_15DB4C0: Set var_88 = var_21C
  loc_15DB4E4: var_A4 = "Select R.DocId,Max(R.RoomNo) RoomNo,Max(IsNull(P.Bill_No,'')) Bill_No,Max(IsNull(RC.ChkOutClearanceYN,'')) CHKOUTCLYN from RoomOcc R Left Join PayCharge P On P.FolionoDocID=R.DocId Or P.RelatedFolioNoDocId=R.DocId Left Join RoomCheckOutStatus RC On R.DocId=RC.FolionoDocid And R.RoomNo=RC.RoomCode where (R.LOGSITE_CODE='" & MemVar_1F92078
  loc_15DB4F4: unk_43DCB6.Execute var_A4 & "') and ChkOutDate is Null Group By R.DocId", var_C4, -1
  loc_15DB4FF: Set var_9C = var_21C
  loc_15DB52A: var_D4 = CVar("Select * from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type='O' And ") 'String
  loc_15DB538: Proc_6_7_F25D88(var_C4, MemVar_1F920EC, var_D4, var_124, -1)
  loc_15DB549: var_104 = var_21C & var_C4 & " between fromdate and ToDate" 
  loc_15DB557: unk_43DCB6.Execute CStr(var_104), var_21C, var_21C
  loc_15DB562: Set var_A0 = var_21C
  loc_15DB57E: var_8A = &H10
  loc_15DB58E: Set var_21C = Me.FGrid1
  loc_15DB594: var_21C.RowHeightMin = &H1B8
  loc_15DB5B3: If (Me.var_21C.RecordCount > 0) Then
  loc_15DB5E3:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_15DB601:     var_28C = Val(CStr(Me.Recordset15.RecordCount))
  loc_15DB61F:     var_294 = Val(CStr(Me.Recordset15.RecordCount))
  loc_15DB650:     var_C4 = CVar(((var_28C - CDbl((CLng(var_294) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_15DB671:     var_8C = CInt(((Val(CStr(Format(var_C4, "00"))) + CDbl(1)) * CDbl(6)))
  loc_15DB689:   Else
  loc_15DB6A6:     var_D4 = "00"
  loc_15DB6B8:     var_C4 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_15DB6BF:     var_E4 = Format(var_C4, var_D4)
  loc_15DB6D9:     var_8C = CInt(((Val(CStr(var_E4)) + CDbl(1)) * CDbl(6)))
  loc_15DB6E8:   End If
  loc_15DB6EB: Else
  loc_15DB704:   MsgBox("First Fill Room Master", &H40, var_D4, var_E4, var_104)
  loc_15DB717: Else
  loc_15DB719:   var_90 = 1
  loc_15DB71E:   var_8E = 0
  loc_15DB734:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_15DB74F:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_15DB769:   Call Proc_234_11_10D9A0C((var_8A - 1), (var_8C - 1), var_8E, var_90, var_8C, 1, 1)
  loc_15DB781:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_15DB79C:   Me.FGrid1.Col = CVar(CLng(var_8E))
  loc_15DB7AD:   Set var_21C = Me.FGrid1
  loc_15DB7B3:   var_21C.Redraw = False
  loc_15DB7BB:   ' Referenced from:   15DC657
  loc_15DB7CF:   If (Me.var_21C.EOF = 0) Then
  loc_15DB7D4:     var_90 = 1
  loc_15DB7D7:     ' Referenced from:   15DC654
  loc_15DB7DE:     If (var_90 < var_8A) Then
  loc_15DB7F5:       For var_29C = (var_8C - 6) To (var_8C - 1):   var_94 = var_29C 'Integer
  loc_15DB805:         If (var_94 = (var_8C - 6)) Then
  loc_15DB80C:           var_F4 = CVar(CLng(var_90)) 'Long
  loc_15DB81B:           var_D4 = Me.FGrid1.Col
  loc_15DB854:           var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_D4.Fields.Item("Code")), CVar(CLng(var_D4)), var_F4, (var_8C - 6), &HFF, var_90, var_8C)) 'String
  loc_15DB85C:           Set var_278 = Me.FGrid1
  loc_15DB862:           LateIdCallSt
  loc_15DB895:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15DB8A4:           Me.FGrid1.Col = "Code"
  loc_15DB8B3:         End If
  loc_15DB8BD:         If (var_94 = (var_8C - 5)) Then
  loc_15DB8D7:           If (Me.Recordset15.RecordCount > 0) Then
  loc_15DB8E0:             Me.Recordset15.MoveFirst
  loc_15DB8E5:           End If
  loc_15DB935:           Me.Recordset15.Find 1 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "RoomNo='", 0, 1, var_F4, var_278, var_E4) & "'", 1, var_294
  loc_15DB960:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15DB995:             var_164 = CVar(CLng(var_90)) 'Long
  loc_15DB9AD:             var_1B4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DB9D3:             var_F4 = (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Bill_no")), var_28C) <> vbNullString)
  loc_15DB9E3:             var_134 = CVar(CStr(IIf(var_F4, "Billed", "Occupied"))) 'String
  loc_15DB9EB:             Set var_278 = Me.FGrid1
  loc_15DB9F1:             LateIdCallSt
  loc_15DBA1D:           Else
  loc_15DBA31:             If (var_A0.RecordCount > 0) Then
  loc_15DBA37:               var_A0.MoveFirst
  loc_15DBA3C:             End If
  loc_15DBA89:             var_A0.Find var_134 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "RoomCode='", 0, 1, var_F4, var_278) & "'", var_1B4, var_164
  loc_15DBAB4:             If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15DBABB:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DBAD3:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DBAD8:               var_164 = "Out Of Order"
  loc_15DBAE2:               Set var_220 = Me.FGrid1
  loc_15DBAE8:               LateIdCallSt
  loc_15DBAFD:             Else
  loc_15DBB01:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DBB19:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DBB1E:               var_164 = "Vacant"
  loc_15DBB28:               Set var_220 = Me.FGrid1
  loc_15DBB2E:               LateIdCallSt
  loc_15DBB40:             End If
  loc_15DBB40:           End If
  loc_15DBB59:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15DBB68:           Me.FGrid1.Col = var_B4
  loc_15DBB77:         End If
  loc_15DBB81:         If (var_94 = (var_8C - 4)) Then
  loc_15DBB98:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_15DBBB4:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_15DBBD0:           If (var_A0.RecordCount > 0) Then
  loc_15DBBD6:             var_A0.MoveFirst
  loc_15DBBDB:           End If
  loc_15DBBEF:           var_B4 = "Code"
  loc_15DBC06:           var_220 = Me.Recordset15.Fields.Item(var_B4)
  loc_15DBC28:           var_A0.Find var_164 & Proc_6_38_E68A98(CVar(var_220), "RoomCode='", 0, 1, var_F4, var_92, var_220) & "'", var_114, var_B4
  loc_15DBC50:           If (var_A0.AbsolutePosition > 0) Then
  loc_15DBC63:             Me.FGrid1.CellFontName = "Tahoma"
  loc_15DBC7D:             Me.FGrid1.CellFontSize = CVar(CDbl(8))
  loc_15DBC89:             var_F4 = CVar(CLng(var_90)) 'Long
  loc_15DBCCE:             var_E4 = CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Type")), CVar(CLng(Me.FGrid1.Col)), var_F4)) 'String
  loc_15DBCD6:             Set var_278 = Me.FGrid1
  loc_15DBCDC:             LateIdCallSt
  loc_15DBCF9:           Else
  loc_15DBD09:             Me.FGrid1.CellFontName = "wingdings"
  loc_15DBD1D:             Set var_21C = Me.FGrid1
  loc_15DBD23:             var_21C.CellFontSize = CVar(CDbl(&HC))
  loc_15DBD42:             If (Me.var_21C.RecordCount > 0) Then
  loc_15DBD4B:               Me.Recordset15.MoveFirst
  loc_15DBD50:             End If
  loc_15DBD7B:             var_220 = Me.Recordset15.Fields.Item("Code")
  loc_15DBDA0:             Me.Recordset15.Find var_278 & Proc_6_38_E68A98(CVar(var_220), "RoomNo='", 0, 1, var_F4) & "'", var_E4, var_220
  loc_15DBDCB:             If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15DBE00:               var_164 = CVar(CLng(var_90)) 'Long
  loc_15DBE18:               var_1B4 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DBE4E:               var_134 = CVar(CStr(IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CHKOUTCLYN")), var_164) = "Y"), "þ", "¨"))) 'String
  loc_15DBE56:               Set var_278 = Me.FGrid1
  loc_15DBE5C:               LateIdCallSt
  loc_15DBE88:             Else
  loc_15DBE8C:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DBEA4:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DBEA9:               var_164 = "¨"
  loc_15DBEB3:               Set var_220 = Me.FGrid1
  loc_15DBEB9:               LateIdCallSt
  loc_15DBECB:             End If
  loc_15DBECB:           End If
  loc_15DBEE4:           Call Proc_234_12_112B9F0(CByte(CLng(Me.FGrid1.Col)), var_220, var_164, var_114, var_B4)
  loc_15DBF02:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_15DBF23:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15DBF32:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_15DBF41:         End If
  loc_15DBF4B:         If (var_94 = (var_8C - 3)) Then
  loc_15DBF9B:           If (Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomStat")), var_278, var_134))) = "O") Then
  loc_15DBFB2:             If (var_A0.RecordCount > 0) Then
  loc_15DBFB8:               var_A0.MoveFirst
  loc_15DC011:               var_A0.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & "'"), 0, 1
  loc_15DC040:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15DC08C:                 var_E4 = CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Reasons")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)))) 'String
  loc_15DC094:                 Set var_278 = Me.FGrid1
  loc_15DC09A:                 LateIdCallSt
  loc_15DC0B7:               Else
  loc_15DC0BB:                 var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DC0D3:                 var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DC0D8:                 var_164 = vbNullString
  loc_15DC0E2:                 Set var_220 = Me.FGrid1
  loc_15DC0E8:                 LateIdCallSt
  loc_15DC0FA:               End If
  loc_15DC0FD:             Else
  loc_15DC101:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DC119:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DC11E:               var_164 = vbNullString
  loc_15DC128:               Set var_220 = Me.FGrid1
  loc_15DC12E:               LateIdCallSt
  loc_15DC140:             End If
  loc_15DC143:           Else
  loc_15DC147:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DC15F:             var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DC164:             var_164 = vbNullString
  loc_15DC16E:             Set var_220 = Me.FGrid1
  loc_15DC174:             LateIdCallSt
  loc_15DC186:           End If
  loc_15DC19F:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15DC1AE:           Me.FGrid1.Col = var_B4
  loc_15DC1BD:         End If
  loc_15DC1C7:         If (var_94 = (var_8C - 2)) Then
  loc_15DC1CD:           var_B4 = "RoomStat"
  loc_15DC1E4:           var_220 = Me.Recordset15.Fields.Item(var_B4)
  loc_15DC217:           If (Trim(CVar(Proc_6_38_E68A98(CVar(var_220), var_220, var_164, var_114, var_B4, var_220, var_164))) = "O") Then
  loc_15DC22E:             If (var_A0.RecordCount > 0) Then
  loc_15DC234:               var_A0.MoveFirst
  loc_15DC27D:               var_114 = "'"
  loc_15DC28D:               var_A0.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & var_114), 0, 1
  loc_15DC2BC:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15DC2C3:                 var_F4 = CVar(CLng(var_90)) 'Long
  loc_15DC308:                 var_E4 = CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("FromDate")), CVar(CLng(Me.FGrid1.Col)), var_F4, CVar(CLng(Me.FGrid1.Col)), var_114)) 'String
  loc_15DC310:                 Set var_278 = Me.FGrid1
  loc_15DC316:                 LateIdCallSt
  loc_15DC333:               Else
  loc_15DC337:                 var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DC34F:                 var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DC354:                 var_164 = vbNullString
  loc_15DC35E:                 Set var_220 = Me.FGrid1
  loc_15DC364:                 LateIdCallSt
  loc_15DC376:               End If
  loc_15DC379:             Else
  loc_15DC37D:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DC395:               var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DC39A:               var_164 = vbNullString
  loc_15DC3A4:               Set var_220 = Me.FGrid1
  loc_15DC3AA:               LateIdCallSt
  loc_15DC3BC:             End If
  loc_15DC3BF:           Else
  loc_15DC3C3:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DC3DB:             var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DC3E0:             var_164 = vbNullString
  loc_15DC3EA:             Set var_220 = Me.FGrid1
  loc_15DC3F0:             LateIdCallSt
  loc_15DC402:           End If
  loc_15DC41B:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_15DC42A:           Me.FGrid1.Col = var_B4
  loc_15DC439:         End If
  loc_15DC443:         If (var_94 = (var_8C - 1)) Then
  loc_15DC45D:           If (Me.Recordset15.RecordCount > 0) Then
  loc_15DC466:             Me.Recordset15.MoveFirst
  loc_15DC46B:           End If
  loc_15DC47F:           var_B4 = "Code"
  loc_15DC496:           var_220 = Me.Recordset15.Fields.Item(var_B4)
  loc_15DC4BB:           Me.Recordset15.Find var_114 & Proc_6_38_E68A98(CVar(var_220), "RoomNo='", 0, 1, var_F4, var_220, var_164) & "'", var_B4, var_220
  loc_15DC4E6:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_15DC4FC:             var_D4 = Me.FGrid1.Col
  loc_15DC535:             var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_D4.Fields.Item("DocID")), CVar(CLng(var_D4)), CVar(CLng(var_90)))) 'String
  loc_15DC53D:             Set var_278 = Me.FGrid1
  loc_15DC543:             LateIdCallSt
  loc_15DC560:           Else
  loc_15DC564:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_15DC57C:             var_114 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_15DC581:             var_164 = vbNullString
  loc_15DC58B:             Set var_220 = Me.FGrid1
  loc_15DC591:             LateIdCallSt
  loc_15DC5A3:           End If
  loc_15DC5BC:           var_B4 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_15DC5CB:           Me.FGrid1.Col = var_B4
  loc_15DC5DA:         End If
  loc_15DC5DD:       Next var_29C 'Integer
  loc_15DC5E8:       var_90 = (var_90 + 1)
  loc_15DC5F5:       If (var_90 > (var_8A - 1)) Then
  loc_15DC611:         var_B4 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_15DC620:         Me.FGrid1.Col = var_B4
  loc_15DC62F:       End If
  loc_15DC635:       var_88.MoveNext
  loc_15DC64E:       If (var_88.EOF = &HFF) Then
  loc_15DC651:         GoTo loc_15DC65A
  loc_15DC654:       End If
  loc_15DC654:       GoTo loc_15DB7D7
  loc_15DC657:     End If
  loc_15DC657:     GoTo loc_15DB7BB
  loc_15DC65A:     ' Referenced from:   15DC651
  loc_15DC65A:   End If
  loc_15DC65A: End If
  loc_15DC668: Me.FGrid1.Redraw = True
  loc_15DC675: Set var_88 = Nothing
  loc_15DC67D: Set var_9C = Nothing
  loc_15DC685: Set var_A0 = Nothing
  loc_15DC688: Exit Sub
End Sub

Public Sub Proc_234_11_10D9A0C(arg_C, arg_10) '10D9A0C
  'Data Table: 43DCA8
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_F8 As String
  Dim arg_10 As Integer
  loc_10D970B: Me.FGrid1.Row = 0
  loc_10D9713: ' Referenced from: 10D996A
  loc_10D9719: If (arg_10 < 5) Then
  loc_10D971C:   GoTo loc_10D996D
  loc_10D971F: End If
  loc_10D9723: Set var_B0 = Me.FGrid1
  loc_10D9734: For var_B4 = arg_10 To (arg_10 - 2) Step &HFF: var_86 = var_B4 'Integer
  loc_10D973E:   var_98 = CVar(CLng(var_86)) 'Long
  loc_10D9743:   var_C4 = 0
  loc_10D9750:   Set var_AC = Me.FGrid1
  loc_10D9756:   LateIdCallSt
  loc_10D9764: Next var_B4 'Integer
  loc_10D9778: For var_D8 = (arg_10 - 5) To (arg_10 - 3): var_86 = var_D8 'Integer
  loc_10D9788:   If (var_86 = (arg_10 - 5)) Then
  loc_10D978F:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D9794:     var_C4 = &H3E8
  loc_10D97A1:     Set var_AC = Me.FGrid1
  loc_10D97A7:     LateIdCallSt
  loc_10D97B6:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D97BB:     var_C4 = 1
  loc_10D97C5:     Set var_AC = Me.FGrid1
  loc_10D97CB:     LateIdCallSt
  loc_10D97E9:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D97F2:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10D97F7:     var_F8 = "Room No"
  loc_10D9801:     Set var_10C = Me.FGrid1
  loc_10D9807:     LateIdCallSt
  loc_10D9819:   End If
  loc_10D9823:   If (var_86 = (arg_10 - 4)) Then
  loc_10D982A:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D982F:     var_C4 = &H4B0
  loc_10D983C:     Set var_AC = Me.FGrid1
  loc_10D9842:     LateIdCallSt
  loc_10D9851:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D9856:     var_C4 = 1
  loc_10D9860:     Set var_AC = Me.FGrid1
  loc_10D9866:     LateIdCallSt
  loc_10D9884:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D988D:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10D9892:     var_F8 = "Status"
  loc_10D989C:     Set var_10C = Me.FGrid1
  loc_10D98A2:     LateIdCallSt
  loc_10D98B4:   End If
  loc_10D98BE:   If (var_86 = (arg_10 - 3)) Then
  loc_10D98C5:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D98CA:     var_C4 = &H190
  loc_10D98D7:     Set var_AC = Me.FGrid1
  loc_10D98DD:     LateIdCallSt
  loc_10D98EC:     var_98 = CVar(CLng(var_86)) 'Long
  loc_10D98F7:     var_C4 = CVar(CInt(4)) 'Integer
  loc_10D98FF:     Set var_AC = Me.FGrid1
  loc_10D9905:     LateIdCallSt
  loc_10D9923:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D992C:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_10D9931:     var_F8 = vbNullString
  loc_10D993B:     Set var_10C = Me.FGrid1
  loc_10D9941:     LateIdCallSt
  loc_10D9953:   End If
  loc_10D9956: Next var_D8 'Integer
  loc_10D995D: Set var_B0 = Nothing 
  loc_10D9967: arg_10 = (arg_10 - 6)
  loc_10D996A: GoTo loc_10D9713
  loc_10D996D: ' Referenced from: 10D971C
  loc_10D9994: For var_110 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_110 'Integer
  loc_10D99AD:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_10D99BD:   For var_114 = 1 To arg_C: var_88 = var_114 'Integer
  loc_10D99D6:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_10D99F1:     Me.FGrid1.CellBackColor = &HFFFF00
  loc_10D99FC:   Next var_114 'Integer
  loc_10D9A04: Next var_110 'Integer
  loc_10D9A09: Exit Sub
End Sub

Public Sub Proc_234_12_112B9F0(arg_C) '112B9F0
  'Data Table: 43DCA8
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_11C As String
  Dim arg_54FF As Double
  loc_112B68F: var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112B699: var_C8 = CVar(CLng(arg_C)) 'Long
  loc_112B6DB: If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "D") Then
  loc_112B6F7:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112B706:   Me.FGrid1.Col = var_A8
  loc_112B728:   Me.FGrid1.CellBackColor = &HFFFF
  loc_112B749:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112B758:   Me.FGrid1.Col = &HFFFF
  loc_112B77A:   Me.FGrid1.CellBackColor = &HFFFF
  loc_112B785: Else
  loc_112B798:   var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112B7A2:   var_C8 = CVar(CLng(arg_C)) 'Long
  loc_112B7E4:   If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "O") Then
  loc_112B800:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112B80F:     Me.FGrid1.Col = var_A8
  loc_112B831:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112B849:     var_C8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_112B84E:     var_11C = "Out Of Order"
  loc_112B858:     Set var_140 = Me.FGrid1
  loc_112B85E:     LateIdCallSt
  loc_112B889:     Me.FGrid1.CellBackColor = &HFF
  loc_112B8AA:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112B8B9:     Me.FGrid1.Col = &HFF
  loc_112B8DB:     Me.FGrid1.CellBackColor = &HFF
  loc_112B8E6:   Else
  loc_112B8F9:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112B903:     var_C8 = CVar(CLng(arg_C)) 'Long
  loc_112B945:     If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "C") Then
  loc_112B961:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112B970:       Me.FGrid1.Col = var_A8
  loc_112B992:       Me.FGrid1.CellBackColor = &HFFFFFF
  loc_112B9B3:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_112B9C2:       Me.FGrid1.Col = &HFFFFFF
  loc_112B9E4:       Me.FGrid1.CellBackColor = &HFFFFFF
  loc_112B9EC:     End If
  loc_112B9EC:   End If
  loc_112B9EC: End If
  loc_112B9EC: Exit Sub
  loc_112B9ED: arg_54FF = var_C8
End Sub
