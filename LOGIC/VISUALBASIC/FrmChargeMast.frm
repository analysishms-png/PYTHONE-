VERSION 5.00
Begin VB.Form FrmChargeMast
  Caption = "Charge Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 11355
  ClientHeight = 7980
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 6495
    Top = 2235
    Width = 1275
    Height = 285
    TabIndex = 3
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
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3780
    Top = 3180
    Width = 1005
    Height = 285
    TabIndex = 6
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3780
    Top = 4440
    Width = 1005
    Height = 285
    TabIndex = 12
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11355
    Height = 450
    TabIndex = 39
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3780
    Top = 2235
    Width = 1635
    Height = 285
    TabIndex = 2
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
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3780
    Top = 3495
    Width = 1815
    Height = 285
    TabIndex = 7
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
  Begin PictureBox Picture1
    Picture = "FrmChargeMast.frx":0
    Left = 12030
    Top = 2055
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 32
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin PictureBox Picture3
    Picture = "FrmChargeMast.frx":34E
    Left = 12030
    Top = 1785
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 31
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 10965
    Top = 3165
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 28
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = -15
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 29
    End
  End
  Begin DataGrid DGLedgerAc
    Left = 8010
    Top = 3915
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 26
  End
  Begin DataGrid DGHelp
    Left = 7275
    Top = 4350
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 25
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    Left = 10335
    Top = 510
    Width = 1380
    Height = 255
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 7
    BeginProperty Font
      Name = "MS Sans Serif"
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
    ForeColor = &HC00000&
    Left = 3780
    Top = 4125
    Width = 1005
    Height = 285
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 2
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
    ForeColor = &HC00000&
    Left = 3780
    Top = 1605
    Width = 3990
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 25
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
    ForeColor = &HC00000&
    Left = 3780
    Top = 3810
    Width = 1005
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
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
    Left = 10470
    Top = 885
    Width = 1380
    Height = 255
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 11445
    Top = 2715
    Width = 1380
    Height = 255
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
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
    ForeColor = &HC00000&
    Left = 3780
    Top = 2865
    Width = 3990
    Height = 285
    TabIndex = 5
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
    ForeColor = &HC00000&
    Left = 3780
    Top = 2550
    Width = 3990
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 25
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
    ForeColor = &HC00000&
    Left = 3780
    Top = 1920
    Width = 1005
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 5
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
  Begin MSFlexGrid FGPoint
    Left = 11385
    Top = 4980
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 24
  End
  Begin DataGrid DGTaxStru
    Left = 6960
    Top = 3540
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 27
  End
  Begin Label LblLedgerAc
    Caption = "HSN Code"
    Index = 8
    ForeColor = &HC00000&
    Left = 5475
    Top = 2265
    Width = 960
    Height = 240
    TabIndex = 44
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
    Index = 2
    ForeColor = &H80&
    Left = 4815
    Top = 3195
    Width = 885
    Height = 240
    TabIndex = 43
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
    Caption = "Tax Inclusive"
    Index = 7
    ForeColor = &HC00000&
    Left = 2115
    Top = 3180
    Width = 1260
    Height = 240
    TabIndex = 42
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
    Left = 4815
    Top = 4440
    Width = 885
    Height = 240
    TabIndex = 41
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
    Caption = "Active"
    Index = 6
    ForeColor = &HC00000&
    Left = 2115
    Top = 4440
    Width = 585
    Height = 240
    TabIndex = 40
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
    Left = 4755
    Top = 5460
    Width = 2790
    Height = 285
    TabIndex = 38
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
    Left = 1380
    Top = 5460
    Width = 2880
    Height = 255
    TabIndex = 37
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
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 36
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
  Begin Label LblLedgerAc
    Caption = "Nature of charge"
    Index = 5
    ForeColor = &HC00000&
    Left = 2115
    Top = 2235
    Width = 1590
    Height = 240
    TabIndex = 35
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
    Caption = "Detailed/Summarize"
    ForeColor = &H80&
    Left = 5610
    Top = 3510
    Width = 1950
    Height = 240
    TabIndex = 34
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
    Caption = "Posting Type"
    Index = 1
    ForeColor = &HC00000&
    Left = 2115
    Top = 3495
    Width = 1230
    Height = 240
    TabIndex = 33
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
    Caption = "Cr/Dr"
    Index = 0
    ForeColor = &H80&
    Left = 4815
    Top = 4155
    Width = 480
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
  Begin Label LblLedgerAc
    Caption = "App.Mode"
    Index = 4
    ForeColor = &H0&
    Left = 8805
    Top = 510
    Width = 945
    Height = 240
    Visible = 0   'False
    TabIndex = 23
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Type"
    Index = 3
    ForeColor = &HC00000&
    Left = 2115
    Top = 4125
    Width = 465
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
  Begin Label LblSysYN
    Caption = "SysYN"
    ForeColor = &H80&
    Left = 4815
    Top = 1935
    Width = 585
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
    Caption = "Charge Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 2115
    Top = 1605
    Width = 1305
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
  Begin Label LblName
    Caption = "Sale Rate"
    Index = 4
    ForeColor = &HC00000&
    Left = 2115
    Top = 3810
    Width = 930
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
  Begin Label LblLedgerAc
    Caption = "Tax Structure"
    Index = 0
    ForeColor = &HC00000&
    Left = 2115
    Top = 2865
    Width = 1290
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
  Begin Label LblName
    Caption = "Staff Rate"
    Index = 6
    ForeColor = &H0&
    Left = 8940
    Top = 885
    Width = 870
    Height = 240
    Visible = 0   'False
    TabIndex = 17
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Cost"
    Index = 1
    ForeColor = &H0&
    Left = 9825
    Top = 2715
    Width = 375
    Height = 240
    Visible = 0   'False
    TabIndex = 16
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
    Caption = "Account Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 2115
    Top = 2550
    Width = 1380
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
  Begin Label LblLedgerAc
    Caption = "Short Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 2115
    Top = 1920
    Width = 1125
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
End

Attribute VB_Name = "FrmChargeMast"


Private Sub DGHelp_UnknownEvent_9 'F4A7C4
  'Data Table: 4CD138
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4A6BB: Me.DGHelp.Visible = False
  loc_F4A6DA: If (Me.RecordCount > 0) Then
  loc_F4A719:   Set var_B4 = Me.Txt
  loc_F4A71F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4A727:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4A75A:   var_B0 = Me.Fields.Item("Name")
  loc_F4A779:   Set var_B4 = Me.Txt
  loc_F4A77F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F4A787:   var_B8.Text = CStr(var_B0.Value)
  loc_F4A79D: End If
  loc_F4A7A8: Set var_A8 = Me.Txt
  loc_F4A7AE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F4A7B6: var_B0.SetFocus
  loc_F4A7C2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA85D4
  'Data Table: 4CD138
  Dim var_A8 As Variant
  loc_EA8554: Set var_88 = Me.DGHelp
  loc_EA857E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA8586: Set var_BC = Me.DGHelp
  loc_EA85C2: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0), Me.FGPoint)
  loc_EA85D0: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F4E704
  'Data Table: 4CD138
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4E5FB: Me.DGTaxStru.Visible = False
  loc_F4E61A: If (Me.RecordCount > 0) Then
  loc_F4E659:   Set var_B4 = Me.Txt
  loc_F4E65F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3), var_B8)
  loc_F4E667:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4E69A:   var_B0 = Me.Fields.Item("Name")
  loc_F4E6B9:   Set var_B4 = Me.Txt
  loc_F4E6BF:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3), var_B8)
  loc_F4E6C7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4E6DD: End If
  loc_F4E6E8: Set var_A8 = Me.Txt
  loc_F4E6EE: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3))
  loc_F4E6F6: var_B0.SetFocus
  loc_F4E702: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'EA8698
  'Data Table: 4CD138
  Dim var_A8 As Variant
  loc_EA8618: Set var_88 = Me.DGTaxStru
  loc_EA8642: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA864A: Set var_BC = Me.DGTaxStru
  loc_EA8686: Proc_6_138_106D6F8(Me.DGTaxStru, global_64, CInt(3), Me.FGPoint)
  loc_EA8694: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '129C830
  'Data Table: 4CD138
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_88 As ListView
  loc_129C24A: Set var_88 = Me.Txt
  loc_129C250: Call 0.Method_Txt_GotFocus0 (Index)
  loc_129C25E: Proc_6_74_E226B0(var_8C)
  loc_129C26A: Call Proc_71_37_F1F168(var_8C)
  loc_129C26F: On Error Goto loc_129C7EA
  loc_129C275: var_92 = Index
  loc_129C280: If (var_92 = CInt(0)) Then
  loc_129C29A:   If (Me.RecordCount > 0) Then
  loc_129C2A8:     Set var_8C = Me.FGPoint
  loc_129C2C0:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_129C2CE:   End If
  loc_129C2D1: Else
  loc_129C2D9:   If (var_92 = CInt(2)) Then
  loc_129C2F3:     If (Me.RecordCount > 0) Then
  loc_129C301:       Set var_8C = Me.FGPoint
  loc_129C319:       Proc_6_137_1193554(Me.DGLedgerAc, global_60, Index)
  loc_129C327:     End If
  loc_129C375:     Set var_88 = Me.Txt
  loc_129C37B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_129C383:     var_8C = var_8C.Text
  loc_129C39B:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_129C39E:       Exit Sub
  loc_129C39F:     End If
  loc_129C3AC:     Set var_88 = Me.Txt
  loc_129C3B2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_129C3BA:     var_A0 = var_8C.Text
  loc_129C3CC:     var_B0 = "Name"
  loc_129C407:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_129C410:       Me.MoveFirst
  loc_129C433:       Set var_88 = Me.Txt
  loc_129C439:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_129C441:       0 = var_8C.Text
  loc_129C45A:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_129C46F:     End If
  loc_129C472:   Else
  loc_129C47A:     If (var_92 = CInt(3)) Then
  loc_129C494:       If (Me.RecordCount > 0) Then
  loc_129C4A2:         Set var_8C = Me.FGPoint
  loc_129C4BA:         Proc_6_137_1193554(Me.DGTaxStru, global_64)
  loc_129C4C8:       End If
  loc_129C516:       Set var_88 = Me.Txt
  loc_129C51C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_129C524:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_129C53C:       If (Index Or (var_A0 = vbNullString)) Then
  loc_129C53F:         Exit Sub
  loc_129C540:       End If
  loc_129C54D:       Set var_88 = Me.Txt
  loc_129C553:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_129C55B:       var_A0 = var_8C.Text
  loc_129C56D:       var_B0 = "Name"
  loc_129C5A8:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_129C5B1:         Me.MoveFirst
  loc_129C5D4:         Set var_88 = Me.Txt
  loc_129C5DA:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_129C5E2:         0 = var_8C.Text
  loc_129C5FB:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_129C610:       End If
  loc_129C613:     Else
  loc_129C61B:       If (var_92 = CInt(&HA)) Then
  loc_129C62B:         ReDim var_F0(0 To 6)
  loc_129C642:         var_F0(0) = "Room Charge"
  loc_129C651:         var_F0(1) = "Meal Charge"
  loc_129C660:         var_F0(2) = "Laundry Charge"
  loc_129C66F:         var_F0(3) = "Telephone Charge"
  loc_129C67E:         var_F0(4) = "Internet Charge"
  loc_129C68D:         var_F0(5) = "Vehicle Charge"
  loc_129C69C:         var_F0(6) = "Other"
  loc_129C6B3:         global_76 = Array(var_F0)
  loc_129C6F3:         Set global_92 = Proc_6_66_EFF8FC(Me.ListView, Me.Txt, Index)
  loc_129C717:         Me.ListView.Tag = CVar(CStr(Index))
  loc_129C725:       Else
  loc_129C72D:         If (var_92 = CInt(8)) Then
  loc_129C73D:           ReDim var_F0(0 To 1)
  loc_129C754:           var_F0(0) = "Percent"
  loc_129C763:           var_F0(1) = "Amount"
  loc_129C77A:           global_76 = Array(var_F0)
  loc_129C7BA:           Set global_92 = Proc_6_66_EFF8FC(Me.ListView, Me.Txt, Index, global_76, 2)
  loc_129C7DE:           Me.ListView.Tag = CVar(CStr(Index))
  loc_129C7E9:         End If
  loc_129C7E9:       End If
  loc_129C7E9:     End If
  loc_129C7E9:   End If
  loc_129C7E9: End If
  loc_129C7E9: Exit Sub
  loc_129C7EA: ' Referenced from: 129C26F
  loc_129C7F2: Set var_88 = Err()
  loc_129C7F8: Call 0.Method_arg_2C (var_A0, global_76, global_76)
  loc_129C819: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_164)
  loc_129C82C: Exit Sub
  loc_129C82D: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12CA000
  'Data Table: 4CD138
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_10C As Variant
  loc_12C99B6: If (CLng(Shift) = &H1B) Then
  loc_12C99B9:   Call Proc_71_37_F1F168()
  loc_12C99BE:   Exit Sub
  loc_12C99BF: End If
  loc_12C99C2: var_86 = KeyCode
  loc_12C99CD: If (var_86 = CInt(0)) Then
  loc_12C99ED:   Set var_98 = Me.FGPoint
  loc_12C9A1B:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, KeyCode, global_56, Shift)
  loc_12C9A88:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12C9AAE:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_12C9ABC:   End If
  loc_12C9ABF: Else
  loc_12C9AC7:   If (var_86 = CInt(2)) Then
  loc_12C9AF2:     Set var_98 = Nothing
  loc_12C9B24:     Proc_6_69_134A198(Me.DGLedgerAc, Me.Txt, CInt(2), global_60, Shift, 0, 1)
  loc_12C9B93:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12C9B9A:       Set var_98 = Me.DGLedgerAc
  loc_12C9BB9:       Proc_6_138_106D6F8(var_98, global_60, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_12C9BC7:     End If
  loc_12C9BCA:   Else
  loc_12C9BD2:     If (var_86 = CInt(3)) Then
  loc_12C9BE0:       Set var_A8 = Me.Txt
  loc_12C9BF2:       Set var_A0 = Me.FGPoint
  loc_12C9C2F:       Proc_6_69_134A198(Me.DGTaxStru, var_A8, CInt(3), global_64, Shift, 0, 1, Nothing)
  loc_12C9C4E:       var_AC = Me.RecordCount
  loc_12C9C9E:       If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12C9CAC:         Set var_90 = Me.FGPoint
  loc_12C9CC4:         Proc_6_138_106D6F8(Me.DGTaxStru, global_64, KeyCode, var_90, var_A0, 0)
  loc_12C9CD2:       End If
  loc_12C9CD5:     Else
  loc_12C9CDD:       If (var_86 = CInt(&HA)) Then
  loc_12C9D02:         Set var_8C = Me.Txt
  loc_12C9D08:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 0)
  loc_12C9D10:         1 = var_90.Left
  loc_12C9D22:         Set var_98 = Me.Txt
  loc_12C9D28:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_12C9D30:         var_98 = var_A0.Top
  loc_12C9D42:         Set var_A4 = Me.Txt
  loc_12C9D48:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_BC)
  loc_12C9D50:         0 = var_A8.Height
  loc_12C9D62:         Set var_B4 = Me.Txt
  loc_12C9D68:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12C9D70:         var_C4 = var_C0.Width
  loc_12C9DB8:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12C9DDF:       Else
  loc_12C9DE7:         If (var_86 = CInt(8)) Then
  loc_12C9E0C:           Set var_8C = Me.Txt
  loc_12C9E12:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_12C9E1A:           CInt((var_B8 + var_BC)) = var_90.Left
  loc_12C9E2C:           Set var_98 = Me.Txt
  loc_12C9E32:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_12C9E3A:           CInt(var_C4) = var_A0.Top
  loc_12C9E4C:           Set var_A4 = Me.Txt
  loc_12C9E52:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_BC)
  loc_12C9E5A:           1820 = var_A8.Height
  loc_12C9E6C:           Set var_B4 = Me.Txt
  loc_12C9E72:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12C9E7A:           var_C4 = var_C0.Width
  loc_12C9EC2:           Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12C9EE6:         End If
  loc_12C9EE6:       End If
  loc_12C9EE6:     End If
  loc_12C9EE6:   End If
  loc_12C9EE6: End If
  loc_12C9F1D: var_10C = Me.DGTaxStru.Visible
  loc_12C9F57: If ((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGLedgerAc.Visible) = 0)) And (CBool(var_10C) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_12C9F78:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HB))) Then
  loc_12C9FB2:     If (MsgBox("Save Record ?", 4, "Save Data", var_10C, var_15C) = 6) Then
  loc_12C9FB5:       Call TopCtrl1_UnknownEvent_16()
  loc_12C9FBA:     End If
  loc_12C9FBA:     Exit Sub
  loc_12C9FBB:   End If
  loc_12C9FD0:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12C9FD9:     Proc_6_75_E527CC(Shift, arg_14, CInt(var_AC), CInt((var_B8 + var_BC)))
  loc_12C9FDE:   End If
  loc_12C9FF1:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_12C9FFA:     Proc_6_76_E52838(Shift, arg_14, CInt(var_C4))
  loc_12C9FFF:   End If
  loc_12C9FFF: End If
  loc_12C9FFF: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '11C3CAC
  'Data Table: 4CD138
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_11C3852: Proc_6_133_E7EF78(var_94)
  loc_11C385B: arg_10 = CInt(var_94)
  loc_11C3864: Proc_6_58_E054C0(arg_10, arg_10)
  loc_11C386C: var_96 = KeyAscii
  loc_11C3877: If (var_96 = CInt(2)) Then
  loc_11C3896:   If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_11C38A8:     var_A0 = "Name"
  loc_11C38C3:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10)
  loc_11C38F5:     Proc_6_138_106D6F8(Me.DGLedgerAc, global_60, KeyAscii, Me.FGPoint)
  loc_11C3903:   End If
  loc_11C3906: Else
  loc_11C390E:   If (var_96 = CInt(3)) Then
  loc_11C392D:     If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_11C393F:       var_A0 = "Name"
  loc_11C395A:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, var_A0)
  loc_11C3974:       Set var_A8 = Me.FGPoint
  loc_11C398C:       Proc_6_138_106D6F8(Me.DGTaxStru, global_64, KeyAscii, var_A8, 0)
  loc_11C399A:     End If
  loc_11C399D:   Else
  loc_11C39A5:     If (var_96 = CInt(4)) Then
  loc_11C39B2:       Set var_9C = Me.Txt
  loc_11C39B8:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_11C39D3:       Proc_6_42_129A86C(var_A8, arg_10, 6, 2)
  loc_11C39E2:     Else
  loc_11C39EA:       If (var_96 = CInt(5)) Then
  loc_11C39F7:         Set var_9C = Me.Txt
  loc_11C39FD:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_11C3A18:         Proc_6_42_129A86C(var_A8, arg_10, 6)
  loc_11C3A27:       Else
  loc_11C3A2F:         If (var_96 = CInt(6)) Then
  loc_11C3A3C:           Set var_9C = Me.Txt
  loc_11C3A42:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 2)
  loc_11C3A5D:           Proc_6_42_129A86C(var_A8, arg_10, 6)
  loc_11C3A6C:         Else
  loc_11C3A74:           If (var_96 = CInt(7)) Then
  loc_11C3AA0:             If (Ucase(Chr(CLng(arg_10))) = "D") Then
  loc_11C3AB0:               Set var_9C = Me.Txt
  loc_11C3AB6:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Dr")
  loc_11C3ABE:               var_A8.Text = 2
  loc_11C3ACD:             Else
  loc_11C3AF6:               If (Ucase(Chr(CLng(arg_10))) = "C") Then
  loc_11C3B06:                 Set var_9C = Me.Txt
  loc_11C3B0C:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Cr")
  loc_11C3B14:                 var_A8.Text = var_96
  loc_11C3B20:               End If
  loc_11C3B20:             End If
  loc_11C3B22:             arg_10 = 0
  loc_11C3B28:           Else
  loc_11C3B30:             If (var_96 = CInt(9)) Then
  loc_11C3B5C:               If (Ucase(Chr(CLng(arg_10))) = "D") Then
  loc_11C3B6C:                 Set var_9C = Me.Txt
  loc_11C3B72:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Detailed")
  loc_11C3B7A:                 var_A8.Text = arg_10
  loc_11C3B89:               Else
  loc_11C3BB2:                 If (Ucase(Chr(CLng(arg_10))) = "S") Then
  loc_11C3BC2:                   Set var_9C = Me.Txt
  loc_11C3BC8:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_11C3BD0:                   var_A8.Text = "Summarize"
  loc_11C3BDC:                 End If
  loc_11C3BDC:               End If
  loc_11C3BDE:               arg_10 = 0
  loc_11C3BE4:             Else
  loc_11C3BEC:               If Not (var_96 = CInt(&HB)) Then
  loc_11C3BF7:                 If (var_96 = CInt(&HC)) Then
  loc_11C3BFA:                 End If
  loc_11C3C23:                 If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_11C3C33:                   Set var_9C = Me.Txt
  loc_11C3C39:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_11C3C41:                   var_A8.Text = arg_10
  loc_11C3C50:                 Else
  loc_11C3C79:                   If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_11C3C89:                     Set var_9C = Me.Txt
  loc_11C3C8F:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_11C3C97:                     var_A8.Text = "No"
  loc_11C3CA3:                   End If
  loc_11C3CA3:                 End If
  loc_11C3CA5:                 arg_10 = 0
  loc_11C3CA8:               End If
  loc_11C3CA8:             End If
  loc_11C3CA8:           End If
  loc_11C3CA8:         End If
  loc_11C3CA8:       End If
  loc_11C3CA8:     End If
  loc_11C3CA8:   End If
  loc_11C3CA8: End If
  loc_11C3CA8: Exit Sub
  loc_11C3CA9: arg_10(arg_10) = 
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F2EF08
  'Data Table: 4CD138
  Dim var_86 As Integer
  loc_F2EDFF: var_86 = KeyCode
  loc_F2EE0A: If (var_86 = CInt(0)) Then
  loc_F2EE29:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F2EE36:     var_A0 = "Name"
  loc_F2EE51:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_56)
  loc_F2EE83:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_F2EE91:   End If
  loc_F2EE94: Else
  loc_F2EE9C:   If Not (var_86 = CInt(&HA)) Then
  loc_F2EEA7:     If (var_86 = CInt(8)) Then
  loc_F2EEAA:     End If
  loc_F2EEC5:     If (Me.FrmList.Visible = &HFF) Then
  loc_F2EEF4:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F2EF04:     End If
  loc_F2EF04:   End If
  loc_F2EF04: End If
  loc_F2EF04: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E499B4
  'Data Table: 4CD138
  loc_E49992: Set var_88 = Me.Txt
  loc_E49998: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E499A6: Proc_6_73_E22704(var_8C)
  loc_E499B2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12FAB28
  'Data Table: 4CD138
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C4 As TextBox
  loc_12FA424: On Error Goto loc_12FAAE1
  loc_12FA42A: var_86 = Cancel
  loc_12FA435: If (var_86 = CInt(0)) Then
  loc_12FA43B:   Call Proc_71_35_108873C(var_88)
  loc_12FA446:   If (var_88 = &HFF) Then
  loc_12FA44B:     arg_10 = &HFF
  loc_12FA44E:     Exit Sub
  loc_12FA44F:   End If
  loc_12FA453:   Set var_8C = Me.TopCtrl1
  loc_12FA459:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_12FA461:   var_A0 = CStr(var_86)
  loc_12FA472:   If (var_A0 = "Add") Then
  loc_12FA482:     Me.LblSysYN.Caption = "User Defined"
  loc_12FA48A:   End If
  loc_12FA48D: Else
  loc_12FA495:   If (var_86 = CInt(1)) Then
  loc_12FA49B:     Call Proc_71_36_10B10F0(var_88)
  loc_12FA4A6:     If (var_88 = &HFF) Then
  loc_12FA4AB:       arg_10 = &HFF
  loc_12FA4AE:       Exit Sub
  loc_12FA4AF:     End If
  loc_12FA4B2:   Else
  loc_12FA4BA:     If (var_86 = CInt(2)) Then
  loc_12FA50B:       Set var_8C = Me.Txt
  loc_12FA511:       Call 0.Method_Txt_Validate0 (Cancel, var_AC, var_A0)
  loc_12FA519:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_12FA531:       If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_12FA534:         Exit Sub
  loc_12FA535:       End If
  loc_12FA570:       Set var_C0 = Me.Txt
  loc_12FA576:       Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12FA57E:       var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12FA5B1:       var_AC = Me.Fields.Item("Code")
  loc_12FA5CF:       Set var_C0 = Me.Txt
  loc_12FA5D5:       Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12FA5DD:       var_C4.Tag = CStr(var_AC.Value)
  loc_12FA5F6:     Else
  loc_12FA5FE:       If (var_86 = CInt(3)) Then
  loc_12FA64F:         Set var_8C = Me.Txt
  loc_12FA655:         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12FA675:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_AC.Text = vbNullString)) Then
  loc_12FA685:           Set var_8C = Me.Txt
  loc_12FA68B:           Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12FA693:           var_AC.Tag = vbNullString
  loc_12FA69F:           Exit Sub
  loc_12FA6A0:         End If
  loc_12FA6DB:         Set var_C0 = Me.Txt
  loc_12FA6E1:         Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12FA6E9:         var_C4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_12FA71C:         var_AC = Me.Fields.Item("Code")
  loc_12FA73A:         Set var_C0 = Me.Txt
  loc_12FA740:         Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12FA748:         var_C4.Tag = CStr(var_AC.Value)
  loc_12FA761:       Else
  loc_12FA769:         If (var_86 = CInt(&HC)) Then
  loc_12FA776:           Set var_8C = Me.Txt
  loc_12FA77C:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_12FA7B7:           If (Ucase(Left(CVar(var_AC), 1)) = "Y") Then
  loc_12FA7C7:             Set var_8C = Me.Txt
  loc_12FA7CD:             Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12FA7D5:             var_AC.Text = "Yes"
  loc_12FA7E4:           Else
  loc_12FA7F1:             Set var_8C = Me.Txt
  loc_12FA7F7:             Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12FA7FF:             var_AC.Text = "No"
  loc_12FA80B:           End If
  loc_12FA80E:         Else
  loc_12FA816:           If (var_86 = CInt(4)) Then
  loc_12FA824:             Set var_8C = Me.Txt
  loc_12FA82A:             Call 0.Method_Txt_Validate0 (CInt(4), var_AC)
  loc_12FA865:             Set var_C0 = Me.Txt
  loc_12FA86B:             Call 0.Method_Txt_Validate0 (CInt(4), var_C4, CStr(Format(CVar(var_AC), "0.00")))
  loc_12FA873:             var_C4.Text = 1
  loc_12FA890:           Else
  loc_12FA898:             If (var_86 = CInt(5)) Then
  loc_12FA8A6:               Set var_8C = Me.Txt
  loc_12FA8AC:               Call 0.Method_Txt_Validate0 (CInt(5), var_AC)
  loc_12FA8E7:               Set var_C0 = Me.Txt
  loc_12FA8ED:               Call 0.Method_Txt_Validate0 (CInt(5), var_C4, CStr(Format(CVar(var_AC), "0.00")), 1)
  loc_12FA8F5:               var_C4.Text = 1
  loc_12FA912:             Else
  loc_12FA91A:               If (var_86 = CInt(6)) Then
  loc_12FA928:                 Set var_8C = Me.Txt
  loc_12FA92E:                 Call 0.Method_Txt_Validate0 (CInt(6), var_AC)
  loc_12FA95A:                 var_A0 = CStr(Format(CVar(var_AC), "0.00"))
  loc_12FA969:                 Set var_C0 = Me.Txt
  loc_12FA96F:                 Call 0.Method_Txt_Validate0 (CInt(6), var_C4, var_A0, 1)
  loc_12FA977:                 var_C4.Text = 1
  loc_12FA994:               Else
  loc_12FA99C:                 If Not (var_86 = CInt(&HA)) Then
  loc_12FA9A7:                   If (var_86 = CInt(8)) Then
  loc_12FA9AA:                   End If
  loc_12FA9B7:                   Set var_8C = Me.Txt
  loc_12FA9BD:                   Call 0.Method_Txt_Validate0 (Cancel, var_AC, var_A0)
  loc_12FA9C5:                   1 = var_AC.Text
  loc_12FA9DC:                   If (var_A0 <> vbNullString) Then
  loc_12FA9F7:                     Set var_AC = Me.ListView.SelectedItem
  loc_12FA9FD:                     var_A0 = var_AC.Text
  loc_12FAA0F:                     Set var_C0 = Me.Txt
  loc_12FAA15:                     Call 0.Method_Txt_Validate0 (Cancel, var_C4)
  loc_12FAA1D:                     var_C4.Text = var_A0
  loc_12FAA33:                   End If
  loc_12FAA36:                 Else
  loc_12FAA3E:                   If (var_86 = CInt(7)) Then
  loc_12FAA4B:                     Set var_8C = Me.Txt
  loc_12FAA51:                     Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12FAA70:                     var_E4 = Ucase(Left(CVar(var_AC), 1))
  loc_12FAA8C:                     If (var_E4 = "D") Then
  loc_12FAA9C:                       Set var_8C = Me.Txt
  loc_12FAAA2:                       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12FAAAA:                       var_AC.Text = "Dr"
  loc_12FAAB9:                     Else
  loc_12FAAC6:                       Set var_8C = Me.Txt
  loc_12FAACC:                       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_12FAAD4:                       var_AC.Text = "Cr"
  loc_12FAAE0:                     End If
  loc_12FAAE0:                   End If
  loc_12FAAE0:                 End If
  loc_12FAAE0:               End If
  loc_12FAAE0:             End If
  loc_12FAAE0:           End If
  loc_12FAAE0:         End If
  loc_12FAAE0:       End If
  loc_12FAAE0:     End If
  loc_12FAAE0:   End If
  loc_12FAAE0: End If
  loc_12FAAE0: Exit Sub
  loc_12FAAE1: ' Referenced from: 12FA424
  loc_12FAAE9: Set var_8C = Err()
  loc_12FAAEF: Call 0.Method_arg_2C (var_A0)
  loc_12FAB10: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_F4)
  loc_12FAB23: Exit Sub
  loc_12FAB24: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F53FB4
  'Data Table: 4CD138
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F53ED6: If (Me.ListView.ListItems.Count > 0) Then
  loc_F53EDD:   Set var_A8 = Me.ListView
  loc_F53F27:   Set var_C0 = Me.Txt
  loc_F53F2D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F53F35:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F53F55: End If
  loc_F53F61: Me.FrmList.Visible = False
  loc_F53F91: Set var_9C = Me.Txt
  loc_F53F97: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F53F9F: var_A8.SetFocus
  loc_F53FB3: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E83BF0
  'Data Table: 4CD138
  loc_E83B9C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E83B9F:   Call DGHelp_UnknownEvent_9()
  loc_E83BA4: End If
  loc_E83BC0: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_E83BC3:   Call DGTaxStru_UnknownEvent_9()
  loc_E83BC8: End If
  loc_E83BE4: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_E83BE7:   Call DGLedgerAc_UnknownEvent_9()
  loc_E83BEC: End If
  loc_E83BEC: Exit Sub
End Sub

Private Sub Form_Load() '108E8F0
  'Data Table: 4CD138
  Dim var_8C As Label
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_4CD14B As Connection15
  Dim var_B4 As Variant
  loc_108E648: On Error Goto loc_108E8AB
  loc_108E65A: Me.LblUser.Left = CDbl(13500)
  loc_108E671: Me.LblUser.Top = CDbl(7800)
  loc_108E688: Me.LblLDt.Top = CDbl(8160)
  loc_108E699: Set var_8C = Me.LblLDt
  loc_108E69F: var_8C.Left = CDbl(13500)
  loc_108E6AE: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_108E6B3: Call Proc_71_38_10089E0()
  loc_108E6D3: var_94 = "SELECT Code,Name FROM RevMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  AND FlagAMR='Detail' and FLAGTYPE='FOM' ORDER BY Name"
  loc_108E6DC: unk_4CD14B.Execute var_94, var_B4, -1
  loc_108E70B: CVarUnk
  loc_108E710: VerifyVarObj
  loc_108E71C: LateIdStAd
  loc_108E745: var_94 = "SELECT SubCode as Code,Name FROM SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_108E74E: unk_4CD14B.Execute var_94, var_B4, -1
  loc_108E77D: CVarUnk
  loc_108E782: VerifyVarObj
  loc_108E78E: LateIdStAd
  loc_108E7C0: unk_4CD14B.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_108E7EF: CVarUnk
  loc_108E7F4: VerifyVarObj
  loc_108E800: LateIdStAd
  loc_108E822: var_90 = "SELECT distinct R.*,R.Code as SearchCode,S.SubCode as LedgerCode ,S.Name as LedgerName,T.Code as TaxCode,T.Name as TaxName FROM ((RevMast R Left Join TaxStru T on T.Code=R.TaxStru) Left join Subgroup S on S.SubCode=R.ACCode) where (R.LOGSITE_CODE='" & MemVar_1F92078
  loc_108E832: unk_4CD14B.Execute var_90 & "' or R.LOGSITE_CODE='HO') AND FlagAMR='Detail' and FlagType='FOM'", var_B4, -1
  loc_108E864: Set var_8C = Me
  loc_108E86D: var_90 = "INI"
  loc_108E87B: Call Proc_71_32_F32744(Proc_5_1_100CB50(var_90, var_8C, Me.DGTaxStru, var_8C, var_8C, Me.DGLedgerAc, var_8C), var_8C, Me.DGHelp, var_8C)
  loc_108E88F: Call 0.Method_arg_160 (var_8C, var_8C)
  loc_108E89D: Call 0.Method_arg_164 (var_8C, var_8C)
  loc_108E8A5: Call Proc_71_34_13FDA78(var_8C)
  loc_108E8AA: Exit Sub
  loc_108E8AB: ' Referenced from: 108E648
  loc_108E8B3: Set var_8C = Err()
  loc_108E8B9: Call 0.Method_arg_2C (var_90)
  loc_108E8DA: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_108E8ED: Exit Sub
  loc_108E8EE: Exit Sub
End Sub

Private Sub Form_Resize() 'ED6C28
  'Data Table: 4CD138
  Dim var_8C As Label
  loc_ED6B86: Call 0.Method_arg_50 (var_88)
  loc_ED6B98: Me.LblFormCaption.Caption = var_88
  loc_ED6BB1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED6BBD: Set var_A0 = Me.TopCtrl1
  loc_ED6BC3: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED6BD0: Set var_8C = Me.TopCtrl1
  loc_ED6BD6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED6BF0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED6C0B: Call 0.Method_arg_100 (var_B8)
  loc_ED6C1D: Me.LblFormCaption.Width = var_B8
  loc_ED6C25: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5EF38
  'Data Table: 4CD138
  loc_E5EEF7: Set global_52 = Nothing
  loc_E5EF09: Set global_56 = Nothing
  loc_E5EF1B: Set global_60 = Nothing
  loc_E5EF2D: Set global_64 = Nothing
  loc_E5EF34: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E292D0
  'Data Table: 4CD138
  loc_E292A8: On Error Goto loc_E292C7
  loc_E292BF: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E292C7: ' Referenced from: E292A8
  loc_E292C7: Proc_6_60_E62BC4(Shift)
  loc_E292CC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F54124
  'Data Table: 4CD138
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_F54008: On Error Goto loc_F540DE
  loc_F54018: Me.LblUser.Caption = vbNullString
  loc_F5402D: Me.LblLDt.Caption = vbNullString
  loc_F54035: Call Proc_71_33_E7B8A4()
  loc_F5404F: var_8C = "ADD"
  loc_F5405D: Call Proc_71_32_F32744(Proc_5_1_100CB50(var_8C, Me))
  loc_F54076: Set var_88 = Me.Txt
  loc_F5407C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HC), var_94)
  loc_F54084: var_94.Text = "No"
  loc_F5409E: Set var_88 = Me.Txt
  loc_F540A4: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_94)
  loc_F540AC: var_94.Text = "Yes"
  loc_F540C3: Set var_88 = Me.Txt
  loc_F540C9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_F540D1: var_94.SetFocus
  loc_F540DD: Exit Sub
  loc_F540DE: ' Referenced from: F54008
  loc_F540E6: Set var_88 = Err()
  loc_F540EC: Call 0.Method_arg_2C (var_8C)
  loc_F5410D: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_F54120: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBBE1C
  'Data Table: 4CD138
  loc_EBBD88: On Error Goto loc_EBBE13
  loc_EBBDC2: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBBDD1:   Set var_110 = Me
  loc_EBBDE8:   Call Proc_71_32_F32744(Proc_5_1_100CB50("INI", var_110))
  loc_EBBDF3:   Call Proc_71_34_13FDA78(global_52)
  loc_EBBDFB: Else
  loc_EBBE01:   Call 0.Method_arg_1E8 (var_110)
  loc_EBBE09:   Call var_110.SetFocus
  loc_EBBE12: End If
  loc_EBBE12: Exit Sub
  loc_EBBE13: ' Referenced from: EBBD88
  loc_EBBE13: Proc_6_60_E62BC4()
  loc_EBBE18: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1228DB4
  'Data Table: 4CD138
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_B8 As String
  Dim unk_4CD14B As Connection15
  Dim var_9C As Recordset15
  Dim var_96 As Integer
  loc_12288D4: On Error Goto loc_1228D5C
  loc_12288E5: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_12288E8:   Exit Sub
  loc_12288E9: End If
  loc_122891B: var_D8 = "PayCharge"
  loc_1228963: If (Proc_6_108_1010FEC(MemVar_1F92044, "paycharge", "PayCode", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_1228966:   Exit Sub
  loc_1228967: End If
  loc_1228999: var_D8 = "Leader Revenue"
  loc_12289E1: If (Proc_6_108_1010FEC(MemVar_1F92044, "LeaderRev", "RevenueCode", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_12289E4:   Exit Sub
  loc_12289E5: End If
  loc_1228A24: var_FC = "select SysYN From RevMast Where Code='" & Me.Fields.Item("Code").Value 
  loc_1228A2D: var_11C = var_FC & "'" 
  loc_1228A3B: unk_4CD14B.Execute CStr(var_11C), var_13C, -1
  loc_1228A46: Set var_9C = var_140
  loc_1228A66: var_D4 = var_9C.RecordCount
  loc_1228A74: If (var_D4 > 0) Then
  loc_1228AB3:   If (var_9C.Fields.Item("SysYN").Value = "Y") Then
  loc_1228ACF:     MsgBox("SYSTEM ENTRY CAN'T BE DELETED", 0, var_FC, var_11C, var_13C)
  loc_1228ADF:     Exit Sub
  loc_1228AE0:   End If
  loc_1228AE0: End If
  loc_1228B17: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_11C, var_13C) = 6) Then
  loc_1228B1C:   var_96 = 0
  loc_1228B28:   unk_4CD14B.BeginTrans var_D4
  loc_1228B2F:   var_96 = &HFF
  loc_1228B43:   var_94 = Me.Bookmark 'Variant
  loc_1228B8F:   var_11C = "Delete From RevMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_1228B9D:   unk_4CD14B.Execute CStr(var_11C), var_13C, -1
  loc_1228BE8:   var_16C = 0
  loc_1228BFB:   var_164 = 0
  loc_1228C06:   var_160 = 0
  loc_1228C19:   var_158 = 0
  loc_1228C24:   var_154 = 0
  loc_1228C37:   var_14C = 0
  loc_1228C77:   var_B8 = "RevMast"
  loc_1228C80:   Proc_154_5_10E33A4(MemVar_1F92044, var_B8, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1228CAE:   unk_4CD14B.CommitTrans
  loc_1228CB5:   var_96 = 0
  loc_1228CC3:   Me.Requery -1
  loc_1228CD3:   Me.Requery -1
  loc_1228CF3:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1228D00:     Me.Bookmark = var_94
  loc_1228D08:   Else
  loc_1228D1C:     If (Me.EOF = 0) Then
  loc_1228D25:       Me.MoveLast
  loc_1228D2A:     End If
  loc_1228D2A:   End If
  loc_1228D2A:   Call Proc_71_34_13FDA78(var_96, var_14C, 0, var_154, var_158)
  loc_1228D4B:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_1228D53: End If
  loc_1228D58: Set var_9C = Nothing
  loc_1228D5B: Exit Sub
  loc_1228D5C: ' Referenced from: 12288D4
  loc_1228D62: If (var_96 = &HFF) Then
  loc_1228D6B:   unk_4CD14B.RollbackTrans
  loc_1228D70: End If
  loc_1228D78: Set var_A0 = Err()
  loc_1228D7E: Call 0.Method_arg_2C (var_B8, 0, var_160)
  loc_1228D9F: MsgBox(CVar(var_B8), &H30, " Deletion Error ", var_11C, var_13C)
  loc_1228DB2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F62EBC
  'Data Table: 4CD138
  Dim var_88 As Label
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F62D98: On Error Goto loc_F62E79
  loc_F62DA8: Me.LblUser.Caption = vbNullString
  loc_F62DBD: Me.LblLDt.Caption = vbNullString
  loc_F62DD3: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F62DD6:   Exit Sub
  loc_F62DD7: End If
  loc_F62DEE: If (Me.RecordCount > 0) Then
  loc_F62E06:   var_90 = "EDIT"
  loc_F62E14:   Call Proc_71_32_F32744(Proc_5_1_100CB50(var_90, Me))
  loc_F62E2A:   Set var_88 = Me.Txt
  loc_F62E30:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F62E38:   var_98.SetFocus
  loc_F62E47: Else
  loc_F62E68:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F62E78: End If
  loc_F62E78: Exit Sub
  loc_F62E79: ' Referenced from: F62D98
  loc_F62E81: Set var_88 = Err()
  loc_F62E87: Call 0.Method_arg_2C (var_90)
  loc_F62EA8: MsgBox(CVar(var_90), &H30, " Editing Error ", var_F8, var_118)
  loc_F62EBB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E163DC
  'Data Table: 4CD138
  loc_E163D1: Me.Global.Unload Me
  loc_E163D9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F230B8
  'Data Table: 4CD138
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F22FB8: On Error Goto loc_F23050
  loc_F22FC4: var_88 = Me.RecordCount
  loc_F22FD2: If (var_88 <= 0) Then
  loc_F22FDB:   var_B8 = "Information"
  loc_F22FF6:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F23006:   Exit Sub
  loc_F23007: End If
  loc_F2300E: var_10C = "Select RevMast.Code As SearchCode,RevMast.HSNCode,RevMast.Name FROM RevMast WHERE FlagAMR='Detail' and FLAGTYPE='FOM' And (RevMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_F23015: MemVar_1F920E4 = var_10C & "' or RevMast.LOGSITE_CODE='HO') Order by RevMast.Name"
  loc_F2301F: var_10C = "1500,3000"
  loc_F23025: Proc_6_126_F1BCC0(var_10C)
  loc_F23033: MemVar_1F92120 = Me
  loc_F2304A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2304F: Exit Sub
  loc_F23050: ' Referenced from: F22FB8
  loc_F23058: Set var_110 = Err()
  loc_F2305E: Call 0.Method_arg_1C (var_88)
  loc_F2306F: If (var_88 <> 0) Then
  loc_F2307A:   Set var_110 = Err()
  loc_F23080:   Call 0.Method_arg_2C (var_10C)
  loc_F230A1:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F230B4: End If
  loc_F230B4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2FB98
  'Data Table: 4CD138
  loc_E2FB88: Proc_5_0_110649C(&HFF, Me)
  loc_E2FB90: Call Proc_71_34_13FDA78(global_52)
  loc_E2FB95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2FA78
  'Data Table: 4CD138
  loc_E2FA68: Proc_5_0_110649C(&HFF, Me)
  loc_E2FA70: Call Proc_71_34_13FDA78(global_52)
  loc_E2FA75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2FAD8
  'Data Table: 4CD138
  loc_E2FAC8: Proc_5_0_110649C(&HFF, Me)
  loc_E2FAD0: Call Proc_71_34_13FDA78(global_52)
  loc_E2FAD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2FB38
  'Data Table: 4CD138
  loc_E2FB28: Proc_5_0_110649C(&HFF, Me)
  loc_E2FB30: Call Proc_71_34_13FDA78(global_52)
  loc_E2FB35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10D4390
  'Data Table: 4CD138
  Dim unk_4CD14B As Connection15
  Dim var_C4 As String
  Dim var_C8 As String
  Dim var_D0 As String
  Dim var_D8 As String
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_13E As Integer
  Dim var_BC As Variant
  Dim var_FC As Variant
  loc_10D40AC: On Error Goto loc_10D4346
  loc_10D40C5: unk_4CD14B.Execute "Select RevMast.Code As SearchCode,RevMast.Name FROM RevMast WHERE FlagAMR='Detail' and FLAGTYPE='FOM' Order by RevMast.Name", var_BC, -1
  loc_10D40D0: Set var_88 = var_C0
  loc_10D40ED: var_C4 = "Select RevMast.Name,RevMast.ShortName,cast(RevMast.Cost as Varchar(11)) as Cost,cast(RevMast.SaleRate as varchar(11)) as SaleRate,S.Name as AccName,T.Name as TaxName " & "FROM (RevMast"
  loc_10D4102: var_D0 = var_C4 & " left join SubGroup S on Revmast.ACCode=S.SubCode) " & " Left join TaxStru T on Revmast.Code=T.Code" & " where (RevMast.LOGSITE_CODE='"
  loc_10D4110: var_D8 = var_D0 & MemVar_1F92078 & "' or RevMast.LOGSITE_CODE='HO') and isnull(FLAGTYPE,'')='FOM' and isnull(FieldType,'')='C' Order by RevMast.Name"
  loc_10D4119: unk_4CD14B.Execute var_D8, var_BC, -1
  loc_10D4124: Set var_88 = var_C0
  loc_10D4142: var_DC = var_88.RecordCount
  loc_10D4150: If (var_DC = 0) Then
  loc_10D416C:   MsgBox("No Record Present For Printing", 0, var_FC, var_11C, var_13C)
  loc_10D417C:   Exit Sub
  loc_10D417D: End If
  loc_10D418C: var_C8 = MemVar_1F920B4 & "\RevMast.ttx"
  loc_10D4193: Set var_C0 = var_88 
  loc_10D419F: var_13E = CreateFieldDefFile(var_C0, var_C8, &HFF)
  loc_10D41A9: Set var_88 = var_C0
  loc_10D41AF: var_AC = CVar(var_13E) 'Integer
  loc_10D41B2: var_98 = var_AC 'Variant
  loc_10D41CE: var_C4 = MemVar_1F920B4 & "\RevMast.RPT"
  loc_10D41D7: Call 0.Method_arg_1C (var_C4, var_AC, var_C0)
  loc_10D41E2: MemVar_1F921E4 = var_C0
  loc_10D41FD: Call 0.Method_arg_90 (var_C0, var_DC, var_9A, 1)
  loc_10D4205: Call 0.Method_arg_24 (var_13E, var_C0)
  loc_10D4211: For var_142 =  To CInt(var_DC): var_C0 = var_142 'Integer
  loc_10D422A:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10D4232:   Call 0.Method_arg_20 (var_148)
  loc_10D423A:   Call 0.Method_arg_30 (var_C4)
  loc_10D4280:   If (Ucase(CVar(var_C4)) = Ucase("Title")) Then
  loc_10D4296:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10D429E:     Call 0.Method_arg_20 (var_148)
  loc_10D42A6:     Call 0.Method_arg_38 ("'Revenue Charge Master'")
  loc_10D42B2:   End If
  loc_10D42B5: Next var_142 'Integer
  loc_10D42D3: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_10D42DB: Call 0.Method_arg_2C (var_EC)
  loc_10D42E9: Call 0.Method_arg_150 (var_10C)
  loc_10D42F4: Call 0.Method_arg_50 (var_C4)
  loc_10D42FE: Set var_148 = Nothing
  loc_10D4318: Set var_C0 = MemVar_1F921E4 
  loc_10D4324: Proc_6_99_1483714(var_C0, 0, var_C4)
  loc_10D432F: MemVar_1F921E4 = var_C0
  loc_10D4342: Set var_88 = Nothing
  loc_10D4345: Exit Sub
  loc_10D4346: ' Referenced from: 10D40AC
  loc_10D434E: Set var_C0 = Err()
  loc_10D4354: Call 0.Method_arg_2C (var_C4, &HFF)
  loc_10D435F: Call 0.Method_arg_50 (var_C8)
  loc_10D437B: MsgBox(CVar(var_C4), &H10, CVar(var_C8), var_11C, var_13C)
  loc_10D438E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E442B4
  'Data Table: 4CD138
  Dim Me As Recordset15
  loc_E4428B: Me.Requery -1
  loc_E4429B: Me.Requery -1
  loc_E442AB: Me.Requery -1
  loc_E442B0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14B355C
  'Data Table: 4CD138
  Dim var_A0 As String
  Dim var_D8 As Variant
  Dim unk_4CD14B As Connection15
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_9C As Field20
  Dim var_FC As Variant
  Dim var_C8 As Variant
  Dim var_10C As Variant
  Dim Me As Recordset15
  Dim var_118 As TextBox
  Dim var_12C As TextBox
  Dim var_140 As TextBox
  Dim var_154 As TextBox
  Dim var_3E0 As Double
  Dim var_16C As TextBox
  Dim var_3E8 As Double
  Dim var_18C As TextBox
  Dim var_164 As String
  Dim var_1A0 As String
  Dim var_1C8 As Variant
  Dim var_2F0 As Variant
  Dim var_390 As Variant
  Dim var_B4 As Variant
  Dim var_1F0 As TextBox
  Dim var_248 As TextBox
  Dim var_3D4 As Variant
  Dim var_2A0 As TextBox
  Dim var_2F8 As TextBox
  Dim var_350 As TextBox
  Dim var_2C0 As Variant
  Dim var_318 As Variant
  Dim var_380 As Variant
  Dim var_500 As Variant
  Dim var_5D4 As Variant
  loc_14B2A14: On Error Goto loc_14B3507
  loc_14B2A1B: var_86 = CByte(0) 'Byte
  loc_14B2A2A: Set var_94 = Me.Txt
  loc_14B2A30: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_14B2A59: If (Proc_183_19_E8DAFC(var_98, "Name") = 0) Then
  loc_14B2A63:   Call Txt_GotFocus(CInt(0))
  loc_14B2A68:   Exit Sub
  loc_14B2A69: End If
  loc_14B2A74: Set var_94 = Me.Txt
  loc_14B2A7A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_14B2AA3: If (Proc_183_19_E8DAFC(var_98, "Short Name") = 0) Then
  loc_14B2AAD:   Call Txt_GotFocus(CInt(1))
  loc_14B2AB2:   Exit Sub
  loc_14B2AB3: End If
  loc_14B2ABE: Set var_94 = Me.Txt
  loc_14B2AC4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_14B2AED: If (Proc_183_19_E8DAFC(var_98, "Ledger A/C") = 0) Then
  loc_14B2AF7:   Call Txt_GotFocus(CInt(2))
  loc_14B2AFC:   Exit Sub
  loc_14B2AFD: End If
  loc_14B2B01: Set var_94 = Me.TopCtrl1
  loc_14B2B07: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_14B2B20: If (CStr() = "Add") Then
  loc_14B2B29:   var_D8 = 0
  loc_14B2B46:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From RevMast Where SITE_CODE='" & MemVar_1F92070
  loc_14B2B56:   unk_4CD14B.Execute CStr() & "' AND IsNumeric(substring(Code,3,4))=1", var_B4, -1
  loc_14B2B5E:   var_94 = var_94.Fields
  loc_14B2B66:   var_D8 = var_98.Item(var_98)
  loc_14B2B6E:   var_9C = var_9C.Value
  loc_14B2BA7:   var_FC = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_14B2BCD:   var_E8 = Format(CStr(var_E8), "0000")
  loc_14B2BD5:   var_10C = (1 + var_E8)
  loc_14B2BE0:   global_72 = CStr(var_10C)
  loc_14B2BF5: Else
  loc_14B2C12:   var_98 = Me.Fields.Item("Code")
  loc_14B2C29:   global_72 = CStr(var_98.Value)
  loc_14B2C3A: End If
  loc_14B2C43: unk_4CD14B.BeginTrans var_110
  loc_14B2C4C: var_86 = CByte(1) 'Byte
  loc_14B2C54: Set var_94 = Me.TopCtrl1
  loc_14B2C5A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_14B2C73: If (CStr(var_FC) = "Add") Then
  loc_14B2C84:   Set var_94 = Me.Txt
  loc_14B2C8A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_14B2CA5:   Set var_9C = Me.Txt
  loc_14B2CAB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118)
  loc_14B2CC6:   Set var_128 = Me.Txt
  loc_14B2CCC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_14B2CE7:   Set var_13C = Me.Txt
  loc_14B2CED:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_14B2D08:   Set var_150 = Me.Txt
  loc_14B2D0E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_154)
  loc_14B2D23:   var_3E0 = Val(var_154.Text)
  loc_14B2D34:   Set var_168 = Me.Txt
  loc_14B2D3A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_16C, var_170)
  loc_14B2D4F:   var_3E8 = Val(var_170)
  loc_14B2D60:   Set var_188 = Me.Txt
  loc_14B2D66:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_18C, var_190)
  loc_14B2D81:   Proc_6_7_F25D88(var_E8, Date)
  loc_14B2D91:   Set var_1EC = Me.Txt
  loc_14B2D97:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1F0)
  loc_14B2DB6:   Set var_244 = Me.Txt
  loc_14B2DBC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_248)
  loc_14B2DDB:   Set var_29C = Me.Txt
  loc_14B2DE1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_2A0)
  loc_14B2DF0:   Proc_6_17_EAA2B0(var_2C0, CVar(var_2A0))
  loc_14B2E00:   Set var_2F4 = Me.Txt
  loc_14B2E06:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_2F8)
  loc_14B2E15:   Proc_6_17_EAA2B0(var_318, CVar(var_2F8))
  loc_14B2E25:   Set var_34C = Me.Txt
  loc_14B2E2B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_350)
  loc_14B2E45:   Proc_6_17_EAA2B0(var_380, Trim(CVar(var_350)))
  loc_14B2E61:   var_A0 = "Insert Into RevMast(Code,Name,ShortName,ACCode,TaxStru,SaleRate,Cost,Site_Code,SysYN,Type,AppMode,FlagType,FlagAMR,DeskCode,U_Name,U_EntDt,U_AE,FIELDTYPE,logSite_Code,ACPosting,Nature,Active,TaxInc,HSNCode) Values('" & global_72
  loc_14B2EAC:   var_164 = var_A0 & "','" & var_98.Text & "','" & var_118.Text & "','" & var_12C.Tag & "','" & var_140.Tag & "'," & CStr(var_16C.Text)
  loc_14B2EE9:   var_1A0 = var_164 & "," & CStr(var_18C.Text) & ",'" & MemVar_1F92070 & "','N','" & var_190 & "','Percent','FOM','Detail','" & MemVar_1F92078
  loc_14B2F17:   var_1C8 = CVar(var_1A0 & "FOM','" & MemVar_1F920C8 & "',") & var_E8 & ",'A','C','" & CVar(MemVar_1F92078) 
  loc_14B2F56:   var_2F0 = var_1C8 & "','" & CVar(Proc_6_38_E68A98(CVar(var_1F0))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_248))) & "'," & var_2C0 & "," 
  loc_14B2F84:   unk_4CD14B.Execute CStr(var_2F0 & var_318 & "," & var_380 & ")"), var_3D4, -1
  loc_14B3039: Else
  loc_14B3044:   Set var_94 = Me.Txt
  loc_14B304A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_98)
  loc_14B3059:   Proc_6_17_EAA2B0(var_E8, CVar(var_98))
  loc_14B3069:   Set var_9C = Me.Txt
  loc_14B306F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_118)
  loc_14B307E:   Proc_6_17_EAA2B0(var_1C8, CVar(var_118))
  loc_14B3091:   Set var_128 = Me.Txt
  loc_14B3097:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_12C, var_A0)
  loc_14B309F:   var_3D8 = var_12C.Text
  loc_14B30B2:   Set var_13C = Me.Txt
  loc_14B30B8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_140)
  loc_14B30D3:   Set var_150 = Me.Txt
  loc_14B30D9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_154)
  loc_14B30F1:   Set var_168 = Me.Txt
  loc_14B30F7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_16C)
  loc_14B3116:   Set var_188 = Me.Txt
  loc_14B311C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_18C)
  loc_14B313E:   Set var_1EC = Me.Txt
  loc_14B3144:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1F0)
  loc_14B315F:   Set var_244 = Me.Txt
  loc_14B3165:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_248)
  loc_14B3181:   Proc_6_39_E7C810(var_410, CVar(Val(var_248.Text)))
  loc_14B3194:   Set var_29C = Me.Txt
  loc_14B319A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2A0)
  loc_14B31B6:   Proc_6_39_E7C810(var_470, CVar(Val(var_2A0.Text)))
  loc_14B31C9:   Set var_2F4 = Me.Txt
  loc_14B31CF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2F8)
  loc_14B31EA:   Set var_34C = Me.Txt
  loc_14B31F0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_350)
  loc_14B3208:   Set var_3D8 = Me.Txt
  loc_14B320E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_524)
  loc_14B3230:   Proc_183_7_EB0C44(var_614, Date)
  loc_14B3242:   var_C8 = "UPDATE RevMast SET Active="
  loc_14B324A:   var_FC = var_C8 & var_E8 
  loc_14B3253:   var_10C = var_FC & ",TaxInc=" 
  loc_14B329C:   var_2C0 = var_10C & var_1C8 & ",Name='" & CVar(var_A0) & "',ShortName='" & CVar(var_140.Text) & "',ACCode='" & CVar(var_154.Tag) & "',ACPosting='" 
  loc_14B32CC:   var_390 = var_2C0 & CVar(Proc_6_38_E68A98(CVar(var_16C))) & "',Nature='" & CVar(Proc_6_38_E68A98(CVar(var_18C))) & "',TaxStru='" & CVar(var_1F0.Tag) 
  loc_14B3312:   var_500 = var_390 & "',SaleRate=" & var_410 & ",Cost=" & var_470 & ",Type='" & CVar(var_2F8.Text) & "',AppMode='" & CVar(var_350.Text) 
  loc_14B3348:   var_5D4 = var_500 & "',HSNCode='" & Trim(CVar(var_524)) & "',SITE_CODE='" & CVar(MemVar_1F92070) & "',U_name='" & CVar(MemVar_1F920C8) 
  loc_14B3385:   unk_4CD14B.Execute CStr(var_5D4 & "',U_EntDt=" & var_614 & ",U_AE='E',FIELDTYPE='C' WHERE Code='" & CVar(global_72) & "'"), var_6A4, -1
  loc_14B343B: End If
  loc_14B3441: unk_4CD14B.CommitTrans
  loc_14B344A: var_86 = CByte(0) 'Byte
  loc_14B344E: Call Proc_71_37_F1F168(var_6A8)
  loc_14B345E: Me.Requery -1
  loc_14B346E: Me.Requery -1
  loc_14B349B: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_14B34AB: Set var_94 = Me.TopCtrl1
  loc_14B34B1: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C8)
  loc_14B34CA: If (CStr(var_E8) = "Add") Then
  loc_14B34CD:   Call TopCtrl1_UnknownEvent_A()
  loc_14B34D2:   Exit Sub
  loc_14B34D3: End If
  loc_14B34E8: var_A0 = "INI"
  loc_14B34F6: Call Proc_71_32_F32744(Proc_5_1_100CB50(var_A0, Me))
  loc_14B3501: Call Proc_71_34_13FDA78(global_52)
  loc_14B3506: Exit Sub
  loc_14B3507: ' Referenced from: 14B2A14
  loc_14B3510: If (CInt(var_86) = 1) Then
  loc_14B3519:   unk_4CD14B.RollbackTrans
  loc_14B351E: End If
  loc_14B3526: Set var_94 = Err()
  loc_14B352C: Call 0.Method_arg_2C (var_A0)
  loc_14B3545: MsgBox(CVar(var_A0), &H10, var_E8, var_FC, var_10C)
  loc_14B3558: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_9 'F4E2E4
  'Data Table: 4CD138
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4E1DB: Me.DGLedgerAc.Visible = False
  loc_F4E1FA: If (Me.RecordCount > 0) Then
  loc_F4E239:   Set var_B4 = Me.Txt
  loc_F4E23F:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4E247:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4E27A:   var_B0 = Me.Fields.Item("Name")
  loc_F4E299:   Set var_B4 = Me.Txt
  loc_F4E29F:   Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4E2A7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4E2BD: End If
  loc_F4E2C8: Set var_A8 = Me.Txt
  loc_F4E2CE: Call 0.Method_DGLedgerAc_UnknownEvent_90 (CInt(2))
  loc_F4E2D6: var_B0.SetFocus
  loc_F4E2E2: Exit Sub
End Sub

Private Sub DGLedgerAc_UnknownEvent_1F 'EA844C
  'Data Table: 4CD138
  Dim var_A8 As Variant
  loc_EA83CC: Set var_88 = Me.DGLedgerAc
  loc_EA83F6: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA83FE: Set var_BC = Me.DGLedgerAc
  loc_EA843A: Proc_6_138_106D6F8(Me.DGLedgerAc, global_60, CInt(2), Me.FGPoint)
  loc_EA8448: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC07C4
  'Data Table: 4CD138
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC073A: On Error Goto loc_EC077F
  loc_EC0743: Me.MoveFirst
  loc_EC075D: var_8C = "code='" & MyValue
  loc_EC076D: Me.Find var_8C & "'", 0, 1
  loc_EC0779: Call Proc_71_34_13FDA78(var_A0)
  loc_EC077E: Exit Sub
  loc_EC077F: ' Referenced from: EC073A
  loc_EC0787: Set var_A4 = Err()
  loc_EC078D: Call 0.Method_arg_2C (var_8C)
  loc_EC07AE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC07C1: Exit Sub
  loc_EC07C2: Exit Sub
End Sub

Public Sub Proc_71_32_F32744(arg_C) 'F32744
  'Data Table: 4CD138
  Dim var_98 As TextBox
  loc_F32636: Set var_8C = Me.Txt
  loc_F3263C: Call 0.Method_Proc_71_32_F32744C (var_8E, var_86)
  loc_F3264C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F32662:   Set var_8C = Me.Txt
  loc_F32668:   Call 0.Method_Proc_71_32_F327440 (CInt(var_86), var_98)
  loc_F32670:   var_98.Enabled = arg_C
  loc_F3267F: Next var_92 'Byte
  loc_F32693: Set var_8C = Me.Txt
  loc_F32699: Call 0.Method_Proc_71_32_F327440 (CInt(8), var_98)
  loc_F326B8: If (var_98.Text = vbNullString) Then
  loc_F326C9:   Set var_8C = Me.Txt
  loc_F326CF:   Call 0.Method_Proc_71_32_F327440 (CInt(8), var_98)
  loc_F326D7:   var_98.Text = "Amount"
  loc_F326E3: End If
  loc_F326F1: Set var_8C = Me.Txt
  loc_F326F7: Call 0.Method_Proc_71_32_F327440 (CInt(7), var_98)
  loc_F32716: If (var_98.Text = vbNullString) Then
  loc_F32727:   Set var_8C = Me.Txt
  loc_F3272D:   Call 0.Method_Proc_71_32_F327440 (CInt(7), var_98)
  loc_F32735:   var_98.Text = "Cr"
  loc_F32741: End If
  loc_F32741: Exit Sub
End Sub

Public Sub Proc_71_33_E7B8A4
  'Data Table: 4CD138
  Dim var_98 As TextBox
  loc_E7B852: Set var_8C = Me.Txt
  loc_E7B858: Call 0.Method_Proc_71_33_E7B8A4C (var_8E, var_86)
  loc_E7B868: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7B87E:   Set var_8C = Me.Txt
  loc_E7B884:   Call 0.Method_Proc_71_33_E7B8A40 (CInt(var_86), var_98)
  loc_E7B88C:   var_98.Text = vbNullString
  loc_E7B89B: Next var_92 'Byte
  loc_E7B8A1: Exit Sub
End Sub

Public Sub Proc_71_34_13FDA78
  'Data Table: 4CD138
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_4CD14B As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Variant
  Dim var_11C As TextBox
  loc_13FD074: On Error Goto loc_13FDA33
  loc_13FD0CD: unk_4CD14B.Execute CStr("Select U_Name,U_AE,U_EntDt From revmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_13FD0D8: Set var_88 = var_118
  loc_13FD12C: var_118 = var_88.Fields
  loc_13FD195: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_13FD1DA: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_13FD254: var_11C = var_88.Fields.Item("U_AE")
  loc_13FD2B5: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_13FD2FA: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_13FD338: Proc_183_45_E5C118(global_52)
  loc_13FD354: If (Me.RecordCount <= 0) Then
  loc_13FD357:   Call Proc_71_33_E7B8A4()
  loc_13FD35F: Else
  loc_13FD393:   global_72 = CStr(Me.Fields.Item("Name").Value)
  loc_13FD3E0:   Set var_118 = Me.Txt
  loc_13FD3E6:   Call 0.Method_Proc_71_34_13FDA780 (CInt(0), var_11C)
  loc_13FD3EE:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13FD440:   Set var_118 = Me.Txt
  loc_13FD446:   Call 0.Method_Proc_71_34_13FDA780 (CInt(0), var_11C)
  loc_13FD44E:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_13FD4A0:   Set var_118 = Me.Txt
  loc_13FD4A6:   Call 0.Method_Proc_71_34_13FDA780 (CInt(1), var_11C)
  loc_13FD4AE:   var_11C.Text = CStr(Me.Fields.Item("ShortName").Value)
  loc_13FD4FD:   Set var_118 = Me.Txt
  loc_13FD503:   Call 0.Method_Proc_71_34_13FDA780 (CInt(2), var_11C)
  loc_13FD50B:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LedgerName")))
  loc_13FD558:   Set var_118 = Me.Txt
  loc_13FD55E:   Call 0.Method_Proc_71_34_13FDA780 (CInt(2), var_11C)
  loc_13FD566:   var_11C.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("LedgerCode")))
  loc_13FD5B3:   Set var_118 = Me.Txt
  loc_13FD5B9:   Call 0.Method_Proc_71_34_13FDA780 (CInt(3), var_11C)
  loc_13FD5C1:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxName")))
  loc_13FD60E:   Set var_118 = Me.Txt
  loc_13FD614:   Call 0.Method_Proc_71_34_13FDA780 (CInt(3), var_11C)
  loc_13FD61C:   var_11C.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxCode")))
  loc_13FD669:   Set var_118 = Me.Txt
  loc_13FD66F:   Call 0.Method_Proc_71_34_13FDA780 (CInt(&HC), var_11C)
  loc_13FD677:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxInc")))
  loc_13FD6E0:   Set var_118 = Me.Txt
  loc_13FD6E6:   Call 0.Method_Proc_71_34_13FDA780 (CInt(4), var_11C, CStr(Format(CVar(Me.Fields.Item("SaleRate")), "0.00")))
  loc_13FD6EE:   var_11C.Text = 1
  loc_13FD75D:   Set var_118 = Me.Txt
  loc_13FD763:   Call 0.Method_Proc_71_34_13FDA780 (CInt(5), var_11C, CStr(Format(CVar(Me.Fields.Item("Cost")), "0.00")))
  loc_13FD76B:   var_11C.Text = 1
  loc_13FD7BE:   Set var_118 = Me.Txt
  loc_13FD7C4:   Call 0.Method_Proc_71_34_13FDA780 (CInt(9), var_11C)
  loc_13FD7CC:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ACPosting")), 1)
  loc_13FD81A:   var_114 = "System Defined"
  loc_13FD82D:   var_F0 = (Me.Fields.Item("SysYN").Value = "Y") 'Variant
  loc_13FD84D:   Me.LblSysYN.Caption = CStr(IIf(var_F0, var_114, "User Defined"))
  loc_13FD8A4:   Set var_118 = Me.Txt
  loc_13FD8AA:   Call 0.Method_Proc_71_34_13FDA780 (CInt(7), var_11C)
  loc_13FD8B2:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Type")))
  loc_13FD8FF:   Set var_118 = Me.Txt
  loc_13FD905:   Call 0.Method_Proc_71_34_13FDA780 (CInt(&HA), var_11C)
  loc_13FD90D:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Nature")))
  loc_13FD95A:   Set var_118 = Me.Txt
  loc_13FD960:   Call 0.Method_Proc_71_34_13FDA780 (CInt(&HD), var_11C)
  loc_13FD968:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("HSNCode")))
  loc_13FD9B5:   Set var_118 = Me.Txt
  loc_13FD9BB:   Call 0.Method_Proc_71_34_13FDA780 (CInt(8), var_11C)
  loc_13FD9C3:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("AppMode")))
  loc_13FDA02:   var_F4 = Proc_6_38_E68A98(CVar(Me.Fields.Item("Active")))
  loc_13FDA10:   Set var_118 = Me.Txt
  loc_13FDA16:   Call 0.Method_Proc_71_34_13FDA780 (CInt(&HB), var_11C)
  loc_13FDA1E:   var_11C.Text = var_F4
  loc_13FDA32: End If
  loc_13FDA32: Exit Sub
  loc_13FDA33: ' Referenced from: 13FD074
  loc_13FDA3B: Set var_8C = Err()
  loc_13FDA41: Call 0.Method_arg_2C (var_F4)
  loc_13FDA62: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_13FDA75: Exit Sub
End Sub

Public Sub Proc_71_35_108873C
  'Data Table: 4CD138
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4CD14B As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_10884CF: If (Me.RecordCount = 0) Then
  loc_10884D2:   Proc_71_35_108873C = 
  loc_10884D8: End If
  loc_10884DC: Set var_90 = Me.TopCtrl1
  loc_10884E2: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10884FB: If (CStr() = "Add") Then
  loc_1088539:   Set var_90 = Me.Txt
  loc_108853F:   Call 0.Method_Proc_71_35_108873C0 (CInt(0), var_A8, var_AC, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1088560:   unk_4CD14B.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1088570:    = var_D0.Item()
  loc_1088578:    = var_E4.Value
  loc_10885A9:   If (var_A8.Text.Fields > 0) Then
  loc_10885C7:     var_A0 = "Duplicate Name"
  loc_10885CD:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_10885E8:     Set var_90 = Me.Txt
  loc_10885EE:     Call 0.Method_Proc_71_35_108873C0 (CInt(0))
  loc_10885F6:     var_A8.SetFocus
  loc_1088607:     Proc_71_35_108873C = &HFF
  loc_108860D:   End If
  loc_1088610: Else
  loc_108864B:   Set var_90 = Me.Txt
  loc_1088651:   Call 0.Method_Proc_71_35_108873C0 (CInt(0), var_A8, var_AC, "Select Count(*) From RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1088683:   unk_4CD14B.Execute var_D0 & var_AC & "' And Name<>'" & global_72 & "'", 0, var_E4
  loc_1088693:    = var_D0.Item(var_A8)
  loc_108869B:    = var_E4.Value
  loc_10886D0:   If (var_A8.Text.Fields > 0) Then
  loc_10886F4:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108870F:     Set var_90 = Me.Txt
  loc_1088715:     Call 0.Method_Proc_71_35_108873C0 (CInt(0))
  loc_108871D:     var_A8.SetFocus
  loc_108872E:     Proc_71_35_108873C = &HFF
  loc_1088734:   End If
  loc_1088734: End If
  loc_1088734: Proc_71_35_108873C = var_A8
End Sub

Public Sub Proc_71_36_10B10F0
  'Data Table: 4CD138
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_A8 As TextBox
  Dim var_B8 As String
  Dim unk_4CD14B As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_144 As Fields15
  Dim var_148 As Field20
  loc_10B0E5F: If (Me.RecordCount = 0) Then
  loc_10B0E62:   Proc_71_36_10B10F0 = 
  loc_10B0E68: End If
  loc_10B0E6C: Set var_90 = Me.TopCtrl1
  loc_10B0E72: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10B0E8B: If (CStr() = "Add") Then
  loc_10B0EC9:   Set var_90 = Me.Txt
  loc_10B0ECF:   Call 0.Method_Proc_71_36_10B10F00 (CInt(1), var_A8, var_AC, "Select Count(*) From RevMast Where LogSite_Code='" & MemVar_1F92078 & "' and ShortName='", var_A0, -1)
  loc_10B0EE7:   var_B8 = var_D0 & var_AC & "'"
  loc_10B0EF0:   unk_4CD14B.Execute var_B8, 0, var_E4
  loc_10B0F00:    = var_D0.Item()
  loc_10B0F08:    = var_E4.Value
  loc_10B0F39:   If (var_A8.Text.Fields > 0) Then
  loc_10B0F47:     var_F4 = "Information"
  loc_10B0F57:     var_A0 = "Duplicate Short Name"
  loc_10B0F5D:     MsgBox(var_A0, &H40, var_F4, var_114, var_134)
  loc_10B0F78:     Set var_90 = Me.Txt
  loc_10B0F7E:     Call 0.Method_Proc_71_36_10B10F00 (CInt(1))
  loc_10B0F86:     var_A8.SetFocus
  loc_10B0F97:     Proc_71_36_10B10F0 = &HFF
  loc_10B0F9D:   End If
  loc_10B0FA0: Else
  loc_10B0FA6:   var_E0 = 0
  loc_10B0FDB:   Set var_90 = Me.Txt
  loc_10B0FE1:   Call 0.Method_Proc_71_36_10B10F00 (CInt(1), var_A8, var_AC, "Select Count(*) From RevMast Where LogSite_Code='" & MemVar_1F92078 & "' and ShortName='", var_A0, -1)
  loc_10B100A:   Set var_CC = Me.Txt
  loc_10B1010:   Call 0.Method_Proc_71_36_10B10F00 (CInt(0), var_D0, var_B8, var_144 & var_AC & "' And Code<>'")
  loc_10B1018:   var_E0 = var_D0.Tag
  loc_10B1031:   unk_4CD14B.Execute var_148 & var_B8 & "'", var_F4, var_A8
  loc_10B1039:    = var_A8.Text.Fields
  loc_10B1041:    = var_144.Item()
  loc_10B1049:    = var_148.Value
  loc_10B1084:   If (var_F4 > 0) Then
  loc_10B10A8:     MsgBox("Duplicate Short Name", &H40, "Information", var_114, var_134)
  loc_10B10C3:     Set var_90 = Me.Txt
  loc_10B10C9:     Call 0.Method_Proc_71_36_10B10F00 (CInt(1))
  loc_10B10D1:     var_A8.SetFocus
  loc_10B10E2:     Proc_71_36_10B10F0 = &HFF
  loc_10B10E8:   End If
  loc_10B10E8: End If
  loc_10B10E8: Proc_71_36_10B10F0 = var_A8
End Sub

Public Sub Proc_71_37_F1F168
  'Data Table: 4CD138
  loc_F1F078: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F1F08A:   Me.DGHelp.Visible = False
  loc_F1F092: End If
  loc_F1F0AE: If (CBool(Me.DGLedgerAc.Visible) = &HFF) Then
  loc_F1F0C0:   Me.DGLedgerAc.Visible = False
  loc_F1F0C8: End If
  loc_F1F0E4: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_F1F0F6:   Me.DGTaxStru.Visible = False
  loc_F1F0FE: End If
  loc_F1F119: If (Me.FrmList.Visible = &HFF) Then
  loc_F1F128:   Me.FrmList.Visible = False
  loc_F1F130: End If
  loc_F1F14C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F1F15E:   Me.FGPoint.Visible = False
  loc_F1F166: End If
  loc_F1F166: Exit Sub
End Sub

Public Sub Proc_71_38_10089E0
  'Data Table: 4CD138
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_10087DE: Set var_88 = Me.Txt
  loc_10087E4: Call 0.Method_Proc_71_38_10089E00 (CInt(0), var_8C)
  loc_1008803: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_100881F: Set var_B4 = Me.Txt
  loc_1008825: Call 0.Method_Proc_71_38_10089E00 (CInt(0), var_B8)
  loc_1008840: Set var_88 = Me.Txt
  loc_1008846: Call 0.Method_Proc_71_38_10089E00 (CInt(0), var_8C)
  loc_100885E: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_100886D: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_100888D: Set var_88 = Me.Txt
  loc_1008893: Call 0.Method_Proc_71_38_10089E00 (CInt(2), var_8C)
  loc_10088B2: Me.DGLedgerAc.Left = CVar(var_8C.Left)
  loc_10088CE: Set var_B4 = Me.Txt
  loc_10088D4: Call 0.Method_Proc_71_38_10089E00 (CInt(2), var_B8)
  loc_10088EF: Set var_88 = Me.Txt
  loc_10088F5: Call 0.Method_Proc_71_38_10089E00 (CInt(2), var_8C)
  loc_100890D: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_100891C: Me.DGLedgerAc.Top = CVar(var_8C.Left)
  loc_100893C: Set var_88 = Me.Txt
  loc_1008942: Call 0.Method_Proc_71_38_10089E00 (CInt(3), var_8C)
  loc_1008961: Me.DGTaxStru.Left = CVar(var_8C.Left)
  loc_100897D: Set var_B4 = Me.Txt
  loc_1008983: Call 0.Method_Proc_71_38_10089E00 (CInt(3), var_B8)
  loc_100899E: Set var_88 = Me.Txt
  loc_10089A4: Call 0.Method_Proc_71_38_10089E00 (CInt(3), var_8C)
  loc_10089BC: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_10089CB: Me.DGTaxStru.Top = CVar(var_8C.Left)
  loc_10089DD: Exit Sub
End Sub

Public Sub Proc_71_39_1098A30
  'Data Table: 4CD138
  Dim unk_4CD14B As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_90 As Recordset15
  Dim var_188 As Integer
  Dim var_114 As Variant
  Dim var_174 As Recordset15
  Dim var_178 As Fields15
  Dim var_18C As Field20
  loc_10987DC: unk_4CD14B.Execute CStr("Select taxcode from taxstru where code='" & Trim(arg_14) & "'"), var_114, -1
  loc_10987E7: Set var_88 = var_118
  loc_10987FB: ' Referenced from: 1098A29
  loc_109880A: If Not(var_88.EOF) Then
  loc_1098872:   var_150 = "Select Code from taxstru where taxcode='" & var_88.Fields.Item("TaxCode").Value & "' and Code not in ('" & Trim(arg_14) & "')" 
  loc_1098880:   unk_4CD14B.Execute CStr(var_150), var_170, -1
  loc_109888B:   Set var_90 = var_174
  loc_10988AB:   ' Referenced from: 1098989
  loc_10988BA:   If Not(var_90.EOF) Then
  loc_10988C3:     var_188 = 0
  loc_1098924:     var_130 = "Select Count(*) from RevMast where TaxStru='" & var_90.Fields.Item("Code").Value & "' and DeskCode='" & CVar(arg_10) & "'" 
  loc_1098932:     unk_4CD14B.Execute CStr(var_130), var_150, -1
  loc_109893A:     var_174 = var_174.Fields
  loc_1098942:     var_188 = var_178.Item(var_178)
  loc_109894A:     var_18C = var_18C.Value
  loc_109897B:     If (var_170 > 0) Then
  loc_109897E:       GoTo loc_1098A21
  loc_1098981:     End If
  loc_1098984:     var_90.MoveNext
  loc_1098989:     GoTo loc_10988AB
  loc_109898C:   End If
  loc_10989FF:   unk_4CD14B.Execute CStr("Delete From RevMast Where TaxCode='" & var_88.Fields.Item("TaxCode").Value & "' and DeskCode='" & Trim(arg_10) & "'"), var_170, -1
  loc_1098A21:   ' Referenced from: 109897E
  loc_1098A24:   var_88.MoveNext
  loc_1098A29:   GoTo loc_10987FB
  loc_1098A2C: End If
  loc_1098A2C: Exit Sub
End Sub
