VERSION 5.00
Begin VB.Form FrmPOSBillModificationDatewise
  Caption = "POS Bill Deletion Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  LockControls = -1  'True
  Begin CommandButton Command1
    Caption = "Serialize Bill"
    Left = 11880
    Top = 3330
    Width = 1125
    Height = 780
    Visible = 0   'False
    TabIndex = 19
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton CmdExit
    Caption = "E&xit"
    Left = 3915
    Top = 8280
    Width = 1545
    Height = 495
    TabIndex = 17
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
  Begin CommandButton CmdDelete
    Caption = "&Delete"
    Left = 2250
    Top = 8280
    Width = 1545
    Height = 495
    TabIndex = 16
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
  Begin TextBox TxtSearch
    BackColor = &HE0E0E0&
    Left = 8415
    Top = 2250
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdFill
    Caption = "&Fill"
    Left = 6075
    Top = 915
    Width = 1125
    Height = 780
    TabIndex = 4
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CheckBox Check1
    Caption = "All"
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 825
    Top = 1995
    Width = 915
    Height = 195
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 15135
    Height = 375
    Visible = 0   'False
    TabIndex = 10
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 2610
    Top = 1425
    Width = 3345
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "Tahoma"
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
    Left = 2610
    Top = 1155
    Width = 3345
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "Tahoma"
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
    Left = 2610
    Top = 885
    Width = 1635
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Tahoma"
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
    Left = 2610
    Top = 615
    Width = 1635
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid GridSel
    Left = 735
    Top = 1920
    Width = 6500
    Height = 6000
    TabIndex = 5
  End
  Begin DataGrid DGRestType
    Left = 8310
    Top = 6585
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin MSFlexGrid FGPoint
    Left = 8460
    Top = 2505
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 13
  End
  Begin DataGrid DGPayType
    Left = 7995
    Top = 6225
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin Label Label1
    Left = 780
    Top = 7920
    Width = 6360
    Height = 270
    TabIndex = 18
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
  Begin Label LblName
    Caption = "Mode Of Payment"
    Index = 3
    ForeColor = &H0&
    Left = 975
    Top = 1440
    Width = 1515
    Height = 240
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Outlet Name"
    Index = 2
    ForeColor = &H0&
    Left = 975
    Top = 1155
    Width = 1050
    Height = 240
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "From Date"
    Index = 0
    ForeColor = &H0&
    Left = 975
    Top = 615
    Width = 900
    Height = 240
    TabIndex = 7
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "To Date"
    Index = 1
    ForeColor = &H0&
    Left = 975
    Top = 870
    Width = 675
    Height = 240
    TabIndex = 6
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmPOSBillModificationDatewise"

Private global_52 As Integer
Private global_84 As Long

Private Sub CmdDelete_Click() '1140494
  'Data Table: 479FA8
  Dim var_8C As Variant
  Dim var_90 As TextBox
  Dim unk_479FBA As Connection15
  Dim var_CC As Variant
  Dim var_E0 As Field20
  Dim var_86 As Integer
  Dim var_C4 As Variant
  Dim var_120 As Variant
  Dim var_180 As Variant
  Dim var_94 As String
  loc_1140144: On Error Goto loc_1140477
  loc_1140153: Me.CmdDelete.Enabled = False
  loc_1140168: Me.Label1.Caption = "Deleting..."
  loc_114017A: Me.Label1.Refresh
  loc_11401B2: Set var_8C = Me.Txt
  loc_11401B8: Call 0.Method_CmdDelete_Click0 (CInt(2), var_90, var_94, "SELECT SHORTNAME FROM DEPART WHERE CODE='", var_C4, -1)
  loc_11401E7: unk_479FBA.Execute var_CC & var_94 & "'And Logsite_Code='" & MemVar_1F92078 & "'", 0, var_E0
  loc_11401EF: var_F0 = var_90.Tag.Fields
  loc_11401F7:  = var_CC.Item("B")
  loc_11401FF:  = var_E0.Value
  loc_114024D: unk_479FBA.BeginTrans var_FC
  loc_1140268: unk_479FBA.Execute "Delete from TempPosDel", var_C4, -1
  loc_114029C: Call Proc_217_27_11A93AC(global_60, CByte(Me.Check1.Value), var_C4)
  loc_11402CA: Call 0.Method_CmdDelete_Click0 (CInt(0), var_90, "Insert into TempPosDel(OldDocId,OldVno) Select DocId,Vno from Sale1 Where VDate>= ", var_1C0)
  loc_11402D9: Proc_6_7_F25D88(var_F0, CVar(var_90), -1)
  loc_11402EA: var_120 = var_E0 & var_F0 & " And RestCode='" 
  loc_1140302: Call 0.Method_CmdDelete_Click0 (CInt(2), var_CC, var_94)
  loc_114030A: var_120 = var_CC.Tag
  loc_114033F: unk_479FBA.Execute CStr(Me.Txt & CVar(var_94) & "' And Logsite_Code='" & CVar(MemVar_1F92078) & "' Order by Vno,VDate"), &HFF, 
  loc_1140369: Call Proc_217_26_107A1F8()
  loc_114036E: Call Proc_217_25_130BE30()
  loc_11403A4: Set var_8C = Me.Txt
  loc_11403AA: Call 0.Method_CmdDelete_Click0 (CInt(1), var_90, CVar("UPDATE VOUCHER_PREFIX SET START_SRL_NO=" & CStr(global_84) & " WHERE "))
  loc_11403B9: Proc_6_7_F25D88(var_F0, CVar(var_90), var_1C0)
  loc_11403C1: var_120 = -1 & var_F0 
  loc_11403EA: var_180 = var_120 & " BETWEEN DATE_FROM AND DATE_TO AND V_TYPE='" & CVar(Proc_6_38_E68A98(var_F0)) & "' And Logsite_Code='" & CVar(MemVar_1F92078) 
  loc_1140401: unk_479FBA.Execute CStr(var_180 & "'"), Me.Txt, 
  loc_1140433: unk_479FBA.CommitTrans
  loc_114043A: var_86 = 0
  loc_1140448: Set global_76 = Nothing
  loc_114045C: Me.Label1.Caption = "Deletion Completed."
  loc_114046E: Me.Label1.Refresh
  loc_1140476: Exit Sub
  loc_1140477: ' Referenced from: 1140144
  loc_114047D: If (var_86 = &HFF) Then
  loc_1140486:   unk_479FBA.RollbackTrans
  loc_114048B: End If
  loc_114048B: Proc_6_60_E62BC4(var_86)
  loc_1140490: Exit Sub
End Sub

Private Sub Check1_Click() 'F68BF4
  'Data Table: 479FA8
  Dim var_9C As Variant
  loc_F68AD7: If (CLng(Me.Check1.Value) = 0) Then
  loc_F68AE8:   Me.GridSel.Enabled = True
  loc_F68B0F:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F68B25:     Me.GridSel.Row = 1
  loc_F68B40:     Me.GridSel.Col = 0
  loc_F68B48:   End If
  loc_F68B4B: Else
  loc_F68B5A:   Me.GridSel.Enabled = False
  loc_F68B81:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F68B97:     Me.GridSel.Row = 0
  loc_F68BB2:     Me.GridSel.Col = 0
  loc_F68BD3:     var_9C = CVar((CLng(Me.GridSel.Rows) - 1)) 'Long
  loc_F68BE2:     Me.GridSel.RowSel = 0
  loc_F68BF1:   End If
  loc_F68BF1: End If
  loc_F68BF1: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E221C0
  'Data Table: 479FA8
  loc_E221A6: If (KeyCode = &HD) Then
  loc_E221B7:   Proc_303_0_FB9B68("	")
  loc_E221BF: End If
  loc_E221BF: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E1A824
  'Data Table: 479FA8
  loc_E1A819: Me.Global.Unload Me
  loc_E1A821: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12E10C4
  'Data Table: 479FA8
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_88 As DataGrid
  loc_12E0A10: On Error Goto loc_12E107F
  loc_12E0A1D: Set var_88 = Me.Txt
  loc_12E0A23: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12E0A31: Proc_6_74_E226B0(var_8C)
  loc_12E0A3D: Call Proc_217_28_EB95C8(var_8C)
  loc_12E0A45: var_92 = Index
  loc_12E0A50: If (var_92 = CInt(0)) Then
  loc_12E0A60:   Set var_88 = Me.Txt
  loc_12E0A66:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E0A81:   Set var_90 = Me.Txt
  loc_12E0A87:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E0A8F:   var_9C.SelLength = Len(var_8C.Text)
  loc_12E0AAF:   Set var_88 = Me.Txt
  loc_12E0AB5:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E0ACF:   Set var_90 = Me.Txt
  loc_12E0AD5:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E0ADD:   var_9C.Tag = var_8C.Text
  loc_12E0AF3: Else
  loc_12E0AFB:   If (var_92 = CInt(1)) Then
  loc_12E0B0B:     Set var_88 = Me.Txt
  loc_12E0B11:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E0B2C:     Set var_90 = Me.Txt
  loc_12E0B32:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E0B3A:     var_9C.SelLength = Len(var_8C.Text)
  loc_12E0B5A:     Set var_88 = Me.Txt
  loc_12E0B60:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E0B68:     var_98 = var_8C.Text
  loc_12E0B7A:     Set var_90 = Me.Txt
  loc_12E0B80:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E0B88:     var_9C.Tag = var_98
  loc_12E0B9E:   Else
  loc_12E0BA6:     If (var_92 = CInt(2)) Then
  loc_12E0BB7:       Set var_88 = Me.Txt
  loc_12E0BBD:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E0BDC:       Me.DGRestType.Left = CVar(var_8C.Left)
  loc_12E0BF8:       Set var_90 = Me.Txt
  loc_12E0BFE:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_9C)
  loc_12E0C19:       Set var_88 = Me.Txt
  loc_12E0C1F:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E0C37:       var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E0C46:       Me.DGRestType.Top = CVar(var_8C.Left)
  loc_12E0C67:       Me.Filter = 0
  loc_12E0C78:       Me.Filter = "RestType<>'Kitchen'"
  loc_12E0C94:       If (Me.RecordCount > 0) Then
  loc_12E0CA2:         Set var_8C = Me.FGPoint
  loc_12E0CBA:         Proc_6_137_1193554(Me.DGRestType, global_68, Index)
  loc_12E0CC8:       End If
  loc_12E0D16:       Set var_88 = Me.Txt
  loc_12E0D1C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E0D24:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E0D3C:       If (var_8C Or (var_98 = vbNullString)) Then
  loc_12E0D3F:         Exit Sub
  loc_12E0D40:       End If
  loc_12E0D4D:       Set var_88 = Me.Txt
  loc_12E0D53:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E0D5B:       var_98 = var_8C.Text
  loc_12E0D6D:       var_B0 = "Name"
  loc_12E0D84:       var_9C = Me.Fields.Item(var_B0)
  loc_12E0DA8:       If CBool(CVar(var_98) <> var_9C.Value) Then
  loc_12E0DB1:         Me.MoveFirst
  loc_12E0DD4:         Set var_88 = Me.Txt
  loc_12E0DDA:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E0DE2:         0 = var_8C.Text
  loc_12E0DFB:         Me.Find 1 & var_98 & "'", var_B0, var_92
  loc_12E0E10:       End If
  loc_12E0E23:       Me.DGRestType.Tag = CVar(CStr(Index))
  loc_12E0E31:     Else
  loc_12E0E39:       If (var_92 = CInt(3)) Then
  loc_12E0E4A:         Set var_88 = Me.Txt
  loc_12E0E50:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_12E0E6F:         Me.DGPayType.Left = CVar(var_8C.Left)
  loc_12E0E8B:         Set var_90 = Me.Txt
  loc_12E0E91:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_9C)
  loc_12E0EAC:         Set var_88 = Me.Txt
  loc_12E0EB2:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_12E0ECA:         var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E0ED9:         Me.DGPayType.Top = CVar(var_8C.Left)
  loc_12E0F02:         If (Me.RecordCount > 0) Then
  loc_12E0F10:           Set var_8C = Me.FGPoint
  loc_12E0F28:           Proc_6_137_1193554(Me.DGPayType, global_72)
  loc_12E0F36:         End If
  loc_12E0F84:         Set var_88 = Me.Txt
  loc_12E0F8A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E0F92:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E0FAA:         If (Index Or (var_98 = vbNullString)) Then
  loc_12E0FAD:           Exit Sub
  loc_12E0FAE:         End If
  loc_12E0FBB:         Set var_88 = Me.Txt
  loc_12E0FC1:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E0FC9:         var_98 = var_8C.Text
  loc_12E0FDB:         var_B0 = "Name"
  loc_12E1016:         If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_12E101F:           Me.MoveFirst
  loc_12E1042:           Set var_88 = Me.Txt
  loc_12E1048:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E1050:           0 = var_8C.Text
  loc_12E1069:           Me.Find 1 & var_98 & "'", var_B0, var_8C
  loc_12E107E:         End If
  loc_12E107E:       End If
  loc_12E107E:     End If
  loc_12E107E:   End If
  loc_12E107E: End If
  loc_12E107E: Exit Sub
  loc_12E107F: ' Referenced from: 12E0A10
  loc_12E1087: Set var_88 = Err()
  loc_12E108D: Call 0.Method_arg_2C (var_98)
  loc_12E10AE: MsgBox(CVar(var_98), &H40, "Information", var_FC, var_124)
  loc_12E10C1: Exit Sub
  loc_12E10C2: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10CBFE0
  'Data Table: 479FA8
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_10CBCF6: If (CLng(Shift) = &H1B) Then
  loc_10CBCF9:   Call Proc_217_28_EB95C8()
  loc_10CBCFE:   Exit Sub
  loc_10CBCFF: End If
  loc_10CBD02: var_88 = KeyCode
  loc_10CBD0D: If (var_88 = CInt(2)) Then
  loc_10CBD2D:   Set var_9C = Me.FGPoint
  loc_10CBD38:   Set var_98 = Nothing
  loc_10CBD66:   Proc_6_69_134A198(Me.DGRestType, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_10CBDD5:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10CBDFB:     Proc_6_138_106D6F8(Me.DGRestType, global_68, KeyCode, Me.FGPoint, 1)
  loc_10CBE09:   End If
  loc_10CBE0C: Else
  loc_10CBE14:   If (var_88 = CInt(3)) Then
  loc_10CBE34:     Set var_9C = Me.FGPoint
  loc_10CBE3F:     Set var_98 = Nothing
  loc_10CBE71:     Proc_6_69_134A198(Me.DGPayType, Me.Txt, CInt(3), global_72, Shift, 0, 1)
  loc_10CBEE0:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10CBEE7:       Set var_98 = Me.DGPayType
  loc_10CBF06:       Proc_6_138_106D6F8(var_98, global_72, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10CBF14:     End If
  loc_10CBF14:   End If
  loc_10CBF14: End If
  loc_10CBF4F: If ((CBool(Me.DGRestType.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) Then
  loc_10CBF79:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(0)) Or (KeyCode = CInt(1)))) Then
  loc_10CBF82:     Call Txt_Validate(KeyCode)
  loc_10CBF8D:     If (var_86 = &HFF) Then
  loc_10CBF90:       Exit Sub
  loc_10CBF91:     End If
  loc_10CBF97:     Proc_6_75_E527CC(Shift, arg_14, var_86, 0)
  loc_10CBF9F:   Else
  loc_10CBFB4:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10CBFBD:       Proc_6_75_E527CC(Shift, arg_14, var_98)
  loc_10CBFC5:     Else
  loc_10CBFCF:       If (CLng(Shift) = &H26) Then
  loc_10CBFD8:         Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_10CBFDD:       End If
  loc_10CBFDD:     End If
  loc_10CBFDD:   End If
  loc_10CBFDD: End If
  loc_10CBFDD: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F8E2EC
  'Data Table: 479FA8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_F8E18F: Proc_6_58_E054C0(arg_10)
  loc_F8E19A: Proc_6_133_E7EF78(var_94)
  loc_F8E1A3: arg_10 = CInt(var_94)
  loc_F8E1AC: var_96 = KeyAscii
  loc_F8E1B7: If (var_96 = CInt(2)) Then
  loc_F8E1D6:   If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_F8E203:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_F8E235:     Proc_6_138_106D6F8(Me.DGRestType, global_68, KeyAscii, Me.FGPoint)
  loc_F8E243:   End If
  loc_F8E246: Else
  loc_F8E24E:   If (var_96 = CInt(3)) Then
  loc_F8E26D:     If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F8E2A5:       Proc_6_68_129FB34(Me.DGPayType, Me.Txt, KeyAscii, global_72, arg_10)
  loc_F8E2DB:       Proc_6_138_106D6F8(Me.DGPayType, global_72, KeyAscii, Me.FGPoint, "Name")
  loc_F8E2E9:     End If
  loc_F8E2E9:   End If
  loc_F8E2E9: End If
  loc_F8E2E9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B41C
  'Data Table: 479FA8
  loc_E4B3FA: Set var_88 = Me.Txt
  loc_E4B400: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B40E: Proc_6_73_E22704(var_8C)
  loc_E4B41A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1164D70
  'Data Table: 479FA8
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_98 As TextBox
  loc_11649C0: On Error Goto loc_1164D29
  loc_11649C6: var_86 = Cancel
  loc_11649D1: If (var_86 = CInt(0)) Then
  loc_11649DE:   Set var_8C = Me.Txt
  loc_11649E4:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1164A04:   Set var_98 = Me.Txt
  loc_1164A0A:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1164A12:   var_9C.Text = Proc_6_33_1512840(var_90)
  loc_1164A28: Else
  loc_1164A30:   If (var_86 = CInt(1)) Then
  loc_1164A3D:     Set var_8C = Me.Txt
  loc_1164A43:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1164A63:     Set var_98 = Me.Txt
  loc_1164A69:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1164A71:     var_9C.Text = Proc_6_33_1512840(var_90)
  loc_1164A87:   Else
  loc_1164A8F:     If (var_86 = CInt(2)) Then
  loc_1164A9F:       Set var_8C = Me.Txt
  loc_1164AA5:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1164AC4:       If (var_90.Text <> vbNullString) Then
  loc_1164B02:         Set var_94 = Me.Txt
  loc_1164B08:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1164B10:         var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1164B43:         var_90 = Me.Fields.Item("Code")
  loc_1164B61:         Set var_94 = Me.Txt
  loc_1164B67:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1164B6F:         var_98.Tag = CStr(var_90.Value)
  loc_1164B88:       Else
  loc_1164B95:         Set var_8C = Me.Txt
  loc_1164B9B:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1164BA3:         var_90.Text = vbNullString
  loc_1164BBC:         Set var_8C = Me.Txt
  loc_1164BC2:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1164BCA:         var_90.Tag = vbNullString
  loc_1164BD6:       End If
  loc_1164BD9:     Else
  loc_1164BE1:       If (var_86 = CInt(3)) Then
  loc_1164BF1:         Set var_8C = Me.Txt
  loc_1164BF7:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1164C16:         If (var_90.Text <> vbNullString) Then
  loc_1164C54:           Set var_94 = Me.Txt
  loc_1164C5A:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1164C62:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1164C95:           var_90 = Me.Fields.Item("Code")
  loc_1164CA6:           var_A0 = CStr(var_90.Value)
  loc_1164CB3:           Set var_94 = Me.Txt
  loc_1164CB9:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1164CC1:           var_98.Tag = var_A0
  loc_1164CDA:         Else
  loc_1164CE7:           Set var_8C = Me.Txt
  loc_1164CED:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1164CF5:           var_90.Text = vbNullString
  loc_1164D0E:           Set var_8C = Me.Txt
  loc_1164D14:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1164D1C:           var_90.Tag = vbNullString
  loc_1164D28:         End If
  loc_1164D28:       End If
  loc_1164D28:     End If
  loc_1164D28:   End If
  loc_1164D28: End If
  loc_1164D28: Exit Sub
  loc_1164D29: ' Referenced from: 11649C0
  loc_1164D31: Set var_8C = Err()
  loc_1164D37: Call 0.Method_arg_2C (var_A0)
  loc_1164D58: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_1164D6B: Exit Sub
  loc_1164D6C: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A 'FD84EC
  'Data Table: 479FA8
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FD833A: If (Cancel = &HD) Then
  loc_FD834B:   Proc_303_0_FB9B68("	")
  loc_FD8353: End If
  loc_FD8372: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FD8375:   Exit Sub
  loc_FD8376: End If
  loc_FD83A0: If ((CLng(Cancel) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FD83B3:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FD83CD:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FD83E8:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD83ED:   var_D4 = 0
  loc_FD841F:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD8424:   var_19C = 0
  loc_FD845F:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FD8467:   Set var_1D0 = Me.GridSel
  loc_FD846D:   LateIdCallSt
  loc_FD84A7:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_FD84B9:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_FD84E1:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FD84E8: End If
  loc_FD84E8: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5CCB0
  'Data Table: 479FA8
  loc_E5CC8B: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5CC8E:   Exit Sub
  loc_E5CC8F: End If
  loc_E5CCA6: global_52 = CInt(CLng(Me.GridSel.Row))
  loc_E5CCAF: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1027CB8
  'Data Table: 479FA8
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1027AB9: If ((CLng(Me.GridSel.Col) <> 0) Or (global_52 = 0)) Then
  loc_1027ABC:   Exit Sub
  loc_1027ABD: End If
  loc_1027B19: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_1027B1C:   Exit Sub
  loc_1027B1D: End If
  loc_1027B4C: For var_BA = global_52 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_1027B65:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1027B80:   Me.GridSel.Col = 0
  loc_1027B98:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1027BB2:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1027BBE:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1027BC3:   var_EC = 0
  loc_1027BE6:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1027BEB:   var_180 = 0
  loc_1027C26:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_1027C2E:   Set var_A0 = Me.GridSel
  loc_1027C34:   LateIdCallSt
  loc_1027C66:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_1027C78:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_1027CA0:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_1027CAA: Next var_BA 'Integer
  loc_1027CB4: global_52 = 0
  loc_1027CB7: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_9 'F47384
  'Data Table: 479FA8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4727B: Me.DGRestType.Visible = False
  loc_F4729A: If (Me.RecordCount > 0) Then
  loc_F472D9:   Set var_B4 = Me.Txt
  loc_F472DF:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F472E7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4731A:   var_B0 = Me.Fields.Item("Code")
  loc_F47339:   Set var_B4 = Me.Txt
  loc_F4733F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F47347:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4735D: End If
  loc_F47368: Set var_A8 = Me.Txt
  loc_F4736E: Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2))
  loc_F47376: var_B0.SetFocus
  loc_F47382: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_1F 'E73888
  'Data Table: 479FA8
  loc_E73846: Proc_6_153_E91194(Me.DGRestType, arg_14)
  loc_E7385D: Set var_8C = Me.FGPoint
  loc_E73879: Proc_6_138_106D6F8(Me.DGRestType, global_68, CInt(2))
  loc_E73887: Exit Sub
End Sub

Private Sub CmdFill_Click() '118DBD4
  'Data Table: 479FA8
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As Variant
  loc_118D7F7: Set var_88 = Me.Txt
  loc_118D7FD: Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_118D826: If (Proc_6_27_EA565C(var_8C, "From Date") = 0) Then
  loc_118D829:   Exit Sub
  loc_118D82A: End If
  loc_118D838: Set var_88 = Me.Txt
  loc_118D83E: Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_118D862: Set var_90 = Me.Txt
  loc_118D868: Call 0.Method_CmdFill_Click0 (CInt(0), var_98, var_9C)
  loc_118D870: (CDate(var_8C.Text) > MemVar_1F920FC) = var_98.Text
  loc_118D891: If (var_8C Or (CDate(var_9C) < MemVar_1F920F4)) Then
  loc_118D8AD:   MsgBox("FromDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_118D8C8:   Set var_88 = Me.Txt
  loc_118D8CE:   Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_118D8D6:   var_8C.SetFocus
  loc_118D8E2:   Exit Sub
  loc_118D8E3: End If
  loc_118D8EE: Set var_88 = Me.Txt
  loc_118D8F4: Call 0.Method_CmdFill_Click0 (CInt(1), var_8C)
  loc_118D91D: If (Proc_6_27_EA565C(var_8C, "To Date") = 0) Then
  loc_118D920:   Exit Sub
  loc_118D921: End If
  loc_118D92F: Set var_88 = Me.Txt
  loc_118D935: Call 0.Method_CmdFill_Click0 (CInt(1), var_8C)
  loc_118D959: Set var_90 = Me.Txt
  loc_118D95F: Call 0.Method_CmdFill_Click0 (CInt(1), var_98, var_9C)
  loc_118D967: (CDate(var_8C.Text) > MemVar_1F920FC) = var_98.Text
  loc_118D988: If (var_8C Or (CDate(var_9C) < MemVar_1F920F4)) Then
  loc_118D9A4:   MsgBox("ToDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_118D9BF:   Set var_88 = Me.Txt
  loc_118D9C5:   Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_118D9CD:   var_8C.SetFocus
  loc_118D9D9:   Exit Sub
  loc_118D9DA: End If
  loc_118D9E8: Set var_90 = Me.Txt
  loc_118D9EE: Call 0.Method_CmdFill_Click0 (CInt(1), var_98)
  loc_118DA09: Set var_88 = Me.Txt
  loc_118DA0F: Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_118DA39: If (CDate(var_8C.Text) > CDate(var_98.Text)) Then
  loc_118DA55:   MsgBox("FromDate must be less than ToDate", &H10, var_DC, var_FC, var_11C)
  loc_118DA70:   Set var_88 = Me.Txt
  loc_118DA76:   Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_118DA7E:   var_8C.SetFocus
  loc_118DA8A:   Exit Sub
  loc_118DA8B: End If
  loc_118DA96: Set var_88 = Me.Txt
  loc_118DA9C: Call 0.Method_CmdFill_Click0 (CInt(2), var_8C)
  loc_118DAC5: If (Proc_6_27_EA565C(var_8C, "Outlet") = 0) Then
  loc_118DAC8:   Exit Sub
  loc_118DAC9: End If
  loc_118DAD4: Set var_88 = Me.Txt
  loc_118DADA: Call 0.Method_CmdFill_Click0 (CInt(3), var_8C)
  loc_118DB03: If (Proc_6_27_EA565C(var_8C, "Payment Mode") = 0) Then
  loc_118DB06:   Exit Sub
  loc_118DB07: End If
  loc_118DB13: Me.CmdFill.Enabled = False
  loc_118DB28: Me.Label1.Caption = "Processing..."
  loc_118DB3A: Me.Label1.Refresh
  loc_118DB42: Call Proc_217_22_117B210(var_8C)
  loc_118DB47: Call Proc_217_23_13A3610()
  loc_118DB5F: Me.GridSel.Row = 1
  loc_118DB7A: Me.GridSel.Col = 0
  loc_118DB86: Set var_88 = Me.GridSel
  loc_118DBA4: Me.Label1.Caption = vbNullString
  loc_118DBB6: Me.Label1.Refresh
  loc_118DBCA: Me.CmdFill.Enabled = True
  loc_118DBD2: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F47644
  'Data Table: 479FA8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4753B: Me.DGPayType.Visible = False
  loc_F4755A: If (Me.RecordCount > 0) Then
  loc_F47599:   Set var_B4 = Me.Txt
  loc_F4759F:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B8)
  loc_F475A7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F475DA:   var_B0 = Me.Fields.Item("Code")
  loc_F475F9:   Set var_B4 = Me.Txt
  loc_F475FF:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B8)
  loc_F47607:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4761D: End If
  loc_F47628: Set var_A8 = Me.Txt
  loc_F4762E: Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3))
  loc_F47636: var_B0.SetFocus
  loc_F47642: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'E73C94
  'Data Table: 479FA8
  loc_E73C52: Proc_6_153_E91194(Me.DGPayType, arg_14)
  loc_E73C69: Set var_8C = Me.FGPoint
  loc_E73C85: Proc_6_138_106D6F8(Me.DGPayType, global_72, CInt(3))
  loc_E73C93: Exit Sub
End Sub

Private Sub Command1_Click() 'DFBC64
  'Data Table: 479FA8
  loc_DFBC60: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E64F5C
  'Data Table: 479FA8
  loc_E64F2C: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_E64F2F:   Call DGRestType_UnknownEvent_9()
  loc_E64F34: End If
  loc_E64F50: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_E64F53:   Call DGPayType_UnknownEvent_9()
  loc_E64F58: End If
  loc_E64F58: Exit Sub
End Sub

Private Sub Form_Load() 'F6D008
  'Data Table: 479FA8
  Dim var_8C As String
  Dim var_94 As String
  Dim unk_479FBA As Connection15
  Dim var_B8 As CommandButton
  loc_F6CED4: On Error Goto loc_F6CFFF
  loc_F6CF00: var_94 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where Code<>'" & MemVar_1F92078 & "RS' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_F6CF09: unk_479FBA.Execute var_94, var_B4, -1
  loc_F6CF3C: CVarUnk
  loc_F6CF41: VerifyVarObj
  loc_F6CF4D: LateIdStAd
  loc_F6CF76: var_8C = "SELECT Code,Name,PayType FROM RevMast Where PayType In('Cash','Member','Complementary') And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND FieldType='P' ORDER BY Name"
  loc_F6CF7F: unk_479FBA.Execute var_8C, var_B4, -1
  loc_F6CFAE: CVarUnk
  loc_F6CFB3: VerifyVarObj
  loc_F6CFB9: Set var_B8 = Me.DGPayType
  loc_F6CFBF: LateIdStAd
  loc_F6CFD3: Set var_B8 = Me.CmdDelete
  loc_F6CFD9: var_B8.Enabled = False
  loc_F6CFE1: Call Proc_217_22_117B210(var_B8, Me.DGRestType, var_B8)
  loc_F6CFED: Call 0.Method_arg_7C (CDbl(0), var_B8)
  loc_F6CFF9: Call 0.Method_arg_74 (CDbl(0), var_B8)
  loc_F6CFFE: Exit Sub
  loc_F6CFFF: ' Referenced from: F6CED4
  loc_F6CFFF: Proc_6_60_E62BC4(var_B8)
  loc_F6D004: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5F9B8
  'Data Table: 479FA8
  loc_E5F977: Set global_64 = Nothing
  loc_E5F989: Set global_76 = Nothing
  loc_E5F99B: Set global_68 = Nothing
  loc_E5F9AD: Set global_72 = Nothing
  loc_E5F9B4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28808
  'Data Table: 479FA8
  loc_E287E0: On Error Goto loc_E287FF
  loc_E287F7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E287FF: ' Referenced from: E287E0
  loc_E287FF: Proc_6_60_E62BC4(Shift)
  loc_E28804: Exit Sub
End Sub

Public Sub Proc_217_22_117B210
  'Data Table: 479FA8
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_117AE42: Me.GridSel.Rows = 1
  loc_117AE56: Me.GridSel.Cols = 5
  loc_117AE5B: var_98 = 0
  loc_117AE67: var_BC = CVar(CLng(0)) 'Long
  loc_117AE6C: var_DC = "O"
  loc_117AE75: LateIdCallSt
  loc_117AE80: var_98 = CVar(CLng(0)) 'Long
  loc_117AE85: var_BC = &H258
  loc_117AE91: LateIdCallSt
  loc_117AE99: var_98 = 0
  loc_117AEA5: var_BC = CVar(CLng(1)) 'Long
  loc_117AEAA: var_DC = "Bill No"
  loc_117AEB3: LateIdCallSt
  loc_117AEBE: var_98 = CVar(CLng(1)) 'Long
  loc_117AEC9: var_BC = CVar(CInt(1)) 'Integer
  loc_117AED0: LateIdCallSt
  loc_117AEDB: var_98 = CVar(CLng(1)) 'Long
  loc_117AEE6: var_BC = CVar(CInt(1)) 'Integer
  loc_117AEED: LateIdCallSt
  loc_117AEF8: var_98 = CVar(CLng(1)) 'Long
  loc_117AEFD: var_BC = &H5DC
  loc_117AF09: LateIdCallSt
  loc_117AF11: var_98 = 0
  loc_117AF1D: var_BC = CVar(CLng(2)) 'Long
  loc_117AF22: var_DC = "DocId"
  loc_117AF2B: LateIdCallSt
  loc_117AF36: var_98 = CVar(CLng(2)) 'Long
  loc_117AF41: var_BC = CVar(CInt(7)) 'Integer
  loc_117AF48: LateIdCallSt
  loc_117AF53: var_98 = CVar(CLng(2)) 'Long
  loc_117AF5E: var_BC = CVar(CInt(7)) 'Integer
  loc_117AF65: LateIdCallSt
  loc_117AF70: var_98 = CVar(CLng(2)) 'Long
  loc_117AF75: var_BC = 0
  loc_117AF81: LateIdCallSt
  loc_117AF89: var_98 = 0
  loc_117AF95: var_BC = CVar(CLng(3)) 'Long
  loc_117AF9A: var_DC = "Bill Date"
  loc_117AFA3: LateIdCallSt
  loc_117AFAE: var_98 = CVar(CLng(3)) 'Long
  loc_117AFB9: var_BC = CVar(CInt(1)) 'Integer
  loc_117AFC0: LateIdCallSt
  loc_117AFCB: var_98 = CVar(CLng(3)) 'Long
  loc_117AFD6: var_BC = CVar(CInt(1)) 'Integer
  loc_117AFDD: LateIdCallSt
  loc_117AFE8: var_98 = CVar(CLng(3)) 'Long
  loc_117AFED: var_BC = &H7D0
  loc_117AFF9: LateIdCallSt
  loc_117B001: var_98 = 0
  loc_117B00D: var_BC = CVar(CLng(4)) 'Long
  loc_117B012: var_DC = "Bill Amount"
  loc_117B01B: LateIdCallSt
  loc_117B026: var_98 = CVar(CLng(4)) 'Long
  loc_117B031: var_BC = CVar(CInt(7)) 'Integer
  loc_117B038: LateIdCallSt
  loc_117B043: var_98 = CVar(CLng(4)) 'Long
  loc_117B04E: var_BC = CVar(CInt(7)) 'Integer
  loc_117B055: LateIdCallSt
  loc_117B060: var_98 = CVar(CLng(4)) 'Long
  loc_117B065: var_BC = &H7D0
  loc_117B071: LateIdCallSt
  loc_117B079: var_98 = vbNullString
  loc_117B083: Set var_AC = Me.GridSel
  loc_117B0A7: Me.GridSel.FixedRows = 1
  loc_117B0B1: Set var_88 = Nothing 
  loc_117B0C5: ReDim Preserve global_60(0 To 0)
  loc_117B0DC: global_60(0) = 0
  loc_117B0F0: Me.GridSel.Height = CVar(CDbl(6000))
  loc_117B10B: Me.GridSel.Width = CVar(CDbl(6500))
  loc_117B113: var_98 = 0
  loc_117B144: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_117B184: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_117B1B5: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_117B1E6: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_117B205: Me.Check1.Value = CInt(0)
  loc_117B20D: Exit Sub
  loc_117B20E: arg_3040 = 0
End Sub

Public Sub Proc_217_23_13A3610
  'Data Table: 479FA8
  Dim var_B8 As Variant
  Dim var_98 As Variant
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_148 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_1D0 As String
  Dim unk_479FBA As Connection15
  Dim var_1F4 As Variant
  Dim var_1F8 As Variant
  Dim var_20C As Field20
  Dim var_A8 As Variant
  Dim var_110 As Variant
  Dim Me As Recordset15
  Dim var_EC As Variant
  Dim var_F0 As Variant
  Dim var_144 As Variant
  Dim var_258 As String
  Dim var_268 As TextBox
  Dim var_1F0 As Variant
  Dim var_21C As Variant
  Dim var_14C As String
  Dim var_88 As Recordset15
  loc_13A2D8C: Proc_6_7_F25D88(var_A8, MemVar_1F920F4, "Select max(Vno) From Sale1 Where VDate>=", var_1F0, -1)
  loc_13A2D94: var_C8 = var_1F4 & var_A8 
  loc_13A2DAC: Set var_EC = Me.Txt
  loc_13A2DB2: Call 0.Method_Proc_217_23_13A36100 (CInt(0), var_F0, var_C8 & " And vdate<", var_1F8)
  loc_13A2DC1: Proc_6_7_F25D88(var_110, CVar(var_F0), 0)
  loc_13A2DD2: var_140 = var_20C & var_110 & " And RestCode='" 
  loc_13A2DE4: Set var_144 = Me.Txt
  loc_13A2DEA: Call 0.Method_Proc_217_23_13A36100 (CInt(2), var_148, var_14C)
  loc_13A2DF2: var_140 = var_148.Tag
  loc_13A2E06: var_18C = var_21C & CVar(var_14C) & "' And Logsite_Code='" 
  loc_13A2E10: var_1AC = var_18C & CVar(MemVar_1F92078) 
  loc_13A2E19: var_1CC = var_1AC & "'" 
  loc_13A2E27: unk_479FBA.Execute CStr(var_1CC), , 
  loc_13A2E2F:  = var_1F4.Fields
  loc_13A2E37:  = var_1F8.Item()
  loc_13A2E3F:  = var_20C.Value
  loc_13A2E4A: Proc_6_39_E7C810(var_22C)
  loc_13A2EAA: Set var_EC = Me.Txt
  loc_13A2EB0: Call 0.Method_Proc_217_23_13A36100 (CInt(0), var_F0, "Select Vno,Vdate,PayType From PayCharge Where PayType not in ('Cash','Member','Complementary') and VDate>= ", var_18C)
  loc_13A2EBF: Proc_6_7_F25D88(var_C8, CVar(var_F0), -1)
  loc_13A2ED0: var_100 = var_1F4 & var_C8 & " And RestCode='" 
  loc_13A2EE2: Set var_144 = Me.Txt
  loc_13A2EE8: Call 0.Method_Proc_217_23_13A36100 (CInt(2), var_148, var_14C)
  loc_13A2EF0: var_100 = var_148.Tag
  loc_13A2F17: var_16C = CLng(var_22C) & CVar(var_14C) & "' And Logsite_Code='" & CVar(MemVar_1F92078) & "' and Vtype not in ('IPOS','PPOS') Order by Vno,VDate" 
  loc_13A2F25: unk_479FBA.Execute CStr(var_16C), var_21C, 
  loc_13A2F36: Set global_76 = var_1F4
  loc_13A2F78: If (Me.RecordCount > 0) Then
  loc_13A2F81:   Me.MoveFirst
  loc_13A2F86:   ' Referenced from: 13A30CF
  loc_13A2F98:   If Not(Me.EOF) Then
  loc_13A2FB8:     var_F0 = Me.Fields.Item("VNo")
  loc_13A2FE2:     var_148 = Me.Fields.Item("PayType")
  loc_13A300C:     var_1F8 = Me.Fields.Item("VDate")
  loc_13A3014:     var_140 = var_1F8.Value
  loc_13A302F:     var_C8 = "Bill No. " & var_F0.Value 
  loc_13A3061:     var_18C = var_C8 & " has been Settled In Mode " & var_148.Value & " On Date " & var_140 & vbCrLf & "So Bill Deletion Process not Possible." 
  loc_13A3065:     MsgBox(var_18C, &H40, var_1AC, var_1CC, var_1F0)
  loc_13A30A1:     Set global_76 = Nothing
  loc_13A30BB:     Me.GridSel.Rows = 2
  loc_13A30C3:     Exit Sub
  loc_13A30CA:     Me.MoveNext
  loc_13A30CF:     GoTo loc_13A2F86
  loc_13A30D2:   End If
  loc_13A30D2: End If
  loc_13A30F0: Set var_EC = Me.Txt
  loc_13A30F6: Call 0.Method_Proc_217_23_13A36100 (CInt(3), var_F0, var_14C, "Select P.DocId From (PayCharge P Inner Join Sale1 S on P.DocId=S.DocId) Where P.PayCode='")
  loc_13A30FE: var_22C = var_F0.Tag
  loc_13A3107: var_1D0 = -1 & var_14C
  loc_13A310E: var_258 = CStr(var_C8 & " has been Settled In Mode " & var_148.Value & " On Date " & var_140 & vbCrLf) & "' And P.PayType Not In('PPOS','IPOS') And P.PayCode Not In('"
  loc_13A3138: Set var_144 = Me.Txt
  loc_13A313E: Call 0.Method_Proc_217_23_13A36100 (CInt(0), var_148)
  loc_13A314D: Proc_6_7_F25D88(var_C8, CVar(var_148))
  loc_13A3155: var_100 = CVar(var_258 & MemVar_1F92078 & "ROOM','" & MemVar_1F92078 & "TOUT') And S.VDate Between ") & var_C8 
  loc_13A316D: Set var_1F4 = Me.Txt
  loc_13A3173: Call 0.Method_Proc_217_23_13A36100 (CInt(1), var_1F8)
  loc_13A3182: Proc_6_7_F25D88(var_140, CVar(var_1F8))
  loc_13A3193: var_16C = var_100 & " And " & var_140 & " And P.RestCode='" 
  loc_13A31A5: Set var_20C = Me.Txt
  loc_13A31AB: Call 0.Method_Proc_217_23_13A36100 (CInt(2), var_268, var_26C)
  loc_13A31B3: var_16C = var_268.Tag
  loc_13A31E8: unk_479FBA.Execute CStr(var_274 & CVar(var_26C) & "' And P.Logsite_Code='" & CVar(MemVar_1F92078) & "' Order by P.Vno"), , 
  loc_13A31F9: Set global_76 = var_274
  loc_13A3259: If (Me.RecordCount = 0) Then
  loc_13A326F:   Me.GridSel.Rows = 2
  loc_13A3277:   Exit Sub
  loc_13A3278: End If
  loc_13A328B: Me.GridSel.Row = 1
  loc_13A329F: Me.CmdDelete.Enabled = True
  loc_13A32A7: ' Referenced from: 13A35EE
  loc_13A32B9: If Not(Me.EOF) Then
  loc_13A3312:   unk_479FBA.Execute CStr("Select Vno,Vdate,NetAmt as BillAmount,DocId From Sale1 Where DocId='" & Me.Fields.Item(0).Value & "'"), var_100, -1
  loc_13A331D:   Set var_88 = var_144
  loc_13A334B:   If (var_88.RecordCount = 1) Then
  loc_13A3352:     Set var_27C = Me.GridSel
  loc_13A3355:     var_98 = vbNullString
  loc_13A3379:     var_98 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_13A3381:     var_D8 = CVar(CLng(0)) 'Long
  loc_13A338F:     LateIdCallSt
  loc_13A33B0:     var_B8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_13A33B8:     var_130 = CVar(CLng(1)) 'Long
  loc_13A33E8:     var_E8 = CVar(CStr(var_88.Fields.Item("VNo").Value)) 'String
  loc_13A33EF:     LateIdCallSt
  loc_13A3451:     var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_27C, var_E8, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_13A3458:     LateIdCallSt
  loc_13A34AE:     var_D8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_13A34B6:     var_17C = CVar(CLng(3)) 'Long
  loc_13A34D3:     var_C8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VDate")), var_27C, "dd/mmm/yyyy", var_27C, vbNullString)) 'String
  loc_13A34E9:     LateIdCallSt
  loc_13A3530:     Proc_6_39_E7C810(var_C8, CVar(var_88.Fields.Item("BillAmount")), var_27C, CVar(CStr(Format(var_C8, "dd/mmm/yyyy"))), 1, 1)
  loc_13A3548:     var_D8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_13A3550:     var_17C = CVar(CLng(4)) 'Long
  loc_13A3579:     var_120 = CVar(CStr(Format(var_C8, "0.00"))) 'String
  loc_13A3580:     LateIdCallSt
  loc_13A35A0:     Set var_27C = Nothing 
  loc_13A35A9:     Set var_88 = Nothing
  loc_13A35C5:     var_98 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_13A35D4:     Me.GridSel.Row = "BillAmount"
  loc_13A35E3:   End If
  loc_13A35E9:   Me.MoveNext
  loc_13A35EE:   GoTo loc_13A32A7
  loc_13A35F1: End If
  loc_13A3604: Me.GridSel.FixedRows = 1
  loc_13A360C: Exit Sub
End Sub

Public Sub Proc_217_24_F7801C(arg_C) 'F7801C
  'Data Table: 479FA8
  Dim unk_479FBA As Connection15
  loc_F77EF8: unk_479FBA.Execute "Update Kot Set ContraDocID='Deleted' Where ContraDocID='" & arg_C & "'", var_B0, -1
  loc_F77F2E: unk_479FBA.Execute "Delete From Sale1 Where DocID='" & arg_C & "'", var_B0, -1
  loc_F77F64: unk_479FBA.Execute "Delete From Sale2 Where DocID='" & arg_C & "'", var_B0, -1
  loc_F77F9A: unk_479FBA.Execute "Delete From SunTran Where DocID='" & arg_C & "'", var_B0, -1
  loc_F77FD0: unk_479FBA.Execute "Delete From Stock Where DocID='" & arg_C & "'", var_B0, -1
  loc_F78006: unk_479FBA.Execute "Delete From Paycharge Where DocID='" & arg_C & "'", var_B0, -1
  loc_F78018: Exit Sub
  loc_F78019: ThisVCallI2
End Sub

Public Sub Proc_217_25_130BE30
  'Data Table: 479FA8
  Dim unk_479FBA As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_1F0 As Variant
  Dim var_1F4 As String
  Dim var_130 As Variant
  loc_130B73E: unk_479FBA.Execute "Select * from TempPosDel Order By OldVno", var_A8, -1
  loc_130B749: Set var_88 = var_AC
  loc_130B766: If (var_88.RecordCount = 0) Then
  loc_130B769:   Exit Sub
  loc_130B76A: End If
  loc_130B77E: If (var_88.RecordCount > 0) Then
  loc_130B784:   var_88.MoveFirst
  loc_130B789:   ' Referenced from: 130BE2A
  loc_130B798:   If Not(var_88.EOF) Then
  loc_130B7BF:     var_AC = var_88.Fields
  loc_130B80A:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Sale1 Set DocId='" & var_AC.Item("NewDocId").Value & "',Vno=", var_214)
  loc_130B812:     var_140 = -1 & var_130 
  loc_130B884:     var_1F4 = CStr(var_140 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value)
  loc_130B88E:     unk_479FBA.Execute var_1F4, var_218, var_AC
  loc_130B935:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Sale2 Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_130B9AB:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_130B9B9:     unk_479FBA.Execute CStr(var_1F0), -1, var_218
  loc_130BA60:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update SunTran Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_130BAD6:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_130BAE4:     unk_479FBA.Execute CStr(var_1F0), -1, var_218
  loc_130BB8B:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Stock Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_130BC01:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_130BC0F:     unk_479FBA.Execute CStr(var_1F0), -1, var_218
  loc_130BCB6:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update PayCharge Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_130BCC7:     var_160 = var_214 & var_130 & " Where DocId='" 
  loc_130BD3A:     unk_479FBA.Execute CStr(var_160 & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value), -1, var_218
  loc_130BDE5:     var_130 = "Update Kot Set ContraDocId='" & var_88.Fields.Item("NewDocId").Value & "' Where ContraDocId='" & var_88.Fields.Item("OldDocid").Value 
  loc_130BDFC:     unk_479FBA.Execute CStr(var_130 & "'"), var_160, -1
  loc_130BE25:     var_88.MoveNext
  loc_130BE2A:     GoTo loc_130B789
  loc_130BE2D:   End If
  loc_130BE2D: End If
  loc_130BE2D: Exit Sub
End Sub

Public Sub Proc_217_26_107A1F8
  'Data Table: 479FA8
  Dim unk_479FBA As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Long
  Dim var_B0 As Fields15
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_11C As Variant
  Dim var_14C As Variant
  Dim var_1BC As Variant
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_234 As Variant
  loc_1079FD6: unk_479FBA.Execute "Select * from TempPosDel Order By OldVno", var_AC, -1
  loc_1079FE1: Set var_88 = var_B0
  loc_1079FFE: If (var_88.RecordCount = 0) Then
  loc_107A00A:   global_84 = global_80
  loc_107A00D:   Exit Sub
  loc_107A00E: End If
  loc_107A013: var_8C = 1
  loc_107A02A: If (var_88.RecordCount > 0) Then
  loc_107A030:   var_88.MoveFirst
  loc_107A035:   ' Referenced from: 107A1DD
  loc_107A044:   If Not(var_88.EOF) Then
  loc_107A088:     var_DC = CVar(CStr((global_80 + var_8C))) 'String
  loc_107A09A:     var_11C = (8 - Len(Trim(var_DC)))
  loc_107A0B4:     var_14C = CVar(CStr((global_80 + var_8C))) 'String
  loc_107A0CB:     var_1BC = CVar(CStr((global_80 + var_8C))) 'String
  loc_107A13C:     var_13C = (Left(CVar(var_88.Fields.Item("OldDocid")), &HD) + Space(CLng(var_11C)))
  loc_107A143:     var_16C = (var_13C + Trim(var_14C))
  loc_107A167:     var_234 = "Update TempPosDel Set NewDocId='" & var_16C & "',NewVno=" & Trim(var_1BC) & " Where OldDocId='" & var_88.Fields.Item("OldDocid").Value 
  loc_107A185:     unk_479FBA.Execute CStr(var_234 & "' And OldVno=" & var_88.Fields.Item("OldVno").Value), var_2B0, -1
  loc_107A1D2:     var_8C = (var_8C + 1)
  loc_107A1D8:     var_88.MoveNext
  loc_107A1DD:     GoTo loc_107A035
  loc_107A1E0:   End If
  loc_107A1F3:   global_84 = ((global_80 + var_8C) - 1)
  loc_107A1F6: End If
  loc_107A1F6: Exit Sub
End Sub

Public Sub Proc_217_27_11A93AC(arg_C, arg_10) '11A93AC
  'Data Table: 479FA8
  Dim var_96 As Integer
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_108 As Variant
  Dim var_128 As Long
  Dim var_14C As Variant
  loc_11A8F8E: On Error Goto loc_11A93A1
  loc_11A8F93: var_96 = 0
  loc_11A8F9F: If (CInt(arg_10) = 1) Then
  loc_11A8FC7:   For var_B4 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_98 = var_B4 'Integer
  loc_11A8FD0:     var_9A = var_98
  loc_11A8FD7:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A8FDC:     var_E4 = 2
  loc_11A900B:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11A9012:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A9017:       var_E4 = 2
  loc_11A903A:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11A903F:       var_128 = 1
  loc_11A9052:       var_14C = Me.GridSel.TextMatrix)
  loc_11A9069:       Call Proc_217_24_F7801C(CStr(Me.GridSel.TextMatrix)))
  loc_11A9085:       var_96 = &HFF
  loc_11A90AD:       For var_154 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_154 'Integer
  loc_11A90C6:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11A90E1:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11A90FC:         Me.GridSel.CellBackColor = &H80FF
  loc_11A9107:       Next var_154 'Integer
  loc_11A910C:     End If
  loc_11A910F:   Next var_B4 'Integer
  loc_11A9114:   Exit For
  loc_11A9117: End If
  loc_11A911F: CRefVarAry
  loc_11A9127: For var_158 = 0 To CInt(UBound(arg_C, 1)): var_98 = var_158 'Integer
  loc_11A9148:   If (arg_C(var_98) = 0) Then
  loc_11A914B:     GoTo loc_11A92D9
  loc_11A914E:   End If
  loc_11A915F:   var_9A = CInt(arg_C(var_98))
  loc_11A9169:   var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A916E:   var_E4 = 0
  loc_11A919D:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11A91A4:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A91A9:     var_E4 = 2
  loc_11A91D8:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11A91DF:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A91E4:       var_E4 = 2
  loc_11A9207:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11A920C:       var_128 = 1
  loc_11A921F:       var_14C = Me.GridSel.TextMatrix)
  loc_11A9236:       Call Proc_217_24_F7801C(CStr(Me.GridSel.TextMatrix)))
  loc_11A9252:       var_96 = &HFF
  loc_11A927A:       For var_15C = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_15C 'Integer
  loc_11A9293:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11A92AE:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11A92C9:         Me.GridSel.CellBackColor = &H80FF
  loc_11A92D4:       Next var_15C 'Integer
  loc_11A92D9:       ' Referenced from: 11A914B
  loc_11A92D9:     End If
  loc_11A92D9:   End If
  loc_11A92DC: Next var_158 'Integer
  loc_11A92E1: ' Referenced from: 11A9114
  loc_11A92F1: If ((var_96 = 0) And (CInt(arg_10) = 0)) Then
  loc_11A92F4:   var_C4 = 0
  loc_11A92FD:   var_E4 = 1
  loc_11A9310:   var_B0 = Me.GridSel.TextMatrix)
  loc_11A9338:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_16C, var_17C, var_18C)
  loc_11A9363:   Me.GridSel.Row = 1
  loc_11A936B:   var_C4 = 0
  loc_11A937E:   Me.GridSel.Col = var_C4
  loc_11A938A:   Set var_A0 = Me.GridSel
  loc_11A939B: End If
  loc_11A939B: Proc_217_27_11A93AC = GridSel.DispID_8001
  loc_11A93A1: ' Referenced from: 11A8F8E
  loc_11A93A1: Proc_6_60_E62BC4(var_B0, var_E4)
  loc_11A93A6: Proc_217_27_11A93AC = var_C4
End Sub

Public Sub Proc_217_28_EB95C8
  'Data Table: 479FA8
  loc_EB9540: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EB9552:   Me.DGRestType.Visible = False
  loc_EB955A: End If
  loc_EB9576: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_EB9588:   Me.DGPayType.Visible = False
  loc_EB9590: End If
  loc_EB95AC: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB95BE:   Me.FGPoint.Visible = False
  loc_EB95C6: End If
  loc_EB95C6: Exit Sub
End Sub
