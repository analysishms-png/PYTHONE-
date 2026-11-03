VERSION 5.00
Begin VB.Form FrmLostFound
  Caption = "Lost && Found"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12015
  ClientHeight = 6585
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2745
    Top = 5670
    Width = 3210
    Height = 285
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 15
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
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2730
    Top = 5355
    Width = 1485
    Height = 285
    TabIndex = 8
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
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4845
    Top = 5355
    Width = 1110
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 6
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2745
    Top = 2790
    Width = 1500
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12015
    Height = 450
    TabIndex = 19
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2745
    Top = 5040
    Width = 3210
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 15
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2745
    Top = 3105
    Width = 1500
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 15
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2745
    Top = 3420
    Width = 1500
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 9
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
    ForeColor = &HFF0000&
    Left = 2745
    Top = 2160
    Width = 3210
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 15
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
    ForeColor = &HFF0000&
    Left = 4845
    Top = 1845
    Width = 1110
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 6
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
    ForeColor = &HFF0000&
    Left = 2745
    Top = 1845
    Width = 1485
    Height = 285
    TabIndex = 0
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
  Begin MSFlexGrid FGPoint
    Left = 8880
    Top = 3600
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 12
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2745
    Top = 2475
    Width = 3990
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 255
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
  Begin Label LblName
    Caption = "Place"
    Index = 10
    ForeColor = &HFF0000&
    Left = 1395
    Top = 5715
    Width = 540
    Height = 240
    TabIndex = 26
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
    Caption = "Date"
    Index = 9
    ForeColor = &HFF0000&
    Left = 1395
    Top = 5370
    Width = 435
    Height = 240
    TabIndex = 25
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
    Caption = "Time"
    Index = 3
    ForeColor = &HFF0000&
    Left = 4305
    Top = 5370
    Width = 480
    Height = 240
    TabIndex = 24
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
    Caption = "Found Details"
    Index = 1
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 270
    Top = 4350
    Width = 7920
    Height = 375
    TabIndex = 23
    Alignment = 2 'Center
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
    Caption = "Lost Details"
    Index = 0
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 270
    Top = 1110
    Width = 7920
    Height = 375
    TabIndex = 22
    Alignment = 2 'Center
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
    Caption = "Approx Value"
    Index = 0
    ForeColor = &HFF0000&
    Left = 1395
    Top = 2790
    Width = 1305
    Height = 240
    TabIndex = 21
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 450
    Width = 180
    Height = 540
    TabIndex = 20
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
  Begin Label LblName
    Caption = "Finder"
    Index = 8
    ForeColor = &HFF0000&
    Left = 1395
    Top = 5040
    Width = 615
    Height = 240
    TabIndex = 18
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
    Caption = "Status"
    Index = 7
    ForeColor = &HFF0000&
    Left = 1395
    Top = 3105
    Width = 585
    Height = 240
    TabIndex = 17
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
    Caption = "User"
    Index = 6
    ForeColor = &HFF0000&
    Left = 1395
    Top = 3420
    Width = 420
    Height = 240
    TabIndex = 16
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
    Caption = "Place"
    Index = 5
    ForeColor = &HFF0000&
    Left = 1395
    Top = 2205
    Width = 540
    Height = 240
    TabIndex = 15
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
    Caption = "Time"
    Index = 4
    ForeColor = &HFF0000&
    Left = 4320
    Top = 1845
    Width = 480
    Height = 240
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
  Begin Label LblName
    Caption = "Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 1395
    Top = 1845
    Width = 435
    Height = 240
    TabIndex = 13
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
    Caption = "Article"
    Index = 2
    ForeColor = &HFF0000&
    Left = 1395
    Top = 2490
    Width = 615
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
End

Attribute VB_Name = "FrmLostFound"


Private Sub TopCtrl1_UnknownEvent_A '107BC88
  'Data Table: 430164
  Dim var_94 As TextBox
  loc_107B9E8: On Error Goto loc_107BC80
  loc_107BA0E: Call Proc_144_22_E786C4(Proc_5_1_100CB50("ADD", Me))
  loc_107BA26: Set var_8C = Me.Txt
  loc_107BA2C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_107BA34: var_94.Enabled = False
  loc_107BA4D: Set var_8C = Me.Txt
  loc_107BA53: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_107BA5B: var_94.Enabled = False
  loc_107BA74: Set var_8C = Me.Txt
  loc_107BA7A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_94)
  loc_107BA82: var_94.Enabled = False
  loc_107BA9B: Set var_8C = Me.Txt
  loc_107BAA1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_94)
  loc_107BAA9: var_94.Enabled = False
  loc_107BAB5: Call Proc_144_23_EB4798(global_52)
  loc_107BACD: Set var_8C = Me.Txt
  loc_107BAD3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_107BADB: var_94.Text = CStr(MemVar_1F920EC)
  loc_107BB24: Set var_8C = Me.Txt
  loc_107BB2A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94, CStr(Format(Time, "HH:MM")))
  loc_107BB32: var_94.Text = 1
  loc_107BB84: Set var_8C = Me.Txt
  loc_107BB8A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_94, CStr(Format(Date, "dd/MMM/yyyy")))
  loc_107BB92: var_94.Text = 1
  loc_107BBE4: Set var_8C = Me.Txt
  loc_107BBEA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9), var_94, CStr(Format(Time, "HH:MM")), 1)
  loc_107BBF2: var_94.Text = 1
  loc_107BC18: Set var_8C = Me.Txt
  loc_107BC1E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_94, MemVar_1F920C8)
  loc_107BC26: var_94.Text = 1
  loc_107BC40: Set var_8C = Me.Txt
  loc_107BC46: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_94)
  loc_107BC4E: var_94.Text = "Pending"
  loc_107BC65: Set var_8C = Me.Txt
  loc_107BC6B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_94)
  loc_107BC73: var_94.SetFocus
  loc_107BC7F: Exit Sub
  loc_107BC80: ' Referenced from: 107B9E8
  loc_107BC80: Proc_6_60_E62BC4(1)
  loc_107BC85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBE158
  'Data Table: 430164
  loc_EBE0C4: On Error Goto loc_EBE14F
  loc_EBE0FE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBE10D:   Set var_110 = Me
  loc_EBE124:   Call Proc_144_22_E786C4(Proc_5_1_100CB50("INI", var_110))
  loc_EBE12F:   Call Proc_144_24_1242DD0(global_52)
  loc_EBE137: Else
  loc_EBE13D:   Call 0.Method_arg_1E8 (var_110)
  loc_EBE145:   Call var_110.SetFocus
  loc_EBE14E: End If
  loc_EBE14E: Exit Sub
  loc_EBE14F: ' Referenced from: EBE0C4
  loc_EBE14F: Proc_6_60_E62BC4()
  loc_EBE154: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10DE364
  'Data Table: 430164
  Dim var_96 As Integer
  Dim unk_430170 As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10DE084: On Error Goto loc_10DE30D
  loc_10DE095: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_10DE098:   Exit Sub
  loc_10DE099: End If
  loc_10DE0D0: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10DE0D5:   var_96 = 0
  loc_10DE0E1:   unk_430170.BeginTrans var_11C
  loc_10DE0E8:   var_96 = &HFF
  loc_10DE0FC:   var_94 = Me.Bookmark 'Variant
  loc_10DE148:   var_F8 = "Delete From LostFoundDetail Where Code='" & Me.Fields.Item("SCode").Value & "'" 
  loc_10DE156:   unk_430170.Execute CStr(var_F8), var_118, -1
  loc_10DE1A1:   var_164 = 0
  loc_10DE1B4:   var_15C = 0
  loc_10DE1BF:   var_158 = 0
  loc_10DE1D2:   var_150 = 0
  loc_10DE1DD:   var_14C = 0
  loc_10DE1F0:   var_144 = 0
  loc_10DE230:   var_128 = "LostFoundDetail"
  loc_10DE239:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "Code", &HC8, CStr(Me.Fields.Item("SCode").Value), 0, 0, 0)
  loc_10DE267:   unk_430170.CommitTrans
  loc_10DE26E:   var_96 = 0
  loc_10DE27C:   Me.Requery -1
  loc_10DE28C:   Me.Requery -1
  loc_10DE2AC:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10DE2B9:     Me.Bookmark = var_94
  loc_10DE2C1:   Else
  loc_10DE2D5:     If (Me.EOF = 0) Then
  loc_10DE2DE:       Me.MoveLast
  loc_10DE2E3:     End If
  loc_10DE2E3:   End If
  loc_10DE2E3:   Call Proc_144_24_1242DD0(var_96, var_144, 0, var_14C, var_150)
  loc_10DE304:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_10DE30C: End If
  loc_10DE30C: Exit Sub
  loc_10DE30D: ' Referenced from: 10DE084
  loc_10DE313: If (var_96 = &HFF) Then
  loc_10DE31C:   unk_430170.RollbackTrans
  loc_10DE321: End If
  loc_10DE329: Set var_120 = Err()
  loc_10DE32F: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10DE350: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10DE363: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1013AEC
  'Data Table: 430164
  Dim var_94 As TextBox
  loc_10138D0: On Error Goto loc_1013AE5
  loc_10138E1: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_10138E4:   Exit Sub
  loc_10138E5: End If
  loc_1013908: Call Proc_144_22_E786C4(Proc_5_1_100CB50("EDIT", Me))
  loc_1013920: Set var_8C = Me.Txt
  loc_1013926: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_101392E: var_94.Enabled = False
  loc_1013947: Set var_8C = Me.Txt
  loc_101394D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_1013955: var_94.Enabled = False
  loc_101396E: Set var_8C = Me.Txt
  loc_1013974: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_101397C: var_94.Enabled = False
  loc_1013995: Set var_8C = Me.Txt
  loc_101399B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_94)
  loc_10139A3: var_94.Enabled = False
  loc_10139E9: Set var_8C = Me.Txt
  loc_10139EF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(8), var_94, CStr(Format(Date, "dd/MMM/yyyy")))
  loc_10139F7: var_94.Text = 1
  loc_1013A49: Set var_8C = Me.Txt
  loc_1013A4F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(9), var_94, CStr(Format(Time, "HH:MM")), 1)
  loc_1013A57: var_94.Text = 1
  loc_1013A7D: Set var_8C = Me.Txt
  loc_1013A83: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94, MemVar_1F920C8)
  loc_1013A8B: var_94.Text = 1
  loc_1013AA5: Set var_8C = Me.Txt
  loc_1013AAB: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_94)
  loc_1013AB3: var_94.Text = "Pending"
  loc_1013ACA: Set var_8C = Me.Txt
  loc_1013AD0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_1013AD8: var_94.SetFocus
  loc_1013AE4: Exit Sub
  loc_1013AE5: ' Referenced from: 10138D0
  loc_1013AE5: Proc_6_60_E62BC4(global_52)
  loc_1013AEA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18010
  'Data Table: 430164
  loc_E18005: Me.Global.Unload Me
  loc_E1800D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F16F90
  'Data Table: 430164
  Dim Me As Recordset15
  loc_F16EA0: On Error Goto loc_F16F2A
  loc_F16EAC: var_88 = Me.RecordCount
  loc_F16EBA: If (var_88 <= 0) Then
  loc_F16EDE:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F16EEE:   Exit Sub
  loc_F16EEF: End If
  loc_F16EF2: MemVar_1F920E4 = "Select Code AS SCode, Description,FArea AS [Item Lost/Found Area] FROM LostFoundDetail"
  loc_F16EFC: MemVar_1F92120 = Me
  loc_F16F03: var_10C = "3500,800,1500"
  loc_F16F09: Proc_6_126_F1BCC0(var_10C)
  loc_F16F24: Call 0.Method_arg_2B0 (1)
  loc_F16F29: Exit Sub
  loc_F16F2A: ' Referenced from: F16EA0
  loc_F16F32: Set var_110 = Err()
  loc_F16F38: Call 0.Method_arg_1C (var_88)
  loc_F16F49: If (var_88 <> 0) Then
  loc_F16F54:   Set var_110 = Err()
  loc_F16F5A:   Call 0.Method_arg_2C (var_10C)
  loc_F16F7B:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F16F8E: End If
  loc_F16F8E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E35538
  'Data Table: 430164
  loc_E35528: Proc_5_0_110649C(&HFF, Me)
  loc_E35530: Call Proc_144_24_1242DD0(global_52)
  loc_E35535: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E356B8
  'Data Table: 430164
  loc_E356A8: Proc_5_0_110649C(&HFF, Me)
  loc_E356B0: Call Proc_144_24_1242DD0(global_52)
  loc_E356B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E35658
  'Data Table: 430164
  Dim var_1301 As Double
  loc_E35648: Proc_5_0_110649C(&HFF, Me)
  loc_E35650: Call Proc_144_24_1242DD0(global_52)
  loc_E35655: Exit Sub
  loc_E35656: var_1301 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E35598
  'Data Table: 430164
  loc_E35588: Proc_5_0_110649C(&HFF, Me)
  loc_E35590: Call Proc_144_24_1242DD0(global_52)
  loc_E35595: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1073508
  'Data Table: 430164
  Dim unk_430170 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_1073288: On Error Goto loc_10734BF
  loc_10732A1: unk_430170.Execute "SELECT FDate,FTime,FArea,FindBy,Description,UName1,Status FROM LostFoundDetail Order BY Code", var_BC, -1
  loc_10732AC: Set var_88 = var_C0
  loc_10732BB: var_C4 = var_88.RecordCount
  loc_10732C9: If (var_C4 = 0) Then
  loc_10732E5:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_10732F5:   Exit Sub
  loc_10732F6: End If
  loc_1073305: var_12C = MemVar_1F920B4 & "\LostFound.ttx"
  loc_107330C: Set var_C0 = var_88 
  loc_1073318: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_1073322: Set var_88 = var_C0
  loc_1073328: var_AC = CVar(var_12E) 'Integer
  loc_107332B: var_98 = var_AC 'Variant
  loc_1073347: var_128 = MemVar_1F920B4 & "\LostFound.RPT"
  loc_1073350: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_107335B: MemVar_1F921E4 = var_C0
  loc_1073376: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_107337E: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_107338A: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_10733A3:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10733AB:   Call 0.Method_arg_20 (var_138)
  loc_10733B3:   Call 0.Method_arg_30 (var_128)
  loc_10733F9:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_107340F:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1073417:     Call 0.Method_arg_20 (var_138)
  loc_107341F:     Call 0.Method_arg_38 ("'Lost/Found Report'")
  loc_107342B:   End If
  loc_107342E: Next var_132 'Integer
  loc_107344C: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1073454: Call 0.Method_arg_2C (var_D4)
  loc_1073462: Call 0.Method_arg_150 (var_F4)
  loc_107346D: Call 0.Method_arg_50 (var_128)
  loc_1073477: Set var_138 = Nothing
  loc_1073491: Set var_C0 = MemVar_1F921E4 
  loc_107349D: Proc_6_99_1483714(var_C0, 0, var_128)
  loc_10734A8: MemVar_1F921E4 = var_C0
  loc_10734BB: Set var_88 = Nothing
  loc_10734BE: Exit Sub
  loc_10734BF: ' Referenced from: 1073288
  loc_10734C7: Set var_C0 = Err()
  loc_10734CD: Call 0.Method_arg_2C (var_128, &HFF)
  loc_10734D8: Call 0.Method_arg_50 (var_12C)
  loc_10734F4: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_1073507: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E21D2C
  'Data Table: 430164
  Dim Me As Recordset15
  loc_E21D13: Me.Requery -1
  loc_E21D23: Me.Requery -1
  loc_E21D28: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13D7FBC
  'Data Table: 430164
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_430170 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_E4 As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_150 As TextBox
  Dim var_19C As TextBox
  Dim var_1E8 As TextBox
  Dim var_234 As TextBox
  Dim var_248 As Variant
  Dim var_278 As Variant
  Dim var_2D0 As Variant
  Dim var_2D8 As TextBox
  Dim var_324 As TextBox
  Dim var_338 As Variant
  Dim var_3B0 As TextBox
  Dim var_3C4 As Variant
  Dim var_414 As Variant
  Dim var_280 As TextBox
  Dim var_2A0 As Variant
  Dim var_B0 As Variant
  loc_13D76EC: On Error Goto loc_13D7F68
  loc_13D76F3: var_86 = CByte(0) 'Byte
  loc_13D7702: Set var_90 = Me.Txt
  loc_13D7708: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_13D7731: If (Proc_183_19_E8DAFC(var_94, "Area") = 0) Then
  loc_13D773B:   Call Txt_GotFocus()
  loc_13D7740:   Exit Sub
  loc_13D7741: End If
  loc_13D774C: Set var_90 = Me.Txt
  loc_13D7752: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_94)
  loc_13D777B: If (Proc_183_19_E8DAFC(var_94, "Lost/Found Status") = 0) Then
  loc_13D7785:   Call Txt_GotFocus()
  loc_13D778A:   Exit Sub
  loc_13D778B: End If
  loc_13D7796: Set var_90 = Me.Txt
  loc_13D779C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, CInt(6))
  loc_13D77C5: If (Proc_183_19_E8DAFC(var_94, "Description") = 0) Then
  loc_13D77CF:   Call Txt_GotFocus()
  loc_13D77D4:   Exit Sub
  loc_13D77D5: End If
  loc_13D77D9: Set var_90 = Me.TopCtrl1
  loc_13D77DF: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(4))
  loc_13D77F8: If (CStr(CInt(2)) = "Add") Then
  loc_13D7801:   var_D4 = 0
  loc_13D781E:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode From LostFoundDetail where Site_Code='" & MemVar_1F92070
  loc_13D782E:   unk_430170.Execute CStr(CInt(2)) & "'", var_B0, -1
  loc_13D7836:   var_90 = var_90.Fields
  loc_13D783E:   var_D4 = var_94.Item(var_94)
  loc_13D7846:   var_98 = var_98.Value
  loc_13D784F:   var_E8 = CStr(var_E4)
  loc_13D787F:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_13D78AD:   var_108 = (1 + Format(var_E8, "000000"))
  loc_13D78B8:   global_56 = CStr(var_108)
  loc_13D78CD: Else
  loc_13D78EA:   var_94 = Me.Fields.Item("SCode")
  loc_13D78F2:   var_B0 = var_94.Value
  loc_13D7901:   global_56 = CStr(var_B0)
  loc_13D7912: End If
  loc_13D791B: unk_430170.BeginTrans var_10C
  loc_13D7924: var_86 = CByte(1) 'Byte
  loc_13D792C: Set var_90 = Me.TopCtrl1
  loc_13D7932: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_13D794B: If (CStr(var_F8) = "Add") Then
  loc_13D7962:   var_9C = "Insert Into LostFoundDetail(Code,FDate,FTime,FArea,AppValue,Description,FindBy,FFDate,FFTime,FPlace,UName1,Status,Site_Code,U_EntDt,U_AE,LogSite_Code) " & "Values('"
  loc_13D796C:   var_B4 = var_9C & global_56
  loc_13D7973:   var_E4 = CVar(var_B4 & "',") 'String
  loc_13D7981:   Proc_183_7_EB0C44(var_B0, MemVar_1F920EC, var_E4, var_4E8)
  loc_13D7989:   var_F8 = -1 & var_B0 
  loc_13D79A4:   Set var_90 = Me.Txt
  loc_13D79AA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_E8, var_F8 & ",'")
  loc_13D79B2:   var_4EC = var_94.Text
  loc_13D79C6:   var_14C = var_E4 & CVar(var_E8) & "','" 
  loc_13D79D8:   Set var_98 = Me.Txt
  loc_13D79DE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_150, var_154)
  loc_13D79E6:   var_14C = var_150.Text
  loc_13D7A0C:   Set var_198 = Me.Txt
  loc_13D7A12:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_19C)
  loc_13D7A40:   Set var_1E4 = Me.Txt
  loc_13D7A46:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1E8)
  loc_13D7A74:   Set var_230 = Me.Txt
  loc_13D7A7A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_234)
  loc_13D7A8A:   var_248 = CVar(var_234.Text) 'String
  loc_13D7AA5:   Set var_27C = Me.Txt
  loc_13D7AAB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_280)
  loc_13D7ABA:   Proc_6_7_F25D88(var_2A0, CVar(var_280))
  loc_13D7ACB:   var_2D0 = var_94 & CVar(var_154) & "','" & CVar(var_19C.Text) & "','" & CVar(var_1E8.Text) & "','" & var_248 & "'," & var_2A0 & ",'" 
  loc_13D7ADD:   Set var_2D4 = Me.Txt
  loc_13D7AE3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_2D8)
  loc_13D7B11:   Set var_320 = Me.Txt
  loc_13D7B17:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_324)
  loc_13D7B58:   Set var_3AC = Me.Txt
  loc_13D7B5E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_3B0)
  loc_13D7B6E:   var_3C4 = CVar(var_3B0.Text) 'String
  loc_13D7B84:   var_414 = var_2D0 & CVar(var_2D8.Text) & "','" & CVar(var_324.Text) & "','" & CVar(MemVar_1F920C8) & "','" & var_3C4 & "','" & CVar(MemVar_1F92078) 
  loc_13D7B9F:   Proc_6_7_F25D88(var_454, Date)
  loc_13D7BD1:   unk_430170.Execute CStr(var_414 & "'," & var_454 & ",'A','" & CVar(MemVar_1F92078) & "')"), , 
  loc_13D7C62: Else
  loc_13D7C77:   var_C4 = MemVar_1F920EC
  loc_13D7C7F:   Proc_183_7_EB0C44(var_B0, var_C4, "UPDATE LostFoundDetail SET FDate=")
  loc_13D7C87:   var_E4 = var_3C4 & var_B0 
  loc_13D7C90:   var_F8 = var_E4 & ", Description='" 
  loc_13D7CA2:   Set var_90 = Me.Txt
  loc_13D7CA8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_94, var_9C)
  loc_13D7CB0:   var_F8 = var_94.Text
  loc_13D7CB8:   var_108 = CVar(var_9C) 'String
  loc_13D7CBB:   var_11C = -1 & var_108 
  loc_13D7CC4:   var_12C = CVar(var_E8) & "',Status = '" 
  loc_13D7CD6:   Set var_98 = Me.Txt
  loc_13D7CDC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_150, var_B4)
  loc_13D7CE4:   var_12C = var_150.Text
  loc_13D7D0A:   Set var_198 = Me.Txt
  loc_13D7D10:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_19C)
  loc_13D7D3E:   Set var_1E4 = Me.Txt
  loc_13D7D44:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1E8)
  loc_13D7D6F:   Set var_230 = Me.Txt
  loc_13D7D75:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_234)
  loc_13D7D84:   Proc_6_7_F25D88(var_248, CVar(var_234))
  loc_13D7D95:   var_278 = var_320 & CVar(var_B4) & "',AppValue='" & CVar(var_19C.Text) & "',FindBy='" & CVar(var_1E8.Text) & "',FFdate=" & var_248 & ",FFTime='" 
  loc_13D7DA7:   Set var_27C = Me.Txt
  loc_13D7DAD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_280)
  loc_13D7DDB:   Set var_2D4 = Me.Txt
  loc_13D7DE1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_2D8)
  loc_13D7E10:   var_338 = var_278 & CVar(var_280.Text) & "',FPlace='" & CVar(var_2D8.Text) & "', UName1='" & CVar(MemVar_1F920C8) & "',U_AE='E',Site_Code='" 
  loc_13D7E47:   unk_430170.Execute CStr(var_338 & CVar(MemVar_1F92070) & "' WHERE Code='" & CVar(global_56) & "'"), , 
  loc_13D7EB1: End If
  loc_13D7EB7: unk_430170.CommitTrans
  loc_13D7EC0: var_86 = CByte(0) 'Byte
  loc_13D7ECF: Me.Requery -1
  loc_13D7EFC: Me.Find "SCode='" & global_56 & "'", 0, 1
  loc_13D7F0C: Set var_90 = Me.TopCtrl1
  loc_13D7F12: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_13D7F2B: If (CStr() = "Add") Then
  loc_13D7F2E:   Call TopCtrl1_UnknownEvent_A()
  loc_13D7F33:   Exit Sub
  loc_13D7F34: End If
  loc_13D7F49: var_9C = "INI"
  loc_13D7F57: Call Proc_144_22_E786C4(Proc_5_1_100CB50(var_9C, Me))
  loc_13D7F62: Call Proc_144_24_1242DD0(global_52)
  loc_13D7F67: Exit Sub
  loc_13D7F68: ' Referenced from: 13D76EC
  loc_13D7F71: If (CInt(var_86) = 1) Then
  loc_13D7F7A:   unk_430170.RollbackTrans
  loc_13D7F7F: End If
  loc_13D7F87: Set var_90 = Err()
  loc_13D7F8D: Call 0.Method_arg_2C (var_9C)
  loc_13D7FA6: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_13D7FB9: Exit Sub
End Sub

Private Sub Form_Load() 'F068AC
  'Data Table: 430164
  Dim var_8C As String
  Dim unk_430170 As Connection15
  Dim var_B0 As Variant
  loc_F067D8: On Error Goto loc_F06865
  loc_F067E2: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_F067FB: var_8C = "SELECT Code AS Scode,FDate,FTime,FArea,Description,Appvalue,FindBy,FFDate,FFTime,FPlace,UName1,Status,Site_Code,LogSite_code FROM LostFoundDetail Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_F0680B: unk_430170.Execute var_8C & "' or LOGSITE_CODE='HO') Order BY Code", var_B0, -1
  loc_F0683D: Set var_B4 = Me
  loc_F06846: var_8C = "INI"
  loc_F06854: Call Proc_144_22_E786C4(Proc_5_1_100CB50(var_8C, var_B4), var_B4)
  loc_F0685F: Call Proc_144_24_1242DD0(var_B4)
  loc_F06864: Exit Sub
  loc_F06865: ' Referenced from: F067D8
  loc_F0686D: Set var_B4 = Err()
  loc_F06873: Call 0.Method_arg_2C (var_8C)
  loc_F06894: MsgBox(CVar(var_8C), &H40, "Information", var_EC, var_10C)
  loc_F068A7: Exit Sub
  loc_F068A8: Exit Sub
End Sub

Private Sub Form_Resize() 'ED8FC8
  'Data Table: 430164
  Dim var_8C As Label
  loc_ED8F26: Call 0.Method_arg_50 (var_88)
  loc_ED8F38: Me.LblFormCaption.Caption = var_88
  loc_ED8F51: Me.LblFormCaption.Left = CDbl(0)
  loc_ED8F5D: Set var_A0 = Me.TopCtrl1
  loc_ED8F63: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED8F70: Set var_8C = Me.TopCtrl1
  loc_ED8F76: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED8F90: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED8FAB: Call 0.Method_arg_100 (var_B8)
  loc_ED8FBD: Me.LblFormCaption.Width = var_B8
  loc_ED8FC5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0E434
  'Data Table: 430164
  loc_E0E42B: Set global_52 = Nothing
  loc_E0E432: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8BF90
  'Data Table: 430164
  loc_E8BF2C: On Error Goto loc_E8BF4C
  loc_E8BF43: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8BF4B: Exit Sub
  loc_E8BF4C: ' Referenced from: E8BF2C
  loc_E8BF54: Set var_88 = Err()
  loc_E8BF5A: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8BF7B: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8BF8E: Exit Sub
  loc_E8BF8F: Exit Sub
End Sub

Private Sub Txt_GotFocus() 'DFC4B8
  'Data Table: 430164
  loc_DFC4B4: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'EAB7E0
  'Data Table: 430164
  loc_EAB752: If (CLng(Shift) = &H1B) Then
  loc_EAB755:   Exit Sub
  loc_EAB756: End If
  loc_EAB76B: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EAB774:   Proc_6_76_E52838(Shift)
  loc_EAB779: End If
  loc_EAB797: If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_EAB7A0:   Call Txt_Validate(KeyCode)
  loc_EAB7AB:   If (var_86 = 0) Then
  loc_EAB7B4:     Call Proc_144_25_E8D0A4(KeyCode, var_86)
  loc_EAB7B9:   End If
  loc_EAB7BC: Else
  loc_EAB7D1:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EAB7DA:     Proc_6_75_E527CC(Shift, arg_14)
  loc_EAB7DF:   End If
  loc_EAB7DF: End If
  loc_EAB7DF: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4AB94
  'Data Table: 430164
  loc_E4AB72: Set var_88 = Me.Txt
  loc_E4AB78: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4AB86: Proc_6_73_E22704(var_8C)
  loc_E4AB92: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'DFC3E8
  'Data Table: 430164
  loc_DFC3E4: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC45E4
  'Data Table: 430164
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC455A: On Error Goto loc_EC459F
  loc_EC4563: Me.MoveFirst
  loc_EC457D: var_8C = "SCode='" & MyValue
  loc_EC458D: Me.Find var_8C & "'", 0, 1
  loc_EC4599: Call Proc_144_24_1242DD0(var_A0)
  loc_EC459E: Exit Sub
  loc_EC459F: ' Referenced from: EC455A
  loc_EC45A7: Set var_A4 = Err()
  loc_EC45AD: Call 0.Method_arg_2C (var_8C)
  loc_EC45CE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC45E1: Exit Sub
  loc_EC45E2: Exit Sub
End Sub

Public Sub Proc_144_22_E786C4(arg_C) 'E786C4
  'Data Table: 430164
  Dim var_98 As TextBox
  loc_E78672: Set var_8C = Me.Txt
  loc_E78678: Call 0.Method_Proc_144_22_E786C4C (var_8E, var_86)
  loc_E78688: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7869E:   Set var_8C = Me.Txt
  loc_E786A4:   Call 0.Method_Proc_144_22_E786C40 (CInt(var_86), var_98)
  loc_E786AC:   var_98.Enabled = arg_C
  loc_E786BB: Next var_92 'Byte
  loc_E786C1: Exit Sub
End Sub

Public Sub Proc_144_23_EB4798
  'Data Table: 430164
  Dim var_98 As TextBox
  loc_EB4702: global_60 = vbNullString
  loc_EB470C: global_64 = vbNullString
  loc_EB471E: Set var_8C = Me.Txt
  loc_EB4724: Call 0.Method_Proc_144_23_EB4798C (var_8E, var_86)
  loc_EB4734: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB474A:   Set var_8C = Me.Txt
  loc_EB4750:   Call 0.Method_Proc_144_23_EB47980 (CInt(var_86), var_98)
  loc_EB4758:   var_98.Text = vbNullString
  loc_EB4774:   Set var_8C = Me.Txt
  loc_EB477A:   Call 0.Method_Proc_144_23_EB47980 (CInt(var_86), var_98)
  loc_EB4782:   var_98.Tag = vbNullString
  loc_EB4791: Next var_92 'Byte
  loc_EB4797: Exit Sub
End Sub

Public Sub Proc_144_24_1242DD0
  'Data Table: 430164
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B4 As String
  Dim var_BC As TextBox
  loc_1242894: On Error Goto loc_1242D8A
  loc_124289D: Proc_183_45_E5C118(global_52)
  loc_12428B9: If (Me.RecordCount <= 0) Then
  loc_12428BC:   Call Proc_144_23_EB4798()
  loc_12428C4: Else
  loc_12428F8:   global_56 = CStr(Me.Fields.Item("SCode").Value)
  loc_1242945:   Set var_B8 = Me.Txt
  loc_124294B:   Call 0.Method_Proc_144_24_1242DD00 (CInt(0), var_BC)
  loc_1242953:   var_BC.Tag = CStr(Me.Fields.Item("SCode").Value)
  loc_12429A5:   Set var_B8 = Me.Txt
  loc_12429AB:   Call 0.Method_Proc_144_24_1242DD00 (CInt(0), var_BC)
  loc_12429B3:   var_BC.Text = CStr(Me.Fields.Item("Fdate").Value)
  loc_1242A05:   Set var_B8 = Me.Txt
  loc_1242A0B:   Call 0.Method_Proc_144_24_1242DD00 (CInt(1), var_BC)
  loc_1242A13:   var_BC.Text = CStr(Me.Fields.Item("FTime").Value)
  loc_1242A65:   Set var_B8 = Me.Txt
  loc_1242A6B:   Call 0.Method_Proc_144_24_1242DD00 (CInt(2), var_BC)
  loc_1242A73:   var_BC.Text = CStr(Me.Fields.Item("FArea").Value)
  loc_1242AC5:   Set var_B8 = Me.Txt
  loc_1242ACB:   Call 0.Method_Proc_144_24_1242DD00 (CInt(4), var_BC)
  loc_1242AD3:   var_BC.Text = CStr(Me.Fields.Item("Description").Value)
  loc_1242B25:   Set var_B8 = Me.Txt
  loc_1242B2B:   Call 0.Method_Proc_144_24_1242DD00 (CInt(3), var_BC)
  loc_1242B33:   var_BC.Text = CStr(Me.Fields.Item("Appvalue").Value)
  loc_1242B85:   Set var_B8 = Me.Txt
  loc_1242B8B:   Call 0.Method_Proc_144_24_1242DD00 (CInt(7), var_BC)
  loc_1242B93:   var_BC.Text = CStr(Me.Fields.Item("FindBy").Value)
  loc_1242BE5:   Set var_B8 = Me.Txt
  loc_1242BEB:   Call 0.Method_Proc_144_24_1242DD00 (CInt(8), var_BC)
  loc_1242BF3:   var_BC.Text = CStr(Me.Fields.Item("FFDate").Value)
  loc_1242C45:   Set var_B8 = Me.Txt
  loc_1242C4B:   Call 0.Method_Proc_144_24_1242DD00 (CInt(9), var_BC)
  loc_1242C53:   var_BC.Text = CStr(Me.Fields.Item("FFTime").Value)
  loc_1242CA5:   Set var_B8 = Me.Txt
  loc_1242CAB:   Call 0.Method_Proc_144_24_1242DD00 (CInt(&HA), var_BC)
  loc_1242CB3:   var_BC.Text = CStr(Me.Fields.Item("FPlace").Value)
  loc_1242D05:   Set var_B8 = Me.Txt
  loc_1242D0B:   Call 0.Method_Proc_144_24_1242DD00 (CInt(6), var_BC)
  loc_1242D13:   var_BC.Text = CStr(Me.Fields.Item("Status").Value)
  loc_1242D57:   var_B4 = CStr(Me.Fields.Item("UName1").Value)
  loc_1242D65:   Set var_B8 = Me.Txt
  loc_1242D6B:   Call 0.Method_Proc_144_24_1242DD00 (CInt(5), var_BC)
  loc_1242D73:   var_BC.Text = var_B4
  loc_1242D89: End If
  loc_1242D89: Exit Sub
  loc_1242D8A: ' Referenced from: 1242894
  loc_1242D92: Set var_8C = Err()
  loc_1242D98: Call 0.Method_arg_2C (var_B4)
  loc_1242DB9: MsgBox(CVar(var_B4), &H40, "Information", var_EC, var_10C)
  loc_1242DCC: Exit Sub
End Sub

Public Sub Proc_144_25_E8D0A4(arg_C) 'E8D0A4
  'Data Table: 430164
  Dim var_10C As TextBox
  loc_E8D073: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8D076:   Call TopCtrl1_UnknownEvent_16()
  loc_E8D07E: Else
  loc_E8D088:   Set var_108 = Me.Txt
  loc_E8D08E:   Call 0.Method_Proc_144_25_E8D0A40 (arg_C)
  loc_E8D096:   var_10C.SetFocus
  loc_E8D0A2: End If
  loc_E8D0A2: Exit Sub
End Sub
