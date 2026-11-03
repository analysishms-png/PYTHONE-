VERSION 5.00
Begin VB.Form TelCallEntry
  Caption = "Call Code Master"
  BackColor = &HADDAC0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MaxButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClipControls = 0   'False
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 9165
  ClientHeight = 3660
  LockControls = -1  'True
  Begin MaskEdBox txtTime
    Left = 1845
    Top = 1305
    Width = 570
    Height = 255
    TabIndex = 3
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 7695
    Top = 3480
    Width = 1890
    Height = 255
    Visible = 0   'False
    TabIndex = 25
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox txtDRS
    BackColor = &HFFFFFF&
    Left = 5295
    Top = 780
    Width = 2925
    Height = 255
    Visible = 0   'False
    TabIndex = 23
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGExtension
    Left = 5940
    Top = 1485
    Width = 2955
    Height = 1995
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin CommandButton Cmd
    Caption = "E&xit"
    Index = 0
    BackColor = &H68D5F4&
    Left = 4425
    Top = 3015
    Width = 1335
    Height = 525
    TabIndex = 22
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton Cmd
    Caption = "&Save "
    Index = 1
    BackColor = &H68D5F4&
    Left = 3090
    Top = 3015
    Width = 1335
    Height = 525
    TabIndex = 21
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 2385
    Width = 900
    Height = 255
    TabIndex = 8
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 1845
    Top = 2655
    Width = 900
    Height = 255
    TabIndex = 9
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 1845
    Top = 1575
    Width = 1350
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 1845
    Top = 1845
    Width = 2295
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 2115
    Width = 900
    Height = 255
    TabIndex = 7
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    BackColor = &HFFFFFF&
    Left = 150
    Top = 3420
    Width = 1890
    Height = 255
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGHelp
    Left = 6330
    Top = 1305
    Width = 2550
    Height = 1995
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 1035
    Width = 1200
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 1845
    Top = 765
    Width = 1200
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 1845
    Top = 495
    Width = 2295
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 2070
    Top = 3015
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 27
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9165
    Height = 510
    Visible = 0   'False
    TabIndex = 28
  End
  Begin Label LblName
    Caption = "V Type"
    Index = 0
    ForeColor = &H0&
    Left = 6075
    Top = 3480
    Width = 660
    Height = 240
    Visible = 0   'False
    TabIndex = 26
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label lblNo
    Caption = "Room Number"
    ForeColor = &H0&
    Left = 3135
    Top = 780
    Width = 2040
    Height = 240
    Visible = 0   'False
    TabIndex = 24
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Call Information"
    Index = 5
    ForeColor = &H0&
    Left = 255
    Top = 2115
    Width = 1365
    Height = 240
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Call Rate"
    Index = 3
    ForeColor = &H0&
    Left = 255
    Top = 2385
    Width = 825
    Height = 240
    TabIndex = 19
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Call Amount"
    Index = 4
    ForeColor = &H0&
    Left = 240
    Top = 2655
    Width = 1065
    Height = 240
    TabIndex = 18
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Call Time"
    Index = 3
    ForeColor = &H0&
    Left = 255
    Top = 1305
    Width = 855
    Height = 240
    TabIndex = 17
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Duration"
    Index = 1
    ForeColor = &H0&
    Left = 255
    Top = 1575
    Width = 750
    Height = 240
    TabIndex = 16
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Dialled Number"
    Index = 1
    ForeColor = &H0&
    Left = 240
    Top = 1845
    Width = 1410
    Height = 240
    TabIndex = 15
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Call Date"
    Index = 0
    ForeColor = &H0&
    Left = 240
    Top = 1035
    Width = 825
    Height = 240
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Extension"
    Index = 2
    ForeColor = &H0&
    Left = 255
    Top = 765
    Width = 870
    Height = 240
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Pnt No"
    Index = 2
    ForeColor = &H0&
    Left = 270
    Top = 495
    Width = 600
    Height = 240
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "TelCallEntry"

Private global_68 As Variant

Private Sub DGExtension_UnknownEvent_9 'F47A64
  'Data Table: 4481F8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4795B: Me.DGExtension.Visible = False
  loc_F4797A: If (Me.RecordCount > 0) Then
  loc_F479B9:   Set var_B4 = Me.Txt
  loc_F479BF:   Call 0.Method_DGExtension_UnknownEvent_90 (CInt(2), var_B8)
  loc_F479C7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F479FA:   var_B0 = Me.Fields.Item("Extension")
  loc_F47A19:   Set var_B4 = Me.Txt
  loc_F47A1F:   Call 0.Method_DGExtension_UnknownEvent_90 (CInt(2), var_B8)
  loc_F47A27:   var_B8.Text = CStr(var_B0.Value)
  loc_F47A3D: End If
  loc_F47A48: Set var_A8 = Me.Txt
  loc_F47A4E: Call 0.Method_DGExtension_UnknownEvent_90 (CInt(2))
  loc_F47A56: var_B0.SetFocus
  loc_F47A62: Exit Sub
End Sub

Private Sub txtTime_UnknownEvent_0 'E8994C
  'Data Table: 4481F8
  loc_E898F3: Me.txtTime.SelStart = 0
  loc_E89920: Me.txtTime.SelLength = CVar(Len(CStr(Me.txtTime.Text)))
  loc_E8993C: Proc_6_74_E226B0(Me.txtTime)
  loc_E89944: Call Proc_95_19_EB985C()
  loc_E89949: Exit Sub
End Sub

Private Sub txtTime_UnknownEvent_1 'E5F938
  'Data Table: 4481F8
  loc_E5F8F6: Proc_6_73_E22704(Me.txtTime)
  loc_E5F911: Me.txtTime.SelStart = 0
  loc_E5F92C: Me.txtTime.SelLength = 0
  loc_E5F934: Exit Sub
End Sub

Private Sub txtTime_UnknownEvent_8 '1058020
  'Data Table: 4481F8
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_C4 As Variant
  Dim arg_DFF As Integer
  loc_1057DD0: var_C4 = Trim(CVar(CStr(Me.txtTime.Text)))
  loc_1057DD9: var_D4 = CVar(CStr(var_C4)) 'String
  loc_1057DE7: Me.txtTime.Text = var_D4
  loc_1057E26: If (CDbl(Val(CStr(Me.txtTime.Text))) < CDbl(0)) Then
  loc_1057E4A:   MsgBox("Time can not be Negative", &H40, "Information", var_C4, var_D4)
  loc_1057E6A:   Me.txtTime.Text = vbNullString
  loc_1057E74:   Cancel = &HFF
  loc_1057E77:   Exit Sub
  loc_1057E78: End If
  loc_1057EAD: var_8E = CByte(InStr(1, Trim(CVar(CStr(Me.txtTime.Text))), ":", 0)) 'Byte
  loc_1057EDB: var_C4 = CVar((CInt(var_8E) - 1)) 'Integer
  loc_1057F23: var_C4 = CVar((CInt(var_8E) + 1)) 'Integer
  loc_1057F35: var_D4 = Mid(CVar(CStr(Me.txtTime.Text)), 4, Trim(CVar(CStr(Me.txtTime.Text))))
  loc_1057F3E: var_8C = CStr(var_D4)
  loc_1057F5C: If (CDbl(Val(CStr(Mid(CVar(CStr(Me.txtTime.Text)), 1, Trim(CVar(CStr(Me.txtTime.Text))))))) > CDbl(&H18)) Then
  loc_1057F80:   MsgBox("Time can not be more than 24 Hrs", &H40, "Information", Trim(CVar(CStr(Me.txtTime.Text))), var_D4)
  loc_1057FA0:   Me.txtTime.Text = "00:00"
  loc_1057FA8:   Call txtTime_UnknownEvent_0()
  loc_1057FAF:   Cancel = &HFF
  loc_1057FB2:   Exit Sub
  loc_1057FB3: End If
  loc_1057FC0: If (CDbl(Val(var_8C)) > CDbl(&H3B)) Then
  loc_1057FE9:   MsgBox("Time can not be more than 59 Minute", &H40, &H40, "Information", var_D4)
  loc_1058009:   Me.txtTime.Text = "00:00"
  loc_1058011:   Call txtTime_UnknownEvent_0()
  loc_1058018:   Cancel = &HFF
  loc_105801B:   Exit Sub
  loc_105801C: End If
  loc_105801C: Exit Sub
  loc_105801D: arg_DFF = Cancel
End Sub

Private Sub txtTime_UnknownEvent_B 'E68FF4
  'Data Table: 4481F8
  loc_E68FB5: If ((CLng(Cancel) = &HD) Or (CLng(Cancel) = &H28)) Then
  loc_E68FC6:   Proc_303_0_FB9B68("	")
  loc_E68FCE: End If
  loc_E68FD8: If (CLng(Cancel) = &H26) Then
  loc_E68FE3:   var_88 = "+{Tab}"
  loc_E68FE9:   Proc_303_0_FB9B68("	", 0)
  loc_E68FF1: End If
  loc_E68FF1: Exit Sub
End Sub

Private Sub Form_Load() 'F668A4
  'Data Table: 4481F8
  Dim unk_448225 As Connection15
  Dim unk_448207 As Connection15
  Dim var_AC As Variant
  loc_F6677C: On Error Goto loc_F66860
  loc_F66791: Set var_88 = Me
  loc_F66797: Proc_6_23_DFBA28(var_88, 4100)
  loc_F6679F: Call Proc_95_20_ED50FC(9300)
  loc_F667BA: unk_448225.Execute "SELECT Code,CAST(Extension AS VARCHAR) AS EXT FROM TelExt ORDER BY Extension", var_AC, -1
  loc_F667E2: CVarUnk
  loc_F667E7: VerifyVarObj
  loc_F667ED: Set var_88 = Me.DGExtension
  loc_F667F3: LateIdStAd
  loc_F66817: unk_448207.Execute "SELECT * FROM EPABX_OUT", var_AC, -1
  loc_F66828: Set global_52 = var_88
  loc_F66836: Call Proc_95_18_F8CA2C(var_88, var_88)
  loc_F66844: Call 0.Method_arg_160 (var_88, var_88)
  loc_F66852: Call 0.Method_arg_164 (var_88)
  loc_F6685A: Call Proc_95_17_F7B68C(var_88)
  loc_F6685F: Exit Sub
  loc_F66860: ' Referenced from: F6677C
  loc_F66868: Set var_88 = Err()
  loc_F6686E: Call 0.Method_arg_2C (var_B4)
  loc_F6688F: MsgBox(CVar(var_B4), &H40, "Information", var_E4, var_104)
  loc_F668A2: Exit Sub
  loc_F668A3: Exit Sub
End Sub

Private Sub Form_Resize() 'DFC5BC
  'Data Table: 4481F8
  loc_DFC5B8: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E29DF4
  'Data Table: 4481F8
  loc_E29DD7: Set global_52 = Nothing
  loc_E29DE9: Set global_56 = Nothing
  loc_E29DF0: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29BCC
  'Data Table: 4481F8
  loc_E29BA4: On Error Goto loc_E29BC3
  loc_E29BBB: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E29BC3: ' Referenced from: E29BA4
  loc_E29BC3: Proc_6_60_E62BC4(Shift)
  loc_E29BC8: Exit Sub
  loc_E29BC9: var_92 = 0
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1041670
  'Data Table: 4481F8
  Dim var_8C As TextBox
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim Me As Recordset15
  Dim var_B4 As String
  Dim var_94 As Fields15
  loc_1041433: Set var_88 = Me.Txt
  loc_1041439: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1041441: var_8C.SelStart = 0
  loc_104145A: Set var_88 = Me.Txt
  loc_1041460: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1041468: var_90 = var_8C.Text
  loc_104147B: Set var_94 = Me.Txt
  loc_1041481: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_1041489: var_98.SelLength = Len(var_90)
  loc_10414A6: Set var_88 = Me.Txt
  loc_10414AC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10414BA: Proc_6_74_E226B0(var_8C)
  loc_10414C6: Call Proc_95_19_EB985C(var_8C)
  loc_10414CE: var_9A = Index
  loc_10414D9: If (var_9A = CInt(2)) Then
  loc_10414F3:   If (Me.RecordCount > 0) Then
  loc_1041501:     Set var_8C = Me.FGPoint
  loc_1041519:     Proc_6_137_1193554(Me.DGExtension, global_56, Index)
  loc_1041527:   End If
  loc_1041575:   Set var_88 = Me.Txt
  loc_104157B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_90)
  loc_1041583:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_104159B:   If (var_8C Or (var_90 = vbNullString)) Then
  loc_104159E:     Exit Sub
  loc_104159F:   End If
  loc_10415AC:   Set var_88 = Me.Txt
  loc_10415B2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10415BA:   var_90 = var_8C.Text
  loc_10415CC:   var_B4 = "EXT"
  loc_1041607:   If CBool(CVar(var_90) <> Me.Fields.Item(var_B4).Value) Then
  loc_1041610:     Me.MoveFirst
  loc_1041633:     Set var_88 = Me.Txt
  loc_1041639:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_90, "Ext='")
  loc_1041641:     0 = var_8C.Text
  loc_104165A:     Me.Find 1 & var_90 & "'", var_B4, var_9A
  loc_104166F:   End If
  loc_104166F: End If
  loc_104166F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '103417C
  'Data Table: 4481F8
  Dim Me As Recordset15
  loc_1033F56: If (CLng(Shift) = &H1B) Then
  loc_1033F59:   Call Proc_95_19_EB985C()
  loc_1033F5E:   Exit Sub
  loc_1033F5F: End If
  loc_1033F6D: If (KeyCode = CInt(2)) Then
  loc_1033F8D:   Set var_9C = Me.FGPoint
  loc_1033F98:   Set var_98 = Nothing
  loc_1033FC6:   Proc_6_69_134A198(Me.DGExtension, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_1034035:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_103403C:     Set var_98 = Me.DGExtension
  loc_103405B:     Proc_6_138_106D6F8(var_98, global_56, KeyCode, Me.FGPoint, 1)
  loc_1034069:   End If
  loc_1034069: End If
  loc_10340A4: If ((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGExtension.Visible) = 0)) Then
  loc_10340C3:   If (CBool(Me.DGExtension.Visible) = 0) Then
  loc_10340E4:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_10340F3:       Call Txt_Validate(CInt(9))
  loc_103412F:       If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_130) = 6) Then
  loc_1034132:         Call Proc_95_16_12E8FA8(0, var_98, var_9C)
  loc_1034137:       End If
  loc_1034137:       Exit Sub
  loc_1034138:     End If
  loc_103414D:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1034156:       Proc_6_75_E527CC(Shift, arg_14)
  loc_103415B:     End If
  loc_103416C:     If ((CLng(Shift) = &H26) And (KeyCode <> 0)) Then
  loc_1034175:       Proc_6_76_E52838(Shift, arg_14)
  loc_103417A:     End If
  loc_103417A:   End If
  loc_103417A: End If
  loc_103417A: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FF2550
  'Data Table: 4481F8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As Variant
  Dim var_94 As Variant
  loc_FF2362: Proc_6_133_E7EF78(var_94)
  loc_FF236B: arg_10 = CInt(var_94)
  loc_FF2374: Proc_6_58_E054C0(arg_10, arg_10)
  loc_FF237C: var_96 = KeyAscii
  loc_FF2387: If (var_96 = CInt(2)) Then
  loc_FF23A6:   If (CBool(Me.DGExtension.Visible) = &HFF) Then
  loc_FF23B8:     var_A0 = "Ext"
  loc_FF23D3:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56, arg_10)
  loc_FF23ED:     Set var_A8 = Me.FGPoint
  loc_FF2405:     Proc_6_138_106D6F8(Me.DGExtension, global_56, KeyAscii, var_A8)
  loc_FF2413:   End If
  loc_FF241F:   Me.lblNo.Visible = False
  loc_FF2433:   Me.txtDRS.Visible = False
  loc_FF243E: Else
  loc_FF2446:   If (var_96 = CInt(8)) Then
  loc_FF2453:     Set var_9C = Me.Txt
  loc_FF2459:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_FF2474:     Proc_6_42_129A86C(var_A8, arg_10, 5, 2)
  loc_FF2483:   Else
  loc_FF248B:     If (var_96 = CInt(9)) Then
  loc_FF2498:       Set var_9C = Me.Txt
  loc_FF249E:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_FF24B9:       Proc_6_42_129A86C(var_A8, arg_10, 5)
  loc_FF24C8:     Else
  loc_FF24D0:       If (var_96 = CInt(5)) Then
  loc_FF24DD:         Set var_9C = Me.Txt
  loc_FF24E3:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 2)
  loc_FF24FE:         Proc_6_42_129A86C(var_A8, arg_10, 8)
  loc_FF250D:       Else
  loc_FF2515:         If (var_96 = CInt(6)) Then
  loc_FF2522:           Set var_9C = Me.Txt
  loc_FF2528:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_FF2543:           Proc_6_42_129A86C(var_A8, arg_10, &HF)
  loc_FF254F:         End If
  loc_FF254F:       End If
  loc_FF254F:     End If
  loc_FF254F:   End If
  loc_FF254F: End If
  loc_FF254F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46C9C
  'Data Table: 4481F8
  loc_E46C7A: Set var_88 = Me.Txt
  loc_E46C80: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46C8E: Proc_6_73_E22704(var_8C)
  loc_E46C9A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1278AC0
  'Data Table: 4481F8
  Dim var_86 As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim var_CC As String
  Dim unk_448225 As Connection15
  Dim var_90 As Recordset15
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_124 As Variant
  Dim var_12C As Variant
  Dim var_120 As Variant
  loc_127852B: var_86 = Cancel
  loc_1278536: If (var_86 = CInt(2)) Then
  loc_1278546:   Set var_94 = Me.Txt
  loc_127854C:   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1278554:   var_9C = var_98.Text
  loc_127856B:   If (var_9C = vbNullString) Then
  loc_1278570:     arg_10 = &HFF
  loc_1278573:     Exit Sub
  loc_1278574:   End If
  loc_1278581:   var_CC = "Select TelExt.Code , TelExt.ShopNo & RoomMast.Code & Depart.Name as Name,TelExt.ShopNo as ShopNo, RoomMast.Code as RoomNo, Depart.Name as DepartNo,RoomNo as RoomID,ShopNo as ShopID,DepCode as DepID FROM (TelExt LEFT JOIN RoomMast ON TelExt.RoomNo=RoomMast.Code) LEFT JOIN Depart ON TelExt.DepCode=Depart.Code  WHERE TelExt.Extension="
  loc_1278594:   Set var_94 = Me.Txt
  loc_127859A:   Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_9C, var_CC, var_120)
  loc_12785A2:   -1 = var_98.Text
  loc_12785B0:   Proc_6_39_E7C810(var_BC, CVar(var_9C), var_124)
  loc_12785CF:   unk_448225.Execute CStr(arg_10 & var_BC & " ORDER BY TelExt.Description"), var_86, 
  loc_12785DA:   Set var_90 = var_124
  loc_127860A:   If (var_90.RecordCount > 0) Then
  loc_1278649:     Me.txtDRS.Text = Proc_6_38_E68A98(var_90.Fields.Item("Name").Value)
  loc_1278660:     var_8C = vbNullString
  loc_12786DF:     If CBool(Not IsNull(CVar(var_90.Fields.Item("RoomNo"))) Or (var_90.Fields.Item("RoomNo").Value = vbNullString)) Then
  loc_12786E5:       var_8C = "Room Number"
  loc_12786F5:       Me.txtDRS.Tag = vbNullString
  loc_1278732:       Me.txtDRS.Tag = Proc_6_38_E68A98(CVar(var_90.Fields.Item("roomid")))
  loc_127875F:       global_68 = CVar(Me.txtDRS.Tag)
  loc_127876F:       global_60 = vbNullString
  loc_1278779:       global_64 = vbNullString
  loc_1278780:     Else
  loc_12787FC:       If CBool(Not IsNull(CVar(var_90.Fields.Item("departno"))) Or (var_90.Fields.Item("departno").Value = vbNullString)) Then
  loc_1278802:         var_8C = "Department Number"
  loc_1278812:         Me.txtDRS.Tag = vbNullString
  loc_127884F:         Me.txtDRS.Tag = Proc_6_38_E68A98(CVar(var_90.Fields.Item("depid")))
  loc_1278879:         global_60 = Me.txtDRS.Tag
  loc_127888B:         global_68 = vbNullString
  loc_1278895:         global_64 = vbNullString
  loc_127889C:       Else
  loc_12788E2:         var_12C = var_90.Fields.Item("ShopNo")
  loc_1278918:         If CBool(Not IsNull(CVar(var_90.Fields.Item("ShopNo"))) Or (var_12C.Value = vbNullString)) Then
  loc_127891E:           var_8C = "Shop Desc."
  loc_127893B:           var_98 = var_90.Fields.Item("Name")
  loc_1278956:           global_64 = Proc_6_38_E68A98(var_98.Value)
  loc_127896D:           global_60 = vbNullString
  loc_1278979:           global_68 = vbNullString
  loc_127897D:         End If
  loc_127897D:       End If
  loc_127897D:     End If
  loc_127897D:   End If
  loc_127898A:   Me.lblNo.Caption = var_8C
  loc_127899E:   Me.lblNo.Visible = True
  loc_12789B2:   Me.txtDRS.Visible = True
  loc_12789BD: Else
  loc_12789C5:   If (var_86 = CInt(3)) Then
  loc_12789D5:     Set var_94 = Me.Txt
  loc_12789DB:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1278A01:     Set var_124 = Me.Txt
  loc_1278A07:     Call 0.Method_Txt_Validate0 (Cancel, var_12C)
  loc_1278A0F:     var_12C.Text = Proc_6_34_14ECF20(var_98.Text)
  loc_1278A29:   Else
  loc_1278A31:     If Not (var_86 = CInt(9)) Then
  loc_1278A3C:       If (var_86 = CInt(8)) Then
  loc_1278A3F:       End If
  loc_1278A4C:       Set var_94 = Me.Txt
  loc_1278A52:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1278A93:       Set var_124 = Me.Txt
  loc_1278A99:       Call 0.Method_Txt_Validate0 (Cancel, var_12C, CStr(Format(CVar(var_98.Text), "0.00")))
  loc_1278AA1:       var_12C.Text = 1
  loc_1278ABD:     End If
  loc_1278ABD:   End If
  loc_1278ABD: End If
  loc_1278ABD: Exit Sub
  loc_1278ABE: GoTo loc_1270528
End Sub

Private Sub FGPoint_UnknownEvent_9 'E2F954
  'Data Table: 4481F8
  loc_E2F948: If (CBool(Me.DGExtension.Visible) = &HFF) Then
  loc_E2F94B:   Call DGExtension_UnknownEvent_9()
  loc_E2F950: End If
  loc_E2F950: Exit Sub
End Sub

Private Sub Cmd_Click(Index As Integer) 'E53C60
  'Data Table: 4481F8
  Dim var_86 As Integer
  loc_E53C27: var_86 = Index
  loc_E53C32: If (var_86 = CInt(1)) Then
  loc_E53C35:   Call Proc_95_16_12E8FA8(var_86)
  loc_E53C3D: Else
  loc_E53C45:   If (var_86 = CInt(0)) Then
  loc_E53C55:     Me.Global.Unload Me
  loc_E53C5D:   End If
  loc_E53C5D: End If
  loc_E53C5D: Exit Sub
End Sub

Public Sub Proc_95_16_12E8FA8
  'Data Table: 4481F8
  Dim unk_448207 As Connection15
  Dim var_86 As Integer
  Dim var_9C As String
  Dim var_A8 As String
  Dim var_94 As TextBox
  Dim var_BC As Variant
  Dim var_100 As Variant
  Dim var_CC As TextBox
  Dim var_1E8 As TextBox
  Dim var_23C As Variant
  Dim var_2A8 As TextBox
  Dim var_2FC As Variant
  Dim var_304 As TextBox
  Dim var_360 As TextBox
  Dim var_3BC As TextBox
  Dim var_3F0 As Variant
  Dim var_418 As TextBox
  loc_12E89E0: On Error Goto loc_12E8F2F
  loc_12E89EE: Set var_90 = Me.Txt
  loc_12E89F4: Call 0.Method_Proc_95_16_12E8FA80 (CInt(1))
  loc_12E8A1D: If (Proc_183_19_E8DAFC(var_94, "PNT Number") = 0) Then
  loc_12E8A27:   Call Txt_GotFocus(CInt(1))
  loc_12E8A2C:   Exit Sub
  loc_12E8A2D: End If
  loc_12E8A38: Set var_90 = Me.Txt
  loc_12E8A3E: Call 0.Method_Proc_95_16_12E8FA80 (CInt(2), var_94)
  loc_12E8A67: If (Proc_183_19_E8DAFC(var_94, "Extension") = 0) Then
  loc_12E8A71:   Call Txt_GotFocus(CInt(2))
  loc_12E8A76:   Exit Sub
  loc_12E8A77: End If
  loc_12E8A82: Set var_90 = Me.Txt
  loc_12E8A88: Call 0.Method_Proc_95_16_12E8FA80 (CInt(3), var_94)
  loc_12E8AB1: If (Proc_183_19_E8DAFC(var_94, "Call Date") = 0) Then
  loc_12E8ABB:   Call Txt_GotFocus(CInt(3))
  loc_12E8AC0:   Exit Sub
  loc_12E8AC1: End If
  loc_12E8ACC: Set var_90 = Me.Txt
  loc_12E8AD2: Call 0.Method_Proc_95_16_12E8FA80 (CInt(5), var_94)
  loc_12E8AFB: If (Proc_183_19_E8DAFC(var_94, "Duration") = 0) Then
  loc_12E8B05:   Call Txt_GotFocus(CInt(5))
  loc_12E8B0A:   Exit Sub
  loc_12E8B0B: End If
  loc_12E8B16: Set var_90 = Me.Txt
  loc_12E8B1C: Call 0.Method_Proc_95_16_12E8FA80 (CInt(6), var_94)
  loc_12E8B45: If (Proc_183_19_E8DAFC(var_94, "Dialled Number") = 0) Then
  loc_12E8B4F:   Call Txt_GotFocus(CInt(6))
  loc_12E8B54:   Exit Sub
  loc_12E8B55: End If
  loc_12E8B60: Set var_90 = Me.Txt
  loc_12E8B66: Call 0.Method_Proc_95_16_12E8FA80 (CInt(7), var_94)
  loc_12E8B8F: If (Proc_183_19_E8DAFC(var_94, "Call Information") = 0) Then
  loc_12E8B99:   Call Txt_GotFocus(CInt(7))
  loc_12E8B9E:   Exit Sub
  loc_12E8B9F: End If
  loc_12E8BA7: If (MemVar_1F921D0 = "Y") Then
  loc_12E8BB3:   unk_448207.BeginTrans var_A4
  loc_12E8BD2:   var_9C = CStr(var_8C)
  loc_12E8BD6:   var_A8 = "INSERT INTO EPABX_OUT (ID,V_TYPE,PNT_NO,Extension,RoomNo,ShopNo,DepCode,CALL_START_DATE,CALL_START_TIME,CALL_DURATION,DIALED_NO,CALL_INFO,CALL_RATE,CALL_AMT) VALUES (" & var_9C
  loc_12E8BEE:   Set var_90 = Me.Txt
  loc_12E8BF4:   Call 0.Method_Proc_95_16_12E8FA80 (CInt(1), var_94, var_AC, var_A8 & ",'TLENT','", var_490)
  loc_12E8BFC:   -1 = var_94.Text
  loc_12E8C04:   var_BC = CVar(var_AC) 'String
  loc_12E8C17:   var_100 = CVar(&HFF & Proc_6_38_E68A98(var_BC, var_494) & "', ") 'String
  loc_12E8C28:   Set var_98 = Me.Txt
  loc_12E8C2E:   Call 0.Method_Proc_95_16_12E8FA80 (CInt(2), var_CC, var_D0)
  loc_12E8C36:   var_100 = var_CC.Text
  loc_12E8C44:   Proc_6_39_E7C810(var_F0, CVar(var_D0))
  loc_12E8CA6:   Set var_1E4 = Me.Txt
  loc_12E8CAC:   Call 0.Method_Proc_95_16_12E8FA80 (CInt(3), var_1E8)
  loc_12E8CC2:   Proc_6_7_F25D88(var_20C, CVar(var_1E8.Text))
  loc_12E8CD3:   var_23C = var_94 & var_F0 & ",'" & global_68 & "','" & CVar(global_64) & "','" & CVar(global_60) & "'," & var_20C & ",'" 
  loc_12E8D0F:   Set var_2A4 = Me.Txt
  loc_12E8D15:   Call 0.Method_Proc_95_16_12E8FA80 (CInt(5), var_2A8)
  loc_12E8D39:   var_2FC = var_23C & CVar(Proc_6_38_E68A98(CVar(CStr(Me.txtTime.Text)))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_2A8.Text))) & "','" 
  loc_12E8D4B:   Set var_300 = Me.Txt
  loc_12E8D51:   Call 0.Method_Proc_95_16_12E8FA80 (CInt(6), var_304)
  loc_12E8D87:   Set var_35C = Me.Txt
  loc_12E8D8D:   Call 0.Method_Proc_95_16_12E8FA80 (CInt(7), var_360)
  loc_12E8DC3:   Set var_3B8 = Me.Txt
  loc_12E8DC9:   Call 0.Method_Proc_95_16_12E8FA80 (CInt(8), var_3BC)
  loc_12E8DDF:   Proc_6_39_E7C810(var_3E0, CVar(var_3BC.Text))
  loc_12E8DE7:   var_3F0 = var_2FC & CVar(Proc_6_38_E68A98(CVar(var_304.Text))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_360.Text))) & "'," & var_3E0 
  loc_12E8E02:   Set var_414 = Me.Txt
  loc_12E8E08:   Call 0.Method_Proc_95_16_12E8FA80 (CInt(9), var_418)
  loc_12E8E1E:   Proc_6_39_E7C810(var_43C, CVar(var_418.Text))
  loc_12E8E3D:   unk_448207.Execute CStr(var_3F0 & "," & var_43C & ")"), , 
  loc_12E8EE5:   unk_448207.Execute "UPDATE [COUNTER] SET CBOUT=CBOUT+1", var_BC, -1
  loc_12E8EF6:   unk_448207.CommitTrans
  loc_12E8EFD:   var_86 = 0
  loc_12E8F00: End If
  loc_12E8F00: Call Proc_95_19_EB985C(var_86)
  loc_12E8F05: Call Proc_95_17_F7B68C(var_90)
  loc_12E8F15: Set var_90 = Me.Txt
  loc_12E8F1B: Call 0.Method_Proc_95_16_12E8FA80 (CInt(1))
  loc_12E8F23: var_94.SetFocus
  loc_12E8F2F: ' Referenced from: 12E89E0
  loc_12E8F35: If (var_86 = &HFF) Then
  loc_12E8F3E:   unk_448207.RollbackTrans
  loc_12E8F43: End If
  loc_12E8F4B: Set var_90 = Err()
  loc_12E8F51: Call 0.Method_arg_1C (var_A4)
  loc_12E8F62: If (var_A4 > 0) Then
  loc_12E8F6D:   Set var_90 = Err()
  loc_12E8F73:   Call 0.Method_arg_2C (var_9C)
  loc_12E8F94:   MsgBox(CVar(var_9C), &H40, "Information", var_F0, var_100)
  loc_12E8FA7: End If
  loc_12E8FA7: Exit Sub
End Sub

Public Sub Proc_95_17_F7B68C
  'Data Table: 4481F8
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_F7B556: Set var_8C = Me.Txt
  loc_F7B55C: Call 0.Method_Proc_95_17_F7B68CC (var_8E, var_86)
  loc_F7B56C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F7B582:   Set var_8C = Me.Txt
  loc_F7B588:   Call 0.Method_Proc_95_17_F7B68C0 (CInt(var_86), var_98)
  loc_F7B590:   var_98.Text = vbNullString
  loc_F7B59F: Next var_92 'Byte
  loc_F7B5B8: Set var_8C = Me.Txt
  loc_F7B5BE: Call 0.Method_Proc_95_17_F7B68C0 (CInt(3), var_98)
  loc_F7B5C6: var_98.Text = CStr(MemVar_1F920EC)
  loc_F7B60F: Me.txtTime.Text = CVar(CStr(Format(Now, "HH:MM")))
  loc_F7B62F: Me.lblNo.Caption = vbNullString
  loc_F7B644: Me.txtDRS.Text = vbNullString
  loc_F7B659: Me.txtDRS.Text = vbNullString
  loc_F7B66D: Me.lblNo.Visible = False
  loc_F7B681: Me.txtDRS.Visible = False
  loc_F7B689: Exit Sub
End Sub

Public Sub Proc_95_18_F8CA2C
  'Data Table: 4481F8
  Dim var_88 As Recordset15
  Dim var_AC As TextBox
  loc_F8C8D2: Set var_88 = global_52 
  loc_F8C90B: Set var_A8 = Me.Txt
  loc_F8C911: Call 0.Method_Proc_95_18_F8CA2C0 (CInt(1), var_AC)
  loc_F8C919: var_AC.MaxLength = var_88.Fields.Item("PNT_NO").DefinedSize
  loc_F8C95E: Set var_A8 = Me.Txt
  loc_F8C964: Call 0.Method_Proc_95_18_F8CA2C0 (CInt(5), var_AC)
  loc_F8C96C: var_AC.MaxLength = var_88.Fields.Item("CALL_DURATION").DefinedSize
  loc_F8C9B1: Set var_A8 = Me.Txt
  loc_F8C9B7: Call 0.Method_Proc_95_18_F8CA2C0 (CInt(6), var_AC)
  loc_F8C9BF: var_AC.MaxLength = var_88.Fields.Item("DIALED_NO").DefinedSize
  loc_F8CA04: Set var_A8 = Me.Txt
  loc_F8CA0A: Call 0.Method_Proc_95_18_F8CA2C0 (CInt(7), var_AC)
  loc_F8CA12: var_AC.MaxLength = var_88.Fields.Item("CALL_INFO").DefinedSize
  loc_F8CA24: Set var_88 = Nothing 
  loc_F8CA28: Exit Sub
  loc_F8CA29:  = 
End Sub

Public Sub Proc_95_19_EB985C
  'Data Table: 4481F8
  loc_EB97D4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EB97E6:   Me.DGHelp.Visible = False
  loc_EB97EE: End If
  loc_EB980A: If (CBool(Me.DGExtension.Visible) = &HFF) Then
  loc_EB981C:   Me.DGExtension.Visible = False
  loc_EB9824: End If
  loc_EB9840: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB9852:   Me.FGPoint.Visible = False
  loc_EB985A: End If
  loc_EB985A: Exit Sub
End Sub

Public Sub Proc_95_20_ED50FC
  'Data Table: 4481F8
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_88 As TextBox
  Dim var_BC As TextBox
  loc_ED5054: Set var_88 = Me.DGExtension
  loc_ED5065: Set var_8C = Me.Txt
  loc_ED506B: Call 0.Method_Proc_95_20_ED50FC0 (CInt(2), var_90)
  loc_ED5083: var_88.Left = CVar(var_90.Left)
  loc_ED509D: Set var_B8 = Me.Txt
  loc_ED50A3: Call 0.Method_Proc_95_20_ED50FC0 (CInt(2), var_BC)
  loc_ED50BE: Set var_8C = Me.Txt
  loc_ED50C4: Call 0.Method_Proc_95_20_ED50FC0 (CInt(2), var_90)
  loc_ED50DC: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H19))) 'Single
  loc_ED50E4: var_88.Top = CVar(var_90.Left)
  loc_ED50F6: Set var_88 = Nothing 
  loc_ED50FA: Exit Sub
End Sub
