VERSION 5.00
Begin VB.Form MemberShipRevenueMast
  Caption = "MemberShip Revenue Master"
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
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 4455
    Width = 795
    Height = 285
    Text = "Active"
    TabIndex = 29
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 26
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 4140
    Width = 3630
    Height = 285
    TabIndex = 7
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 3825
    Width = 1410
    Height = 285
    TabIndex = 6
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 3510
    Width = 3630
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 3195
    Width = 630
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 3
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
    Left = 4275
    Top = 2880
    Width = 630
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 3
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
    ForeColor = &HFF0000&
    Left = 4275
    Top = 2250
    Width = 2670
    Height = 285
    TabIndex = 1
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 2565
    Width = 630
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 3
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
    Left = 4275
    Top = 1935
    Width = 5295
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
  Begin Frame FrmList
    Left = 14925
    Top = 5640
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 165
      Top = 195
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 9
    End
  End
  Begin DataGrid DGHelp
    Left = 13755
    Top = 2295
    Width = 5505
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin MSFlexGrid FGPoint
    Left = 13200
    Top = 6300
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 11
  End
  Begin DataGrid DGLedgerAc
    Left = 13620
    Top = 1485
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 23
  End
  Begin DataGrid DGTaxStru
    Left = 13515
    Top = 765
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin Label LbStatus
    Caption = "Status"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2325
    Top = 4440
    Width = 585
    Height = 240
    TabIndex = 30
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 645
    Top = 8415
    Width = 2520
    Height = 255
    TabIndex = 28
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
    Left = 630
    Top = 8745
    Width = 2430
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
  Begin Label LblYN
    Caption = "(Detailed/Summerised)"
    Index = 3
    ForeColor = &HC0&
    Left = 5685
    Top = 3825
    Width = 2175
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
  End
  Begin Label LblName
    Caption = "Tax Structure"
    Index = 6
    ForeColor = &HFF0000&
    Left = 2325
    Top = 4155
    Width = 1290
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
    Caption = "Account Posting"
    Index = 5
    ForeColor = &HFF0000&
    Left = 2325
    Top = 3840
    Width = 1530
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
    Caption = "Account Name"
    Index = 4
    ForeColor = &HFF0000&
    Left = 2325
    Top = 3525
    Width = 1380
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
  Begin Label LblYN
    Caption = "Yes/No"
    Index = 2
    ForeColor = &HC0&
    Left = 4980
    Top = 3210
    Width = 645
    Height = 240
    TabIndex = 19
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
    Caption = "Acount (A/C)"
    Index = 3
    ForeColor = &HFF0000&
    Left = 2325
    Top = 3210
    Width = 1170
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
  Begin Label LblYN
    Caption = "Yes/No"
    Index = 1
    ForeColor = &HC0&
    Left = 4965
    Top = 2895
    Width = 645
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
    Caption = "Subscription Charge"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2325
    Top = 2895
    Width = 1935
    Height = 240
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
  Begin Label LblLedgerAc
    Caption = "Subscription Details"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2325
    Top = 2250
    Width = 1890
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
    Caption = "Refundable"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2325
    Top = 2565
    Width = 1095
    Height = 240
    TabIndex = 14
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
    Caption = "Description"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2325
    Top = 1935
    Width = 1065
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
  Begin Label LblYN
    Caption = "Yes/No"
    Index = 0
    ForeColor = &HC0&
    Left = 4965
    Top = 2580
    Width = 645
    Height = 240
    TabIndex = 12
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

Attribute VB_Name = "MemberShipRevenueMast"


Private Sub ListView_UnknownEvent_13 'F107A8
  'Data Table: 49D8FC
  Dim var_A4 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F106D0: Set var_A4 = Me.ListView
  loc_F1071A: Set var_BC = Me.Txt
  loc_F10720: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F10728: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F10754: Me.FrmList.Visible = False
  loc_F10784: Set var_9C = Me.Txt
  loc_F1078A: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A4)
  loc_F10792: var_A4.SetFocus
  loc_F107A6: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F36CE4
  'Data Table: 49D8FC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F36BDB: Me.DGTaxStru.Visible = False
  loc_F36BFA: If (Me.RecordCount > 0) Then
  loc_F36C39:   Set var_B4 = Me.Txt
  loc_F36C3F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(7), var_B8)
  loc_F36C47:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F36C7A:   var_B0 = Me.Fields.Item("Name")
  loc_F36C99:   Set var_B4 = Me.Txt
  loc_F36C9F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(7), var_B8)
  loc_F36CA7:   var_B8.Text = CStr(var_B0.Value)
  loc_F36CBD: End If
  loc_F36CC8: Set var_A8 = Me.Txt
  loc_F36CCE: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(7))
  loc_F36CD6: var_B0.SetFocus
  loc_F36CE2: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'E72A14
  'Data Table: 49D8FC
  loc_E729D2: Proc_6_153_E91194(Me.DGTaxStru, arg_14)
  loc_E729E9: Set var_8C = Me.FGPoint
  loc_E72A05: Proc_6_138_106D6F8(Me.DGTaxStru, global_68, CInt(7))
  loc_E72A13: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '123460C
  'Data Table: 49D8FC
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_AC As String
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_90 As Fields15
  loc_123410A: Set var_88 = Me.Txt
  loc_1234110: Call 0.Method_Txt_GotFocus0 (Index)
  loc_123411E: Proc_6_74_E226B0(var_8C)
  loc_123412A: Call Proc_266_35_F21C70(var_8C)
  loc_123412F: On Error Goto loc_12345C8
  loc_1234135: var_92 = Index
  loc_1234140: If (var_92 = CInt(0)) Then
  loc_123415A:   If (Me.RecordCount > 0) Then
  loc_1234168:     Set var_8C = Me.FGPoint
  loc_1234180:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_123418E:   End If
  loc_1234191: Else
  loc_1234199:   If (var_92 = CInt(1)) Then
  loc_12341A9:     ReDim var_9C(0 To 1)
  loc_12341C0:     var_9C(0) = "Once"
  loc_12341CF:     var_9C(1) = "Recurring"
  loc_12341F1:     Set var_D4 = Me.ListView
  loc_123420C:     Set var_8C = Me.Txt
  loc_1234226:     Set global_92 = Proc_6_66_EFF8FC(var_D4, var_8C, Index, Array(var_9C))
  loc_1234244:     Set var_88 = Me.Txt
  loc_123424A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC, 2)
  loc_1234252:     global_76 = var_8C.Text
  loc_1234264:     Set var_90 = Me.Txt
  loc_123426A:     Call 0.Method_Txt_GotFocus0 (Index, var_D4, var_DC)
  loc_1234272:     var_D4.Tag = var_8C
  loc_1234288:   Else
  loc_1234290:     If (var_92 = CInt(5)) Then
  loc_12342AA:       If (Me.RecordCount > 0) Then
  loc_12342B8:         Set var_8C = Me.FGPoint
  loc_12342D0:         Proc_6_137_1193554(Me.DGLedgerAc, global_64, Index)
  loc_12342DE:       End If
  loc_123432C:       Set var_88 = Me.Txt
  loc_1234332:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC)
  loc_123433A:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1234352:       If (var_8C Or (var_DC = vbNullString)) Then
  loc_1234355:         Exit Sub
  loc_1234356:       End If
  loc_1234363:       Set var_88 = Me.Txt
  loc_1234369:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1234371:       var_DC = var_8C.Text
  loc_1234383:       var_AC = "Name"
  loc_12343BE:       If CBool(CVar(var_DC) <> Me.Fields.Item(var_AC).Value) Then
  loc_12343C7:         Me.MoveFirst
  loc_12343EA:         Set var_88 = Me.Txt
  loc_12343F0:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC, "Name ='")
  loc_12343F8:         0 = var_8C.Text
  loc_1234411:         Me.Find 1 & var_DC & "'", var_AC, var_92
  loc_1234426:       End If
  loc_1234429:     Else
  loc_1234431:       If (var_92 = CInt(7)) Then
  loc_123444B:         If (Me.RecordCount > 0) Then
  loc_1234459:           Set var_8C = Me.FGPoint
  loc_1234471:           Proc_6_137_1193554(Me.DGTaxStru, global_68)
  loc_123447F:         End If
  loc_12344CD:         Set var_88 = Me.Txt
  loc_12344D3:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC)
  loc_12344DB:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12344F3:         If (Index Or (var_DC = vbNullString)) Then
  loc_12344F6:           Exit Sub
  loc_12344F7:         End If
  loc_1234504:         Set var_88 = Me.Txt
  loc_123450A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1234512:         var_DC = var_8C.Text
  loc_1234524:         var_AC = "Name"
  loc_123455F:         If CBool(CVar(var_DC) <> Me.Fields.Item(var_AC).Value) Then
  loc_1234568:           Me.MoveFirst
  loc_123458B:           Set var_88 = Me.Txt
  loc_1234591:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC, "Name ='")
  loc_1234599:           0 = var_8C.Text
  loc_12345B2:           Me.Find 1 & var_DC & "'", var_AC, var_8C
  loc_12345C7:         End If
  loc_12345C7:       End If
  loc_12345C7:     End If
  loc_12345C7:   End If
  loc_12345C7: End If
  loc_12345C7: Exit Sub
  loc_12345C8: ' Referenced from: 123412F
  loc_12345D0: Set var_88 = Err()
  loc_12345D6: Call 0.Method_arg_2C (var_DC)
  loc_12345F7: MsgBox(CVar(var_DC), &H40, "Information", var_100, var_128)
  loc_123460A: Exit Sub
  loc_123460B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12C5C28
  'Data Table: 49D8FC
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_AC As TextBox
  Dim var_BC As TextBox
  Dim var_90 As DataGrid
  Dim var_9C As DataGrid
  Dim var_110 As Variant
  loc_12C55EA: If (CLng(Shift) = &H1B) Then
  loc_12C55ED:   Call Proc_266_35_F21C70()
  loc_12C55F2:   Exit Sub
  loc_12C55F3: End If
  loc_12C55F6: var_86 = KeyCode
  loc_12C5601: If (var_86 = CInt(0)) Then
  loc_12C561B:   If (Me.RecordCount > 0) Then
  loc_12C5622:     Set var_A4 = Me.DGHelp
  loc_12C5630:     Set var_AC = Me.FGPoint
  loc_12C563B:     Set var_9C = var_AC
  loc_12C5669:     Proc_6_79_11ACE04(var_A4, Me.Txt, KeyCode, global_56, Shift)
  loc_12C567D:   End If
  loc_12C5686:   var_8C = Me.RecordCount
  loc_12C56D6:   If ((var_8C > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12C56E4:     Set var_94 = Me.FGPoint
  loc_12C56FC:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, var_94, 0)
  loc_12C570A:   End If
  loc_12C570D: Else
  loc_12C5715:   If (var_86 = CInt(1)) Then
  loc_12C573A:     Set var_90 = Me.Txt
  loc_12C5740:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, 1)
  loc_12C5748:     var_9C = var_94.Left
  loc_12C575A:     Set var_9C = Me.Txt
  loc_12C5760:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_12C5768:     0 = var_A4.Top
  loc_12C577A:     Set var_A8 = Me.Txt
  loc_12C5780:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_12C5788:     var_B4 = var_AC.Height
  loc_12C579A:     Set var_B8 = Me.Txt
  loc_12C57A0:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_12C57A8:     var_C0 = var_BC.Width
  loc_12C57F0:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12C5817:   Else
  loc_12C581F:     If (var_86 = CInt(4)) Then
  loc_12C582F:       Set var_90 = Me.Txt
  loc_12C5835:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_E0, CInt(var_8C))
  loc_12C583D:       CInt((var_B0 + var_B4)) = var_94.Text
  loc_12C5854:       If (var_E0 = "Yes") Then
  loc_12C5864:         Set var_90 = Me.Txt
  loc_12C586A:         Call 0.Method_Txt_KeyDown0 (CInt(5), var_94, &HFF)
  loc_12C5872:         var_94.Enabled = CInt(var_C0)
  loc_12C588B:         Set var_90 = Me.Txt
  loc_12C5891:         Call 0.Method_Txt_KeyDown0 (CInt(6), var_94, &HFF)
  loc_12C5899:         var_94.Enabled = True
  loc_12C58A8:       Else
  loc_12C58B5:         Set var_90 = Me.Txt
  loc_12C58BB:         Call 0.Method_Txt_KeyDown0 (CInt(5), var_94)
  loc_12C58C3:         var_94.Enabled = False
  loc_12C58DC:         Set var_90 = Me.Txt
  loc_12C58E2:         Call 0.Method_Txt_KeyDown0 (CInt(6), var_94)
  loc_12C58EA:         var_94.Enabled = False
  loc_12C58F6:       End If
  loc_12C58F9:     Else
  loc_12C5901:       If (var_86 = CInt(5)) Then
  loc_12C5921:         Set var_A4 = Me.FGPoint
  loc_12C592C:         Set var_9C = Nothing
  loc_12C595E:         Proc_6_69_134A198(Me.DGLedgerAc, Me.Txt, CInt(5), global_64, Shift, 0)
  loc_12C59CD:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12C59F3:           Proc_6_138_106D6F8(Me.DGLedgerAc, global_64, KeyCode, Me.FGPoint, 1)
  loc_12C5A01:         End If
  loc_12C5A04:       Else
  loc_12C5A0C:         If (var_86 = CInt(7)) Then
  loc_12C5A37:           Set var_9C = Nothing
  loc_12C5A69:           Proc_6_69_134A198(Me.DGTaxStru, Me.Txt, CInt(7), global_68, Shift, 0, 1)
  loc_12C5AD8:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12C5ADF:             Set var_9C = Me.DGTaxStru
  loc_12C5AFE:             Proc_6_138_106D6F8(var_9C, global_68, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_12C5B0C:           End If
  loc_12C5B0C:         End If
  loc_12C5B0C:       End If
  loc_12C5B0C:     End If
  loc_12C5B0C:   End If
  loc_12C5B0C: End If
  loc_12C5B3D: Set var_9C = Me.DGTaxStru
  loc_12C5B43: var_110 = var_9C.Visible
  loc_12C5B57: Set var_A4 = Me.FrmList
  loc_12C5B7D: If ((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGLedgerAc.Visible) = 0)) And (CBool(var_110) = 0)) And (var_A4.Visible = 0)) Then
  loc_12C5B9E:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(7))) Then
  loc_12C5BD8:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_160) = 6) Then
  loc_12C5BDB:       Call TopCtrl1_UnknownEvent_16()
  loc_12C5BE0:     End If
  loc_12C5BE0:     Exit Sub
  loc_12C5BE1:   End If
  loc_12C5BF6:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12C5BFF:     Proc_6_75_E527CC(Shift, arg_14, 0, var_9C)
  loc_12C5C04:   End If
  loc_12C5C17:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_12C5C20:     Proc_6_76_E52838(Shift, arg_14, var_A4)
  loc_12C5C25:   End If
  loc_12C5C25: End If
  loc_12C5C25: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '105936C
  'Data Table: 49D8FC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  loc_10590F6: Proc_6_133_E7EF78(var_94)
  loc_10590FF: arg_10 = CInt(var_94)
  loc_1059108: Proc_6_58_E054C0(arg_10, arg_10)
  loc_1059110: var_96 = KeyAscii
  loc_105911B: If Not (var_96 = CInt(2)) Then
  loc_1059126:   If Not (var_96 = CInt(3)) Then
  loc_1059131:     If (var_96 = CInt(4)) Then
  loc_1059134:     End If
  loc_1059134:   End If
  loc_105915D:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_105916D:     Set var_CC = Me.Txt
  loc_1059173:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_105917B:     var_D0.Text = var_96
  loc_105918A:   Else
  loc_10591B3:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_10591C3:       Set var_CC = Me.Txt
  loc_10591C9:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_10591D1:       var_D0.Text = "No"
  loc_10591DD:     End If
  loc_10591DD:   End If
  loc_10591DF:   arg_10 = 0
  loc_10591E5: Else
  loc_10591ED:   If (var_96 = CInt(1)) Then
  loc_10591F2:     arg_10 = 0
  loc_10591F8:   Else
  loc_1059200:     If (var_96 = CInt(6)) Then
  loc_105922C:       If (Ucase(Chr(CLng(arg_10))) = "D") Then
  loc_105923C:         Set var_CC = Me.Txt
  loc_1059242:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Detailed")
  loc_105924A:         var_D0.Text = arg_10
  loc_1059259:       Else
  loc_1059282:         If (Ucase(Chr(CLng(arg_10))) = "S") Then
  loc_1059292:           Set var_CC = Me.Txt
  loc_1059298:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Summerised")
  loc_10592A0:           var_D0.Text = arg_10
  loc_10592AC:         End If
  loc_10592AC:       End If
  loc_10592AF:     Else
  loc_10592B7:       If (var_96 = CInt(8)) Then
  loc_10592E3:         If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_10592F3:           Set var_CC = Me.Txt
  loc_10592F9:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_1059301:           var_D0.Text = "Active"
  loc_1059310:         Else
  loc_1059339:           If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1059349:             Set var_CC = Me.Txt
  loc_105934F:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_1059357:             var_D0.Text = "Non Active"
  loc_1059363:           End If
  loc_1059363:         End If
  loc_1059365:         arg_10 = 0
  loc_1059368:       End If
  loc_1059368:     End If
  loc_1059368:   End If
  loc_1059368: End If
  loc_1059368: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '10214D4
  'Data Table: 49D8FC
  Dim var_86 As Integer
  loc_10212AB: var_86 = KeyCode
  loc_10212B6: If (var_86 = CInt(0)) Then
  loc_10212D5:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_10212E2:     var_A0 = "Name"
  loc_10212FD:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_56)
  loc_102132F:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_102133D:   End If
  loc_1021340: Else
  loc_1021348:   If (var_86 = CInt(1)) Then
  loc_1021366:     If (Me.FrmList.Visible = &HFF) Then
  loc_1021395:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_10213A5:     End If
  loc_10213A8:   Else
  loc_10213B0:     If (var_86 = CInt(5)) Then
  loc_10213CF:       If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_10213FC:         Proc_6_89_146F1AC(Me.Txt, KeyCode, global_64, Shift, "Name")
  loc_102142E:         Proc_6_138_106D6F8(Me.DGLedgerAc, global_64, KeyCode, Me.FGPoint, 0)
  loc_102143C:       End If
  loc_102143F:     Else
  loc_1021447:       If (var_86 = CInt(7)) Then
  loc_1021466:         If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_1021493:           Proc_6_89_146F1AC(Me.Txt, KeyCode, global_68, Shift, "Name")
  loc_10214C5:           Proc_6_138_106D6F8(Me.DGTaxStru, global_68, KeyCode, Me.FGPoint, 0)
  loc_10214D3:         End If
  loc_10214D3:       End If
  loc_10214D3:     End If
  loc_10214D3:   End If
  loc_10214D3: End If
  loc_10214D3: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4BB6C
  'Data Table: 49D8FC
  loc_E4BB4A: Set var_88 = Me.Txt
  loc_E4BB50: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4BB5E: Proc_6_73_E22704(var_8C)
  loc_E4BB6A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '11CB214
  'Data Table: 49D8FC
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim var_8C As Variant
  Dim var_AC As TextBox
  Dim Me As Recordset15
  Dim var_94 As String
  loc_11CADB0: On Error Goto loc_11CB1CF
  loc_11CADB6: var_86 = Cancel
  loc_11CADC1: If (var_86 = CInt(0)) Then
  loc_11CADC7:   Call Proc_266_34_1082BB0(var_88)
  loc_11CADD2:   If (var_88 = &HFF) Then
  loc_11CADD7:     arg_10 = &HFF
  loc_11CADDA:     Exit Sub
  loc_11CADDB:   End If
  loc_11CADDE: Else
  loc_11CADE6:   If (var_86 = CInt(1)) Then
  loc_11CADF6:     Set var_8C = Me.Txt
  loc_11CADFC:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_11CAE04:     arg_10 = var_90.Text
  loc_11CAE1B:     If (var_94 <> vbNullString) Then
  loc_11CAE36:       Set var_90 = Me.ListView.SelectedItem
  loc_11CAE3C:       var_94 = var_90.Text
  loc_11CAE4E:       Set var_A8 = Me.Txt
  loc_11CAE54:       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_11CAE5C:       var_AC.Text = var_94
  loc_11CAE72:     End If
  loc_11CAE75:   Else
  loc_11CAE7D:     If (var_86 = CInt(5)) Then
  loc_11CAECE:       Set var_8C = Me.Txt
  loc_11CAED4:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_11CAEDC:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_11CAEF4:       If (var_86 Or (var_94 = vbNullString)) Then
  loc_11CAEF7:         Exit Sub
  loc_11CAEF8:       End If
  loc_11CAF33:       Set var_A8 = Me.Txt
  loc_11CAF39:       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_11CAF41:       var_AC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11CAF74:       var_90 = Me.Fields.Item("Code")
  loc_11CAF92:       Set var_A8 = Me.Txt
  loc_11CAF98:       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_11CAFA0:       var_AC.Tag = CStr(var_90.Value)
  loc_11CAFB9:     Else
  loc_11CAFC1:       If (var_86 = CInt(7)) Then
  loc_11CB012:         Set var_8C = Me.Txt
  loc_11CB018:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11CB038:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_11CB048:           Set var_8C = Me.Txt
  loc_11CB04E:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11CB056:           var_90.Tag = vbNullString
  loc_11CB062:           Exit Sub
  loc_11CB063:         End If
  loc_11CB09E:         Set var_A8 = Me.Txt
  loc_11CB0A4:         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_11CB0AC:         var_AC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11CB0DF:         var_90 = Me.Fields.Item("Code")
  loc_11CB0F0:         var_94 = CStr(var_90.Value)
  loc_11CB0FD:         Set var_A8 = Me.Txt
  loc_11CB103:         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_11CB10B:         var_AC.Tag = var_94
  loc_11CB124:       Else
  loc_11CB12C:         If (var_86 = CInt(8)) Then
  loc_11CB139:           Set var_8C = Me.Txt
  loc_11CB13F:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_11CB15E:           var_E4 = Ucase(Left(CVar(var_90), 0))
  loc_11CB17A:           If (var_E4 = "Active") Then
  loc_11CB18A:             Set var_8C = Me.Txt
  loc_11CB190:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11CB198:             var_90.Text = "Active"
  loc_11CB1A7:           Else
  loc_11CB1B4:             Set var_8C = Me.Txt
  loc_11CB1BA:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11CB1C2:             var_90.Text = "Non Active"
  loc_11CB1CE:           End If
  loc_11CB1CE:         End If
  loc_11CB1CE:       End If
  loc_11CB1CE:     End If
  loc_11CB1CE:   End If
  loc_11CB1CE: End If
  loc_11CB1CE: Exit Sub
  loc_11CB1CF: ' Referenced from: 11CADB0
  loc_11CB1D7: Set var_8C = Err()
  loc_11CB1DD: Call 0.Method_arg_2C (var_94)
  loc_11CB1FE: MsgBox(CVar(var_94), &H40, "Information", var_E4, var_F4)
  loc_11CB211: Exit Sub
  loc_11CB212: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_9 'F3A6A4
  'Data Table: 49D8FC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3A59B: Me.DGLedgerAc.Visible = False
  loc_F3A5BA: If (Me.RecordCount > 0) Then
  loc_F3A5F9:   Set var_B4 = Me.Txt
  loc_F3A5FF:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3A607:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3A63A:   var_B0 = Me.Fields.Item("Name")
  loc_F3A659:   Set var_B4 = Me.Txt
  loc_F3A65F:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3A667:   var_B8.Text = CStr(var_B0.Value)
  loc_F3A67D: End If
  loc_F3A688: Set var_A8 = Me.Txt
  loc_F3A68E: Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(5))
  loc_F3A696: var_B0.SetFocus
  loc_F3A6A2: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_1F 'E72AA8
  'Data Table: 49D8FC
  loc_E72A66: Proc_6_153_E91194(Me.DGLedgerAc, arg_14)
  loc_E72A7D: Set var_8C = Me.FGPoint
  loc_E72A99: Proc_6_138_106D6F8(Me.DGLedgerAc, global_64, CInt(5))
  loc_E72AA7: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F35584
  'Data Table: 49D8FC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3547B: Me.DGHelp.Visible = False
  loc_F3549A: If (Me.RecordCount > 0) Then
  loc_F354D9:   Set var_B4 = Me.Txt
  loc_F354DF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F354E7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3551A:   var_B0 = Me.Fields.Item("Name")
  loc_F35539:   Set var_B4 = Me.Txt
  loc_F3553F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F35547:   var_B8.Text = CStr(var_B0.Value)
  loc_F3555D: End If
  loc_F35568: Set var_A8 = Me.Txt
  loc_F3556E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F35576: var_B0.SetFocus
  loc_F35582: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E72E20
  'Data Table: 49D8FC
  loc_E72DDE: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E72DF5: Set var_8C = Me.FGPoint
  loc_E72E11: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0))
  loc_E72E1F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFDB04
  'Data Table: 49D8FC
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFDA38: On Error Goto loc_EFDABE
  loc_EFDA3B: Call Proc_266_32_E9B818()
  loc_EFDA4D: Me.LblUser.Caption = vbNullString
  loc_EFDA62: Me.LblLDt.Caption = vbNullString
  loc_EFDA7F: var_8C = "ADD"
  loc_EFDA8D: Call Proc_266_31_E789BC(Proc_5_1_100CB50(var_8C, Me))
  loc_EFDAA3: Set var_88 = Me.Txt
  loc_EFDAA9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EFDAB1: var_94.SetFocus
  loc_EFDABD: Exit Sub
  loc_EFDABE: ' Referenced from: EFDA38
  loc_EFDAC6: Set var_88 = Err()
  loc_EFDACC: Call 0.Method_arg_2C (var_8C)
  loc_EFDAED: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFDB00: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBDA78
  'Data Table: 49D8FC
  loc_EBD9E4: On Error Goto loc_EBDA6F
  loc_EBDA1E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBDA2D:   Set var_110 = Me
  loc_EBDA44:   Call Proc_266_31_E789BC(Proc_5_1_100CB50("INI", var_110))
  loc_EBDA4F:   Call Proc_266_33_134990C(global_52)
  loc_EBDA57: Else
  loc_EBDA5D:   Call 0.Method_arg_1E8 (var_110)
  loc_EBDA65:   Call var_110.SetFocus
  loc_EBDA6E: End If
  loc_EBDA6E: Exit Sub
  loc_EBDA6F: ' Referenced from: EBD9E4
  loc_EBDA6F: Proc_6_60_E62BC4()
  loc_EBDA74: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10EAB00
  'Data Table: 49D8FC
  Dim var_96 As Integer
  Dim unk_49D910 As Connection15
  Dim Me As Recordset15
  Dim var_124 As Fields15
  Dim var_FC As Variant
  Dim var_12C As String
  loc_10EA818: On Error Goto loc_10EAAA9
  loc_10EA829: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_10EA82C:   Exit Sub
  loc_10EA82D: End If
  loc_10EA864: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_FC, var_11C) = 6) Then
  loc_10EA869:   var_96 = 0
  loc_10EA875:   unk_49D910.BeginTrans var_120
  loc_10EA87C:   var_96 = &HFF
  loc_10EA890:   var_94 = Me.Bookmark 'Variant
  loc_10EA8DC:   var_FC = "Delete From MembershipRevMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10EA8EA:   unk_49D910.Execute CStr(var_FC), var_11C, -1
  loc_10EA935:   var_168 = 0
  loc_10EA948:   var_160 = 0
  loc_10EA953:   var_15C = 0
  loc_10EA966:   var_154 = 0
  loc_10EA971:   var_150 = 0
  loc_10EA984:   var_148 = 0
  loc_10EA9C4:   var_12C = "MembershipRevMast"
  loc_10EA9CD:   Proc_154_5_10E33A4(MemVar_1F92044, var_12C, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_10EA9FB:   unk_49D910.CommitTrans
  loc_10EAA02:   var_96 = 0
  loc_10EAA10:   Me.Requery -1
  loc_10EAA20:   Me.Requery -1
  loc_10EAA40:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10EAA4D:     Me.Bookmark = var_94
  loc_10EAA55:   Else
  loc_10EAA69:     If (Me.EOF = 0) Then
  loc_10EAA72:       Me.MoveLast
  loc_10EAA77:     End If
  loc_10EAA77:   End If
  loc_10EAA77:   Call Proc_266_33_134990C(var_96, var_148, 0, var_150, var_154)
  loc_10EAA98:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_10EAAA0: End If
  loc_10EAAA5: Set var_9C = Nothing
  loc_10EAAA8: Exit Sub
  loc_10EAAA9: ' Referenced from: 10EA818
  loc_10EAAAF: If (var_96 = &HFF) Then
  loc_10EAAB8:   unk_49D910.RollbackTrans
  loc_10EAABD: End If
  loc_10EAAC5: Set var_124 = Err()
  loc_10EAACB: Call 0.Method_arg_2C (var_12C, 0, var_15C)
  loc_10EAAEC: MsgBox(CVar(var_12C), &H30, " Deletion Error ", var_FC, var_11C)
  loc_10EAAFF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F6164C
  'Data Table: 49D8FC
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F61528: On Error Goto loc_F61609
  loc_F61539: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F6153C:   Exit Sub
  loc_F6153D: End If
  loc_F61554: If (Me.RecordCount > 0) Then
  loc_F6156C:   var_8C = "EDIT"
  loc_F6157A:   Call Proc_266_31_E789BC(Proc_5_1_100CB50(var_8C, Me))
  loc_F61590:   Set var_90 = Me.Txt
  loc_F61596:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F6159E:   var_98.SetFocus
  loc_F615AD: Else
  loc_F615CE:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F615DE: End If
  loc_F615EB: Me.LblUser.Caption = vbNullString
  loc_F61600: Me.LblLDt.Caption = vbNullString
  loc_F61608: Exit Sub
  loc_F61609: ' Referenced from: F61528
  loc_F61611: Set var_90 = Err()
  loc_F61617: Call 0.Method_arg_2C (var_8C)
  loc_F61638: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F6164B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B2D4
  'Data Table: 49D8FC
  loc_E1B2C9: Me.Global.Unload Me
  loc_E1B2D1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F28548
  'Data Table: 49D8FC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F28448: On Error Goto loc_F284E0
  loc_F28454: var_88 = Me.RecordCount
  loc_F28462: If (var_88 <= 0) Then
  loc_F2846B:   var_B8 = "Information"
  loc_F28486:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F28496:   Exit Sub
  loc_F28497: End If
  loc_F284A5: MemVar_1F920E4 = "SELECT Code as SearchCode,Description FROM MembershipRevMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Description"
  loc_F284AF: var_10C = "3000"
  loc_F284B5: Proc_6_126_F1BCC0(var_10C)
  loc_F284C3: MemVar_1F92120 = Me
  loc_F284DA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F284DF: Exit Sub
  loc_F284E0: ' Referenced from: F28448
  loc_F284E8: Set var_110 = Err()
  loc_F284EE: Call 0.Method_arg_1C (var_88)
  loc_F284FF: If (var_88 <> 0) Then
  loc_F2850A:   Set var_110 = Err()
  loc_F28510:   Call 0.Method_arg_2C (var_10C)
  loc_F28531:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F28544: End If
  loc_F28544: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2B698
  'Data Table: 49D8FC
  loc_E2B688: Proc_5_0_110649C(&HFF, Me)
  loc_E2B690: Call Proc_266_33_134990C(global_52)
  loc_E2B695: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2CA18
  'Data Table: 49D8FC
  loc_E2CA08: Proc_5_0_110649C(&HFF, Me)
  loc_E2CA10: Call Proc_266_33_134990C(global_52)
  loc_E2CA15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2C778
  'Data Table: 49D8FC
  loc_E2C768: Proc_5_0_110649C(&HFF, Me)
  loc_E2C770: Call Proc_266_33_134990C(global_52)
  loc_E2C775: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2BF98
  'Data Table: 49D8FC
  loc_E2BF88: Proc_5_0_110649C(&HFF, Me)
  loc_E2BF90: Call Proc_266_33_134990C(global_52)
  loc_E2BF95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '108551C
  'Data Table: 49D8FC
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_49D910 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1085284: On Error Goto loc_10854D0
  loc_10852A2: var_A4 = "SELECT Description,SubsDetails,RefundableYN,SubsChargeYN FROM MembershipRevMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Description"
  loc_10852AB: unk_49D910.Execute var_A4, var_C4, -1
  loc_10852B6: Set var_88 = var_C8
  loc_10852CC: var_CC = var_88.RecordCount
  loc_10852DA: If (var_CC = 0) Then
  loc_10852F6:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1085306:   Exit Sub
  loc_1085307: End If
  loc_1085316: var_A4 = MemVar_1F920B4 & "\MembershipRevMast.ttx"
  loc_108531D: Set var_C8 = var_88 
  loc_1085329: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1085333: Set var_88 = var_C8
  loc_1085339: var_B4 = CVar(var_12E) 'Integer
  loc_108533C: var_98 = var_B4 'Variant
  loc_1085358: var_A0 = MemVar_1F920B4 & "\MembershipRevMast.RPT"
  loc_1085361: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108536C: MemVar_1F921E4 = var_C8
  loc_1085387: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108538F: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108539B: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_10853B4:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10853BC:   Call 0.Method_arg_20 (var_138)
  loc_10853C4:   Call 0.Method_arg_30 (var_A0)
  loc_108540A:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1085420:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1085428:     Call 0.Method_arg_20 (var_138)
  loc_1085430:     Call 0.Method_arg_38 ("'Membership Revenue Master'")
  loc_108543C:   End If
  loc_108543F: Next var_132 'Integer
  loc_108545D: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_1085465: Call 0.Method_arg_2C (var_DC)
  loc_1085473: Call 0.Method_arg_150 (var_FC)
  loc_108547E: Call 0.Method_arg_50 (var_A0)
  loc_1085488: Set var_138 = Nothing
  loc_10854A2: Set var_C8 = MemVar_1F921E4 
  loc_10854AE: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_10854B9: MemVar_1F921E4 = var_C8
  loc_10854CC: Set var_88 = Nothing
  loc_10854CF: Exit Sub
  loc_10854D0: ' Referenced from: 1085284
  loc_10854D8: Set var_C8 = Err()
  loc_10854DE: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10854E9: Call 0.Method_arg_50 (var_A4)
  loc_1085505: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1085518: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E43378
  'Data Table: 49D8FC
  Dim Me As Recordset15
  loc_E4334F: Me.Requery -1
  loc_E4335F: Me.Requery -1
  loc_E4336F: Me.Requery -1
  loc_E43374: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14D6854
  'Data Table: 49D8FC
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim var_D8 As Variant
  Dim unk_49D910 As Connection15
  Dim var_94 As Variant
  Dim var_9C As Field20
  Dim var_FC As Variant
  Dim var_C8 As Variant
  Dim var_10C As Variant
  Dim Me As Recordset15
  Dim var_118 As TextBox
  Dim var_B4 As Variant
  Dim var_364 As TextBox
  Dim var_3B0 As TextBox
  Dim var_3FC As TextBox
  Dim var_4D0 As Variant
  Dim var_558 As TextBox
  Dim var_17C As Variant
  Dim var_264 As Variant
  Dim var_33C As Variant
  Dim var_3F4 As Variant
  Dim var_440 As Variant
  Dim var_530 As Variant
  Dim var_550 As Variant
  loc_14D5BB4: On Error Goto loc_14D6800
  loc_14D5BBB: var_86 = CByte(0) 'Byte
  loc_14D5BCA: Set var_94 = Me.Txt
  loc_14D5BD0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_14D5BF9: If (Proc_183_19_E8DAFC(var_98, "Description") = 0) Then
  loc_14D5C03:   Call Txt_GotFocus(CInt(0))
  loc_14D5C08:   Exit Sub
  loc_14D5C09: End If
  loc_14D5C14: Set var_94 = Me.Txt
  loc_14D5C1A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_14D5C43: If (Proc_183_19_E8DAFC(var_98, "Subscription Details") = 0) Then
  loc_14D5C4D:   Call Txt_GotFocus(CInt(1))
  loc_14D5C52:   Exit Sub
  loc_14D5C53: End If
  loc_14D5C5E: Set var_94 = Me.Txt
  loc_14D5C64: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_14D5C8D: If (Proc_183_19_E8DAFC(var_98, "Refundable") = 0) Then
  loc_14D5C97:   Call Txt_GotFocus(CInt(2))
  loc_14D5C9C:   Exit Sub
  loc_14D5C9D: End If
  loc_14D5CA8: Set var_94 = Me.Txt
  loc_14D5CAE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98)
  loc_14D5CD7: If (Proc_183_19_E8DAFC(var_98, "Subscription Charge") = 0) Then
  loc_14D5CE1:   Call Txt_GotFocus(CInt(3))
  loc_14D5CE6:   Exit Sub
  loc_14D5CE7: End If
  loc_14D5CF2: Set var_94 = Me.Txt
  loc_14D5CF8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_14D5D21: If (Proc_183_19_E8DAFC(var_98, "Acount (A/C)") = 0) Then
  loc_14D5D2B:   Call Txt_GotFocus(CInt(3))
  loc_14D5D30:   Exit Sub
  loc_14D5D31: End If
  loc_14D5D3F: Set var_94 = Me.Txt
  loc_14D5D45: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_14D5D64: If (var_98.Text = "Yes") Then
  loc_14D5D72:   Set var_94 = Me.Txt
  loc_14D5D78:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98)
  loc_14D5DA1:   If (Proc_183_19_E8DAFC(var_98, "(A/C) Name") = 0) Then
  loc_14D5DAB:     Call Txt_GotFocus(CInt(3))
  loc_14D5DB0:     Exit Sub
  loc_14D5DB1:   End If
  loc_14D5DBC:   Set var_94 = Me.Txt
  loc_14D5DC2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_98)
  loc_14D5DEB:   If (Proc_183_19_E8DAFC(var_98, "(A/C) Posting") = 0) Then
  loc_14D5DF5:     Call Txt_GotFocus(CInt(3))
  loc_14D5DFA:     Exit Sub
  loc_14D5DFB:   End If
  loc_14D5DFE: Else
  loc_14D5E0C:   Set var_94 = Me.Txt
  loc_14D5E12:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98)
  loc_14D5E1A:   var_98.Text = vbNullString
  loc_14D5E34:   Set var_94 = Me.Txt
  loc_14D5E3A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98)
  loc_14D5E42:   var_98.Tag = vbNullString
  loc_14D5E5C:   Set var_94 = Me.Txt
  loc_14D5E62:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_98)
  loc_14D5E6A:   var_98.Text = vbNullString
  loc_14D5E76: End If
  loc_14D5E81: Set var_94 = Me.Txt
  loc_14D5E87: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_98)
  loc_14D5EB0: If (Proc_183_19_E8DAFC(var_98, "Tax Structure") = 0) Then
  loc_14D5EBA:   Call Txt_GotFocus(CInt(3))
  loc_14D5EBF:   Exit Sub
  loc_14D5EC0: End If
  loc_14D5EC4: Set var_94 = Me.TopCtrl1
  loc_14D5ECA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_14D5EE3: If (CStr() = "Add") Then
  loc_14D5EEC:   var_D8 = 0
  loc_14D5F09:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),0)+1 AS MyCode From MembershipRevMast Where SITE_CODE='" & MemVar_1F92070
  loc_14D5F19:   unk_49D910.Execute CStr() & "'", var_B4, -1
  loc_14D5F21:   var_94 = var_94.Fields
  loc_14D5F29:   var_D8 = var_98.Item(var_98)
  loc_14D5F31:   var_9C = var_9C.Value
  loc_14D5F6A:   var_FC = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_14D5F98:   var_10C = (1 + Format(CStr(var_E8), "0000"))
  loc_14D5FA3:   global_72 = CStr(var_10C)
  loc_14D5FB8: Else
  loc_14D5FD5:   var_98 = Me.Fields.Item("Code")
  loc_14D5FEC:   global_72 = CStr(var_98.Value)
  loc_14D5FFD: End If
  loc_14D6006: unk_49D910.BeginTrans var_110
  loc_14D600F: var_86 = CByte(1) 'Byte
  loc_14D6017: Set var_94 = Me.TopCtrl1
  loc_14D601D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_14D6036: If (CStr(var_FC) = "Add") Then
  loc_14D6047:   Set var_94 = Me.Txt
  loc_14D604D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_14D6068:   Set var_9C = Me.Txt
  loc_14D606E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118)
  loc_14D6086:   Set var_128 = Me.Txt
  loc_14D608C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_14D609B:   var_E8 = Trim(CVar(var_12C))
  loc_14D60DD:   Set var_1B0 = Me.Txt
  loc_14D60E3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B4)
  loc_14D6134:   Set var_288 = Me.Txt
  loc_14D613A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_28C)
  loc_14D618E:   Set var_360 = Me.Txt
  loc_14D6194:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_364)
  loc_14D61AF:   Set var_3AC = Me.Txt
  loc_14D61B5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_3B0)
  loc_14D61D0:   Set var_3F8 = Me.Txt
  loc_14D61D6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_3FC)
  loc_14D61E8:   var_4D0 = CVar(Proc_6_15_EF2C1C(var_E8)) 'String
  loc_14D61EE:   Proc_6_7_F25D88(var_4E0)
  loc_14D6201:   Set var_554 = Me.Txt
  loc_14D6207:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_558)
  loc_14D622B:   var_A0 = "Insert Into MembershipRevMast(Code,Description,SubsDetails,RefundableYN,SubsChargeYN,AcountYN,AcCode,ACPosting,TaxStru,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code,Status) Values('" & global_72
  loc_14D6264:   var_264 = CVar(var_A0 & "','" & var_98.Text & "','" & var_118.Text & "','") & IIf((var_E8 = "Yes"), "Y", "N") & "','" & IIf((Trim(CVar(var_1B4)) = "Yes"), "Y", "N") 
  loc_14D62A3:   var_3F4 = var_264 & "','" & IIf((Trim(CVar(var_28C)) = "Yes"), "Y", "N") & "','" & CVar(var_364.Tag) & "','" & CVar(var_3B0.Text) & "','" 
  loc_14D62F6:   var_530 = var_3F4 & CVar(var_3FC.Tag) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_4E0 & ",'A','" & CVar(MemVar_1F92078) 
  loc_14D6320:   unk_49D910.Execute CStr(var_530 & "','" & CVar(var_558.Text) & "')"), var_5C0, -1
  loc_14D63C1: Else
  loc_14D63CF:   Set var_94 = Me.Txt
  loc_14D63D5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_14D63DD:   var_5C4 = var_98.Text
  loc_14D63F0:   Set var_9C = Me.Txt
  loc_14D63F6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118)
  loc_14D640E:   Set var_128 = Me.Txt
  loc_14D6414:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_14D6423:   var_E8 = Trim(CVar(var_12C))
  loc_14D6441:   var_C8 = "Yes"
  loc_14D644B:   var_10C = (var_E8 = var_C8) 'Variant
  loc_14D6465:   Set var_1B0 = Me.Txt
  loc_14D646B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B4)
  loc_14D64BC:   Set var_288 = Me.Txt
  loc_14D64C2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_28C)
  loc_14D6516:   Set var_360 = Me.Txt
  loc_14D651C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_364)
  loc_14D6537:   Set var_3AC = Me.Txt
  loc_14D653D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_3B0)
  loc_14D6558:   Set var_3F8 = Me.Txt
  loc_14D655E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_3FC)
  loc_14D6570:   var_4D0 = CVar(Proc_6_15_EF2C1C(var_4D0)) 'String
  loc_14D6576:   Proc_183_7_EB0C44(var_4E0)
  loc_14D6589:   Set var_554 = Me.Txt
  loc_14D658F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_558)
  loc_14D65C5:   var_17C = CVar("UPDATE MembershipRevMast SET Description='" & var_A0 & "',SubsDetails='" & var_118.Text & "',RefundableYN='") 'String
  loc_14D65EB:   var_33C = var_17C & IIf(var_10C, "Y", "N") & "',SubsChargeYN='" & IIf((Trim(CVar(var_1B4)) = "Yes"), "Y", "N") & "',AcountYN='" & IIf((Trim(CVar(var_28C)) = "Yes"), "Y", "N") 
  loc_14D662D:   var_440 = var_33C & "',AcCode='" & CVar(var_364.Tag) & "',ACPosting='" & CVar(var_3B0.Text) & "',TaxStru='" & CVar(var_3FC.Tag) & "',SITE_CODE='" 
  loc_14D666D:   var_550 = var_440 & CVar(MemVar_1F92070) & "',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_4E0 & ",U_AE='E',Status='" & CVar(var_558.Text) 
  loc_14D669A:   unk_49D910.Execute CStr(var_550 & "' WHERE Code='" & CVar(global_72) & "'"), var_5C0, -1
  loc_14D6734: End If
  loc_14D673A: unk_49D910.CommitTrans
  loc_14D6743: var_86 = CByte(0) 'Byte
  loc_14D6747: Call Proc_266_35_F21C70(var_5C4)
  loc_14D6757: Me.Requery -1
  loc_14D6767: Me.Requery -1
  loc_14D6794: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_14D67A4: Set var_94 = Me.TopCtrl1
  loc_14D67AA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_C8)
  loc_14D67C3: If (CStr(var_4D0) = "Add") Then
  loc_14D67C6:   Call TopCtrl1_UnknownEvent_A()
  loc_14D67CB:   Exit Sub
  loc_14D67CC: End If
  loc_14D67E1: var_A0 = "INI"
  loc_14D67EF: Call Proc_266_31_E789BC(Proc_5_1_100CB50(var_A0, Me))
  loc_14D67FA: Call Proc_266_33_134990C(global_52)
  loc_14D67FF: Exit Sub
  loc_14D6800: ' Referenced from: 14D5BB4
  loc_14D6809: If (CInt(var_86) = 1) Then
  loc_14D6812:   unk_49D910.RollbackTrans
  loc_14D6817: End If
  loc_14D681F: Set var_94 = Err()
  loc_14D6825: Call 0.Method_arg_2C (var_A0)
  loc_14D683E: MsgBox(CVar(var_A0), &H10, var_E8, var_FC, var_10C)
  loc_14D6851: Exit Sub
End Sub

Private Sub Form_Load() '108E5F8
  'Data Table: 49D8FC
  Dim var_8C As Label
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_49D910 As Connection15
  Dim var_B4 As Variant
  loc_108E350: On Error Goto loc_108E5B3
  loc_108E353: Call Proc_266_36_1009ED4()
  loc_108E35F: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_108E373: Me.LblUser.Left = CDbl(13500)
  loc_108E38A: Me.LblUser.Top = CDbl(7800)
  loc_108E3A1: Me.LblLDt.Top = CDbl(8160)
  loc_108E3B2: Set var_8C = Me.LblLDt
  loc_108E3B8: var_8C.Left = CDbl(13500)
  loc_108E3DB: var_94 = "SELECT Code,Description as Name FROM MembershipRevMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_108E3E4: unk_49D910.Execute var_94, var_B4, -1
  loc_108E413: CVarUnk
  loc_108E418: VerifyVarObj
  loc_108E424: LateIdStAd
  loc_108E44D: var_94 = "SELECT SubCode as Code,Name FROM SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_108E456: unk_49D910.Execute var_94, var_B4, -1
  loc_108E485: CVarUnk
  loc_108E48A: VerifyVarObj
  loc_108E496: LateIdStAd
  loc_108E4C8: unk_49D910.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_108E4F7: CVarUnk
  loc_108E4FC: VerifyVarObj
  loc_108E508: LateIdStAd
  loc_108E52A: var_90 = "SELECT Distinct M.Code as SearchCode,M.*,S.Name As LedgerName,T.Name As TaxStruName FROM (MembershipRevMast M Left Join SubGroup S on M.AcCode=S.SubCode) Left Join TaxStru T on T.Code=M.TaxStru WHERE (M.LOGSITE_CODE='" & MemVar_1F92078
  loc_108E53A: unk_49D910.Execute var_90 & "' or M.LOGSITE_CODE='HO') ORDER BY M.Code", var_B4, -1
  loc_108E56C: Set var_8C = Me
  loc_108E575: var_90 = "INI"
  loc_108E583: Call Proc_266_31_E789BC(Proc_5_1_100CB50(var_90, var_8C, Me.DGTaxStru, var_8C, var_8C, Me.DGLedgerAc, var_8C), var_8C, Me.DGHelp, var_8C)
  loc_108E597: Call 0.Method_arg_160 (var_8C, var_8C)
  loc_108E5A5: Call 0.Method_arg_164 (var_8C, var_8C)
  loc_108E5AD: Call Proc_266_33_134990C(var_8C)
  loc_108E5B2: Exit Sub
  loc_108E5B3: ' Referenced from: 108E350
  loc_108E5BB: Set var_8C = Err()
  loc_108E5C1: Call 0.Method_arg_2C (var_90)
  loc_108E5E2: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_108E5F5: Exit Sub
  loc_108E5F6: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E61338
  'Data Table: 49D8FC
  loc_E612F7: Set global_52 = Nothing
  loc_E61309: Set global_56 = Nothing
  loc_E6131B: Set global_64 = Nothing
  loc_E6132D: Set global_68 = Nothing
  loc_E61334: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E26E84
  'Data Table: 49D8FC
  loc_E26E5C: On Error Goto loc_E26E7B
  loc_E26E73: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E26E7B: ' Referenced from: E26E5C
  loc_E26E7B: Proc_6_60_E62BC4(Shift)
  loc_E26E80: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E86008
  'Data Table: 49D8FC
  loc_E85FB4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E85FB7:   Call DGHelp_UnknownEvent_9()
  loc_E85FBC: End If
  loc_E85FD8: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_E85FDB:   Call DGTaxStru_UnknownEvent_9()
  loc_E85FE0: End If
  loc_E85FFC: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_E85FFF:   Call DGLedgerAc_UnknownEvent_9()
  loc_E86004: End If
  loc_E86004: Exit Sub
  loc_E86005: Set var_B4 = 
End Sub

Public Sub SEARCHBACK(MyValue) 'EC5304
  'Data Table: 49D8FC
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC527A: On Error Goto loc_EC52BF
  loc_EC5283: Me.MoveFirst
  loc_EC529D: var_8C = "code='" & MyValue
  loc_EC52AD: Me.Find var_8C & "'", 0, 1
  loc_EC52B9: Call Proc_266_33_134990C(var_A0)
  loc_EC52BE: Exit Sub
  loc_EC52BF: ' Referenced from: EC527A
  loc_EC52C7: Set var_A4 = Err()
  loc_EC52CD: Call 0.Method_arg_2C (var_8C)
  loc_EC52EE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC5301: Exit Sub
  loc_EC5302: Exit Sub
End Sub

Public Sub Proc_266_31_E789BC(arg_C) 'E789BC
  'Data Table: 49D8FC
  Dim var_98 As TextBox
  loc_E7896A: Set var_8C = Me.Txt
  loc_E78970: Call 0.Method_Proc_266_31_E789BCC (var_8E, var_86)
  loc_E78980: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78996:   Set var_8C = Me.Txt
  loc_E7899C:   Call 0.Method_Proc_266_31_E789BC0 (CInt(var_86), var_98)
  loc_E789A4:   var_98.Enabled = arg_C
  loc_E789B3: Next var_92 'Byte
  loc_E789B9: Exit Sub
  loc_E789BA: Set var_7C00 = 
End Sub

Public Sub Proc_266_32_E9B818
  'Data Table: 49D8FC
  Dim var_98 As TextBox
  loc_E9B79E: Set var_8C = Me.Txt
  loc_E9B7A4: Call 0.Method_Proc_266_32_E9B818C (var_8E, var_86)
  loc_E9B7B4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9B7CA:   Set var_8C = Me.Txt
  loc_E9B7D0:   Call 0.Method_Proc_266_32_E9B8180 (CInt(var_86), var_98)
  loc_E9B7D8:   var_98.Text = vbNullString
  loc_E9B7E7: Next var_92 'Byte
  loc_E9B7FB: Set var_8C = Me.Txt
  loc_E9B801: Call 0.Method_Proc_266_32_E9B8180 (CInt(8), var_98)
  loc_E9B809: var_98.Text = "Active"
  loc_E9B815: Exit Sub
End Sub

Public Sub Proc_266_33_134990C
  'Data Table: 49D8FC
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B8 As Fields15
  Dim var_B4 As String
  Dim var_CC As TextBox
  loc_134913C: On Error Goto loc_13498C8
  loc_1349145: Proc_183_45_E5C118(global_52)
  loc_1349161: If (Me.RecordCount <= 0) Then
  loc_1349164:   Call Proc_266_32_E9B818()
  loc_134916C: Else
  loc_1349215:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_134925D:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_Name")))))
  loc_13492DD:   var_CC = Me.Fields.Item("U_AE")
  loc_134933E:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_CC)) = "E"), "Last Update :   ", "entdt :   "))
  loc_1349386:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_EntDt")))))
  loc_13493F2:   global_72 = CStr(Me.Fields.Item("Code").Value)
  loc_134943F:   Set var_B8 = Me.Txt
  loc_1349445:   Call 0.Method_Proc_266_33_134990C0 (CInt(0), var_CC)
  loc_134944D:   var_CC.Text = CStr(Me.Fields.Item("Description").Value)
  loc_134949F:   Set var_B8 = Me.Txt
  loc_13494A5:   Call 0.Method_Proc_266_33_134990C0 (CInt(0), var_CC)
  loc_13494AD:   var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_13494FF:   Set var_B8 = Me.Txt
  loc_1349505:   Call 0.Method_Proc_266_33_134990C0 (CInt(1), var_CC)
  loc_134950D:   var_CC.Text = CStr(Me.Fields.Item("SubsDetails").Value)
  loc_1349590:   Set var_B8 = Me.Txt
  loc_1349596:   Call 0.Method_Proc_266_33_134990C0 (CInt(2), var_CC)
  loc_134959E:   var_CC.Text = CStr(IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("RefundableYN"))) = "Y"), "Yes", "No"))
  loc_134962F:   Set var_B8 = Me.Txt
  loc_1349635:   Call 0.Method_Proc_266_33_134990C0 (CInt(3), var_CC)
  loc_134963D:   var_CC.Text = CStr(IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("SubsChargeYN"))) = "Y"), "Yes", "No"))
  loc_1349694:   var_110 = "No"
  loc_13496B7:   var_130 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("AcountYN"))) = "Y"), "Yes", var_110)
  loc_13496CE:   Set var_B8 = Me.Txt
  loc_13496D4:   Call 0.Method_Proc_266_33_134990C0 (CInt(4), var_CC)
  loc_13496DC:   var_CC.Text = CStr(var_130)
  loc_1349739:   Set var_B8 = Me.Txt
  loc_134973F:   Call 0.Method_Proc_266_33_134990C0 (CInt(5), var_CC)
  loc_1349747:   var_CC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LedgerName")))
  loc_1349794:   Set var_B8 = Me.Txt
  loc_134979A:   Call 0.Method_Proc_266_33_134990C0 (CInt(5), var_CC)
  loc_13497A2:   var_CC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("AcCode")))
  loc_13497EF:   Set var_B8 = Me.Txt
  loc_13497F5:   Call 0.Method_Proc_266_33_134990C0 (CInt(6), var_CC)
  loc_13497FD:   var_CC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ACPosting")))
  loc_134984A:   Set var_B8 = Me.Txt
  loc_1349850:   Call 0.Method_Proc_266_33_134990C0 (CInt(7), var_CC)
  loc_1349858:   var_CC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStruName")))
  loc_1349897:   var_B4 = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")))
  loc_13498A5:   Set var_B8 = Me.Txt
  loc_13498AB:   Call 0.Method_Proc_266_33_134990C0 (CInt(7), var_CC)
  loc_13498B3:   var_CC.Tag = var_B4
  loc_13498C7: End If
  loc_13498C7: Exit Sub
  loc_13498C8: ' Referenced from: 134913C
  loc_13498D0: Set var_8C = Err()
  loc_13498D6: Call 0.Method_arg_2C (var_B4)
  loc_13498F7: MsgBox(CVar(var_B4), &H40, "Information", var_110, var_130)
  loc_134990A: Exit Sub
End Sub

Public Sub Proc_266_34_1082BB0
  'Data Table: 49D8FC
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_A8 As TextBox
  Dim unk_49D910 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1082943: If (Me.RecordCount = 0) Then
  loc_1082946:   Proc_266_34_1082BB0 = 
  loc_108294C: End If
  loc_1082950: Set var_90 = Me.TopCtrl1
  loc_1082956: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_108296F: If (CStr() = "Add") Then
  loc_108299C:   var_B0 = "Select Count(*) From MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Description='"
  loc_10829AD:   Set var_90 = Me.Txt
  loc_10829B3:   Call 0.Method_Proc_266_34_1082BB00 (CInt(0), var_A8, var_AC, var_B0, var_A0, -1)
  loc_10829D4:   unk_49D910.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_10829E4:    = var_D0.Item()
  loc_10829EC:    = var_E4.Value
  loc_1082A1D:   If (var_A8.Text.Fields > 0) Then
  loc_1082A3B:     var_A0 = "Duplicate Name"
  loc_1082A41:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1082A5C:     Set var_90 = Me.Txt
  loc_1082A62:     Call 0.Method_Proc_266_34_1082BB00 (CInt(0))
  loc_1082A6A:     var_A8.SetFocus
  loc_1082A7B:     Proc_266_34_1082BB0 = &HFF
  loc_1082A81:   End If
  loc_1082A84: Else
  loc_1082AAE:   var_B0 = "Select Count(*) From MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Description='"
  loc_1082ABF:   Set var_90 = Me.Txt
  loc_1082AC5:   Call 0.Method_Proc_266_34_1082BB00 (CInt(0), var_A8, var_AC, var_B0, var_A0, -1)
  loc_1082AF7:   unk_49D910.Execute var_D0 & var_AC & "' And Code<>'" & global_72 & "'", 0, var_E4
  loc_1082B07:    = var_D0.Item(var_A8)
  loc_1082B0F:    = var_E4.Value
  loc_1082B44:   If (var_A8.Text.Fields > 0) Then
  loc_1082B68:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1082B83:     Set var_90 = Me.Txt
  loc_1082B89:     Call 0.Method_Proc_266_34_1082BB00 (CInt(0))
  loc_1082B91:     var_A8.SetFocus
  loc_1082BA2:     Proc_266_34_1082BB0 = &HFF
  loc_1082BA8:   End If
  loc_1082BA8: End If
  loc_1082BA8: Proc_266_34_1082BB0 = var_A8
End Sub

Public Sub Proc_266_35_F21C70
  'Data Table: 49D8FC
  loc_F21B80: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F21B92:   Me.DGHelp.Visible = False
  loc_F21B9A: End If
  loc_F21BB6: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_F21BC8:   Me.DGLedgerAc.Visible = False
  loc_F21BD0: End If
  loc_F21BEC: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_F21BFE:   Me.DGTaxStru.Visible = False
  loc_F21C06: End If
  loc_F21C21: If (Me.FrmList.Visible = &HFF) Then
  loc_F21C30:   Me.FrmList.Visible = False
  loc_F21C38: End If
  loc_F21C54: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F21C66:   Me.FGPoint.Visible = False
  loc_F21C6E: End If
  loc_F21C6E: Exit Sub
End Sub

Public Sub Proc_266_36_1009ED4
  'Data Table: 49D8FC
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_1009CD2: Set var_88 = Me.Txt
  loc_1009CD8: Call 0.Method_Proc_266_36_1009ED40 (CInt(0), var_8C)
  loc_1009CF7: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_1009D13: Set var_B4 = Me.Txt
  loc_1009D19: Call 0.Method_Proc_266_36_1009ED40 (CInt(0), var_B8)
  loc_1009D34: Set var_88 = Me.Txt
  loc_1009D3A: Call 0.Method_Proc_266_36_1009ED40 (CInt(0), var_8C)
  loc_1009D52: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1009D61: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1009D81: Set var_88 = Me.Txt
  loc_1009D87: Call 0.Method_Proc_266_36_1009ED40 (CInt(5), var_8C)
  loc_1009DA6: Me.DGLedgerAc.Left = CVar(var_8C.Left)
  loc_1009DC2: Set var_B4 = Me.Txt
  loc_1009DC8: Call 0.Method_Proc_266_36_1009ED40 (CInt(5), var_B8)
  loc_1009DE3: Set var_88 = Me.Txt
  loc_1009DE9: Call 0.Method_Proc_266_36_1009ED40 (CInt(5), var_8C)
  loc_1009E01: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1009E10: Me.DGLedgerAc.Top = CVar(var_8C.Left)
  loc_1009E30: Set var_88 = Me.Txt
  loc_1009E36: Call 0.Method_Proc_266_36_1009ED40 (CInt(7), var_8C)
  loc_1009E55: Me.DGTaxStru.Left = CVar(var_8C.Left)
  loc_1009E71: Set var_B4 = Me.Txt
  loc_1009E77: Call 0.Method_Proc_266_36_1009ED40 (CInt(7), var_B8)
  loc_1009E92: Set var_88 = Me.Txt
  loc_1009E98: Call 0.Method_Proc_266_36_1009ED40 (CInt(7), var_8C)
  loc_1009EB0: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1009EBF: Me.DGTaxStru.Top = CVar(var_8C.Left)
  loc_1009ED1: Exit Sub
End Sub
