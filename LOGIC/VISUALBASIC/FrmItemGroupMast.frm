VERSION 5.00
Begin VB.Form FrmItemGroupMast
  Caption = "Item Group Entry"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 8880
  ClientHeight = 8430
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 450
    TabIndex = 15
  End
  Begin Frame FrmList
    BackColor = &H800000&
    Left = 9840
    Top = 1920
    Width = 1935
    Height = 1785
    Visible = 0   'False
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 15
      Top = 240
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 9
    End
  End
  Begin PictureBox Picture3
    Picture = "FrmItemGroupMast.frx":0
    Left = 12120
    Top = 2160
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 11
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DGHelp
    Left = 9720
    Top = 3840
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin DataGrid DGRest
    Left = 9720
    Top = 2760
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 3900
    Top = 2880
    Width = 3555
    Height = 285
    TabIndex = 2
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
    Left = 3900
    Top = 2250
    Width = 3555
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
    Left = 3900
    Top = 2565
    Width = 3555
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 25
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
    Left = 8760
    Top = 2280
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 10
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4440
    Top = 6240
    Width = 2790
    Height = 285
    TabIndex = 14
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
    Left = 1065
    Top = 6240
    Width = 2880
    Height = 255
    TabIndex = 13
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
    Left = 3900
    Top = 720
    Width = 180
    Height = 540
    TabIndex = 12
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
    Caption = "Type"
    Index = 1
    ForeColor = &HC00000&
    Left = 2655
    Top = 2880
    Width = 465
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
  Begin Label LblName
    Caption = "Outlet Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 2655
    Top = 2250
    Width = 1185
    Height = 240
    Visible = 0   'False
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
  Begin Label LblName
    Caption = "Item Group"
    Index = 0
    ForeColor = &HC00000&
    Left = 2655
    Top = 2565
    Width = 1065
    Height = 240
    TabIndex = 3
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

Attribute VB_Name = "FrmItemGroupMast"


Private Sub Form_Load() '12A8EE4
  'Data Table: 491E68
  Dim var_88 As Label
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim unk_491E81 As Connection15
  Dim var_E0 As String
  loc_12A88D4: On Error Goto loc_12A8E9D
  loc_12A88E6: Me.LblUser.Left = CDbl(13500)
  loc_12A88FD: Me.LblUser.Top = CDbl(7800)
  loc_12A8914: Me.LblLDt.Top = CDbl(8160)
  loc_12A892B: Me.LblLDt.Left = CDbl(13500)
  loc_12A893A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_12A894D: Set var_88 = Me.Txt
  loc_12A8953: Call 0.Method_Form_Load0 (CInt(2), var_8C)
  loc_12A8972: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_12A898E: Set var_B4 = Me.Txt
  loc_12A8994: Call 0.Method_Form_Load0 (CInt(2), var_B8)
  loc_12A89AF: Set var_88 = Me.Txt
  loc_12A89B5: Call 0.Method_Form_Load0 (CInt(2), var_8C)
  loc_12A89CD: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_12A89DC: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_12A89FC: Set var_88 = Me.Txt
  loc_12A8A02: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_12A8A21: Me.DGRest.Left = CVar(var_8C.Left)
  loc_12A8A3D: Set var_B4 = Me.Txt
  loc_12A8A43: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_12A8A5E: Set var_88 = Me.Txt
  loc_12A8A64: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_12A8A7C: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_12A8A8B: Me.DGRest.Top = CVar(var_8C.Left)
  loc_12A8AA7: Set var_88 = Me.TopCtrl1
  loc_12A8AAD: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_12A8ABB: Call 0.Method_arg_50 (var_C4)
  loc_12A8AC3: var_D4 = CVar(var_C4) 'String
  loc_12A8AD1: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_12A8AE7: If (global_56 = "Banquet") Then
  loc_12A8AFE:   var_C4 = "SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code WHERE (Itemgrp.LOGSITE_CODE='" & MemVar_1F92078
  loc_12A8B05:   var_D8 = var_C4 & "' or itemgrp.LOGSITE_CODE='HO') AND ItemGrp.Code<>'MISC'  AND ItemGrp.Type='Finish' and Depart.RestType='Banquet' ORDER BY ItemGrp.Name"
  loc_12A8B0E:   unk_491E81.Execute var_D8, var_D4, -1
  loc_12A8B1F:   Set global_64 = Me.TopCtrl1
  loc_12A8B3D:   CVarUnk
  loc_12A8B42:   VerifyVarObj
  loc_12A8B48:   Set var_88 = Me.DGHelp
  loc_12A8B4E:   LateIdStAd
  loc_12A8B70:   var_C4 = "SELECT IG.Code,IG.Name As ItemGroup,IG.Type,D.Name As RestName FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE (IG.LOGSITE_CODE='" & MemVar_1F92078
  loc_12A8B88:   var_E0 = var_C4 & "' or IG.LOGSITE_CODE='HO') and IG.TYPE " & global_52 & "  And IG.Code <>'MISC' and Resttype='Banquet'  ORDER BY IG.Name"
  loc_12A8B91:   unk_491E81.Execute var_E0, var_D4, -1
  loc_12A8BA2:   Set global_60 = var_88
  loc_12A8BBE: Else
  loc_12A8BD2:   var_C4 = "SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code WHERE (ITEMGRP.LOGSITE_CODE='" & MemVar_1F92078
  loc_12A8BD9:   var_D8 = var_C4 & "' or ITEMGRP.LOGSITE_CODE='HO') AND ItemGrp.Code<>'MISC'  AND ItemGrp.Type='Finish' and Depart.RestType in ('Outlet','Room Service','Production')  ORDER BY ItemGrp.Name"
  loc_12A8BE2:   unk_491E81.Execute var_D8, var_D4, -1
  loc_12A8BF3:   Set global_64 = var_88
  loc_12A8C11:   CVarUnk
  loc_12A8C16:   VerifyVarObj
  loc_12A8C1C:   Set var_88 = Me.DGHelp
  loc_12A8C22:   LateIdStAd
  loc_12A8C44:   var_C4 = "SELECT IG.Code,IG.Name As ItemGroup,IG.Type,D.Name As RestName,IG.SITE_CODE,IG.LOGSITE_CODE FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE (IG.LOGSITE_CODE='" & MemVar_1F92078
  loc_12A8C5C:   var_E0 = var_C4 & "' or IG.LOGSITE_CODE='HO') AND IG.TYPE " & global_52 & "  And IG.Code <>'MISC' and Resttype in ('Outlet','Room Service','Production')  ORDER BY IG.Name"
  loc_12A8C65:   unk_491E81.Execute var_E0, var_D4, -1
  loc_12A8C76:   Set global_60 = var_88
  loc_12A8C8F: End If
  loc_12A8C9A: If (global_52 = "='Finish'") Then
  loc_12A8CA8:   If (global_56 = "Banquet") Then
  loc_12A8CB1:     Call 0.Method_arg_54 ("Menu Category Master", var_88, var_88, global_64, var_88)
  loc_12A8CC2:     Set var_88 = Me.LblName
  loc_12A8CC8:     Call 0.Method_Form_Load0 (1, var_8C, "Venue Name", var_88)
  loc_12A8CD0:     var_8C.Caption = var_88
  loc_12A8CF7:     var_D8 = "Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' And RestType in('Banquet') Order by Name"
  loc_12A8D00:     unk_491E81.Execute var_D8, var_D4, -1
  loc_12A8D11:     Set global_68 = var_88
  loc_12A8D29:   Else
  loc_12A8D2F:     Call 0.Method_arg_54 ("Menu Group Master", var_88)
  loc_12A8D46:     Call 0.Method_Form_Load0 (1, var_8C, "Outlet Name")
  loc_12A8D4E:     var_8C.Caption = global_64
  loc_12A8D75:     var_D8 = "Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' And RestType in('Outlet','Room Service','Production') Order by Name"
  loc_12A8D7E:     unk_491E81.Execute var_D8, var_D4, -1
  loc_12A8D8F:     Set global_68 = Me.LblName
  loc_12A8DA4:   End If
  loc_12A8DA7: Else
  loc_12A8DB3:   Set var_88 = Me.LblName
  loc_12A8DB9:   Call 0.Method_Form_Load0 (1, var_8C, "Depart Name")
  loc_12A8DC1:   var_8C.Caption = var_88
  loc_12A8DD3:   Call 0.Method_arg_54 ("Item Group Entry")
  loc_12A8DF3:   var_D8 = "Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND OutletYN='N' Order by Name"
  loc_12A8DFC:   unk_491E81.Execute var_D8, var_D4, -1
  loc_12A8E0D:   Set global_68 = var_88
  loc_12A8E22: End If
  loc_12A8E2B: CVarUnk
  loc_12A8E30: VerifyVarObj
  loc_12A8E36: Set var_88 = Me.DGRest
  loc_12A8E3C: LateIdStAd
  loc_12A8E56: Set var_88 = Me
  loc_12A8E5F: var_C4 = "INI"
  loc_12A8E6D: Call Proc_25_34_E6F048(Proc_5_1_100CB50(var_C4, var_88, global_60, var_88), global_68)
  loc_12A8E81: Call 0.Method_arg_160 (var_88, var_88)
  loc_12A8E8F: Call 0.Method_arg_164 (var_88)
  loc_12A8E97: Call Proc_25_36_1249D28(var_88)
  loc_12A8E9C: Exit Sub
  loc_12A8E9D: ' Referenced from: 12A88D4
  loc_12A8EA5: Set var_88 = Err()
  loc_12A8EAB: Call 0.Method_arg_2C (var_C4)
  loc_12A8ECC: MsgBox(CVar(var_C4), &H40, "Information", var_104, var_124)
  loc_12A8EDF: Exit Sub
  loc_12A8EE0: Exit Sub
  loc_12A8EE1: () = 
  loc_12A8EE2: DOC
End Sub

Private Sub Form_Resize() 'EF45A8
  'Data Table: 491E68
  Dim var_8C As Label
  loc_EF44E6: Call 0.Method_arg_50 (var_88)
  loc_EF44F8: Me.LblFormCaption.Caption = var_88
  loc_EF4511: Me.LblFormCaption.Left = CDbl(0)
  loc_EF451D: Set var_A0 = Me.TopCtrl1
  loc_EF4523: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_EF4530: Set var_8C = Me.TopCtrl1
  loc_EF4536: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_EF4550: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_EF456B: Call 0.Method_arg_100 (var_B8)
  loc_EF457D: Me.LblFormCaption.Width = var_B8
  loc_EF4590: If (global_56 = "Banquet") Then
  loc_EF4593:   Exit Sub
  loc_EF4594: End If
  loc_EF459F: If (global_52 = "='Finish'") Then
  loc_EF45A2:   GoTo loc_EF45A5
  loc_EF45A5:   ' Referenced from: EF45A2
  loc_EF45A5: End If
  loc_EF45A5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E52E8C
  'Data Table: 491E68
  loc_E52E5F: Set global_60 = Nothing
  loc_E52E71: Set global_64 = Nothing
  loc_E52E83: Set global_68 = Nothing
  loc_E52E8A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8BB88
  'Data Table: 491E68
  loc_E8BB24: On Error Goto loc_E8BB44
  loc_E8BB3B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8BB43: Exit Sub
  loc_E8BB44: ' Referenced from: E8BB24
  loc_E8BB4C: Set var_88 = Err()
  loc_E8BB52: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8BB73: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8BB86: Exit Sub
  loc_E8BB87: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F3A804
  'Data Table: 491E68
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3A6FB: Me.DGHelp.Visible = False
  loc_F3A71A: If (Me.RecordCount > 0) Then
  loc_F3A759:   Set var_B4 = Me.Txt
  loc_F3A75F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3A767:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3A79A:   var_B0 = Me.Fields.Item("Code")
  loc_F3A7B9:   Set var_B4 = Me.Txt
  loc_F3A7BF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3A7C7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3A7DD: End If
  loc_F3A7E8: Set var_A8 = Me.Txt
  loc_F3A7EE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(2))
  loc_F3A7F6: var_B0.SetFocus
  loc_F3A802: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6EF1C
  'Data Table: 491E68
  loc_E6EEDA: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E6EEF1: Set var_8C = Me.FGPoint
  loc_E6EF0D: Proc_6_138_106D6F8(Me.DGHelp, global_64, CInt(2))
  loc_E6EF1B: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5BA0C
  'Data Table: 491E68
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5B92E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5B935:   Set var_A8 = Me.ListView
  loc_F5B97F:   Set var_C0 = Me.Txt
  loc_F5B985:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5B98D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5B9AD: End If
  loc_F5B9B9: Me.FrmList.Visible = False
  loc_F5B9E9: Set var_9C = Me.Txt
  loc_F5B9EF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5B9F7: var_A8.SetFocus
  loc_F5BA0B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F8C1F4
  'Data Table: 491E68
  Dim var_88 As Variant
  Dim var_94 As TextBox
  Dim Me As Recordset15
  Dim var_C0 As TextBox
  loc_F8C098: On Error Goto loc_F8C1EE
  loc_F8C0A8: Me.LblUser.Caption = vbNullString
  loc_F8C0BD: Me.LblLDt.Caption = vbNullString
  loc_F8C0E8: Call Proc_25_34_E6F048(Proc_5_1_100CB50("ADD", Me))
  loc_F8C0F3: Call Proc_25_35_EABD50(global_60)
  loc_F8C103: Set var_88 = Me.Txt
  loc_F8C109: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2))
  loc_F8C111: var_94.SetFocus
  loc_F8C134: If (Me.RecordCount > 0) Then
  loc_F8C170:   Set var_BC = Me.Txt
  loc_F8C176:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_C0)
  loc_F8C17E:   var_C0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_F8C1AC:   var_94 = Me.Fields.Item("Code")
  loc_F8C1CB:   Set var_BC = Me.Txt
  loc_F8C1D1:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_C0)
  loc_F8C1D9:   var_C0.Tag = Proc_6_38_E68A98(CVar(var_94))
  loc_F8C1ED: End If
  loc_F8C1ED: Exit Sub
  loc_F8C1EE: ' Referenced from: F8C098
  loc_F8C1EE: Proc_6_60_E62BC4(var_94)
  loc_F8C1F3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC5E6C
  'Data Table: 491E68
  loc_EC5DD4: On Error Goto loc_EC5E64
  loc_EC5E0E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC5E1D:   Set var_10C = Me
  loc_EC5E34:   Call Proc_25_34_E6F048(Proc_5_1_100CB50("INI", var_10C))
  loc_EC5E3F:   Call Proc_25_38_EF2F68(global_60)
  loc_EC5E44:   Call Proc_25_36_1249D28()
  loc_EC5E4C: Else
  loc_EC5E52:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC5E5A:   Call var_10C.SetFocus
  loc_EC5E63: End If
  loc_EC5E63: Exit Sub
  loc_EC5E64: ' Referenced from: EC5DD4
  loc_EC5E64: Proc_6_60_E62BC4()
  loc_EC5E69: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '112D05C
  'Data Table: 491E68
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim unk_491E81 As Connection15
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_112CD14: On Error Goto loc_112D00C
  loc_112CD25: If (Proc_183_56_FE8818(global_60) = &HFF) Then
  loc_112CD28:   Exit Sub
  loc_112CD29: End If
  loc_112CD5B: var_D0 = "Item Master"
  loc_112CDA3: If (Proc_6_108_1010FEC(MemVar_1F92044, "ItemMast", "ItemGroup", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_112CDA6:   Exit Sub
  loc_112CDA7: End If
  loc_112CDDE: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_112CDEA:   unk_491E81.BeginTrans var_CC
  loc_112CE00:   var_94 = Me.Bookmark 'Variant
  loc_112CE4C:   var_114 = "Delete From ItemGrp Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_112CE5A:   unk_491E81.Execute CStr(var_114), var_134, -1
  loc_112CEA5:   var_164 = 0
  loc_112CEB8:   var_15C = 0
  loc_112CEC3:   var_158 = 0
  loc_112CED6:   var_150 = 0
  loc_112CEE1:   var_14C = 0
  loc_112CEF4:   var_144 = 0
  loc_112CF34:   var_B0 = "ItemGrp"
  loc_112CF3D:   Proc_154_5_10E33A4(MemVar_1F92044, var_B0, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_112CF6B:   unk_491E81.CommitTrans
  loc_112CF7B:   Me.Requery -1
  loc_112CF8B:   Me.Requery -1
  loc_112CFAB:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_112CFB8:     Me.Bookmark = var_94
  loc_112CFC0:   Else
  loc_112CFD4:     If (Me.EOF = 0) Then
  loc_112CFDD:       Me.MoveLast
  loc_112CFE2:     End If
  loc_112CFE2:   End If
  loc_112CFE2:   Call Proc_25_36_1249D28(var_144, 0, var_14C, var_150)
  loc_112D003:   Proc_5_0_110649C(&HFF, Me, global_60, 0)
  loc_112D00B: End If
  loc_112D00B: Exit Sub
  loc_112D00C: ' Referenced from: 112CD14
  loc_112D012: unk_491E81.RollbackTrans
  loc_112D01F: Set var_98 = Err()
  loc_112D025: Call 0.Method_arg_2C (var_B0, 0, var_158)
  loc_112D046: MsgBox(CVar(var_B0), &H30, " Deletion Error ", var_114, var_134)
  loc_112D059: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F14D7C
  'Data Table: 491E68
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F14C84: On Error Goto loc_F14D73
  loc_F14C95: If (Proc_183_55_FE7900(global_60) = &HFF) Then
  loc_F14C98:   Exit Sub
  loc_F14C99: End If
  loc_F14CBC: Call Proc_25_34_E6F048(Proc_5_1_100CB50("EDIT", Me))
  loc_F14CD5: Set var_8C = Me.Txt
  loc_F14CDB: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F14CEE: global_76 = var_94.Text
  loc_F14D09: Set var_8C = Me.Txt
  loc_F14D0F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F14D17: var_94.Enabled = False
  loc_F14D2E: Set var_8C = Me.Txt
  loc_F14D34: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F14D3C: var_94.SetFocus
  loc_F14D55: Me.LblUser.Caption = vbNullString
  loc_F14D6A: Me.LblLDt.Caption = vbNullString
  loc_F14D72: Exit Sub
  loc_F14D73: ' Referenced from: F14C84
  loc_F14D73: Proc_6_60_E62BC4(global_60)
  loc_F14D78: Exit Sub
  loc_F14D79: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AE14
  'Data Table: 491E68
  loc_E1AE09: Me.Global.Unload Me
  loc_E1AE11: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F8AAF4
  'Data Table: 491E68
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F8A9A0: On Error Goto loc_F8AA8C
  loc_F8A9AC: var_88 = Me.RecordCount
  loc_F8A9BA: If (var_88 <= 0) Then
  loc_F8A9C3:   var_B8 = "Information"
  loc_F8A9DE:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F8A9EE:   Exit Sub
  loc_F8A9EF: End If
  loc_F8A9FA: If (global_56 = "Banquet") Then
  loc_F8AA04:   var_10C = "Select IG.Code As SearchCode,IG.Name,D.Name As DepartName FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE IG.LOGSITE_CODE IN ('HO','" & MemVar_1F92078
  loc_F8AA1C:   MemVar_1F920E4 = var_10C & "') AND  IG.TYPE " & global_52 & "  And IG.Code <>'MISC' and Resttype in ('Banquet')  ORDER BY D.Name,IG.Name"
  loc_F8AA2C: Else
  loc_F8AA33:   var_10C = "Select IG.Code As SearchCode,IG.Name,D.Name As DepartName FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE IG.LOGSITE_CODE IN ('HO','" & MemVar_1F92078
  loc_F8AA4B:   MemVar_1F920E4 = var_10C & "') AND IG.TYPE " & global_52 & "  And IG.Code <>'MISC' and Resttype in ('Outlet','Room Service','Production')  ORDER BY D.Name,IG.Name"
  loc_F8AA58: End If
  loc_F8AA5E: MemVar_1F92120 = Me
  loc_F8AA65: var_10C = "3000,2000"
  loc_F8AA6B: Proc_6_126_F1BCC0(var_10C, MemVar_1F920E4)
  loc_F8AA86: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F8AA8B: Exit Sub
  loc_F8AA8C: ' Referenced from: F8A9A0
  loc_F8AA94: Set var_118 = Err()
  loc_F8AA9A: Call 0.Method_arg_1C (var_88)
  loc_F8AAAB: If (var_88 <> 0) Then
  loc_F8AAB6:   Set var_118 = Err()
  loc_F8AABC:   Call 0.Method_arg_2C (var_10C)
  loc_F8AADD:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F8AAF0: End If
  loc_F8AAF0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E35178
  'Data Table: 491E68
  loc_E35168: Proc_5_0_110649C(&HFF, Me)
  loc_E35170: Call Proc_25_36_1249D28(global_60)
  loc_E35175: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E34E78
  'Data Table: 491E68
  loc_E34E68: Proc_5_0_110649C(&HFF, Me)
  loc_E34E70: Call Proc_25_36_1249D28(global_60)
  loc_E34E75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E34ED8
  'Data Table: 491E68
  loc_E34EC8: Proc_5_0_110649C(&HFF, Me)
  loc_E34ED0: Call Proc_25_36_1249D28(global_60)
  loc_E34ED5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E34F38
  'Data Table: 491E68
  loc_E34F28: Proc_5_0_110649C(&HFF, Me)
  loc_E34F30: Call Proc_25_36_1249D28(global_60)
  loc_E34F35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1084070
  'Data Table: 491E68
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_491E81 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1083DD8: On Error Goto loc_1084027
  loc_1083DF2: var_A0 = "select IG.Code,IG.Name As ItemGroup,IG.Type,D.Name As RestName FROM ItemGrp IG Left Join Depart D ON IG.RestCode=D.Code WHERE IG.TYPE " & global_52
  loc_1083E02: unk_491E81.Execute var_A0 & "  And iG.Code <>'MISC' and Resttype='Outlet'   ORDER BY IG.Name", var_C4, -1
  loc_1083E0D: Set var_88 = var_C8
  loc_1083E23: var_CC = var_88.RecordCount
  loc_1083E31: If (var_CC = 0) Then
  loc_1083E4D:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1083E5D:   Exit Sub
  loc_1083E5E: End If
  loc_1083E6D: var_A4 = MemVar_1F920B4 & "\ItemGrp.ttx"
  loc_1083E74: Set var_C8 = var_88 
  loc_1083E80: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1083E8A: Set var_88 = var_C8
  loc_1083E90: var_B4 = CVar(var_12E) 'Integer
  loc_1083E93: var_98 = var_B4 'Variant
  loc_1083EAF: var_A0 = MemVar_1F920B4 & "\ItemGrp.RPT"
  loc_1083EB8: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1083EC3: MemVar_1F921E4 = var_C8
  loc_1083EDE: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1083EE6: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1083EF2: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1083F0B:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1083F13:   Call 0.Method_arg_20 (var_138)
  loc_1083F1B:   Call 0.Method_arg_30 (var_A0)
  loc_1083F61:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1083F77:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1083F7F:     Call 0.Method_arg_20 (var_138)
  loc_1083F87:     Call 0.Method_arg_38 ("'Item Group Master'")
  loc_1083F93:   End If
  loc_1083F96: Next var_132 'Integer
  loc_1083FB4: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1083FBC: Call 0.Method_arg_2C (var_DC)
  loc_1083FCA: Call 0.Method_arg_150 (var_FC)
  loc_1083FD5: Call 0.Method_arg_50 (var_A0)
  loc_1083FDF: Set var_138 = Nothing
  loc_1083FF9: Set var_C8 = MemVar_1F921E4 
  loc_1084005: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_1084010: MemVar_1F921E4 = var_C8
  loc_1084023: Set var_88 = Nothing
  loc_1084026: Exit Sub
  loc_1084027: ' Referenced from: 1083DD8
  loc_108402F: Set var_C8 = Err()
  loc_1084035: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1084040: Call 0.Method_arg_50 (var_A4)
  loc_108405C: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108406F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E23B5C
  'Data Table: 491E68
  Dim Me As Recordset15
  loc_E23B43: Me.Requery -1
  loc_E23B53: Me.Requery -1
  loc_E23B58: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12B8CE4
  'Data Table: 491E68
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_491E81 As Connection15
  Dim var_90 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_11C As String
  Dim var_114 As TextBox
  Dim var_130 As String
  Dim var_128 As TextBox
  Dim var_164 As Variant
  Dim var_118 As String
  Dim var_12C As String
  Dim var_B0 As Variant
  loc_12B86F8: On Error Goto loc_12B8C92
  loc_12B86FF: var_86 = CByte(0) 'Byte
  loc_12B870E: Set var_90 = Me.Txt
  loc_12B8714: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_12B873D: If (Proc_6_27_EA565C(var_94, "Item Group") = 0) Then
  loc_12B8747:   Call Txt_GotFocus()
  loc_12B874C:   Exit Sub
  loc_12B874D: End If
  loc_12B8758: If (global_52 = "<>'Finish'") Then
  loc_12B8766:   Set var_90 = Me.Txt
  loc_12B876C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_94)
  loc_12B8795:   If (Proc_6_27_EA565C(var_94, "Type") = 0) Then
  loc_12B879F:     Call Txt_GotFocus()
  loc_12B87A4:     Exit Sub
  loc_12B87A5:   End If
  loc_12B87A5: End If
  loc_12B87B0: If (global_52 = "='Finish'") Then
  loc_12B87C1:   Set var_90 = Me.Txt
  loc_12B87C7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_94, "Finish")
  loc_12B87CF:   var_94.Text = CInt(3)
  loc_12B87DB: End If
  loc_12B87DE: Call Proc_25_37_10F7274(var_9E, CInt(2))
  loc_12B87E9: If (var_9E = &HFF) Then
  loc_12B87EC:   Exit Sub
  loc_12B87ED: End If
  loc_12B87F1: Set var_90 = Me.TopCtrl1
  loc_12B87F7: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_12B8810: If (CStr() = "Add") Then
  loc_12B8819:   var_D4 = 0
  loc_12B8836:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemGrp Where ISNUmeric(substring(Code,3,4))=1 and SITE_CODE='" & MemVar_1F92070
  loc_12B883D:   var_B4 = CStr() & "' AND Code <>'MISC'"
  loc_12B8846:   unk_491E81.Execute var_B4, var_B0, -1
  loc_12B884E:   var_90 = var_90.Fields
  loc_12B8856:   var_D4 = var_94.Item(var_94)
  loc_12B885E:   var_98 = var_98.Value
  loc_12B8897:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_12B88BD:   var_E4 = Format(CStr(var_E4), "0000")
  loc_12B88C5:   var_108 = (1 + var_E4)
  loc_12B88D0:   global_72 = CStr(var_108)
  loc_12B88E5: Else
  loc_12B8902:   var_94 = Me.Fields.Item("Code")
  loc_12B8919:   global_72 = CStr(var_94.Value)
  loc_12B892A: End If
  loc_12B8933: unk_491E81.BeginTrans var_10C
  loc_12B893C: var_86 = CByte(1) 'Byte
  loc_12B8944: Set var_90 = Me.TopCtrl1
  loc_12B894A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_12B8963: If (CStr(var_F8) = "Add") Then
  loc_12B897D:   var_9C = "Insert Into ItemGrp(Code,Name,Type,RestCode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_72
  loc_12B8984:   var_E8 = var_9C & "','"
  loc_12B8995:   Set var_90 = Me.Txt
  loc_12B899B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, var_B4, var_E8)
  loc_12B89A3:   var_1A8 = var_94.Text
  loc_12B89AC:   var_110 = -1 & var_B4
  loc_12B89B3:   var_11C = var_110 & "','"
  loc_12B89C4:   Set var_98 = Me.Txt
  loc_12B89CA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_114, var_118)
  loc_12B89D2:   var_11C = var_114.Text
  loc_12B89E2:   var_130 = var_1AC & var_118 & "','"
  loc_12B89F3:   Set var_124 = Me.Txt
  loc_12B89F9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_128, var_12C)
  loc_12B8A01:   var_130 = var_128.Tag
  loc_12B8A3E:   Proc_6_7_F25D88(var_E4, Date)
  loc_12B8A59:   var_164 = CVar(var_E4 & var_12C & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") & var_E4 & ",'A','" & CVar(MemVar_1F92078) 
  loc_12B8A70:   unk_491E81.Execute CStr(var_164 & "' )"), , 
  loc_12B8ABD: Else
  loc_12B8ADB:   Set var_90 = Me.Txt
  loc_12B8AE1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, var_9C, "UPDATE ItemGrp SET Name='")
  loc_12B8AE9:   var_1A8 = var_94.Text
  loc_12B8AF2:   var_B4 = -1 & var_9C
  loc_12B8AF9:   var_110 = var_B4 & "',Type='"
  loc_12B8B0A:   Set var_98 = Me.Txt
  loc_12B8B10:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_114, var_E8)
  loc_12B8B18:   var_110 = var_114.Text
  loc_12B8B44:   var_F8 = CVar(var_124 & var_E8 & "',SITE_CODE='" & MemVar_1F92070 & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_12B8B55:   Proc_6_7_F25D88(var_E4, Date)
  loc_12B8B5D:   var_108 = var_F8 & var_E4 
  loc_12B8B61:   var_C4 = " ,U_AE='E' WHERE Code='"
  loc_12B8B8A:   unk_491E81.Execute CStr(var_108 & var_C4 & CVar(global_72) & "'"), , 
  loc_12B8BC6: End If
  loc_12B8BCC: unk_491E81.CommitTrans
  loc_12B8BD5: var_86 = CByte(0) 'Byte
  loc_12B8BE4: Me.Requery -1
  loc_12B8BF4: Me.Requery -1
  loc_12B8C21: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_12B8C31: Set var_90 = Me.TopCtrl1
  loc_12B8C37: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_12B8C50: If (CStr() = "Add") Then
  loc_12B8C53:   Call TopCtrl1_UnknownEvent_A()
  loc_12B8C58:   Exit Sub
  loc_12B8C59: End If
  loc_12B8C6E: var_9C = "INI"
  loc_12B8C7C: Call Proc_25_34_E6F048(Proc_5_1_100CB50(var_9C, Me))
  loc_12B8C87: Call Proc_25_38_EF2F68(global_60)
  loc_12B8C8C: Call Proc_25_36_1249D28()
  loc_12B8C91: Exit Sub
  loc_12B8C92: ' Referenced from: 12B86F8
  loc_12B8C9B: If (CInt(var_86) = 1) Then
  loc_12B8CA4:   unk_491E81.RollbackTrans
  loc_12B8CA9: End If
  loc_12B8CB1: Set var_90 = Err()
  loc_12B8CB7: Call 0.Method_arg_2C (var_9C)
  loc_12B8CD0: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_12B8CE3: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F373C4
  'Data Table: 491E68
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F372BB: Me.DGRest.Visible = False
  loc_F372DA: If (Me.RecordCount > 0) Then
  loc_F37319:   Set var_B4 = Me.Txt
  loc_F3731F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F37327:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3735A:   var_B0 = Me.Fields.Item("Code")
  loc_F37379:   Set var_B4 = Me.Txt
  loc_F3737F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(1), var_B8)
  loc_F37387:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3739D: End If
  loc_F373A8: Set var_A8 = Me.Txt
  loc_F373AE: Call 0.Method_DGRest_UnknownEvent_90 (CInt(1))
  loc_F373B6: var_B0.SetFocus
  loc_F373C2: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E6EFB0
  'Data Table: 491E68
  loc_E6EF6E: Proc_6_153_E91194(Me.DGRest, arg_14)
  loc_E6EF85: Set var_8C = Me.FGPoint
  loc_E6EFA1: Proc_6_138_106D6F8(Me.DGRest, global_68, CInt(1))
  loc_E6EFAF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1256960
  'Data Table: 491E68
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_125641A: Set var_88 = Me.Txt
  loc_1256420: Call 0.Method_Txt_GotFocus0 (Index)
  loc_125642E: Proc_6_74_E226B0(var_8C)
  loc_125643A: Call Proc_25_38_EF2F68(var_8C)
  loc_1256442: var_92 = Index
  loc_125644D: If (var_92 = CInt(1)) Then
  loc_1256467:   If (Me.RecordCount > 0) Then
  loc_1256475:     Set var_8C = Me.FGPoint
  loc_125648D:     Proc_6_137_1193554(Me.DGRest, global_68, Index)
  loc_125649B:   End If
  loc_12564E9:   Set var_88 = Me.Txt
  loc_12564EF:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12564F7:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_125650F:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_125651F:     Set var_88 = Me.Txt
  loc_1256525:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_125652D:     var_8C.Tag = vbNullString
  loc_1256539:     Exit Sub
  loc_125653A:   End If
  loc_1256547:   Set var_88 = Me.Txt
  loc_125654D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1256555:   var_A0 = var_8C.Text
  loc_1256567:   var_B0 = "Name"
  loc_12565A2:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_12565AB:     Me.MoveFirst
  loc_12565CE:     Set var_88 = Me.Txt
  loc_12565D4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_12565DC:     0 = var_8C.Text
  loc_12565F5:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_125660A:   End If
  loc_125660D: Else
  loc_1256615:   If (var_92 = CInt(2)) Then
  loc_125662F:     If (Me.RecordCount > 0) Then
  loc_125663D:       Set var_8C = Me.FGPoint
  loc_1256655:       Proc_6_137_1193554(Me.DGHelp, global_64)
  loc_1256663:     End If
  loc_12566B1:     Set var_88 = Me.Txt
  loc_12566B7:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12566BF:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12566D7:     If (Index Or (var_A0 = vbNullString)) Then
  loc_12566E7:       Set var_88 = Me.Txt
  loc_12566ED:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12566F5:       var_8C.Tag = vbNullString
  loc_1256701:       Exit Sub
  loc_1256702:     End If
  loc_125670F:     Set var_88 = Me.Txt
  loc_1256715:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_125671D:     var_A0 = var_8C.Text
  loc_125672F:     var_B0 = "Name"
  loc_1256746:     var_B4 = Me.Fields.Item(var_B0)
  loc_125676A:     If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_1256773:       Me.MoveFirst
  loc_1256796:       Set var_88 = Me.Txt
  loc_125679C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_12567A4:       0 = var_8C.Text
  loc_12567BD:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_12567D2:     End If
  loc_12567D5:   Else
  loc_12567DD:     If (var_92 = CInt(3)) Then
  loc_12567EF:       Set var_88 = Me.Txt
  loc_12567F5:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12567FD:       var_8C.SelStart = 0
  loc_1256816:       Set var_88 = Me.Txt
  loc_125681C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1256824:       var_A0 = var_8C.Text
  loc_1256837:       Set var_90 = Me.Txt
  loc_125683D:       Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_1256845:       var_B4.SelLength = Len(var_A0)
  loc_1256865:       ReDim var_F0(0 To 3)
  loc_125687C:       var_F0(0) = "Semi Finish"
  loc_125688B:       var_F0(1) = "Consumables"
  loc_125689A:       var_F0(2) = "Raw Material"
  loc_12568A9:       var_F0(3) = "Store Item"
  loc_12568C0:       global_80 = Array(var_F0)
  loc_12568CB:       Set var_B4 = Me.ListView
  loc_12568E6:       Set var_8C = Me.Txt
  loc_1256900:       Set global_96 = Proc_6_66_EFF8FC(var_B4, var_8C, Index)
  loc_125691E:       Set var_88 = Me.Txt
  loc_1256924:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_125692C:       global_80 = var_8C.Text
  loc_125693E:       Set var_90 = Me.Txt
  loc_1256944:       Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_125694C:       var_B4.Tag = 4
  loc_125695F:     End If
  loc_125695F:   End If
  loc_125695F: End If
  loc_125695F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '120A92C
  'Data Table: 491E68
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  Dim var_B0 As TextBox
  Dim var_C0 As TextBox
  Dim var_90 As DataGrid
  Dim var_FC As Variant
  Dim var_A0 As Frame
  loc_120A48E: If (CLng(Shift) = &H1B) Then
  loc_120A491:   Call Proc_25_38_EF2F68()
  loc_120A496:   Exit Sub
  loc_120A497: End If
  loc_120A49A: var_88 = KeyCode
  loc_120A4A5: If (var_88 = CInt(2)) Then
  loc_120A4CA:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_120A4EA:     Set var_A0 = Me.FGPoint
  loc_120A51C:     Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(2), global_64, Shift)
  loc_120A530:   End If
  loc_120A589:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_120A5AF:     Proc_6_138_106D6F8(Me.DGHelp, global_64, KeyCode, Me.FGPoint, 0)
  loc_120A5BD:   End If
  loc_120A5C0: Else
  loc_120A5C8:   If (var_88 = CInt(1)) Then
  loc_120A5D6:     Set var_B0 = Me.Txt
  loc_120A5E8:     Set var_A8 = Me.FGPoint
  loc_120A5F3:     Set var_A0 = Nothing
  loc_120A621:     Proc_6_69_134A198(Me.DGRest, var_B0, KeyCode, global_68, Shift, 0, 1)
  loc_120A640:     var_8C = Me.RecordCount
  loc_120A690:     If ((var_8C > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_120A697:       Set var_A0 = Me.DGRest
  loc_120A69E:       Set var_94 = Me.FGPoint
  loc_120A6B6:       Proc_6_138_106D6F8(var_A0, global_68, KeyCode, var_94, var_A0, var_A8)
  loc_120A6C4:     End If
  loc_120A6C7:   Else
  loc_120A6CF:     If (var_88 = CInt(3)) Then
  loc_120A6F4:       Set var_90 = Me.Txt
  loc_120A6FA:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, 0)
  loc_120A702:       1 = var_94.Left
  loc_120A714:       Set var_A0 = Me.Txt
  loc_120A71A:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_120A722:       var_A0 = var_A8.Top
  loc_120A734:       Set var_AC = Me.Txt
  loc_120A73A:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0, var_BC)
  loc_120A742:       0 = var_B0.Height
  loc_120A754:       Set var_B4 = Me.Txt
  loc_120A75A:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_120A762:       var_C4 = var_C0.Width
  loc_120A7AA:       Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_120A7CE:     End If
  loc_120A7CE:   End If
  loc_120A7CE: End If
  loc_120A824: If (((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGRest.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_120A83A:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(1))) Then
  loc_120A843:     Proc_6_76_E52838(Shift, arg_14, CInt(var_8C), CInt((var_B8 + var_BC)))
  loc_120A848:   End If
  loc_120A893:   var_FC = ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And IIf((global_52 = "='Finish'"), (KeyCode <> CInt(2)), (KeyCode <> CInt(3)))
  loc_120A8A6:   If CBool(var_FC) Then
  loc_120A8AF:     Proc_6_75_E527CC(Shift, arg_14, CInt(var_C4))
  loc_120A8B4:   End If
  loc_120A8FF:   var_FC = ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And IIf((global_52 = "='Finish'"), (KeyCode = CInt(2)), (KeyCode = CInt(3)))
  loc_120A912:   If CBool(var_FC) Then
  loc_120A91D:     Call Txt_Validate(KeyCode)
  loc_120A925:     Call Proc_25_39_E8FDD4(KeyCode, 0)
  loc_120A92A:   End If
  loc_120A92A: End If
  loc_120A92A: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EEE5DC
  'Data Table: 491E68
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EEE51A: Proc_6_133_E7EF78(var_94)
  loc_EEE52F: If (CInt(var_94) = &HD) Then
  loc_EEE534:   arg_10 = 0
  loc_EEE537: End If
  loc_EEE53A: Proc_6_58_E054C0(arg_10, arg_10)
  loc_EEE54D: If (KeyAscii = CInt(1)) Then
  loc_EEE56C:   If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EEE599:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_EEE5CB:     Proc_6_138_106D6F8(Me.DGRest, global_68, KeyAscii, Me.FGPoint)
  loc_EEE5D9:   End If
  loc_EEE5D9: End If
  loc_EEE5D9: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F29764
  'Data Table: 491E68
  Dim var_86 As Integer
  loc_F29663: var_86 = KeyCode
  loc_F2966E: If (var_86 = CInt(2)) Then
  loc_F2968D:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F2969A:     var_A4 = "Name"
  loc_F296B9:     Proc_6_80_FF0AC0(Me.Txt, CInt(2), global_64)
  loc_F296EB:     Proc_6_138_106D6F8(Me.DGHelp, global_64, KeyCode, Me.FGPoint)
  loc_F296F9:   End If
  loc_F296FC: Else
  loc_F29704:   If (var_86 = CInt(3)) Then
  loc_F29722:     If (Me.FrmList.Visible = &HFF) Then
  loc_F29751:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F29761:     End If
  loc_F29761:   End If
  loc_F29761: End If
  loc_F29761: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E50904
  'Data Table: 491E68
  loc_E508E2: Set var_88 = Me.Txt
  loc_E508E8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E508F6: Proc_6_73_E22704(var_8C)
  loc_E50902: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '11233B4
  'Data Table: 491E68
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim unk_491E81 As Connection15
  Dim var_D4 As String
  Dim var_C4 As Variant
  loc_112305B: var_86 = Cancel
  loc_1123066: If (var_86 = CInt(2)) Then
  loc_112306C:   Call Proc_25_37_10F7274(var_88)
  loc_1123077:   If (var_88 = &HFF) Then
  loc_112307C:     arg_10 = &HFF
  loc_112307F:     Exit Sub
  loc_1123080:   End If
  loc_1123083: Else
  loc_112308B:   If (var_86 = CInt(1)) Then
  loc_11230AE:     var_88 = Me.EOF
  loc_11230DC:     Set var_94 = Me.Txt
  loc_11230E2:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_11230EA:     ((Me.RecordCount = 0) Or ((var_88 = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1123102:     If (arg_10 Or (var_9C = vbNullString)) Then
  loc_1123112:       Set var_94 = Me.Txt
  loc_1123118:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1123120:       var_98.Tag = vbNullString
  loc_112312C:       Exit Sub
  loc_112312D:     End If
  loc_1123168:     Set var_B0 = Me.Txt
  loc_112316E:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1123176:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11231A1:     var_94 = Me.Fields
  loc_11231B1:     var_C4 = var_94.Item("Code").Value
  loc_11231C7:     Set var_B0 = Me.Txt
  loc_11231CD:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_11231D5:     var_B4.Tag = CStr(var_C4)
  loc_11231F6:     If (global_56 = "Banquet") Then
  loc_112320F:       unk_491E81.Execute "SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code WHERE ItemGrp.Code<>'MISC'  AND ItemGrp.Type='Finish' and Depart.RestType='Banquet' ORDER BY ItemGrp.Name", var_C4, -1
  loc_1123220:       Set global_64 = var_94
  loc_1123237:       CVarUnk
  loc_112323C:       VerifyVarObj
  loc_1123242:       Set var_94 = Me.DGHelp
  loc_1123248:       LateIdStAd
  loc_1123259:     Else
  loc_1123266:       var_D4 = "SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code WHERE ItemGrp.Code<>'MISC'  AND ItemGrp.Type='Finish' and Depart.RestType in ('Outlet','Room Service','Production')  AND RestCode='"
  loc_1123288:       var_98 = Me.Fields.Item("Code")
  loc_11232A5:       var_9C = CStr(var_D4 & var_98.Value & "' ORDER BY ItemGrp.Name")
  loc_11232AF:       unk_491E81.Execute var_9C, var_124, -1
  loc_11232C0:       Set global_64 = var_B0
  loc_11232E6:       CVarUnk
  loc_11232EB:       VerifyVarObj
  loc_11232F1:       Set var_94 = Me.DGHelp
  loc_11232F7:       LateIdStAd
  loc_1123305:     End If
  loc_1123308:   Else
  loc_1123310:     If (var_86 = CInt(3)) Then
  loc_1123316:       Call Proc_25_37_10F7274(var_88, var_94, global_64, var_B0)
  loc_1123321:       If (var_88 = &HFF) Then
  loc_1123326:         arg_10 = &HFF
  loc_1123329:         Exit Sub
  loc_112332A:       End If
  loc_1123337:       Set var_94 = Me.Txt
  loc_112333D:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C, arg_10)
  loc_1123345:       var_94 = var_98.Text
  loc_112335C:       If (var_9C <> vbNullString) Then
  loc_112338F:         Set var_B0 = Me.Txt
  loc_1123395:         Call 0.Method_Txt_Validate0 (Cancel, var_B4, Me.ListView.SelectedItem.Text)
  loc_112339D:         var_B4.Text = global_64
  loc_11233B3:       End If
  loc_11233B3:     End If
  loc_11233B3:   End If
  loc_11233B3: End If
  loc_11233B3: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E63384
  'Data Table: 491E68
  loc_E63354: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E63357:   Call DGHelp_UnknownEvent_9()
  loc_E6335C: End If
  loc_E63378: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E6337B:   Call DGRest_UnknownEvent_9()
  loc_E63380: End If
  loc_E63380: Exit Sub
End Sub

Public Function global_52Get() '492B88
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '492B97
  global_52 = Value
End Sub

Public Function global_56Get() '492BA6
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '492BB5
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC5AE4
  'Data Table: 491E68
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC5A5A: On Error Goto loc_EC5A9F
  loc_EC5A63: Me.MoveFirst
  loc_EC5A7D: var_8C = "code='" & MyValue
  loc_EC5A8D: Me.Find var_8C & "'", 0, 1
  loc_EC5A99: Call Proc_25_36_1249D28(var_A0)
  loc_EC5A9E: Exit Sub
  loc_EC5A9F: ' Referenced from: EC5A5A
  loc_EC5AA7: Set var_A4 = Err()
  loc_EC5AAD: Call 0.Method_arg_2C (var_8C)
  loc_EC5ACE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC5AE1: Exit Sub
  loc_EC5AE2: Exit Sub
End Sub

Public Sub Proc_25_34_E6F048(arg_C) 'E6F048
  'Data Table: 491E68
  Dim var_98 As TextBox
  loc_E6EFFA: Set var_8C = Me.Txt
  loc_E6F000: Call 0.Method_Proc_25_34_E6F048C (var_8E, var_86)
  loc_E6F00D: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_E6F023:   Set var_8C = Me.Txt
  loc_E6F029:   Call 0.Method_Proc_25_34_E6F0480 (CInt(var_86), var_98)
  loc_E6F031:   var_98.Enabled = arg_C
  loc_E6F040: Next var_92 'Byte
  loc_E6F046: Exit Sub
End Sub

Public Sub Proc_25_35_EABD50
  'Data Table: 491E68
  Dim var_98 As TextBox
  loc_EABCC6: global_76 = vbNullString
  loc_EABCD8: Set var_8C = Me.Txt
  loc_EABCDE: Call 0.Method_Proc_25_35_EABD50C (var_8E, var_86)
  loc_EABCEB: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_EABD01:   Set var_8C = Me.Txt
  loc_EABD07:   Call 0.Method_Proc_25_35_EABD500 (CInt(var_86), var_98)
  loc_EABD0F:   var_98.Text = vbNullString
  loc_EABD2B:   Set var_8C = Me.Txt
  loc_EABD31:   Call 0.Method_Proc_25_35_EABD500 (CInt(var_86), var_98)
  loc_EABD39:   var_98.Tag = vbNullString
  loc_EABD48: Next var_92 'Byte
  loc_EABD4E: Exit Sub
End Sub

Public Sub Proc_25_36_1249D28
  'Data Table: 491E68
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim unk_491E81 As Connection15
  Dim var_88 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As TextBox
  loc_124981C: On Error Goto loc_1249CE2
  loc_1249836: If (Me.RecordCount > 0) Then
  loc_124988F:   unk_491E81.Execute CStr("Select U_Name,U_AE,U_EntDt From itemgrp where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1
  loc_124989A:   Set var_88 = var_11C
  loc_12498EE:   var_11C = var_88.Fields
  loc_1249957:   var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_124999C:   Me.LblUser.Caption = CStr(var_11C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_1249A16:   var_120 = var_88.Fields.Item("U_AE")
  loc_1249A2F:   var_118 = "entdt : "
  loc_1249A3A:   var_F4 = "Last Update : "
  loc_1249A77:   var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_120)) = "E"), var_F4, var_118))
  loc_1249ABC:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1249AF4: End If
  loc_1249AFA: Proc_183_45_E5C118(global_60)
  loc_1249B16: If (Me.RecordCount <= 0) Then
  loc_1249B19:   Call Proc_25_35_EABD50()
  loc_1249B21: Else
  loc_1249B55:   global_72 = CStr(Me.Fields.Item("ItemGroup").Value)
  loc_1249BA2:   Set var_11C = Me.Txt
  loc_1249BA8:   Call 0.Method_Proc_25_36_1249D280 (CInt(2), var_120)
  loc_1249BB0:   var_120.Text = CStr(Me.Fields.Item("ItemGroup").Value)
  loc_1249C02:   Set var_11C = Me.Txt
  loc_1249C08:   Call 0.Method_Proc_25_36_1249D280 (CInt(2), var_120)
  loc_1249C10:   var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1249C5F:   Set var_11C = Me.Txt
  loc_1249C65:   Call 0.Method_Proc_25_36_1249D280 (CInt(1), var_120)
  loc_1249C6D:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestName")))
  loc_1249CAF:   var_F8 = CStr(Me.Fields.Item("Type").Value)
  loc_1249CBD:   Set var_11C = Me.Txt
  loc_1249CC3:   Call 0.Method_Proc_25_36_1249D280 (CInt(3), var_120)
  loc_1249CCB:   var_120.Text = var_F8
  loc_1249CE1: End If
  loc_1249CE1: Exit Sub
  loc_1249CE2: ' Referenced from: 124981C
  loc_1249CEA: Set var_90 = Err()
  loc_1249CF0: Call 0.Method_arg_2C (var_F8)
  loc_1249D11: MsgBox(CVar(var_F8), &H40, "Information", var_F4, var_118)
  loc_1249D24: Exit Sub
End Sub

Public Sub Proc_25_37_10F7274
  'Data Table: 491E68
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_491E81 As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_C0 As String
  loc_10F6F97: If (Me.RecordCount = 0) Then
  loc_10F6F9A:   Proc_25_37_10F7274 = 
  loc_10F6FA0: End If
  loc_10F6FA4: Set var_90 = Me.TopCtrl1
  loc_10F6FAA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F6FC3: If (CStr() = "Add") Then
  loc_10F6FCC:   var_F4 = 0
  loc_10F7001:   Set var_90 = Me.Txt
  loc_10F7007:   Call 0.Method_Proc_25_37_10F72740 (CInt(2), var_A8, var_AC, "Select Count(*) From ItemGrp Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10F7030:   Set var_B8 = Me.Txt
  loc_10F7036:   Call 0.Method_Proc_25_37_10F72740 (CInt(1), var_BC, var_C0, var_E4 & var_AC & "' And RestCode='")
  loc_10F703E:   var_F4 = var_BC.Tag
  loc_10F7047:   var_C8 = var_F8 & var_C0
  loc_10F7057:   unk_491E81.Execute var_C8 & "'", var_108, 
  loc_10F705F:    = var_A8.Text.Fields
  loc_10F7067:    = var_E4.Item()
  loc_10F706F:    = var_F8.Value
  loc_10F70AA:   If (var_108 > 0) Then
  loc_10F70B8:     var_108 = "Information"
  loc_10F70C8:     var_A0 = "Duplicate Name"
  loc_10F70CE:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_10F70E9:     Set var_90 = Me.Txt
  loc_10F70EF:     Call 0.Method_Proc_25_37_10F72740 (CInt(2))
  loc_10F70F7:     var_A8.SetFocus
  loc_10F7108:     Proc_25_37_10F7274 = &HFF
  loc_10F710E:   End If
  loc_10F7111: Else
  loc_10F7117:   var_F4 = 0
  loc_10F714C:   Set var_90 = Me.Txt
  loc_10F7152:   Call 0.Method_Proc_25_37_10F72740 (CInt(2), var_A8, var_AC, "Select Count(*) From ItemGrp Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (Name='", var_A0, -1)
  loc_10F718C:   Set var_B8 = Me.Txt
  loc_10F7192:   Call 0.Method_Proc_25_37_10F72740 (CInt(1), var_BC, var_C8, var_E4 & var_AC & "' And Name<>'" & global_76 & "') And RestCode='")
  loc_10F719A:   var_F4 = var_BC.Tag
  loc_10F71B3:   unk_491E81.Execute var_F8 & var_C8 & "'", var_108, var_A8
  loc_10F71BB:    = var_A8.Text.Fields
  loc_10F71C3:    = var_E4.Item()
  loc_10F71CB:    = var_F8.Value
  loc_10F720A:   If (var_108 > 0) Then
  loc_10F722E:     MsgBox("Duplicate Name", &H40, "Information", var_128, var_148)
  loc_10F7249:     Set var_90 = Me.Txt
  loc_10F724F:     Call 0.Method_Proc_25_37_10F72740 (CInt(2))
  loc_10F7257:     var_A8.SetFocus
  loc_10F7268:     Proc_25_37_10F7274 = &HFF
  loc_10F726E:   End If
  loc_10F726E: End If
  loc_10F726E: Proc_25_37_10F7274 = var_A8
End Sub

Public Sub Proc_25_38_EF2F68
  'Data Table: 491E68
  loc_EF2EAC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF2EBE:   Me.DGHelp.Visible = False
  loc_EF2EC6: End If
  loc_EF2EE2: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF2EF4:   Me.DGRest.Visible = False
  loc_EF2EFC: End If
  loc_EF2F17: If (Me.FrmList.Visible = &HFF) Then
  loc_EF2F26:   Me.FrmList.Visible = False
  loc_EF2F2E: End If
  loc_EF2F4A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF2F5C:   Me.FGPoint.Visible = False
  loc_EF2F64: End If
  loc_EF2F64: Exit Sub
End Sub

Public Sub Proc_25_39_E8FDD4(arg_C) 'E8FDD4
  'Data Table: 491E68
  Dim var_10C As TextBox
  loc_E8FD68: Call Proc_25_38_EF2F68()
  loc_E8FDA4: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8FDA7:   Call TopCtrl1_UnknownEvent_16()
  loc_E8FDAF: Else
  loc_E8FDB9:   Set var_108 = Me.Txt
  loc_E8FDBF:   Call 0.Method_Proc_25_39_E8FDD40 (arg_C)
  loc_E8FDC7:   var_10C.SetFocus
  loc_E8FDD3: End If
  loc_E8FDD3: Exit Sub
End Sub
