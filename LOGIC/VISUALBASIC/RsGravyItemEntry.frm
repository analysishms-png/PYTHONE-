VERSION 5.00
Begin VB.Form RsGravyItemEntry
  Caption = "Gravy Item Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11220
  ClientHeight = 7005
  BeginProperty Font
    Name = "Tahoma"
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
    Width = 11220
    Height = 510
    TabIndex = 42
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    Left = 8685
    Top = 1275
    Width = 1275
    Height = 255
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 3
    Appearance = 0 'Flat
  End
  Begin DataGrid DGDispCode
    Left = 9525
    Top = 2115
    Width = 1605
    Height = 2820
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 39
  End
  Begin MSFlexGrid FGPoint
    Left = 2430
    Top = 3075
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 38
  End
  Begin DataGrid DGUnit
    Left = 9030
    Top = 4470
    Width = 2100
    Height = 2295
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 30
  End
  Begin DataGrid DGRest
    Left = 6405
    Top = 4260
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin DataGrid DGItemGroup
    Left = 6420
    Top = 3330
    Width = 4665
    Height = 2295
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
  Begin DataGrid DGItemCat
    Left = 5925
    Top = 3825
    Width = 4410
    Height = 2460
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin DataGrid DGHelp
    Left = 6660
    Top = 2820
    Width = 4230
    Height = 2355
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin Frame Frame1
    Left = 885
    Top = 5280
    Width = 5640
    Height = 1680
    Visible = 0   'False
    TabIndex = 33
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox Txt
      Index = 11
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1500
      Top = 465
      Width = 3855
      Height = 255
      TabIndex = 34
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
    Begin CommandButton Command2
      Caption = "&Cancel"
      Index = 1
      Left = 4065
      Top = 1155
      Width = 1215
      Height = 360
      TabIndex = 37
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
    Begin CommandButton Command2
      Caption = "&Print"
      Index = 0
      Left = 2775
      Top = 1155
      Width = 1215
      Height = 360
      TabIndex = 36
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
    Begin Label LblName
      Caption = "Restaurant"
      Index = 4
      ForeColor = &HC00000&
      Left = 270
      Top = 465
      Width = 1020
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
  End
  Begin CommandButton Command1
    Caption = "&Consumption"
    BackColor = &HE0E0E0&
    Left = 4695
    Top = 1785
    Width = 1785
    Height = 570
    TabIndex = 32
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &H8000000F&
  End
  Begin CheckBox Check1
    Caption = "Carry Last Information"
    ForeColor = &HC00000&
    Left = 915
    Top = 5025
    Width = 3360
    Height = 210
    Visible = 0   'False
    TabIndex = 31
    Value = 1
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
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2070
    Top = 930
    Width = 1275
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 6
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
    Left = 8685
    Top = 1815
    Width = 1275
    Height = 255
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 12
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    Left = 8685
    Top = 1545
    Width = 1275
    Height = 255
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    Left = 8685
    Top = 465
    Width = 3855
    Height = 255
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2070
    Top = 1785
    Width = 2610
    Height = 255
    TabIndex = 6
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
    Index = 5
    BackColor = &HFFFFFF&
    Left = 8685
    Top = 735
    Width = 1275
    Height = 255
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 3
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    Left = 8685
    Top = 1005
    Width = 1275
    Height = 255
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 3
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2070
    Top = 2070
    Width = 2610
    Height = 255
    TabIndex = 13
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2070
    Top = 1215
    Width = 3855
    Height = 255
    TabIndex = 4
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
    Left = 2070
    Top = 645
    Width = 3855
    Height = 255
    TabIndex = 2
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
    ForeColor = &HFF0000&
    Left = 2070
    Top = 1500
    Width = 1275
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 6
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
  Begin TopCtrl TopCtrl11
    Left = 0
    Top = 6630
    Width = 11220
    Height = 375
    Visible = 0   'False
    TabIndex = 0
  End
  Begin Label LblName
    Caption = "Service Charge"
    Index = 6
    ForeColor = &H0&
    Left = 7035
    Top = 1275
    Width = 1305
    Height = 240
    Visible = 0   'False
    TabIndex = 41
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 1
    ForeColor = &H0&
    Left = 10050
    Top = 1290
    Width = 810
    Height = 210
    Visible = 0   'False
    TabIndex = 40
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
  Begin Label LblLedgerAc
    Caption = "Code"
    Index = 3
    ForeColor = &HC00000&
    Left = 420
    Top = 930
    Width = 495
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
  Begin Label LblName
    Caption = "Applicable Date"
    Index = 2
    ForeColor = &H0&
    Left = 7035
    Top = 1815
    Width = 1320
    Height = 240
    Visible = 0   'False
    TabIndex = 28
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblLedgerAc
    Caption = "Sale Rate"
    Index = 1
    ForeColor = &H0&
    Left = 7035
    Top = 1545
    Width = 825
    Height = 240
    Visible = 0   'False
    TabIndex = 27
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Restaurant"
    Index = 1
    ForeColor = &H0&
    Left = 7035
    Top = 465
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 26
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 0
    ForeColor = &H0&
    Left = 10050
    Top = 1020
    Width = 810
    Height = 210
    Visible = 0   'False
    TabIndex = 25
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
    Caption = "(Y)es/(N)o"
    Index = 16
    ForeColor = &H0&
    Left = 10050
    Top = 750
    Width = 810
    Height = 210
    Visible = 0   'False
    TabIndex = 24
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
  Begin Label LblName
    Caption = "Item Category"
    Index = 12
    ForeColor = &HC00000&
    Left = 420
    Top = 1785
    Width = 1335
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
    Caption = "Rate Edit"
    Index = 6
    ForeColor = &H0&
    Left = 7035
    Top = 735
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 21
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Disc Applicable"
    Index = 5
    ForeColor = &H0&
    Left = 7035
    Top = 1005
    Width = 1275
    Height = 240
    Visible = 0   'False
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Kitchen"
    Index = 3
    ForeColor = &HC00000&
    Left = 420
    Top = 2070
    Width = 720
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
    Caption = "Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 420
    Top = 1215
    Width = 555
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
  Begin Label LblLedgerAc
    Caption = "Item Group"
    Index = 0
    ForeColor = &HC00000&
    Left = 420
    Top = 645
    Width = 1065
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
    Caption = "Unit"
    Index = 2
    ForeColor = &HC00000&
    Left = 420
    Top = 1500
    Width = 375
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
End

Attribute VB_Name = "RsGravyItemEntry"


Private Sub DGUnit_UnknownEvent_9 'F3CFE4
  'Data Table: 4D3AB0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3CEDB: Me.DGUnit.Visible = False
  loc_F3CEFA: If (Me.RecordCount > 0) Then
  loc_F3CF39:   Set var_B4 = Me.Txt
  loc_F3CF3F:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3CF47:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3CF7A:   var_B0 = Me.Fields.Item("Name")
  loc_F3CF99:   Set var_B4 = Me.Txt
  loc_F3CF9F:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3CFA7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3CFBD: End If
  loc_F3CFC8: Set var_A8 = Me.Txt
  loc_F3CFCE: Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1))
  loc_F3CFD6: var_B0.SetFocus
  loc_F3CFE2: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_1F 'E6ED60
  'Data Table: 4D3AB0
  loc_E6ED1E: Proc_6_153_E91194(Me.DGUnit, arg_14)
  loc_E6ED35: Set var_8C = Me.FGPoint
  loc_E6ED51: Proc_6_138_106D6F8(Me.DGUnit, global_84, CInt(1))
  loc_E6ED5F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '158E320
  'Data Table: 4D3AB0
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_B4 As Variant
  Dim var_E8 As String
  Dim var_104 As Variant
  Dim var_C4 As Variant
  Dim var_88 As Variant
  Dim unk_4D3AB7 As Connection15
  loc_158D1A0: On Error Goto loc_158E2DC
  loc_158D1AD: Set var_88 = Me.Txt
  loc_158D1B3: Call 0.Method_Txt_GotFocus0 (Index)
  loc_158D1C1: Proc_6_74_E226B0(var_8C)
  loc_158D1CD: Call Proc_133_43_FB5A1C(var_8C)
  loc_158D1D5: var_92 = Index
  loc_158D1E0: If (var_92 = CInt(0)) Then
  loc_158D1FA:   If (Me.RecordCount > 0) Then
  loc_158D208:     Set var_8C = Me.FGPoint
  loc_158D220:     Proc_6_137_1193554(Me.DGHelp, global_68, Index)
  loc_158D22E:   End If
  loc_158D231: Else
  loc_158D239:   If (var_92 = CInt(2)) Then
  loc_158D253:     If (Me.RecordCount > 0) Then
  loc_158D261:       Set var_8C = Me.FGPoint
  loc_158D279:       Proc_6_137_1193554(Me.DGItemGroup, global_72, Index)
  loc_158D287:     End If
  loc_158D2D5:     Set var_88 = Me.Txt
  loc_158D2DB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_158D2E3:     var_8C = var_8C.Text
  loc_158D2FB:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_158D2FE:       Exit Sub
  loc_158D2FF:     End If
  loc_158D30C:     Set var_88 = Me.Txt
  loc_158D312:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158D31A:     var_A0 = var_8C.Text
  loc_158D32C:     var_B0 = "Name"
  loc_158D367:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_158D370:       Me.MoveFirst
  loc_158D393:       Set var_88 = Me.Txt
  loc_158D399:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_158D3A1:       0 = var_8C.Text
  loc_158D3BA:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_158D3CF:     End If
  loc_158D3D2:   Else
  loc_158D3DA:     If (var_92 = CInt(6)) Then
  loc_158D3F4:       If (Me.RecordCount > 0) Then
  loc_158D402:         Set var_8C = Me.FGPoint
  loc_158D41A:         Proc_6_137_1193554(Me.DGItemCat, global_80)
  loc_158D428:       End If
  loc_158D476:       Set var_88 = Me.Txt
  loc_158D47C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_158D484:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_158D49C:       If (Index Or (var_A0 = vbNullString)) Then
  loc_158D49F:         Exit Sub
  loc_158D4A0:       End If
  loc_158D4AD:       Set var_88 = Me.Txt
  loc_158D4B3:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158D4BB:       var_A0 = var_8C.Text
  loc_158D4CD:       var_B0 = "Name"
  loc_158D508:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_158D511:         Me.MoveFirst
  loc_158D534:         Set var_88 = Me.Txt
  loc_158D53A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_158D542:         0 = var_8C.Text
  loc_158D55B:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_158D570:       End If
  loc_158D573:     Else
  loc_158D57B:       If (var_92 = CInt(1)) Then
  loc_158D595:         If (Me.RecordCount > 0) Then
  loc_158D5A3:           Set var_8C = Me.FGPoint
  loc_158D5BB:           Proc_6_137_1193554(Me.DGUnit, global_84)
  loc_158D5C9:         End If
  loc_158D617:         Set var_88 = Me.Txt
  loc_158D61D:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_158D625:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_158D63D:         If (Index Or (var_A0 = vbNullString)) Then
  loc_158D640:           Exit Sub
  loc_158D641:         End If
  loc_158D64E:         Set var_88 = Me.Txt
  loc_158D654:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158D65C:         var_A0 = var_8C.Text
  loc_158D66E:         var_B0 = "Name"
  loc_158D685:         var_B4 = Me.Fields.Item(var_B0)
  loc_158D6A9:         If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_158D6B2:           Me.MoveFirst
  loc_158D6D5:           Set var_88 = Me.Txt
  loc_158D6DB:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_158D6E3:           0 = var_8C.Text
  loc_158D6FC:           Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_158D711:         End If
  loc_158D714:       Else
  loc_158D71C:         If Not (var_92 = CInt(4)) Then
  loc_158D727:           If Not (var_92 = CInt(5)) Then
  loc_158D732:             If (var_92 = CInt(&HC)) Then
  loc_158D735:             End If
  loc_158D735:           End If
  loc_158D744:           Set var_88 = Me.Txt
  loc_158D74A:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158D752:           var_8C.SelStart = 0
  loc_158D76B:           Set var_88 = Me.Txt
  loc_158D771:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158D78C:           Set var_90 = Me.Txt
  loc_158D792:           Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_158D79A:           var_B4.SelLength = Len(var_8C.Text)
  loc_158D7BA:           Set var_88 = Me.Txt
  loc_158D7C0:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158D7DA:           Set var_90 = Me.Txt
  loc_158D7E0:           Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_158D7E8:           var_B4.Tag = var_8C.Text
  loc_158D7FE:         Else
  loc_158D806:           If (var_92 = CInt(7)) Then
  loc_158D816:             Set var_88 = Me.Txt
  loc_158D81C:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158D837:             Set var_90 = Me.Txt
  loc_158D83D:             Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_158D845:             var_B4.SelLength = Len(var_8C.Text)
  loc_158D865:             Set var_88 = Me.Txt
  loc_158D86B:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158D873:             var_A0 = var_8C.Text
  loc_158D885:             Set var_90 = Me.Txt
  loc_158D88B:             Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_158D893:             var_B4.Tag = var_A0
  loc_158D8A9:           Else
  loc_158D8B1:             If (var_92 = CInt(3)) Then
  loc_158D8C2:               Set var_88 = Me.Txt
  loc_158D8C8:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_158D8E7:               Me.DGRest.Left = CVar(var_8C.Left)
  loc_158D903:               Set var_90 = Me.Txt
  loc_158D909:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_B4)
  loc_158D924:               Set var_88 = Me.Txt
  loc_158D92A:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_158D942:               var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_158D951:               Me.DGRest.Top = CVar(var_8C.Left)
  loc_158D972:               Me.Filter = 0
  loc_158D983:               Me.Filter = "RestType='Kitchen'"
  loc_158D99F:               If (Me.RecordCount > 0) Then
  loc_158D9AD:                 Set var_8C = Me.FGPoint
  loc_158D9C5:                 Proc_6_137_1193554(Me.DGRest, global_76)
  loc_158D9D3:               End If
  loc_158DA21:               Set var_88 = Me.Txt
  loc_158DA27:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_158DA2F:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_158DA47:               If (Index Or (var_A0 = vbNullString)) Then
  loc_158DA4A:                 Exit Sub
  loc_158DA4B:               End If
  loc_158DA58:               Set var_88 = Me.Txt
  loc_158DA5E:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158DA66:               var_A0 = var_8C.Text
  loc_158DA78:               var_B0 = "Name"
  loc_158DA8F:               var_B4 = Me.Fields.Item(var_B0)
  loc_158DAB3:               If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_158DABC:                 Me.MoveFirst
  loc_158DADF:                 Set var_88 = Me.Txt
  loc_158DAE5:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_158DAED:                 0 = var_8C.Text
  loc_158DB06:                 Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_158DB1B:               End If
  loc_158DB2E:               Me.DGRest.Tag = CVar(CStr(Index))
  loc_158DB3C:             Else
  loc_158DB44:               If (var_92 = CInt(8)) Then
  loc_158DB55:                 Set var_88 = Me.Txt
  loc_158DB5B:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_158DB7A:                 Me.DGRest.Left = CVar(var_8C.Left)
  loc_158DB96:                 Set var_90 = Me.Txt
  loc_158DB9C:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_B4)
  loc_158DBB7:                 Set var_88 = Me.Txt
  loc_158DBBD:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_158DBD5:                 var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_158DBDE:                 Set var_104 = Me.DGRest
  loc_158DBE4:                 var_104.Top = CVar(var_8C.Left)
  loc_158DC05:                 Me.Filter = 0
  loc_158DC16:                 Me.Filter = "RestType<>'Kitchen'"
  loc_158DC32:                 If (Me.RecordCount > 0) Then
  loc_158DC40:                   Set var_8C = Me.FGPoint
  loc_158DC58:                   Proc_6_137_1193554(Me.DGRest, global_76)
  loc_158DC66:                 End If
  loc_158DCB4:                 Set var_88 = Me.Txt
  loc_158DCBA:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_158DCC2:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_158DCDA:                 If (Index Or (var_A0 = vbNullString)) Then
  loc_158DCDD:                   Exit Sub
  loc_158DCDE:                 End If
  loc_158DCEB:                 Set var_88 = Me.Txt
  loc_158DCF1:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158DCF9:                 var_A0 = var_8C.Text
  loc_158DD0B:                 var_B0 = "Name"
  loc_158DD1A:                 var_90 = Me.Fields
  loc_158DD46:                 If CBool(CVar(var_A0) <> var_90.Item(var_B0).Value) Then
  loc_158DD4F:                   Me.MoveFirst
  loc_158DD72:                   Set var_88 = Me.Txt
  loc_158DD78:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_158DD80:                   0 = var_8C.Text
  loc_158DD99:                   Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_158DDAE:                 End If
  loc_158DDC1:                 Me.DGRest.Tag = CVar(CStr(Index))
  loc_158DDCF:               Else
  loc_158DDD7:                 If (var_92 = CInt(&HB)) Then
  loc_158DDE8:                   Set var_8C = Me.Txt
  loc_158DDEE:                   Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_90)
  loc_158DE14:                   var_B0 = CVar((Me.Frame1.Left + var_90.Left)) 'Single
  loc_158DE23:                   Me.DGRest.Left = var_B0
  loc_158DE41:                   Set var_8C = Me.Txt
  loc_158DE47:                   Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_90)
  loc_158DE62:                   Set var_B4 = Me.Txt
  loc_158DE68:                   Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_104)
  loc_158DE96:                   var_B0 = CVar((((Me.Frame1.Top + var_90.Top) + var_104.Height) + CDbl(&H1E))) 'Single
  loc_158DEA5:                   Me.DGRest.Top = var_B0
  loc_158DEC8:                   Me.Filter = 0
  loc_158DED9:                   Me.Filter = "RestType='Kitchen'"
  loc_158DEF5:                   If (Me.RecordCount > 0) Then
  loc_158DF03:                     Set var_8C = Me.FGPoint
  loc_158DF1B:                     Proc_6_137_1193554(Me.DGRest, global_76)
  loc_158DF29:                   End If
  loc_158DF77:                   Set var_88 = Me.Txt
  loc_158DF7D:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_158DF85:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_158DF9D:                   If (Index Or (var_A0 = vbNullString)) Then
  loc_158DFA0:                     Exit Sub
  loc_158DFA1:                   End If
  loc_158DFAE:                   Set var_88 = Me.Txt
  loc_158DFB4:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158DFBC:                   var_A0 = var_8C.Text
  loc_158DFCE:                   var_B0 = "Name"
  loc_158DFE5:                   var_B4 = Me.Fields.Item(var_B0)
  loc_158E009:                   If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_158E012:                     Me.MoveFirst
  loc_158E035:                     Set var_88 = Me.Txt
  loc_158E03B:                     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_158E043:                     0 = var_8C.Text
  loc_158E05C:                     Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_158E071:                   End If
  loc_158E084:                   Me.DGRest.Tag = CVar(CStr(Index))
  loc_158E092:                 Else
  loc_158E09A:                   If (var_92 = CInt(9)) Then
  loc_158E0AA:                     Set var_88 = Me.Txt
  loc_158E0B0:                     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158E0CB:                     Set var_90 = Me.Txt
  loc_158E0D1:                     Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_158E0D9:                     var_B4.SelLength = Len(var_8C.Text)
  loc_158E0F9:                     Set var_88 = Me.Txt
  loc_158E0FF:                     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_158E107:                     var_A0 = var_8C.Text
  loc_158E119:                     Set var_90 = Me.Txt
  loc_158E11F:                     Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_158E127:                     var_B4.Tag = var_A0
  loc_158E13D:                   Else
  loc_158E145:                     If (var_92 = CInt(&HA)) Then
  loc_158E156:                       Set var_88 = Me.Txt
  loc_158E15C:                       Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_8C)
  loc_158E17B:                       Me.DGDispCode.Left = CVar(var_8C.Left)
  loc_158E197:                       Set var_90 = Me.Txt
  loc_158E19D:                       Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_B4)
  loc_158E1B8:                       Set var_88 = Me.Txt
  loc_158E1BE:                       Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_8C)
  loc_158E1D6:                       var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_158E1E5:                       Me.DGDispCode.Top = CVar(var_8C.Left)
  loc_158E215:                       Set var_88 = Me.Txt
  loc_158E21B:                       Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C, var_A0, "SELECT DispCode as COde,DispCode FROM ItemMast Where Type IN ('Finish','Semi Finish')  And DispCode<>9999 and RestCode ='")
  loc_158E223:                       var_C4 = var_8C.Tag
  loc_158E22C:                       var_E8 = -1 & var_A0
  loc_158E23C:                       unk_4D3AB7.Execute 1 & var_A0 & "' ORDER BY DispCode", var_90, 
  loc_158E271:                       CVarUnk
  loc_158E276:                       VerifyVarObj
  loc_158E27C:                       Set var_88 = Me.DGDispCode
  loc_158E282:                       LateIdStAd
  loc_158E2A7:                       If (Me.RecordCount > 0) Then
  loc_158E2B5:                         Set var_8C = Me.FGPoint
  loc_158E2CD:                         Proc_6_137_1193554(Me.DGDispCode, Me.DGDispCode, Index)
  loc_158E2DB:                       End If
  loc_158E2DB:                     End If
  loc_158E2DB:                   End If
  loc_158E2DB:                 End If
  loc_158E2DB:               End If
  loc_158E2DB:             End If
  loc_158E2DB:           End If
  loc_158E2DB:         End If
  loc_158E2DB:       End If
  loc_158E2DB:     End If
  loc_158E2DB:   End If
  loc_158E2DB: End If
  loc_158E2DB: Exit Sub
  loc_158E2DC: ' Referenced from: 158D1A0
  loc_158E2E4: Set var_88 = Err()
  loc_158E2EA: Call 0.Method_arg_2C (var_A0, var_8C)
  loc_158E30B: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_12C)
  loc_158E31E: Exit Sub
  loc_158E31F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1359600
  'Data Table: 4D3AB0
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As DataGrid
  Dim var_94 As DataGrid
  Dim var_9C As DataGrid
  loc_1358DE2: If (CLng(Shift) = &H1B) Then
  loc_1358DE5:   Call Proc_133_43_FB5A1C()
  loc_1358DEA:   Exit Sub
  loc_1358DEB: End If
  loc_1358DEE: var_88 = KeyCode
  loc_1358DF9: If (var_88 = CInt(0)) Then
  loc_1358E1E:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_1358E3E:     Set var_9C = Me.FGPoint
  loc_1358E6C:     Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, KeyCode, global_68, Shift)
  loc_1358E80:   End If
  loc_1358ED9:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1358EFF:     Proc_6_138_106D6F8(Me.DGHelp, global_68, KeyCode, Me.FGPoint, 0)
  loc_1358F0D:   End If
  loc_1358F10: Else
  loc_1358F18:   If (var_88 = CInt(2)) Then
  loc_1358F43:     Set var_9C = Nothing
  loc_1358F75:     Proc_6_69_134A198(Me.DGItemGroup, Me.Txt, CInt(2), global_72, Shift, 0, 1)
  loc_1358FE4:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1358FEB:       Set var_9C = Me.DGItemGroup
  loc_135900A:       Proc_6_138_106D6F8(var_9C, global_72, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_1359018:     End If
  loc_135901B:   Else
  loc_1359023:     If (var_88 = CInt(6)) Then
  loc_135907C:       Proc_6_69_134A198(Me.DGItemCat, Me.Txt, KeyCode, global_80, Shift, 0, 1, Nothing)
  loc_13590EB:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1359111:         Proc_6_138_106D6F8(Me.DGItemCat, global_80, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_135911F:       End If
  loc_1359122:     Else
  loc_135912A:       If Not (var_88 = CInt(8)) Then
  loc_1359135:         If Not (var_88 = CInt(3)) Then
  loc_1359140:           If (var_88 = CInt(&HB)) Then
  loc_1359143:           End If
  loc_1359143:         End If
  loc_1359199:         Proc_6_69_134A198(Me.DGRest, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_1359208:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1359216:           Set var_94 = Me.FGPoint
  loc_135922E:           Proc_6_138_106D6F8(Me.DGRest, global_76, KeyCode, var_94, Me.FGPoint, 0)
  loc_135923C:         End If
  loc_135923F:       Else
  loc_1359247:         If (var_88 = CInt(&HA)) Then
  loc_1359254:           Set var_90 = Me.Txt
  loc_135925A:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, 0, 1)
  loc_1359275:           Proc_6_41_FA0BA4(var_94, Shift, 4, 0)
  loc_13592A3:           If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_13592C3:             Set var_9C = Me.FGPoint
  loc_13592F1:             Proc_6_79_11ACE04(Me.DGDispCode, Me.Txt, KeyCode, global_88, Shift, 0)
  loc_1359305:           End If
  loc_135935E:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1359384:             Proc_6_138_106D6F8(Me.DGDispCode, global_88, KeyCode, Me.FGPoint, 1)
  loc_1359392:           End If
  loc_1359395:         Else
  loc_135939D:           If (var_88 = CInt(1)) Then
  loc_13593BD:             Set var_9C = Me.FGPoint
  loc_13593EB:             Proc_6_79_11ACE04(Me.DGUnit, Me.Txt, KeyCode, global_84, Shift, 0, 1)
  loc_1359458:             If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_135945F:               Set var_9C = Me.DGUnit
  loc_135947E:               Proc_6_138_106D6F8(var_9C, global_84, KeyCode, Me.FGPoint, var_9C, 0)
  loc_135948C:             End If
  loc_135948C:           End If
  loc_135948C:         End If
  loc_135948C:       End If
  loc_135948C:     End If
  loc_135948C:   End If
  loc_135948C: End If
  loc_13594BD: Set var_9C = Me.DGRest
  loc_1359533: If ((((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGDispCode.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(Me.DGItemGroup.Visible) = 0)) And (CBool(Me.DGItemCat.Visible) = 0)) And (CBool(Me.DGUnit.Visible) = 0)) Then
  loc_1359554:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_1359561:     Call Txt_Validate(CInt(3))
  loc_135956B:     Call Proc_133_45_E81544(0, var_86, var_9C, 0)
  loc_1359573:   Else
  loc_1359591:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_135959A:       Call Txt_Validate(KeyCode)
  loc_13595A5:       If (var_86 = &HFF) Then
  loc_13595A8:         Exit Sub
  loc_13595A9:       End If
  loc_13595AF:       Proc_6_75_E527CC(Shift, arg_14, var_86)
  loc_13595B7:     Else
  loc_13595CC:       If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13595D5:         Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_13595DD:       Else
  loc_13595F0:         If ((CLng(Shift) = &H26) And (KeyCode <> CInt(8))) Then
  loc_13595F9:           Proc_6_76_E52838(Shift, arg_14)
  loc_13595FE:         End If
  loc_13595FE:       End If
  loc_13595FE:     End If
  loc_13595FE:   End If
  loc_13595FE: End If
  loc_13595FE: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '11199BC
  'Data Table: 4D3AB0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  loc_1119667: Proc_6_58_E054C0(arg_10)
  loc_1119672: Proc_6_133_E7EF78(var_94)
  loc_111967B: arg_10 = CInt(var_94)
  loc_1119684: var_96 = KeyAscii
  loc_111968F: If (var_96 = CInt(&HA)) Then
  loc_111969C:   Set var_9C = Me.Txt
  loc_11196A2:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_11196BD:   Proc_6_42_129A86C(var_A0, arg_10, 4)
  loc_11196CC: Else
  loc_11196D4:   If (var_96 = CInt(2)) Then
  loc_11196F3:     If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_1119720:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_72, arg_10, "Name")
  loc_1119752:       Proc_6_138_106D6F8(Me.DGItemGroup, global_72, KeyAscii, Me.FGPoint)
  loc_1119760:     End If
  loc_1119763:   Else
  loc_111976B:     If Not (var_96 = CInt(8)) Then
  loc_1119776:       If Not (var_96 = CInt(3)) Then
  loc_1119781:         If (var_96 = CInt(&HB)) Then
  loc_1119784:         End If
  loc_1119784:       End If
  loc_11197A0:       If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_11197CD:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_11197FF:         Proc_6_138_106D6F8(Me.DGRest, global_76, KeyAscii, Me.FGPoint, 0)
  loc_111980D:       End If
  loc_1119810:     Else
  loc_1119818:       If (var_96 = CInt(6)) Then
  loc_1119837:         If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_1119864:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_111987E:           Set var_A0 = Me.FGPoint
  loc_1119896:           Proc_6_138_106D6F8(Me.DGItemCat, global_80, KeyAscii, var_A0, 0)
  loc_11198A4:         End If
  loc_11198A7:       Else
  loc_11198AF:         If (var_96 = CInt(7)) Then
  loc_11198BC:           Set var_9C = Me.Txt
  loc_11198C2:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 0)
  loc_11198DD:           Proc_6_42_129A86C(var_A0, arg_10, 8, 2)
  loc_11198EC:         Else
  loc_11198F4:           If Not (var_96 = CInt(4)) Then
  loc_11198FF:             If Not (var_96 = CInt(5)) Then
  loc_111990A:               If (var_96 = CInt(&HC)) Then
  loc_111990D:               End If
  loc_111990D:             End If
  loc_1119936:             If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1119946:               Set var_9C = Me.Txt
  loc_111994C:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_1119954:               var_A0.Text = 0
  loc_1119963:             Else
  loc_111998C:               If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_111999C:                 Set var_9C = Me.Txt
  loc_11199A2:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "No")
  loc_11199AA:                 var_A0.Text = arg_10
  loc_11199B6:               End If
  loc_11199B6:             End If
  loc_11199B8:             arg_10 = 0
  loc_11199BB:           End If
  loc_11199BB:         End If
  loc_11199BB:       End If
  loc_11199BB:     End If
  loc_11199BB:   End If
  loc_11199BB: End If
  loc_11199BB: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1015074
  'Data Table: 4D3AB0
  Dim var_86 As Integer
  Dim var_A4 As TextBox
  Dim arg_38FF As Integer
  loc_1014E57: var_86 = KeyCode
  loc_1014E62: If (var_86 = CInt(0)) Then
  loc_1014E88:   Set var_A0 = Me.Txt
  loc_1014E8E:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8)
  loc_1014E96:   (CBool(Me.DGHelp.Visible) = &HFF) = var_A4.Text
  loc_1014EB3:   If (var_86 And (var_A8 <> vbNullString)) Then
  loc_1014EC0:     var_A8 = "Name"
  loc_1014EDB:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_68)
  loc_1014EEE:     Set var_A4 = Me.DGHelp
  loc_1014EF5:     Set var_A0 = Me.FGPoint
  loc_1014F0D:     Proc_6_138_106D6F8(var_A4, global_68, KeyCode)
  loc_1014F1B:   End If
  loc_1014F1E: Else
  loc_1014F26:   If (var_86 = CInt(&HA)) Then
  loc_1014F4C:     Set var_A0 = Me.Txt
  loc_1014F52:     Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8, (CBool(Me.DGDispCode.Visible) = &HFF))
  loc_1014F5A:     var_A0 = var_A4.Text
  loc_1014F77:     If (Shift And (var_A8 <> vbNullString)) Then
  loc_1014F84:       var_A8 = "DispCode"
  loc_1014F9F:       Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_88)
  loc_1014FD1:       Proc_6_138_106D6F8(Me.DGDispCode, global_88, KeyCode, Me.FGPoint)
  loc_1014FDF:     End If
  loc_1014FE2:   Else
  loc_1014FEA:     If (var_86 = CInt(1)) Then
  loc_1015009:       If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_1015016:         var_A8 = "Name"
  loc_1015031:         Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_84, Shift)
  loc_1015063:         Proc_6_138_106D6F8(Me.DGUnit, global_84, KeyCode, Me.FGPoint)
  loc_1015071:       End If
  loc_1015071:     End If
  loc_1015071:   End If
  loc_1015071: End If
  loc_1015071: Exit Sub
  loc_1015072: arg_38FF = var_A8
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4765C
  'Data Table: 4D3AB0
  loc_E4763A: Set var_88 = Me.Txt
  loc_E47640: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4764E: Proc_6_73_E22704(var_8C)
  loc_E4765A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14DA204
  'Data Table: 4D3AB0
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim var_B0 As String
  Dim arg_10 As Integer
  Dim var_98 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim unk_4D3AB7 As Connection15
  Dim var_124 As String
  loc_14D943C: On Error Goto loc_14DA1BF
  loc_14D9442: var_86 = Cancel
  loc_14D944D: If (var_86 = CInt(9)) Then
  loc_14D945A:   Set var_8C = Me.Txt
  loc_14D9460:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14D9480:   Set var_98 = Me.Txt
  loc_14D9486:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_14D948E:   var_9C.Text = Proc_6_33_1512840(var_90)
  loc_14D94AF:   Set var_8C = Me.Txt
  loc_14D94B5:   Call 0.Method_Txt_Validate0 (CInt(7), var_90)
  loc_14D94BD:   var_A0 = var_90.Text
  loc_14D94D4:   If (var_A0 = vbNullString) Then
  loc_14D94F8:     MsgBox("First Enter Sale Rate", &H40, "Validation", var_100, var_120)
  loc_14D950A:     arg_10 = &HFF
  loc_14D9518:     Set var_8C = Me.Txt
  loc_14D951E:     Call 0.Method_Txt_Validate0 (CInt(7), var_90)
  loc_14D9526:     var_90.SetFocus
  loc_14D9532:     Exit Sub
  loc_14D9533:   End If
  loc_14D9541:   Set var_8C = Me.Txt
  loc_14D9547:   Call 0.Method_Txt_Validate0 (CInt(7), var_90, var_A0)
  loc_14D954F:   arg_10 = var_90.Text
  loc_14D956A:   Set var_94 = Me.Txt
  loc_14D9570:   Call 0.Method_Txt_Validate0 (CInt(9), var_98, var_124)
  loc_14D9578:   (var_A0 <> vbNullString) = var_98.Text
  loc_14D9598:   If (var_86 And (var_124 = vbNullString)) Then
  loc_14D95BC:     MsgBox("First Enter App. Date", &H40, "Validation", var_100, var_120)
  loc_14D95CE:     arg_10 = &HFF
  loc_14D95D1:     Exit Sub
  loc_14D95D2:   End If
  loc_14D95D5: Else
  loc_14D95DD:   If (var_86 = CInt(&HA)) Then
  loc_14D95E3:     Call Proc_133_42_12C62EC(var_126)
  loc_14D95EE:     If (var_126 = &HFF) Then
  loc_14D95F3:       arg_10 = &HFF
  loc_14D95F6:       Exit Sub
  loc_14D95F7:     End If
  loc_14D95FA:   Else
  loc_14D9602:     If (var_86 = CInt(7)) Then
  loc_14D960F:       Set var_8C = Me.Txt
  loc_14D9615:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14D964F:       Set var_94 = Me.Txt
  loc_14D9655:       Call 0.Method_Txt_Validate0 (Cancel, var_98, CStr(Format(CVar(var_90), "0.00")), 1)
  loc_14D965D:       var_98.Text = 1
  loc_14D967A:     Else
  loc_14D9682:       If (var_86 = CInt(0)) Then
  loc_14D9688:         Call Proc_133_42_12C62EC(var_126, arg_10)
  loc_14D9693:         If (var_126 = &HFF) Then
  loc_14D9698:           arg_10 = &HFF
  loc_14D969B:           Exit Sub
  loc_14D969C:         End If
  loc_14D96A7:         Set var_8C = Me.Txt
  loc_14D96AD:         Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_14D96B5:         var_A0 = "Item Name"
  loc_14D96D6:         If (Proc_6_27_EA565C(var_90, var_A0) = 0) Then
  loc_14D96E4:           Set var_8C = Me.Txt
  loc_14D96EA:           Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_14D96F2:           var_90.SetFocus
  loc_14D9700:           arg_10 = &HFF
  loc_14D9703:           Exit Sub
  loc_14D9704:         End If
  loc_14D9707:       Else
  loc_14D970F:         If (var_86 = CInt(2)) Then
  loc_14D9760:           Set var_8C = Me.Txt
  loc_14D9766:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_14D976E:           arg_10 = var_90.Text
  loc_14D9786:           If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_14D9789:             Exit Sub
  loc_14D978A:           End If
  loc_14D97C5:           Set var_94 = Me.Txt
  loc_14D97CB:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14D97D3:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14D9824:           Set var_94 = Me.Txt
  loc_14D982A:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14D9832:           var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14D9862:           var_90 = Me.Fields.Item("Type")
  loc_14D9873:           var_A0 = Proc_6_38_E68A98(CVar(var_90))
  loc_14D9879:           global_56 = var_A0
  loc_14D9889:         Else
  loc_14D9891:           If (var_86 = CInt(6)) Then
  loc_14D98E2:             Set var_8C = Me.Txt
  loc_14D98E8:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0)
  loc_14D98F0:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_14D9908:             If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_14D990B:               Exit Sub
  loc_14D990C:             End If
  loc_14D9947:             Set var_94 = Me.Txt
  loc_14D994D:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14D9955:             var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14D9988:             var_90 = Me.Fields.Item("Code")
  loc_14D99A6:             Set var_94 = Me.Txt
  loc_14D99AC:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14D99B4:             var_98.Tag = CStr(var_90.Value)
  loc_14D99CD:           Else
  loc_14D99D5:             If Not (var_86 = CInt(3)) Then
  loc_14D99E0:               If (var_86 = CInt(&HB)) Then
  loc_14D99E3:               End If
  loc_14D9A31:               Set var_8C = Me.Txt
  loc_14D9A37:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14D9A57:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_14D9A67:                 Set var_8C = Me.Txt
  loc_14D9A6D:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14D9A75:                 var_90.Text = vbNullString
  loc_14D9A8E:                 Set var_8C = Me.Txt
  loc_14D9A94:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14D9A9C:                 var_90.Tag = vbNullString
  loc_14D9AA8:                 Exit Sub
  loc_14D9AA9:               End If
  loc_14D9AE4:               Set var_94 = Me.Txt
  loc_14D9AEA:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14D9AF2:               var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14D9B25:               var_90 = Me.Fields.Item("Code")
  loc_14D9B43:               Set var_94 = Me.Txt
  loc_14D9B49:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14D9B51:               var_98.Tag = CStr(var_90.Value)
  loc_14D9B6A:             Else
  loc_14D9B72:               If (var_86 = CInt(8)) Then
  loc_14D9BC3:                 Set var_8C = Me.Txt
  loc_14D9BC9:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14D9BE9:                 If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_14D9BEE:                   arg_10 = &HFF
  loc_14D9BF1:                   Exit Sub
  loc_14D9BF2:                 End If
  loc_14D9C2D:                 Set var_94 = Me.Txt
  loc_14D9C33:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14D9C3B:                 var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14D9C8C:                 Set var_94 = Me.Txt
  loc_14D9C92:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14D9C9A:                 var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14D9CEF:                 var_E0 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where Type IN ('Finish','Semi Finish') AND RESTCODE='" & Me.Fields.Item("Code").Value 
  loc_14D9D06:                 unk_4D3AB7.Execute CStr(var_E0 & "' ORDER BY Name"), var_120, -1
  loc_14D9D3D:                 CVarUnk
  loc_14D9D42:                 VerifyVarObj
  loc_14D9D48:                 Set var_8C = Me.DGItemGroup
  loc_14D9D4E:                 LateIdStAd
  loc_14D9D9B:                 var_E0 = "SELECT Code,Name,RestCode FROM ItemCatMast where (cattype is not NULL and cattype<>'')  AND RESTCODE='" & Me.Fields.Item("Code").Value 
  loc_14D9DB2:                 unk_4D3AB7.Execute CStr(var_E0 & "' ORDER BY Name"), var_120, -1
  loc_14D9DE9:                 CVarUnk
  loc_14D9DEE:                 VerifyVarObj
  loc_14D9DF4:                 Set var_8C = Me.DGItemCat
  loc_14D9DFA:                 LateIdStAd
  loc_14D9E0B:                 var_B0 = "DiscApp"
  loc_14D9E1A:                 var_8C = Me.Fields
  loc_14D9E22:                 var_90 = var_8C.Item(var_B0)
  loc_14D9E33:                 var_A0 = Proc_6_38_E68A98(CVar(var_90), var_8C, var_94, var_94)
  loc_14D9E51:                 If (var_A0 = "Y") Then
  loc_14D9E67:                   Call 0.Method_Txt_Validate0 (CInt(4), var_90, &HFF, Me.Txt)
  loc_14D9E6F:                   var_90.Enabled = var_94
  loc_14D9E89:                   Set var_8C = Me.Txt
  loc_14D9E8F:                   Call 0.Method_Txt_Validate0 (CInt(4), var_90, "Yes")
  loc_14D9E97:                   var_90.Text = var_94
  loc_14D9EA6:                 Else
  loc_14D9EB3:                   Set var_8C = Me.Txt
  loc_14D9EB9:                   Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_14D9EC1:                   var_90.Enabled = False
  loc_14D9EDB:                   Set var_8C = Me.Txt
  loc_14D9EE1:                   Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_14D9EE9:                   var_90.Text = "No"
  loc_14D9EF5:                 End If
  loc_14D9EF8:               Else
  loc_14D9F00:                 If (var_86 = CInt(1)) Then
  loc_14D9F21:                   Set var_8C = Me.Txt
  loc_14D9F27:                   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, "Name like '")
  loc_14D9F2F:                   0 = var_90.Text
  loc_14D9F48:                   Me.Find 1 & var_A0 & "*'", var_B0, arg_10
  loc_14D9FAB:                   Set var_8C = Me.Txt
  loc_14D9FB1:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14D9FD1:                   If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_14D9FE1:                     Set var_8C = Me.Txt
  loc_14D9FE7:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14D9FEF:                     var_90.Text = vbNullString
  loc_14DA008:                     Set var_8C = Me.Txt
  loc_14DA00E:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14DA016:                     var_90.Tag = vbNullString
  loc_14DA022:                     Exit Sub
  loc_14DA023:                   End If
  loc_14DA03A:                   If (Me.AbsolutePosition > 0) Then
  loc_14DA078:                     Set var_94 = Me.Txt
  loc_14DA07E:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14DA086:                     var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14DA0B9:                     var_90 = Me.Fields.Item("Code")
  loc_14DA0CA:                     var_A0 = CStr(var_90.Value)
  loc_14DA0D7:                     Set var_94 = Me.Txt
  loc_14DA0DD:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_14DA0E5:                     var_98.Tag = var_A0
  loc_14DA0FB:                   End If
  loc_14DA0FE:                 Else
  loc_14DA106:                   If Not (var_86 = CInt(4)) Then
  loc_14DA111:                     If Not (var_86 = CInt(5)) Then
  loc_14DA11C:                       If (var_86 = CInt(&HC)) Then
  loc_14DA11F:                       End If
  loc_14DA11F:                     End If
  loc_14DA129:                     Set var_8C = Me.Txt
  loc_14DA12F:                     Call 0.Method_Txt_Validate0 (Cancel)
  loc_14DA14E:                     var_100 = Ucase(Left(CVar(var_90), 1))
  loc_14DA16A:                     If (var_100 = "Y") Then
  loc_14DA17A:                       Set var_8C = Me.Txt
  loc_14DA180:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14DA188:                       var_90.Text = "Yes"
  loc_14DA197:                     Else
  loc_14DA1A4:                       Set var_8C = Me.Txt
  loc_14DA1AA:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14DA1B2:                       var_90.Text = "No"
  loc_14DA1BE:                     End If
  loc_14DA1BE:                   End If
  loc_14DA1BE:                 End If
  loc_14DA1BE:               End If
  loc_14DA1BE:             End If
  loc_14DA1BE:           End If
  loc_14DA1BE:         End If
  loc_14DA1BE:       End If
  loc_14DA1BE:     End If
  loc_14DA1BE:   End If
  loc_14DA1BE: End If
  loc_14DA1BE: Exit Sub
  loc_14DA1BF: ' Referenced from: 14D943C
  loc_14DA1C7: Set var_8C = Err()
  loc_14DA1CD: Call 0.Method_arg_2C (var_A0)
  loc_14DA1EE: MsgBox(CVar(var_A0), &H40, "Information", var_100, var_120)
  loc_14DA201: Exit Sub
  loc_14DA202: Exit Sub
End Sub

Private Sub Form_Load() '110C0FC
  'Data Table: 4D3AB0
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_4D3AB7 As Connection15
  Dim var_B4 As Variant
  loc_110BDB8: On Error Goto loc_110C0B7
  loc_110BDCD: Set var_88 = Me
  loc_110BDD3: Proc_6_23_DFBA28(var_88, 3255)
  loc_110BDDB: Call Proc_133_44_109FD9C(6960)
  loc_110BDFB: var_94 = "SELECT Code,Name,ItemGroup,RestCode FROM ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type IN ('Semi Finish') and GravyItem='Yes'  And DispCode<>9999 ORDER BY Name"
  loc_110BE04: unk_4D3AB7.Execute var_94, var_B4, -1
  loc_110BE15: Set global_68 = var_88
  loc_110BE33: CVarUnk
  loc_110BE38: VerifyVarObj
  loc_110BE44: LateIdStAd
  loc_110BE6D: var_94 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and RestType='Kitchen' ORDER BY Name"
  loc_110BE76: unk_4D3AB7.Execute var_94, var_B4, -1
  loc_110BEA5: CVarUnk
  loc_110BEAA: VerifyVarObj
  loc_110BEB6: LateIdStAd
  loc_110BEE8: unk_4D3AB7.Execute "SELECT Name as Code,Name FROM UnitMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_110BF17: CVarUnk
  loc_110BF1C: VerifyVarObj
  loc_110BF28: LateIdStAd
  loc_110BF51: var_94 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type IN ('Semi Finish') ORDER BY Name"
  loc_110BF5A: unk_4D3AB7.Execute var_94, var_B4, -1
  loc_110BF89: CVarUnk
  loc_110BF8E: VerifyVarObj
  loc_110BF9A: LateIdStAd
  loc_110BFC3: var_94 = "SELECT Code,Name,RestCode FROM ItemCatMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (cattype is not NULL and cattype<>'') ORDER BY Name"
  loc_110BFCC: unk_4D3AB7.Execute var_94, var_B4, -1
  loc_110BFFB: CVarUnk
  loc_110C000: VerifyVarObj
  loc_110C00C: LateIdStAd
  loc_110C02E: var_90 = "SELECT I.Code,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SchrgApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,I.TYPE,DispCode,R.Name as RestName,I.RestCode,I.kitchen,K.Name as KitchenName,R.DiscApp,I.Site_Code,I.LogSite_Code FROM ((((ItemMast I Inner join ItemGrp IG on IG.Code=I.ItemGroup) Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code))Inner Join Depart R on R.Code=I.RestCode) Inner Join Depart K on K.Code=I.Kitchen Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_110C03E: unk_4D3AB7.Execute var_90 & "' or I.LOGSITE_CODE='HO') and I.GravyItem='Yes' and IG.Type IN ('Semi Finish')  ORDER BY R.Name,I.Name", var_B4, -1
  loc_110C070: Set var_88 = Me
  loc_110C079: var_90 = "INI"
  loc_110C087: Call Proc_133_39_EB6A94(Proc_5_1_100CB50(var_90, var_88, Me.DGItemCat, var_88, var_88, Me.DGItemGroup, var_88, var_88), Me.DGUnit, var_88, var_88)
  loc_110C09B: Call 0.Method_arg_160 (var_88, Me.DGRest, var_88)
  loc_110C0A9: Call 0.Method_arg_164 (var_88, var_88)
  loc_110C0B1: Call Proc_133_41_1356B70(Me.DGHelp)
  loc_110C0B6: Exit Sub
  loc_110C0B7: ' Referenced from: 110BDB8
  loc_110C0BF: Set var_88 = Err()
  loc_110C0C5: Call 0.Method_arg_2C (var_90)
  loc_110C0E6: MsgBox(CVar(var_90), &H40, "Information", var_E8, var_108)
  loc_110C0F9: Exit Sub
  loc_110C0FA: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6C5E8
  'Data Table: 4D3AB0
  loc_E6C597: Set global_64 = Nothing
  loc_E6C5A9: Set global_68 = Nothing
  loc_E6C5BB: Set global_76 = Nothing
  loc_E6C5CD: Set global_72 = Nothing
  loc_E6C5DF: Set global_80 = Nothing
  loc_E6C5E6: Exit Sub
End Sub

Private Sub Form_Activate() 'E4D640
  'Data Table: 4D3AB0
  loc_E4D610: On Error Goto loc_E4D63A
  loc_E4D617: Set var_88 = Me.TopCtrl1
  loc_E4D61D: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4D632: If (CLng(CInt()) = &H2D) Then
  loc_E4D635:   Call TopCtrl1_UnknownEvent_15()
  loc_E4D63A:   ' Referenced from: E4D610
  loc_E4D63A: End If
  loc_E4D63A: Proc_6_60_E62BC4()
  loc_E4D63F: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A0D4
  'Data Table: 4D3AB0
  loc_E2A0AC: On Error Goto loc_E2A0CB
  loc_E2A0C3: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2A0CB: ' Referenced from: E2A0AC
  loc_E2A0CB: Proc_6_60_E62BC4(Shift)
  loc_E2A0D0: Exit Sub
End Sub

Private Sub Command1_Click() '1040930
  'Data Table: 4D3AB0
  Dim var_9C As String
  Dim var_AC As String
  Dim var_A4 As TextBox
  Dim unk_4D3AB7 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_94 As TextBox
  Dim var_FC As Boolean
  loc_1040700: Set var_8C = New FrmConsumMast
  loc_1040721: Set var_90 = Me.Frame1
  loc_1040727: Call 0.Method_Command1_Click0 (CInt(0), var_94, var_98, "Select FinItem+RestCode+Convert(Varchar(11),AppDate,103) As SearchCode From BOM Where FinItem='")
  loc_104072F: var_D4 = FrmConsumMast.Frame1.Tag
  loc_1040738: var_9C = -1 & var_98
  loc_104073F: var_AC = var_9C & "' And RestCode='"
  loc_1040750: Set var_A0 = Me.Txt
  loc_1040756: Call 0.Method_Command1_Click0 (CInt(8), var_A4, var_A8)
  loc_104075E: var_AC = var_A4.Tag
  loc_1040777: unk_4D3AB7.Execute var_D8 & var_A8 & "'", , 
  loc_1040782: Set var_88 = var_D8
  loc_10407B5: If (var_88.EOF = 0) Then
  loc_10407C5:   Me.Global.Load var_8C
  loc_10407E4:   var_94 = var_88.Fields.Item("SearchCode")
  loc_10407EC:   var_D4 = CVar(var_94) 'Address
  loc_10407F4:   Call var_8C.SEARCHBACK
  loc_1040803:   Call var_8C.TopCtrl1_eEdit
  loc_104080C: Else
  loc_104080F:   Call var_8C.TopCtrl1_eAdd
  loc_1040815:   var_C4 = 0
  loc_1040826:   Set var_90 = Me.Txt
  loc_104082C:   Call 0.Method_Command1_Click0 (CInt(0), var_94)
  loc_1040834:   var_D4 = CVar(var_94) 'Address
  loc_104083C:   LateMemCallSt
  loc_1040856:   Set var_90 = Me.Txt
  loc_104085C:   Call 0.Method_Command1_Click0 (CInt(0), var_94, var_98, var_8C)
  loc_1040864:   var_D4 = var_94.Tag
  loc_1040870:   var_C4 = 0
  loc_1040881:   var_8C.Txt.Tag = var_C4
  loc_104089E:   Set var_90 = var_94(CInt(8))
  loc_10408A4:   Call 0.Method_Command1_Click0 (CVar(var_98), var_C4)
  loc_10408CC:   Set var_90 = var_94(CInt(8))
  loc_10408D2:   Call 0.Method_Command1_Click0 (var_98)
  loc_10408DA:   var_D4 = var_8C.TextBox.Tag
  loc_10408EE:   CVar(var_94).Tag = CVar(var_98)
  loc_104090C:   var_8C.Mode = 1
  loc_1040910:   var_C4 = 0
  loc_1040916:   var_FC = True
  loc_104091D:   Call var_8C.Txt_Validate
  loc_1040923: End If
  loc_1040926: Call var_8C.Show
  loc_104092C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '102B8B0
  'Data Table: 4D3AB0
  Dim var_88 As CheckBox
  Dim var_90 As TextBox
  loc_102B678: On Error Goto loc_102B86D
  loc_102B67B: Call Proc_133_40_F21248()
  loc_102B69B: If (Me.Check1.Value = 1) Then
  loc_102B69E:   Call Proc_133_41_1356B70()
  loc_102B6A3: End If
  loc_102B6B1: Set var_88 = Me.Txt
  loc_102B6B7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_90)
  loc_102B6BF: var_90.Text = vbNullString
  loc_102B6D9: Set var_88 = Me.Txt
  loc_102B6DF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_90)
  loc_102B6E7: var_90.Tag = vbNullString
  loc_102B701: Set var_88 = Me.Txt
  loc_102B707: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_90)
  loc_102B70F: var_90.Text = vbNullString
  loc_102B729: Set var_88 = Me.Txt
  loc_102B72F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_90)
  loc_102B737: var_90.Text = vbNullString
  loc_102B751: Set var_88 = Me.Txt
  loc_102B757: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_90)
  loc_102B75F: var_90.Tag = vbNullString
  loc_102B779: Set var_88 = Me.Txt
  loc_102B77F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_90)
  loc_102B7A1: Set var_88 = Me.Txt
  loc_102B7A7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_90)
  loc_102B7AF: var_90.Tag = vbNullString
  loc_102B7DE: Call Proc_133_39_EB6A94(Proc_5_1_100CB50("ADD", Me))
  loc_102B7F7: Set var_88 = Me.Txt
  loc_102B7FD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_90)
  loc_102B805: var_94 = vbNullString
  loc_102B81C: If (var_94 = vbNullString) Then
  loc_102B82A:   Set var_88 = Me.Txt
  loc_102B830:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_90)
  loc_102B838:   var_90.SetFocus
  loc_102B847: Else
  loc_102B852:   Set var_88 = Me.Txt
  loc_102B858:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_90)
  loc_102B860:   var_90.SetFocus
  loc_102B86C: End If
  loc_102B86C: Exit Sub
  loc_102B86D: ' Referenced from: 102B678
  loc_102B875: Set var_88 = Err()
  loc_102B87B: Call 0.Method_arg_2C (var_94)
  loc_102B89C: MsgBox(CVar(var_94), &H40, "Information", var_E4, var_104)
  loc_102B8AF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBAC10
  'Data Table: 4D3AB0
  loc_EBAB7C: On Error Goto loc_EBAC07
  loc_EBABB6: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBABC5:   Set var_110 = Me
  loc_EBABDC:   Call Proc_133_39_EB6A94(Proc_5_1_100CB50("INI", var_110))
  loc_EBABE7:   Call Proc_133_41_1356B70(global_64)
  loc_EBABEF: Else
  loc_EBABF5:   Call 0.Method_arg_1E8 (var_110)
  loc_EBABFD:   Call var_110.SetFocus
  loc_EBAC06: End If
  loc_EBAC06: Exit Sub
  loc_EBAC07: ' Referenced from: EBAB7C
  loc_EBAC07: Proc_6_60_E62BC4()
  loc_EBAC0C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1311200
  'Data Table: 4D3AB0
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_4D3AB7 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_1310AD4: On Error Goto loc_13111A9
  loc_1310AE5: If (Proc_183_56_FE8818(global_64) = &HFF) Then
  loc_1310AE8:   Exit Sub
  loc_1310AE9: End If
  loc_1310B1B: var_D4 = "KOT"
  loc_1310B63: If (Proc_6_108_1010FEC(MemVar_1F92044, "KOT", "ITEM", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_1310B66:   Exit Sub
  loc_1310B67: End If
  loc_1310B99: var_D4 = "STOCK"
  loc_1310BE1: If (Proc_6_108_1010FEC(MemVar_1F92044, "STOCK", "ITEM", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_1310BE4:   Exit Sub
  loc_1310BE5: End If
  loc_1310C5F: If (Proc_6_108_1010FEC(MemVar_1F92044, "BOM", "FinItem", CStr(Me.Fields.Item("Code").Value), 0, "Consumption") = 0) Then
  loc_1310C62:   Exit Sub
  loc_1310C63: End If
  loc_1310C9A: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_1310C9F:   var_96 = 0
  loc_1310CAB:   unk_4D3AB7.BeginTrans var_D0
  loc_1310CB2:   var_96 = &HFF
  loc_1310CC6:   var_94 = Me.Bookmark 'Variant
  loc_1310D20:   unk_4D3AB7.Execute CStr("Delete From ItemMast Where Code='" & Me.Fields.Item("Code").Value & "'"), var_138, -1
  loc_1310D6B:   var_168 = 0
  loc_1310D7E:   var_160 = 0
  loc_1310D89:   var_15C = 0
  loc_1310D9C:   var_154 = 0
  loc_1310DA7:   var_150 = 0
  loc_1310DBA:   var_148 = 0
  loc_1310E03:   Proc_154_5_10E33A4(MemVar_1F92044, "ItemMast", "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1310E81:   unk_4D3AB7.Execute CStr("Delete From ItemRate Where ItemCode='" & Me.Fields.Item("Code").Value & "'"), var_138, -1
  loc_1310ECC:   var_168 = 0
  loc_1310EDF:   var_160 = 0
  loc_1310EEA:   var_15C = 0
  loc_1310EFD:   var_154 = 0
  loc_1310F08:   var_150 = 0
  loc_1310F1B:   var_148 = 0
  loc_1310F64:   Proc_154_5_10E33A4(MemVar_1F92044, "ItemRate", "ItemCode", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_1310FD4:   var_118 = "Delete From STOCK Where ITEM='" & Me.Fields.Item("Code").Value & "'" 
  loc_1310FE2:   unk_4D3AB7.Execute CStr(var_118), var_138, -1
  loc_131102D:   var_168 = 0
  loc_1311040:   var_160 = 0
  loc_131104B:   var_15C = 0
  loc_131105E:   var_154 = 0
  loc_1311069:   var_150 = 0
  loc_131107C:   var_148 = 0
  loc_13110BC:   var_B4 = "Stock"
  loc_13110C5:   Proc_154_5_10E33A4(MemVar_1F92044, var_B4, "Item", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_13110F3:   unk_4D3AB7.CommitTrans
  loc_13110FA:   var_96 = 0
  loc_1311108:   Me.Requery -1
  loc_1311118:   Me.Requery -1
  loc_1311128:   Me.Requery -1
  loc_1311148:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1311155:     Me.Bookmark = var_94
  loc_131115D:   Else
  loc_1311171:     If (Me.EOF = 0) Then
  loc_131117A:       Me.MoveLast
  loc_131117F:     End If
  loc_131117F:   End If
  loc_131117F:   Call Proc_133_41_1356B70(var_96, var_148, 0, var_150, var_154)
  loc_13111A0:   Proc_5_0_110649C(&HFF, Me, global_64, 0)
  loc_13111A8: End If
  loc_13111A8: Exit Sub
  loc_13111A9: ' Referenced from: 1310AD4
  loc_13111AF: If (var_96 = &HFF) Then
  loc_13111B8:   unk_4D3AB7.RollbackTrans
  loc_13111BD: End If
  loc_13111C5: Set var_9C = Err()
  loc_13111CB: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_13111EC: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_13111FF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FAD0D4
  'Data Table: 4D3AB0
  Dim Me As Variant
  Dim var_98 As TextBox
  loc_FACF48: On Error Goto loc_FAD091
  loc_FACF59: If (Proc_183_55_FE7900(global_64) = &HFF) Then
  loc_FACF5C:   Exit Sub
  loc_FACF5D: End If
  loc_FACF74: If (Me.RecordCount > 0) Then
  loc_FACF9A:   Call Proc_133_39_EB6A94(Proc_5_1_100CB50("EDIT", Me))
  loc_FACFB3:   Set var_90 = Me.Txt
  loc_FACFB9:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HA), var_98)
  loc_FACFC1:   var_8C = var_98.Text
  loc_FACFE8:   Set var_90 = Me.Txt
  loc_FACFEE:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(8), var_98, 0)
  loc_FACFF6:   var_98.Enabled = CInt(var_8C)
  loc_FAD00D:   Set var_90 = Me.Txt
  loc_FAD013:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FAD01B:   var_98.SetFocus
  loc_FAD032:   If (global_92 = "Y") Then
  loc_FAD042:     Set var_90 = Me.Txt
  loc_FAD048:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98)
  loc_FAD050:     var_98.Enabled = False
  loc_FAD05C:   End If
  loc_FAD05F: Else
  loc_FAD080:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FAD090: End If
  loc_FAD090: Exit Sub
  loc_FAD091: ' Referenced from: FACF48
  loc_FAD099: Set var_90 = Err()
  loc_FAD09F: Call 0.Method_arg_2C (var_8C)
  loc_FAD0C0: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_FAD0D3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B450
  'Data Table: 4D3AB0
  loc_E1B445: Me.Global.Unload Me
  loc_E1B44D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F239B0
  'Data Table: 4D3AB0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F238B0: On Error Goto loc_F23948
  loc_F238BC: var_88 = Me.RecordCount
  loc_F238CA: If (var_88 <= 0) Then
  loc_F238D3:   var_B8 = "Information"
  loc_F238EE:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F238FE:   Exit Sub
  loc_F238FF: End If
  loc_F23906: var_10C = "SELECT I.Code as SearchCode,I.Name,I.Unit,IG.Name as ItemGrpName,IC.Name As ItemCategory,convert(varchar(8),I.Dispcode,103),Depart.Name as Resname,convert(varchar(50),I.SaleRate,103),Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END ,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END FROM ((ItemMast I Inner join ItemGrp IG on IG.Code=I.ItemGroup) Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code)  Inner join depart on I.restcode=depart.code  Where (Depart.LOGSITE_CODE='" & MemVar_1F92078
  loc_F2390D: MemVar_1F920E4 = var_10C & "' or Depart.LOGSITE_CODE='HO') and Depart.RestType='Kitchen' and IG.Type IN ('Semi Finish') Order by I.Name"
  loc_F23917: var_10C = "3000,1500,2000,1000,1000,2000,500"
  loc_F2391D: Proc_6_126_F1BCC0(var_10C)
  loc_F2392B: MemVar_1F92120 = Me
  loc_F23942: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F23947: Exit Sub
  loc_F23948: ' Referenced from: F238B0
  loc_F23950: Set var_110 = Err()
  loc_F23956: Call 0.Method_arg_1C (var_88)
  loc_F23967: If (var_88 <> 0) Then
  loc_F23972:   Set var_110 = Err()
  loc_F23978:   Call 0.Method_arg_2C (var_10C)
  loc_F23999:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F239AC: End If
  loc_F239AC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3B178
  'Data Table: 4D3AB0
  loc_E3B168: Proc_5_0_110649C(&HFF, Me)
  loc_E3B170: Call Proc_133_41_1356B70(global_64)
  loc_E3B175: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3C258
  'Data Table: 4D3AB0
  loc_E3C248: Proc_5_0_110649C(&HFF, Me)
  loc_E3C250: Call Proc_133_41_1356B70(global_64)
  loc_E3C255: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3BA78
  'Data Table: 4D3AB0
  loc_E3BA68: Proc_5_0_110649C(&HFF, Me)
  loc_E3BA70: Call Proc_133_41_1356B70(global_64)
  loc_E3BA75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E37758
  'Data Table: 4D3AB0
  loc_E37748: Proc_5_0_110649C(&HFF, Me)
  loc_E37750: Call Proc_133_41_1356B70(global_64)
  loc_E37755: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E663D8
  'Data Table: 4D3AB0
  Dim var_88 As Frame
  Dim var_8C As TextBox
  loc_E66396: Me.Frame1.Top = CDbl(0)
  loc_E663AA: Me.Frame1.Visible = True
  loc_E663BD: Set var_88 = Me.Txt
  loc_E663C3: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HB))
  loc_E663CB: var_8C.SetFocus
  loc_E663D7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E63728
  'Data Table: 4D3AB0
  Dim Me As Recordset15
  loc_E636DF: Me.Requery -1
  loc_E636EF: Me.Requery -1
  loc_E636FF: Me.Requery -1
  loc_E6370F: Me.Requery -1
  loc_E6371F: Me.Requery -1
  loc_E63724: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14B28B8
  'Data Table: 4D3AB0
  Dim var_A4 As String
  Dim var_DC As Variant
  Dim unk_4D3AB7 As Connection15
  Dim var_98 As Variant
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_F0 As String
  Dim var_100 As Variant
  Dim var_CC As Variant
  Dim var_110 As Variant
  Dim Me As Recordset15
  Dim var_120 As Variant
  Dim var_134 As TextBox
  Dim var_148 As TextBox
  Dim var_15C As TextBox
  Dim var_170 As TextBox
  Dim var_B8 As Variant
  Dim var_2F4 As TextBox
  Dim var_140 As String
  Dim var_168 As String
  Dim var_1CC As Variant
  Dim var_1FC As Variant
  Dim var_2AC As Variant
  Dim var_338 As Variant
  Dim var_3DC As Variant
  Dim var_130 As Field20
  loc_14B1CC4: On Error Goto loc_14B2865
  loc_14B1CCB: var_86 = CByte(0) 'Byte
  loc_14B1CDA: Set var_98 = Me.Txt
  loc_14B1CE0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_14B1D09: If (Proc_183_19_E8DAFC(var_9C, "Name") = 0) Then
  loc_14B1D13:   Call Txt_GotFocus(CInt(0))
  loc_14B1D18:   Exit Sub
  loc_14B1D19: End If
  loc_14B1D24: Set var_98 = Me.Txt
  loc_14B1D2A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C)
  loc_14B1D53: If (Proc_183_19_E8DAFC(var_9C, "Unit") = 0) Then
  loc_14B1D5D:   Call Txt_GotFocus(CInt(1))
  loc_14B1D62:   Exit Sub
  loc_14B1D63: End If
  loc_14B1D6E: Set var_98 = Me.Txt
  loc_14B1D74: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C)
  loc_14B1D9D: If (Proc_183_19_E8DAFC(var_9C, "Item Group Name") = 0) Then
  loc_14B1DA7:   Call Txt_GotFocus(CInt(2))
  loc_14B1DAC:   Exit Sub
  loc_14B1DAD: End If
  loc_14B1DB8: Set var_98 = Me.Txt
  loc_14B1DBE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C)
  loc_14B1DE7: If (Proc_183_19_E8DAFC(var_9C, "Item Category") = 0) Then
  loc_14B1DF1:   Call Txt_GotFocus(CInt(6))
  loc_14B1DF6:   Exit Sub
  loc_14B1DF7: End If
  loc_14B1E02: Set var_98 = Me.Txt
  loc_14B1E08: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_9C)
  loc_14B1E31: If (Proc_183_19_E8DAFC(var_9C, "Kitchen") = 0) Then
  loc_14B1E3B:   Call Txt_GotFocus(CInt(3))
  loc_14B1E40:   Exit Sub
  loc_14B1E41: End If
  loc_14B1E44: Call Proc_133_42_12C62EC(var_A6)
  loc_14B1E4F: If (var_A6 = &HFF) Then
  loc_14B1E52:   Exit Sub
  loc_14B1E53: End If
  loc_14B1E57: Set var_98 = Me.TopCtrl1
  loc_14B1E5D: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_14B1E76: If (CStr() = "Add") Then
  loc_14B1E7F:   var_DC = 0
  loc_14B1E9C:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(Q.Code,3,6) AS INT)),1)+1 AS MyCode From (Select Code,Site_Code From Item Union Select Code,Site_Code From Itemmast)Q WHERE Q.SITE_CODE='" & MemVar_1F92070
  loc_14B1EAC:   unk_4D3AB7.Execute CStr() & "'", var_B8, -1
  loc_14B1EB4:   var_98 = var_98.Fields
  loc_14B1EBC:   var_DC = var_9C.Item(var_9C)
  loc_14B1EC4:   var_A0 = var_A0.Value
  loc_14B1EFD:   var_100 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_14B1F2B:   var_110 = (1 + Format(CStr(var_EC), "000000"))
  loc_14B1F36:   global_100 = CStr(var_110)
  loc_14B1F4B: Else
  loc_14B1F68:   var_9C = Me.Fields.Item("Code")
  loc_14B1F7F:   global_100 = CStr(var_9C.Value)
  loc_14B1F90: End If
  loc_14B1F99: unk_4D3AB7.BeginTrans var_114
  loc_14B1FA2: var_86 = CByte(1) 'Byte
  loc_14B1FAA: Set var_98 = Me.TopCtrl1
  loc_14B1FB0: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_14B1FC9: If (CStr(var_100) = "Add") Then
  loc_14B1FDA:   Set var_98 = Me.Txt
  loc_14B1FE0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_14B1FFB:   Set var_A0 = Me.Txt
  loc_14B2001:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_120)
  loc_14B201C:   Set var_130 = Me.Txt
  loc_14B2022:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_134)
  loc_14B203D:   Set var_144 = Me.Txt
  loc_14B2043:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_148)
  loc_14B205E:   Set var_158 = Me.Txt
  loc_14B2064:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_15C)
  loc_14B207F:   Set var_16C = Me.Txt
  loc_14B2085:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_170)
  loc_14B209D:   Set var_180 = Me.Txt
  loc_14B20A3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184)
  loc_14B20C7:   Set var_198 = Me.Txt
  loc_14B20CD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_19C)
  loc_14B20F4:   Proc_6_7_F25D88(var_27C, Date)
  loc_14B2107:   Set var_2F0 = Me.Txt
  loc_14B210D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2F4)
  loc_14B212E:   var_A4 = "Insert Into ItemMast (Code,Name,RestCode,DispCode,Unit,ItemGroup,ItemCatCode,DiscApp,RateEdit,Site_Code,U_Name,U_EntDt,U_AE,Type,Kitchen,SaleRate,GravyItem,LogSite_Code) " & " Values ('"
  loc_14B217E:   var_168 = var_A4 & global_100 & "','" & var_9C.Text & "','" & var_120.Tag & "'," & var_134.Text & ",'" & var_148.Text & "','" & var_15C.Tag
  loc_14B21BC:   var_1FC = CVar(var_168 & "','" & var_170.Tag & "','") & Left(CVar(var_184), 1) & "','" & Left(CVar(var_19C), 1) & "', '" & CVar(MemVar_1F92070) 
  loc_14B2211:   var_338 = var_1FC & "','" & CVar(MemVar_1F920C8) & "'," & var_27C & ",'A','" & CVar(global_56) & "','" & CVar(var_2F4.Tag) & "'," 
  loc_14B2246:   unk_4D3AB7.Execute CStr(var_338 & CVar(var_94) & ",'Yes','" & CVar(MemVar_1F92078) & "')"), var_3DC, -1
  loc_14B22D9: Else
  loc_14B22E7:   Set var_98 = Me.Txt
  loc_14B22ED:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4)
  loc_14B22F5:   var_3E0 = var_9C.Text
  loc_14B2308:   Set var_A0 = Me.Txt
  loc_14B230E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_120)
  loc_14B2329:   Set var_130 = Me.Txt
  loc_14B232F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_134)
  loc_14B234A:   Set var_144 = Me.Txt
  loc_14B2350:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_148)
  loc_14B236B:   Set var_158 = Me.Txt
  loc_14B2371:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_15C)
  loc_14B238C:   Set var_16C = Me.Txt
  loc_14B2392:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_170)
  loc_14B23AA:   Set var_180 = Me.Txt
  loc_14B23B0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_184)
  loc_14B23BD:   var_B8 = CVar(var_184) 'Address
  loc_14B23C4:   var_EC = Left(var_B8, 1)
  loc_14B23D4:   Set var_198 = Me.Txt
  loc_14B23DA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_19C)
  loc_14B2401:   Proc_6_7_F25D88(var_27C, Date)
  loc_14B2414:   Set var_2F0 = Me.Txt
  loc_14B241A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2F4)
  loc_14B2432:   Set var_3E0 = Me.Txt
  loc_14B2438:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_3E4)
  loc_14B248F:   var_140 = "UPDATE ItemMast SET Name='" & var_A4 & "',RestCode='" & var_120.Tag & "',DispCode=" & var_134.Text & ",Unit='" & var_148.Text
  loc_14B24C8:   var_1CC = CVar(var_140 & "',ItemGroup='" & var_15C.Tag & "',ItemCatCode='" & var_170.Tag & "',DiscApp='") & var_EC & "',RateEdit='" & Left(CVar(var_19C), 1) 
  loc_14B2507:   var_2AC = var_1CC & "',SITE_CODE='" & CVar(MemVar_1F92070) & "',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_27C & " ,U_AE='E',TYPE='" 
  loc_14B254B:   var_3DC = var_2AC & CVar(global_56) & "',Kitchen='" & CVar(var_2F4.Tag) & "',SaleRate=" & CVar(var_94) & ",SChrgApp='" & Left(CVar(var_3E4), 1) 
  loc_14B2578:   unk_4D3AB7.Execute CStr(var_3DC & "' WHERE Code='" & CVar(global_100) & "'"), var_434, -1
  loc_14B260C: End If
  loc_14B2639: Set var_98 = Me.Txt
  loc_14B263F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C, var_A4, "Select Count(*) From UnitMast Where Name='", var_B8, -1, var_A0)
  loc_14B2660: unk_4D3AB7.Execute 0 & var_A4 & "'", var_130, var_EC
  loc_14B2668: var_438 = var_A0.Fields
  loc_14B2670:  = var_9C.Text.Item(var_EC)
  loc_14B2678:  = var_130.Value
  loc_14B26A5: If (var_EC <= 0) Then
  loc_14B26CD:   Set var_98 = Me.Txt
  loc_14B26D3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_9C, var_A4, "Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code)" & " Values('")
  loc_14B26DB:   var_1CC = var_9C.Text
  loc_14B26E4:   var_F0 = -1 & var_A4
  loc_14B2707:   var_100 = CVar(0 & var_A4 & "'" & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") 'String
  loc_14B2718:   Proc_6_7_F25D88(var_EC, Date)
  loc_14B2720:   var_110 = var_100 & var_EC 
  loc_14B2724:   var_CC = ",'A','"
  loc_14B274A:   unk_4D3AB7.Execute CStr(var_110 & var_CC & CVar(MemVar_1F92078) & "')"), var_A0, 
  loc_14B277E: End If
  loc_14B2784: unk_4D3AB7.CommitTrans
  loc_14B278D: var_86 = CByte(0) 'Byte
  loc_14B279C: Me.Requery -1
  loc_14B27AC: Me.Requery -1
  loc_14B27BC: Me.Requery -1
  loc_14B27CC: Me.Requery -1
  loc_14B27F9: Me.Find "Code='" & global_100 & "'", 0, 1
  loc_14B2809: Set var_98 = Me.TopCtrl1
  loc_14B280F: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_CC)
  loc_14B2828: If (CStr() = "Add") Then
  loc_14B282B:   Call TopCtrl1_UnknownEvent_A()
  loc_14B2830:   Exit Sub
  loc_14B2831: End If
  loc_14B2846: var_A4 = "INI"
  loc_14B2854: Call Proc_133_39_EB6A94(Proc_5_1_100CB50(var_A4, Me))
  loc_14B285F: Call Proc_133_41_1356B70(global_64)
  loc_14B2864: Exit Sub
  loc_14B2865: ' Referenced from: 14B1CC4
  loc_14B286E: If (CInt(var_86) = 1) Then
  loc_14B2877:   unk_4D3AB7.RollbackTrans
  loc_14B287C: End If
  loc_14B2884: Set var_98 = Err()
  loc_14B288A: Call 0.Method_arg_2C (var_A4)
  loc_14B28A3: MsgBox(CVar(var_A4), &H10, var_EC, var_100, var_110)
  loc_14B28B6: Exit Sub
End Sub

Private Sub Command2_Click(Index As Integer) '1111380
  'Data Table: 4D3AB0
  Dim var_9C As Integer
  Dim var_A4 As TextBox
  Dim var_AC As String
  Dim unk_4D3AB7 As Connection15
  Dim var_A8 As String
  Dim var_D6 As Integer
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_A0 As Frame
  loc_111104C: On Error Goto loc_1111336
  loc_1111052: var_9C = Index
  loc_111105B: If (var_9C = 0) Then
  loc_111107C:   Set var_A0 = Me.Txt
  loc_1111082:   Call 0.Method_Command2_Click0 (CInt(&HB), var_A4, var_A8, "SELECT I.Code,I.Name,I.Unit,I.ItemGroup,I.DISPCODE,IG.Type,IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName FROM ((ItemMast I  Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Where IG.Type IN ('Finish','Semi Finish')  And I.RestCode='")
  loc_111108A:   var_D0 = var_A4.Tag
  loc_1111093:   var_AC = -1 & var_A8
  loc_11110A3:   unk_4D3AB7.Execute var_AC & "'  And I.DispCode<>9999 order by I.Name", var_D4, var_9C
  loc_11110DC:   Set var_A0 = var_D4 
  loc_11110E8:   var_D6 = CreateFieldDefFile(var_A0, MemVar_1F920B4 & "\ItemMastFinish.ttx")
  loc_11110F2:   Set var_88 = var_A0
  loc_11110F8:   var_C0 = CVar(var_D6) 'Integer
  loc_11110FB:   var_98 = var_C0 'Variant
  loc_1111117:   var_A8 = MemVar_1F920B4 & "\ItemMastFinish.RPT"
  loc_1111120:   Call 0.Method_arg_1C (var_A8, var_C0, var_A0)
  loc_111112B:   MemVar_1F921E4 = var_A0
  loc_1111146:   Call 0.Method_arg_90 (var_A0, var_DC, var_9A)
  loc_111114E:   Call 0.Method_arg_24 (1, var_D6)
  loc_111115A:   For var_E0 =  To CInt(var_DC): &HFF = var_E0 'Integer
  loc_1111173:     Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_111117B:     Call 0.Method_arg_20 (var_A4)
  loc_1111183:     Call 0.Method_arg_30 (var_A8)
  loc_1111199:     var_100 = Ucase(CVar(var_A8)) 'Variant
  loc_11111C9:     If (var_100 = Ucase("Title")) Then
  loc_11111DF:       Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_11111E7:       Call 0.Method_arg_20 (var_A4)
  loc_11111EF:       Call 0.Method_arg_38 ("'Gravy Item List'")
  loc_11111FE:     Else
  loc_1111220:       If (var_100 = Ucase("RestName")) Then
  loc_1111234:         Set var_A0 = Me.Txt
  loc_111123A:         Call 0.Method_Command2_Click0 (CInt(&HB), var_A4)
  loc_1111242:         var_A8 = var_A4.Text
  loc_111124B:         var_AC = "'" & var_A8
  loc_1111265:         Call 0.Method_arg_90 (var_D4, CLng(var_9A))
  loc_111126D:         Call 0.Method_arg_20 (var_104)
  loc_1111275:         Call 0.Method_arg_38 (var_AC & "'")
  loc_111128E:       End If
  loc_111128E:     End If
  loc_1111291:   Next var_E0 'Integer
  loc_11112AF:   Call 0.Method_arg_64 (var_A0, CVar(var_88))
  loc_11112B7:   Call 0.Method_arg_2C (var_114)
  loc_11112C5:   Call 0.Method_arg_150 (var_124)
  loc_11112D0:   Call 0.Method_arg_50 (var_A8)
  loc_11112DA:   Set var_A4 = Nothing
  loc_11112F4:   Set var_A0 = MemVar_1F921E4 
  loc_1111300:   Proc_6_99_1483714(var_A0, 0, var_A8)
  loc_111130B:   MemVar_1F921E4 = var_A0
  loc_1111319: End If
  loc_111131E: Set var_88 = Nothing
  loc_111132D: Me.Frame1.Visible = False
  loc_1111335: Exit Sub
  loc_1111336: ' Referenced from: 111104C
  loc_111133E: Set var_A0 = Err()
  loc_1111344: Call 0.Method_arg_2C (var_A8, &HFF)
  loc_111134F: Call 0.Method_arg_50 (var_AC)
  loc_111136B: MsgBox(CVar(var_A8), &H10, CVar(var_AC), var_138, var_148)
  loc_111137E: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F9E89C
  'Data Table: 4D3AB0
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_F9E73F: Me.DGRest.Visible = False
  loc_F9E75E: If (Me.RecordCount > 0) Then
  loc_F9E7B0:   Set var_CC = Me.Txt
  loc_F9E7B6:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)), var_D0)
  loc_F9E7BE:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F9E816:   Set var_B4 = Me.DGRest
  loc_F9E82D:   Set var_CC = Me.Txt
  loc_F9E833:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_F9E83B:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F9E85B: End If
  loc_F9E879: Set var_B0 = Me.Txt
  loc_F9E87F: Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)))
  loc_F9E887: var_B4.SetFocus
  loc_F9E89B: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E6DC9C
  'Data Table: 4D3AB0
  loc_E6DC5A: Proc_6_153_E91194(Me.DGRest, arg_14)
  loc_E6DC71: Set var_8C = Me.FGPoint
  loc_E6DC8D: Proc_6_138_106D6F8(Me.DGRest, global_76, CInt(3))
  loc_E6DC9B: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_9 'F37684
  'Data Table: 4D3AB0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3757B: Me.DGItemCat.Visible = False
  loc_F3759A: If (Me.RecordCount > 0) Then
  loc_F375D9:   Set var_B4 = Me.Txt
  loc_F375DF:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6), var_B8)
  loc_F375E7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3761A:   var_B0 = Me.Fields.Item("Name")
  loc_F37639:   Set var_B4 = Me.Txt
  loc_F3763F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6), var_B8)
  loc_F37647:   var_B8.Text = CStr(var_B0.Value)
  loc_F3765D: End If
  loc_F37668: Set var_A8 = Me.Txt
  loc_F3766E: Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6))
  loc_F37676: var_B0.SetFocus
  loc_F37682: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_1F 'E6E82C
  'Data Table: 4D3AB0
  loc_E6E7EA: Proc_6_153_E91194(Me.DGItemCat, arg_14)
  loc_E6E801: Set var_8C = Me.FGPoint
  loc_E6E81D: Proc_6_138_106D6F8(Me.DGItemCat, global_80, CInt(6))
  loc_E6E82B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED28B8
  'Data Table: 4D3AB0
  loc_ED281C: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_ED281F:   Call DGUnit_UnknownEvent_9()
  loc_ED2824: End If
  loc_ED2840: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_ED2843:   Call DGHelp_UnknownEvent_9()
  loc_ED2848: End If
  loc_ED2864: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_ED2867:   Call DGRest_UnknownEvent_9()
  loc_ED286C: End If
  loc_ED2888: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_ED288B:   Call DGItemCat_UnknownEvent_9()
  loc_ED2890: End If
  loc_ED28AC: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_ED28AF:   Call DGItemGroup_UnknownEvent_9()
  loc_ED28B4: End If
  loc_ED28B4: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_9 'F37944
  'Data Table: 4D3AB0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3783B: Me.DGItemGroup.Visible = False
  loc_F3785A: If (Me.RecordCount > 0) Then
  loc_F37899:   Set var_B4 = Me.Txt
  loc_F3789F:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F378A7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F378DA:   var_B0 = Me.Fields.Item("Name")
  loc_F378F9:   Set var_B4 = Me.Txt
  loc_F378FF:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F37907:   var_B8.Text = CStr(var_B0.Value)
  loc_F3791D: End If
  loc_F37928: Set var_A8 = Me.Txt
  loc_F3792E: Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2))
  loc_F37936: var_B0.SetFocus
  loc_F37942: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_1F 'E6DB74
  'Data Table: 4D3AB0
  loc_E6DB32: Proc_6_153_E91194(Me.DGItemGroup, arg_14)
  loc_E6DB49: Set var_8C = Me.FGPoint
  loc_E6DB65: Proc_6_138_106D6F8(Me.DGItemGroup, global_72, CInt(2))
  loc_E6DB73: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F36E44
  'Data Table: 4D3AB0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F36D3B: Me.DGHelp.Visible = False
  loc_F36D5A: If (Me.RecordCount > 0) Then
  loc_F36D99:   Set var_B4 = Me.Txt
  loc_F36D9F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F36DA7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F36DDA:   var_B0 = Me.Fields.Item("Name")
  loc_F36DF9:   Set var_B4 = Me.Txt
  loc_F36DFF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F36E07:   var_B8.Text = CStr(var_B0.Value)
  loc_F36E1D: End If
  loc_F36E28: Set var_A8 = Me.Txt
  loc_F36E2E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F36E36: var_B0.SetFocus
  loc_F36E42: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6E38C
  'Data Table: 4D3AB0
  loc_E6E34A: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E6E361: Set var_8C = Me.FGPoint
  loc_E6E37D: Proc_6_138_106D6F8(Me.DGHelp, global_68, CInt(0))
  loc_E6E38B: Exit Sub
End Sub

Public Function global_52Get() '4D4C10
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4D4C1F
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC6024
  'Data Table: 4D3AB0
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC5F9A: On Error Goto loc_EC5FDF
  loc_EC5FA3: Me.MoveFirst
  loc_EC5FBD: var_8C = "code='" & MyValue
  loc_EC5FCD: Me.Find var_8C & "'", 0, 1
  loc_EC5FD9: Call Proc_133_41_1356B70(var_A0)
  loc_EC5FDE: Exit Sub
  loc_EC5FDF: ' Referenced from: EC5F9A
  loc_EC5FE7: Set var_A4 = Err()
  loc_EC5FED: Call 0.Method_arg_2C (var_8C)
  loc_EC600E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC6021: Exit Sub
  loc_EC6022: Exit Sub
End Sub

Public Sub Proc_133_39_EB6A94(arg_C) 'EB6A94
  'Data Table: 4D3AB0
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_EB6A02: Set var_8C = Me.Txt
  loc_EB6A08: Call 0.Method_Proc_133_39_EB6A94C (var_8E, var_86)
  loc_EB6A18: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB6A2E:   Set var_8C = Me.Txt
  loc_EB6A34:   Call 0.Method_Proc_133_39_EB6A940 (CInt(var_86), var_98)
  loc_EB6A3C:   var_98.Enabled = arg_C
  loc_EB6A4B: Next var_92 'Byte
  loc_EB6A5F: Me.Command1.Enabled = Not(arg_C)
  loc_EB6A76: Set var_8C = Me.Txt
  loc_EB6A7C: Call 0.Method_Proc_133_39_EB6A940 (CInt(&HB), var_98)
  loc_EB6A84: var_98.Enabled = Not(arg_C)
  loc_EB6A90: Exit Sub
End Sub

Public Sub Proc_133_40_F21248
  'Data Table: 4D3AB0
  Dim var_94 As TextBox
  loc_F21152: Set var_90 = Me.Txt
  loc_F21158: Call 0.Method_Proc_133_40_F212480 (CInt(1), var_94)
  loc_F21168: var_8C = var_94.Text
  loc_F21180: Set var_90 = Me.Txt
  loc_F21186: Call 0.Method_Proc_133_40_F21248C (var_9A, var_86)
  loc_F21196: For var_9E =  To CByte((var_9A - 1)): CByte(0) = var_9E 'Byte
  loc_F211AC:   Set var_90 = Me.Txt
  loc_F211B2:   Call 0.Method_Proc_133_40_F212480 (CInt(var_86), var_94)
  loc_F211BA:   var_94.Text = vbNullString
  loc_F211C9: Next var_9E 'Byte
  loc_F211DD: Set var_90 = Me.Txt
  loc_F211E3: Call 0.Method_Proc_133_40_F212480 (CInt(4), var_94)
  loc_F211EB: var_94.Text = "No"
  loc_F21205: Set var_90 = Me.Txt
  loc_F2120B: Call 0.Method_Proc_133_40_F212480 (CInt(5), var_94)
  loc_F21213: var_94.Text = "No"
  loc_F2122D: Set var_90 = Me.Txt
  loc_F21233: Call 0.Method_Proc_133_40_F212480 (CInt(1), var_94)
  loc_F2123B: var_94.Text = var_8C
  loc_F21247: Exit Sub
End Sub

Public Sub Proc_133_41_1356B70
  'Data Table: 4D3AB0
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_A4 As Variant
  Dim var_C0 As Variant
  Dim var_BC As Fields15
  Dim var_130 As Variant
  Dim unk_4D3AB7 As Connection15
  Dim var_88 As Recordset15
  loc_1356358: On Error Goto loc_1356B67
  loc_1356361: Proc_183_45_E5C118(global_64)
  loc_135637D: If (Me.RecordCount <= 0) Then
  loc_1356380:   Call Proc_133_40_F21248()
  loc_1356388: Else
  loc_13563BC:   global_56 = CStr(Me.Fields.Item("Type").Value)
  loc_1356401:   global_100 = CStr(Me.Fields.Item("Name").Value)
  loc_135644E:   Set var_BC = Me.Txt
  loc_1356454:   Call 0.Method_Proc_133_41_1356B700 (CInt(0), var_C0)
  loc_135645C:   var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13564AE:   Set var_BC = Me.Txt
  loc_13564B4:   Call 0.Method_Proc_133_41_1356B700 (CInt(&HA), var_C0)
  loc_13564BC:   var_C0.Text = CStr(Me.Fields.Item("DispCode").Value)
  loc_135650E:   Set var_BC = Me.Txt
  loc_1356514:   Call 0.Method_Proc_133_41_1356B700 (CInt(0), var_C0)
  loc_135651C:   var_C0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_135656B:   Set var_BC = Me.Txt
  loc_1356571:   Call 0.Method_Proc_133_41_1356B700 (CInt(1), var_C0)
  loc_1356579:   var_C0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")))
  loc_13565C6:   Set var_BC = Me.Txt
  loc_13565CC:   Call 0.Method_Proc_133_41_1356B700 (CInt(2), var_C0)
  loc_13565D4:   var_C0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemGrpName")))
  loc_1356621:   Set var_BC = Me.Txt
  loc_1356627:   Call 0.Method_Proc_133_41_1356B700 (CInt(2), var_C0)
  loc_135662F:   var_C0.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemGroup")))
  loc_135667C:   Set var_BC = Me.Txt
  loc_1356682:   Call 0.Method_Proc_133_41_1356B700 (CInt(6), var_C0)
  loc_135668A:   var_C0.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemCatCode")))
  loc_13566D7:   Set var_BC = Me.Txt
  loc_13566DD:   Call 0.Method_Proc_133_41_1356B700 (CInt(6), var_C0)
  loc_13566E5:   var_C0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemCategory")))
  loc_1356732:   Set var_BC = Me.Txt
  loc_1356738:   Call 0.Method_Proc_133_41_1356B700 (CInt(4), var_C0)
  loc_1356740:   var_C0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Disc")))
  loc_135678D:   Set var_BC = Me.Txt
  loc_1356793:   Call 0.Method_Proc_133_41_1356B700 (CInt(5), var_C0)
  loc_135679B:   var_C0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("REdit")))
  loc_13567E8:   Set var_BC = Me.Txt
  loc_13567EE:   Call 0.Method_Proc_133_41_1356B700 (CInt(8), var_C0)
  loc_13567F6:   var_C0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestName")))
  loc_1356843:   Set var_BC = Me.Txt
  loc_1356849:   Call 0.Method_Proc_133_41_1356B700 (CInt(8), var_C0)
  loc_1356851:   var_C0.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestCode")))
  loc_135689E:   Set var_BC = Me.Txt
  loc_13568A4:   Call 0.Method_Proc_133_41_1356B700 (CInt(3), var_C0)
  loc_13568AC:   var_C0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("KitchenName")))
  loc_13568F9:   Set var_BC = Me.Txt
  loc_13568FF:   Call 0.Method_Proc_133_41_1356B700 (CInt(3), var_C0)
  loc_1356907:   var_C0.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")))
  loc_135694C:   global_92 = Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")))
  loc_13569C2:   var_C0 = Me.Fields.Item("RestCode")
  loc_13569D2:   var_130 = "Select Rate,Appdate From ItemRate Where ItemCode='" & Me.Fields.Item("Code").Value & "' And RestCode='" & var_C0.Value 
  loc_13569E9:   unk_4D3AB7.Execute CStr(var_130 & "' Order By AppDate Desc "), var_170, -1
  loc_13569F4:   Set var_88 = var_174
  loc_1356A2C:   If (var_88.RecordCount > 0) Then
  loc_1356A81:     Set var_BC = Me.Txt
  loc_1356A87:     Call 0.Method_Proc_133_41_1356B700 (CInt(7), var_C0, CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00")))
  loc_1356A8F:     var_C0.Text = 1
  loc_1356AC3:     var_A4 = var_88.Fields.Item("AppDate")
  loc_1356AE2:     Set var_BC = Me.Txt
  loc_1356AE8:     Call 0.Method_Proc_133_41_1356B700 (CInt(9), var_C0, CStr(var_A4.Value))
  loc_1356AF0:     var_C0.Text = 1
  loc_1356B09:   Else
  loc_1356B17:     Set var_90 = Me.Txt
  loc_1356B1D:     Call 0.Method_Proc_133_41_1356B700 (CInt(7), var_A4)
  loc_1356B25:     var_A4.Text = vbNullString
  loc_1356B3F:     Set var_90 = Me.Txt
  loc_1356B45:     Call 0.Method_Proc_133_41_1356B700 (CInt(9), var_A4)
  loc_1356B4D:     var_A4.Text = vbNullString
  loc_1356B59:   End If
  loc_1356B59: End If
  loc_1356B59: Call Proc_133_43_FB5A1C(var_174)
  loc_1356B63: Set var_88 = Nothing
  loc_1356B66: Exit Sub
  loc_1356B67: ' Referenced from: 1356358
  loc_1356B67: Proc_6_60_E62BC4()
  loc_1356B6C: Exit Sub
End Sub

Public Sub Proc_133_42_12C62EC
  'Data Table: 4D3AB0
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As Variant
  Dim unk_4D3AB7 As Connection15
  Dim var_E0 As Variant
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_C0 As String
  Dim var_B8 As Recordset15
  Dim var_AC As String
  Dim var_A0 As Variant
  loc_12C5CBB: If (Me.RecordCount = 0) Then
  loc_12C5CBE:   Proc_133_42_12C62EC = 
  loc_12C5CC4: End If
  loc_12C5CC8: Set var_90 = Me.TopCtrl1
  loc_12C5CCE: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12C5CE7: If (CStr() = "Add") Then
  loc_12C5CF0:   var_F4 = 0
  loc_12C5D25:   Set var_90 = Me.Txt
  loc_12C5D2B:   Call 0.Method_Proc_133_42_12C62EC0 (CInt(8), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1)
  loc_12C5D54:   Set var_B8 = Me.Txt
  loc_12C5D5A:   Call 0.Method_Proc_133_42_12C62EC0 (CInt(0), var_BC, var_C0, var_E4 & var_AC & "' and Name='")
  loc_12C5D62:   var_F4 = var_BC.Text
  loc_12C5D7B:   unk_4D3AB7.Execute var_F8 & var_C0 & "' And Type IN ('Finish','Semi Finish')", var_108, 
  loc_12C5D83:    = var_A8.Tag.Fields
  loc_12C5D8B:    = var_E4.Item()
  loc_12C5D93:    = var_F8.Value
  loc_12C5DCE:   If (var_108 > 0) Then
  loc_12C5DDC:     var_108 = "Information"
  loc_12C5DEC:     var_A0 = "Duplicate Name"
  loc_12C5DF2:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_12C5E0D:     Set var_90 = Me.Txt
  loc_12C5E13:     Call 0.Method_Proc_133_42_12C62EC0 (CInt(0))
  loc_12C5E1B:     var_A8.SetFocus
  loc_12C5E2C:     Proc_133_42_12C62EC = &HFF
  loc_12C5E32:   End If
  loc_12C5E40:   Set var_90 = Me.Txt
  loc_12C5E46:   Call 0.Method_Proc_133_42_12C62EC0 (CInt(&HA), var_A8)
  loc_12C5E65:   If (var_A8.Text <> vbNullString) Then
  loc_12C5E6E:     var_F4 = 0
  loc_12C5EA3:     Set var_90 = Me.Txt
  loc_12C5EA9:     Call 0.Method_Proc_133_42_12C62EC0 (CInt(8), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1)
  loc_12C5EB1:     var_E0 = var_A8.Tag
  loc_12C5ED2:     Set var_B8 = Me.Txt
  loc_12C5ED8:     Call 0.Method_Proc_133_42_12C62EC0 (CInt(&HA), var_BC, var_C0, var_E4 & var_AC & "' and DispCode=")
  loc_12C5EE0:     var_F4 = var_BC.Text
  loc_12C5EF9:     unk_4D3AB7.Execute var_F8 & var_C0 & vbNullString, var_108, var_A8
  loc_12C5F01:      = var_E0.Fields
  loc_12C5F09:      = var_E4.Item()
  loc_12C5F11:      = var_F8.Value
  loc_12C5F4C:     If (var_108 > 0) Then
  loc_12C5F6A:       var_A0 = "Duplicate Disp Code"
  loc_12C5F70:       MsgBox(var_A0, &H40, "Information", var_128, var_148)
  loc_12C5F8B:       Set var_90 = Me.Txt
  loc_12C5F91:       Call 0.Method_Proc_133_42_12C62EC0 (CInt(&HA))
  loc_12C5F99:       var_A8.SetFocus
  loc_12C5FAA:       Proc_133_42_12C62EC = &HFF
  loc_12C5FB0:     End If
  loc_12C5FB0:   End If
  loc_12C5FB3: Else
  loc_12C5FEE:   Set var_90 = Me.Txt
  loc_12C5FF4:   Call 0.Method_Proc_133_42_12C62EC0 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_12C6026:   unk_4D3AB7.Execute var_BC & var_AC & "' And Name<>'" & global_100 & "' And Type IN ('Finish','Semi Finish')", 0, var_E0
  loc_12C6036:    = var_BC.Item(var_A8)
  loc_12C603E:    = var_E0.Value
  loc_12C6073:   If (var_A8.Text.Fields > 0) Then
  loc_12C6091:     var_A0 = "Duplicate Name"
  loc_12C6097:     MsgBox(var_A0, &H40, "Information", var_128, var_148)
  loc_12C60B2:     Set var_90 = Me.Txt
  loc_12C60B8:     Call 0.Method_Proc_133_42_12C62EC0 (CInt(0))
  loc_12C60C0:     var_A8.SetFocus
  loc_12C60D1:     Proc_133_42_12C62EC = &HFF
  loc_12C60D7:   End If
  loc_12C60E5:   Set var_90 = Me.Txt
  loc_12C60EB:   Call 0.Method_Proc_133_42_12C62EC0 (CInt(&HA), var_A8)
  loc_12C610A:   If (var_A8.Text <> vbNullString) Then
  loc_12C6148:     Set var_90 = Me.Txt
  loc_12C614E:     Call 0.Method_Proc_133_42_12C62EC0 (CInt(&HA), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and DispCode=", var_A0, -1)
  loc_12C6185:     unk_4D3AB7.Execute var_BC & var_AC & " And DispCode<> " & CStr(global_60) & vbNullString, 0, var_E0
  loc_12C6195:      = var_BC.Item(var_A8)
  loc_12C619D:      = var_E0.Value
  loc_12C61D4:     If (var_A8.Text.Fields > 0) Then
  loc_12C61F8:       MsgBox("Duplicate Disp Code", &H40, "Information", var_128, var_148)
  loc_12C6213:       Set var_90 = Me.Txt
  loc_12C6219:       Call 0.Method_Proc_133_42_12C62EC0 (CInt(&HA))
  loc_12C6221:       var_A8.SetFocus
  loc_12C6232:       Proc_133_42_12C62EC = &HFF
  loc_12C6238:     End If
  loc_12C6238:   End If
  loc_12C6238: End If
  loc_12C6246: Set var_90 = Me.Txt
  loc_12C624C: Call 0.Method_Proc_133_42_12C62EC0 (CInt(&HA), var_A8)
  loc_12C626B: If (var_A8.Text = "9999") Then
  loc_12C629C:   MsgBox(CVar("This Code is reserved for special items" & vbCrLf & vbCrLf & "Please choose another code"), &H40, "HMS", var_128, var_148)
  loc_12C62BE:   Set var_90 = Me.Txt
  loc_12C62C4:   Call 0.Method_Proc_133_42_12C62EC0 (CInt(&HA), var_A8)
  loc_12C62CC:   var_A8.SetFocus
  loc_12C62DD:   Proc_133_42_12C62EC = &HFF
  loc_12C62E3: End If
  loc_12C62E3: Proc_133_42_12C62EC = var_A8
End Sub

Public Sub Proc_133_43_FB5A1C
  'Data Table: 4D3AB0
  loc_FB5888: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FB589A:   Me.DGHelp.Visible = False
  loc_FB58A2: End If
  loc_FB58BE: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_FB58D0:   Me.DGRest.Visible = False
  loc_FB58D8: End If
  loc_FB58F4: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_FB5906:   Me.DGItemGroup.Visible = False
  loc_FB590E: End If
  loc_FB592A: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_FB593C:   Me.DGItemCat.Visible = False
  loc_FB5944: End If
  loc_FB5960: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_FB5972:   Me.DGUnit.Visible = False
  loc_FB597A: End If
  loc_FB5995: If (Me.Frame1.Visible = &HFF) Then
  loc_FB59A7:   Me.DGUnit.Visible = False
  loc_FB59AF: End If
  loc_FB59CB: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FB59DD:   Me.FGPoint.Visible = False
  loc_FB59E5: End If
  loc_FB5A01: If (CBool(Me.DGDispCode.Visible) = &HFF) Then
  loc_FB5A13:   Me.DGDispCode.Visible = False
  loc_FB5A1B: End If
  loc_FB5A1B: Exit Sub
End Sub

Public Sub Proc_133_44_109FD9C
  'Data Table: 4D3AB0
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_109FAD4: On Error Goto loc_109FD94
  loc_109FAE5: Set var_88 = Me.Txt
  loc_109FAEB: Call 0.Method_Proc_133_44_109FD9C0 (CInt(0), var_8C)
  loc_109FB0A: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_109FB26: Set var_B4 = Me.Txt
  loc_109FB2C: Call 0.Method_Proc_133_44_109FD9C0 (CInt(0), var_B8)
  loc_109FB47: Set var_88 = Me.Txt
  loc_109FB4D: Call 0.Method_Proc_133_44_109FD9C0 (CInt(0), var_8C)
  loc_109FB65: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_109FB74: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_109FB94: Set var_88 = Me.Txt
  loc_109FB9A: Call 0.Method_Proc_133_44_109FD9C0 (CInt(6), var_8C)
  loc_109FBB9: Me.DGItemCat.Left = CVar(var_8C.Left)
  loc_109FBD5: Set var_B4 = Me.Txt
  loc_109FBDB: Call 0.Method_Proc_133_44_109FD9C0 (CInt(6), var_B8)
  loc_109FBF6: Set var_88 = Me.Txt
  loc_109FBFC: Call 0.Method_Proc_133_44_109FD9C0 (CInt(6), var_8C)
  loc_109FC14: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_109FC23: Me.DGItemCat.Top = CVar(var_8C.Left)
  loc_109FC43: Set var_88 = Me.Txt
  loc_109FC49: Call 0.Method_Proc_133_44_109FD9C0 (CInt(2), var_8C)
  loc_109FC68: Me.DGItemGroup.Left = CVar(var_8C.Left)
  loc_109FC84: Set var_B4 = Me.Txt
  loc_109FC8A: Call 0.Method_Proc_133_44_109FD9C0 (CInt(2), var_B8)
  loc_109FCA5: Set var_88 = Me.Txt
  loc_109FCAB: Call 0.Method_Proc_133_44_109FD9C0 (CInt(2), var_8C)
  loc_109FCC3: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_109FCD2: Me.DGItemGroup.Top = CVar(var_8C.Left)
  loc_109FCF2: Set var_88 = Me.Txt
  loc_109FCF8: Call 0.Method_Proc_133_44_109FD9C0 (CInt(1), var_8C)
  loc_109FD17: Me.DGUnit.Left = CVar(var_8C.Left)
  loc_109FD33: Set var_B4 = Me.Txt
  loc_109FD39: Call 0.Method_Proc_133_44_109FD9C0 (CInt(1), var_B8)
  loc_109FD54: Set var_88 = Me.Txt
  loc_109FD5A: Call 0.Method_Proc_133_44_109FD9C0 (CInt(1), var_8C)
  loc_109FD72: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_109FD81: Me.DGUnit.Top = CVar(var_8C.Left)
  loc_109FD93: Exit Sub
  loc_109FD94: ' Referenced from: 109FAD4
  loc_109FD94: Proc_6_60_E62BC4()
  loc_109FD99: Exit Sub
End Sub

Public Sub Proc_133_45_E81544
  'Data Table: 4D3AB0
  loc_E814E4: Call Proc_133_43_FB5A1C()
  loc_E81520: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E81523:   Call TopCtrl1_UnknownEvent_16()
  loc_E8152B: Else
  loc_E81531:   Call 0.Method_arg_1E8 (var_108)
  loc_E81539:   Call var_108.SetFocus
  loc_E81542: End If
  loc_E81542: Exit Sub
End Sub
