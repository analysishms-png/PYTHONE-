VERSION 5.00
Begin VB.Form memCatChngEntry
  Caption = "Out-Station Member Entry"
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
  ClientWidth = 11130
  ClientHeight = 5145
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 6
    ForeColor = &HFF0000&
    Left = 8205
    Top = 600
    Width = 1410
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
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
  Begin DataGrid DGMemType
    Left = 9570
    Top = 2040
    Width = 4725
    Height = 2010
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 21
  End
  Begin CommandButton CmdFillGrid
    Caption = "Fill Grid"
    Left = 6960
    Top = 2130
    Width = 1245
    Height = 315
    TabIndex = 7
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HFF0000&
    Left = 2085
    Top = 1770
    Width = 615
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
    Index = 4
    ForeColor = &HFF0000&
    Left = 5235
    Top = 2160
    Width = 1410
    Height = 285
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
    Index = 3
    ForeColor = &HFF0000&
    Left = 2085
    Top = 2160
    Width = 1410
    Height = 285
    TabIndex = 5
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
    ForeColor = &HFF0000&
    Left = 2085
    Top = 1380
    Width = 4560
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1515
    Top = 2865
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 1920
    Top = 4560
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 120
      Top = 0
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 15
    End
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 2085
    Top = 990
    Width = 4560
    Height = 285
    TabIndex = 2
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
    Index = 0
    ForeColor = &HFF0000&
    Left = 2085
    Top = 600
    Width = 6090
    Height = 285
    TabIndex = 0
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
  Begin DataGrid DGMember
    Left = 10200
    Top = 4440
    Width = 6720
    Height = 2685
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin MSFlexGrid FGPoint
    Left = 12225
    Top = 4935
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 10
  End
  Begin DataGrid DGRev
    Left = 9555
    Top = 1680
    Width = 3930
    Height = 2565
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin MSHFlexGrid FGrid
    Left = 1320
    Top = 2760
    Width = 7500
    Height = 4275
    TabIndex = 8
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11130
    Height = 450
    TabIndex = 22
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 240
    Top = 7680
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
    Left = 3645
    Top = 7725
    Width = 2790
    Height = 285
    TabIndex = 23
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
  Begin Label Label2
    Caption = "Change Revenue :"
    Index = 4
    ForeColor = &HFF0000&
    Left = 435
    Top = 1785
    Width = 1575
    Height = 240
    TabIndex = 20
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
    Caption = "App. Month To :"
    Index = 3
    ForeColor = &HFF0000&
    Left = 3795
    Top = 2175
    Width = 1425
    Height = 225
    TabIndex = 19
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
    Caption = "App. Month From :"
    Index = 2
    ForeColor = &HFF0000&
    Left = 450
    Top = 2175
    Width = 1575
    Height = 240
    TabIndex = 18
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
    Caption = "New Category :"
    Index = 1
    ForeColor = &HFF0000&
    Left = 450
    Top = 1395
    Width = 1590
    Height = 225
    TabIndex = 17
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
    Caption = "Old Category :"
    Index = 0
    ForeColor = &HFF0000&
    Left = 450
    Top = 1005
    Width = 1515
    Height = 240
    TabIndex = 13
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
    Caption = "Member Name :"
    ForeColor = &HFF0000&
    Left = 450
    Top = 600
    Width = 1515
    Height = 270
    TabIndex = 12
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

Attribute VB_Name = "memCatChngEntry"

Private global_52 As Integer
Private global_80 As Integer
Private global_60 As Recordset15

Private Sub CmdFillGrid_Click() 'DFE304
  'Data Table: 4C5600
  loc_DFE2FC: Call Proc_288_44_11A743C()
  loc_DFE301: Exit Sub
End Sub

Private Sub Form_Load() '1141430
  'Data Table: 4C5600
  Dim var_BC As Variant
  Dim var_AC As String
  Dim var_C0 As String
  Dim Me As Recordset15
  Dim unk_4C5613 As Connection15
  Dim var_A8 As Variant
  loc_11410A8: On Error Goto loc_11413EB
  loc_11410B5: Set var_A8 = Me.TopCtrl1
  loc_11410BB: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_11410C9: Call 0.Method_arg_50 (var_AC)
  loc_11410D9: Set var_A8 = Me.TopCtrl1
  loc_11410DF: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_11410F0: global_84 = "ChangeCategory"
  loc_1141110: Me.TopCtrl1.CursorLocation = 3
  loc_114113A: var_C0 = "Select SubCode as Code,Name,Discount,CardNo,CompanyType From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_114116C: CVarUnk
  loc_1141171: VerifyVarObj
  loc_1141177: Set var_A8 = Me.DGMember
  loc_114117D: LateIdStAd
  loc_11411A7: Me.DGMember.CursorLocation = 3
  loc_11411D1: var_BC = CVar("Select  Code, Name From MemCatMast WHERE (Corporate='N') AND (  LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_11411DB: ar(var_C0 & MemVar_1F92078 & "') Order By Name"), CVar(MemVar_1F92044), 3 var_BC, CVar(MemVar_1F921DC), 2
  loc_11411EF: CVarUnk
  loc_11411F4: VerifyVarObj
  loc_1141200: LateIdStAd
  loc_1141222: var_AC = "SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1141232: unk_4C5613.Execute var_AC & "' or LOGSITE_CODE='HO') ORDER BY MembershipRevMast.Description", var_BC, -1
  loc_1141261: CVarUnk
  loc_1141266: VerifyVarObj
  loc_114126C: Set var_A8 = Me.DGRev
  loc_1141272: LateIdStAd
  loc_11412A5: var_C0 = "Select Code as SearchCode,Type,SITE_CODE,LOGSITE_CODE From MemCatChngDetail where Site_Code='" & MemVar_1F92070 & "' And (LOGSITE_CODE='"
  loc_11412C0: Me.DGRev.Open CVar(var_C0 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Code"), CVar(MemVar_1F92044), 3
  loc_11412E0: Set var_A8 = Me.TopCtrl1
  loc_11412E6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(CStr(5800)))
  loc_1141301: Set var_A8 = Me
  loc_114130A: var_AC = "INI"
  loc_1141318: Call Proc_288_46_F691D0(Proc_5_1_100CB50(var_AC, var_A8, global_60, 1, -1, var_A8, Me.DGMemType, var_A8), var_A8, New, 3)
  loc_1141323: Call Proc_288_42_111428C(-1, var_A8)
  loc_1141328: Call Proc_288_45_14C60B4(New)
  loc_1141340: Me.FGrid.Left = CVar(CDbl(700))
  loc_1141357: Me.LblUser.Left = CDbl(500)
  loc_114136E: Me.LblUser.Top = CDbl(7800)
  loc_1141385: Me.LblLDt.Top = CDbl(8160)
  loc_114139C: Me.LblLDt.Left = CDbl(500)
  loc_11413AB: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_11413BD: Set var_A8 = Me.FGrid
  loc_11413C3: var_A8.BackColorBkg = CVar(CLng(MemVar_1F921B0))
  loc_11413D4: Call 0.Method_arg_160 (var_A8)
  loc_11413E2: Call 0.Method_arg_164 (var_A8)
  loc_11413EA: Exit Sub
  loc_11413EB: ' Referenced from: 11410A8
  loc_11413F3: Set var_A8 = Err()
  loc_11413F9: Call 0.Method_arg_2C (var_AC)
  loc_114141A: MsgBox(CVar(var_AC), &H40, "Information", var_EC, var_10C)
  loc_114142D: Exit Sub
  loc_114142E: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E669B4
  'Data Table: 4C5600
  loc_E6696B: Set global_64 = Nothing
  loc_E6697D: Set global_68 = Nothing
  loc_E6698F: Set global_60 = Nothing
  loc_E669A1: Set global_72 = Nothing
  loc_E669AD: global_52 = 0
  loc_E669B0: Exit Sub
End Sub

Private Sub Form_Activate() 'E4AFA8
  'Data Table: 4C5600
  loc_E4AF78: On Error Goto loc_E4AFA2
  loc_E4AF7F: Set var_88 = Me.TopCtrl1
  loc_E4AF85: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4AF9A: If (CLng(CInt()) = &H2D) Then
  loc_E4AF9D:   Call TopCtrl1_UnknownEvent_15()
  loc_E4AFA2:   ' Referenced from: E4AF78
  loc_E4AFA2: End If
  loc_E4AFA2: Proc_6_60_E62BC4()
  loc_E4AFA7: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24364
  'Data Table: 4C5600
  loc_E24349: If (global_52 = &HFF) Then
  loc_E24359:   Me.Global.Unload Me
  loc_E24361: End If
  loc_E24361: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E885C8
  'Data Table: 4C5600
  loc_E88564: On Error Goto loc_E88584
  loc_E8857B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E88583: Exit Sub
  loc_E88584: ' Referenced from: E88564
  loc_E8858C: Set var_88 = Err()
  loc_E88592: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E885B3: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E885C6: Exit Sub
  loc_E885C7: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E621B4
  'Data Table: 4C5600
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6217F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E62192: Set var_A8 = Me.TxtGrid
  loc_E62198: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E621A0: var_AC.Visible = False
  loc_E621AC: Call Proc_288_47_EBA388()
  loc_E621B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E66AC0
  'Data Table: 4C5600
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E66A7C: Set var_88 = Me.TxtGrid
  loc_E66A82: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E66A9C: If (var_8C.Visible = 0) Then
  loc_E66AB5:   Me.FGrid.BackColorSel = CVar(CLng(global_108))
  loc_E66ABD: End If
  loc_E66ABD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E4DA4C
  'Data Table: 4C5600
  loc_E4DA24: Set var_88 = Me.TopCtrl1
  loc_E4DA2A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4DA43: If (CStr() <> "Browse") Then
  loc_E4DA46:   Call Proc_288_48_E42174()
  loc_E4DA4B: End If
  loc_E4DA4B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10F8E6C
  'Data Table: 4C5600
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10F8B44: Set var_88 = Me.TopCtrl1
  loc_10F8B4A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F8B8F: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_10F8B98:   Call Form_KeyDown(KeyCode, Shift)
  loc_10F8B9D: End If
  loc_10F8BA1: Set var_88 = Me.TopCtrl1
  loc_10F8BA7: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F8BC0: If (CStr() = "Browse") Then
  loc_10F8BC3:   Exit Sub
  loc_10F8BC4: End If
  loc_10F8C38: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10F8C43:   var_9C = "+{Tab}"
  loc_10F8C49:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_10F8C53:   KeyCode = 0
  loc_10F8C59: Else
  loc_10F8CB0:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10F8CB5:     KeyCode = 0
  loc_10F8CB8:   End If
  loc_10F8CB8: End If
  loc_10F8CE4: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10F8CFB: Set var_88 = Me.TopCtrl1
  loc_10F8D01: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(KeyCode)
  loc_10F8D1A: If (CStr(KeyCode) = "Edit") Then
  loc_10F8D1D:   Exit Sub
  loc_10F8D1E: End If
  loc_10F8D2F: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_10F8D45:   var_DC = CLng(Me.FGrid.Col)
  loc_10F8D55:   If (var_DC = CLng(1)) Then
  loc_10F8D6B:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F8D73:     var_FC = CVar(CLng(1)) 'Long
  loc_10F8D78:     var_11C = vbNullString
  loc_10F8D82:     Set var_A0 = Me.FGrid
  loc_10F8D88:     LateIdCallSt
  loc_10F8DAD:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F8DB5:     var_FC = CVar(CLng(5)) 'Long
  loc_10F8DBA:     var_11C = vbNullString
  loc_10F8DC4:     Set var_A0 = Me.FGrid
  loc_10F8DCA:     LateIdCallSt
  loc_10F8DDF:   Else
  loc_10F8DE6:     If Not (var_DC = CLng(2)) Then
  loc_10F8DF0:       If Not (var_DC = CLng(3)) Then
  loc_10F8DFA:         If (var_DC = CLng(4)) Then
  loc_10F8DFD:         End If
  loc_10F8DFD:       End If
  loc_10F8E10:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F8E28:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10F8E2D:       var_11C = vbNullString
  loc_10F8E37:       Set var_B4 = Me.FGrid
  loc_10F8E3D:       LateIdCallSt
  loc_10F8E55:     End If
  loc_10F8E55:   End If
  loc_10F8E55: End If
  loc_10F8E5B: If (KeyCode = &HD) Then
  loc_10F8E63:   global_80 = 0
  loc_10F8E66: End If
  loc_10F8E68: KeyCode = 0
  loc_10F8E6B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E58AD0
  'Data Table: 4C5600
  loc_E58A9C: Set var_88 = Me.TopCtrl1
  loc_E58AA2: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E58ABB: If (CStr() = "Browse") Then
  loc_E58ABE:   Exit Sub
  loc_E58ABF: End If
  loc_E58AC8: Call FGrid_UnknownEvent_C()
  loc_E58ACD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1024B18
  'Data Table: 4C5600
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_10248F4: Set var_88 = Me.TopCtrl1
  loc_10248FA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1024913: If (CStr() = "Browse") Then
  loc_1024916:   Exit Sub
  loc_1024917: End If
  loc_102492A: var_A0 = CLng(Me.FGrid.Col)
  loc_102493A: If Not (var_A0 = CLng(1)) Then
  loc_1024944:   If Not (var_A0 = CLng(3)) Then
  loc_102494E:     If (var_A0 = CLng(4)) Then
  loc_1024951:     End If
  loc_1024951:   End If
  loc_1024955:   Set var_C4 = Me.FGrid
  loc_1024979:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_10249A6:   Set var_B4 = var_C4
  loc_10249B8:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_10249E0:   Set var_88 = Me.TxtGrid
  loc_10249E6:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_10249EE:   0 = var_B4.Text
  loc_1024A07:   If (Len(var_9C) <= 1) Then
  loc_1024A16:     Set var_88 = Me.TxtGrid
  loc_1024A1C:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1024A24:     var_CA = var_B4.Text
  loc_1024A35:     Set var_B8 = Me.TxtGrid
  loc_1024A3B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1024A43:     var_C4.Text = var_9C
  loc_1024A56:   End If
  loc_1024A62:   Set var_88 = Me.TxtGrid
  loc_1024A68:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1024A82:   Set var_B8 = Me.TxtGrid
  loc_1024A88:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1024A90:   var_C4.SelStart = Len(var_B4.Text)
  loc_1024AA6: Else
  loc_1024AAD:   If (var_A0 = CLng(2)) Then
  loc_1024AEE:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1024B00:   End If
  loc_1024B00: End If
  loc_1024B0A: If (CLng(KeyCode) <> &HD) Then
  loc_1024B12:   global_80 = &HFF
  loc_1024B15: End If
  loc_1024B15: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FE7290
  'Data Table: 4C5600
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE70C0: Set var_88 = Me.TopCtrl1
  loc_FE70C6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE70DF: If (CStr() = "Browse") Then
  loc_FE70E2:   Exit Sub
  loc_FE70E3: End If
  loc_FE7100: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FE7103:   Exit Sub
  loc_FE7104: End If
  loc_FE7115: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FE7137:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FE7171:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE7193:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FE71A9:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE71B2:         Set var_110 = Me.FGrid
  loc_FE71CD:       Else
  loc_FE71E0:         Me.FGrid.Rows = 1
  loc_FE7206:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FE720E:         Set var_110 = Me.FGrid
  loc_FE723B:         Me.FGrid.FixedRows = 1
  loc_FE7243:       End If
  loc_FE7243:     End If
  loc_FE7246:   Else
  loc_FE7267:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE7277:   End If
  loc_FE727B:   Set var_88 = Me.FGrid
  loc_FE728C: End If
  loc_FE728C: Exit Sub
  loc_FE728D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E424FC
  'Data Table: 4C5600
  Dim var_8C As TextBox
  loc_E424D0: Call Proc_288_47_EBA388()
  loc_E424E0: Set var_88 = Me.TxtGrid
  loc_E424E6: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E424EE: var_8C.Visible = False
  loc_E424FA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F07428
  'Data Table: 4C5600
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F07340: On Error Goto loc_F07422
  loc_F0736A: Call Proc_288_46_F691D0(Proc_5_1_100CB50("ADD", Me))
  loc_F07375: Call Proc_288_43_F17820(global_60)
  loc_F0738D: Set var_8C = Me.Txt
  loc_F07393: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_94)
  loc_F0739B: var_94.Text = CStr(MemVar_1F920EC)
  loc_F073B8: Set var_8C = Me.Txt
  loc_F073BE: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_94)
  loc_F073C6: var_94.Text = "No"
  loc_F073DD: Set var_8C = Me.Txt
  loc_F073E3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_F073EB: var_94.SetFocus
  loc_F07404: Me.LblUser.Caption = vbNullString
  loc_F07419: Me.LblLDt.Caption = vbNullString
  loc_F07421: Exit Sub
  loc_F07422: ' Referenced from: F07340
  loc_F07422: Proc_6_60_E62BC4(var_94)
  loc_F07427: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA6ED4
  'Data Table: 4C5600
  loc_EA6E58: On Error Goto loc_EA6ECD
  loc_EA6E92: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA6EBC:   Call Proc_288_46_F691D0(Proc_5_1_100CB50("INI", Me))
  loc_EA6EC7:   Call Proc_288_45_14C60B4(global_60)
  loc_EA6ECC: End If
  loc_EA6ECC: Exit Sub
  loc_EA6ECD: ' Referenced from: EA6E58
  loc_EA6ECD: Proc_6_60_E62BC4()
  loc_EA6ED2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12099B8
  'Data Table: 4C5600
  Dim var_CC As Variant
  Dim var_124 As Variant
  Dim var_BC As Variant
  Dim var_130 As Variant
  Dim var_DC As Variant
  Dim var_13C As String
  Dim var_150 As String
  Dim var_148 As TextBox
  Dim unk_4C5613 As Connection15
  Dim var_160 As Fields15
  Dim var_164 As Field20
  Dim var_96 As Integer
  Dim var_120 As Fields15
  Dim var_FC As Variant
  Dim var_128 As String
  Dim var_12C As Fields15
  loc_1209540: On Error Goto loc_120995E
  loc_1209555: If (Proc_183_56_FE8818(global_60) = &HFF) Then
  loc_1209558:   Exit Sub
  loc_1209559: End If
  loc_1209590: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_FC, var_11C) = 6) Then
  loc_12095A1:   Set var_120 = Me.Txt
  loc_12095A7:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_124)
  loc_12095AF:   var_128 = var_124.Text
  loc_12095B7:   var_BC = CVar(var_128) 'String
  loc_12095CD:   Set var_12C = Me.Txt
  loc_12095D3:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_130)
  loc_12095E3:   var_DC = CVar(var_130.Text) 'String
  loc_12095FE:   If (IsDate(var_BC) And IsDate(var_DC)) Then
  loc_1209607:     var_CC = 0
  loc_120962E:     Set var_120 = Me.Txt
  loc_1209634:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Select count(*) from MemBill where Memcode='", var_BC, -1)
  loc_120964C:     var_13C = var_160 & var_128 & "' and cast('01/' + MthYear As smalldatetime)>=cast('01/' + '"
  loc_120965D:     Set var_12C = Me.Txt
  loc_1209663:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_130, var_138, var_13C)
  loc_120966B:     var_CC = var_130.Text
  loc_120967B:     var_150 = var_164 & var_138 & "' As smalldatetime) and cast('01/' + MthYear As smalldatetime)<=cast('01/' + '"
  loc_120968C:     Set var_144 = Me.Txt
  loc_1209692:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_148, var_14C)
  loc_120969A:     var_150 = var_148.Text
  loc_12096B3:     unk_4C5613.Execute var_DC & var_14C & "' As smalldatetime)", , 
  loc_12096BB:      = var_124.Tag.Fields
  loc_12096C3:      = var_160.Item()
  loc_12096CB:      = var_164.Value
  loc_12096D6:     Proc_6_39_E7C810(var_FC)
  loc_1209719:     If (var_FC > 0) Then
  loc_1209735:       MsgBox("Bill Already Exists of This Member", 0, var_DC, var_FC, var_11C)
  loc_1209745:       Exit Sub
  loc_1209746:     End If
  loc_1209746:   End If
  loc_1209748:   var_96 = 0
  loc_1209754:   unk_4C5613.BeginTrans var_168
  loc_120975B:   var_96 = &HFF
  loc_1209772:   var_94 = Me.Recordset15.Bookmark 'Variant
  loc_12097CF:   unk_4C5613.Execute CStr("Delete From MemCatChngDetail Where Code='" & Me.Recordset15.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_1209836:   var_FC = "Delete From MemRevenueForPeriod Where Code='" & Me.Recordset15.Fields.Item("SearchCode").Value & "' And Type='" 
  loc_1209852:   var_12C = Me.Recordset15.Fields
  loc_1209862:   var_11C = var_12C.Item("Type").Value
  loc_1209877:   var_128 = CStr(var_FC & var_11C & "'")
  loc_1209881:   unk_4C5613.Execute var_128, var_1B8, -1
  loc_12098AD:   unk_4C5613.CommitTrans
  loc_12098B4:   var_96 = 0
  loc_12098C5:   Me.Recordset15.Requery -1
  loc_12098E8:   If (CVar(Me.Recordset15.RecordCount) >= var_94) Then
  loc_12098F8:     Me.Recordset15.Bookmark = var_94
  loc_1209900:   Else
  loc_1209917:     If (global_60.EOF = 0) Then
  loc_1209923:       Me.Recordset15.MoveLast
  loc_1209928:     End If
  loc_1209928:   End If
  loc_1209928:   Call Proc_288_45_14C60B4(var_96, var_144, var_12C)
  loc_120994D:   Proc_5_0_110649C(&HFF, Me, global_60, 0)
  loc_1209955: End If
  loc_120995A: Set var_9C = Nothing
  loc_120995D: Exit Sub
  loc_120995E: ' Referenced from: 1209540
  loc_1209964: If (var_96 = &HFF) Then
  loc_120996D:   unk_4C5613.RollbackTrans
  loc_1209972: End If
  loc_120997A: Set var_120 = Err()
  loc_1209980: Call 0.Method_arg_2C (var_128, var_96)
  loc_12099A1: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_FC, var_11C)
  loc_12099B4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '11BB5B8
  'Data Table: 4C5600
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  Dim var_90 As Variant
  Dim var_12C As String
  Dim var_124 As TextBox
  Dim var_140 As String
  Dim var_138 As TextBox
  Dim unk_4C5613 As Connection15
  Dim var_150 As Fields15
  Dim var_154 As Field20
  Dim var_B8 As Variant
  loc_11BB1A4: On Error Goto loc_11BB572
  loc_11BB1B9: If (Proc_183_55_FE7900(global_60) = &HFF) Then
  loc_11BB1BC:   Exit Sub
  loc_11BB1BD: End If
  loc_11BB1D7: If (global_60.RecordCount > 0) Then
  loc_11BB201:   Call Proc_288_46_F691D0(Proc_5_1_100CB50("EDIT", Me))
  loc_11BB219:   Set var_90 = Me.Txt
  loc_11BB21F:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_11BB227:   var_98.Enabled = False
  loc_11BB240:   Set var_90 = Me.Txt
  loc_11BB246:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98)
  loc_11BB24E:   var_98.Enabled = False
  loc_11BB265:   Set var_90 = Me.Txt
  loc_11BB26B:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_98)
  loc_11BB273:   var_98.SetFocus
  loc_11BB282: Else
  loc_11BB28D:   var_D8 = "Information"
  loc_11BB29D:   var_B8 = "No Record To Edit."
  loc_11BB2A3:   MsgBox(var_B8, &H40, var_D8, var_F8, var_118)
  loc_11BB2B3: End If
  loc_11BB2C1: Set var_90 = Me.Txt
  loc_11BB2C7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_98)
  loc_11BB2CF: var_8C = var_98.Text
  loc_11BB2E6: If (var_8C <> "Yes") Then
  loc_11BB2F6:   Set var_90 = Me.Txt
  loc_11BB2FC:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_11BB304:   var_98.Enabled = False
  loc_11BB31D:   Set var_90 = Me.Txt
  loc_11BB323:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98)
  loc_11BB32B:   var_98.Enabled = False
  loc_11BB346:   Me.FGrid.Enabled = False
  loc_11BB35A:   Me.CmdFillGrid.Enabled = False
  loc_11BB365: Else
  loc_11BB36B:   var_C8 = 0
  loc_11BB392:   Set var_90 = Me.Txt
  loc_11BB398:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98, var_8C, "Select count(*) from MemBill where Memcode='", var_B8, -1)
  loc_11BB3B0:   var_12C = var_150 & var_8C & "' and cast('01/' + MthYear As smalldatetime)>=cast('01/' + '"
  loc_11BB3C1:   Set var_120 = Me.Txt
  loc_11BB3C7:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_124, var_128, var_12C)
  loc_11BB3CF:   var_C8 = var_124.Text
  loc_11BB3DF:   var_140 = var_154 & var_128 & "' As smalldatetime) and cast('01/' + MthYear As smalldatetime)<=cast('01/' + '"
  loc_11BB3F0:   Set var_134 = Me.Txt
  loc_11BB3F6:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_138, var_13C)
  loc_11BB3FE:   var_140 = var_138.Text
  loc_11BB417:   unk_4C5613.Execute var_D8 & var_13C & "' As smalldatetime)", global_60, 
  loc_11BB41F:    = var_98.Tag.Fields
  loc_11BB427:    = var_150.Item()
  loc_11BB42F:    = var_154.Value
  loc_11BB43A:   Proc_6_39_E7C810(var_F8)
  loc_11BB47D:   If (var_F8 > 0) Then
  loc_11BB48D:     Set var_90 = Me.Txt
  loc_11BB493:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_11BB49B:     var_98.Enabled = False
  loc_11BB4B4:     Set var_90 = Me.Txt
  loc_11BB4BA:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_98)
  loc_11BB4C2:     var_98.Enabled = False
  loc_11BB4DB:     Set var_90 = Me.Txt
  loc_11BB4E1:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_11BB4E9:     var_98.Enabled = False
  loc_11BB502:     Set var_90 = Me.Txt
  loc_11BB508:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98)
  loc_11BB510:     var_98.Enabled = True
  loc_11BB52B:     Me.FGrid.Enabled = False
  loc_11BB53F:     Me.CmdFillGrid.Enabled = False
  loc_11BB547:   End If
  loc_11BB547: End If
  loc_11BB554: Me.LblUser.Caption = vbNullString
  loc_11BB569: Me.LblLDt.Caption = vbNullString
  loc_11BB571: Exit Sub
  loc_11BB572: ' Referenced from: 11BB1A4
  loc_11BB57A: Set var_90 = Err()
  loc_11BB580: Call 0.Method_arg_2C (var_8C)
  loc_11BB5A1: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_11BB5B4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17988
  'Data Table: 4C5600
  loc_E1797D: Me.Global.Unload Me
  loc_E17985: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F26A60
  'Data Table: 4C5600
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F26960: On Error Goto loc_F269FB
  loc_F2696F: var_88 = Me.Recordset15.RecordCount
  loc_F2697D: If (var_88 <= 0) Then
  loc_F26986:   var_B8 = "Information"
  loc_F269A1:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F269B1:   Exit Sub
  loc_F269B2: End If
  loc_F269B9: var_10C = "Select M.Code As SearchCode,S.Name as MemberName,M.Type,M.RevenueChng,M.FrMonth,M.ToMonth FROM MemCatChngDetail M Left Join SubGroup S On M.MemCode=S.SubCode where (M.LOGSITE_CODE='" & MemVar_1F92078
  loc_F269C0: MemVar_1F920E4 = var_10C & "' or M.LOGSITE_CODE='HO') Order by S.Name"
  loc_F269CA: var_10C = "3000,1500,1000,1000,1000,1000"
  loc_F269D0: Proc_6_126_F1BCC0(var_10C)
  loc_F269DE: MemVar_1F92120 = Me
  loc_F269F5: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F269FA: Exit Sub
  loc_F269FB: ' Referenced from: F26960
  loc_F26A03: Set var_110 = Err()
  loc_F26A09: Call 0.Method_arg_1C (var_88)
  loc_F26A1A: If (var_88 <> 0) Then
  loc_F26A25:   Set var_110 = Err()
  loc_F26A2B:   Call 0.Method_arg_2C (var_10C)
  loc_F26A4C:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F26A5F: End If
  loc_F26A5F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E433D8
  'Data Table: 4C5600
  loc_E433C8: Proc_5_0_110649C(&HFF, Me)
  loc_E433D0: Call Proc_288_45_14C60B4(global_60)
  loc_E433D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E42E60
  'Data Table: 4C5600
  loc_E42E50: Proc_5_0_110649C(&HFF, Me)
  loc_E42E58: Call Proc_288_45_14C60B4(global_60)
  loc_E42E5D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E42C6C
  'Data Table: 4C5600
  loc_E42C5C: Proc_5_0_110649C(&HFF, Me)
  loc_E42C64: Call Proc_288_45_14C60B4(global_60)
  loc_E42C69: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E42A14
  'Data Table: 4C5600
  loc_E42A04: Proc_5_0_110649C(&HFF, Me)
  loc_E42A0C: Call Proc_288_45_14C60B4(global_60)
  loc_E42A11: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E42950
  'Data Table: 4C5600
  Dim Me As Recordset15
  loc_E42927: Me.Requery -1
  loc_E42937: Me.Requery -1
  loc_E42947: Me.Requery -1
  loc_E4294C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '161BB48
  'Data Table: 4C5600
  Dim var_AC As String
  Dim var_E4 As Variant
  Dim var_C4 As String
  Dim unk_4C5613 As Connection15
  Dim var_A0 As Variant
  Dim var_A4 As Variant
  Dim var_A8 As Variant
  Dim var_F8 As String
  Dim var_108 As Variant
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim var_120 As String
  Dim var_128 As String
  Dim var_12C As String
  Dim var_130 As Variant
  Dim var_134 As Variant
  Dim var_138 As Variant
  Dim var_144 As Variant
  Dim var_8C As Recordset15
  Dim var_C0 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_150 As Double
  Dim var_11C As TextBox
  Dim var_180 As Variant
  Dim var_160 As Variant
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_148 As String
  Dim var_140 As Variant
  Dim var_F4 As Variant
  Dim var_24C As Variant
  Dim var_258 As TextBox
  Dim var_244 As String
  Dim var_210 As Variant
  Dim var_230 As Variant
  Dim var_26C As Variant
  Dim var_28C As Variant
  Dim var_29C As Variant
  Dim var_2EC As Variant
  Dim var_30C As Variant
  Dim var_34C As Variant
  Dim var_2DC As Variant
  Dim var_4C4 As Double
  Dim var_250 As String
  loc_161A744: On Error Goto loc_161BAF5
  loc_161A74B: var_86 = CByte(0) 'Byte
  loc_161A75A: Set var_A0 = Me.Txt
  loc_161A760: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_161A789: If (Proc_6_27_EA565C(var_A4, "Member Name") = 0) Then
  loc_161A793:   Call Txt_GotFocus()
  loc_161A798:   Exit Sub
  loc_161A799: End If
  loc_161A7A4: Set var_A0 = Me.Txt
  loc_161A7AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_161A7D3: If (Proc_6_27_EA565C(var_A4, "Change Revenue") = 0) Then
  loc_161A7DD:   Call Txt_GotFocus()
  loc_161A7E2:   Exit Sub
  loc_161A7E3: End If
  loc_161A7E7: Set var_A0 = Me.TopCtrl1
  loc_161A7ED: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(5))
  loc_161A806: If (CStr(CInt(0)) = "Add") Then
  loc_161A80F:   var_E4 = 0
  loc_161A82C:   var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,8) AS INT)),1)+1 AS MyCode From MemCatChngDetail WHERE isnumeric(SUBSTRING(Code,3,8) )=1 and SITE_CODE='" & MemVar_1F92070
  loc_161A833:   var_C4 = CStr(CInt(0)) & "'"
  loc_161A83C:   unk_4C5613.Execute var_C4, var_C0, -1
  loc_161A844:   var_A0 = var_A0.Fields
  loc_161A84C:   var_E4 = var_A4.Item(var_A4)
  loc_161A854:   var_A8 = var_A8.Value
  loc_161A88D:   var_108 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_161A8B3:   var_F4 = Format(CStr(var_F4), "00000000")
  loc_161A8BB:   var_118 = (1 + var_F4)
  loc_161A8C6:   global_112 = CStr(var_118)
  loc_161A8DB: Else
  loc_161A912:   global_112 = CStr(Me.Recordset15.Fields.Item("SearchCode").Value)
  loc_161A923: End If
  loc_161A927: Set var_A0 = Me.TopCtrl1
  loc_161A92D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_161A935: var_AC = CStr(var_108)
  loc_161A94B: Set var_A4 = Me.Txt
  loc_161A951: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A8, var_C4)
  loc_161A959: (var_AC = "Add") = var_A8.Text
  loc_161A96B: Set var_11C = Me.TopCtrl1
  loc_161A971: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005((var_F4 And (var_C4 = "Yes")))
  loc_161A987: var_E4 = 0
  loc_161A9B5: var_128 = "Select Max(RevenueChng) From MemCatChngDetail  WHERE Code='" & global_112 & "' and SITE_CODE='" & MemVar_1F92070
  loc_161A9C5: unk_4C5613.Execute var_128 & "'", var_108, -1
  loc_161A9CD: var_130 = var_130.Fields
  loc_161A9D5: var_E4 = var_134.Item(var_134)
  loc_161A9DD: var_138 = var_138.Value
  loc_161AA01: Set var_140 = Me.Txt
  loc_161AA07: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_144)
  loc_161AA53: If ( Or (((CStr(var_A4) = "Edit") And (Proc_6_38_E68A98(var_118, var_118) = "N")) And (var_144.Text = "Yes"))) Then
  loc_161AA74:   Set var_A0 = Me.Txt
  loc_161AA7A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "Select Convert(VarChar(11),Cast('01/' + FrMonth As smalldatetime),106) As FrMonth,Convert(VarChar(11),Cast('01/' + ToMonth As smalldatetime),106) As ToMonth,Type from MemRevenueForPeriod where Memcode='")
  loc_161AA82:   var_C0 = var_A4.Tag
  loc_161AA8B:   var_C4 = -1 & var_AC
  loc_161AA92:   var_F8 = var_C4 & "'"
  loc_161AA9B:   unk_4C5613.Execute var_F8, var_A8, 
  loc_161AAA6:   Set var_8C = var_A8
  loc_161AABE:   ' Referenced from: 161ACAA
  loc_161AACD:   If Not(var_8C.EOF) Then
  loc_161AAFD:     var_94 = CDate(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("FrMonth"))))
  loc_161AB20:     var_A4 = var_8C.Fields.Item("ToMonth")
  loc_161AB31:     var_AC = Proc_6_38_E68A98(CVar(var_A4))
  loc_161AB36:     var_9C = CDate(var_AC)
  loc_161AB42:     ' Referenced from: 161AC9F
  loc_161AB49:     If (var_94 <= var_9C) Then
  loc_161AB4F:       var_150 = var_94
  loc_161AB66:       Set var_A0 = Me.Txt
  loc_161AB6C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4, var_AC, "1/")
  loc_161AB93:       Set var_A8 = Me.Txt
  loc_161AB99:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_11C, var_F8, "1/")
  loc_161ABA1:       CDate(var_A4.Text & var_AC) = var_11C.Text
  loc_161ABC7:       If (CDate(var_9C & var_F8) >  > var_94) Then
  loc_161ABEA:         var_F4 = Format(var_94, "MMM/yyyy")
  loc_161AC06:         var_A4 = var_8C.Fields.Item("Type")
  loc_161AC17:         var_AC = Proc_6_38_E68A98(CVar(var_A4), 1)
  loc_161AC38:         var_108 = "Entry For Month " & var_F4 
  loc_161AC41:         var_118 = var_108 & " As " 
  loc_161AC48:         var_1A0 = CVar(var_AC) 'String
  loc_161AC4B:         var_1B0 = var_118 & var_1A0 
  loc_161AC58:         MsgBox(var_1B0 & " Already Exits.", &H40, "Duplicate Entry", var_210, var_230)
  loc_161AC7C:         Exit Sub
  loc_161AC7D:       End If
  loc_161AC8F:       var_C0 = DateAdd("m", CDbl(1), var_94)
  loc_161AC99:       var_94 = CDate(var_C0)
  loc_161AC9F:       GoTo loc_161AB42
  loc_161ACA2:     End If
  loc_161ACA5:     var_8C.MoveNext
  loc_161ACAA:     GoTo loc_161AABE
  loc_161ACAD:   End If
  loc_161ACB2:   Set var_8C = Nothing
  loc_161ACE2:   Set var_A0 = Me.Txt
  loc_161ACE8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "Select count(*) from MemBill where Memcode='", var_C0, -1, var_138)
  loc_161ACF0:   var_140 = var_A4.Tag
  loc_161AD00:   var_120 = 0 & var_AC & "' and cast('01/' + MthYear As smalldatetime)>=cast('01/' + '"
  loc_161AD11:   Set var_A8 = Me.Txt
  loc_161AD17:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_11C, var_F8, var_9C & var_F8)
  loc_161AD2F:   var_12C = var_F4 & var_F8 & "' As smalldatetime) and cast('01/' + MthYear As smalldatetime)<=cast('01/' + '"
  loc_161AD40:   Set var_130 = Me.Txt
  loc_161AD46:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_134, var_128)
  loc_161AD4E:   var_12C = var_134.Text
  loc_161AD67:   unk_4C5613.Execute var_94 & var_128 & "' As smalldatetime)", 1, 
  loc_161AD6F:    = var_138.Fields
  loc_161AD77:    = var_140.Item()
  loc_161AD7F:    = var_11C.Text.Value
  loc_161AD8A:   Proc_6_39_E7C810(var_108)
  loc_161ADCD:   If (var_108 > 0) Then
  loc_161ADE9:     MsgBox("Bill Already Exists of This Member", 0, var_F4, var_108, var_118)
  loc_161ADF9:     Exit Sub
  loc_161ADFA:   End If
  loc_161ADFA: End If
  loc_161AE08: Set var_A0 = Me.Txt
  loc_161AE0E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_161AE2D: If (var_A4.Text = "Yes") Then
  loc_161AE3B:   Set var_A0 = Me.Txt
  loc_161AE41:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_161AE6A:   If (Proc_6_27_EA565C(var_A4, "App. Month From") = 0) Then
  loc_161AE74:     Call Txt_GotFocus()
  loc_161AE79:     Exit Sub
  loc_161AE7A:   End If
  loc_161AE85:   Set var_A0 = Me.Txt
  loc_161AE8B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_161AEB4:   If (Proc_6_27_EA565C(var_A4, "App. Month To") = 0) Then
  loc_161AEBE:     Call Txt_GotFocus()
  loc_161AEC3:     Exit Sub
  loc_161AEC4:   End If
  loc_161AEE9:   For var_234 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_234 'Integer
  loc_161AEF5:     If (var_88 = 1) Then
  loc_161AEFC:       var_D4 = CVar(CLng(var_88)) 'Long
  loc_161AF04:       var_160 = CVar(CLng(5)) 'Long
  loc_161AF1E:       var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_161AF24:       var_108 = Trim(var_F4)
  loc_161AF40:       If (var_108 = vbNullString) Then
  loc_161AF5C:         MsgBox("Define revenue ", &H40, var_F4, var_108, var_118)
  loc_161AF6C:         Exit Sub
  loc_161AF6D:       End If
  loc_161AF6D:     End If
  loc_161AF71:     var_D4 = CVar(CLng(var_88)) 'Long
  loc_161AF79:     var_160 = CVar(CLng(5)) 'Long
  loc_161AFB5:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_161AFBC:       var_D4 = CVar(CLng(var_88)) 'Long
  loc_161AFC4:       var_160 = CVar(CLng(3)) 'Long
  loc_161B000:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_161B007:         var_D4 = CVar(CLng(var_88)) 'Long
  loc_161B00F:         var_160 = CVar(CLng(1)) 'Long
  loc_161B056:         MsgBox("Fill Nature For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_1A0, var_1B0)
  loc_161B073:         Set var_A0 = Me.FGrid
  loc_161B084:         Exit Sub
  loc_161B085:       End If
  loc_161B089:       var_D4 = CVar(CLng(var_88)) 'Long
  loc_161B091:       var_160 = CVar(CLng(4)) 'Long
  loc_161B0CD:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_161B0D4:         var_D4 = CVar(CLng(var_88)) 'Long
  loc_161B0DC:         var_160 = CVar(CLng(1)) 'Long
  loc_161B123:         MsgBox("Fill Month For Revenue " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_1A0, var_1B0)
  loc_161B140:         Set var_A0 = Me.FGrid
  loc_161B151:         Exit Sub
  loc_161B152:       End If
  loc_161B152:     End If
  loc_161B155:   Next var_234 'Integer
  loc_161B15A: End If
  loc_161B163: unk_4C5613.BeginTrans var_238
  loc_161B16C: var_86 = CByte(1) 'Byte
  loc_161B174: Set var_A0 = Me.TopCtrl1
  loc_161B17A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_161B193: If (CStr() = "Add") Then
  loc_161B1A4:   Set var_A0 = Me.Txt
  loc_161B1AA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_161B1C5:   Set var_A8 = Me.Txt
  loc_161B1CB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_11C)
  loc_161B1EC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_134)
  loc_161B207:   Set var_138 = Me.Txt
  loc_161B20D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_140)
  loc_161B22A:   var_C0 = "Y"
  loc_161B252:   Set var_144 = Me.Txt
  loc_161B258:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_24C)
  loc_161B273:   Set var_254 = Me.Txt
  loc_161B279:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_258)
  loc_161B281:   var_25C = var_258.Text
  loc_161B291:   Proc_6_7_F25D88(var_2DC)
  loc_161B2A1:   Set var_350 = Me.Txt
  loc_161B2A7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_354)
  loc_161B2B6:   Proc_6_7_F25D88(var_374, CVar(var_354))
  loc_161B2D2:   var_AC = "Insert Into MemCatChngDetail(Code,Type,MemCode,OldCat,NewCat,RevenueChng,FrMonth,ToMonth,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,ChngDate) Values('" & global_112
  loc_161B2E3:   var_F8 = var_AC & "','" & global_84
  loc_161B2FF:   var_148 = var_F8 & "','" & var_A4.Tag & "','" & var_11C.Tag
  loc_161B30D:   var_244 = var_148 & "','" & var_134.Tag
  loc_161B349:   var_26C = CVar(var_244 & "','") & IIf((var_140.Text = "Yes"), var_C0, "N") & "','" & CVar(var_24C.Text) & "','" & CVar(var_25C) & "','" 
  loc_161B366:   var_29C = var_26C & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_161B392:   var_34C = var_29C & "'," & var_2DC & ",'A','" & CVar(MemVar_1F92078) & "'," 
  loc_161B3B0:   unk_4C5613.Execute CStr(var_34C & var_374 & ")"), var_3C8, -1
  loc_161B44C:   Set var_A0 = Me.Txt
  loc_161B452:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4, var_AC, "UPDATE SubGroup SET CompanyType='", var_C0)
  loc_161B45A:   -1 = var_A4.Tag
  loc_161B46A:   var_120 = Me.Txt & var_AC & "' WHERE SubCode='"
  loc_161B47B:   Set var_A8 = Me.Txt
  loc_161B481:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_11C, var_F8)
  loc_161B489:   var_120 = var_11C.Tag
  loc_161B4A2:   unk_4C5613.Execute var_3CC & var_F8 & "'", CVar(Proc_6_15_EF2C1C()), 
  loc_161B4C9: Else
  loc_161B4E3:   If (global_60.RecordCount > 0) Then
  loc_161B51E:     unk_4C5613.Execute "Delete From MemRevenueForPeriod Where Code='" & global_112 & "' And Type='" & global_84 & "'", var_C0, -1
  loc_161B534:   End If
  loc_161B548:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_161B58D:   Set var_A8 = Me.Txt
  loc_161B593:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_11C)
  loc_161B5AE:   Set var_130 = Me.Txt
  loc_161B5B4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_134)
  loc_161B5C6:   var_28C = CVar(Proc_6_15_EF2C1C(Me.Txt)) 'String
  loc_161B5CC:   Proc_6_7_F25D88(var_29C)
  loc_161B5F6:   var_1A0 = CVar(var_11C.Text) 'String
  loc_161B602:   var_1D0 = "UPDATE MemCatChngDetail SET RevenueChng='" & IIf((var_A4.Text = "Yes"), "Y", "N") & "',FrMonth='" & var_1A0 & "',ToMonth='" 
  loc_161B60C:   var_210 = var_1D0 & CVar(var_134.Text) 
  loc_161B64B:   var_2EC = var_210 & "',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_29C & ",U_AE='E',Site_Code='" & CVar(MemVar_1F92070) & "' WHERE Code='" 
  loc_161B658:   var_30C = var_2EC & CVar(global_112) 
  loc_161B66F:   unk_4C5613.Execute CStr(var_30C & "'"), var_34C, -1
  loc_161B6BD: End If
  loc_161B6E2: For var_3D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_3D0 'Integer
  loc_161B6EC:   var_D4 = CVar(CLng(var_88)) 'Long
  loc_161B6F4:   var_160 = CVar(CLng(5)) 'Long
  loc_161B730:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_161B737:     var_D4 = CVar(CLng(var_88)) 'Long
  loc_161B74E:     var_C0 = Me.FGrid.TextMatrix)
  loc_161B768:     Set var_A4 = Me.Txt
  loc_161B76E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_148, var_C0, CVar(CLng(5)), var_D4)
  loc_161B776:     var_160 = var_A8.Tag
  loc_161B789:     Set var_11C = Me.Txt
  loc_161B78F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_130, var_244, var_D4)
  loc_161B797:     1 = var_130.Text
  loc_161B7AA:     Set var_134 = Me.Txt
  loc_161B7B0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_138, var_25C)
  loc_161B7B8:     var_138 = var_138.Text
  loc_161B7C1:     var_180 = CVar(CLng(var_88)) 'Long
  loc_161B7D8:     var_F4 = Me.FGrid.TextMatrix)
  loc_161B7EB:     var_4C4 = Val(CStr(var_F4))
  loc_161B809:     var_108 = Me.FGrid.TextMatrix)
  loc_161B830:     var_118 = Me.FGrid.TextMatrix)
  loc_161B847:     Proc_6_7_F25D88(var_1A0, CVar(Proc_6_15_EF2C1C(var_118, CVar(CLng(4)), CVar(CLng(var_88)), var_108, CVar(CLng(3)))), CVar(CLng(var_88)), var_4C4)
  loc_161B850:     Set var_254 = Me.TopCtrl1
  loc_161B856:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(2)))
  loc_161B8A1:     var_AC = "Insert Into MemRevenueForPeriod(Code,Type,RevCode,MemCode,FrMonth,ToMonth,Amount,Nature,AppMonth," & "U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) "
  loc_161B8F1:     var_250 = var_AC & " Values ('" & global_112 & "','" & global_84 & "','" & CStr(var_C0) & "','" & var_148 & "','" & var_244
  loc_161B94B:     var_1B0 = CVar(var_250 & "','" & var_25C & "'," & CStr(var_4C4) & ",'" & CStr(var_108) & "','" & CStr(var_118) & "','" & MemVar_1F920C8 & "',") 'String
  loc_161B987:     var_2DC = var_1B0 & var_1A0 & ",'" & IIf((CStr(var_210) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) 
  loc_161B99E:     unk_4C5613.Execute CStr(var_2DC & "')"), var_30C, -1
  loc_161BA2C:   End If
  loc_161BA2F: Next var_3D0 'Integer
  loc_161BA3A: unk_4C5613.CommitTrans
  loc_161BA43: var_86 = CByte(0) 'Byte
  loc_161BA55: Me.Recordset15.Requery -1
  loc_161BA85: Me.Recordset15.Find "SearchCode ='" & global_112 & "'", 0, 1
  loc_161BA95: Set var_A0 = Me.TopCtrl1
  loc_161BA9B: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D4)
  loc_161BAB4: If (CStr() = "Add") Then
  loc_161BAB7:   Call TopCtrl1_UnknownEvent_A()
  loc_161BABC:   Exit Sub
  loc_161BABD: End If
  loc_161BAD6: var_AC = "INI"
  loc_161BAE4: Call Proc_288_46_F691D0(Proc_5_1_100CB50(var_AC, Me))
  loc_161BAEF: Call Proc_288_45_14C60B4(global_60)
  loc_161BAF4: Exit Sub
  loc_161BAF5: ' Referenced from: 161A744
  loc_161BAFE: If (CInt(var_86) = 1) Then
  loc_161BB07:   unk_4C5613.RollbackTrans
  loc_161BB0C: End If
  loc_161BB14: Set var_A0 = Err()
  loc_161BB1A: Call 0.Method_arg_2C (var_AC)
  loc_161BB33: MsgBox(CVar(var_AC), &H10, var_F4, var_108, var_118)
  loc_161BB46: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1172DE4
  'Data Table: 4C5600
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_1172A22: Set var_88 = Me.Txt
  loc_1172A28: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1172A36: Proc_6_74_E226B0(var_8C)
  loc_1172A42: Call Proc_288_47_EBA388(var_8C)
  loc_1172A4A: var_92 = Index
  loc_1172A55: If (var_92 = CInt(0)) Then
  loc_1172A6F:   If (Me.RecordCount > 0) Then
  loc_1172A7D:     Set var_8C = Me.FGPoint
  loc_1172A95:     Proc_6_137_1193554(Me.DGMember, global_64, Index)
  loc_1172AA3:   End If
  loc_1172AF1:   Set var_88 = Me.Txt
  loc_1172AF7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1172AFF:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1172B17:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1172B1A:     Exit Sub
  loc_1172B1B:   End If
  loc_1172B28:   Set var_88 = Me.Txt
  loc_1172B2E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1172B41:   global_76 = var_8C.Tag
  loc_1172B5C:   Set var_88 = Me.Txt
  loc_1172B62:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1172B6A:   var_A0 = var_8C.Text
  loc_1172B72:   var_D4 = CVar(var_A0) 'String
  loc_1172BB7:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1172BC0:     Me.MoveFirst
  loc_1172BE5:     Set var_88 = Me.Txt
  loc_1172BEB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1172BF3:     0 = var_8C.Text
  loc_1172C01:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_1172C17:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_1172C2F:   End If
  loc_1172C32: Else
  loc_1172C3A:   If (var_92 = CInt(2)) Then
  loc_1172C54:     If (Me.RecordCount > 0) Then
  loc_1172C62:       Set var_8C = Me.FGPoint
  loc_1172C7A:       Proc_6_137_1193554(Me.DGMemType, global_68)
  loc_1172C88:     End If
  loc_1172CD6:     Set var_88 = Me.Txt
  loc_1172CDC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1172CE4:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1172CFC:     If (Index Or (var_A0 = vbNullString)) Then
  loc_1172CFF:       Exit Sub
  loc_1172D00:     End If
  loc_1172D0D:     Set var_88 = Me.Txt
  loc_1172D13:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1172D1B:     var_A0 = var_8C.Text
  loc_1172D23:     var_D4 = CVar(var_A0) 'String
  loc_1172D68:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1172D71:       Me.MoveFirst
  loc_1172D96:       Set var_88 = Me.Txt
  loc_1172D9C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1172DA4:       0 = var_8C.Text
  loc_1172DB2:       Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_1172DC8:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1172DE0:     End If
  loc_1172DE0:   End If
  loc_1172DE0: End If
  loc_1172DE0: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FB9994
  'Data Table: 4C5600
  Dim var_86 As Integer
  Dim var_98 As DataGrid
  loc_FB9802: If (CLng(Shift) = &H1B) Then
  loc_FB9805:   Call Proc_288_47_EBA388()
  loc_FB980A:   Exit Sub
  loc_FB980B: End If
  loc_FB980E: var_86 = KeyCode
  loc_FB9819: If (var_86 = CInt(0)) Then
  loc_FB9834:   Set var_9C = Nothing
  loc_FB983F:   Set var_98 = Nothing
  loc_FB986D:   Proc_6_69_134A198(Me.DGMember, Me.Txt, KeyCode, global_64, Shift, 0)
  loc_FB9884: Else
  loc_FB988C:   If (var_86 = CInt(2)) Then
  loc_FB98A7:     Set var_9C = Nothing
  loc_FB98E0:     Proc_6_69_134A198(Me.DGMemType, Me.Txt, KeyCode, global_68, Shift, 0, 1, Nothing)
  loc_FB98F4:   End If
  loc_FB98F4: End If
  loc_FB9925: Set var_98 = Me.DGRev
  loc_FB994A: If (((CBool(Me.DGMember.Visible) = 0) And (CBool(Me.DGMemType.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_FB9962:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FB996B:     Proc_6_75_E527CC(Shift, arg_14, var_9C, 0, 1)
  loc_FB9970:   End If
  loc_FB9985:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FB998E:     Proc_6_76_E52838(Shift, arg_14, var_98)
  loc_FB9993:   End If
  loc_FB9993: End If
  loc_FB9993: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EF207C
  'Data Table: 4C5600
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_EF1FB7: Proc_6_58_E054C0(arg_10)
  loc_EF1FCA: If (KeyAscii = CInt(5)) Then
  loc_EF1FF6:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_EF2006:     Set var_CC = Me.Txt
  loc_EF200C:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EF2014:     var_D0.Text = "Yes"
  loc_EF2023:   Else
  loc_EF204C:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_EF205C:       Set var_CC = Me.Txt
  loc_EF2062:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EF206A:       var_D0.Text = "No"
  loc_EF2076:     End If
  loc_EF2076:   End If
  loc_EF2078:   arg_10 = 0
  loc_EF207B: End If
  loc_EF207B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F16978
  'Data Table: 4C5600
  Dim var_86 As Integer
  loc_F1688B: var_86 = KeyCode
  loc_F16896: If (var_86 = CInt(0)) Then
  loc_F168B5:   If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_F168C9:     var_A4 = "Name"
  loc_F168ED:     Proc_6_68_129FB34(Me.DGMember, Me.Txt, KeyCode, global_64)
  loc_F16900:   End If
  loc_F16903: Else
  loc_F1690B:   If (var_86 = CInt(2)) Then
  loc_F1692A:     If (CBool(Me.DGMemType.Visible) = &HFF) Then
  loc_F1693E:       var_A4 = "Name"
  loc_F16962:       Proc_6_68_129FB34(Me.DGMemType, Me.Txt, KeyCode, global_68, Shift)
  loc_F16975:     End If
  loc_F16975:   End If
  loc_F16975: End If
  loc_F16975: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D0F4
  'Data Table: 4C5600
  loc_E4D0D2: Set var_88 = Me.Txt
  loc_E4D0D8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D0E6: Proc_6_73_E22704(var_8C)
  loc_E4D0F2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '151E354
  'Data Table: 4C5600
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_D0 As String
  Dim var_D4 As String
  Dim unk_4C5613 As Connection15
  Dim var_9C As Recordset15
  Dim var_108 As Variant
  Dim var_124 As String
  Dim var_120 As Variant
  Dim var_F4 As Variant
  Dim var_E4 As Integer
  Dim var_14C As String
  Dim var_11C As Variant
  Dim var_150 As String
  Dim var_160 As Field20
  loc_151D42B: var_8E = Cancel
  loc_151D436: If (var_8E = CInt(0)) Then
  loc_151D444:   Set var_94 = Me.Txt
  loc_151D44A:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_151D452:   var_A0 = "Member Name"
  loc_151D473:   If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_151D481:     Set var_94 = Me.Txt
  loc_151D487:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_151D48F:     var_98.SetFocus
  loc_151D49D:     arg_10 = &HFF
  loc_151D4A0:     Exit Sub
  loc_151D4A1:   End If
  loc_151D4EF:   Set var_94 = Me.Txt
  loc_151D4F5:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_151D4FD:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_151D515:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_151D525:     Set var_94 = Me.Txt
  loc_151D52B:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151D533:     var_98.Text = vbNullString
  loc_151D54C:     Set var_94 = Me.Txt
  loc_151D552:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151D55A:     var_98.Tag = vbNullString
  loc_151D574:     Set var_94 = Me.Txt
  loc_151D57A:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_151D582:     var_98.Text = vbNullString
  loc_151D59C:     Set var_94 = Me.Txt
  loc_151D5A2:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_151D5AA:     var_98.Tag = vbNullString
  loc_151D5B9:   Else
  loc_151D5F4:     Set var_9C = Me.Txt
  loc_151D5FA:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151D602:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_151D653:     Set var_9C = Me.Txt
  loc_151D659:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151D661:     var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_151D6C1:     var_A0 = Proc_6_38_E68A98(CVar(Me.Fields.Item("CompanyType")), "Select Max(Name) From MemCatMast WHERE Code='", var_F4, -1, var_9C)
  loc_151D6CC:     var_D4 = var_BC & CStr(Me.Fields.Item("Code").Value) & "'"
  loc_151D6D5:     unk_4C5613.Execute var_D4, 0, var_108
  loc_151D6DD:     var_118 = var_9C.Fields
  loc_151D6E5:      = var_BC.Item(var_8E)
  loc_151D6ED:      = var_108.Value
  loc_151D708:     Set var_11C = Me.Txt
  loc_151D70E:     Call 0.Method_Txt_Validate0 (CInt(1), var_120)
  loc_151D716:     var_120.Text = Proc_6_38_E68A98(var_118)
  loc_151D758:     var_98 = Me.Fields.Item("CompanyType")
  loc_151D777:     Set var_9C = Me.Txt
  loc_151D77D:     Call 0.Method_Txt_Validate0 (CInt(1), var_BC)
  loc_151D785:     var_BC.Tag = Proc_6_38_E68A98(CVar(var_98))
  loc_151D799:   End If
  loc_151D7AC:   Set var_94 = Me.Txt
  loc_151D7B2:   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151D7BA:   var_A0 = var_98.Tag
  loc_151D7CE:   If (global_76 <> var_A0) Then
  loc_151D7DF:     Set var_94 = Me.Txt
  loc_151D7E5:     Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_151D7ED:     var_98.Text = vbNullString
  loc_151D807:     Set var_94 = Me.Txt
  loc_151D80D:     Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_151D815:     var_98.Text = vbNullString
  loc_151D834:     Me.FGrid.Rows = 1
  loc_151D851:     var_F4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_151D859:     Set var_98 = Me.FGrid
  loc_151D888:     Me.FGrid.FixedRows = 1
  loc_151D890:   End If
  loc_151D893: Else
  loc_151D89B:   If (var_8E = CInt(5)) Then
  loc_151D8A9:     Set var_94 = Me.Txt
  loc_151D8AF:     Call 0.Method_Txt_Validate0 (CInt(5), var_98)
  loc_151D8D8:     If (Trim(CVar(var_98)) = vbNullString) Then
  loc_151D8DD:       arg_10 = &HFF
  loc_151D8E0:       Exit Sub
  loc_151D8E1:     End If
  loc_151D8EF:     Set var_94 = Me.Txt
  loc_151D8F5:     Call 0.Method_Txt_Validate0 (CInt(5), var_98, var_A0)
  loc_151D8FD:     arg_10 = var_98.Text
  loc_151D914:     If (var_A0 <> "Yes") Then
  loc_151D924:       Set var_94 = Me.Txt
  loc_151D92A:       Call 0.Method_Txt_Validate0 (CInt(3), var_98, 0)
  loc_151D932:       var_98.Enabled = FGrid.DispID_10000
  loc_151D94B:       Set var_94 = Me.Txt
  loc_151D951:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_151D959:       var_98.Enabled = False
  loc_151D973:       Set var_94 = Me.Txt
  loc_151D979:       Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_151D981:       var_98.Text = vbNullString
  loc_151D99B:       Set var_94 = Me.Txt
  loc_151D9A1:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_151D9A9:       var_98.Text = vbNullString
  loc_151D9C8:       Me.FGrid.Rows = 1
  loc_151D9E5:       var_F4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_151D9ED:       Set var_98 = Me.FGrid
  loc_151DA1C:       Me.FGrid.FixedRows = 1
  loc_151DA33:       Me.FGrid.Enabled = False
  loc_151DA47:       Me.CmdFillGrid.Enabled = False
  loc_151DA52:     Else
  loc_151DA5F:       Set var_94 = Me.Txt
  loc_151DA65:       Call 0.Method_Txt_Validate0 (CInt(3), var_98, &HFF)
  loc_151DA6D:       var_98.Enabled = FGrid.DispID_10000
  loc_151DA86:       Set var_94 = Me.Txt
  loc_151DA8C:       Call 0.Method_Txt_Validate0 (CInt(4), var_98, &HFF)
  loc_151DA94:       var_98.Enabled = var_F4
  loc_151DAAE:       Me.FGrid.Enabled = True
  loc_151DAC2:       Me.CmdFillGrid.Enabled = True
  loc_151DAD5:       Set var_94 = Me.Txt
  loc_151DADB:       Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_151DAE3:       var_98.SetFocus
  loc_151DAEF:     End If
  loc_151DAF2:   Else
  loc_151DAFA:     If (var_8E = CInt(4)) Then
  loc_151DB0A:       Set var_94 = Me.Txt
  loc_151DB10:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151DB2F:       If (var_98.Text = vbNullString) Then
  loc_151DB4B:         MsgBox("App. Month To is a Required Field", 0, var_F4, var_118, var_144)
  loc_151DB5D:         arg_10 = &HFF
  loc_151DB60:         Exit Sub
  loc_151DB61:       End If
  loc_151DB6B:       Set var_94 = Me.Txt
  loc_151DB71:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151DB91:       Set var_BC = Me.Txt
  loc_151DB97:       Call 0.Method_Txt_Validate0 (Cancel, var_108)
  loc_151DB9F:       var_108.Text = Proc_6_120_133A1D8(var_98, arg_10)
  loc_151DBC0:       Set var_94 = Me.Txt
  loc_151DBC6:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_151DBCE:       var_A0 = var_98.Text
  loc_151DBD6:       var_CC = CVar(var_A0) 'String
  loc_151DBE8:       If IsDate(var_CC) Then
  loc_151DBF9:         Set var_94 = Me.Txt
  loc_151DBFF:         Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_151DC19:         If (var_98.Enabled = &HFF) Then
  loc_151DC22:           var_E4 = 0
  loc_151DC49:           Set var_94 = Me.Txt
  loc_151DC4F:           Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select count(*) from MemBill where Memcode='", var_CC, -1)
  loc_151DC67:           var_124 = var_11C & var_A0 & "' and cast('01/' + MthYear As smalldatetime)=cast('01/' + '"
  loc_151DC78:           Set var_9C = Me.Txt
  loc_151DC7E:           Call 0.Method_Txt_Validate0 (CInt(4), var_BC, var_D4, Proc_6_38_E68A98(var_118))
  loc_151DC86:           var_E4 = var_BC.Text
  loc_151DC96:           var_14C = var_120 & var_D4 & "' As smalldatetime)"
  loc_151DC9F:           unk_4C5613.Execute var_14C, var_F4, var_F4
  loc_151DCA7:            = var_98.Tag.Fields
  loc_151DCAF:            = var_11C.Item()
  loc_151DCB7:            = var_120.Value
  loc_151DCC2:           Proc_6_39_E7C810(var_118)
  loc_151DCFB:           If (var_118 > 0) Then
  loc_151DD11:             var_CC = "Bill Already Exists For Month For Perticular Member"
  loc_151DD17:             MsgBox(var_CC, 0, var_F4, var_118, var_144)
  loc_151DD29:             arg_10 = &HFF
  loc_151DD2C:             Exit Sub
  loc_151DD2D:           End If
  loc_151DD30:         Else
  loc_151DD3E:           Set var_94 = Me.Txt
  loc_151DD44:           Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0)
  loc_151DD4C:           arg_10 = var_98.Tag
  loc_151DD5F:           Set var_11C = Me.Txt
  loc_151DD65:           Call 0.Method_Txt_Validate0 (CInt(4), var_120)
  loc_151DD78:           var_E4 = 0
  loc_151DD95:           var_D0 = "Select Max(cast('01/' + MthYear As smalldatetime)) from MemBill where Memcode='" & var_A0
  loc_151DD9C:           var_D4 = var_11C & var_A0 & "'"
  loc_151DDA5:           unk_4C5613.Execute var_D4, var_CC, -1
  loc_151DDAD:           var_9C = var_9C.Fields
  loc_151DDB5:           var_E4 = var_BC.Item(var_BC)
  loc_151DDBD:           var_108 = var_108.Value
  loc_151DE2D:           Set var_94 = Me.Txt
  loc_151DE33:           Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select count(*) from MemBill where Memcode='", var_CC, -1, var_120)
  loc_151DE44:           var_D0 = 0 & var_A0
  loc_151DE4B:           var_124 = var_D0 & "' and cast('01/' + MthYear As smalldatetime)=cast('01/' + '"
  loc_151DE5C:           Set var_9C = Me.Txt
  loc_151DE62:           Call 0.Method_Txt_Validate0 (CInt(4), var_BC, var_D4, var_120.Text, var_160)
  loc_151DE6A:           var_F4 = var_BC.Text
  loc_151DE7A:           var_150 = CDate(CDbl((CDate(var_F4) <> CDate("01/" & var_120.Text)))) & var_D4 & "' As smalldatetime) And cast('01/' + MthYear As smalldatetime)<>(Select Max(cast('01/' + MthYear As smalldatetime)) from MemBill where Memcode='"
  loc_151DE8B:           Set var_108 = Me.Txt
  loc_151DE91:           Call 0.Method_Txt_Validate0 (CInt(0), var_11C, var_14C)
  loc_151DE99:           var_150 = var_11C.Tag
  loc_151DEB2:           unk_4C5613.Execute var_F4 & var_14C & "')", var_F4, 
  loc_151DEBA:            = var_120.Fields
  loc_151DEC2:            = var_98.Tag.Item()
  loc_151DECA:            = var_160.Value
  loc_151DED5:           Proc_6_39_E7C810(var_118)
  loc_151DF18:           If (var_118 > 0) Then
  loc_151DF34:             MsgBox("Bill Already Exists For Month For Perticular Member", 0, var_F4, var_118, var_144)
  loc_151DF46:             arg_10 = &HFF
  loc_151DF49:             Exit Sub
  loc_151DF4A:           End If
  loc_151DF4A:         End If
  loc_151DF4A:       End If
  loc_151DF58:       Set var_94 = Me.Txt
  loc_151DF5E:       Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0)
  loc_151DF66:       arg_10 = var_98.Text
  loc_151DF84:       Set var_9C = Me.Txt
  loc_151DF8A:       Call 0.Method_Txt_Validate0 (CInt(3), var_BC, var_D0)
  loc_151DF92:       IsDate(CVar(var_A0)) = var_BC.Text
  loc_151DF9A:       var_F4 = CVar(var_D0) 'String
  loc_151DFB5:       If (var_F4 And IsDate(var_F4)) Then
  loc_151DFC6:         Set var_9C = Me.Txt
  loc_151DFCC:         Call 0.Method_Txt_Validate0 (CInt(3), var_BC)
  loc_151DFE7:         Set var_94 = Me.Txt
  loc_151DFED:         Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_151E017:         If (CDate(var_98.Text) < CDate(var_BC.Text)) Then
  loc_151E033:           MsgBox("App Month To Can't Be Less Than App Month From", 0, var_F4, var_118, var_144)
  loc_151E045:           arg_10 = &HFF
  loc_151E048:           Exit Sub
  loc_151E049:         End If
  loc_151E049:       End If
  loc_151E04C:     Else
  loc_151E054:       If (var_8E = CInt(3)) Then
  loc_151E064:         Set var_94 = Me.Txt
  loc_151E06A:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151E089:         If (var_98.Text = vbNullString) Then
  loc_151E0A5:           MsgBox("App. Month From is a Required Field", 0, var_F4, var_118, var_144)
  loc_151E0B7:           arg_10 = &HFF
  loc_151E0BA:           Exit Sub
  loc_151E0BB:         End If
  loc_151E0C5:         Set var_94 = Me.Txt
  loc_151E0CB:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151E0EB:         Set var_BC = Me.Txt
  loc_151E0F1:         Call 0.Method_Txt_Validate0 (Cancel, var_108)
  loc_151E0F9:         var_108.Text = Proc_6_120_133A1D8(var_98, arg_10)
  loc_151E119:         Set var_94 = Me.Txt
  loc_151E11F:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151E127:         var_A0 = var_98.Text
  loc_151E12F:         var_CC = CVar(var_A0) 'String
  loc_151E141:         If IsDate(var_CC) Then
  loc_151E14A:           var_E4 = 0
  loc_151E171:           Set var_94 = Me.Txt
  loc_151E177:           Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select count(*) from MemBill where Memcode='", var_CC, -1)
  loc_151E188:           var_D0 = var_11C & var_A0
  loc_151E18F:           var_124 = var_D0 & "' and cast('01/' + MthYear As smalldatetime)=cast('01/' + '"
  loc_151E19F:           Set var_9C = Me.Txt
  loc_151E1A5:           Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_D4, var_120.Text)
  loc_151E1AD:           var_E4 = var_BC.Text
  loc_151E1C6:           unk_4C5613.Execute var_120 & var_D4 & "' As smalldatetime)", var_F4, arg_10
  loc_151E1CE:            = var_98.Tag.Fields
  loc_151E1D6:            = var_11C.Item()
  loc_151E1DE:            = var_120.Value
  loc_151E1E9:           Proc_6_39_E7C810(var_118)
  loc_151E222:           If (var_118 > 0) Then
  loc_151E23E:             MsgBox("Bill Already Exists For Month For Perticular Member", 0, var_F4, var_118, var_144)
  loc_151E250:             arg_10 = &HFF
  loc_151E253:             Exit Sub
  loc_151E254:           End If
  loc_151E254:         End If
  loc_151E262:         Set var_94 = Me.Txt
  loc_151E268:         Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0)
  loc_151E270:         arg_10 = var_98.Text
  loc_151E28E:         Set var_9C = Me.Txt
  loc_151E294:         Call 0.Method_Txt_Validate0 (CInt(3), var_BC, var_D0)
  loc_151E29C:         IsDate(CVar(var_A0)) = var_BC.Text
  loc_151E2A4:         var_F4 = CVar(var_D0) 'String
  loc_151E2BF:         If (var_F4 And IsDate(var_F4)) Then
  loc_151E2D0:           Set var_9C = Me.Txt
  loc_151E2D6:           Call 0.Method_Txt_Validate0 (CInt(3), var_BC)
  loc_151E2F1:           Set var_94 = Me.Txt
  loc_151E2F7:           Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_151E321:           If (CDate(var_98.Text) < CDate(var_BC.Text)) Then
  loc_151E33D:             MsgBox("App Month To Can't Be Less Than App Month From", 0, var_F4, var_118, var_144)
  loc_151E34F:             arg_10 = &HFF
  loc_151E352:             Exit Sub
  loc_151E353:           End If
  loc_151E353:         End If
  loc_151E353:       End If
  loc_151E353:     End If
  loc_151E353:   End If
  loc_151E353: End If
  loc_151E353: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12B10B4
  'Data Table: 4C5600
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Variant
  Dim var_108 As TextBox
  Dim var_15C As String
  loc_12B0A9E: Set var_88 = Me.TxtGrid
  loc_12B0AA4: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_12B0AB2: Proc_6_74_E226B0(var_8C)
  loc_12B0ABE: Call Proc_288_47_EBA388(var_8C)
  loc_12B0AD1: Set var_88 = Me.TxtGrid
  loc_12B0AD7: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12B0ADF: var_8C.MaxLength = 0
  loc_12B0AF7: If (Index = 0) Then
  loc_12B0B10:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_12B0B2B:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B0B6A:   Set var_108 = Me.TxtGrid
  loc_12B0B70:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12B0B78:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_12B0BA9:   var_114 = CLng(Me.FGrid.Col)
  loc_12B0BB9:   If (var_114 = CLng(1)) Then
  loc_12B0BFD:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12B0C00:       Exit Sub
  loc_12B0C01:     End If
  loc_12B0C0C:     Set var_8C = Me.FGPoint
  loc_12B0C24:     Proc_6_137_1193554(Me.DGRev, global_72, Index, var_8C)
  loc_12B0C40:     Set var_88 = Me.TxtGrid
  loc_12B0C46:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, &H32)
  loc_12B0C4E:     var_8C.MaxLength = var_114
  loc_12B0C6D:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B0C75:     var_E4 = CVar(CLng(1)) 'Long
  loc_12B0CA8:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_12B0CB1:       Me.MoveFirst
  loc_12B0CD1:       var_E4 = CVar(CLng(5)) 'Long
  loc_12B0CDA:       Set var_8C = Me.FGrid
  loc_12B0CF1:       Proc_6_17_EAA2B0(var_12C, CVar(CStr(var_8C.TextMatrix))), var_E4, CVar(CLng(Me.FGrid.Row)))
  loc_12B0D10:       var_110 = CStr("Code=" & var_12C)
  loc_12B0D1A:       Me.Find var_110, 0, 1
  loc_12B0D4A:       If (Me.EOF = &HFF) Then
  loc_12B0D53:         Me.MoveFirst
  loc_12B0D58:       End If
  loc_12B0D58:     End If
  loc_12B0D5B:   Else
  loc_12B0D62:     If (var_114 = CLng(3)) Then
  loc_12B0D74:       Set var_88 = Me.TxtGrid
  loc_12B0D7A:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &HF, var_15C)
  loc_12B0D82:       var_8C.MaxLength = var_E4
  loc_12B0D9B:       ReDim var_160(0 To 4)
  loc_12B0DB2:       var_160(0) = "Monthly"
  loc_12B0DC1:       var_160(1) = "Bi Monthly"
  loc_12B0DD0:       var_160(2) = "Quarterly"
  loc_12B0DDF:       var_160(3) = "Half Yearly"
  loc_12B0DEE:       var_160(4) = "Annual"
  loc_12B0E05:       global_88 = Array(var_160)
  loc_12B0E10:       Set var_108 = Me.ListView
  loc_12B0E2B:       Set var_8C = Me.TxtGrid
  loc_12B0E45:       Set global_104 = Proc_6_66_EFF8FC(var_108, var_8C, Index, global_88, 5)
  loc_12B0E63:       Set var_88 = Me.TxtGrid
  loc_12B0E69:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, global_88)
  loc_12B0E83:       Set var_90 = Me.TxtGrid
  loc_12B0E89:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_12B0E91:       var_108.Tag = var_8C.Text
  loc_12B0EA7:     Else
  loc_12B0EAE:       If (var_114 = CLng(4)) Then
  loc_12B0EBF:         Set var_88 = Me.TxtGrid
  loc_12B0EC5:         Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12B0ECD:         var_8C.MaxLength = 3
  loc_12B0EE6:         ReDim var_160(0 To &HB)
  loc_12B0EFD:         var_160(0) = "Jan"
  loc_12B0F0C:         var_160(1) = "Feb"
  loc_12B0F1B:         var_160(2) = "Mar"
  loc_12B0F2A:         var_160(3) = "Apr"
  loc_12B0F39:         var_160(4) = "May"
  loc_12B0F48:         var_160(5) = "Jun"
  loc_12B0F57:         var_160(6) = "Jul"
  loc_12B0F66:         var_160(7) = "Aug"
  loc_12B0F75:         var_160(8) = "Sep"
  loc_12B0F84:         var_160(9) = "Oct"
  loc_12B0F93:         var_160(&HA) = "Nov"
  loc_12B0FA2:         var_160(&HB) = "Dec"
  loc_12B0FB9:         global_88 = Array(var_160)
  loc_12B0FC4:         Set var_108 = Me.ListView
  loc_12B0FDF:         Set var_8C = Me.TxtGrid
  loc_12B0FF9:         Set global_104 = Proc_6_66_EFF8FC(var_108, var_8C, Index, global_88)
  loc_12B1017:         Set var_88 = Me.TxtGrid
  loc_12B101D:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110)
  loc_12B1025:         &HC = var_8C.Text
  loc_12B1037:         Set var_90 = Me.TxtGrid
  loc_12B103D:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_12B1045:         var_108.Tag = global_88
  loc_12B105B:       Else
  loc_12B1062:         If (var_114 = CLng(2)) Then
  loc_12B1074:           Set var_88 = Me.TxtGrid
  loc_12B107A:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_12B1082:           var_8C.MaxLength = 8
  loc_12B1097:           If (global_80 = 0) Then
  loc_12B10A2:             var_110 = "{Home}+{End}"
  loc_12B10A8:             Proc_303_0_FB9B68(var_110, 0)
  loc_12B10B0:           End If
  loc_12B10B0:         End If
  loc_12B10B0:       End If
  loc_12B10B0:     End If
  loc_12B10B0:   End If
  loc_12B10B0: End If
  loc_12B10B0: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12F0364
  'Data Table: 4C5600
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C4 As Variant
  Dim var_98 As DataGrid
  Dim var_DC As DataGrid
  Dim Me As Recordset15
  Dim var_E8 As TextBox
  Dim var_F8 As TextBox
  loc_12EFCA8: If (KeyCode = 0) Then
  loc_12EFCB5:   If (CLng(Shift) = &H1B) Then
  loc_12EFCC5:     Set var_8C = Me.TxtGrid
  loc_12EFCCB:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_12EFCE5:     Set var_98 = Me.TxtGrid
  loc_12EFCEB:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12EFCF3:     var_9C.Text = var_90.Tag
  loc_12EFD0A:     Set var_8C = Me.FGrid
  loc_12EFD27:     Set var_8C = Me.TxtGrid
  loc_12EFD2D:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12EFD35:     var_90.Visible = FGrid.DispID_8001
  loc_12EFD4F:     Set var_8C = Me.TxtGrid
  loc_12EFD55:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12EFD5D:     var_90.MaxLength = 0
  loc_12EFD69:     Exit Sub
  loc_12EFD6A:   End If
  loc_12EFD8D:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_12EFD9C:     Set var_8C = Me.TxtGrid
  loc_12EFDA2:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_B4)
  loc_12EFDAA:     var_B0 = var_90.Left
  loc_12EFDC1:     Me.DGRev.Left = CVar(var_B4)
  loc_12EFDDB:     Set var_98 = Me.TxtGrid
  loc_12EFDE1:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_12EFDE9:     var_D8 = var_9C.Height
  loc_12EFDFA:     Set var_8C = Me.TxtGrid
  loc_12EFE00:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12EFE14:     var_C4 = CVar((var_90.Top + var_D8)) 'Single
  loc_12EFE23:     Me.DGRev.Top = CVar(var_90.Top)
  loc_12EFE40:     Set var_E8 = Me.TxtGrid
  loc_12EFE52:     Set var_9C = Me.FGPoint
  loc_12EFE5D:     Set var_98 = Nothing
  loc_12EFE8B:     Proc_6_69_134A198(Me.DGRev, var_E8, KeyCode, global_72, Shift, &HFF)
  loc_12EFEAA:     var_B4 = Me.RecordCount
  loc_12EFEB8:     If (var_B4 > 0) Then
  loc_12EFEBF:       Set var_98 = Me.DGRev
  loc_12EFEDE:       Proc_6_138_106D6F8(var_98, global_72, KeyCode, Me.FGPoint, 1)
  loc_12EFEEC:     End If
  loc_12EFEF6:     If (CLng(Shift) = &HD) Then
  loc_12EFEFF:       Call Proc_288_49_12574D4(KeyCode, var_DE, var_98)
  loc_12EFF0A:       If (var_DE = &HFF) Then
  loc_12EFF50:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_80, 5)
  loc_12EFF60:       End If
  loc_12EFF60:     End If
  loc_12EFF63:   Else
  loc_12EFF6A:     If (var_B0 = CLng(2)) Then
  loc_12EFFAD:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_80 = &HFF))) Then
  loc_12EFFB6:         Call Proc_288_49_12574D4(KeyCode, var_DE, 0, 2)
  loc_12EFFC1:         If (var_DE = &HFF) Then
  loc_12EFFF8:           Set var_90 = Me.TxtGrid
  loc_12F0007:           Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_80, 5, 0)
  loc_12F0017:         End If
  loc_12F0017:       End If
  loc_12F001A:     Else
  loc_12F0021:       If (var_B0 = CLng(3)) Then
  loc_12F0033:         Set var_8C = Me.TxtGrid
  loc_12F0039:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, &HF, 3, 0)
  loc_12F0041:         var_90.MaxLength = 0
  loc_12F006F:         Set var_8C = Me.TxtGrid
  loc_12F0075:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_12F007D:         var_9C = var_90.Left
  loc_12F008F:         Set var_98 = Me.TxtGrid
  loc_12F0095:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D8)
  loc_12F009D:         0 = var_9C.Top
  loc_12F00AF:         Set var_DC = Me.TxtGrid
  loc_12F00B5:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E8)
  loc_12F00CF:         Set var_EC = Me.TxtGrid
  loc_12F00D5:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F8)
  loc_12F00DD:         var_FC = var_F8.Width
  loc_12F0125:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12F0153:         If (CLng(Shift) = &HD) Then
  loc_12F015C:           Call Proc_288_49_12574D4(KeyCode, var_DE, CInt(var_B4), CInt((var_D8 + var_E8.Height)))
  loc_12F0167:           If (var_DE = &HFF) Then
  loc_12F0175:             Set var_9C = Me.TxtGrid
  loc_12F019E:             Set var_90 = var_9C
  loc_12F01AD:             Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_80, 5)
  loc_12F01BD:           End If
  loc_12F01BD:         End If
  loc_12F01C0:       Else
  loc_12F01C7:         If (var_B0 = CLng(4)) Then
  loc_12F01D9:           Set var_8C = Me.TxtGrid
  loc_12F01DF:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 3, 0, 4)
  loc_12F01E7:           var_90.MaxLength = 0
  loc_12F0215:           Set var_8C = Me.TxtGrid
  loc_12F021B:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_12F0223:           CInt(var_FC) = var_90.Left
  loc_12F0235:           Set var_98 = Me.TxtGrid
  loc_12F023B:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D8)
  loc_12F0243:           1300 = var_9C.Top
  loc_12F0255:           Set var_DC = Me.TxtGrid
  loc_12F025B:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E8)
  loc_12F0275:           Set var_EC = Me.TxtGrid
  loc_12F027B:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_F8)
  loc_12F0283:           var_FC = var_F8.Width
  loc_12F02CB:           Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12F02F9:           If (CLng(Shift) = &HD) Then
  loc_12F0302:             Call Proc_288_49_12574D4(KeyCode, var_DE, CInt(var_B4), CInt((var_D8 + var_E8.Height)))
  loc_12F030D:             If (var_DE = &HFF) Then
  loc_12F0353:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_80, 5)
  loc_12F0363:             End If
  loc_12F0363:           End If
  loc_12F0363:         End If
  loc_12F0363:       End If
  loc_12F0363:     End If
  loc_12F0363:   End If
  loc_12F0363: End If
  loc_12F0363: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F2BD08
  'Data Table: 4C5600
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F2BBFF: Proc_6_58_E054C0(arg_10)
  loc_F2BC10: If (KeyAscii = 0) Then
  loc_F2BC26:   var_A0 = CLng(Me.FGrid.Col)
  loc_F2BC36:   If (var_A0 = CLng(1)) Then
  loc_F2BC55:     If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_F2BC67:       var_A4 = "Name"
  loc_F2BC82:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_72, arg_10)
  loc_F2BC9C:       Set var_AC = Me.FGPoint
  loc_F2BCB4:       Proc_6_138_106D6F8(Me.DGRev, global_72, KeyAscii, var_AC)
  loc_F2BCC2:     End If
  loc_F2BCC5:   Else
  loc_F2BCCC:     If (var_A0 = CLng(2)) Then
  loc_F2BCD9:       Set var_8C = Me.TxtGrid
  loc_F2BCDF:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F2BCFA:       Proc_6_42_129A86C(var_AC, arg_10, 5, 2)
  loc_F2BD06:     End If
  loc_F2BD06:   End If
  loc_F2BD06: End If
  loc_F2BD06: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F8D0B8
  'Data Table: 4C5600
  Dim var_A0 As Long
  loc_F8CF5C: On Error Goto loc_F8D0B0
  loc_F8CF6B: If (KeyCode = 0) Then
  loc_F8CF81:   var_A0 = CLng(Me.FGrid.Col)
  loc_F8CF91:   If (var_A0 = CLng(1)) Then
  loc_F8CFB7:     If ((Shift <> &HD) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_F8CFC8:       Call TxtGrid_KeyDown(KeyCode, global_82)
  loc_F8CFF7:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_72, Shift, "Name")
  loc_F8D006:     End If
  loc_F8D009:   Else
  loc_F8D010:     If Not (var_A0 = CLng(3)) Then
  loc_F8D01A:       If (var_A0 = CLng(4)) Then
  loc_F8D01D:       End If
  loc_F8D03F:       If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F8D050:         Call TxtGrid_KeyDown(KeyCode, global_82)
  loc_F8D055:       End If
  loc_F8D070:       If (Me.FrmList.Visible = &HFF) Then
  loc_F8D09F:         Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, KeyCode, Shift, global_104)
  loc_F8D0AF:       End If
  loc_F8D0AF:     End If
  loc_F8D0AF:   End If
  loc_F8D0AF: End If
  loc_F8D0AF: Exit Sub
  loc_F8D0B0: ' Referenced from: F8CF5C
  loc_F8D0B0: Proc_6_60_E62BC4(0, &HFF, 0)
  loc_F8D0B5: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E228FC
  'Data Table: 4C5600
  Dim arg_10 As Integer
  loc_E228E4: If (Cancel = 0) Then
  loc_E228ED:   Call Proc_288_49_12574D4(Cancel, var_88)
  loc_E228F6:   arg_10 = Not(var_88)
  loc_E228F9: End If
  loc_E228F9: Exit Sub
End Sub

Public Function global_52Get() '4C65F0
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4C65FF
  global_52 = Value
End Sub

Public Function global_56Get() '4C660E
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4C661D
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E9CB90
  'Data Table: 4C5600
  loc_E9CB16: On Error Goto loc_E9CB89
  loc_E9CB22: Me.Recordset15.MoveFirst
  loc_E9CB4F: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E9CB7B: Proc_5_0_110649C(&HFF, Me, global_60)
  loc_E9CB83: Call Proc_288_45_14C60B4(0)
  loc_E9CB88: Exit Sub
  loc_E9CB89: ' Referenced from: E9CB16
  loc_E9CB89: Proc_6_60_E62BC4(var_A0)
  loc_E9CB8E: Exit Sub
End Sub

Public Sub Proc_288_42_111428C
  'Data Table: 4C5600
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_104 As TextBox
  Dim var_10C As DataGrid
  Dim var_110 As TextBox
  Dim arg_2400 As Variant
  loc_1113F40: Set var_88 = Me.FGrid
  loc_1113F4F: var_88.Height = CVar(CDbl(4250))
  loc_1113F60: var_88.Width = CVar(CDbl(8500))
  loc_1113F71: var_88.Cols = 6
  loc_1113F82: var_88.Rows = 2
  loc_1113F9B: global_108 = CStr(CLng(var_88.BackColor))
  loc_1113FA8: var_98 = CVar(CLng(5)) 'Long
  loc_1113FAD: var_CC = 0
  loc_1113FB9: LateIdCallSt
  loc_1113FC4: var_98 = CVar(CLng(5)) 'Long
  loc_1113FCF: var_CC = CVar(CInt(4)) 'Integer
  loc_1113FD6: LateIdCallSt
  loc_1113FDE: var_98 = 1
  loc_1113FEA: var_CC = CVar(CLng(5)) 'Long
  loc_1113FEF: var_EC = "1"
  loc_1113FF8: LateIdCallSt
  loc_1114000: var_98 = 0
  loc_111400C: var_CC = CVar(CLng(1)) 'Long
  loc_1114011: var_EC = "Revenue"
  loc_111401A: LateIdCallSt
  loc_1114025: var_98 = CVar(CLng(1)) 'Long
  loc_111402A: var_CC = &HFA0
  loc_1114036: LateIdCallSt
  loc_1114041: var_98 = CVar(CLng(1)) 'Long
  loc_111404C: var_CC = CVar(CInt(1)) 'Integer
  loc_1114053: LateIdCallSt
  loc_111405B: var_98 = 0
  loc_1114067: var_CC = CVar(CLng(2)) 'Long
  loc_111406C: var_EC = "Amount"
  loc_1114075: LateIdCallSt
  loc_1114080: var_98 = CVar(CLng(2)) 'Long
  loc_1114085: var_CC = &H4B0
  loc_1114091: LateIdCallSt
  loc_111409C: var_98 = CVar(CLng(2)) 'Long
  loc_11140A7: var_CC = CVar(CInt(7)) 'Integer
  loc_11140AE: LateIdCallSt
  loc_11140B6: var_98 = 0
  loc_11140C2: var_CC = CVar(CLng(3)) 'Long
  loc_11140C7: var_EC = "Nature"
  loc_11140D0: LateIdCallSt
  loc_11140DB: var_98 = CVar(CLng(3)) 'Long
  loc_11140E0: var_CC = &H708
  loc_11140EC: LateIdCallSt
  loc_11140F7: var_98 = CVar(CLng(3)) 'Long
  loc_1114102: var_CC = CVar(CInt(1)) 'Integer
  loc_1114109: LateIdCallSt
  loc_1114111: var_98 = 0
  loc_111411D: var_CC = CVar(CLng(4)) 'Long
  loc_1114122: var_EC = "Month"
  loc_111412B: LateIdCallSt
  loc_1114136: var_98 = CVar(CLng(4)) 'Long
  loc_111413B: var_CC = &H320
  loc_1114147: LateIdCallSt
  loc_1114152: var_98 = CVar(CLng(4)) 'Long
  loc_111415D: var_CC = CVar(CInt(1)) 'Integer
  loc_1114164: LateIdCallSt
  loc_111416C: var_98 = 0
  loc_1114178: var_CC = CVar(CLng(0)) 'Long
  loc_111417D: var_EC = "O"
  loc_1114186: LateIdCallSt
  loc_1114191: var_98 = CVar(CLng(0)) 'Long
  loc_1114196: var_CC = &H64
  loc_11141A2: LateIdCallSt
  loc_11141AD: var_98 = CVar(CLng(0)) 'Long
  loc_11141BF: LateIdCallSt
  loc_11141C7: var_98 = True
  loc_11141CE: var_88.Enabled = var_98
  loc_11141E1: Set var_100 = Me.Txt
  loc_11141E7: Call 0.Method_Proc_288_42_111428C0 (CInt(0), var_104, var_108, var_88, CVar(CInt(4)), var_98, var_88)
  loc_11141EF: var_CC = var_104.Left
  loc_11141F7: var_98 = CVar(var_108) 'Single
  loc_1114206: Me.DGMember.Left = var_98
  loc_1114222: Set var_10C = Me.Txt
  loc_1114228: Call 0.Method_Proc_288_42_111428C0 (CInt(0), var_110, var_114, var_98, var_88)
  loc_1114230: var_EC = var_110.Height
  loc_1114243: Set var_100 = Me.Txt
  loc_1114249: Call 0.Method_Proc_288_42_111428C0 (CInt(0), var_104, var_108)
  loc_1114251: var_CC = var_104.Top
  loc_1114261: var_98 = CVar(((var_108 + var_114) + CDbl(&H19))) 'Single
  loc_1114270: Me.DGMember.Top = var_98
  loc_1114284: Set var_88 = Nothing 
  loc_1114288: Exit Sub
  loc_1114289: arg_2400 = CVar(var_98) 'Integer
End Sub

Public Sub Proc_288_43_F17820
  'Data Table: 4C5600
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F17736: Set var_8C = Me.Txt
  loc_F1773C: Call 0.Method_Proc_288_43_F17820C (var_8E, var_86)
  loc_F1774C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F17762:   Set var_8C = Me.Txt
  loc_F17768:   Call 0.Method_Proc_288_43_F178200 (CInt(var_86), var_98)
  loc_F17770:   var_98.Text = vbNullString
  loc_F1778C:   Set var_8C = Me.Txt
  loc_F17792:   Call 0.Method_Proc_288_43_F178200 (CInt(var_86), var_98)
  loc_F1779A:   var_98.Tag = vbNullString
  loc_F177A9: Next var_92 'Byte
  loc_F177C2: Me.FGrid.Rows = 1
  loc_F177DF: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F177E7: Set var_98 = Me.FGrid
  loc_F17816: Me.FGrid.FixedRows = 1
  loc_F1781E: Exit Sub
End Sub

Public Sub Proc_288_44_11A743C
  'Data Table: 4C5600
  Dim var_9C As String
  Dim var_94 As Variant
  Dim var_B4 As String
  Dim var_C0 As String
  Dim var_B8 As TextBox
  Dim var_F4 As Variant
  Dim var_D4 As Variant
  Dim var_114 As Variant
  Dim unk_4C5613 As Connection15
  Dim var_8A As Integer
  Dim var_90 As Variant
  Dim var_88 As Recordset15
  Dim var_160 As Variant
  Dim var_E4 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  loc_11A705B: Set var_90 = Me.Txt
  loc_11A7061: Call 0.Method_Proc_288_44_11A743C0 (CInt(2))
  loc_11A708A: If (Proc_6_27_EA565C(var_94, "New CateGory") = 0) Then
  loc_11A7094:   Call Txt_GotFocus(CInt(2))
  loc_11A7099:   Exit Sub
  loc_11A709A: End If
  loc_11A70AE: var_9C = "Select MemCatMast.Code AS CatCode , MemCatMast.Name AS CatName , MembershipRevMast.Code As RevCode, MembershipRevMast.Description, MR.AppDate , MR.Amount , MR.Nature, MR.AppMonth From ((MemCatRevWise MR Left Join MemCatMast On MR.MemCat = MemCatMast.Code) LEFT JOIN MembershipRevMast ON MR.RevCode = MembershipRevMast.Code) Where MR.Site_Code='" & MemVar_1F92070
  loc_11A70D4: Set var_90 = Me.Txt
  loc_11A70DA: Call 0.Method_Proc_288_44_11A743C0 (CInt(2), var_94, var_AC, var_9C & "' and (MR.LOGSITE_CODE='" & MemVar_1F92078 & "' or MR.LOGSITE_CODE='HO') And MR.MemCat='")
  loc_11A70E2: var_148 = var_94.Tag
  loc_11A70EB: var_B4 = -1 & var_AC
  loc_11A70F2: var_C0 = var_B4 & "' And MR.AppDate=(Select Top 1 AppDate From MemCatRevWise Where MemCat='"
  loc_11A7103: Set var_98 = Me.Txt
  loc_11A7109: Call 0.Method_Proc_288_44_11A743C0 (CInt(2), var_B8, var_BC)
  loc_11A7111: var_C0 = var_B8.Tag
  loc_11A712F: Proc_6_7_F25D88(var_E4, MemVar_1F920EC)
  loc_11A714E: unk_4C5613.Execute CStr(CVar(var_14C & var_BC & "' And Appdate<=") & var_E4 & "Order By AppDate Desc)"), var_94, 
  loc_11A7159: Set var_88 = var_14C
  loc_11A718F: var_8A = 1
  loc_11A71A5: Me.FGrid.Rows = 1
  loc_11A71AD: ' Referenced from: 11A73C6
  loc_11A71BC: If Not(var_88.EOF) Then
  loc_11A71BF:   var_D4 = vbNullString
  loc_11A71C9:   Set var_90 = Me.FGrid
  loc_11A71DE:   Set var_150 = Me.FGrid
  loc_11A71E5:   var_114 = CVar(CLng(var_8A)) 'Long
  loc_11A71ED:   var_160 = CVar(CLng(5)) 'Long
  loc_11A721D:   var_F4 = CVar(CStr(var_88.Fields.Item("RevCode").Value)) 'String
  loc_11A7224:   LateIdCallSt
  loc_11A7246:   var_160 = CVar(CLng(1)) 'Long
  loc_11A7273:   var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Description")), var_160, CVar(CLng(var_8A)), var_150, var_F4)) 'String
  loc_11A727A:   LateIdCallSt
  loc_11A72B2:   Proc_6_39_E7C810(var_F4, CVar(var_88.Fields.Item("Amount")), var_150, var_F4, var_160)
  loc_11A72BB:   var_138 = CVar(CLng(var_8A)) 'Long
  loc_11A72F3:   LateIdCallSt
  loc_11A7344:   var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(3)), CVar(CLng(var_8A)), var_150, CVar(CStr(Format(var_F4, "0.00"))), 1, 1)) 'String
  loc_11A734B:   LateIdCallSt
  loc_11A7396:   var_F4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("AppMonth")), CVar(CLng(4)), CVar(CLng(var_8A)), var_150, var_F4, CVar(CLng(2)))) 'String
  loc_11A739D:   LateIdCallSt
  loc_11A73B1:   Set var_150 = Nothing 
  loc_11A73BB:   var_8A = (var_8A + 1)
  loc_11A73C1:   var_88.MoveNext
  loc_11A73C6:   GoTo loc_11A71AD
  loc_11A73C9: End If
  loc_11A73C9: var_D4 = 0
  loc_11A73D3: Set var_90 = Me.FGrid
  loc_11A7400: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_11A7403:   var_D4 = vbNullString
  loc_11A740D:   Set var_90 = Me.FGrid
  loc_11A741E: End If
  loc_11A7431: Me.FGrid.FixedRows = 1
  loc_11A7439: Exit Sub
End Sub

Public Sub Proc_288_45_14C60B4
  'Data Table: 4C5600
  Dim var_98 As String
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As Field20
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim unk_4C5613 As Connection15
  Dim var_11C As Variant
  Dim var_130 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_88 As Recordset15
  Dim var_188 As Variant
  Dim var_184 As Variant
  Dim var_1E0 As Variant
  Dim var_1E8 As TextBox
  Dim Me As Recordset15
  Dim var_8E As Integer
  Dim var_8C As Recordset15
  Dim var_12C As Variant
  loc_14C5390: On Error Goto loc_14C60AE
  loc_14C53AD: If (Me.Recordset15.RecordCount > 0) Then
  loc_14C53B0:   Call Proc_288_43_F17820()
  loc_14C53C9:   var_98 = "Select M.*,S.Name As MemName From MemCatChngDetail M Inner Join SubGroup S On M.MemCode=S.SubCode where M.Site_Code='" & MemVar_1F92070
  loc_14C5411:   var_E8 = CVar(var_98 & "' And (M.LOGSITE_CODE='" & MemVar_1F92078 & "' or M.LOGSITE_CODE='HO') And M.Code='") & Me.Recordset15.Fields.Item("SearchCode").Value 
  loc_14C5428:   unk_4C5613.Execute CStr(var_E8 & "'"), var_12C, -1
  loc_14C5433:   Set var_88 = var_130
  loc_14C546B:   var_98 = "Select M.*,MR.Description As Description From MemRevenueForPeriod M Inner Join MembershipRevMast MR On M.RevCode=MR.Code where M.Site_Code='" & MemVar_1F92070
  loc_14C54B3:   var_E8 = CVar(var_98 & "' And (M.LOGSITE_CODE='" & MemVar_1F92078 & "' or M.LOGSITE_CODE='HO') And M.Code='") & Me.Recordset15.Fields.Item("SearchCode").Value 
  loc_14C5507:   unk_4C5613.Execute CStr(var_E8 & "' And M.Type='" & Me.Recordset15.Fields.Item("Type").Value & "'"), var_184, -1
  loc_14C5512:   Set var_8C = var_188
  loc_14C557A:   var_130 = var_88.Fields
  loc_14C55E3:   var_164 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), var_188) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_130.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_14C5628:   Me.LblUser.Caption = CStr(var_130 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_164)))
  loc_14C56A2:   var_134 = var_88.Fields.Item("U_AE")
  loc_14C56AA:   var_D8 = CVar(var_134) 'Address
  loc_14C5703:   var_164 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(var_D8) = "E"), "Last Update : ", "entdt : "))
  loc_14C571A:   var_188 = var_88.Fields
  loc_14C5742:   Set var_1E0 = Me.LblLDt
  loc_14C5748:   var_1E0.Caption = CStr(var_164 & CVar(Proc_6_38_E68A98(CVar(var_188.Item("U_EntDt")))))
  loc_14C5794:   If (var_88.RecordCount > 0) Then
  loc_14C57C5:     global_112 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Code")))
  loc_14C5808:     Set var_130 = Me.Txt
  loc_14C580E:     Call 0.Method_Proc_288_45_14C60B40 (CInt(0), var_134)
  loc_14C5816:     var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemName")))
  loc_14C5860:     Set var_130 = Me.Txt
  loc_14C5866:     Call 0.Method_Proc_288_45_14C60B40 (CInt(0), var_134)
  loc_14C586E:     var_134.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCode")))
  loc_14C58C9:     var_98 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("OldCat")), "Select Max(Name) From MemCatMast WHERE Code='", var_D8, -1, var_130)
  loc_14C58DD:     unk_4C5613.Execute var_134 & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemCode"))) & "'", 0, var_188
  loc_14C58ED:      = var_134.Item()
  loc_14C58F5:      = var_188.Value
  loc_14C5910:     Set var_1BC = Me.Txt
  loc_14C5916:     Call 0.Method_Proc_288_45_14C60B40 (CInt(1), var_1E0)
  loc_14C591E:     var_1E0.Text = Proc_6_38_E68A98(var_130.Fields)
  loc_14C597C:     Set var_130 = Me.Txt
  loc_14C5982:     Call 0.Method_Proc_288_45_14C60B40 (CInt(1), var_134)
  loc_14C598A:     var_134.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("OldCat")))
  loc_14C59E5:     var_98 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("NewCat")), "Select Max(Name) From MemCatMast WHERE Code='", var_D8, -1, var_130)
  loc_14C59F9:     unk_4C5613.Execute var_134 & Proc_6_38_E68A98(CVar(var_88.Fields.Item("OldCat"))) & "'", 0, var_188
  loc_14C5A09:      = var_134.Item()
  loc_14C5A11:      = var_188.Value
  loc_14C5A2C:     Set var_1BC = Me.Txt
  loc_14C5A32:     Call 0.Method_Proc_288_45_14C60B40 (CInt(2), var_1E0)
  loc_14C5A3A:     var_1E0.Text = Proc_6_38_E68A98(var_130.Fields)
  loc_14C5A98:     Set var_130 = Me.Txt
  loc_14C5A9E:     Call 0.Method_Proc_288_45_14C60B40 (CInt(2), var_134)
  loc_14C5AA6:     var_134.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("NewCat")))
  loc_14C5B24:     Set var_130 = Me.Txt
  loc_14C5B2A:     Call 0.Method_Proc_288_45_14C60B40 (CInt(5), var_134)
  loc_14C5B32:     var_134.Text = CStr(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevenueChng"))) = "Y"), "Yes", "No"))
  loc_14C5C07:     var_164 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("FrMonth"))) = vbNullString), CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FrMonth")))), Format(CVar(var_88.Fields.Item("FrMonth")), "MMM/yyyy"))
  loc_14C5C1E:     Set var_1E0 = Me.Txt
  loc_14C5C24:     Call 0.Method_Proc_288_45_14C60B40 (CInt(3), var_1E8, CStr(var_164))
  loc_14C5C2C:     var_1E8.Text = 1
  loc_14C5C73:     var_B8 = var_88.Fields.Item("ToMonth")
  loc_14C5C8A:     var_F8 = "ToMonth"
  loc_14C5CA6:     var_D8 = CVar(var_88.Fields.Item(var_F8)) 'Address
  loc_14C5D0D:     var_164 = IIf((Proc_6_38_E68A98(CVar(var_B8)) = vbNullString), CVar(Proc_6_38_E68A98(var_D8)), Format(CVar(var_88.Fields.Item("ToMonth")), "MMM/yyyy"))
  loc_14C5D24:     Set var_1E0 = Me.Txt
  loc_14C5D2A:     Call 0.Method_Proc_288_45_14C60B40 (CInt(4), var_1E8, CStr(var_164))
  loc_14C5D32:     var_1E8.Text = 1
  loc_14C5D79:     If (Me.RecordCount > 0) Then
  loc_14C5D82:       Me.MoveFirst
  loc_14C5DA5:       Set var_A4 = Me.Txt
  loc_14C5DAB:       Call 0.Method_Proc_288_45_14C60B40 (CInt(0), var_B8, "Name =", 0)
  loc_14C5DBA:       Proc_6_17_EAA2B0(var_D8, CVar(var_B8), 1)
  loc_14C5DD0:       Me.Find CStr(var_F8 & var_D8), 1, 1
  loc_14C5DE4:     End If
  loc_14C5DE4:   End If
  loc_14C5DE6:   var_8E = 1
  loc_14C5DFC:   Me.FGrid.Rows = 1
  loc_14C5E04:   ' Referenced from: 14C601D
  loc_14C5E13:   If Not(var_8C.EOF) Then
  loc_14C5E16:     var_B4 = vbNullString
  loc_14C5E20:     Set var_A4 = Me.FGrid
  loc_14C5E35:     Set var_1F0 = Me.FGrid
  loc_14C5E3C:     var_F8 = CVar(CLng(var_8E)) 'Long
  loc_14C5E44:     var_154 = CVar(CLng(5)) 'Long
  loc_14C5E74:     var_D8 = CVar(CStr(var_8C.Fields.Item("RevCode").Value)) 'String
  loc_14C5E7B:     LateIdCallSt
  loc_14C5E9D:     var_154 = CVar(CLng(1)) 'Long
  loc_14C5ECA:     var_D8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Description")), var_154, CVar(CLng(var_8E)), var_1F0, var_D8)) 'String
  loc_14C5ED1:     LateIdCallSt
  loc_14C5F09:     Proc_6_39_E7C810(var_D8, CVar(var_8C.Fields.Item("Amount")), var_1F0, var_D8, var_154)
  loc_14C5F12:     var_11C = CVar(CLng(var_8E)) 'Long
  loc_14C5F4A:     LateIdCallSt
  loc_14C5F9B:     var_D8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Nature")), CVar(CLng(3)), CVar(CLng(var_8E)), var_1F0, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)) 'String
  loc_14C5FA2:     LateIdCallSt
  loc_14C5FB8:     var_F8 = CVar(CLng(var_8E)) 'Long
  loc_14C5FED:     var_D8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("AppMonth")), CVar(CLng(4)), var_F8, var_1F0, var_D8, CVar(CLng(2)))) 'String
  loc_14C5FF4:     LateIdCallSt
  loc_14C6008:     Set var_1F0 = Nothing 
  loc_14C6012:     var_8E = (var_8E + 1)
  loc_14C6018:     var_8C.MoveNext
  loc_14C601D:     GoTo loc_14C5E04
  loc_14C6020:   End If
  loc_14C6020:   var_B4 = 0
  loc_14C602A:   Set var_A4 = Me.FGrid
  loc_14C6057:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_14C605A:     var_B4 = vbNullString
  loc_14C6064:     Set var_A4 = Me.FGrid
  loc_14C6075:   End If
  loc_14C6075:   var_B4 = 1
  loc_14C6088:   Me.FGrid.FixedRows = var_B4
  loc_14C6093: Else
  loc_14C6093:   Call Proc_288_43_F17820(FGrid.DispID_10000, var_B4, FGrid.DispID_2E, var_B4, var_8E, var_1F0)
  loc_14C6098: End If
  loc_14C6098: Call Proc_288_47_EBA388(var_D8, var_11C, var_F8)
  loc_14C60A2: Set var_88 = Nothing
  loc_14C60AA: Set var_8C = Nothing
  loc_14C60AD: Exit Sub
  loc_14C60AE: ' Referenced from: 14C5390
  loc_14C60AE: Proc_6_60_E62BC4(FGrid.DispID_10000, var_B4)
  loc_14C60B3: Exit Sub
End Sub

Public Sub Proc_288_46_F691D0(arg_C) 'F691D0
  'Data Table: 4C5600
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_F690A6: Set var_8C = Me.Txt
  loc_F690AC: Call 0.Method_Proc_288_46_F691D0C (var_8E, var_86)
  loc_F690BC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F690D2:   Set var_8C = Me.Txt
  loc_F690D8:   Call 0.Method_Proc_288_46_F691D00 (CInt(var_86), var_98)
  loc_F690E0:   var_98.Enabled = arg_C
  loc_F690EF: Next var_92 'Byte
  loc_F69102: Me.CmdFillGrid.Enabled = arg_C
  loc_F69117: Set var_8C = Me.Txt
  loc_F6911D: Call 0.Method_Proc_288_46_F691D00 (CInt(1), var_98)
  loc_F69125: var_98.Enabled = False
  loc_F6913E: Set var_8C = Me.Txt
  loc_F69144: Call 0.Method_Proc_288_46_F691D00 (CInt(6), var_98)
  loc_F6914C: var_98.Enabled = False
  loc_F6915C: Set var_8C = Me.TopCtrl1
  loc_F69162: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F6917B: If (CStr() = "Edit") Then
  loc_F6918B:   Set var_8C = Me.Txt
  loc_F69191:   Call 0.Method_Proc_288_46_F691D00 (CInt(0), var_98)
  loc_F69199:   var_98.Enabled = False
  loc_F691B2:   Set var_8C = Me.Txt
  loc_F691B8:   Call 0.Method_Proc_288_46_F691D00 (CInt(2), var_98)
  loc_F691C0:   var_98.Enabled = False
  loc_F691CC: End If
  loc_F691CC: Exit Sub
  loc_F691CD: Loop Until  'do at: F68D97
End Sub

Public Sub Proc_288_47_EBA388
  'Data Table: 4C5600
  loc_EBA300: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_EBA312:   Me.DGMember.Visible = False
  loc_EBA31A: End If
  loc_EBA336: If (CBool(Me.DGMemType.Visible) = &HFF) Then
  loc_EBA348:   Me.DGMemType.Visible = False
  loc_EBA350: End If
  loc_EBA36C: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_EBA37E:   Me.DGRev.Visible = False
  loc_EBA386: End If
  loc_EBA386: Exit Sub
End Sub

Public Sub Proc_288_48_E42174
  'Data Table: 4C5600
  loc_E42150: Set var_88 = Me.TopCtrl1
  loc_E42156: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4216F: If (CStr() = "Browse") Then
  loc_E42172:   Exit Sub
  loc_E42173: End If
  loc_E42173: Exit Sub
End Sub

Public Sub Proc_288_49_12574D4(arg_C) '12574D4
  'Data Table: 4C5600
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_B8 As String
  Dim var_140 As Variant
  Dim var_170 As Variant
  loc_1256F8C: If (arg_C = 0) Then
  loc_1256FA2:   var_A8 = CLng(Me.FGrid.Col)
  loc_1256FB2:   If (var_A8 = CLng(1)) Then
  loc_1256FD5:     var_AE = Me.EOF
  loc_1257003:     Set var_94 = Me.TxtGrid
  loc_1257009:     Call 0.Method_Proc_288_49_12574D40 (arg_C, var_B4, var_B8)
  loc_1257011:     ((Me.RecordCount = 0) Or ((var_AE = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_1257029:     If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_125703F:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1257047:       var_E8 = CVar(CLng(1)) 'Long
  loc_125704C:       var_108 = vbNullString
  loc_1257056:       Set var_B4 = Me.FGrid
  loc_125705C:       LateIdCallSt
  loc_1257081:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1257089:       var_E8 = CVar(CLng(5)) 'Long
  loc_125708E:       var_108 = vbNullString
  loc_1257098:       Set var_B4 = Me.FGrid
  loc_125709E:       LateIdCallSt
  loc_12570B3:     Else
  loc_12570B6:       Call Proc_288_50_FBD208(var_AE, var_B4, var_108, var_E8, var_C8)
  loc_12570C1:       If (var_AE = 0) Then
  loc_12570C9:         Proc_288_49_12574D4 = 0
  loc_12570CF:       End If
  loc_12570E2:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12570EA:       var_F8 = CVar(CLng(1)) 'Long
  loc_125711D:       var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1257125:       Set var_140 = Me.FGrid
  loc_125712B:       LateIdCallSt
  loc_125715A:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1257162:       var_F8 = CVar(CLng(5)) 'Long
  loc_1257195:       var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_125719D:       Set var_140 = Me.FGrid
  loc_12571A3:       LateIdCallSt
  loc_12571BF:     End If
  loc_12571D8:     var_C8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_12571E0:     var_E8 = CVar(CLng(5)) 'Long
  loc_12571E9:     Set var_B4 = Me.FGrid
  loc_12571FA:     var_B8 = CStr(var_B4.TextMatrix))
  loc_1257213:     If (var_B8 <> vbNullString) Then
  loc_1257216:       var_C8 = vbNullString
  loc_1257220:       Set var_94 = Me.FGrid
  loc_1257231:     End If
  loc_1257234:   Else
  loc_125723B:     If (var_A8 = CLng(2)) Then
  loc_1257248:       Set var_94 = Me.TxtGrid
  loc_125724E:       Call 0.Method_Proc_288_49_12574D40 (arg_C, var_B4, FGrid.DispID_10000, var_C8, var_E8, var_C8, var_140)
  loc_125726D:       Set var_11C = Me.TxtGrid
  loc_1257273:       Call 0.Method_Proc_288_49_12574D40 (arg_C, var_140, var_B8, Not(IsNumeric(CVar(var_B4))), var_13C, var_F8)
  loc_125727B:       var_D8 = var_140.Text
  loc_125729D:       If (var_140 Or (CDbl(Val(var_B8)) < CDbl(0))) Then
  loc_12572A4:         var_B8 = CStr(0)
  loc_12572B1:         Set var_94 = Me.TxtGrid
  loc_12572B7:         Call 0.Method_Proc_288_49_12574D40 (arg_C, var_B4, var_B8)
  loc_12572BF:         var_B4.Text = var_13C
  loc_12572D3:         Proc_288_49_12574D4 = 0
  loc_12572D9:       End If
  loc_12572E6:       Set var_94 = Me.TxtGrid
  loc_12572EC:       Call 0.Method_Proc_288_49_12574D40 (arg_C, var_B4, var_B8)
  loc_12572F4:       var_F8 = var_B4.Text
  loc_125730C:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1257315:       Set var_140 = Me.FGrid
  loc_1257324:       var_F8 = CVar(CLng(var_140.Col)) 'Long
  loc_1257350:       var_170 = CVar(CStr(Format(CVar(var_B8), "0.00"))) 'String
  loc_1257358:       Set var_174 = Me.FGrid
  loc_125735E:       LateIdCallSt
  loc_1257385:     Else
  loc_125738C:       If Not (var_A8 = CLng(3)) Then
  loc_1257396:         If (var_A8 = CLng(4)) Then
  loc_1257399:         End If
  loc_12573A6:         Set var_94 = Me.TxtGrid
  loc_12573AC:         Call 0.Method_Proc_288_49_12574D40 (arg_C, var_B4, var_B8, var_174, var_170)
  loc_12573B4:         1 = var_B4.Text
  loc_12573CB:         If (var_B8 <> vbNullString) Then
  loc_12573E6:           Set var_B4 = Me.ListView.SelectedItem
  loc_12573EC:           var_B8 = var_B4.Text
  loc_12573FE:           Set var_11C = Me.TxtGrid
  loc_1257404:           Call 0.Method_Proc_288_49_12574D40 (arg_C, var_140, var_B8, 1)
  loc_125740C:           var_140.Text = var_F8
  loc_1257422:         End If
  loc_1257435:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125745F:         Set var_94 = Me.TxtGrid
  loc_1257465:         Call 0.Method_Proc_288_49_12574D40 (arg_C, var_B4, var_B8, CVar(CLng(Me.FGrid.Col)))
  loc_125746D:         var_C8 = var_B4.Text
  loc_1257475:         var_13C = CVar(var_B8) 'String
  loc_125747D:         Set var_174 = Me.FGrid
  loc_1257483:         LateIdCallSt
  loc_12574A1:       End If
  loc_12574A1:     End If
  loc_12574A1:   End If
  loc_12574A1: End If
  loc_12574B4: Set var_94 = Me.TxtGrid
  loc_12574BA: Call 0.Method_Proc_288_49_12574D40 (0, var_B4, 0, &HFF)
  loc_12574C2: var_B4.MaxLength = var_174
  loc_12574CE: Proc_288_49_12574D4 = var_13C
End Sub

Public Sub Proc_288_50_FBD208
  'Data Table: 4C5600
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBD08B: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FBD090:   var_92 = 1 'Byte
  loc_FBD094: End If
  loc_FBD09D: Set var_98 = Me.TxtGrid
  loc_FBD0A3: Call 0.Method_Proc_288_50_FBD2080 (0, var_B0)
  loc_FBD0C6: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBD0FA: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBD11E:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBD121:     GoTo loc_FBD1F3
  loc_FBD124:   End If
  loc_FBD128:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBD152:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBD15C:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBD191:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBD1B5:     MsgBox("Duplicate Revenue Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBD1CE:     Set var_98 = Me.TxtGrid
  loc_FBD1D4:     Call 0.Method_Proc_288_50_FBD2080 (0, var_B0, CVar(CLng(var_92)))
  loc_FBD1DC:     var_B0.SetFocus
  loc_FBD1ED:     Proc_288_50_FBD208 = 0
  loc_FBD1F3:     ' Referenced from: FBD121
  loc_FBD1F3:   End If
  loc_FBD1F6: Next var_D4 'Integer
  loc_FBD200: Proc_288_50_FBD208 = &HFF
End Sub
