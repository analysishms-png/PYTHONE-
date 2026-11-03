VERSION 5.00
Begin VB.Form FrmMenuRate
  Caption = "Item Rate Entry"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 5 'Sizable ToolWindow
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 510
  ClientWidth = 11670
  ClientHeight = 7185
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
  ShowInTaskbar = 0   'False
  Begin DataGrid DGItem
    Left = 6135
    Top = 3285
    Width = 5100
    Height = 2235
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 26
  End
  Begin CommandButton CmdFillLastDetail
    Caption = "Fill &Last Detail"
    BackColor = &HC0FFFF&
    Left = 6090
    Top = 1935
    Width = 1800
    Height = 405
    TabIndex = 25
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &H8080FF&
    UseMaskColor = -1  'True
    Style = 1
  End
  Begin CheckBox ChkParty
    Caption = "Party Name"
    BackColor = &HFFC0C0&
    ForeColor = &H800000&
    Left = 45
    Top = 2070
    Width = 1515
    Height = 255
    TabIndex = 5
    TabStop = 0   'False
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
  Begin DataGrid DGParty
    Left = 1170
    Top = 4950
    Width = 5340
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &H800000&
    Left = 1800
    Top = 2070
    Width = 3990
    Height = 240
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11670
    Height = 480
    TabIndex = 23
  End
  Begin CommandButton Command1
    Caption = "Delete Previous Item rate"
    Left = 1170
    Top = 7575
    Width = 3015
    Height = 375
    Visible = 0   'False
    TabIndex = 22
  End
  Begin DataGrid DGItemCat
    Left = 4230
    Top = 4245
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 16
  End
  Begin MSFlexGrid FGPoint
    Left = 12120
    Top = 6240
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 21
  End
  Begin DataGrid DGRest
    Left = 840
    Top = 4260
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGItemGrp
    Left = 1980
    Top = 3720
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 8205
    Top = 165
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &H800000&
    Left = 1800
    Top = 795
    Width = 3990
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &H800000&
    Left = 1800
    Top = 1815
    Width = 1335
    Height = 240
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 7
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &H800000&
    Left = 4725
    Top = 1560
    Width = 1065
    Height = 240
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    ForeColor = &H800000&
    Left = 1800
    Top = 1305
    Width = 3990
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 40
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &H800000&
    Left = 1800
    Top = 1560
    Width = 1335
    Height = 240
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &H800000&
    Left = 1800
    Top = 1050
    Width = 3990
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdFillDetail
    Caption = "&Fill Detail"
    BackColor = &HC0FFFF&
    Left = 6090
    Top = 795
    Width = 1335
    Height = 525
    TabIndex = 8
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &H8080FF&
    UseMaskColor = -1  'True
    Style = 1
  End
  Begin MSHFlexGrid FGrid
    Left = 0
    Top = 2520
    Width = 11700
    Height = 4830
    TabIndex = 9
  End
  Begin Label Label1
    Caption = "(P)ercent/(A)mount"
    Index = 6
    ForeColor = &H800000&
    Left = 3180
    Top = 1800
    Width = 2010
    Height = 240
    TabIndex = 20
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
    Caption = "Outlet Name"
    Index = 5
    ForeColor = &H800000&
    Left = 330
    Top = 810
    Width = 1185
    Height = 240
    TabIndex = 17
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
    Caption = "Incr. Type"
    Index = 4
    ForeColor = &H800000&
    Left = 330
    Top = 1830
    Width = 975
    Height = 240
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
    Caption = "Incr. Value"
    Index = 3
    ForeColor = &H800000&
    Left = 3570
    Top = 1560
    Width = 1050
    Height = 240
    TabIndex = 13
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
    Caption = "Item Category"
    Index = 2
    ForeColor = &H800000&
    Left = 330
    Top = 1320
    Width = 1410
    Height = 240
    TabIndex = 12
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
    Caption = "App. Date"
    Index = 1
    ForeColor = &H800000&
    Left = 330
    Top = 1575
    Width = 975
    Height = 240
    TabIndex = 11
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
    Caption = "Item Group"
    Index = 0
    ForeColor = &H800000&
    Left = 330
    Top = 1065
    Width = 1080
    Height = 240
    TabIndex = 10
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
End

Attribute VB_Name = "FrmMenuRate"

Private global_84 As Integer
Private global_86 As Integer

Private Sub ChkParty_Click() 'FF181C
  'Data Table: 4BDD8C
  Dim var_88 As Variant
  Dim var_90 As TextBox
  loc_FF163B: If (Me.ChkParty.Value = 1) Then
  loc_FF164B:   Set var_88 = Me.Txt
  loc_FF1651:   Call 0.Method_ChkParty_Click0 (CInt(6), var_90)
  loc_FF1659:   var_90.Enabled = True
  loc_FF1671:   Me.CmdFillLastDetail.Enabled = True
  loc_FF1685:   Me.CmdFillDetail.Enabled = False
  loc_FF169A:   Set var_88 = Me.Txt
  loc_FF16A0:   Call 0.Method_ChkParty_Click0 (CInt(0), var_90)
  loc_FF16A8:   var_90.Enabled = False
  loc_FF16C1:   Set var_88 = Me.Txt
  loc_FF16C7:   Call 0.Method_ChkParty_Click0 (CInt(1), var_90)
  loc_FF16CF:   var_90.Enabled = False
  loc_FF16E8:   Set var_88 = Me.Txt
  loc_FF16EE:   Call 0.Method_ChkParty_Click0 (CInt(2), var_90)
  loc_FF16F6:   var_90.Enabled = False
  loc_FF1705: Else
  loc_FF1712:   Set var_88 = Me.Txt
  loc_FF1718:   Call 0.Method_ChkParty_Click0 (CInt(6), var_90)
  loc_FF1720:   var_90.Enabled = False
  loc_FF1738:   Me.CmdFillLastDetail.Enabled = False
  loc_FF174C:   Me.CmdFillDetail.Enabled = True
  loc_FF1761:   Set var_88 = Me.Txt
  loc_FF1767:   Call 0.Method_ChkParty_Click0 (CInt(0), var_90)
  loc_FF176F:   var_90.Enabled = True
  loc_FF1788:   Set var_88 = Me.Txt
  loc_FF178E:   Call 0.Method_ChkParty_Click0 (CInt(1), var_90)
  loc_FF1796:   var_90.Enabled = True
  loc_FF17AF:   Set var_88 = Me.Txt
  loc_FF17B5:   Call 0.Method_ChkParty_Click0 (CInt(2), var_90)
  loc_FF17BD:   var_90.Enabled = True
  loc_FF17D7:   Set var_88 = Me.Txt
  loc_FF17DD:   Call 0.Method_ChkParty_Click0 (CInt(6), var_90)
  loc_FF17E5:   var_90.Text = vbNullString
  loc_FF17FF:   Set var_88 = Me.Txt
  loc_FF1805:   Call 0.Method_ChkParty_Click0 (CInt(6), var_90)
  loc_FF180D:   var_90.Tag = vbNullString
  loc_FF1819: End If
  loc_FF1819: Exit Sub
End Sub

Private Sub CmdFillLastDetail_Click() 'FF4438
  'Data Table: 4BDD8C
  Dim var_98 As String
  Dim var_90 As Variant
  Dim var_A4 As String
  Dim var_B0 As String
  Dim var_A8 As TextBox
  Dim unk_4BDDA0 As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_FF4277: Set var_8C = Me.Txt
  loc_FF427D: Call 0.Method_CmdFillLastDetail_Click0 (CInt(6))
  loc_FF42A6: If (Proc_6_27_EA565C(var_90, "Party Name") = 0) Then
  loc_FF42A9:   Exit Sub
  loc_FF42AA: End If
  loc_FF42BE: var_98 = "Select Top 1 IR.RestCode+Convert(varchar(11),AppDate,103)+IsNull(IR.Party,'') SearchCode,D.Name As Department,Convert(varchar(11),AppDate,106) Appdate,IsNull(S.Name,'') Party From ItemRate IR Inner Join Depart D On D.Code=IR.RestCode Left Join SubGroup S On S.SubCode=IR.Party Where (IR.LOGSITE_CODE='" & MemVar_1F92078
  loc_FF42D6: Set var_8C = Me.Txt
  loc_FF42DC: Call 0.Method_CmdFillLastDetail_Click0 (CInt(0), var_90, var_9C, "Party Name" & "' or IR.LOGSITE_CODE='HO') And IR.RestCode='")
  loc_FF42E4: var_D8 = var_90.Tag
  loc_FF42ED: var_A4 = -1 & var_9C
  loc_FF42F4: var_B0 = var_A4 & "' And IR.Party='"
  loc_FF4305: Set var_94 = Me.Txt
  loc_FF430B: Call 0.Method_CmdFillLastDetail_Click0 (CInt(6), var_A8, var_AC)
  loc_FF4313: var_B0 = var_A8.Tag
  loc_FF432C: unk_4BDDA0.Execute var_DC & var_AC & "' Order By Appdate desc", var_90, 
  loc_FF4337: Set var_88 = var_DC
  loc_FF4371: If (var_88.RecordCount > 0) Then
  loc_FF43A2:   Call SEARCHBACK(CStr(var_88.Fields.Item("SearchCode").Value))
  loc_FF43B7: Else
  loc_FF43CA:   Me.FGrid.Rows = 1
  loc_FF43F0:   var_D8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_FF43F8:   Set var_90 = Me.FGrid
  loc_FF4425:   Me.FGrid.FixedRows = 1
  loc_FF442D: End If
  loc_FF4432: Set var_88 = Nothing
  loc_FF4435: Exit Sub
End Sub

Private Sub CmdFillDetail_Click() '14786DC
  'Data Table: 4BDD8C
  Dim var_AC As Variant
  Dim var_B8 As String
  Dim var_C8 As String
  Dim var_C0 As Variant
  Dim var_D4 As TextBox
  Dim var_F0 As Variant
  Dim var_88 As Variant
  Dim var_B4 As String
  Dim var_C4 As String
  Dim unk_4BDDA0 As Connection15
  Dim var_9A As Integer
  Dim var_98 As Recordset15
  Dim var_94 As Recordset15
  Dim var_128 As Variant
  Dim var_110 As Variant
  Dim var_100 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_17C As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_148 As Variant
  Dim var_B0 As Fields15
  Dim var_1D0 As Variant
  loc_1477AF8: Set var_88 = Err()
  loc_1477AFE: Call 0.Method_arg_1C (var_8C)
  loc_1477B0A: OnGoto
  loc_1477B4A: If (Proc_6_27_EA565C(var_AC, var_B4, CmdFillDetail_Click300(-180)) = 0) Then
  loc_1477B4D:   Exit Sub
  loc_1477B4E: End If
  loc_1477B5C: Set var_88 = Me.Txt
  loc_1477B62: Call 0.Method_CmdFillDetail_Click0 (CInt(1), var_AC, var_B4)
  loc_1477B6A: MemVar_B4B8C300(MemVar_4013CC) = var_AC.Text
  loc_1477B81: If (var_B4 <> vbNullString) Then
  loc_1477B92:   Set var_88 = Me.Txt
  loc_1477B98:   Call 0.Method_CmdFillDetail_Click0 (CInt(2), var_AC, var_B4)
  loc_1477BA0:   arg_1903 = var_AC.Text
  loc_1477BB7:   If (var_B4 <> vbNullString) Then
  loc_1477BC1:     var_B8 = var_A0 & "Where ItemCatCode='"
  loc_1477BD2:     Set var_88 = Me.Txt
  loc_1477BD8:     Call 0.Method_CmdFillDetail_Click0 (CInt(2), var_AC, var_B4)
  loc_1477BE0:     var_B8 = var_AC.Tag
  loc_1477C01:     Set var_B0 = Me.Txt
  loc_1477C07:     Call 0.Method_CmdFillDetail_Click0 (CInt(1), var_C0)
  loc_1477C30:     Set var_D0 = Me.Txt
  loc_1477C36:     Call 0.Method_CmdFillDetail_Click0 (CInt(0), var_D4)
  loc_1477C4E:     var_A0 = CInt(var_8C) & var_B4 & "' And ItemGroup='" & var_C0.Tag & "' And RestCode='" & var_D4.Tag & "'"
  loc_1477C78:   Else
  loc_1477C90:     Set var_88 = Me.Txt
  loc_1477C96:     Call 0.Method_CmdFillDetail_Click0 (CInt(1), var_AC)
  loc_1477CBF:     Set var_B0 = Me.Txt
  loc_1477CC5:     Call 0.Method_CmdFillDetail_Click0 (CInt(0), var_C0)
  loc_1477CDD:     var_A0 = var_A0 & "Where ItemGroup='" & var_AC.Tag & "' And RestCode='" & var_C0.Tag & "'"
  loc_1477CFA:   End If
  loc_1477CFD: Else
  loc_1477D0B:   Set var_88 = Me.Txt
  loc_1477D11:   Call 0.Method_CmdFillDetail_Click0 (CInt(2), var_AC)
  loc_1477D30:   If (var_AC.Text <> vbNullString) Then
  loc_1477D4B:     Set var_88 = Me.Txt
  loc_1477D51:     Call 0.Method_CmdFillDetail_Click0 (CInt(2), var_AC)
  loc_1477D7A:     Set var_B0 = Me.Txt
  loc_1477D80:     Call 0.Method_CmdFillDetail_Click0 (CInt(0), var_C0)
  loc_1477D98:     var_A0 = var_A0 & "Where ItemCatCode='" & var_AC.Tag & "' And RestCode='" & var_C0.Tag & "'"
  loc_1477DB8:   Else
  loc_1477DC9:     Set var_88 = Me.Txt
  loc_1477DCF:     Call 0.Method_CmdFillDetail_Click0 (CInt(0), var_AC)
  loc_1477DE7:     var_A0 = "Where RestCode='" & var_AC.Tag & "'"
  loc_1477DF8:   End If
  loc_1477DF8: End If
  loc_1477E05: Set var_88 = Me.FGrid
  loc_1477E0B: var_88.Rows = 1
  loc_1477E27: var_B4 = "Select DispCode,Code As ItemCode,Name As ItemName,ItemCatCode,ItemGroup From ItemMast " & var_A0
  loc_1477E3C: var_C4 = var_B4 & " And DispCode <>9999 And IsNull(ActiveYN,'')<>'No' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Code "
  loc_1477E45: unk_4BDDA0.Execute var_C4, var_110, -1
  loc_1477E50: Set var_94 = var_88
  loc_1477E88: Call 0.Method_CmdFillDetail_Click0 (CInt(0), var_AC, var_B4, "Select ItemCode,Rate,AppDate From ItemRate Where RestCode='")
  loc_1477E90: var_110 = var_AC.Tag
  loc_1477E99: var_B8 = -1 & var_B4
  loc_1477EAE: var_C8 = var_B4 & " And DispCode <>9999 And IsNull(ActiveYN,'')<>'No' AND (LOGSITE_CODE='" & "' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By AppDate Desc,ItemCode "
  loc_1477EB7: unk_4BDDA0.Execute var_C8, var_B0, Me.Txt
  loc_1477EC2: Set var_98 = var_B0
  loc_1477EE0: var_9A = 1
  loc_1477EF7: If (var_98.RecordCount <= 0) Then
  loc_1477F0E:   If (var_94.RecordCount > 0) Then
  loc_1477F11:     ' Referenced from: 1478136
  loc_1477F20:     If Not(var_94.EOF) Then
  loc_1477F23:       var_F0 = vbNullString
  loc_1477F2D:       Set var_88 = Me.FGrid
  loc_1477F42:       Set var_118 = Me.FGrid
  loc_1477F49:       var_F0 = CVar(CLng(var_9A)) 'Long
  loc_1477F51:       var_128 = CVar(CLng(0)) 'Long
  loc_1477F5B:       var_110 = CVar(CStr(var_9A)) 'String
  loc_1477F62:       LateIdCallSt
  loc_1477FA6:       var_158 = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("DispCode")), CVar(CLng(1)), CVar(CLng(var_9A)), var_118, CVar(var_94.Fields.Item("DispCode")))) 'String
  loc_1477FAD:       LateIdCallSt
  loc_1477FC3:       var_100 = CVar(CLng(var_9A)) 'Long
  loc_1477FCB:       var_138 = CVar(CLng(2)) 'Long
  loc_1477FFB:       var_158 = CVar(CStr(var_94.Fields.Item("ItemCode").Value)) 'String
  loc_1478002:       LateIdCallSt
  loc_1478043:       var_AC = var_94.Fields.Item("ItemName")
  loc_1478054:       var_158 = CVar(CStr(var_AC.Value)) 'String
  loc_147805B:       LateIdCallSt
  loc_147807F:       Set var_88 = Me.Txt
  loc_1478085:       Call 0.Method_CmdFillDetail_Click0 (CInt(4), var_AC, var_B4, var_118, var_158, CVar(CLng(3)), CVar(CLng(var_9A)))
  loc_147808D:       var_118 = var_AC.Text
  loc_14780A4:       If (var_B4 = "Amount") Then
  loc_14780C6:         Set var_88 = Me.Txt
  loc_14780CC:         Call 0.Method_CmdFillDetail_Click0 (CInt(5), var_AC, var_B4, CVar(CLng(4)), CVar(CLng(var_9A)), var_158)
  loc_14780D4:         var_138 = var_AC.Text
  loc_14780DC:         var_110 = CVar(var_B4) 'String
  loc_14780E3:         LateIdCallSt
  loc_14780F8:       Else
  loc_14780FC:         var_F0 = CVar(CLng(var_9A)) 'Long
  loc_1478104:         var_128 = CVar(CLng(4)) 'Long
  loc_147810D:         var_110 = CVar(CStr(0)) 'String
  loc_1478114:         LateIdCallSt
  loc_147811F:       End If
  loc_1478121:       Set var_118 = Nothing 
  loc_147812B:       var_9A = (var_9A + 1)
  loc_1478131:       var_94.MoveNext
  loc_1478136:       GoTo loc_1477F11
  loc_1478139:     End If
  loc_1478139:   End If
  loc_1478139:   GoTo loc_1478594
  loc_147813C:   ' Referenced from: 1478591
  loc_147813C: End If
  loc_147814B: If Not(var_94.EOF) Then
  loc_147814E:   var_F0 = vbNullString
  loc_1478158:   Set var_88 = Me.FGrid
  loc_147816D:   Set var_16C = Me.FGrid
  loc_1478174:   var_F0 = CVar(CLng(var_9A)) 'Long
  loc_1478186:   var_110 = CVar(CStr(var_9A)) 'String
  loc_147818D:   LateIdCallSt
  loc_14781AC:   var_F0 = "DispCode"
  loc_14781D1:   var_158 = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item(var_F0)), CVar(CLng(1)), CVar(CLng(var_9A)), var_16C, CVar(var_94.Fields.Item(var_F0)), CVar(CLng(0)), var_F0)) 'String
  loc_14781D8:   LateIdCallSt
  loc_14781EE:   var_100 = CVar(CLng(var_9A)) 'Long
  loc_14781F6:   var_138 = CVar(CLng(2)) 'Long
  loc_1478226:   var_158 = CVar(CStr(var_94.Fields.Item("ItemCode").Value)) 'String
  loc_147822D:   LateIdCallSt
  loc_1478247:   var_100 = CVar(CLng(var_9A)) 'Long
  loc_147827F:   var_158 = CVar(CStr(var_94.Fields.Item("ItemName").Value)) 'String
  loc_1478286:   LateIdCallSt
  loc_147829F:   var_98.MoveFirst
  loc_14782D1:   var_AC = var_94.Fields.Item("ItemCode")
  loc_14782E1:   var_158 = "ItemCode='" & var_AC.Value 
  loc_14782EE:   var_B4 = CStr(var_158 & "'")
  loc_14782F5:   var_98.Find var_B4, 0, 1
  loc_1478330:   If ((var_98.EOF = 0) And (var_98.BOF = 0)) Then
  loc_1478341:     Set var_88 = Me.Txt
  loc_1478347:     Call 0.Method_CmdFillDetail_Click0 (CInt(4), var_AC, var_B4, CVar(CLng(3)), var_16C, var_158)
  loc_147834F:     var_138 = var_AC.Text
  loc_1478366:     If (var_B4 = "Amount") Then
  loc_147836D:       var_100 = CVar(CLng(var_9A)) 'Long
  loc_14783AF:       Set var_B0 = Me.Txt
  loc_14783B5:       Call 0.Method_CmdFillDetail_Click0 (CInt(5), var_C0, var_98.Fields.Item("Rate").Value, CVar(CLng(4)), var_100)
  loc_14783C4:       Proc_6_39_E7C810(var_158, CVar(var_C0), var_100)
  loc_14783CC:       var_190 = (var_16C + var_158)
  loc_14783D1:       var_1A0 = CVar(CStr(var_190)) 'String
  loc_14783D8:       LateIdCallSt
  loc_14783F9:     Else
  loc_14783FD:       var_148 = CVar(CLng(var_9A)) 'Long
  loc_1478424:       var_AC = var_98.Fields.Item("Rate")
  loc_147842C:       var_190 = var_AC.Value
  loc_147846C:       Set var_D0 = Me.Txt
  loc_1478472:       Call 0.Method_CmdFillDetail_Click0 (CInt(5), var_D4, var_B4, var_98.Fields.Item("Rate").Value, var_190, CVar(CLng(4)))
  loc_147847A:       var_148 = var_D4.Text
  loc_1478494:       var_17C = ((var_16C * CVar(Val(var_B4))) / 100)
  loc_1478498:       var_1A0 = (var_1A0 + var_17C)
  loc_147849D:       var_1D0 = CVar(CStr(var_1A0)) 'String
  loc_14784A4:       LateIdCallSt
  loc_14784C9:     End If
  loc_14784CC:   Else
  loc_14784DA:     Set var_88 = Me.Txt
  loc_14784E0:     Call 0.Method_CmdFillDetail_Click0 (CInt(4), var_AC, var_B4, var_16C)
  loc_14784E8:     var_1D0 = var_AC.Text
  loc_14784FF:     If (var_B4 = "Amount") Then
  loc_1478506:       var_F0 = CVar(CLng(var_9A)) 'Long
  loc_1478521:       Set var_88 = Me.Txt
  loc_1478527:       Call 0.Method_CmdFillDetail_Click0 (CInt(5), var_AC, var_B4, CVar(CLng(4)))
  loc_147852F:       var_F0 = var_AC.Text
  loc_1478537:       var_110 = CVar(var_B4) 'String
  loc_147853E:       LateIdCallSt
  loc_1478553:     Else
  loc_1478557:       var_F0 = CVar(CLng(var_9A)) 'Long
  loc_147855F:       var_128 = CVar(CLng(4)) 'Long
  loc_1478568:       var_110 = CVar(CStr(0)) 'String
  loc_147856F:       LateIdCallSt
  loc_147857A:     End If
  loc_147857A:   End If
  loc_147857C:   Set var_16C = Nothing 
  loc_1478586:   var_9A = (var_9A + 1)
  loc_147858C:   var_94.MoveNext
  loc_1478591:   GoTo loc_147813C
  loc_1478594:   ' Referenced from: 1478139
  loc_1478594: End If
  loc_147859A: var_8C = var_94.RecordCount
  loc_14785A8: If (var_8C > 0) Then
  loc_14785BE:   Me.FGrid.FixedRows = 1
  loc_14785C6: End If
  loc_14785CC: If (var_9A = 1) Then
  loc_14785E2:   Me.FGrid.Rows = 1
  loc_14785FF:   var_158 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1478607:   Set var_AC = Me.FGrid
  loc_1478636:   Me.FGrid.FixedRows = 1
  loc_147864C:   var_F0 = "* Nothing To Examine *"
  loc_1478651:   var_110 = var_F0
  loc_1478657:   MsgBox(var_110, 0, var_158, var_17C, var_190)
  loc_1478667: End If
  loc_1478667: Exit Sub
  loc_1478670: Set var_88 = Err()
  loc_1478676: Call 0.Method_arg_1C (var_8C, FGrid.DispID_10000, var_158, var_9A, var_16C, var_110)
  loc_1478683: Set var_AC = Err()
  loc_1478689: Call 0.Method_arg_2C (var_B4 & " And DispCode <>9999 And IsNull(ActiveYN,'')<>'No' AND (LOGSITE_CODE='", var_128, var_F0, var_16C)
  loc_14786BA: MsgBox(CVar(CStr(var_8C) & " : " & CStr(var_8C) & " And DispCode <>9999 And IsNull(ActiveYN,'')<>'No' AND (LOGSITE_CODE='"), &H10, "Message ", var_17C, var_190)
  loc_14786DA: Exit Sub
End Sub

Private Sub DGItemGrp_UnknownEvent_9 'F503E4
  'Data Table: 4BDD8C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F502DB: Me.DGItemGrp.Visible = False
  loc_F502FA: If (Me.RecordCount > 0) Then
  loc_F50339:   Set var_B4 = Me.Txt
  loc_F5033F:   Call 0.Method_DGItemGrp_UnknownEvent_90 (CInt(1), var_B8)
  loc_F50347:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F5037A:   var_B0 = Me.Fields.Item("Name")
  loc_F50399:   Set var_B4 = Me.Txt
  loc_F5039F:   Call 0.Method_DGItemGrp_UnknownEvent_90 (CInt(1), var_B8)
  loc_F503A7:   var_B8.Text = CStr(var_B0.Value)
  loc_F503BD: End If
  loc_F503C8: Set var_A8 = Me.Txt
  loc_F503CE: Call 0.Method_DGItemGrp_UnknownEvent_90 (CInt(1))
  loc_F503D6: var_B0.SetFocus
  loc_F503E2: Exit Sub
End Sub

Private Sub DGItemGrp_UnknownEvent_1F 'EA5E04
  'Data Table: 4BDD8C
  Dim var_A8 As Variant
  Dim DGItemGrp_UnknownEvent_1FFF As Double
  loc_EA5D84: Set var_88 = Me.DGItemGrp
  loc_EA5DAE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA5DB6: Set var_BC = Me.DGItemGrp
  loc_EA5DF2: Proc_6_138_106D6F8(Me.DGItemGrp, global_56, CInt(1), Me.FGPoint)
  loc_EA5E00: Exit Sub
  loc_EA5E01: DGItemGrp_UnknownEvent_1FFF = DGItemGrp.DispID_1B
End Sub

Private Sub DGItem_UnknownEvent_9 '10492C0
  'Data Table: 4BDD8C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_1049077: Me.DGItem.Visible = False
  loc_1049096: If (Me.RecordCount > 0) Then
  loc_10490D3:   Set var_B4 = Me.TxtGrid
  loc_10490D9:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10490E1:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_104910A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1049112:   var_EC = CVar(CLng(3)) 'Long
  loc_1049145:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_104914D:   Set var_B8 = Me.FGrid
  loc_1049153:   LateIdCallSt
  loc_1049182:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104918A:   var_EC = CVar(CLng(2)) 'Long
  loc_10491BD:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10491C5:   Set var_B8 = Me.FGrid
  loc_10491CB:   LateIdCallSt
  loc_1049202:   var_EC = CVar(CLng(1)) 'Long
  loc_1049224:   var_B0 = Me.Fields.Item("DispCode")
  loc_1049235:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_104923D:   Set var_B8 = Me.FGrid
  loc_1049243:   LateIdCallSt
  loc_1049267:   Call Proc_69_47_146FE00(0, var_130, var_B8, var_11C, var_EC, CVar(CLng(Me.FGrid.Row)), var_B8)
  loc_104926C: End If
  loc_1049278: Set var_A8 = Me.TxtGrid
  loc_104927E: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_11C, var_EC)
  loc_1049286: var_A4 = var_B0.Visible
  loc_1049298: If (var_12E = &HFF) Then
  loc_10492A4:   Set var_A8 = Me.TxtGrid
  loc_10492AA:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8)
  loc_10492B2:   var_B0.SetFocus
  loc_10492BE: End If
  loc_10492BE: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED4118
  'Data Table: 4BDD8C
  loc_ED407C: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_ED407F:   Call DGItem_UnknownEvent_9()
  loc_ED4084: End If
  loc_ED40A0: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_ED40A3:   Call DGRest_UnknownEvent_9()
  loc_ED40A8: End If
  loc_ED40C4: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_ED40C7:   Call DGItemCat_UnknownEvent_9()
  loc_ED40CC: End If
  loc_ED40E8: If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_ED40EB:   Call DGItemGrp_UnknownEvent_9()
  loc_ED40F0: End If
  loc_ED410C: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_ED410F:   Call DGParty_UnknownEvent_9()
  loc_ED4114: End If
  loc_ED4114: Exit Sub
End Sub

Private Sub Form_Load() '12F2078
  'Data Table: 4BDD8C
  Dim var_98 As TextBox
  Dim var_AC As Variant
  Dim var_C0 As DataGrid
  Dim var_C4 As TextBox
  Dim var_CC As DataGrid
  Dim Me As Recordset15
  Dim var_E0 As String
  Dim var_DC As Variant
  loc_12F1984: On Error Goto loc_12F2071
  loc_12F1993: Set var_8C = Me.Txt
  loc_12F1999: Call 0.Method_Form_LoadC (var_8E, var_86)
  loc_12F19A7: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_12F19BC:   Set var_8C = Me.Txt
  loc_12F19C2:   Call 0.Method_Form_Load0 (var_86, var_98)
  loc_12F19CA:   var_98.BackColor = -2147483643
  loc_12F19E5:   Set var_8C = Me.Txt
  loc_12F19EB:   Call 0.Method_Form_Load0 (var_86, var_98)
  loc_12F19F3:   var_98.ForeColor = &HC00000
  loc_12F1A0E:   Set var_8C = Me.Txt
  loc_12F1A14:   Call 0.Method_Form_Load0 (var_86, var_98)
  loc_12F1A1C:   var_98.BackColor = -2147483643
  loc_12F1A37:   Set var_8C = Me.Txt
  loc_12F1A3D:   Call 0.Method_Form_Load0 (var_86, var_98)
  loc_12F1A45:   var_98.ForeColor = &HC00000
  loc_12F1A54: Next var_92 'Integer
  loc_12F1A67: Set var_8C = Me.Txt
  loc_12F1A6D: Call 0.Method_Form_Load0 (CInt(0), var_98)
  loc_12F1A8C: Me.DGRest.Left = CVar(var_98.Left)
  loc_12F1AA8: Set var_C0 = Me.Txt
  loc_12F1AAE: Call 0.Method_Form_Load0 (CInt(0), var_C4)
  loc_12F1AC9: Set var_8C = Me.Txt
  loc_12F1ACF: Call 0.Method_Form_Load0 (CInt(0), var_98)
  loc_12F1AE7: var_AC = CVar(((var_98.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_12F1AF6: Me.DGRest.Top = CVar(var_98.Left)
  loc_12F1B16: Set var_8C = Me.Txt
  loc_12F1B1C: Call 0.Method_Form_Load0 (CInt(2), var_98)
  loc_12F1B3B: Me.DGItemCat.Left = CVar(var_98.Left)
  loc_12F1B57: Set var_C0 = Me.Txt
  loc_12F1B5D: Call 0.Method_Form_Load0 (CInt(2), var_C4)
  loc_12F1B78: Set var_8C = Me.Txt
  loc_12F1B7E: Call 0.Method_Form_Load0 (CInt(2), var_98)
  loc_12F1B96: var_AC = CVar(((var_98.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_12F1BA5: Me.DGItemCat.Top = CVar(var_98.Left)
  loc_12F1BC5: Set var_8C = Me.Txt
  loc_12F1BCB: Call 0.Method_Form_Load0 (CInt(1), var_98)
  loc_12F1BEA: Me.DGItemGrp.Left = CVar(var_98.Left)
  loc_12F1C06: Set var_C0 = Me.Txt
  loc_12F1C0C: Call 0.Method_Form_Load0 (CInt(1), var_C4)
  loc_12F1C27: Set var_8C = Me.Txt
  loc_12F1C2D: Call 0.Method_Form_Load0 (CInt(1), var_98)
  loc_12F1C45: var_AC = CVar(((var_98.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_12F1C54: Me.DGItemGrp.Top = CVar(var_98.Left)
  loc_12F1C74: Set var_8C = Me.Txt
  loc_12F1C7A: Call 0.Method_Form_Load0 (CInt(6), var_98)
  loc_12F1C99: Me.DGParty.Left = CVar(var_98.Left)
  loc_12F1CB5: Set var_C0 = Me.Txt
  loc_12F1CBB: Call 0.Method_Form_Load0 (CInt(6), var_C4)
  loc_12F1CD6: Set var_8C = Me.Txt
  loc_12F1CDC: Call 0.Method_Form_Load0 (CInt(6), var_98)
  loc_12F1CF4: var_AC = CVar(((var_98.Top + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_12F1CFD: Set var_CC = Me.DGParty
  loc_12F1D03: var_CC.Top = CVar(var_98.Left)
  loc_12F1D1F: Set global_76 = New 
  loc_12F1D31: Me.var_CC.CursorLocation = 3
  loc_12F1D4D: var_AC = "Select I.Code,I.Name as Name,I.DispCode,I.RestCode OutletCode From ItemMast I Where I.Type='Finish' And I.ItemType<>'Store' And I.DispCode <>9999 and I.ActiveYN<>'No' Order by I.Name"
  loc_12F1D59: Me.Open var_AC, CVar(MemVar_1F92044), 3
  loc_12F1D67: CVarUnk
  loc_12F1D6C: VerifyVarObj
  loc_12F1D72: Set var_8C = Me.DGItem
  loc_12F1D78: LateIdStAd
  loc_12F1D90: Set global_60 = New 
  loc_12F1DA2: Me.DGItem.CursorLocation = 3
  loc_12F1DCC: var_DC = CVar("Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' Order By Name") 'String
  loc_12F1DD6: Me.Open var_DC, CVar(MemVar_1F92044), 2
  loc_12F1DEA: CVarUnk
  loc_12F1DEF: VerifyVarObj
  loc_12F1DF5: Set var_8C = Me.DGRest
  loc_12F1DFB: LateIdStAd
  loc_12F1E13: Set global_52 = New 
  loc_12F1E25: Me.DGRest.CursorLocation = 3
  loc_12F1E59: Me.Open CVar("Select Code,Name,RestCode From ItemCatMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')"), CVar(MemVar_1F92044), 2
  loc_12F1E6D: CVarUnk
  loc_12F1E72: VerifyVarObj
  loc_12F1E78: Set var_8C = Me.DGItemCat
  loc_12F1E7E: LateIdStAd
  loc_12F1EA8: Me.DGItemCat.CursorLocation = 3
  loc_12F1ED2: var_DC = CVar("Select Code,Name,RestCode From ItemGrp where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_12F1EDC: Me.Open var_DC, CVar(MemVar_1F92044), 2
  loc_12F1EF0: CVarUnk
  loc_12F1EF5: VerifyVarObj
  loc_12F1EFB: Set var_8C = Me.DGItemGrp
  loc_12F1F01: LateIdStAd
  loc_12F1F2B: Me.DGItemGrp.CursorLocation = 3
  loc_12F1F55: var_DC = CVar("Select SubCode as Code,Name,Discount,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate') Order By Name") 'String
  loc_12F1F73: CVarUnk
  loc_12F1F78: VerifyVarObj
  loc_12F1F7E: Set var_8C = Me.DGParty
  loc_12F1F84: LateIdStAd
  loc_12F1FAE: Me.DGParty.CursorLocation = 3
  loc_12F1FD1: var_E0 = "Select Distinct IR.RestCode+Convert(varchar(11),AppDate,103)+IsNull(IR.Party,'') SearchCode,D.Name As Department,Convert(varchar(11),AppDate,106) Appdate,IsNull(S.Name,'') Party From ItemRate IR Inner Join Depart D On D.Code=IR.RestCode Left Join SubGroup S On S.SubCode=IR.Party Inner Join ItemMast I On I.Code=IR.ItemCode And I.RestCode=IR.RestCode Where (IR.LOGSITE_CODE='" & MemVar_1F92078
  loc_12F1FD8: var_DC = CVar("Select SubCode as Code,Name,Discount,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or IR.LOGSITE_CODE='HO')") 'String
  loc_12F1FE2: r_DC, CVar(MemVar_1F92044), 3 var_DC, CVar(MemVar_1F92044), 2
  loc_12F2010: Call Proc_69_49_F4722C(Proc_5_1_100CB50("INI", Me, New, 3, -1, Me, New, 1), -1, Me, New)
  loc_12F201B: Call Proc_69_51_101C6D4(3, -1)
  loc_12F2038: Proc_6_23_DFBA28(Me, 7590, 8600)
  loc_12F2059: Call 0.Method_Form_Load0 (CInt(3), var_98, CStr(MemVar_1F920EC))
  loc_12F2061: var_98.Text = Me.Txt
  loc_12F2070: Exit Sub
  loc_12F2071: ' Referenced from: 12F1984
  loc_12F2071: Proc_6_60_E62BC4(global_52)
  loc_12F2076: Exit Sub
End Sub

Private Sub Form_Resize() 'DFD93C
  'Data Table: 4BDD8C
  Dim var_B01 As Integer
  loc_DFD938: Exit Sub
  loc_DFD939: var_B01 = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6BC58
  'Data Table: 4BDD8C
  loc_E6BC07: Set global_76 = Nothing
  loc_E6BC19: Set global_60 = Nothing
  loc_E6BC2B: Set global_52 = Nothing
  loc_E6BC3D: Set global_56 = Nothing
  loc_E6BC4F: Set global_64 = Nothing
  loc_E6BC56: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E0044C
  'Data Table: 4BDD8C
  loc_E00440: On Error Goto loc_E00444
  loc_E00443: Exit Sub
  loc_E00444: ' Referenced from: E00440
  loc_E00444: Proc_6_60_E62BC4()
  loc_E00449: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F4BB04
  'Data Table: 4BDD8C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4B9FB: Me.DGParty.Visible = False
  loc_F4BA1A: If (Me.RecordCount > 0) Then
  loc_F4BA59:   Set var_B4 = Me.Txt
  loc_F4BA5F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(6), var_B8)
  loc_F4BA67:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4BA9A:   var_B0 = Me.Fields.Item("Name")
  loc_F4BAB9:   Set var_B4 = Me.Txt
  loc_F4BABF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(6), var_B8)
  loc_F4BAC7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4BADD: End If
  loc_F4BAE8: Set var_A8 = Me.Txt
  loc_F4BAEE: Call 0.Method_DGParty_UnknownEvent_90 (CInt(6))
  loc_F4BAF6: var_B0.SetFocus
  loc_F4BB02: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_1F 'EA6114
  'Data Table: 4BDD8C
  Dim var_A8 As Variant
  Dim DGParty_UnknownEvent_1FFF As Double
  loc_EA6094: Set var_88 = Me.DGParty
  loc_EA60BE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA60C6: Set var_BC = Me.DGParty
  loc_EA6102: Proc_6_138_106D6F8(Me.DGParty, global_64, CInt(6), Me.FGPoint)
  loc_EA6110: Exit Sub
  loc_EA6111: DGParty_UnknownEvent_1FFF = DGParty.DispID_1B
End Sub

Private Sub FGrid_UnknownEvent_0 'E5E2B4
  'Data Table: 4BDD8C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5E27F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5E292: Set var_A8 = Me.TxtGrid
  loc_E5E298: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5E2A0: var_AC.Visible = False
  loc_E5E2AC: Call Proc_69_50_F6F41C()
  loc_E5E2B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67CD0
  'Data Table: 4BDD8C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67C8C: Set var_88 = Me.TxtGrid
  loc_E67C92: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E67CAC: If (var_8C.Visible = 0) Then
  loc_E67CC5:   Me.FGrid.BackColorSel = CVar(CLng(global_68))
  loc_E67CCD: End If
  loc_E67CCD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1F090
  'Data Table: 4BDD8C
  loc_E1F087: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F08F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE4FC
  'Data Table: 4BDD8C
  loc_DFE4F4: Call Proc_69_46_DFB2D8()
  loc_DFE4F9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '116CF7C
  'Data Table: 4BDD8C
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As Variant
  Dim KeyCode As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_116CBB4: Set var_88 = Me.TopCtrl1
  loc_116CBBA: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_116CBD3: If (CStr() = "Browse") Then
  loc_116CBD6:   Exit Sub
  loc_116CBD7: End If
  loc_116CC4B: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_116CC56:   var_9C = "+{Tab}"
  loc_116CC5C:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_116CC66:   KeyCode = 0
  loc_116CC6C: Else
  loc_116CCC3:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_116CCC6:   End If
  loc_116CCC6: End If
  loc_116CCCC: global_84 = KeyCode
  loc_116CCF2: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_116CD16: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_116CD2C:   var_DC = CLng(Me.FGrid.Col)
  loc_116CD3C:   If (var_DC = CLng(1)) Then
  loc_116CD5A:     If (Me.ChkParty.Value <> 1) Then
  loc_116CD5D:       Exit Sub
  loc_116CD5E:     End If
  loc_116CD71:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116CD89:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116CD8E:     var_11C = vbNullString
  loc_116CD98:     Set var_B4 = Me.FGrid
  loc_116CD9E:     LateIdCallSt
  loc_116CDB9:   Else
  loc_116CDC0:     If (var_DC = CLng(3)) Then
  loc_116CDDE:       If (Me.ChkParty.Value <> 1) Then
  loc_116CDE1:         Exit Sub
  loc_116CDE2:       End If
  loc_116CDF5:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116CE0D:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116CE12:       var_11C = vbNullString
  loc_116CE1C:       Set var_B4 = Me.FGrid
  loc_116CE22:       LateIdCallSt
  loc_116CE4D:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116CE55:       var_FC = CVar(CLng(2)) 'Long
  loc_116CE5A:       var_11C = vbNullString
  loc_116CE64:       Set var_A0 = Me.FGrid
  loc_116CE6A:       LateIdCallSt
  loc_116CE8F:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116CE97:       var_FC = CVar(CLng(1)) 'Long
  loc_116CE9C:       var_11C = vbNullString
  loc_116CEA6:       Set var_A0 = Me.FGrid
  loc_116CEAC:       LateIdCallSt
  loc_116CED1:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116CED9:       var_FC = CVar(CLng(4)) 'Long
  loc_116CEDE:       var_11C = vbNullString
  loc_116CEE8:       Set var_A0 = Me.FGrid
  loc_116CEEE:       LateIdCallSt
  loc_116CF03:     Else
  loc_116CF0A:       If (var_DC = CLng(4)) Then
  loc_116CF20:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116CF38:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116CF3D:         var_11C = vbNullString
  loc_116CF47:         Set var_B4 = Me.FGrid
  loc_116CF4D:         LateIdCallSt
  loc_116CF65:       End If
  loc_116CF65:     End If
  loc_116CF65:   End If
  loc_116CF65: End If
  loc_116CF6B: If (KeyCode = &HD) Then
  loc_116CF73:   global_86 = 0
  loc_116CF76: End If
  loc_116CF78: KeyCode = 0
  loc_116CF7B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0FCF8
  'Data Table: 4BDD8C
  loc_E0FCE9: Call FGrid_UnknownEvent_C()
  loc_E0FCF3: global_86 = 0
  loc_E0FCF6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '10CA8F0
  'Data Table: 4BDD8C
  Dim var_88 As Variant
  Dim var_9C As Long
  Dim var_B4 As String
  Dim var_CE As Integer
  Dim var_B8 As TextBox
  Dim var_C8 As TextBox
  loc_10CA60F: var_9C = CLng(Me.FGrid.Col)
  loc_10CA61F: If (var_9C = CLng(3)) Then
  loc_10CA63D:   If (Me.ChkParty.Value <> 1) Then
  loc_10CA640:     Exit Sub
  loc_10CA641:   End If
  loc_10CA672:   var_CE = Asc(CStr(Ucase(Chr(CLng(KeyCode)))))
  loc_10CA6A8:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0)
  loc_10CA6C7: Else
  loc_10CA6CE:   If (var_9C = CLng(1)) Then
  loc_10CA6EC:     If (Me.ChkParty.Value <> 1) Then
  loc_10CA6EF:       Exit Sub
  loc_10CA6F0:     End If
  loc_10CA70B:     If (((KeyCode >= &H41) And (KeyCode <= &H5A)) Or ((KeyCode >= &H61) And (KeyCode <= &H7A))) Then
  loc_10CA720:       Me.FGrid.Col = CVar(CLng(3))
  loc_10CA728:     End If
  loc_10CA766:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, KeyCode)
  loc_10CA77B:   Else
  loc_10CA782:     If (var_9C = CLng(4)) Then
  loc_10CA789:       Set var_C8 = Me.FGrid
  loc_10CA7AD:       var_B4 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_10CA7B6:       var_CE = Asc(var_B4)
  loc_10CA7DA:       Set var_B8 = var_C8
  loc_10CA7EC:       Proc_6_63_110ABA4(Me, var_B8, Me.TxtGrid, 0, &HFF, var_CE, 0)
  loc_10CA814:       Set var_88 = Me.TxtGrid
  loc_10CA81A:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_B4, var_CE, 0)
  loc_10CA83B:       If (Len(var_B4) <= 1) Then
  loc_10CA84A:         Set var_88 = Me.TxtGrid
  loc_10CA850:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_B4)
  loc_10CA858:         0 = var_B8.Text
  loc_10CA869:         Set var_BC = Me.TxtGrid
  loc_10CA86F:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8, var_B4)
  loc_10CA877:         var_C8.Text = var_B8.Text
  loc_10CA88A:       End If
  loc_10CA896:       Set var_88 = Me.TxtGrid
  loc_10CA89C:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_10CA8B6:       Set var_BC = Me.TxtGrid
  loc_10CA8BC:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_10CA8C4:       var_C8.SelStart = Len(var_B8.Text)
  loc_10CA8D7:     End If
  loc_10CA8D7:   End If
  loc_10CA8D7: End If
  loc_10CA8E1: If (CLng(KeyCode) <> &HD) Then
  loc_10CA8E9:   global_86 = &HFF
  loc_10CA8EC: End If
  loc_10CA8EC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'E65F0C
  'Data Table: 4BDD8C
  Dim var_88 As MSHFlexGrid
  loc_E65EC4: Set var_88 = Me.TopCtrl1
  loc_E65ECA: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_E65EE3: If (CStr() = "Browse") Then
  loc_E65EE6:   Exit Sub
  loc_E65EE7: End If
  loc_E65F04: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_E65F07:   Exit Sub
  loc_E65F08: End If
  loc_E65F08: Exit Sub
  loc_E65F09: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9BA40
  'Data Table: 4BDD8C
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9B9E3: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9B9FB: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9BA23: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9BA3E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1F270
  'Data Table: 4BDD8C
  loc_E1F267: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1F26F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1F1D0
  'Data Table: 4BDD8C
  loc_E1F1C7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F1CF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E432A8
  'Data Table: 4BDD8C
  Dim var_8C As TextBox
  loc_E4327C: Call Proc_69_50_F6F41C()
  loc_E4328C: Set var_88 = Me.TxtGrid
  loc_E43292: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4329A: var_8C.Visible = False
  loc_E432A6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E7E07C
  'Data Table: 4BDD8C
  Dim var_94 As TextBox
  loc_E7E018: On Error Goto loc_E7E074
  loc_E7E03E: Call Proc_69_49_F4722C(Proc_5_1_100CB50("ADD", Me))
  loc_E7E049: Call Proc_69_48_F1E4BC(global_72)
  loc_E7E059: Set var_8C = Me.Txt
  loc_E7E05F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3))
  loc_E7E067: var_94.SetFocus
  loc_E7E073: Exit Sub
  loc_E7E074: ' Referenced from: E7E018
  loc_E7E074: Proc_6_60_E62BC4(var_94)
  loc_E7E079: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18438
  'Data Table: 4BDD8C
  loc_E1842D: Me.Global.Unload Me
  loc_E18435: Exit Sub
  loc_E18436: Set arg_1400 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F23200
  'Data Table: 4BDD8C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F23100: On Error Goto loc_F23198
  loc_F2310C: var_88 = Me.RecordCount
  loc_F2311A: If (var_88 <= 0) Then
  loc_F23123:   var_B8 = "Information"
  loc_F2313E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F2314E:   Exit Sub
  loc_F2314F: End If
  loc_F23156: var_10C = "Select Distinct IR.RestCode+Convert(varchar(11),AppDate,103)+IsNull(IR.Party,'') SearchCode,D.Name As Department,Convert(varchar(11),AppDate,106) Appdate,IsNull(S.Name,'') Party From ItemRate IR Inner Join Depart D On D.Code=IR.RestCode Left Join SubGroup S On S.SubCode=IR.Party Where (IR.LOGSITE_CODE='" & MemVar_1F92078
  loc_F2315D: MemVar_1F920E4 = var_10C & "' or IR.LOGSITE_CODE='HO')"
  loc_F2316A: MemVar_1F92120 = Me
  loc_F23171: var_10C = "3000,1200,3000"
  loc_F23177: Proc_6_126_F1BCC0(var_10C)
  loc_F23192: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F23197: Exit Sub
  loc_F23198: ' Referenced from: F23100
  loc_F231A0: Set var_110 = Err()
  loc_F231A6: Call 0.Method_arg_1C (var_88)
  loc_F231B7: If (var_88 <> 0) Then
  loc_F231C2:   Set var_110 = Err()
  loc_F231C8:   Call 0.Method_arg_2C (var_10C)
  loc_F231E9:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F231FC: End If
  loc_F231FC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E65384
  'Data Table: 4BDD8C
  Dim Me As Recordset15
  loc_E6533B: Me.Requery -1
  loc_E6534B: Me.Requery -1
  loc_E6535B: Me.Requery -1
  loc_E6536B: Me.Requery -1
  loc_E6537B: Me.Requery -1
  loc_E65380: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1351EC8
  'Data Table: 4BDD8C
  Dim var_8C As Variant
  Dim unk_4BDDA0 As Connection15
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_98 As TextBox
  Dim var_10C As TextBox
  Dim var_1BC As Variant
  Dim var_F8 As String
  Dim var_100 As String
  Dim var_114 As String
  Dim var_118 As String
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_184 As String
  Dim var_1A8 As Recordset15
  Dim var_1AC As Fields15
  Dim var_1C0 As Field20
  Dim var_31C As Double
  Dim var_194 As Variant
  Dim var_94 As Variant
  Dim var_1A4 As Variant
  Dim var_108 As TextBox
  Dim var_11C As Variant
  Dim var_FC As String
  Dim var_110 As String
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_260 As Variant
  Dim var_140 As Variant
  Dim Me As Recordset15
  loc_1351740: On Error Goto loc_1351E3E
  loc_135175E: If (Me.ChkParty.Value = 1) Then
  loc_135176C:   Set var_8C = Me.Txt
  loc_1351772:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6))
  loc_1351783:   Set var_98 = var_94
  loc_135179B:   If (Proc_6_27_EA565C(var_98, "Party Name") = 0) Then
  loc_135179E:     Exit Sub
  loc_135179F:   End If
  loc_135179F: End If
  loc_13517A8: unk_4BDDA0.BeginTrans var_A0
  loc_13517B1: var_88 = CByte(1) 'Byte
  loc_13517DA: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_B4 'Integer
  loc_13517E4:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_13517EC:   var_E4 = CVar(CLng(2)) 'Long
  loc_13517FB:   var_B0 = Me.FGrid.TextMatrix)
  loc_1351815:   Set var_94 = Me.Txt
  loc_135181B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_FC, var_B0)
  loc_1351823:   var_E4 = var_98.Tag
  loc_1351836:   Set var_108 = Me.Txt
  loc_135183C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_10C, var_110)
  loc_1351844:   var_C4 = var_10C.Tag
  loc_1351854:   Set var_11C = Me.Txt
  loc_135185A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_120)
  loc_1351869:   Proc_6_7_F25D88(var_140, CVar(var_120))
  loc_1351874:   var_1BC = 0
  loc_13518B1:   var_118 = "Select count(*) From ItemRate Where ItemCode='" & CStr(var_B0) & "' And RestCode='" & var_FC & "' And Party='" & var_110
  loc_13518CB:   var_184 = CStr(CVar(var_118 & "' And AppDate=") & var_140 & vbNullString)
  loc_13518D5:   unk_4BDDA0.Execute var_184, var_1A4, -1
  loc_13518DD:   var_1A8 = var_1A8.Fields
  loc_13518E5:   var_1BC = var_1AC.Item(var_1AC)
  loc_13518ED:   var_1C0 = var_1C0.Value
  loc_135193A:   If (var_1D0 > 0) Then
  loc_135196B:     var_31C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_135197C:     Proc_6_7_F25D88(var_140, Date, var_31C, CVar(CLng(4)))
  loc_1351985:     var_194 = CVar(CLng(var_86)) 'Long
  loc_135199C:     var_1A4 = Me.FGrid.TextMatrix)
  loc_13519B6:     Set var_98 = Me.Txt
  loc_13519BC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_108, var_118, var_1A4, CVar(CLng(2)))
  loc_13519C4:     var_194 = var_108.Tag
  loc_13519D7:     Set var_10C = Me.Txt
  loc_13519DD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_11C, var_184, CVar(CLng(var_86)))
  loc_13519E5:     var_1D0 = var_11C.Tag
  loc_13519F5:     Set var_120 = Me.Txt
  loc_13519FB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1A8)
  loc_1351A0A:     Proc_6_7_F25D88(var_2C0, CVar(var_1A8))
  loc_1351A2F:     var_100 = "Update ItemRate Set Rate=" & CStr(var_31C) & ",Site_Code='"
  loc_1351A44:     var_114 = var_100 & MemVar_1F92070 & "',U_name='" & MemVar_1F920C8
  loc_1351A4B:     var_150 = CVar(var_114 & "',U_EntDt=") 'String
  loc_1351A81:     var_260 = var_150 & var_140 & ",U_AE='E' Where ItemCode='" & CVar(CStr(var_1A4)) & "' And RestCode='" & CVar(var_118) & "' And Party='" 
  loc_1351AB2:     unk_4BDDA0.Execute CStr(var_260 & CVar(var_184) & "' And AppDate=" & var_2C0 & vbNullString), var_314, -1
  loc_1351B0D:   Else
  loc_1351B11:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_1351B28:     var_B0 = Me.FGrid.TextMatrix)
  loc_1351B42:     Set var_94 = Me.Txt
  loc_1351B48:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_100, var_B0, CVar(CLng(2)))
  loc_1351B50:     var_C4 = var_98.Tag
  loc_1351B63:     Set var_108 = Me.Txt
  loc_1351B69:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_10C, var_114)
  loc_1351B71:     var_1AC = var_10C.Tag
  loc_1351B8B:     Set var_11C = Me.FGrid
  loc_1351BA4:     var_31C = Val(CStr(var_11C.TextMatrix)))
  loc_1351BB2:     Set var_120 = Me.Txt
  loc_1351BB8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1A8, var_31C, CVar(CLng(4)))
  loc_1351BC7:     Proc_6_7_F25D88(var_150, CVar(var_1A8), CVar(CLng(var_86)))
  loc_1351BDA:     Proc_6_7_F25D88(var_260, Date)
  loc_1351BFA:     var_F8 = CStr(var_B0)
  loc_1351BFE:     var_FC = "Insert Into Itemrate(ItemCode,RestCode,Party,Rate,AppDate,Site_Code,U_Name,U_EntDt,U_AE,lOGSITE_CODE)" & " Values('" & var_F8
  loc_1351C56:     var_1F0 = CVar(var_FC & "','" & var_100 & "','" & var_114 & "'," & CStr(var_31C) & ",") & var_150 & ",'" & CVar(MemVar_1F92070) & "','" 
  loc_1351C9A:     unk_4BDDA0.Execute CStr(var_1F0 & CVar(MemVar_1F920C8) & "'," & var_260 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_2C0, -1
  loc_1351CF8:   End If
  loc_1351CFB: Next var_B4 'Integer
  loc_1351D06: unk_4BDDA0.CommitTrans
  loc_1351D0F: var_88 = CByte(0) 'Byte
  loc_1351D1E: Me.Requery -1
  loc_1351D31: Set var_8C = Me.Txt
  loc_1351D37: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94)
  loc_1351D4F: Set var_98 = Me.Txt
  loc_1351D55: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_1351D79: var_140 = Format(CVar(var_108), "dd/mm/yyyy")
  loc_1351D8C: Set var_10C = Me.Txt
  loc_1351D92: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_11C, var_F8)
  loc_1351D9A: 1 = var_11C.Tag
  loc_1351DB5: var_150 = CVar(var_94.Tag) 'String
  loc_1351DBB: var_160 = (var_150 + var_140)
  loc_1351DC5: var_1A4 = (CVar(var_FC & "','" & var_100 & "','" & var_114 & "'," & CStr(var_31C) & ",") + CVar(var_F8))
  loc_1351DE0: Me.Find CStr("SearchCode ='" & CVar(var_FC & "','" & var_100 & "','" & var_114 & "'," & CStr(var_31C) & ",") & var_150 & ",'" & "'"), 0, 1
  loc_1351E2D: Call Proc_69_49_F4722C(Proc_5_1_100CB50("INI", Me, global_72), var_F4)
  loc_1351E38: Call Proc_69_45_121CEEC(1)
  loc_1351E3D: Exit Sub
  loc_1351E3E: ' Referenced from: 1351740
  loc_1351E47: If (CInt(var_88) = 1) Then
  loc_1351E50:   unk_4BDDA0.RollbackTrans
  loc_1351E55: End If
  loc_1351E5D: Set var_8C = Err()
  loc_1351E63: Call 0.Method_arg_1C (var_A0)
  loc_1351E70: Set var_94 = Err()
  loc_1351E76: Call 0.Method_arg_2C (var_F8)
  loc_1351EA7: MsgBox(CVar(CStr(var_A0) & " : " & var_F8), &H10, "Message ", var_140, var_150)
  loc_1351EC7: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '13350EC
  'Data Table: 4BDD8C
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_1334936: Set var_88 = Me.Txt
  loc_133493C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_133494A: Proc_6_74_E226B0(var_8C)
  loc_1334956: Call Proc_69_50_F6F41C(var_8C)
  loc_133495E: var_92 = Index
  loc_1334969: If (var_92 = CInt(0)) Then
  loc_1334983:   If (Me.RecordCount > 0) Then
  loc_1334991:     Set var_8C = Me.FGPoint
  loc_13349A9:     Proc_6_137_1193554(Me.DGRest, global_60, Index)
  loc_13349B7:   End If
  loc_1334A05:   Set var_88 = Me.Txt
  loc_1334A0B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1334A13:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1334A2B:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1334A2E:     Exit Sub
  loc_1334A2F:   End If
  loc_1334A3C:   Set var_88 = Me.Txt
  loc_1334A42:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1334A4A:   var_A0 = var_8C.Text
  loc_1334A52:   var_D4 = CVar(var_A0) 'String
  loc_1334A97:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1334AA0:     Me.MoveFirst
  loc_1334AC5:     Set var_88 = Me.Txt
  loc_1334ACB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1334AD3:     0 = var_8C.Text
  loc_1334AE1:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_1334AF7:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_1334B0F:   End If
  loc_1334B12: Else
  loc_1334B1A:   If (var_92 = CInt(2)) Then
  loc_1334B2C:     Me.Filter = 0
  loc_1334B42:     Set var_88 = Me.Txt
  loc_1334B48:     Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_1334B50:     var_A0 = var_8C.Tag
  loc_1334B6A:     Me.Filter = CVar("RestCode='" & var_A0 & "'")
  loc_1334B97:     If (Me.RecordCount > 0) Then
  loc_1334BA5:       Set var_8C = Me.FGPoint
  loc_1334BBD:       Proc_6_137_1193554(Me.DGItemCat, global_52)
  loc_1334BCB:     End If
  loc_1334C19:     Set var_88 = Me.Txt
  loc_1334C1F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1334C27:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1334C3F:     If (Index Or (var_A0 = vbNullString)) Then
  loc_1334C42:       Exit Sub
  loc_1334C43:     End If
  loc_1334C50:     Set var_88 = Me.Txt
  loc_1334C56:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1334C5E:     var_A0 = var_8C.Text
  loc_1334C66:     var_D4 = CVar(var_A0) 'String
  loc_1334CAB:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1334CB4:       Me.MoveFirst
  loc_1334CD9:       Set var_88 = Me.Txt
  loc_1334CDF:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1334CE7:       0 = var_8C.Text
  loc_1334CF5:       Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_1334D0B:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1334D23:     End If
  loc_1334D26:   Else
  loc_1334D2E:     If (var_92 = CInt(1)) Then
  loc_1334D40:       Me.Filter = 0
  loc_1334D56:       Set var_88 = Me.Txt
  loc_1334D5C:       Call 0.Method_Txt_GotFocus0 (CInt(0), var_8C)
  loc_1334D64:       var_A0 = var_8C.Tag
  loc_1334D7E:       Me.Filter = CVar("RestCode='" & var_A0 & "'")
  loc_1334DAB:       If (Me.RecordCount > 0) Then
  loc_1334DB9:         Set var_8C = Me.FGPoint
  loc_1334DD1:         Proc_6_137_1193554(Me.DGItemGrp, global_56)
  loc_1334DDF:       End If
  loc_1334E2D:       Set var_88 = Me.Txt
  loc_1334E33:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1334E3B:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1334E53:       If (Index Or (var_A0 = vbNullString)) Then
  loc_1334E56:         Exit Sub
  loc_1334E57:       End If
  loc_1334E64:       Set var_88 = Me.Txt
  loc_1334E6A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1334E72:       var_A0 = var_8C.Text
  loc_1334E7A:       var_D4 = CVar(var_A0) 'String
  loc_1334EBF:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1334EC8:         Me.MoveFirst
  loc_1334EED:         Set var_88 = Me.Txt
  loc_1334EF3:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1334EFB:         0 = var_8C.Text
  loc_1334F09:         Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_1334F1F:         Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1334F37:       End If
  loc_1334F3A:     Else
  loc_1334F42:       If (var_92 = CInt(6)) Then
  loc_1334F5C:         If (Me.RecordCount > 0) Then
  loc_1334F6A:           Set var_8C = Me.FGPoint
  loc_1334F82:           Proc_6_137_1193554(Me.DGParty, global_64)
  loc_1334F90:         End If
  loc_1334FDE:         Set var_88 = Me.Txt
  loc_1334FE4:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1334FEC:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1335004:         If (Index Or (var_A0 = vbNullString)) Then
  loc_1335007:           Exit Sub
  loc_1335008:         End If
  loc_1335015:         Set var_88 = Me.Txt
  loc_133501B:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1335023:         var_A0 = var_8C.Text
  loc_133502B:         var_D4 = CVar(var_A0) 'String
  loc_1335070:         If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1335079:           Me.MoveFirst
  loc_133509E:           Set var_88 = Me.Txt
  loc_13350A4:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_13350AC:           0 = var_8C.Text
  loc_13350BA:           Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_13350D0:           Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_13350E8:         End If
  loc_13350E8:       End If
  loc_13350E8:     End If
  loc_13350E8:   End If
  loc_13350E8: End If
  loc_13350E8: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12208D4
  'Data Table: 4BDD8C
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_12203F2: If (CLng(Shift) = &H1B) Then
  loc_12203F5:   Call Proc_69_50_F6F41C()
  loc_12203FA:   Exit Sub
  loc_12203FB: End If
  loc_12203FE: var_86 = KeyCode
  loc_1220409: If (var_86 = CInt(0)) Then
  loc_1220429:   Set var_9C = Me.FGPoint
  loc_1220434:   Set var_98 = Nothing
  loc_1220462:   Proc_6_69_134A198(Me.DGRest, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_12204D1:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12204F7:     Proc_6_138_106D6F8(Me.DGRest, global_60, KeyCode, Me.FGPoint, 1)
  loc_1220505:   End If
  loc_1220508: Else
  loc_1220510:   If (var_86 = CInt(2)) Then
  loc_122053B:     Set var_98 = Nothing
  loc_1220569:     Proc_6_69_134A198(Me.DGItemCat, Me.Txt, KeyCode, global_52, Shift, 0, 1)
  loc_12205D8:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12205DF:       Set var_98 = Me.DGItemCat
  loc_12205FE:       Proc_6_138_106D6F8(var_98, global_52, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_122060C:     End If
  loc_122060F:   Else
  loc_1220617:     If (var_86 = CInt(1)) Then
  loc_1220670:       Proc_6_69_134A198(Me.DGItemGrp, Me.Txt, KeyCode, global_56, Shift, 0, 1, Nothing)
  loc_12206DF:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1220705:         Proc_6_138_106D6F8(Me.DGItemGrp, global_56, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1220713:       End If
  loc_1220716:     Else
  loc_122071E:       If (var_86 = CInt(6)) Then
  loc_1220777:         Proc_6_69_134A198(Me.DGParty, Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_12207E6:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_122080C:           Proc_6_138_106D6F8(Me.DGParty, global_64, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_122081A:         End If
  loc_122081A:       End If
  loc_122081A:     End If
  loc_122081A:   End If
  loc_122081A: End If
  loc_122084B: Set var_98 = Me.DGParty
  loc_1220862: Set var_9C = Me.DGRest
  loc_122088B: If ((((CBool(Me.DGItemCat.Visible) = 0) And (CBool(Me.DGItemGrp.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_12208A1:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_12208AA:     Proc_6_76_E52838(Shift, arg_14, 0, var_98)
  loc_12208AF:   End If
  loc_12208C4:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12208CD:     Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_12208D2:   End If
  loc_12208D2: End If
  loc_12208D2: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '11345B8
  'Data Table: 4BDD8C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_113423B: Proc_6_58_E054C0(arg_10)
  loc_1134246: Proc_6_133_E7EF78(var_94)
  loc_113424F: arg_10 = CInt(var_94)
  loc_1134258: var_96 = KeyAscii
  loc_1134263: If (var_96 = CInt(0)) Then
  loc_1134282:   If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_11342AF:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_11342E1:     Proc_6_138_106D6F8(Me.DGRest, global_60, KeyAscii, Me.FGPoint)
  loc_11342EF:   End If
  loc_11342F2: Else
  loc_11342FA:   If (var_96 = CInt(2)) Then
  loc_1134319:     If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_1134346:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_52, arg_10, "Name")
  loc_1134378:       Proc_6_138_106D6F8(Me.DGItemCat, global_52, KeyAscii, Me.FGPoint, 0)
  loc_1134386:     End If
  loc_1134389:   Else
  loc_1134391:     If (var_96 = CInt(1)) Then
  loc_11343B0:       If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_11343DD:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56, arg_10, "Name")
  loc_113440F:         Proc_6_138_106D6F8(Me.DGItemGrp, global_56, KeyAscii, Me.FGPoint, 0)
  loc_113441D:       End If
  loc_1134420:     Else
  loc_1134428:       If (var_96 = CInt(6)) Then
  loc_1134447:         If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_1134474:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_113448E:           Set var_A8 = Me.FGPoint
  loc_11344A6:           Proc_6_138_106D6F8(Me.DGParty, global_64, KeyAscii, var_A8, 0)
  loc_11344B4:         End If
  loc_11344B7:       Else
  loc_11344BF:         If (var_96 = CInt(4)) Then
  loc_11344EB:           If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_11344FB:             Set var_9C = Me.Txt
  loc_1134501:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Amount", 0)
  loc_1134509:             var_A8.Text = var_96
  loc_1134518:           Else
  loc_1134541:             If (Ucase(Chr(CLng(arg_10))) = "P") Then
  loc_1134551:               Set var_9C = Me.Txt
  loc_1134557:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Percent")
  loc_113455F:               var_A8.Text = arg_10
  loc_113456B:             End If
  loc_113456B:           End If
  loc_113456D:           arg_10 = 0
  loc_1134573:         Else
  loc_113457B:           If (var_96 = CInt(5)) Then
  loc_1134588:             Set var_9C = Me.Txt
  loc_113458E:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_11345A9:             Proc_6_42_129A86C(var_A8, arg_10, 8)
  loc_11345B5:           End If
  loc_11345B5:         End If
  loc_11345B5:       End If
  loc_11345B5:     End If
  loc_11345B5:   End If
  loc_11345B5: End If
  loc_11345B5: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4B624
  'Data Table: 4BDD8C
  loc_E4B602: Set var_88 = Me.Txt
  loc_E4B608: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4B616: Proc_6_73_E22704(var_8C)
  loc_E4B622: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '139BC60
  'Data Table: 4BDD8C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_94 As String
  Dim var_A0 As TextBox
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_9C As TextBox
  loc_139B363: var_86 = Cancel
  loc_139B36E: If (var_86 = CInt(3)) Then
  loc_139B37E:   Set var_8C = Me.Txt
  loc_139B384:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139B3A3:   If (var_90.Text <> vbNullString) Then
  loc_139B3B0:     Set var_8C = Me.Txt
  loc_139B3B6:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139B3D6:     Set var_9C = Me.Txt
  loc_139B3DC:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_139B3E4:     var_A0.Text = Proc_6_33_1512840(var_90)
  loc_139B3FA:   Else
  loc_139B40C:     Set var_8C = Me.Txt
  loc_139B412:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139B41A:     var_90.Text = CStr(MemVar_1F920EC)
  loc_139B429:   End If
  loc_139B436:   Set var_8C = Me.Txt
  loc_139B43C:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139B45C:   If (CDate(var_90.Text) < MemVar_1F920EC) Then
  loc_139B486:     MsgBox("App. Date should be Equal_to or Greater_than " & CDate(MemVar_1F920EC) & ".", &H40, var_110, var_130, var_150)
  loc_139B49A:     arg_10 = &HFF
  loc_139B49D:     Exit Sub
  loc_139B49E:   End If
  loc_139B4A1: Else
  loc_139B4A9:   If (var_86 = CInt(0)) Then
  loc_139B4B7:     Set var_8C = Me.Txt
  loc_139B4BD:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_139B4C5:     var_94 = "Rest Name"
  loc_139B4E6:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_139B4EB:       arg_10 = &HFF
  loc_139B4EE:       Exit Sub
  loc_139B4EF:     End If
  loc_139B53D:     Set var_8C = Me.Txt
  loc_139B543:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_139B563:     If (var_90.Text Or (var_94 = vbNullString)) Then
  loc_139B573:       Set var_8C = Me.Txt
  loc_139B579:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139B581:       var_90.Text = vbNullString
  loc_139B59A:       Set var_8C = Me.Txt
  loc_139B5A0:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139B5A8:       var_90.Tag = vbNullString
  loc_139B5B7:     Else
  loc_139B5F2:       Set var_98 = Me.Txt
  loc_139B5F8:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_139B600:       var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_139B633:       var_90 = Me.Fields.Item("Code")
  loc_139B644:       var_94 = CStr(var_90.Value)
  loc_139B651:       Set var_98 = Me.Txt
  loc_139B657:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_139B65F:       var_9C.Tag = var_94
  loc_139B675:     End If
  loc_139B678:   Else
  loc_139B680:     If (var_86 = CInt(2)) Then
  loc_139B6D1:       Set var_8C = Me.Txt
  loc_139B6D7:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_139B6DF:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_139B6F7:       If (var_86 Or (var_94 = vbNullString)) Then
  loc_139B707:         Set var_8C = Me.Txt
  loc_139B70D:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139B715:         var_90.Text = vbNullString
  loc_139B72E:         Set var_8C = Me.Txt
  loc_139B734:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139B73C:         var_90.Tag = vbNullString
  loc_139B74B:       Else
  loc_139B786:         Set var_98 = Me.Txt
  loc_139B78C:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_139B794:         var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_139B7C7:         var_90 = Me.Fields.Item("Code")
  loc_139B7E5:         Set var_98 = Me.Txt
  loc_139B7EB:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_139B7F3:         var_9C.Tag = CStr(var_90.Value)
  loc_139B809:       End If
  loc_139B80C:     Else
  loc_139B814:       If (var_86 = CInt(1)) Then
  loc_139B865:         Set var_8C = Me.Txt
  loc_139B86B:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139B88B:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_139B89B:           Set var_8C = Me.Txt
  loc_139B8A1:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139B8A9:           var_90.Text = vbNullString
  loc_139B8C2:           Set var_8C = Me.Txt
  loc_139B8C8:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139B8D0:           var_90.Tag = vbNullString
  loc_139B8DF:         Else
  loc_139B91A:           Set var_98 = Me.Txt
  loc_139B920:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_139B928:           var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_139B95B:           var_90 = Me.Fields.Item("Code")
  loc_139B979:           Set var_98 = Me.Txt
  loc_139B97F:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_139B987:           var_9C.Tag = CStr(var_90.Value)
  loc_139B99D:         End If
  loc_139B9A0:       Else
  loc_139B9A8:         If (var_86 = CInt(6)) Then
  loc_139B9F9:           Set var_8C = Me.Txt
  loc_139B9FF:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139BA1F:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_139BA2F:             Set var_8C = Me.Txt
  loc_139BA35:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139BA3D:             var_90.Text = vbNullString
  loc_139BA56:             Set var_8C = Me.Txt
  loc_139BA5C:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139BA64:             var_90.Tag = vbNullString
  loc_139BA73:           Else
  loc_139BAAE:             Set var_98 = Me.Txt
  loc_139BAB4:             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_139BABC:             var_9C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_139BAEF:             var_90 = Me.Fields.Item("Code")
  loc_139BB0D:             Set var_98 = Me.Txt
  loc_139BB13:             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_139BB1B:             var_9C.Tag = CStr(var_90.Value)
  loc_139BB31:           End If
  loc_139BB34:         Else
  loc_139BB3C:           If (var_86 = CInt(4)) Then
  loc_139BB49:             Set var_8C = Me.Txt
  loc_139BB4F:             Call 0.Method_Txt_Validate0 (Cancel)
  loc_139BB8A:             If (Ucase(Left(CVar(var_90), 1)) = "P") Then
  loc_139BB9A:               Set var_8C = Me.Txt
  loc_139BBA0:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139BBA8:               var_90.Text = "Percent"
  loc_139BBB7:             Else
  loc_139BBC4:               Set var_8C = Me.Txt
  loc_139BBCA:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139BBD2:               var_90.Text = "Amount"
  loc_139BBDE:             End If
  loc_139BBE1:           Else
  loc_139BBE9:             If (var_86 = CInt(5)) Then
  loc_139BBF6:               Set var_8C = Me.Txt
  loc_139BBFC:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139BC36:               Set var_98 = Me.Txt
  loc_139BC3C:               Call 0.Method_Txt_Validate0 (Cancel, var_9C, CStr(Format(CVar(var_90), "0.00")))
  loc_139BC44:               var_9C.Text = 1
  loc_139BC5E:             End If
  loc_139BC5E:           End If
  loc_139BC5E:         End If
  loc_139BC5E:       End If
  loc_139BC5E:     End If
  loc_139BC5E:   End If
  loc_139BC5E: End If
  loc_139BC5E: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_9 'F4B2C4
  'Data Table: 4BDD8C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4B1BB: Me.DGItemCat.Visible = False
  loc_F4B1DA: If (Me.RecordCount > 0) Then
  loc_F4B219:   Set var_B4 = Me.Txt
  loc_F4B21F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4B227:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4B25A:   var_B0 = Me.Fields.Item("Name")
  loc_F4B279:   Set var_B4 = Me.Txt
  loc_F4B27F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4B287:   var_B8.Text = CStr(var_B0.Value)
  loc_F4B29D: End If
  loc_F4B2A8: Set var_A8 = Me.Txt
  loc_F4B2AE: Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(2))
  loc_F4B2B6: var_B0.SetFocus
  loc_F4B2C2: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_1F 'EA5C7C
  'Data Table: 4BDD8C
  Dim var_A8 As Variant
  loc_EA5BFC: Set var_88 = Me.DGItemCat
  loc_EA5C26: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA5C2E: Set var_BC = Me.DGItemCat
  loc_EA5C6A: Proc_6_138_106D6F8(Me.DGItemCat, global_52, CInt(2), Me.FGPoint)
  loc_EA5C78: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F3B464
  'Data Table: 4BDD8C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3B35B: Me.DGRest.Visible = False
  loc_F3B37A: If (Me.RecordCount > 0) Then
  loc_F3B3B9:   Set var_B4 = Me.Txt
  loc_F3B3BF:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3B3C7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3B3FA:   var_B0 = Me.Fields.Item("Name")
  loc_F3B419:   Set var_B4 = Me.Txt
  loc_F3B41F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3B427:   var_B8.Text = CStr(var_B0.Value)
  loc_F3B43D: End If
  loc_F3B448: Set var_A8 = Me.Txt
  loc_F3B44E: Call 0.Method_DGRest_UnknownEvent_90 (CInt(0))
  loc_F3B456: var_B0.SetFocus
  loc_F3B462: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'EA61D8
  'Data Table: 4BDD8C
  Dim var_A8 As Variant
  loc_EA6158: Set var_88 = Me.DGRest
  loc_EA6182: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA618A: Set var_BC = Me.DGRest
  loc_EA61C6: Proc_6_138_106D6F8(Me.DGRest, global_60, CInt(0), Me.FGPoint)
  loc_EA61D4: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11ADFE8
  'Data Table: 4BDD8C
  Dim var_A0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As Variant
  Dim var_E0 As Variant
  Dim var_90 As Variant
  Dim var_10C As String
  Dim var_108 As Variant
  Dim var_110 As Long
  Dim Me As Recordset15
  Dim var_104 As TextBox
  loc_11ADBCE: Set var_88 = Me.TxtGrid
  loc_11ADBD4: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_11ADBE2: Proc_6_74_E226B0(var_8C)
  loc_11ADBEE: Call Proc_69_50_F6F41C(var_8C)
  loc_11ADC06: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11ADC21: var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11ADC2A: Set var_8C = Me.FGrid
  loc_11ADC53: var_10C = CStr(Me.FGrid.TextMatrix))
  loc_11ADC60: Set var_104 = Me.TxtGrid
  loc_11ADC66: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_10C)
  loc_11ADC6E: var_108.Tag = CVar(CLng(var_8C.Col))
  loc_11ADC9A: Set var_88 = Me.TxtGrid
  loc_11ADCA0: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_11ADCA8: var_8C.MaxLength = 0
  loc_11ADCC7: var_110 = CLng(Me.FGrid.Col)
  loc_11ADCD7: If (var_110 = CLng(1)) Then
  loc_11ADCEB:   Set var_88 = Me.Txt
  loc_11ADCF1:   Call 0.Method_TxtGrid_GotFocus0 (CInt(0), var_8C, var_10C)
  loc_11ADCF9:   "OutletCode='" = var_8C.Tag
  loc_11ADD13:   Me.Filter = CVar(var_110 & var_10C & "'")
  loc_11ADD2C: Else
  loc_11ADD33:   If (var_110 = CLng(3)) Then
  loc_11ADD42:     Set var_88 = Me.TxtGrid
  loc_11ADD48:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_11ADD67:     Me.DGItem.Left = CVar(var_8C.Left)
  loc_11ADD81:     Set var_90 = Me.TxtGrid
  loc_11ADD87:     Call 0.Method_TxtGrid_GotFocus0 (0, var_104)
  loc_11ADDA0:     Set var_88 = Me.TxtGrid
  loc_11ADDA6:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_11ADDBA:     var_A0 = CVar((var_8C.Top + var_104.Height)) 'Single
  loc_11ADDC9:     Me.DGItem.Top = CVar(var_8C.Left)
  loc_11ADDF2:     If (Me.RecordCount > 0) Then
  loc_11ADE00:       Set var_8C = Me.FGPoint
  loc_11ADE18:       Proc_6_137_1193554(Me.DGItem, global_76, Index)
  loc_11ADE26:     End If
  loc_11ADE37:     Set var_88 = Me.Txt
  loc_11ADE3D:     Call 0.Method_TxtGrid_GotFocus0 (CInt(0), var_8C, var_10C)
  loc_11ADE45:     "OutletCode='" = var_8C.Tag
  loc_11ADE5F:     Me.Filter = CVar(var_8C & var_10C & "'")
  loc_11ADE7E:     var_118 = Me.RecordCount
  loc_11ADE95:     var_11E = Me.EOF
  loc_11ADEA9:     var_120 = Me.BOF
  loc_11ADEC9:     var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11ADF05:     If (CVar(CLng(2)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_11ADF08:       Exit Sub
  loc_11ADF09:     End If
  loc_11ADF0F:     Me.MoveFirst
  loc_11ADF27:     var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11ADF2F:     var_E0 = CVar(CLng(2)) 'Long
  loc_11ADF73:     Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_11ADFA3:     If (Me.EOF = &HFF) Then
  loc_11ADFAC:       Me.MoveFirst
  loc_11ADFB1:     End If
  loc_11ADFBA:     CVarUnk
  loc_11ADFBF:     VerifyVarObj
  loc_11ADFC5:     Set var_88 = Me.DGItem
  loc_11ADFCB:     LateIdStAd
  loc_11ADFDC:   Else
  loc_11ADFE3:     If (var_110 = CLng(4)) Then
  loc_11ADFE6:     End If
  loc_11ADFE6:   End If
  loc_11ADFE6: End If
  loc_11ADFE6: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '114655C
  'Data Table: 4BDD8C
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  loc_11461D3: var_86 = Shift
  loc_11461D6: On Error Goto loc_1146555
  loc_11461E3: If (CLng(Shift) = &H1B) Then
  loc_11461F3:   Set var_8C = Me.TxtGrid
  loc_11461F9:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_1146213:   Set var_98 = Me.TxtGrid
  loc_1146219:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1146221:   var_9C.Text = var_90.Tag
  loc_114623D:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1146242:   Call Proc_69_50_F6F41C(arg_14)
  loc_114624B:   Set var_8C = Me.FGrid
  loc_1146268:   Set var_8C = Me.TxtGrid
  loc_114626E:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1146276:   var_90.Visible = FGrid.DispID_8001
  loc_1146282:   Exit Sub
  loc_1146283: End If
  loc_1146296: var_B0 = CLng(Me.FGrid.Col)
  loc_11462A6: If (var_B0 = CLng(3)) Then
  loc_11462C6:   Set var_9C = Me.FGPoint
  loc_11462D1:   Set var_98 = Nothing
  loc_11462FF:   Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_76, Shift, &HFF)
  loc_114636E:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1146375:     Set var_98 = Me.DGItem
  loc_1146394:     Proc_6_138_106D6F8(var_98, global_76, KeyCode, Me.FGPoint, 1)
  loc_11463A2:   End If
  loc_11463AC:   If (CLng(Shift) = &HD) Then
  loc_11463B5:     Call Proc_69_47_146FE00(KeyCode, var_B2, var_98, var_9C)
  loc_11463C0:     If (var_B2 = &HFF) Then
  loc_114640D:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_86, CByte((CInt(4) + 1)))
  loc_114641D:     End If
  loc_114641D:   End If
  loc_1146420: Else
  loc_1146427:   If (var_B0 = CLng(1)) Then
  loc_1146434:     If (CLng(Shift) = &HD) Then
  loc_114643D:       Call Proc_69_47_146FE00(KeyCode, var_B2, 0, 0)
  loc_1146448:       If (var_B2 = &HFF) Then
  loc_114648E:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_86, 4, 0)
  loc_114649E:       End If
  loc_114649E:     End If
  loc_11464A1:   Else
  loc_11464A8:     If (var_B0 = CLng(4)) Then
  loc_11464EB:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_86 = &HFF))) Then
  loc_11464F4:         Call Proc_69_47_146FE00(KeyCode, var_B2, 0, 0)
  loc_11464FF:         If (var_B2 = &HFF) Then
  loc_1146545:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_86, 4, 0)
  loc_1146555:         End If
  loc_1146555:       End If
  loc_1146555:       ' Referenced from: 11461D6
  loc_1146555:     End If
  loc_1146555:   End If
  loc_1146555: End If
  loc_1146555: Proc_6_60_E62BC4(0, 0, 0)
  loc_114655A: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'FCD9FC
  'Data Table: 4BDD8C
  Dim arg_10 As Integer
  Dim var_9C As Variant
  Dim var_94 As Variant
  Dim var_A0 As Long
  loc_FCD83F: Proc_6_58_E054C0(arg_10)
  loc_FCD84A: Proc_6_133_E7EF78(var_94)
  loc_FCD853: arg_10 = CInt(var_94)
  loc_FCD865: If (KeyAscii = 0) Then
  loc_FCD87B:   var_A0 = CLng(Me.FGrid.Col)
  loc_FCD88B:   If (var_A0 = CLng(1)) Then
  loc_FCD8A9:     If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_FCD8BE:       Me.FGrid.Col = CVar(CLng(3))
  loc_FCD8E2:       If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_FCD90F:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_76, arg_10, "Name")
  loc_FCD91E:       End If
  loc_FCD91E:     End If
  loc_FCD921:   Else
  loc_FCD928:     If (var_A0 = CLng(3)) Then
  loc_FCD947:       If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_FCD974:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_76, arg_10, "Name", 0)
  loc_FCD98E:         Set var_CC = Me.FGPoint
  loc_FCD9A6:         Proc_6_138_106D6F8(Me.DGItem, global_76, KeyAscii, var_CC, 0)
  loc_FCD9B4:       End If
  loc_FCD9B7:     Else
  loc_FCD9BE:       If (var_A0 = CLng(4)) Then
  loc_FCD9CB:         Set var_9C = Me.TxtGrid
  loc_FCD9D1:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_CC, var_A0)
  loc_FCD9EC:         Proc_6_42_129A86C(var_CC, arg_10, 8, 2)
  loc_FCD9F8:       End If
  loc_FCD9F8:     End If
  loc_FCD9F8:   End If
  loc_FCD9F8: End If
  loc_FCD9F8: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EC7650
  'Data Table: 4BDD8C
  loc_EC75AC: On Error Goto loc_EC7648
  loc_EC75D2: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_EC75F8:   If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_EC7609:     Call TxtGrid_KeyDown(KeyCode, global_84)
  loc_EC761D:     var_A4 = "Name"
  loc_EC7638:     Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_76, Shift)
  loc_EC7647:   End If
  loc_EC7647: End If
  loc_EC7647: Exit Sub
  loc_EC7648: ' Referenced from: EC75AC
  loc_EC7648: Proc_6_60_E62BC4(var_A4, &HFF)
  loc_EC764D: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23DA8
  'Data Table: 4BDD8C
  Dim arg_10 As Integer
  loc_E23D90: If (Cancel = 0) Then
  loc_E23D99:   Call Proc_69_47_146FE00(Cancel, var_88)
  loc_E23DA2:   arg_10 = Not(var_88)
  loc_E23DA5: End If
  loc_E23DA5: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC5D84
  'Data Table: 4BDD8C
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC5CFA: On Error Goto loc_EC5D3F
  loc_EC5D03: Me.MoveFirst
  loc_EC5D1D: var_8C = "Searchcode='" & MyValue
  loc_EC5D2D: Me.Find var_8C & "'", 0, 1
  loc_EC5D39: Call Proc_69_45_121CEEC(var_A0)
  loc_EC5D3E: Exit Sub
  loc_EC5D3F: ' Referenced from: EC5CFA
  loc_EC5D47: Set var_A4 = Err()
  loc_EC5D4D: Call 0.Method_arg_2C (var_8C)
  loc_EC5D6E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC5D81: Exit Sub
  loc_EC5D82: Exit Sub
End Sub

Public Sub Proc_69_45_121CEEC
  'Data Table: 4BDD8C
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim unk_4BDDA0 As Connection15
  Dim var_88 As Recordset15
  Dim var_128 As TextBox
  Dim var_BC As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  loc_121CA14: On Error Goto loc_121CEE5
  loc_121CA19: var_8A = 1
  loc_121CA33: If (Me.RecordCount > 0) Then
  loc_121CA4A:   var_94 = "Select D.Name As OutletName,IsNull(S.Name,'') PartyName,IR.RestCode,IR.Party,IR.ItemCode,I.Name ItemName,I.DispCode,IR.Rate,IR.Appdate From ItemRate IR Inner Join Depart D On D.Code=IR.RestCode Left Join SubGroup S On S.SubCode=IR.Party Inner Join ItemMast I On I.Code=IR.ItemCode And I.RestCode=IR.RestCode Where (IR.LOGSITE_CODE='" & MemVar_1F92078
  loc_121CA51:   var_CC = CVar(var_94 & "' or IR.LOGSITE_CODE='HO') And IR.RestCode+Convert(varchar(11),AppDate,103)+IsNull(IR.Party,'')='") 'String
  loc_121CA98:   unk_4BDDA0.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "' Order BY I.Name"), var_120, -1
  loc_121CAA3:   Set var_88 = var_124
  loc_121CAD7:   If (var_88.RecordCount > 0) Then
  loc_121CADA:     Call Proc_69_48_F1E4BC(var_124)
  loc_121CB18:     Set var_124 = Me.Txt
  loc_121CB1E:     Call 0.Method_Proc_69_45_121CEEC0 (CInt(0), var_128)
  loc_121CB26:     var_128.Tag = CStr(var_88.Fields.Item("RestCode").Value)
  loc_121CB75:     Set var_124 = Me.Txt
  loc_121CB7B:     Call 0.Method_Proc_69_45_121CEEC0 (CInt(0), var_128)
  loc_121CB83:     var_128.Text = CStr(var_88.Fields.Item("OutLetName").Value)
  loc_121CBD2:     Set var_124 = Me.Txt
  loc_121CBD8:     Call 0.Method_Proc_69_45_121CEEC0 (CInt(6), var_128)
  loc_121CBE0:     var_128.Tag = CStr(var_88.Fields.Item("Party").Value)
  loc_121CC2F:     Set var_124 = Me.Txt
  loc_121CC35:     Call 0.Method_Proc_69_45_121CEEC0 (CInt(6), var_128)
  loc_121CC3D:     var_128.Text = CStr(var_88.Fields.Item("PartyName").Value)
  loc_121CCA5:     Set var_124 = Me.Txt
  loc_121CCAB:     Call 0.Method_Proc_69_45_121CEEC0 (CInt(3), var_128, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/MMM/yyyy")))
  loc_121CCB3:     var_128.Text = 1
  loc_121CCCD:     ' Referenced from: 121CEAC
  loc_121CCDC:     If Not(var_88.EOF) Then
  loc_121CCE6:       var_A8 = vbNullString
  loc_121CCFB:       var_A8 = CVar(CLng(var_8A)) 'Long
  loc_121CD0D:       var_BC = CVar(CStr(var_8A)) 'String
  loc_121CD14:       LateIdCallSt
  loc_121CD58:       var_CC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(1)), CVar(CLng(var_8A)), Me.FGrid, CVar(var_88.Fields.Item("DispCode")), CVar(CLng(0)))) 'String
  loc_121CD5F:       LateIdCallSt
  loc_121CD75:       var_EC = CVar(CLng(var_8A)) 'Long
  loc_121CD7D:       var_140 = CVar(CLng(2)) 'Long
  loc_121CDAD:       var_CC = CVar(CStr(var_88.Fields.Item("ItemCode").Value)) 'String
  loc_121CDB4:       LateIdCallSt
  loc_121CDCE:       var_EC = CVar(CLng(var_8A)) 'Long
  loc_121CDD6:       var_140 = CVar(CLng(3)) 'Long
  loc_121CE06:       var_CC = CVar(CStr(var_88.Fields.Item("ItemName").Value)) 'String
  loc_121CE0D:       LateIdCallSt
  loc_121CE43:       var_110 = CVar(CLng(var_8A)) 'Long
  loc_121CE4B:       var_150 = CVar(CLng(4)) 'Long
  loc_121CE5A:       var_EC = "0.00"
  loc_121CE5F:       var_CC = var_EC
  loc_121CE78:       var_FC = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), var_CC))) 'String
  loc_121CE7F:       LateIdCallSt
  loc_121CE97:       Set var_130 = Nothing 
  loc_121CEA1:       var_8A = (var_8A + 1)
  loc_121CEA7:       var_88.MoveNext
  loc_121CEAC:       GoTo loc_121CCCD
  loc_121CEAF:     End If
  loc_121CEB1:     var_8A = 0
  loc_121CEC7:     Me.FGrid.FixedRows = 1
  loc_121CECF:   End If
  loc_121CED2: Else
  loc_121CED2:   Call Proc_69_48_F1E4BC(var_8A, var_8A, var_130, var_FC, 1, 1, var_150)
  loc_121CED7: End If
  loc_121CED7: Call Proc_69_50_F6F41C(var_110, var_130, var_CC)
  loc_121CEE1: Set var_88 = Nothing
  loc_121CEE4: Exit Sub
  loc_121CEE5: ' Referenced from: 121CA14
  loc_121CEE5: Proc_6_60_E62BC4(var_140, var_EC)
  loc_121CEEA: Exit Sub
End Sub

Public Sub Proc_69_46_DFB2D8
  'Data Table: 4BDD8C
  Dim .global_20480 As Long
  loc_DFB2D4: Exit Sub
  loc_DFB2D5: .global_20480 = 
End Sub

Public Sub Proc_69_47_146FE00(arg_C) '146FE00
  'Data Table: 4BDD8C
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_C4 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_138 As Variant
  Dim var_15C As MSHFlexGrid
  Dim var_17C As Variant
  Dim var_190 As MSHFlexGrid
  Dim var_1A0 As Variant
  Dim var_AC As String
  Dim var_1C0 As Variant
  Dim var_148 As Variant
  Dim var_88 As Integer
  loc_146F227: var_A0 = CLng(Me.FGrid.Col)
  loc_146F237: If (var_A0 = CLng(1)) Then
  loc_146F251:   If (Me.RecordCount > 0) Then
  loc_146F25A:     Me.MoveFirst
  loc_146F25F:   End If
  loc_146F276:   If (Me.RecordCount > 0) Then
  loc_146F286:     Set var_8C = Me.TxtGrid
  loc_146F28C:     Call 0.Method_Proc_69_47_146FE000 (arg_C, var_A8)
  loc_146F294:     var_AC = var_A8.Text
  loc_146F2A1:     var_CC = Val(var_AC)
  loc_146F2C7:     Me.Find "DispCode=" & CStr(var_CC), 0, 1
  loc_146F2DC:   End If
  loc_146F32A:   Set var_8C = Me.TxtGrid
  loc_146F330:   Call 0.Method_Proc_69_47_146FE000 (arg_C, var_A8, var_AC, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_146F338:   var_C4 = var_A8.Text
  loc_146F350:   If (var_CC Or (var_AC = vbNullString)) Then
  loc_146F366:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F36E:     var_F0 = CVar(CLng(3)) 'Long
  loc_146F373:     var_110 = vbNullString
  loc_146F37D:     Set var_A8 = Me.FGrid
  loc_146F383:     LateIdCallSt
  loc_146F3A8:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F3B0:     var_F0 = CVar(CLng(2)) 'Long
  loc_146F3B5:     var_110 = vbNullString
  loc_146F3BF:     Set var_A8 = Me.FGrid
  loc_146F3C5:     LateIdCallSt
  loc_146F3EA:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F3F2:     var_F0 = CVar(CLng(1)) 'Long
  loc_146F3F7:     var_110 = vbNullString
  loc_146F401:     Set var_A8 = Me.FGrid
  loc_146F407:     LateIdCallSt
  loc_146F42C:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F434:     var_F0 = CVar(CLng(4)) 'Long
  loc_146F439:     var_110 = vbNullString
  loc_146F443:     Set var_A8 = Me.FGrid
  loc_146F449:     LateIdCallSt
  loc_146F45E:   Else
  loc_146F464:     var_E0 = CVar(global_80) 'String
  loc_146F48D:     var_9C = Me.Fields.Item("Code").Value
  loc_146F49F:     var_100 = CVar(global_80) 'String
  loc_146F4C8:     var_148 = Me.Fields.Item("Code").Value
  loc_146F509:     var_AC = CStr(Me.FGrid.TextMatrix))
  loc_146F53E:     If CBool(CVar(CLng(Me.FGrid.Row)) Or CVar(CLng(2)) And (var_AC = vbNullString)) Then
  loc_146F554:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F55C:       var_100 = CVar(CLng(3)) 'Long
  loc_146F58F:       var_148 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_146F597:       Set var_138 = Me.FGrid
  loc_146F59D:       LateIdCallSt
  loc_146F5CC:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F5D4:       var_100 = CVar(CLng(2)) 'Long
  loc_146F607:       var_148 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_146F60F:       Set var_138 = Me.FGrid
  loc_146F615:       LateIdCallSt
  loc_146F644:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F64C:       var_100 = CVar(CLng(1)) 'Long
  loc_146F67F:       var_148 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_146F687:       Set var_138 = Me.FGrid
  loc_146F68D:       LateIdCallSt
  loc_146F6BD:       var_88 = CInt(CLng(Me.FGrid.Row))
  loc_146F6CA:       var_C4 = CVar(CLng(var_88)) 'Long
  loc_146F6DC:       var_9C = CVar(CStr(var_88)) 'String
  loc_146F6E4:       Set var_8C = Me.FGrid
  loc_146F6EA:       LateIdCallSt
  loc_146F70D:       var_8C = Me.Fields
  loc_146F715:       var_A8 = var_8C.Item("Code")
  loc_146F771:       Call Proc_69_52_FF4D1C(CStr(var_A8.Value), CStr(MemVar_1F920EC), CStr(Me.Fields.Item("OutletCode").Value), vbNullString, var_CC, var_8C, var_A8.Value, CVar(CLng(0)))
  loc_146F789:       var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F791:       var_17C = CVar(CLng(4)) 'Long
  loc_146F7BE:       var_1C0 = CVar(CStr(Format(CVar(var_CC), "0.00"))) 'String
  loc_146F7C6:       Set var_190 = Me.FGrid
  loc_146F7CC:       LateIdCallSt
  loc_146F7FF:     End If
  loc_146F7FF:   End If
  loc_146F802: Else
  loc_146F809:   If (var_A0 = CLng(3)) Then
  loc_146F85A:     Set var_8C = Me.TxtGrid
  loc_146F860:     Call 0.Method_Proc_69_47_146FE000 (arg_C, var_A8, var_AC, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_190, var_1C0, 1)
  loc_146F868:     1 = var_A8.Text
  loc_146F880:     If (var_17C Or (var_AC = vbNullString)) Then
  loc_146F896:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F89E:       var_F0 = CVar(CLng(3)) 'Long
  loc_146F8A3:       var_110 = vbNullString
  loc_146F8AD:       Set var_A8 = Me.FGrid
  loc_146F8B3:       LateIdCallSt
  loc_146F8D8:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F8E0:       var_F0 = CVar(CLng(2)) 'Long
  loc_146F8E5:       var_110 = vbNullString
  loc_146F8EF:       Set var_A8 = Me.FGrid
  loc_146F8F5:       LateIdCallSt
  loc_146F91A:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F922:       var_F0 = CVar(CLng(1)) 'Long
  loc_146F927:       var_110 = vbNullString
  loc_146F931:       Set var_A8 = Me.FGrid
  loc_146F937:       LateIdCallSt
  loc_146F95C:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146F964:       var_F0 = CVar(CLng(4)) 'Long
  loc_146F969:       var_110 = vbNullString
  loc_146F973:       Set var_A8 = Me.FGrid
  loc_146F979:       LateIdCallSt
  loc_146F98E:     Else
  loc_146F994:       var_E0 = CVar(global_80) 'String
  loc_146F9BD:       var_9C = Me.Fields.Item("Code").Value
  loc_146F9CF:       var_100 = CVar(global_80) 'String
  loc_146F9F8:       var_148 = Me.Fields.Item("Code").Value
  loc_146FA39:       var_AC = CStr(Me.FGrid.TextMatrix))
  loc_146FA6E:       If CBool(CVar(CLng(Me.FGrid.Row)) Or CVar(CLng(2)) And (var_AC = vbNullString)) Then
  loc_146FA84:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146FA8C:         var_100 = CVar(CLng(3)) 'Long
  loc_146FABF:         var_148 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_146FAC7:         Set var_138 = Me.FGrid
  loc_146FACD:         LateIdCallSt
  loc_146FAFC:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146FB04:         var_100 = CVar(CLng(2)) 'Long
  loc_146FB37:         var_148 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_146FB3F:         Set var_138 = Me.FGrid
  loc_146FB45:         LateIdCallSt
  loc_146FB74:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146FB7C:         var_100 = CVar(CLng(1)) 'Long
  loc_146FBAF:         var_148 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_146FBB7:         Set var_138 = Me.FGrid
  loc_146FBBD:         LateIdCallSt
  loc_146FBED:         var_88 = CInt(CLng(Me.FGrid.Row))
  loc_146FBFA:         var_C4 = CVar(CLng(var_88)) 'Long
  loc_146FC0C:         var_9C = CVar(CStr(var_88)) 'String
  loc_146FC14:         Set var_8C = Me.FGrid
  loc_146FC1A:         LateIdCallSt
  loc_146FC3D:         var_8C = Me.Fields
  loc_146FC45:         var_A8 = var_8C.Item("Code")
  loc_146FCA1:         Call Proc_69_52_FF4D1C(CStr(var_A8.Value), CStr(MemVar_1F920EC), CStr(Me.Fields.Item("OutletCode").Value), vbNullString, var_CC, var_8C, var_A8.Value, CVar(CLng(0)))
  loc_146FCB9:         var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146FCC1:         var_17C = CVar(CLng(4)) 'Long
  loc_146FCEE:         var_1C0 = CVar(CStr(Format(CVar(var_CC), "0.00"))) 'String
  loc_146FCF6:         Set var_190 = Me.FGrid
  loc_146FCFC:         LateIdCallSt
  loc_146FD2F:       End If
  loc_146FD2F:     End If
  loc_146FD32:   Else
  loc_146FD39:     If (var_A0 = CLng(4)) Then
  loc_146FD48:       Set var_8C = Me.TxtGrid
  loc_146FD4E:       Call 0.Method_Proc_69_47_146FE000 (0, var_A8, var_AC, var_190, var_1C0, 1, 1)
  loc_146FD56:       var_17C = var_A8.Text
  loc_146FD79:       var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_146FD91:       var_110 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_146FDBE:       var_1A0 = CVar(CStr(Format(CVar(Val(var_AC)), "0.00"))) 'String
  loc_146FDC6:       Set var_15C = Me.FGrid
  loc_146FDCC:       LateIdCallSt
  loc_146FDF3:     End If
  loc_146FDF3:   End If
  loc_146FDF3: End If
  loc_146FDF8: Proc_69_47_146FE00 = &HFF
End Sub

Public Sub Proc_69_48_F1E4BC
  'Data Table: 4BDD8C
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_F1E3CA: Set var_8C = Me.Txt
  loc_F1E3D0: Call 0.Method_Proc_69_48_F1E4BCC (var_8E, var_86)
  loc_F1E3E0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1E3F6:   Set var_8C = Me.Txt
  loc_F1E3FC:   Call 0.Method_Proc_69_48_F1E4BC0 (CInt(var_86), var_98)
  loc_F1E404:   var_98.Text = vbNullString
  loc_F1E420:   Set var_8C = Me.Txt
  loc_F1E426:   Call 0.Method_Proc_69_48_F1E4BC0 (CInt(var_86), var_98)
  loc_F1E42E:   var_98.Tag = vbNullString
  loc_F1E43D: Next var_92 'Byte
  loc_F1E456: Me.FGrid.Rows = 1
  loc_F1E47C: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_F1E484: Set var_98 = Me.FGrid
  loc_F1E4B1: Me.FGrid.FixedRows = 1
  loc_F1E4B9: Exit Sub
End Sub

Public Sub Proc_69_49_F4722C(arg_C) 'F4722C
  'Data Table: 4BDD8C
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_B01 As Double
  loc_F4711A: Set var_8C = Me.Txt
  loc_F47120: Call 0.Method_Proc_69_49_F4722CC (var_8E, var_86)
  loc_F47130: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F47146:   Set var_8C = Me.Txt
  loc_F4714C:   Call 0.Method_Proc_69_49_F4722C0 (CInt(var_86), var_98)
  loc_F47154:   var_98.Enabled = arg_C
  loc_F47163: Next var_92 'Byte
  loc_F47176: Me.CmdFillDetail.Enabled = arg_C
  loc_F4719A: Set var_98 = Me.TopCtrl1
  loc_F471A0: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000C((Me.ChkParty.Value = 1))
  loc_F471BE: If ( And (CStr() <> "Browse")) Then
  loc_F471CD:   Me.CmdFillLastDetail.Enabled = True
  loc_F471D8: Else
  loc_F471E4:   Me.CmdFillLastDetail.Enabled = False
  loc_F471EC: End If
  loc_F471F9: Me.ChkParty.Enabled = arg_C
  loc_F4720E: Set var_8C = Me.Txt
  loc_F47214: Call 0.Method_Proc_69_49_F4722C0 (CInt(6), var_98)
  loc_F4721C: var_98.Enabled = False
  loc_F47228: Exit Sub
  loc_F47229: var_B01 = 
End Sub

Public Sub Proc_69_50_F6F41C
  'Data Table: 4BDD8C
  loc_F6F2F0: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F6F302:   Me.DGItem.Visible = False
  loc_F6F30A: End If
  loc_F6F326: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_F6F338:   Me.DGRest.Visible = False
  loc_F6F340: End If
  loc_F6F35C: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_F6F36E:   Me.DGItemCat.Visible = False
  loc_F6F376: End If
  loc_F6F392: If (CBool(Me.DGItemGrp.Visible) = &HFF) Then
  loc_F6F3A4:   Me.DGItemGrp.Visible = False
  loc_F6F3AC: End If
  loc_F6F3C8: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F6F3DA:   Me.DGParty.Visible = False
  loc_F6F3E2: End If
  loc_F6F3FE: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6F410:   Me.FGPoint.Visible = False
  loc_F6F418: End If
  loc_F6F418: Exit Sub
  loc_F6F419: CExtInstUnk
End Sub

Public Sub Proc_69_51_101C6D4
  'Data Table: 4BDD8C
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_101C4BA: Me.FGrid.Left = CVar(CDbl(&H23))
  loc_101C4D5: Me.FGrid.Top = CVar(CDbl(2520))
  loc_101C4F0: Me.FGrid.Width = CVar(CDbl(7700))
  loc_101C50B: Me.FGrid.Height = CVar(CDbl(5800))
  loc_101C517: Set var_AC = Me.FGrid
  loc_101C526: var_AC.Cols = 5
  loc_101C53F: global_68 = CStr(CLng(var_AC.BackColor))
  loc_101C54C: var_94 = CVar(CLng(0)) 'Long
  loc_101C551: var_D0 = &H190
  loc_101C55D: LateIdCallSt
  loc_101C565: var_94 = 0
  loc_101C571: var_D0 = CVar(CLng(1)) 'Long
  loc_101C576: var_F0 = "Code"
  loc_101C57F: LateIdCallSt
  loc_101C58A: var_94 = CVar(CLng(1)) 'Long
  loc_101C595: var_D0 = CVar(CInt(1)) 'Integer
  loc_101C59C: LateIdCallSt
  loc_101C5A7: var_94 = CVar(CLng(1)) 'Long
  loc_101C5AC: var_D0 = &H5DC
  loc_101C5B8: LateIdCallSt
  loc_101C5C3: var_94 = CVar(CLng(2)) 'Long
  loc_101C5C8: var_D0 = 0
  loc_101C5D4: LateIdCallSt
  loc_101C5DC: var_94 = 0
  loc_101C5E8: var_D0 = CVar(CLng(3)) 'Long
  loc_101C5ED: var_F0 = "Item Name"
  loc_101C5F6: LateIdCallSt
  loc_101C601: var_94 = CVar(CLng(3)) 'Long
  loc_101C60C: var_D0 = CVar(CInt(1)) 'Integer
  loc_101C613: LateIdCallSt
  loc_101C61E: var_94 = CVar(CLng(3)) 'Long
  loc_101C629: var_D0 = CVar(CInt(1)) 'Integer
  loc_101C630: LateIdCallSt
  loc_101C63B: var_94 = CVar(CLng(3)) 'Long
  loc_101C640: var_D0 = &HDAC
  loc_101C64C: LateIdCallSt
  loc_101C654: var_94 = 0
  loc_101C660: var_D0 = CVar(CLng(4)) 'Long
  loc_101C665: var_F0 = "Rate"
  loc_101C66E: LateIdCallSt
  loc_101C679: var_94 = CVar(CLng(4)) 'Long
  loc_101C684: var_D0 = CVar(CInt(7)) 'Integer
  loc_101C68B: LateIdCallSt
  loc_101C696: var_94 = CVar(CLng(4)) 'Long
  loc_101C6A1: var_D0 = CVar(CInt(7)) 'Integer
  loc_101C6A8: LateIdCallSt
  loc_101C6B3: var_94 = CVar(CLng(4)) 'Long
  loc_101C6B8: var_D0 = &H5DC
  loc_101C6C4: LateIdCallSt
  loc_101C6CE: Set var_AC = Nothing 
  loc_101C6D2: Exit Sub
End Sub

Public Sub Proc_69_52_FF4D1C(arg_C, arg_10, arg_14, arg_18) 'FF4D1C
  'Data Table: 4BDD8C
  Dim var_D4 As Variant
  Dim var_154 As Variant
  Dim unk_4BDDA0 As Connection15
  Dim var_90 As Recordset15
  Dim var_19C As Fields15
  Dim var_8C As Double
  loc_FF4B75: Proc_6_7_F25D88(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_FF4BA3: var_154 = var_198 & var_B4 & " And RestCode='" & CVar(arg_14) & "' And Party='" & CVar(arg_18) 
  loc_FF4BBA: unk_4BDDA0.Execute CStr(var_154 & "' Order by Appdate Desc"), -1, var_19C
  loc_FF4BC5: Set var_90 = var_19C
  loc_FF4BFB: If (var_90.RecordCount > 0) Then
  loc_FF4C10:   var_19C = var_90.Fields
  loc_FF4C20:   var_B4 = var_19C.Item("Rate").Value
  loc_FF4C29:   var_8C = CSng(var_B4)
  loc_FF4C39: Else
  loc_FF4C62:   Proc_6_7_F25D88(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="), var_154)
  loc_FF4C6A:   var_D4 = -1 & var_B4 
  loc_FF4C94:   unk_4BDDA0.Execute CStr(var_198 & var_B4 & " And RestCode='" & CVar(arg_14) & "' And Party='' Order by Appdate Desc"), var_19C, var_8C
  loc_FF4C9F:   Set var_90 = var_19C
  loc_FF4CD1:   If (var_90.RecordCount > 0) Then
  loc_FF4CFF:     var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_FF4D0F:   Else
  loc_FF4D12:     var_8C = CDbl(0)
  loc_FF4D15:   End If
  loc_FF4D15: End If
  loc_FF4D15: Proc_69_52_FF4D1C = var_8C
End Sub
