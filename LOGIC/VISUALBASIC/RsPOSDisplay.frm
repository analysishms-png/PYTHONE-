VERSION 5.00
Begin VB.Form RsPOSDisplay
  Caption = "Display Table"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "RsPOSDisplay.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 14670
  ClientHeight = 9135
  BeginProperty Font
    Name = "Tahoma"
    Size = 9
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin CommandButton CmdTBInfo
    Caption = "TB"
    Left = 12765
    Top = 45
    Width = 975
    Height = 285
    Visible = 0   'False
    TabIndex = 42
    TabStop = 0   'False
  End
  Begin MSHFlexGrid FGridTb
    Left = 14760
    Top = 165
    Width = 5280
    Height = 5265
    Visible = 0   'False
    TabIndex = 41
  End
  Begin VScrollBar VScroll1
    Left = 12120
    Top = 4500
    Width = 300
    Height = 5565
    Visible = 0   'False
    TabIndex = 40
  End
  Begin HScrollBar HScroll1
    Left = 4350
    Top = 9840
    Width = 7755
    Height = 285
    Visible = 0   'False
    TabIndex = 39
  End
  Begin PictureBox PicContainer
    Left = 4905
    Top = 4500
    Width = 7395
    Height = 5385
    Visible = 0   'False
    TabIndex = 36
    ScaleMode = 1
    AutoRedraw = True
    FontTransparent = True
    BorderStyle = 0 'None
    Begin PictureBox PicContent
      Left = 0
      Top = 0
      Width = 7170
      Height = 4905
      TabIndex = 37
      ScaleMode = 1
      AutoRedraw = True
      FontTransparent = True
      Begin BtnEnh BtnEnTb
        Index = 0
        Left = 0
        Top = 0
        Width = 960
        Height = 900
        Visible = 0   'False
        TabIndex = 38
      End
    End
  End
  Begin CommandButton Command1
    Caption = "Command1"
    Left = 12300
    Top = 1035
    Width = 1605
    Height = 465
    Visible = 0   'False
    TabIndex = 35
  End
  Begin MainCtrl TOpCtrl1
    Left = 0
    Top = 8925
    Width = 14670
    Height = 210
    Visible = 0   'False
    TabIndex = 29
  End
  Begin Frame FrPendingOrder
    Caption = "PENDING ORDER"
    Left = 0
    Top = 7725
    Width = 9330
    Height = 2580
    TabIndex = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdUp2
      Caption = "Up"
      Left = 6075
      Top = 480
      Width = 1000
      Height = 1000
      TabIndex = 16
      TabStop = 0   'False
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsPOSDisplay.frx":442
    End
    Begin CommandButton CmdDown2
      Caption = "Down"
      Left = 7080
      Top = 495
      Width = 1000
      Height = 1000
      TabIndex = 14
      TabStop = 0   'False
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
    Begin CommandButton CmdExit2
      Caption = "Exit"
      Left = 8085
      Top = 495
      Width = 1000
      Height = 1000
      Visible = 0   'False
      TabIndex = 13
      TabStop = 0   'False
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsPOSDisplay.frx":884
    End
    Begin MSHFlexGrid FGrid2
      Left = 315
      Top = 495
      Width = 5535
      Height = 1965
      TabIndex = 15
    End
  End
  Begin Frame FrSettlement
    Caption = "UNSETTLED BILL"
    ForeColor = &HC00000&
    Left = 6465
    Top = 6330
    Width = 9330
    Height = 2580
    TabIndex = 10
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin MSHFlexGrid FGrid
      Left = 375
      Top = 480
      Width = 5535
      Height = 1965
      TabIndex = 11
    End
    Begin BtnEnh CmdUP
      Left = 7050
      Top = 1245
      Width = 1005
      Height = 1005
      TabIndex = 30
    End
    Begin BtnEnh CmdDown
      Left = 8160
      Top = 165
      Width = 1005
      Height = 1005
      TabIndex = 31
    End
    Begin BtnEnh CmdExit
      Left = 8295
      Top = 1305
      Width = 1005
      Height = 1005
      TabIndex = 32
    End
    Begin BtnEnh CmdRef
      Left = 6810
      Top = 150
      Width = 1005
      Height = 1005
      TabIndex = 33
    End
  End
  Begin Timer Timer1
    Enabled = 0   'False
    Interval = 10000
    Left = 9930
    Top = 3015
  End
  Begin MSHFlexGrid FGrid1
    Left = 0
    Top = 975
    Width = 11415
    Height = 7065
    TabIndex = 0
  End
  Begin CommonDialog CDLG
  End
  Begin BtnEnh CmdUnSBill
    Left = 6525
    Top = 495
    Width = 2715
    Height = 450
    TabIndex = 19
  End
  Begin BtnEnh CmdUnload
    Left = 9240
    Top = 465
    Width = 2715
    Height = 450
    TabIndex = 20
  End
  Begin Frame FrameOption
    Caption = "Frame1"
    BackColor = &HFFC0FF&
    Left = 11685
    Top = 1650
    Width = 2700
    Height = 4110
    TabIndex = 9
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin BtnEnh CmdAKOT
      Left = 0
      Top = 0
      Width = 2700
      Height = 600
      TabIndex = 22
    End
    Begin BtnEnh CmdSBill
      Left = 0
      Top = 585
      Width = 2700
      Height = 600
      TabIndex = 23
    End
    Begin BtnEnh CmdChngTable
      Left = 0
      Top = 1170
      Width = 2700
      Height = 600
      TabIndex = 24
    End
    Begin BtnEnh CmdBillLookup
      Left = 0
      Top = 1755
      Width = 2700
      Height = 600
      TabIndex = 25
    End
    Begin BtnEnh CmdPKOT
      Left = 0
      Top = 2340
      Width = 2700
      Height = 600
      TabIndex = 26
    End
    Begin BtnEnh CmdOrderBook
      Left = 0
      Top = 2925
      Width = 2700
      Height = 600
      TabIndex = 27
    End
    Begin BtnEnh CmdCancel
      Left = 0
      Top = 3510
      Width = 2700
      Height = 600
      TabIndex = 28
    End
  End
  Begin BtnEnh cmdPrintPKOT
    Left = 11955
    Top = 465
    Width = 2670
    Height = 450
    Visible = 0   'False
    TabIndex = 34
  End
  Begin Label LBLRoomName1
    ForeColor = &HC00000&
    Left = 7470
    Top = 15
    Width = 4335
    Height = 435
    TabIndex = 21
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
    Caption = "Billed"
    Index = 7
    ForeColor = &HC00000&
    Left = 4440
    Top = 570
    Width = 570
    Height = 240
    TabIndex = 17
    Alignment = 2 'Center
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
  Begin Label Label5
    Caption = "#"
    BackColor = &HE0E0E0&
    ForeColor = &HC00000&
    Left = 4245
    Top = 105
    Width = 2265
    Height = 285
    TabIndex = 8
    Alignment = 2 'Center
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
  Begin Label Label4
    Caption = "#"
    BackColor = &HE0E0E0&
    ForeColor = &HC00000&
    Left = 150
    Top = 105
    Width = 3150
    Height = 285
    TabIndex = 7
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Vacant"
    Index = 6
    ForeColor = &HC00000&
    Left = 2565
    Top = 570
    Width = 660
    Height = 240
    TabIndex = 6
    Alignment = 2 'Center
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
    Caption = "Occupied"
    Index = 5
    ForeColor = &HC00000&
    Left = 510
    Top = 570
    Width = 900
    Height = 240
    TabIndex = 5
    Alignment = 2 'Center
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
    Index = 6
    BackColor = &HFFFF&
    ForeColor = &H80000008&
    Left = 2025
    Top = 540
    Width = 1680
    Height = 315
    TabIndex = 4
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "Times New Roman"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Label3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 0
    Top = 0
    Width = 11970
    Height = 450
    TabIndex = 1
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &H80000008&
    Left = 165
    Top = 540
    Width = 1515
    Height = 315
    TabIndex = 3
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "Times New Roman"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 7
    BackColor = &HC0FFC0&
    ForeColor = &H80000008&
    Left = 4005
    Top = 540
    Width = 1395
    Height = 315
    TabIndex = 18
    BorderStyle = 1 'Fixed Single
    BeginProperty Font
      Name = "Times New Roman"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label LBLRoomName
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = -15
    Top = 480
    Width = 11970
    Height = 450
    TabIndex = 2
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

Attribute VB_Name = "RsPOSDisplay"

Private global_82 As Integer
Private global_104 As Integer

Private Sub FGridTb_UnknownEvent_E 'FA5870
  'Data Table: 535CB0
  Dim var_C0 As Variant
  Dim var_E0 As Long
  loc_FA570B: Me.CmdTBInfo.Width = CDbl(CLng(Me.FGridTb.CellWidth))
  loc_FA5739: Me.CmdTBInfo.Height = CDbl(CLng(Me.FGridTb.CellHeight))
  loc_FA5780: Me.CmdTBInfo.Left = (CDbl(Me.FGridTb.Left) + CDbl(CLng(Me.FGridTb.CellLeft)))
  loc_FA57CD: Me.CmdTBInfo.Top = (CDbl(Me.FGridTb.Top) + CDbl(CLng(Me.FGridTb.CellTop)))
  loc_FA57F5: var_C0 = CVar(CLng(Me.FGridTb.Row)) 'Long
  loc_FA57FA: var_E0 = 1
  loc_FA5825: Me.CmdTBInfo.Caption = CStr(Me.FGridTb.TextMatrix))
  loc_FA5849: Me.CmdTBInfo.Visible = True
  loc_FA5864: Me.CmdTBInfo.Drag 1
  loc_FA586C: Exit Sub
End Sub

Private Sub CmdRef_UnknownEvent_9 'DFDA44
  'Data Table: 535CB0
  loc_DFDA3C: Call CmdUnSBill_UnknownEvent_9()
  loc_DFDA41: Exit Sub
  loc_DFDA42: Set arg_386C = 
End Sub

Private Sub CmdUp_UnknownEvent_9 'EE3AC8
  'Data Table: 535CB0
  Dim var_A8 As Variant
  loc_EE3A23: If (CLng(Me.FGrid.Row) > 1) Then
  loc_EE3A3F:   var_A8 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_EE3A4E:   Me.FGrid.Row = var_A8
  loc_EE3A76:   var_A8 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_EE3A85:   Me.FGrid.ColSel = var_A8
  loc_EE3AB6:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_EE3AC5: End If
  loc_EE3AC5: Exit Sub
End Sub

Private Sub CmdDown_UnknownEvent_9 'F01F30
  'Data Table: 535CB0
  Dim var_BC As Variant
  loc_F01E8B: If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_F01EA7:   var_BC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_F01EB6:   Me.FGrid.Row = var_BC
  loc_F01EDE:   var_BC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_F01EED:   Me.FGrid.ColSel = var_BC
  loc_F01F1E:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_F01F2D: End If
  loc_F01F2D: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1C1B0
  'Data Table: 535CB0
  loc_E1C194: Call Proc_171_49_1751F50()
  loc_E1C1A5: Me.FrSettlement.Visible = False
  loc_E1C1AD: Exit Sub
End Sub

Private Sub Label2_Click(Index As Integer) '10200FC
  'Data Table: 535CB0
  Dim var_94 As Variant
  Dim var_A8 As CommonDialog
  Dim arg_20 As Variant
  Dim var_B8 As Variant
  Dim var_C0 As Label
  Dim var_D4 As String
  Dim unk_535CBA As Connection15
  loc_101FF1C: var_94 = 1
  loc_101FF26: Set var_A8 = Me.FGrid1
  loc_101FF41: arg_20 = Me.CDLG._Action
  loc_101FF6B: If (CLng(Me.CDLG.Color) = 0) Then
  loc_101FF6E:   Exit Sub
  loc_101FF6F: End If
  loc_101FF79: var_B8 = Me.CDLG.Color
  loc_101FF8C: Set var_BC = Me.Label2
  loc_101FF92: Call 0.Method_Label2_Click0 (Index, var_C0, CLng(var_B8))
  loc_101FF9A: var_C0.BackColor = arg_20
  loc_101FFE2: unk_535CBA.Execute "delete from Dispcolor where [index]=" & CStr(Index) & " and Logsite_Code='" & MemVar_1F92078 & "'", var_B8, -1
  loc_1020021: Set var_A8 = Me.CDLG
  loc_1020036: var_D4 = "Insert into DispColor([Index],[Color],Detail,Site_Code,U_EntDt,U_AE,LogSite_Code) values(" & CStr(Index) & ",'" & CStr(CLng(var_A8.Color))
  loc_102004D: Set var_BC = Me.Label1
  loc_1020053: Call 0.Method_Label2_Click0 (Index, var_C0, var_D8, var_D4 & "','", var_18C)
  loc_102005B: -1 = var_C0.Caption
  loc_102008A: Proc_6_7_F25D88(var_108, Date, CVar(var_190 & var_D8 & "','" & MemVar_1F92070 & "',"))
  loc_1020096: var_94 = ",'A','"
  loc_10200BC: unk_535CBA.Execute CStr(var_A8 & var_108 & var_94 & CVar(MemVar_1F92078) & "')"), FGrid1.DispID_18001, var_94
  loc_10200FA: Exit Sub
End Sub

Private Sub CmdUp2_Click() 'EE38C8
  'Data Table: 535CB0
  Dim var_A8 As Variant
  loc_EE3823: If (CLng(Me.FGrid2.Row) > 1) Then
  loc_EE383F:   var_A8 = CVar((CLng(Me.FGrid2.Row) - 1)) 'Long
  loc_EE384E:   Me.FGrid2.Row = var_A8
  loc_EE3876:   var_A8 = CVar((CLng(Me.FGrid2.Cols) - 1)) 'Long
  loc_EE3885:   Me.FGrid2.ColSel = var_A8
  loc_EE38B6:   Me.FGrid2.TopRow = CVar(CLng(Me.FGrid2.Row))
  loc_EE38C5: End If
  loc_EE38C5: Exit Sub
End Sub

Private Sub CmdDown2_Click() 'F025F0
  'Data Table: 535CB0
  Dim var_BC As Variant
  loc_F0254B: If (CLng(Me.FGrid2.Row) < (CLng(Me.FGrid2.Rows) - 1)) Then
  loc_F02567:   var_BC = CVar((CLng(Me.FGrid2.Row) + 1)) 'Long
  loc_F02576:   Me.FGrid2.Row = var_BC
  loc_F0259E:   var_BC = CVar((CLng(Me.FGrid2.Cols) - 1)) 'Long
  loc_F025AD:   Me.FGrid2.ColSel = var_BC
  loc_F025DE:   Me.FGrid2.TopRow = CVar(CLng(Me.FGrid2.Row))
  loc_F025ED: End If
  loc_F025ED: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_9 '11F5924
  'Data Table: 535CB0
  Dim var_88 As Variant
  Dim var_9A As Integer
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_148 As String
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_11F54C7: If (CLng(Me.FGrid2.Row) = 0) Then
  loc_11F54CA:   Exit Sub
  loc_11F54CB: End If
  loc_11F54D7: Me.FrameOption.Visible = False
  loc_11F5512: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_11F5529:   var_9A = CInt(CLng(Me.FGrid1.Col))
  loc_11F5535: Else
  loc_11F5574:   var_9A = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_11F5588: End If
  loc_11F559B: var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F55A4: var_E8 = CVar(CLng(var_9A)) 'Long
  loc_11F55DF: var_138 = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_11F55E7: var_148 = "VACANT"
  loc_11F5604: var_17C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F5610: var_19C = CVar(CLng((var_9A + 3))) 'Long
  loc_11F5663: If CBool(Not var_19C And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_11F5666: End If
  loc_11F568C: var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F56A8: var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_11F56EE: If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_11F5717:   var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F5733:   var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_11F5774:   var_A0.PTableNo = Trim(Left(CVar(CStr(Me.FGrid1.TextMatrix))), 5))
  loc_11F5793: Else
  loc_11F5793:   var_C8 = 1
  loc_11F579C:   var_E8 = 0
  loc_11F57CC:   var_A0.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_11F57DC: End If
  loc_11F57E2: var_C8 = CVar(global_52) 'String
  loc_11F57E9: var_A0.LocalRestCode = var_C8
  loc_11F57F1: Set var_88 = var_C8(var_E8)
  loc_11F582A: var_A0.oBookingDocId = CVar(CStr(Me.FGrid2.TextMatrix)))
  loc_11F5842: Set var_88 = CVar(CLng(var_A0.FGrid1.Row))(0)
  loc_11F587B: var_A0.oBookingNo = CVar(CStr(Me.FGrid2.TextMatrix)))
  loc_11F5893: Set var_88 = CVar(CLng(var_A0.FGrid2.Row))(1)
  loc_11F58A2: var_C8 = CVar(CLng(var_A0.FGrid2.Row)) 'Long
  loc_11F58A7: var_E8 = 2
  loc_11F58CC: var_A0.oCustName = CVar(CStr(Me.FGrid2.TextMatrix)))
  loc_11F58E0: var_C8 = 1
  loc_11F58EC: var_A0.OpenMode = var_C8
  loc_11F58FB: var_A0.Show var_C8, var_D8
  loc_11F5903: Call var_A0.TopCtrl1_eAdd
  loc_11F590C: Call var_A0.SetOnLineBookingDetail
  loc_11F5917: global_82 = &HFF
  loc_11F591F: Set var_A0 = Nothing
  loc_11F5922: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'F3D400
  'Data Table: 535CB0
  Dim var_98 As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_F3D30B: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_F3D30E:   Exit Sub
  loc_F3D30F: End If
  loc_F3D322: var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_F3D33A: var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_F3D371: If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_F3D374:   Exit Sub
  loc_F3D375: End If
  loc_F3D37F: var_98 = Me.FGrid1.Rows
  loc_F3D38E: var_BC = 1
  loc_F3D3CF: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_F3D3D2:   Exit Sub
  loc_F3D3D3: End If
  loc_F3D3E3: Me.FrameOption.ZOrder 0
  loc_F3D3F7: Me.FrameOption.Visible = True
  loc_F3D3FF: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_A(Index As Integer) 'E92978
  'Data Table: 535CB0
  loc_E92906: If (Index = &HD) Then
  loc_E92934:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E92937:     Call Fgrid1_UnknownEvent_9()
  loc_E9293C:   End If
  loc_E9296F:   If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_E92972:     Call Fgrid1_UnknownEvent_B()
  loc_E92977:   End If
  loc_E92977: End If
  loc_E92977: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '1340C40
  'Data Table: 535CB0
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_BC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_100 As Variant
  Dim var_10A As Integer
  Dim var_1A4 As Variant
  Dim var_124 As Variant
  Dim var_110 As Recordset15
  loc_134049F: var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13404B7: var_DC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_13404EE: If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_13404F1:   Exit Sub
  loc_13404F2: End If
  loc_13404FE: Me.FrameOption.Visible = False
  loc_1340539: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_1340550:   var_10A = CInt(CLng(Me.FGrid1.Col))
  loc_134055C: Else
  loc_134059B:   var_10A = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_13405AF: End If
  loc_13405C2: var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13405CB: var_DC = CVar(CLng(var_10A)) 'Long
  loc_13405DA: var_AC = Me.FGrid1.TextMatrix)
  loc_1340637: var_1A4 = CVar(CLng((var_10A + 3))) 'Long
  loc_1340686: If CBool(var_1A4 And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_1340693:   Set var_108 = New RsKOTEntry
  loc_134069D:   Set var_9C = Me.DGNCType
  loc_13406A3:   RsKOTEntry.DGNCType.DeleteRowLabels CVar(CLng(Me.FGrid1.Row)), (Right(Ucase(Trim(CVar(CStr(var_AC)))), 6) = "VACANT")
  loc_13406BF:   var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13406DB:   var_DC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_AC) + 1)) / CDbl(6)))))) 'Long
  loc_134071C:   var_108.PTableNo = Trim(Left(CVar(CStr(Me.FGrid1.TextMatrix))), 5))
  loc_1340745:   var_108.LocalRestCode = CVar(global_52)
  loc_1340749:   var_BC = 1
  loc_1340755:   var_108.OpenMode = var_BC
  loc_1340764:   var_108.Show var_BC, var_CC
  loc_134076C:   Call var_108.TopCtrl1_eAdd
  loc_1340777:   global_82 = &HFF
  loc_134077D: Else
  loc_13407B8:   If (CLng(Me.FGrid1.Col) < (CLng(Me.FGrid1.Cols) - 1)) Then
  loc_13407C6:     If (global_112 = "Y") Then
  loc_13407D3:       Set var_108 = New RsBookingEntry
  loc_13407DF:       var_1EC = global_88
  loc_13407EA:       If (var_1EC = "Outlet") Then
  loc_13407F1:         Set var_9C = Me.TxtMask
  loc_1340813:         var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_134082F:         var_DC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(RsBookingEntry.TxtMask.FontUnderline) + 1)) / CDbl(6)))))) 'Long
  loc_1340870:         var_108.PTableNo = Trim(Left(CVar(CStr(Me.FGrid1.TextMatrix))), 5))
  loc_134088F:       Else
  loc_1340897:         If (var_1EC = "Room Service") Then
  loc_13408A4:           var_AC = Me.FGrid1.Col
  loc_13408B1:           Set var_88 = Me.FGrid1
  loc_13408B7:           var_98 = var_88.Row
  loc_13408C0:           var_BC = CVar(CLng(var_98)) 'Long
  loc_13408DC:           var_DC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_AC) + 1)) / CDbl(6)))))) 'Long
  loc_13408EB:           var_100 = Me.FGrid1.TextMatrix)
  loc_1340900:           var_124 = CVar(CStr(var_100)) 'String
  loc_134091D:           var_108.PTableNo = Trim(Right(var_124, 8))
  loc_1340939:         End If
  loc_1340939:       End If
  loc_1340946:       var_108.LocalRestCode = CVar(global_52)
  loc_1340971:       var_108.Connection15.Execute "Select V_Type from Voucher_Type Where Ncat='ORDER' and  RestCode='" & global_52 & "'", var_98, -1
  loc_134097C:       Set var_110 = var_88
  loc_13409A0:       If (var_110.RecordCount > 0) Then
  loc_13409CA:         var_108.oVType = CVar(var_110.Fields.Item("V_Type"))
  loc_13409D7:       Else
  loc_13409F0:         MsgBox("Contact to your S/w vendor", &H40, var_AC, var_100, var_124)
  loc_1340A00:         Exit Sub
  loc_1340A01:       End If
  loc_1340A01:       var_BC = 1
  loc_1340A0D:       var_108.OpenMode = var_BC
  loc_1340A1C:       var_108.Show var_BC, var_CC
  loc_1340A24:       Call var_108.TopCtrl1_eAdd
  loc_1340A2F:       global_82 = &HFF
  loc_1340A35:     Else
  loc_1340A3F:       Set var_114 = New RSSaleBill
  loc_1340A4B:       var_1F8 = global_88
  loc_1340A56:       If (var_1F8 = "Outlet") Then
  loc_1340A7F:         var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1340A9B:         var_DC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_1340ADC:         var_114.PTableNo = Trim(Left(CVar(CStr(Me.FGrid1.TextMatrix))), 5))
  loc_1340AFB:       Else
  loc_1340B03:         If (var_1F8 = "Room Service") Then
  loc_1340B10:           var_AC = Me.FGrid1.Col
  loc_1340B2C:           var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1340B48:           var_DC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_AC) + 1)) / CDbl(6)))))) 'Long
  loc_1340B57:           var_100 = Me.FGrid1.TextMatrix)
  loc_1340B6C:           var_124 = CVar(CStr(var_100)) 'String
  loc_1340B89:           var_114.PTableNo = Trim(Right(var_124, 8))
  loc_1340BA5:         End If
  loc_1340BA5:       End If
  loc_1340BB2:       var_114.LocalRestCode = CVar(global_52)
  loc_1340BB6:       var_BC = 1
  loc_1340BC2:       var_114.OpenMode = var_BC
  loc_1340BD1:       var_114.Show var_BC, var_CC
  loc_1340BD9:       Call var_114.TopCtrl1_eAdd
  loc_1340BE4:       global_82 = &HFF
  loc_1340BE7:     End If
  loc_1340BEA:   Else
  loc_1340C03:     MsgBox("Select A Table", &H40, var_AC, var_100, var_124)
  loc_1340C13:   End If
  loc_1340C13: End If
  loc_1340C18: Set var_108 = Nothing
  loc_1340C20: Set var_114 = Nothing
  loc_1340C2E: Set global_56 = Nothing
  loc_1340C3A: Set var_110 = Nothing
  loc_1340C3D: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_C(Index As Integer) 'E59A98
  'Data Table: 535CB0
  loc_E59A5E: If (Index = &HD) Then
  loc_E59A8C:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E59A8F:     Call Fgrid1_UnknownEvent_9()
  loc_E59A94:   End If
  loc_E59A94: End If
  loc_E59A94: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_10 'FB4C98
  'Data Table: 535CB0
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_FC As String
  Dim var_12C As Variant
  Dim var_14C As Variant
  loc_FB4B18: Set var_88 = Me.FGrid1
  loc_FB4B2C: var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB4B3D: var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB4B50: var_FC = CStr(var_88.TextMatrix))
  loc_FB4BC2: If (CVar(CLng(var_88.Row)) And (InStr(CVar(CLng(var_88.Col)), CStr(var_88.TextMatrix)), "Vacant", 0) = 0)) Then
  loc_FB4BD1:   var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB4BE2:   var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB4C02:   var_12C = CVar(CLng(var_88.Row)) 'Long
  loc_FB4C13:   var_14C = CVar(CLng(var_88.Col)) 'Long
  loc_FB4C50:   var_1B0 = Mid(CVar(CStr(var_88.TextMatrix))), (InStr(1, CStr(var_88.TextMatrix)), vbCrLf, 0) + 2), var_1A0)
  loc_FB4C60:   var_88.ToolTipText = CVar(CStr(var_1B0))
  loc_FB4C82: Else
  loc_FB4C8B:   var_88.ToolTipText = vbNullString
  loc_FB4C90: End If
  loc_FB4C92: Set var_88 = Nothing 
  loc_FB4C96: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 '14309DC
  'Data Table: 535CB0
  Dim var_164 As Boolean
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As Variant
  Dim var_1B8 As Integer
  Dim var_154 As Variant
  Dim unk_535CBA As Connection15
  Dim var_1A8 As Fields15
  Dim var_1FC As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_2C8 As Variant
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_394 As Variant
  Dim var_3CC As Variant
  Dim var_3EC As Variant
  loc_142FFD7: var_164 = ((CLng(Me.FGrid1.ColSel) Mod 6) = 0)
  loc_142FFEE: var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143005A: If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_1430070:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143008E:   var_F0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_143009D:   var_C0 = Me.FGrid1.TextMatrix)
  loc_14300CB:   var_1B8 = 0
  loc_1430100:   var_154 = CVar("Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "') and TYPE='" & global_100 & "' AND LTrim(RTrim(code))='") 'String
  loc_143011D:   unk_535CBA.Execute CStr(var_154 & Trim(Left(CVar(CStr(var_C0)), 5)) & "'"), var_1A4, -1
  loc_1430125:   var_104 = var_104.Fields
  loc_143012D:   var_1B8 = var_1A8.Item(var_1A8)
  loc_1430151:   var_1FC = CVar(Proc_6_38_E68A98(CVar(var_1BC), var_1BC, var_C0, CVar(CLng(Me.FGrid1.Col)))) & Space(5) 
  loc_1430168:   var_234 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1430186:   var_254 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_14301C2:   var_2C8 = var_254 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14301D9:   var_300 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14301F7:   var_320 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_1430233:   var_394 = var_320 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_143024A:   var_3CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1430268:   var_3EC = CVar((CLng(Me.FGrid1.Col) + 5)) 'Long
  loc_14302A2:   Me.LBLRoomName1.Caption = CStr(var_3EC & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_143032A:   Me.LBLRoomName1.Refresh
  loc_1430335: Else
  loc_143035A:   var_164 = (((CLng(Me.FGrid1.ColSel) - 1) Mod 6) = 0)
  loc_1430371:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14303DD:   If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_1430411:     var_F0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1430420:     var_C0 = Me.FGrid1.TextMatrix)
  loc_143044E:     var_1B8 = 0
  loc_1430483:     var_154 = CVar("Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "') and TYPE='" & global_100 & "' AND LTrim(RTrim(code))='") 'String
  loc_14304A0:     unk_535CBA.Execute CStr(var_154 & Trim(Left(CVar(CStr(var_C0)), 5)) & "'"), var_1A4, -1
  loc_14304A8:     var_104 = var_104.Fields
  loc_14304B0:     var_1B8 = var_1A8.Item(var_1A8)
  loc_14304D4:     var_1FC = CVar(Proc_6_38_E68A98(CVar(var_1BC), var_1BC, var_C0, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)))) & Space(5) 
  loc_14304EB:     var_234 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1430509:     var_254 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1430545:     var_2C8 = var_254 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_143055C:     var_300 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_143057A:     var_320 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_14305B4:     Me.LBLRoomName1.Caption = CStr(var_320 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1430626:     Me.LBLRoomName1.Refresh
  loc_1430631:   Else
  loc_1430656:     var_164 = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_143066D:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14306D9:     If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_143070D:       var_F0 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_143071C:       var_C0 = Me.FGrid1.TextMatrix)
  loc_143074A:       var_1B8 = 0
  loc_143077F:       var_154 = CVar("Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "') and TYPE='" & global_100 & "' AND LTrim(RTrim(code))='") 'String
  loc_143079C:       unk_535CBA.Execute CStr(var_154 & Trim(Left(CVar(CStr(var_C0)), 5)) & "'"), var_1A4, -1
  loc_14307A4:       var_104 = var_104.Fields
  loc_14307AC:       var_1B8 = var_1A8.Item(var_1A8)
  loc_14307D0:       var_1FC = CVar(Proc_6_38_E68A98(CVar(var_1BC), var_1BC, var_C0, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)))) & Space(5) 
  loc_14307E7:       var_234 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1430805:       var_254 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1430841:       var_2C8 = var_254 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1430858:       var_300 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1430876:       var_320 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_14308B2:       var_394 = var_320 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14308C9:       var_3CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14308E7:       var_3EC = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1430921:       Me.LBLRoomName1.Caption = CStr(var_3EC & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_14309A9:       Me.LBLRoomName1.Refresh
  loc_14309B4:     Else
  loc_14309C1:       Me.LBLRoomName1.Caption = vbNullString
  loc_14309D3:       Me.LBLRoomName1.Refresh
  loc_14309DB:     End If
  loc_14309DB:   End If
  loc_14309DB: End If
  loc_14309DB: Exit Sub
End Sub

Private Sub cmdPrintPKOT_UnknownEvent_9 'EF1818
  'Data Table: 535CB0
  Dim var_90 As String
  Dim unk_535CBA As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  loc_EF1772: var_90 = "Select DOCID from KOT Where ISNULL(PrintFlag,'')='N' AND Printed<>'Y' AND PENDING='Y' And RestCode='" & global_52 & "' Group By DocId"
  loc_EF177B: unk_535CBA.Execute var_90, var_B0, -1
  loc_EF1786: Set var_88 = var_B4
  loc_EF1796: ' Referenced from: EF17F1
  loc_EF17A5: If Not(var_88.EOF) Then
  loc_EF17D7:   Proc_260_21_1E6A5E0(CStr(var_88.Fields.Item("DocID").Value))
  loc_EF17EC:   var_88.MoveNext
  loc_EF17F1:   GoTo loc_EF1796
  loc_EF17F4: End If
  loc_EF1801: Set var_B4 = Me.cmdPrintPKOT
  loc_EF1807: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_2D(&H800080)
  loc_EF1814: Set var_88 = Nothing
  loc_EF1817: Exit Sub
End Sub

Private Sub CmdPKOT_UnknownEvent_9 '11D4E5C
  'Data Table: 535CB0
  Dim var_86 As Integer
  Dim var_A8 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_148 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_18C As Variant
  loc_11D4A1C: Me.FrameOption.Visible = False
  loc_11D4A57: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_11D4A6E:   var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_11D4A7A: Else
  loc_11D4AB9:   var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_11D4ACD: End If
  loc_11D4AE0: var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D4AE9: var_E8 = CVar(CLng(var_86)) 'Long
  loc_11D4B24: var_138 = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_11D4B2C: var_148 = "VACANT"
  loc_11D4B49: var_17C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D4B55: var_19C = CVar(CLng((var_86 + 3))) 'Long
  loc_11D4BA8: If CBool(Not var_19C And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_11D4BB3:   If (MemVar_1F9220C = "Yes") Then
  loc_11D4BBA:     Set var_8C = New RsTouchScreenKOTEntry
  loc_11D4BC0:   Else
  loc_11D4BC4:     Set var_8C = New RsKOTEntry
  loc_11D4BC7:   End If
  loc_11D4BDF:   var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D4BEB:   var_E8 = CVar(CLng((var_86 + 2))) 'Long
  loc_11D4C37:   If CBool(InStr(var_E8, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), ",", 0)) Then
  loc_11D4C4D:     var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D4C59:     var_E8 = CVar(CLng((var_86 + 2))) 'Long
  loc_11D4C8C:     var_148 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D4C98:     var_18C = CVar(CLng((var_86 + 2))) 'Long
  loc_11D4CD3:     var_16C = (InStr(var_18C, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), ",", 0) - 1)
  loc_11D4CF9:     var_8C.PSteward = Mid(CVar(CStr(Me.FGrid1.TextMatrix))), 1, Me.FGrid1.Row)
  loc_11D4D22:   Else
  loc_11D4D35:     var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D4D41:     var_E8 = CVar(CLng((var_86 + 2))) 'Long
  loc_11D4D62:     var_8C.PSteward = CVar(CStr(Me.FGrid1.TextMatrix)))
  loc_11D4D76:   End If
  loc_11D4D7A:   Set var_A8 = var_C8(var_E8)
  loc_11D4D9C:   var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11D4DB8:   var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_8C.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_11D4DF9:   var_8C.PTableNo = Trim(Left(CVar(CStr(Me.FGrid1.TextMatrix))), 5))
  loc_11D4E22:   var_8C.LocalRestCode = CVar(global_52)
  loc_11D4E2F:   var_8C.OpenType = "Pending KOT"
  loc_11D4E3F:   var_8C.OpenMode = 1
  loc_11D4E46:   Call var_8C.Show
  loc_11D4E51:   global_82 = &HFF
  loc_11D4E54: End If
  loc_11D4E56: Set var_8C = Nothing 
  loc_11D4E5A: Exit Sub
End Sub

Private Sub CmdOrderBook_UnknownEvent_9 '1139954
  'Data Table: 535CB0
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_86 As Integer
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_14C As String
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_11C As Variant
  Dim var_8C As Recordset15
  loc_113960C: Me.FrameOption.Visible = False
  loc_1139647: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_113965E:   var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_113966A: Else
  loc_11396A9:   var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_11396BD: End If
  loc_11396D0: var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11396D9: var_EC = CVar(CLng(var_86)) 'Long
  loc_1139714: var_13C = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_113971C: var_14C = "VACANT"
  loc_1139739: var_180 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1139745: var_1A0 = CVar(CLng((var_86 + 3))) 'Long
  loc_1139798: If CBool(Not var_1A0 And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_11397A5:   Set var_90 = New RsBookingEntry
  loc_11397AF:   Set var_AC = Me.TxtMask
  loc_11397B5:   var_BC = RsBookingEntry.TxtMask.FontUnderline
  loc_11397C2:   Set var_94 = Me.FGrid1
  loc_11397C8:   var_A4 = var_94.Row
  loc_11397D1:   var_CC = CVar(CLng(var_A4)) 'Long
  loc_11397ED:   var_EC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_BC) + 1)) / CDbl(6)))))) 'Long
  loc_11397FC:   var_10C = Me.FGrid1.TextMatrix)
  loc_1139811:   var_11C = CVar(CStr(var_10C)) 'String
  loc_113982E:   var_90.PTableNo = Trim(Left(var_11C, 5))
  loc_1139857:   var_90.LocalRestCode = CVar(global_52)
  loc_1139882:   var_90.Connection15.Execute "Select V_Type from Voucher_Type Where Ncat='ORDER' and  RestCode='" & global_52 & "'", var_A4, -1
  loc_113988D:   Set var_8C = var_94
  loc_11398B1:   If (var_8C.RecordCount > 0) Then
  loc_11398DB:     var_90.oVType = CVar(var_8C.Fields.Item("V_Type"))
  loc_11398E8:   Else
  loc_1139901:     MsgBox("Contact to your S/w vendor", &H40, var_BC, var_10C, var_11C)
  loc_1139911:     Exit Sub
  loc_1139912:   End If
  loc_1139912:   var_CC = 1
  loc_113991E:   var_90.OpenMode = var_CC
  loc_113992D:   var_90.Show var_CC, var_DC
  loc_1139935:   Call var_90.TopCtrl1_eAdd
  loc_1139940:   global_82 = &HFF
  loc_1139943: End If
  loc_1139948: Set var_90 = Nothing
  loc_1139950: Set var_8C = Nothing
  loc_1139953: Exit Sub
End Sub

Private Sub cmdCancel_UnknownEvent_9 'E1B1F0
  'Data Table: 535CB0
  loc_E1B1E4: Me.FrameOption.Visible = False
  loc_E1B1EC: Exit Sub
End Sub

Private Sub CmdAKOT_UnknownEvent_9 '12C262C
  'Data Table: 535CB0
  Dim var_98 As Variant
  Dim var_D4 As Integer
  Dim var_9C As String
  Dim unk_535CBA As Connection15
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_86 As Integer
  Dim var_15C As Variant
  Dim var_18C As Variant
  Dim var_128 As Variant
  Dim var_1D0 As Variant
  loc_12C1FFC: Me.FrameOption.Visible = False
  loc_12C200A: var_D4 = 0
  loc_12C2037: unk_535CBA.Execute "Select count(*) from Waiter where logsite_code='" & MemVar_1F92078 & "' or ActiveYN=''And ActiveYN='Yes'", var_C0, -1
  loc_12C203F: var_98 = var_98.Fields
  loc_12C2047: var_D4 = var_C4.Item(var_C4)
  loc_12C204F: var_D8 = var_D8.Value
  loc_12C2076: If (var_E8 = 0) Then
  loc_12C2092:   MsgBox("No Steward Define For this Outlet.", &H40, var_E8, var_108, var_128)
  loc_12C20A2:   Exit Sub
  loc_12C20A3: End If
  loc_12C20AB: If (MemVar_1F9220C = "Yes") Then
  loc_12C20B2:   Set var_8C = New RsTouchScreenKOTEntry
  loc_12C20B8: Else
  loc_12C20BC:   Set var_8C = New RsKOTEntry
  loc_12C20BF: End If
  loc_12C20DA: If (Me.PicContainer.Visible = 0) Then
  loc_12C20F0:   var_B0 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_12C2108:   var_F8 = CVar(CLng(Me.FGrid1.ColSel)) 'Long
  loc_12C213F:   If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_12C2175:     If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_12C218C:       var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_12C2198:     Else
  loc_12C21D7:       var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_12C21EB:     End If
  loc_12C21FE:     var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C2207:     var_F8 = CVar(CLng(var_86)) 'Long
  loc_12C2268:     If (Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6) = "VACANT") Then
  loc_12C2274:       var_8C.PSteward = vbNullString
  loc_12C227B:     Else
  loc_12C2293:       var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C229F:       var_F8 = CVar(CLng((var_86 + 2))) 'Long
  loc_12C22EB:       If CBool(InStr(var_F8, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), ",", 0)) Then
  loc_12C2301:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C230D:         var_F8 = CVar(CLng((var_86 + 2))) 'Long
  loc_12C2340:         var_15C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C234C:         var_18C = CVar(CLng((var_86 + 2))) 'Long
  loc_12C2387:         var_1D0 = (InStr(var_18C, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), ",", 0) - 1)
  loc_12C23AD:         var_8C.PSteward = Mid(CVar(CStr(Me.FGrid1.TextMatrix))), 1, var_1D0)
  loc_12C23D6:       Else
  loc_12C23E9:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C23F5:         var_F8 = CVar(CLng((var_86 + 2))) 'Long
  loc_12C2416:         var_8C.PSteward = CVar(CStr(Me.FGrid1.TextMatrix)))
  loc_12C242A:       End If
  loc_12C242A:     End If
  loc_12C242E:     Set var_C4 = var_B0(var_F8)
  loc_12C2450:     var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C246C:     var_F8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_8C.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_12C247B:     var_108 = Me.FGrid1.TextMatrix)
  loc_12C24AD:     var_8C.PTableNo = Trim(Left(CVar(CStr(var_108)), 5))
  loc_12C24D6:     var_8C.LocalRestCode = CVar(global_52)
  loc_12C24E6:     var_8C.OpenMode = 1
  loc_12C24ED:     Call var_8C.Show
  loc_12C24F6:     Call var_8C.TopCtrl1_eAdd
  loc_12C2501:     global_82 = &HFF
  loc_12C2504:   End If
  loc_12C2507: Else
  loc_12C2514:   var_9C = Me.FrameOption.Tag
  loc_12C252E:   var_8C.PTableNo = Trim(CVar(var_9C))
  loc_12C2545:   Set var_98 = 1(var_92)
  loc_12C2561:   For var_214 = var_108 To CInt((CLng(FrameOption.DispID_4) - 1)):   global_82 = var_214 'Integer
  loc_12C2570:     var_F8 = 1
  loc_12C257D:     Set var_98 = CVar(CLng(var_92))(var_F8)
  loc_12C2598:     Set var_C4 = CStr(FrameOption.DispID_41)(var_9C)
  loc_12C259E:     var_108 = var_8C.Frame.Tag
  loc_12C25B9:     If (var_F8 = var_9C) Then
  loc_12C25CF:       Me.FGridTb.Row = CVar(CLng(var_92))
  loc_12C25D7:       Exit For
  loc_12C25DA:     End If
  loc_12C25DD:   Next var_214 'Integer
  loc_12C25E2:   ' Referenced from:   12C25D7
  loc_12C25EB:   var_8C.PSteward = vbNullString
  loc_12C25FC:   var_8C.LocalRestCode = CVar(global_52)
  loc_12C260C:   var_8C.OpenMode = 1
  loc_12C2613:   Call var_8C.Show
  loc_12C261C:   Call var_8C.TopCtrl1_eAdd
  loc_12C2627:   global_82 = &HFF
  loc_12C262A: End If
  loc_12C262A: Exit Sub
End Sub

Private Sub CmdChngTable_UnknownEvent_9 '10B4020
  'Data Table: 535CB0
  Dim var_90 As Variant
  Dim var_94 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_86 As Integer
  Dim var_10C As MSHFlexGrid
  loc_10B3D70: Me.FrameOption.Visible = False
  loc_10B3D80: If (MemVar_1F9220C = "Yes") Then
  loc_10B3D87:   Set var_8C = New RsTbChange
  loc_10B3D8D: Else
  loc_10B3D91:   Set var_8C = New RsTbChange
  loc_10B3D94: End If
  loc_10B3D98: Set var_94 = Me.FGrid1
  loc_10B3DA7: var_C4 = CVar(CLng(var_94.RowSel)) 'Long
  loc_10B3DB8: var_E4 = CVar(CLng(var_94.ColSel)) 'Long
  loc_10B3DDF: If (CStr(var_94.TextMatrix)) <> vbNullString) Then
  loc_10B3E15:   If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_10B3E2C:     var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_10B3E38:   Else
  loc_10B3E77:     var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_10B3E8B:   End If
  loc_10B3E9E:   var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10B3EA7:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_10B3F10:   If CBool(Not (Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6) = "VACANT")) Then
  loc_10B3F17:     Set var_10C = Me.FGrid1
  loc_10B3F1D:     var_B4 = var_10C.Col
  loc_10B3F39:     var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10B3F55:     var_E4 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_B4) + 1)) / CDbl(6)))))) 'Long
  loc_10B3F64:     var_104 = Me.FGrid1.TextMatrix)
  loc_10B3F96:     var_8C.PTableNo = Trim(Left(CVar(CStr(var_104)), 5))
  loc_10B3FB8:     var_C4 = CVar(global_52) 'String
  loc_10B3FBF:     var_8C.LocalRestCode = var_C4
  loc_10B3FCF:     Set var_90 = var_10C(6)
  loc_10B3FD5:     Call 0.Method_CmdChngTable_UnknownEvent_90 (var_174, var_104, var_E4, var_C4, var_B4, var_E4)
  loc_10B3FDD:     var_C4 = var_8C.Label.BackColor
  loc_10B3FED:     var_8C.TVacantColor = CVar(var_174)
  loc_10B4004:     var_8C.OpenMode = 1
  loc_10B400B:     Call var_8C.Show
  loc_10B4016:     global_82 = &HFF
  loc_10B4019:   End If
  loc_10B4019: End If
  loc_10B401B: Set var_94 = Nothing 
  loc_10B401F: Exit Sub
End Sub

Private Sub CmdBillLookup_UnknownEvent_9 '107406C
  'Data Table: 535CB0
  Dim var_90 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_86 As Integer
  loc_1073E04: Me.FrameOption.Visible = False
  loc_1073E10: Set var_8C = New RSSaleBillDisplay
  loc_1073E17: Set var_94 = ()
  loc_1073E5E: If (CStr(FrameOption.DispID_41) <> vbNullString) Then
  loc_1073E65:   Set var_90 = CVar(CLng(FrameOption.DispID_C))(CVar(CLng(FrameOption.DispID_D)))
  loc_1073E94:   If ((CLng(Val(CStr(CLng(FrameOption.DispID_B)))) Mod 6) = 1) Then
  loc_1073E9B:     Set var_90 = ()
  loc_1073EAB:     var_86 = CInt(CLng(FrameOption.DispID_B))
  loc_1073EB7:   Else
  loc_1073EF6:     var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_1073F0A:   End If
  loc_1073F1D:   var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1073F26:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_1073F8F:   If CBool(Not (Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6) = "VACANT")) Then
  loc_1073FB8:     var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1073FD4:     var_E4 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_1074015:     var_8C.PTableNo = Trim(Left(CVar(CStr(Me.FGrid1.TextMatrix))), 5))
  loc_107403E:     var_8C.LocalRestCode = CVar(global_52)
  loc_107404E:     var_8C.OpenMode = 1
  loc_1074055:     Call var_8C.Show
  loc_1074060:     global_82 = &HFF
  loc_1074063:   End If
  loc_1074063: End If
  loc_1074065: Set var_94 = Nothing 
  loc_1074069: Exit Sub
End Sub

Private Sub CmdSBill_UnknownEvent_9 '1139D28
  'Data Table: 535CB0
  Dim var_90 As Variant
  Dim var_86 As Integer
  Dim var_A8 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_148 As String
  Dim var_15C As MSHFlexGrid
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_11399DC: Me.FrameOption.Visible = False
  loc_1139A17: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_1139A2E:   var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_1139A3A: Else
  loc_1139A79:   var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_1139A8D: End If
  loc_1139AA0: var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1139AA9: var_E8 = CVar(CLng(var_86)) 'Long
  loc_1139AB8: var_B8 = Me.FGrid1.TextMatrix)
  loc_1139AC3: var_108 = CVar(CStr(var_B8)) 'String
  loc_1139AE4: var_138 = Right(Ucase(Trim(var_108)), 6)
  loc_1139AEC: var_148 = "VACANT"
  loc_1139B09: var_17C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1139B15: var_19C = CVar(CLng((var_86 + 3))) 'Long
  loc_1139B68: If CBool(Not var_19C And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_1139B75:   Set var_8C = New RSSaleBill
  loc_1139B81:   var_1F4 = global_88
  loc_1139B8C:   If (var_1F4 = "Outlet") Then
  loc_1139B93:     Set var_A8 = Me.FrCtrl
  loc_1139BA6:     Set var_90 = Me.FrCtrl
  loc_1139BB5:     var_C8 = CVar(CLng(FrCtrl.DispID_A)) 'Long
  loc_1139BD1:     var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_B8) + 1)) / CDbl(6)))))) 'Long
  loc_1139BDA:     Set var_15C = Me.FrCtrl
  loc_1139C12:     var_8C.PTableNo = Trim(Left(CVar(CStr(var_108)), 5))
  loc_1139C31:   Else
  loc_1139C39:     If (var_1F4 = "Room Service") Then
  loc_1139C62:       var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1139C7E:       var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_1139CBF:       var_8C.PTableNo = Trim(Right(CVar(CStr(Me.FGrid1.TextMatrix))), 8))
  loc_1139CDB:     End If
  loc_1139CDB:   End If
  loc_1139CE8:   var_8C.LocalRestCode = CVar(global_52)
  loc_1139CEC:   var_C8 = 1
  loc_1139CF8:   var_8C.OpenMode = var_C8
  loc_1139D07:   var_8C.Show var_C8, var_D8
  loc_1139D0F:   Call var_8C.TopCtrl1_eAdd
  loc_1139D1A:   global_82 = &HFF
  loc_1139D1D: End If
  loc_1139D22: Set var_8C = Nothing
  loc_1139D25: Exit Sub
End Sub

Private Sub Command1_Click() '12A3B4C
  'Data Table: 535CB0
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim var_A8 As Variant
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_C0 As Variant
  Dim var_86 As Integer
  loc_12A3530: Call Proc_171_50_1685904()
  loc_12A3537: var_88 = 6
  loc_12A353C: var_8A = 6
  loc_12A3548: Set var_90 = Me.BtnEnTb
  loc_12A354E: Call 0.Method_Command1_Click0 (0, var_94)
  loc_12A3556: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005(var_8A)
  loc_12A356F: Me.PicContent.Width = (CDbl(var_88) * CDbl(var_8A))
  loc_12A3589: Set var_90 = Me.BtnEnTb
  loc_12A358F: Call 0.Method_Command1_Click0 (0)
  loc_12A3597: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006(var_94)
  loc_12A35B0: Me.PicContent.Height = (CDbl() * CDbl(var_88))
  loc_12A35CA: Set var_90 = Me.BtnEnTb
  loc_12A35D0: Call 0.Method_Command1_Click0 (0)
  loc_12A35D8: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005(var_94)
  loc_12A35F0: Me.PicContainer.Width = (CDbl() * CDbl(5))
  loc_12A360A: Set var_90 = Me.BtnEnTb
  loc_12A3610: Call 0.Method_Command1_Click0 (0)
  loc_12A3618: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006(var_94)
  loc_12A3630: Me.PicContainer.Height = (CDbl() * CDbl(5))
  loc_12A3660: Me.HScroll1.Left = Me.PicContainer.Left
  loc_12A36A6: Me.HScroll1.Top = ((Me.PicContainer.Top + Me.PicContainer.Height) + CDbl(&H32))
  loc_12A36D3: Me.HScroll1.Width = Me.PicContainer.Width
  loc_12A3719: Me.VScroll1.Left = ((Me.PicContainer.Left + Me.PicContainer.Width) + CDbl(&H32))
  loc_12A3746: Me.VScroll1.Top = Me.PicContainer.Top
  loc_12A376B: Set var_94 = Me.VScroll1
  loc_12A3771: var_94.Height = Me.PicContainer.Height
  loc_12A378A: Set var_90 = Me.BtnEnTb
  loc_12A3790: Call 0.Method_Command1_Click0 (0, var_94)
  loc_12A3798: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(True)
  loc_12A37B0: Set var_90 = Me.BtnEnTb
  loc_12A37B6: Call 0.Method_Command1_ClickC (var_D2, var_86)
  loc_12A37C4: For var_D6 =  To (var_D2 - 1): 1 = var_D6 'Integer
  loc_12A37D4:   Set var_90 = Me.BtnEnTb
  loc_12A37DA:   Call 0.Method_Command1_Click0 (var_86)
  loc_12A37EB:   Me.BtnEnTb.Unload var_94
  loc_12A37FA: Next var_D6 'Integer
  loc_12A3801: var_86 = 0
  loc_12A3804: ' Referenced from: 12A3A95
  loc_12A380F: If (var_86 < (var_88 * var_8A)) Then
  loc_12A3825:   Set var_90 = Me.BtnEnTb
  loc_12A382B:   Call 0.Method_Command1_Click0 (var_86, var_94)
  loc_12A3833:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(CVar(CStr(var_86)))
  loc_12A3855:   Set var_90 = Me.BtnEnTb
  loc_12A385B:   Call 0.Method_Command1_Click0 (var_86, var_94)
  loc_12A3863:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B(CVar(CStr(var_86)))
  loc_12A3878:   var_86 = (var_86 + 1)
  loc_12A3885:   Set var_90 = Me.BtnEnTb
  loc_12A388B:   Call 0.Method_Command1_Click0 (var_86, var_94)
  loc_12A389C:   Me.BtnEnTb.Load var_94
  loc_12A38B6:   Set var_90 = Me.BtnEnTb
  loc_12A38BC:   Call 0.Method_Command1_Click0 (var_86, var_94, True)
  loc_12A38C4:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(var_86)
  loc_12A38DA:   If ((var_86 Mod var_88) = 0) Then
  loc_12A38EA:     Set var_A8 = Me.BtnEnTb
  loc_12A38F0:     Call 0.Method_Command1_Click0 ((var_86 - 1), var_DC)
  loc_12A38F8:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005(var_86)
  loc_12A390E:     Set var_90 = Me.BtnEnTb
  loc_12A3914:     Call 0.Method_Command1_Click0 ((var_86 - 1))
  loc_12A391C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(var_94)
  loc_12A392B:     var_C0 = CVar((CDbl() + CDbl(var_EC))) 'Single
  loc_12A393A:     Set var_F0 = Me.BtnEnTb
  loc_12A3940:     Call 0.Method_Command1_Click0 (var_86, var_F4)
  loc_12A3948:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(True)
  loc_12A3971:     Set var_90 = Me.BtnEnTb
  loc_12A3977:     Call 0.Method_Command1_Click0 ((var_86 - var_88))
  loc_12A397F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(var_94)
  loc_12A3997:     Set var_A8 = Me.BtnEnTb
  loc_12A399D:     Call 0.Method_Command1_Click0 (var_86, var_DC)
  loc_12A39A5:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl()))
  loc_12A39BB:   Else
  loc_12A39C8:     Set var_90 = Me.BtnEnTb
  loc_12A39CE:     Call 0.Method_Command1_Click0 ((var_86 - 1))
  loc_12A39D6:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(var_94)
  loc_12A39EE:     Set var_A8 = Me.BtnEnTb
  loc_12A39F4:     Call 0.Method_Command1_Click0 (var_86, var_DC)
  loc_12A39FC:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl()))
  loc_12A3A1C:     Set var_A8 = Me.BtnEnTb
  loc_12A3A22:     Call 0.Method_Command1_Click0 ((var_86 - 1))
  loc_12A3A2A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006(var_DC)
  loc_12A3A40:     Set var_90 = Me.BtnEnTb
  loc_12A3A46:     Call 0.Method_Command1_Click0 ((var_86 - 1))
  loc_12A3A4E:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(var_94)
  loc_12A3A5D:     var_C0 = CVar((CDbl() + CDbl(var_EC))) 'Single
  loc_12A3A6C:     Set var_F0 = Me.BtnEnTb
  loc_12A3A72:     Call 0.Method_Command1_Click0 (var_86, var_F4)
  loc_12A3A7A:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl()))
  loc_12A3A95:   End If
  loc_12A3A95:   GoTo loc_12A3804
  loc_12A3A98: End If
  loc_12A3AA4: Me.HScroll1.Min = 0
  loc_12A3AB8: Me.VScroll1.Min = 0
  loc_12A3AF6: Me.HScroll1.Max = CInt((Me.PicContent.Width - Me.PicContainer.Width))
  loc_12A3B3A: Me.VScroll1.Max = CInt((Me.PicContent.Height - Me.PicContainer.Height))
  loc_12A3B48: Exit Sub
End Sub

Private Sub Form_Load() '127A2C0
  'Data Table: 535CB0
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_8A As Integer
  Dim var_AC As Variant
  Dim var_E0 As Variant
  Dim var_B4 As String
  Dim unk_535CBA As Connection15
  Dim var_88 As Recordset15
  Dim var_D0 As Variant
  Dim var_104 As Variant
  Dim var_10C As Variant
  Dim var_B8 As String
  Dim var_BC As String
  loc_1279D28: On Error Goto loc_127A27A
  loc_1279D32: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1279D4A: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1279D65: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1279D80: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1279D96: Me.FrSettlement.BackColor = CLng(MemVar_1F921B0)
  loc_1279DB1: Me.FGrid1.Top = CVar(CDbl(925))
  loc_1279DC5: Set var_B0 = Me.FGrid1
  loc_1279DCB: var_B0.Left = CVar(CDbl(&HA))
  loc_1279DD8: var_BC = 0
  loc_1279DE3: var_B8 = 0
  loc_1279E05: var_8A = Proc_96_17_FDBD80(global_52, global_88, 0)
  loc_1279E17: var_C0 = global_88
  loc_1279E22: If (var_C0 = "Outlet") Then
  loc_1279E2B:   global_100 = "TB"
  loc_1279E32: Else
  loc_1279E3A:   If (var_C0 = "Room Service") Then
  loc_1279E43:     global_100 = "RO"
  loc_1279E47:   End If
  loc_1279E47: End If
  loc_1279E64: Proc_6_17_EAA2B0(var_D0, MemVar_1F92078, "Select * From Enviro WHERE LOGSITE_CODE=", var_100, -1)
  loc_1279E6C: var_E0 = var_B0 & var_D0 
  loc_1279E7A: unk_535CBA.Execute CStr(var_E0), var_8A, var_B8
  loc_1279ED0: If (Proc_6_38_E68A98(CVar(var_B0.Fields.Fields.Item("AutoPrintKOTYN"))) = "Yes") Then
  loc_1279EDB:   Set var_B0 = Me.cmdPrintPKOT
  loc_1279EE1:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010007(True)
  loc_1279EF5:   Me.Timer1.Enabled = True
  loc_1279EFD: End If
  loc_1279F02: Set var_88 = Nothing
  loc_1279F05: Call ColorLabel()
  loc_1279F0A: Call Proc_171_49_1751F50(var_BC)
  loc_1279F35: var_9C = CVar(CDbl((((CLng(Me.FGrid1.Rows) - 1) * &H320) + &HC8))) 'Single
  loc_1279F44: Me.FGrid1.Height = True
  loc_1279F66: Me.FGrid1.Width = CVar(CDbl(12010))
  loc_1279F9C: If (CDbl((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(1200)) + CDbl(200))) < CDbl(12010)) Then
  loc_1279FC0:   var_9C = CVar((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(1200)) + CDbl(&HA))) 'Single
  loc_1279FCF:   Me.FGrid1.Width = CVar(CDbl(12010))
  loc_1279FDE: End If
  loc_127A001: Me.FrameOption.Left = (CDbl(Me.FGrid1.Width) + CDbl(250))
  loc_127A04D: Me.FrameOption.Top = (((CDbl(Me.FGrid1.Height) - Me.FrameOption.Height) - CDbl(200)) / CDbl(2))
  loc_127A06A: Me.FrameOption.Visible = False
  loc_127A081: Me.FrSettlement.Top = CDbl(480)
  loc_127A097: Me.FrSettlement.Left = CDbl(0)
  loc_127A0C2: Me.FrSettlement.Height = (CDbl(Me.FGrid1.Height) + CDbl(400))
  loc_127A0DD: Me.FrSettlement.Visible = False
  loc_127A0F3: Me.FrPendingOrder.Top = CDbl(0)
  loc_127A109: Me.FrPendingOrder.Left = CDbl(0)
  loc_127A11B: var_D0 = Me.FGrid1.Height
  loc_127A129: Set var_104 = Me.FrPendingOrder
  loc_127A12F: var_104.Height = CDbl(var_D0)
  loc_127A14A: Me.FrPendingOrder.Visible = False
  loc_127A167: If ("No" = "Yes") Then
  loc_127A176:   Me.PicContainer.Visible = True
  loc_127A18A:   Me.VScroll1.Visible = True
  loc_127A19E:   Me.HScroll1.Visible = True
  loc_127A1B2:   Me.Command1.Visible = True
  loc_127A1C8:   Me.FGridTb.Visible = True
  loc_127A1D0: End If
  loc_127A1E3: If (TouchScreen = "Yes") Then
  loc_127A1EC:   var_AC = 0
  loc_127A209:   var_B4 = "Select W.Name  From Waiter W wHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_127A227:   unk_535CBA.Execute var_B4 & "' or LOGSITE_CODE='HO') and W.code='" & MemVar_1F9201C & "'", var_D0, -1
  loc_127A22F:   var_B0 = var_B0.Fields
  loc_127A237:   var_AC = var_104.Item(var_104)
  loc_127A23F:   var_10C = var_10C.Value
  loc_127A255:   Me.Label5.Caption = CStr(var_E0)
  loc_127A279: End If
  loc_127A279: Exit Sub
  loc_127A27A: ' Referenced from: 1279D28
  loc_127A282: Set var_B0 = Err()
  loc_127A288: Call 0.Method_arg_2C (var_B4)
  loc_127A2A9: MsgBox(CVar(var_B4), &H10, "Information", var_100, var_128)
  loc_127A2BC: Exit Sub
  loc_127A2BD: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0DBC4
  'Data Table: 535CB0
  loc_E0DBBB: Set global_116 = Nothing
  loc_E0DBC2: Exit Sub
End Sub

Private Sub Form_Activate() 'FD54FC
  'Data Table: 535CB0
  Dim var_94 As Variant
  Dim var_A8 As String
  Dim unk_535CBA As Connection15
  Dim var_8C As Recordset15
  Dim var_D0 As Variant
  loc_FD534C: Call Proc_171_49_1751F50()
  loc_FD535A: If (global_82 = &HFF) Then
  loc_FD535D:   Call Proc_171_49_1751F50()
  loc_FD5367:   global_82 = 0
  loc_FD536A: End If
  loc_FD5377: Me.Label3.Caption = vbNullString
  loc_FD5385: Call 0.Method_arg_100 (var_98)
  loc_FD5397: Me.FrSettlement.Width = var_98
  loc_FD53A5: Call 0.Method_arg_100 (var_98)
  loc_FD53C0: Me.FrPendingOrder.Left = ((var_98 * CDbl(2)) / CDbl(&HA))
  loc_FD53CE: Call 0.Method_arg_100 (var_98)
  loc_FD53E9: Me.FrPendingOrder.Width = ((var_98 * CDbl(8)) / CDbl(&HA))
  loc_FD53F1: Call Proc_171_46_F03004(global_82)
  loc_FD53FE: If (MemVar_1F9220C <> "Yes") Then
  loc_FD5407:   Set var_94 = Me.FrPendingOrder
  loc_FD540D:   var_94.Visible = False
  loc_FD5415: End If
  loc_FD543E: var_A8 = "SELECT POSSettlementYN FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' And CompCode='" & MemVar_1F92128 & "' And UserName='"
  loc_FD5455: unk_535CBA.Execute var_A8 & MemVar_1F920C8 & "'", var_D0, -1
  loc_FD5460: Set var_8C = var_94
  loc_FD548C: If (var_8C.RecordCount > 0) Then
  loc_FD54B7:   var_90 = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("POSSettlementYN")))
  loc_FD54C0: End If
  loc_FD54CF: If ((MemVar_1F920B8 = 0) And (var_90 = "No")) Then
  loc_FD54DB:   Set var_94 = Me.CmdUnSBill
  loc_FD54E1:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_FD54E9: End If
  loc_FD54EE: Set var_8C = Nothing
  loc_FD54F6: Set var_88 = Nothing
  loc_FD54F9: Exit Sub
End Sub

Private Sub Form_Click() 'E19A30
  'Data Table: 535CB0
  loc_E19A24: Me.FrameOption.Visible = False
  loc_E19A2C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E0ACBC
  'Data Table: 535CB0
  loc_E0ACB2: If (CLng(KeyCode) = &H74) Then
  loc_E0ACB5:   Call Proc_171_49_1751F50()
  loc_E0ACBA: End If
  loc_E0ACBA: Exit Sub
End Sub

Private Sub HScroll1_Change() '1071588
  'Data Table: 535CB0
  Dim var_90 As Variant
  Dim var_104 As Variant
  Dim var_E4 As Boolean
  loc_1071348: If (Me.PicContent.Left > CDbl(-Me.HScroll1.Value)) Then
  loc_1071366:   Set var_90 = Me.BtnEnTb
  loc_107136C:   Call 0.Method_HScroll1_Change0 (0)
  loc_1071374:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005(var_98)
  loc_10713AA:   Set var_B8 = Me.BtnEnTb
  loc_10713B0:   Call 0.Method_HScroll1_Change0 (0)
  loc_10713B8:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005(var_BC)
  loc_10713E3:   var_104 = CVar((Abs(Me.PicContent.Left) + CDbl(var_CC))) 'Single
  loc_10713F7:   var_E4 = (CSng((Abs(Me.PicContent.Left) + CDbl(var_A8))) <= CDbl(Me.HScroll1.Max))
  loc_1071411:   Me.HScroll1.Value = CInt(IIf(var_E4, var_104, CVar(Me.HScroll1.Max)))
  loc_107145C:   Me.PicContent.Left = CDbl(-Me.HScroll1.Value)
  loc_107146B: Else
  loc_1071486:   Set var_90 = Me.BtnEnTb
  loc_107148C:   Call 0.Method_HScroll1_Change0 (0)
  loc_1071494:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005(var_98)
  loc_10714CA:   Set var_B8 = Me.BtnEnTb
  loc_10714D0:   Call 0.Method_HScroll1_Change0 (0)
  loc_10714D8:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005(var_BC)
  loc_1071503:   var_104 = CVar(Abs((Me.PicContent.Left + CDbl(var_CC)))) 'Single
  loc_1071516:   var_E4 = (CSng((Me.PicContent.Left + CDbl(var_A8))) <= CDbl(Me.HScroll1.Min))
  loc_1071530:   Me.HScroll1.Value = CInt(IIf(var_E4, var_104, CVar(Me.HScroll1.Min)))
  loc_107157B:   Me.PicContent.Left = CDbl(-Me.HScroll1.Value)
  loc_1071587: End If
  loc_1071587: Exit Sub
End Sub

Private Sub VScroll1_Change() '1071864
  'Data Table: 535CB0
  Dim var_90 As Variant
  Dim var_104 As Variant
  Dim var_E4 As Boolean
  loc_1071624: If (Me.PicContent.Top > CDbl(-Me.VScroll1.Value)) Then
  loc_1071642:   Set var_90 = Me.BtnEnTb
  loc_1071648:   Call 0.Method_VScroll1_Change0 (0)
  loc_1071650:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006(var_98)
  loc_1071686:   Set var_B8 = Me.BtnEnTb
  loc_107168C:   Call 0.Method_VScroll1_Change0 (0)
  loc_1071694:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006(var_BC)
  loc_10716BF:   var_104 = CVar((Abs(Me.PicContent.Top) + CDbl(var_CC))) 'Single
  loc_10716D3:   var_E4 = (CSng((Abs(Me.PicContent.Top) + CDbl(var_A8))) <= CDbl(Me.VScroll1.Max))
  loc_10716ED:   Me.VScroll1.Value = CInt(IIf(var_E4, var_104, CVar(Me.VScroll1.Max)))
  loc_1071738:   Me.PicContent.Top = CDbl(-Me.VScroll1.Value)
  loc_1071747: Else
  loc_1071762:   Set var_90 = Me.BtnEnTb
  loc_1071768:   Call 0.Method_VScroll1_Change0 (0)
  loc_1071770:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006(var_98)
  loc_10717A6:   Set var_B8 = Me.BtnEnTb
  loc_10717AC:   Call 0.Method_VScroll1_Change0 (0)
  loc_10717B4:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006(var_BC)
  loc_10717DF:   var_104 = CVar(Abs((Me.PicContent.Top + CDbl(var_CC)))) 'Single
  loc_10717F2:   var_E4 = (CSng((Me.PicContent.Top + CDbl(var_A8))) <= CDbl(Me.VScroll1.Min))
  loc_107180C:   Me.VScroll1.Value = CInt(IIf(var_E4, var_104, CVar(Me.VScroll1.Min)))
  loc_1071857:   Me.PicContent.Top = CDbl(-Me.VScroll1.Value)
  loc_1071863: End If
  loc_1071863: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 '1241CB0
  'Data Table: 535CB0
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_F0 As Variant
  Dim unk_535CBA As Connection15
  Dim var_88 As Recordset15
  Dim var_120 As Fields15
  Dim var_11C As Variant
  loc_1241803: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1241808: var_CC = 0
  loc_124183F: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1241855:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_124186D:   var_F0 = Me.FGrid.TextMatrix)
  loc_12418A1:   unk_535CBA.Execute "Select Vtype As VoucherType,RoomNo as TableNo,DocId,RoomCat,RoomType,NetAmt from Sale1 Where DocId='" & CStr(var_F0) & "'", var_11C, -1
  loc_12418AC:   Set var_88 = var_120
  loc_12418DE:   If (var_88.RecordCount > 0) Then
  loc_12418E9:     If (MemVar_1F9220C = "Yes") Then
  loc_12418EF:       var_AC = "VoucherType"
  loc_1241945:       var_CC = "DocID"
  loc_1241995:       var_1EC = Proc_6_38_E68A98(CVar(var_88.Fields.Item("TableNo")))
  loc_12419C0:       var_1F0 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomCat")))
  loc_12419EB:       var_1F4 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Roomtype")))
  loc_1241A14:       Proc_6_39_E7C810(var_1C0, CVar(var_88.Fields.Item("NetAmt")))
  loc_1241A6C:       Proc_6_132_ECC4B4(1, 5, Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_AC)), var_88.Fields, CVar(var_88.Fields.Item("TableNo")), 0), Proc_6_38_E68A98(CVar(var_88.Fields.Item("TableNo")), var_AC), Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_CC)), var_CC), 0)
  loc_1241AB5:     Else
  loc_1241BB4:       var_200 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Roomtype")))
  loc_1241BDD:       Proc_6_39_E7C810(var_1C0, CVar(var_88.Fields.Item("NetAmt")))
  loc_1241BE7:       var_1E8 = 0
  loc_1241BF2:       var_1E4 = 0
  loc_1241BFB:       var_1E0 = "Semi"
  loc_1241C54:       Proc_6_131_FAD2A0(1, 5, Proc_6_38_E68A98(CVar(var_88.Fields.Item("VoucherType")), var_1EC, Proc_6_38_E68A98(CVar(var_88.Fields.Item("TableNo")), CSng(var_1C0)), Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")), global_52)), Proc_6_38_E68A98(CVar(var_88.Fields.Item("TableNo")), CSng(var_1C0)), Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")), global_52), 0, Proc_6_38_E68A98(CVar(var_88.Fields.Item("TableNo"))), Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomCat"))))
  loc_1241CA0:     End If
  loc_1241CA0:     Call CmdUnSBill_UnknownEvent_9()
  loc_1241CA5:   End If
  loc_1241CAA:   Set var_88 = Nothing
  loc_1241CAD: End If
  loc_1241CAD: Exit Sub
End Sub

Private Sub CmdUnload_UnknownEvent_9 'E1B404
  'Data Table: 535CB0
  loc_E1B3F9: Me.Global.Unload Me
  loc_E1B401: Exit Sub
End Sub

Public Sub BtnEnTb_UnknownEvent_6(Index As Integer) 'EA924C
  'Data Table: 535CB0
  Dim var_88 As CommandButton
  loc_EA91DB: Set var_88 = Me.BtnEnTb
  loc_EA91E1: Call 0.Method_BtnEnTb_UnknownEvent_60 (Index, var_8C)
  loc_EA91E9: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2D(&HFF00)
  loc_EA9218: Set var_8C = Me.BtnEnTb
  loc_EA921E: Call 0.Method_BtnEnTb_UnknownEvent_60 (Index, var_B4)
  loc_EA9226: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(CVar(Me.CmdTBInfo.Caption))
  loc_EA9243: Me.CmdTBInfo.Visible = False
  loc_EA924B: Exit Sub
End Sub

Public Sub BtnEnTb_UnknownEvent_9(Index As Integer) 'FB13F0
  'Data Table: 535CB0
  Dim var_88 As Variant
  Dim var_AC As Frame
  Dim var_A8 As Frame
  loc_FB126E: Set var_88 = Me.BtnEnTb
  loc_FB1274: Call 0.Method_BtnEnTb_UnknownEvent_90 (Index)
  loc_FB127C: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(var_8C)
  loc_FB1299: If (CStr() = vbNullString) Then
  loc_FB129C:   Exit Sub
  loc_FB129D: End If
  loc_FB12A7: Set var_8C = Me.BtnEnTb
  loc_FB12AD: Call 0.Method_BtnEnTb_UnknownEvent_90 (Index)
  loc_FB12B5: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(var_A8)
  loc_FB12C8: Set var_AC = Me.BtnEnTb
  loc_FB12CE: Call 0.Method_BtnEnTb_UnknownEvent_90 (Index)
  loc_FB12D6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005(var_B0)
  loc_FB130B: Me.FrameOption.Left = ((Me.PicContainer.Left + CDbl(var_9C)) + CDbl(var_C0))
  loc_FB1336: Call 0.Method_BtnEnTb_UnknownEvent_90 (Index)
  loc_FB133E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(var_A8)
  loc_FB136D: Me.FrameOption.Top = (Me.PicContainer.Top + CDbl(var_9C))
  loc_FB138A: Set var_88 = Me.BtnEnTb
  loc_FB1390: Call 0.Method_BtnEnTb_UnknownEvent_90 (Index)
  loc_FB1398: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(Me.BtnEnTb)
  loc_FB13AD: Me.FrameOption.Tag = CStr()
  loc_FB13D1: Me.FrameOption.ZOrder 0
  loc_FB13E5: Me.FrameOption.Visible = True
  loc_FB13ED: Exit Sub
  loc_FB13EE: arg_382C = 
End Sub

Private Sub CmdUnSBill_UnknownEvent_9 '1029084
  'Data Table: 535CB0
  Dim var_88 As Variant
  Dim var_8C As String
  Dim var_94 As String
  Dim var_9C As String
  Dim var_A8 As String
  Dim unk_535CBA As Connection15
  Dim Me As Recordset15
  Dim var_11C As Variant
  loc_1028E76: Set var_88 = Me.FrameOption
  loc_1028E7C: var_88.Visible = False
  loc_1028E8F: If (global_112 = "Y") Then
  loc_1028EA6:   var_8C = "SELECT Sale1.DocId, MAX(Sale1.VNo) AS [Bill No],Max(AA.VNo) As [Order No] ,Max(AA.CustName) As [Customer Name], " & "Max(AA.PhoneNo) As [Phone No] "
  loc_1028EB4:   var_94 = var_8C & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN RoomMast AS T ON (Sale1.RoomType = T.Type) "
  loc_1028EC2:   var_9C = var_94 & "AND (Sale1.RoomNo = T.Code) AND (Sale1.RestCode = T.RestCode)) " & "LEFT JOIN (SELECT PD.ContraDocId,P.VNo,P.CustName,P.PhoneNo FROM PackingOrder P Right JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID) AA  On AA.ContraDocID = Sale1.DocId "
  loc_1028EDA:   var_A8 = var_9C & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & "AND  Sale1.RoomType='" & global_100
  loc_1028EFB:   unk_535CBA.Execute var_A8 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID ORDER BY MAX(Sale1.Vno)", var_D4, -1
  loc_1028F0C:   Set global_116 = var_88
  loc_1028F36: Else
  loc_1028F4A:   var_8C = "SELECT Sale1.DocId, MAX(Sale1.VNo) AS [Bill No],MAX(T.Code) AS [Table No] ,max(Waiter.Name) as Steward, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_1028F58:   var_94 = var_8C & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN RoomMast AS T ON (Sale1.RoomType = T.Type) "
  loc_1028F66:   var_9C = var_94 & "AND (Sale1.RoomNo = T.Code) AND (Sale1.RestCode = T.RestCode)) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code "
  loc_1028F7E:   var_A8 = var_9C & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & "AND  Sale1.RoomType='" & global_100
  loc_1028F9F:   unk_535CBA.Execute var_A8 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID ORDER BY MAX(T.Code)", var_D4, -1
  loc_1028FB0:   Set global_116 = var_88
  loc_1028FD7: End If
  loc_1028FE0: CVarUnk
  loc_1028FE5: VerifyVarObj
  loc_1028FEB: Set var_88 = Me.FGrid
  loc_1028FF1: LateIdStAd
  loc_1029016: If (Me.RecordCount <= 0) Then
  loc_102902C:   Me.FGrid.Rows = 2
  loc_1029041:   Set var_88 = Me.FGrid
  loc_1029047:   var_88.FixedRows = 1
  loc_102904F: End If
  loc_102904F: Call Proc_171_47_11B1198(var_88, global_116)
  loc_1029064: Me.FrSettlement.ZOrder 0
  loc_1029072: Set var_88 = Me.FrSettlement
  loc_1029078: var_88.Visible = True
  loc_1029080: Exit Sub
  loc_1029081: var_11C = CVar(var_88) 'String
End Sub

Private Sub Timer1_Timer() 'DFE3AC
  'Data Table: 535CB0
  loc_DFE3A4: Call Proc_171_54_EC89D8()
  loc_DFE3A9: Exit Sub
End Sub

Public Function global_52Get() '537968
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '537977
  global_52 = Value
End Sub

Public Property Let ptabpos(vNewValue) 'E00D70
  'Data Table: 535CB0
  loc_E00D6A: ptabpos = vNewValue
  loc_E00D6F: Exit Sub
End Sub

Public Property Get ptabpos() 'E05F40
  'Data Table: 535CB0
  loc_E05F39: ptabpos = global_104
End Sub

Public Property Let TouchScreen(vNewValue) 'E0E74C
  'Data Table: 535CB0
  loc_E0E744: global_96 = vNewValue
  loc_E0E748: Exit Sub
End Sub

Public Property Get TouchScreen() 'E0E704
  'Data Table: 535CB0
  loc_E0E6F8: var_88 = global_96
  loc_E0E6FB: TouchScreen = 
End Sub

Public Sub ColorLabel() 'F50C28
  'Data Table: 535CB0
  Dim unk_535CBA As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_E4 As Label
  loc_F50B2E: unk_535CBA.Execute "Select * from DispColor", var_A8, -1
  loc_F50B39: Set var_88 = var_AC
  loc_F50B42: ' Referenced from: F50C22
  loc_F50B51: If Not(var_88.EOF) Then
  loc_F50B90:   If (var_88.Fields.Item("index").Value > 4) Then
  loc_F50BF1:     Set var_E0 = Me.Label2
  loc_F50BF7:     Call 0.Method_ColorLabel0 (CInt(var_88.Fields.Item("index").Value), var_E4)
  loc_F50BFF:     var_E4.BackColor = CLng(var_88.Fields.Item("Color").Value)
  loc_F50C1A:   End If
  loc_F50C1D:   var_88.MoveNext
  loc_F50C22:   GoTo loc_F50B42
  loc_F50C25: End If
  loc_F50C25: Exit Sub
End Sub

Public Property Get OpenMode() 'E0DB34
  'Data Table: 535CB0
  loc_E0DB28: var_88 = global_84
  loc_E0DB2B: OpenMode = 
End Sub

Public Property Let OpenMode(vNewValue) 'E0DAEC
  'Data Table: 535CB0
  loc_E0DAE4: global_84 = vNewValue
  loc_E0DAE8: Exit Sub
End Sub

Public Sub Proc_171_46_F03004
  'Data Table: 535CB0
  Dim var_8C As String
  Dim var_98 As String
  Dim unk_535CBA As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As MSHFlexGrid
  loc_F02F44: var_8C = "SELECT Distinct P.Docid,P.VNo AS [Order No], P.CustName As [Customer Name],P.PhoneNo As [Phone No],P.Addr1 + ', ' + P.Addr2 As Address,convert(varchar(11),P.DDate,103)+ ' '+ P.DTime As [Delivery Date] FROM   PackingOrder P INNER JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID  WHERE  (P.LogSite_Code = '" & MemVar_1F92078
  loc_F02F5C: var_98 = var_8C & "') AND (P.RestCode = '" & global_52 & "') AND (PD.ContraSNo = 0) AND (PD.ContraDocID = '') Order By convert(varchar(11),P.DDate,103)+ ' '+ P.DTime"
  loc_F02F65: unk_535CBA.Execute var_98, var_B8, -1
  loc_F02F70: Set var_88 = var_BC
  loc_F02F8A: CVarUnk
  loc_F02F8F: VerifyVarObj
  loc_F02F95: Set var_BC = Me.FGrid2
  loc_F02F9B: LateIdStAd
  loc_F02FBD: If (var_88.RecordCount <= 0) Then
  loc_F02FD3:   Me.FGrid.Rows = 2
  loc_F02FE8:   Set var_BC = Me.FGrid
  loc_F02FEE:   var_BC.FixedRows = 1
  loc_F02FF6: End If
  loc_F02FF6: Call Proc_171_48_1173A50(var_BC, var_88)
  loc_F03000: Set var_88 = Nothing
  loc_F03003: Exit Sub
End Sub

Public Sub Proc_171_47_11B1198
  'Data Table: 535CB0
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_B0 As MSHFlexGrid
  loc_11B0D60: Set var_8C = Me.FGrid
  loc_11B0D6F: var_8C.Top = CVar(CDbl(600))
  loc_11B0D80: var_8C.Left = CVar(CDbl(300))
  loc_11B0D91: var_8C.Width = CVar(CDbl(7310))
  loc_11B0DA2: var_8C.Height = CVar(CDbl(7665))
  loc_11B0DB4: Set var_B0 = Me.CmdRef
  loc_11B0DBA: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(800)))
  loc_11B0DC5: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005()
  loc_11B0DD1: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003()
  loc_11B0DE5: var_9C = CVar(((CDbl() + CDbl(var_D0)) + CDbl(250))) 'Single
  loc_11B0DEE: Set var_B0 = Me.CmdRef
  loc_11B0DF4: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl(800)))
  loc_11B0E07: Set var_D4 = Me.CmdRef
  loc_11B0E0D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_11B0E1A: Set var_B0 = Me.CmdRef
  loc_11B0E20: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_11B0E2F: var_9C = CVar((CDbl() + CDbl(var_D0))) 'Single
  loc_11B0E38: Set var_D8 = Me.CmdUP
  loc_11B0E3E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(800)))
  loc_11B0E56: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005()
  loc_11B0E62: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003()
  loc_11B0E76: var_9C = CVar(((CDbl() + CDbl(var_D0)) + CDbl(250))) 'Single
  loc_11B0E7F: Set var_B0 = Me.CmdUP
  loc_11B0E85: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl(800)))
  loc_11B0E98: Set var_D4 = Me.CmdRef
  loc_11B0E9E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_11B0EAB: Set var_B0 = Me.CmdRef
  loc_11B0EB1: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_11B0EC4: var_9C = CVar((CDbl() + (CDbl(var_D0) * CDbl(2)))) 'Single
  loc_11B0ECD: Set var_D8 = Me.CmdDown
  loc_11B0ED3: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(800)))
  loc_11B0EEB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005()
  loc_11B0EF7: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003()
  loc_11B0F0B: var_9C = CVar(((CDbl() + CDbl(var_D0)) + CDbl(250))) 'Single
  loc_11B0F14: Set var_B0 = Me.CmdDown
  loc_11B0F1A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl(800)))
  loc_11B0F2D: Set var_D4 = Me.CmdRef
  loc_11B0F33: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_11B0F40: Set var_B0 = Me.CmdRef
  loc_11B0F46: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_11B0F59: var_9C = CVar((CDbl() + (CDbl(var_D0) * CDbl(3)))) 'Single
  loc_11B0F62: Set var_D8 = Me.CmdExit
  loc_11B0F68: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(800)))
  loc_11B0F80: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005()
  loc_11B0F8C: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003()
  loc_11B0FA0: var_9C = CVar(((CDbl() + CDbl(var_D0)) + CDbl(250))) 'Single
  loc_11B0FA9: Set var_B0 = Me.CmdExit
  loc_11B0FAF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl(800)))
  loc_11B0FBE: var_9C = 0
  loc_11B0FC7: var_E8 = &HA
  loc_11B0FD3: LateIdCallSt
  loc_11B0FDB: var_9C = 1
  loc_11B0FE4: var_E8 = &H4B0
  loc_11B0FF0: LateIdCallSt
  loc_11B0FF8: var_9C = 1
  loc_11B1007: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B100E: LateIdCallSt
  loc_11B1016: var_9C = 1
  loc_11B1025: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B102C: LateIdCallSt
  loc_11B1034: var_9C = 2
  loc_11B103D: var_E8 = &H3E8
  loc_11B1049: LateIdCallSt
  loc_11B1051: var_9C = 2
  loc_11B1060: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1067: LateIdCallSt
  loc_11B106F: var_9C = 2
  loc_11B107E: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1085: LateIdCallSt
  loc_11B108D: var_9C = 3
  loc_11B1096: var_E8 = &H960
  loc_11B10A2: LateIdCallSt
  loc_11B10AA: var_9C = 3
  loc_11B10B9: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B10C0: LateIdCallSt
  loc_11B10C8: var_9C = 3
  loc_11B10D7: var_E8 = CVar(CInt(1)) 'Integer
  loc_11B10DE: LateIdCallSt
  loc_11B10E6: var_9C = 4
  loc_11B10EF: var_E8 = &H578
  loc_11B10FB: LateIdCallSt
  loc_11B1103: var_9C = 4
  loc_11B1112: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1119: LateIdCallSt
  loc_11B1121: var_9C = 4
  loc_11B1130: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1137: LateIdCallSt
  loc_11B1164: For var_FC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_FC 'Integer
  loc_11B116E:   var_9C = CVar(CLng(var_86)) 'Long
  loc_11B1173:   var_E8 = &H258
  loc_11B117F:   LateIdCallSt
  loc_11B118A: Next var_FC 'Integer
  loc_11B1191: Set var_8C = Nothing 
  loc_11B1195: Exit Sub
End Sub

Public Sub Proc_171_48_1173A50
  'Data Table: 535CB0
  Dim var_9C As Variant
  Dim var_8C As Variant
  Dim var_F0 As Variant
  loc_117367C: Set var_8C = Me.FGrid2
  loc_117368B: var_8C.Top = CVar(CDbl(600))
  loc_117369C: var_8C.Left = CVar(CDbl(300))
  loc_11736AD: var_8C.Width = CVar(CDbl(8810))
  loc_11736BE: var_8C.Height = CVar(CDbl(7665))
  loc_11736D2: Me.CmdUp2.Top = CDbl(800)
  loc_1173708: Me.CmdUp2.Left = ((CDbl(var_8C.Left) + CDbl(var_8C.Width)) + CDbl(250))
  loc_117374D: Me.CmdDown2.Top = (Me.CmdUp2.Top + Me.CmdUp2.Height)
  loc_1173789: Me.CmdDown2.Left = ((CDbl(var_8C.Left) + CDbl(var_8C.Width)) + CDbl(250))
  loc_11737D2: Me.CmdExit2.Top = (Me.CmdUp2.Top + (Me.CmdUp2.Height * CDbl(2)))
  loc_117380E: Me.CmdExit2.Left = ((CDbl(var_8C.Left) + CDbl(var_8C.Width)) + CDbl(250))
  loc_117381D: var_9C = 0
  loc_1173826: var_F0 = &HA
  loc_1173832: LateIdCallSt
  loc_117383A: var_9C = 1
  loc_1173843: var_F0 = &H4B0
  loc_117384F: LateIdCallSt
  loc_1173857: var_9C = 1
  loc_1173866: var_F0 = CVar(CInt(4)) 'Integer
  loc_117386D: LateIdCallSt
  loc_1173875: var_9C = 1
  loc_1173884: var_F0 = CVar(CInt(4)) 'Integer
  loc_117388B: LateIdCallSt
  loc_1173893: var_9C = 2
  loc_117389C: var_F0 = &H898
  loc_11738A8: LateIdCallSt
  loc_11738B0: var_9C = 2
  loc_11738BF: var_F0 = CVar(CInt(4)) 'Integer
  loc_11738C6: LateIdCallSt
  loc_11738CE: var_9C = 2
  loc_11738DD: var_F0 = CVar(CInt(4)) 'Integer
  loc_11738E4: LateIdCallSt
  loc_11738EC: var_9C = 3
  loc_11738F5: var_F0 = &H578
  loc_1173901: LateIdCallSt
  loc_1173909: var_9C = 3
  loc_1173918: var_F0 = CVar(CInt(4)) 'Integer
  loc_117391F: LateIdCallSt
  loc_1173927: var_9C = 3
  loc_1173936: var_F0 = CVar(CInt(1)) 'Integer
  loc_117393D: LateIdCallSt
  loc_1173945: var_9C = 4
  loc_117394E: var_F0 = &H898
  loc_117395A: LateIdCallSt
  loc_1173962: var_9C = 4
  loc_1173971: var_F0 = CVar(CInt(4)) 'Integer
  loc_1173978: LateIdCallSt
  loc_1173980: var_9C = 4
  loc_117398F: var_F0 = CVar(CInt(4)) 'Integer
  loc_1173996: LateIdCallSt
  loc_117399E: var_9C = 5
  loc_11739A7: var_F0 = &H578
  loc_11739B3: LateIdCallSt
  loc_11739BB: var_9C = 5
  loc_11739CA: var_F0 = CVar(CInt(4)) 'Integer
  loc_11739D1: LateIdCallSt
  loc_11739D9: var_9C = 5
  loc_11739E8: var_F0 = CVar(CInt(4)) 'Integer
  loc_11739EF: LateIdCallSt
  loc_1173A1C: For var_104 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_86 = var_104 'Integer
  loc_1173A26:   var_9C = CVar(CLng(var_86)) 'Long
  loc_1173A2B:   var_F0 = &H258
  loc_1173A37:   LateIdCallSt
  loc_1173A42: Next var_104 'Integer
  loc_1173A49: Set var_8C = Nothing 
  loc_1173A4D: Exit Sub
End Sub

Public Sub Proc_171_49_1751F50
  'Data Table: 535CB0
  Dim var_96 As Integer
  Dim var_C0 As String
  Dim var_C4 As String
  Dim unk_535CBA As Connection15
  Dim var_D4 As Variant
  Dim var_A0 As Recordset15
  Dim var_E8 As Variant
  Dim var_E4 As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_114 As String
  Dim var_118 As String
  Dim var_11C As String
  Dim var_120 As String
  Dim var_12C As String
  Dim var_13C As Variant
  Dim var_140 As Variant
  Dim var_8A As Integer
  Dim var_8C As Integer
  Dim var_88 As Recordset15
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_180 As Variant
  Dim var_248 As Variant
  Dim var_238 As Variant
  Dim var_268 As Variant
  Dim var_10C As Variant
  Dim var_1B4 As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_288 As Variant
  Dim var_2BC As Variant
  Dim var_278 As Variant
  Dim var_1DC As Variant
  Dim var_2FC As Variant
  Dim var_B8 As Recordset15
  Dim var_158 As Variant
  Dim var_B0 As Recordset15
  Dim var_92 As Integer
  Dim var_2CC As Variant
  loc_1750276: var_96 = 0
  loc_17502A0: unk_535CBA.Execute "Select Order_Booking,Kotyn from Depart where Code='" & global_52 & "'", var_E4, -1
  loc_17502AB: Set var_A0 = var_E8
  loc_17502CA: var_E8 = var_A0.Fields
  loc_17502E9: global_108 = Proc_6_38_E68A98(CVar(var_E8.Item("KotYN")), var_E8)
  loc_1750324: global_112 = Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Order_Booking")))
  loc_1750343: var_E8 = var_A0.Fields
  loc_1750353: var_E4 = var_E8.Item("KotYN").Value
  loc_175036D: If (var_E4 = "Y") Then
  loc_1750376:   var_110 = global_88
  loc_1750381:   If (var_110 = "Outlet") Then
  loc_1750398:     var_C0 = "SELECT LTrim(RTrim(RoomMast.Code)) as code,'' as Code1,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_17503BA:     var_11C = var_C0 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='" & global_100 & "' and RoomMast.RestCode='" & global_52
  loc_17503CA:     unk_535CBA.Execute var_11C & "' ORDER BY  RoomMast.code", var_E4, -1
  loc_17503D5:     Set var_88 = var_E8
  loc_1750404:     var_C0 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & global_52
  loc_175041C:     var_118 = var_C0 & "' And  RoomCat='REST' and RoomType='" & global_100 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_1750436:     unk_535CBA.Execute var_118 & global_52 & "' order by T.Code", var_E4, -1
  loc_1750441:     Set var_B0 = var_E8
  loc_175046D:     var_C0 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_175047B:     var_114 = var_C0 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_1750489:     var_11C = var_114 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & " And Sale1.RoomCat='REST' And Sale1.RoomType='"
  loc_17504AB:     var_12C = var_11C & global_100 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_17504C5:     unk_535CBA.Execute var_12C & global_52 & "' Order by T.Code", var_E4, -1
  loc_17504D0:     Set var_B8 = var_E8
  loc_17504F5:   Else
  loc_17504FD:     If (var_110 = "Room Service") Then
  loc_1750514:       var_C0 = "SELECT LTrim(RTrim(RC.RoomNo)) AS Code,RC.Foliono AS Code1, RC.RoomNo AS Name,D.Code As RestCode,D.Name as RestName,D.ShortName,RC.SITE_CODE,RC.LOGSITE_CODE,D.KOTYn, RC.RoomCat, GuestProf.Name as Guest, PlanName = Case  When isnull(PlanMast.Name,'')='' then 'Europian Plan' else PlanMast.Name end, GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3,RC.Docid   FROM Depart D, (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) LEFT JOIN PlanMast ON RC.PlanCode = PlanMast.Code where (RC.LOGSITE_CODE='" & MemVar_1F92078
  loc_175052C:       var_118 = var_C0 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('" & global_100 & "') AND RC.CHKOUTDATE IS NULL And D.Code='"
  loc_1750543:       unk_535CBA.Execute var_118 & MemVar_1F92078 & "RS' Order by RC.ROOMNO", var_E4, -1
  loc_175054E:       Set var_88 = var_E8
  loc_175057D:       var_C0 = "Select LTrim(RTrim(T.Code)) as Code,T.Code As Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & global_52
  loc_1750595:       var_118 = var_C0 & "' and RoomType='" & global_100 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='ROOM' order by T.Code"
  loc_175059E:       unk_535CBA.Execute var_118, var_E4, -1
  loc_17505A9:       Set var_B0 = var_E8
  loc_17505D1:       var_C0 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_17505DF:       var_114 = var_C0 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_17505F7:       var_120 = var_114 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & "And Sale1.RoomType='" & global_100
  loc_175060F:       var_12C = var_120 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_1750629:       unk_535CBA.Execute var_12C & global_52 & "' Order by T.Code", var_E4, -1
  loc_1750634:       Set var_B8 = var_E8
  loc_1750656:     End If
  loc_1750656:   End If
  loc_175065E:   If (MemVar_1F9220C <> "Yes") Then
  loc_1750667:     var_138 = global_88
  loc_1750672:     If (var_138 = "Outlet") Then
  loc_175067E:       Set var_E8 = Me.CmdPKOT
  loc_1750684:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_1750695:       Set var_E8 = Me.CmdOrderBook
  loc_175069B:       Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010007(False)
  loc_17506A7:       Set var_E8 = Me.CmdPKOT
  loc_17506AD:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(var_E8)
  loc_17506BF:       Set var_EC = Me.CmdCancel
  loc_17506C5:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(var_E8)))
  loc_17506D8:       Set var_E8 = Me.CmdAKOT
  loc_17506DE:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_E8)
  loc_17506F6:       Me.FrameOption.Height = (CDbl(var_E8) * CDbl(5))
  loc_1750708:     Else
  loc_1750710:       If (var_138 = "Room Service") Then
  loc_175071C:         Set var_E8 = Me.CmdChngTable
  loc_1750722:         Call {33AD4F22-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1750733:         Set var_E8 = Me.CmdBillLookup
  loc_1750739:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_175074A:         Set var_E8 = Me.CmdPKOT
  loc_1750750:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_1750761:         Set var_E8 = Me.CmdOrderBook
  loc_1750767:         Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010007(False)
  loc_1750773:         Set var_E8 = Me.CmdChngTable
  loc_1750779:         Call {33AD4F22-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_E8)
  loc_175078B:         Set var_EC = Me.CmdCancel
  loc_1750791:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(var_E8)))
  loc_17507A4:         Set var_E8 = Me.CmdAKOT
  loc_17507AA:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_96)
  loc_17507C2:         Me.FrameOption.Height = (CDbl() * CDbl(3))
  loc_17507DA:         Set var_E8 = Me.CmdUnSBill
  loc_17507E0:         Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_17507E8:       End If
  loc_17507E8:     End If
  loc_17507EB:   Else
  loc_17507F4:     Set var_E8 = Me.CmdOrderBook
  loc_17507FA:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010007(False)
  loc_1750806:     Set var_E8 = Me.CmdOrderBook
  loc_175080C:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004()
  loc_175081E:     Set var_EC = Me.CmdCancel
  loc_1750824:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_1750837:     Set var_E8 = Me.CmdAKOT
  loc_175083D:     Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_1750855:     Me.FrameOption.Height = (CDbl() * CDbl(6))
  loc_1750864:   End If
  loc_1750867: Else
  loc_175087B:   var_C0 = "SELECT LTrim(RTrim(RoomMast.Code)) as code,'' as Code1,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_175089D:   var_11C = var_C0 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='" & global_100 & "' and RoomMast.RestCode='" & global_52
  loc_17508AD:   unk_535CBA.Execute var_11C & "' ORDER BY  RoomMast.code", var_E4, -1
  loc_17508B8:   Set var_88 = var_E8
  loc_17508E7:   var_C0 = "Select  LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER)WHERE KOT.RestCode='" & global_52
  loc_17508FF:   var_118 = var_C0 & "' And  RoomCat='REST' and RoomType='" & global_100 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_1750919:   unk_535CBA.Execute var_118 & global_52 & "' order by T.Code", var_E4, -1
  loc_1750924:   Set var_B0 = var_E8
  loc_1750950:   var_C0 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_175095E:   var_114 = var_C0 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_175096C:   var_11C = var_114 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & " And Sale1.RoomCat='REST' And Sale1.RoomType='"
  loc_175098E:   var_12C = var_11C & global_100 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_17509A8:   unk_535CBA.Execute var_12C & global_52 & "' Order by T.Code", var_E4, -1
  loc_17509B3:   Set var_B8 = var_E8
  loc_17509F7:   var_E4 = var_A0.Fields.Item("Order_Booking").Value
  loc_1750A11:   If CBool(var_E4 <> "Y") Then
  loc_1750A1D:     Set var_E8 = Me.CmdAKOT
  loc_1750A23:     Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1750A34:     Set var_E8 = Me.CmdChngTable
  loc_1750A3A:     Call {33AD4F22-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1750A4B:     Set var_E8 = Me.CmdBillLookup
  loc_1750A51:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_1750A62:     Set var_E8 = Me.CmdPKOT
  loc_1750A68:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_1750A79:     Set var_E8 = Me.CmdOrderBook
  loc_1750A7F:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010007(False)
  loc_1750A99:     Call {33AD4F1A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_1750AA5:     Set var_EC = Me.CmdSBill
  loc_1750AAB:     Call {33AD4F1A-6699-11CF-B70C00AA0060D393}.DispID_80010004(Me.CmdSBill)
  loc_1750AB8:     Set var_E8 = Me.CmdSBill
  loc_1750ABE:     Call {33AD4F1A-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_E8)
  loc_1750ACD:     var_D4 = CVar((CDbl(var_E8) + CDbl(var_10C))) 'Single
  loc_1750AD6:     Set var_13C = Me.CmdCancel
  loc_1750ADC:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_1750AF5:     Set var_E8 = Me.CmdAKOT
  loc_1750AFB:     Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_1750B13:     Me.FrameOption.Height = (CDbl() * CDbl(2))
  loc_1750B25:   Else
  loc_1750B2E:     Set var_E8 = Me.CmdAKOT
  loc_1750B34:     Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1750B45:     Set var_E8 = Me.CmdChngTable
  loc_1750B4B:     Call {33AD4F22-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1750B5C:     Set var_E8 = Me.CmdBillLookup
  loc_1750B62:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_1750B73:     Set var_E8 = Me.CmdPKOT
  loc_1750B79:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_1750B8D:     Set var_E8 = Me.CmdSBill
  loc_1750B93:     Call {33AD4F1A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_1750B9F:     Set var_EC = Me.CmdSBill
  loc_1750BA5:     Call {33AD4F1A-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_1750BB2:     Set var_E8 = Me.CmdSBill
  loc_1750BB8:     Call {33AD4F1A-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_1750BC7:     var_D4 = CVar((CDbl() + CDbl(var_10C))) 'Single
  loc_1750BD0:     Set var_13C = Me.CmdOrderBook
  loc_1750BD6:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004(CVar(CDbl(0)))
  loc_1750BEF:     Set var_EC = Me.CmdOrderBook
  loc_1750BF5:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004()
  loc_1750C02:     Set var_E8 = Me.CmdOrderBook
  loc_1750C08:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010006()
  loc_1750C17:     var_D4 = CVar((CDbl() + CDbl(var_10C))) 'Single
  loc_1750C20:     Set var_13C = Me.CmdCancel
  loc_1750C26:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_1750C3F:     Set var_E8 = Me.CmdAKOT
  loc_1750C45:     Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_1750C57:     Set var_EC = Me.FrameOption
  loc_1750C5D:     var_EC.Height = (CDbl() * CDbl(3))
  loc_1750C6C:     Call Proc_171_48_1173A50()
  loc_1750C7D:     Me.FrPendingOrder.Visible = True
  loc_1750C85:   End If
  loc_1750C85: End If
  loc_1750C8B: var_FC = 0
  loc_1750CBB: unk_535CBA.Execute "Select Name From Depart Where Code ='" & global_52 & "'", var_E4, -1
  loc_1750CC3: var_E8 = var_E8.Fields
  loc_1750CCB: var_FC = var_EC.Item(var_EC)
  loc_1750CD3: var_13C = var_13C.Value
  loc_1750CE9: Me.Label4.Caption = CStr(var_10C)
  loc_1750D0B: var_8A = 9
  loc_1750D25: If (Me.Recordset15.RecordCount > 0) Then
  loc_1750D55:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_1750DC2:     var_E4 = CVar(((Val(CStr(Me.Recordset15.RecordCount)) - CDbl((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_1750DE3:     var_8C = CInt(((Val(CStr(Format(var_E4, "00"))) + CDbl(1)) * CDbl(6)))
  loc_1750DFB:   Else
  loc_1750E2A:     var_E4 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_1750E4B:     var_8C = CInt(((Val(CStr(Format(var_E4, "00"))) + CDbl(1)) * CDbl(6)))
  loc_1750E5A:   End If
  loc_1750E5D: Else
  loc_1750E62:   global_104 = &HFF
  loc_1750E68: Else
  loc_1750E6A:   var_90 = 1
  loc_1750E6F:   var_8E = 0
  loc_1750E85:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_1750EA0:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_1750EBA:   Call Proc_171_51_111EA48((var_8A - 1), (var_8C - 1), var_8E, var_90, global_104, var_8C, 1, 1)
  loc_1750ED2:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_1750EED:   Me.FGrid1.Col = CVar(CLng(var_8E))
  loc_1750F04:   Me.FGrid1.Redraw = False
  loc_1750F31:   For var_170 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_94 = var_170 'Integer
  loc_1750F3B:     var_D4 = CVar(CLng(var_94)) 'Long
  loc_1750F40:     var_180 = &H320
  loc_1750F4D:     Set var_E8 = Me.FGrid1
  loc_1750F53:     LateIdCallSt
  loc_1750F61:   Next var_170 'Integer
  loc_1750F66:   ' Referenced from:   1751F16
  loc_1750F78:   If Not(Me.FGrid1.EOF) Then
  loc_1750F7D:     var_90 = 1
  loc_1750F80:     ' Referenced from:   1751F13
  loc_1750F8A:     If (var_90 <= (var_8A - 1)) Then
  loc_1750FA1:       For var_194 = (var_8C - 6) To (var_8C - 1):   var_94 = var_194 'Integer
  loc_1750FB1:         If (var_94 = (var_8C - 6)) Then
  loc_1750FC7:           var_238 = Me.FGrid1.Col
  loc_1751033:           var_C0 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), 5, CVar(Proc_6_38_E68A98(CVar(Me.var_238.Fields.Item("Code")), CVar(CLng(var_238)), CVar(CLng(var_90)))))
  loc_175103B:           var_158 = Space(((var_8C - 6) - Len(var_C0)))
  loc_1751043:           var_1B4 = (&HFF + Format(CVar(Me.var_238.Fields.Item("Code")), "00"))
  loc_175107F:           var_1DC = Space((var_1B4 - Len(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("code1")), 8))))
  loc_1751087:           var_1EC = (var_90 + var_1DC)
  loc_17510BC:           var_224 = (var_1EC + CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("code1")))))
  loc_17510C1:           var_288 = CVar(CStr(var_224)) 'String
  loc_17510C9:           Set var_29C = Me.FGrid1
  loc_17510CF:           LateIdCallSt
  loc_1751123:           var_D4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1751132:           Me.FGrid1.Col = "Code"
  loc_1751141:         End If
  loc_175114B:         If (var_94 = (var_8C - 5)) Then
  loc_1751165:           If (Me.Recordset15.RecordCount > 0) Then
  loc_175116E:             Me.Recordset15.MoveFirst
  loc_1751173:           End If
  loc_17511B6:           Me.Recordset15.Filter = CVar(var_29C & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='") & "'")
  loc_17511E3:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_175121A:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) = &HFF) Then
  loc_1751230:               var_2BC = Me.FGrid1.Col
  loc_1751275:               var_10C = (Me.var_2BC.Fields.Item("ShortName").Value + "(")
  loc_17512AB:               var_1B4 = (CVar(var_29C & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='") & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_17512B4:               var_1CC = (var_1B4 + ")")
  loc_17512BD:               var_1DC = (CVar(Me.Recordset15.Fields.Item("code1")) + vbCrLf)
  loc_17512EF:               var_224 = (CVar(CLng(var_2BC)) + CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("WaiterName")), var_1DC, "*")))
  loc_17512F8:               var_238 = (var_224 + vbCrLf)
  loc_1751301:               var_288 = (var_238 + "Vacant")
  loc_175130A:               var_2FC = CVar(CStr(CVar(CLng(var_90)) & var_288)) 'String
  loc_1751312:               Set var_1F4 = Me.FGrid1
  loc_1751318:               LateIdCallSt
  loc_1751356:               var_BA = CByte(0) 'Byte
  loc_175136E:               If (var_B8.RecordCount > 0) Then
  loc_175137D:                 var_B8.Filter = 0
  loc_1751385:                 var_B8.MoveFirst
  loc_175138A:               End If
  loc_17513CA:               var_B8.Filter = CVar(var_2FC & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_1F4) & "'")
  loc_17513F4:               If (var_B8.AbsolutePosition > 0) Then
  loc_1751428:                 If (IsNull(CVar(var_B8.Fields.Item("WaiterName"))) = 0) Then
  loc_175142F:                   var_BA = CByte(1) 'Byte
  loc_1751433:                 End If
  loc_1751433:               End If
  loc_1751436:             Else
  loc_175143A:               var_248 = CVar(CLng(var_90)) 'Long
  loc_1751449:               var_1EC = Me.FGrid1.Col
  loc_1751452:               var_268 = CVar(CLng(var_1EC)) 'Long
  loc_1751489:               var_10C = (Me.var_1EC.Fields.Item("ShortName").Value + "(")
  loc_17514BF:               var_1B4 = (CVar(var_2FC & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_1F4) & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_17514C8:               var_1CC = (var_1B4 + ")")
  loc_17514D1:               var_1DC = (CVar(Me.Recordset15.Fields.Item("code1")) + vbCrLf)
  loc_17514D6:               var_204 = CVar(CStr(var_1DC)) 'String
  loc_17514DE:               Set var_1BC = Me.FGrid1
  loc_17514E4:               LateIdCallSt
  loc_1751514:               var_BA = CByte(2) 'Byte
  loc_1751518:               ' Referenced from:     17517EE
  loc_1751570:               var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), Me.FGrid1.Fields.Item("Code").Value, var_1BC, var_204)) 'String
  loc_1751588:               If (var_268 = var_158) Then
  loc_17515A2:                 If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_17515A9:                   var_248 = CVar(CLng(var_90)) 'Long
  loc_17515F1:                   var_10C = Me.FGrid1.TextMatrix)
  loc_175162A:                   var_C4 = Proc_6_38_E68A98(CVar(Me.var_10C.Fields.Item("WaiterName")), CStr(var_10C), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_175162E:                   var_1B4 = CVar(CVar(CLng(Me.FGrid1.Col)) & var_C4) 'String
  loc_1751636:                   Set var_1BC = Me.FGrid1
  loc_175163C:                   LateIdCallSt
  loc_1751668:                 Else
  loc_1751698:                   var_10C = Me.FGrid1.TextMatrix)
  loc_17516D1:                   var_C0 = Proc_6_38_E68A98(CVar(Me.var_10C.Fields.Item("WaiterName")), CStr(var_10C), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), 1)
  loc_17516FA:                   If (InStr(var_1B4, var_1BC, var_C0, 0) = 0) Then
  loc_1751701:                     var_248 = CVar(CLng(var_90)) 'Long
  loc_1751749:                     var_10C = Me.FGrid1.TextMatrix)
  loc_1751789:                     var_114 = Proc_6_38_E68A98(CVar(Me.var_10C.Fields.Item("WaiterName")), CStr(var_10C) & ",", CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)))
  loc_175178D:                     var_1B4 = CVar(var_248 & var_114) 'String
  loc_1751795:                     Set var_1BC = Me.FGrid1
  loc_175179B:                     LateIdCallSt
  loc_17517C6:                   End If
  loc_17517C6:                 End If
  loc_17517CC:                 var_B0.MoveNext
  loc_17517E8:                 If (var_B0.AbsolutePosition < 0) Then
  loc_17517EB:                   GoTo loc_17517F1
  loc_17517EE:                 End If
  loc_17517EE:                 GoTo loc_1751518
  loc_17517F1:                 ' Referenced from:     17517EB
  loc_17517F1:               End If
  loc_1751800:               Me.Recordset15.Filter = 0
  loc_1751805:             End If
  loc_1751805:           End If
  loc_175181E:           var_D4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_175182D:           Me.FGrid1.Col = 0
  loc_175183C:         End If
  loc_1751846:         If (var_94 = (var_8C - 4)) Then
  loc_175185D:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_1751879:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_17518A0:           Call Proc_171_52_10C4B0C(CInt(CLng(Me.FGrid1.Col)), var_BA, Me.FGrid1.Col, var_92, var_1BC)
  loc_17518BE:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_17518DF:           var_D4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_17518EE:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_17518FD:         End If
  loc_1751907:         If (var_94 = (var_8C - 3)) Then
  loc_1751921:           If (Me.Recordset15.RecordCount > 0) Then
  loc_175192A:             Me.Recordset15.MoveFirst
  loc_175192F:           End If
  loc_1751972:           Me.Recordset15.Filter = CVar(var_248 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code ='", var_1B4) & "'")
  loc_175198B:           var_A4 = vbNullString
  loc_1751991:           var_A8 = vbNullString
  loc_1751997:           var_AC = vbNullString
  loc_17519B1:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_17519E8:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) <> &HFF) Then
  loc_17519EB:               ' Referenced from:   1751D66
  loc_1751A43:               var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), Me.Recordset15.Fields.Item("Code").Value)) 'String
  loc_1751A5B:               If (var_248 = var_158) Then
  loc_1751A75:                 If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_1751AA3:                   var_A4 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("VTIME")))
  loc_1751AB0:                   var_FC = CVar(CLng(var_90)) 'Long
  loc_1751ABF:                   var_10C = Me.FGrid1.Col
  loc_1751AF8:                   var_158 = CVar(Proc_6_38_E68A98(CVar(Me.var_10C.Fields.Item("WaiterName")), CVar(CLng(var_10C)))) 'String
  loc_1751B00:                   Set var_140 = Me.FGrid1
  loc_1751B06:                   LateIdCallSt
  loc_1751B23:                 Else
  loc_1751B4E:                   var_A8 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("VTIME")), var_140, var_158)
  loc_1751B87:                   var_10C = Me.FGrid1.TextMatrix)
  loc_1751BC7:                   var_C4 = Proc_6_38_E68A98(CVar(Me.var_10C.Fields.Item("WaiterName")), CStr(var_10C) & var_AC, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_1751BF2:                   If (InStr(var_FC, 1, var_C4, 0) = 0) Then
  loc_1751C2E:                     var_AC = var_288 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("WaiterName")), var_AC & ", ")
  loc_1751C3E:                   End If
  loc_1751C3E:                 End If
  loc_1751C44:                 var_B0.MoveNext
  loc_1751C60:                 If (var_B0.AbsolutePosition < 0) Then
  loc_1751C72:                   Me.Recordset15.Filter = 0
  loc_1751C7B:                   var_278 = CVar(CLng(var_90)) 'Long
  loc_1751C93:                   var_2CC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1751C9C:                   var_D4 = CVar(CLng(var_90)) 'Long
  loc_1751CB4:                   var_180 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1751D0B:                   var_1DC = (CVar(CStr(Me.FGrid1.TextMatrix)) & ",#" & var_A4) + IIf((var_A8 <> vbNullString), CVar(" To " & var_A8), vbNullString))
  loc_1751D14:                   var_1EC = (var_1DC + "#")
  loc_1751D1E:                   var_204 = (var_1EC + CVar(var_AC))
  loc_1751D23:                   var_238 = CVar(CStr(var_204)) 'String
  loc_1751D2B:                   Set var_140 = Me.FGrid1
  loc_1751D31:                   LateIdCallSt
  loc_1751D66:                 End If
  loc_1751D66:                 GoTo loc_17519EB
  loc_1751D69:               End If
  loc_1751D69:             End If
  loc_1751D69:           End If
  loc_1751D82:           var_D4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1751D91:           Me.FGrid1.Col = var_D4
  loc_1751DA0:         End If
  loc_1751DAA:         If (var_94 = (var_8C - 2)) Then
  loc_1751DF6:           var_158 = CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("KotYN")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), var_140, var_238)) 'String
  loc_1751DFE:           Set var_140 = Me.FGrid1
  loc_1751E04:           LateIdCallSt
  loc_1751E37:           var_D4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1751E46:           Me.FGrid1.Col = "KotYN"
  loc_1751E55:         End If
  loc_1751E5F:         If (var_94 = (var_8C - 1)) Then
  loc_1751E7B:           var_D4 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_1751E8A:           Me.FGrid1.Col = "KotYN"
  loc_1751E99:         End If
  loc_1751E9C:       Next var_194 'Integer
  loc_1751EA7:       var_90 = (var_90 + 1)
  loc_1751EB4:       If (var_90 > (var_8A - 1)) Then
  loc_1751ED0:         var_D4 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_1751EDF:         Me.FGrid1.Col = "KotYN"
  loc_1751EEE:       End If
  loc_1751EF4:       var_88.MoveNext
  loc_1751F0D:       If (var_88.EOF = &HFF) Then
  loc_1751F10:         GoTo loc_1751F19
  loc_1751F13:       End If
  loc_1751F13:       GoTo loc_1750F80
  loc_1751F16:     End If
  loc_1751F16:     GoTo loc_1750F66
  loc_1751F19:     ' Referenced from:   1751F10
  loc_1751F19:   End If
  loc_1751F19: End If
  loc_1751F27: Me.FGrid1.Redraw = True
  loc_1751F34: Set var_88 = Nothing
  loc_1751F3C: Set var_B0 = Nothing
  loc_1751F44: Set var_A0 = Nothing
  loc_1751F4C: Set var_B8 = Nothing
  loc_1751F4F: Exit Sub
End Sub

Public Sub Proc_171_50_1685904
  'Data Table: 535CB0
  Dim var_BC As String
  Dim unk_535CBA As Connection15
  Dim var_D0 As Variant
  Dim var_9C As Recordset15
  Dim var_E4 As Variant
  Dim var_E0 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_110 As String
  Dim var_114 As String
  Dim var_118 As String
  Dim var_11C As String
  Dim var_128 As String
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_8A As Integer
  Dim var_90 As Integer
  Dim var_8C As Integer
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_108 As Variant
  Dim var_174 As Variant
  Dim var_188 As Variant
  Dim var_178 As Fields15
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_1C0 As Fields15
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  Dim var_254 As Variant
  Dim var_244 As Variant
  Dim var_1AC As Variant
  Dim var_278 As Variant
  Dim var_2C8 As Variant
  Dim var_B4 As Recordset15
  Dim var_154 As Variant
  Dim var_AC As Recordset15
  Dim var_298 As Long
  loc_168418F: unk_535CBA.Execute "Select Order_Booking,Kotyn from Depart where Code='" & global_52 & "'", var_E0, -1
  loc_168419A: Set var_9C = var_E4
  loc_16841D8: global_108 = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("KotYN")))
  loc_1684213: global_112 = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Order_Booking")))
  loc_1684232: var_E4 = var_9C.Fields
  loc_1684242: var_E0 = var_E4.Item("KotYN").Value
  loc_168425C: If (var_E0 = "Y") Then
  loc_1684265:   var_10C = global_88
  loc_1684270:   If (var_10C = "Outlet") Then
  loc_1684287:     var_BC = "SELECT LTrim(RTrim(RoomMast.Code)) as code,'' as Code1,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_16842A9:     var_118 = var_BC & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='" & global_100 & "' and RoomMast.RestCode='" & global_52
  loc_16842B9:     unk_535CBA.Execute var_118 & "' ORDER BY  RoomMast.code", var_E0, -1
  loc_16842C4:     Set var_88 = var_E4
  loc_16842F3:     var_BC = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & global_52
  loc_168430B:     var_114 = var_BC & "' And  RoomCat='REST' and RoomType='" & global_100 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_1684325:     unk_535CBA.Execute var_114 & global_52 & "' order by T.Code", var_E0, -1
  loc_1684330:     Set var_AC = var_E4
  loc_168435C:     var_BC = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_168436A:     var_110 = var_BC & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_1684378:     var_118 = var_110 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & " And Sale1.RoomCat='REST' And Sale1.RoomType='"
  loc_168439A:     var_128 = var_118 & global_100 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_16843B4:     unk_535CBA.Execute var_128 & global_52 & "' Order by T.Code", var_E0, -1
  loc_16843BF:     Set var_B4 = var_E4
  loc_16843E4:   Else
  loc_16843EC:     If (var_10C = "Room Service") Then
  loc_1684403:       var_BC = "SELECT LTrim(RTrim(RC.RoomNo)) AS Code,RC.Foliono AS Code1, RC.RoomNo AS Name,D.Code As RestCode,D.Name as RestName,D.ShortName,RC.SITE_CODE,RC.LOGSITE_CODE,D.KOTYn, RC.RoomCat, GuestProf.Name as Guest, PlanName = Case  When isnull(PlanMast.Name,'')='' then 'Europian Plan' else PlanMast.Name end, GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3,RC.Docid   FROM Depart D, (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) LEFT JOIN PlanMast ON RC.PlanCode = PlanMast.Code where (RC.LOGSITE_CODE='" & MemVar_1F92078
  loc_168441B:       var_114 = var_BC & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('" & global_100 & "') AND RC.CHKOUTDATE IS NULL And D.Code='"
  loc_1684432:       unk_535CBA.Execute var_114 & MemVar_1F92078 & "RS' Order by RC.ROOMNO", var_E0, -1
  loc_168443D:       Set var_88 = var_E4
  loc_168446C:       var_BC = "Select LTrim(RTrim(T.Code)) as Code,T.Code As Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & global_52
  loc_1684484:       var_114 = var_BC & "' and RoomType='" & global_100 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='ROOM' order by T.Code"
  loc_168448D:       unk_535CBA.Execute var_114, var_E0, -1
  loc_1684498:       Set var_AC = var_E4
  loc_16844C0:       var_BC = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_16844CE:       var_110 = var_BC & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_16844E6:       var_11C = var_110 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & "And Sale1.RoomType='" & global_100
  loc_16844FE:       var_128 = var_11C & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_1684518:       unk_535CBA.Execute var_128 & global_52 & "' Order by T.Code", var_E0, -1
  loc_1684523:       Set var_B4 = var_E4
  loc_1684545:     End If
  loc_1684545:   End If
  loc_168454D:   If (MemVar_1F9220C <> "Yes") Then
  loc_1684556:     var_134 = global_88
  loc_1684561:     If (var_134 = "Outlet") Then
  loc_168456D:       Set var_E4 = Me.CmdPKOT
  loc_1684573:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_1684584:       Set var_E4 = Me.CmdOrderBook
  loc_168458A:       Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010007(False)
  loc_1684596:       Set var_E4 = Me.CmdPKOT
  loc_168459C:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(var_E4)
  loc_16845AE:       Set var_E8 = Me.CmdCancel
  loc_16845B4:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(var_E4)))
  loc_16845C7:       Set var_E4 = Me.CmdAKOT
  loc_16845CD:       Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_E4)
  loc_16845E5:       Me.FrameOption.Height = (CDbl(var_E4) * CDbl(5))
  loc_16845F7:     Else
  loc_16845FF:       If (var_134 = "Room Service") Then
  loc_168460B:         Set var_E4 = Me.CmdChngTable
  loc_1684611:         Call {33AD4F22-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1684622:         Set var_E4 = Me.CmdBillLookup
  loc_1684628:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_1684639:         Set var_E4 = Me.CmdPKOT
  loc_168463F:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_1684650:         Set var_E4 = Me.CmdOrderBook
  loc_1684656:         Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010007(False)
  loc_1684662:         Set var_E4 = Me.CmdChngTable
  loc_1684668:         Call {33AD4F22-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_E4)
  loc_168467A:         Set var_E8 = Me.CmdCancel
  loc_1684680:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(var_E4)))
  loc_1684699:         Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006(Me.CmdAKOT)
  loc_16846B1:         Me.FrameOption.Height = (CDbl() * CDbl(3))
  loc_16846C9:         Set var_E4 = Me.CmdUnSBill
  loc_16846CF:         Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_16846D7:       End If
  loc_16846D7:     End If
  loc_16846DA:   Else
  loc_16846E3:     Set var_E4 = Me.CmdOrderBook
  loc_16846E9:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010007(False)
  loc_16846F5:     Set var_E4 = Me.CmdOrderBook
  loc_16846FB:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004()
  loc_168470D:     Set var_E8 = Me.CmdCancel
  loc_1684713:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_1684726:     Set var_E4 = Me.CmdAKOT
  loc_168472C:     Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_1684744:     Me.FrameOption.Height = (CDbl() * CDbl(6))
  loc_1684753:   End If
  loc_1684756: Else
  loc_168476A:   var_BC = "SELECT LTrim(RTrim(RoomMast.Code)) as code,'' as Code1,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_168478C:   var_118 = var_BC & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='" & global_100 & "' and RoomMast.RestCode='" & global_52
  loc_168479C:   unk_535CBA.Execute var_118 & "' ORDER BY  RoomMast.code", var_E0, -1
  loc_16847A7:   Set var_88 = var_E4
  loc_16847D6:   var_BC = "Select  LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode,CONTRADOCID From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,KOT.VTime,WAITER,WAITER.NAME AS WAITERNAME,CONTRADOCID FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER)WHERE KOT.RestCode='" & global_52
  loc_16847EE:   var_114 = var_BC & "' And  RoomCat='REST' and RoomType='" & global_100 & "' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_1684808:   unk_535CBA.Execute var_114 & global_52 & "' order by T.Code", var_E0, -1
  loc_1684813:   Set var_AC = var_E4
  loc_168483F:   var_BC = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_168484D:   var_110 = var_BC & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_168485B:   var_118 = var_110 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & " And Sale1.RoomCat='REST' And Sale1.RoomType='"
  loc_168487D:   var_128 = var_118 & global_100 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_1684897:   unk_535CBA.Execute var_128 & global_52 & "' Order by T.Code", var_E0, -1
  loc_16848A2:   Set var_B4 = var_E4
  loc_16848E6:   var_E0 = var_9C.Fields.Item("Order_Booking").Value
  loc_1684900:   If CBool(var_E0 <> "Y") Then
  loc_168490C:     Set var_E4 = Me.CmdAKOT
  loc_1684912:     Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1684923:     Set var_E4 = Me.CmdChngTable
  loc_1684929:     Call {33AD4F22-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_168493A:     Set var_E4 = Me.CmdBillLookup
  loc_1684940:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_1684951:     Set var_E4 = Me.CmdPKOT
  loc_1684957:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_1684968:     Set var_E4 = Me.CmdOrderBook
  loc_168496E:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010007(False)
  loc_1684988:     Call {33AD4F1A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_1684994:     Set var_E8 = Me.CmdSBill
  loc_168499A:     Call {33AD4F1A-6699-11CF-B70C00AA0060D393}.DispID_80010004(Me.CmdSBill)
  loc_16849A7:     Set var_E4 = Me.CmdSBill
  loc_16849AD:     Call {33AD4F1A-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_E4)
  loc_16849BC:     var_D0 = CVar((CDbl(var_E4) + CDbl(var_108))) 'Single
  loc_16849C5:     Set var_138 = Me.CmdCancel
  loc_16849CB:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_16849E4:     Set var_E4 = Me.CmdAKOT
  loc_16849EA:     Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_1684A02:     Me.FrameOption.Height = (CDbl() * CDbl(2))
  loc_1684A14:   Else
  loc_1684A1D:     Set var_E4 = Me.CmdAKOT
  loc_1684A23:     Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1684A34:     Set var_E4 = Me.CmdChngTable
  loc_1684A3A:     Call {33AD4F22-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1684A4B:     Set var_E4 = Me.CmdBillLookup
  loc_1684A51:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_1684A62:     Set var_E4 = Me.CmdPKOT
  loc_1684A68:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_1684A7C:     Set var_E4 = Me.CmdSBill
  loc_1684A82:     Call {33AD4F1A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_1684A8E:     Set var_E8 = Me.CmdSBill
  loc_1684A94:     Call {33AD4F1A-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_1684AA1:     Set var_E4 = Me.CmdSBill
  loc_1684AA7:     Call {33AD4F1A-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_1684AB6:     var_D0 = CVar((CDbl() + CDbl(var_108))) 'Single
  loc_1684ABF:     Set var_138 = Me.CmdOrderBook
  loc_1684AC5:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004(CVar(CDbl(0)))
  loc_1684ADE:     Set var_E8 = Me.CmdOrderBook
  loc_1684AE4:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004()
  loc_1684AF1:     Set var_E4 = Me.CmdOrderBook
  loc_1684AF7:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010006()
  loc_1684B06:     var_D0 = CVar((CDbl() + CDbl(var_108))) 'Single
  loc_1684B0F:     Set var_138 = Me.CmdCancel
  loc_1684B15:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_1684B2E:     Set var_E4 = Me.CmdAKOT
  loc_1684B34:     Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_1684B46:     Set var_E8 = Me.FrameOption
  loc_1684B4C:     var_E8.Height = (CDbl() * CDbl(3))
  loc_1684B5B:     Call Proc_171_48_1173A50()
  loc_1684B6C:     Me.FrPendingOrder.Visible = True
  loc_1684B74:   End If
  loc_1684B74: End If
  loc_1684B7A: var_F8 = 0
  loc_1684BAA: unk_535CBA.Execute "Select Name From Depart Where Code ='" & global_52 & "'", var_E0, -1
  loc_1684BB2: var_E4 = var_E4.Fields
  loc_1684BBA: var_F8 = var_E8.Item(var_E8)
  loc_1684BC2: var_138 = var_138.Value
  loc_1684BD8: Me.Label4.Caption = CStr(var_108)
  loc_1684C0F: If (Me.Recordset15.RecordCount > 0) Then
  loc_1684C2A:   var_8A = CInt((Me.Recordset15.RecordCount + 1))
  loc_1684C30: Else
  loc_1684C35:   global_104 = &HFF
  loc_1684C3B: Else
  loc_1684C3D:   var_90 = 1
  loc_1684C42:   var_8C = 7
  loc_1684C58:   Me.FGridTb.Rows = CVar(CLng(var_8A))
  loc_1684C73:   Me.FGridTb.Cols = CVar(CLng(var_8C))
  loc_1684C84:   Set var_E4 = Me.FGridTb
  loc_1684C8A:   var_E4.Redraw = False
  loc_1684C92:   ' Referenced from:   16858C9
  loc_1684CA4:   If Not(Me.var_E4.EOF) Then
  loc_1684D0E:     var_108 = CVar(Me.Recordset15.Fields.Item("Code")) 'Address
  loc_1684D17:     var_BC = Proc_6_38_E68A98(var_108, 5, CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), 1, CVar(CLng(var_90)), var_8C)), var_90)
  loc_1684D1F:     var_154 = Space((global_104 - Len(var_BC)))
  loc_1684D27:     var_174 = (var_8A + var_154)
  loc_1684D63:     var_1AC = Space((var_174 - Len(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("code1")), 8))))
  loc_1684D6B:     var_1BC = (var_108 + var_1AC)
  loc_1684DA0:     var_204 = (var_1BC + CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("code1")))))
  loc_1684DA5:     var_254 = CVar(CStr(var_204)) 'String
  loc_1684DAD:     Set var_268 = Me.FGridTb
  loc_1684DB3:     LateIdCallSt
  loc_1684E01:     If (Me.FGridTb.RecordCount > 0) Then
  loc_1684E0A:       Me.Recordset15.MoveFirst
  loc_1684E0F:     End If
  loc_1684E52:     Me.Recordset15.Filter = CVar(var_268 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='") & "'")
  loc_1684E7F:     If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_1684EB6:       If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) = &HFF) Then
  loc_1684F02:         var_108 = (Me.Recordset15.Fields.Item("ShortName").Value + "(")
  loc_1684F38:         var_174 = (CVar(var_268 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='") & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_1684F41:         var_19C = (var_174 + ")")
  loc_1684F4A:         var_1AC = (CVar(Me.Recordset15.Fields.Item("code1")) + vbCrLf)
  loc_1684F7C:         var_204 = (2 + CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("WaiterName")), var_1AC, "*")))
  loc_1684F85:         var_254 = (var_204 + vbCrLf)
  loc_1684F8E:         var_278 = (var_254 + "Vacant")
  loc_1684F97:         var_2C8 = CVar(CStr(CVar(CLng(var_90)) & var_278)) 'String
  loc_1684F9F:         Set var_1C0 = Me.FGridTb
  loc_1684FA5:         LateIdCallSt
  loc_1684FDF:         var_B6 = CByte(0) 'Byte
  loc_1684FF7:         If (var_B4.RecordCount > 0) Then
  loc_1685006:           var_B4.Filter = 0
  loc_168500E:           var_B4.MoveFirst
  loc_1685013:         End If
  loc_1685053:         var_B4.Filter = CVar(var_2C8 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_1C0) & "'")
  loc_168507D:         If (var_B4.AbsolutePosition > 0) Then
  loc_16850B1:           If (IsNull(CVar(var_B4.Fields.Item("WaiterName"))) = 0) Then
  loc_16850B8:             var_B6 = CByte(1) 'Byte
  loc_16850BC:           End If
  loc_16850BC:         End If
  loc_16850BF:       Else
  loc_16850C3:         var_214 = CVar(CLng(var_90)) 'Long
  loc_16850C8:         var_234 = 2
  loc_1685103:         var_108 = (Me.Recordset15.Fields.Item("ShortName").Value + "(")
  loc_1685139:         var_174 = (CVar(var_2C8 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_1C0) & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_1685142:         var_19C = (var_174 + ")")
  loc_168514B:         var_1AC = (CVar(Me.Recordset15.Fields.Item("code1")) + vbCrLf)
  loc_1685150:         var_1BC = CVar(CStr(var_1AC)) 'String
  loc_1685158:         Set var_178 = Me.FGridTb
  loc_168515E:         LateIdCallSt
  loc_168518A:         var_B6 = CByte(2) 'Byte
  loc_168518E:         ' Referenced from:     1685405
  loc_16851E6:         var_154 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), Me.FGridTb.Fields.Item("Code").Value, var_178, var_1BC)) 'String
  loc_16851FE:         If (var_234 = var_154) Then
  loc_1685218:           If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_168521F:             var_214 = CVar(CLng(var_90)) 'Long
  loc_1685249:             var_E0 = Me.FGridTb.TextMatrix)
  loc_1685286:             var_154 = CVar(2 & Proc_6_38_E68A98(CVar(Me.var_E0.Fields.Item("WaiterName")), CStr(var_E0), 2, CVar(CLng(var_90)))) 'String
  loc_168528E:             Set var_13C = Me.FGridTb
  loc_1685294:             LateIdCallSt
  loc_16852B8:           Else
  loc_16852D9:             var_E0 = Me.FGridTb.TextMatrix)
  loc_1685337:             If (InStr(var_154, var_13C, Proc_6_38_E68A98(CVar(Me.var_E0.Fields.Item("WaiterName")), CStr(var_E0), 2, CVar(CLng(var_90)), 1), 0) = 0) Then
  loc_168533E:               var_214 = CVar(CLng(var_90)) 'Long
  loc_1685368:               var_E0 = Me.FGridTb.TextMatrix)
  loc_16853AC:               var_154 = CVar(var_214 & Proc_6_38_E68A98(CVar(Me.var_E0.Fields.Item("WaiterName")), CStr(var_E0) & ",", 2, CVar(CLng(var_90)), 2)) 'String
  loc_16853B4:               Set var_13C = Me.FGridTb
  loc_16853BA:               LateIdCallSt
  loc_16853DD:             End If
  loc_16853DD:           End If
  loc_16853E3:           var_AC.MoveNext
  loc_16853FF:           If (var_AC.AbsolutePosition < 0) Then
  loc_1685402:             GoTo loc_1685408
  loc_1685405:           End If
  loc_1685405:           GoTo loc_168518E
  loc_1685408:           ' Referenced from:     1685402
  loc_1685408:         End If
  loc_1685417:         Me.Recordset15.Filter = 0
  loc_168541C:       End If
  loc_168541C:     End If
  loc_1685429:     Set var_E4 = Me.FGridTb
  loc_168542F:     var_E4.Row = CVar(CLng(var_90))
  loc_168543F:     Call Proc_171_53_F6F718(2, var_B6, var_13C, var_154)
  loc_168545B:     If (Me.var_E4.RecordCount > 0) Then
  loc_1685464:       Me.Recordset15.MoveFirst
  loc_1685469:     End If
  loc_16854AC:     Me.Recordset15.Filter = CVar(var_214 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code ='", var_214) & "'")
  loc_16854C5:     var_A0 = vbNullString
  loc_16854CB:     var_A4 = vbNullString
  loc_16854D1:     var_A8 = vbNullString
  loc_16854EB:     If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_1685522:       If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) <> &HFF) Then
  loc_1685525:         ' Referenced from:   1685854
  loc_1685595:         If (var_254 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), Me.Recordset15.Fields.Item("Code").Value))) Then
  loc_16855AF:           If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_16855DD:             var_A0 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("VTIME")))
  loc_16855EA:             var_F8 = CVar(CLng(var_90)) 'Long
  loc_1685623:             var_108 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("WaiterName")), 3)) 'String
  loc_168562B:             Set var_138 = Me.FGridTb
  loc_1685631:             LateIdCallSt
  loc_168564A:           Else
  loc_1685675:             var_A4 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("VTIME")), var_138)
  loc_168569F:             var_E0 = Me.FGridTb.TextMatrix)
  loc_16856D6:             var_108 = CVar(Me.var_E0.Fields.Item("WaiterName")) 'Address
  loc_1685706:             If (InStr(var_108, 1, Proc_6_38_E68A98(var_108, CStr(var_E0) & var_A8, 3, CVar(CLng(var_90))), 0) = 0) Then
  loc_1685742:               var_A8 = var_F8 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("WaiterName")), var_A8 & ", ")
  loc_1685752:             End If
  loc_1685752:           End If
  loc_1685758:           var_AC.MoveNext
  loc_1685774:           If (var_AC.AbsolutePosition < 0) Then
  loc_1685786:             Me.Recordset15.Filter = 0
  loc_168578F:             var_244 = CVar(CLng(var_90)) 'Long
  loc_1685794:             var_298 = 3
  loc_16857A1:             var_D0 = CVar(CLng(var_90)) 'Long
  loc_16857A6:             var_188 = 3
  loc_1685801:             var_19C = (CVar(CStr(Me.FGridTb.TextMatrix)) & ",#" & var_A0) + IIf((var_A4 <> vbNullString), CVar(" To " & var_A4), vbNullString))
  loc_168580A:             var_1AC = (CVar(Me.Recordset15.Fields.Item("code1")) + "#")
  loc_1685814:             var_1BC = (var_1AC + CVar(var_A8))
  loc_1685819:             var_1E4 = CVar(CStr(var_1BC)) 'String
  loc_1685821:             Set var_E8 = Me.FGridTb
  loc_1685827:             LateIdCallSt
  loc_1685854:           End If
  loc_1685854:           GoTo loc_1685525
  loc_1685857:         End If
  loc_1685857:       End If
  loc_1685857:     End If
  loc_1685880:     var_E8 = var_9C.Fields.Item("KotYN")
  loc_1685891:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_E8), 4, CVar(CLng(var_90)), var_E8, var_1E4)) 'String
  loc_1685899:     Set var_138 = Me.FGridTb
  loc_168589F:     LateIdCallSt
  loc_16858BB:     var_90 = (var_90 + 1)
  loc_16858C4:     Me.FGridTb.MoveNext
  loc_16858C9:     GoTo loc_1684C92
  loc_16858CC:   End If
  loc_16858CC: End If
  loc_16858DA: Me.FGridTb.Redraw = True
  loc_16858E7: Set var_88 = Nothing
  loc_16858EF: Set var_AC = Nothing
  loc_16858F7: Set var_9C = Nothing
  loc_16858FF: Set var_B4 = Nothing
  loc_1685902: Exit Sub
End Sub

Public Sub Proc_171_51_111EA48(arg_C, arg_10) '111EA48
  'Data Table: 535CB0
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_FC As String
  Dim arg_10 As Integer
  loc_111E6EF: Me.FGrid1.Row = 0
  loc_111E70A: var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111E70F: var_CC = 0
  loc_111E71C: Set var_E0 = Me.FGrid1
  loc_111E722: LateIdCallSt
  loc_111E734: ' Referenced from: 111E98B
  loc_111E73A: If (arg_10 < 5) Then
  loc_111E73D:   GoTo loc_111E98E
  loc_111E740: End If
  loc_111E744: Set var_E4 = Me.FGrid1
  loc_111E755: For var_E8 = arg_10 To (arg_10 - 3) Step &HFF: var_86 = var_E8 'Integer
  loc_111E75F:   var_98 = CVar(CLng(var_86)) 'Long
  loc_111E764:   var_CC = 0
  loc_111E771:   Set var_AC = Me.FGrid1
  loc_111E777:   LateIdCallSt
  loc_111E785: Next var_E8 'Integer
  loc_111E799: For var_EC = (arg_10 - 5) To (arg_10 - 4): var_86 = var_EC 'Integer
  loc_111E7A9:   If (var_86 = (arg_10 - 5)) Then
  loc_111E7B0:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111E7B5:     var_CC = 0
  loc_111E7C2:     Set var_AC = Me.FGrid1
  loc_111E7C8:     LateIdCallSt
  loc_111E7D7:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111E7DC:     var_CC = 1
  loc_111E7E6:     Set var_AC = Me.FGrid1
  loc_111E7EC:     LateIdCallSt
  loc_111E80A:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111E813:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111E818:     var_FC = "Table No"
  loc_111E822:     Set var_E0 = Me.FGrid1
  loc_111E828:     LateIdCallSt
  loc_111E83A:   End If
  loc_111E844:   If (var_86 = (arg_10 - 4)) Then
  loc_111E84B:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111E850:     var_CC = &H4B0
  loc_111E85D:     Set var_AC = Me.FGrid1
  loc_111E863:     LateIdCallSt
  loc_111E872:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111E877:     var_CC = 1
  loc_111E881:     Set var_AC = Me.FGrid1
  loc_111E887:     LateIdCallSt
  loc_111E8A5:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111E8AE:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111E8B3:     var_FC = "Status"
  loc_111E8BD:     Set var_E0 = Me.FGrid1
  loc_111E8C3:     LateIdCallSt
  loc_111E8D5:   End If
  loc_111E8DF:   If (var_86 = (arg_10 - 3)) Then
  loc_111E8E6:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111E8EB:     var_CC = &H12C
  loc_111E8F8:     Set var_AC = Me.FGrid1
  loc_111E8FE:     LateIdCallSt
  loc_111E90D:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111E918:     var_CC = CVar(CInt(4)) 'Integer
  loc_111E920:     Set var_AC = Me.FGrid1
  loc_111E926:     LateIdCallSt
  loc_111E944:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111E94D:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111E952:     var_FC = vbNullString
  loc_111E95C:     Set var_E0 = Me.FGrid1
  loc_111E962:     LateIdCallSt
  loc_111E974:   End If
  loc_111E977: Next var_EC 'Integer
  loc_111E97E: Set var_E4 = Nothing 
  loc_111E988: arg_10 = (arg_10 - 6)
  loc_111E98B: GoTo loc_111E734
  loc_111E98E: ' Referenced from: 111E73D
  loc_111E9B5: For var_110 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_110 'Integer
  loc_111E9CE:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_111E9DE:   For var_114 = 1 To arg_C: var_88 = var_114 'Integer
  loc_111E9F7:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_111EA12:     Me.FGrid1.CellBackColor = &HE69839
  loc_111EA2D:     Me.FGrid1.CellForeColor = &HFFFF
  loc_111EA38:   Next var_114 'Integer
  loc_111EA40: Next var_110 'Integer
  loc_111EA45: Exit Sub
End Sub

Public Sub Proc_171_52_10C4B0C
  'Data Table: 535CB0
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_C0 As Variant
  loc_10C4818: var_86 = arg_10 'Byte
  loc_10C4825: If (var_86 = CByte(0)) Then
  loc_10C4841:   var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C484A:   Set var_C0 = Me.FGrid1
  loc_10C4850:   var_C0.Col = var_AC
  loc_10C486B:   Set var_8C = Me.Label2
  loc_10C4871:   Call 0.Method_Proc_171_52_10C4B0C0 (6, var_C0)
  loc_10C4890:   Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C48B7:   var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C48C0:   Set var_C0 = Me.FGrid1
  loc_10C48C6:   var_C0.Col = CVar(var_C0.BackColor)
  loc_10C48E1:   Set var_8C = Me.Label2
  loc_10C48E7:   Call 0.Method_Proc_171_52_10C4B0C0 (6, var_C0)
  loc_10C4906:   Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C4917: Else
  loc_10C4920:   If (var_86 = CByte(1)) Then
  loc_10C493C:     var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C4945:     Set var_C0 = Me.FGrid1
  loc_10C494B:     var_C0.Col = CVar(var_C0.BackColor)
  loc_10C4966:     Set var_8C = Me.Label2
  loc_10C496C:     Call 0.Method_Proc_171_52_10C4B0C0 (7, var_C0)
  loc_10C498B:     Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C49B2:     var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C49BB:     Set var_C0 = Me.FGrid1
  loc_10C49C1:     var_C0.Col = CVar(var_C0.BackColor)
  loc_10C49DC:     Set var_8C = Me.Label2
  loc_10C49E2:     Call 0.Method_Proc_171_52_10C4B0C0 (7, var_C0)
  loc_10C4A01:     Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C4A12:   Else
  loc_10C4A1B:     If (var_86 = CByte(2)) Then
  loc_10C4A37:       var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C4A40:       Set var_C0 = Me.FGrid1
  loc_10C4A46:       var_C0.Col = CVar(var_C0.BackColor)
  loc_10C4A61:       Set var_8C = Me.Label2
  loc_10C4A67:       Call 0.Method_Proc_171_52_10C4B0C0 (5, var_C0)
  loc_10C4A86:       Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C4AAD:       var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C4AB6:       Set var_C0 = Me.FGrid1
  loc_10C4ABC:       var_C0.Col = CVar(var_C0.BackColor)
  loc_10C4AD7:       Set var_8C = Me.Label2
  loc_10C4ADD:       Call 0.Method_Proc_171_52_10C4B0C0 (5, var_C0)
  loc_10C4AFC:       Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C4B0A:     End If
  loc_10C4B0A:   End If
  loc_10C4B0A: End If
  loc_10C4B0A: Exit Sub
End Sub

Public Sub Proc_171_53_F6F718(arg_C, arg_10) 'F6F718
  'Data Table: 535CB0
  Dim var_AC As MSHFlexGrid
  Dim var_B0 As Label
  loc_F6F5D8: var_86 = arg_10 'Byte
  loc_F6F5E5: If (var_86 = CByte(0)) Then
  loc_F6F5FB:   Me.FGridTb.Col = CVar(CLng(arg_C))
  loc_F6F60F:   Set var_AC = Me.Label2
  loc_F6F615:   Call 0.Method_Proc_171_53_F6F7180 (6, var_B0)
  loc_F6F634:   Me.FGridTb.CellBackColor = CVar(var_B0.BackColor)
  loc_F6F645: Else
  loc_F6F64E:   If (var_86 = CByte(1)) Then
  loc_F6F664:     Me.FGridTb.Col = CVar(CLng(arg_C))
  loc_F6F678:     Set var_AC = Me.Label2
  loc_F6F67E:     Call 0.Method_Proc_171_53_F6F7180 (7, var_B0)
  loc_F6F69D:     Me.FGridTb.CellBackColor = CVar(var_B0.BackColor)
  loc_F6F6AE:   Else
  loc_F6F6B7:     If (var_86 = CByte(2)) Then
  loc_F6F6CD:       Me.FGridTb.Col = CVar(CLng(arg_C))
  loc_F6F6E1:       Set var_AC = Me.Label2
  loc_F6F6E7:       Call 0.Method_Proc_171_53_F6F7180 (5, var_B0)
  loc_F6F706:       Me.FGridTb.CellBackColor = CVar(var_B0.BackColor)
  loc_F6F714:     End If
  loc_F6F714:   End If
  loc_F6F714: End If
  loc_F6F714: Exit Sub
End Sub

Public Sub Proc_171_54_EC89D8
  'Data Table: 535CB0
  Dim var_C4 As Integer
  Dim var_88 As String
  Dim unk_535CBA As Connection15
  Dim var_B0 As Recordset15
  Dim var_B4 As Fields15
  Dim var_C8 As Field20
  loc_EC894A: var_C4 = 0
  loc_EC896A: var_88 = "Select Count(DOCID) from KOT Where ISNULL(PrintFlag,'')='N' AND Printed<>'Y' AND PENDING='Y' And RestCode='" & global_52
  loc_EC897A: unk_535CBA.Execute var_88 & "'", var_AC, -1
  loc_EC8982: var_B0 = var_B0.Fields
  loc_EC898A: var_C4 = var_B4.Item(var_B4)
  loc_EC8992: var_C8 = var_C8.Value
  loc_EC89B9: If (var_D8 > 0) Then
  loc_EC89C9:   Set var_B0 = Me.cmdPrintPKOT
  loc_EC89CF:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_2D(&HFF00)
  loc_EC89D7: End If
  loc_EC89D7: Exit Sub
End Sub
