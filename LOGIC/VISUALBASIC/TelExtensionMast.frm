VERSION 5.00
Begin VB.Form TelExtensionMast
  Caption = "Extension Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10020
  ClientHeight = 6540
  Begin MSFlexGrid FGPoint
    Left = 5445
    Top = 4860
    Width = 4155
    Height = 330
    Visible = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGDept
    Left = 6390
    Top = 1980
    Width = 3600
    Height = 1995
    Visible = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGHelp
    Left = 660
    Top = 5160
    Width = 3660
    Height = 1995
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 19
  End
  Begin TextBox txt
    Index = 5
    BackColor = &HFFFFFF&
    Left = 6255
    Top = 1290
    Width = 2925
    Height = 240
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
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
  Begin TextBox txt
    Index = 6
    BackColor = &HFFFFFF&
    Left = 1995
    Top = 1530
    Width = 1290
    Height = 240
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin Frame FrmList
    Left = 10860
    Top = 1725
    Width = 1950
    Height = 2475
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 75
      Top = 30
      Width = 1800
      Height = 2340
      TabStop = 0   'False
      TabIndex = 16
    End
  End
  Begin TextBox txt
    Index = 4
    BackColor = &HFFFFFF&
    Left = 6255
    Top = 1305
    Width = 2265
    Height = 240
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
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
  Begin TextBox txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 6255
    Top = 1305
    Width = 2865
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
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
  Begin TextBox txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 1995
    Top = 1275
    Width = 2385
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
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
  Begin TextBox txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 1995
    Top = 1020
    Width = 1275
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 1995
    Top = 765
    Width = 4275
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
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
  Begin DataGrid DGRoom
    Left = 495
    Top = 2115
    Width = 3570
    Height = 1995
    Visible = 0   'False
    TabIndex = 13
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10020
    Height = 510
    TabIndex = 20
  End
  Begin Label lblNumber
    Caption = "Department"
    Index = 5
    ForeColor = &H0&
    Left = 4575
    Top = 1500
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 17
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label lblNumber
    Caption = "Shop Desc."
    Index = 4
    ForeColor = &H0&
    Left = 4500
    Top = 1050
    Width = 960
    Height = 240
    Visible = 0   'False
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Rate For 1 Pulse"
    Index = 4
    ForeColor = &H0&
    Left = 435
    Top = 1530
    Width = 1410
    Height = 240
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label lblNumber
    Caption = "Room Number"
    Index = 3
    ForeColor = &H0&
    Left = 4545
    Top = 1290
    Width = 1230
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Type"
    Index = 2
    ForeColor = &H0&
    Left = 435
    Top = 1275
    Width = 420
    Height = 240
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Extension"
    Index = 1
    ForeColor = &H0&
    Left = 435
    Top = 1020
    Width = 810
    Height = 240
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Description"
    Index = 0
    ForeColor = &H0&
    Left = 435
    Top = 765
    Width = 945
    Height = 240
    TabIndex = 7
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "TelExtensionMast"


Private Sub FGPoint_UnknownEvent_9 'E85A20
  'Data Table: 472628
  loc_E859CC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E859CF:   Call DGHelp_UnknownEvent_9()
  loc_E859D4: End If
  loc_E859F0: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_E859F3:   Call DGRoom_UnknownEvent_9()
  loc_E859F8: End If
  loc_E85A14: If (CBool(Me.DGDept.Visible) = &HFF) Then
  loc_E85A17:   Call DGDept_UnknownEvent_9()
  loc_E85A1C: End If
  loc_E85A1C: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE51BC
  'Data Table: 472628
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE5113: Me.DGHelp.Visible = False
  loc_EE5132: If (Me.RecordCount > 0) Then
  loc_EE5152:   var_B0 = Me.Fields.Item("Description")
  loc_EE516F:   Set var_B4 = Me.txt
  loc_EE5175:   Call 0.Method_DGHelp_UnknownEvent_90 (0, var_B8)
  loc_EE517D:   var_B8.Text = CStr(var_B0.Value)
  loc_EE5193: End If
  loc_EE519C: Set var_A8 = Me.txt
  loc_EE51A2: Call 0.Method_DGHelp_UnknownEvent_90 (0)
  loc_EE51AA: var_B0.SetFocus
  loc_EE51B6: Call Proc_93_39_EF5D18(var_B0)
  loc_EE51BB: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E7494C
  'Data Table: 472628
  loc_E7490A: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E74921: Set var_8C = Me.FGPoint
  loc_E7493B: Proc_6_138_106D6F8(Me.DGHelp, global_80, 0)
  loc_E74949: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '121958C
  'Data Table: 472628
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_12190CE: Set var_88 = Me.txt
  loc_12190D4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12190E2: Proc_6_74_E226B0(var_8C)
  loc_12190F1: var_92 = Index
  loc_12190FA: If (var_92 = 0) Then
  loc_1219114:   If (Me.RecordCount > 0) Then
  loc_1219122:     Set var_8C = Me.FGPoint
  loc_121913A:     Proc_6_137_1193554(Me.DGHelp, global_80, Index)
  loc_1219148:   End If
  loc_121914B: Else
  loc_1219151:   If (var_92 = 3) Then
  loc_121916B:     If (Me.RecordCount > 0) Then
  loc_1219179:       Set var_8C = Me.FGPoint
  loc_1219191:       Proc_6_137_1193554(Me.DGRoom, global_72, Index, var_8C)
  loc_121919F:     End If
  loc_12191ED:     Set var_88 = Me.txt
  loc_12191F3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_12191FB:     var_8C = var_8C.Text
  loc_1219213:     If (var_92 Or (var_A0 = vbNullString)) Then
  loc_1219216:       Exit Sub
  loc_1219217:     End If
  loc_1219224:     Set var_88 = Me.txt
  loc_121922A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1219232:     var_A0 = var_8C.Text
  loc_1219244:     var_B0 = "Code"
  loc_121927F:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1219288:       Me.MoveFirst
  loc_12192AB:       Set var_88 = Me.txt
  loc_12192B1:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Code='")
  loc_12192B9:       0 = var_8C.Text
  loc_12192D2:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_12192E7:     End If
  loc_12192EA:   Else
  loc_12192F0:     If (var_92 = 5) Then
  loc_121930A:       If (Me.RecordCount > 0) Then
  loc_1219318:         Set var_8C = Me.FGPoint
  loc_1219330:         Proc_6_137_1193554(Me.DGDept, global_76)
  loc_121933E:       End If
  loc_121938C:       Set var_88 = Me.txt
  loc_1219392:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_121939A:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12193B2:       If (Index Or (var_A0 = vbNullString)) Then
  loc_12193B5:         Exit Sub
  loc_12193B6:       End If
  loc_12193C3:       Set var_88 = Me.txt
  loc_12193C9:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12193D1:       var_A0 = var_8C.Text
  loc_12193E3:       var_B0 = "Name"
  loc_121941E:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1219427:         Me.MoveFirst
  loc_121944A:         Set var_88 = Me.txt
  loc_1219450:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1219458:         0 = var_8C.Text
  loc_1219471:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1219486:       End If
  loc_1219489:     Else
  loc_121948F:       If (var_92 = 2) Then
  loc_121949F:         ReDim var_F0(0 To 2)
  loc_12194B6:         var_F0(0) = "Department"
  loc_12194C5:         var_F0(1) = "Room"
  loc_12194D4:         var_F0(2) = "Shop"
  loc_12194EB:         global_56 = Array(var_F0)
  loc_12194F6:         Set var_B4 = Me.ListView
  loc_1219513:         Set var_8C = Me.txt
  loc_121952D:         Set global_52 = Proc_6_66_EFF8FC(var_B4, var_8C, 2)
  loc_121954A:         Set var_88 = Me.txt
  loc_1219550:         Call 0.Method_Txt_GotFocus0 (2, var_8C, var_A0)
  loc_1219558:         global_56 = var_8C.Text
  loc_1219569:         Set var_90 = Me.txt
  loc_121956F:         Call 0.Method_Txt_GotFocus0 (2, var_B4, var_A0)
  loc_1219577:         var_B4.Tag = 3
  loc_121958A:       End If
  loc_121958A:     End If
  loc_121958A:   End If
  loc_121958A: End If
  loc_121958A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '136A1A4
  'Data Table: 472628
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_E0 As String
  Dim var_8C As DataGrid
  Dim var_9C As DataGrid
  Dim var_134 As Variant
  loc_1369976: If (CLng(Shift) = &H1B) Then
  loc_1369979:   Call Proc_93_39_EF5D18()
  loc_136997E:   Exit Sub
  loc_136997F: End If
  loc_1369982: var_88 = KeyCode
  loc_136998B: If (var_88 = 0) Then
  loc_1369992:   Set var_A4 = Me.DGHelp
  loc_13699A0:   Set var_AC = Me.FGPoint
  loc_13699AB:   Set var_9C = var_AC
  loc_13699DB:   Proc_6_79_11ACE04(var_A4, Me.txt, 0, global_80, Shift)
  loc_13699F8:   var_B0 = Me.RecordCount
  loc_1369A48:   If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1369A56:     Set var_90 = Me.FGPoint
  loc_1369A6E:     Proc_6_138_106D6F8(Me.DGHelp, global_80, KeyCode, var_90, 0)
  loc_1369A7C:   End If
  loc_1369A7F: Else
  loc_1369A85:   If (var_88 = 2) Then
  loc_1369AAA:     Set var_8C = Me.txt
  loc_1369AB0:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 1)
  loc_1369AB8:     var_9C = var_90.Left
  loc_1369ACA:     Set var_9C = Me.txt
  loc_1369AD0:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B4)
  loc_1369AD8:     0 = var_A4.Top
  loc_1369AEA:     Set var_A8 = Me.txt
  loc_1369AF0:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_1369B0A:     Set var_BC = Me.txt
  loc_1369B10:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_1369B60:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.txt, KeyCode, Shift, arg_14)
  loc_1369B90:     Set var_8C = Me.txt
  loc_1369B96:     Call 0.Method_Txt_KeyDown0 (2, var_90, var_E0, CInt(var_B0))
  loc_1369B9E:     CInt((var_B4 + var_AC.Height)) = var_90.Text
  loc_1369BA6:     var_E4 = var_E0
  loc_1369BD1:     If (var_E4 = CStr(global_56(0))) Then
  loc_1369BE0:       Set var_8C = Me.txt
  loc_1369BE6:       Call 0.Method_Txt_KeyDown0 (3, var_90, vbNullString)
  loc_1369BEE:       var_90.Text = CInt(var_C0.Width)
  loc_1369C06:       Set var_8C = Me.txt
  loc_1369C0C:       Call 0.Method_Txt_KeyDown0 (4, var_90, vbNullString)
  loc_1369C14:       var_90.Text = 780
  loc_1369C2C:       Set var_8C = Me.txt
  loc_1369C32:       Call 0.Method_Txt_KeyDown0 (3, var_90)
  loc_1369C3A:       var_90.Tag = vbNullString
  loc_1369C52:       Set var_8C = Me.txt
  loc_1369C58:       Call 0.Method_Txt_KeyDown0 (4, var_90)
  loc_1369C60:       var_90.Tag = vbNullString
  loc_1369C71:       Call Proc_93_36_1194F1C(5)
  loc_1369C79:     Else
  loc_1369C9A:       If (var_E4 = CStr(global_56(1))) Then
  loc_1369CA9:         Set var_8C = Me.txt
  loc_1369CAF:         Call 0.Method_Txt_KeyDown0 (5, var_90)
  loc_1369CB7:         var_90.Text = vbNullString
  loc_1369CCF:         Set var_8C = Me.txt
  loc_1369CD5:         Call 0.Method_Txt_KeyDown0 (4, var_90)
  loc_1369CDD:         var_90.Text = vbNullString
  loc_1369CF5:         Set var_8C = Me.txt
  loc_1369CFB:         Call 0.Method_Txt_KeyDown0 (5, var_90)
  loc_1369D03:         var_90.Tag = vbNullString
  loc_1369D1B:         Set var_8C = Me.txt
  loc_1369D21:         Call 0.Method_Txt_KeyDown0 (4, var_90)
  loc_1369D29:         var_90.Tag = vbNullString
  loc_1369D3A:         Call Proc_93_36_1194F1C(3)
  loc_1369D42:       Else
  loc_1369D63:         If (var_E4 = CStr(global_56(2))) Then
  loc_1369D72:           Set var_8C = Me.txt
  loc_1369D78:           Call 0.Method_Txt_KeyDown0 (3, var_90)
  loc_1369D80:           var_90.Text = vbNullString
  loc_1369D98:           Set var_8C = Me.txt
  loc_1369D9E:           Call 0.Method_Txt_KeyDown0 (5, var_90)
  loc_1369DA6:           var_90.Text = vbNullString
  loc_1369DBE:           Set var_8C = Me.txt
  loc_1369DC4:           Call 0.Method_Txt_KeyDown0 (3, var_90)
  loc_1369DCC:           var_90.Tag = vbNullString
  loc_1369DE4:           Set var_8C = Me.txt
  loc_1369DEA:           Call 0.Method_Txt_KeyDown0 (5, var_90)
  loc_1369DF2:           var_90.Tag = vbNullString
  loc_1369E03:           Call Proc_93_36_1194F1C(4)
  loc_1369E08:         End If
  loc_1369E08:       End If
  loc_1369E08:     End If
  loc_1369E0B:   Else
  loc_1369E11:     If (var_88 = 3) Then
  loc_1369E2B:       If (Me.RecordCount > 0) Then
  loc_1369E4B:         Set var_A4 = Me.FGPoint
  loc_1369E56:         Set var_9C = Nothing
  loc_1369E84:         Proc_6_69_134A198(Me.DGRoom, Me.txt, KeyCode, global_72, Shift, 0)
  loc_1369E9A:       End If
  loc_1369EF3:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1369F19:         Proc_6_138_106D6F8(Me.DGRoom, global_72, KeyCode, Me.FGPoint, 1)
  loc_1369F27:       End If
  loc_1369F2A:     Else
  loc_1369F30:       If (var_88 = 5) Then
  loc_1369F4A:         If (Me.RecordCount > 0) Then
  loc_1369F6A:           Set var_A4 = Me.FGPoint
  loc_1369F75:           Set var_9C = Nothing
  loc_1369FA3:           Proc_6_69_134A198(Me.DGDept, Me.txt, KeyCode, global_76, Shift, 0, 1)
  loc_1369FB9:         End If
  loc_136A012:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_136A019:           Set var_9C = Me.DGDept
  loc_136A038:           Proc_6_138_106D6F8(var_9C, global_76, KeyCode, Me.FGPoint, var_9C, var_A4)
  loc_136A046:         End If
  loc_136A046:       End If
  loc_136A046:     End If
  loc_136A046:   End If
  loc_136A046: End If
  loc_136A060: Set var_90 = Me.DGDept
  loc_136A077: Set var_9C = Me.DGRoom
  loc_136A07D: var_134 = var_9C.Visible
  loc_136A091: Set var_A4 = Me.FrmList
  loc_136A0B7: If ((((CBool(Me.DGHelp.Visible) = 0) And (CBool(var_90.Visible) = 0)) And (CBool(var_134) = 0)) And (var_A4.Visible = 0)) Then
  loc_136A0D6:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = 6)) Then
  loc_136A0E2:     If (var_144 = True) Then
  loc_136A0F2:       Set var_8C = Me.txt
  loc_136A0F8:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString, 0)
  loc_136A100:       var_90.Text = var_9C
  loc_136A10C:       Exit Sub
  loc_136A10D:     End If
  loc_136A144:     If (MsgBox("Save Record ?", 4, "Save Data", var_134, var_174) = 6) Then
  loc_136A147:       Call TopCtrl1_UnknownEvent_16()
  loc_136A14C:     End If
  loc_136A14C:     Exit Sub
  loc_136A14D:   End If
  loc_136A162:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_136A16B:     Proc_6_75_E527CC(Shift, arg_14, var_A4)
  loc_136A170:   End If
  loc_136A195:   If CBool((CLng(Shift) = &H26) And (CVar(KeyCode) <> var_184)) Then
  loc_136A19E:     Proc_6_76_E52838(Shift, arg_14)
  loc_136A1A3:   End If
  loc_136A1A3: End If
  loc_136A1A3: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FC60C8
  'Data Table: 472628
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FC5F17: var_86 = KeyAscii
  loc_FC5F20: If (var_86 = 3) Then
  loc_FC5F3F:   If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_FC5F51:     var_A0 = "Code"
  loc_FC5F6C:     Proc_6_89_146F1AC(Me.txt, KeyAscii, global_72, arg_10)
  loc_FC5F9E:     Proc_6_138_106D6F8(Me.DGRoom, global_72, KeyAscii, Me.FGPoint)
  loc_FC5FAC:   End If
  loc_FC5FAF: Else
  loc_FC5FB5:   If (var_86 = 5) Then
  loc_FC5FD4:     If (CBool(Me.DGDept.Visible) = &HFF) Then
  loc_FC5FE6:       var_A0 = "Name"
  loc_FC6001:       Proc_6_89_146F1AC(Me.txt, KeyAscii, global_76, arg_10, var_A0)
  loc_FC601B:       Set var_A8 = Me.FGPoint
  loc_FC6033:       Proc_6_138_106D6F8(Me.DGDept, global_76, KeyAscii, var_A8)
  loc_FC6041:     End If
  loc_FC6044:   Else
  loc_FC604A:     If (var_86 = 1) Then
  loc_FC6057:       Set var_8C = Me.txt
  loc_FC605D:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_FC6078:       Proc_6_42_129A86C(var_A8, arg_10, 5, 0)
  loc_FC6087:     Else
  loc_FC608D:       If (var_86 = 6) Then
  loc_FC609A:         Set var_8C = Me.txt
  loc_FC60A0:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_FC60BB:         Proc_6_42_129A86C(var_A8, arg_10, 4)
  loc_FC60C7:       End If
  loc_FC60C7:     End If
  loc_FC60C7:   End If
  loc_FC60C7: End If
  loc_FC60C7: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '11975E8
  'Data Table: 472628
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A8 As TextBox
  Dim var_A4 As String
  loc_11971E3: var_86 = KeyCode
  loc_11971EC: If (var_86 = 0) Then
  loc_119720B:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_1197218:     var_A4 = "Description"
  loc_1197235:     Proc_6_80_FF0AC0(Me.txt, 0, global_80)
  loc_1197267:     Proc_6_138_106D6F8(Me.DGHelp, global_80, KeyCode, Me.FGPoint)
  loc_1197275:   End If
  loc_1197278: Else
  loc_119727E:   If (var_86 = 2) Then
  loc_119729C:     If (Me.FrmList.Visible = &HFF) Then
  loc_11972BC:       Set var_A8 = Me.txt
  loc_11972CB:       Proc_6_64_F28E58(Me.ListView, var_A8, KeyCode, Shift)
  loc_11972DB:     End If
  loc_11972E7:     Set var_8C = Me.txt
  loc_11972ED:     Call 0.Method_Txt_KeyUp0 (2, var_A8, var_A4, global_52)
  loc_11972F5:     Shift = var_A8.Text
  loc_11972FD:     var_B4 = var_A4
  loc_119731D:     var_A4 = CStr(global_56(0))
  loc_1197328:     If (var_B4 = var_A4) Then
  loc_1197337:       Set var_8C = Me.txt
  loc_119733D:       Call 0.Method_Txt_KeyUp0 (3, var_A8, vbNullString)
  loc_1197345:       var_A8.Text = var_A4
  loc_119735D:       Set var_8C = Me.txt
  loc_1197363:       Call 0.Method_Txt_KeyUp0 (4, var_A8)
  loc_119736B:       var_A8.Text = vbNullString
  loc_1197383:       Set var_8C = Me.txt
  loc_1197389:       Call 0.Method_Txt_KeyUp0 (3, var_A8)
  loc_1197391:       var_A8.Tag = vbNullString
  loc_11973A9:       Set var_8C = Me.txt
  loc_11973AF:       Call 0.Method_Txt_KeyUp0 (4, var_A8)
  loc_11973B7:       var_A8.Tag = vbNullString
  loc_11973C8:       Call Proc_93_36_1194F1C(5)
  loc_11973D0:     Else
  loc_11973F1:       If (var_B4 = CStr(global_56(1))) Then
  loc_1197400:         Set var_8C = Me.txt
  loc_1197406:         Call 0.Method_Txt_KeyUp0 (5, var_A8)
  loc_119740E:         var_A8.Text = vbNullString
  loc_1197426:         Set var_8C = Me.txt
  loc_119742C:         Call 0.Method_Txt_KeyUp0 (4, var_A8)
  loc_1197434:         var_A8.Text = vbNullString
  loc_119744C:         Set var_8C = Me.txt
  loc_1197452:         Call 0.Method_Txt_KeyUp0 (5, var_A8)
  loc_119745A:         var_A8.Tag = vbNullString
  loc_1197472:         Set var_8C = Me.txt
  loc_1197478:         Call 0.Method_Txt_KeyUp0 (4, var_A8)
  loc_1197480:         var_A8.Tag = vbNullString
  loc_1197491:         Call Proc_93_36_1194F1C(3)
  loc_1197499:       Else
  loc_11974BA:         If (var_B4 = CStr(global_56(2))) Then
  loc_11974C9:           Set var_8C = Me.txt
  loc_11974CF:           Call 0.Method_Txt_KeyUp0 (3, var_A8)
  loc_11974D7:           var_A8.Text = vbNullString
  loc_11974EF:           Set var_8C = Me.txt
  loc_11974F5:           Call 0.Method_Txt_KeyUp0 (5, var_A8)
  loc_11974FD:           var_A8.Text = vbNullString
  loc_1197515:           Set var_8C = Me.txt
  loc_119751B:           Call 0.Method_Txt_KeyUp0 (3, var_A8)
  loc_1197523:           var_A8.Tag = vbNullString
  loc_119753B:           Set var_8C = Me.txt
  loc_1197541:           Call 0.Method_Txt_KeyUp0 (5, var_A8)
  loc_1197549:           var_A8.Tag = vbNullString
  loc_119755A:           Call Proc_93_36_1194F1C(4)
  loc_119755F:         End If
  loc_119755F:       End If
  loc_119755F:     End If
  loc_1197562:   Else
  loc_1197568:     If (var_86 = 3) Then
  loc_119757C:       var_A4 = "Code"
  loc_11975A0:       Proc_6_68_129FB34(Me.DGRoom, Me.txt, KeyCode, global_72)
  loc_11975D6:       Proc_6_138_106D6F8(Me.DGHelp, global_72, KeyCode, Me.FGPoint)
  loc_11975E4:     End If
  loc_11975E4:   End If
  loc_11975E4: End If
  loc_11975E4: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E463AC
  'Data Table: 472628
  loc_E4638A: Set var_88 = Me.txt
  loc_E46390: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4639E: Proc_6_73_E22704(var_8C)
  loc_E463AA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E24E68
  'Data Table: 472628
  Dim arg_10 As Integer
  loc_E24E4C: If (Cancel = 0) Then
  loc_E24E52:   Call Proc_93_33_107EE04(var_88)
  loc_E24E5D:   If (var_88 = &HFF) Then
  loc_E24E62:     arg_10 = &HFF
  loc_E24E65:     Exit Sub
  loc_E24E66:   End If
  loc_E24E66: End If
  loc_E24E66: Exit Sub
End Sub

Private Sub Form_Load() '104040C
  'Data Table: 472628
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_47263A As Connection15
  Dim var_B8 As Variant
  loc_10401BC: On Error Goto loc_10403BB
  loc_10401CF: Set var_8C = Me
  loc_10401D5: Proc_6_23_DFBA28(var_8C, 0)
  loc_10401DD: Call Proc_93_34_ECDAC0(0)
  loc_1040206: unk_47263A.Execute "SELECT Code,Description FROM TelExt WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Description", var_B8, -1
  loc_1040235: CVarUnk
  loc_104023A: VerifyVarObj
  loc_1040246: LateIdStAd
  loc_104026F: var_98 = "SELECT Code,Code FROM RoomMast WHERE Type='RO' and  (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY RoomMast.Code"
  loc_1040278: unk_47263A.Execute var_98, var_B8, -1
  loc_10402A7: CVarUnk
  loc_10402AC: VerifyVarObj
  loc_10402B8: LateIdStAd
  loc_10402EA: unk_47263A.Execute "SELECT code,Name FROM Depart WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B8, -1
  loc_1040319: CVarUnk
  loc_104031E: VerifyVarObj
  loc_1040324: Set var_8C = Me.DGDept
  loc_104032A: LateIdStAd
  loc_104034C: var_94 = "SELECT T.*,R.Code as RName,D.Name as DName FROM (TelExt as T LEFT JOIN RoomMast as R ON T.RoomNo=R.Code) LEFT JOIN Depart as D ON T.DepCode=D.Code WHERE (T.LOGSITE_CODE='" & MemVar_1F92078
  loc_104035C: unk_47263A.Execute var_94 & "' or T.LOGSITE_CODE='HO') ORDER BY T.Description", var_B8, -1
  loc_1040382: Call Proc_93_35_F1A67C(var_8C, var_8C, Me.DGRoom, var_8C, var_8C)
  loc_104039C: var_94 = "INI"
  loc_10403AA: Call Proc_93_38_E7816C(Proc_5_1_100CB50(var_94, Me, Me, Me.DGHelp), Me, Me)
  loc_10403B5: Call Proc_93_37_1178CC4(Me)
  loc_10403BA: Exit Sub
  loc_10403BB: ' Referenced from: 10401BC
  loc_10403C3: Set var_8C = Err()
  loc_10403C9: Call 0.Method_arg_2C (var_94)
  loc_10403E7: MsgBox(CVar(var_94), &H40, 0, var_EC, var_10C)
  loc_10403FF: Set var_8C = Err()
  loc_1040405: VCallFPR8
  loc_104040B: Exit Sub
End Sub

Private Sub Form_Resize() 'DFCAD0
  'Data Table: 472628
  loc_DFCACC: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E515A8
  'Data Table: 472628
  loc_E5157B: Set global_84 = Nothing
  loc_E5158D: Set global_72 = Nothing
  loc_E5159F: Set global_76 = Nothing
  loc_E515A6: Exit Sub
End Sub

Private Sub Form_Activate() 'DFCE10
  'Data Table: 472628
  loc_DFCE0C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27F68
  'Data Table: 472628
  loc_E27F40: On Error Goto loc_E27F5F
  loc_E27F57: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E27F5F: ' Referenced from: E27F40
  loc_E27F5F: Proc_6_60_E62BC4(Shift)
  loc_E27F64: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E8C048
  'Data Table: 472628
  Dim var_94 As TextBox
  loc_E8BFD8: On Error Goto loc_E8C041
  loc_E8BFFE: Call Proc_93_38_E7816C(Proc_5_1_100CB50("ADD", Me))
  loc_E8C015: Proc_6_21_E5EFAC(Me)
  loc_E8C026: Set var_8C = Me.txt
  loc_E8C02C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_94)
  loc_E8C034: var_94.SetFocus
  loc_E8C040: Exit Sub
  loc_E8C041: ' Referenced from: E8BFD8
  loc_E8C041: Proc_6_60_E62BC4(global_84)
  loc_E8C046: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'ECA970
  'Data Table: 472628
  loc_ECA8D0: On Error Goto loc_ECA96A
  loc_ECA90A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_ECA919:   Set var_110 = Me
  loc_ECA930:   Call Proc_93_38_E7816C(Proc_5_1_100CB50("INI", var_110))
  loc_ECA93B:   Call Proc_93_39_EF5D18(global_84)
  loc_ECA940:   Call Proc_93_37_1178CC4()
  loc_ECA948: Else
  loc_ECA94E:   Call 0.Method_arg_1E8 (var_110)
  loc_ECA956:   Call var_110.SetFocus
  loc_ECA95F: End If
  loc_ECA95F: Call Proc_93_39_EF5D18()
  loc_ECA964: Call Proc_93_40_E841D8()
  loc_ECA969: Exit Sub
  loc_ECA96A: ' Referenced from: ECA8D0
  loc_ECA96A: Proc_6_60_E62BC4()
  loc_ECA96F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10ED08C
  'Data Table: 472628
  Dim var_96 As Integer
  Dim unk_47263A As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_10ECD9C: On Error Goto loc_10ED033
  loc_10ECDD6: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10ECDDB:   var_96 = 0
  loc_10ECDE7:   unk_47263A.BeginTrans var_11C
  loc_10ECDEE:   var_96 = &HFF
  loc_10ECE02:   var_94 = Me.Bookmark 'Variant
  loc_10ECE4E:   var_F8 = "Delete From TelExt Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10ECE5C:   unk_47263A.Execute CStr(var_F8), var_118, -1
  loc_10ECEA7:   var_164 = 0
  loc_10ECEBA:   var_15C = 0
  loc_10ECEC5:   var_158 = 0
  loc_10ECED8:   var_150 = 0
  loc_10ECEE3:   var_14C = 0
  loc_10ECEF6:   var_144 = 0
  loc_10ECF36:   var_128 = "TelExt"
  loc_10ECF3F:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_10ECF6D:   unk_47263A.CommitTrans
  loc_10ECF74:   var_96 = 0
  loc_10ECF82:   Me.Requery -1
  loc_10ECF92:   Me.Requery -1
  loc_10ECFA2:   Me.Requery -1
  loc_10ECFB2:   Me.Requery -1
  loc_10ECFD2:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10ECFDF:     Me.Bookmark = var_94
  loc_10ECFE7:   Else
  loc_10ECFFB:     If (Me.EOF = 0) Then
  loc_10ED004:       Me.MoveLast
  loc_10ED009:     End If
  loc_10ED009:   End If
  loc_10ED009:   Call Proc_93_37_1178CC4(var_96, var_144, 0, var_14C, var_150)
  loc_10ED02A:   Proc_5_0_110649C(&HFF, Me, global_84, 0)
  loc_10ED032: End If
  loc_10ED032: Exit Sub
  loc_10ED033: ' Referenced from: 10ECD9C
  loc_10ED039: If (var_96 = &HFF) Then
  loc_10ED042:   unk_47263A.RollbackTrans
  loc_10ED047: End If
  loc_10ED04F: Set var_120 = Err()
  loc_10ED055: Call 0.Method_arg_2C (var_128, 0, var_158)
  loc_10ED076: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10ED089: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA5DE0
  'Data Table: 472628
  Dim var_94 As TextBox
  loc_FA5C50: On Error Goto loc_FA5DD7
  loc_FA5C76: Call Proc_93_38_E7816C(Proc_5_1_100CB50("EDIT", Me))
  loc_FA5C8D: Set var_8C = Me.txt
  loc_FA5C93: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_94)
  loc_FA5CA6: global_88 = var_94.Text
  loc_FA5CC0: Set var_8C = Me.txt
  loc_FA5CC6: Call 0.Method_TopCtrl1_UnknownEvent_D0 (2, var_94)
  loc_FA5CD9: global_96 = var_94.Text
  loc_FA5CF3: Set var_8C = Me.txt
  loc_FA5CF9: Call 0.Method_TopCtrl1_UnknownEvent_D0 (3, var_94)
  loc_FA5D0C: global_100 = var_94.Text
  loc_FA5D26: Set var_8C = Me.txt
  loc_FA5D2C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (5, var_94)
  loc_FA5D3F: global_104 = var_94.Text
  loc_FA5D59: Set var_8C = Me.txt
  loc_FA5D5F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (4, var_94)
  loc_FA5D72: global_108 = var_94.Text
  loc_FA5D8C: Set var_8C = Me.txt
  loc_FA5D92: Call 0.Method_TopCtrl1_UnknownEvent_D0 (6, var_94)
  loc_FA5DA5: global_112 = var_94.Text
  loc_FA5DBC: Set var_8C = Me.txt
  loc_FA5DC2: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_94)
  loc_FA5DCA: var_94.SetFocus
  loc_FA5DD6: Exit Sub
  loc_FA5DD7: ' Referenced from: FA5C50
  loc_FA5DD7: Proc_6_60_E62BC4(global_84)
  loc_FA5DDC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18F34
  'Data Table: 472628
  loc_E18F29: Me.Global.Unload Me
  loc_E18F31: Exit Sub
  loc_E18F32: Set var_5000 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F23D88
  'Data Table: 472628
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F23C88: On Error Goto loc_F23D20
  loc_F23C94: var_88 = Me.RecordCount
  loc_F23CA2: If (var_88 <= 0) Then
  loc_F23CAB:   var_B8 = "Information"
  loc_F23CC6:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F23CD6:   Exit Sub
  loc_F23CD7: End If
  loc_F23CDE: var_10C = "Select TelExt.Code As SearchCode,TelExt.Description , TelExt.Extension , TelExt.Type, cast(PulseRate as VArchar(5)) as PulseRate FROM (TelExt Left JOIN RoomMast ON (TelExt.RoomNo=RoomMast.Code and TelExt.LogSite_Code=RoomMast.LogSite_Code)) Left JOIN Depart ON (TelExt.DepCode=Depart.Code and TelExt.LogSite_Code=Depart.LogSite_Code) where TelExt.LogSite_Code='" & MemVar_1F92078
  loc_F23CE5: MemVar_1F920E4 = var_10C & "' ORDER BY TelExt.Description"
  loc_F23CF2: MemVar_1F92120 = Me
  loc_F23CF9: var_10C = "2000,800,1000,2000,900"
  loc_F23CFF: Proc_6_126_F1BCC0(var_10C)
  loc_F23D1A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F23D1F: Exit Sub
  loc_F23D20: ' Referenced from: F23C88
  loc_F23D28: Set var_110 = Err()
  loc_F23D2E: Call 0.Method_arg_1C (var_88)
  loc_F23D3F: If (var_88 <> 0) Then
  loc_F23D4A:   Set var_110 = Err()
  loc_F23D50:   Call 0.Method_arg_2C (var_10C)
  loc_F23D71:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F23D84: End If
  loc_F23D84: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2C1D8
  'Data Table: 472628
  loc_E2C1C8: Proc_5_0_110649C(&HFF, Me)
  loc_E2C1D0: Call Proc_93_37_1178CC4(global_84)
  loc_E2C1D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2C238
  'Data Table: 472628
  loc_E2C228: Proc_5_0_110649C(&HFF, Me)
  loc_E2C230: Call Proc_93_37_1178CC4(global_84)
  loc_E2C235: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2F058
  'Data Table: 472628
  loc_E2F048: Proc_5_0_110649C(&HFF, Me)
  loc_E2F050: Call Proc_93_37_1178CC4(global_84)
  loc_E2F055: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2C178
  'Data Table: 472628
  loc_E2C168: Proc_5_0_110649C(&HFF, Me)
  loc_E2C170: Call Proc_93_37_1178CC4(global_84)
  loc_E2C175: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1073AC0
  'Data Table: 472628
  Dim unk_47263A As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_1073840: On Error Goto loc_1073A77
  loc_1073859: unk_47263A.Execute "Select TelExt.Code As SearchCode,TelExt.Description , TelExt.Extension , TelExt.Type , TelExt.ShopNo & RoomMast.Code & Depart.Name as Nos,TelExt.PulseRate FROM (TelExt LEFT JOIN RoomMast ON TelExt.RoomNo=RoomMast.Code) LEFT JOIN Depart ON TelExt.DepCode=Depart.Code ORDER BY TelExt.Description", var_BC, -1
  loc_1073864: Set var_88 = var_C0
  loc_1073873: var_C4 = var_88.RecordCount
  loc_1073881: If (var_C4 = 0) Then
  loc_107389D:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_10738AD:   Exit Sub
  loc_10738AE: End If
  loc_10738BD: var_12C = MemVar_1F920B4 & "\TelExt.ttx"
  loc_10738C4: Set var_C0 = var_88 
  loc_10738D0: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_10738DA: Set var_88 = var_C0
  loc_10738E0: var_AC = CVar(var_12E) 'Integer
  loc_10738E3: var_98 = var_AC 'Variant
  loc_10738FF: var_128 = MemVar_1F920B4 & "\TelExt.RPT"
  loc_1073908: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_1073913: MemVar_1F921E4 = var_C0
  loc_107392E: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_1073936: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1073942: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_107395B:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1073963:   Call 0.Method_arg_20 (var_138)
  loc_107396B:   Call 0.Method_arg_30 (var_128)
  loc_10739B1:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_10739C7:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10739CF:     Call 0.Method_arg_20 (var_138)
  loc_10739D7:     Call 0.Method_arg_38 ("'Extension Master'")
  loc_10739E3:   End If
  loc_10739E6: Next var_132 'Integer
  loc_1073A04: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1073A0C: Call 0.Method_arg_2C (var_D4)
  loc_1073A1A: Call 0.Method_arg_150 (var_F4)
  loc_1073A25: Call 0.Method_arg_50 (var_128)
  loc_1073A2F: Set var_138 = Nothing
  loc_1073A49: Set var_C0 = MemVar_1F921E4 
  loc_1073A55: Proc_6_99_1483714(var_C0, 0, var_128)
  loc_1073A60: MemVar_1F921E4 = var_C0
  loc_1073A73: Set var_88 = Nothing
  loc_1073A76: Exit Sub
  loc_1073A77: ' Referenced from: 1073840
  loc_1073A7F: Set var_C0 = Err()
  loc_1073A85: Call 0.Method_arg_2C (var_128, &HFF)
  loc_1073A90: Call 0.Method_arg_50 (var_12C)
  loc_1073AAC: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_1073ABF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'DFB854
  'Data Table: 472628
  loc_DFB850: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1460844
  'Data Table: 472628
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D0 As String
  Dim var_CC As TextBox
  Dim var_F0 As Variant
  Dim var_E0 As Variant
  Dim var_A4 As String
  Dim unk_47263A As Connection15
  Dim var_94 As Variant
  Dim var_C8 As Field20
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim Me As Recordset15
  Dim var_168 As TextBox
  Dim var_1A4 As TextBox
  Dim var_1E0 As TextBox
  Dim var_22C As TextBox
  Dim var_278 As TextBox
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_36C As Variant
  Dim var_38C As Variant
  loc_145FD50: On Error Goto loc_14607EF
  loc_145FD57: var_86 = CByte(0) 'Byte
  loc_145FD69: Set var_94 = Me.txt
  loc_145FD6F: Call 0.Method_TopCtrl1_UnknownEvent_16C (var_96, var_88)
  loc_145FD7F: For var_9A =  To CByte((var_96 - 1)): CByte(0) = var_9A 'Byte
  loc_145FD95:   Set var_94 = Me.txt
  loc_145FD9B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_88), var_A0)
  loc_145FDCA:   Set var_C8 = Me.txt
  loc_145FDD0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_88), var_CC)
  loc_145FDD8:   var_CC.Text = CStr(Trim(CVar(var_A0.Text)))
  loc_145FDF5: Next var_9A 'Byte
  loc_145FE04: Set var_94 = Me.txt
  loc_145FE0A: Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_145FE33: If (Proc_183_19_E8DAFC(var_A0, "Description") = 0) Then
  loc_145FE3B:   Call Txt_GotFocus(0)
  loc_145FE40:   Exit Sub
  loc_145FE41: End If
  loc_145FE4A: Set var_94 = Me.txt
  loc_145FE50: Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_A0)
  loc_145FE79: If (Proc_183_19_E8DAFC(var_A0, "Type") = 0) Then
  loc_145FE81:   Call Txt_GotFocus(2)
  loc_145FE86:   Exit Sub
  loc_145FE87: End If
  loc_145FE90: Set var_94 = Me.txt
  loc_145FE96: Call 0.Method_TopCtrl1_UnknownEvent_160 (6, var_A0)
  loc_145FEBF: If (Proc_183_19_E8DAFC(var_A0, "Rate For 1 Pulse") = 0) Then
  loc_145FEC7:   Call Txt_GotFocus(6)
  loc_145FECC:   Exit Sub
  loc_145FECD: End If
  loc_145FED6: Set var_94 = Me.txt
  loc_145FEDC: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_A0)
  loc_145FF05: If (Proc_183_19_E8DAFC(var_A0, "Extension") = 0) Then
  loc_145FF0D:   Call Txt_GotFocus(1)
  loc_145FF12:   Exit Sub
  loc_145FF13: End If
  loc_145FF1F: Set var_94 = Me.txt
  loc_145FF25: Call 0.Method_TopCtrl1_UnknownEvent_160 (6, var_A0)
  loc_145FF49: If (CDbl(Val(var_A0.Text)) <= CDbl(0)) Then
  loc_145FF6D:   MsgBox("Rate For 1 pulse must be Greater than zero", &H40, "Information", var_110, var_130)
  loc_145FF82:   Call Txt_GotFocus(6)
  loc_145FF87:   Exit Sub
  loc_145FF88: End If
  loc_145FF94: Set var_94 = Me.txt
  loc_145FF9A: Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_A0)
  loc_145FFAA: var_B4 = CVar(var_A0.Text) 'String
  loc_145FFB0: var_C4 = Trim(var_B4)
  loc_145FFB8: var_140 = var_C4 'Variant
  loc_145FFD1: If (var_140 = "Department") Then
  loc_145FFDD:   Set var_94 = Me.txt
  loc_145FFE3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (5, var_A0)
  loc_146000C:   If (Proc_183_19_E8DAFC(var_A0, "Department Number") = 0) Then
  loc_1460014:     Call Txt_GotFocus(5)
  loc_1460019:     Exit Sub
  loc_146001A:   End If
  loc_146001D: Else
  loc_1460028:   If (var_140 = "Shop") Then
  loc_1460034:     Set var_94 = Me.txt
  loc_146003A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (4, var_A0)
  loc_1460063:     If (Proc_183_19_E8DAFC(var_A0, "Shop Description") = 0) Then
  loc_146006B:       Call Txt_GotFocus(4)
  loc_1460070:       Exit Sub
  loc_1460071:     End If
  loc_1460074:   Else
  loc_146007F:     If (var_140 = "Room") Then
  loc_146008B:       Set var_94 = Me.txt
  loc_1460091:       Call 0.Method_TopCtrl1_UnknownEvent_160 (3, var_A0)
  loc_14600BA:       If (Proc_183_19_E8DAFC(var_A0, "Room Number") = 0) Then
  loc_14600C2:         Call Txt_GotFocus(3)
  loc_14600C7:         Exit Sub
  loc_14600C8:       End If
  loc_14600C8:     End If
  loc_14600C8:   End If
  loc_14600C8: End If
  loc_14600CC: Set var_94 = Me.TopCtrl1
  loc_14600D2: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_A0)
  loc_14600EB: If (CStr() = "Add") Then
  loc_14600F4:   var_F0 = 0
  loc_1460113:   unk_47263A.Execute "Select IsNull(Max(Cast(SubString(Code,3,5) as Numeric)),0)+1 AS MyCode From TelExt", var_B4, -1
  loc_146011B:   var_94 = var_94.Fields
  loc_1460123:   var_F0 = var_A0.Item(var_A0)
  loc_146012B:   var_C8 = var_C8.Value
  loc_1460154:   var_110 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1460177:   var_C4 = Format(CStr(var_C4), "000")
  loc_146017F:   var_130 = (1 + var_C4)
  loc_1460184:   var_90 = CStr(var_130)
  loc_1460195: Else
  loc_146019B:   var_E0 = "Code"
  loc_14601B2:   var_A0 = Me.Fields.Item(var_E0)
  loc_14601C3:   var_90 = CStr(var_A0.Value)
  loc_14601D0: End If
  loc_14601D9: unk_47263A.BeginTrans var_144
  loc_14601E2: var_86 = CByte(1) 'Byte
  loc_14601EA: Set var_94 = Me.TopCtrl1
  loc_14601F0: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(1)
  loc_1460209: If (CStr(var_110) = "Add") Then
  loc_1460218:   Set var_94 = Me.txt
  loc_146021E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A0)
  loc_1460226:   var_D0 = var_A0.Text
  loc_1460237:   Set var_C8 = Me.txt
  loc_146023D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_CC)
  loc_1460259:   Proc_6_39_E7C810(var_C4, CVar(Val(var_CC.Text)))
  loc_146026A:   Set var_164 = Me.txt
  loc_1460270:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_168)
  loc_1460289:   Set var_1A0 = Me.txt
  loc_146028F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (3, var_1A4)
  loc_14602A8:   Set var_1DC = Me.txt
  loc_14602AE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (4, var_1E0)
  loc_14602C7:   Set var_228 = Me.txt
  loc_14602CD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (5, var_22C)
  loc_14602E6:   Set var_274 = Me.txt
  loc_14602EC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (6, var_278)
  loc_1460308:   Proc_6_39_E7C810(var_2AC, CVar(Val(var_278.Text)))
  loc_146031B:   Proc_6_7_F25D88(var_33C, Date)
  loc_1460334:   var_A4 = "Insert Into TelExt(CODE ,DESCRIPTION,EXTENSION ,TYPE,RoomNo,ShopNo,DepCode,PulseRate,U_Name,U_EntDt,U_AE,SITE_CODE,LOGSITE_CODE) Values('" & var_90
  loc_1460388:   var_204 = CVar(var_A4 & "','" & var_D0 & "',") & var_C4 & ",'" & CVar(var_168.Text) & "','" & CVar(var_1A4.Tag) & "','" & CVar(var_1E0.Text) 
  loc_14603E1:   var_38C = var_204 & "','" & CVar(var_22C.Tag) & "'," & var_2AC & ",'" & CVar(MemVar_1F920C8) & "'," & var_33C & ",'A','" & CVar(MemVar_1F92070) 
  loc_146040B:   unk_47263A.Execute CStr(var_38C & "','" & CVar(MemVar_1F92078) & "')"), var_410, -1
  loc_1460488: Else
  loc_1460494:   Set var_94 = Me.txt
  loc_146049A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A0, var_D0)
  loc_14604A2:   var_414 = var_A0.Text
  loc_14604B3:   Set var_C8 = Me.txt
  loc_14604B9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_CC)
  loc_14604D5:   Proc_6_39_E7C810(var_C4, CVar(Val(var_CC.Text)))
  loc_14604E6:   Set var_164 = Me.txt
  loc_14604EC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_168)
  loc_1460505:   Set var_1A0 = Me.txt
  loc_146050B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (3, var_1A4)
  loc_1460524:   Set var_1DC = Me.txt
  loc_146052A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (4, var_1E0)
  loc_1460543:   Set var_228 = Me.txt
  loc_1460549:   Call 0.Method_TopCtrl1_UnknownEvent_160 (5, var_22C)
  loc_1460562:   Set var_274 = Me.txt
  loc_1460568:   Call 0.Method_TopCtrl1_UnknownEvent_160 (6, var_278)
  loc_1460584:   Proc_6_39_E7C810(var_2AC, CVar(Val(var_278.Text)))
  loc_1460597:   Proc_6_7_F25D88(var_33C, Date)
  loc_14605C5:   var_110 = CVar("UPDATE TelExt SET CODE='" & var_90 & "' ,DESCRIPTION='" & var_D0 & "',EXTENSION=") 'String
  loc_14605CB:   var_130 = var_110 & var_C4 
  loc_146060D:   var_224 = var_130 & " ,TYPE='" & CVar(var_168.Text) & "',RoomNo='" & CVar(var_1A4.Tag) & "',ShopNo='" & CVar(var_1E0.Text) & "',DepCode='" 
  loc_1460653:   var_36C = var_224 & CVar(var_22C.Tag) & "',PulseRate=" & var_2AC & ",U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_33C & ",U_AE='E',SITE_CODE='" 
  loc_1460687:   unk_47263A.Execute CStr(var_36C & CVar(MemVar_1F92070) & "' WHERE Code='" & CVar(var_90) & "'"), var_410, -1
  loc_1460701: End If
  loc_1460707: unk_47263A.CommitTrans
  loc_1460710: var_86 = CByte(0) 'Byte
  loc_146071F: Me.Requery -1
  loc_146072F: Me.Requery -1
  loc_146073F: Me.Requery -1
  loc_146074F: Me.Requery -1
  loc_1460779: Me.Find "Code='" & var_90 & "'", 0, 1
  loc_1460789: Set var_94 = Me.TopCtrl1
  loc_146078F: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_E0)
  loc_14607A8: If (CStr(var_414) = "Add") Then
  loc_14607AB:   Call TopCtrl1_UnknownEvent_A()
  loc_14607B0:   Exit Sub
  loc_14607B1: End If
  loc_14607C6: var_A4 = "INI"
  loc_14607D4: Call Proc_93_38_E7816C(Proc_5_1_100CB50(var_A4, Me), global_84)
  loc_14607DF: Call Proc_93_39_EF5D18(var_C4)
  loc_14607E4: Call Proc_93_37_1178CC4()
  loc_14607E9: Call Proc_93_40_E841D8()
  loc_14607EE: Exit Sub
  loc_14607EF: ' Referenced from: 145FD50
  loc_14607F8: If (CInt(var_86) = 1) Then
  loc_1460801:   unk_47263A.RollbackTrans
  loc_1460806: End If
  loc_146080E: Set var_94 = Err()
  loc_1460814: Call 0.Method_arg_2C (var_A4)
  loc_146082D: MsgBox(CVar(var_A4), &H10, var_C4, var_110, var_130)
  loc_1460840: Exit Sub
End Sub

Private Sub DGDept_UnknownEvent_9 'F42944
  'Data Table: 472628
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4283B: Me.DGDept.Visible = False
  loc_F4285A: If (Me.RecordCount > 0) Then
  loc_F42897:   Set var_B4 = Me.txt
  loc_F4289D:   Call 0.Method_DGDept_UnknownEvent_90 (5, var_B8)
  loc_F428A5:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F428D8:   var_B0 = Me.Fields.Item("Code")
  loc_F428F5:   Set var_B4 = Me.txt
  loc_F428FB:   Call 0.Method_DGDept_UnknownEvent_90 (5, var_B8)
  loc_F42903:   var_B8.Tag = CStr(var_B0.Value)
  loc_F42919: End If
  loc_F42922: Set var_A8 = Me.txt
  loc_F42928: Call 0.Method_DGDept_UnknownEvent_90 (5)
  loc_F42930: var_B0.SetFocus
  loc_F4293C: Call Proc_93_39_EF5D18(var_B0)
  loc_F42941: Exit Sub
End Sub

Private Sub DGDept_UnknownEvent_1F 'E73E50
  'Data Table: 472628
  loc_E73E0E: Proc_6_153_E91194(Me.DGDept, arg_14)
  loc_E73E25: Set var_8C = Me.FGPoint
  loc_E73E3F: Proc_6_138_106D6F8(Me.DGDept, global_76, 5)
  loc_E73E4D: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 '117F054
  'Data Table: 472628
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_C4 As TextBox
  Dim var_A4 As String
  loc_117ECB6: If (Me.ListView.ListItems.Count > 0) Then
  loc_117ECEF:   If (Me.ListView.ListItems.Count > 0) Then
  loc_117ECF6:     Set var_A8 = Me.ListView
  loc_117ED40:     Set var_C0 = Me.txt
  loc_117ED46:     Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_117ED4E:     var_C4.Text = Me.ListView.SelectedItem.Text
  loc_117ED6E:   End If
  loc_117ED7A:   Me.FrmList.Visible = False
  loc_117ED94:   var_A4 = CStr(Me.ListView.Tag)
  loc_117EDAA:   Set var_9C = Me.txt
  loc_117EDB0:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(var_A4)), var_A8)
  loc_117EDB8:   var_A8.SetFocus
  loc_117EDCC: End If
  loc_117EDD8: Set var_88 = Me.txt
  loc_117EDDE: Call 0.Method_ListView_UnknownEvent_130 (2, var_9C, var_A4)
  loc_117EDE6: var_CC = var_9C.Text
  loc_117EDEE: var_D0 = var_A4
  loc_117EE19: If (var_D0 = CStr(global_56(0))) Then
  loc_117EE28:   Set var_88 = Me.txt
  loc_117EE2E:   Call 0.Method_ListView_UnknownEvent_130 (3, var_9C)
  loc_117EE36:   var_9C.Text = vbNullString
  loc_117EE4E:   Set var_88 = Me.txt
  loc_117EE54:   Call 0.Method_ListView_UnknownEvent_130 (4, var_9C)
  loc_117EE5C:   var_9C.Text = vbNullString
  loc_117EE74:   Set var_88 = Me.txt
  loc_117EE7A:   Call 0.Method_ListView_UnknownEvent_130 (3, var_9C)
  loc_117EE82:   var_9C.Tag = vbNullString
  loc_117EE9A:   Set var_88 = Me.txt
  loc_117EEA0:   Call 0.Method_ListView_UnknownEvent_130 (4, var_9C)
  loc_117EEA8:   var_9C.Tag = vbNullString
  loc_117EEB9:   Call Proc_93_36_1194F1C(5)
  loc_117EEC1: Else
  loc_117EEE2:   If (var_D0 = CStr(global_56(1))) Then
  loc_117EEF1:     Set var_88 = Me.txt
  loc_117EEF7:     Call 0.Method_ListView_UnknownEvent_130 (5, var_9C)
  loc_117EEFF:     var_9C.Text = vbNullString
  loc_117EF17:     Set var_88 = Me.txt
  loc_117EF1D:     Call 0.Method_ListView_UnknownEvent_130 (4, var_9C)
  loc_117EF25:     var_9C.Text = vbNullString
  loc_117EF3D:     Set var_88 = Me.txt
  loc_117EF43:     Call 0.Method_ListView_UnknownEvent_130 (5, var_9C)
  loc_117EF4B:     var_9C.Tag = vbNullString
  loc_117EF63:     Set var_88 = Me.txt
  loc_117EF69:     Call 0.Method_ListView_UnknownEvent_130 (4, var_9C)
  loc_117EF71:     var_9C.Tag = vbNullString
  loc_117EF82:     Call Proc_93_36_1194F1C(3)
  loc_117EF8A:   Else
  loc_117EFAB:     If (var_D0 = CStr(global_56(2))) Then
  loc_117EFBA:       Set var_88 = Me.txt
  loc_117EFC0:       Call 0.Method_ListView_UnknownEvent_130 (3, var_9C)
  loc_117EFC8:       var_9C.Text = vbNullString
  loc_117EFE0:       Set var_88 = Me.txt
  loc_117EFE6:       Call 0.Method_ListView_UnknownEvent_130 (5, var_9C)
  loc_117EFEE:       var_9C.Text = vbNullString
  loc_117F006:       Set var_88 = Me.txt
  loc_117F00C:       Call 0.Method_ListView_UnknownEvent_130 (3, var_9C)
  loc_117F014:       var_9C.Tag = vbNullString
  loc_117F02C:       Set var_88 = Me.txt
  loc_117F032:       Call 0.Method_ListView_UnknownEvent_130 (5, var_9C)
  loc_117F03A:       var_9C.Tag = vbNullString
  loc_117F04B:       Call Proc_93_36_1194F1C(4)
  loc_117F050:     End If
  loc_117F050:   End If
  loc_117F050: End If
  loc_117F050: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F42AA4
  'Data Table: 472628
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4299B: Me.DGRoom.Visible = False
  loc_F429BA: If (Me.RecordCount > 0) Then
  loc_F429F7:   Set var_B4 = Me.txt
  loc_F429FD:   Call 0.Method_DGRoom_UnknownEvent_90 (3, var_B8)
  loc_F42A05:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_F42A38:   var_B0 = Me.Fields.Item("Code")
  loc_F42A55:   Set var_B4 = Me.txt
  loc_F42A5B:   Call 0.Method_DGRoom_UnknownEvent_90 (3, var_B8)
  loc_F42A63:   var_B8.Tag = CStr(var_B0.Value)
  loc_F42A79: End If
  loc_F42A82: Set var_A8 = Me.txt
  loc_F42A88: Call 0.Method_DGRoom_UnknownEvent_90 (3)
  loc_F42A90: var_B0.SetFocus
  loc_F42A9C: Call Proc_93_39_EF5D18(var_B0)
  loc_F42AA1: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'E7400C
  'Data Table: 472628
  loc_E73FCA: Proc_6_153_E91194(Me.DGRoom, arg_14)
  loc_E73FE1: Set var_8C = Me.FGPoint
  loc_E73FFB: Proc_6_138_106D6F8(Me.DGRoom, global_72, 3)
  loc_E74009: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBF724
  'Data Table: 472628
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBF69A: On Error Goto loc_EBF6DF
  loc_EBF6A3: Me.MoveFirst
  loc_EBF6BD: var_8C = "Code='" & MyValue
  loc_EBF6CD: Me.Find var_8C & "'", 0, 1
  loc_EBF6D9: Call Proc_93_37_1178CC4(var_A0)
  loc_EBF6DE: Exit Sub
  loc_EBF6DF: ' Referenced from: EBF69A
  loc_EBF6E7: Set var_A4 = Err()
  loc_EBF6ED: Call 0.Method_arg_2C (var_8C)
  loc_EBF70E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBF721: Exit Sub
  loc_EBF722: Exit Sub
End Sub

Public Sub Proc_93_33_107EE04
  'Data Table: 472628
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_47263A As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_107EB9F: If (Me.RecordCount = 0) Then
  loc_107EBA2:   Proc_93_33_107EE04 = 
  loc_107EBA8: End If
  loc_107EBAC: Set var_90 = Me.TopCtrl1
  loc_107EBB2: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_107EBCB: If (CStr() = "Add") Then
  loc_107EC07:   Set var_90 = Me.txt
  loc_107EC0D:   Call 0.Method_Proc_93_33_107EE040 (0, var_A8, var_AC, "Select Count(*) From TelExt Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Description='", var_A0, -1)
  loc_107EC2E:   unk_47263A.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_107EC3E:    = var_D0.Item()
  loc_107EC46:    = var_E4.Value
  loc_107EC77:   If (var_A8.Text.Fields > 0) Then
  loc_107EC95:     var_A0 = "Duplicate Name"
  loc_107EC9B:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_107ECB4:     Set var_90 = Me.txt
  loc_107ECBA:     Call 0.Method_Proc_93_33_107EE040 (0)
  loc_107ECC2:     var_A8.SetFocus
  loc_107ECD3:     Proc_93_33_107EE04 = &HFF
  loc_107ECD9:   End If
  loc_107ECDC: Else
  loc_107ED15:   Set var_90 = Me.txt
  loc_107ED1B:   Call 0.Method_Proc_93_33_107EE040 (0, var_A8, var_AC, "Select Count(*) From TelExt Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Description='", var_A0, -1)
  loc_107ED4D:   unk_47263A.Execute var_D0 & var_AC & "' And Description<>'" & global_88 & "'", 0, var_E4
  loc_107ED5D:    = var_D0.Item(var_A8)
  loc_107ED65:    = var_E4.Value
  loc_107ED9A:   If (var_A8.Text.Fields > 0) Then
  loc_107EDBE:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_107EDD7:     Set var_90 = Me.txt
  loc_107EDDD:     Call 0.Method_Proc_93_33_107EE040 (0)
  loc_107EDE5:     var_A8.SetFocus
  loc_107EDF6:     Proc_93_33_107EE04 = &HFF
  loc_107EDFC:   End If
  loc_107EDFC: End If
  loc_107EDFC: Proc_93_33_107EE04 = var_A8
End Sub

Public Sub Proc_93_34_ECDAC0
  'Data Table: 472628
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_88 As TextBox
  Dim var_BC As TextBox
  loc_ECDA1C: Set var_88 = Me.DGHelp
  loc_ECDA2B: Set var_8C = Me.txt
  loc_ECDA31: Call 0.Method_Proc_93_34_ECDAC00 (0, var_90)
  loc_ECDA49: var_88.Left = CVar(var_90.Left)
  loc_ECDA61: Set var_B8 = Me.txt
  loc_ECDA67: Call 0.Method_Proc_93_34_ECDAC00 (0, var_BC)
  loc_ECDA80: Set var_8C = Me.txt
  loc_ECDA86: Call 0.Method_Proc_93_34_ECDAC00 (0, var_90)
  loc_ECDA9E: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_ECDAA6: var_88.Top = CVar(var_90.Left)
  loc_ECDAB8: Set var_88 = Nothing 
  loc_ECDABC: Exit Sub
End Sub

Public Sub Proc_93_35_F1A67C
  'Data Table: 472628
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_F1A59D: var_9C = Me.Fields.Item("Description")
  loc_F1A5B6: Set var_A4 = Me.txt
  loc_F1A5BC: Call 0.Method_Proc_93_35_F1A67C0 (0, var_A8)
  loc_F1A5C4: var_A8.MaxLength = var_9C.DefinedSize
  loc_F1A5E2: Set var_88 = Me.txt
  loc_F1A5E8: Call 0.Method_Proc_93_35_F1A67C0 (1, var_9C)
  loc_F1A5F0: var_9C.MaxLength = 5
  loc_F1A619: var_9C = Me.Fields.Item("ShopNo")
  loc_F1A632: Set var_A4 = Me.txt
  loc_F1A638: Call 0.Method_Proc_93_35_F1A67C0 (4, var_A8)
  loc_F1A640: var_A8.MaxLength = var_9C.DefinedSize
  loc_F1A65E: Set var_88 = Me.txt
  loc_F1A664: Call 0.Method_Proc_93_35_F1A67C0 (6, var_9C)
  loc_F1A66C: var_9C.MaxLength = 7
  loc_F1A678: Exit Sub
  loc_F1A679:  = arg_24FF
End Sub

Public Sub Proc_93_36_1194F1C(arg_C) '1194F1C
  'Data Table: 472628
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_94 As DataGrid
  Dim var_A0 As DataGrid
  loc_1194B23: Set var_88 = Me.txt
  loc_1194B29: Call 0.Method_Proc_93_36_1194F1C0 (5, var_8C)
  loc_1194B31: var_8C.Visible = False
  loc_1194B48: Set var_88 = Me.txt
  loc_1194B4E: Call 0.Method_Proc_93_36_1194F1C0 (3, var_8C)
  loc_1194B56: var_8C.Visible = False
  loc_1194B6D: Set var_88 = Me.txt
  loc_1194B73: Call 0.Method_Proc_93_36_1194F1C0 (4, var_8C)
  loc_1194B7B: var_8C.Visible = False
  loc_1194B92: Set var_88 = Me.lblNumber
  loc_1194B98: Call 0.Method_Proc_93_36_1194F1C0 (5, var_8C)
  loc_1194BA0: var_8C.Visible = False
  loc_1194BB7: Set var_88 = Me.lblNumber
  loc_1194BBD: Call 0.Method_Proc_93_36_1194F1C0 (3, var_8C)
  loc_1194BC5: var_8C.Visible = False
  loc_1194BDC: Set var_88 = Me.lblNumber
  loc_1194BE2: Call 0.Method_Proc_93_36_1194F1C0 (4, var_8C)
  loc_1194BEA: var_8C.Visible = False
  loc_1194C02: Set var_88 = Me.txt
  loc_1194C08: Call 0.Method_Proc_93_36_1194F1C0 (arg_C, var_8C)
  loc_1194C10: var_8C.Visible = True
  loc_1194C28: Set var_88 = Me.lblNumber
  loc_1194C2E: Call 0.Method_Proc_93_36_1194F1C0 (arg_C, var_8C)
  loc_1194C36: var_8C.Visible = True
  loc_1194C4E: Set var_94 = Me.txt
  loc_1194C54: Call 0.Method_Proc_93_36_1194F1C0 (2, var_98)
  loc_1194C6D: Set var_88 = Me.txt
  loc_1194C73: Call 0.Method_Proc_93_36_1194F1C0 (2, var_8C)
  loc_1194C97: Set var_A0 = Me.lblNumber
  loc_1194C9D: Call 0.Method_Proc_93_36_1194F1C0 (arg_C, var_A4)
  loc_1194CA5: var_A4.Left = ((var_8C.Left + var_98.Width) + CDbl(150))
  loc_1194CC5: Set var_88 = Me.txt
  loc_1194CCB: Call 0.Method_Proc_93_36_1194F1C0 (2, var_8C)
  loc_1194CE5: Set var_94 = Me.lblNumber
  loc_1194CEB: Call 0.Method_Proc_93_36_1194F1C0 (arg_C, var_98)
  loc_1194CF3: var_98.Top = var_8C.Top
  loc_1194D10: Set var_94 = Me.lblNumber
  loc_1194D16: Call 0.Method_Proc_93_36_1194F1C0 (arg_C, var_98)
  loc_1194D30: Set var_88 = Me.lblNumber
  loc_1194D36: Call 0.Method_Proc_93_36_1194F1C0 (arg_C, var_8C)
  loc_1194D5A: Set var_A0 = Me.txt
  loc_1194D60: Call 0.Method_Proc_93_36_1194F1C0 (arg_C, var_A4)
  loc_1194D68: var_A4.Left = ((var_8C.Left + var_98.Width) + CDbl(150))
  loc_1194D88: Set var_88 = Me.txt
  loc_1194D8E: Call 0.Method_Proc_93_36_1194F1C0 (2, var_8C)
  loc_1194DA8: Set var_94 = Me.txt
  loc_1194DAE: Call 0.Method_Proc_93_36_1194F1C0 (arg_C, var_98)
  loc_1194DB6: var_98.Top = var_8C.Top
  loc_1194DD2: Set var_88 = Me.txt
  loc_1194DD8: Call 0.Method_Proc_93_36_1194F1C0 (3, var_8C)
  loc_1194DF7: Me.DGRoom.Left = CVar(var_8C.Left)
  loc_1194E11: Set var_94 = Me.txt
  loc_1194E17: Call 0.Method_Proc_93_36_1194F1C0 (3, var_98)
  loc_1194E30: Set var_88 = Me.txt
  loc_1194E36: Call 0.Method_Proc_93_36_1194F1C0 (3, var_8C)
  loc_1194E4E: var_B4 = CVar(((var_8C.Top + var_98.Height) + CDbl(&H1E))) 'Single
  loc_1194E5D: Me.DGRoom.Top = CVar(var_8C.Left)
  loc_1194E7B: Set var_88 = Me.txt
  loc_1194E81: Call 0.Method_Proc_93_36_1194F1C0 (5, var_8C)
  loc_1194EA0: Me.DGDept.Left = CVar(var_8C.Left)
  loc_1194EBA: Set var_94 = Me.txt
  loc_1194EC0: Call 0.Method_Proc_93_36_1194F1C0 (5, var_98)
  loc_1194ED9: Set var_88 = Me.txt
  loc_1194EDF: Call 0.Method_Proc_93_36_1194F1C0 (5, var_8C)
  loc_1194EF7: var_B4 = CVar(((var_8C.Top + var_98.Height) + CDbl(&H1E))) 'Single
  loc_1194F06: Me.DGDept.Top = CVar(var_8C.Left)
  loc_1194F18: Exit Sub
End Sub

Public Sub Proc_93_37_1178CC4
  'Data Table: 472628
  Dim Me As Recordset15
  Dim var_98 As Recordset15
  Dim var_94 As Fields15
  Dim var_BC As Variant
  Dim var_C8 As String
  Dim var_C4 As TextBox
  Dim var_AC As Variant
  Dim var_8A As Integer
  loc_117890F: If (Me.RecordCount <= 0) Then
  loc_117891E:   Proc_6_21_E5EFAC(Me)
  loc_1178929: Else
  loc_117892F:   Set var_98 = global_84 
  loc_1178967:   Set var_C0 = Me.txt
  loc_117896D:   Call 0.Method_Proc_93_37_1178CC40 (0, var_C4)
  loc_1178975:   var_C4.Text = Proc_6_38_E68A98(CVar(var_98.Fields.Item("Description")))
  loc_11789C0:   Set var_C0 = Me.txt
  loc_11789C6:   Call 0.Method_Proc_93_37_1178CC40 (0, var_C4)
  loc_11789CE:   var_C4.Tag = CStr(var_98.Fields.Item("Code").Value)
  loc_1178A03:   var_BC = CVar(var_98.Fields.Item("Extension")) 'Address
  loc_1178A0A:   Proc_6_39_E7C810(var_D8)
  loc_1178A1F:   Set var_C0 = Me.txt
  loc_1178A25:   Call 0.Method_Proc_93_37_1178CC40 (1, var_C4)
  loc_1178A2D:   var_C4.Text = CStr(var_D8)
  loc_1178A5C:   var_AC = var_98.Fields.Item("Type")
  loc_1178A79:   Set var_C0 = Me.txt
  loc_1178A7F:   Call 0.Method_Proc_93_37_1178CC40 (2, var_C4)
  loc_1178A87:   var_C4.Text = Proc_6_38_E68A98(CVar(var_AC))
  loc_1178AA7:   Set var_94 = Me.txt
  loc_1178AAD:   Call 0.Method_Proc_93_37_1178CC40 (2, var_AC)
  loc_1178AB5:   var_C8 = var_AC.Text
  loc_1178ACC:   If (var_C8 = "Department") Then
  loc_1178AD1:     var_8A = 5
  loc_1178AD7:   Else
  loc_1178AE3:     Set var_94 = Me.txt
  loc_1178AE9:     Call 0.Method_Proc_93_37_1178CC40 (2, var_AC, var_C8)
  loc_1178AF1:     var_8A = var_AC.Text
  loc_1178B08:     If (var_C8 = "Room") Then
  loc_1178B0D:       var_8A = 3
  loc_1178B13:     Else
  loc_1178B1F:       Set var_94 = Me.txt
  loc_1178B25:       Call 0.Method_Proc_93_37_1178CC40 (2, var_AC, var_C8)
  loc_1178B2D:       var_8A = var_AC.Text
  loc_1178B44:       If (var_C8 = "Shop") Then
  loc_1178B49:         var_8A = 4
  loc_1178B4C:       End If
  loc_1178B4C:     End If
  loc_1178B4C:   End If
  loc_1178B52:   Call Proc_93_36_1194F1C(var_8A)
  loc_1178B8B:   Set var_C0 = Me.txt
  loc_1178B91:   Call 0.Method_Proc_93_37_1178CC40 (3, var_C4)
  loc_1178B99:   var_C4.Text = Proc_6_38_E68A98(CVar(var_98.Fields.Item("RName")), var_8A)
  loc_1178BE1:   Set var_C0 = Me.txt
  loc_1178BE7:   Call 0.Method_Proc_93_37_1178CC40 (5, var_C4)
  loc_1178BEF:   var_C4.Text = Proc_6_38_E68A98(CVar(var_98.Fields.Item("Dname")))
  loc_1178C37:   Set var_C0 = Me.txt
  loc_1178C3D:   Call 0.Method_Proc_93_37_1178CC40 (4, var_C4)
  loc_1178C45:   var_C4.Text = Proc_6_38_E68A98(CVar(var_98.Fields.Item("ShopNo")))
  loc_1178C7F:   Proc_6_39_E7C810(var_D8, CVar(var_98.Fields.Item("PulseRate")))
  loc_1178C94:   Set var_C0 = Me.txt
  loc_1178C9A:   Call 0.Method_Proc_93_37_1178CC40 (6, var_C4)
  loc_1178CA2:   var_C4.Text = CStr(var_D8)
  loc_1178CBC:   Set var_98 = Nothing 
  loc_1178CC0: End If
  loc_1178CC0: Exit Sub
End Sub

Public Sub Proc_93_38_E7816C(arg_C) 'E7816C
  'Data Table: 472628
  Dim var_98 As TextBox
  loc_E7811A: Set var_8C = Me.txt
  loc_E78120: Call 0.Method_Proc_93_38_E7816CC (var_8E, var_86)
  loc_E78130: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78146:   Set var_8C = Me.txt
  loc_E7814C:   Call 0.Method_Proc_93_38_E7816C0 (CInt(var_86), var_98)
  loc_E78154:   var_98.Enabled = arg_C
  loc_E78163: Next var_92 'Byte
  loc_E78169: Exit Sub
End Sub

Public Sub Proc_93_39_EF5D18
  'Data Table: 472628
  loc_EF5C5C: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_EF5C6E:   Me.DGRoom.Visible = False
  loc_EF5C76: End If
  loc_EF5C92: If (CBool(Me.DGDept.Visible) = &HFF) Then
  loc_EF5CA4:   Me.DGDept.Visible = False
  loc_EF5CAC: End If
  loc_EF5CC7: If (Me.FrmList.Visible = &HFF) Then
  loc_EF5CD6:   Me.FrmList.Visible = False
  loc_EF5CDE: End If
  loc_EF5CFA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF5D0C:   Me.FGPoint.Visible = False
  loc_EF5D14: End If
  loc_EF5D14: Exit Sub
End Sub

Public Sub Proc_93_40_E841D8
  'Data Table: 472628
  Dim var_8C As TextBox
  loc_E84173: Set var_88 = Me.txt
  loc_E84179: Call 0.Method_Proc_93_40_E841D80 (3, var_8C)
  loc_E84181: var_8C.Enabled = False
  loc_E84198: Set var_88 = Me.txt
  loc_E8419E: Call 0.Method_Proc_93_40_E841D80 (4, var_8C)
  loc_E841A6: var_8C.Enabled = False
  loc_E841BD: Set var_88 = Me.txt
  loc_E841C3: Call 0.Method_Proc_93_40_E841D80 (5, var_8C)
  loc_E841CB: var_8C.Enabled = False
  loc_E841D7: Exit Sub
End Sub
