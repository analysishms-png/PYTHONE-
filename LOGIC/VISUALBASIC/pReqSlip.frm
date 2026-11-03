VERSION 5.00
Begin VB.Form pReqSlip
  Caption = "Requistion Slip Entry"
  ForeColor = &H404040&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  Icon = "pReqSlip.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 9060
  ClientHeight = 6060
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
  Begin Frame FrBanq
    Caption = "Frame1"
    Left = 750
    Top = 1950
    Width = 5160
    Height = 285
    Visible = 0   'False
    TabIndex = 33
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 11
      ForeColor = &HC00000&
      Left = 2505
      Top = 0
      Width = 2655
      Height = 285
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
      Index = 10
      ForeColor = &HC00000&
      Left = 1740
      Top = 0
      Width = 735
      Height = 285
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
    Begin Label Label1
      Caption = "Banq. Party"
      Index = 8
      ForeColor = &HC00000&
      Left = 0
      Top = 0
      Width = 1110
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
  End
  Begin DataGrid DGBookNo
    Left = 8055
    Top = 2400
    Width = 6300
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 32
  End
  Begin TextBox Txt
    Index = 8
    ForeColor = &HC00000&
    Left = 12315
    Top = 1320
    Width = 1260
    Height = 285
    TabIndex = 30
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    ForeColor = &HC00000&
    Left = 6915
    Top = 1320
    Width = 3420
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
  Begin DataGrid DGGodown
    Left = 10770
    Top = 5085
    Width = 3915
    Height = 3810
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 28
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9060
    Height = 450
    TabIndex = 27
  End
  Begin DataGrid DGItem
    Left = 11355
    Top = 2760
    Width = 4245
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin DataGrid DGDepart
    Left = 6930
    Top = 3765
    Width = 3915
    Height = 3810
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGCompany
    Left = 11235
    Top = 1830
    Width = 4245
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 23
  End
  Begin TextBox Txt
    Index = 7
    ForeColor = &HC00000&
    Left = 6915
    Top = 1635
    Width = 3420
    Height = 285
    TabIndex = 7
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
    Index = 6
    ForeColor = &HC00000&
    Left = 5355
    Top = 1005
    Width = 555
    Height = 285
    TabIndex = 21
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
    Index = 5
    ForeColor = &HC00000&
    Left = 2490
    Top = 1635
    Width = 3420
    Height = 285
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
    Index = 0
    Left = 10935
    Top = 8745
    Width = 1590
    Height = 240
    Visible = 0   'False
    TabIndex = 18
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
    Index = 3
    Left = 12600
    Top = 8760
    Width = 2340
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 21
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
    ForeColor = &HC00000&
    Left = 2490
    Top = 1320
    Width = 3420
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HF8DEE0&
    ForeColor = &H80000012&
    Left = 1980
    Top = 3555
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 4095
    Top = 1005
    Width = 1230
    Height = 285
    TabIndex = 0
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
    Index = 1
    ForeColor = &HC00000&
    Left = 2490
    Top = 1005
    Width = 780
    Height = 285
    TabIndex = 1
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
  Begin MSHFlexGrid FGrid
    Left = 765
    Top = 2265
    Width = 10895
    Height = 6000
    TabIndex = 8
  End
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HFF&
    Left = 450
    Top = 8490
    Width = 2745
    Height = 345
    TabIndex = 35
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Total"
    Index = 6
    ForeColor = &HC00000&
    Left = 11370
    Top = 1320
    Width = 480
    Height = 240
    TabIndex = 31
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
    Caption = "Godown"
    Index = 5
    ForeColor = &HC00000&
    Left = 5955
    Top = 1335
    Width = 795
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 1665
    Top = 8040
    Width = 2880
    Height = 255
    TabIndex = 26
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
    Left = 5070
    Top = 8085
    Width = 2790
    Height = 285
    TabIndex = 25
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 345
    Width = 180
    Height = 540
    TabIndex = 24
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
    Caption = "Company "
    Index = 4
    ForeColor = &HC00000&
    Left = 5955
    Top = 1635
    Width = 960
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
  Begin Label Label1
    Caption = "Remark"
    Index = 2
    ForeColor = &HC00000&
    Left = 750
    Top = 1650
    Width = 735
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
  Begin Label Label1
    Caption = "Vr Type"
    Index = 0
    ForeColor = &H0&
    Left = 4425
    Top = 5205
    Width = 660
    Height = 210
    Visible = 0   'False
    TabIndex = 19
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
    Caption = "DocID"
    Index = 29
    ForeColor = &H0&
    Left = 14565
    Top = 7695
    Width = 555
    Height = 210
    Visible = 0   'False
    TabIndex = 17
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
    Caption = "Department"
    Index = 10
    ForeColor = &HC00000&
    Left = 750
    Top = 1335
    Width = 1110
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 14325
    Top = 8220
    Width = 645
    Height = 210
    Visible = 0   'False
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
  Begin Label Label1
    Caption = "Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 3525
    Top = 1005
    Width = 435
    Height = 240
    TabIndex = 11
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
    Caption = "Requestion No."
    Index = 3
    ForeColor = &HC00000&
    Left = 750
    Top = 1005
    Width = 1440
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
End

Attribute VB_Name = "pReqSlip"

Private global_108 As Integer
Private global_110 As Integer
Private global_164 As Double
Private global_112 As Integer
Private global_52 As Integer
Private global_96 As Integer

Private Sub FGrid_UnknownEvent_0 'EA3328
  'Data Table: 4DA728
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA32C3: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_80)) Then
  loc_EA32D8:   Me.FGrid.Col = CVar(CLng(1))
  loc_EA32E0: End If
  loc_EA32F3: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA3306: Set var_88 = Me.TxtGrid
  loc_EA330C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA3314: var_BC.Visible = False
  loc_EA3320: Call Proc_262_52_F31C88()
  loc_EA3325: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6A0F0
  'Data Table: 4DA728
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6A0AC: Set var_88 = Me.TxtGrid
  loc_E6A0B2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6A0CC: If (var_8C.Visible = 0) Then
  loc_E6A0E5:   Me.FGrid.BackColorSel = CVar(CLng(global_80))
  loc_E6A0ED: End If
  loc_E6A0ED: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE924
  'Data Table: 4DA728
  loc_DFE91C: Call Proc_262_46_E407AC()
  loc_DFE921: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '11B8C78
  'Data Table: 4DA728
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_11B882C: Set var_88 = Me.TopCtrl1
  loc_11B8832: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11B8877: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_11B8880:   Call Form_KeyDown(Cancel, arg_10)
  loc_11B8885: End If
  loc_11B8889: Set var_88 = Me.TopCtrl1
  loc_11B888F: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11B88A8: If (CStr() = "Browse") Then
  loc_11B88AB:   Exit Sub
  loc_11B88AC: End If
  loc_11B8920: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_11B8939:   Me.FGrid.CellBackColor = CVar(CLng(global_80))
  loc_11B8949:   var_9C = "+{Tab}"
  loc_11B894F:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_11B8959:   Cancel = 0
  loc_11B895F: Else
  loc_11B8969:   var_B0 = Me.FGrid.Rows
  loc_11B89B6:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_11B89CF:     Me.FGrid.CellBackColor = CVar(CLng(global_80))
  loc_11B89DC:     Call Proc_262_53_F0CA44(0, var_B0, Cancel)
  loc_11B89E1:   End If
  loc_11B89E1: End If
  loc_11B89E7: global_108 = Cancel
  loc_11B8A0D: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11B8A31: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_11B8A47:   var_EC = CLng(Me.FGrid.Col)
  loc_11B8A57:   If (var_EC = CLng(1)) Then
  loc_11B8A6D:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B8A85:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11B8A8A:     var_11C = vbNullString
  loc_11B8A94:     Set var_B4 = Me.FGrid
  loc_11B8A9A:     LateIdCallSt
  loc_11B8AC5:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B8ACD:     var_FC = CVar(CLng(7)) 'Long
  loc_11B8AD2:     var_11C = vbNullString
  loc_11B8ADC:     Set var_A0 = Me.FGrid
  loc_11B8AE2:     LateIdCallSt
  loc_11B8B07:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B8B0F:     var_FC = CVar(CLng(2)) 'Long
  loc_11B8B14:     var_11C = vbNullString
  loc_11B8B1E:     Set var_A0 = Me.FGrid
  loc_11B8B24:     LateIdCallSt
  loc_11B8B49:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B8B51:     var_FC = CVar(CLng(3)) 'Long
  loc_11B8B56:     var_11C = vbNullString
  loc_11B8B60:     Set var_A0 = Me.FGrid
  loc_11B8B66:     LateIdCallSt
  loc_11B8B8B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B8B93:     var_FC = CVar(CLng(8)) 'Long
  loc_11B8B98:     var_11C = vbNullString
  loc_11B8BA2:     Set var_A0 = Me.FGrid
  loc_11B8BA8:     LateIdCallSt
  loc_11B8BCD:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B8BD5:     var_FC = CVar(CLng(9)) 'Long
  loc_11B8BDA:     var_11C = vbNullString
  loc_11B8BE4:     Set var_A0 = Me.FGrid
  loc_11B8BEA:     LateIdCallSt
  loc_11B8BFF:   Else
  loc_11B8C06:     If (var_EC = CLng(3)) Then
  loc_11B8C1C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B8C34:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11B8C39:       var_11C = vbNullString
  loc_11B8C43:       Set var_B4 = Me.FGrid
  loc_11B8C49:       LateIdCallSt
  loc_11B8C61:     End If
  loc_11B8C61:   End If
  loc_11B8C61: End If
  loc_11B8C67: If (Cancel = &HD) Then
  loc_11B8C6F:   global_110 = 0
  loc_11B8C72: End If
  loc_11B8C74: Cancel = 0
  loc_11B8C77: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0F758
  'Data Table: 4DA728
  loc_E0F749: Call FGrid_UnknownEvent_C()
  loc_E0F753: global_110 = 0
  loc_E0F756: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1077CBC
  'Data Table: 4DA728
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As Variant
  Dim var_C4 As TextBox
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_1077A30: Set var_88 = Me.TopCtrl1
  loc_1077A36: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1077A4F: If (CStr() = "Browse") Then
  loc_1077A52:   Exit Sub
  loc_1077A53: End If
  loc_1077A66: var_A0 = CLng(Me.FGrid.Col)
  loc_1077A76: If (var_A0 = CLng(1)) Then
  loc_1077A7D:   Set var_C4 = Me.FGrid
  loc_1077AA1:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1077ACE:   Set var_B4 = var_C4
  loc_1077AE0:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1077B08:   Set var_88 = Me.TxtGrid
  loc_1077B0E:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1077B16:   0 = var_B4.Text
  loc_1077B2F:   If (Len(var_9C) <= 1) Then
  loc_1077B3E:     Set var_88 = Me.TxtGrid
  loc_1077B44:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1077B4C:     var_CA = var_B4.Text
  loc_1077B5D:     Set var_B8 = Me.TxtGrid
  loc_1077B63:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1077B6B:     var_C4.Text = var_9C
  loc_1077B7E:   End If
  loc_1077B8A:   Set var_88 = Me.TxtGrid
  loc_1077B90:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1077BAA:   Set var_B8 = Me.TxtGrid
  loc_1077BB0:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1077BB8:   var_C4.SelStart = Len(var_B4.Text)
  loc_1077BCE: Else
  loc_1077BD5:   If Not (var_A0 = CLng(3)) Then
  loc_1077BDF:     If (var_A0 = CLng(4)) Then
  loc_1077BE2:     End If
  loc_1077BFF:     If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_1077C15:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1077C1D:       var_FC = CVar(CLng(4)) 'Long
  loc_1077C42:       global_164 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1077C56:     End If
  loc_1077C94:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel)
  loc_1077CA6:   End If
  loc_1077CA6: End If
  loc_1077CB0: If (CLng(Cancel) <> &HD) Then
  loc_1077CB8:   global_110 = &HFF
  loc_1077CBB: End If
  loc_1077CBB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '105909C
  'Data Table: 4DA728
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  loc_1058E34: Set var_90 = Me.TopCtrl1
  loc_1058E3A: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1058E53: If (CStr() = "Browse") Then
  loc_1058E56:   Exit Sub
  loc_1058E57: End If
  loc_1058E74: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1058E77:   Exit Sub
  loc_1058E78: End If
  loc_1058E89: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_1058EAB:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1058EE5:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_1058F07:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1058F1D:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1058F26:         Set var_118 = Me.FGrid
  loc_1058F41:       Else
  loc_1058F54:         Me.FGrid.Rows = 1
  loc_1058F7A:         var_A0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_1058F82:         Set var_118 = Me.FGrid
  loc_1058FAF:         Me.FGrid.FixedRows = 1
  loc_1058FB7:       End If
  loc_1058FBB:       Set var_90 = Me.TopCtrl1
  loc_1058FC1:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(FGrid.DispID_10000)
  loc_1058FDA:       If (CStr(var_A0) = "Add") Then
  loc_1059002:         For var_124 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_124 'Integer
  loc_105900C:           var_B4 = CVar(CLng(var_86)) 'Long
  loc_1059014:           var_E4 = CVar(CLng(0)) 'Long
  loc_105901E:           var_A0 = CVar(CStr(var_86)) 'String
  loc_1059026:           Set var_90 = Me.FGrid
  loc_105902C:           LateIdCallSt
  loc_105903D:         Next var_124 'Integer
  loc_1059042:       End If
  loc_1059042:     End If
  loc_1059042:     Call Proc_262_57_FCF85C()
  loc_105904A:   Else
  loc_105906B:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_105907B:   End If
  loc_105907F:   Set var_90 = Me.FGrid
  loc_1059090: End If
  loc_1059095: Set var_8C = Nothing
  loc_1059098: Exit Sub
  loc_1059099: Exit Sub
  loc_105909A: CopyBytes -20477
End Sub

Private Sub FGrid_UnknownEvent_15 'E3FFE0
  'Data Table: 4DA728
  Dim var_8C As TextBox
  loc_E3FFB4: Call Proc_262_52_F31C88()
  loc_E3FFC4: Set var_88 = Me.TxtGrid
  loc_E3FFCA: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3FFD2: var_8C.Visible = False
  loc_E3FFDE: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'FACF00
  'Data Table: 4DA728
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_FACD7F: Me.DGCompany.Visible = False
  loc_FACD9E: If (Me.RecordCount > 0) Then
  loc_FACDAF:   Set var_A8 = Me.Txt
  loc_FACDB5:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HA), var_B0)
  loc_FACDBD:   var_B0.Text = vbNullString
  loc_FACDD7:   Set var_A8 = Me.Txt
  loc_FACDDD:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HA), var_B0)
  loc_FACDE5:   var_B0.Tag = vbNullString
  loc_FACDFF:   Set var_A8 = Me.Txt
  loc_FACE05:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HB), var_B0)
  loc_FACE0D:   var_B0.Text = vbNullString
  loc_FACE55:   Set var_B4 = Me.Txt
  loc_FACE5B:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(7), var_B8)
  loc_FACE63:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FACE96:   var_B0 = Me.Fields.Item("Code")
  loc_FACEB5:   Set var_B4 = Me.Txt
  loc_FACEBB:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(7), var_B8)
  loc_FACEC3:   var_B8.Tag = CStr(var_B0.Value)
  loc_FACED9: End If
  loc_FACEE4: Set var_A8 = Me.Txt
  loc_FACEEA: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(7))
  loc_FACEF2: var_B0.SetFocus
  loc_FACEFE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '111018C
  'Data Table: 4DA728
  Dim var_8C As String
  Dim var_98 As Variant
  Dim unk_4DA746 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_C4 As TextBox
  Dim var_B8 As Variant
  loc_110FE4C: On Error Goto loc_1110183
  loc_110FE72: Call Proc_262_51_F7AA20(Proc_5_1_100CB50("ADD", Me))
  loc_110FE7D: Call Proc_262_50_F6A200(global_72)
  loc_110FE9B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_110FEA3: var_98.Text = CStr(MemVar_1F920EC)
  loc_110FEC8: unk_4DA746.Execute "Select Description,V_Type From Voucher_Type Where NCat='RQS'", var_B8, -1
  loc_110FED3: Set var_88 = Me.Txt
  loc_110FEF0: If (var_88.RecordCount > 0) Then
  loc_110FF2C:   Set var_C0 = Me.Txt
  loc_110FF32:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C4)
  loc_110FF3A:   var_C4.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_110FF62:   var_90 = var_88.Fields
  loc_110FF72:   var_B8 = var_90.Item("V_Type").Value
  loc_110FF89:   Set var_C0 = Me.Txt
  loc_110FF8F:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C4)
  loc_110FF97:   var_C4.Tag = CStr(var_B8)
  loc_110FFAD: End If
  loc_110FFC1: var_8C = "Select E.PurchaseGodown,G.Name as GodownName From Enviro E Left Join GodownMast G on E.PurchaseGodown=G.Code Where E.Logsite_code='" & MemVar_1F92078
  loc_110FFD1: unk_4DA746.Execute var_8C & "'", var_B8, -1
  loc_110FFDC: Set var_88 = var_90
  loc_1110000: If (var_88.RecordCount > 0) Then
  loc_1110012:   var_90 = var_88.Fields
  loc_1110039:   Set var_C0 = Me.Txt
  loc_111003F:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9), var_C4)
  loc_1110047:   var_C4.Text = Proc_6_38_E68A98(CVar(var_90.Item("GodownName")), var_90)
  loc_1110072:   var_98 = var_88.Fields.Item("PurchaseGodown")
  loc_1110083:   var_8C = Proc_6_38_E68A98(CVar(var_98))
  loc_1110091:   Set var_C0 = Me.Txt
  loc_1110097:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9), var_C4)
  loc_111009F:   var_C4.Tag = var_8C
  loc_11100B3: End If
  loc_11100B9: Call Proc_262_54_114E63C(MemVar_1F92044, var_8C)
  loc_11100C4: global_84 = var_8C
  loc_1110105: Set var_90 = Me.Txt
  loc_111010B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_98, CStr(Format(Time, "HH:nn")))
  loc_1110113: var_98.Text = 1
  loc_1110136: Set var_90 = Me.Txt
  loc_111013C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_98)
  loc_1110144: var_98.SetFocus
  loc_1110155: Set var_88 = Nothing
  loc_1110165: Me.LblUser.Caption = vbNullString
  loc_111017A: Me.LblLDt.Caption = vbNullString
  loc_1110182: Exit Sub
  loc_1110183: ' Referenced from: 110FE4C
  loc_1110183: Proc_6_60_E62BC4(1)
  loc_1110188: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EB2EB0
  'Data Table: 4DA728
  loc_EB2E24: On Error Goto loc_EB2EA7
  loc_EB2E5E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EB2E84:   Call Proc_262_51_F7AA20(Proc_5_1_100CB50("INI", Me))
  loc_EB2E8F:   Call Proc_262_48_15997C4(global_72)
  loc_EB2E9A:   global_124 = vbNullString
  loc_EB2EA3:   global_112 = 0
  loc_EB2EA6: End If
  loc_EB2EA6: Exit Sub
  loc_EB2EA7: ' Referenced from: EB2E24
  loc_EB2EA7: Proc_6_60_E62BC4(global_112)
  loc_EB2EAC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10EB554
  'Data Table: 4DA728
  Dim var_9C As Variant
  Dim unk_4DA746 As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_A0 As String
  Dim var_C8 As Variant
  loc_10EB250: On Error Goto loc_10EB503
  loc_10EB261: If (Proc_183_56_FE8818(global_72) = &HFF) Then
  loc_10EB264:   Exit Sub
  loc_10EB265: End If
  loc_10EB292: Set var_98 = Me.Txt
  loc_10EB298: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_9C, var_A0, "Select count(*) from Stock where ContraDocid='", var_C8, -1)
  loc_10EB2A0: var_CC = var_9C.Text
  loc_10EB2B9: unk_4DA746.Execute var_D0 & var_A0 & "'", 0, var_E4
  loc_10EB2C1: var_F4 = var_CC.Fields
  loc_10EB2C9:  = var_D0.Item()
  loc_10EB2D1:  = var_E4.Value
  loc_10EB2FE: If (var_F4 > 0) Then
  loc_10EB31A:   MsgBox("Related Record Exist in Stock Issue Entry", &H40, var_F4, var_114, var_134)
  loc_10EB32A:   Exit Sub
  loc_10EB32B: End If
  loc_10EB362: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_114, var_134) = 6) Then
  loc_10EB36E:   unk_4DA746.BeginTrans var_138
  loc_10EB384:   var_94 = Me.Bookmark 'Variant
  loc_10EB3DE:   unk_4DA746.Execute CStr("Delete From Indent Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_10EB442:   var_114 = "Delete From Indent1 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10EB446:   var_A0 = CStr(var_114)
  loc_10EB450:   unk_4DA746.Execute var_A0, var_134, -1
  loc_10EB472:   unk_4DA746.CommitTrans
  loc_10EB482:   Me.Requery -1
  loc_10EB4A2:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10EB4AF:     Me.Bookmark = var_94
  loc_10EB4B7:   Else
  loc_10EB4CB:     If (Me.EOF = 0) Then
  loc_10EB4D4:       Me.MoveLast
  loc_10EB4D9:     End If
  loc_10EB4D9:   End If
  loc_10EB4D9:   Call Proc_262_48_15997C4(var_CC)
  loc_10EB4FA:   Proc_5_0_110649C(&HFF, Me, global_72)
  loc_10EB502: End If
  loc_10EB502: Exit Sub
  loc_10EB503: ' Referenced from: 10EB250
  loc_10EB509: unk_4DA746.RollbackTrans
  loc_10EB516: Set var_98 = Err()
  loc_10EB51C: Call 0.Method_arg_2C (var_A0, 0)
  loc_10EB53D: MsgBox(CVar(var_A0), &H10, " Deletion Message", var_114, var_134)
  loc_10EB550: Exit Sub
  loc_10EB551: StAryRecMove
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA10F8
  'Data Table: 4DA728
  Dim var_8C As TextBox
  Dim unk_4DA746 As Connection15
  Dim var_C0 As Fields15
  Dim var_D4 As Field20
  Dim var_88 As Label
  loc_FA0F94: On Error Goto loc_FA10F2
  loc_FA0FA5: If (Proc_183_55_FE7900(global_72) = &HFF) Then
  loc_FA0FA8:   Exit Sub
  loc_FA0FA9: End If
  loc_FA0FD6: Set var_88 = Me.Txt
  loc_FA0FDC: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_8C, var_90, "Select count(*) from Stock where ContraDocid='", var_B8, -1)
  loc_FA0FFD: unk_4DA746.Execute var_C0 & var_90 & "'", 0, var_D4
  loc_FA1005: var_E4 = var_8C.Text.Fields
  loc_FA100D:  = var_C0.Item()
  loc_FA1015:  = var_D4.Value
  loc_FA1042: If (var_E4 > 0) Then
  loc_FA105E:   MsgBox("Related Record Exist in Stock Issue Entry", &H40, var_E4, var_104, var_124)
  loc_FA106E:   Exit Sub
  loc_FA106F: End If
  loc_FA1092: Call Proc_262_51_F7AA20(Proc_5_1_100CB50("EDIT", Me))
  loc_FA10A8: Set var_88 = Me.Txt
  loc_FA10AE: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_8C)
  loc_FA10B6: var_8C.SetFocus
  loc_FA10C2: Call Proc_262_56_E89CAC(global_72)
  loc_FA10C7: Exit Sub
  loc_FA10D5: Me.LblUser.Caption = vbNullString
  loc_FA10EA: Me.LblLDt.Caption = vbNullString
  loc_FA10F2: ' Referenced from: FA0F94
  loc_FA10F2: Proc_6_60_E62BC4()
  loc_FA10F7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15A10
  'Data Table: 4DA728
  loc_E15A05: Me.Global.Unload Me
  loc_E15A0D: Exit Sub
  loc_E15A0E: Loop Until  'do at: E10AF7
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC73A0
  'Data Table: 4DA728
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EC7300: On Error Goto loc_EC7398
  loc_EC731A: If (Me.RecordCount <= 0) Then
  loc_EC7323:   var_B8 = "Information"
  loc_EC733E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC734E:   Exit Sub
  loc_EC734F: End If
  loc_EC7356: var_10C = "SELECT I.DocId AS SearchCode, Convert(Varchar(10),I.VNo) as SlipNo, Convert(Varchar(12),I.VDate,103) as SlipDate, I.VTime, GodownMast.Name as Department, G1.Name as Godown, I.Remarks FROM Indent AS I INNER JOIN GodownMast ON I.Department = GodownMast.Code LEFT JOIN GodownMast G1 ON I.Godown = G1.Code Where I.Logsite_Code='" & MemVar_1F92078
  loc_EC735D: MemVar_1F920E4 = var_10C & "' and VType in (Select V_Type from Voucher_Type Where NCAT='RQS' ) Order By I.Vno"
  loc_EC736D: Proc_6_126_F1BCC0("800,1100,800,2500,2500,2500")
  loc_EC737B: MemVar_1F92120 = Me
  loc_EC7392: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC7397: Exit Sub
  loc_EC7398: ' Referenced from: EC7300
  loc_EC7398: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC739D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2D798
  'Data Table: 4DA728
  Dim var_4F01 As Double
  loc_E2D788: Proc_5_0_110649C(&HFF, Me)
  loc_E2D790: Call Proc_262_48_15997C4(global_72)
  loc_E2D795: Exit Sub
  loc_E2D796: var_4F01 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2D738
  'Data Table: 4DA728
  loc_E2D728: Proc_5_0_110649C(&HFF, Me)
  loc_E2D730: Call Proc_262_48_15997C4(global_72)
  loc_E2D735: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2D6D8
  'Data Table: 4DA728
  Dim var_4F01 As Double
  loc_E2D6C8: Proc_5_0_110649C(&HFF, Me)
  loc_E2D6D0: Call Proc_262_48_15997C4(global_72)
  loc_E2D6D5: Exit Sub
  loc_E2D6D6: var_4F01 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2D678
  'Data Table: 4DA728
  Dim var_4F01 As Double
  loc_E2D668: Proc_5_0_110649C(&HFF, Me)
  loc_E2D670: Call Proc_262_48_15997C4(global_72)
  loc_E2D675: Exit Sub
  loc_E2D676: var_4F01 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1078838
  'Data Table: 4DA728
  Dim var_DC As String
  Dim var_B8 As Variant
  Dim Me As Recordset15
  Dim var_A8 As Fields15
  Dim var_BC As Field20
  Dim var_FC As String
  Dim var_10C As Variant
  Dim unk_4DA746 As Connection15
  Dim var_9C As Recordset15
  Dim var_114 As String
  Dim var_12A As Integer
  loc_10785B8: On Error Goto loc_107882F
  loc_10785BB: var_DC = "SELECT DISTINCT I1.VTime, I1.DocId, I1.VDate, I1.Remarks, G.Name AS Location, G.Code AS LocationCode, I1.VNo, I1.Vtype, I1.Vprefix, ItemMast.Name, Indent1.Qty, Indent1.Unit, Indent1.Sno, G1.Name AS Godown, G1.Code AS GodownCode,Indent1.Rate,Indent1.Amount FROM Indent AS I1 LEFT JOIN Indent1 ON I1.DocId = Indent1.DocId Left Join GodownMast G ON G.Code = I1.Department Left Join GodownMast G1 ON G1.Code = I1.Godown LEFT JOIN ItemMast ON Indent1.Item = ItemMast.Code And ItemMast.ItemType='Store' Where I1.DocID='"
  loc_10785D5: var_A8 = Me.Fields
  loc_10785DD: var_BC = var_A8.Item("DocID")
  loc_10785E5: var_CC = var_BC.Value
  loc_10785F1: var_FC = "' Order By Indent1.Sno"
  loc_10785F6: var_10C = var_DC & var_CC & var_FC 
  loc_10785FB: var_88 = CStr(var_10C)
  loc_1078616: If (var_88 = vbNullString) Then
  loc_1078619:   Exit Sub
  loc_107861A: End If
  loc_1078630: unk_4DA746.Execute var_88, var_CC, -1
  loc_107863B: Set var_9C = var_A8
  loc_107864A: var_110 = var_9C.RecordCount
  loc_1078658: If (var_110 <= 0) Then
  loc_1078661:   Call 0.Method_arg_50 (var_114)
  loc_1078682:   MsgBox("** No Records Found to Print **", &H40, CVar(var_114), var_10C, var_124)
  loc_1078692:   Exit Sub
  loc_1078693: End If
  loc_10786A9: Set var_A8 = var_9C 
  loc_10786B5: var_12A = CreateFieldDefFile(var_A8, MemVar_1F920B4 & "\Requisition.ttx")
  loc_10786BF: Set var_9C = var_A8
  loc_10786C5: var_B8 = CVar(var_12A) 'Integer
  loc_10786C8: var_98 = var_B8 'Variant
  loc_10786E4: var_114 = MemVar_1F920B4 & "\Requisition.RPT"
  loc_10786ED: Call 0.Method_arg_1C (var_114, var_B8, var_A8)
  loc_10786F8: MemVar_1F921E4 = var_A8
  loc_1078713: Call 0.Method_arg_90 (var_A8, var_110, var_9E, 1)
  loc_107871B: Call 0.Method_arg_24 (var_12A, &HFF)
  loc_1078727: For var_12E =  To CInt(var_110): var_A8 = var_12E 'Integer
  loc_1078740:   Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_1078748:   Call 0.Method_arg_20 (var_BC)
  loc_1078750:   Call 0.Method_arg_30 (var_114)
  loc_107876A:   If (var_114 = "Title") Then
  loc_1078780:     Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_1078788:     Call 0.Method_arg_20 (var_BC)
  loc_1078790:     Call 0.Method_arg_38 ("'Requisition Slip'")
  loc_107879C:   End If
  loc_107879F: Next var_12E 'Integer
  loc_10787BD: Call 0.Method_arg_64 (var_A8, CVar(var_9C))
  loc_10787C5: Call 0.Method_arg_2C (var_DC)
  loc_10787D3: Call 0.Method_arg_150 (var_FC)
  loc_10787DE: Call 0.Method_arg_50 (var_114)
  loc_10787E8: Set var_BC = Nothing
  loc_1078802: Set var_A8 = MemVar_1F921E4 
  loc_107880E: Proc_6_99_1483714(var_A8, 0, var_114)
  loc_1078819: MemVar_1F921E4 = var_A8
  loc_107882C: Set var_9C = Nothing
  loc_107882F: ' Referenced from: 10785B8
  loc_107882F: Proc_6_60_E62BC4(&HFF)
  loc_1078834: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E55E74
  'Data Table: 4DA728
  Dim Me As Recordset15
  loc_E55E3B: Me.Requery -1
  loc_E55E4B: Me.Requery -1
  loc_E55E5B: Me.Requery -1
  loc_E55E6B: Me.Requery -1
  loc_E55E70: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15AAAE4
  'Data Table: 4DA728
  Dim var_BC As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_B8 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_C4 As String
  Dim var_15C As String
  Dim unk_4DA746 As Connection15
  Dim var_C0 As Variant
  Dim var_164 As Variant
  Dim var_168 As Variant
  Dim Me As Variant
  Dim var_8E As Integer
  Dim var_5C4 As Double
  Dim var_198 As TextBox
  Dim var_1D0 As Label
  Dim var_24C As Variant
  Dim var_298 As Variant
  Dim var_2E4 As TextBox
  Dim var_330 As Variant
  Dim var_37C As TextBox
  Dim var_3D8 As TextBox
  Dim var_178 As String
  Dim var_17C As String
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_204 As Variant
  Dim var_244 As Variant
  Dim var_270 As Variant
  Dim var_2CC As Variant
  Dim var_354 As Variant
  Dim var_374 As Variant
  Dim var_3B0 As Variant
  Dim var_40C As Variant
  Dim var_534 As Variant
  Dim var_194 As TextBox
  Dim var_248 As MSHFlexGrid
  Dim var_840 As Double
  Dim var_294 As MSHFlexGrid
  Dim var_848 As Double
  Dim var_2E0 As MSHFlexGrid
  Dim var_850 As Double
  Dim var_32C As MSHFlexGrid
  Dim var_4C0 As Variant
  Dim var_794 As Variant
  Dim var_7B4 As Variant
  Dim var_378 As MSHFlexGrid
  Dim var_170 As String
  Dim var_19C As String
  Dim var_5DC As String
  Dim var_5B8 As Variant
  Dim var_814 As Variant
  Dim var_88 As Recordset15
  loc_15A9A28: On Error Goto loc_15AAAC9
  loc_15A9A36: Set var_B8 = Me.Txt
  loc_15A9A3C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_15A9A65: If (Proc_6_27_EA565C(var_BC, "Invoice Date") = 0) Then
  loc_15A9A68:   Exit Sub
  loc_15A9A69: End If
  loc_15A9A74: Set var_B8 = Me.Txt
  loc_15A9A7A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_BC)
  loc_15A9AA3: If (Proc_6_27_EA565C(var_BC, "Invoice No") = 0) Then
  loc_15A9AA6:   Exit Sub
  loc_15A9AA7: End If
  loc_15A9AAA: Call Proc_262_49_108DA00(var_C6)
  loc_15A9AB5: If (var_C6 = 0) Then
  loc_15A9AB8:   Exit Sub
  loc_15A9AB9: End If
  loc_15A9AC4: Set var_B8 = Me.TxtGrid
  loc_15A9ACA: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_BC)
  loc_15A9AD2: var_BC.Visible = False
  loc_15A9ADE: Call Proc_262_52_F31C88(var_BC)
  loc_15A9AE3: var_D8 = 1
  loc_15A9AEC: var_F8 = 1
  loc_15A9B0A: var_128 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15A9B10: var_138 = Trim(var_128)
  loc_15A9B2C: If (var_138 = vbNullString) Then
  loc_15A9B42:   var_118 = "Item Detail Required "
  loc_15A9B48:   MsgBox(var_118, 0, var_128, var_138, var_158)
  loc_15A9B6B:   Me.FGrid.Row = 1
  loc_15A9B77:   Set var_B8 = Me.FGrid
  loc_15A9B8C:   var_D8 = CVar(CLng("14737632")) 'Long
  loc_15A9B9B:   Me.FGrid.CellBackColor = var_D8
  loc_15A9BA3:   Exit Sub
  loc_15A9BA4: End If
  loc_15A9BA7: Call Proc_262_55_100FA84(var_C6, FGrid.DispID_8001)
  loc_15A9BB2: If (var_C6 = 0) Then
  loc_15A9BC0:   Set var_B8 = Me.Txt
  loc_15A9BC6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC)
  loc_15A9BCE:   var_BC.SetFocus
  loc_15A9BDA:   Exit Sub
  loc_15A9BDB: End If
  loc_15A9BDF: Set var_B8 = Me.TopCtrl1
  loc_15A9BE5: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_F8)
  loc_15A9BED: var_C4 = CStr(var_D8)
  loc_15A9BFE: If (var_C4 = "Add") Then
  loc_15A9C2E:   Set var_B8 = Me.Txt
  loc_15A9C34:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC, var_C4, "Select Count(*) From INDENT1 Where DocID='", var_118, -1)
  loc_15A9C3C:   var_C0 = var_BC.Text
  loc_15A9C55:   unk_4DA746.Execute var_164 & var_C4 & "'", 0, var_168
  loc_15A9C65:    = var_164.Item()
  loc_15A9C6D:    = var_168.Value
  loc_15A9C9A:   If (var_C0.Fields > 0) Then
  loc_15A9CA3:     Call Proc_262_54_114E63C(MemVar_1F92044)
  loc_15A9CB6:     Set var_B8 = Me.Txt
  loc_15A9CBC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC)
  loc_15A9CC4:     var_BC.Text = var_C4
  loc_15A9CF2:     Set var_B8 = Me.Txt
  loc_15A9CF8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_BC, var_C4, "Requisition Slip No has Changed to :", 0)
  loc_15A9D00:     var_128 = var_BC.Text
  loc_15A9D0C:     MsgBox(CVar(var_138 & var_C4), var_158, var_C4, , )
  loc_15A9D26:   End If
  loc_15A9D29: Else
  loc_15A9D46:   var_BC = Me.Fields.Item("DocID")
  loc_15A9D57:   var_C4 = CStr(var_BC.Value)
  loc_15A9D5D:   global_84 = var_C4
  loc_15A9D6E: End If
  loc_15A9D7C: unk_4DA746.BeginTrans var_16C
  loc_15A9D9F: Set var_B8 = Me.Txt
  loc_15A9DA5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC, var_C4, "Delete From INDENT Where DocID='")
  loc_15A9DAD: var_118 = var_BC.Text
  loc_15A9DB6: var_15C = -1 & var_C4
  loc_15A9DC6: unk_4DA746.Execute var_164 & var_C4 & "'", var_C0, &HFF
  loc_15A9DFE: Set var_B8 = Me.Txt
  loc_15A9E04: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC, var_C4, "Delete From INDENT1 Where DocID='")
  loc_15A9E0C: var_118 = var_BC.Text
  loc_15A9E15: var_15C = -1 & var_C4
  loc_15A9E25: unk_4DA746.Execute var_164 & var_C4 & "'", var_C0, 
  loc_15A9E4D: Set var_B8 = Me.Txt
  loc_15A9E53: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC)
  loc_15A9E6E: Set var_C0 = Me.Txt
  loc_15A9E74: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_164)
  loc_15A9E89: var_5C4 = Val(var_164.Text)
  loc_15A9E97: Set var_168 = Me.Txt
  loc_15A9E9D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_180)
  loc_15A9EAC: Proc_6_7_F25D88(var_128, CVar(var_180))
  loc_15A9EBF: Set var_194 = Me.Txt
  loc_15A9EC5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_198)
  loc_15A9ED9: Set var_1D0 = Me.LblVPrefix
  loc_15A9EF2: Set var_248 = Me.Txt
  loc_15A9EF8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_24C)
  loc_15A9F13: Set var_294 = Me.Txt
  loc_15A9F19: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_298)
  loc_15A9F34: Set var_2E0 = Me.Txt
  loc_15A9F3A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2E4)
  loc_15A9F42: var_2E8 = var_2E4.Text
  loc_15A9F55: Set var_32C = Me.Txt
  loc_15A9F5B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_330)
  loc_15A9F76: Set var_378 = Me.Txt
  loc_15A9F7C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_37C)
  loc_15A9FA5: Set var_3D4 = Me.Txt
  loc_15A9FAB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_3D8)
  loc_15A9FC9: Proc_6_104_ED5D18(var_47C)
  loc_15A9FD2: Set var_4B0 = Me.TopCtrl1
  loc_15A9FD8: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_5C4)
  loc_15A9FE6: var_514 = "E"
  loc_15AA023: var_15C = "Insert Into INDENT(Docid,VNo,VDate,VType,VPrefix,Site_Code,Department,Godown,vtime,Remarks,Company,RefDocId,U_Name,U_EntDt,U_AE,LogSite_Code) Values (" & "'"
  loc_15AA039: var_178 = CStr(var_5C4)
  loc_15AA079: var_204 = CVar(var_15C & var_BC.Text & "'," & var_178 & ",") & var_128 & ",'" & CVar(var_198.Tag) & "','" & CVar(var_1D0.Caption) & "','" 
  loc_15AA0D8: var_354 = var_204 & CVar(MemVar_1F92070) & "'," & "'" & CVar(var_24C.Tag) & "','" & CVar(var_298.Tag) & "','" & CVar(var_2E8) & "','" & CVar(var_330.Text) 
  loc_15AA0E1: var_374 = var_354 & "','" 
  loc_15AA0EB: var_3B0 = var_374 & CVar(Proc_6_38_E68A98(CVar(var_37C.Tag))) 
  loc_15AA131: var_534 = var_3B0 & "','" & CVar(Proc_6_38_E68A98(CVar(var_3D8.Tag))) & "','" & CVar(MemVar_1F920C8) & "'," & var_47C & ",'" & IIf((CStr(var_4C0) = "Add"), "A", var_514) 
  loc_15AA15B: unk_4DA746.Execute CStr(var_534 & "','" & CVar(MemVar_1F92078) & "')"), var_5B8, -1
  loc_15AA232: For var_5D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_98 = var_5D0 'Integer
  loc_15AA23C:   var_D8 = CVar(CLng(var_98)) 'Long
  loc_15AA244:   var_F8 = CVar(CLng(1)) 'Long
  loc_15AA25E:   var_128 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15AA28B:   Set var_BC = Me.FGrid
  loc_15AA2CA:   If CBool(CVar(CLng(3)) And (CDbl(Val(CStr(var_BC.TextMatrix)))) <> CDbl(0))) Then
  loc_15AA2DB:     Set var_B8 = Me.Txt
  loc_15AA2E1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC, var_178, CVar(CLng(var_98)), (Trim(var_128) <> vbNullString))
  loc_15AA2E9:     var_F8 = var_BC.Text
  loc_15AA2FC:     Set var_C0 = Me.Txt
  loc_15AA302:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_164, var_2E8)
  loc_15AA30A:     var_D8 = var_164.Tag
  loc_15AA316:     Set var_168 = Me.LblVPrefix
  loc_15AA32F:     Set var_180 = Me.Txt
  loc_15AA335:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_194, var_5D8)
  loc_15AA33D:     1 = var_194.Text
  loc_15AA358:     Set var_198 = Me.Txt
  loc_15AA35E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1D0)
  loc_15AA36D:     Proc_6_7_F25D88(var_128, CVar(var_1D0))
  loc_15AA376:     var_F8 = CVar(CLng(var_98)) 'Long
  loc_15AA37E:     var_148 = CVar(CLng(7)) 'Long
  loc_15AA39D:     var_2CC = CVar(CLng(var_98)) 'Long
  loc_15AA3C7:     var_840 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15AA3E5:     var_244 = Me.FGrid.TextMatrix)
  loc_15AA41F:     var_848 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15AA450:     var_850 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15AA456:     Proc_6_104_ED5D18(var_374, var_850, CVar(CLng(9)), CVar(CLng(var_98)), var_848, CVar(CLng(8)), CVar(CLng(var_98)), var_244)
  loc_15AA45F:     Set var_2E4 = Me.TopCtrl1
  loc_15AA465:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(2)))
  loc_15AA4C8:     Proc_6_39_E7C810(var_47C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_98)), CVar(CLng(var_98)), var_840)
  loc_15AA4F9:     Proc_6_39_E7C810(var_514, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_98)), CVar(CLng(3)))
  loc_15AA502:     var_794 = CVar(CLng(var_98)) 'Long
  loc_15AA50A:     var_7B4 = CVar(CLng(6)) 'Long
  loc_15AA54E:     var_170 = "Insert Into INDENT1(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate," & "Item,Qty,Unit,Rate,Amount," & "U_Name,U_EntDt,U_AE,ConvFactor,WtQty,WtUnit,LogSite_Code) "
  loc_15AA55C:     var_17C = var_170 & "Values(" & "'"
  loc_15AA5AE:     var_5DC = var_17C & var_178 & "'," & CStr(var_98) & ",'" & var_2E8 & "','" & var_168.Caption & "','" & MemVar_1F92070 & "'," & vbNullString
  loc_15AA5E1:     var_1CC = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15AA60C:     var_270 = CVar(var_5DC & CStr(Val(var_5D8)) & ",") & var_128 & "," & "'" & var_1CC & "'," & CVar(var_840) & ",'" & CVar(CStr(var_244)) 
  loc_15AA667:     var_40C = var_270 & "'," & CVar(var_848) & "," & CVar(var_850) & ",'" & CVar(MemVar_1F920C8) & "'," & var_374 & ",'" & IIf((CStr(var_3B0) = "Add"), "A", "E") 
  loc_15AA6B7:     var_814 = var_40C & "'," & var_47C & "," & var_514 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_15AA6C5:     unk_4DA746.Execute CStr(var_814), var_838, -1
  loc_15AA799:   End If
  loc_15AA79C: Next var_5D0 'Integer
  loc_15AA7A5: Set var_B8 = Me.TopCtrl1
  loc_15AA7AB: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_15AA7C4: If (CStr() = "Add") Then
  loc_15AA7DB:   var_C4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_15AA801:   Set var_B8 = Me.Txt
  loc_15AA807:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_BC, var_170, var_C4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='")
  loc_15AA80F:   var_1AC = var_BC.Tag
  loc_15AA818:   var_178 = -1 & var_170
  loc_15AA81F:   var_138 = CVar(var_178 & "' And VP.Date_From<=") 'String
  loc_15AA830:   Set var_C0 = Me.Txt
  loc_15AA836:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_164, var_17C)
  loc_15AA83E:   var_138 = var_164.Text
  loc_15AA84C:   Proc_6_7_F25D88(var_128, CVar(var_17C))
  loc_15AA86B:   unk_4DA746.Execute CStr(var_168 & var_128 & " Order By VP.Date_From DESC"), , 
  loc_15AA876:   Set var_88 = var_168
  loc_15AA8BA:   If (var_88.RecordCount > 0) Then
  loc_15AA8CB:     Set var_B8 = Me.Txt
  loc_15AA8D1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_BC)
  loc_15AA8D9:     var_C4 = var_BC.Text
  loc_15AA8E6:     var_5C4 = Val(var_C4)
  loc_15AA8EF:     var_D8 = "V_Type"
  loc_15AA936:     Proc_6_7_F25D88(var_1AC, CVar(var_88.Fields.Item("Date_From")))
  loc_15AA969:     var_178 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_5C4) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_15AA991:     var_19C = CStr(CVar(var_178 & MemVar_1F92078 & "') and V_Type='") & var_88.Fields.Item(var_D8).Value & "' and Date_From=" & var_1AC)
  loc_15AA99B:     unk_4DA746.Execute var_19C, var_1CC, -1
  loc_15AA9D5:   End If
  loc_15AA9D5: End If
  loc_15AA9DB: unk_4DA746.CommitTrans
  loc_15AA9E2: var_8E = 0
  loc_15AA9F3: Set var_B8 = Me.Txt
  loc_15AA9F9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_BC, var_C4)
  loc_15AAA01: var_8E = var_BC.Text
  loc_15AAA15: var_8E = 0
  loc_15AAA23: Me.Requery -1
  loc_15AAA4D: Me.Find "SearchCode ='" & "SearchCode ='" & var_C4 & "'", 0, 1
  loc_15AAA5D: Set var_B8 = Me.TopCtrl1
  loc_15AAA63: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D8)
  loc_15AAA7C: If (CStr(var_8E) = "Add") Then
  loc_15AAA7F:   Call TopCtrl1_UnknownEvent_A()
  loc_15AAA84:   Exit Sub
  loc_15AAA85: End If
  loc_15AAAA8: Call Proc_262_51_F7AA20(Proc_5_1_100CB50("INI", Me, global_72), var_194)
  loc_15AAAB3: Call Proc_262_48_15997C4(var_5C4)
  loc_15AAABD: global_112 = 0
  loc_15AAAC5: Set var_88 = Nothing
  loc_15AAAC8: Exit Sub
  loc_15AAAC9: ' Referenced from: 15A9A28
  loc_15AAACF: If (var_8E = &HFF) Then
  loc_15AAAD8:   unk_4DA746.RollbackTrans
  loc_15AAADD: End If
  loc_15AAADD: Proc_6_60_E62BC4(global_112)
  loc_15AAAE2: Exit Sub
End Sub

Private Sub Form_Load() '1327130
  'Data Table: 4DA728
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_C0 As Variant
  Dim var_88 As Variant
  Dim var_CC As String
  Dim var_D0 As String
  Dim unk_4DA746 As Connection15
  Dim Me As Recordset15
  Dim var_E0 As Variant
  loc_1326994: On Error Goto loc_1327128
  loc_13269A5: Set var_88 = Me.Txt
  loc_13269AB: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_13269CA: Me.DGDepart.Left = CVar(var_8C.Left)
  loc_13269E6: Set var_B4 = Me.Txt
  loc_13269EC: Call 0.Method_Form_Load0 (CInt(4), var_B8)
  loc_1326A07: Set var_88 = Me.Txt
  loc_1326A0D: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_1326A25: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1326A34: Me.DGDepart.Top = CVar(var_8C.Left)
  loc_1326A54: Set var_88 = Me.Txt
  loc_1326A5A: Call 0.Method_Form_Load0 (CInt(9), var_8C)
  loc_1326A79: Me.DGGodown.Left = CVar(var_8C.Left)
  loc_1326A95: Set var_B4 = Me.Txt
  loc_1326A9B: Call 0.Method_Form_Load0 (CInt(9), var_B8)
  loc_1326AB6: Set var_88 = Me.Txt
  loc_1326ABC: Call 0.Method_Form_Load0 (CInt(9), var_8C)
  loc_1326AD4: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1326ADD: Set var_C0 = Me.DGGodown
  loc_1326AE3: var_C0.Top = CVar(var_8C.Left)
  loc_1326B03: Set var_8C = Me.Txt
  loc_1326B09: Call 0.Method_Form_Load0 (CInt(&HA), var_B4)
  loc_1326B2F: var_A0 = CVar((Me.FrBanq.Left + var_B4.Left)) 'Single
  loc_1326B3E: Me.DGBookNo.Left = CVar(var_8C.Left)
  loc_1326B5C: Set var_8C = Me.Txt
  loc_1326B62: Call 0.Method_Form_Load0 (CInt(&HA), var_B4)
  loc_1326B7D: Set var_B8 = Me.Txt
  loc_1326B83: Call 0.Method_Form_Load0 (CInt(&HA), var_C0)
  loc_1326BB1: var_A0 = CVar((((Me.FrBanq.Top + var_B4.Top) + var_C0.Height) + CDbl(&H1E))) 'Single
  loc_1326BC0: Me.DGBookNo.Top = CVar(var_8C.Left)
  loc_1326BE2: Set var_88 = Me.Txt
  loc_1326BE8: Call 0.Method_Form_Load0 (CInt(7), var_8C)
  loc_1326C07: Me.DGCompany.Left = CVar(var_8C.Left)
  loc_1326C23: Set var_B4 = Me.Txt
  loc_1326C29: Call 0.Method_Form_Load0 (CInt(7), var_B8)
  loc_1326C4A: Call 0.Method_Form_Load0 (CInt(7), var_8C)
  loc_1326C62: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1326C71: Me.DGCompany.Top = CVar(var_8C.Left)
  loc_1326C9E: var_D0 = "Select ReqCompWise,BanquetKitchen,DateEditableOnRequisitionYN from Enviro Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')"
  loc_1326CA7: unk_4DA746.Execute var_D0, var_E0, -1
  loc_1326CB8: Set global_172 = Me.Txt
  loc_1326CFE: global_176 = Proc_6_38_E68A98(CVar(Me.Fields.Item("ReqCompWise")))
  loc_1326D3C: global_116 = Proc_6_38_E68A98(CVar(Me.Fields.Item("BanquetKitchen")))
  loc_1326D63: var_8C = Me.Fields.Item("DateEditableOnRequisitionYN")
  loc_1326D7A: global_120 = Proc_6_38_E68A98(CVar(var_8C))
  loc_1326D92: If (global_176 <> "Yes") Then
  loc_1326DA2:   Set var_88 = Me.Txt
  loc_1326DA8:   Call 0.Method_Form_Load0 (CInt(7), var_8C)
  loc_1326DB0:   var_8C.Visible = False
  loc_1326DC7:   Set var_88 = Me.Label1
  loc_1326DCD:   Call 0.Method_Form_Load0 (4, var_8C)
  loc_1326DD5:   var_8C.Visible = False
  loc_1326DE1: End If
  loc_1326DEB: Set global_56 = New 
  loc_1326DFD: Me.CursorLocation = 3
  loc_1326E20: var_CC = "Select Code,I.Name as Name ,I.IssueUnit,I.Convratio,I.Unit,Case When I.LPurRate=0 Then I.PurchRate Else I.LPurRate End as Rate From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1326E31: Me.Open CVar(var_CC & "' or LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by Name"), CVar(MemVar_1F92044), 3
  loc_1326E45: CVarUnk
  loc_1326E4A: VerifyVarObj
  loc_1326E50: Set var_88 = Me.DGItem
  loc_1326E56: LateIdStAd
  loc_1326E6E: Set global_60 = New 
  loc_1326E80: Me.DGItem.CursorLocation = 3
  loc_1326EAA: var_E0 = CVar("Select Code,D.Name as Name From GodownMast D Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1326EB4: Me.Open var_E0, CVar(MemVar_1F92044), 3
  loc_1326EC8: CVarUnk
  loc_1326ECD: VerifyVarObj
  loc_1326ED3: Set var_88 = Me.DGDepart
  loc_1326ED9: LateIdStAd
  loc_1326EF1: Set global_64 = New 
  loc_1326F03: Me.DGDepart.CursorLocation = 3
  loc_1326F2D: var_E0 = CVar("Select Code,D.Name as Name From GodownMast D Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1326F37: Me.Open var_E0, CVar(MemVar_1F92044), 3
  loc_1326F4B: CVarUnk
  loc_1326F50: VerifyVarObj
  loc_1326F56: Set var_88 = Me.DGGodown
  loc_1326F5C: LateIdStAd
  loc_1326F75: If (global_176 = "Yes") Then
  loc_1326F82:   Set global_68 = New 
  loc_1326F94:   Me.DGGodown.CursorLocation = 3
  loc_1326FB7:   var_CC = "Select Sub.Subcode as Code, Sub.Name from Subgroup Sub Inner Join Acgroup AcG On Sub.Groupcode=AcG.Groupcode where AcG.GroupName='SUNDRY DEBTORS' and Sub.CompanyType='Corporate' and (Sub.LOGSITE_CODE='" & MemVar_1F92078
  loc_1326FC8:   Me.Open CVar(var_CC & "' or Sub.LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F92044), 3
  loc_1326FDC:   CVarUnk
  loc_1326FE1:   VerifyVarObj
  loc_1326FE7:   Set var_88 = Me.DGCompany
  loc_1326FED:   LateIdStAd
  loc_1326FFB: End If
  loc_1327017: Me.CursorLocation = 3
  loc_1327041: var_E0 = CVar("Select Distinct I.Docid as SearchCode,I.DocID,LogSite_Code,Site_Code From Indent I Where I.LOGSITE_CODE='" & MemVar_1F92078 & "' AND  VType in (Select V_Type from Voucher_Type Where NCAT='RQS' ) Order by Docid") 'String
  loc_132704B: Me.Open var_E0, CVar(MemVar_1F92044), 3
  loc_1327079: Call Proc_262_51_F7AA20(Proc_5_1_100CB50("INI", Me, New, 1, -1, Me, global_68, 1), -1, Me, global_64)
  loc_1327093: Me.LblUser.Left = CDbl(13500)
  loc_13270AA: Me.LblUser.Top = CDbl(7800)
  loc_13270C1: Me.LblLDt.Top = CDbl(8160)
  loc_13270D8: Me.LblLDt.Left = CDbl(13500)
  loc_13270E7: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), 1, -1)
  loc_13270FA: Me.FrBanq.BackColor = CLng(MemVar_1F921B0)
  loc_132710F: Set var_88 = Me.FGrid
  loc_1327115: var_88.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_132711D: Call Proc_262_45_11FEE7C(var_88)
  loc_1327122: Call Proc_262_48_15997C4(global_60)
  loc_1327127: Exit Sub
  loc_1327128: ' Referenced from: 1326994
  loc_1327128: Proc_6_60_E62BC4()
  loc_132712D: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4888
  'Data Table: 4DA728
  Dim var_8C As Label
  loc_ED47E6: Call 0.Method_arg_50 (var_88)
  loc_ED47F8: Me.LblFormCaption.Caption = var_88
  loc_ED4811: Me.LblFormCaption.Left = CDbl(0)
  loc_ED481D: Set var_A0 = Me.TopCtrl1
  loc_ED4823: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED4830: Set var_8C = Me.TopCtrl1
  loc_ED4836: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED4850: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED486B: Call 0.Method_arg_100 (var_B8)
  loc_ED487D: Me.LblFormCaption.Width = var_B8
  loc_ED4885: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E98AB4
  'Data Table: 4DA728
  loc_E98A37: Set global_56 = Nothing
  loc_E98A49: Set global_76 = Nothing
  loc_E98A5B: Set global_68 = Nothing
  loc_E98A6D: Set global_60 = Nothing
  loc_E98A7F: Set global_64 = Nothing
  loc_E98A91: Set global_72 = Nothing
  loc_E98A9D: global_52 = 0
  loc_E98AAB: Set global_172 = Nothing
  loc_E98AB2: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25074
  'Data Table: 4DA728
  loc_E25059: If (global_52 = &HFF) Then
  loc_E25069:   Me.Global.Unload Me
  loc_E25071: End If
  loc_E25071: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2DD38
  'Data Table: 4DA728
  loc_E2DD0C: On Error Goto loc_E2DD30
  loc_E2DD27: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2DD2F: Exit Sub
  loc_E2DD30: ' Referenced from: E2DD0C
  loc_E2DD30: Proc_6_60_E62BC4(Shift)
  loc_E2DD35: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '114A3B0
  'Data Table: 4DA728
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim Me As Recordset15
  Dim var_108 As TextBox
  loc_114A024: Call Proc_262_52_F31C88()
  loc_114A035: If (Index = 0) Then
  loc_114A04E:   Me.FGrid.CellBackColor = CVar(CLng(global_80))
  loc_114A069:   var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114A0A8:   Set var_108 = Me.TxtGrid
  loc_114A0AE:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_114A0B6:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_114A0F7:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_114A10D:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114A115:     var_E0 = CVar(CLng(7)) 'Long
  loc_114A135:     global_136 = CStr(Me.FGrid.TextMatrix))
  loc_114A153:     var_118 = Me.RecordCount
  loc_114A18B:     If ((var_118 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_114A18E:       Exit Sub
  loc_114A18F:     End If
  loc_114A1A2:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114A1AA:     var_E0 = CVar(CLng(1)) 'Long
  loc_114A1DD:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_114A1E6:       Me.MoveFirst
  loc_114A206:       var_E0 = CVar(CLng(7)) 'Long
  loc_114A20F:       Set var_C0 = Me.FGrid
  loc_114A226:       Proc_6_17_EAA2B0(var_12C, CVar(CStr(var_C0.TextMatrix))), var_E0, CVar(CLng(Me.FGrid.Row)), var_E0, CVar(CLng(Me.FGrid.Row)))
  loc_114A24F:       Me.Find CStr("Code =" & var_12C), 0, 1
  loc_114A27F:       If (Me.EOF = &HFF) Then
  loc_114A288:         Me.MoveFirst
  loc_114A28D:       End If
  loc_114A28D:     End If
  loc_114A29A:     Set var_F4 = Me.TxtGrid
  loc_114A2A0:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_160, var_15C, var_E0)
  loc_114A2A8:     var_98 = var_108.Width
  loc_114A2BA:     Set var_AC = Me.TxtGrid
  loc_114A2C0:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_118)
  loc_114A2C8:     var_114 = var_C0.Left
  loc_114A2D4:     var_98 = CVar((var_118 + var_160)) 'Single
  loc_114A2E3:     Me.DGItem.Left = var_98
  loc_114A317:     Me.DGItem.Top = CVar(CDbl(Me.FGrid.Top))
  loc_114A339:     var_98 = CVar(CDbl(Me.FGrid.Height)) 'Single
  loc_114A342:     Set var_C0 = Me.DGItem
  loc_114A348:     var_C0.Height = var_98
  loc_114A35A:   Else
  loc_114A361:     If (var_114 = CLng(3)) Then
  loc_114A373:       Set var_AC = Me.TxtGrid
  loc_114A379:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, 0)
  loc_114A381:       var_C0.MaxLength = var_98
  loc_114A396:       If (global_110 = 0) Then
  loc_114A3A1:         var_110 = "{Home}+{End}"
  loc_114A3A7:         Proc_303_0_FB9B68(CStr("Code =" & var_12C), 0)
  loc_114A3AF:       End If
  loc_114A3AF:     End If
  loc_114A3AF:   End If
  loc_114A3AF: End If
  loc_114A3AF: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10F8088
  'Data Table: 4DA728
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_10F7D6C: If (KeyCode = 0) Then
  loc_10F7D79:   If (CLng(Shift) = &H1B) Then
  loc_10F7D89:     Set var_8C = Me.TxtGrid
  loc_10F7D8F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_10F7DA9:     Set var_98 = Me.TxtGrid
  loc_10F7DAF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_10F7DB7:     var_9C.Text = var_90.Tag
  loc_10F7DD3:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10F7DD8:     Call Proc_262_52_F31C88(arg_14)
  loc_10F7DE1:     Set var_8C = Me.FGrid
  loc_10F7DFE:     Set var_8C = Me.TxtGrid
  loc_10F7E04:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_10F7E0C:     var_90.Visible = FGrid.DispID_8001
  loc_10F7E18:     Exit Sub
  loc_10F7E19:   End If
  loc_10F7E2C:   var_B0 = CLng(Me.FGrid.Col)
  loc_10F7E3C:   If (var_B0 = CLng(1)) Then
  loc_10F7E57:     Set var_9C = Nothing
  loc_10F7E90:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_56, Shift, &HFF)
  loc_10F7EAE:     If (CLng(Shift) = &HD) Then
  loc_10F7EB7:       Call Proc_262_47_14910A4(KeyCode, var_B2, 1, Nothing)
  loc_10F7EC2:       If (var_B2 = &HFF) Then
  loc_10F7F08:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_110, 3, 2)
  loc_10F7F18:       End If
  loc_10F7F18:     End If
  loc_10F7F1B:   Else
  loc_10F7F22:     If (var_B0 = CLng(3)) Then
  loc_10F7F65:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_110 = &HFF))) Then
  loc_10F7F6E:         Call Proc_262_47_14910A4(KeyCode, var_B2, 3, 0)
  loc_10F7F79:         If (var_B2 = &HFF) Then
  loc_10F7FBF:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_110, 4, 0)
  loc_10F7FCF:         End If
  loc_10F7FCF:       End If
  loc_10F7FD2:     Else
  loc_10F7FD9:       If (var_B0 = CLng(4)) Then
  loc_10F801C:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_110 = &HFF))) Then
  loc_10F8025:           Call Proc_262_47_14910A4(KeyCode, var_B2, 0, 0)
  loc_10F8030:           If (var_B2 = &HFF) Then
  loc_10F8076:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_110, 4, 0)
  loc_10F8086:           End If
  loc_10F8086:         End If
  loc_10F8086:       End If
  loc_10F8086:     End If
  loc_10F8086:   End If
  loc_10F8086: End If
  loc_10F8086: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F51490
  'Data Table: 4DA728
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F51373: Proc_6_58_E054C0(arg_10)
  loc_F51384: If (KeyAscii = 0) Then
  loc_F5139A:   var_A0 = CLng(Me.FGrid.Col)
  loc_F513AA:   If (var_A0 = CLng(1)) Then
  loc_F513C9:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F513D0:       Set var_AC = Me.TxtGrid
  loc_F513DB:       var_A4 = "Name"
  loc_F513F6:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_56, arg_10)
  loc_F51405:     End If
  loc_F51408:   Else
  loc_F5140F:     If (var_A0 = CLng(3)) Then
  loc_F5141C:       Set var_8C = Me.TxtGrid
  loc_F51422:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F5143D:       Proc_6_42_129A86C(var_AC, arg_10, 8, 3)
  loc_F5144C:     Else
  loc_F51453:       If (var_A0 = CLng(4)) Then
  loc_F51460:         Set var_8C = Me.TxtGrid
  loc_F51466:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F51481:         Proc_6_42_129A86C(var_AC, arg_10, 6)
  loc_F5148D:       End If
  loc_F5148D:     End If
  loc_F5148D:   End If
  loc_F5148D: End If
  loc_F5148D: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1062334
  'Data Table: 4DA728
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As Variant
  Dim var_180 As Double
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_178 As MSHFlexGrid
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_BC As Variant
  Dim var_A8 As String
  loc_10620D4: On Error Goto loc_106232C
  loc_10620E3: If (KeyCode = 0) Then
  loc_10620F9:   var_A0 = CLng(Me.FGrid.Col)
  loc_1062109:   If (var_A0 = CLng(1)) Then
  loc_106212F:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_1062140:       Call TxtGrid_KeyDown(KeyCode, global_108)
  loc_1062149:       Set var_AC = Me.TxtGrid
  loc_1062154:       var_A8 = "Name"
  loc_106216F:       Proc_6_89_146F1AC(var_AC, KeyCode, global_56, Shift, var_A8)
  loc_106217E:     End If
  loc_1062181:   Else
  loc_1062188:     If Not (var_A0 = CLng(3)) Then
  loc_1062192:       If (var_A0 = CLng(4)) Then
  loc_1062195:       End If
  loc_10621A2:       Set var_8C = Me.TxtGrid
  loc_10621A8:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, &HFF)
  loc_10621B0:       0 = var_AC.Text
  loc_10621D3:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10621EB:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1062218:       var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_1062220:       Set var_178 = Me.FGrid
  loc_1062226:       LateIdCallSt
  loc_1062260:       var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1062268:       var_174 = CVar(CLng(4)) 'Long
  loc_106228A:       var_180 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10622A0:       var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10622A8:       var_1C4 = CVar(CLng(5)) 'Long
  loc_10622C0:       var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10622C8:       var_124 = CVar(CLng(3)) 'Long
  loc_10622F0:       var_164 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * var_180))) 'String
  loc_10622F8:       Set var_1E8 = Me.FGrid
  loc_10622FE:       LateIdCallSt
  loc_106232B:     End If
  loc_106232B:   End If
  loc_106232B: End If
  loc_106232B: Exit Sub
  loc_106232C: ' Referenced from: 10620D4
  loc_106232C: Proc_6_60_E62BC4(var_1E8, var_164, var_124, var_BC, var_1C4, var_1A4, var_180, var_174)
  loc_1062331: Exit Sub
  loc_1062332: ArrayRebase1Var
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23478
  'Data Table: 4DA728
  Dim arg_10 As Integer
  loc_E23460: If (Cancel = 0) Then
  loc_E23469:   Call Proc_262_47_14910A4(Cancel, var_88)
  loc_E23472:   arg_10 = Not(var_88)
  loc_E23475: End If
  loc_E23475: Exit Sub
End Sub

Private Sub DGGodown_UnknownEvent_9 'F4EB24
  'Data Table: 4DA728
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4EA1B: Me.DGGodown.Visible = False
  loc_F4EA3A: If (Me.RecordCount > 0) Then
  loc_F4EA79:   Set var_B4 = Me.Txt
  loc_F4EA7F:   Call 0.Method_DGGodown_UnknownEvent_90 (CInt(9), var_B8)
  loc_F4EA87:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4EABA:   var_B0 = Me.Fields.Item("Code")
  loc_F4EAD9:   Set var_B4 = Me.Txt
  loc_F4EADF:   Call 0.Method_DGGodown_UnknownEvent_90 (CInt(9), var_B8)
  loc_F4EAE7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4EAFD: End If
  loc_F4EB08: Set var_A8 = Me.Txt
  loc_F4EB0E: Call 0.Method_DGGodown_UnknownEvent_90 (CInt(9))
  loc_F4EB16: var_B0.SetFocus
  loc_F4EB22: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1266DC8
  'Data Table: 4DA728
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim var_B0 As String
  Dim var_F8 As Variant
  loc_126684E: Set var_88 = Me.Txt
  loc_1266854: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1266862: Proc_6_74_E226B0(var_8C)
  loc_126686E: Call Proc_262_52_F31C88(var_8C)
  loc_1266876: var_92 = Index
  loc_1266881: If (var_92 = CInt(4)) Then
  loc_12668D2:   Set var_88 = Me.Txt
  loc_12668D8:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12668E0:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12668F8:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_12668FB:     Exit Sub
  loc_12668FC:   End If
  loc_1266909:   Set var_88 = Me.Txt
  loc_126690F:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1266922:   global_128 = var_8C.Text
  loc_126693D:   Set var_88 = Me.Txt
  loc_1266943:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_126694B:   var_A0 = var_8C.Text
  loc_1266953:   var_D4 = CVar(var_A0) 'String
  loc_1266998:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_12669A1:     Me.MoveFirst
  loc_12669C6:     Set var_88 = Me.Txt
  loc_12669CC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_12669D4:     0 = var_8C.Text
  loc_12669E2:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0))
  loc_12669F8:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_1266A10:   End If
  loc_1266A13: Else
  loc_1266A1B:   If (var_92 = CInt(9)) Then
  loc_1266A6C:     Set var_88 = Me.Txt
  loc_1266A72:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1266A92:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1266A95:       Exit Sub
  loc_1266A96:     End If
  loc_1266AA3:     Set var_88 = Me.Txt
  loc_1266AA9:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1266ABC:     global_128 = var_8C.Text
  loc_1266AD7:     Set var_88 = Me.Txt
  loc_1266ADD:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1266AE5:     var_A0 = var_8C.Text
  loc_1266AED:     var_D4 = CVar(var_A0) 'String
  loc_1266B32:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1266B3B:       Me.MoveFirst
  loc_1266B60:       Set var_88 = Me.Txt
  loc_1266B66:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1266B6E:       0 = var_8C.Text
  loc_1266B7C:       Proc_6_17_EAA2B0(var_D4, CVar(var_A0))
  loc_1266B92:       Me.Find CStr(1 & var_D4), var_F8, 
  loc_1266BAA:     End If
  loc_1266BAD:   Else
  loc_1266BB5:     If (var_92 = CInt(&HA)) Then
  loc_1266BD4:       Me.Recordset15.CursorLocation = 3
  loc_1266BEB:       var_F8 = CVar(MemVar_1F92044) 'Address
  loc_1266BF0:       var_B0 = "Select DocId As Code, Cast(VNo as varchar) Name,PartyName Party,Vdate From HallBook Where Docid not in (Select BookDocId from HallSale1) Order by VNo"
  loc_1266BFC:       Me.Open var_B0, var_F8, 3
  loc_1266C0A:       CVarUnk
  loc_1266C0F:       VerifyVarObj
  loc_1266C15:       Set var_88 = Me.DGBookNo
  loc_1266C1B:       LateIdStAd
  loc_1266C77:       Set var_88 = Me.Txt
  loc_1266C7D:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1266C85:       var_88 = var_8C.Text
  loc_1266C9D:       If (New Or (var_A0 = vbNullString)) Then
  loc_1266CA0:         Exit Sub
  loc_1266CA1:       End If
  loc_1266CAE:       Set var_88 = Me.Txt
  loc_1266CB4:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1266CBC:       1 = var_8C.Text
  loc_1266CC4:       var_D4 = CVar(var_A0) 'String
  loc_1266D09:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1266D12:         Me.MoveFirst
  loc_1266D37:         Set var_88 = Me.Txt
  loc_1266D3D:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1266D45:         0 = var_8C.Text
  loc_1266D53:         Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_1266D69:         Me.Find CStr(var_F8 & var_D4), -1, 
  loc_1266D81:       End If
  loc_1266D84:     Else
  loc_1266D8C:       If (var_92 = CInt(4)) Then
  loc_1266D9C:         Set var_88 = Me.TxtGrid
  loc_1266DA2:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1266DBA:         global_164 = Val(var_8C.Text)
  loc_1266DC7:       End If
  loc_1266DC7:     End If
  loc_1266DC7:   End If
  loc_1266DC7: End If
  loc_1266DC7: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1114D60
  'Data Table: 4DA728
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_1114A26: If (CLng(Shift) = &H1B) Then
  loc_1114A29:   Call Proc_262_52_F31C88()
  loc_1114A2E:   Exit Sub
  loc_1114A2F: End If
  loc_1114A32: var_86 = KeyCode
  loc_1114A3D: If (var_86 = CInt(4)) Then
  loc_1114A58:   Set var_9C = Nothing
  loc_1114A63:   Set var_98 = Nothing
  loc_1114A91:   Proc_6_69_134A198(Me.DGDepart, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_1114AA8: Else
  loc_1114AB0:   If (var_86 = CInt(9)) Then
  loc_1114ACB:     Set var_9C = Nothing
  loc_1114B04:     Proc_6_69_134A198(Me.DGGodown, Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_1114B1B:   Else
  loc_1114B23:     If (var_86 = CInt(&HA)) Then
  loc_1114B3E:       Set var_9C = Nothing
  loc_1114B77:       Proc_6_69_134A198(Me.DGBookNo, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_1114B8E:     Else
  loc_1114B96:       If (var_86 = CInt(7)) Then
  loc_1114BA4:         If (global_176 = "Yes") Then
  loc_1114BBF:           Set var_9C = Nothing
  loc_1114BF8:           Proc_6_69_134A198(Me.DGCompany, Me.Txt, KeyCode, global_68, Shift, 0, 1, Nothing)
  loc_1114C0C:         End If
  loc_1114C0C:       End If
  loc_1114C0C:     End If
  loc_1114C0C:   End If
  loc_1114C0C: End If
  loc_1114C3D: Set var_98 = Me.DGCompany
  loc_1114C54: Set var_9C = Me.DGBookNo
  loc_1114C7D: If ((((CBool(Me.DGDepart.Visible) = 0) And (CBool(Me.DGGodown.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_1114C95:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1114C9E:     Proc_6_75_E527CC(Shift, arg_14, var_9C, 0, var_9C)
  loc_1114CA3:   End If
  loc_1114CA7:   Set var_8C = Me.TopCtrl1
  loc_1114CAD:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(0)
  loc_1114CC6:   If (CStr(var_9C) = "Add") Then
  loc_1114CDE:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1114CE7:       Proc_6_76_E52838(Shift, arg_14, 0)
  loc_1114CEC:     End If
  loc_1114CEF:   Else
  loc_1114CF3:     Set var_8C = Me.TopCtrl1
  loc_1114CF9:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1114D12:     If (CStr(var_98) = "Edit") Then
  loc_1114D2A:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1114D33:         Proc_6_76_E52838(Shift)
  loc_1114D38:       End If
  loc_1114D38:     End If
  loc_1114D38:   End If
  loc_1114D4D:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1114D58:     Call Txt_Validate(KeyCode)
  loc_1114D5D:   End If
  loc_1114D5D: End If
  loc_1114D5D: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FFD650
  'Data Table: 4DA728
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FFD450: On Error Goto loc_FFD64A
  loc_FFD456: Proc_6_58_E054C0(arg_10)
  loc_FFD45E: var_86 = KeyAscii
  loc_FFD469: If (var_86 = CInt(1)) Then
  loc_FFD476:   Set var_8C = Me.Txt
  loc_FFD47C:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_FFD497:   Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_FFD4A6: Else
  loc_FFD4AE:   If (var_86 = CInt(4)) Then
  loc_FFD4CD:     If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_FFD4DF:       var_AC = "Name"
  loc_FFD4FA:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10)
  loc_FFD509:     End If
  loc_FFD50C:   Else
  loc_FFD514:     If (var_86 = CInt(9)) Then
  loc_FFD533:       If (CBool(Me.DGGodown.Visible) = &HFF) Then
  loc_FFD560:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_FFD56F:       End If
  loc_FFD572:     Else
  loc_FFD57A:       If (var_86 = CInt(&HA)) Then
  loc_FFD599:         If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_FFD5C6:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10, "Name", 0)
  loc_FFD5D5:         End If
  loc_FFD5D8:       Else
  loc_FFD5E0:         If (var_86 = CInt(7)) Then
  loc_FFD5EE:           If (global_176 = "Yes") Then
  loc_FFD60D:             If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_FFD61F:               var_AC = "Name"
  loc_FFD63A:               Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, var_AC, 0)
  loc_FFD649:             End If
  loc_FFD649:           End If
  loc_FFD649:         End If
  loc_FFD649:       End If
  loc_FFD649:     End If
  loc_FFD649:   End If
  loc_FFD649: End If
  loc_FFD649: Exit Sub
  loc_FFD64A: ' Referenced from: FFD450
  loc_FFD64A: Proc_6_60_E62BC4(0, var_AC, 0)
  loc_FFD64F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E2D4
  'Data Table: 4DA728
  loc_E4E2B2: Set var_88 = Me.Txt
  loc_E4E2B8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E2C6: Proc_6_73_E22704(var_8C)
  loc_E4E2D2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14D150C
  'Data Table: 4DA728
  Dim var_94 As Integer
  Dim var_AC As String
  Dim var_B0 As Variant
  Dim var_98 As Variant
  Dim var_B4 As String
  Dim unk_4DA746 As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim arg_10 As Integer
  Dim var_A8 As Variant
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_14D077C: On Error Goto loc_14D1504
  loc_14D0782: var_94 = Cancel
  loc_14D078D: If (var_94 = CInt(1)) Then
  loc_14D0794:   Set var_98 = Me.TopCtrl1
  loc_14D079A:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_14D07A2:   var_AC = CStr()
  loc_14D07B3:   If (var_AC = "Add") Then
  loc_14D07BC:     Call Proc_262_54_114E63C(MemVar_1F92044)
  loc_14D07DF:     Set var_98 = Me.Txt
  loc_14D07E5:     Call 0.Method_Txt_Validate0 (CInt(3), var_B0)
  loc_14D07ED:     var_B0.Text = var_AC
  loc_14D0809:     Me.LblVPrefix.Caption = global_92
  loc_14D0811:   End If
  loc_14D0815:   Set var_98 = Me.TopCtrl1
  loc_14D081B:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC)
  loc_14D0823:   var_AC = CStr()
  loc_14D0834:   If (var_AC = "Add") Then
  loc_14D0864:     Set var_98 = Me.Txt
  loc_14D086A:     Call 0.Method_Txt_Validate0 (CInt(3), var_B0, var_AC, "Select Count(*) From Purch1 Where DocID='", var_A8, -1)
  loc_14D087B:     var_B4 = var_D0 & var_AC
  loc_14D088B:     unk_4DA746.Execute var_B4 & "'", 0, var_E4
  loc_14D089B:      = var_D0.Item()
  loc_14D08A3:      = var_E4.Value
  loc_14D08D0:     If (var_B0.Text.Fields > 0) Then
  loc_14D08D9:       Call 0.Method_arg_50 (var_AC)
  loc_14D08FA:       MsgBox("Duplicate Invoice No.", &H40, CVar(var_AC), var_114, var_124)
  loc_14D0910:       Call Proc_262_54_114E63C(MemVar_1F92044)
  loc_14D0920:       If (var_AC = vbNullString) Then
  loc_14D092D:         Set var_98 = Me.Txt
  loc_14D0933:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D093B:         var_B0.SetFocus
  loc_14D0949:         arg_10 = &HFF
  loc_14D094C:         Exit Sub
  loc_14D094D:       End If
  loc_14D0953:       Call Proc_262_54_114E63C(MemVar_1F92044, var_AC)
  loc_14D0966:       Set var_98 = Me.Txt
  loc_14D096C:       Call 0.Method_Txt_Validate0 (CInt(3), var_B0, var_AC)
  loc_14D0974:       var_B0.Text = arg_10
  loc_14D0985:       arg_10 = &HFF
  loc_14D0988:       Exit Sub
  loc_14D0989:     End If
  loc_14D0989:   End If
  loc_14D098C: Else
  loc_14D0994:   If (var_94 = CInt(2)) Then
  loc_14D09A5:     Set var_98 = Me.Txt
  loc_14D09AB:     Call 0.Method_Txt_Validate0 (CInt(2), var_B0, var_AC)
  loc_14D09B3:     arg_10 = var_B0.Text
  loc_14D09C9:     var_114 = Len(Trim(CVar(var_AC)))
  loc_14D09E3:     If (var_114 = 0) Then
  loc_14D09F9:       Set var_98 = Me.Txt
  loc_14D09FF:       Call 0.Method_Txt_Validate0 (CInt(2), var_B0)
  loc_14D0A07:       var_B0.Text = CStr(MemVar_1F920EC)
  loc_14D0A19:     Else
  loc_14D0A23:       Set var_98 = Me.Txt
  loc_14D0A29:       Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D0A49:       Set var_D0 = Me.Txt
  loc_14D0A4F:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_14D0A57:       var_E4.Text = Proc_6_33_1512840(var_B0)
  loc_14D0A6A:     End If
  loc_14D0A77:     Set var_98 = Me.Txt
  loc_14D0A7D:     Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D0A85:     var_AC = var_B0.Text
  loc_14D0AA0:     Set var_CC = Me.Txt
  loc_14D0AA6:     Call 0.Method_Txt_Validate0 (Cancel, var_D0, var_B4)
  loc_14D0AAE:     (CDate(var_AC) >= MemVar_1F920F4) = var_D0.Text
  loc_14D0AD0:     If Not((var_AC And (CDate(var_B4) <= MemVar_1F920FC))) Then
  loc_14D0ADE:       var_F4 = "Date Validate"
  loc_14D0AF4:       MsgBox("Invoice Date Not Between Current Fin. Year", 0, var_F4, var_114, var_124)
  loc_14D0B0E:       Set var_98 = Me.Txt
  loc_14D0B14:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_14D0B1C:       var_B0.SetFocus
  loc_14D0B2A:       arg_10 = &HFF
  loc_14D0B2D:       Exit Sub
  loc_14D0B2E:     End If
  loc_14D0B32:     Set var_98 = Me.TopCtrl1
  loc_14D0B38:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_14D0B40:     var_AC = CStr(var_B0)
  loc_14D0B51:     If (var_AC = "Add") Then
  loc_14D0B5A:       Call Proc_262_54_114E63C(MemVar_1F92044)
  loc_14D0B6D:       Set var_98 = Me.Txt
  loc_14D0B73:       Call 0.Method_Txt_Validate0 (CInt(3), var_B0)
  loc_14D0B7B:       var_B0.Text = var_AC
  loc_14D0B8A:     End If
  loc_14D0B8D:   Else
  loc_14D0B95:     If (var_94 = CInt(4)) Then
  loc_14D0BA3:       Set var_98 = Me.Txt
  loc_14D0BA9:       Call 0.Method_Txt_Validate0 (CInt(4), var_B0)
  loc_14D0BB1:       var_AC = "Department Name"
  loc_14D0BD2:       If (Proc_6_27_EA565C(var_B0, var_AC) = 0) Then
  loc_14D0BE0:         Set var_98 = Me.Txt
  loc_14D0BE6:         Call 0.Method_Txt_Validate0 (CInt(4), var_B0)
  loc_14D0BEE:         var_B0.SetFocus
  loc_14D0BFC:         arg_10 = &HFF
  loc_14D0BFF:         Exit Sub
  loc_14D0C00:       End If
  loc_14D0C4E:       Set var_98 = Me.Txt
  loc_14D0C54:       Call 0.Method_Txt_Validate0 (Cancel, var_B0, var_AC)
  loc_14D0C5C:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B0.Text
  loc_14D0C74:       If (arg_10 Or (var_AC = vbNullString)) Then
  loc_14D0C84:         Set var_98 = Me.Txt
  loc_14D0C8A:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D0C92:         var_B0.Text = vbNullString
  loc_14D0CAB:         Set var_98 = Me.Txt
  loc_14D0CB1:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D0CB9:         var_B0.Tag = vbNullString
  loc_14D0CC8:       Else
  loc_14D0D03:         Set var_CC = Me.Txt
  loc_14D0D09:         Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_14D0D11:         var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14D0D44:         var_B0 = Me.Fields.Item("Code")
  loc_14D0D62:         Set var_CC = Me.Txt
  loc_14D0D68:         Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_14D0D70:         var_D0.Tag = CStr(var_B0.Value)
  loc_14D0D86:       End If
  loc_14D0D94:       Set var_98 = Me.Txt
  loc_14D0D9A:       Call 0.Method_Txt_Validate0 (CInt(4), var_B0)
  loc_14D0DBC:       If (var_B0.Tag = global_116) Then
  loc_14D0DCB:         Me.FrBanq.Visible = True
  loc_14D0DD6:       Else
  loc_14D0DE2:         Me.FrBanq.Visible = False
  loc_14D0DEA:       End If
  loc_14D0DED:     Else
  loc_14D0DF5:       If (var_94 = CInt(9)) Then
  loc_14D0E03:         Set var_98 = Me.Txt
  loc_14D0E09:         Call 0.Method_Txt_Validate0 (CInt(9), var_B0)
  loc_14D0E11:         var_AC = "Godown Name"
  loc_14D0E32:         If (Proc_6_27_EA565C(var_B0, var_AC) = 0) Then
  loc_14D0E40:           Set var_98 = Me.Txt
  loc_14D0E46:           Call 0.Method_Txt_Validate0 (CInt(9), var_B0)
  loc_14D0E4E:           var_B0.SetFocus
  loc_14D0E5C:           arg_10 = &HFF
  loc_14D0E5F:           Exit Sub
  loc_14D0E60:         End If
  loc_14D0EAE:         Set var_98 = Me.Txt
  loc_14D0EB4:         Call 0.Method_Txt_Validate0 (Cancel, var_B0, var_AC)
  loc_14D0EBC:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B0.Text
  loc_14D0ED4:         If (arg_10 Or (var_AC = vbNullString)) Then
  loc_14D0EE4:           Set var_98 = Me.Txt
  loc_14D0EEA:           Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D0EF2:           var_B0.Text = vbNullString
  loc_14D0F0B:           Set var_98 = Me.Txt
  loc_14D0F11:           Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D0F19:           var_B0.Tag = vbNullString
  loc_14D0F28:         Else
  loc_14D0F63:           Set var_CC = Me.Txt
  loc_14D0F69:           Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_14D0F71:           var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14D0FA4:           var_B0 = Me.Fields.Item("Code")
  loc_14D0FB5:           var_AC = CStr(var_B0.Value)
  loc_14D0FC2:           Set var_CC = Me.Txt
  loc_14D0FC8:           Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_14D0FD0:           var_D0.Tag = var_AC
  loc_14D0FE6:         End If
  loc_14D0FE9:       Else
  loc_14D0FF1:         If (var_94 = CInt(7)) Then
  loc_14D1042:           Set var_98 = Me.Txt
  loc_14D1048:           Call 0.Method_Txt_Validate0 (Cancel, var_B0, var_AC)
  loc_14D1050:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B0.Text
  loc_14D1068:           If (var_AC Or (var_AC = vbNullString)) Then
  loc_14D1078:             Set var_98 = Me.Txt
  loc_14D107E:             Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D1086:             var_B0.Text = vbNullString
  loc_14D109F:             Set var_98 = Me.Txt
  loc_14D10A5:             Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D10AD:             var_B0.Tag = vbNullString
  loc_14D10BC:           Else
  loc_14D10CA:             Set var_98 = Me.Txt
  loc_14D10D0:             Call 0.Method_Txt_Validate0 (CInt(&HA), var_B0)
  loc_14D10D8:             var_B0.Text = vbNullString
  loc_14D10F2:             Set var_98 = Me.Txt
  loc_14D10F8:             Call 0.Method_Txt_Validate0 (CInt(&HA), var_B0)
  loc_14D1100:             var_B0.Tag = vbNullString
  loc_14D111A:             Set var_98 = Me.Txt
  loc_14D1120:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_B0)
  loc_14D1128:             var_B0.Text = vbNullString
  loc_14D116F:             Set var_CC = Me.Txt
  loc_14D1175:             Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_14D117D:             var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14D11B0:             var_B0 = Me.Fields.Item("Code")
  loc_14D11CE:             Set var_CC = Me.Txt
  loc_14D11D4:             Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_14D11DC:             var_D0.Tag = CStr(var_B0.Value)
  loc_14D11F2:           End If
  loc_14D11F5:         Else
  loc_14D11FD:           If (var_94 = CInt(&HA)) Then
  loc_14D124E:             Set var_98 = Me.Txt
  loc_14D1254:             Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D1274:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_B0.Text = vbNullString)) Then
  loc_14D1284:               Set var_98 = Me.Txt
  loc_14D128A:               Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D1292:               var_B0.Text = vbNullString
  loc_14D12AB:               Set var_98 = Me.Txt
  loc_14D12B1:               Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14D12B9:               var_B0.Tag = vbNullString
  loc_14D12D3:               Set var_98 = Me.Txt
  loc_14D12D9:               Call 0.Method_Txt_Validate0 (CInt(&HB), var_B0)
  loc_14D12E1:               var_B0.Text = vbNullString
  loc_14D12F0:             Else
  loc_14D12FE:               Set var_98 = Me.Txt
  loc_14D1304:               Call 0.Method_Txt_Validate0 (CInt(7), var_B0)
  loc_14D130C:               var_B0.Text = vbNullString
  loc_14D1326:               Set var_98 = Me.Txt
  loc_14D132C:               Call 0.Method_Txt_Validate0 (CInt(7), var_B0)
  loc_14D1334:               var_B0.Tag = vbNullString
  loc_14D137B:               Set var_CC = Me.Txt
  loc_14D1381:               Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_14D1389:               var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14D13DA:               Set var_CC = Me.Txt
  loc_14D13E0:               Call 0.Method_Txt_Validate0 (Cancel, var_D0)
  loc_14D13E8:               var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14D143A:               Set var_CC = Me.Txt
  loc_14D1440:               Call 0.Method_Txt_Validate0 (CInt(&HB), var_D0)
  loc_14D1499:               Set var_CC = Me.Txt
  loc_14D149F:               Call 0.Method_Txt_Validate0 (CInt(2), var_D0)
  loc_14D14C9:               If (Me.Fields.Item("VDate").Value > CDate(CDate(CStr(Me.Fields.Item("Party").Value)))) Then
  loc_14D14E5:                 MsgBox("Bill Date can't be before Booking Date", 0, var_F4, var_114, var_124)
  loc_14D14F7:                 arg_10 = &HFF
  loc_14D14FA:                 Exit Sub
  loc_14D14FB:               End If
  loc_14D14FB:             End If
  loc_14D14FB:           End If
  loc_14D14FB:         End If
  loc_14D14FB:       End If
  loc_14D14FB:     End If
  loc_14D14FB:   End If
  loc_14D14FB: End If
  loc_14D1500: Set var_88 = Nothing
  loc_14D1503: Exit Sub
  loc_14D1504: ' Referenced from: 14D077C
  loc_14D1504: Proc_6_60_E62BC4(arg_10)
  loc_14D1509: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F4B424
  'Data Table: 4DA728
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4B31B: Me.DGDepart.Visible = False
  loc_F4B33A: If (Me.RecordCount > 0) Then
  loc_F4B379:   Set var_B4 = Me.Txt
  loc_F4B37F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4B387:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4B3BA:   var_B0 = Me.Fields.Item("Code")
  loc_F4B3D9:   Set var_B4 = Me.Txt
  loc_F4B3DF:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(4), var_B8)
  loc_F4B3E7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4B3FD: End If
  loc_F4B408: Set var_A8 = Me.Txt
  loc_F4B40E: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(4))
  loc_F4B416: var_B0.SetFocus
  loc_F4B422: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10A34A4
  'Data Table: 4DA728
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_10A31EF: Me.DGItem.Visible = False
  loc_10A320E: If (Me.RecordCount > 0) Then
  loc_10A324B:   Set var_B4 = Me.TxtGrid
  loc_10A3251:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10A3259:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10A3282:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A328A:   var_EC = CVar(CLng(1)) 'Long
  loc_10A32BD:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10A32C5:   Set var_B8 = Me.FGrid
  loc_10A32CB:   LateIdCallSt
  loc_10A32FA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A3302:   var_EC = CVar(CLng(7)) 'Long
  loc_10A3335:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10A333D:   Set var_B8 = Me.FGrid
  loc_10A3343:   LateIdCallSt
  loc_10A3372:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A337A:   var_EC = CVar(CLng(2)) 'Long
  loc_10A33AD:   var_11C = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_10A33B5:   Set var_B8 = Me.FGrid
  loc_10A33BB:   LateIdCallSt
  loc_10A33EA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A33F2:   var_EC = CVar(CLng(6)) 'Long
  loc_10A3414:   var_B0 = Me.Fields.Item("IssueUnit")
  loc_10A3425:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_10A342D:   Set var_B8 = Me.FGrid
  loc_10A3433:   LateIdCallSt
  loc_10A344F: End If
  loc_10A345B: Set var_A8 = Me.TxtGrid
  loc_10A3461: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC, var_A4)
  loc_10A3469: var_B8 = var_B0.Visible
  loc_10A347B: If (var_12E = &HFF) Then
  loc_10A3487:   Set var_A8 = Me.TxtGrid
  loc_10A348D:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_11C, var_EC)
  loc_10A3495:   var_B0.SetFocus
  loc_10A34A1: End If
  loc_10A34A1: Exit Sub
End Sub

Private Sub DGBookNo_UnknownEvent_9 'FDB744
  'Data Table: 4DA728
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_FDB574: On Error Goto loc_FDB73E
  loc_FDB586: Me.DGBookNo.Visible = False
  loc_FDB5A5: If (Me.RecordCount > 0) Then
  loc_FDB5B6:   Set var_A8 = Me.Txt
  loc_FDB5BC:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B0)
  loc_FDB5C4:   var_B0.Text = vbNullString
  loc_FDB5DE:   Set var_A8 = Me.Txt
  loc_FDB5E4:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B0)
  loc_FDB5EC:   var_B0.Tag = vbNullString
  loc_FDB634:   Set var_B4 = Me.Txt
  loc_FDB63A:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_FDB642:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FDB694:   Set var_B4 = Me.Txt
  loc_FDB69A:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_FDB6A2:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FDB6D5:   var_B0 = Me.Fields.Item("Party")
  loc_FDB6F4:   Set var_B4 = Me.Txt
  loc_FDB6FA:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_FDB702:   var_B8.Text = CStr(var_B0.Value)
  loc_FDB718: End If
  loc_FDB723: Set var_A8 = Me.Txt
  loc_FDB729: Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(&HA))
  loc_FDB731: var_B0.SetFocus
  loc_FDB73D: Exit Sub
  loc_FDB73E: ' Referenced from: FDB574
  loc_FDB73E: Proc_6_60_E62BC4(var_B0)
  loc_FDB743: Exit Sub
End Sub

Public Function global_52Get() '4DB868
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4DB877
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E94780
  'Data Table: 4DA728
  Dim Me As Recordset15
  loc_E9470E: On Error Goto loc_E94777
  loc_E94717: Me.MoveFirst
  loc_E94741: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94769: Proc_5_0_110649C(&HFF, Me, global_72)
  loc_E94771: Call Proc_262_48_15997C4(0)
  loc_E94776: Exit Sub
  loc_E94777: ' Referenced from: E9470E
  loc_E94777: Proc_6_60_E62BC4(var_A0)
  loc_E9477C: Exit Sub
End Sub

Public Sub FindMove(mDocId) 'E74BA0
  'Data Table: 4DA728
  Dim Me As Recordset15
  loc_E74B4A: Me.MoveFirst
  loc_E74B74: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E74B94: If (Me.EOF = 0) Then
  loc_E74B97:   Call Proc_262_48_15997C4(var_9C)
  loc_E74B9C: End If
  loc_E74B9C: Exit Sub
End Sub

Public Sub Proc_262_45_11FEE7C
  'Data Table: 4DA728
  Dim var_94 As Variant
  Dim var_D4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_11FE9DB: Me.FGrid.Left = CVar(CDbl(675))
  loc_11FE9F6: Me.FGrid.Top = CVar(CDbl(2265))
  loc_11FEA35: Me.LblCurStockStr.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_11FEA5C: Me.DGItem.Left = CVar(CDbl(&HF))
  loc_11FEA77: Me.DGItem.Top = CVar(CDbl(5335))
  loc_11FEA83: Set var_D4 = Me.FGrid
  loc_11FEA9A: global_80 = CStr(CLng(var_D4.BackColor))
  loc_11FEAB0: var_D4.Cols = &HA
  loc_11FEAB8: var_94 = CVar(CLng(0)) 'Long
  loc_11FEABD: var_E8 = &H15E
  loc_11FEAC9: LateIdCallSt
  loc_11FEAD1: var_94 = 0
  loc_11FEADD: var_E8 = CVar(CLng(1)) 'Long
  loc_11FEAE2: var_108 = "Item Name"
  loc_11FEAEB: LateIdCallSt
  loc_11FEAF6: var_94 = CVar(CLng(1)) 'Long
  loc_11FEB01: var_E8 = CVar(CInt(1)) 'Integer
  loc_11FEB08: LateIdCallSt
  loc_11FEB13: var_94 = CVar(CLng(1)) 'Long
  loc_11FEB18: var_E8 = &HDAC
  loc_11FEB24: LateIdCallSt
  loc_11FEB2C: var_94 = 0
  loc_11FEB38: var_E8 = CVar(CLng(2)) 'Long
  loc_11FEB3D: var_108 = "Unit"
  loc_11FEB46: LateIdCallSt
  loc_11FEB51: var_94 = CVar(CLng(2)) 'Long
  loc_11FEB5C: var_E8 = CVar(CInt(1)) 'Integer
  loc_11FEB63: LateIdCallSt
  loc_11FEB6E: var_94 = CVar(CLng(2)) 'Long
  loc_11FEB73: var_E8 = &H3B6
  loc_11FEB7F: LateIdCallSt
  loc_11FEB87: var_94 = 0
  loc_11FEB93: var_E8 = CVar(CLng(3)) 'Long
  loc_11FEB98: var_108 = "Quantity"
  loc_11FEBA1: LateIdCallSt
  loc_11FEBAC: var_94 = CVar(CLng(3)) 'Long
  loc_11FEBB7: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FEBBE: LateIdCallSt
  loc_11FEBC9: var_94 = CVar(CLng(3)) 'Long
  loc_11FEBD4: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FEBDB: LateIdCallSt
  loc_11FEBE6: var_94 = CVar(CLng(3)) 'Long
  loc_11FEBEB: var_E8 = &H4B0
  loc_11FEBF7: LateIdCallSt
  loc_11FEBFF: var_94 = 0
  loc_11FEC0B: var_E8 = CVar(CLng(4)) 'Long
  loc_11FEC10: var_108 = "Conversion"
  loc_11FEC19: LateIdCallSt
  loc_11FEC24: var_94 = CVar(CLng(4)) 'Long
  loc_11FEC2F: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FEC36: LateIdCallSt
  loc_11FEC41: var_94 = CVar(CLng(4)) 'Long
  loc_11FEC4C: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FEC53: LateIdCallSt
  loc_11FEC5E: var_94 = CVar(CLng(4)) 'Long
  loc_11FEC63: var_E8 = 0
  loc_11FEC6F: LateIdCallSt
  loc_11FEC77: var_94 = 0
  loc_11FEC83: var_E8 = CVar(CLng(5)) 'Long
  loc_11FEC88: var_108 = "Wt.Qty"
  loc_11FEC91: LateIdCallSt
  loc_11FEC9C: var_94 = CVar(CLng(5)) 'Long
  loc_11FECA7: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FECAE: LateIdCallSt
  loc_11FECB9: var_94 = CVar(CLng(5)) 'Long
  loc_11FECC4: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FECCB: LateIdCallSt
  loc_11FECD6: var_94 = CVar(CLng(5)) 'Long
  loc_11FECDB: var_E8 = &H3E8
  loc_11FECE7: LateIdCallSt
  loc_11FECEF: var_94 = 0
  loc_11FECFB: var_E8 = CVar(CLng(6)) 'Long
  loc_11FED00: var_108 = "Wt.Unit"
  loc_11FED09: LateIdCallSt
  loc_11FED14: var_94 = CVar(CLng(6)) 'Long
  loc_11FED1F: var_E8 = CVar(CInt(1)) 'Integer
  loc_11FED26: LateIdCallSt
  loc_11FED31: var_94 = CVar(CLng(6)) 'Long
  loc_11FED3C: var_E8 = CVar(CInt(1)) 'Integer
  loc_11FED43: LateIdCallSt
  loc_11FED4E: var_94 = CVar(CLng(6)) 'Long
  loc_11FED53: var_E8 = &H3E8
  loc_11FED5F: LateIdCallSt
  loc_11FED6A: var_94 = CVar(CLng(7)) 'Long
  loc_11FED6F: var_E8 = 0
  loc_11FED7B: LateIdCallSt
  loc_11FED83: var_94 = 0
  loc_11FED8F: var_E8 = CVar(CLng(8)) 'Long
  loc_11FED94: var_108 = "Rate"
  loc_11FED9D: LateIdCallSt
  loc_11FEDA8: var_94 = CVar(CLng(8)) 'Long
  loc_11FEDB3: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FEDBA: LateIdCallSt
  loc_11FEDC5: var_94 = CVar(CLng(8)) 'Long
  loc_11FEDD0: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FEDD7: LateIdCallSt
  loc_11FEDE2: var_94 = CVar(CLng(8)) 'Long
  loc_11FEDE7: var_E8 = &H320
  loc_11FEDF3: LateIdCallSt
  loc_11FEDFB: var_94 = 0
  loc_11FEE07: var_E8 = CVar(CLng(9)) 'Long
  loc_11FEE0C: var_108 = "Goods Amt."
  loc_11FEE15: LateIdCallSt
  loc_11FEE20: var_94 = CVar(CLng(9)) 'Long
  loc_11FEE2B: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FEE32: LateIdCallSt
  loc_11FEE3D: var_94 = CVar(CLng(9)) 'Long
  loc_11FEE48: var_E8 = CVar(CInt(7)) 'Integer
  loc_11FEE4F: LateIdCallSt
  loc_11FEE5A: var_94 = CVar(CLng(9)) 'Long
  loc_11FEE5F: var_E8 = &H4B0
  loc_11FEE6B: LateIdCallSt
  loc_11FEE75: Set var_D4 = Nothing 
  loc_11FEE79: Exit Sub
End Sub

Public Sub Proc_262_46_E407AC
  'Data Table: 4DA728
  loc_E40788: Set var_88 = Me.TopCtrl1
  loc_E4078E: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E407A7: If (CStr() = "Browse") Then
  loc_E407AA:   Exit Sub
  loc_E407AB: End If
  loc_E407AB: Exit Sub
End Sub

Public Sub Proc_262_47_14910A4(arg_C) '14910A4
  'Data Table: 4DA728
  Dim var_9C As Variant
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_144 As Variant
  Dim var_134 As Variant
  Dim var_C0 As String
  Dim var_158 As Variant
  Dim var_148 As MSHFlexGrid
  Dim var_178 As Variant
  Dim var_17C As String
  Dim var_180 As MSHFlexGrid
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_1FC As Double
  Dim var_94 As Integer
  Dim var_1F0 As Double
  loc_149044C: If (arg_C = 0) Then
  loc_1490462:   var_B0 = CLng(Me.FGrid.Col)
  loc_1490472:   If (var_B0 = CLng(1)) Then
  loc_14904C3:     Set var_9C = Me.TxtGrid
  loc_14904C9:     Call 0.Method_Proc_262_47_14910A40 (arg_C, var_BC, var_C0)
  loc_14904D1:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_BC.Text
  loc_14904E9:     If (var_B0 Or (var_C0 = vbNullString)) Then
  loc_14904FF:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1490507:       var_F0 = CVar(CLng(1)) 'Long
  loc_149050C:       var_110 = vbNullString
  loc_1490516:       Set var_BC = Me.FGrid
  loc_149051C:       LateIdCallSt
  loc_1490541:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1490549:       var_F0 = CVar(CLng(7)) 'Long
  loc_149054E:       var_110 = vbNullString
  loc_1490558:       Set var_BC = Me.FGrid
  loc_149055E:       LateIdCallSt
  loc_1490583:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149058B:       var_F0 = CVar(CLng(2)) 'Long
  loc_1490590:       var_110 = vbNullString
  loc_149059A:       Set var_BC = Me.FGrid
  loc_14905A0:       LateIdCallSt
  loc_14905C5:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14905CD:       var_F0 = CVar(CLng(4)) 'Long
  loc_14905D2:       var_110 = vbNullString
  loc_14905DC:       Set var_BC = Me.FGrid
  loc_14905E2:       LateIdCallSt
  loc_1490607:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149060F:       var_F0 = CVar(CLng(5)) 'Long
  loc_1490614:       var_110 = vbNullString
  loc_149061E:       Set var_BC = Me.FGrid
  loc_1490624:       LateIdCallSt
  loc_1490649:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1490651:       var_F0 = CVar(CLng(6)) 'Long
  loc_1490656:       var_110 = vbNullString
  loc_1490660:       Set var_BC = Me.FGrid
  loc_1490666:       LateIdCallSt
  loc_149068B:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1490693:       var_F0 = CVar(CLng(8)) 'Long
  loc_1490698:       var_110 = vbNullString
  loc_14906A2:       Set var_BC = Me.FGrid
  loc_14906A8:       LateIdCallSt
  loc_14906CD:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14906D5:       var_F0 = CVar(CLng(9)) 'Long
  loc_14906DA:       var_110 = vbNullString
  loc_14906E4:       Set var_BC = Me.FGrid
  loc_14906EA:       LateIdCallSt
  loc_14906FF:     Else
  loc_1490712:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149071A:       var_100 = CVar(CLng(1)) 'Long
  loc_149074D:       var_144 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1490755:       Set var_148 = Me.FGrid
  loc_149075B:       LateIdCallSt
  loc_149078A:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1490792:       var_100 = CVar(CLng(7)) 'Long
  loc_14907C5:       var_144 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_14907CD:       Set var_148 = Me.FGrid
  loc_14907D3:       LateIdCallSt
  loc_1490808:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1490810:       var_F0 = CVar(CLng(7)) 'Long
  loc_149082A:       var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1490848:       var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1490850:       var_158 = CVar(CLng(7)) 'Long
  loc_149086A:       var_17C = CStr(Me.FGrid.TextMatrix))
  loc_1490893:       Set var_1D4 = Me.FGrid
  loc_14908D5:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(7)) And (CStr(var_1D4.TextMatrix)) = vbNullString))) Then
  loc_14908EB:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14908F3:         var_100 = CVar(CLng(1)) 'Long
  loc_1490926:         var_144 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_149092E:         Set var_148 = Me.FGrid
  loc_1490934:         LateIdCallSt
  loc_1490963:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_149096B:         var_100 = CVar(CLng(7)) 'Long
  loc_149099E:         var_144 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_14909A6:         Set var_148 = Me.FGrid
  loc_14909AC:         LateIdCallSt
  loc_14909DB:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14909E3:         var_100 = CVar(CLng(2)) 'Long
  loc_1490A16:         var_144 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1490A1E:         Set var_148 = Me.FGrid
  loc_1490A24:         LateIdCallSt
  loc_1490A53:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1490A5B:         var_100 = CVar(CLng(6)) 'Long
  loc_1490A8E:         var_144 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_1490A96:         Set var_148 = Me.FGrid
  loc_1490A9C:         LateIdCallSt
  loc_1490AEA:         var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1490AF2:         var_110 = CVar(CLng(4)) 'Long
  loc_1490B1F:         var_190 = CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00"))) 'String
  loc_1490B27:         Set var_148 = Me.FGrid
  loc_1490B2D:         LateIdCallSt
  loc_1490BC0:         LateIdCallSt
  loc_1490BDE:         Call Proc_262_57_FCF85C(Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))), 1, 1, CVar(CLng(8)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))))
  loc_1490BE3:       End If
  loc_1490BE3:     End If
  loc_1490BFE:     var_F0 = CVar(CLng(7)) 'Long
  loc_1490C07:     Set var_BC = Me.FGrid
  loc_1490C0D:     var_134 = var_BC.TextMatrix)
  loc_1490C23:     var_144 = Me.FGrid.Row
  loc_1490C2C:     var_110 = CVar(CLng(var_144)) 'Long
  loc_1490C43:     var_178 = Me.FGrid.TextMatrix)
  loc_1490C4E:     var_C0 = CStr(var_178)
  loc_1490C56:     var_1FC = Val(var_C0)
  loc_1490C67:     Set var_180 = Me.Txt
  loc_1490C6D:     Call 0.Method_Proc_262_47_14910A40 (CInt(9), var_1D4, var_17C, var_1FC, CVar(CLng(3)), var_110, var_134)
  loc_1490C75:     var_F0 = var_1D4.Tag
  loc_1490C9E:     var_94 = Proc_96_27_11F27DC(CStr(var_134), var_1FC, MemVar_1F92070, var_17C, global_140, CVar(CLng(Me.FGrid.Row)))
  loc_1490CD4:     Me.LblCurStockStr.Caption = global_140
  loc_1490CDF:   Else
  loc_1490CE6:     If Not (var_B0 = CLng(3)) Then
  loc_1490CF0:       If (var_B0 = CLng(4)) Then
  loc_1490CF3:       End If
  loc_1490D10:       If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_1490D1F:         Set var_9C = Me.TxtGrid
  loc_1490D25:         Call 0.Method_Proc_262_47_14910A40 (0, var_BC, var_C0, var_94, 1)
  loc_1490D2D:         1 = var_BC.Text
  loc_1490D3A:         var_1F0 = Val(var_C0)
  loc_1490D52:         If (global_164 <> CDbl(var_1F0)) Then
  loc_1490D84:           If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_134, var_144, var_178) = 7) Then
  loc_1490D9B:             Set var_9C = Me.TxtGrid
  loc_1490DA1:             Call 0.Method_Proc_262_47_14910A40 (0, var_BC, CStr(global_164), var_1F0)
  loc_1490DA9:             var_BC.Text = var_110
  loc_1490DB8:           End If
  loc_1490DB8:         End If
  loc_1490DB8:       End If
  loc_1490DC2:       Set var_9C = Me.TxtGrid
  loc_1490DC8:       Call 0.Method_Proc_262_47_14910A40 (arg_C, var_BC)
  loc_1490DE0:       If Not(IsNumeric(CVar(var_BC))) Then
  loc_1490DF4:         Set var_9C = Me.TxtGrid
  loc_1490DFA:         Call 0.Method_Proc_262_47_14910A40 (arg_C, var_BC, CStr(0))
  loc_1490E02:         var_BC.Text = var_F0
  loc_1490E11:       End If
  loc_1490E1E:       Set var_9C = Me.TxtGrid
  loc_1490E24:       Call 0.Method_Proc_262_47_14910A40 (arg_C, var_BC)
  loc_1490E44:       var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1490E5C:       var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1490E88:       var_1E4 = CVar(CStr(Format(CVar(var_BC.Text), "0.000"))) 'String
  loc_1490E90:       Set var_180 = Me.FGrid
  loc_1490E96:       LateIdCallSt
  loc_1490ECD:       var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1490ED5:       var_158 = CVar(CLng(4)) 'Long
  loc_1490EEF:       var_17C = CStr(Me.FGrid.TextMatrix))
  loc_1490F0D:       var_1A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1490F15:       var_1C0 = CVar(CLng(5)) 'Long
  loc_1490F2D:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1490F35:       var_F0 = CVar(CLng(3)) 'Long
  loc_1490F65:       Set var_1D4 = Me.FGrid
  loc_1490F6B:       LateIdCallSt
  loc_1490FB3:       var_F0 = CVar(CLng(7)) 'Long
  loc_1490FC2:       var_134 = Me.FGrid.TextMatrix)
  loc_149100B:       var_1FC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_149101C:       Set var_180 = Me.Txt
  loc_1491022:       Call 0.Method_Proc_262_47_14910A40 (CInt(9), var_1D4, var_17C, var_1FC, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_134)
  loc_149102A:       var_F0 = var_1D4.Tag
  loc_1491089:       Me.LblCurStockStr.Caption = global_140
  loc_1491091:       Call Proc_262_57_FCF85C(Proc_96_27_11F27DC(CStr(var_134), var_1FC, MemVar_1F92070, var_17C, global_140, CVar(CLng(Me.FGrid.Row))), var_1D4, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(var_17C)))))
  loc_1491096:     End If
  loc_1491096:   End If
  loc_1491096: End If
  loc_149109B: Proc_262_47_14910A4 = &HFF
End Sub

Public Sub Proc_262_48_15997C4
  'Data Table: 4DA728
  Dim Me As Recordset15
  Dim var_A0 As Variant
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As String
  Dim unk_4DA746 As Connection15
  Dim var_130 As Recordset15
  Dim var_134 As Variant
  Dim var_12C As Variant
  Dim var_140 As Variant
  Dim var_14C As Variant
  Dim var_C4 As Variant
  Dim var_88 As Recordset15
  Dim var_8C As Recordset15
  Dim var_8E As Integer
  Dim var_15C As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_16C As Variant
  Dim var_1F8 As MSHFlexGrid
  Dim var_200 As Double
  Dim var_98 As Double
  loc_1598634: On Error Goto loc_15997BB
  loc_1598637: Call Proc_262_50_F6A200()
  loc_1598653: If (Me.RecordCount > 0) Then
  loc_1598663:   Me.LblCurStockStr.Caption = vbNullString
  loc_1598678:   var_D4 = "Select DISTINCT I1.vtime,I1.DOCID,I1.VDATE,I1.Remarks, G.Name as DepartName,G.Code as DepartCode, G1.Name as Godown,G1.Code as GodownCode,I1.Vno,I1.Vtype,I1.VPrefix,I1.Company,Sub.Name as Compname,I1.RefDocId From Indent I1  left join GodownMast G on G.Code=I1.Department left join GodownMast G1 on G1.Code=I1.Godown left join Subgroup Sub on I1.Company=Sub.SubCode Where DocID='"
  loc_15986C1:   unk_4DA746.Execute CStr(var_D4 & Me.Fields.Item("DocID").Value & "'"), var_128, -1
  loc_15986CC:   Set var_88 = var_12C
  loc_15986E9:   Set var_130 = var_88 
  loc_1598726:   Set var_12C = Me.Txt
  loc_159872C:   Call 0.Method_Proc_262_48_15997C40 (CInt(3), var_134)
  loc_1598734:   var_134.Text = CStr(var_130.Fields.Item("DocID").Value)
  loc_1598764:   var_B4 = var_130.Fields.Item("vType")
  loc_159876C:   var_C4 = var_B4.Value
  loc_1598775:   var_108 = CStr(var_C4)
  loc_1598783:   Set var_12C = Me.Txt
  loc_1598789:   Call 0.Method_Proc_262_48_15997C40 (CInt(0), var_134)
  loc_1598791:   var_134.Tag = var_108
  loc_15987D4:   Set var_A0 = Me.Txt
  loc_15987DA:   Call 0.Method_Proc_262_48_15997C40 (CInt(0), var_B4, var_108, "Select NCAT From Voucher_Type Where V_Type='", var_C4, -1)
  loc_15987E2:   var_12C = var_B4.Tag
  loc_15987FB:   unk_4DA746.Execute var_134 & var_108 & "'", 0, var_140
  loc_159880B:    = var_134.Item(var_12C)
  loc_1598813:    = var_140.Value
  loc_1598822:   global_100 = CStr(var_12C.Fields)
  loc_1598872:   Set var_A0 = Me.Txt
  loc_1598878:   Call 0.Method_Proc_262_48_15997C40 (CInt(0), var_B4, var_108, "Select Description From Voucher_type Where V_Type='", var_C4, -1)
  loc_1598899:   unk_4DA746.Execute var_134 & var_108 & "'", 0, var_140
  loc_15988A9:    = var_134.Item()
  loc_15988B1:    = var_140.Value
  loc_15988C8:   Set var_148 = Me.Txt
  loc_15988CE:   Call 0.Method_Proc_262_48_15997C40 (CInt(0), var_14C)
  loc_15988D6:   var_14C.Text = CStr(var_B4.Tag.Fields)
  loc_1598937:   Set var_12C = Me.Txt
  loc_159893D:   Call 0.Method_Proc_262_48_15997C40 (CInt(1), var_134)
  loc_1598945:   var_134.Text = CStr(var_130.Fields.Item("VNo").Value)
  loc_15989AD:   Set var_12C = Me.Txt
  loc_15989B3:   Call 0.Method_Proc_262_48_15997C40 (CInt(2), var_134, CStr(Format(CVar(var_130.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_15989BB:   var_134.Text = 1
  loc_1598A0D:   Me.LblVPrefix.Caption = CStr(var_130.Fields.Item("vPrefix").Value)
  loc_1598A6A:   var_128 = Format(CVar(Proc_6_38_E68A98(CVar(var_130.Fields.Item("VTIME")))), "hh:nn")
  loc_1598A81:   Set var_12C = Me.Txt
  loc_1598A87:   Call 0.Method_Proc_262_48_15997C40 (CInt(6), var_134, CStr(var_128))
  loc_1598A8F:   var_134.Text = 1
  loc_1598AE5:   Set var_12C = Me.Txt
  loc_1598AEB:   Call 0.Method_Proc_262_48_15997C40 (CInt(5), var_134)
  loc_1598AF3:   var_134.Text = Proc_6_38_E68A98(CVar(var_130.Fields.Item("Remarks")), 1)
  loc_1598B3D:   Set var_12C = Me.Txt
  loc_1598B43:   Call 0.Method_Proc_262_48_15997C40 (CInt(4), var_134)
  loc_1598B4B:   var_134.Tag = Proc_6_38_E68A98(CVar(var_130.Fields.Item("DepartCode")))
  loc_1598B95:   Set var_12C = Me.Txt
  loc_1598B9B:   Call 0.Method_Proc_262_48_15997C40 (CInt(4), var_134)
  loc_1598BA3:   var_134.Text = Proc_6_38_E68A98(CVar(var_130.Fields.Item("DEPARTNAME")))
  loc_1598BED:   Set var_12C = Me.Txt
  loc_1598BF3:   Call 0.Method_Proc_262_48_15997C40 (CInt(9), var_134)
  loc_1598BFB:   var_134.Tag = Proc_6_38_E68A98(CVar(var_130.Fields.Item("Godowncode")))
  loc_1598C45:   Set var_12C = Me.Txt
  loc_1598C4B:   Call 0.Method_Proc_262_48_15997C40 (CInt(9), var_134)
  loc_1598C53:   var_134.Text = Proc_6_38_E68A98(CVar(var_130.Fields.Item("Godown")))
  loc_1598C9D:   Set var_12C = Me.Txt
  loc_1598CA3:   Call 0.Method_Proc_262_48_15997C40 (CInt(7), var_134)
  loc_1598CAB:   var_134.Tag = Proc_6_38_E68A98(CVar(var_130.Fields.Item("Company")))
  loc_1598CF5:   Set var_12C = Me.Txt
  loc_1598CFB:   Call 0.Method_Proc_262_48_15997C40 (CInt(7), var_134)
  loc_1598D03:   var_134.Text = Proc_6_38_E68A98(CVar(var_130.Fields.Item("CompName")))
  loc_1598D19:   Set var_130 = Nothing 
  loc_1598D59:   var_E4 = "Select DocId As Code, Cast(VNo as varchar) Name,PartyName Party,Vdate From HallBook Where Docid='" & var_88.Fields.Item("RefDocId").Value 
  loc_1598D70:   unk_4DA746.Execute CStr(var_E4 & "'"), var_128, -1
  loc_1598D7B:   Set var_8C = var_12C
  loc_1598DA9:   If (var_8C.RecordCount > 0) Then
  loc_1598DE2:     Set var_12C = Me.Txt
  loc_1598DE8:     Call 0.Method_Proc_262_48_15997C40 (CInt(&HA), var_134)
  loc_1598DF0:     var_134.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Name")), var_12C)
  loc_1598E3A:     Set var_12C = Me.Txt
  loc_1598E40:     Call 0.Method_Proc_262_48_15997C40 (CInt(&HA), var_134)
  loc_1598E48:     var_134.Tag = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Code")))
  loc_1598E73:     var_B4 = var_8C.Fields.Item("Party")
  loc_1598E92:     Set var_12C = Me.Txt
  loc_1598E98:     Call 0.Method_Proc_262_48_15997C40 (CInt(&HB), var_134)
  loc_1598EA0:     var_134.Text = Proc_6_38_E68A98(CVar(var_B4))
  loc_1598EB4:   End If
  loc_1598EC2:   Set var_A0 = Me.Txt
  loc_1598EC8:   Call 0.Method_Proc_262_48_15997C40 (CInt(4), var_B4)
  loc_1598EEA:   If (var_B4.Tag = global_116) Then
  loc_1598EF9:     Me.FrBanq.Visible = True
  loc_1598F04:   Else
  loc_1598F10:     Me.FrBanq.Visible = False
  loc_1598F18:   End If
  loc_1598F27:   Me.FGrid.Redraw = False
  loc_1598F42:   Me.FGrid.Rows = 1
  loc_1598F4C:   var_8E = 1
  loc_1598F5C:   var_D4 = "Select I1.*,I.Name as ItemName From Indent1 I1 Left Join ItemMast I On I1.Item=I.Code And I.ItemType='Store' Where I1.Docid='"
  loc_1598FA5:   unk_4DA746.Execute CStr(var_D4 & Me.Fields.Item("DocID").Value & "'"), var_128, -1
  loc_1598FB0:   Set var_88 = var_12C
  loc_159906D:   var_1AC = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), var_88.Fields) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), var_8E) = "E"), "Modified By : ", "User : "))
  loc_15990B2:   Me.LblUser.Caption = CStr(1 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_1AC)))
  loc_159918D:   var_1AC = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_15991D2:   Me.LblLDt.Caption = CStr(var_1AC & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_159921E:   If (var_88.RecordCount > 0) Then
  loc_1599221:     ' Referenced from: 1599697
  loc_1599230:     If Not(var_88.EOF) Then
  loc_1599233:       var_B0 = vbNullString
  loc_159923D:       Set var_A0 = Me.FGrid
  loc_1599252:       Set var_1F8 = Me.FGrid
  loc_1599259:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_1599261:       var_118 = CVar(CLng(0)) 'Long
  loc_1599291:       var_E4 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1599298:       LateIdCallSt
  loc_15992B2:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_15992BA:       var_118 = CVar(CLng(7)) 'Long
  loc_15992EA:       var_E4 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_15992F1:       LateIdCallSt
  loc_1599340:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_1F8, var_E4, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_1599347:       LateIdCallSt
  loc_159935D:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_1599365:       var_118 = CVar(CLng(2)) 'Long
  loc_1599395:       var_E4 = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_159939C:       LateIdCallSt
  loc_15993D2:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_15993DA:       var_15C = CVar(CLng(3)) 'Long
  loc_1599407:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), "0.000"))) 'String
  loc_159940E:       LateIdCallSt
  loc_1599428:       var_D4 = CVar(CLng(var_8E)) 'Long
  loc_1599430:       var_118 = CVar(CLng(4)) 'Long
  loc_1599460:       var_E4 = CVar(CStr(var_88.Fields.Item("COnvFactor").Value)) 'String
  loc_1599467:       LateIdCallSt
  loc_159949D:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_15994A5:       var_15C = CVar(CLng(5)) 'Long
  loc_15994D2:       var_128 = CVar(CStr(Format(CVar(var_88.Fields.Item("WTQty")), "0.000"))) 'String
  loc_15994D9:       LateIdCallSt
  loc_159952B:       var_E4 = CVar(CStr(var_88.Fields.Item("WtUnit").Value)) 'String
  loc_1599532:       LateIdCallSt
  loc_159956E:       Proc_6_39_E7C810(var_E4, CVar(var_88.Fields.Item("Rate")), var_1F8, var_E4, CVar(CLng(6)), CVar(CLng(var_8E)), var_1F8)
  loc_1599577:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_15995AF:       LateIdCallSt
  loc_15995DE:       var_B4 = var_88.Fields.Item("Amount")
  loc_15995ED:       Proc_6_39_E7C810(var_E4, CVar(var_B4), var_1F8, CVar(CStr(Format(var_E4, "0.00"))), 1, 1, CVar(CLng(8)))
  loc_15995F6:       var_F4 = CVar(CLng(var_8E)) 'Long
  loc_15995FE:       var_15C = CVar(CLng(9)) 'Long
  loc_1599627:       var_16C = CVar(CStr(Format(var_E4, "0.00"))) 'String
  loc_159962E:       LateIdCallSt
  loc_159964A:       var_B0 = CVar(CLng(var_8E)) 'Long
  loc_1599652:       var_F4 = CVar(CLng(9)) 'Long
  loc_159966D:       var_200 = Val(CStr(var_1F8.TextMatrix)))
  loc_1599677:       var_98 = (var_98 + var_200)
  loc_1599682:       Set var_1F8 = Nothing 
  loc_159968C:       var_8E = (var_8E + 1)
  loc_1599692:       var_88.MoveNext
  loc_1599697:       GoTo loc_1599221
  loc_159969A:     End If
  loc_15996AD:     Me.FGrid.FixedRows = 1
  loc_15996B5:   End If
  loc_15996EC:   Set var_A0 = Me.Txt
  loc_15996F2:   Call 0.Method_Proc_262_48_15997C40 (CInt(8), var_B4, CStr(Format(var_98, "0.00")), 1, 1, var_8E, var_98)
  loc_15996FA:   var_B4.Text = var_200
  loc_159971E:   Me.FGrid.Redraw = True
  loc_159972C:   If (var_8E = 1) Then
  loc_159972F:     var_B0 = 1
  loc_1599742:     Me.FGrid.Rows = var_B0
  loc_1599768:     var_C4 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_F4, var_B0))) 'String
  loc_1599770:     Set var_B4 = Me.FGrid
  loc_159979D:     Me.FGrid.FixedRows = 1
  loc_15997A5:   End If
  loc_15997A5: End If
  loc_15997A5: Call Proc_262_52_F31C88(FGrid.DispID_10000, var_C4, var_1F8)
  loc_15997AF: Set var_88 = Nothing
  loc_15997B7: Set var_8C = Nothing
  loc_15997BA: Exit Sub
  loc_15997BB: ' Referenced from: 1598634
  loc_15997BB: Proc_6_60_E62BC4(var_16C, 1)
  loc_15997C0: Exit Sub
End Sub

Public Sub Proc_262_49_108DA00
  'Data Table: 4DA728
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_4DA746 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_108D779: Set var_9C = Me.TopCtrl1
  loc_108D77F: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_108D787: var_B0 = CStr()
  loc_108D798: If (var_B0 = "Add") Then
  loc_108D7C8:   Set var_9C = Me.Txt
  loc_108D7CE:   Call 0.Method_Proc_262_49_108DA000 (CInt(3), var_B4, var_B0, "Select Count(*) From Purch1 Where DocID='", var_AC, -1)
  loc_108D7EF:   unk_4DA746.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_108D7FF:    = var_D4.Item()
  loc_108D807:    = var_E8.Value
  loc_108D834:   If (var_B4.Text.Fields > 0) Then
  loc_108D83D:     Call 0.Method_arg_50 (var_B0)
  loc_108D85E:     MsgBox("Duplicate Purch.Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_108D874:     Call Proc_262_54_114E63C(MemVar_1F92044)
  loc_108D887:     Set var_9C = Me.Txt
  loc_108D88D:     Call 0.Method_Proc_262_49_108DA000 (CInt(3), var_B4)
  loc_108D895:     var_B4.Text = var_B0
  loc_108D8A9:     Proc_262_49_108DA00 = 0
  loc_108D8AF:   End If
  loc_108D8AF: End If
  loc_108D8D4: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_108D8DE:   var_CC = CVar(CLng(var_88)) 'Long
  loc_108D8E6:   var_108 = CVar(CLng(1)) 'Long
  loc_108D906:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_108D922:   If CBool(var_118 <> vbNullString) Then
  loc_108D929:     var_CC = CVar(CLng(var_88)) 'Long
  loc_108D931:     var_108 = CVar(CLng(3)) 'Long
  loc_108D961:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_108D989:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_108D9AF:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_108D9BB:       Set var_9C = Me.FGrid
  loc_108D9DF:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_108D9EC:       Proc_262_49_108DA00 = 0
  loc_108D9F2:     End If
  loc_108D9F2:   End If
  loc_108D9F5: Next var_12C 'Integer
  loc_108D9FA: Proc_262_49_108DA00 = 
End Sub

Public Sub Proc_262_50_F6A200
  'Data Table: 4DA728
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_F6A0D1: Me.LblVPrefix.Caption = vbNullString
  loc_F6A0DF: global_124 = vbNullString
  loc_F6A0E9: global_128 = vbNullString
  loc_F6A0FA: Me.LblCurStockStr.Caption = vbNullString
  loc_F6A110: Set var_8C = Me.Txt
  loc_F6A116: Call 0.Method_Proc_262_50_F6A200C (var_8E, var_86)
  loc_F6A126: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F6A13C:   Set var_8C = Me.Txt
  loc_F6A142:   Call 0.Method_Proc_262_50_F6A2000 (CInt(var_86), var_98)
  loc_F6A14A:   var_98.Text = vbNullString
  loc_F6A166:   Set var_8C = Me.Txt
  loc_F6A16C:   Call 0.Method_Proc_262_50_F6A2000 (CInt(var_86), var_98)
  loc_F6A174:   var_98.Tag = vbNullString
  loc_F6A183: Next var_92 'Byte
  loc_F6A19C: Me.FGrid.Rows = 1
  loc_F6A1C2: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_F6A1CA: Set var_98 = Me.FGrid
  loc_F6A1F7: Me.FGrid.FixedRows = 1
  loc_F6A1FF: Exit Sub
End Sub

Public Sub Proc_262_51_F7AA20(arg_C) 'F7AA20
  'Data Table: 4DA728
  Dim var_98 As TextBox
  loc_F7A8D6: Set var_8C = Me.Txt
  loc_F7A8DC: Call 0.Method_Proc_262_51_F7AA20C (var_8E, var_86)
  loc_F7A8EC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F7A902:   Set var_8C = Me.Txt
  loc_F7A908:   Call 0.Method_Proc_262_51_F7AA200 (CInt(var_86), var_98)
  loc_F7A910:   var_98.Enabled = arg_C
  loc_F7A91F: Next var_92 'Byte
  loc_F7A932: Set var_8C = Me.Txt
  loc_F7A938: Call 0.Method_Proc_262_51_F7AA200 (CInt(3), var_98)
  loc_F7A940: var_98.Enabled = False
  loc_F7A959: Set var_8C = Me.Txt
  loc_F7A95F: Call 0.Method_Proc_262_51_F7AA200 (CInt(8), var_98)
  loc_F7A967: var_98.Enabled = False
  loc_F7A980: Set var_8C = Me.Txt
  loc_F7A986: Call 0.Method_Proc_262_51_F7AA200 (CInt(&HB), var_98)
  loc_F7A98E: var_98.Enabled = False
  loc_F7A9A7: Set var_8C = Me.Txt
  loc_F7A9AD: Call 0.Method_Proc_262_51_F7AA200 (CInt(1), var_98)
  loc_F7A9B5: var_98.Enabled = False
  loc_F7A9CC: If (global_120 = "No") Then
  loc_F7A9DC:   Set var_8C = Me.Txt
  loc_F7A9E2:   Call 0.Method_Proc_262_51_F7AA200 (CInt(2), var_98)
  loc_F7A9EA:   var_98.Enabled = False
  loc_F7A9F6: End If
  loc_F7AA03: Set var_8C = Me.Txt
  loc_F7AA09: Call 0.Method_Proc_262_51_F7AA200 (CInt(6), var_98)
  loc_F7AA11: var_98.Enabled = False
  loc_F7AA1D: Exit Sub
End Sub

Public Sub Proc_262_52_F31C88
  'Data Table: 4DA728
  loc_F31B84: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F31B96:   Me.DGItem.Visible = False
  loc_F31B9E: End If
  loc_F31BBA: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_F31BCC:   Me.DGDepart.Visible = False
  loc_F31BD4: End If
  loc_F31BF0: If (CBool(Me.DGGodown.Visible) = &HFF) Then
  loc_F31C02:   Me.DGGodown.Visible = False
  loc_F31C0A: End If
  loc_F31C26: If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_F31C38:   Me.DGBookNo.Visible = False
  loc_F31C40: End If
  loc_F31C4B: If (global_176 = "Yes") Then
  loc_F31C6A:   If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_F31C7C:     Me.DGCompany.Visible = False
  loc_F31C84:   End If
  loc_F31C84: End If
  loc_F31C84: Exit Sub
End Sub

Public Sub Proc_262_53_F0CA44
  'Data Table: 4DA728
  loc_F0C968: Call Proc_262_52_F31C88()
  loc_F0C978: Set var_88 = Me.Txt
  loc_F0C97E: Call 0.Method_Proc_262_53_F0CA440 (CInt(2))
  loc_F0C9A7: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F0C9AA:   Exit Sub
  loc_F0C9AB: End If
  loc_F0C9B6: Set var_88 = Me.Txt
  loc_F0C9BC: Call 0.Method_Proc_262_53_F0CA440 (CInt(1), var_8C)
  loc_F0C9E5: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F0C9E8:   Exit Sub
  loc_F0C9E9: End If
  loc_F0CA20: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0CA23:   Call TopCtrl1_UnknownEvent_16()
  loc_F0CA2B: Else
  loc_F0CA31:   Call 0.Method_arg_1E8 (var_88)
  loc_F0CA39:   Call var_88.SetFocus
  loc_F0CA42: End If
  loc_F0CA42: Exit Sub
End Sub

Public Sub Proc_262_54_114E63C
  'Data Table: 4DA728
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
  Dim var_180 As TextBox
  loc_114E2DD: var_90 = "RQ"
  loc_114E2F4: var_94 = "Select VT.Number_Method,VP.V_Type,Vt.Description,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_114E325: Set var_A8 = Me.Txt
  loc_114E32B: Call 0.Method_Proc_262_54_114E63C0 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_114E33A: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_114E342: var_EC = -1 & var_CC 
  loc_114E356: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_114E361: Set var_8C = var_134
  loc_114E39D: If (var_8C.RecordCount > 0) Then
  loc_114E3DC:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_114E3DF:     GoTo loc_114E46C
  loc_114E3E2:   End If
  loc_114E413:   global_92 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_114E43E:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_114E453:   var_CC = (var_AC.Value + 1)
  loc_114E45B:   global_96 = CInt(var_CC)
  loc_114E46C:   ' Referenced from: 114E3DF
  loc_114E46C: End If
  loc_114E497: var_BC = Space((5 - Len(var_90)))
  loc_114E49F: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_114E4B3: var_EC = Space((5 - Len(global_92)))
  loc_114E4BB: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_114E4C8: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_92))
  loc_114E4E1: var_14C = Space((8 - Len(CStr(global_96))))
  loc_114E4E9: var_15C = (var_130 + var_14C)
  loc_114E4F8: var_17C = (var_15C + CVar(CStr(global_96)))
  loc_114E503: global_84 = CStr(var_17C)
  loc_114E539: Me.LblVPrefix.Caption = global_92
  loc_114E552: Set var_A8 = Me.Txt
  loc_114E558: Call 0.Method_Proc_262_54_114E63C0 (CInt(3), var_AC)
  loc_114E560: var_AC.Text = global_84
  loc_114E582: Set var_A8 = Me.Txt
  loc_114E588: Call 0.Method_Proc_262_54_114E63C0 (CInt(1), var_AC)
  loc_114E590: var_AC.Text = CStr(global_96)
  loc_114E5AD: Set var_A8 = Me.Txt
  loc_114E5B3: Call 0.Method_Proc_262_54_114E63C0 (CInt(0), var_AC)
  loc_114E5BB: var_AC.Tag = var_90
  loc_114E600: Set var_134 = Me.Txt
  loc_114E606: Call 0.Method_Proc_262_54_114E63C0 (CInt(0), var_180)
  loc_114E60E: var_180.Text = CStr(var_8C.Fields.Item("Description").Value)
  loc_114E62A: var_88 = global_84
  loc_114E632: Set var_8C = Nothing
  loc_114E635: Proc_262_54_114E63C = global_96
End Sub

Public Sub Proc_262_55_100FA84
  'Data Table: 4DA728
  Dim unk_4DA746 As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Fields15
  Dim var_B8 As Variant
  Dim var_13C As TextBox
  Dim var_120 As Variant
  loc_100F8B3: unk_4DA746.Execute "Select Name, Srno,IsNull(SDate,'') as SDate,IsNull(EDate,'') as EDate From DateLock Where Name='Purchase Bill Entry' ", var_AC, -1
  loc_100F8BE: Set var_8C = var_B0
  loc_100F8DB: If (var_8C.RecordCount > 0) Then
  loc_100F8F8:   var_B8 = var_8C.Fields.Item("SDate")
  loc_100F95E:   If CBool((var_B8.Value <> vbNullString) And (var_8C.Fields.Item("EDate").Value <> vbNullString)) Then
  loc_100F96F:     Set var_B0 = Me.Txt
  loc_100F975:     Call 0.Method_Proc_262_55_100FA840 (CInt(2), var_B8, var_134)
  loc_100F97D:     var_B0 = var_B8.Text
  loc_100F9C8:     Set var_138 = Me.Txt
  loc_100F9CE:     Call 0.Method_Proc_262_55_100FA840 (CInt(2), var_13C, var_140)
  loc_100F9D6:     (CDate(CDate(var_134)) >= var_8C.Fields.Item("SDate").Value) = var_13C.Text
  loc_100FA07:     var_100 = var_8C.Fields.Item("EDate").Value
  loc_100FA0F:     var_120 = (CDate(CDate(var_140)) <= var_100)
  loc_100FA3E:     If CBool(Not &HFF And var_120) Then
  loc_100FA62:       MsgBox("Date Locked!", &H40, "Date Validation", var_100, var_120)
  loc_100FA77:       Proc_262_55_100FA84 = 0
  loc_100FA7D:     End If
  loc_100FA7D:   End If
  loc_100FA7D: End If
  loc_100FA7D: Proc_262_55_100FA84 = 
End Sub

Public Sub Proc_262_56_E89CAC
  'Data Table: 4DA728
  loc_E89C46: Set global_60 = New 
  loc_E89C63: Me.Connection15.Execute "Select Code,D.Name as Name From Depart D Order by Name", var_A8, -1
  loc_E89C74: Set global_60 = var_88
  loc_E89C8B: CVarUnk
  loc_E89C90: VerifyVarObj
  loc_E89C96: Set var_88 = Me.DGDepart
  loc_E89C9C: LateIdStAd
  loc_E89CAA: Exit Sub
End Sub

Public Sub Proc_262_57_FCF85C
  'Data Table: 4DA728
  Dim var_94 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_130 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_1E4 As Variant
  Dim var_90 As Double
  loc_FCF6AC: On Error Goto loc_FCF856
  loc_FCF6D4: For var_A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A8 'Integer
  loc_FCF6DE:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_FCF6E6:   var_D8 = CVar(CLng(3)) 'Long
  loc_FCF70F:   var_FC = CVar(CLng(var_86)) 'Long
  loc_FCF717:   var_11C = CVar(CLng(8)) 'Long
  loc_FCF720:   Set var_130 = Me.FGrid
  loc_FCF740:   var_1A4 = CVar(CLng(var_86)) 'Long
  loc_FCF748:   var_1C4 = CVar(CLng(9)) 'Long
  loc_FCF779:   var_1E4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(var_130.TextMatrix))))), "0.00"))) 'String
  loc_FCF781:   Set var_1F8 = Me.FGrid
  loc_FCF787:   LateIdCallSt
  loc_FCF7B2:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_FCF7BA:   var_D8 = CVar(CLng(9)) 'Long
  loc_FCF7E6:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_FCF7F5: Next var_A8 'Integer
  loc_FCF831: Set var_94 = Me.Txt
  loc_FCF837: Call 0.Method_Proc_262_57_FCF85C0 (CInt(8), var_130, CStr(Format(var_90, "0.00")))
  loc_FCF83F: var_130.Text = 1
  loc_FCF855: Exit Sub
  loc_FCF856: ' Referenced from: FCF6AC
  loc_FCF856: Proc_6_60_E62BC4(1)
  loc_FCF85B: Exit Sub
End Sub
