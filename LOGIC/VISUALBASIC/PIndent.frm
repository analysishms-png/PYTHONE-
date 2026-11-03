VERSION 5.00
Begin VB.Form PIndent
  Caption = "Indent"
  BackColor = &HFFC0C0&
  ForeColor = &H8000000A&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HFFFFC0&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11880
  ClientHeight = 6435
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11880
    Height = 450
    TabIndex = 28
  End
  Begin TextBox Txt
    Index = 7
    ForeColor = &HC00000&
    Left = 9855
    Top = 7260
    Width = 1260
    Height = 285
    TabIndex = 23
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin DataGrid DGDepart
    Left = 13545
    Top = 2160
    Width = 5055
    Height = 3810
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 21
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC00000&
    Left = 2625
    Top = 1275
    Width = 3750
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
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
    Index = 5
    ForeColor = &HC00000&
    Left = 12165
    Top = 7260
    Width = 1215
    Height = 285
    TabIndex = 17
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin DataGrid DGItem
    Left = 13425
    Top = 1455
    Width = 4230
    Height = 4065
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 390
    Top = 1890
    Width = 1485
    Height = 340
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
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
    Left = 15900
    Top = 6045
    Width = 2505
    Height = 1935
    Visible = 0   'False
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 240
      Top = 240
      Width = 1575
      Height = 1335
      TabStop = 0   'False
      TabIndex = 12
    End
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 1110
    Top = 7260
    Width = 5925
    Height = 285
    TabIndex = 3
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
    Index = 1
    ForeColor = &HC00000&
    Left = 5340
    Top = 960
    Width = 1020
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
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
    Left = 7275
    Top = 960
    Width = 1215
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
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 1995
    Top = 960
    Width = 1965
    Height = 285
    Text = "Indent Entry"
    TabIndex = 0
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
  Begin MSHFlexGrid FGrid
    Left = 45
    Top = 1635
    Width = 13020
    Height = 5235
    TabIndex = 2
  End
  Begin TextBox Txt
    Index = 3
    Left = 12480
    Top = 480
    Width = 2400
    Height = 240
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin MSFlexGrid FGPoint
    Left = 14160
    Top = 8145
    Width = 1740
    Height = 1080
    Visible = 0   'False
    TabIndex = 19
  End
  Begin MSHFlexGrid FGCat
    Left = 240
    Top = 7830
    Width = 9150
    Height = 1275
    Visible = 0   'False
    TabIndex = 22
  End
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HFF&
    Left = 0
    Top = 6900
    Width = 2745
    Height = 345
    TabIndex = 29
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 14.25
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
    Left = 5550
    Top = 7650
    Width = 2790
    Height = 285
    TabIndex = 27
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
    Left = 2175
    Top = 7650
    Width = 2880
    Height = 255
    TabIndex = 26
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
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 25
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
    Caption = "Total"
    Index = 3
    ForeColor = &HC00000&
    Left = 9270
    Top = 7260
    Width = 480
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
  End
  Begin Label LblName
    Caption = "Department"
    Index = 0
    ForeColor = &HC00000&
    Left = 1440
    Top = 1290
    Width = 1110
    Height = 240
    TabIndex = 20
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
    Caption = "Total Amount"
    Index = 6
    ForeColor = &HC00000&
    Left = 10245
    Top = 8295
    Width = 1275
    Height = 240
    Visible = 0   'False
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 10800
    Top = 480
    Width = 570
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
    Caption = "DOC ID"
    Index = 5
    ForeColor = &HFF&
    Left = 11640
    Top = 525
    Width = 615
    Height = 240
    Visible = 0   'False
    TabIndex = 15
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
  Begin Label Label1
    Caption = "Remarks"
    Index = 8
    ForeColor = &HC00000&
    Left = 240
    Top = 7260
    Width = 825
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
    Caption = "Indent No."
    Index = 1
    ForeColor = &HC00000&
    Left = 4320
    Top = 975
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
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 6780
    Top = 960
    Width = 435
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
    Caption = "Indent Type"
    Index = 0
    ForeColor = &HC00000&
    Left = 825
    Top = 960
    Width = 1125
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

Attribute VB_Name = "PIndent"

Private global_84 As Integer
Private global_86 As Integer
Private global_72 As Double
Private global_64 As Byte

Private Sub DGDepart_UnknownEvent_9 'F435A4
  'Data Table: 4E71B0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4349B: Me.DGDepart.Visible = False
  loc_F434BA: If (Me.RecordCount > 0) Then
  loc_F434F9:   Set var_B4 = Me.Txt
  loc_F434FF:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(6), var_B8)
  loc_F43507:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4353A:   var_B0 = Me.Fields.Item("Code")
  loc_F43559:   Set var_B4 = Me.Txt
  loc_F4355F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(6), var_B8)
  loc_F43567:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4357D: End If
  loc_F43588: Set var_A8 = Me.Txt
  loc_F4358E: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(6))
  loc_F43596: var_B0.SetFocus
  loc_F435A2: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_1F 'E6F294
  'Data Table: 4E71B0
  loc_E6F252: Proc_6_153_E91194(Me.DGDepart, arg_14)
  loc_E6F283: Proc_6_138_106D6F8(Me.DGDepart, global_68, 0)
  loc_E6F291: Exit Sub
  loc_E6F292: Get , , arg_18 'get Me.FGPoint bytes
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1199CC8
  'Data Table: 4E71B0
  Dim var_A2 As Integer
  Dim Me As Variant
  Dim var_9C As Variant
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  Dim var_B0 As String
  Dim var_10C As String
  Dim unk_4E71CE As Connection15
  Dim var_88 As Recordset15
  Dim var_8A As Integer
  Dim var_98 As Variant
  Dim var_108 As Variant
  loc_11998F2: Set var_98 = Me.Txt
  loc_11998F8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1199906: Proc_6_74_E226B0(var_9C)
  loc_1199912: Call Proc_88_53_EB9A14(var_9C)
  loc_119991A: var_A2 = Index
  loc_1199925: If (var_A2 = CInt(6)) Then
  loc_119993F:   If (Me.RecordCount > 0) Then
  loc_119994D:     Set var_9C = Me.FGPoint
  loc_1199965:     Proc_6_137_1193554(Me.DGDepart, global_68, Index)
  loc_1199973:   End If
  loc_11999C1:   Set var_98 = Me.Txt
  loc_11999C7:   Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_B0)
  loc_11999CF:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_11999E7:   If (var_9C Or (var_B0 = vbNullString)) Then
  loc_11999EA:     Exit Sub
  loc_11999EB:   End If
  loc_11999F8:   Set var_98 = Me.Txt
  loc_11999FE:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_1199A06:   var_B0 = var_9C.Text
  loc_1199A0E:   var_E4 = CVar(var_B0) 'String
  loc_1199A53:   If CBool(var_E4 <> Me.Fields.Item("Name").Value) Then
  loc_1199A5C:     Me.MoveFirst
  loc_1199A81:     Set var_98 = Me.Txt
  loc_1199A87:     Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_B0, "Name=")
  loc_1199A8F:     0 = var_9C.Text
  loc_1199A97:     var_D4 = CVar(var_B0) 'String
  loc_1199A9D:     Proc_6_17_EAA2B0(var_E4, var_D4, 1)
  loc_1199AB3:     Me.Find CStr(var_108 & var_E4), var_A2, 
  loc_1199ACB:   End If
  loc_1199ACE: Else
  loc_1199AD6:   If (var_A2 = CInt(0)) Then
  loc_1199AFB:     var_10C = "SELECT V_TYPE,DESCRIPTION FROM Voucher_Type WHERE Site_Code='" & MemVar_1F92070 & "' and logsite_code='" & MemVar_1F92078
  loc_1199B0B:     unk_4E71CE.Execute var_10C & "' and NCAT IN ('PIND') ORDER BY DESCRIPTION", var_D4, -1
  loc_1199B16:     Set var_88 = var_98
  loc_1199B2A:     ' Referenced from:   1199C05
  loc_1199B39:     If Not(var_88.EOF) Then
  loc_1199B3F:       var_8A = var_8A
  loc_1199B4E:       ReDim Preserve var_90(0 To CLng(var_8A))
  loc_1199B8D:       var_90(CLng(var_8A)) = CStr(var_88.Fields.Item("Description").Value)
  loc_1199BA7:       ReDim Preserve var_94(0 To CLng(var_8A))
  loc_1199BE6:       var_94(CLng(var_8A)) = CStr(var_88.Fields.Item("V_Type").Value)
  loc_1199BFA:       var_8A = (var_8A + 1)
  loc_1199C00:       var_88.MoveNext
  loc_1199C05:       GoTo loc_1199B2A
  loc_1199C08:     End If
  loc_1199C1B:     global_108 = CByte(var_88.RecordCount)
  loc_1199C3B:     var_108 = var_94
  loc_1199C73:     Set global_104 = Proc_6_109_F51CE4(Me.ListView, Me.Txt, CInt(0), var_90, CInt(var_88.RecordCount))
  loc_1199C97:     Me.ListView.Tag = CVar(CStr(Index))
  loc_1199CA5:   Else
  loc_1199CAD:     If (var_A2 = CInt(2)) Then
  loc_1199CB8:       var_B0 = "{Home}+{End}"
  loc_1199CBE:       Proc_303_0_FB9B68(CStr(var_88.Fields.Item("V_Type").Value), 0, var_108, global_108)
  loc_1199CC6:     End If
  loc_1199CC6:   End If
  loc_1199CC6: End If
  loc_1199CC6: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '114EA44
  'Data Table: 4E71B0
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_B4 As TextBox
  Dim Shift As Integer
  Dim Me As Recordset15
  Dim var_8C As Frame
  Dim var_98 As DataGrid
  loc_114E6D2: If (CLng(Shift) = &H1B) Then
  loc_114E6D5:   Call Proc_88_53_EB9A14()
  loc_114E6DA:   Exit Sub
  loc_114E6DB: End If
  loc_114E6DE: var_86 = KeyCode
  loc_114E6E9: If (var_86 = CInt(0)) Then
  loc_114E6F8:   If (CInt(global_108) > 0) Then
  loc_114E705:     If (CLng(Shift) <> &H1B) Then
  loc_114E72A:       Set var_8C = Me.Txt
  loc_114E730:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_114E738:       var_94 = var_90.Left
  loc_114E74A:       Set var_98 = Me.Txt
  loc_114E750:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_114E758:       var_A0 = var_9C.Top
  loc_114E76A:       Set var_A4 = Me.Txt
  loc_114E770:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_114E778:       var_AC = var_A8.Height
  loc_114E78A:       Set var_B0 = Me.Txt
  loc_114E790:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_114E798:       var_B8 = var_B4.Width
  loc_114E7EA:       Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_114E80E:     End If
  loc_114E811:   Else
  loc_114E813:     Shift = 0
  loc_114E816:   End If
  loc_114E819: Else
  loc_114E821:   If (var_86 = CInt(6)) Then
  loc_114E87E:     Proc_6_69_134A198(Me.DGDepart, Me.Txt, CInt(6), global_68, Shift, 0, 1, Nothing)
  loc_114E89D:     var_94 = Me.RecordCount
  loc_114E8ED:     If ((var_94 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_114E913:       Proc_6_138_106D6F8(Me.DGDepart, global_68, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_114E921:     End If
  loc_114E921:   End If
  loc_114E921: End If
  loc_114E977: If (((Me.FrmList.Visible = 0) And (CBool(Me.DGItem.Visible) = 0)) And (CBool(Me.DGDepart.Visible) = 0)) Then
  loc_114E98F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_114E998:     Proc_6_75_E527CC(Shift, arg_14, Shift, CInt(var_94))
  loc_114E99D:   End If
  loc_114E9A1:   Set var_8C = Me.TopCtrl1
  loc_114E9A7:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(CInt((var_A0 + var_AC)))
  loc_114E9C9:   If ((CStr(CInt(var_B8)) = "Add") And (KeyCode <> CInt(0))) Then
  loc_114E9E1:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_114E9EA:       Proc_6_76_E52838(Shift, arg_14)
  loc_114E9EF:     End If
  loc_114E9EF:   End If
  loc_114E9F3:   Set var_8C = Me.TopCtrl1
  loc_114E9F9:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005((CInt(global_108) * 230))
  loc_114EA1B:   If ((CStr(var_86) = "Edit") And (KeyCode <> CInt(2))) Then
  loc_114EA33:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_114EA3C:       Proc_6_76_E52838(Shift)
  loc_114EA41:     End If
  loc_114EA41:   End If
  loc_114EA41: End If
  loc_114EA41: Exit Sub
  loc_114EA42: Set arg_3868 = arg_14
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F69C14
  'Data Table: 4E71B0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F69AE3: Proc_6_58_E054C0(arg_10)
  loc_F69AEE: Proc_6_133_E7EF78(var_94)
  loc_F69B00: var_96 = KeyAscii
  loc_F69B0B: If (var_96 = CInt(1)) Then
  loc_F69B18:   Set var_9C = Me.Txt
  loc_F69B1E:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_F69B39:   Proc_6_42_129A86C(var_A0, CInt(var_94), 8)
  loc_F69B48: Else
  loc_F69B50:   If (var_96 = CInt(0)) Then
  loc_F69B5F:     If (CInt(global_108) <= 0) Then
  loc_F69B64:       arg_10 = 0
  loc_F69B67:     End If
  loc_F69B6A:   Else
  loc_F69B72:     If (var_96 = CInt(6)) Then
  loc_F69B91:       If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_F69BBE:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_F69BF0:         Proc_6_138_106D6F8(Me.DGDepart, global_68, KeyAscii, Me.FGPoint, 0)
  loc_F69C0A:         If (CInt(global_108) <= 0) Then
  loc_F69C0F:           arg_10 = 0
  loc_F69C12:         End If
  loc_F69C12:       End If
  loc_F69C12:     End If
  loc_F69C12:   End If
  loc_F69C12: End If
  loc_F69C12: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EFE500
  'Data Table: 4E71B0
  Dim var_86 As Integer
  loc_EFE42F: var_86 = KeyCode
  loc_EFE43A: If (var_86 = CInt(6)) Then
  loc_EFE459:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EFE46D:     var_A4 = "Name"
  loc_EFE491:     Proc_6_68_129FB34(Me.DGDepart, Me.Txt, KeyCode, global_68)
  loc_EFE4A4:   End If
  loc_EFE4A7: Else
  loc_EFE4AF:   If (var_86 = CInt(0)) Then
  loc_EFE4BE:     If (CInt(global_108) > 0) Then
  loc_EFE4ED:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_EFE4FD:     End If
  loc_EFE4FD:   End If
  loc_EFE4FD: End If
  loc_EFE4FD: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4724C
  'Data Table: 4E71B0
  loc_E4722A: Set var_88 = Me.Txt
  loc_E47230: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4723E: Proc_6_73_E22704(var_8C)
  loc_E4724A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1341CA4
  'Data Table: 4E71B0
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_C4 As Variant
  Dim var_E8 As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_144 As TextBox
  Dim var_168 As Variant
  Dim var_170 As TextBox
  Dim var_194 As Variant
  Dim var_140 As TextBox
  loc_1341503: var_86 = Cancel
  loc_134150E: If (var_86 = CInt(6)) Then
  loc_134151C:   Set var_8C = Me.Txt
  loc_1341522:   Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_134152A:   var_98 = "Department"
  loc_134154B:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_1341559:     Set var_8C = Me.Txt
  loc_134155F:     Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_1341567:     var_90.SetFocus
  loc_1341575:     arg_10 = &HFF
  loc_1341578:     Exit Sub
  loc_1341579:   End If
  loc_1341599:   var_9E = Me.EOF
  loc_13415C7:   Set var_8C = Me.Txt
  loc_13415CD:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_13415D5:   ((Me.RecordCount = 0) Or ((var_9E = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_13415ED:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_13415FD:     Set var_8C = Me.Txt
  loc_1341603:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134160B:     var_90.Text = vbNullString
  loc_1341624:     Set var_8C = Me.Txt
  loc_134162A:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1341632:     var_90.Tag = vbNullString
  loc_1341641:   Else
  loc_134167C:     Set var_94 = Me.Txt
  loc_1341682:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_134168A:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13416BD:     var_90 = Me.Fields.Item("Code")
  loc_13416DB:     Set var_94 = Me.Txt
  loc_13416E1:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13416E9:     var_B4.Tag = CStr(var_90.Value)
  loc_13416FF:   End If
  loc_1341702: Else
  loc_134170A:   If (var_86 = CInt(0)) Then
  loc_1341718:     Set var_8C = Me.Txt
  loc_134171E:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1341754:     If ((Proc_6_27_EA565C(var_90, "Indent Type") = 0) Or (CInt(global_108) <= 0)) Then
  loc_1341761:       Set var_8C = Me.Txt
  loc_1341767:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134176F:       var_90.SetFocus
  loc_134177D:       arg_10 = &HFF
  loc_1341780:       Exit Sub
  loc_1341781:     End If
  loc_1341785:     Set var_8C = Me.TopCtrl1
  loc_134178B:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_10)
  loc_13417A4:     If (CStr(var_86) = "Add") Then
  loc_13417C5:       var_98 = Me.ListView.SelectedItem.Text
  loc_13417D7:       Set var_94 = Me.Txt
  loc_13417DD:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13417E5:       var_B4.Text = var_98
  loc_1341815:       Set var_90 = Me.ListView.SelectedItem
  loc_134181B:       1 = var_90.SubItems
  loc_134182D:       Set var_94 = Me.Txt
  loc_1341833:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_134183B:       var_B4.Tag = var_98
  loc_1341859:       Call Proc_88_54_135DA5C(&HFF, var_98)
  loc_134186C:       Set var_8C = Me.Txt
  loc_1341872:       Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_134187A:       var_90.Text = var_98
  loc_1341889:     End If
  loc_134188C:   Else
  loc_1341894:     If (var_86 = CInt(1)) Then
  loc_13418A2:       Set var_8C = Me.Txt
  loc_13418A8:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_13418D1:       If (Proc_6_27_EA565C(var_90, "Indent Number") = 0) Then
  loc_13418DE:         Set var_8C = Me.Txt
  loc_13418E4:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13418EC:         var_90.SetFocus
  loc_13418FA:         arg_10 = &HFF
  loc_13418FD:         Exit Sub
  loc_13418FE:       End If
  loc_1341909:       Set var_8C = Me.Txt
  loc_134190F:       Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_1341921:       Set var_94 = Me.Txt
  loc_1341927:       Call 0.Method_Txt_Validate0 (Cancel, var_B4, var_D8)
  loc_134192F:       arg_10 = var_B4.Text
  loc_134194B:       var_98 = CStr(Right(CVar(var_90), 8))
  loc_1341972:       If (CDbl(Val(var_98)) <> CDbl(var_D8)) Then
  loc_134197D:         Call Proc_88_54_135DA5C(0, var_98)
  loc_1341990:         Set var_8C = Me.Txt
  loc_1341996:         Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_134199E:         var_90.Text = var_98
  loc_13419AD:       End If
  loc_13419B1:       Set var_8C = Me.TopCtrl1
  loc_13419B7:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_98)
  loc_13419D0:       If (CStr() = "Add") Then
  loc_13419FD:         Set var_8C = Me.Txt
  loc_1341A03:         Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_D8)
  loc_1341A0B:         5 = var_90.Tag
  loc_1341A18:         var_C4 = Space((CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2)) - Len(var_D8)))
  loc_1341A20:         var_E8 = ( + CVar(var_90))
  loc_1341A32:         Set var_94 = Me.Txt
  loc_1341A38:         Call 0.Method_Txt_Validate0 (CInt(0), var_B4)
  loc_1341A4B:         var_10C = (var_E8 + CVar(var_B4.Tag))
  loc_1341A5F:         var_11C = Space((5 - Len(global_116)))
  loc_1341A67:         var_12C = (var_10C + var_11C)
  loc_1341A74:         var_13C = (var_12C + CVar(global_116))
  loc_1341A8B:         Set var_140 = Me.Txt
  loc_1341A91:         Call 0.Method_Txt_Validate0 (CInt(1), var_144, var_148)
  loc_1341A99:         8 = var_144.Text
  loc_1341AA6:         var_158 = Space((var_13C - Len(var_148)))
  loc_1341AAE:         var_168 = ( + var_158)
  loc_1341AC0:         Set var_16C = Me.Txt
  loc_1341AC6:         Call 0.Method_Txt_Validate0 (CInt(1), var_170)
  loc_1341AD9:         var_194 = (var_168 + CVar(var_170.Text))
  loc_1341B32:         Set var_8C = Me.Txt
  loc_1341B38:         Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_1341B40:         var_90.Text = CStr(var_194)
  loc_1341B4C:       End If
  loc_1341B4F:       Call Proc_88_58_F91634(var_9E)
  loc_1341B5A:       If (var_9E = &HFF) Then
  loc_1341B5F:         arg_10 = &HFF
  loc_1341B62:         Exit Sub
  loc_1341B63:       End If
  loc_1341B66:     Else
  loc_1341B6E:       If (var_86 = CInt(2)) Then
  loc_1341B7E:         Set var_8C = Me.Txt
  loc_1341B84:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1341BBC:         If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_1341BD1:           Set var_8C = Me.Txt
  loc_1341BD7:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1341BDF:           var_90.Text = CStr(MemVar_1F920EC)
  loc_1341BF1:         Else
  loc_1341BFB:           Set var_8C = Me.Txt
  loc_1341C01:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1341C21:           Set var_B4 = Me.Txt
  loc_1341C27:           Call 0.Method_Txt_Validate0 (Cancel, var_140)
  loc_1341C2F:           var_140.Text = Proc_6_33_1512840(var_90)
  loc_1341C42:         End If
  loc_1341C46:         Set var_8C = Me.TopCtrl1
  loc_1341C4C:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_10)
  loc_1341C54:         var_98 = CStr()
  loc_1341C65:         If (var_98 = "Add") Then
  loc_1341C70:           Call Proc_88_54_135DA5C(&HFF)
  loc_1341C83:           Set var_8C = Me.Txt
  loc_1341C89:           Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_1341C91:           var_90.Text = var_98
  loc_1341CA0:         End If
  loc_1341CA0:       End If
  loc_1341CA0:     End If
  loc_1341CA0:   End If
  loc_1341CA0: End If
  loc_1341CA0: Exit Sub
End Sub

Private Sub Form_Load() '104858C
  'Data Table: 4E71B0
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_BC As Variant
  Dim Me As Recordset15
  loc_1048320: On Error Goto loc_1048585
  loc_1048336: Me.DGItem.Top = CVar(CDbl(2235))
  loc_104834B: Set var_A8 = Me.DGItem
  loc_1048351: var_A8.Left = CVar(CDbl(3685))
  loc_104835F: global_124 = MemVar_1F921A8
  loc_104837F: Me.var_A8.CursorLocation = 3
  loc_10483A2: var_AC = "Select I.Code,I.Name as Name,I.Unit,I.PurchRate as Rate,I.LPurRate,I.ConvRatio as ConvFactor,I.IssueUnit as WtUnit,IC.taxStru From ItemMast I inner Join ItemCatMast IC on I.ItemCatCode=IC.Code Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_10483B3: Me.Open CVar(var_AC & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.Name"), CVar(MemVar_1F92044), 3
  loc_10483C7: CVarUnk
  loc_10483CC: VerifyVarObj
  loc_10483D2: Set var_A8 = Me.DGItem
  loc_10483D8: LateIdStAd
  loc_1048402: Me.DGItem.CursorLocation = 3
  loc_104842C: var_BC = CVar("Select  Code,Name,Code as DCOde,RestType From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and RestType='Store' and RestType<>'FOM' and OutletYn='N' Order by Name") 'String
  loc_104844A: CVarUnk
  loc_104844F: VerifyVarObj
  loc_104845B: LateIdStAd
  loc_1048485: Me.DGDepart.CursorLocation = 3
  loc_10484A8: var_AC = "Select DocID as SearchCode,Remarks,I.Site_Code,I.LogSite_Code From Indent I Inner join Voucher_Type V on (I.Vtype=V.V_Type and I.LogSite_Code=V.LogSite_Code) Where  V.LOGSITE_CODE='" & MemVar_1F92078
  loc_10484B9: r_BC, CVar(MemVar_1F92044), 3 CVar(var_AC & "' and V.NCat='PIND' Order by DocID"), CVar(MemVar_1F92044), 3
  loc_10484C4: Call Proc_88_59_E77E6C(1, -1, Me.DGDepart, New, 1)
  loc_10484EC: Call Proc_88_51_F338EC(Proc_5_1_100CB50("INI", Me, New, -1), Me, New)
  loc_10484F7: Call Proc_88_47_131EB18(1)
  loc_10484FC: Call Proc_88_52_150EA74(-1)
  loc_1048510: Me.LblUser.Left = CDbl(13500)
  loc_1048527: Me.LblUser.Top = CDbl(7800)
  loc_104853E: Me.LblLDt.Top = CDbl(8160)
  loc_1048555: Me.LblLDt.Left = CDbl(13500)
  loc_1048564: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_104857C: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1048584: Exit Sub
  loc_1048585: ' Referenced from: 1048320
  loc_1048585: Proc_6_60_E62BC4()
  loc_104858A: Exit Sub
End Sub

Private Sub Form_Resize() 'ED1318
  'Data Table: 4E71B0
  Dim var_8C As Label
  loc_ED1276: Call 0.Method_arg_50 (var_88)
  loc_ED1288: Me.LblFormCaption.Caption = var_88
  loc_ED12A1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED12AD: Set var_A0 = Me.TopCtrl1
  loc_ED12B3: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010006()
  loc_ED12C0: Set var_8C = Me.TopCtrl1
  loc_ED12C6: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004()
  loc_ED12E0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED12FB: Call 0.Method_arg_100 (var_B8)
  loc_ED130D: Me.LblFormCaption.Width = var_B8
  loc_ED1315: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E512B4
  'Data Table: 4E71B0
  loc_E51287: Set global_56 = Nothing
  loc_E51299: Set global_52 = Nothing
  loc_E512AB: Set global_68 = Nothing
  loc_E512B2: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E00E60
  'Data Table: 4E71B0
  loc_E00E59: Call Form_Unload(&HFF)
  loc_E00E5E: Exit Sub
End Sub

Private Sub Form_Activate() 'E3DDB4
  'Data Table: 4E71B0
  loc_E3DD90: Set var_88 = Me.TopCtrl1
  loc_E3DD96: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030000()
  loc_E3DDAB: If (CLng(CInt()) = &H2D) Then
  loc_E3DDAE:   Call TopCtrl1_UnknownEvent_15()
  loc_E3DDB3: End If
  loc_E3DDB3: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2AA88
  'Data Table: 4E71B0
  loc_E2AA60: On Error Goto loc_E2AA80
  loc_E2AA77: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2AA7F: Exit Sub
  loc_E2AA80: ' Referenced from: E2AA60
  loc_E2AA80: Proc_6_60_E62BC4(Shift)
  loc_E2AA85: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1138E00
  'Data Table: 4E71B0
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_1138A90: On Error Goto loc_1138DFA
  loc_1138A93: Call Proc_88_53_EB9A14()
  loc_1138AAB: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1138AB4: Set var_9C = Me.FGrid
  loc_1138ACC: Set var_F0 = Me.FGrid
  loc_1138AE9: Set var_104 = Me.TxtGrid
  loc_1138AEF: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, CStr(var_F0.TextMatrix)))
  loc_1138AF7: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_1138B24: Set var_88 = Me.TxtGrid
  loc_1138B2A: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_1138B32: var_9C.MaxLength = 0
  loc_1138B61: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_1138B70:   Set var_9C = Me.TxtGrid
  loc_1138B76:   Call 0.Method_TxtGrid_GotFocus0 (0, var_F0, var_114)
  loc_1138B7E:   var_110 = var_F0.Left
  loc_1138B8F:   Set var_104 = Me.TxtGrid
  loc_1138B95:   Call 0.Method_TxtGrid_GotFocus0 (0, var_108)
  loc_1138BBD:   var_BC = CVar(((CDbl(Me.FGrid.Left) + var_114) + var_108.Width)) 'Single
  loc_1138BCC:   Me.DGItem.Left = var_BC
  loc_1138C05:   Me.DGItem.Top = CVar(CDbl(Me.FGrid.Top))
  loc_1138C2B:   If (Me.RecordCount > 0) Then
  loc_1138C39:     Set var_9C = Me.FGPoint
  loc_1138C51:     Proc_6_137_1193554(Me.DGItem, global_52, Index)
  loc_1138C5F:   End If
  loc_1138C68:   var_114 = Me.RecordCount
  loc_1138C7F:   var_11E = Me.EOF
  loc_1138C93:   var_120 = Me.BOF
  loc_1138CB3:   var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1138CEF:   If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_1138CF2:     Exit Sub
  loc_1138CF3:   End If
  loc_1138D06:   var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1138D0E:   var_DC = CVar(CLng(1)) 'Long
  loc_1138D41:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1138D4A:     Me.MoveFirst
  loc_1138D62:     var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1138D6A:     var_DC = CVar(CLng(&HC)) 'Long
  loc_1138D79:     var_AC = Me.FGrid.TextMatrix)
  loc_1138DAE:     Me.Find "Code='" & CStr(var_AC) & "'", 0, 1
  loc_1138DDE:     If (Me.EOF = &HFF) Then
  loc_1138DE7:       Me.MoveFirst
  loc_1138DEC:     End If
  loc_1138DEC:   End If
  loc_1138DEF: Else
  loc_1138DF6:   If (var_110 = CLng(5)) Then
  loc_1138DF9:   End If
  loc_1138DF9: End If
  loc_1138DF9: Exit Sub
  loc_1138DFA: ' Referenced from: 1138A90
  loc_1138DFA: Proc_6_60_E62BC4(var_138, var_AC, var_DC, var_BC, var_DC)
  loc_1138DFF: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1259188
  'Data Table: 4E71B0
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  loc_1258C20: On Error Goto loc_1259181
  loc_1258C26: var_86 = Shift
  loc_1258C33: If (CLng(Shift) = &H1B) Then
  loc_1258C42:   Set var_8C = Me.TxtGrid
  loc_1258C48:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_1258C61:   Set var_98 = Me.TxtGrid
  loc_1258C67:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_1258C6F:   var_9C.Text = var_90.Tag
  loc_1258C8B:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1258C94:   Set var_8C = Me.FGrid
  loc_1258CB0:   Set var_8C = Me.TxtGrid
  loc_1258CB6:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_1258CBE:   var_90.Visible = FGrid.DispID_8001
  loc_1258CCA:   Exit Sub
  loc_1258CCB: End If
  loc_1258CDE: var_B0 = CLng(Me.FGrid.Col)
  loc_1258CEE: If (var_B0 = CLng(1)) Then
  loc_1258D0E:   Set var_9C = Me.FGPoint
  loc_1258D19:   Set var_98 = Nothing
  loc_1258D47:   Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_52, Shift, &HFF, 1)
  loc_1258DB6:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1258DBD:     Set var_98 = Me.DGItem
  loc_1258DDC:     Proc_6_138_106D6F8(var_98, global_52, KeyCode, Me.FGPoint, var_98)
  loc_1258DEA:   End If
  loc_1258DF4:   If (CLng(Shift) = &HD) Then
  loc_1258E04:     Call Proc_88_49_1459078(0, 0, var_B6, var_9C)
  loc_1258E0F:     If (var_B6 = &HFF) Then
  loc_1258E5C:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_86, CByte((CInt(8) + 1)), 0)
  loc_1258E6C:     End If
  loc_1258E6C:   End If
  loc_1258E6F: Else
  loc_1258E76:   If (var_B0 = CLng(2)) Then
  loc_1258EB9:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_86 = &HFF))) Then
  loc_1258EC9:       Call Proc_88_49_1459078(0, 0, var_B6, 0, 0)
  loc_1258ED4:       If (var_B6 = &HFF) Then
  loc_1258F21:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_86, CByte((CInt(8) + 1)), 0)
  loc_1258F31:       End If
  loc_1258F31:     End If
  loc_1258F34:   Else
  loc_1258F3B:     If (var_B0 = CLng(3)) Then
  loc_1258F7E:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_86 = &HFF))) Then
  loc_1258F8E:         Call Proc_88_49_1459078(0, 0, var_B6, 0, 0)
  loc_1258F99:         If (var_B6 = &HFF) Then
  loc_1258FE6:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_86, CByte((CInt(8) + 1)), 0)
  loc_1258FF6:         End If
  loc_1258FF6:       End If
  loc_1258FF9:     Else
  loc_1259000:       If (var_B0 = CLng(5)) Then
  loc_1259043:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_86 = &HFF))) Then
  loc_1259053:           Call Proc_88_49_1459078(0, 0, var_B6, 5, 0)
  loc_125905E:           If (var_B6 = &HFF) Then
  loc_12590AB:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_86, CByte((CInt(8) + 1)), 0)
  loc_12590BB:           End If
  loc_12590BB:         End If
  loc_12590BE:       Else
  loc_12590C5:         If (var_B0 = CLng(8)) Then
  loc_1259108:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_86 = &HFF))) Then
  loc_1259118:             Call Proc_88_49_1459078(0, 0, var_B6, 8, 0)
  loc_1259123:             If (var_B6 = &HFF) Then
  loc_1259170:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_86, CByte((CInt(8) + 1)), 0)
  loc_1259180:             End If
  loc_1259180:           End If
  loc_1259180:         End If
  loc_1259180:       End If
  loc_1259180:     End If
  loc_1259180:   End If
  loc_1259180: End If
  loc_1259180: Exit Sub
  loc_1259181: ' Referenced from: 1258C20
  loc_1259181: Proc_6_60_E62BC4(0, 0, 0)
  loc_1259186: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F9E524
  'Data Table: 4E71B0
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim var_BC As TextBox
  loc_F9E3B0: On Error Goto loc_F9E51D
  loc_F9E3B6: Proc_6_58_E054C0(arg_10)
  loc_F9E3D6: var_88 = CStr(Ucase(Chr(CLng(arg_10))))
  loc_F9E3F3: var_B0 = CLng(Me.FGrid.Col)
  loc_F9E403: If (var_B0 = CLng(1)) Then
  loc_F9E422:   If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F9E434:     var_B4 = "Name"
  loc_F9E44F:     Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_52, arg_10)
  loc_F9E469:     Set var_BC = Me.FGPoint
  loc_F9E481:     Proc_6_138_106D6F8(Me.DGItem, global_52, KeyAscii, var_BC)
  loc_F9E48F:   End If
  loc_F9E492: Else
  loc_F9E499:   If Not (var_B0 = CLng(3)) Then
  loc_F9E4A3:     If Not (var_B0 = CLng(8)) Then
  loc_F9E4AD:       If (var_B0 = CLng(5)) Then
  loc_F9E4B0:       End If
  loc_F9E4B0:     End If
  loc_F9E4BA:     Set var_AC = Me.TxtGrid
  loc_F9E4C0:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_BC, var_B4)
  loc_F9E4DB:     Proc_6_42_129A86C(var_BC, arg_10, 8)
  loc_F9E4EA:   Else
  loc_F9E4F1:     If (var_B0 = CLng(2)) Then
  loc_F9E502:       Set var_AC = Me.TxtGrid
  loc_F9E508:       Call 0.Method_TxtGrid_KeyPress0 (0, var_BC, &H23)
  loc_F9E510:       var_BC.MaxLength = 3
  loc_F9E51C:     End If
  loc_F9E51C:   End If
  loc_F9E51C: End If
  loc_F9E51C: Exit Sub
  loc_F9E51D: ' Referenced from: F9E3B0
  loc_F9E51D: Proc_6_60_E62BC4(0)
  loc_F9E522: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '116BAE8
  'Data Table: 4E71B0
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_EC As Variant
  Dim var_174 As Variant
  Dim var_178 As MSHFlexGrid
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_BC As Variant
  Dim var_A8 As String
  loc_116B738: On Error Goto loc_116BAE1
  loc_116B747: If (KeyCode = 0) Then
  loc_116B75D:   var_A0 = CLng(Me.FGrid.Col)
  loc_116B76D:   If (var_A0 = CLng(1)) Then
  loc_116B793:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_116B7A4:       Call TxtGrid_KeyDown(KeyCode, global_84)
  loc_116B7AD:       Set var_AC = Me.TxtGrid
  loc_116B7B8:       var_A8 = "Name"
  loc_116B7D3:       Proc_6_89_146F1AC(var_AC, KeyCode, global_52, Shift, var_A8)
  loc_116B7E2:     End If
  loc_116B7E5:   Else
  loc_116B7EC:     If Not (var_A0 = CLng(3)) Then
  loc_116B7F6:       If (var_A0 = CLng(5)) Then
  loc_116B7F9:       End If
  loc_116B806:       Set var_8C = Me.TxtGrid
  loc_116B80C:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, &HFF)
  loc_116B814:       0 = var_AC.Text
  loc_116B837:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116B84F:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116B87C:       var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_116B884:       Set var_178 = Me.FGrid
  loc_116B88A:       LateIdCallSt
  loc_116B8C4:       var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116B8CC:       var_174 = CVar(CLng(5)) 'Long
  loc_116B904:       var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116B90C:       var_1C4 = CVar(CLng(6)) 'Long
  loc_116B924:       var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116B92C:       var_124 = CVar(CLng(3)) 'Long
  loc_116B935:       Set var_AC = Me.FGrid
  loc_116B946:       var_A8 = CStr(var_AC.TextMatrix))
  loc_116B954:       var_164 = CVar(CStr((Val(var_A8) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_116B95C:       Set var_1E8 = Me.FGrid
  loc_116B962:       LateIdCallSt
  loc_116B992:     Else
  loc_116B999:       If (var_A0 = CLng(8)) Then
  loc_116B9A9:         Set var_8C = Me.TxtGrid
  loc_116B9AF:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, var_1E8, var_164, var_124, var_BC)
  loc_116B9B7:         var_1C4 = var_AC.Text
  loc_116B9DA:         var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116B9F2:         var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116BA1F:         var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_116BA27:         Set var_178 = Me.FGrid
  loc_116BA2D:         LateIdCallSt
  loc_116BA57:       Else
  loc_116BA5E:         If (var_A0 = CLng(2)) Then
  loc_116BA9E:           Set var_8C = Me.TxtGrid
  loc_116BAA4:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_178, var_164)
  loc_116BAAC:           1 = var_AC.Text
  loc_116BAB4:           var_EC = CVar(var_A8) 'String
  loc_116BABC:           Set var_178 = Me.FGrid
  loc_116BAC2:           LateIdCallSt
  loc_116BAE0:         End If
  loc_116BAE0:       End If
  loc_116BAE0:     End If
  loc_116BAE0:   End If
  loc_116BAE0: End If
  loc_116BAE0: Exit Sub
  loc_116BAE1: ' Referenced from: 116B738
  loc_116BAE1: Proc_6_60_E62BC4(var_178, var_EC, 1, var_144)
  loc_116BAE6: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23520
  'Data Table: 4E71B0
  Dim arg_10 As Integer
  loc_E234FC: On Error Goto loc_E23517
  loc_E2350A: Call Proc_88_49_1459078(Cancel, &HFF)
  loc_E23513: arg_10 = Not(var_88)
  loc_E23516: Exit Sub
  loc_E23517: ' Referenced from: E234FC
  loc_E23517: Proc_6_60_E62BC4(arg_10)
  loc_E2351C: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F8753C
  'Data Table: 4E71B0
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F873F8: On Error Goto loc_F874D6
  loc_F873FF: Set var_A4 = Me.ListView
  loc_F87449: Set var_BC = Me.Txt
  loc_F8744F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F87457: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F87483: Me.FrmList.Visible = False
  loc_F8749D: var_A0 = CStr(Me.ListView.Tag)
  loc_F874A5: var_C8 = Val(var_A0)
  loc_F874B3: Set var_9C = Me.Txt
  loc_F874B9: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F874C1: var_A4.SetFocus
  loc_F874D5: Exit Sub
  loc_F874D6: ' Referenced from: F873F8
  loc_F874DE: Set var_88 = Err()
  loc_F874E4: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F874F5: If (var_CC <> 0) Then
  loc_F87500:   Set var_88 = Err()
  loc_F87506:   Call 0.Method_arg_2C (var_A0)
  loc_F87527:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F8753A: End If
  loc_F8753A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA123C
  'Data Table: 4E71B0
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA11D7: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_128)) Then
  loc_EA11ED:   Me.FGrid.Col = 1
  loc_EA11F5: End If
  loc_EA1208: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA121B: Set var_88 = Me.TxtGrid
  loc_EA1221: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA1229: var_BC.Visible = False
  loc_EA1235: Call Proc_88_53_EB9A14()
  loc_EA123A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E69DC0
  'Data Table: 4E71B0
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69D7C: Set var_88 = Me.TxtGrid
  loc_E69D82: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E69D9C: If (var_8C.Visible = 0) Then
  loc_E69DB5:   Me.FGrid.BackColorSel = CVar(CLng(global_128))
  loc_E69DBD: End If
  loc_E69DBD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1C7A0
  'Data Table: 4E71B0
  loc_E1C797: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1C79F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E3A9F4
  'Data Table: 4E71B0
  Dim var_8C As TextBox
  loc_E3A9D7: Set var_88 = Me.TxtGrid
  loc_E3A9DD: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E3A9E5: var_8C.Visible = False
  loc_E3A9F1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '106A9D4
  'Data Table: 4E71B0
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_D8 As Variant
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_106A754: On Error Goto loc_106A9CD
  loc_106A75B: Set var_88 = Me.TopCtrl1
  loc_106A761: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_106A77A: If (CStr() = "Browse") Then
  loc_106A77D:   Exit Sub
  loc_106A77E: End If
  loc_106A79B: var_C4 = Me.FGrid.Rows
  loc_106A7F2: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_106A7FD:   var_9C = "+{Tab}"
  loc_106A803:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_106A80D:   Cancel = 0
  loc_106A813: Else
  loc_106A81D:   var_B0 = Me.FGrid.Rows
  loc_106A86A:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_106A87B:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_106A885:     Cancel = 0
  loc_106A8BF:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_106A8C2:       Call TopCtrl1_UnknownEvent_16()
  loc_106A8C7:     End If
  loc_106A8C7:   End If
  loc_106A8C7: End If
  loc_106A8CD: global_84 = Cancel
  loc_106A8F3: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_106A917: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_106A92D:   var_11C = CLng(Me.FGrid.Col)
  loc_106A93D:   If Not (var_11C = CLng(1)) Then
  loc_106A947:     If Not (var_11C = CLng(2)) Then
  loc_106A951:       If Not (var_11C = CLng(3)) Then
  loc_106A95B:         If (var_11C = CLng(8)) Then
  loc_106A95E:         End If
  loc_106A95E:       End If
  loc_106A95E:     End If
  loc_106A971:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_106A989:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_106A98E:     var_12C = vbNullString
  loc_106A998:     Set var_B4 = Me.FGrid
  loc_106A99E:     LateIdCallSt
  loc_106A9B6:   End If
  loc_106A9B6: End If
  loc_106A9BC: If (Cancel = &HD) Then
  loc_106A9C4:   global_86 = 0
  loc_106A9C7: End If
  loc_106A9C9: Cancel = 0
  loc_106A9CC: Exit Sub
  loc_106A9CD: ' Referenced from: 106A754
  loc_106A9CD: Proc_6_60_E62BC4(Cancel, global_86, var_B4, var_12C, var_F8, var_D8)
  loc_106A9D2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0FC68
  'Data Table: 4E71B0
  loc_E0FC59: Call FGrid_UnknownEvent_C()
  loc_E0FC63: global_86 = 0
  loc_E0FC66: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'FCC7DC
  'Data Table: 4E71B0
  Dim var_B0 As Long
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  loc_FCC64B: var_88 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_FCC655: On Error Goto loc_FCC7D3
  loc_FCC66B: var_B0 = CLng(Me.FGrid.Col)
  loc_FCC67B: If Not (var_B0 = CLng(1)) Then
  loc_FCC685:   If (var_B0 = CLng(2)) Then
  loc_FCC688:   End If
  loc_FCC6C6:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_FCC6DB: Else
  loc_FCC6E2:   If Not (var_B0 = CLng(3)) Then
  loc_FCC6EC:     If Not (var_B0 = CLng(8)) Then
  loc_FCC6F6:       If (var_B0 = CLng(5)) Then
  loc_FCC6F9:       End If
  loc_FCC6F9:     End If
  loc_FCC716:     If (CLng(Me.FGrid.Col) = CLng(5)) Then
  loc_FCC72C:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FCC734:       var_F8 = CVar(CLng(5)) 'Long
  loc_FCC759:       global_72 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_FCC76D:     End If
  loc_FCC7AB:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel, 0)
  loc_FCC7BD:   End If
  loc_FCC7BD: End If
  loc_FCC7C7: If (CLng(Cancel) <> &HD) Then
  loc_FCC7CF:   global_86 = &HFF
  loc_FCC7D2: End If
  loc_FCC7D2: Exit Sub
  loc_FCC7D3: ' Referenced from: FCC655
  loc_FCC7D3: Proc_6_60_E62BC4(global_86, global_72, var_F8, var_D8)
  loc_FCC7D8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '11DFF24
  'Data Table: 4E71B0
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As TextBox
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_284 As Double
  Dim var_180 As TextBox
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_28C As Double
  Dim var_144 As Integer
  Dim unk_4E71CE As Connection15
  Dim var_130 As Recordset15
  Dim var_134 As Fields15
  Dim var_148 As Field20
  Dim var_178 As Variant
  Dim var_238 As Integer
  Dim var_224 As Recordset15
  Dim var_228 As Fields15
  Dim var_23C As Field20
  loc_11DFB18: On Error Goto loc_11DFF1B
  loc_11DFB1F: Set var_88 = Me.TopCtrl1
  loc_11DFB25: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_11DFB3E: If (CStr() = "Browse") Then
  loc_11DFB41:   Exit Sub
  loc_11DFB42: End If
  loc_11DFB5F: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_11DFB62:   Exit Sub
  loc_11DFB63: End If
  loc_11DFB74: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_11DFB96:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_11DFBA7:     Set var_88 = Me.Txt
  loc_11DFBAD:     Call 0.Method_FGrid_UnknownEvent_D0 (CInt(3), var_A0)
  loc_11DFBCD:     var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DFBD5:     var_D8 = CVar(CLng(0)) 'Long
  loc_11DFBF7:     var_284 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_11DFC08:     Set var_17C = Me.Txt
  loc_11DFC0E:     Call 0.Method_FGrid_UnknownEvent_D0 (CInt(3), var_180, var_184)
  loc_11DFC2E:     var_1AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DFC36:     var_1CC = CVar(CLng(0)) 'Long
  loc_11DFC58:     var_28C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_11DFC61:     var_144 = 0
  loc_11DFC9A:     unk_4E71CE.Execute "Select Count(*) From POrder1 Where IndentDocId='" & var_A0.Text & "' And IndentSno=" & CStr(var_180.Text), var_12C, -1
  loc_11DFCA2:     var_130 = var_130.Fields
  loc_11DFCAA:     var_144 = var_134.Item(var_134)
  loc_11DFCB2:     var_148 = var_148.Value
  loc_11DFCC0:     var_178 = (var_158 > 0)
  loc_11DFCCA:     var_238 = 0
  loc_11DFD03:     unk_4E71CE.Execute "Select Count(*) From STOCK Where IndentDocId='" & var_184 & "' And IndentSno=" & CStr(var_28C), var_220, -1
  loc_11DFD0B:     var_224 = var_224.Fields
  loc_11DFD13:     var_238 = var_228.Item(var_228)
  loc_11DFD1B:     var_23C = var_23C.Value
  loc_11DFD80:     If CBool(var_24C And (var_24C > 0)) Then
  loc_11DFDA4:       MsgBox("Allready Ordered You Can't Delete", &H10, "Delete Validation", var_12C, var_158)
  loc_11DFDB8:       Set var_88 = Me.FGrid
  loc_11DFDC9:       Exit Sub
  loc_11DFDCA:     End If
  loc_11DFE01:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_12C, var_158) = 6) Then
  loc_11DFE23:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_11DFE39:         var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DFE42:         Set var_A0 = Me.FGrid
  loc_11DFE5D:       Else
  loc_11DFE70:         Me.FGrid.Rows = 1
  loc_11DFE8D:         var_FC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11DFE95:         Set var_A0 = Me.FGrid
  loc_11DFEB1:         var_B8 = 1
  loc_11DFEC4:         Me.FGrid.FixedRows = var_B8
  loc_11DFECC:       End If
  loc_11DFECC:     End If
  loc_11DFECC:     Call Proc_88_56_11CF900(FGrid.DispID_10000, var_FC, FGrid.DispID_10000, var_B8, FGrid.DispID_8001, var_178)
  loc_11DFED4:   Else
  loc_11DFEF5:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_12C, var_158)
  loc_11DFF05:   End If
  loc_11DFF09:   Set var_88 = Me.FGrid
  loc_11DFF1A: End If
  loc_11DFF1A: Exit Sub
  loc_11DFF1B: ' Referenced from: 11DFB18
  loc_11DFF1B: Proc_6_60_E62BC4(FGrid.DispID_8001, var_158, var_28C, var_1CC)
  loc_11DFF20: Exit Sub
  loc_11DFF21: Set var_8C = var_1AC
End Sub

Private Sub FGrid_UnknownEvent_12 'E9DD80
  'Data Table: 4E71B0
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9DD23: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9DD3B: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9DD63: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9DD7E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3E424
  'Data Table: 4E71B0
  Dim var_8C As TextBox
  loc_E3E403: Set var_88 = Me.TxtGrid
  loc_E3E409: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3E411: var_8C.Visible = False
  loc_E3E41D: Call Proc_88_53_EB9A14()
  loc_E3E422: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F91300
  'Data Table: 4E71B0
  Dim var_8C As Variant
  Dim var_D0 As Variant
  Dim var_D4 As TextBox
  loc_F91198: On Error Goto loc_F912FA
  loc_F911BE: Call Proc_88_51_F338EC(Proc_5_1_100CB50("ADD", Me))
  loc_F911C9: Call Proc_88_50_F6A674(global_56)
  loc_F911DB: Me.LblVPrefix.Caption = vbNullString
  loc_F911F6: Me.FGrid.Rows = 1
  loc_F91213: var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F9121B: Set var_D4 = Me.FGrid
  loc_F9124A: Me.FGrid.FixedRows = 1
  loc_F91265: Set var_8C = Me.Txt
  loc_F9126B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, CStr(MemVar_1F920EC))
  loc_F91273: var_D4.Text = FGrid.DispID_10000
  loc_F91290: Set var_8C = Me.Txt
  loc_F91296: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_D4)
  loc_F9129E: var_D4.Text = "Indent Entry"
  loc_F912B5: Set var_8C = Me.Txt
  loc_F912BB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_D4)
  loc_F912C3: var_D4.SetFocus
  loc_F912DC: Me.LblUser.Caption = vbNullString
  loc_F912F1: Me.LblLDt.Caption = vbNullString
  loc_F912F9: Exit Sub
  loc_F912FA: ' Referenced from: F91198
  loc_F912FA: Proc_6_60_E62BC4(var_D0)
  loc_F912FF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBA97C
  'Data Table: 4E71B0
  loc_EBA8E8: On Error Goto loc_EBA973
  loc_EBA922: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EBA931:   Set var_10C = Me
  loc_EBA948:   Call Proc_88_51_F338EC(Proc_5_1_100CB50("INI", var_10C))
  loc_EBA953:   Call Proc_88_52_150EA74(global_56)
  loc_EBA95B: Else
  loc_EBA961:   Call 0.Method_arg_1E8 (var_10C)
  loc_EBA969:   Call var_10C.SetFocus
  loc_EBA972: End If
  loc_EBA972: Exit Sub
  loc_EBA973: ' Referenced from: EBA8E8
  loc_EBA973: Proc_6_60_E62BC4()
  loc_EBA978: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12F8DA0
  'Data Table: 4E71B0
  Dim var_9C As Variant
  Dim unk_4E71CE As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_A0 As String
  Dim var_C8 As Variant
  loc_12F86D4: On Error Goto loc_12F8D50
  loc_12F86E5: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_12F86E8:   Exit Sub
  loc_12F86E9: End If
  loc_12F8716: Set var_98 = Me.Txt
  loc_12F871C: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_9C, var_A0, "select count(*) from porder1 where iNDENTdOCID='", var_C8, -1)
  loc_12F873D: unk_4E71CE.Execute var_D0 & var_A0 & "'", 0, var_E4
  loc_12F874D:  = var_D0.Item()
  loc_12F8755:  = var_E4.Value
  loc_12F8782: If (var_9C.Text.Fields > 0) Then
  loc_12F87A0:   var_C8 = "Already Ordered You Can't Delete"
  loc_12F87A6:   MsgBox(var_C8, &H10, "Delete Validation", var_114, var_134)
  loc_12F87BA:   Set var_98 = Me.FGrid
  loc_12F87CB:   Exit Sub
  loc_12F87CC: End If
  loc_12F87F9: Set var_98 = Me.Txt
  loc_12F87FF: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_9C, var_A0, "select count(*) from Stock where IndentDocID='", var_C8, -1)
  loc_12F8820: unk_4E71CE.Execute var_D0 & var_A0 & "'", 0, var_E4
  loc_12F8830:  = var_D0.Item(FGrid.DispID_8001)
  loc_12F8838:  = var_E4.Value
  loc_12F8865: If (var_9C.Text.Fields > 0) Then
  loc_12F8883:   var_C8 = "GRN Exists, You Can't Delete"
  loc_12F8889:   MsgBox(var_C8, &H10, "Delete Validation", var_114, var_134)
  loc_12F889D:   Set var_98 = Me.FGrid
  loc_12F88AE:   Exit Sub
  loc_12F88AF: End If
  loc_12F88DC: Set var_98 = Me.Txt
  loc_12F88E2: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_9C, var_A0, "select count(*) from Stock where ContraDocID='", var_C8, -1)
  loc_12F88EA: var_CC = var_9C.Text
  loc_12F8903: unk_4E71CE.Execute var_D0 & var_A0 & "'", 0, var_E4
  loc_12F8913:  = var_D0.Item(FGrid.DispID_8001)
  loc_12F891B:  = var_E4.Value
  loc_12F8948: If (var_CC.Fields > 0) Then
  loc_12F896C:   MsgBox("Purchase Order Exists, You Can't Delete", &H10, "Delete Validation", var_114, var_134)
  loc_12F8980:   Set var_98 = Me.FGrid
  loc_12F8991:   Exit Sub
  loc_12F8992: End If
  loc_12F89C9: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_114, var_134) = 6) Then
  loc_12F89D5:   unk_4E71CE.BeginTrans var_138
  loc_12F89EB:   var_94 = Me.Bookmark 'Variant
  loc_12F8A2E:   var_F4 = "Delete From Indent1 Where DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_12F8A45:   unk_4E71CE.Execute CStr(var_F4 & "'"), var_134, -1
  loc_12F8A8A:   Proc_6_17_EAA2B0(var_F4, CVar(Me.Fields.Item("SearchCode")))
  loc_12F8A94:   var_168 = 0
  loc_12F8AA7:   var_160 = 0
  loc_12F8AB2:   var_15C = 0
  loc_12F8AC5:   var_154 = 0
  loc_12F8AD0:   var_150 = 0
  loc_12F8B2C:   Proc_154_5_10E33A4(MemVar_1F92044, "Indent1", "DocId", &HC8, CStr(var_F4), 0, 0, 0)
  loc_12F8B93:   var_F4 = "Delete From Indent Where DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_12F8B9C:   var_114 = var_F4 & "'" 
  loc_12F8BAA:   unk_4E71CE.Execute CStr(var_114), var_134, -1
  loc_12F8BEF:   Proc_6_17_EAA2B0(var_F4, CVar(Me.Fields.Item("SearchCode")), var_CC, 0, 0)
  loc_12F8BF9:   var_168 = 0
  loc_12F8C0C:   var_160 = 0
  loc_12F8C17:   var_15C = 0
  loc_12F8C2A:   var_154 = 0
  loc_12F8C35:   var_150 = 0
  loc_12F8C48:   var_148 = 0
  loc_12F8C88:   var_A0 = "Indent"
  loc_12F8C91:   Proc_154_5_10E33A4(MemVar_1F92044, var_A0, "DocId", &HC8, CStr(var_F4), 0, 0, 0)
  loc_12F8CBF:   unk_4E71CE.CommitTrans
  loc_12F8CCF:   Me.Requery -1
  loc_12F8CEF:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12F8CFC:     Me.Bookmark = var_94
  loc_12F8D04:   Else
  loc_12F8D18:     If (Me.EOF = 0) Then
  loc_12F8D21:       Me.MoveLast
  loc_12F8D26:     End If
  loc_12F8D26:   End If
  loc_12F8D26:   Call Proc_88_52_150EA74(var_148, 0, var_150, var_154)
  loc_12F8D47:   Proc_5_0_110649C(&HFF, Me, global_56, 0)
  loc_12F8D4F: End If
  loc_12F8D4F: Exit Sub
  loc_12F8D50: ' Referenced from: 12F86D4
  loc_12F8D56: unk_4E71CE.RollbackTrans
  loc_12F8D63: Set var_98 = Err()
  loc_12F8D69: Call 0.Method_arg_2C (var_A0, 0, var_15C)
  loc_12F8D8A: MsgBox(CVar(var_A0), &H10, " Deletion Message", var_114, var_134)
  loc_12F8D9D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1124D90
  'Data Table: 4E71B0
  Dim var_8C As TextBox
  Dim unk_4E71CE As Connection15
  Dim var_C0 As Fields15
  Dim var_D4 As Field20
  Dim var_88 As Variant
  Dim var_B8 As Variant
  Dim var_90 As String
  loc_1124A3C: On Error Goto loc_1124D8A
  loc_1124A4D: If (Proc_183_55_FE7900(global_56) = &HFF) Then
  loc_1124A50:   Exit Sub
  loc_1124A51: End If
  loc_1124A7E: Set var_88 = Me.Txt
  loc_1124A84: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_8C, var_90, "select count(*) from porder1 where iNDENTdOCID='", var_B8, -1)
  loc_1124AA5: unk_4E71CE.Execute var_C0 & var_90 & "'", 0, var_D4
  loc_1124AB5:  = var_C0.Item()
  loc_1124ABD:  = var_D4.Value
  loc_1124AEA: If (var_8C.Text.Fields > 0) Then
  loc_1124B08:   var_B8 = "Already Ordered You Can't Modify "
  loc_1124B0E:   MsgBox(var_B8, &H10, "Edit Validation", var_104, var_124)
  loc_1124B1E:   Exit Sub
  loc_1124B1F: End If
  loc_1124B4C: Set var_88 = Me.Txt
  loc_1124B52: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_8C, var_90, "select count(*) from Stock where INDENTDOCID='", var_B8, -1)
  loc_1124B73: unk_4E71CE.Execute var_C0 & var_90 & "'", 0, var_D4
  loc_1124B83:  = var_C0.Item()
  loc_1124B8B:  = var_D4.Value
  loc_1124BB8: If (var_8C.Text.Fields > 0) Then
  loc_1124BDC:   MsgBox("You Can't Modify,Entry Exist in Stock ", &H10, "Edit Validation", var_104, var_124)
  loc_1124BEC:   Exit Sub
  loc_1124BED: End If
  loc_1124C10: Call Proc_88_51_F338EC(Proc_5_1_100CB50("EDIT", Me))
  loc_1124C38: Set var_8C = Me.FGrid
  loc_1124C61: Set var_88 = Me.Txt
  loc_1124C67: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_8C, 0)
  loc_1124C6F: var_8C.Enabled = FGrid.DispID_10000
  loc_1124C88: Set var_88 = Me.Txt
  loc_1124C8E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_8C, 0)
  loc_1124C96: var_8C.Enabled = CVar(CStr(CLng(Me.FGrid.Rows)))
  loc_1124CAF: Set var_88 = Me.Txt
  loc_1124CB5: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_8C)
  loc_1124CBD: var_8C.Enabled = False
  loc_1124CCD: Set var_88 = Me.TopCtrl1
  loc_1124CD3: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(global_56)
  loc_1124CEC: If (CStr() = "Add") Then
  loc_1124CFA:   Set var_88 = Me.Txt
  loc_1124D00:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2))
  loc_1124D08:   var_8C.SetFocus
  loc_1124D14: End If
  loc_1124D18: Set var_88 = Me.TopCtrl1
  loc_1124D1E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_8C)
  loc_1124D37: If (CStr() = "Edit") Then
  loc_1124D45:   Set var_88 = Me.Txt
  loc_1124D4B:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4))
  loc_1124D53:   var_8C.SetFocus
  loc_1124D5F: End If
  loc_1124D6C: Me.LblUser.Caption = vbNullString
  loc_1124D81: Me.LblLDt.Caption = vbNullString
  loc_1124D89: Exit Sub
  loc_1124D8A: ' Referenced from: 1124A3C
  loc_1124D8A: Proc_6_60_E62BC4(var_8C)
  loc_1124D8F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E178F0
  'Data Table: 4E71B0
  loc_E178E5: Me.Global.Unload Me
  loc_E178ED: Exit Sub
  loc_E178EE: If  Then Exit Sub
  loc_E178EE: End If
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EDAB64
  'Data Table: 4E71B0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EDAAB8: On Error Goto loc_EDAB5B
  loc_EDAAD2: If (Me.RecordCount <= 0) Then
  loc_EDAADB:   var_B8 = "Information"
  loc_EDAAF6:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EDAB06:   Exit Sub
  loc_EDAB07: End If
  loc_EDAB0E: var_10C = "Select DocId as SearchCode,Description as IndentType,vnO as IndentNo,Cast(VDate as Varchar(11)) as IndentDate,i.Remarks " & "From (Indent I Left Join Voucher_type VT on (VT.V_type=I.VType and VT.LogSite_Code=I.Logsite_Code)) Where   VT.LOGSITE_CODE='"
  loc_EDAB1C: MemVar_1F920E4 = var_10C & MemVar_1F92078 & "' And V_Type In (Select V_Type From Voucher_Type Where NCat='PIND') order by i.Docid "
  loc_EDAB30: Proc_6_126_F1BCC0("1500,1000,1500,3000")
  loc_EDAB3E: MemVar_1F92120 = Me
  loc_EDAB55: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EDAB5A: Exit Sub
  loc_EDAB5B: ' Referenced from: EDAAB8
  loc_EDAB5B: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EDAB60: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3D518
  'Data Table: 4E71B0
  loc_E3D508: Proc_5_0_110649C(&HFF, Me)
  loc_E3D510: Call Proc_88_52_150EA74(global_56)
  loc_E3D515: Exit Sub
  loc_E3D516: Set arg_3800 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3D338
  'Data Table: 4E71B0
  loc_E3D328: Proc_5_0_110649C(&HFF, Me)
  loc_E3D330: Call Proc_88_52_150EA74(global_56)
  loc_E3D335: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3DD58
  'Data Table: 4E71B0
  loc_E3DD48: Proc_5_0_110649C(&HFF, Me)
  loc_E3DD50: Call Proc_88_52_150EA74(global_56)
  loc_E3DD55: Exit Sub
  loc_E3DD56: Set arg_3800 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3CA38
  'Data Table: 4E71B0
  loc_E3CA28: Proc_5_0_110649C(&HFF, Me)
  loc_E3CA30: Call Proc_88_52_150EA74(global_56)
  loc_E3CA35: Exit Sub
  loc_E3CA36: Set arg_3800 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1091B74
  'Data Table: 4E71B0
  Dim Me As Recordset15
  Dim var_AC As String
  Dim var_BC As Variant
  Dim var_A8 As Fields15
  Dim var_C0 As Field20
  Dim var_100 As String
  Dim unk_4E71CE As Connection15
  Dim var_116 As Integer
  loc_10918D8: On Error Goto loc_1091B6B
  loc_10918E4: var_A4 = Me.RecordCount
  loc_10918F2: If (var_A4 <= 0) Then
  loc_10918F5:   Exit Sub
  loc_10918F6: End If
  loc_1091910: Call Proc_88_48_11C79A4(New)
  loc_109191B: Set global_60 = var_A8
  loc_1091929: var_AC = "SELECT I.VNo, I.VDate, I.Remarks, IM.Name, I1.Specification, I1.Qty, IM.Unit, I1.Rate, I1.Amount, D.Name As DepartMent, I1.TaxAmt, I1.Total " & " FROM ((Indent AS I LEFT JOIN Indent1 AS I1 ON I.DocId = I1.DocId) LEFT JOIN Depart AS D ON D.Code = I.DepartMent) Inner JOIN ItemMast AS IM ON I1.Item = IM.Code And IM.ItemType='Store' "
  loc_1091948: var_A8 = Me.Fields
  loc_1091950: var_C0 = var_A8.Item("SearchCode")
  loc_1091958: var_D0 = var_C0.Value
  loc_1091964: var_100 = "' Order By I1.Sno"
  loc_109196E: var_88 = CStr(CVar(var_AC & " Where I.DocID='") & var_D0 & var_100)
  loc_109198E: If (var_88 = vbNullString) Then
  loc_1091991:   Exit Sub
  loc_1091992: End If
  loc_10919A8: unk_4E71CE.Execute var_88, var_D0, -1
  loc_10919D2: Set var_A8 = var_A8 
  loc_10919DE: var_116 = CreateFieldDefFile(var_A8, MemVar_1F920B4 & "\Indent.ttx", &HFF)
  loc_10919E8: Set var_9C = var_A8
  loc_10919EE: var_BC = CVar(var_116) 'Integer
  loc_10919F1: var_98 = var_BC 'Variant
  loc_1091A0D: var_AC = MemVar_1F920B4 & "\Indent.RPT"
  loc_1091A16: Call 0.Method_arg_1C (var_AC, var_BC, var_A8)
  loc_1091A21: MemVar_1F921E4 = var_A8
  loc_1091A3C: Call 0.Method_arg_90 (var_A8, var_A4, var_9E, 1)
  loc_1091A44: Call 0.Method_arg_24 (var_116, var_A8)
  loc_1091A50: For var_11A =  To CInt(var_A4): var_A8 = var_11A 'Integer
  loc_1091A69:   Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_1091A71:   Call 0.Method_arg_20 (var_C0)
  loc_1091A79:   Call 0.Method_arg_30 (var_AC)
  loc_1091A93:   If (var_AC = "Title") Then
  loc_1091AA9:     Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_1091AB1:     Call 0.Method_arg_20 (var_C0)
  loc_1091AB9:     Call 0.Method_arg_38 ("'Indent'")
  loc_1091AC5:   End If
  loc_1091AC8: Next var_11A 'Integer
  loc_1091AE6: Call 0.Method_arg_64 (var_A8, CVar(var_9C))
  loc_1091AEE: Call 0.Method_arg_2C (var_100)
  loc_1091AFC: Call 0.Method_arg_150 (var_130)
  loc_1091B07: Call 0.Method_arg_50 (var_AC)
  loc_1091B11: Set var_C0 = Nothing
  loc_1091B2B: Set var_A8 = MemVar_1F921E4 
  loc_1091B37: Proc_6_99_1483714(var_A8, 0, var_AC)
  loc_1091B42: MemVar_1F921E4 = var_A8
  loc_1091B55: Set var_9C = Nothing
  loc_1091B63: Set global_60 = Nothing
  loc_1091B6A: Exit Sub
  loc_1091B6B: ' Referenced from: 10918D8
  loc_1091B6B: Proc_6_60_E62BC4(&HFF)
  loc_1091B70: Exit Sub
  loc_1091B71: AssignRecord
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2361C
  'Data Table: 4E71B0
  Dim Me As Recordset15
  loc_E23603: Me.Requery -1
  loc_E23613: Me.Requery -1
  loc_E23618: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15CB0BC
  'Data Table: 4E71B0
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_98 As Variant
  Dim var_F8 As Variant
  Dim var_A4 As String
  Dim var_108 As Variant
  Dim var_C8 As Variant
  Dim unk_4E71CE As Connection15
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_170 As Variant
  Dim var_438 As Double
  Dim var_200 As Variant
  Dim var_32C As Variant
  Dim var_2EC As String
  Dim var_384 As Variant
  Dim var_138 As String
  Dim var_144 As String
  Dim var_178 As String
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_254 As Variant
  Dim var_2B4 As Variant
  Dim var_2C4 As Variant
  Dim var_3A8 As Variant
  Dim var_3B8 As Variant
  Dim var_3E8 As Variant
  Dim var_16C As Variant
  Dim var_184 As TextBox
  Dim var_AD0 As Double
  Dim var_2D8 As MSHFlexGrid
  Dim var_454 As Variant
  Dim var_474 As Variant
  Dim var_380 As MSHFlexGrid
  Dim var_4B4 As Variant
  Dim var_4D4 As Variant
  Dim var_518 As Variant
  Dim var_538 As Variant
  Dim var_AE8 As Double
  Dim var_AF0 As Double
  Dim var_780 As Variant
  Dim var_7A0 As Variant
  Dim var_818 As Variant
  Dim var_838 As Variant
  Dim var_8B0 As Variant
  Dim var_8D0 As Variant
  Dim var_9A4 As Variant
  Dim var_A1C As Variant
  Dim var_A3C As Variant
  Dim var_148 As String
  Dim var_174 As String
  Dim var_204 As String
  Dim var_440 As String
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_2A4 As Variant
  Dim var_2E8 As Variant
  Dim var_42C As Variant
  Dim var_7E8 As Variant
  Dim var_954 As Variant
  Dim var_88 As Recordset15
  loc_15C9F34: On Error Goto loc_15CB09F
  loc_15C9F42: Set var_98 = Me.Txt
  loc_15C9F48: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15C9F71: If (Proc_6_27_EA565C(var_9C, "Indent Type") = 0) Then
  loc_15C9F74:   Exit Sub
  loc_15C9F75: End If
  loc_15C9F80: Set var_98 = Me.Txt
  loc_15C9F86: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C)
  loc_15C9FAF: If (Proc_6_27_EA565C(var_9C, "Indent Number") = 0) Then
  loc_15C9FB2:   Exit Sub
  loc_15C9FB3: End If
  loc_15C9FBE: Set var_98 = Me.Txt
  loc_15C9FC4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C)
  loc_15C9FED: If (Proc_6_27_EA565C(var_9C, "Indent Date") = 0) Then
  loc_15C9FF0:   Exit Sub
  loc_15C9FF1: End If
  loc_15C9FFC: Set var_98 = Me.Txt
  loc_15CA002: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C)
  loc_15CA02B: If (Proc_6_27_EA565C(var_9C, "Department") = 0) Then
  loc_15CA035:   Call Txt_GotFocus(CInt(6))
  loc_15CA03A:   Exit Sub
  loc_15CA03B: End If
  loc_15CA047: Call Txt_Validate(CInt(1))
  loc_15CA04F: Call Proc_88_58_F91634(var_A6, &HFF)
  loc_15CA05A: If (var_A6 = &HFF) Then
  loc_15CA05D:   Exit Sub
  loc_15CA05E: End If
  loc_15CA05E: var_B8 = 1
  loc_15CA084: var_A4 = CStr(Me.FGrid.TextMatrix))
  loc_15CA095: If (var_A4 = vbNullString) Then
  loc_15CA09E:   Call 0.Method_arg_50 (var_A4, CVar(CLng(&HC)))
  loc_15CA0BF:   MsgBox("Please Fill Item Detail", &H40, CVar(var_A4), var_118, var_128)
  loc_15CA0E2:   Me.FGrid.Row = 1
  loc_15CA0EE:   Set var_98 = Me.FGrid
  loc_15CA0FF:   Exit Sub
  loc_15CA100: End If
  loc_15CA125: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_12C 'Integer
  loc_15CA12F:   var_B8 = CVar(CLng(var_92)) 'Long
  loc_15CA137:   var_D8 = CVar(CLng(1)) 'Long
  loc_15CA162:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_15CA169:     var_B8 = CVar(CLng(var_92)) 'Long
  loc_15CA171:     var_D8 = CVar(CLng(3)) 'Long
  loc_15CA1A1:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_15CA1AF:       var_108 = "Required Data"
  loc_15CA1C9:       MsgBox(CVar("Quantity in Row " & CStr(var_92)), &H40, var_108, var_118, var_128)
  loc_15CA1EF:       Me.FGrid.Row = CVar(CLng(var_92))
  loc_15CA1FB:       Set var_98 = Me.FGrid
  loc_15CA20C:       Exit Sub
  loc_15CA20D:     End If
  loc_15CA210:   Else
  loc_15CA214:     var_B8 = CVar(CLng(var_92)) 'Long
  loc_15CA21C:     var_D8 = CVar(CLng(1)) 'Long
  loc_15CA22B:     var_F8 = Me.FGrid.TextMatrix)
  loc_15CA247:     If (CStr(var_F8) = vbNullString) Then
  loc_15CA24E:       var_B8 = CVar(CLng(var_92)) 'Long
  loc_15CA257:       Set var_98 = Me.FGrid
  loc_15CA268:     End If
  loc_15CA268:   End If
  loc_15CA26B: Next var_12C 'Integer
  loc_15CA274: Set var_98 = Me.TopCtrl1
  loc_15CA27A: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_15CA293: If (CStr() = "Add") Then
  loc_15CA29C:   var_C8 = 0
  loc_15CA2BC:   var_A4 = "Select count(*) from Indent where DocID='" & global_112
  loc_15CA2CC:   unk_4E71CE.Execute var_A4 & "'", var_F8, -1
  loc_15CA2D4:   var_98 = var_98.Fields
  loc_15CA2DC:   var_C8 = var_9C.Item(var_9C)
  loc_15CA2E4:   var_A0 = var_A0.Value
  loc_15CA30B:   If (var_108 > 0) Then
  loc_15CA316:     Call Proc_88_54_135DA5C(&HFF, var_A4)
  loc_15CA329:     Set var_98 = Me.Txt
  loc_15CA32F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_9C)
  loc_15CA337:     var_9C.Text = var_A4
  loc_15CA346:     Exit Sub
  loc_15CA347:   End If
  loc_15CA34A: Else
  loc_15CA36F:   var_F8 = Me.Fields.Item("SearchCode").Value
  loc_15CA37E:   global_112 = CStr(var_F8)
  loc_15CA38F: End If
  loc_15CA398: unk_4E71CE.BeginTrans var_134
  loc_15CA39F: var_8A = &HFF
  loc_15CA3C9: unk_4E71CE.Execute "Delete From Indent1 Where DocID='" & global_112 & "'", var_F8, -1
  loc_15CA402: unk_4E71CE.Execute "Delete From Indent Where DocID='" & global_112 & "'", var_F8, -1
  loc_15CA41B: Set var_98 = Me.LblVPrefix
  loc_15CA434: Set var_9C = Me.Txt
  loc_15CA43A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_15C, var_98)
  loc_15CA442: var_98 = var_A0.Tag
  loc_15CA455: Set var_16C = Me.Txt
  loc_15CA45B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_170, var_174)
  loc_15CA463: var_8A = var_170.Text
  loc_15CA470: var_438 = Val(var_174)
  loc_15CA47E: Set var_184 = Me.Txt
  loc_15CA484: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_188)
  loc_15CA493: Proc_6_7_F25D88(var_108, CVar(var_188))
  loc_15CA4CE: Set var_1FC = Me.Txt
  loc_15CA4D4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_200, var_204, 1)
  loc_15CA4DC: 1 = var_200.Text
  loc_15CA4EF: Proc_6_7_F25D88(var_2A4, Date)
  loc_15CA4F8: Set var_2D8 = Me.TopCtrl1
  loc_15CA4FE: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_438)
  loc_15CA521: var_2EC = CStr(var_2E8)
  loc_15CA543: Set var_380 = Me.Txt
  loc_15CA549: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_384)
  loc_15CA578: var_138 = "Insert Into Indent(" & "DocID,Vprefix,Site_Code,VType," & "VNo,Vdate,VTime," & "Remarks,U_Name,U_EntDt,U_AE,Department,LogSite_Code) "
  loc_15CA5C8: var_178 = var_138 & "Values(" & "'" & global_112 & "','" & var_98.Caption & "','" & MemVar_1F92070 & "','" & var_15C & "'," & vbNullString
  loc_15CA5DB: var_118 = CVar(var_178 & CStr(var_438) & ",") 'String
  loc_15CA630: var_2B4 = var_118 & var_108 & ",'" & Format(Time, "HH:mm") & "'," & "'" & CVar(var_204) & "','" & CVar(MemVar_1F920C8) & "'," & var_2A4 
  loc_15CA67D: unk_4E71CE.Execute CStr(var_2B4 & ",'" & IIf((var_2EC = "Add"), "A", "E") & "','" & CVar(var_384.Tag) & "','" & CVar(MemVar_1F92078) & "')"), var_42C, -1
  loc_15CA734: For var_43C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_43C 'Integer
  loc_15CA73E:   var_B8 = CVar(CLng(var_92)) 'Long
  loc_15CA746:   var_D8 = CVar(CLng(3)) 'Long
  loc_15CA776:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_15CA77D:     var_B8 = CVar(CLng(var_92)) 'Long
  loc_15CA78E:     Set var_98 = Me.FGrid
  loc_15CA7A7:     var_438 = Val(CStr(var_98.TextMatrix)))
  loc_15CA7B1:     Set var_9C = Me.LblVPrefix
  loc_15CA7CA:     Set var_A0 = Me.Txt
  loc_15CA7D0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_16C, var_178, var_438, CVar(CLng(0)), var_B8)
  loc_15CA7D8:     var_D8 = var_16C.Tag
  loc_15CA7EB:     Set var_170 = Me.Txt
  loc_15CA7F1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_184, var_2EC, var_B8)
  loc_15CA7F9:     1 = var_184.Text
  loc_15CA806:     var_AD0 = Val(var_2EC)
  loc_15CA814:     Set var_188 = Me.Txt
  loc_15CA81A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1FC, var_AD0)
  loc_15CA822:     var_108 = CVar(var_1FC) 'Address
  loc_15CA829:     Proc_6_7_F25D88(var_118, var_108)
  loc_15CA832:     var_254 = CVar(CLng(var_92)) 'Long
  loc_15CA83A:     var_2C4 = CVar(CLng(&HC)) 'Long
  loc_15CA859:     var_32C = CVar(CLng(var_92)) 'Long
  loc_15CA861:     var_3B8 = CVar(CLng(3)) 'Long
  loc_15CA88A:     var_454 = CVar(CLng(var_92)) 'Long
  loc_15CA892:     var_474 = CVar(CLng(4)) 'Long
  loc_15CA8B1:     var_4B4 = CVar(CLng(var_92)) 'Long
  loc_15CA8B9:     var_4D4 = CVar(CLng(8)) 'Long
  loc_15CA8E2:     var_518 = CVar(CLng(var_92)) 'Long
  loc_15CA8EA:     var_538 = CVar(CLng(9)) 'Long
  loc_15CA90C:     var_AE8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15CA93D:     var_AF0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15CA95B:     var_3A8 = Me.FGrid.TextMatrix)
  loc_15CA975:     Proc_6_7_F25D88(var_698, Date, var_3A8, CVar(CLng(2)), CVar(CLng(var_92)), var_AF0, CVar(CLng(&HB)), CVar(CLng(var_92)))
  loc_15CA97E:     Set var_6CC = Me.TopCtrl1
  loc_15CA984:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_AE8)
  loc_15CA9BF:     var_780 = CVar(CLng(var_92)) 'Long
  loc_15CA9C7:     var_7A0 = CVar(CLng(5)) 'Long
  loc_15CA9F0:     var_818 = CVar(CLng(var_92)) 'Long
  loc_15CA9F8:     var_838 = CVar(CLng(6)) 'Long
  loc_15CAA21:     var_8B0 = CVar(CLng(var_92)) 'Long
  loc_15CAA29:     var_8D0 = CVar(CLng(7)) 'Long
  loc_15CAA48:     var_984 = CVar(CLng(var_92)) 'Long
  loc_15CAA50:     var_9A4 = CVar(CLng(&HA)) 'Long
  loc_15CAA79:     var_A1C = CVar(CLng(var_92)) 'Long
  loc_15CAA81:     var_A3C = CVar(CLng(&HD)) 'Long
  loc_15CAABE:     var_138 = "Insert Into Indent1(" & "DocID,Sno,VPrefix,Site_Code,VType," & "VNO,VDate,Item,Qty,Unit," & "Rate,Amount,Total,Specification,"
  loc_15CAADD:     var_148 = var_138 & "U_Name,U_EntDt,U_AE,ConvFactor,WtQty,WtUnit,LogSite_Code,TaxAmt,TaxStru) " & "Values(" & "'" & global_112
  loc_15CAB34:     var_440 = var_148 & "'," & CStr(var_438) & ",'" & var_9C.Caption & "','" & MemVar_1F92070 & "','" & var_178 & "'," & vbNullString & CStr(var_AD0)
  loc_15CAB4A:     var_1A8 = CVar(var_440 & ",") & var_118 & ",'" 
  loc_15CAB52:     var_1C8 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15CAB8F:     var_2A4 = var_1A8 & var_1C8 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & vbNullString 
  loc_15CABD6:     var_3E8 = var_2A4 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_AE8) & "," & CVar(var_AF0) & ",'" & CVar(CStr(var_3A8)) 
  loc_15CAC26:     var_7E8 = var_3E8 & "'," & "'" & CVar(MemVar_1F920C8) & "'," & var_698 & ",'" & IIf((CStr(var_6DC) = "Add"), "A", "E") & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_15CAC61:     var_954 = var_7E8 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(MemVar_1F92078) 
  loc_15CACA0:     unk_4E71CE.Execute CStr(var_954 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "')"), var_AC4, -1
  loc_15CAD9C:   End If
  loc_15CAD9F: Next var_43C 'Integer
  loc_15CADA8: Set var_98 = Me.TopCtrl1
  loc_15CADAE: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_15CADC7: If (CStr() = "Add") Then
  loc_15CADCE:   Set var_88 = New 
  loc_15CADD9:   Me.TopCtrl1.CursorLocation = 3
  loc_15CADEC:   Set var_98 = Me.Txt
  loc_15CADF2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C)
  loc_15CAE02:   var_F8 = CVar(var_9C.Text) 'String
  loc_15CAE08:   Proc_6_7_F25D88(var_108)
  loc_15CAE2B:   var_A4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_15CAE51:   var_118 = CVar(var_A4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_120 & "' And VP.Date_From<=") 'String
  loc_15CAE68:   var_88.Open var_118 & var_108 & " Order By VP.Date_From DESC", CVar(MemVar_1F92044), 2
  loc_15CAEA2:   If (var_88.RecordCount > 0) Then
  loc_15CAEB3:     Set var_98 = Me.Txt
  loc_15CAEB9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C, var_A4)
  loc_15CAEC1:     3 = var_9C.Text
  loc_15CAECE:     var_438 = Val(var_A4)
  loc_15CAED7:     var_B8 = "V_Type"
  loc_15CAEF3:     var_F8 = var_88.Fields.Item(var_B8).Value
  loc_15CAF1E:     Proc_6_7_F25D88(var_1A8, CVar(var_88.Fields.Item("Date_From")), var_438)
  loc_15CAF51:     var_144 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_438) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_15CAF83:     unk_4E71CE.Execute CStr(CVar(var_144 & MemVar_1F92078 & "') and V_Type='") & var_F8 & "' and Date_From=" & var_1A8), var_1C8, -1
  loc_15CAFBD:   End If
  loc_15CAFBD: End If
  loc_15CAFC3: unk_4E71CE.CommitTrans
  loc_15CAFCA: var_8A = 0
  loc_15CAFDB: Set var_98 = Me.Txt
  loc_15CAFE1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_9C, var_A4, var_8A)
  loc_15CAFE9: var_188 = var_9C.Text
  loc_15CB006: Me.Requery -1
  loc_15CB030: Me.Find "SearchCode ='" & "SearchCode ='" & var_A4 & "'", 0, 1
  loc_15CB040: Set var_98 = Me.TopCtrl1
  loc_15CB046: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_B8)
  loc_15CB04E: var_A4 = CStr(-1)
  loc_15CB05F: If ("SearchCode ='" & var_A4 = "Add") Then
  loc_15CB062:   Call TopCtrl1_UnknownEvent_A()
  loc_15CB067:   Exit Sub
  loc_15CB068: End If
  loc_15CB08B: Call Proc_88_51_F338EC(Proc_5_1_100CB50("INI", Me), global_56)
  loc_15CB09B: Set var_88 = Nothing
  loc_15CB09E: Exit Sub
  loc_15CB09F: ' Referenced from: 15C9F34
  loc_15CB0A5: If (var_8A = &HFF) Then
  loc_15CB0AE:   unk_4E71CE.RollbackTrans
  loc_15CB0B3: End If
  loc_15CB0B3: Proc_6_60_E62BC4(var_F8)
  loc_15CB0B8: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 'F1ADDC
  'Data Table: 4E71B0
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  loc_F1ACFF: If (Me.RecordCount > 0) Then
  loc_F1AD1F:   var_A0 = Me.Fields.Item("Name")
  loc_F1AD3C:   Set var_A4 = Me.TxtGrid
  loc_F1AD42:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_A8)
  loc_F1AD4A:   var_A8.Text = CStr(var_A0.Value)
  loc_F1AD60: End If
  loc_F1AD6D: Call Proc_88_49_1459078(0, 0)
  loc_F1AD7E: Set var_8C = Me.TxtGrid
  loc_F1AD84: Call 0.Method_DGItem_UnknownEvent_90 (0, var_A0)
  loc_F1AD9E: If (var_A0.Visible = &HFF) Then
  loc_F1ADAA:   Set var_8C = Me.TxtGrid
  loc_F1ADB0:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_A0)
  loc_F1ADB8:   var_A0.SetFocus
  loc_F1ADC4: End If
  loc_F1ADD3: Me.DGItem.Visible = False
  loc_F1ADDB: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E71388
  'Data Table: 4E71B0
  loc_E71346: Proc_6_153_E91194(Me.DGItem, arg_14)
  loc_E7135D: Set var_8C = Me.FGPoint
  loc_E71377: Proc_6_138_106D6F8(Me.DGItem, global_52, 0)
  loc_E71385: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E63ABC
  'Data Table: 4E71B0
  Dim FGPoint_UnknownEvent_9FF As Variant
  loc_E63A8C: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E63A8F:   Call DGItem_UnknownEvent_9()
  loc_E63A94: End If
  loc_E63AB0: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_E63AB3:   Call DGDepart_UnknownEvent_9()
  loc_E63AB8: End If
  loc_E63AB8: Exit Sub
  loc_E63AB9: FGPoint_UnknownEvent_9FF = CVar() 'Integer
End Sub

Public Sub SEARCHBACK(MyValue) 'E960A8
  'Data Table: 4E71B0
  Dim Me As Recordset15
  loc_E96036: On Error Goto loc_E9609F
  loc_E9603F: Me.MoveFirst
  loc_E96069: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96091: Proc_5_0_110649C(&HFF, Me, global_56)
  loc_E96099: Call Proc_88_52_150EA74(0)
  loc_E9609E: Exit Sub
  loc_E9609F: ' Referenced from: E96036
  loc_E9609F: Proc_6_60_E62BC4(var_A0)
  loc_E960A4: Exit Sub
End Sub

Public Sub Proc_88_47_131EB18
  'Data Table: 4E71B0
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_E4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_118 As String
  Dim var_12C As MSHFlexGrid
  loc_131E3AE: Set var_88 = Me.Txt
  loc_131E3B4: Call 0.Method_Proc_88_47_131EB180 (CInt(6), var_8C)
  loc_131E3D3: Me.DGDepart.Left = CVar(var_8C.Left)
  loc_131E3EF: Set var_B4 = Me.Txt
  loc_131E3F5: Call 0.Method_Proc_88_47_131EB180 (CInt(6), var_B8)
  loc_131E410: Set var_88 = Me.Txt
  loc_131E416: Call 0.Method_Proc_88_47_131EB180 (CInt(6), var_8C)
  loc_131E42E: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_131E43D: Me.DGDepart.Top = CVar(var_8C.Left)
  loc_131E486: Me.LblCurStockStr.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_131E49F: Set var_E4 = Me.FGrid
  loc_131E4BD: global_128 = CStr(CLng(Me.FGrid.BackColor))
  loc_131E4D6: var_E4.Width = CVar(CDbl(13250))
  loc_131E4E7: var_E4.Left = CVar(CDbl(200))
  loc_131E4F8: var_E4.Top = CVar(CDbl(1600))
  loc_131E509: var_E4.Cols = &HE
  loc_131E51A: var_E4.Height = CVar(CDbl(5160))
  loc_131E52B: var_E4.RowHeightMin = 0
  loc_131E533: var_A0 = CVar(CLng(0)) 'Long
  loc_131E538: var_F8 = &H190
  loc_131E544: LateIdCallSt
  loc_131E54C: var_A0 = 0
  loc_131E558: var_F8 = CVar(CLng(1)) 'Long
  loc_131E55D: var_118 = "Item Name"
  loc_131E566: LateIdCallSt
  loc_131E571: var_A0 = CVar(CLng(1)) 'Long
  loc_131E57C: var_F8 = CVar(CInt(1)) 'Integer
  loc_131E583: LateIdCallSt
  loc_131E58E: var_A0 = CVar(CLng(1)) 'Long
  loc_131E593: var_F8 = &HBB8
  loc_131E59F: LateIdCallSt
  loc_131E5A7: var_A0 = 0
  loc_131E5B3: var_F8 = CVar(CLng(2)) 'Long
  loc_131E5B8: var_118 = "Specification"
  loc_131E5C1: LateIdCallSt
  loc_131E5CC: var_A0 = CVar(CLng(2)) 'Long
  loc_131E5D7: var_F8 = CVar(CInt(1)) 'Integer
  loc_131E5DE: LateIdCallSt
  loc_131E5E9: var_A0 = CVar(CLng(2)) 'Long
  loc_131E5EE: var_F8 = &H6EA
  loc_131E5FA: LateIdCallSt
  loc_131E602: var_A0 = 0
  loc_131E60E: var_F8 = CVar(CLng(3)) 'Long
  loc_131E613: var_118 = "Qty"
  loc_131E61C: LateIdCallSt
  loc_131E627: var_A0 = CVar(CLng(3)) 'Long
  loc_131E632: var_F8 = CVar(CInt(7)) 'Integer
  loc_131E639: LateIdCallSt
  loc_131E644: var_A0 = CVar(CLng(3)) 'Long
  loc_131E64F: var_F8 = CVar(CInt(7)) 'Integer
  loc_131E656: LateIdCallSt
  loc_131E661: var_A0 = CVar(CLng(3)) 'Long
  loc_131E666: var_F8 = &H3E8
  loc_131E672: LateIdCallSt
  loc_131E67A: var_A0 = 0
  loc_131E686: var_F8 = CVar(CLng(4)) 'Long
  loc_131E68B: var_118 = "Unit"
  loc_131E694: LateIdCallSt
  loc_131E69F: var_A0 = CVar(CLng(4)) 'Long
  loc_131E6AA: var_F8 = CVar(CInt(1)) 'Integer
  loc_131E6B1: LateIdCallSt
  loc_131E6BC: var_A0 = CVar(CLng(4)) 'Long
  loc_131E6C1: var_F8 = &H352
  loc_131E6CD: LateIdCallSt
  loc_131E6D5: var_A0 = 0
  loc_131E6E1: var_F8 = CVar(CLng(5)) 'Long
  loc_131E6E6: var_118 = "Conv.Factor"
  loc_131E6EF: LateIdCallSt
  loc_131E6FA: var_A0 = CVar(CLng(5)) 'Long
  loc_131E705: var_F8 = CVar(CInt(7)) 'Integer
  loc_131E70C: LateIdCallSt
  loc_131E717: var_A0 = CVar(CLng(5)) 'Long
  loc_131E722: var_F8 = CVar(CInt(7)) 'Integer
  loc_131E729: LateIdCallSt
  loc_131E734: var_A0 = CVar(CLng(5)) 'Long
  loc_131E739: var_F8 = &H19
  loc_131E745: LateIdCallSt
  loc_131E74D: var_A0 = 0
  loc_131E759: var_F8 = CVar(CLng(6)) 'Long
  loc_131E75E: var_118 = "Wt.Qty"
  loc_131E767: LateIdCallSt
  loc_131E772: var_A0 = CVar(CLng(6)) 'Long
  loc_131E77D: var_F8 = CVar(CInt(7)) 'Integer
  loc_131E784: LateIdCallSt
  loc_131E78F: var_A0 = CVar(CLng(6)) 'Long
  loc_131E79A: var_F8 = CVar(CInt(7)) 'Integer
  loc_131E7A1: LateIdCallSt
  loc_131E7AC: var_A0 = CVar(CLng(6)) 'Long
  loc_131E7B1: var_F8 = &H3E8
  loc_131E7BD: LateIdCallSt
  loc_131E7C5: var_A0 = 0
  loc_131E7D1: var_F8 = CVar(CLng(7)) 'Long
  loc_131E7D6: var_118 = "Wt.Unit"
  loc_131E7DF: LateIdCallSt
  loc_131E7EA: var_A0 = CVar(CLng(7)) 'Long
  loc_131E7F5: var_F8 = CVar(CInt(1)) 'Integer
  loc_131E7FC: LateIdCallSt
  loc_131E807: var_A0 = CVar(CLng(7)) 'Long
  loc_131E80C: var_F8 = &H352
  loc_131E818: LateIdCallSt
  loc_131E820: var_A0 = 0
  loc_131E82C: var_F8 = CVar(CLng(8)) 'Long
  loc_131E831: var_118 = "Rate"
  loc_131E83A: LateIdCallSt
  loc_131E845: var_A0 = CVar(CLng(8)) 'Long
  loc_131E850: var_F8 = CVar(CInt(7)) 'Integer
  loc_131E857: LateIdCallSt
  loc_131E862: var_A0 = CVar(CLng(8)) 'Long
  loc_131E86D: var_F8 = CVar(CInt(7)) 'Integer
  loc_131E874: LateIdCallSt
  loc_131E87F: var_A0 = CVar(CLng(8)) 'Long
  loc_131E884: var_F8 = &H320
  loc_131E890: LateIdCallSt
  loc_131E898: var_A0 = 0
  loc_131E8A4: var_F8 = CVar(CLng(&HA)) 'Long
  loc_131E8A9: var_118 = "Tax Amt."
  loc_131E8B2: LateIdCallSt
  loc_131E8BD: var_A0 = CVar(CLng(&HA)) 'Long
  loc_131E8C8: var_F8 = CVar(CInt(7)) 'Integer
  loc_131E8CF: LateIdCallSt
  loc_131E8DA: var_A0 = CVar(CLng(&HA)) 'Long
  loc_131E8E5: var_F8 = CVar(CInt(7)) 'Integer
  loc_131E8EC: LateIdCallSt
  loc_131E8F7: var_A0 = CVar(CLng(&HA)) 'Long
  loc_131E8FC: var_F8 = &H3B6
  loc_131E908: LateIdCallSt
  loc_131E910: var_A0 = 0
  loc_131E91C: var_F8 = CVar(CLng(9)) 'Long
  loc_131E921: var_118 = "Goods Amt."
  loc_131E92A: LateIdCallSt
  loc_131E935: var_A0 = CVar(CLng(9)) 'Long
  loc_131E940: var_F8 = CVar(CInt(7)) 'Integer
  loc_131E947: LateIdCallSt
  loc_131E952: var_A0 = CVar(CLng(9)) 'Long
  loc_131E95D: var_F8 = CVar(CInt(7)) 'Integer
  loc_131E964: LateIdCallSt
  loc_131E96F: var_A0 = CVar(CLng(9)) 'Long
  loc_131E974: var_F8 = &H4B0
  loc_131E980: LateIdCallSt
  loc_131E988: var_A0 = 0
  loc_131E994: var_F8 = CVar(CLng(&HB)) 'Long
  loc_131E999: var_118 = "Total"
  loc_131E9A2: LateIdCallSt
  loc_131E9AD: var_A0 = CVar(CLng(&HB)) 'Long
  loc_131E9B8: var_F8 = CVar(CInt(7)) 'Integer
  loc_131E9BF: LateIdCallSt
  loc_131E9CA: var_A0 = CVar(CLng(&HB)) 'Long
  loc_131E9D5: var_F8 = CVar(CInt(7)) 'Integer
  loc_131E9DC: LateIdCallSt
  loc_131E9E7: var_A0 = CVar(CLng(&HB)) 'Long
  loc_131E9EC: var_F8 = &H44C
  loc_131E9F8: LateIdCallSt
  loc_131EA00: var_A0 = 0
  loc_131EA0C: var_F8 = CVar(CLng(&HC)) 'Long
  loc_131EA11: var_118 = "Item Code"
  loc_131EA1A: LateIdCallSt
  loc_131EA25: var_A0 = CVar(CLng(&HC)) 'Long
  loc_131EA30: var_F8 = CVar(CInt(1)) 'Integer
  loc_131EA37: LateIdCallSt
  loc_131EA42: var_A0 = CVar(CLng(&HC)) 'Long
  loc_131EA47: var_F8 = 0
  loc_131EA53: LateIdCallSt
  loc_131EA5B: var_A0 = 0
  loc_131EA67: var_F8 = CVar(CLng(&HD)) 'Long
  loc_131EA6C: var_118 = "Tax Stru"
  loc_131EA75: LateIdCallSt
  loc_131EA80: var_A0 = CVar(CLng(&HD)) 'Long
  loc_131EA8B: var_F8 = CVar(CInt(1)) 'Integer
  loc_131EA92: LateIdCallSt
  loc_131EA9D: var_A0 = CVar(CLng(&HD)) 'Long
  loc_131EAA2: var_F8 = 0
  loc_131EAAE: LateIdCallSt
  loc_131EAB8: Set var_E4 = Nothing 
  loc_131EAC0: Set var_12C = Me.FGCat
  loc_131EAD7: global_128 = CStr(CLng(var_12C.BackColor))
  loc_131EAE4: var_A0 = CVar(CLng(3)) 'Long
  loc_131EAE9: var_F8 = &H7D0
  loc_131EAF5: LateIdCallSt
  loc_131EB09: var_12C.Cols = 7
  loc_131EB10: Set var_12C = Nothing 
  loc_131EB14: Exit Sub
End Sub

Public Sub Proc_88_48_11C79A4(arg_C) '11C79A4
  'Data Table: 4E71B0
  Dim var_8C As Recordset15
  loc_11C7531: Set var_8C = arg_C 
  loc_11C7559: var_8C.Fields.Append "Docid", &HC8, &H15
  loc_11C7585: var_8C.Fields.Append "IndNo", 3, 0
  loc_11C75B1: var_8C.Fields.Append "VType", &HC8, 8
  loc_11C75DD: var_8C.Fields.Append "IndDate", &H85, 0
  loc_11C7609: var_8C.Fields.Append "Remark", &HC8, &H32
  loc_11C7635: var_8C.Fields.Append "Sno", 3, 0
  loc_11C7661: var_8C.Fields.Append "ItemCode", &HC8, 8
  loc_11C768D: var_8C.Fields.Append "ItemName", &HC8, &H50
  loc_11C76B9: var_8C.Fields.Append "SaleIssueUnit", &HC8, &HA
  loc_11C76E5: var_8C.Fields.Append "PurchaseUnit", &HC8, &HA
  loc_11C7711: var_8C.Fields.Append "Specification", &HC8, &H23
  loc_11C773D: var_8C.Fields.Append "Qty", 5, 0
  loc_11C7769: var_8C.Fields.Append "Rate", 5, 0
  loc_11C7795: var_8C.Fields.Append "Amount", 5, 0
  loc_11C77C1: var_8C.Fields.Append "QtyPass", 5, 0
  loc_11C77ED: var_8C.Fields.Append "Remarks", &HC8, &HFF
  loc_11C7819: var_8C.Fields.Append "NoDays", 5, 0
  loc_11C7845: var_8C.Fields.Append "EmpNameLine", &HC8, &H23
  loc_11C7871: var_8C.Fields.Append "Employee", &HC8, &H23
  loc_11C789D: var_8C.Fields.Append "Department", &HC8, &H19
  loc_11C78C9: var_8C.Fields.Append "Description", &HC8, &H1E
  loc_11C78F5: var_8C.Fields.Append "DepNameLine", &HC8, &H19
  loc_11C7921: var_8C.Fields.Append "MachName", &HC8, &H19
  loc_11C794D: var_8C.Fields.Append "CurStk", 5, 0
  loc_11C795D: var_8C.CursorType = 3
  loc_11C796A: var_8C.LockType = 3
  loc_11C7989: var_8C.Open var_A0, var_B0, -1
  loc_11C7990: Set var_8C = Nothing 
  loc_11C7997: Set var_88 = arg_C 
  loc_11C799B: Proc_88_48_11C79A4 = -1
  loc_11C79A1: VCallFPR8
End Sub

Public Sub Proc_88_49_1459078
  'Data Table: 4E71B0
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_120 As Variant
  Dim var_148 As MSHFlexGrid
  Dim var_B0 As String
  Dim var_88 As Integer
  Dim var_184 As Double
  Dim var_1A0 As Variant
  Dim var_1A4 As MSHFlexGrid
  loc_145850F: var_A0 = CLng(Me.FGrid.Col)
  loc_145851F: If (var_A0 = CLng(1)) Then
  loc_1458542:   var_A6 = Me.EOF
  loc_145856F:   Set var_8C = Me.TxtGrid
  loc_1458575:   Call 0.Method_Proc_88_49_14590780 (0, var_AC, var_B0)
  loc_145857D:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_1458595:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_14585AB:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14585B3:     var_E0 = CVar(CLng(1)) 'Long
  loc_14585B8:     var_100 = vbNullString
  loc_14585C2:     Set var_AC = Me.FGrid
  loc_14585C8:     LateIdCallSt
  loc_14585ED:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14585F5:     var_E0 = CVar(CLng(&HC)) 'Long
  loc_14585FA:     var_100 = vbNullString
  loc_1458604:     Set var_AC = Me.FGrid
  loc_145860A:     LateIdCallSt
  loc_145864C:     LateIdCallSt
  loc_1458686:     Proc_6_51_EF39F0(var_120, 0, CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, vbNullString, CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)))
  loc_145868F:     var_140 = CVar(CStr(var_120)) 'String
  loc_1458697:     Set var_AC = Me.FGrid
  loc_145869D:     LateIdCallSt
  loc_14586CA:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14586D2:     var_E0 = CVar(CLng(7)) 'Long
  loc_14586D7:     var_100 = vbNullString
  loc_14586E1:     Set var_AC = Me.FGrid
  loc_14586E7:     LateIdCallSt
  loc_145870C:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1458714:     var_E0 = CVar(CLng(&HD)) 'Long
  loc_1458719:     var_100 = vbNullString
  loc_1458723:     Set var_AC = Me.FGrid
  loc_1458729:     LateIdCallSt
  loc_145873E:   Else
  loc_1458741:     Call Proc_88_55_FC7E48(var_A6, var_AC, var_100, var_E0, var_C0, var_AC, var_100, var_E0)
  loc_145874C:     If (var_A6 = 0) Then
  loc_1458754:       Proc_88_49_1459078 = 0
  loc_145875A:     End If
  loc_145877D:     var_C0 = "Name"
  loc_1458794:     var_AC = Me.Fields.Item(var_C0)
  loc_14587A5:     var_130 = CVar(Proc_6_38_E68A98(CVar(var_AC), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_C0, var_AC, var_140)) 'String
  loc_14587B3:     LateIdCallSt
  loc_1458818:     var_130 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")), CVar(CLng(&HC)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_130)) 'String
  loc_1458826:     LateIdCallSt
  loc_145884A:     var_120 = Me.FGrid.Row
  loc_145888B:     var_130 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")), CVar(CLng(4)), CVar(CLng(var_120)), Me.FGrid, var_130)) 'String
  loc_1458899:     LateIdCallSt
  loc_14588BD:     var_130 = Me.FGrid.Row
  loc_14588FC:     Proc_6_51_EF39F0(var_120, CVar(Me.Fields.Item("COnvFactor")), CVar(CLng(5)), CVar(CLng(var_130)), Me.FGrid, var_130)
  loc_1458913:     LateIdCallSt
  loc_145897A:     var_130 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("WtUnit")), CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Me.FGrid.Row)))) 'String
  loc_1458988:     LateIdCallSt
  loc_14589ED:     var_130 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_130)) 'String
  loc_14589F5:     Set var_148 = Me.FGrid
  loc_14589FB:     LateIdCallSt
  loc_1458A8A:     LateIdCallSt
  loc_1458AA8:     Call Proc_88_56_11CF900(Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))), 1, 1, CVar(CLng(8)), CVar(CLng(Me.FGrid.Row)), Me.FGrid)
  loc_1458AAD:   End If
  loc_1458AC0:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1458AC8:   var_E0 = CVar(CLng(&HC)) 'Long
  loc_1458AD1:   Set var_AC = Me.FGrid
  loc_1458AD7:   var_120 = var_AC.TextMatrix)
  loc_1458AED:   var_130 = Me.FGrid.Row
  loc_1458B0D:   var_140 = Me.FGrid.TextMatrix)
  loc_1458B18:   var_B0 = CStr(var_140)
  loc_1458B4B:   var_88 = Proc_96_27_11F27DC(CStr(var_120), Val(var_B0), MemVar_1F92070, MemVar_1F92078 & "PURC", global_80, Val(var_B0), CVar(CLng(3)), CVar(CLng(var_130)))
  loc_1458B7D:   Me.LblCurStockStr.Caption = global_80
  loc_1458B88: Else
  loc_1458B8F:   If Not (var_A0 = CLng(3)) Then
  loc_1458B99:     If (var_A0 = CLng(5)) Then
  loc_1458B9C:     End If
  loc_1458BB9:     If (CLng(Me.FGrid.Col) = CLng(5)) Then
  loc_1458BC8:       Set var_8C = Me.TxtGrid
  loc_1458BCE:       Call 0.Method_Proc_88_49_14590780 (0, var_AC, var_B0, var_88, var_120, var_E0)
  loc_1458BD6:       var_C0 = var_AC.Text
  loc_1458BE3:       var_184 = Val(var_B0)
  loc_1458BFB:       If (global_72 <> CDbl(var_184)) Then
  loc_1458C2D:         If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_120, var_130, var_140) = 7) Then
  loc_1458C38:           var_B0 = CStr(global_72)
  loc_1458C44:           Set var_8C = Me.TxtGrid
  loc_1458C4A:           Call 0.Method_Proc_88_49_14590780 (0, var_AC, var_B0, var_184, var_130)
  loc_1458C52:           var_AC.Text = var_AC
  loc_1458C61:         End If
  loc_1458C61:       End If
  loc_1458C61:     End If
  loc_1458C6D:     Set var_8C = Me.TxtGrid
  loc_1458C73:     Call 0.Method_Proc_88_49_14590780 (0, var_AC, var_B0)
  loc_1458C7B:     var_100 = var_AC.Text
  loc_1458C9E:     var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1458CB6:     var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1458CE3:     var_1A0 = CVar(CStr(Format(CVar(Val(var_B0)), "0.000"))) 'String
  loc_1458CEB:     Set var_1A4 = Me.FGrid
  loc_1458CF1:     LateIdCallSt
  loc_1458D2B:     var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1458D55:     var_184 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1458DC9:     LateIdCallSt
  loc_1458DF6:     Call Proc_88_56_11CF900(Me.FGrid, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * var_184))), CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), var_184, CVar(CLng(5)))
  loc_1458E0E:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1458E16:     var_E0 = CVar(CLng(&HC)) 'Long
  loc_1458E1F:     Set var_AC = Me.FGrid
  loc_1458E25:     var_120 = var_AC.TextMatrix)
  loc_1458E66:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_1458E99:     var_88 = Proc_96_27_11F27DC(CStr(var_120), Val(var_B0), MemVar_1F92070, MemVar_1F92078 & "PURC", global_80, Val(var_B0), CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)))
  loc_1458ECB:     Me.LblCurStockStr.Caption = global_80
  loc_1458ED6:   Else
  loc_1458EDD:     If (var_A0 = CLng(8)) Then
  loc_1458EEC:       Set var_8C = Me.TxtGrid
  loc_1458EF2:       Call 0.Method_Proc_88_49_14590780 (0, var_AC, var_B0, var_88, var_120, var_E0)
  loc_1458EFA:       var_C0 = var_AC.Text
  loc_1458F07:       var_184 = Val(var_B0)
  loc_1458F70:       LateIdCallSt
  loc_1458F97:       Call Proc_88_56_11CF900(Me.FGrid, CVar(CStr(Format(CVar(var_184), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_1458F9F:     Else
  loc_1458FA6:       If (var_A0 = CLng(2)) Then
  loc_1458FE5:         Set var_8C = Me.TxtGrid
  loc_1458FEB:         Call 0.Method_Proc_88_49_14590780 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_184)
  loc_1458FF3:         var_100 = var_AC.Text
  loc_1458FFB:         var_130 = CVar(var_B0) 'String
  loc_1459003:         Set var_1A4 = Me.FGrid
  loc_1459009:         LateIdCallSt
  loc_1459027:       End If
  loc_1459027:     End If
  loc_1459027:   End If
  loc_1459027: End If
  loc_1459032: If (arg_10 = 0) Then
  loc_1459039:   Set var_8C = Me.FGrid
  loc_1459055:   Set var_8C = Me.TxtGrid
  loc_145905B:   Call 0.Method_Proc_88_49_14590780 (0, var_AC, 0, FGrid.DispID_8001, &HFF, var_1A4)
  loc_1459063:   var_AC.Visible = var_130
  loc_145906F: End If
  loc_145906F: Proc_88_49_1459078 = var_1A4
End Sub

Public Sub Proc_88_50_F6A674
  'Data Table: 4E71B0
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F6A546: Set var_8C = Me.Txt
  loc_F6A54C: Call 0.Method_Proc_88_50_F6A674C (var_8E, var_86)
  loc_F6A55C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F6A572:   Set var_8C = Me.Txt
  loc_F6A578:   Call 0.Method_Proc_88_50_F6A6740 (CInt(var_86), var_98)
  loc_F6A580:   var_98.Text = vbNullString
  loc_F6A59C:   Set var_8C = Me.Txt
  loc_F6A5A2:   Call 0.Method_Proc_88_50_F6A6740 (CInt(var_86), var_98)
  loc_F6A5AA:   var_98.Tag = vbNullString
  loc_F6A5B9: Next var_92 'Byte
  loc_F6A5CC: Me.LblCurStockStr.Caption = vbNullString
  loc_F6A5E1: Me.LblVPrefix.Caption = vbNullString
  loc_F6A5FC: Me.FGrid.Rows = 1
  loc_F6A619: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F6A621: Set var_98 = Me.FGrid
  loc_F6A650: Me.FGrid.FixedRows = 1
  loc_F6A66B: Me.FGCat.Rows = 0
  loc_F6A673: Exit Sub
End Sub

Public Sub Proc_88_51_F338EC(arg_C) 'F338EC
  'Data Table: 4E71B0
  Dim var_98 As TextBox
  loc_F337D6: Set var_8C = Me.Txt
  loc_F337DC: Call 0.Method_Proc_88_51_F338ECC (var_8E, var_86)
  loc_F337EC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F33802:   Set var_8C = Me.Txt
  loc_F33808:   Call 0.Method_Proc_88_51_F338EC0 (CInt(var_86), var_98)
  loc_F33810:   var_98.Enabled = arg_C
  loc_F3381F: Next var_92 'Byte
  loc_F33832: Set var_8C = Me.Txt
  loc_F33838: Call 0.Method_Proc_88_51_F338EC0 (CInt(3), var_98)
  loc_F33840: var_98.Enabled = False
  loc_F33859: Set var_8C = Me.Txt
  loc_F3385F: Call 0.Method_Proc_88_51_F338EC0 (CInt(7), var_98)
  loc_F33867: var_98.Enabled = False
  loc_F33880: Set var_8C = Me.Txt
  loc_F33886: Call 0.Method_Proc_88_51_F338EC0 (CInt(5), var_98)
  loc_F3388E: var_98.Enabled = False
  loc_F338A7: Set var_8C = Me.Txt
  loc_F338AD: Call 0.Method_Proc_88_51_F338EC0 (CInt(2), var_98)
  loc_F338B5: var_98.Enabled = False
  loc_F338CE: Set var_8C = Me.Txt
  loc_F338D4: Call 0.Method_Proc_88_51_F338EC0 (CInt(1), var_98)
  loc_F338DC: var_98.Enabled = False
  loc_F338E8: Exit Sub
End Sub

Public Sub Proc_88_52_150EA74
  'Data Table: 4E71B0
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_10C As String
  Dim unk_4E71CE As Connection15
  Dim var_88 As Recordset15
  Dim var_C8 As Variant
  Dim var_134 As TextBox
  Dim var_130 As Variant
  Dim var_8A As Integer
  Dim var_12C As Variant
  Dim var_158 As Variant
  Dim var_11C As Variant
  Dim var_148 As Variant
  Dim var_1F8 As MSHFlexGrid
  Dim var_200 As Double
  Dim var_94 As Double
  Dim var_9C As Double
  loc_150DB98: On Error Goto loc_150EA6B
  loc_150DBB2: If (Me.RecordCount > 0) Then
  loc_150DBC2:   Me.LblCurStockStr.Caption = vbNullString
  loc_150DBD7:   var_D8 = "Select I.*,Description,d.Name as DepartmentName From (Indent I Inner join Voucher_Type VT on Vt.V_type=I.VType) Inner join GodownMast D on D.CODE=I.Department where DocID='"
  loc_150DC20:   unk_4E71CE.Execute CStr(var_D8 & Me.Fields.Item("SearchCode").Value & "'"), var_12C, -1
  loc_150DC2B:   Set var_88 = var_130
  loc_150DC7B:   Set var_130 = Me.Txt
  loc_150DC81:   Call 0.Method_Proc_88_52_150EA740 (CInt(3), var_134)
  loc_150DC89:   var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")))
  loc_150DCD2:   Me.LblVPrefix.Caption = Proc_6_38_E68A98(CVar(var_88.Fields.Item("vPrefix")))
  loc_150DD1A:   Set var_130 = Me.Txt
  loc_150DD20:   Call 0.Method_Proc_88_52_150EA740 (CInt(0), var_134)
  loc_150DD28:   var_134.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("vType")))
  loc_150DD72:   Set var_130 = Me.Txt
  loc_150DD78:   Call 0.Method_Proc_88_52_150EA740 (CInt(0), var_134)
  loc_150DD80:   var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Description")))
  loc_150DDCA:   Set var_130 = Me.Txt
  loc_150DDD0:   Call 0.Method_Proc_88_52_150EA740 (CInt(6), var_134)
  loc_150DDD8:   var_134.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Department")))
  loc_150DE22:   Set var_130 = Me.Txt
  loc_150DE28:   Call 0.Method_Proc_88_52_150EA740 (CInt(6), var_134)
  loc_150DE30:   var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DepartmentName")))
  loc_150DE7A:   Set var_130 = Me.Txt
  loc_150DE80:   Call 0.Method_Proc_88_52_150EA740 (CInt(1), var_134)
  loc_150DE88:   var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("VNo")))
  loc_150DEB3:   var_B8 = var_88.Fields.Item("VDate")
  loc_150DECA:   If IsNull(CVar(var_B8)) Then
  loc_150DEDB:     Set var_A4 = Me.Txt
  loc_150DEE1:     Call 0.Method_Proc_88_52_150EA740 (CInt(2), var_B8)
  loc_150DEE9:     var_B8.Text = vbNullString
  loc_150DEF8:   Else
  loc_150DF31:     Set var_130 = Me.Txt
  loc_150DF37:     Call 0.Method_Proc_88_52_150EA740 (CInt(2), var_134)
  loc_150DF3F:     var_134.Text = CStr(var_88.Fields.Item("VDate").Value)
  loc_150DF55:   End If
  loc_150DF8B:   Set var_130 = Me.Txt
  loc_150DF91:   Call 0.Method_Proc_88_52_150EA740 (CInt(4), var_134)
  loc_150DF99:   var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remarks")))
  loc_150DFBC:   Me.FGrid.Redraw = False
  loc_150DFD7:   Me.FGrid.Rows = 1
  loc_150DFE1:   var_8A = 1
  loc_150DFF8:   var_10C = "Select I1.*,IT.Name as ItemName " & "From (Indent1 I1 Inner join ItemMast IT on IT.Code=I1.Item And IT.ItemType='Store') "
  loc_150E046:   unk_4E71CE.Execute CStr(CVar(var_10C & "Where DocID='") & Me.Fields.Item("SearchCode").Value & "' Order By I1.Sno"), var_148, -1
  loc_150E051:   Set var_88 = var_130
  loc_150E0AB:   var_130 = var_88.Fields
  loc_150E114:   var_198 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), var_130) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_130.Item("U_AE")), var_8A) = "E"), "Modified By : ", "User : "))
  loc_150E159:   Me.LblUser.Caption = CStr(var_130 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_198)))
  loc_150E234:   var_198 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_150E279:   Me.LblLDt.Caption = CStr(var_198 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_150E2C5:   If (var_88.RecordCount > 0) Then
  loc_150E2C8:     ' Referenced from: 150E91B
  loc_150E2D7:     If Not(var_88.EOF) Then
  loc_150E2DA:       var_B4 = vbNullString
  loc_150E2E4:       Set var_A4 = Me.FGrid
  loc_150E2F9:       Set var_1F8 = Me.FGrid
  loc_150E300:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_150E308:       var_F8 = CVar(CLng(0)) 'Long
  loc_150E312:       var_C8 = CVar(CStr(var_8A)) 'String
  loc_150E319:       LateIdCallSt
  loc_150E328:       var_D8 = CVar(CLng(var_8A)) 'Long
  loc_150E330:       var_11C = CVar(CLng(&HC)) 'Long
  loc_150E360:       var_E8 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_150E367:       LateIdCallSt
  loc_150E3B6:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8A)), var_1F8, var_E8, CVar(CLng(1)), CVar(CLng(var_8A)))) 'String
  loc_150E3BD:       LateIdCallSt
  loc_150E408:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Specification")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1F8, var_E8, var_1F8)) 'String
  loc_150E40F:       LateIdCallSt
  loc_150E447:       Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("qty")), var_1F8, var_E8, CVar(var_88.Fields.Item("qty")))
  loc_150E450:       var_F8 = CVar(CLng(var_8A)) 'Long
  loc_150E458:       var_158 = CVar(CLng(3)) 'Long
  loc_150E488:       LateIdCallSt
  loc_150E4C6:       Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("Rate")), var_1F8, CVar(CStr(Format(var_E8, "0.000"))), 1, 1)
  loc_150E4CF:       var_F8 = CVar(CLng(var_8A)) 'Long
  loc_150E507:       LateIdCallSt
  loc_150E545:       Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("TaxAmt")), var_1F8, CVar(CStr(Format(var_E8, "0.00"))), 1, 1, CVar(CLng(8)))
  loc_150E54E:       var_F8 = CVar(CLng(var_8A)) 'Long
  loc_150E586:       LateIdCallSt
  loc_150E5C4:       Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("Amount")), var_1F8, CVar(CStr(Format(var_E8, "0.00"))), 1, 1, CVar(CLng(&HA)))
  loc_150E5CD:       var_F8 = CVar(CLng(var_8A)) 'Long
  loc_150E5D5:       var_158 = CVar(CLng(9)) 'Long
  loc_150E5FE:       var_148 = CVar(CStr(Format(var_E8, "0.00"))) 'String
  loc_150E605:       LateIdCallSt
  loc_150E621:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_150E644:       var_200 = Val(CStr(var_1F8.TextMatrix)))
  loc_150E64E:       var_94 = (var_94 + var_200)
  loc_150E65A:       var_B4 = "Total"
  loc_150E67D:       Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item(var_B4)), var_94, var_200, CVar(CLng(9)), var_B4, var_1F8)
  loc_150E686:       var_F8 = CVar(CLng(var_8A)) 'Long
  loc_150E68E:       var_158 = CVar(CLng(&HB)) 'Long
  loc_150E6B7:       var_148 = CVar(CStr(Format(var_E8, "0.00"))) 'String
  loc_150E6BE:       LateIdCallSt
  loc_150E6DA:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_150E6FD:       var_200 = Val(CStr(var_1F8.TextMatrix)))
  loc_150E707:       var_9C = (var_9C + var_200)
  loc_150E724:       var_B4 = "Unit"
  loc_150E749:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_B4)), CVar(CLng(4)), CVar(CLng(var_8A)), var_9C, var_200, CVar(CLng(&HB)), var_B4)) 'String
  loc_150E750:       LateIdCallSt
  loc_150E788:       Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("COnvFactor")), var_1F8, var_E8, var_1F8)
  loc_150E791:       var_F8 = CVar(CLng(var_8A)) 'Long
  loc_150E7C9:       LateIdCallSt
  loc_150E807:       Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("WTQty")), var_1F8, CVar(CStr(Format(var_E8, "0.000"))), 1, 1, CVar(CLng(5)))
  loc_150E810:       var_F8 = CVar(CLng(var_8A)) 'Long
  loc_150E841:       var_148 = CVar(CStr(Format(var_E8, "0.000"))) 'String
  loc_150E848:       LateIdCallSt
  loc_150E899:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("WtUnit")), CVar(CLng(7)), CVar(CLng(var_8A)), var_1F8, var_148, 1, 1)) 'String
  loc_150E8A0:       LateIdCallSt
  loc_150E8DA:       var_B8 = var_88.Fields.Item("TaxStru")
  loc_150E8EB:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_B8), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_1F8, var_E8, CVar(CLng(6)))) 'String
  loc_150E8F2:       LateIdCallSt
  loc_150E906:       Set var_1F8 = Nothing 
  loc_150E910:       var_8A = (var_8A + 1)
  loc_150E916:       var_88.MoveNext
  loc_150E91B:       GoTo loc_150E2C8
  loc_150E91E:     End If
  loc_150E931:     Me.FGrid.FixedRows = 1
  loc_150E939:   End If
  loc_150E959:   var_E8 = Format(var_94, "0.00")
  loc_150E970:   Set var_A4 = Me.Txt
  loc_150E976:   Call 0.Method_Proc_88_52_150EA740 (CInt(7), var_B8, CStr(var_E8), 1, 1, var_8A, var_1F8)
  loc_150E97E:   var_B8.Text = var_E8
  loc_150E9CB:   Set var_A4 = Me.Txt
  loc_150E9D1:   Call 0.Method_Proc_88_52_150EA740 (CInt(5), var_B8, CStr(Format(var_9C, "0.00")), 1, 1)
  loc_150E9D9:   var_B8.Text = var_F8
  loc_150E9FD:   Me.FGrid.Redraw = True
  loc_150EA24:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_150EA27:     var_B4 = "1"
  loc_150EA31:     Set var_A4 = Me.FGrid
  loc_150EA42:   End If
  loc_150EA42:   var_B4 = 1
  loc_150EA55:   Me.FGrid.FixedRows = var_B4
  loc_150EA60: Else
  loc_150EA60:   Call Proc_88_50_F6A674(FGrid.DispID_10000, var_B4, var_F8)
  loc_150EA65: End If
  loc_150EA65: Call Proc_88_53_EB9A14(var_148, 1)
  loc_150EA6A: Exit Sub
  loc_150EA6B: ' Referenced from: 150DB98
  loc_150EA6B: Proc_6_60_E62BC4(1)
  loc_150EA70: Exit Sub
End Sub

Public Sub Proc_88_53_EB9A14
  'Data Table: 4E71B0
  loc_EB998C: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EB999E:   Me.DGDepart.Visible = False
  loc_EB99A6: End If
  loc_EB99C2: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EB99D4:   Me.DGItem.Visible = False
  loc_EB99DC: End If
  loc_EB99F8: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB9A0A:   Me.FGPoint.Visible = False
  loc_EB9A12: End If
  loc_EB9A12: Exit Sub
End Sub

Public Sub Proc_88_54_135DA5C(arg_C) '135DA5C
  'Data Table: 4E71B0
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_120 As Variant
  Dim var_A0 As String
  Dim var_A4 As String
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_8C As Recordset15
  Dim var_98 As Variant
  Dim var_D0 As Variant
  Dim var_94 As Long
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  Dim var_190 As TextBox
  Dim unk_4E71CE As Connection15
  Dim var_18C As Field20
  loc_135D260: Set var_98 = Me.Txt
  loc_135D266: Call 0.Method_Proc_88_54_135DA5C0 (CInt(0), var_9C)
  loc_135D28D: var_90 = var_9C.Tag
  loc_135D294: Set var_8C = New 
  loc_135D29F: Me.Recordset15.CursorLocation = 3
  loc_135D2AA: If (arg_C = &HFF) Then
  loc_135D2B8:   Set var_98 = Me.Txt
  loc_135D2BE:   Call 0.Method_Proc_88_54_135DA5C0 (CInt(2))
  loc_135D2CD:   Proc_6_7_F25D88(var_D0, CVar(var_9C))
  loc_135D2F0:   var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_135D319:   var_F0 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") & var_D0 
  loc_135D32A:   var_8C.Open var_F0 & " Order By VP.Date_From DESC", CVar(MemVar_1F92044), 2
  loc_135D34F: Else
  loc_135D35A:   Set var_98 = Me.Txt
  loc_135D360:   Call 0.Method_Proc_88_54_135DA5C0 (CInt(2), var_9C, 3)
  loc_135D36F:   Proc_6_7_F25D88(var_D0, CVar(var_9C))
  loc_135D392:   var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_135D3BB:   var_F0 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") & var_D0 
  loc_135D3CC:   var_8C.Open var_F0 & " Order By VP.Date_From DESC", CVar(MemVar_1F92044), 2
  loc_135D3EE: End If
  loc_135D402: If (var_8C.RecordCount > 0) Then
  loc_135D41F:   var_9C = var_8C.Fields.Item("Number_Method")
  loc_135D441:   If (var_9C.Value = "Automatic") Then
  loc_135D451:     Set var_98 = Me.Txt
  loc_135D457:     Call 0.Method_Proc_88_54_135DA5C0 (CInt(1), var_9C, 0, 3)
  loc_135D45F:     var_9C.Enabled = True
  loc_135D496:     var_A0 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_135D49C:     global_116 = var_A0
  loc_135D4B3:     If (arg_C = &HFF) Then
  loc_135D4D0:       var_9C = var_8C.Fields.Item("start_srl_no")
  loc_135D4E5:       var_D0 = (var_9C.Value + 1)
  loc_135D4EB:       var_94 = CLng(var_D0)
  loc_135D4FF:     Else
  loc_135D50D:       Set var_98 = Me.Txt
  loc_135D513:       Call 0.Method_Proc_88_54_135DA5C0 (CInt(1), var_9C, var_A0)
  loc_135D51B:       var_94 = var_9C.Text
  loc_135D529:       var_94 = CLng(Val(var_A0))
  loc_135D536:     End If
  loc_135D539:   Else
  loc_135D547:     Set var_98 = Me.Txt
  loc_135D54D:     Call 0.Method_Proc_88_54_135DA5C0 (CInt(1), var_9C, var_A0)
  loc_135D555:     var_94 = var_9C.Text
  loc_135D57F:     If (CDbl(Val(CStr(Val(var_A0)))) = CDbl(0)) Then
  loc_135D59C:       var_9C = var_8C.Fields.Item("start_srl_no")
  loc_135D5B1:       var_D0 = (var_9C.Value + 1)
  loc_135D5B7:       var_94 = CLng(var_D0)
  loc_135D5C8:     End If
  loc_135D5DB:     Set var_98 = Me.Txt
  loc_135D5E1:     Call 0.Method_Proc_88_54_135DA5C0 (CInt(1), var_9C, CStr(var_94))
  loc_135D5E9:     var_9C.Text = var_94
  loc_135D605:     Set var_98 = Me.Txt
  loc_135D60B:     Call 0.Method_Proc_88_54_135DA5C0 (CInt(1), var_9C, &HFF)
  loc_135D613:     var_9C.Enabled = True
  loc_135D61F:   End If
  loc_135D61F: End If
  loc_135D639: var_9C = var_8C.Fields.Item("Number_Method")
  loc_135D65B: If (var_9C.Value = "Automatic") Then
  loc_135D682:   var_C0 = Space((5 - Len(var_90)))
  loc_135D68A:   var_E0 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2)) + var_9C.Value)
  loc_135D694:   var_F0 = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + CVar(var_90))
  loc_135D6A8:   var_110 = Space((5 - Len(global_116)))
  loc_135D6B0:   var_138 = (var_F0 + var_F0 & " Order By VP.Date_From DESC")
  loc_135D6BD:   var_148 = (var_138 + CVar(global_116))
  loc_135D6CB:   var_A4 = CStr(var_94)
  loc_135D6D3:   var_158 = Space((8 - Len(var_A4)))
  loc_135D6DB:   var_168 = (var_148 + var_158)
  loc_135D6E7:   var_188 = (var_168 + CVar(CStr(var_94)))
  loc_135D6F2:   global_112 = CStr(var_188)
  loc_135D728:   Me.LblVPrefix.Caption = global_116
  loc_135D741:   Set var_98 = Me.Txt
  loc_135D747:   Call 0.Method_Proc_88_54_135DA5C0 (CInt(3), var_9C)
  loc_135D74F:   var_9C.Text = global_112
  loc_135D76E:   Set var_98 = Me.Txt
  loc_135D774:   Call 0.Method_Proc_88_54_135DA5C0 (CInt(1), var_9C)
  loc_135D77C:   var_9C.Text = CStr(var_94)
  loc_135D791:   var_88 = global_112
  loc_135D797: Else
  loc_135D7AB:   var_D0 = CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_135D7BB:   var_C0 = Space((5 - Len(var_90)))
  loc_135D7C3:   var_E0 = (var_D0 + var_9C.Value)
  loc_135D7CD:   var_F0 = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + CVar(var_90))
  loc_135D7E1:   var_110 = Space((5 - Len(global_116)))
  loc_135D7E9:   var_138 = (var_F0 + var_F0 & " Order By VP.Date_From DESC")
  loc_135D7F6:   var_148 = (var_138 + CVar(global_116))
  loc_135D80D:   Set var_98 = Me.Txt
  loc_135D813:   Call 0.Method_Proc_88_54_135DA5C0 (CInt(1), var_9C, var_A4)
  loc_135D81B:   8 = var_9C.Text
  loc_135D828:   var_158 = Space((var_148 - Len(var_A4)))
  loc_135D830:   var_168 = (var_9C + var_158)
  loc_135D842:   Set var_18C = Me.Txt
  loc_135D848:   Call 0.Method_Proc_88_54_135DA5C0 (CInt(1), var_190)
  loc_135D85B:   var_188 = (var_168 + CVar(var_190.Text))
  loc_135D866:   global_112 = CStr(var_188)
  loc_135D89D:   var_120 = 0
  loc_135D8BD:   var_A0 = "SELECT COUNT(*) FROM INDENT WHERE DOCID='" & global_112
  loc_135D8CD:   unk_4E71CE.Execute var_A0 & "'", var_9C.Value, -1
  loc_135D8D5:   var_98 = var_98.Fields
  loc_135D8DD:   var_120 = var_9C.Item(var_9C)
  loc_135D8E5:   var_18C = var_18C.Value
  loc_135D90C:   If (var_D0 > 0) Then
  loc_135D91B:     If (CInt(global_64) = 0) Then
  loc_135D929:       var_D0 = "Validation"
  loc_135D93F:       MsgBox("Indent Number Already Exists. It will Be changed", &H40, var_D0, CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="), var_F0)
  loc_135D94F:     End If
  loc_135D956:     global_64 = CByte(1)
  loc_135D968:     Set var_98 = Me.Txt
  loc_135D96E:     Call 0.Method_Proc_88_54_135DA5C0 (CInt(1), var_9C, var_A0)
  loc_135D976:     global_64 = var_9C.Text
  loc_135D989:     var_A4 = CStr((Val(var_A0) + CDbl(1)))
  loc_135D997:     Set var_18C = Me.Txt
  loc_135D99D:     Call 0.Method_Proc_88_54_135DA5C0 (CInt(1), var_190)
  loc_135D9A5:     var_190.Text = var_A0 & "'"
  loc_135D9C4:     Call Proc_88_54_135DA5C(0, var_A0)
  loc_135D9D7:     Set var_98 = Me.Txt
  loc_135D9DD:     Call 0.Method_Proc_88_54_135DA5C0 (CInt(3), var_9C)
  loc_135D9E5:     var_9C.Text = var_A0
  loc_135D9F4:   End If
  loc_135DA0F:   Me.LblVPrefix.Caption = global_116
  loc_135DA28:   Set var_98 = Me.Txt
  loc_135DA2E:   Call 0.Method_Proc_88_54_135DA5C0 (CInt(3), var_9C, global_112)
  loc_135DA36:   var_9C.Text = CByte(0)
  loc_135DA48:   var_88 = global_112
  loc_135DA4B: End If
  loc_135DA50: Set var_8C = Nothing
  loc_135DA53: Proc_88_54_135DA5C = var_D0
End Sub

Public Sub Proc_88_55_FC7E48
  'Data Table: 4E71B0
  Dim var_CC As Variant
  Dim var_98 As MSHFlexGrid
  Dim var_F0 As Variant
  Dim var_DC As Variant
  Dim var_9C As TextBox
  loc_FC7CA2: var_92 = 1 'Byte
  loc_FC7CAF: Set var_98 = Me.TxtGrid
  loc_FC7CB5: Call 0.Method_Proc_88_55_FC7E480 (0)
  loc_FC7CDD: var_8C = CStr(Ucase(CVar(CStr(Trim(CVar(var_9C))))))
  loc_FC7D15: For var_E0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_E0 'Integer
  loc_FC7D39:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC7D3C:     GoTo loc_FC7E34
  loc_FC7D3F:   End If
  loc_FC7D43:   var_F0 = CVar(CLng(var_88)) 'Long
  loc_FC7D6D:   var_CC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC7D77:   var_DC = CVar(CStr(var_CC)) 'String
  loc_FC7DAC:   If ((var_8C = CStr(Ucase(var_DC))) And (CStr(Ucase(var_DC)) <> vbNullString)) Then
  loc_FC7DC5:     var_F0 = "Duplicate Item Not Allowed"
  loc_FC7DD0:     MsgBox(var_F0, &H40, "Validation", var_CC, var_DC)
  loc_FC7DEC:     Set var_98 = Me.TxtGrid
  loc_FC7DF2:     Call 0.Method_Proc_88_55_FC7E480 (0, var_9C, vbNullString, CVar(CLng(var_92)))
  loc_FC7DFA:     var_9C.Text = var_F0
  loc_FC7E0F:     Set var_98 = Me.TxtGrid
  loc_FC7E15:     Call 0.Method_Proc_88_55_FC7E480 (0, var_9C)
  loc_FC7E1D:     var_9C.SetFocus
  loc_FC7E2E:     Proc_88_55_FC7E48 = 0
  loc_FC7E34:     ' Referenced from: FC7D3C
  loc_FC7E34:   End If
  loc_FC7E37: Next var_E0 'Integer
  loc_FC7E41: Proc_88_55_FC7E48 = &HFF
End Sub

Public Sub Proc_88_56_11CF900
  'Data Table: 4E71B0
  Dim var_A8 As Variant
  Dim var_BC As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_134 As Variant
  Dim var_178 As Variant
  Dim var_18C As MSHFlexGrid
  Dim var_19C As Variant
  Dim var_20C As Double
  Dim var_1B0 As Variant
  Dim var_1F0 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  loc_11CF4A4: On Error Goto loc_11CF8F9
  loc_11CF4BA: Me.FGCat.Rows = 1
  loc_11CF4E7: For var_D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D0 'Integer
  loc_11CF4F1:   var_A8 = CVar(CLng(var_86)) 'Long
  loc_11CF4F9:   var_E0 = CVar(CLng(&HD)) 'Long
  loc_11CF518:   var_100 = CVar(CLng(var_86)) 'Long
  loc_11CF520:   var_120 = CVar(CLng(8)) 'Long
  loc_11CF573:   var_20C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_11CF5B1:   Call Proc_88_57_171D068(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_20C)), "0.00")), 1, 1, var_20C, CVar(CLng(3)), CVar(CLng(var_86)))
  loc_11CF5DA: Next var_D0 'Integer
  loc_11CF604: For var_210 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_210 'Integer
  loc_11CF60E:   var_A8 = CVar(CLng(var_86)) 'Long
  loc_11CF616:   var_E0 = CVar(CLng(3)) 'Long
  loc_11CF63F:   var_100 = CVar(CLng(var_86)) 'Long
  loc_11CF647:   var_120 = CVar(CLng(8)) 'Long
  loc_11CF670:   var_178 = CVar(CLng(var_86)) 'Long
  loc_11CF678:   var_1B0 = CVar(CLng(9)) 'Long
  loc_11CF6A9:   var_1F0 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_11CF6B1:   Set var_18C = Me.FGrid
  loc_11CF6B7:   LateIdCallSt
  loc_11CF6E2:   var_A8 = CVar(CLng(var_86)) 'Long
  loc_11CF6EA:   var_E0 = CVar(CLng(9)) 'Long
  loc_11CF713:   var_100 = CVar(CLng(var_86)) 'Long
  loc_11CF71B:   var_120 = CVar(CLng(&HA)) 'Long
  loc_11CF724:   Set var_134 = Me.FGrid
  loc_11CF744:   var_178 = CVar(CLng(var_86)) 'Long
  loc_11CF74C:   var_1B0 = CVar(CLng(&HB)) 'Long
  loc_11CF76D:   var_19C = CVar((Val(CStr(Me.FGrid.TextMatrix))) + Val(CStr(var_134.TextMatrix))))) 'Double
  loc_11CF77D:   var_1F0 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_11CF785:   Set var_18C = Me.FGrid
  loc_11CF78B:   LateIdCallSt
  loc_11CF7B6:   var_A8 = CVar(CLng(var_86)) 'Long
  loc_11CF7BE:   var_E0 = CVar(CLng(9)) 'Long
  loc_11CF7EA:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11CF7FA:   var_A8 = CVar(CLng(var_86)) 'Long
  loc_11CF802:   var_E0 = CVar(CLng(&HB)) 'Long
  loc_11CF82E:   var_98 = (var_98 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11CF83D: Next var_210 'Integer
  loc_11CF879: Set var_BC = Me.Txt
  loc_11CF87F: Call 0.Method_Proc_88_56_11CF9000 (CInt(7), var_134, CStr(Format(var_90, "0.00")))
  loc_11CF887: var_134.Text = 1
  loc_11CF8D4: Set var_BC = Me.Txt
  loc_11CF8DA: Call 0.Method_Proc_88_56_11CF9000 (CInt(5), var_134, CStr(Format(var_98, "0.00")))
  loc_11CF8E2: var_134.Text = 1
  loc_11CF8F8: Exit Sub
  loc_11CF8F9: ' Referenced from: 11CF4A4
  loc_11CF8F9: Proc_6_60_E62BC4(1)
  loc_11CF8FE: Exit Sub
End Sub

Public Sub Proc_88_57_171D068(arg_C, arg_10, arg_14) '171D068
  'Data Table: 4E71B0
  Dim var_D8 As String
  Dim unk_4E71CE As Connection15
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_EC As Variant
  Dim var_D2 As Integer
  Dim var_100 As Variant
  Dim var_FC As Variant
  Dim var_130 As Variant
  Dim var_11C As Variant
  Dim var_C0 As Recordset15
  Dim var_140 As Variant
  Dim var_178 As Variant
  Dim var_18C As Variant
  Dim var_1C0 As Variant
  Dim var_1E0 As Variant
  Dim var_D0 As Double
  Dim var_1F4 As Double
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_160 As Variant
  Dim var_204 As Variant
  Dim var_10C As MSHFlexGrid
  Dim var_1E8 As Double
  Dim var_9C As Double
  Dim var_260 As Double
  Dim var_1B0 As Variant
  loc_171B48C: var_D8 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_171B49C: unk_4E71CE.Execute var_D8 & "'", var_FC, -1
  loc_171B4A7: Set var_8C = var_100
  loc_171B4BA: var_94 = arg_14
  loc_171B4BF: var_86 = 1
  loc_171B4C5: var_A8 = var_94
  loc_171B4CB: var_B0 = var_94
  loc_171B4D1: var_B8 = CDbl(0)
  loc_171B4E8: If (var_8C.RecordCount > 0) Then
  loc_171B4EB:   ' Referenced from: 171D049
  loc_171B4FA:   If Not(var_8C.EOF) Then
  loc_171B501:     Set var_10C = Me.FGCat
  loc_171B504:     var_EC = vbNullString
  loc_171B529:     If (var_8C.RecordCount > 0) Then
  loc_171B532:       var_D2 = (var_D2 + 1)
  loc_171B538:       var_EC = "Nature"
  loc_171B56B:       var_150 = Trim(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_EC)), var_D2, FGCat.DispID_10000, var_EC, var_B8))) 'Variant
  loc_171B584:       If (var_150 = "On Base Amt") Then
  loc_171B5AF:         var_130 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CondApp")), var_B0, var_A8)) 'String
  loc_171B5D1:         If (Trim(var_130) = "Room Rate") Then
  loc_171B5DF:           If (global_124 = "Room Service") Then
  loc_171B608:             Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item("Limit")), var_86)
  loc_171B636:             Proc_6_39_E7C810(var_160, CVar(var_C0.Fields.Item("RoomRate")), var_130)
  loc_171B668:             Proc_6_39_E7C810(var_1B0, CVar(var_8C.Fields.Item("Rate")))
  loc_171B698:             If CBool((var_94 <= var_160) And (var_1B0 > 0)) Then
  loc_171B6D7:               If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171B715:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_171B728:               Else
  loc_171B75B:                 var_1F4 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_171B784:                 Proc_6_142_14A55B0(((var_1F4 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_171B789:                 var_D0 = var_1F4
  loc_171B79D:               End If
  loc_171B7A4:               If (var_D0 > CDbl(0)) Then
  loc_171B7C0:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171B7C8:                 var_18C = CVar(CLng(0)) 'Long
  loc_171B7D2:                 var_130 = CVar(CStr(var_86)) 'String
  loc_171B7D9:                 LateIdCallSt
  loc_171B804:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171B80C:                 var_18C = CVar(CLng(1)) 'Long
  loc_171B816:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_171B81D:                 LateIdCallSt
  loc_171B848:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171B850:                 var_1C0 = CVar(CLng(2)) 'Long
  loc_171B880:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171B887:                 LateIdCallSt
  loc_171B8BA:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171B8C2:                 var_1C0 = CVar(CLng(3)) 'Long
  loc_171B8F2:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171B8F9:                 LateIdCallSt
  loc_171B92C:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171B934:                 var_18C = CVar(CLng(4)) 'Long
  loc_171B93E:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_171B945:                 LateIdCallSt
  loc_171B970:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171B978:                 var_1C0 = CVar(CLng(5)) 'Long
  loc_171B9A8:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171B9AF:                 LateIdCallSt
  loc_171BA09:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171BA11:                 var_234 = CVar(CLng(6)) 'Long
  loc_171BA16:                 var_178 = 2
  loc_171BA55:                 var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_178))))) 'String
  loc_171BA5C:                 LateIdCallSt
  loc_171BA83:               Else
  loc_171BA89:                 var_86 = (var_86 - 1)
  loc_171BA9F:                 var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_171BAB5:               End If
  loc_171BACE:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171BAD6:               var_18C = CVar(CLng(6)) 'Long
  loc_171BAFB:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171BB24:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171BB2C:               var_18C = CVar(CLng(6)) 'Long
  loc_171BB47:               var_1E8 = Val(CStr(var_10C.TextMatrix)))
  loc_171BB51:               var_94 = (var_94 + var_1E8)
  loc_171BB68:               var_B0 = (var_B0 + var_D0)
  loc_171BB6E:               var_B8 = var_D0
  loc_171BB78:               var_B0 = (var_B0 + var_D0)
  loc_171BB7E:               var_B8 = var_D0
  loc_171BB81:             End If
  loc_171BB81:           End If
  loc_171BB84:         Else
  loc_171BBC0:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171BBFE:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_171BC11:           Else
  loc_171BC33:             var_130 = var_8C.Fields.Item("Rate").Value
  loc_171BC6D:             Proc_6_142_14A55B0(((Val(CStr(var_130)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_130)), var_D0, var_B8, var_B0)
  loc_171BC72:             var_260 = var_B8
  loc_171BCB4:             var_D0 = (((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)) + var_260)
  loc_171BCD2:           End If
  loc_171BCF8:           Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item("Limit")), var_D0, var_260, var_B0)
  loc_171BD32:           Proc_6_39_E7C810(var_178, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_94)
  loc_171BD5C:           If CBool(var_1E8 And (var_178 > 0)) Then
  loc_171BD66:             If (var_D0 > CDbl(0)) Then
  loc_171BD82:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171BD8A:               var_18C = CVar(CLng(0)) 'Long
  loc_171BD94:               var_130 = CVar(CStr(var_86)) 'String
  loc_171BD9B:               LateIdCallSt
  loc_171BDC6:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171BDCE:               var_18C = CVar(CLng(1)) 'Long
  loc_171BDD8:               var_130 = CVar(CStr(arg_10)) 'String
  loc_171BDDF:               LateIdCallSt
  loc_171BE0A:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171BE12:               var_1C0 = CVar(CLng(2)) 'Long
  loc_171BE42:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171BE49:               LateIdCallSt
  loc_171BE7C:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171BE84:               var_1C0 = CVar(CLng(3)) 'Long
  loc_171BEB4:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171BEBB:               LateIdCallSt
  loc_171BEEE:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171BEF6:               var_18C = CVar(CLng(4)) 'Long
  loc_171BF00:               var_130 = CVar(CStr(var_A8)) 'String
  loc_171BF07:               LateIdCallSt
  loc_171BF32:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171BF3A:               var_1C0 = CVar(CLng(5)) 'Long
  loc_171BF6A:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171BF71:               LateIdCallSt
  loc_171BFCB:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171BFD3:               var_234 = CVar(CLng(6)) 'Long
  loc_171C017:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_171C01E:               LateIdCallSt
  loc_171C042:             End If
  loc_171C05B:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C063:             var_18C = CVar(CLng(6)) 'Long
  loc_171C088:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171C0B1:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C0B9:             var_18C = CVar(CLng(6)) 'Long
  loc_171C0C1:             var_130 = var_10C.TextMatrix)
  loc_171C0D4:             var_1E8 = Val(CStr(var_130))
  loc_171C0DE:             var_94 = (var_94 + var_1E8)
  loc_171C0F5:             var_B0 = (var_B0 + var_D0)
  loc_171C0FB:             var_B8 = var_D0
  loc_171C0FE:           End If
  loc_171C0FE:         End If
  loc_171C101:       Else
  loc_171C10C:         If (var_150 = "On Running Total") Then
  loc_171C14B:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171C189:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_171C19C:           Else
  loc_171C1F8:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_171C1FD:             var_D0 = var_94
  loc_171C211:           End If
  loc_171C237:           Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item("Rate")), var_D0, var_1E8, var_18C)
  loc_171C251:           If (var_130 > 0) Then
  loc_171C25B:             If (var_D0 > CDbl(0)) Then
  loc_171C277:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C27F:               var_18C = CVar(CLng(0)) 'Long
  loc_171C289:               var_130 = CVar(CStr(var_86)) 'String
  loc_171C290:               LateIdCallSt
  loc_171C2BB:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C2C3:               var_18C = CVar(CLng(1)) 'Long
  loc_171C2CD:               var_130 = CVar(CStr(arg_10)) 'String
  loc_171C2D4:               LateIdCallSt
  loc_171C2FF:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C307:               var_1C0 = CVar(CLng(2)) 'Long
  loc_171C337:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171C33E:               LateIdCallSt
  loc_171C371:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C379:               var_1C0 = CVar(CLng(3)) 'Long
  loc_171C3A9:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171C3B0:               LateIdCallSt
  loc_171C3E3:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C3EB:               var_18C = CVar(CLng(4)) 'Long
  loc_171C3F5:               var_130 = CVar(CStr(var_B0)) 'String
  loc_171C3FC:               LateIdCallSt
  loc_171C427:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C42F:               var_1C0 = CVar(CLng(5)) 'Long
  loc_171C45F:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171C466:               LateIdCallSt
  loc_171C4C0:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C4C8:               var_234 = CVar(CLng(6)) 'Long
  loc_171C50C:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_171C513:               LateIdCallSt
  loc_171C537:             End If
  loc_171C550:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C558:             var_18C = CVar(CLng(6)) 'Long
  loc_171C57D:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171C5A6:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C5AE:             var_18C = CVar(CLng(6)) 'Long
  loc_171C5D3:             var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_171C5EA:             var_B0 = (var_B0 + var_D0)
  loc_171C5F0:             var_B8 = var_D0
  loc_171C5F3:           End If
  loc_171C5F6:         Else
  loc_171C601:           If (var_150 = "On Prev. Tax Amt") Then
  loc_171C640:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171C67E:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_171C691:             Else
  loc_171C6ED:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_171C6F2:               var_D0 = var_94
  loc_171C706:             End If
  loc_171C70D:             If (var_D0 > CDbl(0)) Then
  loc_171C729:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C731:               var_18C = CVar(CLng(0)) 'Long
  loc_171C73B:               var_130 = CVar(CStr(var_86)) 'String
  loc_171C742:               LateIdCallSt
  loc_171C76D:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C775:               var_18C = CVar(CLng(1)) 'Long
  loc_171C77F:               var_130 = CVar(CStr(arg_10)) 'String
  loc_171C786:               LateIdCallSt
  loc_171C7B1:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C7B9:               var_1C0 = CVar(CLng(2)) 'Long
  loc_171C7E9:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171C7F0:               LateIdCallSt
  loc_171C823:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C82B:               var_1C0 = CVar(CLng(3)) 'Long
  loc_171C85B:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171C862:               LateIdCallSt
  loc_171C895:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C89D:               var_18C = CVar(CLng(4)) 'Long
  loc_171C8A7:               var_130 = CVar(CStr(var_B8)) 'String
  loc_171C8AE:               LateIdCallSt
  loc_171C8D9:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C8E1:               var_1C0 = CVar(CLng(5)) 'Long
  loc_171C911:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171C918:               LateIdCallSt
  loc_171C972:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171C97A:               var_234 = CVar(CLng(6)) 'Long
  loc_171C97F:               var_178 = 2
  loc_171C9BE:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_178))))) 'String
  loc_171C9C5:               LateIdCallSt
  loc_171C9E9:             End If
  loc_171CA02:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CA0A:             var_18C = CVar(CLng(6)) 'Long
  loc_171CA2F:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171CA58:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CA60:             var_18C = CVar(CLng(6)) 'Long
  loc_171CA68:             var_130 = var_10C.TextMatrix)
  loc_171CA7B:             var_1E8 = Val(CStr(var_130))
  loc_171CA85:             var_94 = (var_94 + var_1E8)
  loc_171CA9C:             var_B0 = (var_B0 + var_D0)
  loc_171CAA2:             var_B8 = var_D0
  loc_171CAA8:           Else
  loc_171CAE4:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171CB22:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_171CB35:             Else
  loc_171CB91:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_171CB96:               var_D0 = var_94
  loc_171CBAA:             End If
  loc_171CBAD:             var_EC = "Limit"
  loc_171CBD0:             Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item(var_EC)), var_D0, var_1E8, var_18C)
  loc_171CC0A:             Proc_6_39_E7C810(var_178, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_EC)
  loc_171CC34:             If CBool(var_9C And (var_178 > 0)) Then
  loc_171CC3E:               If (var_D0 > CDbl(0)) Then
  loc_171CC5A:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CC62:                 var_18C = CVar(CLng(0)) 'Long
  loc_171CC6C:                 var_130 = CVar(CStr(var_86)) 'String
  loc_171CC73:                 LateIdCallSt
  loc_171CC9E:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CCA6:                 var_18C = CVar(CLng(1)) 'Long
  loc_171CCB0:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_171CCB7:                 LateIdCallSt
  loc_171CCE2:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CCEA:                 var_1C0 = CVar(CLng(2)) 'Long
  loc_171CD1A:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171CD21:                 LateIdCallSt
  loc_171CD54:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CD5C:                 var_1C0 = CVar(CLng(3)) 'Long
  loc_171CD8C:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171CD93:                 LateIdCallSt
  loc_171CDC6:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CDCE:                 var_18C = CVar(CLng(4)) 'Long
  loc_171CDD8:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_171CDDF:                 LateIdCallSt
  loc_171CE0A:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CE12:                 var_1C0 = CVar(CLng(5)) 'Long
  loc_171CE42:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171CE49:                 LateIdCallSt
  loc_171CEA3:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CEAB:                 var_234 = CVar(CLng(6)) 'Long
  loc_171CEEF:                 var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_171CEF6:                 LateIdCallSt
  loc_171CF1A:               End If
  loc_171CF33:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CF3B:               var_18C = CVar(CLng(6)) 'Long
  loc_171CF60:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171CF89:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171CF91:               var_18C = CVar(CLng(6)) 'Long
  loc_171CFB6:               var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_171CFCD:               var_B0 = (var_B0 + var_D0)
  loc_171CFD3:               var_B8 = var_D0
  loc_171CFD6:             End If
  loc_171CFD6:           End If
  loc_171CFD6:         End If
  loc_171CFD6:       End If
  loc_171CFD6:     End If
  loc_171CFDC:     var_86 = (var_86 + 1)
  loc_171CFE1:     Set var_10C = Nothing 
  loc_171CFE9:     var_18C = CVar(CLng(arg_10)) 'Long
  loc_171CFF1:     var_204 = CVar(CLng(&HA)) 'Long
  loc_171D01F:     var_140 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_171D027:     Set var_100 = Me.FGrid
  loc_171D02D:     LateIdCallSt
  loc_171D044:     var_8C.MoveNext
  loc_171D049:     GoTo loc_171B4EB
  loc_171D04C:   End If
  loc_171D051:   Set var_8C = Nothing
  loc_171D059:   Set var_C4 = Nothing
  loc_171D061:   Set var_C0 = Nothing
  loc_171D064: End If
  loc_171D064: Exit Sub
End Sub

Public Sub Proc_88_58_F91634
  'Data Table: 4E71B0
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_4E71CE As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  loc_F914F4: Set var_9C = Me.TopCtrl1
  loc_F914FA: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_F91502: var_B0 = CStr()
  loc_F91513: If (var_B0 = "Add") Then
  loc_F91543:   Set var_9C = Me.Txt
  loc_F91549:   Call 0.Method_Proc_88_58_F916340 (CInt(3), var_B4, var_B0, "Select Count(*) From Indent Where DocID='", var_AC, -1)
  loc_F9156A:   unk_4E71CE.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_F9157A:    = var_D4.Item()
  loc_F91582:    = var_E8.Value
  loc_F915AF:   If (var_B4.Text.Fields > 0) Then
  loc_F915B8:     Call 0.Method_arg_50 (var_B0)
  loc_F915D9:     MsgBox("Duplicate Indent No.", &H40, CVar(var_B0), var_118, var_128)
  loc_F915F1:     Call Proc_88_54_135DA5C(&HFF)
  loc_F91604:     Set var_9C = Me.Txt
  loc_F9160A:     Call 0.Method_Proc_88_58_F916340 (CInt(3), var_B4)
  loc_F91612:     var_B4.Text = var_B0
  loc_F91626:     Proc_88_58_F91634 = &HFF
  loc_F9162C:   End If
  loc_F9162C: End If
  loc_F9162C: Proc_88_58_F91634 = var_B0
End Sub

Public Sub Proc_88_59_E77E6C
  'Data Table: 4E71B0
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  loc_E77E4C: Set var_A4 = Me.Txt
  loc_E77E52: Call 0.Method_Proc_88_59_E77E6C0 (CInt(4), var_A8)
  loc_E77E5A: var_A8.MaxLength = Me.Fields.Item("Remarks").DefinedSize
  loc_E77E6A: Exit Sub
End Sub
