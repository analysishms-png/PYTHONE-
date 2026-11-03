VERSION 5.00
Begin VB.Form SmartCardMast
  Caption = "Smart Card Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 8130
  ClientHeight = 8100
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin BtnEnh ChkOpenning
    Left = 3015
    Top = 960
    Width = 1350
    Height = 360
    TabIndex = 16
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 7800
    Width = 8130
    Height = 300
    Visible = 0   'False
    TabIndex = 15
  End
  Begin MSFlexGrid FGPoint
    Left = 12525
    Top = 6825
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 13
  End
  Begin DataGrid DGPurchBill
    Left = 9525
    Top = 3870
    Width = 6735
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 8205
    Top = 165
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 3045
    Top = 1440
    Width = 1290
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 35
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
    Left = 3045
    Top = 2700
    Width = 1290
    Height = 285
    TabIndex = 4
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
    Index = 2
    ForeColor = &HC00000&
    Left = 3045
    Top = 2070
    Width = 1290
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 10
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
    Left = 3045
    Top = 2385
    Width = 1290
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 10
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
    ForeColor = &HC00000&
    Left = 3045
    Top = 1755
    Width = 1290
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 10
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
    Left = 4410
    Top = 1425
    Width = 4260
    Height = 4830
    TabIndex = 5
  End
  Begin BtnEnh cmd
    Index = 1
    Left = 1455
    Top = 6390
    Width = 1140
    Height = 1050
    TabIndex = 18
  End
  Begin BtnEnh CmdExit
    Left = 4455
    Top = 6390
    Width = 1140
    Height = 1050
    TabIndex = 19
  End
  Begin BtnEnh cmd
    Index = 0
    Left = 2940
    Top = 6390
    Width = 1140
    Height = 1050
    TabIndex = 20
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 17
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
  Begin Label LblSmartCardItem
    ForeColor = &H80&
    Left = 735
    Top = 1035
    Width = 2190
    Height = 285
    Visible = 0   'False
    TabIndex = 14
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
  Begin Label Label1
    Caption = "Purchase Bill No"
    Index = 5
    ForeColor = &HC00000&
    Left = 660
    Top = 1455
    Width = 1575
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
  Begin Label Label1
    Caption = "Entry Date"
    Index = 4
    ForeColor = &HC00000&
    Left = 660
    Top = 2715
    Width = 975
    Height = 240
    TabIndex = 9
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
    Caption = "Inserted Smart Card"
    Index = 2
    ForeColor = &HC00000&
    Left = 660
    Top = 2085
    Width = 1905
    Height = 240
    TabIndex = 8
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
    Caption = "User Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 660
    Top = 2400
    Width = 1035
    Height = 240
    TabIndex = 7
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
    Caption = "Purchase Smart Card"
    Index = 0
    ForeColor = &HC00000&
    Left = 660
    Top = 1770
    Width = 2025
    Height = 240
    TabIndex = 6
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

Attribute VB_Name = "SmartCardMast"


Private Sub FGPoint_UnknownEvent_9 'E32894
  'Data Table: 44FE94
  loc_E32888: If (CBool(Me.DGPurchBill.Visible) = &HFF) Then
  loc_E3288B:   Call DGPurchBill_UnknownEvent_9()
  loc_E32890: End If
  loc_E32890: Exit Sub
End Sub

Private Sub Form_Load() '12644C4
  'Data Table: 44FE94
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_B8 As Variant
  Dim var_AC As Variant
  Dim var_D8 As Variant
  Dim var_DC As String
  Dim unk_44FEB7 As Connection15
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_104 As Variant
  Dim var_120 As Variant
  Dim var_128 As Variant
  Dim var_FC As Variant
  Dim var_114 As Variant
  Dim var_17C As Variant
  loc_1263F64: On Error Goto loc_12644BC
  loc_1263F6E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1263F81: Me.LblSmartCardItem.BackColor = CLng(MemVar_1F921B0)
  loc_1263F94: Set var_8C = Me.ChkOpenning
  loc_1263F9A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(MemVar_1F921B0))
  loc_1263FB5: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1263FCA: Set var_8C = Me.DGPurchBill
  loc_1263FE4: Set var_8C = Me.Txt
  loc_1263FEA: Call 0.Method_Form_LoadC (var_AE, var_86, 0)
  loc_1263FF8: For var_B2 = CVar(CLng(MemVar_1F921B0)) To (var_AE - 1): DGPurchBill.DispID_FFFFFE0B = var_B2 'Integer
  loc_126400D:   Set var_8C = Me.Txt
  loc_1264013:   Call 0.Method_Form_Load0 (var_86, var_B8)
  loc_126401B:   var_B8.BackColor = -2147483643
  loc_1264036:   Set var_8C = Me.Txt
  loc_126403C:   Call 0.Method_Form_Load0 (var_86, var_B8)
  loc_1264044:   var_B8.ForeColor = &HC00000
  loc_126405F:   Set var_8C = Me.Txt
  loc_1264065:   Call 0.Method_Form_Load0 (var_86, var_B8)
  loc_126406D:   var_B8.BackColor = -2147483643
  loc_1264088:   Set var_8C = Me.Txt
  loc_126408E:   Call 0.Method_Form_Load0 (var_86, var_B8)
  loc_1264096:   var_B8.ForeColor = &HC00000
  loc_12640A5: Next var_B2 'Integer
  loc_12640B1: Set var_8C = Me.LblSmartCardItem
  loc_12640B7: var_8C.Caption = vbNullString
  loc_12640DC: Proc_6_17_EAA2B0(var_C8, MemVar_1F92078, "Select * From Enviro WHERE LOGSITE_CODE=")
  loc_12640F2: unk_44FEB7.Execute CStr(var_FC & var_C8), -1, var_8C
  loc_1264103: Set global_56 = var_8C
  loc_1264131: If (Me.RecordCount > 0) Then
  loc_1264166:   Set var_104 = Me.LblSmartCardItem
  loc_126416C:   var_104.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("SmartCardItem")))
  loc_126417E: End If
  loc_126418B: var_DC = Me.LblSmartCardItem.Tag
  loc_126419E: If (var_DC = vbNullString) Then
  loc_12641A7:   Call 0.Method_arg_50 (var_DC)
  loc_12641B5:   var_D8 = CVar(var_DC) 'String
  loc_12641C2:   var_C8 = "Plz. Define Smart Card Item In Parameter Settings."
  loc_12641C8:   MsgBox(var_C8, &H10, var_D8, var_FC, var_114)
  loc_12641D8: End If
  loc_12641DE: var_AC = 0
  loc_126421D: unk_44FEB7.Execute "Select IsNull(Max(Name),'') From ItemMast Where Code='" & Me.LblSmartCardItem.Tag & "'", var_C8, -1
  loc_1264225: var_B8 = var_B8.Fields
  loc_126422D: var_AC = var_104.Item(var_104)
  loc_1264235: var_120 = var_120.Value
  loc_126424B: Me.LblSmartCardItem.Caption = CStr(var_D8)
  loc_126427D: Set var_8C = Me.Txt
  loc_1264283: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_12642A2: Me.DGPurchBill.Left = CVar(var_B8.Left)
  loc_12642BE: Set var_104 = Me.Txt
  loc_12642C4: Call 0.Method_Form_Load0 (CInt(0), var_120)
  loc_12642DF: Set var_8C = Me.Txt
  loc_12642E5: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_12642FD: var_9C = CVar(((var_B8.Top + var_120.Height) + CDbl(&H1E))) 'Single
  loc_1264306: Set var_128 = Me.DGPurchBill
  loc_126430C: var_128.Top = CVar(var_B8.Left)
  loc_126433A: Me.var_128.CursorLocation = 3
  loc_126434A: Proc_6_7_F25D88(var_C8, MemVar_1F920F4)
  loc_1264378: var_AC = "Select DISTINCT P.DocId Code,Cast(P.Vno As Varchar) BillNo,Convert(Varchar(11),P.Vdate,103) BillDate,P1.CashParty PartyName,P.QtyRec From Purch2 P  Inner Join Purch1 P1 On P.DocId=P1.DocId Inner JOIN VOUCHER_TYPE V ON (P.VTYPE=V.V_TYPE And P.logSite_Code=V.LogSite_Code) WHERE P.DocId Not In (Select Distinct ContraDocId From SmartCardMaster) And P.VDATE>="
  loc_1264380: var_D8 = var_AC & var_C8 
  loc_12643A6: var_17C = var_D8 & " AND P.LogSite_Code='" & CVar(MemVar_1F92078) & "' AND v.category='PURCHBILL' AND P.Item='" & CVar(Me.LblSmartCardItem.Tag) 
  loc_12643BA: Me.Open var_17C & "' ORDER BY P.DOCID", CVar(MemVar_1F92044), 2
  loc_12643DE: CVarUnk
  loc_12643E3: VerifyVarObj
  loc_12643EF: LateIdStAd
  loc_12643FD: Call Proc_283_21_1065B40(Me.DGPurchBill, New, 3)
  loc_126440C: Set var_8C = Me.TopCtrl1
  loc_1264412: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000C("Add")
  loc_126441A: Call Proc_283_18_F53320(-1)
  loc_126442C: Set var_8C = Me.Txt
  loc_1264432: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_126443A: var_B8.Enabled = False
  loc_1264453: Set var_8C = Me.Txt
  loc_1264459: Call 0.Method_Form_Load0 (CInt(2), var_B8)
  loc_1264461: var_B8.Enabled = False
  loc_126447A: Set var_8C = Me.Txt
  loc_1264480: Call 0.Method_Form_Load0 (CInt(3), var_B8)
  loc_1264488: var_B8.Enabled = False
  loc_12644A1: Set var_8C = Me.Txt
  loc_12644A7: Call 0.Method_Form_Load0 (CInt(4), var_B8)
  loc_12644AF: var_B8.Enabled = False
  loc_12644BB: Exit Sub
  loc_12644BC: ' Referenced from: 1263F64
  loc_12644BC: Proc_6_60_E62BC4(var_D8)
  loc_12644C1: Exit Sub
End Sub

Private Sub Form_Resize() 'EBA538
  'Data Table: 44FE94
  Dim var_8C As Label
  loc_EBA4A2: Call 0.Method_arg_50 (var_88)
  loc_EBA4B4: Me.LblFormCaption.Caption = var_88
  loc_EBA4CD: Me.LblFormCaption.Left = CDbl(0)
  loc_EBA4D9: Set var_8C = Me.TopCtrl1
  loc_EBA4DF: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010006()
  loc_EBA4EE: Call 0.Method_arg_78 (var_90)
  loc_EBA507: Me.LblFormCaption.Top = (var_90 + CDbl(var_A0))
  loc_EBA51C: Call 0.Method_arg_100 (var_90)
  loc_EBA52E: Me.LblFormCaption.Width = var_90
  loc_EBA536: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E26D14
  'Data Table: 44FE94
  loc_E26CF7: Set global_52 = Nothing
  loc_E26D09: Set global_56 = Nothing
  loc_E26D10: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E0224C
  'Data Table: 44FE94
  loc_E02240: On Error Goto loc_E02244
  loc_E02243: Exit Sub
  loc_E02244: ' Referenced from: E02240
  loc_E02244: Proc_6_60_E62BC4()
  loc_E02249: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FFF870
  'Data Table: 44FE94
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FFF686: Set var_88 = Me.Txt
  loc_FFF68C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FFF69A: Proc_6_74_E226B0(var_8C)
  loc_FFF6A6: Call Proc_283_20_E83800(var_8C)
  loc_FFF6AE: var_92 = Index
  loc_FFF6B9: If (var_92 = CInt(0)) Then
  loc_FFF6C7:   Me.Requery -1
  loc_FFF6E3:   If (Me.RecordCount > 0) Then
  loc_FFF6F1:     Set var_8C = Me.FGPoint
  loc_FFF709:     Proc_6_137_1193554(Me.DGPurchBill, global_52, Index)
  loc_FFF717:   End If
  loc_FFF765:   Set var_88 = Me.Txt
  loc_FFF76B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FFF773:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FFF78B:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FFF78E:     Exit Sub
  loc_FFF78F:   End If
  loc_FFF79C:   Set var_88 = Me.Txt
  loc_FFF7A2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FFF7AA:   var_A0 = var_8C.Text
  loc_FFF7B2:   var_D4 = CVar(var_A0) 'String
  loc_FFF7F7:   If CBool(var_D4 <> Me.Fields.Item("BillNo").Value) Then
  loc_FFF800:     Me.MoveFirst
  loc_FFF825:     Set var_88 = Me.Txt
  loc_FFF82B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "BillNo =")
  loc_FFF833:     0 = var_8C.Text
  loc_FFF841:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_FFF857:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_FFF86F:   End If
  loc_FFF86F: End If
  loc_FFF86F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FAA4BC
  'Data Table: 44FE94
  Dim Me As Recordset15
  loc_FAA342: If (CLng(Shift) = &H1B) Then
  loc_FAA345:   Call Proc_283_20_E83800()
  loc_FAA34A:   Exit Sub
  loc_FAA34B: End If
  loc_FAA359: If (KeyCode = CInt(0)) Then
  loc_FAA379:   Set var_9C = Me.FGPoint
  loc_FAA384:   Set var_98 = Nothing
  loc_FAA3B2:   Proc_6_69_134A198(Me.DGPurchBill, Me.Txt, KeyCode, global_52, Shift, 0)
  loc_FAA421:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FAA428:     Set var_98 = Me.DGPurchBill
  loc_FAA447:     Proc_6_138_106D6F8(var_98, global_52, KeyCode, Me.FGPoint, 1)
  loc_FAA455:   End If
  loc_FAA455: End If
  loc_FAA471: If (CBool(Me.DGPurchBill.Visible) = 0) Then
  loc_FAA487:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_FAA490:     Proc_6_76_E52838(Shift, arg_14, var_98)
  loc_FAA495:   End If
  loc_FAA4AA:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FAA4B3:     Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_FAA4B8:   End If
  loc_FAA4B8: End If
  loc_FAA4B8: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F1EB08
  'Data Table: 44FE94
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F1EA0B: Proc_6_58_E054C0(arg_10)
  loc_F1EA16: Proc_6_133_E7EF78(var_94)
  loc_F1EA1F: arg_10 = CInt(var_94)
  loc_F1EA28: var_96 = KeyAscii
  loc_F1EA33: If (var_96 = CInt(0)) Then
  loc_F1EA52:   If (CBool(Me.DGPurchBill.Visible) = &HFF) Then
  loc_F1EA7F:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_52, arg_10, "BillNo")
  loc_F1EA99:     Set var_A8 = Me.FGPoint
  loc_F1EAB1:     Proc_6_138_106D6F8(Me.DGPurchBill, global_52, KeyAscii, var_A8)
  loc_F1EABF:   End If
  loc_F1EAC2: Else
  loc_F1EACA:   If (var_96 = CInt(1)) Then
  loc_F1EAD7:     Set var_9C = Me.Txt
  loc_F1EADD:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_F1EAF8:     Proc_6_42_129A86C(var_A8, arg_10, 3, 0)
  loc_F1EB04:   End If
  loc_F1EB04: End If
  loc_F1EB04: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C6CC
  'Data Table: 44FE94
  loc_E4C6AA: Set var_88 = Me.Txt
  loc_E4C6B0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C6BE: Proc_6_73_E22704(var_8C)
  loc_E4C6CA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10001A8
  'Data Table: 44FE94
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim var_C4 As Variant
  loc_FFFFAB: var_86 = Cancel
  loc_FFFFB6: If (var_86 = CInt(0)) Then
  loc_1000007:   Set var_94 = Me.Txt
  loc_100000D:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1000015:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_100002D:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_100003D:     Set var_94 = Me.Txt
  loc_1000043:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_100004B:     var_98.Text = vbNullString
  loc_1000064:     Set var_94 = Me.Txt
  loc_100006A:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1000072:     var_98.Tag = vbNullString
  loc_1000081:   Else
  loc_10000BC:     Set var_B0 = Me.Txt
  loc_10000C2:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_10000CA:     var_B4.Text = CStr(Me.Fields.Item("BillNo").Value)
  loc_100011B:     Set var_B0 = Me.Txt
  loc_1000121:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1000129:     var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1000161:     var_C4 = CVar(Me.Fields.Item("QtyRec")) 'Address
  loc_1000168:     Proc_6_39_E7C810(var_D4)
  loc_100017F:     Set var_B0 = Me.Txt
  loc_1000185:     Call 0.Method_Txt_Validate0 (CInt(1), var_B4)
  loc_100018D:     var_B4.Text = CStr(var_D4)
  loc_10001A5:   End If
  loc_10001A5: End If
  loc_10001A5: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 '11059E8
  'Data Table: 44FE94
  Dim var_88 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As String
  Dim var_128 As MSHFlexGrid
  Dim var_114 As Variant
  Dim var_138 As String
  Dim var_14C As Variant
  loc_11056C4: Set var_88 = Err()
  loc_11056CA: Call 0.Method_arg_1C (var_8C)
  loc_11056D6: OnGoto
  loc_11056E0: Next arg_6BFF 'Integer
  loc_11056E8: If (CInt(var_8C) = 0) Then
  loc_11056F6:   If (Proc_275_10_10A3DAC(var_98) = &HFF) Then
  loc_110571E:     For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9A = var_B0 'Integer
  loc_1105728:       var_C0 = CVar(CLng(var_9A)) 'Long
  loc_1105730:       var_E0 = CVar(CLng(2)) 'Long
  loc_110575B:       If (CStr(Me.FGrid.TextMatrix)) = var_98) Then
  loc_110577F:         MsgBox("Hardware Id Already Inserted!", &H10, "Smart Card Verification", var_114, var_124)
  loc_110578F:         Exit Sub
  loc_1105790:       End If
  loc_1105793:     Next var_B0 'Integer
  loc_11057A0:     If (Proc_275_9_1190660() = 0) Then
  loc_11057A3:       Exit Sub
  loc_11057A4:     End If
  loc_11057A8:     Set var_128 = Me.FGrid
  loc_11057BD:     var_C0 = CVar((CLng(var_128.Rows) - 1)) 'Long
  loc_11057C5:     var_E0 = CVar(CLng(0)) 'Long
  loc_11057DE:     var_114 = CVar(CStr((CLng(var_128.Rows) - 1))) 'String
  loc_11057E5:     LateIdCallSt
  loc_1105808:     var_C0 = CVar((CLng(var_128.Rows) - 1)) 'Long
  loc_1105810:     var_E0 = CVar(CLng(1)) 'Long
  loc_1105815:     var_138 = vbNullString
  loc_110581E:     LateIdCallSt
  loc_110583B:     var_C0 = CVar((CLng(var_128.Rows) - 1)) 'Long
  loc_1105843:     var_E0 = CVar(CLng(2)) 'Long
  loc_1105852:     LateIdCallSt
  loc_110586F:     var_C0 = CVar((CLng(var_128.Rows) - 1)) 'Long
  loc_1105877:     var_E0 = CVar(CLng(3)) 'Long
  loc_110587C:     var_138 = vbNullString
  loc_1105885:     LateIdCallSt
  loc_11058A2:     var_C0 = CVar((CLng(var_128.Rows) - 1)) 'Long
  loc_11058AA:     var_E0 = CVar(CLng(4)) 'Long
  loc_11058AF:     var_138 = vbNullString
  loc_11058B8:     LateIdCallSt
  loc_11058D7:     var_F4 = CStr((CLng(var_128.Rows) - 1))
  loc_11058E5:     Set var_88 = Me.Txt
  loc_11058EB:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(2), var_14C, CStr(Me.FGrid.TextMatrix)), var_128, var_138, var_E0, "Hardware Id Already Inserted!")
  loc_11058F3:     var_14C.Text = var_128
  loc_1105907:     Set var_128 = Nothing 
  loc_1105924:     var_C0 = CVar((CLng(Me.FGrid.Rows) + 1)) 'Long
  loc_1105933:     Me.FGrid.Rows = "Hardware Id Already Inserted!"
  loc_1105942:   End If
  loc_1105945: Else
  loc_110594B:   If (var_9C = 1) Then
  loc_110594E:     Call Proc_283_22_120B338(var_138, var_E0, "Hardware Id Already Inserted!")
  loc_1105956:   Else
  loc_110595C:     If (var_9C = 2) Then
  loc_110596C:       Me.Global.Unload Me
  loc_1105974:     End If
  loc_1105974:   End If
  loc_1105974: End If
  loc_1105974: Exit Sub
  loc_110597D: Set var_88 = Err()
  loc_1105983: Call 0.Method_arg_1C (var_8C, var_128)
  loc_1105990: Set var_14C = Err()
  loc_1105996: Call 0.Method_arg_2C (var_150, var_98)
  loc_11059C7: MsgBox(CVar(CStr(var_8C) & " : " & var_150), &H10, "Message ", var_114, var_124)
  loc_11059E7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EEB850
  'Data Table: 44FE94
  Dim var_8C As TextBox
  loc_EEB780: On Error Goto loc_EEB84A
  loc_EEB783: Call Proc_283_18_F53320()
  loc_EEB795: Set var_88 = Me.Txt
  loc_EEB79B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_8C)
  loc_EEB7A3: var_8C.Enabled = False
  loc_EEB7BC: Set var_88 = Me.Txt
  loc_EEB7C2: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_8C)
  loc_EEB7CA: var_8C.Enabled = False
  loc_EEB7E3: Set var_88 = Me.Txt
  loc_EEB7E9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_8C)
  loc_EEB7F1: var_8C.Enabled = False
  loc_EEB80A: Set var_88 = Me.Txt
  loc_EEB810: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_8C)
  loc_EEB818: var_8C.Enabled = False
  loc_EEB82F: Set var_88 = Me.Txt
  loc_EEB835: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EEB83D: var_8C.SetFocus
  loc_EEB849: Exit Sub
  loc_EEB84A: ' Referenced from: EEB780
  loc_EEB84A: Proc_6_60_E62BC4(var_8C)
  loc_EEB84F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18A28
  'Data Table: 44FE94
  loc_E18A1D: Me.Global.Unload Me
  loc_E18A25: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E09848
  'Data Table: 44FE94
  Dim Me As Recordset15
  loc_E0983F: Me.Requery -1
  loc_E09844: Exit Sub
End Sub

Private Sub ChkOpenning_UnknownEvent_9 'FBA92C
  'Data Table: 44FE94
  Dim var_8C As TextBox
  loc_FBA778: Call Proc_283_20_E83800()
  loc_FBA78B: Set var_88 = Me.Txt
  loc_FBA791: Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(0), var_8C)
  loc_FBA799: var_8C.Text = vbNullString
  loc_FBA7B3: Set var_88 = Me.Txt
  loc_FBA7B9: Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(0), var_8C)
  loc_FBA7C1: var_8C.Tag = vbNullString
  loc_FBA7DB: Set var_88 = Me.Txt
  loc_FBA7E1: Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(1), var_8C)
  loc_FBA7E9: var_8C.Text = vbNullString
  loc_FBA803: Set var_88 = Me.Txt
  loc_FBA809: Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(1), var_8C)
  loc_FBA811: var_8C.Tag = vbNullString
  loc_FBA821: Set var_88 = Me.ChkOpenning
  loc_FBA827: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_69()
  loc_FBA838: If (CInt() = 1) Then
  loc_FBA849:   Set var_88 = Me.Txt
  loc_FBA84F:   Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(0), var_8C)
  loc_FBA857:   var_8C.Text = "OPEN"
  loc_FBA871:   Set var_88 = Me.Txt
  loc_FBA877:   Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(0), var_8C)
  loc_FBA87F:   var_8C.Tag = "OPENNING"
  loc_FBA898:   Set var_88 = Me.Txt
  loc_FBA89E:   Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(0), var_8C)
  loc_FBA8A6:   var_8C.Enabled = False
  loc_FBA8BF:   Set var_88 = Me.Txt
  loc_FBA8C5:   Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(1), var_8C)
  loc_FBA8CD:   var_8C.Enabled = True
  loc_FBA8DC: Else
  loc_FBA8E9:   Set var_88 = Me.Txt
  loc_FBA8EF:   Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(0), var_8C)
  loc_FBA8F7:   var_8C.Enabled = True
  loc_FBA910:   Set var_88 = Me.Txt
  loc_FBA916:   Call 0.Method_ChkOpenning_UnknownEvent_90 (CInt(1), var_8C)
  loc_FBA91E:   var_8C.Enabled = False
  loc_FBA92A: End If
  loc_FBA92A: Exit Sub
End Sub

Private Sub DGPurchBill_UnknownEvent_9 'FA6500
  'Data Table: 44FE94
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_C8 As Variant
  Dim arg_DFF As Double
  loc_FA638F: Me.DGPurchBill.Visible = False
  loc_FA63AE: If (Me.RecordCount > 0) Then
  loc_FA63ED:   Set var_B4 = Me.Txt
  loc_FA63F3:   Call 0.Method_DGPurchBill_UnknownEvent_90 (CInt(0), var_B8)
  loc_FA63FB:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FA644D:   Set var_B4 = Me.Txt
  loc_FA6453:   Call 0.Method_DGPurchBill_UnknownEvent_90 (CInt(0), var_B8)
  loc_FA645B:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA648B:   var_B0 = Me.Fields.Item("QtyRec")
  loc_FA6493:   var_C8 = CVar(var_B0) 'Address
  loc_FA649A:   Proc_6_39_E7C810(var_DC)
  loc_FA64B1:   Set var_B4 = Me.Txt
  loc_FA64B7:   Call 0.Method_DGPurchBill_UnknownEvent_90 (CInt(1), var_B8)
  loc_FA64BF:   var_B8.Text = CStr(var_DC)
  loc_FA64D7: End If
  loc_FA64E2: Set var_A8 = Me.Txt
  loc_FA64E8: Call 0.Method_DGPurchBill_UnknownEvent_90 (CInt(0), var_B0)
  loc_FA64F0: var_B0.SetFocus
  loc_FA64FC: Exit Sub
  loc_FA64FD: arg_DFF = var_C8
End Sub

Private Sub DGPurchBill_UnknownEvent_1F 'EA3DDC
  'Data Table: 44FE94
  Dim var_A8 As Variant
  loc_EA3D5C: Set var_88 = Me.DGPurchBill
  loc_EA3D86: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3D8E: Set var_BC = Me.DGPurchBill
  loc_EA3DCA: Proc_6_138_106D6F8(Me.DGPurchBill, global_52, CInt(0), Me.FGPoint)
  loc_EA3DD8: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1877C
  'Data Table: 44FE94
  loc_E18771: Me.Global.Unload Me
  loc_E18779: Exit Sub
End Sub

Public Sub Proc_283_18_F53320
  'Data Table: 44FE94
  Dim var_98 As TextBox
  loc_F53216: Set var_8C = Me.Txt
  loc_F5321C: Call 0.Method_Proc_283_18_F53320C (var_8E, var_86)
  loc_F5322C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F53242:   Set var_8C = Me.Txt
  loc_F53248:   Call 0.Method_Proc_283_18_F533200 (CInt(var_86), var_98)
  loc_F53250:   var_98.Text = vbNullString
  loc_F5326C:   Set var_8C = Me.Txt
  loc_F53272:   Call 0.Method_Proc_283_18_F533200 (CInt(var_86), var_98)
  loc_F5327A:   var_98.Tag = vbNullString
  loc_F53289: Next var_92 'Byte
  loc_F5329D: Set var_8C = Me.Txt
  loc_F532A3: Call 0.Method_Proc_283_18_F533200 (CInt(3), var_98)
  loc_F532AB: var_98.Text = MemVar_1F920C8
  loc_F532F4: Set var_8C = Me.Txt
  loc_F532FA: Call 0.Method_Proc_283_18_F533200 (CInt(4), var_98, CStr(Format(CVar(Proc_6_15_EF2C1C()), "dd/MMM/yyyy")))
  loc_F53302: var_98.Text = 1
  loc_F5331E: Exit Sub
End Sub

Public Sub Proc_283_19_F119C4(arg_C) 'F119C4
  'Data Table: 44FE94
  Dim var_98 As TextBox
  loc_F118D6: Set var_8C = Me.Txt
  loc_F118DC: Call 0.Method_Proc_283_19_F119C4C (var_8E, var_86)
  loc_F118EC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F11902:   Set var_8C = Me.Txt
  loc_F11908:   Call 0.Method_Proc_283_19_F119C40 (CInt(var_86), var_98)
  loc_F11910:   var_98.Enabled = arg_C
  loc_F1191F: Next var_92 'Byte
  loc_F11932: Set var_8C = Me.Txt
  loc_F11938: Call 0.Method_Proc_283_19_F119C40 (CInt(1), var_98)
  loc_F11940: var_98.Enabled = False
  loc_F11959: Set var_8C = Me.Txt
  loc_F1195F: Call 0.Method_Proc_283_19_F119C40 (CInt(2), var_98)
  loc_F11967: var_98.Enabled = False
  loc_F11980: Set var_8C = Me.Txt
  loc_F11986: Call 0.Method_Proc_283_19_F119C40 (CInt(3), var_98)
  loc_F1198E: var_98.Enabled = False
  loc_F119A7: Set var_8C = Me.Txt
  loc_F119AD: Call 0.Method_Proc_283_19_F119C40 (CInt(4), var_98)
  loc_F119B5: var_98.Enabled = False
  loc_F119C1: Exit Sub
End Sub

Public Sub Proc_283_20_E83800
  'Data Table: 44FE94
  loc_E837AC: If (CBool(Me.DGPurchBill.Visible) = &HFF) Then
  loc_E837BE:   Me.DGPurchBill.Visible = False
  loc_E837C6: End If
  loc_E837E2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E837F4:   Me.FGPoint.Visible = False
  loc_E837FC: End If
  loc_E837FC: Exit Sub
End Sub

Public Sub Proc_283_21_1065B40
  'Data Table: 44FE94
  Dim var_94 As Variant
  Dim var_C8 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_100 As String
  loc_10658CB: Me.FGrid.Width = CVar(CDbl(4400))
  loc_10658E6: Me.FGrid.Rows = 1
  loc_1065903: var_C8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_106590B: Set var_CC = Me.FGrid
  loc_106593A: Me.FGrid.FixedRows = 1
  loc_1065955: Me.FGrid.Cols = 5
  loc_106595D: var_94 = CVar(CLng(0)) 'Long
  loc_1065962: var_E0 = &H190
  loc_106596E: LateIdCallSt
  loc_1065976: var_94 = 0
  loc_1065982: var_E0 = CVar(CLng(1)) 'Long
  loc_1065987: var_100 = "PurchDocId"
  loc_1065990: LateIdCallSt
  loc_106599B: var_94 = CVar(CLng(1)) 'Long
  loc_10659A6: var_E0 = CVar(CInt(1)) 'Integer
  loc_10659AD: LateIdCallSt
  loc_10659B8: var_94 = CVar(CLng(1)) 'Long
  loc_10659BD: var_E0 = 0
  loc_10659C9: LateIdCallSt
  loc_10659D1: var_94 = 0
  loc_10659DD: var_E0 = CVar(CLng(2)) 'Long
  loc_10659E2: var_100 = "Card Hardware ID"
  loc_10659EB: LateIdCallSt
  loc_10659F6: var_94 = CVar(CLng(2)) 'Long
  loc_1065A01: var_E0 = CVar(CInt(1)) 'Integer
  loc_1065A08: LateIdCallSt
  loc_1065A13: var_94 = CVar(CLng(2)) 'Long
  loc_1065A1E: var_E0 = CVar(CInt(1)) 'Integer
  loc_1065A25: LateIdCallSt
  loc_1065A30: var_94 = CVar(CLng(2)) 'Long
  loc_1065A35: var_E0 = &H9C4
  loc_1065A41: LateIdCallSt
  loc_1065A49: var_94 = 0
  loc_1065A55: var_E0 = CVar(CLng(3)) 'Long
  loc_1065A5A: var_100 = "Member Code"
  loc_1065A63: LateIdCallSt
  loc_1065A6E: var_94 = CVar(CLng(3)) 'Long
  loc_1065A79: var_E0 = CVar(CInt(1)) 'Integer
  loc_1065A80: LateIdCallSt
  loc_1065A8B: var_94 = CVar(CLng(3)) 'Long
  loc_1065A96: var_E0 = CVar(CInt(1)) 'Integer
  loc_1065A9D: LateIdCallSt
  loc_1065AA8: var_94 = CVar(CLng(3)) 'Long
  loc_1065AAD: var_E0 = 0
  loc_1065AB9: LateIdCallSt
  loc_1065AC1: var_94 = 0
  loc_1065ACD: var_E0 = CVar(CLng(4)) 'Long
  loc_1065AD2: var_100 = vbNullString
  loc_1065ADB: LateIdCallSt
  loc_1065AE6: var_94 = CVar(CLng(4)) 'Long
  loc_1065AF1: var_E0 = CVar(CInt(7)) 'Integer
  loc_1065AF8: LateIdCallSt
  loc_1065B03: var_94 = CVar(CLng(4)) 'Long
  loc_1065B0E: var_E0 = CVar(CInt(7)) 'Integer
  loc_1065B15: LateIdCallSt
  loc_1065B20: var_94 = CVar(CLng(4)) 'Long
  loc_1065B25: var_E0 = 0
  loc_1065B31: LateIdCallSt
  loc_1065B3B: Set var_D0 = Nothing 
  loc_1065B3F: Exit Sub
End Sub

Public Sub Proc_283_22_120B338
  'Data Table: 44FE94
  Dim var_8C As TextBox
  Dim var_A4 As Variant
  Dim var_118 As TextBox
  Dim var_124 As Double
  Dim unk_44FEB7 As Connection15
  Dim var_88 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_94 As String
  Dim var_90 As MSHFlexGrid
  Dim var_144 As TextBox
  Dim var_11C As String
  Dim var_114 As Variant
  loc_120AEB4: On Error Goto loc_120B287
  loc_120AEC2: Set var_88 = Me.Txt
  loc_120AEC8: Call 0.Method_Proc_283_22_120B3380 (CInt(0))
  loc_120AEF1: If (Proc_6_27_EA565C(var_8C, "Agst. Purchase Bill") = 0) Then
  loc_120AEF4:   Exit Sub
  loc_120AEF5: End If
  loc_120AF03: Set var_88 = Me.Txt
  loc_120AF09: Call 0.Method_Proc_283_22_120B3380 (CInt(0), var_8C)
  loc_120AF28: If (var_8C.Tag = vbNullString) Then
  loc_120AF4C:   MsgBox("Agst. Purchase Bill is a required field.", &H10, "Validation Error", var_F4, var_114)
  loc_120AF5C:   Exit Sub
  loc_120AF5D: End If
  loc_120AF6B: Set var_88 = Me.Txt
  loc_120AF71: Call 0.Method_Proc_283_22_120B3380 (CInt(2), var_8C)
  loc_120AF79: var_94 = var_8C.Text
  loc_120AF95: If (CDbl(Val(var_94)) = CDbl(0)) Then
  loc_120AFB9:   MsgBox("None Of the Card Inserted Yet.", &H40, "Validation Error", var_F4, var_114)
  loc_120AFC9:   Exit Sub
  loc_120AFCA: End If
  loc_120AFD8: Set var_90 = Me.Txt
  loc_120AFDE: Call 0.Method_Proc_283_22_120B3380 (CInt(2), var_118)
  loc_120AFF3: var_124 = Val(var_118.Text)
  loc_120B004: Set var_88 = Me.Txt
  loc_120B00A: Call 0.Method_Proc_283_22_120B3380 (CInt(1), var_8C, var_94)
  loc_120B037: If (CDbl(Val(var_94)) <> CDbl(var_8C.Text)) Then
  loc_120B05B:   MsgBox("No. Of Purchase Card & Inserted Card should be equal.", &H40, "Validation Error", var_F4, var_114)
  loc_120B06B:   Exit Sub
  loc_120B06C: End If
  loc_120B07A: Set var_88 = Me.cmd
  loc_120B080: Call 0.Method_Proc_283_22_120B3380 (1, var_8C)
  loc_120B088: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(False)
  loc_120B09D: unk_44FEB7.BeginTrans var_12C
  loc_120B0A6: var_128 = CByte(1) 'Byte
  loc_120B0CF: For var_130 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_126 = var_130 'Integer
  loc_120B0D9:   var_A4 = CVar(CLng(var_126)) 'Long
  loc_120B0FB:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_120B10C:   If (var_94 <> vbNullString) Then
  loc_120B11D:     Set var_88 = Me.Txt
  loc_120B123:     Call 0.Method_Proc_283_22_120B3380 (CInt(0), var_8C, var_94, CVar(CLng(2)))
  loc_120B12B:     var_A4 = var_8C.Tag
  loc_120B13C:     var_E4 = CVar(CLng(2)) 'Long
  loc_120B14B:     var_B4 = Me.FGrid.TextMatrix)
  loc_120B165:     Set var_118 = Me.Txt
  loc_120B16B:     Call 0.Method_Proc_283_22_120B3380 (CInt(3), var_144, var_148, var_B4)
  loc_120B173:     var_E4 = var_144.Text
  loc_120B183:     Set var_154 = Me.Txt
  loc_120B189:     Call 0.Method_Proc_283_22_120B3380 (CInt(4), var_158, CVar(CLng(var_126)))
  loc_120B198:     Proc_6_7_F25D88(var_F4, CVar(var_158))
  loc_120B1B1:     var_11C = "Insert Into SmartCardMaster(ContraDocid,HW_Id,U_Name,U_EntDt,U_AE)" & " Values('"
  loc_120B1DF:     var_114 = CVar(var_11C & var_94 & "','" & CStr(var_B4) & "','" & var_148 & "',") 'String
  loc_120B1FC:     unk_44FEB7.Execute CStr(var_114 & var_F4 & ",'A')"), var_1AC, -1
  loc_120B23A:   End If
  loc_120B23D: Next var_130 'Integer
  loc_120B248: unk_44FEB7.CommitTrans
  loc_120B251: var_128 = CByte(0) 'Byte
  loc_120B262: Set var_88 = Me.cmd
  loc_120B268: Call 0.Method_Proc_283_22_120B3380 (1, var_8C)
  loc_120B270: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(True)
  loc_120B27C: Call Proc_283_21_1065B40()
  loc_120B281: Call Proc_283_18_F53320()
  loc_120B286: Exit Sub
  loc_120B287: ' Referenced from: 120AEB4
  loc_120B294: Set var_88 = Me.cmd
  loc_120B29A: Call 0.Method_Proc_283_22_120B3380 (1, var_8C)
  loc_120B2A2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(True)
  loc_120B2B7: If (CInt(var_128) = 1) Then
  loc_120B2C0:   unk_44FEB7.RollbackTrans
  loc_120B2C5: End If
  loc_120B2CD: Set var_88 = Err()
  loc_120B2D3: Call 0.Method_arg_1C (var_12C)
  loc_120B2E0: Set var_8C = Err()
  loc_120B2E6: Call 0.Method_arg_2C (var_11C)
  loc_120B317: MsgBox(CVar(CStr(var_12C) & " : " & var_11C), &H10, "Message ", var_F4, var_114)
  loc_120B337: Exit Sub
End Sub
