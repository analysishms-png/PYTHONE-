VERSION 5.00
Begin VB.Form FrmPOSRecycleData
  Caption = "Recycle Outlet Data"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 13755
  ClientHeight = 9645
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13755
    Height = 450
    Visible = 0   'False
    TabIndex = 10
  End
  Begin CommandButton Command1
    Caption = "Serialize Bill"
    Left = 12060
    Top = 5340
    Width = 1125
    Height = 780
    Visible = 0   'False
    TabIndex = 6
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
  Begin CommandButton CmdExitz
    Caption = "E&xit"
    BackColor = &HC0FFFF&
    Left = 9780
    Top = 1050
    Width = 1545
    Height = 495
    Visible = 0   'False
    TabIndex = 4
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton CmdDeletez
    Caption = "&Delete"
    BackColor = &HC0FFFF&
    Left = 8235
    Top = 1050
    Width = 1545
    Height = 495
    Visible = 0   'False
    TabIndex = 3
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton CmdFill
    Caption = "&Fill"
    Left = 12660
    Top = 3285
    Width = 1125
    Height = 780
    Visible = 0   'False
    TabIndex = 0
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
    BackColor = &HFF8080&
    ForeColor = &HFFFFFF&
    Left = 2490
    Top = 2625
    Width = 915
    Height = 195
    TabIndex = 2
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
  Begin MSHFlexGrid GridSel
    Left = 2400
    Top = 2580
    Width = 6495
    Height = 5775
    TabIndex = 1
  End
  Begin BtnEnh CmdExit
    Left = 4575
    Top = 1545
    Width = 1140
    Height = 870
    TabIndex = 8
  End
  Begin BtnEnh CmdDelete
    Left = 3435
    Top = 1530
    Width = 1140
    Height = 870
    TabIndex = 9
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
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
  Begin Label Label1
    BackColor = &HFFC0C0&
    ForeColor = &H80&
    Left = 2505
    Top = 8445
    Width = 6360
    Height = 270
    TabIndex = 5
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

Attribute VB_Name = "FrmPOSRecycleData"

Private global_52 As Integer

Private Sub CmdDelete_UnknownEvent_9 'F34BE0
  'Data Table: 436EE4
  Dim var_A0 As Variant
  Dim var_86 As Integer
  Dim unk_436EEF As Connection15
  loc_F34AD0: On Error Goto loc_F34BC3
  loc_F34AD9: Call 0.Method_arg_50 (var_90)
  loc_F34AFD: var_A0 = CVar("R U Sure To Delete Data?" & vbCrLf & "It Will Not Recover Again.") 'String
  loc_F34B19: If (MsgBox(var_A0, &H24, CVar(var_90), var_D0, var_F0) = 7) Then
  loc_F34B1C:   Exit Sub
  loc_F34B1D: End If
  loc_F34B2A: Me.Label1.Caption = "Deleting..."
  loc_F34B3C: Me.Label1.Refresh
  loc_F34B46: var_86 = &HFF
  loc_F34B52: unk_436EEF.BeginTrans var_F8
  loc_F34B80: Call Proc_230_15_11F1468(global_60, CByte(Me.Check1.Value))
  loc_F34B91: unk_436EEF.CommitTrans
  loc_F34B98: var_86 = 0
  loc_F34BA8: Me.Label1.Caption = "Deletion Completed."
  loc_F34BBA: Me.Label1.Refresh
  loc_F34BC2: Exit Sub
  loc_F34BC3: ' Referenced from: F34AD0
  loc_F34BC9: If (var_86 = &HFF) Then
  loc_F34BD2:   unk_436EEF.RollbackTrans
  loc_F34BD7: End If
  loc_F34BD7: Proc_6_60_E62BC4(var_86, var_A0)
  loc_F34BDC: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1604C
  'Data Table: 436EE4
  loc_E16041: Me.Global.Unload Me
  loc_E16049: Exit Sub
  loc_E1604A: DOC
End Sub

Private Sub Form_Load() 'E997EC
  'Data Table: 436EE4
  Dim var_A8 As MSHFlexGrid
  loc_E99764: On Error Goto loc_E997E6
  loc_E9976E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_E99786: Me.GridSel.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_E99797: Set var_A8 = Me.CmdDelete
  loc_E9979D: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_E997A5: Call Proc_230_12_118B9F8()
  loc_E997AA: Call Proc_230_13_110EF8C()
  loc_E997C2: Me.GridSel.Row = 1
  loc_E997DD: Me.GridSel.Col = 0
  loc_E997E5: Exit Sub
  loc_E997E6: ' Referenced from: E99764
  loc_E997E6: Proc_6_60_E62BC4()
  loc_E997EB: Exit Sub
End Sub

Private Sub Form_Resize() 'ED6D18
  'Data Table: 436EE4
  Dim var_8C As Label
  loc_ED6C76: Call 0.Method_arg_50 (var_88)
  loc_ED6C88: Me.LblFormCaption.Caption = var_88
  loc_ED6CA1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED6CAD: Set var_A0 = Me.TopCtrl1
  loc_ED6CB3: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_ED6CC0: Set var_8C = Me.TopCtrl1
  loc_ED6CC6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_ED6CE0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED6CFB: Call 0.Method_arg_100 (var_B8)
  loc_ED6D0D: Me.LblFormCaption.Width = var_B8
  loc_ED6D15: Exit Sub
  loc_ED6D16: Set arg_6CF0 = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0D5DC
  'Data Table: 436EE4
  loc_E0D5D3: Set global_64 = Nothing
  loc_E0D5DA: Exit Sub
End Sub

Private Sub Form_Activate() 'E16098
  'Data Table: 436EE4
  Dim arg_6CFF As Double
  loc_E16084: Set var_88 = Me.GridSel
  loc_E16095: Exit Sub
  loc_E16096: arg_6CFF = GridSel.DispID_8001
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29948
  'Data Table: 436EE4
  loc_E29920: On Error Goto loc_E2993F
  loc_E29937: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2993F: ' Referenced from: E29920
  loc_E2993F: Proc_6_60_E62BC4(Shift)
  loc_E29944: Exit Sub
End Sub

Private Sub Check1_Click() 'F675EC
  'Data Table: 436EE4
  Dim var_9C As Variant
  loc_F674CF: If (CLng(Me.Check1.Value) = 0) Then
  loc_F674E0:   Me.GridSel.Enabled = True
  loc_F67507:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F6751D:     Me.GridSel.Row = 1
  loc_F67538:     Me.GridSel.Col = 0
  loc_F67540:   End If
  loc_F67543: Else
  loc_F67552:   Me.GridSel.Enabled = False
  loc_F67579:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F6758F:     Me.GridSel.Row = 0
  loc_F675AA:     Me.GridSel.Col = 0
  loc_F675CB:     var_9C = CVar((CLng(Me.GridSel.Rows) - 1)) 'Long
  loc_F675DA:     Me.GridSel.RowSel = 0
  loc_F675E9:   End If
  loc_F675E9: End If
  loc_F675E9: Exit Sub
  loc_F675EA: ArrayRebase1Var
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E229A0
  'Data Table: 436EE4
  loc_E22986: If (KeyCode = &HD) Then
  loc_E22997:   Proc_303_0_FB9B68("	")
  loc_E2299F: End If
  loc_E2299F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A 'FDB2FC
  'Data Table: 436EE4
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FDB14A: If (KeyCode = &HD) Then
  loc_FDB15B:   Proc_303_0_FB9B68("	")
  loc_FDB163: End If
  loc_FDB182: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FDB185:   Exit Sub
  loc_FDB186: End If
  loc_FDB1B0: If ((CLng(KeyCode) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FDB1C3:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FDB1DD:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FDB1F8:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDB1FD:   var_D4 = 0
  loc_FDB22F:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDB234:   var_19C = 0
  loc_FDB26F:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FDB277:   Set var_1D0 = Me.GridSel
  loc_FDB27D:   LateIdCallSt
  loc_FDB2B7:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_FDB2C9:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_FDB2F1:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FDB2F8: End If
  loc_FDB2F8: Exit Sub
  loc_FDB2F9: DOC
End Sub

Private Sub GridSel_UnknownEvent_E 'E5D9C4
  'Data Table: 436EE4
  loc_E5D99F: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5D9A2:   Exit Sub
  loc_E5D9A3: End If
  loc_E5D9BA: global_52 = CInt(CLng(Me.GridSel.Row))
  loc_E5D9C3: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '10281B0
  'Data Table: 436EE4
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1027FB1: If ((CLng(Me.GridSel.Col) <> 0) Or (global_52 = 0)) Then
  loc_1027FB4:   Exit Sub
  loc_1027FB5: End If
  loc_1028011: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_1028014:   Exit Sub
  loc_1028015: End If
  loc_1028044: For var_BA = global_52 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_102805D:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1028078:   Me.GridSel.Col = 0
  loc_1028090:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_10280AA:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_10280B6:   var_CC = CVar(CLng(var_88)) 'Long
  loc_10280BB:   var_EC = 0
  loc_10280DE:   var_160 = CVar(CLng(var_88)) 'Long
  loc_10280E3:   var_180 = 0
  loc_102811E:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_1028126:   Set var_A0 = Me.GridSel
  loc_102812C:   LateIdCallSt
  loc_102815E:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_1028170:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_1028198:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_10281A2: Next var_BA 'Integer
  loc_10281AC: global_52 = 0
  loc_10281AF: Exit Sub
End Sub

Public Sub Proc_230_12_118B9F8
  'Data Table: 436EE4
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_118B616: Me.GridSel.Rows = 1
  loc_118B62A: Me.GridSel.Cols = 5
  loc_118B62F: var_98 = 0
  loc_118B63B: var_BC = CVar(CLng(0)) 'Long
  loc_118B640: var_DC = vbNullString
  loc_118B649: LateIdCallSt
  loc_118B654: var_98 = CVar(CLng(0)) 'Long
  loc_118B659: var_BC = &H258
  loc_118B665: LateIdCallSt
  loc_118B66D: var_98 = 0
  loc_118B679: var_BC = CVar(CLng(1)) 'Long
  loc_118B67E: var_DC = "RestCode"
  loc_118B687: LateIdCallSt
  loc_118B692: var_98 = CVar(CLng(1)) 'Long
  loc_118B69D: var_BC = CVar(CInt(1)) 'Integer
  loc_118B6A4: LateIdCallSt
  loc_118B6AF: var_98 = CVar(CLng(1)) 'Long
  loc_118B6BA: var_BC = CVar(CInt(1)) 'Integer
  loc_118B6C1: LateIdCallSt
  loc_118B6CC: var_98 = CVar(CLng(1)) 'Long
  loc_118B6D1: var_BC = 0
  loc_118B6DD: LateIdCallSt
  loc_118B6E5: var_98 = 0
  loc_118B6F1: var_BC = CVar(CLng(2)) 'Long
  loc_118B6F6: var_DC = "Outlet"
  loc_118B6FF: LateIdCallSt
  loc_118B70A: var_98 = CVar(CLng(2)) 'Long
  loc_118B715: var_BC = CVar(CInt(1)) 'Integer
  loc_118B71C: LateIdCallSt
  loc_118B727: var_98 = CVar(CLng(2)) 'Long
  loc_118B732: var_BC = CVar(CInt(1)) 'Integer
  loc_118B739: LateIdCallSt
  loc_118B744: var_98 = CVar(CLng(2)) 'Long
  loc_118B749: var_BC = &H1194
  loc_118B755: LateIdCallSt
  loc_118B75D: var_98 = 0
  loc_118B769: var_BC = CVar(CLng(3)) 'Long
  loc_118B76E: var_DC = "RestType"
  loc_118B777: LateIdCallSt
  loc_118B782: var_98 = CVar(CLng(3)) 'Long
  loc_118B78D: var_BC = CVar(CInt(1)) 'Integer
  loc_118B794: LateIdCallSt
  loc_118B79F: var_98 = CVar(CLng(3)) 'Long
  loc_118B7AA: var_BC = CVar(CInt(1)) 'Integer
  loc_118B7B1: LateIdCallSt
  loc_118B7BC: var_98 = CVar(CLng(3)) 'Long
  loc_118B7C1: var_BC = 0
  loc_118B7CD: LateIdCallSt
  loc_118B7D5: var_98 = 0
  loc_118B7E1: var_BC = CVar(CLng(4)) 'Long
  loc_118B7E6: var_DC = "LogSite_Code"
  loc_118B7EF: LateIdCallSt
  loc_118B7FA: var_98 = CVar(CLng(4)) 'Long
  loc_118B805: var_BC = CVar(CInt(1)) 'Integer
  loc_118B80C: LateIdCallSt
  loc_118B817: var_98 = CVar(CLng(4)) 'Long
  loc_118B822: var_BC = CVar(CInt(1)) 'Integer
  loc_118B829: LateIdCallSt
  loc_118B834: var_98 = CVar(CLng(4)) 'Long
  loc_118B839: var_BC = 0
  loc_118B845: LateIdCallSt
  loc_118B84D: var_98 = vbNullString
  loc_118B857: Set var_AC = Me.GridSel
  loc_118B87B: Me.GridSel.FixedRows = 1
  loc_118B885: Set var_88 = Nothing 
  loc_118B899: ReDim Preserve global_60(0 To 0)
  loc_118B8B0: global_60(0) = 0
  loc_118B8C4: Me.GridSel.Height = CVar(CDbl(6000))
  loc_118B8DF: Me.GridSel.Width = CVar(CDbl(6500))
  loc_118B8E7: var_98 = 0
  loc_118B918: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_118B927: var_98 = 0
  loc_118B958: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_118B989: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_118B9BA: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_118B9D9: Me.Check1.Value = CInt(0)
  loc_118B9ED: Me.Check1.Visible = False
  loc_118B9F5: Exit Sub
End Sub

Public Sub Proc_230_13_110EF8C
  'Data Table: 436EE4
  Dim var_94 As String
  Dim unk_436EEF As Connection15
  Dim var_88 As Recordset15
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_140 As Variant
  loc_110EC76: var_94 = "SELECT Code,Name,RestType,LOGSITE_CODE FROM Depart Where Code<>'" & MemVar_1F92078 & "RS' And (LOGSITE_CODE='" & MemVar_1F92078
  loc_110EC86: unk_436EEF.Execute var_94 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' and RestType='Outlet' ORDER BY Name", var_B8, -1
  loc_110EC91: Set var_88 = var_BC
  loc_110ECB9: If (var_88.RecordCount = 0) Then
  loc_110ECCF:   Me.GridSel.Rows = 2
  loc_110ECD7:   Exit Sub
  loc_110ECD8: End If
  loc_110ECEB: Me.GridSel.Row = 1
  loc_110ECFB: Set var_BC = Me.CmdDelete
  loc_110ED01: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_110ED09: ' Referenced from: 110EF62
  loc_110ED18: If Not(var_88.EOF) Then
  loc_110ED1F:   Set var_D8 = Me.GridSel
  loc_110ED22:   var_A8 = vbNullString
  loc_110ED46:   var_A8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_110ED4E:   var_E8 = CVar(CLng(0)) 'Long
  loc_110ED5C:   LateIdCallSt
  loc_110EDB2:   var_140 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Code")), CVar(CLng(1)), CVar(CLng(Me.GridSel.Row)), var_D8, vbNullString)) 'String
  loc_110EDB9:   LateIdCallSt
  loc_110EE19:   var_140 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_D8, var_140)) 'String
  loc_110EE20:   LateIdCallSt
  loc_110EE80:   var_140 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RestType")), CVar(CLng(3)), CVar(CLng(Me.GridSel.Row)), var_D8, var_140)) 'String
  loc_110EE87:   LateIdCallSt
  loc_110EEE7:   var_140 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("LogSite_Code")), CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)), var_D8, var_140)) 'String
  loc_110EEEE:   LateIdCallSt
  loc_110EF08:   Set var_D8 = Nothing 
  loc_110EF0F:   var_88.MoveNext
  loc_110EF25:   If (var_88.EOF = &HFF) Then
  loc_110EF28:     GoTo loc_110EF65
  loc_110EF2B:   End If
  loc_110EF44:   var_A8 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_110EF53:   Me.GridSel.Row = "LogSite_Code"
  loc_110EF62:   GoTo loc_110ED09
  loc_110EF65:   ' Referenced from: 110EF28
  loc_110EF65: End If
  loc_110EF78: Me.GridSel.FixedRows = 1
  loc_110EF85: Set var_88 = Nothing
  loc_110EF88: Exit Sub
End Sub

Public Sub Proc_230_14_13C71F8(arg_C, arg_10) '13C71F8
  'Data Table: 436EE4
  Dim var_D0 As Variant
  Dim var_98 As String
  Dim unk_436EEF As Connection15
  Dim var_BC As Recordset15
  Dim var_C0 As Fields15
  Dim var_D4 As Field20
  Dim var_E4 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_164 As Variant
  Dim var_130 As Variant
  Dim var_184 As Variant
  loc_13C68AE: var_D0 = 0
  loc_13C68E9: unk_436EEF.Execute "SELECT SHORTNAME FROM DEPART WHERE CODE='" & arg_C & "'And Logsite_Code='" & arg_10 & "'", var_B8, -1
  loc_13C68F1: var_BC = var_BC.Fields
  loc_13C68F9: var_D0 = var_C0.Item(var_C0)
  loc_13C6901: var_D4 = var_D4.Value
  loc_13C690E: var_88 = Proc_6_38_E68A98(var_E4)
  loc_13C6971: var_E4 = CVar("Delete From KOT Where VType In('" & "K" & var_88 & "','" & "N" & var_88 & "') And LogSite_Code='" & arg_10 & "' And VDate Between ") 'String
  loc_13C697F: Proc_6_7_F25D88(var_B8, MemVar_1F920F4, var_E4, var_164)
  loc_13C6987: var_100 = -1 & var_B8 
  loc_13C699F: Proc_6_7_F25D88(var_130, MemVar_1F920FC, var_100 & " AND ")
  loc_13C69B5: unk_436EEF.Execute CStr(var_BC & var_130), var_E4, 
  loc_13C6A1F: Proc_6_7_F25D88(var_B8, MemVar_1F920F4, CVar("Delete From Sale1 Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between "))
  loc_13C6A3F: Proc_6_7_F25D88(var_130, MemVar_1F920FC, var_164 & var_B8 & " AND ")
  loc_13C6A47: var_140 = -1 & var_130 
  loc_13C6A55: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C6AB9: Proc_6_7_F25D88(var_B8, MemVar_1F920F4, CVar("Delete From Sale2 Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between "))
  loc_13C6AD9: Proc_6_7_F25D88(var_130, MemVar_1F920FC, var_164 & var_B8 & " AND ")
  loc_13C6AE1: var_140 = -1 & var_130 
  loc_13C6AEF: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C6B53: Proc_6_7_F25D88(var_B8, MemVar_1F920F4, CVar("Delete From Stock Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between "))
  loc_13C6B73: Proc_6_7_F25D88(var_130, MemVar_1F920FC, var_164 & var_B8 & " AND ")
  loc_13C6B7B: var_140 = -1 & var_130 
  loc_13C6B89: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C6BED: Proc_6_7_F25D88(var_B8, MemVar_1F920F4, CVar("Delete From SunTran Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between "))
  loc_13C6C0D: Proc_6_7_F25D88(var_130, MemVar_1F920FC, var_164 & var_B8 & " AND ")
  loc_13C6C15: var_140 = -1 & var_130 
  loc_13C6C23: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C6C87: Proc_6_7_F25D88(var_B8, MemVar_1F920F4, CVar("Delete From Paycharge Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between "))
  loc_13C6CA7: Proc_6_7_F25D88(var_130, MemVar_1F920FC, var_164 & var_B8 & " AND ")
  loc_13C6CAF: var_140 = -1 & var_130 
  loc_13C6CBD: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C6D0C: var_98 = "Delete From POS_SBill Where DocID In (Select DocId From SplitSale1 Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10
  loc_13C6D21: Proc_6_7_F25D88(var_B8, MemVar_1F920F4, CVar(var_98 & "' And VDate Between "))
  loc_13C6D41: Proc_6_7_F25D88(var_130, MemVar_1F920FC, var_184 & var_B8 & " AND ")
  loc_13C6D49: var_140 = -1 & var_130 
  loc_13C6D52: var_164 = var_BC & var_130 & ")" 
  loc_13C6D60: unk_436EEF.Execute CStr(var_164), var_BC, 
  loc_13C6DB8: var_E4 = CVar("Delete From SplitSale1 Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between ") 'String
  loc_13C6DC6: Proc_6_7_F25D88(var_B8, MemVar_1F920F4, var_E4)
  loc_13C6DE6: Proc_6_7_F25D88(var_130, MemVar_1F920FC, var_164 & var_B8 & " AND ")
  loc_13C6DEE: var_140 = -1 & var_130 
  loc_13C6DFC: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C6E52: var_E4 = CVar("Delete From SplitSale2 Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between ") 'String
  loc_13C6E60: Proc_6_7_F25D88(var_B8, MemVar_1F920F4, var_E4)
  loc_13C6E80: Proc_6_7_F25D88(var_130, MemVar_1F920FC, var_164 & var_B8 & " AND ")
  loc_13C6E88: var_140 = -1 & var_130 
  loc_13C6E96: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C6EEC: var_E4 = CVar("Delete From SplitStock Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between ") 'String
  loc_13C6EFA: Proc_6_7_F25D88(var_B8, MemVar_1F920F4, var_E4)
  loc_13C6F1A: Proc_6_7_F25D88(var_130, MemVar_1F920FC, var_164 & var_B8 & " AND ")
  loc_13C6F22: var_140 = -1 & var_130 
  loc_13C6F30: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C6F86: var_E4 = CVar("Delete From SplitedSunTran Where VType='" & "B" & var_88 & "' And LogSite_Code='" & arg_10 & "' And VDate Between ") 'String
  loc_13C6F94: Proc_6_7_F25D88(var_B8, MemVar_1F920F4, var_E4)
  loc_13C6FA5: var_110 = var_164 & var_B8 & " AND " 
  loc_13C6FB4: Proc_6_7_F25D88(var_130, MemVar_1F920FC, var_110)
  loc_13C6FBC: var_140 = -1 & var_130 
  loc_13C6FCA: unk_436EEF.Execute CStr(var_BC & var_130), var_BC, 
  loc_13C700D: Proc_6_7_F25D88(var_B8, MemVar_1F920F4, "UPDATE VOUCHER_PREFIX SET START_SRL_NO=0 WHERE DATE_FROM=")
  loc_13C702D: Proc_6_7_F25D88(var_110, MemVar_1F920FC, var_204 & var_B8 & " AND DATE_TO=")
  loc_13C7035: var_130 = -1 & var_110 
  loc_13C7076: unk_436EEF.Execute CStr(var_130 & " AND V_TYPE='" & CVar("K" & var_88) & "' And Logsite_Code='" & CVar(arg_10) & "'"), var_BC, 
  loc_13C70B9: Proc_6_7_F25D88(var_B8, MemVar_1F920F4, "UPDATE VOUCHER_PREFIX SET START_SRL_NO=0 WHERE DATE_FROM=")
  loc_13C70D9: Proc_6_7_F25D88(var_110, MemVar_1F920FC, var_204 & var_B8 & " AND DATE_TO=")
  loc_13C70E1: var_130 = -1 & var_110 
  loc_13C7122: unk_436EEF.Execute CStr(var_130 & " AND V_TYPE='" & CVar("N" & var_88) & "' And Logsite_Code='" & CVar(arg_10) & "'"), var_BC, 
  loc_13C7165: Proc_6_7_F25D88(var_B8, MemVar_1F920F4, "UPDATE VOUCHER_PREFIX SET START_SRL_NO=0 WHERE DATE_FROM=")
  loc_13C7185: Proc_6_7_F25D88(var_110, MemVar_1F920FC, var_204 & var_B8 & " AND DATE_TO=")
  loc_13C718D: var_130 = -1 & var_110 
  loc_13C71CE: unk_436EEF.Execute CStr(var_130 & " AND V_TYPE='" & CVar("B" & var_88) & "' And Logsite_Code='" & CVar(arg_10) & "'"), var_BC, 
  loc_13C71F4: Exit Sub
End Sub

Public Sub Proc_230_15_11F1468(arg_C, arg_10) '11F1468
  'Data Table: 436EE4
  Dim var_96 As Integer
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As String
  Dim var_108 As Variant
  Dim var_128 As Variant
  loc_11F0FDA: On Error Goto loc_11F145C
  loc_11F0FDF: var_96 = 0
  loc_11F0FEB: If (CInt(arg_10) = 1) Then
  loc_11F1013:   For var_B4 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_98 = var_B4 'Integer
  loc_11F101C:     var_9A = var_98
  loc_11F1023:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11F102B:     var_E4 = CVar(CLng(1)) 'Long
  loc_11F1045:     var_F8 = CStr(Me.GridSel.TextMatrix))
  loc_11F1051:     var_108 = CVar(CLng(var_9A)) 'Long
  loc_11F1091:     If (CVar(CLng(4)) And (CStr(Me.GridSel.TextMatrix)) <> vbNullString)) Then
  loc_11F1098:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11F10A0:       var_E4 = CVar(CLng(1)) 'Long
  loc_11F10BF:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11F10C7:       var_128 = CVar(CLng(4)) 'Long
  loc_11F10ED:       Call Proc_230_14_13C71F8(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)))
  loc_11F1109:       var_96 = &HFF
  loc_11F1131:       For var_154 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_154 'Integer
  loc_11F114A:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11F1165:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11F1180:         Me.GridSel.CellBackColor = &H80FF
  loc_11F118B:       Next var_154 'Integer
  loc_11F1190:     End If
  loc_11F1193:   Next var_B4 'Integer
  loc_11F1198:   Exit For
  loc_11F119B: End If
  loc_11F11A3: CRefVarAry
  loc_11F11AB: For var_158 = 0 To CInt(UBound(arg_C, 1)): var_98 = var_158 'Integer
  loc_11F11CC:   If (arg_C(var_98) = 0) Then
  loc_11F11CF:     GoTo loc_11F1395
  loc_11F11D2:   End If
  loc_11F11E3:   var_9A = CInt(arg_C(var_98))
  loc_11F11ED:   var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11F11F2:   var_E4 = 0
  loc_11F1221:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11F1228:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11F1230:     var_E4 = CVar(CLng(1)) 'Long
  loc_11F124A:     var_F8 = CStr(Me.GridSel.TextMatrix))
  loc_11F1256:     var_108 = CVar(CLng(var_9A)) 'Long
  loc_11F1296:     If (CVar(CLng(4)) And (CStr(Me.GridSel.TextMatrix)) <> vbNullString)) Then
  loc_11F129D:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11F12A5:       var_E4 = CVar(CLng(1)) 'Long
  loc_11F12C4:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11F12CC:       var_128 = CVar(CLng(4)) 'Long
  loc_11F12F2:       Call Proc_230_14_13C71F8(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)))
  loc_11F130E:       var_96 = &HFF
  loc_11F1336:       For var_15C = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_15C 'Integer
  loc_11F134F:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11F136A:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11F1385:         Me.GridSel.CellBackColor = &H80FF
  loc_11F1390:       Next var_15C 'Integer
  loc_11F1395:       ' Referenced from: 11F11CF
  loc_11F1395:     End If
  loc_11F1395:   End If
  loc_11F1398: Next var_158 'Integer
  loc_11F139D: ' Referenced from: 11F1198
  loc_11F13AD: If ((var_96 = 0) And (CInt(arg_10) = 0)) Then
  loc_11F13B0:   var_C4 = 0
  loc_11F13BC:   var_E4 = CVar(CLng(2)) 'Long
  loc_11F13CB:   var_B0 = Me.GridSel.TextMatrix)
  loc_11F13F3:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_16C, var_17C, var_18C)
  loc_11F141E:   Me.GridSel.Row = 1
  loc_11F1426:   var_C4 = 0
  loc_11F1439:   Me.GridSel.Col = var_C4
  loc_11F1445:   Set var_A0 = Me.GridSel
  loc_11F1456: End If
  loc_11F1456: Proc_230_15_11F1468 = GridSel.DispID_8001
  loc_11F145C: ' Referenced from: 11F0FDA
  loc_11F145C: Proc_6_60_E62BC4(var_B0, var_E4)
  loc_11F1461: Proc_230_15_11F1468 = var_C4
End Sub
