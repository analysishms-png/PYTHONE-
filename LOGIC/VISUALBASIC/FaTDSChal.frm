VERSION 5.00
Begin VB.Form FaTDSChal
  Caption = "T.D.S.Challan Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaTDSChal.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 165
  ClientTop = 450
  ClientWidth = 11415
  ClientHeight = 6525
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
    Width = 11415
    Height = 450
    TabIndex = 28
  End
  Begin DataGrid DGVType
    Left = 10410
    Top = 5130
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGParty
    Left = 9990
    Top = 4710
    Width = 5100
    Height = 2670
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin TextBox Txt
    Index = 9
    ForeColor = &HC00000&
    Left = 6315
    Top = 1575
    Width = 3840
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 40
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
  Begin CommandButton btsadd
    Left = 10185
    Top = 1455
    Width = 390
    Height = 420
    TabIndex = 23
    Picture = "FaTDSChal.frx":442
    DisabledPicture = "FaTDSChal.frx":884
    ToolTipText = "Add T.D.S. Entries"
    Style = 1
  End
  Begin TextBox Txt
    Index = 8
    ForeColor = &HC00000&
    Left = 6315
    Top = 1260
    Width = 1080
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
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
    Index = 7
    ForeColor = &HC00000&
    Left = 8925
    Top = 1260
    Width = 1230
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 20
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
    ForeColor = &HC00000&
    Left = 12240
    Top = 1440
    Width = 2040
    Height = 285
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 21
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
    ForeColor = &HC00000&
    Left = 1965
    Top = 945
    Width = 3075
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
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 1800
    Top = 5670
    Width = 1230
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
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
    Index = 1
    ForeColor = &HC00000&
    Left = 8925
    Top = 945
    Width = 1230
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 13
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
    ForeColor = &HC00000&
    Left = 1965
    Top = 1575
    Width = 1125
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
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
    ForeColor = &HC00000&
    Left = 1965
    Top = 1260
    Width = 3075
    Height = 285
    TabIndex = 3
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
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 6315
    Top = 945
    Width = 1080
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
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
    Left = 585
    Top = 1905
    Width = 15075
    Height = 3645
    TabIndex = 8
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 1890
    Top = 6435
    Width = 2880
    Height = 255
    TabIndex = 27
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5265
    Top = 6435
    Width = 2790
    Height = 285
    TabIndex = 26
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
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
  Begin Label Label1
    Caption = "Bank Name (TDS Deposited)"
    Index = 9
    ForeColor = &HC00000&
    Left = 3600
    Top = 1590
    Width = 2670
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
    Caption = "Cheque No."
    Index = 8
    ForeColor = &HC00000&
    Left = 5130
    Top = 1275
    Width = 1110
    Height = 240
    TabIndex = 22
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
    Caption = "Cheque Date"
    Index = 7
    ForeColor = &HC00000&
    Left = 7650
    Top = 1275
    Width = 1230
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
  Begin Label Label1
    Caption = "DOC ID"
    Index = 3
    ForeColor = &HFF&
    Left = 11580
    Top = 1440
    Width = 585
    Height = 210
    Visible = 0   'False
    TabIndex = 20
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
    Caption = "Challan Type"
    Index = 2
    ForeColor = &HC00000&
    Left = 540
    Top = 960
    Width = 1260
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 12810
    Top = 2310
    Width = 645
    Height = 195
    Visible = 0   'False
    TabIndex = 16
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
    Caption = "Net Amount"
    Index = 6
    ForeColor = &HFF&
    Left = 630
    Top = 5685
    Width = 1125
    Height = 195
    TabIndex = 14
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
    Caption = "Challan Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 7650
    Top = 975
    Width = 1230
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
  Begin Label Label1
    Caption = "Month && Year"
    Index = 1
    ForeColor = &HC00000&
    Left = 540
    Top = 1590
    Width = 1275
    Height = 240
    TabIndex = 12
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
    Caption = "Cash/Bank A/C"
    Index = 5
    ForeColor = &HC00000&
    Left = 525
    Top = 1275
    Width = 1395
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
  Begin Label Label1
    Caption = "Challan No."
    Index = 4
    ForeColor = &HC00000&
    Left = 5145
    Top = 960
    Width = 1110
    Height = 240
    TabIndex = 10
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

Attribute VB_Name = "FaTDSChal"


Private Sub DGParty_UnknownEvent_9 'F4E864
  'Data Table: 487AD4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4E75B: Me.DGParty.Visible = False
  loc_F4E77A: If (Me.RecordCount > 0) Then
  loc_F4E7B9:   Set var_B4 = Me.Txt
  loc_F4E7BF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4E7C7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4E7FA:   var_B0 = Me.Fields.Item("Name")
  loc_F4E819:   Set var_B4 = Me.Txt
  loc_F4E81F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4E827:   var_B8.Text = CStr(var_B0.Value)
  loc_F4E83D: End If
  loc_F4E848: Set var_A8 = Me.Txt
  loc_F4E84E: Call 0.Method_DGParty_UnknownEvent_90 (CInt(2))
  loc_F4E856: var_B0.SetFocus
  loc_F4E862: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FA5BF0
  'Data Table: 487AD4
  Dim var_8C As Variant
  Dim var_D0 As Integer
  Dim var_88 As String
  Dim var_98 As String
  Dim unk_487AE7 As Connection15
  Dim var_C0 As Variant
  Dim var_D4 As Field20
  Dim var_EC As TextBox
  loc_FA5A84: On Error Goto loc_FA5BC8
  loc_FA5AAA: Call Proc_190_29_E9B5D8(Proc_5_1_100CB50("ADD", Me))
  loc_FA5AB5: Call Proc_190_28_F176E8(global_72)
  loc_FA5AC6: Me.btsadd.Visible = False
  loc_FA5AD4: var_D0 = 0
  loc_FA5AFF: var_98 = "Select Description From Voucher_Type Where NCat='TDSCH' AND SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_FA5B0F: unk_487AE7.Execute var_98 & "'", var_BC, -1
  loc_FA5B17: var_8C = var_8C.Fields
  loc_FA5B1F: var_D0 = var_C0.Item(var_C0)
  loc_FA5B27: var_D4 = var_D4.Value
  loc_FA5B3E: Set var_E8 = Me.Txt
  loc_FA5B44: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_EC)
  loc_FA5B4C: var_EC.Text = CStr(var_E4)
  loc_FA5B77: var_88 = CStr(MemVar_1F920EC)
  loc_FA5B85: Set var_8C = Me.Txt
  loc_FA5B8B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_C0)
  loc_FA5B93: var_C0.Text = var_88
  loc_FA5BAD: Set var_8C = Me.Txt
  loc_FA5BB3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_C0)
  loc_FA5BBB: var_C0.SetFocus
  loc_FA5BC7: Exit Sub
  loc_FA5BC8: ' Referenced from: FA5A84
  loc_FA5BCE: Call 0.Method_arg_50 (var_88)
  loc_FA5BE3: Proc_183_57_104AA84(var_88, "TopCtrl1_eAdd")
  loc_FA5BEF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'ECE3EC
  'Data Table: 487AD4
  loc_ECE350: On Error Goto loc_ECE3C1
  loc_ECE38A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_ECE3A2:   var_108 = "INI"
  loc_ECE3B0:   Call Proc_190_29_E9B5D8(Proc_5_1_100CB50(var_108, Me))
  loc_ECE3BB:   Call Proc_190_31_153B30C(global_72)
  loc_ECE3C0: End If
  loc_ECE3C0: Exit Sub
  loc_ECE3C1: ' Referenced from: ECE350
  loc_ECE3C7: Call 0.Method_arg_50 (var_108)
  loc_ECE3CF: var_118 = "TopCtrl1_eCancel"
  loc_ECE3DC: Proc_183_57_104AA84(var_108)
  loc_ECE3E8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11BA360
  'Data Table: 487AD4
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As String
  Dim unk_487AE7 As Connection15
  Dim var_130 As Variant
  Dim var_134 As String
  Dim var_98 As Recordset15
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_13C As Fields15
  Dim var_154 As Variant
  loc_11B9F34: On Error Goto loc_11BA32B
  loc_11B9F40: var_A0 = Me.RecordCount
  loc_11B9F4E: If (var_A0 > 0) Then
  loc_11B9F76:   For var_B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9A = var_B8 'Integer
  loc_11B9F80:     var_C8 = CVar(CLng(var_9A)) 'Long
  loc_11B9F88:     var_E8 = CVar(CLng(&HC)) 'Long
  loc_11B9FA2:     var_FC = CStr(Me.FGrid.TextMatrix))
  loc_11B9FB3:     If (var_FC <> vbNullString) Then
  loc_11B9FCF:       MsgBox("Some Certificate(s) of this challan are already made", 0, var_10C, var_11C, var_12C)
  loc_11B9FDF:       Exit Sub
  loc_11B9FE0:     End If
  loc_11B9FE3:   Next var_B8 'Integer
  loc_11BA01F:   If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_11C, var_12C) = 6) Then
  loc_11BA02B:     unk_487AE7.BeginTrans var_A0
  loc_11BA041:     var_94 = Me.Bookmark 'Variant
  loc_11BA063:     Set var_A4 = Me.Txt
  loc_11BA069:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(6), var_130, var_FC, "SELECT * From TDSCHAL1 Where DocID='")
  loc_11BA071:     var_B4 = var_130.Text
  loc_11BA07A:     var_134 = -1 & var_FC
  loc_11BA08A:     unk_487AE7.Execute var_134 & "'", var_13C, 
  loc_11BA095:     Set var_98 = var_13C
  loc_11BA0AD:     ' Referenced from: 11BA16C
  loc_11BA0BC:     If Not(var_98.EOF) Then
  loc_11BA0EB:       var_130 = var_98.Fields.Item("TDSDocId")
  loc_11BA11A:       var_13C = var_98.Fields
  loc_11BA132:       var_154 = "UPDATE LEDGERTDS SET TDSPOST='' WHERE TDSDocId='" & var_130.Value & "' AND TDSV_Sno=" & var_13C.Item("TDSVSno").Value 
  loc_11BA136:       var_FC = CStr(var_154)
  loc_11BA140:       unk_487AE7.Execute var_FC, var_174, -1
  loc_11BA167:       var_98.MoveNext
  loc_11BA16C:       GoTo loc_11BA0AD
  loc_11BA16F:     End If
  loc_11BA18D:     Set var_A4 = Me.Txt
  loc_11BA193:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(6), var_130, var_FC, "Delete From TDSCHAL1 Where DocID='")
  loc_11BA19B:     var_B4 = var_130.Text
  loc_11BA1A4:     var_134 = -1 & var_FC
  loc_11BA1B4:     unk_487AE7.Execute var_134 & "'", var_13C, var_178
  loc_11BA1EC:     Set var_A4 = Me.Txt
  loc_11BA1F2:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(6), var_130, var_FC, "Delete From TDSCHAL  Where DocID='")
  loc_11BA1FA:     var_B4 = var_130.Text
  loc_11BA203:     var_134 = -1 & var_FC
  loc_11BA213:     unk_487AE7.Execute var_134 & "'", var_13C, 
  loc_11BA24B:     Set var_A4 = Me.Txt
  loc_11BA251:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(6), var_130, var_FC, "Delete From LEDGER   Where DocID='")
  loc_11BA259:     var_B4 = var_130.Text
  loc_11BA262:     var_134 = -1 & var_FC
  loc_11BA272:     unk_487AE7.Execute var_134 & "'", var_13C, 
  loc_11BA292:     unk_487AE7.CommitTrans
  loc_11BA2A2:     Me.Requery -1
  loc_11BA2C2:     If (CVar(Me.RecordCount) >= var_94) Then
  loc_11BA2CF:       Me.Bookmark = var_94
  loc_11BA2D7:     Else
  loc_11BA2EB:       If (Me.EOF = 0) Then
  loc_11BA2F4:         Me.MoveLast
  loc_11BA2F9:       End If
  loc_11BA2F9:     End If
  loc_11BA2F9:     Call Proc_190_31_153B30C()
  loc_11BA31A:     Proc_5_0_110649C(&HFF, Me)
  loc_11BA322:   End If
  loc_11BA322: End If
  loc_11BA327: Set var_98 = Nothing
  loc_11BA32A: Exit Sub
  loc_11BA32B: ' Referenced from: 11B9F34
  loc_11BA331: unk_487AE7.RollbackTrans
  loc_11BA33C: Call 0.Method_arg_50 (var_FC, global_72)
  loc_11BA351: Proc_183_57_104AA84(var_FC, "TopCtrl1_eDel")
  loc_11BA35D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F08440
  'Data Table: 487AD4
  Dim var_8C As CommandButton
  Dim var_94 As TextBox
  loc_F0835C: On Error Goto loc_F08415
  loc_F08374: var_88 = "EDIT"
  loc_F08382: Call Proc_190_29_E9B5D8(Proc_5_1_100CB50(var_88, Me))
  loc_F08399: Me.btsadd.Visible = True
  loc_F083AE: Set var_8C = Me.Txt
  loc_F083B4: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_F083BC: var_94.Enabled = False
  loc_F083D5: Set var_8C = Me.Txt
  loc_F083DB: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F083E3: var_94.Enabled = False
  loc_F083FA: Set var_8C = Me.Txt
  loc_F08400: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F08408: var_94.SetFocus
  loc_F08414: Exit Sub
  loc_F08415: ' Referenced from: F0835C
  loc_F0841B: Call 0.Method_arg_50 (var_88)
  loc_F08430: Proc_183_57_104AA84(var_88, "TopCtrl1_eEdit")
  loc_F0843C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E188F8
  'Data Table: 487AD4
  loc_E188ED: Me.Global.Unload Me
  loc_E188F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EE23C0
  'Data Table: 487AD4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EE2310: On Error Goto loc_EE2397
  loc_EE232A: If (Me.RecordCount <= 0) Then
  loc_EE2333:   var_B8 = "Information"
  loc_EE234E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EE235E:   Exit Sub
  loc_EE235F: End If
  loc_EE2366: var_10C = "SELECT DocID as SearchCode,CHALTYPE,ChalNo,ChalDate,MonthNo,Name As Bank,TDSAmt FROM TDSChal INNER JOIN SubGroup ON TDSChal.BankCode=SubGroup.SubCode WHERE TDSCHAL.LOGSITE_CODE='" & MemVar_1F92078
  loc_EE236D: MemVar_1F920E4 = var_10C & "' ORDER BY CHALNO"
  loc_EE237A: MemVar_1F92120 = Me
  loc_EE2391: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EE2396: Exit Sub
  loc_EE2397: ' Referenced from: EE2310
  loc_EE239D: Call 0.Method_arg_50 (var_10C)
  loc_EE23B2: Proc_183_57_104AA84(var_10C, "TopCtrl1_eFind")
  loc_EE23BE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E385F8
  'Data Table: 487AD4
  Dim arg_5CFF As Double
  loc_E385E8: Proc_5_0_110649C(&HFF, Me)
  loc_E385F0: Call Proc_190_31_153B30C(global_72)
  loc_E385F5: Exit Sub
  loc_E385F6: arg_5CFF = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E38598
  'Data Table: 487AD4
  Dim arg_5CFF As Double
  loc_E38588: Proc_5_0_110649C(&HFF, Me)
  loc_E38590: Call Proc_190_31_153B30C(global_72)
  loc_E38595: Exit Sub
  loc_E38596: arg_5CFF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E383B8
  'Data Table: 487AD4
  Dim arg_5CFF As Double
  loc_E383A8: Proc_5_0_110649C(&HFF, Me)
  loc_E383B0: Call Proc_190_31_153B30C(global_72)
  loc_E383B5: Exit Sub
  loc_E383B6: arg_5CFF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E382F8
  'Data Table: 487AD4
  Dim arg_5CFF As Double
  loc_E382E8: Proc_5_0_110649C(&HFF, Me)
  loc_E382F0: Call Proc_190_31_153B30C(global_72)
  loc_E382F5: Exit Sub
  loc_E382F6: arg_5CFF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10C3110
  'Data Table: 487AD4
  Dim Me As Recordset15
  Dim var_114 As String
  Dim var_E4 As String
  Dim var_C4 As String
  Dim var_1B4 As Variant
  Dim var_1C4 As String
  Dim var_1D8 As Fields15
  Dim var_1EC As Field20
  Dim unk_487AE7 As Connection15
  Dim var_D4 As Variant
  loc_10C2E64: On Error Goto loc_10C30E7
  loc_10C2E70: var_A4 = Me.RecordCount
  loc_10C2E7E: If (var_A4 <= 0) Then
  loc_10C2E81:   Exit Sub
  loc_10C2E82: End If
  loc_10C2E82: var_114 = "Select T.CHALTYPE,T.ChalNo,T.ChalDate,T.MonthNo,T.TDSAmt,SG.NAME as Bank,SGA.NAme as AcName,T1.Amt,T1.TDS,T1.TDSAmt as TDSAmt1,T1.CertiNo,T1.CertiDate ,"
  loc_10C2E87: var_E4 = "SUBSTRING(LT.DocID, 4, 5)"
  loc_10C2E92: var_C4 = "Mid(LT.DocID, 4, 5)"
  loc_10C2E97: var_D4 = var_C4
  loc_10C2EEE: var_1B4 = var_114 & IIf((MemVar_1F923AC = "A"), var_D4, var_E4) & " AS LTV_TYPE," & IIf((MemVar_1F923AC = "A"), "Mid(LT.DocID, 14, 8)", "SUBSTRING(LT.DocID, 14, 8)") 
  loc_10C2EF2: var_1C4 = " AS LTV_NO,LT.V_DATE,T.BankName FROM (((TdsChal as T Left Join TDSChal1 as T1 On T.DOCID=T1.DOCID )  Left Join SubGroup as SG On SG.SubCode=T.BankCode )  Left Join Subgroup as SGA On T1.AcCode=SGA.SubCode) LEFT JOIN LEDGERTDS LT ON (LT.TDSDOCID=T1.TDSDOCID) AND (LT.TDSV_SNO=T1.TDSVSNO) Where T.DOCID='"
  loc_10C2F10: var_1D8 = Me.Fields
  loc_10C2F18: var_1EC = var_1D8.Item("DocID")
  loc_10C2F36: var_88 = CStr(var_1B4 & var_1C4 & var_1EC.Value & "' Order By T.DOCID,T1.VSno")
  loc_10C2F69: If (var_88 = vbNullString) Then
  loc_10C2F6C:   Exit Sub
  loc_10C2F6D: End If
  loc_10C2F83: unk_487AE7.Execute var_88, var_D4, -1
  loc_10C2F8E: Set var_9C = var_1D8
  loc_10C2FA3: Call 0.Method_Shift4 (var_1D8)
  loc_10C2FAE: MemVar_1F921E4 = var_1D8
  loc_10C2FC6: Call 0.Method_arg_90 (var_1D8, var_A4, var_9E)
  loc_10C2FCE: Call 0.Method_arg_24 (1)
  loc_10C2FDA: For var_230 =  To CInt(var_A4): var_1D8 = var_230 'Integer
  loc_10C2FF3:   Call 0.Method_arg_90 (var_1D8, CLng(var_9E))
  loc_10C2FFB:   Call 0.Method_arg_20 (var_1EC)
  loc_10C3003:   Call 0.Method_arg_30 (var_234)
  loc_10C3049:   If (Ucase(CVar(var_234)) = Ucase("TITLE")) Then
  loc_10C305F:     Call 0.Method_arg_90 (var_1D8, CLng(var_9E))
  loc_10C3067:     Call 0.Method_arg_20 (var_1EC)
  loc_10C306F:     Call 0.Method_arg_38 ("'TDS Challan'")
  loc_10C307B:   End If
  loc_10C307E: Next var_230 'Integer
  loc_10C309C: Call 0.Method_arg_64 (var_1D8, CVar(var_9C))
  loc_10C30A4: Call 0.Method_arg_2C (var_C4)
  loc_10C30B2: Call 0.Method_arg_150 (var_E4)
  loc_10C30BD: Call 0.Method_arg_50 (var_234)
  loc_10C30D6: Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_10C30E3: Set var_9C = Nothing
  loc_10C30E6: Exit Sub
  loc_10C30E7: ' Referenced from: 10C2E64
  loc_10C30ED: Call 0.Method_arg_50 (var_234, var_234)
  loc_10C3102: Proc_183_57_104AA84(var_234, "TopCtrl1_ePrn")
  loc_10C310E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A4C4
  'Data Table: 487AD4
  Dim Me As Recordset15
  loc_E0A4BB: Me.Requery -1
  loc_E0A4C0: Exit Sub
  loc_E0A4C1: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '16E8880
  'Data Table: 487AD4
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_98 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_A4 As String
  Dim var_9C As Variant
  Dim var_13C As String
  Dim var_140 As String
  Dim unk_487AE7 As Connection15
  Dim var_A0 As Variant
  Dim var_144 As Variant
  Dim var_148 As Variant
  Dim var_8A As Variant
  Dim var_88 As Variant
  Dim var_118 As Variant
  Dim var_178 As TextBox
  Dim var_524 As Double
  Dim var_1A8 As Variant
  Dim var_1F4 As Variant
  Dim var_230 As Variant
  Dim var_52C As Double
  Dim var_174 As String
  Dim var_188 As String
  Dim var_138 As Variant
  Dim var_16C As Variant
  Dim var_228 As Variant
  Dim var_244 As Variant
  Dim var_254 As Variant
  Dim var_264 As Variant
  Dim var_284 As Variant
  Dim var_294 As Variant
  Dim var_2F4 As Variant
  Dim var_304 As Variant
  Dim var_38C As Variant
  Dim var_3AC As Variant
  Dim var_404 As Variant
  Dim var_43C As Variant
  Dim var_4B4 As Variant
  Dim var_4D4 As Variant
  Dim var_4F8 As String
  Dim var_1A4 As Variant
  Dim var_968 As Double
  Dim var_1F0 As Variant
  Dim var_540 As Variant
  Dim var_560 As Variant
  Dim var_590 As Variant
  Dim var_5B0 As Variant
  Dim var_22C As Variant
  Dim var_5F0 As Variant
  Dim var_610 As Variant
  Dim var_624 As String
  Dim var_978 As Double
  Dim var_308 As MSHFlexGrid
  Dim var_3B0 As MSHFlexGrid
  Dim var_42C As Variant
  Dim var_3B4 As MSHFlexGrid
  Dim var_484 As Variant
  Dim var_408 As MSHFlexGrid
  Dim var_518 As Variant
  Dim var_2D4 As Variant
  Dim var_318 As Variant
  Dim var_34C As Variant
  Dim var_3D4 As Variant
  Dim var_858 As Variant
  Dim var_92 As Integer
  Dim Me As Recordset15
  loc_16E6F04: On Error Goto loc_16E8841
  loc_16E6F12: Set var_98 = Me.Txt
  loc_16E6F18: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5))
  loc_16E6F41: If (Proc_183_19_E8DAFC(var_9C, "Challan Type") = 0) Then
  loc_16E6F44:   Exit Sub
  loc_16E6F45: End If
  loc_16E6F50: Set var_98 = Me.Txt
  loc_16E6F56: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_16E6F7F: If (Proc_183_19_E8DAFC(var_9C, "Challan No") = 0) Then
  loc_16E6F82:   Exit Sub
  loc_16E6F83: End If
  loc_16E6F8E: Set var_98 = Me.Txt
  loc_16E6F94: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C)
  loc_16E6FBD: If (Proc_183_19_E8DAFC(var_9C, "Challan Date") = 0) Then
  loc_16E6FC0:   Exit Sub
  loc_16E6FC1: End If
  loc_16E6FCC: Set var_98 = Me.Txt
  loc_16E6FD2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C)
  loc_16E6FFB: If (Proc_183_19_E8DAFC(var_9C, "Bank") = 0) Then
  loc_16E6FFE:   Exit Sub
  loc_16E6FFF: End If
  loc_16E700A: Set var_98 = Me.Txt
  loc_16E7010: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_9C)
  loc_16E7021: Set var_A0 = var_9C
  loc_16E7039: If (Proc_183_19_E8DAFC(var_A0, "Month & Year") = 0) Then
  loc_16E703C:   Exit Sub
  loc_16E703D: End If
  loc_16E7040: Call Proc_190_33_F6471C(var_A6)
  loc_16E704B: If (var_A6 = &HFF) Then
  loc_16E704E:   Exit Sub
  loc_16E704F: End If
  loc_16E704F: var_B8 = 1
  loc_16E7058: var_D8 = 1
  loc_16E7076: var_108 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_16E707C: var_118 = Trim(var_108)
  loc_16E7098: If (var_118 = vbNullString) Then
  loc_16E70AE:   var_F8 = "Item Detail Required "
  loc_16E70B4:   MsgBox(var_F8, 0, var_108, var_118, var_138)
  loc_16E70D7:   Me.FGrid.Row = 1
  loc_16E70E3:   Set var_98 = Me.FGrid
  loc_16E7107:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_16E710F:   Exit Sub
  loc_16E7110: End If
  loc_16E7114: Set var_98 = Me.TopCtrl1
  loc_16E711A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(FGrid.DispID_8001)
  loc_16E7122: var_A4 = CStr(var_D8)
  loc_16E7133: If (var_A4 = "Add") Then
  loc_16E7163:   Set var_98 = Me.Txt
  loc_16E7169:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4, "Select Count(*) From TDSChal Where DocID='", var_F8, -1, var_A0)
  loc_16E718A:   unk_487AE7.Execute 0 & var_A4 & "'", var_148, var_108
  loc_16E7192:   var_B8 = var_A0.Fields
  loc_16E719A:    = var_9C.Text.Item(var_9C)
  loc_16E71A2:    = var_148.Value
  loc_16E71CF:   If (var_108 > 0) Then
  loc_16E71D8:     Call Proc_190_34_1198280(MemVar_1F921DC)
  loc_16E71EB:     Set var_98 = Me.Txt
  loc_16E71F1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C)
  loc_16E71F9:     var_9C.Text = var_A4
  loc_16E7208:     Exit Sub
  loc_16E7209:   End If
  loc_16E7209: End If
  loc_16E720B: var_8A = &HFF
  loc_16E7217: unk_487AE7.BeginTrans var_14C
  loc_16E723A: Set var_98 = Me.Txt
  loc_16E7240: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4, "SELECT * From TDSCHAL1 Where DocID='", var_F8)
  loc_16E7248: -1 = var_9C.Text
  loc_16E7261: unk_487AE7.Execute var_A0 & var_A4 & "'", var_8A, var_A4
  loc_16E726C: Set var_88 = var_A0
  loc_16E7284: ' Referenced from: 16E7343
  loc_16E7293: If Not(var_88.EOF) Then
  loc_16E72C2:   var_9C = var_88.Fields.Item("TDSDocId")
  loc_16E72D2:   var_108 = "UPDATE LEDGERTDS SET TDSPOST='' WHERE TDSDocId='" & var_9C.Value 
  loc_16E72F1:   var_A0 = var_88.Fields
  loc_16E72F9:   var_144 = var_A0.Item("TDSVSno")
  loc_16E730D:   var_A4 = CStr(var_108 & "' AND TDSV_Sno=" & var_144.Value)
  loc_16E7317:   unk_487AE7.Execute var_A4, var_16C, -1
  loc_16E733E:   var_88.MoveNext
  loc_16E7343:   GoTo loc_16E7284
  loc_16E7346: End If
  loc_16E7364: Set var_98 = Me.Txt
  loc_16E736A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4, "Delete From TDSCHAL1 Where  DocID='")
  loc_16E7372: var_F8 = var_9C.Text
  loc_16E737B: var_13C = -1 & var_A4
  loc_16E738B: unk_487AE7.Execute var_A0 & var_A4 & "'", var_A0, var_148
  loc_16E73C3: Set var_98 = Me.Txt
  loc_16E73C9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4, "Delete From TDSCHAL  Where  DocID='")
  loc_16E73D1: var_F8 = var_9C.Text
  loc_16E73DA: var_13C = -1 & var_A4
  loc_16E73EA: unk_487AE7.Execute var_A0 & var_A4 & "'", var_A0, 
  loc_16E7422: Set var_98 = Me.Txt
  loc_16E7428: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4, "Delete From LEDGER   Where  DocID='")
  loc_16E7430: var_F8 = var_9C.Text
  loc_16E7439: var_13C = -1 & var_A4
  loc_16E7449: unk_487AE7.Execute var_A0 & var_A4 & "'", var_A0, 
  loc_16E7471: Set var_98 = Me.Txt
  loc_16E7477: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C)
  loc_16E747F: var_A4 = var_9C.Text
  loc_16E7492: Set var_A0 = Me.Txt
  loc_16E7498: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_144)
  loc_16E74A0: var_140 = var_144.Tag
  loc_16E74B3: Set var_148 = Me.Txt
  loc_16E74B9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_178)
  loc_16E74EE: Set var_19C = Me.Txt
  loc_16E74F4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1A0)
  loc_16E7503: Proc_183_7_EB0C44(var_108, CVar(var_1A0))
  loc_16E7516: Set var_1A4 = Me.Txt
  loc_16E751C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1A8)
  loc_16E7537: Set var_1F0 = Me.Txt
  loc_16E753D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1F4)
  loc_16E7558: Set var_22C = Me.Txt
  loc_16E755E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_230)
  loc_16E7573: var_52C = Val(var_230.Text)
  loc_16E7581: Proc_183_7_EB0C44(var_2D4, MemVar_1F920EC)
  loc_16E758A: Set var_308 = Me.TopCtrl1
  loc_16E7590: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_52C)
  loc_16E75D2: Set var_3B0 = Me.Txt
  loc_16E75D8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_3B4)
  loc_16E75E7: Proc_183_9_EAA760(var_3D4, CVar(var_3B4))
  loc_16E75F7: Set var_408 = Me.Txt
  loc_16E75FD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_40C)
  loc_16E760C: Proc_183_7_EB0C44(var_42C, CVar(var_40C))
  loc_16E761C: Set var_460 = Me.Txt
  loc_16E7622: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_464)
  loc_16E7631: Proc_183_9_EAA760(var_484, CVar(var_464))
  loc_16E764A: var_13C = "Insert Into TDSCHAL (DOCID,ChalType,ChalNo,V_Prefix,ChalDate,BankCode,Site_Code,MonthNo,TDSAmt,u_name,U_ENTDt,U_AE,CHQ_NO,CHQ_DATE,BANKNAME,LOGSITE_CODE) Values ('" & var_A4
  loc_16E7680: var_118 = CVar(var_13C & "','" & var_140 & "'," & CStr(Val(var_178.Text)) & ",'" & Me.LblVPrefix.Caption & "',") 'String
  loc_16E76D3: var_254 = var_118 & var_108 & ",'" & CVar(var_1A8.Tag) & "','" & CVar(MemVar_1F92070) & "','" & CVar(var_1F4.Text) & "'," & CVar(var_52C) 
  loc_16E76E6: var_294 = var_254 & ",'" & CVar(MemVar_1F920C8) 
  loc_16E773F: var_4B4 = var_294 & "'," & var_2D4 & ",'" & IIf((CStr(var_318) = "Add"), "A", "E") & "'," & var_3D4 & "," & var_42C & "," & var_484 & ",'" 
  loc_16E7760: unk_487AE7.Execute CStr(var_4B4 & CVar(MemVar_1F92078) & "')"), var_518, -1
  loc_16E782B: For var_530 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_530 'Integer
  loc_16E783F:   Set var_98 = Me.Txt
  loc_16E7845:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4)
  loc_16E784D:   1 = var_9C.Text
  loc_16E7860:   Set var_A0 = Me.Txt
  loc_16E7866:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_144, var_140)
  loc_16E786E:   var_51C = var_144.Tag
  loc_16E7881:   Set var_148 = Me.Txt
  loc_16E7887:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_178)
  loc_16E78CD:   var_52C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16E78DB:   Set var_19C = Me.Txt
  loc_16E78E1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1A0, var_52C, CVar(CLng(0)))
  loc_16E78F0:   Proc_183_7_EB0C44(var_118, CVar(var_1A0), CVar(CLng(var_92)))
  loc_16E78F9:   var_244 = CVar(CLng(var_92)) 'Long
  loc_16E7901:   var_284 = CVar(CLng(1)) 'Long
  loc_16E7920:   var_2F4 = CVar(CLng(var_92)) 'Long
  loc_16E794A:   var_968 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16E7979:   Proc_183_7_EB0C44(var_294, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(var_92)), var_968, CVar(CLng(2)))
  loc_16E7982:   var_540 = CVar(CLng(var_92)) 'Long
  loc_16E798A:   var_560 = CVar(CLng(7)) 'Long
  loc_16E79A9:   var_590 = CVar(CLng(var_92)) 'Long
  loc_16E79B1:   var_5B0 = CVar(CLng(9)) 'Long
  loc_16E79DA:   var_5F0 = CVar(CLng(var_92)) 'Long
  loc_16E79E2:   var_610 = CVar(CLng(&HA)) 'Long
  loc_16E79EB:   Set var_230 = Me.FGrid
  loc_16E79FC:   var_624 = CStr(var_230.TextMatrix))
  loc_16E7A04:   var_978 = Val(var_624)
  loc_16E7A35:   var_980 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16E7A4D:   Set var_3B0 = Me.FGrid
  loc_16E7A53:   var_42C = var_3B0.TextMatrix)
  loc_16E7A8B:   Proc_183_7_EB0C44(var_4B4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_92)), var_42C, CVar(CLng(&HC)), CVar(CLng(var_92)), var_980)
  loc_16E7AA5:   Set var_408 = Me.FGrid
  loc_16E7AAB:   var_518 = var_408.TextMatrix)
  loc_16E7AC2:   Proc_183_7_EB0C44(var_828, MemVar_1F920EC, var_518, CVar(CLng(&HE)), CVar(CLng(var_92)), CVar(CLng(&HB)), CVar(CLng(var_92)))
  loc_16E7ACB:   Set var_40C = Me.TopCtrl1
  loc_16E7AD1:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_978)
  loc_16E7B1C:   var_13C = "Insert Into TDSCHAL1 (DOCID,CHALTYPE,ChalNo,VSno,Site_Code,ChalDate,TDSDocId,TDSVSno,V_Date,ACCode,Amt,TDS,TDSAmt,CertiNo,CertiDate,TDSCODE,u_name,U_ENTDt,U_AE,LOGSITE_CODE) Values ('" & var_A4
  loc_16E7B65:   var_138 = CVar(var_13C & "','" & var_140 & "'," & CStr(Val(var_178.Text)) & "," & CStr(var_52C) & ",'" & MemVar_1F92070 & "',") 'String
  loc_16E7BB4:   var_304 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_16E7BC0:   var_34C = var_138 & var_118 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(var_968) & "," & var_294 & ",'" & var_304 & "'," 
  loc_16E7BF3:   var_404 = var_34C & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_978) & "," & CVar(var_980) 
  loc_16E7C04:   var_43C = CVar(CStr(var_42C)) 'String
  loc_16E7C57:   var_858 = var_404 & ",'" & var_43C & "'," & var_4B4 & ",'" & CVar(CStr(var_518)) & "','" & CVar(MemVar_1F920C8) & "'," & var_828 & ",'" 
  loc_16E7C88:   unk_487AE7.Execute CStr(var_858 & IIf((CStr(var_868) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_960, -1
  loc_16E7D62:   var_B8 = CVar(CLng(var_92)) 'Long
  loc_16E7D6A:   var_D8 = CVar(CLng(1)) 'Long
  loc_16E7D89:   var_128 = CVar(CLng(var_92)) 'Long
  loc_16E7D91:   var_264 = CVar(CLng(2)) 'Long
  loc_16E7D9A:   Set var_9C = Me.FGrid
  loc_16E7DA0:   var_108 = var_9C.TextMatrix)
  loc_16E7DCA:   var_A4 = CStr(Me.FGrid.TextMatrix))
  loc_16E7DF1:   unk_487AE7.Execute "UPDATE LEDGERTDS SET TDSPOST='Y' WHERE TDSDocId='" & var_A4 & "' AND TDSV_Sno=" & CStr(Val(CStr(var_108))) & vbNullString, var_118, -1
  loc_16E7E1C: Next var_530 'Integer
  loc_16E7E44: Set var_98 = Me.Txt
  loc_16E7E4A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4, "SELECT SUM(TDSAMT)AS TDSAMOUNT,TDSCODE FROM TDSCHAL1 Where DocID='")
  loc_16E7E52: var_F8 = var_9C.Text
  loc_16E7E5B: var_13C = -1 & var_A4
  loc_16E7E70: var_174 = "UPDATE LEDGERTDS SET TDSPOST='Y' WHERE TDSDocId='" & var_A4 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "' GROUP BY TDSCODE"
  loc_16E7E79: unk_487AE7.Execute var_174, var_A0, 0
  loc_16E7E84: Set var_88 = var_A0
  loc_16E7EA0: ' Referenced from: 16E8644
  loc_16E7EAF: If Not(var_88.EOF) Then
  loc_16E7EB8:   var_92 = (var_92 + 1)
  loc_16E7EC9:   Set var_98 = Me.Txt
  loc_16E7ECF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C)
  loc_16E7ED7:   var_A4 = var_9C.Text
  loc_16E7EEA:   Set var_A0 = Me.Txt
  loc_16E7EF0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_144)
  loc_16E7F0B:   Set var_148 = Me.Txt
  loc_16E7F11:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_178)
  loc_16E7F26:   var_524 = Val(var_178.Text)
  loc_16E7F46:   Set var_19C = Me.Txt
  loc_16E7F4C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1A0)
  loc_16E7F5B:   Proc_183_7_EB0C44(var_108, CVar(var_1A0))
  loc_16E7F7A:   var_1A8 = var_88.Fields.Item("TDSCODE")
  loc_16E7FBC:   Set var_22C = Me.Txt
  loc_16E7FC2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_230, var_624)
  loc_16E7FDA:   Set var_308 = Me.Txt
  loc_16E7FE0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_3B0)
  loc_16E7FEF:   Proc_183_9_EAA760(var_294, CVar(var_3B0))
  loc_16E7FFF:   Set var_3B4 = Me.Txt
  loc_16E8005:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_408)
  loc_16E8014:   Proc_183_7_EB0C44(var_304, CVar(var_408))
  loc_16E8024:   Set var_40C = Me.Txt
  loc_16E802A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_460)
  loc_16E8049:   Proc_183_7_EB0C44(var_404, MemVar_1F920EC)
  loc_16E8052:   Set var_464 = Me.TopCtrl1
  loc_16E8058:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_16E80A3:   var_13C = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Chq_No,Chq_Date,Narration,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & var_A4
  loc_16E80F3:   var_4F8 = var_13C & "'," & CStr(0) & ",'" & var_144.Tag & "'," & CStr(var_230.Tag) & ",'" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070
  loc_16E8133:   var_228 = CVar(var_4F8 & "',") & var_108 & ",'" & var_1A8.Value & "',0," & var_88.Fields.Item("TDSAMOUNT").Value & ",'" & CVar(var_624) 
  loc_16E8168:   var_38C = ("T.D.S. Challan " + Trim(CVar(var_460)))
  loc_16E816C:   var_3AC = var_228 & "'," & var_294 & "," & var_304 & ",'" & var_228 & "'," & var_294 & "," & var_304 & ",'" & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_16E81B2:   var_4D4 = var_3AC & "','" & CVar(MemVar_1F920C8) & "'," & var_404 & ",'" & IIf((CStr(var_43C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) 
  loc_16E81C9:   unk_487AE7.Execute CStr(var_4D4 & "')"), var_518, -1
  loc_16E827D:   var_92 = (var_92 + 1)
  loc_16E828E:   Set var_98 = Me.Txt
  loc_16E8294:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4)
  loc_16E82AF:   Set var_A0 = Me.Txt
  loc_16E82B5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_144)
  loc_16E82D0:   Set var_148 = Me.Txt
  loc_16E82D6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_178)
  loc_16E82EB:   var_524 = Val(var_178.Text)
  loc_16E830B:   Set var_19C = Me.Txt
  loc_16E8311:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1A0)
  loc_16E8319:   var_F8 = CVar(var_1A0) 'Address
  loc_16E8320:   Proc_183_7_EB0C44(var_108, var_F8)
  loc_16E8333:   Set var_1A4 = Me.Txt
  loc_16E8339:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1A8, var_624)
  loc_16E839F:   Set var_308 = Me.Txt
  loc_16E83A5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_3B0)
  loc_16E83B4:   Proc_183_9_EAA760(var_294, CVar(var_3B0))
  loc_16E83C4:   Set var_3B4 = Me.Txt
  loc_16E83CA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_408)
  loc_16E83D9:   Proc_183_7_EB0C44(var_304, CVar(var_408))
  loc_16E83E9:   Set var_40C = Me.Txt
  loc_16E83EF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_460)
  loc_16E840E:   Proc_183_7_EB0C44(var_404, MemVar_1F920EC)
  loc_16E8417:   Set var_464 = Me.TopCtrl1
  loc_16E841D:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_51C)
  loc_16E8468:   var_13C = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Chq_No,Chq_Date,Narration,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & var_A4
  loc_16E84B8:   var_4F8 = var_13C & "'," & CStr(var_9C.Text) & ",'" & var_144.Tag & "'," & CStr(var_1A8.Tag) & ",'" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070
  loc_16E84C9:   var_B8 = ",'"
  loc_16E84F8:   var_228 = CVar(var_4F8 & "',") & var_108 & var_B8 & CVar(var_624) & "'," & var_88.Fields.Item("TDSAMOUNT").Value & ",0,'" & var_88.Fields.Item("TDSCODE").Value 
  loc_16E852D:   var_38C = ("T.D.S. Challan " + Trim(CVar(var_460)))
  loc_16E8531:   var_3AC = var_228 & "'," & var_294 & "," & var_304 & ",'" & var_228 & "'," & var_294 & "," & var_304 & ",'" & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_16E8577:   var_4D4 = var_3AC & "','" & CVar(MemVar_1F920C8) & "'," & var_404 & ",'" & IIf((CStr(var_43C) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) 
  loc_16E858E:   unk_487AE7.Execute CStr(var_4D4 & "')"), var_518, -1
  loc_16E863F:   var_88.MoveNext
  loc_16E8644:   GoTo loc_16E7EA0
  loc_16E8647: End If
  loc_16E864B: Set var_98 = Me.TopCtrl1
  loc_16E8651: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_51C)
  loc_16E866A: If (CStr() = "Add") Then
  loc_16E867B:   Set var_98 = Me.Txt
  loc_16E8681:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_16E8689:   var_A4 = var_9C.Text
  loc_16E8696:   var_524 = Val(var_A4)
  loc_16E86A7:   Set var_A0 = Me.Txt
  loc_16E86AD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_144)
  loc_16E8701:   var_188 = "UPDATE VOUCHER_Prefix SET Start_Srl_No=" & CStr(var_524) & " WHERE V_Type='" & var_144.Tag & "' and Prefix='" & Me.LblVPrefix.Caption
  loc_16E872D:   unk_487AE7.Execute var_188 & "' AND SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "' ", var_F8, -1
  loc_16E8763: End If
  loc_16E8769: unk_487AE7.CommitTrans
  loc_16E8770: var_8A = 0
  loc_16E877E: Me.Requery -1
  loc_16E87A2: Set var_98 = Me.Txt
  loc_16E87A8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C, var_A4, "SearchCode ='", 0)
  loc_16E87B0: 1 = var_9C.Text
  loc_16E87C9: Me.Find var_B8 & var_A4 & "'", var_8A, var_178
  loc_16E87E2: Set var_98 = Me.TopCtrl1
  loc_16E87E8: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_524)
  loc_16E8801: If (CStr() = "Add") Then
  loc_16E8804:   Call TopCtrl1_UnknownEvent_A()
  loc_16E8809:   Exit Sub
  loc_16E880A: End If
  loc_16E881F: var_A4 = "INI"
  loc_16E882D: Call Proc_190_29_E9B5D8(Proc_5_1_100CB50(var_A4, Me))
  loc_16E883D: Set var_88 = Nothing
  loc_16E8840: Exit Sub
  loc_16E8841: ' Referenced from: 16E6F04
  loc_16E8847: If (var_8A = &HFF) Then
  loc_16E8850:   unk_487AE7.RollbackTrans
  loc_16E8855: End If
  loc_16E885B: Call 0.Method_arg_50 (var_A4)
  loc_16E8870: Proc_183_57_104AA84(var_A4, "TopCtrl1_eSave")
  loc_16E887C: Exit Sub
  loc_16E887D: Exit Sub
End Sub

Private Sub Form_Load() '118F55C
  'Data Table: 487AD4
  Dim var_BC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_A8 As Variant
  loc_118F16C: On Error Goto loc_118F531
  loc_118F179: Set var_A8 = Me.TopCtrl1
  loc_118F17F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_118F18D: Call 0.Method_arg_50 (var_AC)
  loc_118F19D: Set var_A8 = Me.TopCtrl1
  loc_118F1A3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(CVar(var_AC))
  loc_118F1BA: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_118F1CB: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_118F1DC: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_118F1ED: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_118F1FE: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_118F20F: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_118F220: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_118F231: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_118F242: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_118F253: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_118F26D: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_118F27B: Set var_A8 = MemVar_1F92044
  loc_118F28A: Call 0.Method_Form_Load8 (var_A8)
  loc_118F2A0: Me.TopCtrl1.Clone
  loc_118F2BA: Call 0.Method_arg_50 (var_A8, -1)
  loc_118F2E2: Me.Recordset15.CursorLocation = 3
  loc_118F305: var_AC = "Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where Category in ('TDSCH') AND SITE_CODE='" & MemVar_1F92070
  loc_118F324: Me.Open CVar(var_AC & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "' Order by Description"), CVar(MemVar_1F921DC), 2
  loc_118F33E: CVarUnk
  loc_118F343: VerifyVarObj
  loc_118F349: Set var_A8 = Me.DGVType
  loc_118F34F: LateIdStAd
  loc_118F379: Me.DGVType.CursorLocation = 3
  loc_118F39C: var_AC = "Select SubCode As Code,Name From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where Nature in ('Bank','Cash') AND (SubGroup.LOGSITE_CODE='" & MemVar_1F92078
  loc_118F3C1: CVarUnk
  loc_118F3C6: VerifyVarObj
  loc_118F3CC: Set var_A8 = Me.DGParty
  loc_118F3D2: LateIdStAd
  loc_118F3FC: Me.DGParty.CursorLocation = 3
  loc_118F41F: var_AC = "Select DocID as SearchCode,TDSChal.*,SUBGROUP.NAME AS BankAcName,VOUCHER_tYPE.Description From (TDSChal LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=TDSCHAL.BANKCODE) LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE=TDSCHAL.CHALTYPE WHERE VOUCHER_TYPE.SITE_CODE='" & MemVar_1F92070
  loc_118F442: var_BC = CVar(var_AC & "' AND VOUCHER_TYPE.LOGSITE_CODE='" & MemVar_1F92078 & "' AND TDSCHAL.LOGSITE_CODE='" & MemVar_1F92078 & "' Order By DocID") 'String
  loc_118F44C: ar(var_AC & "' OR SubGroup.LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F921DC), 2 var_BC, CVar(MemVar_1F921DC), 2
  loc_118F476: var_AC = "INI"
  loc_118F484: Call Proc_190_29_E9B5D8(Proc_5_1_100CB50(var_AC, Me, New, 3, -1, Me, New), 3, -1, Me)
  loc_118F49B: Me.btsadd.Visible = False
  loc_118F4A3: Call Proc_190_27_13391C4(New, 3)
  loc_118F4A8: Call Proc_190_31_153B30C(-1)
  loc_118F4BC: Me.LblUser.Left = CDbl(13500)
  loc_118F4D3: Me.LblUser.Top = CDbl(7800)
  loc_118F4EA: Me.LblLDt.Top = CDbl(8160)
  loc_118F501: Me.LblLDt.Left = CDbl(13500)
  loc_118F510: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_118F528: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_118F530: Exit Sub
  loc_118F531: ' Referenced from: 118F16C
  loc_118F537: Call 0.Method_arg_50 (var_AC)
  loc_118F54C: Proc_183_57_104AA84(var_AC, "Form_Load")
  loc_118F558: Exit Sub
End Sub

Private Sub Form_Resize() 'E70768
  'Data Table: 487AD4
  loc_E70712: Call 0.Method_arg_50 (var_88)
  loc_E70724: Me.LblFormCaption.Caption = var_88
  loc_E7073D: Me.LblFormCaption.Left = CDbl(0)
  loc_E7074B: Call 0.Method_arg_100 (var_90)
  loc_E7075D: Me.LblFormCaption.Width = var_90
  loc_E70765: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5E3B8
  'Data Table: 487AD4
  loc_E5E377: Set global_72 = Nothing
  loc_E5E389: Set global_68 = Nothing
  loc_E5E39B: Set global_76 = Nothing
  loc_E5E3AD: Set global_80 = Nothing
  loc_E5E3B4: Exit Sub
End Sub

Private Sub Form_Activate() 'E2FEF4
  'Data Table: 487AD4
  loc_E2FED0: Set var_88 = Me.TopCtrl1
  loc_E2FED6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030000()
  loc_E2FEEB: If (CLng(CInt()) = &H2D) Then
  loc_E2FEEE:   Call TopCtrl1_UnknownEvent_15()
  loc_E2FEF3: End If
  loc_E2FEF3: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E68F60
  'Data Table: 487AD4
  loc_E68F18: On Error Goto loc_E68F36
  loc_E68F2D: Proc_183_40_F30B0C(Me, KeyCode)
  loc_E68F35: Exit Sub
  loc_E68F36: ' Referenced from: E68F18
  loc_E68F3C: Call 0.Method_arg_50 (var_8C)
  loc_E68F51: Proc_183_57_104AA84(var_8C, "Form_KeyDown")
  loc_E68F5D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '112D808
  'Data Table: 487AD4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_B0 As String
  loc_112D49C: On Error Goto loc_112D7DE
  loc_112D4A9: Set var_88 = Me.Txt
  loc_112D4AF: Call 0.Method_Txt_GotFocus0 (Index)
  loc_112D4BD: Proc_183_28_E20B20(var_8C)
  loc_112D4C9: Call Proc_190_30_E84478(var_8C)
  loc_112D4D1: var_92 = Index
  loc_112D4DC: If (var_92 = CInt(5)) Then
  loc_112D52D:   Set var_88 = Me.Txt
  loc_112D533:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_112D53B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_112D553:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_112D556:     Exit Sub
  loc_112D557:   End If
  loc_112D564:   Set var_88 = Me.Txt
  loc_112D56A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_112D572:   var_A0 = var_8C.Text
  loc_112D584:   var_B0 = "Name"
  loc_112D5BF:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_112D5C8:     Me.MoveFirst
  loc_112D5EB:     Set var_88 = Me.Txt
  loc_112D5F1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_112D5F9:     0 = var_8C.Text
  loc_112D612:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_112D627:   End If
  loc_112D62A: Else
  loc_112D632:   If (var_92 = CInt(2)) Then
  loc_112D683:     Set var_88 = Me.Txt
  loc_112D689:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_112D6A9:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_112D6AC:       Exit Sub
  loc_112D6AD:     End If
  loc_112D6BA:     Set var_88 = Me.Txt
  loc_112D6C0:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_112D6C8:     var_A0 = var_8C.Text
  loc_112D6D0:     var_D4 = CVar(var_A0) 'String
  loc_112D715:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_112D71E:       Me.MoveFirst
  loc_112D743:       Set var_88 = Me.Txt
  loc_112D749:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_112D751:       0 = var_8C.Text
  loc_112D75F:       Proc_183_9_EAA760(var_D4, CVar(var_A0))
  loc_112D775:       Me.Find CStr(1 & var_D4), var_FC, 
  loc_112D78D:     End If
  loc_112D790:   Else
  loc_112D798:     If Not (var_92 = CInt(0)) Then
  loc_112D7A3:       If Not (var_92 = CInt(1)) Then
  loc_112D7AE:         If Not (var_92 = CInt(3)) Then
  loc_112D7B9:           If Not (var_92 = CInt(7)) Then
  loc_112D7C4:             If (var_92 = CInt(8)) Then
  loc_112D7C7:             End If
  loc_112D7C7:           End If
  loc_112D7C7:         End If
  loc_112D7C7:       End If
  loc_112D7CF:       var_A0 = "{Home}+{End}"
  loc_112D7D5:       Proc_303_0_FB9B68(var_A0)
  loc_112D7DD:     End If
  loc_112D7DD:   End If
  loc_112D7DD: End If
  loc_112D7DD: Exit Sub
  loc_112D7DE: ' Referenced from: 112D49C
  loc_112D7E4: Call 0.Method_arg_50 (var_A0)
  loc_112D7F9: Proc_183_57_104AA84(var_A0, "Txt_GotFocus")
  loc_112D805: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1003428
  'Data Table: 487AD4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_C0 As String
  loc_1003230: On Error Goto loc_1003400
  loc_100323D: If (CLng(Shift) = &H1B) Then
  loc_1003240:   Call Proc_190_30_E84478()
  loc_1003245:   Exit Sub
  loc_1003246: End If
  loc_1003249: var_86 = KeyCode
  loc_1003254: If (var_86 = CInt(5)) Then
  loc_100328D:   Proc_183_34_1305540(Me.DGVType, Me.Txt, KeyCode, global_76)
  loc_10032A0: Else
  loc_10032A8:   If (var_86 = CInt(2)) Then
  loc_10032E1:     Proc_183_34_1305540(Me.DGParty, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_10032F1:   End If
  loc_10032F1: End If
  loc_100332C: If ((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGParty.Visible) = 0)) Then
  loc_1003344:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_100334D:     Proc_183_29_E52C04(Shift, arg_14, 1, Shift)
  loc_1003352:   End If
  loc_1003356:   Set var_8C = Me.TopCtrl1
  loc_100335C:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_1003375:   If (CStr(1) = "Add") Then
  loc_100338D:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1003396:       Proc_183_30_E53180(Shift, arg_14)
  loc_100339B:     End If
  loc_100339E:   Else
  loc_10033A2:     Set var_8C = Me.TopCtrl1
  loc_10033A8:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_86)
  loc_10033B0:     var_C0 = CStr()
  loc_10033C1:     If (var_C0 = "Edit") Then
  loc_10033D9:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10033E2:         Proc_183_30_E53180(Shift)
  loc_10033E7:       End If
  loc_10033E7:     End If
  loc_10033E7:   End If
  loc_10033FC:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10033FF:   End If
  loc_10033FF: End If
  loc_10033FF: Exit Sub
  loc_1003400: ' Referenced from: 1003230
  loc_1003406: Call 0.Method_arg_50 (var_C0)
  loc_100341B: Proc_183_57_104AA84(var_C0, "Txt_KeyDown")
  loc_1003427: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F98ADC
  'Data Table: 487AD4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F98974: On Error Goto loc_F98AB2
  loc_F9897A: Proc_183_46_E070C0(arg_10)
  loc_F98982: var_86 = KeyAscii
  loc_F9898D: If (var_86 = CInt(5)) Then
  loc_F989AC:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F989C2:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_F989D1:     Set var_B8 = Me.Txt
  loc_F989DC:     var_B0 = "Name"
  loc_F989F7:     Proc_183_41_1459C78(var_B8, KeyAscii, global_76, arg_10)
  loc_F98A06:   End If
  loc_F98A09: Else
  loc_F98A11:   If (var_86 = CInt(0)) Then
  loc_F98A1E:     Set var_8C = Me.Txt
  loc_F98A24:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_F98A3F:     Proc_183_22_129AEBC(var_B8, arg_10, 8)
  loc_F98A4E:   Else
  loc_F98A56:     If (var_86 = CInt(2)) Then
  loc_F98A75:       If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F98A87:         var_B0 = "Name"
  loc_F98AA2:         Proc_183_41_1459C78(Me.Txt, KeyAscii, global_68, arg_10, var_B0)
  loc_F98AB1:       End If
  loc_F98AB1:     End If
  loc_F98AB1:   End If
  loc_F98AB1: End If
  loc_F98AB1: Exit Sub
  loc_F98AB2: ' Referenced from: F98974
  loc_F98AB8: Call 0.Method_arg_50 (var_B0, 0, 0)
  loc_F98ACD: Proc_183_57_104AA84(var_B0, "TXT_KeyPress")
  loc_F98AD9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C45C
  'Data Table: 487AD4
  loc_E4C43A: Set var_88 = Me.Txt
  loc_E4C440: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C44E: Proc_183_27_E22608(var_8C)
  loc_E4C45A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13424E8
  'Data Table: 487AD4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_94 As Label
  Dim var_EC As TextBox
  Dim var_FC As String
  Dim var_108 As TextBox
  loc_1341D3C: On Error Goto loc_13424BD
  loc_1341D42: var_86 = Cancel
  loc_1341D4D: If (var_86 = CInt(5)) Then
  loc_1341D5B:   Set var_8C = Me.Txt
  loc_1341D61:   Call 0.Method_Txt_Validate0 (CInt(5), var_90)
  loc_1341D69:   var_98 = "Challan Type"
  loc_1341D8A:   If (Proc_183_19_E8DAFC(var_90, var_98) = 0) Then
  loc_1341D98:     Set var_8C = Me.Txt
  loc_1341D9E:     Call 0.Method_Txt_Validate0 (CInt(5), var_90)
  loc_1341DA6:     var_90.SetFocus
  loc_1341DB4:     arg_10 = &HFF
  loc_1341DB7:     Exit Sub
  loc_1341DB8:   End If
  loc_1341DD8:   var_9E = Me.EOF
  loc_1341E06:   Set var_8C = Me.Txt
  loc_1341E0C:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1341E14:   ((Me.RecordCount = 0) Or ((var_9E = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1341E2C:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_1341E3C:     Set var_8C = Me.Txt
  loc_1341E42:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1341E4A:     var_90.Text = vbNullString
  loc_1341E63:     Set var_8C = Me.Txt
  loc_1341E69:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1341E71:     var_90.Tag = vbNullString
  loc_1341E80:   Else
  loc_1341EBB:     Set var_94 = Me.Txt
  loc_1341EC1:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1341EC9:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1341EFC:     var_90 = Me.Fields.Item("Code")
  loc_1341F1A:     Set var_94 = Me.Txt
  loc_1341F20:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1341F28:     var_B4.Tag = CStr(var_90.Value)
  loc_1341F42:     Set var_8C = Me.TopCtrl1
  loc_1341F48:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_86)
  loc_1341F50:     var_98 = CStr()
  loc_1341F61:     If (var_98 = "Add") Then
  loc_1341F6A:       Call Proc_190_34_1198280(MemVar_1F921DC)
  loc_1341F7D:       Set var_8C = Me.Txt
  loc_1341F83:       Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_1341F8B:       var_90.Text = var_98
  loc_1341F9A:     End If
  loc_1341F9A:   End If
  loc_1341F9D: Else
  loc_1341FA5:   If (var_86 = CInt(0)) Then
  loc_1341FB3:     Set var_8C = Me.Txt
  loc_1341FB9:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1341FE2:     If (Proc_183_19_E8DAFC(var_90, "Challan No") = 0) Then
  loc_1341FF0:       Set var_8C = Me.Txt
  loc_1341FF6:       Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1341FFE:       var_90.SetFocus
  loc_134200C:       arg_10 = &HFF
  loc_134200F:       Exit Sub
  loc_1342010:     End If
  loc_134201B:     Set var_8C = Me.Txt
  loc_1342021:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_134202D:     Proc_183_6_EA3004(CVar(var_90), arg_10)
  loc_1342042:     Set var_94 = Me.Txt
  loc_1342048:     Call 0.Method_Txt_Validate0 (CInt(0), var_B4)
  loc_1342050:     var_B4.Text = CStr(var_98)
  loc_1342068:     Set var_8C = Me.TopCtrl1
  loc_134206E:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1342087:     If (CStr() = "Add") Then
  loc_1342098:       Set var_8C = Me.Txt
  loc_134209E:       Call 0.Method_Txt_Validate0 (CInt(5), var_90)
  loc_13420CB:       Set var_B4 = Me.Txt
  loc_13420D1:       Call 0.Method_Txt_Validate0 (CInt(0), var_EC)
  loc_1342122:       var_FC = MemVar_1F9206C & Proc_183_15_EAC900(MemVar_1F92070, 2) & Proc_183_15_EAC900(var_90.Tag, 5) & Proc_183_15_EAC900(Me.LblVPrefix.Caption, 5)
  loc_1342148:       Set var_104 = Me.Txt
  loc_134214E:       Call 0.Method_Txt_Validate0 (CInt(6), var_108)
  loc_1342156:       var_108.Text = var_FC & Proc_183_16_EAECDC(var_EC.Text, 8)
  loc_1342185:     End If
  loc_1342188:     Call Proc_190_33_F6471C(var_9E)
  loc_1342193:     If (var_9E = &HFF) Then
  loc_1342198:       arg_10 = &HFF
  loc_134219B:       Exit Sub
  loc_134219C:     End If
  loc_134219F:   Else
  loc_13421A7:     If Not (var_86 = CInt(1)) Then
  loc_13421B2:       If (var_86 = CInt(7)) Then
  loc_13421B5:       End If
  loc_13421C2:       Set var_8C = Me.Txt
  loc_13421C8:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1342200:       If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_1342208:         var_98 = CStr(MemVar_1F920EC)
  loc_1342215:         Set var_8C = Me.Txt
  loc_134221B:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1342223:         var_90.Text = var_98
  loc_1342235:       Else
  loc_1342242:         Set var_8C = Me.Txt
  loc_1342248:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134225F:         Call 0.Method_arg_184 (var_90, var_98)
  loc_1342271:         Set var_B4 = Me.Txt
  loc_1342277:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_134227F:         Me.Txt.Text = var_98
  loc_1342292:       End If
  loc_1342295:     Else
  loc_134229D:       If (var_86 = CInt(3)) Then
  loc_13422AD:         Set var_8C = Me.Txt
  loc_13422B3:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13422CA:         Call 0.Method_arg_194 (var_90, var_98)
  loc_13422DC:         Set var_B4 = Me.Txt
  loc_13422E2:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_13422EA:         Me.Txt.Text = var_98
  loc_1342301:         Set var_8C = Me.TopCtrl1
  loc_1342307:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_1342320:         If (CStr() = "Add") Then
  loc_1342323:           Call Proc_190_32_138A788()
  loc_1342328:         End If
  loc_134232B:       Else
  loc_1342333:         If (var_86 = CInt(2)) Then
  loc_1342384:           Set var_8C = Me.Txt
  loc_134238A:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13423AA:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_13423BA:             Set var_8C = Me.Txt
  loc_13423C0:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13423C8:             var_90.Text = vbNullString
  loc_13423E1:             Set var_8C = Me.Txt
  loc_13423E7:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13423EF:             var_90.Tag = vbNullString
  loc_13423FE:           Else
  loc_1342439:             Set var_94 = Me.Txt
  loc_134243F:             Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1342447:             var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_134248B:             var_98 = CStr(Me.Fields.Item("Code").Value)
  loc_1342498:             Set var_94 = Me.Txt
  loc_134249E:             Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13424A6:             var_B4.Tag = var_98
  loc_13424BC:           End If
  loc_13424BC:         End If
  loc_13424BC:       End If
  loc_13424BC:     End If
  loc_13424BC:   End If
  loc_13424BC: End If
  loc_13424BC: Exit Sub
  loc_13424BD: ' Referenced from: 1341D3C
  loc_13424C3: Call 0.Method_arg_50 (var_98)
  loc_13424CB: var_CC = "Txt_Validate"
  loc_13424D8: Proc_183_57_104AA84(var_98)
  loc_13424E4: Exit Sub
  loc_13424E5: EraseDestruct
End Sub

Private Sub btsadd_Click() '1406F34
  'Data Table: 487AD4
  Dim var_C0 As Variant
  Dim var_A4 As Variant
  Dim var_8A As Integer
  Dim var_A0 As Integer
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_B0 As String
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_D0 As Variant
  Dim var_114 As Variant
  Dim var_104 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim unk_487AE7 As Connection15
  Dim var_88 As Recordset15
  Dim var_9E As Integer
  Dim var_1E8 As Fields15
  Dim var_A8 As Variant
  Dim var_218 As Double
  Dim var_1FC As TextBox
  loc_140650C: On Error Goto loc_1406F09
  loc_140651A: Set var_A4 = Me.Txt
  loc_1406520: Call 0.Method_btsadd_Click0 (CInt(3))
  loc_1406549: If (Proc_183_19_E8DAFC(var_A8, "Month & Year") = 0) Then
  loc_140654C:   Exit Sub
  loc_140654D: End If
  loc_140655C: Me.FGrid.Redraw = False
  loc_1406566: var_8A = 0
  loc_140656B: var_A0 = 0
  loc_1406593: For var_E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A0 = var_E4 'Integer
  loc_140659D:   var_C0 = CVar(CLng(var_A0)) 'Long
  loc_14065A5:   var_F4 = CVar(CLng(0)) 'Long
  loc_14065C4:   var_8A = CInt(CStr(Me.FGrid.TextMatrix)))
  loc_14065D3: Next var_E4 'Integer
  loc_14065DE: var_8A = (var_8A + 1)
  loc_14065F1: Set var_A4 = Me.Txt
  loc_14065F7: Call 0.Method_btsadd_Click0 (CInt(3), var_A8)
  loc_1406628: var_124 = ("01/" + Trim(CVar(var_A8)))
  loc_140662E: var_134 = CDate(CDate(var_124))
  loc_140663F: var_94 = CDate(Format(var_134, "DD/MMM/YYYY"))
  loc_1406668: var_E0 = DateAdd("M", CDbl(1), var_94)
  loc_1406672: var_9C = CDate(var_E0)
  loc_1406680: var_9C = CDate((var_9C - CDbl(1)))
  loc_1406690: var_D0 = "Select LEDGERtds.*,SUBGROUP.NAME AS ACNAME From LEDGERTDS Left Join SUBGROUP On SUBGROUP.SUBCODE=LEDGERTDS.TDSDRCODE Where (TDSPOST='' OR TDSPOST IS NULL) AND V_DATE BETWEEN "
  loc_14066A0: Proc_183_7_EB0C44(var_E0, var_94, var_D0, var_1C4, -1, var_A4, var_9C)
  loc_14066C0: Proc_183_7_EB0C44(var_134, var_9C, var_9C & var_E0 & " AND ", var_94)
  loc_14066C8: var_144 = 1 & var_134 
  loc_14066F2: unk_487AE7.Execute CStr(var_144 & " AND LEDGERtds.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' Order by TDSDOCID,TDSV_SNO"), 1, 0
  loc_14066FD: Set var_88 = var_A4
  loc_140671B: ' Referenced from: 1406E4C
  loc_140672A: If Not(var_88.EOF) Then
  loc_140672F:   var_9E = 0
  loc_1406757:   For var_1CA = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A0 = var_1CA 'Integer
  loc_1406785:     var_B0 = Proc_183_2_E5A304(CVar(var_88.Fields.Item("TDSDocId")), 1)
  loc_14067F8:     var_1FC = var_88.Fields.Item("TDSV_Sno")
  loc_1406807:     Proc_183_3_E7D1C8(var_144, CVar(var_1FC), CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(0)))
  loc_140683C:     If CBool(CVar(CLng(0)) And ((CVar(CLng(1)) = CStr(Me.FGrid.TextMatrix))) = var_144)) Then
  loc_1406841:       var_9E = &HFF
  loc_1406844:     End If
  loc_1406847:   Next var_1CA 'Integer
  loc_1406852:   If (var_9E = 0) Then
  loc_1406855:     var_C0 = vbNullString
  loc_140685F:     Set var_A4 = Me.FGrid
  loc_1406874:     Set var_210 = Me.FGrid
  loc_140687B:     var_C0 = CVar(CLng(var_8A)) 'Long
  loc_1406883:     var_F4 = CVar(CLng(0)) 'Long
  loc_140688D:     var_E0 = CVar(CStr(var_8A)) 'String
  loc_1406894:     LateIdCallSt
  loc_14068D8:     var_114 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("TDSDocId")), CVar(CLng(1)), CVar(CLng(var_8A)), var_210, CVar(var_88.Fields.Item("TDSDocId")))) 'String
  loc_14068DF:     LateIdCallSt
  loc_1406928:     Proc_183_3_E7D1C8(var_114, CVar(var_88.Fields.Item("TDSV_Sno")), CVar(CLng(2)), CVar(CLng(var_8A)), var_210)
  loc_1406931:     var_124 = CVar(CStr(var_114)) 'String
  loc_1406938:     LateIdCallSt
  loc_140696C:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1406974:     var_164 = CVar(CLng(3)) 'Long
  loc_1406996:     var_134 = CVar(CStr(Mid(CVar(var_88.Fields.Item("DocID")), 4, 5))) 'String
  loc_140699D:     LateIdCallSt
  loc_14069D3:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_14069DB:     var_164 = CVar(CLng(4)) 'Long
  loc_14069FD:     var_134 = CVar(CStr(Mid(CVar(var_88.Fields.Item("DocID")), &HE, 8))) 'String
  loc_1406A04:     LateIdCallSt
  loc_1406A1E:     var_D0 = CVar(CLng(var_8A)) 'Long
  loc_1406A26:     var_104 = CVar(CLng(5)) 'Long
  loc_1406A56:     var_114 = CVar(CStr(var_88.Fields.Item("V_SNo").Value)) 'String
  loc_1406A5D:     LateIdCallSt
  loc_1406A77:     var_D0 = CVar(CLng(var_8A)) 'Long
  loc_1406A7F:     var_104 = CVar(CLng(6)) 'Long
  loc_1406AAF:     var_114 = CVar(CStr(var_88.Fields.Item("V_DATE").Value)) 'String
  loc_1406AB6:     LateIdCallSt
  loc_1406AD0:     var_D0 = CVar(CLng(var_8A)) 'Long
  loc_1406AD8:     var_104 = CVar(CLng(7)) 'Long
  loc_1406B08:     var_114 = CVar(CStr(var_88.Fields.Item("TDSDRCODE").Value)) 'String
  loc_1406B0F:     LateIdCallSt
  loc_1406B29:     var_D0 = CVar(CLng(var_8A)) 'Long
  loc_1406B31:     var_104 = CVar(CLng(8)) 'Long
  loc_1406B61:     var_114 = CVar(CStr(var_88.Fields.Item("AcName").Value)) 'String
  loc_1406B68:     LateIdCallSt
  loc_1406B9E:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1406BA6:     var_164 = CVar(CLng(9)) 'Long
  loc_1406BD3:     var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("ONAmt")), "0.00"))) 'String
  loc_1406BDA:     LateIdCallSt
  loc_1406C10:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1406C18:     var_164 = CVar(CLng(&HA)) 'Long
  loc_1406C45:     var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("TDS")), "0.0000"))) 'String
  loc_1406C4C:     LateIdCallSt
  loc_1406C82:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_1406C8A:     var_164 = CVar(CLng(&HB)) 'Long
  loc_1406CB7:     var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("TDSAmt")), "0.00"))) 'String
  loc_1406CBE:     LateIdCallSt
  loc_1406CD8:     var_C0 = CVar(CLng(var_8A)) 'Long
  loc_1406CE0:     var_F4 = CVar(CLng(&HC)) 'Long
  loc_1406CE5:     var_164 = vbNullString
  loc_1406CEE:     LateIdCallSt
  loc_1406CFA:     var_C0 = CVar(CLng(var_8A)) 'Long
  loc_1406D02:     var_F4 = CVar(CLng(&HD)) 'Long
  loc_1406D10:     LateIdCallSt
  loc_1406D43:     var_A8 = var_88.Fields.Item("TDSCODE")
  loc_1406D5B:     LateIdCallSt
  loc_1406D85:     Set var_A4 = Me.Txt
  loc_1406D8B:     Call 0.Method_btsadd_Click0 (CInt(4), var_A8, var_B0, Nothing, CVar(CStr(var_A8.Value)), CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_1406D93:     var_210 = var_A8.Text
  loc_1406DA0:     var_218 = Val(var_B0)
  loc_1406DD4:     var_F4 = "0.00"
  loc_1406DE9:     var_114 = (CVar(var_218) + var_88.Fields.Item("TDSAmt").Value)
  loc_1406E07:     Set var_1E8 = Me.Txt
  loc_1406E0D:     Call 0.Method_btsadd_Click0 (CInt(4), var_1FC, CStr(Format(CVar(CStr(var_A8.Value)), var_F4)), 1, 1, var_218)
  loc_1406E15:     var_1FC.Text = vbNullString
  loc_1406E41:     var_8A = (var_8A + 1)
  loc_1406E44:   End If
  loc_1406E47:   var_88.MoveNext
  loc_1406E4C:   GoTo loc_140671B
  loc_1406E4F: End If
  loc_1406E55: If (var_8A = 1) Then
  loc_1406E6B:   Me.FGrid.Rows = 2
  loc_1406E88:   var_114 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1406E90:   Set var_A8 = Me.FGrid
  loc_1406EBF:   Me.FGrid.FixedRows = 1
  loc_1406ECA: Else
  loc_1406EDD:   Me.FGrid.FixedRows = 1
  loc_1406EE5: End If
  loc_1406EE5: var_C0 = True
  loc_1406EF3: Me.FGrid.Redraw = var_C0
  loc_1406EFB: Call Proc_190_30_E84478(FGrid.DispID_10000, var_114, var_8A, var_F4)
  loc_1406F05: Set var_88 = Nothing
  loc_1406F08: Exit Sub
  loc_1406F09: ' Referenced from: 140650C
  loc_1406F0F: Call 0.Method_arg_50 (var_B0, var_C0, var_210)
  loc_1406F24: Proc_183_57_104AA84(var_B0, "btsadd_Click")
  loc_1406F30: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) '10CEA84
  'Data Table: 487AD4
  Dim var_A0 As String
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_114 As TextBox
  Dim var_134 As Double
  Dim var_12C As String
  Dim var_128 As TextBox
  loc_10CE798: On Error Goto loc_10CEA5A
  loc_10CE79F: Set var_8C = Me.TopCtrl1
  loc_10CE7A5: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10CE7AD: var_A0 = CStr()
  loc_10CE7BE: If (var_A0 = "Browse") Then
  loc_10CE7C1:   Exit Sub
  loc_10CE7C2: End If
  loc_10CE7DF: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_10CE7E2:   Exit Sub
  loc_10CE7E3: End If
  loc_10CE7F4: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_10CE816:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10CE850:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_10CE872:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10CE888:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CE891:         Set var_114 = Me.FGrid
  loc_10CE8AC:       Else
  loc_10CE8BF:         Me.FGrid.Rows = 1
  loc_10CE8DC:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_10CE8E4:         Set var_114 = Me.FGrid
  loc_10CE913:         Me.FGrid.FixedRows = 1
  loc_10CE91B:       End If
  loc_10CE929:       Set var_8C = Me.Txt
  loc_10CE92F:       Call 0.Method_FGrid_UnknownEvent_D0 (CInt(4), var_114, vbNullString, FGrid.DispID_10000)
  loc_10CE968:       For var_118 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_118 'Integer
  loc_10CE972:         var_B0 = CVar(CLng(var_86)) 'Long
  loc_10CE99C:         var_134 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10CE9AD:         Set var_8C = Me.Txt
  loc_10CE9B3:         Call 0.Method_FGrid_UnknownEvent_D0 (CInt(4), var_114, var_A0, var_134, CVar(CLng(&HB)))
  loc_10CE9BB:         var_B0 = var_D0
  loc_10CE9CE:         var_12C = CStr((Val(var_A0) + var_134))
  loc_10CE9DC:         Set var_124 = Me.Txt
  loc_10CE9E2:         Call 0.Method_FGrid_UnknownEvent_D0 (CInt(4), var_128, var_12C)
  loc_10CE9EA:         var_128.Text = 1
  loc_10CEA0B:       Next var_118 'Integer
  loc_10CEA10:     End If
  loc_10CEA13:   Else
  loc_10CEA34:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_10CEA44:   End If
  loc_10CEA48:   Set var_8C = Me.FGrid
  loc_10CEA59: End If
  loc_10CEA59: Exit Sub
  loc_10CEA5A: ' Referenced from: 10CE798
  loc_10CEA60: Call 0.Method_arg_50 (var_A0)
  loc_10CEA75: Proc_183_57_104AA84(var_A0, "FGrid_KeyUp")
  loc_10CEA81: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBDEC8
  'Data Table: 487AD4
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EBDE36: On Error Goto loc_EBDE9F
  loc_EBDE3F: Me.MoveFirst
  loc_EBDE59: var_8C = "SearchCode='" & MyValue
  loc_EBDE69: Me.Find var_8C & "'", 0, 1
  loc_EBDE91: Proc_5_0_110649C(&HFF, Me, global_72)
  loc_EBDE99: Call Proc_190_31_153B30C(0)
  loc_EBDE9E: Exit Sub
  loc_EBDE9F: ' Referenced from: EBDE36
  loc_EBDEA5: Call 0.Method_arg_50 (var_8C)
  loc_EBDEBA: Proc_183_57_104AA84(var_8C, "SEARCHBACK")
  loc_EBDEC6: Exit Sub
End Sub

Public Sub Proc_190_27_13391C4
  'Data Table: 487AD4
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_D8 As String
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_13389FC: On Error Goto loc_133919A
  loc_1338A12: Me.FGrid.Left = CVar(CDbl(525))
  loc_1338A2D: Me.FGrid.Top = CVar(CDbl(1925))
  loc_1338A48: Me.FGrid.Width = CVar(CDbl(16400))
  loc_1338A5E: Set var_A8 = Me.Txt
  loc_1338A64: Call 0.Method_Proc_190_27_13391C40 (CInt(2), var_AC)
  loc_1338A83: Me.DGParty.Left = CVar(var_AC.Left)
  loc_1338A9F: Set var_B4 = Me.Txt
  loc_1338AA5: Call 0.Method_Proc_190_27_13391C40 (CInt(2), var_B8)
  loc_1338AC0: Set var_A8 = Me.Txt
  loc_1338AC6: Call 0.Method_Proc_190_27_13391C40 (CInt(2), var_AC)
  loc_1338ADA: var_94 = CVar((var_AC.Top + var_B8.Height)) 'Single
  loc_1338AE9: Me.DGParty.Top = CVar(var_AC.Left)
  loc_1338B09: Set var_A8 = Me.Txt
  loc_1338B0F: Call 0.Method_Proc_190_27_13391C40 (CInt(5), var_AC)
  loc_1338B2E: Me.DGVType.Left = CVar(var_AC.Left)
  loc_1338B4A: Set var_B4 = Me.Txt
  loc_1338B50: Call 0.Method_Proc_190_27_13391C40 (CInt(5), var_B8)
  loc_1338B6B: Set var_A8 = Me.Txt
  loc_1338B71: Call 0.Method_Proc_190_27_13391C40 (CInt(5), var_AC)
  loc_1338B85: var_94 = CVar((var_AC.Top + var_B8.Height)) 'Single
  loc_1338B94: Me.DGVType.Top = CVar(var_AC.Left)
  loc_1338BB9: Me.DGParty.Height = CVar(CDbl(5640))
  loc_1338BC5: Set var_C4 = Me.FGrid
  loc_1338BD6: var_D8 = CStr(CLng(var_C4.BackColor))
  loc_1338BDC: global_52 = var_D8
  loc_1338BF2: var_C4.Cols = &HF
  loc_1338BFA: var_94 = CVar(CLng(0)) 'Long
  loc_1338BFF: var_E8 = &HFA
  loc_1338C0B: LateIdCallSt
  loc_1338C13: var_94 = 0
  loc_1338C1F: var_E8 = CVar(CLng(1)) 'Long
  loc_1338C24: var_108 = "TDS DOCID"
  loc_1338C2D: LateIdCallSt
  loc_1338C38: var_94 = CVar(CLng(1)) 'Long
  loc_1338C3D: var_E8 = 0
  loc_1338C49: LateIdCallSt
  loc_1338C51: var_94 = 0
  loc_1338C5D: var_E8 = CVar(CLng(2)) 'Long
  loc_1338C62: var_108 = "FTDSVSno"
  loc_1338C6B: LateIdCallSt
  loc_1338C76: var_94 = CVar(CLng(2)) 'Long
  loc_1338C7B: var_E8 = 0
  loc_1338C87: LateIdCallSt
  loc_1338C8F: var_94 = 0
  loc_1338C9B: var_E8 = CVar(CLng(3)) 'Long
  loc_1338CA0: var_108 = "Vr.Type"
  loc_1338CA9: LateIdCallSt
  loc_1338CB4: var_94 = CVar(CLng(3)) 'Long
  loc_1338CBF: var_E8 = CVar(CInt(1)) 'Integer
  loc_1338CC6: LateIdCallSt
  loc_1338CD1: var_94 = CVar(CLng(3)) 'Long
  loc_1338CDC: var_E8 = CVar(CInt(1)) 'Integer
  loc_1338CE3: LateIdCallSt
  loc_1338CEE: var_94 = CVar(CLng(3)) 'Long
  loc_1338CF3: var_E8 = &H384
  loc_1338CFF: LateIdCallSt
  loc_1338D07: var_94 = 0
  loc_1338D13: var_E8 = CVar(CLng(4)) 'Long
  loc_1338D18: var_108 = "Vr.No."
  loc_1338D21: LateIdCallSt
  loc_1338D2C: var_94 = CVar(CLng(4)) 'Long
  loc_1338D37: var_E8 = CVar(CInt(7)) 'Integer
  loc_1338D3E: LateIdCallSt
  loc_1338D49: var_94 = CVar(CLng(4)) 'Long
  loc_1338D54: var_E8 = CVar(CInt(7)) 'Integer
  loc_1338D5B: LateIdCallSt
  loc_1338D66: var_94 = CVar(CLng(4)) 'Long
  loc_1338D6B: var_E8 = &H352
  loc_1338D77: LateIdCallSt
  loc_1338D7F: var_94 = 0
  loc_1338D8B: var_E8 = CVar(CLng(5)) 'Long
  loc_1338D90: var_108 = "S.No"
  loc_1338D99: LateIdCallSt
  loc_1338DA4: var_94 = CVar(CLng(5)) 'Long
  loc_1338DAF: var_E8 = CVar(CInt(7)) 'Integer
  loc_1338DB6: LateIdCallSt
  loc_1338DC1: var_94 = CVar(CLng(5)) 'Long
  loc_1338DCC: var_E8 = CVar(CInt(7)) 'Integer
  loc_1338DD3: LateIdCallSt
  loc_1338DDE: var_94 = CVar(CLng(5)) 'Long
  loc_1338DE3: var_E8 = &H258
  loc_1338DEF: LateIdCallSt
  loc_1338DF7: var_94 = 0
  loc_1338E03: var_E8 = CVar(CLng(6)) 'Long
  loc_1338E08: var_108 = "Date"
  loc_1338E11: LateIdCallSt
  loc_1338E1C: var_94 = CVar(CLng(6)) 'Long
  loc_1338E27: var_E8 = CVar(CInt(1)) 'Integer
  loc_1338E2E: LateIdCallSt
  loc_1338E39: var_94 = CVar(CLng(6)) 'Long
  loc_1338E44: var_E8 = CVar(CInt(1)) 'Integer
  loc_1338E4B: LateIdCallSt
  loc_1338E56: var_94 = CVar(CLng(6)) 'Long
  loc_1338E5B: var_E8 = &H3B6
  loc_1338E67: LateIdCallSt
  loc_1338E72: var_94 = CVar(CLng(7)) 'Long
  loc_1338E77: var_E8 = 0
  loc_1338E83: LateIdCallSt
  loc_1338E8B: var_94 = 0
  loc_1338E97: var_E8 = CVar(CLng(8)) 'Long
  loc_1338E9C: var_108 = "A/C Name"
  loc_1338EA5: LateIdCallSt
  loc_1338EB0: var_94 = CVar(CLng(8)) 'Long
  loc_1338EBB: var_E8 = CVar(CInt(1)) 'Integer
  loc_1338EC2: LateIdCallSt
  loc_1338ECD: var_94 = CVar(CLng(8)) 'Long
  loc_1338ED8: var_E8 = CVar(CInt(1)) 'Integer
  loc_1338EDF: LateIdCallSt
  loc_1338EEA: var_94 = CVar(CLng(8)) 'Long
  loc_1338EEF: var_E8 = &HDAC
  loc_1338EFB: LateIdCallSt
  loc_1338F06: var_94 = CVar(CLng(9)) 'Long
  loc_1338F0B: var_E8 = 0
  loc_1338F17: LateIdCallSt
  loc_1338F1F: var_94 = 0
  loc_1338F2B: var_E8 = CVar(CLng(9)) 'Long
  loc_1338F30: var_108 = "On Amount"
  loc_1338F39: LateIdCallSt
  loc_1338F44: var_94 = CVar(CLng(9)) 'Long
  loc_1338F4F: var_E8 = CVar(CInt(7)) 'Integer
  loc_1338F56: LateIdCallSt
  loc_1338F61: var_94 = CVar(CLng(9)) 'Long
  loc_1338F6C: var_E8 = CVar(CInt(7)) 'Integer
  loc_1338F73: LateIdCallSt
  loc_1338F7E: var_94 = CVar(CLng(9)) 'Long
  loc_1338F83: var_E8 = &H4B0
  loc_1338F8F: LateIdCallSt
  loc_1338F97: var_94 = 0
  loc_1338FA3: var_E8 = CVar(CLng(&HA)) 'Long
  loc_1338FA8: var_108 = "T.D.S. %"
  loc_1338FB1: LateIdCallSt
  loc_1338FBC: var_94 = CVar(CLng(&HA)) 'Long
  loc_1338FC7: var_E8 = CVar(CInt(7)) 'Integer
  loc_1338FCE: LateIdCallSt
  loc_1338FD9: var_94 = CVar(CLng(&HA)) 'Long
  loc_1338FE4: var_E8 = CVar(CInt(7)) 'Integer
  loc_1338FEB: LateIdCallSt
  loc_1338FF6: var_94 = CVar(CLng(&HA)) 'Long
  loc_1338FFB: var_E8 = &H3E8
  loc_1339007: LateIdCallSt
  loc_133900F: var_94 = 0
  loc_133901B: var_E8 = CVar(CLng(&HB)) 'Long
  loc_1339020: var_108 = "T.D.S.Amt"
  loc_1339029: LateIdCallSt
  loc_1339034: var_94 = CVar(CLng(&HB)) 'Long
  loc_133903F: var_E8 = CVar(CInt(7)) 'Integer
  loc_1339046: LateIdCallSt
  loc_1339051: var_94 = CVar(CLng(&HB)) 'Long
  loc_133905C: var_E8 = CVar(CInt(7)) 'Integer
  loc_1339063: LateIdCallSt
  loc_133906E: var_94 = CVar(CLng(&HB)) 'Long
  loc_1339073: var_E8 = &H3E8
  loc_133907F: LateIdCallSt
  loc_1339087: var_94 = 0
  loc_1339093: var_E8 = CVar(CLng(&HC)) 'Long
  loc_1339098: var_108 = "Certi.No."
  loc_13390A1: LateIdCallSt
  loc_13390AC: var_94 = CVar(CLng(&HC)) 'Long
  loc_13390B7: var_E8 = CVar(CInt(1)) 'Integer
  loc_13390BE: LateIdCallSt
  loc_13390C9: var_94 = CVar(CLng(&HC)) 'Long
  loc_13390D4: var_E8 = CVar(CInt(1)) 'Integer
  loc_13390DB: LateIdCallSt
  loc_13390E6: var_94 = CVar(CLng(&HC)) 'Long
  loc_13390EB: var_E8 = &H3E8
  loc_13390F7: LateIdCallSt
  loc_13390FF: var_94 = 0
  loc_133910B: var_E8 = CVar(CLng(&HD)) 'Long
  loc_1339110: var_108 = "Certi.Date"
  loc_1339119: LateIdCallSt
  loc_1339124: var_94 = CVar(CLng(&HD)) 'Long
  loc_133912F: var_E8 = CVar(CInt(1)) 'Integer
  loc_1339136: LateIdCallSt
  loc_1339141: var_94 = CVar(CLng(&HD)) 'Long
  loc_133914C: var_E8 = CVar(CInt(1)) 'Integer
  loc_1339153: LateIdCallSt
  loc_133915E: var_94 = CVar(CLng(&HD)) 'Long
  loc_1339163: var_E8 = &H3E8
  loc_133916F: LateIdCallSt
  loc_133917A: var_94 = CVar(CLng(&HE)) 'Long
  loc_133917F: var_E8 = 0
  loc_133918B: LateIdCallSt
  loc_1339195: Set var_C4 = Nothing 
  loc_1339199: Exit Sub
  loc_133919A: ' Referenced from: 13389FC
  loc_13391A0: Call 0.Method_arg_50 (var_D8, var_C4, var_E8, var_94, var_C4, var_E8, var_94, var_C4)
  loc_13391B5: Proc_183_57_104AA84(var_D8, "Ini_Grid", var_E8, var_94, var_C4)
  loc_13391C1: Exit Sub
  loc_13391C2: GoTo loc_133E6FB
End Sub

Public Sub Proc_190_28_F176E8
  'Data Table: 487AD4
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F175FE: Set var_8C = Me.Txt
  loc_F17604: Call 0.Method_Proc_190_28_F176E8C (var_8E, var_86)
  loc_F17614: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1762A:   Set var_8C = Me.Txt
  loc_F17630:   Call 0.Method_Proc_190_28_F176E80 (CInt(var_86), var_98)
  loc_F17638:   var_98.Text = vbNullString
  loc_F17654:   Set var_8C = Me.Txt
  loc_F1765A:   Call 0.Method_Proc_190_28_F176E80 (CInt(var_86), var_98)
  loc_F17662:   var_98.Tag = vbNullString
  loc_F17671: Next var_92 'Byte
  loc_F1768A: Me.FGrid.Rows = 1
  loc_F176A7: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F176AF: Set var_98 = Me.FGrid
  loc_F176DE: Me.FGrid.FixedRows = 1
  loc_F176E6: Exit Sub
End Sub

Public Sub Proc_190_29_E9B5D8(arg_C) 'E9B5D8
  'Data Table: 487AD4
  Dim var_98 As TextBox
  loc_E9B55E: Set var_8C = Me.Txt
  loc_E9B564: Call 0.Method_Proc_190_29_E9B5D8C (var_8E, var_86)
  loc_E9B574: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9B58A:   Set var_8C = Me.Txt
  loc_E9B590:   Call 0.Method_Proc_190_29_E9B5D80 (CInt(var_86), var_98)
  loc_E9B598:   var_98.Enabled = arg_C
  loc_E9B5A7: Next var_92 'Byte
  loc_E9B5BA: Set var_8C = Me.Txt
  loc_E9B5C0: Call 0.Method_Proc_190_29_E9B5D80 (CInt(4), var_98)
  loc_E9B5C8: var_98.Enabled = False
  loc_E9B5D4: Exit Sub
End Sub

Public Sub Proc_190_30_E84478
  'Data Table: 487AD4
  loc_E84424: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_E84436:   Me.DGParty.Visible = False
  loc_E8443E: End If
  loc_E8445A: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_E8446C:   Me.DGVType.Visible = False
  loc_E84474: End If
  loc_E84474: Exit Sub
End Sub

Public Sub Proc_190_31_153B30C
  'Data Table: 487AD4
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_A8 As Variant
  Dim var_BC As String
  Dim var_C0 As Variant
  Dim var_C4 As TextBox
  Dim var_8A As Integer
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim unk_487AE7 As Connection15
  Dim var_88 As Recordset15
  Dim var_138 As Variant
  Dim var_114 As Variant
  Dim var_148 As Variant
  Dim var_124 As Variant
  loc_153A350: On Error Goto loc_153B2E1
  loc_153A36A: If (Me.RecordCount > 0) Then
  loc_153A379:   Me.btsadd.Visible = False
  loc_153A3BC:   Me.LblVPrefix.Caption = CStr(Me.Fields.Item("v_Prefix").Value)
  loc_153A40C:   Set var_C0 = Me.Txt
  loc_153A412:   Call 0.Method_Proc_190_31_153B30C0 (CInt(6), var_C4)
  loc_153A41A:   var_C4.Text = CStr(Me.Fields.Item("DocID").Value)
  loc_153A46C:   Set var_C0 = Me.Txt
  loc_153A472:   Call 0.Method_Proc_190_31_153B30C0 (CInt(5), var_C4)
  loc_153A47A:   var_C4.Tag = CStr(Me.Fields.Item("ChalType").Value)
  loc_153A4CC:   Set var_C0 = Me.Txt
  loc_153A4D2:   Call 0.Method_Proc_190_31_153B30C0 (CInt(5), var_C4)
  loc_153A4DA:   var_C4.Text = CStr(Me.Fields.Item("Description").Value)
  loc_153A52C:   Set var_C0 = Me.Txt
  loc_153A532:   Call 0.Method_Proc_190_31_153B30C0 (CInt(0), var_C4)
  loc_153A53A:   var_C4.Text = CStr(Me.Fields.Item("ChalNo").Value)
  loc_153A58C:   Set var_C0 = Me.Txt
  loc_153A592:   Call 0.Method_Proc_190_31_153B30C0 (CInt(1), var_C4)
  loc_153A59A:   var_C4.Text = CStr(Me.Fields.Item("ChalDate").Value)
  loc_153A5EC:   Set var_C0 = Me.Txt
  loc_153A5F2:   Call 0.Method_Proc_190_31_153B30C0 (CInt(2), var_C4)
  loc_153A5FA:   var_C4.Tag = CStr(Me.Fields.Item("BankCode").Value)
  loc_153A64C:   Set var_C0 = Me.Txt
  loc_153A652:   Call 0.Method_Proc_190_31_153B30C0 (CInt(2), var_C4)
  loc_153A65A:   var_C4.Text = CStr(Me.Fields.Item("BankAcName").Value)
  loc_153A6AC:   Set var_C0 = Me.Txt
  loc_153A6B2:   Call 0.Method_Proc_190_31_153B30C0 (CInt(3), var_C4)
  loc_153A6BA:   var_C4.Text = CStr(Me.Fields.Item("MonthNo").Value)
  loc_153A70C:   Set var_C0 = Me.Txt
  loc_153A712:   Call 0.Method_Proc_190_31_153B30C0 (CInt(4), var_C4)
  loc_153A71A:   var_C4.Text = CStr(Me.Fields.Item("TDSAmt").Value)
  loc_153A769:   Set var_C0 = Me.Txt
  loc_153A76F:   Call 0.Method_Proc_190_31_153B30C0 (CInt(9), var_C4)
  loc_153A777:   var_C4.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("BankName")))
  loc_153A7BD:   If Not(IsNull(CVar(Me.Fields.Item("Chq_Date")))) Then
  loc_153A7DD:     var_A8 = Me.Fields.Item("Chq_Date")
  loc_153A7FC:     Set var_C0 = Me.Txt
  loc_153A802:     Call 0.Method_Proc_190_31_153B30C0 (CInt(7), var_C4)
  loc_153A80A:     var_C4.Text = CStr(var_A8.Value)
  loc_153A823:   Else
  loc_153A831:     Set var_94 = Me.Txt
  loc_153A837:     Call 0.Method_Proc_190_31_153B30C0 (CInt(7), var_A8)
  loc_153A83F:     var_A8.Text = vbNullString
  loc_153A84B:   End If
  loc_153A884:   Set var_C0 = Me.Txt
  loc_153A88A:   Call 0.Method_Proc_190_31_153B30C0 (CInt(8), var_C4)
  loc_153A892:   var_C4.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("Chq_No")))
  loc_153A8B5:   Me.FGrid.Redraw = False
  loc_153A8D0:   Me.FGrid.Rows = 1
  loc_153A8DA:   var_8A = 1
  loc_153A8EA:   var_D4 = "Select TDSCHAL1.*,SUBGROUP.NAME AS ACNAME,LEDGERTDS.DOCID AS LDOCID,LEDGERTDS.V_SNO AS LV_SNO,LEDGERTDS.V_DATE AS LV_DATE From (TDSCHAL1 LEFT Join SUBGROUP on SUBGROUP.SUBCODE=TDSCHAL1.ACCODE) LEFT JOIN LEDGERTDS ON (TDSCHAL1.TDSVSno=LEDGERTDS.TDSV_SNo) AND (TDSCHAL1.TDSDocId=LEDGERTDS.TDSDocId) WHERE TDSCHAL1.DOCID='"
  loc_153A933:   unk_487AE7.Execute CStr(var_D4 & Me.Fields.Item("DocID").Value & "' ORDER BY VSNO"), var_124, -1
  loc_153A93E:   Set var_88 = var_C0
  loc_153A9FB:   var_188 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), var_88.Fields) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_153AA40:   Me.LblUser.Caption = CStr(var_8A & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_188)))
  loc_153AB1B:   var_188 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_153AB60:   Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_153AB98:   ' Referenced from: 153B21F
  loc_153ABA7:   If Not(var_88.EOF) Then
  loc_153ABAA:     var_A4 = vbNullString
  loc_153ABB4:     Set var_94 = Me.FGrid
  loc_153ABC9:     Set var_1E8 = Me.FGrid
  loc_153ABD0:     var_D4 = CVar(CLng(var_8A)) 'Long
  loc_153ABD8:     var_114 = CVar(CLng(0)) 'Long
  loc_153AC08:     var_E4 = CVar(CStr(var_88.Fields.Item("VSno").Value)) 'String
  loc_153AC0F:     LateIdCallSt
  loc_153AC5E:     var_E4 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("TDSDocId")), CVar(CLng(1)), CVar(CLng(var_8A)), var_1E8, var_E4)) 'String
  loc_153AC65:     LateIdCallSt
  loc_153ACAE:     Proc_183_3_E7D1C8(var_E4, CVar(var_88.Fields.Item("TDSVSno")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1E8)
  loc_153ACBE:     LateIdCallSt
  loc_153AD2A:     var_148 = CVar(CStr(Mid(CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("LDocID")), var_1E8, CVar(CStr(CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("LDocID")), var_1E8, CVar(CStr(var_E4)), var_E4)))), CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("LDocID")), var_1E8, CVar(CStr(var_E4)), var_E4)))), 4, 5))) 'String
  loc_153AD31:     LateIdCallSt
  loc_153AD74:     var_BC = Proc_183_2_E5A304(CVar(var_88.Fields.Item("LDocID")), var_1E8, var_148, CVar(CLng(3)), CVar(CLng(var_8A)))
  loc_153AD7B:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_153AD83:     var_138 = CVar(CLng(4)) 'Long
  loc_153AD95:     var_E4 = CVar(var_BC) 'String
  loc_153ADAB:     LateIdCallSt
  loc_153ADFD:     Proc_183_3_E7D1C8(var_E4, CVar(var_88.Fields.Item("LV_SNO")), CVar(CLng(5)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(Mid(var_E4, &HE, 8))))
  loc_153AE06:     var_104 = CVar(CStr(var_E4)) 'String
  loc_153AE0D:     LateIdCallSt
  loc_153AE50:     If Not(IsNull(CVar(var_88.Fields.Item("LV_Date")))) Then
  loc_153AE57:       var_D4 = CVar(CLng(var_8A)) 'Long
  loc_153AE5F:       var_114 = CVar(CLng(6)) 'Long
  loc_153AE8F:       var_E4 = CVar(CStr(var_88.Fields.Item("LV_Date").Value)) 'String
  loc_153AE96:       LateIdCallSt
  loc_153AEAC:     End If
  loc_153AEB0:     var_D4 = CVar(CLng(var_8A)) 'Long
  loc_153AEB8:     var_114 = CVar(CLng(7)) 'Long
  loc_153AEE8:     var_E4 = CVar(CStr(var_88.Fields.Item("AcCode").Value)) 'String
  loc_153AEEF:     LateIdCallSt
  loc_153AF09:     var_D4 = CVar(CLng(var_8A)) 'Long
  loc_153AF11:     var_114 = CVar(CLng(8)) 'Long
  loc_153AF41:     var_E4 = CVar(CStr(var_88.Fields.Item("AcName").Value)) 'String
  loc_153AF48:     LateIdCallSt
  loc_153AF7E:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_153AF86:     var_138 = CVar(CLng(9)) 'Long
  loc_153AFB3:     var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amt")), "0.00"))) 'String
  loc_153AFBA:     LateIdCallSt
  loc_153AFF0:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_153AFF8:     var_138 = CVar(CLng(&HA)) 'Long
  loc_153B025:     var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TDS")), "0.0000"))) 'String
  loc_153B02C:     LateIdCallSt
  loc_153B062:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_153B09E:     LateIdCallSt
  loc_153B0ED:     var_E4 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("CertiNo")), CVar(CLng(&HC)), CVar(CLng(var_8A)), var_1E8, CVar(CStr(Format(CVar(var_88.Fields.Item("TDSAmt")), "0.00"))), 1, 1)) 'String
  loc_153B0F4:     LateIdCallSt
  loc_153B13F:     var_E4 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("TDSCODE")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_1E8, var_E4, CVar(CLng(&HB)))) 'String
  loc_153B146:     LateIdCallSt
  loc_153B187:     If Not(IsNull(CVar(var_88.Fields.Item("CertiDate")))) Then
  loc_153B18E:       var_D4 = CVar(CLng(var_8A)) 'Long
  loc_153B196:       var_114 = CVar(CLng(&HD)) 'Long
  loc_153B1C6:       var_E4 = CVar(CStr(var_88.Fields.Item("CertiDate").Value)) 'String
  loc_153B1CD:       LateIdCallSt
  loc_153B1E6:     Else
  loc_153B1EA:       var_A4 = CVar(CLng(var_8A)) 'Long
  loc_153B1F2:       var_F4 = CVar(CLng(&HD)) 'Long
  loc_153B1F7:       var_138 = vbNullString
  loc_153B200:       LateIdCallSt
  loc_153B208:     End If
  loc_153B20A:     Set var_1E8 = Nothing 
  loc_153B214:     var_8A = (var_8A + 1)
  loc_153B21A:     var_88.MoveNext
  loc_153B21F:     GoTo loc_153AB98
  loc_153B222:   End If
  loc_153B235:   Me.FGrid.FixedRows = 1
  loc_153B24B:   Me.FGrid.Redraw = True
  loc_153B259:   If (var_8A = 1) Then
  loc_153B26F:     Me.FGrid.Rows = 1
  loc_153B28C:     var_E4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_153B294:     Set var_A8 = Me.FGrid
  loc_153B2B0:     var_A4 = 1
  loc_153B2C3:     Me.FGrid.FixedRows = var_A4
  loc_153B2CB:   End If
  loc_153B2CE: Else
  loc_153B2CE:   Call Proc_190_28_F176E8(FGrid.DispID_10000, var_E4, var_8A, var_1E8, var_138, var_F4, var_A4)
  loc_153B2D3: End If
  loc_153B2D3: Call Proc_190_30_E84478(var_1E8, var_E4, var_114)
  loc_153B2DD: Set var_88 = Nothing
  loc_153B2E0: Exit Sub
  loc_153B2E1: ' Referenced from: 153A350
  loc_153B2E7: Call 0.Method_arg_50 (var_BC, var_D4)
  loc_153B2FC: Proc_183_57_104AA84(var_BC, "MoveRec")
  loc_153B308: Exit Sub
End Sub

Public Sub Proc_190_32_138A788
  'Data Table: 487AD4
  Dim var_BC As Variant
  Dim var_A0 As Variant
  Dim var_8A As Integer
  Dim var_DC As Variant
  Dim var_11C As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_AC As String
  Dim unk_487AE7 As Connection15
  Dim var_88 As Recordset15
  Dim var_A4 As Variant
  Dim var_1DC As Double
  Dim var_1D0 As TextBox
  loc_1389EEC: On Error Goto loc_138A75F
  loc_1389EFA: Set var_A0 = Me.Txt
  loc_1389F00: Call 0.Method_Proc_190_32_138A7880 (CInt(3))
  loc_1389F29: If (Proc_183_19_E8DAFC(var_A4, "Month & Year") = 0) Then
  loc_1389F2C:   Exit Sub
  loc_1389F2D: End If
  loc_1389F3C: Me.FGrid.Redraw = False
  loc_1389F57: Me.FGrid.Rows = 1
  loc_1389F61: var_8A = 1
  loc_1389F6F: Set var_A0 = Me.Txt
  loc_1389F75: Call 0.Method_Proc_190_32_138A7880 (CInt(3), var_A4)
  loc_1389FA6: var_FC = ("01/" + Trim(CVar(var_A4)))
  loc_1389FAC: var_10C = CDate(CDate(var_FC))
  loc_1389FBD: var_94 = CDate(Format(var_10C, "DD/MMM/YYYY"))
  loc_1389FE6: var_DC = DateAdd("M", CDbl(1), var_94)
  loc_1389FF0: var_9C = CDate(var_DC)
  loc_1389FFE: var_9C = CDate((var_9C - CDbl(1)))
  loc_138A00E: var_CC = "Select LEDGERtds.*,SUBGROUP.NAME AS ACNAME From LEDGERTDS Left Join SUBGROUP On SUBGROUP.SUBCODE=LEDGERTDS.TDSDRCODE Where (TDSPOST='' OR TDSPOST IS NULL) AND V_DATE BETWEEN "
  loc_138A01E: Proc_183_7_EB0C44(var_DC, var_94, var_CC, var_1BC, -1, var_A0, var_9C)
  loc_138A03E: Proc_183_7_EB0C44(var_10C, var_9C, var_9C & var_DC & " AND ", var_94)
  loc_138A066: var_AC = CStr(1 & var_10C & " AND LEDGERtds.LOGSITE_cODE='" & CVar(MemVar_1F92078) & "' Order by TDSDOCID,TDSV_SNO")
  loc_138A070: unk_487AE7.Execute var_AC, 1, var_8A
  loc_138A07B: Set var_88 = var_A0
  loc_138A099: ' Referenced from: 138A6A2
  loc_138A0A8: If Not(var_88.EOF) Then
  loc_138A0AB:   var_BC = vbNullString
  loc_138A0B5:   Set var_A0 = Me.FGrid
  loc_138A0CA:   Set var_1C4 = Me.FGrid
  loc_138A0D1:   var_BC = CVar(CLng(var_8A)) 'Long
  loc_138A0D9:   var_11C = CVar(CLng(0)) 'Long
  loc_138A0E3:   var_DC = CVar(CStr(var_8A)) 'String
  loc_138A0EA:   LateIdCallSt
  loc_138A12E:   var_EC = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("TDSDocId")), CVar(CLng(1)), CVar(CLng(var_8A)), var_1C4, CVar(var_88.Fields.Item("TDSDocId")))) 'String
  loc_138A135:   LateIdCallSt
  loc_138A17E:   Proc_183_3_E7D1C8(var_EC, CVar(var_88.Fields.Item("TDSV_Sno")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1C4, var_EC)
  loc_138A187:   var_FC = CVar(CStr(var_EC)) 'String
  loc_138A18E:   LateIdCallSt
  loc_138A1C2:   var_11C = CVar(CLng(var_8A)) 'Long
  loc_138A1CA:   var_15C = CVar(CLng(3)) 'Long
  loc_138A1EC:   var_10C = CVar(CStr(Mid(CVar(var_88.Fields.Item("DocID")), 4, 5))) 'String
  loc_138A1F3:   LateIdCallSt
  loc_138A229:   var_11C = CVar(CLng(var_8A)) 'Long
  loc_138A231:   var_15C = CVar(CLng(4)) 'Long
  loc_138A253:   var_10C = CVar(CStr(Mid(CVar(var_88.Fields.Item("DocID")), &HE, 8))) 'String
  loc_138A25A:   LateIdCallSt
  loc_138A274:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_138A27C:   var_14C = CVar(CLng(5)) 'Long
  loc_138A2AC:   var_EC = CVar(CStr(var_88.Fields.Item("V_SNo").Value)) 'String
  loc_138A2B3:   LateIdCallSt
  loc_138A2CD:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_138A2D5:   var_14C = CVar(CLng(6)) 'Long
  loc_138A305:   var_EC = CVar(CStr(var_88.Fields.Item("V_DATE").Value)) 'String
  loc_138A30C:   LateIdCallSt
  loc_138A326:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_138A32E:   var_14C = CVar(CLng(7)) 'Long
  loc_138A35E:   var_EC = CVar(CStr(var_88.Fields.Item("TDSDRCODE").Value)) 'String
  loc_138A365:   LateIdCallSt
  loc_138A37F:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_138A387:   var_14C = CVar(CLng(8)) 'Long
  loc_138A3B7:   var_EC = CVar(CStr(var_88.Fields.Item("AcName").Value)) 'String
  loc_138A3BE:   LateIdCallSt
  loc_138A3F4:   var_11C = CVar(CLng(var_8A)) 'Long
  loc_138A3FC:   var_15C = CVar(CLng(9)) 'Long
  loc_138A429:   var_10C = CVar(CStr(Format(CVar(var_88.Fields.Item("ONAmt")), "0.00"))) 'String
  loc_138A430:   LateIdCallSt
  loc_138A466:   var_11C = CVar(CLng(var_8A)) 'Long
  loc_138A46E:   var_15C = CVar(CLng(&HA)) 'Long
  loc_138A49B:   var_10C = CVar(CStr(Format(CVar(var_88.Fields.Item("TDS")), "0.0000"))) 'String
  loc_138A4A2:   LateIdCallSt
  loc_138A4D8:   var_11C = CVar(CLng(var_8A)) 'Long
  loc_138A4E0:   var_15C = CVar(CLng(&HB)) 'Long
  loc_138A50D:   var_10C = CVar(CStr(Format(CVar(var_88.Fields.Item("TDSAmt")), "0.00"))) 'String
  loc_138A514:   LateIdCallSt
  loc_138A52E:   var_BC = CVar(CLng(var_8A)) 'Long
  loc_138A536:   var_11C = CVar(CLng(&HC)) 'Long
  loc_138A53B:   var_15C = vbNullString
  loc_138A544:   LateIdCallSt
  loc_138A550:   var_BC = CVar(CLng(var_8A)) 'Long
  loc_138A558:   var_11C = CVar(CLng(&HD)) 'Long
  loc_138A566:   LateIdCallSt
  loc_138A599:   var_A4 = var_88.Fields.Item("TDSCODE")
  loc_138A5B1:   LateIdCallSt
  loc_138A5DB:   Set var_A0 = Me.Txt
  loc_138A5E1:   Call 0.Method_Proc_190_32_138A7880 (CInt(4), var_A4, var_AC, Nothing, CVar(CStr(var_A4.Value)), CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_138A5E9:   var_1C4 = var_A4.Text
  loc_138A5F6:   var_1DC = Val(var_AC)
  loc_138A62A:   var_11C = "0.00"
  loc_138A63F:   var_EC = (CVar(var_1DC) + var_88.Fields.Item("TDSAmt").Value)
  loc_138A65D:   Set var_1CC = Me.Txt
  loc_138A663:   Call 0.Method_Proc_190_32_138A7880 (CInt(4), var_1D0, CStr(Format(CVar(CStr(var_A4.Value)), var_11C)), 1, 1, var_1DC)
  loc_138A66B:   var_1D0.Text = vbNullString
  loc_138A697:   var_8A = (var_8A + 1)
  loc_138A69D:   var_88.MoveNext
  loc_138A6A2:   GoTo loc_138A099
  loc_138A6A5: End If
  loc_138A6AB: If (var_8A = 1) Then
  loc_138A6C1:   Me.FGrid.Rows = 2
  loc_138A6DE:   var_EC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_138A6E6:   Set var_A4 = Me.FGrid
  loc_138A715:   Me.FGrid.FixedRows = 1
  loc_138A720: Else
  loc_138A733:   Me.FGrid.FixedRows = 1
  loc_138A73B: End If
  loc_138A73B: var_BC = True
  loc_138A749: Me.FGrid.Redraw = var_BC
  loc_138A751: Call Proc_190_30_E84478(FGrid.DispID_10000, var_EC, var_8A, var_11C)
  loc_138A75B: Set var_88 = Nothing
  loc_138A75E: Exit Sub
  loc_138A75F: ' Referenced from: 1389EEC
  loc_138A765: Call 0.Method_arg_50 (var_AC, var_BC, var_1C4)
  loc_138A77A: Proc_183_57_104AA84(var_AC, "FillDetail")
  loc_138A786: Exit Sub
End Sub

Public Sub Proc_190_33_F6471C
  'Data Table: 487AD4
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_487AE7 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  loc_F64614: Set var_9C = Me.TopCtrl1
  loc_F6461A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_F64622: var_B0 = CStr()
  loc_F64633: If (var_B0 = "Add") Then
  loc_F64663:   Set var_9C = Me.Txt
  loc_F64669:   Call 0.Method_Proc_190_33_F6471C0 (CInt(6), var_B4, var_B0, "Select Count(*) From TDSCHAL Where DOCID='", var_AC, -1)
  loc_F6468A:   unk_487AE7.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_F6469A:    = var_D4.Item()
  loc_F646A2:    = var_E8.Value
  loc_F646CF:   If (var_B4.Text.Fields > 0) Then
  loc_F646D8:     Call 0.Method_arg_50 (var_B0)
  loc_F646F9:     MsgBox("Duplicate Challan No.", &H40, CVar(var_B0), var_118, var_128)
  loc_F6470E:     Proc_190_33_F6471C = &HFF
  loc_F64714:   End If
  loc_F64714: End If
  loc_F64714: Proc_190_33_F6471C = 
End Sub

Public Sub Proc_190_34_1198280
  'Data Table: 487AD4
  Dim var_A4 As Variant
  Dim var_A8 As String
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_148 As Variant
  Dim var_188 As Variant
  Dim var_1C8 As Variant
  Dim var_8C As Recordset15
  Dim var_A0 As Variant
  Dim var_C8 As Variant
  Dim var_94 As Long
  Dim var_22C As Long
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_288 As Variant
  Dim var_2A8 As Variant
  loc_1197EDE: On Error Goto loc_1198251
  loc_1197EEF: Set var_A0 = Me.Txt
  loc_1197EF5: Call 0.Method_Proc_190_34_11982800 (CInt(5), var_A4)
  loc_1197F05: var_90 = var_A4.Tag
  loc_1197F23: var_A8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VP.V_Type='" & var_90
  loc_1197F38: Set var_A0 = Me.Txt
  loc_1197F3E: Call 0.Method_Proc_190_34_11982800 (CInt(1), var_A4, CVar(var_A8 & "' And VP.Date_From<="))
  loc_1197F4D: Proc_183_7_EB0C44(var_C8, CVar(var_A4), var_22C)
  loc_1197F55: var_E8 = -1 & var_C8 
  loc_1197F84: var_188 = var_E8 & " AND VT.SITE_CODE='" & CVar(MemVar_1F92070) & "' AND VT.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' AND VP.SITE_CODE='" 
  loc_1197FB5: Me.Txt.Execute CStr(var_188 & CVar(MemVar_1F92070) & "' AND VP.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'  Order By VP.Date_From DESC"), var_230, 
  loc_1197FC0: Set var_8C = var_230
  loc_1198004: If (var_8C.RecordCount > 0) Then
  loc_1198043:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1198046:     GoTo loc_11980C7
  loc_1198049:   End If
  loc_1198074:   var_98 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_119809B:   var_A4 = var_8C.Fields.Item("start_srl_no")
  loc_11980B0:   var_C8 = (var_A4.Value + 1)
  loc_11980B6:   var_94 = CLng(var_C8)
  loc_11980C7:   ' Referenced from: 1198046
  loc_11980C7: End If
  loc_11980F1: var_D8 = (CVar(MemVar_1F9206C & Proc_183_15_EAC900(MemVar_1F92070, 2)) + Trim(var_90))
  loc_1198115: var_148 = (5 - Len(Trim(CVar(var_90))))
  loc_1198126: var_188 = (CVar(Proc_183_15_EAC900(MemVar_1F92070, 2) & "' And VP.Date_From<=") + Space(CLng(CVar(var_90) & " AND VT.SITE_CODE='" & CVar(MemVar_1F92070) & "' AND VT.LOGSITE_CODE='")))
  loc_119813D: var_1C8 = (var_188 + Trim(var_98))
  loc_1198161: var_248 = (5 - Len(Trim(CVar(var_98))))
  loc_1198172: var_268 = (var_188 & CVar(MemVar_1F92070) & "' AND VP.LOGSITE_CODE='" + Space(CLng(var_248)))
  loc_1198188: var_278 = Space((8 - Len(CStr(var_94))))
  loc_1198190: var_288 = (var_268 + var_278)
  loc_119819C: var_2A8 = (var_288 + CVar(CStr(var_94)))
  loc_11981A1: var_9C = CStr(var_2A8)
  loc_11981DD: Me.LblVPrefix.Caption = var_98
  loc_11981F3: Set var_A0 = Me.Txt
  loc_11981F9: Call 0.Method_Proc_190_34_11982800 (CInt(6), var_A4)
  loc_1198201: var_A4.Text = var_9C
  loc_1198212: var_A8 = CStr(var_94)
  loc_1198220: Set var_A0 = Me.Txt
  loc_1198226: Call 0.Method_Proc_190_34_11982800 (CInt(0), var_A4)
  loc_119822E: var_A4.Text = var_A8
  loc_1198240: var_88 = var_9C
  loc_1198248: Set var_8C = Nothing
  loc_119824B: Proc_190_34_1198280 = var_94
  loc_1198251: ' Referenced from: 1197EDE
  loc_1198257: Call 0.Method_arg_50 (var_A8)
  loc_119826C: Proc_183_57_104AA84(var_A8)
  loc_1198278: Proc_190_34_1198280 = "VoucherNo"
End Sub
