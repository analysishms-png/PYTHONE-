VERSION 5.00
Begin VB.Form GroupProfile
  Caption = "Group Profile"
  BackColor = &HBFEAD0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11580
  ClientHeight = 6960
  Begin DataGrid DGCity
    Left = 7575
    Top = 6030
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
  End
  Begin DataGrid DGMarketSeg
    Left = 7875
    Top = 5610
    Width = 3990
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 36
  End
  Begin DataGrid DGTravelAg
    Left = 5895
    Top = 5940
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 35
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 2265
    Width = 3180
    Height = 255
    Enabled = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 2805
    Width = 3180
    Height = 255
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 3075
    Width = 3180
    Height = 255
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 3345
    Width = 3180
    Height = 255
    Enabled = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    Left = 5865
    Top = 4155
    Width = 1320
    Height = 255
    Enabled = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 5
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 4155
    Width = 2205
    Height = 255
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 15
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 3885
    Width = 4665
    Height = 255
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 3615
    Width = 4665
    Height = 255
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 2535
    Width = 3180
    Height = 255
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    Left = 5715
    Top = 1995
    Width = 1470
    Height = 255
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 7
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    Left = 5715
    Top = 1455
    Width = 1470
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 1995
    Width = 3180
    Height = 255
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 1725
    Width = 3180
    Height = 255
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 30
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 1455
    Width = 3180
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 1185
    Width = 4665
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 915
    Width = 4665
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2520
    Top = 645
    Width = 4665
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11580
    Height = 375
    TabIndex = 0
  End
  Begin DataGrid DGBusiness
    Left = 8340
    Top = 5130
    Width = 4125
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 30
  End
  Begin MSFlexGrid FGPoint
    Left = 9645
    Top = 4245
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 34
  End
  Begin Shape Shape1
    Left = 600
    Top = 510
    Width = 6795
    Height = 4050
    Shape = 4
  End
  Begin Label Lbl
    Caption = "Comments3"
    Index = 2
    ForeColor = &H0&
    Left = 810
    Top = 3352
    Width = 1065
    Height = 240
    TabIndex = 33
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
  Begin Label Lbl
    Caption = "Comments2"
    Index = 1
    ForeColor = &H0&
    Left = 810
    Top = 3082
    Width = 1065
    Height = 240
    TabIndex = 32
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
  Begin Label Lbl
    Caption = "Comments1"
    Index = 0
    ForeColor = &H0&
    Left = 810
    Top = 2812
    Width = 1065
    Height = 240
    TabIndex = 31
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
  Begin Label Lbl
    Caption = "Group Type"
    Index = 17
    ForeColor = &H0&
    Left = 4755
    Top = 4162
    Width = 1080
    Height = 240
    TabIndex = 28
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
  Begin Label Lbl
    Caption = "Business Source"
    Index = 19
    ForeColor = &H0&
    Left = 810
    Top = 4162
    Width = 1515
    Height = 240
    TabIndex = 27
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
  Begin Label Lbl
    Caption = "Market Segments"
    Index = 20
    ForeColor = &H0&
    Left = 810
    Top = 3885
    Width = 1575
    Height = 240
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
  Begin Label Lbl
    Caption = "Travel Agency"
    Index = 22
    ForeColor = &H0&
    Left = 810
    Top = 3622
    Width = 1320
    Height = 240
    TabIndex = 25
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
  Begin Label Lbl
    Caption = "Contact Person"
    Index = 9
    ForeColor = &H0&
    Left = 810
    Top = 2265
    Width = 1365
    Height = 240
    TabIndex = 24
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
  Begin Label Lbl
    Caption = "Phone No(s)"
    Index = 7
    ForeColor = &H0&
    Left = 810
    Top = 2535
    Width = 1125
    Height = 255
    TabIndex = 23
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
  Begin Label Lbl
    Caption = "Country/Type"
    Index = 13
    ForeColor = &H0&
    Left = 810
    Top = 2002
    Width = 1215
    Height = 240
    TabIndex = 22
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
  Begin Label Lbl
    Caption = "State"
    Index = 12
    ForeColor = &H0&
    Left = 810
    Top = 1732
    Width = 465
    Height = 240
    TabIndex = 21
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
  Begin Label Lbl
    Caption = "City/Zip"
    Index = 11
    ForeColor = &H0&
    Left = 810
    Top = 1462
    Width = 675
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
  Begin Label Lbl
    Caption = "Address"
    Index = 6
    ForeColor = &H0&
    Left = 810
    Top = 922
    Width = 765
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
  Begin Label Lbl
    Caption = "Name"
    Index = 5
    ForeColor = &H0&
    Left = 810
    Top = 652
    Width = 555
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
End

Attribute VB_Name = "GroupProfile"

Private MasterFormExit As Integer
Private global_60 As Long

Private Sub DGBusiness_UnknownEvent_9 'F40DC4
  'Data Table: 46CDD4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F40CBB: Me.DGBusiness.Visible = False
  loc_F40CDA: If (Me.RecordCount > 0) Then
  loc_F40D19:   Set var_B4 = Me.Txt
  loc_F40D1F:   Call 0.Method_DGBusiness_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F40D27:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F40D5A:   var_B0 = Me.Fields.Item("Name")
  loc_F40D79:   Set var_B4 = Me.Txt
  loc_F40D7F:   Call 0.Method_DGBusiness_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F40D87:   var_B8.Text = CStr(var_B0.Value)
  loc_F40D9D: End If
  loc_F40DA8: Set var_A8 = Me.Txt
  loc_F40DAE: Call 0.Method_DGBusiness_UnknownEvent_90 (CInt(&HE))
  loc_F40DB6: var_B0.SetFocus
  loc_F40DC2: Exit Sub
End Sub

Private Sub DGBusiness_UnknownEvent_1F 'E75570
  'Data Table: 46CDD4
  loc_E7552E: Proc_6_153_E91194(Me.DGBusiness, arg_14)
  loc_E75545: Set var_8C = Me.FGPoint
  loc_E75561: Proc_6_138_106D6F8(Me.DGBusiness, global_80, CInt(&HE))
  loc_E7556F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E979D4
  'Data Table: 46CDD4
  Dim var_98 As TextBox
  loc_E97958: On Error Goto loc_E979CB
  loc_E9797E: Call Proc_29_41_F136A4(Proc_5_1_100CB50("ADD", Me))
  loc_E97989: Call Proc_29_42_E9AE58(global_64)
  loc_E979A2: If (GroupProfile.OpenMode <> 1) Then
  loc_E979B0:   Set var_8C = Me.Txt
  loc_E979B6:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0))
  loc_E979BE:   var_98.SetFocus
  loc_E979CA: End If
  loc_E979CA: Exit Sub
  loc_E979CB: ' Referenced from: E97958
  loc_E979CB: Proc_6_60_E62BC4(var_98)
  loc_E979D0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'F23ECC
  'Data Table: 46CDD4
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F23DD0: On Error Goto loc_F23E87
  loc_F23DE1: If (Proc_183_55_FE7900(global_64) = &HFF) Then
  loc_F23DE4:   Exit Sub
  loc_F23DE5: End If
  loc_F23DFC: If (Me.RecordCount > 0) Then
  loc_F23E14:   var_8C = "EDIT"
  loc_F23E22:   Call Proc_29_41_F136A4(Proc_5_1_100CB50(var_8C, Me))
  loc_F23E38:   Set var_90 = Me.Txt
  loc_F23E3E:   Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_98)
  loc_F23E46:   var_98.SetFocus
  loc_F23E55: Else
  loc_F23E76:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F23E86: End If
  loc_F23E86: Exit Sub
  loc_F23E87: ' Referenced from: F23DD0
  loc_F23E8F: Set var_90 = Err()
  loc_F23E95: Call 0.Method_arg_2C (var_8C)
  loc_F23EB6: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F23EC9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '10CEDB4
  'Data Table: 46CDD4
  Dim var_96 As Integer
  Dim unk_46CDF0 As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10CEAE4: On Error Goto loc_10CED5D
  loc_10CEAF5: If (Proc_183_56_FE8818(global_64) = &HFF) Then
  loc_10CEAF8:   Exit Sub
  loc_10CEAF9: End If
  loc_10CEB30: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10CEB35:   var_96 = 0
  loc_10CEB41:   unk_46CDF0.BeginTrans var_11C
  loc_10CEB48:   var_96 = &HFF
  loc_10CEB5C:   var_94 = Me.Bookmark 'Variant
  loc_10CEBA8:   var_F8 = "Delete From GROUPPROF Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10CEBB6:   unk_46CDF0.Execute CStr(var_F8), var_118, -1
  loc_10CEC01:   var_164 = 0
  loc_10CEC14:   var_15C = 0
  loc_10CEC1F:   var_158 = 0
  loc_10CEC32:   var_150 = 0
  loc_10CEC3D:   var_14C = 0
  loc_10CEC50:   var_144 = 0
  loc_10CEC90:   var_128 = "GroupPROF"
  loc_10CEC99:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10CECC7:   unk_46CDF0.CommitTrans
  loc_10CECCE:   var_96 = 0
  loc_10CECDC:   Me.Requery -1
  loc_10CECFC:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10CED09:     Me.Bookmark = var_94
  loc_10CED11:   Else
  loc_10CED25:     If (Me.EOF = 0) Then
  loc_10CED2E:       Me.MoveLast
  loc_10CED33:     End If
  loc_10CED33:   End If
  loc_10CED33:   Call Proc_29_44_144BC7C(var_96, var_144, 0, var_14C, var_150)
  loc_10CED54:   Proc_5_0_110649C(&HFF, Me, global_64, 0)
  loc_10CED5C: End If
  loc_10CED5C: Exit Sub
  loc_10CED5D: ' Referenced from: 10CEAE4
  loc_10CED63: If (var_96 = &HFF) Then
  loc_10CED6C:   unk_46CDF0.RollbackTrans
  loc_10CED71: End If
  loc_10CED79: Set var_120 = Err()
  loc_10CED7F: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10CEDA0: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10CEDB3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E150DC
  'Data Table: 46CDD4
  loc_E150D1: Me.Global.Unload Me
  loc_E150D9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2B5D8
  'Data Table: 46CDD4
  loc_E2B5C8: Proc_5_0_110649C(&HFF, Me)
  loc_E2B5D0: Call Proc_29_44_144BC7C(global_64)
  loc_E2B5D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E2B7B8
  'Data Table: 46CDD4
  loc_E2B7A8: Proc_5_0_110649C(&HFF, Me)
  loc_E2B7B0: Call Proc_29_44_144BC7C(global_64)
  loc_E2B7B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E2B758
  'Data Table: 46CDD4
  loc_E2B748: Proc_5_0_110649C(&HFF, Me)
  loc_E2B750: Call Proc_29_44_144BC7C(global_64)
  loc_E2B755: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E2B338
  'Data Table: 46CDD4
  loc_E2B328: Proc_5_0_110649C(&HFF, Me)
  loc_E2B330: Call Proc_29_44_144BC7C(global_64)
  loc_E2B335: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '13D424C
  'Data Table: 46CDD4
  Dim var_AC As Variant
  Dim var_E0 As Variant
  Dim var_98 As String
  Dim var_D0 As String
  Dim unk_46CDF0 As Connection15
  Dim var_8C As Variant
  Dim var_90 As Variant
  Dim var_94 As Field20
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim Me As Recordset15
  Dim var_BC As Variant
  Dim var_1BC As TextBox
  Dim var_424 As TextBox
  Dim var_47C As TextBox
  Dim var_4D8 As TextBox
  Dim var_36C As Variant
  Dim var_5A4 As Variant
  Dim var_738 As Variant
  loc_13D3A20: On Error Goto loc_13D41FA
  loc_13D3A27: var_86 = CByte(0) 'Byte
  loc_13D3A36: Set var_8C = Me.Txt
  loc_13D3A3C: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_13D3A65: If (Proc_6_27_EA565C(var_90, "Name1") = 0) Then
  loc_13D3A6F:   Call Txt_GotFocus()
  loc_13D3A74:   Exit Sub
  loc_13D3A75: End If
  loc_13D3A79: Set var_8C = Me.TopCtrl1
  loc_13D3A7F: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(CInt(0))
  loc_13D3A94: If (var_90 = "Add") Then
  loc_13D3A9D:   var_E0 = 0
  loc_13D3ABA:   var_98 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode From GROUPPROF WHERE SITE_CODE='" & MemVar_1F92070
  loc_13D3ACA:   unk_46CDF0.Execute "Name1" & "'", var_BC, -1
  loc_13D3AD2:   var_8C = var_8C.Fields
  loc_13D3ADA:   var_E0 = var_90.Item(var_90)
  loc_13D3AE2:   var_94 = var_94.Value
  loc_13D3B1B:   var_F4 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_13D3B41:   var_CC = Format(CStr(var_CC), "000000")
  loc_13D3B49:   var_104 = (1 + var_CC)
  loc_13D3B54:   intStaId = CStr(var_104)
  loc_13D3B69: Else
  loc_13D3B86:   var_90 = Me.Fields.Item("SearchCode")
  loc_13D3B8E:   var_BC = var_90.Value
  loc_13D3B9D:   intStaId = CStr(var_BC)
  loc_13D3BAE: End If
  loc_13D3BB7: unk_46CDF0.BeginTrans var_108
  loc_13D3BC0: var_86 = CByte(1) 'Byte
  loc_13D3BE2: var_D0 = "Delete From GroupProf Where Code='" & intStaId & "'"
  loc_13D3BEB: unk_46CDF0.Execute var_D0, var_BC, -1
  loc_13D3C0E: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_90, Me.Txt)
  loc_13D3C1D: Proc_6_17_EAA2B0(var_CC, CVar(var_90), 1)
  loc_13D3C2D: Set var_94 = Me.Txt
  loc_13D3C33: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_11C)
  loc_13D3C42: Proc_6_17_EAA2B0(var_13C, CVar(var_11C))
  loc_13D3C52: Set var_160 = Me.Txt
  loc_13D3C58: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_164)
  loc_13D3C67: Proc_6_17_EAA2B0(var_184, CVar(var_164))
  loc_13D3C7A: Set var_1B8 = Me.Txt
  loc_13D3C80: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_1BC, var_D0)
  loc_13D3C88: var_F4 = var_1BC.Tag
  loc_13D3C96: Proc_6_17_EAA2B0(var_1DC, CVar(var_D0))
  loc_13D3CA6: Set var_210 = Me.Txt
  loc_13D3CAC: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_214)
  loc_13D3CBB: Proc_6_17_EAA2B0(var_234, CVar(var_214))
  loc_13D3CCB: Set var_268 = Me.Txt
  loc_13D3CD1: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(9), var_26C)
  loc_13D3CE0: Proc_6_17_EAA2B0(var_28C, CVar(var_26C))
  loc_13D3CF0: Set var_2C0 = Me.Txt
  loc_13D3CF6: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(8), var_2C4)
  loc_13D3D05: Proc_6_17_EAA2B0(var_2E4, CVar(var_2C4))
  loc_13D3D15: Set var_318 = Me.Txt
  loc_13D3D1B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HA), var_31C)
  loc_13D3D2A: Proc_6_17_EAA2B0(var_33C, CVar(var_31C))
  loc_13D3D3A: Set var_370 = Me.Txt
  loc_13D3D40: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HB), var_374)
  loc_13D3D4F: Proc_6_17_EAA2B0(var_394, CVar(var_374))
  loc_13D3D5F: Set var_3C8 = Me.Txt
  loc_13D3D65: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HC), var_3CC)
  loc_13D3D74: Proc_6_17_EAA2B0(var_3EC, CVar(var_3CC))
  loc_13D3D87: Set var_420 = Me.Txt
  loc_13D3D8D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HD), var_424)
  loc_13D3DA3: Proc_6_17_EAA2B0(var_444, CVar(var_424.Tag))
  loc_13D3DB6: Set var_478 = Me.Txt
  loc_13D3DBC: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HF), var_47C)
  loc_13D3DD2: Proc_6_17_EAA2B0(var_4A0, CVar(var_47C.Tag))
  loc_13D3DE5: Set var_4D4 = Me.Txt
  loc_13D3DEB: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HE), var_4D8)
  loc_13D3E01: Proc_6_17_EAA2B0(var_4FC, CVar(var_4D8.Tag))
  loc_13D3E11: Set var_530 = Me.Txt
  loc_13D3E17: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H10), var_534)
  loc_13D3E26: Proc_6_17_EAA2B0(var_554, CVar(var_534))
  loc_13D3E39: Proc_6_7_F25D88(var_624, Date)
  loc_13D3E42: Set var_658 = Me.TopCtrl1
  loc_13D3E48: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_CC)
  loc_13D3E9A: var_98 = "Insert Into GroupProf (Code,Name,Add1,Add2,City,Type,ConName,PhoneNo,Comments1,Comments2,Comments3,TravelAgency,MarketSeg,BusSource,GroupType,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & intStaId
  loc_13D3EA1: var_F4 = CVar(var_98 & "',") 'String
  loc_13D3EA7: var_104 = var_F4 & var_CC 
  loc_13D3EAB: var_AC = ","
  loc_13D3F20: var_36C = var_104 & var_AC & var_13C & "," & var_184 & "," & var_1DC & "," & var_234 & "," & var_28C & "," & var_2E4 & "," & var_33C & "," 
  loc_13D3F8A: var_5A4 = var_36C & var_394 & "," & var_3EC & "," & var_444 & "," & var_4A0 & "," & var_4FC & "," & var_554 & ",'" & CVar(MemVar_1F92070) 
  loc_13D3FD0: var_738 = var_5A4 & "','" & CVar(MemVar_1F920C8) & "'," & var_624 & ",'" & IIf((var_678 = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) 
  loc_13D3FE7: unk_46CDF0.Execute CStr(var_738 & "')"), var_77C, -1
  loc_13D40BD: unk_46CDF0.CommitTrans
  loc_13D40C6: var_86 = CByte(0) 'Byte
  loc_13D40D5: Me.Requery -1
  loc_13D40EE: If (GroupProfile.OpenMode = 1) Then
  loc_13D4102:   Set var_8C = MemVar_1F92C3C.Txt
  loc_13D4108:   Call 0.Method_TopCtrl1_UnknownEvent_190 (0, var_90)
  loc_13D4126:   Set var_94 = MemVar_1F934E8.Txt
  loc_13D412C:   Call 0.Method_TopCtrl1_UnknownEvent_190 (&H1C, var_11C)
  loc_13D4134:   RrRoomReservation.Txt.Text = GroupProfile.Txt.Text
  loc_13D414D:   Call RrRoomReservation.RetBack()
  loc_13D415F:   Me.Global.Unload Me
  loc_13D416A: Else
  loc_13D4192:   Me.Find "SearchCode='" & intStaId & "'", 0, 1
  loc_13D41A2:   Set var_8C = Me.TopCtrl1
  loc_13D41A8:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_AC)
  loc_13D41BD:   If (var_780 = "Add") Then
  loc_13D41C0:     Call TopCtrl1_UnknownEvent_11()
  loc_13D41C5:     Exit Sub
  loc_13D41C6:   End If
  loc_13D41DB:   var_98 = "INI"
  loc_13D41E9:   Call Proc_29_41_F136A4(Proc_5_1_100CB50(var_98, Me))
  loc_13D41F4:   Call Proc_29_44_144BC7C(global_64)
  loc_13D41F9: End If
  loc_13D41F9: Exit Sub
  loc_13D41FA: ' Referenced from: 13D3A20
  loc_13D4203: If (CInt(var_86) = 1) Then
  loc_13D420C:   unk_46CDF0.RollbackTrans
  loc_13D4211: End If
  loc_13D4219: Set var_8C = Err()
  loc_13D421F: Call 0.Method_arg_2C (var_98)
  loc_13D4238: MsgBox(CVar(var_98), &H10, var_CC, var_F4, var_104)
  loc_13D424B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EA00C8
  'Data Table: 46CDD4
  loc_EA0050: On Error Goto loc_EA00C1
  loc_EA008A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA00B0:   Call Proc_29_41_F136A4(Proc_5_1_100CB50("INI", Me))
  loc_EA00BB:   Call Proc_29_44_144BC7C(global_64)
  loc_EA00C0: End If
  loc_EA00C0: Exit Sub
  loc_EA00C1: ' Referenced from: EA0050
  loc_EA00C1: Proc_6_60_E62BC4()
  loc_EA00C6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EC7E50
  'Data Table: 46CDD4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EC7DB0: On Error Goto loc_EC7E48
  loc_EC7DCA: If (Me.RecordCount <= 0) Then
  loc_EC7DD3:   var_B8 = "Information"
  loc_EC7DEE:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC7DFE:   Exit Sub
  loc_EC7DFF: End If
  loc_EC7E06: var_10C = "Select Code As SearchCode,GROUPPROF.Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GroupProf Left Join City on City.CityCode=GroupProf.City where (GroupProf.LOGSITE_CODE='" & MemVar_1F92078
  loc_EC7E0D: MemVar_1F920E4 = var_10C & "' or GroupProf.LOGSITE_CODE='HO') Order by GroupProf.Name"
  loc_EC7E1A: MemVar_1F92120 = Me
  loc_EC7E27: Proc_6_126_F1BCC0("3200,2500,2500,2400")
  loc_EC7E42: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC7E47: Exit Sub
  loc_EC7E48: ' Referenced from: EC7DB0
  loc_EC7E48: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC7E4D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C '108A7CC
  'Data Table: 46CDD4
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_46CDF0 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  Dim arg_1EFF As Variant
  loc_108A534: On Error Goto loc_108A780
  loc_108A54B: var_A0 = "SELECT G.Name, G.Add1 AS Address1, G.Add2 AS Address2, C.CityName + ' ' +C.ZipCode AS City, G.Type AS Country, G.PhoneNo AS PhoneNo, G.TravelAgency AS TravelAgency, G.MarketSeg AS MarketSegment, G.BusSource AS BusSource From GroupProf G Left Join City C ON G.City=C.CityCode where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_108A55B: unk_46CDF0.Execute var_A0 & "' or G.LOGSITE_CODE='HO') order by G.Name", var_C4, -1
  loc_108A566: Set var_88 = var_C8
  loc_108A57C: var_CC = var_88.RecordCount
  loc_108A58A: If (var_CC = 0) Then
  loc_108A5A6:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108A5B6:   Exit Sub
  loc_108A5B7: End If
  loc_108A5C6: var_A4 = MemVar_1F920B4 & "\GroupProfile.ttx"
  loc_108A5CD: Set var_C8 = var_88 
  loc_108A5D9: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108A5E3: Set var_88 = var_C8
  loc_108A5E9: var_B4 = CVar(var_12E) 'Integer
  loc_108A5EC: var_98 = var_B4 'Variant
  loc_108A608: var_A0 = MemVar_1F920B4 & "\GroupProfile.RPT"
  loc_108A611: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108A61C: MemVar_1F921E4 = var_C8
  loc_108A637: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108A63F: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108A64B: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108A664:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108A66C:   Call 0.Method_arg_20 (var_138)
  loc_108A674:   Call 0.Method_arg_30 (var_A0)
  loc_108A6BA:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108A6D0:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108A6D8:     Call 0.Method_arg_20 (var_138)
  loc_108A6E0:     Call 0.Method_arg_38 ("'Group Profile'")
  loc_108A6EC:   End If
  loc_108A6EF: Next var_132 'Integer
  loc_108A70D: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_108A715: Call 0.Method_arg_2C (var_DC)
  loc_108A723: Call 0.Method_arg_150 (var_FC)
  loc_108A72E: Call 0.Method_arg_50 (var_A0)
  loc_108A738: Set var_138 = Nothing
  loc_108A752: Set var_C8 = MemVar_1F921E4 
  loc_108A75E: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_108A769: MemVar_1F921E4 = var_C8
  loc_108A77C: Set var_88 = Nothing
  loc_108A77F: Exit Sub
  loc_108A780: ' Referenced from: 108A534
  loc_108A788: Set var_C8 = Err()
  loc_108A78E: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108A799: Call 0.Method_arg_50 (var_A4)
  loc_108A7B5: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108A7C8: Exit Sub
  loc_108A7C9: arg_1EFF = CVar(var_138) 'Integer
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E557A8
  'Data Table: 46CDD4
  Dim Me As Recordset15
  loc_E5576F: Me.Requery -1
  loc_E5577F: Me.Requery -1
  loc_E5578F: Me.Requery -1
  loc_E5579F: Me.Requery -1
  loc_E557A4: Exit Sub
End Sub

Private Sub DGMarketSeg_UnknownEvent_9 'F3B884
  'Data Table: 46CDD4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3B77B: Me.DGMarketSeg.Visible = False
  loc_F3B79A: If (Me.RecordCount > 0) Then
  loc_F3B7D9:   Set var_B4 = Me.Txt
  loc_F3B7DF:   Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F3B7E7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3B81A:   var_B0 = Me.Fields.Item("Name")
  loc_F3B839:   Set var_B4 = Me.Txt
  loc_F3B83F:   Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F3B847:   var_B8.Text = CStr(var_B0.Value)
  loc_F3B85D: End If
  loc_F3B868: Set var_A8 = Me.Txt
  loc_F3B86E: Call 0.Method_DGMarketSeg_UnknownEvent_90 (CInt(&HF))
  loc_F3B876: var_B0.SetFocus
  loc_F3B882: Exit Sub
End Sub

Private Sub DGMarketSeg_UnknownEvent_1F 'E742F0
  'Data Table: 46CDD4
  loc_E742AE: Proc_6_153_E91194(Me.DGMarketSeg, arg_14)
  loc_E742C5: Set var_8C = Me.FGPoint
  loc_E742E1: Proc_6_138_106D6F8(Me.DGMarketSeg, global_76, CInt(&HF))
  loc_E742EF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '13BA3C0
  'Data Table: 46CDD4
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_A8 As Variant
  Dim var_90 As Variant
  Dim var_BC As Variant
  Dim Me As Recordset15
  loc_13B9A66: Set var_88 = Me.Txt
  loc_13B9A6C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_13B9A7A: Proc_6_74_E226B0(var_8C)
  loc_13B9A86: Call Proc_29_43_F27888(var_8C)
  loc_13B9A8E: var_92 = Index
  loc_13B9A99: If (var_92 = CInt(3)) Then
  loc_13B9AAA:   Set var_88 = Me.Txt
  loc_13B9AB0:   Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_13B9ACF:   Me.DGCity.Left = CVar(var_8C.Left)
  loc_13B9AEB:   Set var_90 = Me.Txt
  loc_13B9AF1:   Call 0.Method_Txt_GotFocus0 (CInt(3), var_BC)
  loc_13B9B0C:   Set var_88 = Me.Txt
  loc_13B9B12:   Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_13B9B26:   var_A8 = CVar((var_8C.Top + var_BC.Height)) 'Single
  loc_13B9B35:   Me.DGCity.Top = CVar(var_8C.Left)
  loc_13B9B5E:   If (Me.RecordCount > 0) Then
  loc_13B9B6C:     Set var_8C = Me.FGPoint
  loc_13B9B84:     Proc_6_137_1193554(Me.DGCity, global_68, Index)
  loc_13B9B92:   End If
  loc_13B9BE0:   Set var_88 = Me.Txt
  loc_13B9BE6:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC)
  loc_13B9BEE:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13B9C06:   If (var_8C Or (var_CC = vbNullString)) Then
  loc_13B9C09:     Exit Sub
  loc_13B9C0A:   End If
  loc_13B9C17:   Set var_88 = Me.Txt
  loc_13B9C1D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13B9C25:   var_CC = var_8C.Text
  loc_13B9C37:   var_A8 = "Name"
  loc_13B9C4E:   var_BC = Me.Fields.Item(var_A8)
  loc_13B9C72:   If CBool(CVar(var_CC) <> var_BC.Value) Then
  loc_13B9C7B:     Me.MoveFirst
  loc_13B9C9E:     Set var_88 = Me.Txt
  loc_13B9CA4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC, "Name ='")
  loc_13B9CAC:     0 = var_8C.Text
  loc_13B9CC5:     Me.Find 1 & var_CC & "'", var_A8, var_92
  loc_13B9CDA:   End If
  loc_13B9CDD: Else
  loc_13B9CE5:   If (var_92 = CInt(&HD)) Then
  loc_13B9CF6:     Set var_88 = Me.Txt
  loc_13B9CFC:     Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_13B9D1B:     Me.DGTravelAg.Left = CVar(var_8C.Left)
  loc_13B9D37:     Set var_90 = Me.Txt
  loc_13B9D3D:     Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_BC)
  loc_13B9D58:     Set var_88 = Me.Txt
  loc_13B9D5E:     Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_13B9D72:     var_A8 = CVar((var_8C.Top + var_BC.Height)) 'Single
  loc_13B9D81:     Me.DGTravelAg.Top = CVar(var_8C.Left)
  loc_13B9DAA:     If (Me.RecordCount > 0) Then
  loc_13B9DB8:       Set var_8C = Me.FGPoint
  loc_13B9DD0:       Proc_6_137_1193554(Me.DGTravelAg, global_72)
  loc_13B9DDE:     End If
  loc_13B9E2C:     Set var_88 = Me.Txt
  loc_13B9E32:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC)
  loc_13B9E3A:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13B9E52:     If (Index Or (var_CC = vbNullString)) Then
  loc_13B9E55:       Exit Sub
  loc_13B9E56:     End If
  loc_13B9E63:     Set var_88 = Me.Txt
  loc_13B9E69:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13B9E71:     var_CC = var_8C.Text
  loc_13B9E83:     var_A8 = "Name"
  loc_13B9E9A:     var_BC = Me.Fields.Item(var_A8)
  loc_13B9EBE:     If CBool(CVar(var_CC) <> var_BC.Value) Then
  loc_13B9EC7:       Me.MoveFirst
  loc_13B9EEA:       Set var_88 = Me.Txt
  loc_13B9EF0:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC, "Name ='")
  loc_13B9EF8:       0 = var_8C.Text
  loc_13B9F11:       Me.Find 1 & var_CC & "'", var_A8, var_8C
  loc_13B9F26:     End If
  loc_13B9F29:   Else
  loc_13B9F31:     If (var_92 = CInt(&HE)) Then
  loc_13B9F42:       Set var_88 = Me.Txt
  loc_13B9F48:       Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_8C)
  loc_13B9F67:       Me.DGBusiness.Left = CVar(var_8C.Left)
  loc_13B9F83:       Set var_90 = Me.Txt
  loc_13B9F89:       Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_BC)
  loc_13B9FA4:       Set var_88 = Me.Txt
  loc_13B9FAA:       Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_8C)
  loc_13B9FBE:       var_A8 = CVar((var_8C.Top + var_BC.Height)) 'Single
  loc_13B9FCD:       Me.DGBusiness.Top = CVar(var_8C.Left)
  loc_13B9FF6:       If (Me.RecordCount > 0) Then
  loc_13BA004:         Set var_8C = Me.FGPoint
  loc_13BA01C:         Proc_6_137_1193554(Me.DGBusiness, global_80)
  loc_13BA02A:       End If
  loc_13BA078:       Set var_88 = Me.Txt
  loc_13BA07E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC)
  loc_13BA086:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13BA09E:       If (Index Or (var_CC = vbNullString)) Then
  loc_13BA0A1:         Exit Sub
  loc_13BA0A2:       End If
  loc_13BA0AF:       Set var_88 = Me.Txt
  loc_13BA0B5:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13BA0BD:       var_CC = var_8C.Text
  loc_13BA0CF:       var_A8 = "Name"
  loc_13BA0E6:       var_BC = Me.Fields.Item(var_A8)
  loc_13BA10A:       If CBool(CVar(var_CC) <> var_BC.Value) Then
  loc_13BA113:         Me.MoveFirst
  loc_13BA136:         Set var_88 = Me.Txt
  loc_13BA13C:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC, "Name='")
  loc_13BA144:         0 = var_8C.Text
  loc_13BA15D:         Me.Find 1 & var_CC & "'", var_A8, var_8C
  loc_13BA172:       End If
  loc_13BA175:     Else
  loc_13BA17D:       If (var_92 = CInt(&HF)) Then
  loc_13BA18E:         Set var_88 = Me.Txt
  loc_13BA194:         Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_13BA1B3:         Me.DGMarketSeg.Left = CVar(var_8C.Left)
  loc_13BA1CF:         Set var_90 = Me.Txt
  loc_13BA1D5:         Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_BC)
  loc_13BA1F0:         Set var_88 = Me.Txt
  loc_13BA1F6:         Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_13BA20A:         var_A8 = CVar((var_8C.Top + var_BC.Height)) 'Single
  loc_13BA219:         Me.DGMarketSeg.Top = CVar(var_8C.Left)
  loc_13BA242:         If (Me.RecordCount > 0) Then
  loc_13BA250:           Set var_8C = Me.FGPoint
  loc_13BA268:           Proc_6_137_1193554(Me.DGMarketSeg, global_76)
  loc_13BA276:         End If
  loc_13BA2C4:         Set var_88 = Me.Txt
  loc_13BA2CA:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC)
  loc_13BA2D2:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13BA2EA:         If (Index Or (var_CC = vbNullString)) Then
  loc_13BA2ED:           Exit Sub
  loc_13BA2EE:         End If
  loc_13BA2FB:         Set var_88 = Me.Txt
  loc_13BA301:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13BA309:         var_CC = var_8C.Text
  loc_13BA31B:         var_A8 = "Name"
  loc_13BA356:         If CBool(CVar(var_CC) <> Me.Fields.Item(var_A8).Value) Then
  loc_13BA35F:           Me.MoveFirst
  loc_13BA382:           Set var_88 = Me.Txt
  loc_13BA388:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC, "Name ='")
  loc_13BA390:           0 = var_8C.Text
  loc_13BA3A9:           Me.Find 1 & var_CC & "'", var_A8, var_8C
  loc_13BA3BE:         End If
  loc_13BA3BE:       End If
  loc_13BA3BE:     End If
  loc_13BA3BE:   End If
  loc_13BA3BE: End If
  loc_13BA3BE: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '125CB14
  'Data Table: 46CDD4
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_9C As DataGrid
  Dim var_E4 As Variant
  Dim var_A0 As DataGrid
  Dim var_F4 As Variant
  loc_125C5B6: If (CLng(Shift) = &H1B) Then
  loc_125C5B9:   Call Proc_29_43_F27888()
  loc_125C5BE:   Exit Sub
  loc_125C5BF: End If
  loc_125C5C2: var_88 = KeyCode
  loc_125C5CD: If (var_88 = CInt(3)) Then
  loc_125C5ED:   Set var_A0 = Me.FGPoint
  loc_125C5F8:   Set var_9C = Nothing
  loc_125C62A:   Proc_6_69_134A198(Me.DGCity, Me.Txt, CInt(3), global_68, Shift, 0)
  loc_125C699:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_125C6BF:     Proc_6_138_106D6F8(Me.DGCity, global_68, KeyCode, Me.FGPoint, 1)
  loc_125C6CD:   End If
  loc_125C6D0: Else
  loc_125C6D8:   If (var_88 = CInt(&HD)) Then
  loc_125C703:     Set var_9C = Nothing
  loc_125C735:     Proc_6_69_134A198(Me.DGTravelAg, Me.Txt, CInt(&HD), global_72, Shift, 0, 1)
  loc_125C7A4:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_125C7AB:       Set var_9C = Me.DGTravelAg
  loc_125C7CA:       Proc_6_138_106D6F8(var_9C, global_72, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_125C7D8:     End If
  loc_125C7DB:   Else
  loc_125C7E3:     If (var_88 = CInt(&HE)) Then
  loc_125C840:       Proc_6_69_134A198(Me.DGBusiness, Me.Txt, CInt(&HE), global_80, Shift, 0, 1, Nothing)
  loc_125C8AF:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_125C8D5:         Proc_6_138_106D6F8(Me.DGBusiness, global_80, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_125C8E3:       End If
  loc_125C8E6:     Else
  loc_125C8EE:       If (var_88 = CInt(&HF)) Then
  loc_125C94B:         Proc_6_69_134A198(Me.DGMarketSeg, Me.Txt, CInt(&HF), global_76, Shift, 0, 1, Nothing)
  loc_125C9BA:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_125C9E0:           Proc_6_138_106D6F8(Me.DGMarketSeg, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_125C9EE:         End If
  loc_125C9EE:       End If
  loc_125C9EE:     End If
  loc_125C9EE:   End If
  loc_125C9EE: End If
  loc_125CA1F: Set var_9C = Me.DGBusiness
  loc_125CA25: var_E4 = var_9C.Visible
  loc_125CA3C: var_F4 = Me.DGMarketSeg.Visible
  loc_125CA5F: If ((((CBool(Me.DGCity.Visible) = 0) And (CBool(Me.DGTravelAg.Visible) = 0)) And (CBool(var_E4) = 0)) And (CBool(var_F4) = 0)) Then
  loc_125CA80:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H10))) Then
  loc_125CA89:     Call Txt_Validate(KeyCode)
  loc_125CA94:     If (var_86 = &HFF) Then
  loc_125CA97:       Exit Sub
  loc_125CA98:     End If
  loc_125CACF:     If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_F4) = 6) Then
  loc_125CAD2:       Call TopCtrl1_UnknownEvent_19()
  loc_125CAD7:     End If
  loc_125CAD7:     Exit Sub
  loc_125CAD8:   End If
  loc_125CAED:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_125CAF6:     Proc_6_75_E527CC(Shift, arg_14, var_86, 0)
  loc_125CAFB:   End If
  loc_125CB05:   If (CLng(Shift) = &H26) Then
  loc_125CB0E:     Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_125CB13:   End If
  loc_125CB13: End If
  loc_125CB13: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1068AF0
  'Data Table: 46CDD4
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_106886A: Proc_6_133_E7EF78(var_94)
  loc_1068873: arg_10 = CInt(var_94)
  loc_106887C: Proc_6_58_E054C0(arg_10, arg_10)
  loc_1068884: var_96 = KeyAscii
  loc_106888F: If (var_96 = CInt(3)) Then
  loc_10688AE:   If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_10688C0:     var_A0 = "Name"
  loc_10688DB:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10)
  loc_106890D:     Proc_6_138_106D6F8(Me.DGCity, global_68, KeyAscii, Me.FGPoint)
  loc_106891B:   End If
  loc_106891E: Else
  loc_1068926:   If (var_96 = CInt(&HD)) Then
  loc_1068945:     If (CBool(Me.DGTravelAg.Visible) = &HFF) Then
  loc_1068976:       Proc_6_89_146F1AC(Me.Txt, CInt(&HD), global_72, arg_10, "Name")
  loc_10689A8:       Proc_6_138_106D6F8(Me.DGTravelAg, global_72, KeyAscii, Me.FGPoint, 0)
  loc_10689B6:     End If
  loc_10689B9:   Else
  loc_10689C1:     If (var_96 = CInt(&HE)) Then
  loc_10689E0:       If (CBool(Me.DGBusiness.Visible) = &HFF) Then
  loc_1068A11:         Proc_6_89_146F1AC(Me.Txt, CInt(&HE), global_80, arg_10, "Name")
  loc_1068A43:         Proc_6_138_106D6F8(Me.DGBusiness, global_80, KeyAscii, Me.FGPoint, 0)
  loc_1068A51:       End If
  loc_1068A54:     Else
  loc_1068A5C:       If (var_96 = CInt(&HF)) Then
  loc_1068A7B:         If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_1068AAC:           Proc_6_89_146F1AC(Me.Txt, CInt(&HF), global_76, arg_10, "Name")
  loc_1068ADE:           Proc_6_138_106D6F8(Me.DGMarketSeg, global_76, KeyAscii, Me.FGPoint, 0)
  loc_1068AEC:         End If
  loc_1068AEC:       End If
  loc_1068AEC:     End If
  loc_1068AEC:   End If
  loc_1068AEC: End If
  loc_1068AEC: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'FEE58C
  'Data Table: 46CDD4
  Dim var_86 As Integer
  loc_FEE3A7: var_86 = KeyCode
  loc_FEE3B2: If (var_86 = CInt(3)) Then
  loc_FEE3D1:   If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_FEE3E5:     var_A8 = "Name"
  loc_FEE40D:     Proc_6_68_129FB34(Me.DGCity, Me.Txt, CInt(3), global_68)
  loc_FEE420:   End If
  loc_FEE423: Else
  loc_FEE42B:   If (var_86 = CInt(&HD)) Then
  loc_FEE44A:     If (CBool(Me.DGTravelAg.Visible) = &HFF) Then
  loc_FEE45E:       var_A8 = "Name"
  loc_FEE486:       Proc_6_68_129FB34(Me.DGTravelAg, Me.Txt, CInt(&HD), global_72, Shift)
  loc_FEE499:     End If
  loc_FEE49C:   Else
  loc_FEE4A4:     If (var_86 = CInt(&HE)) Then
  loc_FEE4C3:       If (CBool(Me.DGBusiness.Visible) = &HFF) Then
  loc_FEE4D7:         var_A8 = "Name"
  loc_FEE4FF:         Proc_6_68_129FB34(Me.DGBusiness, Me.Txt, CInt(&HE), global_80, Shift)
  loc_FEE512:       End If
  loc_FEE515:     Else
  loc_FEE51D:       If (var_86 = CInt(&HF)) Then
  loc_FEE53C:         If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_FEE578:           Proc_6_68_129FB34(Me.DGMarketSeg, Me.Txt, CInt(&HF), global_76, Shift, "Name")
  loc_FEE58B:         End If
  loc_FEE58B:       End If
  loc_FEE58B:     End If
  loc_FEE58B:   End If
  loc_FEE58B: End If
  loc_FEE58B: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E474BC
  'Data Table: 46CDD4
  loc_E4749A: Set var_88 = Me.Txt
  loc_E474A0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E474AE: Proc_6_73_E22704(var_8C)
  loc_E474BA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '137BC5C
  'Data Table: 46CDD4
  Dim var_8A As Integer
  Dim var_C4 As String
  Dim var_E8 As Variant
  Dim var_B0 As Variant
  Dim var_10C As String
  Dim unk_46CDF0 As Connection15
  Dim var_130 As Recordset15
  Dim var_134 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_90 As Fields15
  Dim var_88 As Recordset15
  loc_137B3EF: var_8A = Cancel
  loc_137B3FA: If (var_8A = CInt(0)) Then
  loc_137B401:   Set var_90 = Me.TopCtrl1
  loc_137B407:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_8A)
  loc_137B41C:   If ( = "Add") Then
  loc_137B442:     var_C4 = "Select Count(*) from GroupProf where (LOGSITE_CODE='" & MemVar_1F92078
  loc_137B449:     var_E8 = CVar(var_C4 & "' or LOGSITE_CODE='HO') and UPPER(Name)='") 'String
  loc_137B457:     Set var_90 = Me.Txt
  loc_137B45D:     Call 0.Method_Txt_Validate0 (CInt(0), var_C8, var_E8, var_12C, -1)
  loc_137B46C:     var_C0 = Ucase(CVar(var_C8))
  loc_137B477:     var_D8 = Trim(var_C0)
  loc_137B496:     unk_46CDF0.Execute CStr(var_130 & var_D8 & "'"), var_134, 0
  loc_137B4A6:      = var_134.Item(var_158)
  loc_137B4AE:      = var_130.Fields.Value
  loc_137B4E3:     If (var_158 > 0) Then
  loc_137B4FF:       MsgBox("Duplicate Name ", 0, var_C0, var_D8, var_E8)
  loc_137B511:       arg_10 = &HFF
  loc_137B514:       Exit Sub
  loc_137B515:     End If
  loc_137B515:   End If
  loc_137B518: Else
  loc_137B520:   If (var_8A = CInt(3)) Then
  loc_137B571:     Set var_90 = Me.Txt
  loc_137B577:     Call 0.Method_Txt_Validate0 (Cancel, var_C8, var_C4)
  loc_137B57F:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C8.Text
  loc_137B597:     If (arg_10 Or (var_C4 = vbNullString)) Then
  loc_137B59A:       Exit Sub
  loc_137B59B:     End If
  loc_137B5D6:     Set var_130 = Me.Txt
  loc_137B5DC:     Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_137B5E4:     var_134.Text = CStr(Me.Fields.Item("Name").Value)
  loc_137B617:     var_C8 = Me.Fields.Item("Code")
  loc_137B628:     var_C4 = CStr(var_C8.Value)
  loc_137B635:     Set var_130 = Me.Txt
  loc_137B63B:     Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_137B643:     var_134.Tag = var_C4
  loc_137B676:     Set var_90 = Me.Txt
  loc_137B67C:     Call 0.Method_Txt_Validate0 (Cancel, var_C8, var_C4, "SELECT City.CityName,CITY.ZIPCODE,Country.Name AS CountryName,State.Name AS StateName,Country.Type as CountryType FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE CITYCODE='")
  loc_137B684:     var_B0 = var_C8.Tag
  loc_137B68D:     var_10C = -1 & var_C4
  loc_137B69D:     unk_46CDF0.Execute CStr(var_130 & var_D8 & "'") & "'", var_130, 
  loc_137B6A8:     Set var_88 = var_130
  loc_137B6D4:     If (var_88.RecordCount > 0) Then
  loc_137B70D:       Set var_130 = Me.Txt
  loc_137B713:       Call 0.Method_Txt_Validate0 (CInt(3), var_134)
  loc_137B71B:       var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName")))
  loc_137B765:       Set var_130 = Me.Txt
  loc_137B76B:       Call 0.Method_Txt_Validate0 (CInt(4), var_134)
  loc_137B773:       var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Zipcode")))
  loc_137B7BD:       Set var_130 = Me.Txt
  loc_137B7C3:       Call 0.Method_Txt_Validate0 (CInt(5), var_134)
  loc_137B7CB:       var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("StateName")))
  loc_137B815:       Set var_130 = Me.Txt
  loc_137B81B:       Call 0.Method_Txt_Validate0 (CInt(6), var_134)
  loc_137B823:       var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CountryName")))
  loc_137B84E:       var_C8 = var_88.Fields.Item("CountryType")
  loc_137B86D:       Set var_130 = Me.Txt
  loc_137B873:       Call 0.Method_Txt_Validate0 (CInt(7), var_134)
  loc_137B87B:       var_134.Text = Proc_6_38_E68A98(CVar(var_C8))
  loc_137B88F:     End If
  loc_137B892:   Else
  loc_137B89A:     If (var_8A = CInt(&HD)) Then
  loc_137B8EB:       Set var_90 = Me.Txt
  loc_137B8F1:       Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_137B911:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C8.Text = vbNullString)) Then
  loc_137B914:         Exit Sub
  loc_137B915:       End If
  loc_137B950:       Set var_130 = Me.Txt
  loc_137B956:       Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_137B95E:       var_134.Text = CStr(Me.Fields.Item("Name").Value)
  loc_137B991:       var_C8 = Me.Fields.Item("Code")
  loc_137B9AF:       Set var_130 = Me.Txt
  loc_137B9B5:       Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_137B9BD:       var_134.Tag = CStr(var_C8.Value)
  loc_137B9D6:     Else
  loc_137B9DE:       If (var_8A = CInt(&HE)) Then
  loc_137BA2F:         Set var_90 = Me.Txt
  loc_137BA35:         Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_137BA55:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C8.Text = vbNullString)) Then
  loc_137BA58:           Exit Sub
  loc_137BA59:         End If
  loc_137BA94:         Set var_130 = Me.Txt
  loc_137BA9A:         Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_137BAA2:         var_134.Text = CStr(Me.Fields.Item("Name").Value)
  loc_137BAD5:         var_C8 = Me.Fields.Item("Code")
  loc_137BAF3:         Set var_130 = Me.Txt
  loc_137BAF9:         Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_137BB01:         var_134.Tag = CStr(var_C8.Value)
  loc_137BB1A:       Else
  loc_137BB22:         If (var_8A = CInt(&HF)) Then
  loc_137BB73:           Set var_90 = Me.Txt
  loc_137BB79:           Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_137BB99:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C8.Text = vbNullString)) Then
  loc_137BB9C:             Exit Sub
  loc_137BB9D:           End If
  loc_137BBD8:           Set var_130 = Me.Txt
  loc_137BBDE:           Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_137BBE6:           var_134.Text = CStr(Me.Fields.Item("Name").Value)
  loc_137BC37:           Set var_130 = Me.Txt
  loc_137BC3D:           Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_137BC45:           var_134.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_137BC5B:         End If
  loc_137BC5B:       End If
  loc_137BC5B:     End If
  loc_137BC5B:   End If
  loc_137BC5B: End If
  loc_137BC5B: Exit Sub
End Sub

Private Sub DGTravelAg_UnknownEvent_9 'F40C64
  'Data Table: 46CDD4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F40B5B: Me.DGTravelAg.Visible = False
  loc_F40B7A: If (Me.RecordCount > 0) Then
  loc_F40BB9:   Set var_B4 = Me.Txt
  loc_F40BBF:   Call 0.Method_DGTravelAg_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F40BC7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F40BFA:   var_B0 = Me.Fields.Item("Name")
  loc_F40C19:   Set var_B4 = Me.Txt
  loc_F40C1F:   Call 0.Method_DGTravelAg_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F40C27:   var_B8.Text = CStr(var_B0.Value)
  loc_F40C3D: End If
  loc_F40C48: Set var_A8 = Me.Txt
  loc_F40C4E: Call 0.Method_DGTravelAg_UnknownEvent_90 (CInt(&HD))
  loc_F40C56: var_B0.SetFocus
  loc_F40C62: Exit Sub
End Sub

Private Sub DGTravelAg_UnknownEvent_1F 'E73B6C
  'Data Table: 46CDD4
  loc_E73B2A: Proc_6_153_E91194(Me.DGTravelAg, arg_14)
  loc_E73B41: Set var_8C = Me.FGPoint
  loc_E73B5D: Proc_6_138_106D6F8(Me.DGTravelAg, global_72, CInt(&HD))
  loc_E73B6B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EAE360
  'Data Table: 46CDD4
  loc_EAE2E8: If (CBool(Me.DGTravelAg.Visible) = &HFF) Then
  loc_EAE2EB:   Call DGTravelAg_UnknownEvent_9()
  loc_EAE2F0: End If
  loc_EAE30C: If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_EAE30F:   Call DGMarketSeg_UnknownEvent_9()
  loc_EAE314: End If
  loc_EAE330: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_EAE333:   Call DGCity_UnknownEvent_9()
  loc_EAE338: End If
  loc_EAE354: If (CBool(Me.DGBusiness.Visible) = &HFF) Then
  loc_EAE357:   Call DGBusiness_UnknownEvent_9()
  loc_EAE35C: End If
  loc_EAE35C: Exit Sub
End Sub

Private Sub Form_Load() '1145DA4
  'Data Table: 46CDD4
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C4 As DataGrid
  Dim var_D8 As Variant
  Dim Me As Recordset15
  loc_1145A10: On Error Goto loc_1145D9E
  loc_1145A2B: Proc_6_23_DFBA28(Me, 5500)
  loc_1145A41: Set var_88 = Me.Txt
  loc_1145A47: Call 0.Method_Form_Load0 (CInt(3), var_90)
  loc_1145A66: Me.DGCity.Left = CVar(var_90.Left)
  loc_1145A82: Set var_B8 = Me.Txt
  loc_1145A88: Call 0.Method_Form_Load0 (CInt(3), var_BC)
  loc_1145AA3: Set var_88 = Me.Txt
  loc_1145AA9: Call 0.Method_Form_Load0 (CInt(3), var_90)
  loc_1145AC1: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_1145ACA: Set var_C4 = Me.DGCity
  loc_1145AD0: var_C4.Top = CVar(var_90.Left)
  loc_1145AEC: Set global_68 = New 
  loc_1145AFE: Me.var_C4.CursorLocation = 3
  loc_1145B28: var_D8 = CVar("Select CITYCODE AS Code,CITYNAME AS Name From CITY where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by CITYName") 'String
  loc_1145B32: Me.Open var_D8, CVar(MemVar_1F92044), 2
  loc_1145B46: CVarUnk
  loc_1145B4B: VerifyVarObj
  loc_1145B51: Set var_88 = Me.DGCity
  loc_1145B57: LateIdStAd
  loc_1145B6F: Set global_72 = New 
  loc_1145B81: Me.DGCity.CursorLocation = 3
  loc_1145BAB: var_D8 = CVar("Select SubCode AS Code,Name From SubGroup Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and CompanyType='Travel Agency' Order by Name") 'String
  loc_1145BB5: Me.Open var_D8, CVar(MemVar_1F92044), 2
  loc_1145BC9: CVarUnk
  loc_1145BCE: VerifyVarObj
  loc_1145BD4: Set var_88 = Me.DGTravelAg
  loc_1145BDA: LateIdStAd
  loc_1145C04: Me.DGTravelAg.CursorLocation = 3
  loc_1145C2E: var_D8 = CVar("Select Code,Name FROM MarketSeg Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name") 'String
  loc_1145C38: Me.Open var_D8, CVar(MemVar_1F92044), 2
  loc_1145C4C: CVarUnk
  loc_1145C51: VerifyVarObj
  loc_1145C57: Set var_88 = Me.DGMarketSeg
  loc_1145C5D: LateIdStAd
  loc_1145C87: Me.DGMarketSeg.CursorLocation = 3
  loc_1145CB1: var_D8 = CVar("SELECT Code,Name FROM BussSource Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name") 'String
  loc_1145CCF: CVarUnk
  loc_1145CD4: VerifyVarObj
  loc_1145CDA: Set var_88 = Me.DGBusiness
  loc_1145CE0: LateIdStAd
  loc_1145D0A: Me.DGBusiness.CursorLocation = 3
  loc_1145D34: var_D8 = CVar("SELECT CODE AS SearchCode,GroupProf.* FROM GroupProf Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY NAME") 'String
  loc_1145D3E: r_D8, CVar(MemVar_1F92044), 2 var_D8, CVar(MemVar_1F92044), 2
  loc_1145D55: Set var_88 = Me
  loc_1145D6C: Call Proc_29_41_F136A4(Proc_5_1_100CB50("INI", var_88, New, 3, -1, var_88, New, 3), -1, var_88, New)
  loc_1145D77: Call Proc_29_43_F27888(3, -1)
  loc_1145D7C: Call Proc_29_44_144BC7C(var_88)
  loc_1145D95: If (GroupProfile.OpenMode = 1) Then
  loc_1145D98:   Call TopCtrl1_UnknownEvent_11()
  loc_1145D9D: End If
  loc_1145D9D: Exit Sub
  loc_1145D9E: ' Referenced from: 1145A10
  loc_1145D9E: Proc_6_60_E62BC4(global_72)
  loc_1145DA3: Exit Sub
End Sub

Private Sub Form_Resize() 'DFCB38
  'Data Table: 46CDD4
  loc_DFCB34: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E77C18
  'Data Table: 46CDD4
  loc_E77BBF: Set global_68 = Nothing
  loc_E77BD1: Set global_80 = Nothing
  loc_E77BE3: Set global_72 = Nothing
  loc_E77BF5: Set global_76 = Nothing
  loc_E77C07: Set global_64 = Nothing
  loc_E77C13: MasterFormExit = 0
  loc_E77C16: Exit Sub
End Sub

Private Sub Form_Activate() 'E83E8C
  'Data Table: 46CDD4
  Dim var_A0 As TextBox
  loc_E83E20: On Error Goto loc_E83E86
  loc_E83E27: Set var_88 = Me.TopCtrl1
  loc_E83E2D: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030010()
  loc_E83E42: If (CLng(CInt()) = &H2D) Then
  loc_E83E45:   Call TopCtrl1_UnknownEvent_1D()
  loc_E83E4A: End If
  loc_E83E5E: If (GroupProfile.OpenMode = 1) Then
  loc_E83E6C:   Set var_88 = Me.Txt
  loc_E83E72:   Call 0.Method_Form_Activate0 (CInt(0))
  loc_E83E7A:   var_A0.SetFocus
  loc_E83E86:   ' Referenced from: E83E20
  loc_E83E86: End If
  loc_E83E86: Proc_6_60_E62BC4(var_A0)
  loc_E83E8B: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2698C
  'Data Table: 46CDD4
  loc_E26971: If (MasterFormExit = &HFF) Then
  loc_E26981:   Me.Global.Unload Me
  loc_E26989: End If
  loc_E26989: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2AD0C
  'Data Table: 46CDD4
  loc_E2ACE4: On Error Goto loc_E2AD04
  loc_E2ACFB: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2AD03: Exit Sub
  loc_E2AD04: ' Referenced from: E2ACE4
  loc_E2AD04: Proc_6_60_E62BC4(Shift)
  loc_E2AD09: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_9 'F41604
  'Data Table: 46CDD4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F414FB: Me.DGCity.Visible = False
  loc_F4151A: If (Me.RecordCount > 0) Then
  loc_F41559:   Set var_B4 = Me.Txt
  loc_F4155F:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(3), var_B8)
  loc_F41567:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4159A:   var_B0 = Me.Fields.Item("Name")
  loc_F415B9:   Set var_B4 = Me.Txt
  loc_F415BF:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(3), var_B8)
  loc_F415C7:   var_B8.Text = CStr(var_B0.Value)
  loc_F415DD: End If
  loc_F415E8: Set var_A8 = Me.Txt
  loc_F415EE: Call 0.Method_DGCity_UnknownEvent_90 (CInt(3))
  loc_F415F6: var_B0.SetFocus
  loc_F41602: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_1F 'E7528C
  'Data Table: 46CDD4
  loc_E7524A: Proc_6_153_E91194(Me.DGCity, arg_14)
  loc_E75261: Set var_8C = Me.FGPoint
  loc_E7527D: Proc_6_138_106D6F8(Me.DGCity, global_68, CInt(3))
  loc_E7528B: Exit Sub
End Sub

Public Function MasterFormExitGet() '46D86C
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '46D87B
  MasterFormExit = Value
End Sub

Public Function intStaIdGet() '46D88A
  intStaIdGet = intStaId
End Function

Public Sub intStaIdPut(Value) '46D899
  intStaId = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E97918
  'Data Table: 46CDD4
  Dim Me As Recordset15
  loc_E978A6: On Error Goto loc_E9790F
  loc_E978AF: Me.MoveFirst
  loc_E978D9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97901: Proc_5_0_110649C(&HFF, Me, global_64)
  loc_E97909: Call Proc_29_44_144BC7C(0)
  loc_E9790E: Exit Sub
  loc_E9790F: ' Referenced from: E978A6
  loc_E9790F: Proc_6_60_E62BC4(var_A0)
  loc_E97914: Exit Sub
End Sub

Public Property Get OpenMode() 'E07600
  'Data Table: 46CDD4
  loc_E075F9: OpenMode = global_60
End Sub

Public Property Let OpenMode(vNewValue) 'E020E4
  'Data Table: 46CDD4
  loc_E020DE: global_60 = vNewValue
  loc_E020E1: Exit Sub
End Sub

Public Sub Proc_29_41_F136A4(arg_C) 'F136A4
  'Data Table: 46CDD4
  Dim var_98 As TextBox
  loc_F135B6: Set var_8C = Me.Txt
  loc_F135BC: Call 0.Method_Proc_29_41_F136A4C (var_8E, var_86)
  loc_F135CC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F135E2:   Set var_8C = Me.Txt
  loc_F135E8:   Call 0.Method_Proc_29_41_F136A40 (CInt(var_86), var_98)
  loc_F135F0:   var_98.Enabled = arg_C
  loc_F135FF: Next var_92 'Byte
  loc_F13612: Set var_8C = Me.Txt
  loc_F13618: Call 0.Method_Proc_29_41_F136A40 (CInt(5), var_98)
  loc_F13620: var_98.Enabled = False
  loc_F13639: Set var_8C = Me.Txt
  loc_F1363F: Call 0.Method_Proc_29_41_F136A40 (CInt(4), var_98)
  loc_F13647: var_98.Enabled = False
  loc_F13660: Set var_8C = Me.Txt
  loc_F13666: Call 0.Method_Proc_29_41_F136A40 (CInt(6), var_98)
  loc_F1366E: var_98.Enabled = False
  loc_F13687: Set var_8C = Me.Txt
  loc_F1368D: Call 0.Method_Proc_29_41_F136A40 (CInt(7), var_98)
  loc_F13695: var_98.Enabled = False
  loc_F136A1: Exit Sub
End Sub

Public Sub Proc_29_42_E9AE58
  'Data Table: 46CDD4
  Dim var_98 As TextBox
  loc_E9ADDE: Set var_8C = Me.Txt
  loc_E9ADE4: Call 0.Method_Proc_29_42_E9AE58C (var_8E, var_86)
  loc_E9ADF4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9AE0A:   Set var_8C = Me.Txt
  loc_E9AE10:   Call 0.Method_Proc_29_42_E9AE580 (CInt(var_86), var_98)
  loc_E9AE18:   var_98.Text = vbNullString
  loc_E9AE34:   Set var_8C = Me.Txt
  loc_E9AE3A:   Call 0.Method_Proc_29_42_E9AE580 (CInt(var_86), var_98)
  loc_E9AE42:   var_98.Tag = vbNullString
  loc_E9AE51: Next var_92 'Byte
  loc_E9AE57: Exit Sub
End Sub

Public Sub Proc_29_43_F27888
  'Data Table: 46CDD4
  loc_F27794: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_F277A6:   Me.DGCity.Visible = False
  loc_F277AE: End If
  loc_F277CA: If (CBool(Me.DGTravelAg.Visible) = &HFF) Then
  loc_F277DC:   Me.DGTravelAg.Visible = False
  loc_F277E4: End If
  loc_F27800: If (CBool(Me.DGBusiness.Visible) = &HFF) Then
  loc_F27812:   Me.DGBusiness.Visible = False
  loc_F2781A: End If
  loc_F27836: If (CBool(Me.DGMarketSeg.Visible) = &HFF) Then
  loc_F27848:   Me.DGMarketSeg.Visible = False
  loc_F27850: End If
  loc_F2786C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F2787E:   Me.FGPoint.Visible = False
  loc_F27886: End If
  loc_F27886: Exit Sub
End Sub

Public Sub Proc_29_44_144BC7C
  'Data Table: 46CDD4
  Dim Me As Recordset15
  Dim var_90 As Recordset15
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim var_C4 As String
  Dim var_B0 As TextBox
  Dim var_C0 As Variant
  Dim var_C8 As String
  Dim unk_46CDF0 As Connection15
  Dim var_88 As Recordset15
  loc_144B130: On Error Goto loc_144BC73
  loc_144B14A: If (Me.RecordCount > 0) Then
  loc_144B153:   Set var_90 = global_64 
  loc_144B190:   Set var_AC = Me.Txt
  loc_144B196:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(0), var_B0)
  loc_144B19E:   var_B0.Tag = CStr(var_90.Fields.Item("Code").Value)
  loc_144B1ED:   Set var_AC = Me.Txt
  loc_144B1F3:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(0), var_B0)
  loc_144B1FB:   var_B0.Text = CStr(var_90.Fields.Item("Name").Value)
  loc_144B24A:   Set var_AC = Me.Txt
  loc_144B250:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(1), var_B0)
  loc_144B258:   var_B0.Text = CStr(var_90.Fields.Item("Add1").Value)
  loc_144B2A7:   Set var_AC = Me.Txt
  loc_144B2AD:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(2), var_B0)
  loc_144B2B5:   var_B0.Text = CStr(var_90.Fields.Item("Add2").Value)
  loc_144B301:   Set var_AC = Me.Txt
  loc_144B307:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(7), var_B0)
  loc_144B30F:   var_B0.Text = Proc_6_38_E68A98(CVar(var_90.Fields.Item("Type")))
  loc_144B359:   Set var_AC = Me.Txt
  loc_144B35F:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(9), var_B0)
  loc_144B367:   var_B0.Text = Proc_6_38_E68A98(CVar(var_90.Fields.Item("ConName")))
  loc_144B3B4:   Set var_AC = Me.Txt
  loc_144B3BA:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(8), var_B0)
  loc_144B3C2:   var_B0.Text = CStr(var_90.Fields.Item("PhoneNo").Value)
  loc_144B411:   Set var_AC = Me.Txt
  loc_144B417:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(&HA), var_B0)
  loc_144B41F:   var_B0.Text = CStr(var_90.Fields.Item("Comments1").Value)
  loc_144B46E:   Set var_AC = Me.Txt
  loc_144B474:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(&HB), var_B0)
  loc_144B47C:   var_B0.Text = CStr(var_90.Fields.Item("Comments2").Value)
  loc_144B4CB:   Set var_AC = Me.Txt
  loc_144B4D1:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(&HC), var_B0)
  loc_144B4D9:   var_B0.Text = CStr(var_90.Fields.Item("Comments3").Value)
  loc_144B509:   var_A8 = var_90.Fields.Item("City")
  loc_144B51A:   var_C4 = CStr(var_A8.Value)
  loc_144B528:   Set var_AC = Me.Txt
  loc_144B52E:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(3), var_B0)
  loc_144B536:   var_B0.Tag = var_C4
  loc_144B56A:   Set var_94 = Me.Txt
  loc_144B570:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(3), var_A8, var_C4, "SELECT City.CityName,CITY.ZIPCODE,Country.Name AS CountryName,State.Name AS StateName FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE CITYCODE='")
  loc_144B578:   var_C0 = var_A8.Tag
  loc_144B581:   var_C8 = -1 & var_C4
  loc_144B591:   unk_46CDF0.Execute var_C8 & "'", var_AC, 
  loc_144B59C:   Set var_88 = var_AC
  loc_144B5C8:   If (var_88.RecordCount > 0) Then
  loc_144B601:     Set var_AC = Me.Txt
  loc_144B607:     Call 0.Method_Proc_29_44_144BC7C0 (CInt(3), var_B0)
  loc_144B60F:     var_B0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName")))
  loc_144B659:     Set var_AC = Me.Txt
  loc_144B65F:     Call 0.Method_Proc_29_44_144BC7C0 (CInt(4), var_B0)
  loc_144B667:     var_B0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Zipcode")))
  loc_144B6B1:     Set var_AC = Me.Txt
  loc_144B6B7:     Call 0.Method_Proc_29_44_144BC7C0 (CInt(5), var_B0)
  loc_144B6BF:     var_B0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("StateName")))
  loc_144B6EA:     var_A8 = var_88.Fields.Item("CountryName")
  loc_144B709:     Set var_AC = Me.Txt
  loc_144B70F:     Call 0.Method_Proc_29_44_144BC7C0 (CInt(6), var_B0)
  loc_144B717:     var_B0.Text = Proc_6_38_E68A98(CVar(var_A8))
  loc_144B72E:   Else
  loc_144B73C:     Set var_94 = Me.Txt
  loc_144B742:     Call 0.Method_Proc_29_44_144BC7C0 (CInt(3), var_A8)
  loc_144B74A:     var_A8.Text = vbNullString
  loc_144B764:     Set var_94 = Me.Txt
  loc_144B76A:     Call 0.Method_Proc_29_44_144BC7C0 (CInt(4), var_A8)
  loc_144B772:     var_A8.Text = vbNullString
  loc_144B78C:     Set var_94 = Me.Txt
  loc_144B792:     Call 0.Method_Proc_29_44_144BC7C0 (CInt(5), var_A8)
  loc_144B79A:     var_A8.Text = vbNullString
  loc_144B7B4:     Set var_94 = Me.Txt
  loc_144B7BA:     Call 0.Method_Proc_29_44_144BC7C0 (CInt(6), var_A8)
  loc_144B7C2:     var_A8.Text = vbNullString
  loc_144B7CE:   End If
  loc_144B7E8:   var_A8 = var_90.Fields.Item("TravelAgency")
  loc_144B7F9:   var_C4 = CStr(var_A8.Value)
  loc_144B807:   Set var_AC = Me.Txt
  loc_144B80D:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(&HD), var_B0)
  loc_144B815:   var_B0.Tag = var_C4
  loc_144B849:   Set var_94 = Me.Txt
  loc_144B84F:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(&HD), var_A8, var_C4, "SELECT SubGroup.Name AS TravelAgName FROM SubGroup WHERE SubCode='")
  loc_144B857:   var_C0 = var_A8.Tag
  loc_144B860:   var_C8 = -1 & var_C4
  loc_144B870:   unk_46CDF0.Execute var_C8 & "'", var_AC, 
  loc_144B87B:   Set var_88 = var_AC
  loc_144B8A7:   If (var_88.RecordCount > 0) Then
  loc_144B8C4:     var_A8 = var_88.Fields.Item("TravelAgName")
  loc_144B8E3:     Set var_AC = Me.Txt
  loc_144B8E9:     Call 0.Method_Proc_29_44_144BC7C0 (CInt(&HD), var_B0)
  loc_144B8F1:     var_B0.Text = CStr(var_A8.Value)
  loc_144B90A:   Else
  loc_144B918:     Set var_94 = Me.Txt
  loc_144B91E:     Call 0.Method_Proc_29_44_144BC7C0 (CInt(&HD), var_A8)
  loc_144B926:     var_A8.Text = vbNullString
  loc_144B932:   End If
  loc_144B94C:   var_A8 = var_90.Fields.Item("BusSource")
  loc_144B95D:   var_C4 = CStr(var_A8.Value)
  loc_144B96B:   Set var_AC = Me.Txt
  loc_144B971:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(&HE), var_B0)
  loc_144B979:   var_B0.Tag = var_C4
  loc_144B9AD:   Set var_94 = Me.Txt
  loc_144B9B3:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(&HE), var_A8, var_C4, "SELECT BussSource.Name AS BussSourceName FROM BussSource WHERE CODE='")
  loc_144B9BB:   var_C0 = var_A8.Tag
  loc_144B9C4:   var_C8 = -1 & var_C4
  loc_144B9D4:   unk_46CDF0.Execute var_C8 & "'", var_AC, 
  loc_144B9DF:   Set var_88 = var_AC
  loc_144BA0B:   If (var_88.RecordCount > 0) Then
  loc_144BA28:     var_A8 = var_88.Fields.Item("BussSourcename")
  loc_144BA47:     Set var_AC = Me.Txt
  loc_144BA4D:     Call 0.Method_Proc_29_44_144BC7C0 (CInt(&HE), var_B0)
  loc_144BA55:     var_B0.Text = CStr(var_A8.Value)
  loc_144BA6E:   Else
  loc_144BA7C:     Set var_94 = Me.Txt
  loc_144BA82:     Call 0.Method_Proc_29_44_144BC7C0 (CInt(&HE), var_A8)
  loc_144BA8A:     var_A8.Text = vbNullString
  loc_144BA96:   End If
  loc_144BAB0:   var_A8 = var_90.Fields.Item("MarketSeg")
  loc_144BAC1:   var_C4 = CStr(var_A8.Value)
  loc_144BACF:   Set var_AC = Me.Txt
  loc_144BAD5:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(&HF), var_B0)
  loc_144BADD:   var_B0.Tag = var_C4
  loc_144BB11:   Set var_94 = Me.Txt
  loc_144BB17:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(&HF), var_A8, var_C4, "SELECT MarketSeg.Name AS MarketSegName FROM MarketSeg WHERE Code='")
  loc_144BB1F:   var_C0 = var_A8.Tag
  loc_144BB28:   var_C8 = -1 & var_C4
  loc_144BB38:   unk_46CDF0.Execute var_C8 & "'", var_AC, 
  loc_144BB43:   Set var_88 = var_AC
  loc_144BB6F:   If (var_88.RecordCount > 0) Then
  loc_144BB8C:     var_A8 = var_88.Fields.Item("MarketSegName")
  loc_144BBAB:     Set var_AC = Me.Txt
  loc_144BBB1:     Call 0.Method_Proc_29_44_144BC7C0 (CInt(&HF), var_B0)
  loc_144BBB9:     var_B0.Text = CStr(var_A8.Value)
  loc_144BBD2:   Else
  loc_144BBE0:     Set var_94 = Me.Txt
  loc_144BBE6:     Call 0.Method_Proc_29_44_144BC7C0 (CInt(&HF), var_A8)
  loc_144BBEE:     var_A8.Text = vbNullString
  loc_144BBFA:   End If
  loc_144BC33:   Set var_AC = Me.Txt
  loc_144BC39:   Call 0.Method_Proc_29_44_144BC7C0 (CInt(&H10), var_B0)
  loc_144BC41:   var_B0.Text = CStr(var_90.Fields.Item("GroupType").Value)
  loc_144BC59:   Set var_90 = Nothing 
  loc_144BC60: Else
  loc_144BC60:   Call Proc_29_42_E9AE58()
  loc_144BC65: End If
  loc_144BC65: Call Proc_29_43_F27888()
  loc_144BC6F: Set var_88 = Nothing
  loc_144BC72: Exit Sub
  loc_144BC73: ' Referenced from: 144B130
  loc_144BC73: Proc_6_60_E62BC4()
  loc_144BC78: Exit Sub
End Sub
