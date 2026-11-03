VERSION 5.00
Begin VB.Form AccountMerg
  Caption = "Account Merging"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "AccountMerg.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11085
  ClientHeight = 8175
  Begin DataGrid DGChange
    Left = 930
    Top = 3960
    Width = 9480
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 7050
    Top = 1410
    Width = 1845
    Height = 300
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
    Left = 7050
    Top = 1080
    Width = 1845
    Height = 300
    TabIndex = 4
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
    Left = 2625
    Top = 1410
    Width = 4395
    Height = 300
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
    Index = 0
    ForeColor = &HC00000&
    Left = 2625
    Top = 1080
    Width = 4395
    Height = 300
    TabIndex = 0
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
  Begin BtnEnh CmdExit
    Left = 5415
    Top = 2385
    Width = 1500
    Height = 765
    TabIndex = 8
  End
  Begin BtnEnh CmdPrint
    Index = 0
    Left = 3855
    Top = 2385
    Width = 1500
    Height = 765
    TabIndex = 9
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 10
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
    BackColor = &HCFE0E0&
    ForeColor = &HFF0000&
    Left = 960
    Top = 3510
    Width = 9450
    Height = 390
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNewVar
    Caption = "New Account"
    ForeColor = &HC00000&
    Left = 1215
    Top = 1455
    Width = 1245
    Height = 240
    TabIndex = 3
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
  Begin Label LblOldVar
    Caption = "Old Account"
    ForeColor = &HC00000&
    Left = 1215
    Top = 1125
    Width = 1155
    Height = 240
    TabIndex = 2
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

Attribute VB_Name = "AccountMerg"


Private Sub DGChange_UnknownEvent_9 'FC00E0
  'Data Table: 431E8C
  Dim Me As Recordset15
  Dim var_88 As Variant
  Dim var_A4 As Field20
  Dim var_A8 As Variant
  Dim var_BC As String
  Dim var_C4 As TextBox
  loc_FBFF50: Set var_88 = Err()
  loc_FBFF56: Call 0.Method_arg_1C (var_8C)
  loc_FBFF62: OnGoto
  loc_FBFF6A: StAryRecCopy
  loc_FBFF85: CInt(var_8C) = Me.Fields.Item("Name")
  loc_FBFF8D:  = var_A4.Value
  loc_FBFFB7: Set var_C0 = Me.Txt
  loc_FBFFBD: Call 0.Method_DGChange_UnknownEvent_90 (CInt(CStr(Me.DGChange.Tag)), var_C4)
  loc_FBFFC5: var_C4.Text = CStr(var_D4)
  loc_FC000A: var_D4 = Me.Fields.Item("Code").Value
  loc_FC001D: Set var_A8 = Me.DGChange
  loc_FC0034: Set var_C0 = Me.Txt
  loc_FC003A: Call 0.Method_DGChange_UnknownEvent_90 (CInt(CStr(var_A8.Tag)), var_C4)
  loc_FC0042: var_C4.Tag = CStr(var_D4)
  loc_FC0077: var_BC = CStr(Me.DGChange.Tag)
  loc_FC0080: Set var_A4 = Me.Txt
  loc_FC0086: Call 0.Method_DGChange_UnknownEvent_90 (CInt(var_BC))
  loc_FC008E: var_A8.SetFocus
  loc_FC00A2: Exit Sub
  loc_FC00AB: Set var_88 = Err()
  loc_FC00B1: Call 0.Method_arg_2C (var_BC)
  loc_FC00CA: MsgBox(CVar(var_BC), &H10, var_D4, var_F8, var_118)
  loc_FC00DD: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FD0090
  'Data Table: 431E8C
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B4 As String
  loc_FCFEDC: Call Proc_173_11_E5523C()
  loc_FCFEEB: Set var_88 = Me.Txt
  loc_FCFEF1: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FCFEFF: Proc_6_74_E226B0(var_8C)
  loc_FCFF0E: var_92 = Index
  loc_FCFF19: If Not (var_92 = CInt(0)) Then
  loc_FCFF24:   If (var_92 = CInt(1)) Then
  loc_FCFF27:   End If
  loc_FCFF3A:   Me.DGChange.Tag = CVar(CStr(Index))
  loc_FCFF93:   Set var_88 = Me.Txt
  loc_FCFF99:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_FCFFA1:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FCFFB9:   If (var_92 Or (var_C0 = vbNullString)) Then
  loc_FCFFBC:     Exit Sub
  loc_FCFFBD:   End If
  loc_FCFFCA:   Set var_88 = Me.Txt
  loc_FCFFD0:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FCFFD8:   var_C0 = var_8C.Text
  loc_FCFFEA:   var_B4 = "Name"
  loc_FD0025:   If CBool(CVar(var_C0) <> Me.Fields.Item(var_B4).Value) Then
  loc_FD002E:     Me.MoveFirst
  loc_FD0051:     Set var_88 = Me.Txt
  loc_FD0057:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "name ='")
  loc_FD005F:     0 = var_8C.Text
  loc_FD0078:     Me.Find 1 & var_C0 & "'", var_B4, var_8C
  loc_FD008D:   End If
  loc_FD008D: End If
  loc_FD008D: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F52AC8
  'Data Table: 431E8C
  Dim var_8C As TextBox
  Dim var_8E As Integer
  Dim var_88 As DataGrid
  loc_F529BA: If (CLng(Shift) = &H1B) Then
  loc_F529BD:   Call Proc_173_11_E5523C()
  loc_F529CF:   Set var_88 = Me.Txt
  loc_F529D5:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_8C)
  loc_F529DD:   var_8C.Text = vbNullString
  loc_F529E9:   Exit Sub
  loc_F529EA: End If
  loc_F529ED: var_8E = KeyCode
  loc_F529F8: If Not (var_8E = CInt(0)) Then
  loc_F52A03:   If (var_8E = CInt(1)) Then
  loc_F52A06:   End If
  loc_F52A1E:   Set var_9C = Nothing
  loc_F52A29:   Set var_98 = Nothing
  loc_F52A57:   Proc_6_69_134A198(Me.DGChange, Me.Txt, KeyCode, global_52, Shift, 0)
  loc_F52A6B: End If
  loc_F52A87: If (CBool(Me.DGChange.Visible) = 0) Then
  loc_F52A9F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F52AA8:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_F52AAD:   End If
  loc_F52AB7:   If (CLng(Shift) = &H26) Then
  loc_F52AC0:     Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_F52AC5:   End If
  loc_F52AC5: End If
  loc_F52AC5: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EAF8DC
  'Data Table: 431E8C
  Dim arg_10 As Integer
  Dim var_86 As Integer
  loc_EAF856: If (arg_10 = &HD) Then
  loc_EAF85B:   arg_10 = 0
  loc_EAF85E: End If
  loc_EAF861: Proc_6_58_E054C0(arg_10)
  loc_EAF869: var_86 = KeyAscii
  loc_EAF874: If Not (var_86 = CInt(0)) Then
  loc_EAF87F:   If (var_86 = CInt(1)) Then
  loc_EAF882:   End If
  loc_EAF89E:   If (CBool(Me.DGChange.Visible) = &HFF) Then
  loc_EAF8B0:     var_A0 = "Name"
  loc_EAF8CB:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_52, arg_10)
  loc_EAF8DA:   End If
  loc_EAF8DA: End If
  loc_EAF8DA: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C324
  'Data Table: 431E8C
  loc_E4C302: Set var_88 = Me.Txt
  loc_E4C308: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C316: Proc_6_73_E22704(var_8C)
  loc_E4C322: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '103A8A0
  'Data Table: 431E8C
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_90 As Fields15
  Dim var_98 As String
  Dim var_B0 As TextBox
  loc_103A653: var_86 = Cancel
  loc_103A65E: If Not (var_86 = CInt(0)) Then
  loc_103A669:   If (var_86 = CInt(1)) Then
  loc_103A66C:   End If
  loc_103A6A2:   Set var_90 = Me.Txt
  loc_103A6A8:   Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_103A6B0:   ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) = var_94.Text
  loc_103A6C8:   If (var_86 Or (var_98 = vbNullString)) Then
  loc_103A6D8:     Set var_90 = Me.Txt
  loc_103A6DE:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_103A6E6:     var_94.Tag = vbNullString
  loc_103A6FF:     Set var_90 = Me.Txt
  loc_103A705:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_103A70D:     var_94.Text = vbNullString
  loc_103A71C:   Else
  loc_103A757:     Set var_AC = Me.Txt
  loc_103A75D:     Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_103A765:     var_B0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_103A7B6:     Set var_AC = Me.Txt
  loc_103A7BC:     Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_103A7C4:     var_B0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_103A7E2:     If (Cancel = CInt(0)) Then
  loc_103A81E:       Set var_AC = Me.Txt
  loc_103A824:       Call 0.Method_Txt_Validate0 (CInt(2), var_B0)
  loc_103A82C:       var_B0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")))
  loc_103A843:     Else
  loc_103A87C:       Set var_AC = Me.Txt
  loc_103A882:       Call 0.Method_Txt_Validate0 (CInt(3), var_B0)
  loc_103A88A:       var_B0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")))
  loc_103A89E:     End If
  loc_103A89E:   End If
  loc_103A89E: End If
  loc_103A89E: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E19900
  'Data Table: 431E8C
  loc_E198F5: Me.Global.Unload Me
  loc_E198FD: Exit Sub
End Sub

Private Sub Form_Load() 'F0754C
  'Data Table: 431E8C
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  loc_F0746D: Call 0.Method_arg_160 (var_88)
  loc_F0747B: Call 0.Method_arg_164 (var_88)
  loc_F0748A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_F07497: Set var_88 = Me.LblCompany
  loc_F0749D: MDIForm1.LblCompany.BackColor = CLng(MemVar_1F921B0)
  loc_F074B7: Me.DGChange.Left = CVar(CDbl(&H1E))
  loc_F074CC: Set var_88 = Me.DGChange
  loc_F074D2: var_88.Top = CVar(CDbl(1380))
  loc_F074E4: Set global_52 = New 
  loc_F074F6: Me.var_88.CursorLocation = 3
  loc_F0751E: Me.Open "Select SubCode As Code,Name,SubCode,C.CityName From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode order by Name", CVar(MemVar_1F92044), 3
  loc_F0752C: CVarUnk
  loc_F07531: VerifyVarObj
  loc_F07537: Set var_88 = Me.DGChange
  loc_F0753D: LateIdStAd
  loc_F0754B: Exit Sub
End Sub

Private Sub Form_Resize() 'E767F4
  'Data Table: 431E8C
  loc_E7679E: Call 0.Method_arg_50 (var_88)
  loc_E767B0: Me.LblFormCaption.Caption = var_88
  loc_E767C9: Me.LblFormCaption.Left = CDbl(0)
  loc_E767D7: Call 0.Method_arg_100 (var_90)
  loc_E767E9: Me.LblFormCaption.Width = var_90
  loc_E767F1: Exit Sub
  loc_E767F2: CExtInstUnk
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E26724
  'Data Table: 431E8C
  loc_E2670A: If (CLng(KeyCode) = &H79) Then
  loc_E2671A:   Me.Global.Unload Me
  loc_E26722: End If
  loc_E26722: Exit Sub
End Sub

Private Sub CmdPrint_UnknownEvent_9 'FF8084
  'Data Table: 431E8C
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_B0 As String
  loc_FF7EA0: On Error Goto loc_FF807D
  loc_FF7EA6: var_88 = KeyCode
  loc_FF7EAF: If (var_88 = 0) Then
  loc_FF7EC0:   Set var_8C = Me.Txt
  loc_FF7EC6:   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(0), var_90)
  loc_FF7ECE:   var_94 = var_90.Tag
  loc_FF7EE4:   Set var_98 = Me.Txt
  loc_FF7EEA:   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(1), var_9C, var_A0)
  loc_FF7EF2:   var_94 = var_9C.Tag
  loc_FF7F0E:   If (var_88 = var_A0) Then
  loc_FF7F2A:     MsgBox("Both Account Can,t br Same", &H40, var_E0, var_100, var_120)
  loc_FF7F3A:     Exit Sub
  loc_FF7F3B:   End If
  loc_FF7F49:   Set var_8C = Me.Txt
  loc_FF7F4F:   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(0), var_90)
  loc_FF7F65:   var_E0 = Trim(CVar(var_90.Tag))
  loc_FF7F83:   If (var_E0 = vbNullString) Then
  loc_FF7F94:     var_B0 = "Re-Select Old Account"
  loc_FF7F9F:     MsgBox(vbNullString, &H40, var_E0, var_100, var_120)
  loc_FF7FAF:     Exit Sub
  loc_FF7FB0:   End If
  loc_FF7FBE:   Set var_8C = Me.Txt
  loc_FF7FC4:   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(1), var_90)
  loc_FF7FDA:   var_E0 = Trim(CVar(var_90.Tag))
  loc_FF7FF8:   If (var_E0 = vbNullString) Then
  loc_FF8009:     var_B0 = "Re-Select New Account"
  loc_FF8014:     MsgBox(vbNullString, &H40, var_E0, var_100, var_120)
  loc_FF8024:     Exit Sub
  loc_FF8025:   End If
  loc_FF805C:   If (MsgBox("Are You Sure To Merge Given Accounts", &H144, "Confirm Merging", var_100, var_120) = 6) Then
  loc_FF8068:     Call Proc_173_12_1859E64(MemVar_1F92108)
  loc_FF8070:   End If
  loc_FF8073: Else
  loc_FF8079:   If (var_88 = 1) Then
  loc_FF807C:   End If
  loc_FF807C: End If
  loc_FF807C: Exit Sub
  loc_FF807D: ' Referenced from: FF7EA0
  loc_FF807D: Proc_6_60_E62BC4()
  loc_FF8082: Exit Sub
End Sub

Public Sub Proc_173_11_E5523C
  'Data Table: 431E8C
  loc_E55220: If (CBool(Me.DGChange.Visible) = &HFF) Then
  loc_E55232:   Me.DGChange.Visible = False
  loc_E5523A: End If
  loc_E5523A: Exit Sub
End Sub

Public Sub Proc_173_12_1859E64(arg_C) '1859E64
  'Data Table: 431E8C
  Dim var_88 As Label
  Dim var_90 As TextBox
  Dim var_9C As String
  Dim var_AC As String
  Dim var_A4 As TextBox
  Dim unk_431EAB As Connection15
  loc_18578FD: Me.Label1.Caption = "Updating Ledger Table Please Wait........."
  loc_185790F: Me.Label1.Refresh
  loc_1857943: Set var_88 = Me.Txt
  loc_1857949: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.Ledger Set SubCode='")
  loc_1857951: var_D4 = var_90.Tag
  loc_185795A: var_9C = -1 & var_94
  loc_1857961: var_AC = var_9C & "' Where SubCode='"
  loc_1857972: Set var_A0 = Me.Txt
  loc_1857978: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1857980: var_AC = var_A4.Tag
  loc_1857999: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18579ED: Set var_88 = Me.Txt
  loc_18579F3: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.Ledger Set ContraSub='")
  loc_18579FB: var_D4 = var_90.Tag
  loc_1857A04: var_9C = -1 & var_94
  loc_1857A0B: var_AC = var_9C & "' Where ContraSub='"
  loc_1857A1C: Set var_A0 = Me.Txt
  loc_1857A22: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1857A2A: var_AC = var_A4.Tag
  loc_1857A43: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857A78: Me.Label1.Caption = "Updating Ledger Adjustment Table Please Wait........."
  loc_1857A8A: Me.Label1.Refresh
  loc_1857ABE: Set var_88 = Me.Txt
  loc_1857AC4: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.LedgerAdj Set SubCode='")
  loc_1857ACC: var_D4 = var_90.Tag
  loc_1857AD5: var_9C = -1 & var_94
  loc_1857ADC: var_AC = var_9C & "' Where SubCode='"
  loc_1857AED: Set var_A0 = Me.Txt
  loc_1857AF3: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1857AFB: var_AC = var_A4.Tag
  loc_1857B14: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857B68: Set var_88 = Me.Txt
  loc_1857B6E: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.LedgerRef Set SubCode='")
  loc_1857B76: var_D4 = var_90.Tag
  loc_1857B7F: var_9C = -1 & var_94
  loc_1857B86: var_AC = var_9C & "' Where SubCode='"
  loc_1857B97: Set var_A0 = Me.Txt
  loc_1857B9D: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1857BA5: var_AC = var_A4.Tag
  loc_1857BBE: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857BF3: Me.Label1.Caption = "Updating Ledger TDS Table Please Wait........."
  loc_1857C05: Me.Label1.Refresh
  loc_1857C39: Set var_88 = Me.Txt
  loc_1857C3F: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.LedgerTDS Set TDSCode='")
  loc_1857C47: var_D4 = var_90.Tag
  loc_1857C50: var_9C = -1 & var_94
  loc_1857C57: var_AC = var_9C & "' Where TDSCode='"
  loc_1857C68: Set var_A0 = Me.Txt
  loc_1857C6E: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1857C76: var_AC = var_A4.Tag
  loc_1857C8F: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857CE3: Set var_88 = Me.Txt
  loc_1857CE9: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.LedgerTDS Set TDSDrCode='")
  loc_1857CF1: var_D4 = var_90.Tag
  loc_1857CFA: var_9C = -1 & var_94
  loc_1857D01: var_AC = var_9C & "' Where TDSDrCode='"
  loc_1857D12: Set var_A0 = Me.Txt
  loc_1857D18: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1857D20: var_AC = var_A4.Tag
  loc_1857D39: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857D8D: Set var_88 = Me.Txt
  loc_1857D93: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.BOOKING set [COMPANY] ='")
  loc_1857D9B: var_D4 = var_90.Tag
  loc_1857DA4: var_9C = -1 & var_94
  loc_1857DAB: var_AC = var_9C & "' where [COMPANY] ='"
  loc_1857DBC: Set var_A0 = Me.Txt
  loc_1857DC2: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1857DCA: var_AC = var_A4.Tag
  loc_1857DE3: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857E37: Set var_88 = Me.Txt
  loc_1857E3D: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.BOOKING set TravelAgency ='")
  loc_1857E45: var_D4 = var_90.Tag
  loc_1857E4E: var_9C = -1 & var_94
  loc_1857E55: var_AC = var_9C & "' where TravelAgency ='"
  loc_1857E66: Set var_A0 = Me.Txt
  loc_1857E6C: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1857E74: var_AC = var_A4.Tag
  loc_1857E8D: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857EE1: Set var_88 = Me.Txt
  loc_1857EE7: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.BUDGET set ACCODE='")
  loc_1857EEF: var_D4 = var_90.Tag
  loc_1857EF8: var_9C = -1 & var_94
  loc_1857EFF: var_AC = var_9C & "' where ACCODE ='"
  loc_1857F10: Set var_A0 = Me.Txt
  loc_1857F16: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1857F1E: var_AC = var_A4.Tag
  loc_1857F37: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1857F8B: Set var_88 = Me.Txt
  loc_1857F91: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.CREDITCARDHISTORY set COMMAC ='")
  loc_1857F99: var_D4 = var_90.Tag
  loc_1857FA2: var_9C = -1 & var_94
  loc_1857FA9: var_AC = var_9C & "' where COMMAC ='"
  loc_1857FBA: Set var_A0 = Me.Txt
  loc_1857FC0: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1857FC8: var_AC = var_A4.Tag
  loc_1857FE1: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858035: Set var_88 = Me.Txt
  loc_185803B: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, " update " & arg_C & ".dbo.EMPLOYEE set AC_code ='")
  loc_1858043: var_D4 = var_90.Tag
  loc_185804C: var_9C = -1 & var_94
  loc_1858053: var_AC = var_9C & "' where AC_code ='"
  loc_1858064: Set var_A0 = Me.Txt
  loc_185806A: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1858072: var_AC = var_A4.Tag
  loc_185808B: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18580DF: Set var_88 = Me.Txt
  loc_18580E5: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.EMPLOYEE set LOANAC ='")
  loc_18580ED: var_D4 = var_90.Tag
  loc_18580F6: var_9C = -1 & var_94
  loc_18580FD: var_AC = var_9C & "' where LOANAC ='"
  loc_185810E: Set var_A0 = Me.Txt
  loc_1858114: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_185811C: var_AC = var_A4.Tag
  loc_1858135: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858189: Set var_88 = Me.Txt
  loc_185818F: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set CASH_AC ='")
  loc_1858197: var_D4 = var_90.Tag
  loc_18581A0: var_9C = -1 & var_94
  loc_18581A7: var_AC = var_9C & "' where CASH_AC ='"
  loc_18581B8: Set var_A0 = Me.Txt
  loc_18581BE: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_18581C6: var_AC = var_A4.Tag
  loc_18581DF: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858233: Set var_88 = Me.Txt
  loc_1858239: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.ENVIRO set  DISCOUNTAC='")
  loc_1858241: var_D4 = var_90.Tag
  loc_185824A: var_9C = -1 & var_94
  loc_1858251: var_AC = var_9C & "' where DISCOUNTAC ='"
  loc_1858262: Set var_A0 = Me.Txt
  loc_1858268: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1858270: var_AC = var_A4.Tag
  loc_1858289: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18582DD: Set var_88 = Me.Txt
  loc_18582E3: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.ENVIRO set  ROUNDOFFAC='")
  loc_18582EB: var_D4 = var_90.Tag
  loc_18582F4: var_9C = -1 & var_94
  loc_18582FB: var_AC = var_9C & "' where  ROUNDOFFAC ='"
  loc_185830C: Set var_A0 = Me.Txt
  loc_1858312: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_185831A: var_AC = var_A4.Tag
  loc_1858333: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858387: Set var_88 = Me.Txt
  loc_185838D: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.ENVIRO set  COMMAC='")
  loc_1858395: var_D4 = var_90.Tag
  loc_185839E: var_9C = -1 & var_94
  loc_18583A5: var_AC = var_9C & "' where COMMAC ='"
  loc_18583B6: Set var_A0 = Me.Txt
  loc_18583BC: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_18583C4: var_AC = var_A4.Tag
  loc_18583DD: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858431: Set var_88 = Me.Txt
  loc_1858437: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.ENVIRO set  SALARY_AC='")
  loc_185843F: var_D4 = var_90.Tag
  loc_1858448: var_9C = -1 & var_94
  loc_185844F: var_AC = var_9C & "' where SALARY_AC ='"
  loc_1858460: Set var_A0 = Me.Txt
  loc_1858466: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_185846E: var_AC = var_A4.Tag
  loc_1858487: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18584DB: Set var_88 = Me.Txt
  loc_18584E1: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.ENVIRO set  LOAN_AC='")
  loc_18584E9: var_D4 = var_90.Tag
  loc_18584F2: var_9C = -1 & var_94
  loc_18584F9: var_AC = var_9C & "' where LOAN_AC ='"
  loc_185850A: Set var_A0 = Me.Txt
  loc_1858510: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1858518: var_AC = var_A4.Tag
  loc_1858531: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858585: Set var_88 = Me.Txt
  loc_185858B: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.ENVIRO set  ADVANCEAC='")
  loc_1858593: var_D4 = var_90.Tag
  loc_185859C: var_9C = -1 & var_94
  loc_18585A3: var_AC = var_9C & "' where ADVANCEAC ='"
  loc_18585B4: Set var_A0 = Me.Txt
  loc_18585BA: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_18585C2: var_AC = var_A4.Tag
  loc_18585DB: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_185862F: Set var_88 = Me.Txt
  loc_1858635: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.ENVIRO set  ROOMCHRGDUEAC='")
  loc_185863D: var_D4 = var_90.Tag
  loc_1858646: var_9C = -1 & var_94
  loc_185864D: var_AC = var_9C & "' where ROOMCHRGDUEAC ='"
  loc_185865E: Set var_A0 = Me.Txt
  loc_1858664: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_185866C: var_AC = var_A4.Tag
  loc_1858685: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18586D9: Set var_88 = Me.Txt
  loc_18586DF: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.ENVIRO set  ADVANCEAC='")
  loc_18586E7: var_D4 = var_90.Tag
  loc_18586F0: var_9C = -1 & var_94
  loc_18586F7: var_AC = var_9C & "' where ROOMTAXDUEAC ='"
  loc_1858708: Set var_A0 = Me.Txt
  loc_185870E: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1858716: var_AC = var_A4.Tag
  loc_185872F: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858783: Set var_88 = Me.Txt
  loc_1858789: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  OUTLETDISCAC='")
  loc_1858791: var_D4 = var_90.Tag
  loc_185879A: var_9C = -1 & var_94
  loc_18587A1: var_AC = var_9C & "' where OUTLETDISCAC ='"
  loc_18587B2: Set var_A0 = Me.Txt
  loc_18587B8: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_18587C0: var_AC = var_A4.Tag
  loc_18587D9: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_185882D: Set var_88 = Me.Txt
  loc_1858833: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  OUTLETROUNDAC='")
  loc_185883B: var_D4 = var_90.Tag
  loc_1858844: var_9C = -1 & var_94
  loc_185884B: var_AC = var_9C & "' where OUTLETROUNDAC ='"
  loc_185885C: Set var_A0 = Me.Txt
  loc_1858862: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_185886A: var_AC = var_A4.Tag
  loc_1858883: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18588D7: Set var_88 = Me.Txt
  loc_18588DD: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  CommissionAc='")
  loc_18588E5: var_D4 = var_90.Tag
  loc_18588EE: var_9C = -1 & var_94
  loc_18588F5: var_AC = var_9C & "' where CommissionAc ='"
  loc_1858906: Set var_A0 = Me.Txt
  loc_185890C: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1858914: var_AC = var_A4.Tag
  loc_185892D: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858981: Set var_88 = Me.Txt
  loc_1858987: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  CANCELLATIONAC='")
  loc_185898F: var_D4 = var_90.Tag
  loc_1858998: var_9C = -1 & var_94
  loc_185899F: var_AC = var_9C & "' where CANCELLATIONAC ='"
  loc_18589B0: Set var_A0 = Me.Txt
  loc_18589B6: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_18589BE: var_AC = var_A4.Tag
  loc_18589D7: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858A2B: Set var_88 = Me.Txt
  loc_1858A31: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  HALLROUNDOFF='")
  loc_1858A39: var_D4 = var_90.Tag
  loc_1858A42: var_9C = -1 & var_94
  loc_1858A49: var_AC = var_9C & "' where HALLROUNDOFF ='"
  loc_1858A5A: Set var_A0 = Me.Txt
  loc_1858A60: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1858A68: var_AC = var_A4.Tag
  loc_1858A81: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858AD5: Set var_88 = Me.Txt
  loc_1858ADB: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  HALLDISCAC='")
  loc_1858AE3: var_D4 = var_90.Tag
  loc_1858AEC: var_9C = -1 & var_94
  loc_1858AF3: var_AC = var_9C & "' where HALLDISCAC ='"
  loc_1858B04: Set var_A0 = Me.Txt
  loc_1858B0A: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1858B12: var_AC = var_A4.Tag
  loc_1858B2B: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858B7F: Set var_88 = Me.Txt
  loc_1858B85: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  CashPurchAc='")
  loc_1858B8D: var_D4 = var_90.Tag
  loc_1858B96: var_9C = -1 & var_94
  loc_1858B9D: var_AC = var_9C & "' where CashPurchAc ='"
  loc_1858BAE: Set var_A0 = Me.Txt
  loc_1858BB4: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1858BBC: var_AC = var_A4.Tag
  loc_1858BD5: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858C29: Set var_88 = Me.Txt
  loc_1858C2F: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  OUTDOORSALEAC='")
  loc_1858C37: var_D4 = var_90.Tag
  loc_1858C40: var_9C = -1 & var_94
  loc_1858C47: var_AC = var_9C & "' where OUTDOORSALEAC ='"
  loc_1858C58: Set var_A0 = Me.Txt
  loc_1858C5E: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1858C66: var_AC = var_A4.Tag
  loc_1858C7F: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858CD3: Set var_88 = Me.Txt
  loc_1858CD9: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  INDOORSALEAC='")
  loc_1858CE1: var_D4 = var_90.Tag
  loc_1858CEA: var_9C = -1 & var_94
  loc_1858CF1: var_AC = var_9C & "' where INDOORSALEAC ='"
  loc_1858D02: Set var_A0 = Me.Txt
  loc_1858D08: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1858D10: var_AC = var_A4.Tag
  loc_1858D29: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858D7D: Set var_88 = Me.Txt
  loc_1858D83: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  OUTDOORPARTYAC='")
  loc_1858D8B: var_D4 = var_90.Tag
  loc_1858D94: var_9C = -1 & var_94
  loc_1858D9B: var_AC = var_9C & "' where OUTDOORPARTYAC ='"
  loc_1858DAC: Set var_A0 = Me.Txt
  loc_1858DB2: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1858DBA: var_AC = var_A4.Tag
  loc_1858DD3: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858E27: Set var_88 = Me.Txt
  loc_1858E2D: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  INDOORPARTYAC='")
  loc_1858E35: var_D4 = var_90.Tag
  loc_1858E3E: var_9C = -1 & var_94
  loc_1858E45: var_AC = var_9C & "' where INDOORPARTYAC ='"
  loc_1858E56: Set var_A0 = Me.Txt
  loc_1858E5C: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1858E64: var_AC = var_A4.Tag
  loc_1858E7D: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858ED1: Set var_88 = Me.Txt
  loc_1858ED7: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  DUMMYTRAVELAC='")
  loc_1858EDF: var_D4 = var_90.Tag
  loc_1858EE8: var_9C = -1 & var_94
  loc_1858EEF: var_AC = var_9C & "' where DUMMYTRAVELAC ='"
  loc_1858F00: Set var_A0 = Me.Txt
  loc_1858F06: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1858F0E: var_AC = var_A4.Tag
  loc_1858F27: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1858F7B: Set var_88 = Me.Txt
  loc_1858F81: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ENVIRO set  BOOKINGPARTYAC='")
  loc_1858F89: var_D4 = var_90.Tag
  loc_1858F92: var_9C = -1 & var_94
  loc_1858F99: var_AC = var_9C & "' where BOOKINGPARTYAC ='"
  loc_1858FAA: Set var_A0 = Me.Txt
  loc_1858FB0: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1858FB8: var_AC = var_A4.Tag
  loc_1858FD1: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1859025: Set var_88 = Me.Txt
  loc_185902B: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.EXPSHEET set  AGAC='")
  loc_1859033: var_D4 = var_90.Tag
  loc_185903C: var_9C = -1 & var_94
  loc_1859043: var_AC = var_9C & "' where AGAC ='"
  loc_1859054: Set var_A0 = Me.Txt
  loc_185905A: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1859062: var_AC = var_A4.Tag
  loc_185907B: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18590CF: Set var_88 = Me.Txt
  loc_18590D5: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.GIN set  PARTYCODE='")
  loc_18590DD: var_D4 = var_90.Tag
  loc_18590E6: var_9C = -1 & var_94
  loc_18590ED: var_AC = var_9C & "' where PARTYCODE ='"
  loc_18590FE: Set var_A0 = Me.Txt
  loc_1859104: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_185910C: var_AC = var_A4.Tag
  loc_1859125: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_185915A: Me.Label1.Caption = "Updating PayCharge Table Please Wait........."
  loc_185916C: Me.Label1.Refresh
  loc_18591A0: Set var_88 = Me.Txt
  loc_18591A6: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.PayCharge Set CompCode='")
  loc_18591AE: var_D4 = var_90.Tag
  loc_18591B7: var_9C = -1 & var_94
  loc_18591BE: var_AC = var_9C & "' Where CompCode='"
  loc_18591CF: Set var_A0 = Me.Txt
  loc_18591D5: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_18591DD: var_AC = var_A4.Tag
  loc_18591F6: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_185924A: Set var_88 = Me.Txt
  loc_1859250: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.PayChargeH Set CompCode='")
  loc_1859258: var_D4 = var_90.Tag
  loc_1859261: var_9C = -1 & var_94
  loc_1859268: var_AC = var_9C & "' Where CompCode='"
  loc_1859279: Set var_A0 = Me.Txt
  loc_185927F: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1859287: var_AC = var_A4.Tag
  loc_18592A0: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18592D5: Me.Label1.Caption = "Updating GuestProf Table Please Wait........."
  loc_18592E7: Me.Label1.Refresh
  loc_185931B: Set var_88 = Me.Txt
  loc_1859321: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.GUestFolio Set [Company]='")
  loc_1859329: var_D4 = var_90.Tag
  loc_1859332: var_9C = -1 & var_94
  loc_1859339: var_AC = var_9C & "' Where [Company]='"
  loc_185934A: Set var_A0 = Me.Txt
  loc_1859350: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1859358: var_AC = var_A4.Tag
  loc_1859371: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18593C5: Set var_88 = Me.Txt
  loc_18593CB: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "Update " & arg_C & ".dbo.GUestFolio Set TravelAgent='")
  loc_18593D3: var_D4 = var_90.Tag
  loc_18593DC: var_9C = -1 & var_94
  loc_18593E3: var_AC = var_9C & "' Where TravelAgent='"
  loc_18593F4: Set var_A0 = Me.Txt
  loc_18593FA: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1859402: var_AC = var_A4.Tag
  loc_185941B: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_185946F: Set var_88 = Me.Txt
  loc_1859475: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.EXPSHEET set  AGAC='")
  loc_185947D: var_D4 = var_90.Tag
  loc_1859486: var_9C = -1 & var_94
  loc_185948D: var_AC = var_9C & "' where AGAC ='"
  loc_185949E: Set var_A0 = Me.Txt
  loc_18594A4: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_18594AC: var_AC = var_A4.Tag
  loc_18594C5: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1859519: Set var_88 = Me.Txt
  loc_185951F: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.GIN set  PARTYCODE='")
  loc_1859527: var_D4 = var_90.Tag
  loc_1859530: var_9C = -1 & var_94
  loc_1859537: var_AC = var_9C & "' where PARTYCODE ='"
  loc_1859548: Set var_A0 = Me.Txt
  loc_185954E: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1859556: var_AC = var_A4.Tag
  loc_185956F: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18595C3: Set var_88 = Me.Txt
  loc_18595C9: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.ITEMCATMAST set  ACNAME='")
  loc_18595D1: var_D4 = var_90.Tag
  loc_18595DA: var_9C = -1 & var_94
  loc_18595E1: var_AC = var_9C & "' where ACNAME ='"
  loc_18595F2: Set var_A0 = Me.Txt
  loc_18595F8: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1859600: var_AC = var_A4.Tag
  loc_1859619: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_185966D: Set var_88 = Me.Txt
  loc_1859673: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.PAYCHARGE set COMPCODE ='")
  loc_185967B: var_D4 = var_90.Tag
  loc_1859684: var_9C = -1 & var_94
  loc_185968B: var_AC = var_9C & "' where COMPCODE ='"
  loc_185969C: Set var_A0 = Me.Txt
  loc_18596A2: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_18596AA: var_AC = var_A4.Tag
  loc_18596C3: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1859717: Set var_88 = Me.Txt
  loc_185971D: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.PAYCHARGEH set COMPCODE ='")
  loc_1859725: var_D4 = var_90.Tag
  loc_185972E: var_9C = -1 & var_94
  loc_1859735: var_AC = var_9C & "' where COMPCODE ='"
  loc_1859746: Set var_A0 = Me.Txt
  loc_185974C: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1859754: var_AC = var_A4.Tag
  loc_185976D: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18597C1: Set var_88 = Me.Txt
  loc_18597C7: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.PORDER set PARTYCODE ='")
  loc_18597CF: var_D4 = var_90.Tag
  loc_18597D8: var_9C = -1 & var_94
  loc_18597DF: var_AC = var_9C & "' where PARTYCODE ='"
  loc_18597F0: Set var_A0 = Me.Txt
  loc_18597F6: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_18597FE: var_AC = var_A4.Tag
  loc_1859817: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_185986B: Set var_88 = Me.Txt
  loc_1859871: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.PORDER1 set PARTYCODE ='")
  loc_1859879: var_D4 = var_90.Tag
  loc_1859882: var_9C = -1 & var_94
  loc_1859889: var_AC = var_9C & "' where PARTYCODE ='"
  loc_185989A: Set var_A0 = Me.Txt
  loc_18598A0: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_18598A8: var_AC = var_A4.Tag
  loc_18598C1: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1859915: Set var_88 = Me.Txt
  loc_185991B: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.PURCH1 set PARTY ='")
  loc_1859923: var_D4 = var_90.Tag
  loc_185992C: var_9C = -1 & var_94
  loc_1859933: var_AC = var_9C & "' where PARTY ='"
  loc_1859944: Set var_A0 = Me.Txt
  loc_185994A: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1859952: var_AC = var_A4.Tag
  loc_185996B: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_18599BF: Set var_88 = Me.Txt
  loc_18599C5: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.PURCH2 set PARTYCODE ='")
  loc_18599CD: var_D4 = var_90.Tag
  loc_18599D6: var_9C = -1 & var_94
  loc_18599DD: var_AC = var_9C & "' where PARTYCODE ='"
  loc_18599EE: Set var_A0 = Me.Txt
  loc_18599F4: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_18599FC: var_AC = var_A4.Tag
  loc_1859A15: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1859A69: Set var_88 = Me.Txt
  loc_1859A6F: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.REVMAST set ACCODE ='")
  loc_1859A77: var_D4 = var_90.Tag
  loc_1859A80: var_9C = -1 & var_94
  loc_1859A87: var_AC = var_9C & "' where ACCODE ='"
  loc_1859A98: Set var_A0 = Me.Txt
  loc_1859A9E: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1859AA6: var_AC = var_A4.Tag
  loc_1859ABF: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1859B13: Set var_88 = Me.Txt
  loc_1859B19: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.REVMAST set BANKCOMMAC ='")
  loc_1859B21: var_D4 = var_90.Tag
  loc_1859B2A: var_9C = -1 & var_94
  loc_1859B31: var_AC = var_9C & "' where BANKCOMMAC ='"
  loc_1859B42: Set var_A0 = Me.Txt
  loc_1859B48: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1859B50: var_AC = var_A4.Tag
  loc_1859B69: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1859BBD: Set var_88 = Me.Txt
  loc_1859BC3: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.SALE1 set PARTY ='")
  loc_1859BCB: var_D4 = var_90.Tag
  loc_1859BD4: var_9C = -1 & var_94
  loc_1859BDB: var_AC = var_9C & "' where PARTY ='"
  loc_1859BEC: Set var_A0 = Me.Txt
  loc_1859BF2: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1859BFA: var_AC = var_A4.Tag
  loc_1859C13: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1859C67: Set var_88 = Me.Txt
  loc_1859C6D: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.STOCK set PARTYCODE ='")
  loc_1859C75: var_D4 = var_90.Tag
  loc_1859C7E: var_9C = -1 & var_94
  loc_1859C85: var_AC = var_9C & "' where PARTYCODE ='"
  loc_1859C96: Set var_A0 = Me.Txt
  loc_1859C9C: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1859CA4: var_AC = var_A4.Tag
  loc_1859CBD: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1859D11: Set var_88 = Me.Txt
  loc_1859D17: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "update " & arg_C & ".dbo.SUNDRYTYPEFIX set POSTAC ='")
  loc_1859D1F: var_D4 = var_90.Tag
  loc_1859D28: var_9C = -1 & var_94
  loc_1859D2F: var_AC = var_9C & "' where POSTAC ='"
  loc_1859D40: Set var_A0 = Me.Txt
  loc_1859D46: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1859D4E: var_AC = var_A4.Tag
  loc_1859D67: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1859DBB: Set var_88 = Me.Txt
  loc_1859DC1: Call 0.Method_Proc_173_12_1859E640 (CInt(1), var_90, var_94, "UPDATE " & arg_C & ".dbo.TELCALLTYPE SET ACCODE='")
  loc_1859DC9: var_D4 = var_90.Tag
  loc_1859DD2: var_9C = -1 & var_94
  loc_1859DD9: var_AC = var_9C & "' WHERE ACCODE ='"
  loc_1859DEA: Set var_A0 = Me.Txt
  loc_1859DF0: Call 0.Method_Proc_173_12_1859E640 (CInt(0), var_A4, var_A8)
  loc_1859DF8: var_AC = var_A4.Tag
  loc_1859E11: unk_431EAB.Execute var_D8 & var_A8 & "'", , 
  loc_1859E46: Me.Label1.Caption = "Completed."
  loc_1859E58: Me.Label1.Refresh
  loc_1859E60: Exit Sub
End Sub
