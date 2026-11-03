VERSION 5.00
Begin VB.Form FrmComplaintMast
  Caption = "Complain Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmComplaintMast.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8415
  ClientHeight = 4125
  Begin MainCtrl topCtrl1
    Left = 0
    Top = 0
    Width = 8415
    Height = 450
    TabIndex = 23
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2385
    Top = 2910
    Width = 2670
    Height = 240
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 15
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2385
    Top = 2640
    Width = 1260
    Height = 240
    TabIndex = 7
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
  Begin Frame FrmList
    Left = 13740
    Top = 6510
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 30
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 20
    End
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2385
    Top = 2370
    Width = 2715
    Height = 240
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 8
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
    Left = 2175
    Top = 6375
    Width = 2670
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 6
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
    ForeColor = &HFF0000&
    Left = 3675
    Top = 1290
    Width = 855
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 6
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2385
    Top = 1290
    Width = 1260
    Height = 240
    TabIndex = 0
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
  Begin MSFlexGrid FGPoint
    Left = 13755
    Top = 4485
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGCategory
    Left = 10410
    Top = 3270
    Width = 4230
    Height = 2670
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2385
    Top = 1560
    Width = 3990
    Height = 240
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin TextBox TxtDesc
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2385
    Top = 1830
    Width = 3990
    Height = 240
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 255
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2385
    Top = 2100
    Width = 2715
    Height = 240
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin DataGrid DGDepartment
    Left = 11415
    Top = 720
    Width = 4230
    Height = 3060
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 420
    Width = 180
    Height = 540
    TabIndex = 24
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
    Caption = "Clearing Person"
    Index = 8
    ForeColor = &HFF0000&
    Left = 465
    Top = 2925
    Width = 1530
    Height = 240
    TabIndex = 22
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
    Caption = "Clearing Date"
    Index = 7
    ForeColor = &HFF0000&
    Left = 465
    Top = 2650
    Width = 1305
    Height = 240
    TabIndex = 21
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
    Caption = "Status"
    Index = 6
    ForeColor = &HFF0000&
    Left = 465
    Top = 2378
    Width = 585
    Height = 240
    TabIndex = 18
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
    Caption = "Complaint By"
    Index = 5
    ForeColor = &HFF0000&
    Left = 810
    Top = 6360
    Width = 1275
    Height = 240
    TabIndex = 17
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
    Caption = "Time"
    Index = 4
    ForeColor = &HFF0000&
    Left = 9780
    Top = 7590
    Width = 480
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
    Caption = "Complain Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 465
    Top = 1290
    Width = 1410
    Height = 240
    TabIndex = 15
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
    Caption = "Department"
    Index = 3
    ForeColor = &HFF0000&
    Left = 465
    Top = 2106
    Width = 1110
    Height = 240
    TabIndex = 11
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
    Caption = "Descrption"
    Index = 2
    ForeColor = &HFF0000&
    Left = 465
    Top = 1834
    Width = 1005
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
  Begin Label LblName
    Caption = "Complaint Category"
    Index = 0
    ForeColor = &HFF0000&
    Left = 465
    Top = 1562
    Width = 1890
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
End

Attribute VB_Name = "FrmComplaintMast"


Private Sub TxtDesc_GotFocus() 'E40430
  'Data Table: 46DC54
  loc_E4040F: Me.TxtDesc.BackColor = &HE0E0E0
  loc_E40426: Me.TxtDesc.ForeColor = &HC00000
  loc_E4042E: Exit Sub
End Sub

Private Sub TxtDesc_KeyDown(KeyCode As Integer, Shift As Integer) 'F2D35C
  'Data Table: 46DC54
  Dim var_8C As Variant
  Dim var_88 As Variant
  loc_F2D261: If ((CLng(KeyCode) = &H28) Or (CLng(KeyCode) = &HD)) Then
  loc_F2D26F:   Set var_88 = Me.Txt
  loc_F2D275:   Call 0.Method_TxtDesc_KeyDown0 (CInt(4))
  loc_F2D27D:   var_8C.SetFocus
  loc_F2D289: End If
  loc_F2D2A3: Set var_8C = Me.DGCategory
  loc_F2D2C4: If ((CBool(Me.DGDepartment.Visible) = 0) And (CBool(var_8C.Visible) = 0)) Then
  loc_F2D2D1:   If (CLng(KeyCode) = &H26) Then
  loc_F2D2DF:     Set var_88 = Me.Txt
  loc_F2D2E5:     Call 0.Method_TxtDesc_KeyDown0 (CInt(3), var_8C)
  loc_F2D2ED:     var_8C.SetFocus
  loc_F2D2F9:   End If
  loc_F2D303:   If (CLng(KeyCode) = &H28) Then
  loc_F2D311:     Set var_88 = Me.Txt
  loc_F2D317:     Call 0.Method_TxtDesc_KeyDown0 (CInt(4), var_8C)
  loc_F2D31F:     var_8C.SetFocus
  loc_F2D32B:   End If
  loc_F2D33A:   Me.TxtDesc.BackColor = -2147483643
  loc_F2D351:   Me.TxtDesc.ForeColor = &HC00000
  loc_F2D359: End If
  loc_F2D359: Exit Sub
End Sub

Private Sub TxtDesc_LostFocus() 'E403CC
  'Data Table: 46DC54
  loc_E403AB: Me.TxtDesc.BackColor = -2147483643
  loc_E403C2: Me.TxtDesc.ForeColor = &HC00000
  loc_E403CA: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E63408
  'Data Table: 46DC54
  loc_E633D8: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_E633DB:   Call DGCategory_UnknownEvent_9()
  loc_E633E0: End If
  loc_E633FC: If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_E633FF:   Call DGDepartment_UnknownEvent_9()
  loc_E63404: End If
  loc_E63404: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11060F8
  'Data Table: 46DC54
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_1105DDE: Set var_88 = Me.Txt
  loc_1105DE4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1105DF2: Proc_6_74_E226B0(var_8C)
  loc_1105DFE: Call Proc_166_37_EBDFB0(var_8C)
  loc_1105E06: var_92 = Index
  loc_1105E11: If (var_92 = CInt(3)) Then
  loc_1105E2B:   If (Me.RecordCount > 0) Then
  loc_1105E39:     Set var_8C = Me.FGPoint
  loc_1105E51:     Proc_6_137_1193554(Me.DGCategory, global_52, Index)
  loc_1105E5F:   End If
  loc_1105E62: Else
  loc_1105E6A:   If (var_92 = CInt(4)) Then
  loc_1105E84:     If (Me.RecordCount > 0) Then
  loc_1105E92:       Set var_8C = Me.FGPoint
  loc_1105EAA:       Proc_6_137_1193554(Me.DGDepartment, global_56, Index)
  loc_1105EB8:     End If
  loc_1105F06:     Set var_88 = Me.Txt
  loc_1105F0C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1105F14:     var_8C = var_8C.Text
  loc_1105F2C:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1105F2F:       Exit Sub
  loc_1105F30:     End If
  loc_1105F3D:     Set var_88 = Me.Txt
  loc_1105F43:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1105F4B:     var_A0 = var_8C.Text
  loc_1105F5D:     var_B0 = "Name"
  loc_1105F98:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1105FA1:       Me.MoveFirst
  loc_1105FC4:       Set var_88 = Me.Txt
  loc_1105FCA:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1105FD2:       0 = var_8C.Text
  loc_1105FEB:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1106000:     End If
  loc_1106003:   Else
  loc_110600B:     If (var_92 = CInt(5)) Then
  loc_110601B:       ReDim var_F0(0 To 1)
  loc_1106032:       var_F0(0) = "UnSolved"
  loc_1106041:       var_F0(1) = "Solved"
  loc_1106058:       global_76 = Array(var_F0)
  loc_1106063:       Set var_B4 = Me.ListView
  loc_110607E:       Set var_8C = Me.Txt
  loc_1106098:       Set global_92 = Proc_6_66_EFF8FC(var_B4, var_8C, Index)
  loc_11060B6:       Set var_88 = Me.Txt
  loc_11060BC:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11060C4:       global_76 = var_8C.Text
  loc_11060D6:       Set var_90 = Me.Txt
  loc_11060DC:       Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_11060E4:       var_B4.Tag = 2
  loc_11060F7:     End If
  loc_11060F7:   End If
  loc_11060F7: End If
  loc_11060F7: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11C9F18
  'Data Table: 46DC54
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  Dim var_B0 As TextBox
  Dim var_C0 As TextBox
  Dim var_90 As Variant
  loc_11C9ADA: If (CLng(Shift) = &H1B) Then
  loc_11C9ADD:   Call Proc_166_37_EBDFB0()
  loc_11C9AE2:   Exit Sub
  loc_11C9AE3: End If
  loc_11C9AE6: var_88 = KeyCode
  loc_11C9AF1: If (var_88 = CInt(3)) Then
  loc_11C9B0B:   If (Me.RecordCount > 0) Then
  loc_11C9B2B:     Set var_A0 = Me.FGPoint
  loc_11C9B5D:     Proc_6_79_11ACE04(Me.DGCategory, Me.Txt, CInt(3), global_52, Shift)
  loc_11C9B71:   End If
  loc_11C9BCA:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11C9BF0:     Proc_6_138_106D6F8(Me.DGCategory, global_52, KeyCode, Me.FGPoint, 0)
  loc_11C9BFE:   End If
  loc_11C9C01: Else
  loc_11C9C09:   If (var_88 = CInt(4)) Then
  loc_11C9C17:     Set var_B0 = Me.Txt
  loc_11C9C29:     Set var_A8 = Me.FGPoint
  loc_11C9C34:     Set var_A0 = Nothing
  loc_11C9C62:     Proc_6_69_134A198(Me.DGDepartment, var_B0, KeyCode, global_56, Shift, 0, 1)
  loc_11C9C81:     var_8C = Me.RecordCount
  loc_11C9CD1:     If ((var_8C > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11C9CD8:       Set var_A0 = Me.DGDepartment
  loc_11C9CDF:       Set var_94 = Me.FGPoint
  loc_11C9CF7:       Proc_6_138_106D6F8(var_A0, global_56, KeyCode, var_94, var_A0, var_A8)
  loc_11C9D05:     End If
  loc_11C9D08:   Else
  loc_11C9D10:     If (var_88 = CInt(5)) Then
  loc_11C9D35:       Set var_90 = Me.Txt
  loc_11C9D3B:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, 0)
  loc_11C9D43:       1 = var_94.Left
  loc_11C9D55:       Set var_A0 = Me.Txt
  loc_11C9D5B:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_11C9D63:       var_A0 = var_A8.Top
  loc_11C9D75:       Set var_AC = Me.Txt
  loc_11C9D7B:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0, var_BC)
  loc_11C9D83:       0 = var_B0.Height
  loc_11C9D95:       Set var_B4 = Me.Txt
  loc_11C9D9B:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_11C9DA3:       var_C4 = var_C0.Width
  loc_11C9DEB:       Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11C9E0F:     End If
  loc_11C9E0F:   End If
  loc_11C9E0F: End If
  loc_11C9E4A: If ((CBool(Me.DGDepartment.Visible) = 0) And (CBool(Me.DGCategory.Visible) = 0)) Then
  loc_11C9E62:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11C9E6B:     Proc_6_76_E52838(Shift, arg_14, CInt(var_8C), CInt((var_B8 + var_BC)))
  loc_11C9E70:   End If
  loc_11C9E8E:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(4))) Then
  loc_11C9E97:     Call Txt_Validate(KeyCode)
  loc_11C9EA2:     If (var_86 = 0) Then
  loc_11C9EAB:       Call Proc_166_38_E8EA24(KeyCode, var_86, CInt(var_C4))
  loc_11C9EB0:     End If
  loc_11C9EB3:   Else
  loc_11C9ED1:     If ((CLng(Shift) = &H28) Or ((CLng(Shift) = &HD) And (KeyCode <> CInt(3)))) Then
  loc_11C9EDA:       Proc_6_75_E527CC(Shift, arg_14)
  loc_11C9EE2:     Else
  loc_11C9F00:       If ((CLng(Shift) = &H28) Or ((CLng(Shift) = &HD) And (KeyCode = CInt(3)))) Then
  loc_11C9F0D:         Me.TxtDesc.SetFocus
  loc_11C9F15:       End If
  loc_11C9F15:     End If
  loc_11C9F15:   End If
  loc_11C9F15: End If
  loc_11C9F15: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EFB5DC
  'Data Table: 46DC54
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_A0 As String
  loc_EFB50E: Proc_6_133_E7EF78(var_94)
  loc_EFB517: arg_10 = CInt(var_94)
  loc_EFB520: Proc_6_58_E054C0(arg_10, arg_10)
  loc_EFB528: var_96 = KeyAscii
  loc_EFB533: If (var_96 = CInt(3)) Then
  loc_EFB53A:   Set var_9C = Me.topCtrl1
  loc_EFB540:   Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_96)
  loc_EFB559:   If (CStr(arg_10) <> "Add") Then
  loc_EFB55E:     arg_10 = 0
  loc_EFB561:   End If
  loc_EFB564: Else
  loc_EFB56C:   If (var_96 = CInt(4)) Then
  loc_EFB57E:     var_A0 = "Name"
  loc_EFB599:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56, arg_10)
  loc_EFB5CB:     Proc_6_138_106D6F8(Me.DGDepartment, global_56, KeyAscii, Me.FGPoint)
  loc_EFB5D9:   End If
  loc_EFB5D9: End If
  loc_EFB5D9: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F33E4C
  'Data Table: 46DC54
  Dim var_86 As Integer
  loc_F33D3B: var_86 = KeyCode
  loc_F33D46: If (var_86 = CInt(3)) Then
  loc_F33D65:   If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_F33D72:     var_A4 = "Category"
  loc_F33D91:     Proc_6_80_FF0AC0(Me.Txt, CInt(3), global_52)
  loc_F33DC3:     Proc_6_138_106D6F8(Me.DGCategory, global_52, KeyCode, Me.FGPoint)
  loc_F33DD1:   End If
  loc_F33DD4: Else
  loc_F33DDC:   If (var_86 = CInt(4)) Then
  loc_F33DFB:     If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_F33E0F:       var_A4 = "Name"
  loc_F33E37:       Proc_6_68_129FB34(Me.DGDepartment, Me.Txt, CInt(4), global_56, Shift)
  loc_F33E4A:     End If
  loc_F33E4A:   End If
  loc_F33E4A: End If
  loc_F33E4A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F92C
  'Data Table: 46DC54
  loc_E4F90A: Set var_88 = Me.Txt
  loc_E4F910: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F91E: Proc_6_73_E22704(var_8C)
  loc_E4F92A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FA12D4
  'Data Table: 46DC54
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_FA115B: var_86 = Cancel
  loc_FA1166: If (var_86 = CInt(3)) Then
  loc_FA1169:   GoTo loc_FA12D2
  loc_FA116C: End If
  loc_FA1174: If (var_86 = CInt(2)) Then
  loc_FA117A:   Call Proc_166_36_1049000(var_88)
  loc_FA1185:   If (var_88 = &HFF) Then
  loc_FA118A:     arg_10 = &HFF
  loc_FA118D:     Exit Sub
  loc_FA118E:   End If
  loc_FA1191: Else
  loc_FA1199:   If (var_86 = CInt(4)) Then
  loc_FA11EA:     Set var_94 = Me.Txt
  loc_FA11F0:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_FA11F8:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_FA1210:     If (arg_10 Or (var_9C = vbNullString)) Then
  loc_FA1213:       Exit Sub
  loc_FA1214:     End If
  loc_FA124F:     Set var_B0 = Me.Txt
  loc_FA1255:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_FA125D:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA12AE:     Set var_B0 = Me.Txt
  loc_FA12B4:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_FA12BC:     var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FA12D2:   End If
  loc_FA12D2:   ' Referenced from: FA1169
  loc_FA12D2: End If
  loc_FA12D2: Exit Sub
End Sub

Private Sub Form_Load() '1163944
  'Data Table: 46DC54
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim var_CC As String
  Dim unk_46DC65 As Connection15
  Dim var_DC As Variant
  loc_116359C: On Error Goto loc_11638FF
  loc_11635AA: Set var_8C = Me.LblName
  loc_11635B0: Call 0.Method_Form_Load0 (7, var_90)
  loc_11635B8: var_90.Visible = False
  loc_11635CF: Set var_8C = Me.LblName
  loc_11635D5: Call 0.Method_Form_Load0 (8, var_90)
  loc_11635DD: var_90.Visible = False
  loc_11635F4: Set var_8C = Me.Txt
  loc_11635FA: Call 0.Method_Form_Load0 (6, var_90)
  loc_1163602: var_90.Visible = False
  loc_1163619: Set var_8C = Me.Txt
  loc_116361F: Call 0.Method_Form_Load0 (7, var_90)
  loc_1163627: var_90.Visible = False
  loc_116363A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_116364D: Set var_8C = Me.Txt
  loc_1163653: Call 0.Method_Form_Load0 (CInt(3), var_90)
  loc_1163672: Me.DGCategory.Left = CVar(var_90.Left)
  loc_116368E: Set var_B8 = Me.Txt
  loc_1163694: Call 0.Method_Form_Load0 (CInt(3), var_BC)
  loc_11636AF: Set var_8C = Me.Txt
  loc_11636B5: Call 0.Method_Form_Load0 (CInt(3), var_90)
  loc_11636CD: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_11636DC: Me.DGCategory.Top = CVar(var_90.Left)
  loc_11636FC: Set var_8C = Me.Txt
  loc_1163702: Call 0.Method_Form_Load0 (CInt(4), var_90)
  loc_1163721: Me.DGDepartment.Left = CVar(var_90.Left)
  loc_116373D: Set var_B8 = Me.Txt
  loc_1163743: Call 0.Method_Form_Load0 (CInt(4), var_BC)
  loc_1163764: Call 0.Method_Form_Load0 (CInt(4), var_90)
  loc_116377C: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_116378B: Me.DGDepartment.Top = CVar(var_90.Left)
  loc_11637C1: unk_46DC65.Execute "SELECT Code,Name FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_11637F0: CVarUnk
  loc_11637F5: VerifyVarObj
  loc_1163801: LateIdStAd
  loc_116382A: var_CC = "SELECT Code AS Scode,Category FROM ComplaintCategory Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  Order BY Category"
  loc_1163833: unk_46DC65.Execute var_CC, var_DC, -1
  loc_1163862: CVarUnk
  loc_1163867: VerifyVarObj
  loc_1163873: LateIdStAd
  loc_1163895: var_C8 = "SELECT CD.Code AS Scode,CD.Category AS CatCode,CD.CDate AS CDate,CD.CTime AS CTime,CC.Category AS Category,CD.Description AS Description,CD.Depart AS Depart,CD.UName AS UName,CD.Status AS Status,CD.Site_Code,CD.LogSite_Code FROM ComplaintDetail CD Left JOIN ComplaintCategory CC ON CD.Category =CC.Code Where (CD.LOGSITE_CODE='" & MemVar_1F92078
  loc_11638A5: unk_46DC65.Execute var_C8 & "') ORDER BY CD.Code", var_DC, -1
  loc_11638D7: Set var_8C = Me
  loc_11638E0: var_C8 = "INI"
  loc_11638EE: Call Proc_166_32_E88E94(Proc_5_1_100CB50(var_C8, var_8C, Me.DGCategory, var_8C, var_8C), Me.DGDepartment, var_8C)
  loc_11638F9: Call Proc_166_34_11D1568(var_8C, Me.Txt)
  loc_11638FE: Exit Sub
  loc_11638FF: ' Referenced from: 116359C
  loc_1163907: Set var_8C = Err()
  loc_116390D: Call 0.Method_arg_2C (var_C8)
  loc_116392E: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_1163941: Exit Sub
  loc_1163942: Exit Sub
End Sub

Private Sub Form_Resize() 'ED7768
  'Data Table: 46DC54
  Dim var_8C As Label
  loc_ED76C6: Call 0.Method_arg_50 (var_88)
  loc_ED76D8: Me.LblFormCaption.Caption = var_88
  loc_ED76F1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED76FD: Set var_A0 = Me.topCtrl1
  loc_ED7703: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED7710: Set var_8C = Me.topCtrl1
  loc_ED7716: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED7730: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED774B: Call 0.Method_arg_100 (var_B8)
  loc_ED775D: Me.LblFormCaption.Width = var_B8
  loc_ED7765: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5297C
  'Data Table: 46DC54
  loc_E5294F: Set global_52 = Nothing
  loc_E52961: Set global_52 = Nothing
  loc_E52973: Set global_56 = Nothing
  loc_E5297A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E88878
  'Data Table: 46DC54
  loc_E88814: On Error Goto loc_E88834
  loc_E8882B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E88833: Exit Sub
  loc_E88834: ' Referenced from: E88814
  loc_E8883C: Set var_88 = Err()
  loc_E88842: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E88863: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E88876: Exit Sub
  loc_E88877: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1045B28
  'Data Table: 46DC54
  Dim var_94 As TextBox
  Dim var_8C As TextBox
  loc_10458CC: On Error Goto loc_1045B21
  loc_10458F2: Call Proc_166_32_E88E94(Proc_5_1_100CB50("ADD", Me))
  loc_104590A: Set var_8C = Me.Txt
  loc_1045910: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_1045918: var_94.Enabled = False
  loc_1045931: Set var_8C = Me.Txt
  loc_1045937: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_104593F: var_94.Enabled = False
  loc_1045958: Set var_8C = Me.Txt
  loc_104595E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_94)
  loc_1045966: var_94.Enabled = False
  loc_104597D: Set var_8C = Me.Txt
  loc_1045983: Call 0.Method_TopCtrl1_UnknownEvent_A0 (6, var_94)
  loc_104598B: var_94.Visible = False
  loc_10459A2: Set var_8C = Me.Txt
  loc_10459A8: Call 0.Method_TopCtrl1_UnknownEvent_A0 (7, var_94)
  loc_10459B0: var_94.Visible = False
  loc_10459C9: Set var_8C = Me.Txt
  loc_10459CF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_94)
  loc_10459D7: var_94.Enabled = False
  loc_10459EF: Me.TxtDesc.Enabled = True
  loc_10459F7: Call Proc_166_33_ECE22C(global_60)
  loc_1045A16: Set var_8C = Me.Txt
  loc_1045A1C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_1045A24: var_94.Text = CStr(Date)
  loc_1045A70: Set var_8C = Me.Txt
  loc_1045A76: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94, CStr(Format(Time, "HH:MM")))
  loc_1045A7E: var_94.Text = 1
  loc_1045AA4: Set var_8C = Me.Txt
  loc_1045AAA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_94)
  loc_1045AB2: var_94.Text = MemVar_1F920C8
  loc_1045ACC: Set var_8C = Me.Txt
  loc_1045AD2: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_94)
  loc_1045ADA: var_94.Text = "UnSolved"
  loc_1045AF3: Me.TxtDesc.Text = vbNullString
  loc_1045B06: Set var_8C = Me.Txt
  loc_1045B0C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_94)
  loc_1045B14: var_94.SetFocus
  loc_1045B20: Exit Sub
  loc_1045B21: ' Referenced from: 10458CC
  loc_1045B21: Proc_6_60_E62BC4(1)
  loc_1045B26: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC036C
  'Data Table: 46DC54
  loc_EC02D4: On Error Goto loc_EC0364
  loc_EC030E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC031D:   Set var_110 = Me
  loc_EC0334:   Call Proc_166_32_E88E94(Proc_5_1_100CB50("INI", var_110))
  loc_EC033F:   Call Proc_166_37_EBDFB0(global_60)
  loc_EC0344:   Call Proc_166_34_11D1568()
  loc_EC034C: Else
  loc_EC0352:   Call 0.Method_arg_1E8 (var_110)
  loc_EC035A:   Call var_110.SetFocus
  loc_EC0363: End If
  loc_EC0363: Exit Sub
  loc_EC0364: ' Referenced from: EC02D4
  loc_EC0364: Proc_6_60_E62BC4()
  loc_EC0369: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10DE6C0
  'Data Table: 46DC54
  Dim var_96 As Integer
  Dim unk_46DC65 As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10DE3E0: On Error Goto loc_10DE669
  loc_10DE3F1: If (Proc_183_56_FE8818(global_60) = &HFF) Then
  loc_10DE3F4:   Exit Sub
  loc_10DE3F5: End If
  loc_10DE42C: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10DE431:   var_96 = 0
  loc_10DE43D:   unk_46DC65.BeginTrans var_11C
  loc_10DE444:   var_96 = &HFF
  loc_10DE458:   var_94 = Me.Bookmark 'Variant
  loc_10DE4A4:   var_F8 = "Delete From ComplaintDetail Where Code='" & Me.Fields.Item("SCode").Value & "'" 
  loc_10DE4B2:   unk_46DC65.Execute CStr(var_F8), var_118, -1
  loc_10DE4FD:   var_164 = 0
  loc_10DE510:   var_15C = 0
  loc_10DE51B:   var_158 = 0
  loc_10DE52E:   var_150 = 0
  loc_10DE539:   var_14C = 0
  loc_10DE54C:   var_144 = 0
  loc_10DE58C:   var_128 = "ComplaintDetail"
  loc_10DE595:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "Code", &HC8, CStr(Me.Fields.Item("SCode").Value), 0, 0, 0)
  loc_10DE5C3:   unk_46DC65.CommitTrans
  loc_10DE5CA:   var_96 = 0
  loc_10DE5D8:   Me.Requery -1
  loc_10DE5E8:   Me.Requery -1
  loc_10DE608:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10DE615:     Me.Bookmark = var_94
  loc_10DE61D:   Else
  loc_10DE631:     If (Me.EOF = 0) Then
  loc_10DE63A:       Me.MoveLast
  loc_10DE63F:     End If
  loc_10DE63F:   End If
  loc_10DE63F:   Call Proc_166_34_11D1568(var_96, var_144, 0, var_14C, var_150)
  loc_10DE660:   Proc_5_0_110649C(&HFF, Me, global_60, 0)
  loc_10DE668: End If
  loc_10DE668: Exit Sub
  loc_10DE669: ' Referenced from: 10DE3E0
  loc_10DE66F: If (var_96 = &HFF) Then
  loc_10DE678:   unk_46DC65.RollbackTrans
  loc_10DE67D: End If
  loc_10DE685: Set var_120 = Err()
  loc_10DE68B: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10DE6AC: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10DE6BF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '102D1EC
  'Data Table: 46DC54
  Dim var_94 As Variant
  Dim var_8C As TextBox
  loc_102CFA4: On Error Goto loc_102D1E4
  loc_102CFB5: If (Proc_183_55_FE7900(global_60) = &HFF) Then
  loc_102CFB8:   Exit Sub
  loc_102CFB9: End If
  loc_102CFDC: Call Proc_166_32_E88E94(Proc_5_1_100CB50("EDIT", Me))
  loc_102CFF4: Set var_8C = Me.Txt
  loc_102CFFA: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_102D002: var_94.Enabled = False
  loc_102D01B: Set var_8C = Me.Txt
  loc_102D021: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_102D029: var_94.Enabled = False
  loc_102D042: Set var_8C = Me.Txt
  loc_102D048: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_102D050: var_94.Enabled = False
  loc_102D069: Set var_8C = Me.Txt
  loc_102D06F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_102D077: var_94.Enabled = False
  loc_102D091: Set var_8C = Me.Txt
  loc_102D097: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_94)
  loc_102D0AA: global_68 = var_94.Text
  loc_102D0C3: Set var_8C = Me.LblName
  loc_102D0C9: Call 0.Method_TopCtrl1_UnknownEvent_D0 (7, var_94)
  loc_102D0D1: var_94.Visible = False
  loc_102D0E8: Set var_8C = Me.LblName
  loc_102D0EE: Call 0.Method_TopCtrl1_UnknownEvent_D0 (8, var_94)
  loc_102D0F6: var_94.Visible = False
  loc_102D10D: Set var_8C = Me.Txt
  loc_102D113: Call 0.Method_TopCtrl1_UnknownEvent_D0 (6, var_94)
  loc_102D11B: var_94.Visible = False
  loc_102D132: Set var_8C = Me.Txt
  loc_102D138: Call 0.Method_TopCtrl1_UnknownEvent_D0 (7, var_94)
  loc_102D140: var_94.Visible = False
  loc_102D158: Me.TxtDesc.Enabled = True
  loc_102D178: Set var_8C = Me.Txt
  loc_102D17E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (6, var_94)
  loc_102D186: var_94.Text = CStr(Date)
  loc_102D1A4: Set var_8C = Me.Txt
  loc_102D1AA: Call 0.Method_TopCtrl1_UnknownEvent_D0 (7, var_94)
  loc_102D1B2: var_94.Text = MemVar_1F920C8
  loc_102D1C9: Set var_8C = Me.Txt
  loc_102D1CF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_94)
  loc_102D1D7: var_94.SetFocus
  loc_102D1E3: Exit Sub
  loc_102D1E4: ' Referenced from: 102CFA4
  loc_102D1E4: Proc_6_60_E62BC4(global_60)
  loc_102D1E9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E179D4
  'Data Table: 46DC54
  loc_E179C9: Me.Global.Unload Me
  loc_E179D1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F23C40
  'Data Table: 46DC54
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F23B40: On Error Goto loc_F23BD8
  loc_F23B4C: var_88 = Me.RecordCount
  loc_F23B5A: If (var_88 <= 0) Then
  loc_F23B63:   var_B8 = "Information"
  loc_F23B7E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F23B8E:   Exit Sub
  loc_F23B8F: End If
  loc_F23B96: var_10C = "Select C.Code AS SearchCode, C.Description As Description, C.UName AS ComplaintBy, Depart.Name AS Department FROM ComplaintDetail C Inner JOIN Depart ON C.Depart = Depart.Code Where C.LogSite_Code='" & MemVar_1F92078
  loc_F23B9D: MemVar_1F920E4 = var_10C & "' ORDER BY C.Description"
  loc_F23BAA: MemVar_1F92120 = Me
  loc_F23BB1: var_10C = "3500,1400,2000"
  loc_F23BB7: Proc_6_126_F1BCC0(var_10C)
  loc_F23BD2: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F23BD7: Exit Sub
  loc_F23BD8: ' Referenced from: F23B40
  loc_F23BE0: Set var_110 = Err()
  loc_F23BE6: Call 0.Method_arg_1C (var_88)
  loc_F23BF7: If (var_88 <> 0) Then
  loc_F23C02:   Set var_110 = Err()
  loc_F23C08:   Call 0.Method_arg_2C (var_10C)
  loc_F23C29:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F23C3C: End If
  loc_F23C3C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E343F8
  'Data Table: 46DC54
  loc_E343E8: Proc_5_0_110649C(&HFF, Me)
  loc_E343F0: Call Proc_166_34_11D1568(global_60)
  loc_E343F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E345D8
  'Data Table: 46DC54
  loc_E345C8: Proc_5_0_110649C(&HFF, Me)
  loc_E345D0: Call Proc_166_34_11D1568(global_60)
  loc_E345D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E34518
  'Data Table: 46DC54
  loc_E34508: Proc_5_0_110649C(&HFF, Me)
  loc_E34510: Call Proc_166_34_11D1568(global_60)
  loc_E34515: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E34458
  'Data Table: 46DC54
  loc_E34448: Proc_5_0_110649C(&HFF, Me)
  loc_E34450: Call Proc_166_34_11D1568(global_60)
  loc_E34455: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1084F34
  'Data Table: 46DC54
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_46DC65 As Connection15
  Dim var_9C As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1084C9C: On Error Goto loc_1084EE8
  loc_1084CB3: var_A0 = "SELECT CD.Code AS Scode,CD.CDate AS CDate,CD.CTime AS CTime,CC.Category AS Category,CD.Description AS Description,D.Name AS Depart,CD.UName AS UName,CD.Status AS Status FROM (ComplaintDetail CD INNER JOIN ComplaintCategory CC ON CD.Category =CC.Code) INNER JOIN Depart D ON CD.Depart=D.Code Where CD.LogSite_Code='" & MemVar_1F92078
  loc_1084CC3: unk_46DC65.Execute var_A0 & "' ORDER BY CD.CDate,CD.CTime,D.Name", var_C4, -1
  loc_1084CCE: Set var_9C = var_C8
  loc_1084CE4: var_CC = var_9C.RecordCount
  loc_1084CF2: If (var_CC = 0) Then
  loc_1084D0E:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1084D1E:   Exit Sub
  loc_1084D1F: End If
  loc_1084D2E: var_A4 = MemVar_1F920B4 & "\Complaint.ttx"
  loc_1084D35: Set var_C8 = var_9C 
  loc_1084D41: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1084D4B: Set var_9C = var_C8
  loc_1084D51: var_B4 = CVar(var_12E) 'Integer
  loc_1084D54: var_94 = var_B4 'Variant
  loc_1084D70: var_A0 = MemVar_1F920B4 & "\Complaint.RPT"
  loc_1084D79: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1084D84: MemVar_1F921E4 = var_C8
  loc_1084D9F: Call 0.Method_arg_90 (var_C8, var_CC, var_96, 1)
  loc_1084DA7: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1084DB3: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1084DCC:   Call 0.Method_arg_90 (var_C8, CLng(var_96))
  loc_1084DD4:   Call 0.Method_arg_20 (var_138)
  loc_1084DDC:   Call 0.Method_arg_30 (var_A0)
  loc_1084E22:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1084E38:     Call 0.Method_arg_90 (var_C8, CLng(var_96))
  loc_1084E40:     Call 0.Method_arg_20 (var_138)
  loc_1084E48:     Call 0.Method_arg_38 ("'Complaint RsCat'")
  loc_1084E54:   End If
  loc_1084E57: Next var_132 'Integer
  loc_1084E75: Call 0.Method_arg_64 (var_C8, CVar(var_9C))
  loc_1084E7D: Call 0.Method_arg_2C (var_DC)
  loc_1084E8B: Call 0.Method_arg_150 (var_FC)
  loc_1084E96: Call 0.Method_arg_50 (var_A0)
  loc_1084EA0: Set var_138 = Nothing
  loc_1084EBA: Set var_C8 = MemVar_1F921E4 
  loc_1084EC6: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_1084ED1: MemVar_1F921E4 = var_C8
  loc_1084EE4: Set var_9C = Nothing
  loc_1084EE7: Exit Sub
  loc_1084EE8: ' Referenced from: 1084C9C
  loc_1084EF0: Set var_C8 = Err()
  loc_1084EF6: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1084F01: Call 0.Method_arg_50 (var_A4)
  loc_1084F1D: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1084F30: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E22020
  'Data Table: 46DC54
  Dim Me As Recordset15
  loc_E22007: Me.Requery -1
  loc_E22017: Me.Requery -1
  loc_E2201C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14104FC
  'Data Table: 46DC54
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_D8 As Variant
  Dim unk_46DC65 As Connection15
  Dim var_98 As Variant
  Dim var_9C As Variant
  Dim var_EC As String
  Dim var_FC As Variant
  Dim var_C8 As Variant
  Dim var_10C As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_130 As Fields15
  Dim var_144 As Variant
  Dim var_12C As Variant
  Dim var_154 As Variant
  Dim var_1A8 As Variant
  Dim var_E8 As Variant
  Dim var_198 As Variant
  Dim var_208 As Variant
  Dim var_230 As TextBox
  Dim var_2E4 As Variant
  Dim var_210 As String
  Dim var_218 As String
  Dim var_384 As String
  loc_140FB34: On Error Goto loc_14104A9
  loc_140FB3B: var_86 = CByte(0) 'Byte
  loc_140FB4A: Set var_94 = Me.Txt
  loc_140FB50: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_140FB79: If (Proc_183_19_E8DAFC(var_98, "Category") = 0) Then
  loc_140FB83:   Call Txt_GotFocus(CInt(3))
  loc_140FB88:   Exit Sub
  loc_140FB89: End If
  loc_140FB94: Set var_94 = Me.Txt
  loc_140FB9A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98)
  loc_140FBC3: If (Proc_183_19_E8DAFC(var_98, "Complaint Status") = 0) Then
  loc_140FBCD:   Call Txt_GotFocus(CInt(2))
  loc_140FBD2:   Exit Sub
  loc_140FBD3: End If
  loc_140FBDE: Set var_94 = Me.Txt
  loc_140FBE4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_140FC0D: If (Proc_183_19_E8DAFC(var_98, "Department") = 0) Then
  loc_140FC17:   Call Txt_GotFocus(CInt(4))
  loc_140FC1C:   Exit Sub
  loc_140FC1D: End If
  loc_140FC21: Set var_98 = Me.TxtDesc
  loc_140FC48: If (Proc_183_19_E8DAFC(var_98, "Discription") = 0) Then
  loc_140FC55:   Me.TxtDesc.SetFocus
  loc_140FC5D:   Exit Sub
  loc_140FC5E: End If
  loc_140FC62: Set var_94 = Me.topCtrl1
  loc_140FC68: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_140FC81: If (CStr() = "Add") Then
  loc_140FC8A:   var_D8 = 0
  loc_140FCA7:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ComplaintDetail Where Site_Code='" & MemVar_1F92070
  loc_140FCB7:   unk_46DC65.Execute CStr() & "'", var_B4, -1
  loc_140FCBF:   var_94 = var_94.Fields
  loc_140FCC7:   var_D8 = var_98.Item(var_98)
  loc_140FCCF:   var_9C = var_9C.Value
  loc_140FD08:   var_FC = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_140FD36:   var_10C = (1 + Format(CStr(var_E8), "0000"))
  loc_140FD41:   global_64 = CStr(var_10C)
  loc_140FD56: Else
  loc_140FD73:   var_98 = Me.Fields.Item("SCode")
  loc_140FD8A:   global_64 = CStr(var_98.Value)
  loc_140FD9B: End If
  loc_140FDC7: Set var_94 = Me.Txt
  loc_140FDCD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98, "SELECT Count(*) FROM ComplaintCategory WHERE Category='", var_12C, -1, var_9C, var_130)
  loc_140FDD5: var_B4 = CVar(var_98) 'Address
  loc_140FDE4: var_FC = 0 & Trim(var_B4) 
  loc_140FDFB: unk_46DC65.Execute CStr(var_FC & "'"), var_144, var_154
  loc_140FE03: 1 = var_9C.Fields
  loc_140FE13:  = var_144.Value
  loc_140FE40: If (var_154 <= 0) Then
  loc_140FE49:   var_D8 = 0
  loc_140FE66:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ComplaintCategory Where Site_Code='" & MemVar_1F92070
  loc_140FE76:   unk_46DC65.Execute CStr(var_FC & "'") & "'", var_B4, -1
  loc_140FE7E:   var_94 = var_94.Fields
  loc_140FE86:   var_D8 = var_98.Item(var_98)
  loc_140FE8E:   var_9C = var_9C.Value
  loc_140FEBE:   var_FC = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_140FEE1:   var_E8 = Format(CStr(var_130.Item(var_FC)), "0000")
  loc_140FEE9:   var_10C = (1 + var_E8)
  loc_140FEEE:   var_90 = CStr(var_FC & "'")
  loc_140FEFF: Else
  loc_140FF0D:   Set var_94 = Me.Txt
  loc_140FF13:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98, CStr(var_FC & "'"))
  loc_140FF1B:   1 = var_98.Tag
  loc_140FF23:   var_90 = CStr(var_FC & "'")
  loc_140FF2D: End If
  loc_140FF36: unk_46DC65.BeginTrans var_178
  loc_140FF3F: var_86 = CByte(1) 'Byte
  loc_140FF47: Set var_94 = Me.topCtrl1
  loc_140FF4D: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_FC)
  loc_140FF66: If (CStr(var_E8) = "Add") Then
  loc_140FF95:   Set var_94 = Me.Txt
  loc_140FF9B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98, "SELECT Count(*) FROM ComplaintCategory WHERE Category='", var_12C, -1)
  loc_140FFC9:   unk_46DC65.Execute CStr(var_9C & Trim(CVar(var_98)) & "'"), var_130, 0
  loc_140FFD1:   var_144 = var_9C.Fields
  loc_140FFD9:    = var_130.Item(var_154)
  loc_140FFE1:    = var_144.Value
  loc_141000E:   If (var_154 <= 0) Then
  loc_1410033:     var_FC = CVar("Insert Into ComplaintCategory(Code,Category,Site_Code,U_EntDt,U_AE,LogSite_Code) " & "Values('" & var_90 & "','") 'String
  loc_1410041:     Set var_94 = Me.Txt
  loc_1410047:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98, var_FC)
  loc_141004F:     var_B4 = CVar(var_98) 'Address
  loc_141008C:     Proc_6_7_F25D88(var_198, Date, var_208 & Trim(var_B4) & "','" & CVar(MemVar_1F92070) & "',")
  loc_1410094:     var_1A8 = -1 & var_198 
  loc_14100BE:     unk_46DC65.Execute CStr(var_1A8 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_9C, 
  loc_14100F2:   End If
  loc_1410106:   var_A0 = "Insert Into ComplaintDetail(Code,Category,CDate,CTime,Description,Depart,UName,Status,Site_Code,U_EntDt,U_AE,LogSite_Code) " & "Values('"
  loc_1410117:   var_EC = var_A0 & global_64 & "','"
  loc_1410125:   var_E8 = CVar(var_EC & var_90 & "',") 'String
  loc_141012B:   var_C8 = MemVar_1F920EC
  loc_1410133:   Proc_183_7_EB0C44(var_B4, var_C8, var_E8)
  loc_141013B:   var_FC = var_368 & var_B4 
  loc_1410144:   var_10C = var_FC & ",'" 
  loc_1410156:   Set var_94 = Me.Txt
  loc_141015C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98, var_210)
  loc_1410164:   var_10C = var_98.Text
  loc_141016F:   var_154 = -1 & CVar(var_210) 
  loc_1410183:   Set var_9C = Me.TxtDesc
  loc_1410189:   var_214 = var_9C.Text
  loc_141019D:   var_1A8 = var_208 & Trim(var_B4) & "','" & CVar(MemVar_1F92070) & "','" & CVar(var_214) & "','" 
  loc_14101AF:   Set var_130 = Me.Txt
  loc_14101B5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_144, var_218)
  loc_14101BD:   var_1A8 = var_144.Tag
  loc_14101F6:   Set var_22C = Me.Txt
  loc_14101FC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_230)
  loc_141023D:   Proc_6_7_F25D88(var_2D4, Date)
  loc_1410245:   var_2E4 = var_36C & CVar(var_218) & "','" & CVar(MemVar_1F920C8) & "','" & CVar(var_230.Text) & "','" & CVar(MemVar_1F92078) & "'," & var_2D4 
  loc_141026F:   unk_46DC65.Execute CStr(var_2E4 & ",'A','" & CVar(MemVar_1F92078) & "')"), , 
  loc_14102D0: Else
  loc_141030E:   Set var_98 = Me.Txt
  loc_1410314:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_9C, var_EC, "UPDATE ComplaintDetail SET Description='" & Me.TxtDesc.Text & "',Status = '")
  loc_141031C:   var_B4 = var_9C.Text
  loc_1410325:   var_210 = -1 & var_EC
  loc_141032C:   var_218 = var_210 & "',Depart='"
  loc_141033D:   Set var_130 = Me.Txt
  loc_1410343:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_144, var_214)
  loc_141034B:   var_218 = var_144.Tag
  loc_1410388:   var_384 = var_22C & var_214 & "',UName='" & MemVar_1F920C8 & "',U_AE='E',Category='" & var_90 & "' WHERE Code='" & global_64 & "'"
  loc_1410391:   unk_46DC65.Execute var_384, , 
  loc_14103C9: End If
  loc_14103CF: unk_46DC65.CommitTrans
  loc_14103D8: var_86 = CByte(0) 'Byte
  loc_14103E7: Me.Requery -1
  loc_14103F7: Me.Requery -1
  loc_1410424: Me.Find "SCode='" & global_64 & "'", 0, 1
  loc_1410434: Set var_94 = Me.topCtrl1
  loc_141043A: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C8)
  loc_1410453: If (CStr() = "Add") Then
  loc_1410456:   Call TopCtrl1_UnknownEvent_A()
  loc_141045B:   Exit Sub
  loc_141045C: End If
  loc_1410471: var_A0 = "INI"
  loc_141047F: Call Proc_166_32_E88E94(Proc_5_1_100CB50(var_A0, Me))
  loc_1410496: Me.TxtDesc.Enabled = False
  loc_141049E: Call Proc_166_37_EBDFB0(global_60)
  loc_14104A3: Call Proc_166_34_11D1568()
  loc_14104A8: Exit Sub
  loc_14104A9: ' Referenced from: 140FB34
  loc_14104B2: If (CInt(var_86) = 1) Then
  loc_14104BB:   unk_46DC65.RollbackTrans
  loc_14104C0: End If
  loc_14104C8: Set var_94 = Err()
  loc_14104CE: Call 0.Method_arg_2C (var_A0)
  loc_14104E7: MsgBox(CVar(var_A0), &H10, var_E8, var_FC, var_10C)
  loc_14104FA: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_9 'F38DE4
  'Data Table: 46DC54
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F38CDB: Me.DGCategory.Visible = False
  loc_F38CFA: If (Me.RecordCount > 0) Then
  loc_F38D39:   Set var_B4 = Me.Txt
  loc_F38D3F:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(3), var_B8)
  loc_F38D47:   var_B8.Tag = CStr(Me.Fields.Item("SCode").Value)
  loc_F38D7A:   var_B0 = Me.Fields.Item("Category")
  loc_F38D99:   Set var_B4 = Me.Txt
  loc_F38D9F:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(3), var_B8)
  loc_F38DA7:   var_B8.Text = CStr(var_B0.Value)
  loc_F38DBD: End If
  loc_F38DC8: Set var_A8 = Me.Txt
  loc_F38DCE: Call 0.Method_DGCategory_UnknownEvent_90 (CInt(3))
  loc_F38DD6: var_B0.SetFocus
  loc_F38DE2: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_1F 'EA75C0
  'Data Table: 46DC54
  Dim var_A8 As Variant
  loc_EA7540: Set var_88 = Me.DGCategory
  loc_EA756A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7572: Set var_BC = Me.DGCategory
  loc_EA75AE: Proc_6_138_106D6F8(Me.DGCategory, global_52, CInt(3), Me.FGPoint)
  loc_EA75BC: Exit Sub
End Sub

Private Sub DGDepartment_UnknownEvent_9 'F37D64
  'Data Table: 46DC54
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F37C5B: Me.DGDepartment.Visible = False
  loc_F37C7A: If (Me.RecordCount > 0) Then
  loc_F37CB9:   Set var_B4 = Me.Txt
  loc_F37CBF:   Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(4), var_B8)
  loc_F37CC7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F37CFA:   var_B0 = Me.Fields.Item("Name")
  loc_F37D19:   Set var_B4 = Me.Txt
  loc_F37D1F:   Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(4), var_B8)
  loc_F37D27:   var_B8.Text = CStr(var_B0.Value)
  loc_F37D3D: End If
  loc_F37D48: Set var_A8 = Me.Txt
  loc_F37D4E: Call 0.Method_DGDepartment_UnknownEvent_90 (CInt(4))
  loc_F37D56: var_B0.SetFocus
  loc_F37D62: Exit Sub
End Sub

Private Sub DGDepartment_UnknownEvent_1F 'EA7064
  'Data Table: 46DC54
  Dim var_A8 As Variant
  loc_EA6FE4: Set var_88 = Me.DGDepartment
  loc_EA700E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7016: Set var_BC = Me.DGDepartment
  loc_EA7052: Proc_6_138_106D6F8(Me.DGDepartment, global_56, CInt(4), Me.FGPoint)
  loc_EA7060: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC00C4
  'Data Table: 46DC54
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC003A: On Error Goto loc_EC007F
  loc_EC0043: Me.MoveFirst
  loc_EC005D: var_8C = "SCode='" & MyValue
  loc_EC006D: Me.Find var_8C & "'", 0, 1
  loc_EC0079: Call Proc_166_34_11D1568(var_A0)
  loc_EC007E: Exit Sub
  loc_EC007F: ' Referenced from: EC003A
  loc_EC0087: Set var_A4 = Err()
  loc_EC008D: Call 0.Method_arg_2C (var_8C)
  loc_EC00AE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC00C1: Exit Sub
  loc_EC00C2: Exit Sub
End Sub

Public Sub Proc_166_32_E88E94(arg_C) 'E88E94
  'Data Table: 46DC54
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  loc_E88E2E: Set var_8C = Me.Txt
  loc_E88E34: Call 0.Method_Proc_166_32_E88E94C (var_8E, var_86)
  loc_E88E44: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E88E5A:   Set var_8C = Me.Txt
  loc_E88E60:   Call 0.Method_Proc_166_32_E88E940 (CInt(var_86), var_98)
  loc_E88E68:   var_98.Enabled = arg_C
  loc_E88E77: Next var_92 'Byte
  loc_E88E8A: Me.TxtDesc.Enabled = arg_C
  loc_E88E92: Exit Sub
End Sub

Public Sub Proc_166_33_ECE22C
  'Data Table: 46DC54
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  loc_ECE17E: global_68 = vbNullString
  loc_ECE188: global_72 = vbNullString
  loc_ECE19A: Set var_8C = Me.Txt
  loc_ECE1A0: Call 0.Method_Proc_166_33_ECE22CC (var_8E, var_86)
  loc_ECE1B0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_ECE1C6:   Set var_8C = Me.Txt
  loc_ECE1CC:   Call 0.Method_Proc_166_33_ECE22C0 (CInt(var_86), var_98)
  loc_ECE1D4:   var_98.Text = vbNullString
  loc_ECE1F0:   Set var_8C = Me.Txt
  loc_ECE1F6:   Call 0.Method_Proc_166_33_ECE22C0 (CInt(var_86), var_98)
  loc_ECE1FE:   var_98.Tag = vbNullString
  loc_ECE20D: Next var_92 'Byte
  loc_ECE220: Me.TxtDesc.Text = vbNullString
  loc_ECE228: Exit Sub
End Sub

Public Sub Proc_166_34_11D1568
  'Data Table: 46DC54
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_BC As String
  Dim var_A8 As Variant
  Dim var_12C As Integer
  Dim var_FC As Variant
  Dim unk_46DC65 As Connection15
  Dim var_A4 As Variant
  Dim var_130 As Field20
  Dim var_138 As TextBox
  loc_11D1110: On Error Goto loc_11D1525
  loc_11D1119: Proc_183_45_E5C118(global_60)
  loc_11D1135: If (Me.RecordCount <= 0) Then
  loc_11D1138:   Call Proc_166_33_ECE22C()
  loc_11D114A:   Me.TxtDesc.Text = vbNullString
  loc_11D1155: Else
  loc_11D1191:   Set var_A4 = Me.Txt
  loc_11D1197:   Call 0.Method_Proc_166_34_11D15680 (CInt(3), var_A8)
  loc_11D119F:   var_A8.Tag = CStr(Me.Fields.Item("CatCode").Value)
  loc_11D11F1:   Set var_A4 = Me.Txt
  loc_11D11F7:   Call 0.Method_Proc_166_34_11D15680 (CInt(3), var_A8)
  loc_11D11FF:   var_A8.Text = CStr(Me.Fields.Item("Category").Value)
  loc_11D1251:   Set var_A4 = Me.Txt
  loc_11D1257:   Call 0.Method_Proc_166_34_11D15680 (CInt(0), var_A8)
  loc_11D125F:   var_A8.Text = CStr(Me.Fields.Item("CDate").Value)
  loc_11D12B1:   Set var_A4 = Me.Txt
  loc_11D12B7:   Call 0.Method_Proc_166_34_11D15680 (CInt(1), var_A8)
  loc_11D12BF:   var_A8.Text = CStr(Me.Fields.Item("CTime").Value)
  loc_11D1311:   Set var_A4 = Me.Txt
  loc_11D1317:   Call 0.Method_Proc_166_34_11D15680 (CInt(4), var_A8)
  loc_11D131F:   var_A8.Tag = CStr(Me.Fields.Item("Depart").Value)
  loc_11D133B:   var_12C = 0
  loc_11D138C:   var_FC = "SELECT Name FROM Depart WHERE Code='" & Me.Fields.Item("Depart").Value & "'" 
  loc_11D139A:   unk_46DC65.Execute CStr(var_FC), var_11C, -1
  loc_11D13A2:   var_A4 = var_A4.Fields
  loc_11D13AA:   var_12C = var_A8.Item(var_A8)
  loc_11D13B2:   var_130 = var_130.Value
  loc_11D13C9:   Set var_134 = Me.Txt
  loc_11D13CF:   Call 0.Method_Proc_166_34_11D15680 (CInt(4), var_138)
  loc_11D13D7:   var_138.Text = CStr(var_148)
  loc_11D143D:   Set var_A4 = Me.Txt
  loc_11D1443:   Call 0.Method_Proc_166_34_11D15680 (CInt(2), var_A8)
  loc_11D144B:   var_A8.Text = CStr(Me.Fields.Item("UName").Value)
  loc_11D149C:   Me.TxtDesc.Text = CStr(Me.Fields.Item("Description").Value)
  loc_11D14DE:   var_BC = CStr(Me.Fields.Item("Status").Value)
  loc_11D14EC:   Set var_A4 = Me.Txt
  loc_11D14F2:   Call 0.Method_Proc_166_34_11D15680 (CInt(5), var_A8)
  loc_11D14FA:   var_A8.Text = var_BC
  loc_11D151C:   Me.TxtDesc.Enabled = False
  loc_11D1524: End If
  loc_11D1524: Exit Sub
  loc_11D1525: ' Referenced from: 11D1110
  loc_11D152D: Set var_8C = Err()
  loc_11D1533: Call 0.Method_arg_2C (var_BC)
  loc_11D1554: MsgBox(CVar(var_BC), &H40, "Information", var_FC, var_11C)
  loc_11D1567: Exit Sub
End Sub

Public Sub Proc_166_35_106B224
  'Data Table: 46DC54
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_D4 As Variant
  Dim var_90 As TextBox
  Dim unk_46DC65 As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_138 As Fields15
  Dim var_13C As Field20
  loc_106AFDB: If (Me.RecordCount = 0) Then
  loc_106AFDE:   Proc_166_35_106B224 = 
  loc_106AFE4: End If
  loc_106AFE8: Set var_90 = Me.topCtrl1
  loc_106AFEE: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_106B007: If (CStr() = "Add") Then
  loc_106B010:   var_D4 = 0
  loc_106B036:   var_A4 = Me.TxtDesc.Text
  loc_106B04F:   unk_46DC65.Execute "Select Count(*) From ComplaintDetail Where Description='" & var_A4 & "'", var_A0, -1
  loc_106B057:   var_C0 = var_C0.Fields
  loc_106B05F:   var_D4 = var_C4.Item(var_C4)
  loc_106B067:   var_D8 = var_D8.Value
  loc_106B092:   If (var_E8 > 0) Then
  loc_106B0B0:     var_A0 = "Duplicate Name"
  loc_106B0B6:     MsgBox(var_A0, &H40, "Information", var_108, var_128)
  loc_106B0D1:     Set var_90 = Me.Txt
  loc_106B0D7:     Call 0.Method_Proc_166_35_106B2240 (CInt(3), var_C0)
  loc_106B0DF:     var_C0.SetFocus
  loc_106B0F0:     Proc_166_35_106B224 = &HFF
  loc_106B0F6:   End If
  loc_106B0F9: Else
  loc_106B126:   Set var_90 = Me.Txt
  loc_106B12C:   Call 0.Method_Proc_166_35_106B2240 (CInt(3), var_C0, var_A4, "Select Count(*) From ComplaintDetail Where Category='", var_A0, -1)
  loc_106B16D:   unk_46DC65.Execute var_138 & var_A4 & "' And Description<>'" & Me.TxtDesc.Text & "'", 0, var_13C
  loc_106B175:   var_E8 = var_C0.Text.Fields
  loc_106B17D:    = var_138.Item(var_E8)
  loc_106B185:    = var_13C.Value
  loc_106B1BA:   If (var_E8 > 0) Then
  loc_106B1DE:     MsgBox("Duplicate Name", &H40, "Information", var_108, var_128)
  loc_106B1F9:     Set var_90 = Me.Txt
  loc_106B1FF:     Call 0.Method_Proc_166_35_106B2240 (CInt(3))
  loc_106B207:     var_C0.SetFocus
  loc_106B218:     Proc_166_35_106B224 = &HFF
  loc_106B21E:   End If
  loc_106B21E: End If
  loc_106B21E: Proc_166_35_106B224 = var_C0
End Sub

Public Sub Proc_166_36_1049000
  'Data Table: 46DC54
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_46DC65 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_1048DC4: Set var_8C = Me.topCtrl1
  loc_1048DCA: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1048DD2: var_A0 = CStr()
  loc_1048DE3: If (var_A0 = "Add") Then
  loc_1048E13:   Set var_8C = Me.Txt
  loc_1048E19:   Call 0.Method_Proc_166_36_10490000 (CInt(2), var_A4, var_A0, "Select Count(*) From State Where ShortName='", var_9C, -1)
  loc_1048E3A:   unk_46DC65.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_1048E4A:    = var_C4.Item()
  loc_1048E52:    = var_D8.Value
  loc_1048E7F:   If (var_A4.Text.Fields > 0) Then
  loc_1048E9D:     var_9C = "Duplicate Short Name"
  loc_1048EA3:     MsgBox(var_9C, &H40, "Information", var_108, var_128)
  loc_1048EBE:     Set var_8C = Me.Txt
  loc_1048EC4:     Call 0.Method_Proc_166_36_10490000 (CInt(2))
  loc_1048ECC:     var_A4.SetFocus
  loc_1048EDD:     Proc_166_36_1049000 = &HFF
  loc_1048EE3:   End If
  loc_1048EE6: Else
  loc_1048F13:   Set var_8C = Me.Txt
  loc_1048F19:   Call 0.Method_Proc_166_36_10490000 (CInt(2), var_A4, var_A0, "Select Count(*) From State Where ShortName='", var_9C, -1)
  loc_1048F4B:   unk_46DC65.Execute var_C4 & var_A0 & "' And ShortName<>'" & global_72 & "'", 0, var_D8
  loc_1048F5B:    = var_C4.Item(var_A4)
  loc_1048F63:    = var_D8.Value
  loc_1048F94:   If (var_A4.Text.Fields > 0) Then
  loc_1048FB8:     MsgBox("Duplicate Short Name", &H40, "Information", var_108, var_128)
  loc_1048FD3:     Set var_8C = Me.Txt
  loc_1048FD9:     Call 0.Method_Proc_166_36_10490000 (CInt(2))
  loc_1048FE1:     var_A4.SetFocus
  loc_1048FF2:     Proc_166_36_1049000 = &HFF
  loc_1048FF8:   End If
  loc_1048FF8: End If
  loc_1048FF8: Proc_166_36_1049000 = var_A4
  loc_1048FFE: Exit Sub
End Sub

Public Sub Proc_166_37_EBDFB0
  'Data Table: 46DC54
  loc_EBDF28: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_EBDF3A:   Me.DGCategory.Visible = False
  loc_EBDF42: End If
  loc_EBDF5E: If (CBool(Me.DGDepartment.Visible) = &HFF) Then
  loc_EBDF70:   Me.DGDepartment.Visible = False
  loc_EBDF78: End If
  loc_EBDF94: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBDFA6:   Me.FGPoint.Visible = False
  loc_EBDFAE: End If
  loc_EBDFAE: Exit Sub
End Sub

Public Sub Proc_166_38_E8EA24(arg_C) 'E8EA24
  'Data Table: 46DC54
  Dim var_10C As TextBox
  loc_E8E9B8: Call Proc_166_37_EBDFB0()
  loc_E8E9F4: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8E9F7:   Call TopCtrl1_UnknownEvent_16()
  loc_E8E9FF: Else
  loc_E8EA09:   Set var_108 = Me.Txt
  loc_E8EA0F:   Call 0.Method_Proc_166_38_E8EA240 (arg_C)
  loc_E8EA17:   var_10C.SetFocus
  loc_E8EA23: End If
  loc_E8EA23: Exit Sub
End Sub
