VERSION 5.00
Begin VB.Form MemCatMast
  Caption = "Member Category Master"
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
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    Left = 3960
    Top = 3090
    Width = 795
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3960
    Top = 3720
    Width = 795
    Height = 285
    Text = "Active"
    TabIndex = 5
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
    Width = 9300
    Height = 450
    TabIndex = 24
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    Left = 11250
    Top = 8655
    Width = 795
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 8
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
    Index = 5
    BackColor = &HFFFFFF&
    Left = 3960
    Top = 3405
    Width = 795
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 8
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
    Index = 4
    BackColor = &HFFFFFF&
    Left = 10605
    Top = 7815
    Width = 795
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 8
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
  Begin DataGrid DGHelp
    Left = 12135
    Top = 3405
    Width = 5175
    Height = 1590
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin Frame FrmList
    Left = 12570
    Top = 615
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = -30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 17
    End
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 3960
    Top = 2460
    Width = 795
    Height = 285
    TabIndex = 1
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
    Index = 3
    BackColor = &HFFFFFF&
    Left = 11100
    Top = 8280
    Width = 795
    Height = 285
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 50
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
    Left = 3960
    Top = 2775
    Width = 795
    Height = 285
    Enabled = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 3
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
    Left = 3960
    Top = 2145
    Width = 4300
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 40
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
  Begin Label LblName
    Caption = "Surcharge"
    Index = 7
    ForeColor = &HFF0000&
    Left = 2235
    Top = 3090
    Width = 990
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 1
    ForeColor = &H80&
    Left = 4830
    Top = 3090
    Width = 945
    Height = 210
    TabIndex = 29
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 465
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
  Begin Label LbStatus
    Caption = "Status"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2235
    Top = 3705
    Width = 585
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 225
    Top = 8580
    Width = 2430
    Height = 285
    TabIndex = 26
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
    Left = 240
    Top = 8250
    Width = 2520
    Height = 255
    TabIndex = 25
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
  Begin Label LblCatType
    Caption = "(Y)es/(N)o"
    Index = 2
    ForeColor = &H80&
    Left = 12120
    Top = 8655
    Width = 885
    Height = 240
    Visible = 0   'False
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
    Caption = "Mess A/c"
    Index = 6
    ForeColor = &HFF0000&
    Left = 9525
    Top = 8655
    Width = 825
    Height = 240
    Visible = 0   'False
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
    Caption = "Facility Billing"
    Index = 3
    ForeColor = &HFF0000&
    Left = 2235
    Top = 3405
    Width = 1365
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
  Begin Label LblCatType
    Caption = "(Y)es/(N)o"
    Index = 1
    ForeColor = &H80&
    Left = 4830
    Top = 3405
    Width = 945
    Height = 210
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = " in Years"
    Index = 0
    ForeColor = &H80&
    Left = 11970
    Top = 8190
    Width = 825
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
  Begin Label LblCatType
    Caption = "(Y)es/(N)o"
    Index = 0
    ForeColor = &H80&
    Left = 11475
    Top = 7740
    Width = 885
    Height = 240
    Visible = 0   'False
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
    Caption = "Corporate"
    Index = 5
    ForeColor = &HFF0000&
    Left = 8880
    Top = 7815
    Width = 945
    Height = 240
    Visible = 0   'False
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
    Caption = "Member Category"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2235
    Top = 2145
    Width = 1695
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 16
    ForeColor = &H80&
    Left = 4830
    Top = 2775
    Width = 945
    Height = 210
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label LblName
    Caption = "Child Age Limit"
    Index = 4
    ForeColor = &HFF0000&
    Left = 9375
    Top = 8280
    Width = 1470
    Height = 240
    Visible = 0   'False
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
  Begin Label LblName
    Caption = "Subscription"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2235
    Top = 2775
    Width = 1185
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
  Begin Label LblName
    Caption = "Short Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2235
    Top = 2460
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

Attribute VB_Name = "MemCatMast"

Private global_80 As Variant

Private Sub DGHelp_UnknownEvent_9 'F427E4
  'Data Table: 4669E8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F426DB: Me.DGHelp.Visible = False
  loc_F426FA: If (Me.RecordCount > 0) Then
  loc_F42739:   Set var_B4 = Me.Txt
  loc_F4273F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F42747:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4277A:   var_B0 = Me.Fields.Item("Code")
  loc_F42799:   Set var_B4 = Me.Txt
  loc_F4279F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F427A7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F427BD: End If
  loc_F427C8: Set var_A8 = Me.Txt
  loc_F427CE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F427D6: var_B0.SetFocus
  loc_F427E2: Exit Sub
End Sub

Private Sub Form_Load() '10B8BEC
  'Data Table: 4669E8
  Dim var_88 As Label
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim unk_4669F8 As Connection15
  loc_10B8920: On Error Goto loc_10B8BA8
  loc_10B892A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10B893E: Me.LblUser.Left = CDbl(13500)
  loc_10B8955: Me.LblUser.Top = CDbl(7800)
  loc_10B896C: Me.LblLDt.Top = CDbl(8160)
  loc_10B8983: Me.LblLDt.Left = CDbl(13500)
  loc_10B8999: Set var_88 = Me.Txt
  loc_10B899F: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_10B89BE: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_10B89DA: Set var_B4 = Me.Txt
  loc_10B89E0: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_10B89FB: Set var_88 = Me.Txt
  loc_10B8A01: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_10B8A19: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_10B8A28: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_10B8A44: Set var_88 = Me.TopCtrl1
  loc_10B8A4A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_10B8A58: Call 0.Method_arg_50 (var_C4)
  loc_10B8A60: var_D4 = CVar(var_C4) 'String
  loc_10B8A6E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D4)
  loc_10B8A94: var_D8 = "SELECT MemCatMast.Code, MemCatMast.Name FROM MemCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY MemCatMast.Name"
  loc_10B8A9D: unk_4669F8.Execute var_D8, var_D4, -1
  loc_10B8ACC: CVarUnk
  loc_10B8AD1: VerifyVarObj
  loc_10B8ADD: LateIdStAd
  loc_10B8B0F: unk_4669F8.Execute "SELECT * FROM MEmCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D4, -1
  loc_10B8B44: Set var_88 = Me.TopCtrl1
  loc_10B8B4A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(CStr(5800)))
  loc_10B8B61: Set var_88 = Me
  loc_10B8B6A: var_C4 = "INI"
  loc_10B8B78: Call Proc_264_26_E7BDFC(Proc_5_1_100CB50(var_C4, var_88, Me.DGHelp, var_88), var_88)
  loc_10B8B8C: Call 0.Method_arg_160 (var_88, Me.TopCtrl1)
  loc_10B8B9A: Call 0.Method_arg_164 (var_88)
  loc_10B8BA2: Call Proc_264_28_12DADB8(var_88)
  loc_10B8BA7: Exit Sub
  loc_10B8BA8: ' Referenced from: 10B8920
  loc_10B8BB0: Set var_88 = Err()
  loc_10B8BB6: Call 0.Method_arg_2C (var_C4)
  loc_10B8BD7: MsgBox(CVar(var_C4), &H40, "Information", var_FC, var_11C)
  loc_10B8BEA: Exit Sub
  loc_10B8BEB: Exit Sub
End Sub

Private Sub Form_Resize() 'EBBAB0
  'Data Table: 4669E8
  Dim var_88 As Label
  loc_EBBA25: Me.LblFormCaption.Caption = "Member Category"
  loc_EBBA3B: Me.LblFormCaption.Left = CDbl(0)
  loc_EBBA47: Set var_9C = Me.TopCtrl1
  loc_EBBA4D: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_EBBA5A: Set var_88 = Me.TopCtrl1
  loc_EBBA60: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_EBBA7A: Me.LblFormCaption.Top = (CDbl() + CDbl(var_AC))
  loc_EBBA95: Call 0.Method_arg_100 (var_B4)
  loc_EBBAA7: Me.LblFormCaption.Width = var_B4
  loc_EBBAAF: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E27DF8
  'Data Table: 4669E8
  loc_E27DDB: Set global_52 = Nothing
  loc_E27DED: Set global_56 = Nothing
  loc_E27DF4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8B984
  'Data Table: 4669E8
  loc_E8B920: On Error Goto loc_E8B940
  loc_E8B937: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E8B93F: Exit Sub
  loc_E8B940: ' Referenced from: E8B920
  loc_E8B948: Set var_88 = Err()
  loc_E8B94E: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E8B96F: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8B982: Exit Sub
  loc_E8B983: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F59DEC
  'Data Table: 4669E8
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F59D0E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F59D15:   Set var_A8 = Me.ListView
  loc_F59D5F:   Set var_C0 = Me.Txt
  loc_F59D65:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F59D6D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F59D8D: End If
  loc_F59D99: Me.FrmList.Visible = False
  loc_F59DC9: Set var_9C = Me.Txt
  loc_F59DCF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F59DD7: var_A8.SetFocus
  loc_F59DEB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ED8EE4
  'Data Table: 4669E8
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_ED8E30: On Error Goto loc_ED8EDE
  loc_ED8E40: Me.LblUser.Caption = vbNullString
  loc_ED8E55: Me.LblLDt.Caption = vbNullString
  loc_ED8E80: Call Proc_264_26_E7BDFC(Proc_5_1_100CB50("ADD", Me))
  loc_ED8E8B: Call Proc_264_27_EACAAC(global_52)
  loc_ED8E9E: Set var_88 = Me.Txt
  loc_ED8EA4: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_94)
  loc_ED8EAC: var_94.Text = "Active"
  loc_ED8EC3: Set var_88 = Me.Txt
  loc_ED8EC9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ED8ED1: var_94.SetFocus
  loc_ED8EDD: Exit Sub
  loc_ED8EDE: ' Referenced from: ED8E30
  loc_ED8EDE: Proc_6_60_E62BC4(var_94)
  loc_ED8EE3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC060C
  'Data Table: 4669E8
  loc_EC0574: On Error Goto loc_EC0604
  loc_EC05AE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC05BD:   Set var_110 = Me
  loc_EC05D4:   Call Proc_264_26_E7BDFC(Proc_5_1_100CB50("INI", var_110))
  loc_EC05DF:   Call Proc_264_30_E81364(global_52)
  loc_EC05E4:   Call Proc_264_28_12DADB8()
  loc_EC05EC: Else
  loc_EC05F2:   Call 0.Method_arg_1E8 (var_110)
  loc_EC05FA:   Call var_110.SetFocus
  loc_EC0603: End If
  loc_EC0603: Exit Sub
  loc_EC0604: ' Referenced from: EC0574
  loc_EC0604: Proc_6_60_E62BC4()
  loc_EC0609: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '118A480
  'Data Table: 4669E8
  Dim var_13C As Integer
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_4669F8 As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Fields15
  Dim var_140 As Field20
  Dim var_96 As Integer
  loc_118A0D0: On Error Goto loc_118A428
  loc_118A0E1: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_118A0E4:   Exit Sub
  loc_118A0E5: End If
  loc_118A0EB: var_13C = 0
  loc_118A133: var_E0 = "SELECT Count(*) FROM SubGroup WHERE CompanyType='" & Me.Fields.Item("Code").Value 
  loc_118A13C: var_100 = var_E0 & "'" 
  loc_118A14A: unk_4669F8.Execute CStr(var_100), var_124, -1
  loc_118A152: var_128 = var_128.Fields
  loc_118A15A: var_13C = var_12C.Item(var_12C)
  loc_118A162: var_140 = var_140.Value
  loc_118A18F: If (var_150 > 0) Then
  loc_118A1AB:   MsgBox("Related Records are Existed In Subgroup! Can't Delete !", &H10, var_E0, var_100, var_124)
  loc_118A1BE: Else
  loc_118A1F5:   If (MsgBox("Delete Record ?", &H24, "Confirmation", var_100, var_124) = 6) Then
  loc_118A201:     unk_4669F8.BeginTrans var_174
  loc_118A217:     var_94 = Me.Bookmark 'Variant
  loc_118A263:     var_100 = "Delete From MemCatMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_118A271:     unk_4669F8.Execute CStr(var_100), var_124, -1
  loc_118A2BC:     var_1AC = 0
  loc_118A2CF:     var_1A4 = 0
  loc_118A2DA:     var_1A0 = 0
  loc_118A2ED:     var_198 = 0
  loc_118A2F8:     var_194 = 0
  loc_118A30B:     var_18C = 0
  loc_118A34B:     var_104 = "MemCatMast"
  loc_118A354:     Proc_154_5_10E33A4(MemVar_1F92044, var_104, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_118A382:     unk_4669F8.CommitTrans
  loc_118A389:     var_96 = 0
  loc_118A397:     Me.Requery -1
  loc_118A3A7:     Me.Requery -1
  loc_118A3C7:     If (CVar(Me.RecordCount) >= var_94) Then
  loc_118A3D4:       Me.Bookmark = var_94
  loc_118A3DC:     Else
  loc_118A3F0:       If (Me.EOF = 0) Then
  loc_118A3F9:         Me.MoveLast
  loc_118A3FE:       End If
  loc_118A3FE:     End If
  loc_118A3FE:     Call Proc_264_28_12DADB8(var_96, var_18C, 0, var_194, var_198)
  loc_118A41F:     Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_118A427:   End If
  loc_118A427: End If
  loc_118A427: Exit Sub
  loc_118A428: ' Referenced from: 118A0D0
  loc_118A42E: If (var_96 = &HFF) Then
  loc_118A437:   unk_4669F8.RollbackTrans
  loc_118A43C: End If
  loc_118A444: Set var_9C = Err()
  loc_118A44A: Call 0.Method_arg_2C (var_104, 0, var_1A0)
  loc_118A46B: MsgBox(CVar(var_104), &H30, " Deletion Error ", var_100, var_124)
  loc_118A47E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F7AEBC
  'Data Table: 4669E8
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F7AD78: On Error Goto loc_F7AEB5
  loc_F7AD89: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F7AD8C:   Exit Sub
  loc_F7AD8D: End If
  loc_F7ADA4: If (Me.RecordCount > 0) Then
  loc_F7ADCA:   Call Proc_264_26_E7BDFC(Proc_5_1_100CB50("EDIT", Me))
  loc_F7ADE3:   Set var_90 = Me.Txt
  loc_F7ADE9:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F7ADFC:   global_76 = var_98.Text
  loc_F7AE15:   Set var_90 = Me.Txt
  loc_F7AE1B:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F7AE23:   var_98.SetFocus
  loc_F7AE3C:   Set var_90 = Me.Txt
  loc_F7AE42:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98)
  loc_F7AE4A:   var_98.Enabled = False
  loc_F7AE59: Else
  loc_F7AE7A:   MsgBox("There Is No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F7AE8A: End If
  loc_F7AE97: Me.LblUser.Caption = vbNullString
  loc_F7AEAC: Me.LblLDt.Caption = vbNullString
  loc_F7AEB4: Exit Sub
  loc_F7AEB5: ' Referenced from: F7AD78
  loc_F7AEB5: Proc_6_60_E62BC4(global_52)
  loc_F7AEBA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E199E4
  'Data Table: 4669E8
  loc_E199D9: Me.Global.Unload Me
  loc_E199E1: Exit Sub
  loc_E199E2: On Error Goto loc_E209D4
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F51B78
  'Data Table: 4669E8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F51A64: On Error Goto loc_F51B10
  loc_F51A70: var_88 = Me.RecordCount
  loc_F51A7E: If (var_88 <= 0) Then
  loc_F51A87:   var_B8 = "Information"
  loc_F51AA2:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F51AB2:   Exit Sub
  loc_F51AB3: End If
  loc_F51ABA: var_10C = "SELECT  Code as SearchCode, Name , Subscription, Surcharge , FBilling,Status FROM MemCatMast  Where Site_Code='" & MemVar_1F92070
  loc_F51ACF: MemVar_1F920E4 = var_10C & "' AND  LogSite_Code='" & MemVar_1F92078 & "' ORDER BY Name"
  loc_F51AE2: MemVar_1F92120 = Me
  loc_F51AE9: var_10C = "3500,1300,850,850,800"
  loc_F51AEF: Proc_6_126_F1BCC0(var_10C)
  loc_F51B0A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F51B0F: Exit Sub
  loc_F51B10: ' Referenced from: F51A64
  loc_F51B18: Set var_118 = Err()
  loc_F51B1E: Call 0.Method_arg_1C (var_88)
  loc_F51B2F: If (var_88 <> 0) Then
  loc_F51B3A:   Set var_118 = Err()
  loc_F51B40:   Call 0.Method_arg_2C (var_10C)
  loc_F51B61:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F51B74: End If
  loc_F51B74: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2BCF8
  'Data Table: 4669E8
  loc_E2BCE8: Proc_5_0_110649C(&HFF, Me)
  loc_E2BCF0: Call Proc_264_28_12DADB8(global_52)
  loc_E2BCF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2CFB8
  'Data Table: 4669E8
  loc_E2CFA8: Proc_5_0_110649C(&HFF, Me)
  loc_E2CFB0: Call Proc_264_28_12DADB8(global_52)
  loc_E2CFB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2CAD8
  'Data Table: 4669E8
  loc_E2CAC8: Proc_5_0_110649C(&HFF, Me)
  loc_E2CAD0: Call Proc_264_28_12DADB8(global_52)
  loc_E2CAD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2D1F8
  'Data Table: 4669E8
  loc_E2D1E8: Proc_5_0_110649C(&HFF, Me)
  loc_E2D1F0: Call Proc_264_28_12DADB8(global_52)
  loc_E2D1F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '108C260
  'Data Table: 4669E8
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4669F8 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_108BFC8: On Error Goto loc_108C214
  loc_108BFEF: unk_4669F8.Execute "select * FROM MemCatMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_108BFFA: Set var_88 = var_C8
  loc_108C010: var_CC = var_88.RecordCount
  loc_108C01E: If (var_CC = 0) Then
  loc_108C03A:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108C04A:   Exit Sub
  loc_108C04B: End If
  loc_108C05A: var_A4 = MemVar_1F920B4 & "\MemCatMast.ttx"
  loc_108C061: Set var_C8 = var_88 
  loc_108C06D: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108C077: Set var_88 = var_C8
  loc_108C07D: var_B4 = CVar(var_12E) 'Integer
  loc_108C080: var_98 = var_B4 'Variant
  loc_108C09C: var_A0 = MemVar_1F920B4 & "\MemCatMast.RPT"
  loc_108C0A5: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108C0B0: MemVar_1F921E4 = var_C8
  loc_108C0CB: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108C0D3: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108C0DF: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108C0F8:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108C100:   Call 0.Method_arg_20 (var_138)
  loc_108C108:   Call 0.Method_arg_30 (var_A0)
  loc_108C14E:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108C164:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108C16C:     Call 0.Method_arg_20 (var_138)
  loc_108C174:     Call 0.Method_arg_38 ("'Member Category Master'")
  loc_108C180:   End If
  loc_108C183: Next var_132 'Integer
  loc_108C1A1: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_108C1A9: Call 0.Method_arg_2C (var_DC)
  loc_108C1B7: Call 0.Method_arg_150 (var_FC)
  loc_108C1C2: Call 0.Method_arg_50 (var_A0)
  loc_108C1CC: Set var_138 = Nothing
  loc_108C1E6: Set var_C8 = MemVar_1F921E4 
  loc_108C1F2: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_108C1FD: MemVar_1F921E4 = var_C8
  loc_108C210: Set var_88 = Nothing
  loc_108C213: Exit Sub
  loc_108C214: ' Referenced from: 108BFC8
  loc_108C21C: Set var_C8 = Err()
  loc_108C222: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108C22D: Call 0.Method_arg_50 (var_A4)
  loc_108C249: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108C25C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A7F4
  'Data Table: 4669E8
  Dim Me As Recordset15
  loc_E0A7EB: Me.Requery -1
  loc_E0A7F0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1343CD0
  'Data Table: 4669E8
  Dim var_AC As String
  Dim var_E4 As Variant
  Dim var_C4 As String
  Dim unk_4669F8 As Connection15
  Dim var_A0 As Variant
  Dim var_A4 As Variant
  Dim var_A8 As Field20
  Dim var_108 As Variant
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_138 As TextBox
  Dim var_184 As TextBox
  Dim var_220 As TextBox
  Dim var_2BC As TextBox
  Dim var_5D0 As Double
  Dim var_308 As TextBox
  Dim var_3A4 As TextBox
  Dim var_2E0 As Variant
  Dim var_448 As Variant
  Dim var_C0 As Variant
  loc_13435FC: On Error Goto loc_1343C7C
  loc_1343603: var_86 = CByte(0) 'Byte
  loc_1343612: Set var_A0 = Me.Txt
  loc_1343618: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1343641: If (Proc_6_27_EA565C(var_A4, "Name") = 0) Then
  loc_134364B:   Call Txt_GotFocus()
  loc_1343650:   Exit Sub
  loc_1343651: End If
  loc_1343654: Call Proc_264_29_10F611C(var_AE, CInt(0))
  loc_134365F: If (var_AE = &HFF) Then
  loc_1343662:   Exit Sub
  loc_1343663: End If
  loc_1343667: Set var_A0 = Me.TopCtrl1
  loc_134366D: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_A4)
  loc_1343686: If (CStr() = "Add") Then
  loc_134368F:   var_E4 = 0
  loc_13436AC:   var_AC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From MemCatMast WHERE  SITE_CODE='" & MemVar_1F92070
  loc_13436BC:   unk_4669F8.Execute CStr() & "'", var_C0, -1
  loc_13436C4:   var_A0 = var_A0.Fields
  loc_13436CC:   var_E4 = var_A4.Item(var_A4)
  loc_13436D4:   var_A8 = var_A8.Value
  loc_134370D:   var_108 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_134373B:   var_118 = (1 + Format(CStr(var_F4), "0000"))
  loc_1343746:   global_72 = CStr(var_118)
  loc_134375B: Else
  loc_1343778:   var_A4 = Me.Fields.Item("Code")
  loc_1343780:   var_C0 = var_A4.Value
  loc_134378F:   global_72 = CStr(var_C0)
  loc_13437A0: End If
  loc_13437A9: unk_4669F8.BeginTrans var_11C
  loc_13437B2: var_86 = CByte(1) 'Byte
  loc_13437D4: var_C4 = "Delete From MemCatMast Where Code='" & global_72 & "'"
  loc_13437DD: unk_4669F8.Execute var_C4, var_C0, -1
  loc_1343803: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_C4, Me.Txt)
  loc_134380B: 1 = var_A4.Text
  loc_134381E: Set var_A8 = Me.Txt
  loc_1343824: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_124, var_128)
  loc_134382C: var_108 = var_124.Text
  loc_134383F: Set var_134 = Me.Txt
  loc_1343845: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_138)
  loc_1343857: var_F4 = "N"
  loc_1343870: var_D4 = (var_138.Text = "Yes")
  loc_1343877: var_108 = IIf(var_D4, "Y", var_F4)
  loc_134388A: Set var_180 = Me.Txt
  loc_1343890: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_184)
  loc_13438D5: Set var_21C = Me.Txt
  loc_13438DB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_220)
  loc_1343920: Set var_2B8 = Me.Txt
  loc_1343926: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2BC)
  loc_134393B: var_5D0 = Val(var_2BC.Text)
  loc_134394C: Set var_304 = Me.Txt
  loc_1343952: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_308, var_30C)
  loc_1343997: Set var_3A0 = Me.Txt
  loc_134399D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_3A4)
  loc_13439B5: Proc_6_7_F25D88(var_488)
  loc_13439BE: Set var_4BC = Me.TopCtrl1
  loc_13439C4: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(Proc_6_15_EF2C1C(var_F4)))
  loc_1343A12: var_AC = "Insert Into MemCatMast(Code,Name,ShortName,Subscription,Surcharge,Corporate,ChildAgeLmt,FBilling,Status,Site_code,U_Name,U_EntDt,U_AE, LOGSITE_CODE) Values ('" & global_72
  loc_1343A35: var_118 = CVar(var_AC & "','" & var_C4 & "','" & var_128 & "','") 'String
  loc_1343A6F: var_2E0 = var_118 & var_108 & "','" & IIf((var_184.Text = "Yes"), "Y", "N") & "','" & IIf((var_220.Text = "Yes"), "Y", "N") & "'," & CVar(var_308.Text) 
  loc_1343AB8: var_448 = var_2E0 & ",'" & IIf((var_30C = "Yes"), "Y", "N") & "','" & CVar(var_3A4.Text) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_1343B02: unk_4669F8.Execute CStr(var_448 & "'," & var_488 & ",'" & IIf((CStr(var_4CC) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_5C4, -1
  loc_1343BB6: unk_4669F8.CommitTrans
  loc_1343BBF: var_86 = CByte(0) 'Byte
  loc_1343BCE: Me.Requery -1
  loc_1343BDE: Me.Requery -1
  loc_1343C0B: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_1343C1B: Set var_A0 = Me.TopCtrl1
  loc_1343C21: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_D4)
  loc_1343C3A: If (CStr(var_5C8) = "Add") Then
  loc_1343C3D:   Call TopCtrl1_UnknownEvent_A()
  loc_1343C42:   Exit Sub
  loc_1343C43: End If
  loc_1343C58: var_AC = "INI"
  loc_1343C66: Call Proc_264_26_E7BDFC(Proc_5_1_100CB50(var_AC, Me))
  loc_1343C71: Call Proc_264_30_E81364(global_52)
  loc_1343C76: Call Proc_264_28_12DADB8()
  loc_1343C7B: Exit Sub
  loc_1343C7C: ' Referenced from: 13435FC
  loc_1343C85: If (CInt(var_86) = 1) Then
  loc_1343C8E:   unk_4669F8.RollbackTrans
  loc_1343C93: End If
  loc_1343C9B: Set var_A0 = Err()
  loc_1343CA1: Call 0.Method_arg_2C (var_AC)
  loc_1343CBA: MsgBox(CVar(var_AC), &H10, var_F4, var_108, var_118)
  loc_1343CCD: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'F952B8
  'Data Table: 4669E8
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_D0 As TextBox
  loc_F9516A: Set var_88 = Me.Txt
  loc_F95170: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F9517E: Proc_6_74_E226B0(var_8C)
  loc_F9518A: Call Proc_264_30_E81364(var_8C)
  loc_F95192: var_92 = Index
  loc_F9519D: If Not (var_92 = CInt(2)) Then
  loc_F951A8:   If Not (var_92 = CInt(8)) Then
  loc_F951B3:     If Not (var_92 = CInt(4)) Then
  loc_F951BE:       If Not (var_92 = CInt(5)) Then
  loc_F951C9:         If (var_92 = CInt(6)) Then
  loc_F951CC:         End If
  loc_F951CC:       End If
  loc_F951CC:     End If
  loc_F951CC:   End If
  loc_F951D9:   ReDim var_98(0 To 1)
  loc_F951F0:   var_98(0) = "Yes"
  loc_F951FF:   var_98(1) = "No"
  loc_F95216:   global_80 = Array(var_98)
  loc_F95221:   Set var_D0 = Me.ListView
  loc_F9523C:   Set var_8C = Me.Txt
  loc_F95256:   Set global_96 = Proc_6_66_EFF8FC(var_D0, var_8C, Index, global_80)
  loc_F95274:   Set var_88 = Me.Txt
  loc_F9527A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D8)
  loc_F95282:   2 = var_8C.Text
  loc_F95294:   Set var_90 = Me.Txt
  loc_F9529A:   Call 0.Method_Txt_GotFocus0 (Index, var_D0, var_D8)
  loc_F952A2:   var_D0.Tag = global_80
  loc_F952B5: End If
  loc_F952B5: Exit Sub
  loc_F952B6: Set arg_7000 = var_92
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10B8258
  'Data Table: 4669E8
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_A4 As TextBox
  Dim var_B4 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  loc_10B7FB2: If (CLng(Shift) = &H1B) Then
  loc_10B7FB5:   Call Proc_264_30_E81364()
  loc_10B7FBA:   Exit Sub
  loc_10B7FBB: End If
  loc_10B7FBE: var_88 = KeyCode
  loc_10B7FC9: If (var_88 = CInt(0)) Then
  loc_10B7FD0:   Set var_A4 = Me.DGHelp
  loc_10B7FE4:   Set var_9C = Nothing
  loc_10B8007:   Set var_90 = Me.Txt
  loc_10B8016:   Proc_6_79_11ACE04(var_A4, var_90, CInt(0), global_56, Shift)
  loc_10B802B: Else
  loc_10B8033:   If Not (var_88 = CInt(2)) Then
  loc_10B803E:     If Not (var_88 = CInt(8)) Then
  loc_10B8049:       If Not (var_88 = CInt(4)) Then
  loc_10B8054:         If Not (var_88 = CInt(5)) Then
  loc_10B805F:           If (var_88 = CInt(6)) Then
  loc_10B8062:           End If
  loc_10B8062:         End If
  loc_10B8062:       End If
  loc_10B8062:     End If
  loc_10B8084:     Set var_8C = Me.Txt
  loc_10B808A:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 0)
  loc_10B8092:     1 = var_90.Left
  loc_10B80A4:     Set var_9C = Me.Txt
  loc_10B80AA:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_10B80B2:     var_9C = var_A4.Top
  loc_10B80C4:     Set var_A8 = Me.Txt
  loc_10B80CA:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4, var_B8)
  loc_10B80D2:     0 = var_B4.Height
  loc_10B80E4:     Set var_BC = Me.Txt
  loc_10B80EA:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_10B80F2:     var_C4 = var_C0.Width
  loc_10B813A:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_10B815E:   End If
  loc_10B815E: End If
  loc_10B8197: If ((CBool(Me.DGHelp.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_10B81AD:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_10B81B6:     Proc_6_76_E52838(Shift, arg_14, CInt(var_AC), CInt((var_B0 + var_B8)))
  loc_10B81BB:   End If
  loc_10B81D9:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(5))) Then
  loc_10B81E2:     Call Txt_Validate(KeyCode)
  loc_10B81ED:     If (var_86 = 0) Then
  loc_10B8227:       If (MsgBox("Save Record ?", 4, "Save Data", var_13C, var_15C) = 6) Then
  loc_10B822A:         Call TopCtrl1_UnknownEvent_16()
  loc_10B822F:       End If
  loc_10B822F:       Exit Sub
  loc_10B8230:     End If
  loc_10B8233:   Else
  loc_10B8248:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10B8251:       Proc_6_75_E527CC(Shift, arg_14, var_86)
  loc_10B8256:     End If
  loc_10B8256:   End If
  loc_10B8256: End If
  loc_10B8256: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EFF48C
  'Data Table: 4669E8
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_EFF3C2: If (KeyAscii = CInt(7)) Then
  loc_EFF3EE:   If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_EFF3FE:     Set var_CC = Me.Txt
  loc_EFF404:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFF40C:     var_D0.Text = "Active"
  loc_EFF41B:   Else
  loc_EFF422:     var_98 = Chr(CLng(arg_10))
  loc_EFF444:     If (Ucase(var_98) = "N") Then
  loc_EFF454:       Set var_CC = Me.Txt
  loc_EFF45A:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_EFF462:       var_D0.Text = "Non Active"
  loc_EFF46E:     End If
  loc_EFF46E:   End If
  loc_EFF470:   arg_10 = 0
  loc_EFF473: End If
  loc_EFF479: Proc_6_133_E7EF78(var_98, arg_10)
  loc_EFF482: arg_10 = CInt(var_98)
  loc_EFF488: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F24CE8
  'Data Table: 4669E8
  Dim var_86 As Integer
  loc_F24BEB: var_86 = KeyCode
  loc_F24BF6: If (var_86 = CInt(0)) Then
  loc_F24C15:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F24C22:     var_A4 = "Name"
  loc_F24C41:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_F24C50:   End If
  loc_F24C53: Else
  loc_F24C5B:   If Not (var_86 = CInt(2)) Then
  loc_F24C66:     If Not (var_86 = CInt(8)) Then
  loc_F24C71:       If Not (var_86 = CInt(4)) Then
  loc_F24C7C:         If Not (var_86 = CInt(5)) Then
  loc_F24C87:           If (var_86 = CInt(6)) Then
  loc_F24C8A:           End If
  loc_F24C8A:         End If
  loc_F24C8A:       End If
  loc_F24C8A:     End If
  loc_F24CA5:     If (Me.FrmList.Visible = &HFF) Then
  loc_F24CD4:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F24CE4:     End If
  loc_F24CE4:   End If
  loc_F24CE4: End If
  loc_F24CE4: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E488A4
  'Data Table: 4669E8
  loc_E48882: Set var_88 = Me.Txt
  loc_E48888: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48896: Proc_6_73_E22704(var_8C)
  loc_E488A2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1011980
  'Data Table: 4669E8
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim var_8C As ListView
  Dim var_AC As TextBox
  Dim var_A8 As ListItem
  Dim var_D0 As TextBox
  loc_101177B: var_86 = Cancel
  loc_1011786: If (var_86 = CInt(0)) Then
  loc_101178C:   Call Proc_264_29_10F611C(var_88)
  loc_1011797:   If (var_88 = &HFF) Then
  loc_101179C:     arg_10 = &HFF
  loc_101179F:     Exit Sub
  loc_10117A0:   End If
  loc_10117A3: Else
  loc_10117AB:   If Not (var_86 = CInt(2)) Then
  loc_10117B6:     If Not (var_86 = CInt(8)) Then
  loc_10117C1:       If Not (var_86 = CInt(4)) Then
  loc_10117CC:         If Not (var_86 = CInt(5)) Then
  loc_10117D7:           If (var_86 = CInt(6)) Then
  loc_10117DA:           End If
  loc_10117DA:         End If
  loc_10117DA:       End If
  loc_10117DA:     End If
  loc_10117E7:     Set var_8C = Me.Txt
  loc_10117ED:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_10117F5:     arg_10 = var_90.Text
  loc_101180C:     If (var_94 <> vbNullString) Then
  loc_101183F:       Set var_A8 = Me.Txt
  loc_1011845:       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_101184D:       var_AC.Text = Me.ListView.SelectedItem.Text
  loc_1011866:     Else
  loc_1011886:       Set var_90 = Me.ListView.ListItems
  loc_10118A6:       Set var_AC = Me.Txt
  loc_10118AC:       Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_10118B4:       var_D0.Text = var_90.Item(1).Text
  loc_10118D0:     End If
  loc_10118D3:   Else
  loc_10118DB:     If (var_86 = CInt(7)) Then
  loc_10118E8:       Set var_8C = Me.Txt
  loc_10118EE:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1011929:       If (Ucase(Left(CVar(var_90), 1)) = "A") Then
  loc_1011939:         Set var_8C = Me.Txt
  loc_101193F:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1011947:         var_90.Text = "Active"
  loc_1011956:       Else
  loc_1011963:         Set var_8C = Me.Txt
  loc_1011969:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1011971:         var_90.Text = "Non Active"
  loc_101197D:       End If
  loc_101197D:     End If
  loc_101197D:   End If
  loc_101197D: End If
  loc_101197D: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC4344
  'Data Table: 4669E8
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC42BA: On Error Goto loc_EC42FF
  loc_EC42C3: Me.MoveFirst
  loc_EC42DD: var_8C = "code='" & MyValue
  loc_EC42ED: Me.Find var_8C & "'", 0, 1
  loc_EC42F9: Call Proc_264_28_12DADB8(var_A0)
  loc_EC42FE: Exit Sub
  loc_EC42FF: ' Referenced from: EC42BA
  loc_EC4307: Set var_A4 = Err()
  loc_EC430D: Call 0.Method_arg_2C (var_8C)
  loc_EC432E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC4341: Exit Sub
  loc_EC4342: Exit Sub
End Sub

Public Sub Proc_264_26_E7BDFC(arg_C) 'E7BDFC
  'Data Table: 4669E8
  Dim var_98 As TextBox
  loc_E7BDAA: Set var_8C = Me.Txt
  loc_E7BDB0: Call 0.Method_Proc_264_26_E7BDFCC (var_8E, var_86)
  loc_E7BDC0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7BDD6:   Set var_8C = Me.Txt
  loc_E7BDDC:   Call 0.Method_Proc_264_26_E7BDFC0 (CInt(var_86), var_98)
  loc_E7BDE4:   var_98.Enabled = arg_C
  loc_E7BDF3: Next var_92 'Byte
  loc_E7BDF9: Exit Sub
  loc_E7BDFA: CExtInstUnk
End Sub

Public Sub Proc_264_27_EACAAC
  'Data Table: 4669E8
  Dim var_98 As TextBox
  loc_EACA1E: global_76 = vbNullString
  loc_EACA30: Set var_8C = Me.Txt
  loc_EACA36: Call 0.Method_Proc_264_27_EACAACC (var_8E, var_86)
  loc_EACA46: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EACA5C:   Set var_8C = Me.Txt
  loc_EACA62:   Call 0.Method_Proc_264_27_EACAAC0 (CInt(var_86), var_98)
  loc_EACA6A:   var_98.Text = vbNullString
  loc_EACA86:   Set var_8C = Me.Txt
  loc_EACA8C:   Call 0.Method_Proc_264_27_EACAAC0 (CInt(var_86), var_98)
  loc_EACA94:   var_98.Tag = vbNullString
  loc_EACAA3: Next var_92 'Byte
  loc_EACAA9: Exit Sub
End Sub

Public Sub Proc_264_28_12DADB8
  'Data Table: 4669E8
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B8 As Fields15
  Dim var_B4 As String
  Dim var_CC As TextBox
  Dim arg_29FF As Variant
  loc_12DA738: On Error Goto loc_12DAD72
  loc_12DA741: Proc_183_45_E5C118(global_52)
  loc_12DA75D: If (Me.RecordCount <= 0) Then
  loc_12DA760:   Call Proc_264_27_EACAAC()
  loc_12DA768: Else
  loc_12DA811:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_12DA859:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_Name")))))
  loc_12DA8D9:   var_CC = Me.Fields.Item("U_AE")
  loc_12DA93A:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_CC)) = "E"), "Last Update :   ", "entdt :   "))
  loc_12DA982:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_EntDt")))))
  loc_12DA9F6:   Set var_B8 = Me.Txt
  loc_12DA9FC:   Call 0.Method_Proc_264_28_12DADB80 (CInt(0), var_CC)
  loc_12DAA04:   var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12DAA56:   Set var_B8 = Me.Txt
  loc_12DAA5C:   Call 0.Method_Proc_264_28_12DADB80 (CInt(0), var_CC)
  loc_12DAA64:   var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_12DAAB3:   Set var_B8 = Me.Txt
  loc_12DAAB9:   Call 0.Method_Proc_264_28_12DADB80 (CInt(1), var_CC)
  loc_12DAAC1:   var_CC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ShortName")))
  loc_12DAB47:   Set var_B8 = Me.Txt
  loc_12DAB4D:   Call 0.Method_Proc_264_28_12DADB80 (CInt(2), var_CC)
  loc_12DAB55:   var_CC.Text = Proc_6_38_E68A98(IIf((Me.Fields.Item("Subscription").Value = "Y"), "Yes", "No"))
  loc_12DABAF:   var_130 = "No"
  loc_12DABE7:   Set var_B8 = Me.Txt
  loc_12DABED:   Call 0.Method_Proc_264_28_12DADB80 (CInt(8), var_CC)
  loc_12DABF5:   var_CC.Text = Proc_6_38_E68A98(IIf((Me.Fields.Item("Surcharge").Value = "N"), var_130, "Yes"))
  loc_12DAC93:   Set var_B8 = Me.Txt
  loc_12DAC99:   Call 0.Method_Proc_264_28_12DADB80 (CInt(5), var_CC)
  loc_12DACA1:   var_CC.Text = Proc_6_38_E68A98(IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("FBilling"))))) = "N"), "No", "Yes"))
  loc_12DACF4:   var_110 = Trim(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Status")))))
  loc_12DAD33:   var_B4 = Proc_6_38_E68A98(IIf((var_110 = "N"), "Non Active", "Active"))
  loc_12DAD41:   Set var_B8 = Me.Txt
  loc_12DAD47:   Call 0.Method_Proc_264_28_12DADB80 (CInt(7), var_CC)
  loc_12DAD4F:   var_CC.Text = var_B4
  loc_12DAD71: End If
  loc_12DAD71: Exit Sub
  loc_12DAD72: ' Referenced from: 12DA738
  loc_12DAD7A: Set var_8C = Err()
  loc_12DAD80: Call 0.Method_arg_2C (var_B4)
  loc_12DADA1: MsgBox(CVar(var_B4), &H40, "Information", var_110, var_130)
  loc_12DADB4: Exit Sub
  loc_12DADB5: arg_29FF = CVar() 'Integer
End Sub

Public Sub Proc_264_29_10F611C
  'Data Table: 4669E8
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim unk_4669F8 As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  loc_10F5E3F: If (Me.RecordCount = 0) Then
  loc_10F5E42:   Proc_264_29_10F611C = 
  loc_10F5E48: End If
  loc_10F5E4C: Set var_90 = Me.TopCtrl1
  loc_10F5E52: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F5E6B: If (CStr() = "Add") Then
  loc_10F5E74:   var_F4 = 0
  loc_10F5EA9:   Set var_90 = Me.Txt
  loc_10F5EAF:   Call 0.Method_Proc_264_29_10F611C0 (CInt(0), var_A8, var_AC, "Select Count(*) From MemCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and code='", var_A0, -1)
  loc_10F5ED8:   Set var_B8 = Me.Txt
  loc_10F5EDE:   Call 0.Method_Proc_264_29_10F611C0 (CInt(0), var_BC, var_C0, var_E4 & var_AC & "' and Name='")
  loc_10F5EE6:   var_F4 = var_BC.Text
  loc_10F5EFF:   unk_4669F8.Execute var_F8 & var_C0 & "'", var_108, 
  loc_10F5F07:    = var_A8.Tag.Fields
  loc_10F5F0F:    = var_E4.Item()
  loc_10F5F17:    = var_F8.Value
  loc_10F5F52:   If (var_108 > 0) Then
  loc_10F5F60:     var_108 = "Information"
  loc_10F5F70:     var_A0 = "Duplicate Name"
  loc_10F5F76:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_10F5F91:     Set var_90 = Me.Txt
  loc_10F5F97:     Call 0.Method_Proc_264_29_10F611C0 (CInt(0))
  loc_10F5F9F:     var_A8.SetFocus
  loc_10F5FB0:     Proc_264_29_10F611C = &HFF
  loc_10F5FB6:   End If
  loc_10F5FB9: Else
  loc_10F5FBF:   var_F4 = 0
  loc_10F5FF4:   Set var_90 = Me.Txt
  loc_10F5FFA:   Call 0.Method_Proc_264_29_10F611C0 (CInt(0), var_A8, var_AC, "Select Count(*) From MemCatMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and code='", var_A0, -1)
  loc_10F6023:   Set var_B8 = Me.Txt
  loc_10F6029:   Call 0.Method_Proc_264_29_10F611C0 (CInt(0), var_BC, var_C0, var_E4 & var_AC & "' and Name='")
  loc_10F6031:   var_F4 = var_BC.Text
  loc_10F605B:   unk_4669F8.Execute var_F8 & var_C0 & "' And Name<>'" & global_76 & "'", var_108, var_A8
  loc_10F6063:    = var_A8.Tag.Fields
  loc_10F606B:    = var_E4.Item()
  loc_10F6073:    = var_F8.Value
  loc_10F60B2:   If (var_108 > 0) Then
  loc_10F60D6:     MsgBox("Duplicate Name", &H40, "Information", var_128, var_148)
  loc_10F60F1:     Set var_90 = Me.Txt
  loc_10F60F7:     Call 0.Method_Proc_264_29_10F611C0 (CInt(0))
  loc_10F60FF:     var_A8.SetFocus
  loc_10F6110:     Proc_264_29_10F611C = &HFF
  loc_10F6116:   End If
  loc_10F6116: End If
  loc_10F6116: Proc_264_29_10F611C = var_A8
End Sub

Public Sub Proc_264_30_E81364
  'Data Table: 4669E8
  Dim Proc_264_30_E81364FF As Double
  loc_E81314: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E81326:   Me.DGHelp.Visible = False
  loc_E8132E: End If
  loc_E81349: If (Me.FrmList.Visible = &HFF) Then
  loc_E81358:   Me.FrmList.Visible = False
  loc_E81360: End If
  loc_E81360: Exit Sub
  loc_E81361: Proc_264_30_E81364FF = 
End Sub
