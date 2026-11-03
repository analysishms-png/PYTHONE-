VERSION 5.00
Begin VB.Form RsKitchenMaterial
  Caption = "Excise Invoice Cum Gate Pass"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11310
  ClientHeight = 8760
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    Left = 1905
    Top = 7560
    Width = 5190
    Height = 255
    TabIndex = 30
    BorderStyle = 0 'None
    MaxLength = 75
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
    Index = 6
    BackColor = &HFFFFFF&
    Left = 1905
    Top = 7830
    Width = 1425
    Height = 255
    TabIndex = 29
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11310
    Height = 450
    TabIndex = 28
  End
  Begin TextBox TxtBarCode
    Left = 7965
    Top = 675
    Width = 2850
    Height = 330
    Visible = 0   'False
    TabIndex = 24
    MaxLength = 30
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
  Begin TextBox TxtTaxAmt
    Left = 4620
    Top = 5550
    Width = 1380
    Height = 240
    Visible = 0   'False
    TabIndex = 23
    BorderStyle = 0 'None
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
  Begin TextBox TxtPer
    Index = 1
    Left = 8640
    Top = 5280
    Width = 330
    Height = 240
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 8
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
  Begin TextBox TxtGt
    Index = 1
    Left = 9225
    Top = 5280
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 12
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
  Begin CommandButton CmdLastEntry
    Caption = "Fill With Last Entry"
    Left = 9000
    Top = 1050
    Width = 1875
    Height = 390
    TabIndex = 15
    TabStop = 0   'False
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DGDepart
    Left = 16890
    Top = 1995
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin TextBox Txt
    Index = 4
    Left = 2235
    Top = 945
    Width = 4605
    Height = 240
    TabIndex = 3
    BorderStyle = 0 'None
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
    Left = 4530
    Top = 5265
    Width = 1995
    Height = 240
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 25
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 120
    Top = 2385
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    Left = 2235
    Top = 690
    Width = 4605
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
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
    Index = 1
    Left = 2235
    Top = 435
    Width = 1725
    Height = 240
    TabIndex = 1
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
    Index = 2
    Left = 5100
    Top = 435
    Width = 1740
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin DataGrid DGToDepart
    Left = 16905
    Top = 1380
    Width = 4155
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin MSHFlexGrid FGCat
    Left = 90
    Top = 2805
    Width = 10680
    Height = 2355
    Visible = 0   'False
    TabIndex = 17
  End
  Begin MSHFlexGrid FGrid
    Left = 75
    Top = 1515
    Width = 10710
    Height = 3405
    TabIndex = 4
  End
  Begin DataGrid DGItem
    Left = 16905
    Top = 660
    Width = 6735
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 27
  End
  Begin DataGrid DGMemName
    Left = 12165
    Top = 615
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin Label LblName
    Caption = "Member Name"
    Index = 0
    ForeColor = &H0&
    Left = 435
    Top = 7560
    Width = 1260
    Height = 240
    TabIndex = 32
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
    Caption = "Card No"
    Index = 1
    ForeColor = &H0&
    Left = 420
    Top = 7830
    Width = 690
    Height = 240
    TabIndex = 31
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
  Begin Label LblCaption
    Caption = "#"
    BackColor = &H404040&
    ForeColor = &HFFFFFF&
    Left = 9275
    Top = 345
    Width = 255
    Height = 345
    TabIndex = 16
    Alignment = 2 'Center
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
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HFF&
    Left = 350
    Top = 6420
    Width = 2745
    Height = 345
    TabIndex = 26
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
    Caption = "Bar Code"
    Index = 6
    ForeColor = &H0&
    Left = 7155
    Top = 735
    Width = 735
    Height = 210
    Visible = 0   'False
    TabIndex = 25
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
    Left = 6690
    Top = 5280
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
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 9030
    Top = 5280
    Width = 180
    Height = 240
    Visible = 0   'False
    TabIndex = 21
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
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    Left = 6660
    Top = 5595
    Width = 750
    Height = 210
    Visible = 0   'False
    TabIndex = 20
  End
  Begin Label Label1
    Caption = "To Location"
    Index = 0
    ForeColor = &H0&
    Left = 375
    Top = 960
    Width = 990
    Height = 240
    TabIndex = 13
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 1545
    Top = 450
    Width = 690
    Height = 240
    TabIndex = 12
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
  Begin Label Label1
    Caption = "DOC ID"
    Index = 5
    ForeColor = &HFF&
    Left = 3915
    Top = 4905
    Width = 540
    Height = 210
    Visible = 0   'False
    TabIndex = 11
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
    Caption = "From Location"
    Index = 4
    ForeColor = &H0&
    Left = 375
    Top = 705
    Width = 1215
    Height = 240
    TabIndex = 10
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
  Begin Label Label1
    Caption = "Vr. No."
    Index = 1
    ForeColor = &H0&
    Left = 375
    Top = 450
    Width = 600
    Height = 240
    TabIndex = 8
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
  Begin Label Label1
    Caption = "Date"
    Index = 2
    ForeColor = &H0&
    Left = 4605
    Top = 450
    Width = 390
    Height = 240
    TabIndex = 7
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
End

Attribute VB_Name = "RsKitchenMaterial"

Private global_90 As Integer
Private global_88 As Integer

Private Sub FGrid_UnknownEvent_0 'E60AB4
  'Data Table: 4FE238
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E60A7F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60A92: Set var_A8 = Me.TxtGrid
  loc_E60A98: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60AA0: var_AC.Visible = False
  loc_E60AAC: Call Proc_224_52_EF65AC()
  loc_E60AB1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68660
  'Data Table: 4FE238
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6861C: Set var_88 = Me.TxtGrid
  loc_E68622: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6863C: If (var_8C.Visible = 0) Then
  loc_E68655:   Me.FGrid.BackColorSel = CVar(CLng(global_108))
  loc_E6865D: End If
  loc_E6865D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1F860
  'Data Table: 4FE238
  loc_E1F857: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F85F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E2E3F4
  'Data Table: 4FE238
  Dim var_8C As TextBox
  loc_E2E3D7: Set var_88 = Me.TxtGrid
  loc_E2E3DD: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E2E3E5: var_8C.Visible = False
  loc_E2E3F1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '116BF1C
  'Data Table: 4FE238
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
  loc_116BB50: On Error Goto loc_116BF13
  loc_116BB57: Set var_88 = Me.TopCtrl1
  loc_116BB5D: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_116BB76: If (CStr() = "Browse") Then
  loc_116BB79:   Exit Sub
  loc_116BB7A: End If
  loc_116BBEE: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_116BC07:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_116BC17:   var_9C = "+{Tab}"
  loc_116BC1D:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_116BC27:   Cancel = 0
  loc_116BC2D: Else
  loc_116BC37:   var_B0 = Me.FGrid.Rows
  loc_116BC84:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_116BC9D:     Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_116BCAA:     Call Proc_224_57_ED7A30(0, var_B0, Cancel)
  loc_116BCAF:   End If
  loc_116BCAF: End If
  loc_116BCB5: global_90 = Cancel
  loc_116BCDB: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_116BCFF: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_116BD15:   var_EC = CLng(Me.FGrid.Col)
  loc_116BD25:   If (var_EC = CLng(1)) Then
  loc_116BD3B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116BD53:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116BD58:     var_11C = vbNullString
  loc_116BD62:     Set var_B4 = Me.FGrid
  loc_116BD68:     LateIdCallSt
  loc_116BD93:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116BD9B:     var_FC = CVar(CLng(9)) 'Long
  loc_116BDA0:     var_11C = vbNullString
  loc_116BDAA:     Set var_A0 = Me.FGrid
  loc_116BDB0:     LateIdCallSt
  loc_116BDD5:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116BDDD:     var_FC = CVar(CLng(&HA)) 'Long
  loc_116BDE2:     var_11C = vbNullString
  loc_116BDEC:     Set var_A0 = Me.FGrid
  loc_116BDF2:     LateIdCallSt
  loc_116BE17:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116BE1F:     var_FC = CVar(CLng(2)) 'Long
  loc_116BE24:     var_11C = vbNullString
  loc_116BE2E:     Set var_A0 = Me.FGrid
  loc_116BE34:     LateIdCallSt
  loc_116BE59:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116BE61:     var_FC = CVar(CLng(7)) 'Long
  loc_116BE66:     var_11C = vbNullString
  loc_116BE70:     Set var_A0 = Me.FGrid
  loc_116BE76:     LateIdCallSt
  loc_116BE8B:   Else
  loc_116BE92:     If Not (var_EC = CLng(7)) Then
  loc_116BE9C:       If (var_EC = CLng(3)) Then
  loc_116BE9F:       End If
  loc_116BEBB:       Set var_A0 = Me.FGrid
  loc_116BECA:       var_FC = CVar(CLng(var_A0.Col)) 'Long
  loc_116BECF:       var_11C = vbNullString
  loc_116BEDF:       LateIdCallSt
  loc_116BEF7:       Call Proc_224_56_F73060(Me.FGrid, var_11C, var_FC, CVar(CLng(Me.FGrid.Row)), var_A0, var_11C, var_FC, CVar(CLng(Me.FGrid.Row)))
  loc_116BEFC:     End If
  loc_116BEFC:   End If
  loc_116BEFC: End If
  loc_116BF02: If (Cancel = &HD) Then
  loc_116BF0A:   global_88 = 0
  loc_116BF0D: End If
  loc_116BF0F: Cancel = 0
  loc_116BF12: Exit Sub
  loc_116BF13: ' Referenced from: 116BB50
  loc_116BF13: Proc_6_60_E62BC4(Cancel, global_88, var_A0, var_11C, var_FC)
  loc_116BF18: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E149C0
  'Data Table: 4FE238
  loc_E149B1: Call FGrid_UnknownEvent_C()
  loc_E149BB: global_88 = 0
  loc_E149BE: Exit Sub
  loc_E149BF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '102BDB0
  'Data Table: 4FE238
  Dim var_AC As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_B4 As String
  Dim var_CE As Integer
  Dim var_B8 As TextBox
  Dim var_C8 As TextBox
  loc_102BB9B: var_88 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_102BBA5: On Error Goto loc_102BDA7
  loc_102BBBB: var_B0 = CLng(Me.FGrid.Col)
  loc_102BBCB: If (var_B0 = CLng(1)) Then
  loc_102BBD2:   Set var_C8 = Me.FGrid
  loc_102BBF6:   var_B4 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_102BC23:   Set var_B8 = var_C8
  loc_102BC35:   Proc_6_63_110ABA4(Me, var_B8, Me.TxtGrid, 0, 0)
  loc_102BC5D:   Set var_AC = Me.TxtGrid
  loc_102BC63:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_B4, Asc(var_B4))
  loc_102BC6B:   0 = var_B8.Text
  loc_102BC84:   If (Len(var_B4) <= 1) Then
  loc_102BC93:     Set var_AC = Me.TxtGrid
  loc_102BC99:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_B4)
  loc_102BCA1:     var_CE = var_B8.Text
  loc_102BCB2:     Set var_BC = Me.TxtGrid
  loc_102BCB8:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_102BCC0:     var_C8.Text = var_B4
  loc_102BCD3:   End If
  loc_102BCDF:   Set var_AC = Me.TxtGrid
  loc_102BCE5:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_102BCFF:   Set var_BC = Me.TxtGrid
  loc_102BD05:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_102BD0D:   var_C8.SelStart = Len(var_B8.Text)
  loc_102BD23: Else
  loc_102BD2A:   If Not (var_B0 = CLng(7)) Then
  loc_102BD34:     If Not (var_B0 = CLng(3)) Then
  loc_102BD3E:       If (var_B0 = CLng(4)) Then
  loc_102BD41:       End If
  loc_102BD41:     End If
  loc_102BD7F:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_102BD91:   End If
  loc_102BD91: End If
  loc_102BD9B: If (CLng(Cancel) <> &HD) Then
  loc_102BDA3:   global_88 = &HFF
  loc_102BDA6: End If
  loc_102BDA6: Exit Sub
  loc_102BDA7: ' Referenced from: 102BBA5
  loc_102BDA7: Proc_6_60_E62BC4(global_88, &HFF, Cancel)
  loc_102BDAC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1059BA0
  'Data Table: 4FE238
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  loc_1059930: On Error Goto loc_1059B99
  loc_1059937: Set var_8C = Me.TopCtrl1
  loc_105993D: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1059956: If (CStr() = "Browse") Then
  loc_1059959:   Exit Sub
  loc_105995A: End If
  loc_1059977: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_105997A:   Exit Sub
  loc_105997B: End If
  loc_105998C: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_10599AE:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10599E8:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_1059A0A:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1059A20:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1059A29:         Set var_114 = Me.FGrid
  loc_1059A44:       Else
  loc_1059A57:         Me.FGrid.Rows = 1
  loc_1059A7D:         var_9C = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_1059A85:         Set var_114 = Me.FGrid
  loc_1059A9F:         var_B0 = 1
  loc_1059AB2:         Me.FGrid.FixedRows = var_B0
  loc_1059ABA:       End If
  loc_1059ABA:       Call Proc_224_56_F73060(FGrid.DispID_10000, var_9C)
  loc_1059AC3:       Set var_8C = Me.TopCtrl1
  loc_1059AC9:       Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(FGrid.DispID_10000)
  loc_1059AE2:       If (CStr(var_B0) = "Add") Then
  loc_1059B0A:         For var_120 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_120 'Integer
  loc_1059B14:           var_B0 = CVar(CLng(var_86)) 'Long
  loc_1059B1C:           var_E0 = CVar(CLng(0)) 'Long
  loc_1059B26:           var_9C = CVar(CStr(var_86)) 'String
  loc_1059B2E:           Set var_8C = Me.FGrid
  loc_1059B34:           LateIdCallSt
  loc_1059B45:         Next var_120 'Integer
  loc_1059B4A:       End If
  loc_1059B4A:     End If
  loc_1059B4A:     Call Proc_224_46_1462124()
  loc_1059B52:   Else
  loc_1059B73:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_1059B83:   End If
  loc_1059B87:   Set var_8C = Me.FGrid
  loc_1059B98: End If
  loc_1059B98: Exit Sub
  loc_1059B99: ' Referenced from: 1059930
  loc_1059B99: Proc_6_60_E62BC4(FGrid.DispID_8001)
  loc_1059B9E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9C700
  'Data Table: 4FE238
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9C6A3: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9C6BB: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9C6E3: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9C6FE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E4362C
  'Data Table: 4FE238
  Dim var_8C As TextBox
  loc_E4360B: Set var_88 = Me.TxtGrid
  loc_E43611: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E43619: var_8C.Visible = False
  loc_E43625: Call Proc_224_52_EF65AC()
  loc_E4362A: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10D156C
  'Data Table: 4FE238
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_148 As Variant
  loc_10D1283: Me.DGItem.Visible = False
  loc_10D12A2: If (Me.RecordCount > 0) Then
  loc_10D12B8:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D12C0:   var_E4 = CVar(CLng(1)) 'Long
  loc_10D12F3:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10D12FB:   Set var_128 = Me.FGrid
  loc_10D1301:   LateIdCallSt
  loc_10D1330:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D1338:   var_E4 = CVar(CLng(9)) 'Long
  loc_10D136B:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10D1373:   Set var_128 = Me.FGrid
  loc_10D1379:   LateIdCallSt
  loc_10D13A8:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D13B0:   var_E4 = CVar(CLng(&HA)) 'Long
  loc_10D13E3:   var_114 = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_10D13EB:   Set var_128 = Me.FGrid
  loc_10D13F1:   LateIdCallSt
  loc_10D1420:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D1428:   var_E4 = CVar(CLng(2)) 'Long
  loc_10D145B:   var_114 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_10D1463:   Set var_128 = Me.FGrid
  loc_10D1469:   LateIdCallSt
  loc_10D149F:   var_B0 = Me.Fields.Item("Rate")
  loc_10D14B7:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10D14BF:   var_F4 = CVar(CLng(7)) 'Long
  loc_10D14EC:   var_148 = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_10D14F4:   Set var_128 = Me.FGrid
  loc_10D14FA:   LateIdCallSt
  loc_10D1518: End If
  loc_10D1524: Set var_A8 = Me.TxtGrid
  loc_10D152A: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15A, var_128, var_148, 1, 1)
  loc_10D1532: var_F4 = var_B0.Visible
  loc_10D1544: If (var_15A = &HFF) Then
  loc_10D1550:   Set var_A8 = Me.TxtGrid
  loc_10D1556:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_D4, var_128)
  loc_10D155E:   var_B0.SetFocus
  loc_10D156A: End If
  loc_10D156A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F844F4
  'Data Table: 4FE238
  Dim var_8C As Variant
  Dim var_D0 As Variant
  Dim var_D4 As TextBox
  loc_F8439C: On Error Goto loc_F844ED
  loc_F843C2: Call Proc_224_51_EC7ACC(Proc_5_1_100CB50("ADD", Me))
  loc_F843CD: Call Proc_224_49_1016874(global_56)
  loc_F843DF: Me.LblVPrefix.Caption = vbNullString
  loc_F843FA: Me.FGrid.Rows = 1
  loc_F84417: var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F8441F: Set var_D4 = Me.FGrid
  loc_F8444E: Me.FGrid.FixedRows = 1
  loc_F84469: Set var_8C = Me.Txt
  loc_F8446F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, CStr(MemVar_1F920EC))
  loc_F84477: var_D4.Text = FGrid.DispID_10000
  loc_F84491: Set var_8C = Me.Txt
  loc_F84497: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4)
  loc_F8449F: var_D4.SetFocus
  loc_F844BE: Set var_8C = Me.Txt
  loc_F844C4: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4)
  loc_F844CC: var_D4.Text = CStr(MemVar_1F920EC)
  loc_F844E7: Call Txt_Validate(CInt(2))
  loc_F844EC: Exit Sub
  loc_F844ED: ' Referenced from: F8439C
  loc_F844ED: Proc_6_60_E62BC4(&HFF)
  loc_F844F2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBA6E8
  'Data Table: 4FE238
  loc_EBA654: On Error Goto loc_EBA6DF
  loc_EBA68E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EBA69D:   Set var_10C = Me
  loc_EBA6B4:   Call Proc_224_51_EC7ACC(Proc_5_1_100CB50("INI", var_10C))
  loc_EBA6BF:   Call Proc_224_50_1671E24(global_56)
  loc_EBA6C7: Else
  loc_EBA6CD:   Call 0.Method_arg_1E8 (var_10C)
  loc_EBA6D5:   Call var_10C.SetFocus
  loc_EBA6DE: End If
  loc_EBA6DE: Exit Sub
  loc_EBA6DF: ' Referenced from: EBA654
  loc_EBA6DF: Proc_6_60_E62BC4()
  loc_EBA6E4: Exit Sub
  loc_EBA6E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11AE42C
  'Data Table: 4FE238
  Dim var_11C As String
  Dim var_120 As String
  Dim var_F4 As Variant
  Dim var_124 As Label
  Dim var_114 As Variant
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_160 As Variant
  Dim var_168 As TextBox
  Dim var_190 As Variant
  Dim var_198 As TextBox
  Dim var_1BC As Variant
  Dim unk_4FE23C As Connection15
  Dim Me As Recordset15
  Dim var_B4 As Variant
  loc_11AE044: On Error Goto loc_11AE3DB
  loc_11AE055: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_11AE058:   Exit Sub
  loc_11AE059: End If
  loc_11AE090: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_11AE0A3:   var_11C = Proc_6_45_EAD428(MemVar_1F92070, 2)
  loc_11AE0BE:   var_B4 = Space((5 - Len("KMISS")))
  loc_11AE0C6:   var_F4 = (CVar(MemVar_1F9206C & var_11C & "KMISS") + "Are You Sure To Delete This ? ")
  loc_11AE0DF:   var_114 = CVar(Me.LblVPrefix.Caption) 'String
  loc_11AE0E2:   var_138 = (var_F4 + var_114)
  loc_11AE0F2:   Set var_13C = Me.LblVPrefix
  loc_11AE105:   var_150 = Space((5 - Len(var_13C.Caption)))
  loc_11AE10D:   var_160 = (var_138 + var_150)
  loc_11AE124:   Set var_164 = Me.Txt
  loc_11AE12A:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_168, var_16C)
  loc_11AE132:   8 = var_168.Text
  loc_11AE149:   var_180 = Space((var_160 - Len(CStr(Val(var_16C)))))
  loc_11AE151:   var_190 = ( + var_180)
  loc_11AE163:   Set var_194 = Me.Txt
  loc_11AE169:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_198)
  loc_11AE183:   var_1BC = (var_190 + CVar(CStr(Val(var_198.Text))))
  loc_11AE1D4:   unk_4FE23C.BeginTrans var_1C4
  loc_11AE1EA:   var_94 = Me.Bookmark 'Variant
  loc_11AE20C:   Set var_124 = Me.Txt
  loc_11AE212:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_13C, var_11C, "Delete From Stock Where DocID='")
  loc_11AE223:   var_120 = -1 & var_11C
  loc_11AE233:   unk_4FE23C.Execute MemVar_1F9206C & var_11C & "'", var_164, 
  loc_11AE264:   var_11C = "Delete From Stock Where DocID='" & CStr(var_1BC)
  loc_11AE274:   unk_4FE23C.Execute var_11C & "'", var_13C.Text, -1
  loc_11AE2AA:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_13C, var_11C, "Delete From TranTaxDetail Where DocID='")
  loc_11AE2B2:   var_B4 = var_13C.Text
  loc_11AE2BB:   var_120 = -1 & var_11C
  loc_11AE2CB:   unk_4FE23C.Execute var_11C & "'" & "'", var_164, Me.Txt
  loc_11AE303:   Set var_124 = Me.Txt
  loc_11AE309:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_13C, var_11C, "Delete From TranSunDetail Where DocID='")
  loc_11AE311:   var_B4 = var_13C.Text
  loc_11AE31A:   var_120 = -1 & var_11C
  loc_11AE32A:   unk_4FE23C.Execute var_11C & "'" & "'", var_164, 
  loc_11AE34A:   unk_4FE23C.CommitTrans
  loc_11AE35A:   Me.Requery -1
  loc_11AE37A:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11AE387:     Me.Bookmark = var_94
  loc_11AE38F:   Else
  loc_11AE3A3:     If (Me.EOF = 0) Then
  loc_11AE3AC:       Me.MoveLast
  loc_11AE3B1:     End If
  loc_11AE3B1:   End If
  loc_11AE3B1:   Call Proc_224_50_1671E24()
  loc_11AE3D2:   Proc_5_0_110649C(&HFF, Me)
  loc_11AE3DA: End If
  loc_11AE3DA: Exit Sub
  loc_11AE3DB: ' Referenced from: 11AE044
  loc_11AE3E1: unk_4FE23C.RollbackTrans
  loc_11AE3EE: Set var_124 = Err()
  loc_11AE3F4: Call 0.Method_arg_2C (var_11C, global_56)
  loc_11AE415: MsgBox(CVar(var_11C), &H10, " Deletion Message", var_F4, var_114)
  loc_11AE428: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '10DAA68
  'Data Table: 4FE238
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_CC As Variant
  Dim var_90 As Label
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_114 As Variant
  Dim var_11C As TextBox
  Dim var_144 As Variant
  Dim var_14C As TextBox
  Dim var_170 As Variant
  loc_10DA7A4: On Error Goto loc_10DAA60
  loc_10DA7B5: If (Proc_183_55_FE7900(global_56) = &HFF) Then
  loc_10DA7B8:   Exit Sub
  loc_10DA7B9: End If
  loc_10DA7D0: If (Me.RecordCount > 0) Then
  loc_10DA7F6:   Call Proc_224_51_EC7ACC(Proc_5_1_100CB50("EDIT", Me))
  loc_10DA80E:   Set var_90 = Me.Txt
  loc_10DA814:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_10DA81C:   var_98.Enabled = False
  loc_10DA82C:   Set var_90 = Me.TopCtrl1
  loc_10DA832:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(global_56)
  loc_10DA84B:   If (CStr() = "Add") Then
  loc_10DA859:     Set var_90 = Me.Txt
  loc_10DA85F:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2))
  loc_10DA867:     var_98.SetFocus
  loc_10DA873:   End If
  loc_10DA877:   Set var_90 = Me.TopCtrl1
  loc_10DA87D:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_98)
  loc_10DA896:   If (CStr() = "Edit") Then
  loc_10DA8A4:     Set var_90 = Me.Txt
  loc_10DA8AA:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3))
  loc_10DA8B2:     var_98.SetFocus
  loc_10DA8BE:   End If
  loc_10DA8CC:   Set var_90 = Me.Txt
  loc_10DA8D2:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_10DA8E5:   global_76 = var_98.Text
  loc_10DA91E:   var_A8 = Space((5 - Len("KMISS")))
  loc_10DA926:   var_CC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & "KMISS") + var_A8)
  loc_10DA93F:   var_E0 = CVar(Me.LblVPrefix.Caption) 'String
  loc_10DA942:   var_F0 = (var_CC + var_E0)
  loc_10DA952:   Set var_98 = Me.LblVPrefix
  loc_10DA965:   var_104 = Space((5 - Len(var_98.Caption)))
  loc_10DA96D:   var_114 = (var_F0 + var_104)
  loc_10DA984:   Set var_118 = Me.Txt
  loc_10DA98A:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_11C, var_120)
  loc_10DA992:   8 = var_11C.Text
  loc_10DA9A9:   var_134 = Space((var_114 - Len(CStr(Val(var_120)))))
  loc_10DA9B1:   var_144 = (var_98 + var_134)
  loc_10DA9C3:   Set var_148 = Me.Txt
  loc_10DA9C9:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_14C)
  loc_10DA9E3:   var_170 = (var_144 + CVar(CStr(Val(var_14C.Text))))
  loc_10DA9EE:   global_80 = CStr(var_170)
  loc_10DAA2E: Else
  loc_10DAA4F:   MsgBox("No Record To Edit.", &H40, "Information", var_CC, var_E0)
  loc_10DAA5F: End If
  loc_10DAA5F: Exit Sub
  loc_10DAA60: ' Referenced from: 10DA7A4
  loc_10DAA60: Proc_6_60_E62BC4()
  loc_10DAA65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19A7C
  'Data Table: 4FE238
  loc_E19A71: Me.Global.Unload Me
  loc_E19A79: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB2D0C
  'Data Table: 4FE238
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB2C7C: On Error Goto loc_EB2D06
  loc_EB2C96: If (Me.RecordCount <= 0) Then
  loc_EB2C9F:   var_B8 = "Information"
  loc_EB2CBA:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB2CCA:   Exit Sub
  loc_EB2CCB: End If
  loc_EB2CCE: MemVar_1F920E4 = "Select Distinct S.Docid,S.Vno as VNo,CONVERT(VARCHAR(11),S.VDate) as [Date],S.VPrefix,D.NAME AS ToLocation From (Stock S left Join GodownMast D on S.GodownCode=D.Code) Left Join ItemMast I ON S.Item=I.Code And I.ItemType='Store' WHERE VTYPE='KMREC'"
  loc_EB2CDB: Proc_6_126_F1BCC0("1500,1500,1500,4500")
  loc_EB2CE9: MemVar_1F92120 = Me
  loc_EB2D00: Call 0.Method_arg_2B0 (1)
  loc_EB2D05: Exit Sub
  loc_EB2D06: ' Referenced from: EB2C7C
  loc_EB2D06: Proc_6_60_E62BC4(var_B8)
  loc_EB2D0B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2F298
  'Data Table: 4FE238
  loc_E2F288: Proc_5_0_110649C(&HFF, Me)
  loc_E2F290: Call Proc_224_50_1671E24(global_56)
  loc_E2F295: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2F238
  'Data Table: 4FE238
  loc_E2F228: Proc_5_0_110649C(&HFF, Me)
  loc_E2F230: Call Proc_224_50_1671E24(global_56)
  loc_E2F235: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2E818
  'Data Table: 4FE238
  loc_E2E808: Proc_5_0_110649C(&HFF, Me)
  loc_E2E810: Call Proc_224_50_1671E24(global_56)
  loc_E2E815: Exit Sub
  loc_E2E816: Set var_4000 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2E698
  'Data Table: 4FE238
  loc_E2E688: Proc_5_0_110649C(&HFF, Me)
  loc_E2E690: Call Proc_224_50_1671E24(global_56)
  loc_E2E695: Exit Sub
  loc_E2E696: 2 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '145E430
  'Data Table: 4FE238
  Dim Me As Recordset15
  Dim var_E4 As String
  Dim var_E8 As String
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_150 As Integer
  Dim var_130 As Variant
  Dim var_170 As Variant
  Dim var_1BC As String
  Dim var_1DC As Variant
  Dim var_238 As Variant
  Dim var_290 As Variant
  Dim var_120 As Variant
  Dim unk_4FE23C As Connection15
  Dim var_29C As String
  Dim var_A0 As Recordset15
  Dim var_140 As Variant
  Dim var_DE As Integer
  Dim var_B6 As Integer
  Dim var_B0 As Recordset15
  Dim var_11C As Fields15
  Dim var_F8 As Variant
  Dim var_198 As Variant
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_B4 As Recordset15
  Dim var_2AC As String
  loc_145D914: On Error Goto loc_145E42A
  loc_145D92E: If (Me.RecordCount <= 0) Then
  loc_145D931:   Exit Sub
  loc_145D932: End If
  loc_145D93D: Set var_11C = Me.Txt
  loc_145D943: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0))
  loc_145D953: Set var_174 = Me.Txt
  loc_145D959: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_178)
  loc_145D969: Set var_1E0 = Me.Txt
  loc_145D96F: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_1E4)
  loc_145D97F: Set var_23C = Me.Txt
  loc_145D985: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_240)
  loc_145D9BB: var_F8 = Space((5 - Len(global_72)))
  loc_145D9C3: var_118 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & global_72) + var_F8)
  loc_145D9C7: var_150 = 5
  loc_145D9D4: var_130 = CVar(var_120) 'Address
  loc_145D9E3: var_170 = (var_118 + Mid(var_130, 9, var_150))
  loc_145DA12: var_1CC = Space((5 - Len(CStr(Mid(CVar(var_178), 9, 5)))))
  loc_145DA1A: var_1DC = (var_170 + var_1CC)
  loc_145DA4F: var_228 = Space((8 - Len(CStr(Trim(Right(CVar(var_1E4), 8))))))
  loc_145DA57: var_238 = (var_1DC + var_228)
  loc_145DA82: var_290 = (var_238 + CVar(CStr(Trim(Right(CVar(var_240), 8)))))
  loc_145DADC: var_E4 = "Select S.Docid,S.VNo,S.VDate,S.IssQty as Qty,S.IssueUnit As Unit,S.Rate,S.Amount,S.GodownCode," & " I.Name as ItemName,G.Name as GodName,S.Remarks"
  loc_145DAE3: var_E8 = var_E4 & " From ((Stock as S Left Join ItemMast as I on S.Item=I.Code And I.ItemType='Store')"
  loc_145DAFF: var_88 = var_E8 & " Left Join GodownMast as G on S.GodownCode=G.Code)" & " Where S.DocID='" & CStr(var_290) & "' Order By S.Sno"
  loc_145DB16: var_E4 = "Select S.GodownCode,G.Name as GodName" & " From Stock as S Left Join GodownMast as G on S.GodownCode=G.Code"
  loc_145DB1D: var_1BC = var_E4 & " Where S.DocID='"
  loc_145DB34: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_120, var_E8)
  loc_145DB3C: var_1BC = var_120.Text
  loc_145DB77: unk_4FE23C.Execute var_120 & var_E8 & "'", var_F8, -1
  loc_145DB82: Set var_B4 = Me.Txt
  loc_145DBA9: Set var_11C = Me.Txt
  loc_145DBAF: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_120, var_E4, "Select R.Name As SunName,TS.* From TranSunDetail TS Left Join RevMast R On TS.SunCode=R.Code Where TS.DocId='")
  loc_145DBB7: var_F8 = var_120.Text
  loc_145DBC0: var_E8 = -1 & var_E4
  loc_145DBE3: var_29C = var_E8 & "' And TS.Site_Code='" & MemVar_1F92070 & "' And (TS.LogSite_Code='" & MemVar_1F92078 & "' Or TS.LogSite_Code='HO') Order By Sno"
  loc_145DBEC: unk_4FE23C.Execute var_29C, var_174, var_11C
  loc_145DBF7: Set var_B0 = var_174
  loc_145DC1F: If (var_88 = vbNullString) Then
  loc_145DC22:   Exit Sub
  loc_145DC23: End If
  loc_145DC39: unk_4FE23C.Execute var_88, var_F8, -1
  loc_145DC44: Set var_A0 = var_11C
  loc_145DC53: var_DC = var_A0.RecordCount
  loc_145DC61: If (var_DC <= 0) Then
  loc_145DC6A:   Call 0.Method_arg_50 (var_E4)
  loc_145DC78:   var_108 = CVar(var_E4) 'String
  loc_145DC8B:   MsgBox("** No Records Found to Print **", &H40, var_108, var_118, var_130)
  loc_145DC9B:   Exit Sub
  loc_145DC9C: End If
  loc_145DCB2: Set var_11C = var_A0 
  loc_145DCC8: Set var_A0 = var_11C
  loc_145DCCE: var_140 = CVar(CreateFieldDefFile(var_11C, MemVar_1F920B4 & "\ExciseInvoiceCumGatePass.ttx")) 'Integer
  loc_145DCD1: var_9C = var_140 'Variant
  loc_145DCED: var_E4 = MemVar_1F920B4 & "\ExciseInvoiceCumGatePass.RPT"
  loc_145DCF6: Call 0.Method_arg_1C (var_E4, var_140, var_11C)
  loc_145DD01: MemVar_1F921E4 = var_11C
  loc_145DD0D: var_B6 = 0
  loc_145DD13: var_B0.MoveFirst
  loc_145DD18: ' Referenced from: 145E0F3
  loc_145DD1E: var_DE = var_B0.EOF
  loc_145DD27: If Not(var_DE) Then
  loc_145DD54:   var_2BC = var_B0.Fields.Item("SunCode").Value 'Variant
  loc_145DD72:   If (var_2BC = CVar(MemVar_1F92078 & "TOT")) Then
  loc_145DD9B:     Proc_6_39_E7C810(var_108, CVar(var_B0.Fields.Item("SunAmt")), var_B6)
  loc_145DDC4:     var_C0 = CSng(Format(var_108, "0.00"))
  loc_145DDD8:   Else
  loc_145DDEB:     If (var_2BC = CVar(MemVar_1F92078 & "NET")) Then
  loc_145DE1B:       Proc_6_39_E7C810(var_108, CVar(var_B0.Fields.Item("SunAmt")), CVar(var_C8), var_C0, 1)
  loc_145DE23:       var_118 = (1 + var_108)
  loc_145DE5D:       Proc_6_39_E7C810(var_108, CVar(var_B0.Fields.Item("SunAmt")), CSng("0.00"))
  loc_145DE77:       If (var_108 > 0) Then
  loc_145DE89:         var_11C = var_B0.Fields
  loc_145DE91:         var_120 = var_11C.Item("SunAmt")
  loc_145DEA0:         Proc_6_39_E7C810(var_108, CVar(var_120), var_DE)
  loc_145DEC0:         var_130 = Format(var_108, "0.00")
  loc_145DEC9:         var_D0 = CSng(var_130)
  loc_145DEDA:       End If
  loc_145DEDD:     Else
  loc_145DEE3:       var_B6 = (var_B6 + 1)
  loc_145DEF7:       Call 0.Method_arg_90 (var_11C, var_DC, var_AA, 1, var_B6)
  loc_145DEFF:       Call 0.Method_arg_24 (var_D0, 1, 1)
  loc_145DF0B:       For var_2C0 = var_11C To CInt(var_DC):     &HFF = var_2C0 'Integer
  loc_145DF24:         Call 0.Method_arg_90 (var_11C, CLng(var_AA), var_120)
  loc_145DF2C:         Call 0.Method_arg_20 (var_E4)
  loc_145DF34:         Call 0.Method_arg_30 (var_11C)
  loc_145DF4A:         var_2D0 = Ucase(CVar(var_E4)) 'Variant
  loc_145DF81:         If (var_2D0 = Ucase(CVar("lblTaxName" & CStr(var_B6)))) Then
  loc_145DFCD:           Proc_6_17_EAA2B0(var_130)
  loc_145DFE9:           Call 0.Method_arg_90 (var_174, CLng(var_AA), var_178)
  loc_145DFF1:           Call 0.Method_arg_20 (CStr(var_130))
  loc_145DFF9:           Call 0.Method_arg_38 (StrConv(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("SunName")))), 3, 0))
  loc_145E01C:         Else
  loc_145E031:           var_108 = Ucase(CVar("TaxAmt" & CStr(var_B6)))
  loc_145E045:           If (var_2D0 = var_108) Then
  loc_145E057:             var_11C = var_B0.Fields
  loc_145E05F:             var_120 = var_11C.Item("SunAmt")
  loc_145E06E:             Proc_6_39_E7C810(var_108)
  loc_145E099:             Proc_6_17_EAA2B0(var_150, Format(var_108, "0.00"), 1)
  loc_145E0A1:             var_E4 = CStr(var_150)
  loc_145E0B5:             Call 0.Method_arg_90 (var_174, CLng(var_AA), var_178)
  loc_145E0BD:             Call 0.Method_arg_20 (var_E4, 1)
  loc_145E0C5:             Call 0.Method_arg_38 (CVar(var_120))
  loc_145E0E3:           End If
  loc_145E0E3:         End If
  loc_145E0E6:       Next var_2C0 'Integer
  loc_145E0EB:     End If
  loc_145E0EB:   End If
  loc_145E0EE:   var_B0.MoveNext
  loc_145E0F3:   GoTo loc_145DD18
  loc_145E0F6: End If
  loc_145E107: Call 0.Method_arg_90 (var_11C, var_DC)
  loc_145E10F: Call 0.Method_arg_24 (var_AA)
  loc_145E11B: For var_2D4 =  To CInt(var_DC): 1 = var_2D4 'Integer
  loc_145E134:   Call 0.Method_arg_90 (var_11C, CLng(var_AA))
  loc_145E13C:   Call 0.Method_arg_20 (var_120)
  loc_145E144:   Call 0.Method_arg_30 (var_E4)
  loc_145E15A:   var_2E4 = Ucase(CVar(var_E4)) 'Variant
  loc_145E18A:   If (var_2E4 = Ucase("Title")) Then
  loc_145E1A0:     Call 0.Method_arg_90 (var_11C, CLng(var_AA))
  loc_145E1A8:     Call 0.Method_arg_20 (var_120)
  loc_145E1B0:     Call 0.Method_arg_38 ("'Excise Invoice Cum Gate Pass'")
  loc_145E1BF:   Else
  loc_145E1E1:     If (var_2E4 = Ucase("ToDepartment")) Then
  loc_145E1FB:       var_11C = var_B4.Fields
  loc_145E203:       var_120 = var_11C.Item("GodName")
  loc_145E217:       var_2AC = "'"
  loc_145E21C:       var_118 = "'" & var_120.Value & var_2AC 
  loc_145E234:       Call 0.Method_arg_90 (var_174, CLng(var_AA))
  loc_145E23C:       Call 0.Method_arg_20 (var_178)
  loc_145E244:       Call 0.Method_arg_38 (CStr(var_118))
  loc_145E263:     Else
  loc_145E285:       If (var_2E4 = Ucase("Total")) Then
  loc_145E2B3:         Proc_6_17_EAA2B0(var_118, Format(var_C0, "0.00"))
  loc_145E2CF:         Call 0.Method_arg_90 (var_11C, CLng(var_AA), var_120)
  loc_145E2D7:         Call 0.Method_arg_20 (CStr(var_118), 1)
  loc_145E2DF:         Call 0.Method_arg_38 (1)
  loc_145E2FA:       Else
  loc_145E31C:         If (var_2E4 = Ucase("NetTotal")) Then
  loc_145E329:           var_198 = "0.00"
  loc_145E34A:           Proc_6_17_EAA2B0(var_118, Format(var_D0, var_198))
  loc_145E352:           var_E4 = CStr(var_118)
  loc_145E366:           Call 0.Method_arg_90 (var_11C, CLng(var_AA), var_120)
  loc_145E36E:           Call 0.Method_arg_20 (var_E4, 1)
  loc_145E376:           Call 0.Method_arg_38 (1)
  loc_145E38E:         End If
  loc_145E38E:       End If
  loc_145E38E:     End If
  loc_145E38E:   End If
  loc_145E391: Next var_2D4 'Integer
  loc_145E3AF: Call 0.Method_arg_64 (var_11C, CVar(var_A0))
  loc_145E3B7: Call 0.Method_arg_2C (var_198)
  loc_145E3C5: Call 0.Method_arg_150 (var_2AC)
  loc_145E3D0: Call 0.Method_arg_50 (var_E4)
  loc_145E3DA: Set var_120 = Nothing
  loc_145E3F4: Set var_11C = MemVar_1F921E4 
  loc_145E400: Proc_6_99_1483714(var_11C, 0, var_E4)
  loc_145E40B: MemVar_1F921E4 = var_11C
  loc_145E41E: Set var_A0 = Nothing
  loc_145E426: Set var_B4 = Nothing
  loc_145E429: Exit Sub
  loc_145E42A: ' Referenced from: 145D914
  loc_145E42A: Proc_6_60_E62BC4(&HFF)
  loc_145E42F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E411E0
  'Data Table: 4FE238
  Dim Me As Recordset15
  loc_E411B7: Me.Requery -1
  loc_E411C7: Me.Requery -1
  loc_E411D7: Me.Requery -1
  loc_E411DC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1771F90
  'Data Table: 4FE238
  Dim var_96 As Integer
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A0 As MSHFlexGrid
  Dim var_FC As Variant
  Dim var_AC As String
  Dim var_10C As Variant
  Dim var_8E As Integer
  Dim unk_4FE23C As Connection15
  Dim var_12C As Variant
  Dim var_11C As Variant
  Dim var_168 As Variant
  Dim var_18C As Variant
  Dim var_A4 As Variant
  Dim var_7D4 As Double
  Dim var_1CC As Variant
  Dim var_7DC As Double
  Dim var_1E4 As TextBox
  Dim var_1F4 As Variant
  Dim var_238 As Variant
  Dim var_24C As MSHFlexGrid
  Dim var_7E4 As Double
  Dim var_264 As Variant
  Dim var_278 As Variant
  Dim var_294 As Variant
  Dim var_2B4 As Variant
  Dim var_7EC As Double
  Dim var_2E8 As Variant
  Dim var_308 As Variant
  Dim var_31C As MSHFlexGrid
  Dim var_140 As Variant
  Dim var_7F4 As Double
  Dim var_33C As Variant
  Dim var_35C As Variant
  Dim var_150 As Variant
  Dim var_7FC As Double
  Dim var_390 As Variant
  Dim var_3D4 As Variant
  Dim var_434 As Variant
  Dim var_804 As Double
  Dim var_488 As MSHFlexGrid
  Dim var_498 As Variant
  Dim var_554 As Variant
  Dim var_524 As Variant
  Dim var_5B4 As Variant
  Dim var_5D4 As Variant
  Dim var_64C As Variant
  Dim var_66C As Variant
  Dim var_690 As Variant
  Dim var_720 As Variant
  Dim var_764 As Variant
  Dim var_1AC As String
  Dim var_1C8 As String
  Dim var_1D8 As String
  Dim var_1FC As String
  Dim var_25C As String
  Dim var_270 As String
  Dim var_32C As String
  Dim var_37C As String
  Dim var_4A4 As String
  Dim var_4FC As Variant
  Dim var_5A4 As Variant
  Dim var_60C As Variant
  Dim var_6B0 As Variant
  Dim var_6D0 As Variant
  Dim var_6E0 As Variant
  Dim var_710 As Variant
  Dim var_7A4 As Variant
  Dim var_500 As MSHFlexGrid
  Dim var_67C As Variant
  Dim var_4BC As Variant
  Dim var_574 As Variant
  Dim var_A8 As Variant
  Dim var_1E0 As Variant
  Dim var_260 As TextBox
  Dim var_2C4 As Variant
  Dim var_2F8 As Variant
  Dim var_274 As MSHFlexGrid
  Dim var_1D0 As String
  Dim var_510 As Variant
  Dim var_7C8 As Variant
  Dim var_820 As Variant
  Dim var_830 As Variant
  Dim var_88 As Recordset15
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_1770314: On Error Goto loc_1771F74
  loc_1770319: var_96 = 0
  loc_1770327: Set var_A0 = Me.Txt
  loc_177032D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_1770356: If (Proc_6_27_EA565C(var_A4, "Voucher Number") = 0) Then
  loc_1770359:   Exit Sub
  loc_177035A: End If
  loc_1770365: Set var_A0 = Me.Txt
  loc_177036B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_1770394: If (Proc_6_27_EA565C(var_A4, "Voucher Date") = 0) Then
  loc_1770397:   Exit Sub
  loc_1770398: End If
  loc_17703A3: Set var_A0 = Me.Txt
  loc_17703A9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_17703D2: If (Proc_6_27_EA565C(var_A4, "From Location") = 0) Then
  loc_17703D5:   Exit Sub
  loc_17703D6: End If
  loc_17703E1: Set var_A0 = Me.Txt
  loc_17703E7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_1770410: If (Proc_6_27_EA565C(var_A4, "To Location") = 0) Then
  loc_1770413:   Exit Sub
  loc_1770414: End If
  loc_1770414: var_BC = 1
  loc_177043A: var_AC = CStr(Me.FGrid.TextMatrix))
  loc_177044B: If (var_AC = vbNullString) Then
  loc_1770454:   Call 0.Method_arg_50 (var_AC, CVar(CLng(1)))
  loc_1770475:   MsgBox("Please Fill Item Detail", &H40, CVar(var_AC), var_11C, var_12C)
  loc_1770498:   Me.FGrid.Row = 1
  loc_17704A4:   Set var_A0 = Me.FGrid
  loc_17704B5:   Exit Sub
  loc_17704B6: End If
  loc_17704C4: unk_4FE23C.BeginTrans var_130
  loc_17704CD: Set var_A0 = Me.TopCtrl1
  loc_17704D3: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(&HFF)
  loc_17704DB: var_AC = CStr(FGrid.DispID_8001)
  loc_17704EC: If (var_AC = "Add") Then
  loc_17704FE:   Call Proc_224_53_115ACB8(MemVar_1F92044, var_AC)
  loc_1770509:   global_76 = var_AC
  loc_1770516:   Call Proc_224_54_110D2A0(MemVar_1F92044, var_AC)
  loc_1770521:   global_80 = var_AC
  loc_1770533:   If (global_76 <> global_76) Then
  loc_1770541:     var_BC = global_76
  loc_1770549:     var_FC = Right(var_BC, 8)
  loc_177055F:     Call 0.Method_arg_50 (var_AC, var_BC)
  loc_1770581:     MsgBox("Entry will be saved with New Voucher No. " & Trim(var_FC), 0, CVar(var_AC), var_140, var_150)
  loc_1770595:   End If
  loc_1770598: Else
  loc_17705BF:   unk_4FE23C.Execute "Delete From Stock Where DocID='" & global_76 & "'", var_FC, -1
  loc_17705F8:   unk_4FE23C.Execute "Delete From Stock Where DocID='" & global_80 & "'", var_FC, -1
  loc_1770631:   unk_4FE23C.Execute "Delete From TranTaxDetail Where DocID='" & global_76 & "'", var_FC, -1
  loc_177066A:   unk_4FE23C.Execute "Delete From TranSunDetail Where DocID='" & global_76 & "'", var_FC, -1
  loc_177067C: End If
  loc_17706A1: For var_158 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_98 = var_158 'Integer
  loc_17706AB:   var_BC = CVar(CLng(var_98)) 'Long
  loc_17706B3:   var_DC = CVar(CLng(0)) 'Long
  loc_17706BD:   var_FC = CVar(CStr(var_98)) 'String
  loc_17706C5:   Set var_A0 = Me.FGrid
  loc_17706CB:   LateIdCallSt
  loc_17706DC: Next var_158 'Integer
  loc_1770706: For var_16C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_98 = var_16C 'Integer
  loc_1770710:   var_BC = CVar(CLng(var_98)) 'Long
  loc_1770718:   var_DC = CVar(CLng(3)) 'Long
  loc_1770743:   var_168 = CVar(CLng(var_98)) 'Long
  loc_1770783:   If (CVar(CLng(9)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_17707B4:     var_7D4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17707D7:     Set var_A8 = Me.Txt
  loc_17707DD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1CC, var_1D0, var_7D4, CVar(CLng(0)), CVar(CLng(var_98)))
  loc_17707E5:     var_168 = var_1CC.Text
  loc_17707F2:     var_7DC = Val(var_1D0)
  loc_1770803:     Set var_1E0 = Me.Txt
  loc_1770809:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1E4, var_1E8, var_7DC)
  loc_1770811:     (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) = var_1E4.Text
  loc_177081A:     var_168 = CVar(CLng(var_98)) 'Long
  loc_1770831:     var_10C = Me.FGrid.TextMatrix)
  loc_177086B:     var_7E4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_177087C:     Set var_260 = Me.Txt
  loc_1770882:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_264, var_268, var_7E4, CVar(CLng(0)), CVar(CLng(var_98)))
  loc_177089D:     Set var_274 = Me.Txt
  loc_17708A3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_278, var_27C, CVar(CLng(9)))
  loc_17708AB:     var_168 = var_278.Tag
  loc_17708B4:     var_294 = CVar(CLng(var_98)) 'Long
  loc_17708BC:     var_2B4 = CVar(CLng(7)) 'Long
  loc_17708E5:     var_2E8 = CVar(CLng(var_98)) 'Long
  loc_17708ED:     var_308 = CVar(CLng(3)) 'Long
  loc_1770916:     var_33C = CVar(CLng(var_98)) 'Long
  loc_177091E:     var_35C = CVar(CLng(3)) 'Long
  loc_1770947:     var_390 = CVar(CLng(var_98)) 'Long
  loc_177095E:     var_3D4 = Me.FGrid.TextMatrix)
  loc_1770998:     var_804 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17709B6:     var_498 = Me.FGrid.TextMatrix)
  loc_17709C5:     Proc_6_104_ED5D18(var_4BC, var_498, CVar(CLng(4)), CVar(CLng(var_98)), var_804, CVar(CLng(8)), CVar(CLng(var_98)), var_3D4)
  loc_17709CE:     Set var_500 = Me.TopCtrl1
  loc_17709D4:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(CVar(CLng(2)))
  loc_1770A0F:     var_5B4 = CVar(CLng(var_98)) 'Long
  loc_1770A17:     var_5D4 = CVar(CLng(5)) 'Long
  loc_1770A40:     var_64C = CVar(CLng(var_98)) 'Long
  loc_1770A48:     var_66C = CVar(CLng(6)) 'Long
  loc_1770A67:     var_720 = CVar(CLng(var_98)) 'Long
  loc_1770A9E:     var_AC = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,COntraDocId,ContraSno,DepartCode,GodownCode,Rate,RecdQty,AccQty,RecdUnit,Amount,ConvRatio,U_Name,U_EntDt,U_AE,QtyRec,Unit,LogSite_Code,ItemRestCode)" & " VALUES ('"
  loc_1770AE5:     var_1C8 = var_AC & global_76 & "'," & CStr(var_7D4) & ",'" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "'," & "'KMREC'"
  loc_1770B3C:     var_25C = var_1C8 & "," & CStr(var_7DC) & ",'" & var_1E8 & "','" & CStr(var_264.Tag) & "','" & global_80 & "'," & CStr(var_7E4)
  loc_1770B7E:     var_32C = var_25C & ",'" & var_268 & "','" & var_27C & "'," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CStr(Val(CStr(Me.FGrid.TextMatrix))))
  loc_1770BC8:     var_4A4 = var_32C & "," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CStr(var_3D4) & "'," & CStr(var_804) & ",'" & CStr(var_498)
  loc_1770BEC:     var_4FC = CVar(var_4A4 & "','" & MemVar_1F920C8 & "',") & var_4BC & ",'" 
  loc_1770C1B:     var_6B0 = var_4FC & IIf((CStr(var_510) = "Add"), "A", "E") & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1770C4B:     var_7A4 = var_6B0 & "','" & CVar(MemVar_1F92078) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')" 
  loc_1770C59:     unk_4FE23C.Execute CStr(var_7A4), var_7C8, -1
  loc_1770D83:     var_7D4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1770DA6:     Set var_A8 = Me.Txt
  loc_1770DAC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1CC, var_1D0, var_7D4, CVar(CLng(0)), CVar(CLng(var_98)), var_7CC)
  loc_1770DB4:     var_764 = var_1CC.Text
  loc_1770DC1:     var_7DC = Val(var_1D0)
  loc_1770DD2:     Set var_1E0 = Me.Txt
  loc_1770DD8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1E4, var_1E8, var_7DC, CVar(CLng(&HA)))
  loc_1770DE0:     var_720 = var_1E4.Text
  loc_1770DF1:     var_18C = CVar(CLng(9)) 'Long
  loc_1770DFA:     Set var_1F4 = Me.FGrid
  loc_1770E00:     var_10C = var_1F4.TextMatrix)
  loc_1770E27:     var_11C = Me.FGrid.TextMatrix)
  loc_1770E3A:     var_7E4 = Val(CStr(var_11C))
  loc_1770E4B:     Set var_260 = Me.Txt
  loc_1770E51:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_264, var_268, var_7E4, CVar(CLng(0)), CVar(CLng(var_98)), var_10C)
  loc_1770E59:     var_18C = var_264.Tag
  loc_1770E6C:     Set var_274 = Me.Txt
  loc_1770E72:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_278, var_27C, CVar(CLng(var_98)))
  loc_1770E7A:     var_690 = var_278.Tag
  loc_1770E83:     var_294 = CVar(CLng(var_98)) 'Long
  loc_1770E8B:     var_2B4 = CVar(CLng(7)) 'Long
  loc_1770E9A:     var_12C = Me.FGrid.TextMatrix)
  loc_1770EB4:     var_2E8 = CVar(CLng(var_98)) 'Long
  loc_1770EBC:     var_308 = CVar(CLng(3)) 'Long
  loc_1770EE5:     var_33C = CVar(CLng(var_98)) 'Long
  loc_1770EFC:     var_150 = Me.FGrid.TextMatrix)
  loc_1770F36:     var_7FC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1770F54:     var_434 = Me.FGrid.TextMatrix)
  loc_1770F63:     Proc_6_104_ED5D18(var_498, var_434, CVar(CLng(4)), CVar(CLng(var_98)), var_7FC, CVar(CLng(8)), CVar(CLng(var_98)), var_150)
  loc_1770F6C:     Set var_488 = Me.TopCtrl1
  loc_1770F72:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(CVar(CLng(2)))
  loc_1770FAD:     var_524 = CVar(CLng(var_98)) 'Long
  loc_1770FB5:     var_554 = CVar(CLng(5)) 'Long
  loc_1770FDE:     var_5D4 = CVar(CLng(var_98)) 'Long
  loc_1770FE6:     var_60C = CVar(CLng(6)) 'Long
  loc_1771005:     var_67C = CVar(CLng(var_98)) 'Long
  loc_177100D:     var_6E0 = CVar(CLng(&HA)) 'Long
  loc_177103C:     var_AC = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,ContraDocId,ContraSno,DepartCode,GodownCode,Rate,IssQty,IssueUnit,Amount,ConvRatio,U_Name,U_EntDt,U_AE,QtyIss,Unit,LogSite_Code,ItemRestCode) " & " VALUES ('"
  loc_1771083:     var_1C8 = var_AC & global_80 & "'," & CStr(var_7D4) & ",'" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "'," & "'KMISS'"
  loc_17710B2:     var_1FC = CStr(var_10C)
  loc_17710E8:     var_270 = var_1C8 & "," & CStr(var_7DC) & ",'" & var_1E8 & "','" & var_1FC & "','" & global_76 & "'," & CStr(var_7E4) & ",'" & var_268
  loc_177112E:     var_37C = var_270 & "','" & var_27C & "'," & CStr(Val(CStr(var_12C))) & "," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CStr(var_150)
  loc_177117E:     var_574 = CVar(var_37C & "'," & CStr(var_7FC) & ",'" & CStr(var_434) & "','" & MemVar_1F920C8 & "',") & var_498 & ",'" & IIf((CStr(var_4FC) = "Add"), "A", "E") 
  loc_17711B9:     var_6D0 = var_574 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(MemVar_1F92078) 
  loc_17711CA:     var_764 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_17711E4:     unk_4FE23C.Execute CStr(var_6D0 & "','" & var_764 & "')"), var_7A4, -1
  loc_17712D6:     var_96 = &HFF
  loc_17712D9:   End If
  loc_17712DC: Next var_16C 'Integer
  loc_17712E7: If (var_96 = 0) Then
  loc_1771303:   MsgBox("Nil Details Can't Be Saved", &H40, var_10C, var_11C, var_12C)
  loc_1771319:   unk_4FE23C.RollbackTrans
  loc_177131E:   Exit Sub
  loc_177131F: End If
  loc_1771344: For var_810 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_98 = var_810 'Integer
  loc_177134E:   var_BC = CVar(CLng(var_98)) 'Long
  loc_1771356:   var_DC = CVar(CLng(2)) 'Long
  loc_1771376:   var_11C = Trim(CVar(CStr(Me.FGCat.TextMatrix))))
  loc_177137E:   var_168 = vbNullString
  loc_17713DC:   If CBool(CVar(CLng(6)) And (CDbl(Val(CStr(Me.FGCat.TextMatrix)))) <> CDbl(0))) Then
  loc_17713EB:     var_DC = CVar(CLng(0)) 'Long
  loc_177140D:     var_7D4 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1771414:     var_168 = CVar(CLng(var_98)) 'Long
  loc_1771425:     Set var_A4 = Me.FGCat
  loc_177142B:     var_10C = var_A4.TextMatrix)
  loc_177143E:     var_7DC = Val(CStr(var_10C))
  loc_1771461:     Set var_1CC = Me.Txt
  loc_1771467:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1E0, var_1E8, var_7DC, CVar(CLng(1)), var_168, var_7D4)
  loc_177146F:     var_DC = var_1E0.Text
  loc_177147C:     var_7E4 = Val(var_1E8)
  loc_177148A:     Set var_1E4 = Me.Txt
  loc_1771490:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1F4, var_7E4, CVar(CLng(var_98)), CVar(CLng(var_98)))
  loc_177149F:     Proc_6_7_F25D88(var_12C, CVar(var_1F4), (CVar(var_1F4) <> var_168))
  loc_17714B2:     Set var_24C = Me.Txt
  loc_17714B8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_260, var_1FC)
  loc_17714C0:     var_DC = var_260.Tag
  loc_17714C9:     var_238 = CVar(CLng(var_98)) 'Long
  loc_17714D1:     var_294 = CVar(CLng(2)) 'Long
  loc_17714F0:     var_2C4 = CVar(CLng(var_98)) 'Long
  loc_17714F8:     var_2F8 = CVar(CLng(4)) 'Long
  loc_177151A:     var_7EC = Val(CStr(Me.FGCat.TextMatrix)))
  loc_177154B:     var_7F4 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_177157C:     var_7FC = Val(CStr(Me.FGCat.TextMatrix)))
  loc_177158A:     Proc_6_7_F25D88(var_6D0, MemVar_1F920EC, var_7FC, CVar(CLng(6)), CVar(CLng(var_98)), var_7F4, CVar(CLng(5)), CVar(CLng(var_98)))
  loc_1771593:     Set var_31C = Me.TopCtrl1
  loc_1771599:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_7EC)
  loc_17715E4:     var_AC = "Insert Into TranTaxDetail(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,DepartCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_1771637:     var_1D8 = var_AC & global_76 & "'," & CStr(var_7D4) & "," & CStr(var_7DC) & "," & "'KMREC'" & ",'" & Me.LblVPrefix.Caption & "','"
  loc_1771685:     var_4FC = CVar(var_1D8 & MemVar_1F92070 & "'," & CStr(var_7E4) & ",") & var_12C & ",'" & CVar(var_1FC) & "','" & CVar(CStr(Me.FGCat.TextMatrix))) 
  loc_17716AD:     var_5A4 = var_4FC & "'," & CVar(var_7EC) & "," & CVar(var_7F4) 
  loc_17716ED:     var_710 = var_5A4 & "," & CVar(var_7FC) & ",'" & CVar(MemVar_1F920C8) & "'," & var_6D0 & ",'" 
  loc_1771707:     var_830 = var_710 & IIf((CStr(var_764) = "Add"), "A", "E") & "','N','" & CVar(MemVar_1F92078) 
  loc_177171E:     unk_4FE23C.Execute CStr(var_830 & "')"), var_850, -1
  loc_17717C8:   End If
  loc_17717CB: Next var_810 'Integer
  loc_17717DC: Set var_A0 = Me.LblCap
  loc_17717E2: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_852, var_98)
  loc_17717ED: For var_856 =  To var_852: 1 = var_856 'Integer
  loc_17717FE:   Set var_A0 = Me.Txt
  loc_1771804:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1771813:   Proc_6_7_F25D88(var_10C, CVar(var_A4))
  loc_1771826:   Set var_A8 = Me.Txt
  loc_177182C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1CC)
  loc_1771858:   Set var_1E4 = Me.LblCap
  loc_177185E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98, var_1F4)
  loc_1771878:   Set var_24C = Me.TxtGt
  loc_177187E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98, var_260)
  loc_1771893:   var_7D4 = Val(var_260.Text)
  loc_177189A:   Set var_264 = Me.TopCtrl1
  loc_17718A0:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_7D4)
  loc_17718E5:   Proc_6_7_F25D88(var_710, Date)
  loc_17718FE:   var_AC = "Insert Into TranSunDetail (DocId,Sno,vDate,Vno,Vprefix,VType,SunCode,SunAmt,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_1771938:   var_150 = CVar(var_1CC.Text) 'String
  loc_1771944:   var_434 = CVar(var_AC & global_76 & "'," & CStr(var_98) & ",") & var_10C & "," & var_150 & ",'" 
  loc_1771997:   var_690 = var_434 & CVar(Me.LblVPrefix.Caption) & "'," & "'KMREC'" & ",'" & CVar(var_1F4.Tag) & "'," & CVar(var_7D4) & ",'" & IIf((CStr(var_5A4) = "Add"), "A", "E") 
  loc_17719E9:   var_820 = var_690 & "','" & CVar(MemVar_1F920C8) & "'," & var_710 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_17719F7:   unk_4FE23C.Execute CStr(var_820), var_830, -1
  loc_1771A74: Next var_856 'Integer
  loc_1771A7D: Set var_A0 = Me.TopCtrl1
  loc_1771A83: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_1771A9C: If (CStr() = "Add") Then
  loc_1771AA3:   Set var_88 = New 
  loc_1771AAE:   Me.TopCtrl1.CursorLocation = 3
  loc_1771AC1:   Set var_A0 = Me.Txt
  loc_1771AC7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_1771AD7:   var_FC = CVar(var_A4.Text) 'String
  loc_1771ADD:   Proc_6_7_F25D88(var_10C)
  loc_1771B00:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1771B26:   var_11C = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_68 & "' And VP.Date_From<=") 'String
  loc_1771B3D:   var_88.Open var_11C & var_10C & " Order By VP.Date_From DESC", CVar(MemVar_1F92044), 2
  loc_1771B77:   If (var_88.RecordCount > 0) Then
  loc_1771B88:     Set var_A0 = Me.Txt
  loc_1771B8E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4, var_AC)
  loc_1771B96:     3 = var_A4.Text
  loc_1771BA3:     var_7D4 = Val(var_AC)
  loc_1771BF3:     Proc_6_7_F25D88(var_150, CVar(var_88.Fields.Item("Date_From")), var_7D4)
  loc_1771C26:     var_1AC = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_7D4) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1771C34:     var_10C = CVar(var_1AC & MemVar_1F92078 & "') and V_Type='") 'String
  loc_1771C58:     unk_4FE23C.Execute CStr(var_10C & var_88.Fields.Item("V_Type").Value & "' and Date_From=" & var_150), var_434, -1
  loc_1771C92:   End If
  loc_1771C96:   Set var_8C = New 
  loc_1771CA1:   var_8C.CursorLocation = 3
  loc_1771CB4:   Set var_A0 = Me.Txt
  loc_1771CBA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4, var_1AC)
  loc_1771CC2:   var_1F4 = var_A4.Text
  loc_1771CD0:   Proc_6_7_F25D88(var_10C, CVar(var_1AC))
  loc_1771CF3:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1771D19:   var_11C = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_72 & "' And VP.Date_From<=") 'String
  loc_1771D30:   var_8C.Open var_11C & var_10C & " Order By VP.Date_From DESC", CVar(MemVar_1F92044), 2
  loc_1771D6A:   If (var_8C.RecordCount > 0) Then
  loc_1771D7B:     Set var_A0 = Me.Txt
  loc_1771D81:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4, var_AC, 3)
  loc_1771D89:     -1 = var_A4.Text
  loc_1771D96:     var_7D4 = Val(var_AC)
  loc_1771D9F:     var_BC = "V_Type"
  loc_1771DBB:     var_FC = var_8C.Fields.Item(var_BC).Value
  loc_1771DE6:     Proc_6_7_F25D88(var_150, CVar(var_8C.Fields.Item("Date_From")), var_7D4)
  loc_1771E19:     var_1AC = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_7D4) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1771E4B:     unk_4FE23C.Execute CStr(CVar(var_1AC & MemVar_1F92078 & "') and V_Type='") & var_FC & "' and Date_From=" & var_150), var_434, -1
  loc_1771E85:   End If
  loc_1771E85: End If
  loc_1771E8B: unk_4FE23C.CommitTrans
  loc_1771E92: var_8E = 0
  loc_1771EA3: Set var_A0 = Me.Txt
  loc_1771EA9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, var_8E)
  loc_1771EB1: var_1F4 = var_A4.Text
  loc_1771ECE: Me.Requery -1
  loc_1771EF8: Me.Find "SearchCode ='" & "SearchCode ='" & var_AC & "'", 0, 1
  loc_1771F04: Call Proc_224_50_1671E24(var_BC, -1)
  loc_1771F0D: Set var_A0 = Me.TopCtrl1
  loc_1771F13: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_FC)
  loc_1771F2C: If (CStr() = "Add") Then
  loc_1771F2F:   Call TopCtrl1_UnknownEvent_A()
  loc_1771F34:   Exit Sub
  loc_1771F35: End If
  loc_1771F58: Call Proc_224_51_EC7ACC(Proc_5_1_100CB50("INI", Me))
  loc_1771F68: Set var_88 = Nothing
  loc_1771F70: Set var_8C = Nothing
  loc_1771F73: Exit Sub
  loc_1771F74: ' Referenced from: 1770314
  loc_1771F7A: If (var_8E = &HFF) Then
  loc_1771F83:   unk_4FE23C.RollbackTrans
  loc_1771F88: End If
  loc_1771F88: Proc_6_60_E62BC4(global_56)
  loc_1771F8D: Exit Sub
End Sub

Private Sub Form_Load() '12422AC
  'Data Table: 4FE238
  Dim var_90 As Variant
  Dim var_B0 As Variant
  Dim var_8C As String
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_C0 As String
  Dim unk_4FE23C As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Variant
  Dim var_120 As DataGrid
  Dim var_124 As TextBox
  loc_1241D82: Call 0.Method_arg_50 (var_8C)
  loc_1241D94: Me.LblCaption.Caption = var_8C
  loc_1241DBB: Me.Recordset15.CursorLocation = 3
  loc_1241DDE: var_8C = "SELECT SubCode,subgroup.Name,CardNo,CompanyType FROM SUBGROUP INNER JOIN MEMCATMAST ON SUBGROUP.COMPANYTYPE=MEMCATMAST.CODE WHERE ActiveYN=1 And IsNull(FBilling,'')<>'N' And (COMPANYTYPE IS NOT NULL AND COMPANYTYPE<>'') and (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078
  loc_1241DE5: var_A0 = CVar(var_8C & "' or SUBGROUP.LOGSITE_CODE='HO') Order by subgroup.Name") 'String
  loc_1241DEF: Me.Open var_A0, CVar(MemVar_1F92044), 3
  loc_1241E03: CVarUnk
  loc_1241E08: VerifyVarObj
  loc_1241E0E: Set var_90 = Me.DGMemName
  loc_1241E14: LateIdStAd
  loc_1241E2F: var_C0 = "Select E.ExciseInvoiceTaxStru,E.BarCodeFeatureInPurchase From Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code WHERE E.LOGSITE_CODE="
  loc_1241E3F: Proc_6_17_EAA2B0(var_A0, MemVar_1F92078, var_C0, var_110, -1)
  loc_1241E5E: unk_4FE23C.Execute CStr(var_90 & var_A0 & vbNullString), var_90, New
  loc_1241E69: Set var_88 = var_90
  loc_1241E91: If (var_88.RecordCount > 0) Then
  loc_1241EC2:   global_92 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("BarCodeFeatureInPurchase")), 1)
  loc_1241EE6:   var_118 = var_88.Fields.Item("ExciseInvoiceTaxStru")
  loc_1241EFD:   global_84 = Proc_6_38_E68A98(CVar(var_118))
  loc_1241F0A: End If
  loc_1241F14: Set global_60 = New 
  loc_1241F26: Me.CursorLocation = 3
  loc_1241F36: If (global_92 = "Yes") Then
  loc_1241F57:   var_8C = "Select I.Code,I.BarCode,I.Name,I.Unit,I.IssueUnit,CASE WHEN I.LPurRate<=0 THEN I.PurchRate ELSE I.LPurRate END as Rate,I.ConvRatio,I.RestCode From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1241F68:   Me.Open CVar(var_8C & "' or LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.BarCode"), CVar(MemVar_1F92044), 3
  loc_1241F76: Else
  loc_1241F94:   var_8C = "Select I.Code,I.BarCode,I.Name,I.Unit,I.IssueUnit,CASE WHEN I.LPurRate<=0 THEN I.PurchRate ELSE I.LPurRate END as Rate,I.ConvRatio,I.RestCode From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1241FA5:   Me.Open CVar(var_8C & "' or LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.Name"), CVar(MemVar_1F92044), 3
  loc_1241FB0: End If
  loc_1241FB9: CVarUnk
  loc_1241FBE: VerifyVarObj
  loc_1241FC4: Set var_90 = Me.DGItem
  loc_1241FCA: LateIdStAd
  loc_1241FE2: Set global_52 = New 
  loc_1241FF4: Me.DGItem.CursorLocation = 3
  loc_124201E: var_A0 = CVar("Select G.Code,G.Name From GodownMast G iNNER join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078 & "')  Order by G.Name") 'String
  loc_1242028: Me.Open var_A0, CVar(MemVar_1F92044), 2
  loc_124203C: CVarUnk
  loc_1242041: VerifyVarObj
  loc_1242047: Set var_90 = Me.DGDepart
  loc_124204D: LateIdStAd
  loc_1242077: Me.DGDepart.CursorLocation = 3
  loc_12420A1: var_A0 = CVar("Select G.Code,G.Name From GodownMast G INNER join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078 & "')  Order by G.Name") 'String
  loc_12420AB: Me.Open var_A0, CVar(MemVar_1F92044), 2
  loc_12420BF: CVarUnk
  loc_12420C4: VerifyVarObj
  loc_12420CA: Set var_90 = Me.DGToDepart
  loc_12420D0: LateIdStAd
  loc_12420E9: If (global_92 = "Yes") Then
  loc_12420F8:   Me.TxtBarCode.Visible = True
  loc_124210B:   Set var_90 = Me.Label1
  loc_1242111:   Call 0.Method_Form_Load0 (6, var_118, &HFF, var_90, New, 3, -1)
  loc_1242119:   var_118.Visible = var_90
  loc_1242125: End If
  loc_1242141: Me.CursorLocation = 3
  loc_124216B: var_A0 = CVar("Select Distinct DocID as SearchCode,Site_Code,LogSite_Code From Stock WHERE   LOGSITE_CODE='" & MemVar_1F92078 & "' and VTYPE='KMREC' order by  DocID") 'String
  loc_1242175: Me.Open var_A0, CVar(MemVar_1F92044), 2
  loc_1242186: global_68 = "KMREC"
  loc_1242190: global_72 = "KMISS"
  loc_1242194: Call Proc_224_55_12760E4(3, -1, global_52, 3)
  loc_12421BC: Call Proc_224_51_EC7ACC(Proc_5_1_100CB50("INI", Me, New, -1), Me)
  loc_12421C7: Call Proc_224_50_1671E24(global_60)
  loc_12421DA: Set var_90 = Me.Txt
  loc_12421E0: Call 0.Method_Form_Load0 (CInt(5), var_118)
  loc_12421FF: Me.DGMemName.Left = CVar(var_118.Left)
  loc_124221B: Set var_120 = Me.Txt
  loc_1242221: Call 0.Method_Form_Load0 (CInt(5), var_124)
  loc_124223C: Set var_90 = Me.Txt
  loc_1242242: Call 0.Method_Form_Load0 (CInt(5), var_118)
  loc_124225A: var_B0 = CVar(((var_118.Top + var_124.Height) + CDbl(&H19))) 'Single
  loc_1242269: Me.DGMemName.Top = CVar(var_118.Left)
  loc_1242293: Proc_6_23_DFBA28(Me, 5445)
  loc_12422A0: Set var_88 = Nothing
  loc_12422A3: Exit Sub
  loc_12422A4: Proc_6_60_E62BC4(10695)
  loc_12422A9: Exit Sub
  loc_12422AA: 1() = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E60838
  'Data Table: 4FE238
  loc_E607F7: Set global_56 = Nothing
  loc_E60809: Set global_52 = Nothing
  loc_E6081B: Set global_64 = Nothing
  loc_E6082D: Set global_60 = Nothing
  loc_E60834: Exit Sub
End Sub

Private Sub Form_Activate() 'E2F894
  'Data Table: 4FE238
  loc_E2F870: Set var_88 = Me.TopCtrl1
  loc_E2F876: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030000()
  loc_E2F88B: If (CLng(CInt()) = &H2D) Then
  loc_E2F88E:   Call TopCtrl1_UnknownEvent_15()
  loc_E2F893: End If
  loc_E2F893: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E7FD44
  'Data Table: 4FE238
  loc_E7FCD8: On Error Goto loc_E7FD3B
  loc_E7FD09: If (((global_92 = "Yes") And (Shift = 1)) And (Me.TxtBarCode.Visible = &HFF)) Then
  loc_E7FD16:   Me.TxtBarCode.SetFocus
  loc_E7FD1E: End If
  loc_E7FD32: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E7FD3A: Exit Sub
  loc_E7FD3B: ' Referenced from: E7FCD8
  loc_E7FD3B: Proc_6_60_E62BC4(Shift)
  loc_E7FD40: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F38B24
  'Data Table: 4FE238
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F38A1B: Me.DGDepart.Visible = False
  loc_F38A3A: If (Me.RecordCount > 0) Then
  loc_F38A79:   Set var_B4 = Me.Txt
  loc_F38A7F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3), var_B8)
  loc_F38A87:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F38ABA:   var_B0 = Me.Fields.Item("Name")
  loc_F38AD9:   Set var_B4 = Me.Txt
  loc_F38ADF:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3), var_B8)
  loc_F38AE7:   var_B8.Text = CStr(var_B0.Value)
  loc_F38AFD: End If
  loc_F38B08: Set var_A8 = Me.Txt
  loc_F38B0E: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3))
  loc_F38B16: var_B0.SetFocus
  loc_F38B22: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11F0A94
  'Data Table: 4FE238
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_C4 As Variant
  Dim var_98 As String
  Dim Me As Recordset15
  loc_11F0616: Set var_88 = Me.Txt
  loc_11F061C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11F062A: Proc_6_74_E226B0(var_8C)
  loc_11F0636: Call Proc_224_52_EF65AC(var_8C)
  loc_11F063E: var_92 = Index
  loc_11F0649: If (var_92 = CInt(3)) Then
  loc_11F0656:   Set global_52 = New 
  loc_11F0668:   Me.Txt.CursorLocation = 3
  loc_11F067B:   Set var_88 = Me.Txt
  loc_11F0681:   Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_11F06AC:   var_98 = "Select distinct G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_11F06CB:   Me.Open CVar(var_98 & "') and G.CODE<>'" & var_8C.Tag & "'  Order by G.Name"), CVar(MemVar_1F92044), 2
  loc_11F06EE:   CVarUnk
  loc_11F06F3:   VerifyVarObj
  loc_11F06F9:   Set var_88 = Me.DGDepart
  loc_11F06FF:   LateIdStAd
  loc_11F0761:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), Me.Txt)
  loc_11F0769:   global_52 = var_8C.Text
  loc_11F0781:   If (3 Or (var_98 = vbNullString)) Then
  loc_11F0784:     Exit Sub
  loc_11F0785:   End If
  loc_11F0792:   Set var_88 = Me.Txt
  loc_11F0798:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_11F07A0:   -1 = var_8C.Text
  loc_11F07B2:   var_C4 = "Name"
  loc_11F07ED:   If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_11F07F6:     Me.MoveFirst
  loc_11F0819:     Set var_88 = Me.Txt
  loc_11F081F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_11F0827:     0 = var_8C.Text
  loc_11F0840:     Me.Find 1 & var_98 & "'", var_C4, var_92
  loc_11F0855:   End If
  loc_11F0858: Else
  loc_11F0860:   If (var_92 = CInt(4)) Then
  loc_11F087F:     Me.Recordset15.CursorLocation = 3
  loc_11F0892:     Set var_88 = Me.Txt
  loc_11F0898:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_11F08C3:     var_98 = "Select distinct G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_11F08E2:     Me.Open CVar(var_98 & "') and G.CODE<>'" & var_8C.Tag & "' Order by G.Name"), CVar(MemVar_1F92044), 2
  loc_11F0905:     CVarUnk
  loc_11F090A:     VerifyVarObj
  loc_11F0910:     Set var_88 = Me.DGToDepart
  loc_11F0916:     LateIdStAd
  loc_11F0972:     Set var_88 = Me.Txt
  loc_11F0978:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_11F0980:     var_88 = var_8C.Text
  loc_11F0998:     If (New Or (var_98 = vbNullString)) Then
  loc_11F099B:       Exit Sub
  loc_11F099C:     End If
  loc_11F09A9:     Set var_88 = Me.Txt
  loc_11F09AF:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_11F09B7:     3 = var_8C.Text
  loc_11F09C9:     var_C4 = "Name"
  loc_11F0A04:     If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_11F0A0D:       Me.MoveFirst
  loc_11F0A30:       Set var_88 = Me.Txt
  loc_11F0A36:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_11F0A3E:       0 = var_8C.Text
  loc_11F0A57:       Me.Find 1 & var_98 & "'", var_C4, -1
  loc_11F0A6C:     End If
  loc_11F0A6F:   Else
  loc_11F0A77:     If (var_92 = CInt(2)) Then
  loc_11F0A82:       var_98 = "{Home}+{End}"
  loc_11F0A88:       Proc_303_0_FB9B68(var_98)
  loc_11F0A90:     End If
  loc_11F0A90:   End If
  loc_11F0A90: End If
  loc_11F0A90: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11C58B0
  'Data Table: 4FE238
  Dim var_86 As Integer
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim var_B0 As Variant
  Dim var_98 As DataGrid
  Dim var_8C As DataGrid
  loc_11C5462: If (CLng(Shift) = &H1B) Then
  loc_11C5465:   Call Proc_224_52_EF65AC()
  loc_11C546A:   Exit Sub
  loc_11C546B: End If
  loc_11C546E: var_86 = KeyCode
  loc_11C5479: If (var_86 = CInt(3)) Then
  loc_11C5489:   Set var_98 = Me.Txt
  loc_11C548F:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11C5497:   var_A0 = var_9C.Height
  loc_11C54A9:   Set var_8C = Me.Txt
  loc_11C54AF:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11C54C7:   var_B0 = CVar(((var_90.Top + var_A0) + CDbl(&H19))) 'Single
  loc_11C54D6:   Me.DGDepart.Top = var_B0
  loc_11C54F5:   Set var_8C = Me.Txt
  loc_11C54FB:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11C5503:   var_94 = var_90.Left
  loc_11C551A:   Me.DGDepart.Left = CVar(var_94)
  loc_11C5540:   Set var_9C = Nothing
  loc_11C554B:   Set var_98 = Nothing
  loc_11C556A:   Set var_90 = Me.Txt
  loc_11C5579:   Proc_6_69_134A198(Me.DGDepart, var_90, KeyCode, global_52, Shift, &HFF)
  loc_11C5590: Else
  loc_11C5598:   If (var_86 = CInt(4)) Then
  loc_11C55A8:     Set var_98 = Me.Txt
  loc_11C55AE:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_A0, 1)
  loc_11C55B6:     var_98 = var_9C.Height
  loc_11C55C8:     Set var_8C = Me.Txt
  loc_11C55CE:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_11C55D6:     var_9C = var_90.Top
  loc_11C55E6:     var_B0 = CVar(((var_94 + var_A0) + CDbl(&H19))) 'Single
  loc_11C55F5:     Me.DGToDepart.Top = CVar(var_94)
  loc_11C5614:     Set var_8C = Me.Txt
  loc_11C561A:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_11C5622:     0 = var_90.Left
  loc_11C5639:     Me.DGToDepart.Left = CVar(var_94)
  loc_11C565F:     Set var_9C = Nothing
  loc_11C566A:     Set var_98 = Nothing
  loc_11C5698:     Proc_6_69_134A198(Me.DGToDepart, Me.Txt, KeyCode, global_64, Shift, &HFF)
  loc_11C56AF:   Else
  loc_11C56B7:     If (var_86 = CInt(5)) Then
  loc_11C56D2:       Set var_9C = Nothing
  loc_11C56DD:       Set var_98 = Nothing
  loc_11C570B:       Proc_6_69_134A198(Me.DGMemName, Me.Txt, KeyCode, global_112, Shift, 0, 1, var_98)
  loc_11C571F:     End If
  loc_11C571F:   End If
  loc_11C571F: End If
  loc_11C573B: If (CBool(Me.DGMemName.Visible) = 0) Then
  loc_11C5753:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11C575C:     Proc_6_75_E527CC(Shift, arg_14, var_9C, 0, 1)
  loc_11C5761:   End If
  loc_11C5776:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11C577F:     Proc_6_76_E52838(Shift, arg_14, var_98)
  loc_11C5784:   End If
  loc_11C5784: End If
  loc_11C57DA: If (((CBool(Me.DGDepart.Visible) = 0) And (CBool(Me.DGToDepart.Visible) = 0)) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_11C57F2:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11C57FB:     Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_11C5800:   End If
  loc_11C5804:   Set var_8C = Me.TopCtrl1
  loc_11C580A:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(0)
  loc_11C5835:   If (((CStr(var_86) = "Add") And (KeyCode <> CInt(1))) And (KeyCode <> CInt(2))) Then
  loc_11C584D:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11C5856:       Proc_6_76_E52838(Shift)
  loc_11C585B:     End If
  loc_11C585B:   End If
  loc_11C585F:   Set var_8C = Me.TopCtrl1
  loc_11C5865:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(arg_14)
  loc_11C5887:   If ((CStr() = "Edit") And (KeyCode <> CInt(2))) Then
  loc_11C589F:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11C58A8:       Proc_6_76_E52838(Shift)
  loc_11C58AD:     End If
  loc_11C58AD:   End If
  loc_11C58AD: End If
  loc_11C58AD: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F69054
  'Data Table: 4FE238
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F68F23: Proc_6_58_E054C0(arg_10)
  loc_F68F2E: Proc_6_133_E7EF78(var_94)
  loc_F68F37: arg_10 = CInt(var_94)
  loc_F68F40: var_96 = KeyAscii
  loc_F68F4B: If (var_96 = CInt(3)) Then
  loc_F68F6A:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_F68F97:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_52, arg_10, "Name")
  loc_F68FA6:   End If
  loc_F68FA9: Else
  loc_F68FB1:   If (var_96 = CInt(4)) Then
  loc_F68FD0:     If (CBool(Me.DGToDepart.Visible) = &HFF) Then
  loc_F68FD7:       Set var_A8 = Me.Txt
  loc_F68FFD:       Proc_6_89_146F1AC(var_A8, KeyAscii, global_64, arg_10, "Name")
  loc_F6900C:     End If
  loc_F6900F:   Else
  loc_F69017:     If (var_96 = CInt(1)) Then
  loc_F69024:       Set var_9C = Me.Txt
  loc_F6902A:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0, 0)
  loc_F69045:       Proc_6_42_129A86C(var_A8, arg_10, 8, 0)
  loc_F69051:     End If
  loc_F69051:   End If
  loc_F69051: End If
  loc_F69051: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA4DE8
  'Data Table: 4FE238
  loc_EA4D7A: If (KeyCode = CInt(5)) Then
  loc_EA4D99:   If (CBool(Me.DGMemName.Visible) = &HFF) Then
  loc_EA4DAD:     var_A4 = "Name"
  loc_EA4DD1:     Proc_6_68_129FB34(Me.DGMemName, Me.Txt, KeyCode, global_112)
  loc_EA4DE4:   End If
  loc_EA4DE4: End If
  loc_EA4DE4: Exit Sub
  loc_EA4DE6: CExtInstUnk
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E50764
  'Data Table: 4FE238
  loc_E50742: Set var_88 = Me.Txt
  loc_E50748: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E50756: Proc_6_73_E22704(var_8C)
  loc_E50762: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1542554
  'Data Table: 4FE238
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_A8 As Variant
  Dim var_98 As String
  Dim var_C8 As Integer
  Dim unk_4FE23C As Connection15
  Dim var_8C As Variant
  Dim var_94 As Field20
  Dim var_D8 As Variant
  Dim Me As Recordset15
  Dim var_128 As TextBox
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_130 As TextBox
  loc_1541567: var_86 = Cancel
  loc_1541572: If (var_86 = CInt(1)) Then
  loc_1541580:   Set var_8C = Me.Txt
  loc_1541586:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_154158E:   var_98 = "Vr No"
  loc_15415AF:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_15415BC:     Set var_8C = Me.Txt
  loc_15415C2:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15415CA:     var_90.SetFocus
  loc_15415D8:     arg_10 = &HFF
  loc_15415DB:     Exit Sub
  loc_15415DC:   End If
  loc_15415EA:   Set var_8C = Me.Txt
  loc_15415F0:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_15415F8:   arg_10 = var_90.Text
  loc_1541610:   If (CDbl(var_98) = CDbl(0)) Then
  loc_1541626:     var_B8 = "Vr No Can Not Be 0"
  loc_154162C:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_1541646:     Set var_8C = Me.Txt
  loc_154164C:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1541654:     var_90.SetFocus
  loc_1541662:     arg_10 = &HFF
  loc_1541665:     Exit Sub
  loc_1541666:   End If
  loc_154166A:   Set var_8C = Me.TopCtrl1
  loc_1541670:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(arg_10)
  loc_1541678:   var_98 = CStr(var_86)
  loc_1541689:   If (var_98 = "Add") Then
  loc_1541692:     Call Proc_224_53_115ACB8(MemVar_1F92044)
  loc_15416A5:     Set var_8C = Me.Txt
  loc_15416AB:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_15416B3:     var_90.Text = var_98
  loc_15416C8:     Call Proc_224_53_115ACB8(MemVar_1F92044, var_98)
  loc_15416D3:     global_76 = var_98
  loc_15416E0:     Call Proc_224_54_110D2A0(MemVar_1F92044, var_98)
  loc_15416EB:     global_80 = var_98
  loc_15416F2:   End If
  loc_15416F6:   Set var_8C = Me.TopCtrl1
  loc_15416FC:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_98)
  loc_1541715:   If (CStr() = "Add") Then
  loc_154171E:     var_C8 = 0
  loc_154173E:     var_98 = "Select Count(*) From Stock Where DocID='" & global_76
  loc_154174E:     unk_4FE23C.Execute var_98 & "'", var_B8, -1
  loc_1541756:     var_8C = var_8C.Fields
  loc_154175E:     var_C8 = var_90.Item(var_90)
  loc_1541766:     var_94 = var_94.Value
  loc_154178D:     If (var_D8 > 0) Then
  loc_1541796:       Call 0.Method_arg_50 (var_98)
  loc_15417A4:       var_D8 = CVar(var_98) 'String
  loc_15417B1:       var_B8 = "Duplicate Vr No."
  loc_15417B7:       MsgBox(var_B8, &H40, var_D8, var_F8, var_118)
  loc_15417CD:       Call Proc_224_53_115ACB8(MemVar_1F92044, var_98)
  loc_15417DD:       If (var_98 = vbNullString) Then
  loc_15417EA:         Set var_8C = Me.Txt
  loc_15417F0:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15417F8:         var_90.SetFocus
  loc_1541806:         arg_10 = &HFF
  loc_1541809:         Exit Sub
  loc_154180A:       End If
  loc_1541810:       Call Proc_224_53_115ACB8(MemVar_1F92044, var_98)
  loc_1541823:       Set var_8C = Me.Txt
  loc_1541829:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1541831:       var_90.Text = arg_10
  loc_1541846:       Call Proc_224_53_115ACB8(MemVar_1F92044, var_98)
  loc_1541851:       global_76 = var_98
  loc_154185A:       arg_10 = &HFF
  loc_154185D:       Exit Sub
  loc_154185E:     End If
  loc_1541864:     var_C8 = 0
  loc_1541884:     var_98 = "Select Count(*) From Stock Where DocID='" & global_80
  loc_1541894:     unk_4FE23C.Execute var_98 & "'", var_B8, -1
  loc_154189C:     var_8C = var_8C.Fields
  loc_15418A4:     var_C8 = var_90.Item(var_90)
  loc_15418AC:     var_94 = var_94.Value
  loc_15418D3:     If (var_D8 > 0) Then
  loc_15418DC:       Call 0.Method_arg_50 (var_98, var_D8)
  loc_15418FD:       MsgBox("Duplicate Vr No.", &H40, CVar(var_98), var_F8, var_118)
  loc_1541913:       Call Proc_224_54_110D2A0(MemVar_1F92044, var_98)
  loc_1541923:       If (var_98 = vbNullString) Then
  loc_1541930:         Set var_8C = Me.Txt
  loc_1541936:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_154193E:         var_90.SetFocus
  loc_154194C:         arg_10 = &HFF
  loc_154194F:         Exit Sub
  loc_1541950:       End If
  loc_1541956:       Call Proc_224_54_110D2A0(MemVar_1F92044, var_98, arg_10)
  loc_1541961:       global_80 = var_98
  loc_154196A:       arg_10 = &HFF
  loc_154196D:       Exit Sub
  loc_154196E:     End If
  loc_154196E:   End If
  loc_1541971: Else
  loc_1541979:   If (var_86 = CInt(5)) Then
  loc_15419CA:     Set var_8C = Me.Txt
  loc_15419D0:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_15419F0:     If (var_90.Text Or (var_98 = vbNullString)) Then
  loc_1541A00:       Set var_8C = Me.Txt
  loc_1541A06:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1541A0E:       var_90.Text = vbNullString
  loc_1541A27:       Set var_8C = Me.Txt
  loc_1541A2D:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1541A35:       var_90.Tag = vbNullString
  loc_1541A4F:       Set var_8C = Me.Txt
  loc_1541A55:       Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_1541A5D:       var_90.Text = vbNullString
  loc_1541A77:       Set var_8C = Me.Txt
  loc_1541A7D:       Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_1541A85:       var_90.Tag = vbNullString
  loc_1541A94:     Else
  loc_1541ACF:       Set var_94 = Me.Txt
  loc_1541AD5:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1541ADD:       var_128.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1541B2E:       Set var_94 = Me.Txt
  loc_1541B34:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1541B3C:       var_128.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_1541B8E:       Set var_94 = Me.Txt
  loc_1541B94:       Call 0.Method_Txt_Validate0 (CInt(6), var_128)
  loc_1541B9C:       var_128.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_1541BB8:       var_A8 = "CompanyType"
  loc_1541BCF:       var_90 = Me.Fields.Item(var_A8)
  loc_1541BEE:       Set var_94 = Me.Txt
  loc_1541BF4:       Call 0.Method_Txt_Validate0 (CInt(6), var_128)
  loc_1541BFC:       var_128.Tag = CStr(var_90.Value)
  loc_1541C12:     End If
  loc_1541C15:   Else
  loc_1541C1D:     If (var_86 = CInt(6)) Then
  loc_1541C2A:       Set var_8C = Me.Txt
  loc_1541C30:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1541C3F:       var_D8 = Trim(CVar(var_90))
  loc_1541C47:       var_98 = CStr(var_D8)
  loc_1541C55:       Set var_94 = Me.Txt
  loc_1541C5B:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1541C63:       var_128.Text = var_98
  loc_1541C92:       If (Me.RecordCount > 0) Then
  loc_1541C9B:         Me.MoveFirst
  loc_1541CBE:         Set var_8C = Me.Txt
  loc_1541CC4:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98, "CardNo='")
  loc_1541CCC:         0 = var_90.Text
  loc_1541CE5:         Me.Find 1 & var_98 & "'", var_A8, var_D8
  loc_1541D23:         If ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) Then
  loc_1541D3F:           MsgBox("InValid Card no", &H40, var_D8, var_F8, var_118)
  loc_1541D5D:           Set var_8C = Me.Txt
  loc_1541D63:           Call 0.Method_Txt_Validate0 (CInt(5), var_90)
  loc_1541D6B:           var_90.Text = vbNullString
  loc_1541D85:           Set var_8C = Me.Txt
  loc_1541D8B:           Call 0.Method_Txt_Validate0 (CInt(5), var_90)
  loc_1541D93:           var_90.Tag = vbNullString
  loc_1541DAC:           Set var_8C = Me.Txt
  loc_1541DB2:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1541DBA:           var_90.Text = vbNullString
  loc_1541DD3:           Set var_8C = Me.Txt
  loc_1541DD9:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1541DE1:           var_90.Tag = vbNullString
  loc_1541DF0:         Else
  loc_1541E2C:           Set var_94 = Me.Txt
  loc_1541E32:           Call 0.Method_Txt_Validate0 (CInt(5), var_128)
  loc_1541E3A:           var_128.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1541E8C:           Set var_94 = Me.Txt
  loc_1541E92:           Call 0.Method_Txt_Validate0 (CInt(5), var_128)
  loc_1541E9A:           var_128.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_1541EEB:           Set var_94 = Me.Txt
  loc_1541EF1:           Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1541EF9:           var_128.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_1541F2C:           var_90 = Me.Fields.Item("CompanyType")
  loc_1541F4A:           Set var_94 = Me.Txt
  loc_1541F50:           Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1541F58:           var_128.Tag = CStr(var_90.Value)
  loc_1541F6E:         End If
  loc_1541F6E:       End If
  loc_1541F71:     Else
  loc_1541F79:       If (var_86 = CInt(2)) Then
  loc_1541F89:         Set var_8C = Me.Txt
  loc_1541F8F:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1541FC7:         If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_1541FDC:           Set var_8C = Me.Txt
  loc_1541FE2:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1541FEA:           var_90.Text = CStr(MemVar_1F920EC)
  loc_1541FFC:         Else
  loc_1542006:           Set var_8C = Me.Txt
  loc_154200C:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_154202C:           Set var_128 = Me.Txt
  loc_1542032:           Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_154203A:           var_130.Text = Proc_6_33_1512840(var_90)
  loc_154204D:         End If
  loc_1542051:         Set var_8C = Me.TopCtrl1
  loc_1542057:         Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_90)
  loc_154205F:         var_98 = CStr()
  loc_1542070:         If (var_98 = "Add") Then
  loc_1542079:           Call Proc_224_53_115ACB8(MemVar_1F92044)
  loc_1542089:           If (var_98 = vbNullString) Then
  loc_1542096:             Set var_8C = Me.Txt
  loc_154209C:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15420A4:             var_90.SetFocus
  loc_15420B2:             arg_10 = &HFF
  loc_15420B5:             Exit Sub
  loc_15420B6:           End If
  loc_15420BC:           Call Proc_224_54_110D2A0(MemVar_1F92044, var_98)
  loc_15420CC:           If (var_98 = vbNullString) Then
  loc_15420D9:             Set var_8C = Me.Txt
  loc_15420DF:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15420E7:             var_90.SetFocus
  loc_15420F5:             arg_10 = &HFF
  loc_15420F8:             Exit Sub
  loc_15420F9:           End If
  loc_15420FF:           Call Proc_224_53_115ACB8(MemVar_1F92044, var_98, arg_10)
  loc_1542112:           Set var_8C = Me.Txt
  loc_1542118:           Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1542120:           var_90.Text = arg_10
  loc_1542135:           Call Proc_224_53_115ACB8(MemVar_1F92044, var_98)
  loc_1542140:           global_76 = var_98
  loc_154214D:           Call Proc_224_54_110D2A0(MemVar_1F92044, var_98)
  loc_1542158:           global_80 = var_98
  loc_154215F:         End If
  loc_154216D:         Set var_8C = Me.Txt
  loc_1542173:         Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_154217B:         var_98 = var_90.Text
  loc_154219B:         If (Proc_6_91_EF2D40(CDate(var_98)) = 0) Then
  loc_15421A9:           Set var_8C = Me.Txt
  loc_15421AF:           Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_15421B7:           var_90.SetFocus
  loc_15421C3:           Exit Sub
  loc_15421C4:         End If
  loc_15421C7:       Else
  loc_15421CF:         If (var_86 = CInt(3)) Then
  loc_1542220:           Set var_8C = Me.Txt
  loc_1542226:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_154222E:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1542246:           If (var_98 Or (var_98 = vbNullString)) Then
  loc_1542256:             Set var_8C = Me.Txt
  loc_154225C:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1542264:             var_90.Text = vbNullString
  loc_154227D:             Set var_8C = Me.Txt
  loc_1542283:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_154228B:             var_90.Tag = vbNullString
  loc_154229A:           Else
  loc_15422D5:             Set var_94 = Me.Txt
  loc_15422DB:             Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_15422E3:             var_128.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1542316:             var_90 = Me.Fields.Item("Code")
  loc_1542334:             Set var_94 = Me.Txt
  loc_154233A:             Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1542342:             var_128.Tag = CStr(var_90.Value)
  loc_1542358:           End If
  loc_1542363:           Set var_8C = Me.Txt
  loc_1542369:           Call 0.Method_Txt_Validate0 (CInt(3))
  loc_1542371:           var_98 = "From Location"
  loc_1542392:           If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_154239F:             Set var_8C = Me.Txt
  loc_15423A5:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15423AD:             var_90.SetFocus
  loc_15423BB:             arg_10 = &HFF
  loc_15423BE:             Exit Sub
  loc_15423BF:           End If
  loc_15423C2:         Else
  loc_15423CA:           If (var_86 = CInt(4)) Then
  loc_154241B:             Set var_8C = Me.Txt
  loc_1542421:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1542429:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1542441:             If (arg_10 Or (var_98 = vbNullString)) Then
  loc_1542451:               Set var_8C = Me.Txt
  loc_1542457:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_154245F:               var_90.Text = vbNullString
  loc_1542478:               Set var_8C = Me.Txt
  loc_154247E:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1542486:               var_90.Tag = vbNullString
  loc_1542495:             Else
  loc_15424D0:               Set var_94 = Me.Txt
  loc_15424D6:               Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_15424DE:               var_128.Text = CStr(Me.Fields.Item("Name").Value)
  loc_154252F:               Set var_94 = Me.Txt
  loc_1542535:               Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_154253D:               var_128.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1542553:             End If
  loc_1542553:           End If
  loc_1542553:         End If
  loc_1542553:       End If
  loc_1542553:     End If
  loc_1542553:   End If
  loc_1542553: End If
  loc_1542553: Exit Sub
End Sub

Private Sub DGMemName_UnknownEvent_9 'F36764
  'Data Table: 4FE238
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3665B: Me.DGMemName.Visible = False
  loc_F3667A: If (Me.RecordCount > 0) Then
  loc_F366B9:   Set var_B4 = Me.Txt
  loc_F366BF:   Call 0.Method_DGMemName_UnknownEvent_90 (CInt(5), var_B8)
  loc_F366C7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F366FA:   var_B0 = Me.Fields.Item("Code")
  loc_F36719:   Set var_B4 = Me.Txt
  loc_F3671F:   Call 0.Method_DGMemName_UnknownEvent_90 (CInt(5), var_B8)
  loc_F36727:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3673D: End If
  loc_F36748: Set var_A8 = Me.Txt
  loc_F3674E: Call 0.Method_DGMemName_UnknownEvent_90 (CInt(5))
  loc_F36756: var_B0.SetFocus
  loc_F36762: Exit Sub
End Sub

Private Sub CmdLastEntry_Click() '12778A0
  'Data Table: 4FE238
  Dim var_9C As String
  Dim var_AC As Variant
  Dim var_110 As TextBox
  Dim var_120 As String
  Dim var_12C As String
  Dim var_124 As TextBox
  Dim var_140 As String
  Dim var_138 As TextBox
  Dim unk_4FE23C As Connection15
  Dim var_118 As Recordset15
  Dim var_88 As Variant
  Dim var_11A As Integer
  Dim var_98 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  loc_1277328: On Error Goto loc_1277897
  loc_127732F: Set var_88 = Me.TopCtrl1
  loc_1277335: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_127734E: If (CStr() <> "Add") Then
  loc_1277372:   MsgBox("Only In Add Mode.", &H40, "Fill With Last Entry", var_EC, var_10C)
  loc_1277382:   Exit Sub
  loc_1277383: End If
  loc_127738E: Set var_88 = Me.Txt
  loc_1277394: Call 0.Method_CmdLastEntry_Click0 (CInt(1))
  loc_12773BD: If (Proc_6_27_EA565C(var_110, "Voucher Number") = 0) Then
  loc_12773C0:   Exit Sub
  loc_12773C1: End If
  loc_12773CC: Set var_88 = Me.Txt
  loc_12773D2: Call 0.Method_CmdLastEntry_Click0 (CInt(2), var_110)
  loc_12773FB: If (Proc_6_27_EA565C(var_110, "Voucher Date") = 0) Then
  loc_12773FE:   Exit Sub
  loc_12773FF: End If
  loc_127740A: Set var_88 = Me.Txt
  loc_1277410: Call 0.Method_CmdLastEntry_Click0 (CInt(3), var_110)
  loc_1277439: If (Proc_6_27_EA565C(var_110, "From Location") = 0) Then
  loc_127743C:   Exit Sub
  loc_127743D: End If
  loc_1277448: Set var_88 = Me.Txt
  loc_127744E: Call 0.Method_CmdLastEntry_Click0 (CInt(4), var_110)
  loc_1277456: var_9C = "To Location"
  loc_1277477: If (Proc_6_27_EA565C(var_110, var_9C) = 0) Then
  loc_127747A:   Exit Sub
  loc_127747B: End If
  loc_1277499: Set var_88 = Me.Txt
  loc_127749F: Call 0.Method_CmdLastEntry_Click0 (CInt(4), var_110, var_9C, "Select Distinct SH.Docid,SH.SNo,SH.Vtype,SH.Vno,SH.Vdate,SH.VPrefix,I.Name,I.Code,I.Unit,CASE WHEN I.LPurRate<=0 THEN I.PurchRate ELSE I.LPurRate END as Rate,I.ConvRatio,I.IssueUnit,I.RestCode From Stock SH Left Join ItemMast I On I.Code=SH.Item And I.ItemType='Store' where SH.VType='KMREC' And GoDownCode='")
  loc_12774A7: var_98 = var_110.Tag
  loc_12774B0: var_120 = -1 & var_9C
  loc_12774B7: var_12C = var_120 & "' And Vno In (Select Max(S.Vno) From Stock S Inner Join Stock S1 On S.ContraDocId=S1.DocId And S.ContraSNo=S1.SNo Where S.VType='KMREC' And S.GoDownCode='"
  loc_12774C8: Set var_114 = Me.Txt
  loc_12774CE: Call 0.Method_CmdLastEntry_Click0 (CInt(4), var_124, var_128)
  loc_12774D6: var_12C = var_124.Tag
  loc_12774E6: var_140 = var_14C & var_128 & "' And S1.GoDownCode='"
  loc_12774F7: Set var_134 = Me.Txt
  loc_12774FD: Call 0.Method_CmdLastEntry_Click0 (CInt(3), var_138, var_13C)
  loc_1277505: var_140 = var_138.Tag
  loc_127751E: unk_4FE23C.Execute var_110 & var_13C & "') Order By SH.SNo", , 
  loc_1277529: Set var_118 = var_14C
  loc_1277569: If (var_118.RecordCount > 0) Then
  loc_127757F:   Me.FGrid.Rows = 1
  loc_1277589:   var_11A = 1
  loc_127758C:   ' Referenced from: 1277870
  loc_127759B:   If Not(var_118.EOF) Then
  loc_127759E:     var_AC = vbNullString
  loc_12775A8:     Set var_88 = Me.FGrid
  loc_12775BD:     Set var_158 = Me.FGrid
  loc_12775F9:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("SNo")), CVar(CLng(0)), CVar(CLng(var_11A)))) 'String
  loc_1277600:     LateIdCallSt
  loc_127764B:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("Name")), CVar(CLng(1)), CVar(CLng(var_11A)), var_158)) 'String
  loc_1277652:     LateIdCallSt
  loc_127769D:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("Code")), CVar(CLng(9)), CVar(CLng(var_11A)), var_158, var_CC)) 'String
  loc_12776A4:     LateIdCallSt
  loc_12776EF:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("RestCode")), CVar(CLng(&HA)), CVar(CLng(var_11A)), var_158, var_CC)) 'String
  loc_12776F6:     LateIdCallSt
  loc_1277741:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("Unit")), CVar(CLng(2)), CVar(CLng(var_11A)), var_158, var_CC)) 'String
  loc_1277748:     LateIdCallSt
  loc_1277791:     Proc_6_47_EF59D0(var_CC, CVar(var_118.Fields.Item("Rate")), CVar(CLng(7)), CVar(CLng(var_11A)), var_158)
  loc_12777A1:     LateIdCallSt
  loc_12777EE:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("ConvRatio")), CVar(CLng(4)), CVar(CLng(var_11A)), var_158, CVar(CStr(var_CC)))) 'String
  loc_12777F5:     LateIdCallSt
  loc_1277840:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("IssueUnit")), CVar(CLng(6)), CVar(CLng(var_11A)), var_158, var_CC)) 'String
  loc_1277847:     LateIdCallSt
  loc_127785B:     Set var_158 = Nothing 
  loc_1277865:     var_11A = (var_11A + 1)
  loc_127786B:     var_118.MoveNext
  loc_1277870:     GoTo loc_127758C
  loc_1277873:   End If
  loc_1277886:   Me.FGrid.FixedRows = 1
  loc_127788E: End If
  loc_1277893: Set var_118 = Nothing
  loc_1277896: Exit Sub
  loc_1277897: ' Referenced from: 1277328
  loc_1277897: Proc_6_60_E62BC4(var_11A, var_158, var_CC, var_CC)
  loc_127789C: Exit Sub
  loc_127789D: var_3FDB = var_CC 'Address
End Sub

Private Sub TxtBarCode_KeyDown(KeyCode As Integer, Shift As Integer) 'E14B70
  'Data Table: 4FE238
  loc_E14B62: If (CLng(KeyCode) = &HD) Then
  loc_E14B6A:   Call TxtBarCode_Validate(&HFF)
  loc_E14B6F: End If
  loc_E14B6F: Exit Sub
End Sub

Private Sub TxtBarCode_Validate(Cancel As Boolean) '136057C
  'Data Table: 4FE238
  Dim var_9C As String
  Dim var_A0 As Variant
  Dim var_88 As Variant
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_106 As Integer
  Dim var_F4 As Variant
  Dim var_118 As TextBox
  Dim Cancel As Integer
  Dim var_D4 As Variant
  Dim var_130 As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_1CC As Variant
  Dim var_1FC As Variant
  loc_135FD4C: Set var_88 = Me.TopCtrl1
  loc_135FD52: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_135FD5A: var_9C = CStr()
  loc_135FD69: Set var_A0 = Me.TxtBarCode
  loc_135FD8E: If ((var_9C = "Browse") And (var_A0.Text <> vbNullString)) Then
  loc_135FD9E:   Me.TxtBarCode.Text = vbNullString
  loc_135FDAC:   Call 0.Method_arg_50 (var_9C)
  loc_135FDCD:   MsgBox("Not Applicable In Browse Mode !", &H10, CVar(var_9C), var_E4, var_104)
  loc_135FDDD:   Exit Sub
  loc_135FDDE: End If
  loc_135FE00: If (Trim(CVar(Me.TxtBarCode)) = vbNullString) Then
  loc_135FE03:   Exit Sub
  loc_135FE04: End If
  loc_135FE0F: var_C4 = Trim(CVar(Me.TxtBarCode))
  loc_135FE18: var_110 = CStr(var_C4)
  loc_135FE2F: Me.TxtBarCode.Text = vbNullString
  loc_135FE42: Set var_88 = Me.Txt
  loc_135FE48: Call 0.Method_TxtBarCode_Validate0 (CInt(3))
  loc_135FE59: Set var_118 = var_A0
  loc_135FE71: If (Proc_6_27_EA565C(var_118, "From Location") = 0) Then
  loc_135FE7F:   Set var_88 = Me.Txt
  loc_135FE85:   Call 0.Method_TxtBarCode_Validate0 (CInt(3), var_A0)
  loc_135FE8D:   var_A0.SetFocus
  loc_135FE99:   Exit Sub
  loc_135FE9A: End If
  loc_135FEB1: If (Me.RecordCount = 0) Then
  loc_135FEB4:   Exit Sub
  loc_135FEB5: End If
  loc_135FEBB: Me.MoveFirst
  loc_135FEE5: Me.Find "BarCode='" & var_110 & "'", 0, 1
  loc_135FF05: If (Me.EOF = &HFF) Then
  loc_135FF21:   MsgBox("Item Not Found!", &H10, var_C4, var_E4, var_104)
  loc_135FF34: Else
  loc_135FF4E:   var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_135FF5B:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_135FF63:   var_F4 = CVar(CLng(9)) 'Long
  loc_135FF7D:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_135FF8E:   If (var_9C <> vbNullString) Then
  loc_135FFAC:     var_98 = Me.FGrid.TextMatrix)
  loc_135FFC6:     Set var_A0 = Me.Txt
  loc_135FFCC:     Call 0.Method_TxtBarCode_Validate0 (CInt(3), var_118, var_9C, var_98, CVar(CLng(9)), CVar(CLng(var_106)))
  loc_135FFD4:     var_F4 = var_118.Tag
  loc_1360023:     Me.LblCurStockStr.Caption = global_96
  loc_1360031:     If (Proc_96_27_11F27DC(CStr(var_98), CDbl(1), MemVar_1F92070, var_9C, global_96) = 0) Then
  loc_1360063:       If (MsgBox("Do you Want to Proceed with Negative Stock ?", &H114, var_C4, var_E4, var_104) = 7) Then
  loc_1360068:         Cancel = 0
  loc_136006B:         Exit Sub
  loc_136006C:       End If
  loc_136006C:     End If
  loc_136006C:     var_B4 = vbNullString
  loc_1360076:     Set var_88 = Me.FGrid
  loc_13600A1:     var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_13600AA:   End If
  loc_13600BD:   Me.FGrid.TopRow = CVar(CLng(var_106))
  loc_13600C9:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_13600D1:   var_F4 = CVar(CLng(0)) 'Long
  loc_13600DB:   var_98 = CVar(CStr(var_106)) 'String
  loc_13600E3:   Set var_88 = Me.FGrid
  loc_13600E9:   LateIdCallSt
  loc_13600FB:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_1360103:   var_130 = CVar(CLng(1)) 'Long
  loc_1360136:   var_C4 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_136013E:   Set var_118 = Me.FGrid
  loc_1360144:   LateIdCallSt
  loc_1360160:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_1360168:   var_130 = CVar(CLng(9)) 'Long
  loc_136019B:   var_C4 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_13601A3:   Set var_118 = Me.FGrid
  loc_13601A9:   LateIdCallSt
  loc_13601C5:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_13601CD:   var_130 = CVar(CLng(&HA)) 'Long
  loc_1360200:   var_C4 = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_1360208:   Set var_118 = Me.FGrid
  loc_136020E:   LateIdCallSt
  loc_136022A:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_1360232:   var_130 = CVar(CLng(2)) 'Long
  loc_1360265:   var_C4 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_136026D:   Set var_118 = Me.FGrid
  loc_1360273:   LateIdCallSt
  loc_136028F:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1360297:   var_F4 = CVar(CLng(3)) 'Long
  loc_136029C:   var_14C = "1.000"
  loc_13602A6:   Set var_88 = Me.FGrid
  loc_13602AC:   LateIdCallSt
  loc_13602BB:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_13602C3:   var_130 = CVar(CLng(4)) 'Long
  loc_13602F6:   var_C4 = CVar(CStr(Me.Fields.Item("ConvRatio").Value)) 'String
  loc_13602FE:   Set var_118 = Me.FGrid
  loc_1360304:   LateIdCallSt
  loc_1360320:   var_14C = CVar(CLng(var_106)) 'Long
  loc_1360328:   var_16C = CVar(CLng(4)) 'Long
  loc_1360351:   var_18C = CVar(CLng(var_106)) 'Long
  loc_1360359:   var_1AC = CVar(CLng(5)) 'Long
  loc_1360362:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_136036A:   var_F4 = CVar(CLng(3)) 'Long
  loc_1360392:   var_E4 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_136039A:   Set var_118 = Me.FGrid
  loc_13603A0:   LateIdCallSt
  loc_13603E4:   var_F4 = CVar(CLng(var_106)) 'Long
  loc_13603EC:   var_14C = CVar(CLng(7)) 'Long
  loc_1360419:   var_104 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_1360421:   Set var_118 = Me.FGrid
  loc_1360427:   LateIdCallSt
  loc_1360445:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_136044D:   var_130 = CVar(CLng(6)) 'Long
  loc_1360480:   var_C4 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_1360488:   Set var_118 = Me.FGrid
  loc_136048E:   LateIdCallSt
  loc_13604AA:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_13604B2:   var_F4 = CVar(CLng(7)) 'Long
  loc_13604DB:   var_14C = CVar(CLng(var_106)) 'Long
  loc_13604E3:   var_16C = CVar(CLng(3)) 'Long
  loc_136050C:   var_1AC = CVar(CLng(var_106)) 'Long
  loc_1360514:   var_1CC = CVar(CLng(8)) 'Long
  loc_1360545:   var_1FC = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_136054D:   Set var_118 = Me.FGrid
  loc_1360553:   LateIdCallSt
  loc_136057A: End If
  loc_136057A: Exit Sub
End Sub

Private Sub DGToDepart_UnknownEvent_9 'F36A24
  'Data Table: 4FE238
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3691B: Me.DGToDepart.Visible = False
  loc_F3693A: If (Me.RecordCount > 0) Then
  loc_F36979:   Set var_B4 = Me.Txt
  loc_F3697F:   Call 0.Method_DGToDepart_UnknownEvent_90 (CInt(4), var_B8)
  loc_F36987:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F369BA:   var_B0 = Me.Fields.Item("Name")
  loc_F369D9:   Set var_B4 = Me.Txt
  loc_F369DF:   Call 0.Method_DGToDepart_UnknownEvent_90 (CInt(4), var_B8)
  loc_F369E7:   var_B8.Text = CStr(var_B0.Value)
  loc_F369FD: End If
  loc_F36A08: Set var_A8 = Me.Txt
  loc_F36A0E: Call 0.Method_DGToDepart_UnknownEvent_90 (CInt(4))
  loc_F36A16: var_B0.SetFocus
  loc_F36A22: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11773FC
  'Data Table: 4FE238
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_10C As String
  Dim var_108 As Variant
  Dim var_110 As Long
  Dim var_104 As TextBox
  Dim Me As Variant
  loc_1177038: On Error Goto loc_11773F3
  loc_117703B: Call Proc_224_52_EF65AC()
  loc_1177056: Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_1177071: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_117707A: Set var_BC = Me.FGrid
  loc_11770AF: Set var_104 = Me.TxtGrid
  loc_11770B5: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_11770BD: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_11770EA: Set var_A8 = Me.TxtGrid
  loc_11770F0: Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11770F8: var_BC.MaxLength = 0
  loc_1177127: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_1177136:   Set var_A8 = Me.TxtGrid
  loc_117713C:   Call 0.Method_TxtGrid_GotFocus0 (0, var_BC, var_114)
  loc_1177144:   var_110 = var_BC.Left
  loc_117715B:   Me.DGItem.Left = CVar(var_114)
  loc_1177175:   Set var_F0 = Me.TxtGrid
  loc_117717B:   Call 0.Method_TxtGrid_GotFocus0 (0, var_104)
  loc_1177194:   Set var_A8 = Me.TxtGrid
  loc_117719A:   Call 0.Method_TxtGrid_GotFocus0 (0, var_BC)
  loc_11771AE:   var_94 = CVar((var_BC.Top + var_104.Height)) 'Single
  loc_11771BD:   Me.DGItem.Top = CVar(var_BC.Top)
  loc_1177210:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1177213:     Exit Sub
  loc_1177214:   End If
  loc_1177227:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_117722F:   var_DC = CVar(CLng(1)) 'Long
  loc_1177262:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_117726B:     Me.MoveFirst
  loc_117728B:     var_DC = CVar(CLng(9)) 'Long
  loc_1177294:     Set var_BC = Me.FGrid
  loc_11772AB:     Proc_6_17_EAA2B0(var_12C, CVar(CStr(var_BC.TextMatrix))), var_DC, CVar(CLng(Me.FGrid.Row)))
  loc_11772CA:     var_10C = CStr("Code =" & var_12C)
  loc_11772D4:     Me.Find var_10C, 0, 1
  loc_1177304:     If (Me.EOF = &HFF) Then
  loc_117730D:       Me.MoveFirst
  loc_1177312:     End If
  loc_1177312:   End If
  loc_1177315: Else
  loc_117731C:   If Not (var_110 = CLng(7)) Then
  loc_1177326:     If (var_110 = CLng(3)) Then
  loc_1177329:     End If
  loc_1177332:     If (global_88 = 0) Then
  loc_1177344:       Set var_A8 = Me.TxtGrid
  loc_117734A:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 0, var_15C)
  loc_1177352:       var_BC.SelStart = var_DC
  loc_117736B:       Set var_A8 = Me.TxtGrid
  loc_1177371:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, var_10C)
  loc_1177379:       var_94 = var_BC.Text
  loc_117738C:       Set var_F0 = Me.TxtGrid
  loc_1177392:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_104)
  loc_117739A:       var_104.SelLength = Len(var_10C)
  loc_11773AD:     End If
  loc_11773B0:   Else
  loc_11773B7:     If (var_110 = CLng(4)) Then
  loc_11773C7:       Set var_A8 = Me.TxtGrid
  loc_11773CD:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11773E5:       global_100 = Val(var_BC.Text)
  loc_11773F2:     End If
  loc_11773F2:   End If
  loc_11773F2: End If
  loc_11773F2: Exit Sub
  loc_11773F3: ' Referenced from: 1177038
  loc_11773F3: Proc_6_60_E62BC4(global_100)
  loc_11773F8: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11CA3F0
  'Data Table: 4FE238
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_11C9F88: On Error Goto loc_11CA3E9
  loc_11C9F95: If (CLng(Shift) = &H1B) Then
  loc_11C9FA4:   Set var_88 = Me.TxtGrid
  loc_11C9FAA:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_11C9FC3:   Set var_94 = Me.TxtGrid
  loc_11C9FC9:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_11C9FD1:   var_98.Text = var_8C.Tag
  loc_11C9FED:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_11C9FF6:   Set var_88 = Me.FGrid
  loc_11CA012:   Set var_88 = Me.TxtGrid
  loc_11CA018:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, 0)
  loc_11CA020:   var_8C.Visible = FGrid.DispID_8001
  loc_11CA02C:   Exit Sub
  loc_11CA02D: End If
  loc_11CA040: var_AC = CLng(Me.FGrid.Col)
  loc_11CA050: If (var_AC = CLng(1)) Then
  loc_11CA05E:   If (global_92 = "Yes") Then
  loc_11CA079:     Set var_98 = Nothing
  loc_11CA084:     Set var_94 = Nothing
  loc_11CA0B2:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF)
  loc_11CA0C9:   Else
  loc_11CA0E1:     Set var_98 = Nothing
  loc_11CA11A:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF, 2, Nothing)
  loc_11CA12E:   End If
  loc_11CA138:   If (CLng(Shift) = &HD) Then
  loc_11CA146:     Call Proc_224_48_14A7D44(KeyCode, 0, var_B0, var_98, 0, 1)
  loc_11CA151:     If (var_B0 = &HFF) Then
  loc_11CA197:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_88, 9, 2)
  loc_11CA1A7:     End If
  loc_11CA1A7:   End If
  loc_11CA1AA: Else
  loc_11CA1B1:   If (var_AC = CLng(3)) Then
  loc_11CA1F4:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_88 = &HFF))) Then
  loc_11CA204:       Call Proc_224_48_14A7D44(0, 0, var_B2, 3, 0)
  loc_11CA20F:       If (var_B2 = &HFF) Then
  loc_11CA255:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_88, 9, 0)
  loc_11CA265:       End If
  loc_11CA265:     End If
  loc_11CA268:   Else
  loc_11CA26F:     If (var_AC = CLng(7)) Then
  loc_11CA2B2:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_88 = &HFF))) Then
  loc_11CA2C2:         Call Proc_224_48_14A7D44(0, 0, var_B2, 7, 0)
  loc_11CA2CD:         If (var_B2 = &HFF) Then
  loc_11CA313:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_88, 9, 9)
  loc_11CA323:         End If
  loc_11CA323:       End If
  loc_11CA326:     Else
  loc_11CA32D:       If (var_AC = CLng(4)) Then
  loc_11CA370:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_88 = &HFF))) Then
  loc_11CA380:           Call Proc_224_48_14A7D44(0, 0, var_B2, 0, 0)
  loc_11CA38B:           If (var_B2 = &HFF) Then
  loc_11CA392:             Set var_94 = Me.FGrid
  loc_11CA399:             Set var_98 = Me.TxtGrid
  loc_11CA3D8:             Proc_6_62_1253BC4(var_94, var_98, KeyCode, Shift, global_88, CByte((CInt(7) + 1)), 0)
  loc_11CA3E8:           End If
  loc_11CA3E8:         End If
  loc_11CA3E8:       End If
  loc_11CA3E8:     End If
  loc_11CA3E8:   End If
  loc_11CA3E8: End If
  loc_11CA3E8: Exit Sub
  loc_11CA3E9: ' Referenced from: 11C9F88
  loc_11CA3E9: Proc_6_60_E62BC4(7, 0, var_94, var_98)
  loc_11CA3EE: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '109EE60
  'Data Table: 4FE238
  Dim arg_10 As Integer
  Dim var_A0 As Variant
  Dim var_9C As Variant
  Dim var_A4 As Long
  Dim var_A8 As TextBox
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Long
  loc_109EB98: On Error Goto loc_109EE59
  loc_109EB9E: Proc_6_58_E054C0(arg_10)
  loc_109EBA9: Proc_6_133_E7EF78(var_9C)
  loc_109EBB2: arg_10 = CInt(var_9C)
  loc_109EBDB: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_109EBFA:   If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_109EC08:     If (global_92 = "Yes") Then
  loc_109EC17:       Set var_A0 = Me.TxtGrid
  loc_109EC1D:       Call 0.Method_TxtGrid_KeyPress0 (0, var_A8, var_AC)
  loc_109EC25:       var_A4 = var_A8.Text
  loc_109EC2F:       var_86 = CInt(Len(var_AC))
  loc_109EC3F:       var_88 = arg_10
  loc_109EC46:       Set var_A8 = Me.TxtGrid
  loc_109EC51:       var_AC = "BarCode"
  loc_109EC6C:       Proc_6_89_146F1AC(var_A8, KeyAscii, global_60, arg_10, var_AC)
  loc_109EC87:       Set var_A0 = Me.TxtGrid
  loc_109EC8D:       Call 0.Method_TxtGrid_KeyPress0 (0, var_A8, var_AC, 0)
  loc_109EC95:       var_88 = var_A8.Text
  loc_109ECAD:       If (Len(var_AC) = CLng(var_86)) Then
  loc_109ECC7:         If (Me.AbsolutePosition > 0) Then
  loc_109ECDB:           var_8C = Me.AbsolutePosition
  loc_109ECE1:         Else
  loc_109ECE6:           var_8C = 1
  loc_109ECE9:         End If
  loc_109ECEC:         arg_10 = var_88
  loc_109ED19:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_60, arg_10, "Name", 0)
  loc_109ED3F:         If (Me.AbsolutePosition <= 0) Then
  loc_109ED4B:           Me.AbsolutePosition = var_8C
  loc_109ED50:         End If
  loc_109ED50:       End If
  loc_109ED53:     Else
  loc_109ED57:       Set var_A8 = Me.TxtGrid
  loc_109ED7D:       Proc_6_89_146F1AC(var_A8, KeyAscii, global_60, arg_10, "Name", 0)
  loc_109ED8C:     End If
  loc_109ED8C:   End If
  loc_109ED8F: Else
  loc_109ED96:   If (var_A4 = CLng(3)) Then
  loc_109EDA3:     Set var_A0 = Me.TxtGrid
  loc_109EDA9:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, arg_10, var_8C)
  loc_109EDC4:     Proc_6_42_129A86C(var_A8, arg_10, 8, 3)
  loc_109EDD3:   Else
  loc_109EDDA:     If (var_A4 = CLng(7)) Then
  loc_109EDE7:       Set var_A0 = Me.TxtGrid
  loc_109EDED:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, var_8C)
  loc_109EE08:       Proc_6_42_129A86C(var_A8, arg_10, 8, 2)
  loc_109EE17:     Else
  loc_109EE1E:       If (var_A4 = CLng(4)) Then
  loc_109EE2B:         Set var_A0 = Me.TxtGrid
  loc_109EE31:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, var_86)
  loc_109EE4C:         Proc_6_42_129A86C(var_A8, arg_10, 6)
  loc_109EE58:       End If
  loc_109EE58:     End If
  loc_109EE58:   End If
  loc_109EE58: End If
  loc_109EE58: Exit Sub
  loc_109EE59: ' Referenced from: 109EB98
  loc_109EE59: Proc_6_60_E62BC4(2, arg_10)
  loc_109EE5E: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10AB02C
  'Data Table: 4FE238
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As Variant
  Dim var_180 As Double
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_178 As MSHFlexGrid
  Dim var_A8 As String
  loc_10AAD78: On Error Goto loc_10AB024
  loc_10AAD87: If (KeyCode = 0) Then
  loc_10AAD9D:   var_A0 = CLng(Me.FGrid.Col)
  loc_10AADAD:   If (var_A0 = CLng(1)) Then
  loc_10AADD3:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_10AADE4:       Call TxtGrid_KeyDown(KeyCode, global_90)
  loc_10AADF4:       If (global_92 = "Yes") Then
  loc_10AAE21:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_60, Shift, "BarCode")
  loc_10AAE33:       Else
  loc_10AAE37:         Set var_AC = Me.TxtGrid
  loc_10AAE42:         var_A8 = "Name"
  loc_10AAE5D:         Proc_6_89_146F1AC(var_AC, KeyCode, global_60, Shift, var_A8)
  loc_10AAE6C:       End If
  loc_10AAE6C:     End If
  loc_10AAE6F:   Else
  loc_10AAE76:     If Not (var_A0 = CLng(3)) Then
  loc_10AAE80:       If (var_A0 = CLng(4)) Then
  loc_10AAE83:       End If
  loc_10AAE90:       Set var_8C = Me.TxtGrid
  loc_10AAE96:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, &HFF)
  loc_10AAE9E:       &HFF = var_AC.Text
  loc_10AAEC1:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10AAED9:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10AAF06:       var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_10AAF0E:       Set var_178 = Me.FGrid
  loc_10AAF14:       LateIdCallSt
  loc_10AAF4E:       var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10AAF78:       var_180 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10AAF7F:       Set var_178 = Me.FGrid
  loc_10AAFDE:       var_164 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * var_180))) 'String
  loc_10AAFEC:       LateIdCallSt
  loc_10AB019:       Call Proc_224_56_F73060(Me.FGrid, var_164, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(5)), CVar(CLng(var_178.Row)), var_180, CVar(CLng(4)))
  loc_10AB01E:       Call Proc_224_46_1462124(var_144, var_178, var_164, 1)
  loc_10AB023:     End If
  loc_10AB023:   End If
  loc_10AB023: End If
  loc_10AB023: Exit Sub
  loc_10AB024: ' Referenced from: 10AAD78
  loc_10AB024: Proc_6_60_E62BC4(1, var_144)
  loc_10AB029: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20298
  'Data Table: 4FE238
  Dim arg_10 As Integer
  loc_E20274: On Error Goto loc_E2028F
  loc_E20282: Call Proc_224_48_14A7D44(Cancel, &HFF)
  loc_E2028B: arg_10 = Not(var_88)
  loc_E2028E: Exit Sub
  loc_E2028F: ' Referenced from: E20274
  loc_E2028F: Proc_6_60_E62BC4(arg_10)
  loc_E20294: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E967D8
  'Data Table: 4FE238
  Dim Me As Recordset15
  loc_E96766: On Error Goto loc_E967CF
  loc_E9676F: Me.MoveFirst
  loc_E96799: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E967C1: Proc_5_0_110649C(&HFF, Me, global_56)
  loc_E967C9: Call Proc_224_50_1671E24(0)
  loc_E967CE: Exit Sub
  loc_E967CF: ' Referenced from: E96766
  loc_E967CF: Proc_6_60_E62BC4(var_A0)
  loc_E967D4: Exit Sub
End Sub

Public Sub Proc_224_46_1462124
  'Data Table: 4FE238
  Dim unk_4FE23C As Connection15
  Dim var_E0 As Variant
  Dim var_DC As Variant
  Dim var_CC As Variant
  Dim var_104 As Variant
  Dim var_11C As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_120 As Variant
  Dim var_86 As Integer
  Dim var_9C As Recordset15
  Dim var_168 As Variant
  Dim var_144 As Field20
  Dim var_188 As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_1FC As Variant
  Dim var_130 As Variant
  loc_14615A4: unk_4FE23C.Execute "Select Code,RoundOff from RevMast Where (LogSite_Code='" & MemVar_1F92078 & "' Or LogSite_Code='HO') Order By Name", var_DC, -1
  loc_14615AF: Set var_9C = var_E0
  loc_14615E4: For var_E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_E4 'Integer
  loc_14615EE:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_14615F6:   var_104 = CVar(CLng(8)) 'Long
  loc_1461622:   var_AC = (var_AC + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1461632:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_146163A:   var_104 = CVar(CLng(8)) 'Long
  loc_1461666:   var_B4 = (var_B4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1461675: Next var_E4 'Integer
  loc_146168D: Set var_E0 = Me.LblCap
  loc_1461693: Call 0.Method_Proc_224_46_14621240 (1, var_120)
  loc_146169B: var_120.Tag = MemVar_1F92070 & "TOT"
  loc_14616B6: Set var_E0 = Me.LblCap
  loc_14616BC: Call 0.Method_Proc_224_46_14621240 (1, var_120)
  loc_14616C4: var_120.Caption = "Total"
  loc_1461705: Set var_E0 = Me.TxtGt
  loc_146170B: Call 0.Method_Proc_224_46_14621240 (1, var_120, CStr(Format(var_AC, "0.00")))
  loc_1461713: var_120.Text = 1
  loc_146173C: Me.FGCat.Rows = 1
  loc_1461792: Call Proc_224_47_16DE6A8(global_84, 1, CSng(Format(var_AC, "0.00")), vbNullString)
  loc_14617AD: Set var_E0 = Me.LblCap
  loc_14617B3: Call 0.Method_Proc_224_46_14621248 (var_132, var_86, 2, 0)
  loc_14617BE: For var_140 = 1 To var_132: 1 = var_140 'Integer
  loc_14617CE:   Set var_E0 = Me.LblCap
  loc_14617D4:   Call 0.Method_Proc_224_46_14621240 (var_86, var_120)
  loc_14617E5:   Me.LblCap.Unload var_120
  loc_14617FB:   Set var_E0 = Me.LblDummy
  loc_1461801:   Call 0.Method_Proc_224_46_14621240 (var_86, var_120)
  loc_1461812:   Me.LblDummy.Unload var_120
  loc_1461828:   Set var_E0 = Me.TxtGt
  loc_146182E:   Call 0.Method_Proc_224_46_14621240 (var_86, var_120)
  loc_146183F:   Me.TxtGt.Unload var_120
  loc_146184E: Next var_140 'Integer
  loc_1461855: var_86 = 2
  loc_1461858: ' Referenced from: 1461DFB
  loc_146185E: var_132 = var_9C.EOF
  loc_1461867: If Not(var_132) Then
  loc_146186D:   var_A4 = vbNullString
  loc_1461873:   var_AC = CDbl(0)
  loc_146189B:   For var_148 = 1 To CInt((CLng(Me.FGCat.Rows) - 1)): var_8A = var_148 'Integer
  loc_14618A5:     var_CC = CVar(CLng(var_8A)) 'Long
  loc_14618AD:     var_104 = CVar(CLng(2)) 'Long
  loc_14618C7:     var_168 = CVar(CStr(Me.FGCat.TextMatrix))) 'String
  loc_14618DD:     var_120 = var_9C.Fields
  loc_14618ED:     var_130 = var_120.Item("Code").Value
  loc_14618FD:     var_188 = CVar(CLng(var_8A)) 'Long
  loc_146190E:     Set var_1BC = Me.FGCat
  loc_1461951:     If CBool(CVar(CLng(6)) And (CDbl(Val(CStr(var_1BC.TextMatrix)))) <> CDbl(0))) Then
  loc_1461958:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_1461960:       var_104 = CVar(CLng(6)) 'Long
  loc_1461988:       var_AC = (var_AC + CDbl(CStr(Me.FGCat.TextMatrix))))
  loc_1461998:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_14619A0:       var_104 = CVar(CLng(2)) 'Long
  loc_14619BA:       var_98 = CStr(Me.FGCat.TextMatrix))
  loc_14619C7:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_14619CF:       var_104 = CVar(CLng(3)) 'Long
  loc_14619E9:       var_A4 = CStr(Me.FGCat.TextMatrix))
  loc_14619F2:     End If
  loc_14619F5:   Next var_148 'Integer
  loc_1461A02:   If (var_A4 <> vbNullString) Then
  loc_1461A0F:     Set var_E0 = Me.LblDummy
  loc_1461A15:     Call 0.Method_Proc_224_46_14621248 (var_132)
  loc_1461A21:     If (var_86 > var_132) Then
  loc_1461A2E:       Set var_E0 = Me.LblDummy
  loc_1461A34:       Call 0.Method_Proc_224_46_14621240 (var_86)
  loc_1461A45:       Me.LblDummy.Load var_120
  loc_1461A5D:       Set var_E0 = Me.LblDummy
  loc_1461A63:       Call 0.Method_Proc_224_46_14621240 (var_86, var_120)
  loc_1461A6B:       var_120.Visible = False
  loc_1461A77:     End If
  loc_1461A81:     Set var_E0 = Me.LblCap
  loc_1461A87:     Call 0.Method_Proc_224_46_14621248 (var_132, var_86)
  loc_1461A93:     If (var_120 > var_132) Then
  loc_1461AA0:       Set var_E0 = Me.LblCap
  loc_1461AA6:       Call 0.Method_Proc_224_46_14621240 (var_86)
  loc_1461AB7:       Me.LblCap.Load var_120
  loc_1461AD0:       Set var_144 = Me.LblCap
  loc_1461AD6:       Call 0.Method_Proc_224_46_14621240 (var_86, var_1BC)
  loc_1461AF3:       Set var_E0 = Me.LblCap
  loc_1461AF9:       Call 0.Method_Proc_224_46_14621240 ((var_86 - 1), var_120)
  loc_1461B1C:       Set var_1F8 = Me.LblCap
  loc_1461B22:       Call 0.Method_Proc_224_46_14621240 (var_86, var_1FC)
  loc_1461B2A:       var_1FC.Top = ((var_120.Top + var_1BC.Height) + CDbl(&HF))
  loc_1461B3E:     End If
  loc_1461B48:     Set var_E0 = Me.TxtGt
  loc_1461B4E:     Call 0.Method_Proc_224_46_14621248 (var_132, var_86)
  loc_1461B5A:     If (var_120 > var_132) Then
  loc_1461B67:       Set var_E0 = Me.TxtGt
  loc_1461B6D:       Call 0.Method_Proc_224_46_14621240 (var_86)
  loc_1461B7E:       Me.TxtGt.Load var_120
  loc_1461B97:       Set var_144 = Me.TxtGt
  loc_1461B9D:       Call 0.Method_Proc_224_46_14621240 (var_86, var_1BC)
  loc_1461BBA:       Set var_E0 = Me.TxtGt
  loc_1461BC0:       Call 0.Method_Proc_224_46_14621240 ((var_86 - 1), var_120)
  loc_1461BE3:       Set var_1F8 = Me.TxtGt
  loc_1461BE9:       Call 0.Method_Proc_224_46_14621240 (var_86, var_1FC)
  loc_1461BF1:       var_1FC.Top = ((var_120.Top + var_1BC.Height) + CDbl(&HF))
  loc_1461C05:     End If
  loc_1461C12:     Set var_E0 = Me.LblCap
  loc_1461C18:     Call 0.Method_Proc_224_46_14621240 (var_86, var_120)
  loc_1461C20:     var_120.Tag = var_98
  loc_1461C57:     Set var_E0 = Me.LblCap
  loc_1461C5D:     Call 0.Method_Proc_224_46_14621240 (var_86, var_120)
  loc_1461C65:     var_120.Caption = CStr(StrConv(var_A4, 3, 0))
  loc_1461C8E:     var_120 = var_9C.Fields.Item("RoundOff")
  loc_1461CBC:     Proc_6_142_14A55B0(var_AC, CByte(0), "S")
  loc_1461CC1:     var_11C = 2
  loc_1461CF1:     var_1CC = (CVar(var_AC) + IIf((Proc_6_38_E68A98(CVar(var_120)) = "Yes"), CVar(var_11C), 0))
  loc_1461CF6:     var_AC = CSng(var_1BC.TextMatrix))
  loc_1461D1B:     var_B4 = (var_B4 + var_AC)
  loc_1461D54:     Set var_E0 = Me.TxtGt
  loc_1461D5A:     Call 0.Method_Proc_224_46_14621240 (var_86, var_120, CStr(Format(var_AC, "0.00")), 1, 1)
  loc_1461D62:     var_120.Text = var_B4
  loc_1461D84:     Set var_E0 = Me.LblDummy
  loc_1461D8A:     Call 0.Method_Proc_224_46_14621240 (var_86, var_120, 0)
  loc_1461D92:     var_120.Visible = var_AC
  loc_1461DAA:     Set var_E0 = Me.LblCap
  loc_1461DB0:     Call 0.Method_Proc_224_46_14621240 (var_86, var_120, &HFF)
  loc_1461DB8:     var_120.Visible = var_11C
  loc_1461DD0:     Set var_E0 = Me.TxtGt
  loc_1461DD6:     Call 0.Method_Proc_224_46_14621240 (var_86, var_120)
  loc_1461DDE:     var_120.Visible = True
  loc_1461DF0:     var_86 = (var_86 + 1)
  loc_1461DF3:   End If
  loc_1461DF6:   var_9C.MoveNext
  loc_1461DFB:   GoTo loc_1461858
  loc_1461DFE: End If
  loc_1461E08: Set var_E0 = Me.LblDummy
  loc_1461E0E: Call 0.Method_Proc_224_46_14621248 (var_132, var_86)
  loc_1461E1A: If (var_86 > var_132) Then
  loc_1461E27:   Set var_E0 = Me.LblDummy
  loc_1461E2D:   Call 0.Method_Proc_224_46_14621240 (var_86, var_120)
  loc_1461E3E:   Me.LblDummy.Load var_120
  loc_1461E56:   Set var_E0 = Me.LblDummy
  loc_1461E5C:   Call 0.Method_Proc_224_46_14621240 (var_86, var_120)
  loc_1461E64:   var_120.Visible = False
  loc_1461E70: End If
  loc_1461E7A: Set var_E0 = Me.LblCap
  loc_1461E80: Call 0.Method_Proc_224_46_14621248 (var_132, var_86)
  loc_1461E8C: If (var_120 > var_132) Then
  loc_1461E99:   Set var_E0 = Me.LblCap
  loc_1461E9F:   Call 0.Method_Proc_224_46_14621240 (var_86)
  loc_1461EB0:   Me.LblCap.Load var_120
  loc_1461EC9:   Set var_144 = Me.LblCap
  loc_1461ECF:   Call 0.Method_Proc_224_46_14621240 (var_86, var_1BC)
  loc_1461EEC:   Set var_E0 = Me.LblCap
  loc_1461EF2:   Call 0.Method_Proc_224_46_14621240 ((var_86 - 1), var_120)
  loc_1461F15:   Set var_1F8 = Me.LblCap
  loc_1461F1B:   Call 0.Method_Proc_224_46_14621240 (var_86, var_1FC)
  loc_1461F23:   var_1FC.Top = ((var_120.Top + var_1BC.Height) + CDbl(&HF))
  loc_1461F37: End If
  loc_1461F41: Set var_E0 = Me.TxtGt
  loc_1461F47: Call 0.Method_Proc_224_46_14621248 (var_132, var_86)
  loc_1461F53: If (var_120 > var_132) Then
  loc_1461F60:   Set var_E0 = Me.TxtGt
  loc_1461F66:   Call 0.Method_Proc_224_46_14621240 (var_86)
  loc_1461F77:   Me.TxtGt.Load var_120
  loc_1461F90:   Set var_144 = Me.TxtGt
  loc_1461F96:   Call 0.Method_Proc_224_46_14621240 (var_86, var_1BC)
  loc_1461FB3:   Set var_E0 = Me.TxtGt
  loc_1461FB9:   Call 0.Method_Proc_224_46_14621240 ((var_86 - 1), var_120)
  loc_1461FDC:   Set var_1F8 = Me.TxtGt
  loc_1461FE2:   Call 0.Method_Proc_224_46_14621240 (var_86, var_1FC)
  loc_1461FEA:   var_1FC.Top = ((var_120.Top + var_1BC.Height) + CDbl(&HF))
  loc_1461FFE: End If
  loc_1462012: Set var_E0 = Me.LblCap
  loc_1462018: Call 0.Method_Proc_224_46_14621240 (var_86, var_120)
  loc_1462020: var_120.Tag = MemVar_1F92070 & "NET"
  loc_146203C: Set var_E0 = Me.LblCap
  loc_1462042: Call 0.Method_Proc_224_46_14621240 (var_86, var_120)
  loc_146204A: var_120.Caption = "Net Amount"
  loc_146208C: Set var_E0 = Me.TxtGt
  loc_1462092: Call 0.Method_Proc_224_46_14621240 (var_86, var_120, CStr(Format(var_B4, "0.00")))
  loc_146209A: var_120.Text = 1
  loc_14620BC: Set var_E0 = Me.LblDummy
  loc_14620C2: Call 0.Method_Proc_224_46_14621240 (var_86, var_120, 0)
  loc_14620CA: var_120.Visible = True
  loc_14620E2: Set var_E0 = Me.LblCap
  loc_14620E8: Call 0.Method_Proc_224_46_14621240 (var_86, var_120)
  loc_14620F0: var_120.Visible = True
  loc_1462108: Set var_E0 = Me.TxtGt
  loc_146210E: Call 0.Method_Proc_224_46_14621240 (var_86, var_120)
  loc_1462116: var_120.Visible = True
  loc_1462122: Exit Sub
End Sub

Public Sub Proc_224_47_16DE6A8(arg_C, arg_10, arg_14) '16DE6A8
  'Data Table: 4FE238
  Dim var_E4 As String
  Dim unk_4FE23C As Connection15
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_108 As Variant
  Dim var_12C As Variant
  Dim var_15C As Variant
  Dim var_11C As Variant
  Dim var_D0 As Double
  Dim var_184 As Double
  Dim var_13C As Variant
  Dim var_194 As Variant
  Dim var_1C4 As Variant
  Dim var_204 As Variant
  Dim var_1B4 As Integer
  Dim var_118 As MSHFlexGrid
  Dim var_16C As Double
  Dim var_9C As Double
  loc_16DCC58: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_16DCC68: unk_4FE23C.Execute var_E4 & "'", var_108, -1
  loc_16DCC73: Set var_8C = var_10C
  loc_16DCC85: var_DA = 0
  loc_16DCC8B: var_94 = arg_14
  loc_16DCC90: var_86 = 1
  loc_16DCC96: var_A8 = var_94
  loc_16DCC9C: var_B0 = var_94
  loc_16DCCA2: var_B8 = CDbl(0)
  loc_16DCCB9: If (var_8C.RecordCount > 0) Then
  loc_16DCCBC:   ' Referenced from: 16DE679
  loc_16DCCCB:   If Not(var_8C.EOF) Then
  loc_16DCCD2:     Set var_118 = Me.FGCat
  loc_16DCCE9:     If (var_8C.RecordCount > 0) Then
  loc_16DCCF2:       var_D2 = (var_D2 + 1)
  loc_16DCD2B:       var_14C = Trim(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Nature")), var_D2, var_B8, var_B0, var_A8))) 'Variant
  loc_16DCD44:       If (var_14C = "On Base Amt") Then
  loc_16DCD87:         If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_16DCDC9:           var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64))
  loc_16DCDDC:         Else
  loc_16DCDFE:           var_12C = var_8C.Fields.Item("Rate").Value
  loc_16DCE3C:           Proc_6_142_14A55B0(((Val(CStr(var_12C)) * (var_A8 + arg_1C)) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_12C)))
  loc_16DCE41:           var_184 = var_D0
  loc_16DCE6F:           var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_16DCE87:           var_D0 = (((Val(var_E4) * (var_A8 + arg_1C)) / CDbl(&H64)) + var_184)
  loc_16DCEA5:         End If
  loc_16DCECB:         Proc_6_39_E7C810(var_12C, CVar(var_8C.Fields.Item("Limit")), var_D0, var_184)
  loc_16DCF05:         Proc_6_39_E7C810(var_1B4, CVar(var_8C.Fields.Item("Rate")), (var_12C <= CVar(var_94)), var_86)
  loc_16DCF2F:         If CBool(var_94 And (var_1B4 > 0)) Then
  loc_16DCF39:           If (var_D0 > CDbl(0)) Then
  loc_16DCF3C:             var_F8 = vbNullString
  loc_16DCF66:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DCF6E:             var_194 = CVar(CLng(0)) 'Long
  loc_16DCF78:             var_12C = CVar(CStr(arg_10)) 'String
  loc_16DCF7F:             LateIdCallSt
  loc_16DCFAA:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DCFB2:             var_194 = CVar(CLng(1)) 'Long
  loc_16DCFBC:             var_12C = CVar(CStr(var_86)) 'String
  loc_16DCFC3:             LateIdCallSt
  loc_16DCFEE:             var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DCFF6:             var_1C4 = CVar(CLng(2)) 'Long
  loc_16DD026:             var_13C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_16DD02D:             LateIdCallSt
  loc_16DD060:             var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD068:             var_1C4 = CVar(CLng(3)) 'Long
  loc_16DD098:             var_13C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_16DD09F:             LateIdCallSt
  loc_16DD0D2:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD0DA:             var_194 = CVar(CLng(4)) 'Long
  loc_16DD0E8:             var_12C = CVar(CStr((var_A8 + arg_1C))) 'String
  loc_16DD0EF:             LateIdCallSt
  loc_16DD11A:             var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD122:             var_1C4 = CVar(CLng(5)) 'Long
  loc_16DD152:             var_13C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_16DD159:             LateIdCallSt
  loc_16DD1B7:             var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD20A:             LateIdCallSt
  loc_16DD247:             var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD26B:             var_11C = var_8C.Fields.Item("Sundry")
  loc_16DD27C:             var_13C = CVar(Proc_6_38_E68A98(CVar(var_11C), CVar(CLng(7)), "Yes", var_118, CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))), CVar(CLng(6)), var_204)) 'String
  loc_16DD283:             LateIdCallSt
  loc_16DD2B4:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD2CF:             Set var_10C = Me.Txt
  loc_16DD2D5:             Call 0.Method_Proc_224_47_16DE6A80 (CInt(4), var_11C, var_E4, CVar(CLng(8)), "Sundry", var_118, var_13C)
  loc_16DD2DD:             var_118 = var_11C.Tag
  loc_16DD2E5:             var_12C = CVar(var_E4) 'String
  loc_16DD2EC:             LateIdCallSt
  loc_16DD304:           End If
  loc_16DD31D:           var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD325:           var_194 = CVar(CLng(6)) 'Long
  loc_16DD34A:           var_9C = (var_9C + Val(CStr(var_118.TextMatrix))))
  loc_16DD373:           var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD37B:           var_194 = CVar(CLng(6)) 'Long
  loc_16DD396:           var_16C = Val(CStr(var_118.TextMatrix)))
  loc_16DD3A0:           var_94 = (var_94 + var_16C)
  loc_16DD3B7:           var_B0 = (var_B0 + var_D0)
  loc_16DD3BD:           var_B8 = var_D0
  loc_16DD3C0:         End If
  loc_16DD3C3:       Else
  loc_16DD3CE:         If (var_14C = "On Running Total") Then
  loc_16DD411:           If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_16DD44F:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_16DD462:           Else
  loc_16DD484:             var_12C = var_8C.Fields.Item("Rate").Value
  loc_16DD4BE:             Proc_6_142_14A55B0(((Val(CStr(var_12C)) * var_B0) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_12C)), var_D0, var_B8, var_B0)
  loc_16DD4C3:             var_184 = var_94
  loc_16DD4F1:             var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_16DD505:             var_D0 = (((Val(var_E4) * var_B0) / CDbl(&H64)) + var_184)
  loc_16DD523:           End If
  loc_16DD549:           Proc_6_39_E7C810(var_12C, CVar(var_8C.Fields.Item("Rate")), var_D0, var_184, var_16C)
  loc_16DD563:           If (var_12C > 0) Then
  loc_16DD56D:             If (var_D0 > CDbl(0)) Then
  loc_16DD570:               var_F8 = vbNullString
  loc_16DD59A:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD5A2:               var_194 = CVar(CLng(0)) 'Long
  loc_16DD5AC:               var_12C = CVar(CStr(arg_10)) 'String
  loc_16DD5B3:               LateIdCallSt
  loc_16DD5DE:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD5E6:               var_194 = CVar(CLng(1)) 'Long
  loc_16DD5F0:               var_12C = CVar(CStr(var_86)) 'String
  loc_16DD5F7:               LateIdCallSt
  loc_16DD622:               var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD62A:               var_1C4 = CVar(CLng(2)) 'Long
  loc_16DD65A:               var_13C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_16DD661:               LateIdCallSt
  loc_16DD694:               var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD69C:               var_1C4 = CVar(CLng(3)) 'Long
  loc_16DD6CC:               var_13C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_16DD6D3:               LateIdCallSt
  loc_16DD706:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD70E:               var_194 = CVar(CLng(4)) 'Long
  loc_16DD718:               var_12C = CVar(CStr(var_B0)) 'String
  loc_16DD71F:               LateIdCallSt
  loc_16DD74A:               var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD752:               var_1C4 = CVar(CLng(5)) 'Long
  loc_16DD782:               var_13C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_16DD789:               LateIdCallSt
  loc_16DD7E7:               var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD83A:               LateIdCallSt
  loc_16DD877:               var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD89B:               var_11C = var_8C.Fields.Item("Sundry")
  loc_16DD8AC:               var_13C = CVar(Proc_6_38_E68A98(CVar(var_11C), CVar(CLng(7)), "Yes", var_118, CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))), CVar(CLng(6)), var_204)) 'String
  loc_16DD8B3:               LateIdCallSt
  loc_16DD8E4:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD8FF:               Set var_10C = Me.Txt
  loc_16DD905:               Call 0.Method_Proc_224_47_16DE6A80 (CInt(4), var_11C, var_E4, CVar(CLng(8)), "Sundry", var_118, var_13C)
  loc_16DD90D:               var_118 = var_11C.Tag
  loc_16DD915:               var_12C = CVar(var_E4) 'String
  loc_16DD91C:               LateIdCallSt
  loc_16DD934:             End If
  loc_16DD94D:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD955:             var_194 = CVar(CLng(6)) 'Long
  loc_16DD97A:             var_9C = (var_9C + Val(CStr(var_118.TextMatrix))))
  loc_16DD9A3:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DD9AB:             var_194 = CVar(CLng(6)) 'Long
  loc_16DD9D0:             var_94 = (var_94 + Val(CStr(var_118.TextMatrix))))
  loc_16DD9E7:             var_B0 = (var_B0 + var_D0)
  loc_16DD9ED:             var_B8 = var_D0
  loc_16DD9F0:           End If
  loc_16DD9F3:         Else
  loc_16DD9FE:           If (var_14C = "On Prev. Tax Amt") Then
  loc_16DDA41:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_16DDA7F:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_16DDA92:             Else
  loc_16DDAEE:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_16DDB21:               var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_16DDB35:               var_D0 = (((Val(var_E4) * var_B8) / CDbl(&H64)) + var_94)
  loc_16DDB53:             End If
  loc_16DDB5A:             If (var_D0 > CDbl(0)) Then
  loc_16DDB5D:               var_F8 = vbNullString
  loc_16DDB87:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDB8F:               var_194 = CVar(CLng(0)) 'Long
  loc_16DDB99:               var_12C = CVar(CStr(arg_10)) 'String
  loc_16DDBA0:               LateIdCallSt
  loc_16DDBCB:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDBD3:               var_194 = CVar(CLng(1)) 'Long
  loc_16DDBDD:               var_12C = CVar(CStr(var_86)) 'String
  loc_16DDBE4:               LateIdCallSt
  loc_16DDC0F:               var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDC17:               var_1C4 = CVar(CLng(2)) 'Long
  loc_16DDC47:               var_13C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_16DDC4E:               LateIdCallSt
  loc_16DDC81:               var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDC89:               var_1C4 = CVar(CLng(3)) 'Long
  loc_16DDCB9:               var_13C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_16DDCC0:               LateIdCallSt
  loc_16DDCF3:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDCFB:               var_194 = CVar(CLng(4)) 'Long
  loc_16DDD05:               var_12C = CVar(CStr(var_B8)) 'String
  loc_16DDD0C:               LateIdCallSt
  loc_16DDD37:               var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDD3F:               var_1C4 = CVar(CLng(5)) 'Long
  loc_16DDD6F:               var_13C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_16DDD76:               LateIdCallSt
  loc_16DDDD0:               var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDDDD:               var_1B4 = 2
  loc_16DDE23:               LateIdCallSt
  loc_16DDE60:               var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDE84:               var_11C = var_8C.Fields.Item("Sundry")
  loc_16DDE95:               var_13C = CVar(Proc_6_38_E68A98(CVar(var_11C), CVar(CLng(7)), "Yes", var_118, CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_1B4))))), CVar(CLng(6)), var_204)) 'String
  loc_16DDE9C:               LateIdCallSt
  loc_16DDECD:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDEE8:               Set var_10C = Me.Txt
  loc_16DDEEE:               Call 0.Method_Proc_224_47_16DE6A80 (CInt(4), var_11C, var_E4, CVar(CLng(8)), "Sundry", var_118, var_13C)
  loc_16DDEF6:               var_118 = var_11C.Tag
  loc_16DDEFE:               var_12C = CVar(var_E4) 'String
  loc_16DDF05:               LateIdCallSt
  loc_16DDF1D:             End If
  loc_16DDF36:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDF3E:             var_194 = CVar(CLng(6)) 'Long
  loc_16DDF63:             var_9C = (var_9C + Val(CStr(var_118.TextMatrix))))
  loc_16DDF8C:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DDF94:             var_194 = CVar(CLng(6)) 'Long
  loc_16DDFAF:             var_16C = Val(CStr(var_118.TextMatrix)))
  loc_16DDFB9:             var_94 = (var_94 + var_16C)
  loc_16DDFD0:             var_B0 = (var_B0 + var_D0)
  loc_16DDFD6:             var_B8 = var_D0
  loc_16DDFDC:           Else
  loc_16DE01C:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_16DE05A:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_16DE06D:             Else
  loc_16DE08F:               var_12C = var_8C.Fields.Item("Rate").Value
  loc_16DE0C9:               Proc_6_142_14A55B0(((Val(CStr(var_12C)) * var_A8) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_12C)), var_D0, var_B8, var_B0)
  loc_16DE0CE:               var_184 = var_94
  loc_16DE0FC:               var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_16DE110:               var_D0 = (((Val(var_E4) * var_A8) / CDbl(&H64)) + var_184)
  loc_16DE12E:             End If
  loc_16DE131:             var_F8 = "Limit"
  loc_16DE154:             Proc_6_39_E7C810(var_12C, CVar(var_8C.Fields.Item(var_F8)), var_D0, var_184, var_16C)
  loc_16DE16B:             var_194 = "Rate"
  loc_16DE18E:             Proc_6_39_E7C810(var_1B4, CVar(var_8C.Fields.Item(var_194)), (var_12C <= CVar(var_94)), var_194)
  loc_16DE1B8:             If CBool(var_F8 And (var_1B4 > 0)) Then
  loc_16DE1C2:               If (var_D0 > CDbl(0)) Then
  loc_16DE1C5:                 var_F8 = vbNullString
  loc_16DE1EF:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE1F7:                 var_194 = CVar(CLng(0)) 'Long
  loc_16DE201:                 var_12C = CVar(CStr(arg_10)) 'String
  loc_16DE208:                 LateIdCallSt
  loc_16DE233:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE23B:                 var_194 = CVar(CLng(1)) 'Long
  loc_16DE245:                 var_12C = CVar(CStr(var_86)) 'String
  loc_16DE24C:                 LateIdCallSt
  loc_16DE277:                 var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE27F:                 var_1C4 = CVar(CLng(2)) 'Long
  loc_16DE2AF:                 var_13C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_16DE2B6:                 LateIdCallSt
  loc_16DE2E9:                 var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE2F1:                 var_1C4 = CVar(CLng(3)) 'Long
  loc_16DE321:                 var_13C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_16DE328:                 LateIdCallSt
  loc_16DE35B:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE363:                 var_194 = CVar(CLng(4)) 'Long
  loc_16DE36D:                 var_12C = CVar(CStr(var_A8)) 'String
  loc_16DE374:                 LateIdCallSt
  loc_16DE39F:                 var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE3A7:                 var_1C4 = CVar(CLng(5)) 'Long
  loc_16DE3D7:                 var_13C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_16DE3DE:                 LateIdCallSt
  loc_16DE43C:                 var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE48F:                 LateIdCallSt
  loc_16DE4CC:                 var_15C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE4F0:                 var_11C = var_8C.Fields.Item("Sundry")
  loc_16DE501:                 var_13C = CVar(Proc_6_38_E68A98(CVar(var_11C), CVar(CLng(7)), "Yes", var_118, CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))), CVar(CLng(6)), var_204)) 'String
  loc_16DE508:                 LateIdCallSt
  loc_16DE539:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE554:                 Set var_10C = Me.Txt
  loc_16DE55A:                 Call 0.Method_Proc_224_47_16DE6A80 (CInt(4), var_11C, var_E4, CVar(CLng(8)), "Sundry", var_118, var_13C)
  loc_16DE562:                 var_118 = var_11C.Tag
  loc_16DE56A:                 var_12C = CVar(var_E4) 'String
  loc_16DE571:                 LateIdCallSt
  loc_16DE589:               End If
  loc_16DE5A2:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE5AA:               var_194 = CVar(CLng(6)) 'Long
  loc_16DE5CF:               var_9C = (var_9C + Val(CStr(var_118.TextMatrix))))
  loc_16DE5F8:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16DE600:               var_194 = CVar(CLng(6)) 'Long
  loc_16DE625:               var_94 = (var_94 + Val(CStr(var_118.TextMatrix))))
  loc_16DE63C:               var_B0 = (var_B0 + var_D0)
  loc_16DE642:               var_B8 = var_D0
  loc_16DE645:             End If
  loc_16DE645:           End If
  loc_16DE645:         End If
  loc_16DE645:       End If
  loc_16DE645:     End If
  loc_16DE64B:     var_86 = (var_86 + 1)
  loc_16DE650:     Set var_118 = Nothing 
  loc_16DE666:     Me.TxtTaxAmt.Text = CStr(var_9C)
  loc_16DE674:     var_8C.MoveNext
  loc_16DE679:     GoTo loc_16DCCBC
  loc_16DE67C:   End If
  loc_16DE681:   Set var_8C = Nothing
  loc_16DE689:   Set var_C4 = Nothing
  loc_16DE691:   Set var_C0 = Nothing
  loc_16DE699:   Set var_D8 = Nothing
  loc_16DE6A1:   Set var_E0 = Nothing
  loc_16DE6A4: End If
  loc_16DE6A4: Exit Sub
End Sub

Public Sub Proc_224_48_14A7D44(arg_C, arg_10) '14A7D44
  'Data Table: 4FE238
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_11C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_12C As Variant
  Dim var_140 As Variant
  Dim var_B8 As String
  Dim var_174 As String
  Dim unk_4FE23C As Connection15
  Dim var_8C As Recordset15
  Dim var_188 As MSHFlexGrid
  Dim var_1B0 As Double
  Dim var_1A0 As TextBox
  Dim var_8E As Integer
  Dim var_1A8 As Double
  loc_14A70AB: var_A8 = CLng(Me.FGrid.Col)
  loc_14A70BB: If (var_A8 = CLng(1)) Then
  loc_14A710C:   Set var_94 = Me.TxtGrid
  loc_14A7112:   Call 0.Method_Proc_224_48_14A7D440 (arg_C, var_B4, var_B8)
  loc_14A711A:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_14A7132:   If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_14A7148:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7150:     var_E8 = CVar(CLng(1)) 'Long
  loc_14A7155:     var_108 = vbNullString
  loc_14A715F:     Set var_B4 = Me.FGrid
  loc_14A7165:     LateIdCallSt
  loc_14A718A:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7192:     var_E8 = CVar(CLng(9)) 'Long
  loc_14A7197:     var_108 = vbNullString
  loc_14A71A1:     Set var_B4 = Me.FGrid
  loc_14A71A7:     LateIdCallSt
  loc_14A71CC:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A71D4:     var_E8 = CVar(CLng(&HA)) 'Long
  loc_14A71D9:     var_108 = vbNullString
  loc_14A71E3:     Set var_B4 = Me.FGrid
  loc_14A71E9:     LateIdCallSt
  loc_14A720E:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7216:     var_E8 = CVar(CLng(2)) 'Long
  loc_14A721B:     var_108 = vbNullString
  loc_14A7225:     Set var_B4 = Me.FGrid
  loc_14A722B:     LateIdCallSt
  loc_14A7250:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7258:     var_E8 = CVar(CLng(7)) 'Long
  loc_14A725D:     var_108 = vbNullString
  loc_14A7267:     Set var_B4 = Me.FGrid
  loc_14A726D:     LateIdCallSt
  loc_14A7292:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A729A:     var_E8 = CVar(CLng(6)) 'Long
  loc_14A729F:     var_108 = vbNullString
  loc_14A72A9:     Set var_B4 = Me.FGrid
  loc_14A72AF:     LateIdCallSt
  loc_14A72D4:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A72DC:     var_E8 = CVar(CLng(5)) 'Long
  loc_14A72E1:     var_108 = vbNullString
  loc_14A72EB:     Set var_B4 = Me.FGrid
  loc_14A72F1:     LateIdCallSt
  loc_14A7316:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A731E:     var_E8 = CVar(CLng(3)) 'Long
  loc_14A7323:     var_108 = vbNullString
  loc_14A732D:     Set var_B4 = Me.FGrid
  loc_14A7333:     LateIdCallSt
  loc_14A7358:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7360:     var_E8 = CVar(CLng(4)) 'Long
  loc_14A7365:     var_108 = vbNullString
  loc_14A736F:     Set var_B4 = Me.FGrid
  loc_14A7375:     LateIdCallSt
  loc_14A738A:   Else
  loc_14A739D:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A73A5:     var_F8 = CVar(CLng(1)) 'Long
  loc_14A73D8:     var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_14A73E0:     Set var_140 = Me.FGrid
  loc_14A73E6:     LateIdCallSt
  loc_14A7415:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A741D:     var_F8 = CVar(CLng(9)) 'Long
  loc_14A7450:     var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_14A7458:     Set var_140 = Me.FGrid
  loc_14A745E:     LateIdCallSt
  loc_14A748D:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7495:     var_F8 = CVar(CLng(&HA)) 'Long
  loc_14A74C8:     var_13C = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_14A74D0:     Set var_140 = Me.FGrid
  loc_14A74D6:     LateIdCallSt
  loc_14A7505:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A750D:     var_F8 = CVar(CLng(2)) 'Long
  loc_14A7540:     var_13C = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_14A7548:     Set var_140 = Me.FGrid
  loc_14A754E:     LateIdCallSt
  loc_14A759C:     var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A75A4:     var_108 = CVar(CLng(7)) 'Long
  loc_14A75D1:     var_160 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_14A75D9:     Set var_140 = Me.FGrid
  loc_14A75DF:     LateIdCallSt
  loc_14A7610:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7618:     var_F8 = CVar(CLng(4)) 'Long
  loc_14A764B:     var_13C = CVar(CStr(Me.Fields.Item("ConvRatio").Value)) 'String
  loc_14A7653:     Set var_140 = Me.FGrid
  loc_14A7659:     LateIdCallSt
  loc_14A7688:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7690:     var_F8 = CVar(CLng(6)) 'Long
  loc_14A76C3:     var_13C = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_14A76CB:     Set var_140 = Me.FGrid
  loc_14A76D1:     LateIdCallSt
  loc_14A76ED:   End If
  loc_14A7717:   var_12C = Me.FGrid.TextMatrix)
  loc_14A7731:   Set var_11C = Me.Txt
  loc_14A7737:   Call 0.Method_Proc_224_48_14A7D440 (CInt(3), var_140, var_178, var_12C, CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)), var_140)
  loc_14A775C:   var_174 = "SELECT RATE FROM ITEMRATE WHERE ITEMCODE='" & CStr(var_12C)
  loc_14A777A:   unk_4FE23C.Execute var_174 & "' AND RestCode='" & var_178 & "'", var_140.Tag, -1
  loc_14A7785:   Set var_8C = var_188
  loc_14A77C1:   If (var_8C.RecordCount > 0) Then
  loc_14A77D7:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A77DF:     var_F8 = CVar(CLng(7)) 'Long
  loc_14A780A:     Proc_6_47_EF59D0(var_12C, CVar(var_8C.Fields.Item("Rate")), var_F8, var_D8, var_188, var_F8)
  loc_14A7821:     LateIdCallSt
  loc_14A783D:     Call Proc_224_56_F73060(Me.FGrid, CVar(CStr(var_12C)), var_D8, Me.FGrid)
  loc_14A7842:   End If
  loc_14A7866:   Set var_B4 = Me.FGrid
  loc_14A786C:   var_12C = var_B4.TextMatrix)
  loc_14A78BD:   var_B8 = CStr(Me.FGrid.TextMatrix))
  loc_14A78C5:   var_1B0 = Val(var_B8)
  loc_14A78D6:   Set var_19C = Me.Txt
  loc_14A78DC:   Call 0.Method_Proc_224_48_14A7D440 (CInt(3), var_1A0, var_174, var_1B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_14A7947:   Me.LblCurStockStr.Caption = global_96
  loc_14A794F:   Call Proc_224_46_1462124(Proc_96_27_11F27DC(CStr(var_1A0.Tag), var_1B0, MemVar_1F92070, var_174, global_96), CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)))
  loc_14A7957: Else
  loc_14A795E:   If (var_A8 = CLng(7)) Then
  loc_14A796D:     Set var_94 = Me.TxtGrid
  loc_14A7973:     Call 0.Method_Proc_224_48_14A7D440 (0, var_B4, var_B8)
  loc_14A797B:     var_13C = var_B4.Text
  loc_14A7988:     var_1A8 = Val(var_B8)
  loc_14A79F1:     LateIdCallSt
  loc_14A7A18:     Call Proc_224_56_F73060(Me.FGrid, CVar(CStr(Format(CVar(var_1A8), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)))
  loc_14A7A1D:     Call Proc_224_46_1462124(CVar(CLng(Me.FGrid.Row)), var_1A8)
  loc_14A7A25:   Else
  loc_14A7A2C:     If Not (var_A8 = CLng(3)) Then
  loc_14A7A36:       If (var_A8 = CLng(4)) Then
  loc_14A7A39:       End If
  loc_14A7A4C:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A7A54:       var_E8 = CVar(CLng(9)) 'Long
  loc_14A7A5D:       Set var_B4 = Me.FGrid
  loc_14A7A63:       var_12C = var_B4.TextMatrix)
  loc_14A7A79:       var_13C = Me.FGrid.Row
  loc_14A7A91:       var_150 = Me.FGrid.Col
  loc_14A7AB4:       var_B8 = CStr(Me.FGrid.TextMatrix))
  loc_14A7ABC:       var_1B0 = Val(var_B8)
  loc_14A7ACD:       Set var_19C = Me.Txt
  loc_14A7AD3:       Call 0.Method_Proc_224_48_14A7D440 (CInt(3), var_1A0, var_174, var_1B0, CVar(CLng(var_150)), CVar(CLng(var_13C)))
  loc_14A7ADB:       var_12C = var_1A0.Tag
  loc_14A7B04:       var_8E = Proc_96_27_11F27DC(CStr(var_12C), var_1B0, MemVar_1F92070, var_174, global_96)
  loc_14A7B3E:       Me.LblCurStockStr.Caption = global_96
  loc_14A7B4C:       If (var_8E = 0) Then
  loc_14A7B7E:         If (MsgBox("Do you Want to Proceed with Negative Stock ?", &H114, var_12C, var_13C, var_150) = 7) Then
  loc_14A7B86:           Proc_224_48_14A7D44 = 0
  loc_14A7B8C:         End If
  loc_14A7B8C:       End If
  loc_14A7BA9:       If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_14A7BB8:         Set var_94 = Me.TxtGrid
  loc_14A7BBE:         Call 0.Method_Proc_224_48_14A7D440 (0, var_B4, var_B8, var_8E)
  loc_14A7BC6:         var_E8 = var_B4.Text
  loc_14A7BD3:         var_1A8 = Val(var_B8)
  loc_14A7BEB:         If (global_100 <> CDbl(var_1A8)) Then
  loc_14A7C1D:           If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_12C, var_13C, var_150) = 7) Then
  loc_14A7C25:             Proc_224_48_14A7D44 = 0
  loc_14A7C2B:           End If
  loc_14A7C2B:         End If
  loc_14A7C2B:       End If
  loc_14A7C37:       Set var_94 = Me.TxtGrid
  loc_14A7C3D:       Call 0.Method_Proc_224_48_14A7D440 (0, var_B4, var_B8, var_1A8)
  loc_14A7C45:       var_C8 = var_B4.Text
  loc_14A7C52:       var_1A8 = Val(var_B8)
  loc_14A7CBB:       LateIdCallSt
  loc_14A7CE2:       Call Proc_224_56_F73060(Me.FGrid, CVar(CStr(Format(CVar(var_1A8), "0.000"))), 1, 1, CVar(CLng(Me.FGrid.Col)))
  loc_14A7CE7:       Call Proc_224_46_1462124(CVar(CLng(Me.FGrid.Row)), var_1A8)
  loc_14A7CEC:     End If
  loc_14A7CEC:   End If
  loc_14A7CEC: End If
  loc_14A7CF7: If (arg_10 = 0) Then
  loc_14A7CFE:   Set var_94 = Me.FGrid
  loc_14A7D1A:   Set var_94 = Me.TxtGrid
  loc_14A7D20:   Call 0.Method_Proc_224_48_14A7D440 (0, var_B4, 0, FGrid.DispID_8001)
  loc_14A7D28:   var_B4.Visible = &HFF
  loc_14A7D34: End If
  loc_14A7D39: Set var_8C = Nothing
  loc_14A7D3C: Proc_224_48_14A7D44 = var_F8
End Sub

Public Sub Proc_224_49_1016874
  'Data Table: 4FE238
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_E0 As Variant
  loc_101665E: Set var_8C = Me.Txt
  loc_1016664: Call 0.Method_Proc_224_49_1016874C (var_8E, var_86)
  loc_1016674: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_101668A:   Set var_8C = Me.Txt
  loc_1016690:   Call 0.Method_Proc_224_49_10168740 (CInt(var_86), var_98)
  loc_1016698:   var_98.Text = vbNullString
  loc_10166B4:   Set var_8C = Me.Txt
  loc_10166BA:   Call 0.Method_Proc_224_49_10168740 (CInt(var_86), var_98)
  loc_10166C2:   var_98.Tag = vbNullString
  loc_10166D1: Next var_92 'Byte
  loc_10166E4: Me.LblCurStockStr.Caption = vbNullString
  loc_10166F9: Me.LblVPrefix.Caption = vbNullString
  loc_101670F: Set var_8C = Me.LblCap
  loc_1016715: Call 0.Method_Proc_224_49_10168748 (var_8E, var_86)
  loc_1016722: For var_9C =  To CByte(var_8E): CByte(2) = var_9C 'Byte
  loc_1016735:   Set var_8C = Me.LblCap
  loc_101673B:   Call 0.Method_Proc_224_49_10168740 (CInt(var_86))
  loc_101674C:   Me.LblCap.Unload var_98
  loc_1016765:   Set var_8C = Me.LblDummy
  loc_101676B:   Call 0.Method_Proc_224_49_10168740 (CInt(var_86), var_98)
  loc_101677C:   Me.LblDummy.Unload var_98
  loc_1016795:   Set var_8C = Me.TxtGt
  loc_101679B:   Call 0.Method_Proc_224_49_10168740 (CInt(var_86), var_98)
  loc_10167AC:   Me.TxtGt.Unload var_98
  loc_10167BB: Next var_9C 'Byte
  loc_10167CD: Set var_8C = Me.TxtGt
  loc_10167D3: Call 0.Method_Proc_224_49_10168740 (1, var_98)
  loc_10167DB: var_98.Text = "0.00"
  loc_10167FA: Me.FGrid.Rows = 1
  loc_1016817: var_E0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_101681F: Set var_98 = Me.FGrid
  loc_101684E: Me.FGrid.FixedRows = 1
  loc_1016869: Me.FGCat.Rows = 0
  loc_1016871: Exit Sub
End Sub

Public Sub Proc_224_50_1671E24
  'Data Table: 4FE238
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_4FE23C As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_12C As Variant
  Dim var_128 As Variant
  Dim var_130 As String
  Dim var_94 As Recordset15
  Dim var_90 As Recordset15
  Dim var_8A As Integer
  Dim var_114 As Variant
  Dim var_178 As Variant
  Dim var_124 As Variant
  Dim var_1B0 As Variant
  Dim var_1DC As Variant
  loc_16706C4: On Error Goto loc_1671E1E
  loc_16706DE: If (Me.RecordCount > 0) Then
  loc_16706EE:   Me.LblCurStockStr.Caption = vbNullString
  loc_1670703:   var_D0 = "Select Distinct SH.Docid,SH.SNo,SH.Vtype,SH.Vno,SH.Vdate,SH.VPrefix,SH.Rate,SH.Amount,SH.GodownCode,SH.Item,SH.QtyRec,SH.Unit,SH.RECDQty,SH.RECDUnit,SH.ConvRatio,SH.ItemRestCode,I.Name As ItemName From Stock SH Left Join ItemMast I On I.Code=SH.Item And I.ItemType='Store' where DocID='"
  loc_167074C:   unk_4FE23C.Execute CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "' Order By SH.SNo"), var_124, -1
  loc_1670757:   Set var_88 = var_128
  loc_16707A7:   Set var_128 = Me.Txt
  loc_16707AD:   Call 0.Method_Proc_224_50_1671E240 (CInt(0), var_12C)
  loc_16707B5:   var_12C.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")))
  loc_16707FE:   Me.LblVPrefix.Caption = Proc_6_38_E68A98(CVar(var_88.Fields.Item("vPrefix")))
  loc_1670846:   Set var_128 = Me.Txt
  loc_167084C:   Call 0.Method_Proc_224_50_1671E240 (CInt(1), var_12C)
  loc_1670854:   var_12C.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("VNo")))
  loc_167087F:   var_B0 = var_88.Fields.Item("VDate")
  loc_1670890:   var_104 = Proc_6_38_E68A98(CVar(var_B0))
  loc_167089E:   Set var_128 = Me.Txt
  loc_16708A4:   Call 0.Method_Proc_224_50_1671E240 (CInt(2), var_12C)
  loc_16708AC:   var_12C.Text = var_104
  loc_16708DE:   Set var_9C = Me.Txt
  loc_16708E4:   Call 0.Method_Proc_224_50_1671E240 (CInt(1), var_B0, var_104, "Select VTYPE,GodownCode From Stock Where VtYpe='KMISS' and VNo=")
  loc_16708EC:   var_C0 = var_B0.Text
  loc_16708F5:   var_130 = -1 & var_104
  loc_1670906:   Set var_128 = Me.LblVPrefix
  loc_1670925:   unk_4FE23C.Execute var_130 & " And VPrefix=" & var_128.Caption & vbNullString, var_12C, var_128
  loc_1670930:   Set var_94 = var_12C
  loc_1670964:   If (var_94.RecordCount > 0) Then
  loc_16709A3:     If (var_94.Fields.Item("vType").Value = "KMISS") Then
  loc_16709BD:       var_B0 = var_94.Fields.Item("Godowncode")
  loc_16709CE:       var_104 = Proc_6_38_E68A98(CVar(var_B0))
  loc_16709DC:       Set var_128 = Me.Txt
  loc_16709E2:       Call 0.Method_Proc_224_50_1671E240 (CInt(3), var_12C)
  loc_16709EA:       var_12C.Tag = var_104
  loc_1670A1C:       Set var_9C = Me.Txt
  loc_1670A22:       Call 0.Method_Proc_224_50_1671E240 (CInt(3), var_B0, var_104, "Select Name From GodownMast Where Code='")
  loc_1670A2A:       var_C0 = var_B0.Tag
  loc_1670A33:       var_130 = -1 & var_104
  loc_1670A43:       unk_4FE23C.Execute var_130 & "'", var_128, 
  loc_1670A4E:       Set var_90 = var_128
  loc_1670A7A:       If (var_90.RecordCount > 0) Then
  loc_1670AB3:         Set var_128 = Me.Txt
  loc_1670AB9:         Call 0.Method_Proc_224_50_1671E240 (CInt(3), var_12C)
  loc_1670AC1:         var_12C.Text = Proc_6_38_E68A98(CVar(var_90.Fields.Item("Name")))
  loc_1670AD5:       End If
  loc_1670AD5:     End If
  loc_1670AD5:   End If
  loc_1670B11:   If (var_88.Fields.Item("vType").Value = "KMREC") Then
  loc_1670B2B:     var_B0 = var_88.Fields.Item("Godowncode")
  loc_1670B3C:     var_104 = Proc_6_38_E68A98(CVar(var_B0))
  loc_1670B4A:     Set var_128 = Me.Txt
  loc_1670B50:     Call 0.Method_Proc_224_50_1671E240 (CInt(4), var_12C)
  loc_1670B58:     var_12C.Tag = var_104
  loc_1670B8A:     Set var_9C = Me.Txt
  loc_1670B90:     Call 0.Method_Proc_224_50_1671E240 (CInt(4), var_B0, var_104, "Select Name From GodownMast Where Code='")
  loc_1670B98:     var_C0 = var_B0.Tag
  loc_1670BA1:     var_130 = -1 & var_104
  loc_1670BB1:     unk_4FE23C.Execute var_130 & "'", var_128, 
  loc_1670BBC:     Set var_90 = var_128
  loc_1670BE8:     If (var_90.RecordCount > 0) Then
  loc_1670C21:       Set var_128 = Me.Txt
  loc_1670C27:       Call 0.Method_Proc_224_50_1671E240 (CInt(4), var_12C)
  loc_1670C2F:       var_12C.Text = Proc_6_38_E68A98(CVar(var_90.Fields.Item("Name")))
  loc_1670C43:     End If
  loc_1670C43:   End If
  loc_1670C56:   Me.FGrid.Rows = 1
  loc_1670C60:   var_8A = 1
  loc_1670C63:   ' Referenced from: 16710E8
  loc_1670C72:   If Not(var_88.EOF) Then
  loc_1670C75:     var_AC = vbNullString
  loc_1670C7F:     Set var_9C = Me.FGrid
  loc_1670C94:     Set var_148 = Me.FGrid
  loc_1670CD0:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SNo")), CVar(CLng(0)), CVar(CLng(var_8A)))) 'String
  loc_1670CD7:     LateIdCallSt
  loc_1670D22:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8A)), var_148)) 'String
  loc_1670D29:     LateIdCallSt
  loc_1670D74:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RecdUnit")), CVar(CLng(2)), CVar(CLng(var_8A)), var_148, var_E0)) 'String
  loc_1670D7B:     LateIdCallSt
  loc_1670DB3:     Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("RecdQty")), var_148, var_E0)
  loc_1670DBC:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1670DF4:     LateIdCallSt
  loc_1670E45:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_8A)), var_148, CVar(CStr(Format(var_E0, "0.000"))), 1, 1)) 'String
  loc_1670E4C:     LateIdCallSt
  loc_1670E84:     Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("QtyRec")), var_148, var_E0, CVar(CLng(3)))
  loc_1670E8D:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1670EC5:     LateIdCallSt
  loc_1670F03:     Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("Rate")), var_148, CVar(CStr(Format(var_E0, "0.000"))), 1, 1, CVar(CLng(5)))
  loc_1670F0C:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1670F44:     LateIdCallSt
  loc_1670F82:     Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("Amount")), var_148, CVar(CStr(Format(var_E0, "0.00"))), 1, 1, CVar(CLng(7)))
  loc_1670F8B:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1670FBC:     var_178 = CVar(CStr(Format(var_E0, "0.00"))) 'String
  loc_1670FC3:     LateIdCallSt
  loc_1671014:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Item")), CVar(CLng(9)), CVar(CLng(var_8A)), var_148, var_178, 1, 1)) 'String
  loc_167101B:     LateIdCallSt
  loc_1671066:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemRestcode")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_148, var_E0, CVar(CLng(8)))) 'String
  loc_167106D:     LateIdCallSt
  loc_16710B8:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConvRatio")), CVar(CLng(4)), CVar(CLng(var_8A)), var_148, var_E0)) 'String
  loc_16710BF:     LateIdCallSt
  loc_16710D3:     Set var_148 = Nothing 
  loc_16710DD:     var_8A = (var_8A + 1)
  loc_16710E3:     var_88.MoveNext
  loc_16710E8:     GoTo loc_1670C63
  loc_16710EB:   End If
  loc_16710FE:   Me.FGrid.FixedRows = 1
  loc_167111A:   var_E0 = CVar("SELECT S.Sno, S.SNo1, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,RM.Sundry " & " FROM TranTaxDetail AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_1671161:   unk_4FE23C.Execute CStr(var_E0 & Me.Fields.Item("SearchCode").Value & "'"), var_178, -1
  loc_167116C:   Set var_88 = var_128
  loc_167119B:   Me.FGCat.Rows = 1
  loc_16711B7:   If (var_88.RecordCount > 0) Then
  loc_16711BA:     ' Referenced from: 1671582
  loc_16711C0:     var_142 = var_88.EOF
  loc_16711C9:     If Not(var_142) Then
  loc_16711D0:       Set var_18C = Me.FGCat
  loc_16711D3:       var_AC = vbNullString
  loc_16711FD:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1671205:       var_114 = CVar(CLng(0)) 'Long
  loc_1671235:       var_100 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_167123C:       LateIdCallSt
  loc_167126F:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1671277:       var_114 = CVar(CLng(1)) 'Long
  loc_16712A7:       var_100 = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_16712AE:       LateIdCallSt
  loc_16712E1:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16712E9:       var_114 = CVar(CLng(2)) 'Long
  loc_1671319:       var_100 = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_1671320:       LateIdCallSt
  loc_1671353:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_167135B:       var_114 = CVar(CLng(3)) 'Long
  loc_167138B:       var_100 = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_1671392:       LateIdCallSt
  loc_16713C5:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16713CD:       var_114 = CVar(CLng(4)) 'Long
  loc_16713FD:       var_100 = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_1671404:       LateIdCallSt
  loc_1671437:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_167143F:       var_114 = CVar(CLng(5)) 'Long
  loc_167146F:       var_100 = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_1671476:       LateIdCallSt
  loc_16714A9:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16714B1:       var_114 = CVar(CLng(6)) 'Long
  loc_16714E1:       var_100 = CVar(CStr(var_88.Fields.Item("TaxAmt").Value)) 'String
  loc_16714E8:       LateIdCallSt
  loc_1671506:       Set var_128 = Me.FGCat
  loc_167151B:       var_D0 = CVar((CLng(var_128.Rows) - 1)) 'Long
  loc_1671523:       var_114 = CVar(CLng(7)) 'Long
  loc_1671542:       var_B0 = var_88.Fields.Item("Sundry")
  loc_1671553:       var_100 = CVar(CStr(var_B0.Value)) 'String
  loc_167155A:       LateIdCallSt
  loc_1671576:       Set var_18C = Nothing 
  loc_167157D:       var_88.MoveNext
  loc_1671582:       GoTo loc_16711BA
  loc_1671585:     End If
  loc_1671585:   End If
  loc_1671591:   Set var_9C = Me.LblCap
  loc_1671597:   Call 0.Method_Proc_224_50_1671E248 (var_142, var_8A, 2, var_18C, var_100, var_114, "'")
  loc_16715A2:   For var_190 = var_100 To var_142: var_18C = var_190 'Integer
  loc_16715B2:     Set var_9C = Me.LblCap
  loc_16715B8:     Call 0.Method_Proc_224_50_1671E240 (var_8A, var_B0, var_100, var_114)
  loc_16715C9:     Me.LblCap.Unload var_B0
  loc_16715DF:     Set var_9C = Me.LblDummy
  loc_16715E5:     Call 0.Method_Proc_224_50_1671E240 (var_8A, var_B0, "'")
  loc_16715F6:     Me.LblDummy.Unload var_B0
  loc_167160C:     Set var_9C = Me.TxtGt
  loc_1671612:     Call 0.Method_Proc_224_50_1671E240 (var_8A, var_B0, var_18C)
  loc_1671623:     Me.TxtGt.Unload var_B0
  loc_1671632:   Next var_190 'Integer
  loc_1671666:   var_B0 = Me.Fields.Item("SearchCode")
  loc_1671676:   var_E0 = "Select R.Name As SunName,TS.* From TranSunDetail TS Left Join RevMast R On TS.SunCode=R.Code Where TS.DocId='" & var_B0.Value 
  loc_16716A5:   var_1B0 = var_E0 & "' And TS.Site_Code='" & CVar(MemVar_1F92070) & "' And (TS.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or TS.LogSite_Code='HO') Order By Sno" 
  loc_16716B3:   unk_4FE23C.Execute CStr(var_1B0), var_1D0, -1
  loc_16716BE:   Set var_88 = var_128
  loc_16716F4:   If (var_88.RecordCount > 0) Then
  loc_16716F9:     var_8A = 1
  loc_16716FC:     ' Referenced from: 1671DF5
  loc_1671702:     var_142 = var_88.EOF
  loc_167170B:     If Not(var_142) Then
  loc_1671718:       Set var_9C = Me.LblDummy
  loc_167171E:       Call 0.Method_Proc_224_50_1671E248 (var_142, var_8A)
  loc_167172A:       If (var_8A > var_142) Then
  loc_1671737:         Set var_9C = Me.LblDummy
  loc_167173D:         Call 0.Method_Proc_224_50_1671E240 (var_8A, var_B0)
  loc_167174E:         Me.LblDummy.Load var_B0
  loc_1671766:         Set var_9C = Me.LblDummy
  loc_167176C:         Call 0.Method_Proc_224_50_1671E240 (var_8A, var_B0)
  loc_1671774:         var_B0.Visible = False
  loc_1671780:       End If
  loc_167178A:       Set var_9C = Me.LblCap
  loc_1671790:       Call 0.Method_Proc_224_50_1671E248 (var_142, var_8A)
  loc_167179C:       If (var_128 > var_142) Then
  loc_16717A9:         Set var_9C = Me.LblCap
  loc_16717AF:         Call 0.Method_Proc_224_50_1671E240 (var_8A)
  loc_16717C0:         Me.LblCap.Load var_B0
  loc_16717D9:         Set var_128 = Me.LblCap
  loc_16717DF:         Call 0.Method_Proc_224_50_1671E240 (var_8A, var_12C)
  loc_16717FC:         Set var_9C = Me.LblCap
  loc_1671802:         Call 0.Method_Proc_224_50_1671E240 ((var_8A - 1), var_B0)
  loc_1671825:         Set var_1D8 = Me.LblCap
  loc_167182B:         Call 0.Method_Proc_224_50_1671E240 (var_8A, var_1DC)
  loc_1671833:         var_1DC.Top = ((var_B0.Top + var_12C.Height) + CDbl(&HF))
  loc_1671847:       End If
  loc_1671851:       Set var_9C = Me.TxtGt
  loc_1671857:       Call 0.Method_Proc_224_50_1671E248 (var_142, var_8A)
  loc_1671863:       If (var_B0 > var_142) Then
  loc_1671870:         Set var_9C = Me.TxtGt
  loc_1671876:         Call 0.Method_Proc_224_50_1671E240 (var_8A)
  loc_1671887:         Me.TxtGt.Load var_B0
  loc_16718A0:         Set var_128 = Me.TxtGt
  loc_16718A6:         Call 0.Method_Proc_224_50_1671E240 (var_8A, var_12C)
  loc_16718C3:         Set var_9C = Me.TxtGt
  loc_16718C9:         Call 0.Method_Proc_224_50_1671E240 ((var_8A - 1), var_B0)
  loc_16718EC:         Set var_1D8 = Me.TxtGt
  loc_16718F2:         Call 0.Method_Proc_224_50_1671E240 (var_8A, var_1DC)
  loc_16718FA:         var_1DC.Top = ((var_B0.Top + var_12C.Height) + CDbl(&HF))
  loc_167190E:       End If
  loc_1671952:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("SunCode"))) = MemVar_1F92070 & "TOT") Then
  loc_167196C:         var_B0 = var_88.Fields.Item("SunCode")
  loc_167198A:         Set var_128 = Me.LblCap
  loc_1671990:         Call 0.Method_Proc_224_50_1671E240 (var_8A, var_12C)
  loc_1671998:         var_12C.Tag = Proc_6_38_E68A98(CVar(var_B0))
  loc_16719DA:         Set var_9C = Me.LblCap
  loc_16719E0:         Call 0.Method_Proc_224_50_1671E240 (var_8A, var_B0)
  loc_16719E8:         var_B0.Caption = CStr(StrConv("Total", 3, 0))
  loc_1671A5D:         Set var_128 = Me.TxtGt
  loc_1671A63:         Call 0.Method_Proc_224_50_1671E240 (var_8A, var_12C, CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SunAmt")))), "0.00")))
  loc_1671A6B:         var_12C.Text = 1
  loc_1671A8E:       Else
  loc_1671AD2:         If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("SunCode")), 1) = MemVar_1F92070 & "NET") Then
  loc_1671AEC:           var_B0 = var_88.Fields.Item("SunCode")
  loc_1671B0A:           Set var_128 = Me.LblCap
  loc_1671B10:           Call 0.Method_Proc_224_50_1671E240 (var_8A, var_12C)
  loc_1671B18:           var_12C.Tag = Proc_6_38_E68A98(CVar(var_B0))
  loc_1671B5A:           Set var_9C = Me.LblCap
  loc_1671B60:           Call 0.Method_Proc_224_50_1671E240 (var_8A, var_B0)
  loc_1671B68:           var_B0.Caption = CStr(StrConv("Net Amount", 3, 0))
  loc_1671BDD:           Set var_128 = Me.TxtGt
  loc_1671BE3:           Call 0.Method_Proc_224_50_1671E240 (var_8A, var_12C, CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SunAmt")))), "0.00")))
  loc_1671BEB:           var_12C.Text = 1
  loc_1671C0E:         Else
  loc_1671C43:           Set var_128 = Me.LblCap
  loc_1671C49:           Call 0.Method_Proc_224_50_1671E240 (var_8A, var_12C)
  loc_1671C51:           var_12C.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("SunCode")), 1)
  loc_1671CB9:           Set var_128 = Me.LblCap
  loc_1671CBF:           Call 0.Method_Proc_224_50_1671E240 (var_8A, var_12C)
  loc_1671CC7:           var_12C.Caption = CStr(StrConv(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SunName")))), 3, 0))
  loc_1671CFC:           var_B0 = var_88.Fields.Item("SunAmt")
  loc_1671D44:           Set var_128 = Me.TxtGt
  loc_1671D4A:           Call 0.Method_Proc_224_50_1671E240 (var_8A, var_12C, CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B0))), "0.00")))
  loc_1671D52:           var_12C.Text = 1
  loc_1671D72:         End If
  loc_1671D72:       End If
  loc_1671D7E:       Set var_9C = Me.LblDummy
  loc_1671D84:       Call 0.Method_Proc_224_50_1671E240 (var_8A, var_B0, 0)
  loc_1671D8C:       var_B0.Visible = True
  loc_1671DA4:       Set var_9C = Me.LblCap
  loc_1671DAA:       Call 0.Method_Proc_224_50_1671E240 (var_8A, var_B0)
  loc_1671DB2:       var_B0.Visible = True
  loc_1671DCA:       Set var_9C = Me.TxtGt
  loc_1671DD0:       Call 0.Method_Proc_224_50_1671E240 (var_8A, var_B0)
  loc_1671DD8:       var_B0.Visible = True
  loc_1671DEA:       var_8A = (var_8A + 1)
  loc_1671DF0:       var_88.MoveNext
  loc_1671DF5:       GoTo loc_16716FC
  loc_1671DF8:     End If
  loc_1671DF8:   End If
  loc_1671DFB: Else
  loc_1671DFB:   Call Proc_224_49_1016874(var_8A)
  loc_1671E00: End If
  loc_1671E00: Call Proc_224_52_EF65AC(var_B0)
  loc_1671E0A: Set var_88 = Nothing
  loc_1671E12: Set var_90 = Nothing
  loc_1671E1A: Set var_94 = Nothing
  loc_1671E1D: Exit Sub
  loc_1671E1E: ' Referenced from: 16706C4
  loc_1671E1E: Proc_6_60_E62BC4()
  loc_1671E23: Exit Sub
End Sub

Public Sub Proc_224_51_EC7ACC(arg_C) 'EC7ACC
  'Data Table: 4FE238
  Dim var_98 As TextBox
  loc_EC7A2E: Set var_8C = Me.Txt
  loc_EC7A34: Call 0.Method_Proc_224_51_EC7ACCC (var_8E, var_86)
  loc_EC7A44: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EC7A5A:   Set var_8C = Me.Txt
  loc_EC7A60:   Call 0.Method_Proc_224_51_EC7ACC0 (CInt(var_86), var_98)
  loc_EC7A68:   var_98.Enabled = arg_C
  loc_EC7A77: Next var_92 'Byte
  loc_EC7A8A: Set var_8C = Me.Txt
  loc_EC7A90: Call 0.Method_Proc_224_51_EC7ACC0 (CInt(0), var_98)
  loc_EC7A98: var_98.Enabled = False
  loc_EC7AB1: Set var_8C = Me.Txt
  loc_EC7AB7: Call 0.Method_Proc_224_51_EC7ACC0 (CInt(1), var_98)
  loc_EC7ABF: var_98.Enabled = False
  loc_EC7ACB: Exit Sub
End Sub

Public Sub Proc_224_52_EF65AC
  'Data Table: 4FE238
  loc_EF64EC: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EF64FE:   Me.DGDepart.Visible = False
  loc_EF6506: End If
  loc_EF6522: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF6534:   Me.DGItem.Visible = False
  loc_EF653C: End If
  loc_EF6558: If (CBool(Me.DGToDepart.Visible) = &HFF) Then
  loc_EF656A:   Me.DGToDepart.Visible = False
  loc_EF6572: End If
  loc_EF658E: If (CBool(Me.DGMemName.Visible) = &HFF) Then
  loc_EF65A0:   Me.DGMemName.Visible = False
  loc_EF65A8: End If
  loc_EF65A8: Exit Sub
End Sub

Public Sub Proc_224_53_115ACB8
  'Data Table: 4FE238
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_115A950: var_90 = global_68
  loc_115A967: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_115A98A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115A998: Set var_B4 = Me.Txt
  loc_115A99E: Call 0.Method_Proc_224_53_115ACB80 (CInt(2), var_B8, var_E8)
  loc_115A9AD: Proc_6_7_F25D88(var_D8, CVar(var_B8), var_13C)
  loc_115A9B5: var_F8 = -1 & var_D8 
  loc_115A9C9: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115A9D4: Set var_8C = var_140
  loc_115AA10: If (var_8C.RecordCount <= 0) Then
  loc_115AA2C:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115AA3F:   var_88 = vbNullString
  loc_115AA42:   Proc_224_53_115ACB8 = 
  loc_115AA48: End If
  loc_115AA5C: If (var_8C.RecordCount > 0) Then
  loc_115AA9B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115AAB8:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115AAC9:     var_9C = CStr(var_B8.Value)
  loc_115AAE4:     Set var_B4 = Me.Txt
  loc_115AAEA:     Call 0.Method_Proc_224_53_115ACB80 (CInt(1), var_B8)
  loc_115AB00:     var_94 = CLng(Val(var_B8.Text))
  loc_115AB10:   Else
  loc_115AB3B:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115AB62:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115AB77:     var_D8 = (var_B8.Value + 1)
  loc_115AB7D:     var_94 = CLng(var_D8)
  loc_115AB8E:   End If
  loc_115AB8E: End If
  loc_115ABB9: var_C8 = Space((5 - Len(var_90)))
  loc_115ABC1: var_E8 = (CVar(var_94 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_B8.Value)
  loc_115ABCB: var_F8 = (var_E8 + CVar(var_9C))
  loc_115ABDC: var_118 = Space((5 - Len(var_9C)))
  loc_115ABE4: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115ABFA: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115AC02: var_188 = (var_13C + var_178)
  loc_115AC0E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115AC13: var_98 = CStr(var_1A8)
  loc_115AC43: Me.LblVPrefix.Caption = var_9C
  loc_115AC59: Set var_B4 = Me.Txt
  loc_115AC5F: Call 0.Method_Proc_224_53_115ACB80 (CInt(0), var_B8)
  loc_115AC67: var_B8.Text = var_98
  loc_115AC86: Set var_B4 = Me.Txt
  loc_115AC8C: Call 0.Method_Proc_224_53_115ACB80 (CInt(1), var_B8)
  loc_115AC94: var_B8.Text = CStr(var_94)
  loc_115ACA6: var_88 = var_98
  loc_115ACAE: Set var_8C = Nothing
  loc_115ACB1: Proc_224_53_115ACB8 = var_94
End Sub

Public Sub Proc_224_54_110D2A0
  'Data Table: 4FE238
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Fields15
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_110CFA4: var_90 = global_72
  loc_110CFBB: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_110CFDE: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_110CFEC: Set var_B4 = Me.Txt
  loc_110CFF2: Call 0.Method_Proc_224_54_110D2A00 (CInt(2), var_B8, var_E8)
  loc_110D001: Proc_6_7_F25D88(var_D8, CVar(var_B8), var_13C)
  loc_110D009: var_F8 = -1 & var_D8 
  loc_110D01D: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_110D028: Set var_8C = var_140
  loc_110D064: If (var_8C.RecordCount <= 0) Then
  loc_110D080:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_110D093:   var_88 = vbNullString
  loc_110D096:   Proc_224_54_110D2A0 = 
  loc_110D09C: End If
  loc_110D0B0: If (var_8C.RecordCount > 0) Then
  loc_110D0EF:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_110D10C:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_110D11D:     var_9C = CStr(var_B8.Value)
  loc_110D138:     Set var_B4 = Me.Txt
  loc_110D13E:     Call 0.Method_Proc_224_54_110D2A00 (CInt(1), var_B8)
  loc_110D154:     var_94 = CLng(Val(var_B8.Text))
  loc_110D164:   Else
  loc_110D18F:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_110D1CB:     var_D8 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_110D1D1:     var_94 = CLng(var_D8)
  loc_110D1E2:   End If
  loc_110D1E2: End If
  loc_110D20D: var_C8 = Space((5 - Len(var_90)))
  loc_110D215: var_E8 = (CVar(var_94 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_8C.Fields.Item("start_srl_no").Value)
  loc_110D21F: var_F8 = (var_E8 + CVar(var_9C))
  loc_110D230: var_118 = Space((5 - Len(var_9C)))
  loc_110D238: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_110D24E: var_178 = Space((8 - Len(CStr(var_94))))
  loc_110D256: var_188 = (var_13C + var_178)
  loc_110D262: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_110D28D: var_88 = CStr(var_1A8)
  loc_110D295: Set var_8C = Nothing
  loc_110D298: Proc_224_54_110D2A0 = var_94
End Sub

Public Sub Proc_224_55_12760E4
  'Data Table: 4FE238
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_D4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_3F01 As Double
  loc_1275B4B: Me.FGrid.Width = CVar(CDbl(10800))
  loc_1275B66: Me.FGrid.Top = CVar(CDbl(1450))
  loc_1275B81: Me.FGrid.Height = CVar(CDbl(3400))
  loc_1275B9C: Me.DGItem.Left = CVar(CDbl(2800))
  loc_1275BB7: Me.DGItem.Top = CVar(CDbl(1200))
  loc_1275BF6: Me.LblCurStockStr.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_1275C16: If (global_92 <> "Yes") Then
  loc_1275C2A:   Set var_A8 = Me.DGItem
  loc_1275C49:   DGItem.DispID_69.Item(1).Width = CDbl(0)
  loc_1275C72:   var_94 = CVar((CDbl(Me.DGItem.Width) - CDbl(2500))) 'Single
  loc_1275C81:   Me.DGItem.Width = 1
  loc_1275C90: End If
  loc_1275C94: Set var_D4 = Me.FGrid
  loc_1275CAB: global_108 = CStr(CLng(var_D4.BackColor))
  loc_1275CC1: var_D4.Cols = &HB
  loc_1275CC9: var_94 = CVar(CLng(0)) 'Long
  loc_1275CCE: var_E8 = &H1C2
  loc_1275CDA: LateIdCallSt
  loc_1275CE2: var_94 = 0
  loc_1275CEE: var_E8 = CVar(CLng(1)) 'Long
  loc_1275CF3: var_108 = "Item Name"
  loc_1275CFC: LateIdCallSt
  loc_1275D07: var_94 = CVar(CLng(1)) 'Long
  loc_1275D12: var_E8 = CVar(CInt(1)) 'Integer
  loc_1275D19: LateIdCallSt
  loc_1275D24: var_94 = CVar(CLng(1)) 'Long
  loc_1275D29: var_E8 = &H9C4
  loc_1275D35: LateIdCallSt
  loc_1275D3D: var_94 = 0
  loc_1275D49: var_E8 = CVar(CLng(2)) 'Long
  loc_1275D4E: var_108 = "Unit"
  loc_1275D57: LateIdCallSt
  loc_1275D62: var_94 = CVar(CLng(2)) 'Long
  loc_1275D6D: var_E8 = CVar(CInt(1)) 'Integer
  loc_1275D74: LateIdCallSt
  loc_1275D7F: var_94 = CVar(CLng(2)) 'Long
  loc_1275D84: var_E8 = &H384
  loc_1275D90: LateIdCallSt
  loc_1275D98: var_94 = 0
  loc_1275DA4: var_E8 = CVar(CLng(3)) 'Long
  loc_1275DA9: var_108 = "Iss. Qty"
  loc_1275DB2: LateIdCallSt
  loc_1275DBD: var_94 = CVar(CLng(3)) 'Long
  loc_1275DC8: var_E8 = CVar(CInt(7)) 'Integer
  loc_1275DCF: LateIdCallSt
  loc_1275DDA: var_94 = CVar(CLng(3)) 'Long
  loc_1275DE5: var_E8 = CVar(CInt(7)) 'Integer
  loc_1275DEC: LateIdCallSt
  loc_1275DF7: var_94 = CVar(CLng(3)) 'Long
  loc_1275DFC: var_E8 = &H3E8
  loc_1275E08: LateIdCallSt
  loc_1275E10: var_94 = 0
  loc_1275E1C: var_E8 = CVar(CLng(4)) 'Long
  loc_1275E21: var_108 = "Conv. Factor"
  loc_1275E2A: LateIdCallSt
  loc_1275E35: var_94 = CVar(CLng(4)) 'Long
  loc_1275E40: var_E8 = CVar(CInt(7)) 'Integer
  loc_1275E47: LateIdCallSt
  loc_1275E52: var_94 = CVar(CLng(4)) 'Long
  loc_1275E5D: var_E8 = CVar(CInt(7)) 'Integer
  loc_1275E64: LateIdCallSt
  loc_1275E6F: var_94 = CVar(CLng(4)) 'Long
  loc_1275E74: var_E8 = &H4B0
  loc_1275E80: LateIdCallSt
  loc_1275E88: var_94 = 0
  loc_1275E94: var_E8 = CVar(CLng(5)) 'Long
  loc_1275E99: var_108 = "Wt. Qty"
  loc_1275EA2: LateIdCallSt
  loc_1275EAD: var_94 = CVar(CLng(5)) 'Long
  loc_1275EB8: var_E8 = CVar(CInt(7)) 'Integer
  loc_1275EBF: LateIdCallSt
  loc_1275ECA: var_94 = CVar(CLng(5)) 'Long
  loc_1275ED5: var_E8 = CVar(CInt(7)) 'Integer
  loc_1275EDC: LateIdCallSt
  loc_1275EE7: var_94 = CVar(CLng(5)) 'Long
  loc_1275EEC: var_E8 = &H3E8
  loc_1275EF8: LateIdCallSt
  loc_1275F00: var_94 = 0
  loc_1275F0C: var_E8 = CVar(CLng(6)) 'Long
  loc_1275F11: var_108 = "Wt.Unit"
  loc_1275F1A: LateIdCallSt
  loc_1275F25: var_94 = CVar(CLng(6)) 'Long
  loc_1275F30: var_E8 = CVar(CInt(1)) 'Integer
  loc_1275F37: LateIdCallSt
  loc_1275F42: var_94 = CVar(CLng(6)) 'Long
  loc_1275F47: var_E8 = &H384
  loc_1275F53: LateIdCallSt
  loc_1275F5B: var_94 = 0
  loc_1275F67: var_E8 = CVar(CLng(7)) 'Long
  loc_1275F6C: var_108 = "Rate"
  loc_1275F75: LateIdCallSt
  loc_1275F80: var_94 = CVar(CLng(7)) 'Long
  loc_1275F8B: var_E8 = CVar(CInt(7)) 'Integer
  loc_1275F92: LateIdCallSt
  loc_1275F9D: var_94 = CVar(CLng(7)) 'Long
  loc_1275FA8: var_E8 = CVar(CInt(7)) 'Integer
  loc_1275FAF: LateIdCallSt
  loc_1275FBA: var_94 = CVar(CLng(7)) 'Long
  loc_1275FBF: var_E8 = &H3E8
  loc_1275FCB: LateIdCallSt
  loc_1275FD3: var_94 = 0
  loc_1275FDF: var_E8 = CVar(CLng(8)) 'Long
  loc_1275FE4: var_108 = "Amount"
  loc_1275FED: LateIdCallSt
  loc_1275FF8: var_94 = CVar(CLng(8)) 'Long
  loc_1276003: var_E8 = CVar(CInt(7)) 'Integer
  loc_127600A: LateIdCallSt
  loc_1276015: var_94 = CVar(CLng(8)) 'Long
  loc_1276020: var_E8 = CVar(CInt(7)) 'Integer
  loc_1276027: LateIdCallSt
  loc_1276032: var_94 = CVar(CLng(8)) 'Long
  loc_1276037: var_E8 = &H5DC
  loc_1276043: LateIdCallSt
  loc_127604E: var_94 = CVar(CLng(9)) 'Long
  loc_1276053: var_E8 = 0
  loc_127605F: LateIdCallSt
  loc_127606A: var_94 = CVar(CLng(&HA)) 'Long
  loc_127606F: var_E8 = 0
  loc_127607B: LateIdCallSt
  loc_1276085: Set var_D4 = Nothing 
  loc_127608D: Set var_11C = Me.FGCat
  loc_12760A4: global_108 = CStr(CLng(var_11C.BackColor))
  loc_12760B1: var_94 = CVar(CLng(3)) 'Long
  loc_12760B6: var_E8 = &H7D0
  loc_12760C2: LateIdCallSt
  loc_12760D6: var_11C.Cols = 9
  loc_12760E1: Exit Sub
  loc_12760E2: var_3F01 = Nothing
End Sub

Public Sub Proc_224_56_F73060
  'Data Table: 4FE238
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  loc_F72F63: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F72F6B: var_C8 = CVar(CLng(7)) 'Long
  loc_F72FA3: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F72FAB: var_134 = CVar(CLng(3)) 'Long
  loc_F72FE3: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F72FEB: var_1F0 = CVar(CLng(8)) 'Long
  loc_F7301C: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_F73024: Set var_224 = Me.FGrid
  loc_F7302A: LateIdCallSt
  loc_F7305D: Exit Sub
End Sub

Public Sub Proc_224_57_ED7A30
  'Data Table: 4FE238
  loc_ED7990: Call Proc_224_52_EF65AC()
  loc_ED79A0: Set var_88 = Me.Txt
  loc_ED79A6: Call 0.Method_Proc_224_57_ED7A300 (CInt(2))
  loc_ED79CF: If (Proc_6_27_EA565C(var_8C, "Date") = 0) Then
  loc_ED79D2:   Exit Sub
  loc_ED79D3: End If
  loc_ED7A0A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED7A0D:   Call TopCtrl1_UnknownEvent_16()
  loc_ED7A15: Else
  loc_ED7A1B:   Call 0.Method_arg_1E8 (var_88)
  loc_ED7A23:   Call var_88.SetFocus
  loc_ED7A2C: End If
  loc_ED7A2C: Exit Sub
End Sub
