VERSION 5.00
Begin VB.Form FrmItemGroupMastRaw
  Caption = "Item Group"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmItemGroupMastRaw.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 8880
  ClientHeight = 5190
  Begin MainCtrl TOpCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 450
    TabIndex = 18
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 9105
    Top = 6765
    Width = 2790
    Height = 255
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 4
    ForeColor = &HC00000&
    Left = 2430
    Top = 2550
    Width = 1560
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
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
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 9030
    Top = 1035
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 135
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 11
    End
  End
  Begin DataGrid DGHelp
    Left = 9105
    Top = 3045
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin DataGrid DGRest
    Left = 7890
    Top = 4035
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 2430
    Top = 2235
    Width = 1560
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2430
    Top = 1605
    Width = 4215
    Height = 285
    Visible = 0   'False
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2430
    Top = 1920
    Width = 4215
    Height = 285
    TabIndex = 1
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
  Begin MSFlexGrid FGPoint
    Left = 11160
    Top = 1470
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 12
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4320
    Top = 5685
    Width = 2790
    Height = 285
    TabIndex = 17
    Alignment = 2 'Center
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 945
    Top = 5685
    Width = 2880
    Height = 255
    TabIndex = 16
    Alignment = 2 'Center
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 15
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
    Caption = "Commodity Code"
    Index = 2
    ForeColor = &HC00000&
    Left = 7590
    Top = 6765
    Width = 1605
    Height = 240
    Visible = 0   'False
    TabIndex = 14
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "Category Type"
    Index = 0
    ForeColor = &HC00000&
    Left = 1005
    Top = 2550
    Width = 1380
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
    Caption = "Type"
    Index = 1
    ForeColor = &HC00000&
    Left = 1005
    Top = 2220
    Width = 465
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
  Begin Label LblName
    Caption = "Outlet Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 1005
    Top = 1605
    Width = 1185
    Height = 240
    Visible = 0   'False
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
  Begin Label LblName
    Caption = "Item Group"
    Index = 0
    ForeColor = &HC00000&
    Left = 1005
    Top = 1920
    Width = 1065
    Height = 240
    TabIndex = 5
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

Attribute VB_Name = "FrmItemGroupMastRaw"


Private Sub DGHelp_UnknownEvent_9 'F3D6C4
  'Data Table: 483B14
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3D5BB: Me.DGHelp.Visible = False
  loc_F3D5DA: If (Me.RecordCount > 0) Then
  loc_F3D619:   Set var_B4 = Me.Txt
  loc_F3D61F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3D627:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3D65A:   var_B0 = Me.Fields.Item("Code")
  loc_F3D679:   Set var_B4 = Me.Txt
  loc_F3D67F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3D687:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3D69D: End If
  loc_F3D6A8: Set var_A8 = Me.Txt
  loc_F3D6AE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(2))
  loc_F3D6B6: var_B0.SetFocus
  loc_F3D6C2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA3ACC
  'Data Table: 483B14
  Dim var_A8 As Variant
  Dim arg_1300 As Integer
  loc_EA3A4C: Set var_88 = Me.DGHelp
  loc_EA3A76: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3A7E: Set var_BC = Me.DGHelp
  loc_EA3ABA: Proc_6_138_106D6F8(Me.DGHelp, global_60, CInt(2), Me.FGPoint)
  loc_EA3AC8: Exit Sub
  loc_EA3AC9: arg_1300 = DGHelp.DispID_1B
End Sub

Private Sub DGRest_UnknownEvent_9 'F3C384
  'Data Table: 483B14
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3C27B: Me.DGRest.Visible = False
  loc_F3C29A: If (Me.RecordCount > 0) Then
  loc_F3C2D9:   Set var_B4 = Me.Txt
  loc_F3C2DF:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3C2E7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3C31A:   var_B0 = Me.Fields.Item("Code")
  loc_F3C339:   Set var_B4 = Me.Txt
  loc_F3C33F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3C347:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3C35D: End If
  loc_F3C368: Set var_A8 = Me.Txt
  loc_F3C36E: Call 0.Method_DGRest_UnknownEvent_90 (CInt(1))
  loc_F3C376: var_B0.SetFocus
  loc_F3C382: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'EA4028
  'Data Table: 483B14
  Dim var_A8 As Variant
  loc_EA3FA8: Set var_88 = Me.DGRest
  loc_EA3FD2: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3FDA: Set var_BC = Me.DGRest
  loc_EA4016: Proc_6_138_106D6F8(Me.DGRest, global_64, CInt(1), Me.FGPoint)
  loc_EA4024: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E650E8
  'Data Table: 483B14
  loc_E650B8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E650BB:   Call DGHelp_UnknownEvent_9()
  loc_E650C0: End If
  loc_E650DC: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E650DF:   Call DGRest_UnknownEvent_9()
  loc_E650E4: End If
  loc_E650E4: Exit Sub
End Sub

Private Sub Form_Load() '11BFB54
  'Data Table: 483B14
  Dim var_88 As Label
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim var_E0 As String
  Dim unk_483B2C As Connection15
  loc_11BF714: On Error Goto loc_11BFB0D
  loc_11BF726: Me.LblUser.Left = CDbl(13500)
  loc_11BF73D: Me.LblUser.Top = CDbl(7800)
  loc_11BF754: Me.LblLDt.Top = CDbl(8160)
  loc_11BF76B: Me.LblLDt.Left = CDbl(13500)
  loc_11BF77A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_11BF783: var_98 = CVar(CLng(MemVar_1F921B0)) 'Long
  loc_11BF78C: Set var_88 = Me.DGHelp
  loc_11BF7A8: Set var_88 = Me.Txt
  loc_11BF7AE: Call 0.Method_Form_Load0 (CInt(2), var_AC, var_B0)
  loc_11BF7B6: DGHelp.DispID_FFFFFE0B = var_AC.Left
  loc_11BF7CD: Me.DGHelp.Left = CVar(var_B0)
  loc_11BF7E9: Set var_B4 = Me.Txt
  loc_11BF7EF: Call 0.Method_Form_Load0 (CInt(2), var_B8)
  loc_11BF80A: Set var_88 = Me.Txt
  loc_11BF810: Call 0.Method_Form_Load0 (CInt(2), var_AC)
  loc_11BF828: var_98 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_11BF837: Me.DGHelp.Top = CVar(var_AC.Top)
  loc_11BF857: Set var_88 = Me.Txt
  loc_11BF85D: Call 0.Method_Form_Load0 (CInt(1), var_AC)
  loc_11BF87C: Me.DGRest.Left = CVar(var_AC.Left)
  loc_11BF898: Set var_B4 = Me.Txt
  loc_11BF89E: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_11BF8B9: Set var_88 = Me.Txt
  loc_11BF8BF: Call 0.Method_Form_Load0 (CInt(1), var_AC)
  loc_11BF8D7: var_98 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_11BF8E6: Me.DGRest.Top = CVar(var_AC.Left)
  loc_11BF8F8: var_98 = "AEDP"
  loc_11BF902: Set var_88 = Me.TOpCtrl1
  loc_11BF908: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(var_98)
  loc_11BF916: Call 0.Method_arg_50 (var_C4)
  loc_11BF91E: var_D4 = CVar(var_C4) 'String
  loc_11BF92C: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(var_D4)
  loc_11BF94B: var_C4 = "SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code WHERE (ItemGrp.LOGSITE_CODE='" & MemVar_1F92078
  loc_11BF960: var_E0 = var_C4 & "' or ItemGrp.LOGSITE_CODE='HO') and Depart.code='" & MemVar_1F92078 & "PURC' AND ItemGrp.Code<>'MISC'  AND ItemGrp.Type='Finish' and Depart.RestType not in ('Banquet','Outlet','Room Service')  ORDER BY ItemGrp.Name"
  loc_11BF969: unk_483B2C.Execute var_E0, var_D4, -1
  loc_11BF99C: CVarUnk
  loc_11BF9A1: VerifyVarObj
  loc_11BF9AD: LateIdStAd
  loc_11BF9CF: var_C4 = "SELECT IG.Code,IG.Name As ItemGroup,IG.Type,D.Name As RestName,IG.Site_Code,IG.LogSite_Code,IG.CatType,IG.CommodityCode FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE (IG.LOGSITE_CODE='" & MemVar_1F92078
  loc_11BF9E4: var_E0 = var_C4 & "' or IG.LOGSITE_CODE='HO') and d.code='" & MemVar_1F92078 & "PURC' And IG.Code <>'MISC' and Resttype not in ('Banquet','Outlet','Room Service')  ORDER BY IG.Name"
  loc_11BF9ED: unk_483B2C.Execute var_E0, var_D4, -1
  loc_11BFA23: Set var_88 = Me.LblName
  loc_11BFA29: Call 0.Method_Form_Load0 (1, var_AC, "Depart Name", var_88)
  loc_11BFA31: var_AC.Caption = var_88
  loc_11BFA43: Call 0.Method_arg_54 ("Item Group Master", Me.TOpCtrl1)
  loc_11BFA63: var_D8 = "Select Code,Name From Depart Where (Depart.LOGSITE_CODE='" & MemVar_1F92078 & "' or Depart.LOGSITE_CODE='HO') and OutletYN='N' Order by Name"
  loc_11BFA6C: unk_483B2C.Execute var_D8, var_D4, -1
  loc_11BFA9B: CVarUnk
  loc_11BFAA0: VerifyVarObj
  loc_11BFAA6: Set var_88 = Me.DGRest
  loc_11BFAAC: LateIdStAd
  loc_11BFAC6: Set var_88 = Me
  loc_11BFACF: var_C4 = "INI"
  loc_11BFADD: Call Proc_114_32_E6E268(Proc_5_1_100CB50(var_C4, var_88, Me.DGHelp, var_88), var_88, var_88)
  loc_11BFAF1: Call 0.Method_arg_160 (var_88, var_88)
  loc_11BFAFF: Call 0.Method_arg_164 (var_88)
  loc_11BFB07: Call Proc_114_34_128F2EC(var_98)
  loc_11BFB0C: Exit Sub
  loc_11BFB0D: ' Referenced from: 11BF714
  loc_11BFB15: Set var_88 = Err()
  loc_11BFB1B: Call 0.Method_arg_2C (var_C4)
  loc_11BFB3C: MsgBox(CVar(var_C4), &H40, "Information", var_104, var_124)
  loc_11BFB4F: Exit Sub
  loc_11BFB50: Exit Sub
End Sub

Private Sub Form_Resize() 'EE5EBC
  'Data Table: 483B14
  Dim var_8C As Label
  loc_EE5E0A: Call 0.Method_arg_50 (var_88)
  loc_EE5E1C: Me.LblFormCaption.Caption = var_88
  loc_EE5E35: Me.LblFormCaption.Left = CDbl(0)
  loc_EE5E41: Set var_A0 = Me.TOpCtrl1
  loc_EE5E47: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_EE5E54: Set var_8C = Me.TOpCtrl1
  loc_EE5E5A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_EE5E74: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_EE5E8F: Call 0.Method_arg_100 (var_B8)
  loc_EE5EA1: Me.LblFormCaption.Width = var_B8
  loc_EE5EB4: If (global_52 = "Banquet") Then
  loc_EE5EB7:   Exit Sub
  loc_EE5EB8: End If
  loc_EE5EB8: Exit Sub
  loc_EE5EB9: StAryRecMove
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E50B88
  'Data Table: 483B14
  loc_E50B5B: Set global_56 = Nothing
  loc_E50B6D: Set global_60 = Nothing
  loc_E50B7F: Set global_64 = Nothing
  loc_E50B86: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E88318
  'Data Table: 483B14
  loc_E882B4: On Error Goto loc_E882D4
  loc_E882CB: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E882D3: Exit Sub
  loc_E882D4: ' Referenced from: E882B4
  loc_E882DC: Set var_88 = Err()
  loc_E882E2: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E88303: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E88316: Exit Sub
  loc_E88317: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F59144
  'Data Table: 483B14
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F59066: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5906D:   Set var_A8 = Me.ListView
  loc_F590B7:   Set var_C0 = Me.Txt
  loc_F590BD:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F590C5:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F590E5: End If
  loc_F590F1: Me.FrmList.Visible = False
  loc_F59121: Set var_9C = Me.Txt
  loc_F59127: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5912F: var_A8.SetFocus
  loc_F59143: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '130AF30
  'Data Table: 483B14
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_130A812: Set var_88 = Me.Txt
  loc_130A818: Call 0.Method_Txt_GotFocus0 (Index)
  loc_130A826: Proc_6_74_E226B0(var_8C)
  loc_130A832: Call Proc_114_36_EF4C18(var_8C)
  loc_130A83A: var_92 = Index
  loc_130A845: If (var_92 = CInt(1)) Then
  loc_130A85F:   If (Me.RecordCount > 0) Then
  loc_130A86D:     Set var_8C = Me.FGPoint
  loc_130A885:     Proc_6_137_1193554(Me.DGRest, global_64, Index)
  loc_130A893:   End If
  loc_130A8E1:   Set var_88 = Me.Txt
  loc_130A8E7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_130A8EF:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_130A907:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_130A917:     Set var_88 = Me.Txt
  loc_130A91D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130A925:     var_8C.Tag = vbNullString
  loc_130A931:     Exit Sub
  loc_130A932:   End If
  loc_130A93F:   Set var_88 = Me.Txt
  loc_130A945:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130A94D:   var_A0 = var_8C.Text
  loc_130A95F:   var_B0 = "Name"
  loc_130A99A:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_130A9A3:     Me.MoveFirst
  loc_130A9C6:     Set var_88 = Me.Txt
  loc_130A9CC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_130A9D4:     0 = var_8C.Text
  loc_130A9ED:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_130AA02:   End If
  loc_130AA05: Else
  loc_130AA0D:   If (var_92 = CInt(2)) Then
  loc_130AA27:     If (Me.RecordCount > 0) Then
  loc_130AA35:       Set var_8C = Me.FGPoint
  loc_130AA4D:       Proc_6_137_1193554(Me.DGHelp, global_60)
  loc_130AA5B:     End If
  loc_130AAA9:     Set var_88 = Me.Txt
  loc_130AAAF:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_130AAB7:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_130AACF:     If (Index Or (var_A0 = vbNullString)) Then
  loc_130AADF:       Set var_88 = Me.Txt
  loc_130AAE5:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130AAED:       var_8C.Tag = vbNullString
  loc_130AAF9:       Exit Sub
  loc_130AAFA:     End If
  loc_130AB07:     Set var_88 = Me.Txt
  loc_130AB0D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130AB15:     var_A0 = var_8C.Text
  loc_130AB27:     var_B0 = "Name"
  loc_130AB3E:     var_B4 = Me.Fields.Item(var_B0)
  loc_130AB62:     If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_130AB6B:       Me.MoveFirst
  loc_130AB8E:       Set var_88 = Me.Txt
  loc_130AB94:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_130AB9C:       0 = var_8C.Text
  loc_130ABB5:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_130ABCA:     End If
  loc_130ABCD:   Else
  loc_130ABD5:     If (var_92 = CInt(4)) Then
  loc_130ABE7:       Set var_88 = Me.Txt
  loc_130ABED:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130ABF5:       var_8C.SelStart = 0
  loc_130AC0E:       Set var_88 = Me.Txt
  loc_130AC14:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130AC1C:       var_A0 = var_8C.Text
  loc_130AC2F:       Set var_90 = Me.Txt
  loc_130AC35:       Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_130AC3D:       var_B4.SelLength = Len(var_A0)
  loc_130AC5D:       ReDim var_F0(0 To 7)
  loc_130AC74:       var_F0(0) = "Food"
  loc_130AC83:       var_F0(1) = "Liquor"
  loc_130AC92:       var_F0(2) = "Confectionary"
  loc_130ACA1:       var_F0(3) = "Beverage"
  loc_130ACB0:       var_F0(4) = "Miscellaneous"
  loc_130ACBF:       var_F0(5) = "Tobacco"
  loc_130ACCE:       var_F0(6) = "Hall Rent"
  loc_130ACDD:       var_F0(7) = "Butchery"
  loc_130ACF4:       global_76 = Array(var_F0)
  loc_130ACFF:       Set var_B4 = Me.ListView
  loc_130AD1A:       Set var_8C = Me.Txt
  loc_130AD34:       Set global_92 = Proc_6_66_EFF8FC(var_B4, var_8C, Index)
  loc_130AD52:       Set var_88 = Me.Txt
  loc_130AD58:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_130AD60:       global_76 = var_8C.Text
  loc_130AD72:       Set var_90 = Me.Txt
  loc_130AD78:       Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_130AD80:       var_B4.Tag = 8
  loc_130AD96:     Else
  loc_130AD9E:       If (var_92 = CInt(3)) Then
  loc_130ADB0:         Set var_88 = Me.Txt
  loc_130ADB6:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130ADBE:         var_8C.SelStart = 0
  loc_130ADD7:         Set var_88 = Me.Txt
  loc_130ADDD:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130ADE5:         var_A0 = var_8C.Text
  loc_130ADF8:         Set var_90 = Me.Txt
  loc_130ADFE:         Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_130AE06:         var_B4.SelLength = Len(var_A0)
  loc_130AE26:         ReDim var_F0(0 To 4)
  loc_130AE3D:         var_F0(0) = "Finish"
  loc_130AE4C:         var_F0(1) = "Semi Finish"
  loc_130AE5B:         var_F0(2) = "Consumables"
  loc_130AE6A:         var_F0(3) = "Raw Material"
  loc_130AE79:         var_F0(4) = "Store Item"
  loc_130AE90:         global_76 = Array(var_F0)
  loc_130AE9B:         Set var_B4 = Me.ListView
  loc_130AEB6:         Set var_8C = Me.Txt
  loc_130AED0:         Set global_92 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_76)
  loc_130AEEE:         Set var_88 = Me.Txt
  loc_130AEF4:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_130AEFC:         5 = var_8C.Text
  loc_130AF0E:         Set var_90 = Me.Txt
  loc_130AF14:         Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_130AF1C:         var_B4.Tag = global_76
  loc_130AF2F:       End If
  loc_130AF2F:     End If
  loc_130AF2F:   End If
  loc_130AF2F: End If
  loc_130AF2F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1240154
  'Data Table: 483B14
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  Dim var_B0 As TextBox
  Dim var_C0 As TextBox
  Dim var_90 As DataGrid
  Dim var_A0 As Frame
  loc_123FC46: If (CLng(Shift) = &H1B) Then
  loc_123FC49:   Call Proc_114_36_EF4C18()
  loc_123FC4E:   Exit Sub
  loc_123FC4F: End If
  loc_123FC52: var_88 = KeyCode
  loc_123FC5D: If (var_88 = CInt(2)) Then
  loc_123FC82:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_123FCA2:     Set var_A0 = Me.FGPoint
  loc_123FCD4:     Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(2), global_60, Shift)
  loc_123FCE8:   End If
  loc_123FD41:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_123FD67:     Proc_6_138_106D6F8(Me.DGHelp, global_60, KeyCode, Me.FGPoint, 0)
  loc_123FD75:   End If
  loc_123FD78: Else
  loc_123FD80:   If (var_88 = CInt(1)) Then
  loc_123FD8E:     Set var_B0 = Me.Txt
  loc_123FDA0:     Set var_A8 = Me.FGPoint
  loc_123FDAB:     Set var_A0 = Nothing
  loc_123FDD9:     Proc_6_69_134A198(Me.DGRest, var_B0, KeyCode, global_64, Shift, 0, 1)
  loc_123FDF8:     var_8C = Me.RecordCount
  loc_123FE48:     If ((var_8C > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_123FE4F:       Set var_A0 = Me.DGRest
  loc_123FE56:       Set var_94 = Me.FGPoint
  loc_123FE6E:       Proc_6_138_106D6F8(var_A0, global_64, KeyCode, var_94, var_A0, var_A8)
  loc_123FE7C:     End If
  loc_123FE7F:   Else
  loc_123FE87:     If (var_88 = CInt(4)) Then
  loc_123FEAC:       Set var_90 = Me.Txt
  loc_123FEB2:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, 0)
  loc_123FEBA:       1 = var_94.Left
  loc_123FECC:       Set var_A0 = Me.Txt
  loc_123FED2:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_123FEDA:       var_A0 = var_A8.Top
  loc_123FEEC:       Set var_AC = Me.Txt
  loc_123FEF2:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0, var_BC)
  loc_123FEFA:       0 = var_B0.Height
  loc_123FF0C:       Set var_B4 = Me.Txt
  loc_123FF12:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_123FF1A:       var_C4 = var_C0.Width
  loc_123FF62:       Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_123FF89:     Else
  loc_123FF91:       If (var_88 = CInt(3)) Then
  loc_123FFB6:         Set var_90 = Me.Txt
  loc_123FFBC:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, CInt(var_8C))
  loc_123FFC4:         CInt((var_B8 + var_BC)) = var_94.Left
  loc_123FFD6:         Set var_A0 = Me.Txt
  loc_123FFDC:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_123FFE4:         CInt(var_C4) = var_A8.Top
  loc_123FFF6:         Set var_AC = Me.Txt
  loc_123FFFC:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0, var_BC)
  loc_1240004:         2720 = var_B0.Height
  loc_1240016:         Set var_B4 = Me.Txt
  loc_124001C:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1240024:         var_C4 = var_C0.Width
  loc_124006C:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1240090:       End If
  loc_1240090:     End If
  loc_1240090:   End If
  loc_1240090: End If
  loc_12400E6: If (((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGRest.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_12400FC:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(1))) Then
  loc_1240105:     Proc_6_76_E52838(Shift, arg_14, CInt(var_8C), CInt((var_B8 + var_BC)))
  loc_124010A:   End If
  loc_124011F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_124012A:     If (KeyCode = CInt(4)) Then
  loc_1240135:       Call Txt_Validate(KeyCode)
  loc_124013D:       Call Proc_114_37_E91238(KeyCode, 0, CInt(var_C4))
  loc_1240145:     Else
  loc_124014B:       Proc_6_75_E527CC(Shift, arg_14)
  loc_1240150:     End If
  loc_1240150:   End If
  loc_1240150: End If
  loc_1240150: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EEE6E8
  'Data Table: 483B14
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EEE626: Proc_6_133_E7EF78(var_94)
  loc_EEE63B: If (CInt(var_94) = &HD) Then
  loc_EEE640:   arg_10 = 0
  loc_EEE643: End If
  loc_EEE646: Proc_6_58_E054C0(arg_10, arg_10)
  loc_EEE659: If (KeyAscii = CInt(1)) Then
  loc_EEE678:   If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EEE6A5:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_EEE6D7:     Proc_6_138_106D6F8(Me.DGRest, global_64, KeyAscii, Me.FGPoint)
  loc_EEE6E5:   End If
  loc_EEE6E5: End If
  loc_EEE6E5: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F32488
  'Data Table: 483B14
  Dim var_86 As Integer
  loc_F3237B: var_86 = KeyCode
  loc_F32386: If (var_86 = CInt(2)) Then
  loc_F323A5:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F323B2:     var_A4 = "Name"
  loc_F323D1:     Proc_6_80_FF0AC0(Me.Txt, CInt(2), global_60)
  loc_F32403:     Proc_6_138_106D6F8(Me.DGHelp, global_60, KeyCode, Me.FGPoint)
  loc_F32411:   End If
  loc_F32414: Else
  loc_F3241C:   If Not (var_86 = CInt(3)) Then
  loc_F32427:     If (var_86 = CInt(4)) Then
  loc_F3242A:     End If
  loc_F32445:     If (Me.FrmList.Visible = &HFF) Then
  loc_F32474:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F32484:     End If
  loc_F32484:   End If
  loc_F32484: End If
  loc_F32484: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E490C4
  'Data Table: 483B14
  loc_E490A2: Set var_88 = Me.Txt
  loc_E490A8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E490B6: Proc_6_73_E22704(var_8C)
  loc_E490C2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1032FBC
  'Data Table: 483B14
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_1032D7B: var_86 = Cancel
  loc_1032D86: If (var_86 = CInt(2)) Then
  loc_1032D8C:   Call Proc_114_35_10F533C(var_88)
  loc_1032D97:   If (var_88 = &HFF) Then
  loc_1032D9C:     arg_10 = &HFF
  loc_1032D9F:     Exit Sub
  loc_1032DA0:   End If
  loc_1032DA3: Else
  loc_1032DAB:   If (var_86 = CInt(1)) Then
  loc_1032DCE:     var_88 = Me.EOF
  loc_1032DFC:     Set var_94 = Me.Txt
  loc_1032E02:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1032E0A:     ((Me.RecordCount = 0) Or ((var_88 = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1032E22:     If (arg_10 Or (var_9C = vbNullString)) Then
  loc_1032E32:       Set var_94 = Me.Txt
  loc_1032E38:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1032E40:       var_98.Tag = vbNullString
  loc_1032E4C:       Exit Sub
  loc_1032E4D:     End If
  loc_1032E88:     Set var_B0 = Me.Txt
  loc_1032E8E:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1032E96:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1032EC9:     var_98 = Me.Fields.Item("Code")
  loc_1032EDA:     var_9C = CStr(var_98.Value)
  loc_1032EE7:     Set var_B0 = Me.Txt
  loc_1032EED:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1032EF5:     var_B4.Tag = var_9C
  loc_1032F0E:   Else
  loc_1032F16:     If (var_86 = CInt(3)) Then
  loc_1032F1C:       Call Proc_114_35_10F533C(var_88)
  loc_1032F27:       If (var_88 = &HFF) Then
  loc_1032F2C:         arg_10 = &HFF
  loc_1032F2F:         Exit Sub
  loc_1032F30:       End If
  loc_1032F3D:       Set var_94 = Me.Txt
  loc_1032F43:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1032F4B:       arg_10 = var_98.Text
  loc_1032F62:       If (var_9C <> vbNullString) Then
  loc_1032F95:         Set var_B0 = Me.Txt
  loc_1032F9B:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1032FA3:         var_B4.Text = Me.ListView.SelectedItem.Text
  loc_1032FB9:       End If
  loc_1032FB9:     End If
  loc_1032FB9:   End If
  loc_1032FB9: End If
  loc_1032FB9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F8B4D4
  'Data Table: 483B14
  Dim var_94 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_C0 As TextBox
  loc_F8B378: On Error Goto loc_F8B4CE
  loc_F8B39E: Call Proc_114_32_E6E268(Proc_5_1_100CB50("ADD", Me))
  loc_F8B3A9: Call Proc_114_33_EA88F8(global_56)
  loc_F8B3B9: Set var_8C = Me.Txt
  loc_F8B3BF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2))
  loc_F8B3C7: var_94.SetFocus
  loc_F8B3EA: If (Me.RecordCount > 0) Then
  loc_F8B426:   Set var_BC = Me.Txt
  loc_F8B42C:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_C0)
  loc_F8B434:   var_C0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_F8B462:   var_94 = Me.Fields.Item("Code")
  loc_F8B481:   Set var_BC = Me.Txt
  loc_F8B487:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_C0)
  loc_F8B48F:   var_C0.Tag = Proc_6_38_E68A98(CVar(var_94))
  loc_F8B4A3: End If
  loc_F8B4B0: Me.LblUser.Caption = vbNullString
  loc_F8B4C5: Me.LblLDt.Caption = vbNullString
  loc_F8B4CD: Exit Sub
  loc_F8B4CE: ' Referenced from: F8B378
  loc_F8B4CE: Proc_6_60_E62BC4(var_94)
  loc_F8B4D3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC140C
  'Data Table: 483B14
  loc_EC1374: On Error Goto loc_EC1404
  loc_EC13AE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC13BD:   Set var_10C = Me
  loc_EC13D4:   Call Proc_114_32_E6E268(Proc_5_1_100CB50("INI", var_10C))
  loc_EC13DF:   Call Proc_114_36_EF4C18(global_56)
  loc_EC13E4:   Call Proc_114_34_128F2EC()
  loc_EC13EC: Else
  loc_EC13F2:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC13FA:   Call var_10C.SetFocus
  loc_EC1403: End If
  loc_EC1403: Exit Sub
  loc_EC1404: ' Referenced from: EC1374
  loc_EC1404: Proc_6_60_E62BC4()
  loc_EC1409: Exit Sub
  loc_EC140A: () = 
End Sub

Private Sub TopCtrl1_UnknownEvent_C '112EAB8
  'Data Table: 483B14
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim unk_483B2C As Connection15
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_112E770: On Error Goto loc_112EA68
  loc_112E781: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_112E784:   Exit Sub
  loc_112E785: End If
  loc_112E7B7: var_D0 = "Item Master"
  loc_112E7FF: If (Proc_6_108_1010FEC(MemVar_1F92044, "ItemMast", "ItemGroup", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_112E802:   Exit Sub
  loc_112E803: End If
  loc_112E83A: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_112E846:   unk_483B2C.BeginTrans var_CC
  loc_112E85C:   var_94 = Me.Bookmark 'Variant
  loc_112E8A8:   var_114 = "Delete From ItemGrp Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_112E8B6:   unk_483B2C.Execute CStr(var_114), var_134, -1
  loc_112E901:   var_164 = 0
  loc_112E914:   var_15C = 0
  loc_112E91F:   var_158 = 0
  loc_112E932:   var_150 = 0
  loc_112E93D:   var_14C = 0
  loc_112E950:   var_144 = 0
  loc_112E990:   var_B0 = "ItemGrp"
  loc_112E999:   Proc_154_5_10E33A4(MemVar_1F92044, var_B0, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_112E9C7:   unk_483B2C.CommitTrans
  loc_112E9D7:   Me.Requery -1
  loc_112E9E7:   Me.Requery -1
  loc_112EA07:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_112EA14:     Me.Bookmark = var_94
  loc_112EA1C:   Else
  loc_112EA30:     If (Me.EOF = 0) Then
  loc_112EA39:       Me.MoveLast
  loc_112EA3E:     End If
  loc_112EA3E:   End If
  loc_112EA3E:   Call Proc_114_34_128F2EC(var_144, 0, var_14C, var_150)
  loc_112EA5F:   Proc_5_0_110649C(&HFF, Me, global_56, 0)
  loc_112EA67: End If
  loc_112EA67: Exit Sub
  loc_112EA68: ' Referenced from: 112E770
  loc_112EA6E: unk_483B2C.RollbackTrans
  loc_112EA7B: Set var_98 = Err()
  loc_112EA81: Call 0.Method_arg_2C (var_B0, 0, var_158)
  loc_112EAA2: MsgBox(CVar(var_B0), &H30, " Deletion Error ", var_114, var_134)
  loc_112EAB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F13304
  'Data Table: 483B14
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F1320C: On Error Goto loc_F132FB
  loc_F1321D: If (Proc_183_55_FE7900(global_56) = &HFF) Then
  loc_F13220:   Exit Sub
  loc_F13221: End If
  loc_F13244: Call Proc_114_32_E6E268(Proc_5_1_100CB50("EDIT", Me))
  loc_F1325D: Set var_8C = Me.Txt
  loc_F13263: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F13276: global_72 = var_94.Text
  loc_F13291: Set var_8C = Me.Txt
  loc_F13297: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F1329F: var_94.Enabled = False
  loc_F132B6: Set var_8C = Me.Txt
  loc_F132BC: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F132C4: var_94.SetFocus
  loc_F132DD: Me.LblUser.Caption = vbNullString
  loc_F132F2: Me.LblLDt.Caption = vbNullString
  loc_F132FA: Exit Sub
  loc_F132FB: ' Referenced from: F1320C
  loc_F132FB: Proc_6_60_E62BC4(global_56)
  loc_F13300: Exit Sub
  loc_F13303: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B5CC
  'Data Table: 483B14
  loc_E1B5C1: Me.Global.Unload Me
  loc_E1B5C9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F759A8
  'Data Table: 483B14
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F75870: On Error Goto loc_F75942
  loc_F7587C: var_88 = Me.RecordCount
  loc_F7588A: If (var_88 <= 0) Then
  loc_F75893:   var_B8 = "Information"
  loc_F758AE:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F758BE:   Exit Sub
  loc_F758BF: End If
  loc_F758CA: If (global_52 = "Banquet") Then
  loc_F758D4:   var_10C = "Select IG.Code As SearchCode,IG.Name,IG.CommodityCode,D.Name As DepartName FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE (IG.LOGSITE_CODE='" & MemVar_1F92078
  loc_F758DB:   MemVar_1F920E4 = var_10C & "' or IG.LOGSITE_CODE='HO') And IG.Code <>'MISC' and Resttype in ('Banquet')  ORDER BY D.Name,IG.Name"
  loc_F758E5: Else
  loc_F758EC:   var_10C = "Select IG.Code As SearchCode,IG.Name,IG.Type,IG.CatType FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE (IG.LOGSITE_CODE='" & MemVar_1F92078
  loc_F75901:   MemVar_1F920E4 = var_10C & "' or IG.LOGSITE_CODE='HO') And D.code='" & MemVar_1F92078 & "PURC' And IG.Code <>'MISC' And Resttype Not In ('Banquet','Outlet','Room Service') ORDER BY D.Name,IG.Name"
  loc_F7590E: End If
  loc_F75914: MemVar_1F92120 = Me
  loc_F7591B: var_10C = "3500,1500,1500"
  loc_F75921: Proc_6_126_F1BCC0(var_10C, MemVar_1F920E4)
  loc_F7593C: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F75941: Exit Sub
  loc_F75942: ' Referenced from: F75870
  loc_F7594A: Set var_118 = Err()
  loc_F75950: Call 0.Method_arg_1C (var_88)
  loc_F75961: If (var_88 <> 0) Then
  loc_F7596C:   Set var_118 = Err()
  loc_F75972:   Call 0.Method_arg_2C (var_10C)
  loc_F75993:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F759A6: End If
  loc_F759A6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E325F8
  'Data Table: 483B14
  loc_E325E8: Proc_5_0_110649C(&HFF, Me)
  loc_E325F0: Call Proc_114_34_128F2EC(global_56)
  loc_E325F5: Exit Sub
  loc_E325F6: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E399D8
  'Data Table: 483B14
  loc_E399C8: Proc_5_0_110649C(&HFF, Me)
  loc_E399D0: Call Proc_114_34_128F2EC(global_56)
  loc_E399D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E39918
  'Data Table: 483B14
  loc_E39908: Proc_5_0_110649C(&HFF, Me)
  loc_E39910: Call Proc_114_34_128F2EC(global_56)
  loc_E39915: Exit Sub
  loc_E39916: var_6388 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E39558
  'Data Table: 483B14
  loc_E39548: Proc_5_0_110649C(&HFF, Me)
  loc_E39550: Call Proc_114_34_128F2EC(global_56)
  loc_E39555: Exit Sub
  loc_E39556: var_6388 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1089320
  'Data Table: 483B14
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_483B2C As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1089088: On Error Goto loc_10892D4
  loc_10890A6: var_A4 = "select IG.Code,IG.Name As ItemGroup,IG.Type,IG.CommodityCode FROM ItemGrp as IG WHERE (IG.LOGSITE_CODE='" & MemVar_1F92078 & "' or IG.LOGSITE_CODE='HO') and IG.TYPE <>'Finish'  ORDER BY IG.Name"
  loc_10890AF: unk_483B2C.Execute var_A4, var_C4, -1
  loc_10890BA: Set var_88 = var_C8
  loc_10890D0: var_CC = var_88.RecordCount
  loc_10890DE: If (var_CC = 0) Then
  loc_10890FA:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108910A:   Exit Sub
  loc_108910B: End If
  loc_108911A: var_A4 = MemVar_1F920B4 & "\ItemGrp.ttx"
  loc_1089121: Set var_C8 = var_88 
  loc_108912D: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1089137: Set var_88 = var_C8
  loc_108913D: var_B4 = CVar(var_12E) 'Integer
  loc_1089140: var_98 = var_B4 'Variant
  loc_108915C: var_A0 = MemVar_1F920B4 & "\ItemGrp.RPT"
  loc_1089165: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1089170: MemVar_1F921E4 = var_C8
  loc_108918B: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1089193: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108919F: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_10891B8:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10891C0:   Call 0.Method_arg_20 (var_138)
  loc_10891C8:   Call 0.Method_arg_30 (var_A0)
  loc_108920E:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1089224:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108922C:     Call 0.Method_arg_20 (var_138)
  loc_1089234:     Call 0.Method_arg_38 ("'Item Group Master'")
  loc_1089240:   End If
  loc_1089243: Next var_132 'Integer
  loc_1089261: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1089269: Call 0.Method_arg_2C (var_DC)
  loc_1089277: Call 0.Method_arg_150 (var_FC)
  loc_1089282: Call 0.Method_arg_50 (var_A0)
  loc_108928C: Set var_138 = Nothing
  loc_10892A6: Set var_C8 = MemVar_1F921E4 
  loc_10892B2: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_10892BD: MemVar_1F921E4 = var_C8
  loc_10892D0: Set var_88 = Nothing
  loc_10892D3: Exit Sub
  loc_10892D4: ' Referenced from: 1089088
  loc_10892DC: Set var_C8 = Err()
  loc_10892E2: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10892ED: Call 0.Method_arg_50 (var_A4)
  loc_1089309: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108931C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E214A4
  'Data Table: 483B14
  Dim Me As Recordset15
  loc_E2148B: Me.Requery -1
  loc_E2149B: Me.Requery -1
  loc_E214A0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12FE578
  'Data Table: 483B14
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_483B2C As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_11C As String
  Dim var_114 As TextBox
  Dim var_B0 As Variant
  Dim var_148 As String
  Dim var_1F8 As Variant
  Dim var_118 As String
  Dim var_21C As Variant
  Dim var_230 As Variant
  loc_12FDEF8: On Error Goto loc_12FE524
  loc_12FDEFF: var_86 = CByte(0) 'Byte
  loc_12FDF0E: Set var_90 = Me.Txt
  loc_12FDF14: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_12FDF3D: If (Proc_6_27_EA565C(var_94, "Item Group") = 0) Then
  loc_12FDF47:   Call Txt_GotFocus(CInt(2))
  loc_12FDF4C:   Exit Sub
  loc_12FDF4D: End If
  loc_12FDF58: Set var_90 = Me.Txt
  loc_12FDF5E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_94)
  loc_12FDF87: If (Proc_6_27_EA565C(var_94, "Type") = 0) Then
  loc_12FDF91:   Call Txt_GotFocus(CInt(3))
  loc_12FDF96:   Exit Sub
  loc_12FDF97: End If
  loc_12FDF9A: Call Proc_114_35_10F533C(var_9E)
  loc_12FDFA5: If (var_9E = &HFF) Then
  loc_12FDFA8:   Exit Sub
  loc_12FDFA9: End If
  loc_12FDFAD: Set var_90 = Me.TOpCtrl1
  loc_12FDFB3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_94)
  loc_12FDFCC: If (CStr() = "Add") Then
  loc_12FDFD5:   var_D4 = 0
  loc_12FDFF2:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemGrp Where Site_Code='" & MemVar_1F92070
  loc_12FDFF9:   var_B4 = CStr() & "' and isnumeric(SUBSTRING(Code,3,4))=1 and Code <>'MISC'"
  loc_12FE002:   unk_483B2C.Execute var_B4, var_B0, -1
  loc_12FE00A:   var_90 = var_90.Fields
  loc_12FE012:   var_D4 = var_94.Item(var_94)
  loc_12FE01A:   var_98 = var_98.Value
  loc_12FE053:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_12FE079:   var_E4 = Format(CStr(var_E4), "0000")
  loc_12FE081:   var_108 = (1 + var_E4)
  loc_12FE08C:   global_68 = CStr(var_108)
  loc_12FE0A1: Else
  loc_12FE0BE:   var_94 = Me.Fields.Item("Code")
  loc_12FE0D5:   global_68 = CStr(var_94.Value)
  loc_12FE0E6: End If
  loc_12FE0EF: unk_483B2C.BeginTrans var_10C
  loc_12FE0F8: var_86 = CByte(1) 'Byte
  loc_12FE100: Set var_90 = Me.TOpCtrl1
  loc_12FE106: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_12FE11F: If (CStr(var_F8) = "Add") Then
  loc_12FE139:   var_9C = "Insert Into ItemGrp(Code,Name,Type,RestCode,CatType,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,CommodityCode) Values('" & global_68
  loc_12FE140:   var_E8 = var_9C & "','"
  loc_12FE151:   Set var_90 = Me.Txt
  loc_12FE157:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, var_B4, var_E8)
  loc_12FE15F:   var_21C = var_94.Text
  loc_12FE168:   var_110 = -1 & var_B4
  loc_12FE16F:   var_11C = var_110 & "','"
  loc_12FE180:   Set var_98 = Me.Txt
  loc_12FE186:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_114, var_118)
  loc_12FE18E:   var_11C = var_114.Text
  loc_12FE1C1:   Set var_130 = Me.Txt
  loc_12FE1C7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_134)
  loc_12FE1EA:   var_148 = var_E4 & Proc_6_38_E68A98(CVar(var_134), var_220 & var_118 & "','" & MemVar_1F92078 & "PURC" & "','") & "','" & MemVar_1F92070
  loc_12FE205:   var_E4 = Date
  loc_12FE210:   Proc_6_7_F25D88(var_F8, var_E4)
  loc_12FE243:   Set var_1A4 = Me.Txt
  loc_12FE249:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1A8)
  loc_12FE269:   var_1F8 = CVar(var_148 & "','" & MemVar_1F920C8 & "',") & var_F8 & ",'A','" & CVar(MemVar_1F92078) & "','" & Trim(CVar(var_1A8)) & "')" 
  loc_12FE277:   unk_483B2C.Execute CStr(var_1F8), , 
  loc_12FE2D4: Else
  loc_12FE2F2:   Set var_90 = Me.Txt
  loc_12FE2F8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, var_9C, "UPDATE ItemGrp SET Name='")
  loc_12FE300:   var_260 = var_94.Text
  loc_12FE309:   var_B4 = -1 & var_9C
  loc_12FE310:   var_110 = var_B4 & "',Type='"
  loc_12FE321:   Set var_98 = Me.Txt
  loc_12FE327:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_114, var_E8)
  loc_12FE32F:   var_110 = var_114.Text
  loc_12FE35B:   var_F8 = CVar(var_220 & var_E8 & "',SITE_CODE='" & MemVar_1F92070 & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_12FE36C:   Proc_6_7_F25D88(var_E4, Date)
  loc_12FE374:   var_108 = var_F8 & var_E4 
  loc_12FE378:   var_C4 = " ,U_AE='E',CatType='"
  loc_12FE38C:   Set var_130 = Me.Txt
  loc_12FE392:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_134)
  loc_12FE3BE:   Set var_1A4 = Me.Txt
  loc_12FE3C4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1A8)
  loc_12FE3F1:   var_230 = var_108 & var_C4 & CVar(Proc_6_38_E68A98(CVar(var_134))) & "',CommodityCode='" & Trim(CVar(var_1A8)) & "' WHERE Code='" & CVar(global_68) 
  loc_12FE408:   unk_483B2C.Execute CStr(var_230 & "'"), , 
  loc_12FE458: End If
  loc_12FE45E: unk_483B2C.CommitTrans
  loc_12FE467: var_86 = CByte(0) 'Byte
  loc_12FE476: Me.Requery -1
  loc_12FE486: Me.Requery -1
  loc_12FE4B3: Me.Find "Code='" & global_68 & "'", 0, 1
  loc_12FE4C3: Set var_90 = Me.TOpCtrl1
  loc_12FE4C9: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_C4)
  loc_12FE4E2: If (CStr() = "Add") Then
  loc_12FE4E5:   Call TopCtrl1_UnknownEvent_A()
  loc_12FE4EA:   Exit Sub
  loc_12FE4EB: End If
  loc_12FE500: var_9C = "INI"
  loc_12FE50E: Call Proc_114_32_E6E268(Proc_5_1_100CB50(var_9C, Me))
  loc_12FE519: Call Proc_114_36_EF4C18(global_56)
  loc_12FE51E: Call Proc_114_34_128F2EC()
  loc_12FE523: Exit Sub
  loc_12FE524: ' Referenced from: 12FDEF8
  loc_12FE52D: If (CInt(var_86) = 1) Then
  loc_12FE536:   unk_483B2C.RollbackTrans
  loc_12FE53B: End If
  loc_12FE543: Set var_90 = Err()
  loc_12FE549: Call 0.Method_arg_2C (var_9C)
  loc_12FE562: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_12FE575: Exit Sub
  loc_12FE576: () = 
End Sub

Public Function global_52Get() '48477C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '48478B
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC15C4
  'Data Table: 483B14
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC153A: On Error Goto loc_EC157F
  loc_EC1543: Me.MoveFirst
  loc_EC155D: var_8C = "code='" & MyValue
  loc_EC156D: Me.Find var_8C & "'", 0, 1
  loc_EC1579: Call Proc_114_34_128F2EC(var_A0)
  loc_EC157E: Exit Sub
  loc_EC157F: ' Referenced from: EC153A
  loc_EC1587: Set var_A4 = Err()
  loc_EC158D: Call 0.Method_arg_2C (var_8C)
  loc_EC15AE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC15C1: Exit Sub
  loc_EC15C2: Exit Sub
End Sub

Public Sub Proc_114_32_E6E268(arg_C) 'E6E268
  'Data Table: 483B14
  Dim var_98 As TextBox
  loc_E6E21A: Set var_8C = Me.Txt
  loc_E6E220: Call 0.Method_Proc_114_32_E6E268C (var_8E, var_86)
  loc_E6E22D: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_E6E243:   Set var_8C = Me.Txt
  loc_E6E249:   Call 0.Method_Proc_114_32_E6E2680 (CInt(var_86), var_98)
  loc_E6E251:   var_98.Enabled = arg_C
  loc_E6E260: Next var_92 'Byte
  loc_E6E266: Exit Sub
End Sub

Public Sub Proc_114_33_EA88F8
  'Data Table: 483B14
  Dim var_98 As TextBox
  loc_EA886E: global_72 = vbNullString
  loc_EA8880: Set var_8C = Me.Txt
  loc_EA8886: Call 0.Method_Proc_114_33_EA88F8C (var_8E, var_86)
  loc_EA8893: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_EA88A9:   Set var_8C = Me.Txt
  loc_EA88AF:   Call 0.Method_Proc_114_33_EA88F80 (CInt(var_86), var_98)
  loc_EA88B7:   var_98.Text = vbNullString
  loc_EA88D3:   Set var_8C = Me.Txt
  loc_EA88D9:   Call 0.Method_Proc_114_33_EA88F80 (CInt(var_86), var_98)
  loc_EA88E1:   var_98.Tag = vbNullString
  loc_EA88F0: Next var_92 'Byte
  loc_EA88F6: Exit Sub
  loc_EA88F7: Exit Sub
End Sub

Public Sub Proc_114_34_128F2EC
  'Data Table: 483B14
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_483B2C As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_11C As TextBox
  loc_128ED44: On Error Goto loc_128F2A6
  loc_128ED4D: Proc_183_45_E5C118(global_56)
  loc_128EDA8: unk_483B2C.Execute CStr("Select U_Name,U_AE,U_EntDt From ItemGrp where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_128EDB3: Set var_88 = var_118
  loc_128EE07: var_118 = var_88.Fields
  loc_128EE70: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_128EEB5: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_128EF2F: var_11C = var_88.Fields.Item("U_AE")
  loc_128EF48: var_114 = "entdt : "
  loc_128EF53: var_F0 = "Last Update : "
  loc_128EF90: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), var_F0, var_114))
  loc_128EFD5: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_128F024: If (Me.RecordCount <= 0) Then
  loc_128F027:   Call Proc_114_33_EA88F8()
  loc_128F02F: Else
  loc_128F063:   global_68 = CStr(Me.Fields.Item("ItemGroup").Value)
  loc_128F0B0:   Set var_118 = Me.Txt
  loc_128F0B6:   Call 0.Method_Proc_114_34_128F2EC0 (CInt(2), var_11C)
  loc_128F0BE:   var_11C.Text = CStr(Me.Fields.Item("ItemGroup").Value)
  loc_128F110:   Set var_118 = Me.Txt
  loc_128F116:   Call 0.Method_Proc_114_34_128F2EC0 (CInt(2), var_11C)
  loc_128F11E:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_128F16D:   Set var_118 = Me.Txt
  loc_128F173:   Call 0.Method_Proc_114_34_128F2EC0 (CInt(5), var_11C)
  loc_128F17B:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CommodityCode")))
  loc_128F1C8:   Set var_118 = Me.Txt
  loc_128F1CE:   Call 0.Method_Proc_114_34_128F2EC0 (CInt(1), var_11C)
  loc_128F1D6:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestName")))
  loc_128F226:   Set var_118 = Me.Txt
  loc_128F22C:   Call 0.Method_Proc_114_34_128F2EC0 (CInt(3), var_11C)
  loc_128F234:   var_11C.Text = CStr(Me.Fields.Item("Type").Value)
  loc_128F275:   var_F4 = Proc_6_38_E68A98(CVar(Me.Fields.Item("CatType")))
  loc_128F283:   Set var_118 = Me.Txt
  loc_128F289:   Call 0.Method_Proc_114_34_128F2EC0 (CInt(4), var_11C)
  loc_128F291:   var_11C.Text = var_F4
  loc_128F2A5: End If
  loc_128F2A5: Exit Sub
  loc_128F2A6: ' Referenced from: 128ED44
  loc_128F2AE: Set var_8C = Err()
  loc_128F2B4: Call 0.Method_arg_2C (var_F4)
  loc_128F2D5: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_128F2E8: Exit Sub
End Sub

Public Sub Proc_114_35_10F533C
  'Data Table: 483B14
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_483B2C As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_C0 As String
  loc_10F505F: If (Me.RecordCount = 0) Then
  loc_10F5062:   Proc_114_35_10F533C = 
  loc_10F5068: End If
  loc_10F506C: Set var_90 = Me.TOpCtrl1
  loc_10F5072: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10F508B: If (CStr() = "Add") Then
  loc_10F5094:   var_F4 = 0
  loc_10F50C9:   Set var_90 = Me.Txt
  loc_10F50CF:   Call 0.Method_Proc_114_35_10F533C0 (CInt(2), var_A8, var_AC, "Select Count(*) From ItemGrp Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10F50F8:   Set var_B8 = Me.Txt
  loc_10F50FE:   Call 0.Method_Proc_114_35_10F533C0 (CInt(1), var_BC, var_C0, var_E4 & var_AC & "' And RestCode='")
  loc_10F5106:   var_F4 = var_BC.Tag
  loc_10F510F:   var_C8 = var_F8 & var_C0
  loc_10F511F:   unk_483B2C.Execute var_C8 & "'", var_108, 
  loc_10F5127:    = var_A8.Text.Fields
  loc_10F512F:    = var_E4.Item()
  loc_10F5137:    = var_F8.Value
  loc_10F5172:   If (var_108 > 0) Then
  loc_10F5180:     var_108 = "Information"
  loc_10F5190:     var_A0 = "Duplicate Name"
  loc_10F5196:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_10F51B1:     Set var_90 = Me.Txt
  loc_10F51B7:     Call 0.Method_Proc_114_35_10F533C0 (CInt(2))
  loc_10F51BF:     var_A8.SetFocus
  loc_10F51D0:     Proc_114_35_10F533C = &HFF
  loc_10F51D6:   End If
  loc_10F51D9: Else
  loc_10F51DF:   var_F4 = 0
  loc_10F5214:   Set var_90 = Me.Txt
  loc_10F521A:   Call 0.Method_Proc_114_35_10F533C0 (CInt(2), var_A8, var_AC, "Select Count(*) From ItemGrp Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (Name='", var_A0, -1)
  loc_10F5254:   Set var_B8 = Me.Txt
  loc_10F525A:   Call 0.Method_Proc_114_35_10F533C0 (CInt(1), var_BC, var_C8, var_E4 & var_AC & "' And Name<>'" & global_72 & "') And RestCode='")
  loc_10F5262:   var_F4 = var_BC.Tag
  loc_10F527B:   unk_483B2C.Execute var_F8 & var_C8 & "'", var_108, var_A8
  loc_10F5283:    = var_A8.Text.Fields
  loc_10F528B:    = var_E4.Item()
  loc_10F5293:    = var_F8.Value
  loc_10F52D2:   If (var_108 > 0) Then
  loc_10F52F6:     MsgBox("Duplicate Name", &H40, "Information", var_128, var_148)
  loc_10F5311:     Set var_90 = Me.Txt
  loc_10F5317:     Call 0.Method_Proc_114_35_10F533C0 (CInt(2))
  loc_10F531F:     var_A8.SetFocus
  loc_10F5330:     Proc_114_35_10F533C = &HFF
  loc_10F5336:   End If
  loc_10F5336: End If
  loc_10F5336: Proc_114_35_10F533C = var_A8
End Sub

Public Sub Proc_114_36_EF4C18
  'Data Table: 483B14
  loc_EF4B5C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF4B6E:   Me.DGHelp.Visible = False
  loc_EF4B76: End If
  loc_EF4B92: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF4BA4:   Me.DGRest.Visible = False
  loc_EF4BAC: End If
  loc_EF4BC7: If (Me.FrmList.Visible = &HFF) Then
  loc_EF4BD6:   Me.FrmList.Visible = False
  loc_EF4BDE: End If
  loc_EF4BFA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF4C0C:   Me.FGPoint.Visible = False
  loc_EF4C14: End If
  loc_EF4C14: Exit Sub
End Sub

Public Sub Proc_114_37_E91238(arg_C) 'E91238
  'Data Table: 483B14
  Dim var_10C As TextBox
  loc_E911CC: Call Proc_114_36_EF4C18()
  loc_E91208: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E9120B:   Call TopCtrl1_UnknownEvent_16()
  loc_E91213: Else
  loc_E9121D:   Set var_108 = Me.Txt
  loc_E91223:   Call 0.Method_Proc_114_37_E912380 (arg_C)
  loc_E9122B:   var_10C.SetFocus
  loc_E91237: End If
  loc_E91237: Exit Sub
End Sub
