VERSION 5.00
Begin VB.Form frmFixedChargeMast
  Caption = "Fixed Charge Master"
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
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11355
    Height = 450
    TabIndex = 42
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4185
    Top = 2040
    Width = 2505
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
  Begin Frame FrmList1
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 11610
    Top = 4980
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 36
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
    Begin ListView ListView1
      Left = 0
      Top = 0
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 37
    End
  End
  Begin DataGrid DGRevenue
    Left = 7755
    Top = 2340
    Width = 5655
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 26
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4185
    Top = 5505
    Width = 1380
    Height = 285
    TabIndex = 13
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4185
    Top = 5190
    Width = 1380
    Height = 285
    TabIndex = 12
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
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4185
    Top = 4875
    Width = 1380
    Height = 285
    TabIndex = 11
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
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4185
    Top = 3930
    Width = 2505
    Height = 285
    TabIndex = 8
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
  Begin PictureBox Picture2
    Picture = "frmFixedChargeMast.frx":0
    Left = 12690
    Top = 1500
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 31
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
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 9615
    Top = 5700
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 28
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
      Left = 0
      Top = -15
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 29
    End
  End
  Begin DataGrid DGHelp
    Left = 7935
    Top = 1560
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 25
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4185
    Top = 3300
    Width = 2505
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4185
    Top = 2985
    Width = 1380
    Height = 285
    TabIndex = 5
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
    ForeColor = &HC00000&
    Left = 4185
    Top = 1410
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
    Left = 4185
    Top = 4245
    Width = 1380
    Height = 285
    TabIndex = 9
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
    ForeColor = &HC00000&
    Left = 4185
    Top = 3615
    Width = 2505
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4185
    Top = 4560
    Width = 1380
    Height = 285
    TabIndex = 10
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4185
    Top = 2670
    Width = 3990
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 35
    Locked = -1  'True
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
    Left = 4185
    Top = 2355
    Width = 3990
    Height = 285
    TabIndex = 3
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
    Left = 4185
    Top = 1725
    Width = 1380
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
    Left = 7500
    Top = 5640
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 24
  End
  Begin DataGrid DGTaxStru
    Left = 8250
    Top = 855
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 27
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5925
    Top = 6375
    Width = 2790
    Height = 285
    TabIndex = 41
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
    Left = 2550
    Top = 6375
    Width = 2880
    Height = 255
    TabIndex = 40
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
    TabIndex = 39
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
  Begin Label LblName
    Caption = "Charge Category"
    Index = 3
    ForeColor = &HC00000&
    Left = 2535
    Top = 2040
    Width = 1605
    Height = 240
    TabIndex = 38
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
    Caption = "Extra Child"
    Index = 7
    ForeColor = &HC00000&
    Left = 2535
    Top = 5490
    Width = 1050
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
  Begin Label LblLedgerAc
    Caption = "Extra Adult"
    Index = 6
    ForeColor = &HC00000&
    Left = 2535
    Top = 5175
    Width = 1050
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
  Begin Label LblLedgerAc
    Caption = "Child"
    Index = 5
    ForeColor = &HC00000&
    Left = 2535
    Top = 4860
    Width = 495
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
  Begin Label LblName
    Caption = "Charge Type"
    Index = 1
    ForeColor = &HC00000&
    Left = 2535
    Top = 3930
    Width = 1215
    Height = 240
    TabIndex = 32
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
    Caption = "Yes/No"
    ForeColor = &H80&
    Left = 5580
    Top = 3015
    Width = 645
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
    Caption = "Print Option"
    Index = 4
    ForeColor = &HC00000&
    Left = 2535
    Top = 3300
    Width = 1140
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
  Begin Label LblLedgerAc
    Caption = "Tax Inclusive"
    Index = 3
    ForeColor = &HC00000&
    Left = 2535
    Top = 2985
    Width = 1260
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
    Left = 5580
    Top = 1740
    Width = 585
    Height = 240
    Visible = 0   'False
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
    Caption = "Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 2535
    Top = 1410
    Width = 555
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
    Caption = "Flat Rate"
    Index = 4
    ForeColor = &HC00000&
    Left = 2535
    Top = 4245
    Width = 855
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
    Left = 2535
    Top = 2670
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
    Caption = "Posting Method"
    Index = 6
    ForeColor = &HC00000&
    Left = 2535
    Top = 3615
    Width = 1470
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
  Begin Label LblLedgerAc
    Caption = "Adult"
    Index = 1
    ForeColor = &HC00000&
    Left = 2535
    Top = 4545
    Width = 495
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
  Begin Label LblName
    Caption = "Revenue Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 2535
    Top = 2355
    Width = 1455
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
    Left = 2535
    Top = 1725
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

Attribute VB_Name = "frmFixedChargeMast"


Private Sub DGHelp_UnknownEvent_9 'F491C4
  'Data Table: 4C6A50
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F490BB: Me.DGHelp.Visible = False
  loc_F490DA: If (Me.RecordCount > 0) Then
  loc_F49119:   Set var_B4 = Me.Txt
  loc_F4911F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F49127:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4915A:   var_B0 = Me.Fields.Item("Name")
  loc_F49179:   Set var_B4 = Me.Txt
  loc_F4917F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F49187:   var_B8.Text = CStr(var_B0.Value)
  loc_F4919D: End If
  loc_F491A8: Set var_A8 = Me.Txt
  loc_F491AE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F491B6: var_B0.SetFocus
  loc_F491C2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA7FB4
  'Data Table: 4C6A50
  Dim var_A8 As Variant
  loc_EA7F34: Set var_88 = Me.DGHelp
  loc_EA7F5E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7F66: Set var_BC = Me.DGHelp
  loc_EA7FA2: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0), Me.FGPoint)
  loc_EA7FB0: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F486C4
  'Data Table: 4C6A50
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F485BB: Me.DGTaxStru.Visible = False
  loc_F485DA: If (Me.RecordCount > 0) Then
  loc_F48619:   Set var_B4 = Me.Txt
  loc_F4861F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3), var_B8)
  loc_F48627:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4865A:   var_B0 = Me.Fields.Item("Name")
  loc_F48679:   Set var_B4 = Me.Txt
  loc_F4867F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3), var_B8)
  loc_F48687:   var_B8.Text = CStr(var_B0.Value)
  loc_F4869D: End If
  loc_F486A8: Set var_A8 = Me.Txt
  loc_F486AE: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(3))
  loc_F486B6: var_B0.SetFocus
  loc_F486C2: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'EA82C4
  'Data Table: 4C6A50
  Dim var_A8 As Variant
  loc_EA8244: Set var_88 = Me.DGTaxStru
  loc_EA826E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA8276: Set var_BC = Me.DGTaxStru
  loc_EA82B2: Proc_6_138_106D6F8(Me.DGTaxStru, global_64, CInt(3), Me.FGPoint)
  loc_EA82C0: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1377E30
  'Data Table: 4C6A50
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_AC As String
  Dim var_88 As ListView
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_90 As Fields15
  loc_13775C6: Set var_88 = Me.Txt
  loc_13775CC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_13775DA: Proc_6_74_E226B0(var_8C)
  loc_13775E6: Call Proc_140_38_F1E88C(var_8C)
  loc_13775EB: On Error Goto loc_1377DEB
  loc_13775F1: var_92 = Index
  loc_13775FC: If (var_92 = CInt(0)) Then
  loc_1377616:   If (Me.RecordCount > 0) Then
  loc_1377624:     Set var_8C = Me.FGPoint
  loc_137763C:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_137764A:   End If
  loc_137764D: Else
  loc_1377655:   If (var_92 = CInt(&HD)) Then
  loc_1377665:     ReDim var_9C(0 To 1)
  loc_137767C:     var_9C(0) = "Meal Charges"
  loc_137768B:     var_9C(1) = "Other Charges"
  loc_13776BB:     Me.ListView1.Tag = CVar(CStr(&HD))
  loc_13776CA:     Set var_D4 = Me.ListView1
  loc_13776E5:     Set var_8C = Me.Txt
  loc_13776FF:     Set global_112 = Proc_6_66_EFF8FC(var_D4, var_8C, Index, Array(var_9C))
  loc_137771D:     Set var_88 = Me.Txt
  loc_1377723:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC, 2)
  loc_137772B:     global_96 = var_8C.Text
  loc_137773D:     Set var_90 = Me.Txt
  loc_1377743:     Call 0.Method_Txt_GotFocus0 (Index, var_D4, var_DC)
  loc_137774B:     var_D4.Tag = var_8C
  loc_1377761:   Else
  loc_1377769:     If (var_92 = CInt(2)) Then
  loc_1377783:       If (Me.RecordCount > 0) Then
  loc_1377791:         Set var_8C = Me.FGPoint
  loc_13777A9:         Proc_6_137_1193554(Me.DGRevenue, global_60, Index)
  loc_13777B7:       End If
  loc_1377805:       Set var_88 = Me.Txt
  loc_137780B:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC)
  loc_1377813:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_137782B:       If (var_8C Or (var_DC = vbNullString)) Then
  loc_137782E:         Exit Sub
  loc_137782F:       End If
  loc_137783C:       Set var_88 = Me.Txt
  loc_1377842:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_137784A:       var_DC = var_8C.Text
  loc_137785C:       var_AC = "Name"
  loc_1377897:       If CBool(CVar(var_DC) <> Me.Fields.Item(var_AC).Value) Then
  loc_13778A0:         Me.MoveFirst
  loc_13778C3:         Set var_88 = Me.Txt
  loc_13778C9:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC, "Name ='")
  loc_13778D1:         0 = var_8C.Text
  loc_13778EA:         Me.Find 1 & var_DC & "'", var_AC, var_92
  loc_13778FF:       End If
  loc_1377902:     Else
  loc_137790A:       If (var_92 = CInt(3)) Then
  loc_1377924:         If (Me.RecordCount > 0) Then
  loc_1377932:           Set var_8C = Me.FGPoint
  loc_137794A:           Proc_6_137_1193554(Me.DGTaxStru, global_64)
  loc_1377958:         End If
  loc_13779A6:         Set var_88 = Me.Txt
  loc_13779AC:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC)
  loc_13779B4:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13779CC:         If (Index Or (var_DC = vbNullString)) Then
  loc_13779CF:           Exit Sub
  loc_13779D0:         End If
  loc_13779DD:         Set var_88 = Me.Txt
  loc_13779E3:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13779EB:         var_DC = var_8C.Text
  loc_13779FD:         var_AC = "Name"
  loc_1377A38:         If CBool(CVar(var_DC) <> Me.Fields.Item(var_AC).Value) Then
  loc_1377A41:           Me.MoveFirst
  loc_1377A64:           Set var_88 = Me.Txt
  loc_1377A6A:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC, "Name ='")
  loc_1377A72:           0 = var_8C.Text
  loc_1377A8B:           Me.Find 1 & var_DC & "'", var_AC, var_8C
  loc_1377AA0:         End If
  loc_1377AA3:       Else
  loc_1377AAB:         If (var_92 = CInt(8)) Then
  loc_1377ABB:           ReDim var_9C(0 To 1)
  loc_1377AD2:           var_9C(0) = "Print Seperately"
  loc_1377AE1:           var_9C(1) = "Add to Rate"
  loc_1377AF8:           global_76 = Array(var_9C)
  loc_1377B11:           Me.ListView.Tag = CVar(CStr(8))
  loc_1377B20:           Set var_D4 = Me.ListView
  loc_1377B3B:           Set var_8C = Me.Txt
  loc_1377B55:           Set global_92 = Proc_6_66_EFF8FC(var_D4, var_8C, Index)
  loc_1377B73:           Set var_88 = Me.Txt
  loc_1377B79:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC)
  loc_1377B81:           global_76 = var_8C.Text
  loc_1377B93:           Set var_90 = Me.Txt
  loc_1377B99:           Call 0.Method_Txt_GotFocus0 (Index, var_D4, var_DC)
  loc_1377BA1:           var_D4.Tag = 2
  loc_1377BB7:         Else
  loc_1377BBF:           If (var_92 = CInt(9)) Then
  loc_1377BCF:             ReDim var_9C(0 To 1)
  loc_1377BE6:             var_9C(0) = "Per Person Amount"
  loc_1377BF5:             var_9C(1) = "Flat Rate"
  loc_1377C0C:             global_76 = Array(var_9C)
  loc_1377C25:             Me.ListView.Tag = CVar(CStr(9))
  loc_1377C34:             Set var_D4 = Me.ListView
  loc_1377C4F:             Set var_8C = Me.Txt
  loc_1377C69:             Set global_92 = Proc_6_66_EFF8FC(var_D4, var_8C, Index, global_76)
  loc_1377C87:             Set var_88 = Me.Txt
  loc_1377C8D:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC)
  loc_1377C95:             2 = var_8C.Text
  loc_1377CA7:             Set var_90 = Me.Txt
  loc_1377CAD:             Call 0.Method_Txt_GotFocus0 (Index, var_D4, var_DC)
  loc_1377CB5:             var_D4.Tag = global_76
  loc_1377CCB:           Else
  loc_1377CD3:             If (var_92 = CInt(6)) Then
  loc_1377CE3:               ReDim var_9C(0 To 1)
  loc_1377CFA:               var_9C(0) = "Post Daily"
  loc_1377D09:               var_9C(1) = "Post Once"
  loc_1377D20:               global_96 = Array(var_9C)
  loc_1377D39:               Me.ListView1.Tag = CVar(CStr(6))
  loc_1377D48:               Set var_D4 = Me.ListView1
  loc_1377D63:               Set var_8C = Me.Txt
  loc_1377D7D:               Set global_112 = Proc_6_66_EFF8FC(var_D4, var_8C, Index, global_96)
  loc_1377D9B:               Set var_88 = Me.Txt
  loc_1377DA1:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC)
  loc_1377DA9:               2 = var_8C.Text
  loc_1377DBB:               Set var_90 = Me.Txt
  loc_1377DC1:               Call 0.Method_Txt_GotFocus0 (Index, var_D4, var_DC)
  loc_1377DC9:               var_D4.Tag = global_96
  loc_1377DDF:             Else
  loc_1377DE7:               If (var_92 = CInt(4)) Then
  loc_1377DEA:               End If
  loc_1377DEA:             End If
  loc_1377DEA:           End If
  loc_1377DEA:         End If
  loc_1377DEA:       End If
  loc_1377DEA:     End If
  loc_1377DEA:   End If
  loc_1377DEA: End If
  loc_1377DEA: Exit Sub
  loc_1377DEB: ' Referenced from: 13775EB
  loc_1377DF3: Set var_88 = Err()
  loc_1377DF9: Call 0.Method_arg_2C (var_DC)
  loc_1377E1A: MsgBox(CVar(var_DC), &H40, "Information", var_100, var_128)
  loc_1377E2D: Exit Sub
  loc_1377E2E: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13BF1D4
  'Data Table: 4C6A50
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_110 As Variant
  Dim var_A4 As Frame
  loc_13BE886: If (CLng(Shift) = &H1B) Then
  loc_13BE889:   Call Proc_140_38_F1E88C()
  loc_13BE88E:   Exit Sub
  loc_13BE88F: End If
  loc_13BE892: var_86 = KeyCode
  loc_13BE89D: If (var_86 = CInt(0)) Then
  loc_13BE8A4:   Set var_A0 = Me.DGHelp
  loc_13BE8B2:   Set var_A8 = Me.FGPoint
  loc_13BE8BD:   Set var_98 = var_A8
  loc_13BE8EB:   Proc_6_79_11ACE04(var_A0, Me.Txt, KeyCode, global_56, Shift)
  loc_13BE908:   var_AC = Me.RecordCount
  loc_13BE958:   If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13BE966:     Set var_90 = Me.FGPoint
  loc_13BE97E:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, var_90, 0)
  loc_13BE98C:   End If
  loc_13BE98F: Else
  loc_13BE997:   If (var_86 = CInt(&HD)) Then
  loc_13BE9BC:     Set var_8C = Me.Txt
  loc_13BE9C2:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 1)
  loc_13BE9CA:     var_98 = var_90.Left
  loc_13BE9DC:     Set var_98 = Me.Txt
  loc_13BE9E2:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B0)
  loc_13BE9EA:     0 = var_A0.Top
  loc_13BE9FC:     Set var_A4 = Me.Txt
  loc_13BEA02:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_13BEA0A:     var_B4 = var_A8.Height
  loc_13BEA1C:     Set var_B8 = Me.Txt
  loc_13BEA22:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_13BEA2A:     var_C0 = var_BC.Width
  loc_13BEA72:     Proc_6_65_119423C(Me.FrmList1, Me.ListView1, Me.Txt, KeyCode, Shift, arg_14)
  loc_13BEA99:   Else
  loc_13BEAA1:     If (var_86 = CInt(2)) Then
  loc_13BEAFE:       Proc_6_69_134A198(Me.DGRevenue, Me.Txt, CInt(2), global_60, Shift, 0, 1, Nothing)
  loc_13BEB6D:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13BEB93:         Proc_6_138_106D6F8(Me.DGRevenue, global_60, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13BEBA1:       End If
  loc_13BEBA4:     Else
  loc_13BEBAC:       If (var_86 = CInt(3)) Then
  loc_13BEBBA:         Set var_A8 = Me.Txt
  loc_13BEBCC:         Set var_A0 = Me.FGPoint
  loc_13BEC09:         Proc_6_69_134A198(Me.DGTaxStru, var_A8, CInt(3), global_64, Shift, 0, 1, Nothing)
  loc_13BEC28:         var_AC = Me.RecordCount
  loc_13BEC78:         If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13BEC86:           Set var_90 = Me.FGPoint
  loc_13BEC9E:           Proc_6_138_106D6F8(Me.DGTaxStru, global_64, KeyCode, var_90, var_A0, 0)
  loc_13BECAC:         End If
  loc_13BECAF:       Else
  loc_13BECB7:         If Not (var_86 = CInt(8)) Then
  loc_13BECC2:           If (var_86 = CInt(9)) Then
  loc_13BECC5:           End If
  loc_13BECE7:           Set var_8C = Me.Txt
  loc_13BECED:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_13BECF5:           CInt((var_B0 + var_B4)) = var_90.Left
  loc_13BED07:           Set var_98 = Me.Txt
  loc_13BED0D:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B0)
  loc_13BED15:           CInt(var_C0) = var_A0.Top
  loc_13BED27:           Set var_A4 = Me.Txt
  loc_13BED2D:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B4)
  loc_13BED35:           520 = var_A8.Height
  loc_13BED47:           Set var_B8 = Me.Txt
  loc_13BED4D:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_13BED9D:           Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13BEDC9:           If (KeyCode = CInt(9)) Then
  loc_13BEDD9:             Set var_8C = Me.Txt
  loc_13BEDDF:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_E0, CInt(var_AC))
  loc_13BEDE7:             CInt((var_B0 + var_B4)) = var_90.Text
  loc_13BEDFE:             If (var_E0 = "Flat Rate") Then
  loc_13BEE0E:               Set var_8C = Me.Txt
  loc_13BEE14:               Call 0.Method_Txt_KeyDown0 (CInt(4), var_90, &HFF)
  loc_13BEE1C:               var_90.Enabled = CInt(var_BC.Width)
  loc_13BEE35:               Set var_8C = Me.Txt
  loc_13BEE3B:               Call 0.Method_Txt_KeyDown0 (CInt(5), var_90, 0)
  loc_13BEE43:               var_90.Enabled = True
  loc_13BEE5C:               Set var_8C = Me.Txt
  loc_13BEE62:               Call 0.Method_Txt_KeyDown0 (CInt(&HA), var_90)
  loc_13BEE6A:               var_90.Enabled = False
  loc_13BEE83:               Set var_8C = Me.Txt
  loc_13BEE89:               Call 0.Method_Txt_KeyDown0 (CInt(&HB), var_90)
  loc_13BEE91:               var_90.Enabled = False
  loc_13BEEAA:               Set var_8C = Me.Txt
  loc_13BEEB0:               Call 0.Method_Txt_KeyDown0 (CInt(&HC), var_90)
  loc_13BEEB8:               var_90.Enabled = False
  loc_13BEEC7:             Else
  loc_13BEED4:               Set var_8C = Me.Txt
  loc_13BEEDA:               Call 0.Method_Txt_KeyDown0 (CInt(4), var_90)
  loc_13BEEE2:               var_90.Enabled = False
  loc_13BEEFB:               Set var_8C = Me.Txt
  loc_13BEF01:               Call 0.Method_Txt_KeyDown0 (CInt(5), var_90)
  loc_13BEF09:               var_90.Enabled = True
  loc_13BEF22:               Set var_8C = Me.Txt
  loc_13BEF28:               Call 0.Method_Txt_KeyDown0 (CInt(&HA), var_90)
  loc_13BEF30:               var_90.Enabled = True
  loc_13BEF49:               Set var_8C = Me.Txt
  loc_13BEF4F:               Call 0.Method_Txt_KeyDown0 (CInt(&HB), var_90)
  loc_13BEF57:               var_90.Enabled = True
  loc_13BEF70:               Set var_8C = Me.Txt
  loc_13BEF76:               Call 0.Method_Txt_KeyDown0 (CInt(&HC), var_90)
  loc_13BEF7E:               var_90.Enabled = True
  loc_13BEF8A:             End If
  loc_13BEF8A:           End If
  loc_13BEF8D:         Else
  loc_13BEF95:           If (var_86 = CInt(6)) Then
  loc_13BEFBA:             Set var_8C = Me.Txt
  loc_13BEFC0:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_13BEFC8:             var_AC = var_90.Left
  loc_13BEFDA:             Set var_98 = Me.Txt
  loc_13BEFE0:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0)
  loc_13BEFE8:             var_B0 = var_A0.Top
  loc_13BEFFA:             Set var_A4 = Me.Txt
  loc_13BF000:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_13BF008:             var_B4 = var_A8.Height
  loc_13BF01A:             Set var_B8 = Me.Txt
  loc_13BF020:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_13BF028:             var_C0 = var_BC.Width
  loc_13BF070:             Proc_6_65_119423C(Me.FrmList1, Me.ListView1, Me.Txt, KeyCode, Shift, arg_14)
  loc_13BF094:           End If
  loc_13BF094:         End If
  loc_13BF094:       End If
  loc_13BF094:     End If
  loc_13BF094:   End If
  loc_13BF094: End If
  loc_13BF0CB: var_110 = Me.DGTaxStru.Visible
  loc_13BF120: If (((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGRevenue.Visible) = 0)) And (CBool(var_110) = 0)) And (Me.FrmList.Visible = 0)) And (Me.FrmList1.Visible = 0)) Then
  loc_13BF14A:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(&HC)) Or (KeyCode = CInt(4)))) Then
  loc_13BF184:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_160) = 6) Then
  loc_13BF187:       Call TopCtrl1_UnknownEvent_16()
  loc_13BF18C:     End If
  loc_13BF18C:     Exit Sub
  loc_13BF18D:   End If
  loc_13BF1A2:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13BF1AB:     Proc_6_75_E527CC(Shift, arg_14, CInt(var_AC), CInt((var_B0 + var_B4)))
  loc_13BF1B0:   End If
  loc_13BF1C3:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_13BF1CC:     Proc_6_76_E52838(Shift, arg_14, CInt(var_C0))
  loc_13BF1D1:   End If
  loc_13BF1D1: End If
  loc_13BF1D1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10D78B8
  'Data Table: 4C6A50
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  Dim var_2701 As Double
  loc_10D75B6: Proc_6_133_E7EF78(var_94)
  loc_10D75BF: arg_10 = CInt(var_94)
  loc_10D75C8: Proc_6_58_E054C0(arg_10, arg_10)
  loc_10D75D0: var_96 = KeyAscii
  loc_10D75DB: If (var_96 = CInt(2)) Then
  loc_10D75FA:   If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_10D760C:     var_A0 = "Name"
  loc_10D7627:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10)
  loc_10D7659:     Proc_6_138_106D6F8(Me.DGRevenue, global_60, KeyAscii, Me.FGPoint)
  loc_10D7667:   End If
  loc_10D766A: Else
  loc_10D7672:   If (var_96 = CInt(3)) Then
  loc_10D7691:     If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_10D76A3:       var_A0 = "Name"
  loc_10D76BE:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, var_A0)
  loc_10D76D8:       Set var_A8 = Me.FGPoint
  loc_10D76F0:       Proc_6_138_106D6F8(Me.DGTaxStru, global_64, KeyAscii, var_A8, 0)
  loc_10D76FE:     End If
  loc_10D7701:   Else
  loc_10D7709:     If (var_96 = CInt(4)) Then
  loc_10D7716:       Set var_9C = Me.Txt
  loc_10D771C:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_10D7737:       Proc_6_42_129A86C(var_A8, arg_10, 6, 2)
  loc_10D7746:     Else
  loc_10D774E:       If Not (var_96 = CInt(5)) Then
  loc_10D7759:         If Not (var_96 = CInt(&HA)) Then
  loc_10D7764:           If Not (var_96 = CInt(&HB)) Then
  loc_10D776F:             If (var_96 = CInt(&HC)) Then
  loc_10D7772:             End If
  loc_10D7772:           End If
  loc_10D7772:         End If
  loc_10D777C:         Set var_9C = Me.Txt
  loc_10D7782:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_10D779D:         Proc_6_42_129A86C(var_A8, arg_10, 6)
  loc_10D77AC:       Else
  loc_10D77B4:         If Not (var_96 = CInt(6)) Then
  loc_10D77BF:           If (var_96 = CInt(&HD)) Then
  loc_10D77C2:           End If
  loc_10D77CC:           Set var_9C = Me.Txt
  loc_10D77D2:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 2)
  loc_10D77ED:           Proc_6_42_129A86C(var_A8, arg_10, 6)
  loc_10D77FC:         Else
  loc_10D7804:           If (var_96 = CInt(7)) Then
  loc_10D7830:             If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_10D7840:               Set var_9C = Me.Txt
  loc_10D7846:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_10D784E:               var_A8.Text = 2
  loc_10D785D:             Else
  loc_10D7886:               If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_10D7896:                 Set var_9C = Me.Txt
  loc_10D789C:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_10D78A4:                 var_A8.Text = var_96
  loc_10D78B0:               End If
  loc_10D78B0:             End If
  loc_10D78B2:             arg_10 = 0
  loc_10D78B5:           End If
  loc_10D78B5:         End If
  loc_10D78B5:       End If
  loc_10D78B5:     End If
  loc_10D78B5:   End If
  loc_10D78B5: End If
  loc_10D78B5: Exit Sub
  loc_10D78B6: var_2701 = arg_10
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F25498
  'Data Table: 4C6A50
  Dim var_86 As Integer
  loc_F2539B: var_86 = KeyCode
  loc_F253A6: If (var_86 = CInt(0)) Then
  loc_F253C5:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F253D2:     var_A0 = "Name"
  loc_F253ED:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_56)
  loc_F2541F:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_F2542D:   End If
  loc_F25430: Else
  loc_F25438:   If (var_86 = CInt(8)) Then
  loc_F25456:     If (Me.FrmList.Visible = &HFF) Then
  loc_F25485:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F25495:     End If
  loc_F25495:   End If
  loc_F25495: End If
  loc_F25495: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C1EC
  'Data Table: 4C6A50
  loc_E4C1CA: Set var_88 = Me.Txt
  loc_E4C1D0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C1DE: Proc_6_73_E22704(var_8C)
  loc_E4C1EA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '136905C
  'Data Table: 4C6A50
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim var_DC As TextBox
  Dim Me As Recordset15
  Dim var_A4 As Variant
  loc_13687F8: On Error Goto loc_1369015
  loc_13687FE: var_86 = Cancel
  loc_1368809: If (var_86 = CInt(0)) Then
  loc_136880F:   Call Proc_140_36_1087584(var_88)
  loc_136881A:   If (var_88 = &HFF) Then
  loc_136881F:     arg_10 = &HFF
  loc_1368822:     Exit Sub
  loc_1368823:   End If
  loc_1368827:   Set var_8C = Me.TopCtrl1
  loc_136882D:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_1368846:   If (CStr(var_86) = "Add") Then
  loc_1368856:     Me.LblSysYN.Caption = "User Defined"
  loc_136885E:   End If
  loc_1368861: Else
  loc_1368869:   If (var_86 = CInt(1)) Then
  loc_136886F:     Call Proc_140_37_10AF7D0(var_88)
  loc_136887A:     If (var_88 = &HFF) Then
  loc_136887F:       arg_10 = &HFF
  loc_1368882:       Exit Sub
  loc_1368883:     End If
  loc_1368886:   Else
  loc_136888E:     If (var_86 = CInt(&HD)) Then
  loc_136889C:       Set var_8C = Me.Txt
  loc_13688A2:       Call 0.Method_Txt_Validate0 (CInt(&HD), var_A4)
  loc_13688CE:       var_A0 = CStr(Format(CVar(var_A4), "0.00"))
  loc_13688DD:       Set var_D8 = Me.Txt
  loc_13688E3:       Call 0.Method_Txt_Validate0 (CInt(&HD), var_DC, var_A0)
  loc_13688EB:       var_DC.Text = 1
  loc_1368908:     Else
  loc_1368910:       If (var_86 = CInt(2)) Then
  loc_1368961:         Set var_8C = Me.Txt
  loc_1368967:         Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_A0)
  loc_136896F:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A4.Text
  loc_1368987:         If (1 Or (var_A0 = vbNullString)) Then
  loc_136898A:           Exit Sub
  loc_136898B:         End If
  loc_13689C6:         Set var_D8 = Me.Txt
  loc_13689CC:         Call 0.Method_Txt_Validate0 (Cancel, var_DC)
  loc_13689D4:         var_DC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1368A25:         Set var_D8 = Me.Txt
  loc_1368A2B:         Call 0.Method_Txt_Validate0 (Cancel, var_DC)
  loc_1368A33:         var_DC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1368A85:         Set var_D8 = Me.Txt
  loc_1368A8B:         Call 0.Method_Txt_Validate0 (CInt(3), var_DC)
  loc_1368A93:         var_DC.Text = CStr(Me.Fields.Item("TaxName").Value)
  loc_1368AC6:         var_A4 = Me.Fields.Item("TaxCode")
  loc_1368AD7:         var_A0 = CStr(var_A4.Value)
  loc_1368AE5:         Set var_D8 = Me.Txt
  loc_1368AEB:         Call 0.Method_Txt_Validate0 (CInt(3), var_DC)
  loc_1368AF3:         var_DC.Tag = var_A0
  loc_1368B0C:       Else
  loc_1368B14:         If (var_86 = CInt(3)) Then
  loc_1368B65:           Set var_8C = Me.Txt
  loc_1368B6B:           Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_A0)
  loc_1368B73:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A4.Text
  loc_1368B8B:           If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_1368B9B:             Set var_8C = Me.Txt
  loc_1368BA1:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1368BA9:             var_A4.Tag = vbNullString
  loc_1368BB5:             Exit Sub
  loc_1368BB6:           End If
  loc_1368BF1:           Set var_D8 = Me.Txt
  loc_1368BF7:           Call 0.Method_Txt_Validate0 (Cancel, var_DC)
  loc_1368BFF:           var_DC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1368C32:           var_A4 = Me.Fields.Item("Code")
  loc_1368C50:           Set var_D8 = Me.Txt
  loc_1368C56:           Call 0.Method_Txt_Validate0 (Cancel, var_DC)
  loc_1368C5E:           var_DC.Tag = CStr(var_A4.Value)
  loc_1368C77:         Else
  loc_1368C7F:           If (var_86 = CInt(4)) Then
  loc_1368C8D:             Set var_8C = Me.Txt
  loc_1368C93:             Call 0.Method_Txt_Validate0 (CInt(4))
  loc_1368CCE:             Set var_D8 = Me.Txt
  loc_1368CD4:             Call 0.Method_Txt_Validate0 (CInt(4), var_DC, CStr(Format(CVar(var_A4), "0.00")))
  loc_1368CDC:             var_DC.Text = 1
  loc_1368CF9:           Else
  loc_1368D01:             If Not (var_86 = CInt(5)) Then
  loc_1368D0C:               If Not (var_86 = CInt(&HA)) Then
  loc_1368D17:                 If Not (var_86 = CInt(&HB)) Then
  loc_1368D22:                   If Not (var_86 = CInt(&HC)) Then
  loc_1368D2D:                     If (var_86 = CInt(4)) Then
  loc_1368D30:                     End If
  loc_1368D30:                   End If
  loc_1368D30:                 End If
  loc_1368D30:               End If
  loc_1368D3A:               Set var_8C = Me.Txt
  loc_1368D40:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1368D6C:               var_A0 = CStr(Format(CVar(var_A4), "0.00"))
  loc_1368D7A:               Set var_D8 = Me.Txt
  loc_1368D80:               Call 0.Method_Txt_Validate0 (Cancel, var_DC, var_A0, 1)
  loc_1368D88:               var_DC.Text = 1
  loc_1368DA5:             Else
  loc_1368DAD:               If (var_86 = CInt(6)) Then
  loc_1368DBD:                 Set var_8C = Me.Txt
  loc_1368DC3:                 Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_A0)
  loc_1368DCB:                 1 = var_A4.Text
  loc_1368DE2:                 If (var_A0 <> vbNullString) Then
  loc_1368DFD:                   Set var_A4 = Me.ListView1.SelectedItem
  loc_1368E15:                   Set var_D8 = Me.Txt
  loc_1368E1B:                   Call 0.Method_Txt_Validate0 (Cancel, var_DC)
  loc_1368E23:                   var_DC.Text = var_A4.Text
  loc_1368E39:                 End If
  loc_1368E3C:               Else
  loc_1368E44:                 If (var_86 = CInt(8)) Then
  loc_1368E54:                   Set var_8C = Me.Txt
  loc_1368E5A:                   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1368E79:                   If (var_A4.Text <> vbNullString) Then
  loc_1368E94:                     Set var_A4 = Me.ListView.SelectedItem
  loc_1368EAC:                     Set var_D8 = Me.Txt
  loc_1368EB2:                     Call 0.Method_Txt_Validate0 (Cancel, var_DC)
  loc_1368EBA:                     var_DC.Text = var_A4.Text
  loc_1368ED0:                   End If
  loc_1368ED3:                 Else
  loc_1368EDB:                   If (var_86 = CInt(9)) Then
  loc_1368EEB:                     Set var_8C = Me.Txt
  loc_1368EF1:                     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1368F10:                     If (var_A4.Text <> vbNullString) Then
  loc_1368F2B:                       Set var_A4 = Me.ListView.SelectedItem
  loc_1368F31:                       var_A0 = var_A4.Text
  loc_1368F43:                       Set var_D8 = Me.Txt
  loc_1368F49:                       Call 0.Method_Txt_Validate0 (Cancel, var_DC)
  loc_1368F51:                       var_DC.Text = var_A0
  loc_1368F67:                     End If
  loc_1368F6A:                   Else
  loc_1368F72:                     If (var_86 = CInt(7)) Then
  loc_1368F7F:                       Set var_8C = Me.Txt
  loc_1368F85:                       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1368FA4:                       var_D4 = Ucase(Left(CVar(var_A4), 1))
  loc_1368FC0:                       If (var_D4 = "Y") Then
  loc_1368FD0:                         Set var_8C = Me.Txt
  loc_1368FD6:                         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1368FDE:                         var_A4.Text = "Yes"
  loc_1368FED:                       Else
  loc_1368FFA:                         Set var_8C = Me.Txt
  loc_1369000:                         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1369008:                         var_A4.Text = "No"
  loc_1369014:                       End If
  loc_1369014:                     End If
  loc_1369014:                   End If
  loc_1369014:                 End If
  loc_1369014:               End If
  loc_1369014:             End If
  loc_1369014:           End If
  loc_1369014:         End If
  loc_1369014:       End If
  loc_1369014:     End If
  loc_1369014:   End If
  loc_1369014: End If
  loc_1369014: Exit Sub
  loc_1369015: ' Referenced from: 13687F8
  loc_136901D: Set var_8C = Err()
  loc_1369023: Call 0.Method_arg_2C (var_A0)
  loc_1369044: MsgBox(CVar(var_A0), &H40, "Information", var_D4, var_F4)
  loc_1369057: Exit Sub
  loc_1369058: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_9 'F47904
  'Data Table: 4C6A50
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F477FB: Me.DGRevenue.Visible = False
  loc_F4781A: If (Me.RecordCount > 0) Then
  loc_F47859:   Set var_B4 = Me.Txt
  loc_F4785F:   Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(2), var_B8)
  loc_F47867:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4789A:   var_B0 = Me.Fields.Item("Name")
  loc_F478B9:   Set var_B4 = Me.Txt
  loc_F478BF:   Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(2), var_B8)
  loc_F478C7:   var_B8.Text = CStr(var_B0.Value)
  loc_F478DD: End If
  loc_F478E8: Set var_A8 = Me.Txt
  loc_F478EE: Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(2))
  loc_F478F6: var_B0.SetFocus
  loc_F47902: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_1F 'EA8200
  'Data Table: 4C6A50
  Dim var_A8 As Variant
  loc_EA8180: Set var_88 = Me.DGRevenue
  loc_EA81AA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA81B2: Set var_BC = Me.DGRevenue
  loc_EA81EE: Proc_6_138_106D6F8(Me.DGRevenue, global_60, CInt(2), Me.FGPoint)
  loc_EA81FC: Exit Sub
  loc_EA81FD: DGRevenue.DispID_1B = var_A8
End Sub

Private Sub ListView_UnknownEvent_13 '10F4FF4
  'Data Table: 4C6A50
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_BC As String
  Dim var_CC As Double
  Dim var_C4 As TextBox
  loc_10F4D06: If (Me.ListView.ListItems.Count > 0) Then
  loc_10F4D0D:   Set var_A8 = Me.ListView
  loc_10F4D1B:   var_BC = CStr(var_A8.Tag)
  loc_10F4D57:   Set var_C0 = Me.Txt
  loc_10F4D5D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(var_BC)), var_C4)
  loc_10F4D65:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_10F4D85: End If
  loc_10F4D91: Me.FrmList.Visible = False
  loc_10F4DC1: If (CDbl(Val(CStr(Me.ListView.Tag))) = CDbl(9)) Then
  loc_10F4DEF:   Set var_9C = Me.Txt
  loc_10F4DF5:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8, var_BC)
  loc_10F4DFD:   var_CC = var_A8.Text
  loc_10F4E1D:   If (var_BC = "Flat Rate") Then
  loc_10F4E2D:     Set var_88 = Me.Txt
  loc_10F4E33:     Call 0.Method_ListView_UnknownEvent_130 (CInt(4), var_9C)
  loc_10F4E3B:     var_9C.Enabled = True
  loc_10F4E54:     Set var_88 = Me.Txt
  loc_10F4E5A:     Call 0.Method_ListView_UnknownEvent_130 (CInt(5), var_9C)
  loc_10F4E62:     var_9C.Enabled = False
  loc_10F4E7B:     Set var_88 = Me.Txt
  loc_10F4E81:     Call 0.Method_ListView_UnknownEvent_130 (CInt(&HA), var_9C)
  loc_10F4E89:     var_9C.Enabled = False
  loc_10F4EA2:     Set var_88 = Me.Txt
  loc_10F4EA8:     Call 0.Method_ListView_UnknownEvent_130 (CInt(&HB), var_9C)
  loc_10F4EB0:     var_9C.Enabled = False
  loc_10F4EC9:     Set var_88 = Me.Txt
  loc_10F4ECF:     Call 0.Method_ListView_UnknownEvent_130 (CInt(&HC), var_9C)
  loc_10F4ED7:     var_9C.Enabled = False
  loc_10F4EE6:   Else
  loc_10F4EF3:     Set var_88 = Me.Txt
  loc_10F4EF9:     Call 0.Method_ListView_UnknownEvent_130 (CInt(4), var_9C)
  loc_10F4F01:     var_9C.Enabled = False
  loc_10F4F1A:     Set var_88 = Me.Txt
  loc_10F4F20:     Call 0.Method_ListView_UnknownEvent_130 (CInt(5), var_9C)
  loc_10F4F28:     var_9C.Enabled = True
  loc_10F4F41:     Set var_88 = Me.Txt
  loc_10F4F47:     Call 0.Method_ListView_UnknownEvent_130 (CInt(&HA), var_9C)
  loc_10F4F4F:     var_9C.Enabled = True
  loc_10F4F68:     Set var_88 = Me.Txt
  loc_10F4F6E:     Call 0.Method_ListView_UnknownEvent_130 (CInt(&HB), var_9C)
  loc_10F4F76:     var_9C.Enabled = True
  loc_10F4F8F:     Set var_88 = Me.Txt
  loc_10F4F95:     Call 0.Method_ListView_UnknownEvent_130 (CInt(&HC), var_9C)
  loc_10F4F9D:     var_9C.Enabled = True
  loc_10F4FA9:   End If
  loc_10F4FA9: End If
  loc_10F4FD1: Set var_9C = Me.Txt
  loc_10F4FD7: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_10F4FDF: var_A8.SetFocus
  loc_10F4FF3: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E862A8
  'Data Table: 4C6A50
  loc_E86254: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E86257:   Call DGHelp_UnknownEvent_9()
  loc_E8625C: End If
  loc_E86278: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_E8627B:   Call DGTaxStru_UnknownEvent_9()
  loc_E86280: End If
  loc_E8629C: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_E8629F:   Call DGRevenue_UnknownEvent_9()
  loc_E862A4: End If
  loc_E862A4: Exit Sub
End Sub

Private Sub Form_Load() '108E008
  'Data Table: 4C6A50
  Dim var_8C As Label
  Dim var_90 As String
  Dim unk_4C6A63 As Connection15
  Dim var_B4 As Variant
  loc_108DD60: On Error Goto loc_108DFC3
  loc_108DD72: Me.LblUser.Left = CDbl(13500)
  loc_108DD89: Me.LblUser.Top = CDbl(7800)
  loc_108DDA0: Me.LblLDt.Top = CDbl(8160)
  loc_108DDB1: Set var_8C = Me.LblLDt
  loc_108DDB7: var_8C.Left = CDbl(13500)
  loc_108DDC6: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_108DDCB: Call Proc_140_39_1008C34()
  loc_108DDF4: unk_4C6A63.Execute "SELECT Code,Name FROM FixedCharge WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_108DE23: CVarUnk
  loc_108DE28: VerifyVarObj
  loc_108DE34: LateIdStAd
  loc_108DE56: var_90 = "SELECT  distinct Revmast.Code as Code,RevMast.Name as Name,RevMast.taxstru as TaxCode,TaxStru.name as Taxname FROM RevMast left join TaxStru on  Taxstru.Code=Revmast.Taxstru where (Revmast.LOGSITE_CODE='" & MemVar_1F92078
  loc_108DE66: unk_4C6A63.Execute var_90 & "' or RevMast.LOGSITE_CODE='HO') AND FlagType='FOM' AND FlagAMR='Detail' ORDER BY Revmast.Name", var_B4, -1
  loc_108DE95: CVarUnk
  loc_108DE9A: VerifyVarObj
  loc_108DEA6: LateIdStAd
  loc_108DED8: unk_4C6A63.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_108DF07: CVarUnk
  loc_108DF0C: VerifyVarObj
  loc_108DF18: LateIdStAd
  loc_108DF3A: var_90 = "SELECT distinct R.*,R.Code as SearchCode,S.Code as RevCode ,S.Name as RevName,T.Code as TaxCode,T.Name as TaxName FROM ((FixedCharge R Left Join TaxStru T on T.Code=R.TaxStru) Left join RevMast S on S.Code=R.RevCode) WHERE (R.LOGSITE_CODE='" & MemVar_1F92078
  loc_108DF4A: unk_4C6A63.Execute var_90 & "' or R.LOGSITE_CODE='HO')", var_B4, -1
  loc_108DF7C: Set var_8C = Me
  loc_108DF85: var_90 = "INI"
  loc_108DF93: Call Proc_140_33_F6E998(Proc_5_1_100CB50(var_90, var_8C, Me.DGTaxStru, var_8C, var_8C, Me.DGRevenue, var_8C), var_8C, Me.DGHelp, var_8C)
  loc_108DFA7: Call 0.Method_arg_160 (var_8C, var_8C)
  loc_108DFB5: Call 0.Method_arg_164 (var_8C, var_8C)
  loc_108DFBD: Call Proc_140_35_140DA58(var_8C)
  loc_108DFC2: Exit Sub
  loc_108DFC3: ' Referenced from: 108DD60
  loc_108DFCB: Set var_8C = Err()
  loc_108DFD1: Call 0.Method_arg_2C (var_90)
  loc_108DFF2: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_108E005: Exit Sub
  loc_108E006: Exit Sub
End Sub

Private Sub Form_Resize() 'ED6EF8
  'Data Table: 4C6A50
  Dim var_8C As Label
  loc_ED6E56: Call 0.Method_arg_50 (var_88)
  loc_ED6E68: Me.LblFormCaption.Caption = var_88
  loc_ED6E81: Me.LblFormCaption.Left = CDbl(0)
  loc_ED6E8D: Set var_A0 = Me.TopCtrl1
  loc_ED6E93: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED6EA0: Set var_8C = Me.TopCtrl1
  loc_ED6EA6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED6EC0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED6EDB: Call 0.Method_arg_100 (var_B8)
  loc_ED6EED: Me.LblFormCaption.Width = var_B8
  loc_ED6EF5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5E4B8
  'Data Table: 4C6A50
  loc_E5E477: Set global_52 = Nothing
  loc_E5E489: Set global_56 = Nothing
  loc_E5E49B: Set global_60 = Nothing
  loc_E5E4AD: Set global_64 = Nothing
  loc_E5E4B4: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28CB4
  'Data Table: 4C6A50
  loc_E28C8C: On Error Goto loc_E28CAB
  loc_E28CA3: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E28CAB: ' Referenced from: E28C8C
  loc_E28CAB: Proc_6_60_E62BC4(Shift)
  loc_E28CB0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFB6EC
  'Data Table: 4C6A50
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFB620: On Error Goto loc_EFB6A6
  loc_EFB630: Me.LblUser.Caption = vbNullString
  loc_EFB645: Me.LblLDt.Caption = vbNullString
  loc_EFB64D: Call Proc_140_34_E774F4()
  loc_EFB667: var_8C = "ADD"
  loc_EFB675: Call Proc_140_33_F6E998(Proc_5_1_100CB50(var_8C, Me))
  loc_EFB68B: Set var_88 = Me.Txt
  loc_EFB691: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EFB699: var_94.SetFocus
  loc_EFB6A5: Exit Sub
  loc_EFB6A6: ' Referenced from: EFB620
  loc_EFB6AE: Set var_88 = Err()
  loc_EFB6B4: Call 0.Method_arg_2C (var_8C)
  loc_EFB6D5: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFB6E8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBC86C
  'Data Table: 4C6A50
  loc_EBC7D8: On Error Goto loc_EBC863
  loc_EBC812: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBC821:   Set var_110 = Me
  loc_EBC838:   Call Proc_140_33_F6E998(Proc_5_1_100CB50("INI", var_110))
  loc_EBC843:   Call Proc_140_35_140DA58(global_52)
  loc_EBC84B: Else
  loc_EBC851:   Call 0.Method_arg_1E8 (var_110)
  loc_EBC859:   Call var_110.SetFocus
  loc_EBC862: End If
  loc_EBC862: Exit Sub
  loc_EBC863: ' Referenced from: EBC7D8
  loc_EBC863: Proc_6_60_E62BC4()
  loc_EBC868: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10EAE68
  'Data Table: 4C6A50
  Dim var_96 As Integer
  Dim unk_4C6A63 As Connection15
  Dim Me As Recordset15
  Dim var_124 As Fields15
  Dim var_FC As Variant
  Dim var_12C As String
  loc_10EAB80: On Error Goto loc_10EAE11
  loc_10EAB91: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_10EAB94:   Exit Sub
  loc_10EAB95: End If
  loc_10EABCC: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_FC, var_11C) = 6) Then
  loc_10EABD1:   var_96 = 0
  loc_10EABDD:   unk_4C6A63.BeginTrans var_120
  loc_10EABE4:   var_96 = &HFF
  loc_10EABF8:   var_94 = Me.Bookmark 'Variant
  loc_10EAC44:   var_FC = "Delete From FixedCharge Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10EAC52:   unk_4C6A63.Execute CStr(var_FC), var_11C, -1
  loc_10EAC9D:   var_168 = 0
  loc_10EACB0:   var_160 = 0
  loc_10EACBB:   var_15C = 0
  loc_10EACCE:   var_154 = 0
  loc_10EACD9:   var_150 = 0
  loc_10EACEC:   var_148 = 0
  loc_10EAD2C:   var_12C = "FixedCharge"
  loc_10EAD35:   Proc_154_5_10E33A4(MemVar_1F92044, var_12C, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_10EAD63:   unk_4C6A63.CommitTrans
  loc_10EAD6A:   var_96 = 0
  loc_10EAD78:   Me.Requery -1
  loc_10EAD88:   Me.Requery -1
  loc_10EADA8:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10EADB5:     Me.Bookmark = var_94
  loc_10EADBD:   Else
  loc_10EADD1:     If (Me.EOF = 0) Then
  loc_10EADDA:       Me.MoveLast
  loc_10EADDF:     End If
  loc_10EADDF:   End If
  loc_10EADDF:   Call Proc_140_35_140DA58(var_96, var_148, 0, var_150, var_154)
  loc_10EAE00:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_10EAE08: End If
  loc_10EAE0D: Set var_9C = Nothing
  loc_10EAE10: Exit Sub
  loc_10EAE11: ' Referenced from: 10EAB80
  loc_10EAE17: If (var_96 = &HFF) Then
  loc_10EAE20:   unk_4C6A63.RollbackTrans
  loc_10EAE25: End If
  loc_10EAE2D: Set var_124 = Err()
  loc_10EAE33: Call 0.Method_arg_2C (var_12C, 0, var_15C)
  loc_10EAE54: MsgBox(CVar(var_12C), &H30, " Deletion Error ", var_FC, var_11C)
  loc_10EAE67: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F6039C
  'Data Table: 4C6A50
  Dim var_88 As Label
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F60278: On Error Goto loc_F60359
  loc_F60288: Me.LblUser.Caption = vbNullString
  loc_F6029D: Me.LblLDt.Caption = vbNullString
  loc_F602B3: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F602B6:   Exit Sub
  loc_F602B7: End If
  loc_F602CE: If (Me.RecordCount > 0) Then
  loc_F602E6:   var_90 = "EDIT"
  loc_F602F4:   Call Proc_140_33_F6E998(Proc_5_1_100CB50(var_90, Me))
  loc_F6030A:   Set var_88 = Me.Txt
  loc_F60310:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F60318:   var_98.SetFocus
  loc_F60327: Else
  loc_F60348:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F60358: End If
  loc_F60358: Exit Sub
  loc_F60359: ' Referenced from: F60278
  loc_F60361: Set var_88 = Err()
  loc_F60367: Call 0.Method_arg_2C (var_90)
  loc_F60388: MsgBox(CVar(var_90), &H30, " Editing Error ", var_F8, var_118)
  loc_F6039B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E162F8
  'Data Table: 4C6A50
  loc_E162ED: Me.Global.Unload Me
  loc_E162F5: Exit Sub
  loc_E162F6: Set var_2794 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F25208
  'Data Table: 4C6A50
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F25108: On Error Goto loc_F251A0
  loc_F25114: var_88 = Me.RecordCount
  loc_F25122: If (var_88 <= 0) Then
  loc_F2512B:   var_B8 = "Information"
  loc_F25146:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F25156:   Exit Sub
  loc_F25157: End If
  loc_F25165: MemVar_1F920E4 = "Select FixedCharge.Code As SearchCode,FixedCharge.Name FROM FixedCharge where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by FixedCharge.Name"
  loc_F2516F: var_10C = "3000"
  loc_F25175: Proc_6_126_F1BCC0(var_10C)
  loc_F25183: MemVar_1F92120 = Me
  loc_F2519A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2519F: Exit Sub
  loc_F251A0: ' Referenced from: F25108
  loc_F251A8: Set var_110 = Err()
  loc_F251AE: Call 0.Method_arg_1C (var_88)
  loc_F251BF: If (var_88 <> 0) Then
  loc_F251CA:   Set var_110 = Err()
  loc_F251D0:   Call 0.Method_arg_2C (var_10C)
  loc_F251F1:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F25204: End If
  loc_F25204: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2F778
  'Data Table: 4C6A50
  loc_E2F768: Proc_5_0_110649C(&HFF, Me)
  loc_E2F770: Call Proc_140_35_140DA58(global_52)
  loc_E2F775: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2F658
  'Data Table: 4C6A50
  loc_E2F648: Proc_5_0_110649C(&HFF, Me)
  loc_E2F650: Call Proc_140_35_140DA58(global_52)
  loc_E2F655: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2F6B8
  'Data Table: 4C6A50
  loc_E2F6A8: Proc_5_0_110649C(&HFF, Me)
  loc_E2F6B0: Call Proc_140_35_140DA58(global_52)
  loc_E2F6B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2F718
  'Data Table: 4C6A50
  loc_E2F708: Proc_5_0_110649C(&HFF, Me)
  loc_E2F710: Call Proc_140_35_140DA58(global_52)
  loc_E2F715: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1097840
  'Data Table: 4C6A50
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4C6A63 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_132 As Integer
  Dim var_C8 As Variant
  Dim var_F0 As Variant
  loc_10975A0: On Error Goto loc_10977F5
  loc_10975B7: var_A0 = "SELECT FixedCharge.Name, FixedCharge.SName, FixedCharge.Adult, FixedCharge.FlatRate, S.Name AS AccName FROM (FixedCharge INNER JOIN RevMast ON FixedCharge.Revcode = RevMast.Code) INNER JOIN SubGroup AS S ON RevMast.ACCode = S.SubCode" & " where (FixedCharge.LOGSITE_CODE='"
  loc_10975CE: unk_4C6A63.Execute var_A0 & MemVar_1F92078 & "' or FixedCharge.LOGSITE_CODE='HO')  Order by FixedCharge.Name", var_C8, -1
  loc_10975D9: Set var_88 = var_CC
  loc_10975F1: var_D0 = var_88.RecordCount
  loc_10975FF: If (var_D0 = 0) Then
  loc_109761B:   MsgBox("No Record Present For Printing", 0, var_F0, var_110, var_130)
  loc_109762B:   Exit Sub
  loc_109762C: End If
  loc_109763B: var_A4 = MemVar_1F920B4 & "\FixedCharge.ttx"
  loc_1097642: Set var_CC = var_88 
  loc_109764E: var_132 = CreateFieldDefFile(var_CC, var_A4)
  loc_1097658: Set var_88 = var_CC
  loc_109765E: var_B8 = CVar(var_132) 'Integer
  loc_1097661: var_98 = var_B8 'Variant
  loc_109767D: var_A0 = MemVar_1F920B4 & "\FixedCharge.RPT"
  loc_1097686: Call 0.Method_arg_1C (var_A0, var_B8, var_CC)
  loc_1097691: MemVar_1F921E4 = var_CC
  loc_10976AC: Call 0.Method_arg_90 (var_CC, var_D0, var_9A, 1)
  loc_10976B4: Call 0.Method_arg_24 (var_132, &HFF)
  loc_10976C0: For var_136 =  To CInt(var_D0): var_CC = var_136 'Integer
  loc_10976D9:   Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_10976E1:   Call 0.Method_arg_20 (var_13C)
  loc_10976E9:   Call 0.Method_arg_30 (var_A0)
  loc_109772F:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1097745:     Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_109774D:     Call 0.Method_arg_20 (var_13C)
  loc_1097755:     Call 0.Method_arg_38 ("'Fixed Charge Master'")
  loc_1097761:   End If
  loc_1097764: Next var_136 'Integer
  loc_1097782: Call 0.Method_arg_64 (var_CC, CVar(var_88))
  loc_109778A: Call 0.Method_arg_2C (var_E0)
  loc_1097798: Call 0.Method_arg_150 (var_100)
  loc_10977A3: Call 0.Method_arg_50 (var_A0)
  loc_10977AD: Set var_13C = Nothing
  loc_10977C7: Set var_CC = MemVar_1F921E4 
  loc_10977D3: Proc_6_99_1483714(var_CC, 0, var_A0)
  loc_10977DE: MemVar_1F921E4 = var_CC
  loc_10977F1: Set var_88 = Nothing
  loc_10977F4: Exit Sub
  loc_10977F5: ' Referenced from: 10975A0
  loc_10977FD: Set var_CC = Err()
  loc_1097803: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_109780E: Call 0.Method_arg_50 (var_A4)
  loc_109782A: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_110, var_130)
  loc_109783D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E41050
  'Data Table: 4C6A50
  Dim Me As Recordset15
  loc_E41027: Me.Requery -1
  loc_E41037: Me.Requery -1
  loc_E41047: Me.Requery -1
  loc_E4104C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15D4EA8
  'Data Table: 4C6A50
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim var_D4 As Variant
  Dim unk_4C6A63 As Connection15
  Dim var_94 As Variant
  Dim var_9C As Field20
  Dim var_F4 As Variant
  Dim var_C4 As Variant
  Dim var_104 As Variant
  Dim Me As Recordset15
  Dim var_118 As TextBox
  Dim var_12C As TextBox
  Dim var_140 As TextBox
  Dim var_154 As TextBox
  Dim var_168 As TextBox
  Dim var_B4 As Variant
  Dim var_1DC As TextBox
  Dim var_4E8 As Double
  Dim var_228 As TextBox
  Dim var_4F0 As Double
  Dim var_274 As TextBox
  Dim var_4F8 As Double
  Dim var_2C0 As TextBox
  Dim var_500 As Double
  Dim var_30C As TextBox
  Dim var_508 As Double
  Dim var_110 As String
  Dim var_174 As String
  Dim var_220 As Variant
  Dim var_26C As Variant
  Dim var_2B8 As Variant
  Dim var_350 As Variant
  Dim var_428 As Variant
  Dim var_498 As Variant
  Dim var_17C As TextBox
  Dim var_194 As TextBox
  Dim var_398 As TextBox
  Dim var_144 As String
  Dim var_3B8 As Variant
  Dim var_448 As Variant
  Dim var_4DC As Variant
  Dim var_548 As Variant
  Dim var_578 As Variant
  Dim var_310 As String
  loc_15D3CA4: On Error Goto loc_15D4E54
  loc_15D3CAB: var_86 = CByte(0) 'Byte
  loc_15D3CBA: Set var_94 = Me.Txt
  loc_15D3CC0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15D3CE9: If (Proc_183_19_E8DAFC(var_98, "Name") = 0) Then
  loc_15D3CF3:   Call Txt_GotFocus(CInt(0))
  loc_15D3CF8:   Exit Sub
  loc_15D3CF9: End If
  loc_15D3D04: Set var_94 = Me.Txt
  loc_15D3D0A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_15D3D33: If (Proc_183_19_E8DAFC(var_98, "Short Name") = 0) Then
  loc_15D3D3D:   Call Txt_GotFocus(CInt(1))
  loc_15D3D42:   Exit Sub
  loc_15D3D43: End If
  loc_15D3D4E: Set var_94 = Me.Txt
  loc_15D3D54: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_98)
  loc_15D3D7D: If (Proc_183_19_E8DAFC(var_98, "Charge Category") = 0) Then
  loc_15D3D87:   Call Txt_GotFocus(CInt(&HD))
  loc_15D3D8C:   Exit Sub
  loc_15D3D8D: End If
  loc_15D3D98: Set var_94 = Me.Txt
  loc_15D3D9E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_15D3DC7: If (Proc_183_19_E8DAFC(var_98, "Ledger A/C") = 0) Then
  loc_15D3DD1:   Call Txt_GotFocus(CInt(2))
  loc_15D3DD6:   Exit Sub
  loc_15D3DD7: End If
  loc_15D3DE5: Set var_94 = Me.Txt
  loc_15D3DEB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_98)
  loc_15D3E0A: If (var_98.Text = "Flat Rate") Then
  loc_15D3E1B:   Set var_94 = Me.Txt
  loc_15D3E21:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98)
  loc_15D3E29:   var_98.Text = "0.00"
  loc_15D3E43:   Set var_94 = Me.Txt
  loc_15D3E49:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_98)
  loc_15D3E51:   var_98.Text = "0.00"
  loc_15D3E6B:   Set var_94 = Me.Txt
  loc_15D3E71:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_98)
  loc_15D3E79:   var_98.Text = "0.00"
  loc_15D3E93:   Set var_94 = Me.Txt
  loc_15D3E99:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_98)
  loc_15D3EA1:   var_98.Text = "0.00"
  loc_15D3EB8:   Set var_94 = Me.Txt
  loc_15D3EBE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_15D3EE7:   If (Proc_183_19_E8DAFC(var_98, "Flat Rat0e") = 0) Then
  loc_15D3EF1:     Call Txt_GotFocus(CInt(4))
  loc_15D3EF6:     Exit Sub
  loc_15D3EF7:   End If
  loc_15D3EF7: End If
  loc_15D3F05: Set var_94 = Me.Txt
  loc_15D3F0B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_98)
  loc_15D3F2A: If (var_98.Text <> "Flat Rate") Then
  loc_15D3F3B:   Set var_94 = Me.Txt
  loc_15D3F41:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_15D3F49:   var_98.Text = "0.00"
  loc_15D3F60:   Set var_94 = Me.Txt
  loc_15D3F66:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98)
  loc_15D3F8F:   If (Proc_183_19_E8DAFC(var_98, "Adult") = 0) Then
  loc_15D3F99:     Call Txt_GotFocus(CInt(5))
  loc_15D3F9E:     Exit Sub
  loc_15D3F9F:   End If
  loc_15D3F9F: End If
  loc_15D3FAA: Set var_94 = Me.Txt
  loc_15D3FB0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_98)
  loc_15D3FD9: If (Proc_183_19_E8DAFC(var_98, "Posting Method") = 0) Then
  loc_15D3FE3:   Call Txt_GotFocus(CInt(6))
  loc_15D3FE8:   Exit Sub
  loc_15D3FE9: End If
  loc_15D3FED: Set var_94 = Me.TopCtrl1
  loc_15D3FF3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_15D400C: If (CStr() = "Add") Then
  loc_15D4015:   var_D4 = 0
  loc_15D4034:   unk_4C6A63.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From FixedCharge ", var_B4, -1
  loc_15D403C:   var_94 = var_94.Fields
  loc_15D4044:   var_D4 = var_98.Item(var_98)
  loc_15D404C:   var_9C = var_9C.Value
  loc_15D407F:   var_F4 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_15D40AD:   var_104 = (1 + Format(CStr(var_E4), "000"))
  loc_15D40B8:   global_72 = CStr(var_104)
  loc_15D40CD: Else
  loc_15D40EA:   var_98 = Me.Fields.Item("Code")
  loc_15D4101:   global_72 = CStr(var_98.Value)
  loc_15D4112: End If
  loc_15D411B: unk_4C6A63.BeginTrans var_108
  loc_15D4124: var_86 = CByte(1) 'Byte
  loc_15D412C: Set var_94 = Me.TopCtrl1
  loc_15D4132: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_15D414B: If (CStr(var_F4) = "Add") Then
  loc_15D415C:   Set var_94 = Me.Txt
  loc_15D4162:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_15D417D:   Set var_9C = Me.Txt
  loc_15D4183:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118)
  loc_15D419E:   Set var_128 = Me.Txt
  loc_15D41A4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_12C)
  loc_15D41BF:   Set var_13C = Me.Txt
  loc_15D41C5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_140)
  loc_15D41E0:   Set var_150 = Me.Txt
  loc_15D41E6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_154)
  loc_15D4201:   Set var_164 = Me.Txt
  loc_15D4207:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_168)
  loc_15D421F:   Set var_178 = Me.Txt
  loc_15D4225:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_17C)
  loc_15D4234:   var_E4 = Trim(CVar(var_17C))
  loc_15D4244:   Set var_190 = Me.Txt
  loc_15D424A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_194)
  loc_15D4259:   var_1B4 = Trim(CVar(var_194))
  loc_15D426C:   Set var_1D8 = Me.Txt
  loc_15D4272:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1DC)
  loc_15D4287:   var_4E8 = Val(var_1DC.Text)
  loc_15D4298:   Set var_224 = Me.Txt
  loc_15D429E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_228, var_22C)
  loc_15D42B3:   var_4F0 = Val(var_22C)
  loc_15D42C4:   Set var_270 = Me.Txt
  loc_15D42CA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_274, var_278)
  loc_15D42DF:   var_4F8 = Val(var_278)
  loc_15D42F0:   Set var_2BC = Me.Txt
  loc_15D42F6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_2C0, var_2C4)
  loc_15D430B:   var_500 = Val(var_2C4)
  loc_15D431C:   Set var_308 = Me.Txt
  loc_15D4322:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_30C, var_310)
  loc_15D4345:   Set var_394 = Me.Txt
  loc_15D434B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_398)
  loc_15D436D:   Proc_6_7_F25D88(var_448, Date)
  loc_15D4389:   var_A0 = "Insert Into FixedCharge(Code,Name,SName,ChgCategory,RevCode,TaxInc,TaxStru,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,ExtraChild,Site_Code,PrintOption,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_72
  loc_15D4390:   var_110 = var_A0 & "','"
  loc_15D43DD:   var_174 = var_110 & var_98.Text & "','" & var_118.Text & "','" & var_12C.Text & "','" & var_140.Tag & "','" & var_154.Text & "','" & var_168.Tag
  loc_15D43EE:   var_C4 = "','"
  loc_15D4417:   var_220 = CVar(var_174 & "','") & var_E4 & var_C4 & var_1B4 & "'," & CVar(var_228.Text) & "," 
  loc_15D443F:   var_2B8 = var_220 & CVar(var_274.Text) & "," & CVar(var_2C0.Text) & "," 
  loc_15D4467:   var_350 = var_2B8 & CVar(var_30C.Text) & "," & CVar(Val(var_310)) & ",'" 
  loc_15D44B7:   var_498 = var_350 & CVar(MemVar_1F92070) & "','" & Trim(CVar(var_398)) & "','" & CVar(MemVar_1F920C8) & "'," & var_448 & ",'A','" & CVar(MemVar_1F92078) 
  loc_15D44CE:   unk_4C6A63.Execute CStr(var_498 & "')"), var_4DC, -1
  loc_15D4589: Else
  loc_15D4597:   Set var_94 = Me.Txt
  loc_15D459D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_15D45A5:   var_4E0 = var_98.Text
  loc_15D45B8:   Set var_9C = Me.Txt
  loc_15D45BE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_118, var_110)
  loc_15D45C6:   var_508 = var_118.Text
  loc_15D45D9:   Set var_128 = Me.Txt
  loc_15D45DF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_12C)
  loc_15D45FA:   Set var_13C = Me.Txt
  loc_15D4600:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_140)
  loc_15D461B:   Set var_150 = Me.Txt
  loc_15D4621:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_154)
  loc_15D463C:   Set var_164 = Me.Txt
  loc_15D4642:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_168)
  loc_15D465E:   Proc_6_39_E7C810(var_E4, CVar(Val(var_168.Text)))
  loc_15D4671:   Set var_178 = Me.Txt
  loc_15D4677:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_17C)
  loc_15D4693:   Proc_6_39_E7C810(var_1B4, CVar(Val(var_17C.Text)))
  loc_15D46A6:   Set var_190 = Me.Txt
  loc_15D46AC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_194)
  loc_15D46C8:   Proc_6_39_E7C810(var_220, CVar(Val(var_194.Text)))
  loc_15D46DB:   Set var_1D8 = Me.Txt
  loc_15D46E1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1DC)
  loc_15D46FD:   Proc_6_39_E7C810(var_2B8, CVar(Val(var_1DC.Text)))
  loc_15D4710:   Set var_224 = Me.Txt
  loc_15D4716:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_228)
  loc_15D4732:   Proc_6_39_E7C810(var_350, CVar(Val(var_228.Text)))
  loc_15D4745:   Set var_270 = Me.Txt
  loc_15D474B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_274)
  loc_15D4766:   Set var_2BC = Me.Txt
  loc_15D476C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_2C0)
  loc_15D4787:   Set var_308 = Me.Txt
  loc_15D478D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_30C)
  loc_15D47A8:   Set var_394 = Me.Txt
  loc_15D47AE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_398)
  loc_15D47C9:   Proc_6_7_F25D88(var_538, Date)
  loc_15D480C:   var_144 = "UPDATE FixedCharge SET Name='" & var_A0 & "',Sname='" & var_110 & "',ChgCategory='" & var_12C.Text & "',RevCode='" & var_140.Tag
  loc_15D4850:   var_26C = CVar(var_144 & "',TaxStru='" & var_154.Tag & "',FlatRate=") & var_E4 & ",Adult=" & var_1B4 & ",ExtraAdult=" & var_220 & ",Child=" 
  loc_15D4896:   var_428 = var_26C & var_2B8 & ",ExtraChild=" & var_350 & ",TaxInc='" & CVar(var_274.Text) & "',PrintOption='" & CVar(var_2C0.Text) & "',PostingMethod='" 
  loc_15D48D6:   var_548 = var_428 & CVar(var_30C.Text) & "',ChargeType='" & CVar(var_398.Text) & "',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_538 
  loc_15D4916:   unk_4C6A63.Execute CStr(var_548 & ",U_AE='E',Site_Code='" & CVar(MemVar_1F92070) & "' WHERE Code='" & CVar(global_72) & "'"), var_5B8, -1
  loc_15D49EC:   Set var_94 = Me.Txt
  loc_15D49F2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98, var_A0)
  loc_15D49FA:   var_4E0 = var_98.Tag
  loc_15D4A0D:   Set var_9C = Me.Txt
  loc_15D4A13:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_118)
  loc_15D4A2E:   Set var_128 = Me.Txt
  loc_15D4A34:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_12C)
  loc_15D4A50:   Proc_6_39_E7C810(var_E4, CVar(Val(var_12C.Text)))
  loc_15D4A63:   Set var_13C = Me.Txt
  loc_15D4A69:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_140)
  loc_15D4A85:   Proc_6_39_E7C810(var_1B4, CVar(Val(var_140.Text)))
  loc_15D4A98:   Set var_150 = Me.Txt
  loc_15D4A9E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_154)
  loc_15D4ABA:   Proc_6_39_E7C810(var_220, CVar(Val(var_154.Text)))
  loc_15D4ACD:   Set var_164 = Me.Txt
  loc_15D4AD3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_168)
  loc_15D4AEF:   Proc_6_39_E7C810(var_2B8, CVar(Val(var_168.Text)))
  loc_15D4B02:   Set var_178 = Me.Txt
  loc_15D4B08:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_17C)
  loc_15D4B24:   Proc_6_39_E7C810(var_350, CVar(Val(var_17C.Text)))
  loc_15D4B37:   Set var_190 = Me.Txt
  loc_15D4B3D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_194)
  loc_15D4B58:   Set var_1D8 = Me.Txt
  loc_15D4B5E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1DC)
  loc_15D4B79:   Set var_224 = Me.Txt
  loc_15D4B7F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_228)
  loc_15D4B9A:   Set var_270 = Me.Txt
  loc_15D4BA0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_274)
  loc_15D4BBB:   Proc_6_7_F25D88(var_538, Date)
  loc_15D4BE9:   var_F4 = CVar("UPDATE PLAN1 SET RevCode='" & var_A0 & "',TaxStru='" & var_118.Tag & "',FlatRate=") 'String
  loc_15D4BEF:   var_104 = var_F4 & var_E4 
  loc_15D4C42:   var_3B8 = var_104 & ",Adult=" & var_1B4 & ",ExtraAdult=" & var_220 & ",Child=" & var_2B8 & ",ExtraChild=" & var_350 & ",TaxInc='" & CVar(var_194.Text) 
  loc_15D4C7B:   var_498 = var_3B8 & "',PrintOption='" & CVar(var_1DC.Text) & "',PostingMethod='" & CVar(var_228.Text) & "',ChargeType='" & CVar(var_274.Text) 
  loc_15D4CBA:   var_578 = var_498 & "',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_538 & ",U_AE='E',Site_Code='" & CVar(MemVar_1F92070) & "' WHERE ChrgCode='" 
  loc_15D4CDE:   unk_4C6A63.Execute CStr(var_578 & CVar(global_72) & "'"), var_5B8, -1
  loc_15D4D88: End If
  loc_15D4D8E: unk_4C6A63.CommitTrans
  loc_15D4D97: var_86 = CByte(0) 'Byte
  loc_15D4D9B: Call Proc_140_38_F1E88C(var_2BC)
  loc_15D4DAB: Me.Requery -1
  loc_15D4DBB: Me.Requery -1
  loc_15D4DE8: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_15D4DF8: Set var_94 = Me.TopCtrl1
  loc_15D4DFE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_C4)
  loc_15D4E17: If (CStr(var_E4) = "Add") Then
  loc_15D4E1A:   Call TopCtrl1_UnknownEvent_A()
  loc_15D4E1F:   Exit Sub
  loc_15D4E20: End If
  loc_15D4E35: var_A0 = "INI"
  loc_15D4E43: Call Proc_140_33_F6E998(Proc_5_1_100CB50(var_A0, Me))
  loc_15D4E4E: Call Proc_140_35_140DA58(global_52)
  loc_15D4E53: Exit Sub
  loc_15D4E54: ' Referenced from: 15D3CA4
  loc_15D4E5D: If (CInt(var_86) = 1) Then
  loc_15D4E66:   unk_4C6A63.RollbackTrans
  loc_15D4E6B: End If
  loc_15D4E73: Set var_94 = Err()
  loc_15D4E79: Call 0.Method_arg_2C (var_A0)
  loc_15D4E92: MsgBox(CVar(var_A0), &H10, var_E4, var_F4, var_104)
  loc_15D4EA5: Exit Sub
End Sub

Private Sub ListView1_UnknownEvent_13 'F562DC
  'Data Table: 4C6A50
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F561FE: If (Me.ListView1.ListItems.Count > 0) Then
  loc_F56205:   Set var_A8 = Me.ListView1
  loc_F5624F:   Set var_C0 = Me.Txt
  loc_F56255:   Call 0.Method_ListView1_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5625D:   var_C4.Text = Me.ListView1.SelectedItem.Text
  loc_F5627D: End If
  loc_F56289: Me.FrmList1.Visible = False
  loc_F562B9: Set var_9C = Me.Txt
  loc_F562BF: Call 0.Method_ListView1_UnknownEvent_130 (CInt(Val(CStr(Me.ListView1.Tag))), var_A8)
  loc_F562C7: var_A8.SetFocus
  loc_F562DB: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC0B44
  'Data Table: 4C6A50
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC0ABA: On Error Goto loc_EC0AFF
  loc_EC0AC3: Me.MoveFirst
  loc_EC0ADD: var_8C = "code='" & MyValue
  loc_EC0AED: Me.Find var_8C & "'", 0, 1
  loc_EC0AF9: Call Proc_140_35_140DA58(var_A0)
  loc_EC0AFE: Exit Sub
  loc_EC0AFF: ' Referenced from: EC0ABA
  loc_EC0B07: Set var_A4 = Err()
  loc_EC0B0D: Call 0.Method_arg_2C (var_8C)
  loc_EC0B2E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC0B41: Exit Sub
  loc_EC0B42: Exit Sub
End Sub

Public Sub Proc_140_33_F6E998(arg_C) 'F6E998
  'Data Table: 4C6A50
  Dim var_98 As TextBox
  Dim arg_DFF As Integer
  loc_F6E862: Set var_8C = Me.Txt
  loc_F6E868: Call 0.Method_Proc_140_33_F6E998C (var_8E, var_86)
  loc_F6E878: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F6E88E:   Set var_8C = Me.Txt
  loc_F6E894:   Call 0.Method_Proc_140_33_F6E9980 (CInt(var_86), var_98)
  loc_F6E89C:   var_98.Enabled = arg_C
  loc_F6E8AB: Next var_92 'Byte
  loc_F6E8BE: Set var_8C = Me.Txt
  loc_F6E8C4: Call 0.Method_Proc_140_33_F6E9980 (CInt(3), var_98)
  loc_F6E8CC: var_98.Enabled = False
  loc_F6E8E6: Set var_8C = Me.Txt
  loc_F6E8EC: Call 0.Method_Proc_140_33_F6E9980 (CInt(8), var_98)
  loc_F6E90B: If (var_98.Text = vbNullString) Then
  loc_F6E91C:   Set var_8C = Me.Txt
  loc_F6E922:   Call 0.Method_Proc_140_33_F6E9980 (CInt(8), var_98)
  loc_F6E92A:   var_98.Text = "Add to Rate"
  loc_F6E936: End If
  loc_F6E944: Set var_8C = Me.Txt
  loc_F6E94A: Call 0.Method_Proc_140_33_F6E9980 (CInt(7), var_98)
  loc_F6E969: If (var_98.Text = vbNullString) Then
  loc_F6E97A:   Set var_8C = Me.Txt
  loc_F6E980:   Call 0.Method_Proc_140_33_F6E9980 (CInt(7), var_98)
  loc_F6E988:   var_98.Text = "Yes"
  loc_F6E994: End If
  loc_F6E994: Exit Sub
  loc_F6E995: arg_DFF = 
End Sub

Public Sub Proc_140_34_E774F4
  'Data Table: 4C6A50
  Dim var_98 As TextBox
  loc_E774A2: Set var_8C = Me.Txt
  loc_E774A8: Call 0.Method_Proc_140_34_E774F4C (var_8E, var_86)
  loc_E774B8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E774CE:   Set var_8C = Me.Txt
  loc_E774D4:   Call 0.Method_Proc_140_34_E774F40 (CInt(var_86), var_98)
  loc_E774DC:   var_98.Text = vbNullString
  loc_E774EB: Next var_92 'Byte
  loc_E774F1: Exit Sub
End Sub

Public Sub Proc_140_35_140DA58
  'Data Table: 4C6A50
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_4C6A63 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_11C As TextBox
  loc_140D020: On Error Goto loc_140DA15
  loc_140D029: Proc_183_45_E5C118(global_52)
  loc_140D084: unk_4C6A63.Execute CStr("Select U_Name,U_AE,U_EntDt From FixedCharge where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_140D08F: Set var_88 = var_118
  loc_140D0E3: var_118 = var_88.Fields
  loc_140D14C: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_140D191: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_140D20B: var_11C = var_88.Fields.Item("U_AE")
  loc_140D224: var_114 = "entdt : "
  loc_140D26C: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), "Last Update : ", var_114))
  loc_140D2B1: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_140D300: If (Me.RecordCount <= 0) Then
  loc_140D303:   Call Proc_140_34_E774F4()
  loc_140D30B: Else
  loc_140D33F:   global_72 = CStr(Me.Fields.Item("Name").Value)
  loc_140D38C:   Set var_118 = Me.Txt
  loc_140D392:   Call 0.Method_Proc_140_35_140DA580 (CInt(0), var_11C)
  loc_140D39A:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_140D3EC:   Set var_118 = Me.Txt
  loc_140D3F2:   Call 0.Method_Proc_140_35_140DA580 (CInt(0), var_11C)
  loc_140D3FA:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_140D44C:   Set var_118 = Me.Txt
  loc_140D452:   Call 0.Method_Proc_140_35_140DA580 (CInt(1), var_11C)
  loc_140D45A:   var_11C.Text = CStr(Me.Fields.Item("SName").Value)
  loc_140D4A9:   Set var_118 = Me.Txt
  loc_140D4AF:   Call 0.Method_Proc_140_35_140DA580 (CInt(&HD), var_11C)
  loc_140D4B7:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ChgCategory")))
  loc_140D504:   Set var_118 = Me.Txt
  loc_140D50A:   Call 0.Method_Proc_140_35_140DA580 (CInt(2), var_11C)
  loc_140D512:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RevName")))
  loc_140D55F:   Set var_118 = Me.Txt
  loc_140D565:   Call 0.Method_Proc_140_35_140DA580 (CInt(2), var_11C)
  loc_140D56D:   var_11C.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RevCode")))
  loc_140D5BA:   Set var_118 = Me.Txt
  loc_140D5C0:   Call 0.Method_Proc_140_35_140DA580 (CInt(3), var_11C)
  loc_140D5C8:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxName")))
  loc_140D615:   Set var_118 = Me.Txt
  loc_140D61B:   Call 0.Method_Proc_140_35_140DA580 (CInt(3), var_11C)
  loc_140D623:   var_11C.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxCode")))
  loc_140D68C:   Set var_118 = Me.Txt
  loc_140D692:   Call 0.Method_Proc_140_35_140DA580 (CInt(4), var_11C, CStr(Format(CVar(Me.Fields.Item("FlatRate")), "0.00")))
  loc_140D69A:   var_11C.Text = 1
  loc_140D709:   Set var_118 = Me.Txt
  loc_140D70F:   Call 0.Method_Proc_140_35_140DA580 (CInt(5), var_11C, CStr(Format(CVar(Me.Fields.Item("Adult")), "0.00")))
  loc_140D717:   var_11C.Text = 1
  loc_140D786:   Set var_118 = Me.Txt
  loc_140D78C:   Call 0.Method_Proc_140_35_140DA580 (CInt(&HA), var_11C, CStr(Format(CVar(Me.Fields.Item("Child")), "0.00")), 1)
  loc_140D794:   var_11C.Text = 1
  loc_140D803:   Set var_118 = Me.Txt
  loc_140D809:   Call 0.Method_Proc_140_35_140DA580 (CInt(&HB), var_11C, CStr(Format(CVar(Me.Fields.Item("ExtraAdult")), "0.00")), 1)
  loc_140D811:   var_11C.Text = 1
  loc_140D869:   var_F0 = Format(CVar(Me.Fields.Item("ExtraChild")), "0.00")
  loc_140D880:   Set var_118 = Me.Txt
  loc_140D886:   Call 0.Method_Proc_140_35_140DA580 (CInt(&HC), var_11C, CStr(var_F0), 1)
  loc_140D88E:   var_11C.Text = 1
  loc_140D8E1:   Set var_118 = Me.Txt
  loc_140D8E7:   Call 0.Method_Proc_140_35_140DA580 (CInt(7), var_11C)
  loc_140D8EF:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxInc")), 1)
  loc_140D93C:   Set var_118 = Me.Txt
  loc_140D942:   Call 0.Method_Proc_140_35_140DA580 (CInt(6), var_11C)
  loc_140D94A:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("PostingMethod")))
  loc_140D997:   Set var_118 = Me.Txt
  loc_140D99D:   Call 0.Method_Proc_140_35_140DA580 (CInt(9), var_11C)
  loc_140D9A5:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ChargeType")))
  loc_140D9E4:   var_F4 = Proc_6_38_E68A98(CVar(Me.Fields.Item("PrintOption")))
  loc_140D9F2:   Set var_118 = Me.Txt
  loc_140D9F8:   Call 0.Method_Proc_140_35_140DA580 (CInt(8), var_11C)
  loc_140DA00:   var_11C.Text = var_F4
  loc_140DA14: End If
  loc_140DA14: Exit Sub
  loc_140DA15: ' Referenced from: 140D020
  loc_140DA1D: Set var_8C = Err()
  loc_140DA23: Call 0.Method_arg_2C (var_F4)
  loc_140DA44: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_140DA57: Exit Sub
End Sub

Public Sub Proc_140_36_1087584
  'Data Table: 4C6A50
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4C6A63 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1087317: If (Me.RecordCount = 0) Then
  loc_108731A:   Proc_140_36_1087584 = 
  loc_1087320: End If
  loc_1087324: Set var_90 = Me.TopCtrl1
  loc_108732A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1087343: If (CStr() = "Add") Then
  loc_1087381:   Set var_90 = Me.Txt
  loc_1087387:   Call 0.Method_Proc_140_36_10875840 (CInt(0), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10873A8:   unk_4C6A63.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_10873B8:    = var_D0.Item()
  loc_10873C0:    = var_E4.Value
  loc_10873F1:   If (var_A8.Text.Fields > 0) Then
  loc_108740F:     var_A0 = "Duplicate Name"
  loc_1087415:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1087430:     Set var_90 = Me.Txt
  loc_1087436:     Call 0.Method_Proc_140_36_10875840 (CInt(0))
  loc_108743E:     var_A8.SetFocus
  loc_108744F:     Proc_140_36_1087584 = &HFF
  loc_1087455:   End If
  loc_1087458: Else
  loc_1087493:   Set var_90 = Me.Txt
  loc_1087499:   Call 0.Method_Proc_140_36_10875840 (CInt(0), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10874CB:   unk_4C6A63.Execute var_D0 & var_AC & "' And Name<>'" & global_72 & "'", 0, var_E4
  loc_10874DB:    = var_D0.Item(var_A8)
  loc_10874E3:    = var_E4.Value
  loc_1087518:   If (var_A8.Text.Fields > 0) Then
  loc_108753C:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1087557:     Set var_90 = Me.Txt
  loc_108755D:     Call 0.Method_Proc_140_36_10875840 (CInt(0))
  loc_1087565:     var_A8.SetFocus
  loc_1087576:     Proc_140_36_1087584 = &HFF
  loc_108757C:   End If
  loc_108757C: End If
  loc_108757C: Proc_140_36_1087584 = var_A8
End Sub

Public Sub Proc_140_37_10AF7D0
  'Data Table: 4C6A50
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_A8 As TextBox
  Dim var_B8 As String
  Dim unk_4C6A63 As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_144 As Fields15
  Dim var_148 As Field20
  loc_10AF53F: If (Me.RecordCount = 0) Then
  loc_10AF542:   Proc_140_37_10AF7D0 = 
  loc_10AF548: End If
  loc_10AF54C: Set var_90 = Me.TopCtrl1
  loc_10AF552: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10AF56B: If (CStr() = "Add") Then
  loc_10AF5A9:   Set var_90 = Me.Txt
  loc_10AF5AF:   Call 0.Method_Proc_140_37_10AF7D00 (CInt(1), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and SName='", var_A0, -1)
  loc_10AF5C7:   var_B8 = var_D0 & var_AC & "'"
  loc_10AF5D0:   unk_4C6A63.Execute var_B8, 0, var_E4
  loc_10AF5E0:    = var_D0.Item()
  loc_10AF5E8:    = var_E4.Value
  loc_10AF619:   If (var_A8.Text.Fields > 0) Then
  loc_10AF627:     var_F4 = "Information"
  loc_10AF637:     var_A0 = "Duplicate Short Name"
  loc_10AF63D:     MsgBox(var_A0, &H40, var_F4, var_114, var_134)
  loc_10AF658:     Set var_90 = Me.Txt
  loc_10AF65E:     Call 0.Method_Proc_140_37_10AF7D00 (CInt(1))
  loc_10AF666:     var_A8.SetFocus
  loc_10AF677:     Proc_140_37_10AF7D0 = &HFF
  loc_10AF67D:   End If
  loc_10AF680: Else
  loc_10AF686:   var_E0 = 0
  loc_10AF6BB:   Set var_90 = Me.Txt
  loc_10AF6C1:   Call 0.Method_Proc_140_37_10AF7D00 (CInt(1), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and SName='", var_A0, -1)
  loc_10AF6EA:   Set var_CC = Me.Txt
  loc_10AF6F0:   Call 0.Method_Proc_140_37_10AF7D00 (CInt(0), var_D0, var_B8, var_144 & var_AC & "' And Code<>'")
  loc_10AF6F8:   var_E0 = var_D0.Tag
  loc_10AF711:   unk_4C6A63.Execute var_148 & var_B8 & "'", var_F4, var_A8
  loc_10AF719:    = var_A8.Text.Fields
  loc_10AF721:    = var_144.Item()
  loc_10AF729:    = var_148.Value
  loc_10AF764:   If (var_F4 > 0) Then
  loc_10AF788:     MsgBox("Duplicate Short Name", &H40, "Information", var_114, var_134)
  loc_10AF7A3:     Set var_90 = Me.Txt
  loc_10AF7A9:     Call 0.Method_Proc_140_37_10AF7D00 (CInt(1))
  loc_10AF7B1:     var_A8.SetFocus
  loc_10AF7C2:     Proc_140_37_10AF7D0 = &HFF
  loc_10AF7C8:   End If
  loc_10AF7C8: End If
  loc_10AF7C8: Proc_140_37_10AF7D0 = var_A8
End Sub

Public Sub Proc_140_38_F1E88C
  'Data Table: 4C6A50
  loc_F1E79C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F1E7AE:   Me.DGHelp.Visible = False
  loc_F1E7B6: End If
  loc_F1E7D2: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_F1E7E4:   Me.DGRevenue.Visible = False
  loc_F1E7EC: End If
  loc_F1E808: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_F1E81A:   Me.DGTaxStru.Visible = False
  loc_F1E822: End If
  loc_F1E83D: If (Me.FrmList.Visible = &HFF) Then
  loc_F1E84C:   Me.FrmList.Visible = False
  loc_F1E854: End If
  loc_F1E870: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F1E882:   Me.FGPoint.Visible = False
  loc_F1E88A: End If
  loc_F1E88A: Exit Sub
End Sub

Public Sub Proc_140_39_1008C34
  'Data Table: 4C6A50
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_1008A32: Set var_88 = Me.Txt
  loc_1008A38: Call 0.Method_Proc_140_39_1008C340 (CInt(0), var_8C)
  loc_1008A57: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_1008A73: Set var_B4 = Me.Txt
  loc_1008A79: Call 0.Method_Proc_140_39_1008C340 (CInt(0), var_B8)
  loc_1008A94: Set var_88 = Me.Txt
  loc_1008A9A: Call 0.Method_Proc_140_39_1008C340 (CInt(0), var_8C)
  loc_1008AB2: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1008AC1: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1008AE1: Set var_88 = Me.Txt
  loc_1008AE7: Call 0.Method_Proc_140_39_1008C340 (CInt(2), var_8C)
  loc_1008B06: Me.DGRevenue.Left = CVar(var_8C.Left)
  loc_1008B22: Set var_B4 = Me.Txt
  loc_1008B28: Call 0.Method_Proc_140_39_1008C340 (CInt(2), var_B8)
  loc_1008B43: Set var_88 = Me.Txt
  loc_1008B49: Call 0.Method_Proc_140_39_1008C340 (CInt(2), var_8C)
  loc_1008B61: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1008B70: Me.DGRevenue.Top = CVar(var_8C.Left)
  loc_1008B90: Set var_88 = Me.Txt
  loc_1008B96: Call 0.Method_Proc_140_39_1008C340 (CInt(3), var_8C)
  loc_1008BB5: Me.DGTaxStru.Left = CVar(var_8C.Left)
  loc_1008BD1: Set var_B4 = Me.Txt
  loc_1008BD7: Call 0.Method_Proc_140_39_1008C340 (CInt(3), var_B8)
  loc_1008BF2: Set var_88 = Me.Txt
  loc_1008BF8: Call 0.Method_Proc_140_39_1008C340 (CInt(3), var_8C)
  loc_1008C10: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1008C1F: Me.DGTaxStru.Top = CVar(var_8C.Left)
  loc_1008C31: Exit Sub
End Sub

Public Sub Proc_140_40_1098130
  'Data Table: 4C6A50
  Dim var_F4 As String
  Dim unk_4C6A63 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_150 As Variant
  Dim var_90 As Recordset15
  Dim var_188 As Integer
  Dim var_114 As Variant
  Dim var_174 As Recordset15
  Dim var_178 As Fields15
  Dim var_18C As Field20
  loc_1097EDC: unk_4C6A63.Execute CStr("Select taxcode from taxstru where code='" & Trim(arg_14) & "'"), var_114, -1
  loc_1097EE7: Set var_88 = var_118
  loc_1097EFB: ' Referenced from: 1098129
  loc_1097F0A: If Not(var_88.EOF) Then
  loc_1097F72:   var_150 = "Select Code from taxstru where taxcode='" & var_88.Fields.Item("TaxCode").Value & "' and Code not in ('" & Trim(arg_14) & "')" 
  loc_1097F80:   unk_4C6A63.Execute CStr(var_150), var_170, -1
  loc_1097F8B:   Set var_90 = var_174
  loc_1097FAB:   ' Referenced from: 1098089
  loc_1097FBA:   If Not(var_90.EOF) Then
  loc_1097FC3:     var_188 = 0
  loc_109801B:     var_114 = "Select Count(*) from FixedCharge where TaxStru='" & var_90.Fields.Item("Code").Value & "' and DeskCode='" & CVar(arg_10) 
  loc_1098032:     unk_4C6A63.Execute CStr(var_114 & "'"), var_150, -1
  loc_109803A:     var_174 = var_174.Fields
  loc_1098042:     var_188 = var_178.Item(var_178)
  loc_109804A:     var_18C = var_18C.Value
  loc_109807B:     If (var_170 > 0) Then
  loc_109807E:       GoTo loc_1098121
  loc_1098081:     End If
  loc_1098084:     var_90.MoveNext
  loc_1098089:     GoTo loc_1097FAB
  loc_109808C:   End If
  loc_10980F5:   var_F4 = CStr("Delete From FixedCharge Where TaxCode='" & var_88.Fields.Item("TaxCode").Value & "' and DeskCode='" & Trim(arg_10) & "'")
  loc_10980FF:   unk_4C6A63.Execute var_F4, var_170, -1
  loc_1098121:   ' Referenced from: 109807E
  loc_1098124:   var_88.MoveNext
  loc_1098129:   GoTo loc_1097EFB
  loc_109812C: End If
  loc_109812C: Exit Sub
End Sub
