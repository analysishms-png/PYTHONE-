VERSION 5.00
Begin VB.Form frmComboMast
  Caption = "Combo Item Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 12735
  ClientHeight = 7620
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12735
    Height = 450
    TabIndex = 55
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    Left = 6945
    Top = 5985
    Width = 3855
    Height = 255
    Visible = 0   'False
    TabIndex = 51
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
    Index = 15
    BackColor = &HFFFFFF&
    Left = 6930
    Top = 5715
    Width = 3855
    Height = 255
    Visible = 0   'False
    TabIndex = 50
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
    Index = 11
    BackColor = &HFFFFFF&
    Left = 6945
    Top = 5445
    Width = 3855
    Height = 255
    Visible = 0   'False
    TabIndex = 49
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
  Begin DataGrid DGItem
    Left = 6585
    Top = 2805
    Width = 3810
    Height = 4380
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 48
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 2280
    Width = 1275
    Height = 275
    TabIndex = 4
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 1380
    Width = 3420
    Height = 275
    TabIndex = 1
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 1980
    Width = 3420
    Height = 275
    TabIndex = 3
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 4680
    Width = 3420
    Height = 275
    TabIndex = 12
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 3180
    Width = 1275
    Height = 275
    TabIndex = 7
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 2880
    Width = 1275
    Height = 275
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 2580
    Width = 3420
    Height = 275
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
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 1080
    Width = 3420
    Height = 275
    TabIndex = 0
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 3780
    Width = 1275
    Height = 275
    TabIndex = 9
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
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 4380
    Width = 1275
    Height = 275
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 12
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
    Left = 3150
    Top = 1680
    Width = 1275
    Height = 275
    TabIndex = 2
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
  Begin CheckBox Check1
    Caption = "Carry Last Information"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 1500
    Top = 5280
    Width = 2610
    Height = 210
    TabIndex = 27
    Value = 1
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 3480
    Width = 1275
    Height = 275
    TabIndex = 8
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
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 4080
    Width = 1275
    Height = 275
    TabIndex = 10
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
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 4980
    Width = 1275
    Height = 275
    TabIndex = 14
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
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7305
    Top = 8460
    Width = 3855
    Height = 255
    Visible = 0   'False
    TabIndex = 13
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
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 9285
    Top = 480
    Width = 1875
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
      Top = 60
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 18
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2700
    Top = 5790
    Width = 915
    Height = 225
    Visible = 0   'False
    TabIndex = 16
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
  Begin MSFlexGrid FGrid
    Left = 1500
    Top = 5505
    Width = 6900
    Height = 2070
    TabIndex = 15
  End
  Begin DataGrid DGAppDate
    Left = 7065
    Top = 2685
    Width = 2100
    Height = 2295
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 19
  End
  Begin DataGrid DGDispCode
    Left = 9240
    Top = 2340
    Width = 1605
    Height = 2820
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin MSFlexGrid FGPoint
    Left = 7125
    Top = 975
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 21
  End
  Begin DataGrid DGUnit
    Left = 7845
    Top = 7140
    Width = 2100
    Height = 2295
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin DataGrid DGRest
    Left = 10725
    Top = 900
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 23
  End
End
Begin DataGrid DGItemGroup
  Left = 10425
  Top = 5865
  Width = 4665
  Height = 2295
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 24
End
Begin DataGrid DGItemCat
  Left = 10785
  Top = 3345
  Width = 4410
  Height = 2460
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 25
End
Begin DataGrid DGHelp
  Left = 8880
  Top = 6420
  Width = 4230
  Height = 2355
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 26
End
Begin Label LblLDt
  Caption = "Last Update"
  ForeColor = &HFF0000&
  Left = 5295
  Top = 7740
  Width = 2790
  Height = 285
  TabIndex = 54
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
  Left = 1920
  Top = 7740
  Width = 2880
  Height = 255
  TabIndex = 53
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
  Top = 375
  Width = 180
  Height = 540
  TabIndex = 52
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
  Caption = "Item Unit"
  Index = 2
  ForeColor = &HC00000&
  Left = 1500
  Top = 2280
  Width = 855
  Height = 240
  TabIndex = 47
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblLedgerAc
  Caption = "Item Group"
  Index = 0
  ForeColor = &HC00000&
  Left = 1500
  Top = 1380
  Width = 1065
  Height = 240
  TabIndex = 46
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Item Name"
  Index = 0
  ForeColor = &HC00000&
  Left = 1500
  Top = 1980
  Width = 1035
  Height = 240
  TabIndex = 45
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Kitchen"
  Index = 3
  ForeColor = &HC00000&
  Left = 1500
  Top = 4680
  Width = 720
  Height = 240
  TabIndex = 44
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Disc Applicable"
  Index = 5
  ForeColor = &HC00000&
  Left = 1500
  Top = 3180
  Width = 1470
  Height = 240
  TabIndex = 43
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblLedgerAc
  Caption = "Rate Edit"
  Index = 6
  ForeColor = &HC00000&
  Left = 1500
  Top = 2880
  Width = 855
  Height = 240
  TabIndex = 42
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Item Category"
  Index = 12
  ForeColor = &HC00000&
  Left = 1500
  Top = 2580
  Width = 1335
  Height = 240
  TabIndex = 41
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 16
  ForeColor = &HC0&
  Left = 4440
  Top = 2895
  Width = 885
  Height = 240
  TabIndex = 40
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 0
  ForeColor = &HC0&
  Left = 4440
  Top = 3195
  Width = 885
  Height = 240
  TabIndex = 39
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Restaurant"
  Index = 1
  ForeColor = &HC00000&
  Left = 1500
  Top = 1080
  Width = 1020
  Height = 240
  TabIndex = 38
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblLedgerAc
  Caption = "Sale Rate"
  Index = 1
  ForeColor = &HC00000&
  Left = 1500
  Top = 3780
  Width = 930
  Height = 240
  TabIndex = 37
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Applicable Date"
  Index = 2
  ForeColor = &HC00000&
  Left = 1500
  Top = 4380
  Width = 1515
  Height = 240
  TabIndex = 36
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblLedgerAc
  Caption = "Disp. Code"
  Index = 3
  ForeColor = &HC00000&
  Left = 1500
  Top = 1680
  Width = 1020
  Height = 240
  TabIndex = 35
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 1
  ForeColor = &HC0&
  Left = 4440
  Top = 3495
  Width = 885
  Height = 240
  TabIndex = 34
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Service Charge"
  Index = 6
  ForeColor = &HC00000&
  Left = 1500
  Top = 3480
  Width = 1470
  Height = 240
  TabIndex = 33
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Rate Inc. Tax"
  Index = 7
  ForeColor = &HC00000&
  Left = 1500
  Top = 4080
  Width = 1260
  Height = 240
  TabIndex = 32
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 2
  ForeColor = &HC0&
  Left = 4440
  Top = 4095
  Width = 885
  Height = 240
  TabIndex = 31
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 3
  ForeColor = &HC0&
  Left = 4440
  Top = 4995
  Width = 885
  Height = 240
  TabIndex = 30
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblLedgerAc
  Caption = "Active"
  Index = 4
  ForeColor = &HC00000&
  Left = 1500
  Top = 4980
  Width = 585
  Height = 240
  TabIndex = 29
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblName
  Caption = "Type"
  Index = 10
  ForeColor = &HC00000&
  Left = 5655
  Top = 8460
  Width = 465
  Height = 240
  Visible = 0   'False
  TabIndex = 28
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

Attribute VB_Name = "frmComboMast"

Private global_100 As Integer
Private global_136 As Integer

Private Sub FGrid_UnknownEvent_0 'E61034
  'Data Table: 5082DC
  Dim var_A8 As MSFlexGrid
  Dim var_AC As TextBox
  loc_E60FFF: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E61012: Set var_A8 = Me.TxtGrid
  loc_E61018: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E61020: var_AC.Visible = False
  loc_E6102C: Call Proc_188_57_1009A38()
  loc_E61031: Exit Sub
  loc_E61032: If  Then Exit Sub
  loc_E61032: End If
End Sub

Private Sub FGrid_UnknownEvent_1 'E67450
  'Data Table: 5082DC
  Dim var_8C As TextBox
  Dim var_88 As MSFlexGrid
  loc_E6740C: Set var_88 = Me.TxtGrid
  loc_E67412: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6742C: If (var_8C.Visible = 0) Then
  loc_E67445:   Me.FGrid.BackColorSel = CVar(CLng(global_128))
  loc_E6744D: End If
  loc_E6744D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E4F4B4
  'Data Table: 5082DC
  loc_E4F48C: Set var_88 = Me.TopCtrl1
  loc_E4F492: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_E4F4AB: If (CStr() <> "Browse") Then
  loc_E4F4AE:   Call Proc_188_60_E43880()
  loc_E4F4B3: End If
  loc_E4F4B3: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '10D7210
  'Data Table: 5082DC
  Dim var_9C As String
  Dim var_B4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim var_D4 As Variant
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10D6F10: Set var_88 = Me.TopCtrl1
  loc_10D6F16: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_10D6F5B: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_10D6F64:   Call Form_KeyDown(arg_C, arg_10)
  loc_10D6F69: End If
  loc_10D6F6D: Set var_88 = Me.TopCtrl1
  loc_10D6F73: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_10D6F8C: If (CStr() = "Browse") Then
  loc_10D6F8F:   Exit Sub
  loc_10D6F90: End If
  loc_10D7004: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10D701D:   Me.FGrid.CellBackColor = CVar(CLng(global_128))
  loc_10D702D:   var_9C = "+{Tab}"
  loc_10D7033:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_10D703D:   arg_C = 0
  loc_10D7043: Else
  loc_10D709A:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10D70B3:     Me.FGrid.CellBackColor = CVar(CLng(global_128))
  loc_10D70BD:     arg_C = 0
  loc_10D70C0:   End If
  loc_10D70C0: End If
  loc_10D70C6: global_100 = arg_C
  loc_10D70EC: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10D7110: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_10D7126:   var_EC = CLng(Me.FGrid.Col)
  loc_10D7136:   If (var_EC = CLng(2)) Then
  loc_10D714C:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D7164:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10D7169:     var_11C = vbNullString
  loc_10D7173:     Set var_B4 = Me.FGrid
  loc_10D7179:     LateIdCallSt
  loc_10D7194:   Else
  loc_10D719B:     If (var_EC = CLng(3)) Then
  loc_10D71B1:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D71C9:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10D71CE:       var_11C = vbNullString
  loc_10D71D8:       Set var_B4 = Me.FGrid
  loc_10D71DE:       LateIdCallSt
  loc_10D71F6:     End If
  loc_10D71F6:   End If
  loc_10D71F6: End If
  loc_10D71FC: If (arg_C = &HD) Then
  loc_10D7204:   global_136 = 0
  loc_10D7207: End If
  loc_10D7209: arg_C = 0
  loc_10D720C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E5D84C
  'Data Table: 5082DC
  loc_E5D810: Set var_88 = Me.TopCtrl1
  loc_E5D816: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_E5D82F: If (CStr() = "Browse") Then
  loc_E5D832:   Exit Sub
  loc_E5D833: End If
  loc_E5D83C: Call FGrid_UnknownEvent_C()
  loc_E5D849: Exit Sub
  loc_E5D84A: Set arg_6400 = 0
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '1013154
  'Data Table: 5082DC
  Dim var_9C As String
  Dim var_88 As MSFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1012F44: Set var_88 = Me.TopCtrl1
  loc_1012F4A: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1012F63: If (CStr() = "Browse") Then
  loc_1012F66:   Exit Sub
  loc_1012F67: End If
  loc_1012F7A: var_A0 = CLng(Me.FGrid.Col)
  loc_1012F8A: If (var_A0 = CLng(2)) Then
  loc_1012F91:   Set var_C4 = Me.FGrid
  loc_1012FB5:   var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_1012FE2:   Set var_B4 = var_C4
  loc_1012FF4:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_101301C:   Set var_88 = Me.TxtGrid
  loc_1013022:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_101302A:   0 = var_B4.Text
  loc_1013043:   If (Len(var_9C) <= 1) Then
  loc_1013052:     Set var_88 = Me.TxtGrid
  loc_1013058:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1013060:     var_CA = var_B4.Text
  loc_1013071:     Set var_B8 = Me.TxtGrid
  loc_1013077:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_101307F:     var_C4.Text = var_9C
  loc_1013092:   End If
  loc_101309E:   Set var_88 = Me.TxtGrid
  loc_10130A4:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_10130BE:   Set var_B8 = Me.TxtGrid
  loc_10130C4:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_10130CC:   var_C4.SelStart = Len(var_B4.Text)
  loc_10130E2: Else
  loc_10130E9:   If (var_A0 = CLng(3)) Then
  loc_101312A:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_101313C:   End If
  loc_101313C: End If
  loc_1013146: If (CLng(Index) <> &HD) Then
  loc_101314E:   global_136 = &HFF
  loc_1013151: End If
  loc_1013151: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) 'FFFAC0
  'Data Table: 5082DC
  Dim var_88 As MSFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FFF8C8: Set var_88 = Me.TopCtrl1
  loc_FFF8CE: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_FFF8E7: If (CStr() = "Browse") Then
  loc_FFF8EA:   Exit Sub
  loc_FFF8EB: End If
  loc_FFF8EF: Set var_88 = Me.TopCtrl1
  loc_FFF8F5: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_FFF90E: If (CStr() = "Edit") Then
  loc_FFF911:   Exit Sub
  loc_FFF912: End If
  loc_FFF92F: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FFF932:   Exit Sub
  loc_FFF933: End If
  loc_FFF944: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FFF966:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FFF9A0:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FFF9C2:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FFF9D8:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FFF9E1:         Set var_110 = Me.FGrid
  loc_FFF9FC:       Else
  loc_FFFA0F:         Me.FGrid.Rows = 1
  loc_FFFA35:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FFFA3D:         Set var_110 = Me.FGrid
  loc_FFFA6A:         Me.FGrid.FixedRows = 1
  loc_FFFA72:       End If
  loc_FFFA72:     End If
  loc_FFFA75:   Else
  loc_FFFA96:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FFFAA6:   End If
  loc_FFFAAA:   Set var_88 = Me.FGrid
  loc_FFFABB: End If
  loc_FFFABB: Exit Sub
  loc_FFFABC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E42EC0
  'Data Table: 5082DC
  Dim var_8C As TextBox
  loc_E42E94: Call Proc_188_57_1009A38()
  loc_E42EA4: Set var_88 = Me.TxtGrid
  loc_E42EAA: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E42EB2: var_8C.Visible = False
  loc_E42EBE: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 'FE6A00
  'Data Table: 5082DC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE683B: Me.DGItem.Visible = False
  loc_FE685A: If (Me.RecordCount > 0) Then
  loc_FE6897:   Set var_B4 = Me.TxtGrid
  loc_FE689D:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_FE68A5:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FE68CE:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE68D6:   var_EC = CVar(CLng(2)) 'Long
  loc_FE6909:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE6911:   Set var_B8 = Me.FGrid
  loc_FE6917:   LateIdCallSt
  loc_FE6946:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE694E:   var_EC = CVar(CLng(1)) 'Long
  loc_FE6970:   var_B0 = Me.Fields.Item("Code")
  loc_FE6981:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE6989:   Set var_B8 = Me.FGrid
  loc_FE698F:   LateIdCallSt
  loc_FE69AB: End If
  loc_FE69B7: Set var_A8 = Me.TxtGrid
  loc_FE69BD: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE69C5: var_A4 = var_B0.Visible
  loc_FE69D7: If (var_12E = &HFF) Then
  loc_FE69E3:   Set var_A8 = Me.TxtGrid
  loc_FE69E9:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FE69F1:   var_B0.SetFocus
  loc_FE69FD: End If
  loc_FE69FD: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E6F85C
  'Data Table: 5082DC
  loc_E6F81A: Proc_6_153_E91194(Me.DGItem, arg_14)
  loc_E6F831: Set var_8C = Me.FGPoint
  loc_E6F84B: Proc_6_138_106D6F8(Me.DGItem, global_140, 0)
  loc_E6F859: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF7A28
  'Data Table: 5082DC
  loc_EF7968: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_EF796B:   Call DGUnit_UnknownEvent_9()
  loc_EF7970: End If
  loc_EF798C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF798F:   Call DGHelp_UnknownEvent_9()
  loc_EF7994: End If
  loc_EF79B0: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF79B3:   Call DGRest_UnknownEvent_9()
  loc_EF79B8: End If
  loc_EF79D4: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_EF79D7:   Call DGItemCat_UnknownEvent_9()
  loc_EF79DC: End If
  loc_EF79F8: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_EF79FB:   Call DGItemGroup_UnknownEvent_9()
  loc_EF7A00: End If
  loc_EF7A1C: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF7A1F:   Call DGItem_UnknownEvent_9()
  loc_EF7A24: End If
  loc_EF7A24: Exit Sub
  loc_EF7A25:  = arg_60FF
End Sub

Private Sub TopCtrl1_UnknownEvent_A '11C4A88
  'Data Table: 5082DC
  Dim var_88 As Variant
  Dim var_90 As String
  Dim var_94 As TextBox
  Dim unk_5082F2 As Connection15
  Dim var_CC As Fields15
  Dim var_E0 As Field20
  Dim var_120 As Variant
  Dim var_128 As TextBox
  Dim var_C4 As Variant
  loc_11C4650: On Error Goto loc_11C4A45
  loc_11C4653: Call Proc_188_54_FB61B8()
  loc_11C4673: If (Me.Check1.Value = 1) Then
  loc_11C4676:   Call Proc_188_55_15487A0()
  loc_11C467B: End If
  loc_11C46B6: Set var_88 = Me.Txt
  loc_11C46BC: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_94, var_98, "Select Max(DispCode) From ItemMast Where ItemType='Combo' And LogSite_Code='" & MemVar_1F92078 & "' And RestCode='", var_C4, -1)
  loc_11C46DD: unk_5082F2.Execute var_CC & var_98 & "'", 0, var_E0
  loc_11C46E5: var_F0 = var_94.Tag.Fields
  loc_11C46ED:  = var_CC.Item()
  loc_11C46F5:  = var_E0.Value
  loc_11C4700: Proc_6_39_E7C810(var_100)
  loc_11C470D: var_120 = (var_100 + 1)
  loc_11C4721: Set var_124 = Me.Txt
  loc_11C4727: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_128)
  loc_11C472F: var_128.Text = CStr(var_120)
  loc_11C476F: Set var_88 = Me.Txt
  loc_11C4775: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_11C477D: var_94.Tag = vbNullString
  loc_11C4797: Set var_88 = Me.Txt
  loc_11C479D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_11C47A5: var_94.Text = vbNullString
  loc_11C47BF: Set var_88 = Me.Txt
  loc_11C47C5: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H11), var_94)
  loc_11C47CD: var_94.Text = "Other"
  loc_11C47E7: Set var_88 = Me.Txt
  loc_11C47ED: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HE), var_94)
  loc_11C47F5: var_94.Text = "Yes"
  loc_11C4814: Me.FGrid.Rows = 1
  loc_11C483A: var_C4 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_11C4842: Set var_94 = Me.FGrid
  loc_11C486F: Me.FGrid.FixedRows = 1
  loc_11C488C: var_90 = "ADD"
  loc_11C489A: Call Proc_188_53_E7BD64(Proc_5_1_100CB50(var_90, Me, global_64), FGrid.DispID_10000)
  loc_11C48B3: Set var_88 = Me.Txt
  loc_11C48B9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_94, var_90)
  loc_11C48C1: var_C4 = var_94.Text
  loc_11C48D8: If (var_90 = vbNullString) Then
  loc_11C48E6:   Set var_88 = Me.Txt
  loc_11C48EC:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_94)
  loc_11C48F4:   var_94.SetFocus
  loc_11C4903: Else
  loc_11C4911:   Set var_88 = Me.Txt
  loc_11C4917:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_94)
  loc_11C4936:   If (var_94.Text = vbNullString) Then
  loc_11C4944:     Set var_88 = Me.Txt
  loc_11C494A:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_94)
  loc_11C4952:     var_94.SetFocus
  loc_11C4961:   Else
  loc_11C496F:     Set var_88 = Me.Txt
  loc_11C4975:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_94)
  loc_11C4994:     If (var_94.Text = vbNullString) Then
  loc_11C49A2:       Set var_88 = Me.Txt
  loc_11C49A8:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_94)
  loc_11C49B0:       var_94.SetFocus
  loc_11C49BF:     Else
  loc_11C49CD:       Set var_88 = Me.Txt
  loc_11C49D3:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_11C49DB:       var_90 = var_94.Text
  loc_11C49F2:       If (var_90 = vbNullString) Then
  loc_11C4A00:         Set var_88 = Me.Txt
  loc_11C4A06:         Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_11C4A0E:         var_94.SetFocus
  loc_11C4A1A:       End If
  loc_11C4A1A:     End If
  loc_11C4A1A:   End If
  loc_11C4A1A: End If
  loc_11C4A27: Me.LblUser.Caption = vbNullString
  loc_11C4A3C: Me.LblLDt.Caption = vbNullString
  loc_11C4A44: Exit Sub
  loc_11C4A45: ' Referenced from: 11C4650
  loc_11C4A4D: Set var_88 = Err()
  loc_11C4A53: Call 0.Method_arg_2C (var_90)
  loc_11C4A74: MsgBox(CVar(var_90), &H40, "Information", var_100, var_120)
  loc_11C4A87: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBC344
  'Data Table: 5082DC
  loc_EBC2B0: On Error Goto loc_EBC33B
  loc_EBC2EA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBC2F9:   Set var_110 = Me
  loc_EBC310:   Call Proc_188_53_E7BD64(Proc_5_1_100CB50("INI", var_110))
  loc_EBC31B:   Call Proc_188_55_15487A0(global_64)
  loc_EBC323: Else
  loc_EBC329:   Call 0.Method_arg_1E8 (var_110)
  loc_EBC331:   Call var_110.SetFocus
  loc_EBC33A: End If
  loc_EBC33A: Exit Sub
  loc_EBC33B: ' Referenced from: EBC2B0
  loc_EBC33B: Proc_6_60_E62BC4()
  loc_EBC340: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11D31F0
  'Data Table: 5082DC
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_5082F2 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_11D2D90: On Error Goto loc_11D3198
  loc_11D2DA1: If (Proc_183_56_FE8818(global_64) = &HFF) Then
  loc_11D2DA4:   Exit Sub
  loc_11D2DA5: End If
  loc_11D2DD7: var_D4 = "KOT"
  loc_11D2E1F: If (Proc_6_108_1010FEC(MemVar_1F92044, "KOT", "ITEM", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_11D2E22:   Exit Sub
  loc_11D2E23: End If
  loc_11D2E55: var_D4 = "STOCK"
  loc_11D2E9D: If (Proc_6_108_1010FEC(MemVar_1F92044, "STOCK", "ITEM", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_11D2EA0:   Exit Sub
  loc_11D2EA1: End If
  loc_11D2F1B: If (Proc_6_108_1010FEC(MemVar_1F92044, "BOM", "FinItem", CStr(Me.Fields.Item("Code").Value), 0, "Consumption") = 0) Then
  loc_11D2F1E:   Exit Sub
  loc_11D2F1F: End If
  loc_11D2F56: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_11D2F5B:   var_96 = 0
  loc_11D2F67:   unk_5082F2.BeginTrans var_D0
  loc_11D2F6E:   var_96 = &HFF
  loc_11D2F82:   var_94 = Me.Bookmark 'Variant
  loc_11D2FDC:   unk_5082F2.Execute CStr("Delete From ItemMast Where Code='" & Me.Fields.Item("Code").Value & "'"), var_138, -1
  loc_11D304E:   unk_5082F2.Execute CStr("Delete From ItemRate Where ItemCode='" & Me.Fields.Item("Code").Value & "'"), var_138, -1
  loc_11D30B2:   var_118 = "Delete From ComboPackDetail Where ComboCode='" & Me.Fields.Item("Code").Value & "'" 
  loc_11D30B6:   var_B4 = CStr(var_118)
  loc_11D30C0:   unk_5082F2.Execute var_B4, var_138, -1
  loc_11D30E2:   unk_5082F2.CommitTrans
  loc_11D30E9:   var_96 = 0
  loc_11D30F7:   Me.Requery -1
  loc_11D3107:   Me.Requery -1
  loc_11D3117:   Me.Requery -1
  loc_11D3137:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11D3144:     Me.Bookmark = var_94
  loc_11D314C:   Else
  loc_11D3160:     If (Me.EOF = 0) Then
  loc_11D3169:       Me.MoveLast
  loc_11D316E:     End If
  loc_11D316E:   End If
  loc_11D316E:   Call Proc_188_55_15487A0(var_96, var_13C, var_13C, var_13C, var_96)
  loc_11D318F:   Proc_5_0_110649C(&HFF, Me, global_64, 0)
  loc_11D3197: End If
  loc_11D3197: Exit Sub
  loc_11D3198: ' Referenced from: 11D2D90
  loc_11D319E: If (var_96 = &HFF) Then
  loc_11D31A7:   unk_5082F2.RollbackTrans
  loc_11D31AC: End If
  loc_11D31B4: Set var_9C = Err()
  loc_11D31BA: Call 0.Method_arg_2C (var_B4, var_96, 0)
  loc_11D31DB: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_11D31EE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FC02E4
  'Data Table: 5082DC
  Dim Me As Variant
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_FC013C: On Error Goto loc_FC02A1
  loc_FC014D: If (Proc_183_55_FE7900(global_64) = &HFF) Then
  loc_FC0150:   Exit Sub
  loc_FC0151: End If
  loc_FC0168: If (Me.RecordCount > 0) Then
  loc_FC018E:   Call Proc_188_53_E7BD64(Proc_5_1_100CB50("EDIT", Me))
  loc_FC01A7:   Set var_90 = Me.Txt
  loc_FC01AD:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HA), var_98)
  loc_FC01B5:   var_8C = var_98.Text
  loc_FC01DC:   Set var_90 = Me.Txt
  loc_FC01E2:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(8), var_98, 0)
  loc_FC01EA:   var_98.Enabled = CInt(var_8C)
  loc_FC0203:   Set var_90 = Me.Txt
  loc_FC0209:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(9), var_98)
  loc_FC0211:   var_98.Enabled = False
  loc_FC0228:   Set var_90 = Me.Txt
  loc_FC022E:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FC0236:   var_98.SetFocus
  loc_FC0245: Else
  loc_FC0266:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FC0276: End If
  loc_FC0283: Me.LblUser.Caption = vbNullString
  loc_FC0298: Me.LblLDt.Caption = vbNullString
  loc_FC02A0: Exit Sub
  loc_FC02A1: ' Referenced from: FC013C
  loc_FC02A9: Set var_90 = Err()
  loc_FC02AF: Call 0.Method_arg_2C (var_8C)
  loc_FC02D0: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_FC02E3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16980
  'Data Table: 5082DC
  loc_E16975: Me.Global.Unload Me
  loc_E1697D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F9C91C
  'Data Table: 5082DC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  Dim var_D8 As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_134 As Variant
  Dim var_A8 As Variant
  loc_F9C7B0: On Error Goto loc_F9C8B7
  loc_F9C7BC: var_88 = Me.RecordCount
  loc_F9C7CA: If (var_88 <= 0) Then
  loc_F9C7E8:   var_A8 = "Records Not Present For Searching."
  loc_F9C7EE:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F9C7FE:   Exit Sub
  loc_F9C7FF: End If
  loc_F9C80A: If (global_52 = "Banquet") Then
  loc_F9C814:   var_10C = "SELECT I.Code as SearchCode,I.Name,I.Unit,convert(varchar(8),I.Dispcode,103),convert(varchar(50),I.SaleRate,103),Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END ,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END FROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Where I.LOGSITE_CODE IN ('HO','" & MemVar_1F92078
  loc_F9C829:   MemVar_1F920E4 = var_10C & "') AND I.RestCode='" & MemVar_1F92078 & "BANQ' and IG.Type IN ('Finish')  And I.DispCode<>9999 Order by I.Name"
  loc_F9C839: Else
  loc_F9C839:   var_B8 = "SELECT I.Code as SearchCode,I.Name,I.Unit,IG.Name as ItemGrpName,IC.Name As ItemCategory,convert(varchar(8),I.Dispcode,103) as DispCode,Depart.Name as Restaurant,SaleRate=convert(varchar(50),R.Rate,103),Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END ,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,Active=I.ActiveYN,Kitchen=D.Name,Type=I.NType FROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code)  left join depart on I.restcode=depart.code left join depart D on I.Kitchen=D.code left join (Select itemcode,Rate from itemrate inner join (Select Max(ItemCode) as Itemcode1,Max(Appdate) as Appdate1 From ItemRate Where AppDate<="
  loc_F9C849:   Proc_6_7_F25D88(var_A8, MemVar_1F920EC)
  loc_F9C855:   var_D8 = " Group By ItemCode) Q On Appdate=Q.Appdate1 And itemcode=Q.itemcode1)R on I.code=R.Itemcode Where I.LOGSITE_CODE IN ('HO','"
  loc_F9C85A:   var_E8 = var_B8 & var_A8 & var_D8 
  loc_F9C864:   var_108 = var_E8 & CVar(MemVar_1F92078) 
  loc_F9C86D:   var_134 = var_108 & "') AND Depart.RestType<>'Banquet' and IG.Type IN ('Finish')  And I.DispCode<>9999 And ItemType='Combo' Order by I.Name" 
  loc_F9C872:   MemVar_1F920E4 = CStr(var_134)
  loc_F9C883: End If
  loc_F9C886: var_10C = "3000,1500,2000,1000,1000,2000,900,600,600,500,1800,1800"
  loc_F9C88C: Proc_6_126_F1BCC0(var_10C, MemVar_1F920E4)
  loc_F9C89A: MemVar_1F92120 = Me
  loc_F9C8B1: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F9C8B6: Exit Sub
  loc_F9C8B7: ' Referenced from: F9C7B0
  loc_F9C8BF: Set var_138 = Err()
  loc_F9C8C5: Call 0.Method_arg_1C (var_88)
  loc_F9C8D6: If (var_88 <> 0) Then
  loc_F9C8E1:   Set var_138 = Err()
  loc_F9C8E7:   Call 0.Method_arg_2C (var_10C)
  loc_F9C908:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F9C91B: End If
  loc_F9C91B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E347B8
  'Data Table: 5082DC
  loc_E347A8: Proc_5_0_110649C(&HFF, Me)
  loc_E347B0: Call Proc_188_55_15487A0(global_64)
  loc_E347B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E34AB8
  'Data Table: 5082DC
  loc_E34AA8: Proc_5_0_110649C(&HFF, Me)
  loc_E34AB0: Call Proc_188_55_15487A0(global_64)
  loc_E34AB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E349F8
  'Data Table: 5082DC
  loc_E349E8: Proc_5_0_110649C(&HFF, Me)
  loc_E349F0: Call Proc_188_55_15487A0(global_64)
  loc_E349F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E34938
  'Data Table: 5082DC
  loc_E34928: Proc_5_0_110649C(&HFF, Me)
  loc_E34930: Call Proc_188_55_15487A0(global_64)
  loc_E34935: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E63830
  'Data Table: 5082DC
  Dim Me As Recordset15
  loc_E637E7: Me.Requery -1
  loc_E637F7: Me.Requery -1
  loc_E63807: Me.Requery -1
  loc_E63817: Me.Requery -1
  loc_E63827: Me.Requery -1
  loc_E6382C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1665E68
  'Data Table: 5082DC
  Dim var_A8 As String
  Dim var_E0 As Variant
  Dim var_C0 As String
  Dim unk_5082F2 As Connection15
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_A4 As Variant
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_D0 As Variant
  Dim var_114 As Variant
  Dim Me As Recordset15
  Dim var_F0 As Variant
  Dim var_128 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_198 As Variant
  Dim var_8C As Recordset15
  Dim var_BC As Variant
  Dim var_94 As Double
  Dim var_1C4 As Variant
  Dim var_1D8 As TextBox
  Dim var_1EC As TextBox
  Dim var_200 As TextBox
  Dim var_214 As TextBox
  Dim var_2F8 As TextBox
  Dim var_394 As Variant
  Dim var_474 As TextBox
  Dim var_4C0 As TextBox
  Dim var_1BC As String
  Dim var_1CC As String
  Dim var_1D0 As String
  Dim var_20C As String
  Dim var_1B8 As Variant
  Dim var_240 As Variant
  Dim var_250 As Variant
  Dim var_260 As Variant
  Dim var_2A0 As Variant
  Dim var_3B4 As Variant
  Dim var_488 As Variant
  Dim var_4E4 As Variant
  Dim var_534 As Double
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_548 As TextBox
  Dim var_528 As Variant
  Dim var_568 As Variant
  Dim var_1D4 As Field20
  loc_1664898: On Error Goto loc_1665E15
  loc_166489F: var_86 = CByte(0) 'Byte
  loc_16648AE: Set var_9C = Me.Txt
  loc_16648B4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_16648DD: If (Proc_183_19_E8DAFC(var_A0, "Name") = 0) Then
  loc_16648E7:   Call Txt_GotFocus()
  loc_16648EC:   Exit Sub
  loc_16648ED: End If
  loc_16648F8: Set var_9C = Me.Txt
  loc_16648FE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0)
  loc_1664927: If (Proc_183_19_E8DAFC(var_A0, "Unit") = 0) Then
  loc_1664931:   Call Txt_GotFocus()
  loc_1664936:   Exit Sub
  loc_1664937: End If
  loc_1664942: Set var_9C = Me.Txt
  loc_1664948: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A0, CInt(1))
  loc_1664971: If (Proc_183_19_E8DAFC(var_A0, "Item Group Name") = 0) Then
  loc_166497B:   Call Txt_GotFocus()
  loc_1664980:   Exit Sub
  loc_1664981: End If
  loc_166498C: Set var_9C = Me.Txt
  loc_1664992: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_A0, CInt(2))
  loc_16649BB: If (Proc_183_19_E8DAFC(var_A0, "Item Category") = 0) Then
  loc_16649C5:   Call Txt_GotFocus()
  loc_16649CA:   Exit Sub
  loc_16649CB: End If
  loc_16649D6: Set var_9C = Me.Txt
  loc_16649DC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A0, CInt(6))
  loc_1664A05: If (Proc_183_19_E8DAFC(var_A0, "Restaurant") = 0) Then
  loc_1664A0F:   Call Txt_GotFocus()
  loc_1664A14:   Exit Sub
  loc_1664A15: End If
  loc_1664A20: Set var_9C = Me.Txt
  loc_1664A26: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A0, CInt(8))
  loc_1664A4F: If (Proc_183_19_E8DAFC(var_A0, "Kitchen") = 0) Then
  loc_1664A59:   Call Txt_GotFocus()
  loc_1664A5E:   Exit Sub
  loc_1664A5F: End If
  loc_1664A6A: Set var_9C = Me.Txt
  loc_1664A70: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_A0, CInt(3))
  loc_1664A99: If (Proc_183_19_E8DAFC(var_A0, "Service Charge") = 0) Then
  loc_1664AA3:   Call Txt_GotFocus()
  loc_1664AA8:   Exit Sub
  loc_1664AA9: End If
  loc_1664AAC: Call Proc_188_56_12F18FC(var_AA, CInt(&HC))
  loc_1664AB7: If (var_AA = &HFF) Then
  loc_1664ABA:   Exit Sub
  loc_1664ABB: End If
  loc_1664ABF: Set var_9C = Me.TopCtrl1
  loc_1664AC5: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(CInt(0))
  loc_1664ADE: If (CStr(var_A0) = "Add") Then
  loc_1664AE7:   var_E0 = 0
  loc_1664B04:   var_A8 = "Select IsNull(Max(CAST(SUBSTRING(Q.Code,3,6) AS INT)),1)+1 AS MyCode From (Select Code,Site_Code From Item Union Select Code,Site_Code From Itemmast)Q WHERE Q.SITE_CODE='" & MemVar_1F92070
  loc_1664B14:   unk_5082F2.Execute CStr(var_A0) & "'", var_BC, -1
  loc_1664B1C:   var_9C = var_9C.Fields
  loc_1664B24:   var_E0 = var_A0.Item(var_A0)
  loc_1664B2C:   var_A4 = var_A4.Value
  loc_1664B65:   var_104 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1664B93:   var_114 = (1 + Format(CStr(var_F0), "000000"))
  loc_1664B9E:   global_132 = CStr(var_114)
  loc_1664BB3: Else
  loc_1664BD0:   var_A0 = Me.Fields.Item("Code")
  loc_1664BD8:   var_BC = var_A0.Value
  loc_1664BE1:   var_A8 = CStr(var_BC)
  loc_1664BE7:   global_132 = var_A8
  loc_1664BF8: End If
  loc_1664C01: unk_5082F2.BeginTrans var_118
  loc_1664C0A: var_86 = CByte(1) 'Byte
  loc_1664C2B: Proc_6_7_F25D88(var_BC, MemVar_1F920EC, "Select Rate,Appdate From ItemRate Where AppDate<=", var_1B8, -1)
  loc_1664C33: var_F0 = var_A4 & var_BC 
  loc_1664C3C: var_104 = var_F0 & " And ItemCode='" 
  loc_1664C64: Set var_9C = Me.Txt
  loc_1664C6A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A0, var_A8, var_104 & CVar(global_132) & "' And RestCode='")
  loc_1664C72: 1 = var_A0.Tag
  loc_1664C94: unk_5082F2.Execute CStr(var_104 & CVar(var_A8) & "' Order By AppDate Desc "), var_F0, 
  loc_1664C9F: Set var_8C = var_A4
  loc_1664CD7: If (var_8C.RecordCount > 0) Then
  loc_1664CF1:   var_A0 = var_8C.Fields.Item("Rate")
  loc_1664D1E:   var_94 = CSng(Format(CVar(var_A0), "0.00"))
  loc_1664D30: Else
  loc_1664D3E:   Set var_9C = Me.Txt
  loc_1664D44:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_A0, var_A8)
  loc_1664D4C:   var_94 = var_A0.Text
  loc_1664D59:   var_94 = Val(var_A8)
  loc_1664D66: End If
  loc_1664D6A: Set var_9C = Me.TopCtrl1
  loc_1664D70: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_94)
  loc_1664D89: If (CStr(1) = "Add") Then
  loc_1664D9A:   Set var_9C = Me.Txt
  loc_1664DA0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0)
  loc_1664DBB:   Set var_A4 = Me.Txt
  loc_1664DC1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1C4)
  loc_1664DDC:   Set var_1D4 = Me.Txt
  loc_1664DE2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1D8)
  loc_1664DFD:   Set var_1E8 = Me.Txt
  loc_1664E03:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1EC)
  loc_1664E1E:   Set var_1FC = Me.Txt
  loc_1664E24:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200)
  loc_1664E3F:   Set var_210 = Me.Txt
  loc_1664E45:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_214)
  loc_1664E5D:   Set var_224 = Me.Txt
  loc_1664E63:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_228)
  loc_1664E77:   var_F0 = Left(CVar(var_228), 1)
  loc_1664E87:   Set var_22C = Me.Txt
  loc_1664E8D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_230)
  loc_1664EB4:   Proc_6_7_F25D88(var_290, Date)
  loc_1664EC7:   Set var_2F4 = Me.Txt
  loc_1664ECD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2F8)
  loc_1664EE5:   Set var_380 = Me.Txt
  loc_1664EEB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_384)
  loc_1664F0F:   Set var_3D8 = Me.Txt
  loc_1664F15:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_3DC)
  loc_1664F3C:   Set var_470 = Me.Txt
  loc_1664F42:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_474)
  loc_1664F5D:   Set var_4BC = Me.Txt
  loc_1664F63:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_4C0)
  loc_1664F84:   var_A8 = "Insert Into ItemMast (Code,Name,RestCode,DispCode,Unit,ItemGroup,ItemCatCode,DiscApp,RateEdit,Site_Code,U_Name,U_EntDt,U_AE,Type,Kitchen,SaleRate,SChrgApp,RateIncTax,LOGSITE_CODE,ActiveYN,NType,ItemType) " & " Values ('"
  loc_1664FD4:   var_20C = var_A8 & global_132 & "','" & var_A0.Text & "','" & var_1C4.Tag & "'," & var_1D8.Text & ",'" & var_1EC.Text & "','" & var_200.Tag
  loc_166501B:   var_250 = CVar(var_20C & "','" & var_214.Tag & "','") & var_F0 & "','" & Left(CVar(var_230), 1) & "', '" & CVar(MemVar_1F92070) & "','" 
  loc_1665035:   var_2A0 = var_250 & CVar(MemVar_1F920C8) & "'," & var_290 
  loc_1665082:   var_3B4 = var_2A0 & ",'A','" & CVar(global_56) & "','" & CVar(var_2F8.Tag) & "'," & CVar(var_94) & ",'" & Left(CVar(var_384), 1) 
  loc_16650CB:   var_4E4 = var_3B4 & "','" & Left(CVar(var_3DC), 1) & "','" & CVar(MemVar_1F92078) & "','" & CVar(var_474.Text) & "','" & CVar(var_4C0.Text) 
  loc_16650E2:   unk_5082F2.Execute CStr(var_4E4 & "','Combo')"), var_528, -1
  loc_16651A8:   Set var_9C = Me.Txt
  loc_16651AE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_A0, var_A8)
  loc_16651B6:   var_52C = var_A0.Text
  loc_16651CD:   If (var_A8 <> vbNullString) Then
  loc_16651DE:     Set var_9C = Me.Txt
  loc_16651E4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A0)
  loc_16651EC:     var_F4 = var_A0.Tag
  loc_16651FF:     Set var_A4 = Me.Txt
  loc_1665205:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C4)
  loc_1665228:     Set var_1D4 = Me.Txt
  loc_166522E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1D8)
  loc_166523D:     Proc_6_7_F25D88(var_F0, CVar(var_1D8))
  loc_1665250:     Proc_6_7_F25D88(var_250, Date)
  loc_1665269:     var_A8 = "Insert Into Itemrate(ItemCode,RestCode,Rate,AppDate,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('"
  loc_16652B4:     var_168 = CVar(var_A8 & global_132 & "','" & var_F4 & "'," & CStr(Val(var_1C4.Text)) & ",") & var_F0 & ",'" & CVar(MemVar_1F92070) 
  loc_16652F3:     var_290 = var_168 & "','" & CVar(MemVar_1F920C8) & "'," & var_250 & ",'A','" & CVar(MemVar_1F92078) & "')" 
  loc_1665301:     unk_5082F2.Execute CStr(var_290), var_2A0, -1
  loc_166534F:   End If
  loc_1665352: Else
  loc_1665360:   Set var_9C = Me.Txt
  loc_1665366:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A8)
  loc_166536E:   var_1E8 = var_A0.Text
  loc_1665381:   Set var_A4 = Me.Txt
  loc_1665387:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1C4, var_F4)
  loc_166538F:   var_534 = var_1C4.Tag
  loc_16653A2:   Set var_1D4 = Me.Txt
  loc_16653A8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1D8)
  loc_16653C3:   Set var_1E8 = Me.Txt
  loc_16653C9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1EC)
  loc_16653E4:   Set var_1FC = Me.Txt
  loc_16653EA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200)
  loc_1665405:   Set var_210 = Me.Txt
  loc_166540B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_214)
  loc_1665423:   Set var_224 = Me.Txt
  loc_1665429:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_228)
  loc_166543D:   var_F0 = Left(CVar(var_228), 1)
  loc_166544D:   Set var_22C = Me.Txt
  loc_1665453:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_230)
  loc_166546F:   var_280 = Date
  loc_166547A:   Proc_6_7_F25D88(var_290, var_280)
  loc_166548D:   Set var_2F4 = Me.Txt
  loc_1665493:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2F8)
  loc_16654AB:   Set var_380 = Me.Txt
  loc_16654B1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_384)
  loc_16654D0:   Set var_3D8 = Me.Txt
  loc_16654D6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_3DC)
  loc_16654F5:   Set var_470 = Me.Txt
  loc_16654FB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_474)
  loc_166551F:   Set var_4BC = Me.Txt
  loc_1665525:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_4C0)
  loc_166554C:   Set var_52C = Me.Txt
  loc_1665552:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_548)
  loc_166558F:   var_1D0 = "UPDATE ItemMast SET Name='" & var_A8 & "',RestCode='" & var_F4 & "',DispCode=" & var_1D8.Text
  loc_16655C0:   var_104 = CVar(var_1D0 & ",Unit='" & var_1EC.Text & "',ItemGroup='" & var_200.Tag & "',ItemCatCode='" & var_214.Tag & "',DiscApp='") 'String
  loc_16655FC:   var_260 = var_104 & var_F0 & "',RateEdit='" & Left(CVar(var_230), 1) & "',SITE_CODE='" & CVar(MemVar_1F92070) & "',U_name='" & CVar(MemVar_1F920C8) 
  loc_166560C:   var_2A0 = var_260 & "',U_EntDt=" & var_290 
  loc_1665648:   var_394 = var_2A0 & " ,U_AE='E',TYPE='" & CVar(global_56) & "',Kitchen='" & CVar(var_2F8.Tag) & "',ActiveYN='" & CVar(Proc_6_38_E68A98(CVar(var_384))) 
  loc_166567F:   var_488 = var_394 & "',NType='" & CVar(Proc_6_38_E68A98(CVar(var_3DC))) & "',SaleRate=" & CVar(var_94) & ",SChrgApp='" & Left(CVar(var_474), 1) 
  loc_16656B8:   var_568 = var_488 & "',RateIncTax='" & Left(CVar(var_4C0), 1) & "' WHERE Code='" & CVar(global_132) & "' And RestCode='" & CVar(var_548.Tag) 
  loc_16656CF:   unk_5082F2.Execute CStr(var_568 & "'"), var_598, -1
  loc_166579D:   Set var_9C = Me.Txt
  loc_16657A3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_A0, var_A8)
  loc_16657AB:   var_59C = var_A0.Text
  loc_16657B8:   var_534 = Val(var_A8)
  loc_16657BE:   var_BC = Date
  loc_16657C9:   Proc_6_7_F25D88(var_F0, var_BC)
  loc_16657DC:   Set var_A4 = Me.Txt
  loc_16657E2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1C4, var_1D0)
  loc_16657FA:   Set var_1D4 = Me.Txt
  loc_1665800:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1D8)
  loc_1665808:   var_250 = CVar(var_1D8) 'Address
  loc_166580F:   Proc_6_7_F25D88(var_260, var_250)
  loc_1665850:   var_104 = CVar("Update ItemRate Set Rate=" & CStr(var_1C4.Tag) & ",Site_Code='" & MemVar_1F92070 & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_1665888:   var_240 = var_104 & var_F0 & ",U_AE='E' Where ItemCode='" & CVar(global_132) & "' And RestCode='" & CVar(var_1D0) & "' And AppDate=" 
  loc_166589D:   unk_5082F2.Execute CStr(var_240 & var_260), var_280, -1
  loc_16658E3: End If
  loc_1665910: Set var_9C = Me.Txt
  loc_1665916: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0, var_A8, "Select Count(*) From UnitMast Where Name='", var_BC, -1, var_A4)
  loc_1665927: var_C0 = 0 & var_A8
  loc_1665937: unk_5082F2.Execute var_C0 & "'", var_1D4, var_F0
  loc_166593F: var_1E8 = var_A4.Fields
  loc_1665947:  = var_A0.Text.Item(1)
  loc_166594F:  = var_1D4.Value
  loc_166597C: If (var_F0 <= 0) Then
  loc_16659A1:   Set var_9C = Me.Txt
  loc_16659A7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0, CVar("Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,lOGSITE_CODE)" & " Values('"))
  loc_16659BE:   var_114 = var_2A0 & Trim(CVar(var_A0)) 
  loc_16659E4:   var_198 = var_114 & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_16659FF:   Proc_6_7_F25D88(var_250, Date, var_198 & "',")
  loc_1665A07:   var_260 = -1 & var_250 
  loc_1665A31:   unk_5082F2.Execute CStr(var_260 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_A4, 
  loc_1665A63: End If
  loc_1665A92: Set var_9C = Me.Txt
  loc_1665A98: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A0, var_C0, "Delete from ComboPackDetail WHERE comboCode ='" & global_132 & "' AND restcode='")
  loc_1665AA0: var_BC = var_A0.Tag
  loc_1665AA9: var_1BC = -1 & var_C0
  loc_1665ABE: var_1CC = "Update ItemRate Set Rate=" & CStr(var_A0.Text.Tag) & ",Site_Code='" & "' AND  (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') "
  loc_1665AC7: unk_5082F2.Execute var_1CC, var_A4, 
  loc_1665B0E: For var_5A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_96 = var_5A0 'Integer
  loc_1665B18:   var_D0 = CVar(CLng(var_96)) 'Long
  loc_1665B20:   var_128 = CVar(CLng(2)) 'Long
  loc_1665B4B:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1665B5C:     Set var_9C = Me.Txt
  loc_1665B62:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A0, var_C0)
  loc_1665B6A:     var_128 = var_A0.Tag
  loc_1665B73:     var_D0 = CVar(CLng(var_96)) 'Long
  loc_1665B7B:     var_128 = CVar(CLng(1)) 'Long
  loc_1665B8A:     var_BC = Me.FGrid.TextMatrix)
  loc_1665BB1:     var_F0 = Me.FGrid.TextMatrix)
  loc_1665BC4:     var_534 = Val(CStr(var_F0))
  loc_1665BCA:     var_104 = Date
  loc_1665BD5:     Proc_6_7_F25D88(var_114, var_104, var_534, CVar(CLng(3)), CVar(CLng(var_96)))
  loc_1665BDE:     Set var_1D4 = Me.TopCtrl1
  loc_1665BE4:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_BC)
  loc_1665C32:     var_A8 = "Insert Into ComboPackDetail (ComboCode,restcode,itemcode,qty,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_132
  loc_1665C88:     var_158 = CVar(var_A8 & "','" & var_C0 & "','" & CStr(var_BC) & "'," & CStr(var_534) & ",'" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") 'String
  loc_1665CC8:     unk_5082F2.Execute CStr(var_158 & var_114 & ",'" & IIf((CStr(var_198) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_2A0, -1
  loc_1665D26:   End If
  loc_1665D29: Next var_5A0 'Integer
  loc_1665D34: unk_5082F2.CommitTrans
  loc_1665D3D: var_86 = CByte(0) 'Byte
  loc_1665D4C: Me.Requery -1
  loc_1665D5C: Me.Requery -1
  loc_1665D6C: Me.Requery -1
  loc_1665D7C: Me.Requery -1
  loc_1665DA9: Me.Find "Code='" & global_132 & "'", 0, 1
  loc_1665DB9: Set var_9C = Me.TopCtrl1
  loc_1665DBF: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_D0)
  loc_1665DD8: If (CStr() = "Add") Then
  loc_1665DDB:   Call TopCtrl1_UnknownEvent_A()
  loc_1665DE0:   Exit Sub
  loc_1665DE1: End If
  loc_1665DF6: var_A8 = "INI"
  loc_1665E04: Call Proc_188_53_E7BD64(Proc_5_1_100CB50(var_A8, Me))
  loc_1665E0F: Call Proc_188_55_15487A0(global_64)
  loc_1665E14: Exit Sub
  loc_1665E15: ' Referenced from: 1664898
  loc_1665E1E: If (CInt(var_86) = 1) Then
  loc_1665E27:   unk_5082F2.RollbackTrans
  loc_1665E2C: End If
  loc_1665E34: Set var_9C = Err()
  loc_1665E3A: Call 0.Method_arg_2C (var_A8)
  loc_1665E53: MsgBox(CVar(var_A8), &H10, var_F0, var_104, var_114)
  loc_1665E66: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5AD64
  'Data Table: 5082DC
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5AC86: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5AC8D:   Set var_A8 = Me.ListView
  loc_F5ACD7:   Set var_C0 = Me.Txt
  loc_F5ACDD:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5ACE5:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5AD05: End If
  loc_F5AD11: Me.FrmList.Visible = False
  loc_F5AD41: Set var_9C = Me.Txt
  loc_F5AD47: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5AD4F: var_A8.SetFocus
  loc_F5AD63: Exit Sub
End Sub

Private Sub Form_Load() '12335B8
  'Data Table: 5082DC
  Dim var_88 As Variant
  Dim var_AC As String
  Dim var_B0 As String
  Dim unk_5082F2 As Connection15
  Dim var_CC As String
  Dim var_C0 As Variant
  loc_1233098: On Error Goto loc_1233572
  loc_12330A2: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_12330B6: Me.LblUser.Left = CDbl(13500)
  loc_12330CD: Me.LblUser.Top = CDbl(7800)
  loc_12330E4: Me.LblLDt.Top = CDbl(8160)
  loc_12330FB: Me.LblLDt.Left = CDbl(13500)
  loc_1233116: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1233126: Set var_88 = Me.Check1
  loc_123312C: var_88.BackColor = CLng(MemVar_1F921B0)
  loc_1233134: Call Proc_188_58_121C488()
  loc_1233154: var_B0 = "SELECT Code,Name,ItemGroup,RestCode FROM ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND ItemType<>'Store' And DispCode<>9999 ORDER BY Name"
  loc_123315D: unk_5082F2.Execute var_B0, var_C0, -1
  loc_123316E: Set global_68 = var_88
  loc_123318C: CVarUnk
  loc_1233191: VerifyVarObj
  loc_123319D: LateIdStAd
  loc_12331B6: If (global_52 = "Banquet") Then
  loc_12331D4:   var_B0 = "SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  AND ((OutletYN='Y' and RestType='Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_12331DD:   unk_5082F2.Execute var_B0, var_C0, -1
  loc_12331EE:   Set global_76 = Me.DGHelp
  loc_123320C:   CVarUnk
  loc_1233211:   VerifyVarObj
  loc_1233217:   Set var_88 = Me.DGRest
  loc_123321D:   LateIdStAd
  loc_123322E: Else
  loc_1233249:   var_B0 = "SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_1233252:   unk_5082F2.Execute var_B0, var_C0, -1
  loc_1233263:   Set global_76 = var_88
  loc_1233281:   CVarUnk
  loc_1233286:   VerifyVarObj
  loc_123328C:   Set var_88 = Me.DGRest
  loc_1233292:   LateIdStAd
  loc_12332A0: End If
  loc_12332C4: unk_5082F2.Execute "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_C0, -1
  loc_12332D5: Set global_84 = var_88
  loc_12332F3: CVarUnk
  loc_12332F8: VerifyVarObj
  loc_1233304: LateIdStAd
  loc_1233326: var_AC = "SELECT Distinct Convert(Varchar(11),AppDate,104) as Code,Convert(Varchar(11),AppDate,104) As Name,RestCode,AppDate FROM ItemRate WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_1233336: unk_5082F2.Execute var_AC & "' or LOGSITE_CODE='HO') ORDER BY AppDate", var_C0, -1
  loc_1233347: Set global_88 = Me.DGUnit
  loc_1233365: CVarUnk
  loc_123336A: VerifyVarObj
  loc_1233376: LateIdStAd
  loc_123339F: var_B0 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Type IN ('Finish') ORDER BY Name"
  loc_12333A8: unk_5082F2.Execute var_B0, var_C0, -1
  loc_12333B9: Set global_72 = Me.DGAppDate
  loc_12333D7: CVarUnk
  loc_12333DC: VerifyVarObj
  loc_12333E8: LateIdStAd
  loc_1233411: var_B0 = "SELECT Code,Name,RestCode FROM ItemCatMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  AND (cattype is not NULL and cattype<>'') ORDER BY Name"
  loc_123341A: unk_5082F2.Execute var_B0, var_C0, -1
  loc_123342B: Set global_80 = Me.DGItemGroup
  loc_1233449: CVarUnk
  loc_123344E: VerifyVarObj
  loc_1233454: Set var_88 = Me.DGItemCat
  loc_123345A: LateIdStAd
  loc_1233473: If (global_52 = "Banquet") Then
  loc_123348A:   var_AC = "SELECT I.Code,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SchrgApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,I.TYPE,DispCode,I.RestCode,I.kitchen,K.Name as KitchenName,I.DiscApp,I.SITE_CODE,I.LOGSITE_CODE FROM ((((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code))Left Join Depart K on K.Code=I.Kitchen) Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_123349F:   var_CC = var_AC & "' or I.LOGSITE_CODE='HO') AND I.RestCode='" & MemVar_1F92078 & "BANQ' and IG.Type IN ('Finish') aND DispCode<>9999 And ItemType='Combo' ORDER BY I.Name"
  loc_12334A8:   unk_5082F2.Execute var_CC, var_C0, -1
  loc_12334B9:   Set global_64 = var_88
  loc_12334D5: Else
  loc_12334E9:   var_AC = "SELECT I.Code,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,I.TYPE,DispCode,R.Name as RestName,I.RestCode,I.kitchen,K.Name as KitchenName,R.DiscApp,I.RateIncTax,I.SITE_CODE,I.LOGSITE_CODE,I.ActiveYN,I.NType FROM ((((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code))Left Join Depart R on R.Code=I.RestCode)Left Join Depart K on K.Code=I.Kitchen Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_12334F0:   var_B0 = var_AC & "' or I.LOGSITE_CODE='HO') AND r.RestType IN ('Room Service','Outlet','Production') aND DispCode<>9999 And ItemType='Combo' ORDER BY R.Name,I.Name"
  loc_12334F9:   unk_5082F2.Execute var_B0, var_C0, -1
  loc_123350A:   Set global_64 = var_88
  loc_123351F: End If
  loc_123352B: Set var_88 = Me
  loc_1233534: var_AC = "INI"
  loc_1233542: Call Proc_188_53_E7BD64(Proc_5_1_100CB50(var_AC, var_88, global_64, var_88, var_88, var_88, global_80, var_88), var_88, global_72, var_88)
  loc_1233556: Call 0.Method_arg_160 (var_88, var_88, global_88)
  loc_1233564: Call 0.Method_arg_164 (var_88, var_88)
  loc_123356C: Call Proc_188_55_15487A0(var_88)
  loc_1233571: Exit Sub
  loc_1233572: ' Referenced from: 1233098
  loc_123357A: Set var_88 = Err()
  loc_1233580: Call 0.Method_arg_2C (var_AC)
  loc_12335A1: MsgBox(CVar(var_AC), &H40, "Information", var_F0, var_110)
  loc_12335B4: Exit Sub
  loc_12335B5: Exit Sub
End Sub

Private Sub Form_Resize() 'ED3988
  'Data Table: 5082DC
  Dim var_8C As Label
  loc_ED38E6: Call 0.Method_arg_50 (var_88)
  loc_ED38F8: Me.LblFormCaption.Caption = var_88
  loc_ED3911: Me.LblFormCaption.Left = CDbl(0)
  loc_ED391D: Set var_A0 = Me.TopCtrl1
  loc_ED3923: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010006()
  loc_ED3930: Set var_8C = Me.TopCtrl1
  loc_ED3936: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010004()
  loc_ED3950: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED396B: Call 0.Method_arg_100 (var_B8)
  loc_ED397D: Me.LblFormCaption.Width = var_B8
  loc_ED3985: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6D2D8
  'Data Table: 5082DC
  loc_E6D287: Set global_64 = Nothing
  loc_E6D299: Set global_68 = Nothing
  loc_E6D2AB: Set global_76 = Nothing
  loc_E6D2BD: Set global_72 = Nothing
  loc_E6D2CF: Set global_80 = Nothing
  loc_E6D2D6: Exit Sub
End Sub

Private Sub Form_Activate() 'E4F998
  'Data Table: 5082DC
  loc_E4F968: On Error Goto loc_E4F992
  loc_E4F96F: Set var_88 = Me.TopCtrl1
  loc_E4F975: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030000()
  loc_E4F98A: If (CLng(CInt()) = &H2D) Then
  loc_E4F98D:   Call TopCtrl1_UnknownEvent_15()
  loc_E4F992:   ' Referenced from: E4F968
  loc_E4F992: End If
  loc_E4F992: Proc_6_60_E62BC4()
  loc_E4F997: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28414
  'Data Table: 5082DC
  loc_E283EC: On Error Goto loc_E2840B
  loc_E28403: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2840B: ' Referenced from: E283EC
  loc_E2840B: Proc_6_60_E62BC4(Shift)
  loc_E28410: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F41A24
  'Data Table: 5082DC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4191B: Me.DGHelp.Visible = False
  loc_F4193A: If (Me.RecordCount > 0) Then
  loc_F41979:   Set var_B4 = Me.Txt
  loc_F4197F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F41987:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F419BA:   var_B0 = Me.Fields.Item("Name")
  loc_F419D9:   Set var_B4 = Me.Txt
  loc_F419DF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F419E7:   var_B8.Text = CStr(var_B0.Value)
  loc_F419FD: End If
  loc_F41A08: Set var_A8 = Me.Txt
  loc_F41A0E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F41A16: var_B0.SetFocus
  loc_F41A22: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6FAAC
  'Data Table: 5082DC
  loc_E6FA6A: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E6FA81: Set var_8C = Me.FGPoint
  loc_E6FA9D: Proc_6_138_106D6F8(Me.DGHelp, global_68, CInt(0))
  loc_E6FAAB: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '15985C0
  'Data Table: 5082DC
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_AC As String
  Dim var_B0 As Variant
  Dim var_CC As Variant
  Dim var_90 As Variant
  Dim var_88 As DataGrid
  Dim unk_5082F2 As Connection15
  loc_1597410: On Error Goto loc_159857A
  loc_159741D: Set var_88 = Me.Txt
  loc_1597423: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1597431: Proc_6_74_E226B0(var_8C)
  loc_159743D: Call Proc_188_57_1009A38(var_8C)
  loc_1597445: var_92 = Index
  loc_1597450: If (var_92 = CInt(0)) Then
  loc_1597462:   Me.Filter = 0
  loc_1597478:   Set var_88 = Me.Txt
  loc_159747E:   Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C, var_A8)
  loc_1597486:   "ItemGroup='" = var_8C.Tag
  loc_15974A7:   Set var_90 = Me.Txt
  loc_15974AD:   Call 0.Method_Txt_GotFocus0 (CInt(8), var_B0)
  loc_15974CF:   Me.Filter = CVar(var_92 & var_A8 & "' And RestCode='" & var_B0.Tag & "'")
  loc_1597506:   If (Me.RecordCount > 0) Then
  loc_1597514:     Set var_8C = Me.FGPoint
  loc_159752C:     Proc_6_137_1193554(Me.DGHelp, global_68)
  loc_159753A:   End If
  loc_159753D: Else
  loc_1597545:   If (var_92 = CInt(2)) Then
  loc_1597557:     Me.Filter = 0
  loc_159756D:     Set var_88 = Me.Txt
  loc_1597573:     Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C, var_A8)
  loc_159757B:     "RestCode='" = var_8C.Tag
  loc_1597595:     Me.Filter = CVar(Index & var_A8 & "'")
  loc_15975C2:     If (Me.RecordCount > 0) Then
  loc_15975D0:       Set var_8C = Me.FGPoint
  loc_15975E8:       Proc_6_137_1193554(Me.DGItemGroup, global_72, Index)
  loc_15975F6:     End If
  loc_1597644:     Set var_88 = Me.Txt
  loc_159764A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_1597652:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_159766A:     If (var_8C Or (var_A8 = vbNullString)) Then
  loc_159766D:       Exit Sub
  loc_159766E:     End If
  loc_159767B:     Set var_88 = Me.Txt
  loc_1597681:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1597689:     var_A8 = var_8C.Text
  loc_159769B:     var_A4 = "Name"
  loc_15976D6:     If CBool(CVar(var_A8) <> Me.Fields.Item(var_A4).Value) Then
  loc_15976DF:       Me.MoveFirst
  loc_1597702:       Set var_88 = Me.Txt
  loc_1597708:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_1597710:       0 = var_8C.Text
  loc_1597729:       Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_159773E:     End If
  loc_1597741:   Else
  loc_1597749:     If (var_92 = CInt(6)) Then
  loc_159775B:       Me.Filter = 0
  loc_1597771:       Set var_88 = Me.Txt
  loc_1597777:       Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_159777F:       var_A8 = var_8C.Tag
  loc_1597799:       Me.Filter = CVar("RestCode='" & var_A8 & "'")
  loc_15977C6:       If (Me.RecordCount > 0) Then
  loc_15977D4:         Set var_8C = Me.FGPoint
  loc_15977EC:         Proc_6_137_1193554(Me.DGItemCat, global_80)
  loc_15977FA:       End If
  loc_1597848:       Set var_88 = Me.Txt
  loc_159784E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_1597856:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_159786E:       If (Index Or (var_A8 = vbNullString)) Then
  loc_1597871:         Exit Sub
  loc_1597872:       End If
  loc_159787F:       Set var_88 = Me.Txt
  loc_1597885:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_159788D:       var_A8 = var_8C.Text
  loc_159789F:       var_A4 = "Name"
  loc_15978DA:       If CBool(CVar(var_A8) <> Me.Fields.Item(var_A4).Value) Then
  loc_15978E3:         Me.MoveFirst
  loc_1597906:         Set var_88 = Me.Txt
  loc_159790C:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_1597914:         0 = var_8C.Text
  loc_159792D:         Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_1597942:       End If
  loc_1597945:     Else
  loc_159794D:       If (var_92 = CInt(1)) Then
  loc_1597967:         If (Me.RecordCount > 0) Then
  loc_1597975:           Set var_8C = Me.FGPoint
  loc_159798D:           Proc_6_137_1193554(Me.DGUnit, global_84)
  loc_159799B:         End If
  loc_15979E9:         Set var_88 = Me.Txt
  loc_15979EF:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_15979F7:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1597A0F:         If (Index Or (var_A8 = vbNullString)) Then
  loc_1597A12:           Exit Sub
  loc_1597A13:         End If
  loc_1597A20:         Set var_88 = Me.Txt
  loc_1597A26:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1597A2E:         var_A8 = var_8C.Text
  loc_1597A40:         var_A4 = "Name"
  loc_1597A57:         var_B0 = Me.Fields.Item(var_A4)
  loc_1597A7B:         If CBool(CVar(var_A8) <> var_B0.Value) Then
  loc_1597A84:           Me.MoveFirst
  loc_1597AA7:           Set var_88 = Me.Txt
  loc_1597AAD:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_1597AB5:           0 = var_8C.Text
  loc_1597ACE:           Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_1597AE3:         End If
  loc_1597AE6:       Else
  loc_1597AEE:         If Not (var_92 = CInt(4)) Then
  loc_1597AF9:           If Not (var_92 = CInt(5)) Then
  loc_1597B04:             If (var_92 = CInt(&HC)) Then
  loc_1597B07:             End If
  loc_1597B07:           End If
  loc_1597B16:           Set var_88 = Me.Txt
  loc_1597B1C:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1597B24:           var_8C.SelStart = 0
  loc_1597B3D:           Set var_88 = Me.Txt
  loc_1597B43:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1597B5E:           Set var_90 = Me.Txt
  loc_1597B64:           Call 0.Method_Txt_GotFocus0 (Index, var_B0)
  loc_1597B6C:           var_B0.SelLength = Len(var_8C.Text)
  loc_1597B8C:           Set var_88 = Me.Txt
  loc_1597B92:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1597BAC:           Set var_90 = Me.Txt
  loc_1597BB2:           Call 0.Method_Txt_GotFocus0 (Index, var_B0)
  loc_1597BBA:           var_B0.Tag = var_8C.Text
  loc_1597BD0:         Else
  loc_1597BD8:           If (var_92 = CInt(7)) Then
  loc_1597BE8:             Set var_88 = Me.Txt
  loc_1597BEE:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1597C09:             Set var_90 = Me.Txt
  loc_1597C0F:             Call 0.Method_Txt_GotFocus0 (Index, var_B0)
  loc_1597C17:             var_B0.SelLength = Len(var_8C.Text)
  loc_1597C37:             Set var_88 = Me.Txt
  loc_1597C3D:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1597C45:             var_A8 = var_8C.Text
  loc_1597C57:             Set var_90 = Me.Txt
  loc_1597C5D:             Call 0.Method_Txt_GotFocus0 (Index, var_B0)
  loc_1597C65:             var_B0.Tag = var_A8
  loc_1597C7B:           Else
  loc_1597C83:             If (var_92 = CInt(3)) Then
  loc_1597C94:               Set var_88 = Me.Txt
  loc_1597C9A:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_1597CB9:               Me.DGRest.Left = CVar(var_8C.Left)
  loc_1597CD5:               Set var_90 = Me.Txt
  loc_1597CDB:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_B0)
  loc_1597CF6:               Set var_88 = Me.Txt
  loc_1597CFC:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_1597D14:               var_A4 = CVar(((var_8C.Top + var_B0.Height) + CDbl(&H1E))) 'Single
  loc_1597D23:               Me.DGRest.Top = CVar(var_8C.Left)
  loc_1597D44:               Me.Filter = 0
  loc_1597D55:               Me.Filter = "RestType='Kitchen'"
  loc_1597D71:               If (Me.RecordCount > 0) Then
  loc_1597D7F:                 Set var_8C = Me.FGPoint
  loc_1597D97:                 Proc_6_137_1193554(Me.DGRest, global_76)
  loc_1597DA5:               End If
  loc_1597DF3:               Set var_88 = Me.Txt
  loc_1597DF9:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_1597E01:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1597E19:               If (Index Or (var_A8 = vbNullString)) Then
  loc_1597E1C:                 Exit Sub
  loc_1597E1D:               End If
  loc_1597E2A:               Set var_88 = Me.Txt
  loc_1597E30:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1597E38:               var_A8 = var_8C.Text
  loc_1597E4A:               var_A4 = "Name"
  loc_1597E61:               var_B0 = Me.Fields.Item(var_A4)
  loc_1597E85:               If CBool(CVar(var_A8) <> var_B0.Value) Then
  loc_1597E8E:                 Me.MoveFirst
  loc_1597EB1:                 Set var_88 = Me.Txt
  loc_1597EB7:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_1597EBF:                 0 = var_8C.Text
  loc_1597ED8:                 Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_1597EED:               End If
  loc_1597F00:               Me.DGRest.Tag = CVar(CStr(Index))
  loc_1597F0E:             Else
  loc_1597F16:               If (var_92 = CInt(8)) Then
  loc_1597F27:                 Set var_88 = Me.Txt
  loc_1597F2D:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_1597F4C:                 Me.DGRest.Left = CVar(var_8C.Left)
  loc_1597F68:                 Set var_90 = Me.Txt
  loc_1597F6E:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_B0)
  loc_1597F89:                 Set var_88 = Me.Txt
  loc_1597F8F:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_1597FA7:                 var_A4 = CVar(((var_8C.Top + var_B0.Height) + CDbl(&H1E))) 'Single
  loc_1597FB6:                 Me.DGRest.Top = CVar(var_8C.Left)
  loc_1597FD7:                 Me.Filter = 0
  loc_1597FE8:                 Me.Filter = "RestType<>'Kitchen'"
  loc_1598004:                 If (Me.RecordCount > 0) Then
  loc_1598012:                   Set var_8C = Me.FGPoint
  loc_159802A:                   Proc_6_137_1193554(Me.DGRest, global_76)
  loc_1598038:                 End If
  loc_1598086:                 Set var_88 = Me.Txt
  loc_159808C:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8)
  loc_1598094:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15980AC:                 If (Index Or (var_A8 = vbNullString)) Then
  loc_15980AF:                   Exit Sub
  loc_15980B0:                 End If
  loc_15980BD:                 Set var_88 = Me.Txt
  loc_15980C3:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15980CB:                 var_A8 = var_8C.Text
  loc_15980DD:                 var_A4 = "Name"
  loc_15980F4:                 var_B0 = Me.Fields.Item(var_A4)
  loc_1598118:                 If CBool(CVar(var_A8) <> var_B0.Value) Then
  loc_1598121:                   Me.MoveFirst
  loc_1598144:                   Set var_88 = Me.Txt
  loc_159814A:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, "Name ='")
  loc_1598152:                   0 = var_8C.Text
  loc_159816B:                   Me.Find 1 & var_A8 & "'", var_A4, var_8C
  loc_1598180:                 End If
  loc_1598193:                 Me.DGRest.Tag = CVar(CStr(Index))
  loc_15981B1:                 Me.DGRest.Tag = CVar(CStr(Index))
  loc_15981BF:               Else
  loc_15981C7:                 If (var_92 = CInt(9)) Then
  loc_15981D7:                   Set var_88 = Me.Txt
  loc_15981DD:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15981F8:                   Set var_90 = Me.Txt
  loc_15981FE:                   Call 0.Method_Txt_GotFocus0 (Index, var_B0)
  loc_1598206:                   var_B0.SelLength = Len(var_8C.Text)
  loc_1598226:                   Set var_88 = Me.Txt
  loc_159822C:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1598246:                   Set var_90 = Me.Txt
  loc_159824C:                   Call 0.Method_Txt_GotFocus0 (Index, var_B0)
  loc_1598254:                   var_B0.Tag = var_8C.Text
  loc_159826A:                 Else
  loc_1598272:                   If (var_92 = CInt(&HA)) Then
  loc_1598283:                     Set var_88 = Me.Txt
  loc_1598289:                     Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_8C)
  loc_15982A8:                     Me.DGDispCode.Left = CVar(var_8C.Left)
  loc_15982C4:                     Set var_90 = Me.Txt
  loc_15982CA:                     Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_B0)
  loc_15982E5:                     Set var_88 = Me.Txt
  loc_15982EB:                     Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_8C)
  loc_1598303:                     var_A4 = CVar(((var_8C.Top + var_B0.Height) + CDbl(&H1E))) 'Single
  loc_1598312:                     Me.DGDispCode.Top = CVar(var_8C.Left)
  loc_1598332:                     Set var_88 = Me.Txt
  loc_1598338:                     Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_1598340:                     var_A8 = var_8C.Text
  loc_1598357:                     If (var_A8 = vbNullString) Then
  loc_1598365:                       Set var_88 = Me.Txt
  loc_159836B:                       Call 0.Method_Txt_GotFocus0 (CInt(8))
  loc_1598373:                       var_8C.SetFocus
  loc_159837F:                       Exit Sub
  loc_1598380:                     End If
  loc_159839E:                     Set var_88 = Me.Txt
  loc_15983A4:                     Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C, var_A8, "SELECT DispCode as COde,DispCode FROM ItemMast Where ItemType<>'Store' And DispCode<>9999 and RestCode ='")
  loc_15983AC:                     var_CC = var_8C.Tag
  loc_15983B5:                     var_AC = -1 & var_A8
  loc_15983C5:                     unk_5082F2.Execute 1 & var_A8 & "' ORDER BY DispCode", var_90, var_8C
  loc_15983FA:                     CVarUnk
  loc_15983FF:                     VerifyVarObj
  loc_1598405:                     Set var_88 = Me.DGDispCode
  loc_159840B:                     LateIdStAd
  loc_1598430:                     If (Me.RecordCount > 0) Then
  loc_159843E:                       Set var_8C = Me.FGPoint
  loc_1598456:                       Proc_6_137_1193554(Me.DGDispCode, Me.DGDispCode, Index)
  loc_1598464:                     End If
  loc_1598467:                   Else
  loc_159846F:                     If (var_92 = CInt(&H11)) Then
  loc_159847F:                       ReDim var_110(0 To 3)
  loc_1598496:                       var_110(0) = "Manufactured Item"
  loc_15984A5:                       var_110(1) = "Trade Item"
  loc_15984B4:                       var_110(2) = "Proprietary Item"
  loc_15984C3:                       var_110(3) = "Other"
  loc_15984DA:                       global_104 = Array(var_110)
  loc_15984E5:                       Set var_B0 = Me.ListView
  loc_1598500:                       Set var_8C = Me.Txt
  loc_159851A:                       Set global_120 = Proc_6_66_EFF8FC(var_B0, var_8C, Index, global_104, 4)
  loc_159853E:                       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A8, global_104)
  loc_1598546:                       var_8C = var_8C.Text
  loc_1598558:                       Set var_90 = Me.Txt
  loc_159855E:                       Call 0.Method_Txt_GotFocus0 (Index, var_B0, var_A8)
  loc_1598566:                       var_B0.Tag = Me.Txt
  loc_1598579:                     End If
  loc_1598579:                   End If
  loc_1598579:                 End If
  loc_1598579:               End If
  loc_1598579:             End If
  loc_1598579:           End If
  loc_1598579:         End If
  loc_1598579:       End If
  loc_1598579:     End If
  loc_1598579:   End If
  loc_1598579: End If
  loc_1598579: Exit Sub
  loc_159857A: ' Referenced from: 1597410
  loc_1598582: Set var_88 = Err()
  loc_1598588: Call 0.Method_arg_2C (var_A8)
  loc_15985A9: MsgBox(CVar(var_A8), &H40, "Information", var_F4, var_140)
  loc_15985BC: Exit Sub
  loc_15985BD: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13C230C
  'Data Table: 5082DC
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_90 As DataGrid
  Dim var_9C As DataGrid
  Dim var_A8 As DataGrid
  Dim var_B4 As DataGrid
  loc_13C19C2: If (CLng(Shift) = &H1B) Then
  loc_13C19C5:   Call Proc_188_57_1009A38()
  loc_13C19CA:   Exit Sub
  loc_13C19CB: End If
  loc_13C19CE: var_88 = KeyCode
  loc_13C19D9: If (var_88 = CInt(0)) Then
  loc_13C19FE:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_13C1A1E:     Set var_9C = Me.FGPoint
  loc_13C1A4C:     Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, KeyCode, global_68, Shift)
  loc_13C1A60:   End If
  loc_13C1AB9:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13C1ADF:     Proc_6_138_106D6F8(Me.DGHelp, global_68, KeyCode, Me.FGPoint, 0)
  loc_13C1AED:   End If
  loc_13C1AF0: Else
  loc_13C1AF8:   If (var_88 = CInt(2)) Then
  loc_13C1B23:     Set var_9C = Nothing
  loc_13C1B55:     Proc_6_69_134A198(Me.DGItemGroup, Me.Txt, CInt(2), global_72, Shift, 0, 1)
  loc_13C1BC4:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13C1BCB:       Set var_9C = Me.DGItemGroup
  loc_13C1BEA:       Proc_6_138_106D6F8(var_9C, global_72, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_13C1BF8:     End If
  loc_13C1BFB:   Else
  loc_13C1C03:     If (var_88 = CInt(6)) Then
  loc_13C1C5C:       Proc_6_69_134A198(Me.DGItemCat, Me.Txt, KeyCode, global_80, Shift, 0, 1, Nothing)
  loc_13C1CCB:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13C1CF1:         Proc_6_138_106D6F8(Me.DGItemCat, global_80, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13C1CFF:       End If
  loc_13C1D02:     Else
  loc_13C1D0A:       If Not (var_88 = CInt(8)) Then
  loc_13C1D15:         If (var_88 = CInt(3)) Then
  loc_13C1D18:         End If
  loc_13C1D6E:         Proc_6_69_134A198(Me.DGRest, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_13C1DDD:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13C1DEB:           Set var_94 = Me.FGPoint
  loc_13C1E03:           Proc_6_138_106D6F8(Me.DGRest, global_76, KeyCode, var_94, Me.FGPoint, 0)
  loc_13C1E11:         End If
  loc_13C1E14:       Else
  loc_13C1E1C:         If (var_88 = CInt(&HA)) Then
  loc_13C1E29:           Set var_90 = Me.Txt
  loc_13C1E2F:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, 0, 1)
  loc_13C1E4A:           Proc_6_41_FA0BA4(var_94, Shift, 4, 0)
  loc_13C1E78:           If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_13C1E98:             Set var_9C = Me.FGPoint
  loc_13C1EC6:             Proc_6_79_11ACE04(Me.DGDispCode, Me.Txt, KeyCode, global_92, Shift, 0)
  loc_13C1EDA:           End If
  loc_13C1F33:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13C1F59:             Proc_6_138_106D6F8(Me.DGDispCode, global_92, KeyCode, Me.FGPoint, 1)
  loc_13C1F67:           End If
  loc_13C1F6A:         Else
  loc_13C1F72:           If (var_88 = CInt(1)) Then
  loc_13C1F79:             Set var_A4 = Me.DGUnit
  loc_13C1F87:             Set var_AC = Me.FGPoint
  loc_13C1F92:             Set var_9C = var_AC
  loc_13C1FC0:             Proc_6_79_11ACE04(var_A4, Me.Txt, KeyCode, global_84, Shift, 0, 1)
  loc_13C1FDD:             var_8C = Me.RecordCount
  loc_13C202D:             If ((var_8C > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13C2034:               Set var_9C = Me.DGUnit
  loc_13C203B:               Set var_94 = Me.FGPoint
  loc_13C2053:               Proc_6_138_106D6F8(var_9C, global_84, KeyCode, var_94, var_9C, 0)
  loc_13C2061:             End If
  loc_13C2064:           Else
  loc_13C206C:             If (var_88 = CInt(&H11)) Then
  loc_13C2091:               Set var_90 = Me.Txt
  loc_13C2097:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, var_9C)
  loc_13C209F:               0 = var_94.Left
  loc_13C20B1:               Set var_9C = Me.Txt
  loc_13C20B7:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B8)
  loc_13C20BF:               var_9C = var_A4.Top
  loc_13C20D1:               Set var_A8 = Me.Txt
  loc_13C20D7:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_13C20DF:               0 = var_AC.Height
  loc_13C20F1:               Set var_B4 = Me.Txt
  loc_13C20F7:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_13C20FF:               var_C4 = var_C0.Width
  loc_13C2147:               Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13C216B:             End If
  loc_13C216B:           End If
  loc_13C216B:         End If
  loc_13C216B:       End If
  loc_13C216B:     End If
  loc_13C216B:   End If
  loc_13C216B: End If
  loc_13C2248: If ((((((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGDispCode.Visible) = 0)) And (CBool(Me.DGRest.Visible) = 0)) And (CBool(Me.DGItemGroup.Visible) = 0)) And (CBool(Me.DGItemCat.Visible) = 0)) And (CBool(Me.DGUnit.Visible) = 0)) And (CBool(Me.DGAppDate.Visible) = 0)) And (CBool(Me.ListView.Visible) = 0)) Then
  loc_13C2269:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HE))) Then
  loc_13C2276:     Call Txt_Validate(CInt(3))
  loc_13C227E:   Else
  loc_13C229C:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_13C22A5:       Call Txt_Validate(KeyCode)
  loc_13C22B0:       If (var_86 = &HFF) Then
  loc_13C22B3:         Exit Sub
  loc_13C22B4:       End If
  loc_13C22BA:       Proc_6_75_E527CC(Shift, arg_14, var_86, var_86, CInt(var_8C))
  loc_13C22C2:     Else
  loc_13C22D7:       If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13C22E0:         Proc_6_75_E527CC(Shift, arg_14, CInt((var_B8 + var_BC)))
  loc_13C22E8:       Else
  loc_13C22FB:         If ((CLng(Shift) = &H26) And (KeyCode <> CInt(8))) Then
  loc_13C2304:           Proc_6_76_E52838(Shift, arg_14, CInt(var_C4))
  loc_13C2309:         End If
  loc_13C2309:       End If
  loc_13C2309:     End If
  loc_13C2309:   End If
  loc_13C2309: End If
  loc_13C2309: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '112376C
  'Data Table: 5082DC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  loc_112340B: Proc_6_58_E054C0(arg_10)
  loc_1123416: Proc_6_133_E7EF78(var_94)
  loc_112341F: arg_10 = CInt(var_94)
  loc_1123428: var_96 = KeyAscii
  loc_1123433: If (var_96 = CInt(&HA)) Then
  loc_1123440:   Set var_9C = Me.Txt
  loc_1123446:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_1123461:   Proc_6_42_129A86C(var_A0, arg_10, 4)
  loc_1123470: Else
  loc_1123478:   If (var_96 = CInt(2)) Then
  loc_1123497:     If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_11234C4:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_72, arg_10, "Name")
  loc_11234F6:       Proc_6_138_106D6F8(Me.DGItemGroup, global_72, KeyAscii, Me.FGPoint)
  loc_1123504:     End If
  loc_1123507:   Else
  loc_112350F:     If Not (var_96 = CInt(8)) Then
  loc_112351A:       If (var_96 = CInt(3)) Then
  loc_112351D:       End If
  loc_1123539:       If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_1123566:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_1123598:         Proc_6_138_106D6F8(Me.DGRest, global_76, KeyAscii, Me.FGPoint, 0)
  loc_11235A6:       End If
  loc_11235A9:     Else
  loc_11235B1:       If (var_96 = CInt(6)) Then
  loc_11235D0:         If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_11235FD:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_1123617:           Set var_A0 = Me.FGPoint
  loc_112362F:           Proc_6_138_106D6F8(Me.DGItemCat, global_80, KeyAscii, var_A0, 0)
  loc_112363D:         End If
  loc_1123640:       Else
  loc_1123648:         If (var_96 = CInt(7)) Then
  loc_1123655:           Set var_9C = Me.Txt
  loc_112365B:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 0)
  loc_1123676:           Proc_6_42_129A86C(var_A0, arg_10, 8, 2)
  loc_1123685:         Else
  loc_112368D:           If Not (var_96 = CInt(4)) Then
  loc_1123698:             If Not (var_96 = CInt(5)) Then
  loc_11236A3:               If Not (var_96 = CInt(&HC)) Then
  loc_11236AE:                 If Not (var_96 = CInt(&HD)) Then
  loc_11236B9:                   If (var_96 = CInt(&HE)) Then
  loc_11236BC:                   End If
  loc_11236BC:                 End If
  loc_11236BC:               End If
  loc_11236BC:             End If
  loc_11236E5:             If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_11236F5:               Set var_9C = Me.Txt
  loc_11236FB:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_1123703:               var_A0.Text = 0
  loc_1123712:             Else
  loc_112373B:               If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_112374B:                 Set var_9C = Me.Txt
  loc_1123751:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "No")
  loc_1123759:                 var_A0.Text = arg_10
  loc_1123765:               End If
  loc_1123765:             End If
  loc_1123767:             arg_10 = 0
  loc_112376A:           End If
  loc_112376A:         End If
  loc_112376A:       End If
  loc_112376A:     End If
  loc_112376A:   End If
  loc_112376A: End If
  loc_112376A: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1067A0C
  'Data Table: 5082DC
  Dim var_86 As Integer
  Dim var_A4 As TextBox
  loc_1067787: var_86 = KeyCode
  loc_1067792: If (var_86 = CInt(0)) Then
  loc_10677B8:   Set var_A0 = Me.Txt
  loc_10677BE:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8)
  loc_10677C6:   (CBool(Me.DGHelp.Visible) = &HFF) = var_A4.Text
  loc_10677E3:   If (var_86 And (var_A8 <> vbNullString)) Then
  loc_10677F0:     var_A8 = "Name"
  loc_106780B:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_68)
  loc_106781E:     Set var_A4 = Me.DGHelp
  loc_1067825:     Set var_A0 = Me.FGPoint
  loc_106783D:     Proc_6_138_106D6F8(var_A4, global_68, KeyCode)
  loc_106784B:   End If
  loc_106784E: Else
  loc_1067856:   If (var_86 = CInt(&HA)) Then
  loc_106787C:     Set var_A0 = Me.Txt
  loc_1067882:     Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8, (CBool(Me.DGDispCode.Visible) = &HFF))
  loc_106788A:     var_A0 = var_A4.Text
  loc_10678A7:     If (Shift And (var_A8 <> vbNullString)) Then
  loc_10678B4:       var_A8 = "DispCode"
  loc_10678CF:       Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_92)
  loc_1067901:       Proc_6_138_106D6F8(Me.DGDispCode, global_92, KeyCode, Me.FGPoint)
  loc_106790F:     End If
  loc_1067912:   Else
  loc_106791A:     If (var_86 = CInt(1)) Then
  loc_1067939:       If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_1067946:         var_A8 = "Name"
  loc_1067961:         Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_84, Shift)
  loc_1067993:         Proc_6_138_106D6F8(Me.DGUnit, global_84, KeyCode, Me.FGPoint)
  loc_10679A1:       End If
  loc_10679A4:     Else
  loc_10679AC:       If (var_86 = CInt(&H11)) Then
  loc_10679CA:         If (Me.FrmList.Visible = &HFF) Then
  loc_10679F9:           Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift, global_120)
  loc_1067A09:         End If
  loc_1067A09:       End If
  loc_1067A09:     End If
  loc_1067A09:   End If
  loc_1067A09: End If
  loc_1067A09: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4FE0C
  'Data Table: 5082DC
  loc_E4FDEA: Set var_88 = Me.Txt
  loc_E4FDF0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4FDFE: Proc_6_73_E22704(var_8C)
  loc_E4FE0A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '150FA10
  'Data Table: 5082DC
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim var_B0 As String
  Dim arg_10 As Integer
  Dim var_98 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim unk_5082F2 As Connection15
  Dim var_124 As String
  loc_150EB04: On Error Goto loc_150F9C9
  loc_150EB0A: var_86 = Cancel
  loc_150EB15: If (var_86 = CInt(9)) Then
  loc_150EB22:   Set var_8C = Me.Txt
  loc_150EB28:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150EB48:   Set var_98 = Me.Txt
  loc_150EB4E:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_150EB56:   var_9C.Text = Proc_6_33_1512840(var_90)
  loc_150EB77:   Set var_8C = Me.Txt
  loc_150EB7D:   Call 0.Method_Txt_Validate0 (CInt(7), var_90)
  loc_150EB85:   var_A0 = var_90.Text
  loc_150EB9C:   If (var_A0 = vbNullString) Then
  loc_150EBC0:     MsgBox("First Enter Sale Rate", &H40, "Validation", var_100, var_120)
  loc_150EBD2:     arg_10 = &HFF
  loc_150EBE0:     Set var_8C = Me.Txt
  loc_150EBE6:     Call 0.Method_Txt_Validate0 (CInt(7), var_90)
  loc_150EBEE:     var_90.SetFocus
  loc_150EBFA:     Exit Sub
  loc_150EBFB:   End If
  loc_150EC09:   Set var_8C = Me.Txt
  loc_150EC0F:   Call 0.Method_Txt_Validate0 (CInt(7), var_90, var_A0)
  loc_150EC17:   arg_10 = var_90.Text
  loc_150EC32:   Set var_94 = Me.Txt
  loc_150EC38:   Call 0.Method_Txt_Validate0 (CInt(9), var_98, var_124)
  loc_150EC40:   (var_A0 <> vbNullString) = var_98.Text
  loc_150EC60:   If (var_86 And (var_124 = vbNullString)) Then
  loc_150EC84:     MsgBox("First Enter App. Date", &H40, "Validation", var_100, var_120)
  loc_150EC96:     arg_10 = &HFF
  loc_150EC99:     Exit Sub
  loc_150EC9A:   End If
  loc_150EC9D: Else
  loc_150ECA5:   If (var_86 = CInt(&HA)) Then
  loc_150ECAB:     Call Proc_188_56_12F18FC(var_126)
  loc_150ECB6:     If (var_126 = &HFF) Then
  loc_150ECBB:       arg_10 = &HFF
  loc_150ECBE:       Exit Sub
  loc_150ECBF:     End If
  loc_150ECC2:   Else
  loc_150ECCA:     If (var_86 = CInt(7)) Then
  loc_150ECD7:       Set var_8C = Me.Txt
  loc_150ECDD:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150ED17:       Set var_94 = Me.Txt
  loc_150ED1D:       Call 0.Method_Txt_Validate0 (Cancel, var_98, CStr(Format(CVar(var_90), "0.00")), 1)
  loc_150ED25:       var_98.Text = 1
  loc_150ED42:     Else
  loc_150ED4A:       If (var_86 = CInt(0)) Then
  loc_150ED50:         Call Proc_188_56_12F18FC(var_126, arg_10)
  loc_150ED5B:         If (var_126 = &HFF) Then
  loc_150ED60:           arg_10 = &HFF
  loc_150ED63:           Exit Sub
  loc_150ED64:         End If
  loc_150ED6F:         Set var_8C = Me.Txt
  loc_150ED75:         Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_150ED7D:         var_A0 = "Item Name"
  loc_150ED9E:         If (Proc_6_27_EA565C(var_90, var_A0) = 0) Then
  loc_150EDAC:           Set var_8C = Me.Txt
  loc_150EDB2:           Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_150EDBA:           var_90.SetFocus
  loc_150EDC8:           arg_10 = &HFF
  loc_150EDCB:           Exit Sub
  loc_150EDCC:         End If
  loc_150EDCF:       Else
  loc_150EDD7:         If (var_86 = CInt(2)) Then
  loc_150EE28:           Set var_8C = Me.Txt
  loc_150EE2E:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_150EE36:           arg_10 = var_90.Text
  loc_150EE4E:           If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_150EE51:             Exit Sub
  loc_150EE52:           End If
  loc_150EE8D:           Set var_94 = Me.Txt
  loc_150EE93:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150EE9B:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_150EEEC:           Set var_94 = Me.Txt
  loc_150EEF2:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150EEFA:           var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_150EF2A:           var_90 = Me.Fields.Item("Type")
  loc_150EF3B:           var_A0 = Proc_6_38_E68A98(CVar(var_90))
  loc_150EF41:           global_56 = var_A0
  loc_150EF51:         Else
  loc_150EF59:           If (var_86 = CInt(6)) Then
  loc_150EFAA:             Set var_8C = Me.Txt
  loc_150EFB0:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0)
  loc_150EFB8:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_150EFD0:             If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_150EFD3:               Exit Sub
  loc_150EFD4:             End If
  loc_150F00F:             Set var_94 = Me.Txt
  loc_150F015:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150F01D:             var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_150F050:             var_90 = Me.Fields.Item("Code")
  loc_150F06E:             Set var_94 = Me.Txt
  loc_150F074:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150F07C:             var_98.Tag = CStr(var_90.Value)
  loc_150F095:           Else
  loc_150F09D:             If (var_86 = CInt(3)) Then
  loc_150F0EE:               Set var_8C = Me.Txt
  loc_150F0F4:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150F114:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_150F124:                 Set var_8C = Me.Txt
  loc_150F12A:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150F132:                 var_90.Text = vbNullString
  loc_150F14B:                 Set var_8C = Me.Txt
  loc_150F151:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150F159:                 var_90.Tag = vbNullString
  loc_150F165:                 Exit Sub
  loc_150F166:               End If
  loc_150F1A1:               Set var_94 = Me.Txt
  loc_150F1A7:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150F1AF:               var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_150F1E2:               var_90 = Me.Fields.Item("Code")
  loc_150F200:               Set var_94 = Me.Txt
  loc_150F206:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150F20E:               var_98.Tag = CStr(var_90.Value)
  loc_150F227:             Else
  loc_150F22F:               If (var_86 = CInt(8)) Then
  loc_150F280:                 Set var_8C = Me.Txt
  loc_150F286:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150F2A6:                 If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_150F2AB:                   arg_10 = &HFF
  loc_150F2AE:                   Exit Sub
  loc_150F2AF:                 End If
  loc_150F2EA:                 Set var_94 = Me.Txt
  loc_150F2F0:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150F2F8:                 var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_150F349:                 Set var_94 = Me.Txt
  loc_150F34F:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150F357:                 var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_150F3AC:                 var_E0 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where Type IN ('Finish','Semi Finish') AND RESTCODE='" & Me.Fields.Item("Code").Value 
  loc_150F3C3:                 unk_5082F2.Execute CStr(var_E0 & "' ORDER BY Name"), var_120, -1
  loc_150F3FA:                 CVarUnk
  loc_150F3FF:                 VerifyVarObj
  loc_150F405:                 Set var_8C = Me.DGItemGroup
  loc_150F40B:                 LateIdStAd
  loc_150F458:                 var_E0 = "SELECT Code,Name,RestCode FROM ItemCatMast where (cattype is not NULL and cattype<>'')  AND RESTCODE='" & Me.Fields.Item("Code").Value 
  loc_150F46F:                 unk_5082F2.Execute CStr(var_E0 & "' ORDER BY Name"), var_120, -1
  loc_150F4A6:                 CVarUnk
  loc_150F4AB:                 VerifyVarObj
  loc_150F4B1:                 Set var_8C = Me.DGItemCat
  loc_150F4B7:                 LateIdStAd
  loc_150F4D7:                 var_8C = Me.Fields
  loc_150F4DF:                 var_90 = var_8C.Item("DiscApp")
  loc_150F50E:                 If (Proc_6_38_E68A98(CVar(var_90), var_8C, var_94, var_94) = "Y") Then
  loc_150F524:                   Call 0.Method_Txt_Validate0 (CInt(4), var_90, &HFF, Me.Txt)
  loc_150F52C:                   var_90.Enabled = var_94
  loc_150F546:                   Set var_8C = Me.Txt
  loc_150F54C:                   Call 0.Method_Txt_Validate0 (CInt(4), var_90, "Yes")
  loc_150F554:                   var_90.Text = var_94
  loc_150F563:                 Else
  loc_150F570:                   Set var_8C = Me.Txt
  loc_150F576:                   Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_150F57E:                   var_90.Enabled = False
  loc_150F598:                   Set var_8C = Me.Txt
  loc_150F59E:                   Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_150F5A6:                   var_90.Text = "No"
  loc_150F5B2:                 End If
  loc_150F5B5:                 var_B0 = "RateInclTax"
  loc_150F5CC:                 var_90 = Me.Fields.Item(var_B0)
  loc_150F5DD:                 var_A0 = Proc_6_38_E68A98(CVar(var_90))
  loc_150F5EE:                 If (var_A0 = "Y") Then
  loc_150F5FE:                   Set var_8C = Me.Txt
  loc_150F604:                   Call 0.Method_Txt_Validate0 (CInt(&HD), var_90)
  loc_150F60C:                   var_90.Enabled = False
  loc_150F626:                   Set var_8C = Me.Txt
  loc_150F62C:                   Call 0.Method_Txt_Validate0 (CInt(&HD), var_90)
  loc_150F634:                   var_90.Text = "Yes"
  loc_150F643:                 Else
  loc_150F650:                   Set var_8C = Me.Txt
  loc_150F656:                   Call 0.Method_Txt_Validate0 (CInt(&HD), var_90)
  loc_150F65E:                   var_90.Enabled = False
  loc_150F678:                   Set var_8C = Me.Txt
  loc_150F67E:                   Call 0.Method_Txt_Validate0 (CInt(&HD), var_90)
  loc_150F686:                   var_90.Text = "No"
  loc_150F692:                 End If
  loc_150F695:               Else
  loc_150F69D:                 If (var_86 = CInt(1)) Then
  loc_150F6BE:                   Set var_8C = Me.Txt
  loc_150F6C4:                   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, "Name like '")
  loc_150F6CC:                   0 = var_90.Text
  loc_150F6E5:                   Me.Find 1 & var_A0 & "*'", var_B0, arg_10
  loc_150F748:                   Set var_8C = Me.Txt
  loc_150F74E:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150F76E:                   If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_150F77E:                     Set var_8C = Me.Txt
  loc_150F784:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150F78C:                     var_90.Text = vbNullString
  loc_150F7A5:                     Set var_8C = Me.Txt
  loc_150F7AB:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150F7B3:                     var_90.Tag = vbNullString
  loc_150F7BF:                     Exit Sub
  loc_150F7C0:                   End If
  loc_150F7D7:                   If (Me.AbsolutePosition > 0) Then
  loc_150F815:                     Set var_94 = Me.Txt
  loc_150F81B:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150F823:                     var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_150F856:                     var_90 = Me.Fields.Item("Code")
  loc_150F874:                     Set var_94 = Me.Txt
  loc_150F87A:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150F882:                     var_98.Tag = CStr(var_90.Value)
  loc_150F898:                   End If
  loc_150F89B:                 Else
  loc_150F8A3:                   If Not (var_86 = CInt(4)) Then
  loc_150F8AE:                     If Not (var_86 = CInt(5)) Then
  loc_150F8B9:                       If Not (var_86 = CInt(&HC)) Then
  loc_150F8C4:                         If (var_86 = CInt(&HE)) Then
  loc_150F8C7:                         End If
  loc_150F8C7:                       End If
  loc_150F8C7:                     End If
  loc_150F8D1:                     Set var_8C = Me.Txt
  loc_150F8D7:                     Call 0.Method_Txt_Validate0 (Cancel)
  loc_150F8F6:                     var_100 = Ucase(Left(CVar(var_90), 1))
  loc_150F912:                     If (var_100 = "Y") Then
  loc_150F922:                       Set var_8C = Me.Txt
  loc_150F928:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150F930:                       var_90.Text = "Yes"
  loc_150F93F:                     Else
  loc_150F94C:                       Set var_8C = Me.Txt
  loc_150F952:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_150F95A:                       var_90.Text = "No"
  loc_150F966:                     End If
  loc_150F969:                   Else
  loc_150F971:                     If (var_86 = CInt(&H11)) Then
  loc_150F992:                       var_A0 = Me.ListView.SelectedItem.Text
  loc_150F9A4:                       Set var_94 = Me.Txt
  loc_150F9AA:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_150F9B2:                       var_98.Text = var_A0
  loc_150F9C8:                     End If
  loc_150F9C8:                   End If
  loc_150F9C8:                 End If
  loc_150F9C8:               End If
  loc_150F9C8:             End If
  loc_150F9C8:           End If
  loc_150F9C8:         End If
  loc_150F9C8:       End If
  loc_150F9C8:     End If
  loc_150F9C8:   End If
  loc_150F9C8: End If
  loc_150F9C8: Exit Sub
  loc_150F9C9: ' Referenced from: 150EB04
  loc_150F9D1: Set var_8C = Err()
  loc_150F9D7: Call 0.Method_arg_2C (var_A0)
  loc_150F9F8: MsgBox(CVar(var_A0), &H40, "Information", var_100, var_120)
  loc_150FA0B: Exit Sub
  loc_150FA0C: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_9 'F47D24
  'Data Table: 5082DC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F47C1B: Me.DGItemGroup.Visible = False
  loc_F47C3A: If (Me.RecordCount > 0) Then
  loc_F47C79:   Set var_B4 = Me.Txt
  loc_F47C7F:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F47C87:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F47CBA:   var_B0 = Me.Fields.Item("Name")
  loc_F47CD9:   Set var_B4 = Me.Txt
  loc_F47CDF:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F47CE7:   var_B8.Text = CStr(var_B0.Value)
  loc_F47CFD: End If
  loc_F47D08: Set var_A8 = Me.Txt
  loc_F47D0E: Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2))
  loc_F47D16: var_B0.SetFocus
  loc_F47D22: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_1F 'E6F7C8
  'Data Table: 5082DC
  loc_E6F786: Proc_6_153_E91194(Me.DGItemGroup, arg_14)
  loc_E6F79D: Set var_8C = Me.FGPoint
  loc_E6F7B9: Proc_6_138_106D6F8(Me.DGItemGroup, global_72, CInt(2))
  loc_E6F7C7: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_9 'F469E4
  'Data Table: 5082DC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F468DB: Me.DGUnit.Visible = False
  loc_F468FA: If (Me.RecordCount > 0) Then
  loc_F46939:   Set var_B4 = Me.Txt
  loc_F4693F:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1), var_B8)
  loc_F46947:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4697A:   var_B0 = Me.Fields.Item("Name")
  loc_F46999:   Set var_B4 = Me.Txt
  loc_F4699F:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1), var_B8)
  loc_F469A7:   var_B8.Text = CStr(var_B0.Value)
  loc_F469BD: End If
  loc_F469C8: Set var_A8 = Me.Txt
  loc_F469CE: Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1))
  loc_F469D6: var_B0.SetFocus
  loc_F469E2: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_1F 'E6F6A0
  'Data Table: 5082DC
  loc_E6F65E: Proc_6_153_E91194(Me.DGUnit, arg_14)
  loc_E6F675: Set var_8C = Me.FGPoint
  loc_E6F691: Proc_6_138_106D6F8(Me.DGUnit, global_84, CInt(1))
  loc_E6F69F: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_9 'F43F44
  'Data Table: 5082DC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F43E3B: Me.DGItemCat.Visible = False
  loc_F43E5A: If (Me.RecordCount > 0) Then
  loc_F43E99:   Set var_B4 = Me.Txt
  loc_F43E9F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6), var_B8)
  loc_F43EA7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F43EDA:   var_B0 = Me.Fields.Item("Name")
  loc_F43EF9:   Set var_B4 = Me.Txt
  loc_F43EFF:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6), var_B8)
  loc_F43F07:   var_B8.Text = CStr(var_B0.Value)
  loc_F43F1D: End If
  loc_F43F28: Set var_A8 = Me.Txt
  loc_F43F2E: Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6))
  loc_F43F36: var_B0.SetFocus
  loc_F43F42: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_1F 'E6F984
  'Data Table: 5082DC
  loc_E6F942: Proc_6_153_E91194(Me.DGItemCat, arg_14)
  loc_E6F959: Set var_8C = Me.FGPoint
  loc_E6F975: Proc_6_138_106D6F8(Me.DGItemCat, global_80, CInt(6))
  loc_E6F983: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11D7950
  'Data Table: 5082DC
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_88 As MSFlexGrid
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim var_11C As String
  Dim Me As Recordset15
  Dim var_118 As String
  Dim arg_58FF As Integer
  loc_11D74FA: Set var_88 = Me.TxtGrid
  loc_11D7500: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_11D750E: Proc_6_74_E226B0(var_8C)
  loc_11D751A: Call Proc_188_57_1009A38(var_8C)
  loc_11D752D: Set var_88 = Me.TxtGrid
  loc_11D7533: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_11D753B: var_8C.MaxLength = 0
  loc_11D7553: If (Index = 0) Then
  loc_11D756C:   Me.FGrid.CellBackColor = CVar(CLng(global_128))
  loc_11D7587:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D7590:   Set var_8C = Me.FGrid
  loc_11D75C6:   Set var_108 = Me.TxtGrid
  loc_11D75CC:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_11D75D4:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_11D7605:   var_114 = CLng(Me.FGrid.Col)
  loc_11D7615:   If (var_114 = CLng(2)) Then
  loc_11D7626:     Set var_88 = Me.TxtGrid
  loc_11D762C:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, &H32)
  loc_11D7634:     var_8C.MaxLength = var_114
  loc_11D765C:     Me.Recordset15.CursorLocation = 3
  loc_11D766F:     Set var_88 = Me.Txt
  loc_11D7675:     Call 0.Method_TxtGrid_GotFocus0 (CInt(8), var_8C, var_118)
  loc_11D767D:     var_A4 = var_8C.Tag
  loc_11D76A0:     var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_11D76A7:     var_11C = var_110 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.ItemType<>'Store' And I.DispCode<>9999 AND D.Code='"
  loc_11D76BF:     Me.Open CVar(var_11C & var_118 & "' And IsNull(ItemType,'')<>'Combo' Order by I.Name  "), CVar(MemVar_1F92044), 3
  loc_11D76E2:     CVarUnk
  loc_11D76E7:     VerifyVarObj
  loc_11D76ED:     Set var_88 = Me.DGItem
  loc_11D76F3:     LateIdStAd
  loc_11D770C:     Set var_8C = Me.FGPoint
  loc_11D7724:     Proc_6_137_1193554(Me.DGItem, New, Index, var_8C, Me.DGItem)
  loc_11D7743:     Set var_88 = Me.Txt
  loc_11D7749:     Call 0.Method_TxtGrid_GotFocus0 (CInt(8), var_8C, var_110, "OutletCode='")
  loc_11D7751:     global_140 = var_8C.Tag
  loc_11D776B:     Me.Filter = CVar(1 & var_110 & "'")
  loc_11D7794:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11D779C:     var_E4 = CVar(CLng(1)) 'Long
  loc_11D77E0:     Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_11D7817:     var_E4 = CVar(CLng(1)) 'Long
  loc_11D7826:     var_D4 = Me.FGrid.TextMatrix)
  loc_11D7846:     global_96 = CStr(Trim(CVar(CStr(var_D4))))
  loc_11D7876:     If (Me.RecordCount > 0) Then
  loc_11D7884:       Set var_8C = Me.FGPoint
  loc_11D789C:       Proc_6_137_1193554(Me.DGItem, global_140, Index, var_8C, var_E4, CVar(CLng(Me.FGrid.Row)))
  loc_11D78AA:     End If
  loc_11D78EB:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11D78EE:       Exit Sub
  loc_11D78EF:     End If
  loc_11D78F8:     CVarUnk
  loc_11D78FD:     VerifyVarObj
  loc_11D7903:     Set var_88 = Me.DGItem
  loc_11D7909:     LateIdStAd
  loc_11D791A:   Else
  loc_11D7921:     If (var_114 = CLng(3)) Then
  loc_11D7938:       Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, 8, Me.TxtGrid, global_140, var_130)
  loc_11D7940:       var_8C.MaxLength = var_D4
  loc_11D794C:     End If
  loc_11D794C:   End If
  loc_11D794C: End If
  loc_11D794C: Exit Sub
  loc_11D794D: arg_58FF = var_E4
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10E2370
  'Data Table: 5082DC
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  loc_10E2067: var_86 = Shift
  loc_10E2076: If (KeyCode = 0) Then
  loc_10E2083:   If (CLng(Shift) = &H1B) Then
  loc_10E2093:     Set var_8C = Me.TxtGrid
  loc_10E2099:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_10E20A1:     var_88 = var_90.Tag
  loc_10E20B3:     Set var_98 = Me.TxtGrid
  loc_10E20B9:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_10E20C1:     var_9C.Text = var_94
  loc_10E20DD:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10E20E2:     Call Proc_188_57_1009A38(arg_14)
  loc_10E20EB:     Set var_8C = Me.FGrid
  loc_10E2108:     Set var_8C = Me.TxtGrid
  loc_10E210E:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_10E2116:     var_90.Visible = FGrid.DispID_8001
  loc_10E2122:     Exit Sub
  loc_10E2123:   End If
  loc_10E2136:   var_B0 = CLng(Me.FGrid.Col)
  loc_10E2146:   If (var_B0 = CLng(2)) Then
  loc_10E2166:     Set var_9C = Me.FGPoint
  loc_10E2171:     Set var_98 = Nothing
  loc_10E219F:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_140, Shift, &HFF)
  loc_10E220E:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_10E2215:       Set var_98 = Me.DGItem
  loc_10E2234:       Proc_6_138_106D6F8(var_98, global_140, KeyCode, Me.FGPoint, 1)
  loc_10E2242:     End If
  loc_10E224C:     If (CLng(Shift) = &HD) Then
  loc_10E2255:       Call Proc_188_61_1228308(KeyCode, var_B2, var_98, var_9C)
  loc_10E2260:       If (var_B2 = &HFF) Then
  loc_10E22A6:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_136, 4)
  loc_10E22B6:       End If
  loc_10E22B6:     End If
  loc_10E22B9:   Else
  loc_10E22C0:     If (var_B0 = CLng(3)) Then
  loc_10E2303:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_136 = &HFF))) Then
  loc_10E230C:         Call Proc_188_61_1228308(KeyCode, var_B2, 0, 0)
  loc_10E2317:         If (var_B2 = &HFF) Then
  loc_10E235D:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_136, 4, 0)
  loc_10E236D:         End If
  loc_10E236D:       End If
  loc_10E236D:     End If
  loc_10E236D:   End If
  loc_10E236D: End If
  loc_10E236D: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F2CCC8
  'Data Table: 5082DC
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F2CBBF: Proc_6_58_E054C0(arg_10)
  loc_F2CBD0: If (KeyAscii = 0) Then
  loc_F2CBE6:   var_A0 = CLng(Me.FGrid.Col)
  loc_F2CBF6:   If (var_A0 = CLng(2)) Then
  loc_F2CC15:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F2CC27:       var_A4 = "Name"
  loc_F2CC42:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_140, arg_10)
  loc_F2CC5C:       Set var_AC = Me.FGPoint
  loc_F2CC74:       Proc_6_138_106D6F8(Me.DGItem, global_140, KeyAscii, var_AC)
  loc_F2CC82:     End If
  loc_F2CC85:   Else
  loc_F2CC8C:     If (var_A0 = CLng(3)) Then
  loc_F2CC99:       Set var_8C = Me.TxtGrid
  loc_F2CC9F:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F2CCBA:       Proc_6_42_129A86C(var_AC, arg_10, 4, 3)
  loc_F2CCC6:     End If
  loc_F2CCC6:   End If
  loc_F2CCC6: End If
  loc_F2CCC6: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FAC5B0
  'Data Table: 5082DC
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  loc_FAC438: On Error Goto loc_FAC5A8
  loc_FAC447: If (KeyCode = 0) Then
  loc_FAC45D:   var_A0 = CLng(Me.FGrid.Col)
  loc_FAC46D:   If (var_A0 = CLng(2)) Then
  loc_FAC493:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_FAC4A4:       Call TxtGrid_KeyDown(KeyCode, global_100)
  loc_FAC4AD:       Set var_AC = Me.TxtGrid
  loc_FAC4B8:       var_A8 = "Name"
  loc_FAC4D3:       Proc_6_89_146F1AC(var_AC, KeyCode, global_140, Shift, var_A8)
  loc_FAC4E2:     End If
  loc_FAC4E5:   Else
  loc_FAC4EC:     If (var_A0 = CLng(3)) Then
  loc_FAC4FC:       Set var_8C = Me.TxtGrid
  loc_FAC502:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, &HFF)
  loc_FAC50A:       0 = var_AC.Text
  loc_FAC52D:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FAC545:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FAC572:       var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_FAC57A:       Set var_178 = Me.FGrid
  loc_FAC580:       LateIdCallSt
  loc_FAC5A7:     End If
  loc_FAC5A7:   End If
  loc_FAC5A7: End If
  loc_FAC5A7: Exit Sub
  loc_FAC5A8: ' Referenced from: FAC438
  loc_FAC5A8: Proc_6_60_E62BC4(var_178, var_164, 1, 1, var_144)
  loc_FAC5AD: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23B08
  'Data Table: 5082DC
  Dim arg_10 As Integer
  loc_E23AF0: If (Cancel = 0) Then
  loc_E23AF9:   Call Proc_188_61_1228308(Cancel, var_88)
  loc_E23B02:   arg_10 = Not(var_88)
  loc_E23B05: End If
  loc_E23B05: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F9D8DC
  'Data Table: 5082DC
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_F9D77F: Me.DGRest.Visible = False
  loc_F9D79E: If (Me.RecordCount > 0) Then
  loc_F9D7F0:   Set var_CC = Me.Txt
  loc_F9D7F6:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)), var_D0)
  loc_F9D7FE:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F9D856:   Set var_B4 = Me.DGRest
  loc_F9D86D:   Set var_CC = Me.Txt
  loc_F9D873:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_F9D87B:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F9D89B: End If
  loc_F9D8B9: Set var_B0 = Me.Txt
  loc_F9D8BF: Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)))
  loc_F9D8C7: var_B4.SetFocus
  loc_F9D8DB: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E9CD08
  'Data Table: 5082DC
  loc_E9CCA6: Proc_6_153_E91194(Me.DGRest, arg_14)
  loc_E9CCD0: Set var_A8 = Me.FGPoint
  loc_E9CCF1: Proc_6_138_106D6F8(Me.DGRest, global_76, CInt(CStr(Me.DGRest.Tag)))
  loc_E9CD07: Exit Sub
End Sub

Public Function global_52Get() '509950
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '50995F
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC3E04
  'Data Table: 5082DC
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC3D7A: On Error Goto loc_EC3DBF
  loc_EC3D83: Me.MoveFirst
  loc_EC3D9D: var_8C = "code='" & MyValue
  loc_EC3DAD: Me.Find var_8C & "'", 0, 1
  loc_EC3DB9: Call Proc_188_55_15487A0(var_A0)
  loc_EC3DBE: Exit Sub
  loc_EC3DBF: ' Referenced from: EC3D7A
  loc_EC3DC7: Set var_A4 = Err()
  loc_EC3DCD: Call 0.Method_arg_2C (var_8C)
  loc_EC3DEE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC3E01: Exit Sub
  loc_EC3E02: Exit Sub
End Sub

Public Sub Proc_188_53_E7BD64(arg_C) 'E7BD64
  'Data Table: 5082DC
  Dim var_98 As TextBox
  loc_E7BD12: Set var_8C = Me.Txt
  loc_E7BD18: Call 0.Method_Proc_188_53_E7BD64C (var_8E, var_86)
  loc_E7BD28: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7BD3E:   Set var_8C = Me.Txt
  loc_E7BD44:   Call 0.Method_Proc_188_53_E7BD640 (CInt(var_86), var_98)
  loc_E7BD4C:   var_98.Enabled = arg_C
  loc_E7BD5B: Next var_92 'Byte
  loc_E7BD61: Exit Sub
End Sub

Public Sub Proc_188_54_FB61B8
  'Data Table: 5082DC
  Dim var_94 As TextBox
  Dim var_90 As MSFlexGrid
  loc_FB6022: Set var_90 = Me.Txt
  loc_FB6028: Call 0.Method_Proc_188_54_FB61B80 (CInt(1), var_94)
  loc_FB6038: var_8C = var_94.Text
  loc_FB6050: Set var_90 = Me.Txt
  loc_FB6056: Call 0.Method_Proc_188_54_FB61B8C (var_9A, var_86)
  loc_FB6066: For var_9E =  To CByte((var_9A - 1)): CByte(0) = var_9E 'Byte
  loc_FB607C:   Set var_90 = Me.Txt
  loc_FB6082:   Call 0.Method_Proc_188_54_FB61B80 (CInt(var_86), var_94)
  loc_FB608A:   var_94.Text = vbNullString
  loc_FB6099: Next var_9E 'Byte
  loc_FB60B2: Me.FGrid.Rows = 1
  loc_FB60E0: Set var_94 = Me.FGrid
  loc_FB610D: Me.FGrid.FixedRows = 1
  loc_FB6123: Set var_90 = Me.Txt
  loc_FB6129: Call 0.Method_Proc_188_54_FB61B80 (CInt(4), var_94, "No")
  loc_FB6131: var_94.Text = FGrid.DispID_10000
  loc_FB614B: Set var_90 = Me.Txt
  loc_FB6151: Call 0.Method_Proc_188_54_FB61B80 (CInt(5), var_94, "No")
  loc_FB6159: var_94.Text = CVar(CStr(Proc_6_127_F24F80(Me.FGrid)))
  loc_FB6173: Set var_90 = Me.Txt
  loc_FB6179: Call 0.Method_Proc_188_54_FB61B80 (CInt(1), var_94)
  loc_FB6181: var_94.Text = var_8C
  loc_FB619B: Set var_90 = Me.Txt
  loc_FB61A1: Call 0.Method_Proc_188_54_FB61B80 (CInt(&HE), var_94)
  loc_FB61A9: var_94.Text = "Yes"
  loc_FB61B5: Exit Sub
End Sub

Public Sub Proc_188_55_15487A0
  'Data Table: 5082DC
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_C0 As String
  Dim var_C8 As Variant
  Dim var_BC As Variant
  Dim var_D8 As Variant
  Dim var_C4 As Fields15
  Dim var_E8 As Variant
  Dim var_10C As Variant
  Dim var_FC As Variant
  Dim var_154 As TextBox
  Dim var_11C As Variant
  Dim var_14C As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim unk_5082F2 As Connection15
  Dim var_1E4 As Recordset15
  Dim var_150 As Fields15
  Dim var_1E0 As Variant
  Dim var_88 As Recordset15
  Dim var_13C As Variant
  Dim var_190 As Variant
  Dim var_8C As Recordset15
  Dim var_8E As Integer
  loc_15477BC: On Error Goto loc_154879A
  loc_15477C5: Proc_183_45_E5C118(global_64)
  loc_15477E1: If (Me.RecordCount <= 0) Then
  loc_15477E4:   Call Proc_188_54_FB61B8()
  loc_15477EC: Else
  loc_1547820:   global_56 = CStr(Me.Fields.Item("Type").Value)
  loc_1547865:   global_132 = CStr(Me.Fields.Item("Name").Value)
  loc_15478B2:   Set var_C4 = Me.Txt
  loc_15478B8:   Call 0.Method_Proc_188_55_15487A00 (CInt(0), var_C8)
  loc_15478C0:   var_C8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1547912:   Set var_C4 = Me.Txt
  loc_1547918:   Call 0.Method_Proc_188_55_15487A00 (CInt(&HA), var_C8)
  loc_1547920:   var_C8.Text = CStr(Me.Fields.Item("DispCode").Value)
  loc_1547972:   Set var_C4 = Me.Txt
  loc_1547978:   Call 0.Method_Proc_188_55_15487A00 (CInt(0), var_C8)
  loc_1547980:   var_C8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15479CF:   Set var_C4 = Me.Txt
  loc_15479D5:   Call 0.Method_Proc_188_55_15487A00 (CInt(1), var_C8)
  loc_15479DD:   var_C8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")))
  loc_1547A2A:   Set var_C4 = Me.Txt
  loc_1547A30:   Call 0.Method_Proc_188_55_15487A00 (CInt(2), var_C8)
  loc_1547A38:   var_C8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemGrpName")))
  loc_1547A85:   Set var_C4 = Me.Txt
  loc_1547A8B:   Call 0.Method_Proc_188_55_15487A00 (CInt(2), var_C8)
  loc_1547A93:   var_C8.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemGroup")))
  loc_1547AE0:   Set var_C4 = Me.Txt
  loc_1547AE6:   Call 0.Method_Proc_188_55_15487A00 (CInt(6), var_C8)
  loc_1547AEE:   var_C8.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemCatCode")))
  loc_1547B3B:   Set var_C4 = Me.Txt
  loc_1547B41:   Call 0.Method_Proc_188_55_15487A00 (CInt(6), var_C8)
  loc_1547B49:   var_C8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemCategory")))
  loc_1547B96:   Set var_C4 = Me.Txt
  loc_1547B9C:   Call 0.Method_Proc_188_55_15487A00 (CInt(4), var_C8)
  loc_1547BA4:   var_C8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Disc")))
  loc_1547BF1:   Set var_C4 = Me.Txt
  loc_1547BF7:   Call 0.Method_Proc_188_55_15487A00 (CInt(&HC), var_C8)
  loc_1547BFF:   var_C8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrApp")))
  loc_1547C5B:   var_C8 = Me.Fields.Item("RateIncTax")
  loc_1547CA3:   var_14C = IIf(((Proc_6_38_E68A98(CVar(Me.Fields.Item("RateIncTax"))) = vbNullString) Or (Proc_6_38_E68A98(CVar(var_C8)) = "N")), "No", "Yes")
  loc_1547CBA:   Set var_150 = Me.Txt
  loc_1547CC0:   Call 0.Method_Proc_188_55_15487A00 (CInt(&HD), var_154)
  loc_1547CC8:   var_154.Text = CStr(var_14C)
  loc_1547D2D:   Set var_C4 = Me.Txt
  loc_1547D33:   Call 0.Method_Proc_188_55_15487A00 (CInt(5), var_C8)
  loc_1547D3B:   var_C8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("REdit")))
  loc_1547D88:   Set var_C4 = Me.Txt
  loc_1547D8E:   Call 0.Method_Proc_188_55_15487A00 (CInt(8), var_C8)
  loc_1547D96:   var_C8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestName")))
  loc_1547DE3:   Set var_C4 = Me.Txt
  loc_1547DE9:   Call 0.Method_Proc_188_55_15487A00 (CInt(8), var_C8)
  loc_1547DF1:   var_C8.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestCode")))
  loc_1547E3E:   Set var_C4 = Me.Txt
  loc_1547E44:   Call 0.Method_Proc_188_55_15487A00 (CInt(3), var_C8)
  loc_1547E4C:   var_C8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("KitchenName")))
  loc_1547E99:   Set var_C4 = Me.Txt
  loc_1547E9F:   Call 0.Method_Proc_188_55_15487A00 (CInt(3), var_C8)
  loc_1547EA7:   var_C8.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")))
  loc_1547EF4:   Set var_C4 = Me.Txt
  loc_1547EFA:   Call 0.Method_Proc_188_55_15487A00 (CInt(&H11), var_C8)
  loc_1547F02:   var_C8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("NType")))
  loc_1547F4F:   Set var_C4 = Me.Txt
  loc_1547F55:   Call 0.Method_Proc_188_55_15487A00 (CInt(&HE), var_C8)
  loc_1547F5D:   var_C8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ActiveYN")))
  loc_1547F93:   var_BC = CVar(Me.Fields.Item("DiscApp")) 'Address
  loc_1547FA2:   global_124 = Proc_6_38_E68A98(var_BC)
  loc_1547FCC:   Proc_6_7_F25D88(var_BC, MemVar_1F920EC, "Select Rate,Appdate From ItemRate Where AppDate<=")
  loc_1548006:   var_13C = Me.Fields.Item("Code").Value
  loc_1548030:   var_C4 = Me.Fields
  loc_1548051:   var_1C0 = var_1E0 & var_BC & " And ItemCode='" & var_13C & "' And RestCode='" & var_C4.Item("RestCode").Value & "' Order By AppDate Desc " 
  loc_154805F:   unk_5082F2.Execute CStr(var_1C0), -1, var_150
  loc_154806A:   Set var_88 = var_150
  loc_15480EA:   unk_5082F2.Execute CStr("Select U_Name,U_AE,U_EntDt From itemmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_13C, -1
  loc_15480F5:   Set var_8C = var_C4
  loc_1548149:   var_C4 = var_1E4.Fields
  loc_15481B2:   var_190 = IIf((Proc_6_38_E68A98(CVar(var_1E4.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_C4.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_15481F7:   Me.LblUser.Caption = CStr(var_C4 & CVar(Proc_6_38_E68A98(CVar(var_1E4.Fields.Item("U_Name")), var_190)))
  loc_1548271:   var_C8 = var_1E4.Fields.Item("U_AE")
  loc_15482D2:   var_190 = IIf((Proc_6_38_E68A98(CVar(var_1E4.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_C8)) = "E"), "Last Update :   ", "entdt :   "))
  loc_15482E9:   var_150 = var_1E4.Fields
  loc_15482F9:   var_1A0 = CVar(var_150.Item("U_EntDt")) 'Address
  loc_1548317:   Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E68A98(var_1A0)))
  loc_1548363:   If (var_88.RecordCount > 0) Then
  loc_15483B8:     Set var_C4 = Me.Txt
  loc_15483BE:     Call 0.Method_Proc_188_55_15487A00 (CInt(7), var_C8, CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00")))
  loc_15483C6:     var_C8.Text = 1
  loc_15483FA:     var_AC = var_88.Fields.Item("AppDate")
  loc_1548419:     Set var_C4 = Me.Txt
  loc_154841F:     Call 0.Method_Proc_188_55_15487A00 (CInt(9), var_C8)
  loc_1548427:     var_C8.Text = CStr(var_AC.Value)
  loc_1548440:   Else
  loc_154844E:     Set var_98 = Me.Txt
  loc_1548454:     Call 0.Method_Proc_188_55_15487A00 (CInt(7), var_AC)
  loc_154845C:     var_AC.Text = vbNullString
  loc_1548476:     Set var_98 = Me.Txt
  loc_154847C:     Call 0.Method_Proc_188_55_15487A00 (CInt(9), var_AC)
  loc_1548484:     var_AC.Text = vbNullString
  loc_1548490:   End If
  loc_15484A4:   var_C0 = "Select ComboCode, ItemCode , IM.Name As ItemName , Qty  from ComboPackDetail Inner Join ItemMast IM On  ComboPackDetail.ItemCode = IM.Code And ComboPackDetail.RestCode = IM.RestCode where (ComboPackDetail.LOGSITE_CODE='" & MemVar_1F92078
  loc_15484DB:   var_11C = CVar(var_C0 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.restCode='") & Me.Fields.Item("RestCode").Value 
  loc_154852C:   unk_5082F2.Execute CStr(var_11C & "' AND ComboPackDetail.combocode='" & Me.Fields.Item("Code").Value & "'"), var_1A0, -1
  loc_1548537:   Set var_8C = var_150
  loc_1548574:   Me.FGrid.FixedRows = 1
  loc_1548590:   If (var_8C.RecordCount > 0) Then
  loc_1548595:     var_8E = 1
  loc_15485AC:     var_A8 = CVar((var_8C.RecordCount + 1)) 'Long
  loc_15485BB:     Me.FGrid.Rows = 1
  loc_15485C3:     ' Referenced from:   1548781
  loc_15485D2:     If Not(var_8C.EOF) Then
  loc_15485E0:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_15485E8:       var_FC = CVar(CLng(0)) 'Long
  loc_15485F2:       var_BC = CVar(CStr(var_8E)) 'String
  loc_15485F9:       LateIdCallSt
  loc_1548608:       var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1548610:       var_10C = CVar(CLng(2)) 'Long
  loc_1548640:       var_E8 = CVar(CStr(var_8C.Fields.Item("ItemName").Value)) 'String
  loc_1548647:       LateIdCallSt
  loc_1548694:       Proc_6_51_EF39F0(var_E8, CVar(var_8C.Fields.Item("qty")), CVar(CLng(3)), CVar(CLng(var_8E)), Me.FGrid, var_E8, CVar(CLng(3)))
  loc_154869D:       var_11C = CVar(CStr(var_E8)) 'String
  loc_15486A4:       LateIdCallSt
  loc_15486BC:       var_D8 = CVar(CLng(var_8E)) 'Long
  loc_15486C4:       var_10C = CVar(CLng(1)) 'Long
  loc_15486F4:       var_E8 = CVar(CStr(var_8C.Fields.Item("ItemCode").Value)) 'String
  loc_15486FB:       LateIdCallSt
  loc_1548715:       var_D8 = CVar(CLng(var_8E)) 'Long
  loc_154871D:       var_10C = CVar(CLng(4)) 'Long
  loc_154874D:       var_E8 = CVar(CStr(var_8C.Fields.Item("ComboCode").Value)) 'String
  loc_1548754:       LateIdCallSt
  loc_154876C:       Set var_1F0 = Nothing 
  loc_1548776:       var_8E = (var_8E + 1)
  loc_154877C:       var_8C.MoveNext
  loc_1548781:       GoTo loc_15485C3
  loc_1548784:     End If
  loc_1548784:   End If
  loc_1548784: End If
  loc_1548784: Call Proc_188_57_1009A38(var_8E, var_1F0, var_E8, var_10C, var_D8, var_1F0, var_E8)
  loc_154878E: Set var_8C = Nothing
  loc_1548796: Set var_88 = Nothing
  loc_1548799: Exit Sub
  loc_154879A: ' Referenced from: 15477BC
  loc_154879A: Proc_6_60_E62BC4(var_10C, var_D8, var_1F0, var_11C)
  loc_154879F: Exit Sub
End Sub

Public Sub Proc_188_56_12F18FC
  'Data Table: 5082DC
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim unk_5082F2 As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_AC As String
  Dim var_A0 As Variant
  loc_12F125B: If (Me.RecordCount = 0) Then
  loc_12F125E:   Proc_188_56_12F18FC = 
  loc_12F1264: End If
  loc_12F1268: Set var_90 = Me.TopCtrl1
  loc_12F126E: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_12F1287: If (CStr() = "Add") Then
  loc_12F1290:   var_F4 = 0
  loc_12F12C5:   Set var_90 = Me.Txt
  loc_12F12CB:   Call 0.Method_Proc_188_56_12F18FC0 (CInt(8), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1)
  loc_12F12F4:   Set var_B8 = Me.Txt
  loc_12F12FA:   Call 0.Method_Proc_188_56_12F18FC0 (CInt(0), var_BC, var_C0, var_E4 & var_AC & "' and Name='")
  loc_12F1302:   var_F4 = var_BC.Text
  loc_12F131B:   unk_5082F2.Execute var_F8 & var_C0 & "' And ItemType<>'Store'", var_108, 
  loc_12F1323:    = var_A8.Tag.Fields
  loc_12F132B:    = var_E4.Item()
  loc_12F1333:    = var_F8.Value
  loc_12F136E:   If (var_108 > 0) Then
  loc_12F137C:     var_108 = "Information"
  loc_12F138C:     var_A0 = "Duplicate Name"
  loc_12F1392:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_12F13AD:     Set var_90 = Me.Txt
  loc_12F13B3:     Call 0.Method_Proc_188_56_12F18FC0 (CInt(0))
  loc_12F13BB:     var_A8.SetFocus
  loc_12F13CC:     Proc_188_56_12F18FC = &HFF
  loc_12F13D2:   End If
  loc_12F13E0:   Set var_90 = Me.Txt
  loc_12F13E6:   Call 0.Method_Proc_188_56_12F18FC0 (CInt(&HA), var_A8)
  loc_12F1405:   If (var_A8.Text <> vbNullString) Then
  loc_12F140E:     var_F4 = 0
  loc_12F1443:     Set var_90 = Me.Txt
  loc_12F1449:     Call 0.Method_Proc_188_56_12F18FC0 (CInt(8), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1)
  loc_12F1472:     Set var_B8 = Me.Txt
  loc_12F1478:     Call 0.Method_Proc_188_56_12F18FC0 (CInt(&HA), var_BC, var_C0, var_E4 & var_AC & "' and DispCode=")
  loc_12F1480:     var_F4 = var_BC.Text
  loc_12F1499:     unk_5082F2.Execute var_F8 & var_C0 & vbNullString, var_108, var_A8
  loc_12F14A1:      = var_A8.Tag.Fields
  loc_12F14A9:      = var_E4.Item()
  loc_12F14B1:      = var_F8.Value
  loc_12F14EC:     If (var_108 > 0) Then
  loc_12F14FA:       var_108 = "Information"
  loc_12F150A:       var_A0 = "Duplicate Disp Code"
  loc_12F1510:       MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_12F152B:       Set var_90 = Me.Txt
  loc_12F1531:       Call 0.Method_Proc_188_56_12F18FC0 (CInt(&HA))
  loc_12F1539:       var_A8.SetFocus
  loc_12F154A:       Proc_188_56_12F18FC = &HFF
  loc_12F1550:     End If
  loc_12F1550:   End If
  loc_12F1553: Else
  loc_12F1559:   var_F4 = 0
  loc_12F158E:   Set var_90 = Me.Txt
  loc_12F1594:   Call 0.Method_Proc_188_56_12F18FC0 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_12F15BD:   Set var_B8 = Me.Txt
  loc_12F15C3:   Call 0.Method_Proc_188_56_12F18FC0 (CInt(8), var_BC, var_C0, var_E4 & var_AC & "' And restcode='")
  loc_12F15CB:   var_F4 = var_BC.Tag
  loc_12F15F5:   unk_5082F2.Execute var_F8 & var_C0 & "' and Name<>'" & global_132 & "' And ItemType<>'Store'", var_108, var_A8
  loc_12F15FD:    = var_A8.Text.Fields
  loc_12F1605:    = var_E4.Item()
  loc_12F160D:    = var_F8.Value
  loc_12F164C:   If (var_108 > 0) Then
  loc_12F165A:     var_108 = "Information"
  loc_12F166A:     var_A0 = "Duplicate Name"
  loc_12F1670:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_12F168B:     Set var_90 = Me.Txt
  loc_12F1691:     Call 0.Method_Proc_188_56_12F18FC0 (CInt(0))
  loc_12F1699:     var_A8.SetFocus
  loc_12F16AA:     Proc_188_56_12F18FC = &HFF
  loc_12F16B0:   End If
  loc_12F16BE:   Set var_90 = Me.Txt
  loc_12F16C4:   Call 0.Method_Proc_188_56_12F18FC0 (CInt(&HA), var_A8)
  loc_12F16E3:   If (var_A8.Text <> vbNullString) Then
  loc_12F16EC:     var_F4 = 0
  loc_12F1721:     Set var_90 = Me.Txt
  loc_12F1727:     Call 0.Method_Proc_188_56_12F18FC0 (CInt(&HA), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and DispCode=", var_A0, -1)
  loc_12F1750:     Set var_B8 = Me.Txt
  loc_12F1756:     Call 0.Method_Proc_188_56_12F18FC0 (CInt(8), var_BC, var_C0, var_E4 & var_AC & " And restcode='")
  loc_12F175E:     var_F4 = var_BC.Tag
  loc_12F178D:     unk_5082F2.Execute var_F8 & var_C0 & "' and DispCode<> " & CStr(global_60) & vbNullString, var_108, var_A8
  loc_12F1795:      = var_A8.Text.Fields
  loc_12F179D:      = var_E4.Item()
  loc_12F17A5:      = var_F8.Value
  loc_12F17E6:     If (var_108 > 0) Then
  loc_12F180A:       MsgBox("Duplicate Disp Code", &H40, "Information", var_128, var_148)
  loc_12F1825:       Set var_90 = Me.Txt
  loc_12F182B:       Call 0.Method_Proc_188_56_12F18FC0 (CInt(&HA))
  loc_12F1833:       var_A8.SetFocus
  loc_12F1844:       Proc_188_56_12F18FC = &HFF
  loc_12F184A:     End If
  loc_12F184A:   End If
  loc_12F184A: End If
  loc_12F1858: Set var_90 = Me.Txt
  loc_12F185E: Call 0.Method_Proc_188_56_12F18FC0 (CInt(&HA), var_A8)
  loc_12F187D: If (var_A8.Text = "9999") Then
  loc_12F18AE:   MsgBox(CVar("This Code is reserved for special items" & vbCrLf & vbCrLf & "Please choose another code"), &H40, "HMS", var_128, var_148)
  loc_12F18D0:   Set var_90 = Me.Txt
  loc_12F18D6:   Call 0.Method_Proc_188_56_12F18FC0 (CInt(&HA), var_A8)
  loc_12F18DE:   var_A8.SetFocus
  loc_12F18EF:   Proc_188_56_12F18FC = &HFF
  loc_12F18F5: End If
  loc_12F18F5: Proc_188_56_12F18FC = var_A8
End Sub

Public Sub Proc_188_57_1009A38
  'Data Table: 5082DC
  loc_1009838: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_100984A:   Me.DGHelp.Visible = False
  loc_1009852: End If
  loc_100986E: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_1009880:   Me.DGRest.Visible = False
  loc_1009888: End If
  loc_10098A4: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_10098B6:   Me.DGItemGroup.Visible = False
  loc_10098BE: End If
  loc_10098DA: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_10098EC:   Me.DGItemCat.Visible = False
  loc_10098F4: End If
  loc_1009910: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_1009922:   Me.DGUnit.Visible = False
  loc_100992A: End If
  loc_1009946: If (CBool(Me.DGAppDate.Visible) = &HFF) Then
  loc_1009958:   Me.DGAppDate.Visible = False
  loc_1009960: End If
  loc_100997C: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_100998E:   Me.DGItem.Visible = False
  loc_1009996: End If
  loc_10099B2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_10099C4:   Me.FGPoint.Visible = False
  loc_10099CC: End If
  loc_10099E8: If (CBool(Me.DGDispCode.Visible) = &HFF) Then
  loc_10099FA:   Me.DGDispCode.Visible = False
  loc_1009A02: End If
  loc_1009A1D: If (Me.FrmList.Visible = &HFF) Then
  loc_1009A2C:   Me.FrmList.Visible = False
  loc_1009A34: End If
  loc_1009A34: Exit Sub
End Sub

Public Sub Proc_188_58_121C488
  'Data Table: 5082DC
  Dim var_88 As MSFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_104 As TextBox
  Dim var_10C As DataGrid
  Dim var_110 As TextBox
  loc_121BF9C: On Error Goto loc_121C480
  loc_121BFA3: Set var_88 = Me.FGrid
  loc_121BFBA: global_128 = CStr(CLng(var_88.BackColor))
  loc_121BFD0: var_88.Cols = 5
  loc_121BFD8: var_AC = CVar(CLng(0)) 'Long
  loc_121BFDD: var_CC = &HFA
  loc_121BFE9: LateIdCallSt
  loc_121BFF1: var_AC = 0
  loc_121BFFD: var_CC = CVar(CLng(0)) 'Long
  loc_121C002: var_EC = "SNo"
  loc_121C00B: LateIdCallSt
  loc_121C013: var_AC = 1
  loc_121C01F: var_CC = CVar(CLng(0)) 'Long
  loc_121C024: var_EC = "1"
  loc_121C02D: LateIdCallSt
  loc_121C038: var_AC = CVar(CLng(0)) 'Long
  loc_121C03D: var_CC = &H258
  loc_121C049: LateIdCallSt
  loc_121C051: var_AC = 0
  loc_121C05D: var_CC = CVar(CLng(1)) 'Long
  loc_121C062: var_EC = "Item Code"
  loc_121C06B: LateIdCallSt
  loc_121C076: var_AC = CVar(CLng(1)) 'Long
  loc_121C081: var_CC = CVar(CInt(1)) 'Integer
  loc_121C088: LateIdCallSt
  loc_121C093: var_AC = CVar(CLng(1)) 'Long
  loc_121C098: var_CC = 0
  loc_121C0A4: LateIdCallSt
  loc_121C0AC: var_AC = 0
  loc_121C0B8: var_CC = CVar(CLng(2)) 'Long
  loc_121C0BD: var_EC = "Item Name"
  loc_121C0C6: LateIdCallSt
  loc_121C0D1: var_AC = CVar(CLng(2)) 'Long
  loc_121C0DC: var_CC = CVar(CInt(1)) 'Integer
  loc_121C0E3: LateIdCallSt
  loc_121C0EE: var_AC = CVar(CLng(2)) 'Long
  loc_121C0F3: var_CC = &HDAC
  loc_121C0FF: LateIdCallSt
  loc_121C107: var_AC = 0
  loc_121C113: var_CC = CVar(CLng(3)) 'Long
  loc_121C118: var_EC = "Qty"
  loc_121C121: LateIdCallSt
  loc_121C12C: var_AC = CVar(CLng(3)) 'Long
  loc_121C137: var_CC = CVar(CInt(7)) 'Integer
  loc_121C13E: LateIdCallSt
  loc_121C149: var_AC = CVar(CLng(3)) 'Long
  loc_121C14E: var_CC = &H4B0
  loc_121C15A: LateIdCallSt
  loc_121C162: var_AC = 0
  loc_121C16E: var_CC = CVar(CLng(4)) 'Long
  loc_121C173: var_EC = "ComboCode"
  loc_121C17C: LateIdCallSt
  loc_121C187: var_AC = CVar(CLng(4)) 'Long
  loc_121C192: var_CC = CVar(CInt(7)) 'Integer
  loc_121C199: LateIdCallSt
  loc_121C1B5: LateIdCallSt
  loc_121C1BF: Set var_88 = Nothing 
  loc_121C1D1: Set var_100 = Me.Txt
  loc_121C1D7: Call 0.Method_Proc_188_58_121C4880 (CInt(0), var_104, var_108, var_88, 0, CVar(CLng(4)), var_88)
  loc_121C1DF: var_CC = var_104.Left
  loc_121C1E7: var_AC = CVar(var_108) 'Single
  loc_121C1F6: Me.DGHelp.Left = var_AC
  loc_121C212: Set var_10C = Me.Txt
  loc_121C218: Call 0.Method_Proc_188_58_121C4880 (CInt(0), var_110, var_114, var_AC, var_88)
  loc_121C220: var_EC = var_110.Height
  loc_121C233: Set var_100 = Me.Txt
  loc_121C239: Call 0.Method_Proc_188_58_121C4880 (CInt(0), var_104, var_108)
  loc_121C241: var_CC = var_104.Top
  loc_121C251: var_AC = CVar(((var_108 + var_114) + CDbl(&H19))) 'Single
  loc_121C260: Me.DGHelp.Top = var_AC
  loc_121C280: Set var_100 = Me.Txt
  loc_121C286: Call 0.Method_Proc_188_58_121C4880 (CInt(6), var_104, var_108)
  loc_121C28E: var_AC = var_104.Left
  loc_121C2A5: Me.DGItemCat.Left = CVar(var_108)
  loc_121C2C1: Set var_10C = Me.Txt
  loc_121C2C7: Call 0.Method_Proc_188_58_121C4880 (CInt(6), var_110)
  loc_121C2E2: Set var_100 = Me.Txt
  loc_121C2E8: Call 0.Method_Proc_188_58_121C4880 (CInt(6), var_104)
  loc_121C300: var_AC = CVar(((var_104.Top + var_110.Height) + CDbl(&H1E))) 'Single
  loc_121C30F: Me.DGItemCat.Top = CVar(var_104.Top)
  loc_121C32F: Set var_100 = Me.Txt
  loc_121C335: Call 0.Method_Proc_188_58_121C4880 (CInt(2), var_104)
  loc_121C354: Me.DGItemGroup.Left = CVar(var_104.Left)
  loc_121C370: Set var_10C = Me.Txt
  loc_121C376: Call 0.Method_Proc_188_58_121C4880 (CInt(2), var_110)
  loc_121C391: Set var_100 = Me.Txt
  loc_121C397: Call 0.Method_Proc_188_58_121C4880 (CInt(2), var_104)
  loc_121C3AF: var_AC = CVar(((var_104.Top + var_110.Height) + CDbl(&H19))) 'Single
  loc_121C3BE: Me.DGItemGroup.Top = CVar(var_104.Left)
  loc_121C3DE: Set var_100 = Me.Txt
  loc_121C3E4: Call 0.Method_Proc_188_58_121C4880 (CInt(1), var_104)
  loc_121C403: Me.DGUnit.Left = CVar(var_104.Left)
  loc_121C41F: Set var_10C = Me.Txt
  loc_121C425: Call 0.Method_Proc_188_58_121C4880 (CInt(1), var_110)
  loc_121C440: Set var_100 = Me.Txt
  loc_121C446: Call 0.Method_Proc_188_58_121C4880 (CInt(1), var_104)
  loc_121C45E: var_AC = CVar(((var_104.Top + var_110.Height) + CDbl(&H19))) 'Single
  loc_121C46D: Me.DGUnit.Top = CVar(var_104.Left)
  loc_121C47F: Exit Sub
  loc_121C480: ' Referenced from: 121BF9C
  loc_121C480: Proc_6_60_E62BC4(var_88)
  loc_121C485: Exit Sub
End Sub

Public Sub Proc_188_59_E81C50
  'Data Table: 5082DC
  loc_E81BF0: Call Proc_188_57_1009A38()
  loc_E81C2C: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E81C2F:   Call TopCtrl1_UnknownEvent_16()
  loc_E81C37: Else
  loc_E81C3D:   Call 0.Method_arg_1E8 (var_108)
  loc_E81C45:   Call var_108.SetFocus
  loc_E81C4E: End If
  loc_E81C4E: Exit Sub
End Sub

Public Sub Proc_188_60_E43880
  'Data Table: 5082DC
  loc_E4385C: Set var_88 = Me.TopCtrl1
  loc_E43862: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_E4387B: If (CStr() = "Browse") Then
  loc_E4387E:   Exit Sub
  loc_E4387F: End If
  loc_E4387F: Exit Sub
End Sub

Public Sub Proc_188_61_1228308(arg_C) '1228308
  'Data Table: 5082DC
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_11C As MSFlexGrid
  Dim var_12C As Variant
  Dim var_B8 As String
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_130 As Variant
  Dim var_174 As String
  Dim var_188 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  loc_1227E2C: If (arg_C = 0) Then
  loc_1227E42:   var_A8 = CLng(Me.FGrid.Col)
  loc_1227E52:   If (var_A8 = CLng(2)) Then
  loc_1227EA3:     Set var_94 = Me.TxtGrid
  loc_1227EA9:     Call 0.Method_Proc_188_61_12283080 (arg_C, var_B4, var_B8)
  loc_1227EB1:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_1227EC9:     If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_1227EDF:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1227EE7:       var_E8 = CVar(CLng(2)) 'Long
  loc_1227EEC:       var_108 = vbNullString
  loc_1227EF6:       Set var_B4 = Me.FGrid
  loc_1227EFC:       LateIdCallSt
  loc_1227F21:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1227F29:       var_E8 = CVar(CLng(1)) 'Long
  loc_1227F2E:       var_108 = vbNullString
  loc_1227F38:       Set var_B4 = Me.FGrid
  loc_1227F3E:       LateIdCallSt
  loc_1227F53:     Else
  loc_1227F80:       Set var_94 = Me.TxtGrid
  loc_1227F86:       Call 0.Method_Proc_188_61_12283080 (arg_C, var_B4, var_B8, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_B4, var_108)
  loc_1227F8E:       var_E8 = var_B4.Text
  loc_1227F96:       var_12C = CVar(var_B8) 'String
  loc_1227F9E:       Set var_130 = Me.FGrid
  loc_1227FA4:       LateIdCallSt
  loc_1227FD7:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1227FDF:       var_E8 = CVar(CLng(1)) 'Long
  loc_1227FF9:       var_B8 = CStr(Me.FGrid.TextMatrix))
  loc_1228017:       var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122801F:       var_150 = CVar(CLng(1)) 'Long
  loc_1228039:       var_174 = CStr(Me.FGrid.TextMatrix))
  loc_12280A4:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_12280BA:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12280C2:         var_F8 = CVar(CLng(2)) 'Long
  loc_12280F5:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12280FD:         Set var_130 = Me.FGrid
  loc_1228103:         LateIdCallSt
  loc_1228132:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122813A:         var_F8 = CVar(CLng(1)) 'Long
  loc_122815C:         var_B4 = Me.Fields.Item("Code")
  loc_122816D:         var_140 = CVar(CStr(var_B4.Value)) 'String
  loc_1228175:         Set var_130 = Me.FGrid
  loc_122817B:         LateIdCallSt
  loc_1228197:       End If
  loc_1228197:     End If
  loc_122819A:   Else
  loc_12281A1:     If (var_A8 = CLng(3)) Then
  loc_12281AE:       Set var_94 = Me.TxtGrid
  loc_12281B4:       Call 0.Method_Proc_188_61_12283080 (arg_C, var_B4, var_130, var_140, var_F8, var_D8, var_130)
  loc_12281D3:       Set var_11C = Me.TxtGrid
  loc_12281D9:       Call 0.Method_Proc_188_61_12283080 (arg_C, var_130, var_B8, Not(IsNumeric(CVar(var_B4))), var_140, var_F8)
  loc_12281E1:       var_D8 = var_130.Text
  loc_1228203:       If ((var_150 = var_174) Or (CDbl(Val(var_B8)) <= CDbl(0))) Then
  loc_122820A:         var_B8 = CStr(0)
  loc_1228217:         Set var_94 = Me.TxtGrid
  loc_122821D:         Call 0.Method_Proc_188_61_12283080 (arg_C, var_B4, var_B8)
  loc_1228225:         var_B4.Text = var_108
  loc_1228239:         Proc_188_61_1228308 = 0
  loc_122823F:       End If
  loc_122824C:       Set var_94 = Me.TxtGrid
  loc_1228252:       Call 0.Method_Proc_188_61_12283080 (arg_C, var_B4, var_B8)
  loc_122825A:       global_96 = var_B4.Text
  loc_1228272:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122827A:       var_F8 = CVar(CLng(3)) 'Long
  loc_12282A6:       var_188 = CVar(CStr(Format(CVar(var_B8), "0.000"))) 'String
  loc_12282AE:       Set var_130 = Me.FGrid
  loc_12282B4:       LateIdCallSt
  loc_12282D4:     End If
  loc_12282D4:   End If
  loc_12282D4: End If
  loc_12282E7: Set var_94 = Me.TxtGrid
  loc_12282ED: Call 0.Method_Proc_188_61_12283080 (0, var_B4, 0, &HFF, var_130, var_188)
  loc_12282F5: var_B4.MaxLength = 1
  loc_1228301: Proc_188_61_1228308 = 1
End Sub
