VERSION 5.00
Begin VB.Form FrmPOSSaleDataTransfer
  Caption = "POS Bill Deletion Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    Left = 2610
    Top = 1425
    Width = 3345
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin DataGrid DGCompany
    Left = 8490
    Top = 6990
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 21
  End
  Begin CommandButton Command1
    Caption = "Serialize Bill"
    Left = 11880
    Top = 3330
    Width = 1125
    Height = 780
    Visible = 0   'False
    TabIndex = 20
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton CmdExit
    Caption = "E&xit"
    Left = 3915
    Top = 8280
    Width = 1545
    Height = 495
    TabIndex = 18
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
  Begin CommandButton CmdTransfer
    Caption = "&Transfer"
    Left = 2250
    Top = 8280
    Width = 1545
    Height = 495
    TabIndex = 17
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
  Begin TextBox TxtSearch
    BackColor = &HE0E0E0&
    Left = 8415
    Top = 2250
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdFill
    Caption = "&Fill"
    Left = 6075
    Top = 915
    Width = 1125
    Height = 780
    TabIndex = 5
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CheckBox Check1
    Caption = "All"
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 825
    Top = 1995
    Width = 915
    Height = 195
    TabIndex = 12
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 2820
    Width = 4680
    Height = 375
    Visible = 0   'False
    TabIndex = 11
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 8040
    Top = 615
    Width = 3345
    Height = 255
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 35
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
    Index = 2
    BackColor = &HFFFFFF&
    Left = 2610
    Top = 1155
    Width = 3345
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 35
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
    Left = 2610
    Top = 885
    Width = 1635
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 0
    BackColor = &HFFFFFF&
    Left = 2610
    Top = 615
    Width = 1635
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin MSHFlexGrid GridSel
    Left = 735
    Top = 1920
    Width = 6500
    Height = 6000
    TabIndex = 6
  End
  Begin DataGrid DGRestType
    Left = 8310
    Top = 6585
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin MSFlexGrid FGPoint
    Left = 8460
    Top = 2505
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGPayType
    Left = 7995
    Top = 6225
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin Label LblName
    Caption = "Party Name"
    Index = 4
    ForeColor = &H0&
    Left = 975
    Top = 1440
    Width = 990
    Height = 240
    TabIndex = 22
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
    Left = 780
    Top = 7920
    Width = 6360
    Height = 270
    TabIndex = 19
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
  Begin Label LblName
    Caption = "Mode Of Payment"
    Index = 3
    ForeColor = &H0&
    Left = 6405
    Top = 630
    Width = 1515
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
    Caption = "Outlet Name"
    Index = 2
    ForeColor = &H0&
    Left = 975
    Top = 1155
    Width = 1050
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
    Caption = "From Date"
    Index = 0
    ForeColor = &H0&
    Left = 975
    Top = 615
    Width = 900
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
    Caption = "To Date"
    Index = 1
    ForeColor = &H0&
    Left = 960
    Top = 870
    Width = 675
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

Attribute VB_Name = "FrmPOSSaleDataTransfer"

Private global_60 As Integer

Private Sub DGCompany_UnknownEvent_9 'F3FBE4
  'Data Table: 486ABC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3FADB: Me.DGCompany.Visible = False
  loc_F3FAFA: If (Me.RecordCount > 0) Then
  loc_F3FB39:   Set var_B4 = Me.Txt
  loc_F3FB3F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(4), var_B8)
  loc_F3FB47:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3FB7A:   var_B0 = Me.Fields.Item("Code")
  loc_F3FB99:   Set var_B4 = Me.Txt
  loc_F3FB9F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(4), var_B8)
  loc_F3FBA7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3FBBD: End If
  loc_F3FBC8: Set var_A8 = Me.Txt
  loc_F3FBCE: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(4))
  loc_F3FBD6: var_B0.SetFocus
  loc_F3FBE2: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'E70D2C
  'Data Table: 486ABC
  loc_E70CEA: Proc_6_153_E91194(Me.DGCompany, arg_14)
  loc_E70D01: Set var_8C = Me.FGPoint
  loc_E70D1D: Proc_6_138_106D6F8(Me.DGCompany, global_80, CInt(4))
  loc_E70D2B: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E15ED0
  'Data Table: 486ABC
  loc_E15EC5: Me.Global.Unload Me
  loc_E15ECD: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E64ED8
  'Data Table: 486ABC
  loc_E64EA8: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_E64EAB:   Call DGRestType_UnknownEvent_9()
  loc_E64EB0: End If
  loc_E64ECC: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_E64ECF:   Call DGCompany_UnknownEvent_9()
  loc_E64ED4: End If
  loc_E64ED4: Exit Sub
End Sub

Private Sub Form_Load() 'F6F588
  'Data Table: 486ABC
  Dim var_8C As String
  Dim var_94 As String
  Dim unk_486AD0 As Connection15
  Dim var_B8 As CommandButton
  loc_F6F454: On Error Goto loc_F6F57F
  loc_F6F480: var_94 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where Code<>'" & MemVar_1F92078 & "RS' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_F6F489: unk_486AD0.Execute var_94, var_B4, -1
  loc_F6F4BC: CVarUnk
  loc_F6F4C1: VerifyVarObj
  loc_F6F4CD: LateIdStAd
  loc_F6F4F6: var_8C = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_F6F4FF: unk_486AD0.Execute var_8C, var_B4, -1
  loc_F6F52E: CVarUnk
  loc_F6F533: VerifyVarObj
  loc_F6F539: Set var_B8 = Me.DGCompany
  loc_F6F53F: LateIdStAd
  loc_F6F553: Set var_B8 = Me.CmdTransfer
  loc_F6F559: var_B8.Enabled = False
  loc_F6F561: Call Proc_219_22_117C2B0(var_B8, Me.DGRestType, var_B8)
  loc_F6F56D: Call 0.Method_arg_7C (CDbl(0), var_B8)
  loc_F6F579: Call 0.Method_arg_74 (CDbl(0), var_B8)
  loc_F6F57E: Exit Sub
  loc_F6F57F: ' Referenced from: F6F454
  loc_F6F57F: Proc_6_60_E62BC4(var_B8)
  loc_F6F584: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5DE38
  'Data Table: 486ABC
  loc_E5DDF7: Set global_72 = Nothing
  loc_E5DE09: Set global_84 = Nothing
  loc_E5DE1B: Set global_76 = Nothing
  loc_E5DE2D: Set global_80 = Nothing
  loc_E5DE34: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A7A8
  'Data Table: 486ABC
  loc_E2A780: On Error Goto loc_E2A79F
  loc_E2A797: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2A79F: ' Referenced from: E2A780
  loc_E2A79F: Proc_6_60_E62BC4(Shift)
  loc_E2A7A4: Exit Sub
End Sub

Private Sub Check1_Click() 'F678DC
  'Data Table: 486ABC
  Dim var_9C As Variant
  loc_F677BF: If (CLng(Me.Check1.Value) = 0) Then
  loc_F677D0:   Me.GridSel.Enabled = True
  loc_F677F7:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F6780D:     Me.GridSel.Row = 1
  loc_F67828:     Me.GridSel.Col = 0
  loc_F67830:   End If
  loc_F67833: Else
  loc_F67842:   Me.GridSel.Enabled = False
  loc_F67869:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F6787F:     Me.GridSel.Row = 0
  loc_F6789A:     Me.GridSel.Col = 0
  loc_F678BB:     var_9C = CVar((CLng(Me.GridSel.Rows) - 1)) 'Long
  loc_F678CA:     Me.GridSel.RowSel = 0
  loc_F678D9:   End If
  loc_F678D9: End If
  loc_F678D9: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E229F4
  'Data Table: 486ABC
  loc_E229DA: If (KeyCode = &HD) Then
  loc_E229EB:   Proc_303_0_FB9B68("	")
  loc_E229F3: End If
  loc_E229F3: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A 'FDA66C
  'Data Table: 486ABC
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FDA4BA: If (KeyCode = &HD) Then
  loc_FDA4CB:   Proc_303_0_FB9B68("	")
  loc_FDA4D3: End If
  loc_FDA4F2: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FDA4F5:   Exit Sub
  loc_FDA4F6: End If
  loc_FDA520: If ((CLng(KeyCode) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FDA533:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FDA54D:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FDA568:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDA56D:   var_D4 = 0
  loc_FDA59F:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDA5A4:   var_19C = 0
  loc_FDA5DF:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FDA5E7:   Set var_1D0 = Me.GridSel
  loc_FDA5ED:   LateIdCallSt
  loc_FDA627:   var_86 = CInt((UBound(global_68, 1) + 1))
  loc_FDA639:   ReDim Preserve global_68(0 To CLng(var_86))
  loc_FDA661:   global_68(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FDA668: End If
  loc_FDA668: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5C094
  'Data Table: 486ABC
  loc_E5C06F: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5C072:   Exit Sub
  loc_E5C073: End If
  loc_E5C08A: global_60 = CInt(CLng(Me.GridSel.Row))
  loc_E5C093: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '102842C
  'Data Table: 486ABC
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_102822D: If ((CLng(Me.GridSel.Col) <> 0) Or (global_60 = 0)) Then
  loc_1028230:   Exit Sub
  loc_1028231: End If
  loc_102828D: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_1028290:   Exit Sub
  loc_1028291: End If
  loc_10282C0: For var_BA = global_60 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_10282D9:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_10282F4:   Me.GridSel.Col = 0
  loc_102830C:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1028326:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1028332:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1028337:   var_EC = 0
  loc_102835A:   var_160 = CVar(CLng(var_88)) 'Long
  loc_102835F:   var_180 = 0
  loc_102839A:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10283A2:   Set var_A0 = Me.GridSel
  loc_10283A8:   LateIdCallSt
  loc_10283DA:   var_86 = CInt((UBound(global_68, 1) + 1))
  loc_10283EC:   ReDim Preserve global_68(0 To CLng(var_86))
  loc_1028414:   global_68(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_102841E: Next var_BA 'Integer
  loc_1028428: global_60 = 0
  loc_102842B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12E09B0
  'Data Table: 486ABC
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_88 As DataGrid
  loc_12E02FC: On Error Goto loc_12E096B
  loc_12E0309: Set var_88 = Me.Txt
  loc_12E030F: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12E031D: Proc_6_74_E226B0(var_8C)
  loc_12E0329: Call Proc_219_27_EBD8D0(var_8C)
  loc_12E0331: var_92 = Index
  loc_12E033C: If (var_92 = CInt(0)) Then
  loc_12E034C:   Set var_88 = Me.Txt
  loc_12E0352:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E036D:   Set var_90 = Me.Txt
  loc_12E0373:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E037B:   var_9C.SelLength = Len(var_8C.Text)
  loc_12E039B:   Set var_88 = Me.Txt
  loc_12E03A1:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E03BB:   Set var_90 = Me.Txt
  loc_12E03C1:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E03C9:   var_9C.Tag = var_8C.Text
  loc_12E03DF: Else
  loc_12E03E7:   If (var_92 = CInt(1)) Then
  loc_12E03F7:     Set var_88 = Me.Txt
  loc_12E03FD:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E0418:     Set var_90 = Me.Txt
  loc_12E041E:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E0426:     var_9C.SelLength = Len(var_8C.Text)
  loc_12E0446:     Set var_88 = Me.Txt
  loc_12E044C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E0454:     var_98 = var_8C.Text
  loc_12E0466:     Set var_90 = Me.Txt
  loc_12E046C:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E0474:     var_9C.Tag = var_98
  loc_12E048A:   Else
  loc_12E0492:     If (var_92 = CInt(2)) Then
  loc_12E04A3:       Set var_88 = Me.Txt
  loc_12E04A9:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E04C8:       Me.DGRestType.Left = CVar(var_8C.Left)
  loc_12E04E4:       Set var_90 = Me.Txt
  loc_12E04EA:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_9C)
  loc_12E0505:       Set var_88 = Me.Txt
  loc_12E050B:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E0523:       var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E0532:       Me.DGRestType.Top = CVar(var_8C.Left)
  loc_12E0553:       Me.Filter = 0
  loc_12E0564:       Me.Filter = "RestType<>'Kitchen'"
  loc_12E0580:       If (Me.RecordCount > 0) Then
  loc_12E058E:         Set var_8C = Me.FGPoint
  loc_12E05A6:         Proc_6_137_1193554(Me.DGRestType, global_76, Index)
  loc_12E05B4:       End If
  loc_12E0602:       Set var_88 = Me.Txt
  loc_12E0608:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E0610:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E0628:       If (var_8C Or (var_98 = vbNullString)) Then
  loc_12E062B:         Exit Sub
  loc_12E062C:       End If
  loc_12E0639:       Set var_88 = Me.Txt
  loc_12E063F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E0647:       var_98 = var_8C.Text
  loc_12E0659:       var_B0 = "Name"
  loc_12E0670:       var_9C = Me.Fields.Item(var_B0)
  loc_12E0694:       If CBool(CVar(var_98) <> var_9C.Value) Then
  loc_12E069D:         Me.MoveFirst
  loc_12E06C0:         Set var_88 = Me.Txt
  loc_12E06C6:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E06CE:         0 = var_8C.Text
  loc_12E06E7:         Me.Find 1 & var_98 & "'", var_B0, var_92
  loc_12E06FC:       End If
  loc_12E070F:       Me.DGRestType.Tag = CVar(CStr(Index))
  loc_12E071D:     Else
  loc_12E0725:       If (var_92 = CInt(4)) Then
  loc_12E0736:         Set var_88 = Me.Txt
  loc_12E073C:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_12E075B:         Me.DGCompany.Left = CVar(var_8C.Left)
  loc_12E0777:         Set var_90 = Me.Txt
  loc_12E077D:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_9C)
  loc_12E0798:         Set var_88 = Me.Txt
  loc_12E079E:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_12E07B6:         var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E07C5:         Me.DGCompany.Top = CVar(var_8C.Left)
  loc_12E07EE:         If (Me.RecordCount > 0) Then
  loc_12E07FC:           Set var_8C = Me.FGPoint
  loc_12E0814:           Proc_6_137_1193554(Me.DGCompany, global_80)
  loc_12E0822:         End If
  loc_12E0870:         Set var_88 = Me.Txt
  loc_12E0876:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E087E:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E0896:         If (Index Or (var_98 = vbNullString)) Then
  loc_12E0899:           Exit Sub
  loc_12E089A:         End If
  loc_12E08A7:         Set var_88 = Me.Txt
  loc_12E08AD:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E08B5:         var_98 = var_8C.Text
  loc_12E08C7:         var_B0 = "Name"
  loc_12E0902:         If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_12E090B:           Me.MoveFirst
  loc_12E092E:           Set var_88 = Me.Txt
  loc_12E0934:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E093C:           0 = var_8C.Text
  loc_12E0955:           Me.Find 1 & var_98 & "'", var_B0, var_8C
  loc_12E096A:         End If
  loc_12E096A:       End If
  loc_12E096A:     End If
  loc_12E096A:   End If
  loc_12E096A: End If
  loc_12E096A: Exit Sub
  loc_12E096B: ' Referenced from: 12E02FC
  loc_12E0973: Set var_88 = Err()
  loc_12E0979: Call 0.Method_arg_2C (var_98)
  loc_12E099A: MsgBox(CVar(var_98), &H40, "Information", var_FC, var_124)
  loc_12E09AD: Exit Sub
  loc_12E09AE: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10E8918
  'Data Table: 486ABC
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  loc_10E8612: If (CLng(Shift) = &H1B) Then
  loc_10E8615:   Call Proc_219_27_EBD8D0()
  loc_10E861A:   Exit Sub
  loc_10E861B: End If
  loc_10E861E: var_88 = KeyCode
  loc_10E8629: If (var_88 = CInt(2)) Then
  loc_10E8649:   Set var_9C = Me.FGPoint
  loc_10E8654:   Set var_98 = Nothing
  loc_10E8682:   Proc_6_69_134A198(Me.DGRestType, Me.Txt, KeyCode, global_76, Shift, 0)
  loc_10E86F1:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10E8717:     Proc_6_138_106D6F8(Me.DGRestType, global_76, KeyCode, Me.FGPoint, 1)
  loc_10E8725:   End If
  loc_10E8728: Else
  loc_10E8730:   If (var_88 = CInt(4)) Then
  loc_10E8750:     Set var_9C = Me.FGPoint
  loc_10E875B:     Set var_98 = Nothing
  loc_10E878D:     Proc_6_69_134A198(Me.DGCompany, Me.Txt, CInt(4), global_80, Shift, 0, 1)
  loc_10E87FC:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10E8803:       Set var_98 = Me.DGCompany
  loc_10E8822:       Proc_6_138_106D6F8(var_98, global_80, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10E8830:     End If
  loc_10E8830:   End If
  loc_10E8830: End If
  loc_10E8861: Set var_98 = Me.DGCompany
  loc_10E8886: If (((CBool(Me.DGRestType.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_10E88B0:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(0)) Or (KeyCode = CInt(1)))) Then
  loc_10E88B9:     Call Txt_Validate(KeyCode)
  loc_10E88C4:     If (var_86 = &HFF) Then
  loc_10E88C7:       Exit Sub
  loc_10E88C8:     End If
  loc_10E88CE:     Proc_6_75_E527CC(Shift, arg_14, var_86, 0)
  loc_10E88D6:   Else
  loc_10E88EB:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10E88F4:       Proc_6_75_E527CC(Shift, arg_14, var_98)
  loc_10E88FC:     Else
  loc_10E8906:       If (CLng(Shift) = &H26) Then
  loc_10E890F:         Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_10E8914:       End If
  loc_10E8914:     End If
  loc_10E8914:   End If
  loc_10E8914: End If
  loc_10E8914: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F8FD6C
  'Data Table: 486ABC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_F8FC0F: Proc_6_58_E054C0(arg_10)
  loc_F8FC1A: Proc_6_133_E7EF78(var_94)
  loc_F8FC23: arg_10 = CInt(var_94)
  loc_F8FC2C: var_96 = KeyAscii
  loc_F8FC37: If (var_96 = CInt(2)) Then
  loc_F8FC56:   If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_F8FC83:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_F8FCB5:     Proc_6_138_106D6F8(Me.DGRestType, global_76, KeyAscii, Me.FGPoint)
  loc_F8FCC3:   End If
  loc_F8FCC6: Else
  loc_F8FCCE:   If (var_96 = CInt(4)) Then
  loc_F8FCED:     If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_F8FD25:       Proc_6_68_129FB34(Me.DGCompany, Me.Txt, KeyAscii, global_80, arg_10)
  loc_F8FD5B:       Proc_6_138_106D6F8(Me.DGCompany, global_80, KeyAscii, Me.FGPoint, "Name")
  loc_F8FD69:     End If
  loc_F8FD69:   End If
  loc_F8FD69: End If
  loc_F8FD69: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C79C
  'Data Table: 486ABC
  loc_E4C77A: Set var_88 = Me.Txt
  loc_E4C780: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C78E: Proc_6_73_E22704(var_8C)
  loc_E4C79A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1166DB0
  'Data Table: 486ABC
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_98 As TextBox
  loc_1166A00: On Error Goto loc_1166D69
  loc_1166A06: var_86 = Cancel
  loc_1166A11: If (var_86 = CInt(0)) Then
  loc_1166A1E:   Set var_8C = Me.Txt
  loc_1166A24:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1166A44:   Set var_98 = Me.Txt
  loc_1166A4A:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1166A52:   var_9C.Text = Proc_6_33_1512840(var_90)
  loc_1166A68: Else
  loc_1166A70:   If (var_86 = CInt(1)) Then
  loc_1166A7D:     Set var_8C = Me.Txt
  loc_1166A83:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1166AA3:     Set var_98 = Me.Txt
  loc_1166AA9:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1166AB1:     var_9C.Text = Proc_6_33_1512840(var_90)
  loc_1166AC7:   Else
  loc_1166ACF:     If (var_86 = CInt(2)) Then
  loc_1166ADF:       Set var_8C = Me.Txt
  loc_1166AE5:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1166B04:       If (var_90.Text <> vbNullString) Then
  loc_1166B42:         Set var_94 = Me.Txt
  loc_1166B48:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1166B50:         var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1166B83:         var_90 = Me.Fields.Item("Code")
  loc_1166BA1:         Set var_94 = Me.Txt
  loc_1166BA7:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1166BAF:         var_98.Tag = CStr(var_90.Value)
  loc_1166BC8:       Else
  loc_1166BD5:         Set var_8C = Me.Txt
  loc_1166BDB:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1166BE3:         var_90.Text = vbNullString
  loc_1166BFC:         Set var_8C = Me.Txt
  loc_1166C02:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1166C0A:         var_90.Tag = vbNullString
  loc_1166C16:       End If
  loc_1166C19:     Else
  loc_1166C21:       If (var_86 = CInt(4)) Then
  loc_1166C31:         Set var_8C = Me.Txt
  loc_1166C37:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1166C56:         If (var_90.Text <> vbNullString) Then
  loc_1166C94:           Set var_94 = Me.Txt
  loc_1166C9A:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1166CA2:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1166CD5:           var_90 = Me.Fields.Item("Code")
  loc_1166CE6:           var_A0 = CStr(var_90.Value)
  loc_1166CF3:           Set var_94 = Me.Txt
  loc_1166CF9:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1166D01:           var_98.Tag = var_A0
  loc_1166D1A:         Else
  loc_1166D27:           Set var_8C = Me.Txt
  loc_1166D2D:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1166D35:           var_90.Text = vbNullString
  loc_1166D4E:           Set var_8C = Me.Txt
  loc_1166D54:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1166D5C:           var_90.Tag = vbNullString
  loc_1166D68:         End If
  loc_1166D68:       End If
  loc_1166D68:     End If
  loc_1166D68:   End If
  loc_1166D68: End If
  loc_1166D68: Exit Sub
  loc_1166D69: ' Referenced from: 1166A00
  loc_1166D71: Set var_8C = Err()
  loc_1166D77: Call 0.Method_arg_2C (var_A0)
  loc_1166D98: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_1166DAB: Exit Sub
  loc_1166DAC: Exit Sub
End Sub

Private Sub cmdTransfer_Click() 'DFF4BC
  'Data Table: 486ABC
  loc_DFF4B4: Call Proc_219_28_1195798()
  loc_DFF4B9: Exit Sub
  loc_DFF4BA: CExtInstUnk
End Sub

Private Sub DGRestType_UnknownEvent_9 'F3FEA4
  'Data Table: 486ABC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3FD9B: Me.DGRestType.Visible = False
  loc_F3FDBA: If (Me.RecordCount > 0) Then
  loc_F3FDF9:   Set var_B4 = Me.Txt
  loc_F3FDFF:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3FE07:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3FE3A:   var_B0 = Me.Fields.Item("Code")
  loc_F3FE59:   Set var_B4 = Me.Txt
  loc_F3FE5F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3FE67:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3FE7D: End If
  loc_F3FE88: Set var_A8 = Me.Txt
  loc_F3FE8E: Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2))
  loc_F3FE96: var_B0.SetFocus
  loc_F3FEA2: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_1F 'E70E54
  'Data Table: 486ABC
  loc_E70E12: Proc_6_153_E91194(Me.DGRestType, arg_14)
  loc_E70E29: Set var_8C = Me.FGPoint
  loc_E70E45: Proc_6_138_106D6F8(Me.DGRestType, global_76, CInt(2))
  loc_E70E53: Exit Sub
End Sub

Private Sub Command1_Click() 'DFBF70
  'Data Table: 486ABC
  loc_DFBF6C: Exit Sub
End Sub

Private Sub CmdFill_Click() '118F994
  'Data Table: 486ABC
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As Variant
  loc_118F5B7: Set var_88 = Me.Txt
  loc_118F5BD: Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_118F5E6: If (Proc_6_27_EA565C(var_8C, "From Date") = 0) Then
  loc_118F5E9:   Exit Sub
  loc_118F5EA: End If
  loc_118F5F8: Set var_88 = Me.Txt
  loc_118F5FE: Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_118F622: Set var_90 = Me.Txt
  loc_118F628: Call 0.Method_CmdFill_Click0 (CInt(0), var_98, var_9C)
  loc_118F630: (CDate(var_8C.Text) > MemVar_1F920FC) = var_98.Text
  loc_118F651: If (var_8C Or (CDate(var_9C) < MemVar_1F920F4)) Then
  loc_118F66D:   MsgBox("FromDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_118F688:   Set var_88 = Me.Txt
  loc_118F68E:   Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_118F696:   var_8C.SetFocus
  loc_118F6A2:   Exit Sub
  loc_118F6A3: End If
  loc_118F6AE: Set var_88 = Me.Txt
  loc_118F6B4: Call 0.Method_CmdFill_Click0 (CInt(1), var_8C)
  loc_118F6DD: If (Proc_6_27_EA565C(var_8C, "To Date") = 0) Then
  loc_118F6E0:   Exit Sub
  loc_118F6E1: End If
  loc_118F6EF: Set var_88 = Me.Txt
  loc_118F6F5: Call 0.Method_CmdFill_Click0 (CInt(1), var_8C)
  loc_118F719: Set var_90 = Me.Txt
  loc_118F71F: Call 0.Method_CmdFill_Click0 (CInt(1), var_98, var_9C)
  loc_118F727: (CDate(var_8C.Text) > MemVar_1F920FC) = var_98.Text
  loc_118F748: If (var_8C Or (CDate(var_9C) < MemVar_1F920F4)) Then
  loc_118F764:   MsgBox("ToDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_118F77F:   Set var_88 = Me.Txt
  loc_118F785:   Call 0.Method_CmdFill_Click0 (CInt(0))
  loc_118F78D:   var_8C.SetFocus
  loc_118F799:   Exit Sub
  loc_118F79A: End If
  loc_118F7A8: Set var_90 = Me.Txt
  loc_118F7AE: Call 0.Method_CmdFill_Click0 (CInt(1), var_98)
  loc_118F7C9: Set var_88 = Me.Txt
  loc_118F7CF: Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_118F7F9: If (CDate(var_8C.Text) > CDate(var_98.Text)) Then
  loc_118F815:   MsgBox("FromDate must be less than ToDate", &H10, var_DC, var_FC, var_11C)
  loc_118F830:   Set var_88 = Me.Txt
  loc_118F836:   Call 0.Method_CmdFill_Click0 (CInt(0), var_8C)
  loc_118F83E:   var_8C.SetFocus
  loc_118F84A:   Exit Sub
  loc_118F84B: End If
  loc_118F856: Set var_88 = Me.Txt
  loc_118F85C: Call 0.Method_CmdFill_Click0 (CInt(2), var_8C)
  loc_118F885: If (Proc_6_27_EA565C(var_8C, "Outlet") = 0) Then
  loc_118F888:   Exit Sub
  loc_118F889: End If
  loc_118F894: Set var_88 = Me.Txt
  loc_118F89A: Call 0.Method_CmdFill_Click0 (CInt(4), var_8C)
  loc_118F8C3: If (Proc_6_27_EA565C(var_8C, "Party Name") = 0) Then
  loc_118F8C6:   Exit Sub
  loc_118F8C7: End If
  loc_118F8D3: Me.CmdFill.Enabled = False
  loc_118F8E8: Me.Label1.Caption = "Processing..."
  loc_118F8FA: Me.Label1.Refresh
  loc_118F902: Call Proc_219_22_117C2B0(var_8C)
  loc_118F907: Call Proc_219_23_1231F7C()
  loc_118F91F: Me.GridSel.Row = 1
  loc_118F93A: Me.GridSel.Col = 0
  loc_118F946: Set var_88 = Me.GridSel
  loc_118F964: Me.Label1.Caption = vbNullString
  loc_118F976: Me.Label1.Refresh
  loc_118F98A: Me.CmdFill.Enabled = True
  loc_118F992: Exit Sub
End Sub

Public Sub Proc_219_22_117C2B0
  'Data Table: 486ABC
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_117BEE2: Me.GridSel.Rows = 1
  loc_117BEF6: Me.GridSel.Cols = 5
  loc_117BEFB: var_98 = 0
  loc_117BF07: var_BC = CVar(CLng(0)) 'Long
  loc_117BF0C: var_DC = "O"
  loc_117BF15: LateIdCallSt
  loc_117BF20: var_98 = CVar(CLng(0)) 'Long
  loc_117BF25: var_BC = &H258
  loc_117BF31: LateIdCallSt
  loc_117BF39: var_98 = 0
  loc_117BF45: var_BC = CVar(CLng(1)) 'Long
  loc_117BF4A: var_DC = "Bill No"
  loc_117BF53: LateIdCallSt
  loc_117BF5E: var_98 = CVar(CLng(1)) 'Long
  loc_117BF69: var_BC = CVar(CInt(1)) 'Integer
  loc_117BF70: LateIdCallSt
  loc_117BF7B: var_98 = CVar(CLng(1)) 'Long
  loc_117BF86: var_BC = CVar(CInt(1)) 'Integer
  loc_117BF8D: LateIdCallSt
  loc_117BF98: var_98 = CVar(CLng(1)) 'Long
  loc_117BF9D: var_BC = &H5DC
  loc_117BFA9: LateIdCallSt
  loc_117BFB1: var_98 = 0
  loc_117BFBD: var_BC = CVar(CLng(2)) 'Long
  loc_117BFC2: var_DC = "DocId"
  loc_117BFCB: LateIdCallSt
  loc_117BFD6: var_98 = CVar(CLng(2)) 'Long
  loc_117BFE1: var_BC = CVar(CInt(7)) 'Integer
  loc_117BFE8: LateIdCallSt
  loc_117BFF3: var_98 = CVar(CLng(2)) 'Long
  loc_117BFFE: var_BC = CVar(CInt(7)) 'Integer
  loc_117C005: LateIdCallSt
  loc_117C010: var_98 = CVar(CLng(2)) 'Long
  loc_117C015: var_BC = 0
  loc_117C021: LateIdCallSt
  loc_117C029: var_98 = 0
  loc_117C035: var_BC = CVar(CLng(3)) 'Long
  loc_117C03A: var_DC = "Bill Date"
  loc_117C043: LateIdCallSt
  loc_117C04E: var_98 = CVar(CLng(3)) 'Long
  loc_117C059: var_BC = CVar(CInt(1)) 'Integer
  loc_117C060: LateIdCallSt
  loc_117C06B: var_98 = CVar(CLng(3)) 'Long
  loc_117C076: var_BC = CVar(CInt(1)) 'Integer
  loc_117C07D: LateIdCallSt
  loc_117C088: var_98 = CVar(CLng(3)) 'Long
  loc_117C08D: var_BC = &H7D0
  loc_117C099: LateIdCallSt
  loc_117C0A1: var_98 = 0
  loc_117C0AD: var_BC = CVar(CLng(4)) 'Long
  loc_117C0B2: var_DC = "Bill Amount"
  loc_117C0BB: LateIdCallSt
  loc_117C0C6: var_98 = CVar(CLng(4)) 'Long
  loc_117C0D1: var_BC = CVar(CInt(7)) 'Integer
  loc_117C0D8: LateIdCallSt
  loc_117C0E3: var_98 = CVar(CLng(4)) 'Long
  loc_117C0EE: var_BC = CVar(CInt(7)) 'Integer
  loc_117C0F5: LateIdCallSt
  loc_117C100: var_98 = CVar(CLng(4)) 'Long
  loc_117C105: var_BC = &H7D0
  loc_117C111: LateIdCallSt
  loc_117C119: var_98 = vbNullString
  loc_117C123: Set var_AC = Me.GridSel
  loc_117C147: Me.GridSel.FixedRows = 1
  loc_117C151: Set var_88 = Nothing 
  loc_117C165: ReDim Preserve global_68(0 To 0)
  loc_117C17C: global_68(0) = 0
  loc_117C190: Me.GridSel.Height = CVar(CDbl(6000))
  loc_117C1AB: Me.GridSel.Width = CVar(CDbl(6500))
  loc_117C1B3: var_98 = 0
  loc_117C1E4: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_117C1F3: var_98 = 0
  loc_117C224: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_117C255: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_117C286: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_117C2A5: Me.Check1.Value = CInt(0)
  loc_117C2AD: Exit Sub
End Sub

Public Sub Proc_219_23_1231F7C
  'Data Table: 486ABC
  Dim var_8C As String
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_114 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_15C As TextBox
  Dim var_190 As Variant
  Dim var_1A8 As TextBox
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  Dim var_22C As Variant
  Dim unk_486AD0 As Connection15
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_100 As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_BC As Variant
  loc_1231ADC: var_8C = "Select S.Vno,S.Vdate,S.NetAmt as BillAmount,S.DocId From (PayCharge P Inner Join Sale1 S on P.DocId=S.DocId) Where P.PayType In ('Company') And P.PayType Not In('PPOS','IPOS') And P.PayCode Not In('" & MemVar_1F92078
  loc_1231AFF: Set var_98 = Me.Txt
  loc_1231B05: Call 0.Method_Proc_219_23_1231F7C0 (CInt(0), var_9C, CVar(var_8C & "ROOM','" & MemVar_1F92078 & "TOUT') And S.VDate Between "))
  loc_1231B14: Proc_6_7_F25D88(var_BC, CVar(var_9C), var_250)
  loc_1231B1C: var_DC = -1 & var_BC 
  loc_1231B34: Set var_100 = Me.Txt
  loc_1231B3A: Call 0.Method_Proc_219_23_1231F7C0 (CInt(1), var_104)
  loc_1231B49: Proc_6_7_F25D88(var_124, CVar(var_104))
  loc_1231B5A: var_154 = var_DC & " And " & var_124 & " And P.RestCode='" 
  loc_1231B6C: Set var_158 = Me.Txt
  loc_1231B72: Call 0.Method_Proc_219_23_1231F7C0 (CInt(2), var_15C, var_160)
  loc_1231B7A: var_154 = var_15C.Tag
  loc_1231BA0: Set var_1A4 = Me.Txt
  loc_1231BA6: Call 0.Method_Proc_219_23_1231F7C0 (CInt(4), var_1A8)
  loc_1231BD5: var_22C = var_254 & CVar(var_160) & "' And P.CompCode='" & CVar(var_1A8.Tag) & "' And P.Logsite_Code='" & CVar(MemVar_1F92078) & "' Order by S.VNo" 
  loc_1231BE3: unk_486AD0.Execute CStr(var_22C), , 
  loc_1231BF4: Set global_84 = var_254
  loc_1231C54: If (Me.RecordCount = 0) Then
  loc_1231C6A:   Me.GridSel.Rows = 2
  loc_1231C72:   Exit Sub
  loc_1231C73: End If
  loc_1231C86: Me.GridSel.Row = 1
  loc_1231C9A: Me.CmdTransfer.Enabled = True
  loc_1231CA2: ' Referenced from: 1231F5B
  loc_1231CB4: If Not(Me.EOF) Then
  loc_1231CBB:   Set var_264 = Me.GridSel
  loc_1231CBE:   var_EC = vbNullString
  loc_1231CE2:   var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1231CEA:   var_190 = CVar(CLng(0)) 'Long
  loc_1231CF8:   LateIdCallSt
  loc_1231D19:   var_144 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1231D21:   var_1DC = CVar(CLng(1)) 'Long
  loc_1231D54:   var_CC = CVar(CStr(Me.Fields.Item("VNo").Value)) 'String
  loc_1231D5B:   LateIdCallSt
  loc_1231DC0:   var_CC = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_264, var_CC, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_1231DC7:   LateIdCallSt
  loc_1231E20:   var_190 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1231E28:   var_1FC = CVar(CLng(3)) 'Long
  loc_1231E45:   var_BC = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("VDate")), var_264, "dd/mmm/yyyy", var_264, vbNullString)) 'String
  loc_1231E5B:   LateIdCallSt
  loc_1231EA5:   Proc_6_39_E7C810(var_BC, CVar(Me.Fields.Item("BillAmount")), var_264, CVar(CStr(Format(var_BC, "dd/mmm/yyyy"))), 1, 1)
  loc_1231EBD:   var_190 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1231EC5:   var_1FC = CVar(CLng(4)) 'Long
  loc_1231EEE:   var_114 = CVar(CStr(Format(var_BC, "0.00"))) 'String
  loc_1231EF5:   LateIdCallSt
  loc_1231F15:   Set var_264 = Nothing 
  loc_1231F32:   var_EC = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_1231F41:   Me.GridSel.Row = "BillAmount"
  loc_1231F56:   Me.MoveNext
  loc_1231F5B:   GoTo loc_1231CA2
  loc_1231F5E: End If
  loc_1231F71: Me.GridSel.FixedRows = 1
  loc_1231F79: Exit Sub
End Sub

Public Sub Proc_219_24_F08FE0(arg_C, arg_10) 'F08FE0
  'Data Table: 486ABC
  Dim var_86 As Integer
  loc_F08EEE: var_86 = &HFF
  loc_F08F03: Call Proc_219_25_1079F58("Sale1", arg_C, arg_10)
  loc_F08F11: If (var_8E = 0) Then
  loc_F08F19:   Proc_219_24_F08FE0 = 0
  loc_F08F1F: End If
  loc_F08F31: Call Proc_219_25_1079F58("Sale2", arg_C, arg_10)
  loc_F08F3F: If (var_8E = 0) Then
  loc_F08F47:   Proc_219_24_F08FE0 = 0
  loc_F08F4D: End If
  loc_F08F5F: Call Proc_219_25_1079F58("Stock", arg_C, arg_10, var_8E)
  loc_F08F6D: If (var_8E = 0) Then
  loc_F08F75:   Proc_219_24_F08FE0 = 0
  loc_F08F7B: End If
  loc_F08F8D: Call Proc_219_25_1079F58("SunTran", arg_C, arg_10, var_8E)
  loc_F08F9B: If (var_8E = 0) Then
  loc_F08FA3:   Proc_219_24_F08FE0 = 0
  loc_F08FA9: End If
  loc_F08FBB: Call Proc_219_25_1079F58("PayCharge", arg_C, arg_10, var_8E)
  loc_F08FC9: If (var_8E = 0) Then
  loc_F08FD1:   Proc_219_24_F08FE0 = 0
  loc_F08FD7: End If
  loc_F08FD7: Proc_219_24_F08FE0 = var_8E
End Sub

Public Sub Proc_219_25_1079F58(arg_C, arg_10) '1079F58
  'Data Table: 486ABC
  Dim var_86 As Integer
  Dim unk_486AD0 As Connection15
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim var_8C As Recordset15
  Dim var_90 As Recordset15
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_1079CDA: var_86 = &HFF
  loc_1079D0F: unk_486AD0.Execute "Select * From " & arg_C & " Where DocId='" & arg_10 & "'", var_C4, -1
  loc_1079D1A: Set var_8C = var_C8
  loc_1079D32: Set var_90 = New 
  loc_1079D4A: var_B4 = CVar(global_52) 'Address
  loc_1079D5D: Me.Recordset15.Open CVar("Select * From " & arg_C), var_B4, 1
  loc_1079D65: ' Referenced from: 1079F4D
  loc_1079D74: If Not(var_8C.EOF) Then
  loc_1079D82:   var_90.AddNew var_B4, var_DC
  loc_1079DAF:   For var_E4 = 0 To CInt((var_8C.Fields.Count - 1)): var_92 = var_E4 'Integer
  loc_1079DED:     If (var_8C.Fields.Item(CVar(var_92)).DefinedSize <> &H7FFFFFFF) Then
  loc_1079E52:       If (var_8C.Fields.Item(CVar(var_92)).DefinedSize <> var_90.Fields.Item(CVar(var_92)).DefinedSize) Then
  loc_1079EA3:         MsgBox(CVar(arg_C & "." & var_8C.Fields.Item(CVar(var_92)).Name & " Field Size Mismatch"), 0, var_104, var_124, var_144)
  loc_1079EC8:         Proc_219_25_1079F58 = 0
  loc_1079ECE:       End If
  loc_1079ECE:     End If
  loc_1079ED7:     var_B4 = CVar(var_92) 'Integer
  loc_1079F00:     var_DC = CVar(var_92) 'Integer
  loc_1079F1A:     var_90.Fields.Item(var_DC).Value = var_8C.Fields.Item(var_B4).Value
  loc_1079F30:   Next var_E4 'Integer
  loc_1079F40:   var_90.Update var_B4, var_DC
  loc_1079F48:   var_8C.MoveNext
  loc_1079F4D:   GoTo loc_1079D65
  loc_1079F50: End If
  loc_1079F56: Set Proc_219_25_1079F58400 = 
End Sub

Public Sub Proc_219_26_11C45FC(arg_C, arg_10) '11C45FC
  'Data Table: 486ABC
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_94 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_8C As Integer
  Dim var_B8 As Variant
  Dim var_D8 As Long
  Dim var_FC As Variant
  Dim var_11C As Long
  loc_11C41A6: var_86 = &HFF
  loc_11C41AB: var_88 = 0
  loc_11C41B7: If (CInt(arg_10) = 1) Then
  loc_11C41DF:   For var_A8 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_8A = var_A8 'Integer
  loc_11C41E8:     var_8C = var_8A
  loc_11C41EF:     var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C41F4:     var_D8 = 2
  loc_11C4223:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11C422A:       var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C422F:       var_D8 = 2
  loc_11C4252:       var_FC = CVar(CLng(var_8C)) 'Long
  loc_11C4257:       var_11C = 1
  loc_11C4289:       Call Proc_219_24_F08FE0(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)))
  loc_11C42A9:       If (var_146 = 0) Then
  loc_11C42B1:         Proc_219_26_11C45FC = 0
  loc_11C42B7:       End If
  loc_11C42B9:       var_88 = &HFF
  loc_11C42E1:       For var_14A = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_8E = var_14A 'Integer
  loc_11C42FA:         Me.GridSel.Row = CVar(CLng(var_8C))
  loc_11C4315:         Me.GridSel.Col = CVar(CLng(var_8E))
  loc_11C4330:         Me.GridSel.CellBackColor = &H80FF
  loc_11C433B:       Next var_14A 'Integer
  loc_11C4340:     End If
  loc_11C4343:   Next var_A8 'Integer
  loc_11C4348:   Exit For
  loc_11C434B: End If
  loc_11C4353: CRefVarAry
  loc_11C435B: For var_14E = 0 To CInt(UBound(arg_C, 1)): var_8A = var_14E 'Integer
  loc_11C437C:   If (arg_C(var_8A) = 0) Then
  loc_11C437F:     GoTo loc_11C4529
  loc_11C4382:   End If
  loc_11C4393:   var_8C = CInt(arg_C(var_8A))
  loc_11C439D:   var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C43A2:   var_D8 = 0
  loc_11C43D1:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11C43D8:     var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C43DD:     var_D8 = 2
  loc_11C440C:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11C4413:       var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C4418:       var_D8 = 2
  loc_11C443B:       var_FC = CVar(CLng(var_8C)) 'Long
  loc_11C4440:       var_11C = 1
  loc_11C4472:       Call Proc_219_24_F08FE0(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)))
  loc_11C4492:       If (var_146 = 0) Then
  loc_11C449A:         Proc_219_26_11C45FC = 0
  loc_11C44A0:       End If
  loc_11C44A2:       var_88 = &HFF
  loc_11C44CA:       For var_152 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_8E = var_152 'Integer
  loc_11C44E3:         Me.GridSel.Row = CVar(CLng(var_8C))
  loc_11C44FE:         Me.GridSel.Col = CVar(CLng(var_8E))
  loc_11C4519:         Me.GridSel.CellBackColor = &H80FF
  loc_11C4524:       Next var_152 'Integer
  loc_11C4529:       ' Referenced from: 11C437F
  loc_11C4529:     End If
  loc_11C4529:   End If
  loc_11C452C: Next var_14E 'Integer
  loc_11C4531: ' Referenced from: 11C4348
  loc_11C4541: If ((var_88 = 0) And (CInt(arg_10) = 0)) Then
  loc_11C4546:   var_86 = 0
  loc_11C4549:   var_B8 = 0
  loc_11C4552:   var_D8 = 1
  loc_11C4565:   var_A4 = Me.GridSel.TextMatrix)
  loc_11C458D:   MsgBox(CVar("Select " & CStr(var_A4)), &H40, var_164, var_174, var_184)
  loc_11C45B8:   Me.GridSel.Row = 1
  loc_11C45D3:   Me.GridSel.Col = 0
  loc_11C45DF:   Set var_94 = Me.GridSel
  loc_11C45F0: End If
  loc_11C45F0: Proc_219_26_11C45FC = GridSel.DispID_8001
  loc_11C45F6: Proc_219_26_11C45FC = var_A4
End Sub

Public Sub Proc_219_27_EBD8D0
  'Data Table: 486ABC
  loc_EBD848: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EBD85A:   Me.DGRestType.Visible = False
  loc_EBD862: End If
  loc_EBD87E: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_EBD890:   Me.DGCompany.Visible = False
  loc_EBD898: End If
  loc_EBD8B4: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBD8C6:   Me.FGPoint.Visible = False
  loc_EBD8CE: End If
  loc_EBD8CE: Exit Sub
End Sub

Public Sub Proc_219_28_1195798
  'Data Table: 486ABC
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_CC As String
  Dim MemVar_1F9222C As String
  Dim MemVar_1F9B938 As DBEngine
  Dim Me As Connection15
  Dim var_96 As Integer
  Dim Proc_219_28_11957984C0 As Variant
  loc_11953B0: On Error Goto loc_1195749
  loc_11953BF: Me.CmdTransfer.Enabled = False
  loc_11953D4: Me.Label1.Caption = "Transfering Data ..."
  loc_11953E0: Set var_9C = Me.Label1
  loc_11953E6: var_9C.Refresh
  loc_1195401: var_CC = vbNullString
  loc_119540C: If (Trim(MemVar_1F9222C) = var_CC) Then
  loc_1195412:   MemVar_1F9222C = "C:\Analysis\Transfer"
  loc_1195422:   Call 0.Method_Proc_219_28_11957988 ("C:\Analysis")
  loc_119542D:   If (var_DE = 0) Then
  loc_119543C:     Call 0.Method_arg_74 ("C:\Analysis", var_9C)
  loc_1195450:     Call 0.Method_Proc_219_28_11957988 ("C:\Analysis\Transfer", var_DE)
  loc_119545B:     If (var_DE = 0) Then
  loc_119546A:       Call 0.Method_arg_74 ("C:\Analysis\Transfer", var_9C)
  loc_1195472:     End If
  loc_1195472:   End If
  loc_1195472: End If
  loc_119547E: Call 0.Method_Proc_219_28_11957988 (MemVar_1F9222C, var_DE)
  loc_1195489: If (var_DE = 0) Then
  loc_119549A:   var_AC = "Transfer Location Not Exits"
  loc_119549F:   var_BC = var_AC
  loc_11954A5:   MsgBox(var_BC, &H40, var_DC, var_100, var_120)
  loc_11954B5: End If
  loc_11954D9: MemVar_1F9222C = Replace(MemVar_1F9222C & "\", "\\", "\", 1, -1, 0)
  loc_11954ED: global_56 = MemVar_1F9222C & "SaleTransfer.mdb"
  loc_1195505: Call 0.Method_arg_6C (global_56, "C:\TEMPZZZZ.MDB", &HFF)
  loc_1195518: Call 0.Method_arg_5C (global_56, 0)
  loc_1195538: MemVar_1F9B938.CompactDatabase "C:\TEMPZZZZ.MDB", global_56, var_AC, var_CC, var_F0
  loc_1195547: Set global_52 = New 
  loc_1195559: Me.Connection15.CursorLocation = 3
  loc_1195569: Me.IsolationLevel = &H10
  loc_1195579: Me.CommandTimeout = 0
  loc_11955B5: MemVar_1F9B938.RegisterDatabase "HotelTrans", "Microsoft Access Driver (*.MDB)", True, "DBQ=" & global_56 & vbCr & "Maxbuffersize=2048" & vbCr & "MaxscanRows=16"
  loc_11955DB: Me.Open "Provider=MSDASQL.1;Persist Security Info=False;Data Source=HotelTrans", vbNullString, vbNullString, -1
  loc_11955E2: var_96 = &HFF
  loc_11955EE: Me.BeginTrans var_138
  loc_1195609: Me.Execute "Delete From Sale1", var_BC, -1
  loc_119562A: Me.Execute "Delete From Sale2", var_BC, -1
  loc_119564B: Me.Execute "Delete From Stock", var_BC, -1
  loc_119566C: Me.Execute "Delete From SunTran", var_BC, -1
  loc_119568D: Me.Execute "Delete From PayCharge", var_BC, -1
  loc_11956C1: Call Proc_219_26_11C45FC(global_68, CByte(Me.Check1.Value))
  loc_11956CF: If (var_13C = 0) Then
  loc_11956D2:   GoTo loc_1195749
  loc_11956D5: End If
  loc_11956DB: Me.CommitTrans
  loc_11956E2: var_96 = 0
  loc_11956F2: Me.Label1.Caption = vbNullString
  loc_1195704: Me.Label1.Refresh
  loc_1195725: MsgBox("Transfer Compeleted", 0, var_DC, var_100, var_120)
  loc_119573B: Me.Close
  loc_1195745: Set var_90 = Nothing
  loc_1195748: Exit Sub
  loc_1195749: ' Referenced from: 11956D2
  loc_1195749: ' Referenced from: 11953B0
  loc_1195756: Me.Label1.Caption = vbNullString
  loc_1195762: Set var_9C = Me.Label1
  loc_1195768: var_9C.Refresh
  loc_1195776: If (var_96 = &HFF) Then
  loc_119577F:   Me.RollbackTrans
  loc_119578A:   Me.Close
  loc_119578F: End If
  loc_119578F: Proc_6_60_E62BC4(var_96, var_13C, var_9C, var_9C, var_9C)
  loc_1195794: Exit Sub
  loc_1195796: Proc_219_28_11957984C0 = CVar(var_9C & var_9C) 'String
End Sub
