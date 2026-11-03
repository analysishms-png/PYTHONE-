VERSION 5.00
Begin VB.Form FrmVenueMast
  Caption = "Venue Master"
  ForeColor = &H400000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 9765
  ClientHeight = 5685
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
    Width = 9765
    Height = 450
    TabIndex = 19
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &H80000004&
    ForeColor = &H80000012&
    Left = 2715
    Top = 4590
    Width = 945
    Height = 225
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 6780
    Top = 7935
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 13
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
      Left = 180
      Top = 90
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 14
    End
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3435
    Top = 1755
    Width = 1515
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 5
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
    ForeColor = &HFF0000&
    Left = 3435
    Top = 2070
    Width = 1515
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 20
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3435
    Top = 2385
    Width = 1515
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3435
    Top = 1440
    Width = 4050
    Height = 285
    TabIndex = 0
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
  Begin MSHFlexGrid FGrid1
    Left = 2085
    Top = 4365
    Width = 5655
    Height = 1935
    TabIndex = 6
  End
  Begin CommonDialog CDlg
  End
  Begin DataGrid DGHelp
    Left = 2190
    Top = 6825
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin MSFlexGrid FGPoint
    Left = 4935
    Top = 7215
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 15
  End
  Begin MSHFlexGrid FGrid2
    Left = 2055
    Top = 2745
    Width = 5475
    Height = 1545
    TabIndex = 4
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 150
    Top = 8535
    Width = 2520
    Height = 255
    TabIndex = 18
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 135
    Top = 8865
    Width = 2430
    Height = 285
    TabIndex = 17
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 480
    Width = 180
    Height = 540
    TabIndex = 16
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
  Begin Shape Shape1
    Left = 7785
    Top = 1425
    Width = 7290
    Height = 6405
  End
  Begin Image Picture1
    Left = 7785
    Top = 1440
    Width = 7320
    Height = 6375
    Stretch = -1  'True
  End
  Begin Label Label4
    Caption = "Click Here to insert Image"
    BackColor = &H80000009&
    ForeColor = &HFF0000&
    Left = 9000
    Top = 7800
    Width = 2655
    Height = 300
    TabIndex = 11
    Alignment = 2 'Center
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
    Caption = "Short Name "
    Index = 5
    ForeColor = &HFF0000&
    Left = 2055
    Top = 1785
    Width = 1185
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
    Caption = "Area"
    Index = 8
    ForeColor = &HFF0000&
    Left = 2055
    Top = 2100
    Width = 450
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
    Caption = "Status"
    Index = 7
    ForeColor = &HFF0000&
    Left = 2040
    Top = 2400
    Width = 585
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
  Begin Label LblName
    Caption = "Venue Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2055
    Top = 1470
    Width = 1230
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
End

Attribute VB_Name = "FrmVenueMast"

Private global_66 As Integer

Private Sub ListView_UnknownEvent_13 'F5B46C
  'Data Table: 4B7B34
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5B38E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5B395:   Set var_A8 = Me.ListView
  loc_F5B3DF:   Set var_C0 = Me.Txt
  loc_F5B3E5:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5B3ED:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5B40D: End If
  loc_F5B419: Me.FrmList.Visible = False
  loc_F5B449: Set var_9C = Me.Txt
  loc_F5B44F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5B457: var_A8.SetFocus
  loc_F5B46B: Exit Sub
End Sub

Private Sub Label4_Click() 'E51678
  'Data Table: 4B7B34
  loc_E5164C: Set var_88 = Me.TopCtrl1
  loc_E51652: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5166B: If (CStr() = "Browse") Then
  loc_E5166E:   Exit Sub
  loc_E5166F: End If
  loc_E5166F: Call Picture1_DblClick()
  loc_E51674: Exit Sub
End Sub

Private Sub Picture1_DblClick() '11FDA3C
  'Data Table: 4B7B34
  Dim var_88 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_B8 As String
  Dim var_130 As String
  Dim var_1B8 As MSHFlexGrid
  Dim var_1E0 As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_1C0 As Recordset15
  loc_11FD5C8: On Error Goto loc_11FD9DD
  loc_11FD5DE: var_A8 = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_11FD5E6: var_C8 = CVar(CLng(1)) 'Long
  loc_11FD600: var_FC = CVar(CStr(Me.FGrid2.TextMatrix))) 'String
  loc_11FD606: var_10C = Trim(var_FC)
  loc_11FD628: If (var_10C = vbNullString) Then
  loc_11FD641:   var_A8 = "Please Choose type of capacity."
  loc_11FD64C:   MsgBox(var_A8, &H40, "Error...", var_FC, var_10C)
  loc_11FD65C:   Exit Sub
  loc_11FD65D: End If
  loc_11FD661: Set var_88 = Me.TopCtrl1
  loc_11FD667: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C8)
  loc_11FD67B: Set var_DC = Me.TopCtrl1
  loc_11FD681: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr(var_A8) <> "Add"))
  loc_11FD6A7: If ( And (CStr() <> "Edit")) Then
  loc_11FD6AA:   Exit Sub
  loc_11FD6AB: End If
  loc_11FD6BB: Me.CDlg.Filter = "*.*"
  loc_11FD6D3: Me.CDlg.Action = 1
  loc_11FD6E5: Me.CDlg.FileName = 
  loc_11FD6FA: Me.Picture1.Tag = CStr()
  loc_11FD716: Me.CDlg.FileName = 
  loc_11FD71E: var_EC = CVar(CStr()) 'String
  loc_11FD724: var_FC = Trim(var_EC)
  loc_11FD72D: Set var_DC = Me.CDlg
  loc_11FD733: var_DC.FileName = 
  loc_11FD751: var_10C = Right(var_FC, 3)
  loc_11FD78C: var_B8 = "AVI"
  loc_11FD7BA: If CBool((Ucase(var_10C) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_B8)) Then
  loc_11FD7CB:   var_A8 = "Invalid Format"
  loc_11FD7D6:   MsgBox(var_A8, 0, var_EC, var_FC, var_10C)
  loc_11FD7E9: Else
  loc_11FD800:   Set var_88 = Me.CDlg
  loc_11FD806:   var_88.FileName = var_A8
  loc_11FD818:   Me.var_88.LoadPicture CVar(CStr(var_B8)), var_C8, var_D8, var_DC, 
  loc_11FD82D:   Me.Picture1.Picture = var_DC
  loc_11FD842: End If
  loc_11FD855: var_A8 = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_11FD85D: var_C8 = CVar(CLng(0)) 'Long
  loc_11FD88B: var_11C = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_11FD893: var_1E0 = CVar(CLng(2)) 'Long
  loc_11FD8A2: var_10C = Me.FGrid2.TextMatrix)
  loc_11FD8E9: var_12C = CVar("SELECT * FROM VenueCapacity WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "' AND Capacity='" & CStr(var_10C) & "'") 'String
  loc_11FD8F3: Me.var_10C.Open var_12C, CVar(MemVar_1F92044), 2
  loc_11FD926: var_210 = Me.Recordset15.RecordCount
  loc_11FD934: If (var_210 > 0) Then
  loc_11FD941:   var_130 = "PicPath"
  loc_11FD94D:   Set var_DC = var_1C0 
  loc_11FD95D:   Proc_142_0_F96C2C(Me.Picture1, var_DC, var_130, 3, -1, var_10C)
  loc_11FD968:   Set var_1C0 = var_DC
  loc_11FD977: End If
  loc_11FD97D: var_1C0.Close
  loc_11FD98C: var_EC = Me.FGrid2.RowSel
  loc_11FD995: var_A8 = CVar(CLng(var_EC)) 'Long
  loc_11FD99D: var_C8 = CVar(CLng(5)) 'Long
  loc_11FD9AC: Me.CDlg.FileName = var_C8
  loc_11FD9B4: var_FC = CVar(CStr(var_A8)) 'String
  loc_11FD9BC: Set var_1B8 = Me.FGrid2
  loc_11FD9C2: LateIdCallSt
  loc_11FD9DC: Exit Sub
  loc_11FD9DD: ' Referenced from: 11FD5C8
  loc_11FD9E5: Set var_88 = Err()
  loc_11FD9EB: Call 0.Method_arg_1C (var_210, var_1B8, var_FC, var_1E0)
  loc_11FD9FC: If (var_210 <> 0) Then
  loc_11FDA15:   Set var_88 = Err()
  loc_11FDA1B:   Call 0.Method_arg_2C (var_130, 0, var_EC, var_FC, var_10C)
  loc_11FDA26:   MsgBox(CVar(var_130), var_11C, var_EC, var_C8, var_A8)
  loc_11FDA39: End If
  loc_11FDA39: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E39194
  'Data Table: 4B7B34
  loc_E39188: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3918B:   Call DGHelp_UnknownEvent_9()
  loc_E39190: End If
  loc_E39190: Exit Sub
End Sub

Private Sub Form_Load() '1080E5C
  'Data Table: 4B7B34
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C0 As DataGrid
  Dim var_C8 As String
  Dim var_CC As String
  Dim Me As Recordset15
  loc_1080BC0: On Error Goto loc_1080E55
  loc_1080BCA: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1080BE2: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1080BFD: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1080C14: Me.LblUser.Left = CDbl(13500)
  loc_1080C2B: Me.LblUser.Top = CDbl(7800)
  loc_1080C42: Me.LblLDt.Top = CDbl(8160)
  loc_1080C59: Me.LblLDt.Left = CDbl(13500)
  loc_1080C6F: Set var_A8 = Me.Txt
  loc_1080C75: Call 0.Method_Form_Load0 (CInt(0), var_AC)
  loc_1080C94: Me.DGHelp.Left = CVar(var_AC.Left)
  loc_1080CB0: Set var_B4 = Me.Txt
  loc_1080CB6: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_1080CD1: Set var_A8 = Me.Txt
  loc_1080CD7: Call 0.Method_Form_Load0 (CInt(0), var_AC)
  loc_1080CEF: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1080CF8: Set var_C0 = Me.DGHelp
  loc_1080CFE: var_C0.Top = CVar(var_AC.Left)
  loc_1080D2C: Me.var_C0.CursorLocation = 3
  loc_1080D60: var_CC = "Select Code,Name From VenueMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and DepartCode ='" & global_52
  loc_1080D8B: CVarUnk
  loc_1080D90: VerifyVarObj
  loc_1080D9C: LateIdStAd
  loc_1080DC6: Me.DGHelp.CursorLocation = 3
  loc_1080DF0: var_C8 = "Select V.*,V.Code as SearchCode From VenueMast V WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and DepartCode ='"
  loc_1080E0B: ar(var_C8 & global_52 & "' Order by Name"), CVar(MemVar_1F92044), 2 CVar(var_C8 & global_52 & "' Order by Name"), CVar(MemVar_1F92044), 2
  loc_1080E1C: Call Proc_237_51_122F9E4(3, -1, Me.DGHelp)
  loc_1080E44: Call Proc_237_47_E7C3EC(Proc_5_1_100CB50("INI", Me, New), New)
  loc_1080E4F: Call Proc_237_46_14FABF0(3)
  loc_1080E54: Exit Sub
  loc_1080E55: ' Referenced from: 1080BC0
  loc_1080E55: Proc_6_60_E62BC4(-1)
  loc_1080E5A: Exit Sub
End Sub

Private Sub Form_Resize() 'ED7B28
  'Data Table: 4B7B34
  Dim var_8C As Label
  loc_ED7A86: Call 0.Method_arg_50 (var_88)
  loc_ED7A98: Me.LblFormCaption.Caption = var_88
  loc_ED7AB1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED7ABD: Set var_A0 = Me.TopCtrl1
  loc_ED7AC3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED7AD0: Set var_8C = Me.TopCtrl1
  loc_ED7AD6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED7AF0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED7B0B: Call 0.Method_arg_100 (var_B8)
  loc_ED7B1D: Me.LblFormCaption.Width = var_B8
  loc_ED7B25: Exit Sub
  loc_ED7B26: Set var_4388 = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E27F0C
  'Data Table: 4B7B34
  loc_E27EEF: Set global_72 = Nothing
  loc_E27F01: Set global_68 = Nothing
  loc_E27F08: Exit Sub
End Sub

Private Sub Form_Activate() 'E39318
  'Data Table: 4B7B34
  loc_E392EC: On Error Goto loc_E3930F
  loc_E39302: Me.FGrid2.Row = 1
  loc_E3930A: Call FGrid2_UnknownEvent_13()
  loc_E3930F: ' Referenced from: E392EC
  loc_E3930F: Proc_6_60_E62BC4()
  loc_E39314: Exit Sub
  loc_E39315: Set var_8C = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27E54
  'Data Table: 4B7B34
  loc_E27E2C: On Error Goto loc_E27E4C
  loc_E27E43: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E27E4B: Exit Sub
  loc_E27E4C: ' Referenced from: E27E2C
  loc_E27E4C: Proc_6_60_E62BC4(Shift)
  loc_E27E51: Exit Sub
  loc_E27E52: 0 = 
End Sub

Private Sub DGHelp_UnknownEvent_9 'F352C4
  'Data Table: 4B7B34
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F351BB: Me.DGHelp.Visible = False
  loc_F351DA: If (Me.RecordCount > 0) Then
  loc_F35219:   Set var_B4 = Me.Txt
  loc_F3521F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F35227:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3525A:   var_B0 = Me.Fields.Item("Name")
  loc_F35279:   Set var_B4 = Me.Txt
  loc_F3527F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F35287:   var_B8.Text = CStr(var_B0.Value)
  loc_F3529D: End If
  loc_F352A8: Set var_A8 = Me.Txt
  loc_F352AE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F352B6: var_B0.SetFocus
  loc_F352C2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E72730
  'Data Table: 4B7B34
  loc_E726EE: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E72705: Set var_8C = Me.FGPoint
  loc_E72721: Proc_6_138_106D6F8(Me.DGHelp, global_72, CInt(0))
  loc_E7272F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F047B4
  'Data Table: 4B7B34
  Dim var_8C As Variant
  Dim var_94 As TextBox
  loc_F046D0: On Error Goto loc_F047AC
  loc_F046F6: Call Proc_237_47_E7C3EC(Proc_5_1_100CB50("ADD", Me))
  loc_F04701: Call Proc_237_45_F1E100(global_68)
  loc_F04713: Me.LblUser.Caption = vbNullString
  loc_F04728: Me.LblLDt.Caption = vbNullString
  loc_F0473B: Set var_8C = Me.Txt
  loc_F04741: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_F04749: var_94.SetFocus
  loc_F04755: Call Proc_237_50_11826A4(var_94)
  loc_F0476D: Me.FGrid2.FillStyle = 0
  loc_F04788: Me.FGrid2.SelectionMode = 0
  loc_F047A3: Me.FGrid2.HighLight = 2
  loc_F047AB: Exit Sub
  loc_F047AC: ' Referenced from: F046D0
  loc_F047AC: Proc_6_60_E62BC4()
  loc_F047B1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9C288
  'Data Table: 4B7B34
  loc_E9C210: On Error Goto loc_E9C281
  loc_E9C24A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9C270:   Call Proc_237_47_E7C3EC(Proc_5_1_100CB50("INI", Me))
  loc_E9C27B:   Call Proc_237_46_14FABF0(global_68)
  loc_E9C280: End If
  loc_E9C280: Exit Sub
  loc_E9C281: ' Referenced from: E9C210
  loc_E9C281: Proc_6_60_E62BC4()
  loc_E9C286: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12E6CE8
  'Data Table: 4B7B34
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_4B7B44 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_12E6648: On Error Goto loc_12E6C8F
  loc_12E6659: If (Proc_183_56_FE8818(global_68) = &HFF) Then
  loc_12E665C:   Exit Sub
  loc_12E665D: End If
  loc_12E668F: var_D4 = "Booking"
  loc_12E66D7: If (Proc_6_108_1010FEC(MemVar_1F92044, "VenueOCC", "VenuCode", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_12E66DA:   Exit Sub
  loc_12E66DB: End If
  loc_12E670D: var_D4 = "Booking Inquiry"
  loc_12E6755: If (Proc_6_108_1010FEC(MemVar_1F92044, "BookingDetail", "VenueCode", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_12E6758:   Exit Sub
  loc_12E6759: End If
  loc_12E6790: If (MsgBox("Are You Sure To Delete This ? ", &H14, "Delete Entry !", var_118, var_138) = 6) Then
  loc_12E6795:   var_96 = 0
  loc_12E67A1:   unk_4B7B44.BeginTrans var_D0
  loc_12E67A8:   var_96 = &HFF
  loc_12E67BC:   var_94 = Me.Bookmark 'Variant
  loc_12E6816:   unk_4B7B44.Execute CStr("Delete From VenueMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1
  loc_12E6861:   var_168 = 0
  loc_12E6874:   var_160 = 0
  loc_12E687F:   var_15C = 0
  loc_12E6892:   var_154 = 0
  loc_12E689D:   var_150 = 0
  loc_12E68B0:   var_148 = 0
  loc_12E68F9:   Proc_154_5_10E33A4(MemVar_1F92044, "VenueMast", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12E6977:   unk_4B7B44.Execute CStr("Delete From VenueFeatures Where VenueCode='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1
  loc_12E69C2:   var_168 = 0
  loc_12E69D5:   var_160 = 0
  loc_12E69E0:   var_15C = 0
  loc_12E69F3:   var_154 = 0
  loc_12E69FE:   var_150 = 0
  loc_12E6A11:   var_148 = 0
  loc_12E6A5A:   Proc_154_5_10E33A4(MemVar_1F92044, "VenueFeatures", "VenueCode", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12E6ACA:   var_118 = "Delete From GodownMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12E6AD8:   unk_4B7B44.Execute CStr(var_118), var_138, -1
  loc_12E6B23:   var_168 = 0
  loc_12E6B36:   var_160 = 0
  loc_12E6B41:   var_15C = 0
  loc_12E6B54:   var_154 = 0
  loc_12E6B5F:   var_150 = 0
  loc_12E6B72:   var_148 = 0
  loc_12E6BB2:   var_B4 = "GodownMast"
  loc_12E6BBB:   Proc_154_5_10E33A4(MemVar_1F92044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12E6BE9:   unk_4B7B44.CommitTrans
  loc_12E6BF0:   var_96 = 0
  loc_12E6BFE:   Me.Requery -1
  loc_12E6C0E:   Me.Requery -1
  loc_12E6C2E:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12E6C3B:     Me.Bookmark = var_94
  loc_12E6C43:   Else
  loc_12E6C57:     If (Me.EOF = 0) Then
  loc_12E6C60:       Me.MoveLast
  loc_12E6C65:     End If
  loc_12E6C65:   End If
  loc_12E6C65:   Call Proc_237_46_14FABF0(var_96, var_148, 0, var_150, var_154)
  loc_12E6C86:   Proc_5_0_110649C(&HFF, Me, global_68, 0)
  loc_12E6C8E: End If
  loc_12E6C8E: Exit Sub
  loc_12E6C8F: ' Referenced from: 12E6648
  loc_12E6C95: If (var_96 = &HFF) Then
  loc_12E6C9E:   unk_4B7B44.RollbackTrans
  loc_12E6CA3: End If
  loc_12E6CAB: Set var_9C = Err()
  loc_12E6CB1: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_12E6CD2: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_12E6CE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FED408
  'Data Table: 4B7B34
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_B8 As TextBox
  loc_FED228: On Error Goto loc_FED3C4
  loc_FED239: If (Proc_183_55_FE7900(global_68) = &HFF) Then
  loc_FED23C:   Exit Sub
  loc_FED23D: End If
  loc_FED254: If (Me.RecordCount > 0) Then
  loc_FED27A:   Call Proc_237_47_E7C3EC(Proc_5_1_100CB50("EDIT", Me))
  loc_FED298:   Me.FGrid2.FillStyle = 0
  loc_FED2B3:   Me.FGrid2.SelectionMode = 0
  loc_FED2CE:   Me.FGrid2.HighLight = 2
  loc_FED2E4:   Set var_90 = Me.Txt
  loc_FED2EA:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_B8)
  loc_FED2FD:   global_80 = var_B8.Text
  loc_FED319:   Set var_90 = Me.Txt
  loc_FED31F:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_B8)
  loc_FED327:   var_8C = var_B8.Text
  loc_FED332:   global_76 = var_8C
  loc_FED34B:   Set var_90 = Me.Txt
  loc_FED351:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_B8)
  loc_FED359:   var_B8.SetFocus
  loc_FED368: Else
  loc_FED389:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FED399: End If
  loc_FED3A6: Me.LblUser.Caption = vbNullString
  loc_FED3BB: Me.LblLDt.Caption = vbNullString
  loc_FED3C3: Exit Sub
  loc_FED3C4: ' Referenced from: FED228
  loc_FED3CC: Set var_90 = Err()
  loc_FED3D2: Call 0.Method_arg_2C (var_8C)
  loc_FED3F3: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_FED406: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AF90
  'Data Table: 4B7B34
  loc_E1AF85: Me.Global.Unload Me
  loc_E1AF8D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EE8214
  'Data Table: 4B7B34
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EE815C: On Error Goto loc_EE820B
  loc_EE8176: If (Me.RecordCount <= 0) Then
  loc_EE817F:   var_B8 = "Information"
  loc_EE819A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EE81AA:   Exit Sub
  loc_EE81AB: End If
  loc_EE81B2: var_10C = "Select Code as SearchCode,Name As VenueName,ShortName,Capacity,cast(Seating as Varchar(15)) as Seating,cast(Floating as varchar(15)) as Floating,Dimension,Status FROM VenueMast WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_EE81CA: MemVar_1F920E4 = var_10C & "' or LOGSITE_CODE='HO') and DepartCode ='" & global_52 & "' Order by Name"
  loc_EE81DD: MemVar_1F92120 = Me
  loc_EE81EA: Proc_6_126_F1BCC0("2500,1200,1200,800,800,1700,900")
  loc_EE8205: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EE820A: Exit Sub
  loc_EE820B: ' Referenced from: EE815C
  loc_EE820B: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EE8210: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E39A38
  'Data Table: 4B7B34
  loc_E39A28: Proc_5_0_110649C(&HFF, Me)
  loc_E39A30: Call Proc_237_46_14FABF0(global_68)
  loc_E39A35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E39C78
  'Data Table: 4B7B34
  loc_E39C68: Proc_5_0_110649C(&HFF, Me)
  loc_E39C70: Call Proc_237_46_14FABF0(global_68)
  loc_E39C75: Exit Sub
  loc_E39C76: Set var_4400 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3CA98
  'Data Table: 4B7B34
  loc_E3CA88: Proc_5_0_110649C(&HFF, Me)
  loc_E3CA90: Call Proc_237_46_14FABF0(global_68)
  loc_E3CA95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E39F78
  'Data Table: 4B7B34
  loc_E39F68: Proc_5_0_110649C(&HFF, Me)
  loc_E39F70: Call Proc_237_46_14FABF0(global_68)
  loc_E39F75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10834A0
  'Data Table: 4B7B34
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4B7B44 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1083208: On Error Goto loc_1083454
  loc_108322F: unk_4B7B44.Execute "select * FROM VenueMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_108323A: Set var_88 = var_C8
  loc_1083250: var_CC = var_88.RecordCount
  loc_108325E: If (var_CC = 0) Then
  loc_108327A:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108328A:   Exit Sub
  loc_108328B: End If
  loc_108329A: var_A4 = MemVar_1F920B4 & "\VenueMast.ttx"
  loc_10832A1: Set var_C8 = var_88 
  loc_10832AD: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_10832B7: Set var_88 = var_C8
  loc_10832BD: var_B4 = CVar(var_12E) 'Integer
  loc_10832C0: var_98 = var_B4 'Variant
  loc_10832DC: var_A0 = MemVar_1F920B4 & "\VenueMast.RPT"
  loc_10832E5: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_10832F0: MemVar_1F921E4 = var_C8
  loc_108330B: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1083313: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108331F: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1083338:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1083340:   Call 0.Method_arg_20 (var_138)
  loc_1083348:   Call 0.Method_arg_30 (var_A0)
  loc_108338E:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10833A4:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10833AC:     Call 0.Method_arg_20 (var_138)
  loc_10833B4:     Call 0.Method_arg_38 ("'Venue Master'")
  loc_10833C0:   End If
  loc_10833C3: Next var_132 'Integer
  loc_10833E1: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_10833E9: Call 0.Method_arg_2C (var_DC)
  loc_10833F7: Call 0.Method_arg_150 (var_FC)
  loc_1083402: Call 0.Method_arg_50 (var_A0)
  loc_108340C: Set var_138 = Nothing
  loc_1083426: Set var_C8 = MemVar_1F921E4 
  loc_1083432: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_108343D: MemVar_1F921E4 = var_C8
  loc_1083450: Set var_88 = Nothing
  loc_1083453: Exit Sub
  loc_1083454: ' Referenced from: 1083208
  loc_108345C: Set var_C8 = Err()
  loc_1083462: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108346D: Call 0.Method_arg_50 (var_A4)
  loc_1083489: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108349C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A040
  'Data Table: 4B7B34
  Dim Me As Recordset15
  Dim var_439C As String
  loc_E0A037: Me.Requery -1
  loc_E0A03C: Exit Sub
  loc_E0A03E: var_439C = CStr()
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15BB4F4
  'Data Table: 4B7B34
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_4B7B44 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_120 As Variant
  Dim var_15C As TextBox
  Dim var_1C8 As Variant
  Dim var_2D8 As Variant
  Dim var_370 As Variant
  Dim var_330 As String
  Dim var_340 As Variant
  Dim var_11C As Variant
  Dim var_134 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_208 As Variant
  Dim var_218 As Variant
  Dim var_258 As Variant
  Dim var_298 As Variant
  Dim var_2B8 As Variant
  Dim var_318 As Variant
  Dim var_3A0 As Variant
  Dim var_124 As String
  Dim var_E4 As Variant
  Dim var_458 As Double
  Dim var_460 As Double
  Dim var_160 As String
  Dim var_430 As String
  Dim var_450 As String
  Dim var_180 As Variant
  Dim var_1D8 As Variant
  Dim var_2E8 As Variant
  loc_15BA2DC: On Error Goto loc_15BB4A1
  loc_15BA2E3: var_86 = CByte(0) 'Byte
  loc_15BA2F2: Set var_90 = Me.Txt
  loc_15BA2F8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15BA321: If (Proc_6_27_EA565C(var_94, "Venue Name") = 0) Then
  loc_15BA32B:   Call Txt_GotFocus()
  loc_15BA330:   Exit Sub
  loc_15BA331: End If
  loc_15BA33C: Set var_90 = Me.Txt
  loc_15BA342: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_15BA36B: If (Proc_6_27_EA565C(var_94, "Short Name") = 0) Then
  loc_15BA375:   Call Txt_GotFocus()
  loc_15BA37A:   Exit Sub
  loc_15BA37B: End If
  loc_15BA386: Set var_90 = Me.Txt
  loc_15BA38C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_94, CInt(1))
  loc_15BA3B5: If (Proc_6_27_EA565C(var_94, "Status") = 0) Then
  loc_15BA3BF:   Call Txt_GotFocus()
  loc_15BA3C4:   Exit Sub
  loc_15BA3C5: End If
  loc_15BA3C8: Call Proc_237_44_120EB94(var_9E, CInt(3))
  loc_15BA3D3: If (var_9E = &HFF) Then
  loc_15BA3D6:   Exit Sub
  loc_15BA3D7: End If
  loc_15BA3DB: Set var_90 = Me.TopCtrl1
  loc_15BA3E1: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(0))
  loc_15BA3FA: If (CStr(var_94) = "Add") Then
  loc_15BA403:   var_D4 = 0
  loc_15BA420:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From VenueMast where Site_Code='" & MemVar_1F92070
  loc_15BA430:   unk_4B7B44.Execute CStr(var_94) & "'", var_B0, -1
  loc_15BA438:   var_90 = var_90.Fields
  loc_15BA440:   var_D4 = var_94.Item(var_94)
  loc_15BA448:   var_98 = var_98.Value
  loc_15BA481:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_15BA4AF:   var_108 = (1 + Format(CStr(var_E4), "000"))
  loc_15BA4BA:   global_56 = CStr(var_108)
  loc_15BA4CF: Else
  loc_15BA4EC:   var_94 = Me.Fields.Item("Code")
  loc_15BA4F4:   var_B0 = var_94.Value
  loc_15BA503:   global_56 = CStr(var_B0)
  loc_15BA514: End If
  loc_15BA51D: unk_4B7B44.BeginTrans var_10C
  loc_15BA526: var_86 = CByte(1) 'Byte
  loc_15BA551: unk_4B7B44.Execute "Delete From VenueMast Where Code='" & global_56 & "'", var_B0, -1
  loc_15BA58A: unk_4B7B44.Execute "Delete From VenueFeatures Where VenueCode='" & global_56 & "'", var_B0, -1
  loc_15BA5C3: unk_4B7B44.Execute "Delete From GodownMast Where Code='" & global_56 & "'", var_B0, -1
  loc_15BA5E0: Set var_90 = Me.Txt
  loc_15BA5E6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_90, var_90)
  loc_15BA5EE: var_B0 = CVar(var_94) 'Address
  loc_15BA5F5: var_E4 = Trim(var_B0)
  loc_15BA60E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120, var_124, var_90)
  loc_15BA616: 1 = var_120.Text
  loc_15BA629: Set var_158 = Me.Txt
  loc_15BA62F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_15C, var_160)
  loc_15BA637: var_F8 = var_15C.Text
  loc_15BA645: Proc_6_17_EAA2B0(var_180, CVar(var_160))
  loc_15BA655: Set var_1B4 = Me.Txt
  loc_15BA65B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1B8)
  loc_15BA663: var_1C8 = CVar(var_1B8) 'Address
  loc_15BA66A: Proc_6_17_EAA2B0(var_1D8, var_1C8)
  loc_15BA67A: Proc_6_7_F25D88(var_2E8, MemVar_1F920EC)
  loc_15BA683: Set var_31C = Me.TopCtrl1
  loc_15BA689: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E4)
  loc_15BA6DB: var_B4 = "Insert Into VenueMast(Code,Name,ShortName," & " Status,Dimension,DepartCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) " & " Values('"
  loc_15BA6EC: var_F8 = CVar(var_B4 & global_56 & "','") 'String
  loc_15BA6F2: var_108 = var_F8 & var_E4 
  loc_15BA72E: var_208 = var_108 & "','" & CVar(var_124) & "'," & var_180 & "," & var_1D8 & ",'" 
  loc_15BA781: var_3A0 = var_208 & CVar(global_52) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_2E8 & ",'" & IIf((CStr(var_32C) = "Add"), "A", "E") 
  loc_15BA7AB: unk_4B7B44.Execute CStr(var_3A0 & "','" & CVar(MemVar_1F92078) & "')"), var_424, -1
  loc_15BA81D: Set var_90 = Me.TopCtrl1
  loc_15BA823: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_428)
  loc_15BA82B: var_9C = CStr()
  loc_15BA839: var_D4 = 0
  loc_15BA869: unk_4B7B44.Execute "SELECT Count(*) FROM VenueCapacity WHERE VenueCode='" & global_56 & "'", var_E4, -1
  loc_15BA871: var_94 = var_94.Fields
  loc_15BA879: var_D4 = Me.Txt.Item(Me.Txt)
  loc_15BA881: var_120 = var_120.Value
  loc_15BA8B7: If (var_F8 Or (CDbl(Val(CStr(var_F8))) <= CDbl(0))) Then
  loc_15BA8E1:   unk_4B7B44.Execute "Delete From VenueCapacity Where VenueCode='" & global_56 & "'", var_B0, -1
  loc_15BA918:   For var_42C = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_88 = var_42C 'Integer
  loc_15BA922:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BA92A:     var_1A0 = CVar(CLng(1)) 'Long
  loc_15BA966:     If CBool(Trim(CVar(CStr(Me.FGrid2.TextMatrix)))) <> vbNullString) Then
  loc_15BA96D:       var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BA975:       var_1A0 = CVar(CLng(2)) 'Long
  loc_15BA9BE:       var_458 = Val(CStr(Me.FGrid2.TextMatrix)))
  loc_15BA9EF:       var_460 = Val(CStr(Me.FGrid2.TextMatrix)))
  loc_15BA9FD:       Proc_6_7_F25D88(var_108, MemVar_1F920EC, var_460, CVar(CLng(4)), CVar(CLng(var_88)), var_458, CVar(CLng(3)), CVar(CLng(var_88)))
  loc_15BAA20:       var_B4 = "Insert Into VenueCapacity(VenueCode,Capacity,Seating,Floating,Site_Code,U_EntDt,U_AE,logSite_Code) " & " Values('" & global_56
  loc_15BAA6D:       var_11C = CVar(var_B4 & "','" & CStr(Me.FGrid2.TextMatrix)) & "'," & CStr(var_458) & "," & CStr(var_460) & ",'" & MemVar_1F92070 & "',") 'String
  loc_15BAA9D:       unk_4B7B44.Execute CStr(var_11C & var_108 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_180, -1
  loc_15BAAE7:     End If
  loc_15BAAEA:   Next var_42C 'Integer
  loc_15BAAF2: Else
  loc_15BAB17:   For var_464 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)):   var_88 = var_464 'Integer
  loc_15BAB21:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BAB29:     var_1A0 = CVar(CLng(1)) 'Long
  loc_15BAB49:     var_F8 = Trim(CVar(CStr(Me.FGrid2.TextMatrix))))
  loc_15BAB65:     If CBool(var_F8 <> vbNullString) Then
  loc_15BAB6C:       var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BAB74:       var_1A0 = CVar(CLng(0)) 'Long
  loc_15BABAA:       var_E4 = Me.FGrid2.TextMatrix)
  loc_15BABB9:       var_2B8 = 0
  loc_15BABF3:       var_330 = "SELECT Count(*) FROM VenueCapacity WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "' AND " & "Capacity='" & CStr(var_E4)
  loc_15BAC03:       unk_4B7B44.Execute var_330 & "'", var_F8, -1
  loc_15BAC0B:       var_98 = var_98.Fields
  loc_15BAC13:       var_2B8 = var_120.Item(var_120)
  loc_15BAC1B:       var_108 = CVar(var_158) 'Address
  loc_15BAC22:       Proc_6_39_E7C810(var_11C, var_108, var_158, var_E4, CVar(CLng(2)), CVar(CLng(var_88)))
  loc_15BAC5B:       If (var_11C <= 0) Then
  loc_15BAC62:         var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BAC6A:         var_1A0 = CVar(CLng(2)) 'Long
  loc_15BACB3:         var_458 = Val(CStr(Me.FGrid2.TextMatrix)))
  loc_15BACE4:         var_460 = Val(CStr(Me.FGrid2.TextMatrix)))
  loc_15BACF2:         Proc_6_7_F25D88(var_108, MemVar_1F920EC, var_460, CVar(CLng(4)), CVar(CLng(var_88)), var_458, CVar(CLng(3)), CVar(CLng(var_88)))
  loc_15BAD15:         var_B4 = "Insert Into VenueCapacity(VenueCode,Capacity,Seating,Floating,Site_Code,U_EntDt,U_AE,logSite_Code) " & " Values('" & global_56
  loc_15BAD62:         var_11C = CVar(var_B4 & "','" & CStr(Me.FGrid2.TextMatrix)) & "'," & CStr(var_458) & "," & CStr(var_460) & ",'" & MemVar_1F92070 & "',") 'String
  loc_15BAD92:         unk_4B7B44.Execute CStr(var_11C & var_108 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_180, -1
  loc_15BADDF:       Else
  loc_15BADE3:         var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BADEB:         var_1A0 = CVar(CLng(3)) 'Long
  loc_15BAE14:         var_218 = CVar(CLng(var_88)) 'Long
  loc_15BAE1C:         var_258 = CVar(CLng(4)) 'Long
  loc_15BAE45:         var_298 = CVar(CLng(var_88)) 'Long
  loc_15BAE4D:         var_2D8 = CVar(CLng(0)) 'Long
  loc_15BAE5C:         var_F8 = Me.FGrid2.TextMatrix)
  loc_15BAE6C:         var_340 = CVar(CLng(var_88)) 'Long
  loc_15BAE74:         var_370 = CVar(CLng(2)) 'Long
  loc_15BAE7D:         Set var_120 = Me.FGrid2
  loc_15BAEC4:         var_430 = "UPDATE VenueCapacity SET " & "Seating=" & CStr(Val(CStr(Me.FGrid2.TextMatrix)))) & ",Site_Code='" & MemVar_1F92070 & "',Floating="
  loc_15BAEF7:         var_450 = var_430 & CStr(Val(CStr(Me.FGrid2.TextMatrix)))) & " WHERE VenueCode='" & CStr(var_F8) & "'" & " AND " & "Capacity='"
  loc_15BAF12:         unk_4B7B44.Execute var_450 & CStr(var_120.TextMatrix)) & "'", var_11C, -1
  loc_15BAF5A:       End If
  loc_15BAF5D:     Else
  loc_15BAF61:       var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BAF69:       var_1A0 = CVar(CLng(0)) 'Long
  loc_15BAF88:       var_218 = CVar(CLng(var_88)) 'Long
  loc_15BAF90:       var_258 = CVar(CLng(2)) 'Long
  loc_15BAF99:       Set var_94 = Me.FGrid2
  loc_15BAFEA:       var_430 = "Delete From VenueCapacity " & " WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "'" & " AND " & "Capacity='" & CStr(var_94.TextMatrix))
  loc_15BAFFA:       unk_4B7B44.Execute var_430 & "'", var_F8, -1
  loc_15BB026:     End If
  loc_15BB029:   Next var_464 'Integer
  loc_15BB02E: End If
  loc_15BB039: Set var_90 = Me.Txt
  loc_15BB03F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15BB061: Set var_98 = Me.Txt
  loc_15BB067: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120)
  loc_15BB07F: Proc_6_7_F25D88(var_1C8, MemVar_1F920EC)
  loc_15BB088: Set var_158 = Me.TopCtrl1
  loc_15BB08E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_15BB0E3: var_B4 = "Insert Into GodownMast(Code,Name,ShortName,DepartCode,SysYn,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) " & " Values('" & global_56
  loc_15BB100: var_134 = CVar(var_120.Text) 'String
  loc_15BB12C: var_190 = CVar(var_B4 & "','") & Trim(CVar(var_94)) & "','" & var_134 & "','" & CVar(global_52) & "','Y','" & CVar(MemVar_1F920C8) 
  loc_15BB13C: var_1D8 = var_190 & "'," & var_1C8 
  loc_15BB17B: var_318 = var_1D8 & ",'" & IIf((CStr(var_208) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_15BB189: unk_4B7B44.Execute CStr(var_318), var_32C, -1
  loc_15BB204: For var_474 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_88 = var_474 'Integer
  loc_15BB20E:   var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BB216:   var_1A0 = CVar(CLng(2)) 'Long
  loc_15BB23C:   var_218 = CVar(CLng(var_88)) 'Long
  loc_15BB253:   var_E4 = Me.FGrid1.TextMatrix)
  loc_15BB27C:   If (CVar(CLng(1)) And (CStr(var_E4) = "ü")) Then
  loc_15BB283:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_15BB29A:     var_B0 = Me.FGrid1.TextMatrix)
  loc_15BB2B1:     Proc_6_7_F25D88(var_E4, MemVar_1F920EC, var_B0, CVar(CLng(2)), var_C4, MemVar_1F920EC)
  loc_15BB2BA:     Set var_94 = Me.TopCtrl1
  loc_15BB2C0:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr(Me.FGrid1.TextMatrix)) <> vbNullString))
  loc_15BB315:     var_B4 = "Insert Into VenueFeatures(VenueCode,Feature,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) " & " Values('" & global_56
  loc_15BB34A:     var_F8 = CVar(var_B4 & "','" & CStr(var_B0) & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") 'String
  loc_15BB350:     var_108 = var_F8 & var_E4 
  loc_15BB38A:     unk_4B7B44.Execute CStr(var_108 & ",'" & IIf((CStr(var_134) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_1D8, -1
  loc_15BB3D2:   End If
  loc_15BB3D5: Next var_474 'Integer
  loc_15BB3E0: unk_4B7B44.CommitTrans
  loc_15BB3E9: var_86 = CByte(0) 'Byte
  loc_15BB3F8: Me.Requery -1
  loc_15BB408: Me.Requery -1
  loc_15BB435: Me.Find "SearchCode='" & global_56 & "'", 0, 1
  loc_15BB445: Set var_90 = Me.TopCtrl1
  loc_15BB44B: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_15BB464: If (CStr() = "Add") Then
  loc_15BB467:   Call TopCtrl1_UnknownEvent_A()
  loc_15BB46C:   Exit Sub
  loc_15BB46D: End If
  loc_15BB482: var_9C = "INI"
  loc_15BB490: Call Proc_237_47_E7C3EC(Proc_5_1_100CB50(var_9C, Me))
  loc_15BB49B: Call Proc_237_46_14FABF0(global_68)
  loc_15BB4A0: Exit Sub
  loc_15BB4A1: ' Referenced from: 15BA2DC
  loc_15BB4AA: If (CInt(var_86) = 1) Then
  loc_15BB4B3:   unk_4B7B44.RollbackTrans
  loc_15BB4B8: End If
  loc_15BB4C0: Set var_90 = Err()
  loc_15BB4C6: Call 0.Method_arg_2C (var_9C)
  loc_15BB4DF: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_15BB4F2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'F776C4
  'Data Table: 4B7B34
  Dim var_92 As Integer
  Dim Me As Variant
  loc_F77596: Set var_88 = Me.Txt
  loc_F7759C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F775AA: Proc_6_74_E226B0(var_8C)
  loc_F775B6: Call Proc_237_48_E871C0(var_8C)
  loc_F775BE: var_92 = Index
  loc_F775C9: If (var_92 = CInt(0)) Then
  loc_F775E3:   If (Me.RecordCount > 0) Then
  loc_F775F1:     Set var_8C = Me.FGPoint
  loc_F77609:     Proc_6_137_1193554(Me.DGHelp, global_72, Index)
  loc_F77617:   End If
  loc_F7761A: Else
  loc_F77622:   If (var_92 = CInt(3)) Then
  loc_F77632:     ReDim var_9C(0 To 1)
  loc_F77649:     var_9C(0) = "Active"
  loc_F77658:     var_9C(1) = "Non Active"
  loc_F776AF:     Set global_100 = Proc_6_66_EFF8FC(Me.ListView, Me.Txt, Index, Array(var_9C))
  loc_F776C0:   End If
  loc_F776C0: End If
  loc_F776C0: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '109CFC0
  'Data Table: 4B7B34
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As TextBox
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  loc_109CD2A: If (CLng(Shift) = &H1B) Then
  loc_109CD2D:   Call Proc_237_48_E871C0()
  loc_109CD32:   Exit Sub
  loc_109CD33: End If
  loc_109CD36: var_86 = KeyCode
  loc_109CD41: If (var_86 = CInt(0)) Then
  loc_109CD48:   Set var_A4 = Me.DGHelp
  loc_109CD56:   Set var_AC = Me.FGPoint
  loc_109CD61:   Set var_9C = var_AC
  loc_109CD93:   Proc_6_79_11ACE04(var_A4, Me.Txt, CInt(0), global_72, Shift)
  loc_109CDB0:   var_B0 = Me.RecordCount
  loc_109CE00:   If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_109CE0E:     Set var_90 = Me.FGPoint
  loc_109CE26:     Proc_6_138_106D6F8(Me.DGHelp, global_72, KeyCode, var_90, 0)
  loc_109CE34:   End If
  loc_109CE37: Else
  loc_109CE3F:   If (var_86 = CInt(3)) Then
  loc_109CE64:     Set var_8C = Me.Txt
  loc_109CE6A:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 1)
  loc_109CE72:     var_9C = var_90.Left
  loc_109CE84:     Set var_9C = Me.Txt
  loc_109CE8A:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B4)
  loc_109CE92:     0 = var_A4.Top
  loc_109CEA4:     Set var_A8 = Me.Txt
  loc_109CEAA:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_109CEB2:     var_B8 = var_AC.Height
  loc_109CEC4:     Set var_BC = Me.Txt
  loc_109CECA:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_109CED2:     var_C4 = var_C0.Width
  loc_109CF1A:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_109CF3E:   End If
  loc_109CF3E: End If
  loc_109CF77: If ((CBool(Me.DGHelp.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_109CF8F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_109CF98:     Proc_6_75_E527CC(Shift, arg_14, CInt(var_B0), CInt((var_B4 + var_B8)))
  loc_109CF9D:   End If
  loc_109CFB0:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(3))) Then
  loc_109CFB9:     Proc_6_76_E52838(Shift, arg_14, CInt(var_C4))
  loc_109CFBE:   End If
  loc_109CFBE: End If
  loc_109CFBE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F30F08
  'Data Table: 4B7B34
  Dim var_86 As Integer
  loc_F30DFB: var_86 = KeyCode
  loc_F30E06: If (var_86 = CInt(0)) Then
  loc_F30E25:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F30E32:     var_A4 = "Name"
  loc_F30E51:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_72)
  loc_F30E83:     Proc_6_138_106D6F8(Me.DGHelp, global_72, KeyCode, Me.FGPoint)
  loc_F30E91:   End If
  loc_F30E94: Else
  loc_F30E9C:   If Not (var_86 = CInt(2)) Then
  loc_F30EA7:     If (var_86 = CInt(3)) Then
  loc_F30EAA:     End If
  loc_F30EC5:     If (Me.FrmList.Visible = &HFF) Then
  loc_F30EF4:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F30F04:     End If
  loc_F30F04:   End If
  loc_F30F04: End If
  loc_F30F04: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E477FC
  'Data Table: 4B7B34
  loc_E477DA: Set var_88 = Me.Txt
  loc_E477E0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E477EE: Proc_6_73_E22704(var_8C)
  loc_E477FA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FEEE4C
  'Data Table: 4B7B34
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_8C As Variant
  Dim var_B0 As TextBox
  loc_FEEC67: var_86 = Cancel
  loc_FEEC72: If (var_86 = CInt(0)) Then
  loc_FEEC80:   Set var_8C = Me.Txt
  loc_FEEC86:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_FEECAF:   If (Proc_6_27_EA565C(var_90, "Venue Name") = 0) Then
  loc_FEECBC:     Set var_8C = Me.Txt
  loc_FEECC2:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FEECCA:     var_90.SetFocus
  loc_FEECD8:     arg_10 = &HFF
  loc_FEECDB:     Exit Sub
  loc_FEECDC:   End If
  loc_FEECDF:   Call Proc_237_44_120EB94(var_9A, arg_10)
  loc_FEECEA:   If (var_9A = &HFF) Then
  loc_FEECEF:     arg_10 = &HFF
  loc_FEECF2:     Exit Sub
  loc_FEECF3:   End If
  loc_FEECF6: Else
  loc_FEECFE:   If (var_86 = CInt(1)) Then
  loc_FEED0C:     Set var_8C = Me.Txt
  loc_FEED12:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_FEED1A:     var_98 = "Short Name"
  loc_FEED3B:     If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_FEED48:       Set var_8C = Me.Txt
  loc_FEED4E:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FEED56:       var_90.SetFocus
  loc_FEED64:       arg_10 = &HFF
  loc_FEED67:       Exit Sub
  loc_FEED68:     End If
  loc_FEED6B:     Call Proc_237_44_120EB94(var_9A, arg_10)
  loc_FEED76:     If (var_9A = &HFF) Then
  loc_FEED7B:       arg_10 = &HFF
  loc_FEED7E:       Exit Sub
  loc_FEED7F:     End If
  loc_FEED82:   Else
  loc_FEED8A:     If (var_86 = CInt(3)) Then
  loc_FEED9A:       Set var_8C = Me.Txt
  loc_FEEDA0:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_FEEDBF:       If (var_98 <> vbNullString) Then
  loc_FEEDF2:         Set var_94 = Me.Txt
  loc_FEEDF8:         Call 0.Method_Txt_Validate0 (Cancel, var_B0, Me.ListView.SelectedItem.Text)
  loc_FEEE00:         var_B0.Text = Me.ListView.SelectedItem.Text
  loc_FEEE16:       End If
  loc_FEEE28:       Me.FGrid2.Col = CVar(CLng(3))
  loc_FEEE43:       Me.FGrid2.Row = 1
  loc_FEEE4B:     End If
  loc_FEEE4B:   End If
  loc_FEEE4B: End If
  loc_FEEE4B: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_0 'E431E0
  'Data Table: 4B7B34
  Dim var_8C As TextBox
  loc_E431BF: Set var_88 = Me.TxtGrid
  loc_E431C5: Call 0.Method_FGrid2_UnknownEvent_00 (0, var_8C)
  loc_E431CD: var_8C.Visible = False
  loc_E431D9: Call Proc_237_48_E871C0()
  loc_E431DE: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_9 'E3C674
  'Data Table: 4B7B34
  loc_E3C66B: If (CLng(Me.FGrid2.ColSel) <> 1) Then
  loc_E3C66E:   Call FGrid2_UnknownEvent_13()
  loc_E3C673: End If
  loc_E3C673: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_A '10C0AC4
  'Data Table: 4B7B34
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim Cancel As Integer
  loc_10C07F8: Set var_88 = Me.TopCtrl1
  loc_10C07FE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10C0843: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10C084C:   Call Form_KeyDown(Cancel, arg_10)
  loc_10C0851: End If
  loc_10C0855: Set var_88 = Me.TopCtrl1
  loc_10C085B: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10C0874: If (CStr() = "Browse") Then
  loc_10C0877:   Exit Sub
  loc_10C0878: End If
  loc_10C088B: var_A0 = CLng(Me.FGrid2.Col)
  loc_10C089B: If (var_A0 = CLng(3)) Then
  loc_10C08DC:   Proc_6_63_110ABA4(Me, Me.FGrid2, Me.TxtGrid, 0)
  loc_10C08F1: Else
  loc_10C08F8:   If (var_A0 = CLng(4)) Then
  loc_10C0939:     Proc_6_63_110ABA4(Me, Me.FGrid2, Me.TxtGrid, 0, &HFF, Cancel)
  loc_10C094B:   End If
  loc_10C094B: End If
  loc_10C0973: If ((CLng(Cancel) = &H20) And (CLng(Me.FGrid2.Col) = CLng(1))) Then
  loc_10C0986:   Me.FGrid2.CellFontName = "WINGDINGS"
  loc_10C09A0:   Me.FGrid2.CellFontSize = CVar(CDbl(&HE))
  loc_10C09BB:   var_C8 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_10C09C3:   var_E8 = CVar(CLng(1)) 'Long
  loc_10C09F1:   var_188 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_10C09F9:   var_1A8 = CVar(CLng(1)) 'Long
  loc_10C0A30:   var_1C8 = CVar(CStr(IIf((CStr(Me.FGrid2.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10C0A38:   Set var_B4 = Me.FGrid2
  loc_10C0A3E:   LateIdCallSt
  loc_10C0A67: End If
  loc_10C0A8F: If ((CLng(Cancel) = &HD) And (CLng(Me.FGrid2.Col) = CLng(1))) Then
  loc_10C0AA4:   Me.FGrid2.Col = CVar(CLng(2))
  loc_10C0AAC: End If
  loc_10C0AB2: If (Cancel = &HD) Then
  loc_10C0ABA:   global_66 = 0
  loc_10C0ABD: End If
  loc_10C0ABF: Cancel = 0
  loc_10C0AC2: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_B 'E12848
  'Data Table: 4B7B34
  loc_E12839: Call FGrid2_UnknownEvent_C()
  loc_E12843: global_66 = 0
  loc_E12846: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_C 'F5617C
  'Data Table: 4B7B34
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_F56064: Set var_88 = Me.TopCtrl1
  loc_F5606A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F56083: If (CStr() = "Browse") Then
  loc_F56086:   Exit Sub
  loc_F56087: End If
  loc_F5609A: var_A0 = CLng(Me.FGrid2.Col)
  loc_F560AA: If (var_A0 = CLng(3)) Then
  loc_F560EB:   Proc_6_63_110ABA4(Me, Me.FGrid2, Me.TxtGrid, 0)
  loc_F56100: Else
  loc_F56107:   If (var_A0 = CLng(4)) Then
  loc_F5611D:     var_9C = 0
  loc_F5614E:     Proc_6_134_112AEB4(Me, Me.FGrid2, Me.TxtGrid, 0, &HFF, Cancel)
  loc_F56163:   End If
  loc_F56163: End If
  loc_F5616D: If (CLng(Cancel) <> &HD) Then
  loc_F56175:   global_66 = &HFF
  loc_F56178: End If
  loc_F56178: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_13 '1299BD8
  'Data Table: 4B7B34
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_128 As Variant
  Dim var_94 As Variant
  Dim var_13C As Variant
  Dim var_164 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_19C As MSHFlexGrid
  Dim unk_4B7B44 As Connection15
  Dim var_8C As Recordset15
  loc_129960C: Set var_90 = Me.FGrid2
  loc_1299613: Set var_94 = Me.TopCtrl1
  loc_1299619: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1299632: If (CStr() = "Browse") Then
  loc_1299638:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_C()
  loc_1299651:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_41(CVar(CLng(2)))
  loc_129967D:   If CBool(Trim(CVar(CStr(CVar(CLng())))) <> vbNullString) Then
  loc_1299693:     var_B8 = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_129969B:     var_D8 = CVar(CLng(0)) 'Long
  loc_12996C9:     var_128 = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_12996D1:     var_164 = CVar(CLng(2)) 'Long
  loc_12996E0:     var_118 = Me.FGrid2.TextMatrix)
  loc_1299727:     var_138 = CVar("SELECT PicPath FROM VenueCapacity WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "' AND Capacity='" & CStr(var_118) & "'") 'String
  loc_1299731:     Me.var_118.Open var_138, CVar(MemVar_1F92044), 2
  loc_1299764:     var_198 = Me.Recordset15.RecordCount
  loc_12997A7:     If ((var_198 > 0) And (IsNull(CVar(Me.Recordset15.Fields.Item("PicPath"))) = 0)) Then
  loc_12997C0:       Set var_13C = var_8C 
  loc_12997D0:       Proc_142_1_F33768(Me.Picture1, var_13C, "PicPath", 3, -1, var_118)
  loc_12997DB:       Set var_8C = var_13C
  loc_12997ED:     Else
  loc_12997FF:       Me.Picture1.Picture = Nothing
  loc_129980B:     End If
  loc_1299811:     Me.Recordset15.Close
  loc_1299819:   Else
  loc_129982B:     Me.Picture1.Picture = Nothing
  loc_1299837:   End If
  loc_1299837:   Exit Sub
  loc_1299838: End If
  loc_129983A: Set var_90 = Nothing 
  loc_1299842: Set var_19C = Me.FGrid2
  loc_1299851: var_B8 = CVar(CLng(var_19C.RowSel)) 'Long
  loc_1299859: var_D8 = CVar(CLng(2)) 'Long
  loc_12998AD: If CBool((Trim(CVar(CStr(var_19C.TextMatrix)))) <> vbNullString) And (CLng(var_19C.ColSel) = CLng(2))) Then
  loc_12998C3:   var_B8 = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_12998CB:   var_D8 = CVar(CLng(0)) 'Long
  loc_12998F9:   var_128 = CVar(CLng(Me.FGrid2.RowSel)) 'Long
  loc_1299901:   var_164 = CVar(CLng(2)) 'Long
  loc_1299910:   var_118 = Me.FGrid2.TextMatrix)
  loc_1299957:   var_138 = CVar("SELECT PicPath FROM VenueCapacity WHERE VenueCode='" & CStr(Me.FGrid2.TextMatrix)) & "' AND Capacity='" & CStr(var_118) & "'") 'String
  loc_1299961:   Me.var_118.Open var_138, CVar(MemVar_1F92044), 2
  loc_12999BC:   If IsNull(CVar(Me.Recordset15.Fields.Item("PicPath"))) Then
  loc_12999D1:     Me.Picture1.Picture = Nothing
  loc_12999DD:   End If
  loc_12999E6:   unk_4B7B44.BeginTrans var_198
  loc_1299A02:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1299A1B:     Set var_13C = var_8C 
  loc_1299A2B:     Proc_142_1_F33768(Me.Picture1, var_13C, "PicPath", 3, -1, var_118, var_164, var_128)
  loc_1299A36:     Set var_8C = var_13C
  loc_1299A45:   End If
  loc_1299A4B:   var_8C.Close
  loc_1299A56:   unk_4B7B44.CommitTrans
  loc_1299A5E: Else
  loc_1299A70:   Me.Picture1.Picture = Nothing
  loc_1299A7C: End If
  loc_1299A8F: If (CLng(Picture1.DispID_B) = CLng(1)) Then
  loc_1299A9E:   var_B8 = CVar(CLng(Picture1.DispID_A)) 'Long
  loc_1299AA6:   var_D8 = CVar(CLng(1)) 'Long
  loc_1299ACB:   If (CStr(Picture1.DispID_41) = vbNullString) Then
  loc_1299ADA:     var_B8 = CVar(CLng(Picture1.DispID_B)) 'Long
  loc_1299AEA:     var_B8 = "wingdings"
  loc_1299AFB:     var_B8 = CVar(CDbl(&H12)) 'Single
  loc_1299B1B:     If (CLng(Picture1.DispID_B) = CLng(1)) Then
  loc_1299B1E:       var_B8 = &HFF
  loc_1299B32:     Else
  loc_1299B32:       var_B8 = &HFF0000
  loc_1299B43:     End If
  loc_1299B4F:     var_B8 = CVar(CLng(Picture1.DispID_A)) 'Long
  loc_1299B60:     var_D8 = CVar(CLng(Picture1.DispID_B)) 'Long
  loc_1299B65:     var_128 = "ü"
  loc_1299B6E:     LateIdCallSt
  loc_1299B80:   Else
  loc_1299B8C:     var_B8 = CVar(CLng(Picture1.DispID_A)) 'Long
  loc_1299B9D:     var_D8 = CVar(CLng(Picture1.DispID_B)) 'Long
  loc_1299BA2:     var_128 = vbNullString
  loc_1299BAB:     LateIdCallSt
  loc_1299BBA:   End If
  loc_1299BBD: Else
  loc_1299BBD:   var_B8 = &HE0E0E0
  loc_1299BCE: End If
  loc_1299BD0: Set var_19C = Nothing 
  loc_1299BD4: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F98E44
  'Data Table: 4B7B34
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F98CEA: Set var_88 = Me.TxtGrid
  loc_F98CF0: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_F98CFE: Proc_6_74_E226B0(var_8C)
  loc_F98D0A: Call Proc_237_48_E871C0(var_8C)
  loc_F98D1B: If (Index = 0) Then
  loc_F98D31:   var_C4 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_F98D3A:   Set var_8C = Me.FGrid2
  loc_F98D70:   Set var_108 = Me.TxtGrid
  loc_F98D76:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid2.TextMatrix)))
  loc_F98D7E:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_F98DAF:   var_114 = CLng(Me.FGrid2.Col)
  loc_F98DBF:   If (var_114 = CLng(3)) Then
  loc_F98DD1:     Set var_88 = Me.TxtGrid
  loc_F98DD7:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_F98DDF:     var_8C.MaxLength = var_114
  loc_F98DEE:   Else
  loc_F98DF5:     If (var_114 = CLng(4)) Then
  loc_F98E07:       Set var_88 = Me.TxtGrid
  loc_F98E0D:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_F98E15:       var_8C.MaxLength = var_C4
  loc_F98E2A:       If (global_66 = 0) Then
  loc_F98E35:         var_110 = "{Home}+{End}"
  loc_F98E3B:         Proc_303_0_FB9B68(CStr(Me.FGrid2.TextMatrix)), 0)
  loc_F98E43:       End If
  loc_F98E43:     End If
  loc_F98E43:   End If
  loc_F98E43: End If
  loc_F98E43: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1099054
  'Data Table: 4B7B34
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_1098DA7: var_86 = KeyCode
  loc_1098DB0: If (var_86 = 0) Then
  loc_1098DBD:   If (CLng(Shift) = &H1B) Then
  loc_1098DCD:     Set var_8C = Me.TxtGrid
  loc_1098DD3:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1098DED:     Set var_98 = Me.TxtGrid
  loc_1098DF3:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1098DFB:     var_9C.Text = var_90.Tag
  loc_1098E0E:     Call Proc_237_48_E871C0(var_86)
  loc_1098E17:     Set var_8C = Me.FGrid2
  loc_1098E34:     Set var_8C = Me.TxtGrid
  loc_1098E3A:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1098E42:     var_90.Visible = False
  loc_1098E4E:     Exit Sub
  loc_1098E4F:   End If
  loc_1098E62:   var_B0 = CLng(Me.FGrid2.Col)
  loc_1098E72:   If (var_B0 = CLng(3)) Then
  loc_1098E7F:     Call Proc_237_43_F65E78(CInt(3), var_B4)
  loc_1098E8A:     If (var_B4 = &HFF) Then
  loc_1098ED7:       Proc_6_62_1253BC4(Me.FGrid2, Me.TxtGrid, KeyCode, Shift, global_66, CByte((CInt(4) + 1)))
  loc_1098EE7:     End If
  loc_1098EEA:   Else
  loc_1098EF1:     If (var_B0 = CLng(4)) Then
  loc_1098F34:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_66 = &HFF))) Then
  loc_1098F72:         If (CLng(Me.FGrid2.Row) < (CLng(Me.FGrid2.Rows) - 1)) Then
  loc_1098F7F:           Call Proc_237_43_F65E78(CInt(4), var_B4, 0, 0)
  loc_1098F8A:           If (var_B4 = &HFF) Then
  loc_1098FD7:             Proc_6_62_1253BC4(Me.FGrid2, Me.TxtGrid, KeyCode, Shift, global_66, CByte((CInt(4) + 1)))
  loc_1098FF9:             Me.FGrid2.Col = CVar(CLng(3))
  loc_1099001:           End If
  loc_1099004:         Else
  loc_109900C:           Call TxtGrid_Validate(KeyCode)
  loc_1099048:           If (MsgBox("Save Record ?", 4, "Save Data", var_108, var_128) = 6) Then
  loc_109904B:             Call TopCtrl1_UnknownEvent_16()
  loc_1099050:           End If
  loc_1099050:         End If
  loc_1099050:       End If
  loc_1099050:     End If
  loc_1099050:   End If
  loc_1099050: End If
  loc_1099050: Exit Sub
End Sub

Private Sub TxtGrid_LostFocus(Index As Integer) 'E5474C
  'Data Table: 4B7B34
  Dim var_90 As TextBox
  loc_E54720: If (Index = 0) Then
  loc_E5472F:   Set var_8C = Me.TxtGrid
  loc_E54735:   Call 0.Method_TxtGrid_LostFocus0 (Index, var_90)
  loc_E5473D:   var_90.Visible = False
  loc_E54749: End If
  loc_E54749: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E200F4
  'Data Table: 4B7B34
  Dim arg_10 As Integer
  loc_E200DC: If (Cancel = 0) Then
  loc_E200E5:   Call Proc_237_43_F65E78(Cancel, var_88)
  loc_E200EE:   arg_10 = Not(var_88)
  loc_E200F1: End If
  loc_E200F1: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '101C45C
  'Data Table: 4B7B34
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_114 As String
  loc_101C240: Set var_88 = Me.TopCtrl1
  loc_101C246: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_101C25F: If (CStr() = "Browse") Then
  loc_101C262:   Exit Sub
  loc_101C263: End If
  loc_101C282: If (CLng(Me.FGrid1.Col) = 1) Then
  loc_101C298:   var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_101C2B0:   var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_101C2E7:   If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_101C30C:     Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Col))
  loc_101C32B:     Me.FGrid1.CellFontName = "wingdings"
  loc_101C345:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_101C36A:     If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_101C380:       Me.FGrid1.CellForeColor = &HFF
  loc_101C38B:     Else
  loc_101C39E:       Me.FGrid1.CellForeColor = &HFF0000
  loc_101C3A6:     End If
  loc_101C3B9:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_101C3D1:     var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_101C3D6:     var_114 = "ü"
  loc_101C3E0:     Set var_F4 = Me.FGrid1
  loc_101C3E6:     LateIdCallSt
  loc_101C401:   Else
  loc_101C414:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_101C42C:     var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_101C431:     var_114 = vbNullString
  loc_101C43B:     Set var_F4 = Me.FGrid1
  loc_101C441:     LateIdCallSt
  loc_101C459:   End If
  loc_101C459: End If
  loc_101C459: Exit Sub
End Sub

Public Function global_52Get() '4B8A40
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4B8A4F
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E97130
  'Data Table: 4B7B34
  Dim Me As Recordset15
  loc_E970BE: On Error Goto loc_E97127
  loc_E970C7: Me.MoveFirst
  loc_E970F1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97119: Proc_5_0_110649C(&HFF, Me, global_68)
  loc_E97121: Call Proc_237_46_14FABF0(0)
  loc_E97126: Exit Sub
  loc_E97127: ' Referenced from: E970BE
  loc_E97127: Proc_6_60_E62BC4(var_A0)
  loc_E9712C: Exit Sub
  loc_E9712D:  = Record Of arg_37EB 'Copy battery of vars to single variable
End Sub

Public Sub Proc_237_43_F65E78
  'Data Table: 4B7B34
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A4 As TextBox
  Dim var_FC As Variant
  loc_F65D63: var_A0 = CLng(Me.FGrid2.Col)
  loc_F65D73: If (var_A0 = CLng(3)) Then
  loc_F65D89:   var_BC = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_F65D91:   var_DC = CVar(CLng(3)) 'Long
  loc_F65DA2:   Set var_8C = Me.TxtGrid
  loc_F65DA8:   Call 0.Method_Proc_237_43_F65E780 (0, var_A4, var_A8)
  loc_F65DB0:   var_DC = var_A4.Text
  loc_F65DBF:   var_FC = CVar(CStr(Val(var_A8))) 'String
  loc_F65DC7:   Set var_110 = Me.FGrid2
  loc_F65DCD:   LateIdCallSt
  loc_F65DED: Else
  loc_F65DF4:   If (var_A0 = CLng(4)) Then
  loc_F65E23:     Set var_8C = Me.TxtGrid
  loc_F65E29:     Call 0.Method_Proc_237_43_F65E780 (0, var_A4, var_A8, CVar(CLng(4)), CVar(CLng(Me.FGrid2.Row)))
  loc_F65E31:     var_110 = var_A4.Text
  loc_F65E40:     var_FC = CVar(CStr(Val(var_A8))) 'String
  loc_F65E48:     Set var_110 = Me.FGrid2
  loc_F65E4E:     LateIdCallSt
  loc_F65E6B:   End If
  loc_F65E6B: End If
  loc_F65E70: Proc_237_43_F65E78 = &HFF
End Sub

Public Sub Proc_237_44_120EB94
  'Data Table: 4B7B34
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4B7B44 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_120E6FB: If (Me.RecordCount <> 0) Then
  loc_120E702:   Set var_90 = Me.TopCtrl1
  loc_120E708:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_120E721:   If (CStr() = "Add") Then
  loc_120E75F:     Set var_90 = Me.Txt
  loc_120E765:     Call 0.Method_Proc_237_44_120EB940 (CInt(0), var_A8, var_AC, "Select Count(*) From VenueMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_120E786:     unk_4B7B44.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_120E796:      = var_D0.Item()
  loc_120E79E:      = var_E4.Value
  loc_120E7CF:     If (var_A8.Text.Fields > 0) Then
  loc_120E7ED:       var_A0 = "Duplicate Venue Name"
  loc_120E7F3:       MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_120E80E:       Set var_90 = Me.Txt
  loc_120E814:       Call 0.Method_Proc_237_44_120EB940 (CInt(0))
  loc_120E81C:       var_A8.SetFocus
  loc_120E82D:       Proc_237_44_120EB94 = &HFF
  loc_120E833:     End If
  loc_120E86E:     Set var_90 = Me.Txt
  loc_120E874:     Call 0.Method_Proc_237_44_120EB940 (CInt(1), var_A8, var_AC, "Select Count(*) From VenueMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and shortName='", var_A0, -1)
  loc_120E895:     unk_4B7B44.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_120E8A5:      = var_D0.Item(var_A8)
  loc_120E8AD:      = var_E4.Value
  loc_120E8DE:     If (var_A8.Text.Fields > 0) Then
  loc_120E8FC:       var_A0 = "Duplicate Short Name"
  loc_120E902:       MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_120E91D:       Set var_90 = Me.Txt
  loc_120E923:       Call 0.Method_Proc_237_44_120EB940 (CInt(1))
  loc_120E92B:       var_A8.SetFocus
  loc_120E93C:       Proc_237_44_120EB94 = &HFF
  loc_120E942:     End If
  loc_120E945:   Else
  loc_120E980:     Set var_90 = Me.Txt
  loc_120E986:     Call 0.Method_Proc_237_44_120EB940 (CInt(0), var_A8, var_AC, "Select Count(*) From VenueMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_120E9B8:     unk_4B7B44.Execute var_D0 & var_AC & "' And Name<>'" & global_80 & "'", 0, var_E4
  loc_120E9C8:      = var_D0.Item(var_A8)
  loc_120E9D0:      = var_E4.Value
  loc_120EA05:     If (var_A8.Text.Fields > 0) Then
  loc_120EA23:       var_A0 = "Duplicate Venue Name"
  loc_120EA29:       MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_120EA44:       Set var_90 = Me.Txt
  loc_120EA4A:       Call 0.Method_Proc_237_44_120EB940 (CInt(0))
  loc_120EA52:       var_A8.SetFocus
  loc_120EA63:       Proc_237_44_120EB94 = &HFF
  loc_120EA69:     End If
  loc_120EAA4:     Set var_90 = Me.Txt
  loc_120EAAA:     Call 0.Method_Proc_237_44_120EB940 (CInt(1), var_A8, var_AC, "Select Count(*) From VenueMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and shortName='", var_A0, -1)
  loc_120EADC:     unk_4B7B44.Execute var_D0 & var_AC & "' And shortName<>'" & global_76 & "'", 0, var_E4
  loc_120EAEC:      = var_D0.Item(var_A8)
  loc_120EAF4:      = var_E4.Value
  loc_120EB29:     If (var_A8.Text.Fields > 0) Then
  loc_120EB4D:       MsgBox("Duplicate Short Name", &H40, "Information", var_114, var_134)
  loc_120EB68:       Set var_90 = Me.Txt
  loc_120EB6E:       Call 0.Method_Proc_237_44_120EB940 (CInt(1))
  loc_120EB76:       var_A8.SetFocus
  loc_120EB87:       Proc_237_44_120EB94 = &HFF
  loc_120EB8D:     End If
  loc_120EB8D:   End If
  loc_120EB8D: End If
  loc_120EB8D: Proc_237_44_120EB94 = var_A8
End Sub

Public Sub Proc_237_45_F1E100
  'Data Table: 4B7B34
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As Image
  loc_F1E002: global_80 = vbNullString
  loc_F1E00C: global_76 = vbNullString
  loc_F1E01E: Set var_8C = Me.Txt
  loc_F1E024: Call 0.Method_Proc_237_45_F1E100C (var_8E, var_86)
  loc_F1E034: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1E04A:   Set var_8C = Me.Txt
  loc_F1E050:   Call 0.Method_Proc_237_45_F1E1000 (CInt(var_86), var_98)
  loc_F1E058:   var_98.Text = vbNullString
  loc_F1E074:   Set var_8C = Me.Txt
  loc_F1E07A:   Call 0.Method_Proc_237_45_F1E1000 (CInt(var_86), var_98)
  loc_F1E082:   var_98.Tag = vbNullString
  loc_F1E091: Next var_92 'Byte
  loc_F1E0B5: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_F1E0CA: Me.Picture1.Picture = var_8C
  loc_F1E0E3: Me.Picture1.Tag = vbNullString
  loc_F1E0F7: Me.Picture1.Visible = True
  loc_F1E0FF: Exit Sub
End Sub

Public Sub Proc_237_46_14FABF0
  'Data Table: 4B7B34
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AE As Integer
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_4B7B44 As Connection15
  Dim var_AC As Recordset15
  Dim var_128 As Variant
  Dim var_140 As String
  Dim var_114 As Variant
  Dim var_150 As Variant
  Dim var_1FC As Variant
  Dim var_12C As Variant
  Dim var_124 As Variant
  Dim var_B4 As Recordset15
  loc_14F9DB3: Me.FGrid2.FillStyle = 1
  loc_14F9DCE: Me.FGrid2.SelectionMode = 1
  loc_14F9DE9: Me.FGrid2.HighLight = 1
  loc_14F9DF1: On Error Goto loc_14FABEA
  loc_14F9E10: If (Me.RecordCount > 0) Then
  loc_14F9E69:   unk_4B7B44.Execute CStr("SELECT * FROM VenueMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1
  loc_14F9E74:   Set var_AC = var_128
  loc_14F9F31:   var_190 = IIf((Proc_6_38_E68A98(CVar(var_AC.Fields.Item("U_AE")), var_AC.Fields) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_AC.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_14F9F76:   Me.LblUser.Caption = CStr(1 & CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("U_Name")), var_190)))
  loc_14FA004:   var_140 = "entdt : "
  loc_14FA051:   var_190 = IIf((Proc_6_38_E68A98(CVar(var_AC.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_AC.Fields.Item("U_AE"))) = "E"), "Last Update : ", var_140))
  loc_14FA096:   Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("U_EntDt")))))
  loc_14FA0E2:   If (var_AC.RecordCount > 0) Then
  loc_14FA0E5:     Call Proc_237_45_F1E100()
  loc_14FA0EA:     ' Referenced from: 14FA5AE
  loc_14FA0F0:     var_1EA = var_AC.EOF
  loc_14FA0F9:     If Not(var_1EA) Then
  loc_14FA10B:       var_A8 = var_AC.Fields
  loc_14FA124:       var_114 = IsNull(CVar(var_A8.Item("PicPath")))
  loc_14FA12B:       var_A4 = "PicPath"
  loc_14FA156:       var_F0 = vbNullString
  loc_14FA160:       var_150 = var_114 Or (Trim(CVar(var_AC.Fields.Item(var_A4))) = var_F0)
  loc_14FA178:       If CBool(var_150) Then
  loc_14FA199:         Me.Global.LoadPicture var_94, var_A4, var_F0, var_114, var_140
  loc_14FA1AE:         Me.Picture1.Picture = var_A8
  loc_14FA1BD:       Else
  loc_14FA1EB:         var_F0 = "PicPath"
  loc_14FA231:         var_A4 = "DAT"
  loc_14FA259:         var_114 = "AVI"
  loc_14FA263:         var_1FC = (Ucase(Right(Trim(CVar(var_AC.Fields.Item("PicPath"))), 3)) = var_A4) Or (Ucase(Right(Trim(CVar(var_AC.Fields.Item(var_F0))), 3)) = var_114)
  loc_14FA283:         If CBool(var_1FC) Then
  loc_14FA292:           Me.Picture1.Visible = False
  loc_14FA29D:         Else
  loc_14FA2D5:           Me.Picture1.Tag = CStr(var_AC.Fields.Item("PicPath").Value)
  loc_14FA2F2:           var_94 = "PicPath"
  loc_14FA306:           var_C0 = var_AC.Fields.Item(var_94)
  loc_14FA320:           Call 0.Method_Proc_237_46_14FABF04 (CStr(var_C0.Value), var_1EA)
  loc_14FA335:           If var_1EA Then
  loc_14FA352:             Set var_A8 = Me.Picture1
  loc_14FA36A:             Me.Global.LoadPicture CVar(Me.Picture1.Tag), var_94, var_A4, var_F0, var_114
  loc_14FA379:             Set var_12C = Me.Picture1
  loc_14FA37F:             var_12C.Picture = var_C0
  loc_14FA394:             Set var_A8 = Me.Picture1
  loc_14FA39A:             var_A8.Refresh
  loc_14FA3A5:           Else
  loc_14FA3C3:             Me.Global.LoadPicture var_94, var_A4, var_F0, var_114, var_140
  loc_14FA3D8:             Me.Picture1.Picture = var_A8
  loc_14FA3E4:           End If
  loc_14FA3E4:         End If
  loc_14FA3E4:       End If
  loc_14FA3F6:       var_A8 = var_AC.Fields
  loc_14FA41D:       Set var_128 = Me.Txt
  loc_14FA423:       Call 0.Method_Proc_237_46_14FABF00 (CInt(0), var_12C, CStr(var_A8.Item("Code").Value))
  loc_14FA42B:       var_12C.Tag = var_A8
  loc_14FA45B:       var_C0 = var_AC.Fields.Item("Name")
  loc_14FA47A:       Set var_128 = Me.Txt
  loc_14FA480:       Call 0.Method_Proc_237_46_14FABF00 (CInt(0), var_12C, CStr(var_C0.Value))
  loc_14FA488:       var_12C.Text = var_C0
  loc_14FA4D4:       Set var_128 = Me.Txt
  loc_14FA4DA:       Call 0.Method_Proc_237_46_14FABF00 (CInt(1), var_12C)
  loc_14FA4E2:       var_12C.Text = Proc_6_38_E68A98(CVar(var_AC.Fields.Item("ShortName")))
  loc_14FA52C:       Set var_128 = Me.Txt
  loc_14FA532:       Call 0.Method_Proc_237_46_14FABF00 (CInt(3), var_12C)
  loc_14FA53A:       var_12C.Text = Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Status")))
  loc_14FA55D:       var_A8 = var_AC.Fields
  loc_14FA584:       Set var_128 = Me.Txt
  loc_14FA58A:       Call 0.Method_Proc_237_46_14FABF00 (CInt(2), var_12C)
  loc_14FA592:       var_12C.Text = Proc_6_38_E68A98(CVar(var_A8.Item("Dimension")))
  loc_14FA5A9:       var_AC.MoveNext
  loc_14FA5AE:       GoTo loc_14FA0EA
  loc_14FA5B1:     End If
  loc_14FA5B1:   End If
  loc_14FA5B1:   Call Proc_237_50_11826A4(var_A8)
  loc_14FA5CA:   var_104 = "Select F.Name As FeatureName,V.Feature From VenueFeatures V Inner Join FeatureMast F ON V.Feature=F.Code Where V.LogSite_Code in ('" & MemVar_1F92078
  loc_14FA60A:   var_124 = CVar(var_104 & "','HO') and VenueCode='") & Me.Fields.Item("SearchCode").Value & "'" 
  loc_14FA618:   unk_4B7B44.Execute CStr(var_124), var_150, -1
  loc_14FA623:   Set var_B4 = var_128
  loc_14FA657:   If (var_B4.RecordCount > 0) Then
  loc_14FA65A:     ' Referenced from: 14FA7A5
  loc_14FA669:     If Not(var_B4.EOF) Then
  loc_14FA691:       For var_200 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_AE = var_200 'Integer
  loc_14FA69B:         var_94 = CVar(CLng(1)) 'Long
  loc_14FA6A3:         var_F0 = CVar(CLng(2)) 'Long
  loc_14FA6DB:         var_128 = var_B4.Fields.Item("Feature")
  loc_14FA6FF:         If (CVar(CStr(Me.FGrid1.TextMatrix))) = var_128.Value) Then
  loc_14FA714:           Me.FGrid1.Col = CVar(CLng(1))
  loc_14FA72C:           Me.FGrid1.CellFontName = "wingdings"
  loc_14FA746:           Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_14FA761:           Me.FGrid1.CellForeColor = &HFF0000
  loc_14FA76D:           var_94 = CVar(CLng(1)) 'Long
  loc_14FA775:           var_F0 = CVar(CLng(1)) 'Long
  loc_14FA77A:           var_140 = "ü"
  loc_14FA784:           Set var_A8 = Me.FGrid1
  loc_14FA78A:           LateIdCallSt
  loc_14FA795:         End If
  loc_14FA798:       Next var_200 'Integer
  loc_14FA7A0:       var_B4.MoveNext
  loc_14FA7A5:       GoTo loc_14FA65A
  loc_14FA7A8:     End If
  loc_14FA7A8:   End If
  loc_14FA7FE:   unk_4B7B44.Execute CStr("Select * FROM VenueCapacity Where VenueCode='" & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1
  loc_14FA809:   Set var_B4 = var_128
  loc_14FA837:   If (var_B4.RecordCount > 0) Then
  loc_14FA83A:     ' Referenced from: 14FAB2E
  loc_14FA849:     If Not(var_B4.EOF) Then
  loc_14FA871:       For var_204 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)): var_AE = var_204 'Integer
  loc_14FA87B:         var_94 = CVar(CLng(1)) 'Long
  loc_14FA883:         var_F0 = CVar(CLng(2)) 'Long
  loc_14FA8EF:         If (Trim(CVar(CStr(Me.FGrid2.TextMatrix)))) = Trim(CVar(var_B4.Fields.Item("Capacity")))) Then
  loc_14FA904:           Me.FGrid2.Col = CVar(CLng(1))
  loc_14FA91C:           Me.FGrid2.CellFontName = "wingdings"
  loc_14FA936:           Me.FGrid2.CellFontSize = CVar(CDbl(&H12))
  loc_14FA951:           Me.FGrid2.CellForeColor = &HFF0000
  loc_14FA95D:           var_94 = CVar(CLng(1)) 'Long
  loc_14FA965:           var_F0 = CVar(CLng(1)) 'Long
  loc_14FA96A:           var_140 = "ü"
  loc_14FA974:           Set var_A8 = Me.FGrid2
  loc_14FA97A:           LateIdCallSt
  loc_14FA989:           var_A4 = CVar(CLng(1)) 'Long
  loc_14FA991:           var_114 = CVar(CLng(0)) 'Long
  loc_14FA9C4:           var_E0 = CVar(CStr(Me.Fields.Item("SearchCode").Value)) 'String
  loc_14FA9D2:           LateIdCallSt
  loc_14FAA21:           Proc_6_48_EF4270(var_E0, CVar(var_B4.Fields.Item("Seating")), CVar(CLng(3)), CVar(CLng(1)), Me.FGrid2, var_E0, CVar(CLng(3)))
  loc_14FAA38:           LateIdCallSt
  loc_14FAA87:           Proc_6_48_EF4270(var_E0, CVar(var_B4.Fields.Item("Floating")), CVar(CLng(4)), CVar(CLng(1)), Me.FGrid2, CVar(CStr(var_E0)), CVar(CLng(1)))
  loc_14FAA90:           var_100 = CVar(CStr(var_E0)) 'String
  loc_14FAA98:           Set var_128 = Me.FGrid2
  loc_14FAA9E:           LateIdCallSt
  loc_14FAAB9:         Else
  loc_14FAABD:           var_A4 = CVar(CLng(1)) 'Long
  loc_14FAAC5:           var_114 = CVar(CLng(0)) 'Long
  loc_14FAAF8:           var_E0 = CVar(CStr(Me.Fields.Item("SearchCode").Value)) 'String
  loc_14FAB00:           Set var_128 = Me.FGrid2
  loc_14FAB06:           LateIdCallSt
  loc_14FAB1E:         End If
  loc_14FAB21:       Next var_204 'Integer
  loc_14FAB29:       var_B4.MoveNext
  loc_14FAB2E:       GoTo loc_14FA83A
  loc_14FAB31:     End If
  loc_14FAB34:   Else
  loc_14FAB59:     For var_208 = 1 To CInt((CLng(Me.FGrid2.Rows) - 1)):   var_AE = var_208 'Integer
  loc_14FAB63:       var_A4 = CVar(CLng(1)) 'Long
  loc_14FAB6B:       var_114 = CVar(CLng(0)) 'Long
  loc_14FAB9E:       var_E0 = CVar(CStr(Me.Fields.Item("SearchCode").Value)) 'String
  loc_14FABA6:       Set var_128 = Me.FGrid2
  loc_14FABAC:       LateIdCallSt
  loc_14FABC7:     Next var_208 'Integer
  loc_14FABCC:   End If
  loc_14FABCF: Else
  loc_14FABCF:   Call Proc_237_45_F1E100()
  loc_14FABD4: End If
  loc_14FABD4: Call Proc_237_48_E871C0()
  loc_14FABDE: Set var_AC = Nothing
  loc_14FABE6: Set var_B4 = Nothing
  loc_14FABE9: Exit Sub
  loc_14FABEA: ' Referenced from: 14F9DF1
  loc_14FABEA: Proc_6_60_E62BC4()
  loc_14FABEF: Exit Sub
End Sub

Public Sub Proc_237_47_E7C3EC(arg_C) 'E7C3EC
  'Data Table: 4B7B34
  Dim var_98 As TextBox
  loc_E7C39A: Set var_8C = Me.Txt
  loc_E7C3A0: Call 0.Method_Proc_237_47_E7C3ECC (var_8E, var_86)
  loc_E7C3B0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7C3C6:   Set var_8C = Me.Txt
  loc_E7C3CC:   Call 0.Method_Proc_237_47_E7C3EC0 (CInt(var_86), var_98)
  loc_E7C3D4:   var_98.Enabled = arg_C
  loc_E7C3E3: Next var_92 'Byte
  loc_E7C3E9: Exit Sub
End Sub

Public Sub Proc_237_48_E871C0
  'Data Table: 4B7B34
  loc_E8716C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E8717E:   Me.DGHelp.Visible = False
  loc_E87186: End If
  loc_E871A2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E871B4:   Me.FGPoint.Visible = False
  loc_E871BC: End If
  loc_E871BC: Exit Sub
End Sub

Public Sub Proc_237_49_E910D0(arg_C) 'E910D0
  'Data Table: 4B7B34
  Dim var_10C As TextBox
  loc_E91064: Call Proc_237_48_E871C0()
  loc_E910A0: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E910A3:   Call TopCtrl1_UnknownEvent_16()
  loc_E910AB: Else
  loc_E910B5:   Set var_108 = Me.Txt
  loc_E910BB:   Call 0.Method_Proc_237_49_E910D00 (arg_C)
  loc_E910C3:   var_10C.SetFocus
  loc_E910CF: End If
  loc_E910CF: Exit Sub
End Sub

Public Sub Proc_237_50_11826A4
  'Data Table: 4B7B34
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim unk_4B7B44 As Connection15
  Dim var_D4 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As String
  Dim var_AC As Variant
  Dim var_F4 As Variant
  Dim var_128 As Variant
  Dim var_130 As MSHFlexGrid
  loc_11822C8: On Error Goto loc_118269C
  loc_11822CF: var_8A = CByte(1) 'Byte
  loc_11822E6: Me.FGrid1.Rows = 1
  loc_11822EE: var_9C = vbNullString
  loc_11822F8: Set var_B0 = Me.FGrid1
  loc_1182316: Set var_B0 = Me.FGrid1
  loc_118231C: var_B0.FixedRows = 1
  loc_1182348: unk_4B7B44.Execute "SELECT * FROM FEATUREMAST Where Status='Active' and LogSite_Code IN ('" & MemVar_1F92078 & "','HO') ORDER BY NAME", var_C8, -1
  loc_1182353: Set var_88 = var_B0
  loc_118237A: If (Me.Recordset15.RecordCount > 0) Then
  loc_1182397:   For var_D0 = CByte(1) To CByte(Me.Recordset15.RecordCount): var_8A = var_D0 'Byte
  loc_11823A1:     Set var_D4 = Me.FGrid1
  loc_11823B1:     var_D4.Row = CVar(CLng(var_8A))
  loc_11823C1:     var_D4.Col = CVar(CLng(1))
  loc_11823CF:     var_D4.CellFontName = "wingdings"
  loc_11823DF:     var_D4.CellFontSize = CVar(CDbl(&H12))
  loc_11823F0:     var_D4.CellForeColor = &HFF0000
  loc_11823FA:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_1182402:     var_E4 = CVar(CLng(1)) 'Long
  loc_1182407:     var_104 = vbNullString
  loc_1182410:     LateIdCallSt
  loc_118241D:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_1182425:     var_F4 = CVar(CLng(2)) 'Long
  loc_1182458:     var_128 = CVar(CStr(Me.var_D4.Fields.Item("Code").Value)) 'String
  loc_118245F:     LateIdCallSt
  loc_118247A:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_1182482:     var_F4 = CVar(CLng(3)) 'Long
  loc_11824AC:     var_C8 = Me.Recordset15.Fields.Item("Name").Value
  loc_11824B5:     var_128 = CVar(CStr(var_C8)) 'String
  loc_11824BC:     LateIdCallSt
  loc_11824D4:     Set var_D4 = Nothing 
  loc_11824DE:     Me.Recordset15.MoveNext
  loc_11824E3:     var_9C = vbNullString
  loc_11824ED:     Set var_B0 = Me.FGrid1
  loc_1182501:   Next var_D0 'Byte
  loc_1182507: End If
  loc_118250B: var_8A = CByte(1) 'Byte
  loc_1182522: Me.FGrid2.Rows = 5
  loc_1182537: Set var_B0 = Me.FGrid2
  loc_118253D: var_B0.FixedRows = 1
  loc_118255B: unk_4B7B44.Execute "SELECT DISTINCT([Capacity]) FROM VenueCapacity", var_C8, -1
  loc_1182566: Set var_88 = var_B0
  loc_1182586: If (Me.Recordset15.RecordCount > 0) Then
  loc_11825A3:   For var_12C = CByte(1) To CByte(Me.Recordset15.RecordCount): var_8A = var_12C 'Byte
  loc_11825AD:     Set var_130 = Me.FGrid2
  loc_11825BD:     var_130.Row = CVar(CLng(var_8A))
  loc_11825CD:     var_130.Col = CVar(CLng(1))
  loc_11825DB:     var_130.CellFontName = "wingdings"
  loc_11825EB:     var_130.CellFontSize = CVar(CDbl(&H12))
  loc_11825FC:     var_130.CellForeColor = &HFF0000
  loc_1182606:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_118260E:     var_E4 = CVar(CLng(1)) 'Long
  loc_1182613:     var_104 = vbNullString
  loc_118261C:     LateIdCallSt
  loc_1182629:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_1182631:     var_F4 = CVar(CLng(2)) 'Long
  loc_1182664:     var_128 = CVar(CStr(Me.var_130.Fields.Item("Capacity").Value)) 'String
  loc_118266B:     LateIdCallSt
  loc_1182683:     Set var_130 = Nothing 
  loc_118268D:     Me.Recordset15.MoveNext
  loc_1182695:   Next var_12C 'Byte
  loc_118269B: End If
  loc_118269B: Exit Sub
  loc_118269C: ' Referenced from: 11822C8
  loc_118269C: Proc_6_60_E62BC4()
  loc_11826A1: Exit Sub
End Sub

Public Sub Proc_237_51_122F9E4
  'Data Table: 4B7B34
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_CC As MSHFlexGrid
  Dim var_DC As String
  Dim var_100 As MSHFlexGrid
  loc_122F4CB: Me.FGrid1.Row = 0
  loc_122F4E6: Me.FGrid1.Col = 0
  loc_122F4EE: var_94 = 0
  loc_122F4FD: var_B8 = CVar(CInt(3)) 'Integer
  loc_122F505: Set var_A8 = Me.FGrid1
  loc_122F50B: LateIdCallSt
  loc_122F529: Me.FGrid1.Row = 1
  loc_122F544: Me.FGrid1.Cols = 4
  loc_122F549: var_94 = 0
  loc_122F552: var_B8 = 0
  loc_122F55E: LateIdCallSt
  loc_122F566: var_94 = 0
  loc_122F572: var_B8 = CVar(CLng(1)) 'Long
  loc_122F577: var_DC = vbNullString
  loc_122F580: LateIdCallSt
  loc_122F58B: var_94 = CVar(CLng(1)) 'Long
  loc_122F590: var_B8 = &H1F4
  loc_122F59C: LateIdCallSt
  loc_122F5A4: var_94 = 0
  loc_122F5B0: var_B8 = CVar(CLng(2)) 'Long
  loc_122F5B5: var_DC = "Code"
  loc_122F5BE: LateIdCallSt
  loc_122F5C9: var_94 = CVar(CLng(2)) 'Long
  loc_122F5CE: var_B8 = 0
  loc_122F5DA: LateIdCallSt
  loc_122F5E2: var_94 = 0
  loc_122F5EE: var_B8 = CVar(CLng(3)) 'Long
  loc_122F5F3: var_DC = "Venue Feature"
  loc_122F5FC: LateIdCallSt
  loc_122F607: var_94 = CVar(CLng(3)) 'Long
  loc_122F612: var_B8 = CVar(CInt(1)) 'Integer
  loc_122F619: LateIdCallSt
  loc_122F624: var_94 = CVar(CLng(3)) 'Long
  loc_122F62F: var_B8 = CVar(CInt(1)) 'Integer
  loc_122F636: LateIdCallSt
  loc_122F641: var_94 = CVar(CLng(3)) 'Long
  loc_122F646: var_B8 = &H12DE
  loc_122F652: LateIdCallSt
  loc_122F65C: Set var_CC = Nothing 
  loc_122F67F: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_122F682:   var_94 = vbNullString
  loc_122F68C:   Set var_A8 = Me.FGrid1
  loc_122F69D: End If
  loc_122F6B0: Me.FGrid2.Row = 0
  loc_122F6CB: Me.FGrid2.Col = 0
  loc_122F6D3: var_94 = 0
  loc_122F6E2: var_B8 = CVar(CInt(3)) 'Integer
  loc_122F6EA: Set var_A8 = Me.FGrid2
  loc_122F6F0: LateIdCallSt
  loc_122F70E: Me.FGrid2.Row = 1
  loc_122F71A: Set var_100 = Me.FGrid2
  loc_122F72A: global_60 = CStr(&HE0E0E0)
  loc_122F73D: var_100.Cols = 6
  loc_122F742: var_94 = 0
  loc_122F74E: var_B8 = CVar(CLng(0)) 'Long
  loc_122F753: var_DC = "Code"
  loc_122F75C: LateIdCallSt
  loc_122F767: var_94 = CVar(CLng(0)) 'Long
  loc_122F76C: var_B8 = 0
  loc_122F778: LateIdCallSt
  loc_122F780: var_94 = 0
  loc_122F78C: var_B8 = CVar(CLng(1)) 'Long
  loc_122F791: var_DC = vbNullString
  loc_122F79A: LateIdCallSt
  loc_122F7A5: var_94 = CVar(CLng(1)) 'Long
  loc_122F7AA: var_B8 = &H1F4
  loc_122F7B6: LateIdCallSt
  loc_122F7BE: var_94 = 0
  loc_122F7CA: var_B8 = CVar(CLng(2)) 'Long
  loc_122F7CF: var_DC = "Venue Capacity"
  loc_122F7D8: LateIdCallSt
  loc_122F7E3: var_94 = CVar(CLng(2)) 'Long
  loc_122F7EE: var_B8 = CVar(CInt(1)) 'Integer
  loc_122F7F5: LateIdCallSt
  loc_122F800: var_94 = CVar(CLng(2)) 'Long
  loc_122F80B: var_B8 = CVar(CInt(1)) 'Integer
  loc_122F812: LateIdCallSt
  loc_122F81D: var_94 = CVar(CLng(2)) 'Long
  loc_122F822: var_B8 = &HAF0
  loc_122F82E: LateIdCallSt
  loc_122F836: var_94 = 0
  loc_122F842: var_B8 = CVar(CLng(3)) 'Long
  loc_122F847: var_DC = "Seating"
  loc_122F850: LateIdCallSt
  loc_122F85B: var_94 = CVar(CLng(3)) 'Long
  loc_122F866: var_B8 = CVar(CInt(1)) 'Integer
  loc_122F86D: LateIdCallSt
  loc_122F878: var_94 = CVar(CLng(3)) 'Long
  loc_122F883: var_B8 = CVar(CInt(1)) 'Integer
  loc_122F88A: LateIdCallSt
  loc_122F895: var_94 = CVar(CLng(3)) 'Long
  loc_122F89A: var_B8 = &H3E8
  loc_122F8A6: LateIdCallSt
  loc_122F8AE: var_94 = 0
  loc_122F8BA: var_B8 = CVar(CLng(4)) 'Long
  loc_122F8BF: var_DC = "Floating"
  loc_122F8C8: LateIdCallSt
  loc_122F8D3: var_94 = CVar(CLng(4)) 'Long
  loc_122F8DE: var_B8 = CVar(CInt(1)) 'Integer
  loc_122F8E5: LateIdCallSt
  loc_122F8F0: var_94 = CVar(CLng(4)) 'Long
  loc_122F8FB: var_B8 = CVar(CInt(1)) 'Integer
  loc_122F902: LateIdCallSt
  loc_122F90D: var_94 = CVar(CLng(4)) 'Long
  loc_122F912: var_B8 = &H3E8
  loc_122F91E: LateIdCallSt
  loc_122F929: var_94 = CVar(CLng(5)) 'Long
  loc_122F92E: var_B8 = 0
  loc_122F93A: LateIdCallSt
  loc_122F94E: var_100.Rows = 5
  loc_122F953: var_94 = 3
  loc_122F95F: var_B8 = CVar(CLng(2)) 'Long
  loc_122F964: var_DC = "Theatre"
  loc_122F96D: LateIdCallSt
  loc_122F975: var_94 = 4
  loc_122F981: var_B8 = CVar(CLng(2)) 'Long
  loc_122F986: var_DC = "UShape"
  loc_122F98F: LateIdCallSt
  loc_122F997: var_94 = 1
  loc_122F9A3: var_B8 = CVar(CLng(2)) 'Long
  loc_122F9A8: var_DC = "Informal"
  loc_122F9B1: LateIdCallSt
  loc_122F9B9: var_94 = 2
  loc_122F9C5: var_B8 = CVar(CLng(2)) 'Long
  loc_122F9CA: var_DC = "Seating"
  loc_122F9D3: LateIdCallSt
  loc_122F9DD: Set var_100 = Nothing 
  loc_122F9E1: Exit Sub
End Sub
