VERSION 5.00
Begin VB.Form FrmReservationStatus
  Caption = "Reservation Status"
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
  ClientWidth = 4680
  ClientHeight = 3195
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2745
    Width = 4680
    Height = 450
    Visible = 0   'False
    TabIndex = 33
  End
  Begin Frame Frame1
    Caption = "Frame1"
    Left = 1365
    Top = 8460
    Width = 11895
    Height = 705
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
  End
  Begin MSFlexGrid FGPoint
    Left = 14100
    Top = 5655
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 7
  End
  Begin DataGrid DGRoomType
    Left = 12600
    Top = 2745
    Width = 4170
    Height = 2565
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 10305
    Top = 645
    Width = 2235
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 1200
    Top = 3060
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 7815
    Top = 645
    Width = 1230
    Height = 285
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
  Begin MSHFlexGrid FGrid
    Left = -15
    Top = 960
    Width = 11820
    Height = 6270
    TabIndex = 2
  End
  Begin BtnEnh Cmd
    Index = 1
    Left = 1140
    Top = 15
    Width = 1080
    Height = 645
    TabIndex = 9
  End
  Begin BtnEnh CmdExit
    Left = 5505
    Top = 15
    Width = 1125
    Height = 645
    TabIndex = 10
  End
  Begin BtnEnh Cmd
    Index = 0
    Left = 45
    Top = 15
    Width = 1080
    Height = 645
    TabIndex = 11
  End
  Begin BtnEnh Cmd
    Index = 2
    Left = 2220
    Top = 15
    Width = 1125
    Height = 645
    TabIndex = 12
  End
  Begin BtnEnh BtnPrint
    Index = 2
    Left = 4425
    Top = 15
    Width = 1080
    Height = 645
    TabIndex = 14
  End
  Begin BtnEnh BtnPrint
    Index = 0
    Left = 3345
    Top = 15
    Width = 1080
    Height = 660
    TabIndex = 15
  End
  Begin Label Label2
    Index = 4
    BackColor = &HFFFF00&
    ForeColor = &H80000008&
    Left = 11385
    Top = 105
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 32
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Expected Arrival"
    Index = 4
    ForeColor = &H0&
    Left = 11745
    Top = 120
    Width = 1410
    Height = 225
    Visible = 0   'False
    TabIndex = 31
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Guest In House"
    Index = 3
    ForeColor = &H0&
    Left = 9945
    Top = 120
    Width = 1290
    Height = 225
    Visible = 0   'False
    TabIndex = 30
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Index = 3
    BackColor = &H80FF&
    ForeColor = &H80000008&
    Left = 9600
    Top = 105
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 29
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "ConFirm"
    Index = 1
    ForeColor = &HC00000&
    Left = 6780
    Top = 120
    Width = 825
    Height = 240
    TabIndex = 28
    Alignment = 2 'Center
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
    Caption = "Tentative"
    Index = 2
    ForeColor = &HC00000&
    Left = 7680
    Top = 120
    Width = 900
    Height = 240
    TabIndex = 27
    Alignment = 2 'Center
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
  Begin Label Label2
    Index = 1
    BackColor = &H80FFFF&
    ForeColor = &H80000008&
    Left = 7635
    Top = 105
    Width = 975
    Height = 270
    TabIndex = 26
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 0
    BackColor = &H80C0FF&
    ForeColor = &H80000008&
    Left = 6750
    Top = 105
    Width = 885
    Height = 270
    TabIndex = 25
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label3
    Caption = "*"
    BackColor = &HE0E0E0&
    ForeColor = &HFF&
    Left = 13290
    Top = 105
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Courier New"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Label4
    Caption = "With advance"
    ForeColor = &H404040&
    Left = 13650
    Top = 120
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 23
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label5
    Caption = "."
    ForeColor = &HFF&
    Left = 15480
    Top = 345
    Width = 60
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
  Begin Label Labelsign
    Caption = "<Adv Due Date>"
    Index = 6
    ForeColor = &HC00000&
    Left = 11730
    Top = 390
    Width = 1530
    Height = 240
    TabIndex = 22
    Alignment = 2 'Center
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
  Begin Label Labelsign
    Caption = "#Tentative"
    Index = 5
    ForeColor = &HC00000&
    Left = 14460
    Top = 390
    Width = 990
    Height = 240
    TabIndex = 21
    Alignment = 2 'Center
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
  Begin Label Labelsign
    Caption = "##Confirm"
    Index = 4
    ForeColor = &HC00000&
    Left = 13290
    Top = 390
    Width = 960
    Height = 240
    TabIndex = 20
    Alignment = 2 'Center
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
  Begin Label Labelsign
    Caption = "(Remarks)"
    Index = 3
    ForeColor = &HC00000&
    Left = 10725
    Top = 390
    Width = 960
    Height = 240
    TabIndex = 19
    Alignment = 2 'Center
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
  Begin Label Labelsign
    Caption = "{Room Rate}"
    Index = 2
    ForeColor = &HC00000&
    Left = 9465
    Top = 390
    Width = 1200
    Height = 240
    TabIndex = 18
    Alignment = 2 'Center
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
  Begin Label Labelsign
    Caption = "[No. Of Rooms]"
    Index = 1
    ForeColor = &HC00000&
    Left = 8025
    Top = 390
    Width = 1410
    Height = 240
    TabIndex = 17
    Alignment = 2 'Center
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
  Begin Label Labelsign
    Caption = "|Guest Name|"
    Index = 0
    ForeColor = &HC00000&
    Left = 6735
    Top = 390
    Width = 1260
    Height = 240
    TabIndex = 16
    Alignment = 2 'Center
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
  Begin Label LabelCat
    Caption = "Room Type"
    ForeColor = &HC00000&
    Left = 9195
    Top = 660
    Width = 1080
    Height = 240
    TabIndex = 5
    Alignment = 2 'Center
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
  Begin Shape Shape1
    BorderColor = &HE0E0E0&
    Left = 15165
    Top = 45
    Width = 660
    Height = 300
    Visible = 0   'False
    BorderStyle = 0 'Transparent
    BorderWidth = 2
    FillColor = &HE0E0E0&
    FillStyle = 0
  End
  Begin Label Label1
    Caption = "Date From"
    Index = 15
    ForeColor = &HC00000&
    Left = 6780
    Top = 645
    Width = 990
    Height = 240
    TabIndex = 4
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

Attribute VB_Name = "FrmReservationStatus"


Private Sub DGRoomType_UnknownEvent_9 'F477A4
  'Data Table: 47BE78
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4769B: Me.DGRoomType.Visible = False
  loc_F476BA: If (Me.RecordCount > 0) Then
  loc_F476F9:   Set var_B4 = Me.Txt
  loc_F476FF:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F47707:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4773A:   var_B0 = Me.Fields.Item("Name")
  loc_F47759:   Set var_B4 = Me.Txt
  loc_F4775F:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(1), var_B8)
  loc_F47767:   var_B8.Text = CStr(var_B0.Value)
  loc_F4777D: End If
  loc_F47788: Set var_A8 = Me.Txt
  loc_F4778E: Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(1))
  loc_F47796: var_B0.SetFocus
  loc_F477A2: Exit Sub
End Sub

Private Sub DGRoomType_UnknownEvent_1F 'E6FFE0
  'Data Table: 47BE78
  loc_E6FF9E: Proc_6_153_E91194(Me.DGRoomType, arg_14)
  loc_E6FFB5: Set var_8C = Me.FGPoint
  loc_E6FFD1: Proc_6_138_106D6F8(Me.DGRoomType, global_108, CInt(1))
  loc_E6FFDF: Exit Sub
End Sub

Public Sub Cmd_UnknownEvent_9(Index As Integer) '107074C
  'Data Table: 47BE78
  Dim var_86 As Integer
  Dim var_98 As String
  Dim var_A0 As TextBox
  Dim var_90 As TextBox
  Dim var_C0 As Long
  Dim var_E0 As Long
  Dim var_8C As Variant
  Dim var_100 As Variant
  Dim var_94 As TextBox
  loc_10704CB: var_86 = Index
  loc_10704D4: If (var_86 = 0) Then
  loc_10704E2:   Set var_8C = Me.Txt
  loc_10704E8:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_1070511:   If (Proc_6_27_EA565C(var_90, "Start Date") = 0) Then
  loc_1070514:     Exit Sub
  loc_1070515:   End If
  loc_1070520:   Set var_8C = Me.Txt
  loc_1070526:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_107052E:   Set var_94 = var_90
  loc_1070547:   Set var_9C = Me.Txt
  loc_107054D:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_A0)
  loc_1070555:   var_A0.Text = Proc_6_33_1512840(var_94)
  loc_1070576:   Set var_8C = Me.Txt
  loc_107057C:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_1070584:   var_98 = var_90.Text
  loc_107058C:   var_B0 = "RoomNo"
  loc_10705A0:   Call Proc_212_22_1337904(CDate(var_98), 1)
  loc_10705B6: Else
  loc_10705BC:   If (var_86 = 1) Then
  loc_10705BF:     var_C0 = 1
  loc_10705C8:     var_E0 = 1
  loc_10705DB:     var_100 = Me.FGrid.ColHeaderCaption)
  loc_10705F5:     Set var_90 = Me.Txt
  loc_10705FB:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_94, var_98, var_100)
  loc_1070603:     var_E0 = var_94.Text
  loc_107063E:     If (CDate(Right(CVar(CStr(var_100)), 9)) <> CDate(var_98)) Then
  loc_1070641:       var_C0 = 1
  loc_107065D:       var_100 = Me.FGrid.ColHeaderCaption)
  loc_1070699:       Call Proc_212_22_1337904(CDate((CDate(Right(CVar(CStr(var_100)), 9)) - CDbl(1))), &HFF, "RoomNo", var_100, 1)
  loc_10706AF:     End If
  loc_10706B2:   Else
  loc_10706B8:     If (var_86 = 2) Then
  loc_10706BB:       var_C0 = 1
  loc_10706D7:       var_100 = Me.FGrid.ColHeaderCaption)
  loc_1070713:       Call Proc_212_22_1337904(CDate((CDate(Right(CVar(CStr(var_100)), 9)) + CDbl(1))), 1, "RoomNo", var_100, &H1E)
  loc_107072C:     Else
  loc_1070732:       If (var_86 = 3) Then
  loc_1070742:         Me.Global.Unload Me
  loc_107074A:       End If
  loc_107074A:     End If
  loc_107074A:   End If
  loc_107074A: End If
  loc_107074A: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FEA208
  'Data Table: 47BE78
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_FEA03E: Set var_88 = Me.Txt
  loc_FEA044: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FEA052: Proc_6_74_E226B0(var_8C)
  loc_FEA05E: Call Proc_212_21_E83B48(var_8C)
  loc_FEA066: var_92 = Index
  loc_FEA071: If (var_92 = CInt(1)) Then
  loc_FEA08B:   If (Me.RecordCount > 0) Then
  loc_FEA099:     Set var_8C = Me.FGPoint
  loc_FEA0B1:     Proc_6_137_1193554(Me.DGRoomType, global_108, Index)
  loc_FEA0BF:   End If
  loc_FEA10D:   Set var_88 = Me.Txt
  loc_FEA113:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FEA11B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FEA133:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FEA136:     Exit Sub
  loc_FEA137:   End If
  loc_FEA144:   Set var_88 = Me.Txt
  loc_FEA14A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FEA152:   var_A0 = var_8C.Text
  loc_FEA164:   var_B0 = "Name"
  loc_FEA19F:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FEA1A8:     Me.MoveFirst
  loc_FEA1CB:     Set var_88 = Me.Txt
  loc_FEA1D1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FEA1D9:     0 = var_8C.Text
  loc_FEA1F2:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_FEA207:   End If
  loc_FEA207: End If
  loc_FEA207: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1031DD8
  'Data Table: 47BE78
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim Me As Recordset15
  loc_1031BAE: If (CLng(Shift) = &H1B) Then
  loc_1031BB1:   Call Proc_212_21_E83B48()
  loc_1031BB6:   Exit Sub
  loc_1031BB7: End If
  loc_1031BBA: var_86 = KeyCode
  loc_1031BC5: If (var_86 = CInt(0)) Then
  loc_1031BD6:   Set var_8C = Me.Txt
  loc_1031BDC:   Call 0.Method_Txt_KeyDown0 (CInt(1), var_90)
  loc_1031BE4:   var_90.Text = vbNullString
  loc_1031BFE:   Set var_8C = Me.Txt
  loc_1031C04:   Call 0.Method_Txt_KeyDown0 (CInt(1), var_90)
  loc_1031C0C:   var_90.Tag = vbNullString
  loc_1031C1B: Else
  loc_1031C23:   If (var_86 = CInt(1)) Then
  loc_1031C43:     Set var_A0 = Me.FGPoint
  loc_1031C4E:     Set var_9C = Nothing
  loc_1031C80:     Proc_6_69_134A198(Me.DGRoomType, Me.Txt, CInt(1), global_108, Shift, 0)
  loc_1031CEF:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1031CF6:       Set var_9C = Me.DGRoomType
  loc_1031CFD:       Set var_90 = Me.FGPoint
  loc_1031D15:       Proc_6_138_106D6F8(var_9C, global_108, KeyCode, var_90, 1)
  loc_1031D23:     End If
  loc_1031D23:   End If
  loc_1031D23: End If
  loc_1031D29: If (Shift = &HD) Then
  loc_1031D34:   If (KeyCode = CInt(0)) Then
  loc_1031D42:     Set var_8C = Me.Txt
  loc_1031D48:     Call 0.Method_Txt_KeyDown0 (CInt(1), var_90, var_9C)
  loc_1031D50:     var_90.SetFocus
  loc_1031D5C:   End If
  loc_1031D64:   If (KeyCode = CInt(1)) Then
  loc_1031D72:     Set var_8C = Me.Txt
  loc_1031D78:     Call 0.Method_Txt_KeyDown0 (CInt(1), var_90, var_A0)
  loc_1031DA1:     If (Trim(CVar(var_90)) = vbNullString) Then
  loc_1031DB2:       Set var_8C = Me.Txt
  loc_1031DB8:       Call 0.Method_Txt_KeyDown0 (CInt(1), var_90, vbNullString)
  loc_1031DC0:       var_90.Tag = 0
  loc_1031DCC:     End If
  loc_1031DCC:   End If
  loc_1031DD1:   Call Cmd_UnknownEvent_9(0)
  loc_1031DD6: End If
  loc_1031DD6: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EEBF7C
  'Data Table: 47BE78
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_EEBEB8: On Error Goto loc_EEBF73
  loc_EEBEBE: Proc_6_58_E054C0(arg_10)
  loc_EEBEC9: Proc_6_133_E7EF78(var_94)
  loc_EEBEDB: var_96 = KeyAscii
  loc_EEBEE6: If (var_96 = CInt(1)) Then
  loc_EEBF05:   If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_EEBF32:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_108, CInt(Me.DGRoomType.Visible), "Name")
  loc_EEBF64:     Proc_6_138_106D6F8(Me.DGRoomType, global_108, KeyAscii, Me.FGPoint)
  loc_EEBF72:   End If
  loc_EEBF72: End If
  loc_EEBF72: Exit Sub
  loc_EEBF73: ' Referenced from: EEBEB8
  loc_EEBF73: Proc_6_60_E62BC4(0, var_96)
  loc_EEBF78: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EAA508
  'Data Table: 47BE78
  Dim var_8C As DataGrid
  loc_EAA496: If (KeyCode = CInt(1)) Then
  loc_EAA4B5:   If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_EAA4C9:     var_A8 = "Name"
  loc_EAA4F1:     Proc_6_68_129FB34(Me.DGRoomType, Me.Txt, CInt(1), global_108)
  loc_EAA504:   End If
  loc_EAA504: End If
  loc_EAA504: Exit Sub
  loc_EAA505: Set var_8C = Shift
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4EE34
  'Data Table: 47BE78
  loc_E4EE12: Set var_88 = Me.Txt
  loc_E4EE18: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4EE26: Proc_6_73_E22704(var_8C)
  loc_E4EE32: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10D04EC
  'Data Table: 47BE78
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_94 As String
  Dim var_F0 As TextBox
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_EC As TextBox
  loc_10D01F8: On Error Goto loc_10D04E5
  loc_10D01FE: var_86 = Cancel
  loc_10D0209: If (var_86 = CInt(0)) Then
  loc_10D0219:   Set var_8C = Me.Txt
  loc_10D021F:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D0257:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_10D026C:     Set var_8C = Me.Txt
  loc_10D0272:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D027A:     var_90.Text = CStr(MemVar_1F920EC)
  loc_10D028C:   Else
  loc_10D0296:     Set var_8C = Me.Txt
  loc_10D029C:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D02BC:     Set var_EC = Me.Txt
  loc_10D02C2:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_10D02CA:     var_F0.Text = Proc_6_33_1512840(var_90)
  loc_10D02DD:   End If
  loc_10D02EA:   Set var_8C = Me.Txt
  loc_10D02F0:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D02F8:   var_94 = var_90.Text
  loc_10D0321:   If (CDate(CDate(var_94)) < Date) Then
  loc_10D032E:     Set var_8C = Me.Txt
  loc_10D0334:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D033C:     var_90.SetFocus
  loc_10D034A:     arg_10 = &HFF
  loc_10D034D:     Exit Sub
  loc_10D034E:   End If
  loc_10D0351: Else
  loc_10D0359:   If (var_86 = CInt(1)) Then
  loc_10D03AA:     Set var_8C = Me.Txt
  loc_10D03B0:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_10D03B8:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_10D03D0:     If (arg_10 Or (var_94 = vbNullString)) Then
  loc_10D03E0:       Set var_8C = Me.Txt
  loc_10D03E6:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D03EE:       var_90.Tag = vbNullString
  loc_10D03FA:       Exit Sub
  loc_10D03FB:     End If
  loc_10D0408:     Set var_8C = Me.Txt
  loc_10D040E:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D042D:     If (var_90.Text <> vbNullString) Then
  loc_10D0468:       Set var_E8 = Me.Txt
  loc_10D046E:       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_10D0476:       var_EC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_10D04C2:       Set var_E8 = Me.Txt
  loc_10D04C8:       Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_10D04D0:       var_EC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")))
  loc_10D04E4:     End If
  loc_10D04E4:   End If
  loc_10D04E4: End If
  loc_10D04E4: Exit Sub
  loc_10D04E5: ' Referenced from: 10D01F8
  loc_10D04E5: Proc_6_60_E62BC4(var_86)
  loc_10D04EA: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E177C0
  'Data Table: 47BE78
  Dim arg_FF As Double
  loc_E177B5: Me.Global.Unload Me
  loc_E177BD: Exit Sub
  loc_E177BE: arg_FF = 
End Sub

Private Sub Form_Load() '102326C
  'Data Table: 47BE78
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C0 As DataGrid
  Dim var_D4 As Variant
  Dim Me As Variant
  Dim var_88 As MSHFlexGrid
  loc_1023040: On Error Goto loc_1023265
  loc_1023051: Set var_88 = Me.Txt
  loc_1023057: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_1023076: Me.DGRoomType.Left = CVar(var_8C.Left)
  loc_1023092: Set var_B4 = Me.Txt
  loc_1023098: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_10230B3: Set var_88 = Me.Txt
  loc_10230B9: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_10230D1: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_10230DA: Set var_C0 = Me.DGRoomType
  loc_10230E0: var_C0.Top = CVar(var_8C.Left)
  loc_102310E: Me.var_C0.CursorLocation = 3
  loc_1023138: var_D4 = CVar("Select Code,Name From RoomCat WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO')  Order by Name") 'String
  loc_1023142: Me.Open var_D4, CVar(MemVar_1F92044), 2
  loc_1023156: CVarUnk
  loc_102315B: VerifyVarObj
  loc_1023161: Set var_88 = Me.DGRoomType
  loc_1023167: LateIdStAd
  loc_10231A5: Set var_88 = Me.Label2
  loc_10231AB: Call 0.Method_Form_Load0 (4, var_8C, &HFDC293, &HFDC293, &H80FFFF)
  loc_10231B3: var_8C.BackColor = &H80C0FF
  loc_10231F3: Set var_88 = Me.Txt
  loc_10231F9: Call 0.Method_Form_Load0 (CInt(0), var_8C, CStr(MemVar_1F920EC), &HFFFFFF, &H40C0)
  loc_1023201: var_8C.Text = &H80FF
  loc_1023226: Proc_6_23_DFBA28(Me, 0, 0, Me)
  loc_1023235: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), New)
  loc_102324D: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1023255: Call Proc_212_18_10E4544(3)
  loc_102325F: Call Cmd_UnknownEvent_9(0)
  loc_1023264: Exit Sub
  loc_1023265: ' Referenced from: 1023040
  loc_1023265: Proc_6_60_E62BC4(-1)
  loc_102326A: Exit Sub
End Sub

Private Sub Form_Resize() 'F1AB68
  'Data Table: 47BE78
  Dim var_98 As Variant
  loc_F1AA74: On Error Resume Next
  loc_F1AA7F: Call 0.Method_arg_100 (var_88)
  loc_F1AA8B: var_98 = CVar((var_88 - CDbl(&H32))) 'Single
  loc_F1AA9A: Me.FGrid.Width = var_98
  loc_F1AABC: Call 0.Method_arg_108 (var_88)
  loc_F1AACD: var_98 = CVar(((var_88 - Me.Frame1.Height) - CDbl(500))) 'Single
  loc_F1AADC: Me.FGrid.Height = var_98
  loc_F1AB21: Me.Frame1.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_F1AB56: Me.Frame1.Left = CDbl(Me.FGrid.Left)
  loc_F1AB67: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0CC04
  'Data Table: 47BE78
  loc_E0CBFB: Set global_104 = Nothing
  loc_E0CC02: Exit Sub
End Sub

Private Sub Form_Activate() 'E1780C
  'Data Table: 47BE78
  loc_E177F8: Set var_88 = Me.FGrid
  loc_E17809: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B1B8
  'Data Table: 47BE78
  loc_E2B190: On Error Goto loc_E2B1B0
  loc_E2B1A7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2B1AF: Exit Sub
  loc_E2B1B0: ' Referenced from: E2B190
  loc_E2B1B0: Proc_6_60_E62BC4(Shift)
  loc_E2B1B5: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E34094
  'Data Table: 47BE78
  loc_E34088: If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_E3408B:   Call DGRoomType_UnknownEvent_9()
  loc_E34090: End If
  loc_E34090: Exit Sub
End Sub

Public Property Get OpenMode() 'E05E00
  'Data Table: 47BE78
  loc_E05DF9: OpenMode = global_112
End Sub

Public Property Let OpenMode(vNewValue) 'E00500
  'Data Table: 47BE78
  loc_E004FD: Exit Sub
  loc_E004FE: Set arg_78 = vNewValue
End Sub

Public Sub Proc_212_18_10E4544
  'Data Table: 47BE78
  Dim var_9C As Variant
  Dim var_88 As Long
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_10E4236: Me.FGrid.Left = CVar(CDbl(0))
  loc_10E4251: Me.FGrid.Top = CVar(CDbl(950))
  loc_10E425E: var_88 = &H5DC
  loc_10E4265: Set var_B4 = Me.FGrid
  loc_10E427C: global_52 = CStr(CLng(var_B4.BackColor))
  loc_10E4292: var_B4.Cols = &H23
  loc_10E4297: var_9C = 0
  loc_10E42A3: var_D8 = CVar(CLng(0)) 'Long
  loc_10E42A8: var_F8 = "SNo"
  loc_10E42B1: LateIdCallSt
  loc_10E42BC: var_9C = CVar(CLng(0)) 'Long
  loc_10E42C1: var_D8 = 0
  loc_10E42CD: LateIdCallSt
  loc_10E42D5: var_9C = 0
  loc_10E42E1: var_D8 = CVar(CLng(1)) 'Long
  loc_10E42E6: var_F8 = "Room No"
  loc_10E42EF: LateIdCallSt
  loc_10E42FA: var_9C = CVar(CLng(1)) 'Long
  loc_10E4305: var_D8 = CVar(CInt(1)) 'Integer
  loc_10E430C: LateIdCallSt
  loc_10E4317: var_9C = CVar(CLng(1)) 'Long
  loc_10E4322: var_D8 = CVar(CInt(1)) 'Integer
  loc_10E4329: LateIdCallSt
  loc_10E4334: var_9C = CVar(CLng(1)) 'Long
  loc_10E4339: var_D8 = 0
  loc_10E4345: LateIdCallSt
  loc_10E434D: var_9C = 0
  loc_10E4359: var_D8 = CVar(CLng(2)) 'Long
  loc_10E435E: var_F8 = "Room Category"
  loc_10E4367: LateIdCallSt
  loc_10E4372: var_9C = CVar(CLng(2)) 'Long
  loc_10E437D: var_D8 = CVar(CInt(1)) 'Integer
  loc_10E4384: LateIdCallSt
  loc_10E438F: var_9C = CVar(CLng(2)) 'Long
  loc_10E439A: var_D8 = CVar(CInt(1)) 'Integer
  loc_10E43A1: LateIdCallSt
  loc_10E43AC: var_9C = CVar(CLng(2)) 'Long
  loc_10E43B1: var_D8 = &H5DC
  loc_10E43BD: LateIdCallSt
  loc_10E43C5: var_9C = 0
  loc_10E43D1: var_D8 = CVar(CLng(3)) 'Long
  loc_10E43D6: var_F8 = "Rate"
  loc_10E43DF: LateIdCallSt
  loc_10E43EA: var_9C = CVar(CLng(3)) 'Long
  loc_10E43F5: var_D8 = CVar(CInt(7)) 'Integer
  loc_10E43FC: LateIdCallSt
  loc_10E4407: var_9C = CVar(CLng(3)) 'Long
  loc_10E4412: var_D8 = CVar(CInt(7)) 'Integer
  loc_10E4419: LateIdCallSt
  loc_10E4424: var_9C = CVar(CLng(3)) 'Long
  loc_10E4429: var_D8 = 0
  loc_10E4435: LateIdCallSt
  loc_10E443D: var_9C = 0
  loc_10E4449: var_D8 = CVar(CLng(4)) 'Long
  loc_10E444E: var_F8 = "Room No Code"
  loc_10E4457: LateIdCallSt
  loc_10E4462: var_9C = CVar(CLng(4)) 'Long
  loc_10E446D: var_D8 = CVar(CInt(1)) 'Integer
  loc_10E4474: LateIdCallSt
  loc_10E447F: var_9C = CVar(CLng(4)) 'Long
  loc_10E4484: var_D8 = 0
  loc_10E4490: LateIdCallSt
  loc_10E449F: For var_10C = 5 To &H22: var_8A = var_10C 'Byte
  loc_10E44A5:   var_9C = 0
  loc_10E44B3:   var_D8 = CVar(CLng(var_8A)) 'Long
  loc_10E44C5:   var_C4 = CVar("Day" & CStr(var_8A)) 'String
  loc_10E44CC:   LateIdCallSt
  loc_10E44DF:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_10E44EA:   var_D8 = CVar(CInt(4)) 'Integer
  loc_10E44F1:   LateIdCallSt
  loc_10E44FE:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_10E4509:   var_D8 = CVar(CInt(1)) 'Integer
  loc_10E4510:   LateIdCallSt
  loc_10E451D:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_10E452C:   LateIdCallSt
  loc_10E4537: Next var_10C 'Byte
  loc_10E453F: Set var_B4 = Nothing 
  loc_10E4543: Exit Sub
End Sub

Public Sub Proc_212_19_F1CBBC
  'Data Table: 47BE78
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_F1CACA: Set var_8C = Me.Txt
  loc_F1CAD0: Call 0.Method_Proc_212_19_F1CBBCC (var_8E, var_86)
  loc_F1CAE0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1CAF6:   Set var_8C = Me.Txt
  loc_F1CAFC:   Call 0.Method_Proc_212_19_F1CBBC0 (CInt(var_86), var_98)
  loc_F1CB04:   var_98.Text = vbNullString
  loc_F1CB20:   Set var_8C = Me.Txt
  loc_F1CB26:   Call 0.Method_Proc_212_19_F1CBBC0 (CInt(var_86), var_98)
  loc_F1CB2E:   var_98.Tag = vbNullString
  loc_F1CB3D: Next var_92 'Byte
  loc_F1CB56: Me.FGrid.Rows = 1
  loc_F1CB7C: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_F1CB84: Set var_98 = Me.FGrid
  loc_F1CBB1: Me.FGrid.FixedRows = 1
  loc_F1CBB9: Exit Sub
End Sub

Public Sub Proc_212_20_E784FC(arg_C) 'E784FC
  'Data Table: 47BE78
  Dim var_98 As TextBox
  loc_E784AA: Set var_8C = Me.Txt
  loc_E784B0: Call 0.Method_Proc_212_20_E784FCC (var_8E, var_86)
  loc_E784C0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E784D6:   Set var_8C = Me.Txt
  loc_E784DC:   Call 0.Method_Proc_212_20_E784FC0 (CInt(var_86), var_98)
  loc_E784E4:   var_98.Enabled = arg_C
  loc_E784F3: Next var_92 'Byte
  loc_E784F9: Exit Sub
End Sub

Public Sub Proc_212_21_E83B48
  'Data Table: 47BE78
  loc_E83AF4: If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_E83B06:   Me.DGRoomType.Visible = False
  loc_E83B0E: End If
  loc_E83B2A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E83B3C:   Me.FGPoint.Visible = False
  loc_E83B44: End If
  loc_E83B44: Exit Sub
  loc_E83B45: Set var_B4 = 
End Sub

Public Sub Proc_212_22_1337904(arg_C, arg_10) '1337904
  'Data Table: 47BE78
  Dim var_DC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_BA As Integer
  Dim var_BC As Integer
  Dim var_BE As Integer
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_104 As TextBox
  Dim var_168 As Date
  Dim var_1B8 As Variant
  Dim var_218 As Date
  Dim var_110 As String
  Dim var_114 As String
  Dim var_118 As String
  Dim var_198 As String
  Dim var_1A8 As Variant
  Dim var_29C As Variant
  Dim unk_47BE95 As Connection15
  Dim var_25C As String
  Dim var_158 As Variant
  loc_13371BB: Me.FGrid.FixedCols = 0
  loc_13371CD: var_100 = Me.FGrid.Rows
  loc_13371E2: If (CLng(var_100) < 2) Then
  loc_13371E5:   var_DC = vbNullString
  loc_13371EF:   Set var_F0 = Me.FGrid
  loc_1337200: End If
  loc_1337213: Me.FGrid.FixedRows = 1
  loc_133722E: Me.FGrid.RowHeightMin = &H3E8
  loc_1337245: Me.FGrid.Redraw = False
  loc_1337253: If (arg_10 = 1) Then
  loc_133725A:   var_BA = CInt(5)
  loc_1337261:   var_BC = CInt(&H22)
  loc_1337266:   var_BE = 1
  loc_133726C:   var_8C = arg_C
  loc_1337277:   var_94 = CDate((arg_C + CDbl(&H1E)))
  loc_133727D: Else
  loc_1337281:   var_BA = CInt(&H22)
  loc_1337288:   var_BC = CInt(5)
  loc_133728D:   var_BE = &HFF
  loc_1337298:   var_8C = CDate((arg_C - CDbl(&H1D)))
  loc_13372A3:   var_94 = CDate((arg_C + CDbl(1)))
  loc_13372A6: End If
  loc_13372AB: var_C4 = CStr(var_8C)
  loc_13372BC: Set var_F0 = Me.Txt
  loc_13372C2: Call 0.Method_Proc_212_22_13379040 (CInt(1), var_104, var_108, var_94, var_8C, var_BE, var_BC)
  loc_13372CA: var_BA = var_104.Tag
  loc_13372E1: If (var_108 <> vbNullString) Then
  loc_13372EA:   Call Proc_212_23_F29B28(var_C4, var_108, var_94, var_8C)
  loc_13372FA:   Proc_6_7_F25D88(var_100, var_C4, var_BE)
  loc_1337309:   var_168 = CDate(CDate((CDate(var_C4) + CDbl(&H1D))))
  loc_1337310:   Proc_6_7_F25D88(var_178, var_168, var_BC)
  loc_1337320:   Proc_6_7_F25D88(var_1C8, var_C4)
  loc_133732F:   var_218 = CDate(CDate((CDate(var_C4) + CDbl(&H1D))))
  loc_1337336:   Proc_6_7_F25D88(var_228, var_218)
  loc_1337349:   Set var_F0 = Me.Txt
  loc_133734F:   Call 0.Method_Proc_212_22_13379040 (CInt(1), var_104, var_25C)
  loc_1337357:   var_BA = var_104.Tag
  loc_1337377:   var_110 = "SELECT '' As SNo,'' As RoomNo,RC.Name as RoomType, '' As RoomRate,'' As RoomCatCode," & var_108 & " FROM ((((((ViewBooking B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) "
  loc_133737E:   var_114 = var_110 & "Left Join RoomCat RC On B.RoomCat=RC.Code) Left Join Booking BO On B.DocId=BO.DocId) left join grpBookingdetails G On B.DocId=G.BookingDocId And "
  loc_1337385:   var_118 = var_114 & "B.Sno=G.Sno) Left Join (Select max(DocId) As DocId,(sum(AmtCr)-Sum(AmtDr)) As DepositeAmt From Paycharge Group By DocID) P On B.DocId=P.DocId) "
  loc_13373A6:   var_198 = " Or B.Depdate-1 between "
  loc_13373AB:   var_1A8 = CVar(var_118 & "Where (B.RoomType='RO' or B.RoomType is Null) And (B.Arrdate between ") & var_100 & " And " & var_178 & var_198 
  loc_13373DE:   var_29C = var_1A8 & var_1C8 & " And " & var_228 & ") And (Ro.ChkInDate Is NULL) And B.RoomCat='" & CVar(var_25C) & "' And B.logsite_Code='" 
  loc_13373FF:   unk_47BE95.Execute CStr(var_29C & CVar(MemVar_1F92078) & "'"), var_300, -1
  loc_133740A:   Set var_A0 = var_304
  loc_1337455: Else
  loc_133745B:   Call Proc_212_23_F29B28(var_C4, var_108)
  loc_133746B:   Proc_6_7_F25D88(var_100, var_C4)
  loc_133747A:   var_168 = CDate(CDate((CDate(var_C4) + CDbl(&H1D))))
  loc_1337481:   Proc_6_7_F25D88(var_178, var_168)
  loc_1337491:   Proc_6_7_F25D88(var_1C8, var_C4)
  loc_13374A0:   var_218 = CDate(CDate((CDate(var_C4) + CDbl(&H1D))))
  loc_13374A7:   Proc_6_7_F25D88(var_228, var_218)
  loc_13374C7:   var_110 = "SELECT '' As SNo,'' As RoomNo,RC.Name as RoomType, '' As RoomRate,'' As RoomCatCode," & var_108 & " FROM ((((((ViewBooking B Left Join GuestFolio GF on GF.BookingDocid=B.DociD And GF.BookingSno=B.SNo)Left Join RoomOcc RO on RO.Docid=GF.DocId ) "
  loc_13374CE:   var_114 = var_110 & "Left Join RoomCat RC On B.RoomCat=RC.Code) Left Join Booking BO On B.DocId=BO.DocId) left join grpBookingdetails G On B.DocId=G.BookingDocId And "
  loc_13374D5:   var_118 = var_114 & "B.Sno=G.Sno) Left Join (Select max(DocId) As DocId,(sum(AmtCr)-Sum(AmtDr)) As DepositeAmt From Paycharge Group By DocID) P On B.DocId=P.DocId) "
  loc_13374F6:   var_198 = " Or B.Depdate-1 between "
  loc_13374FB:   var_1A8 = CVar(var_118 & "Where (B.RoomType='RO' or B.RoomType is Null) And (B.Arrdate between ") & var_100 & " And " & var_178 & var_198 
  loc_1337532:   var_25C = CStr(var_1A8 & var_1C8 & " And " & var_228 & ") And (Ro.ChkInDate Is NULL) And B.logsite_Code='" & CVar(MemVar_1F92078) & "'")
  loc_133753C:   unk_47BE95.Execute var_25C, var_29C, -1
  loc_1337547:   Set var_A0 = var_F0
  loc_1337583: End If
  loc_1337589: CVarUnk
  loc_133758E: VerifyVarObj
  loc_1337594: Set var_F0 = Me.FGrid
  loc_133759A: LateIdStAd
  loc_13375CF: For var_30C = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_30C 'Long
  loc_13375E2:   For var_314 = 5 To &H22: var_A8 = var_314 'Long
  loc_133763F:     If (Right(Trim(CVar(CStr(Me.FGrid.TextMatrix)))), 2) = "##") Then
  loc_1337653:       Me.FGrid.Row = var_A4
  loc_133766C:       Me.FGrid.Col = var_A8
  loc_1337688:       Me.FGrid.CellBackColor = global_116
  loc_13376A3:       Me.FGrid.CellForeColor = 0
  loc_13376BB:       Me.FGrid.CellFontName = "Arial Narrow"
  loc_13376D5:       Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_13376E0:     Else
  loc_1337737:       If (Right(Trim(CVar(CStr(Me.FGrid.TextMatrix)))), 2) = " #") Then
  loc_133774B:         Me.FGrid.Row = var_A4
  loc_1337764:         Me.FGrid.Col = var_A8
  loc_1337780:         Me.FGrid.CellBackColor = global_120
  loc_133779B:         Me.FGrid.CellForeColor = 0
  loc_13377B3:         Me.FGrid.CellFontName = "Arial Narrow"
  loc_13377CD:         Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_13377D5:       End If
  loc_13377D5:     End If
  loc_13377D8:   Next var_314 'Long
  loc_13377E0: Next var_30C 'Long
  loc_13377E5: var_DC = 0
  loc_13377EE: var_158 = &H1F4
  loc_13377FB: Set var_F0 = Me.FGrid
  loc_1337801: LateIdCallSt
  loc_133780C: var_DC = 0
  loc_1337815: var_158 = 1
  loc_133781E: var_1B8 = 0
  loc_133782B: Set var_F0 = Me.FGrid
  loc_1337831: LateIdCallSt
  loc_133784F: Me.FGrid.FixedCols = 5
  loc_133786A: Me.FGrid.Col = 6
  loc_1337891: If (CLng(Me.FGrid.Rows) > 1) Then
  loc_13378A7:   Me.FGrid.Row = 1
  loc_13378AF: End If
  loc_13378AF: var_DC = 0
  loc_13378B8: var_158 = False
  loc_13378C1: Set var_F0 = Me.FGrid
  loc_13378C7: LateIdCallSt
  loc_13378E0: Me.FGrid.Redraw = True
  loc_13378ED: Set var_98 = Nothing
  loc_13378F5: Set var_A0 = Nothing
  loc_13378FD: Set var_9C = Nothing
  loc_1337900: Exit Sub
End Sub

Public Sub Proc_212_23_F29B28(arg_C) 'F29B28
  'Data Table: 47BE78
  Dim var_B4 As Variant
  Dim var_F4 As String
  Dim var_124 As Date
  Dim var_148 As String
  Dim var_14C As String
  Dim var_16C As Variant
  Dim var_B01 As Variant
  loc_F29A4D: For var_94 = 0 To &H1D: var_8A = var_94 'Integer
  loc_F29A68:   var_B4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F29A6F:   Proc_6_7_F25D88(var_C4, var_B4)
  loc_F29A7B:   var_F4 = " and B.ArrDate+B.NoDays-1>="
  loc_F29A8F:   var_124 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F29A96:   Proc_6_7_F25D88(var_134, var_124)
  loc_F29AB2:   var_148 = CStr(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F29AB6:   var_14C = " Then Case When B.ResStatus In ('Confirm','') Then '|'+B.GuestName+'| ['+ISnull(Convert(Varchar,B.NoOfRooms),'')+'] {'+ISNULL(Convert(Varchar,B.RoomRate),'')+'} ('+ISNULL(G.Remarks,'')+') ##' When B.ResStatus In ('Tentative') Then '|'+B.GuestName+'| ['+ISNULL(Convert(Varchar,B.NoOfRooms),'')+'] {'+ISNULL(Convert(Varchar,B.RoomRate),'')+'} ('+ISNULL(G.Remarks,'')+') <'+IsNull(Convert(VarChar(11),BO.AdvDueDate,103),'')+'> #' Else '|'+B.GuestName+'| ['+ISNULL(Convert(Varchar,B.NoOfRooms),'')+'] {'+ISNULL(Convert(Varchar,B.RoomRate),'')+'} ('+ISNULL(G.Remarks,'')+') <'+IsNull(Convert(VarChar(11),BO.AdvDueDate,103),'')+'> ' End End End) as [" & var_148
  loc_F29AC0:   var_16C = CVar(var_88 & " (Case When RO.ChkInDate is null Then Case When B.ArrDate<=") & var_C4 & var_F4 & var_134 & CVar(var_14C & "],") 
  loc_F29AC5:   var_88 = CStr(var_16C)
  loc_F29AE9: Next var_94 'Integer
  loc_F29AF8: var_B4 = CVar((Len(var_88) - 1)) 'Long
  loc_F29B15: var_88 = CStr(Mid(var_88, 1, var_B4))
  loc_F29B1F: Proc_212_23_F29B28 = 
  loc_F29B25: var_B01 = CVar() 'Integer
End Sub
