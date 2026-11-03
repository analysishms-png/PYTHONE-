VERSION 5.00
Begin VB.Form RSSaleBill1
  Caption = "Sale Bill Entry"
  BackColor = &HE0E0E0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11820
  ClientHeight = 7185
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin CommandButton Command4
    Caption = "Wizard"
    Left = 8895
    Top = 30
    Width = 1245
    Height = 285
    TabIndex = 43
  End
  Begin DataGrid DGKOTFAULT
    Left = 8370
    Top = 1440
    Width = 4290
    Height = 3315
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 42
  End
  Begin TextBox Txt
    Index = 11
    Left = 4560
    Top = 945
    Width = 1200
    Height = 240
    TabIndex = 41
    BorderStyle = 0 'None
    MaxLength = 8
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton Command3
    Caption = "Command3"
    Left = 6885
    Top = 45
    Width = 630
    Height = 285
    TabIndex = 40
  End
  Begin CommandButton CmdSave
    Caption = "&Save"
    Left = 8565
    Top = 6285
    Width = 1530
    Height = 420
    TabIndex = 12
  End
  Begin CommandButton Command2
    Caption = "&Print"
    Left = 10110
    Top = 6285
    Width = 1530
    Height = 420
    TabIndex = 13
  End
  Begin TextBox Txt
    Index = 10
    Left = 1635
    Top = 960
    Width = 1200
    Height = 240
    Visible = 0   'False
    TabIndex = 38
    BorderStyle = 0 'None
    MaxLength = 8
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGRest
    Left = 11700
    Top = 1545
    Width = 5910
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 34
  End
  Begin DataGrid DGItem
    Left = 11655
    Top = 4620
    Width = 4095
    Height = 5400
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin TextBox Txt
    Index = 9
    Left = 7605
    Top = 45
    Width = 1125
    Height = 240
    Visible = 0   'False
    TabIndex = 36
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGCat
    Left = 0
    Top = 4155
    Width = 8340
    Height = 2355
    Visible = 0   'False
    TabIndex = 32
  End
  Begin TextBox Txt
    Index = 8
    Left = 9990
    Top = 5955
    Width = 1440
    Height = 240
    TabIndex = 11
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    Left = 9990
    Top = 5655
    Width = 1440
    Height = 240
    TabIndex = 10
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    Left = 9990
    Top = 5355
    Width = 1440
    Height = 240
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGTable
    Left = 2655
    Top = 6735
    Width = 4290
    Height = 3315
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 21
  End
  Begin CommandButton Command1
    Caption = "Set&tlement"
    Left = 8565
    Top = 6705
    Width = 3075
    Height = 420
    TabIndex = 14
  End
  Begin TextBox Txt
    Index = 5
    Left = 7110
    Top = 450
    Width = 480
    Height = 240
    TabIndex = 25
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
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
    Left = 5970
    Top = 705
    Width = 375
    Height = 240
    TabIndex = 27
    BorderStyle = 0 'None
    MaxLength = 5
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGt
    Index = 1
    Left = 10470
    Top = 1185
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtPer
    Index = 1
    Left = 9930
    Top = 1185
    Width = 330
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 8
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
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
    Left = 1635
    Top = 705
    Width = 2700
    Height = 240
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 15
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 10515
    Top = 2070
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 75
      Top = 90
      Width = 2415
      Height = 1800
      TabIndex = 19
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &H80000000&
    Left = 7755
    Top = 60
    Width = 2325
    Height = 210
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 40
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
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
    Left = 1635
    Top = 450
    Width = 1200
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 8
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
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
    Left = 5970
    Top = 450
    Width = 1125
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
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
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 255
    Top = 1425
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 0
    Top = 1200
    Width = 8250
    Height = 5520
    TabIndex = 6
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11835
    Height = 375
    TabIndex = 0
  End
  Begin MSFlexGrid FGPoint
    Left = 7050
    Top = 6930
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 35
  End
  Begin Label lblTable
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 0
    Top = 6705
    Width = 8325
    Height = 465
    TabIndex = 39
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 20.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label lblSession
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HC00000&
    Left = 8955
    Top = 795
    Width = 1665
    Height = 330
    TabIndex = 37
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    Left = 8415
    Top = 1500
    Width = 180
    Height = 210
    Visible = 0   'False
    TabIndex = 31
  End
  Begin Label Label1
    Caption = "  To Refund    "
    Index = 6
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 8700
    Top = 5940
    Width = 2805
    Height = 270
    TabIndex = 30
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "  Tip Amount  "
    Index = 5
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 8700
    Top = 5640
    Width = 2805
    Height = 270
    TabIndex = 29
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "  Cash Recd.             "
    Index = 4
    BackColor = &H40C0&
    ForeColor = &HFFFFFF&
    Left = 8700
    Top = 5340
    Width = 2805
    Height = 270
    TabIndex = 28
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblRest
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 9735
    Top = 450
    Width = 195
    Height = 390
    TabIndex = 26
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Line Line1
    BorderColor = &H404040&
    X1 = 8325
    Y1 = 1080
    X2 = 8325
    Y2 = 6885
    BorderWidth = 2
  End
  Begin Label Label1
    Caption = "No. Of Persons"
    Index = 0
    ForeColor = &H0&
    Left = 4575
    Top = 720
    Width = 1230
    Height = 210
    TabIndex = 24
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 10305
    Top = 1185
    Width = 180
    Height = 240
    Visible = 0   'False
    TabIndex = 23
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &H0&
    Left = 8550
    Top = 1185
    Width = 465
    Height = 240
    TabIndex = 22
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
    Caption = "Table No."
    Index = 2
    ForeColor = &H0&
    Left = 270
    Top = 720
    Width = 795
    Height = 210
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Vr. No."
    Index = 3
    ForeColor = &H0&
    Left = 270
    Top = 465
    Width = 585
    Height = 210
    TabIndex = 17
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Date"
    Index = 1
    ForeColor = &H0&
    Left = 4575
    Top = 465
    Width = 390
    Height = 210
    TabIndex = 16
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 945
    Top = 465
    Width = 645
    Height = 210
    TabIndex = 15
    Alignment = 1 'Right Justify
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
  Begin Shape Shape1
    BorderColor = &HC0C0FF&
    Left = 8565
    Top = 5265
    Width = 3075
    Height = 1035
    BorderWidth = 2
    FillColor = &HC0E0FF&
    FillStyle = 0
  End
End

Attribute VB_Name = "RSSaleBill1"

Private global_140 As Integer
Private global_142 As Integer
Private global_52 As Integer
Private global_112 As Integer
Private global_92 As Integer

Private Sub DGTable_UnknownEvent_9 'F5C828
  'Data Table: 55274C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5C708: On Error Goto loc_F5C822
  loc_F5C71A: Me.DGTable.Visible = False
  loc_F5C739: If (Me.RecordCount > 0) Then
  loc_F5C778:   Set var_B4 = Me.Txt
  loc_F5C77E:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(3), var_B8)
  loc_F5C786:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5C7B9:   var_B0 = Me.Fields.Item("Code")
  loc_F5C7D8:   Set var_B4 = Me.Txt
  loc_F5C7DE:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(3), var_B8)
  loc_F5C7E6:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5C7FC: End If
  loc_F5C807: Set var_A8 = Me.Txt
  loc_F5C80D: Call 0.Method_DGTable_UnknownEvent_90 (CInt(3))
  loc_F5C815: var_B0.SetFocus
  loc_F5C821: Exit Sub
  loc_F5C822: ' Referenced from: F5C708
  loc_F5C822: Proc_6_60_E62BC4(var_B0)
  loc_F5C827: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA1AA4
  'Data Table: 55274C
  Dim var_A8 As Variant
  loc_EA1A24: Set var_88 = Me.DGTable
  loc_EA1A4E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA1A56: Set var_BC = Me.DGTable
  loc_EA1A92: Proc_6_138_106D6F8(Me.DGTable, global_76, CInt(3), Me.FGPoint)
  loc_EA1AA0: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ED0B9C
  'Data Table: 55274C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED0AFE: Set var_88 = Me.TxtGt
  loc_ED0B04: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ED0B12: Proc_6_74_E226B0(var_8C)
  loc_ED0B1E: Call Proc_135_76_EF6D38(var_8C)
  loc_ED0B32: Set var_88 = Me.TxtGt
  loc_ED0B38: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ED0B40: var_8C.SelStart = 0
  loc_ED0B59: Set var_88 = Me.TxtGt
  loc_ED0B5F: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ED0B7A: Set var_90 = Me.TxtGt
  loc_ED0B80: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ED0B88: var_98.SelLength = Len(var_8C.Text)
  loc_ED0B9B: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5BAF8
  'Data Table: 55274C
  loc_E5BAC5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5BACE:   Proc_6_75_E527CC(Shift)
  loc_E5BAD3: End If
  loc_E5BAE8: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5BAF1:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5BAF6: End If
  loc_E5BAF6: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'E56FA0
  'Data Table: 55274C
  loc_E56F72: Set var_88 = Me.TxtGt
  loc_E56F78: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_E56F93: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E56F9F: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E4D7DC
  'Data Table: 55274C
  loc_E4D7BA: Set var_88 = Me.TxtGt
  loc_E4D7C0: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E4D7CE: Proc_6_73_E22704(var_8C)
  loc_E4D7DA: Exit Sub
End Sub

Private Sub TxtGt_Validate(Cancel As Boolean) 'E01F40
  'Data Table: 55274C
  loc_E01F3A: Call Proc_135_84_165D318(Cancel)
  loc_E01F3F: Exit Sub
End Sub

Private Sub Command4_Click() 'E26570
  'Data Table: 55274C
  Dim Me As Recordset15
  loc_E26548: ' Referenced from: E2656C
  loc_E2655A: If Not(Me.EOF) Then
  loc_E2655D:   Call Command3_Click()
  loc_E26562:   Call TopCtrl1_UnknownEvent_19()
  loc_E26567:   Call TopCtrl1_UnknownEvent_17()
  loc_E2656C:   GoTo loc_E26548
  loc_E2656F: End If
  loc_E2656F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E603B4
  'Data Table: 55274C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6037F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60392: Set var_A8 = Me.TxtGrid
  loc_E60398: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E603A0: var_AC.Visible = False
  loc_E603AC: Call Proc_135_76_EF6D38()
  loc_E603B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E682A8
  'Data Table: 55274C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68264: Set var_88 = Me.TxtGrid
  loc_E6826A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E68284: If (var_8C.Visible = 0) Then
  loc_E6829D:   Me.FGrid.BackColorSel = CVar(CLng(global_96))
  loc_E682A5: End If
  loc_E682A5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF094
  'Data Table: 55274C
  loc_DFF08C: Call Proc_135_70_EF7B30()
  loc_DFF091: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '11DD458
  'Data Table: 55274C
  Dim var_98 As Variant
  Dim var_E0 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_11DCFDC: Set var_88 = Me.TopCtrl1
  loc_11DCFE2: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_11DD032: If CBool(( = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_11DD03B:   Call Form_KeyDown(arg_C, arg_10)
  loc_11DD040: End If
  loc_11DD044: Set var_88 = Me.TopCtrl1
  loc_11DD04A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_11DD05F: If ( = "Browse") Then
  loc_11DD062:   Exit Sub
  loc_11DD063: End If
  loc_11DD0D7: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_11DD0F0:   Me.FGrid.CellBackColor = CVar(CLng(global_96))
  loc_11DD100:   var_DC = "+{Tab}"
  loc_11DD106:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_11DD110:   arg_C = 0
  loc_11DD116: Else
  loc_11DD120:   var_B8 = Me.FGrid.Rows
  loc_11DD16D:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_11DD186:     Me.FGrid.CellBackColor = CVar(CLng(global_96))
  loc_11DD19C:     Proc_303_0_FB9B68("{Tab}", 0, var_B8)
  loc_11DD1A6:     arg_C = 0
  loc_11DD1A9:   End If
  loc_11DD1A9: End If
  loc_11DD1AF: global_140 = arg_C
  loc_11DD1D5: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11DD1F9: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_11DD20F:   var_EC = CLng(Me.FGrid.Col)
  loc_11DD21F:   If (var_EC = CLng(4)) Then
  loc_11DD22D:     If (global_180 <> "Y") Then
  loc_11DD243:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DD25B:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11DD260:       var_11C = vbNullString
  loc_11DD26A:       Set var_E4 = Me.FGrid
  loc_11DD270:       LateIdCallSt
  loc_11DD29B:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DD2A3:       var_FC = CVar(CLng(&HB)) 'Long
  loc_11DD2A8:       var_11C = vbNullString
  loc_11DD2B2:       Set var_E0 = Me.FGrid
  loc_11DD2B8:       LateIdCallSt
  loc_11DD2DD:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DD2E5:       var_FC = CVar(CLng(7)) 'Long
  loc_11DD2EA:       var_11C = vbNullString
  loc_11DD2F4:       Set var_E0 = Me.FGrid
  loc_11DD2FA:       LateIdCallSt
  loc_11DD30C:     End If
  loc_11DD30F:   Else
  loc_11DD316:     If Not (var_EC = CLng(3)) Then
  loc_11DD320:       If (var_EC = CLng(7)) Then
  loc_11DD323:       End If
  loc_11DD32E:       If (global_180 <> "Y") Then
  loc_11DD344:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DD35C:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11DD361:         var_11C = vbNullString
  loc_11DD36B:         Set var_E4 = Me.FGrid
  loc_11DD371:         LateIdCallSt
  loc_11DD389:       End If
  loc_11DD38C:     Else
  loc_11DD393:       If (var_EC = CLng(8)) Then
  loc_11DD3A9:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DD3B1:         var_FC = CVar(CLng(&H19)) 'Long
  loc_11DD3E4:         If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_11DD3FA:           var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DD412:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11DD417:           var_11C = vbNullString
  loc_11DD421:           Set var_E4 = Me.FGrid
  loc_11DD427:           LateIdCallSt
  loc_11DD43F:         End If
  loc_11DD43F:       End If
  loc_11DD43F:     End If
  loc_11DD43F:   End If
  loc_11DD43F: End If
  loc_11DD445: If (arg_C = &HD) Then
  loc_11DD44D:   global_142 = 0
  loc_11DD450: End If
  loc_11DD452: arg_C = 0
  loc_11DD455: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E12E30
  'Data Table: 55274C
  loc_E12E21: Call FGrid_UnknownEvent_C()
  loc_E12E2B: global_142 = 0
  loc_E12E2E: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '10EBFA0
  'Data Table: 55274C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Long
  Dim var_DA As Integer
  Dim var_FC As Variant
  loc_10EBC8C: Set var_88 = Me.TopCtrl1
  loc_10EBC92: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_10EBCA7: If ( = "Browse") Then
  loc_10EBCAA:   Exit Sub
  loc_10EBCAB: End If
  loc_10EBCBE: var_BC = CLng(Me.FGrid.Col)
  loc_10EBCCE: If (var_BC = CLng(4)) Then
  loc_10EBCDC:   If (global_180 <> "Y") Then
  loc_10EBD10:     var_DA = Asc(CStr(Ucase(Chr(CLng(Index)))))
  loc_10EBD46:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0)
  loc_10EBD62:   End If
  loc_10EBD65: Else
  loc_10EBD6C:   If (var_BC = CLng(2)) Then
  loc_10EBD7A:     If (global_180 <> "Y") Then
  loc_10EBDBB:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index)
  loc_10EBDCD:     End If
  loc_10EBDD0:   Else
  loc_10EBDD7:     If (var_BC = CLng(8)) Then
  loc_10EBDED:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10EBDF5:       var_FC = CVar(CLng(&H19)) 'Long
  loc_10EBE28:       If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_10EBE69:         Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index, 0)
  loc_10EBE7B:       End If
  loc_10EBE7E:     Else
  loc_10EBE85:       If (var_BC = CLng(7)) Then
  loc_10EBE93:         If (global_180 <> "Y") Then
  loc_10EBED4:           Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index, 0)
  loc_10EBEE6:         End If
  loc_10EBEE9:       Else
  loc_10EBEF0:         If (var_BC = CLng(3)) Then
  loc_10EBEFE:           If (global_180 <> "Y") Then
  loc_10EBF1C:             If (((Index >= &H41) And (Index <= &H5A)) Or ((Index >= &H61) And (Index <= &H7A))) Then
  loc_10EBF31:               Me.FGrid.Col = CVar(CLng(4))
  loc_10EBF39:             End If
  loc_10EBF77:             Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index, 0)
  loc_10EBF89:           End If
  loc_10EBF89:         End If
  loc_10EBF89:       End If
  loc_10EBF89:     End If
  loc_10EBF89:   End If
  loc_10EBF89: End If
  loc_10EBF93: If (CLng(Index) <> &HD) Then
  loc_10EBF9B:   global_142 = &HFF
  loc_10EBF9E: End If
  loc_10EBF9E: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) 'FF8E0C
  'Data Table: 55274C
  Dim var_A0 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  loc_FF8C20: Set var_90 = Me.TopCtrl1
  loc_FF8C26: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_FF8C3B: If ( = "Browse") Then
  loc_FF8C3E:   Exit Sub
  loc_FF8C3F: End If
  loc_FF8C4A: If (global_180 = "Y") Then
  loc_FF8C4D:   Exit Sub
  loc_FF8C4E: End If
  loc_FF8C6B: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FF8C6E:   Exit Sub
  loc_FF8C6F: End If
  loc_FF8C80: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FF8CA2:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FF8CDC:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FF8CFE:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FF8D14:         var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF8D1D:         Set var_114 = Me.FGrid
  loc_FF8D38:       Else
  loc_FF8D4B:         Me.FGrid.Rows = 1
  loc_FF8D71:         var_B0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FF8D79:         Set var_114 = Me.FGrid
  loc_FF8DA6:         Me.FGrid.FixedRows = 1
  loc_FF8DAE:       End If
  loc_FF8DB3:       Call Proc_135_84_165D318(&H32, FGrid.DispID_10000, var_B0)
  loc_FF8DB8:     End If
  loc_FF8DBB:   Else
  loc_FF8DDC:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_FF8DEC:   End If
  loc_FF8DF0:   Set var_90 = Me.FGrid
  loc_FF8E01: End If
  loc_FF8E06: Set var_8C = Nothing
  loc_FF8E09: Exit Sub
  loc_FF8E0A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3E80C
  'Data Table: 55274C
  Dim var_8C As TextBox
  loc_E3E7E0: Call Proc_135_76_EF6D38()
  loc_E3E7F0: Set var_88 = Me.TxtGrid
  loc_E3E7F6: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3E7FE: var_8C.Visible = False
  loc_E3E80A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 '10E6A6C
  'Data Table: 55274C
  Dim var_90 As String
  Dim var_9C As TextBox
  Dim var_12C As Variant
  Dim unk_552771 As Connection15
  Dim var_88 As Recordset15
  Dim var_94 As Variant
  Dim var_150 As Label
  Dim Me As Recordset15
  loc_10E6768: On Error Goto loc_10E6A65
  loc_10E678E: Call Proc_135_75_1006BAC(Proc_5_1_100CB50("ADD", Me))
  loc_10E6799: Call Proc_135_74_10ACC4C(global_72)
  loc_10E67B1: Set var_94 = Me.Txt
  loc_10E67B7: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(1), var_9C)
  loc_10E67BF: var_9C.Text = CStr(MemVar_1F920EC)
  loc_10E6808: Set var_94 = Me.Txt
  loc_10E680E: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(5), var_9C, CStr(Format(Time, "hh:nn")))
  loc_10E6816: var_9C.Text = 1
  loc_10E6839: Set var_94 = Me.Txt
  loc_10E683F: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(5), var_9C)
  loc_10E688C: var_12C = "Select Name From SessionMast where '" & CDate(CDate(Format(CVar(var_9C), "HH:MM"))) & "' between cdate(fromtime) and cdate(toTime)" 
  loc_10E689A: unk_552771.Execute CStr(var_12C), var_14C, -1
  loc_10E68A5: Set var_88 = var_150
  loc_10E68D7: If (var_88.RecordCount > 0) Then
  loc_10E68F1:   var_9C = var_88.Fields.Item("Name")
  loc_10E6902:   var_90 = Proc_6_38_E68A98(CVar(var_9C), var_150, 1)
  loc_10E690F:   Me.lblSession.Caption = var_90
  loc_10E6921: End If
  loc_10E6933: Me.FGrid.Col = CVar(CLng(3))
  loc_10E6941: Call Proc_135_78_10EA790(MemVar_1F92044, var_90)
  loc_10E6954: Set var_94 = Me.Txt
  loc_10E695A: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2), var_9C, var_90)
  loc_10E697F: Set var_94 = Me.Txt
  loc_10E6985: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(1), var_9C)
  loc_10E699B: Call Proc_135_83_17C7138(CDate(1))
  loc_10E69B8: Set var_94 = Me.Txt
  loc_10E69BE: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(3), var_9C)
  loc_10E69D8: If (var_9C.Visible = 0) Then
  loc_10E69DF:   Set var_94 = Me.FGrid
  loc_10E69F3: Else
  loc_10E69FE:   Set var_94 = Me.Txt
  loc_10E6A04:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(3), var_9C)
  loc_10E6A0C:   var_9C.SetFocus
  loc_10E6A18: End If
  loc_10E6A23: If (global_132 <> "FAST") Then
  loc_10E6A31:   Me.Requery -1
  loc_10E6A36: End If
  loc_10E6A41: If (global_132 <> "FAST") Then
  loc_10E6A4F:   Me.Requery -1
  loc_10E6A54: End If
  loc_10E6A59: Set var_8C = Nothing
  loc_10E6A61: Set var_88 = Nothing
  loc_10E6A64: Exit Sub
  loc_10E6A65: ' Referenced from: 10E6768
  loc_10E6A65: Proc_6_60_E62BC4(FGrid.DispID_8001)
  loc_10E6A6A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'FBA344
  'Data Table: 55274C
  Dim var_94 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_88 As String
  Dim unk_552771 As Connection15
  loc_FBA1A8: On Error Goto loc_FBA33B
  loc_FBA1CE: Call Proc_135_75_1006BAC(Proc_5_1_100CB50("EDIT", Me))
  loc_FBA1E6: Set var_8C = Me.Txt
  loc_FBA1EC: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_94)
  loc_FBA1F4: var_94.Enabled = False
  loc_FBA20D: Set var_8C = Me.Txt
  loc_FBA213: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(1), var_94)
  loc_FBA21B: var_94.Enabled = False
  loc_FBA234: Set var_8C = Me.Txt
  loc_FBA23A: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(3), var_94)
  loc_FBA242: var_94.Enabled = False
  loc_FBA260: Me.FGrid.Col = CVar(CLng(3))
  loc_FBA26C: Set var_8C = Me.FGrid
  loc_FBA287: Set global_80 = New 
  loc_FBA299: Me.FGrid.CursorLocation = 3
  loc_FBA2B9: Set var_8C = Me.Txt
  loc_FBA2BF: Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(2), var_94, "Select Docid,cstr(Vno) as Vno from KOT where Contradocid='", var_DC)
  loc_FBA2D0: var_88 = Proc_6_38_E68A98(CVar(var_94), -1, var_E0)
  loc_FBA2E4: unk_552771.Execute FGrid.DispID_8001 & "EDIT" & "' and Docid not in (Select KOTDOCID from Stock)", global_72, 
  loc_FBA2F5: Set global_80 = var_E0
  loc_FBA31B: CVarUnk
  loc_FBA320: VerifyVarObj
  loc_FBA326: Set var_8C = Me.DGKOTFAULT
  loc_FBA32C: LateIdStAd
  loc_FBA33A: Exit Sub
  loc_FBA33B: ' Referenced from: FBA1A8
  loc_FBA33B: Proc_6_60_E62BC4(var_8C)
  loc_FBA340: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '11FA868
  'Data Table: 55274C
  Dim Me As Recordset15
  Dim unk_552771 As Connection15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_11FA3EC: On Error Goto loc_11FA817
  loc_11FA426: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_11FA43A:   var_94 = Me.Bookmark 'Variant
  loc_11FA447:   unk_552771.BeginTrans var_11C
  loc_11FA454:   If (MemVar_1F921A8 = "Room Service") Then
  loc_11FA4AD:     unk_552771.Execute CStr("DELETE FROM PAYCHARGE WHERE dOCID='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_11FA4F8:     var_164 = 0
  loc_11FA50B:     var_15C = 0
  loc_11FA516:     var_158 = 0
  loc_11FA529:     var_150 = 0
  loc_11FA534:     var_14C = 0
  loc_11FA547:     var_144 = 0
  loc_11FA590:     Proc_154_5_10E33A4(MemVar_1F92044, "PayCharge", "Docid", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11FA5B8:   End If
  loc_11FA60E:   unk_552771.Execute CStr("Update Stock set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_11FA680:   unk_552771.Execute CStr("Update Sale1 set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_11FA6F2:   unk_552771.Execute CStr("Update Sale2 set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_11FA756:   var_F8 = "Update SunTran set delflag='D' where docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_11FA75A:   var_128 = CStr(var_F8)
  loc_11FA764:   unk_552771.Execute var_128, var_118, -1
  loc_11FA786:   unk_552771.CommitTrans
  loc_11FA796:   Me.Requery -1
  loc_11FA7B6:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11FA7C3:     Me.Bookmark = var_94
  loc_11FA7CB:   Else
  loc_11FA7DF:     If (Me.EOF = 0) Then
  loc_11FA7E8:       Me.MoveLast
  loc_11FA7ED:     End If
  loc_11FA7ED:   End If
  loc_11FA7ED:   Call Proc_135_72_17E4588(var_12C, var_12C, var_12C, var_12C)
  loc_11FA80E:   Proc_5_0_110649C(&HFF, Me, global_72, 0)
  loc_11FA816: End If
  loc_11FA816: Exit Sub
  loc_11FA817: ' Referenced from: 11FA3EC
  loc_11FA81D: unk_552771.RollbackTrans
  loc_11FA82A: Set var_120 = Err()
  loc_11FA830: Call 0.Method_arg_2C (var_128, var_144, 0)
  loc_11FA851: MsgBox(CVar(var_128), &H10, " Deletion Message", var_F8, var_118)
  loc_11FA864: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E19018
  'Data Table: 55274C
  loc_E1900D: Me.Global.Unload Me
  loc_E19015: Exit Sub
  loc_E19016:  = 
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E30E58
  'Data Table: 55274C
  loc_E30E48: Proc_5_0_110649C(&HFF, Me)
  loc_E30E50: Call Proc_135_72_17E4588(global_72)
  loc_E30E55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E38F58
  'Data Table: 55274C
  loc_E38F48: Proc_5_0_110649C(&HFF, Me)
  loc_E38F50: Call Proc_135_72_17E4588(global_72)
  loc_E38F55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E38EF8
  'Data Table: 55274C
  loc_E38EE8: Proc_5_0_110649C(&HFF, Me)
  loc_E38EF0: Call Proc_135_72_17E4588(global_72)
  loc_E38EF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E31218
  'Data Table: 55274C
  loc_E31208: Proc_5_0_110649C(&HFF, Me)
  loc_E31210: Call Proc_135_72_17E4588(global_72)
  loc_E31215: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '1B7C944
  'Data Table: 55274C
  Dim var_16C As Variant
  Dim var_1AC As Variant
  Dim var_14C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_1EC As Variant
  Dim var_18C As Variant
  Dim var_158 As String
  Dim unk_552771 As Connection15
  Dim var_88 As Variant
  Dim var_150 As Variant
  Dim var_1F8 As Variant
  Dim var_204 As Double
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_1FC As String
  Dim var_210 As String
  Dim var_214 As String
  Dim var_218 As String
  Dim var_154 As Variant
  Dim var_1F4 As Variant
  Dim var_B4 As Variant
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_DC As Variant
  Dim var_E4 As Variant
  Dim var_FC As Variant
  Dim var_D4 As Double
  Dim var_EC As Variant
  Dim var_F4 As Variant
  Dim var_104 As Double
  Dim var_10C As Variant
  Dim MemVar_1F920EC As Double
  Dim Me As Recordset15
  Dim var_23C As Variant
  Dim var_250 As String
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_274 As Variant
  Dim var_294 As Variant
  Dim var_118 As Recordset15
  Dim var_8A As Variant
  Dim var_2B0 As Variant
  Dim var_38C As Variant
  Dim var_3A8 As Variant
  Dim var_3C8 As Variant
  Dim var_3DC As Variant
  Dim var_3EC As Variant
  Dim var_41C As Variant
  Dim var_3FC As Variant
  Dim var_464 As Variant
  Dim var_9D8 As Double
  Dim var_4B4 As Variant
  Dim var_9E0 As Double
  Dim var_744 As Variant
  Dim var_9E8 As Double
  Dim var_8CC As Variant
  Dim var_924 As Variant
  Dim var_298 As String
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_2AC As Variant
  Dim var_2C4 As Variant
  Dim var_2D4 As Variant
  Dim var_1CC As Variant
  Dim var_2E4 As Variant
  Dim var_2F4 As Variant
  Dim var_304 As Variant
  Dim var_314 As Variant
  Dim var_260 As Variant
  Dim var_334 As Variant
  Dim var_344 As Variant
  Dim var_354 As Variant
  Dim var_364 As Variant
  Dim var_374 As Variant
  Dim var_384 As Variant
  Dim var_43C As Variant
  Dim var_44C As Variant
  Dim var_45C As Variant
  Dim var_478 As Variant
  Dim var_488 As Variant
  Dim var_498 As Variant
  Dim var_4A8 As Variant
  Dim var_4D8 As Variant
  Dim var_518 As Variant
  Dim var_528 As Variant
  Dim var_568 As Variant
  Dim var_578 As Variant
  Dim var_5C8 As Variant
  Dim var_5D8 As Variant
  Dim var_608 As Variant
  Dim var_618 As Variant
  Dim var_638 As Variant
  Dim var_668 As Variant
  Dim var_698 As Variant
  Dim var_6A8 As Variant
  Dim var_6F8 As Variant
  Dim var_708 As Variant
  Dim var_718 As Variant
  Dim var_758 As Variant
  Dim var_768 As Variant
  Dim var_788 As Variant
  Dim var_7A8 As Variant
  Dim var_7B8 As Variant
  Dim var_7E8 As Variant
  Dim var_7F8 As Variant
  Dim var_8FC As Variant
  Dim var_958 As Variant
  Dim var_988 As Variant
  Dim var_9A8 As Variant
  Dim var_9AC As String
  Dim var_388 As Variant
  Dim var_394 As Variant
  Dim var_460 As Variant
  Dim var_4B0 As Variant
  Dim var_740 As Variant
  Dim var_928 As String
  Dim var_29C As TextBox
  Dim var_4AC As MSHFlexGrid
  Dim var_73C As Variant
  Dim var_A04 As String
  Dim var_85C As MSHFlexGrid
  Dim var_A08 As String
  Dim var_A18 As Variant
  Dim var_A38 As Variant
  Dim var_920 As Variant
  Dim var_10F0 As Double
  Dim var_A7C As Variant
  Dim var_A9C As Variant
  Dim var_10F8 As Double
  Dim var_AE0 As Variant
  Dim var_B00 As Variant
  Dim var_9D0 As Variant
  Dim var_B14 As String
  Dim var_B64 As Variant
  Dim var_B78 As MSHFlexGrid
  Dim var_828 As Variant
  Dim var_B7C As String
  Dim var_1108 As Double
  Dim var_BAC As Variant
  Dim var_BE0 As Variant
  Dim var_87C As Variant
  Dim var_BE4 As String
  Dim var_1110 As Double
  Dim var_8BC As Variant
  Dim var_1118 As Double
  Dim var_1120 As Double
  Dim var_DE8 As Variant
  Dim var_E08 As Variant
  Dim var_E1C As MSHFlexGrid
  Dim var_E7C As Variant
  Dim var_E9C As Variant
  Dim var_F10 As Variant
  Dim var_F30 As Variant
  Dim var_FA4 As Variant
  Dim var_1128 As Double
  Dim var_1080 As Variant
  Dim var_390 As String
  Dim var_4B8 As String
  Dim var_9F4 As String
  Dim var_9F8 As String
  Dim var_9FC As String
  Dim var_8DC As Variant
  Dim var_9CC As Variant
  Dim var_DD8 As Variant
  Dim var_F74 As Variant
  Dim var_468 As String
  Dim var_3B8 As Variant
  Dim var_398 As Variant
  Dim var_9F0 As String
  Dim var_146 As Integer
  Dim var_128 As Recordset15
  Dim var_12C As Recordset15
  Dim var_D18 As Field20
  Dim var_A00 As String
  loc_1B77ABC: On Error Goto loc_1B7C928
  loc_1B77ACA: Set var_14C = Me.Txt
  loc_1B77AD0: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1))
  loc_1B77AF9: If (Proc_6_27_EA565C(var_150, "Voucher Date") = 0) Then
  loc_1B77AFC:   Exit Sub
  loc_1B77AFD: End If
  loc_1B77B07: Call TxtGt_Validate(7)
  loc_1B77B17: Set var_14C = Me.Txt
  loc_1B77B1D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_150)
  loc_1B77B46: If (Proc_6_27_EA565C(var_150, "Voucher No") = 0) Then
  loc_1B77B49:   Exit Sub
  loc_1B77B4A: End If
  loc_1B77B55: Set var_14C = Me.Txt
  loc_1B77B5B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_150)
  loc_1B77B84: If (Proc_6_27_EA565C(var_150, "KOT Time") = 0) Then
  loc_1B77B87:   Exit Sub
  loc_1B77B88: End If
  loc_1B77B93: If (global_56 = vbNullString) Then
  loc_1B77BAF:   MsgBox("Open RestaurantChange Form ", 0, var_19C, var_1BC, var_1DC)
  loc_1B77BBF:   Exit Sub
  loc_1B77BC0: End If
  loc_1B77BC0: var_16C = 1
  loc_1B77BCC: var_1AC = CVar(CLng(4)) 'Long
  loc_1B77BE6: var_19C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B77BEC: var_1BC = Trim(var_19C)
  loc_1B77C08: If (var_1BC = vbNullString) Then
  loc_1B77C1E:   var_17C = "No Item On First Row.."
  loc_1B77C24:   MsgBox(var_17C, 0, var_19C, var_1BC, var_1DC)
  loc_1B77C47:   Me.FGrid.Row = 1
  loc_1B77C53:   Set var_14C = Me.FGrid
  loc_1B77C64:   Exit Sub
  loc_1B77C65: End If
  loc_1B77C70: If (global_192 = "Room Service") Then
  loc_1B77C88:   var_16C = MemVar_1F92078
  loc_1B77C90:   Proc_6_17_EAA2B0(var_17C, var_16C, "Select RoomPayType From enviro WHERE LOGSITE_CODE=", var_1BC, -1, var_14C)
  loc_1B77CA6:   unk_552771.Execute CStr(FGrid.DispID_8001 & var_17C), var_1AC, var_16C
  loc_1B77CB1:   Set var_88 = var_14C
  loc_1B77CD7:   If (var_88.RecordCount > 0) Then
  loc_1B77CEC:     var_14C = var_88.Fields
  loc_1B77CF4:     var_150 = var_14C.Item(0)
  loc_1B77D1E:     If (Proc_6_38_E68A98(var_150.Value, 0) = vbNullString) Then
  loc_1B77D3C:       var_17C = "Please define Room Payment Type From Enviro"
  loc_1B77D42:       MsgBox(var_17C, &H40, "HMS", var_1BC, var_1DC)
  loc_1B77D52:       Exit Sub
  loc_1B77D53:     End If
  loc_1B77D53:   End If
  loc_1B77D56: Else
  loc_1B77D73:   Proc_6_17_EAA2B0(var_17C, MemVar_1F92078, "Select CashPayType From enviro WHERE LOGSITE_CODE=", var_1BC)
  loc_1B77D7B:   var_19C = -1 & var_17C 
  loc_1B77D89:   unk_552771.Execute CStr("HMS"), var_14C, var_150
  loc_1B77D94:   Set var_88 = var_14C
  loc_1B77DBA:   If (var_88.RecordCount > 0) Then
  loc_1B77DD7:     var_150 = var_88.Fields.Item(0)
  loc_1B77DEC:     var_124 = Proc_6_38_E68A98(var_150.Value)
  loc_1B77E01:     If (var_124 = vbNullString) Then
  loc_1B77E25:       MsgBox("Please define Cash Payment Type From Enviro", &H40, "HMS", var_1BC, var_1DC)
  loc_1B77E35:       Exit Sub
  loc_1B77E36:     End If
  loc_1B77E36:   End If
  loc_1B77E36: End If
  loc_1B77E44: Set var_14C = Me.Txt
  loc_1B77E4A: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_150)
  loc_1B77E6E: If (CDbl(Val(var_150.Text)) <> CDbl(0)) Then
  loc_1B77E78:   Set var_154 = Me.TxtGt
  loc_1B77E7E:   Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15A)
  loc_1B77E90:   Set var_1F4 = Me.TxtGt
  loc_1B77E96:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15A, var_1F8)
  loc_1B77EBC:   Set var_14C = Me.Txt
  loc_1B77EC2:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_150)
  loc_1B77EF1:   If (CDbl(Val(var_150.Text)) < CDbl(Val(var_1F8.Text))) Then
  loc_1B77F15:     MsgBox("Please fully adjust the Bill", &H10, "Check Balance", var_1BC, var_1DC)
  loc_1B77F30:     Set var_14C = Me.Txt
  loc_1B77F36:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_150)
  loc_1B77F3E:     var_150.SetFocus
  loc_1B77F4A:     Exit Sub
  loc_1B77F4B:   End If
  loc_1B77F4B: End If
  loc_1B77F70: For var_208 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_208 'Integer
  loc_1B77F7A:   var_16C = CVar(CLng(var_92)) 'Long
  loc_1B77F82:   var_1AC = CVar(CLng(&H11)) 'Long
  loc_1B77FB2:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_1B77FB9:     var_16C = CVar(CLng(var_92)) 'Long
  loc_1B77FC1:     var_1AC = CVar(CLng(&HA)) 'Long
  loc_1B77FED:     var_A4 = (var_A4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1B77FFC:   Else
  loc_1B78000:     var_16C = CVar(CLng(var_92)) 'Long
  loc_1B78008:     var_1AC = CVar(CLng(&HA)) 'Long
  loc_1B78017:     var_17C = Me.FGrid.TextMatrix)
  loc_1B78022:     var_158 = CStr(var_17C)
  loc_1B78034:     var_AC = (var_AC + Val(var_158))
  loc_1B78040:   End If
  loc_1B78043: Next var_208 'Integer
  loc_1B78054: Set var_14C = Me.TxtGt
  loc_1B7805A: Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15A, var_92)
  loc_1B78065: For var_20C =  To var_15A: 1 = var_20C 'Integer
  loc_1B78097:   Set var_14C = Me.LblCap
  loc_1B7809D:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, "Select IsNull(Max(Nature),'') from SundryType Where SundryCode='", var_17C, -1)
  loc_1B780CF:   unk_552771.Execute var_1F4 & var_158 & "' And V_Type='" & global_128 & "'", 0, var_1F8
  loc_1B780D7:   var_19C = var_150.Tag.Fields
  loc_1B780DF:    = var_1F4.Item()
  loc_1B780E7:    = var_1F8.Value
  loc_1B7811B:   var_21C = Proc_6_38_E68A98(var_19C)
  loc_1B78126:   If (var_21C = "Addition") Then
  loc_1B78136:     Set var_14C = Me.TxtGt
  loc_1B7813C:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150)
  loc_1B78144:     var_158 = var_150.Text
  loc_1B7815B:     var_B4 = (var_B4 + Val(var_158))
  loc_1B78175:     Set var_14C = Me.TxtPer
  loc_1B7817B:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158)
  loc_1B78183:     var_B4 = var_150.Text
  loc_1B7819A:     var_CC = (var_CC + Val(var_158))
  loc_1B781AA:   Else
  loc_1B781B2:     If (var_21C = "Deduction") Then
  loc_1B781C2:       Set var_14C = Me.TxtGt
  loc_1B781C8:       Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158)
  loc_1B781D0:       var_CC = var_150.Text
  loc_1B781E7:       var_BC = (var_BC + Val(var_158))
  loc_1B78201:       Set var_14C = Me.TxtPer
  loc_1B78207:       Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_BC)
  loc_1B7820F:       var_204 = var_150.Text
  loc_1B78226:       var_C4 = (var_C4 + Val(var_158))
  loc_1B78236:     Else
  loc_1B7823E:       If (var_21C = "Discount") Then
  loc_1B7824E:         Set var_14C = Me.TxtGt
  loc_1B78254:         Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_C4)
  loc_1B7825C:         var_204 = var_150.Text
  loc_1B78273:         var_DC = (var_DC + Val(var_158))
  loc_1B7828D:         Set var_14C = Me.TxtPer
  loc_1B78293:         Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_DC)
  loc_1B7829B:         var_204 = var_150.Text
  loc_1B782B2:         var_E4 = (var_E4 + Val(var_158))
  loc_1B782C2:       Else
  loc_1B782CA:         If (var_21C = "Luxury Tax") Then
  loc_1B782DA:           Set var_14C = Me.TxtGt
  loc_1B782E0:           Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_E4)
  loc_1B782E8:           var_204 = var_150.Text
  loc_1B782FF:           var_FC = (var_FC + Val(var_158))
  loc_1B78319:           Set var_14C = Me.TxtPer
  loc_1B7831F:           Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_FC)
  loc_1B78327:           var_204 = var_150.Text
  loc_1B7833E:           var_D4 = (var_D4 + Val(var_158))
  loc_1B7834E:         Else
  loc_1B78356:           If (var_21C = "Round Off") Then
  loc_1B78366:             Set var_14C = Me.TxtGt
  loc_1B7836C:             Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_D4)
  loc_1B78374:             var_204 = var_150.Text
  loc_1B7838B:             var_EC = (var_EC + Val(var_158))
  loc_1B783A5:             Set var_14C = Me.TxtPer
  loc_1B783AB:             Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_EC)
  loc_1B783B3:             var_204 = var_150.Text
  loc_1B783CA:             var_F4 = (var_F4 + Val(var_158))
  loc_1B783DA:           Else
  loc_1B783E2:             If (var_21C = "Sale Tax") Then
  loc_1B783F2:               Set var_14C = Me.TxtGt
  loc_1B783F8:               Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_F4)
  loc_1B78400:               var_204 = var_150.Text
  loc_1B78417:               var_FC = (var_FC + Val(var_158))
  loc_1B78431:               Set var_14C = Me.TxtPer
  loc_1B78437:               Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_FC)
  loc_1B7843F:               var_204 = var_150.Text
  loc_1B78456:               var_D4 = (var_D4 + Val(var_158))
  loc_1B78466:             Else
  loc_1B7846E:               If (var_21C = "Service Charge") Then
  loc_1B7847E:                 Set var_14C = Me.TxtGt
  loc_1B78484:                 Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_D4)
  loc_1B7848C:                 var_204 = var_150.Text
  loc_1B784A3:                 var_104 = (var_104 + Val(var_158))
  loc_1B784BD:                 Set var_14C = Me.TxtPer
  loc_1B784C3:                 Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_104)
  loc_1B784CB:                 var_204 = var_150.Text
  loc_1B784E2:                 var_10C = (var_10C + Val(var_158))
  loc_1B784F2:               Else
  loc_1B784FA:                 If (var_21C = "Service Tax") Then
  loc_1B7850A:                   Set var_14C = Me.TxtGt
  loc_1B78510:                   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_10C)
  loc_1B78518:                   var_204 = var_150.Text
  loc_1B7852F:                   var_FC = (var_FC + Val(var_158))
  loc_1B78549:                   Set var_14C = Me.TxtPer
  loc_1B7854F:                   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150, var_158, var_FC)
  loc_1B78557:                   var_204 = var_150.Text
  loc_1B7856E:                   var_D4 = (var_D4 + Val(var_158))
  loc_1B7857B:                 End If
  loc_1B7857B:               End If
  loc_1B7857B:             End If
  loc_1B7857B:           End If
  loc_1B7857B:         End If
  loc_1B7857B:       End If
  loc_1B7857B:     End If
  loc_1B7857B:   End If
  loc_1B7857E: Next var_20C 'Integer
  loc_1B78586: var_9C = vbNullString
  loc_1B7858C: Call Proc_135_73_11079CC(var_15A)
  loc_1B78597: If (var_15A = 0) Then
  loc_1B7859A:   Exit Sub
  loc_1B7859B: End If
  loc_1B785A6: Set var_14C = Me.TxtGrid
  loc_1B785AC: Call 0.Method_TopCtrl1_UnknownEvent_190 (0, var_150)
  loc_1B785B4: var_150.Visible = False
  loc_1B785C0: Call Proc_135_76_EF6D38()
  loc_1B785D3: Set var_14C = Me.Txt
  loc_1B785D9: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_150)
  loc_1B78601: If (Proc_6_91_EF2D40(CDate(var_150.Text)) = 0) Then
  loc_1B7860F:   Set var_14C = Me.Txt
  loc_1B78615:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1))
  loc_1B7861D:   var_150.SetFocus
  loc_1B78629:   Exit Sub
  loc_1B7862A: End If
  loc_1B7862E: Set var_14C = Me.TopCtrl1
  loc_1B78634: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_150)
  loc_1B78649: If ( = "Add") Then
  loc_1B78652:   var_18C = 0
  loc_1B7866F:   var_158 = "Select NCUR from enviro where LOGsite_code='" & MemVar_1F92078
  loc_1B7867F:   unk_552771.Execute var_158 & "'", var_17C, -1
  loc_1B78687:   var_14C = var_14C.Fields
  loc_1B7868F:   var_18C = var_150.Item(var_150)
  loc_1B78697:   var_154 = var_154.Value
  loc_1B786A1:   MemVar_1F920EC = CDate(var_19C)
  loc_1B786C1:   var_18C = 0
  loc_1B786E8:   Set var_14C = Me.Txt
  loc_1B786EE:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, "Select Count(*) From Sale1 Where DocID='", var_17C, -1, var_154)
  loc_1B786F6:   var_1F4 = var_150.Text
  loc_1B7870F:   unk_552771.Execute var_18C & var_158 & "'", var_1F8, var_19C
  loc_1B78717:   MemVar_1F920EC = var_154.Fields
  loc_1B7871F:    = var_1F4.Item(var_19C)
  loc_1B78727:    = var_1F8.Value
  loc_1B78754:   If (var_19C > 0) Then
  loc_1B7875D:     Call Proc_135_78_10EA790(MemVar_1F92044)
  loc_1B78770:     Set var_14C = Me.Txt
  loc_1B78776:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150)
  loc_1B7877E:     var_150.Text = var_158
  loc_1B7878D:     Exit Sub
  loc_1B7878E:   End If
  loc_1B78791: Else
  loc_1B787C5:   global_100 = CStr(Me.Fields.Item("DocID").Value)
  loc_1B787D6: End If
  loc_1B787D6: var_16C = 1
  loc_1B787E2: var_1AC = CVar(CLng(&HD)) 'Long
  loc_1B787FD: var_1EC = 1
  loc_1B78809: var_23C = CVar(CLng(&HC)) 'Long
  loc_1B7882B: var_204 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B78862: unk_552771.Execute "Select Waiter From KOT where DocID='" & CStr(Me.FGrid.TextMatrix)) & "' And SNO =" & CStr(var_204), var_1BC, -1
  loc_1B7886D: Set var_88 = var_154
  loc_1B788A5: If (var_88.RecordCount > 0) Then
  loc_1B788BA:   var_14C = var_88.Fields
  loc_1B788D9:   global_184 = CStr(var_14C.Item(0).Value)
  loc_1B788EA: End If
  loc_1B788F0: global_124 = vbNullString
  loc_1B788FA: Call Proc_135_81_EAB324(var_118, var_14C, var_154, var_204, var_23C)
  loc_1B78902: Set var_118 = var_14C
  loc_1B7892A: For var_264 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_264 'Integer
  loc_1B78934:   var_16C = CVar(CLng(var_92)) 'Long
  loc_1B7893C:   var_1AC = CVar(CLng(4)) 'Long
  loc_1B7895C:   var_1BC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B78964:   var_1EC = vbNullString
  loc_1B78972:   var_22C = CVar(CLng(var_92)) 'Long
  loc_1B789C2:   If CBool(CVar(CLng(&HA)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_1B789D9:     If (var_118.RecordCount > 0) Then
  loc_1B789DF:       var_118.MoveFirst
  loc_1B789F0:       var_1AC = CVar(CLng(&HD)) 'Long
  loc_1B78A59:       var_118.Find "V_NO=" & CStr(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))), 0, 1
  loc_1B78A83:       If var_118.EOF Then
  loc_1B78A91:         var_118.AddNew CVar(CLng(var_92)), var_18C
  loc_1B78A9A:         var_16C = CVar(CLng(var_92)) 'Long
  loc_1B78AA2:         var_1AC = CVar(CLng(&HD)) 'Long
  loc_1B78AE8:         var_22C = CVar(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))) 'Double
  loc_1B78AF6:         var_118.Collect = "V_NO"
  loc_1B78B17:         var_118.Update var_16C, var_18C
  loc_1B78B1C:       End If
  loc_1B78B1F:     Else
  loc_1B78B2A:       var_118.AddNew var_16C, var_18C
  loc_1B78B3B:       var_1AC = CVar(CLng(&HD)) 'Long
  loc_1B78B81:       var_22C = CVar(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))) 'Double
  loc_1B78B8F:       var_118.Collect = "V_NO"
  loc_1B78BB0:       var_118.Update CVar(CLng(var_92)), var_18C
  loc_1B78BB5:     End If
  loc_1B78BB5:   End If
  loc_1B78BB8: Next var_264 'Integer
  loc_1B78BC3: var_1F0 = var_118.RecordCount
  loc_1B78BD1: If (var_1F0 > 0) Then
  loc_1B78BDA:   var_118.Sort = "V_NO"
  loc_1B78BE2:   var_118.MoveFirst
  loc_1B78BE7:   ' Referenced from: 1B78CD9
  loc_1B78BED:   var_15A = var_118.EOF
  loc_1B78BF6:   If Not(var_15A) Then
  loc_1B78C04:     If (global_124 <> vbNullString) Then
  loc_1B78C59:       global_124 = CStr(Trim(CVar(global_124 & "," & CStr(var_118.Fields.Item("V_NO").Value))))
  loc_1B78C79:     Else
  loc_1B78C93:       var_150 = var_118.Fields.Item("V_NO")
  loc_1B78CA5:       var_19C = CVar(CStr(var_150.Value)) 'String
  loc_1B78CB4:       var_158 = CStr(Trim(var_19C))
  loc_1B78CBA:       global_124 = var_158
  loc_1B78CD1:     End If
  loc_1B78CD4:     var_118.MoveNext
  loc_1B78CD9:     GoTo loc_1B78BE7
  loc_1B78CDC:   End If
  loc_1B78CE5:   global_124 = global_124
  loc_1B78CE9: End If
  loc_1B78CEB: var_8A = &HFF
  loc_1B78CF7: unk_552771.BeginTrans var_1F0
  loc_1B78D1A: Set var_14C = Me.Txt
  loc_1B78D20: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, "Delete From Stock Where DocID='")
  loc_1B78D28: var_17C = var_150.Text
  loc_1B78D31: var_1FC = -1 & var_158
  loc_1B78D41: unk_552771.Execute CStr(var_118.Fields.Item("V_NO").Value) & "'", var_154, var_8A
  loc_1B78D79: Set var_14C = Me.Txt
  loc_1B78D7F: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, "Delete From Sale1 Where DocID='")
  loc_1B78D87: var_17C = var_150.Text
  loc_1B78D90: var_1FC = -1 & var_158
  loc_1B78DA0: unk_552771.Execute CStr(var_118.Fields.Item("V_NO").Value) & "'", var_154, 
  loc_1B78DD8: Set var_14C = Me.Txt
  loc_1B78DDE: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, "Delete From Sale2 Where DocID='")
  loc_1B78DE6: var_17C = var_150.Text
  loc_1B78DEF: var_1FC = -1 & var_158
  loc_1B78DFF: unk_552771.Execute CStr(var_118.Fields.Item("V_NO").Value) & "'", var_154, 
  loc_1B78E37: Set var_14C = Me.Txt
  loc_1B78E3D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, "Delete From SunTran Where DocID='")
  loc_1B78E45: var_17C = var_150.Text
  loc_1B78E4E: var_1FC = -1 & var_158
  loc_1B78E5E: unk_552771.Execute CStr(var_118.Fields.Item("V_NO").Value) & "'", var_154, 
  loc_1B78E83: If (global_192 = "Room Service") Then
  loc_1B78E94:   Set var_14C = Me.Txt
  loc_1B78E9A:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150)
  loc_1B78EA2:   var_158 = var_150.Text
  loc_1B78EB5:   Set var_154 = Me.Txt
  loc_1B78EBB:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1F4)
  loc_1B78EDE:   Set var_1F8 = Me.Txt
  loc_1B78EE4:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_29C)
  loc_1B78EF3:   Proc_6_7_F25D88(var_19C, CVar(var_29C))
  loc_1B78F18:   Set var_388 = Me.Txt
  loc_1B78F1E:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_38C)
  loc_1B78F26:   var_390 = var_38C.Text
  loc_1B78F36:   Set var_394 = Me.Txt
  loc_1B78F3C:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_398)
  loc_1B78F41:   var_3A8 = 1
  loc_1B78F4D:   var_3C8 = CVar(CLng(&H17)) 'Long
  loc_1B78F93:   Set var_460 = Me.Txt
  loc_1B78F99:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_464, var_468)
  loc_1B78FA1:   var_3C8 = var_464.Text
  loc_1B78FAE:   var_9D8 = Val(var_468)
  loc_1B78FB8:   Set var_4AC = Me.TxtGt
  loc_1B78FBE:   Call 0.Method_TopCtrl1_UnknownEvent_194 (var_15A, var_9D8)
  loc_1B78FD0:   Set var_4B0 = Me.TxtGt
  loc_1B78FD6:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15A, var_4B4, var_4B8)
  loc_1B78FDE:   var_3A8 = var_4B4.Text
  loc_1B78FEB:   var_9E0 = Val(var_4B8)
  loc_1B78FF5:   Set var_73C = Me.TxtGt
  loc_1B78FFB:   Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15C, var_9E0)
  loc_1B7900D:   Set var_740 = Me.TxtGt
  loc_1B79013:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15C, var_744)
  loc_1B79028:   var_9E8 = Val(var_744.Text)
  loc_1B79039:   Proc_6_7_F25D88(var_828, Date)
  loc_1B79042:   Set var_85C = Me.TopCtrl1
  loc_1B79048:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_9E8)
  loc_1B79091:   Set var_920 = Me.Txt
  loc_1B79097:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_924)
  loc_1B790B8:   var_1FC = "Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag) Values (" & "'"
  loc_1B79108:   var_2D4 = CVar(var_1FC & var_158 & "'," & CStr(Val(var_1F4.Text)) & ",") & var_19C & ",'" & CVar(global_128) & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_1B7915D:   var_364 = var_2D4 & "','" & CVar(MemVar_1F92070) & "','" & CVar(global_56) & "','" & CVar(global_132) & "','" & CVar(global_136) 
  loc_1B7918A:   var_4A8 = var_364 & "','" & IIf((var_390 <> vbNullString), CVar(var_398), CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar(var_9D8) & "," 
  loc_1B791F9:   var_618 = var_4A8 & CVar(var_9E0) & "," & CVar(var_E4) & "," & CVar(var_DC) & "," & CVar(var_AC) & "," & CVar(var_A4) & "," & CVar(var_FC) 
  loc_1B79266:   var_788 = var_618 & ", " & CVar(var_104) & "," & CVar(var_B4) & "," & CVar(var_BC) & "," & CVar(var_EC) & "," & CVar(var_9E8) & ",'" 
  loc_1B792A6:   var_8FC = var_788 & CVar(global_124) & "', '" & CVar(MemVar_1F920C8) & "'," & var_828 & ",'" & IIf((var_87C = "Add"), "A", "E") 
  loc_1B792E6:   unk_552771.Execute CStr(var_8FC & "','" & CVar(var_924.Text) & "','" & CVar(global_184) & "','N')"), var_9CC, -1
  loc_1B793C7: Else
  loc_1B793D5:   Set var_14C = Me.Txt
  loc_1B793DB:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158)
  loc_1B793E3:   var_9D0 = var_150.Text
  loc_1B793F6:   Set var_154 = Me.Txt
  loc_1B793FC:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1F4)
  loc_1B79411:   var_204 = Val(var_1F4.Text)
  loc_1B7941F:   Set var_1F8 = Me.Txt
  loc_1B79425:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_29C)
  loc_1B79434:   Proc_6_7_F25D88(var_19C, CVar(var_29C))
  loc_1B79457:   var_3C8 = CVar(CLng(&H17)) 'Long
  loc_1B79460:   Set var_388 = Me.FGrid
  loc_1B79466:   var_3EC = var_388.TextMatrix)
  loc_1B79480:   Set var_38C = Me.Txt
  loc_1B79486:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_394, var_390, var_3EC)
  loc_1B7948E:   var_3C8 = var_394.Text
  loc_1B7949B:   var_9D8 = Val(var_390)
  loc_1B794A5:   Set var_398 = Me.TxtGt
  loc_1B794AB:   Call 0.Method_TopCtrl1_UnknownEvent_194 (var_15A, var_9D8, 1)
  loc_1B794BD:   Set var_3DC = Me.TxtGt
  loc_1B794C3:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15A, var_460, var_468)
  loc_1B794D8:   var_9E0 = Val(var_468)
  loc_1B794E2:   Set var_464 = Me.TxtGt
  loc_1B794E8:   Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15C, var_9E0)
  loc_1B794FA:   Set var_4AC = Me.TxtGt
  loc_1B79500:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15C, var_4B0)
  loc_1B79515:   var_9E8 = Val(var_4B0.Text)
  loc_1B79549:   Proc_6_7_F25D88(var_828, Date)
  loc_1B79552:   Set var_4B4 = Me.TopCtrl1
  loc_1B79558:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_9E8)
  loc_1B795A1:   Set var_73C = Me.Txt
  loc_1B795A7:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_740)
  loc_1B795C8:   var_1FC = "Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag) Values (" & "'"
  loc_1B79618:   var_2D4 = CVar(var_1FC & var_158 & "'," & CStr(var_460.Text) & ",") & var_19C & ",'" & CVar(global_128) & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_1B7966D:   var_364 = var_2D4 & "','" & CVar(MemVar_1F92070) & "','" & CVar(global_56) & "','" & CVar(global_132) & "','" & CVar(global_136) 
  loc_1B796D1:   var_518 = var_364 & "','" & CVar(CStr(var_3EC)) & "'," & CVar(var_9D8) & "," & CVar(var_9E0) & "," & CVar(var_E4) & "," & CVar(var_DC) 
  loc_1B79749:   var_698 = var_518 & "," & CVar(var_AC) & "," & CVar(var_A4) & "," & CVar(var_FC) & ", " & CVar(var_104) & "," & CVar(var_B4) & "," & CVar(var_BC) 
  loc_1B79794:   var_7E8 = var_698 & "," & CVar(var_EC) & "," & CVar(var_9E8) & ",'" & Trim(Left(global_124, &HFF)) & "', '" & CVar(MemVar_1F920C8) 
  loc_1B797DD:   var_988 = var_7E8 & "'," & var_828 & ",'" & IIf((var_87C = "Add"), "A", "E") & "','" & CVar(var_740.Text) & "','" & CVar(global_184) 
  loc_1B797E6:   var_9A8 = var_988 & "','N')" 
  loc_1B797F4:   unk_552771.Execute CStr(var_9A8), var_9CC, -1
  loc_1B798C8: End If
  loc_1B798ED: For var_9EC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_9EC 'Integer
  loc_1B798F7:   var_16C = CVar(CLng(var_92)) 'Long
  loc_1B798FF:   var_1AC = CVar(CLng(4)) 'Long
  loc_1B7991F:   var_1BC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B79946:   Set var_150 = Me.FGrid
  loc_1B79957:   var_158 = CStr(var_150.TextMatrix))
  loc_1B79985:   If CBool(CVar(CLng(7)) And (CDbl(Val(var_158)) <> CDbl(0))) Then
  loc_1B79996:     Set var_14C = Me.Txt
  loc_1B7999C:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, CVar(CLng(var_92)), (var_1BC <> vbNullString))
  loc_1B799A4:     var_1AC = var_150.Text
  loc_1B799AD:     var_16C = CVar(CLng(var_92)) 'Long
  loc_1B799D7:     var_204 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B799FA:     Set var_1F8 = Me.Txt
  loc_1B79A00:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_29C, var_9F0, var_204, CVar(CLng(0)))
  loc_1B79A15:     var_9D8 = Val(var_9F0)
  loc_1B79A23:     Set var_2B0 = Me.Txt
  loc_1B79A29:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_388, var_9D8, var_29C.Text)
  loc_1B79A38:     Proc_6_7_F25D88(var_1BC, CVar(var_388), 1)
  loc_1B79A41:     var_24C = CVar(CLng(var_92)) 'Long
  loc_1B79A52:     Set var_38C = Me.FGrid
  loc_1B79A58:     var_2D4 = var_38C.TextMatrix)
  loc_1B79A7F:     var_314 = Me.FGrid.TextMatrix)
  loc_1B79A99:     Set var_398 = Me.Txt
  loc_1B79A9F:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_3DC, var_A00, var_314, CVar(CLng(&H16)), CVar(CLng(var_92)))
  loc_1B79AB7:     Set var_460 = Me.Txt
  loc_1B79ABD:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_464, CVar(CLng(&H15)))
  loc_1B79AC2:     var_44C = 1
  loc_1B79ACE:     var_498 = CVar(CLng(&H17)) 'Long
  loc_1B79B0A:     var_528 = CVar(CLng(var_92)) 'Long
  loc_1B79B12:     var_568 = CVar(CLng(&HB)) 'Long
  loc_1B79B1B:     Set var_4B0 = Me.FGrid
  loc_1B79B31:     var_5C8 = CVar(CLng(var_92)) 'Long
  loc_1B79B39:     var_608 = CVar(CLng(&H13)) 'Long
  loc_1B79B58:     var_668 = CVar(CLng(var_92)) 'Long
  loc_1B79B60:     var_6A8 = CVar(CLng(&H14)) 'Long
  loc_1B79B69:     Set var_73C = Me.FGrid
  loc_1B79B7F:     var_708 = CVar(CLng(var_92)) 'Long
  loc_1B79B87:     var_758 = CVar(CLng(6)) 'Long
  loc_1B79BA6:     var_7B8 = CVar(CLng(var_92)) 'Long
  loc_1B79BAE:     var_7F8 = CVar(CLng(7)) 'Long
  loc_1B79BB7:     Set var_744 = Me.FGrid
  loc_1B79BD7:     var_8CC = CVar(CLng(var_92)) 'Long
  loc_1B79BDF:     var_958 = CVar(CLng(9)) 'Long
  loc_1B79C08:     var_A18 = CVar(CLng(var_92)) 'Long
  loc_1B79C10:     var_A38 = CVar(CLng(8)) 'Long
  loc_1B79C19:     Set var_920 = Me.FGrid
  loc_1B79C39:     var_A7C = CVar(CLng(var_92)) 'Long
  loc_1B79C41:     var_A9C = CVar(CLng(&HA)) 'Long
  loc_1B79C6A:     var_AE0 = CVar(CLng(var_92)) 'Long
  loc_1B79C72:     var_B00 = CVar(CLng(&H10)) 'Long
  loc_1B79C81:     var_7E8 = Me.FGrid.TextMatrix)
  loc_1B79C9B:     var_B44 = CVar(CLng(var_92)) 'Long
  loc_1B79CA3:     var_B64 = CVar(CLng(&H11)) 'Long
  loc_1B79CAC:     Set var_B78 = Me.FGrid
  loc_1B79CCC:     var_BAC = CVar(CLng(var_92)) 'Long
  loc_1B79CD4:     var_BCC = CVar(CLng(&HE)) 'Long
  loc_1B79CF6:     var_1110 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B79D0E:     Set var_C48 = Me.FGrid
  loc_1B79D27:     var_1118 = Val(CStr(var_C48.TextMatrix)))
  loc_1B79D58:     var_1120 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B79D69:     Proc_6_7_F25D88(var_9A8, Date, var_1120, CVar(CLng(&H12)), CVar(CLng(var_92)), var_1118, CVar(CLng(&HF)), CVar(CLng(var_92)))
  loc_1B79D72:     Set var_D18 = Me.TopCtrl1
  loc_1B79D78:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_1110)
  loc_1B79DB7:     var_DE8 = CVar(CLng(var_92)) 'Long
  loc_1B79DBF:     var_E08 = CVar(CLng(&H1A)) 'Long
  loc_1B79DC8:     Set var_E1C = Me.FGrid
  loc_1B79DDE:     var_E7C = CVar(CLng(var_92)) 'Long
  loc_1B79DE6:     var_E9C = CVar(CLng(&H1A)) 'Long
  loc_1B79E05:     var_F10 = CVar(CLng(var_92)) 'Long
  loc_1B79E0D:     var_F30 = CVar(CLng(&HD)) 'Long
  loc_1B79E2C:     var_FA4 = CVar(CLng(var_92)) 'Long
  loc_1B79E34:     var_FC4 = CVar(CLng(&HC)) 'Long
  loc_1B79E74:     var_1080 = Me.FGrid.TextMatrix)
  loc_1B79E94:     var_1FC = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,DiscApp,RoundOff,UNIT,QtyIss,Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,KOTDocId,KotSno,DelFlag,ItemRestCode) Values (" & "'"
  loc_1B79EDB:     var_9AC = var_1FC & var_158 & "'," & CStr(var_204) & ",'" & global_128 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070
  loc_1B79EF5:     var_1DC = CVar(var_9AC & "'," & CStr(var_9D8) & ",") 'String
  loc_1B79F42:     var_344 = var_1DC & var_1BC & ",'" & CVar(global_56) & "','" & CVar(CStr(var_3DC.Text)) & "','" & CVar(CStr(var_314)) & "','" 
  loc_1B79F5D:     var_488 = var_344 & IIf((var_A00 <> vbNullString), CVar(var_464), CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & CVar(CStr(var_4B0.TextMatrix))) 
  loc_1B79F66:     var_4A8 = var_488 & "','" 
  loc_1B79F71:     var_518 = var_4A8 & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1B79F99:     var_618 = var_518 & "','" & CVar(CStr(var_73C.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1B79FB6:     var_698 = var_618 & "'," & CVar(Val(CStr(var_744.TextMatrix)))) & "," 
  loc_1B79FE9:     var_7A8 = var_698 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(var_920.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1B7A039:     var_8DC = var_7A8 & "," & CVar(Val(CStr(var_7E8))) & "," & CVar(Val(CStr(var_B78.TextMatrix)))) & "," & CVar(var_1110) & "," & CVar(var_1118) 
  loc_1B7A089:     var_DD8 = var_8DC & "," & CVar(var_1120) & ",'" & CVar(MemVar_1F920C8) & "'," & var_9A8 & ",'" & IIf((var_D38 = "Add"), "A", "E") & "','" 
  loc_1B7A0BC:     var_F74 = var_DD8 & CVar(CStr(var_E1C.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1B7A0FB:     unk_552771.Execute CStr(var_F74 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'N','" & CVar(CStr(var_1080)) & "')"), var_10E4, -1
  loc_1B7A258:     If (global_180 = "Y") Then
  loc_1B7A269:       Set var_14C = Me.Txt
  loc_1B7A26F:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, var_10E8, var_1080, CVar(CLng(1)), CVar(CLng(var_92)))
  loc_1B7A277:       var_1128 = var_150.Text
  loc_1B7A280:       var_16C = CVar(CLng(var_92)) 'Long
  loc_1B7A288:       var_1AC = CVar(CLng(0)) 'Long
  loc_1B7A2B1:       var_1EC = CVar(CLng(var_92)) 'Long
  loc_1B7A2B9:       var_23C = CVar(CLng(&HD)) 'Long
  loc_1B7A2D8:       var_260 = CVar(CLng(var_92)) 'Long
  loc_1B7A2E0:       var_354 = CVar(CLng(&HC)) 'Long
  loc_1B7A33E:       var_390 = "Update KOT Set ContraDocId='" & var_158 & "',ContraSno=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & " where docid='" & CStr(Me.FGrid.TextMatrix))
  loc_1B7A35A:       unk_552771.Execute var_390 & "' And SNo=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_1DC, -1
  loc_1B7A396:     End If
  loc_1B7A396:   End If
  loc_1B7A399: Next var_9EC 'Integer
  loc_1B7A3C3: For var_112C = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_92 = var_112C 'Integer
  loc_1B7A3CD:   var_16C = CVar(CLng(var_92)) 'Long
  loc_1B7A3D5:   var_1AC = CVar(CLng(2)) 'Long
  loc_1B7A41C:   Set var_150 = Me.FGCat
  loc_1B7A42D:   var_158 = CStr(var_150.TextMatrix))
  loc_1B7A45B:   If CBool(CVar(CLng(6)) And (CDbl(Val(var_158)) <> CDbl(0))) Then
  loc_1B7A46C:     Set var_14C = Me.Txt
  loc_1B7A472:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, CVar(CLng(var_92)))
  loc_1B7A47A:     (Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) = var_150.Text
  loc_1B7A4AD:     var_204 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1B7A4C5:     Set var_1F4 = Me.FGCat
  loc_1B7A4CB:     var_19C = var_1F4.TextMatrix)
  loc_1B7A4DE:     var_9D8 = Val(CStr(var_19C))
  loc_1B7A4EE:     var_9AC = Me.LblVPrefix.Caption
  loc_1B7A501:     Set var_29C = Me.Txt
  loc_1B7A507:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_2B0, var_A00, var_9D8, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1B7A51C:     var_9E0 = Val(var_A00)
  loc_1B7A52A:     Set var_388 = Me.Txt
  loc_1B7A530:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_38C, var_9E0, CVar(CLng(1)))
  loc_1B7A53F:     Proc_6_7_F25D88(var_1DC, CVar(var_38C), CVar(CLng(var_92)))
  loc_1B7A548:     var_374 = CVar(CLng(var_92)) 'Long
  loc_1B7A550:     var_3B8 = CVar(CLng(2)) 'Long
  loc_1B7A559:     Set var_394 = Me.FGCat
  loc_1B7A56F:     var_3FC = CVar(CLng(var_92)) 'Long
  loc_1B7A577:     var_478 = CVar(CLng(4)) 'Long
  loc_1B7A599:     var_9E8 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1B7A5B1:     Set var_3DC = Me.FGCat
  loc_1B7A5CA:     var_10F0 = Val(CStr(var_3DC.TextMatrix)))
  loc_1B7A5FB:     var_10F8 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1B7A60C:     Proc_6_7_F25D88(var_4A8, Date, var_10F8, CVar(CLng(6)), CVar(CLng(var_92)), var_10F0, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_1B7A615:     Set var_464 = Me.TopCtrl1
  loc_1B7A61B:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_9E8)
  loc_1B7A634:     var_578 = "A"
  loc_1B7A66A:     var_1FC = "Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag) Values (" & "'"
  loc_1B7A6C4:     var_9FC = var_1FC & var_158 & "'," & CStr(var_2B0.Text) & "," & CStr(var_9D8) & ",'" & global_128 & "','" & var_9AC & "','" & MemVar_1F92070
  loc_1B7A70E:     var_304 = CVar(var_9FC & "'," & CStr(var_9E0) & ",") & var_1DC & ",'" & CVar(global_56) & "','" & CVar(CStr(var_394.TextMatrix))) 
  loc_1B7A76D:     var_4D8 = var_304 & "'," & CVar(var_9E8) & "," & CVar(var_10F0) & "," & CVar(var_10F8) & ",'" & CVar(MemVar_1F920C8) & "'," & var_4A8 
  loc_1B7A794:     unk_552771.Execute CStr(var_4D8 & ",'" & IIf((var_518 = "Add"), var_578, "E") & "','N')"), var_618, -1
  loc_1B7A83A:   End If
  loc_1B7A83D: Next var_112C 'Integer
  loc_1B7A84E: Set var_14C = Me.TxtGt
  loc_1B7A854: Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15A, var_92)
  loc_1B7A85F: For var_1130 =  To var_15A: 1 = var_1130 'Integer
  loc_1B7A872:   Set var_14C = Me.TxtGt
  loc_1B7A878:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_150)
  loc_1B7A880:   var_15A = var_150.Visible
  loc_1B7A892:   If (var_15A = &HFF) Then
  loc_1B7A8A3:     Set var_14C = Me.Txt
  loc_1B7A8A9:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150)
  loc_1B7A8C4:     Set var_154 = Me.Txt
  loc_1B7A8CA:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1F4)
  loc_1B7A8ED:     Set var_1F8 = Me.Txt
  loc_1B7A8F3:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_29C)
  loc_1B7A902:     Proc_6_7_F25D88(var_19C, CVar(var_29C))
  loc_1B7A914:     Set var_2B0 = Me.LblCap
  loc_1B7A91A:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_388)
  loc_1B7A934:     Set var_38C = Me.TxtPer
  loc_1B7A93A:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_394)
  loc_1B7A94F:     var_9D8 = Val(var_394.Tag)
  loc_1B7A95F:     Set var_398 = Me.LblCap
  loc_1B7A965:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_3DC, var_9AC)
  loc_1B7A97F:     Set var_460 = Me.LblAt
  loc_1B7A985:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_464)
  loc_1B7A99F:     Set var_4AC = Me.TxtGt
  loc_1B7A9A5:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_4B0)
  loc_1B7A9BF:     Set var_4B4 = Me.TxtPer
  loc_1B7A9C5:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_73C)
  loc_1B7A9DA:     var_9E0 = Val(var_73C.Text)
  loc_1B7A9EA:     Set var_740 = Me.TxtGt
  loc_1B7A9F0:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_744, var_9FC)
  loc_1B7AA05:     var_9E8 = Val(var_9FC)
  loc_1B7AA15:     Set var_85C = Me.LblDummy
  loc_1B7AA1B:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_920, var_A00)
  loc_1B7AA30:     var_10F0 = Val(var_A00)
  loc_1B7AA41:     Proc_6_7_F25D88(var_518, Date)
  loc_1B7AA4A:     Set var_924 = Me.TopCtrl1
  loc_1B7AA50:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_10F0)
  loc_1B7AA69:     var_5D8 = "A"
  loc_1B7AA96:     Set var_9D0 = Me.Txt
  loc_1B7AA9C:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(9), var_B78)
  loc_1B7AAAB:     Proc_6_7_F25D88(var_698, CVar(var_B78))
  loc_1B7AABD:     Set var_BE0 = Me.LblDummy
  loc_1B7AAC3:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_92, var_C48)
  loc_1B7AACB:     var_A04 = var_C48.Tag
  loc_1B7AAE4:     var_1FC = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode) Values ('" & var_150.Text
  loc_1B7AAEB:     var_210 = var_1FC & "',"
  loc_1B7AB3B:     var_2AC = CVar(var_210 & CStr(var_92) & ",'" & global_128 & "'," & CStr(Val(var_1F4.Text)) & ",") & var_19C & ",'" & CVar(var_388.Tag) 
  loc_1B7AB4F:     var_2D4 = var_2AC & "'," & CVar(var_3DC.Caption) 
  loc_1B7ABA5:     var_41C = var_2D4 & ",'" & CVar(var_9AC) & "','" & CVar(var_464.Tag) & "','" & CVar(var_4B0.Tag) & "'," & CVar(var_744.Text) & "," 
  loc_1B7ABF7:     var_638 = var_41C & CVar(var_920.Caption) & "," & CVar(var_10F0) & ",'" & CVar(MemVar_1F920C8) & "'," & var_518 & ",'" & IIf((var_578 = "Add"), var_5D8, "E") 
  loc_1B7AC39:     var_788 = var_638 & "'," & var_698 & ",'" & CVar(var_A04) & "','" & CVar(global_56) & "','N','" 
  loc_1B7AC50:     var_A08 = CStr(var_788 & CVar(MemVar_1F92070) & "')")
  loc_1B7AC5A:     unk_552771.Execute var_A08, var_7E8, -1
  loc_1B7AD20:   End If
  loc_1B7AD23: Next var_1130 'Integer
  loc_1B7AD33: If (global_180 = "Y") Then
  loc_1B7AD5B:   For var_1134 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_1134 'Integer
  loc_1B7AD65:     var_16C = CVar(CLng(var_92)) 'Long
  loc_1B7AD6D:     var_1AC = CVar(CLng(4)) 'Long
  loc_1B7AD7C:     var_17C = Me.FGrid.TextMatrix)
  loc_1B7ADB4:     Set var_150 = Me.FGrid
  loc_1B7ADF3:     If CBool(CVar(CLng(&HA)) And (CDbl(Val(CStr(var_150.TextMatrix)))) <> CDbl(0))) Then
  loc_1B7ADF9:       Proc_6_104_ED5D18(var_17C, CVar(CLng(var_92)), (Trim(CVar(CStr(var_17C))) <> vbNullString))
  loc_1B7AE02:       var_18C = CVar(CLng(var_92)) 'Long
  loc_1B7AE0A:       var_1CC = CVar(CLng(&HD)) 'Long
  loc_1B7AE5A:       var_2AC = CVar("Update KOT Set Pending='N',U_Name1='" & MemVar_1F920C8 & "',U_EntDt1=") & var_17C & ",U_AE1='E' where docid='" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1B7AE71:       unk_552771.Execute CStr(var_2AC & "'"), var_2D4, -1
  loc_1B7AE99:     End If
  loc_1B7AE9C:   Next var_1134 'Integer
  loc_1B7AEA1: End If
  loc_1B7AEA5: Set var_14C = Me.TopCtrl1
  loc_1B7AEAB: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_1B7AEC0: If CBool( <> "Edit") Then
  loc_1B7AECE:   If (global_192 = "Room Service") Then
  loc_1B7AED4:     var_18C = 0
  loc_1B7AF04:     unk_552771.Execute "SELECT SHORTNAME FROM DEPART WHERE CODE='" & global_56 & "'", var_17C, -1
  loc_1B7AF0C:     var_14C = var_14C.Fields
  loc_1B7AF14:     var_18C = var_150.Item(var_150)
  loc_1B7AF2B:     var_1AC = " BILL NO.-"
  loc_1B7AF30:     var_1DC = (Trim(CVar(var_154)) + var_1AC)
  loc_1B7AF39:     var_274 = (CVar("Update KOT Set Pending='N',U_Name1='" & MemVar_1F920C8 & "',U_EntDt1=") & var_17C & ",U_AE1='E' where docid='" + " ")
  loc_1B7AF4B:     Set var_1F4 = Me.Txt
  loc_1B7AF51:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1F8, var_210)
  loc_1B7AF59:     var_274 = var_1F8.Text
  loc_1B7AF64:     var_2AC = (var_154 + CVar(var_210))
  loc_1B7AF69:     var_120 = CStr(var_2AC)
  loc_1B7AF95:     var_146 = (var_146 + 1)
  loc_1B7AFAC:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150)
  loc_1B7AFCD:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1F4)
  loc_1B7AFE2:     var_204 = Val(var_1F4.Text)
  loc_1B7AFE9:     var_17C = CVar(Me.LblVPrefix) 'Address
  loc_1B7B000:     Set var_1F8 = Me.Txt
  loc_1B7B006:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_29C)
  loc_1B7B015:     Proc_6_7_F25D88(var_2AC, CVar(var_29C))
  loc_1B7B025:     Set var_2B0 = Me.Txt
  loc_1B7B02B:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_388)
  loc_1B7B046:     Set var_38C = Me.TxtGt
  loc_1B7B04C:     Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15A, var_204)
  loc_1B7B05E:     Set var_394 = Me.TxtGt
  loc_1B7B064:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15A, var_398)
  loc_1B7B079:     var_9D8 = Val(var_398.Text)
  loc_1B7B083:     Set var_3DC = Me.TxtGt
  loc_1B7B089:     Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15C, var_9D8)
  loc_1B7B09B:     Set var_460 = Me.TxtGt
  loc_1B7B0A1:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15C, var_464)
  loc_1B7B0B6:     var_9E0 = Val(var_464.Text)
  loc_1B7B0C7:     Set var_4AC = Me.Txt
  loc_1B7B0CD:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_4B0, var_A04)
  loc_1B7B0E2:     var_9E8 = Val(var_A04)
  loc_1B7B0F3:     Set var_4B4 = Me.Txt
  loc_1B7B0F9:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_73C, var_A08)
  loc_1B7B111:     Set var_740 = Me.Txt
  loc_1B7B117:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_744)
  loc_1B7B12A:     Set var_85C = Me.Txt
  loc_1B7B130:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_920)
  loc_1B7B16C:     Proc_6_7_F25D88(var_5D8, Date)
  loc_1B7B175:     Set var_924 = Me.TopCtrl1
  loc_1B7B17B:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_146)
  loc_1B7B1CA:     var_158 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1B7B1E6:     var_250 = var_158 & "RoomType,RoomNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode) Values (" & "'" & var_150.Text
  loc_1B7B232:     var_1BC = CVar(var_250 & "'," & CStr(var_146) & ",'" & global_128 & "'," & CStr(var_204) & ",'" & MemVar_1F92070 & "','") 'String
  loc_1B7B238:     var_1DC = var_1BC & Trim(var_17C) 
  loc_1B7B290:     var_384 = var_1DC & "'," & var_2AC & ",'" & Trim(CVar(var_388)) & "'" & ",'','','" & CVar(var_120) & "','" & CVar(var_124) & "','Room'," 
  loc_1B7B2DC:     var_518 = var_384 & CVar(var_9D8) & "," & CVar(var_4B0.Text) & "," & CVar(var_73C.Text) & ",'REST'," & "'RO','" & IIf((var_A08 <> vbNullString), CVar(var_744), CVar(var_920.Tag)) 
  loc_1B7B318:     var_6F8 = var_518 & "','','','',Null," & "Null,'" & CVar(MemVar_1F920C8) & "'," & var_5D8 & ",'" & IIf((var_638 = "Add"), "A", "E") 
  loc_1B7B321:     var_718 = var_6F8 & "','" 
  loc_1B7B345:     unk_552771.Execute CStr(var_718 & CVar(global_56) & "')"), var_788, -1
  loc_1B7B434:     unk_552771.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F92070 & "TOUT" & "'", var_17C, -1
  loc_1B7B43F:     Set var_128 = Me.Txt
  loc_1B7B465:     If (var_128.RecordCount > 0) Then
  loc_1B7B494:       var_150 = var_128.Fields.Item("TaxStru")
  loc_1B7B4A4:       var_19C = "Select * from taxstru where Code='" & var_150.Value 
  loc_1B7B4AD:       var_1BC = var_19C & "' Order by Sno" 
  loc_1B7B4B1:       var_158 = CStr(var_1BC)
  loc_1B7B4BB:       unk_552771.Execute var_158, var_1DC, -1
  loc_1B7B4C6:       Set var_118 = Me.Txt
  loc_1B7B4E3:     Else
  loc_1B7B4F6:       var_17C = "System Defined Revenue is not defined"
  loc_1B7B4FC:       MsgBox(var_17C, 0, var_19C, var_1BC, var_1DC)
  loc_1B7B512:       unk_552771.RollbackTrans
  loc_1B7B517:       Exit Sub
  loc_1B7B518:     End If
  loc_1B7B51E:     var_146 = (var_146 + 1)
  loc_1B7B545:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HA), var_150, var_158, "Select Docid,GuestProf from GuestFolio where FolioNo=", var_17C, -1)
  loc_1B7B54D:     var_154 = var_150.Text
  loc_1B7B55F:     unk_552771.Execute var_146 & var_158, var_154, Me.Txt
  loc_1B7B56A:     Set var_12C = var_154
  loc_1B7B594:     If (var_12C.RecordCount > 0) Then
  loc_1B7B5B1:       var_150 = var_12C.Fields.Item("GuestProf")
  loc_1B7B5C2:       var_11C = CStr(var_150.Value)
  loc_1B7B5CF:     End If
  loc_1B7B5DD:     Set var_14C = Me.Txt
  loc_1B7B5E3:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150)
  loc_1B7B5EB:     var_214 = var_150.Text
  loc_1B7B5FE:     Set var_154 = Me.Txt
  loc_1B7B604:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1F4)
  loc_1B7B619:     var_204 = Val(var_1F4.Text)
  loc_1B7B637:     Set var_1F8 = Me.Txt
  loc_1B7B63D:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_29C)
  loc_1B7B64C:     Proc_6_7_F25D88(var_2AC, CVar(var_29C))
  loc_1B7B65C:     Set var_2B0 = Me.Txt
  loc_1B7B662:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_388)
  loc_1B7B671:     var_2F4 = Trim(CVar(var_388))
  loc_1B7B6A4:     Set var_398 = Me.TxtGt
  loc_1B7B6AA:     Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15A, var_204)
  loc_1B7B6BC:     Set var_3DC = Me.TxtGt
  loc_1B7B6C2:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15A, var_460)
  loc_1B7B6D7:     var_9D8 = Val(var_460.Text)
  loc_1B7B6E1:     Set var_464 = Me.TxtGt
  loc_1B7B6E7:     Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15C, var_9D8)
  loc_1B7B6F9:     Set var_4AC = Me.TxtGt
  loc_1B7B6FF:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15C, var_4B0)
  loc_1B7B714:     var_9E0 = Val(var_4B0.Text)
  loc_1B7B725:     Set var_4B4 = Me.Txt
  loc_1B7B72B:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_73C, var_A04)
  loc_1B7B740:     var_9E8 = Val(var_A04)
  loc_1B7B751:     Set var_740 = Me.Txt
  loc_1B7B757:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_744, var_A08)
  loc_1B7B76F:     Set var_85C = Me.Txt
  loc_1B7B775:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_920)
  loc_1B7B788:     Set var_924 = Me.Txt
  loc_1B7B78E:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_9D0)
  loc_1B7B7B7:     var_5D8 = IIf((var_A08 <> vbNullString), CVar(var_920), CVar(var_9D0.Tag))
  loc_1B7B7CA:     Set var_B78 = Me.Txt
  loc_1B7B7D0:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HA), var_BE0)
  loc_1B7B7EB:     Proc_6_7_F25D88(var_718, Date)
  loc_1B7B7F4:     Set var_C48 = Me.TopCtrl1
  loc_1B7B7FA:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_9D0)
  loc_1B7B870:     var_158 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,"
  loc_1B7B87E:     var_210 = var_158 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid) Values ("
  loc_1B7B885:     var_218 = var_210 & "'"
  loc_1B7B8B0:     var_4B8 = var_218 & var_214 & "'," & CStr(var_146) & ",'" & global_128
  loc_1B7B8D1:     var_9F8 = var_4B8 & "'," & CStr(var_204) & ",'" & MemVar_1F92070
  loc_1B7B923:     var_344 = CVar(var_9F8 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_2AC & ",'" & var_2F4 & "'" & ",'" & CVar(var_11C) & "','','" 
  loc_1B7B965:     var_45C = var_344 & CVar(var_120) & "','" & var_128.Fields.Item("Code").Value & "','Room'," & CVar(var_9D8) & "," & CVar(var_73C.Text) 
  loc_1B7B9B7:     var_578 = var_45C & "," & CVar(var_744.Text) & ",'" & CVar(global_132) & "'," & "'" & CVar(global_136) & "','" 
  loc_1B7BA06:     var_768 = var_578 & var_5D8 & "'," & CVar(var_BE0.Text) & ",'','','',Null," & "Null,'" & CVar(MemVar_1F920C8) & "'," & var_718 & ",'" 
  loc_1B7BA3C:     var_8BC = var_768 & IIf((var_788 = "Add"), "A", "E") & "','" & CVar(global_56) & "','" & var_12C.Fields.Item("DocID").Value & "')" 
  loc_1B7BA4A:     unk_552771.Execute CStr(var_8BC), var_8DC, -1
  loc_1B7BB42:     Set var_14C = Me.Txt
  loc_1B7BB48:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150)
  loc_1B7BB63:     Set var_154 = Me.Txt
  loc_1B7BB69:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1F4)
  loc_1B7BB71:     var_158 = var_1F4.Text
  loc_1B7BB7E:     var_1108 = Val(var_158)
  loc_1B7BB9F:     Set var_1F8 = Me.Txt
  loc_1B7BBA5:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_29C, var_4B8)
  loc_1B7BBBD:     Set var_2B0 = Me.Txt
  loc_1B7BBC3:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_388)
  loc_1B7BBD2:     var_1DC = Trim(CVar(var_388))
  loc_1B7BBE9:     var_38C = var_128.Fields
  loc_1B7BBF9:     var_364 = var_38C.Item("Code").Value
  loc_1B7BC05:     Set var_398 = Me.TxtGt
  loc_1B7BC0B:     Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15A)
  loc_1B7BC1D:     Set var_3DC = Me.TxtGt
  loc_1B7BC23:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15A, var_460)
  loc_1B7BC38:     var_1110 = Val(var_460.Text)
  loc_1B7BC42:     Set var_464 = Me.TxtGt
  loc_1B7BC48:     Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15C, var_1110)
  loc_1B7BC5A:     Set var_4AC = Me.TxtGt
  loc_1B7BC60:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15C, var_4B0)
  loc_1B7BC75:     var_1118 = Val(var_4B0.Text)
  loc_1B7BC86:     Set var_4B4 = Me.Txt
  loc_1B7BC8C:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_73C, var_214)
  loc_1B7BC94:     var_1118 = var_73C.Text
  loc_1B7BCA1:     var_1120 = Val(var_214)
  loc_1B7BCB2:     Set var_740 = Me.Txt
  loc_1B7BCB8:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_744, var_218)
  loc_1B7BCC0:     var_1120 = var_744.Text
  loc_1B7BCD0:     Set var_85C = Me.Txt
  loc_1B7BCD6:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_920)
  loc_1B7BCE9:     Set var_924 = Me.Txt
  loc_1B7BCEF:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_9D0)
  loc_1B7BD18:     var_2AC = IIf((var_218 <> vbNullString), CVar(var_920), CVar(var_9D0.Tag))
  loc_1B7BD2B:     Set var_B78 = Me.Txt
  loc_1B7BD31:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HA), var_BE0)
  loc_1B7BD39:     var_9FC = var_BE0.Text
  loc_1B7BD41:     var_2C4 = Date
  loc_1B7BD49:     var_2D4 = Date
  loc_1B7BD51:     var_2E4 = Date
  loc_1B7BD5A:     Set var_C48 = Me.TopCtrl1
  loc_1B7BD60:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_E1C)
  loc_1B7BD96:     var_344 = IIf((var_2F4 = "Add"), "A", "E")
  loc_1B7BDBD:     var_384 = var_12C.Fields.Item("DocID").Value
  loc_1B7BDC7:     var_C4C = 0
  loc_1B7BDD2:     var_BE4 = 0
  loc_1B7BDE5:     var_B7C = 0
  loc_1B7BDF0:     var_B14 = 0
  loc_1B7BE2D:     var_A08 = vbNullString
  loc_1B7BE36:     var_A04 = vbNullString
  loc_1B7BE3F:     var_A00 = vbNullString
  loc_1B7BE78:     var_9F4 = "Room"
  loc_1B7BE8C:     var_9AC = vbNullString
  loc_1B7BE95:     var_928 = vbNullString
  loc_1B7BED9:     Proc_96_8_1CC2560(MemVar_1F92070 & "TOUT", var_150.Text, var_146, global_128, CLng(var_29C.Text), MemVar_1F92070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_4B8))
  loc_1B7BF76:   Else
  loc_1B7BF84:     Set var_14C = Me.Txt
  loc_1B7BF8A:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_150, var_158, CStr(var_1DC), var_928)
  loc_1B7BF92:     var_9AC = var_150.Text
  loc_1B7BFAE:     If (CDbl(Val(var_158)) > CDbl(0)) Then
  loc_1B7BFD8:       var_214 = "CASH RECD. " & Me.LblRest.Caption & " " & "BILL NO.-"
  loc_1B7BFF0:       Set var_150 = Me.Txt
  loc_1B7BFF6:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_154, var_218, var_214 & " ")
  loc_1B7BFFE:       var_120 = var_154.Text
  loc_1B7C030:       Set var_14C = Me.Txt
  loc_1B7C036:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_214)
  loc_1B7C03E:       var_9F4 = var_150.Text
  loc_1B7C051:       Set var_154 = Me.Txt
  loc_1B7C057:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_1F4)
  loc_1B7C06C:       var_204 = Val(var_1F4.Text)
  loc_1B7C07A:       var_19C = Trim(CVar(Me.LblVPrefix))
  loc_1B7C08A:       Set var_1F8 = Me.Txt
  loc_1B7C090:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_29C)
  loc_1B7C09F:       Proc_6_7_F25D88(var_2AC, CVar(var_29C))
  loc_1B7C0AB:       Set var_2B0 = Me.TxtGt
  loc_1B7C0B1:       Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15A, var_204)
  loc_1B7C0C3:       Set var_388 = Me.TxtGt
  loc_1B7C0C9:       Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15A, var_38C)
  loc_1B7C0DE:       var_9D8 = Val(var_38C.Text)
  loc_1B7C0E8:       Set var_394 = Me.TxtGt
  loc_1B7C0EE:       Call 0.Method_TopCtrl1_UnknownEvent_198 (var_15C, var_9D8)
  loc_1B7C100:       Set var_398 = Me.TxtGt
  loc_1B7C106:       Call 0.Method_TopCtrl1_UnknownEvent_190 (var_15C, var_3DC)
  loc_1B7C11B:       var_9E0 = Val(var_3DC.Text)
  loc_1B7C12C:       Set var_460 = Me.Txt
  loc_1B7C132:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_464, var_9F8)
  loc_1B7C147:       var_9E8 = Val(var_9F8)
  loc_1B7C158:       Set var_4AC = Me.Txt
  loc_1B7C15E:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_4B0, var_9FC)
  loc_1B7C179:       Proc_6_7_F25D88(var_578, Date)
  loc_1B7C182:       Set var_4B4 = Me.TopCtrl1
  loc_1B7C188:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_1110)
  loc_1B7C1D7:       var_158 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate, " & "GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1B7C1E5:       var_210 = var_158 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode) Values ("
  loc_1B7C1F3:       var_250 = var_210 & "'" & var_214
  loc_1B7C242:       var_2C4 = CVar(var_250 & "',1,'" & global_128 & "'," & CStr(var_204) & ",'" & MemVar_1F92070 & "','") & var_19C & "'," & var_2AC 
  loc_1B7C285:       var_334 = var_2C4 & ",'','','" & CVar(CStr(var_364) & var_210 & "'") & "','" & CVar(var_124) & "','Cash'," & CVar(var_9D8) & "," 
  loc_1B7C2D9:       var_43C = var_334 & CVar(var_464.Text) & "," & CVar(var_4B0.Tag) & ",'" & CVar(global_132) & "'," & "'" & CVar(global_136) 
  loc_1B7C328:       var_698 = var_43C & "','" & CVar(var_9FC) & "',0,'','','',Null," & "Null,'" & CVar(MemVar_1F920C8) & "'," & var_578 & ",'" & IIf((var_5D8 = "Add"), "A", "E") 
  loc_1B7C355:       unk_552771.Execute CStr(var_698 & "','" & CVar(global_56) & "')"), var_718, -1
  loc_1B7C401:     End If
  loc_1B7C401:   End If
  loc_1B7C405:   Set var_14C = Me.TopCtrl1
  loc_1B7C40B:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_73C)
  loc_1B7C420:   If ( = "Add") Then
  loc_1B7C437:     var_158 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1B7C45D:     var_1BC = CVar(var_158 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_128 & "' And VP.Date_From<=") 'String
  loc_1B7C46E:     Set var_14C = Me.Txt
  loc_1B7C474:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_150, var_250, var_1BC)
  loc_1B7C47C:     var_294 = var_150.Text
  loc_1B7C48A:     Proc_6_7_F25D88(var_19C, CVar(var_250))
  loc_1B7C492:     var_1DC = -1 & var_19C 
  loc_1B7C49B:     var_274 = CVar(var_250 & "',1,'" & global_128 & "'," & CStr(var_204) & ",'" & MemVar_1F92070 & "','") & var_19C & " Order By VP.Date_From DESC" 
  loc_1B7C4A9:     unk_552771.Execute CStr(var_274), var_154, 
  loc_1B7C4B4:     Set var_88 = var_154
  loc_1B7C4F2:     If (var_88.RecordCount > 0) Then
  loc_1B7C503:       Set var_14C = Me.Txt
  loc_1B7C509:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_150)
  loc_1B7C51E:       var_204 = Val(var_150.Text)
  loc_1B7C533:       var_154 = var_88.Fields
  loc_1B7C543:       var_17C = var_154.Item("V_Type").Value
  loc_1B7C56E:       Proc_6_7_F25D88(var_294, CVar(var_88.Fields.Item("Date_From")))
  loc_1B7C588:       var_1FC = CStr(var_204)
  loc_1B7C5A8:       var_298 = "Update Voucher_Prefix Set Start_Srl_No=" & var_1FC & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_1B7C5D3:       unk_552771.Execute CStr(CVar(var_298 & "') and V_Type='") & var_17C & "' and Date_From=" & var_294), var_2C4, -1
  loc_1B7C60D:     End If
  loc_1B7C60D:   End If
  loc_1B7C611:   Set var_14C = Me.TopCtrl1
  loc_1B7C617:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_2B0)
  loc_1B7C62C:   If (var_204 = "Add") Then
  loc_1B7C652:     var_158 = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F920C8
  loc_1B7C662:     Call 0.Method_arg_50 (var_1FC, var_158 & "' AND ENAME='", var_17C, -1, var_14C)
  loc_1B7C672:     var_218 = var_150 & var_1FC & "' "
  loc_1B7C67B:     unk_552771.Execute var_218, 0, var_154
  loc_1B7C683:     var_19C = var_14C.Fields
  loc_1B7C68B:      = var_150.Item()
  loc_1B7C693:      = var_154.Value
  loc_1B7C6C0:     If (var_19C > 0) Then
  loc_1B7C6E1:       Set var_14C = Me.Txt
  loc_1B7C6E7:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_158, "UPDATE LASTVOU  SET DOCID='")
  loc_1B7C6EF:       var_17C = var_150.Text
  loc_1B7C6F8:       var_1FC = -1 & var_158
  loc_1B7C716:       Call 0.Method_arg_50 (var_218, var_1FC & "' WHERE UNAME='" & MemVar_1F920C8 & "' AND ENAME='")
  loc_1B7C72F:       unk_552771.Execute var_154 & var_218 & "'  ", , 
  loc_1B7C756:     Else
  loc_1B7C77A:       Call 0.Method_arg_50 (var_1FC, "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "','", var_2C4)
  loc_1B7C783:       var_214 = -1 & var_1FC
  loc_1B7C78A:       var_250 = var_1FC & "' WHERE UNAME='" & MemVar_1F920C8 & "','"
  loc_1B7C79B:       Set var_14C = Me.Txt
  loc_1B7C7A1:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150, var_218)
  loc_1B7C7A9:       var_250 = var_150.Text
  loc_1B7C7D8:       Proc_6_7_F25D88(var_19C, Date)
  loc_1B7C7E4:       var_16C = ",'A','"
  loc_1B7C80A:       unk_552771.Execute CStr(CVar(var_154 & var_218 & "','" & MemVar_1F92070 & "',") & var_19C & var_16C & CVar(MemVar_1F92078) & "')"), , 
  loc_1B7C842:     End If
  loc_1B7C842:   End If
  loc_1B7C842: End If
  loc_1B7C848: unk_552771.CommitTrans
  loc_1B7C84F: var_8A = 0
  loc_1B7C860: Set var_14C = Me.Txt
  loc_1B7C866: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_150)
  loc_1B7C882: var_8A = 0
  loc_1B7C890: Me.Requery -1
  loc_1B7C8BA: Me.Find "SearchCode ='" & var_150.Text & "'", 0, 1
  loc_1B7C8D1: If (global_132 <> "FAST") Then
  loc_1B7C8DF:   Me.Requery -1
  loc_1B7C8E4: End If
  loc_1B7C907: Call Proc_135_75_1006BAC(Proc_5_1_100CB50("INI", Me, global_72), var_16C)
  loc_1B7C912: Call Proc_135_72_17E4588(var_8A)
  loc_1B7C91C: Set var_88 = Nothing
  loc_1B7C924: Set var_12C = Nothing
  loc_1B7C927: Exit Sub
  loc_1B7C928: ' Referenced from: 1B77ABC
  loc_1B7C92E: If (var_8A = &HFF) Then
  loc_1B7C937:   unk_552771.RollbackTrans
  loc_1B7C93C: End If
  loc_1B7C93C: Proc_6_60_E62BC4(var_8A)
  loc_1B7C941: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EA0308
  'Data Table: 55274C
  loc_EA0290: On Error Goto loc_EA0301
  loc_EA02CA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA02F0:   Call Proc_135_75_1006BAC(Proc_5_1_100CB50("INI", Me))
  loc_EA02FB:   Call Proc_135_72_17E4588(global_72)
  loc_EA0300: End If
  loc_EA0300: Exit Sub
  loc_EA0301: ' Referenced from: EA0290
  loc_EA0301: Proc_6_60_E62BC4()
  loc_EA0306: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'F93CB8
  'Data Table: 55274C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_F8 As Integer
  Dim var_110 As String
  Dim unk_552771 As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Fields15
  Dim var_130 As Field20
  loc_F93B70: On Error Goto loc_F93CB1
  loc_F93B8A: If (Me.RecordCount <= 0) Then
  loc_F93BA8:   var_A8 = "No Records To Search."
  loc_F93BAE:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F93BBE:   Exit Sub
  loc_F93BBF: End If
  loc_F93BC6: var_10C = "Select  S.Docid as SearchCode,S.VNo as [No] ,S.VDate as [Date],s.RoomNo as TableNo " & "From (Sale1 S Left Join Voucher_Type V On S.VType= V.V_Type) "
  loc_F93BDB: Proc_6_7_F25D88(var_A8, MemVar_1F920EC)
  loc_F93BE7: var_B8 = " And V_Type='"
  loc_F93BEC: var_108 = CVar(var_10C & "Left Join Depart H on S.RestCode = H.Code Where S.VDate=") & var_A8 & var_B8 
  loc_F93BF6: var_F8 = 0
  loc_F93C16: var_110 = "Select 'B'+ShortName From Depart Where Code='" & global_56
  loc_F93C26: unk_552771.Execute var_110 & "'", var_124, -1
  loc_F93C2E: var_128 = var_128.Fields
  loc_F93C36: var_F8 = var_12C.Item(var_12C)
  loc_F93C3E: var_130 = var_130.Value
  loc_F93C86: Proc_6_126_F1BCC0("1000,1000,1000", CStr(var_140 & var_140 & "' Order By S.docid"))
  loc_F93C94: MemVar_1F92120 = Me
  loc_F93CAB: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F93CB0: Exit Sub
  loc_F93CB1: ' Referenced from: F93B70
  loc_F93CB1: Proc_6_60_E62BC4(var_108)
  loc_F93CB6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C 'DFFC9C
  'Data Table: 55274C
  loc_DFFC94: Call Proc_135_91_107F404()
  loc_DFFC99: Exit Sub
  loc_DFFC9A: On Error Goto loc_DFD103
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E615BC
  'Data Table: 55274C
  Dim Me As Recordset15
  loc_E61577: If (global_132 <> "FAST") Then
  loc_E61585:   Me.Requery -1
  loc_E6158A: End If
  loc_E61595: If (global_132 <> "FAST") Then
  loc_E615A3:   Me.Requery -1
  loc_E615A8: End If
  loc_E615B3: Me.Requery -1
  loc_E615B8: Exit Sub
  loc_E615B9: StAryRecMove
End Sub

Private Sub CmdSave_Click() 'DFFFE4
  'Data Table: 55274C
  loc_DFFFDC: Call TopCtrl1_UnknownEvent_19()
  loc_DFFFE1: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12043D4
  'Data Table: 55274C
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_1203F26: Set var_88 = Me.Txt
  loc_1203F2C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1203F3A: Proc_6_74_E226B0(var_8C)
  loc_1203F46: Call Proc_135_76_EF6D38(var_8C)
  loc_1203F4E: var_92 = Index
  loc_1203F59: If (var_92 = CInt(3)) Then
  loc_1203F73:   If (Me.RecordCount > 0) Then
  loc_1203F81:     Set var_8C = Me.FGPoint
  loc_1203F99:     Proc_6_137_1193554(Me.DGTable, global_76, Index)
  loc_1203FA7:   End If
  loc_1203FF5:   Set var_88 = Me.Txt
  loc_1203FFB:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1204003:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_120401B:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_120401E:     Exit Sub
  loc_120401F:   End If
  loc_120402C:   Set var_88 = Me.Txt
  loc_1204032:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120403A:   var_A0 = var_8C.Text
  loc_1204042:   var_D4 = CVar(var_A0) 'String
  loc_1204087:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1204090:     Me.MoveFirst
  loc_12040B5:     Set var_88 = Me.Txt
  loc_12040BB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_12040C3:     0 = var_8C.Text
  loc_12040D1:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_12040E7:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_12040FF:   End If
  loc_1204102: Else
  loc_120410A:   If (var_92 = CInt(&HB)) Then
  loc_1204124:     If (Me.RecordCount > 0) Then
  loc_1204132:       Set var_8C = Me.FGPoint
  loc_120414A:       Proc_6_137_1193554(Me.DGKOTFAULT, global_80)
  loc_1204158:     End If
  loc_12041A6:     Set var_88 = Me.Txt
  loc_12041AC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12041B4:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12041CC:     If (Index Or (var_A0 = vbNullString)) Then
  loc_12041CF:       Exit Sub
  loc_12041D0:     End If
  loc_12041DD:     Set var_88 = Me.Txt
  loc_12041E3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12041EB:     var_A0 = var_8C.Text
  loc_12041F3:     var_D4 = CVar(var_A0) 'String
  loc_1204214:     var_B4 = Me.Fields.Item("VNo")
  loc_1204238:     If CBool(var_D4 <> var_B4.Value) Then
  loc_1204241:       Me.MoveFirst
  loc_1204266:       Set var_88 = Me.Txt
  loc_120426C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Vno =")
  loc_1204274:       0 = var_8C.Text
  loc_1204282:       Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_1204298:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_12042B0:     End If
  loc_12042B3:   Else
  loc_12042BB:     If Not (var_92 = CInt(4)) Then
  loc_12042C6:       If Not (var_92 = CInt(7)) Then
  loc_12042D1:         If (var_92 = CInt(8)) Then
  loc_12042D4:         End If
  loc_12042D4:       End If
  loc_12042E3:       Set var_88 = Me.Txt
  loc_12042E9:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12042F1:       var_8C.SelStart = 0
  loc_120430A:       Set var_88 = Me.Txt
  loc_1204310:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_120432B:       Set var_90 = Me.Txt
  loc_1204331:       Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_1204339:       var_B4.SelLength = Len(var_8C.Text)
  loc_120434F:     Else
  loc_1204357:       If (var_92 = CInt(6)) Then
  loc_1204369:         Set var_88 = Me.Txt
  loc_120436F:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1204377:         var_8C.SelStart = 0
  loc_1204390:         Set var_88 = Me.Txt
  loc_1204396:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12043B1:         Set var_90 = Me.Txt
  loc_12043B7:         Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_12043BF:         var_B4.SelLength = Len(var_8C.Text)
  loc_12043D2:       End If
  loc_12043D2:     End If
  loc_12043D2:   End If
  loc_12043D2: End If
  loc_12043D2: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10FA6B4
  'Data Table: 55274C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_9C As DataGrid
  Dim var_A0 As Frame
  loc_10FA393: var_86 = Shift
  loc_10FA3A0: If (CLng(Shift) = &H1B) Then
  loc_10FA3A3:   Call Proc_135_76_EF6D38(var_86)
  loc_10FA3A8:   Exit Sub
  loc_10FA3A9: End If
  loc_10FA3AC: var_88 = KeyCode
  loc_10FA3B7: If (var_88 = CInt(&HB)) Then
  loc_10FA3D7:   Set var_A0 = Me.FGPoint
  loc_10FA3E2:   Set var_9C = Nothing
  loc_10FA414:   Proc_6_69_134A198(Me.DGKOTFAULT, Me.Txt, CInt(&HB), global_80, Shift, 0)
  loc_10FA483:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_10FA4A9:     Proc_6_138_106D6F8(Me.DGKOTFAULT, global_80, KeyCode, Me.FGPoint, 1)
  loc_10FA4B7:   End If
  loc_10FA4BA: Else
  loc_10FA4C2:   If (var_88 = CInt(3)) Then
  loc_10FA4ED:     Set var_9C = Nothing
  loc_10FA51F:     Proc_6_69_134A198(Me.DGTable, Me.Txt, CInt(3), global_76, Shift, 0, 1)
  loc_10FA58E:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_10FA595:       Set var_9C = Me.DGTable
  loc_10FA5B4:       Proc_6_138_106D6F8(var_9C, global_76, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_10FA5C2:     End If
  loc_10FA5C2:   End If
  loc_10FA5C2: End If
  loc_10FA5F3: Set var_9C = Me.DGTable
  loc_10FA60D: Set var_A0 = Me.FrmList
  loc_10FA633: If ((((CBool(Me.DGKOTFAULT.Visible) = 0) And (CBool(Me.DGItem.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (var_A0.Visible = 0)) Then
  loc_10FA654:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(7))) Then
  loc_10FA65A:     Call Proc_135_77_F0ACF8(KeyCode, 0, var_9C)
  loc_10FA65F:     Exit Sub
  loc_10FA660:   End If
  loc_10FA675:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10FA67E:     Proc_6_75_E527CC(Shift, arg_14, var_A0)
  loc_10FA683:   End If
  loc_10FA68B:   If (KeyCode <> CInt(3)) Then
  loc_10FA6A3:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10FA6AC:       Proc_6_76_E52838(Shift, arg_14)
  loc_10FA6B1:     End If
  loc_10FA6B1:   End If
  loc_10FA6B1: End If
  loc_10FA6B1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FE8A50
  'Data Table: 55274C
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FE886C: On Error Goto loc_FE8A49
  loc_FE8872: Proc_6_58_E054C0(arg_10)
  loc_FE887A: var_86 = KeyAscii
  loc_FE8885: If Not (var_86 = CInt(0)) Then
  loc_FE8890:   If (var_86 = CInt(4)) Then
  loc_FE8893:   End If
  loc_FE889D:   Set var_8C = Me.Txt
  loc_FE88A3:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_FE88BE:   Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_FE88CD: Else
  loc_FE88D5:   If Not (var_86 = CInt(6)) Then
  loc_FE88E0:     If (var_86 = CInt(7)) Then
  loc_FE88E3:     End If
  loc_FE88ED:     Set var_8C = Me.Txt
  loc_FE88F3:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_FE890E:     Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_FE891D:   Else
  loc_FE8925:     If (var_86 = CInt(&HB)) Then
  loc_FE8944:       If (CBool(Me.DGKOTFAULT.Visible) = &HFF) Then
  loc_FE8971:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_80, arg_10, "Vno")
  loc_FE89A3:         Proc_6_138_106D6F8(Me.DGKOTFAULT, global_80, KeyAscii, Me.FGPoint)
  loc_FE89B1:       End If
  loc_FE89B4:     Else
  loc_FE89BC:       If (var_86 = CInt(3)) Then
  loc_FE89DB:         If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_FE8A08:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_FE8A3A:           Proc_6_138_106D6F8(Me.DGTable, global_76, KeyAscii, Me.FGPoint, 0)
  loc_FE8A48:         End If
  loc_FE8A48:       End If
  loc_FE8A48:     End If
  loc_FE8A48:   End If
  loc_FE8A48: End If
  loc_FE8A48: Exit Sub
  loc_FE8A49: ' Referenced from: FE886C
  loc_FE8A49: Proc_6_60_E62BC4(0, 2)
  loc_FE8A4E: Exit Sub
  loc_FE8A4F: 0(var_86) = 
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F85818
  'Data Table: 55274C
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_118 As Double
  Dim var_A4 As TextBox
  Dim var_120 As Double
  Dim var_B0 As TextBox
  Dim var_D4 As Variant
  Dim var_10C As TextBox
  loc_F856EF: var_86 = KeyCode
  loc_F856FA: If Not (var_86 = CInt(6)) Then
  loc_F85705:   If (var_86 = CInt(7)) Then
  loc_F85708:   End If
  loc_F85716:   Set var_8C = Me.Txt
  loc_F8571C:   Call 0.Method_Txt_KeyUp0 (CInt(6), var_90)
  loc_F85731:   var_118 = Val(var_90.Text)
  loc_F8573B:   Set var_98 = Me.TxtGt
  loc_F85741:   Call 0.Method_Txt_KeyUp8 (var_9A, var_118)
  loc_F85753:   Set var_A0 = Me.TxtGt
  loc_F85759:   Call 0.Method_Txt_KeyUp0 (var_9A, var_A4)
  loc_F8576E:   var_120 = Val(var_A4.Text)
  loc_F8577F:   Set var_AC = Me.Txt
  loc_F85785:   Call 0.Method_Txt_KeyUp0 (CInt(7), var_B0, var_B4)
  loc_F857BD:   var_D4 = CVar(((var_118 - var_B0.Text) - Val(var_B4))) 'Double
  loc_F857DB:   Set var_108 = Me.Txt
  loc_F857E1:   Call 0.Method_Txt_KeyUp0 (CInt(8), var_10C, CStr(Format(var_D4, "0.00")), 1)
  loc_F857E9:   var_10C.Text = 1
  loc_F85817: End If
  loc_F85817: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D97C
  'Data Table: 55274C
  loc_E4D95A: Set var_88 = Me.Txt
  loc_E4D960: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D96E: Proc_6_73_E22704(var_8C)
  loc_E4D97A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1722620
  'Data Table: 55274C
  Dim var_9A As Integer
  Dim var_A4 As Variant
  Dim var_C8 As Variant
  Dim var_12C As Double
  Dim var_F8 As Variant
  Dim var_E8 As Variant
  Dim var_124 As String
  Dim var_120 As Variant
  Dim var_134 As Variant
  Dim var_154 As Double
  Dim var_13C As TextBox
  Dim var_15C As Double
  Dim var_D8 As Variant
  Dim var_148 As TextBox
  Dim arg_10 As Integer
  Dim var_B8 As Variant
  Dim var_A8 As String
  Dim var_108 As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_A0 As Variant
  Dim var_140 As String
  Dim unk_552771 As Connection15
  Dim var_11C As Variant
  Dim Me As Recordset15
  Dim var_16C As Variant
  Dim var_118 As Variant
  Dim var_1EC As Variant
  Dim var_19C As Variant
  Dim var_1FC As Variant
  Dim var_8E As Integer
  Dim var_138 As Field20
  Dim var_94 As Recordset15
  loc_1720A0C: On Error Goto loc_172261A
  loc_1720A12: var_9A = Cancel
  loc_1720A1D: If Not (var_9A = CInt(6)) Then
  loc_1720A28:   If (var_9A = CInt(7)) Then
  loc_1720A2B:   End If
  loc_1720A38:   Set var_A0 = Me.Txt
  loc_1720A3E:   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1720A46:   var_A8 = var_A4.Text
  loc_1720A57:   Proc_6_40_EA50F0(CVar(Val(var_A8)))
  loc_1720A7E:   var_118 = Format(CVar(var_9A), "0.00")
  loc_1720A94:   Set var_11C = Me.Txt
  loc_1720A9A:   Call 0.Method_Txt_Validate0 (Cancel, var_120, CStr(var_118))
  loc_1720AA2:   var_120.Text = 1
  loc_1720AD2:   Set var_A0 = Me.Txt
  loc_1720AD8:   Call 0.Method_Txt_Validate0 (CInt(6), var_A4, var_A8)
  loc_1720AE0:   1 = var_A4.Text
  loc_1720AED:   var_12C = Val(var_A8)
  loc_1720AF7:   Set var_11C = Me.TxtGt
  loc_1720AFD:   Call 0.Method_Txt_Validate8 (var_12E, var_12C)
  loc_1720B0F:   Set var_120 = Me.TxtGt
  loc_1720B15:   Call 0.Method_Txt_Validate0 (var_12E, var_134)
  loc_1720B2A:   var_154 = Val(var_134.Text)
  loc_1720B3B:   Set var_138 = Me.Txt
  loc_1720B41:   Call 0.Method_Txt_Validate0 (CInt(7), var_13C, var_140)
  loc_1720B56:   var_15C = Val(var_140)
  loc_1720B68:   var_E8 = "0.00"
  loc_1720B79:   var_C8 = CVar(((var_12C - var_13C.Text) - var_15C)) 'Double
  loc_1720B80:   var_108 = Format(CVar(Val(var_A8)), var_E8)
  loc_1720B97:   Set var_144 = Me.Txt
  loc_1720B9D:   Call 0.Method_Txt_Validate0 (CInt(8), var_148, CStr(var_108), 1)
  loc_1720BA5:   var_148.Text = 1
  loc_1720BD6: Else
  loc_1720BDE:   If (var_9A = CInt(0)) Then
  loc_1720BEC:     Set var_A0 = Me.Txt
  loc_1720BF2:     Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_1720BFA:     var_A8 = "Vr. No"
  loc_1720C1B:     If (Proc_6_27_EA565C(var_A4, var_A8) = 0) Then
  loc_1720C29:       Set var_A0 = Me.Txt
  loc_1720C2F:       Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_1720C37:       var_A4.SetFocus
  loc_1720C45:       arg_10 = &HFF
  loc_1720C48:       Exit Sub
  loc_1720C49:     End If
  loc_1720C57:     Set var_A0 = Me.Txt
  loc_1720C5D:     Call 0.Method_Txt_Validate0 (CInt(0), var_A4, var_A8)
  loc_1720C65:     arg_10 = var_A4.Text
  loc_1720C7D:     If (CDbl(var_A8) = CDbl(0)) Then
  loc_1720C99:       MsgBox("Vr. No Can Not Be 0", 0, var_E8, var_108, var_118)
  loc_1720CB3:       Set var_A0 = Me.Txt
  loc_1720CB9:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1720CC1:       var_A4.SetFocus
  loc_1720CCF:       arg_10 = &HFF
  loc_1720CD2:       Exit Sub
  loc_1720CD3:     End If
  loc_1720CD7:     Set var_A0 = Me.TopCtrl1
  loc_1720CDD:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(arg_10)
  loc_1720CF2:     If (var_15C = "Add") Then
  loc_1720D05:       var_A8 = Proc_6_45_EAD428(MemVar_1F92070, 2)
  loc_1720D26:       var_C8 = Space((5 - Len(global_128)))
  loc_1720D2E:       var_108 = (CVar(MemVar_1F9206C & var_A8 & global_128) + "Vr. No Can Not Be 0")
  loc_1720D42:       var_118 = Space((5 - Len(global_108)))
  loc_1720D4A:       var_17C = (var_108 + var_118)
  loc_1720D57:       var_18C = (var_17C + CVar(global_108))
  loc_1720D6E:       Set var_A0 = Me.Txt
  loc_1720D74:       Call 0.Method_Txt_Validate0 (CInt(0), var_A4, var_140)
  loc_1720D7C:       8 = var_A4.Text
  loc_1720D89:       var_19C = Space((var_18C - Len(var_140)))
  loc_1720D91:       var_1AC = (var_12C + var_19C)
  loc_1720DA3:       Set var_11C = Me.Txt
  loc_1720DA9:       Call 0.Method_Txt_Validate0 (CInt(0), var_120)
  loc_1720DBC:       var_1CC = (var_1AC + CVar(var_120.Text))
  loc_1720E09:       Set var_A0 = Me.Txt
  loc_1720E0F:       Call 0.Method_Txt_Validate0 (CInt(2), var_A4)
  loc_1720E17:       var_A4.Text = CStr(var_1CC)
  loc_1720E33:       Me.LblVPrefix.Caption = global_108
  loc_1720E3B:     End If
  loc_1720E3F:     Set var_A0 = Me.TopCtrl1
  loc_1720E45:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_1720E5A:     If ( = "Add") Then
  loc_1720E8A:       Set var_A0 = Me.Txt
  loc_1720E90:       Call 0.Method_Txt_Validate0 (CInt(2), var_A4, var_A8, "Select Count(*) From Sale1 Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_1720EA1:       var_124 = var_120 & var_A8
  loc_1720EB1:       unk_552771.Execute var_124 & "'", 0, var_134
  loc_1720EC1:        = var_120.Item()
  loc_1720EC9:        = var_134.Value
  loc_1720EF6:       If (var_A4.Text.Fields > 0) Then
  loc_1720EFF:         Call 0.Method_arg_50 (var_A8)
  loc_1720F20:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_A8), var_108, var_118)
  loc_1720F36:         Call Proc_135_78_10EA790(MemVar_1F92044)
  loc_1720F46:         If (var_A8 = vbNullString) Then
  loc_1720F53:           Set var_A0 = Me.Txt
  loc_1720F59:           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1720F61:           var_A4.SetFocus
  loc_1720F6F:           arg_10 = &HFF
  loc_1720F72:           Exit Sub
  loc_1720F73:         End If
  loc_1720F79:         Call Proc_135_78_10EA790(MemVar_1F92044, var_A8)
  loc_1720F8C:         Set var_A0 = Me.Txt
  loc_1720F92:         Call 0.Method_Txt_Validate0 (CInt(2), var_A4, var_A8)
  loc_1720F9A:         var_A4.Text = arg_10
  loc_1720FAB:         arg_10 = &HFF
  loc_1720FAE:         Exit Sub
  loc_1720FAF:       End If
  loc_1720FAF:     End If
  loc_1720FB2:   Else
  loc_1720FBA:     If (var_9A = CInt(1)) Then
  loc_1720FCB:       Set var_A0 = Me.Txt
  loc_1720FD1:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_A8)
  loc_1720FD9:       arg_10 = var_A4.Text
  loc_1720FEF:       var_108 = Len(Trim(CVar(var_A8)))
  loc_1721009:       If (var_108 = 0) Then
  loc_172101F:         Set var_A0 = Me.Txt
  loc_1721025:         Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_172102D:         var_A4.Text = CStr(MemVar_1F920EC)
  loc_172103F:       Else
  loc_1721049:         Set var_A0 = Me.Txt
  loc_172104F:         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_172106F:         Set var_120 = Me.Txt
  loc_1721075:         Call 0.Method_Txt_Validate0 (Cancel, var_134)
  loc_172107D:         var_134.Text = Proc_6_33_1512840(var_A4)
  loc_1721090:       End If
  loc_172109D:       Set var_A0 = Me.Txt
  loc_17210A3:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_17210AB:       var_A8 = var_A4.Text
  loc_17210C6:       Set var_11C = Me.Txt
  loc_17210CC:       Call 0.Method_Txt_Validate0 (Cancel, var_120, var_124)
  loc_17210D4:       (CDate(var_A8) >= MemVar_1F920F4) = var_120.Text
  loc_17210F6:       If Not((var_A8 And (CDate(var_124) <= MemVar_1F920FC))) Then
  loc_172111A:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_108, var_118)
  loc_1721134:         Set var_A0 = Me.Txt
  loc_172113A:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1721142:         var_A4.SetFocus
  loc_1721150:         arg_10 = &HFF
  loc_1721153:         Exit Sub
  loc_1721154:       End If
  loc_1721158:       Set var_A0 = Me.TopCtrl1
  loc_172115E:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(arg_10)
  loc_172117D:       Set var_A4 = Me.Txt
  loc_1721183:       Call 0.Method_Txt_Validate0 (CInt(0), var_11C)
  loc_172118B:       var_A8 = var_11C.Text
  loc_17211B5:       If CBool((var_A4 = "Add") And (var_A8 = vbNullString)) Then
  loc_17211BE:         Call Proc_135_78_10EA790(MemVar_1F92044)
  loc_17211D1:         Set var_A0 = Me.Txt
  loc_17211D7:         Call 0.Method_Txt_Validate0 (CInt(2), var_A4)
  loc_17211DF:         var_A4.Text = var_A8
  loc_17211EE:       End If
  loc_17211F1:     Else
  loc_17211F9:       If (var_9A = CInt(&HB)) Then
  loc_1721213:         If (Me.RecordCount > 0) Then
  loc_1721252:           Set var_11C = Me.Txt
  loc_1721258:           Call 0.Method_Txt_Validate0 (CInt(&HB), var_120)
  loc_1721260:           var_120.Text = CStr(Me.Fields.Item("VNo").Value)
  loc_1721293:           var_A4 = Me.Fields.Item("DocID")
  loc_17212A4:           var_A8 = CStr(var_A4.Value)
  loc_17212B2:           Set var_11C = Me.Txt
  loc_17212B8:           Call 0.Method_Txt_Validate0 (CInt(&HB), var_120)
  loc_17212C0:           var_120.Tag = var_A8
  loc_17212D6:           Call Proc_135_92_1584274(var_A8)
  loc_17212DB:         End If
  loc_17212DE:       Else
  loc_17212E6:         If (var_9A = CInt(3)) Then
  loc_172132A:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_172133A:             Set var_A0 = Me.Txt
  loc_1721340:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_172135F:             If (var_A4.Text = vbNullString) Then
  loc_172136F:               Set var_A0 = Me.Txt
  loc_1721375:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_172137D:               var_A4.Text = vbNullString
  loc_1721396:               Set var_A0 = Me.Txt
  loc_172139C:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_17213A4:               var_A4.Tag = vbNullString
  loc_17213BB:               If (global_136 = "RO") Then
  loc_17213C4:                 global_132 = vbNullString
  loc_17213C8:               End If
  loc_17213C8:             End If
  loc_17213CB:           Else
  loc_1721406:             Set var_11C = Me.Txt
  loc_172140C:             Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_1721414:             var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1721465:             Set var_11C = Me.Txt
  loc_172146B:             Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_1721473:             var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1721494:             If (global_192 = "Room Service") Then
  loc_17214D3:               Set var_11C = Me.Txt
  loc_17214D9:               Call 0.Method_Txt_Validate0 (CInt(&HA), var_120)
  loc_17214E1:               var_120.Text = CStr(Me.Fields.Item("Code").Value)
  loc_17214F7:             End If
  loc_1721502:             If (global_136 = "RO") Then
  loc_1721522:               var_A4 = Me.Fields.Item("RoomCat")
  loc_1721539:               global_132 = CStr(var_A4.Value)
  loc_172154A:             End If
  loc_172154A:           End If
  loc_1721555:           If (global_180 = "Y") Then
  loc_1721562:             Set global_68 = New 
  loc_1721574:             Me.Recordset15.CursorLocation = 3
  loc_172158A:             If (global_192 = "Hall") Then
  loc_172159B:               Set var_A0 = Me.Txt
  loc_17215A1:               Call 0.Method_Txt_Validate0 (CInt(3), var_A4)
  loc_17215CF:               var_A8 = "Select * ,I.NAME AS ITEMNAME,I.UNIT,I.RateEdit,IR.Rate as IRate,I.SChrgApp,IC.TaxPer,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From (((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCODE=K.ItemRestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.RestCode=K.RestCode and IR.ItemCode=K.Item WHERE K.RestCode='" & global_56
  loc_17215E4:               var_C8 = CVar(var_A8 & "'AND K.RoomNo ='" & var_A4.Tag & "'and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And DelFlag<>'Y' Order by K.DOCID,K.SNo") 'String
  loc_17215EE:               Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_172160B:             Else
  loc_1721616:               Proc_6_7_F25D88(var_C8, MemVar_1F920EC)
  loc_1721629:               Set var_A0 = Me.Txt
  loc_172162F:               Call 0.Method_Txt_Validate0 (CInt(3), var_A4, var_A8)
  loc_1721637:               1 = var_A4.Text
  loc_1721653:               var_D8 = "Select * ,I.NAME AS ITEMNAME,DispCode,I.UNIT,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,IC.taxStru,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From ((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCODE=K.ItemRestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode WHERE k.VDate<="
  loc_172168D:               var_1AC = var_D8 & var_C8 & " And K.RestCode='" & CVar(global_56) & "' aND K.RoomNo ='" & CVar(var_A8) & "'and K.PENDING IN('Y')AND VOIDYN NOT IN('Y') And DelFlag<>'Y' And NCKOT<>'Y' Order by K.DOCID,K.SNo" 
  loc_1721698:               Me.Open var_1AC, CVar(MemVar_1F92044), 3
  loc_17216B7:             End If
  loc_17216CE:             If (Me.RecordCount > 0) Then
  loc_17216E0:               Me.FGrid.Redraw = False
  loc_1721702:               var_8E = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_172170B:               ' Referenced from:         1722439
  loc_172171D:               If Not(Me.EOF) Then
  loc_1721745:                 For var_210 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):         var_98 = var_210 'Integer
  loc_172174F:                   var_B8 = CVar(CLng(var_98)) 'Long
  loc_1721757:                   var_F8 = CVar(CLng(&HD)) 'Long
  loc_1721771:                   var_108 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_172179A:                   var_E8 = Me.Fields.Item("DocID").Value
  loc_17217AA:                   var_1FC = CVar(CLng(var_98)) 'Long
  loc_1721825:                   If CBool(CVar(CLng(&HC)) And (CVar(CStr(Me.FGrid.TextMatrix))) = Me.Fields.Item("SNo").Value)) Then
  loc_172182C:                     var_96 = CByte(1) 'Byte
  loc_1721830:                     GoTo loc_17221FA
  loc_1721833:                   End If
  loc_1721836:                 Next var_210 'Integer
  loc_172183B:                 var_B8 = vbNullString
  loc_1721845:                 Set var_A0 = Me.FGrid
  loc_172185A:                 Set var_244 = Me.FGrid
  loc_1721861:                 var_B8 = CVar(CLng(var_8E)) 'Long
  loc_1721869:                 var_F8 = CVar(CLng(0)) 'Long
  loc_1721873:                 var_C8 = CVar(CStr(var_8E)) 'String
  loc_172187A:                 LateIdCallSt
  loc_1721889:                 var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1721891:                 var_16C = CVar(CLng(&HB)) 'Long
  loc_17218C4:                 var_E8 = CVar(CStr(Me.Fields.Item("Item").Value)) 'String
  loc_17218CB:                 LateIdCallSt
  loc_17218E5:                 var_D8 = CVar(CLng(var_8E)) 'Long
  loc_17218ED:                 var_16C = CVar(CLng(3)) 'Long
  loc_1721920:                 var_E8 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1721927:                 LateIdCallSt
  loc_1721941:                 var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1721949:                 var_16C = CVar(CLng(4)) 'Long
  loc_172197C:                 var_E8 = CVar(CStr(Me.Fields.Item("ItemName").Value)) 'String
  loc_1721983:                 LateIdCallSt
  loc_172199D:                 var_D8 = CVar(CLng(var_8E)) 'Long
  loc_17219A5:                 var_16C = CVar(CLng(6)) 'Long
  loc_17219D8:                 var_E8 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_17219DF:                 LateIdCallSt
  loc_1721A18:                 var_F8 = CVar(CLng(var_8E)) 'Long
  loc_1721A20:                 var_1EC = CVar(CLng(7)) 'Long
  loc_1721A4D:                 var_118 = CVar(CStr(Format(CVar(Me.Fields.Item("qty")), "0.00"))) 'String
  loc_1721A54:                 LateIdCallSt
  loc_1721A8D:                 var_F8 = CVar(CLng(var_8E)) 'Long
  loc_1721A95:                 var_1EC = CVar(CLng(8)) 'Long
  loc_1721AC2:                 var_118 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_1721AC9:                 LateIdCallSt
  loc_1721B02:                 var_F8 = CVar(CLng(var_8E)) 'Long
  loc_1721B0A:                 var_1EC = CVar(CLng(9)) 'Long
  loc_1721B37:                 var_118 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_1721B3E:                 LateIdCallSt
  loc_1721B93:                 var_11C = Me.Fields
  loc_1721B9B:                 var_120 = var_11C.Item("Rate")
  loc_1721BAC:                 var_16C = CVar(CLng(var_8E)) 'Long
  loc_1721BB4:                 var_1FC = CVar(CLng(&HA)) 'Long
  loc_1721BEB:                 var_19C = CVar(CStr(Format((Me.Fields.Item("qty").Value * var_120.Value), "0.00"))) 'String
  loc_1721BF2:                 LateIdCallSt
  loc_1721C37:                 var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1721C3F:                 var_16C = CVar(CLng(5)) 'Long
  loc_1721C66:                 var_108 = CVar(CStr(Val(CStr(Right(CVar(Me.Fields.Item("DocID")), 8))))) 'String
  loc_1721C6D:                 LateIdCallSt
  loc_1721C88:                 var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1721C90:                 var_16C = CVar(CLng(&HD)) 'Long
  loc_1721CC3:                 var_E8 = CVar(CStr(Me.Fields.Item("DocID").Value)) 'String
  loc_1721CCA:                 LateIdCallSt
  loc_1721CE4:                 var_D8 = CVar(CLng(var_8E)) 'Long
  loc_1721CEC:                 var_16C = CVar(CLng(&HC)) 'Long
  loc_1721D1F:                 var_E8 = CVar(CStr(Me.Fields.Item("SNo").Value)) 'String
  loc_1721D26:                 LateIdCallSt
  loc_1721D78:                 var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_8E)), var_244, var_E8, CVar(CLng(&H19)), CVar(CLng(var_8E)))) 'String
  loc_1721D7F:                 LateIdCallSt
  loc_1721DCD:                 var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H13)), CVar(CLng(var_8E)), var_244, var_E8, var_244)) 'String
  loc_1721DD4:                 LateIdCallSt
  loc_1721E22:                 var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_244, var_E8)) 'String
  loc_1721E29:                 LateIdCallSt
  loc_1721E77:                 var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_244, var_E8)) 'String
  loc_1721E7E:                 LateIdCallSt
  loc_1721ECC:                 var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(var_8E)), var_244, var_E8)) 'String
  loc_1721ED3:                 LateIdCallSt
  loc_1721EF1:                 var_16C = CVar(CLng(&H1A)) 'Long
  loc_1721F21:                 var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), var_16C, CVar(CLng(var_8E)), var_244, var_E8)) 'String
  loc_1721F28:                 LateIdCallSt
  loc_1721F75:                 var_A8 = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_E8, -1, var_11C, var_244)
  loc_1721F89:                 unk_552771.Execute var_E8 & CStr(Right(CVar(Me.Fields.Item("DocID")), 8)) & "'", var_E8, var_16C
  loc_1721F94:                 Set var_94 = var_11C
  loc_1721FC2:                 If (var_94.RecordCount > 0) Then
  loc_1721FFC:                   Proc_6_39_E7C810(var_E8, CVar(var_94.Fields.Item("Rate")), CVar(CLng(&H10)), CVar(CLng(var_8E)))
  loc_1722005:                   var_108 = CVar(CStr(var_E8)) 'String
  loc_172200D:                   Set var_11C = Me.FGrid
  loc_1722013:                   LateIdCallSt
  loc_172202B:                 End If
  loc_172204C:                 var_C8 = CVar(Proc_6_38_E68A98(global_136, CVar(CLng(&H16)), CVar(CLng(var_8E)), var_11C)) 'String
  loc_1722053:                 LateIdCallSt
  loc_1722062:                 var_D8 = CVar(CLng(var_8E)) 'Long
  loc_172209A:                 var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomNo")), CVar(CLng(&H17)), var_D8, var_244, CVar(Me.Fields.Item("RoomNo")))) 'String
  loc_17220A1:                 LateIdCallSt
  loc_17220EC:                 Set var_11C = Me.Txt
  loc_17220F2:                 Call 0.Method_Txt_Validate0 (CInt(3), var_120, Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomNo")), var_244, var_E8, var_108))
  loc_17220FA:                 var_120.Tag = var_D8
  loc_172214A:                 var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_1722151:                 LateIdCallSt
  loc_172219F:                 var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_8E)), var_244)) 'String
  loc_17221A6:                 LateIdCallSt
  loc_17221D9:                 var_C8 = CVar(Proc_6_38_E68A98(global_132, CVar(CLng(&H15)), CVar(CLng(var_8E)), var_244)) 'String
  loc_17221E0:                 LateIdCallSt
  loc_17221ED:                 Set var_244 = Nothing 
  loc_17221F7:                 var_8E = (var_8E + 1)
  loc_17221FA:                 ' Referenced from:         1721830
  loc_1722200:                 Me.MoveNext
  loc_1722223:                 If ((Me.EOF = &HFF) And (CInt(var_96) = 0)) Then
  loc_1722231:                   If (global_192 = "Room Service") Then
  loc_1722254:                     If (Me.lblTable.Caption = vbNullString) Then
  loc_172229B:                       Me.lblTable.Caption = CStr("Room # " & Me.Fields.Item("Name").Value)
  loc_17222B6:                     Else
  loc_1722311:                       Me.lblTable.Caption = CStr(CVar(Me.lblTable.Caption & ",") & Me.Fields.Item("Name").Value)
  loc_1722331:                     End If
  loc_1722334:                   Else
  loc_1722354:                     If (Me.lblTable.Caption = vbNullString) Then
  loc_172239B:                       Me.lblTable.Caption = CStr("Table # " & Me.Fields.Item("Code").Value)
  loc_17223B6:                     Else
  loc_17223C3:                       var_A8 = Me.lblTable.Caption
  loc_17223CF:                       var_E8 = CVar(var_A8 & ",") 'String
  loc_17223FF:                       var_108 = var_E8 & Me.Fields.Item("Code").Value 
  loc_1722411:                       Me.lblTable.Caption = CStr(var_108)
  loc_1722431:                     End If
  loc_1722431:                   End If
  loc_1722431:                 End If
  loc_1722435:                 var_96 = CByte(0) 'Byte
  loc_1722439:                 GoTo loc_172170B
  loc_172243C:               End If
  loc_172244F:               Me.FGrid.FixedRows = 1
  loc_172245A:             Else
  loc_1722468:               Me.FGrid.Redraw = True
  loc_1722476:               If (var_8E = 1) Then
  loc_172248C:                 Me.FGrid.Rows = 1
  loc_17224B2:                 var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_8E, var_244, var_C8))) 'String
  loc_17224BA:                 Set var_A4 = Me.FGrid
  loc_17224E7:                 Me.FGrid.FixedRows = 1
  loc_17224EF:               End If
  loc_17224EF:             End If
  loc_17224EF:           End If
  loc_17224FD:           Me.FGrid.Redraw = True
  loc_172250B:           If (var_8E = 1) Then
  loc_1722521:             Me.FGrid.Rows = 1
  loc_1722547:             var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), FGrid.DispID_10000, var_C8))) 'String
  loc_172254F:             Set var_A4 = Me.FGrid
  loc_172257C:             Me.FGrid.FixedRows = 1
  loc_1722584:           End If
  loc_172258A:           Call Proc_135_84_165D318(Cancel, FGrid.DispID_10000, var_C8, var_E8)
  loc_172259C:           Set var_A0 = Me.Txt
  loc_17225A2:           Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_A8)
  loc_17225AA:           var_E8 = var_A4.Text
  loc_17225CD:           If ((var_A8 <> vbNullString) And (global_180 = "Y")) Then
  loc_17225DD:             Set var_A0 = Me.Txt
  loc_17225E3:             Call 0.Method_Txt_Validate0 (Cancel, var_A4, vbNullString)
  loc_17225EB:             var_A4.Text = var_244
  loc_17225F7:           End If
  loc_17225F7:         End If
  loc_17225F7:       End If
  loc_17225F7:     End If
  loc_17225F7:   End If
  loc_17225F7: End If
  loc_17225FC: Set var_94 = Nothing
  loc_1722604: Set var_88 = Nothing
  loc_1722612: Set global_68 = Nothing
  loc_1722619: Exit Sub
  loc_172261A: ' Referenced from: 1720A0C
  loc_172261A: Proc_6_60_E62BC4(var_108)
  loc_172261F: Exit Sub
End Sub

Private Sub Form_Load() '13E2E50
  'Data Table: 55274C
  Dim var_9C As Variant
  Dim var_C4 As Variant
  Dim var_B4 As String
  Dim var_D4 As Variant
  Dim unk_552784 As Connection15
  Dim var_B0 As Variant
  Dim var_E8 As Variant
  Dim unk_552771 As Connection15
  Dim var_8C As Recordset15
  Dim var_AC As Variant
  Dim var_F4 As Variant
  Dim var_88 As Recordset15
  Dim var_13C As Variant
  Dim var_10C As Variant
  Dim var_E4 As Variant
  Dim Me As Recordset15
  loc_13E247C: On Error Goto loc_13E2E48
  loc_13E2489: Set var_B0 = Me.TopCtrl1
  loc_13E248F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_13E249D: Call 0.Method_arg_50 (var_B4)
  loc_13E24A5: var_C4 = CVar(var_B4) 'String
  loc_13E24AD: Set var_B0 = Me.TopCtrl1
  loc_13E24B3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000F(var_C4)
  loc_13E24BC: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_0()
  loc_13E24D5: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B()
  loc_13E24FF: var_D4 = CVar(Replace(CStr(var_C4), "E", "*", 1, -1, 0)) 'String
  loc_13E2507: Set var_E8 = Me.TopCtrl1
  loc_13E250D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(var_D4)
  loc_13E254A: unk_552784.Execute "Select * from PrinterSetup where RestCode='" & global_56 & "'", var_C4, -1
  loc_13E255B: Set global_176 = Me.TopCtrl1
  loc_13E2578: If (MemVar_1F921A8 = "Room Service") Then
  loc_13E2587:   Me.Command1.Visible = False
  loc_13E259A:   Set var_B0 = Me.Label1
  loc_13E25A0:   Call 0.Method_Form_Load0 (4, var_E8)
  loc_13E25A8:   var_E8.Visible = False
  loc_13E25BF:   Set var_B0 = Me.Label1
  loc_13E25C5:   Call 0.Method_Form_Load0 (5, var_E8)
  loc_13E25CD:   var_E8.Visible = False
  loc_13E25E4:   Set var_B0 = Me.Label1
  loc_13E25EA:   Call 0.Method_Form_Load0 (6, var_E8)
  loc_13E25F2:   var_E8.Visible = False
  loc_13E2609:   Set var_B0 = Me.Txt
  loc_13E260F:   Call 0.Method_Form_Load0 (6, var_E8)
  loc_13E2617:   var_E8.Visible = False
  loc_13E262E:   Set var_B0 = Me.Txt
  loc_13E2634:   Call 0.Method_Form_Load0 (7, var_E8)
  loc_13E263C:   var_E8.Visible = False
  loc_13E2653:   Set var_B0 = Me.Txt
  loc_13E2659:   Call 0.Method_Form_Load0 (8, var_E8)
  loc_13E2661:   var_E8.Visible = False
  loc_13E2679:   Me.Shape1.Visible = False
  loc_13E2681: End If
  loc_13E2687: If (MemVar_1F920B8 <> 1) Then
  loc_13E268E:   Set var_B0 = Me.TopCtrl1
  loc_13E2694:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(var_B0)
  loc_13E26BE:   var_D4 = CVar(Replace(CStr(var_C4), "D", "*", 1, -1, 0)) 'String
  loc_13E26C6:   Set var_E8 = Me.TopCtrl1
  loc_13E26CC:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(var_D4)
  loc_13E26E2: End If
  loc_13E2709: unk_552771.Execute "Select RateInclTax from depart where code='" & global_56 & "'", var_C4, -1
  loc_13E2714: Set var_8C = var_B0
  loc_13E2738: If (var_8C.RecordCount > 0) Then
  loc_13E2752:   var_E8 = var_8C.Fields.Item("RateInclTax")
  loc_13E275A:   var_C4 = CVar(var_E8) 'Address
  loc_13E276C:   global_120 = Proc_6_38_E68A98(var_C4)
  loc_13E2778: End If
  loc_13E277D: Set var_8C = Nothing
  loc_13E2786: var_AC = 0
  loc_13E27B6: unk_552771.Execute "Select KOtYn from depart where Code='" & global_56 & "'", var_C4, -1
  loc_13E27C6: var_AC = var_E8.Item(var_E8)
  loc_13E27CE: var_F4 = var_F4.Value
  loc_13E27DD: global_180 = CStr(var_D4)
  loc_13E2821: unk_552771.Execute "Select ShortName,Code from Depart Where Code='" & global_56 & "'", var_C4, -1
  loc_13E282C: Set var_88 = var_B0.Fields
  loc_13E2850: If (var_88.RecordCount > 0) Then
  loc_13E2884:   global_196 = CStr(var_88.Fields.Item("ShortName").Value)
  loc_13E28A7:   var_B0 = var_88.Fields
  loc_13E28AF:   var_E8 = var_B0.Item("Code")
  loc_13E28B7:   var_C4 = var_E8.Value
  loc_13E28C6:   global_200 = CStr(var_C4)
  loc_13E28D7: End If
  loc_13E28D7: Call Proc_135_82_114C700(var_B0, var_D4)
  loc_13E28E2: var_AC = 0
  loc_13E2912: unk_552771.Execute "Select Name From Depart Where Code ='" & global_56 & "'", var_C4, -1
  loc_13E291A: var_B0 = var_B0.Fields
  loc_13E2922: var_AC = var_E8.Item(var_E8)
  loc_13E292A: var_F4 = var_F4.Value
  loc_13E2940: Me.LblRest.Caption = CStr(var_D4)
  loc_13E296A: Set global_72 = New 
  loc_13E297C: Me.Recordset15.CursorLocation = 3
  loc_13E2987: var_AC = 0
  loc_13E29A7: var_B4 = "Select 'B'+ShortName From Depart Where Code='" & global_56
  loc_13E29B7: unk_552771.Execute "Select Name From Depart Where Code ='" & global_56 & "'", var_C4, -1
  loc_13E29BF: var_B0 = var_B0.Fields
  loc_13E29C7: var_AC = var_E8.Item(var_E8)
  loc_13E29CF: var_F4 = var_F4.Value
  loc_13E29EB: var_10C = "Select S.DocId as SearchCode,S.DocID From Sale1 S LEFT JOIN VOUCHER_TYPE V ON S.VTYPE=V.V_TYPE WHERE S.DELFLAG='N' AND S.VTYPE='"
  loc_13E2A43: Me.Recordset15.CursorLocation = 3
  loc_13E2A5F: var_9C = "Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.Unit,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp From ((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode Where I.Type='Finish' And I.DispCode <>9999 Order by I.Name"
  loc_13E2A6B: r_10C & var_D4 & "' ORDER BY S.DOCID", CVar(MemVar_1F92044), 3 var_9C, CVar(MemVar_1F92044), 3
  loc_13E2A79: CVarUnk
  loc_13E2A7E: VerifyVarObj
  loc_13E2A84: Set var_B0 = Me.DGItem
  loc_13E2A8A: LateIdStAd
  loc_13E2ABD: Call 0.Method_arg_50 ("Select Name From Depart Where Code ='" & global_56, "SELECT COUNT(*) FROM LASTVOU WHERE ENAME='", var_C4, -1, var_B0, var_E8, 0, var_F4)
  loc_13E2AE4: unk_552771.Execute var_D4 & "Select Name From Depart Where Code ='" & global_56 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_B0, New
  loc_13E2AEC: 1 = var_B0.Fields
  loc_13E2AF4: 1 = var_E8.Item(-1)
  loc_13E2AFC: -1 = var_F4.Value
  loc_13E2B29: If (var_D4 > 0) Then
  loc_13E2B64:   Call 0.Method_arg_50 ("Select Name From Depart Where Code ='" & global_56, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_C4, -1, var_B0, var_E8, 0)
  loc_13E2B8B:   unk_552771.Execute var_F4 & "Select Name From Depart Where Code ='" & global_56 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_D4, "SearchCode='"
  loc_13E2B93:   0 = var_B0.Fields
  loc_13E2B9B:   var_13C = var_E8.Item(1)
  loc_13E2BA3:    = var_F4.Value
  loc_13E2BC2:   Me.Find CStr(var_D4 & "'"), , 
  loc_13E2BEA: End If
  loc_13E2C01: If (Me.RecordCount > 0) Then
  loc_13E2C18:   If (Me.EOF = &HFF) Then
  loc_13E2C21:     Me.MoveLast
  loc_13E2C26:   End If
  loc_13E2C26: End If
  loc_13E2C2F: Call 0.Method_arg_160 (var_B0)
  loc_13E2C3D: Call 0.Method_arg_164 (var_B0)
  loc_13E2C68: Call Proc_135_75_1006BAC(Proc_5_1_100CB50("INI", Me))
  loc_13E2C8B: Proc_6_23_DFBA28(Me, 7590)
  loc_13E2C9A: Call 0.Method_arg_64 (CLng(MemVar_1F921AC), 11940)
  loc_13E2C9F: Call Proc_135_66_13C36F8(global_72)
  loc_13E2CC6: Me.DGItem.Top = CVar(CDbl(Me.FGrid.Top))
  loc_13E2D1A: var_9C = CVar((CDbl(Me.FGrid.Left) + (CDbl(Me.FGrid.Width) - CDbl(Me.DGItem.Width)))) 'Single
  loc_13E2D29: Me.DGItem.Left = CVar(CDbl(Me.FGrid.Top))
  loc_13E2D64: Me.DGItem.Height = CVar(CDbl(Me.FGrid.Height))
  loc_13E2D95: Me.DGRest.Top = CVar(CDbl(Me.FGrid.Top))
  loc_13E2DAE: var_D4 = Me.FGrid.Width
  loc_13E2DC1: var_E4 = Me.DGRest.Width
  loc_13E2DE9: var_9C = CVar((CDbl(Me.FGrid.Left) + (CDbl(var_D4) - CDbl(var_E4)))) 'Single
  loc_13E2DF8: Me.DGRest.Left = CVar(CDbl(Me.FGrid.Top))
  loc_13E2E33: Me.DGRest.Height = CVar(CDbl(Me.FGrid.Height))
  loc_13E2E42: Call Proc_135_72_17E4588(var_E4, var_D4)
  loc_13E2E47: Exit Sub
  loc_13E2E48: ' Referenced from: 13E247C
  loc_13E2E48: Proc_6_60_E62BC4(var_E4)
  loc_13E2E4D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E7C2C0
  'Data Table: 55274C
  loc_E7C267: Set global_64 = Nothing
  loc_E7C279: Set global_60 = Nothing
  loc_E7C28B: Set global_76 = Nothing
  loc_E7C297: global_52 = 0
  loc_E7C2A5: Set global_64 = Nothing
  loc_E7C2B7: Set global_176 = Nothing
  loc_E7C2BE: Exit Sub
End Sub

Private Sub Form_Activate() '101EB38
  'Data Table: 55274C
  Dim var_C8 As Integer
  Dim var_8C As String
  Dim unk_552771 As Connection15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Field20
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_88 As Recordset15
  loc_101E944: var_C8 = 0
  loc_101E964: var_8C = "Select 'B'+ShortName From Depart Where Code='" & global_56
  loc_101E974: unk_552771.Execute var_8C & "'", var_B0, -1
  loc_101E97C: var_B4 = var_B4.Fields
  loc_101E984: var_C8 = var_B8.Item(var_B8)
  loc_101E98C: var_CC = var_CC.Value
  loc_101E994: var_FC = var_DC & var_DC 
  loc_101E99D: var_11C = var_FC & "' Order by Description" 
  loc_101E9AB: unk_552771.Execute CStr(var_11C), "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE V_Type='", var_140
  loc_101E9B6: Set var_88 = var_144
  loc_101E9EE: If (var_88.RecordCount > 0) Then
  loc_101EA0B:   var_B8 = var_88.Fields.Item(0)
  loc_101EA22:   global_128 = CStr(var_B8.Value)
  loc_101EA36: Else
  loc_101EA49:   var_B0 = "Point of Sale Not Configured for selected Restaurant"
  loc_101EA4F:   MsgBox(var_B0, 0, var_DC, var_FC, var_11C)
  loc_101EA6C:   Me.Global.Unload Me
  loc_101EA74:   Exit Sub
  loc_101EA75: End If
  loc_101EA7B: var_C8 = 0
  loc_101EAAB: unk_552771.Execute "Select Count(*) From SundryType WHERE V_Type='" & global_128 & "'", var_B0, -1
  loc_101EAB3: var_B4 = var_B4.Fields
  loc_101EABB: var_C8 = var_B8.Item(var_B8)
  loc_101EAC3: var_CC = var_CC.Value
  loc_101EAEA: If (var_DC <= 0) Then
  loc_101EB06:   MsgBox("Voucher wise Sundry not defined", 0, var_DC, var_FC, var_11C)
  loc_101EB23:   Me.Global.Unload Me
  loc_101EB2B:   Exit Sub
  loc_101EB2C: End If
  loc_101EB31: Set var_88 = Nothing
  loc_101EB34: Exit Sub
  loc_101EB35: StAryRecMove
End Sub

Private Sub Form_Deactivate() 'E265C4
  'Data Table: 55274C
  loc_E265A9: If (global_52 = &HFF) Then
  loc_E265B9:   Me.Global.Unload Me
  loc_E265C1: End If
  loc_E265C1: Exit Sub
  loc_E265C2: Get , ,  'get  bytes
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E30B58
  'Data Table: 55274C
  loc_E30B2C: On Error Goto loc_E30B50
  loc_E30B47: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E30B4F: Exit Sub
  loc_E30B50: ' Referenced from: E30B2C
  loc_E30B50: Proc_6_60_E62BC4(Shift)
  loc_E30B55: Exit Sub
End Sub

Private Sub Command3_Click() 'E024A4
  'Data Table: 55274C
  loc_E02498: Call TopCtrl1_UnknownEvent_12()
  loc_E0249D: Call Proc_135_92_1584274()
  loc_E024A2: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ED0614
  'Data Table: 55274C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ED0576: Set var_88 = Me.TxtPer
  loc_ED057C: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ED058A: Proc_6_74_E226B0(var_8C)
  loc_ED0596: Call Proc_135_76_EF6D38(var_8C)
  loc_ED05AA: Set var_88 = Me.TxtPer
  loc_ED05B0: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ED05B8: var_8C.SelStart = 0
  loc_ED05D1: Set var_88 = Me.TxtPer
  loc_ED05D7: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ED05F2: Set var_90 = Me.TxtPer
  loc_ED05F8: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ED0600: var_98.SelLength = Len(var_8C.Text)
  loc_ED0613: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5BEB8
  'Data Table: 55274C
  loc_E5BE85: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5BE8E:   Proc_6_75_E527CC(Shift)
  loc_E5BE93: End If
  loc_E5BEA8: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5BEB1:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5BEB6: End If
  loc_E5BEB6: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E57A80
  'Data Table: 55274C
  loc_E57A52: Set var_88 = Me.TxtPer
  loc_E57A58: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E57A73: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E57A7F: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E01F04
  'Data Table: 55274C
  loc_E01EFE: Call Proc_135_84_165D318(KeyCode)
  loc_E01F03: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E4D504
  'Data Table: 55274C
  loc_E4D4E2: Set var_88 = Me.TxtPer
  loc_E4D4E8: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E4D4F6: Proc_6_73_E22704(var_8C)
  loc_E4D502: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10A1600
  'Data Table: 55274C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_10A134F: Me.DGItem.Visible = False
  loc_10A136E: If (Me.RecordCount > 0) Then
  loc_10A13AB:   Set var_B4 = Me.TxtGrid
  loc_10A13B1:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10A13B9:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10A13E2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A13EA:   var_EC = CVar(CLng(4)) 'Long
  loc_10A141D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10A1425:   Set var_B8 = Me.FGrid
  loc_10A142B:   LateIdCallSt
  loc_10A145A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A1462:   var_EC = CVar(CLng(&HB)) 'Long
  loc_10A1495:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10A14A3:   LateIdCallSt
  loc_10A150A:   var_11C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(6)))) 'String
  loc_10A1512:   Set var_B8 = Me.FGrid
  loc_10A1518:   LateIdCallSt
  loc_10A1545:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A154D:   var_EC = CVar(CLng(3)) 'Long
  loc_10A156F:   var_B0 = Me.Fields.Item("DispCode")
  loc_10A1580:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_10A1588:   Set var_B8 = Me.FGrid
  loc_10A158E:   LateIdCallSt
  loc_10A15AA: End If
  loc_10A15B6: Set var_A8 = Me.TxtGrid
  loc_10A15BC: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC, var_A4)
  loc_10A15C4: var_B8 = var_B0.Visible
  loc_10A15D6: If (var_12E = &HFF) Then
  loc_10A15E2:   Set var_A8 = Me.TxtGrid
  loc_10A15E8:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_11C, var_A4)
  loc_10A15F0:   var_B0.SetFocus
  loc_10A15FC: End If
  loc_10A15FC: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E9D010
  'Data Table: 55274C
  Dim var_A8 As Variant
  loc_E9CF94: Set var_88 = Me.DGItem
  loc_E9CFBE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9CFC6: Set var_BC = Me.DGItem
  loc_E9D000: Proc_6_138_106D6F8(Me.DGItem, global_60, 0, Me.FGPoint)
  loc_E9D00E: Exit Sub
End Sub

Private Sub Command1_Click() 'F9CFF0
  'Data Table: 55274C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_A0 As TextBox
  Dim var_B0 As TextBox
  Dim var_F0 As Double
  loc_F9CEBE: Set var_88 = Me.Txt
  loc_F9CEC4: Call 0.Method_Command1_Click0 (CInt(3), var_8C)
  loc_F9CEDF: Set var_94 = Me.Txt
  loc_F9CEE5: Call 0.Method_Command1_Click0 (CInt(2), var_98)
  loc_F9CF00: Set var_9C = Me.Txt
  loc_F9CF06: Call 0.Method_Command1_Click0 (CInt(3), var_A0)
  loc_F9CF1A: Set var_A4 = Me.TxtGt
  loc_F9CF20: Call 0.Method_Command1_Click8 (var_A6)
  loc_F9CF32: Set var_AC = Me.TxtGt
  loc_F9CF38: Call 0.Method_Command1_Click0 (var_A6, var_B0)
  loc_F9CF4D: var_F0 = Val(var_B0.Text)
  loc_F9CF55: var_E8 = 0
  loc_F9CF60: var_E4 = 0
  loc_F9CF6B: var_E0 = 0
  loc_F9CFC0: Proc_6_131_FAD2A0(1, 5, global_128, var_8C.Tag, var_98.Text, 0, var_A0.Text, global_132)
  loc_F9CFED: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '128DA4C
  'Data Table: 55274C
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  Dim var_B03 As Integer
  loc_128D47E: Set var_88 = Me.TxtGrid
  loc_128D484: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_128D492: Proc_6_74_E226B0(var_8C)
  loc_128D49E: Call Proc_135_76_EF6D38(var_8C)
  loc_128D4B1: Set var_88 = Me.TxtGrid
  loc_128D4B7: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_128D4BF: var_8C.MaxLength = 0
  loc_128D4D7: If (Index = 0) Then
  loc_128D4ED:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128D52C:   Set var_108 = Me.TxtGrid
  loc_128D532:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_128D53A:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_128D56B:   var_114 = CLng(Me.FGrid.Col)
  loc_128D57B:   If (var_114 = CLng(3)) Then
  loc_128D5A5:     Set var_8C = Me.FGrid
  loc_128D5CB:     Me.Filter = CVar(CVar(CLng(1)) & CStr(var_8C.TextMatrix)) & "'")
  loc_128D5F5:     Set var_88 = Me.TxtGrid
  loc_128D5FB:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, 4, CVar(CLng(Me.FGrid.Row)))
  loc_128D603:     var_8C.MaxLength = "OutletCode='"
  loc_128D612:   Else
  loc_128D619:     If (var_114 = CLng(4)) Then
  loc_128D633:       If (Me.RecordCount > 0) Then
  loc_128D659:         Proc_6_137_1193554(Me.DGItem, global_60, Index, Me.FGPoint)
  loc_128D667:       End If
  loc_128D67D:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128D6B4:       Me.Filter = CVar(CVar(CLng(1)) & CStr(Me.FGrid.TextMatrix)) & "'")
  loc_128D6D9:       var_11C = Me.RecordCount
  loc_128D6F0:       var_11E = Me.EOF
  loc_128D704:       var_120 = Me.BOF
  loc_128D724:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128D760:       If (CVar(CLng(&HB)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_128D763:         Exit Sub
  loc_128D764:       End If
  loc_128D76A:       Me.MoveFirst
  loc_128D782:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128D78A:       var_E4 = CVar(CLng(&HB)) 'Long
  loc_128D793:       Set var_8C = Me.FGrid
  loc_128D799:       var_B4 = var_8C.TextMatrix)
  loc_128D7CE:       Me.Find "Code='" & CStr(var_B4) & "'", 0, 1
  loc_128D7FE:       If (Me.EOF = &HFF) Then
  loc_128D807:         Me.MoveFirst
  loc_128D80C:       End If
  loc_128D815:       CVarUnk
  loc_128D81A:       VerifyVarObj
  loc_128D820:       Set var_88 = Me.DGItem
  loc_128D826:       LateIdStAd
  loc_128D837:     Else
  loc_128D83E:       If (var_114 = CLng(8)) Then
  loc_128D856:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, Me.TxtGrid, global_60, var_134, var_B4)
  loc_128D85E:         var_8C.MaxLength = var_E4
  loc_128D873:         If (global_142 = 0) Then
  loc_128D87E:           var_110 = "{Home}+{End}"
  loc_128D884:           Proc_303_0_FB9B68(CStr(var_B4), 0, var_C4, var_C4)
  loc_128D88C:         End If
  loc_128D88F:       Else
  loc_128D896:         If (var_114 = CLng(2)) Then
  loc_128D8B0:           If (Me.RecordCount > 0) Then
  loc_128D8D6:             Proc_6_137_1193554(Me.DGRest, global_64, Index, Me.FGPoint)
  loc_128D8E4:           End If
  loc_128D8ED:           var_11C = Me.RecordCount
  loc_128D904:           var_11E = Me.EOF
  loc_128D918:           var_120 = Me.BOF
  loc_128D938:           var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128D974:           If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_128D977:             Exit Sub
  loc_128D978:           End If
  loc_128D97E:           Me.MoveFirst
  loc_128D996:           var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128D99E:           var_E4 = CVar(CLng(1)) 'Long
  loc_128D9E2:           Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_128DA12:           If (Me.EOF = &HFF) Then
  loc_128DA1B:             Me.MoveFirst
  loc_128DA20:           End If
  loc_128DA29:           CVarUnk
  loc_128DA2E:           VerifyVarObj
  loc_128DA34:           Set var_88 = Me.DGRest
  loc_128DA3A:           LateIdStAd
  loc_128DA48:         End If
  loc_128DA48:       End If
  loc_128DA48:     End If
  loc_128DA48:   End If
  loc_128DA48: End If
  loc_128DA48: Exit Sub
  loc_128DA49: var_B03 = var_88
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12DD83C
  'Data Table: 55274C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_94 As String
  loc_12DD187: var_86 = Shift
  loc_12DD196: If (KeyCode = 0) Then
  loc_12DD1A3:   If (CLng(Shift) = &H1B) Then
  loc_12DD1B3:     Set var_8C = Me.TxtGrid
  loc_12DD1B9:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_12DD1C1:     var_88 = var_90.Tag
  loc_12DD1D3:     Set var_98 = Me.TxtGrid
  loc_12DD1D9:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12DD1E1:     var_9C.Text = var_94
  loc_12DD1FD:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12DD202:     Call Proc_135_76_EF6D38(arg_14)
  loc_12DD20B:     Set var_8C = Me.FGrid
  loc_12DD228:     Set var_8C = Me.TxtGrid
  loc_12DD22E:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12DD236:     var_90.Visible = FGrid.DispID_8001
  loc_12DD242:     Exit Sub
  loc_12DD243:   End If
  loc_12DD256:   var_B0 = CLng(Me.FGrid.Col)
  loc_12DD266:   If (var_B0 = CLng(2)) Then
  loc_12DD286:     Set var_9C = Me.FGPoint
  loc_12DD291:     Set var_98 = Nothing
  loc_12DD2BF:     Proc_6_69_134A198(Me.DGRest, Me.TxtGrid, KeyCode, global_64, Shift, &HFF)
  loc_12DD32E:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_12DD335:       Set var_98 = Me.DGRest
  loc_12DD354:       Proc_6_138_106D6F8(var_98, global_64, KeyCode, Me.FGPoint, 1)
  loc_12DD362:     End If
  loc_12DD36C:     If (CLng(Shift) = &HD) Then
  loc_12DD375:       Call Proc_135_71_1828ED8(KeyCode, var_B2, var_98, var_9C)
  loc_12DD380:       If (var_B2 = &HFF) Then
  loc_12DD3C6:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_142, 7)
  loc_12DD3D6:       End If
  loc_12DD3D6:     End If
  loc_12DD3D9:   Else
  loc_12DD3E0:     If (var_B0 = CLng(4)) Then
  loc_12DD439:       Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF, 1, Nothing)
  loc_12DD4A8:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_12DD4CE:         Proc_6_138_106D6F8(Me.DGItem, global_60, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_12DD4DC:       End If
  loc_12DD4E6:       If (CLng(Shift) = &HD) Then
  loc_12DD4EF:         Call Proc_135_71_1828ED8(KeyCode, var_B2, 0, 3)
  loc_12DD4FA:         If (var_B2 = &HFF) Then
  loc_12DD547:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_142, CByte((CInt(&HA) + 1)), 0)
  loc_12DD557:         End If
  loc_12DD557:       End If
  loc_12DD55A:     Else
  loc_12DD561:       If (var_B0 = CLng(8)) Then
  loc_12DD56A:         Call Proc_135_71_1828ED8(KeyCode, var_B2, 7, 0)
  loc_12DD575:         If (var_B2 = &HFF) Then
  loc_12DD5BB:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_142, &HA, 0)
  loc_12DD5CB:         End If
  loc_12DD5CE:       Else
  loc_12DD5D5:         If (var_B0 = CLng(7)) Then
  loc_12DD618:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_142 = &HFF))) Then
  loc_12DD621:             Call Proc_135_71_1828ED8(KeyCode, var_B2, 0, 0)
  loc_12DD62C:             If (var_B2 = &HFF) Then
  loc_12DD672:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_142, 8, 0)
  loc_12DD695:               var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DD69D:               var_FC = CVar(CLng(1)) 'Long
  loc_12DD6B0:               Set var_90 = Me.FGrid
  loc_12DD6B6:               LateIdCallSt
  loc_12DD6DB:               var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DD6E3:               var_FC = CVar(CLng(2)) 'Long
  loc_12DD6F6:               Set var_90 = Me.FGrid
  loc_12DD6FC:               LateIdCallSt
  loc_12DD711:               var_DC = CVar(CLng(3)) 'Long
  loc_12DD720:               Me.FGrid.Col = var_DC
  loc_12DD728:             End If
  loc_12DD728:           End If
  loc_12DD72B:         Else
  loc_12DD732:           If (var_B0 = CLng(3)) Then
  loc_12DD73F:             If (CLng(Shift) = &HD) Then
  loc_12DD748:               Call Proc_135_71_1828ED8(KeyCode, var_B2, var_90, global_196, var_FC, var_DC, var_90, global_200)
  loc_12DD753:               If (var_B2 = &HFF) Then
  loc_12DD7A0:                 Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_142, CByte((CInt(7) + 1)), 0, 0)
  loc_12DD7C3:                 var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DD7CB:                 var_FC = CVar(CLng(3)) 'Long
  loc_12DD7FE:                 If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_12DD813:                   Me.FGrid.Col = CVar(CLng(3))
  loc_12DD81E:                 Else
  loc_12DD830:                   Me.FGrid.Col = CVar(CLng(7))
  loc_12DD838:                 End If
  loc_12DD838:               End If
  loc_12DD838:             End If
  loc_12DD838:           End If
  loc_12DD838:         End If
  loc_12DD838:       End If
  loc_12DD838:     End If
  loc_12DD838:   End If
  loc_12DD838: End If
  loc_12DD838: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '10E5630
  'Data Table: 55274C
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_10E5313: Proc_6_58_E054C0(arg_10)
  loc_10E5324: If (KeyAscii = 0) Then
  loc_10E533A:   var_A0 = CLng(Me.FGrid.Col)
  loc_10E534A:   If (var_A0 = CLng(3)) Then
  loc_10E5368:     If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_10E537D:       Me.FGrid.Col = CVar(CLng(4))
  loc_10E53A1:       If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_10E53B3:         var_C4 = "Name"
  loc_10E53CE:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_60, arg_10)
  loc_10E53DD:       End If
  loc_10E53DD:     End If
  loc_10E53E0:   Else
  loc_10E53E7:     If (var_A0 = CLng(2)) Then
  loc_10E5406:       If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_10E5433:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_64, arg_10, "Name")
  loc_10E5465:         Proc_6_138_106D6F8(Me.DGItem, global_60, KeyAscii, Me.FGPoint, 0)
  loc_10E5473:       End If
  loc_10E5476:     Else
  loc_10E547D:       If (var_A0 = CLng(4)) Then
  loc_10E549C:         If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_10E54AE:           var_C4 = "Name"
  loc_10E54C9:           Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_60, arg_10, var_C4)
  loc_10E54E3:           Set var_CC = Me.FGPoint
  loc_10E54FB:           Proc_6_138_106D6F8(Me.DGItem, global_60, KeyAscii, var_CC, 0)
  loc_10E5509:         End If
  loc_10E550C:       Else
  loc_10E5513:         If (var_A0 = CLng(7)) Then
  loc_10E5520:           Set var_8C = Me.TxtGrid
  loc_10E5526:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_CC, var_C4)
  loc_10E5541:           Proc_6_42_129A86C(var_CC, arg_10, 8, 3)
  loc_10E5550:         Else
  loc_10E5557:           If (var_A0 = CLng(8)) Then
  loc_10E5564:             Set var_8C = Me.TxtGrid
  loc_10E556A:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_CC, 0)
  loc_10E5585:             Proc_6_42_129A86C(var_CC, arg_10, 8)
  loc_10E5594:           Else
  loc_10E559B:             If (var_A0 = CLng(3)) Then
  loc_10E55B9:               If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_10E55CE:                 Me.FGrid.Col = CVar(CLng(4))
  loc_10E55F2:                 If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_10E561F:                   Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_60, arg_10, "Name")
  loc_10E562E:                 End If
  loc_10E562E:               End If
  loc_10E562E:             End If
  loc_10E562E:           End If
  loc_10E562E:         End If
  loc_10E562E:       End If
  loc_10E562E:     End If
  loc_10E562E:   End If
  loc_10E562E: End If
  loc_10E562E: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F62BE8
  'Data Table: 55274C
  Dim var_A0 As Long
  loc_F62AB8: On Error Goto loc_F62BE2
  loc_F62AC7: If (KeyCode = 0) Then
  loc_F62ADD:   var_A0 = CLng(Me.FGrid.Col)
  loc_F62AED:   If (var_A0 = CLng(2)) Then
  loc_F62B13:     If ((Shift <> &HD) And (CBool(Me.DGRest.Visible) = 0)) Then
  loc_F62B24:       Call TxtGrid_KeyDown(KeyCode, global_140)
  loc_F62B53:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_64, Shift, "Name")
  loc_F62B62:     End If
  loc_F62B65:   Else
  loc_F62B6C:     If (var_A0 = CLng(4)) Then
  loc_F62B92:       If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F62BA3:         Call TxtGrid_KeyDown(KeyCode, global_140)
  loc_F62BD2:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_60, Shift, "Name", &HFF)
  loc_F62BE1:       End If
  loc_F62BE1:     End If
  loc_F62BE1:   End If
  loc_F62BE1: End If
  loc_F62BE1: Exit Sub
  loc_F62BE2: ' Referenced from: F62AB8
  loc_F62BE2: Proc_6_60_E62BC4(0, &HFF, 0)
  loc_F62BE7: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E215A0
  'Data Table: 55274C
  Dim arg_10 As Integer
  loc_E21588: If (Cancel = 0) Then
  loc_E21591:   Call Proc_135_71_1828ED8(Cancel, var_88)
  loc_E2159A:   arg_10 = Not(var_88)
  loc_E2159D: End If
  loc_E2159D: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F10A08
  'Data Table: 55274C
  Dim var_A4 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F10930: Set var_A4 = Me.ListView
  loc_F1097A: Set var_BC = Me.Txt
  loc_F10980: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F10988: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F109B4: Me.FrmList.Visible = False
  loc_F109E4: Set var_9C = Me.Txt
  loc_F109EA: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A4)
  loc_F109F2: var_A4.SetFocus
  loc_F10A06: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E85828
  'Data Table: 55274C
  loc_E857D4: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_E857D7:   Call DGTable_UnknownEvent_9()
  loc_E857DC: End If
  loc_E857F8: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E857FB:   Call DGItem_UnknownEvent_9()
  loc_E85800: End If
  loc_E8581C: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E8581F:   Call DGRest_UnknownEvent_9()
  loc_E85824: End If
  loc_E85824: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'FE5274
  'Data Table: 55274C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE50AF: Me.DGRest.Visible = False
  loc_FE50CE: If (Me.RecordCount > 0) Then
  loc_FE510B:   Set var_B4 = Me.TxtGrid
  loc_FE5111:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B8)
  loc_FE5119:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_FE5142:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE514A:   var_EC = CVar(CLng(2)) 'Long
  loc_FE517D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE5185:   Set var_B8 = Me.FGrid
  loc_FE518B:   LateIdCallSt
  loc_FE51BA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE51C2:   var_EC = CVar(CLng(1)) 'Long
  loc_FE51E4:   var_B0 = Me.Fields.Item("Code")
  loc_FE51F5:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE51FD:   Set var_B8 = Me.FGrid
  loc_FE5203:   LateIdCallSt
  loc_FE521F: End If
  loc_FE522B: Set var_A8 = Me.TxtGrid
  loc_FE5231: Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE5239: var_A4 = var_B0.Visible
  loc_FE524B: If (var_12E = &HFF) Then
  loc_FE5257:   Set var_A8 = Me.TxtGrid
  loc_FE525D:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FE5265:   var_B0.SetFocus
  loc_FE5271: End If
  loc_FE5271: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E9CE90
  'Data Table: 55274C
  Dim var_A8 As Variant
  loc_E9CE14: Set var_88 = Me.DGRest
  loc_E9CE3E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9CE46: Set var_BC = Me.DGRest
  loc_E9CE80: Proc_6_138_106D6F8(Me.DGRest, global_64, 0, Me.FGPoint)
  loc_E9CE8E: Exit Sub
End Sub

Private Sub Command2_Click() 'E1D3D0
  'Data Table: 55274C
  loc_E1D3B4: Call TopCtrl1_UnknownEvent_1C()
  loc_E1D3BD: Set var_88 = Me.FGrid
  loc_E1D3CE: Exit Sub
End Sub

Public Function global_52Get() '5544D0
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '5544DF
  global_52 = Value
End Sub

Public Function global_56Get() '5544EE
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '5544FD
  global_56 = Value
End Sub

Public Sub FindMove(mDocId) 'E6DA50
  'Data Table: 55274C
  Dim Me As Recordset15
  loc_E6D9FA: Me.MoveFirst
  loc_E6DA24: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E6DA44: If (Me.EOF = 0) Then
  loc_E6DA47:   Call Proc_135_72_17E4588(var_9C)
  loc_E6DA4C: End If
  loc_E6DA4C: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E96FC0
  'Data Table: 55274C
  Dim Me As Recordset15
  Dim var_2B33 As Variant
  loc_E96F4E: On Error Goto loc_E96FB7
  loc_E96F57: Me.MoveFirst
  loc_E96F81: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96FA9: Proc_5_0_110649C(&HFF, Me, global_72)
  loc_E96FB1: Call Proc_135_72_17E4588(0)
  loc_E96FB6: Exit Sub
  loc_E96FB7: ' Referenced from: E96F4E
  loc_E96FB7: Proc_6_60_E62BC4(var_A0)
  loc_E96FBC: Exit Sub
  loc_E96FBD: var_2B33 = InStr(, , , )
End Sub

Public Sub Proc_135_66_13C36F8
  'Data Table: 55274C
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  loc_13C2D82: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_13C2D9D: Me.FGrid.Top = CVar(CDbl(1200))
  loc_13C2DB8: Me.FGrid.Height = CVar(CDbl(5500))
  loc_13C2DD3: Me.FGrid.Width = CVar(CDbl(8150))
  loc_13C2DEE: Me.DGItem.Left = CVar(CDbl(3000))
  loc_13C2E09: Me.DGItem.Top = CVar(CDbl(1000))
  loc_13C2E1F: Set var_A8 = Me.Txt
  loc_13C2E25: Call 0.Method_Proc_135_66_13C36F80 (CInt(3), var_AC)
  loc_13C2E44: Me.DGTable.Left = CVar(var_AC.Left)
  loc_13C2E60: Set var_B4 = Me.Txt
  loc_13C2E66: Call 0.Method_Proc_135_66_13C36F80 (CInt(3), var_B8)
  loc_13C2E81: Set var_A8 = Me.Txt
  loc_13C2E87: Call 0.Method_Proc_135_66_13C36F80 (CInt(3), var_AC)
  loc_13C2E9F: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13C2EAE: Me.DGTable.Top = CVar(var_AC.Left)
  loc_13C2ED3: Me.DGRest.Left = CVar(CDbl(3000))
  loc_13C2EEE: Me.DGRest.Top = CVar(CDbl(1000))
  loc_13C2EFA: Set var_C4 = Me.FGrid
  loc_13C2F11: global_96 = CStr(CLng(var_C4.BackColor))
  loc_13C2F27: var_C4.Cols = &H1C
  loc_13C2F2F: var_94 = CVar(CLng(0)) 'Long
  loc_13C2F34: var_E8 = &HFA
  loc_13C2F40: LateIdCallSt
  loc_13C2F48: var_94 = 0
  loc_13C2F54: var_E8 = CVar(CLng(&HC)) 'Long
  loc_13C2F59: var_108 = "KSNo"
  loc_13C2F62: LateIdCallSt
  loc_13C2F6D: var_94 = CVar(CLng(&HC)) 'Long
  loc_13C2F72: var_E8 = 0
  loc_13C2F7E: LateIdCallSt
  loc_13C2F86: var_94 = 0
  loc_13C2F92: var_E8 = CVar(CLng(1)) 'Long
  loc_13C2F97: var_108 = "Rest"
  loc_13C2FA0: LateIdCallSt
  loc_13C2FAB: var_94 = CVar(CLng(1)) 'Long
  loc_13C2FB6: var_E8 = CVar(CInt(1)) 'Integer
  loc_13C2FBD: LateIdCallSt
  loc_13C2FC8: var_94 = CVar(CLng(1)) 'Long
  loc_13C2FCD: var_E8 = 0
  loc_13C2FD9: LateIdCallSt
  loc_13C2FE1: var_94 = 0
  loc_13C2FED: var_E8 = CVar(CLng(2)) 'Long
  loc_13C2FF2: var_108 = "Rest."
  loc_13C2FFB: LateIdCallSt
  loc_13C3006: var_94 = CVar(CLng(2)) 'Long
  loc_13C3011: var_E8 = CVar(CInt(1)) 'Integer
  loc_13C3018: LateIdCallSt
  loc_13C3023: var_94 = CVar(CLng(2)) 'Long
  loc_13C3028: var_E8 = &H258
  loc_13C3034: LateIdCallSt
  loc_13C303C: var_94 = 0
  loc_13C3048: var_E8 = CVar(CLng(3)) 'Long
  loc_13C304D: var_108 = "Item Code"
  loc_13C3056: LateIdCallSt
  loc_13C3061: var_94 = CVar(CLng(3)) 'Long
  loc_13C306C: var_E8 = CVar(CInt(1)) 'Integer
  loc_13C3073: LateIdCallSt
  loc_13C307E: var_94 = CVar(CLng(3)) 'Long
  loc_13C3083: var_E8 = &H258
  loc_13C308F: LateIdCallSt
  loc_13C3097: var_94 = 0
  loc_13C30A3: var_E8 = CVar(CLng(4)) 'Long
  loc_13C30A8: var_108 = "Item Name"
  loc_13C30B1: LateIdCallSt
  loc_13C30BC: var_94 = CVar(CLng(4)) 'Long
  loc_13C30C7: var_E8 = CVar(CInt(1)) 'Integer
  loc_13C30CE: LateIdCallSt
  loc_13C30D9: var_94 = CVar(CLng(4)) 'Long
  loc_13C30DE: var_E8 = &H8FC
  loc_13C30EA: LateIdCallSt
  loc_13C30F2: var_94 = 0
  loc_13C30FE: var_E8 = CVar(CLng(5)) 'Long
  loc_13C3103: var_108 = "KOT No."
  loc_13C310C: LateIdCallSt
  loc_13C3117: var_94 = CVar(CLng(5)) 'Long
  loc_13C3122: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C3129: LateIdCallSt
  loc_13C3134: var_94 = CVar(CLng(5)) 'Long
  loc_13C313F: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C3146: LateIdCallSt
  loc_13C3151: var_94 = CVar(CLng(5)) 'Long
  loc_13C3156: var_E8 = &H320
  loc_13C3162: LateIdCallSt
  loc_13C316A: var_94 = 0
  loc_13C3176: var_E8 = CVar(CLng(6)) 'Long
  loc_13C317B: var_108 = "Unit"
  loc_13C3184: LateIdCallSt
  loc_13C318F: var_94 = CVar(CLng(6)) 'Long
  loc_13C319A: var_E8 = CVar(CInt(1)) 'Integer
  loc_13C31A1: LateIdCallSt
  loc_13C31AC: var_94 = CVar(CLng(6)) 'Long
  loc_13C31B1: var_E8 = &H258
  loc_13C31BD: LateIdCallSt
  loc_13C31C5: var_94 = 0
  loc_13C31D1: var_E8 = CVar(CLng(7)) 'Long
  loc_13C31D6: var_108 = "Qty"
  loc_13C31DF: LateIdCallSt
  loc_13C31EA: var_94 = CVar(CLng(7)) 'Long
  loc_13C31F5: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C31FC: LateIdCallSt
  loc_13C3207: var_94 = CVar(CLng(7)) 'Long
  loc_13C3212: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C3219: LateIdCallSt
  loc_13C3224: var_94 = CVar(CLng(7)) 'Long
  loc_13C3229: var_E8 = &H320
  loc_13C3235: LateIdCallSt
  loc_13C323D: var_94 = 0
  loc_13C3249: var_E8 = CVar(CLng(8)) 'Long
  loc_13C324E: var_108 = "Rate"
  loc_13C3257: LateIdCallSt
  loc_13C3262: var_94 = CVar(CLng(8)) 'Long
  loc_13C326D: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C3274: LateIdCallSt
  loc_13C327F: var_94 = CVar(CLng(8)) 'Long
  loc_13C328A: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C3291: LateIdCallSt
  loc_13C329C: var_94 = CVar(CLng(8)) 'Long
  loc_13C32A1: var_E8 = &H320
  loc_13C32AD: LateIdCallSt
  loc_13C32B5: var_94 = 0
  loc_13C32C1: var_E8 = CVar(CLng(9)) 'Long
  loc_13C32C6: var_108 = "Rate1"
  loc_13C32CF: LateIdCallSt
  loc_13C32DA: var_94 = CVar(CLng(9)) 'Long
  loc_13C32E5: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C32EC: LateIdCallSt
  loc_13C32F7: var_94 = CVar(CLng(9)) 'Long
  loc_13C3302: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C3309: LateIdCallSt
  loc_13C3314: var_94 = CVar(CLng(9)) 'Long
  loc_13C3319: var_E8 = 0
  loc_13C3325: LateIdCallSt
  loc_13C332D: var_94 = 0
  loc_13C3339: var_E8 = CVar(CLng(&HA)) 'Long
  loc_13C333E: var_108 = "Amount"
  loc_13C3347: LateIdCallSt
  loc_13C3352: var_94 = CVar(CLng(&HA)) 'Long
  loc_13C335D: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C3364: LateIdCallSt
  loc_13C336F: var_94 = CVar(CLng(&HA)) 'Long
  loc_13C337A: var_E8 = CVar(CInt(7)) 'Integer
  loc_13C3381: LateIdCallSt
  loc_13C338C: var_94 = CVar(CLng(&HA)) 'Long
  loc_13C3391: var_E8 = &H3E8
  loc_13C339D: LateIdCallSt
  loc_13C33A8: var_94 = CVar(CLng(&HD)) 'Long
  loc_13C33AD: var_E8 = 0
  loc_13C33B9: LateIdCallSt
  loc_13C33C4: var_94 = CVar(CLng(&HB)) 'Long
  loc_13C33C9: var_E8 = 0
  loc_13C33D5: LateIdCallSt
  loc_13C33E0: var_94 = CVar(CLng(&HE)) 'Long
  loc_13C33E5: var_E8 = 0
  loc_13C33F1: LateIdCallSt
  loc_13C33FC: var_94 = CVar(CLng(&HF)) 'Long
  loc_13C3401: var_E8 = 0
  loc_13C340D: LateIdCallSt
  loc_13C3418: var_94 = CVar(CLng(&H10)) 'Long
  loc_13C341D: var_E8 = 0
  loc_13C3429: LateIdCallSt
  loc_13C3434: var_94 = CVar(CLng(&H11)) 'Long
  loc_13C3439: var_E8 = 0
  loc_13C3445: LateIdCallSt
  loc_13C3450: var_94 = CVar(CLng(&H12)) 'Long
  loc_13C3455: var_E8 = 0
  loc_13C3461: LateIdCallSt
  loc_13C346C: var_94 = CVar(CLng(&H14)) 'Long
  loc_13C3471: var_E8 = 0
  loc_13C347D: LateIdCallSt
  loc_13C3488: var_94 = CVar(CLng(&H13)) 'Long
  loc_13C348D: var_E8 = 0
  loc_13C3499: LateIdCallSt
  loc_13C34A4: var_94 = CVar(CLng(&H18)) 'Long
  loc_13C34A9: var_E8 = 0
  loc_13C34B5: LateIdCallSt
  loc_13C34C0: var_94 = CVar(CLng(&H19)) 'Long
  loc_13C34C5: var_E8 = 0
  loc_13C34D1: LateIdCallSt
  loc_13C34DC: var_94 = CVar(CLng(&H1A)) 'Long
  loc_13C34E1: var_E8 = 0
  loc_13C34ED: LateIdCallSt
  loc_13C34F5: var_94 = 0
  loc_13C3501: var_E8 = CVar(CLng(&HB)) 'Long
  loc_13C3506: var_108 = "Item Code"
  loc_13C350F: LateIdCallSt
  loc_13C3517: var_94 = 0
  loc_13C3523: var_E8 = CVar(CLng(&HE)) 'Long
  loc_13C3528: var_108 = "Disc %"
  loc_13C3531: LateIdCallSt
  loc_13C3539: var_94 = 0
  loc_13C3545: var_E8 = CVar(CLng(&HF)) 'Long
  loc_13C354A: var_108 = "Disc Amt."
  loc_13C3553: LateIdCallSt
  loc_13C355B: var_94 = 0
  loc_13C3567: var_E8 = CVar(CLng(&H10)) 'Long
  loc_13C356C: var_108 = "Tax %"
  loc_13C3575: LateIdCallSt
  loc_13C357D: var_94 = 0
  loc_13C3589: var_E8 = CVar(CLng(&H11)) 'Long
  loc_13C358E: var_108 = "Tax Amt"
  loc_13C3597: LateIdCallSt
  loc_13C359F: var_94 = 0
  loc_13C35AB: var_E8 = CVar(CLng(&H12)) 'Long
  loc_13C35B0: var_108 = "Total"
  loc_13C35B9: LateIdCallSt
  loc_13C35C1: var_94 = 0
  loc_13C35CD: var_E8 = CVar(CLng(&H14)) 'Long
  loc_13C35D2: var_108 = "R Off"
  loc_13C35DB: LateIdCallSt
  loc_13C35E3: var_94 = 0
  loc_13C35EF: var_E8 = CVar(CLng(&H13)) 'Long
  loc_13C35F4: var_108 = "Disc Y/N"
  loc_13C35FD: LateIdCallSt
  loc_13C3605: var_94 = 0
  loc_13C3611: var_E8 = CVar(CLng(&H18)) 'Long
  loc_13C3616: var_108 = "Tax Cat Code"
  loc_13C361F: LateIdCallSt
  loc_13C362A: var_94 = CVar(CLng(&H15)) 'Long
  loc_13C362F: var_E8 = 0
  loc_13C363B: LateIdCallSt
  loc_13C3646: var_94 = CVar(CLng(&H16)) 'Long
  loc_13C364B: var_E8 = 0
  loc_13C3657: LateIdCallSt
  loc_13C3662: var_94 = CVar(CLng(&H17)) 'Long
  loc_13C3667: var_E8 = 0
  loc_13C3673: LateIdCallSt
  loc_13C367E: var_94 = CVar(CLng(&H1B)) 'Long
  loc_13C3683: var_E8 = 0
  loc_13C368F: LateIdCallSt
  loc_13C3699: Set var_C4 = Nothing 
  loc_13C36A1: Set var_11C = Me.FGCat
  loc_13C36B8: global_96 = CStr(CLng(var_11C.BackColor))
  loc_13C36C5: var_94 = CVar(CLng(3)) 'Long
  loc_13C36CA: var_E8 = &H7D0
  loc_13C36D6: LateIdCallSt
  loc_13C36EA: var_11C.Cols = 8
  loc_13C36F1: Set var_11C = Nothing 
  loc_13C36F5: Exit Sub
End Sub

Public Sub Proc_135_67_15ECAB0
  'Data Table: 55274C
  Dim Me As Recordset15
  Dim var_F4 As Fields15
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim unk_552771 As Connection15
  Dim var_AE As Integer
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_170 As Variant
  Dim var_2D8 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_290 As Variant
  Dim var_2B0 As Variant
  Dim var_300 As Variant
  Dim var_310 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_2E8 As Variant
  Dim var_1E0 As Variant
  Dim var_2A0 As Variant
  Dim var_388 As Variant
  Dim var_3A8 As Variant
  Dim var_434 As Variant
  Dim var_108 As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_15EB7C0: On Error Goto loc_15ECAA9
  loc_15EB7CF: Me.Filter = "ModType='POS'"
  loc_15EB7EB: If (Me.RecordCount > 0) Then
  loc_15EB7F1:   MemVar_1F923C0 = "N"
  loc_15EB7F8:   MemVar_1F923C4 = "N"
  loc_15EB7FF:   MemVar_1F923C8 = "K"
  loc_15EB835:   var_128 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_15EB843:   var_8C = CStr(var_128 & "'")
  loc_15EB85D:   var_128 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.REstCODE=S.ItemRestCode) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='") 'String
  loc_15EB8D0:   var_1A0 = var_128 & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) " 
  loc_15EB8D5:   var_90 = CStr(var_1A0)
  loc_15EB913:   var_F4 = Me.Fields
  loc_15EB923:   var_108 = var_F4.Item("SearchCode").Value
  loc_15EB92B:   var_148 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_108 
  loc_15EB939:   var_94 = CStr(var_148 & "' order by sno ")
  loc_15EB956:   If (var_8C = vbNullString) Then
  loc_15EB959:     Exit Sub
  loc_15EB95A:   End If
  loc_15EB962:   If (var_90 = vbNullString) Then
  loc_15EB965:     Exit Sub
  loc_15EB966:   End If
  loc_15EB96E:   If (var_94 = vbNullString) Then
  loc_15EB971:     Exit Sub
  loc_15EB972:   End If
  loc_15EB988:   unk_552771.Execute var_8C, var_108, -1
  loc_15EB993:   Set var_BC = var_F4
  loc_15EB9B2:   unk_552771.Execute var_90, var_108, -1
  loc_15EB9BD:   Set var_C0 = var_F4
  loc_15EB9DC:   unk_552771.Execute var_94, var_108, -1
  loc_15EB9E7:   Set var_C4 = var_F4
  loc_15EB9F2:   var_AE = 7
  loc_15EB9F7:   Close 1
  loc_15EBA00:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_15EBA04:   ' Referenced from: 15EC93B
  loc_15EBA13:   If Not(var_BC.EOF) Then
  loc_15EBA18:     var_9A = 0
  loc_15EBA1D:     var_9C = 1
  loc_15EBA37:     If ((global_192 = "Restaurant") Or (global_192 = "Hall")) Then
  loc_15EBA48:       var_98 = "** " & "BILL" & " **"
  loc_15EBA51:     Else
  loc_15EBA62:       var_98 = "** " & global_192 & " **"
  loc_15EBA68:     End If
  loc_15EBA6E:     If (var_9A = 0) Then
  loc_15EBA9F:       var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_15EBAD6:       var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_15EBB12:       Proc_6_39_E7C810(var_148, CVar(var_BC.Fields.Item("VNo")), var_9C, var_9A)
  loc_15EBB35:       var_170 = (Space(8) + CVar(Proc_6_45_EAD428(CStr(var_148), &HA, var_AE)))
  loc_15EBB3B:       Print 1, Me.Fields.Item("SearchCode").Value
  loc_15EBB5A:       Print 1
  loc_15EBB7C:       var_F4 = var_BC.Fields
  loc_15EBCC3:       Proc_6_39_E7C810(var_2E8, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_15EBCE4:       var_148 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_F4.Item("VDate")), var_F4), &H12)) 'String
  loc_15EBCE7:       var_158 = (Space(6) + var_148)
  loc_15EBCEE:       var_180 = (CVar(Proc_6_45_EAD428(CStr(var_148), &HA, var_AE)) + Space(4))
  loc_15EBCF8:       var_1D0 = (CVar(var_F4.Item("VDate")) & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME")), var_F4), &HA)))
  loc_15EBCFF:       var_1F0 = (var_1D0 + Space(6))
  loc_15EBD09:       var_230 = (var_1F0 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_15EBD10:       var_250 = (var_230 + Space(4))
  loc_15EBD1A:       var_290 = (var_250 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_15EBD21:       var_2B0 = (var_290 + Space(6))
  loc_15EBD2B:       var_310 = (var_2B0 + CVar(Proc_6_45_EAD428(CStr(var_2E8), 7)))
  loc_15EBD31:       Print 1, var_310
  loc_15EBD9F:       Print 1, vbNullString
  loc_15EBDAA:       Print 1, vbNullString
  loc_15EBDB2:       var_9A = 5
  loc_15EBDB5:     End If
  loc_15EBDB7:     var_B6 = 1
  loc_15EBDCE:     If (var_C0.RecordCount > 0) Then
  loc_15EBDD4:       var_C0.MoveFirst
  loc_15EBDD9:       ' Referenced from: 15EC539
  loc_15EBDD9:     End If
  loc_15EBDE8:     If Not(var_C0.EOF) Then
  loc_15EBDF1:       If (var_9A = 0) Then
  loc_15EBE22:         var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_15EBE59:         var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_15EBE95:         Proc_6_39_E7C810(var_148, CVar(var_BC.Fields.Item("VNo")), var_B6)
  loc_15EBEB8:         var_170 = (Space(8) + CVar(Proc_6_45_EAD428(CStr(var_148), &HA)))
  loc_15EBEBE:         Print 1, Space(4)
  loc_15EBEDD:         Print 1
  loc_15EC046:         Proc_6_39_E7C810(var_2E8, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_15EC06A:         var_158 = (Space(6) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))
  loc_15EC071:         var_180 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12))), &HA)) + Space(4))
  loc_15EC07B:         var_1D0 = (CVar(var_BC.Fields.Item("VDate")) & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_15EC082:         var_1F0 = (var_1D0 + Space(6))
  loc_15EC08C:         var_230 = (var_1F0 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_15EC093:         var_250 = (var_230 + Space(4))
  loc_15EC09D:         var_290 = (var_250 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_15EC0A4:         var_2B0 = (var_290 + Space(6))
  loc_15EC0AB:         var_300 = CVar(Proc_6_45_EAD428(CStr(var_2E8), 7)) 'String
  loc_15EC0AE:         var_310 = (var_2B0 + var_300)
  loc_15EC0B4:         Print 1, var_310
  loc_15EC122:         Print 1, vbNullString
  loc_15EC12D:         Print 1, vbNullString
  loc_15EC135:         var_9A = 5
  loc_15EC138:       End If
  loc_15EC1D7:       Proc_6_39_E7C810(var_250, CVar(var_C0.Fields.Item("qty")))
  loc_15EC222:       Proc_6_39_E7C810(var_300, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_15EC26D:       Proc_6_39_E7C810(var_3E0, CVar(var_C0.Fields.Item("Amt")), 1)
  loc_15EC2B8:       var_148 = (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)) + Space(4))
  loc_15EC2CE:       var_170 = CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item("KOTNo").Value), 5, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))) 'String
  loc_15EC2D1:       var_180 = (1 + var_170)
  loc_15EC2E5:       var_1C0 = (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)) & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value + Space(2))
  loc_15EC2FA:       var_1E0 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("ICODE")), var_9A), 7, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))) 'String
  loc_15EC2FD:       var_1F0 = (1 + var_1E0)
  loc_15EC316:       var_230 = (var_1F0 + CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item("ItemName").Value), &H1E)))
  loc_15EC32F:       var_2A0 = (var_230 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_250, "0")), 4)))
  loc_15EC343:       var_2D8 = (Space(6) + Space(3))
  loc_15EC35C:       var_388 = (CVar(var_BC.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_300, "0.00")), 7)))
  loc_15EC370:       var_3A8 = (var_388 + Space(1))
  loc_15EC389:       var_434 = (var_3A8 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_3E0, "0.00")), &HB)))
  loc_15EC407:       Print 1, CStr(var_434)
  loc_15EC413:       var_9A = (var_9A + 1)
  loc_15EC420:       If (var_9A = (&H1A - var_AE)) Then
  loc_15EC437:         If (var_C0.RecordCount = &HE) Then
  loc_15EC43F:           Print 1, vbNullString
  loc_15EC44B:           var_9A = (var_9A + 1)
  loc_15EC451:         Else
  loc_15EC457:           var_9C = (var_9C + 1)
  loc_15EC45F:           Print 1, vbNullString
  loc_15EC46B:           var_9A = (var_9A + 1)
  loc_15EC483:           var_128 = (Space(&H3E) + "Contd. Page ")
  loc_15EC49E:           Print 1, CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)) & CVar(CStr(var_9C)) & "..."
  loc_15EC4B7:           var_9A = (var_9A + 1)
  loc_15EC4BA:           ' Referenced from:   15EC4D7
  loc_15EC4C0:           If (var_9A <> &H24) Then
  loc_15EC4C8:             Print 1, vbNullString
  loc_15EC4D4:             var_9A = (var_9A + 1)
  loc_15EC4D7:             GoTo loc_15EC4BA
  loc_15EC4DA:           End If
  loc_15EC4DC:           var_9A = 0
  loc_15EC4DF:         End If
  loc_15EC50C:         Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_9A, var_9A, var_9A)
  loc_15EC514:         var_148 = (var_9A + CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)))
  loc_15EC519:         var_CC = CSng(CVar(CStr(var_9C)))
  loc_15EC52E:         var_B6 = (var_B6 + 1)
  loc_15EC534:         var_C0.MoveNext
  loc_15EC539:         GoTo loc_15EBDD9
  loc_15EC53C:       End If
  loc_15EC53C:     End If
  loc_15EC546:     If (var_9A < (&H1A - var_AE)) Then
  loc_15EC549:       ' Referenced from: 15EC56D
  loc_15EC556:       If (var_9A <> ((&H1A - var_AE) + 1)) Then
  loc_15EC55E:         Print 1, vbNullString
  loc_15EC56A:         var_9A = (var_9A + 1)
  loc_15EC56D:         GoTo loc_15EC549
  loc_15EC570:       End If
  loc_15EC570:     End If
  loc_15EC573:     var_C4.MoveFirst
  loc_15EC578:     ' Referenced from: 15EC930
  loc_15EC587:     If Not(var_C4.EOF) Then
  loc_15EC5B4:       var_444 = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_15EC5D2:       If (var_444 = CVar(MemVar_1F92070 & "ROFF")) Then
  loc_15EC5D5:         GoTo loc_15EC928
  loc_15EC5D8:       End If
  loc_15EC5EB:       If (var_444 = CVar(MemVar_1F92070 & "NET")) Then
  loc_15EC5F3:         Print 1, vbNullString
  loc_15EC61F:         Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)), CVar(var_C4.Fields.Item("Amount")), var_9A, var_B6, var_CC)
  loc_15EC639:         If (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)) > 0) Then
  loc_15EC66F:           Proc_6_39_E7C810(CVar(CStr(var_9C)), CVar(var_C4.Fields.Item("Amount")), var_9C)
  loc_15EC6B2:           var_1A0 = (Space(&H3C) + CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(var_9C)), "0.00")), &H12, 1, 1)))
  loc_15EC6B8:           Print 1, Space(2)
  loc_15EC6D9:         End If
  loc_15EC6DC:       Else
  loc_15EC6EF:         If (var_444 = CVar(MemVar_1F92070 & "SCH")) Then
  loc_15EC725:           Proc_6_39_E7C810(CVar(CStr(var_9C)), CVar(var_C4.Fields.Item("Amount")), var_9A)
  loc_15EC768:           var_1A0 = (Space(&H3C) + CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(var_9C)), "0.00")), &H12, 1)))
  loc_15EC76E:           Print 1, Space(2)
  loc_15EC792:         Else
  loc_15EC7A5:           If (var_444 = CVar(MemVar_1F92070 & "ST")) Then
  loc_15EC7D4:             var_128 = CVar(var_C4.Fields.Item("Amount")) 'Address
  loc_15EC7DB:             Proc_6_39_E7C810(CVar(CStr(var_9C)), var_128, 1)
  loc_15EC81E:             var_1A0 = (Space(&H3C) + CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(var_9C)), "0.00")), &H12, 1)))
  loc_15EC824:             Print 1, Space(2)
  loc_15EC848:           Else
  loc_15EC86E:             Proc_6_39_E7C810(var_128, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_15EC888:             If (var_128 > 0) Then
  loc_15EC8BE:               Proc_6_39_E7C810(CVar(CStr(var_9C)), CVar(var_C4.Fields.Item("Amount")))
  loc_15EC8D2:               var_158 = "0.00"
  loc_15EC901:               var_1A0 = (Space(&H3C) + CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(var_9C)), var_158)), &H12, 1)))
  loc_15EC907:               Print 1, Space(2)
  loc_15EC928:             End If
  loc_15EC928:           End If
  loc_15EC928:         End If
  loc_15EC928:         ' Referenced from: 15EC5D5
  loc_15EC928:       End If
  loc_15EC92B:       var_C4.MoveNext
  loc_15EC930:       GoTo loc_15EC578
  loc_15EC933:     End If
  loc_15EC936:     var_BC.MoveNext
  loc_15EC93B:     GoTo loc_15EBA04
  loc_15EC93E:   End If
  loc_15EC943:   Print 1, vbNullString
  loc_15EC94E:   Print 1, vbNullString
  loc_15EC959:   Print 1, vbNullString
  loc_15EC964:   Print 1, vbNullString
  loc_15EC96F:   Print 1, vbNullString
  loc_15EC97A:   Print 1, vbNullString
  loc_15EC985:   Print 1, vbNullString
  loc_15EC990:   Print 1, vbNullString
  loc_15EC99B:   Print 1, vbNullString
  loc_15EC9A6:   Print 1, vbNullString
  loc_15EC9B1:   Print 1, vbNullString
  loc_15EC9B9:   Close 1
  loc_15EC9C2:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_15EC9F8:   var_128 = "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value 
  loc_15EC9FE:   Print 1, var_128
  loc_15ECA14:   Close 1
  loc_15ECA1E:   If (MemVar_1F923B8 = "Y") Then
  loc_15ECA3A:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_15ECA44:   Else
  loc_15ECA5D:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_15ECA64:   End If
  loc_15ECA69:   Set var_BC = Nothing
  loc_15ECA71:   Set var_C0 = Nothing
  loc_15ECA79:   Set var_C4 = Nothing
  loc_15ECA7F: Else
  loc_15ECA98:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_128, CVar(CStr(var_9C)), var_158)
  loc_15ECAA8: End If
  loc_15ECAA8: Exit Sub
  loc_15ECAA9: ' Referenced from: 15EB7C0
  loc_15ECAA9: Proc_6_60_E62BC4(1, var_9A)
  loc_15ECAAE: Exit Sub
End Sub

Public Sub Proc_135_68_1699A54
  'Data Table: 55274C
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim unk_552771 As Connection15
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_164 As String
  Dim var_174 As Variant
  Dim var_18C As Variant
  Dim var_1E4 As Variant
  Dim var_26C As Variant
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_1F4 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_244 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_19C As Variant
  Dim var_214 As Variant
  Dim var_2B8 As Variant
  Dim var_2DC As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_2EC As Variant
  Dim var_30C As Variant
  Dim var_384 As Variant
  Dim var_3A4 As Variant
  Dim var_42C As Variant
  Dim var_108 As Variant
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_169829C: On Error Goto loc_1699A4E
  loc_16982AB: Me.Filter = "ModType='POS'"
  loc_16982C7: If (Me.RecordCount > 0) Then
  loc_16982CD:   MemVar_1F923C0 = "N"
  loc_16982D4:   MemVar_1F923C4 = "N"
  loc_16982DB:   MemVar_1F923C8 = "K"
  loc_1698311:   var_128 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_169831F:   var_8C = CStr(var_128 & "'")
  loc_1698339:   var_128 = CVar("Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCODE=S.ItemRestCode " & " Where S.DocID='") 'String
  loc_1698377:   var_90 = CStr(var_128 & Me.Fields.Item("SearchCode").Value & "' GROUP BY S.ITEM ORDER BY MAX(I.NAME) ")
  loc_16983AB:   var_F4 = Me.Fields
  loc_16983BB:   var_108 = var_F4.Item("SearchCode").Value
  loc_16983CC:   var_158 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_108 & "' order by sno " 
  loc_16983D1:   var_94 = CStr(var_158)
  loc_16983EE:   If (var_8C = vbNullString) Then
  loc_16983F1:     Exit Sub
  loc_16983F2:   End If
  loc_16983FA:   If (var_90 = vbNullString) Then
  loc_16983FD:     Exit Sub
  loc_16983FE:   End If
  loc_1698406:   If (var_94 = vbNullString) Then
  loc_1698409:     Exit Sub
  loc_169840A:   End If
  loc_1698420:   unk_552771.Execute var_8C, var_108, -1
  loc_169842B:   Set var_BC = var_F4
  loc_169844A:   unk_552771.Execute var_90, var_108, -1
  loc_1698455:   Set var_C0 = var_F4
  loc_1698474:   unk_552771.Execute var_94, var_108, -1
  loc_169847F:   Set var_C4 = var_F4
  loc_169848A:   Close 1
  loc_1698493:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1698497:   ' Referenced from: 1699959
  loc_16984A6:   If Not(var_BC.EOF) Then
  loc_16984AB:     var_9A = 0
  loc_16984B0:     var_9C = 1
  loc_16984CA:     If ((global_192 = "Restaurant") Or (global_192 = "Hall")) Then
  loc_16984DB:       var_98 = "** " & "BILL" & " **"
  loc_16984E4:     Else
  loc_16984EE:       Set var_F4 = Me.LblRest
  loc_1698504:       var_98 = "** " & var_F4.Caption & " **"
  loc_1698511:     End If
  loc_1698517:     If (var_9A = 0) Then
  loc_1698561:       var_148 = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(MemVar_1F92148, var_9C, var_9A), &H1E, var_F4)))
  loc_1698568:       var_174 = (CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & Chr(&HF) + Chr(&H12))
  loc_169856E:       Print 1, var_174
  loc_16985A4:       var_164 = Proc_6_38_E68A98(MemVar_1F9214C, var_F4)
  loc_16985D1:       var_148 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_164, &H1E)))
  loc_16985D8:       var_174 = (CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & Chr(&HF) + Chr(&H12))
  loc_16985DE:       Print 1, var_174
  loc_169860E:       Call Proc_135_86_10AB660(var_98, "D", &H3C)
  loc_1698618:       Print 1, var_164
  loc_1698627:       Print 1
  loc_169865B:       var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_1698692:       var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_16986A9:       Call Proc_135_87_1270124(var_9C, var_9A, &H3C)
  loc_16986DB:       var_164 = Proc_6_38_E68A98(MemVar_1F92140, var_17A, var_17A)
  loc_16986F8:       var_148 = (Chr(&H11) + Space(&H14))
  loc_1698701:       var_158 = (CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & Chr(&H11) + "PHONE NO.")
  loc_169870B:       var_18C = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_164, &H1E)))
  loc_1698711:       Print 1, var_18C
  loc_1698736:       Print 1
  loc_169873E:       Print 1
  loc_1698777:       Proc_6_39_E7C810(Chr(&H12), CVar(var_BC.Fields.Item("VNo")), &H12)
  loc_1698831:       var_128 = (Chr(&HF) + "Bill No.   : ")
  loc_169883B:       var_18C = (Space(&H14) + CVar(Proc_6_45_EAD428(CStr(Chr(&H12)), &HA)))
  loc_1698842:       var_1AC = (var_18C + Space(4))
  loc_169884B:       var_1BC = (var_1AC + "Dt : ")
  loc_1698855:       var_204 = (var_1BC + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_164), &HF)))
  loc_169885C:       var_224 = (var_204 + Space(4))
  loc_1698865:       var_244 = (var_224 + "Time : ")
  loc_169886F:       var_290 = (var_244 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), 8)))
  loc_1698875:       Print 1, var_290
  loc_16988C9:       If (global_192 = "Outlet") Then
  loc_1698920:         var_128 = (Chr(&HF) + "Table No.  : ")
  loc_169892A:         var_174 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 5)))
  loc_1698930:         Print 1, CVar(Proc_6_45_EAD428(CStr(Chr(&H12)), &HA))
  loc_169894F:       End If
  loc_169895A:       If (global_192 = "Room Service") Then
  loc_16989B1:         var_128 = (Chr(&HF) + "Room No.   : ")
  loc_16989BB:         var_174 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 5)))
  loc_16989C1:         Print 1, CVar(Proc_6_45_EAD428(CStr(Chr(&H12)), &HA))
  loc_16989E0:       End If
  loc_16989EB:       If (global_192 = "Hall") Then
  loc_1698A42:         var_128 = (Chr(&HF) + "Hall  No.  : ")
  loc_1698A4C:         var_174 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 5)))
  loc_1698A52:         Print 1, CVar(Proc_6_45_EAD428(CStr(Chr(&H12)), &HA))
  loc_1698A71:       End If
  loc_1698AF1:       If CBool((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0)) Then
  loc_1698B48:         var_128 = (Chr(&HF) + "KOT No.    : ")
  loc_1698B52:         var_174 = (Space(&H14) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("KOTNo"))), &H34)))
  loc_1698B58:         Print 1, (var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0)
  loc_1698B77:       End If
  loc_1698B8D:       var_128 = (Chr(&HF) + CVar(var_D0))
  loc_1698B93:       Print 1, Space(&H14)
  loc_1698BA0:     End If
  loc_1698BC6:     var_148 = (CVar(Proc_6_45_EAD428("SNo", 3)) + Space(1))
  loc_1698BD2:     var_164 = "ITEM NAME"
  loc_1698BE0:     var_174 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(var_164, &H14)))
  loc_1698BF4:     var_19C = ((var_BC.Fields.Item("KOTNo").Value <> vbNullString) And (var_BC.Fields.Item("KOTNo").Value <> 0) + Space(1))
  loc_1698C0E:     var_1BC = (Space(4) + CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String)
  loc_1698C1A:     var_1E4 = Space(1)
  loc_1698C22:     var_1F4 = (var_1BC + var_1E4)
  loc_1698C3C:     var_214 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_164), &HF)) + CVar(Proc_6_52_EAD4F4("Rate", &HA)))
  loc_1698C50:     var_244 = (Space(4) + Space(1))
  loc_1698C6A:     var_280 = (var_244 + CVar(Proc_6_52_EAD4F4("Qty", &HA)))
  loc_1698C76:     var_290 = Space(1)
  loc_1698C7E:     var_2B8 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), 8)) + var_290)
  loc_1698C98:     var_2DC = (var_2B8 + CVar(Proc_6_52_EAD4F4("Amount", &HA)))
  loc_1698C9D:     var_B4 = CStr(var_2DC)
  loc_1698CF2:     var_128 = (Chr(&HF) + CVar(var_B4))
  loc_1698CF8:     Print 1, CVar(Proc_6_45_EAD428("SNo", 3))
  loc_1698D1B:     var_128 = (Chr(&HF) + CVar(var_D0))
  loc_1698D21:     Print 1, CVar(Proc_6_45_EAD428("SNo", 3))
  loc_1698D34:     var_9A = (var_9A + 4)
  loc_1698D39:     var_B6 = 1
  loc_1698D3F:     var_C0.MoveFirst
  loc_1698D44:     ' Referenced from: 16991D4
  loc_1698D53:     If Not(var_C0.EOF) Then
  loc_1698DA3:       Proc_6_39_E7C810(var_1E4, CVar(var_C0.Fields.Item("TaxPer")), var_B6)
  loc_1698DEE:       Proc_6_39_E7C810(var_290, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_1698E39:       Proc_6_39_E7C810(var_334, CVar(var_C0.Fields.Item("qty")), 1, 1)
  loc_1698E84:       Proc_6_39_E7C810(var_3DC, CVar(var_C0.Fields.Item("Amt")), 1, 1)
  loc_1698ECF:       var_148 = (CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1, 1)) + Space(1))
  loc_1698EE8:       var_18C = (1 + CVar(Proc_6_45_EAD428(CStr(var_C0.Fields.Item("ItemName").Value), &H14, CVar(var_BC.Fields.Item("KOTNo")))))
  loc_1698EFC:       var_1AC = (Space(1) + Space(1))
  loc_1698F15:       var_224 = (&H12 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E4, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String)) 'String)
  loc_1698F29:       var_26C = (Space(1) + Space(1))
  loc_1698F42:       var_2EC = (CVar(Proc_6_52_EAD4F4("Qty", &HA)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_290, "0.00")), &HA)))
  loc_1698F56:       var_30C = (var_2EC + Space(1))
  loc_1698F6F:       var_384 = (var_30C + CVar(Proc_6_52_EAD4F4(CStr(Format(var_334, "0.00")), &HA)))
  loc_1698F83:       var_3A4 = (var_384 + Space(1))
  loc_1698F9C:       var_42C = (var_3A4 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_3DC, "0.00")), &HA)))
  loc_1699027:       var_128 = (Chr(&HF) + CVar(CStr(var_42C)))
  loc_169902D:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1, 1))
  loc_1699040:       var_9A = (var_9A + 1)
  loc_169904D:       If (&H12 = (&H45 - var_AE)) Then
  loc_1699066:         var_128 = (Chr(&HF) + CVar(var_D0))
  loc_169906C:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1, 1))
  loc_169907E:         Print 1, "Contd."
  loc_1699096:         Print 1, Chr(&HC)
  loc_16990A5:         var_9C = (var_9C + 1)
  loc_16990BB:         Call Proc_135_87_1270124(var_9C, 0, &H3C, var_17A)
  loc_16990DA:         Call Proc_135_86_10AB660(var_98, "B", &H3C, var_164, var_17A)
  loc_16990E4:         Print 1, var_164
  loc_16990F3:         var_9A = &H12
  loc_169910C:         var_128 = (Chr(&HF) + CVar(var_D0))
  loc_1699112:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1, 1))
  loc_1699135:         var_128 = (Chr(&HF) + CVar(var_B4))
  loc_169913B:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1, 1))
  loc_169915E:         var_128 = (Chr(&HF) + CVar(var_D0))
  loc_1699164:         Print 1, CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1, 1))
  loc_1699177:         var_9A = (var_9A + 4)
  loc_169917A:       End If
  loc_16991A7:       Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_9A, var_9A)
  loc_16991AF:       var_148 = (var_9A + CVar(Proc_6_45_EAD428(CStr(var_B6), 3, 1, 1)))
  loc_16991B4:       var_CC = CSng(CVar(var_BC.Fields.Item("KOTNo")))
  loc_16991C9:       var_B6 = (var_B6 + 1)
  loc_16991CF:       var_C0.MoveNext
  loc_16991D4:       GoTo loc_1698D44
  loc_16991D7:     End If
  loc_16991F7:     var_148 = (Chr(&HF) + Space(&H35))
  loc_1699201:     var_158 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_D4))
  loc_1699207:     Print 1, var_C0.Fields.Item("ItemName").Value
  loc_169921B:     var_C4.MoveFirst
  loc_1699220:     ' Referenced from: 1699719
  loc_169922F:     If Not(var_C4.EOF) Then
  loc_169925C:       var_43C = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_169927A:       If (var_43C = CVar(MemVar_1F92070 & "ROFF")) Then
  loc_1699306:         Proc_6_39_E7C810(var_1E4, CVar(var_C4.Fields.Item("Amount")), var_9C)
  loc_1699353:         var_148 = (Chr(&HF) + Space(&H23))
  loc_169935D:         var_18C = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, var_B6, var_CC)))
  loc_1699364:         var_1AC = (Space(1) + Space(4))
  loc_169936E:         var_224 = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E4, "0.00")), &HA, 1)))
  loc_1699375:         var_26C = (Space(1) + Chr(&H12))
  loc_169937B:         Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_16993BB:       Else
  loc_16993CE:         If (var_43C = CVar(MemVar_1F92070 & "NET")) Then
  loc_16993E6:           var_128 = Space(&H35)
  loc_16993F1:           var_148 = (Chr(&HF) + var_128)
  loc_16993FB:           var_158 = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(var_D4))
  loc_1699401:           Print 1, var_C4.Fields.Item("DispName").Value
  loc_1699438:           Proc_6_39_E7C810(var_128, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_1699452:           If (var_128 > 0) Then
  loc_169946A:             var_128 = Space(&H23)
  loc_16994DE:             Proc_6_39_E7C810(var_1E4, CVar(var_C4.Fields.Item("Amount")))
  loc_169952B:             var_148 = (Chr(&HF) + var_128)
  loc_1699535:             var_18C = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF)))
  loc_169953C:             var_1AC = (Space(1) + Space(4))
  loc_1699546:             var_224 = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E4, "0.00")), &HA, 1)))
  loc_169954D:             var_26C = (Space(1) + Chr(&H12))
  loc_1699553:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_1699590:           End If
  loc_1699593:         Else
  loc_16995B9:           Proc_6_39_E7C810(var_128, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_16995D3:           If (var_128 > 0) Then
  loc_169965F:             Proc_6_39_E7C810(var_1E4, CVar(var_C4.Fields.Item("Amount")))
  loc_16996AC:             var_148 = (Chr(&HF) + Space(&H23))
  loc_16996B6:             var_18C = (CVar(var_BC.Fields.Item("KOTNo")) + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF)))
  loc_16996BD:             var_1AC = (Space(1) + Space(4))
  loc_16996C7:             var_224 = (CVar(Proc_6_52_EAD4F4("Tax, 6)) 'String + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E4, "0.00")), &HA, 1)))
  loc_16996CE:             var_26C = (Space(1) + Chr(&H12))
  loc_16996D4:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", &HA))
  loc_1699711:           End If
  loc_1699711:         End If
  loc_1699711:       End If
  loc_1699714:       var_C4.MoveNext
  loc_1699719:       GoTo loc_1699220
  loc_169971C:     End If
  loc_1699732:     var_128 = (Chr(&HF) + CVar(var_D0))
  loc_1699738:     Print 1, Space(&H23)
  loc_1699781:     If CBool(var_BC.Fields.Item("WaiterName").Value <> vbNullString) Then
  loc_16997D8:       var_128 = (Chr(&HF) + "Steward Name  : ")
  loc_16997E2:       var_174 = (Space(&H23) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName")), 1), &H14)))
  loc_16997E8:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF))
  loc_1699807:     End If
  loc_169985B:     var_128 = (Chr(&HF) + "User Name     : ")
  loc_1699865:     var_174 = (Space(&H23) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("U_Name")), var_9A), &HA)))
  loc_169986B:     Print 1, CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF))
  loc_169988C:     Print 1
  loc_16998A7:     var_128 = (Chr(&HF) + "HAVE A NICE DAY ")
  loc_16998AD:     Print 1, Space(&H23)
  loc_16998DA:     var_148 = (Chr(&HF) + Space(&H32))
  loc_16998E3:     var_158 = (CVar(var_BC.Fields.Item("U_Name")) + "Guest Signature")
  loc_16998E9:     Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("U_Name")), var_9A), &HA))
  loc_16998FC:     Print 1
  loc_1699917:     var_128 = (Chr(&HF) + "# ")
  loc_1699921:     var_148 = Space(&H32) & CVar(MemVar_1F9221C) 
  loc_169992A:     var_158 = var_148 & " # " 
  loc_1699930:     Print 1, var_158
  loc_1699944:     var_BC.MoveNext
  loc_169994B:     Print 1
  loc_1699953:     Print 1
  loc_1699959:     GoTo loc_1698497
  loc_169995C:   End If
  loc_169995E:   Close 1
  loc_1699967:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1699980:   var_F4 = Me.Fields
  loc_169999D:   var_128 = "TYPE C:\reptmp\TEXTFILE.TXT>" & var_F4.Item("Printer").Value 
  loc_16999A3:   Print 1, var_128
  loc_16999B9:   Close 1
  loc_16999C3:   If (MemVar_1F923B8 = "Y") Then
  loc_16999DF:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16999E9:   Else
  loc_1699A02:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1699A09:   End If
  loc_1699A0E:   Set var_BC = Nothing
  loc_1699A16:   Set var_C0 = Nothing
  loc_1699A1E:   Set var_C4 = Nothing
  loc_1699A24: Else
  loc_1699A3D:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_128, var_148, var_158)
  loc_1699A4D: End If
  loc_1699A4D: Exit Sub
  loc_1699A4E: ' Referenced from: 169829C
  loc_1699A4E: Proc_6_60_E62BC4(var_F4)
  loc_1699A53: Exit Sub
End Sub

Public Sub Proc_135_69_16EA424
  'Data Table: 55274C
  Dim Me As Recordset15
  Dim unk_552771 As Connection15
  Dim var_114 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_E4 As Recordset15
  Dim var_168 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_AE As Integer
  Dim var_BC As Recordset15
  Dim var_9A As Integer
  Dim var_9C As Integer
  Dim var_180 As Variant
  Dim var_1EC As Variant
  Dim var_20C As Variant
  Dim var_E0 As Recordset15
  Dim var_110 As Variant
  Dim var_250 As Variant
  Dim var_2DC As Variant
  Dim var_378 As Variant
  Dim var_220 As Variant
  Dim var_240 As Variant
  Dim var_264 As Variant
  Dim var_274 As Variant
  Dim var_294 As Variant
  Dim var_2A4 As Variant
  Dim var_2C4 As Variant
  Dim var_2F0 As Variant
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_330 As Variant
  Dim var_350 As Variant
  Dim var_38C As Variant
  Dim var_39C As Variant
  Dim var_3BC As Variant
  Dim var_3DC As Variant
  Dim var_3FC As Variant
  Dim var_458 As Variant
  Dim var_230 As Variant
  Dim var_284 As Variant
  Dim var_2B4 As Variant
  Dim var_310 As Variant
  Dim var_B6 As Integer
  Dim var_C0 As Recordset15
  Dim var_CC As Double
  Dim var_C4 As Recordset15
  loc_16E8A50: On Error Goto loc_16EA41B
  loc_16E8A5F: Me.Filter = "ModType='POS'"
  loc_16E8A7B: If (Me.RecordCount > 0) Then
  loc_16E8A81:   MemVar_1F923C0 = "N"
  loc_16E8A88:   MemVar_1F923C4 = "N"
  loc_16E8A8F:   MemVar_1F923C8 = "K"
  loc_16E8ABA:   unk_552771.Execute "Select * from Depart where code='" & global_56 & "'", var_110, -1
  loc_16E8AC5:   Set var_E4 = var_114
  loc_16E8B07:   var_138 = "Select Sale1.* ,W.Name as WaiterName From Sale1 left join waiter W on sale1.waiter=w.code Where Sale1.DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_16E8B15:   var_8C = CStr(var_138 & "'")
  loc_16E8B3C:   If (var_E4.RecordCount > 0) Then
  loc_16E8B7B:     If (var_E4.Fields.Item("KotYN").Value = "Y") Then
  loc_16E8B85:       var_138 = CVar("Select kot.vdate as kdate,MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCODE=S.ItemRestCode) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='") 'String
  loc_16E8BF8:       var_1B0 = var_138 & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) " 
  loc_16E8BFD:       var_90 = CStr(var_1B0)
  loc_16E8C1F:     Else
  loc_16E8C26:       var_138 = CVar("Select kot.vdate as kdate,MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,MAX(S.RATE) AS RATE,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,KOT.VDATE,MAX(KOT.VNO) AS KOTNO,MAX(i.dispcode) as ICode From (Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And I.RestCODE=S.ItemRestCode) Left Join KOT on (KOT.Docid=S.KOTDOCId AND KOT.SNO=S.KOTSNO) " & " Where S.DocID='") 'String
  loc_16E8C64:       var_90 = CStr(var_138 & Me.Fields.Item("SearchCode").Value & "' GROUP BY KOT.VDATE,S.ITEM ORDER BY KOT.VDATE,MAX(I.NAME) ")
  loc_16E8C79:     End If
  loc_16E8C79:     GoTo loc_16E8C7C
  loc_16E8C7C:     ' Referenced from: 16E8C79
  loc_16E8C7C:   End If
  loc_16E8C9B:   var_114 = Me.Fields
  loc_16E8CAB:   var_110 = var_114.Item("SearchCode").Value
  loc_16E8CBC:   var_168 = CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & var_110 & "' order by sno " 
  loc_16E8CC1:   var_94 = CStr(var_168)
  loc_16E8CDE:   If (var_8C = vbNullString) Then
  loc_16E8CE1:     Exit Sub
  loc_16E8CE2:   End If
  loc_16E8CEA:   If (var_90 = vbNullString) Then
  loc_16E8CED:     Exit Sub
  loc_16E8CEE:   End If
  loc_16E8CF6:   If (var_94 = vbNullString) Then
  loc_16E8CF9:     Exit Sub
  loc_16E8CFA:   End If
  loc_16E8D10:   unk_552771.Execute var_8C, var_110, -1
  loc_16E8D1B:   Set var_BC = var_114
  loc_16E8D3A:   unk_552771.Execute var_90, var_110, -1
  loc_16E8D45:   Set var_C0 = var_114
  loc_16E8D64:   unk_552771.Execute var_94, var_110, -1
  loc_16E8D6F:   Set var_C4 = var_114
  loc_16E8D7A:   var_AE = &HA
  loc_16E8D7F:   Close 1
  loc_16E8D88:   Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16E8DB0:   unk_552771.Execute "Select * from enviro where LogSite_Code='" & MemVar_1F92078 & "'", var_110, -1
  loc_16E8DBB:   Set var_E0 = var_114
  loc_16E8DCB:   ' Referenced from: 16EA298
  loc_16E8DDA:   If Not(var_BC.EOF) Then
  loc_16E8DDF:     var_9A = 0
  loc_16E8DED:     If (var_9A = 0) Then
  loc_16E8E2E:       var_158 = CVar(Replace(CStr(Space(&H88)), " ", "-", 1, -1, 0)) 'String
  loc_16E8E31:       var_168 = (Chr(&HF) + CVar("Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St " & " Where St.DocID='") & Chr(&HF))
  loc_16E8E45:       var_190 = (var_168 + Chr(&H12))
  loc_16E8E4A:       var_D0 = CStr(Space(&H88) & Me.Fields.Item("SearchCode").Value & "' and KOT.CONTRADOCID='" & Me.Fields.Item("SearchCode").Value)
  loc_16E8E8D:       var_D4 = Replace(CStr(Space(&HC)), " ", "=", 1, -1, 0)
  loc_16E8E9D:       Set var_114 = Me.LblRest
  loc_16E8EB3:       var_1B8 = "A"
  loc_16E8EC0:       Call Proc_135_86_10AB660(var_114.Caption, var_1B8, &H4E, var_1BC, 1, var_9A)
  loc_16E8ECA:       Print 1, var_1BC
  loc_16E8F07:       var_190 = Trim(MemVar_1F9213C)
  loc_16E8F25:       var_138 = (Trim(MemVar_1F92134) + ", ")
  loc_16E8F2C:       var_168 = (Space(&H88) + Trim(MemVar_1F92138))
  loc_16E8F35:       var_180 = (var_168 + " ")
  loc_16E8F3C:       var_1B0 = (Chr(&H12) + var_190)
  loc_16E8F45:       var_1EC = (var_1B0 + " ")
  loc_16E8F4F:       var_20C = (var_1EC + CVar(MemVar_1F9215C))
  loc_16E8F58:       Call Proc_135_86_10AB660(CStr(var_20C), "B", &H4E, var_1B8, var_114)
  loc_16E8F62:       Print 1, var_1B8
  loc_16E8FB1:       Call Proc_135_86_10AB660("Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144, "E", 137, var_210, var_AE)
  loc_16E8FBB:       Print 1, var_210
  loc_16E8FE2:       If (var_E0.RecordCount > 0) Then
  loc_16E8FF4:         var_114 = var_E0.Fields
  loc_16E902F:         If (Trim(CVar(Proc_6_38_E68A98(CVar(var_114.Item("Bill_Header")), var_114, var_114))) = vbNullString) Then
  loc_16E9037:           Print 1, vbNullString
  loc_16E9040:         Else
  loc_16E904F:           var_114 = var_E0.Fields
  loc_16E9084:           Call Proc_135_86_10AB660(Proc_6_38_E68A98(CVar(var_114.Item("Bill_Header")), var_114), "E", 137)
  loc_16E908E:           Print 1, var_1B8
  loc_16E90A5:         End If
  loc_16E90A8:       Else
  loc_16E90AD:         Print 1, vbNullString
  loc_16E90B3:       End If
  loc_16E90C5:       Print 1, Chr(&H12)
  loc_16E910E:       Proc_6_39_E7C810(var_190, CVar(var_BC.Fields.Item("VNo")))
  loc_16E9130:       var_138 = (Chr(&HF) + "Bill No. ")
  loc_16E9137:       var_168 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Bill_Header")), var_BC.Fields, var_BC.Fields)) + Chr(&H12))
  loc_16E9141:       var_1EC = (var_168 + CVar(Proc_6_45_EAD428(CStr(var_190), &HA)))
  loc_16E9147:       Print 1, var_1EC
  loc_16E930E:       Proc_6_39_E7C810(var_434, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_16E9331:       var_138 = (Chr(&HF) + "Date : ")
  loc_16E9338:       var_168 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Bill_Header")), var_BC.Fields, var_BC.Fields)) + Chr(&H12))
  loc_16E9342:       var_1B0 = (var_168 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12)))
  loc_16E9349:       var_20C = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12))), &HA)) + Chr(&HF))
  loc_16E9352:       var_220 = (var_20C + "Time : ")
  loc_16E9359:       var_240 = (var_220 + Chr(&H12))
  loc_16E9363:       var_274 = (var_240 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_16E936A:       var_294 = (var_274 + Chr(&HF))
  loc_16E9373:       var_2A4 = (var_294 + "Steward :")
  loc_16E937A:       var_2C4 = (var_2A4 + Chr(&H12))
  loc_16E9384:       var_300 = (var_2C4 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_16E938B:       var_320 = (var_300 + Chr(&HF))
  loc_16E9394:       var_330 = (var_320 + "Table : ")
  loc_16E939B:       var_350 = (var_330 + Chr(&H12))
  loc_16E93A5:       var_39C = (var_350 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_16E93AC:       var_3BC = (var_39C + Chr(&HF))
  loc_16E93B5:       var_3DC = (var_3BC + "Covers: ")
  loc_16E93BC:       var_3FC = (var_3DC + Chr(&H12))
  loc_16E93C6:       var_458 = (var_3FC + CVar(Proc_6_45_EAD428(CStr(var_434), 7)))
  loc_16E93CC:       Print 1, var_458
  loc_16E9458:       Print 1, var_D0
  loc_16E950F:       var_3AC = Space(&HA)
  loc_16E9527:       var_158 = (Chr(&HF) + Space(3))
  loc_16E9530:       var_168 = (Chr(&H12) + "S.No")
  loc_16E9537:       var_190 = (var_168 + Space(3))
  loc_16E953E:       var_1EC = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12)) + Space(4))
  loc_16E9547:       var_20C = (Chr(&HF) + "KOT#")
  loc_16E954E:       var_230 = (var_20C + Space(4))
  loc_16E9555:       var_250 = (Chr(&H12) + Space(5))
  loc_16E955E:       var_264 = (CVar(var_BC.Fields.Item("VTIME")) + "CODE")
  loc_16E9565:       var_284 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(5))
  loc_16E956C:       var_2A4 = (Chr(&HF) + Space(&H15))
  loc_16E9575:       var_2B4 = (var_2A4 + "ITEM NAME")
  loc_16E957C:       var_2DC = (Chr(&H12) + Space(&H15))
  loc_16E9583:       var_300 = (CVar(var_BC.Fields.Item("WaiterName")) + Space(8))
  loc_16E958C:       var_310 = (var_300 + "QTY")
  loc_16E9593:       var_330 = (Chr(&HF) + Space(5))
  loc_16E959A:       var_350 = (var_330 + Space(5))
  loc_16E95A3:       var_378 = (var_350 + "RATE")
  loc_16E95AA:       var_39C = (CVar(var_BC.Fields.Item("RoomNo")) + Space(5))
  loc_16E95B1:       var_3BC = (var_39C + var_3AC)
  loc_16E95BA:       var_3DC = (var_3BC + "AMOUNT")
  loc_16E95C1:       var_3FC = (var_3DC + Chr(&H12))
  loc_16E95C7:       Print 1, var_3FC
  loc_16E961D:       Print 1, var_D0
  loc_16E9625:       var_9A = &HA
  loc_16E9628:     End If
  loc_16E962A:     var_B6 = 1
  loc_16E9630:     var_C0.MoveFirst
  loc_16E9635:     ' Referenced from: 16E9D51
  loc_16E9644:     If Not(var_C0.EOF) Then
  loc_16E964D:       If (var_9A = 0) Then
  loc_16E967E:         var_D0 = Replace(CStr(Space(&H41)), " ", "-", 1, -1, 0)
  loc_16E96B5:         var_D4 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_16E96F1:         Proc_6_39_E7C810(Chr(&H12), CVar(var_BC.Fields.Item("VNo")), var_B6)
  loc_16E9714:         var_180 = (Space(8) + CVar(Proc_6_45_EAD428(CStr(Chr(&H12)), &HA)))
  loc_16E971A:         Print 1, Space(3)
  loc_16E9739:         Print 1
  loc_16E98A2:         Proc_6_39_E7C810(var_300, CVar(var_BC.Fields.Item("GuarAtt")))
  loc_16E98C6:         var_168 = (Space(6) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))
  loc_16E98CD:         var_190 = (CVar(Proc_6_45_EAD428(CStr(Chr(&H12)), &HA)) + Space(4))
  loc_16E98D7:         var_20C = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))
  loc_16E98DE:         var_230 = (var_20C + Space(6))
  loc_16E98E8:         var_264 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("WaiterName"))), 9)))
  loc_16E98EF:         var_284 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_16E98F9:         var_2B4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("RoomNo"))), 7)))
  loc_16E9900:         var_2DC = (Chr(&H12) + Space(6))
  loc_16E9907:         var_310 = CVar(Proc_6_45_EAD428(CStr(var_300), 7)) 'String
  loc_16E990A:         var_320 = (CVar(var_BC.Fields.Item("WaiterName")) + var_310)
  loc_16E9910:         Print 1, Space(5)
  loc_16E997E:         Print 1, vbNullString
  loc_16E9989:         Print 1, vbNullString
  loc_16E9991:         var_9A = 5
  loc_16E9994:       End If
  loc_16E9A0C:       var_240 = var_C0.Fields.Item("ItemName").Value
  loc_16E9A37:       Proc_6_39_E7C810(Chr(&HF), CVar(var_C0.Fields.Item("qty")))
  loc_16E9A82:       Proc_6_39_E7C810(var_310, CVar(var_C0.Fields.Item("Rate")), 1)
  loc_16E9ACD:       Proc_6_39_E7C810(var_3AC, CVar(var_C0.Fields.Item("Amt")), 1)
  loc_16E9B18:       var_158 = (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)) + Space(4))
  loc_16E9B2D:       var_180 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("KOTNo")), var_9A), 5, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_9A), &H12)))) 'String
  loc_16E9B30:       var_190 = (1 + var_180)
  loc_16E9B44:       var_1EC = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")), var_1B8), &H12)) + Space(2))
  loc_16E9B59:       var_220 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("ICODE"))), 7, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)))) 'String
  loc_16E9B5C:       var_230 = (1 + var_220)
  loc_16E9B75:       var_264 = (Chr(&H12) + CVar(Proc_6_45_EAD428(CStr(var_240), &H1E)))
  loc_16E9B8E:       var_2C4 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&HF), "0.00")), 6)))
  loc_16E9BA2:       var_2F0 = (Space(6) + Space(1))
  loc_16E9BBB:       var_350 = (CVar(var_BC.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_310, "0.00")), 7)))
  loc_16E9BCF:       var_38C = (var_350 + Space(1))
  loc_16E9BE8:       var_3FC = (Space(5) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_3AC, "0.00")), &HB)))
  loc_16E9C66:       Print 1, CStr(var_3FC)
  loc_16E9C72:       var_9A = (var_9A + 1)
  loc_16E9C7F:       If (var_9A = (&H36 - var_AE)) Then
  loc_16E9C88:         var_9C = (var_9C + 1)
  loc_16E9CA0:         var_138 = (Space(&H32) + "Contd. Page ")
  loc_16E9CBB:         Print 1, CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)) & CVar(CStr(1)) & "..."
  loc_16E9CD4:         var_9A = (var_9A + 1)
  loc_16E9CE9:         Print 1, Chr(&HC)
  loc_16E9CF4:         var_9A = 0
  loc_16E9CF7:       End If
  loc_16E9D24:       Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)), CVar(var_C0.Fields.Item("Amt")), CVar(var_CC), var_9A)
  loc_16E9D2C:       var_158 = (var_9A + CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)))
  loc_16E9D31:       var_CC = CSng(CVar(CStr(1)))
  loc_16E9D46:       var_B6 = (var_B6 + 1)
  loc_16E9D4C:       var_C0.MoveNext
  loc_16E9D51:       GoTo loc_16E9635
  loc_16E9D54:     End If
  loc_16E9D5E:     If (var_9A < (&H36 - var_AE)) Then
  loc_16E9D61:       ' Referenced from: 16E9D85
  loc_16E9D6E:       If (var_9A <> ((&H36 - var_AE) + 1)) Then
  loc_16E9D76:         Print 1, vbNullString
  loc_16E9D82:         var_9A = (var_9A + 1)
  loc_16E9D85:         GoTo loc_16E9D61
  loc_16E9D88:       End If
  loc_16E9D88:     End If
  loc_16E9D8B:     var_C4.MoveFirst
  loc_16E9D95:     Print 1, var_D0
  loc_16E9D9B:     ' Referenced from: 16EA28D
  loc_16E9DAA:     If Not(var_C4.EOF) Then
  loc_16E9DD7:       var_49C = var_C4.Fields.Item("SunCode").Value 'Variant
  loc_16E9DF5:       If (var_49C = CVar(MemVar_1F92070 & "ROFF")) Then
  loc_16E9E99:         Proc_6_39_E7C810(var_240, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_16E9EDC:         var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428("Trade Tax No. : " & MemVar_1F92148, &H54, var_9A, var_B6)))
  loc_16E9EE3:         var_180 = (CVar(CStr(1)) + Chr(&H12))
  loc_16E9EED:         var_1EC = (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)) & CVar(CStr(1)) & "..." + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF, var_CC)))
  loc_16E9EF4:         var_220 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_16E9EFE:         var_284 = (var_220 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_240, "0.00")), &HA, 1)))
  loc_16E9F04:         Print 1, Chr(&HF)
  loc_16E9F48:       Else
  loc_16E9F5B:         If (var_49C = CVar(MemVar_1F92070 & "NET")) Then
  loc_16E9F74:           var_138 = (Space(&H43) + CVar(var_D4))
  loc_16E9F7A:           Print 1, CVar(Proc_6_45_EAD428("Trade Tax No. : " & MemVar_1F92148, &H54, var_9A, var_B6))
  loc_16E9FAD:           Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("Trade Tax No. : " & MemVar_1F92148, &H54, var_9A, var_B6)), CVar(var_C4.Fields.Item("Amount")), 1)
  loc_16E9FC7:           If (CVar(Proc_6_45_EAD428("Trade Tax No. : " & MemVar_1F92148, &H54, var_9A, var_B6)) > 0) Then
  loc_16EA079:             Proc_6_39_E7C810(var_240, CVar(var_C4.Fields.Item("Amount")))
  loc_16EA0B9:             var_138 = CVar(Proc_6_45_EAD428("All Disputes are subject to " & "Nanital" & " " & "Jurisdiction only.", &H54)) 'String
  loc_16EA0BC:             var_158 = (Chr(&HF) + var_138)
  loc_16EA0C3:             var_180 = (CVar(CStr(1)) + Chr(&H12))
  loc_16EA0CD:             var_1EC = (CVar(Proc_6_52_EAD4F4(CStr(var_B6), 4, 1, 1)) & CVar(CStr(1)) & "..." + CVar(Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF)))
  loc_16EA0D4:             var_220 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)) + Space(4))
  loc_16EA0DE:             var_284 = (var_220 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_240, "0.00")), &HA, 1)))
  loc_16EA0E4:             Print 1, Chr(&HF)
  loc_16EA129:           End If
  loc_16EA12E:           Print 1, var_D0
  loc_16EA137:         Else
  loc_16EA15D:           Proc_6_39_E7C810(var_138, CVar(var_C4.Fields.Item("Amount")), 1)
  loc_16EA177:           If (var_138 > 0) Then
  loc_16EA1C0:             var_1B8 = Proc_6_45_EAD428(CStr(var_C4.Fields.Item("DispName").Value), &HF)
  loc_16EA1F6:             Proc_6_39_E7C810(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)), CVar(var_C4.Fields.Item("Amount")))
  loc_16EA22D:             var_1BC = Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME"))), &HA)), "0.00")), &HA, 1)
  loc_16EA236:             var_158 = CVar(var_1B8) 'String
  loc_16EA239:             var_168 = (Space(&H31) + var_158)
  loc_16EA240:             var_190 = (Chr(&H12) + Space(4))
  loc_16EA24A:             var_240 = (var_C4.Fields.Item("DispName").Value + CVar(var_1BC))
  loc_16EA250:             Print 1, var_240
  loc_16EA285:           End If
  loc_16EA285:         End If
  loc_16EA285:       End If
  loc_16EA288:       var_C4.MoveNext
  loc_16EA28D:       GoTo loc_16E9D9B
  loc_16EA290:     End If
  loc_16EA293:     var_BC.MoveNext
  loc_16EA298:     GoTo loc_16E8DCB
  loc_16EA29B:   End If
  loc_16EA2B5:   Call Proc_135_86_10AB660("* THANKS FOR YOUR VISIT *", "A", &H4E, var_1B8)
  loc_16EA2BF:   Print 1, var_1B8
  loc_16EA2D0:   Print 1
  loc_16EA2D8:   Print 1
  loc_16EA2E0:   Print 1
  loc_16EA2FB:   var_138 = (Space(&H48) + "CASHIER")
  loc_16EA301:   Print 1, var_C4.Fields.Item("DispName").Value
  loc_16EA320:   Print 1, Chr(&HC)
  loc_16EA32B:   Close 1
  loc_16EA334:   Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16EA36A:   var_138 = "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value 
  loc_16EA370:   Print 1, var_138
  loc_16EA386:   Close 1
  loc_16EA390:   If (MemVar_1F923B8 = "Y") Then
  loc_16EA3AC:     var_AC = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16EA3B6:   Else
  loc_16EA3CF:     var_AC = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16EA3D6:   End If
  loc_16EA3DB:   Set var_BC = Nothing
  loc_16EA3E3:   Set var_C0 = Nothing
  loc_16EA3EB:   Set var_C4 = Nothing
  loc_16EA3F1: Else
  loc_16EA40A:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_138, var_158, Chr(&H12))
  loc_16EA41A: End If
  loc_16EA41A: Exit Sub
  loc_16EA41B: ' Referenced from: 16E8A50
  loc_16EA41B: Proc_6_60_E62BC4(1, var_9A)
  loc_16EA420: Exit Sub
End Sub

Public Sub Proc_135_70_EF7B30
  'Data Table: 55274C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_DC As Variant
  loc_EF7A64: Set var_88 = Me.TopCtrl1
  loc_EF7A6A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_EF7A7F: If ( = "Browse") Then
  loc_EF7A82:   Exit Sub
  loc_EF7A83: End If
  loc_EF7AC2: If ((CLng(Me.FGrid.Row) > 0) And (CLng(Me.FGrid.Col) = CLng(8))) Then
  loc_EF7AD8:   var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EF7AE0:   var_DC = CVar(CLng(&H19)) 'Long
  loc_EF7B13:   If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_EF7B1F:     Call FGrid_UnknownEvent_C(CInt(&HD))
  loc_EF7B29:     global_142 = 0
  loc_EF7B2C:   End If
  loc_EF7B2C: End If
  loc_EF7B2C: Exit Sub
End Sub

Public Sub Proc_135_71_1828ED8(arg_C) '1828ED8
  'Data Table: 55274C
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_B4 As Long
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_C4 As String
  Dim var_138 As MSHFlexGrid
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_180 As String
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_1F4 As Double
  Dim var_92 As Integer
  Dim var_20C As Variant
  Dim unk_552771 As Connection15
  Dim var_98 As Recordset15
  loc_1826A9C: If (arg_C = 0) Then
  loc_1826AB2:   var_B4 = CLng(Me.FGrid.Col)
  loc_1826AC2:   If (var_B4 = CLng(2)) Then
  loc_1826B13:     Set var_A0 = Me.TxtGrid
  loc_1826B19:     Call 0.Method_Proc_135_71_1828ED80 (arg_C, var_C0, var_C4)
  loc_1826B21:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_1826B39:     If (var_B4 Or (var_C4 = vbNullString)) Then
  loc_1826B4F:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826B57:       var_F4 = CVar(CLng(2)) 'Long
  loc_1826B5C:       var_114 = vbNullString
  loc_1826B66:       Set var_C0 = Me.FGrid
  loc_1826B6C:       LateIdCallSt
  loc_1826B91:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826B99:       var_F4 = CVar(CLng(1)) 'Long
  loc_1826B9E:       var_114 = vbNullString
  loc_1826BA8:       Set var_C0 = Me.FGrid
  loc_1826BAE:       LateIdCallSt
  loc_1826BC3:     Else
  loc_1826BDC:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826BE4:       var_F4 = CVar(CLng(1)) 'Long
  loc_1826BFE:       var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1826C1C:       var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826C24:       var_158 = CVar(CLng(1)) 'Long
  loc_1826C3E:       var_180 = CStr(Me.FGrid.TextMatrix))
  loc_1826CA9:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1826CBF:         var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826CC7:         var_104 = CVar(CLng(2)) 'Long
  loc_1826CFA:         var_148 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1826D02:         Set var_16C = Me.FGrid
  loc_1826D08:         LateIdCallSt
  loc_1826D37:         var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826D3F:         var_104 = CVar(CLng(1)) 'Long
  loc_1826D72:         var_148 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1826D7A:         Set var_16C = Me.FGrid
  loc_1826D80:         LateIdCallSt
  loc_1826DD0:         global_196 = CStr(Me.Fields.Item("Name").Value)
  loc_1826E0F:         var_C4 = CStr(Me.Fields.Item("Code").Value)
  loc_1826E15:         global_200 = var_C4
  loc_1826E39:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826E41:         var_F4 = CVar(CLng(4)) 'Long
  loc_1826E46:         var_114 = vbNullString
  loc_1826E50:         Set var_C0 = Me.FGrid
  loc_1826E56:         LateIdCallSt
  loc_1826E7B:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826E83:         var_F4 = CVar(CLng(&HB)) 'Long
  loc_1826E88:         var_114 = vbNullString
  loc_1826E92:         Set var_C0 = Me.FGrid
  loc_1826E98:         LateIdCallSt
  loc_1826EBD:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826EC5:         var_F4 = CVar(CLng(3)) 'Long
  loc_1826ECA:         var_114 = vbNullString
  loc_1826ED4:         Set var_C0 = Me.FGrid
  loc_1826EDA:         LateIdCallSt
  loc_1826EFF:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1826F07:         var_F4 = CVar(CLng(&H1A)) 'Long
  loc_1826F0C:         var_114 = vbNullString
  loc_1826F16:         Set var_C0 = Me.FGrid
  loc_1826F1C:         LateIdCallSt
  loc_1826F2E:       End If
  loc_1826F2E:     End If
  loc_1826F31:   Else
  loc_1826F38:     If (var_B4 = CLng(3)) Then
  loc_1826F47:       Set var_A0 = Me.TxtGrid
  loc_1826F4D:       Call 0.Method_Proc_135_71_1828ED80 (0, var_C0, var_C4, var_C0, var_114, var_F4, var_D4)
  loc_1826F55:       var_C0 = var_C0.Text
  loc_1826F6C:       If (var_C4 = "9999") Then
  loc_1826F79:         Set global_188 = New RsSpecItemEntry
  loc_1826F8F:         RsSpecItemEntry.PKOTForm = Me
  loc_1826FA3:         RsSpecItemEntry.pRestCode = global_56
  loc_1826FAF:         Set var_A0 = var_114(var_C4)
  loc_1826FB5:         var_F4 = RsSpecItemEntry.Label.Caption
  loc_1826FC3:         RsSpecItemEntry.PRestName = var_C4
  loc_1826FE1:         Call 0.Method_arg_2B0 (1, var_E4, 1)
  loc_1827016:         var_134 = CVar(Proc_6_38_E68A98(global_132, CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_1827024:         LateIdCallSt
  loc_182706A:         var_134 = CVar(Proc_6_38_E68A98(global_136, CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), Me.FGrid)) 'String
  loc_1827072:         Set var_C0 = Me.FGrid
  loc_1827078:         LateIdCallSt
  loc_18270A1:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18270BC:         Set var_A0 = Me.Txt
  loc_18270C2:         Call 0.Method_Proc_135_71_1828ED80 (CInt(3), var_C0, var_C4, CVar(CLng(&H17)), var_D4, var_C0)
  loc_18270CA:         var_134 = var_C0.Tag
  loc_18270D2:         var_134 = CVar(var_C4) 'String
  loc_18270DA:         Set var_16C = Me.FGrid
  loc_18270E0:         LateIdCallSt
  loc_18270FD:       Else
  loc_1827114:         If (Me.RecordCount > 0) Then
  loc_182711D:           Me.MoveFirst
  loc_1827122:         End If
  loc_1827139:         If (Me.RecordCount > 0) Then
  loc_1827148:           Set var_A0 = Me.TxtGrid
  loc_182714E:           Call 0.Method_Proc_135_71_1828ED80 (0, var_C0, var_C4, var_16C, var_134)
  loc_1827156:           var_134 = var_C0.Text
  loc_1827189:           Me.Find "DispCode=" & CStr(Val(var_C4)), 0, 1
  loc_182719E:         End If
  loc_18271EC:         Set var_A0 = Me.TxtGrid
  loc_18271F2:         Call 0.Method_Proc_135_71_1828ED80 (arg_C, var_C0, var_C4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_D4)
  loc_18271FA:         var_1F4 = var_C0.Text
  loc_1827212:         If (var_C0 Or (var_C4 = vbNullString)) Then
  loc_1827228:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827230:           var_F4 = CVar(CLng(4)) 'Long
  loc_1827235:           var_114 = vbNullString
  loc_182723F:           Set var_C0 = Me.FGrid
  loc_1827245:           LateIdCallSt
  loc_182726A:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827272:           var_F4 = CVar(CLng(&HB)) 'Long
  loc_1827277:           var_114 = vbNullString
  loc_1827281:           Set var_C0 = Me.FGrid
  loc_1827287:           LateIdCallSt
  loc_18272AC:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18272B4:           var_F4 = CVar(CLng(3)) 'Long
  loc_18272B9:           var_114 = vbNullString
  loc_18272C3:           Set var_C0 = Me.FGrid
  loc_18272C9:           LateIdCallSt
  loc_18272EE:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18272F6:           var_F4 = CVar(CLng(6)) 'Long
  loc_18272FB:           var_114 = vbNullString
  loc_1827305:           Set var_C0 = Me.FGrid
  loc_182730B:           LateIdCallSt
  loc_1827330:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827338:           var_F4 = CVar(CLng(3)) 'Long
  loc_182733D:           var_114 = vbNullString
  loc_1827347:           Set var_C0 = Me.FGrid
  loc_182734D:           LateIdCallSt
  loc_1827372:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_182737A:           var_F4 = CVar(CLng(8)) 'Long
  loc_182737F:           var_114 = vbNullString
  loc_1827389:           Set var_C0 = Me.FGrid
  loc_182738F:           LateIdCallSt
  loc_18273B4:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18273BC:           var_F4 = CVar(CLng(9)) 'Long
  loc_18273C1:           var_114 = vbNullString
  loc_18273CB:           Set var_C0 = Me.FGrid
  loc_18273D1:           LateIdCallSt
  loc_18273F6:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18273FE:           var_F4 = CVar(CLng(&H15)) 'Long
  loc_1827403:           var_114 = vbNullString
  loc_182740D:           Set var_C0 = Me.FGrid
  loc_1827413:           LateIdCallSt
  loc_1827438:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827440:           var_F4 = CVar(CLng(&H16)) 'Long
  loc_1827445:           var_114 = vbNullString
  loc_182744F:           Set var_C0 = Me.FGrid
  loc_1827455:           LateIdCallSt
  loc_182747A:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827482:           var_F4 = CVar(CLng(&H17)) 'Long
  loc_1827487:           var_114 = vbNullString
  loc_1827491:           Set var_C0 = Me.FGrid
  loc_1827497:           LateIdCallSt
  loc_18274BC:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18274C4:           var_F4 = CVar(CLng(&H13)) 'Long
  loc_18274C9:           var_114 = vbNullString
  loc_18274D3:           Set var_C0 = Me.FGrid
  loc_18274D9:           LateIdCallSt
  loc_18274FE:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827506:           var_F4 = CVar(CLng(&H14)) 'Long
  loc_182750B:           var_114 = vbNullString
  loc_1827515:           Set var_C0 = Me.FGrid
  loc_182751B:           LateIdCallSt
  loc_1827540:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827548:           var_F4 = CVar(CLng(&H18)) 'Long
  loc_182754D:           var_114 = vbNullString
  loc_1827557:           Set var_C0 = Me.FGrid
  loc_182755D:           LateIdCallSt
  loc_1827582:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_182758A:           var_F4 = CVar(CLng(&H1A)) 'Long
  loc_182758F:           var_114 = vbNullString
  loc_1827599:           Set var_C0 = Me.FGrid
  loc_182759F:           LateIdCallSt
  loc_18275B4:         Else
  loc_18275CD:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18275D5:           var_F4 = CVar(CLng(&HB)) 'Long
  loc_18275EF:           var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_182760D:           var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827615:           var_158 = CVar(CLng(&HB)) 'Long
  loc_182762F:           var_180 = CStr(Me.FGrid.TextMatrix))
  loc_182769A:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HB)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_18276B0:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18276B8:             var_104 = CVar(CLng(4)) 'Long
  loc_18276EB:             var_148 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_18276F3:             Set var_16C = Me.FGrid
  loc_18276F9:             LateIdCallSt
  loc_1827728:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827730:             var_104 = CVar(CLng(&HB)) 'Long
  loc_1827763:             var_148 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_182776B:             Set var_16C = Me.FGrid
  loc_1827771:             LateIdCallSt
  loc_18277A0:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18277A8:             var_104 = CVar(CLng(3)) 'Long
  loc_18277DB:             var_148 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_18277E3:             Set var_16C = Me.FGrid
  loc_18277E9:             LateIdCallSt
  loc_1827818:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827820:             var_104 = CVar(CLng(6)) 'Long
  loc_1827853:             var_148 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_182785B:             Set var_16C = Me.FGrid
  loc_1827861:             LateIdCallSt
  loc_1827891:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_182789E:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_18278A6:             var_F4 = CVar(CLng(0)) 'Long
  loc_18278B0:             var_B0 = CVar(CStr(var_92)) 'String
  loc_18278B8:             Set var_A0 = Me.FGrid
  loc_18278BE:             LateIdCallSt
  loc_18278D0:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_18278D8:             var_F4 = CVar(CLng(7)) 'Long
  loc_18278F2:             var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1827908:             If (CDbl(Val(var_C4)) = CDbl(0)) Then
  loc_182790F:               var_D4 = CVar(CLng(var_92)) 'Long
  loc_1827917:               var_F4 = CVar(CLng(7)) 'Long
  loc_182791C:               var_114 = "1.0"
  loc_1827926:               Set var_A0 = Me.FGrid
  loc_182792C:               LateIdCallSt
  loc_1827937:             End If
  loc_182793D:             var_D4 = "Code"
  loc_182794C:             var_A0 = Me.Fields
  loc_182796F:             Set var_138 = Me.Txt
  loc_1827975:             Call 0.Method_Proc_135_71_1828ED80 (CInt(1), var_16C, var_180, var_A0, var_114, var_F4, var_D4)
  loc_182797D:             var_F4 = var_16C.Text
  loc_18279C6:             Call Proc_135_89_F2187C(CStr(var_A0.Item(var_D4).Value), var_180, CStr(Me.Fields.Item("OutletCode").Value), var_1F4, var_D4)
  loc_18279E6:             var_158 = CVar(CLng(8)) 'Long
  loc_1827A21:             LateIdCallSt
  loc_1827A8E:             Set var_138 = Me.Txt
  loc_1827A94:             Call 0.Method_Proc_135_71_1828ED80 (CInt(1), var_16C, var_180, Me.FGrid, CVar(CStr(Format(CVar(var_1F4), "0.00"))), 1, 1)
  loc_1827A9C:             var_158 = var_16C.Text
  loc_1827AE5:             Call Proc_135_89_F2187C(CStr(Me.Fields.Item("Code").Value), var_180, CStr(Me.Fields.Item("OutletCode").Value), var_1F4, CVar(CLng(Me.FGrid.Row)))
  loc_1827AFD:             var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1827B05:             var_158 = CVar(CLng(9)) 'Long
  loc_1827B32:             var_20C = CVar(CStr(Format(CVar(var_1F4), "0.00"))) 'String
  loc_1827B3A:             Set var_210 = Me.FGrid
  loc_1827B40:             LateIdCallSt
  loc_1827B75:           End If
  loc_1827BA5:           var_134 = CVar(Proc_6_38_E68A98(global_132, CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), var_210, var_20C, 1, 1)) 'String
  loc_1827BB3:           LateIdCallSt
  loc_1827BF9:           var_134 = CVar(Proc_6_38_E68A98(global_136, CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, var_158)) 'String
  loc_1827C01:           Set var_C0 = Me.FGrid
  loc_1827C07:           LateIdCallSt
  loc_1827C4B:           Set var_A0 = Me.Txt
  loc_1827C51:           Call 0.Method_Proc_135_71_1828ED80 (CInt(3), var_C0, var_C4, CVar(CLng(&H17)), CVar(CLng(Me.FGrid.Row)), var_C0, var_134)
  loc_1827C59:           var_114 = var_C0.Tag
  loc_1827C61:           var_134 = CVar(var_C4) 'String
  loc_1827C6F:           LateIdCallSt
  loc_1827C93:           var_134 = Me.FGrid.Row
  loc_1827CD4:           var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H13)), CVar(CLng(var_134)), Me.FGrid, var_134)) 'String
  loc_1827CE2:           LateIdCallSt
  loc_1827D47:           var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1827D55:           LateIdCallSt
  loc_1827DBA:           var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1827DC8:           LateIdCallSt
  loc_1827DE6:           Set var_138 = Me.FGrid
  loc_1827DEC:           var_134 = var_138.Row
  loc_1827E2D:           var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1A)), CVar(CLng(var_134)), Me.FGrid, var_148)) 'String
  loc_1827E3B:           LateIdCallSt
  loc_1827E77:           var_A0 = Me.Fields
  loc_1827E87:           var_B0 = CVar(var_A0.Item("TaxStru")) 'Address
  loc_1827E90:           var_C4 = Proc_6_38_E68A98(var_B0, "Select * from taxStru where code='", var_134, -1, var_138, Me.FGrid)
  loc_1827EA4:           unk_552771.Execute var_148 & var_C4 & "'", var_A0, var_B0
  loc_1827EAF:           Set var_98 = var_138
  loc_1827EDD:           If (var_98.RecordCount > 0) Then
  loc_1827F03:             var_D4 = "Rate"
  loc_1827F17:             var_C0 = var_98.Fields.Item(var_D4)
  loc_1827F26:             Proc_6_39_E7C810(var_134, CVar(var_C0), CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)))
  loc_1827F2F:             var_17C = CVar(CStr(var_134)) 'String
  loc_1827F37:             Set var_16C = Me.FGrid
  loc_1827F3D:             LateIdCallSt
  loc_1827F59:           End If
  loc_1827F5E:           Call Proc_135_84_165D318(&H32, var_16C, var_17C)
  loc_1827F63:         End If
  loc_1827F63:       End If
  loc_1827F66:     Else
  loc_1827F6D:       If (var_B4 = CLng(4)) Then
  loc_1827FBE:         Set var_A0 = Me.TxtGrid
  loc_1827FC4:         Call 0.Method_Proc_135_71_1828ED80 (arg_C, var_C0, var_C4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1827FCC:         var_F4 = var_C0.Text
  loc_1827FE4:         If (var_D4 Or (var_C4 = vbNullString)) Then
  loc_1827FFA:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1828002:           var_F4 = CVar(CLng(4)) 'Long
  loc_1828007:           var_114 = vbNullString
  loc_1828011:           Set var_C0 = Me.FGrid
  loc_1828017:           LateIdCallSt
  loc_182803C:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1828044:           var_F4 = CVar(CLng(&HB)) 'Long
  loc_1828049:           var_114 = vbNullString
  loc_1828053:           Set var_C0 = Me.FGrid
  loc_1828059:           LateIdCallSt
  loc_182807E:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1828086:           var_F4 = CVar(CLng(3)) 'Long
  loc_182808B:           var_114 = vbNullString
  loc_1828095:           Set var_C0 = Me.FGrid
  loc_182809B:           LateIdCallSt
  loc_18280C0:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18280C8:           var_F4 = CVar(CLng(6)) 'Long
  loc_18280CD:           var_114 = vbNullString
  loc_18280D7:           Set var_C0 = Me.FGrid
  loc_18280DD:           LateIdCallSt
  loc_1828102:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_182810A:           var_F4 = CVar(CLng(3)) 'Long
  loc_182810F:           var_114 = vbNullString
  loc_1828119:           Set var_C0 = Me.FGrid
  loc_182811F:           LateIdCallSt
  loc_1828144:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_182814C:           var_F4 = CVar(CLng(8)) 'Long
  loc_1828151:           var_114 = vbNullString
  loc_182815B:           Set var_C0 = Me.FGrid
  loc_1828161:           LateIdCallSt
  loc_1828186:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_182818E:           var_F4 = CVar(CLng(9)) 'Long
  loc_1828193:           var_114 = vbNullString
  loc_182819D:           Set var_C0 = Me.FGrid
  loc_18281A3:           LateIdCallSt
  loc_18281C8:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18281D0:           var_F4 = CVar(CLng(&H15)) 'Long
  loc_18281D5:           var_114 = vbNullString
  loc_18281DF:           Set var_C0 = Me.FGrid
  loc_18281E5:           LateIdCallSt
  loc_182820A:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1828212:           var_F4 = CVar(CLng(&H16)) 'Long
  loc_1828217:           var_114 = vbNullString
  loc_1828221:           Set var_C0 = Me.FGrid
  loc_1828227:           LateIdCallSt
  loc_182824C:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1828254:           var_F4 = CVar(CLng(&H17)) 'Long
  loc_1828259:           var_114 = vbNullString
  loc_1828263:           Set var_C0 = Me.FGrid
  loc_1828269:           LateIdCallSt
  loc_182828E:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1828296:           var_F4 = CVar(CLng(&H1A)) 'Long
  loc_182829B:           var_114 = vbNullString
  loc_18282A5:           Set var_C0 = Me.FGrid
  loc_18282AB:           LateIdCallSt
  loc_18282C0:         Else
  loc_18282D9:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18282E1:           var_F4 = CVar(CLng(&HB)) 'Long
  loc_18282FB:           var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1828319:           var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1828321:           var_158 = CVar(CLng(&HB)) 'Long
  loc_182833B:           var_180 = CStr(Me.FGrid.TextMatrix))
  loc_18283A6:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HB)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_18283BD:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_18283D9:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18283E1:             var_104 = CVar(CLng(4)) 'Long
  loc_1828414:             var_148 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_182841C:             Set var_16C = Me.FGrid
  loc_1828422:             LateIdCallSt
  loc_1828451:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1828459:             var_104 = CVar(CLng(&HB)) 'Long
  loc_182848C:             var_148 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1828494:             Set var_16C = Me.FGrid
  loc_182849A:             LateIdCallSt
  loc_18284C9:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18284D1:             var_104 = CVar(CLng(3)) 'Long
  loc_1828504:             var_148 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_182850C:             Set var_16C = Me.FGrid
  loc_1828512:             LateIdCallSt
  loc_1828541:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1828549:             var_104 = CVar(CLng(6)) 'Long
  loc_182857C:             var_148 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1828584:             Set var_16C = Me.FGrid
  loc_182858A:             LateIdCallSt
  loc_18285BA:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_18285C7:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_18285CF:             var_F4 = CVar(CLng(0)) 'Long
  loc_18285D9:             var_B0 = CVar(CStr(var_92)) 'String
  loc_18285E1:             Set var_A0 = Me.FGrid
  loc_18285E7:             LateIdCallSt
  loc_18285F9:             var_D4 = CVar(CLng(var_92)) 'Long
  loc_1828601:             var_F4 = CVar(CLng(7)) 'Long
  loc_182861B:             var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1828631:             If (CDbl(Val(var_C4)) = CDbl(0)) Then
  loc_1828638:               var_D4 = CVar(CLng(var_92)) 'Long
  loc_1828640:               var_F4 = CVar(CLng(7)) 'Long
  loc_1828645:               var_114 = "1.0"
  loc_182864F:               Set var_A0 = Me.FGrid
  loc_1828655:               LateIdCallSt
  loc_1828660:             End If
  loc_1828666:             var_D4 = "Code"
  loc_1828675:             var_A0 = Me.Fields
  loc_1828698:             Set var_138 = Me.Txt
  loc_182869E:             Call 0.Method_Proc_135_71_1828ED80 (CInt(1), var_16C, var_180, var_A0, var_114, var_F4, var_D4)
  loc_18286A6:             var_F4 = var_16C.Text
  loc_18286EF:             Call Proc_135_89_F2187C(CStr(var_A0.Item(var_D4).Value), var_180, CStr(Me.Fields.Item("OutletCode").Value), var_1F4, var_D4)
  loc_182870F:             var_158 = CVar(CLng(8)) 'Long
  loc_182874A:             LateIdCallSt
  loc_18287B7:             Set var_138 = Me.Txt
  loc_18287BD:             Call 0.Method_Proc_135_71_1828ED80 (CInt(1), var_16C, var_180, Me.FGrid, CVar(CStr(Format(CVar(var_1F4), "0.00"))), 1, 1)
  loc_18287C5:             var_158 = var_16C.Text
  loc_182880E:             Call Proc_135_89_F2187C(CStr(Me.Fields.Item("Code").Value), var_180, CStr(Me.Fields.Item("OutletCode").Value), var_1F4, CVar(CLng(Me.FGrid.Row)))
  loc_1828826:             var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1828869:             LateIdCallSt
  loc_18288CE:             var_134 = CVar(Proc_6_38_E68A98(global_132, CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_1F4), "0.00"))), 1, 1)) 'String
  loc_18288DC:             LateIdCallSt
  loc_1828922:             var_134 = CVar(Proc_6_38_E68A98(global_136, CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, CVar(CLng(9)))) 'String
  loc_182892A:             Set var_C0 = Me.FGrid
  loc_1828930:             LateIdCallSt
  loc_1828961:             var_F4 = CVar(CLng(&H17)) 'Long
  loc_1828974:             Set var_A0 = Me.Txt
  loc_182897A:             Call 0.Method_Proc_135_71_1828ED80 (CInt(3), var_C0, var_C4, var_F4, CVar(CLng(Me.FGrid.Row)), var_C0, var_134)
  loc_1828982:             var_114 = var_C0.Tag
  loc_182898A:             var_134 = CVar(var_C4) 'String
  loc_1828998:             LateIdCallSt
  loc_18289BC:             var_134 = Me.FGrid.Row
  loc_18289FD:             var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H13)), CVar(CLng(var_134)), Me.FGrid, var_134)) 'String
  loc_1828A0B:             LateIdCallSt
  loc_1828A70:             var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1828A7E:             LateIdCallSt
  loc_1828AE3:             var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_148)) 'String
  loc_1828AF1:             LateIdCallSt
  loc_1828B0F:             Set var_138 = Me.FGrid
  loc_1828B15:             var_134 = var_138.Row
  loc_1828B56:             var_148 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1A)), CVar(CLng(var_134)), Me.FGrid, var_148)) 'String
  loc_1828B64:             LateIdCallSt
  loc_1828BA0:             var_A0 = Me.Fields
  loc_1828BB0:             var_B0 = CVar(var_A0.Item("TaxStru")) 'Address
  loc_1828BB9:             var_C4 = Proc_6_38_E68A98(var_B0, "Select * from taxStru where code='", var_134, -1, var_138, Me.FGrid)
  loc_1828BCD:             unk_552771.Execute var_148 & var_C4 & "'", var_A0, var_B0
  loc_1828BD8:             Set var_98 = var_138
  loc_1828C06:             If (var_98.RecordCount > 0) Then
  loc_1828C2C:               var_D4 = "Rate"
  loc_1828C40:               var_C0 = var_98.Fields.Item(var_D4)
  loc_1828C4F:               Proc_6_39_E7C810(var_134, CVar(var_C0), CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)))
  loc_1828C58:               var_17C = CVar(CStr(var_134)) 'String
  loc_1828C60:               Set var_16C = Me.FGrid
  loc_1828C66:               LateIdCallSt
  loc_1828C82:             End If
  loc_1828C87:             Call Proc_135_84_165D318(&H32, var_16C, var_17C)
  loc_1828C8C:           End If
  loc_1828C8C:         End If
  loc_1828C8F:       Else
  loc_1828C96:         If (var_B4 = CLng(7)) Then
  loc_1828CA3:           Set var_A0 = Me.TxtGrid
  loc_1828CA9:           Call 0.Method_Proc_135_71_1828ED80 (arg_C, var_C0, var_F4)
  loc_1828CC1:           If Not(IsNumeric(CVar(var_C0))) Then
  loc_1828CD5:             Set var_A0 = Me.TxtGrid
  loc_1828CDB:             Call 0.Method_Proc_135_71_1828ED80 (arg_C, var_C0, CStr(0))
  loc_1828CE3:             var_C0.Text = var_D4
  loc_1828CF2:           End If
  loc_1828CFF:           Set var_A0 = Me.TxtGrid
  loc_1828D05:           Call 0.Method_Proc_135_71_1828ED80 (arg_C, var_C0)
  loc_1828D25:           var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1828D3D:           var_104 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1828D77:           LateIdCallSt
  loc_1828DA0:           Call Proc_135_84_165D318(&H32, Me.FGrid, CVar(CStr(Format(CVar(var_C0.Text), "0.00"))), 1)
  loc_1828DA8:         Else
  loc_1828DAF:           If (var_B4 = CLng(8)) Then
  loc_1828DBC:             Set var_A0 = Me.TxtGrid
  loc_1828DC2:             Call 0.Method_Proc_135_71_1828ED80 (arg_C, var_C0, 1)
  loc_1828DDA:             If Not(IsNumeric(CVar(var_C0))) Then
  loc_1828DE1:               var_C4 = CStr(0)
  loc_1828DEE:               Set var_A0 = Me.TxtGrid
  loc_1828DF4:               Call 0.Method_Proc_135_71_1828ED80 (arg_C, var_C0, var_C4)
  loc_1828DFC:               var_C0.Text = var_104
  loc_1828E0B:             End If
  loc_1828E18:             Set var_A0 = Me.TxtGrid
  loc_1828E1E:             Call 0.Method_Proc_135_71_1828ED80 (arg_C, var_C0, var_C4)
  loc_1828E26:             var_E4 = var_C0.Text
  loc_1828E49:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1828E61:             var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1828E9C:             LateIdCallSt
  loc_1828EC8:             Call Proc_135_84_165D318(&H32, Me.FGrid, CVar(CStr(Format(CVar(Val(var_C4)), "0.00"))), 1, 1)
  loc_1828ECD:           End If
  loc_1828ECD:         End If
  loc_1828ECD:       End If
  loc_1828ECD:     End If
  loc_1828ECD:   End If
  loc_1828ECD: End If
  loc_1828ED2: Proc_135_71_1828ED8 = &HFF
End Sub

Public Sub Proc_135_72_17E4588
  'Data Table: 55274C
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_B8 As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_110 As String
  Dim unk_552771 As Connection15
  Dim var_138 As Recordset15
  Dim var_13C As Variant
  Dim var_140 As String
  Dim var_134 As Variant
  Dim var_CC As Variant
  Dim var_8C As Recordset15
  Dim var_130 As Variant
  Dim var_120 As Variant
  Dim var_160 As Variant
  Dim var_88 As Recordset15
  Dim var_18C As Variant
  Dim var_8E As Integer
  Dim var_9E As Integer
  Dim var_9A As Integer
  Dim var_170 As Variant
  loc_17E241C: On Error Goto loc_17E4534
  loc_17E242C: Me.lblTable.Caption = vbNullString
  loc_17E244B: If (Me.RecordCount > 0) Then
  loc_17E248D:   var_EC = "Select S.* From Sale1 S Where S.Docid='" & Me.Fields.Item("DocID").Value 
  loc_17E24A4:   unk_552771.Execute CStr(var_EC & "'"), var_130, -1
  loc_17E24CC:   Set var_138 = var_134 
  loc_17E2509:   Set var_134 = Me.Txt
  loc_17E250F:   Call 0.Method_Proc_135_72_17E45880 (CInt(2), var_13C)
  loc_17E2517:   var_13C.Text = CStr(var_138.Fields.Item("DocID").Value)
  loc_17E2547:   var_BC = var_138.Fields.Item("vType")
  loc_17E254F:   var_CC = var_BC.Value
  loc_17E2575:   var_DC = 0
  loc_17E25A5:   unk_552771.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(var_CC) & "'", var_CC, -1
  loc_17E25AD:   var_A4 = var_A4.Fields
  loc_17E25B5:   var_DC = var_BC.Item(var_BC)
  loc_17E25BD:   var_134 = var_134.Value
  loc_17E25CC:   global_116 = CStr(var_EC)
  loc_17E2622:   Set var_134 = Me.Txt
  loc_17E2628:   Call 0.Method_Proc_135_72_17E45880 (CInt(0), var_13C, CStr(var_138.Fields.Item("VNo").Value))
  loc_17E2630:   var_13C.Text = var_EC
  loc_17E265D:   var_BC = var_138.Fields.Item("VDate")
  loc_17E2698:   Set var_134 = Me.Txt
  loc_17E269E:   Call 0.Method_Proc_135_72_17E45880 (CInt(1), var_13C, CStr(Format(CVar(var_BC), "DD/MMM/YYYY")))
  loc_17E26A6:   var_13C.Text = 1
  loc_17E26CB:   Set var_A4 = Me.Txt
  loc_17E26D1:   Call 0.Method_Proc_135_72_17E45880 (CInt(1), var_BC)
  loc_17E2703:   Call Proc_135_83_17C7138(CDate(Format(CVar(var_BC), "DD/MMM/YYYY")), 1, 1)
  loc_17E2746:   Set var_134 = Me.LblVPrefix
  loc_17E274C:   var_134.Caption = CStr(var_138.Fields.Item("vPrefix").Value)
  loc_17E2791:   global_124 = CStr(var_138.Fields.Item("KOTNo").Value)
  loc_17E27B3:   If (global_192 = "Hall") Then
  loc_17E27F2:     var_EC = "Select Name From RoomMast Where [Type]='HL' AND RoomCat='HALL' And Code='" & var_138.Fields.Item("RoomNo").Value 
  loc_17E2809:     unk_552771.Execute CStr(var_EC & "'"), var_130, -1
  loc_17E2814:     Set var_8C = var_134
  loc_17E2842:     If (var_8C.RecordCount > 0) Then
  loc_17E2884:       Call 0.Method_Proc_135_72_17E45880 (CInt(3), var_13C, CStr(var_8C.Fields.Item(0).Value))
  loc_17E288C:       var_13C.Text = Me.Txt
  loc_17E28A2:     End If
  loc_17E28A5:   Else
  loc_17E28DB:     Set var_134 = Me.Txt
  loc_17E28E1:     Call 0.Method_Proc_135_72_17E45880 (CInt(3), var_13C)
  loc_17E28E9:     var_13C.Text = Proc_6_38_E68A98(CVar(var_138.Fields.Item("RoomNo")), 1)
  loc_17E28FD:   End If
  loc_17E2933:   Set var_134 = Me.Txt
  loc_17E2939:   Call 0.Method_Proc_135_72_17E45880 (CInt(3), var_13C)
  loc_17E2941:   var_13C.Tag = Proc_6_38_E68A98(CVar(var_138.Fields.Item("RoomNo")))
  loc_17E297B:   Proc_6_39_E7C810(var_EC, CVar(var_138.Fields.Item("GuarAtt")))
  loc_17E2992:   Set var_134 = Me.Txt
  loc_17E2998:   Call 0.Method_Proc_135_72_17E45880 (CInt(4), var_13C)
  loc_17E29A0:   var_13C.Text = CStr(var_EC)
  loc_17E29CF:   var_BC = var_138.Fields.Item("VTIME")
  loc_17E2A0A:   Set var_134 = Me.Txt
  loc_17E2A10:   Call 0.Method_Proc_135_72_17E45880 (CInt(5), var_13C, CStr(Format(CVar(var_BC), "hh:nn")))
  loc_17E2A18:   var_13C.Text = 1
  loc_17E2A3D:   Set var_A4 = Me.Txt
  loc_17E2A43:   Call 0.Method_Proc_135_72_17E45880 (CInt(5), var_BC)
  loc_17E2A87:   var_130 = "Select Name From SessionMast where '" & CDate(CDate(Format(CVar(var_BC), "HH:MM"))) 
  loc_17E2A9E:   unk_552771.Execute CStr(var_130 & "' between cdate(fromtime) and cdate(toTime)"), var_180, -1
  loc_17E2AA9:   Set var_94 = var_134
  loc_17E2ADE:   If (Me.Recordset15.RecordCount > 0) Then
  loc_17E2B13:     Set var_134 = Me.lblSession
  loc_17E2B19:     var_134.Caption = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Name")), var_134, 1)
  loc_17E2B2B:   End If
  loc_17E2B2D:   Set var_138 = Nothing 
  loc_17E2B87:   unk_552771.Execute CStr("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_130, -1
  loc_17E2B92:   Set var_88 = var_134
  loc_17E2BC0:   If (var_88.RecordCount > 0) Then
  loc_17E2BF3:     Call Proc_135_83_17C7138(CDate(var_88.Fields.Item("SunAppDate").Value), var_134, 1)
  loc_17E2C02:     ' Referenced from: 17E309B
  loc_17E2C11:     If Not(var_88.EOF) Then
  loc_17E2C74:       Set var_188 = Me.LblCap
  loc_17E2C7A:       Call 0.Method_Proc_135_72_17E45880 (CInt(var_88.Fields.Item("SNo").Value), var_18C, CStr(var_88.Fields.Item("SunCode").Value))
  loc_17E2C82:       var_18C.Tag = 1
  loc_17E2D00:       Set var_188 = Me.TxtPer
  loc_17E2D06:       Call 0.Method_Proc_135_72_17E45880 (CInt(var_88.Fields.Item("SNo").Value), var_18C)
  loc_17E2D0E:       var_18C.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_17E2D8C:       Set var_188 = Me.LblCap
  loc_17E2D92:       Call 0.Method_Proc_135_72_17E45880 (CInt(var_88.Fields.Item("SNo").Value), var_18C)
  loc_17E2D9A:       var_18C.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_17E2E18:       Set var_188 = Me.LblAt
  loc_17E2E1E:       Call 0.Method_Proc_135_72_17E45880 (CInt(var_88.Fields.Item("SNo").Value), var_18C)
  loc_17E2E26:       var_18C.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_17E2EA4:       Set var_188 = Me.TxtGt
  loc_17E2EAA:       Call 0.Method_Proc_135_72_17E45880 (CInt(var_88.Fields.Item("SNo").Value), var_18C)
  loc_17E2EB2:       var_18C.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_17E2F30:       Set var_188 = Me.TxtPer
  loc_17E2F36:       Call 0.Method_Proc_135_72_17E45880 (CInt(var_88.Fields.Item("SNo").Value), var_18C)
  loc_17E2F3E:       var_18C.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_17E2F9A:       var_130 = var_88.Fields.Item("SNo").Value
  loc_17E2FAE:       var_EC = "0.00"
  loc_17E2FD5:       Set var_188 = Me.TxtGt
  loc_17E2FDB:       Call 0.Method_Proc_135_72_17E45880 (CInt(var_130), var_18C, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_EC)))
  loc_17E2FE3:       var_18C.Text = 1
  loc_17E301A:       var_BC = var_88.Fields.Item("BaseAmount")
  loc_17E3029:       Proc_6_39_E7C810(var_EC, CVar(var_BC))
  loc_17E3031:       var_110 = CStr(var_EC)
  loc_17E304A:       var_134 = var_88.Fields
  loc_17E3052:       var_13C = var_134.Item("SNo")
  loc_17E3067:       Set var_188 = Me.LblDummy
  loc_17E306D:       Call 0.Method_Proc_135_72_17E45880 (CInt(var_13C.Value), var_18C, var_110)
  loc_17E3075:       var_18C.Caption = 1
  loc_17E3096:       var_88.MoveNext
  loc_17E309B:       GoTo loc_17E2C02
  loc_17E309E:     End If
  loc_17E309E:   End If
  loc_17E30BC:   Set var_A4 = Me.Txt
  loc_17E30C2:   Call 0.Method_Proc_135_72_17E45880 (CInt(2), var_BC, var_110, "Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge Where DocID='")
  loc_17E30CA:   var_CC = var_BC.Text
  loc_17E30D3:   var_140 = -1 & var_110
  loc_17E30E3:   unk_552771.Execute "Select NCAT From Voucher_Type Where V_Type='" & CStr(var_CC) & "'" & "' And PayType='Cash'", var_134, var_134
  loc_17E30EE:   Set var_8C = var_134
  loc_17E3114:   Set var_A4 = Me.Txt
  loc_17E311A:   Call 0.Method_Proc_135_72_17E45880 (CInt(6), var_BC)
  loc_17E3122:   var_BC.Text = vbNullString
  loc_17E313C:   Set var_A4 = Me.Txt
  loc_17E3142:   Call 0.Method_Proc_135_72_17E45880 (CInt(7), var_BC)
  loc_17E314A:   var_BC.Text = vbNullString
  loc_17E3164:   Set var_A4 = Me.Txt
  loc_17E316A:   Call 0.Method_Proc_135_72_17E45880 (CInt(8), var_BC)
  loc_17E3172:   var_BC.Text = vbNullString
  loc_17E3192:   If (var_8C.RecordCount > 0) Then
  loc_17E31E7:     Set var_134 = Me.Txt
  loc_17E31ED:     Call 0.Method_Proc_135_72_17E45880 (CInt(6), var_13C, CStr(Format(CVar(var_8C.Fields.Item("Amount")), "0.00")))
  loc_17E31F5:     var_13C.Text = 1
  loc_17E3261:     Set var_134 = Me.Txt
  loc_17E3267:     Call 0.Method_Proc_135_72_17E45880 (CInt(7), var_13C, CStr(Format(CVar(var_8C.Fields.Item("TipAmt")), "0.00")))
  loc_17E326F:     var_13C.Text = 1
  loc_17E3289:   End If
  loc_17E3298:   Me.FGrid.Redraw = False
  loc_17E32B3:   Me.FGrid.Rows = 1
  loc_17E32BD:   var_8E = 1
  loc_17E32CD:   var_DC = "Select S.*,I.Name as ItemName,I.SChrgApp,DispCode,S.DiscApp as DApp,S.RoundOff as ROff,IC.Code as TaxCode,RateEdit,K.DociD as KOTDocID ,K.SNo as KOTSno,D.Code as DepartCode,D.ShortName as DepartName From (((Stock S Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left Join ItemMast I On S.Item=I.Code And I.RestCODE=S.ItemRestCode)Left join  ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D on D.Code=I.RestCode Where S.DocId='"
  loc_17E3316:   unk_552771.Execute CStr(var_DC & Me.Fields.Item("SearchCode").Value & "' Order By S.SNo"), var_130, -1
  loc_17E3321:   Set var_88 = var_134
  loc_17E334F:   If (var_88.RecordCount > 0) Then
  loc_17E335F:     ReDim Preserve var_98(0 To 0)
  loc_17E3369:     ' Referenced from: 17E3E93
  loc_17E3378:     If Not(var_88.EOF) Then
  loc_17E337B:       var_B8 = vbNullString
  loc_17E3385:       Set var_A4 = Me.FGrid
  loc_17E33A3:       For var_190 = 0 To CInt(UBound(var_98, 1)): var_9C = var_190 'Integer
  loc_17E33B4:         var_B8 = "RoomNo"
  loc_17E33E7:         If (var_134 = Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_B8)), var_98(CLng(var_9C)), 0, FGrid.DispID_10000, var_B8)) Then
  loc_17E33EC:           var_9E = &HFF
  loc_17E33EF:         End If
  loc_17E33F2:       Next var_190 'Integer
  loc_17E33FD:       If (var_9E = 0) Then
  loc_17E340C:         ReDim Preserve var_98(0 To CLng(var_9A))
  loc_17E3448:         var_98(CLng(var_9A)) = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomNo")))
  loc_17E3458:         var_9A = (var_9A + 1)
  loc_17E345B:       End If
  loc_17E345D:       var_9E = 0
  loc_17E3464:       Set var_194 = Me.FGrid
  loc_17E346B:       var_DC = CVar(CLng(var_8E)) 'Long
  loc_17E3473:       var_120 = CVar(CLng(0)) 'Long
  loc_17E34A3:       var_EC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_17E34AA:       LateIdCallSt
  loc_17E34C4:       var_DC = CVar(CLng(var_8E)) 'Long
  loc_17E34CC:       var_120 = CVar(CLng(&HB)) 'Long
  loc_17E34FC:       var_EC = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_17E3503:       LateIdCallSt
  loc_17E3552:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_8E)), var_194, var_EC, CVar(CLng(3)), CVar(CLng(var_8E)))) 'String
  loc_17E3559:       LateIdCallSt
  loc_17E35A4:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_8E)), var_194, var_EC, var_194)) 'String
  loc_17E35AB:       LateIdCallSt
  loc_17E35F6:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_8E)), var_194, var_EC)) 'String
  loc_17E35FD:       LateIdCallSt
  loc_17E362F:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_17E3637:       var_170 = CVar(CLng(7)) 'Long
  loc_17E3664:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_17E366B:       LateIdCallSt
  loc_17E36A1:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_17E36A9:       var_170 = CVar(CLng(8)) 'Long
  loc_17E36D6:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00"))) 'String
  loc_17E36DD:       LateIdCallSt
  loc_17E3713:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_17E371B:       var_170 = CVar(CLng(9)) 'Long
  loc_17E3748:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_17E374F:       LateIdCallSt
  loc_17E3785:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_17E378D:       var_170 = CVar(CLng(&HA)) 'Long
  loc_17E37BA:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_17E37C1:       LateIdCallSt
  loc_17E37F7:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_17E37FF:       var_170 = CVar(CLng(&HE)) 'Long
  loc_17E382C:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_17E3833:       LateIdCallSt
  loc_17E3869:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_17E3871:       var_170 = CVar(CLng(&HF)) 'Long
  loc_17E389E:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_17E38A5:       LateIdCallSt
  loc_17E38DB:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_17E38E3:       var_170 = CVar(CLng(&H10)) 'Long
  loc_17E3910:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_17E3917:       LateIdCallSt
  loc_17E394D:       var_FC = CVar(CLng(var_8E)) 'Long
  loc_17E3955:       var_170 = CVar(CLng(&H11)) 'Long
  loc_17E3982:       var_130 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_17E3989:       LateIdCallSt
  loc_17E39FB:       LateIdCallSt
  loc_17E3A4A:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DApp")), CVar(CLng(&H13)), CVar(CLng(var_8E)), var_194, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_17E3A51:       LateIdCallSt
  loc_17E3A9C:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Roff")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_194, var_EC, CVar(CLng(&H12)))) 'String
  loc_17E3AA3:       LateIdCallSt
  loc_17E3AEE:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_194, var_EC)) 'String
  loc_17E3AF5:       LateIdCallSt
  loc_17E3B40:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_8E)), var_194, var_EC)) 'String
  loc_17E3B47:       LateIdCallSt
  loc_17E3B88:       var_DC = CVar(CLng(var_8E)) 'Long
  loc_17E3B90:       var_120 = CVar(CLng(5)) 'Long
  loc_17E3BAB:       var_110 = CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("KotDocid")), var_194, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("KotDocid")), var_194, var_EC, CVar(CLng(var_8E)))), CVar(CLng(var_8E)))), 8))
  loc_17E3BB6:       var_130 = CVar(CStr(Val(var_110))) 'String
  loc_17E3BBD:       LateIdCallSt
  loc_17E3C13:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("KotDocid")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_194, var_130, CVar(CLng(&HD)))) 'String
  loc_17E3C1A:       LateIdCallSt
  loc_17E3C63:       Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("kotSNo")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_194, var_EC)
  loc_17E3C73:       LateIdCallSt
  loc_17E3CC0:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomCat")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_194, CVar(CStr(var_EC)))) 'String
  loc_17E3CC7:       LateIdCallSt
  loc_17E3D12:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Roomtype")), CVar(CLng(&H16)), CVar(CLng(var_8E)), var_194, var_EC)) 'String
  loc_17E3D19:       LateIdCallSt
  loc_17E3D62:       Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RoomNo")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_194, var_EC)
  loc_17E3D72:       LateIdCallSt
  loc_17E3DBF:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_8E)), var_194, CVar(CStr(var_EC)))) 'String
  loc_17E3DC6:       LateIdCallSt
  loc_17E3E11:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_8E)), var_194, var_EC)) 'String
  loc_17E3E18:       LateIdCallSt
  loc_17E3E2E:       var_DC = CVar(CLng(var_8E)) 'Long
  loc_17E3E52:       var_BC = var_88.Fields.Item("SChrgApp")
  loc_17E3E63:       var_EC = CVar(Proc_6_38_E68A98(CVar(var_BC), CVar(CLng(&H1B)), var_DC, var_194, var_EC)) 'String
  loc_17E3E6A:       LateIdCallSt
  loc_17E3E7E:       Set var_194 = Nothing 
  loc_17E3E88:       var_8E = (var_8E + 1)
  loc_17E3E8E:       var_88.MoveNext
  loc_17E3E93:       GoTo loc_17E3369
  loc_17E3E96:     End If
  loc_17E3EA9:     Me.FGrid.FixedRows = 1
  loc_17E3EBF:     Set var_A4 = Me.Txt
  loc_17E3EC5:     Call 0.Method_Proc_135_72_17E45880 (CInt(3), var_BC, vbNullString, var_8E, var_194, var_EC)
  loc_17E3EE6:     For var_1B8 = 0 To CInt(UBound(var_98, 1)): var_9A = var_1B8 'Integer
  loc_17E3EFA:       Set var_A4 = Me.Txt
  loc_17E3F00:       Call 0.Method_Proc_135_72_17E45880 (CInt(3), var_BC, var_110, 0)
  loc_17E3F08:       var_194 = var_DC
  loc_17E3F2E:       Set var_134 = Me.Txt
  loc_17E3F34:       Call 0.Method_Proc_135_72_17E45880 (CInt(3), var_13C, var_110 & var_98(CLng(var_9A)) & ",")
  loc_17E3F3C:       var_13C.Text = var_130
  loc_17E3F58:     Next var_1B8 'Integer
  loc_17E3F68:     Set var_A4 = Me.Txt
  loc_17E3F6E:     Call 0.Method_Proc_135_72_17E45880 (CInt(3))
  loc_17E3F7E:     Set var_134 = Me.Txt
  loc_17E3F84:     Call 0.Method_Proc_135_72_17E45880 (CInt(3), var_13C)
  loc_17E3FA4:     var_130 = (Len(Trim(CVar(var_13C))) - 1)
  loc_17E3FB7:     var_160 = CVar(var_BC) 'Address
  loc_17E3FD5:     Set var_188 = Me.Txt
  loc_17E3FDB:     Call 0.Method_Proc_135_72_17E45880 (CInt(3), var_18C)
  loc_17E3FE3:     var_18C.Text = CStr(Mid(var_160, 1, var_130))
  loc_17E4003:   End If
  loc_17E4011:   Me.FGrid.Redraw = True
  loc_17E402D:   var_EC = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,Sundry " & " FROM Sale2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_17E4066:   var_130 = var_EC & Me.Fields.Item("SearchCode").Value & "'" 
  loc_17E4074:   unk_552771.Execute CStr(var_130), var_160, -1
  loc_17E407F:   Set var_88 = var_134
  loc_17E40AE:   Me.FGCat.Rows = 1
  loc_17E40BC:   var_A8 = var_88.RecordCount
  loc_17E40CA:   If (var_A8 > 0) Then
  loc_17E40CD:     ' Referenced from: 17E4490
  loc_17E40DC:     If Not(var_88.EOF) Then
  loc_17E40E6:       var_B8 = vbNullString
  loc_17E4110:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17E4118:       var_120 = CVar(CLng(0)) 'Long
  loc_17E4148:       var_10C = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_17E414F:       LateIdCallSt
  loc_17E4182:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17E418A:       var_120 = CVar(CLng(1)) 'Long
  loc_17E41BA:       var_10C = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_17E41C1:       LateIdCallSt
  loc_17E41F4:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17E41FC:       var_120 = CVar(CLng(2)) 'Long
  loc_17E422C:       var_10C = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_17E4233:       LateIdCallSt
  loc_17E4266:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17E426E:       var_120 = CVar(CLng(3)) 'Long
  loc_17E429E:       var_10C = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_17E42A5:       LateIdCallSt
  loc_17E42D8:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17E42E0:       var_120 = CVar(CLng(4)) 'Long
  loc_17E4310:       var_10C = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_17E4317:       LateIdCallSt
  loc_17E434A:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17E4352:       var_120 = CVar(CLng(5)) 'Long
  loc_17E4382:       var_10C = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_17E4389:       LateIdCallSt
  loc_17E43BC:       var_DC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17E43C4:       var_120 = CVar(CLng(6)) 'Long
  loc_17E43F4:       var_10C = CVar(CStr(var_88.Fields.Item("TaxAmt").Value)) 'String
  loc_17E43FB:       LateIdCallSt
  loc_17E441F:       var_EC = Me.FGCat.Rows
  loc_17E442E:       var_DC = CVar((CLng(var_EC) - 1)) 'Long
  loc_17E4436:       var_120 = CVar(CLng(7)) 'Long
  loc_17E4463:       var_10C = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Sundry")), var_120, "'", Me.FGCat, var_10C, var_120, "'")) 'String
  loc_17E446A:       LateIdCallSt
  loc_17E4484:       Set var_1CC = Nothing 
  loc_17E448B:       var_88.MoveNext
  loc_17E4490:       GoTo loc_17E40CD
  loc_17E4493:     End If
  loc_17E4493:   End If
  loc_17E4499:   If (var_8E = 1) Then
  loc_17E44AF:     Me.FGrid.Rows = 1
  loc_17E44D5:     var_CC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_1CC, var_10C, var_1CC))) 'String
  loc_17E44DD:     Set var_BC = Me.FGrid
  loc_17E450A:     Me.FGrid.FixedRows = 1
  loc_17E4512:   End If
  loc_17E4515: Else
  loc_17E4515:   Call Proc_135_74_10ACC4C(FGrid.DispID_10000, var_CC, var_10C, var_120)
  loc_17E451A: End If
  loc_17E451A: Call Proc_135_76_EF6D38("'", var_1CC)
  loc_17E4524: Set var_88 = Nothing
  loc_17E452C: Set var_94 = Nothing
  loc_17E4533: Exit Sub
  loc_17E4534: ' Referenced from: 17E241C
  loc_17E453C: Set var_A4 = Err()
  loc_17E4542: Call 0.Method_arg_1C (var_A8)
  loc_17E4553: If (var_A8 = &HBCD) Then
  loc_17E456F:   MsgBox("Record is Deleted by somebody", &H40, var_EC, var_10C, var_130)
  loc_17E457F:   Exit Sub
  loc_17E4580: End If
  loc_17E4580: Proc_6_60_E62BC4(var_10C)
  loc_17E4585: Exit Sub
End Sub

Public Sub Proc_135_73_11079CC
  'Data Table: 55274C
  Dim var_AC As Variant
  Dim var_D0 As TextBox
  Dim unk_552771 As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_108 As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_D4 As String
  loc_11076B1: Set var_9C = Me.TopCtrl1
  loc_11076B7: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(&HFF)
  loc_11076CC: If ( = "Add") Then
  loc_11076FC:   Set var_9C = Me.Txt
  loc_1107702:   Call 0.Method_Proc_135_73_11079CC0 (CInt(2), var_D0, var_D4, "Select Count(*) From Sale1 Where DocID='", var_BC, -1)
  loc_1107723:   unk_552771.Execute var_E4 & var_D4 & "'", 0, var_F8
  loc_1107733:    = var_E4.Item()
  loc_110773B:    = var_F8.Value
  loc_1107768:   If (var_D0.Text.Fields > 0) Then
  loc_1107771:     Call 0.Method_arg_50 (var_D4)
  loc_1107792:     MsgBox("Duplicate Bill No.", &H40, CVar(var_D4), var_118, var_128)
  loc_11077A8:     Call Proc_135_78_10EA790(MemVar_1F92044)
  loc_11077BB:     Set var_9C = Me.Txt
  loc_11077C1:     Call 0.Method_Proc_135_73_11079CC0 (CInt(2), var_D0)
  loc_11077C9:     var_D0.Text = var_D4
  loc_11077DD:     Proc_135_73_11079CC = 0
  loc_11077E3:   End If
  loc_11077E3: End If
  loc_1107808: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_1107812:   var_AC = CVar(CLng(var_88)) 'Long
  loc_110781A:   var_108 = CVar(CLng(4)) 'Long
  loc_110783A:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1107856:   If CBool(var_118 <> vbNullString) Then
  loc_110785D:     var_AC = CVar(CLng(var_88)) 'Long
  loc_1107865:     var_108 = CVar(CLng(7)) 'Long
  loc_1107895:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_11078BD:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_11078E3:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_11078EF:       Set var_9C = Me.FGrid
  loc_1107905:       Proc_135_73_11079CC = 0
  loc_110790B:     End If
  loc_110790F:     var_AC = CVar(CLng(var_88)) 'Long
  loc_1107917:     var_108 = CVar(CLng(8)) 'Long
  loc_1107947:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_110796F:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1107995:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_11079A1:       Set var_9C = Me.FGrid
  loc_11079B7:       Proc_135_73_11079CC = 0
  loc_11079BD:     End If
  loc_11079BD:   End If
  loc_11079C0: Next var_12C 'Integer
  loc_11079C5: Proc_135_73_11079CC = 
End Sub

Public Sub Proc_135_74_10ACC4C
  'Data Table: 55274C
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Long
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_10AC981: Me.LblVPrefix.Caption = vbNullString
  loc_10AC997: Set var_8C = Me.Txt
  loc_10AC99D: Call 0.Method_Proc_135_74_10ACC4CC (var_8E, var_86)
  loc_10AC9AD: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10AC9C3:   Set var_8C = Me.Txt
  loc_10AC9C9:   Call 0.Method_Proc_135_74_10ACC4C0 (CInt(var_86), var_98)
  loc_10AC9D1:   var_98.Text = vbNullString
  loc_10AC9ED:   Set var_8C = Me.Txt
  loc_10AC9F3:   Call 0.Method_Proc_135_74_10ACC4C0 (CInt(var_86), var_98)
  loc_10AC9FB:   var_98.Tag = vbNullString
  loc_10ACA0A: Next var_92 'Byte
  loc_10ACA23: Me.FGrid.Rows = 1
  loc_10ACA38: Me.lblTable.Caption = vbNullString
  loc_10ACA5E: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_10ACA66: Set var_98 = Me.FGrid
  loc_10ACA80: var_A8 = 1
  loc_10ACA8C: var_DC = CVar(CLng(1)) 'Long
  loc_10ACA9F: Set var_8C = Me.FGrid
  loc_10ACAA5: LateIdCallSt
  loc_10ACAB0: var_A8 = 1
  loc_10ACABC: var_DC = CVar(CLng(2)) 'Long
  loc_10ACACF: Set var_8C = Me.FGrid
  loc_10ACAD5: LateIdCallSt
  loc_10ACAE0: var_A8 = 1
  loc_10ACAF3: Me.FGrid.FixedRows = var_A8
  loc_10ACB0F: Call 0.Method_Proc_135_74_10ACC4CC (var_8E, var_86, CByte(1), Me.TxtPer, global_196, var_DC, var_A8)
  loc_10ACB1C: For var_100 = global_200 To CByte(var_8E): var_8C = var_100 'Byte
  loc_10ACB32:   Set var_8C = Me.TxtPer
  loc_10ACB38:   Call 0.Method_Proc_135_74_10ACC4C0 (CInt(var_86), var_98, vbNullString, global_200, var_DC)
  loc_10ACB40:   var_98.Text = var_A8
  loc_10ACB4F: Next var_100 'Byte
  loc_10ACB63: Set var_8C = Me.TxtGt
  loc_10ACB69: Call 0.Method_Proc_135_74_10ACC4CC (var_8E, var_86)
  loc_10ACB76: For var_104 =  To CByte(var_8E): CByte(1) = var_104 'Byte
  loc_10ACB8C:   Set var_8C = Me.TxtGt
  loc_10ACB92:   Call 0.Method_Proc_135_74_10ACC4C0 (CInt(var_86), var_98)
  loc_10ACB9A:   var_98.Text = vbNullString
  loc_10ACBA9: Next var_104 'Byte
  loc_10ACBBD: Set var_8C = Me.Txt
  loc_10ACBC3: Call 0.Method_Proc_135_74_10ACC4C0 (CInt(5), var_98)
  loc_10ACBCB: var_98.Text = "00:00"
  loc_10ACBE5: Set var_8C = Me.Txt
  loc_10ACBEB: Call 0.Method_Proc_135_74_10ACC4C0 (CInt(5), var_98)
  loc_10ACBF3: var_98.Tag = vbNullString
  loc_10ACC11: Set var_8C = Me.Txt
  loc_10ACC17: Call 0.Method_Proc_135_74_10ACC4C0 (CInt(4), var_98)
  loc_10ACC1F: var_98.Text = CStr(1)
  loc_10ACC41: Me.FGCat.Rows = 0
  loc_10ACC49: Exit Sub
  loc_10ACC4A: Set var_2B88 = 
End Sub

Public Sub Proc_135_75_1006BAC(arg_C) '1006BAC
  'Data Table: 55274C
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_10069A2: Set var_8C = Me.Txt
  loc_10069A8: Call 0.Method_Proc_135_75_1006BACC (var_8E, var_86)
  loc_10069B8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10069CE:   Set var_8C = Me.Txt
  loc_10069D4:   Call 0.Method_Proc_135_75_1006BAC0 (CInt(var_86), var_98)
  loc_10069DC:   var_98.Enabled = arg_C
  loc_10069EB: Next var_92 'Byte
  loc_10069FF: Set var_8C = Me.TxtPer
  loc_1006A05: Call 0.Method_Proc_135_75_1006BACC (var_8E, var_86)
  loc_1006A12: For var_9C =  To CByte(var_8E): CByte(1) = var_9C 'Byte
  loc_1006A28:   Set var_8C = Me.TxtPer
  loc_1006A2E:   Call 0.Method_Proc_135_75_1006BAC0 (CInt(var_86), var_98)
  loc_1006A36:   var_98.Enabled = arg_C
  loc_1006A45: Next var_9C 'Byte
  loc_1006A59: Set var_8C = Me.TxtGt
  loc_1006A5F: Call 0.Method_Proc_135_75_1006BACC (var_8E, var_86)
  loc_1006A6C: For var_A0 =  To CByte(var_8E): CByte(1) = var_A0 'Byte
  loc_1006A82:   Set var_8C = Me.TxtGt
  loc_1006A88:   Call 0.Method_Proc_135_75_1006BAC0 (CInt(var_86), var_98)
  loc_1006A90:   var_98.Enabled = arg_C
  loc_1006A9F: Next var_A0 'Byte
  loc_1006AB2: Set var_8C = Me.Txt
  loc_1006AB8: Call 0.Method_Proc_135_75_1006BAC0 (CInt(2), var_98)
  loc_1006AC0: var_98.Enabled = False
  loc_1006AD9: Set var_8C = Me.Txt
  loc_1006ADF: Call 0.Method_Proc_135_75_1006BAC0 (CInt(5), var_98)
  loc_1006AE7: var_98.Enabled = False
  loc_1006B00: Set var_8C = Me.Txt
  loc_1006B06: Call 0.Method_Proc_135_75_1006BAC0 (CInt(1), var_98)
  loc_1006B0E: var_98.Enabled = False
  loc_1006B27: Set var_8C = Me.Txt
  loc_1006B2D: Call 0.Method_Proc_135_75_1006BAC0 (CInt(0), var_98)
  loc_1006B35: var_98.Enabled = False
  loc_1006B4E: Set var_8C = Me.Txt
  loc_1006B54: Call 0.Method_Proc_135_75_1006BAC0 (CInt(8), var_98)
  loc_1006B5C: var_98.Enabled = False
  loc_1006B76: Me.Command1.Enabled = Not(arg_C)
  loc_1006B8C: Me.Command2.Enabled = Not(arg_C)
  loc_1006BA1: Me.CmdSave.Enabled = arg_C
  loc_1006BA9: Exit Sub
End Sub

Public Sub Proc_135_76_EF6D38
  'Data Table: 55274C
  loc_EF6C78: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF6C8A:   Me.DGItem.Visible = False
  loc_EF6C92: End If
  loc_EF6CAE: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_EF6CC0:   Me.DGTable.Visible = False
  loc_EF6CC8: End If
  loc_EF6CE4: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF6CF6:   Me.DGRest.Visible = False
  loc_EF6CFE: End If
  loc_EF6D1A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF6D2C:   Me.FGPoint.Visible = False
  loc_EF6D34: End If
  loc_EF6D34: Exit Sub
  loc_EF6D35: var_A0 = 
End Sub

Public Sub Proc_135_77_F0ACF8
  'Data Table: 55274C
  loc_F0AC1C: Call Proc_135_76_EF6D38()
  loc_F0AC2C: Set var_88 = Me.Txt
  loc_F0AC32: Call 0.Method_Proc_135_77_F0ACF80 (CInt(1))
  loc_F0AC5B: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F0AC5E:   Exit Sub
  loc_F0AC5F: End If
  loc_F0AC6A: Set var_88 = Me.Txt
  loc_F0AC70: Call 0.Method_Proc_135_77_F0ACF80 (CInt(0), var_8C)
  loc_F0AC99: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F0AC9C:   Exit Sub
  loc_F0AC9D: End If
  loc_F0ACD4: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0ACD7:   Call TopCtrl1_UnknownEvent_19()
  loc_F0ACDF: Else
  loc_F0ACE3:   Call 0.Method_arg_1E8 (var_88)
  loc_F0ACEB:   Call var_88.SetFocus
  loc_F0ACF4: End If
  loc_F0ACF4: Exit Sub
  loc_F0ACF7: var_8C = 
End Sub

Public Sub Proc_135_78_10EA790
  'Data Table: 55274C
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_10EA4B8: var_90 = global_128
  loc_10EA4CF: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10EA500: Set var_A8 = Me.Txt
  loc_10EA506: Call 0.Method_Proc_135_78_10EA7900 (CInt(1), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10EA515: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_10EA51D: var_EC = -1 & var_CC 
  loc_10EA531: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10EA53C: Set var_8C = var_134
  loc_10EA578: If (var_8C.RecordCount > 0) Then
  loc_10EA5B7:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10EA5EB:     global_108 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10EA616:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10EA62B:     var_CC = (var_AC.Value + 1)
  loc_10EA633:     global_112 = CInt(var_CC)
  loc_10EA644:   End If
  loc_10EA644: End If
  loc_10EA66F: var_BC = Space((5 - Len(var_90)))
  loc_10EA677: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_10EA68B: var_EC = Space((5 - Len(global_108)))
  loc_10EA693: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10EA6A0: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_108))
  loc_10EA6B9: var_14C = Space((8 - Len(CStr(global_112))))
  loc_10EA6C1: var_15C = (var_130 + var_14C)
  loc_10EA6D0: var_17C = (var_15C + CVar(CStr(global_112)))
  loc_10EA6DB: global_100 = CStr(var_17C)
  loc_10EA711: Me.LblVPrefix.Caption = global_108
  loc_10EA72A: Set var_A8 = Me.Txt
  loc_10EA730: Call 0.Method_Proc_135_78_10EA7900 (CInt(2), var_AC)
  loc_10EA738: var_AC.Text = global_100
  loc_10EA75A: Set var_A8 = Me.Txt
  loc_10EA760: Call 0.Method_Proc_135_78_10EA7900 (CInt(0), var_AC)
  loc_10EA768: var_AC.Text = CStr(global_112)
  loc_10EA77D: var_88 = global_100
  loc_10EA785: Set var_8C = Nothing
  loc_10EA788: Proc_135_78_10EA790 = global_112
End Sub

Public Sub Proc_135_79_10BB4C8(arg_C, arg_10, arg_14) '10BB4C8
  'Data Table: 55274C
  Dim unk_552771 As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10BB236: If (arg_C = "RSBIL") Then
  loc_10BB25D:   unk_552771.Execute "Select Distinct DocId,V_Type,V_No From Sale1 Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10BB268:   Set var_8C = var_C4
  loc_10BB27B:   var_94 = "ALACARTE Sale Bill Entry"
  loc_10BB281: Else
  loc_10BB286:   Proc_135_79_10BB4C8 = &HFF
  loc_10BB28C: End If
  loc_10BB2A0: If (var_8C.RecordCount > 0) Then
  loc_10BB2A3:   ' Referenced from: 10BB41C
  loc_10BB2B2:   If Not(var_8C.EOF) Then
  loc_10BB2BD:     If (var_90 = vbNullString) Then
  loc_10BB300:       var_D4 = "V.Type :-> " & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10BB307:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10BB339:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10BB35E:     Else
  loc_10BB39A:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10BB3BA:       var_10C = CVar(var_120 & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10BB3E7:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10BB3EC:       var_90 = CStr(var_11C)
  loc_10BB414:     End If
  loc_10BB417:     var_8C.MoveNext
  loc_10BB41C:     GoTo loc_10BB2A3
  loc_10BB41F:   End If
  loc_10BB425:   Call 0.Method_arg_50 (var_138)
  loc_10BB481:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10BB484:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10BB4B3:   Set var_8C = Nothing
  loc_10BB4B6:   Proc_135_79_10BB4C8 = 0
  loc_10BB4BC: End If
  loc_10BB4C1: Proc_135_79_10BB4C8 = &HFF
End Sub

Public Sub Proc_135_80_FC127C
  'Data Table: 55274C
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC10FF: If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_FC1104:   var_92 = 4 'Byte
  loc_FC1108: End If
  loc_FC1111: Set var_98 = Me.TxtGrid
  loc_FC1117: Call 0.Method_Proc_135_80_FC127C0 (0, var_B0)
  loc_FC113A: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC116E: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC1192:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC1195:     GoTo loc_FC1267
  loc_FC1198:   End If
  loc_FC119C:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC11C6:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC11D0:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC1205:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC1229:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC1242:     Set var_98 = Me.TxtGrid
  loc_FC1248:     Call 0.Method_Proc_135_80_FC127C0 (0, var_B0, CVar(CLng(var_92)))
  loc_FC1250:     var_B0.SetFocus
  loc_FC1261:     Proc_135_80_FC127C = 0
  loc_FC1267:     ' Referenced from: FC1195
  loc_FC1267:   End If
  loc_FC126A: Next var_D4 'Integer
  loc_FC1274: Proc_135_80_FC127C = &HFF
End Sub

Public Sub Proc_135_81_EAB324(arg_C) 'EAB324
  'Data Table: 55274C
  Dim var_8C As Recordset15
  loc_EAB29E: IStAdFunc
  loc_EAB2A5: Set var_8C = arg_C 
  loc_EAB2CD: Me.Recordset15.Fields.Append "V_NO", 3, &HB
  loc_EAB2DD: var_8C.CursorType = 3
  loc_EAB2EA: var_8C.LockType = 3
  loc_EAB309: var_8C.Open var_A0, var_B0, -1
  loc_EAB310: Set var_8C = Nothing 
  loc_EAB317: Set var_88 = arg_C 
  loc_EAB31B: Proc_135_81_EAB324 = -1
End Sub

Public Sub Proc_135_82_114C700
  'Data Table: 55274C
  Dim var_B4 As Variant
  Dim var_94 As String
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_D0 As String
  Dim var_D8 As String
  loc_114C376: Set global_76 = New 
  loc_114C388: Me.Recordset15.CursorLocation = 3
  loc_114C393: var_90 = global_192
  loc_114C39E: If (var_90 = "Hall") Then
  loc_114C3AC:   If (global_180 = "Y") Then
  loc_114C3D0:     var_94 = "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') And Code In (Select RoomNo From KOT Where RestCode='" & global_56
  loc_114C3E1:     Me.Open CVar(var_94 & "' ANd RoomCat='HALL' and RoomType='HL' And Pending='Y') Order by T.Code"), CVar(MemVar_1F92044), 3
  loc_114C3EF:   Else
  loc_114C412:     Me.Open "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') Order by T.Code", CVar(MemVar_1F92044), 3
  loc_114C417:   End If
  loc_114C423:   Set var_8C = Me.Label1
  loc_114C429:   Call 0.Method_Proc_135_82_114C7000 (2, var_C8, "Hall", 1)
  loc_114C431:   var_C8.Caption = -1
  loc_114C44D:   Set var_8C = Me.DGTable
  loc_114C45E:   Set var_C8 = DGTable.DispID_69
  loc_114C46C:   var_C8.Item(1).Caption = "Hall"
  loc_114C483:   global_132 = "HALL"
  loc_114C48D:   global_136 = "HL"
  loc_114C494: Else
  loc_114C49C:   If Not (var_90 = "Fast Food") Then
  loc_114C4A7:     If (var_90 = "Outlet") Then
  loc_114C4AA:     End If
  loc_114C4B6:     Set var_8C = Me.Label1
  loc_114C4BC:     Call 0.Method_Proc_135_82_114C7000 (2, var_C8, "Table #")
  loc_114C4C4:     var_C8.Caption = 1
  loc_114C4E0:     Set var_8C = Me.DGTable
  loc_114C4F1:     Set var_C8 = DGTable.DispID_69
  loc_114C4FF:     var_C8.Item(1).Caption = "Table #"
  loc_114C513:     var_88 = " Order by Code"
  loc_114C521:     If (global_180 = "Y") Then
  loc_114C54C:       var_D0 = "Select T.Code,T.Code As Name From RoomMast T where T.Type in('TB')  And RestCode='" & global_56 & "' And Code In (Select RoomNo From KOT Where RestCode='"
  loc_114C55D:       var_D8 = var_D0 & global_56 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN='N' AND DELFLAG='N' AND NCKOT<>'Y') "
  loc_114C56E:       Me.Open CVar(var_D8 & var_88), CVar(MemVar_1F92044), 3
  loc_114C584:     Else
  loc_114C5B3:       var_A4 = CVar("Select T.Code,T.Code As Name From RoomMast T where T.Type in('TB')  And RestCode='" & global_56 & "' " & var_88) 'String
  loc_114C5BD:       Me.Open var_A4, CVar(MemVar_1F92044), 3
  loc_114C5CC:     End If
  loc_114C5D2:     global_132 = "REST"
  loc_114C5DC:     global_136 = "TB"
  loc_114C5E3:   Else
  loc_114C5EB:     If (var_90 = "Room Service") Then
  loc_114C5FA:       Set var_8C = Me.Label1
  loc_114C600:       Call 0.Method_Proc_135_82_114C7000 (2, var_C8, "Room #", 1)
  loc_114C608:       var_C8.Caption = -1
  loc_114C624:       Set var_8C = Me.DGTable
  loc_114C643:       DGTable.DispID_69.Item(1).Caption = "Room #"
  loc_114C65F:       If (global_180 = "Y") Then
  loc_114C683:         var_94 = "Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat From ROOMOCC RC where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL And ROOMNO In (Select RoomNo From KOT Where RestCode='" & global_56
  loc_114C694:         Me.Open CVar(var_94 & "' and RoomType='RO' And Pending='Y' AND VOIDYN='N' AND DELFLAG='N') Order by RC.roomno"), CVar(MemVar_1F92044), 3
  loc_114C6A2:       Else
  loc_114C6B9:         var_B4 = "Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat From ROOMOCC RC where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL Order by RC.ROOMNO"
  loc_114C6C5:         Me.Open var_B4, CVar(MemVar_1F92044), 3
  loc_114C6CA:       End If
  loc_114C6D0:       global_136 = "RO"
  loc_114C6D4:     End If
  loc_114C6D4:   End If
  loc_114C6D4: End If
  loc_114C6DD: CVarUnk
  loc_114C6E2: VerifyVarObj
  loc_114C6E8: Set var_8C = Me.DGTable
  loc_114C6EE: LateIdStAd
  loc_114C6FC: Exit Sub
  loc_114C6FD: ThisVCallI2
End Sub

Public Sub Proc_135_83_17C7138(arg_C) '17C7138
  'Data Table: 55274C
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_EC As Variant
  Dim var_D8 As String
  Dim unk_552771 As Connection15
  Dim var_90 As Variant
  Dim var_F0 As Variant
  Dim var_130 As Variant
  Dim var_170 As Integer
  Dim var_134 As String
  Dim var_15C As Variant
  Dim var_160 As Fields15
  Dim var_174 As Variant
  Dim var_88 As Recordset15
  Dim var_158 As Boolean
  Dim var_234 As Variant
  Dim var_D4 As Variant
  Dim var_248 As TextBox
  Dim var_C4 As Variant
  loc_17C5130: Set var_90 = Me.TxtGt
  loc_17C5136: Call 0.Method_Proc_135_83_17C71380 (1, var_94)
  loc_17C513E: var_96 = var_94.TabIndex
  loc_17C5146: var_8A = var_96
  loc_17C515C: Set var_90 = Me.TxtPer
  loc_17C5162: Call 0.Method_Proc_135_83_17C7138C (var_96, var_8C)
  loc_17C516D: For var_9A = var_8A To var_96: 1 = var_9A 'Integer
  loc_17C517F:   Set var_90 = Me.TxtPer
  loc_17C5185:   Call 0.Method_Proc_135_83_17C71380 (var_8C, var_94)
  loc_17C518D:   var_94.Visible = False
  loc_17C519C: Next var_9A 'Integer
  loc_17C51AD: Set var_90 = Me.TxtGt
  loc_17C51B3: Call 0.Method_Proc_135_83_17C7138C (var_96, var_8C)
  loc_17C51BE: For var_9E =  To var_96: 1 = var_9E 'Integer
  loc_17C51D0:   Set var_90 = Me.TxtGt
  loc_17C51D6:   Call 0.Method_Proc_135_83_17C71380 (var_8C, var_94)
  loc_17C51DE:   var_94.Visible = False
  loc_17C51ED: Next var_9E 'Integer
  loc_17C51FE: Set var_90 = Me.LblCap
  loc_17C5204: Call 0.Method_Proc_135_83_17C7138C (var_96, var_8C)
  loc_17C520F: For var_A2 =  To var_96: 1 = var_A2 'Integer
  loc_17C5221:   Set var_90 = Me.LblCap
  loc_17C5227:   Call 0.Method_Proc_135_83_17C71380 (var_8C, var_94)
  loc_17C522F:   var_94.Visible = False
  loc_17C523E: Next var_A2 'Integer
  loc_17C5247: Set var_90 = Me.TopCtrl1
  loc_17C524D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_17C5262: If CBool( <> "Browse") Then
  loc_17C527D:   var_EC = 0
  loc_17C529D:   var_D8 = "Select 'B'+ShortName From Depart Where Code='" & global_56
  loc_17C52AD:   unk_552771.Execute var_D8 & "'", var_C4, -1
  loc_17C52B5:   var_90 = var_90.Fields
  loc_17C52BD:   var_EC = var_94.Item(var_94)
  loc_17C52C5:   var_F0 = var_F0.Value
  loc_17C52E0:   var_170 = 0
  loc_17C5300:   var_134 = "Select 'B'+ShortName From Depart Where Code='" & global_56
  loc_17C5310:   unk_552771.Execute var_134 & "'", var_158, -1
  loc_17C5318:   var_15C = var_15C.Fields
  loc_17C5320:   var_170 = var_160.Item(var_160)
  loc_17C5328:   var_174 = var_174.Value
  loc_17C5348:   Proc_6_7_F25D88(var_1D4, arg_C, var_184 & var_184 & "' aND AppDate<=", var_D4 & var_D4 & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_Type='")
  loc_17C5367:   unk_552771.Execute CStr("Select * From SundryType WHERE V_Type='" & var_1D4 & "  Order by AppDate Desc) Order by SNO"), var_228, -1
  loc_17C5372:   Set var_88 = var_22C
  loc_17C53B1: Else
  loc_17C53B5:   Set var_90 = Me.TopCtrl1
  loc_17C53BB:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_22C)
  loc_17C53D0:   If ( = "Browse") Then
  loc_17C53EB:     var_EC = 0
  loc_17C540B:     var_D8 = "Select 'B'+ShortName From Depart Where Code='" & global_56
  loc_17C541B:     unk_552771.Execute var_D8 & "'", var_C4, -1
  loc_17C5423:     var_90 = var_90.Fields
  loc_17C542B:     var_EC = var_94.Item(var_94)
  loc_17C5433:     var_F0 = var_F0.Value
  loc_17C544E:     var_170 = 0
  loc_17C546E:     var_134 = "Select 'B'+ShortName From Depart Where Code='" & global_56
  loc_17C547E:     unk_552771.Execute var_134 & "'", var_158, -1
  loc_17C5486:     var_15C = var_15C.Fields
  loc_17C548E:     var_170 = var_160.Item(var_160)
  loc_17C5496:     var_174 = var_174.Value
  loc_17C54B6:     Proc_6_7_F25D88(var_1D4, arg_C, var_184 & var_184 & "' aND AppDate=", var_D4 & var_D4 & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_Type='")
  loc_17C54D5:     unk_552771.Execute CStr("Select * From SundryType WHERE V_Type='" & var_1D4 & "  Order by AppDate Desc) Order by SNO"), var_228, -1
  loc_17C54E0:     Set var_88 = var_22C
  loc_17C551C:   End If
  loc_17C551C: End If
  loc_17C5530: If (var_88.RecordCount > 0) Then
  loc_17C556C:   Set var_F0 = Me.Txt
  loc_17C5572:   Call 0.Method_Proc_135_83_17C71380 (CInt(9), var_15C)
  loc_17C557A:   var_15C.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_17C5590:   ' Referenced from: 17C709A
  loc_17C5596:   var_96 = var_88.EOF
  loc_17C559F:   If Not(var_96) Then
  loc_17C55DE:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_17C5612:       Set var_F0 = Me.LblDummy
  loc_17C5618:       Call 0.Method_Proc_135_83_17C71388 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17C5632:       If (var_22C > CVar(var_96)) Then
  loc_17C5667:         Set var_F0 = Me.LblDummy
  loc_17C566D:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17C567E:         Me.LblDummy.Load var_15C
  loc_17C5691:       End If
  loc_17C56DC:       var_15C = var_88.Fields.Item("SNo")
  loc_17C56F1:       Set var_160 = Me.LblDummy
  loc_17C56F7:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_15C.Value), var_174)
  loc_17C56FF:       var_174.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_17C574E:       Set var_F0 = Me.TxtPer
  loc_17C5754:       Call 0.Method_Proc_135_83_17C71388 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17C576E:       If (var_15C > CVar(var_96)) Then
  loc_17C57A3:         Set var_F0 = Me.TxtPer
  loc_17C57A9:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17C57BA:         Me.TxtPer.Load var_15C
  loc_17C57CD:       End If
  loc_17C5805:       Set var_F0 = Me.TxtPer
  loc_17C580B:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5813:       var_15C.TabIndex = (var_8A + 1)
  loc_17C582C:       var_8A = (var_8A + 1)
  loc_17C5870:       var_15C = var_88.Fields.Item("SNo")
  loc_17C58B0:       Set var_160 = Me.TxtPer
  loc_17C58B6:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_15C.Value), var_174, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_17C58BE:       var_174.Visible = var_8A
  loc_17C591D:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17C597C:         var_130 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17C5985:         Set var_22C = Me.TxtPer
  loc_17C598B:         Call 0.Method_Proc_135_83_17C71380 (CInt(True), var_234)
  loc_17C59CD:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17C59D6:         Set var_F0 = Me.TxtPer
  loc_17C59DC:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("RevCode").Value), var_15C)
  loc_17C5A00:         Set var_244 = Me.TxtPer
  loc_17C5A06:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_248)
  loc_17C5A0E:         var_248.Top = ((var_15C.Top + var_234.Height) + CDbl(&HF))
  loc_17C5A37:       End If
  loc_17C5A73:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17C5AD2:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17C5ADB:         Set var_F0 = Me.TxtPer
  loc_17C5AE1:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("RevCode").Value), var_15C)
  loc_17C5AFC:         Set var_22C = Me.TxtPer
  loc_17C5B02:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_234)
  loc_17C5B0A:         var_234.Left = var_15C.Left
  loc_17C5B29:       End If
  loc_17C5B86:       var_174 = var_88.Fields.Item("SNo")
  loc_17C5BD3:       Set var_22C = Me.TxtPer
  loc_17C5BD9:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_174.Value), var_234)
  loc_17C5BE1:       var_234.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17C5C54:       var_15C = var_88.Fields.Item("SNo")
  loc_17C5C69:       Set var_160 = Me.TxtPer
  loc_17C5C6F:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_15C.Value), var_174)
  loc_17C5C77:       var_174.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_17C5CCE:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17C5D05:         Set var_F0 = Me.TxtPer
  loc_17C5D0B:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5D13:         var_15C.FontBold = True
  loc_17C5D29:       Else
  loc_17C5D5D:         Set var_F0 = Me.TxtPer
  loc_17C5D63:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5D6B:         var_15C.FontBold = False
  loc_17C5D7E:       End If
  loc_17C5DB7:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17C5DEE:         Set var_F0 = Me.TxtPer
  loc_17C5DF4:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5DFC:         var_15C.Enabled = False
  loc_17C5E12:       Else
  loc_17C5E46:         Set var_F0 = Me.TxtPer
  loc_17C5E4C:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5E54:         var_15C.Enabled = True
  loc_17C5E67:       End If
  loc_17C5E6B:       Set var_90 = Me.TopCtrl1
  loc_17C5E71:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_15C)
  loc_17C5E86:       If ( = "Browse") Then
  loc_17C5EBD:         Set var_F0 = Me.TxtPer
  loc_17C5EC3:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5ECB:         var_15C.Enabled = False
  loc_17C5EDE:       End If
  loc_17C5F1A:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17C5F51:         Set var_F0 = Me.TxtPer
  loc_17C5F57:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C5F5F:         var_15C.Enabled = False
  loc_17C5F72:       End If
  loc_17C5FA3:       Set var_F0 = Me.LblCap
  loc_17C5FA9:       Call 0.Method_Proc_135_83_17C71388 (var_96)
  loc_17C5FC3:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_17C5FF8:         Set var_F0 = Me.LblCap
  loc_17C5FFE:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17C600F:         Me.LblCap.Load var_15C
  loc_17C6022:       End If
  loc_17C6056:       Set var_F0 = Me.LblCap
  loc_17C605C:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C6064:       var_15C.Visible = True
  loc_17C60D3:       Set var_F0 = Me.TxtPer
  loc_17C60D9:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C60F4:       Set var_22C = Me.LblCap
  loc_17C60FA:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_234)
  loc_17C6102:       var_234.Top = var_15C.Top
  loc_17C615D:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17C61A1:         var_174 = var_88.Fields.Item("SNo")
  loc_17C61BC:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17C61C5:         Set var_F0 = Me.LblCap
  loc_17C61CB:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C61E6:         Set var_22C = Me.LblCap
  loc_17C61EC:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_174.Value), var_234)
  loc_17C61F4:         var_234.Left = var_15C.Left
  loc_17C6213:       End If
  loc_17C6273:       Set var_160 = Me.LblCap
  loc_17C6279:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_174)
  loc_17C6281:       var_174.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_17C62EA:       var_15C = var_88.Fields.Item("SNo")
  loc_17C62FF:       Set var_160 = Me.LblCap
  loc_17C6305:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_15C.Value), var_174)
  loc_17C630D:       var_174.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_17C6364:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17C639B:         Set var_F0 = Me.LblCap
  loc_17C63A1:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C63A9:         var_15C.FontBold = True
  loc_17C63BF:       Else
  loc_17C63F3:         Set var_F0 = Me.LblCap
  loc_17C63F9:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C6401:         var_15C.FontBold = False
  loc_17C6414:       End If
  loc_17C6445:       Set var_F0 = Me.LblAt
  loc_17C644B:       Call 0.Method_Proc_135_83_17C71388 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17C6465:       If (var_15C > CVar(var_96)) Then
  loc_17C649A:         Set var_F0 = Me.LblAt
  loc_17C64A0:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17C64B1:         Me.LblAt.Load var_15C
  loc_17C64C4:       End If
  loc_17C6505:       var_15C = var_88.Fields.Item("SNo")
  loc_17C6545:       Set var_160 = Me.LblAt
  loc_17C654B:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_15C.Value), var_174)
  loc_17C6553:       var_174.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_17C65B7:       var_174 = var_88.Fields.Item("SNo")
  loc_17C65D2:       Set var_F0 = Me.TxtPer
  loc_17C65D8:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C65F3:       Set var_22C = Me.LblAt
  loc_17C65F9:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_174.Value), var_234)
  loc_17C6601:       var_234.Top = var_15C.Top
  loc_17C6659:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17C6690:         Set var_F0 = Me.LblAt
  loc_17C6696:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C669E:         var_15C.FontBold = True
  loc_17C66B4:       Else
  loc_17C66E8:         Set var_F0 = Me.LblAt
  loc_17C66EE:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C66F6:         var_15C.FontBold = False
  loc_17C6709:       End If
  loc_17C6754:       var_15C = var_88.Fields.Item("SNo")
  loc_17C6769:       Set var_160 = Me.LblAt
  loc_17C676F:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_15C.Value), var_174)
  loc_17C6777:       var_174.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_17C67D1:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17C6830:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17C6839:         Set var_F0 = Me.LblAt
  loc_17C683F:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("RoundOff").Value), var_15C)
  loc_17C685A:         Set var_22C = Me.LblAt
  loc_17C6860:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_234)
  loc_17C6868:         var_234.Left = var_15C.Left
  loc_17C6887:       End If
  loc_17C68B8:       Set var_F0 = Me.TxtGt
  loc_17C68BE:       Call 0.Method_Proc_135_83_17C71388 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17C68D8:       If (var_15C > CVar(var_96)) Then
  loc_17C690D:         Set var_F0 = Me.TxtGt
  loc_17C6913:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17C6924:         Me.TxtGt.Load var_15C
  loc_17C6937:       End If
  loc_17C696F:       Set var_F0 = Me.TxtGt
  loc_17C6975:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C697D:       var_15C.TabIndex = (var_8A + 1)
  loc_17C6996:       var_8A = (var_8A + 1)
  loc_17C69CD:       Set var_F0 = Me.TxtGt
  loc_17C69D3:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C, &HFF)
  loc_17C69DB:       var_15C.Visible = var_8A
  loc_17C6A4A:       Set var_F0 = Me.TxtPer
  loc_17C6A50:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C6A6B:       Set var_22C = Me.TxtGt
  loc_17C6A71:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_234)
  loc_17C6A79:       var_234.Top = var_15C.Top
  loc_17C6AD4:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17C6B33:         var_D4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17C6B3C:         Set var_F0 = Me.TxtGt
  loc_17C6B42:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C6B5D:         Set var_22C = Me.TxtGt
  loc_17C6B63:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_234)
  loc_17C6B6B:         var_234.Left = var_15C.Left
  loc_17C6B8A:       End If
  loc_17C6BE7:       var_174 = var_88.Fields.Item("SNo")
  loc_17C6C34:       Set var_22C = Me.TxtGt
  loc_17C6C3A:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_174.Value), var_234)
  loc_17C6C42:       var_234.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17C6CB2:       var_15C = var_88.Fields.Item("SNo")
  loc_17C6CC7:       Set var_160 = Me.TxtGt
  loc_17C6CCD:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_15C.Value), var_174)
  loc_17C6CD5:       var_174.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_17C6D2A:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17C6D61:         Set var_F0 = Me.TxtGt
  loc_17C6D67:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C6D6F:         var_15C.FontBold = True
  loc_17C6D85:       Else
  loc_17C6DB9:         Set var_F0 = Me.TxtGt
  loc_17C6DBF:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C6DC7:         var_15C.FontBold = False
  loc_17C6DDA:       End If
  loc_17C6E13:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17C6E4A:         Set var_F0 = Me.TxtGt
  loc_17C6E50:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C6E58:         var_15C.Enabled = False
  loc_17C6E6E:       Else
  loc_17C6EA2:         Set var_F0 = Me.TxtGt
  loc_17C6EA8:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C6EB0:         var_15C.Enabled = True
  loc_17C6EC3:       End If
  loc_17C6EF8:       Set var_F0 = Me.LblCap
  loc_17C6EFE:       Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C6F2F:       If (var_15C.Tag = MemVar_1F92070 & "ROFF") Then
  loc_17C6F66:         Set var_F0 = Me.TxtGt
  loc_17C6F6C:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C6F74:         var_15C.Enabled = False
  loc_17C6F87:       End If
  loc_17C6F8B:       Set var_90 = Me.TopCtrl1
  loc_17C6F91:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_15C)
  loc_17C6FA6:       If ( = "Browse") Then
  loc_17C6FDD:         Set var_F0 = Me.TxtGt
  loc_17C6FE3:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_17C6FEB:         var_15C.Enabled = False
  loc_17C6FFE:       End If
  loc_17C703A:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17C705C:         var_94 = var_88.Fields.Item("SNo")
  loc_17C7071:         Set var_F0 = Me.TxtGt
  loc_17C7077:         Call 0.Method_Proc_135_83_17C71380 (CInt(var_94.Value), var_15C)
  loc_17C707F:         var_15C.Enabled = False
  loc_17C7092:       End If
  loc_17C7092:     End If
  loc_17C7095:     var_88.MoveNext
  loc_17C709A:     GoTo loc_17C5590
  loc_17C709D:   End If
  loc_17C709D: End If
  loc_17C70AE: Set var_90 = Me.Txt
  loc_17C70B4: Call 0.Method_Proc_135_83_17C71380 (CInt(6), var_94)
  loc_17C70BC: var_94.TabIndex = (var_8A + 1)
  loc_17C70D9: Set var_90 = Me.Txt
  loc_17C70DF: Call 0.Method_Proc_135_83_17C71380 (CInt(7), var_94)
  loc_17C70E7: var_94.TabIndex = (var_8A + 2)
  loc_17C7104: Set var_90 = Me.Txt
  loc_17C710A: Call 0.Method_Proc_135_83_17C71380 (CInt(8), var_94)
  loc_17C7112: var_94.TabIndex = (var_8A + 3)
  loc_17C712E: Me.Command1.TabIndex = (var_8A + 3)
  loc_17C7136: Exit Sub
End Sub

Public Sub Proc_135_84_165D318(arg_C) '165D318
  'Data Table: 55274C
  Dim var_A8 As Variant
  Dim var_C0 As Variant
  Dim var_9C As Variant
  Dim var_D0 As Variant
  Dim var_108 As Variant
  Dim var_AC As String
  Dim Me As Variant
  Dim var_E0 As Variant
  Dim var_128 As Variant
  Dim unk_552771 As Connection15
  Dim var_98 As Recordset15
  Dim var_164 As Variant
  Dim var_270 As Double
  Dim var_150 As Variant
  Dim var_174 As Variant
  Dim var_278 As Double
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_13C As Variant
  Dim var_1C8 As String
  Dim var_280 As Double
  Dim var_218 As Variant
  Dim var_238 As Variant
  Dim var_138 As Variant
  Dim var_258 As Variant
  Dim var_1D8 As Variant
  Dim var_284 As TextBox
  Dim var_90 As Double
  Dim var_29C As Double
  Dim var_1F8 As Variant
  loc_165BC44: Set var_9C = Me.TxtGt
  loc_165BC4A: Call 0.Method_Proc_135_84_165D3188 (var_9E, var_86)
  loc_165BC55: For var_A2 =  To var_9E: 1 = var_A2 'Integer
  loc_165BC68:   Set var_9C = Me.TxtGt
  loc_165BC6E:   Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8)
  loc_165BC76:   var_A8.Text = vbNullString
  loc_165BC8F:   Set var_9C = Me.LblCap
  loc_165BC95:   Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8)
  loc_165BCBF:   If (var_A8.Tag = MemVar_1F92070 & "DIS") Then
  loc_165BCC7:     var_92 = CByte(var_86) 'Byte
  loc_165BCCB:   End If
  loc_165BCD8:   Set var_9C = Me.LblCap
  loc_165BCDE:   Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8)
  loc_165BD08:   If (var_A8.Tag = MemVar_1F92070 & "ST") Then
  loc_165BD10:     var_94 = CByte(var_86) 'Byte
  loc_165BD1A:     global_92 = var_86
  loc_165BD1D:   End If
  loc_165BD20: Next var_A2 'Integer
  loc_165BD29: Set var_9C = Me.TopCtrl1
  loc_165BD2F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_165BD44: If ( = "Add") Then
  loc_165BD5A:   Me.FGCat.Rows = 1
  loc_165BD62:   Call Proc_135_90_DFE9C8()
  loc_165BD67: End If
  loc_165BD73: Set var_9C = Me.TxtGt
  loc_165BD79: Call 0.Method_Proc_135_84_165D3188 (var_9E, var_86)
  loc_165BD84: For var_F4 =  To var_9E: 2 = var_F4 'Integer
  loc_165BD97:   Set var_9C = Me.LblCap
  loc_165BD9D:   Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8)
  loc_165BDC7:   If (var_A8.Tag = MemVar_1F92070 & "DIS") Then
  loc_165BDD7:     Set var_9C = Me.TxtGt
  loc_165BDDD:     Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8)
  loc_165BDE5:     var_A8.Text = vbNullString
  loc_165BDFB:     If (var_94 > var_92) Then
  loc_165BE23:       For var_F8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_F8 'Integer
  loc_165BE36:         Set var_9C = Me.LblCap
  loc_165BE3C:         Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8)
  loc_165BE66:         If (var_A8.Tag = MemVar_1F92070 & "DIS") Then
  loc_165BE6D:           var_C0 = CVar(CLng(var_88)) 'Long
  loc_165BE75:           var_108 = CVar(CLng(&H13)) 'Long
  loc_165BEA0:           If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_165BEAE:             If (global_136 = "RO") Then
  loc_165BEF0:               var_E0 = "Select * from guestfolio where foliono=" & Me.Fields.Item("Code").Value 
  loc_165BEF4:               var_108 = vbNullString
  loc_165BF07:               unk_552771.Execute CStr(var_E0 & var_108), var_138, -1
  loc_165BF12:               Set var_98 = var_13C
  loc_165BF40:               If (var_98.RecordCount > 0) Then
  loc_165BF69:                 Proc_6_39_E7C810(var_E0, CVar(var_98.Fields.Item("RSDisc")), var_13C)
  loc_165BF83:                 If (var_E0 > 0) Then
  loc_165BFBD:                   Proc_6_39_E7C810(var_E0, CVar(var_98.Fields.Item("RSDisc")), CVar(CLng(&HE)), CVar(CLng(var_88)))
  loc_165BFD4:                   LateIdCallSt
  loc_165C003:                   var_A8 = var_98.Fields.Item("RSDisc")
  loc_165C012:                   Proc_6_39_E7C810(var_E0, CVar(var_A8), Me.FGrid, CVar(CStr(var_E0)))
  loc_165C01A:                   var_AC = CStr(var_E0)
  loc_165C028:                   Set var_13C = Me.TxtPer
  loc_165C02E:                   Call 0.Method_Proc_135_84_165D3180 (var_86, var_164, var_AC)
  loc_165C036:                   var_164.Text = var_108
  loc_165C04E:                 End If
  loc_165C04E:               End If
  loc_165C051:             Else
  loc_165C055:               var_C0 = CVar(CLng(var_88)) 'Long
  loc_165C06F:               Set var_9C = Me.TxtPer
  loc_165C075:               Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8, var_AC, CVar(CLng(&HE)))
  loc_165C07D:               var_C0 = var_A8.Text
  loc_165C08C:               var_D0 = CVar(CStr(Val(var_AC))) 'String
  loc_165C094:               Set var_13C = Me.FGrid
  loc_165C09A:               LateIdCallSt
  loc_165C0B1:             End If
  loc_165C0B1:           End If
  loc_165C0B1:         End If
  loc_165C0B5:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_165C0BD:         var_108 = CVar(CLng(7)) 'Long
  loc_165C0E6:         var_150 = CVar(CLng(var_88)) 'Long
  loc_165C0EE:         var_174 = CVar(CLng(9)) 'Long
  loc_165C117:         var_194 = CVar(CLng(var_88)) 'Long
  loc_165C11F:         var_1B4 = CVar(CLng(&HE)) 'Long
  loc_165C148:         var_218 = CVar(CLng(var_88)) 'Long
  loc_165C150:         var_238 = CVar(CLng(&HF)) 'Long
  loc_165C179:         var_138 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_165C189:         var_258 = CVar(CStr(Format(var_138, "0.00"))) 'String
  loc_165C191:         Set var_164 = Me.FGrid
  loc_165C197:         LateIdCallSt
  loc_165C1C8:         var_150 = CVar(CLng(var_88)) 'Long
  loc_165C1D0:         var_174 = CVar(CLng(7)) 'Long
  loc_165C1F9:         var_194 = CVar(CLng(var_88)) 'Long
  loc_165C201:         var_1B4 = CVar(CLng(&HA)) 'Long
  loc_165C20A:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_165C212:         var_108 = CVar(CLng(9)) 'Long
  loc_165C242:         Set var_13C = Me.FGrid
  loc_165C248:         LateIdCallSt
  loc_165C275:         var_108 = CVar(CLng(&HA)) 'Long
  loc_165C2A6:         Set var_A8 = Me.LblDummy
  loc_165C2AC:         Call 0.Method_Proc_135_84_165D3180 (var_86, var_13C, CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_108, CVar(CLng(var_88)), var_13C, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_165C2B4:         var_13C.Caption = var_108
  loc_165C2D0:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_165C2D8:         var_108 = CVar(CLng(&HA)) 'Long
  loc_165C2F2:         var_AC = CStr(Me.FGrid.TextMatrix))
  loc_165C301:         var_150 = CVar(CLng(var_88)) 'Long
  loc_165C309:         var_174 = CVar(CLng(&H11)) 'Long
  loc_165C312:         Set var_A8 = Me.FGrid
  loc_165C32B:         var_278 = Val(CStr(var_A8.TextMatrix)))
  loc_165C33A:         var_1D8 = CVar(CLng(&H12)) 'Long
  loc_165C35B:         var_128 = CVar((Val(var_AC) + var_278)) 'Double
  loc_165C379:         LateIdCallSt
  loc_165C3AD:         Set var_9C = Me.LblCap
  loc_165C3B3:         Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))), "0.00"))), 1, 1)
  loc_165C3BB:         var_1D8 = var_A8.Tag
  loc_165C3DD:         If (var_AC = MemVar_1F92070 & "DIS") Then
  loc_165C3ED:           Set var_9C = Me.TxtGt
  loc_165C3F3:           Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8, var_AC, CVar(CLng(var_88)), var_278)
  loc_165C3FB:           var_174 = var_A8.Text
  loc_165C40F:           var_C0 = CVar(CLng(var_88)) 'Long
  loc_165C439:           var_278 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_165C458:           var_E0 = CVar((Val(var_AC) + var_278)) 'Double
  loc_165C475:           Set var_164 = Me.TxtGt
  loc_165C47B:           Call 0.Method_Proc_135_84_165D3180 (var_86, var_284, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_278)
  loc_165C483:           var_284.Text = CVar(CLng(&HF))
  loc_165C4A9:         End If
  loc_165C4AC:       Next var_F8 'Integer
  loc_165C4B4:     Else
  loc_165C4D9:       For var_288 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_88 = var_288 'Integer
  loc_165C4EC:         Set var_9C = Me.LblCap
  loc_165C4F2:         Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8)
  loc_165C51C:         If (var_A8.Tag = MemVar_1F92070 & "DIS") Then
  loc_165C523:           var_C0 = CVar(CLng(var_88)) 'Long
  loc_165C52B:           var_108 = CVar(CLng(&H13)) 'Long
  loc_165C545:           var_AC = CStr(Me.FGrid.TextMatrix))
  loc_165C556:           If (var_AC = "Y") Then
  loc_165C55D:             var_C0 = CVar(CLng(var_88)) 'Long
  loc_165C577:             Set var_9C = Me.TxtPer
  loc_165C57D:             Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8, var_AC, CVar(CLng(&HE)))
  loc_165C585:             var_C0 = var_A8.Text
  loc_165C594:             var_D0 = CVar(CStr(Val(var_AC))) 'String
  loc_165C59C:             Set var_13C = Me.FGrid
  loc_165C5A2:             LateIdCallSt
  loc_165C5B9:           End If
  loc_165C5B9:         End If
  loc_165C5F6:         Set var_A8 = Me.LblDummy
  loc_165C5FC:         Call 0.Method_Proc_135_84_165D3180 (var_86, var_13C, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(&HA)), CVar(CLng(var_88)))
  loc_165C604:         var_13C.Caption = var_13C
  loc_165C620:         var_C0 = CVar(CLng(var_88)) 'Long
  loc_165C628:         var_108 = CVar(CLng(&HA)) 'Long
  loc_165C642:         var_AC = CStr(Me.FGrid.TextMatrix))
  loc_165C651:         var_150 = CVar(CLng(var_88)) 'Long
  loc_165C659:         var_174 = CVar(CLng(&HE)) 'Long
  loc_165C662:         Set var_A8 = Me.FGrid
  loc_165C67B:         var_278 = Val(CStr(var_A8.TextMatrix)))
  loc_165C68A:         var_1D8 = CVar(CLng(&HF)) 'Long
  loc_165C6CD:         LateIdCallSt
  loc_165C701:         Set var_9C = Me.LblCap
  loc_165C707:         Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(CVar(((Val(var_AC) * var_278) / CDbl(&H64))), "0.00"))), 1, 1)
  loc_165C70F:         var_1D8 = var_A8.Tag
  loc_165C731:         If (var_AC = MemVar_1F92070 & "DIS") Then
  loc_165C741:           Set var_9C = Me.TxtGt
  loc_165C747:           Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8, var_AC, CVar(CLng(var_88)), var_278)
  loc_165C74F:           var_174 = var_A8.Text
  loc_165C75C:           var_270 = Val(var_AC)
  loc_165C763:           var_C0 = CVar(CLng(var_88)) 'Long
  loc_165C78D:           var_278 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_165C7AC:           var_E0 = CVar((var_270 + var_278)) 'Double
  loc_165C7C9:           Set var_164 = Me.TxtGt
  loc_165C7CF:           Call 0.Method_Proc_135_84_165D3180 (var_86, var_284, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_278)
  loc_165C7D7:           var_284.Text = CVar(CLng(&HF))
  loc_165C7FD:         End If
  loc_165C800:       Next var_288 'Integer
  loc_165C805:     End If
  loc_165C808:   Else
  loc_165C815:     Set var_9C = Me.TxtPer
  loc_165C81B:     Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8)
  loc_165C823:     var_9E = var_A8.Visible
  loc_165C835:     If (var_9E = &HFF) Then
  loc_165C83E:       Call Proc_135_85_1152D90(var_86)
  loc_165C846:       var_90 = var_270
  loc_165C856:       Set var_9C = Me.TxtPer
  loc_165C85C:       Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8, var_AC)
  loc_165C864:       var_90 = var_A8.Text
  loc_165C871:       var_270 = Val(var_AC)
  loc_165C8B1:       Set var_13C = Me.TxtGt
  loc_165C8B7:       Call 0.Method_Proc_135_84_165D3180 (var_86, var_164, CStr(Format(CVar(((var_90 * var_270) / CDbl(&H64))), "0.00")), 1)
  loc_165C8BF:       var_164.Text = 1
  loc_165C8F1:       Set var_9C = Me.LblDummy
  loc_165C8F7:       Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8, CStr(var_90))
  loc_165C8FF:       var_A8.Caption = var_270
  loc_165C90E:     End If
  loc_165C90E:   End If
  loc_165C911: Next var_F4 'Integer
  loc_165C93B: For var_28C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_28C 'Integer
  loc_165C945:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_165C94D:   var_108 = CVar(CLng(7)) 'Long
  loc_165C967:   var_AC = CStr(Me.FGrid.TextMatrix))
  loc_165C976:   var_150 = CVar(CLng(var_86)) 'Long
  loc_165C97E:   var_174 = CVar(CLng(8)) 'Long
  loc_165C987:   Set var_A8 = Me.FGrid
  loc_165C9A7:   var_1B4 = CVar(CLng(var_86)) 'Long
  loc_165C9AF:   var_1D8 = CVar(CLng(&HA)) 'Long
  loc_165C9EE:   LateIdCallSt
  loc_165CA21:   Set var_9C = Me.TxtGt
  loc_165CA27:   Call 0.Method_Proc_135_84_165D3180 (1, var_A8, var_AC, Me.FGrid, CVar(CStr(Format(CVar((Val(var_AC) * Val(CStr(var_A8.TextMatrix))))), "0.00"))), 1, 1)
  loc_165CA2F:   var_1D8 = var_A8.Text
  loc_165CA3C:   var_270 = Val(var_AC)
  loc_165CA6D:   var_278 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_165CA8C:   var_E0 = CVar((var_270 + var_278)) 'Double
  loc_165CAA8:   Set var_164 = Me.TxtGt
  loc_165CAAE:   Call 0.Method_Proc_135_84_165D3180 (1, var_284, CStr(Format(var_A8.TextMatrix), "0.00")), 1, 1, var_278, CVar(CLng(&HA)))
  loc_165CAB6:   var_284.Text = CVar(CLng(var_86))
  loc_165CADF: Next var_28C 'Integer
  loc_165CAE8: Set var_9C = Me.TopCtrl1
  loc_165CAEE: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_165CB03: If CBool( <> "Edit") Then
  loc_165CB19:   Me.FGCat.Rows = 1
  loc_165CB46:   For var_290 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_290 'Integer
  loc_165CB56:     If (var_94 > var_92) Then
  loc_165CB5D:       var_C0 = CVar(CLng(var_86)) 'Long
  loc_165CB65:       var_108 = CVar(CLng(&H18)) 'Long
  loc_165CB84:       var_150 = CVar(CLng(var_86)) 'Long
  loc_165CB8C:       var_174 = CVar(CLng(9)) 'Long
  loc_165CBB5:       var_194 = CVar(CLng(var_86)) 'Long
  loc_165CBBD:       var_1B4 = CVar(CLng(7)) 'Long
  loc_165CBF7:       Set var_164 = Me.FGrid
  loc_165CC10:       var_29C = Val(CStr(var_164.TextMatrix)))
  loc_165CC33:       var_1F8 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_29C)) 'Double
  loc_165CC52:       Call Proc_135_88_1842610(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"), "0.00")), 1, 1, var_29C, CVar(CLng(&HF)), CVar(CLng(var_86)))
  loc_165CC81:     Else
  loc_165CC85:       var_C0 = CVar(CLng(var_86)) 'Long
  loc_165CC8D:       var_108 = CVar(CLng(&H18)) 'Long
  loc_165CCAC:       var_150 = CVar(CLng(var_86)) 'Long
  loc_165CCB4:       var_174 = CVar(CLng(9)) 'Long
  loc_165CD07:       var_280 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_165CD45:       Call Proc_135_88_1842610(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_280)), "0.00")), 1, 1, var_280, CVar(CLng(7)), CVar(CLng(var_86)))
  loc_165CD6B:     End If
  loc_165CD6E:   Next var_290 'Integer
  loc_165CD73: End If
  loc_165CD77: Set var_9C = Me.TopCtrl1
  loc_165CD7D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_165CD92: Set var_A8 = Me.TopCtrl1
  loc_165CD98: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(( = "Add"))
  loc_165CDBD: If CBool( Or ( = "Edit")) Then
  loc_165CDCC:   Set var_9C = Me.TxtGt
  loc_165CDD2:   Call 0.Method_Proc_135_84_165D3188 (var_9E, var_86)
  loc_165CDDD:   For var_2A0 =  To var_9E: 2 = var_2A0 'Integer
  loc_165CDF0:     Set var_9C = Me.TxtPer
  loc_165CDF6:     Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8)
  loc_165CDFE:     var_9E = var_A8.Visible
  loc_165CE16:     Set var_13C = Me.LblCap
  loc_165CE1C:     Call 0.Method_Proc_135_84_165D3180 (var_86, var_164)
  loc_165CE24:     var_AC = var_164.Tag
  loc_165CE4B:     If ((var_9E = &HFF) And (var_AC = MemVar_1F92070 & "SCH")) Then
  loc_165CE54:       Call Proc_135_85_1152D90(var_86)
  loc_165CE5C:       var_90 = var_270
  loc_165CE6C:       Set var_9C = Me.TxtPer
  loc_165CE72:       Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8, var_AC)
  loc_165CE7A:       var_90 = var_A8.Text
  loc_165CE87:       var_270 = Val(var_AC)
  loc_165CEC7:       Set var_13C = Me.TxtGt
  loc_165CECD:       Call 0.Method_Proc_135_84_165D3180 (var_86, var_164, CStr(Format(CVar(((var_90 * var_270) / CDbl(&H64))), "0.00")), 1)
  loc_165CED5:       var_164.Text = 1
  loc_165CF07:       Set var_9C = Me.LblDummy
  loc_165CF0D:       Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8, CStr(var_90))
  loc_165CF15:       var_A8.Caption = var_270
  loc_165CF24:     End If
  loc_165CF27:   Next var_2A0 'Integer
  loc_165CF2C: End If
  loc_165CF4B: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_165CF61:   Me.FGCat.FixedRows = 1
  loc_165CF69: End If
  loc_165CF97: For var_2A4 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_2A4 'Integer
  loc_165CFA9:   Set var_9C = Me.TxtGt
  loc_165CFAF:   Call 0.Method_Proc_135_84_165D3188 (var_9E, var_86, 1)
  loc_165CFBA:   For var_2A8 = CDbl(0) To var_9E: 0 = var_2A8 'Integer
  loc_165CFCD:     Set var_9C = Me.LblCap
  loc_165CFD3:     Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8)
  loc_165CFDB:     var_AC = var_A8.Tag
  loc_165CFE7:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_165D021:     If (CVar(CLng(7)) = CStr(Me.FGCat.TextMatrix))) Then
  loc_165D031:       Set var_9C = Me.TxtGt
  loc_165D037:       Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8, var_AC)
  loc_165D03F:       var_C0 = var_A8.Text
  loc_165D04C:       var_270 = Val(var_AC)
  loc_165D053:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_165D07D:       var_278 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_165D09C:       var_E0 = CVar((var_270 + var_278)) 'Double
  loc_165D0AB:       var_1C8 = CStr(Format("0.00", "0.00"))
  loc_165D0B9:       Set var_164 = Me.TxtGt
  loc_165D0BF:       Call 0.Method_Proc_135_84_165D3180 (var_86, var_284, var_1C8, 1, 1, var_278)
  loc_165D0C7:       var_284.Text = CVar(CLng(6))
  loc_165D0ED:     End If
  loc_165D0F0:   Next var_2A8 'Integer
  loc_165D0F8: Next var_2A4 'Integer
  loc_165D109: Set var_9C = Me.TxtGt
  loc_165D10F: Call 0.Method_Proc_135_84_165D3188 (var_9E, var_86)
  loc_165D11A: For var_2AC =  To var_9E: 2 = var_2AC 'Integer
  loc_165D12D:   Set var_9C = Me.LblCap
  loc_165D133:   Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8)
  loc_165D15D:   If (var_A8.Tag = MemVar_1F92070 & "ROFF") Then
  loc_165D166:     Call Proc_135_85_1152D90(var_86)
  loc_165D16E:     var_90 = var_270
  loc_165D183:     Set var_9C = Me.LblDummy
  loc_165D189:     Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8, CStr(var_90))
  loc_165D191:     var_A8.Caption = var_90
  loc_165D1A9:     var_AC = "U"
  loc_165D1BA:     Proc_6_142_14A55B0(var_90, CByte(0), var_AC)
  loc_165D1F7:     Set var_9C = Me.TxtGt
  loc_165D1FD:     Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8, CStr(Format(CVar(2), "0.00")), 1)
  loc_165D205:     var_A8.Text = 1
  loc_165D224:   Else
  loc_165D22B:     If (var_86 <> arg_C) Then
  loc_165D23B:       Set var_9C = Me.LblCap
  loc_165D241:       Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8, var_AC)
  loc_165D249:       var_270 = var_A8.Tag
  loc_165D26A:       Set var_13C = Me.LblCap
  loc_165D270:       Call 0.Method_Proc_135_84_165D3180 (var_86, var_164, var_1C8)
  loc_165D278:       (var_AC = MemVar_1F92070 & "TOT") = var_164.Tag
  loc_165D2A3:       If (var_270 Or (var_1C8 = MemVar_1F92070 & "NET")) Then
  loc_165D2AC:         Call Proc_135_85_1152D90(var_86)
  loc_165D2E6:         Set var_9C = Me.TxtGt
  loc_165D2EC:         Call 0.Method_Proc_135_84_165D3180 (var_86, var_A8, CStr(Format(CVar(var_270), "0.00")))
  loc_165D2F4:         var_A8.Text = 1
  loc_165D30C:       End If
  loc_165D30C:     End If
  loc_165D30C:   End If
  loc_165D30F: Next var_2AC 'Integer
  loc_165D314: Exit Sub
End Sub

Public Sub Proc_135_85_1152D90(arg_C) '1152D90
  'Data Table: 55274C
  Dim var_AC As Variant
  Dim var_D4 As String
  Dim var_A8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B0 As String
  Dim var_120 As Double
  Dim var_A0 As Double
  Dim var_8C As Double
  Dim var_138 As TextBox
  Dim var_D0 As Variant
  Dim var_148 As Variant
  loc_1152A05: Set var_A8 = Me.TxtGt
  loc_1152A0B: Call 0.Method_Proc_135_85_1152D900 (arg_C, var_AC)
  loc_1152A2A: var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_1152A48: Set var_A8 = Me.LblCap
  loc_1152A4E: Call 0.Method_Proc_135_85_1152D900 (arg_C, var_AC)
  loc_1152A78: If (var_AC.Tag = MemVar_1F92070 & "SCH") Then
  loc_1152AA0:   For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_D8 'Integer
  loc_1152AAA:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_1152AB2:     var_108 = CVar(CLng(&H1B)) 'Long
  loc_1152ADD:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_1152AE4:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_1152AEC:       var_108 = CVar(CLng(&HA)) 'Long
  loc_1152B18:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1152B24:     End If
  loc_1152B27:   Next var_D8 'Integer
  loc_1152B2C: End If
  loc_1152B36: If (Len(var_90) > 0) Then
  loc_1152B68:   Set var_A8 = Me.LblCap
  loc_1152B6E:   Call 0.Method_Proc_135_85_1152D900 (arg_C, var_AC)
  loc_1152B85:   var_D4 = MemVar_1F92070 & "SCH"
  loc_1152BA9:   If CBool((Left(var_90, 1) = "1") And (var_AC.Tag = var_D4)) Then
  loc_1152BAF:     var_8C = var_A0
  loc_1152BB5:   Else
  loc_1152BCD:     var_B0 = CStr(Left(var_90, 1))
  loc_1152BE7:     Set var_A8 = Me.TxtGt
  loc_1152BED:     Call 0.Method_Proc_135_85_1152D900 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_1152BF5:     var_120 = var_AC.Text
  loc_1152C02:     var_8C = Val(var_D4)
  loc_1152C16:   End If
  loc_1152C37:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1152C41:   ' Referenced from: 1152D86
  loc_1152C4B:   If (Len(var_90) > 0) Then
  loc_1152C8E:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1152CD8:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1152CEF:     Set var_A8 = Me.TxtGt
  loc_1152CF5:     Call 0.Method_Proc_135_85_1152D900 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_1152D0A:     var_120 = Val(var_B0)
  loc_1152D21:     Set var_134 = Me.TxtGt
  loc_1152D27:     Call 0.Method_Proc_135_85_1152D900 (var_AC.Text, var_138, var_D4, CVar(var_8C))
  loc_1152D3D:     var_D0 = CVar(-Val(var_D4)) 'Double
  loc_1152D50:     var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_1152D5F:     var_148 = (var_8C + IIf(var_90, CVar(var_138.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_1152D64:     var_8C = CSng(var_148)
  loc_1152D86:     GoTo loc_1152C41
  loc_1152D89:   End If
  loc_1152D89: End If
  loc_1152D89: Proc_135_85_1152D90 = var_8C
End Sub

Public Sub Proc_135_86_10AB660(arg_C, arg_10, arg_14) '10AB660
  'Data Table: 55274C
  Dim var_AC As Variant
  Dim var_8A As Integer
  Dim arg_14 As Integer
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  loc_10AB3B5: var_88 = vbNullString
  loc_10AB3CC: arg_C = CStr(Trim(arg_C))
  loc_10AB3D8: var_8A = CInt(Len(arg_C))
  loc_10AB3DE: var_C0 = arg_10
  loc_10AB3E9: If (var_C0 = "A") Then
  loc_10AB408:   var_AC = CVar(Int((CDbl((CInt(Int((CDbl(arg_14) / CDbl(2)))) - var_8A)) / CDbl(2)))) 'Double
  loc_10AB40C:   var_9C = arg_C 'Variant
  loc_10AB462:   var_F0 = (Chr(&H12) + Chr(&HE))
  loc_10AB476:   var_110 = (0 + Chr(&H1B))
  loc_10AB47F:   var_120 = (var_110 + "G")
  loc_10AB493:   var_140 = (var_120 + Space(CLng(IIf((var_9C > 0), var_9C, 0))))
  loc_10AB49D:   var_150 = (var_140 + CVar(arg_C))
  loc_10AB4B1:   var_170 = (var_150 + Chr(&H1B))
  loc_10AB4BA:   var_190 = (var_170 + "H")
  loc_10AB4BF:   var_88 = CStr(var_190)
  loc_10AB4E0: Else
  loc_10AB4E8:   If (var_C0 = "D") Then
  loc_10AB4F6:     arg_14 = CInt(Int((CDbl(arg_14) / CDbl(2))))
  loc_10AB507:     var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10AB50B:     var_9C = "G" 'Variant
  loc_10AB561:     var_F0 = (Chr(&HE) + Chr(&HF))
  loc_10AB575:     var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10AB57F:     var_120 = (var_110 + CVar(arg_C))
  loc_10AB584:     var_88 = CStr(var_120)
  loc_10AB599:   Else
  loc_10AB5A1:     If (var_C0 = "E") Then
  loc_10AB5B2:       var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10AB5B6:       var_9C = CVar(arg_C) 'Variant
  loc_10AB60C:       var_F0 = (Chr(&H12) + Chr(&HF))
  loc_10AB620:       var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10AB62A:       var_120 = (var_110 + CVar(arg_C))
  loc_10AB63E:       var_140 = (var_120 + Chr(&H12))
  loc_10AB643:       var_88 = CStr(var_140)
  loc_10AB659:     End If
  loc_10AB659:   End If
  loc_10AB659: End If
  loc_10AB659: Proc_135_86_10AB660 = arg_14
End Sub

Public Sub Proc_135_87_1270124(arg_C, arg_10, arg_14) '1270124
  'Data Table: 55274C
  Dim var_E8 As String
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_26C As Variant
  Dim unk_552771 As Connection15
  Dim var_E4 As Variant
  Dim var_19C As Variant
  Dim var_24C As Variant
  Dim var_18C As Variant
  Dim var_A0 As Recordset15
  Dim var_270 As Fields15
  Dim var_D4 As Variant
  Dim var_290 As Double
  Dim arg_10 As Integer
  loc_126FBE5: var_90 = vbNullString
  loc_126FBEB: var_94 = vbNullString
  loc_126FBF1: var_98 = vbNullString
  loc_126FBF7: var_9C = vbNullString
  loc_126FC02: If (MemVar_1F923C0 = "Y") Then
  loc_126FC0C:   var_E8 = vbNullString & "DATE "
  loc_126FC3D:   var_8C = 1 & CStr(Format(MemVar_1F920EC, "dd/MM/yy"))
  loc_126FC50: End If
  loc_126FC58: If (MemVar_1F923C4 = "Y") Then
  loc_126FC6A:   var_D4 = "dd/MM/yy"
  loc_126FCBC:   var_16C = (CVar(arg_14) - IIf((MemVar_1F923C0 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F920EC, var_D4)))), 0))
  loc_126FCE3:   var_1BC = (" PAGE NO " + Trim(Str(arg_C)))
  loc_126FCEB:   var_1DC = (var_16C - Len(var_1BC))
  loc_126FCFC:   var_20C = (CVar(var_8C) + Space(CLng(var_1DC)))
  loc_126FD05:   var_22C = (var_20C + " PAGE NO ")
  loc_126FD27:   var_26C = (var_22C + Trim(Str(arg_C)))
  loc_126FD2C:   var_8C = CStr(var_26C)
  loc_126FD59: End If
  loc_126FD86: unk_552771.Execute "Select R.HEADER1,R.HEADER2 From DEPART R  Where R.CODE='" & global_56 & "'", var_D4, -1
  loc_126FD91: Set var_A0 = var_270
  loc_126FDA8: If (MemVar_1F923C8 = "K") Then
  loc_126FDB5:   If (Len(MemVar_1F92130) <= &H28) Then
  loc_126FDCE:     var_E4 = (CVar(var_90) + Chr(&HF))
  loc_126FDE2:     var_13C = (Format(MemVar_1F920EC, Chr(&HF)) + Chr(&HE))
  loc_126FDF6:     var_16C = (0 + Chr(&H1B))
  loc_126FE0A:     var_19C = (var_16C + Chr(&H45))
  loc_126FE14:     var_1BC = (Trim(Str(arg_C)) + CVar(MemVar_1F92130))
  loc_126FE28:     var_1DC = (var_1BC + Chr(&H1B))
  loc_126FE3C:     var_20C = (var_1DC + Chr(&H46))
  loc_126FE50:     var_24C = (var_20C + Chr(&HE))
  loc_126FE55:     var_90 = CStr(Str(arg_C))
  loc_126FE7C:   Else
  loc_126FE92:     var_E4 = (CVar(var_90) + Chr(&H12))
  loc_126FEA6:     var_13C = (Format(MemVar_1F920EC, Chr(&H12)) + Chr(&HE))
  loc_126FEBA:     var_16C = (0 + Chr(&HF))
  loc_126FEC4:     var_18C = (var_16C + CVar(MemVar_1F92130))
  loc_126FED8:     var_1BC = (Chr(&H45) + Chr(&H12))
  loc_126FEDD:     var_90 = CStr(var_1BC)
  loc_126FEF5:   End If
  loc_126FF09:   If (var_A0.RecordCount > 0) Then
  loc_126FF1B:     var_270 = var_A0.Fields
  loc_126FF45:     If (Proc_6_38_E68A98(CVar(var_270.Item("Header1")), var_270, 1) <> vbNullString) Then
  loc_126FF7C:       var_290 = Val(CStr(arg_14))
  loc_126FF9D:       Call Proc_135_86_10AB660(CStr(var_A0.Fields.Item("Header1").Value), "D", CInt(var_290))
  loc_126FFA6:       var_94 = var_288 & var_288
  loc_126FFBE:     End If
  loc_126FFF7:     If (Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Header2")), var_94, var_290) <> vbNullString) Then
  loc_127004F:       Call Proc_135_86_10AB660(CStr(var_A0.Fields.Item("Header2").Value), "D", CInt(Val(CStr(arg_14))))
  loc_1270058:       var_98 = var_288 & var_288
  loc_1270070:     End If
  loc_1270070:   End If
  loc_1270070: End If
  loc_127007A: If (Len(var_8C) > 0) Then
  loc_1270082:   Print 1, var_8C
  loc_127008E:   arg_10 = (arg_10 + 1)
  loc_1270091: End If
  loc_127009B: If (Len(var_90) > 0) Then
  loc_12700A3:   Print 1, var_90
  loc_12700AF:   arg_10 = (arg_10 + 1)
  loc_12700B2: End If
  loc_12700BC: If (Len(var_94) > 0) Then
  loc_12700C4:   Print 1, var_94
  loc_12700D0:   arg_10 = (arg_10 + 1)
  loc_12700D3: End If
  loc_12700DD: If (Len(var_98) > 0) Then
  loc_12700E5:   Print 1, var_98
  loc_12700F1:   arg_10 = (arg_10 + 1)
  loc_12700F4: End If
  loc_12700FE: If (Len(var_9C) > 0) Then
  loc_1270106:   Print 1, var_9C
  loc_1270112:   arg_10 = (arg_10 + 1)
  loc_1270115: End If
  loc_127011B: Proc_135_87_1270124 = arg_10
End Sub

Public Sub Proc_135_88_1842610(arg_C, arg_10, arg_14) '1842610
  'Data Table: 55274C
  Dim var_E4 As String
  Dim unk_552771 As Connection15
  Dim var_D8 As Recordset15
  Dim var_124 As Variant
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_114 As Field20
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_108 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_134 As Variant
  Dim var_C0 As Recordset15
  Dim var_1B8 As Variant
  Dim var_1FC As Variant
  Dim var_D0 As Double
  Dim var_210 As Double
  Dim var_E0 As Recordset15
  Dim var_220 As Variant
  Dim var_240 As Variant
  Dim var_1C0 As MSHFlexGrid
  Dim var_204 As Double
  Dim var_9C As Double
  Dim var_1B4 As Variant
  loc_1840184: unk_552771.Execute "Select DeskCode AS RestCode from Revmast where taxstru='" & arg_C & "'", var_108, -1
  loc_184018F: Set var_D8 = var_10C
  loc_18401B3: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_18401C3: unk_552771.Execute var_E4 & "'", var_108, -1
  loc_18401CE: Set var_8C = var_10C
  loc_18401F2: If (var_D8.RecordCount > 0) Then
  loc_1840219:   var_114 = var_D8.Fields.Item("RestCode")
  loc_1840235:   If CBool(CVar(global_56) <> var_114.Value) Then
  loc_184023A:     var_DA = &HFF
  loc_1840240:   Else
  loc_1840242:     var_DA = 0
  loc_1840245:   End If
  loc_1840248: Else
  loc_184024A:   var_DA = 0
  loc_184024D: End If
  loc_1840250: var_94 = arg_14
  loc_1840255: var_86 = 1
  loc_1840263: If (global_192 = "Room Service") Then
  loc_1840289:   Call 0.Method_Proc_135_88_18426100 (CInt(&HA), var_114, "Select * from RoomOcc where chkoutdate is NULL and foliono=", var_1B4, -1, var_1B8, var_86)
  loc_1840298:   Proc_6_39_E7C810(var_134, CVar(var_114), var_94, var_DA)
  loc_18402A9:   var_154 = var_DA & var_134 & " and Site_Code='" 
  loc_18402CA:   unk_552771.Execute CStr(var_154 & CVar(MemVar_1F92070) & "'"), var_DA, Me.Txt
  loc_18402D5:   Set var_C0 = var_1B8
  loc_18402F3: End If
  loc_18402F6: var_A8 = var_94
  loc_18402FC: var_B0 = var_94
  loc_1840302: var_B8 = CDbl(0)
  loc_1840319: If (var_8C.RecordCount > 0) Then
  loc_184031C:   ' Referenced from: 18425E3
  loc_184032B:   If Not(var_8C.EOF) Then
  loc_1840332:     Set var_1C0 = Me.FGCat
  loc_1840335:     var_F8 = vbNullString
  loc_184035A:     If (var_8C.RecordCount > 0) Then
  loc_1840363:       var_D2 = (var_D2 + 1)
  loc_1840369:       var_F8 = "Nature"
  loc_184039C:       var_1D0 = Trim(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_F8)), var_D2, FGCat.DispID_10000, var_F8))) 'Variant
  loc_18403B5:       If (var_1D0 = "On Base Amt") Then
  loc_18403E0:         var_134 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CondApp")), var_B8, var_B0)) 'String
  loc_1840402:         If (Trim(var_134) = "Room Rate") Then
  loc_1840410:           If (global_192 = "Room Service") Then
  loc_1840439:             Proc_6_39_E7C810(var_134, CVar(var_8C.Fields.Item("Limit")))
  loc_1840467:             Proc_6_39_E7C810(var_154, CVar(var_C0.Fields.Item("RoomRate")), var_134)
  loc_184046F:             var_174 = (var_A8 <= var_154)
  loc_1840499:             Proc_6_39_E7C810(var_1B4, CVar(var_8C.Fields.Item("Rate")))
  loc_18404C9:             If CBool(var_174 And (var_1B4 > 0)) Then
  loc_1840508:               If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1840546:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1840559:               Else
  loc_184058C:                 var_210 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_18405B5:                 Proc_6_142_14A55B0(((var_210 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_18405BA:                 var_D0 = var_210
  loc_18405CE:               End If
  loc_18405D5:               If (var_D0 > CDbl(0)) Then
  loc_18405F1:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18405F9:                 var_164 = CVar(CLng(0)) 'Long
  loc_1840603:                 var_134 = CVar(CStr(var_86)) 'String
  loc_184060A:                 LateIdCallSt
  loc_1840635:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184063D:                 var_164 = CVar(CLng(1)) 'Long
  loc_1840647:                 var_134 = CVar(CStr(arg_10)) 'String
  loc_184064E:                 LateIdCallSt
  loc_1840666:                 If (var_DA = 0) Then
  loc_184066D:                   Set var_1B8 = Me.FGCat
  loc_1840682:                   var_124 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_184068A:                   var_184 = CVar(CLng(2)) 'Long
  loc_18406BA:                   var_144 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_18406C1:                   LateIdCallSt
  loc_18406DE:                 Else
  loc_18406F5:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_1840729:                   var_144 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1840740:                   unk_552771.Execute CStr(var_144 & "')"), var_174, -1
  loc_184074B:                   Set var_E0 = var_1B8
  loc_184077F:                   If (var_E0.RecordCount > 0) Then
  loc_184079B:                     var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18407A3:                     var_184 = CVar(CLng(2)) 'Long
  loc_18407D3:                     var_144 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_18407DA:                     LateIdCallSt
  loc_18407F4:                   End If
  loc_18407F4:                 End If
  loc_184080D:                 var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840815:                 var_184 = CVar(CLng(3)) 'Long
  loc_1840845:                 var_144 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_184084C:                 LateIdCallSt
  loc_184087F:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840887:                 var_164 = CVar(CLng(4)) 'Long
  loc_1840891:                 var_134 = CVar(CStr(var_A8)) 'String
  loc_1840898:                 LateIdCallSt
  loc_18408C3:                 var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18408CB:                 var_184 = CVar(CLng(5)) 'Long
  loc_18408FB:                 var_144 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1840902:                 LateIdCallSt
  loc_184095C:                 var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840964:                 var_240 = CVar(CLng(6)) 'Long
  loc_1840969:                 var_174 = 2
  loc_18409A8:                 var_1FC = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))) 'String
  loc_18409AF:                 LateIdCallSt
  loc_18409EC:                 var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18409F4:                 var_184 = CVar(CLng(7)) 'Long
  loc_1840A24:                 var_144 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_1840A2B:                 LateIdCallSt
  loc_1840A48:               Else
  loc_1840A4E:                 var_86 = (var_86 - 1)
  loc_1840A64:                 var_F8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1840A7A:               End If
  loc_1840A93:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840A9B:               var_164 = CVar(CLng(6)) 'Long
  loc_1840AC0:               var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_1840AE9:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840AF1:               var_164 = CVar(CLng(6)) 'Long
  loc_1840AF9:               var_134 = var_1C0.TextMatrix)
  loc_1840B0C:               var_204 = Val(CStr(var_134))
  loc_1840B16:               var_94 = (var_94 + var_204)
  loc_1840B2D:               var_B0 = (var_B0 + var_D0)
  loc_1840B33:               var_B8 = var_D0
  loc_1840B3D:               var_B0 = (var_B0 + var_D0)
  loc_1840B43:               var_B8 = var_D0
  loc_1840B46:             End If
  loc_1840B46:           End If
  loc_1840B49:         Else
  loc_1840B85:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1840BC3:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1840BD6:           Else
  loc_1840C32:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1840C37:             var_D0 = var_B8
  loc_1840C4B:           End If
  loc_1840C71:           Proc_6_39_E7C810(var_134, CVar(var_8C.Fields.Item("Limit")), var_D0, var_B0, var_94)
  loc_1840C88:           var_164 = "Rate"
  loc_1840CAB:           Proc_6_39_E7C810(var_174, CVar(var_8C.Fields.Item(var_164)), (var_134 <= CVar(var_94)), var_204)
  loc_1840CD5:           If CBool(var_164 And (var_174 > 0)) Then
  loc_1840CDF:             If (var_D0 > CDbl(0)) Then
  loc_1840CFB:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840D03:               var_164 = CVar(CLng(0)) 'Long
  loc_1840D0D:               var_134 = CVar(CStr(var_86)) 'String
  loc_1840D14:               LateIdCallSt
  loc_1840D3F:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840D47:               var_164 = CVar(CLng(1)) 'Long
  loc_1840D51:               var_134 = CVar(CStr(arg_10)) 'String
  loc_1840D58:               LateIdCallSt
  loc_1840D70:               If (var_DA = 0) Then
  loc_1840D77:                 Set var_1B8 = Me.FGCat
  loc_1840D8C:                 var_124 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_1840D94:                 var_184 = CVar(CLng(2)) 'Long
  loc_1840DC4:                 var_144 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1840DCB:                 LateIdCallSt
  loc_1840DE8:               Else
  loc_1840DFF:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_1840E33:                 var_144 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1840E4A:                 unk_552771.Execute CStr(var_144 & "')"), var_174, -1
  loc_1840E55:                 Set var_E0 = var_1B8
  loc_1840E89:                 If (var_E0.RecordCount > 0) Then
  loc_1840EA5:                   var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840EAD:                   var_184 = CVar(CLng(2)) 'Long
  loc_1840EDD:                   var_144 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1840EE4:                   LateIdCallSt
  loc_1840EFE:                 End If
  loc_1840EFE:               End If
  loc_1840F17:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840F1F:               var_184 = CVar(CLng(3)) 'Long
  loc_1840F4F:               var_144 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1840F56:               LateIdCallSt
  loc_1840F89:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840F91:               var_164 = CVar(CLng(4)) 'Long
  loc_1840F9B:               var_134 = CVar(CStr(var_A8)) 'String
  loc_1840FA2:               LateIdCallSt
  loc_1840FCD:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1840FD5:               var_184 = CVar(CLng(5)) 'Long
  loc_1841005:               var_144 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_184100C:               LateIdCallSt
  loc_1841066:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841073:               var_174 = 2
  loc_18410B9:               LateIdCallSt
  loc_18410F6:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184112B:               var_144 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_1C0, CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))), CVar(CLng(6)), var_220)) 'String
  loc_1841132:               LateIdCallSt
  loc_184114A:             End If
  loc_1841163:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184116B:             var_164 = CVar(CLng(6)) 'Long
  loc_1841190:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_18411B9:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18411C1:             var_164 = CVar(CLng(6)) 'Long
  loc_18411C9:             var_134 = var_1C0.TextMatrix)
  loc_18411DC:             var_204 = Val(CStr(var_134))
  loc_18411E6:             var_94 = (var_94 + var_204)
  loc_18411FD:             var_B0 = (var_B0 + var_D0)
  loc_1841203:             var_B8 = var_D0
  loc_1841206:           End If
  loc_1841206:         End If
  loc_1841209:       Else
  loc_1841214:         If (var_1D0 = "On Running Total") Then
  loc_1841253:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1841291:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_18412A4:           Else
  loc_1841300:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1841305:             var_D0 = var_94
  loc_1841319:           End If
  loc_184133F:           Proc_6_39_E7C810(var_134, CVar(var_8C.Fields.Item("Rate")), var_D0, var_204, var_164)
  loc_1841359:           If (var_134 > 0) Then
  loc_1841363:             If (var_D0 > CDbl(0)) Then
  loc_184137F:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841387:               var_164 = CVar(CLng(0)) 'Long
  loc_1841391:               var_134 = CVar(CStr(var_86)) 'String
  loc_1841398:               LateIdCallSt
  loc_18413C3:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18413CB:               var_164 = CVar(CLng(1)) 'Long
  loc_18413D5:               var_134 = CVar(CStr(arg_10)) 'String
  loc_18413DC:               LateIdCallSt
  loc_18413F4:               If (var_DA = 0) Then
  loc_18413FB:                 Set var_1B8 = Me.FGCat
  loc_1841410:                 var_124 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_1841418:                 var_184 = CVar(CLng(2)) 'Long
  loc_1841448:                 var_144 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_184144F:                 LateIdCallSt
  loc_184146C:               Else
  loc_1841483:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_18414B7:                 var_144 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_18414CE:                 unk_552771.Execute CStr(var_144 & "')"), var_174, -1
  loc_18414D9:                 Set var_E0 = var_1B8
  loc_184150D:                 If (var_E0.RecordCount > 0) Then
  loc_1841529:                   var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841531:                   var_184 = CVar(CLng(2)) 'Long
  loc_1841561:                   var_144 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1841568:                   LateIdCallSt
  loc_1841582:                 End If
  loc_1841582:               End If
  loc_184159B:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18415A3:               var_184 = CVar(CLng(3)) 'Long
  loc_18415D3:               var_144 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_18415DA:               LateIdCallSt
  loc_184160D:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841615:               var_164 = CVar(CLng(4)) 'Long
  loc_184161F:               var_134 = CVar(CStr(var_B0)) 'String
  loc_1841626:               LateIdCallSt
  loc_1841651:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841659:               var_184 = CVar(CLng(5)) 'Long
  loc_1841689:               var_144 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1841690:               LateIdCallSt
  loc_18416EA:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18416F2:               var_240 = CVar(CLng(6)) 'Long
  loc_18416F7:               var_174 = 2
  loc_1841736:               var_1FC = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))) 'String
  loc_184173D:               LateIdCallSt
  loc_184177A:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841782:               var_184 = CVar(CLng(7)) 'Long
  loc_18417B2:               var_144 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_18417B9:               LateIdCallSt
  loc_18417D3:             End If
  loc_18417EC:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18417F4:             var_164 = CVar(CLng(6)) 'Long
  loc_1841819:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_1841842:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184184A:             var_164 = CVar(CLng(6)) 'Long
  loc_184186F:             var_94 = (var_94 + Val(CStr(var_1C0.TextMatrix))))
  loc_1841886:             var_B0 = (var_B0 + var_D0)
  loc_184188C:             var_B8 = var_D0
  loc_184188F:           End If
  loc_1841892:         Else
  loc_184189D:           If (var_1D0 = "On Prev. Tax Amt") Then
  loc_18418DC:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_184191A:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_184192D:             Else
  loc_1841989:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_184198E:               var_D0 = var_94
  loc_18419A2:             End If
  loc_18419A9:             If (var_D0 > CDbl(0)) Then
  loc_18419C5:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18419CD:               var_164 = CVar(CLng(0)) 'Long
  loc_18419D7:               var_134 = CVar(CStr(var_86)) 'String
  loc_18419DE:               LateIdCallSt
  loc_1841A09:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841A11:               var_164 = CVar(CLng(1)) 'Long
  loc_1841A1B:               var_134 = CVar(CStr(arg_10)) 'String
  loc_1841A22:               LateIdCallSt
  loc_1841A3A:               If (var_DA = 0) Then
  loc_1841A41:                 Set var_1B8 = Me.FGCat
  loc_1841A56:                 var_124 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_1841A5E:                 var_184 = CVar(CLng(2)) 'Long
  loc_1841A8E:                 var_144 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1841A95:                 LateIdCallSt
  loc_1841AB2:               Else
  loc_1841AC9:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_1841AFD:                 var_144 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_1841B14:                 unk_552771.Execute CStr(var_144 & "')"), var_174, -1
  loc_1841B1F:                 Set var_E0 = var_1B8
  loc_1841B53:                 If (var_E0.RecordCount > 0) Then
  loc_1841B6F:                   var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841B77:                   var_184 = CVar(CLng(2)) 'Long
  loc_1841BA7:                   var_144 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1841BAE:                   LateIdCallSt
  loc_1841BC8:                 End If
  loc_1841BC8:               End If
  loc_1841BE1:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841BE9:               var_184 = CVar(CLng(3)) 'Long
  loc_1841C19:               var_144 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1841C20:               LateIdCallSt
  loc_1841C53:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841C5B:               var_164 = CVar(CLng(4)) 'Long
  loc_1841C65:               var_134 = CVar(CStr(var_B8)) 'String
  loc_1841C6C:               LateIdCallSt
  loc_1841C97:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841C9F:               var_184 = CVar(CLng(5)) 'Long
  loc_1841CCF:               var_144 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1841CD6:               LateIdCallSt
  loc_1841D30:               var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841D38:               var_240 = CVar(CLng(6)) 'Long
  loc_1841D3D:               var_174 = 2
  loc_1841D7C:               var_1FC = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_174))))) 'String
  loc_1841D83:               LateIdCallSt
  loc_1841DC0:               var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841DC8:               var_184 = CVar(CLng(7)) 'Long
  loc_1841DF8:               var_144 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_1841DFF:               LateIdCallSt
  loc_1841E19:             End If
  loc_1841E32:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841E3A:             var_164 = CVar(CLng(6)) 'Long
  loc_1841E5F:             var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_1841E88:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1841E90:             var_164 = CVar(CLng(6)) 'Long
  loc_1841E98:             var_134 = var_1C0.TextMatrix)
  loc_1841EAB:             var_204 = Val(CStr(var_134))
  loc_1841EB5:             var_94 = (var_94 + var_204)
  loc_1841ECC:             var_B0 = (var_B0 + var_D0)
  loc_1841ED2:             var_B8 = var_D0
  loc_1841ED8:           Else
  loc_1841F14:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1841F52:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1841F65:             Else
  loc_1841FC1:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1841FC6:               var_D0 = var_94
  loc_1841FDA:             End If
  loc_1841FDD:             var_F8 = "Limit"
  loc_1842000:             Proc_6_39_E7C810(var_134, CVar(var_8C.Fields.Item(var_F8)), var_D0, var_204, var_164)
  loc_184203A:             Proc_6_39_E7C810(var_174, CVar(var_8C.Fields.Item("Rate")), (var_134 <= CVar(var_94)), var_F8)
  loc_1842064:             If CBool(var_9C And (var_174 > 0)) Then
  loc_184206E:               If (var_D0 > CDbl(0)) Then
  loc_184208A:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842092:                 var_164 = CVar(CLng(0)) 'Long
  loc_184209C:                 var_134 = CVar(CStr(var_86)) 'String
  loc_18420A3:                 LateIdCallSt
  loc_18420CE:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18420D6:                 var_164 = CVar(CLng(1)) 'Long
  loc_18420E0:                 var_134 = CVar(CStr(arg_10)) 'String
  loc_18420E7:                 LateIdCallSt
  loc_18420FF:                 If (var_DA = 0) Then
  loc_1842106:                   Set var_1B8 = Me.FGCat
  loc_184211B:                   var_124 = CVar((CLng(var_1B8.Rows) - 1)) 'Long
  loc_1842123:                   var_184 = CVar(CLng(2)) 'Long
  loc_1842153:                   var_144 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_184215A:                   LateIdCallSt
  loc_1842177:                 Else
  loc_184218E:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_18421C2:                   var_144 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_18421D9:                   unk_552771.Execute CStr(var_144 & "')"), var_174, -1
  loc_18421E4:                   Set var_E0 = var_1B8
  loc_1842218:                   If (var_E0.RecordCount > 0) Then
  loc_1842234:                     var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184223C:                     var_184 = CVar(CLng(2)) 'Long
  loc_184226C:                     var_144 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_1842273:                     LateIdCallSt
  loc_184228D:                   End If
  loc_184228D:                 End If
  loc_18422A6:                 var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18422AE:                 var_184 = CVar(CLng(3)) 'Long
  loc_18422DE:                 var_144 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_18422E5:                 LateIdCallSt
  loc_1842318:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842320:                 var_164 = CVar(CLng(4)) 'Long
  loc_184232A:                 var_134 = CVar(CStr(var_A8)) 'String
  loc_1842331:                 LateIdCallSt
  loc_184235C:                 var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842364:                 var_184 = CVar(CLng(5)) 'Long
  loc_1842394:                 var_144 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_184239B:                 LateIdCallSt
  loc_18423F5:                 var_220 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18423FD:                 var_240 = CVar(CLng(6)) 'Long
  loc_1842441:                 var_1FC = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_1842448:                 LateIdCallSt
  loc_1842485:                 var_124 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_184248D:                 var_184 = CVar(CLng(7)) 'Long
  loc_18424BD:                 var_144 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_18424C4:                 LateIdCallSt
  loc_18424DE:               End If
  loc_18424F7:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18424FF:               var_164 = CVar(CLng(6)) 'Long
  loc_1842524:               var_9C = (var_9C + Val(CStr(var_1C0.TextMatrix))))
  loc_184254D:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1842555:               var_164 = CVar(CLng(6)) 'Long
  loc_184257A:               var_94 = (var_94 + Val(CStr(var_1C0.TextMatrix))))
  loc_1842591:               var_B0 = (var_B0 + var_D0)
  loc_1842597:               var_B8 = var_D0
  loc_184259A:             End If
  loc_184259A:           End If
  loc_184259A:         End If
  loc_184259A:       End If
  loc_184259A:     End If
  loc_18425A0:     var_86 = (var_86 + 1)
  loc_18425A5:     Set var_1C0 = Nothing 
  loc_18425AD:     var_F8 = CVar(CLng(arg_10)) 'Long
  loc_18425B5:     var_164 = CVar(CLng(&H11)) 'Long
  loc_18425BF:     var_108 = CVar(CStr(var_9C)) 'String
  loc_18425C7:     Set var_10C = Me.FGrid
  loc_18425CD:     LateIdCallSt
  loc_18425DE:     var_8C.MoveNext
  loc_18425E3:     GoTo loc_184031C
  loc_18425E6:   End If
  loc_18425EB:   Set var_8C = Nothing
  loc_18425F3:   Set var_C4 = Nothing
  loc_18425FB:   Set var_C0 = Nothing
  loc_1842603:   Set var_D8 = Nothing
  loc_184260B:   Set var_E0 = Nothing
  loc_184260E: End If
  loc_184260E: Exit Sub
End Sub

Public Sub Proc_135_89_F2187C(arg_C, arg_10, arg_14) 'F2187C
  'Data Table: 55274C
  Dim unk_552771 As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  loc_F217C1: Proc_6_7_F25D88(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F217F3: unk_552771.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(arg_14) & "' Order by Appdate Desc"), -1, var_15C
  loc_F217FE: Set var_90 = var_15C
  loc_F21830: If (var_90.RecordCount > 0) Then
  loc_F2185E:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F2186E: Else
  loc_F21871:   var_8C = CDbl(0)
  loc_F21874: End If
  loc_F21874: Proc_135_89_F2187C = var_8C
End Sub

Public Sub Proc_135_90_DFE9C8
  'Data Table: 55274C
  loc_DFE9C4: Exit Sub
  loc_DFE9C5: () = 
End Sub

Public Sub Proc_135_91_107F404
  'Data Table: 55274C
  Dim Me As Recordset15
  loc_107F177: If (Me.RecordCount > 0) Then
  loc_107F180:   Me.MoveFirst
  loc_107F185:   ' Referenced from: 107F400
  loc_107F185: End If
  loc_107F197: If Not(Me.EOF) Then
  loc_107F1D9:   If (Me.Fields.Item("ModDescription").Value = "BILL DOS PLAIN PAPER RUNNING") Then
  loc_107F21B:     If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_107F21E:       Call Proc_135_68_1699A54()
  loc_107F226:     Else
  loc_107F255:       If (MsgBox("Print Bill ?", &H24, var_D4, var_F4, var_114) = 6) Then
  loc_107F258:         Call Proc_135_68_1699A54()
  loc_107F260:       Else
  loc_107F260:         Exit Sub
  loc_107F261:       End If
  loc_107F261:     End If
  loc_107F264:   Else
  loc_107F2A3:     If (Me.Fields.Item("ModDescription").Value = "BILL DOS PRE PRINTED") Then
  loc_107F2E5:       If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_107F2E8:         Call Proc_135_67_15ECAB0()
  loc_107F2F0:       Else
  loc_107F31F:         If (MsgBox("Print Bill ?", &H24, var_D4, var_F4, var_114) = 6) Then
  loc_107F322:           Call Proc_135_67_15ECAB0()
  loc_107F32A:         Else
  loc_107F32A:           Exit Sub
  loc_107F32B:         End If
  loc_107F32B:       End If
  loc_107F32E:     Else
  loc_107F36D:       If (Me.Fields.Item("ModDescription").Value = "BILL DOS PLAIN PAPER") Then
  loc_107F3AF:         If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_107F3B2:           Call Proc_135_69_16EA424()
  loc_107F3BA:         Else
  loc_107F3E9:           If (MsgBox("Print Bill ?", &H24, var_D4, var_F4, var_114) = 6) Then
  loc_107F3EC:             Call Proc_135_69_16EA424()
  loc_107F3F4:           Else
  loc_107F3F4:             Exit Sub
  loc_107F3F5:           End If
  loc_107F3F5:         End If
  loc_107F3F5:       End If
  loc_107F3F5:     End If
  loc_107F3F5:   End If
  loc_107F3FB:   Me.MoveNext
  loc_107F400:   GoTo loc_107F185
  loc_107F403: End If
  loc_107F403: Exit Sub
End Sub

Public Sub Proc_135_92_1584274
  'Data Table: 55274C
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_E0 As Variant
  Dim var_9C As String
  Dim var_D0 As Variant
  Dim Me As Recordset15
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_1E0 As String
  Dim var_94 As Variant
  Dim var_88 As Integer
  Dim var_B0 As Variant
  Dim var_A4 As String
  Dim unk_552771 As Connection15
  Dim var_90 As Recordset15
  loc_158315E: var_86 = 3 'Byte
  loc_158316D: If (global_180 = "Y") Then
  loc_158317A:   Set global_68 = New 
  loc_158318C:   Me.Recordset15.CursorLocation = 3
  loc_15831A2:   If (global_192 = "Hall") Then
  loc_15831B3:     Set var_94 = Me.Txt
  loc_15831B9:     Call 0.Method_Proc_135_92_15842740 (CInt(3), var_A0)
  loc_15831D4:     Set var_B0 = Me.Txt
  loc_15831DA:     Call 0.Method_Proc_135_92_15842740 (CInt(&HB), var_B4)
  loc_1583208:     var_9C = "Select * ,I.NAME AS ITEMNAME,I.UNIT,I.RateEdit,IR.Rate as IRate,I.SChrgApp,IC.TaxPer,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From (((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCODE=K.ItemRestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.RestCode=K.RestCode and IR.ItemCode=K.Item WHERE K.RestCode='" & global_56
  loc_158322B:     var_D0 = CVar(var_9C & "' AND K.RoomNo ='" & var_A0.Tag & "' and K.DOCId='" & var_B4.Tag & "' AND VOIDYN NOT IN('Y') And DelFlag<>'Y' Order by K.DOCID,K.SNo") 'String
  loc_1583235:     Me.Open var_D0, CVar(MemVar_1F92044), 3
  loc_158325C:   Else
  loc_1583267:     Proc_6_7_F25D88(var_D0, MemVar_1F920EC)
  loc_158327A:     Set var_94 = Me.Txt
  loc_1583280:     Call 0.Method_Proc_135_92_15842740 (CInt(3), var_A0, var_9C)
  loc_1583288:     1 = var_A0.Text
  loc_1583298:     Set var_B0 = Me.Txt
  loc_158329E:     Call 0.Method_Proc_135_92_15842740 (CInt(2), var_B4)
  loc_15832C9:     var_F0 = "Select * ,I.NAME AS ITEMNAME,DispCode,I.UNIT,IC.RoundOff,IC.Code as TaxCode,I.DiscApp as IDiscApp,IC.taxStru,I.Kitchen,D.Code as DepartCode,D.ShortName as DepartName From ((KOT K  LEFT JOIN ITEMMAST I ON K.ITEM=I.CODE And I.RestCODE=K.ItemRestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode WHERE k.VDate<="
  loc_1583303:     var_1A0 = var_F0 & var_D0 & " And K.RestCode='" & CVar(global_56) & "' aND K.RoomNo ='" & CVar(var_9C) & "' and K.DOCId in (Select Docid from KOT where Contradocid='" 
  loc_1583311:     var_1E0 = "' and Docid not in (Select KOTDOCID from Stock)) AND VOIDYN NOT IN('Y') And DelFlag<>'Y' And NCKOT<>'Y' Order by K.DOCID,K.SNo"
  loc_1583321:     Me.Open var_1A0 & CVar(Proc_6_38_E68A98(CVar(var_B4))) & var_1E0, CVar(MemVar_1F92044), 3
  loc_158334D:   End If
  loc_1583364:   If (Me.RecordCount > 0) Then
  loc_1583376:     Me.FGrid.Redraw = False
  loc_1583398:     var_88 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15833A1:     ' Referenced from: 15840A9
  loc_15833B3:     If Not(Me.EOF) Then
  loc_15833DB:       For var_20A = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_20A 'Integer
  loc_15833E5:         var_E0 = CVar(CLng(var_8A)) 'Long
  loc_15833ED:         var_110 = CVar(CLng(&HD)) 'Long
  loc_1583407:         var_120 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1583430:         var_100 = Me.Fields.Item("DocID").Value
  loc_1583440:         var_190 = CVar(CLng(var_8A)) 'Long
  loc_15834BB:         If CBool(CVar(CLng(&HC)) And (CVar(CStr(Me.FGrid.TextMatrix))) = Me.Fields.Item("SNo").Value)) Then
  loc_15834C2:           var_8C = CByte(1) 'Byte
  loc_15834C6:           GoTo loc_1583EB2
  loc_15834C9:         End If
  loc_15834CC:       Next var_20A 'Integer
  loc_15834D1:       var_E0 = vbNullString
  loc_15834DB:       Set var_94 = Me.FGrid
  loc_15834F0:       Set var_238 = Me.FGrid
  loc_15834F7:       var_E0 = CVar(CLng(var_88)) 'Long
  loc_15834FF:       var_110 = CVar(CLng(0)) 'Long
  loc_1583509:       var_D0 = CVar(CStr(var_88)) 'String
  loc_1583510:       LateIdCallSt
  loc_158351F:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_1583527:       var_130 = CVar(CLng(&HB)) 'Long
  loc_158355A:       var_100 = CVar(CStr(Me.Fields.Item("Item").Value)) 'String
  loc_1583561:       LateIdCallSt
  loc_158357B:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_1583583:       var_130 = CVar(CLng(3)) 'Long
  loc_15835B6:       var_100 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_15835BD:       LateIdCallSt
  loc_15835D7:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_15835DF:       var_130 = CVar(CLng(4)) 'Long
  loc_1583612:       var_100 = CVar(CStr(Me.Fields.Item("ItemName").Value)) 'String
  loc_1583619:       LateIdCallSt
  loc_1583633:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_158363B:       var_130 = CVar(CLng(6)) 'Long
  loc_158366E:       var_100 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1583675:       LateIdCallSt
  loc_15836AE:       var_110 = CVar(CLng(var_88)) 'Long
  loc_15836B6:       var_150 = CVar(CLng(7)) 'Long
  loc_15836E3:       var_140 = CVar(CStr(Format(CVar(Me.Fields.Item("qty")), "0.00"))) 'String
  loc_15836EA:       LateIdCallSt
  loc_1583723:       var_110 = CVar(CLng(var_88)) 'Long
  loc_158372B:       var_150 = CVar(CLng(8)) 'Long
  loc_1583758:       var_140 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_158375F:       LateIdCallSt
  loc_1583798:       var_110 = CVar(CLng(var_88)) 'Long
  loc_15837A0:       var_150 = CVar(CLng(9)) 'Long
  loc_15837CD:       var_140 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_15837D4:       LateIdCallSt
  loc_1583829:       var_B0 = Me.Fields
  loc_1583831:       var_B4 = var_B0.Item("Rate")
  loc_1583842:       var_130 = CVar(CLng(var_88)) 'Long
  loc_158384A:       var_190 = CVar(CLng(&HA)) 'Long
  loc_1583881:       var_180 = CVar(CStr(Format((Me.Fields.Item("qty").Value * var_B4.Value), "0.00"))) 'String
  loc_1583888:       LateIdCallSt
  loc_15838CD:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_15838D5:       var_130 = CVar(CLng(5)) 'Long
  loc_15838FC:       var_120 = CVar(CStr(Val(CStr(Right(CVar(Me.Fields.Item("DocID")), 8))))) 'String
  loc_1583903:       LateIdCallSt
  loc_158391E:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_1583926:       var_130 = CVar(CLng(&HD)) 'Long
  loc_1583959:       var_100 = CVar(CStr(Me.Fields.Item("DocID").Value)) 'String
  loc_1583960:       LateIdCallSt
  loc_158397A:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_1583982:       var_130 = CVar(CLng(&HC)) 'Long
  loc_15839B5:       var_100 = CVar(CStr(Me.Fields.Item("SNo").Value)) 'String
  loc_15839BC:       LateIdCallSt
  loc_1583A0E:       var_100 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H19)), CVar(CLng(var_88)), var_238, var_100, CVar(CLng(&H19)), CVar(CLng(var_88)))) 'String
  loc_1583A15:       LateIdCallSt
  loc_1583A63:       var_100 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H13)), CVar(CLng(var_88)), var_238, var_100, var_238)) 'String
  loc_1583A6A:       LateIdCallSt
  loc_1583AB8:       var_100 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H14)), CVar(CLng(var_88)), var_238, var_100)) 'String
  loc_1583ABF:       LateIdCallSt
  loc_1583B0D:       var_100 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H18)), CVar(CLng(var_88)), var_238, var_100)) 'String
  loc_1583B14:       LateIdCallSt
  loc_1583B62:       var_100 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1B)), CVar(CLng(var_88)), var_238, var_100)) 'String
  loc_1583B69:       LateIdCallSt
  loc_1583B87:       var_130 = CVar(CLng(&H1A)) 'Long
  loc_1583BB7:       var_100 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), var_130, CVar(CLng(var_88)), var_238, var_100)) 'String
  loc_1583BBE:       LateIdCallSt
  loc_1583C0B:       var_9C = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_100, -1, var_B0, var_238)
  loc_1583C1F:       unk_552771.Execute var_100 & CStr(Right(CVar(Me.Fields.Item("DocID")), 8)) & "'", var_100, var_130
  loc_1583C2A:       Set var_90 = var_B0
  loc_1583C58:       If (var_90.RecordCount > 0) Then
  loc_1583C92:         Proc_6_39_E7C810(var_100, CVar(var_90.Fields.Item("Rate")), CVar(CLng(&H10)), CVar(CLng(var_88)))
  loc_1583C9B:         var_120 = CVar(CStr(var_100)) 'String
  loc_1583CA3:         Set var_B0 = Me.FGrid
  loc_1583CA9:         LateIdCallSt
  loc_1583CC1:       End If
  loc_1583CE2:       var_D0 = CVar(Proc_6_38_E68A98(global_136, CVar(CLng(&H16)), CVar(CLng(var_88)), var_B0)) 'String
  loc_1583CE9:       LateIdCallSt
  loc_1583CF8:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_1583D30:       var_100 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomNo")), CVar(CLng(&H17)), var_F0, var_238, CVar(Me.Fields.Item("RoomNo")))) 'String
  loc_1583D37:       LateIdCallSt
  loc_1583D82:       Set var_B0 = Me.Txt
  loc_1583D88:       Call 0.Method_Proc_135_92_15842740 (CInt(3), var_B4, Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomNo")), var_238, var_100, var_120))
  loc_1583D90:       var_B4.Tag = var_F0
  loc_1583DE0:       var_100 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_88)))) 'String
  loc_1583DE7:       LateIdCallSt
  loc_1583E35:       var_100 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_88)), var_238)) 'String
  loc_1583E3C:       LateIdCallSt
  loc_1583E79:       var_A0 = Me.Fields.Item("RoomCat")
  loc_1583E8A:       var_100 = CVar(Proc_6_38_E68A98(CVar(var_A0), CVar(CLng(&H15)), CVar(CLng(var_88)), var_238)) 'String
  loc_1583E91:       LateIdCallSt
  loc_1583EA5:       Set var_238 = Nothing 
  loc_1583EAF:       var_88 = (var_88 + 1)
  loc_1583EB2:       ' Referenced from: 15834C6
  loc_1583EB8:       Me.MoveNext
  loc_1583EDB:       If ((Me.EOF = &HFF) And (CInt(var_8C) = 0)) Then
  loc_1583EE9:         If (global_192 = "Room Service") Then
  loc_1583EF9:           var_9C = Me.lblTable.Caption
  loc_1583F0C:           If (var_9C = vbNullString) Then
  loc_1583F20:             Set var_94 = Me.Txt
  loc_1583F26:             Call 0.Method_Proc_135_92_15842740 (CInt(3), var_A0, var_9C, "Room # ", var_88, var_238)
  loc_1583F37:             var_A4 = var_A0.Text & var_9C
  loc_1583F3E:             Set var_B0 = Me.lblTable
  loc_1583F44:             var_B0.Caption = var_A4
  loc_1583F5C:           Else
  loc_1583F86:             Set var_A0 = Me.Txt
  loc_1583F8C:             Call 0.Method_Proc_135_92_15842740 (CInt(3), var_B0, var_A4, Me.lblTable.Caption & ",")
  loc_1583F94:             var_100 = var_B0.Text
  loc_1583FAA:             Me.lblTable.Caption = var_238 & var_A4
  loc_1583FC5:           End If
  loc_1583FC8:         Else
  loc_1583FD5:           var_9C = Me.lblTable.Caption
  loc_1583FE8:           If (var_9C = vbNullString) Then
  loc_1583FFC:             Set var_94 = Me.Txt
  loc_1584002:             Call 0.Method_Proc_135_92_15842740 (CInt(3), var_A0, var_9C)
  loc_158400A:             "Table # " = var_A0.Text
  loc_158401A:             Set var_B0 = Me.lblTable
  loc_1584020:             var_B0.Caption = var_120 & var_9C
  loc_1584038:           Else
  loc_1584045:             var_9C = Me.lblTable.Caption
  loc_1584062:             Set var_A0 = Me.Txt
  loc_1584068:             Call 0.Method_Proc_135_92_15842740 (CInt(3), var_B0)
  loc_1584086:             Me.lblTable.Caption = var_9C & "," & var_B0.Text
  loc_15840A1:           End If
  loc_15840A1:         End If
  loc_15840A1:       End If
  loc_15840A5:       var_8C = CByte(0) 'Byte
  loc_15840A9:       GoTo loc_15833A1
  loc_15840AC:     End If
  loc_15840BF:     Me.FGrid.FixedRows = 1
  loc_15840CA:   Else
  loc_15840D8:     Me.FGrid.Redraw = True
  loc_15840E6:     If (var_88 = 1) Then
  loc_15840FC:       Me.FGrid.Rows = 1
  loc_1584122:       var_D0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_158412A:       Set var_A0 = Me.FGrid
  loc_1584157:       Me.FGrid.FixedRows = 1
  loc_158415F:     End If
  loc_158415F:   End If
  loc_158415F: End If
  loc_158416D: Me.FGrid.Redraw = True
  loc_158417B: If (var_88 = 1) Then
  loc_1584191:   Me.FGrid.Rows = 1
  loc_15841B7:   var_D0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), FGrid.DispID_10000))) 'String
  loc_15841BF:   Set var_A0 = Me.FGrid
  loc_15841EC:   Me.FGrid.FixedRows = 1
  loc_15841F4: End If
  loc_15841FD: Call Proc_135_84_165D318(CInt(var_86))
  loc_1584212: Set var_94 = Me.Txt
  loc_1584218: Call 0.Method_Proc_135_92_15842740 (CInt(var_86), var_A0, var_9C, FGrid.DispID_10000)
  loc_1584243: If ((var_9C <> vbNullString) And (global_180 = "Y")) Then
  loc_1584256:   Set var_94 = Me.Txt
  loc_158425C:   Call 0.Method_Proc_135_92_15842740 (CInt(var_86), var_A0, vbNullString)
  loc_1584264:   var_A0.Text = var_A0.Text
  loc_1584270: End If
  loc_1584270: Exit Sub
End Sub
