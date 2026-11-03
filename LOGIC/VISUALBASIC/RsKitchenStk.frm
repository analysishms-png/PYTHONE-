VERSION 5.00
Begin VB.Form RsKitchenStk
  Caption = "Stock Transfer"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "RsKitchenStk.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11310
  ClientHeight = 8760
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
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
    Width = 11310
    Height = 450
    TabIndex = 32
  End
  Begin BtnEnh CmdLastEntry
    Left = 10590
    Top = 1185
    Width = 3060
    Height = 585
    TabIndex = 31
  End
  Begin TextBox Txt
    Index = 7
    ForeColor = &HC00000&
    Left = 9015
    Top = 8100
    Width = 1500
    Height = 285
    TabIndex = 26
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
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC00000&
    Left = 2115
    Top = 1680
    Width = 4605
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 75
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
  Begin DataGrid DGShift
    Left = 12735
    Top = 1635
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 21
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HC00000&
    Left = 7935
    Top = 1680
    Width = 2640
    Height = 285
    Visible = 0   'False
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
  Begin TextBox TxtBarCode
    ForeColor = &HC00000&
    Left = 7905
    Top = 1020
    Width = 2670
    Height = 315
    Visible = 0   'False
    TabIndex = 18
    MaxLength = 30
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DGItem
    Left = 2310
    Top = 2850
    Width = 6735
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin DataGrid DGDepart
    Left = 5910
    Top = 2385
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 7935
    Top = 1365
    Width = 2625
    Height = 285
    TabIndex = 3
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
    Index = 0
    Left = 4530
    Top = 5235
    Width = 1995
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 25
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 480
    Top = 2880
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 2115
    Top = 1365
    Width = 4605
    Height = 285
    TabIndex = 2
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
    Index = 1
    ForeColor = &HC00000&
    Left = 2115
    Top = 1050
    Width = 1725
    Height = 285
    TabIndex = 1
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
    ForeColor = &HC00000&
    Left = 4980
    Top = 1050
    Width = 1740
    Height = 285
    TabIndex = 0
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
  Begin MSHFlexGrid FGrid
    Left = 435
    Top = 2010
    Width = 10710
    Height = 5970
    TabIndex = 6
  End
  Begin DataGrid DGToDepart
    Left = 11280
    Top = 5055
    Width = 4155
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 345
    Width = 180
    Height = 540
    TabIndex = 30
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
  Begin Label Label2
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 7770
    Top = 8580
    Width = 1230
    Height = 285
    Visible = 0   'False
    TabIndex = 29
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
    Left = 345
    Top = 8550
    Width = 2880
    Height = 255
    TabIndex = 24
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
    Left = 3720
    Top = 8550
    Width = 2790
    Height = 285
    TabIndex = 28
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
  Begin Label Label1
    Caption = "Total Amount"
    Index = 8
    ForeColor = &HC00000&
    Left = 7665
    Top = 8100
    Width = 1275
    Height = 240
    TabIndex = 27
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
    Caption = "Remarks"
    Index = 7
    ForeColor = &HC00000&
    Left = 690
    Top = 1695
    Width = 825
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
  Begin Label LblCaption
    Caption = "#"
    BackColor = &H404040&
    ForeColor = &HFFFFFF&
    Left = 13440
    Top = 8685
    Width = 255
    Height = 345
    Visible = 0   'False
    TabIndex = 23
    Alignment = 2 'Center
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
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HC0&
    Left = 480
    Top = 8040
    Width = 2130
    Height = 285
    TabIndex = 22
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "For Shift"
    Index = 3
    ForeColor = &HC00000&
    Left = 6765
    Top = 1695
    Width = 810
    Height = 240
    Visible = 0   'False
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
    Caption = "Bar Code"
    Index = 6
    ForeColor = &HC00000&
    Left = 6780
    Top = 1065
    Width = 885
    Height = 240
    Visible = 0   'False
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
  Begin Label Label1
    Caption = "To Location"
    Index = 0
    ForeColor = &HC00000&
    Left = 6750
    Top = 1410
    Width = 1125
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 12075
    Top = 8745
    Width = 690
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
    Caption = "DOC ID"
    Index = 5
    ForeColor = &HFF&
    Left = 3915
    Top = 5250
    Width = 540
    Height = 210
    Visible = 0   'False
    TabIndex = 13
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "From Location"
    Index = 4
    ForeColor = &HC00000&
    Left = 690
    Top = 1380
    Width = 1380
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
  Begin Label Label1
    Caption = "Transfer No."
    Index = 1
    ForeColor = &HC00000&
    Left = 690
    Top = 1065
    Width = 1155
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
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 4485
    Top = 1065
    Width = 435
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

Attribute VB_Name = "RsKitchenStk"

Private global_98 As Integer
Private global_96 As Integer
Private global_108 As Integer

Private Sub DGItem_UnknownEvent_9 '10D18B8
  'Data Table: 4EA028
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_148 As Variant
  loc_10D15CF: Me.DGItem.Visible = False
  loc_10D15EE: If (Me.RecordCount > 0) Then
  loc_10D1604:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D160C:   var_E4 = CVar(CLng(1)) 'Long
  loc_10D163F:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10D1647:   Set var_128 = Me.FGrid
  loc_10D164D:   LateIdCallSt
  loc_10D167C:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D1684:   var_E4 = CVar(CLng(9)) 'Long
  loc_10D16B7:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10D16BF:   Set var_128 = Me.FGrid
  loc_10D16C5:   LateIdCallSt
  loc_10D16F4:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D16FC:   var_E4 = CVar(CLng(&HA)) 'Long
  loc_10D172F:   var_114 = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_10D1737:   Set var_128 = Me.FGrid
  loc_10D173D:   LateIdCallSt
  loc_10D176C:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D1774:   var_E4 = CVar(CLng(2)) 'Long
  loc_10D17A7:   var_114 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_10D17AF:   Set var_128 = Me.FGrid
  loc_10D17B5:   LateIdCallSt
  loc_10D17EB:   var_B0 = Me.Fields.Item("Rate")
  loc_10D1803:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D180B:   var_F4 = CVar(CLng(7)) 'Long
  loc_10D1838:   var_148 = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_10D1840:   Set var_128 = Me.FGrid
  loc_10D1846:   LateIdCallSt
  loc_10D1864: End If
  loc_10D1870: Set var_A8 = Me.TxtGrid
  loc_10D1876: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15A, var_128, var_148, 1, 1)
  loc_10D187E: var_F4 = var_B0.Visible
  loc_10D1890: If (var_15A = &HFF) Then
  loc_10D189C:   Set var_A8 = Me.TxtGrid
  loc_10D18A2:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_D4, var_128)
  loc_10D18AA:   var_B0.SetFocus
  loc_10D18B6: End If
  loc_10D18B6: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '128FF8C
  'Data Table: 4EA028
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_C4 As Variant
  Dim var_98 As String
  Dim Me As Recordset15
  loc_128F9BA: Set var_88 = Me.Txt
  loc_128F9C0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_128F9CE: Proc_6_74_E226B0(var_8C)
  loc_128F9DA: Call Proc_214_51_EF73B0(var_8C)
  loc_128F9E2: var_92 = Index
  loc_128F9ED: If (var_92 = CInt(3)) Then
  loc_128F9FA:   Set global_52 = New 
  loc_128FA0C:   Me.Txt.CursorLocation = 3
  loc_128FA1F:   Set var_88 = Me.Txt
  loc_128FA25:   Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_128FA50:   var_98 = "Select distinct G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_128FA6F:   Me.Open CVar(var_98 & "') and G.CODE<>'" & var_8C.Tag & "'  Order by G.Name"), CVar(MemVar_1F92044), 2
  loc_128FA92:   CVarUnk
  loc_128FA97:   VerifyVarObj
  loc_128FA9D:   Set var_88 = Me.DGDepart
  loc_128FAA3:   LateIdStAd
  loc_128FB05:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), Me.Txt)
  loc_128FB0D:   global_52 = var_8C.Text
  loc_128FB25:   If (3 Or (var_98 = vbNullString)) Then
  loc_128FB28:     Exit Sub
  loc_128FB29:   End If
  loc_128FB36:   Set var_88 = Me.Txt
  loc_128FB3C:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_128FB44:   -1 = var_8C.Text
  loc_128FB56:   var_C4 = "Name"
  loc_128FB91:   If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_128FB9A:     Me.MoveFirst
  loc_128FBBD:     Set var_88 = Me.Txt
  loc_128FBC3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_128FBCB:     0 = var_8C.Text
  loc_128FBE4:     Me.Find 1 & var_98 & "'", var_C4, var_92
  loc_128FBF9:   End If
  loc_128FBFC: Else
  loc_128FC04:   If (var_92 = CInt(4)) Then
  loc_128FC23:     Me.Recordset15.CursorLocation = 3
  loc_128FC36:     Set var_88 = Me.Txt
  loc_128FC3C:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_128FC67:     var_98 = "Select distinct G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_128FC86:     Me.Open CVar(var_98 & "') and G.CODE<>'" & var_8C.Tag & "' Order by G.Name"), CVar(MemVar_1F92044), 2
  loc_128FCA9:     CVarUnk
  loc_128FCAE:     VerifyVarObj
  loc_128FCB4:     Set var_88 = Me.DGToDepart
  loc_128FCBA:     LateIdStAd
  loc_128FD16:     Set var_88 = Me.Txt
  loc_128FD1C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_128FD24:     var_88 = var_8C.Text
  loc_128FD3C:     If (New Or (var_98 = vbNullString)) Then
  loc_128FD3F:       Exit Sub
  loc_128FD40:     End If
  loc_128FD4D:     Set var_88 = Me.Txt
  loc_128FD53:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_128FD5B:     3 = var_8C.Text
  loc_128FD6D:     var_C4 = "Name"
  loc_128FDA8:     If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_128FDB1:       Me.MoveFirst
  loc_128FDD4:       Set var_88 = Me.Txt
  loc_128FDDA:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_128FDE2:       0 = var_8C.Text
  loc_128FDFB:       Me.Find 1 & var_98 & "'", var_C4, -1
  loc_128FE10:     End If
  loc_128FE13:   Else
  loc_128FE1B:     If (var_92 = CInt(5)) Then
  loc_128FE6C:       Set var_88 = Me.Txt
  loc_128FE72:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_128FE92:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_128FE95:         Exit Sub
  loc_128FE96:       End If
  loc_128FEA3:       Set var_88 = Me.Txt
  loc_128FEA9:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_128FEB1:       var_98 = var_8C.Text
  loc_128FEC3:       var_C4 = "Name"
  loc_128FEFE:       If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_128FF07:         Me.MoveFirst
  loc_128FF2A:         Set var_88 = Me.Txt
  loc_128FF30:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_128FF38:         0 = var_8C.Text
  loc_128FF51:         Me.Find 1 & var_98 & "'", var_C4, 
  loc_128FF66:       End If
  loc_128FF69:     Else
  loc_128FF71:       If (var_92 = CInt(2)) Then
  loc_128FF7C:         var_98 = "{Home}+{End}"
  loc_128FF82:         Proc_303_0_FB9B68(var_98)
  loc_128FF8A:       End If
  loc_128FF8A:     End If
  loc_128FF8A:   End If
  loc_128FF8A: End If
  loc_128FF8A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1208FD0
  'Data Table: 4EA028
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim var_90 As Variant
  Dim var_B0 As Variant
  Dim var_98 As DataGrid
  Dim var_8C As DataGrid
  loc_1208B22: If (CLng(Shift) = &H1B) Then
  loc_1208B25:   Call Proc_214_51_EF73B0()
  loc_1208B2A:   Exit Sub
  loc_1208B2B: End If
  loc_1208B2E: var_86 = KeyCode
  loc_1208B39: If (var_86 = CInt(3)) Then
  loc_1208B49:   Set var_98 = Me.Txt
  loc_1208B4F:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_1208B57:   var_A0 = var_9C.Height
  loc_1208B69:   Set var_8C = Me.Txt
  loc_1208B6F:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_1208B87:   var_B0 = CVar(((var_90.Top + var_A0) + CDbl(&H19))) 'Single
  loc_1208B96:   Me.DGDepart.Top = var_B0
  loc_1208BB5:   Set var_8C = Me.Txt
  loc_1208BBB:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_1208BC3:   var_94 = var_90.Left
  loc_1208BDA:   Me.DGDepart.Left = CVar(var_94)
  loc_1208C00:   Set var_9C = Nothing
  loc_1208C0B:   Set var_98 = Nothing
  loc_1208C2A:   Set var_90 = Me.Txt
  loc_1208C39:   Proc_6_69_134A198(Me.DGDepart, var_90, KeyCode, global_52, Shift, &HFF)
  loc_1208C50: Else
  loc_1208C58:   If (var_86 = CInt(4)) Then
  loc_1208C68:     Set var_98 = Me.Txt
  loc_1208C6E:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_A0, 1)
  loc_1208C76:     var_98 = var_9C.Height
  loc_1208C88:     Set var_8C = Me.Txt
  loc_1208C8E:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_1208C96:     var_9C = var_90.Top
  loc_1208CA6:     var_B0 = CVar(((var_94 + var_A0) + CDbl(&H19))) 'Single
  loc_1208CB5:     Me.DGToDepart.Top = CVar(var_94)
  loc_1208CD4:     Set var_8C = Me.Txt
  loc_1208CDA:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_1208CE2:     0 = var_90.Left
  loc_1208CF9:     Me.DGToDepart.Left = CVar(var_94)
  loc_1208D1F:     Set var_9C = Nothing
  loc_1208D2A:     Set var_98 = Nothing
  loc_1208D49:     Set var_90 = Me.Txt
  loc_1208D58:     Proc_6_69_134A198(Me.DGToDepart, var_90, KeyCode, global_64, Shift, &HFF)
  loc_1208D6F:   Else
  loc_1208D77:     If (var_86 = CInt(5)) Then
  loc_1208D87:       Set var_98 = Me.Txt
  loc_1208D8D:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_A0, 1)
  loc_1208D95:       var_98 = var_9C.Height
  loc_1208DA7:       Set var_8C = Me.Txt
  loc_1208DAD:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_1208DB5:       var_9C = var_90.Top
  loc_1208DC5:       var_B0 = CVar(((var_94 + var_A0) + CDbl(&H19))) 'Single
  loc_1208DD4:       Me.DGShift.Top = CVar(var_94)
  loc_1208DF3:       Set var_8C = Me.Txt
  loc_1208DF9:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_1208E01:       0 = var_90.Left
  loc_1208E18:       Me.DGShift.Left = CVar(var_94)
  loc_1208E3E:       Set var_9C = Nothing
  loc_1208E49:       Set var_98 = Nothing
  loc_1208E77:       Proc_6_69_134A198(Me.DGShift, Me.Txt, KeyCode, global_68, Shift, &HFF)
  loc_1208E8B:     End If
  loc_1208E8B:   End If
  loc_1208E8B: End If
  loc_1208EBC: Set var_98 = Me.DGItem
  loc_1208ED3: Set var_9C = Me.DGShift
  loc_1208EFC: If ((((CBool(Me.DGDepart.Visible) = 0) And (CBool(Me.DGToDepart.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_1208F14:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1208F1D:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_1208F22:   End If
  loc_1208F26:   Set var_8C = Me.TopCtrl1
  loc_1208F2C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_1208F57:   If (((CStr(0) = "Add") And (KeyCode <> CInt(1))) And (KeyCode <> CInt(2))) Then
  loc_1208F6F:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1208F78:       Proc_6_76_E52838(Shift, arg_14)
  loc_1208F7D:     End If
  loc_1208F7D:   End If
  loc_1208F81:   Set var_8C = Me.TopCtrl1
  loc_1208F87:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_1208FA9:   If ((CStr() = "Edit") And (KeyCode <> CInt(2))) Then
  loc_1208FC1:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1208FCA:       Proc_6_76_E52838(Shift)
  loc_1208FCF:     End If
  loc_1208FCF:   End If
  loc_1208FCF: End If
  loc_1208FCF: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FAEE80
  'Data Table: 4EA028
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_FAECEB: Proc_6_58_E054C0(arg_10)
  loc_FAECF6: Proc_6_133_E7EF78(var_94)
  loc_FAECFF: arg_10 = CInt(var_94)
  loc_FAED08: var_96 = KeyAscii
  loc_FAED13: If (var_96 = CInt(3)) Then
  loc_FAED32:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_FAED5F:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_52, arg_10, "Name")
  loc_FAED6E:   End If
  loc_FAED71: Else
  loc_FAED79:   If (var_96 = CInt(4)) Then
  loc_FAED98:     If (CBool(Me.DGToDepart.Visible) = &HFF) Then
  loc_FAEDC5:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_FAEDD4:     End If
  loc_FAEDD7:   Else
  loc_FAEDDF:     If (var_96 = CInt(5)) Then
  loc_FAEDFE:       If (CBool(Me.DGShift.Visible) = &HFF) Then
  loc_FAEE05:         Set var_A8 = Me.Txt
  loc_FAEE2B:         Proc_6_89_146F1AC(var_A8, KeyAscii, global_68, arg_10, "Name", 0)
  loc_FAEE3A:       End If
  loc_FAEE3D:     Else
  loc_FAEE45:       If (var_96 = CInt(1)) Then
  loc_FAEE52:         Set var_9C = Me.Txt
  loc_FAEE58:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0, 0)
  loc_FAEE73:         Proc_6_42_129A86C(var_A8, arg_10, 8, 0)
  loc_FAEE7F:       End If
  loc_FAEE7F:     End If
  loc_FAEE7F:   End If
  loc_FAEE7F: End If
  loc_FAEE7F: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E000C4
  'Data Table: 4EA028
  Dim var_86 As Integer
  loc_E000BF: var_86 = KeyCode
  loc_E000C2: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E50834
  'Data Table: 4EA028
  loc_E50812: Set var_88 = Me.Txt
  loc_E50818: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E50826: Proc_6_73_E22704(var_8C)
  loc_E50832: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1456CD8
  'Data Table: 4EA028
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_98 As String
  Dim var_C8 As Integer
  Dim unk_4EA038 As Connection15
  Dim var_8C As Variant
  Dim var_94 As Field20
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_124 As TextBox
  Dim Me As Recordset15
  Dim var_120 As TextBox
  loc_1456157: var_86 = Cancel
  loc_1456162: If (var_86 = CInt(1)) Then
  loc_1456170:   Set var_8C = Me.Txt
  loc_1456176:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_145617E:   var_98 = "Vr No"
  loc_145619F:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_14561AC:     Set var_8C = Me.Txt
  loc_14561B2:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14561BA:     var_90.SetFocus
  loc_14561C8:     arg_10 = &HFF
  loc_14561CB:     Exit Sub
  loc_14561CC:   End If
  loc_14561DA:   Set var_8C = Me.Txt
  loc_14561E0:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_14561E8:   arg_10 = var_90.Text
  loc_1456200:   If (CDbl(var_98) = CDbl(0)) Then
  loc_1456216:     var_B8 = "Vr No Can Not Be 0"
  loc_145621C:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_1456236:     Set var_8C = Me.Txt
  loc_145623C:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1456244:     var_90.SetFocus
  loc_1456252:     arg_10 = &HFF
  loc_1456255:     Exit Sub
  loc_1456256:   End If
  loc_145625A:   Set var_8C = Me.TopCtrl1
  loc_1456260:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_1456268:   var_98 = CStr(var_86)
  loc_1456279:   If (var_98 = "Add") Then
  loc_1456282:     Call Proc_214_52_115B4B8(MemVar_1F92044)
  loc_1456295:     Set var_8C = Me.Txt
  loc_145629B:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_14562A3:     var_90.Text = var_98
  loc_14562B8:     Call Proc_214_52_115B4B8(MemVar_1F92044, var_98)
  loc_14562C3:     global_80 = var_98
  loc_14562D0:     Call Proc_214_53_110C450(MemVar_1F92044, var_98)
  loc_14562DB:     global_84 = var_98
  loc_14562E2:   End If
  loc_14562E6:   Set var_8C = Me.TopCtrl1
  loc_14562EC:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_1456305:   If (CStr() = "Add") Then
  loc_145630E:     var_C8 = 0
  loc_145632E:     var_98 = "Select Count(*) From Stock Where DocID='" & global_80
  loc_145633E:     unk_4EA038.Execute var_98 & "'", var_B8, -1
  loc_1456346:     var_8C = var_8C.Fields
  loc_145634E:     var_C8 = var_90.Item(var_90)
  loc_1456356:     var_94 = var_94.Value
  loc_145637D:     If (var_D8 > 0) Then
  loc_1456386:       Call 0.Method_arg_50 (var_98)
  loc_1456394:       var_D8 = CVar(var_98) 'String
  loc_14563A1:       var_B8 = "Duplicate Vr No."
  loc_14563A7:       MsgBox(var_B8, &H40, var_D8, var_F8, var_118)
  loc_14563BD:       Call Proc_214_52_115B4B8(MemVar_1F92044, var_98)
  loc_14563CD:       If (var_98 = vbNullString) Then
  loc_14563DA:         Set var_8C = Me.Txt
  loc_14563E0:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14563E8:         var_90.SetFocus
  loc_14563F6:         arg_10 = &HFF
  loc_14563F9:         Exit Sub
  loc_14563FA:       End If
  loc_1456400:       Call Proc_214_52_115B4B8(MemVar_1F92044, var_98)
  loc_1456413:       Set var_8C = Me.Txt
  loc_1456419:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1456421:       var_90.Text = arg_10
  loc_1456436:       Call Proc_214_52_115B4B8(MemVar_1F92044, var_98)
  loc_1456441:       global_80 = var_98
  loc_145644A:       arg_10 = &HFF
  loc_145644D:       Exit Sub
  loc_145644E:     End If
  loc_1456454:     var_C8 = 0
  loc_1456474:     var_98 = "Select Count(*) From Stock Where DocID='" & global_84
  loc_1456484:     unk_4EA038.Execute var_98 & "'", var_B8, -1
  loc_145648C:     var_8C = var_8C.Fields
  loc_1456494:     var_C8 = var_90.Item(var_90)
  loc_145649C:     var_94 = var_94.Value
  loc_14564C3:     If (var_D8 > 0) Then
  loc_14564CC:       Call 0.Method_arg_50 (var_98, var_D8)
  loc_14564ED:       MsgBox("Duplicate Vr No.", &H40, CVar(var_98), var_F8, var_118)
  loc_1456503:       Call Proc_214_53_110C450(MemVar_1F92044, var_98)
  loc_1456513:       If (var_98 = vbNullString) Then
  loc_1456520:         Set var_8C = Me.Txt
  loc_1456526:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_145652E:         var_90.SetFocus
  loc_145653C:         arg_10 = &HFF
  loc_145653F:         Exit Sub
  loc_1456540:       End If
  loc_1456546:       Call Proc_214_53_110C450(MemVar_1F92044, var_98, arg_10)
  loc_1456551:       global_84 = var_98
  loc_145655A:       arg_10 = &HFF
  loc_145655D:       Exit Sub
  loc_145655E:     End If
  loc_145655E:   End If
  loc_1456561: Else
  loc_1456569:   If (var_86 = CInt(2)) Then
  loc_1456579:     Set var_8C = Me.Txt
  loc_145657F:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1456595:     var_D8 = Trim(CVar(var_98))
  loc_14565B7:     If (Len(var_D8) = 0) Then
  loc_14565CC:       Set var_8C = Me.Txt
  loc_14565D2:       Call 0.Method_Txt_Validate0 (Cancel, var_90, CStr(MemVar_1F920EC))
  loc_14565DA:       var_90.Text = var_90.Text
  loc_14565EC:     Else
  loc_14565F6:       Set var_8C = Me.Txt
  loc_14565FC:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_145661C:       Set var_120 = Me.Txt
  loc_1456622:       Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_145662A:       var_124.Text = Proc_6_33_1512840(var_90)
  loc_145663D:     End If
  loc_1456641:     Set var_8C = Me.TopCtrl1
  loc_1456647:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D8)
  loc_145664F:     var_98 = CStr()
  loc_1456660:     If (var_98 = "Add") Then
  loc_1456669:       Call Proc_214_52_115B4B8(MemVar_1F92044)
  loc_1456679:       If (var_98 = vbNullString) Then
  loc_1456686:         Set var_8C = Me.Txt
  loc_145668C:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1456694:         var_90.SetFocus
  loc_14566A2:         arg_10 = &HFF
  loc_14566A5:         Exit Sub
  loc_14566A6:       End If
  loc_14566AC:       Call Proc_214_53_110C450(MemVar_1F92044, var_98)
  loc_14566BC:       If (var_98 = vbNullString) Then
  loc_14566C9:         Set var_8C = Me.Txt
  loc_14566CF:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14566D7:         var_90.SetFocus
  loc_14566E5:         arg_10 = &HFF
  loc_14566E8:         Exit Sub
  loc_14566E9:       End If
  loc_14566EF:       Call Proc_214_52_115B4B8(MemVar_1F92044, var_98, arg_10)
  loc_1456702:       Set var_8C = Me.Txt
  loc_1456708:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1456710:       var_90.Text = arg_10
  loc_1456725:       Call Proc_214_52_115B4B8(MemVar_1F92044, var_98)
  loc_1456730:       global_80 = var_98
  loc_145673D:       Call Proc_214_53_110C450(MemVar_1F92044, var_98)
  loc_1456748:       global_84 = var_98
  loc_145674F:     End If
  loc_145675D:     Set var_8C = Me.Txt
  loc_1456763:     Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_145676B:     var_98 = var_90.Text
  loc_145678B:     If (Proc_6_91_EF2D40(CDate(var_98)) = 0) Then
  loc_1456799:       Set var_8C = Me.Txt
  loc_145679F:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_14567A7:       var_90.SetFocus
  loc_14567B3:       Exit Sub
  loc_14567B4:     End If
  loc_14567B7:   Else
  loc_14567BF:     If (var_86 = CInt(3)) Then
  loc_1456810:       Set var_8C = Me.Txt
  loc_1456816:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_145681E:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1456836:       If (var_98 Or (var_98 = vbNullString)) Then
  loc_1456846:         Set var_8C = Me.Txt
  loc_145684C:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1456854:         var_90.Text = vbNullString
  loc_145686D:         Set var_8C = Me.Txt
  loc_1456873:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_145687B:         var_90.Tag = vbNullString
  loc_145688A:       Else
  loc_14568C5:         Set var_94 = Me.Txt
  loc_14568CB:         Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_14568D3:         var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1456906:         var_90 = Me.Fields.Item("Code")
  loc_1456924:         Set var_94 = Me.Txt
  loc_145692A:         Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_1456932:         var_120.Tag = CStr(var_90.Value)
  loc_1456948:       End If
  loc_1456953:       Set var_8C = Me.Txt
  loc_1456959:       Call 0.Method_Txt_Validate0 (CInt(3))
  loc_1456961:       var_98 = "From Location"
  loc_1456982:       If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_145698F:         Set var_8C = Me.Txt
  loc_1456995:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_145699D:         var_90.SetFocus
  loc_14569AB:         arg_10 = &HFF
  loc_14569AE:         Exit Sub
  loc_14569AF:       End If
  loc_14569B2:     Else
  loc_14569BA:       If (var_86 = CInt(4)) Then
  loc_1456A0B:         Set var_8C = Me.Txt
  loc_1456A11:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1456A19:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1456A31:         If (arg_10 Or (var_98 = vbNullString)) Then
  loc_1456A41:           Set var_8C = Me.Txt
  loc_1456A47:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1456A4F:           var_90.Text = vbNullString
  loc_1456A68:           Set var_8C = Me.Txt
  loc_1456A6E:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1456A76:           var_90.Tag = vbNullString
  loc_1456A85:         Else
  loc_1456AC0:           Set var_94 = Me.Txt
  loc_1456AC6:           Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_1456ACE:           var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1456B01:           var_90 = Me.Fields.Item("Code")
  loc_1456B12:           var_98 = CStr(var_90.Value)
  loc_1456B1F:           Set var_94 = Me.Txt
  loc_1456B25:           Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_1456B2D:           var_120.Tag = var_98
  loc_1456B43:         End If
  loc_1456B46:       Else
  loc_1456B4E:         If (var_86 = CInt(5)) Then
  loc_1456B9F:           Set var_8C = Me.Txt
  loc_1456BA5:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1456BAD:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1456BC5:           If (var_90 Or (var_98 = vbNullString)) Then
  loc_1456BD5:             Set var_8C = Me.Txt
  loc_1456BDB:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1456BE3:             var_90.Text = vbNullString
  loc_1456BFC:             Set var_8C = Me.Txt
  loc_1456C02:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1456C0A:             var_90.Tag = vbNullString
  loc_1456C19:           Else
  loc_1456C54:             Set var_94 = Me.Txt
  loc_1456C5A:             Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_1456C62:             var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1456CB3:             Set var_94 = Me.Txt
  loc_1456CB9:             Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_1456CC1:             var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1456CD7:           End If
  loc_1456CD7:         End If
  loc_1456CD7:       End If
  loc_1456CD7:     End If
  loc_1456CD7:   End If
  loc_1456CD7: End If
  loc_1456CD7: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11790DC
  'Data Table: 4EA028
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_10C As String
  Dim var_108 As Variant
  Dim var_110 As Long
  Dim var_104 As TextBox
  Dim Me As Variant
  loc_1178D18: On Error Goto loc_11790D3
  loc_1178D1B: Call Proc_214_51_EF73B0()
  loc_1178D36: Me.FGrid.CellBackColor = CVar(CLng(global_120))
  loc_1178D51: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1178D5A: Set var_BC = Me.FGrid
  loc_1178D8F: Set var_104 = Me.TxtGrid
  loc_1178D95: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_1178D9D: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_1178DCA: Set var_A8 = Me.TxtGrid
  loc_1178DD0: Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_1178DD8: var_BC.MaxLength = 0
  loc_1178E07: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_1178E16:   Set var_A8 = Me.TxtGrid
  loc_1178E1C:   Call 0.Method_TxtGrid_GotFocus0 (0, var_BC, var_114)
  loc_1178E24:   var_110 = var_BC.Left
  loc_1178E3B:   Me.DGItem.Left = CVar(var_114)
  loc_1178E55:   Set var_F0 = Me.TxtGrid
  loc_1178E5B:   Call 0.Method_TxtGrid_GotFocus0 (0, var_104)
  loc_1178E74:   Set var_A8 = Me.TxtGrid
  loc_1178E7A:   Call 0.Method_TxtGrid_GotFocus0 (0, var_BC)
  loc_1178E8E:   var_94 = CVar((var_BC.Top + var_104.Height)) 'Single
  loc_1178E9D:   Me.DGItem.Top = CVar(var_BC.Top)
  loc_1178EF0:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1178EF3:     Exit Sub
  loc_1178EF4:   End If
  loc_1178F07:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1178F0F:   var_DC = CVar(CLng(1)) 'Long
  loc_1178F42:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1178F4B:     Me.MoveFirst
  loc_1178F6B:     var_DC = CVar(CLng(9)) 'Long
  loc_1178F74:     Set var_BC = Me.FGrid
  loc_1178F8B:     Proc_6_17_EAA2B0(var_12C, CVar(CStr(var_BC.TextMatrix))), var_DC, CVar(CLng(Me.FGrid.Row)))
  loc_1178FAA:     var_10C = CStr("Code =" & var_12C)
  loc_1178FB4:     Me.Find var_10C, 0, 1
  loc_1178FE4:     If (Me.EOF = &HFF) Then
  loc_1178FED:       Me.MoveFirst
  loc_1178FF2:     End If
  loc_1178FF2:   End If
  loc_1178FF5: Else
  loc_1178FFC:   If Not (var_110 = CLng(7)) Then
  loc_1179006:     If (var_110 = CLng(3)) Then
  loc_1179009:     End If
  loc_1179012:     If (global_96 = 0) Then
  loc_1179024:       Set var_A8 = Me.TxtGrid
  loc_117902A:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 0, var_15C)
  loc_1179032:       var_BC.SelStart = var_DC
  loc_117904B:       Set var_A8 = Me.TxtGrid
  loc_1179051:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, var_10C)
  loc_1179059:       var_94 = var_BC.Text
  loc_117906C:       Set var_F0 = Me.TxtGrid
  loc_1179072:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_104)
  loc_117907A:       var_104.SelLength = Len(var_10C)
  loc_117908D:     End If
  loc_1179090:   Else
  loc_1179097:     If (var_110 = CLng(4)) Then
  loc_11790A7:       Set var_A8 = Me.TxtGrid
  loc_11790AD:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11790C5:       global_112 = Val(var_BC.Text)
  loc_11790D2:     End If
  loc_11790D2:   End If
  loc_11790D2: End If
  loc_11790D2: Exit Sub
  loc_11790D3: ' Referenced from: 1178D18
  loc_11790D3: Proc_6_60_E62BC4(global_112)
  loc_11790D8: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '120D224
  'Data Table: 4EA028
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_120CD58: On Error Goto loc_120D21D
  loc_120CD65: If (CLng(Shift) = &H1B) Then
  loc_120CD74:   Set var_88 = Me.TxtGrid
  loc_120CD7A:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_120CD93:   Set var_94 = Me.TxtGrid
  loc_120CD99:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_120CDA1:   var_98.Text = var_8C.Tag
  loc_120CDBD:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_120CDC6:   Set var_88 = Me.FGrid
  loc_120CDE2:   Set var_88 = Me.TxtGrid
  loc_120CDE8:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, 0)
  loc_120CDF0:   var_8C.Visible = FGrid.DispID_8001
  loc_120CDFC:   Exit Sub
  loc_120CDFD: End If
  loc_120CE10: var_AC = CLng(Me.FGrid.Col)
  loc_120CE20: If (var_AC = CLng(1)) Then
  loc_120CE2E:   If (global_100 = "Yes") Then
  loc_120CE49:     Set var_98 = Nothing
  loc_120CE54:     Set var_94 = Nothing
  loc_120CE82:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF)
  loc_120CE99:   Else
  loc_120CEB1:     Set var_98 = Nothing
  loc_120CEEA:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF, 2, Nothing)
  loc_120CEFE:   End If
  loc_120CF08:   If (CLng(Shift) = &HD) Then
  loc_120CF16:     Call Proc_214_47_149B8E0(KeyCode, 0, var_B0, var_98, 0, 1)
  loc_120CF21:     If (var_B0 = &HFF) Then
  loc_120CF67:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_96, 9, 2)
  loc_120CF77:     End If
  loc_120CF77:   End If
  loc_120CF7A: Else
  loc_120CF81:   If (var_AC = CLng(3)) Then
  loc_120CFC4:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_96 = &HFF))) Then
  loc_120CFD4:       Call Proc_214_47_149B8E0(0, 0, var_B2, 3, 0)
  loc_120CFDF:       If (var_B2 = &HFF) Then
  loc_120CFED:         If (global_88 <> "No") Then
  loc_120D033:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_96, 9, 0)
  loc_120D046:         Else
  loc_120D089:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_96, 9, 9, 0)
  loc_120D099:         End If
  loc_120D099:       End If
  loc_120D099:     End If
  loc_120D09C:   Else
  loc_120D0A3:     If (var_AC = CLng(7)) Then
  loc_120D0E6:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_96 = &HFF))) Then
  loc_120D0F6:         Call Proc_214_47_149B8E0(0, 0, var_B2, 0, 7, 0)
  loc_120D101:         If (var_B2 = &HFF) Then
  loc_120D147:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_96, 9, 9)
  loc_120D157:         End If
  loc_120D157:       End If
  loc_120D15A:     Else
  loc_120D161:       If (var_AC = CLng(4)) Then
  loc_120D1A4:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_96 = &HFF))) Then
  loc_120D1B4:           Call Proc_214_47_149B8E0(0, 0, var_B2, 0, 0)
  loc_120D1BF:           If (var_B2 = &HFF) Then
  loc_120D1C6:             Set var_94 = Me.FGrid
  loc_120D1CD:             Set var_98 = Me.TxtGrid
  loc_120D20C:             Proc_6_62_1253BC4(var_94, var_98, KeyCode, Shift, global_96, CByte((CInt(7) + 1)), 0)
  loc_120D21C:           End If
  loc_120D21C:         End If
  loc_120D21C:       End If
  loc_120D21C:     End If
  loc_120D21C:   End If
  loc_120D21C: End If
  loc_120D21C: Exit Sub
  loc_120D21D: ' Referenced from: 120CD58
  loc_120D21D: Proc_6_60_E62BC4(7, 0, var_94, var_98)
  loc_120D222: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '109D90C
  'Data Table: 4EA028
  Dim arg_10 As Integer
  Dim var_A0 As Variant
  Dim var_9C As Variant
  Dim var_A4 As Long
  Dim var_A8 As TextBox
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Long
  loc_109D644: On Error Goto loc_109D905
  loc_109D64A: Proc_6_58_E054C0(arg_10)
  loc_109D655: Proc_6_133_E7EF78(var_9C)
  loc_109D65E: arg_10 = CInt(var_9C)
  loc_109D687: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_109D6A6:   If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_109D6B4:     If (global_100 = "Yes") Then
  loc_109D6C3:       Set var_A0 = Me.TxtGrid
  loc_109D6C9:       Call 0.Method_TxtGrid_KeyPress0 (0, var_A8, var_AC)
  loc_109D6D1:       var_A4 = var_A8.Text
  loc_109D6DB:       var_86 = CInt(Len(var_AC))
  loc_109D6EB:       var_88 = arg_10
  loc_109D6F2:       Set var_A8 = Me.TxtGrid
  loc_109D6FD:       var_AC = "BarCode"
  loc_109D718:       Proc_6_89_146F1AC(var_A8, KeyAscii, global_60, arg_10, var_AC)
  loc_109D733:       Set var_A0 = Me.TxtGrid
  loc_109D739:       Call 0.Method_TxtGrid_KeyPress0 (0, var_A8, var_AC, 0)
  loc_109D741:       var_88 = var_A8.Text
  loc_109D759:       If (Len(var_AC) = CLng(var_86)) Then
  loc_109D773:         If (Me.AbsolutePosition > 0) Then
  loc_109D787:           var_8C = Me.AbsolutePosition
  loc_109D78D:         Else
  loc_109D792:           var_8C = 1
  loc_109D795:         End If
  loc_109D798:         arg_10 = var_88
  loc_109D7C5:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_60, arg_10, "Name", 0)
  loc_109D7EB:         If (Me.AbsolutePosition <= 0) Then
  loc_109D7F7:           Me.AbsolutePosition = var_8C
  loc_109D7FC:         End If
  loc_109D7FC:       End If
  loc_109D7FF:     Else
  loc_109D803:       Set var_A8 = Me.TxtGrid
  loc_109D829:       Proc_6_89_146F1AC(var_A8, KeyAscii, global_60, arg_10, "Name", 0)
  loc_109D838:     End If
  loc_109D838:   End If
  loc_109D83B: Else
  loc_109D842:   If (var_A4 = CLng(3)) Then
  loc_109D84F:     Set var_A0 = Me.TxtGrid
  loc_109D855:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, arg_10, var_8C)
  loc_109D870:     Proc_6_42_129A86C(var_A8, arg_10, 8, 3)
  loc_109D87F:   Else
  loc_109D886:     If (var_A4 = CLng(7)) Then
  loc_109D893:       Set var_A0 = Me.TxtGrid
  loc_109D899:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, var_8C)
  loc_109D8B4:       Proc_6_42_129A86C(var_A8, arg_10, 8, 2)
  loc_109D8C3:     Else
  loc_109D8CA:       If (var_A4 = CLng(4)) Then
  loc_109D8D7:         Set var_A0 = Me.TxtGrid
  loc_109D8DD:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, var_86)
  loc_109D8F8:         Proc_6_42_129A86C(var_A8, arg_10, 6)
  loc_109D904:       End If
  loc_109D904:     End If
  loc_109D904:   End If
  loc_109D904: End If
  loc_109D904: Exit Sub
  loc_109D905: ' Referenced from: 109D644
  loc_109D905: Proc_6_60_E62BC4(2, arg_10)
  loc_109D90A: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10D46D8
  'Data Table: 4EA028
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As Variant
  Dim var_180 As Double
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_BC As Variant
  Dim var_A8 As String
  Dim var_240 As Double
  Dim var_178 As MSHFlexGrid
  loc_10D43FC: On Error Goto loc_10D46D2
  loc_10D440B: If (KeyCode = 0) Then
  loc_10D4421:   var_A0 = CLng(Me.FGrid.Col)
  loc_10D4431:   If (var_A0 = CLng(1)) Then
  loc_10D4457:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_10D4468:       Call TxtGrid_KeyDown(KeyCode, global_98)
  loc_10D4478:       If (global_100 = "Yes") Then
  loc_10D44A5:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_60, Shift, "BarCode")
  loc_10D44B7:       Else
  loc_10D44BB:         Set var_AC = Me.TxtGrid
  loc_10D44C6:         var_A8 = "Name"
  loc_10D44E1:         Proc_6_89_146F1AC(var_AC, KeyCode, global_60, Shift, var_A8)
  loc_10D44F0:       End If
  loc_10D44F0:     End If
  loc_10D44F3:   Else
  loc_10D44FA:     If Not (var_A0 = CLng(3)) Then
  loc_10D4504:       If (var_A0 = CLng(4)) Then
  loc_10D4507:       End If
  loc_10D4514:       Set var_8C = Me.TxtGrid
  loc_10D451A:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, &HFF)
  loc_10D4522:       &HFF = var_AC.Text
  loc_10D4545:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D455D:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10D458A:       var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_10D4592:       Set var_178 = Me.FGrid
  loc_10D4598:       LateIdCallSt
  loc_10D45D2:       var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D45DA:       var_124 = CVar(CLng(3)) 'Long
  loc_10D45FC:       var_180 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10D4612:       var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D463C:       var_240 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10D4699:       LateIdCallSt
  loc_10D46CC:       Call Proc_214_55_F74ECC(Me.FGrid, CVar(CStr(Format(CVar((var_180 * var_240)), "0.000"))), 1, 1, CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), var_240, CVar(CLng(4)))
  loc_10D46D1:     End If
  loc_10D46D1:   End If
  loc_10D46D1: End If
  loc_10D46D1: Exit Sub
  loc_10D46D2: ' Referenced from: 10D43FC
  loc_10D46D2: Proc_6_60_E62BC4(var_144, var_180, var_124, var_BC)
  loc_10D46D7: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E236C4
  'Data Table: 4EA028
  Dim arg_10 As Integer
  loc_E236A0: On Error Goto loc_E236BB
  loc_E236AE: Call Proc_214_47_149B8E0(Cancel, &HFF)
  loc_E236B7: arg_10 = Not(var_88)
  loc_E236BA: Exit Sub
  loc_E236BB: ' Referenced from: E236A0
  loc_E236BB: Proc_6_60_E62BC4(arg_10)
  loc_E236C0: Exit Sub
End Sub

Private Sub TxtBarCode_KeyDown(KeyCode As Integer, Shift As Integer) 'E14ED0
  'Data Table: 4EA028
  loc_E14EC2: If (CLng(KeyCode) = &HD) Then
  loc_E14ECA:   Call TxtBarCode_Validate(&HFF)
  loc_E14ECF: End If
  loc_E14ECF: Exit Sub
End Sub

Private Sub TxtBarCode_Validate(Cancel As Boolean) '1355A70
  'Data Table: 4EA028
  Dim var_9C As String
  Dim var_A0 As Variant
  Dim var_88 As Variant
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_106 As Integer
  Dim var_F4 As Variant
  Dim var_118 As TextBox
  Dim var_112 As Integer
  Dim Cancel As Integer
  Dim var_D4 As Variant
  Dim var_130 As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_1CC As Variant
  Dim var_1FC As Variant
  loc_1355260: Set var_88 = Me.TopCtrl1
  loc_1355266: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_135526E: var_9C = CStr()
  loc_135527D: Set var_A0 = Me.TxtBarCode
  loc_13552A2: If ((var_9C = "Browse") And (var_A0.Text <> vbNullString)) Then
  loc_13552B2:   Me.TxtBarCode.Text = vbNullString
  loc_13552C0:   Call 0.Method_arg_50 (var_9C)
  loc_13552E1:   MsgBox("Not Applicable In Browse Mode !", &H10, CVar(var_9C), var_E4, var_104)
  loc_13552F1:   Exit Sub
  loc_13552F2: End If
  loc_1355314: If (Trim(CVar(Me.TxtBarCode)) = vbNullString) Then
  loc_1355317:   Exit Sub
  loc_1355318: End If
  loc_1355323: var_C4 = Trim(CVar(Me.TxtBarCode))
  loc_135532C: var_110 = CStr(var_C4)
  loc_1355343: Me.TxtBarCode.Text = vbNullString
  loc_1355356: Set var_88 = Me.Txt
  loc_135535C: Call 0.Method_TxtBarCode_Validate0 (CInt(3))
  loc_135536D: Set var_118 = var_A0
  loc_1355385: If (Proc_6_27_EA565C(var_118, "From Location") = 0) Then
  loc_1355393:   Set var_88 = Me.Txt
  loc_1355399:   Call 0.Method_TxtBarCode_Validate0 (CInt(3), var_A0)
  loc_13553A1:   var_A0.SetFocus
  loc_13553AD:   Exit Sub
  loc_13553AE: End If
  loc_13553C5: If (Me.RecordCount = 0) Then
  loc_13553C8:   Exit Sub
  loc_13553C9: End If
  loc_13553CF: Me.MoveFirst
  loc_13553F9: Me.Find "BarCode='" & var_110 & "'", 0, 1
  loc_1355419: If (Me.EOF = &HFF) Then
  loc_1355435:   MsgBox("Item Not Found!", &H10, var_C4, var_E4, var_104)
  loc_1355448: Else
  loc_1355462:   var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_135546F:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1355477:   var_F4 = CVar(CLng(9)) 'Long
  loc_1355491:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_13554A2:   If (var_9C <> vbNullString) Then
  loc_13554A9:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_13554C0:     var_98 = Me.FGrid.TextMatrix)
  loc_13554DA:     Set var_A0 = Me.Txt
  loc_13554E0:     Call 0.Method_TxtBarCode_Validate0 (CInt(3), var_118, var_9C, var_98, CVar(CLng(9)), var_B4)
  loc_13554E8:     var_F4 = var_118.Tag
  loc_1355511:     var_112 = Proc_96_27_11F27DC(CStr(var_98), CDbl(1), MemVar_1F92070, var_9C, global_104)
  loc_1355537:     Me.LblCurStockStr.Caption = global_104
  loc_1355545:     If (var_112 = 0) Then
  loc_1355556:       If (Proc_96_29_E989EC(global_108, var_112, var_B4) = 0) Then
  loc_135555B:         Cancel = 0
  loc_135555E:         Exit Sub
  loc_135555F:       End If
  loc_135555F:     End If
  loc_135555F:     var_B4 = vbNullString
  loc_1355569:     Set var_88 = Me.FGrid
  loc_1355594:     var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_135559D:   End If
  loc_13555B0:   Me.FGrid.TopRow = CVar(CLng(var_106))
  loc_13555BC:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_13555C4:   var_F4 = CVar(CLng(0)) 'Long
  loc_13555CE:   var_98 = CVar(CStr(var_106)) 'String
  loc_13555D6:   Set var_88 = Me.FGrid
  loc_13555DC:   LateIdCallSt
  loc_13555EE:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_13555F6:   var_130 = CVar(CLng(1)) 'Long
  loc_1355629:   var_C4 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1355631:   Set var_118 = Me.FGrid
  loc_1355637:   LateIdCallSt
  loc_1355653:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_135565B:   var_130 = CVar(CLng(9)) 'Long
  loc_135568E:   var_C4 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1355696:   Set var_118 = Me.FGrid
  loc_135569C:   LateIdCallSt
  loc_13556B8:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_13556C0:   var_130 = CVar(CLng(&HA)) 'Long
  loc_13556F3:   var_C4 = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_13556FB:   Set var_118 = Me.FGrid
  loc_1355701:   LateIdCallSt
  loc_135571D:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_1355725:   var_130 = CVar(CLng(2)) 'Long
  loc_1355758:   var_C4 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1355760:   Set var_118 = Me.FGrid
  loc_1355766:   LateIdCallSt
  loc_1355782:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_135578A:   var_F4 = CVar(CLng(3)) 'Long
  loc_135578F:   var_14C = "1.000"
  loc_1355799:   Set var_88 = Me.FGrid
  loc_135579F:   LateIdCallSt
  loc_13557AE:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_13557B6:   var_130 = CVar(CLng(4)) 'Long
  loc_13557E9:   var_C4 = CVar(CStr(Me.Fields.Item("ConvRatio").Value)) 'String
  loc_13557F1:   Set var_118 = Me.FGrid
  loc_13557F7:   LateIdCallSt
  loc_1355813:   var_14C = CVar(CLng(var_106)) 'Long
  loc_135581B:   var_16C = CVar(CLng(4)) 'Long
  loc_1355844:   var_18C = CVar(CLng(var_106)) 'Long
  loc_135584C:   var_1AC = CVar(CLng(5)) 'Long
  loc_1355855:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_135585D:   var_F4 = CVar(CLng(3)) 'Long
  loc_1355885:   var_E4 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_135588D:   Set var_118 = Me.FGrid
  loc_1355893:   LateIdCallSt
  loc_13558D7:   var_F4 = CVar(CLng(var_106)) 'Long
  loc_13558DF:   var_14C = CVar(CLng(7)) 'Long
  loc_135590C:   var_104 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_1355914:   Set var_118 = Me.FGrid
  loc_135591A:   LateIdCallSt
  loc_1355938:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_1355940:   var_130 = CVar(CLng(6)) 'Long
  loc_1355973:   var_C4 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_135597B:   Set var_118 = Me.FGrid
  loc_1355981:   LateIdCallSt
  loc_135599D:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_13559A5:   var_F4 = CVar(CLng(7)) 'Long
  loc_13559CE:   var_14C = CVar(CLng(var_106)) 'Long
  loc_13559D6:   var_16C = CVar(CLng(3)) 'Long
  loc_13559FF:   var_1AC = CVar(CLng(var_106)) 'Long
  loc_1355A07:   var_1CC = CVar(CLng(8)) 'Long
  loc_1355A38:   var_1FC = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_1355A40:   Set var_118 = Me.FGrid
  loc_1355A46:   LateIdCallSt
  loc_1355A6D: End If
  loc_1355A6D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E61134
  'Data Table: 4EA028
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E610FF: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E61112: Set var_A8 = Me.TxtGrid
  loc_E61118: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E61120: var_AC.Visible = False
  loc_E6112C: Call Proc_214_51_EF73B0()
  loc_E61131: Exit Sub
  loc_E61132: CExtInstUnk
End Sub

Private Sub FGrid_UnknownEvent_1 'E67AB0
  'Data Table: 4EA028
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67A6C: Set var_88 = Me.TxtGrid
  loc_E67A72: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E67A8C: If (var_8C.Visible = 0) Then
  loc_E67AA5:   Me.FGrid.BackColorSel = CVar(CLng(global_120))
  loc_E67AAD: End If
  loc_E67AAD: Exit Sub
  loc_E67AAE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1FD60
  'Data Table: 4EA028
  loc_E1FD57: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1FD5F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E2E874
  'Data Table: 4EA028
  Dim var_8C As TextBox
  loc_E2E857: Set var_88 = Me.TxtGrid
  loc_E2E85D: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E2E865: var_8C.Visible = False
  loc_E2E871: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '122EEF8
  'Data Table: 4EA028
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As Variant
  loc_122E9E0: On Error Goto loc_122EEF1
  loc_122E9E7: Set var_88 = Me.TopCtrl1
  loc_122E9ED: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_122EA06: If (CStr() = "Browse") Then
  loc_122EA09:   Exit Sub
  loc_122EA0A: End If
  loc_122EA7E: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_122EA97:   Me.FGrid.CellBackColor = CVar(CLng(global_120))
  loc_122EAA7:   var_9C = "+{Tab}"
  loc_122EAAD:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_122EAB7:   Cancel = 0
  loc_122EABD: Else
  loc_122EAC7:   var_B0 = Me.FGrid.Rows
  loc_122EB14:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_122EB2D:     Me.FGrid.CellBackColor = CVar(CLng(global_120))
  loc_122EB3A:     Call Proc_214_56_ED6590(0, var_B0, Cancel)
  loc_122EB3F:   End If
  loc_122EB3F: End If
  loc_122EB45: global_98 = Cancel
  loc_122EB6B: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_122EB8F: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_122EBA5:   var_EC = CLng(Me.FGrid.Col)
  loc_122EBB5:   If (var_EC = CLng(1)) Then
  loc_122EBCB:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122EBE3:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_122EBE8:     var_11C = vbNullString
  loc_122EBF2:     Set var_B4 = Me.FGrid
  loc_122EBF8:     LateIdCallSt
  loc_122EC23:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122EC2B:     var_FC = CVar(CLng(9)) 'Long
  loc_122EC30:     var_11C = vbNullString
  loc_122EC3A:     Set var_A0 = Me.FGrid
  loc_122EC40:     LateIdCallSt
  loc_122EC65:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122EC6D:     var_FC = CVar(CLng(&HA)) 'Long
  loc_122EC72:     var_11C = vbNullString
  loc_122EC7C:     Set var_A0 = Me.FGrid
  loc_122EC82:     LateIdCallSt
  loc_122ECA7:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122ECAF:     var_FC = CVar(CLng(2)) 'Long
  loc_122ECB4:     var_11C = vbNullString
  loc_122ECBE:     Set var_A0 = Me.FGrid
  loc_122ECC4:     LateIdCallSt
  loc_122ECE9:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122ECF1:     var_FC = CVar(CLng(7)) 'Long
  loc_122ECF6:     var_11C = vbNullString
  loc_122ED00:     Set var_A0 = Me.FGrid
  loc_122ED06:     LateIdCallSt
  loc_122ED1B:   Else
  loc_122ED22:     If (var_EC = CLng(3)) Then
  loc_122ED38:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122ED50:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_122ED55:       var_11C = vbNullString
  loc_122ED65:       LateIdCallSt
  loc_122EDD1:       LateIdCallSt
  loc_122EDED:       Call Proc_214_55_F74ECC(Me.FGrid, CVar(CStr(Format(0, "0.00"))), 1, 1, CVar(CLng(8)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CLng(8)))
  loc_122EDF5:     Else
  loc_122EDFC:       If (var_EC = CLng(7)) Then
  loc_122EE0A:         If (global_88 <> "No") Then
  loc_122EE20:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122EE38:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_122EE3D:           var_11C = vbNullString
  loc_122EE4D:           LateIdCallSt
  loc_122EE78:           var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122EEB9:           LateIdCallSt
  loc_122EED5:           Call Proc_214_55_F74ECC(Me.FGrid, CVar(CStr(Format(0, "0.00"))), 1, 1, CVar(CLng(8)), var_FC, Me.FGrid, CVar(CLng(8)))
  loc_122EEDA:         End If
  loc_122EEDA:       End If
  loc_122EEDA:     End If
  loc_122EEDA:   End If
  loc_122EEDA: End If
  loc_122EEE0: If (Cancel = &HD) Then
  loc_122EEE8:   global_96 = 0
  loc_122EEEB: End If
  loc_122EEED: Cancel = 0
  loc_122EEF0: Exit Sub
  loc_122EEF1: ' Referenced from: 122E9E0
  loc_122EEF1: Proc_6_60_E62BC4(Cancel, global_96, var_FC, var_D4, var_FC)
  loc_122EEF6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E14CD8
  'Data Table: 4EA028
  loc_E14CC9: Call FGrid_UnknownEvent_C()
  loc_E14CD3: global_96 = 0
  loc_E14CD6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '10799A0
  'Data Table: 4EA028
  Dim var_AC As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_B4 As String
  Dim var_CE As Integer
  Dim var_B8 As TextBox
  Dim var_C8 As TextBox
  loc_107972B: var_88 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1079735: On Error Goto loc_1079998
  loc_107974B: var_B0 = CLng(Me.FGrid.Col)
  loc_107975B: If (var_B0 = CLng(1)) Then
  loc_1079762:   Set var_C8 = Me.FGrid
  loc_1079786:   var_B4 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_10797B3:   Set var_B8 = var_C8
  loc_10797C5:   Proc_6_63_110ABA4(Me, var_B8, Me.TxtGrid, 0, 0)
  loc_10797ED:   Set var_AC = Me.TxtGrid
  loc_10797F3:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_B4, Asc(var_B4))
  loc_10797FB:   0 = var_B8.Text
  loc_1079814:   If (Len(var_B4) <= 1) Then
  loc_1079823:     Set var_AC = Me.TxtGrid
  loc_1079829:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_B4)
  loc_1079831:     var_CE = var_B8.Text
  loc_1079842:     Set var_BC = Me.TxtGrid
  loc_1079848:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_1079850:     var_C8.Text = var_B4
  loc_1079863:   End If
  loc_107986F:   Set var_AC = Me.TxtGrid
  loc_1079875:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_107988F:   Set var_BC = Me.TxtGrid
  loc_1079895:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_107989D:   var_C8.SelStart = Len(var_B8.Text)
  loc_10798B3: Else
  loc_10798BA:   If Not (var_B0 = CLng(3)) Then
  loc_10798C4:     If (var_B0 = CLng(4)) Then
  loc_10798C7:     End If
  loc_1079905:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_107991A:   Else
  loc_1079921:     If (var_B0 = CLng(7)) Then
  loc_107992F:       If (global_88 <> "No") Then
  loc_1079970:         Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel)
  loc_1079982:       End If
  loc_1079982:     End If
  loc_1079982:   End If
  loc_1079982: End If
  loc_107998C: If (CLng(Cancel) <> &HD) Then
  loc_1079994:   global_96 = &HFF
  loc_1079997: End If
  loc_1079997: Exit Sub
  loc_1079998: ' Referenced from: 1079735
  loc_1079998: Proc_6_60_E62BC4(global_96, 0, &HFF)
  loc_107999D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1057AAC
  'Data Table: 4EA028
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  loc_1057840: On Error Goto loc_1057AA4
  loc_1057847: Set var_8C = Me.TopCtrl1
  loc_105784D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1057866: If (CStr() = "Browse") Then
  loc_1057869:   Exit Sub
  loc_105786A: End If
  loc_1057887: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_105788A:   Exit Sub
  loc_105788B: End If
  loc_105789C: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_10578BE:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10578F8:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_105791A:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1057930:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1057939:         Set var_114 = Me.FGrid
  loc_1057954:       Else
  loc_1057967:         Me.FGrid.Rows = 1
  loc_105798D:         var_9C = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_1057995:         Set var_114 = Me.FGrid
  loc_10579AF:         var_B0 = 1
  loc_10579C2:         Me.FGrid.FixedRows = var_B0
  loc_10579CA:       End If
  loc_10579CA:       Call Proc_214_55_F74ECC(FGrid.DispID_10000, var_9C)
  loc_10579D3:       Set var_8C = Me.TopCtrl1
  loc_10579D9:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(FGrid.DispID_10000)
  loc_10579F2:       If (CStr(var_B0) = "Add") Then
  loc_1057A1A:         For var_120 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_120 'Integer
  loc_1057A24:           var_B0 = CVar(CLng(var_86)) 'Long
  loc_1057A2C:           var_E0 = CVar(CLng(0)) 'Long
  loc_1057A36:           var_9C = CVar(CStr(var_86)) 'String
  loc_1057A3E:           Set var_8C = Me.FGrid
  loc_1057A44:           LateIdCallSt
  loc_1057A55:         Next var_120 'Integer
  loc_1057A5A:       End If
  loc_1057A5A:     End If
  loc_1057A5D:   Else
  loc_1057A7E:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_1057A8E:   End If
  loc_1057A92:   Set var_8C = Me.FGrid
  loc_1057AA3: End If
  loc_1057AA3: Exit Sub
  loc_1057AA4: ' Referenced from: 1057840
  loc_1057AA4: Proc_6_60_E62BC4(FGrid.DispID_8001)
  loc_1057AA9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9D240
  'Data Table: 4EA028
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9D1E3: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9D1FB: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9D223: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9D23E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E448EC
  'Data Table: 4EA028
  Dim var_8C As TextBox
  loc_E448CB: Set var_88 = Me.TxtGrid
  loc_E448D1: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E448D9: var_8C.Visible = False
  loc_E448E5: Call Proc_214_51_EF73B0()
  loc_E448EA: Exit Sub
End Sub

Private Sub Form_Load() '12604F8
  'Data Table: 4EA028
  Dim var_90 As Variant
  Dim var_C0 As String
  Dim var_8C As String
  Dim unk_4EA038 As Connection15
  Dim var_88 As Recordset15
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_118 As Label
  loc_125FF7C: On Error Goto loc_12604F0
  loc_125FF85: Call 0.Method_arg_50 (var_8C)
  loc_125FF91: Set var_90 = Me.LblCaption
  loc_125FF97: var_90.Caption = var_8C
  loc_125FFAF: var_C0 = "Select E.PurChaseGodown,G.Name PurChaseGodownName,E.RateEditableInStockIssue,E.BarCodeFeatureInPurchase,E.NegativeStockAllowYN,DateEditableOnRequisitionYN From Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code WHERE E.LOGSITE_CODE="
  loc_125FFBF: Proc_6_17_EAA2B0(var_B0, MemVar_1F92078, var_C0)
  loc_125FFDE: unk_4EA038.Execute CStr(var_110 & var_B0 & vbNullString), -1, var_90
  loc_125FFE9: Set var_88 = var_90
  loc_1260011: If (var_88.RecordCount > 0) Then
  loc_1260042:   global_100 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("BarCodeFeatureInPurchase")))
  loc_126007D:   global_88 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RateEditableInStockIssue")))
  loc_12600C3:   If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("NegativeStockAllowYN"))) <> "No") Then
  loc_12600CB:     global_108 = &HFF
  loc_12600CE:   End If
  loc_12600E5:   var_118 = var_88.Fields.Item("DateEditableOnRequisitionYN")
  loc_12600FC:   global_92 = Proc_6_38_E68A98(CVar(var_118))
  loc_1260109: End If
  loc_1260113: Set global_60 = New 
  loc_1260125: Me.CursorLocation = 3
  loc_1260135: If (global_100 = "Yes") Then
  loc_1260156:   var_8C = "Select I.Code,I.BarCode,I.Name,I.Unit,I.IssueUnit,CASE WHEN I.LPurRate<=0 THEN I.PurchRate ELSE I.LPurRate END as Rate,I.ConvRatio,I.RestCode From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1260167:   Me.Open CVar(var_8C & "' or LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.BarCode"), CVar(MemVar_1F92044), 3
  loc_1260175: Else
  loc_1260193:   var_8C = "Select I.Code,I.BarCode,I.Name,I.Unit,I.IssueUnit,CASE WHEN I.LPurRate<=0 THEN I.PurchRate ELSE I.LPurRate END as Rate,I.ConvRatio,I.RestCode From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_12601A4:   Me.Open CVar(var_8C & "' or LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.Name"), CVar(MemVar_1F92044), 3
  loc_12601AF: End If
  loc_12601B8: CVarUnk
  loc_12601BD: VerifyVarObj
  loc_12601C3: Set var_90 = Me.DGItem
  loc_12601C9: LateIdStAd
  loc_12601E1: Set global_52 = New 
  loc_12601F3: Me.DGItem.CursorLocation = 3
  loc_126021D: var_B0 = CVar("Select G.Code,G.Name From GodownMast G iNNER join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078 & "')  Order by G.Name") 'String
  loc_1260227: Me.Open var_B0, CVar(MemVar_1F92044), 2
  loc_126023B: CVarUnk
  loc_1260240: VerifyVarObj
  loc_1260246: Set var_90 = Me.DGDepart
  loc_126024C: LateIdStAd
  loc_1260264: Set global_64 = New 
  loc_1260276: Me.DGDepart.CursorLocation = 3
  loc_12602A0: var_B0 = CVar("Select G.Code,G.Name From GodownMast G INNER join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078 & "')  Order by G.Name") 'String
  loc_12602AA: Me.Open var_B0, CVar(MemVar_1F92044), 2
  loc_12602BE: CVarUnk
  loc_12602C3: VerifyVarObj
  loc_12602C9: Set var_90 = Me.DGToDepart
  loc_12602CF: LateIdStAd
  loc_12602F9: Me.DGToDepart.CursorLocation = 3
  loc_126032D: Me.Open CVar("Select Code,Name From ShiftMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "') Order by Name"), CVar(MemVar_1F92044), 2
  loc_1260341: CVarUnk
  loc_1260346: VerifyVarObj
  loc_126034C: Set var_90 = Me.DGShift
  loc_1260352: LateIdStAd
  loc_126036B: If (global_100 = "Yes") Then
  loc_126037A:   Me.TxtBarCode.Visible = True
  loc_126038D:   Set var_90 = Me.Label1
  loc_1260393:   Call 0.Method_Form_Load0 (6, var_118, &HFF, var_90, New, 3, -1)
  loc_126039B:   var_118.Visible = var_90
  loc_12603A7: End If
  loc_12603C3: Me.CursorLocation = 3
  loc_12603ED: var_B0 = CVar("Select Distinct DocID as SearchCode,Site_Code,LogSite_Code From Stock WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' and VTYPE='KSREC' order by  DocID") 'String
  loc_12603F7: Me.Open var_B0, CVar(MemVar_1F92044), 2
  loc_1260408: global_72 = "KSREC"
  loc_1260412: global_76 = "KSISS"
  loc_1260416: Call Proc_214_54_1259D08(3, -1, global_64, 3)
  loc_126043E: Call Proc_214_50_F1DC04(Proc_5_1_100CB50("INI", Me, New, -1), Me)
  loc_1260449: Call Proc_214_49_14F9D04(global_52)
  loc_126045D: Me.LblUser.Left = CDbl(13500)
  loc_1260474: Me.LblUser.Top = CDbl(7800)
  loc_126048B: Me.LblLDt.Top = CDbl(8160)
  loc_12604A2: Me.LblLDt.Left = CDbl(13500)
  loc_12604B1: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_12604C9: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12604DF: Me.LblCurStockStr.BackColor = CLng(MemVar_1F921B0)
  loc_12604EC: Set var_88 = Nothing
  loc_12604EF: Exit Sub
  loc_12604F0: ' Referenced from: 125FF7C
  loc_12604F0: Proc_6_60_E62BC4(3)
  loc_12604F5: Exit Sub
  loc_12604F6: Error
End Sub

Private Sub Form_Resize() 'ED5F08
  'Data Table: 4EA028
  Dim var_8C As Label
  loc_ED5E66: Call 0.Method_arg_50 (var_88)
  loc_ED5E78: Me.LblFormCaption.Caption = var_88
  loc_ED5E91: Me.LblFormCaption.Left = CDbl(0)
  loc_ED5E9D: Set var_A0 = Me.TopCtrl1
  loc_ED5EA3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED5EB0: Set var_8C = Me.TopCtrl1
  loc_ED5EB6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED5ED0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED5EEB: Call 0.Method_arg_100 (var_B8)
  loc_ED5EFD: Me.LblFormCaption.Width = var_B8
  loc_ED5F05: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6CDC8
  'Data Table: 4EA028
  loc_E6CD77: Set global_56 = Nothing
  loc_E6CD89: Set global_52 = Nothing
  loc_E6CD9B: Set global_64 = Nothing
  loc_E6CDAD: Set global_60 = Nothing
  loc_E6CDBF: Set global_68 = Nothing
  loc_E6CDC6: Exit Sub
End Sub

Private Sub Form_Activate() 'E2CC54
  'Data Table: 4EA028
  loc_E2CC30: Set var_88 = Me.TopCtrl1
  loc_E2CC36: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E2CC4B: If (CLng(CInt()) = &H2D) Then
  loc_E2CC4E:   Call TopCtrl1_UnknownEvent_15()
  loc_E2CC53: End If
  loc_E2CC53: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E80064
  'Data Table: 4EA028
  loc_E7FFF8: On Error Goto loc_E8005B
  loc_E80029: If (((global_100 = "Yes") And (Shift = 1)) And (Me.TxtBarCode.Visible = &HFF)) Then
  loc_E80036:   Me.TxtBarCode.SetFocus
  loc_E8003E: End If
  loc_E80052: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8005A: Exit Sub
  loc_E8005B: ' Referenced from: E7FFF8
  loc_E8005B: Proc_6_60_E62BC4(Shift)
  loc_E80060: Exit Sub
End Sub

Private Sub DGShift_UnknownEvent_9 'F40164
  'Data Table: 4EA028
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4005B: Me.DGShift.Visible = False
  loc_F4007A: If (Me.RecordCount > 0) Then
  loc_F400B9:   Set var_B4 = Me.Txt
  loc_F400BF:   Call 0.Method_DGShift_UnknownEvent_90 (CInt(5), var_B8)
  loc_F400C7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F400FA:   var_B0 = Me.Fields.Item("Name")
  loc_F40119:   Set var_B4 = Me.Txt
  loc_F4011F:   Call 0.Method_DGShift_UnknownEvent_90 (CInt(5), var_B8)
  loc_F40127:   var_B8.Text = CStr(var_B0.Value)
  loc_F4013D: End If
  loc_F40148: Set var_A8 = Me.Txt
  loc_F4014E: Call 0.Method_DGShift_UnknownEvent_90 (CInt(5))
  loc_F40156: var_B0.SetFocus
  loc_F40162: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FA2BB4
  'Data Table: 4EA028
  Dim var_8C As Variant
  Dim var_D0 As Variant
  Dim var_D4 As TextBox
  loc_FA2A30: On Error Goto loc_FA2BAB
  loc_FA2A56: Call Proc_214_50_F1DC04(Proc_5_1_100CB50("ADD", Me))
  loc_FA2A61: Call Proc_214_48_F72778(global_56)
  loc_FA2A73: Me.LblVPrefix.Caption = vbNullString
  loc_FA2A8E: Me.FGrid.Rows = 1
  loc_FA2AAB: var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FA2AB3: Set var_D4 = Me.FGrid
  loc_FA2AE2: Me.FGrid.FixedRows = 1
  loc_FA2AFD: Set var_8C = Me.Txt
  loc_FA2B03: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, CStr(MemVar_1F920EC))
  loc_FA2B0B: var_D4.Text = FGrid.DispID_10000
  loc_FA2B25: Set var_8C = Me.Txt
  loc_FA2B2B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4)
  loc_FA2B33: var_D4.SetFocus
  loc_FA2B52: Set var_8C = Me.Txt
  loc_FA2B58: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4)
  loc_FA2B60: var_D4.Text = CStr(MemVar_1F920EC)
  loc_FA2B7B: Call Txt_Validate(CInt(2))
  loc_FA2B8D: Me.LblUser.Caption = vbNullString
  loc_FA2BA2: Me.LblLDt.Caption = vbNullString
  loc_FA2BAA: Exit Sub
  loc_FA2BAB: ' Referenced from: FA2A30
  loc_FA2BAB: Proc_6_60_E62BC4(&HFF)
  loc_FA2BB0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBB4A8
  'Data Table: 4EA028
  loc_EBB414: On Error Goto loc_EBB49F
  loc_EBB44E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EBB45D:   Set var_10C = Me
  loc_EBB474:   Call Proc_214_50_F1DC04(Proc_5_1_100CB50("INI", var_10C))
  loc_EBB47F:   Call Proc_214_49_14F9D04(global_56)
  loc_EBB487: Else
  loc_EBB48D:   Call 0.Method_arg_1E8 (var_10C)
  loc_EBB495:   Call var_10C.SetFocus
  loc_EBB49E: End If
  loc_EBB49E: Exit Sub
  loc_EBB49F: ' Referenced from: EBB414
  loc_EBB49F: Proc_6_60_E62BC4()
  loc_EBB4A4: Exit Sub
  loc_EBB4A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '112B224
  'Data Table: 4EA028
  Dim var_11C As String
  Dim var_120 As String
  Dim var_F4 As Variant
  Dim var_124 As Label
  Dim var_114 As Variant
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_160 As Variant
  Dim var_168 As TextBox
  Dim var_190 As Variant
  Dim var_198 As TextBox
  Dim var_1BC As Variant
  Dim unk_4EA038 As Connection15
  Dim Me As Recordset15
  Dim var_B4 As Variant
  loc_112AEFC: On Error Goto loc_112B1D5
  loc_112AF0D: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_112AF10:   Exit Sub
  loc_112AF11: End If
  loc_112AF48: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_112AF5B:   var_11C = Proc_6_45_EAD428(MemVar_1F92070, 2)
  loc_112AF76:   var_B4 = Space((5 - Len("KSISS")))
  loc_112AF7E:   var_F4 = (CVar(MemVar_1F9206C & var_11C & "KSISS") + "Are You Sure To Delete This ? ")
  loc_112AF97:   var_114 = CVar(Me.LblVPrefix.Caption) 'String
  loc_112AF9A:   var_138 = (var_F4 + var_114)
  loc_112AFAA:   Set var_13C = Me.LblVPrefix
  loc_112AFBD:   var_150 = Space((5 - Len(var_13C.Caption)))
  loc_112AFC5:   var_160 = (var_138 + var_150)
  loc_112AFE2:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_168, var_16C)
  loc_112AFEA:   8 = var_168.Text
  loc_112B001:   var_180 = Space((var_160 - Len(CStr(Val(var_16C)))))
  loc_112B009:   var_190 = ( + var_180)
  loc_112B01B:   Set var_194 = Me.Txt
  loc_112B021:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_198)
  loc_112B03B:   var_1BC = (var_190 + CVar(CStr(Val(var_198.Text))))
  loc_112B08C:   unk_4EA038.BeginTrans var_1C4
  loc_112B0A2:   var_94 = Me.Bookmark 'Variant
  loc_112B0C4:   Set var_124 = Me.Txt
  loc_112B0CA:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_13C, var_11C, "Delete From Stock Where DocID='")
  loc_112B0DB:   var_120 = -1 & var_11C
  loc_112B0EB:   unk_4EA038.Execute MemVar_1F9206C & var_11C & "'", Me.Txt, 
  loc_112B11C:   var_11C = "Delete From Stock Where DocID='" & CStr(var_1BC)
  loc_112B12C:   unk_4EA038.Execute var_11C & "'", var_13C.Text, -1
  loc_112B144:   unk_4EA038.CommitTrans
  loc_112B154:   Me.Requery -1
  loc_112B174:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_112B181:     Me.Bookmark = var_94
  loc_112B189:   Else
  loc_112B19D:     If (Me.EOF = 0) Then
  loc_112B1A6:       Me.MoveLast
  loc_112B1AB:     End If
  loc_112B1AB:   End If
  loc_112B1AB:   Call Proc_214_49_14F9D04(var_124)
  loc_112B1CC:   Proc_5_0_110649C(&HFF, Me)
  loc_112B1D4: End If
  loc_112B1D4: Exit Sub
  loc_112B1D5: ' Referenced from: 112AEFC
  loc_112B1DB: unk_4EA038.RollbackTrans
  loc_112B1E8: Set var_124 = Err()
  loc_112B1EE: Call 0.Method_arg_2C (var_11C, global_56)
  loc_112B20F: MsgBox(CVar(var_11C), &H10, " Deletion Message", var_F4, var_114)
  loc_112B222: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '10FDADC
  'Data Table: 4EA028
  Dim Me As Recordset15
  Dim var_90 As Label
  Dim var_98 As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_114 As Variant
  Dim var_11C As TextBox
  Dim var_144 As Variant
  Dim var_14C As TextBox
  Dim var_170 As Variant
  loc_10FD7F0: On Error Goto loc_10FDAD6
  loc_10FD801: If (Proc_183_55_FE7900(global_56) = &HFF) Then
  loc_10FD804:   Exit Sub
  loc_10FD805: End If
  loc_10FD81C: If (Me.RecordCount > 0) Then
  loc_10FD842:   Call Proc_214_50_F1DC04(Proc_5_1_100CB50("EDIT", Me))
  loc_10FD85A:   Me.LblUser.Caption = vbNullString
  loc_10FD86F:   Me.LblLDt.Caption = vbNullString
  loc_10FD884:   Set var_90 = Me.Txt
  loc_10FD88A:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_10FD892:   var_98.Enabled = False
  loc_10FD8A2:   Set var_90 = Me.TopCtrl1
  loc_10FD8A8:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(global_56)
  loc_10FD8C1:   If (CStr() = "Add") Then
  loc_10FD8CF:     Set var_90 = Me.Txt
  loc_10FD8D5:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2))
  loc_10FD8DD:     var_98.SetFocus
  loc_10FD8E9:   End If
  loc_10FD8ED:   Set var_90 = Me.TopCtrl1
  loc_10FD8F3:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_10FD90C:   If (CStr() = "Edit") Then
  loc_10FD91A:     Set var_90 = Me.Txt
  loc_10FD920:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3))
  loc_10FD928:     var_98.SetFocus
  loc_10FD934:   End If
  loc_10FD942:   Set var_90 = Me.Txt
  loc_10FD948:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_10FD95B:   global_80 = var_98.Text
  loc_10FD994:   var_A8 = Space((5 - Len("KSISS")))
  loc_10FD99C:   var_CC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & "KSISS") + var_A8)
  loc_10FD9B5:   var_E0 = CVar(Me.LblVPrefix.Caption) 'String
  loc_10FD9B8:   var_F0 = (var_CC + var_E0)
  loc_10FD9C8:   Set var_98 = Me.LblVPrefix
  loc_10FD9DB:   var_104 = Space((5 - Len(var_98.Caption)))
  loc_10FD9E3:   var_114 = (var_F0 + var_104)
  loc_10FD9FA:   Set var_118 = Me.Txt
  loc_10FDA00:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_11C, var_120)
  loc_10FDA08:   8 = var_11C.Text
  loc_10FDA1F:   var_134 = Space((var_114 - Len(CStr(Val(var_120)))))
  loc_10FDA27:   var_144 = (var_98 + var_134)
  loc_10FDA39:   Set var_148 = Me.Txt
  loc_10FDA3F:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_14C)
  loc_10FDA59:   var_170 = (var_144 + CVar(CStr(Val(var_14C.Text))))
  loc_10FDA64:   global_84 = CStr(var_170)
  loc_10FDAA4: Else
  loc_10FDAC5:   MsgBox("No Record To Edit.", &H40, "Information", var_CC, var_E0)
  loc_10FDAD5: End If
  loc_10FDAD5: Exit Sub
  loc_10FDAD6: ' Referenced from: 10FD7F0
  loc_10FDAD6: Proc_6_60_E62BC4()
  loc_10FDADB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E169CC
  'Data Table: 4EA028
  loc_E169C1: Me.Global.Unload Me
  loc_E169C9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB24C4
  'Data Table: 4EA028
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB2434: On Error Goto loc_EB24BE
  loc_EB244E: If (Me.RecordCount <= 0) Then
  loc_EB2457:   var_B8 = "Information"
  loc_EB2472:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB2482:   Exit Sub
  loc_EB2483: End If
  loc_EB2486: MemVar_1F920E4 = "Select Distinct S.Docid,S.Vno as VNo,CONVERT(VARCHAR(11),S.VDate) as [Date],D.NAME AS ToLocation From (Stock S left Join GodownMast D on S.GodownCode=D.Code) Left Join ItemMast I ON S.Item=I.Code And I.ItemType='Store' WHERE VTYPE='KSREC'"
  loc_EB2493: Proc_6_126_F1BCC0("700,1200,4500")
  loc_EB24A1: MemVar_1F92120 = Me
  loc_EB24B8: Call 0.Method_arg_2B0 (1)
  loc_EB24BD: Exit Sub
  loc_EB24BE: ' Referenced from: EB2434
  loc_EB24BE: Proc_6_60_E62BC4(var_B8)
  loc_EB24C3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2D858
  'Data Table: 4EA028
  loc_E2D848: Proc_5_0_110649C(&HFF, Me)
  loc_E2D850: Call Proc_214_49_14F9D04(global_56)
  loc_E2D855: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2D978
  'Data Table: 4EA028
  loc_E2D968: Proc_5_0_110649C(&HFF, Me)
  loc_E2D970: Call Proc_214_49_14F9D04(global_56)
  loc_E2D975: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2D9D8
  'Data Table: 4EA028
  loc_E2D9C8: Proc_5_0_110649C(&HFF, Me)
  loc_E2D9D0: Call Proc_214_49_14F9D04(global_56)
  loc_E2D9D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2DA38
  'Data Table: 4EA028
  Dim var_4F01 As Double
  loc_E2DA28: Proc_5_0_110649C(&HFF, Me)
  loc_E2DA30: Call Proc_214_49_14F9D04(global_56)
  loc_E2DA35: Exit Sub
  loc_E2DA36: var_4F01 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '12D7C34
  'Data Table: 4EA028
  Dim Me As Recordset15
  Dim var_C4 As String
  Dim var_C8 As String
  Dim var_F8 As Variant
  Dim var_110 As Variant
  Dim var_150 As Variant
  Dim var_19C As String
  Dim var_1BC As Variant
  Dim var_1F8 As String
  Dim var_218 As Variant
  Dim var_270 As Variant
  Dim var_100 As Variant
  Dim unk_4EA038 As Connection15
  Dim var_A0 As Recordset15
  Dim var_120 As Variant
  Dim var_BE As Integer
  Dim var_D8 As Variant
  Dim var_178 As String
  Dim var_B0 As Recordset15
  Dim var_FC As Fields15
  Dim var_284 As String
  loc_12D7618: On Error Goto loc_12D7C2D
  loc_12D7632: If (Me.RecordCount <= 0) Then
  loc_12D7635:   Exit Sub
  loc_12D7636: End If
  loc_12D7641: Set var_FC = Me.Txt
  loc_12D7647: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0))
  loc_12D7657: Set var_154 = Me.Txt
  loc_12D765D: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_158)
  loc_12D766D: Set var_1C0 = Me.Txt
  loc_12D7673: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_1C4)
  loc_12D7683: Set var_21C = Me.Txt
  loc_12D7689: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_220)
  loc_12D76BF: var_D8 = Space((5 - Len(global_76)))
  loc_12D76C7: var_F8 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & global_76) + var_D8)
  loc_12D76D8: var_110 = CVar(var_100) 'Address
  loc_12D76E7: var_150 = (var_F8 + Mid(var_110, 9, 5))
  loc_12D7716: var_1AC = Space((5 - Len(CStr(Mid(CVar(var_158), 9, 5)))))
  loc_12D771E: var_1BC = (var_150 + var_1AC)
  loc_12D7753: var_208 = Space((8 - Len(CStr(Trim(Right(CVar(var_1C4), 8))))))
  loc_12D775B: var_218 = (var_1BC + var_208)
  loc_12D7786: var_270 = (var_218 + CVar(CStr(Trim(Right(CVar(var_220), 8)))))
  loc_12D77E0: var_C4 = "Select S.Docid,S.VNo,S.VDate,S.IssQty as Qty,S.IssueUnit As Unit,S.Rate,S.Amount,S.GodownCode," & " I.Name as ItemName,G.Name as GodName,SM.Name As Shift,S.Remarks,S.U_Name UserName,S.U_EntDt entdt, S.U_AE"
  loc_12D77E7: var_C8 = var_C4 & " From ((Stock as S Left Join ItemMast as I on S.Item=I.Code And I.ItemType='Store')"
  loc_12D77F5: var_1F8 = var_C8 & " Left Join GodownMast as G on S.GodownCode=G.Code) Left Join ShiftMast as SM on S.ShiftCode=SM.Code" & " Where S.DocID='"
  loc_12D7803: var_88 = var_1F8 & CStr(var_270) & "' Order By S.Sno"
  loc_12D781A: var_C4 = "Select S.GodownCode,G.Name as GodName" & " From Stock as S Left Join GodownMast as G on S.GodownCode=G.Code"
  loc_12D7821: var_19C = var_C4 & " Where S.DocID='"
  loc_12D7832: Set var_FC = Me.Txt
  loc_12D7838: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_100, var_C8)
  loc_12D7840: var_19C = var_100.Text
  loc_12D787B: unk_4EA038.Execute var_100 & var_C8 & "'", var_D8, -1
  loc_12D7886: Set var_B0 = var_FC
  loc_12D7897: If (var_88 = vbNullString) Then
  loc_12D789A:   Exit Sub
  loc_12D789B: End If
  loc_12D78B1: unk_4EA038.Execute var_88, var_D8, -1
  loc_12D78BC: Set var_A0 = var_FC
  loc_12D78CB: var_BC = var_A0.RecordCount
  loc_12D78D9: If (var_BC <= 0) Then
  loc_12D78E2:   Call 0.Method_arg_50 (var_C4, var_FC)
  loc_12D7903:   MsgBox("** No Records Found to Print **", &H40, CVar(var_C4), var_F8, var_110)
  loc_12D7913:   Exit Sub
  loc_12D7914: End If
  loc_12D792A: Set var_FC = var_A0 
  loc_12D7936: var_BE = CreateFieldDefFile(var_FC, MemVar_1F920B4 & "\KitchenStockTr.ttx")
  loc_12D7940: Set var_A0 = var_FC
  loc_12D7946: var_120 = CVar(var_BE) 'Integer
  loc_12D7949: var_9C = var_120 'Variant
  loc_12D7965: var_C4 = MemVar_1F920B4 & "\KitchenStockTr.RPT"
  loc_12D796E: Call 0.Method_arg_1C (var_C4, var_120, var_FC)
  loc_12D7979: MemVar_1F921E4 = var_FC
  loc_12D7994: Call 0.Method_arg_90 (var_FC, var_BC, var_AA, 1)
  loc_12D799C: Call 0.Method_arg_24 (var_BE, &HFF)
  loc_12D79A8: For var_288 =  To CInt(var_BC): var_FC = var_288 'Integer
  loc_12D79C1:   Call 0.Method_arg_90 (var_FC, CLng(var_AA))
  loc_12D79C9:   Call 0.Method_arg_20 (var_100)
  loc_12D79D1:   Call 0.Method_arg_30 (var_C4)
  loc_12D79E7:   var_298 = Ucase(CVar(var_C4)) 'Variant
  loc_12D7A17:   If (var_298 = Ucase("Title")) Then
  loc_12D7A2D:     Call 0.Method_arg_90 (var_FC, CLng(var_AA))
  loc_12D7A35:     Call 0.Method_arg_20 (var_100)
  loc_12D7A3D:     Call 0.Method_arg_38 ("'Kitchen Stock Transfer'")
  loc_12D7A4C:   Else
  loc_12D7A6E:     If (var_298 = Ucase("ToDepartment")) Then
  loc_12D7AC1:       Call 0.Method_arg_90 (var_154, CLng(var_AA))
  loc_12D7AC9:       Call 0.Method_arg_20 (var_158)
  loc_12D7AD1:       Call 0.Method_arg_38 (CStr("'" & var_B0.Fields.Item("GodName").Value & "'"))
  loc_12D7AF0:     Else
  loc_12D7B12:       If (var_298 = Ucase("ForShift")) Then
  loc_12D7B15:         var_178 = "'"
  loc_12D7B2C:         var_FC = var_A0.Fields
  loc_12D7B48:         var_284 = "'"
  loc_12D7B51:         var_C4 = CStr(var_178 & var_FC.Item("Shift").Value & var_284)
  loc_12D7B65:         Call 0.Method_arg_90 (var_154, CLng(var_AA))
  loc_12D7B6D:         Call 0.Method_arg_20 (var_158)
  loc_12D7B75:         Call 0.Method_arg_38 (var_C4)
  loc_12D7B91:       End If
  loc_12D7B91:     End If
  loc_12D7B91:   End If
  loc_12D7B94: Next var_288 'Integer
  loc_12D7BB2: Call 0.Method_arg_64 (var_FC, CVar(var_A0))
  loc_12D7BBA: Call 0.Method_arg_2C (var_178)
  loc_12D7BC8: Call 0.Method_arg_150 (var_284)
  loc_12D7BD3: Call 0.Method_arg_50 (var_C4)
  loc_12D7BDD: Set var_100 = Nothing
  loc_12D7BF7: Set var_FC = MemVar_1F921E4 
  loc_12D7C03: Proc_6_99_1483714(var_FC, 0, var_C4)
  loc_12D7C0E: MemVar_1F921E4 = var_FC
  loc_12D7C21: Set var_A0 = Nothing
  loc_12D7C29: Set var_B0 = Nothing
  loc_12D7C2C: Exit Sub
  loc_12D7C2D: ' Referenced from: 12D7618
  loc_12D7C2D: Proc_6_60_E62BC4(&HFF)
  loc_12D7C32: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E5612C
  'Data Table: 4EA028
  Dim Me As Recordset15
  loc_E560F3: Me.Requery -1
  loc_E56103: Me.Requery -1
  loc_E56113: Me.Requery -1
  loc_E56123: Me.Requery -1
  loc_E56128: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1698050
  'Data Table: 4EA028
  Dim var_96 As Integer
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A0 As MSHFlexGrid
  Dim var_FC As Variant
  Dim var_AC As String
  Dim var_10C As Variant
  Dim var_A4 As Variant
  Dim var_8E As Integer
  Dim unk_4EA038 As Connection15
  Dim var_12C As Variant
  Dim var_11C As Variant
  Dim var_170 As Variant
  Dim var_88C As Double
  Dim var_138 As Variant
  Dim var_894 As Double
  Dim var_1E8 As TextBox
  Dim var_1F8 As MSHFlexGrid
  Dim var_89C As Double
  Dim var_268 As TextBox
  Dim var_27C As TextBox
  Dim var_298 As Variant
  Dim var_2B8 As Variant
  Dim var_2EC As Variant
  Dim var_30C As Variant
  Dim var_14C As Variant
  Dim var_340 As Variant
  Dim var_360 As Variant
  Dim var_15C As Variant
  Dim var_8B4 As Double
  Dim var_394 As Variant
  Dim var_3D8 As Variant
  Dim var_438 As Variant
  Dim var_8BC As Double
  Dim var_48C As MSHFlexGrid
  Dim var_49C As Variant
  Dim var_528 As Variant
  Dim var_5B8 As Variant
  Dim var_8C4 As Double
  Dim var_670 As Variant
  Dim var_694 As Variant
  Dim var_758 As MSHFlexGrid
  Dim var_768 As Variant
  Dim var_7B0 As TextBox
  Dim var_1B4 As String
  Dim var_1D0 As String
  Dim var_1D8 As String
  Dim var_260 As String
  Dim var_274 As String
  Dim var_330 As String
  Dim var_380 As String
  Dim var_4A8 As String
  Dim var_4AC As String
  Dim var_500 As Variant
  Dim var_610 As Variant
  Dim var_640 As Variant
  Dim var_6F4 As Variant
  Dim var_714 As Variant
  Dim var_778 As Variant
  Dim var_85C As Variant
  Dim var_504 As MSHFlexGrid
  Dim var_7AC As TextBox
  Dim var_4C0 As Variant
  Dim var_578 As Variant
  Dim var_82C As Variant
  Dim var_88 As Recordset15
  Dim var_A8 As Fields15
  Dim var_1E4 As Fields15
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_169699C: On Error Goto loc_1698033
  loc_16969A1: var_96 = 0
  loc_16969AF: Set var_A0 = Me.Txt
  loc_16969B5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_16969DE: If (Proc_6_27_EA565C(var_A4, "Voucher Number") = 0) Then
  loc_16969E1:   Exit Sub
  loc_16969E2: End If
  loc_16969ED: Set var_A0 = Me.Txt
  loc_16969F3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_1696A1C: If (Proc_6_27_EA565C(var_A4, "Voucher Date") = 0) Then
  loc_1696A1F:   Exit Sub
  loc_1696A20: End If
  loc_1696A2B: Set var_A0 = Me.Txt
  loc_1696A31: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_1696A5A: If (Proc_6_27_EA565C(var_A4, "From Location") = 0) Then
  loc_1696A5D:   Exit Sub
  loc_1696A5E: End If
  loc_1696A69: Set var_A0 = Me.Txt
  loc_1696A6F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_1696A98: If (Proc_6_27_EA565C(var_A4, "To Location") = 0) Then
  loc_1696A9B:   Exit Sub
  loc_1696A9C: End If
  loc_1696A9C: var_BC = 1
  loc_1696AC2: var_AC = CStr(Me.FGrid.TextMatrix))
  loc_1696AD3: If (var_AC = vbNullString) Then
  loc_1696ADC:   Call 0.Method_arg_50 (var_AC, CVar(CLng(1)))
  loc_1696AFD:   MsgBox("Please Fill Item Detail", &H40, CVar(var_AC), var_11C, var_12C)
  loc_1696B20:   Me.FGrid.Row = 1
  loc_1696B2C:   Set var_A0 = Me.FGrid
  loc_1696B3D:   Exit Sub
  loc_1696B3E: End If
  loc_1696B47: If (global_108 = 0) Then
  loc_1696B4E:   Set var_138 = Me.FGrid
  loc_1696B5F:   Set var_A0 = Me.Txt
  loc_1696B65:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4, var_AC)
  loc_1696B6D:   FGrid.DispID_8001 = var_A4.Tag
  loc_1696BA7:   If (Proc_96_28_F21610(var_138, 9, 3, MemVar_1F92070) = &HFF) Then
  loc_1696BB0:     Call 0.Method_arg_50 (var_AC, var_AC)
  loc_1696BD1:     MsgBox("Can't Proceed With Negative Stock", &H10, CVar(var_AC), var_11C, var_12C)
  loc_1696BF4:     Me.FGrid.Row = 1
  loc_1696C0F:     Me.FGrid.Col = 1
  loc_1696C1B:     Set var_A0 = Me.FGrid
  loc_1696C2C:     Exit Sub
  loc_1696C2D:   End If
  loc_1696C2D: End If
  loc_1696C3B: unk_4EA038.BeginTrans var_13C
  loc_1696C44: Set var_A0 = Me.TopCtrl1
  loc_1696C4A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_1696C52: var_AC = CStr(FGrid.DispID_8001)
  loc_1696C63: If (var_AC = "Add") Then
  loc_1696C75:   Call Proc_214_52_115B4B8(MemVar_1F92044, var_AC)
  loc_1696C80:   global_80 = var_AC
  loc_1696C8D:   Call Proc_214_53_110C450(MemVar_1F92044, var_AC)
  loc_1696C98:   global_84 = var_AC
  loc_1696CAA:   If (global_80 <> global_80) Then
  loc_1696CB8:     var_BC = global_80
  loc_1696CC0:     var_FC = Right(var_BC, 8)
  loc_1696CD6:     Call 0.Method_arg_50 (var_AC, var_BC)
  loc_1696CF8:     MsgBox("Entry will be saved with New Voucher No. " & Trim(var_FC), 0, CVar(var_AC), var_14C, var_15C)
  loc_1696D0C:   End If
  loc_1696D0F: Else
  loc_1696D36:   unk_4EA038.Execute "Delete From Stock Where DocID='" & global_80 & "'", var_FC, -1
  loc_1696D6F:   unk_4EA038.Execute "Delete From Stock Where DocID='" & global_84 & "'", var_FC, -1
  loc_1696D81: End If
  loc_1696DA6: For var_160 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_98 = var_160 'Integer
  loc_1696DB0:   var_BC = CVar(CLng(var_98)) 'Long
  loc_1696DB8:   var_DC = CVar(CLng(0)) 'Long
  loc_1696DC2:   var_FC = CVar(CStr(var_98)) 'String
  loc_1696DCA:   Set var_A0 = Me.FGrid
  loc_1696DD0:   LateIdCallSt
  loc_1696DE1: Next var_160 'Integer
  loc_1696E0B: For var_174 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_98 = var_174 'Integer
  loc_1696E15:   var_BC = CVar(CLng(var_98)) 'Long
  loc_1696E1D:   var_DC = CVar(CLng(3)) 'Long
  loc_1696E48:   var_170 = CVar(CLng(var_98)) 'Long
  loc_1696E88:   If (CVar(CLng(9)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_1696EB9:     var_88C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1696EDC:     Set var_A8 = Me.Txt
  loc_1696EE2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_138, var_1D4, var_88C, CVar(CLng(0)), CVar(CLng(var_98)))
  loc_1696EEA:     var_170 = var_138.Text
  loc_1696EF7:     var_894 = Val(var_1D4)
  loc_1696F08:     Set var_1E4 = Me.Txt
  loc_1696F0E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1E8, var_1EC, var_894)
  loc_1696F16:     (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) = var_1E8.Text
  loc_1696F1F:     var_170 = CVar(CLng(var_98)) 'Long
  loc_1696F36:     var_10C = Me.FGrid.TextMatrix)
  loc_1696F70:     var_89C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1696F81:     Set var_264 = Me.Txt
  loc_1696F87:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_268, var_26C, var_89C, CVar(CLng(0)), CVar(CLng(var_98)))
  loc_1696FA2:     Set var_278 = Me.Txt
  loc_1696FA8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_27C, var_280, CVar(CLng(9)))
  loc_1696FB0:     var_170 = var_27C.Tag
  loc_1696FB9:     var_298 = CVar(CLng(var_98)) 'Long
  loc_1696FC1:     var_2B8 = CVar(CLng(7)) 'Long
  loc_1696FEA:     var_2EC = CVar(CLng(var_98)) 'Long
  loc_1696FF2:     var_30C = CVar(CLng(3)) 'Long
  loc_169701B:     var_340 = CVar(CLng(var_98)) 'Long
  loc_1697023:     var_360 = CVar(CLng(3)) 'Long
  loc_169704C:     var_394 = CVar(CLng(var_98)) 'Long
  loc_1697063:     var_3D8 = Me.FGrid.TextMatrix)
  loc_169709D:     var_8BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16970BB:     var_49C = Me.FGrid.TextMatrix)
  loc_16970CA:     Proc_6_104_ED5D18(var_4C0, var_49C, CVar(CLng(4)), CVar(CLng(var_98)), var_8BC, CVar(CLng(8)), CVar(CLng(var_98)), var_3D8)
  loc_16970D3:     Set var_504 = Me.TopCtrl1
  loc_16970D9:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(2)))
  loc_1697114:     var_5B8 = CVar(CLng(var_98)) 'Long
  loc_169713E:     var_8C4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_169714D:     var_670 = CVar(CLng(6)) 'Long
  loc_169715C:     var_694 = Me.FGrid.TextMatrix)
  loc_1697183:     var_768 = Me.FGrid.TextMatrix)
  loc_169719D:     Set var_7AC = Me.Txt
  loc_16971A3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_7B0, var_7B4, var_768, CVar(CLng(&HA)), CVar(CLng(var_98)), var_694)
  loc_16971AB:     var_670 = var_7B0.Tag
  loc_16971BB:     Set var_7F8 = Me.Txt
  loc_16971C1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_7FC, CVar(CLng(var_98)), var_8C4)
  loc_16971D0:     var_81C = Trim(CVar(var_7FC))
  loc_16971DB:     Proc_6_17_EAA2B0(var_82C, var_81C, CVar(CLng(5)))
  loc_16971F4:     var_AC = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,COntraDocId,ContraSno,DepartCode,GodownCode,Rate,RecdQty,AccQty,RecdUnit,Amount,ConvRatio,U_Name,U_EntDt,U_AE,QtyRec,Unit,LogSite_Code,ItemRestCode,ShiftCode,Remarks)" & " VALUES ('"
  loc_169723B:     var_1D0 = var_AC & global_80 & "'," & CStr(var_88C) & ",'" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "'," & "'KSREC'"
  loc_1697292:     var_260 = var_1D0 & "," & CStr(var_894) & ",'" & var_1EC & "','" & CStr(var_268.Tag) & "','" & global_84 & "'," & CStr(var_89C)
  loc_16972D4:     var_330 = var_260 & ",'" & var_26C & "','" & var_280 & "'," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CStr(Val(CStr(Me.FGrid.TextMatrix))))
  loc_169731E:     var_4A8 = var_330 & "," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CStr(var_3D8) & "'," & CStr(var_8BC) & ",'" & CStr(var_49C)
  loc_1697325:     var_4AC = var_4A8 & "','"
  loc_1697342:     var_500 = CVar(var_4AC & MemVar_1F920C8 & "',") & var_4C0 & ",'" 
  loc_1697384:     var_6F4 = var_500 & IIf((CStr(var_514) = "Add"), "A", "E") & "'," & CVar(var_8C4) & ",'" & CVar(CStr(var_694)) & "','" & CVar(MemVar_1F92078) 
  loc_16973C4:     var_85C = var_6F4 & "','" & CVar(CStr(var_768)) & "','" & CVar(var_7B4) & "'," & var_82C & ")" 
  loc_16973D2:     unk_4EA038.Execute CStr(var_85C), var_880, -1
  loc_16974E8:     var_BC = CVar(CLng(var_98)) 'Long
  loc_1697512:     var_88C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_169751C:     Set var_A4 = Me.LblVPrefix
  loc_1697535:     Set var_A8 = Me.Txt
  loc_169753B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_138, var_1D4, var_88C, CVar(CLng(0)))
  loc_1697543:     var_BC = var_138.Text
  loc_1697550:     var_894 = Val(var_1D4)
  loc_1697561:     Set var_1E4 = Me.Txt
  loc_1697567:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1E8, var_1EC, var_894)
  loc_169756F:     var_884 = var_1E8.Text
  loc_1697578:     var_170 = CVar(CLng(var_98)) 'Long
  loc_169758F:     var_10C = Me.FGrid.TextMatrix)
  loc_16975B6:     var_11C = Me.FGrid.TextMatrix)
  loc_16975C9:     var_89C = Val(CStr(var_11C))
  loc_16975DA:     Set var_264 = Me.Txt
  loc_16975E0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_268, var_26C, var_89C, CVar(CLng(0)), CVar(CLng(var_98)))
  loc_16975E8:     var_10C = var_268.Tag
  loc_16975FB:     Set var_278 = Me.Txt
  loc_1697601:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_27C, var_280, CVar(CLng(9)))
  loc_1697609:     var_170 = var_27C.Tag
  loc_1697612:     var_298 = CVar(CLng(var_98)) 'Long
  loc_169761A:     var_2B8 = CVar(CLng(7)) 'Long
  loc_1697629:     var_12C = Me.FGrid.TextMatrix)
  loc_1697643:     var_2EC = CVar(CLng(var_98)) 'Long
  loc_169764B:     var_30C = CVar(CLng(3)) 'Long
  loc_1697674:     var_340 = CVar(CLng(var_98)) 'Long
  loc_169768B:     var_15C = Me.FGrid.TextMatrix)
  loc_16976C5:     var_8B4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16976E3:     var_438 = Me.FGrid.TextMatrix)
  loc_16976F2:     Proc_6_104_ED5D18(var_49C, var_438, CVar(CLng(4)), CVar(CLng(var_98)), var_8B4, CVar(CLng(8)), CVar(CLng(var_98)), var_15C)
  loc_16976FB:     Set var_48C = Me.TopCtrl1
  loc_1697701:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(2)))
  loc_169773C:     var_528 = CVar(CLng(var_98)) 'Long
  loc_1697766:     var_8BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1697775:     var_610 = CVar(CLng(6)) 'Long
  loc_1697784:     var_640 = Me.FGrid.TextMatrix)
  loc_16977AB:     var_714 = Me.FGrid.TextMatrix)
  loc_16977C5:     Set var_758 = Me.Txt
  loc_16977CB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_7AC, var_4AC, var_714, CVar(CLng(&HA)), CVar(CLng(var_98)), var_640)
  loc_16977D3:     var_610 = var_7AC.Tag
  loc_16977E3:     Set var_7B0 = Me.Txt
  loc_16977E9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_7F8, CVar(CLng(var_98)), var_8BC)
  loc_1697803:     Proc_6_17_EAA2B0(var_81C, Trim(CVar(var_7F8)), CVar(CLng(5)))
  loc_169781C:     var_AC = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,ContraDocId,ContraSno,DepartCode,GodownCode,Rate,IssQty,IssueUnit,Amount,ConvRatio,U_Name,U_EntDt,U_AE,QtyIss,Unit,LogSite_Code,ItemRestCode,ShiftCode,Remarks) " & " VALUES ('"
  loc_169786A:     var_1D8 = var_AC & global_84 & "'," & CStr(var_88C) & ",'" & var_A4.Caption & "','" & MemVar_1F92070 & "'," & "'KSISS'" & ","
  loc_16978C8:     var_274 = var_1D8 & CStr(var_894) & ",'" & var_1EC & "','" & CStr(var_10C) & "','" & global_80 & "'," & CStr(var_89C) & ",'" & var_26C
  loc_169790E:     var_380 = var_274 & "','" & var_280 & "'," & CStr(Val(CStr(var_12C))) & "," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CStr(var_15C)
  loc_169795E:     var_578 = CVar(var_380 & "'," & CStr(var_8B4) & ",'" & CStr(var_438) & "','" & MemVar_1F920C8 & "',") & var_49C & ",'" & IIf((CStr(var_500) = "Add"), "A", "E") 
  loc_16979AD:     var_778 = var_578 & "'," & CVar(var_8BC) & ",'" & CVar(CStr(var_640)) & "','" & CVar(MemVar_1F92078) & "','" & CVar(CStr(var_714)) 
  loc_16979E7:     unk_4EA038.Execute CStr(var_778 & "','" & CVar(var_4AC) & "'," & var_81C & ")"), var_85C, -1
  loc_1697AEF:     var_96 = &HFF
  loc_1697AF2:   End If
  loc_1697AF5: Next var_174 'Integer
  loc_1697B00: If (var_96 = 0) Then
  loc_1697B1C:   MsgBox("Nil Details Can't Be Saved", &H40, var_10C, var_11C, var_12C)
  loc_1697B32:   unk_4EA038.RollbackTrans
  loc_1697B37:   Exit Sub
  loc_1697B38: End If
  loc_1697B3C: Set var_A0 = Me.TopCtrl1
  loc_1697B42: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1697B5B: If (CStr() = "Add") Then
  loc_1697B62:   Set var_88 = New 
  loc_1697B6D:   Me.Recordset15.CursorLocation = 3
  loc_1697B80:   Set var_A0 = Me.Txt
  loc_1697B86:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_1697B96:   var_FC = CVar(var_A4.Text) 'String
  loc_1697B9C:   Proc_6_7_F25D88(var_10C)
  loc_1697BBF:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1697BE5:   var_11C = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_72 & "' And VP.Date_From<=") 'String
  loc_1697BFC:   var_88.Open var_11C & var_10C & " Order By VP.Date_From DESC", CVar(MemVar_1F92044), 2
  loc_1697C36:   If (var_88.RecordCount > 0) Then
  loc_1697C47:     Set var_A0 = Me.Txt
  loc_1697C4D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4, var_AC)
  loc_1697C55:     3 = var_A4.Text
  loc_1697C62:     var_88C = Val(var_AC)
  loc_1697CB2:     Proc_6_7_F25D88(var_15C, CVar(var_88.Fields.Item("Date_From")), var_88C)
  loc_1697CE5:     var_1B4 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_88C) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1697CF3:     var_10C = CVar(var_1B4 & MemVar_1F92078 & "') and V_Type='") 'String
  loc_1697D17:     unk_4EA038.Execute CStr(var_10C & var_88.Fields.Item("V_Type").Value & "' and Date_From=" & var_15C), var_438, -1
  loc_1697D51:   End If
  loc_1697D55:   Set var_8C = New 
  loc_1697D60:   var_8C.CursorLocation = 3
  loc_1697D73:   Set var_A0 = Me.Txt
  loc_1697D79:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4, var_1B4)
  loc_1697D81:   var_1F8 = var_A4.Text
  loc_1697D8F:   Proc_6_7_F25D88(var_10C, CVar(var_1B4))
  loc_1697DB2:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1697DD8:   var_11C = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_76 & "' And VP.Date_From<=") 'String
  loc_1697DEF:   var_8C.Open var_11C & var_10C & " Order By VP.Date_From DESC", CVar(MemVar_1F92044), 2
  loc_1697E29:   If (var_8C.RecordCount > 0) Then
  loc_1697E3A:     Set var_A0 = Me.Txt
  loc_1697E40:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4, var_AC, 3)
  loc_1697E48:     -1 = var_A4.Text
  loc_1697E55:     var_88C = Val(var_AC)
  loc_1697E5E:     var_BC = "V_Type"
  loc_1697E7A:     var_FC = var_8C.Fields.Item(var_BC).Value
  loc_1697EA5:     Proc_6_7_F25D88(var_15C, CVar(var_8C.Fields.Item("Date_From")), var_88C)
  loc_1697ED8:     var_1B4 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_88C) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1697F0A:     unk_4EA038.Execute CStr(CVar(var_1B4 & MemVar_1F92078 & "') and V_Type='") & var_FC & "' and Date_From=" & var_15C), var_438, -1
  loc_1697F44:   End If
  loc_1697F44: End If
  loc_1697F4A: unk_4EA038.CommitTrans
  loc_1697F51: var_8E = 0
  loc_1697F62: Set var_A0 = Me.Txt
  loc_1697F68: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, var_8E)
  loc_1697F70: var_1F8 = var_A4.Text
  loc_1697F8D: Me.Requery -1
  loc_1697FB7: Me.Find "SearchCode ='" & "SearchCode ='" & var_AC & "'", 0, 1
  loc_1697FC3: Call Proc_214_49_14F9D04(var_BC, -1)
  loc_1697FCC: Set var_A0 = Me.TopCtrl1
  loc_1697FD2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_FC)
  loc_1697FEB: If (CStr() = "Add") Then
  loc_1697FEE:   Call TopCtrl1_UnknownEvent_A()
  loc_1697FF3:   Exit Sub
  loc_1697FF4: End If
  loc_1698017: Call Proc_214_50_F1DC04(Proc_5_1_100CB50("INI", Me))
  loc_1698027: Set var_88 = Nothing
  loc_169802F: Set var_8C = Nothing
  loc_1698032: Exit Sub
  loc_1698033: ' Referenced from: 169699C
  loc_1698039: If (var_8E = &HFF) Then
  loc_1698042:   unk_4EA038.RollbackTrans
  loc_1698047: End If
  loc_1698047: Proc_6_60_E62BC4(global_56)
  loc_169804C: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F406E4
  'Data Table: 4EA028
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F405DB: Me.DGDepart.Visible = False
  loc_F405FA: If (Me.RecordCount > 0) Then
  loc_F40639:   Set var_B4 = Me.Txt
  loc_F4063F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3), var_B8)
  loc_F40647:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4067A:   var_B0 = Me.Fields.Item("Name")
  loc_F40699:   Set var_B4 = Me.Txt
  loc_F4069F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3), var_B8)
  loc_F406A7:   var_B8.Text = CStr(var_B0.Value)
  loc_F406BD: End If
  loc_F406C8: Set var_A8 = Me.Txt
  loc_F406CE: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3))
  loc_F406D6: var_B0.SetFocus
  loc_F406E2: Exit Sub
End Sub

Private Sub DGToDepart_UnknownEvent_9 'F40424
  'Data Table: 4EA028
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4031B: Me.DGToDepart.Visible = False
  loc_F4033A: If (Me.RecordCount > 0) Then
  loc_F40379:   Set var_B4 = Me.Txt
  loc_F4037F:   Call 0.Method_DGToDepart_UnknownEvent_90 (CInt(4), var_B8)
  loc_F40387:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F403BA:   var_B0 = Me.Fields.Item("Name")
  loc_F403D9:   Set var_B4 = Me.Txt
  loc_F403DF:   Call 0.Method_DGToDepart_UnknownEvent_90 (CInt(4), var_B8)
  loc_F403E7:   var_B8.Text = CStr(var_B0.Value)
  loc_F403FD: End If
  loc_F40408: Set var_A8 = Me.Txt
  loc_F4040E: Call 0.Method_DGToDepart_UnknownEvent_90 (CInt(4))
  loc_F40416: var_B0.SetFocus
  loc_F40422: Exit Sub
End Sub

Private Sub CmdLastEntry_UnknownEvent_9 '12796A0
  'Data Table: 4EA028
  Dim var_9C As String
  Dim var_AC As Variant
  Dim var_110 As TextBox
  Dim var_120 As String
  Dim var_12C As String
  Dim var_124 As TextBox
  Dim var_140 As String
  Dim var_138 As TextBox
  Dim unk_4EA038 As Connection15
  Dim var_118 As Recordset15
  Dim var_88 As Variant
  Dim var_11A As Integer
  Dim var_98 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  loc_1279128: On Error Goto loc_1279697
  loc_127912F: Set var_88 = Me.TopCtrl1
  loc_1279135: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_127914E: If (CStr() <> "Add") Then
  loc_1279172:   MsgBox("Only In Add Mode.", &H40, "Fill With Last Entry", var_EC, var_10C)
  loc_1279182:   Exit Sub
  loc_1279183: End If
  loc_127918E: Set var_88 = Me.Txt
  loc_1279194: Call 0.Method_CmdLastEntry_UnknownEvent_90 (CInt(1))
  loc_12791BD: If (Proc_6_27_EA565C(var_110, "Voucher Number") = 0) Then
  loc_12791C0:   Exit Sub
  loc_12791C1: End If
  loc_12791CC: Set var_88 = Me.Txt
  loc_12791D2: Call 0.Method_CmdLastEntry_UnknownEvent_90 (CInt(2), var_110)
  loc_12791FB: If (Proc_6_27_EA565C(var_110, "Voucher Date") = 0) Then
  loc_12791FE:   Exit Sub
  loc_12791FF: End If
  loc_127920A: Set var_88 = Me.Txt
  loc_1279210: Call 0.Method_CmdLastEntry_UnknownEvent_90 (CInt(3), var_110)
  loc_1279239: If (Proc_6_27_EA565C(var_110, "From Location") = 0) Then
  loc_127923C:   Exit Sub
  loc_127923D: End If
  loc_1279248: Set var_88 = Me.Txt
  loc_127924E: Call 0.Method_CmdLastEntry_UnknownEvent_90 (CInt(4), var_110)
  loc_1279256: var_9C = "To Location"
  loc_1279277: If (Proc_6_27_EA565C(var_110, var_9C) = 0) Then
  loc_127927A:   Exit Sub
  loc_127927B: End If
  loc_1279299: Set var_88 = Me.Txt
  loc_127929F: Call 0.Method_CmdLastEntry_UnknownEvent_90 (CInt(4), var_110, var_9C, "Select Distinct SH.Docid,SH.SNo,SH.Vtype,SH.Vno,SH.Vdate,SH.VPrefix,I.Name,I.Code,I.Unit,CASE WHEN I.LPurRate<=0 THEN I.PurchRate ELSE I.LPurRate END as Rate,I.ConvRatio,I.IssueUnit,I.RestCode From Stock SH Left Join ItemMast I On I.Code=SH.Item And I.ItemType='Store' where SH.VType='KSREC' And GoDownCode='")
  loc_12792A7: var_98 = var_110.Tag
  loc_12792B0: var_120 = -1 & var_9C
  loc_12792B7: var_12C = var_120 & "' And Vno In (Select Max(S.Vno) From Stock S Inner Join Stock S1 On S.ContraDocId=S1.DocId And S.ContraSNo=S1.SNo Where S.VType='KSREC' And S.GoDownCode='"
  loc_12792C8: Set var_114 = Me.Txt
  loc_12792CE: Call 0.Method_CmdLastEntry_UnknownEvent_90 (CInt(4), var_124, var_128)
  loc_12792D6: var_12C = var_124.Tag
  loc_12792E6: var_140 = var_14C & var_128 & "' And S1.GoDownCode='"
  loc_12792F7: Set var_134 = Me.Txt
  loc_12792FD: Call 0.Method_CmdLastEntry_UnknownEvent_90 (CInt(3), var_138, var_13C)
  loc_1279305: var_140 = var_138.Tag
  loc_127931E: unk_4EA038.Execute var_110 & var_13C & "') Order By SH.SNo", , 
  loc_1279329: Set var_118 = var_14C
  loc_1279369: If (var_118.RecordCount > 0) Then
  loc_127937F:   Me.FGrid.Rows = 1
  loc_1279389:   var_11A = 1
  loc_127938C:   ' Referenced from: 1279670
  loc_127939B:   If Not(var_118.EOF) Then
  loc_127939E:     var_AC = vbNullString
  loc_12793A8:     Set var_88 = Me.FGrid
  loc_12793BD:     Set var_158 = Me.FGrid
  loc_12793F9:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("SNo")), CVar(CLng(0)), CVar(CLng(var_11A)))) 'String
  loc_1279400:     LateIdCallSt
  loc_127944B:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("Name")), CVar(CLng(1)), CVar(CLng(var_11A)), var_158)) 'String
  loc_1279452:     LateIdCallSt
  loc_127949D:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("Code")), CVar(CLng(9)), CVar(CLng(var_11A)), var_158, var_CC)) 'String
  loc_12794A4:     LateIdCallSt
  loc_12794EF:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("RestCode")), CVar(CLng(&HA)), CVar(CLng(var_11A)), var_158, var_CC)) 'String
  loc_12794F6:     LateIdCallSt
  loc_1279541:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("Unit")), CVar(CLng(2)), CVar(CLng(var_11A)), var_158, var_CC)) 'String
  loc_1279548:     LateIdCallSt
  loc_1279591:     Proc_6_47_EF59D0(var_CC, CVar(var_118.Fields.Item("Rate")), CVar(CLng(7)), CVar(CLng(var_11A)), var_158)
  loc_12795A1:     LateIdCallSt
  loc_12795EE:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("ConvRatio")), CVar(CLng(4)), CVar(CLng(var_11A)), var_158, CVar(CStr(var_CC)))) 'String
  loc_12795F5:     LateIdCallSt
  loc_1279640:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("IssueUnit")), CVar(CLng(6)), CVar(CLng(var_11A)), var_158, var_CC)) 'String
  loc_1279647:     LateIdCallSt
  loc_127965B:     Set var_158 = Nothing 
  loc_1279665:     var_11A = (var_11A + 1)
  loc_127966B:     var_118.MoveNext
  loc_1279670:     GoTo loc_127938C
  loc_1279673:   End If
  loc_1279686:   Me.FGrid.FixedRows = 1
  loc_127968E: End If
  loc_1279693: Set var_118 = Nothing
  loc_1279696: Exit Sub
  loc_1279697: ' Referenced from: 1279128
  loc_1279697: Proc_6_60_E62BC4(var_11A, var_158, var_CC, var_CC)
  loc_127969C: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E96440
  'Data Table: 4EA028
  Dim Me As Recordset15
  loc_E963CE: On Error Goto loc_E96437
  loc_E963D7: Me.MoveFirst
  loc_E96401: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96429: Proc_5_0_110649C(&HFF, Me, global_56)
  loc_E96431: Call Proc_214_49_14F9D04(0)
  loc_E96436: Exit Sub
  loc_E96437: ' Referenced from: E963CE
  loc_E96437: Proc_6_60_E62BC4(var_A0)
  loc_E9643C: Exit Sub
End Sub

Public Sub Proc_214_47_149B8E0(arg_C, arg_10) '149B8E0
  'Data Table: 4EA028
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_11C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_12C As Variant
  Dim var_140 As Variant
  Dim var_B8 As String
  Dim var_174 As String
  Dim unk_4EA038 As Connection15
  Dim var_8C As Recordset15
  Dim var_188 As MSHFlexGrid
  Dim var_1B0 As Double
  Dim var_1A0 As TextBox
  Dim var_8E As Integer
  Dim var_1A8 As Double
  Dim var_19C As TextBox
  loc_149AC6F: var_A8 = CLng(Me.FGrid.Col)
  loc_149AC7F: If (var_A8 = CLng(1)) Then
  loc_149ACA2:   var_AE = Me.EOF
  loc_149ACD0:   Set var_94 = Me.TxtGrid
  loc_149ACD6:   Call 0.Method_Proc_214_47_149B8E00 (arg_C, var_B4, var_B8)
  loc_149ACDE:   ((Me.RecordCount = 0) Or ((var_AE = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_149ACF6:   If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_149AD0C:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149AD14:     var_E8 = CVar(CLng(1)) 'Long
  loc_149AD19:     var_108 = vbNullString
  loc_149AD23:     Set var_B4 = Me.FGrid
  loc_149AD29:     LateIdCallSt
  loc_149AD4E:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149AD56:     var_E8 = CVar(CLng(9)) 'Long
  loc_149AD5B:     var_108 = vbNullString
  loc_149AD65:     Set var_B4 = Me.FGrid
  loc_149AD6B:     LateIdCallSt
  loc_149AD90:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149AD98:     var_E8 = CVar(CLng(&HA)) 'Long
  loc_149AD9D:     var_108 = vbNullString
  loc_149ADA7:     Set var_B4 = Me.FGrid
  loc_149ADAD:     LateIdCallSt
  loc_149ADD2:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149ADDA:     var_E8 = CVar(CLng(2)) 'Long
  loc_149ADDF:     var_108 = vbNullString
  loc_149ADE9:     Set var_B4 = Me.FGrid
  loc_149ADEF:     LateIdCallSt
  loc_149AE14:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149AE1C:     var_E8 = CVar(CLng(7)) 'Long
  loc_149AE21:     var_108 = vbNullString
  loc_149AE2B:     Set var_B4 = Me.FGrid
  loc_149AE31:     LateIdCallSt
  loc_149AE56:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149AE5E:     var_E8 = CVar(CLng(6)) 'Long
  loc_149AE63:     var_108 = vbNullString
  loc_149AE6D:     Set var_B4 = Me.FGrid
  loc_149AE73:     LateIdCallSt
  loc_149AE98:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149AEA0:     var_E8 = CVar(CLng(5)) 'Long
  loc_149AEA5:     var_108 = vbNullString
  loc_149AEAF:     Set var_B4 = Me.FGrid
  loc_149AEB5:     LateIdCallSt
  loc_149AEDA:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149AEE2:     var_E8 = CVar(CLng(3)) 'Long
  loc_149AEE7:     var_108 = vbNullString
  loc_149AEF1:     Set var_B4 = Me.FGrid
  loc_149AEF7:     LateIdCallSt
  loc_149AF1C:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149AF24:     var_E8 = CVar(CLng(4)) 'Long
  loc_149AF29:     var_108 = vbNullString
  loc_149AF33:     Set var_B4 = Me.FGrid
  loc_149AF39:     LateIdCallSt
  loc_149AF4E:   Else
  loc_149AF51:     Call Proc_214_57_FCDBF0(var_AE, var_B4, var_108, var_E8, var_C8, var_B4, var_108, var_E8)
  loc_149AF5C:     If (var_AE = 0) Then
  loc_149AF64:       Proc_214_47_149B8E0 = 0
  loc_149AF6A:     End If
  loc_149AF7D:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149AF85:     var_F8 = CVar(CLng(1)) 'Long
  loc_149AFB8:     var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_149AFC0:     Set var_140 = Me.FGrid
  loc_149AFC6:     LateIdCallSt
  loc_149AFF5:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149AFFD:     var_F8 = CVar(CLng(9)) 'Long
  loc_149B030:     var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_149B038:     Set var_140 = Me.FGrid
  loc_149B03E:     LateIdCallSt
  loc_149B06D:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149B075:     var_F8 = CVar(CLng(&HA)) 'Long
  loc_149B0A8:     var_13C = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_149B0B0:     Set var_140 = Me.FGrid
  loc_149B0B6:     LateIdCallSt
  loc_149B0E5:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149B0ED:     var_F8 = CVar(CLng(2)) 'Long
  loc_149B120:     var_13C = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_149B128:     Set var_140 = Me.FGrid
  loc_149B12E:     LateIdCallSt
  loc_149B17C:     var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149B184:     var_108 = CVar(CLng(7)) 'Long
  loc_149B1B1:     var_160 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_149B1B9:     Set var_140 = Me.FGrid
  loc_149B1BF:     LateIdCallSt
  loc_149B1F0:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149B1F8:     var_F8 = CVar(CLng(4)) 'Long
  loc_149B22B:     var_13C = CVar(CStr(Me.Fields.Item("ConvRatio").Value)) 'String
  loc_149B233:     Set var_140 = Me.FGrid
  loc_149B239:     LateIdCallSt
  loc_149B268:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149B270:     var_F8 = CVar(CLng(6)) 'Long
  loc_149B2A3:     var_13C = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_149B2AB:     Set var_140 = Me.FGrid
  loc_149B2B1:     LateIdCallSt
  loc_149B2CD:   End If
  loc_149B2F7:   var_12C = Me.FGrid.TextMatrix)
  loc_149B311:   Set var_11C = Me.Txt
  loc_149B317:   Call 0.Method_Proc_214_47_149B8E00 (CInt(3), var_140, var_178, var_12C, CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)), var_140)
  loc_149B33C:   var_174 = "SELECT RATE FROM ITEMRATE WHERE ITEMCODE='" & CStr(var_12C)
  loc_149B35A:   unk_4EA038.Execute var_174 & "' AND RestCode='" & var_178 & "'", var_140.Tag, -1
  loc_149B365:   Set var_8C = var_188
  loc_149B3A1:   If (var_8C.RecordCount > 0) Then
  loc_149B3B7:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149B3EA:     Proc_6_47_EF59D0(var_12C, CVar(var_8C.Fields.Item("Rate")), CVar(CLng(7)), var_D8, var_188, CVar(CLng(7)))
  loc_149B3F3:     var_150 = CVar(CStr(var_12C)) 'String
  loc_149B3FB:     Set var_140 = Me.FGrid
  loc_149B401:     LateIdCallSt
  loc_149B41D:   End If
  loc_149B41D:   Call Proc_214_55_F74ECC(var_140, var_150, var_D8, var_140)
  loc_149B435:   var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149B43D:   var_E8 = CVar(CLng(9)) 'Long
  loc_149B446:   Set var_B4 = Me.FGrid
  loc_149B44C:   var_12C = var_B4.TextMatrix)
  loc_149B49D:   var_B8 = CStr(Me.FGrid.TextMatrix))
  loc_149B4A5:   var_1B0 = Val(var_B8)
  loc_149B4B6:   Set var_19C = Me.Txt
  loc_149B4BC:   Call 0.Method_Proc_214_47_149B8E00 (CInt(3), var_1A0, var_174, var_1B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_149B4ED:   var_8E = Proc_96_27_11F27DC(CStr(var_1A0.Tag), var_1B0, MemVar_1F92070, var_174, global_104)
  loc_149B527:   Me.LblCurStockStr.Caption = global_104
  loc_149B532: Else
  loc_149B539:   If (var_A8 = CLng(7)) Then
  loc_149B548:     Set var_94 = Me.TxtGrid
  loc_149B54E:     Call 0.Method_Proc_214_47_149B8E00 (0, var_B4, var_B8, var_8E, var_E8)
  loc_149B556:     var_C8 = var_B4.Text
  loc_149B563:     var_1A8 = Val(var_B8)
  loc_149B579:     var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149B5CC:     LateIdCallSt
  loc_149B5F3:     Call Proc_214_55_F74ECC(Me.FGrid, CVar(CStr(Format(CVar(var_1A8), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)))
  loc_149B5FB:   Else
  loc_149B602:     If Not (var_A8 = CLng(3)) Then
  loc_149B60C:       If (var_A8 = CLng(4)) Then
  loc_149B60F:       End If
  loc_149B62A:       var_E8 = CVar(CLng(9)) 'Long
  loc_149B633:       Set var_B4 = Me.FGrid
  loc_149B639:       var_12C = var_B4.TextMatrix)
  loc_149B66F:       var_150 = Me.FGrid.TextMatrix)
  loc_149B67A:       var_B8 = CStr(var_150)
  loc_149B682:       var_1B0 = Val(var_B8)
  loc_149B693:       Set var_188 = Me.Txt
  loc_149B699:       Call 0.Method_Proc_214_47_149B8E00 (CInt(3), var_19C, var_174, var_1B0, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_12C)
  loc_149B6CA:       var_8E = Proc_96_27_11F27DC(CStr(var_12C), var_1B0, MemVar_1F92070, var_174, global_104, CVar(CLng(Me.FGrid.Row)))
  loc_149B700:       Me.LblCurStockStr.Caption = global_104
  loc_149B70E:       If (var_8E = 0) Then
  loc_149B71F:         If (Proc_96_29_E989EC(global_108, var_8E, var_19C.Tag, var_1A8) = 0) Then
  loc_149B727:           Proc_214_47_149B8E0 = 0
  loc_149B72D:         End If
  loc_149B72D:       End If
  loc_149B74A:       If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_149B759:         Set var_94 = Me.TxtGrid
  loc_149B75F:         Call 0.Method_Proc_214_47_149B8E00 (0, var_B4, var_B8)
  loc_149B78C:         If (global_112 <> CDbl(Val(var_B8))) Then
  loc_149B7BE:           If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_12C, var_B4.Text, var_150) = 7) Then
  loc_149B7C6:             Proc_214_47_149B8E0 = 0
  loc_149B7CC:           End If
  loc_149B7CC:         End If
  loc_149B7CC:       End If
  loc_149B7D8:       Set var_94 = Me.TxtGrid
  loc_149B7DE:       Call 0.Method_Proc_214_47_149B8E00 (0, var_B4, var_B8)
  loc_149B7E6:       var_1A8 = var_B4.Text
  loc_149B7F3:       var_1A8 = Val(var_B8)
  loc_149B809:       var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149B85C:       LateIdCallSt
  loc_149B883:       Call Proc_214_55_F74ECC(Me.FGrid, CVar(CStr(Format(CVar(var_1A8), "0.000"))), 1, 1, CVar(CLng(Me.FGrid.Col)))
  loc_149B888:     End If
  loc_149B888:   End If
  loc_149B888: End If
  loc_149B893: If (arg_10 = 0) Then
  loc_149B89A:   Set var_94 = Me.FGrid
  loc_149B8B6:   Set var_94 = Me.TxtGrid
  loc_149B8BC:   Call 0.Method_Proc_214_47_149B8E00 (0, var_B4, 0, FGrid.DispID_8001, &HFF)
  loc_149B8C4:   var_B4.Visible = var_E8
  loc_149B8D0: End If
  loc_149B8D5: Set var_8C = Nothing
  loc_149B8D8: Proc_214_47_149B8E0 = var_1A8
End Sub

Public Sub Proc_214_48_F72778
  'Data Table: 4EA028
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_DC As Variant
  loc_F72646: Set var_8C = Me.Txt
  loc_F7264C: Call 0.Method_Proc_214_48_F72778C (var_8E, var_86)
  loc_F7265C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F72672:   Set var_8C = Me.Txt
  loc_F72678:   Call 0.Method_Proc_214_48_F727780 (CInt(var_86), var_98)
  loc_F72680:   var_98.Text = vbNullString
  loc_F7269C:   Set var_8C = Me.Txt
  loc_F726A2:   Call 0.Method_Proc_214_48_F727780 (CInt(var_86), var_98)
  loc_F726AA:   var_98.Tag = vbNullString
  loc_F726B9: Next var_92 'Byte
  loc_F726D3: Me.LblUser.Caption = "User : " & MemVar_1F920C8
  loc_F726EB: Me.LblCurStockStr.Caption = vbNullString
  loc_F72700: Me.LblVPrefix.Caption = vbNullString
  loc_F7271B: Me.FGrid.Rows = 1
  loc_F72738: var_DC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F72740: Set var_98 = Me.FGrid
  loc_F7276F: Me.FGrid.FixedRows = 1
  loc_F72777: Exit Sub
End Sub

Public Sub Proc_214_49_14F9D04
  'Data Table: 4EA028
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_10C As String
  Dim unk_4EA038 As Connection15
  Dim var_88 As Recordset15
  Dim var_C8 As Variant
  Dim var_134 As TextBox
  Dim var_130 As Variant
  Dim var_138 As String
  Dim var_94 As Recordset15
  Dim var_90 As Recordset15
  Dim var_158 As Variant
  Dim var_8A As Integer
  Dim var_168 As Variant
  Dim var_1FC As MSHFlexGrid
  Dim var_204 As Double
  Dim var_9C As Double
  loc_14F8EC0: On Error Goto loc_14F9CFD
  loc_14F8EDA: If (Me.RecordCount > 0) Then
  loc_14F8EEA:   Me.LblCurStockStr.Caption = vbNullString
  loc_14F8EFF:   var_D8 = "Select Distinct SH.Docid,SH.SNo,SH.Vtype,SH.Vno,SH.Vdate,SH.VPrefix,SH.Rate,SH.Amount,SH.GodownCode,SH.Item,SH.QtyRec,SH.Unit,SH.RECDQty,SH.RECDUnit,SH.ConvRatio,SH.ItemRestCode,SH.U_Name,SH.U_entdt,SH.U_AE,I.Name As ItemName,SH.ShiftCode,SM.Name As ShiftName,SH.Remarks From Stock SH Left Join ItemMast I On I.Code=SH.Item And I.ItemType='Store' Left Join ShiftMast SM On SH.ShiftCode=SM.Code where DocID='"
  loc_14F8F48:   unk_4EA038.Execute CStr(var_D8 & Me.Fields.Item("SearchCode").Value & "' Order By SH.SNo"), var_12C, -1
  loc_14F8F53:   Set var_88 = var_130
  loc_14F8FA3:   Set var_130 = Me.Txt
  loc_14F8FA9:   Call 0.Method_Proc_214_49_14F9D040 (CInt(0), var_134)
  loc_14F8FB1:   var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")))
  loc_14F8FFA:   Me.LblVPrefix.Caption = Proc_6_38_E68A98(CVar(var_88.Fields.Item("vPrefix")))
  loc_14F9042:   Set var_130 = Me.Txt
  loc_14F9048:   Call 0.Method_Proc_214_49_14F9D040 (CInt(1), var_134)
  loc_14F9050:   var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("VNo")))
  loc_14F907B:   var_B8 = var_88.Fields.Item("VDate")
  loc_14F908C:   var_10C = Proc_6_38_E68A98(CVar(var_B8))
  loc_14F909A:   Set var_130 = Me.Txt
  loc_14F90A0:   Call 0.Method_Proc_214_49_14F9D040 (CInt(2), var_134)
  loc_14F90A8:   var_134.Text = var_10C
  loc_14F90DA:   Set var_A4 = Me.Txt
  loc_14F90E0:   Call 0.Method_Proc_214_49_14F9D040 (CInt(1), var_B8, var_10C, "Select VTYPE,GodownCode From Stock Where VtYpe='KSISS' and VNo=")
  loc_14F90E8:   var_C8 = var_B8.Text
  loc_14F90F1:   var_138 = -1 & var_10C
  loc_14F9102:   Set var_130 = Me.LblVPrefix
  loc_14F9121:   unk_4EA038.Execute var_138 & " And VPrefix=" & var_130.Caption & vbNullString, var_134, var_130
  loc_14F912C:   Set var_94 = var_134
  loc_14F9160:   If (var_94.RecordCount > 0) Then
  loc_14F919F:     If (var_94.Fields.Item("vType").Value = "KSISS") Then
  loc_14F91B9:       var_B8 = var_94.Fields.Item("Godowncode")
  loc_14F91CA:       var_10C = Proc_6_38_E68A98(CVar(var_B8))
  loc_14F91D8:       Set var_130 = Me.Txt
  loc_14F91DE:       Call 0.Method_Proc_214_49_14F9D040 (CInt(3), var_134)
  loc_14F91E6:       var_134.Tag = var_10C
  loc_14F9218:       Set var_A4 = Me.Txt
  loc_14F921E:       Call 0.Method_Proc_214_49_14F9D040 (CInt(3), var_B8, var_10C, "Select Name From GodownMast Where Code='")
  loc_14F9226:       var_C8 = var_B8.Tag
  loc_14F922F:       var_138 = -1 & var_10C
  loc_14F923F:       unk_4EA038.Execute var_138 & "'", var_130, 
  loc_14F924A:       Set var_90 = var_130
  loc_14F9276:       If (var_90.RecordCount > 0) Then
  loc_14F92AF:         Set var_130 = Me.Txt
  loc_14F92B5:         Call 0.Method_Proc_214_49_14F9D040 (CInt(3), var_134)
  loc_14F92BD:         var_134.Text = Proc_6_38_E68A98(CVar(var_90.Fields.Item("Name")))
  loc_14F92D1:       End If
  loc_14F92D1:     End If
  loc_14F92D1:   End If
  loc_14F930D:   If (var_88.Fields.Item("vType").Value = "KSREC") Then
  loc_14F9327:     var_B8 = var_88.Fields.Item("Godowncode")
  loc_14F9338:     var_10C = Proc_6_38_E68A98(CVar(var_B8))
  loc_14F9346:     Set var_130 = Me.Txt
  loc_14F934C:     Call 0.Method_Proc_214_49_14F9D040 (CInt(4), var_134)
  loc_14F9354:     var_134.Tag = var_10C
  loc_14F9386:     Set var_A4 = Me.Txt
  loc_14F938C:     Call 0.Method_Proc_214_49_14F9D040 (CInt(4), var_B8, var_10C, "Select Name From GodownMast Where Code='")
  loc_14F9394:     var_C8 = var_B8.Tag
  loc_14F939D:     var_138 = -1 & var_10C
  loc_14F93AD:     unk_4EA038.Execute var_138 & "'", var_130, 
  loc_14F93B8:     Set var_90 = var_130
  loc_14F93E4:     If (var_90.RecordCount > 0) Then
  loc_14F941D:       Set var_130 = Me.Txt
  loc_14F9423:       Call 0.Method_Proc_214_49_14F9D040 (CInt(4), var_134)
  loc_14F942B:       var_134.Text = Proc_6_38_E68A98(CVar(var_90.Fields.Item("Name")))
  loc_14F943F:     End If
  loc_14F943F:   End If
  loc_14F94E2:   var_1A8 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_14F9527:   Me.LblUser.Caption = CStr(var_1A8 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")))))
  loc_14F95A1:   var_134 = var_88.Fields.Item("U_AE")
  loc_14F9602:   var_1A8 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_134)) = "E"), "Last Update : ", "entdt : "))
  loc_14F9647:   Me.LblLDt.Caption = CStr(var_1A8 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_14F96B5:   Set var_130 = Me.Txt
  loc_14F96BB:   Call 0.Method_Proc_214_49_14F9D040 (CInt(5), var_134)
  loc_14F96C3:   var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ShiftName")))
  loc_14F970D:   Set var_130 = Me.Txt
  loc_14F9713:   Call 0.Method_Proc_214_49_14F9D040 (CInt(5), var_134)
  loc_14F971B:   var_134.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ShiftCode")))
  loc_14F9765:   Set var_130 = Me.Txt
  loc_14F976B:   Call 0.Method_Proc_214_49_14F9D040 (CInt(6), var_134)
  loc_14F9773:   var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remarks")))
  loc_14F979A:   Me.FGrid.Rows = 1
  loc_14F97A4:   var_8A = 1
  loc_14F97A7:   ' Referenced from: 14F9C66
  loc_14F97B6:   If Not(var_88.EOF) Then
  loc_14F97B9:     var_B4 = vbNullString
  loc_14F97C3:     Set var_A4 = Me.FGrid
  loc_14F97D8:     Set var_1FC = Me.FGrid
  loc_14F9814:     var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SNo")), CVar(CLng(0)), CVar(CLng(var_8A)))) 'String
  loc_14F981B:     LateIdCallSt
  loc_14F9866:     var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8A)), var_1FC)) 'String
  loc_14F986D:     LateIdCallSt
  loc_14F98B8:     var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RecdUnit")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1FC, var_E8)) 'String
  loc_14F98BF:     LateIdCallSt
  loc_14F98F7:     Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("RecdQty")), var_1FC, var_E8)
  loc_14F9900:     var_F8 = CVar(CLng(var_8A)) 'Long
  loc_14F9938:     LateIdCallSt
  loc_14F9989:     var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_8A)), var_1FC, CVar(CStr(Format(var_E8, "0.000"))), 1, 1)) 'String
  loc_14F9990:     LateIdCallSt
  loc_14F99C8:     Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("QtyRec")), var_1FC, var_E8, CVar(CLng(3)))
  loc_14F99D1:     var_F8 = CVar(CLng(var_8A)) 'Long
  loc_14F9A09:     LateIdCallSt
  loc_14F9A47:     Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("Rate")), var_1FC, CVar(CStr(Format(var_E8, "0.000"))), 1, 1, CVar(CLng(5)))
  loc_14F9A50:     var_F8 = CVar(CLng(var_8A)) 'Long
  loc_14F9A88:     LateIdCallSt
  loc_14F9AC6:     Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("Amount")), var_1FC, CVar(CStr(Format(var_E8, "0.00"))), 1, 1, CVar(CLng(7)))
  loc_14F9ACF:     var_F8 = CVar(CLng(var_8A)) 'Long
  loc_14F9AD7:     var_158 = CVar(CLng(8)) 'Long
  loc_14F9B00:     var_168 = CVar(CStr(Format(var_E8, "0.00"))) 'String
  loc_14F9B07:     LateIdCallSt
  loc_14F9B23:     var_B4 = CVar(CLng(var_8A)) 'Long
  loc_14F9B2B:     var_F8 = CVar(CLng(8)) 'Long
  loc_14F9B46:     var_204 = Val(CStr(var_1FC.TextMatrix)))
  loc_14F9B50:     var_9C = (var_9C + var_204)
  loc_14F9B6D:     var_B4 = "Item"
  loc_14F9B92:     var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_B4)), CVar(CLng(9)), CVar(CLng(var_8A)), var_9C, var_204, var_F8, var_B4)) 'String
  loc_14F9B99:     LateIdCallSt
  loc_14F9BE4:     var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemRestcode")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_1FC, var_E8, var_1FC)) 'String
  loc_14F9BEB:     LateIdCallSt
  loc_14F9C25:     var_B8 = var_88.Fields.Item("ConvRatio")
  loc_14F9C36:     var_E8 = CVar(Proc_6_38_E68A98(CVar(var_B8), CVar(CLng(4)), CVar(CLng(var_8A)), var_1FC, var_E8)) 'String
  loc_14F9C3D:     LateIdCallSt
  loc_14F9C51:     Set var_1FC = Nothing 
  loc_14F9C5B:     var_8A = (var_8A + 1)
  loc_14F9C61:     var_88.MoveNext
  loc_14F9C66:     GoTo loc_14F97A7
  loc_14F9C69:   End If
  loc_14F9C7C:   Me.FGrid.FixedRows = 1
  loc_14F9CA4:   var_E8 = Format(var_9C, "0.00")
  loc_14F9CBB:   Set var_A4 = Me.Txt
  loc_14F9CC1:   Call 0.Method_Proc_214_49_14F9D040 (CInt(7), var_B8, CStr(var_E8), 1, 1, var_8A, var_1FC)
  loc_14F9CC9:   var_B8.Text = var_E8
  loc_14F9CE2: Else
  loc_14F9CE2:   Call Proc_214_48_F72778(var_168, 1, 1)
  loc_14F9CE7: End If
  loc_14F9CE7: Call Proc_214_51_EF73B0(var_158)
  loc_14F9CEC: Exit Sub
  loc_14F9CF2: Set var_90 = Nothing
  loc_14F9CFA: Set var_94 = Nothing
  loc_14F9CFD: ' Referenced from: 14F8EC0
  loc_14F9CFD: Proc_6_60_E62BC4(var_F8)
  loc_14F9D02: Exit Sub
End Sub

Public Sub Proc_214_50_F1DC04(arg_C) 'F1DC04
  'Data Table: 4EA028
  Dim var_98 As TextBox
  loc_F1DB0A: Set var_8C = Me.Txt
  loc_F1DB10: Call 0.Method_Proc_214_50_F1DC04C (var_8E, var_86)
  loc_F1DB20: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1DB36:   Set var_8C = Me.Txt
  loc_F1DB3C:   Call 0.Method_Proc_214_50_F1DC040 (CInt(var_86), var_98)
  loc_F1DB44:   var_98.Enabled = arg_C
  loc_F1DB53: Next var_92 'Byte
  loc_F1DB66: Set var_8C = Me.Txt
  loc_F1DB6C: Call 0.Method_Proc_214_50_F1DC040 (CInt(0), var_98)
  loc_F1DB74: var_98.Enabled = False
  loc_F1DB8D: Set var_8C = Me.Txt
  loc_F1DB93: Call 0.Method_Proc_214_50_F1DC040 (CInt(1), var_98)
  loc_F1DB9B: var_98.Enabled = False
  loc_F1DBB4: Set var_8C = Me.Txt
  loc_F1DBBA: Call 0.Method_Proc_214_50_F1DC040 (CInt(7), var_98)
  loc_F1DBC2: var_98.Enabled = False
  loc_F1DBD9: If (global_92 = "No") Then
  loc_F1DBE9:   Set var_8C = Me.Txt
  loc_F1DBEF:   Call 0.Method_Proc_214_50_F1DC040 (CInt(2), var_98)
  loc_F1DBF7:   var_98.Enabled = False
  loc_F1DC03: End If
  loc_F1DC03: Exit Sub
End Sub

Public Sub Proc_214_51_EF73B0
  'Data Table: 4EA028
  loc_EF72F0: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EF7302:   Me.DGDepart.Visible = False
  loc_EF730A: End If
  loc_EF7326: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF7338:   Me.DGItem.Visible = False
  loc_EF7340: End If
  loc_EF735C: If (CBool(Me.DGToDepart.Visible) = &HFF) Then
  loc_EF736E:   Me.DGToDepart.Visible = False
  loc_EF7376: End If
  loc_EF7392: If (CBool(Me.DGShift.Visible) = &HFF) Then
  loc_EF73A4:   Me.DGShift.Visible = False
  loc_EF73AC: End If
  loc_EF73AC: Exit Sub
End Sub

Public Sub Proc_214_52_115B4B8
  'Data Table: 4EA028
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_115B150: var_90 = global_72
  loc_115B167: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_115B18A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115B198: Set var_B4 = Me.Txt
  loc_115B19E: Call 0.Method_Proc_214_52_115B4B80 (CInt(2), var_B8, var_E8)
  loc_115B1AD: Proc_6_7_F25D88(var_D8, CVar(var_B8), var_13C)
  loc_115B1B5: var_F8 = -1 & var_D8 
  loc_115B1C9: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115B1D4: Set var_8C = var_140
  loc_115B210: If (var_8C.RecordCount <= 0) Then
  loc_115B22C:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115B23F:   var_88 = vbNullString
  loc_115B242:   Proc_214_52_115B4B8 = 
  loc_115B248: End If
  loc_115B25C: If (var_8C.RecordCount > 0) Then
  loc_115B29B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115B2B8:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115B2C9:     var_9C = CStr(var_B8.Value)
  loc_115B2E4:     Set var_B4 = Me.Txt
  loc_115B2EA:     Call 0.Method_Proc_214_52_115B4B80 (CInt(1), var_B8)
  loc_115B300:     var_94 = CLng(Val(var_B8.Text))
  loc_115B310:   Else
  loc_115B33B:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115B362:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115B377:     var_D8 = (var_B8.Value + 1)
  loc_115B37D:     var_94 = CLng(var_D8)
  loc_115B38E:   End If
  loc_115B38E: End If
  loc_115B3B9: var_C8 = Space((5 - Len(var_90)))
  loc_115B3C1: var_E8 = (CVar(var_94 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_B8.Value)
  loc_115B3CB: var_F8 = (var_E8 + CVar(var_9C))
  loc_115B3DC: var_118 = Space((5 - Len(var_9C)))
  loc_115B3E4: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115B3FA: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115B402: var_188 = (var_13C + var_178)
  loc_115B40E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115B413: var_98 = CStr(var_1A8)
  loc_115B443: Me.LblVPrefix.Caption = var_9C
  loc_115B459: Set var_B4 = Me.Txt
  loc_115B45F: Call 0.Method_Proc_214_52_115B4B80 (CInt(0), var_B8)
  loc_115B467: var_B8.Text = var_98
  loc_115B486: Set var_B4 = Me.Txt
  loc_115B48C: Call 0.Method_Proc_214_52_115B4B80 (CInt(1), var_B8)
  loc_115B494: var_B8.Text = CStr(var_94)
  loc_115B4A6: var_88 = var_98
  loc_115B4AE: Set var_8C = Nothing
  loc_115B4B1: Proc_214_52_115B4B8 = var_94
End Sub

Public Sub Proc_214_53_110C450
  'Data Table: 4EA028
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Fields15
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_110C154: var_90 = global_76
  loc_110C16B: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_110C18E: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_110C19C: Set var_B4 = Me.Txt
  loc_110C1A2: Call 0.Method_Proc_214_53_110C4500 (CInt(2), var_B8, var_E8)
  loc_110C1B1: Proc_6_7_F25D88(var_D8, CVar(var_B8), var_13C)
  loc_110C1B9: var_F8 = -1 & var_D8 
  loc_110C1CD: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_110C1D8: Set var_8C = var_140
  loc_110C214: If (var_8C.RecordCount <= 0) Then
  loc_110C230:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_110C243:   var_88 = vbNullString
  loc_110C246:   Proc_214_53_110C450 = 
  loc_110C24C: End If
  loc_110C260: If (var_8C.RecordCount > 0) Then
  loc_110C29F:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_110C2BC:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_110C2CD:     var_9C = CStr(var_B8.Value)
  loc_110C2E8:     Set var_B4 = Me.Txt
  loc_110C2EE:     Call 0.Method_Proc_214_53_110C4500 (CInt(1), var_B8)
  loc_110C304:     var_94 = CLng(Val(var_B8.Text))
  loc_110C314:   Else
  loc_110C33F:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_110C37B:     var_D8 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_110C381:     var_94 = CLng(var_D8)
  loc_110C392:   End If
  loc_110C392: End If
  loc_110C3BD: var_C8 = Space((5 - Len(var_90)))
  loc_110C3C5: var_E8 = (CVar(var_94 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_8C.Fields.Item("start_srl_no").Value)
  loc_110C3CF: var_F8 = (var_E8 + CVar(var_9C))
  loc_110C3E0: var_118 = Space((5 - Len(var_9C)))
  loc_110C3E8: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_110C3FE: var_178 = Space((8 - Len(CStr(var_94))))
  loc_110C406: var_188 = (var_13C + var_178)
  loc_110C412: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_110C43D: var_88 = CStr(var_1A8)
  loc_110C445: Set var_8C = Nothing
  loc_110C448: Proc_214_53_110C450 = var_94
  loc_110C44E: ArrayRebase1Var
End Sub

Public Sub Proc_214_54_1259D08
  'Data Table: 4EA028
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_D4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_12597AB: Me.FGrid.Width = CVar(CDbl(10800))
  loc_12597C6: Me.FGrid.Top = CVar(CDbl(1900))
  loc_12597E1: Me.FGrid.Height = CVar(CDbl(5325))
  loc_12597FC: Me.FGrid.Left = CVar(CDbl(800))
  loc_1259817: Me.DGItem.Left = CVar(CDbl(2800))
  loc_1259832: Me.DGItem.Top = CVar(CDbl(1200))
  loc_1259871: Me.LblCurStockStr.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_1259891: If (global_100 <> "Yes") Then
  loc_12598A5:   Set var_A8 = Me.DGItem
  loc_12598C4:   DGItem.DispID_69.Item(1).Width = CDbl(0)
  loc_12598ED:   var_94 = CVar((CDbl(Me.DGItem.Width) - CDbl(2500))) 'Single
  loc_12598FC:   Me.DGItem.Width = 1
  loc_125990B: End If
  loc_125990F: Set var_D4 = Me.FGrid
  loc_1259926: global_120 = CStr(CLng(var_D4.BackColor))
  loc_125993C: var_D4.Cols = &HB
  loc_1259944: var_94 = CVar(CLng(0)) 'Long
  loc_1259949: var_E8 = &H1C2
  loc_1259955: LateIdCallSt
  loc_125995D: var_94 = 0
  loc_1259969: var_E8 = CVar(CLng(1)) 'Long
  loc_125996E: var_108 = "Item Name"
  loc_1259977: LateIdCallSt
  loc_1259982: var_94 = CVar(CLng(1)) 'Long
  loc_125998D: var_E8 = CVar(CInt(1)) 'Integer
  loc_1259994: LateIdCallSt
  loc_125999F: var_94 = CVar(CLng(1)) 'Long
  loc_12599A4: var_E8 = &HC80
  loc_12599B0: LateIdCallSt
  loc_12599B8: var_94 = 0
  loc_12599C4: var_E8 = CVar(CLng(2)) 'Long
  loc_12599C9: var_108 = "Unit"
  loc_12599D2: LateIdCallSt
  loc_12599DD: var_94 = CVar(CLng(2)) 'Long
  loc_12599E8: var_E8 = CVar(CInt(1)) 'Integer
  loc_12599EF: LateIdCallSt
  loc_12599FA: var_94 = CVar(CLng(2)) 'Long
  loc_12599FF: var_E8 = &H384
  loc_1259A0B: LateIdCallSt
  loc_1259A13: var_94 = 0
  loc_1259A1F: var_E8 = CVar(CLng(3)) 'Long
  loc_1259A24: var_108 = "Iss. Qty"
  loc_1259A2D: LateIdCallSt
  loc_1259A38: var_94 = CVar(CLng(3)) 'Long
  loc_1259A43: var_E8 = CVar(CInt(7)) 'Integer
  loc_1259A4A: LateIdCallSt
  loc_1259A55: var_94 = CVar(CLng(3)) 'Long
  loc_1259A60: var_E8 = CVar(CInt(7)) 'Integer
  loc_1259A67: LateIdCallSt
  loc_1259A72: var_94 = CVar(CLng(3)) 'Long
  loc_1259A77: var_E8 = &H3E8
  loc_1259A83: LateIdCallSt
  loc_1259A8B: var_94 = 0
  loc_1259A97: var_E8 = CVar(CLng(4)) 'Long
  loc_1259A9C: var_108 = "Conv. Factor"
  loc_1259AA5: LateIdCallSt
  loc_1259AB0: var_94 = CVar(CLng(4)) 'Long
  loc_1259ABB: var_E8 = CVar(CInt(7)) 'Integer
  loc_1259AC2: LateIdCallSt
  loc_1259ACD: var_94 = CVar(CLng(4)) 'Long
  loc_1259AD8: var_E8 = CVar(CInt(7)) 'Integer
  loc_1259ADF: LateIdCallSt
  loc_1259AEA: var_94 = CVar(CLng(4)) 'Long
  loc_1259AEF: var_E8 = 0
  loc_1259AFB: LateIdCallSt
  loc_1259B03: var_94 = 0
  loc_1259B0F: var_E8 = CVar(CLng(5)) 'Long
  loc_1259B14: var_108 = "Wt. Qty"
  loc_1259B1D: LateIdCallSt
  loc_1259B28: var_94 = CVar(CLng(5)) 'Long
  loc_1259B33: var_E8 = CVar(CInt(7)) 'Integer
  loc_1259B3A: LateIdCallSt
  loc_1259B45: var_94 = CVar(CLng(5)) 'Long
  loc_1259B50: var_E8 = CVar(CInt(7)) 'Integer
  loc_1259B57: LateIdCallSt
  loc_1259B62: var_94 = CVar(CLng(5)) 'Long
  loc_1259B67: var_E8 = &H3E8
  loc_1259B73: LateIdCallSt
  loc_1259B7B: var_94 = 0
  loc_1259B87: var_E8 = CVar(CLng(6)) 'Long
  loc_1259B8C: var_108 = "Wt.Unit"
  loc_1259B95: LateIdCallSt
  loc_1259BA0: var_94 = CVar(CLng(6)) 'Long
  loc_1259BAB: var_E8 = CVar(CInt(1)) 'Integer
  loc_1259BB2: LateIdCallSt
  loc_1259BBD: var_94 = CVar(CLng(6)) 'Long
  loc_1259BC2: var_E8 = &H384
  loc_1259BCE: LateIdCallSt
  loc_1259BD6: var_94 = 0
  loc_1259BE2: var_E8 = CVar(CLng(7)) 'Long
  loc_1259BE7: var_108 = "Rate"
  loc_1259BF0: LateIdCallSt
  loc_1259BFB: var_94 = CVar(CLng(7)) 'Long
  loc_1259C06: var_E8 = CVar(CInt(7)) 'Integer
  loc_1259C0D: LateIdCallSt
  loc_1259C18: var_94 = CVar(CLng(7)) 'Long
  loc_1259C23: var_E8 = CVar(CInt(7)) 'Integer
  loc_1259C2A: LateIdCallSt
  loc_1259C35: var_94 = CVar(CLng(7)) 'Long
  loc_1259C3A: var_E8 = &H3E8
  loc_1259C46: LateIdCallSt
  loc_1259C4E: var_94 = 0
  loc_1259C5A: var_E8 = CVar(CLng(8)) 'Long
  loc_1259C5F: var_108 = "Amount"
  loc_1259C68: LateIdCallSt
  loc_1259C73: var_94 = CVar(CLng(8)) 'Long
  loc_1259C7E: var_E8 = CVar(CInt(7)) 'Integer
  loc_1259C85: LateIdCallSt
  loc_1259C90: var_94 = CVar(CLng(8)) 'Long
  loc_1259C9B: var_E8 = CVar(CInt(7)) 'Integer
  loc_1259CA2: LateIdCallSt
  loc_1259CAD: var_94 = CVar(CLng(8)) 'Long
  loc_1259CB2: var_E8 = &H5DC
  loc_1259CBE: LateIdCallSt
  loc_1259CC9: var_94 = CVar(CLng(9)) 'Long
  loc_1259CCE: var_E8 = 0
  loc_1259CDA: LateIdCallSt
  loc_1259CE5: var_94 = CVar(CLng(&HA)) 'Long
  loc_1259CEA: var_E8 = 0
  loc_1259CF6: LateIdCallSt
  loc_1259D00: Set var_D4 = Nothing 
  loc_1259D04: Exit Sub
End Sub

Public Sub Proc_214_55_F74ECC
  'Data Table: 4EA028
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  loc_F74DCB: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F74DD3: var_C8 = CVar(CLng(7)) 'Long
  loc_F74E0B: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F74E13: var_134 = CVar(CLng(3)) 'Long
  loc_F74E92: LateIdCallSt
  loc_F74EC5: Call Proc_214_58_F03C6C(Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))), 1, 1, CVar(CLng(8)), CVar(CLng(Me.FGrid.Row)))
  loc_F74ECA: Exit Sub
End Sub

Public Sub Proc_214_56_ED6590
  'Data Table: 4EA028
  loc_ED64F0: Call Proc_214_51_EF73B0()
  loc_ED6500: Set var_88 = Me.Txt
  loc_ED6506: Call 0.Method_Proc_214_56_ED65900 (CInt(2))
  loc_ED652F: If (Proc_6_27_EA565C(var_8C, "Date") = 0) Then
  loc_ED6532:   Exit Sub
  loc_ED6533: End If
  loc_ED656A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED656D:   Call TopCtrl1_UnknownEvent_16()
  loc_ED6575: Else
  loc_ED657B:   Call 0.Method_arg_1E8 (var_88)
  loc_ED6583:   Call var_88.SetFocus
  loc_ED658C: End If
  loc_ED658C: Exit Sub
End Sub

Public Sub Proc_214_57_FCDBF0
  'Data Table: 4EA028
  Dim var_CC As Variant
  Dim var_98 As MSHFlexGrid
  Dim var_F0 As Variant
  Dim var_DC As Variant
  Dim var_9C As TextBox
  loc_FCDA42: var_92 = 1 'Byte
  loc_FCDA4F: Set var_98 = Me.TxtGrid
  loc_FCDA55: Call 0.Method_Proc_214_57_FCDBF00 (0)
  loc_FCDA7D: var_8C = CStr(Ucase(CVar(CStr(Trim(CVar(var_9C))))))
  loc_FCDAB5: For var_E0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_E0 'Integer
  loc_FCDAD9:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FCDADC:     GoTo loc_FCDBDD
  loc_FCDADF:   End If
  loc_FCDAE3:   var_F0 = CVar(CLng(var_88)) 'Long
  loc_FCDB0D:   var_CC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FCDB17:   var_DC = CVar(CStr(var_CC)) 'String
  loc_FCDB4C:   If ((var_8C = CStr(Ucase(var_DC))) And (CStr(Ucase(var_DC)) <> vbNullString)) Then
  loc_FCDB65:     var_F0 = "Duplicate Item Proceed"
  loc_FCDB86:     If (MsgBox(var_F0, 4, "Validation", var_CC, var_DC) = 7) Then
  loc_FCDB95:       Set var_98 = Me.TxtGrid
  loc_FCDB9B:       Call 0.Method_Proc_214_57_FCDBF00 (0, var_9C, vbNullString, CVar(CLng(var_92)))
  loc_FCDBA3:       var_9C.Text = var_F0
  loc_FCDBB8:       Set var_98 = Me.TxtGrid
  loc_FCDBBE:       Call 0.Method_Proc_214_57_FCDBF00 (0, var_9C)
  loc_FCDBC6:       var_9C.SetFocus
  loc_FCDBD7:       Proc_214_57_FCDBF0 = 0
  loc_FCDBDD:       ' Referenced from: FCDADC
  loc_FCDBDD:     End If
  loc_FCDBDD:   End If
  loc_FCDBE0: Next var_E0 'Integer
  loc_FCDBEA: Proc_214_57_FCDBF0 = &HFF
End Sub

Public Sub Proc_214_58_F03C6C
  'Data Table: 4EA028
  Dim var_94 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_90 As Double
  Dim var_108 As TextBox
  loc_F03B90: On Error Goto loc_F03C66
  loc_F03BB8: For var_A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A8 'Integer
  loc_F03BC2:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_F03BCA:   var_D8 = CVar(CLng(8)) 'Long
  loc_F03BF6:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F03C05: Next var_A8 'Integer
  loc_F03C41: Set var_94 = Me.Txt
  loc_F03C47: Call 0.Method_Proc_214_58_F03C6C0 (CInt(7), var_108, CStr(Format(var_90, "0.00")))
  loc_F03C4F: var_108.Text = 1
  loc_F03C65: Exit Sub
  loc_F03C66: ' Referenced from: F03B90
  loc_F03C66: Proc_6_60_E62BC4(1)
  loc_F03C6B: Exit Sub
End Sub
