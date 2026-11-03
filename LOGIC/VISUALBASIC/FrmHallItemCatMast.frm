VERSION 5.00
Begin VB.Form FrmHallItemCatMast
  Caption = "Category and Charge Master"
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
  ClientWidth = 9300
  ClientHeight = 6345
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6210
    Top = 2115
    Width = 2370
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 13
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 3060
    Width = 1515
    Height = 285
    TabIndex = 7
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9300
    Height = 450
    TabIndex = 25
  End
  Begin MSFlexGrid FGPoint
    Left = 2025
    Top = 5805
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 19
  End
  Begin DataGrid DGHelp
    Left = 4020
    Top = 7275
    Width = 5175
    Height = 1590
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGSaleAc
    Left = 2640
    Top = 7140
    Width = 4230
    Height = 1950
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin DataGrid DGSaleTax
    Left = 2625
    Top = 6795
    Width = 4230
    Height = 1650
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin PictureBox Picture4
    Picture = "FrmHallItemCatMast.frx":0
    Left = 13335
    Top = 7515
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 22
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
  Begin PictureBox Picture2
    Picture = "FrmHallItemCatMast.frx":34E
    Left = 13545
    Top = 7185
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 21
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
  Begin PictureBox Picture1
    Picture = "FrmHallItemCatMast.frx":69C
    Left = 13230
    Top = 7125
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 20
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
  Begin Frame FrmList
    Left = 9045
    Top = 6285
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 17
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
      Left = 45
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 18
    End
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6210
    Top = 2115
    Width = 2370
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 13
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
    Top = 2115
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 2
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4275
    Top = 2430
    Width = 4300
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
    Top = 2745
    Width = 4300
    Height = 285
    TabIndex = 6
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
    ForeColor = &HFF0000&
    Left = 4275
    Top = 1800
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
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
    Top = 1485
    Width = 4300
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 40
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
  Begin Label LblName
    Caption = "Status"
    Index = 7
    ForeColor = &HFF0000&
    Left = 2550
    Top = 3075
    Width = 585
    Height = 240
    TabIndex = 29
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 435
    Width = 180
    Height = 540
    TabIndex = 28
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 270
    Top = 8790
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 285
    Top = 8460
    Width = 2520
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
  Begin Label Label2
    Caption = "Type"
    ForeColor = &HFF0000&
    Left = 5685
    Top = 2115
    Width = 465
    Height = 240
    TabIndex = 23
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
    Caption = "Category/Charge"
    Index = 5
    ForeColor = &HFF0000&
    Left = 2550
    Top = 2115
    Width = 1605
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 16
    ForeColor = &HFF0000&
    Left = 5640
    Top = 1815
    Width = 885
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
    Caption = "Post in Account"
    Index = 4
    ForeColor = &HFF0000&
    Left = 2550
    Top = 2430
    Width = 1470
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
  Begin Label LblName
    Caption = "Tax Structure"
    Index = 3
    ForeColor = &HFF0000&
    Left = 2550
    Top = 2745
    Width = 1290
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
  Begin Label LblName
    Caption = "Round Off"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2550
    Top = 1800
    Width = 945
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
    Caption = "Category Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2550
    Top = 1485
    Width = 1470
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
  Begin Label LblCatType
    Caption = "Type"
    ForeColor = &HFF0000&
    Left = 5685
    Top = 2115
    Width = 465
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
End

Attribute VB_Name = "FrmHallItemCatMast"


Private Sub DGSaleAc_UnknownEvent_9 'F44784
  'Data Table: 4C7EB0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4467B: Me.DGSaleAc.Visible = False
  loc_F4469A: If (Me.RecordCount > 0) Then
  loc_F446D9:   Set var_B4 = Me.Txt
  loc_F446DF:   Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3), var_B8)
  loc_F446E7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4471A:   var_B0 = Me.Fields.Item("Code")
  loc_F44739:   Set var_B4 = Me.Txt
  loc_F4473F:   Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3), var_B8)
  loc_F44747:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4475D: End If
  loc_F44768: Set var_A8 = Me.Txt
  loc_F4476E: Call 0.Method_DGSaleAc_UnknownEvent_90 (CInt(3))
  loc_F44776: var_B0.SetFocus
  loc_F44782: Exit Sub
End Sub

Private Sub DGSaleAc_UnknownEvent_1F 'E72040
  'Data Table: 4C7EB0
  loc_E71FFE: Proc_6_153_E91194(Me.DGSaleAc, arg_14)
  loc_E72015: Set var_8C = Me.FGPoint
  loc_E72031: Proc_6_138_106D6F8(Me.DGSaleAc, global_64, CInt(3))
  loc_E7203F: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F48564
  'Data Table: 4C7EB0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4845B: Me.DGHelp.Visible = False
  loc_F4847A: If (Me.RecordCount > 0) Then
  loc_F484B9:   Set var_B4 = Me.Txt
  loc_F484BF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F484C7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F484FA:   var_B0 = Me.Fields.Item("Code")
  loc_F48519:   Set var_B4 = Me.Txt
  loc_F4851F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F48527:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4853D: End If
  loc_F48548: Set var_A8 = Me.Txt
  loc_F4854E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F48556: var_B0.SetFocus
  loc_F48562: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E720D4
  'Data Table: 4C7EB0
  loc_E72092: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E720A9: Set var_8C = Me.FGPoint
  loc_E720C5: Proc_6_138_106D6F8(Me.DGHelp, global_60, CInt(0))
  loc_E720D3: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '135FCE0
  'Data Table: 4C7EB0
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_135F4BA: Set var_88 = Me.Txt
  loc_135F4C0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_135F4CE: Proc_6_74_E226B0(var_8C)
  loc_135F4DA: Call Proc_116_38_F214D8(var_8C)
  loc_135F4E2: var_92 = Index
  loc_135F4ED: If (var_92 = CInt(0)) Then
  loc_135F507:   If (Me.RecordCount > 0) Then
  loc_135F515:     Set var_8C = Me.FGPoint
  loc_135F52D:     Proc_6_137_1193554(Me.DGHelp, global_60, Index)
  loc_135F53B:   End If
  loc_135F53E: Else
  loc_135F546:   If (var_92 = CInt(3)) Then
  loc_135F560:     If (Me.RecordCount > 0) Then
  loc_135F56E:       Set var_8C = Me.FGPoint
  loc_135F586:       Proc_6_137_1193554(Me.DGSaleAc, global_64, Index)
  loc_135F594:     End If
  loc_135F5E2:     Set var_88 = Me.Txt
  loc_135F5E8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_135F5F0:     var_8C = var_8C.Text
  loc_135F608:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_135F618:       Set var_88 = Me.Txt
  loc_135F61E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_135F626:       var_8C.Tag = vbNullString
  loc_135F632:       Exit Sub
  loc_135F633:     End If
  loc_135F640:     Set var_88 = Me.Txt
  loc_135F646:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_135F64E:     var_A0 = var_8C.Text
  loc_135F660:     var_B0 = "Name"
  loc_135F69B:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_135F6A4:       Me.MoveFirst
  loc_135F6C7:       Set var_88 = Me.Txt
  loc_135F6CD:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_135F6D5:       0 = var_8C.Text
  loc_135F6EE:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_135F703:     End If
  loc_135F706:   Else
  loc_135F70E:     If (var_92 = CInt(4)) Then
  loc_135F728:       If (Me.RecordCount > 0) Then
  loc_135F736:         Set var_8C = Me.FGPoint
  loc_135F74E:         Proc_6_137_1193554(Me.DGSaleTax, global_68)
  loc_135F75C:       End If
  loc_135F7AA:       Set var_88 = Me.Txt
  loc_135F7B0:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_135F7B8:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_135F7D0:       If (Index Or (var_A0 = vbNullString)) Then
  loc_135F7E0:         Set var_88 = Me.Txt
  loc_135F7E6:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_135F7EE:         var_8C.Tag = vbNullString
  loc_135F7FA:         Exit Sub
  loc_135F7FB:       End If
  loc_135F808:       Set var_88 = Me.Txt
  loc_135F80E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_135F816:       var_A0 = var_8C.Text
  loc_135F828:       var_B0 = "Name"
  loc_135F83F:       var_B4 = Me.Fields.Item(var_B0)
  loc_135F863:       If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_135F86C:         Me.MoveFirst
  loc_135F88F:         Set var_88 = Me.Txt
  loc_135F895:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_135F89D:         0 = var_8C.Text
  loc_135F8B6:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_135F8CB:       End If
  loc_135F8CE:     Else
  loc_135F8D6:       If (var_92 = CInt(2)) Then
  loc_135F8E8:         Set var_88 = Me.Txt
  loc_135F8EE:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_135F8F6:         var_8C.SelStart = 0
  loc_135F90F:         Set var_88 = Me.Txt
  loc_135F915:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_135F930:         Set var_90 = Me.Txt
  loc_135F936:         Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_135F93E:         var_B4.SelLength = Len(var_8C.Text)
  loc_135F95E:         Set var_88 = Me.Txt
  loc_135F964:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_135F96C:         var_A0 = var_8C.Text
  loc_135F97E:         Set var_90 = Me.Txt
  loc_135F984:         Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_135F98C:         var_B4.Tag = var_A0
  loc_135F9A2:       Else
  loc_135F9AA:         If (var_92 = CInt(5)) Then
  loc_135F9BA:           ReDim var_F0(0 To 1)
  loc_135F9D1:           var_F0(0) = "Category"
  loc_135F9E0:           var_F0(1) = "Charge"
  loc_135F9F7:           global_96 = Array(var_F0)
  loc_135FA02:           Set var_B4 = Me.ListView
  loc_135FA1D:           Set var_8C = Me.Txt
  loc_135FA37:           Set global_112 = Proc_6_66_EFF8FC(var_B4, var_8C, Index)
  loc_135FA55:           Set var_88 = Me.Txt
  loc_135FA5B:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_135FA63:           global_96 = var_8C.Text
  loc_135FA75:           Set var_90 = Me.Txt
  loc_135FA7B:           Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_135FA83:           var_B4.Tag = 2
  loc_135FA99:         Else
  loc_135FAA1:           If (var_92 = CInt(6)) Then
  loc_135FAB1:             ReDim var_F0(0 To 7)
  loc_135FAC8:             var_F0(0) = "Food"
  loc_135FAD7:             var_F0(1) = "Liquor"
  loc_135FAE6:             var_F0(2) = "Confectionary"
  loc_135FAF5:             var_F0(3) = "Beverage"
  loc_135FB04:             var_F0(4) = "Miscellaneous"
  loc_135FB13:             var_F0(5) = "Tobacco"
  loc_135FB22:             var_F0(6) = "Other Items  (Non Eatable)"
  loc_135FB31:             var_F0(7) = "Hall Rent"
  loc_135FB48:             global_96 = Array(var_F0)
  loc_135FB53:             Set var_B4 = Me.ListView
  loc_135FB6E:             Set var_8C = Me.Txt
  loc_135FB88:             Set global_112 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_96)
  loc_135FBA6:             Set var_88 = Me.Txt
  loc_135FBAC:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_135FBB4:             8 = var_8C.Text
  loc_135FBC6:             Set var_90 = Me.Txt
  loc_135FBCC:             Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_135FBD4:             var_B4.Tag = global_96
  loc_135FBEA:           Else
  loc_135FBF2:             If (var_92 = CInt(1)) Then
  loc_135FC02:               ReDim var_F0(0 To 1)
  loc_135FC19:               var_F0(0) = "Dr"
  loc_135FC28:               var_F0(1) = "Cr"
  loc_135FC3F:               global_96 = Array(var_F0)
  loc_135FC4A:               Set var_B4 = Me.ListView
  loc_135FC65:               Set var_8C = Me.Txt
  loc_135FC7F:               Set global_112 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_96)
  loc_135FC9D:               Set var_88 = Me.Txt
  loc_135FCA3:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_135FCAB:               2 = var_8C.Text
  loc_135FCBD:               Set var_90 = Me.Txt
  loc_135FCC3:               Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_135FCCB:               var_B4.Tag = global_96
  loc_135FCDE:             End If
  loc_135FCDE:           End If
  loc_135FCDE:         End If
  loc_135FCDE:       End If
  loc_135FCDE:     End If
  loc_135FCDE:   End If
  loc_135FCDE: End If
  loc_135FCDE: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '130EBE0
  'Data Table: 4C7EB0
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  Dim var_9C As DataGrid
  loc_130E4C2: If (CLng(Shift) = &H1B) Then
  loc_130E4C5:   Call Proc_116_38_F214D8()
  loc_130E4CA:   Exit Sub
  loc_130E4CB: End If
  loc_130E4CE: var_88 = KeyCode
  loc_130E4D9: If (var_88 = CInt(0)) Then
  loc_130E4F9:   Set var_9C = Me.FGPoint
  loc_130E52B:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_60, Shift)
  loc_130E598:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_130E5BE:     Proc_6_138_106D6F8(Me.DGHelp, global_60, KeyCode, Me.FGPoint, 0)
  loc_130E5CC:   End If
  loc_130E5CF: Else
  loc_130E5D7:   If (var_88 = CInt(3)) Then
  loc_130E602:     Set var_9C = Nothing
  loc_130E630:     Proc_6_69_134A198(Me.DGSaleAc, Me.Txt, KeyCode, global_64, Shift, 0, 1)
  loc_130E69F:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_130E6A6:       Set var_9C = Me.DGSaleAc
  loc_130E6C5:       Proc_6_138_106D6F8(var_9C, global_64, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_130E6D3:     End If
  loc_130E6D6:   Else
  loc_130E6DE:     If (var_88 = CInt(4)) Then
  loc_130E6EC:       Set var_AC = Me.Txt
  loc_130E6FE:       Set var_A4 = Me.FGPoint
  loc_130E737:       Proc_6_69_134A198(Me.DGSaleTax, var_AC, KeyCode, global_68, Shift, 0, 1, Nothing)
  loc_130E756:       var_B0 = Me.RecordCount
  loc_130E7A6:       If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_130E7B4:         Set var_90 = Me.FGPoint
  loc_130E7CC:         Proc_6_138_106D6F8(Me.DGSaleTax, global_68, KeyCode, var_90, var_A4, 0)
  loc_130E7DA:       End If
  loc_130E7DD:     Else
  loc_130E7E5:       If (var_88 = CInt(6)) Then
  loc_130E80A:         Set var_8C = Me.Txt
  loc_130E810:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 0)
  loc_130E818:         1 = var_90.Left
  loc_130E82A:         Set var_9C = Me.Txt
  loc_130E830:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_130E838:         var_9C = var_A4.Top
  loc_130E84A:         Set var_A8 = Me.Txt
  loc_130E850:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_130E858:         0 = var_AC.Height
  loc_130E86A:         Set var_B4 = Me.Txt
  loc_130E870:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_130E878:         var_C4 = var_C0.Width
  loc_130E8C0:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_130E8E7:       Else
  loc_130E8EF:         If (var_88 = CInt(1)) Then
  loc_130E914:           Set var_8C = Me.Txt
  loc_130E91A:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_130E922:           CInt((var_B8 + var_BC)) = var_90.Left
  loc_130E934:           Set var_9C = Me.Txt
  loc_130E93A:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_130E942:           CInt(var_C4) = var_A4.Top
  loc_130E954:           Set var_A8 = Me.Txt
  loc_130E95A:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_130E962:           2160 = var_AC.Height
  loc_130E974:           Set var_B4 = Me.Txt
  loc_130E97A:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_130E982:           var_C4 = var_C0.Width
  loc_130E9CA:           Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_130E9F1:         Else
  loc_130E9F9:           If (var_88 = CInt(5)) Then
  loc_130EA1E:             Set var_8C = Me.Txt
  loc_130EA24:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_130EA2C:             CInt((var_B8 + var_BC)) = var_90.Left
  loc_130EA3E:             Set var_9C = Me.Txt
  loc_130EA44:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_130EA4C:             CInt(var_C4) = var_A4.Top
  loc_130EA5E:             Set var_A8 = Me.Txt
  loc_130EA64:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_130EA6C:             680 = var_AC.Height
  loc_130EA7E:             Set var_B4 = Me.Txt
  loc_130EA84:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_130EA8C:             var_C4 = var_C0.Width
  loc_130EAD4:             Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_130EAF8:           End If
  loc_130EAF8:         End If
  loc_130EAF8:       End If
  loc_130EAF8:     End If
  loc_130EAF8:   End If
  loc_130EAF8: End If
  loc_130EB69: If ((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGSaleAc.Visible) = 0)) And (CBool(Me.DGSaleTax.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_130EB8A:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(7))) Then
  loc_130EB90:     Call Proc_116_39_E904DC(KeyCode, CInt(var_B0), CInt((var_B8 + var_BC)))
  loc_130EB98:   Else
  loc_130EBAD:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_130EBB6:       Proc_6_75_E527CC(Shift, arg_14, CInt(var_C4))
  loc_130EBBE:     Else
  loc_130EBD1:       If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_130EBDA:         Proc_6_76_E52838(Shift, arg_14)
  loc_130EBDF:       End If
  loc_130EBDF:     End If
  loc_130EBDF:   End If
  loc_130EBDF: End If
  loc_130EBDF: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10AFE48
  'Data Table: 4C7EB0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  Dim var_CC As DataGrid
  Dim var_94 As Variant
  loc_10AFB76: Proc_6_133_E7EF78(var_94)
  loc_10AFB8B: If (CInt(var_94) = &HD) Then
  loc_10AFB90:   arg_10 = 0
  loc_10AFB93: End If
  loc_10AFB96: Proc_6_58_E054C0(arg_10, arg_10)
  loc_10AFB9E: var_96 = KeyAscii
  loc_10AFBA9: If (var_96 = CInt(2)) Then
  loc_10AFBD5:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_10AFBE5:     Set var_CC = Me.Txt
  loc_10AFBEB:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_10AFBF3:     var_D0.Text = var_96
  loc_10AFC02:   Else
  loc_10AFC2B:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_10AFC3B:       Set var_CC = Me.Txt
  loc_10AFC41:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "No")
  loc_10AFC49:       var_D0.Text = arg_10
  loc_10AFC55:     End If
  loc_10AFC55:   End If
  loc_10AFC57:   arg_10 = 0
  loc_10AFC5D: Else
  loc_10AFC65:   If (var_96 = CInt(3)) Then
  loc_10AFC84:     If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_10AFC96:       var_D4 = "Name"
  loc_10AFCB1:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10)
  loc_10AFCE3:       Proc_6_138_106D6F8(Me.DGSaleAc, global_64, KeyAscii, Me.FGPoint)
  loc_10AFCF1:     End If
  loc_10AFCF4:   Else
  loc_10AFCFC:     If (var_96 = CInt(4)) Then
  loc_10AFD1B:       If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_10AFD2D:         var_D4 = "Name"
  loc_10AFD48:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, var_D4)
  loc_10AFD62:         Set var_D0 = Me.FGPoint
  loc_10AFD7A:         Proc_6_138_106D6F8(Me.DGSaleTax, global_68, KeyAscii, var_D0, 0)
  loc_10AFD88:       End If
  loc_10AFD8B:     Else
  loc_10AFD93:       If (var_96 = CInt(7)) Then
  loc_10AFDBF:         If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_10AFDCF:           Set var_CC = Me.Txt
  loc_10AFDD5:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Active", var_D4)
  loc_10AFDDD:           var_D0.Text = 0
  loc_10AFDEC:         Else
  loc_10AFE15:           If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_10AFE25:             Set var_CC = Me.Txt
  loc_10AFE2B:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Non Active")
  loc_10AFE33:             var_D0.Text = arg_10
  loc_10AFE3F:           End If
  loc_10AFE3F:         End If
  loc_10AFE41:         arg_10 = 0
  loc_10AFE44:       End If
  loc_10AFE44:     End If
  loc_10AFE44:   End If
  loc_10AFE44: End If
  loc_10AFE44: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F31F28
  'Data Table: 4C7EB0
  Dim var_86 As Integer
  loc_F31E1B: var_86 = KeyCode
  loc_F31E26: If (var_86 = CInt(0)) Then
  loc_F31E45:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F31E52:     var_A4 = "Name"
  loc_F31E71:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_60)
  loc_F31EA3:     Proc_6_138_106D6F8(Me.DGHelp, global_60, KeyCode, Me.FGPoint)
  loc_F31EB1:   End If
  loc_F31EB4: Else
  loc_F31EBC:   If Not (var_86 = CInt(1)) Then
  loc_F31EC7:     If (var_86 = CInt(6)) Then
  loc_F31ECA:     End If
  loc_F31EE5:     If (Me.FrmList.Visible = &HFF) Then
  loc_F31F14:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F31F24:     End If
  loc_F31F24:   End If
  loc_F31F24: End If
  loc_F31F24: Exit Sub
  loc_F31F25: End Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46EA4
  'Data Table: 4C7EB0
  loc_E46E82: Set var_88 = Me.Txt
  loc_E46E88: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46E96: Proc_6_73_E22704(var_8C)
  loc_E46EA2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12BF0CC
  'Data Table: 4C7EB0
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_12BEA77: var_86 = Cancel
  loc_12BEA82: If (var_86 = CInt(0)) Then
  loc_12BEA88:   Call Proc_116_37_10B0140(var_88)
  loc_12BEA93:   If (var_88 = &HFF) Then
  loc_12BEA98:     arg_10 = &HFF
  loc_12BEA9B:     Exit Sub
  loc_12BEA9C:   End If
  loc_12BEA9F: Else
  loc_12BEAA7:   If (var_86 = CInt(3)) Then
  loc_12BEAF8:     Set var_94 = Me.Txt
  loc_12BEAFE:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_12BEB06:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_12BEB1E:     If (arg_10 Or (var_9C = vbNullString)) Then
  loc_12BEB2E:       Set var_94 = Me.Txt
  loc_12BEB34:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12BEB3C:       var_98.Tag = vbNullString
  loc_12BEB48:       Exit Sub
  loc_12BEB49:     End If
  loc_12BEB84:     Set var_B0 = Me.Txt
  loc_12BEB8A:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_12BEB92:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12BEBC5:     var_98 = Me.Fields.Item("Code")
  loc_12BEBD6:     var_9C = CStr(var_98.Value)
  loc_12BEBE3:     Set var_B0 = Me.Txt
  loc_12BEBE9:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_12BEBF1:     var_B4.Tag = var_9C
  loc_12BEC0A:   Else
  loc_12BEC12:     If (var_86 = CInt(4)) Then
  loc_12BEC63:       Set var_94 = Me.Txt
  loc_12BEC69:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_12BEC71:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_12BEC89:       If (var_86 Or (var_9C = vbNullString)) Then
  loc_12BEC99:         Set var_94 = Me.Txt
  loc_12BEC9F:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12BECA7:         var_98.Tag = vbNullString
  loc_12BECB3:         Exit Sub
  loc_12BECB4:       End If
  loc_12BECEF:       Set var_B0 = Me.Txt
  loc_12BECF5:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_12BECFD:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12BED30:       var_98 = Me.Fields.Item("Code")
  loc_12BED4E:       Set var_B0 = Me.Txt
  loc_12BED54:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_12BED5C:       var_B4.Tag = CStr(var_98.Value)
  loc_12BED75:     Else
  loc_12BED7D:       If (var_86 = CInt(2)) Then
  loc_12BED8A:         Set var_94 = Me.Txt
  loc_12BED90:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_12BEDCB:         If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_12BEDDB:           Set var_94 = Me.Txt
  loc_12BEDE1:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12BEDE9:           var_98.Text = "Yes"
  loc_12BEDF8:         Else
  loc_12BEE05:           Set var_94 = Me.Txt
  loc_12BEE0B:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12BEE13:           var_98.Text = "No"
  loc_12BEE1F:         End If
  loc_12BEE22:       Else
  loc_12BEE2A:         If Not (var_86 = CInt(1)) Then
  loc_12BEE35:           If (var_86 = CInt(6)) Then
  loc_12BEE38:           End If
  loc_12BEE45:           Set var_94 = Me.Txt
  loc_12BEE4B:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12BEE6A:           If (var_98.Text <> vbNullString) Then
  loc_12BEE85:             Set var_98 = Me.ListView.SelectedItem
  loc_12BEE9D:             Set var_B0 = Me.Txt
  loc_12BEEA3:             Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_12BEEAB:             var_B4.Text = var_98.Text
  loc_12BEEC1:           End If
  loc_12BEEC4:         Else
  loc_12BEECC:           If (var_86 = CInt(5)) Then
  loc_12BEEDD:             Set var_94 = Me.Txt
  loc_12BEEE3:             Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_12BEF02:             If (var_98.Text = "Category") Then
  loc_12BEF11:               Me.LblCatType.Visible = True
  loc_12BEF26:               Set var_94 = Me.Txt
  loc_12BEF2C:               Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_12BEF34:               var_98.Visible = True
  loc_12BEF4C:               Me.Label2.Visible = False
  loc_12BEF61:               Set var_94 = Me.Txt
  loc_12BEF67:               Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_12BEF6F:               var_98.Visible = False
  loc_12BEF7E:             Else
  loc_12BEF8A:               Me.Label2.Visible = True
  loc_12BEF9F:               Set var_94 = Me.Txt
  loc_12BEFA5:               Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_12BEFAD:               var_98.Visible = True
  loc_12BEFC5:               Me.LblCatType.Visible = False
  loc_12BEFDA:               Set var_94 = Me.Txt
  loc_12BEFE0:               Call 0.Method_Txt_Validate0 (CInt(6), var_98)
  loc_12BEFE8:               var_98.Visible = False
  loc_12BF002:               Set var_94 = Me.Txt
  loc_12BF008:               Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_12BF010:               var_98.Text = "Cr"
  loc_12BF01C:             End If
  loc_12BF01F:           Else
  loc_12BF027:             If (var_86 = CInt(7)) Then
  loc_12BF034:               Set var_94 = Me.Txt
  loc_12BF03A:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12BF075:               If (Ucase(Left(CVar(var_98), 1)) = "A") Then
  loc_12BF085:                 Set var_94 = Me.Txt
  loc_12BF08B:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12BF093:                 var_98.Text = "Active"
  loc_12BF0A2:               Else
  loc_12BF0AF:                 Set var_94 = Me.Txt
  loc_12BF0B5:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12BF0BD:                 var_98.Text = "Non Active"
  loc_12BF0C9:               End If
  loc_12BF0C9:             End If
  loc_12BF0C9:           End If
  loc_12BF0C9:         End If
  loc_12BF0C9:       End If
  loc_12BF0C9:     End If
  loc_12BF0C9:   End If
  loc_12BF0C9: End If
  loc_12BF0C9: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F16E4C
  'Data Table: 4C7EB0
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F16D68: On Error Goto loc_F16E46
  loc_F16D6F: Set var_A4 = Me.ListView
  loc_F16DB9: Set var_BC = Me.Txt
  loc_F16DBF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F16DC7: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F16DF3: Me.FrmList.Visible = False
  loc_F16E15: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F16E23: Set var_9C = Me.Txt
  loc_F16E29: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F16E31: var_A4.SetFocus
  loc_F16E45: Exit Sub
  loc_F16E46: ' Referenced from: F16D68
  loc_F16E46: Proc_6_60_E62BC4(var_C8)
  loc_F16E4B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E869E0
  'Data Table: 4C7EB0
  loc_E8698C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E8698F:   Call DGHelp_UnknownEvent_9()
  loc_E86994: End If
  loc_E869B0: If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_E869B3:   Call DGSaleAc_UnknownEvent_9()
  loc_E869B8: End If
  loc_E869D4: If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_E869D7:   Call DGSaleTax_UnknownEvent_9()
  loc_E869DC: End If
  loc_E869DC: Exit Sub
End Sub

Private Sub DGSaleTax_UnknownEvent_9 'F45C24
  'Data Table: 4C7EB0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F45B1B: Me.DGSaleTax.Visible = False
  loc_F45B3A: If (Me.RecordCount > 0) Then
  loc_F45B79:   Set var_B4 = Me.Txt
  loc_F45B7F:   Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4), var_B8)
  loc_F45B87:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F45BBA:   var_B0 = Me.Fields.Item("Code")
  loc_F45BD9:   Set var_B4 = Me.Txt
  loc_F45BDF:   Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4), var_B8)
  loc_F45BE7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F45BFD: End If
  loc_F45C08: Set var_A8 = Me.Txt
  loc_F45C0E: Call 0.Method_DGSaleTax_UnknownEvent_90 (CInt(4))
  loc_F45C16: var_B0.SetFocus
  loc_F45C22: Exit Sub
End Sub

Private Sub DGSaleTax_UnknownEvent_1F 'E71E84
  'Data Table: 4C7EB0
  loc_E71E42: Proc_6_153_E91194(Me.DGSaleTax, arg_14)
  loc_E71E59: Set var_8C = Me.FGPoint
  loc_E71E75: Proc_6_138_106D6F8(Me.DGSaleTax, global_68, CInt(4))
  loc_E71E83: Exit Sub
End Sub

Private Sub Form_Load() '12366F4
  'Data Table: 4C7EB0
  Dim var_88 As Label
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim unk_4C7EC9 As Connection15
  loc_12361DC: On Error Goto loc_12366B0
  loc_12361E6: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_12361FA: Me.LblUser.Left = CDbl(13500)
  loc_1236211: Me.LblUser.Top = CDbl(7800)
  loc_1236228: Me.LblLDt.Top = CDbl(8160)
  loc_123623F: Me.LblLDt.Left = CDbl(13500)
  loc_1236255: Set var_88 = Me.Txt
  loc_123625B: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_123627A: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_1236296: Set var_B4 = Me.Txt
  loc_123629C: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_12362B7: Set var_88 = Me.Txt
  loc_12362BD: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_12362D5: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_12362E4: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1236300: Set var_88 = Me.TopCtrl1
  loc_1236306: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1236314: Call 0.Method_arg_50 (var_C4)
  loc_123631C: var_D4 = CVar(var_C4) 'String
  loc_1236324: Set var_88 = Me.TopCtrl1
  loc_123632A: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_1236343: Set var_88 = Me.Txt
  loc_1236349: Call 0.Method_Form_Load0 (CInt(3), var_8C)
  loc_1236368: Me.DGSaleAc.Left = CVar(var_8C.Left)
  loc_1236384: Set var_B4 = Me.Txt
  loc_123638A: Call 0.Method_Form_Load0 (CInt(3), var_B8)
  loc_12363A5: Set var_88 = Me.Txt
  loc_12363AB: Call 0.Method_Form_Load0 (CInt(3), var_8C)
  loc_12363C3: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_12363D2: Me.DGSaleAc.Top = CVar(var_8C.Left)
  loc_12363F2: Set var_88 = Me.Txt
  loc_12363F8: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_1236417: Me.DGSaleTax.Left = CVar(var_8C.Left)
  loc_1236433: Set var_B4 = Me.Txt
  loc_1236439: Call 0.Method_Form_Load0 (CInt(4), var_B8)
  loc_123645A: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_1236472: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1236481: Me.DGSaleTax.Top = CVar(var_8C.Left)
  loc_12364AE: var_D8 = "SELECT ItemCatMast.Code, ItemCatMast.Name FROM ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and ItemCatMast.RestCode='"
  loc_12364C8: unk_4C7EC9.Execute var_D8 & global_52 & "' ORDER BY ItemCatMast.Name", var_D4, -1
  loc_12364FB: CVarUnk
  loc_1236500: VerifyVarObj
  loc_1236506: Set var_88 = Me.DGHelp
  loc_123650C: LateIdStAd
  loc_123652E: var_C4 = "SELECT distinct IC.Code,IC.Name AS ItemCat,IC.RoundOff,IC.AcName,IC.TaxStru As TaxStruCode,IC.Status as Status,IC.Flag,IC.CatType,IC.RestCode,IC.TaxStru,VS.Name As SaleAc,TaxStru.Name As TaxStructure,IC.Drcr,IC.SITE_CODE,IC.LOGSITE_CODE FROM ((ItemCatMast IC Inner Join ViewSubGroup VS On IC.AcName=VS.SubCode) Inner Join TaxStru On IC.TaxStru=TaxStru.Code) Where (IC.LOGSITE_CODE='" & MemVar_1F92078
  loc_123654F: unk_4C7EC9.Execute var_C4 & "' or IC.LOGSITE_CODE='HO') and IC.RestCode='" & global_52 & "' ORDER BY IC.Name", var_D4, -1
  loc_1236594: var_D8 = "Select SubCode As Code,Name From ViewSubGroup Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Left(MainGrCodeS,3) IN ('230','240','250','260','270','280') Order by Name"
  loc_123659D: unk_4C7EC9.Execute var_D8, var_D4, -1
  loc_12365CC: CVarUnk
  loc_12365D1: VerifyVarObj
  loc_12365DD: LateIdStAd
  loc_1236606: var_D8 = "Select distinct Code As Code,Name From TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_123660F: unk_4C7EC9.Execute var_D8, var_D4, -1
  loc_123663E: CVarUnk
  loc_1236643: VerifyVarObj
  loc_1236649: Set var_88 = Me.DGSaleTax
  loc_123664F: LateIdStAd
  loc_1236669: Set var_88 = Me
  loc_1236672: var_C4 = "INI"
  loc_1236680: Call Proc_116_34_E7BC34(Proc_5_1_100CB50(var_C4, var_88, var_88, var_88, Me.DGSaleAc, var_88, var_88), var_88, var_88, var_88)
  loc_1236694: Call 0.Method_arg_160 (var_88, var_88)
  loc_12366A2: Call 0.Method_arg_164 (var_88, Me.Txt)
  loc_12366AA: Call Proc_116_36_139EB08(var_88)
  loc_12366AF: Exit Sub
  loc_12366B0: ' Referenced from: 12361DC
  loc_12366B8: Set var_88 = Err()
  loc_12366BE: Call 0.Method_arg_2C (var_C4)
  loc_12366DF: MsgBox(CVar(var_C4), &H40, "Information", var_104, var_124)
  loc_12366F2: Exit Sub
  loc_12366F3: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4C48
  'Data Table: 4C7EB0
  Dim var_8C As Label
  loc_ED4BA6: Call 0.Method_arg_50 (var_88)
  loc_ED4BB8: Me.LblFormCaption.Caption = var_88
  loc_ED4BD1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED4BDD: Set var_A0 = Me.TopCtrl1
  loc_ED4BE3: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED4BF0: Set var_8C = Me.TopCtrl1
  loc_ED4BF6: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED4C10: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED4C2B: Call 0.Method_arg_100 (var_B8)
  loc_ED4C3D: Me.LblFormCaption.Width = var_B8
  loc_ED4C45: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5FB38
  'Data Table: 4C7EB0
  loc_E5FAF7: Set global_56 = Nothing
  loc_E5FB09: Set global_64 = Nothing
  loc_E5FB1B: Set global_68 = Nothing
  loc_E5FB2D: Set global_60 = Nothing
  loc_E5FB34: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8AA10
  'Data Table: 4C7EB0
  loc_E8A9AC: On Error Goto loc_E8A9CC
  loc_E8A9C3: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8A9CB: Exit Sub
  loc_E8A9CC: ' Referenced from: E8A9AC
  loc_E8A9D4: Set var_88 = Err()
  loc_E8A9DA: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8A9FB: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8AA0E: Exit Sub
  loc_E8AA0F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ED7FE4
  'Data Table: 4C7EB0
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_ED7F30: On Error Goto loc_ED7FDE
  loc_ED7F56: Call Proc_116_34_E7BC34(Proc_5_1_100CB50("ADD", Me))
  loc_ED7F61: Call Proc_116_35_EDAC68(global_56)
  loc_ED7F74: Set var_8C = Me.Txt
  loc_ED7F7A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_94)
  loc_ED7F82: var_94.Text = "Active"
  loc_ED7F9B: Me.LblUser.Caption = vbNullString
  loc_ED7FB0: Me.LblLDt.Caption = vbNullString
  loc_ED7FC3: Set var_8C = Me.Txt
  loc_ED7FC9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED7FD1: var_94.SetFocus
  loc_ED7FDD: Exit Sub
  loc_ED7FDE: ' Referenced from: ED7F30
  loc_ED7FDE: Proc_6_60_E62BC4(var_94)
  loc_ED7FE3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC514C
  'Data Table: 4C7EB0
  loc_EC50B4: On Error Goto loc_EC5144
  loc_EC50EE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC50FD:   Set var_10C = Me
  loc_EC5114:   Call Proc_116_34_E7BC34(Proc_5_1_100CB50("INI", var_10C))
  loc_EC511F:   Call Proc_116_38_F214D8(global_56)
  loc_EC5124:   Call Proc_116_36_139EB08()
  loc_EC512C: Else
  loc_EC5132:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC513A:   Call var_10C.SetFocus
  loc_EC5143: End If
  loc_EC5143: Exit Sub
  loc_EC5144: ' Referenced from: EC50B4
  loc_EC5144: Proc_6_60_E62BC4()
  loc_EC5149: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '128F930
  'Data Table: 4C7EB0
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_A4 As String
  Dim unk_4C7EC9 As Connection15
  Dim var_98 As Recordset15
  Dim var_118 As Variant
  Dim var_C8 As Variant
  loc_128F378: On Error Goto loc_128F8E0
  loc_128F389: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_128F38C:   Exit Sub
  loc_128F38D: End If
  loc_128F39B: Set var_9C = Me.Txt
  loc_128F3A1: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(5), var_A0)
  loc_128F3C0: If (var_A0.Text = "Category") Then
  loc_128F3D8:   var_9C = Me.Fields
  loc_128F3E8:   var_C8 = var_9C.Item("Code").Value
  loc_128F3F5:   var_D4 = "Item Master"
  loc_128F43D:   If (Proc_6_108_1010FEC(MemVar_1F92044, "ItemMast", "ItemCatCode", CStr(var_C8)) = 0) Then
  loc_128F440:     Exit Sub
  loc_128F441:   End If
  loc_128F441: End If
  loc_128F468: unk_4C7EC9.Execute "Select Code From RevMast Where Name='" & global_72 & "'", var_C8, -1
  loc_128F473: Set var_98 = var_9C
  loc_128F489: var_D0 = var_98.RecordCount
  loc_128F497: If (var_D0 > 0) Then
  loc_128F4DF:   var_118 = "Select Count(*) from PayCharge Where PayType='" & var_98.Fields.Item(0).Value & "'" 
  loc_128F4ED:   unk_4C7EC9.Execute CStr(var_118), var_138, -1
  loc_128F54E:   If (var_13C.Fields.Item(0).Value > 0) Then
  loc_128F572:     MsgBox("Related Record Exist, Entry Can't Be Deleted", &H40, "Validation Check", var_118, var_138)
  loc_128F582:     Exit Sub
  loc_128F583:   End If
  loc_128F583: End If
  loc_128F5BA: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_128F5C6:   unk_4C7EC9.BeginTrans var_D0
  loc_128F5DC:   var_94 = Me.Bookmark 'Variant
  loc_128F628:   var_118 = "Delete From ItemCatMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_128F636:   unk_4C7EC9.Execute CStr(var_118), var_138, -1
  loc_128F677:   var_C8 = Me.Fields.Item("Code").Value
  loc_128F681:   var_168 = 0
  loc_128F694:   var_160 = 0
  loc_128F69F:   var_15C = 0
  loc_128F6B2:   var_154 = 0
  loc_128F6BD:   var_150 = 0
  loc_128F6D0:   var_148 = 0
  loc_128F719:   Proc_154_5_10E33A4(MemVar_1F92044, "ItemCatMast", "Code", &HC8, CStr(var_C8), 0, 0, 0)
  loc_128F768:   unk_4C7EC9.Execute "Delete From RevMast Where Name='" & global_72 & "'", var_C8, -1
  loc_128F77F:   var_160 = 0
  loc_128F792:   var_15C = 0
  loc_128F79D:   var_154 = 0
  loc_128F7B0:   var_150 = 0
  loc_128F7BB:   var_148 = 0
  loc_128F7CE:   var_144 = 0
  loc_128F80C:   var_A4 = "RevMast"
  loc_128F815:   Proc_154_5_10E33A4(MemVar_1F92044, var_A4, "Name", &HC8, global_72, 0, 0, 0)
  loc_128F837:   unk_4C7EC9.CommitTrans
  loc_128F847:   Me.Requery -1
  loc_128F857:   Me.Requery -1
  loc_128F877:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_128F884:     Me.Bookmark = var_94
  loc_128F88C:   Else
  loc_128F8A0:     If (Me.EOF = 0) Then
  loc_128F8A9:       Me.MoveLast
  loc_128F8AE:     End If
  loc_128F8AE:   End If
  loc_128F8AE:   Call Proc_116_36_139EB08(var_144, 0, var_148, var_150)
  loc_128F8CF:   Proc_5_0_110649C(&HFF, Me, global_56, 0)
  loc_128F8D7: End If
  loc_128F8DC: Set var_98 = Nothing
  loc_128F8DF: Exit Sub
  loc_128F8E0: ' Referenced from: 128F378
  loc_128F8E6: unk_4C7EC9.RollbackTrans
  loc_128F8F3: Set var_9C = Err()
  loc_128F8F9: Call 0.Method_arg_2C (var_A4, 0, var_154)
  loc_128F91A: MsgBox(CVar(var_A4), &H30, " Deletion Error ", var_118, var_138)
  loc_128F92D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F11AF4
  'Data Table: 4C7EB0
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F119FC: On Error Goto loc_F11AEB
  loc_F11A0D: If (Proc_183_55_FE7900(global_56) = &HFF) Then
  loc_F11A10:   Exit Sub
  loc_F11A11: End If
  loc_F11A34: Call Proc_116_34_E7BC34(Proc_5_1_100CB50("EDIT", Me))
  loc_F11A4D: Set var_8C = Me.Txt
  loc_F11A53: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F11A66: global_92 = var_94.Text
  loc_F11A81: Set var_8C = Me.Txt
  loc_F11A87: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_F11A8F: var_94.Enabled = False
  loc_F11AA6: Set var_8C = Me.Txt
  loc_F11AAC: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F11AB4: var_94.SetFocus
  loc_F11ACD: Me.LblUser.Caption = vbNullString
  loc_F11AE2: Me.LblLDt.Caption = vbNullString
  loc_F11AEA: Exit Sub
  loc_F11AEB: ' Referenced from: F119FC
  loc_F11AEB: Proc_6_60_E62BC4(global_56)
  loc_F11AF0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B320
  'Data Table: 4C7EB0
  loc_E1B315: Me.Global.Unload Me
  loc_E1B31D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F52698
  'Data Table: 4C7EB0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F52584: On Error Goto loc_F52633
  loc_F52590: var_88 = Me.RecordCount
  loc_F5259E: If (var_88 <= 0) Then
  loc_F525A7:   var_B8 = "Information"
  loc_F525C2:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F525D2:   Exit Sub
  loc_F525D3: End If
  loc_F525DA: var_10C = "SELECT Distinct IC.Code AS SearchCode,'Banquet' As Outlet,IC.Name AS ItemCategory,IC.CatType As Type,IC.RoundOff As RO,IC.Flag,VS.Name As SaleAc,TaxStru.Name As TaxStructure,IC.Status as Status FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Where (IC.LOGSITE_CODE='" & MemVar_1F92078
  loc_F525F2: MemVar_1F920E4 = var_10C & "' or IC.LOGSITE_CODE='HO') AND IC.RestCode='" & global_52 & "' ORDER BY IC.Name"
  loc_F52605: MemVar_1F92120 = Me
  loc_F5260C: var_10C = "1000,2000,1000,500,1000,2000,2000,1200"
  loc_F52612: Proc_6_126_F1BCC0(var_10C)
  loc_F5262D: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F52632: Exit Sub
  loc_F52633: ' Referenced from: F52584
  loc_F5263B: Set var_118 = Err()
  loc_F52641: Call 0.Method_arg_1C (var_88)
  loc_F52652: If (var_88 <> 0) Then
  loc_F5265D:   Set var_118 = Err()
  loc_F52663:   Call 0.Method_arg_2C (var_10C)
  loc_F52684:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F52697: End If
  loc_F52697: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3AC98
  'Data Table: 4C7EB0
  loc_E3AC88: Proc_5_0_110649C(&HFF, Me)
  loc_E3AC90: Call Proc_116_36_139EB08(global_56)
  loc_E3AC95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3B478
  'Data Table: 4C7EB0
  loc_E3B468: Proc_5_0_110649C(&HFF, Me)
  loc_E3B470: Call Proc_116_36_139EB08(global_56)
  loc_E3B475: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3D2D8
  'Data Table: 4C7EB0
  loc_E3D2C8: Proc_5_0_110649C(&HFF, Me)
  loc_E3D2D0: Call Proc_116_36_139EB08(global_56)
  loc_E3D2D5: Exit Sub
  loc_E3D2D6: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3AED8
  'Data Table: 4C7EB0
  loc_E3AEC8: Proc_5_0_110649C(&HFF, Me)
  loc_E3AED0: Call Proc_116_36_139EB08(global_56)
  loc_E3AED5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10A284C
  'Data Table: 4C7EB0
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4C7EC9 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Variant
  Dim var_136 As Integer
  Dim var_CC As Variant
  Dim var_F4 As Variant
  loc_10A25A0: On Error Goto loc_10A2801
  loc_10A25B7: var_A0 = "SELECT distinct IC.Code,IC.Name AS ItemCat,IC.RoundOff,IC.AcName,IC.TaxStru As TaxStruCode,IC.Status,IC.Flag,IC.CatType,IC.RestCode,IC.TaxStru,VS.Name As SaleAc,TaxStru.Name As TaxStructure,IC.Drcr FROM ((ItemCatMast IC Left Join ViewSubGroup VS On IC.AcName=VS.SubCode) Left Join TaxStru On IC.TaxStru=TaxStru.Code) Where (IC.LOGSITE_CODE='" & MemVar_1F92078
  loc_10A25D8: unk_4C7EC9.Execute var_A0 & "' or IC.LOGSITE_CODE='HO') and IC.RestCode='" & global_52 & "' ORDER BY IC.Name", var_CC, -1
  loc_10A25E3: Set var_88 = var_D0
  loc_10A25FD: var_D4 = var_88.RecordCount
  loc_10A260B: If (var_D4 = 0) Then
  loc_10A2627:   MsgBox("No Record Present For Printing", 0, var_F4, var_114, var_134)
  loc_10A2637:   Exit Sub
  loc_10A2638: End If
  loc_10A2647: var_A4 = MemVar_1F920B4 & "\HallItemCatMast.ttx"
  loc_10A264E: Set var_D0 = var_88 
  loc_10A265A: var_136 = CreateFieldDefFile(var_D0, var_A4)
  loc_10A2664: Set var_88 = var_D0
  loc_10A266A: var_BC = CVar(var_136) 'Integer
  loc_10A266D: var_98 = var_BC 'Variant
  loc_10A2689: var_A0 = MemVar_1F920B4 & "\HallItemCatMast.RPT"
  loc_10A2692: Call 0.Method_arg_1C (var_A0, var_BC, var_D0)
  loc_10A269D: MemVar_1F921E4 = var_D0
  loc_10A26B8: Call 0.Method_arg_90 (var_D0, var_D4, var_9A, 1)
  loc_10A26C0: Call 0.Method_arg_24 (var_136, &HFF)
  loc_10A26CC: For var_13A =  To CInt(var_D4): var_D0 = var_13A 'Integer
  loc_10A26E5:   Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_10A26ED:   Call 0.Method_arg_20 (var_140)
  loc_10A26F5:   Call 0.Method_arg_30 (var_A0)
  loc_10A273B:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10A2751:     Call 0.Method_arg_90 (var_D0, CLng(var_9A))
  loc_10A2759:     Call 0.Method_arg_20 (var_140)
  loc_10A2761:     Call 0.Method_arg_38 ("'Hall Item Category Master'")
  loc_10A276D:   End If
  loc_10A2770: Next var_13A 'Integer
  loc_10A278E: Call 0.Method_arg_64 (var_D0, CVar(var_88))
  loc_10A2796: Call 0.Method_arg_2C (var_E4)
  loc_10A27A4: Call 0.Method_arg_150 (var_104)
  loc_10A27AF: Call 0.Method_arg_50 (var_A0)
  loc_10A27B9: Set var_140 = Nothing
  loc_10A27D3: Set var_D0 = MemVar_1F921E4 
  loc_10A27DF: Proc_6_99_1483714(var_D0, 0, var_A0)
  loc_10A27EA: MemVar_1F921E4 = var_D0
  loc_10A27FD: Set var_88 = Nothing
  loc_10A2800: Exit Sub
  loc_10A2801: ' Referenced from: 10A25A0
  loc_10A2809: Set var_D0 = Err()
  loc_10A280F: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10A281A: Call 0.Method_arg_50 (var_A4)
  loc_10A2836: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_114, var_134)
  loc_10A2849: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E45A24
  'Data Table: 4C7EB0
  Dim Me As Recordset15
  loc_E459FB: Me.Requery -1
  loc_E45A0B: Me.Requery -1
  loc_E45A1B: Me.Requery -1
  loc_E45A20: Exit Sub
  loc_E45A21: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14CF82C
  'Data Table: 4C7EB0
  Dim var_A0 As String
  Dim var_D8 As Variant
  Dim var_B8 As String
  Dim unk_4C7EC9 As Connection15
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_9C As Field20
  Dim var_F8 As Variant
  Dim var_C8 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_B4 As Variant
  Dim var_134 As Variant
  Dim var_168 As Variant
  Dim var_1A8 As Variant
  Dim var_1B0 As TextBox
  Dim var_1F4 As Variant
  Dim var_1FC As TextBox
  Dim var_240 As Variant
  Dim var_248 As TextBox
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_294 As TextBox
  Dim var_2E0 As TextBox
  Dim var_304 As Variant
  Dim var_394 As Variant
  Dim var_3BC As TextBox
  Dim var_460 As Variant
  Dim var_4A0 As Variant
  Dim var_114 As String
  Dim var_1B4 As String
  Dim var_200 As String
  Dim var_E8 As Variant
  Dim var_158 As TextBox
  Dim var_178 As Variant
  Dim var_384 As Variant
  loc_14CEB90: On Error Goto loc_14CF7D8
  loc_14CEB97: var_86 = CByte(0) 'Byte
  loc_14CEBA6: Set var_94 = Me.Txt
  loc_14CEBAC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_14CEBD5: If (Proc_6_27_EA565C(var_98, "Name") = 0) Then
  loc_14CEBDF:   Call Txt_GotFocus(CInt(0))
  loc_14CEBE4:   Exit Sub
  loc_14CEBE5: End If
  loc_14CEBF0: Set var_94 = Me.Txt
  loc_14CEBF6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98)
  loc_14CEC1F: If (Proc_6_27_EA565C(var_98, "Post in A/c") = 0) Then
  loc_14CEC29:   Call Txt_GotFocus(CInt(3))
  loc_14CEC2E:   Exit Sub
  loc_14CEC2F: End If
  loc_14CEC3A: Set var_94 = Me.Txt
  loc_14CEC40: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_14CEC69: If (Proc_6_27_EA565C(var_98, "Tax Structure") = 0) Then
  loc_14CEC73:   Call Txt_GotFocus(CInt(4))
  loc_14CEC78:   Exit Sub
  loc_14CEC79: End If
  loc_14CEC7C: Call Proc_116_37_10B0140(var_A2)
  loc_14CEC87: If (var_A2 = &HFF) Then
  loc_14CEC8A:   Exit Sub
  loc_14CEC8B: End If
  loc_14CEC8F: Set var_94 = Me.TopCtrl1
  loc_14CEC95: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_14CECAE: If (CStr() = "Add") Then
  loc_14CECB7:   var_D8 = 0
  loc_14CECD4:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemCatMast WHERE ISNUMERIC(SUBSTRING(Code,3,4))=1 AND rtrim(U_Name)<>'Analysis' and SITE_CODE='" & MemVar_1F92070
  loc_14CECE4:   unk_4C7EC9.Execute CStr() & "'", var_B4, -1
  loc_14CECEC:   var_94 = var_94.Fields
  loc_14CECF4:   var_D8 = var_98.Item(var_98)
  loc_14CECFC:   var_9C = var_9C.Value
  loc_14CED2C:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_14CED4F:   var_E8 = Format(CStr(var_E8), "0000")
  loc_14CED57:   var_108 = (1 + var_E8)
  loc_14CED5C:   var_8C = CStr(var_108)
  loc_14CED6D: Else
  loc_14CED8A:   var_98 = Me.Fields.Item("Code")
  loc_14CED9B:   var_8C = CStr(var_98.Value)
  loc_14CEDA8: End If
  loc_14CEDB1: unk_4C7EC9.BeginTrans var_10C
  loc_14CEDBA: var_86 = CByte(1) 'Byte
  loc_14CEDC2: Set var_94 = Me.TopCtrl1
  loc_14CEDC8: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_14CEDD0: var_A0 = CStr(var_F8)
  loc_14CEDE1: If (var_A0 = "Add") Then
  loc_14CEDF5:   Set var_94 = Me.Txt
  loc_14CEDFB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_14CEE0F:   Call Proc_116_40_F72A60(var_A0)
  loc_14CEE17:   var_90 = var_98.Text
  loc_14CEE38:   var_A0 = "Insert Into ItemCatMast(Code,Name,RestCode,RoundOff,AcName,TaxStru,Flag,CatType,Status,OutletYN," & " U_Name,U_EntDt,U_AE,Drcr,RevCode,SITE_CODE,LOGSITE_CODE)"
  loc_14CEE3F:   var_B8 = var_A0 & " Values('"
  loc_14CEE5E:   Set var_94 = Me.Txt
  loc_14CEE64:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_114, CVar(var_B8 & var_8C & "',"))
  loc_14CEE6C:   var_4E4 = var_98.Text
  loc_14CEE74:   var_B4 = CVar(var_114) 'String
  loc_14CEE7A:   Proc_6_17_EAA2B0(var_E8, var_B4, -1)
  loc_14CEEB0:   Set var_9C = Me.Txt
  loc_14CEEB6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_158)
  loc_14CEEC5:   Proc_6_17_EAA2B0(var_178, CVar(var_158))
  loc_14CEED6:   var_1A8 = var_4E8 & var_E8 & ",'" & CVar(global_52) & "'," & var_178 & ",'" 
  loc_14CEEE8:   Set var_1AC = Me.Txt
  loc_14CEEEE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B0, var_1B4)
  loc_14CEEF6:   var_1A8 = var_1B0.Tag
  loc_14CEF1C:   Set var_1F8 = Me.Txt
  loc_14CEF22:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1FC)
  loc_14CEF56:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_248)
  loc_14CEF66:   var_25C = CVar(var_248.Text) 'String
  loc_14CEF84:   Set var_290 = Me.Txt
  loc_14CEF8A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_294)
  loc_14CEFB8:   Set var_2DC = Me.Txt
  loc_14CEFBE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2E0)
  loc_14CEFD1:   var_304 = var_E8 & CVar(var_1B4) & "','" & CVar(var_1FC.Tag) & "','" & var_25C & "','" & CVar(var_294.Text) & "','" & CVar(var_2E0.Text) 
  loc_14CEFFC:   Proc_6_7_F25D88(var_384, MemVar_1F920EC)
  loc_14CF004:   var_394 = var_304 & "','Y','" & CVar(MemVar_1F920C8) & "'," & var_384 
  loc_14CF01F:   Set var_3B8 = Me.Txt
  loc_14CF025:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_3BC)
  loc_14CF071:   var_4A0 = var_394 & ",'A','" & CVar(var_3BC.Text) & "','" & CVar(var_90) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) 
  loc_14CF088:   unk_4C7EC9.Execute CStr(var_4A0 & "')"), , 
  loc_14CF124:   var_A0 = "Insert Into RevMast(Code,Name,ShortName,SysYN,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,FieldType,DeskCode,TaxStru,Type,AcCode,LOGSITE_CODE) Values ('" & var_90
  loc_14CF12B:   var_114 = var_A0 & "','"
  loc_14CF135:   var_110 = "BANQ" & " - "
  loc_14CF146:   Set var_94 = Me.Txt
  loc_14CF14C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_B8, var_B8 & var_8C)
  loc_14CF154:   var_114 = var_98.Text
  loc_14CF161:   var_200 = -1 & var_25C & var_B8
  loc_14CF184:   var_E8 = CVar(var_1FC.Tag & "','BANQ','Y','Amount','Detail','POS','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") 'String
  loc_14CF18A:   Proc_6_104_ED5D18(var_B4, var_E8)
  loc_14CF1B1:   var_134 = Me.Txt & var_B4 & ",'A','C','" & CVar(global_52) & "','" 
  loc_14CF1C3:   Set var_9C = Me.Txt
  loc_14CF1C9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_158)
  loc_14CF1F7:   Set var_1AC = Me.Txt
  loc_14CF1FD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B0)
  loc_14CF22B:   Set var_1F8 = Me.Txt
  loc_14CF231:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1FC)
  loc_14CF260:   var_240 = var_134 & CVar(var_158.Tag) & "','" & CVar(var_1B0.Text) & "','" & CVar(var_1FC.Tag) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_14CF26E:   unk_4C7EC9.Execute CStr(var_240), , 
  loc_14CF2CB: Else
  loc_14CF2E8:   Set var_94 = Me.Txt
  loc_14CF2EE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, "UPDATE ItemCatMast SET Name=")
  loc_14CF2F6:   var_B4 = CVar(var_98) 'Address
  loc_14CF2FD:   Proc_6_17_EAA2B0(var_E8, var_B4, var_4A0)
  loc_14CF305:   var_F8 = -1 & var_E8 
  loc_14CF31D:   Set var_9C = Me.Txt
  loc_14CF323:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_158)
  loc_14CF332:   Proc_6_17_EAA2B0(var_134, CVar(var_158))
  loc_14CF343:   var_168 = Me.Txt & var_B4 & ",RoundOff=" & var_134 & ",AcName='" 
  loc_14CF355:   Set var_1AC = Me.Txt
  loc_14CF35B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B0, var_A0)
  loc_14CF363:   var_168 = var_1B0.Tag
  loc_14CF389:   Set var_1F8 = Me.Txt
  loc_14CF38F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1FC)
  loc_14CF3C3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_248)
  loc_14CF3F1:   Set var_290 = Me.Txt
  loc_14CF3F7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_294)
  loc_14CF40A:   var_26C = var_4E8 & CVar(var_A0) & "',TaxStru='" & CVar(var_1FC.Tag) & "',Flag='" & CVar(var_248.Text) & "',CatType='" & CVar(var_294.Text) 
  loc_14CF425:   Set var_2DC = Me.Txt
  loc_14CF42B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2E0)
  loc_14CF459:   Set var_3B8 = Me.Txt
  loc_14CF45F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_3BC)
  loc_14CF497:   var_384 = var_26C & "',Status='" & CVar(var_2E0.Text) & "',DrCr='" & CVar(var_3BC.Text) & "'," & " U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" 
  loc_14CF4A6:   Proc_6_7_F25D88(var_394, MemVar_1F920EC)
  loc_14CF4E7:   var_460 = var_384 & var_394 & " ,U_AE='E',RevCode='" & global_76 & "',SITE_CODE='" & CVar(MemVar_1F92070) & "' WHERE Code='" & CVar(var_8C) 
  loc_14CF4FE:   unk_4C7EC9.Execute CStr(var_460 & "'"), , 
  loc_14CF596:   Set var_94 = Me.Txt
  loc_14CF59C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0, "Update RevMast Set Name='BANQ - ")
  loc_14CF5A4:   var_25C = var_98.Text
  loc_14CF5AD:   var_B8 = -1 & var_A0
  loc_14CF5BB:   var_114 = var_1FC.Tag & " ',ShortName='BANQ',SysYN='Y',AppMode='Amount',FlagAMR='Detail',FlagType='POS',Site_Code='" & MemVar_1F92070
  loc_14CF5D0:   var_E8 = CVar(var_114 & "',U_Name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_14CF5D6:   Proc_6_104_ED5D18(var_B4, var_E8)
  loc_14CF5DE:   var_F8 = Me.Txt & var_B4 
  loc_14CF5E2:   var_C8 = ",U_AE='E',FieldType='C',DeskCode='"
  loc_14CF5E7:   var_108 = var_F8 & var_C8 
  loc_14CF60F:   Set var_9C = Me.Txt
  loc_14CF615:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_158)
  loc_14CF643:   Set var_1AC = Me.Txt
  loc_14CF649:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B0)
  loc_14CF677:   Set var_1F8 = Me.Txt
  loc_14CF67D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1FC)
  loc_14CF690:   var_1F4 = var_108 & CVar(global_52) & "',TaxStru='" & CVar(var_158.Tag) & "',Type='" & CVar(var_1B0.Text) & "',AcCode='" & CVar(var_1FC.Tag) 
  loc_14CF6BD:   unk_4C7EC9.Execute CStr(var_1F4 & "' Where Name='" & CVar(global_72) & "'"), , 
  loc_14CF70F: End If
  loc_14CF715: unk_4C7EC9.CommitTrans
  loc_14CF71E: var_86 = CByte(0) 'Byte
  loc_14CF72D: Me.Requery -1
  loc_14CF73D: Me.Requery -1
  loc_14CF767: Me.Find "Code='" & var_8C & "'", 0, 1
  loc_14CF777: Set var_94 = Me.TopCtrl1
  loc_14CF77D: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C8)
  loc_14CF796: If (CStr() = "Add") Then
  loc_14CF799:   Call TopCtrl1_UnknownEvent_A()
  loc_14CF79E:   Exit Sub
  loc_14CF79F: End If
  loc_14CF7B4: var_A0 = "INI"
  loc_14CF7C2: Call Proc_116_34_E7BC34(Proc_5_1_100CB50(var_A0, Me))
  loc_14CF7CD: Call Proc_116_38_F214D8(global_56)
  loc_14CF7D2: Call Proc_116_36_139EB08()
  loc_14CF7D7: Exit Sub
  loc_14CF7D8: ' Referenced from: 14CEB90
  loc_14CF7E1: If (CInt(var_86) = 1) Then
  loc_14CF7EA:   unk_4C7EC9.RollbackTrans
  loc_14CF7EF: End If
  loc_14CF7F7: Set var_94 = Err()
  loc_14CF7FD: Call 0.Method_arg_2C (var_A0)
  loc_14CF816: MsgBox(CVar(var_A0), &H10, var_E8, var_F8, var_108)
  loc_14CF829: Exit Sub
End Sub

Public Function global_52Get() '4C8FA8
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4C8FB7
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC23C4
  'Data Table: 4C7EB0
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC233A: On Error Goto loc_EC237F
  loc_EC2343: Me.MoveFirst
  loc_EC235D: var_8C = "code='" & MyValue
  loc_EC236D: Me.Find var_8C & "'", 0, 1
  loc_EC2379: Call Proc_116_36_139EB08(var_A0)
  loc_EC237E: Exit Sub
  loc_EC237F: ' Referenced from: EC233A
  loc_EC2387: Set var_A4 = Err()
  loc_EC238D: Call 0.Method_arg_2C (var_8C)
  loc_EC23AE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC23C1: Exit Sub
  loc_EC23C2: Exit Sub
End Sub

Public Sub Proc_116_34_E7BC34(arg_C) 'E7BC34
  'Data Table: 4C7EB0
  Dim var_98 As TextBox
  loc_E7BBE2: Set var_8C = Me.Txt
  loc_E7BBE8: Call 0.Method_Proc_116_34_E7BC34C (var_8E, var_86)
  loc_E7BBF8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7BC0E:   Set var_8C = Me.Txt
  loc_E7BC14:   Call 0.Method_Proc_116_34_E7BC340 (CInt(var_86), var_98)
  loc_E7BC1C:   var_98.Enabled = arg_C
  loc_E7BC2B: Next var_92 'Byte
  loc_E7BC31: Exit Sub
End Sub

Public Sub Proc_116_35_EDAC68
  'Data Table: 4C7EB0
  Dim var_98 As TextBox
  loc_EDABB2: global_92 = vbNullString
  loc_EDABC4: Set var_8C = Me.Txt
  loc_EDABCA: Call 0.Method_Proc_116_35_EDAC68C (var_8E, var_86)
  loc_EDABDA: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EDABF0:   Set var_8C = Me.Txt
  loc_EDABF6:   Call 0.Method_Proc_116_35_EDAC680 (CInt(var_86), var_98)
  loc_EDABFE:   var_98.Text = vbNullString
  loc_EDAC1A:   Set var_8C = Me.Txt
  loc_EDAC20:   Call 0.Method_Proc_116_35_EDAC680 (CInt(var_86), var_98)
  loc_EDAC28:   var_98.Tag = vbNullString
  loc_EDAC37: Next var_92 'Byte
  loc_EDAC4B: Set var_8C = Me.Txt
  loc_EDAC51: Call 0.Method_Proc_116_35_EDAC680 (CInt(1), var_98)
  loc_EDAC59: var_98.Text = "Dr"
  loc_EDAC65: Exit Sub
End Sub

Public Sub Proc_116_36_139EB08
  'Data Table: 4C7EB0
  Dim Me As Variant
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_C0 As String
  Dim var_AC As TextBox
  Dim var_BC As Variant
  Dim var_C4 As String
  Dim var_CC As String
  Dim unk_4C7EC9 As Connection15
  Dim var_88 As Recordset15
  Dim var_A8 As Fields15
  loc_139E234: On Error Goto loc_139EAC4
  loc_139E23D: Proc_183_45_E5C118(global_56)
  loc_139E259: If (Me.RecordCount <= 0) Then
  loc_139E25C:   Call Proc_116_35_EDAC68()
  loc_139E264: Else
  loc_139E2A0:   Set var_A8 = Me.Txt
  loc_139E2A6:   Call 0.Method_Proc_116_36_139EB080 (CInt(0), var_AC)
  loc_139E2AE:   var_AC.Text = CStr(Me.Fields.Item("ItemCat").Value)
  loc_139E300:   Set var_A8 = Me.Txt
  loc_139E306:   Call 0.Method_Proc_116_36_139EB080 (CInt(0), var_AC)
  loc_139E30E:   var_AC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_139E35D:   Set var_A8 = Me.Txt
  loc_139E363:   Call 0.Method_Proc_116_36_139EB080 (CInt(2), var_AC)
  loc_139E36B:   var_AC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")))
  loc_139E3B8:   Set var_A8 = Me.Txt
  loc_139E3BE:   Call 0.Method_Proc_116_36_139EB080 (CInt(3), var_AC)
  loc_139E3C6:   var_AC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAc")))
  loc_139E413:   Set var_A8 = Me.Txt
  loc_139E419:   Call 0.Method_Proc_116_36_139EB080 (CInt(3), var_AC)
  loc_139E421:   var_AC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("AcName")))
  loc_139E46E:   Set var_A8 = Me.Txt
  loc_139E474:   Call 0.Method_Proc_116_36_139EB080 (CInt(4), var_AC)
  loc_139E47C:   var_AC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStructure")))
  loc_139E4C9:   Set var_A8 = Me.Txt
  loc_139E4CF:   Call 0.Method_Proc_116_36_139EB080 (CInt(4), var_AC)
  loc_139E4D7:   var_AC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStruCode")))
  loc_139E524:   Set var_A8 = Me.Txt
  loc_139E52A:   Call 0.Method_Proc_116_36_139EB080 (CInt(5), var_AC)
  loc_139E532:   var_AC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Flag")))
  loc_139E57F:   Set var_A8 = Me.Txt
  loc_139E585:   Call 0.Method_Proc_116_36_139EB080 (CInt(6), var_AC)
  loc_139E58D:   var_AC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CatType")))
  loc_139E5DA:   Set var_A8 = Me.Txt
  loc_139E5E0:   Call 0.Method_Proc_116_36_139EB080 (CInt(1), var_AC)
  loc_139E5E8:   var_AC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DrCr")))
  loc_139E616:   var_A4 = Me.Fields.Item("Status")
  loc_139E61E:   var_BC = CVar(var_A4) 'Address
  loc_139E635:   Set var_A8 = Me.Txt
  loc_139E63B:   Call 0.Method_Proc_116_36_139EB080 (CInt(7), var_AC)
  loc_139E643:   var_AC.Text = Proc_6_38_E68A98(var_BC)
  loc_139E65E:   var_C4 = "BANQ" & " - "
  loc_139E675:   Call 0.Method_Proc_116_36_139EB080 (CInt(0), var_A4)
  loc_139E6CC:   var_CC = "Select * from Revmast where Name ='" & "Select * from Revmast where Name ='" & var_C4 & var_A4.Text & "' and site_code='" & var_A4.Text & "' and site_code='" & MemVar_1F92070 & "'"
  loc_139E6D5:   unk_4C7EC9.Execute var_CC, var_BC, -1
  loc_139E6E0:   Set var_88 = Me.Txt
  loc_139E708:   If (var_88.RecordCount > 0) Then
  loc_139E71A:     var_90 = var_88.Fields
  loc_139E7AE:     var_18C = IIf((Proc_6_38_E68A98(CVar(var_90.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_139E7F3:     Me.LblUser.Caption = CStr(var_90 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_18C)))
  loc_139E886:     var_13C = "entdt :   "
  loc_139E891:     var_11C = "Last Update :   "
  loc_139E8CE:     var_18C = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), var_11C, var_13C))
  loc_139E913:     Me.LblLDt.Caption = CStr(var_18C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_139E962:     var_A4 = var_88.Fields.Item("Code")
  loc_139E979:     global_76 = CVar(Proc_6_38_E68A98(CVar(var_A4)))
  loc_139E98A:   Else
  loc_139E992:     global_76 = vbNullString
  loc_139E996:   End If
  loc_139E99B:   Set var_88 = Nothing
  loc_139E9AC:   Set var_90 = Me.Txt
  loc_139E9B2:   Call 0.Method_Proc_116_36_139EB080 (CInt(5), var_A4)
  loc_139E9BA:   var_C0 = var_A4.Text
  loc_139E9D1:   If (var_C0 = "Category") Then
  loc_139E9E0:     Me.LblCatType.Visible = True
  loc_139E9F5:     Set var_90 = Me.Txt
  loc_139E9FB:     Call 0.Method_Proc_116_36_139EB080 (CInt(6), var_A4)
  loc_139EA03:     var_A4.Visible = True
  loc_139EA1B:     Me.Label2.Visible = False
  loc_139EA30:     Set var_90 = Me.Txt
  loc_139EA36:     Call 0.Method_Proc_116_36_139EB080 (CInt(1), var_A4)
  loc_139EA3E:     var_A4.Visible = False
  loc_139EA4D:   Else
  loc_139EA59:     Me.Label2.Visible = True
  loc_139EA6E:     Set var_90 = Me.Txt
  loc_139EA74:     Call 0.Method_Proc_116_36_139EB080 (CInt(1), var_A4)
  loc_139EA7C:     var_A4.Visible = True
  loc_139EA94:     Me.LblCatType.Visible = False
  loc_139EAA9:     Set var_90 = Me.Txt
  loc_139EAAF:     Call 0.Method_Proc_116_36_139EB080 (CInt(6), var_A4)
  loc_139EAB7:     var_A4.Visible = False
  loc_139EAC3:   End If
  loc_139EAC3: End If
  loc_139EAC3: Exit Sub
  loc_139EAC4: ' Referenced from: 139E234
  loc_139EACC: Set var_90 = Err()
  loc_139EAD2: Call 0.Method_arg_2C (var_C0)
  loc_139EAF3: MsgBox(CVar(var_C0), &H40, "Information", var_11C, var_13C)
  loc_139EB06: Exit Sub
End Sub

Public Sub Proc_116_37_10B0140
  'Data Table: 4C7EB0
  Dim Me As Recordset15
  Dim var_AC As String
  Dim var_B0 As TextBox
  Dim unk_4C7EC9 As Connection15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  loc_10AFEAB: If (Me.RecordCount = 0) Then
  loc_10AFEAE:   Proc_116_37_10B0140 = 
  loc_10AFEB4: End If
  loc_10AFEB8: Set var_90 = Me.TopCtrl1
  loc_10AFEBE: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10AFED7: If (CStr() = "Add") Then
  loc_10AFF0E:   var_AC = "Select Count(*) From ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and restcode='" & global_52
  loc_10AFF26:   Set var_90 = Me.Txt
  loc_10AFF2C:   Call 0.Method_Proc_116_37_10B01400 (CInt(0), var_B0, var_B4, var_AC & "' and Name='", var_A0, -1)
  loc_10AFF4D:   unk_4C7EC9.Execute var_D8 & var_B4 & "'", 0, var_EC
  loc_10AFF5D:    = var_D8.Item()
  loc_10AFF65:    = var_EC.Value
  loc_10AFF9A:   If (var_B0.Text.Fields > 0) Then
  loc_10AFFB8:     var_A0 = "Duplicate Name"
  loc_10AFFBE:     MsgBox(var_A0, &H40, "Information", var_11C, var_13C)
  loc_10AFFD9:     Set var_90 = Me.Txt
  loc_10AFFDF:     Call 0.Method_Proc_116_37_10B01400 (CInt(0))
  loc_10AFFE7:     var_B0.SetFocus
  loc_10AFFF8:     Proc_116_37_10B0140 = &HFF
  loc_10AFFFE:   End If
  loc_10B0001: Else
  loc_10B0035:   var_AC = "Select Count(*) From ItemCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and restcode='" & global_52
  loc_10B004D:   Set var_90 = Me.Txt
  loc_10B0053:   Call 0.Method_Proc_116_37_10B01400 (CInt(0), var_B0, var_B4, var_AC & "' and Name='", var_A0, -1)
  loc_10B0085:   unk_4C7EC9.Execute var_D8 & var_B4 & "' And Name<>'" & global_92 & "'", 0, var_EC
  loc_10B0095:    = var_D8.Item(var_B0)
  loc_10B009D:    = var_EC.Value
  loc_10B00D6:   If (var_B0.Text.Fields > 0) Then
  loc_10B00FA:     MsgBox("Duplicate Name", &H40, "Information", var_11C, var_13C)
  loc_10B0115:     Set var_90 = Me.Txt
  loc_10B011B:     Call 0.Method_Proc_116_37_10B01400 (CInt(0))
  loc_10B0123:     var_B0.SetFocus
  loc_10B0134:     Proc_116_37_10B0140 = &HFF
  loc_10B013A:   End If
  loc_10B013A: End If
  loc_10B013A: Proc_116_37_10B0140 = var_B0
End Sub

Public Sub Proc_116_38_F214D8
  'Data Table: 4C7EB0
  loc_F213E8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F213FA:   Me.DGHelp.Visible = False
  loc_F21402: End If
  loc_F2141E: If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_F21430:   Me.DGSaleAc.Visible = False
  loc_F21438: End If
  loc_F21454: If (CBool(Me.DGSaleTax.Visible) = &HFF) Then
  loc_F21466:   Me.DGSaleTax.Visible = False
  loc_F2146E: End If
  loc_F21489: If (Me.FrmList.Visible = &HFF) Then
  loc_F21498:   Me.FrmList.Visible = False
  loc_F214A0: End If
  loc_F214BC: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F214CE:   Me.FGPoint.Visible = False
  loc_F214D6: End If
  loc_F214D6: Exit Sub
End Sub

Public Sub Proc_116_39_E904DC(arg_C) 'E904DC
  'Data Table: 4C7EB0
  Dim var_10C As TextBox
  loc_E90470: Call Proc_116_38_F214D8()
  loc_E904AC: If (MsgBox("Save Category ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E904AF:   Call TopCtrl1_UnknownEvent_16()
  loc_E904B7: Else
  loc_E904C1:   Set var_108 = Me.Txt
  loc_E904C7:   Call 0.Method_Proc_116_39_E904DC0 (arg_C)
  loc_E904CF:   var_10C.SetFocus
  loc_E904DB: End If
  loc_E904DB: Exit Sub
End Sub

Public Sub Proc_116_40_F72A60(arg_C) 'F72A60
  'Data Table: 4C7EB0
  Dim var_148 As Integer
  Dim var_8C As String
  Dim var_DC As Variant
  Dim var_CC As Variant
  Dim unk_4C7EC9 As Connection15
  Dim var_134 As Recordset15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  Dim var_130 As Variant
  loc_F7295D: var_148 = 0
  loc_F7297A: var_8C = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),0)+1 AS MyCode From RevMast WHERE Site_Code='" & MemVar_1F92070
  loc_F7298D: var_CC = (CVar(MemVar_1F92070) + Left(arg_C, 1))
  loc_F729A8: unk_4C7EC9.Execute CStr(CVar(var_8C & "' and isnumeric(SUBSTRING(Code,4,3))=1 and SUBSTRING(Code,1,3) ='") & var_CC & "'"), var_130, -1
  loc_F729B0: var_134 = var_134.Fields
  loc_F729B8: var_148 = var_138.Item(var_138)
  loc_F729C0: var_14C = var_14C.Value
  loc_F72A15: var_DC = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) + Left(arg_C, 1))
  loc_F72A41: var_130 = (1 + Format(CStr(var_15C), "000"))
  loc_F72A46: var_88 = CStr(var_130)
  loc_F72A58: Proc_116_40_F72A60 = 1
End Sub
