VERSION 5.00
Begin VB.Form FaAdjust
  Caption = "Adjustment Entry"
  BackColor = &HE6AC86&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11550
  ClientHeight = 7260
  Begin TextBox TXT_DATE
    BackColor = &HF7F0DF&
    ForeColor = &HC00000&
    Left = 1995
    Top = 570
    Width = 1410
    Height = 300
    TabIndex = 0
    MaxLength = 12
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
  Begin Frame Frame1
    Left = 120
    Top = 8295
    Width = 9405
    Height = 615
    TabIndex = 19
    ClipControls = 0   'False
    Begin Label COMP_LABEL
      Left = 300
      Top = 165
      Width = 5070
      Height = 345
      TabIndex = 20
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 13.5
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin DataCombo TXT_ACCOUNT
    Left = 1995
    Top = 1260
    Width = 4110
    Height = 360
    TabIndex = 2
  End
  Begin Frame FRAMEADJUST
    Caption = "Adjustment"
    BackColor = &HB7A4F0&
    ForeColor = &HC00000&
    Left = -645
    Top = 3240
    Width = 11835
    Height = 5430
    TabIndex = 6
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton BTS_AUTO_ADJ
      Caption = "Auto"
      Left = 11055
      Top = 450
      Width = 585
      Height = 495
      TabIndex = 22
      BeginProperty Font
        Name = "Times New Roman"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DisabledPicture = "FaAdjust.frx":0
      ToolTipText = "Ok"
      Style = 1
    End
    Begin TextBox TXTADJ_AMT
      BackColor = &HF7F0DF&
      Left = 4905
      Top = 0
      Width = 1065
      Height = 285
      TabIndex = 21
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin TextBox TXTNARRATION
      BackColor = &HD5E2E3&
      ForeColor = &H0&
      Left = 90
      Top = 4590
      Width = 9210
      Height = 795
      Visible = 0   'False
      Text = "Text1"
      TabIndex = 7
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton Command2
      Left = 11055
      Top = 945
      Width = 585
      Height = 495
      TabIndex = 10
      Picture = "FaAdjust.frx":102
      ToolTipText = "Full Adjuatments"
      Style = 1
    End
    Begin CommandButton ADJ_OK
      Left = 11055
      Top = 1440
      Width = 585
      Height = 495
      TabIndex = 9
      Picture = "FaAdjust.frx":544
      DisabledPicture = "FaAdjust.frx":686
      ToolTipText = "Ok"
      Style = 1
    End
    Begin CommandButton ADJ_CANCLE
      Left = 11055
      Top = 1935
      Width = 585
      Height = 495
      TabIndex = 8
      Picture = "FaAdjust.frx":788
      DisabledPicture = "FaAdjust.frx":8CA
      ToolTipText = "Cancel Changes"
      Style = 1
    End
    Begin MSFlexGrid FgridAdjust
      Left = 90
      Top = 465
      Width = 10920
      Height = 4125
      TabIndex = 11
    End
    Begin Label ADJ_LAB7
      Caption = "KK"
      BackColor = &HFFFFFF&
      ForeColor = &HFFFF&
      Left = 5625
      Top = 195
      Width = 1050
      Height = 240
      TabIndex = 17
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label ADJ_LAB6
      Caption = "Pend."
      BackColor = &H5EB0AC&
      ForeColor = &H0&
      Left = 4770
      Top = 195
      Width = 870
      Height = 240
      TabIndex = 16
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label ADJ_LAB3
      Caption = "Tr.Amt."
      BackColor = &H5EB0AC&
      ForeColor = &H0&
      Left = 2280
      Top = 195
      Width = 675
      Height = 240
      TabIndex = 15
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label ADJ_LAB4
      Caption = "MMMM"
      BackColor = &HFFFFFF&
      ForeColor = &HFFFF&
      Left = 2955
      Top = 195
      Width = 1290
      Height = 240
      TabIndex = 14
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label ADJ_LAB5
      BackColor = &HFFFFFF&
      ForeColor = &HFFFF&
      Left = 4245
      Top = 195
      Width = 510
      Height = 240
      TabIndex = 13
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label ADJ_LAB8
      ForeColor = &HFFFF&
      Left = 6720
      Top = 195
      Width = 480
      Height = 240
      TabIndex = 12
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame FRAMELEDGER
    Caption = "Credit List"
    BackColor = &HA9A765&
    ForeColor = &HC00000&
    Left = 0
    Top = 1650
    Width = 11190
    Height = 5080
    TabIndex = 5
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox TxtNARATION1
      BackColor = &HE0E0E0&
      ForeColor = &H0&
      Left = 30
      Top = 4380
      Width = 10335
      Height = 660
      Text = "Text1"
      TabIndex = 18
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton BTSADJUST
      Caption = "A&djust"
      Left = 10440
      Top = 1155
      Width = 705
      Height = 600
      TabIndex = 4
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin MSFlexGrid FGridLedger
      Left = 45
      Top = 255
      Width = 10335
      Height = 4125
      TabIndex = 3
    End
  End
  Begin DataCombo TXT_Group
    Left = 1995
    Top = 885
    Width = 4110
    Height = 360
    TabIndex = 1
  End
  Begin BtnEnh BtnExit
    Left = 9735
    Top = 840
    Width = 1365
    Height = 570
    TabIndex = 27
  End
  Begin BtnEnh BtnFill
    Left = 8370
    Top = 825
    Width = 1365
    Height = 570
    TabIndex = 28
  End
  Begin BtnEnh BtnAdd
    Left = 6930
    Top = 825
    Width = 1365
    Height = 570
    TabIndex = 29
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 26
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
  Begin Label Label
    Caption = "For A/c Group"
    Index = 2
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 480
    Top = 930
    Width = 1320
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "Upto Date"
    Index = 0
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 870
    Top = 600
    Width = 930
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
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "For Account"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 690
    Top = 1305
    Width = 1140
    Height = 240
    TabIndex = 23
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
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "FaAdjust"

Private global_68 As Double
Private global_60 As Double
Private global_56 As Integer

Private Sub BTSADJUST_Click() '14882A0
  'Data Table: 4D7B1C
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_134 As String
  Dim var_15C As String
  Dim unk_4D7B20 As Connection15
  Dim Me As Recordset15
  Dim var_1CC As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_1B8 As Variant
  Dim var_1BC As Fields15
  Dim var_1D0 As Field20
  Dim var_1B4 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_350 As Variant
  Dim var_3D8 As Variant
  Dim var_420 As Variant
  Dim var_430 As Variant
  Dim var_440 As Variant
  Dim var_4A0 As Variant
  Dim var_5D0 As Variant
  Dim var_5E0 As Variant
  Dim var_5FC As Double
  loc_1487774: On Error Goto loc_1488278
  loc_148778A: var_EC = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_14877AD: var_134 = CStr(Me.FGridLedger.TextMatrix))
  loc_14877CB: If (CDbl(Val(var_134)) <= CDbl(0)) Then
  loc_14877D4:   Call 0.Method_arg_50 (var_134, &HB)
  loc_14877F5:   MsgBox("* Amount Already Adjusted *", &H40, CVar(var_134), var_144, var_154)
  loc_1487805:   Exit Sub
  loc_1487806: End If
  loc_1487812: Me.FRAMELEDGER.Visible = False
  loc_1487826: Me.FRAMEADJUST.Visible = True
  loc_148783D: Me.FgridAdjust.Redraw = False
  loc_148784B: global_68 = CDbl(0)
  loc_1487854: global_60 = CDbl(0)
  loc_148785C: var_C4 = 0 'Variant
  loc_1487865: var_B4 = 0 'Variant
  loc_148787C: var_EC = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_1487881: var_10C = &HB
  loc_148788E: Set var_120 = Me.FGridLedger
  loc_1487894: var_130 = var_120.TextMatrix)
  loc_14878AC: Me.ADJ_LAB4.Caption = CStr(var_130)
  loc_14878D1: Me.ADJ_LAB5.Caption = "Cr."
  loc_14878EC: Me.FgridAdjust.Rows = 1
  loc_148791A: var_15C = "Select DocId,V_SNo,V_Type,V_Prefix,V_No,V_Date,AmtDr As Amount,Narration,SG.Name As PartyName FROM Ledger L Left Join SubGroup SG on SG.SubCode=L.SubCode Where L.SubCode='" & CStr(Me.TXT_ACCOUNT.BoundText)
  loc_1487938: unk_4D7B20.Execute var_15C & "' AND L.LOGSITE_CODE='" & MemVar_1F92078 & "' ORDER BY V_Date,V_Type,V_No", var_130, -1
  loc_1487949: Set global_52 = var_120
  loc_148796A: ' Referenced from: 1487F1D
  loc_148797C: If Not(Me.EOF) Then
  loc_14879EC:   var_1CC = 0
  loc_1487A09:   var_134 = CStr(Me.TXT_ACCOUNT.BoundText)
  loc_1487A1A:   var_154 = CVar("SELECT IsNull(Sum(CR),0) AS TSum From LEDGERAdj Where SubCode='" & var_134 & "' And DocId2='") & Me.Fields.Item("DocID").Value 
  loc_1487A38:   unk_4D7B20.Execute CStr(var_154 & "' And V_SNo2=" & Me.Fields.Item("V_SNo").Value), var_1B4, -1
  loc_1487A40:   var_1B8 = var_1B8.Fields
  loc_1487A48:   var_1CC = var_1BC.Item(var_1BC)
  loc_1487A50:   var_1D0 = var_1D0.Value
  loc_1487A5C:   global_68 = CSng(var_1E0)
  loc_1487AC7:   var_130 = (Me.Fields.Item("Amount").Value - CVar(global_68))
  loc_1487ADD:   If (Me.Fields.Item("DocID").Value > 0) Then
  loc_1487B86:     var_144 = Me.Fields.Item("V_Type").Value
  loc_1487B8E:     var_154 = vbNullString & Chr(9) & var_144 
  loc_1487C5D:     var_250 = var_154 & Chr(9) & Me.Fields.Item("V_NO").Value & Chr(9) & Me.Fields.Item("v_Prefix").Value & Chr(9) & Me.Fields.Item("V_SNo").Value 
  loc_1487C71:     var_270 = var_250 & Chr(9) 
  loc_1487CF5:     var_350 = 1 & Format(CVar(Me.Fields.Item("V_DATE")), "Short Date") & Chr(9) & Me.Fields.Item("PartyName").Value & Chr(9) 
  loc_1487D34:     var_3D8 = 1 & Format(CVar(Me.Fields.Item("Amount")), "0.00") & Chr(9) 
  loc_1487D5A:     var_420 = (Me.Fields.Item("Amount").Value - CVar(global_68))
  loc_1487D61:     var_430 = (var_420 + var_B4)
  loc_1487D68:     var_440 = (var_430 + var_C4)
  loc_1487D8B:     var_4A0 = 1 & Format(var_440, "0.00") & Chr(9) 
  loc_1487E59:     var_5D0 = 1 & Format(var_B4, "0.00") & Chr(9) & Me.Fields.Item("Narration").Value & Chr(9) & vbNullString & Chr(9) & Me.Fields.Item("DocID").Value 
  loc_1487E5E:     var_5E0 = CVar(CStr(var_5D0)) 'String
  loc_1487E66:     Set var_5F4 = Me.FgridAdjust
  loc_1487F12:   End If
  loc_1487F18:   Me.MoveNext
  loc_1487F1D:   GoTo loc_148796A
  loc_1487F20: End If
  loc_1487F3F: If (CLng(Me.FgridAdjust.Rows) <= 1) Then
  loc_1487F50:   Me.FgridAdjust.Redraw = True
  loc_1487F5E:   Call 0.Method_arg_50 (var_134, FgridAdjust.DispID_10000, var_5E0, 1, var_4A0, 1, var_3D8)
  loc_1487F7F:   MsgBox("   Entries Not Found   ", &H40, CVar(var_134), var_144, var_154)
  loc_1487F9B:   Me.BTSADJUST.Enabled = False
  loc_1487FAB:   Set var_CC = Me.BtnAdd
  loc_1487FB1:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_1487FC1:   Set var_CC = Me.BtnExit
  loc_1487FC7:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_1487FD7:   Set var_CC = Me.BtnFill
  loc_1487FDD:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(True)
  loc_1487FF1:   Me.TXT_DATE.Enabled = False
  loc_1488008:   Me.TXT_ACCOUNT.Enabled = False
  loc_148801C:   Me.FRAMELEDGER.Visible = True
  loc_1488034:   Me.FRAMELEDGER.ZOrder 0
  loc_1488048:   Me.BTSADJUST.Enabled = True
  loc_148805C:   Me.TXTNARRATION.Visible = False
  loc_1488070:   Me.TXTADJ_AMT.Visible = False
  loc_1488084:   Me.FRAMEADJUST.Visible = False
  loc_148808C:   Exit Sub
  loc_148808D: End If
  loc_1488093: global_60 = CDbl(0)
  loc_14880A2: Me.FRAMEADJUST.Visible = True
  loc_14880BA: Me.FRAMEADJUST.ZOrder 0
  loc_14880CE: Me.TXTNARRATION.Visible = True
  loc_14880E2: Me.BTSADJUST.Enabled = False
  loc_14880F6: Me.ADJ_CANCLE.Enabled = True
  loc_148810A: Me.ADJ_OK.Enabled = True
  loc_148811E: Me.BTS_AUTO_ADJ.Enabled = True
  loc_1488139: var_EC = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_148813E: var_10C = &HB
  loc_1488164: var_5FC = Val(CStr(Me.FGridLedger.TextMatrix)))
  loc_1488186: var_144 = CVar((var_5FC - global_60)) 'Double
  loc_14881A3: Me.ADJ_LAB7.Caption = CStr(Format(var_144, "0.00"))
  loc_14881D2: Me.ADJ_LAB8.Caption = "Dr"
  loc_14881ED: var_EC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_14881F2: var_10C = &HA
  loc_1488210: var_134 = CStr(Me.FgridAdjust.TextMatrix))
  loc_148821D: Me.TXTNARRATION.Text = var_134
  loc_1488243: Me.FgridAdjust.Redraw = True
  loc_148824B: var_EC = False
  loc_1488254: Set var_CC = Me.BtnExit
  loc_148825A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(var_EC)
  loc_1488266: Set var_CC = Me.FgridAdjust
  loc_1488277: Exit Sub
  loc_1488278: ' Referenced from: 1487774
  loc_148827E: Call 0.Method_arg_50 (var_134, FgridAdjust.DispID_8001, var_10C, var_EC, 1, 1, var_5FC, var_10C)
  loc_1488293: Proc_183_57_104AA84(var_134, "BTSADJUST_Click", var_EC, global_60, 1)
  loc_148829F: Exit Sub
End Sub

Private Sub BtnAdd_UnknownEvent_9 'FE3AE4
  'Data Table: 4D7B1C
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_DC As String
  loc_FE3914: On Error Goto loc_FE3AB9
  loc_FE392A: Me.FgridAdjust.Rows = 1
  loc_FE3932: var_94 = vbNullString
  loc_FE393C: Set var_A8 = Me.FgridAdjust
  loc_FE3960: Me.FGridLedger.Rows = 1
  loc_FE3968: var_94 = vbNullString
  loc_FE3972: Set var_A8 = Me.FGridLedger
  loc_FE398F: Me.TXT_DATE.Enabled = True
  loc_FE39D0: Me.TXT_DATE.Text = CStr(Format(Now, "Short Date"))
  loc_FE39F2: Me.TXT_ACCOUNT.Enabled = True
  loc_FE39FA: var_94 = True
  loc_FE3A08: Me.TXT_Group.Enabled = var_94
  loc_FE3A1A: Me.TXT_DATE.SetFocus
  loc_FE3A56: Proc_183_43_EF7D54("SELECT GroupName,GroupCode FROM ACGROUP WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') ORDER BY GroupName", Me.TXT_Group, "GroupName", "GroupCode", 1)
  loc_FE3A96: var_DC = "SELECT NAME,SUBCODE FROM SUBGROUP WHERE SUBCODE IN (SELECT SUBGROUP.SubCode FROM (Ledger LEFT JOIN LedgerAdj ON (Ledger.DocId=LedgerAdj.DocId1) AND (Ledger.V_SNo=LedgerAdj.V_SNo1)) LEFT JOIN SUBGROUP ON Ledger.SubCode=SUBGROUP.SubCode Where (((Ledger.AmtCr) > 0)) AND (LOGSITE_CODE='" & MemVar_1F92078
  loc_FE3AA1: Proc_183_43_EF7D54(var_DC & "' OR LOGSITE_CODE='HO') GROUP BY SUBGROUP.SubCode, SUBGROUP.Name, Ledger.DocId, Ledger.V_SNo Having MAX(Ledger.AmtCr) > IsNull(Sum(LEDGERADJ.cr), 0)) ORDER BY NAME", Me.TXT_ACCOUNT, "NAME", "SUBCODE", 1)
  loc_FE3AB8: Exit Sub
  loc_FE3AB9: ' Referenced from: FE3914
  loc_FE3ABF: Call 0.Method_arg_50 (var_DC, FGridLedger.DispID_10000, var_94)
  loc_FE3AD4: Proc_183_57_104AA84(var_DC, "BtnAdd_Click")
  loc_FE3AE0: Exit Sub
End Sub

Private Sub BTNFILL_UnknownEvent_9 '13A9D84
  'Data Table: 4D7B1C
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_CC As String
  Dim var_D0 As String
  Dim var_100 As Variant
  Dim var_E0 As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_154 As String
  Dim unk_4D7B20 As Connection15
  Dim var_94 As Recordset15
  Dim var_178 As Variant
  Dim var_1F0 As Variant
  Dim var_F0 As Variant
  Dim var_174 As Variant
  Dim var_1DC As Variant
  Dim var_1E0 As Fields15
  Dim var_1F4 As Field20
  Dim var_90 As Double
  Dim var_204 As Variant
  Dim var_244 As Variant
  Dim var_2F4 As Variant
  Dim var_314 As Variant
  Dim var_42C As Variant
  Dim var_44C As Variant
  Dim var_4BC As Variant
  Dim var_504 As Variant
  Dim var_5BC As Variant
  loc_13A957C: On Error Goto loc_13A9D5C
  loc_13A9592: Me.FGridLedger.Rows = 1
  loc_13A95BD: If (CStr(Me.TXT_ACCOUNT.Text) <> vbNullString) Then
  loc_13A95E6:   var_D0 = "Select L.DocId,V_SNo,L.V_Type,L.V_Prefix,L.V_No,L.V_Date,AmtCr As Credit,M.NARRATION+' '+L.Narration AS NARR,ContraSub AS Party1,SG.Name as PartyName From (Ledger L Left Join SubGroup SG on SG.SubCode=L.CONTRASUB) LEFT JOIN LEDGERM M ON M.DOCID=L.DOCID Where L.SubCode='" & CStr(Me.TXT_ACCOUNT.BoundText)
  loc_13A95FB:   Proc_183_7_EB0C44(var_F0, CVar(Me.TXT_DATE), CVar(var_D0 & "' AND L.V_Date<="))
  loc_13A9623:   var_154 = CStr(var_174 & var_F0 & " AND AMTCR>0 AND L.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' Order By L.V_Date,L.V_Type,L.V_No")
  loc_13A962D:   unk_4D7B20.Execute var_154, -1, var_178
  loc_13A9638:   Set var_94 = var_178
  loc_13A9660:   ' Referenced from: 13A9C08
  loc_13A966F:   If Not(var_94.EOF) Then
  loc_13A96D9:     var_1F0 = 0
  loc_13A9707:     var_110 = "Select IsNull(Sum(CR),0) From LEDGERAdj Where DocId1='" & var_94.Fields.Item("DocID").Value & "' And V_SNo1=" & var_94.Fields.Item("V_SNo").Value 
  loc_13A9732:     unk_4D7B20.Execute CStr(var_110 & " And SubCode='" & CVar(CStr(Me.TXT_ACCOUNT.BoundText)) & "'"), var_1D8, -1
  loc_13A973A:     var_1DC = var_1DC.Fields
  loc_13A9742:     var_1F0 = var_1E0.Item(var_1E0)
  loc_13A974A:     var_1F4 = var_1F4.Value
  loc_13A9753:     var_90 = CSng(var_204)
  loc_13A97C5:     If (CVar(var_90) < var_94.Fields.Item("Credit").Value) Then
  loc_13A983C:       var_E0 = vbNullString & Chr(9) 
  loc_13A984F:       var_100 = "Short Date"
  loc_13A9858:       var_F0 = CVar(var_94.Fields.Item("V_DATE")) 'Address
  loc_13A98FF:       var_244 = 1 & Format(var_F0, var_100) & Chr(9) & var_94.Fields.Item("V_Type").Value & Chr(9) & var_94.Fields.Item("V_NO").Value & Chr(9) 
  loc_13A99B1:       var_2F4 = var_244 & var_94.Fields.Item("v_Prefix").Value & Chr(9) & var_94.Fields.Item("V_SNo").Value & Chr(9) & var_94.Fields.Item("PartyName").Value 
  loc_13A99C5:       var_314 = var_2F4 & Chr(9) 
  loc_13A9A74:       var_42C = 1 & Format(CVar(var_94.Fields.Item("Credit")), "0.00") & Chr(9) & var_94.Fields.Item("NARR").Value & Chr(9) & var_94.Fields.Item("Party1").Value 
  loc_13A9A88:       var_44C = var_42C & Chr(9) 
  loc_13A9AC8:       var_4BC = 1 & Format(var_90, "0.00") & Chr(9) 
  loc_13A9AEB:       var_504 = (var_94.Fields.Item("Credit").Value - CVar(var_90))
  loc_13A9B48:       var_5BC = CVar(CStr(1 & Format(var_504, "0.00") & Chr(9) & var_94.Fields.Item("DocID").Value)) 'String
  loc_13A9B50:       Set var_5D0 = Me.FGridLedger
  loc_13A9C00:     End If
  loc_13A9C03:     var_94.MoveNext
  loc_13A9C08:     GoTo loc_13A9660
  loc_13A9C0B:   End If
  loc_13A9C2A:   If (CLng(Me.FGridLedger.Rows) = 1) Then
  loc_13A9C2D:     var_A4 = vbNullString
  loc_13A9C37:     Set var_B8 = Me.FGridLedger
  loc_13A9C4B:   Else
  loc_13A9C5E:     var_A4 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_13A9C63:     var_140 = 8
  loc_13A9C8E:     Me.TxtNARATION1.Text = CStr(Me.FGridLedger.TextMatrix))
  loc_13A9CA6:   End If
  loc_13A9CCD:   var_CC = CStr(Me.FGridLedger.TextMatrix))
  loc_13A9CDE:   If (var_CC = vbNullString) Then
  loc_13A9CE7:     Call 0.Method_arg_50 (var_CC, 1, 1, 1, 1, FGridLedger.DispID_10000, 1, FGridLedger.DispID_10000)
  loc_13A9D08:     MsgBox("* No Entries to Adjust *", &H40, CVar(var_CC), var_F0, var_100)
  loc_13A9D18:     Exit Sub
  loc_13A9D19:   End If
  loc_13A9D25:   Me.BTSADJUST.Enabled = True
  loc_13A9D36:   Set var_B8 = Me.BtnAdd
  loc_13A9D3C:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_13A9D4D:   Set var_B8 = Me.BtnFill
  loc_13A9D53:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_13A9D5B: End If
  loc_13A9D5B: Exit Sub
  loc_13A9D5C: ' Referenced from: 13A957C
  loc_13A9D62: Call 0.Method_arg_50 (var_CC, var_5BC, 1, var_4BC)
  loc_13A9D77: Proc_183_57_104AA84(var_CC, "BTNFILL_Click", 1)
  loc_13A9D83: Exit Sub
End Sub

Private Sub TXT_Group_UnknownEvent_8 'F1D464
  'Data Table: 4D7B1C
  Dim var_A0 As String
  Dim var_A4 As String
  loc_F1D37C: On Error Goto loc_F1D439
  loc_F1D382: var_88 = vbNullString
  loc_F1D3A8: If (CStr(Me.TXT_Group.BoundText) <> vbNullString) Then
  loc_F1D3E5:   var_B4 = "SUBCODE"
  loc_F1D3EE:   var_B0 = "NAME"
  loc_F1D404:   var_A0 = "SELECT NAME,SUBCODE FROM SUBGROUP WHERE SUBCODE IN (SELECT SUBGROUP.SubCode FROM (Ledger LEFT JOIN LedgerAdj ON (Ledger.DocId=LedgerAdj.DocId1) AND (Ledger.V_SNo=LedgerAdj.V_SNo1)) LEFT JOIN SUBGROUP ON Ledger.SubCode=SUBGROUP.SubCode Where (((Ledger.AmtCr) > 0)) AND (LOGSITE_CODE='" & MemVar_1F92078
  loc_F1D40B:   var_A4 = var_A0 & "' OR LOGSITE_CODE='HO') GROUP BY SUBGROUP.SubCode, SUBGROUP.Name, Ledger.DocId, Ledger.V_SNo Having MAX(Ledger.AmtCr) > IsNull(Sum(LEDGERADJ.cr), 0)) "
  loc_F1D41D:   Proc_183_43_EF7D54(var_A4 & " And GROUPCODE='" & CStr(Me.TXT_Group.BoundText) & "'" & " ORDER BY NAME", Me.TXT_ACCOUNT)
  loc_F1D438: End If
  loc_F1D438: Exit Sub
  loc_F1D439: ' Referenced from: F1D37C
  loc_F1D43F: Call 0.Method_arg_50 (var_A0, var_B0)
  loc_F1D454: Proc_183_57_104AA84(var_A0, "TXT_Group_Validate")
  loc_F1D460: Exit Sub
End Sub

Private Sub TXT_Group_UnknownEvent_11 'E1C3E0
  'Data Table: 4D7B1C
  loc_E1C3D4: Me.TXT_ACCOUNT.BoundText = vbNullString
  loc_E1C3DC: Exit Sub
  loc_E1C3DD: If Not  Then Exit Sub
  loc_E1C3DD: End If
End Sub

Private Sub TXT_ACCOUNT_UnknownEvent_9 'E18E50
  'Data Table: 4D7B1C
  loc_E18E40: Set var_A8 = Me.BtnFill
  loc_E18E46: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(True)
  loc_E18E4E: Exit Sub
End Sub

Private Sub ADJ_OK_Click() '131B3E0
  'Data Table: 4D7B1C
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim unk_4D7B20 As Connection15
  Dim var_D4 As Long
  Dim var_E8 As String
  Dim var_124 As Variant
  Dim var_144 As Long
  Dim var_168 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  Dim var_1BC As MSFlexGrid
  Dim var_1CC As Variant
  Dim var_1E8 As Variant
  Dim var_21C As MSFlexGrid
  Dim var_3E0 As Double
  Dim var_3E8 As Double
  Dim var_2B4 As Variant
  Dim var_100 As String
  Dim var_23C As String
  Dim var_348 As Variant
  Dim var_2E8 As Variant
  loc_131AD08: On Error Goto loc_131B3AA
  loc_131AD0F: var_88 = CByte(0) 'Byte
  loc_131AD1F: Me.BTSADJUST.Enabled = False
  loc_131AD2F: Set var_8C = Me.BtnAdd
  loc_131AD35: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_131AD45: Set var_8C = Me.BtnExit
  loc_131AD4B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_131AD5B: Set var_8C = Me.BtnFill
  loc_131AD61: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(True)
  loc_131AD75: Me.TXT_DATE.Enabled = False
  loc_131AD8B: Me.TXT_Group.Enabled = True
  loc_131ADA2: Me.TXT_ACCOUNT.Enabled = False
  loc_131ADB6: Me.FRAMELEDGER.Visible = True
  loc_131ADCE: Me.FRAMELEDGER.ZOrder 0
  loc_131ADE2: Me.BTSADJUST.Enabled = True
  loc_131ADF6: Me.TXTNARRATION.Visible = False
  loc_131AE0A: Me.TXTADJ_AMT.Visible = False
  loc_131AE1E: Me.FRAMEADJUST.Visible = False
  loc_131AE2F: unk_4D7B20.BeginTrans var_B0
  loc_131AE38: var_88 = CByte(1) 'Byte
  loc_131AE61: For var_C4 = 1 To CInt((CLng(Me.FgridAdjust.Rows) - 1)): var_86 = var_C4 'Integer
  loc_131AE6B:   var_9C = CVar(CLng(var_86)) 'Long
  loc_131AE70:   var_D4 = 9
  loc_131AEA4:   If (CDbl(Val(CStr(Me.FgridAdjust.TextMatrix)))) > CDbl(0)) Then
  loc_131AEBA:     var_9C = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_131AEBF:     var_D4 = &HC
  loc_131AEF1:     var_124 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_131AEF6:     var_144 = 5
  loc_131AF23:     var_188 = CVar(CLng(var_86)) 'Long
  loc_131AF28:     var_1A8 = &HC
  loc_131AF4B:     var_1E8 = CVar(CLng(var_86)) 'Long
  loc_131AF76:     var_3E0 = Val(CStr(Me.FgridAdjust.TextMatrix)))
  loc_131AFA8:     var_3E8 = Val(CStr(Me.FgridAdjust.TextMatrix)))
  loc_131AFB5:     var_2B4 = Me.TXT_ACCOUNT.BoundText
  loc_131AFC9:     Proc_183_7_EB0C44(var_2E8, MemVar_1F920EC, var_2B4, var_3E8, 9, CVar(CLng(var_86)), var_3E0, 4)
  loc_131AFE6:     var_100 = "Insert Into LEDGERAdj (DocId1,V_SNo1,DocId2,V_SNo2,CR,SubCode,U_Name,U_EntDt,U_AE,site_code,logsite_code) Values ('" & CStr(Me.FGridLedger.TextMatrix))
  loc_131B01E:     var_23C = var_100 & "'," & CStr(Val(CStr(Me.FGridLedger.TextMatrix)))) & ",'" & CStr(Me.FgridAdjust.TextMatrix)) & "'," & CStr(var_3E0)
  loc_131B071:     var_348 = CVar(var_23C & "," & CStr(var_3E8) & ",'" & CStr(var_2B4) & "','" & MemVar_1F920C8 & "',") & var_2E8 & ",'A','" & CVar(MemVar_1F92070) 
  loc_131B09B:     unk_4D7B20.Execute CStr(var_348 & "','" & CVar(MemVar_1F92078) & "')"), var_3CC, -1
  loc_131B11E:     var_9C = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_131B123:     var_D4 = &HA
  loc_131B150:     var_124 = CVar(CLng(var_86)) 'Long
  loc_131B155:     var_144 = 9
  loc_131B191:     var_1A8 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_131B196:     var_1E8 = &HA
  loc_131B1BB:     var_168 = CVar((Val(CStr(Me.FGridLedger.TextMatrix))) + Val(CStr(Me.FgridAdjust.TextMatrix))))) 'Double
  loc_131B1CB:     var_2B4 = CVar(CStr(Format(Me.FGridLedger.TextMatrix), "0.00"))) 'String
  loc_131B1D3:     Set var_1BC = Me.FGridLedger
  loc_131B1D9:     LateIdCallSt
  loc_131B21B:     var_9C = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_131B220:     var_D4 = 7
  loc_131B25C:     var_124 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_131B261:     var_144 = &HA
  loc_131B29D:     var_1A8 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_131B2A2:     var_1E8 = &HB
  loc_131B2C7:     var_1CC = CVar((Val(CStr(Me.FGridLedger.TextMatrix))) - Val(CStr(Me.FGridLedger.TextMatrix))))) 'Double
  loc_131B2D7:     var_2E8 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_131B2DF:     Set var_21C = Me.FGridLedger
  loc_131B2E5:     LateIdCallSt
  loc_131B318:   End If
  loc_131B31B: Next var_C4 'Integer
  loc_131B333: Me.FgridAdjust.Row = 0
  loc_131B34E: var_9C = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_131B353: var_D4 = &HA
  loc_131B371: var_E8 = CStr(Me.FgridAdjust.TextMatrix))
  loc_131B37E: Me.TXTNARRATION.Text = var_E8
  loc_131B39C: unk_4D7B20.CommitTrans
  loc_131B3A5: var_88 = CByte(0) 'Byte
  loc_131B3A9: Exit Sub
  loc_131B3AA: ' Referenced from: 131AD08
  loc_131B3B0: unk_4D7B20.RollbackTrans
  loc_131B3BB: Call 0.Method_arg_50 (var_E8, var_D4)
  loc_131B3D0: Proc_183_57_104AA84(var_E8, "ADJ_OK_Click")
  loc_131B3DC: Exit Sub
End Sub

Private Sub ADJ_CANCLE_Click() 'F2B54C
  'Data Table: 4D7B1C
  Dim var_88 As Variant
  loc_F2B440: Me.BTSADJUST.Enabled = False
  loc_F2B450: Set var_88 = Me.BtnAdd
  loc_F2B456: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_F2B466: Set var_88 = Me.BtnExit
  loc_F2B46C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_F2B47C: Set var_88 = Me.BtnFill
  loc_F2B482: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(True)
  loc_F2B496: Me.TXT_DATE.Enabled = False
  loc_F2B4AD: Me.TXT_Group.Enabled = False
  loc_F2B4C4: Me.TXT_ACCOUNT.Enabled = False
  loc_F2B4D8: Me.FRAMELEDGER.Visible = True
  loc_F2B4F0: Me.FRAMELEDGER.ZOrder 0
  loc_F2B504: Me.BTSADJUST.Enabled = True
  loc_F2B518: Me.TXTNARRATION.Visible = False
  loc_F2B52C: Me.TXTADJ_AMT.Visible = False
  loc_F2B540: Me.FRAMEADJUST.Visible = False
  loc_F2B548: Exit Sub
End Sub

Private Sub Form_Load() '1329100
  'Data Table: 4D7B1C
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_D0 As Variant
  loc_1328954: On Error Goto loc_13290D8
  loc_1328963: Me.BTSADJUST.Enabled = False
  loc_1328977: Me.TXT_DATE.Enabled = False
  loc_132898E: Me.TXT_ACCOUNT.Enabled = False
  loc_13289A5: Me.TXT_Group.Enabled = False
  loc_13289B2: global_56 = 1
  loc_13289BC: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_13289D4: Me.FgridAdjust.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_13289EA: Me.Frame1.BackColor = CLng(MemVar_1F921B0)
  loc_13289FE: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_1328A0F: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_1328A20: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_1328A31: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_1328A42: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_1328A53: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_1328A64: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_1328A75: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_1328A86: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_1328A97: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_1328AB1: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_1328ABF: Set var_88 = MemVar_1F92044
  loc_1328ACE: Call 0.Method_Form_Load8 (var_88)
  loc_1328AE4: Me.Recordset20.Clone
  loc_1328AFE: Call 0.Method_arg_50 (var_88, -1)
  loc_1328B12: Set var_88 = Me.FRAMELEDGER
  loc_1328B18: Me.FRAMELEDGER.Left = CDbl(0)
  loc_1328B2F: Me.FRAMELEDGER.Top = CDbl(1650)
  loc_1328B46: Me.FRAMELEDGER.Width = CDbl(11190)
  loc_1328B5D: Me.FRAMELEDGER.Height = CDbl(5080)
  loc_1328B84: Me.FRAMEADJUST.Left = Me.FRAMELEDGER.Left
  loc_1328BAF: Me.FRAMEADJUST.Top = Me.FRAMELEDGER.Top
  loc_1328BDA: Me.FRAMEADJUST.Width = Me.FRAMELEDGER.Width
  loc_1328C05: Me.FRAMEADJUST.Height = Me.FRAMELEDGER.Height
  loc_1328C33: Me.FgridAdjust.Left = CVar(CDbl(Me.FGridLedger.Left))
  loc_1328C5A: var_98 = CVar((CDbl(Me.FGridLedger.Top) + CDbl(200))) 'Single
  loc_1328C69: Me.FgridAdjust.Top = CVar(CDbl(Me.FGridLedger.Left))
  loc_1328C9A: Me.FgridAdjust.Width = CVar(CDbl(Me.FGridLedger.Width))
  loc_1328CC1: var_98 = CVar((CDbl(Me.FGridLedger.Height) - CDbl(200))) 'Single
  loc_1328CD0: Me.FgridAdjust.Height = CVar(CDbl(Me.FGridLedger.Width))
  loc_1328CFE: Me.TXTNARRATION.Top = Me.TxtNARATION1.Top
  loc_1328D29: Me.TXTNARRATION.Left = Me.TxtNARATION1.Left
  loc_1328D54: Me.TXTNARRATION.Width = Me.TxtNARATION1.Width
  loc_1328D7F: Me.TXTNARRATION.Height = Me.TxtNARATION1.Height
  loc_1328D9A: Me.BTS_AUTO_ADJ.Left = CDbl(10450)
  loc_1328DB1: Me.Command2.Left = CDbl(10450)
  loc_1328DC8: Me.ADJ_OK.Left = CDbl(10450)
  loc_1328DDF: Me.ADJ_CANCLE.Left = CDbl(10450)
  loc_1328DE7: var_98 = 1
  loc_1328DF6: var_D0 = CVar(CInt(1)) 'Integer
  loc_1328DFE: Set var_88 = Me.FGridLedger
  loc_1328E04: LateIdCallSt
  loc_1328E0F: var_98 = 3
  loc_1328E1E: var_D0 = CVar(CInt(1)) 'Integer
  loc_1328E26: Set var_88 = Me.FGridLedger
  loc_1328E2C: LateIdCallSt
  loc_1328E37: var_98 = 7
  loc_1328E46: var_D0 = CVar(CInt(7)) 'Integer
  loc_1328E4E: Set var_88 = Me.FGridLedger
  loc_1328E54: LateIdCallSt
  loc_1328E5F: var_98 = &HA
  loc_1328E6E: var_D0 = CVar(CInt(7)) 'Integer
  loc_1328E76: Set var_88 = Me.FGridLedger
  loc_1328E7C: LateIdCallSt
  loc_1328E87: var_98 = &HB
  loc_1328E96: var_D0 = CVar(CInt(7)) 'Integer
  loc_1328E9E: Set var_88 = Me.FGridLedger
  loc_1328EA4: LateIdCallSt
  loc_1328EAF: var_98 = 8
  loc_1328EB8: var_D0 = 0
  loc_1328EC5: Set var_88 = Me.FGridLedger
  loc_1328ECB: LateIdCallSt
  loc_1328ED6: var_98 = 9
  loc_1328EDF: var_D0 = 0
  loc_1328EEC: Set var_88 = Me.FGridLedger
  loc_1328EF2: LateIdCallSt
  loc_1328EFD: var_98 = 4
  loc_1328F06: var_D0 = 0
  loc_1328F13: Set var_88 = Me.FGridLedger
  loc_1328F19: LateIdCallSt
  loc_1328F24: var_98 = &HC
  loc_1328F2D: var_D0 = 0
  loc_1328F3A: Set var_88 = Me.FGridLedger
  loc_1328F40: LateIdCallSt
  loc_1328F4B: var_98 = 2
  loc_1328F5A: var_D0 = CVar(CInt(1)) 'Integer
  loc_1328F62: Set var_88 = Me.FgridAdjust
  loc_1328F68: LateIdCallSt
  loc_1328F73: var_98 = 5
  loc_1328F82: var_D0 = CVar(CInt(1)) 'Integer
  loc_1328F8A: Set var_88 = Me.FgridAdjust
  loc_1328F90: LateIdCallSt
  loc_1328F9B: var_98 = 7
  loc_1328FAA: var_D0 = CVar(CInt(7)) 'Integer
  loc_1328FB2: Set var_88 = Me.FgridAdjust
  loc_1328FB8: LateIdCallSt
  loc_1328FC3: var_98 = 8
  loc_1328FD2: var_D0 = CVar(CInt(7)) 'Integer
  loc_1328FDA: Set var_88 = Me.FgridAdjust
  loc_1328FE0: LateIdCallSt
  loc_1328FEB: var_98 = 9
  loc_1328FFA: var_D0 = CVar(CInt(7)) 'Integer
  loc_1329002: Set var_88 = Me.FgridAdjust
  loc_1329008: LateIdCallSt
  loc_1329013: var_98 = 3
  loc_132901C: var_D0 = 0
  loc_1329029: Set var_88 = Me.FgridAdjust
  loc_132902F: LateIdCallSt
  loc_132903A: var_98 = &HA
  loc_1329043: var_D0 = 0
  loc_1329050: Set var_88 = Me.FgridAdjust
  loc_1329056: LateIdCallSt
  loc_1329061: var_98 = &HB
  loc_132906A: var_D0 = 0
  loc_1329077: Set var_88 = Me.FgridAdjust
  loc_132907D: LateIdCallSt
  loc_1329088: var_98 = &HC
  loc_1329091: var_D0 = 0
  loc_132909E: Set var_88 = Me.FgridAdjust
  loc_13290A4: LateIdCallSt
  loc_13290BB: Me.TXTADJ_AMT.Visible = False
  loc_13290C9: Set var_88 = Me.FRAMEADJUST
  loc_13290CF: var_88.Visible = False
  loc_13290D7: Exit Sub
  loc_13290D8: ' Referenced from: 1328954
  loc_13290DE: Call 0.Method_arg_50 (var_E4, var_88, var_D0, var_98, var_88, var_D0, var_98)
  loc_13290F3: Proc_183_57_104AA84(var_E4, "Form_Load", var_88, var_D0, var_98)
  loc_13290FF: Exit Sub
End Sub

Private Sub Form_Resize() 'E6D644
  'Data Table: 4D7B1C
  loc_E6D5EE: Call 0.Method_arg_50 (var_88)
  loc_E6D600: Me.LblFormCaption.Caption = var_88
  loc_E6D619: Me.LblFormCaption.Left = CDbl(0)
  loc_E6D627: Call 0.Method_arg_100 (var_90)
  loc_E6D639: Me.LblFormCaption.Width = var_90
  loc_E6D641: Exit Sub
  loc_E6D642: Get , ,  'get  bytes
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E11D04
  'Data Table: 4D7B1C
  loc_E11CFB: Set global_84 = Nothing
  loc_E11D02: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E21644
  'Data Table: 4D7B1C
  loc_E2162A: If (KeyCode = &HD) Then
  loc_E2163B:   Proc_303_0_FB9B68("	")
  loc_E21643: End If
  loc_E21643: Exit Sub
End Sub

Private Sub FGridLedger_UnknownEvent_12 'E82CF4
  'Data Table: 4D7B1C
  Dim var_A8 As Variant
  Dim var_C8 As Long
  loc_E82CAB: var_A8 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_E82CB0: var_C8 = 8
  loc_E82CDB: Me.TxtNARATION1.Text = CStr(Me.FGridLedger.TextMatrix))
  loc_E82CF3: Exit Sub
End Sub

Private Sub TXTADJ_AMT_GotFocus() 'E8C708
  'Data Table: 4D7B1C
  Dim var_A8 As Variant
  Dim var_C8 As Long
  Dim var_F0 As String
  loc_E8C6AF: var_A8 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_E8C6B4: var_C8 = 9
  loc_E8C6F9: var_F0 = "{Home}+{End}"
  loc_E8C6FF: Proc_303_0_FB9B68(CStr(Me.FgridAdjust.TextMatrix)), 0, Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_E8C707: Exit Sub
End Sub

Private Sub TXTADJ_AMT_KeyDown(KeyCode As Integer, Shift As Integer) 'E3E99C
  'Data Table: 4D7B1C
  loc_E3E98D: Proc_183_21_FA163C(Me.TXTADJ_AMT, KeyCode)
  loc_E3E999: Exit Sub
End Sub

Private Sub TXTADJ_AMT_KeyPress(KeyAscii As Integer) 'E3FC5C
  'Data Table: 4D7B1C
  loc_E3FC4D: Proc_183_22_129AEBC(Me.TXTADJ_AMT, KeyAscii)
  loc_E3FC59: Exit Sub
End Sub

Private Sub TXTADJ_AMT_Validate(Cancel As Boolean) '117E7C0
  'Data Table: 4D7B1C
  Dim var_98 As String
  Dim var_B0 As Variant
  Dim var_D0 As Long
  Dim var_160 As Double
  Dim var_168 As Double
  Dim var_108 As Variant
  Dim var_128 As Long
  Dim var_324 As Double
  Dim var_24C As Variant
  Dim var_22C As Boolean
  Dim var_2AC As Variant
  Dim var_2CC As Variant
  Dim Cancel As Integer
  loc_117E430: On Error Goto loc_117E797
  loc_117E43B: Proc_183_6_EA3004(CVar(Me.TXTADJ_AMT))
  loc_117E44F: Me.TXTADJ_AMT.Text = CStr()
  loc_117E470: var_B0 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_117E475: var_D0 = &HB
  loc_117E49B: var_160 = Val(CStr(Me.FGridLedger.TextMatrix)))
  loc_117E4AB: var_158 = Me.TXTADJ_AMT.Text
  loc_117E4C8: var_98 = Me.TXTADJ_AMT.Text
  loc_117E4F0: var_108 = CVar(CLng(global_56)) 'Long
  loc_117E543: If (8 Or (CDbl(Val(CStr(Me.FgridAdjust.TextMatrix)))) < CDbl(Val(var_158)))) Then
  loc_117E54D:   var_B0 = CVar(CLng(global_56)) 'Long
  loc_117E552:   var_D0 = 8
  loc_117E570:   var_98 = CStr(Me.FgridAdjust.TextMatrix))
  loc_117E578:   var_160 = Val(var_98)
  loc_117E58E:   var_108 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_117E593:   var_128 = &HB
  loc_117E5B9:   var_168 = Val(CStr(Me.FGridLedger.TextMatrix)))
  loc_117E5FA:   var_324 = Val(CStr(Me.FGridLedger.TextMatrix)))
  loc_117E63B:   var_24C = CVar(((var_324 - global_60) + global_76)) 'Double
  loc_117E656:   var_22C = (CDbl(var_160) > CDbl(((var_168 - global_60) + global_76)))
  loc_117E67E:   Call 0.Method_arg_50 (var_158, 8, CVar(CLng(global_56)), var_324, &HB, CVar(CLng(Me.FGridLedger.Row)))
  loc_117E69C:   var_2AC = (" Amount is Greater Then Pendng Adj.Amt. You Can Adjust Only " + LTrim(RTrim(IIf(var_22C, var_24C, CVar(CStr(Me.FgridAdjust.TextMatrix)))))))
  loc_117E6A5:   var_2CC = (var_2AC + " Here")
  loc_117E6A9:   MsgBox(var_2CC, &H10, CVar(var_158), var_2FC, var_31C)
  loc_117E701:   Me.FgridAdjust.Row = CVar(CLng(global_56))
  loc_117E70B:   Cancel = &HFF
  loc_117E711: Else
  loc_117E763:   LateIdCallSt
  loc_117E77D:   Call Proc_192_27_F6E4FC(Me.FgridAdjust, CVar(CStr(Format(CVar(Me.TXTADJ_AMT), "0.00"))), 1, 1, 9, CVar(CLng(global_56)), Cancel)
  loc_117E78E:   Me.TXTADJ_AMT.Visible = False
  loc_117E796: End If
  loc_117E796: Exit Sub
  loc_117E797: ' Referenced from: 117E430
  loc_117E79D: Call 0.Method_arg_50 (var_98, var_168, var_128, var_108)
  loc_117E7B2: Proc_183_57_104AA84(var_98, "TXTADJ_AMT_Validate", var_160)
  loc_117E7BE: Exit Sub
End Sub

Private Sub BTS_AUTO_ADJ_Click() '1140C70
  'Data Table: 4D7B1C
  Dim var_A4 As MSFlexGrid
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Long
  Dim var_FC As String
  Dim var_10C As Variant
  Dim var_12C As Long
  Dim var_144 As MSFlexGrid
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_184 As Long
  Dim var_1AC As String
  Dim var_8C As Long
  loc_11408F4: On Error Goto loc_1140C45
  loc_1140936: For var_B8 = CInt(CLng(Me.FgridAdjust.Row)) To CInt((CLng(Me.FgridAdjust.Rows) - 1)): var_86 = var_B8 'Integer
  loc_114094F:   var_C8 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_1140954:   var_E8 = &HB
  loc_1140993:   If (CDbl(Val(CStr(Me.FGridLedger.TextMatrix)))) > global_60) Then
  loc_114099A:     var_10C = CVar(CLng(var_86)) 'Long
  loc_114099F:     var_12C = 8
  loc_11409DB:     var_164 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_11409E0:     var_184 = &HB
  loc_1140A03:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_1140A08:     var_E8 = 9
  loc_1140A64:     If ((CDbl(Val(CStr(Me.FgridAdjust.TextMatrix)))) < CDbl(Val(CStr(Me.FgridAdjust.TextMatrix))))) And (global_60 <= CDbl(CStr(Me.FGridLedger.TextMatrix))))) Then
  loc_1140A6B:       var_C8 = CVar(CLng(var_86)) 'Long
  loc_1140A70:       var_E8 = 9
  loc_1140A97:       var_8C = CLng(Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_1140AA7:       var_10C = CVar(CLng(var_86)) 'Long
  loc_1140AAC:       var_12C = 8
  loc_1140AE8:       var_C8 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_1140AED:       var_E8 = &HB
  loc_1140B3E:       If (CDbl((Val(CStr(Me.FGridLedger.TextMatrix))) - (global_60 - CDbl(var_8C)))) >= CDbl(Val(CStr(Me.FgridAdjust.TextMatrix))))) Then
  loc_1140B45:         var_10C = CVar(CLng(var_86)) 'Long
  loc_1140B4A:         var_12C = 9
  loc_1140B57:         var_C8 = CVar(CLng(var_86)) 'Long
  loc_1140B5C:         var_E8 = 8
  loc_1140B84:         var_B4 = CVar(CStr(Val(CStr(Me.FgridAdjust.TextMatrix))))) 'String
  loc_1140B8C:         Set var_A4 = Me.FgridAdjust
  loc_1140B92:         LateIdCallSt
  loc_1140BAE:       Else
  loc_1140BB2:         var_10C = CVar(CLng(var_86)) 'Long
  loc_1140BB7:         var_12C = 9
  loc_1140BD3:         var_C8 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_1140BD8:         var_E8 = &HB
  loc_1140BE5:         Set var_A4 = Me.FGridLedger
  loc_1140BEB:         var_B4 = var_A4.TextMatrix)
  loc_1140BF6:         var_FC = CStr(var_B4)
  loc_1140C0C:         var_154 = CVar(CStr((Val(var_FC) - (global_60 - CDbl(var_8C))))) 'String
  loc_1140C14:         Set var_144 = Me.FgridAdjust
  loc_1140C1A:         LateIdCallSt
  loc_1140C37:       End If
  loc_1140C37:     End If
  loc_1140C37:   End If
  loc_1140C37:   Call Proc_192_26_FEAAC0(var_144, Me.FgridAdjust.TextMatrix), var_E8, var_C8, var_12C, var_10C, var_A4, var_B4)
  loc_1140C3F: Next var_B8 'Integer
  loc_1140C44: Exit Sub
  loc_1140C45: ' Referenced from: 11408F4
  loc_1140C4B: Call 0.Method_arg_50 (var_FC)
  loc_1140C53: var_1AC = "BTS_AUTO_ADJ_Click"
  loc_1140C60: Proc_183_57_104AA84(var_FC)
  loc_1140C6C: Exit Sub
End Sub

Private Sub TXT_DATE_GotFocus() 'E18DB8
  'Data Table: 4D7B1C
  loc_E18DA8: var_88 = "{Home}+{End}"
  loc_E18DAE: Proc_303_0_FB9B68(var_88)
  loc_E18DB6: Exit Sub
End Sub

Private Sub TXT_DATE_Validate(Cancel As Boolean) 'E554E4
  'Data Table: 4D7B1C
  loc_E554C2: Call 0.Method_arg_184 (Me.TXT_DATE)
  loc_E554CE: Set var_90 = Me.TXT_DATE
  loc_E554D4: Me.TXT_DATE.Text = var_8C
  loc_E554E3: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E18E04
  'Data Table: 4D7B1C
  loc_E18DF9: Me.Global.Unload Me
  loc_E18E01: Exit Sub
End Sub

Private Sub FgridAdjust_UnknownEvent_9 'DFFD0C
  'Data Table: 4D7B1C
  loc_DFFD04: Call Proc_192_26_FEAAC0()
  loc_DFFD09: Exit Sub
End Sub

Private Sub FgridAdjust_UnknownEvent_D 'DFFBF4
  'Data Table: 4D7B1C
  loc_DFFBEC: Call Proc_192_26_FEAAC0()
  loc_DFFBF1: Exit Sub
End Sub

Private Sub FgridAdjust_UnknownEvent_12 'E81A60
  'Data Table: 4D7B1C
  Dim var_A8 As Variant
  Dim var_C8 As Long
  loc_E81A17: var_A8 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_E81A1C: var_C8 = &HA
  loc_E81A47: Me.TXTNARRATION.Text = CStr(Me.FgridAdjust.TextMatrix))
  loc_E81A5F: Exit Sub
End Sub

Private Sub FgridAdjust_UnknownEvent_15 'DFFB14
  'Data Table: 4D7B1C
  loc_DFFB0C: Call Proc_192_26_FEAAC0()
  loc_DFFB11: Exit Sub
End Sub

Private Sub Command2_Click() '1130540
  'Data Table: 4D7B1C
  Dim var_118 As Variant
  Dim var_138 As Long
  Dim var_14C As MSFlexGrid
  Dim var_15C As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Long
  Dim var_AC As Variant
  Dim var_CC As Long
  Dim var_F4 As String
  Dim var_88 As Long
  loc_11301E4: On Error Goto loc_1130517
  loc_11301FA: var_118 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_11301FF: var_138 = 8
  loc_113023B: var_184 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_1130240: var_1A4 = &HB
  loc_1130272: var_AC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_1130277: var_CC = 9
  loc_11302DB: If ((CDbl(Val(CStr(Me.FgridAdjust.TextMatrix)))) < CDbl(Val(CStr(Me.FgridAdjust.TextMatrix))))) And (global_60 < CDbl(CStr(Me.FGridLedger.TextMatrix))))) Then
  loc_11302F1:   var_AC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_11302F6:   var_CC = 9
  loc_113031D:   var_88 = CLng(Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_1130344:   var_118 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_1130349:   var_138 = 8
  loc_1130385:   var_AC = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_113038A:   var_CC = &HB
  loc_11303DF:   If (CDbl((Val(CStr(Me.FGridLedger.TextMatrix))) - (global_60 - CDbl(var_88)))) >= CDbl(Val(CStr(Me.FgridAdjust.TextMatrix))))) Then
  loc_11303F5:     var_118 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_11303FA:     var_138 = 9
  loc_1130416:     var_AC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_113041B:     var_CC = 8
  loc_1130443:     var_15C = CVar(CStr(Val(CStr(Me.FgridAdjust.TextMatrix))))) 'String
  loc_113044B:     Set var_14C = Me.FgridAdjust
  loc_1130451:     LateIdCallSt
  loc_1130475:   Else
  loc_1130488:     var_118 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_113048D:     var_138 = 9
  loc_11304A9:     var_AC = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_11304AE:     var_CC = &HB
  loc_11304CC:     var_F4 = CStr(Me.FGridLedger.TextMatrix))
  loc_11304E2:     var_15C = CVar(CStr((Val(var_F4) - (global_60 - CDbl(var_88))))) 'String
  loc_11304EA:     Set var_14C = Me.FgridAdjust
  loc_11304F0:     LateIdCallSt
  loc_1130511:   End If
  loc_1130511:   Call Proc_192_26_FEAAC0(var_14C, var_15C, var_CC, var_AC, var_138, var_118, var_14C, var_15C)
  loc_1130516: End If
  loc_1130516: Exit Sub
  loc_1130517: ' Referenced from: 11301E4
  loc_113051D: Call 0.Method_arg_50 (var_F4, var_CC, var_AC, var_138)
  loc_1130532: Proc_183_57_104AA84(var_F4, "Command2_Click", var_118)
  loc_113053E: Exit Sub
End Sub

Public Sub Proc_192_26_FEAAC0
  'Data Table: 4D7B1C
  Dim var_A8 As Variant
  Dim var_CC As Variant
  Dim var_E0 As Long
  Dim var_F4 As String
  loc_FEA8E4: On Error Goto loc_FEAA98
  loc_FEA926: If (CLng(Me.FgridAdjust.Col) = 9) Then
  loc_FEA935:   Me.TXTADJ_AMT.Visible = True
  loc_FEA94D:   Me.TXTADJ_AMT.ZOrder 0
  loc_FEA955:   var_A8 = 9
  loc_FEA980:   Me.TXTADJ_AMT.Width = CDbl(CLng(Me.FgridAdjust.ColWidth)))
  loc_FEA9C7:   Me.TXTADJ_AMT.Top = (CDbl(Me.FgridAdjust.Top) + CDbl(CLng(Me.FgridAdjust.CellTop)))
  loc_FEA9E6:   var_CC = Me.FgridAdjust.CellLeft
  loc_FEAA14:   Me.TXTADJ_AMT.Left = (CDbl(Me.FgridAdjust.Left) + CDbl(CLng(var_CC)))
  loc_FEAA30:   var_A8 = CVar(CLng(CInt(CLng(Me.FgridAdjust.Row)))) 'Long
  loc_FEAA35:   var_E0 = 9
  loc_FEAA53:   var_F4 = CStr(Me.FgridAdjust.TextMatrix))
  loc_FEAA6A:   Me.TXTADJ_AMT.Text = CStr(Val(var_F4))
  loc_FEAA8A:   Me.TXTADJ_AMT.SetFocus
  loc_FEAA92: End If
  loc_FEAA92: Call Proc_192_27_F6E4FC(var_E0, var_A8, var_CC)
  loc_FEAA97: Exit Sub
  loc_FEAA98: ' Referenced from: FEA8E4
  loc_FEAA9E: Call 0.Method_arg_50 (var_F4, var_CC)
  loc_FEAAB3: Proc_183_57_104AA84(var_F4, "UPD_ADJ")
  loc_FEAABF: Exit Sub
End Sub

Public Sub Proc_192_27_F6E4FC
  'Data Table: 4D7B1C
  Dim var_B0 As Variant
  Dim var_D0 As Long
  Dim var_120 As Variant
  loc_F6E3DA: global_60 = CDbl(0)
  loc_F6E402: For var_A0 = 1 To CInt((CLng(Me.FgridAdjust.Rows) - 1)): var_86 = var_A0 'Integer
  loc_F6E40C:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_F6E411:   var_D0 = 9
  loc_F6E447:   global_60 = (global_60 + Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_F6E456: Next var_A0 'Integer
  loc_F6E46E: var_B0 = CVar(CLng(Me.FGridLedger.Row)) 'Long
  loc_F6E473: var_D0 = &HB
  loc_F6E4BB: var_120 = CVar((Val(CStr(Me.FGridLedger.TextMatrix))) - global_60)) 'Double
  loc_F6E4D8: Me.ADJ_LAB7.Caption = CStr(Format(var_120, "0.00"))
  loc_F6E4FA: Exit Sub
End Sub
