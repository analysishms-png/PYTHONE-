VERSION 5.00
Begin VB.Form RsTouchDisplayTB
  Caption = "Display Table"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  Begin BtnEnh BtnEnhTB
    Index = 0
    Left = 1095
    Top = 6165
    Width = 1155
    Height = 945
    Visible = 0   'False
    TabIndex = 36
  End
  Begin Timer Timer1
    Enabled = 0   'False
    Interval = 10000
    Left = 9810
    Top = 3825
  End
  Begin Frame FrameOption
    Caption = "Frame1"
    BackColor = &HFFC0FF&
    Left = 11685
    Top = 1725
    Width = 2730
    Height = 4155
    TabIndex = 13
    BorderStyle = 0 'None
    Begin BtnEnh CmdAKOT
      Left = 0
      Top = 0
      Width = 2700
      Height = 600
      TabIndex = 29
    End
    Begin BtnEnh CmdSBill
      Left = 0
      Top = 585
      Width = 2700
      Height = 600
      TabIndex = 30
    End
    Begin BtnEnh CmdChngTable
      Left = 0
      Top = 1170
      Width = 2700
      Height = 600
      TabIndex = 31
    End
    Begin BtnEnh CmdBillLookup
      Left = 0
      Top = 1755
      Width = 2700
      Height = 600
      TabIndex = 32
    End
    Begin BtnEnh CmdPKOT
      Left = 0
      Top = 2340
      Width = 2700
      Height = 600
      TabIndex = 33
    End
    Begin BtnEnh CmdOrderBook
      Left = 0
      Top = 2925
      Width = 2700
      Height = 600
      TabIndex = 34
    End
    Begin BtnEnh CmdCancel
      Left = 0
      Top = 3510
      Width = 2700
      Height = 600
      TabIndex = 35
    End
  End
  Begin Frame FrPendingOrder
    Caption = "PENDING ORDER"
    BackColor = &HD6D7C6&
    Left = 375
    Top = 10350
    Width = 9330
    Height = 2580
    TabIndex = 8
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdExit2
      Caption = "Exit"
      Left = 8085
      Top = 495
      Width = 1000
      Height = 1000
      Visible = 0   'False
      TabIndex = 11
      TabStop = 0   'False
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchDisplayTB.frx":0
      DisabledPicture = "RsTouchDisplayTB.frx":4E1
      Style = 1
    End
    Begin CommandButton CmdDown2
      Caption = "Down"
      Left = 7080
      Top = 495
      Width = 1000
      Height = 1000
      TabIndex = 10
      TabStop = 0   'False
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchDisplayTB.frx":91E
      DisabledPicture = "RsTouchDisplayTB.frx":DAD
      Style = 1
    End
    Begin CommandButton CmdUp2
      Caption = "Up"
      Left = 6075
      Top = 495
      Width = 1000
      Height = 1000
      TabIndex = 9
      TabStop = 0   'False
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "RsTouchDisplayTB.frx":11BB
      DisabledPicture = "RsTouchDisplayTB.frx":1658
      Style = 1
    End
    Begin MSHFlexGrid FGrid2
      Left = 315
      Top = 510
      Width = 5535
      Height = 1965
      TabIndex = 12
    End
  End
  Begin Frame FrSettlement
    Caption = "UNSETTLED BILL"
    BackColor = &HD6D7C6&
    ForeColor = &HC0&
    Left = 4515
    Top = 6000
    Width = 9330
    Height = 2580
    TabIndex = 0
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin MSHFlexGrid FGrid
      Left = 435
      Top = 480
      Width = 5535
      Height = 1965
      TabIndex = 1
    End
    Begin BtnEnh CmdUP
      Left = 6090
      Top = 1500
      Width = 1005
      Height = 1005
      TabIndex = 2
    End
    Begin BtnEnh CmdDown
      Left = 7080
      Top = 1515
      Width = 1005
      Height = 1005
      TabIndex = 3
    End
    Begin BtnEnh CmdExit
      Left = 8085
      Top = 1515
      Width = 1005
      Height = 1005
      TabIndex = 4
    End
    Begin BtnEnh CmdRef
      Left = 6270
      Top = 150
      Width = 1005
      Height = 1005
      TabIndex = 37
    End
  End
  Begin MSHFlexGrid FGrid1
    Left = 0
    Top = 735
    Width = 10815
    Height = 6420
    TabIndex = 5
  End
  Begin BtnEnh CmdRight
    Left = 5760
    Top = 7305
    Width = 1500
    Height = 690
    TabIndex = 6
  End
  Begin BtnEnh CmdLeft
    Left = 3960
    Top = 7305
    Width = 1500
    Height = 690
    TabIndex = 7
  End
  Begin TopCtrl TopCtrl1
    Left = 165
    Top = 5265
    Width = 1185
    Height = 375
    Visible = 0   'False
    TabIndex = 14
  End
  Begin CommonDialog CDLG
  End
  Begin BtnEnh CmdUnSBill
    Left = 6765
    Top = 300
    Width = 2670
    Height = 450
    TabIndex = 26
  End
  Begin BtnEnh CmdDone
    Left = 9450
    Top = 285
    Width = 2535
    Height = 450
    TabIndex = 27
  End
  Begin BtnEnh CmdCashCardStatement
    Left = 4110
    Top = 300
    Width = 2655
    Height = 450
    Visible = 0   'False
    TabIndex = 28
  End
  Begin BtnEnh cmdPrintPKOT
    Left = 12000
    Top = 285
    Width = 2670
    Height = 450
    Visible = 0   'False
    TabIndex = 38
  End
  Begin Label Label1
    Caption = "Occupied"
    Index = 5
    ForeColor = &HC00000&
    Left = 165
    Top = 375
    Width = 900
    Height = 240
    TabIndex = 20
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
    Caption = "Billed"
    Index = 7
    ForeColor = &HC00000&
    Left = 3105
    Top = 390
    Width = 570
    Height = 240
    TabIndex = 15
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
    Caption = "Not Occupied"
    Index = 6
    ForeColor = &HC00000&
    Left = 1440
    Top = 375
    Width = 1290
    Height = 210
    TabIndex = 19
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &H80000008&
    Left = 30
    Top = 330
    Width = 1275
    Height = 330
    TabIndex = 22
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
    Index = 6
    BackColor = &HFFFF&
    ForeColor = &H80000008&
    Left = 1350
    Top = 330
    Width = 1410
    Height = 330
    TabIndex = 21
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
    Left = 2790
    Top = 330
    Width = 1245
    Height = 345
    TabIndex = 16
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
  Begin Label Label6
    BackColor = &HFFC0C0&
    Left = 0
    Top = 285
    Width = 12000
    Height = 450
    TabIndex = 25
  End
  Begin Label LBLRoomName
    BackColor = &H80000005&
    ForeColor = &HC0&
    Left = 5970
    Top = 0
    Width = 6405
    Height = 285
    TabIndex = 23
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Label5
    Caption = "#"
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3975
    Top = 0
    Width = 1980
    Height = 285
    TabIndex = 17
    Alignment = 2 'Center
    AutoSize = -1  'True
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
  Begin Label Label4
    Caption = "#"
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 15
    Top = 0
    Width = 3945
    Height = 285
    TabIndex = 18
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = -45
    Top = -15
    Width = 12495
    Height = 300
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
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "RsTouchDisplayTB"

Private global_82 As Integer
Private global_100 As Integer

Private Sub CmdRef_UnknownEvent_9 'DFED14
  'Data Table: 51A3C4
  loc_DFED0C: Call CmdUnSBill_UnknownEvent_9()
  loc_DFED11: Exit Sub
  loc_DFED12: CExtInstUnk
End Sub

Private Sub CmdUp_UnknownEvent_9 'EE41C8
  'Data Table: 51A3C4
  Dim var_A8 As Variant
  loc_EE4123: If (CLng(Me.FGrid.Row) > 1) Then
  loc_EE413F:   var_A8 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_EE414E:   Me.FGrid.Row = var_A8
  loc_EE4176:   var_A8 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_EE4185:   Me.FGrid.ColSel = var_A8
  loc_EE41B6:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_EE41C5: End If
  loc_EE41C5: Exit Sub
End Sub

Private Sub CmdDown_UnknownEvent_9 'F04570
  'Data Table: 51A3C4
  Dim var_BC As Variant
  loc_F044CB: If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_F044E7:   var_BC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_F044F6:   Me.FGrid.Row = var_BC
  loc_F0451E:   var_BC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_F0452D:   Me.FGrid.ColSel = var_BC
  loc_F0455E:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_F0456D: End If
  loc_F0456D: Exit Sub
  loc_F0456E: Assert
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1F0E0
  'Data Table: 51A3C4
  loc_E1F0C4: Call Proc_256_45_169B3E8()
  loc_E1F0D5: Me.FrSettlement.Visible = False
  loc_E1F0DD: Exit Sub
End Sub

Private Sub CmdDown2_Click() 'F036D0
  'Data Table: 51A3C4
  Dim var_BC As Variant
  loc_F0362B: If (CLng(Me.FGrid2.Row) < (CLng(Me.FGrid2.Rows) - 1)) Then
  loc_F03647:   var_BC = CVar((CLng(Me.FGrid2.Row) + 1)) 'Long
  loc_F03656:   Me.FGrid2.Row = var_BC
  loc_F0367E:   var_BC = CVar((CLng(Me.FGrid2.Cols) - 1)) 'Long
  loc_F0368D:   Me.FGrid2.ColSel = var_BC
  loc_F036BE:   Me.FGrid2.TopRow = CVar(CLng(Me.FGrid2.Row))
  loc_F036CD: End If
  loc_F036CD: Exit Sub
  loc_F036CE: Assert
End Sub

Private Sub FGrid2_UnknownEvent_9 '1203494
  'Data Table: 51A3C4
  Dim var_88 As Variant
  Dim var_9A As Integer
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_148 As String
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_120301F: If (CLng(Me.FGrid2.Row) = 0) Then
  loc_1203022:   Exit Sub
  loc_1203023: End If
  loc_120302F: Me.FrameOption.Visible = False
  loc_120306A: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_1203081:   var_9A = CInt(CLng(Me.FGrid1.Col))
  loc_120308D: Else
  loc_12030CC:   var_9A = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_12030E0: End If
  loc_12030F3: var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12030FC: var_E8 = CVar(CLng(var_9A)) 'Long
  loc_1203137: var_138 = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_120313F: var_148 = "VACANT"
  loc_120315C: var_17C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1203168: var_19C = CVar(CLng((var_9A + 3))) 'Long
  loc_12031BB: If CBool(Not var_19C And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_12031C6:   If (MemVar_1F9220C = "Yes") Then
  loc_12031D3:     Set var_A0 = New RSTouchScreenSaleBill
  loc_12031DC:   Else
  loc_12031E6:     Set var_A0 = New RSSaleBill
  loc_12031EC:   End If
  loc_1203212:   var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_120322E:   var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_1203274:   If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_120329D:     var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12032B9:     var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_12032E5:     var_A0.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1203302:   Else
  loc_1203302:     var_C8 = 1
  loc_120330B:     var_E8 = 0
  loc_120333B:     var_A0.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_120334B:   End If
  loc_1203351:   var_C8 = CVar(global_52) 'String
  loc_1203358:   var_A0.pRestCode = var_C8
  loc_1203360:   Set var_88 = var_C8(var_E8)
  loc_1203399:   var_A0.oBookingDocId = CVar(CStr(Me.FGrid2.TextMatrix)))
  loc_12033B1:   Set var_88 = CVar(CLng(var_A0.FGrid1.Row))(0)
  loc_12033EA:   var_A0.oBookingNo = CVar(CStr(Me.FGrid2.TextMatrix)))
  loc_1203402:   Set var_88 = CVar(CLng(var_A0.FGrid2.Row))(1)
  loc_1203411:   var_C8 = CVar(CLng(var_A0.FGrid2.Row)) 'Long
  loc_1203416:   var_E8 = 2
  loc_120343B:   var_A0.oCustName = CVar(CStr(Me.FGrid2.TextMatrix)))
  loc_120344F:   var_C8 = 1
  loc_120345B:   var_A0.OpenMode = var_C8
  loc_120346A:   var_A0.Show var_C8, var_D8
  loc_1203472:   Call var_A0.TopCtrl1_eAdd
  loc_120347B:   Call var_A0.SetOnLineBookingDetail
  loc_1203486:   global_82 = &HFF
  loc_1203489: End If
  loc_120348E: Set var_A0 = Nothing
  loc_1203491: Exit Sub
End Sub

Private Sub CmdUp2_Click() 'EE42C8
  'Data Table: 51A3C4
  Dim var_A8 As Variant
  Dim CmdUp2_ClickCFF As Integer
  loc_EE4223: If (CLng(Me.FGrid2.Row) > 1) Then
  loc_EE423F:   var_A8 = CVar((CLng(Me.FGrid2.Row) - 1)) 'Long
  loc_EE424E:   Me.FGrid2.Row = var_A8
  loc_EE4276:   var_A8 = CVar((CLng(Me.FGrid2.Cols) - 1)) 'Long
  loc_EE4285:   Me.FGrid2.ColSel = var_A8
  loc_EE42B6:   Me.FGrid2.TopRow = CVar(CLng(Me.FGrid2.Row))
  loc_EE42C5: End If
  loc_EE42C5: Exit Sub
  loc_EE42C6: CmdUp2_ClickCFF = 
End Sub

Private Sub cmdPrintPKOT_UnknownEvent_9 'EEE09C
  'Data Table: 51A3C4
  Dim var_90 As String
  Dim unk_51A3C8 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  loc_EEDFF6: var_90 = "Select DOCID from KOT Where ISNULL(PrintFlag,'')='N' AND Printed<>'Y' AND PENDING='Y' And RestCode='" & global_52 & "' Group By DocId"
  loc_EEDFFF: unk_51A3C8.Execute var_90, var_B0, -1
  loc_EEE00A: Set var_88 = var_B4
  loc_EEE01A: ' Referenced from: EEE075
  loc_EEE029: If Not(var_88.EOF) Then
  loc_EEE05B:   Proc_260_21_1E6A5E0(CStr(var_88.Fields.Item("DocID").Value))
  loc_EEE070:   var_88.MoveNext
  loc_EEE075:   GoTo loc_EEE01A
  loc_EEE078: End If
  loc_EEE085: Set var_B4 = Me.cmdPrintPKOT
  loc_EEE08B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_2D(&H800080)
  loc_EEE098: Set var_88 = Nothing
  loc_EEE09B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 '1241198
  'Data Table: 51A3C4
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_F0 As Variant
  Dim unk_51A3C8 As Connection15
  Dim var_88 As Recordset15
  Dim var_120 As Fields15
  Dim var_11C As Variant
  loc_1240CEB: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1240CF0: var_CC = 0
  loc_1240D27: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1240D3D:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1240D55:   var_F0 = Me.FGrid.TextMatrix)
  loc_1240D89:   unk_51A3C8.Execute "Select Vtype As VoucherType,RoomNo as TableNo,DocId,RoomCat,RoomType,NetAmt from Sale1 Where DocId='" & CStr(var_F0) & "'", var_11C, -1
  loc_1240D94:   Set var_88 = var_120
  loc_1240DC6:   If (var_88.RecordCount > 0) Then
  loc_1240DD1:     If (MemVar_1F9220C = "Yes") Then
  loc_1240DD7:       var_AC = "VoucherType"
  loc_1240E2D:       var_CC = "DocID"
  loc_1240E7D:       var_1EC = Proc_6_38_E68A98(CVar(var_88.Fields.Item("TableNo")))
  loc_1240EA8:       var_1F0 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomCat")))
  loc_1240ED3:       var_1F4 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Roomtype")))
  loc_1240EFC:       Proc_6_39_E7C810(var_1C0, CVar(var_88.Fields.Item("NetAmt")))
  loc_1240F54:       Proc_6_132_ECC4B4(1, 5, Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_AC)), var_88.Fields, CVar(var_88.Fields.Item("TableNo")), 0), Proc_6_38_E68A98(CVar(var_88.Fields.Item("TableNo")), var_AC), Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_CC)), var_CC), 0)
  loc_1240F9D:     Else
  loc_124109C:       var_200 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Roomtype")))
  loc_12410C5:       Proc_6_39_E7C810(var_1C0, CVar(var_88.Fields.Item("NetAmt")))
  loc_12410CF:       var_1E8 = 0
  loc_12410DA:       var_1E4 = 0
  loc_12410E5:       var_1E0 = 0
  loc_124113E:       Proc_6_131_FAD2A0(1, 5, Proc_6_38_E68A98(CVar(var_88.Fields.Item("VoucherType")), var_1EC, Proc_6_38_E68A98(CVar(var_88.Fields.Item("TableNo")), CSng(var_1C0)), Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")), global_52)), Proc_6_38_E68A98(CVar(var_88.Fields.Item("TableNo")), CSng(var_1C0)), Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")), global_52), 0, Proc_6_38_E68A98(CVar(var_88.Fields.Item("TableNo"))), Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomCat"))))
  loc_124118A:     End If
  loc_124118A:     Call CmdUnSBill_UnknownEvent_9()
  loc_124118F:   End If
  loc_1241194:   Set var_88 = Nothing
  loc_1241197: End If
  loc_1241197: Exit Sub
End Sub

Private Sub CmdPKOT_UnknownEvent_9 '11C1288
  'Data Table: 51A3C4
  Dim var_86 As Integer
  Dim var_A8 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_148 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_18C As Variant
  loc_11C0E60: Me.FrameOption.Visible = False
  loc_11C0E9B: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_11C0EB2:   var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_11C0EBE: Else
  loc_11C0EFD:   var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_11C0F11: End If
  loc_11C0F24: var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11C0F2D: var_E8 = CVar(CLng(var_86)) 'Long
  loc_11C0F68: var_138 = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_11C0F70: var_148 = "VACANT"
  loc_11C0F8D: var_17C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11C0F99: var_19C = CVar(CLng((var_86 + 3))) 'Long
  loc_11C0FEC: If CBool(Not var_19C And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_11C0FF7:   If (MemVar_1F9220C = "Yes") Then
  loc_11C0FFE:     Set var_8C = New RsTouchScreenKOTEntry
  loc_11C1004:   Else
  loc_11C1008:     Set var_8C = New RsKOTEntry
  loc_11C100B:   End If
  loc_11C1023:   var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11C102F:   var_E8 = CVar(CLng((var_86 + 2))) 'Long
  loc_11C107B:   If CBool(InStr(var_E8, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), ",", 0)) Then
  loc_11C1091:     var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11C109D:     var_E8 = CVar(CLng((var_86 + 2))) 'Long
  loc_11C10D0:     var_148 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11C10DC:     var_18C = CVar(CLng((var_86 + 2))) 'Long
  loc_11C1117:     var_16C = (InStr(var_18C, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), ",", 0) - 1)
  loc_11C113D:     var_8C.PSteward = Mid(CVar(CStr(Me.FGrid1.TextMatrix))), 1, Me.FGrid1.Row)
  loc_11C1166:   Else
  loc_11C1179:     var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11C1185:     var_E8 = CVar(CLng((var_86 + 2))) 'Long
  loc_11C11A6:     var_8C.PSteward = CVar(CStr(Me.FGrid1.TextMatrix)))
  loc_11C11BA:   End If
  loc_11C11BE:   Set var_A8 = var_C8(var_E8)
  loc_11C11E0:   var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11C11FC:   var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_8C.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_11C1228:   var_8C.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_11C124F:   var_8C.pRestCode = CVar(global_52)
  loc_11C125C:   var_8C.OpenType = "Pending KOT"
  loc_11C126C:   var_8C.OpenMode = 1
  loc_11C1273:   Call var_8C.Show
  loc_11C127E:   global_82 = &HFF
  loc_11C1281: End If
  loc_11C1283: Set var_8C = Nothing 
  loc_11C1287: Exit Sub
End Sub

Private Sub CmdOrderBook_UnknownEvent_9 '112DF6C
  'Data Table: 51A3C4
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_86 As Integer
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_14C As String
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_11C As Variant
  Dim var_8C As Recordset15
  loc_112DC30: Me.FrameOption.Visible = False
  loc_112DC6B: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_112DC82:   var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_112DC8E: Else
  loc_112DCCD:   var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_112DCE1: End If
  loc_112DCF4: var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112DCFD: var_EC = CVar(CLng(var_86)) 'Long
  loc_112DD38: var_13C = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_112DD40: var_14C = "VACANT"
  loc_112DD5D: var_180 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112DD69: var_1A0 = CVar(CLng((var_86 + 3))) 'Long
  loc_112DDBC: If CBool(Not var_1A0 And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_112DDC7:   If (MemVar_1F9220C = "Yes") Then
  loc_112DDD4:     Set var_90 = New RsTouchScreenBookingEntry
  loc_112DDDA:   End If
  loc_112DDE4:   var_BC = Me.FGrid1.Col
  loc_112DDF1:   Set var_94 = Me.FGrid1
  loc_112DDF7:   var_A4 = var_94.Row
  loc_112DE00:   var_CC = CVar(CLng(var_A4)) 'Long
  loc_112DE1C:   var_EC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_BC) + 1)) / CDbl(6)))))) 'Long
  loc_112DE2B:   var_10C = Me.FGrid1.TextMatrix)
  loc_112DE36:   var_11C = CVar(CStr(var_10C)) 'String
  loc_112DE48:   var_90.PTableNo = Trim(var_11C)
  loc_112DE6F:   var_90.pRestCode = CVar(global_52)
  loc_112DE9A:   var_90.Connection15.Execute "Select V_Type from Voucher_Type Where Ncat='ORDER' and  RestCode='" & global_52 & "'", var_A4, -1
  loc_112DEA5:   Set var_8C = var_94
  loc_112DEC9:   If (var_8C.RecordCount > 0) Then
  loc_112DEF3:     var_90.oVType = CVar(var_8C.Fields.Item("V_Type"))
  loc_112DF00:   Else
  loc_112DF19:     MsgBox("Contact to your S/w vendor", &H40, var_BC, var_10C, var_11C)
  loc_112DF29:     Exit Sub
  loc_112DF2A:   End If
  loc_112DF2A:   var_CC = 1
  loc_112DF36:   var_90.OpenMode = var_CC
  loc_112DF45:   var_90.Show var_CC, var_DC
  loc_112DF4D:   Call var_90.TopCtrl1_eAdd
  loc_112DF58:   global_82 = &HFF
  loc_112DF5B: End If
  loc_112DF60: Set var_90 = Nothing
  loc_112DF68: Set var_8C = Nothing
  loc_112DF6B: Exit Sub
End Sub

Private Sub cmdCancel_UnknownEvent_9 'E171D0
  'Data Table: 51A3C4
  loc_E171C4: Me.FrameOption.Visible = False
  loc_E171CC: Exit Sub
End Sub

Private Sub CmdAKOT_UnknownEvent_9 '1224DA0
  'Data Table: 51A3C4
  Dim var_94 As Variant
  Dim var_D0 As Integer
  Dim unk_51A3C8 As Connection15
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_AC As Variant
  Dim var_128 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_86 As Integer
  Dim var_158 As Variant
  Dim var_188 As Variant
  Dim var_124 As Variant
  Dim var_1CC As Variant
  loc_12248DC: Me.FrameOption.Visible = False
  loc_12248EA: var_D0 = 0
  loc_1224917: unk_51A3C8.Execute "Select count(*) from Waiter where logsite_code='" & MemVar_1F92078 & "' And  ActiveYN='Yes'", var_BC, -1
  loc_122491F: var_94 = var_94.Fields
  loc_1224927: var_D0 = var_C0.Item(var_C0)
  loc_122492F: var_D4 = var_D4.Value
  loc_1224956: If (var_E4 = 0) Then
  loc_1224972:   MsgBox("No Steward Define For this Outlet.", &H40, var_E4, var_104, var_124)
  loc_1224982:   Exit Sub
  loc_1224983: End If
  loc_122498B: If (MemVar_1F9220C = "Yes") Then
  loc_1224992:   Set var_8C = New RsTouchScreenKOTEntry
  loc_1224998: Else
  loc_122499C:   Set var_8C = New RsKOTEntry
  loc_122499F: End If
  loc_12249A3: Set var_128 = Me.FGrid1
  loc_12249B2: var_AC = CVar(CLng(var_128.RowSel)) 'Long
  loc_12249C3: var_F4 = CVar(CLng(var_128.ColSel)) 'Long
  loc_12249EA: If (CStr(var_128.TextMatrix)) <> vbNullString) Then
  loc_1224A20:   If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_1224A37:     var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_1224A43:   Else
  loc_1224A82:     var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_1224A96:   End If
  loc_1224AA9:   var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1224AB2:   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1224B13:   If (Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6) = "VACANT") Then
  loc_1224B1F:     var_8C.PSteward = vbNullString
  loc_1224B26:   Else
  loc_1224B3E:     var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1224B4A:     var_F4 = CVar(CLng((var_86 + 2))) 'Long
  loc_1224B96:     If CBool(InStr(var_F4, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), ",", 0)) Then
  loc_1224BAC:       var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1224BB8:       var_F4 = CVar(CLng((var_86 + 2))) 'Long
  loc_1224BEB:       var_158 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1224BF7:       var_188 = CVar(CLng((var_86 + 2))) 'Long
  loc_1224C32:       var_1CC = (InStr(var_188, Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), ",", 0) - 1)
  loc_1224C58:       var_8C.PSteward = Mid(CVar(CStr(Me.FGrid1.TextMatrix))), 1, var_1CC)
  loc_1224C81:     Else
  loc_1224C94:       var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1224CA0:       var_F4 = CVar(CLng((var_86 + 2))) 'Long
  loc_1224CC1:       var_8C.PSteward = CVar(CStr(Me.FGrid1.TextMatrix)))
  loc_1224CD5:     End If
  loc_1224CD5:   End If
  loc_1224CD9:   Set var_C0 = var_AC(var_F4)
  loc_1224CFB:   var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1224D17:   var_F4 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_8C.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_1224D43:   var_8C.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1224D6A:   var_8C.pRestCode = CVar(global_52)
  loc_1224D7A:   var_8C.OpenMode = 1
  loc_1224D81:   Call var_8C.Show
  loc_1224D8A:   Call var_8C.TopCtrl1_eAdd
  loc_1224D95:   global_82 = &HFF
  loc_1224D98: End If
  loc_1224D9A: Set var_128 = Nothing 
  loc_1224D9E: Exit Sub
End Sub

Private Sub CmdChngTable_UnknownEvent_9 '10AA3BC
  'Data Table: 51A3C4
  Dim var_90 As Variant
  Dim var_94 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_86 As Integer
  Dim var_10C As MSHFlexGrid
  loc_10AA114: Me.FrameOption.Visible = False
  loc_10AA124: If (MemVar_1F9220C = "Yes") Then
  loc_10AA12B:   Set var_8C = New RsTbChange
  loc_10AA131: Else
  loc_10AA135:   Set var_8C = New RsTbChange
  loc_10AA138: End If
  loc_10AA13C: Set var_94 = Me.FGrid1
  loc_10AA14B: var_C4 = CVar(CLng(var_94.RowSel)) 'Long
  loc_10AA15C: var_E4 = CVar(CLng(var_94.ColSel)) 'Long
  loc_10AA183: If (CStr(var_94.TextMatrix)) <> vbNullString) Then
  loc_10AA1B9:   If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_10AA1D0:     var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_10AA1DC:   Else
  loc_10AA21B:     var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_10AA22F:   End If
  loc_10AA242:   var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10AA24B:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_10AA2B4:   If CBool(Not (Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6) = "VACANT")) Then
  loc_10AA2BB:     Set var_10C = Me.FGrid1
  loc_10AA2C1:     var_B4 = var_10C.Col
  loc_10AA2DD:     var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10AA2F9:     var_E4 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_B4) + 1)) / CDbl(6)))))) 'Long
  loc_10AA325:     var_8C.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_10AA345:     var_C4 = CVar(global_52) 'String
  loc_10AA34C:     var_8C.LocalRestCode = var_C4
  loc_10AA35C:     Set var_90 = var_10C(6)
  loc_10AA362:     Call 0.Method_CmdChngTable_UnknownEvent_90 (var_174, var_E4, var_C4, var_B4, var_E4)
  loc_10AA36A:     var_C4 = var_8C.Label.BackColor
  loc_10AA37A:     var_8C.TVacantColor = CVar(var_174)
  loc_10AA391:     var_8C.OpenMode = 1
  loc_10AA39E:     var_8C.CAPTION = "Change Table"
  loc_10AA3A5:     Call var_8C.Show
  loc_10AA3B0:     global_82 = &HFF
  loc_10AA3B3:   End If
  loc_10AA3B3: End If
  loc_10AA3B5: Set var_94 = Nothing 
  loc_10AA3B9: Exit Sub
End Sub

Private Sub CmdBillLookup_UnknownEvent_9 '106C5EC
  'Data Table: 51A3C4
  Dim var_90 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_86 As Integer
  loc_106C38C: Me.FrameOption.Visible = False
  loc_106C398: Set var_8C = New RSSaleBillDisplay
  loc_106C39F: Set var_94 = ()
  loc_106C3E6: If (CStr(FrameOption.DispID_41) <> vbNullString) Then
  loc_106C3ED:   Set var_90 = CVar(CLng(FrameOption.DispID_C))(CVar(CLng(FrameOption.DispID_D)))
  loc_106C41C:   If ((CLng(Val(CStr(CLng(FrameOption.DispID_B)))) Mod 6) = 1) Then
  loc_106C423:     Set var_90 = ()
  loc_106C433:     var_86 = CInt(CLng(FrameOption.DispID_B))
  loc_106C43F:   Else
  loc_106C47E:     var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_106C492:   End If
  loc_106C4A5:   var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_106C4AE:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_106C517:   If CBool(Not (Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6) = "VACANT")) Then
  loc_106C540:     var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_106C55C:     var_E4 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_106C588:     var_8C.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_106C5AF:     var_8C.LocalRestCode = CVar(global_52)
  loc_106C5C0:     var_8C.pRestCode = CVar(global_52)
  loc_106C5D0:     var_8C.OpenMode = 1
  loc_106C5D7:     Call var_8C.Show
  loc_106C5E2:     global_82 = &HFF
  loc_106C5E5:   End If
  loc_106C5E5: End If
  loc_106C5E7: Set var_94 = Nothing 
  loc_106C5EB: Exit Sub
End Sub

Private Sub CmdSBill_UnknownEvent_9 '1154154
  'Data Table: 51A3C4
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_148 As String
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_1153DDC: Me.FrameOption.Visible = False
  loc_1153E17: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_1153E2E:   var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_1153E3A: Else
  loc_1153E79:   var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_1153E8D: End If
  loc_1153EA0: var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1153EA9: var_E8 = CVar(CLng(var_86)) 'Long
  loc_1153EE4: var_138 = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_1153EEC: var_148 = "VACANT"
  loc_1153F09: var_17C = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1153F15: var_19C = CVar(CLng((var_86 + 3))) 'Long
  loc_1153F68: If CBool(Not var_19C And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_1153F73:   If (MemVar_1F9220C = "Yes") Then
  loc_1153F91:     New RSTouchScreenSaleBill.ParentForm = CVar(Me)
  loc_1153F98:   Else
  loc_1153FA2:     Set var_8C = New RSSaleBill
  loc_1153FA8:   End If
  loc_1153FCE:   var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1153FEA:   var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_1154030:   If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1154059:     var_C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1154075:     var_E8 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_11540A1:     var_8C.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_11540BE:   Else
  loc_11540BE:     var_C8 = 1
  loc_11540C7:     var_E8 = 0
  loc_11540F7:     var_8C.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1154107:   End If
  loc_1154114:   var_8C.pRestCode = CVar(global_52)
  loc_1154118:   var_C8 = 1
  loc_1154124:   var_8C.OpenMode = var_C8
  loc_1154133:   var_8C.Show var_C8, var_D8
  loc_115413B:   Call var_8C.TopCtrl1_eAdd
  loc_1154146:   global_82 = &HFF
  loc_1154149: End If
  loc_115414E: Set var_8C = Nothing
  loc_1154151: Exit Sub
End Sub

Private Sub Form_Load() '12DD110
  'Data Table: 51A3C4
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_92 As Integer
  Dim var_8C As Recordset15
  Dim var_BC As String
  Dim var_C0 As String
  Dim var_C4 As String
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_F0 As Variant
  Dim unk_51A3C8 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Recordset15
  Dim var_E0 As Variant
  Dim var_114 As Variant
  loc_12DCA74: On Error Goto loc_12DD0CA
  loc_12DCA7E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_12DCA96: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12DCAB1: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12DCACC: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12DCAE2: Me.FrSettlement.BackColor = CLng(MemVar_1F921B0)
  loc_12DCAF8: Me.FrameOption.BackColor = CLng(MemVar_1F921B0)
  loc_12DCB0E: Me.FrSettlement.BackColor = CLng(MemVar_1F921B0)
  loc_12DCB29: Me.FGrid1.Top = CVar(CDbl(725))
  loc_12DCB43: Me.FGrid1.Left = CVar(CDbl(&H14))
  loc_12DCB50: var_C4 = 0
  loc_12DCB5B: var_C0 = 0
  loc_12DCB7D: var_92 = Proc_96_17_FDBD80(global_52, global_88, 0)
  loc_12DCB8F: var_C8 = global_88
  loc_12DCB9A: If (var_C8 = "Outlet") Then
  loc_12DCBA3:   global_96 = "TB"
  loc_12DCBAA: Else
  loc_12DCBB2:   If (var_C8 = "Room Service") Then
  loc_12DCBBB:     global_96 = "RO"
  loc_12DCBBF:   End If
  loc_12DCBBF: End If
  loc_12DCBC3: Set var_8C = New 
  loc_12DCBCE: var_8C.CursorLocation = 3
  loc_12DCBF8: var_C0 = "select MemberInfo from Depart where (Logsite_code='" & MemVar_1F92078 & "'or LOGSITE_CODE='HO') and Code='"
  loc_12DCC02: var_C4 = var_C0 & global_52
  loc_12DCC10: var_8C.Open CVar(var_C4 & "'"), CVar(MemVar_1F92044), 3
  loc_12DCC35: If (var_8C.RecordCount > 0) Then
  loc_12DCC47:   var_B8 = var_8C.Fields
  loc_12DCC57:   var_D8 = CVar(var_B8.Item("MemberInfo")) 'Address
  loc_12DCC60:   var_BC = Proc_6_38_E68A98(var_D8, 1, -1)
  loc_12DCC71:   If ("select MemberInfo from Depart where (Logsite_code='" & MemVar_1F92078 = "Y") Then
  loc_12DCC91:     Proc_6_17_EAA2B0(var_D8, MemVar_1F92078, "SELECT * FROM MEMENVIRO WHERE LOGSITE_CODE=", var_110, -1)
  loc_12DCCA7:     unk_51A3C8.Execute CStr(var_B8 & var_D8), var_92, var_C0
  loc_12DCCB2:     Set var_88 = var_B8
  loc_12DCCD8:     If (var_88.RecordCount > 0) Then
  loc_12DCCEA:       var_B8 = var_88.Fields
  loc_12DCCFA:       var_D8 = CVar(var_B8.Item("MemberVarificationInKOT")) 'Address
  loc_12DCD09:       global_104 = Proc_6_38_E68A98(var_D8)
  loc_12DCD16:     End If
  loc_12DCD16:   End If
  loc_12DCD16: End If
  loc_12DCD33: Proc_6_17_EAA2B0(var_D8, MemVar_1F92078, "Select * From Enviro WHERE LOGSITE_CODE=", var_110)
  loc_12DCD3B: var_F0 = -1 & var_D8 
  loc_12DCD49: unk_51A3C8.Execute CStr(var_B8 & var_D8), var_B8, var_C4
  loc_12DCD9F: If (Proc_6_38_E68A98(CVar(var_B8.Fields.Fields.Fields.Item("AutoPrintKOTYN"))) = "Yes") Then
  loc_12DCDAA:   Set var_B8 = Me.cmdPrintPKOT
  loc_12DCDB0:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(True)
  loc_12DCDC4:   Me.Timer1.Enabled = True
  loc_12DCDCC: End If
  loc_12DCDD1: Set var_90 = Nothing
  loc_12DCDD4: Call ColorLabel()
  loc_12DCDD9: Call Proc_256_45_169B3E8()
  loc_12DCE04: var_A4 = CVar(CDbl((((CLng(Me.FGrid1.Rows) - 1) * &H320) + &HC8))) 'Single
  loc_12DCE13: Me.FGrid1.Height = True
  loc_12DCE35: Me.FGrid1.Width = CVar(CDbl(10810))
  loc_12DCE6B: If (CDbl((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(1200)) + CDbl(200))) < CDbl(10810)) Then
  loc_12DCE8F:   var_A4 = CVar((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(1200)) + CDbl(&HA))) 'Single
  loc_12DCE9E:   Me.FGrid1.Width = CVar(CDbl(10810))
  loc_12DCEAD: End If
  loc_12DCED0: Me.FrameOption.Left = (CDbl(Me.FGrid1.Width) + CDbl(250))
  loc_12DCF1C: Me.FrameOption.Top = (((CDbl(Me.FGrid1.Height) - Me.FrameOption.Height) - CDbl(200)) / CDbl(2))
  loc_12DCF39: Me.FrameOption.Visible = False
  loc_12DCF4F: Me.FrSettlement.Top = CDbl(0)
  loc_12DCF65: Me.FrSettlement.Left = CDbl(0)
  loc_12DCF90: Me.FrSettlement.Height = (CDbl(Me.FGrid1.Height) + CDbl(1500))
  loc_12DCFAB: Me.FrSettlement.Visible = False
  loc_12DCFC1: Me.FrPendingOrder.Top = CDbl(0)
  loc_12DCFD7: Me.FrPendingOrder.Left = CDbl(0)
  loc_12DCFE9: var_D8 = Me.FGrid1.Height
  loc_12DCFF7: Set var_E0 = Me.FrPendingOrder
  loc_12DCFFD: var_E0.Height = CDbl(var_D8)
  loc_12DD018: Me.FrPendingOrder.Visible = False
  loc_12DD033: If (TouchScreen = "Yes") Then
  loc_12DD03C:   var_B4 = 0
  loc_12DD059:   var_BC = "Select W.Name  From Waiter W wHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_12DD077:   unk_51A3C8.Execute var_BC & "' or LOGSITE_CODE='HO') and W.code='" & MemVar_1F9201C & "'", var_D8, -1
  loc_12DD07F:   var_B8 = var_B8.Fields
  loc_12DD087:   var_B4 = var_E0.Item(var_E0)
  loc_12DD08F:   var_114 = var_114.Value
  loc_12DD0A5:   Me.Label5.Caption = CStr(var_B8 & var_D8)
  loc_12DD0C9: End If
  loc_12DD0C9: Exit Sub
  loc_12DD0CA: ' Referenced from: 12DCA74
  loc_12DD0D2: Set var_B8 = Err()
  loc_12DD0D8: Call 0.Method_arg_2C (var_BC)
  loc_12DD0F9: MsgBox(CVar(var_BC), &H10, "Information", var_110, var_130)
  loc_12DD10C: Exit Sub
  loc_12DD10D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E14464
  'Data Table: 51A3C4
  loc_E1445B: Set global_116 = Nothing
  loc_E14462: Exit Sub
End Sub

Private Sub Form_Activate() 'ED0184
  'Data Table: 51A3C4
  loc_ED00D0: Call Proc_256_45_169B3E8()
  loc_ED00DE: If (global_82 = &HFF) Then
  loc_ED00E1:   Call Proc_256_45_169B3E8()
  loc_ED00EB:   global_82 = 0
  loc_ED00EE: End If
  loc_ED00FB: Me.Label3.Caption = vbNullString
  loc_ED0109: Call 0.Method_arg_100 (var_90)
  loc_ED011B: Me.FrSettlement.Width = var_90
  loc_ED0129: Call 0.Method_arg_100 (var_90)
  loc_ED0144: Me.FrPendingOrder.Left = ((var_90 * CDbl(2)) / CDbl(&HA))
  loc_ED0152: Call 0.Method_arg_100 (var_90)
  loc_ED016D: Me.FrPendingOrder.Width = ((var_90 * CDbl(8)) / CDbl(&HA))
  loc_ED0175: Call Proc_256_42_F02164(global_82)
  loc_ED017F: Set var_88 = Nothing
  loc_ED0182: Exit Sub
End Sub

Private Sub Form_Click() 'E16DF4
  'Data Table: 51A3C4
  loc_E16DE8: Me.FrameOption.Visible = False
  loc_E16DF0: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E0A948
  'Data Table: 51A3C4
  loc_E0A93E: If (CLng(KeyCode) = &H74) Then
  loc_E0A941:   Call Proc_256_45_169B3E8()
  loc_E0A946: End If
  loc_E0A946: Exit Sub
End Sub

Private Sub CmdRight_UnknownEvent_9 'E80A68
  'Data Table: 51A3C4
  Dim var_A8 As Variant
  loc_E80A1F: If (CLng(Me.FGrid1.LeftCol) > 1) Then
  loc_E80A47:   var_A8 = CVar((((CLng(Me.FGrid1.LeftCol) - 1) + &H36) + 1)) 'Long
  loc_E80A56:   Me.FGrid1.LeftCol = var_A8
  loc_E80A65: End If
  loc_E80A65: Exit Sub
End Sub

Private Sub CmdDone_UnknownEvent_9 'E170A0
  'Data Table: 51A3C4
  loc_E17095: Me.Global.Unload Me
  loc_E1709D: Exit Sub
End Sub

Private Sub CmdLeft_UnknownEvent_9 'E9908C
  'Data Table: 51A3C4
  Dim var_A8 As Variant
  loc_E99031: If ((CLng(Me.FGrid1.LeftCol) - &H36) > 0) Then
  loc_E9904D:   var_A8 = CVar((CLng(Me.FGrid1.LeftCol) - &H36)) 'Long
  loc_E9905C:   Me.FGrid1.LeftCol = var_A8
  loc_E9906E: Else
  loc_E99081:   Me.FGrid1.LeftCol = 1
  loc_E99089: End If
  loc_E99089: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'EDA3C8
  'Data Table: 51A3C4
  Dim var_98 As Variant
  Dim var_A8 As Variant
  loc_EDA337: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_EDA33A:   Exit Sub
  loc_EDA33B: End If
  loc_EDA345: var_98 = Me.FGrid1.Rows
  loc_EDA354: var_A8 = 1
  loc_EDA395: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_EDA398:   Exit Sub
  loc_EDA399: End If
  loc_EDA3A9: Me.FrameOption.ZOrder 0
  loc_EDA3BD: Me.FrameOption.Visible = True
  loc_EDA3C5: Exit Sub
  loc_EDA3C6: CExtInstUnk
End Sub

Private Sub Fgrid1_UnknownEvent_A 'E90BF0
  'Data Table: 51A3C4
  loc_E90B7E: If (KeyCode = &HD) Then
  loc_E90BAC:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E90BAF:     Call Fgrid1_UnknownEvent_9()
  loc_E90BB4:   End If
  loc_E90BE7:   If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_E90BEA:     Call Fgrid1_UnknownEvent_B()
  loc_E90BEF:   End If
  loc_E90BEF: End If
  loc_E90BEF: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '12C3A64
  'Data Table: 51A3C4
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_8A As Integer
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_150 As String
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_E0 As Integer
  Dim unk_51A3C8 As Connection15
  Dim var_120 As Variant
  Dim var_90 As Recordset15
  loc_12C342C: Me.FrameOption.Visible = False
  loc_12C3467: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_12C347E:   var_8A = CInt(CLng(Me.FGrid1.Col))
  loc_12C348A: Else
  loc_12C34C9:   var_8A = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_12C34DD: End If
  loc_12C34E7: var_A8 = Me.FGrid1.Row
  loc_12C34F0: var_D0 = CVar(CLng(var_A8)) 'Long
  loc_12C34F9: var_F0 = CVar(CLng(var_8A)) 'Long
  loc_12C3502: Set var_B0 = Me.FGrid1
  loc_12C3508: var_C0 = var_B0.TextMatrix)
  loc_12C3534: var_140 = Right(Ucase(Trim(CVar(CStr(var_C0)))), 6)
  loc_12C353C: var_150 = "VACANT"
  loc_12C3559: var_184 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C3565: var_1A4 = CVar(CLng((var_8A + 3))) 'Long
  loc_12C35B4: If CBool(var_1A4 And (CStr(Me.FGrid1.TextMatrix)) = "Y")) Then
  loc_12C35BD:   var_E0 = 0
  loc_12C35EA:   unk_51A3C8.Execute "Select count(*) from Waiter where logsite_code='" & MemVar_1F92078 & "'", var_A8, -1
  loc_12C35F2:   var_98 = var_98.Fields
  loc_12C35FA:   var_E0 = var_B0.Item(var_B0)
  loc_12C3602:   var_164 = var_164.Value
  loc_12C3629:   If (var_C0 = 0) Then
  loc_12C362C:     Exit Sub
  loc_12C362D:   End If
  loc_12C3635:   If (MemVar_1F9220C = "Yes") Then
  loc_12C3642:     Set var_88 = New RsTouchScreenKOTEntry
  loc_12C364B:   Else
  loc_12C3655:     Set var_88 = New RsKOTEntry
  loc_12C365B:   End If
  loc_12C3681:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C369D:   var_F0 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(Me.FGrid1.Col) + 1)) / CDbl(6)))))) 'Long
  loc_12C36C9:   var_88.PTableNo = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_12C36F0:   var_88.pRestCode = CVar(global_52)
  loc_12C36F4:   var_D0 = 1
  loc_12C3700:   var_88.OpenMode = var_D0
  loc_12C370F:   var_88.Show var_D0, var_E0
  loc_12C3717:   Call var_88.TopCtrl1_eAdd
  loc_12C3722:   global_82 = &HFF
  loc_12C3728: Else
  loc_12C3763:   If (CLng(Me.FGrid1.Col) < (CLng(Me.FGrid1.Cols) - 1)) Then
  loc_12C3771:     If (global_112 = "Y") Then
  loc_12C377C:       If (MemVar_1F9220C = "Yes") Then
  loc_12C3789:         Set var_88 = New RsTouchScreenBookingEntry
  loc_12C378F:       End If
  loc_12C3799:       var_C0 = Me.FGrid1.Col
  loc_12C37A6:       Set var_98 = Me.FGrid1
  loc_12C37AC:       var_A8 = var_98.Row
  loc_12C37B5:       var_D0 = CVar(CLng(var_A8)) 'Long
  loc_12C37D1:       var_F0 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_C0) + 1)) / CDbl(6)))))) 'Long
  loc_12C37E0:       var_110 = Me.FGrid1.TextMatrix)
  loc_12C37EB:       var_120 = CVar(CStr(var_110)) 'String
  loc_12C37FD:       var_88.PTableNo = Trim(var_120)
  loc_12C3824:       var_88.pRestCode = CVar(global_52)
  loc_12C384F:       var_88.Connection15.Execute "Select V_Type from Voucher_Type Where Ncat='ORDER' and  RestCode='" & global_52 & "'", var_A8, -1
  loc_12C385A:       Set var_90 = var_98
  loc_12C387E:       If (var_90.RecordCount > 0) Then
  loc_12C38A8:         var_88.oVType = CVar(var_90.Fields.Item("V_Type"))
  loc_12C38B5:       Else
  loc_12C38CE:         MsgBox("Contact to your S/w vendor", &H40, var_C0, var_110, var_120)
  loc_12C38DE:         Exit Sub
  loc_12C38DF:       End If
  loc_12C38DF:       var_D0 = 1
  loc_12C38EB:       var_88.OpenMode = var_D0
  loc_12C38FA:       var_88.Show var_D0, var_E0
  loc_12C3902:       Call var_88.TopCtrl1_eAdd
  loc_12C390D:       global_82 = &HFF
  loc_12C3913:     Else
  loc_12C391B:       If (MemVar_1F9220C = "Yes") Then
  loc_12C3928:         Set var_94 = New RSTouchScreenSaleBill
  loc_12C3931:       Else
  loc_12C393B:         Set var_94 = New RSSaleBill
  loc_12C3941:       End If
  loc_12C394B:       var_C0 = Me.FGrid1.Col
  loc_12C3967:       var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12C3983:       var_F0 = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_C0) + 1)) / CDbl(6)))))) 'Long
  loc_12C3992:       var_110 = Me.FGrid1.TextMatrix)
  loc_12C399D:       var_120 = CVar(CStr(var_110)) 'String
  loc_12C39AF:       var_94.PTableNo = Trim(var_120)
  loc_12C39D6:       var_94.pRestCode = CVar(global_52)
  loc_12C39DA:       var_D0 = 1
  loc_12C39E6:       var_94.OpenMode = var_D0
  loc_12C39F5:       var_94.Show var_D0, var_E0
  loc_12C39FD:       Call var_94.TopCtrl1_eAdd
  loc_12C3A08:       global_82 = &HFF
  loc_12C3A0B:     End If
  loc_12C3A0E:   Else
  loc_12C3A27:     MsgBox("Select A Table", &H40, var_C0, var_110, var_120)
  loc_12C3A37:   End If
  loc_12C3A37: End If
  loc_12C3A3C: Set var_88 = Nothing
  loc_12C3A44: Set var_94 = Nothing
  loc_12C3A52: Set global_56 = Nothing
  loc_12C3A5E: Set var_90 = Nothing
  loc_12C3A61: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'E5AFB0
  'Data Table: 51A3C4
  loc_E5AF76: If (KeyCode = &HD) Then
  loc_E5AFA4:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E5AFA7:     Call Fgrid1_UnknownEvent_9()
  loc_E5AFAC:   End If
  loc_E5AFAC: End If
  loc_E5AFAC: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_10 'FB5BD8
  'Data Table: 51A3C4
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_FC As String
  Dim var_12C As Variant
  Dim var_14C As Variant
  loc_FB5A58: Set var_88 = Me.FGrid1
  loc_FB5A6C: var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB5A7D: var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB5A90: var_FC = CStr(var_88.TextMatrix))
  loc_FB5B02: If (CVar(CLng(var_88.Row)) And (InStr(CVar(CLng(var_88.Col)), CStr(var_88.TextMatrix)), "Vacant", 0) = 0)) Then
  loc_FB5B11:   var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB5B22:   var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB5B42:   var_12C = CVar(CLng(var_88.Row)) 'Long
  loc_FB5B53:   var_14C = CVar(CLng(var_88.Col)) 'Long
  loc_FB5B90:   var_1B0 = Mid(CVar(CStr(var_88.TextMatrix))), (InStr(1, CStr(var_88.TextMatrix)), vbCrLf, 0) + 2), var_1A0)
  loc_FB5BA0:   var_88.ToolTipText = CVar(CStr(var_1B0))
  loc_FB5BC2: Else
  loc_FB5BCB:   var_88.ToolTipText = vbNullString
  loc_FB5BD0: End If
  loc_FB5BD2: Set var_88 = Nothing 
  loc_FB5BD6: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 '13EF2D8
  'Data Table: 51A3C4
  Dim var_164 As Variant
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_174 As Variant
  Dim var_188 As String
  Dim unk_51A3C8 As Connection15
  Dim var_18C As Fields15
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_25C As Variant
  Dim var_294 As Variant
  Dim var_2B4 As Variant
  Dim var_328 As Variant
  Dim var_360 As Variant
  Dim var_380 As Variant
  loc_13EE987: var_164 = ((CLng(Me.FGrid1.ColSel) Mod 6) = 0)
  loc_13EE99E: var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EE9C5: var_114 = Me.FGrid1.TextMatrix)
  loc_13EEA0A: If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_13EEA20:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EEA3E:   var_F0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13EEA4D:   var_C0 = Me.FGrid1.TextMatrix)
  loc_13EEA5C:   var_164 = 0
  loc_13EEA9B:   unk_51A3C8.Execute "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'", var_114, -1
  loc_13EEAA3:   var_104 = var_104.Fields
  loc_13EEAAB:   var_164 = var_18C.Item(var_18C)
  loc_13EEACF:   var_174 = CVar(Proc_6_38_E68A98(CVar(var_190), var_190, var_C0, CVar(CLng(Me.FGrid1.Col)))) & Space(5) 
  loc_13EEAE6:   var_1C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EEB04:   var_1E8 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_13EEB40:   var_25C = var_1E8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_13EEB57:   var_294 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EEB75:   var_2B4 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_13EEBB1:   var_328 = var_2B4 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_13EEBC8:   var_360 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EEBE6:   var_380 = CVar((CLng(Me.FGrid1.Col) + 5)) 'Long
  loc_13EEC20:   Me.LBLRoomName.Caption = CStr(var_380 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_13EEC9E:   Me.LBLRoomName.Refresh
  loc_13EECA9: Else
  loc_13EECCE:   var_164 = (((CLng(Me.FGrid1.ColSel) - 1) Mod 6) = 0)
  loc_13EECE5:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EED0C:   var_114 = Me.FGrid1.TextMatrix)
  loc_13EED51:   If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_13EED85:     var_F0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13EED94:     var_C0 = Me.FGrid1.TextMatrix)
  loc_13EEDA3:     var_164 = 0
  loc_13EEDE2:     unk_51A3C8.Execute "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'", var_114, -1
  loc_13EEDEA:     var_104 = var_104.Fields
  loc_13EEDF2:     var_164 = var_18C.Item(var_18C)
  loc_13EEE16:     var_174 = CVar(Proc_6_38_E68A98(CVar(var_190), var_190, var_C0, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)))) & Space(5) 
  loc_13EEE2D:     var_1C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EEE4B:     var_1E8 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_13EEE87:     var_25C = var_1E8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_13EEE9E:     var_294 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EEEBC:     var_2B4 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_13EEEF6:     Me.LBLRoomName.Caption = CStr(var_2B4 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_13EEF5E:     Me.LBLRoomName.Refresh
  loc_13EEF69:   Else
  loc_13EEF8E:     var_164 = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_13EEFA5:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EEFCC:     var_114 = Me.FGrid1.TextMatrix)
  loc_13EF011:     If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_13EF045:       var_F0 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_13EF054:       var_C0 = Me.FGrid1.TextMatrix)
  loc_13EF063:       var_164 = 0
  loc_13EF099:       var_188 = "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'"
  loc_13EF0A2:       unk_51A3C8.Execute var_188, var_114, -1
  loc_13EF0AA:       var_104 = var_104.Fields
  loc_13EF0B2:       var_164 = var_18C.Item(var_18C)
  loc_13EF0D6:       var_174 = CVar(Proc_6_38_E68A98(CVar(var_190), var_190, var_C0, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)))) & Space(5) 
  loc_13EF0ED:       var_1C8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EF10B:       var_1E8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_13EF147:       var_25C = var_1E8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_13EF15E:       var_294 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EF17C:       var_2B4 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_13EF1B8:       var_328 = var_2B4 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_13EF1CF:       var_360 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13EF1ED:       var_380 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_13EF227:       Me.LBLRoomName.Caption = CStr(var_380 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_13EF2A5:       Me.LBLRoomName.Refresh
  loc_13EF2B0:     Else
  loc_13EF2BD:       Me.LBLRoomName.Caption = vbNullString
  loc_13EF2CF:       Me.LBLRoomName.Refresh
  loc_13EF2D7:     End If
  loc_13EF2D7:   End If
  loc_13EF2D7: End If
  loc_13EF2D7: Exit Sub
End Sub

Private Sub CmdUnSBill_UnknownEvent_9 'FFB67C
  'Data Table: 51A3C4
  Dim var_88 As Variant
  Dim var_8C As String
  Dim var_94 As String
  Dim var_9C As String
  Dim var_A4 As String
  Dim unk_51A3C8 As Connection15
  Dim Me As Recordset15
  loc_FFB4A2: Set var_88 = Me.FrameOption
  loc_FFB4A8: var_88.Visible = False
  loc_FFB4BB: If (global_112 = "Y") Then
  loc_FFB4D2:   var_8C = "SELECT Sale1.DocId, MAX(Sale1.VNo) AS [Bill No],Max(AA.Vno) As [Order No] ,Max(AA.CustName) As [Customer Name], " & "Max(AA.PhoneNo) As [Phone No] "
  loc_FFB4E0:   var_94 = var_8C & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN RoomMast AS T ON (Sale1.RoomType = T.Type) "
  loc_FFB4EE:   var_9C = var_94 & "AND (Sale1.RoomNo = T.Code) AND (Sale1.RestCode = T.RestCode)) " & "LEFT JOIN (SELECT PD.ContraDocId,P.Vno,P.CustName,P.PhoneNo FROM PackingOrder P Right JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID) AA  On AA.ContraDocID = Sale1.DocId "
  loc_FFB4FC:   var_A4 = var_9C & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & "AND  Sale1.RoomType='TB' AND SALE1.restcode='"
  loc_FFB516:   unk_51A3C8.Execute var_A4 & global_52 & "' GROUP BY SALE1.DOCID ORDER BY MAX(Sale1.Vno)", var_CC, -1
  loc_FFB527:   Set global_116 = var_88
  loc_FFB54D: Else
  loc_FFB561:   var_8C = "SELECT Sale1.DocId, MAX(Sale1.VNo) AS [Bill No],MAX(T.Code) AS [Table No] ,max(Waiter.Name) as Steward, (Sum(SALE1.NetAmt)-Sum(IsNull(PAYCHARGE.AmtCr, 0))) As [Balance Amt.] " & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) "
  loc_FFB56F:   var_94 = var_8C & "LEFT JOIN RoomMast AS T ON (Sale1.RoomType = T.Type) " & "AND (Sale1.RoomNo = T.Code) AND (Sale1.RestCode = T.RestCode)) "
  loc_FFB57D:   var_9C = var_94 & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code " & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') "
  loc_FFB59E:   unk_51A3C8.Execute var_9C & "AND  Sale1.RoomType='TB' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID ORDER BY MAX(T.Code)", var_CC, -1
  loc_FFB5AF:   Set global_116 = var_88
  loc_FFB5D0: End If
  loc_FFB5D9: CVarUnk
  loc_FFB5DE: VerifyVarObj
  loc_FFB5E4: Set var_88 = Me.FGrid
  loc_FFB5EA: LateIdStAd
  loc_FFB60F: If (Me.RecordCount <= 0) Then
  loc_FFB625:   Me.FGrid.Rows = 2
  loc_FFB63A:   Set var_88 = Me.FGrid
  loc_FFB640:   var_88.FixedRows = 1
  loc_FFB648: End If
  loc_FFB648: Call Proc_256_43_11B1F24(var_88, global_116)
  loc_FFB65D: Me.FrSettlement.ZOrder 0
  loc_FFB671: Me.FrSettlement.Visible = True
  loc_FFB679: Exit Sub
  loc_FFB67A: CExtInstUnk
End Sub

Private Sub Timer1_Timer() 'DFDD54
  'Data Table: 51A3C4
  loc_DFDD4C: Call Proc_256_48_EC7F28()
  loc_DFDD51: Exit Sub
End Sub

Private Sub Label2_Click(Index As Integer) '101DEDC
  'Data Table: 51A3C4
  Dim var_94 As Variant
  Dim var_A8 As CommonDialog
  Dim arg_20 As Variant
  Dim var_B8 As Variant
  Dim var_C0 As Label
  Dim var_D4 As String
  Dim unk_51A3C8 As Connection15
  loc_101DCFC: var_94 = 1
  loc_101DD06: Set var_A8 = Me.FGrid1
  loc_101DD21: arg_20 = Me.CDLG._Action
  loc_101DD4B: If (CLng(Me.CDLG.Color) = 0) Then
  loc_101DD4E:   Exit Sub
  loc_101DD4F: End If
  loc_101DD59: var_B8 = Me.CDLG.Color
  loc_101DD6C: Set var_BC = Me.Label2
  loc_101DD72: Call 0.Method_Label2_Click0 (Index, var_C0, CLng(var_B8))
  loc_101DD7A: var_C0.BackColor = arg_20
  loc_101DDC2: unk_51A3C8.Execute "delete from Dispcolor where [index]=" & CStr(Index) & " and Logsite_Code='" & MemVar_1F92078 & "'", var_B8, -1
  loc_101DE01: Set var_A8 = Me.CDLG
  loc_101DE16: var_D4 = "Insert into DispColor([Index],[Color],Detail,Site_Code,U_EntDt,U_AE,LogSite_Code) values(" & CStr(Index) & ",'" & CStr(CLng(var_A8.Color))
  loc_101DE2D: Set var_BC = Me.Label1
  loc_101DE33: Call 0.Method_Label2_Click0 (Index, var_C0, var_D8, var_D4 & "','", var_18C)
  loc_101DE3B: -1 = var_C0.Caption
  loc_101DE6A: Proc_6_7_F25D88(var_108, Date, CVar(var_190 & var_D8 & "','" & MemVar_1F92070 & "',"))
  loc_101DE76: var_94 = ",'A','"
  loc_101DE9C: unk_51A3C8.Execute CStr(var_A8 & var_108 & var_94 & CVar(MemVar_1F92078) & "')"), FGrid1.DispID_18001, var_94
  loc_101DEDA: Exit Sub
End Sub

Public Function global_52Get() '51BE00
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '51BE0F
  global_52 = Value
End Sub

Public Property Let ptabpos(vNewValue) 'E006A4
  'Data Table: 51A3C4
  loc_E0069E: ptabpos = vNewValue
  loc_E006A3: Exit Sub
End Sub

Public Property Get ptabpos() 'E03440
  'Data Table: 51A3C4
  loc_E03439: ptabpos = global_100
End Sub

Public Property Let TouchScreen(vNewValue) 'E1171C
  'Data Table: 51A3C4
  loc_E11714: global_92 = vNewValue
  loc_E11718: Exit Sub
End Sub

Public Property Get TouchScreen() 'E11EB4
  'Data Table: 51A3C4
  loc_E11EA8: var_88 = global_92
  loc_E11EAB: TouchScreen = 
End Sub

Public Sub ColorLabel() 'F518AC
  'Data Table: 51A3C4
  Dim unk_51A3C8 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_E4 As Label
  loc_F517B2: unk_51A3C8.Execute "Select * from DispColor", var_A8, -1
  loc_F517BD: Set var_88 = var_AC
  loc_F517C6: ' Referenced from: F518A6
  loc_F517D5: If Not(var_88.EOF) Then
  loc_F51814:   If (var_88.Fields.Item("index").Value > 4) Then
  loc_F51875:     Set var_E0 = Me.Label2
  loc_F5187B:     Call 0.Method_ColorLabel0 (CInt(var_88.Fields.Item("index").Value), var_E4)
  loc_F51883:     var_E4.BackColor = CLng(var_88.Fields.Item("Color").Value)
  loc_F5189E:   End If
  loc_F518A1:   var_88.MoveNext
  loc_F518A6:   GoTo loc_F517C6
  loc_F518A9: End If
  loc_F518A9: Exit Sub
End Sub

Public Property Get OpenMode() 'E1453C
  'Data Table: 51A3C4
  loc_E14530: var_88 = global_84
  loc_E14533: OpenMode = 
End Sub

Public Property Let OpenMode(vNewValue) 'E148E4
  'Data Table: 51A3C4
  loc_E148DC: global_84 = vNewValue
  loc_E148E0: Exit Sub
End Sub

Public Sub Proc_256_42_F02164
  'Data Table: 51A3C4
  Dim var_8C As String
  Dim var_98 As String
  Dim unk_51A3C8 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As MSHFlexGrid
  loc_F020A4: var_8C = "SELECT  Distinct P.Docid,P.Vno AS [Order No], P.CustName As [Customer Name],P.PhoneNo As [Phone No],P.Addr1 + ', ' + P.Addr2 As Address,convert(varchar(11),P.DDate,103)+ ' '+ P.DTime As [Delivery Date] FROM   PackingOrder P INNER JOIN  PackingOrderDetail PD ON P.Docid = PD.DocID  WHERE  (P.LogSite_Code = '" & MemVar_1F92078
  loc_F020BC: var_98 = var_8C & "') AND (P.RestCode = '" & global_52 & "') AND (PD.ContraSNo = 0) AND (PD.ContraDocID = '') Order By convert(varchar(11),P.DDate,103)+ ' '+ P.DTime"
  loc_F020C5: unk_51A3C8.Execute var_98, var_B8, -1
  loc_F020D0: Set var_88 = var_BC
  loc_F020EA: CVarUnk
  loc_F020EF: VerifyVarObj
  loc_F020F5: Set var_BC = Me.FGrid2
  loc_F020FB: LateIdStAd
  loc_F0211D: If (var_88.RecordCount <= 0) Then
  loc_F02133:   Me.FGrid.Rows = 2
  loc_F02148:   Set var_BC = Me.FGrid
  loc_F0214E:   var_BC.FixedRows = 1
  loc_F02156: End If
  loc_F02156: Call Proc_256_44_1173630(var_BC, var_88)
  loc_F02160: Set var_88 = Nothing
  loc_F02163: Exit Sub
End Sub

Public Sub Proc_256_43_11B1F24
  'Data Table: 51A3C4
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_B0 As MSHFlexGrid
  loc_11B1AEC: Set var_8C = Me.FGrid
  loc_11B1AFB: var_8C.Top = CVar(CDbl(600))
  loc_11B1B0C: var_8C.Left = CVar(CDbl(300))
  loc_11B1B1D: var_8C.Width = CVar(CDbl(6310))
  loc_11B1B2E: var_8C.Height = CVar(CDbl(5665))
  loc_11B1B40: Set var_B0 = Me.CmdRef
  loc_11B1B46: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(800)))
  loc_11B1B51: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005()
  loc_11B1B5D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003()
  loc_11B1B71: var_9C = CVar(((CDbl() + CDbl(var_D0)) + CDbl(250))) 'Single
  loc_11B1B7A: Set var_B0 = Me.CmdRef
  loc_11B1B80: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl(800)))
  loc_11B1B93: Set var_D4 = Me.CmdRef
  loc_11B1B99: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_11B1BA6: Set var_B0 = Me.CmdRef
  loc_11B1BAC: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_11B1BBB: var_9C = CVar((CDbl() + CDbl(var_D0))) 'Single
  loc_11B1BC4: Set var_D8 = Me.CmdUP
  loc_11B1BCA: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(800)))
  loc_11B1BE2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005()
  loc_11B1BEE: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003()
  loc_11B1C02: var_9C = CVar(((CDbl() + CDbl(var_D0)) + CDbl(250))) 'Single
  loc_11B1C0B: Set var_B0 = Me.CmdUP
  loc_11B1C11: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl(800)))
  loc_11B1C24: Set var_D4 = Me.CmdRef
  loc_11B1C2A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_11B1C37: Set var_B0 = Me.CmdRef
  loc_11B1C3D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_11B1C50: var_9C = CVar((CDbl() + (CDbl(var_D0) * CDbl(2)))) 'Single
  loc_11B1C59: Set var_D8 = Me.CmdDown
  loc_11B1C5F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(800)))
  loc_11B1C77: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005()
  loc_11B1C83: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003()
  loc_11B1C97: var_9C = CVar(((CDbl() + CDbl(var_D0)) + CDbl(250))) 'Single
  loc_11B1CA0: Set var_B0 = Me.CmdDown
  loc_11B1CA6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl(800)))
  loc_11B1CB9: Set var_D4 = Me.CmdRef
  loc_11B1CBF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_11B1CCC: Set var_B0 = Me.CmdRef
  loc_11B1CD2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_11B1CE5: var_9C = CVar((CDbl() + (CDbl(var_D0) * CDbl(3)))) 'Single
  loc_11B1CEE: Set var_D8 = Me.CmdExit
  loc_11B1CF4: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(800)))
  loc_11B1D0C: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005()
  loc_11B1D18: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003()
  loc_11B1D2C: var_9C = CVar(((CDbl() + CDbl(var_D0)) + CDbl(250))) 'Single
  loc_11B1D35: Set var_B0 = Me.CmdExit
  loc_11B1D3B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl(800)))
  loc_11B1D4A: var_9C = 0
  loc_11B1D53: var_E8 = &HA
  loc_11B1D5F: LateIdCallSt
  loc_11B1D67: var_9C = 1
  loc_11B1D70: var_E8 = &H4B0
  loc_11B1D7C: LateIdCallSt
  loc_11B1D84: var_9C = 1
  loc_11B1D93: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1D9A: LateIdCallSt
  loc_11B1DA2: var_9C = 1
  loc_11B1DB1: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1DB8: LateIdCallSt
  loc_11B1DC0: var_9C = 2
  loc_11B1DC9: var_E8 = &H3E8
  loc_11B1DD5: LateIdCallSt
  loc_11B1DDD: var_9C = 2
  loc_11B1DEC: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1DF3: LateIdCallSt
  loc_11B1DFB: var_9C = 2
  loc_11B1E0A: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1E11: LateIdCallSt
  loc_11B1E19: var_9C = 3
  loc_11B1E22: var_E8 = &H960
  loc_11B1E2E: LateIdCallSt
  loc_11B1E36: var_9C = 3
  loc_11B1E45: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1E4C: LateIdCallSt
  loc_11B1E54: var_9C = 3
  loc_11B1E63: var_E8 = CVar(CInt(1)) 'Integer
  loc_11B1E6A: LateIdCallSt
  loc_11B1E72: var_9C = 4
  loc_11B1E7B: var_E8 = &H578
  loc_11B1E87: LateIdCallSt
  loc_11B1E8F: var_9C = 4
  loc_11B1E9E: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1EA5: LateIdCallSt
  loc_11B1EAD: var_9C = 4
  loc_11B1EBC: var_E8 = CVar(CInt(4)) 'Integer
  loc_11B1EC3: LateIdCallSt
  loc_11B1EF0: For var_FC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_FC 'Integer
  loc_11B1EFA:   var_9C = CVar(CLng(var_86)) 'Long
  loc_11B1EFF:   var_E8 = &H258
  loc_11B1F0B:   LateIdCallSt
  loc_11B1F16: Next var_FC 'Integer
  loc_11B1F1D: Set var_8C = Nothing 
  loc_11B1F21: Exit Sub
End Sub

Public Sub Proc_256_44_1173630
  'Data Table: 51A3C4
  Dim var_9C As Variant
  Dim var_8C As Variant
  Dim var_F0 As Variant
  loc_117325C: Set var_8C = Me.FGrid2
  loc_117326B: var_8C.Top = CVar(CDbl(600))
  loc_117327C: var_8C.Left = CVar(CDbl(300))
  loc_117328D: var_8C.Width = CVar(CDbl(8810))
  loc_117329E: var_8C.Height = CVar(CDbl(5665))
  loc_11732B2: Me.CmdUp2.Top = CDbl(800)
  loc_11732E8: Me.CmdUp2.Left = ((CDbl(var_8C.Left) + CDbl(var_8C.Width)) + CDbl(250))
  loc_117332D: Me.CmdDown2.Top = (Me.CmdUp2.Top + Me.CmdUp2.Height)
  loc_1173369: Me.CmdDown2.Left = ((CDbl(var_8C.Left) + CDbl(var_8C.Width)) + CDbl(250))
  loc_11733B2: Me.CmdExit2.Top = (Me.CmdUp2.Top + (Me.CmdUp2.Height * CDbl(2)))
  loc_11733EE: Me.CmdExit2.Left = ((CDbl(var_8C.Left) + CDbl(var_8C.Width)) + CDbl(250))
  loc_11733FD: var_9C = 0
  loc_1173406: var_F0 = &HA
  loc_1173412: LateIdCallSt
  loc_117341A: var_9C = 1
  loc_1173423: var_F0 = &H4B0
  loc_117342F: LateIdCallSt
  loc_1173437: var_9C = 1
  loc_1173446: var_F0 = CVar(CInt(4)) 'Integer
  loc_117344D: LateIdCallSt
  loc_1173455: var_9C = 1
  loc_1173464: var_F0 = CVar(CInt(4)) 'Integer
  loc_117346B: LateIdCallSt
  loc_1173473: var_9C = 2
  loc_117347C: var_F0 = &H898
  loc_1173488: LateIdCallSt
  loc_1173490: var_9C = 2
  loc_117349F: var_F0 = CVar(CInt(4)) 'Integer
  loc_11734A6: LateIdCallSt
  loc_11734AE: var_9C = 2
  loc_11734BD: var_F0 = CVar(CInt(4)) 'Integer
  loc_11734C4: LateIdCallSt
  loc_11734CC: var_9C = 3
  loc_11734D5: var_F0 = &H578
  loc_11734E1: LateIdCallSt
  loc_11734E9: var_9C = 3
  loc_11734F8: var_F0 = CVar(CInt(4)) 'Integer
  loc_11734FF: LateIdCallSt
  loc_1173507: var_9C = 3
  loc_1173516: var_F0 = CVar(CInt(1)) 'Integer
  loc_117351D: LateIdCallSt
  loc_1173525: var_9C = 4
  loc_117352E: var_F0 = &H898
  loc_117353A: LateIdCallSt
  loc_1173542: var_9C = 4
  loc_1173551: var_F0 = CVar(CInt(4)) 'Integer
  loc_1173558: LateIdCallSt
  loc_1173560: var_9C = 4
  loc_117356F: var_F0 = CVar(CInt(4)) 'Integer
  loc_1173576: LateIdCallSt
  loc_117357E: var_9C = 5
  loc_1173587: var_F0 = &H578
  loc_1173593: LateIdCallSt
  loc_117359B: var_9C = 5
  loc_11735AA: var_F0 = CVar(CInt(4)) 'Integer
  loc_11735B1: LateIdCallSt
  loc_11735B9: var_9C = 5
  loc_11735C8: var_F0 = CVar(CInt(4)) 'Integer
  loc_11735CF: LateIdCallSt
  loc_11735FC: For var_104 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_86 = var_104 'Integer
  loc_1173606:   var_9C = CVar(CLng(var_86)) 'Long
  loc_117360B:   var_F0 = &H258
  loc_1173617:   LateIdCallSt
  loc_1173622: Next var_104 'Integer
  loc_1173629: Set var_8C = Nothing 
  loc_117362D: Exit Sub
End Sub

Public Sub Proc_256_45_169B3E8
  'Data Table: 51A3C4
  Dim var_96 As Integer
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_51A3C8 As Connection15
  Dim var_C8 As Variant
  Dim var_A0 As Recordset15
  Dim var_DC As Variant
  Dim var_D8 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As String
  Dim var_108 As String
  Dim var_10C As String
  Dim var_11C As String
  Dim var_128 As Variant
  Dim var_12C As Variant
  Dim var_8A As Integer
  Dim var_8C As Integer
  Dim var_88 As Recordset15
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_16C As Variant
  Dim var_100 As Variant
  Dim var_144 As Variant
  Dim var_28C As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_1A0 As Variant
  Dim var_1F8 As Variant
  Dim var_208 As Variant
  Dim var_218 As Variant
  Dim var_238 As Variant
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_2DC As Variant
  Dim var_AC As Recordset15
  Dim var_A4 As Recordset15
  Dim var_92 As Integer
  loc_1699BCC: unk_51A3C8.Execute "Select Order_Booking,Kotyn from Depart where Code='" & global_52 & "'", var_D8, -1
  loc_1699BD7: Set var_A0 = var_DC
  loc_1699BF6: var_DC = var_A0.Fields
  loc_1699C15: global_108 = Proc_6_38_E68A98(CVar(var_DC.Item("KotYN")), var_DC)
  loc_1699C50: global_112 = Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Order_Booking")))
  loc_1699C6F: var_DC = var_A0.Fields
  loc_1699C7F: var_D8 = var_DC.Item("KotYN").Value
  loc_1699C99: If (var_D8 = "Y") Then
  loc_1699CB0:   var_B4 = "SELECT RoomMast.Code as code,RoomMast.Name,RoomMast.RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_1699CC8:   var_108 = var_B4 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='TB' and RoomMast.RestCode='" & global_52 & "' ORDER BY  RoomMast.code"
  loc_1699CD1:   unk_51A3C8.Execute var_108, var_D8, -1
  loc_1699CDC:   Set var_88 = var_DC
  loc_1699D07:   var_B4 = "Select T.Code as Code,T.Name,AA.WAITERNAME,T.RestCode From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,WAITER,WAITER.NAME AS WAITERNAME FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER)WHERE KOT.RestCode='" & global_52
  loc_1699D0E:   var_B8 = var_B4 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_1699D28:   unk_51A3C8.Execute var_B8 & global_52 & "'  order by T.Code", var_D8, -1
  loc_1699D33:   Set var_A4 = var_DC
  loc_1699D5B:   var_B4 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_1699D69:   var_104 = var_B4 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_1699D77:   var_10C = var_104 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & " And Sale1.RoomCat='REST' And Sale1.RoomType='"
  loc_1699D99:   var_11C = var_10C & global_96 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_1699DB3:   unk_51A3C8.Execute var_11C & global_52 & "' Order by T.Code", var_D8, -1
  loc_1699DBE:   Set var_AC = var_DC
  loc_1699DE8:   If (MemVar_1F9220C <> "Yes") Then
  loc_1699DF4:     Set var_DC = Me.CmdPKOT
  loc_1699DFA:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1699E0B:     Set var_DC = Me.CmdOrderBook
  loc_1699E11:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1699E1D:     Set var_DC = Me.CmdPKOT
  loc_1699E23:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_DC)
  loc_1699E35:     Set var_E0 = Me.CmdCancel
  loc_1699E3B:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004(CVar(CDbl(var_DC)))
  loc_1699E54:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006(Me.CmdAKOT)
  loc_1699E6C:     Me.FrameOption.Height = (CDbl(0) * CDbl(5))
  loc_1699E7E:   Else
  loc_1699E87:     Set var_DC = Me.CmdOrderBook
  loc_1699E8D:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1699E99:     Set var_DC = Me.CmdOrderBook
  loc_1699E9F:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_1699EB1:     Set var_E0 = Me.CmdCancel
  loc_1699EB7:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004(CVar(CDbl()))
  loc_1699ECA:     Set var_DC = Me.CmdAKOT
  loc_1699ED0:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_1699EE8:     Me.FrameOption.Height = (CDbl() * CDbl(6))
  loc_1699EF7:   End If
  loc_1699EFA: Else
  loc_1699F0E:   var_B4 = "SELECT RoomMast.Code as code,RoomMast.Name,RoomMast.RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_1699F26:   var_108 = var_B4 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='TB' and RoomMast.RestCode='" & global_52 & "' ORDER BY  RoomMast.code"
  loc_1699F2F:   unk_51A3C8.Execute var_108, var_D8, -1
  loc_1699F3A:   Set var_88 = var_DC
  loc_1699F65:   var_B4 = "Select  T.Code as Code,T.Name,AA.WAITERNAME,T.RestCode From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,WAITER,WAITER.NAME AS WAITERNAME FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER)WHERE KOT.RestCode='" & global_52
  loc_1699F6C:   var_B8 = var_B4 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_1699F86:   unk_51A3C8.Execute var_B8 & global_52 & "' order by T.Code", var_D8, -1
  loc_1699F91:   Set var_A4 = var_DC
  loc_1699FB9:   var_B4 = "Select LTrim(RTrim(T.Code)) as Code,T.Name,AA.WAITERNAME,AA.VTime,T.RestCode From RoomMast T LEFT JOIN (SELECT Sale1.DocId, MAX(Sale1.VNo) Bill_No,Max(Sale1.VTime) VTime,MAX(Sale1.RoomNo) RoomNo,MAX(Sale1.Waiter) WAITER,max(Waiter.Name) WAITERNAME, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End "
  loc_1699FC7:   var_104 = var_B4 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code) "
  loc_1699FD5:   var_10C = var_104 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & " And Sale1.RoomCat='REST' And Sale1.RoomType='"
  loc_1699FF7:   var_11C = var_10C & global_96 & "' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID) AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_169A011:   unk_51A3C8.Execute var_11C & global_52 & "' Order by T.Code", var_D8, -1
  loc_169A01C:   Set var_AC = var_DC
  loc_169A060:   var_D8 = var_A0.Fields.Item("Order_Booking").Value
  loc_169A07A:   If CBool(var_D8 <> "Y") Then
  loc_169A086:     Set var_DC = Me.CmdAKOT
  loc_169A08C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_169A09D:     Set var_DC = Me.CmdChngTable
  loc_169A0A3:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_169A0B4:     Set var_DC = Me.CmdBillLookup
  loc_169A0BA:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_169A0CB:     Set var_DC = Me.CmdPKOT
  loc_169A0D1:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_169A0E2:     Set var_DC = Me.CmdOrderBook
  loc_169A0E8:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_169A102:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_169A10E:     Set var_E0 = Me.CmdSBill
  loc_169A114:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(Me.CmdSBill)
  loc_169A121:     Set var_DC = Me.CmdSBill
  loc_169A127:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_DC)
  loc_169A136:     var_C8 = CVar((CDbl(var_DC) + CDbl(var_100))) 'Single
  loc_169A13F:     Set var_128 = Me.CmdCancel
  loc_169A145:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004(CVar(CDbl(0)))
  loc_169A15E:     Set var_DC = Me.CmdAKOT
  loc_169A164:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_169A17C:     Me.FrameOption.Height = (CDbl() * CDbl(2))
  loc_169A18E:   Else
  loc_169A197:     Set var_DC = Me.CmdAKOT
  loc_169A19D:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_169A1AE:     Set var_DC = Me.CmdChngTable
  loc_169A1B4:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_169A1C5:     Set var_DC = Me.CmdBillLookup
  loc_169A1CB:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_169A1DC:     Set var_DC = Me.CmdPKOT
  loc_169A1E2:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_169A1F6:     Set var_DC = Me.CmdSBill
  loc_169A1FC:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_169A208:     Set var_E0 = Me.CmdSBill
  loc_169A20E:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_169A21B:     Set var_DC = Me.CmdSBill
  loc_169A221:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_169A230:     var_C8 = CVar((CDbl() + CDbl(var_100))) 'Single
  loc_169A239:     Set var_128 = Me.CmdOrderBook
  loc_169A23F:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_169A258:     Set var_E0 = Me.CmdOrderBook
  loc_169A25E:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_169A26B:     Set var_DC = Me.CmdOrderBook
  loc_169A271:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_169A280:     var_C8 = CVar((CDbl() + CDbl(var_100))) 'Single
  loc_169A289:     Set var_128 = Me.CmdCancel
  loc_169A28F:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004(CVar(CDbl(0)))
  loc_169A2A8:     Set var_DC = Me.CmdAKOT
  loc_169A2AE:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_169A2C0:     Set var_E0 = Me.FrameOption
  loc_169A2C6:     var_E0.Height = (CDbl() * CDbl(3))
  loc_169A2D5:     Call Proc_256_44_1173630()
  loc_169A2E6:     Me.FrPendingOrder.Visible = True
  loc_169A2EE:   End If
  loc_169A2EE: End If
  loc_169A2F4: var_F0 = 0
  loc_169A324: unk_51A3C8.Execute "Select Name From Depart Where Code ='" & global_52 & "'", var_D8, -1
  loc_169A32C: var_DC = var_DC.Fields
  loc_169A334: var_F0 = var_E0.Item(var_E0)
  loc_169A33C: var_128 = var_128.Value
  loc_169A352: Me.Label4.Caption = CStr(var_100)
  loc_169A374: var_8A = 9
  loc_169A38E: If (Me.Recordset15.RecordCount > 0) Then
  loc_169A3BE:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_169A42B:     var_D8 = CVar(((Val(CStr(Me.Recordset15.RecordCount)) - CDbl((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_169A44C:     var_8C = CInt(((Val(CStr(Format(var_D8, "00"))) + CDbl(1)) * CDbl(6)))
  loc_169A464:   Else
  loc_169A493:     var_D8 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_169A4B4:     var_8C = CInt(((Val(CStr(Format(var_D8, "00"))) + CDbl(1)) * CDbl(6)))
  loc_169A4C3:   End If
  loc_169A4C6: Else
  loc_169A4CB:   global_100 = &HFF
  loc_169A4D1: Else
  loc_169A4D3:   var_90 = 1
  loc_169A4D8:   var_8E = 0
  loc_169A4EE:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_169A509:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_169A523:   Call Proc_256_46_111D094((var_8A - 1), (var_8C - 1), var_8E, var_90, global_100, var_8C, 1, 1)
  loc_169A53B:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_169A556:   Me.FGrid1.Col = CVar(CLng(var_8E))
  loc_169A56D:   Me.FGrid1.Redraw = False
  loc_169A59A:   For var_15C = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_94 = var_15C 'Integer
  loc_169A5A4:     var_C8 = CVar(CLng(var_94)) 'Long
  loc_169A5A9:     var_16C = &H320
  loc_169A5B6:     Set var_DC = Me.FGrid1
  loc_169A5BC:     LateIdCallSt
  loc_169A5CA:   Next var_15C 'Integer
  loc_169A5CF:   ' Referenced from:   169B3AB
  loc_169A5E1:   If Not(Me.FGrid1.EOF) Then
  loc_169A5E6:     var_90 = 1
  loc_169A5E9:     ' Referenced from:   169B3A8
  loc_169A5F3:     If (var_90 <= (var_8A - 1)) Then
  loc_169A5F8:       var_96 = &HFF
  loc_169A60A:       For var_180 = (var_8C - 6) To (var_8C - 1):   var_94 = var_180 'Integer
  loc_169A61A:         If (var_94 = (var_8C - 6)) Then
  loc_169A630:           var_100 = Me.FGrid1.Col
  loc_169A669:           var_144 = CVar(Proc_6_38_E68A98(CVar(Me.var_100.Fields.Item("Code")), CVar(CLng(var_100)), CVar(CLng(var_90)))) 'String
  loc_169A671:           Set var_12C = Me.FGrid1
  loc_169A677:           LateIdCallSt
  loc_169A6AA:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_169A6B9:           Me.FGrid1.Col = "Code"
  loc_169A6C8:         End If
  loc_169A6D2:         If (var_94 = (var_8C - 5)) Then
  loc_169A6EC:           If (Me.Recordset15.RecordCount > 0) Then
  loc_169A6F5:             Me.Recordset15.MoveFirst
  loc_169A6FA:           End If
  loc_169A72C:           var_B8 = (var_8C - 6) & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_12C, var_144)
  loc_169A73D:           Me.Recordset15.Filter = CVar(CStr(Me.Recordset15.RecordCount) & "'")
  loc_169A76A:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_169A7A1:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) = &HFF) Then
  loc_169A7B7:               var_28C = Me.FGrid1.Col
  loc_169A7FC:               var_100 = (Me.var_28C.Fields.Item("ShortName").Value + "(")
  loc_169A832:               var_1C0 = (CVar(CStr(Me.Recordset15.RecordCount) & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_169A83B:               var_1D0 = (var_1C0 + ")")
  loc_169A844:               var_1E0 = (var_1D0 + vbCrLf)
  loc_169A873:               var_208 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("WaiterName")), var_1E0, "*", CVar(CLng(var_28C)))) 'String
  loc_169A876:               var_218 = (CVar(CLng(var_90)) + var_208)
  loc_169A87F:               var_238 = (var_218 + vbCrLf)
  loc_169A888:               var_258 = (var_238 + "Vacant")
  loc_169A891:               var_2DC = CVar(CStr(var_96 & var_258)) 'String
  loc_169A899:               Set var_2F0 = Me.FGrid1
  loc_169A89F:               LateIdCallSt
  loc_169A8DD:               var_AE = CByte(0) 'Byte
  loc_169A8F5:               If (var_AC.RecordCount > 0) Then
  loc_169A904:                 var_AC.Filter = 0
  loc_169A90C:                 var_AC.MoveFirst
  loc_169A911:               End If
  loc_169A951:               var_AC.Filter = CVar(var_2DC & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_2F0) & "'")
  loc_169A97B:               If (var_AC.AbsolutePosition > 0) Then
  loc_169A9AF:                 If (IsNull(CVar(var_AC.Fields.Item("WaiterName"))) = 0) Then
  loc_169A9B6:                   var_AE = CByte(1) 'Byte
  loc_169A9BA:                 End If
  loc_169A9BA:               End If
  loc_169A9BD:             Else
  loc_169A9C1:               var_1A0 = CVar(CLng(var_90)) 'Long
  loc_169A9D0:               var_1F8 = Me.FGrid1.Col
  loc_169A9D9:               var_248 = CVar(CLng(var_1F8)) 'Long
  loc_169AA10:               var_100 = (Me.var_1F8.Fields.Item("ShortName").Value + "(")
  loc_169AA46:               var_1C0 = (CVar(var_2DC & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_2F0) & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_169AA4F:               var_1D0 = (var_1C0 + ")")
  loc_169AA58:               var_1E0 = (var_1D0 + vbCrLf)
  loc_169AA5D:               var_208 = CVar(CStr(var_1E0)) 'String
  loc_169AA65:               Set var_1E8 = Me.FGrid1
  loc_169AA6B:               LateIdCallSt
  loc_169AA9B:               var_AE = CByte(2) 'Byte
  loc_169AA9F:               ' Referenced from:     169AD75
  loc_169AAF7:               var_144 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), Me.FGrid1.Fields.Item("Code").Value, var_1E8, var_208)) 'String
  loc_169AB0F:               If (var_248 = var_144) Then
  loc_169AB29:                 If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_169AB30:                   var_1A0 = CVar(CLng(var_90)) 'Long
  loc_169AB78:                   var_100 = Me.FGrid1.TextMatrix)
  loc_169ABB1:                   var_B8 = Proc_6_38_E68A98(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_169ABB5:                   var_1C0 = CVar(CVar(CLng(Me.FGrid1.Col)) & var_B8) 'String
  loc_169ABBD:                   Set var_1E8 = Me.FGrid1
  loc_169ABC3:                   LateIdCallSt
  loc_169ABEF:                 Else
  loc_169AC1F:                   var_100 = Me.FGrid1.TextMatrix)
  loc_169AC58:                   var_B4 = Proc_6_38_E68A98(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), 1)
  loc_169AC81:                   If (InStr(var_1C0, var_1E8, var_B4, 0) = 0) Then
  loc_169AC88:                     var_1A0 = CVar(CLng(var_90)) 'Long
  loc_169ACD0:                     var_100 = Me.FGrid1.TextMatrix)
  loc_169AD10:                     var_104 = Proc_6_38_E68A98(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100) & ",", CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)))
  loc_169AD14:                     var_1C0 = CVar(var_1A0 & var_104) 'String
  loc_169AD1C:                     Set var_1E8 = Me.FGrid1
  loc_169AD22:                     LateIdCallSt
  loc_169AD4D:                   End If
  loc_169AD4D:                 End If
  loc_169AD53:                 var_A4.MoveNext
  loc_169AD6F:                 If (var_A4.AbsolutePosition < 0) Then
  loc_169AD72:                   GoTo loc_169AD78
  loc_169AD75:                 End If
  loc_169AD75:                 GoTo loc_169AA9F
  loc_169AD78:                 ' Referenced from:     169AD72
  loc_169AD78:               End If
  loc_169AD87:               Me.Recordset15.Filter = 0
  loc_169AD8C:             End If
  loc_169AD8C:           End If
  loc_169ADA5:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_169ADB4:           Me.FGrid1.Col = 0
  loc_169ADC3:         End If
  loc_169ADCD:         If (var_94 = (var_8C - 4)) Then
  loc_169ADE4:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_169AE00:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_169AE27:           Call Proc_256_47_10C54B4(CInt(CLng(Me.FGrid1.Col)), var_AE, Me.FGrid1.Col, var_92, var_1E8)
  loc_169AE45:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_169AE66:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_169AE75:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_169AE84:         End If
  loc_169AE8E:         If (var_94 = (var_8C - 3)) Then
  loc_169AEA8:           If (Me.Recordset15.RecordCount > 0) Then
  loc_169AEB1:             Me.Recordset15.MoveFirst
  loc_169AEB6:           End If
  loc_169AEF9:           Me.Recordset15.Filter = CVar(var_1A0 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code ='", var_1C0) & "'")
  loc_169AF26:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_169AF5D:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) <> &HFF) Then
  loc_169AF60:               ' Referenced from:   169B1FB
  loc_169AFB8:               var_144 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), Me.Recordset15.Fields.Item("Code").Value)) 'String
  loc_169AFD0:               If (var_1A0 = var_144) Then
  loc_169AFEA:                 If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_169AFF1:                   var_F0 = CVar(CLng(var_90)) 'Long
  loc_169B000:                   var_100 = Me.FGrid1.Col
  loc_169B039:                   var_144 = CVar(Proc_6_38_E68A98(CVar(Me.var_100.Fields.Item("WaiterName")), CVar(CLng(var_100)))) 'String
  loc_169B041:                   Set var_12C = Me.FGrid1
  loc_169B047:                   LateIdCallSt
  loc_169B064:                 Else
  loc_169B094:                   var_100 = Me.FGrid1.TextMatrix)
  loc_169B0BC:                   var_12C = Me.var_100.Fields.Item("WaiterName")
  loc_169B0C4:                   var_144 = CVar(var_12C) 'Address
  loc_169B0F6:                   If (InStr(var_144, var_12C, Proc_6_38_E68A98(var_144, CStr(var_100), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), 1), 0) = 0) Then
  loc_169B0FD:                     var_1A0 = CVar(CLng(var_90)) 'Long
  loc_169B145:                     var_100 = Me.FGrid1.TextMatrix)
  loc_169B185:                     var_104 = Proc_6_38_E68A98(CVar(Me.var_100.Fields.Item("WaiterName")), CStr(var_100) & ",", CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_169B189:                     var_1C0 = CVar(CVar(CLng(Me.FGrid1.Col)) & var_104) 'String
  loc_169B191:                     Set var_1E8 = Me.FGrid1
  loc_169B197:                     LateIdCallSt
  loc_169B1C2:                   End If
  loc_169B1C2:                 End If
  loc_169B1C8:                 var_A4.MoveNext
  loc_169B1E4:                 If (var_A4.AbsolutePosition < 0) Then
  loc_169B1F6:                   Me.Recordset15.Filter = 0
  loc_169B1FB:                 End If
  loc_169B1FB:                 GoTo loc_169AF60
  loc_169B1FE:               End If
  loc_169B1FE:             End If
  loc_169B1FE:           End If
  loc_169B217:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_169B226:           Me.FGrid1.Col = 0
  loc_169B235:         End If
  loc_169B23F:         If (var_94 = (var_8C - 2)) Then
  loc_169B28B:           var_144 = CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("KotYN")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), var_1E8)) 'String
  loc_169B293:           Set var_12C = Me.FGrid1
  loc_169B299:           LateIdCallSt
  loc_169B2CC:           var_C8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_169B2DB:           Me.FGrid1.Col = "KotYN"
  loc_169B2EA:         End If
  loc_169B2F4:         If (var_94 = (var_8C - 1)) Then
  loc_169B310:           var_C8 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_169B31F:           Me.FGrid1.Col = "KotYN"
  loc_169B32E:         End If
  loc_169B331:       Next var_180 'Integer
  loc_169B33C:       var_90 = (var_90 + 1)
  loc_169B349:       If (var_90 > (var_8A - 1)) Then
  loc_169B365:         var_C8 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_169B374:         Me.FGrid1.Col = "KotYN"
  loc_169B383:       End If
  loc_169B389:       var_88.MoveNext
  loc_169B3A2:       If (var_88.EOF = &HFF) Then
  loc_169B3A5:         GoTo loc_169B3AE
  loc_169B3A8:       End If
  loc_169B3A8:       GoTo loc_169A5E9
  loc_169B3AB:     End If
  loc_169B3AB:     GoTo loc_169A5CF
  loc_169B3AE:     ' Referenced from:   169B3A5
  loc_169B3AE:   End If
  loc_169B3AE: End If
  loc_169B3BC: Me.FGrid1.Redraw = True
  loc_169B3C9: Set var_88 = Nothing
  loc_169B3D1: Set var_A4 = Nothing
  loc_169B3D9: Set var_A0 = Nothing
  loc_169B3E1: Set var_AC = Nothing
  loc_169B3E4: Exit Sub
End Sub

Public Sub Proc_256_46_111D094(arg_C, arg_10) '111D094
  'Data Table: 51A3C4
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_FC As String
  Dim arg_10 As Integer
  loc_111CD3B: Me.FGrid1.Row = 0
  loc_111CD56: var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111CD5B: var_CC = 0
  loc_111CD68: Set var_E0 = Me.FGrid1
  loc_111CD6E: LateIdCallSt
  loc_111CD80: ' Referenced from: 111CFD7
  loc_111CD86: If (arg_10 < 5) Then
  loc_111CD89:   GoTo loc_111CFDA
  loc_111CD8C: End If
  loc_111CD90: Set var_E4 = Me.FGrid1
  loc_111CDA1: For var_E8 = arg_10 To (arg_10 - 3) Step &HFF: var_86 = var_E8 'Integer
  loc_111CDAB:   var_98 = CVar(CLng(var_86)) 'Long
  loc_111CDB0:   var_CC = 0
  loc_111CDBD:   Set var_AC = Me.FGrid1
  loc_111CDC3:   LateIdCallSt
  loc_111CDD1: Next var_E8 'Integer
  loc_111CDE5: For var_EC = (arg_10 - 5) To (arg_10 - 4): var_86 = var_EC 'Integer
  loc_111CDF5:   If (var_86 = (arg_10 - 5)) Then
  loc_111CDFC:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111CE01:     var_CC = 0
  loc_111CE0E:     Set var_AC = Me.FGrid1
  loc_111CE14:     LateIdCallSt
  loc_111CE23:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111CE28:     var_CC = 1
  loc_111CE32:     Set var_AC = Me.FGrid1
  loc_111CE38:     LateIdCallSt
  loc_111CE56:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111CE5F:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111CE64:     var_FC = "Table No"
  loc_111CE6E:     Set var_E0 = Me.FGrid1
  loc_111CE74:     LateIdCallSt
  loc_111CE86:   End If
  loc_111CE90:   If (var_86 = (arg_10 - 4)) Then
  loc_111CE97:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111CE9C:     var_CC = &H4B0
  loc_111CEA9:     Set var_AC = Me.FGrid1
  loc_111CEAF:     LateIdCallSt
  loc_111CEBE:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111CEC3:     var_CC = 1
  loc_111CECD:     Set var_AC = Me.FGrid1
  loc_111CED3:     LateIdCallSt
  loc_111CEF1:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111CEFA:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111CEFF:     var_FC = "Status"
  loc_111CF09:     Set var_E0 = Me.FGrid1
  loc_111CF0F:     LateIdCallSt
  loc_111CF21:   End If
  loc_111CF2B:   If (var_86 = (arg_10 - 3)) Then
  loc_111CF32:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111CF37:     var_CC = &H12C
  loc_111CF44:     Set var_AC = Me.FGrid1
  loc_111CF4A:     LateIdCallSt
  loc_111CF59:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111CF64:     var_CC = CVar(CInt(4)) 'Integer
  loc_111CF6C:     Set var_AC = Me.FGrid1
  loc_111CF72:     LateIdCallSt
  loc_111CF90:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111CF99:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111CF9E:     var_FC = vbNullString
  loc_111CFA8:     Set var_E0 = Me.FGrid1
  loc_111CFAE:     LateIdCallSt
  loc_111CFC0:   End If
  loc_111CFC3: Next var_EC 'Integer
  loc_111CFCA: Set var_E4 = Nothing 
  loc_111CFD4: arg_10 = (arg_10 - 6)
  loc_111CFD7: GoTo loc_111CD80
  loc_111CFDA: ' Referenced from: 111CD89
  loc_111D001: For var_110 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_110 'Integer
  loc_111D01A:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_111D02A:   For var_114 = 1 To arg_C: var_88 = var_114 'Integer
  loc_111D043:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_111D05E:     Me.FGrid1.CellBackColor = &HE69839
  loc_111D079:     Me.FGrid1.CellForeColor = &HFFFF
  loc_111D084:   Next var_114 'Integer
  loc_111D08C: Next var_110 'Integer
  loc_111D091: Exit Sub
End Sub

Public Sub Proc_256_47_10C54B4
  'Data Table: 51A3C4
  Dim var_8C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_C0 As Variant
  loc_10C51C0: var_86 = arg_10 'Byte
  loc_10C51CD: If (var_86 = CByte(0)) Then
  loc_10C51E9:   var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C51F2:   Set var_C0 = Me.FGrid1
  loc_10C51F8:   var_C0.Col = var_AC
  loc_10C5213:   Set var_8C = Me.Label2
  loc_10C5219:   Call 0.Method_Proc_256_47_10C54B40 (6, var_C0)
  loc_10C5238:   Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C525F:   var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C5268:   Set var_C0 = Me.FGrid1
  loc_10C526E:   var_C0.Col = CVar(var_C0.BackColor)
  loc_10C5289:   Set var_8C = Me.Label2
  loc_10C528F:   Call 0.Method_Proc_256_47_10C54B40 (6, var_C0)
  loc_10C52AE:   Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C52BF: Else
  loc_10C52C8:   If (var_86 = CByte(1)) Then
  loc_10C52E4:     var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C52ED:     Set var_C0 = Me.FGrid1
  loc_10C52F3:     var_C0.Col = CVar(var_C0.BackColor)
  loc_10C530E:     Set var_8C = Me.Label2
  loc_10C5314:     Call 0.Method_Proc_256_47_10C54B40 (7, var_C0)
  loc_10C5333:     Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C535A:     var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C5363:     Set var_C0 = Me.FGrid1
  loc_10C5369:     var_C0.Col = CVar(var_C0.BackColor)
  loc_10C5384:     Set var_8C = Me.Label2
  loc_10C538A:     Call 0.Method_Proc_256_47_10C54B40 (7, var_C0)
  loc_10C53A9:     Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C53BA:   Else
  loc_10C53C3:     If (var_86 = CByte(2)) Then
  loc_10C53DF:       var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C53E8:       Set var_C0 = Me.FGrid1
  loc_10C53EE:       var_C0.Col = CVar(var_C0.BackColor)
  loc_10C5409:       Set var_8C = Me.Label2
  loc_10C540F:       Call 0.Method_Proc_256_47_10C54B40 (5, var_C0)
  loc_10C542E:       Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C5455:       var_AC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10C545E:       Set var_C0 = Me.FGrid1
  loc_10C5464:       var_C0.Col = CVar(var_C0.BackColor)
  loc_10C547F:       Set var_8C = Me.Label2
  loc_10C5485:       Call 0.Method_Proc_256_47_10C54B40 (5, var_C0)
  loc_10C54A4:       Me.FGrid1.CellBackColor = CVar(var_C0.BackColor)
  loc_10C54B2:     End If
  loc_10C54B2:   End If
  loc_10C54B2: End If
  loc_10C54B2: Exit Sub
End Sub

Public Sub Proc_256_48_EC7F28
  'Data Table: 51A3C4
  Dim var_C4 As Integer
  Dim var_88 As String
  Dim unk_51A3C8 As Connection15
  Dim var_B0 As Recordset15
  Dim var_B4 As Fields15
  Dim var_C8 As Field20
  loc_EC7E9A: var_C4 = 0
  loc_EC7EBA: var_88 = "Select Count(DOCID) from KOT Where ISNULL(PrintFlag,'')='N' AND Printed<>'Y' AND PENDING='Y' And RestCode='" & global_52
  loc_EC7ECA: unk_51A3C8.Execute var_88 & "'", var_AC, -1
  loc_EC7ED2: var_B0 = var_B0.Fields
  loc_EC7EDA: var_C4 = var_B4.Item(var_B4)
  loc_EC7EE2: var_C8 = var_C8.Value
  loc_EC7F09: If (var_D8 > 0) Then
  loc_EC7F19:   Set var_B0 = Me.cmdPrintPKOT
  loc_EC7F1F:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_2D(&HFF00)
  loc_EC7F27: End If
  loc_EC7F27: Exit Sub
End Sub
