VERSION 5.00
Begin VB.Form memCatChngCond
  Caption = "Member Category Change (Conditional)"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11130
  ClientHeight = 5145
  Begin OptionButton Option1
    Caption = "Based On OP Bal"
    Index = 1
    ForeColor = &HFF0000&
    Left = 4740
    Top = 2040
    Width = 2265
    Height = 255
    TabIndex = 2
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
  Begin OptionButton Option1
    Caption = "All Members"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2385
    Top = 2040
    Width = 1665
    Height = 255
    TabIndex = 1
    Value = 255
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
  Begin Frame FrOPBal
    Left = 600
    Top = 2400
    Width = 6510
    Height = 570
    TabIndex = 11
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 2
      ForeColor = &H0&
      Left = 4695
      Top = 195
      Width = 1770
      Height = 285
      TabIndex = 4
      BorderStyle = 0 'None
      MaxLength = 11
      BeginProperty Font
        Name = "Tahoma"
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
      ForeColor = &H0&
      Left = 1875
      Top = 195
      Width = 1410
      Height = 285
      TabIndex = 3
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 10
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Caption = "On Date :"
      Index = 2
      ForeColor = &HFF0000&
      Left = 3690
      Top = 210
      Width = 990
      Height = 240
      TabIndex = 13
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
      Caption = "if OP Bal >="
      Index = 3
      ForeColor = &HFF0000&
      Left = 120
      Top = 210
      Width = 1020
      Height = 240
      TabIndex = 12
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
  Begin DataGrid DGMemType
    Left = 9570
    Top = 2040
    Width = 4725
    Height = 2010
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin CommandButton CmdChange1
    Caption = "Change"
    Left = 8760
    Top = 7920
    Width = 1320
    Height = 435
    Visible = 0   'False
    TabIndex = 6
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
  Begin TextBox Txt
    Index = 3
    ForeColor = &HFF0000&
    Left = 2475
    Top = 3435
    Width = 4560
    Height = 285
    TabIndex = 5
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
    ForeColor = &HFF0000&
    Left = 2475
    Top = 1470
    Width = 4560
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
  Begin MSFlexGrid FGPoint
    Left = 12225
    Top = 4935
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 7
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11130
    Height = 450
    Visible = 0   'False
    TabIndex = 14
  End
  Begin BtnEnh CmdExit
    Left = 5040
    Top = 4680
    Width = 1470
    Height = 1065
    TabIndex = 15
  End
  Begin BtnEnh CmdChange
    Left = 2040
    Top = 4680
    Width = 1470
    Height = 1065
    TabIndex = 16
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
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
  Begin Label Label2
    Caption = "Change To Category :"
    Index = 1
    ForeColor = &HFF0000&
    Left = 615
    Top = 3450
    Width = 1920
    Height = 225
    TabIndex = 9
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
    Caption = "Current Category :"
    Index = 0
    ForeColor = &HFF0000&
    Left = 615
    Top = 1485
    Width = 1740
    Height = 240
    TabIndex = 8
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

Attribute VB_Name = "memCatChngCond"


Private Sub Option1_Click(Index As Integer) 'F69D7C
  'Data Table: 43F38C
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_8C As Frame
  Dim var_EC As TextBox
  loc_F69C5B: var_86 = Index
  loc_F69C64: If (var_86 = 0) Then
  loc_F69C75:   Set var_8C = Me.Txt
  loc_F69C7B:   Call 0.Method_Option1_Click0 (CInt(1), var_90)
  loc_F69C83:   var_90.Text = vbNullString
  loc_F69C9D:   Set var_8C = Me.Txt
  loc_F69CA3:   Call 0.Method_Option1_Click0 (CInt(2), var_90)
  loc_F69CAB:   var_90.Text = vbNullString
  loc_F69CC3:   Me.FrOPBal.Enabled = False
  loc_F69CCE: Else
  loc_F69CD4:   If (var_86 = 1) Then
  loc_F69CE5:     Set var_8C = Me.Txt
  loc_F69CEB:     Call 0.Method_Option1_Click0 (CInt(1), var_90)
  loc_F69D39:     Set var_E8 = Me.Txt
  loc_F69D3F:     Call 0.Method_Option1_Click0 (CInt(1), var_EC, CStr(Format(CVar(Val(var_90.Text)), "0.00")), 1)
  loc_F69D47:     var_EC.Text = 1
  loc_F69D73:     Me.FrOPBal.Enabled = True
  loc_F69D7B:   End If
  loc_F69D7B: End If
  loc_F69D7B: Exit Sub
End Sub

Private Sub Option1_KeyDown(KeyCode As Integer, Shift As Integer) 'E239B8
  'Data Table: 43F38C
  loc_E239A9: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E239B2:   Proc_6_75_E527CC(Shift)
  loc_E239B7: End If
  loc_E239B7: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1A8BC
  'Data Table: 43F38C
  loc_E1A8B1: Me.Global.Unload Me
  loc_E1A8B9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E7F83C
  'Data Table: 43F38C
  Dim var_8C As TextBox
  loc_E7F7D8: On Error Goto loc_E7F836
  loc_E7F7DB: Call Proc_291_18_E9D3D8()
  loc_E7F7F3: Set var_88 = Me.Txt
  loc_E7F7F9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_8C)
  loc_E7F801: var_8C.Text = CStr(MemVar_1F920F4)
  loc_E7F81B: Set var_88 = Me.Txt
  loc_E7F821: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_E7F829: var_8C.SetFocus
  loc_E7F835: Exit Sub
  loc_E7F836: ' Referenced from: E7F7D8
  loc_E7F836: Proc_6_60_E62BC4(var_8C)
  loc_E7F83B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A494
  'Data Table: 43F38C
  loc_E1A489: Me.Global.Unload Me
  loc_E1A491: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B6D4
  'Data Table: 43F38C
  Dim Me As Recordset15
  loc_E0B6CB: Me.Requery -1
  loc_E0B6D0: Exit Sub
End Sub

Private Sub Form_Load() '10559E4
  'Data Table: 43F38C
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_C0 As Variant
  loc_1055778: On Error Goto loc_105599D
  loc_1055782: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1055791: Set var_A8 = Me.TopCtrl1
  loc_1055797: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000B("AEDP")
  loc_10557A5: Call 0.Method_arg_50 (var_AC)
  loc_10557B5: Set var_A8 = Me.TopCtrl1
  loc_10557BB: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030007(CVar(var_AC))
  loc_10557E2: Me.TopCtrl1.CursorLocation = 3
  loc_1055805: var_AC = "Select  Code, Name From MemCatMast WHERE (Corporate='N') AND (  LOGSITE_CODE='" & MemVar_1F92078
  loc_1055816: Me.Open CVar(var_AC & "' or LOGSITE_CODE='HO')  Order by Name"), CVar(MemVar_1F921DC), 2
  loc_105582A: CVarUnk
  loc_105582F: VerifyVarObj
  loc_105583B: LateIdStAd
  loc_1055849: Call Proc_291_18_E9D3D8(Me.DGMemType, New)
  loc_1055859: Set var_A8 = Me.Option1
  loc_105585F: Call 0.Method_Form_Load0 (0, var_C0, &HFF)
  loc_1055867: var_C0.Value = True
  loc_1055878: Call Option1_Click(0)
  loc_1055886: Call 0.Method_arg_160 (var_A8)
  loc_1055894: Call 0.Method_arg_164 (var_A8)
  loc_10558A4: Set var_A8 = Me.PictSubMenu
  loc_10558AA: MDIForm1.PictSubMenu.BackColor = CLng(MemVar_1F921B0)
  loc_10558BF: Set var_A8 = Me.Option1
  loc_10558C5: Call 0.Method_Form_Load0 (0, var_C0)
  loc_10558CD: var_C0.BackColor = CLng(MemVar_1F921B0)
  loc_10558E6: Set var_A8 = Me.Option1
  loc_10558EC: Call 0.Method_Form_Load0 (1, var_C0)
  loc_10558F4: var_C0.BackColor = CLng(MemVar_1F921B0)
  loc_105590D: Set var_A8 = Me.Label2
  loc_1055913: Call 0.Method_Form_Load0 (2, var_C0)
  loc_105591B: var_C0.BackColor = CLng(MemVar_1F921B0)
  loc_1055934: Set var_A8 = Me.Label2
  loc_105593A: Call 0.Method_Form_Load0 (1, var_C0)
  loc_1055942: var_C0.BackColor = CLng(MemVar_1F921B0)
  loc_105595B: Set var_A8 = Me.Label2
  loc_1055961: Call 0.Method_Form_Load0 (0, var_C0)
  loc_1055969: var_C0.BackColor = CLng(MemVar_1F921B0)
  loc_1055982: Set var_A8 = Me.Label2
  loc_1055988: Call 0.Method_Form_Load0 (3, var_C0)
  loc_1055990: var_C0.BackColor = CLng(MemVar_1F921B0)
  loc_105599C: Exit Sub
  loc_105599D: ' Referenced from: 1055778
  loc_10559A5: Set var_A8 = Err()
  loc_10559AB: Call 0.Method_arg_2C (var_AC)
  loc_10559CC: MsgBox(CVar(var_AC), &H40, "Information", var_E4, var_104)
  loc_10559DF: Exit Sub
  loc_10559E0: Exit Sub
End Sub

Private Sub Form_Resize() 'ED5FF8
  'Data Table: 43F38C
  Dim var_8C As Label
  loc_ED5F56: Call 0.Method_arg_50 (var_88)
  loc_ED5F68: Me.LblFormCaption.Caption = var_88
  loc_ED5F81: Me.LblFormCaption.Left = CDbl(0)
  loc_ED5F8D: Set var_A0 = Me.TopCtrl1
  loc_ED5F93: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010006()
  loc_ED5FA0: Set var_8C = Me.TopCtrl1
  loc_ED5FA6: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010004()
  loc_ED5FC0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED5FDB: Call 0.Method_arg_100 (var_B8)
  loc_ED5FED: Me.LblFormCaption.Width = var_B8
  loc_ED5FF5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E14A04
  'Data Table: 43F38C
  loc_E149FB: Set global_52 = Nothing
  loc_E14A02: Exit Sub
End Sub

Private Sub Form_Activate() 'E50560
  'Data Table: 43F38C
  loc_E50530: On Error Goto loc_E5055A
  loc_E50537: Set var_88 = Me.TopCtrl1
  loc_E5053D: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030000()
  loc_E50552: If (CLng(CInt()) = &H2D) Then
  loc_E50555:   Call TopCtrl1_UnknownEvent_15()
  loc_E5055A:   ' Referenced from: E50530
  loc_E5055A: End If
  loc_E5055A: Proc_6_60_E62BC4()
  loc_E5055F: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E887CC
  'Data Table: 43F38C
  loc_E88768: On Error Goto loc_E88788
  loc_E8877F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E88787: Exit Sub
  loc_E88788: ' Referenced from: E88768
  loc_E88790: Set var_88 = Err()
  loc_E88796: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E887B7: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E887CA: Exit Sub
  loc_E887CB: Exit Sub
End Sub

Private Sub CmdChange_UnknownEvent_9 '1292A9C
  'Data Table: 43F38C
  Dim var_90 As Variant
  Dim var_E0 As TextBox
  Dim var_F4 As Variant
  Dim var_BC As Variant
  Dim var_88 As Long
  Dim var_E4 As String
  Dim var_160 As String
  Dim unk_43F3A0 As Connection15
  Dim var_DC As Variant
  Dim var_1A4 As TextBox
  Dim var_244 As TextBox
  Dim var_15C As String
  Dim var_104 As Variant
  Dim var_18C As Variant
  Dim var_22C As String
  Dim var_264 As Variant
  loc_1292553: Set var_8C = Me.Txt
  loc_1292559: Call 0.Method_CmdChange_UnknownEvent_90 (CInt(0))
  loc_1292582: If (Proc_6_27_EA565C(var_90, "Current Category") = 0) Then
  loc_1292585:   Exit Sub
  loc_1292586: End If
  loc_1292592: Set var_8C = Me.Option1
  loc_1292598: Call 0.Method_CmdChange_UnknownEvent_90 (1, var_90)
  loc_12925B2: If (var_90.Value = &HFF) Then
  loc_12925C0:   Set var_8C = Me.Txt
  loc_12925C6:   Call 0.Method_CmdChange_UnknownEvent_90 (CInt(2), var_90)
  loc_12925EF:   If (Proc_6_27_EA565C(var_90, "OP Bal On Date") = 0) Then
  loc_12925F2:     Exit Sub
  loc_12925F3:   End If
  loc_12925F3: End If
  loc_12925FE: Set var_8C = Me.Txt
  loc_1292604: Call 0.Method_CmdChange_UnknownEvent_90 (CInt(3), var_90)
  loc_129262D: If (Proc_6_27_EA565C(var_90, "Change To Category") = 0) Then
  loc_1292630:   Exit Sub
  loc_1292631: End If
  loc_129263F: Set var_8C = Me.Txt
  loc_1292645: Call 0.Method_CmdChange_UnknownEvent_90 (CInt(0), var_90)
  loc_129264D: var_98 = var_90.Tag
  loc_129265B: var_BC = Trim(CVar(var_98))
  loc_129267B: Set var_94 = Me.Txt
  loc_1292681: Call 0.Method_CmdChange_UnknownEvent_90 (CInt(0), var_E0, var_E4)
  loc_1292689: (var_BC = vbNullString) = var_E0.Tag
  loc_1292691: var_F4 = CVar(var_E4) 'String
  loc_12926C5: If CBool(var_90 Or (Trim(var_F4) = vbNullString)) Then
  loc_12926E1:   MsgBox("Category Code not Present.", &H10, var_BC, var_DC, var_F4)
  loc_12926F1:   Exit Sub
  loc_12926F2: End If
  loc_12926F8: Call 0.Method_arg_50 (var_98)
  loc_129271E: var_88 = MsgBox("R U Sure To Change Category On Given Condition.", &H141, CVar(var_98), var_DC, var_F4)
  loc_1292735: If (var_88 = 2) Then
  loc_1292738:   Exit Sub
  loc_1292739: End If
  loc_1292745: Set var_8C = Me.Option1
  loc_129274B: Call 0.Method_CmdChange_UnknownEvent_90 (0, var_90)
  loc_1292765: If (var_90.Value = &HFF) Then
  loc_1292786:   Set var_8C = Me.Txt
  loc_129278C:   Call 0.Method_CmdChange_UnknownEvent_90 (CInt(3), var_90, var_98, "Update SubGroup Set CompanyType='")
  loc_1292794:   var_DC = var_90.Tag
  loc_12927A4:   var_E4 = Proc_6_38_E68A98(CVar(var_98), -1)
  loc_12927AF:   var_160 = var_178 & var_E4 & "' Where CompanyType='"
  loc_12927C0:   Set var_94 = Me.Txt
  loc_12927C6:   Call 0.Method_CmdChange_UnknownEvent_90 (CInt(0), var_E0, var_15C)
  loc_12927CE:   var_160 = var_E0.Tag
  loc_1292800:   unk_43F3A0.Execute var_88 & Proc_6_38_E68A98(CVar(var_15C)) & "' And LogSite_Code='" & MemVar_1F92078 & "'", , 
  loc_1292831: Else
  loc_129283D:   Set var_8C = Me.Option1
  loc_1292843:   Call 0.Method_CmdChange_UnknownEvent_90 (1, var_90)
  loc_129285D:   If (var_90.Value = &HFF) Then
  loc_129286E:     Set var_8C = Me.Txt
  loc_1292874:     Call 0.Method_CmdChange_UnknownEvent_90 (CInt(3), var_90)
  loc_129287C:     var_98 = var_90.Tag
  loc_129289D:     Set var_94 = Me.Txt
  loc_12928A3:     Call 0.Method_CmdChange_UnknownEvent_90 (CInt(0), var_E0)
  loc_12928C9:     Set var_178 = Me.Txt
  loc_12928CF:     Call 0.Method_CmdChange_UnknownEvent_90 (CInt(2))
  loc_12928D7:     var_DC = CVar(var_17C) 'Address
  loc_12928DE:     Proc_6_7_F25D88(var_F4, var_DC)
  loc_12928F1:     Set var_1A0 = Me.Txt
  loc_12928F7:     Call 0.Method_CmdChange_UnknownEvent_90 (CInt(0), var_1A4)
  loc_129291D:     Set var_1E8 = Me.Txt
  loc_1292923:     Call 0.Method_CmdChange_UnknownEvent_90 (CInt(2), var_1EC)
  loc_1292932:     Proc_6_7_F25D88(var_20C, CVar(var_1EC))
  loc_1292945:     Set var_240 = Me.Txt
  loc_129294B:     Call 0.Method_CmdChange_UnknownEvent_90 (CInt(1), var_244)
  loc_1292981:     var_15C = "Update SubGroup Set CompanyType='" & Proc_6_38_E68A98(CVar(var_98)) & "' Where SubCode In (Select P.SubCode From (Select L.SubCode,ISNULL(SUM(L.AmtDr), 0) AmtDr From Ledger L Inner Join SubGroup S "
  loc_1292999:     var_104 = CVar(var_15C & " On S.SubCode=L.SubCode Where CompanyType='" & Proc_6_38_E68A98(CVar(var_E0.Tag)) & "' And V_date<dateadd(Month,-1,") 'String
  loc_12929B1:     var_18C = Trim(var_F4) & var_F4 & ") Group By L.SubCode) P Inner Join " & " (Select L.SubCode,ISNULL(SUM(L.AmtCr), 0) AmtCr From Ledger L Inner Join SubGroup S On S.SubCode=L.SubCode " 
  loc_12929D8:     var_22C = " Group By L.SubCode) Q On P.SubCode=Q.SubCode Where Q.AmtCr-P.AmtDr>="
  loc_12929E8:     var_264 = var_18C & " Where CompanyType='" & CVar(Proc_6_38_E68A98(CVar(var_1A4.Tag))) & "' And V_date<" & var_20C & var_22C & CVar(Val(var_244.Text)) 
  loc_12929FF:     unk_43F3A0.Execute CStr(var_264 & ")"), var_2A8, -1
  loc_1292A61:   End If
  loc_1292A61: End If
  loc_1292A67: Call 0.Method_arg_50 (var_98, var_2AC)
  loc_1292A88: MsgBox("Category Changed Successfully.", &H40, CVar(var_98), var_DC, var_F4)
  loc_1292A98: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FFDAC8
  'Data Table: 43F38C
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FFD8E2: Set var_88 = Me.Txt
  loc_FFD8E8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FFD8F6: Proc_6_74_E226B0(var_8C)
  loc_FFD902: Call Proc_291_20_E5386C(var_8C)
  loc_FFD90A: var_92 = Index
  loc_FFD915: If Not (var_92 = CInt(0)) Then
  loc_FFD920:   If (var_92 = CInt(3)) Then
  loc_FFD923:   End If
  loc_FFD93A:   If (Me.RecordCount > 0) Then
  loc_FFD948:     Set var_8C = Me.FGPoint
  loc_FFD960:     Proc_6_137_1193554(Me.DGMemType, global_52, Index)
  loc_FFD96E:   End If
  loc_FFD9BC:   Set var_88 = Me.Txt
  loc_FFD9C2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FFD9CA:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FFD9E2:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FFD9E5:     Exit Sub
  loc_FFD9E6:   End If
  loc_FFD9F3:   Set var_88 = Me.Txt
  loc_FFD9F9:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FFDA01:   var_A0 = var_8C.Text
  loc_FFDA09:   var_D4 = CVar(var_A0) 'String
  loc_FFDA4E:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FFDA57:     Me.MoveFirst
  loc_FFDA7C:     Set var_88 = Me.Txt
  loc_FFDA82:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_FFDA8A:     0 = var_8C.Text
  loc_FFDA98:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_FFDAAE:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_FFDAC6:   End If
  loc_FFDAC6: End If
  loc_FFDAC6: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F263F4
  'Data Table: 43F38C
  Dim var_86 As Integer
  loc_F26302: If (CLng(Shift) = &H1B) Then
  loc_F26305:   Call Proc_291_20_E5386C()
  loc_F2630A:   Exit Sub
  loc_F2630B: End If
  loc_F2630E: var_86 = KeyCode
  loc_F26319: If Not (var_86 = CInt(0)) Then
  loc_F26324:   If (var_86 = CInt(3)) Then
  loc_F26327:   End If
  loc_F2633F:   Set var_9C = Nothing
  loc_F2634A:   Set var_98 = Nothing
  loc_F26378:   Proc_6_69_134A198(Me.DGMemType, Me.Txt, KeyCode, global_52, Shift, 0)
  loc_F2638C: End If
  loc_F263A8: If (CBool(Me.DGMemType.Visible) = 0) Then
  loc_F263C0:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F263C9:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_F263CE:   End If
  loc_F263E3:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F263EC:     Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_F263F1:   End If
  loc_F263F1: End If
  loc_F263F1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E6CE50
  'Data Table: 43F38C
  loc_E6CDFF: Proc_6_58_E054C0(arg_10)
  loc_E6CE12: If (KeyAscii = CInt(1)) Then
  loc_E6CE1F:   Set var_8C = Me.Txt
  loc_E6CE25:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_E6CE40:   Proc_6_42_129A86C(var_90, arg_10, 7)
  loc_E6CE4C: End If
  loc_E6CE4C: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EAF1A8
  'Data Table: 43F38C
  Dim var_86 As Integer
  loc_EAF127: var_86 = KeyCode
  loc_EAF132: If Not (var_86 = CInt(0)) Then
  loc_EAF13D:   If (var_86 = CInt(3)) Then
  loc_EAF140:   End If
  loc_EAF15C:   If (CBool(Me.DGMemType.Visible) = &HFF) Then
  loc_EAF170:     var_A4 = "Name"
  loc_EAF194:     Proc_6_68_129FB34(Me.DGMemType, Me.Txt, KeyCode, global_52)
  loc_EAF1A7:   End If
  loc_EAF1A7: End If
  loc_EAF1A7: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E19C
  'Data Table: 43F38C
  loc_E4E17A: Set var_88 = Me.Txt
  loc_E4E180: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E18E: Proc_6_73_E22704(var_8C)
  loc_E4E19A: Exit Sub
  loc_E4E19B: Result var_8C End Sub 'Currency
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F15C04
  'Data Table: 43F38C
  Dim var_8E As Integer
  Dim var_E0 As TextBox
  Dim var_E8 As TextBox
  loc_F15B23: var_8E = Cancel
  loc_F15B2E: If (var_8E = CInt(1)) Then
  loc_F15B3B:   Set var_94 = Me.Txt
  loc_F15B41:   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_F15B7B:   Set var_DC = Me.Txt
  loc_F15B81:   Call 0.Method_Txt_Validate0 (Cancel, var_E0, CStr(Format(CVar(var_98), "0.00")))
  loc_F15B89:   var_E0.Text = 1
  loc_F15BA6: Else
  loc_F15BAE:   If (var_8E = CInt(2)) Then
  loc_F15BBB:     Set var_94 = Me.Txt
  loc_F15BC1:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_F15BE1:     Set var_E0 = Me.Txt
  loc_F15BE7:     Call 0.Method_Txt_Validate0 (Cancel, var_E8)
  loc_F15BEF:     var_E8.Text = Proc_6_33_1512840(var_98, 1)
  loc_F15C02:   End If
  loc_F15C02: End If
  loc_F15C02: Exit Sub
End Sub

Public Sub Proc_291_18_E9D3D8
  'Data Table: 43F38C
  Dim var_98 As TextBox
  loc_E9D35E: Set var_8C = Me.Txt
  loc_E9D364: Call 0.Method_Proc_291_18_E9D3D8C (var_8E, var_86)
  loc_E9D374: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9D38A:   Set var_8C = Me.Txt
  loc_E9D390:   Call 0.Method_Proc_291_18_E9D3D80 (CInt(var_86), var_98)
  loc_E9D398:   var_98.Text = vbNullString
  loc_E9D3B4:   Set var_8C = Me.Txt
  loc_E9D3BA:   Call 0.Method_Proc_291_18_E9D3D80 (CInt(var_86), var_98)
  loc_E9D3C2:   var_98.Tag = vbNullString
  loc_E9D3D1: Next var_92 'Byte
  loc_E9D3D7: Exit Sub
End Sub

Public Sub Proc_291_19_E7BA6C(arg_C) 'E7BA6C
  'Data Table: 43F38C
  Dim var_98 As TextBox
  loc_E7BA1A: Set var_8C = Me.Txt
  loc_E7BA20: Call 0.Method_Proc_291_19_E7BA6CC (var_8E, var_86)
  loc_E7BA30: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7BA46:   Set var_8C = Me.Txt
  loc_E7BA4C:   Call 0.Method_Proc_291_19_E7BA6C0 (CInt(var_86), var_98)
  loc_E7BA54:   var_98.Enabled = arg_C
  loc_E7BA63: Next var_92 'Byte
  loc_E7BA69: Exit Sub
End Sub

Public Sub Proc_291_20_E5386C
  'Data Table: 43F38C
  loc_E53850: If (CBool(Me.DGMemType.Visible) = &HFF) Then
  loc_E53862:   Me.DGMemType.Visible = False
  loc_E5386A: End If
  loc_E5386A: Exit Sub
End Sub
