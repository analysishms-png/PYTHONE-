VERSION 5.00
Begin VB.Form memFacilityMast
  Caption = "Facility Master"
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
  ClientWidth = 8925
  ClientHeight = 7995
  Begin DataGrid DGTaxStru
    Left = 15720
    Top = 3195
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin DataGrid DGHelp
    Left = 16170
    Top = 1695
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8925
    Height = 450
    TabIndex = 41
  End
  Begin PictureBox Picture1
    Picture = "memFacilityMast.frx":0
    Left = 13215
    Top = 8880
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 40
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 1590
    Width = 4380
    Height = 285
    TabIndex = 0
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 2220
    Width = 1185
    Height = 285
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 2535
    Width = 1185
    Height = 285
    TabIndex = 3
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 3165
    Width = 1185
    Height = 285
    TabIndex = 5
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
    ForeColor = &HFF0000&
    Left = 3945
    Top = 3480
    Width = 1185
    Height = 285
    TabIndex = 6
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 2850
    Width = 1185
    Height = 285
    TabIndex = 4
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 1905
    Width = 1185
    Height = 285
    TabIndex = 1
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 3795
    Width = 1185
    Height = 285
    TabIndex = 7
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
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 4110
    Width = 1185
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
  Begin Frame FrmList
    Left = 13905
    Top = 6945
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 19
    End
  End
  Begin PictureBox Picture2
    Picture = "memFacilityMast.frx":34E
    Left = 13215
    Top = 8610
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 17
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 4425
    Width = 3180
    Height = 285
    TabIndex = 9
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
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 4740
    Width = 3180
    Height = 285
    TabIndex = 10
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3945
    Top = 5055
    Width = 675
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
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
    Index = 12
    BackColor = &HFFFFFF&
    Left = 8670
    Top = 9015
    Width = 1380
    Height = 255
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 9
    Appearance = 0 'Flat
  End
  Begin Frame FrmList1
    Left = 14115
    Top = 5205
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Begin ListView ListView1
      Left = 0
      Top = 0
      Width = 1680
      Height = 1815
      TabStop = 0   'False
      TabIndex = 15
    End
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    Left = 10365
    Top = 9075
    Width = 2505
    Height = 255
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin DataGrid DGRevenue
    Left = 15375
    Top = 945
    Width = 5655
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 16
  End
  Begin MSFlexGrid FGPoint
    Left = 13590
    Top = 8175
    Width = 1935
    Height = 1065
    Visible = 0   'False
    TabIndex = 21
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 345
    Top = 8055
    Width = 2520
    Height = 255
    TabIndex = 43
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
    Left = 330
    Top = 8385
    Width = 2430
    Height = 285
    TabIndex = 42
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
    Caption = "Yes/No"
    ForeColor = &HC0&
    Left = 4695
    Top = 5070
    Width = 645
    Height = 240
    TabIndex = 39
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
    Caption = "Name"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2415
    Top = 1590
    Width = 555
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
  Begin Label LblName
    Caption = "Fixed Rate"
    Index = 2
    ForeColor = &HFF0000&
    Left = 2415
    Top = 2535
    Width = 1035
    Height = 240
    TabIndex = 37
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
    Caption = "Account Name"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2415
    Top = 4740
    Width = 1380
    Height = 240
    TabIndex = 36
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
    Caption = "Add. Adult"
    Index = 6
    ForeColor = &HFF0000&
    Left = 2415
    Top = 3795
    Width = 990
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
    Caption = "Primary Member"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2415
    Top = 2850
    Width = 1590
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
    Caption = "Tax Strcture "
    Index = 4
    ForeColor = &HFF0000&
    Left = 2415
    Top = 4440
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
  Begin Label LblName
    Caption = "Short Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 2415
    Top = 1905
    Width = 1125
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
  Begin Label LblSysYN
    Caption = "SysYN"
    ForeColor = &H0&
    Left = 12450
    Top = 8610
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 31
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
  Begin Label LblLedgerAc
    Caption = "Spouse"
    Index = 3
    ForeColor = &HFF0000&
    Left = 2415
    Top = 3165
    Width = 705
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
    Caption = "Child "
    Index = 4
    ForeColor = &HFF0000&
    Left = 2415
    Top = 3480
    Width = 555
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
  Begin Label Label1
    Caption = "Yes/No"
    ForeColor = &H0&
    Left = 12195
    Top = 8130
    Width = 1005
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
  Begin Label LblName
    Caption = "Add. Child"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2415
    Top = 4110
    Width = 990
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
  Begin Label LblLedgerAc
    Caption = "Active"
    Index = 5
    ForeColor = &HFF0000&
    Left = 2415
    Top = 5040
    Width = 585
    Height = 240
    TabIndex = 26
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
    ForeColor = &H0&
    Left = 7140
    Top = 8730
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 25
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
  Begin Label LblLedgerAc
    Caption = "Extra Child"
    Index = 7
    ForeColor = &H0&
    Left = 7140
    Top = 9000
    Width = 915
    Height = 240
    Visible = 0   'False
    TabIndex = 24
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
    Caption = "Facility Type"
    Index = 3
    ForeColor = &HFF0000&
    Left = 2415
    Top = 2220
    Width = 1215
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
End

Attribute VB_Name = "memFacilityMast"


Private Sub DGTaxStru_UnknownEvent_9 'F49324
  'Data Table: 4C41B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4921B: Me.DGTaxStru.Visible = False
  loc_F4923A: If (Me.RecordCount > 0) Then
  loc_F49279:   Set var_B4 = Me.Txt
  loc_F4927F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(9), var_B8)
  loc_F49287:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F492BA:   var_B0 = Me.Fields.Item("Name")
  loc_F492D9:   Set var_B4 = Me.Txt
  loc_F492DF:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(9), var_B8)
  loc_F492E7:   var_B8.Text = CStr(var_B0.Value)
  loc_F492FD: End If
  loc_F49308: Set var_A8 = Me.Txt
  loc_F4930E: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(9))
  loc_F49316: var_B0.SetFocus
  loc_F49322: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'EA5BB8
  'Data Table: 4C41B4
  Dim var_A8 As Variant
  loc_EA5B38: Set var_88 = Me.DGTaxStru
  loc_EA5B62: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA5B6A: Set var_BC = Me.DGTaxStru
  loc_EA5BA6: Proc_6_138_106D6F8(Me.DGTaxStru, global_64, CInt(9), Me.FGPoint)
  loc_EA5BB4: Exit Sub
  loc_EA5BB5: DGTaxStru.DispID_1B = var_A8
End Sub

Private Sub FGPoint_UnknownEvent_9 'E63D50
  'Data Table: 4C41B4
  loc_E63D20: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E63D23:   Call DGHelp_UnknownEvent_9()
  loc_E63D28: End If
  loc_E63D44: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_E63D47:   Call DGTaxStru_UnknownEvent_9()
  loc_E63D4C: End If
  loc_E63D4C: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 '1132760
  'Data Table: 4C41B4
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_BC As String
  Dim var_CC As Double
  Dim var_C4 As TextBox
  loc_1132422: If (Me.ListView.ListItems.Count > 0) Then
  loc_1132429:   Set var_A8 = Me.ListView
  loc_1132437:   var_BC = CStr(var_A8.Tag)
  loc_1132473:   Set var_C0 = Me.Txt
  loc_1132479:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(var_BC)), var_C4)
  loc_1132481:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_11324A1: End If
  loc_11324AD: Me.FrmList.Visible = False
  loc_11324DD: If (CDbl(Val(CStr(Me.ListView.Tag))) = CDbl(2)) Then
  loc_113250B:   Set var_9C = Me.Txt
  loc_1132511:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8, var_BC)
  loc_1132519:   var_CC = var_A8.Text
  loc_1132539:   If (var_BC = "Fixed") Then
  loc_1132549:     Set var_88 = Me.Txt
  loc_113254F:     Call 0.Method_ListView_UnknownEvent_130 (CInt(3), var_9C)
  loc_1132557:     var_9C.Enabled = True
  loc_1132570:     Set var_88 = Me.Txt
  loc_1132576:     Call 0.Method_ListView_UnknownEvent_130 (CInt(4), var_9C)
  loc_113257E:     var_9C.Enabled = False
  loc_1132597:     Set var_88 = Me.Txt
  loc_113259D:     Call 0.Method_ListView_UnknownEvent_130 (CInt(5), var_9C)
  loc_11325A5:     var_9C.Enabled = False
  loc_11325BE:     Set var_88 = Me.Txt
  loc_11325C4:     Call 0.Method_ListView_UnknownEvent_130 (CInt(6), var_9C)
  loc_11325CC:     var_9C.Enabled = False
  loc_11325E5:     Set var_88 = Me.Txt
  loc_11325EB:     Call 0.Method_ListView_UnknownEvent_130 (CInt(7), var_9C)
  loc_11325F3:     var_9C.Enabled = False
  loc_113260C:     Set var_88 = Me.Txt
  loc_1132612:     Call 0.Method_ListView_UnknownEvent_130 (CInt(8), var_9C)
  loc_113261A:     var_9C.Enabled = False
  loc_1132629:   Else
  loc_1132636:     Set var_88 = Me.Txt
  loc_113263C:     Call 0.Method_ListView_UnknownEvent_130 (CInt(3), var_9C)
  loc_1132644:     var_9C.Enabled = False
  loc_113265D:     Set var_88 = Me.Txt
  loc_1132663:     Call 0.Method_ListView_UnknownEvent_130 (CInt(4), var_9C)
  loc_113266B:     var_9C.Enabled = True
  loc_1132684:     Set var_88 = Me.Txt
  loc_113268A:     Call 0.Method_ListView_UnknownEvent_130 (CInt(5), var_9C)
  loc_1132692:     var_9C.Enabled = True
  loc_11326AB:     Set var_88 = Me.Txt
  loc_11326B1:     Call 0.Method_ListView_UnknownEvent_130 (CInt(6), var_9C)
  loc_11326B9:     var_9C.Enabled = True
  loc_11326D2:     Set var_88 = Me.Txt
  loc_11326D8:     Call 0.Method_ListView_UnknownEvent_130 (CInt(7), var_9C)
  loc_11326E0:     var_9C.Enabled = True
  loc_11326F9:     Set var_88 = Me.Txt
  loc_11326FF:     Call 0.Method_ListView_UnknownEvent_130 (CInt(8), var_9C)
  loc_1132707:     var_9C.Enabled = True
  loc_1132713:   End If
  loc_1132713: End If
  loc_113273B: Set var_9C = Me.Txt
  loc_1132741: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_1132749: var_A8.SetFocus
  loc_113275D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11515BC
  'Data Table: 4C41B4
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  Dim var_88 As ListView
  loc_115123E: Set var_88 = Me.Txt
  loc_1151244: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1151252: Proc_6_74_E226B0(var_8C)
  loc_115125E: Call Proc_267_35_F21EF8(var_8C)
  loc_1151263: On Error Goto loc_1151578
  loc_1151269: var_92 = Index
  loc_1151274: If (var_92 = CInt(&HA)) Then
  loc_115128E:   If (Me.RecordCount > 0) Then
  loc_115129C:     Set var_8C = Me.FGPoint
  loc_11512B4:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_11512C2:   End If
  loc_11512C5: Else
  loc_11512CD:   If (var_92 = CInt(9)) Then
  loc_11512E7:     If (Me.RecordCount > 0) Then
  loc_11512F5:       Set var_8C = Me.FGPoint
  loc_115130D:       Proc_6_137_1193554(Me.DGTaxStru, global_64, Index)
  loc_115131B:     End If
  loc_1151369:     Set var_88 = Me.Txt
  loc_115136F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1151377:     var_8C = var_8C.Text
  loc_115138F:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1151392:       Exit Sub
  loc_1151393:     End If
  loc_11513A0:     Set var_88 = Me.Txt
  loc_11513A6:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11513AE:     var_A0 = var_8C.Text
  loc_11513C0:     var_B0 = "Name"
  loc_11513FB:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1151404:       Me.MoveFirst
  loc_1151427:       Set var_88 = Me.Txt
  loc_115142D:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1151435:       0 = var_8C.Text
  loc_115144E:       Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1151463:     End If
  loc_1151466:   Else
  loc_115146E:     If (var_92 = CInt(2)) Then
  loc_115147E:       ReDim var_F0(0 To 1)
  loc_1151495:       var_F0(0) = "Fixed"
  loc_11514A4:       var_F0(1) = "Memberwise"
  loc_11514BB:       global_76 = Array(var_F0)
  loc_11514D4:       Me.ListView.Tag = CVar(CStr(2))
  loc_11514E3:       Set var_B4 = Me.ListView
  loc_11514FE:       Set var_8C = Me.Txt
  loc_1151518:       Set global_92 = Proc_6_66_EFF8FC(var_B4, var_8C, Index)
  loc_1151536:       Set var_88 = Me.Txt
  loc_115153C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1151544:       global_76 = var_8C.Text
  loc_1151556:       Set var_90 = Me.Txt
  loc_115155C:       Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_1151564:       var_B4.Tag = 2
  loc_1151577:     End If
  loc_1151577:   End If
  loc_1151577: End If
  loc_1151577: Exit Sub
  loc_1151578: ' Referenced from: 1151263
  loc_1151580: Set var_88 = Err()
  loc_1151586: Call 0.Method_arg_2C (var_A0)
  loc_11515A7: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_124)
  loc_11515BA: Exit Sub
  loc_11515BB: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12D3DE8
  'Data Table: 4C41B4
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_110 As Variant
  Dim var_A4 As Frame
  loc_12D377E: If (CLng(Shift) = &H1B) Then
  loc_12D3781:   Call Proc_267_35_F21EF8()
  loc_12D3786:   Exit Sub
  loc_12D3787: End If
  loc_12D378A: var_86 = KeyCode
  loc_12D3795: If (var_86 = CInt(&HA)) Then
  loc_12D37B5:   Set var_98 = Me.FGPoint
  loc_12D37E3:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, KeyCode, global_56, Shift)
  loc_12D3850:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12D3876:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_12D3884:   End If
  loc_12D3887: Else
  loc_12D388F:   If (var_86 = CInt(9)) Then
  loc_12D389D:     Set var_A8 = Me.Txt
  loc_12D38AF:     Set var_A0 = Me.FGPoint
  loc_12D38BA:     Set var_98 = Nothing
  loc_12D38EC:     Proc_6_69_134A198(Me.DGTaxStru, var_A8, CInt(9), global_64, Shift, 0, 1)
  loc_12D390B:     var_AC = Me.RecordCount
  loc_12D395B:     If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12D3962:       Set var_98 = Me.DGTaxStru
  loc_12D3969:       Set var_90 = Me.FGPoint
  loc_12D3981:       Proc_6_138_106D6F8(var_98, global_64, KeyCode, var_90, var_98, var_A0)
  loc_12D398F:     End If
  loc_12D3992:   Else
  loc_12D399A:     If (var_86 = CInt(2)) Then
  loc_12D39BF:       Set var_8C = Me.Txt
  loc_12D39C5:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 0)
  loc_12D39CD:       1 = var_90.Left
  loc_12D39DF:       Set var_98 = Me.Txt
  loc_12D39E5:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_12D39ED:       var_98 = var_A0.Top
  loc_12D39FF:       Set var_A4 = Me.Txt
  loc_12D3A05:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_BC)
  loc_12D3A0D:       0 = var_A8.Height
  loc_12D3A1F:       Set var_B4 = Me.Txt
  loc_12D3A25:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12D3A75:       Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12D3AA1:       If (KeyCode = CInt(2)) Then
  loc_12D3AB1:         Set var_8C = Me.Txt
  loc_12D3AB7:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_E0, CInt(var_AC))
  loc_12D3ABF:         CInt((var_B8 + var_BC)) = var_90.Text
  loc_12D3AD6:         If (var_E0 = "Fixed") Then
  loc_12D3AE6:           Set var_8C = Me.Txt
  loc_12D3AEC:           Call 0.Method_Txt_KeyDown0 (CInt(3), var_90, &HFF)
  loc_12D3AF4:           var_90.Enabled = CInt(var_C0.Width)
  loc_12D3B0D:           Set var_8C = Me.Txt
  loc_12D3B13:           Call 0.Method_Txt_KeyDown0 (CInt(4), var_90, 0)
  loc_12D3B1B:           var_90.Enabled = True
  loc_12D3B34:           Set var_8C = Me.Txt
  loc_12D3B3A:           Call 0.Method_Txt_KeyDown0 (CInt(5), var_90)
  loc_12D3B42:           var_90.Enabled = False
  loc_12D3B5B:           Set var_8C = Me.Txt
  loc_12D3B61:           Call 0.Method_Txt_KeyDown0 (CInt(6), var_90)
  loc_12D3B69:           var_90.Enabled = False
  loc_12D3B82:           Set var_8C = Me.Txt
  loc_12D3B88:           Call 0.Method_Txt_KeyDown0 (CInt(7), var_90)
  loc_12D3B90:           var_90.Enabled = False
  loc_12D3BA9:           Set var_8C = Me.Txt
  loc_12D3BAF:           Call 0.Method_Txt_KeyDown0 (CInt(8), var_90)
  loc_12D3BB7:           var_90.Enabled = False
  loc_12D3BC6:         Else
  loc_12D3BD3:           Set var_8C = Me.Txt
  loc_12D3BD9:           Call 0.Method_Txt_KeyDown0 (CInt(3), var_90)
  loc_12D3BE1:           var_90.Enabled = False
  loc_12D3BFA:           Set var_8C = Me.Txt
  loc_12D3C00:           Call 0.Method_Txt_KeyDown0 (CInt(4), var_90)
  loc_12D3C08:           var_90.Enabled = True
  loc_12D3C21:           Set var_8C = Me.Txt
  loc_12D3C27:           Call 0.Method_Txt_KeyDown0 (CInt(5), var_90)
  loc_12D3C2F:           var_90.Enabled = True
  loc_12D3C48:           Set var_8C = Me.Txt
  loc_12D3C4E:           Call 0.Method_Txt_KeyDown0 (CInt(6), var_90)
  loc_12D3C56:           var_90.Enabled = True
  loc_12D3C6F:           Set var_8C = Me.Txt
  loc_12D3C75:           Call 0.Method_Txt_KeyDown0 (CInt(7), var_90)
  loc_12D3C7D:           var_90.Enabled = True
  loc_12D3C96:           Set var_8C = Me.Txt
  loc_12D3C9C:           Call 0.Method_Txt_KeyDown0 (CInt(8), var_90)
  loc_12D3CA4:           var_90.Enabled = True
  loc_12D3CB0:         End If
  loc_12D3CB0:       End If
  loc_12D3CB0:     End If
  loc_12D3CB0:   End If
  loc_12D3CB0: End If
  loc_12D3CE7: var_110 = Me.DGTaxStru.Visible
  loc_12D3D3C: If (((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGRevenue.Visible) = 0)) And (CBool(var_110) = 0)) And (Me.FrmList.Visible = 0)) And (Me.FrmList1.Visible = 0)) Then
  loc_12D3D5D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HB))) Then
  loc_12D3D97:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_160) = 6) Then
  loc_12D3D9A:       Call TopCtrl1_UnknownEvent_16()
  loc_12D3D9F:     End If
  loc_12D3D9F:     Exit Sub
  loc_12D3DA0:   End If
  loc_12D3DB5:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12D3DBE:     Proc_6_75_E527CC(Shift, arg_14)
  loc_12D3DC3:   End If
  loc_12D3DD6:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_12D3DDF:     Proc_6_76_E52838(Shift, arg_14)
  loc_12D3DE4:   End If
  loc_12D3DE4: End If
  loc_12D3DE4: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '102413C
  'Data Table: 4C41B4
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_1023F16: Proc_6_133_E7EF78(var_94)
  loc_1023F1F: arg_10 = CInt(var_94)
  loc_1023F28: Proc_6_58_E054C0(arg_10, arg_10)
  loc_1023F30: var_96 = KeyAscii
  loc_1023F3B: If (var_96 = CInt(9)) Then
  loc_1023F5A:   If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_1023F6C:     var_A0 = "Name"
  loc_1023F87:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10)
  loc_1023FA1:     Set var_A8 = Me.FGPoint
  loc_1023FB9:     Proc_6_138_106D6F8(Me.DGTaxStru, global_64, KeyAscii, var_A8)
  loc_1023FC7:   End If
  loc_1023FCA: Else
  loc_1023FD2:   If (var_96 = CInt(3)) Then
  loc_1023FDF:     Set var_9C = Me.Txt
  loc_1023FE5:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_1024000:     Proc_6_42_129A86C(var_A8, arg_10, 6, 2)
  loc_102400F:   Else
  loc_1024017:     If Not (var_96 = CInt(4)) Then
  loc_1024022:       If Not (var_96 = CInt(5)) Then
  loc_102402D:         If Not (var_96 = CInt(6)) Then
  loc_1024038:           If Not (var_96 = CInt(7)) Then
  loc_1024043:             If (var_96 = CInt(8)) Then
  loc_1024046:             End If
  loc_1024046:           End If
  loc_1024046:         End If
  loc_1024046:       End If
  loc_1024050:       Set var_9C = Me.Txt
  loc_1024056:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_1024071:       Proc_6_42_129A86C(var_A8, arg_10, 6)
  loc_1024080:     Else
  loc_1024088:       If (var_96 = CInt(&HB)) Then
  loc_10240B4:         If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_10240C4:           Set var_9C = Me.Txt
  loc_10240CA:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_10240D2:           var_A8.Text = 2
  loc_10240E1:         Else
  loc_102410A:           If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_102411A:             Set var_9C = Me.Txt
  loc_1024120:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_1024128:             var_A8.Text = var_96
  loc_1024134:           End If
  loc_1024134:         End If
  loc_1024136:         arg_10 = 0
  loc_1024139:       End If
  loc_1024139:     End If
  loc_1024139:   End If
  loc_1024139: End If
  loc_1024139: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EBD478
  'Data Table: 4C41B4
  loc_EBD3EE: If (KeyCode = CInt(&HA)) Then
  loc_EBD40D:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBD41A:     var_A0 = "Name"
  loc_EBD435:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_56)
  loc_EBD467:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EBD475:   End If
  loc_EBD475: End If
  loc_EBD475: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4CA0C
  'Data Table: 4C41B4
  loc_E4C9EA: Set var_88 = Me.Txt
  loc_E4C9F0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C9FE: Proc_6_73_E22704(var_8C)
  loc_E4CA0A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '11B4C6C
  'Data Table: 4C41B4
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_DC As String
  Dim var_D8 As TextBox
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_8C As Fields15
  loc_11B4834: On Error Goto loc_11B4C28
  loc_11B483A: var_86 = Cancel
  loc_11B4845: If (var_86 = CInt(0)) Then
  loc_11B484B:   Call Proc_267_34_109AB50(var_88)
  loc_11B4856:   If (var_88 = &HFF) Then
  loc_11B485B:     arg_10 = &HFF
  loc_11B485E:     Exit Sub
  loc_11B485F:   End If
  loc_11B4862: Else
  loc_11B486A:   If (var_86 = CInt(2)) Then
  loc_11B4878:     Set var_8C = Me.Txt
  loc_11B487E:     Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_11B48AA:     var_DC = CStr(Format(CVar(var_90), "0.00"))
  loc_11B48B9:     Set var_D4 = Me.Txt
  loc_11B48BF:     Call 0.Method_Txt_Validate0 (CInt(2), var_D8, var_DC, 1)
  loc_11B48C7:     var_D8.Text = 1
  loc_11B48E4:   Else
  loc_11B48EC:     If (var_86 = CInt(9)) Then
  loc_11B493D:       Set var_8C = Me.Txt
  loc_11B4943:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_DC)
  loc_11B494B:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_11B4963:       If (arg_10 Or (var_DC = vbNullString)) Then
  loc_11B4973:         Set var_8C = Me.Txt
  loc_11B4979:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11B4981:         var_90.Tag = vbNullString
  loc_11B498D:         Exit Sub
  loc_11B498E:       End If
  loc_11B49C9:       Set var_D4 = Me.Txt
  loc_11B49CF:       Call 0.Method_Txt_Validate0 (Cancel, var_D8)
  loc_11B49D7:       var_D8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11B4A0A:       var_90 = Me.Fields.Item("Code")
  loc_11B4A28:       Set var_D4 = Me.Txt
  loc_11B4A2E:       Call 0.Method_Txt_Validate0 (Cancel, var_D8)
  loc_11B4A36:       var_D8.Tag = CStr(var_90.Value)
  loc_11B4A4F:     Else
  loc_11B4A57:       If (var_86 = CInt(3)) Then
  loc_11B4A65:         Set var_8C = Me.Txt
  loc_11B4A6B:         Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_11B4AA6:         Set var_D4 = Me.Txt
  loc_11B4AAC:         Call 0.Method_Txt_Validate0 (CInt(3), var_D8, CStr(Format(CVar(var_90), "0.00")))
  loc_11B4AB4:         var_D8.Text = 1
  loc_11B4AD1:       Else
  loc_11B4AD9:         If Not (var_86 = CInt(4)) Then
  loc_11B4AE4:           If Not (var_86 = CInt(5)) Then
  loc_11B4AEF:             If Not (var_86 = CInt(6)) Then
  loc_11B4AFA:               If Not (var_86 = CInt(7)) Then
  loc_11B4B05:                 If (var_86 = CInt(8)) Then
  loc_11B4B08:                 End If
  loc_11B4B08:               End If
  loc_11B4B08:             End If
  loc_11B4B08:           End If
  loc_11B4B12:           Set var_8C = Me.Txt
  loc_11B4B18:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11B4B44:           var_DC = CStr(Format(CVar(var_90), "0.00"))
  loc_11B4B52:           Set var_D4 = Me.Txt
  loc_11B4B58:           Call 0.Method_Txt_Validate0 (Cancel, var_D8, var_DC, 1)
  loc_11B4B60:           var_D8.Text = 1
  loc_11B4B7D:         Else
  loc_11B4B85:           If (var_86 = CInt(&HB)) Then
  loc_11B4B92:             Set var_8C = Me.Txt
  loc_11B4B98:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11B4BB7:             var_D0 = Ucase(Left(CVar(var_90), 1))
  loc_11B4BD3:             If (var_D0 = "Y") Then
  loc_11B4BE3:               Set var_8C = Me.Txt
  loc_11B4BE9:               Call 0.Method_Txt_Validate0 (Cancel, var_90, "Yes")
  loc_11B4BF1:               var_90.Text = 1
  loc_11B4C00:             Else
  loc_11B4C0D:               Set var_8C = Me.Txt
  loc_11B4C13:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11B4C1B:               var_90.Text = "No"
  loc_11B4C27:             End If
  loc_11B4C27:           End If
  loc_11B4C27:         End If
  loc_11B4C27:       End If
  loc_11B4C27:     End If
  loc_11B4C27:   End If
  loc_11B4C27: End If
  loc_11B4C27: Exit Sub
  loc_11B4C28: ' Referenced from: 11B4834
  loc_11B4C30: Set var_8C = Err()
  loc_11B4C36: Call 0.Method_arg_2C (var_DC)
  loc_11B4C57: MsgBox(CVar(var_DC), &H40, "Information", var_D0, var_F4)
  loc_11B4C6A: Exit Sub
  loc_11B4C6B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFD8D4
  'Data Table: 4C41B4
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFD808: On Error Goto loc_EFD88E
  loc_EFD80B: Call Proc_267_31_E79174()
  loc_EFD81D: Me.LblUser.Caption = vbNullString
  loc_EFD832: Me.LblLDt.Caption = vbNullString
  loc_EFD84F: var_8C = "ADD"
  loc_EFD85D: Call Proc_267_30_E790DC(Proc_5_1_100CB50(var_8C, Me))
  loc_EFD873: Set var_88 = Me.Txt
  loc_EFD879: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_EFD881: var_94.SetFocus
  loc_EFD88D: Exit Sub
  loc_EFD88E: ' Referenced from: EFD808
  loc_EFD896: Set var_88 = Err()
  loc_EFD89C: Call 0.Method_arg_2C (var_8C)
  loc_EFD8BD: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFD8D0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBD7E4
  'Data Table: 4C41B4
  loc_EBD750: On Error Goto loc_EBD7DB
  loc_EBD78A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBD799:   Set var_110 = Me
  loc_EBD7B0:   Call Proc_267_30_E790DC(Proc_5_1_100CB50("INI", var_110))
  loc_EBD7BB:   Call Proc_267_32_13E5764(global_52)
  loc_EBD7C3: Else
  loc_EBD7C9:   Call 0.Method_arg_1E8 (var_110)
  loc_EBD7D1:   Call var_110.SetFocus
  loc_EBD7DA: End If
  loc_EBD7DA: Exit Sub
  loc_EBD7DB: ' Referenced from: EBD750
  loc_EBD7DB: Proc_6_60_E62BC4()
  loc_EBD7E0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10DB484
  'Data Table: 4C41B4
  Dim var_96 As Integer
  Dim unk_4C41C7 As Connection15
  Dim Me As Recordset15
  Dim var_124 As Fields15
  Dim var_FC As Variant
  Dim var_12C As String
  loc_10DB1AC: On Error Goto loc_10DB42D
  loc_10DB1BD: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_10DB1C0:   Exit Sub
  loc_10DB1C1: End If
  loc_10DB1F8: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_FC, var_11C) = 6) Then
  loc_10DB1FD:   var_96 = 0
  loc_10DB209:   unk_4C41C7.BeginTrans var_120
  loc_10DB210:   var_96 = &HFF
  loc_10DB224:   var_94 = Me.Bookmark 'Variant
  loc_10DB270:   var_FC = "Delete From MemFacilityMast Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10DB27E:   unk_4C41C7.Execute CStr(var_FC), var_11C, -1
  loc_10DB2C9:   var_168 = 0
  loc_10DB2DC:   var_160 = 0
  loc_10DB2E7:   var_15C = 0
  loc_10DB2FA:   var_154 = 0
  loc_10DB305:   var_150 = 0
  loc_10DB318:   var_148 = 0
  loc_10DB358:   var_12C = "FixedCharge"
  loc_10DB361:   Proc_154_5_10E33A4(MemVar_1F92044, var_12C, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_10DB38F:   unk_4C41C7.CommitTrans
  loc_10DB396:   var_96 = 0
  loc_10DB3A4:   Me.Requery -1
  loc_10DB3C4:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10DB3D1:     Me.Bookmark = var_94
  loc_10DB3D9:   Else
  loc_10DB3ED:     If (Me.EOF = 0) Then
  loc_10DB3F6:       Me.MoveLast
  loc_10DB3FB:     End If
  loc_10DB3FB:   End If
  loc_10DB3FB:   Call Proc_267_32_13E5764(var_96, var_148, 0, var_150, var_154)
  loc_10DB41C:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_10DB424: End If
  loc_10DB429: Set var_9C = Nothing
  loc_10DB42C: Exit Sub
  loc_10DB42D: ' Referenced from: 10DB1AC
  loc_10DB433: If (var_96 = &HFF) Then
  loc_10DB43C:   unk_4C41C7.RollbackTrans
  loc_10DB441: End If
  loc_10DB449: Set var_124 = Err()
  loc_10DB44F: Call 0.Method_arg_2C (var_12C, 0, var_15C)
  loc_10DB470: MsgBox(CVar(var_12C), &H30, " Deletion Error ", var_FC, var_11C)
  loc_10DB483: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F635EC
  'Data Table: 4C41B4
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F634C8: On Error Goto loc_F635A9
  loc_F634D9: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F634DC:   Exit Sub
  loc_F634DD: End If
  loc_F634F4: If (Me.RecordCount > 0) Then
  loc_F6350C:   var_8C = "EDIT"
  loc_F6351A:   Call Proc_267_30_E790DC(Proc_5_1_100CB50(var_8C, Me))
  loc_F63530:   Set var_90 = Me.Txt
  loc_F63536:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F6353E:   var_98.SetFocus
  loc_F6354D: Else
  loc_F6356E:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F6357E: End If
  loc_F6358B: Me.LblUser.Caption = vbNullString
  loc_F635A0: Me.LblLDt.Caption = vbNullString
  loc_F635A8: Exit Sub
  loc_F635A9: ' Referenced from: F634C8
  loc_F635B1: Set var_90 = Err()
  loc_F635B7: Call 0.Method_arg_2C (var_8C)
  loc_F635D8: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F635EB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AEF8
  'Data Table: 4C41B4
  loc_E1AEED: Me.Global.Unload Me
  loc_E1AEF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F26F80
  'Data Table: 4C41B4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F26E80: On Error Goto loc_F26F18
  loc_F26E8C: var_88 = Me.RecordCount
  loc_F26E9A: If (var_88 <= 0) Then
  loc_F26EA3:   var_B8 = "Information"
  loc_F26EBE:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F26ECE:   Exit Sub
  loc_F26ECF: End If
  loc_F26EDD: MemVar_1F920E4 = "Select MemFacilityMast.Code As SearchCode,MemFacilityMast.Name FROM MemFacilityMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by MemFacilityMast.Name"
  loc_F26EE7: var_10C = "3000"
  loc_F26EED: Proc_6_126_F1BCC0(var_10C)
  loc_F26EFB: MemVar_1F92120 = Me
  loc_F26F12: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F26F17: Exit Sub
  loc_F26F18: ' Referenced from: F26E80
  loc_F26F20: Set var_110 = Err()
  loc_F26F26: Call 0.Method_arg_1C (var_88)
  loc_F26F37: If (var_88 <> 0) Then
  loc_F26F42:   Set var_110 = Err()
  loc_F26F48:   Call 0.Method_arg_2C (var_10C)
  loc_F26F69:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F26F7C: End If
  loc_F26F7C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2C2F8
  'Data Table: 4C41B4
  loc_E2C2E8: Proc_5_0_110649C(&HFF, Me)
  loc_E2C2F0: Call Proc_267_32_13E5764(global_52)
  loc_E2C2F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2C718
  'Data Table: 4C41B4
  loc_E2C708: Proc_5_0_110649C(&HFF, Me)
  loc_E2C710: Call Proc_267_32_13E5764(global_52)
  loc_E2C715: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2C538
  'Data Table: 4C41B4
  loc_E2C528: Proc_5_0_110649C(&HFF, Me)
  loc_E2C530: Call Proc_267_32_13E5764(global_52)
  loc_E2C535: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2C358
  'Data Table: 4C41B4
  loc_E2C348: Proc_5_0_110649C(&HFF, Me)
  loc_E2C350: Call Proc_267_32_13E5764(global_52)
  loc_E2C355: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10831AC
  'Data Table: 4C41B4
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4C41C7 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1082F14: On Error Goto loc_1083160
  loc_1082F2B: var_A0 = "SELECT DISTINCT MF.Code, MF.Name , MF.SName , MF.ChargeType , MF.FixedRate , MF.PrimaryMember , MF.Spouse, MF.Child,MF.AddAdult,MF.AddChild,TS.Code As TCode , TS.Name As TName , SB.SubCode As ACode , SB.Name as AName  , CASE MF.ActiveYN WHEN 'Y' then 'Yes' ELSE 'No' END, MF.LOGSITE_CODE , MF.Site_Code FROM MemFacilityMast MF LEFT join TaxStru TS On MF.TaxStru = TS.Code LEFT join SubGroup SB on MF.ACCode = SB.SubCode WHERE (MF.LOGSITE_CODE='" & MemVar_1F92078
  loc_1082F3B: unk_4C41C7.Execute var_A0 & "' or MF.LOGSITE_CODE='HO')", var_C4, -1
  loc_1082F46: Set var_88 = var_C8
  loc_1082F5C: var_CC = var_88.RecordCount
  loc_1082F6A: If (var_CC = 0) Then
  loc_1082F86:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_1082F96:   Exit Sub
  loc_1082F97: End If
  loc_1082FA6: var_A4 = MemVar_1F920B4 & "\MemFacilityMast.ttx"
  loc_1082FAD: Set var_C8 = var_88 
  loc_1082FB9: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_1082FC3: Set var_88 = var_C8
  loc_1082FC9: var_B4 = CVar(var_12E) 'Integer
  loc_1082FCC: var_98 = var_B4 'Variant
  loc_1082FE8: var_A0 = MemVar_1F920B4 & "\MemFacilityMast.RPT"
  loc_1082FF1: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_1082FFC: MemVar_1F921E4 = var_C8
  loc_1083017: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108301F: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108302B: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1083044:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108304C:   Call 0.Method_arg_20 (var_138)
  loc_1083054:   Call 0.Method_arg_30 (var_A0)
  loc_108309A:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10830B0:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10830B8:     Call 0.Method_arg_20 (var_138)
  loc_10830C0:     Call 0.Method_arg_38 ("'Member Facility Master'")
  loc_10830CC:   End If
  loc_10830CF: Next var_132 'Integer
  loc_10830ED: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_10830F5: Call 0.Method_arg_2C (var_DC)
  loc_1083103: Call 0.Method_arg_150 (var_FC)
  loc_108310E: Call 0.Method_arg_50 (var_A0)
  loc_1083118: Set var_138 = Nothing
  loc_1083132: Set var_C8 = MemVar_1F921E4 
  loc_108313E: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_1083149: MemVar_1F921E4 = var_C8
  loc_108315C: Set var_88 = Nothing
  loc_108315F: Exit Sub
  loc_1083160: ' Referenced from: 1082F14
  loc_1083168: Set var_C8 = Err()
  loc_108316E: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1083179: Call 0.Method_arg_50 (var_A4)
  loc_1083195: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_10831A8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E44638
  'Data Table: 4C41B4
  Dim Me As Recordset15
  loc_E4460F: Me.Requery -1
  loc_E4461F: Me.Requery -1
  loc_E4462F: Me.Requery -1
  loc_E44634: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15648E0
  'Data Table: 4C41B4
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim var_D4 As Variant
  Dim unk_4C41C7 As Connection15
  Dim var_94 As Variant
  Dim var_9C As Field20
  Dim var_F4 As Variant
  Dim var_C4 As Variant
  Dim var_104 As Variant
  Dim Me As Recordset15
  Dim var_118 As TextBox
  Dim var_12C As TextBox
  Dim var_140 As TextBox
  Dim var_37C As Double
  Dim var_158 As TextBox
  Dim var_384 As Double
  Dim var_170 As TextBox
  Dim var_38C As Double
  Dim var_188 As TextBox
  Dim var_394 As Double
  Dim var_1A0 As TextBox
  Dim var_39C As Double
  Dim var_1B8 As TextBox
  Dim var_3A4 As Double
  Dim var_1D0 As TextBox
  Dim var_1E4 As TextBox
  Dim var_1F8 As TextBox
  Dim var_2CC As Variant
  Dim var_138 As String
  Dim var_14C As String
  Dim var_164 As String
  Dim var_180 As String
  Dim var_1F0 As String
  Dim var_25C As Variant
  Dim var_32C As Variant
  Dim var_B4 As Variant
  Dim var_4C4 As Variant
  Dim var_15C As String
  Dim var_2DC As Variant
  Dim var_370 As Variant
  Dim var_3D4 As Variant
  Dim var_494 As Variant
  Dim var_564 As Variant
  loc_15639C4: On Error Goto loc_156488D
  loc_15639CB: var_86 = CByte(0) 'Byte
  loc_15639DA: Set var_94 = Me.Txt
  loc_15639E0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1563A09: If (Proc_183_19_E8DAFC(var_98, "Name") = 0) Then
  loc_1563A13:   Call Txt_GotFocus(CInt(1))
  loc_1563A18:   Exit Sub
  loc_1563A19: End If
  loc_1563A24: Set var_94 = Me.Txt
  loc_1563A2A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_1563A53: If (Proc_183_19_E8DAFC(var_98, "Short Name") = 0) Then
  loc_1563A5D:   Call Txt_GotFocus(CInt(0))
  loc_1563A62:   Exit Sub
  loc_1563A63: End If
  loc_1563A6E: Set var_94 = Me.Txt
  loc_1563A74: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_1563A9D: If (Proc_183_19_E8DAFC(var_98, "Facility Type") = 0) Then
  loc_1563AA7:   Call Txt_GotFocus(CInt(2))
  loc_1563AAC:   Exit Sub
  loc_1563AAD: End If
  loc_1563AB8: Set var_94 = Me.Txt
  loc_1563ABE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_98)
  loc_1563AE7: If (Proc_183_19_E8DAFC(var_98, "Tax Structure") = 0) Then
  loc_1563AF1:   Call Txt_GotFocus(CInt(9))
  loc_1563AF6:   Exit Sub
  loc_1563AF7: End If
  loc_1563B02: Set var_94 = Me.Txt
  loc_1563B08: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_98)
  loc_1563B31: If (Proc_183_19_E8DAFC(var_98, "Ledger A/C") = 0) Then
  loc_1563B3B:   Call Txt_GotFocus(CInt(&HA))
  loc_1563B40:   Exit Sub
  loc_1563B41: End If
  loc_1563B4F: Set var_94 = Me.Txt
  loc_1563B55: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_1563B74: If (var_98.Text = "Fixed") Then
  loc_1563B85:   Set var_94 = Me.Txt
  loc_1563B8B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_1563B93:   var_98.Text = "0.00"
  loc_1563BAD:   Set var_94 = Me.Txt
  loc_1563BB3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98)
  loc_1563BBB:   var_98.Text = "0.00"
  loc_1563BD5:   Set var_94 = Me.Txt
  loc_1563BDB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_98)
  loc_1563BE3:   var_98.Text = "0.00"
  loc_1563BFD:   Set var_94 = Me.Txt
  loc_1563C03:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_98)
  loc_1563C0B:   var_98.Text = "0.00"
  loc_1563C25:   Set var_94 = Me.Txt
  loc_1563C2B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_98)
  loc_1563C33:   var_98.Text = "0.00"
  loc_1563C4A:   Set var_94 = Me.Txt
  loc_1563C50:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98)
  loc_1563C79:   If (Proc_183_19_E8DAFC(var_98, "Fixed Rate") = 0) Then
  loc_1563C83:     Call Txt_GotFocus(CInt(3))
  loc_1563C88:     Exit Sub
  loc_1563C89:   End If
  loc_1563C89: End If
  loc_1563C97: Set var_94 = Me.Txt
  loc_1563C9D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_1563CBC: If (var_98.Text <> "Fixed") Then
  loc_1563CCD:   Set var_94 = Me.Txt
  loc_1563CD3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98)
  loc_1563CDB:   var_98.Text = "0.00"
  loc_1563CF2:   Set var_94 = Me.Txt
  loc_1563CF8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_1563D21:   If (Proc_183_19_E8DAFC(var_98, "Member Rate") = 0) Then
  loc_1563D2B:     Call Txt_GotFocus(CInt(4))
  loc_1563D30:     Exit Sub
  loc_1563D31:   End If
  loc_1563D3C:   Set var_94 = Me.Txt
  loc_1563D42:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_98)
  loc_1563D6B:   If (Proc_183_19_E8DAFC(var_98, "Spose Rate") = 0) Then
  loc_1563D75:     Call Txt_GotFocus(CInt(5))
  loc_1563D7A:     Exit Sub
  loc_1563D7B:   End If
  loc_1563D86:   Set var_94 = Me.Txt
  loc_1563D8C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_98)
  loc_1563DB5:   If (Proc_183_19_E8DAFC(var_98, "Child Rate") = 0) Then
  loc_1563DBF:     Call Txt_GotFocus(CInt(6))
  loc_1563DC4:     Exit Sub
  loc_1563DC5:   End If
  loc_1563DD0:   Set var_94 = Me.Txt
  loc_1563DD6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_98)
  loc_1563DFF:   If (Proc_183_19_E8DAFC(var_98, "Additiona Adult Rate") = 0) Then
  loc_1563E09:     Call Txt_GotFocus(CInt(7))
  loc_1563E0E:     Exit Sub
  loc_1563E0F:   End If
  loc_1563E1A:   Set var_94 = Me.Txt
  loc_1563E20:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_98)
  loc_1563E49:   If (Proc_183_19_E8DAFC(var_98, "Additiona Child Rate") = 0) Then
  loc_1563E53:     Call Txt_GotFocus(CInt(8))
  loc_1563E58:     Exit Sub
  loc_1563E59:   End If
  loc_1563E59: End If
  loc_1563E5D: Set var_94 = Me.TopCtrl1
  loc_1563E63: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_1563E7C: If (CStr() = "Add") Then
  loc_1563E85:   var_D4 = 0
  loc_1563EA4:   unk_4C41C7.Execute "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From MemFacilityMast ", var_B4, -1
  loc_1563EAC:   var_94 = var_94.Fields
  loc_1563EB4:   var_D4 = var_98.Item(var_98)
  loc_1563EBC:   var_9C = var_9C.Value
  loc_1563EEF:   var_F4 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1563F1D:   var_104 = (1 + Format(CStr(var_E4), "0000"))
  loc_1563F28:   global_72 = CStr(var_104)
  loc_1563F3D: Else
  loc_1563F5A:   var_98 = Me.Fields.Item("Code")
  loc_1563F71:   global_72 = CStr(var_98.Value)
  loc_1563F82: End If
  loc_1563F8B: unk_4C41C7.BeginTrans var_108
  loc_1563F94: var_86 = CByte(1) 'Byte
  loc_1563F9C: Set var_94 = Me.TopCtrl1
  loc_1563FA2: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1563FBB: If (CStr(var_F4) = "Add") Then
  loc_1563FCC:   Set var_94 = Me.Txt
  loc_1563FD2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_1563FED:   Set var_9C = Me.Txt
  loc_1563FF3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_118)
  loc_156400E:   Set var_128 = Me.Txt
  loc_1564014:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_156402F:   Set var_13C = Me.Txt
  loc_1564035:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_156404A:   var_37C = Val(var_140.Text)
  loc_156405B:   Set var_154 = Me.Txt
  loc_1564061:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_158, var_15C)
  loc_1564076:   var_384 = Val(var_15C)
  loc_1564087:   Set var_16C = Me.Txt
  loc_156408D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_170, var_174)
  loc_15640A2:   var_38C = Val(var_174)
  loc_15640B3:   Set var_184 = Me.Txt
  loc_15640B9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_188, var_18C)
  loc_15640CE:   var_394 = Val(var_18C)
  loc_15640DF:   Set var_19C = Me.Txt
  loc_15640E5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1A0, var_1A4)
  loc_15640FA:   var_39C = Val(var_1A4)
  loc_156410B:   Set var_1B4 = Me.Txt
  loc_1564111:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1B8, var_1BC)
  loc_1564126:   var_3A4 = Val(var_1BC)
  loc_1564137:   Set var_1CC = Me.Txt
  loc_156413D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1D0, var_1D4)
  loc_1564158:   Set var_1E0 = Me.Txt
  loc_156415E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1E4)
  loc_1564179:   Set var_1F4 = Me.Txt
  loc_156417F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_1F8)
  loc_1564191:   var_E4 = "N"
  loc_15641AA:   var_C4 = (var_1F8.Text = "Yes")
  loc_15641BB:   var_2CC = CVar(Proc_6_15_EF2C1C(var_E4)) 'String
  loc_15641C1:   Proc_6_7_F25D88(var_2DC)
  loc_15641DD:   var_A0 = "Insert Into MemFacilityMast(Code,Name,SName,ChargeType,FixedRate,PrimaryMember,Spouse,Child,AddAdult,AddChild,TaxStru,ACCode,ActiveYN,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_72
  loc_1564216:   var_14C = CStr(var_158.Text)
  loc_1564229:   var_164 = CStr(var_170.Text)
  loc_1564240:   var_180 = var_A0 & "','" & var_98.Text & "','" & var_118.Text & "','" & var_12C.Text & "'," & var_14C & "," & var_164 & "," & CStr(var_188.Text)
  loc_1564295:   var_1F0 = var_180 & "," & CStr(var_1A0.Text) & "," & CStr(var_1B8.Text) & "," & CStr(var_1D0.Tag) & ",'" & var_1D4 & "','" & var_1E4.Tag
  loc_15642B5:   var_25C = CVar(var_1F0 & "','") & IIf(var_C4, "Y", var_E4) & "','" & CVar(MemVar_1F92070) 
  loc_15642EB:   var_32C = var_25C & "','" & CVar(MemVar_1F920C8) & "'," & var_2DC & ",'A','" & CVar(MemVar_1F92078) 
  loc_1564302:   unk_4C41C7.Execute CStr(var_32C & "')"), var_370, -1
  loc_15643BD: Else
  loc_15643CB:   Set var_94 = Me.Txt
  loc_15643D1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98, var_A0)
  loc_15643D9:   var_374 = var_98.Text
  loc_15643EC:   Set var_9C = Me.Txt
  loc_15643F2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_118)
  loc_156440D:   Set var_128 = Me.Txt
  loc_1564413:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_12C)
  loc_156442E:   Set var_13C = Me.Txt
  loc_1564434:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_1564449:   var_37C = Val(var_140.Text)
  loc_156445A:   Set var_154 = Me.Txt
  loc_1564460:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_158, var_14C)
  loc_1564475:   var_384 = Val(var_14C)
  loc_1564486:   Set var_16C = Me.Txt
  loc_156448C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_170, var_164)
  loc_15644A8:   Proc_6_39_E7C810(var_E4, CVar(Val(var_164)))
  loc_15644BB:   Set var_184 = Me.Txt
  loc_15644C1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_188)
  loc_15644DD:   Proc_6_39_E7C810(var_25C, CVar(Val(var_188.Text)))
  loc_15644F0:   Set var_19C = Me.Txt
  loc_15644F6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1A0)
  loc_1564512:   Proc_6_39_E7C810(var_2CC, CVar(Val(var_1A0.Text)))
  loc_1564525:   Set var_1B4 = Me.Txt
  loc_156452B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1B8)
  loc_1564547:   Proc_6_39_E7C810(var_32C, CVar(Val(var_1B8.Text)))
  loc_156455A:   Set var_1CC = Me.Txt
  loc_1564560:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1D0)
  loc_156457B:   Set var_1E0 = Me.Txt
  loc_1564581:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1E4)
  loc_156459C:   Set var_1F4 = Me.Txt
  loc_15645A2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_1F8)
  loc_15645DE:   var_4C4 = CVar(Proc_6_15_EF2C1C(var_2CC)) 'String
  loc_15645E4:   Proc_6_7_F25D88(var_4D4)
  loc_1564620:   var_138 = "UPDATE MemFacilityMast SET Name='" & var_A0 & "',Sname='" & var_118.Text & "',ChargeType='" & var_12C.Text & "',FixedRate="
  loc_1564646:   var_F4 = CVar(var_138 & CStr(var_158.Text) & ",PrimaryMember=" & CStr(var_170.Text) & ",Spouse=") 'String
  loc_156464C:   var_104 = var_F4 & var_E4 
  loc_1564698:   var_3D4 = var_104 & ",Child=" & var_25C & ",AddAdult=" & var_2CC & ",AddChild=" & var_32C & ",TaxStru='" & CVar(var_1D0.Tag) & "',ACCode='" 
  loc_15646C5:   var_494 = var_3D4 & CVar(var_1E4.Tag) & "',ActiveYN='" & IIf((var_1F8.Text = "Yes"), "Y", "N") & "',U_name='" & CVar(MemVar_1F920C8) 
  loc_15646FE:   var_564 = var_494 & "',U_EntDt=" & var_4D4 & ",U_AE='E',Site_Code='" & CVar(MemVar_1F92070) & "' WHERE Code='" & CVar(global_72) 
  loc_1564715:   unk_4C41C7.Execute CStr(var_564 & "'"), var_5A4, -1
  loc_15647D1: End If
  loc_15647D7: unk_4C41C7.CommitTrans
  loc_15647E0: var_86 = CByte(0) 'Byte
  loc_15647E4: Call Proc_267_35_F21EF8(var_374)
  loc_15647F4: Me.Requery -1
  loc_1564821: Me.Find "Code='" & global_72 & "'", 0, 1
  loc_1564831: Set var_94 = Me.TopCtrl1
  loc_1564837: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_1564850: If (CStr(var_4C4) = "Add") Then
  loc_1564853:   Call TopCtrl1_UnknownEvent_A()
  loc_1564858:   Exit Sub
  loc_1564859: End If
  loc_156486E: var_A0 = "INI"
  loc_156487C: Call Proc_267_30_E790DC(Proc_5_1_100CB50(var_A0, Me))
  loc_1564887: Call Proc_267_32_13E5764(global_52)
  loc_156488C: Exit Sub
  loc_156488D: ' Referenced from: 15639C4
  loc_1564896: If (CInt(var_86) = 1) Then
  loc_156489F:   unk_4C41C7.RollbackTrans
  loc_15648A4: End If
  loc_15648AC: Set var_94 = Err()
  loc_15648B2: Call 0.Method_arg_2C (var_A0)
  loc_15648CB: MsgBox(CVar(var_A0), &H10, var_E4, var_F4, var_104)
  loc_15648DE: Exit Sub
End Sub

Private Sub ListView1_UnknownEvent_13 'F5E2D4
  'Data Table: 4C41B4
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5E1F6: If (Me.ListView1.ListItems.Count > 0) Then
  loc_F5E1FD:   Set var_A8 = Me.ListView1
  loc_F5E247:   Set var_C0 = Me.Txt
  loc_F5E24D:   Call 0.Method_ListView1_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5E255:   var_C4.Text = Me.ListView1.SelectedItem.Text
  loc_F5E275: End If
  loc_F5E281: Me.FrmList1.Visible = False
  loc_F5E2B1: Set var_9C = Me.Txt
  loc_F5E2B7: Call 0.Method_ListView1_UnknownEvent_130 (CInt(Val(CStr(Me.ListView1.Tag))), var_A8)
  loc_F5E2BF: var_A8.SetFocus
  loc_F5E2D3: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F40B04
  'Data Table: 4C41B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F409FB: Me.DGHelp.Visible = False
  loc_F40A1A: If (Me.RecordCount > 0) Then
  loc_F40A59:   Set var_B4 = Me.Txt
  loc_F40A5F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_F40A67:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F40A9A:   var_B0 = Me.Fields.Item("Name")
  loc_F40AB9:   Set var_B4 = Me.Txt
  loc_F40ABF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_F40AC7:   var_B8.Text = CStr(var_B0.Value)
  loc_F40ADD: End If
  loc_F40AE8: Set var_A8 = Me.Txt
  loc_F40AEE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(&HA))
  loc_F40AF6: var_B0.SetFocus
  loc_F40B02: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA5A30
  'Data Table: 4C41B4
  Dim var_A8 As Variant
  loc_EA59B0: Set var_88 = Me.DGHelp
  loc_EA59DA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA59E2: Set var_BC = Me.DGHelp
  loc_EA5A1E: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(&HA), Me.FGPoint)
  loc_EA5A2C: Exit Sub
  loc_EA5A2D: DGHelp.DispID_1B = var_A8
End Sub

Private Sub Form_Load() '10903A8
  'Data Table: 4C41B4
  Dim var_8C As Label
  Dim var_90 As String
  Dim unk_4C41C7 As Connection15
  Dim var_B4 As Variant
  loc_1090100: On Error Goto loc_1090363
  loc_109010A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_109011E: Me.LblUser.Left = CDbl(13500)
  loc_1090135: Me.LblUser.Top = CDbl(7800)
  loc_109014C: Me.LblLDt.Top = CDbl(8160)
  loc_109015D: Set var_8C = Me.LblLDt
  loc_1090163: var_8C.Left = CDbl(13500)
  loc_109016B: Call Proc_267_36_F8CBD0()
  loc_1090194: unk_4C41C7.Execute "SELECT SubCode AS Code,Name FROM SubGroup WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_10901C3: CVarUnk
  loc_10901C8: VerifyVarObj
  loc_10901D4: LateIdStAd
  loc_10901F6: var_90 = "SELECT  distinct Revmast.Code as Code,RevMast.Name as Name,RevMast.taxstru as TaxCode,TaxStru.name as Taxname FROM RevMast left join TaxStru on  Taxstru.Code=Revmast.Taxstru where (Revmast.LOGSITE_CODE='" & MemVar_1F92078
  loc_1090206: unk_4C41C7.Execute var_90 & "' or RevMast.LOGSITE_CODE='HO') AND FlagType='FOM' AND FlagAMR='Detail' ORDER BY Revmast.Name", var_B4, -1
  loc_1090235: CVarUnk
  loc_109023A: VerifyVarObj
  loc_1090246: LateIdStAd
  loc_1090278: unk_4C41C7.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_10902A7: CVarUnk
  loc_10902AC: VerifyVarObj
  loc_10902B8: LateIdStAd
  loc_10902DA: var_90 = "SELECT DISTINCT MF.Code,MF.Name,MF.SName,MF.U_AE,MF.U_Name,MF.U_EntDt,MF.ChargeType,MF.FixedRate,MF.PrimaryMember,MF.Spouse, MF.Child,MF.AddAdult,MF.AddChild,TS.Code As TCode , TS.Name As TName , SB.SubCode As ACode , SB.Name as AName  , MF.ActiveYN, MF.LOGSITE_CODE , MF.Site_Code FROM MemFacilityMast MF LEFT join TaxStru TS On MF.TaxStru = TS.Code LEFT join SubGroup SB on MF.ACCode = SB.SubCode WHERE (MF.LOGSITE_CODE='" & MemVar_1F92078
  loc_10902EA: unk_4C41C7.Execute var_90 & "' or MF.LOGSITE_CODE='HO')", var_B4, -1
  loc_109031C: Set var_8C = Me
  loc_1090325: var_90 = "INI"
  loc_1090333: Call Proc_267_30_E790DC(Proc_5_1_100CB50(var_90, var_8C, Me.DGTaxStru, var_8C, var_8C, Me.DGRevenue, var_8C), var_8C, Me.DGHelp, var_8C)
  loc_1090347: Call 0.Method_arg_160 (var_8C, var_8C)
  loc_1090355: Call 0.Method_arg_164 (var_8C, var_8C)
  loc_109035D: Call Proc_267_32_13E5764(var_8C)
  loc_1090362: Exit Sub
  loc_1090363: ' Referenced from: 1090100
  loc_109036B: Set var_8C = Err()
  loc_1090371: Call 0.Method_arg_2C (var_90)
  loc_1090392: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_10903A5: Exit Sub
  loc_10903A6: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E61C38
  'Data Table: 4C41B4
  loc_E61BF7: Set global_52 = Nothing
  loc_E61C09: Set global_56 = Nothing
  loc_E61C1B: Set global_60 = Nothing
  loc_E61C2D: Set global_64 = Nothing
  loc_E61C34: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E26F98
  'Data Table: 4C41B4
  loc_E26F70: On Error Goto loc_E26F8F
  loc_E26F87: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E26F8F: ' Referenced from: E26F70
  loc_E26F8F: Proc_6_60_E62BC4(Shift)
  loc_E26F94: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC54C4
  'Data Table: 4C41B4
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC543A: On Error Goto loc_EC547F
  loc_EC5443: Me.MoveFirst
  loc_EC545D: var_8C = "code='" & MyValue
  loc_EC546D: Me.Find var_8C & "'", 0, 1
  loc_EC5479: Call Proc_267_32_13E5764(var_A0)
  loc_EC547E: Exit Sub
  loc_EC547F: ' Referenced from: EC543A
  loc_EC5487: Set var_A4 = Err()
  loc_EC548D: Call 0.Method_arg_2C (var_8C)
  loc_EC54AE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC54C1: Exit Sub
  loc_EC54C2: Exit Sub
End Sub

Public Sub Proc_267_30_E790DC(arg_C) 'E790DC
  'Data Table: 4C41B4
  Dim var_98 As TextBox
  loc_E7908A: Set var_8C = Me.Txt
  loc_E79090: Call 0.Method_Proc_267_30_E790DCC (var_8E, var_86)
  loc_E790A0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E790B6:   Set var_8C = Me.Txt
  loc_E790BC:   Call 0.Method_Proc_267_30_E790DC0 (CInt(var_86), var_98)
  loc_E790C4:   var_98.Enabled = arg_C
  loc_E790D3: Next var_92 'Byte
  loc_E790D9: Exit Sub
  loc_E790DA: Set arg_3C00 = 
End Sub

Public Sub Proc_267_31_E79174
  'Data Table: 4C41B4
  Dim var_98 As TextBox
  loc_E79122: Set var_8C = Me.Txt
  loc_E79128: Call 0.Method_Proc_267_31_E79174C (var_8E, var_86)
  loc_E79138: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7914E:   Set var_8C = Me.Txt
  loc_E79154:   Call 0.Method_Proc_267_31_E791740 (CInt(var_86), var_98)
  loc_E7915C:   var_98.Text = vbNullString
  loc_E7916B: Next var_92 'Byte
  loc_E79171: Exit Sub
  loc_E79172: Set arg_3C00 = 
End Sub

Public Sub Proc_267_32_13E5764
  'Data Table: 4C41B4
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B0 As Variant
  Dim var_B8 As Fields15
  Dim var_DC As Variant
  Dim var_B4 As String
  Dim var_CC As TextBox
  loc_13E4D98: On Error Goto loc_13E571F
  loc_13E4DA1: Proc_183_45_E5C118(global_52)
  loc_13E4DBD: If (Me.RecordCount <= 0) Then
  loc_13E4DC0:   Call Proc_267_31_E79174()
  loc_13E4DC8: Else
  loc_13E4E71:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_13E4EB9:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_Name")))))
  loc_13E4F39:   var_CC = Me.Fields.Item("U_AE")
  loc_13E4F41:   var_DC = CVar(var_CC) 'Address
  loc_13E4F9A:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(var_DC) = "E"), "Last Update :   ", "entdt :   "))
  loc_13E4FE2:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_EntDt")))))
  loc_13E504E:   global_72 = CStr(Me.Fields.Item("Code").Value)
  loc_13E509B:   Set var_B8 = Me.Txt
  loc_13E50A1:   Call 0.Method_Proc_267_32_13E57640 (CInt(1), var_CC)
  loc_13E50A9:   var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13E50FB:   Set var_B8 = Me.Txt
  loc_13E5101:   Call 0.Method_Proc_267_32_13E57640 (CInt(1), var_CC)
  loc_13E5109:   var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_13E515B:   Set var_B8 = Me.Txt
  loc_13E5161:   Call 0.Method_Proc_267_32_13E57640 (CInt(0), var_CC)
  loc_13E5169:   var_CC.Text = CStr(Me.Fields.Item("SName").Value)
  loc_13E51B8:   Set var_B8 = Me.Txt
  loc_13E51BE:   Call 0.Method_Proc_267_32_13E57640 (CInt(2), var_CC)
  loc_13E51C6:   var_CC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ChargeType")))
  loc_13E51FC:   var_B0 = CVar(Me.Fields.Item("FixedRate")) 'Address
  loc_13E5203:   Proc_6_39_E7C810(var_DC)
  loc_13E523A:   Set var_B8 = Me.Txt
  loc_13E5240:   Call 0.Method_Proc_267_32_13E57640 (CInt(3), var_CC, CStr(Format(var_DC, "0.00")))
  loc_13E5248:   var_CC.Text = 1
  loc_13E528D:   Proc_6_39_E7C810(var_DC, CVar(Me.Fields.Item("PrimaryMember")))
  loc_13E52C4:   Set var_B8 = Me.Txt
  loc_13E52CA:   Call 0.Method_Proc_267_32_13E57640 (CInt(4), var_CC, CStr(Format(var_DC, "0.00")), 1)
  loc_13E52D2:   var_CC.Text = 1
  loc_13E5317:   Proc_6_39_E7C810(var_DC, CVar(Me.Fields.Item("Spouse")))
  loc_13E534E:   Set var_B8 = Me.Txt
  loc_13E5354:   Call 0.Method_Proc_267_32_13E57640 (CInt(5), var_CC, CStr(Format(var_DC, "0.00")), 1)
  loc_13E535C:   var_CC.Text = 1
  loc_13E53A1:   Proc_6_39_E7C810(var_DC, CVar(Me.Fields.Item("Child")))
  loc_13E53D8:   Set var_B8 = Me.Txt
  loc_13E53DE:   Call 0.Method_Proc_267_32_13E57640 (CInt(6), var_CC, CStr(Format(var_DC, "0.00")), 1)
  loc_13E53E6:   var_CC.Text = 1
  loc_13E542B:   Proc_6_39_E7C810(var_DC, CVar(Me.Fields.Item("AddAdult")))
  loc_13E5462:   Set var_B8 = Me.Txt
  loc_13E5468:   Call 0.Method_Proc_267_32_13E57640 (CInt(7), var_CC, CStr(Format(var_DC, "0.00")), 1)
  loc_13E5470:   var_CC.Text = 1
  loc_13E54B5:   Proc_6_39_E7C810(var_DC, CVar(Me.Fields.Item("addChild")))
  loc_13E54EC:   Set var_B8 = Me.Txt
  loc_13E54F2:   Call 0.Method_Proc_267_32_13E57640 (CInt(8), var_CC, CStr(Format(var_DC, "0.00")), 1)
  loc_13E54FA:   var_CC.Text = 1
  loc_13E554F:   Set var_B8 = Me.Txt
  loc_13E5555:   Call 0.Method_Proc_267_32_13E57640 (CInt(9), var_CC)
  loc_13E555D:   var_CC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("TName")), 1)
  loc_13E55AA:   Set var_B8 = Me.Txt
  loc_13E55B0:   Call 0.Method_Proc_267_32_13E57640 (CInt(9), var_CC)
  loc_13E55B8:   var_CC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("TCode")))
  loc_13E5605:   Set var_B8 = Me.Txt
  loc_13E560B:   Call 0.Method_Proc_267_32_13E57640 (CInt(&HA), var_CC)
  loc_13E5613:   var_CC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("ACode")))
  loc_13E5660:   Set var_B8 = Me.Txt
  loc_13E5666:   Call 0.Method_Proc_267_32_13E57640 (CInt(&HA), var_CC)
  loc_13E566E:   var_CC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("AName")))
  loc_13E56BC:   var_130 = "Yes"
  loc_13E56CF:   var_110 = (Me.Fields.Item("ActiveYN").Value = "Y") 'Variant
  loc_13E56E1:   var_B4 = CStr(IIf(var_110, var_130, "No"))
  loc_13E56F0:   Set var_B8 = Me.Txt
  loc_13E56F6:   Call 0.Method_Proc_267_32_13E57640 (CInt(&HB), var_CC)
  loc_13E56FE:   var_CC.Text = var_B4
  loc_13E571E: End If
  loc_13E571E: Exit Sub
  loc_13E571F: ' Referenced from: 13E4D98
  loc_13E5727: Set var_8C = Err()
  loc_13E572D: Call 0.Method_arg_2C (var_B4)
  loc_13E574E: MsgBox(CVar(var_B4), &H40, "Information", var_110, var_130)
  loc_13E5761: Exit Sub
End Sub

Public Sub Proc_267_33_1084C2C
  'Data Table: 4C41B4
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4C41C7 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_10849BF: If (Me.RecordCount = 0) Then
  loc_10849C2:   Proc_267_33_1084C2C = 
  loc_10849C8: End If
  loc_10849CC: Set var_90 = Me.TopCtrl1
  loc_10849D2: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10849EB: If (CStr() = "Add") Then
  loc_1084A29:   Set var_90 = Me.Txt
  loc_1084A2F:   Call 0.Method_Proc_267_33_1084C2C0 (CInt(1), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1084A50:   unk_4C41C7.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1084A60:    = var_D0.Item()
  loc_1084A68:    = var_E4.Value
  loc_1084A99:   If (var_A8.Text.Fields > 0) Then
  loc_1084AB7:     var_A0 = "Duplicate Name"
  loc_1084ABD:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1084AD8:     Set var_90 = Me.Txt
  loc_1084ADE:     Call 0.Method_Proc_267_33_1084C2C0 (CInt(1))
  loc_1084AE6:     var_A8.SetFocus
  loc_1084AF7:     Proc_267_33_1084C2C = &HFF
  loc_1084AFD:   End If
  loc_1084B00: Else
  loc_1084B3B:   Set var_90 = Me.Txt
  loc_1084B41:   Call 0.Method_Proc_267_33_1084C2C0 (CInt(1), var_A8, var_AC, "Select Count(*) From FixedCharge Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1084B73:   unk_4C41C7.Execute var_D0 & var_AC & "' And Name<>'" & global_72 & "'", 0, var_E4
  loc_1084B83:    = var_D0.Item(var_A8)
  loc_1084B8B:    = var_E4.Value
  loc_1084BC0:   If (var_A8.Text.Fields > 0) Then
  loc_1084BE4:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1084BFF:     Set var_90 = Me.Txt
  loc_1084C05:     Call 0.Method_Proc_267_33_1084C2C0 (CInt(1))
  loc_1084C0D:     var_A8.SetFocus
  loc_1084C1E:     Proc_267_33_1084C2C = &HFF
  loc_1084C24:   End If
  loc_1084C24: End If
  loc_1084C24: Proc_267_33_1084C2C = var_A8
End Sub

Public Sub Proc_267_34_109AB50
  'Data Table: 4C41B4
  Dim var_DC As Variant
  Dim var_A4 As TextBox
  Dim var_B4 As String
  Dim unk_4C41C7 As Connection15
  Dim var_C8 As Recordset15
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_140 As Fields15
  Dim var_144 As Field20
  loc_109A8CC: Set var_8C = Me.TopCtrl1
  loc_109A8D2: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_109A8EB: If (CStr() = "Add") Then
  loc_109A929:   Set var_8C = Me.Txt
  loc_109A92F:   Call 0.Method_Proc_267_34_109AB500 (CInt(0), var_A4, var_A8, "Select Count(*) From MemFacilityMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and SName='", var_9C, -1)
  loc_109A947:   var_B4 = var_CC & var_A8 & "'"
  loc_109A950:   unk_4C41C7.Execute var_B4, 0, var_E0
  loc_109A960:    = var_CC.Item()
  loc_109A968:    = var_E0.Value
  loc_109A999:   If (var_A4.Text.Fields > 0) Then
  loc_109A9A7:     var_F0 = "Information"
  loc_109A9B7:     var_9C = "Duplicate Short Name"
  loc_109A9BD:     MsgBox(var_9C, &H40, var_F0, var_110, var_130)
  loc_109A9D8:     Set var_8C = Me.Txt
  loc_109A9DE:     Call 0.Method_Proc_267_34_109AB500 (CInt(0))
  loc_109A9E6:     var_A4.SetFocus
  loc_109A9F7:     Proc_267_34_109AB50 = &HFF
  loc_109A9FD:   End If
  loc_109AA00: Else
  loc_109AA06:   var_DC = 0
  loc_109AA3B:   Set var_8C = Me.Txt
  loc_109AA41:   Call 0.Method_Proc_267_34_109AB500 (CInt(0), var_A4, var_A8, "Select Count(*) From MemFacilityMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and SName='", var_9C, -1)
  loc_109AA6A:   Set var_C8 = Me.Txt
  loc_109AA70:   Call 0.Method_Proc_267_34_109AB500 (CInt(1), var_CC, var_B4, var_140 & var_A8 & "' And Code<>'")
  loc_109AA78:   var_DC = var_CC.Tag
  loc_109AA91:   unk_4C41C7.Execute var_144 & var_B4 & "'", var_F0, var_A4
  loc_109AA99:    = var_A4.Text.Fields
  loc_109AAA1:    = var_140.Item()
  loc_109AAA9:    = var_144.Value
  loc_109AAE4:   If (var_F0 > 0) Then
  loc_109AB08:     MsgBox("Duplicate Short Name", &H40, "Information", var_110, var_130)
  loc_109AB23:     Set var_8C = Me.Txt
  loc_109AB29:     Call 0.Method_Proc_267_34_109AB500 (CInt(0))
  loc_109AB31:     var_A4.SetFocus
  loc_109AB42:     Proc_267_34_109AB50 = &HFF
  loc_109AB48:   End If
  loc_109AB48: End If
  loc_109AB48: Proc_267_34_109AB50 = var_A4
  loc_109AB4E: On Error Goto loc_109E4D0
End Sub

Public Sub Proc_267_35_F21EF8
  'Data Table: 4C41B4
  loc_F21E08: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F21E1A:   Me.DGHelp.Visible = False
  loc_F21E22: End If
  loc_F21E3E: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_F21E50:   Me.DGRevenue.Visible = False
  loc_F21E58: End If
  loc_F21E74: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_F21E86:   Me.DGTaxStru.Visible = False
  loc_F21E8E: End If
  loc_F21EA9: If (Me.FrmList.Visible = &HFF) Then
  loc_F21EB8:   Me.FrmList.Visible = False
  loc_F21EC0: End If
  loc_F21EDC: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F21EEE:   Me.FGPoint.Visible = False
  loc_F21EF6: End If
  loc_F21EF6: Exit Sub
  loc_F21EF7: Exit Sub
End Sub

Public Sub Proc_267_36_F8CBD0
  'Data Table: 4C41B4
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_F8CA7E: Set var_88 = Me.Txt
  loc_F8CA84: Call 0.Method_Proc_267_36_F8CBD00 (CInt(&HA), var_8C)
  loc_F8CAA3: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_F8CABF: Set var_B4 = Me.Txt
  loc_F8CAC5: Call 0.Method_Proc_267_36_F8CBD00 (CInt(&HA), var_B8)
  loc_F8CAE0: Set var_88 = Me.Txt
  loc_F8CAE6: Call 0.Method_Proc_267_36_F8CBD00 (CInt(&HA), var_8C)
  loc_F8CAFE: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_F8CB0D: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_F8CB2D: Set var_88 = Me.Txt
  loc_F8CB33: Call 0.Method_Proc_267_36_F8CBD00 (CInt(9), var_8C)
  loc_F8CB52: Me.DGTaxStru.Left = CVar(var_8C.Left)
  loc_F8CB6E: Set var_B4 = Me.Txt
  loc_F8CB74: Call 0.Method_Proc_267_36_F8CBD00 (CInt(9), var_B8)
  loc_F8CB8F: Set var_88 = Me.Txt
  loc_F8CB95: Call 0.Method_Proc_267_36_F8CBD00 (CInt(9), var_8C)
  loc_F8CBAD: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_F8CBBC: Me.DGTaxStru.Top = CVar(var_8C.Left)
  loc_F8CBCE: Exit Sub
End Sub
