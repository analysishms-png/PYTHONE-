VERSION 5.00
Begin VB.Form RsStoreRecEntry
  Caption = "Finish Material Receive Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11610
  ClientHeight = 7710
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
    ForeColor = &HC00000&
    Left = 2235
    Top = 1410
    Width = 4605
    Height = 240
    TabIndex = 3
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
  Begin TextBox TxtBarCode
    ForeColor = &HC00000&
    Left = 7965
    Top = 1140
    Width = 2850
    Height = 330
    Visible = 0   'False
    TabIndex = 17
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
  End
  Begin DataGrid DGItem
    Left = 2880
    Top = 5790
    Width = 6735
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGDepart
    Left = 4770
    Top = 4470
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 2235
    Top = 1665
    Width = 4605
    Height = 240
    Visible = 0   'False
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
    Index = 0
    Left = 4530
    Top = 5355
    Width = 1995
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 25
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 120
    Top = 2850
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 2235
    Top = 1155
    Width = 4605
    Height = 240
    TabIndex = 2
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
    Left = 2235
    Top = 900
    Width = 1725
    Height = 240
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
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 5100
    Top = 900
    Width = 1740
    Height = 240
    TabIndex = 0
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
  Begin MSHFlexGrid FGrid
    Left = 75
    Top = 1980
    Width = 10710
    Height = 3405
    TabIndex = 5
  End
  Begin DataGrid DGToDepart
    Left = 8805
    Top = 5385
    Width = 4155
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 16
  End
  Begin DataGrid DGShift
    Left = 10860
    Top = 2070
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11610
    Height = 450
    TabIndex = 22
  End
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HFF&
    Left = 0
    Top = 5460
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3885
    Top = 6975
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 510
    Top = 6975
    Width = 2880
    Height = 255
    TabIndex = 24
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
  Begin Label Label2
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 7935
    Top = 7005
    Width = 1230
    Height = 285
    Visible = 0   'False
    TabIndex = 23
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
  Begin Label LblCaption
    Caption = "#"
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 9270
    Top = 810
    Width = 255
    Height = 345
    TabIndex = 21
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
  Begin Label Label1
    Caption = "For Shift"
    Index = 3
    ForeColor = &HC00000&
    Left = 375
    Top = 1425
    Width = 705
    Height = 240
    TabIndex = 19
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
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
    ForeColor = &HC00000&
    Left = 7155
    Top = 1200
    Width = 735
    Height = 240
    Visible = 0   'False
    TabIndex = 18
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "To Location"
    Index = 0
    ForeColor = &HC00000&
    Left = 375
    Top = 1680
    Width = 945
    Height = 240
    Visible = 0   'False
    TabIndex = 15
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
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
    ForeColor = &HFF&
    Left = 1545
    Top = 915
    Width = 690
    Height = 240
    TabIndex = 13
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
    Top = 5370
    Width = 540
    Height = 210
    Visible = 0   'False
    TabIndex = 12
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
    Caption = "For Location"
    Index = 4
    ForeColor = &HC00000&
    Left = 375
    Top = 1170
    Width = 1020
    Height = 240
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Vr. No."
    Index = 1
    ForeColor = &HC00000&
    Left = 375
    Top = 915
    Width = 525
    Height = 240
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 4605
    Top = 915
    Width = 360
    Height = 240
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "RsStoreRecEntry"

Private global_90 As Integer
Private global_88 As Integer

Private Sub FGrid_UnknownEvent_0 'E61BB4
  'Data Table: 4D100C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E61B7F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E61B92: Set var_A8 = Me.TxtGrid
  loc_E61B98: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E61BA0: var_AC.Visible = False
  loc_E61BAC: Call Proc_213_48_EBA61C()
  loc_E61BB1: Exit Sub
  loc_E61BB2: CExtInstUnk
End Sub

Private Sub FGrid_UnknownEvent_1 'E66570
  'Data Table: 4D100C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6652C: Set var_88 = Me.TxtGrid
  loc_E66532: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6654C: If (var_8C.Visible = 0) Then
  loc_E66565:   Me.FGrid.BackColorSel = CVar(CLng(global_108))
  loc_E6656D: End If
  loc_E6656D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1F590
  'Data Table: 4D100C
  loc_E1F587: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F58F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E2C054
  'Data Table: 4D100C
  Dim var_8C As TextBox
  loc_E2C037: Set var_88 = Me.TxtGrid
  loc_E2C03D: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E2C045: var_8C.Visible = False
  loc_E2C051: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '116DBC4
  'Data Table: 4D100C
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_116D7F8: On Error Goto loc_116DBBB
  loc_116D7FF: Set var_88 = Me.TopCtrl1
  loc_116D805: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_116D81E: If (CStr() = "Browse") Then
  loc_116D821:   Exit Sub
  loc_116D822: End If
  loc_116D896: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_116D8AF:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_116D8BF:   var_9C = "+{Tab}"
  loc_116D8C5:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_116D8CF:   KeyCode = 0
  loc_116D8D5: Else
  loc_116D8DF:   var_B0 = Me.FGrid.Rows
  loc_116D92C:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_116D945:     Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_116D952:     Call Proc_213_52_ED70D0(0, var_B0, KeyCode)
  loc_116D957:   End If
  loc_116D957: End If
  loc_116D95D: global_90 = KeyCode
  loc_116D983: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_116D9A7: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_116D9BD:   var_EC = CLng(Me.FGrid.Col)
  loc_116D9CD:   If (var_EC = CLng(1)) Then
  loc_116D9E3:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116D9FB:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_116DA00:     var_11C = vbNullString
  loc_116DA0A:     Set var_B4 = Me.FGrid
  loc_116DA10:     LateIdCallSt
  loc_116DA3B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116DA43:     var_FC = CVar(CLng(9)) 'Long
  loc_116DA48:     var_11C = vbNullString
  loc_116DA52:     Set var_A0 = Me.FGrid
  loc_116DA58:     LateIdCallSt
  loc_116DA7D:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116DA85:     var_FC = CVar(CLng(&HA)) 'Long
  loc_116DA8A:     var_11C = vbNullString
  loc_116DA94:     Set var_A0 = Me.FGrid
  loc_116DA9A:     LateIdCallSt
  loc_116DABF:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116DAC7:     var_FC = CVar(CLng(2)) 'Long
  loc_116DACC:     var_11C = vbNullString
  loc_116DAD6:     Set var_A0 = Me.FGrid
  loc_116DADC:     LateIdCallSt
  loc_116DB01:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_116DB09:     var_FC = CVar(CLng(7)) 'Long
  loc_116DB0E:     var_11C = vbNullString
  loc_116DB18:     Set var_A0 = Me.FGrid
  loc_116DB1E:     LateIdCallSt
  loc_116DB33:   Else
  loc_116DB3A:     If Not (var_EC = CLng(7)) Then
  loc_116DB44:       If (var_EC = CLng(3)) Then
  loc_116DB47:       End If
  loc_116DB63:       Set var_A0 = Me.FGrid
  loc_116DB72:       var_FC = CVar(CLng(var_A0.Col)) 'Long
  loc_116DB77:       var_11C = vbNullString
  loc_116DB87:       LateIdCallSt
  loc_116DB9F:       Call Proc_213_51_F70C00(Me.FGrid, var_11C, var_FC, CVar(CLng(Me.FGrid.Row)), var_A0, var_11C, var_FC, CVar(CLng(Me.FGrid.Row)))
  loc_116DBA4:     End If
  loc_116DBA4:   End If
  loc_116DBA4: End If
  loc_116DBAA: If (KeyCode = &HD) Then
  loc_116DBB2:   global_88 = 0
  loc_116DBB5: End If
  loc_116DBB7: KeyCode = 0
  loc_116DBBA: Exit Sub
  loc_116DBBB: ' Referenced from: 116D7F8
  loc_116DBBB: Proc_6_60_E62BC4(KeyCode, global_88, var_A0, var_11C, var_FC)
  loc_116DBC0: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E14E40
  'Data Table: 4D100C
  loc_E14E31: Call FGrid_UnknownEvent_C()
  loc_E14E3B: global_88 = 0
  loc_E14E3E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '102C53C
  'Data Table: 4D100C
  Dim var_AC As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_B4 As String
  Dim var_CE As Integer
  Dim var_B8 As TextBox
  Dim var_C8 As TextBox
  loc_102C327: var_88 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_102C331: On Error Goto loc_102C533
  loc_102C347: var_B0 = CLng(Me.FGrid.Col)
  loc_102C357: If (var_B0 = CLng(1)) Then
  loc_102C35E:   Set var_C8 = Me.FGrid
  loc_102C382:   var_B4 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_102C3AF:   Set var_B8 = var_C8
  loc_102C3C1:   Proc_6_63_110ABA4(Me, var_B8, Me.TxtGrid, 0, 0)
  loc_102C3E9:   Set var_AC = Me.TxtGrid
  loc_102C3EF:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_B4, Asc(var_B4))
  loc_102C3F7:   0 = var_B8.Text
  loc_102C410:   If (Len(var_B4) <= 1) Then
  loc_102C41F:     Set var_AC = Me.TxtGrid
  loc_102C425:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_B4)
  loc_102C42D:     var_CE = var_B8.Text
  loc_102C43E:     Set var_BC = Me.TxtGrid
  loc_102C444:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_102C44C:     var_C8.Text = var_B4
  loc_102C45F:   End If
  loc_102C46B:   Set var_AC = Me.TxtGrid
  loc_102C471:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_102C48B:   Set var_BC = Me.TxtGrid
  loc_102C491:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_102C499:   var_C8.SelStart = Len(var_B8.Text)
  loc_102C4AF: Else
  loc_102C4B6:   If Not (var_B0 = CLng(7)) Then
  loc_102C4C0:     If Not (var_B0 = CLng(3)) Then
  loc_102C4CA:       If (var_B0 = CLng(4)) Then
  loc_102C4CD:       End If
  loc_102C4CD:     End If
  loc_102C50B:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_102C51D:   End If
  loc_102C51D: End If
  loc_102C527: If (CLng(KeyCode) <> &HD) Then
  loc_102C52F:   global_88 = &HFF
  loc_102C532: End If
  loc_102C532: Exit Sub
  loc_102C533: ' Referenced from: 102C331
  loc_102C533: Proc_6_60_E62BC4(global_88, &HFF, KeyCode)
  loc_102C538: Exit Sub
  loc_102C53A: Error
End Sub

Private Sub FGrid_UnknownEvent_D '1056FBC
  'Data Table: 4D100C
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  loc_1056D50: On Error Goto loc_1056FB4
  loc_1056D57: Set var_8C = Me.TopCtrl1
  loc_1056D5D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1056D76: If (CStr() = "Browse") Then
  loc_1056D79:   Exit Sub
  loc_1056D7A: End If
  loc_1056D97: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1056D9A:   Exit Sub
  loc_1056D9B: End If
  loc_1056DAC: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_1056DCE:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1056E08:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_1056E2A:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1056E40:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1056E49:         Set var_114 = Me.FGrid
  loc_1056E64:       Else
  loc_1056E77:         Me.FGrid.Rows = 1
  loc_1056E9D:         var_9C = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_1056EA5:         Set var_114 = Me.FGrid
  loc_1056EBF:         var_B0 = 1
  loc_1056ED2:         Me.FGrid.FixedRows = var_B0
  loc_1056EDA:       End If
  loc_1056EDA:       Call Proc_213_51_F70C00(FGrid.DispID_10000, var_9C)
  loc_1056EE3:       Set var_8C = Me.TopCtrl1
  loc_1056EE9:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(FGrid.DispID_10000)
  loc_1056F02:       If (CStr(var_B0) = "Add") Then
  loc_1056F2A:         For var_120 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_120 'Integer
  loc_1056F34:           var_B0 = CVar(CLng(var_86)) 'Long
  loc_1056F3C:           var_E0 = CVar(CLng(0)) 'Long
  loc_1056F46:           var_9C = CVar(CStr(var_86)) 'String
  loc_1056F4E:           Set var_8C = Me.FGrid
  loc_1056F54:           LateIdCallSt
  loc_1056F65:         Next var_120 'Integer
  loc_1056F6A:       End If
  loc_1056F6A:     End If
  loc_1056F6D:   Else
  loc_1056F8E:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_1056F9E:   End If
  loc_1056FA2:   Set var_8C = Me.FGrid
  loc_1056FB3: End If
  loc_1056FB3: Exit Sub
  loc_1056FB4: ' Referenced from: 1056D50
  loc_1056FB4: Proc_6_60_E62BC4(FGrid.DispID_8001)
  loc_1056FB9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9CC40
  'Data Table: 4D100C
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9CBE3: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9CBFB: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9CC23: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9CC3E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E43438
  'Data Table: 4D100C
  Dim var_8C As TextBox
  loc_E43417: Set var_88 = Me.TxtGrid
  loc_E4341D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E43425: var_8C.Visible = False
  loc_E43431: Call Proc_213_48_EBA61C()
  loc_E43436: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FA1F3C
  'Data Table: 4D100C
  Dim var_8C As Variant
  Dim var_D0 As Variant
  Dim var_D4 As TextBox
  loc_FA1DB8: On Error Goto loc_FA1F33
  loc_FA1DDE: Call Proc_213_47_EFE748(Proc_5_1_100CB50("ADD", Me))
  loc_FA1DE9: Call Proc_213_45_F72C04(global_56)
  loc_FA1DFB: Me.LblVPrefix.Caption = vbNullString
  loc_FA1E10: Me.LblUser.Caption = vbNullString
  loc_FA1E25: Me.LblLDt.Caption = vbNullString
  loc_FA1E40: Me.FGrid.Rows = 1
  loc_FA1E5D: var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FA1E65: Set var_D4 = Me.FGrid
  loc_FA1E94: Me.FGrid.FixedRows = 1
  loc_FA1EAF: Set var_8C = Me.Txt
  loc_FA1EB5: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, CStr(MemVar_1F920EC))
  loc_FA1EBD: var_D4.Text = FGrid.DispID_10000
  loc_FA1ED7: Set var_8C = Me.Txt
  loc_FA1EDD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4)
  loc_FA1EE5: var_D4.SetFocus
  loc_FA1F04: Set var_8C = Me.Txt
  loc_FA1F0A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4)
  loc_FA1F12: var_D4.Text = CStr(MemVar_1F920EC)
  loc_FA1F2D: Call Txt_Validate(CInt(2))
  loc_FA1F32: Exit Sub
  loc_FA1F33: ' Referenced from: FA1DB8
  loc_FA1F33: Proc_6_60_E62BC4(&HFF)
  loc_FA1F38: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBA008
  'Data Table: 4D100C
  loc_EB9F74: On Error Goto loc_EB9FFF
  loc_EB9FAE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EB9FBD:   Set var_10C = Me
  loc_EB9FD4:   Call Proc_213_47_EFE748(Proc_5_1_100CB50("INI", var_10C))
  loc_EB9FDF:   Call Proc_213_46_14560BC(global_56)
  loc_EB9FE7: Else
  loc_EB9FED:   Call 0.Method_arg_1E8 (var_10C)
  loc_EB9FF5:   Call var_10C.SetFocus
  loc_EB9FFE: End If
  loc_EB9FFE: Exit Sub
  loc_EB9FFF: ' Referenced from: EB9F74
  loc_EB9FFF: Proc_6_60_E62BC4()
  loc_EBA004: Exit Sub
  loc_EBA005: Exit Sub
  loc_EBA006:  = 
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'FD5D48
  'Data Table: 4D100C
  Dim unk_4D1024 As Connection15
  Dim Me As Recordset15
  Dim var_120 As TextBox
  Dim var_128 As String
  Dim var_B4 As Variant
  loc_FD5B90: On Error Goto loc_FD5CF8
  loc_FD5BA1: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_FD5BA4:   Exit Sub
  loc_FD5BA5: End If
  loc_FD5BDC: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FD5BE8:   unk_4D1024.BeginTrans var_118
  loc_FD5BFE:   var_94 = Me.Bookmark 'Variant
  loc_FD5C20:   Set var_11C = Me.Txt
  loc_FD5C26:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_124, "Delete From Stock Where DocID='")
  loc_FD5C2E:   var_B4 = var_120.Text
  loc_FD5C37:   var_128 = -1 & var_124
  loc_FD5C47:   unk_4D1024.Execute var_128 & "'", var_130, 
  loc_FD5C67:   unk_4D1024.CommitTrans
  loc_FD5C77:   Me.Requery -1
  loc_FD5C97:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_FD5CA4:     Me.Bookmark = var_94
  loc_FD5CAC:   Else
  loc_FD5CC0:     If (Me.EOF = 0) Then
  loc_FD5CC9:       Me.MoveLast
  loc_FD5CCE:     End If
  loc_FD5CCE:   End If
  loc_FD5CCE:   Call Proc_213_46_14560BC()
  loc_FD5CEF:   Proc_5_0_110649C(&HFF, Me)
  loc_FD5CF7: End If
  loc_FD5CF7: Exit Sub
  loc_FD5CF8: ' Referenced from: FD5B90
  loc_FD5CFE: unk_4D1024.RollbackTrans
  loc_FD5D0B: Set var_11C = Err()
  loc_FD5D11: Call 0.Method_arg_2C (var_124, global_56)
  loc_FD5D32: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_FD5D45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FCB7E4
  'Data Table: 4D100C
  Dim Me As Recordset15
  Dim var_90 As Label
  Dim var_98 As TextBox
  loc_FCB630: On Error Goto loc_FCB7DE
  loc_FCB641: If (Proc_183_55_FE7900(global_56) = &HFF) Then
  loc_FCB644:   Exit Sub
  loc_FCB645: End If
  loc_FCB65C: If (Me.RecordCount > 0) Then
  loc_FCB682:   Call Proc_213_47_EFE748(Proc_5_1_100CB50("EDIT", Me))
  loc_FCB69A:   Me.LblUser.Caption = vbNullString
  loc_FCB6AF:   Me.LblLDt.Caption = vbNullString
  loc_FCB6C4:   Set var_90 = Me.Txt
  loc_FCB6CA:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_FCB6D2:   var_98.Enabled = False
  loc_FCB6E2:   Set var_90 = Me.TopCtrl1
  loc_FCB6E8:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(global_56)
  loc_FCB701:   If (CStr() = "Add") Then
  loc_FCB70F:     Set var_90 = Me.Txt
  loc_FCB715:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2))
  loc_FCB71D:     var_98.SetFocus
  loc_FCB729:   End If
  loc_FCB72D:   Set var_90 = Me.TopCtrl1
  loc_FCB733:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_FCB74C:   If (CStr() = "Edit") Then
  loc_FCB75A:     Set var_90 = Me.Txt
  loc_FCB760:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3))
  loc_FCB768:     var_98.SetFocus
  loc_FCB774:   End If
  loc_FCB782:   Set var_90 = Me.Txt
  loc_FCB788:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FCB79B:   global_76 = var_98.Text
  loc_FCB7AC: Else
  loc_FCB7CD:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FCB7DD: End If
  loc_FCB7DD: Exit Sub
  loc_FCB7DE: ' Referenced from: FCB630
  loc_FCB7DE: Proc_6_60_E62BC4(var_98)
  loc_FCB7E3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1559C
  'Data Table: 4D100C
  Dim var_6B01 As Double
  loc_E15591: Me.Global.Unload Me
  loc_E15599: Exit Sub
  loc_E1559A: var_6B01 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB3554
  'Data Table: 4D100C
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB34C4: On Error Goto loc_EB354E
  loc_EB34DE: If (Me.RecordCount <= 0) Then
  loc_EB34E7:   var_B8 = "Information"
  loc_EB3502:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB3512:   Exit Sub
  loc_EB3513: End If
  loc_EB3516: MemVar_1F920E4 = "Select Distinct S.Docid,CONVERT(VARCHAR(8),S.Vno) as VNo,S.Vdate,S.VPrefix,D.NAME AS ToLocation From (Stock S left Join GodownMast D on S.GodownCode=D.Code) Left Join ItemMast I ON S.Item=I.Code And I.ItemType='Store' WHERE VTYPE='BKREC'"
  loc_EB3523: Proc_6_126_F1BCC0("1500,1500,1500,4500")
  loc_EB3531: MemVar_1F92120 = Me
  loc_EB3548: Call 0.Method_arg_2B0 (1)
  loc_EB354D: Exit Sub
  loc_EB354E: ' Referenced from: EB34C4
  loc_EB354E: Proc_6_60_E62BC4(var_B8)
  loc_EB3553: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2E8D8
  'Data Table: 4D100C
  loc_E2E8C8: Proc_5_0_110649C(&HFF, Me)
  loc_E2E8D0: Call Proc_213_46_14560BC(global_56)
  loc_E2E8D5: Exit Sub
  loc_E2E8D6: Set var_6C00 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2C658
  'Data Table: 4D100C
  loc_E2C648: Proc_5_0_110649C(&HFF, Me)
  loc_E2C650: Call Proc_213_46_14560BC(global_56)
  loc_E2C655: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2C598
  'Data Table: 4D100C
  loc_E2C588: Proc_5_0_110649C(&HFF, Me)
  loc_E2C590: Call Proc_213_46_14560BC(global_56)
  loc_E2C595: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2C298
  'Data Table: 4D100C
  loc_E2C288: Proc_5_0_110649C(&HFF, Me)
  loc_E2C290: Call Proc_213_46_14560BC(global_56)
  loc_E2C295: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '111DF0C
  'Data Table: 4D100C
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim var_B0 As String
  Dim var_B8 As Variant
  Dim unk_4D1024 As Connection15
  Dim var_9C As Recordset15
  Dim var_D4 As Variant
  Dim var_136 As Integer
  Dim var_104 As String
  Dim var_B4 As Fields15
  Dim var_124 As String
  Dim var_114 As Variant
  loc_111DBD8: On Error Goto loc_111DF06
  loc_111DBF2: If (Me.RecordCount <= 0) Then
  loc_111DBF5:   Exit Sub
  loc_111DBF6: End If
  loc_111DBFD: var_A8 = "Select S.Docid,S.VNo,S.VDate,S.RecdQty as Qty,S.RecdUnit As Unit,S.Rate,S.Amount,S.GodownCode," & " I.Name as ItemName,G.Name as GodName,SM.Name As Shift"
  loc_111DC0B: var_B0 = var_A8 & " From ((Stock as S Left Join ItemMast as I on S.Item=I.Code And I.ItemType='Store')" & " Left Join GodownMast as G on S.GodownCode=G.Code) Left Join ShiftMast as SM on S.ShiftCode=SM.Code"
  loc_111DC23: Set var_B4 = Me.Txt
  loc_111DC29: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_B8)
  loc_111DC41: var_88 = var_B0 & " Where S.DocID='" & var_B8.Text & "' Order By S.Sno"
  loc_111DC62: If (var_88 = vbNullString) Then
  loc_111DC65:   Exit Sub
  loc_111DC66: End If
  loc_111DC7C: unk_4D1024.Execute var_88, var_E4, -1
  loc_111DC87: Set var_9C = var_B4
  loc_111DC96: var_A4 = var_9C.RecordCount
  loc_111DCA4: If (var_A4 <= 0) Then
  loc_111DCAD:   Call 0.Method_arg_50 (var_A8)
  loc_111DCCE:   MsgBox("** No Records Found to Print **", &H40, CVar(var_A8), var_114, var_134)
  loc_111DCDE:   Exit Sub
  loc_111DCDF: End If
  loc_111DCF5: Set var_B4 = var_9C 
  loc_111DD01: var_136 = CreateFieldDefFile(var_B4, MemVar_1F920B4 & "\FinishMaterialReceived.ttx")
  loc_111DD0B: Set var_9C = var_B4
  loc_111DD11: var_D4 = CVar(var_136) 'Integer
  loc_111DD14: var_98 = var_D4 'Variant
  loc_111DD30: var_A8 = MemVar_1F920B4 & "\FinishMaterialReceived.RPT"
  loc_111DD39: Call 0.Method_arg_1C (var_A8, var_D4, var_B4)
  loc_111DD44: MemVar_1F921E4 = var_B4
  loc_111DD5F: Call 0.Method_arg_90 (var_B4, var_A4, var_9E, 1)
  loc_111DD67: Call 0.Method_arg_24 (var_136, &HFF)
  loc_111DD73: For var_13A =  To CInt(var_A4): var_B4 = var_13A 'Integer
  loc_111DD8C:   Call 0.Method_arg_90 (var_B4, CLng(var_9E))
  loc_111DD94:   Call 0.Method_arg_20 (var_B8)
  loc_111DD9C:   Call 0.Method_arg_30 (var_A8)
  loc_111DDA4:   var_140 = var_A8
  loc_111DDB6:   If (var_140 = "Title") Then
  loc_111DDCC:     Call 0.Method_arg_90 (var_B4, CLng(var_9E))
  loc_111DDD4:     Call 0.Method_arg_20 (var_B8)
  loc_111DDDC:     Call 0.Method_arg_38 ("'Finish Material Received'")
  loc_111DDEB:   Else
  loc_111DDF3:     If (var_140 = "ForShift") Then
  loc_111DDF6:       var_104 = "'"
  loc_111DE0D:       var_B4 = var_9C.Fields
  loc_111DE29:       var_124 = "'"
  loc_111DE32:       var_A8 = CStr(var_104 & var_B4.Item("Shift").Value & var_124)
  loc_111DE46:       Call 0.Method_arg_90 (var_144, CLng(var_9E))
  loc_111DE4E:       Call 0.Method_arg_20 (var_148)
  loc_111DE56:       Call 0.Method_arg_38 (var_A8)
  loc_111DE72:     End If
  loc_111DE72:   End If
  loc_111DE75: Next var_13A 'Integer
  loc_111DE93: Call 0.Method_arg_64 (var_B4, CVar(var_9C))
  loc_111DE9B: Call 0.Method_arg_2C (var_104)
  loc_111DEA9: Call 0.Method_arg_150 (var_124)
  loc_111DEB4: Call 0.Method_arg_50 (var_A8)
  loc_111DEBE: Set var_B8 = Nothing
  loc_111DED8: Set var_B4 = MemVar_1F921E4 
  loc_111DEE4: Proc_6_99_1483714(var_B4, 0, var_A8)
  loc_111DEEF: MemVar_1F921E4 = var_B4
  loc_111DF02: Set var_9C = Nothing
  loc_111DF05: Exit Sub
  loc_111DF06: ' Referenced from: 111DBD8
  loc_111DF06: Proc_6_60_E62BC4(&HFF)
  loc_111DF0B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E22CEC
  'Data Table: 4D100C
  Dim Me As Recordset15
  loc_E22CD3: Me.Requery -1
  loc_E22CE3: Me.Requery -1
  loc_E22CE8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14CDB98
  'Data Table: 4D100C
  Dim var_96 As Integer
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_A8 As String
  Dim var_108 As Variant
  Dim var_8E As Integer
  Dim unk_4D1024 As Connection15
  Dim var_144 As Variant
  Dim var_A0 As Variant
  Dim var_7B0 As Double
  Dim var_1A8 As Variant
  Dim var_7B8 As Double
  Dim var_1C0 As TextBox
  Dim var_1D0 As MSHFlexGrid
  Dim var_1E4 As TextBox
  Dim var_1F8 As TextBox
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_118 As Variant
  Dim var_268 As Variant
  Dim var_288 As Variant
  Dim var_128 As Variant
  Dim var_2BC As Variant
  Dim var_2DC As Variant
  Dim var_320 As Variant
  Dim var_364 As Variant
  Dim var_7D8 As Double
  Dim var_428 As Variant
  Dim var_544 As Variant
  Dim var_564 As Variant
  Dim var_5DC As Variant
  Dim var_5FC As Variant
  Dim var_620 As Variant
  Dim var_6F4 As Variant
  Dim var_73C As TextBox
  Dim var_188 As String
  Dim var_1B0 As String
  Dim var_258 As String
  Dim var_3D4 As String
  Dim var_514 As Variant
  Dim var_6A0 As Variant
  Dim var_88 As Recordset15
  Dim var_A4 As Fields15
  Dim var_1BC As Fields15
  Dim Me As Recordset15
  loc_14CCFC8: On Error Goto loc_14CDB7D
  loc_14CCFCD: var_96 = 0
  loc_14CCFDB: Set var_9C = Me.Txt
  loc_14CCFE1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0)
  loc_14CD00A: If (Proc_6_27_EA565C(var_A0, "Voucher Number") = 0) Then
  loc_14CD00D:   Exit Sub
  loc_14CD00E: End If
  loc_14CD019: Set var_9C = Me.Txt
  loc_14CD01F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A0)
  loc_14CD048: If (Proc_6_27_EA565C(var_A0, "Voucher Date") = 0) Then
  loc_14CD04B:   Exit Sub
  loc_14CD04C: End If
  loc_14CD057: Set var_9C = Me.Txt
  loc_14CD05D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A0)
  loc_14CD086: If (Proc_6_27_EA565C(var_A0, "From Location") = 0) Then
  loc_14CD089:   Exit Sub
  loc_14CD08A: End If
  loc_14CD08A: var_B8 = 1
  loc_14CD0B0: var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_14CD0C1: If (var_A8 = vbNullString) Then
  loc_14CD0CA:   Call 0.Method_arg_50 (var_A8, CVar(CLng(1)))
  loc_14CD0E5:   var_F8 = "Please Fill Item Detail"
  loc_14CD0EB:   MsgBox(var_F8, &H40, CVar(var_A8), var_118, var_128)
  loc_14CD10E:   Me.FGrid.Row = 1
  loc_14CD11A:   Set var_9C = Me.FGrid
  loc_14CD12B:   Exit Sub
  loc_14CD12C: End If
  loc_14CD12E: var_8E = &HFF
  loc_14CD13A: unk_4D1024.BeginTrans var_12C
  loc_14CD166: unk_4D1024.Execute "Delete From Stock Where DocID='" & global_76 & "'", var_F8, -1
  loc_14CD19D: For var_134 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_98 = var_134 'Integer
  loc_14CD1A7:   var_B8 = CVar(CLng(var_98)) 'Long
  loc_14CD1AF:   var_D8 = CVar(CLng(0)) 'Long
  loc_14CD1B9:   var_F8 = CVar(CStr(var_98)) 'String
  loc_14CD1C1:   Set var_9C = Me.FGrid
  loc_14CD1C7:   LateIdCallSt
  loc_14CD1D8: Next var_134 'Integer
  loc_14CD202: For var_148 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_98 = var_148 'Integer
  loc_14CD20C:   var_B8 = CVar(CLng(var_98)) 'Long
  loc_14CD214:   var_D8 = CVar(CLng(3)) 'Long
  loc_14CD23F:   var_144 = CVar(CLng(var_98)) 'Long
  loc_14CD27F:   If (CVar(CLng(9)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_14CD2B0:     var_7B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14CD2BA:     Set var_A0 = Me.LblVPrefix
  loc_14CD2D3:     Set var_A4 = Me.Txt
  loc_14CD2D9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1A8, var_1AC, var_7B0, CVar(CLng(0)), CVar(CLng(var_98)))
  loc_14CD2E1:     var_144 = var_1A8.Text
  loc_14CD2EE:     var_7B8 = Val(var_1AC)
  loc_14CD2FF:     Set var_1BC = Me.Txt
  loc_14CD305:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1C0, var_1C4, var_7B8)
  loc_14CD30D:     (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) = var_1C0.Text
  loc_14CD316:     var_144 = CVar(CLng(var_98)) 'Long
  loc_14CD32D:     var_108 = Me.FGrid.TextMatrix)
  loc_14CD347:     Set var_1E0 = Me.Txt
  loc_14CD34D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1E4, var_1E8, var_108, CVar(CLng(9)))
  loc_14CD355:     var_144 = var_1E4.Tag
  loc_14CD368:     Set var_1F4 = Me.Txt
  loc_14CD36E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1F8, var_1FC)
  loc_14CD376:     var_D8 = var_1F8.Tag
  loc_14CD37F:     var_214 = CVar(CLng(var_98)) 'Long
  loc_14CD387:     var_234 = CVar(CLng(7)) 'Long
  loc_14CD396:     var_118 = Me.FGrid.TextMatrix)
  loc_14CD3B0:     var_268 = CVar(CLng(var_98)) 'Long
  loc_14CD3B8:     var_288 = CVar(CLng(3)) 'Long
  loc_14CD3C7:     var_128 = Me.FGrid.TextMatrix)
  loc_14CD3E1:     var_2BC = CVar(CLng(var_98)) 'Long
  loc_14CD3E9:     var_2DC = CVar(CLng(3)) 'Long
  loc_14CD412:     var_320 = CVar(CLng(var_98)) 'Long
  loc_14CD429:     var_364 = Me.FGrid.TextMatrix)
  loc_14CD463:     var_7D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14CD481:     var_428 = Me.FGrid.TextMatrix)
  loc_14CD490:     Proc_6_104_ED5D18(var_44C, var_428, CVar(CLng(4)), CVar(CLng(var_98)), var_7D8, CVar(CLng(8)), CVar(CLng(var_98)), var_364)
  loc_14CD499:     Set var_490 = Me.TopCtrl1
  loc_14CD49F:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(CVar(CLng(2)))
  loc_14CD4DA:     var_544 = CVar(CLng(var_98)) 'Long
  loc_14CD4E2:     var_564 = CVar(CLng(5)) 'Long
  loc_14CD50B:     var_5DC = CVar(CLng(var_98)) 'Long
  loc_14CD513:     var_5FC = CVar(CLng(6)) 'Long
  loc_14CD522:     var_620 = Me.FGrid.TextMatrix)
  loc_14CD549:     var_6F4 = Me.FGrid.TextMatrix)
  loc_14CD563:     Set var_738 = Me.Txt
  loc_14CD569:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_73C, var_740, var_6F4, CVar(CLng(&HA)), CVar(CLng(var_98)), var_620)
  loc_14CD571:     var_5FC = var_73C.Tag
  loc_14CD58A:     var_A8 = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,COntraDocId,ContraSno,DepartCode,GodownCode,Rate,RecdQty,AccQty,RecdUnit,Amount,ConvRatio,U_Name,U_EntDt,U_AE,QtyRec,Unit,LogSite_Code,ItemRestCode,ShiftCode)" & " VALUES ('"
  loc_14CD5D8:     var_1B0 = var_A8 & global_76 & "'," & CStr(var_7B0) & ",'" & var_A0.Caption & "','" & MemVar_1F92070 & "'," & "'BKREC'" & ","
  loc_14CD633:     var_258 = var_1B0 & CStr(var_7B8) & ",'" & var_1C4 & "','" & CStr(var_108) & "','',0,'" & var_1E8 & "','" & var_1FC & "'," & CStr(Val(CStr(var_118)))
  loc_14CD67E:     var_3D4 = var_258 & "," & CStr(Val(CStr(var_128))) & "," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CStr(var_364) & "'," & CStr(var_7D8)
  loc_14CD6BB:     var_514 = CVar(var_3D4 & ",'" & CStr(var_428) & "','" & MemVar_1F920C8 & "',") & var_44C & ",'" & IIf((CStr(var_4A0) = "Add"), "A", "E") 
  loc_14CD6FF:     var_6A0 = var_514 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_620)) & "','" & CVar(MemVar_1F92078) & "','" 
  loc_14CD734:     unk_4D1024.Execute CStr(var_6A0 & CVar(CStr(var_6F4)) & "','" & CVar(var_740) & "')"), var_7A4, -1
  loc_14CD82C:     var_96 = &HFF
  loc_14CD82F:   End If
  loc_14CD832: Next var_148 'Integer
  loc_14CD83D: If (var_96 = 0) Then
  loc_14CD859:   MsgBox("Nil Details Can't Be Saved", &H40, var_108, var_118, var_128)
  loc_14CD86F:   unk_4D1024.RollbackTrans
  loc_14CD874:   Exit Sub
  loc_14CD875: End If
  loc_14CD879: Set var_9C = Me.TopCtrl1
  loc_14CD87F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_14CD898: If (CStr() = "Add") Then
  loc_14CD89F:   Set var_88 = New 
  loc_14CD8AA:   Me.Recordset15.CursorLocation = 3
  loc_14CD8BD:   Set var_9C = Me.Txt
  loc_14CD8C3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A0)
  loc_14CD8D3:   var_F8 = CVar(var_A0.Text) 'String
  loc_14CD8D9:   Proc_6_7_F25D88(var_108)
  loc_14CD8FC:   var_A8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_14CD922:   var_118 = CVar(var_A8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_68 & "' And VP.Date_From<=") 'String
  loc_14CD939:   var_88.Open var_118 & var_108 & " Order By VP.Date_From DESC", CVar(MemVar_1F92044), 2
  loc_14CD973:   If (var_88.RecordCount > 0) Then
  loc_14CD984:     Set var_9C = Me.Txt
  loc_14CD98A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0, var_A8)
  loc_14CD992:     3 = var_A0.Text
  loc_14CD99F:     var_7B0 = Val(var_A8)
  loc_14CD9A8:     var_B8 = "V_Type"
  loc_14CD9C4:     var_F8 = var_88.Fields.Item(var_B8).Value
  loc_14CD9EF:     Proc_6_7_F25D88(var_364, CVar(var_88.Fields.Item("Date_From")), var_7B0)
  loc_14CDA22:     var_188 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_7B0) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_14CDA54:     unk_4D1024.Execute CStr(CVar(var_188 & MemVar_1F92078 & "') and V_Type='") & var_F8 & "' and Date_From=" & var_364), var_428, -1
  loc_14CDA8E:   End If
  loc_14CDA8E: End If
  loc_14CDA94: unk_4D1024.CommitTrans
  loc_14CDA9B: var_8E = 0
  loc_14CDAAC: Set var_9C = Me.Txt
  loc_14CDAB2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A8, var_8E)
  loc_14CDABA: var_1D0 = var_A0.Text
  loc_14CDAD7: Me.Requery -1
  loc_14CDB01: Me.Find "SearchCode ='" & "SearchCode ='" & var_A8 & "'", 0, 1
  loc_14CDB0D: Call Proc_213_46_14560BC(var_B8, -1)
  loc_14CDB16: Set var_9C = Me.TopCtrl1
  loc_14CDB1C: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_F8)
  loc_14CDB35: If (CStr() = "Add") Then
  loc_14CDB38:   Call TopCtrl1_UnknownEvent_A()
  loc_14CDB3D:   Exit Sub
  loc_14CDB3E: End If
  loc_14CDB61: Call Proc_213_47_EFE748(Proc_5_1_100CB50("INI", Me))
  loc_14CDB71: Set var_88 = Nothing
  loc_14CDB79: Set var_8C = Nothing
  loc_14CDB7C: Exit Sub
  loc_14CDB7D: ' Referenced from: 14CCFC8
  loc_14CDB83: If (var_8E = &HFF) Then
  loc_14CDB8C:   unk_4D1024.RollbackTrans
  loc_14CDB91: End If
  loc_14CDB91: Proc_6_60_E62BC4(global_56)
  loc_14CDB96: Exit Sub
End Sub

Private Sub Form_Load() '11B6C50
  'Data Table: 4D100C
  Dim var_8C As Variant
  Dim var_BC As String
  Dim var_F0 As String
  Dim unk_4D1024 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_118 As Label
  loc_11B6817: Set var_8C = Me.LblCaption
  loc_11B681D: var_8C.Caption = "Finish Material Received"
  loc_11B6832: var_BC = "Select E.PurChaseGodown,G.Name PurChaseGodownName,E.BarCodeFeatureInPurchase,E.DateEditableOnRequisitionYN From Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code WHERE E.LOGSITE_CODE="
  loc_11B6842: Proc_6_17_EAA2B0(var_AC, MemVar_1F92078, var_BC)
  loc_11B6861: unk_4D1024.Execute CStr(var_110 & var_AC & vbNullString), -1, var_8C
  loc_11B686C: Set var_88 = var_8C
  loc_11B6894: If (var_88.RecordCount > 0) Then
  loc_11B68C5:   global_92 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("BarCodeFeatureInPurchase")))
  loc_11B68E9:   var_118 = var_88.Fields.Item("DateEditableOnRequisitionYN")
  loc_11B6900:   global_96 = Proc_6_38_E68A98(CVar(var_118))
  loc_11B690D: End If
  loc_11B6917: Set global_60 = New 
  loc_11B6929: Me.CursorLocation = 3
  loc_11B6939: If (global_92 = "Yes") Then
  loc_11B695A:   var_F0 = "Select I.Code,I.BarCode,I.Name,I.Unit,I.IssueUnit,I.PurchRate as Rate,I.ConvRatio,I.RestCode From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_11B696B:   Me.Open CVar(var_F0 & "' or LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.BarCode"), CVar(MemVar_1F92044), 3
  loc_11B6979: Else
  loc_11B6997:   var_F0 = "Select I.Code,I.BarCode,I.Name,I.Unit,I.IssueUnit,I.PurchRate as Rate,I.ConvRatio,I.RestCode From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_11B69A8:   Me.Open CVar(var_F0 & "' or LOGSITE_CODE='HO') And I.ItemType='Store' And I.ActiveYN<>'No' Order by I.Name"), CVar(MemVar_1F92044), 3
  loc_11B69B3: End If
  loc_11B69BC: CVarUnk
  loc_11B69C1: VerifyVarObj
  loc_11B69C7: Set var_8C = Me.DGItem
  loc_11B69CD: LateIdStAd
  loc_11B69E5: Set global_52 = New 
  loc_11B69F7: Me.DGItem.CursorLocation = 3
  loc_11B6A21: var_AC = CVar("Select G.Code,G.Name From GodownMast G iNNER join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078 & "')  Order by G.Name") 'String
  loc_11B6A2B: Me.Open var_AC, CVar(MemVar_1F92044), 2
  loc_11B6A3F: CVarUnk
  loc_11B6A44: VerifyVarObj
  loc_11B6A4A: Set var_8C = Me.DGDepart
  loc_11B6A50: LateIdStAd
  loc_11B6A7A: Me.DGDepart.CursorLocation = 3
  loc_11B6AAE: Me.Open CVar("Select Code,Name From ShiftMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "') Order by Name"), CVar(MemVar_1F92044), 2
  loc_11B6AC2: CVarUnk
  loc_11B6AC7: VerifyVarObj
  loc_11B6ACD: Set var_8C = Me.DGShift
  loc_11B6AD3: LateIdStAd
  loc_11B6AEC: If (global_92 = "Yes") Then
  loc_11B6AFB:   Me.TxtBarCode.Visible = True
  loc_11B6B0E:   Set var_8C = Me.Label1
  loc_11B6B14:   Call 0.Method_Form_Load0 (6, var_118, &HFF, var_8C, New, 3, -1)
  loc_11B6B1C:   var_118.Visible = var_8C
  loc_11B6B28: End If
  loc_11B6B44: Me.CursorLocation = 3
  loc_11B6B6E: var_AC = CVar("Select Distinct DocID as SearchCode,Site_Code,LogSite_Code From Stock WHERE   LOGSITE_CODE='" & MemVar_1F92078 & "' and VTYPE='BKREC' order by  DocID") 'String
  loc_11B6B78: Me.Open var_AC, CVar(MemVar_1F92044), 2
  loc_11B6B89: global_68 = "BKREC"
  loc_11B6B8D: Call Proc_213_50_124B974(3, -1, global_52, 3)
  loc_11B6BB5: Call Proc_213_47_EFE748(Proc_5_1_100CB50("INI", Me, New, -1), Me)
  loc_11B6BC0: Call Proc_213_46_14560BC(global_60)
  loc_11B6BD4: Me.LblUser.Left = CDbl(13500)
  loc_11B6BEB: Me.LblUser.Top = CDbl(7800)
  loc_11B6C02: Me.LblLDt.Top = CDbl(8160)
  loc_11B6C19: Me.LblLDt.Left = CDbl(13500)
  loc_11B6C39: Proc_6_23_DFBA28(Me, 5445)
  loc_11B6C46: Set var_88 = Nothing
  loc_11B6C49: Exit Sub
  loc_11B6C4A: Proc_6_60_E62BC4(10695)
  loc_11B6C4F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E626B8
  'Data Table: 4D100C
  loc_E62677: Set global_56 = Nothing
  loc_E62689: Set global_52 = Nothing
  loc_E6269B: Set global_60 = Nothing
  loc_E626AD: Set global_64 = Nothing
  loc_E626B4: Exit Sub
End Sub

Private Sub Form_Activate() 'E2B214
  'Data Table: 4D100C
  loc_E2B1F0: Set var_88 = Me.TopCtrl1
  loc_E2B1F6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030000()
  loc_E2B20B: If (CLng(CInt()) = &H2D) Then
  loc_E2B20E:   Call TopCtrl1_UnknownEvent_15()
  loc_E2B213: End If
  loc_E2B213: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E7F5C4
  'Data Table: 4D100C
  loc_E7F558: On Error Goto loc_E7F5BB
  loc_E7F589: If (((global_92 = "Yes") And (Shift = 1)) And (Me.TxtBarCode.Visible = &HFF)) Then
  loc_E7F596:   Me.TxtBarCode.SetFocus
  loc_E7F59E: End If
  loc_E7F5B2: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E7F5BA: Exit Sub
  loc_E7F5BB: ' Referenced from: E7F558
  loc_E7F5BB: Proc_6_60_E62BC4(Shift)
  loc_E7F5C0: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1174ABC
  'Data Table: 4D100C
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
  loc_11746F8: On Error Goto loc_1174AB3
  loc_11746FB: Call Proc_213_48_EBA61C()
  loc_1174716: Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_1174731: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_117473A: Set var_BC = Me.FGrid
  loc_117476F: Set var_104 = Me.TxtGrid
  loc_1174775: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_117477D: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_11747AA: Set var_A8 = Me.TxtGrid
  loc_11747B0: Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11747B8: var_BC.MaxLength = 0
  loc_11747E7: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_11747F6:   Set var_A8 = Me.TxtGrid
  loc_11747FC:   Call 0.Method_TxtGrid_GotFocus0 (0, var_BC, var_114)
  loc_1174804:   var_110 = var_BC.Left
  loc_117481B:   Me.DGItem.Left = CVar(var_114)
  loc_1174835:   Set var_F0 = Me.TxtGrid
  loc_117483B:   Call 0.Method_TxtGrid_GotFocus0 (0, var_104)
  loc_1174854:   Set var_A8 = Me.TxtGrid
  loc_117485A:   Call 0.Method_TxtGrid_GotFocus0 (0, var_BC)
  loc_117486E:   var_94 = CVar((var_BC.Top + var_104.Height)) 'Single
  loc_117487D:   Me.DGItem.Top = CVar(var_BC.Top)
  loc_11748D0:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11748D3:     Exit Sub
  loc_11748D4:   End If
  loc_11748E7:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11748EF:   var_DC = CVar(CLng(1)) 'Long
  loc_1174922:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_117492B:     Me.MoveFirst
  loc_117494B:     var_DC = CVar(CLng(9)) 'Long
  loc_1174954:     Set var_BC = Me.FGrid
  loc_117496B:     Proc_6_17_EAA2B0(var_12C, CVar(CStr(var_BC.TextMatrix))), var_DC, CVar(CLng(Me.FGrid.Row)))
  loc_117498A:     var_10C = CStr("Code =" & var_12C)
  loc_1174994:     Me.Find var_10C, 0, 1
  loc_11749C4:     If (Me.EOF = &HFF) Then
  loc_11749CD:       Me.MoveFirst
  loc_11749D2:     End If
  loc_11749D2:   End If
  loc_11749D5: Else
  loc_11749DC:   If Not (var_110 = CLng(7)) Then
  loc_11749E6:     If (var_110 = CLng(3)) Then
  loc_11749E9:     End If
  loc_11749F2:     If (global_88 = 0) Then
  loc_1174A04:       Set var_A8 = Me.TxtGrid
  loc_1174A0A:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 0, var_15C)
  loc_1174A12:       var_BC.SelStart = var_DC
  loc_1174A2B:       Set var_A8 = Me.TxtGrid
  loc_1174A31:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, var_10C)
  loc_1174A39:       var_94 = var_BC.Text
  loc_1174A4C:       Set var_F0 = Me.TxtGrid
  loc_1174A52:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_104)
  loc_1174A5A:       var_104.SelLength = Len(var_10C)
  loc_1174A6D:     End If
  loc_1174A70:   Else
  loc_1174A77:     If (var_110 = CLng(4)) Then
  loc_1174A87:       Set var_A8 = Me.TxtGrid
  loc_1174A8D:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_1174AA5:       global_100 = Val(var_BC.Text)
  loc_1174AB2:     End If
  loc_1174AB2:   End If
  loc_1174AB2: End If
  loc_1174AB2: Exit Sub
  loc_1174AB3: ' Referenced from: 11746F8
  loc_1174AB3: Proc_6_60_E62BC4(global_100)
  loc_1174AB8: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11CD7EC
  'Data Table: 4D100C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_11CD380: On Error Goto loc_11CD7E3
  loc_11CD38D: If (CLng(Shift) = &H1B) Then
  loc_11CD39C:   Set var_88 = Me.TxtGrid
  loc_11CD3A2:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_11CD3BB:   Set var_94 = Me.TxtGrid
  loc_11CD3C1:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_11CD3C9:   var_98.Text = var_8C.Tag
  loc_11CD3E5:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_11CD3EE:   Set var_88 = Me.FGrid
  loc_11CD40A:   Set var_88 = Me.TxtGrid
  loc_11CD410:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, 0)
  loc_11CD418:   var_8C.Visible = FGrid.DispID_8001
  loc_11CD424:   Exit Sub
  loc_11CD425: End If
  loc_11CD438: var_AC = CLng(Me.FGrid.Col)
  loc_11CD448: If (var_AC = CLng(1)) Then
  loc_11CD456:   If (global_92 = "Yes") Then
  loc_11CD471:     Set var_98 = Nothing
  loc_11CD47C:     Set var_94 = Nothing
  loc_11CD4AA:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF)
  loc_11CD4C1:   Else
  loc_11CD4D9:     Set var_98 = Nothing
  loc_11CD512:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF, 2, Nothing)
  loc_11CD526:   End If
  loc_11CD530:   If (CLng(Shift) = &HD) Then
  loc_11CD53E:     Call Proc_213_44_1482AAC(KeyCode, 0, var_B0, var_98, 0, 1)
  loc_11CD549:     If (var_B0 = &HFF) Then
  loc_11CD58F:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_88, 9, 2)
  loc_11CD59F:     End If
  loc_11CD59F:   End If
  loc_11CD5A2: Else
  loc_11CD5A9:   If (var_AC = CLng(3)) Then
  loc_11CD5EC:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_88 = &HFF))) Then
  loc_11CD5FC:       Call Proc_213_44_1482AAC(0, 0, var_B2, 3, 0)
  loc_11CD607:       If (var_B2 = &HFF) Then
  loc_11CD64D:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_88, 9, 0)
  loc_11CD65D:       End If
  loc_11CD65D:     End If
  loc_11CD660:   Else
  loc_11CD667:     If (var_AC = CLng(7)) Then
  loc_11CD6AA:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_88 = &HFF))) Then
  loc_11CD6BA:         Call Proc_213_44_1482AAC(0, 0, var_B2, 7, 0)
  loc_11CD6C5:         If (var_B2 = &HFF) Then
  loc_11CD70D:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_88, 9, CByte(2))
  loc_11CD71D:         End If
  loc_11CD71D:       End If
  loc_11CD720:     Else
  loc_11CD727:       If (var_AC = CLng(4)) Then
  loc_11CD76A:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_88 = &HFF))) Then
  loc_11CD77A:           Call Proc_213_44_1482AAC(0, 0, var_B2, 0, 0)
  loc_11CD785:           If (var_B2 = &HFF) Then
  loc_11CD78C:             Set var_94 = Me.FGrid
  loc_11CD793:             Set var_98 = Me.TxtGrid
  loc_11CD7D2:             Proc_6_62_1253BC4(var_94, var_98, KeyCode, Shift, global_88, CByte((CInt(7) + 1)), 0)
  loc_11CD7E2:           End If
  loc_11CD7E2:         End If
  loc_11CD7E2:       End If
  loc_11CD7E2:     End If
  loc_11CD7E2:   End If
  loc_11CD7E2: End If
  loc_11CD7E2: Exit Sub
  loc_11CD7E3: ' Referenced from: 11CD380
  loc_11CD7E3: Proc_6_60_E62BC4(7, 0, var_94, var_98)
  loc_11CD7E8: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '109EB54
  'Data Table: 4D100C
  Dim arg_10 As Integer
  Dim var_A0 As Variant
  Dim var_9C As Variant
  Dim var_A4 As Long
  Dim var_A8 As TextBox
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Long
  loc_109E88C: On Error Goto loc_109EB4D
  loc_109E892: Proc_6_58_E054C0(arg_10)
  loc_109E89D: Proc_6_133_E7EF78(var_9C)
  loc_109E8A6: arg_10 = CInt(var_9C)
  loc_109E8CF: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_109E8EE:   If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_109E8FC:     If (global_92 = "Yes") Then
  loc_109E90B:       Set var_A0 = Me.TxtGrid
  loc_109E911:       Call 0.Method_TxtGrid_KeyPress0 (0, var_A8, var_AC)
  loc_109E919:       var_A4 = var_A8.Text
  loc_109E923:       var_86 = CInt(Len(var_AC))
  loc_109E933:       var_88 = arg_10
  loc_109E93A:       Set var_A8 = Me.TxtGrid
  loc_109E945:       var_AC = "BarCode"
  loc_109E960:       Proc_6_89_146F1AC(var_A8, KeyAscii, global_60, arg_10, var_AC)
  loc_109E97B:       Set var_A0 = Me.TxtGrid
  loc_109E981:       Call 0.Method_TxtGrid_KeyPress0 (0, var_A8, var_AC, 0)
  loc_109E989:       var_88 = var_A8.Text
  loc_109E9A1:       If (Len(var_AC) = CLng(var_86)) Then
  loc_109E9BB:         If (Me.AbsolutePosition > 0) Then
  loc_109E9CF:           var_8C = Me.AbsolutePosition
  loc_109E9D5:         Else
  loc_109E9DA:           var_8C = 1
  loc_109E9DD:         End If
  loc_109E9E0:         arg_10 = var_88
  loc_109EA0D:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_60, arg_10, "Name", 0)
  loc_109EA33:         If (Me.AbsolutePosition <= 0) Then
  loc_109EA3F:           Me.AbsolutePosition = var_8C
  loc_109EA44:         End If
  loc_109EA44:       End If
  loc_109EA47:     Else
  loc_109EA4B:       Set var_A8 = Me.TxtGrid
  loc_109EA71:       Proc_6_89_146F1AC(var_A8, KeyAscii, global_60, arg_10, "Name", 0)
  loc_109EA80:     End If
  loc_109EA80:   End If
  loc_109EA83: Else
  loc_109EA8A:   If (var_A4 = CLng(3)) Then
  loc_109EA97:     Set var_A0 = Me.TxtGrid
  loc_109EA9D:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, arg_10, var_8C)
  loc_109EAB8:     Proc_6_42_129A86C(var_A8, arg_10, 8, 3)
  loc_109EAC7:   Else
  loc_109EACE:     If (var_A4 = CLng(7)) Then
  loc_109EADB:       Set var_A0 = Me.TxtGrid
  loc_109EAE1:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, var_8C)
  loc_109EAFC:       Proc_6_42_129A86C(var_A8, arg_10, 8, 2)
  loc_109EB0B:     Else
  loc_109EB12:       If (var_A4 = CLng(4)) Then
  loc_109EB1F:         Set var_A0 = Me.TxtGrid
  loc_109EB25:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8, var_86)
  loc_109EB40:         Proc_6_42_129A86C(var_A8, arg_10, 6)
  loc_109EB4C:       End If
  loc_109EB4C:     End If
  loc_109EB4C:   End If
  loc_109EB4C: End If
  loc_109EB4C: Exit Sub
  loc_109EB4D: ' Referenced from: 109E88C
  loc_109EB4D: Proc_6_60_E62BC4(2, arg_10)
  loc_109EB52: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10A9124
  'Data Table: 4D100C
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As Variant
  Dim var_180 As Double
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_178 As MSHFlexGrid
  Dim var_A8 As String
  Dim var_FC As String
  loc_10A8E74: On Error Goto loc_10A911B
  loc_10A8E83: If (KeyCode = 0) Then
  loc_10A8E99:   var_A0 = CLng(Me.FGrid.Col)
  loc_10A8EA9:   If (var_A0 = CLng(1)) Then
  loc_10A8ECF:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_10A8EE0:       Call TxtGrid_KeyDown(KeyCode, global_90)
  loc_10A8EF0:       If (global_92 = "Yes") Then
  loc_10A8F1D:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_60, Shift, "BarCode")
  loc_10A8F2F:       Else
  loc_10A8F33:         Set var_AC = Me.TxtGrid
  loc_10A8F3E:         var_A8 = "Name"
  loc_10A8F59:         Proc_6_89_146F1AC(var_AC, KeyCode, global_60, Shift, var_A8)
  loc_10A8F68:       End If
  loc_10A8F68:     End If
  loc_10A8F6B:   Else
  loc_10A8F72:     If Not (var_A0 = CLng(3)) Then
  loc_10A8F7C:       If (var_A0 = CLng(4)) Then
  loc_10A8F7F:       End If
  loc_10A8F8C:       Set var_8C = Me.TxtGrid
  loc_10A8F92:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, &HFF)
  loc_10A8F9A:       &HFF = var_AC.Text
  loc_10A8FBD:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A8FD5:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10A9002:       var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_10A900A:       Set var_178 = Me.FGrid
  loc_10A9010:       LateIdCallSt
  loc_10A904A:       var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A9074:       var_180 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10A907B:       Set var_178 = Me.FGrid
  loc_10A90DA:       var_164 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * var_180))) 'String
  loc_10A90E8:       LateIdCallSt
  loc_10A9115:       Call Proc_213_51_F70C00(Me.FGrid, var_164, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(5)), CVar(CLng(var_178.Row)), var_180, CVar(CLng(4)))
  loc_10A911A:     End If
  loc_10A911A:   End If
  loc_10A911A: End If
  loc_10A911A: Exit Sub
  loc_10A911B: ' Referenced from: 10A8E74
  loc_10A911B: Proc_6_60_E62BC4(var_144, var_178, var_164, 1)
  loc_10A9120: Exit Sub
  loc_10A9121: var_FC = 1
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21B34
  'Data Table: 4D100C
  Dim arg_10 As Integer
  loc_E21B10: On Error Goto loc_E21B2B
  loc_E21B1E: Call Proc_213_44_1482AAC(Cancel, &HFF)
  loc_E21B27: arg_10 = Not(var_88)
  loc_E21B2A: Exit Sub
  loc_E21B2B: ' Referenced from: E21B10
  loc_E21B2B: Proc_6_60_E62BC4(arg_10)
  loc_E21B30: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1179D3C
  'Data Table: 4D100C
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_C4 As Variant
  Dim var_98 As String
  Dim Me As Recordset15
  loc_1179982: Set var_88 = Me.Txt
  loc_1179988: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1179996: Proc_6_74_E226B0(var_8C)
  loc_11799A2: Call Proc_213_48_EBA61C(var_8C)
  loc_11799AA: var_92 = Index
  loc_11799B5: If (var_92 = CInt(3)) Then
  loc_11799C2:   Set global_52 = New 
  loc_11799D4:   Me.Txt.CursorLocation = 3
  loc_11799E7:   Set var_88 = Me.Txt
  loc_11799ED:   Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_1179A18:   var_98 = "Select distinct G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_1179A37:   Me.Open CVar(var_98 & "') and G.CODE<>'" & var_8C.Tag & "'  Order by G.Name"), CVar(MemVar_1F92044), 2
  loc_1179A5A:   CVarUnk
  loc_1179A5F:   VerifyVarObj
  loc_1179A65:   Set var_88 = Me.DGDepart
  loc_1179A6B:   LateIdStAd
  loc_1179ACD:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), Me.Txt)
  loc_1179AD5:   global_52 = var_8C.Text
  loc_1179AED:   If (3 Or (var_98 = vbNullString)) Then
  loc_1179AF0:     Exit Sub
  loc_1179AF1:   End If
  loc_1179AFE:   Set var_88 = Me.Txt
  loc_1179B04:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1179B0C:   -1 = var_8C.Text
  loc_1179B1E:   var_C4 = "Name"
  loc_1179B59:   If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_1179B62:     Me.MoveFirst
  loc_1179B85:     Set var_88 = Me.Txt
  loc_1179B8B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1179B93:     0 = var_8C.Text
  loc_1179BAC:     Me.Find 1 & var_98 & "'", var_C4, var_92
  loc_1179BC1:   End If
  loc_1179BC4: Else
  loc_1179BCC:   If (var_92 = CInt(5)) Then
  loc_1179C1D:     Set var_88 = Me.Txt
  loc_1179C23:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1179C43:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1179C46:       Exit Sub
  loc_1179C47:     End If
  loc_1179C54:     Set var_88 = Me.Txt
  loc_1179C5A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1179C62:     var_98 = var_8C.Text
  loc_1179C74:     var_C4 = "Name"
  loc_1179CAF:     If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_1179CB8:       Me.MoveFirst
  loc_1179CDB:       Set var_88 = Me.Txt
  loc_1179CE1:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1179CE9:       0 = var_8C.Text
  loc_1179D02:       Me.Find 1 & var_98 & "'", var_C4, 
  loc_1179D17:     End If
  loc_1179D1A:   Else
  loc_1179D22:     If (var_92 = CInt(2)) Then
  loc_1179D2D:       var_98 = "{Home}+{End}"
  loc_1179D33:       Proc_303_0_FB9B68(var_98)
  loc_1179D3B:     End If
  loc_1179D3B:   End If
  loc_1179D3B: End If
  loc_1179D3B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1154D54
  'Data Table: 4D100C
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim var_90 As Variant
  Dim var_B0 As Variant
  Dim var_98 As DataGrid
  Dim var_8C As DataGrid
  loc_11549C2: If (CLng(Shift) = &H1B) Then
  loc_11549C5:   Call Proc_213_48_EBA61C()
  loc_11549CA:   Exit Sub
  loc_11549CB: End If
  loc_11549CE: var_86 = KeyCode
  loc_11549D9: If (var_86 = CInt(3)) Then
  loc_11549E9:   Set var_98 = Me.Txt
  loc_11549EF:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11549F7:   var_A0 = var_9C.Height
  loc_1154A09:   Set var_8C = Me.Txt
  loc_1154A0F:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_1154A27:   var_B0 = CVar(((var_90.Top + var_A0) + CDbl(&H19))) 'Single
  loc_1154A36:   Me.DGDepart.Top = var_B0
  loc_1154A55:   Set var_8C = Me.Txt
  loc_1154A5B:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_1154A63:   var_94 = var_90.Left
  loc_1154A7A:   Me.DGDepart.Left = CVar(var_94)
  loc_1154AA0:   Set var_9C = Nothing
  loc_1154AAB:   Set var_98 = Nothing
  loc_1154ACA:   Set var_90 = Me.Txt
  loc_1154AD9:   Proc_6_69_134A198(Me.DGDepart, var_90, KeyCode, global_52, Shift, &HFF)
  loc_1154AF0: Else
  loc_1154AF8:   If (var_86 = CInt(5)) Then
  loc_1154B08:     Set var_98 = Me.Txt
  loc_1154B0E:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_A0, 1)
  loc_1154B16:     var_98 = var_9C.Height
  loc_1154B28:     Set var_8C = Me.Txt
  loc_1154B2E:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_1154B36:     var_9C = var_90.Top
  loc_1154B46:     var_B0 = CVar(((var_94 + var_A0) + CDbl(&H19))) 'Single
  loc_1154B55:     Me.DGShift.Top = CVar(var_94)
  loc_1154B74:     Set var_8C = Me.Txt
  loc_1154B7A:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_94)
  loc_1154B82:     0 = var_90.Left
  loc_1154B99:     Me.DGShift.Left = CVar(var_94)
  loc_1154BBF:     Set var_9C = Nothing
  loc_1154BCA:     Set var_98 = Nothing
  loc_1154BF8:     Proc_6_69_134A198(Me.DGShift, Me.Txt, KeyCode, global_64, Shift, &HFF)
  loc_1154C0C:   End If
  loc_1154C0C: End If
  loc_1154C3D: Set var_98 = Me.DGItem
  loc_1154C54: Set var_9C = Me.DGShift
  loc_1154C7D: If ((((CBool(Me.DGDepart.Visible) = 0) And (CBool(Me.DGToDepart.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_1154C95:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1154C9E:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_1154CA3:   End If
  loc_1154CA7:   Set var_8C = Me.TopCtrl1
  loc_1154CAD:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_9C)
  loc_1154CD8:   If (((CStr(0) = "Add") And (KeyCode <> CInt(1))) And (KeyCode <> CInt(2))) Then
  loc_1154CF0:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1154CF9:       Proc_6_76_E52838(Shift, arg_14)
  loc_1154CFE:     End If
  loc_1154CFE:   End If
  loc_1154D02:   Set var_8C = Me.TopCtrl1
  loc_1154D08:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_86)
  loc_1154D2A:   If ((CStr() = "Edit") And (KeyCode <> CInt(2))) Then
  loc_1154D42:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1154D4B:       Proc_6_76_E52838(Shift)
  loc_1154D50:     End If
  loc_1154D50:   End If
  loc_1154D50: End If
  loc_1154D50: Exit Sub
  loc_1154D51: ThisVCallR4
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F69344
  'Data Table: 4D100C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F69213: Proc_6_58_E054C0(arg_10)
  loc_F6921E: Proc_6_133_E7EF78(var_94)
  loc_F69227: arg_10 = CInt(var_94)
  loc_F69230: var_96 = KeyAscii
  loc_F6923B: If (var_96 = CInt(3)) Then
  loc_F6925A:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_F69287:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_52, arg_10, "Name")
  loc_F69296:   End If
  loc_F69299: Else
  loc_F692A1:   If (var_96 = CInt(5)) Then
  loc_F692C0:     If (CBool(Me.DGShift.Visible) = &HFF) Then
  loc_F692C7:       Set var_A8 = Me.Txt
  loc_F692ED:       Proc_6_89_146F1AC(var_A8, KeyAscii, global_64, arg_10, "Name")
  loc_F692FC:     End If
  loc_F692FF:   Else
  loc_F69307:     If (var_96 = CInt(1)) Then
  loc_F69314:       Set var_9C = Me.Txt
  loc_F6931A:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0, 0)
  loc_F69335:       Proc_6_42_129A86C(var_A8, arg_10, 8, 0)
  loc_F69341:     End If
  loc_F69341:   End If
  loc_F69341: End If
  loc_F69341: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFDE6C
  'Data Table: 4D100C
  Dim var_86 As Integer
  loc_DFDE67: var_86 = KeyCode
  loc_DFDE6A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4BEAC
  'Data Table: 4D100C
  loc_E4BE8A: Set var_88 = Me.Txt
  loc_E4BE90: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4BE9E: Proc_6_73_E22704(var_8C)
  loc_E4BEAA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '135060C
  'Data Table: 4D100C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_98 As String
  Dim var_C8 As Integer
  Dim unk_4D1024 As Connection15
  Dim var_8C As Variant
  Dim var_94 As Field20
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_124 As TextBox
  Dim Me As Recordset15
  Dim var_120 As TextBox
  loc_134FE07: var_86 = Cancel
  loc_134FE12: If (var_86 = CInt(1)) Then
  loc_134FE20:   Set var_8C = Me.Txt
  loc_134FE26:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_134FE2E:   var_98 = "Vr No"
  loc_134FE4F:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_134FE5C:     Set var_8C = Me.Txt
  loc_134FE62:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134FE6A:     var_90.SetFocus
  loc_134FE78:     arg_10 = &HFF
  loc_134FE7B:     Exit Sub
  loc_134FE7C:   End If
  loc_134FE8A:   Set var_8C = Me.Txt
  loc_134FE90:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_134FE98:   arg_10 = var_90.Text
  loc_134FEB0:   If (CDbl(var_98) = CDbl(0)) Then
  loc_134FEC6:     var_B8 = "Vr No Can Not Be 0"
  loc_134FECC:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_134FEE6:     Set var_8C = Me.Txt
  loc_134FEEC:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134FEF4:     var_90.SetFocus
  loc_134FF02:     arg_10 = &HFF
  loc_134FF05:     Exit Sub
  loc_134FF06:   End If
  loc_134FF0A:   Set var_8C = Me.TopCtrl1
  loc_134FF10:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_134FF18:   var_98 = CStr(var_86)
  loc_134FF29:   If (var_98 = "Add") Then
  loc_134FF32:     Call Proc_213_49_115D4B8(MemVar_1F92044)
  loc_134FF45:     Set var_8C = Me.Txt
  loc_134FF4B:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_134FF53:     var_90.Text = var_98
  loc_134FF68:     Call Proc_213_49_115D4B8(MemVar_1F92044, var_98)
  loc_134FF73:     global_76 = var_98
  loc_134FF7A:   End If
  loc_134FF7E:   Set var_8C = Me.TopCtrl1
  loc_134FF84:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_98)
  loc_134FF9D:   If (CStr() = "Add") Then
  loc_134FFA6:     var_C8 = 0
  loc_134FFC6:     var_98 = "Select Count(*) From Stock Where DocID='" & global_76
  loc_134FFD6:     unk_4D1024.Execute var_98 & "'", var_B8, -1
  loc_134FFDE:     var_8C = var_8C.Fields
  loc_134FFE6:     var_C8 = var_90.Item(var_90)
  loc_134FFEE:     var_94 = var_94.Value
  loc_1350015:     If (var_D8 > 0) Then
  loc_135001E:       Call 0.Method_arg_50 (var_98)
  loc_135003F:       MsgBox("Duplicate Vr No.", &H40, CVar(var_98), var_F8, var_118)
  loc_1350055:       Call Proc_213_49_115D4B8(MemVar_1F92044, var_98)
  loc_1350065:       If (var_98 = vbNullString) Then
  loc_1350072:         Set var_8C = Me.Txt
  loc_1350078:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1350080:         var_90.SetFocus
  loc_135008E:         arg_10 = &HFF
  loc_1350091:         Exit Sub
  loc_1350092:       End If
  loc_1350098:       Call Proc_213_49_115D4B8(MemVar_1F92044, var_98)
  loc_13500AB:       Set var_8C = Me.Txt
  loc_13500B1:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_13500B9:       var_90.Text = arg_10
  loc_13500CE:       Call Proc_213_49_115D4B8(MemVar_1F92044, var_98)
  loc_13500D9:       global_76 = var_98
  loc_13500E2:       arg_10 = &HFF
  loc_13500E5:       Exit Sub
  loc_13500E6:     End If
  loc_13500E6:   End If
  loc_13500E9: Else
  loc_13500F1:   If (var_86 = CInt(2)) Then
  loc_1350101:     Set var_8C = Me.Txt
  loc_1350107:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_135010F:     arg_10 = var_90.Text
  loc_135011D:     var_D8 = Trim(CVar(var_98))
  loc_135013F:     If (Len(var_D8) = 0) Then
  loc_1350154:       Set var_8C = Me.Txt
  loc_135015A:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1350162:       var_90.Text = CStr(MemVar_1F920EC)
  loc_1350174:     Else
  loc_135017E:       Set var_8C = Me.Txt
  loc_1350184:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13501A4:       Set var_120 = Me.Txt
  loc_13501AA:       Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_13501B2:       var_124.Text = Proc_6_33_1512840(var_90)
  loc_13501C5:     End If
  loc_13501C9:     Set var_8C = Me.TopCtrl1
  loc_13501CF:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_D8)
  loc_13501D7:     var_98 = CStr()
  loc_13501E8:     If (var_98 = "Add") Then
  loc_13501F1:       Call Proc_213_49_115D4B8(MemVar_1F92044)
  loc_1350201:       If (var_98 = vbNullString) Then
  loc_135020E:         Set var_8C = Me.Txt
  loc_1350214:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_135021C:         var_90.SetFocus
  loc_135022A:         arg_10 = &HFF
  loc_135022D:         Exit Sub
  loc_135022E:       End If
  loc_1350234:       Call Proc_213_49_115D4B8(MemVar_1F92044, var_98)
  loc_1350247:       Set var_8C = Me.Txt
  loc_135024D:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1350255:       var_90.Text = arg_10
  loc_135026A:       Call Proc_213_49_115D4B8(MemVar_1F92044, var_98)
  loc_1350275:       global_76 = var_98
  loc_135027C:     End If
  loc_135028A:     Set var_8C = Me.Txt
  loc_1350290:     Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_1350298:     var_98 = var_90.Text
  loc_13502B8:     If (Proc_6_91_EF2D40(CDate(var_98)) = 0) Then
  loc_13502C6:       Set var_8C = Me.Txt
  loc_13502CC:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_13502D4:       var_90.SetFocus
  loc_13502E0:       Exit Sub
  loc_13502E1:     End If
  loc_13502E4:   Else
  loc_13502EC:     If (var_86 = CInt(3)) Then
  loc_135033D:       Set var_8C = Me.Txt
  loc_1350343:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_135034B:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1350363:       If (var_98 Or (var_98 = vbNullString)) Then
  loc_1350373:         Set var_8C = Me.Txt
  loc_1350379:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1350381:         var_90.Text = vbNullString
  loc_135039A:         Set var_8C = Me.Txt
  loc_13503A0:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13503A8:         var_90.Tag = vbNullString
  loc_13503B7:       Else
  loc_13503F2:         Set var_94 = Me.Txt
  loc_13503F8:         Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_1350400:         var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1350433:         var_90 = Me.Fields.Item("Code")
  loc_1350451:         Set var_94 = Me.Txt
  loc_1350457:         Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_135045F:         var_120.Tag = CStr(var_90.Value)
  loc_1350475:       End If
  loc_1350478:     Else
  loc_1350480:       If (var_86 = CInt(5)) Then
  loc_13504D1:         Set var_8C = Me.Txt
  loc_13504D7:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13504F7:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_1350507:           Set var_8C = Me.Txt
  loc_135050D:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1350515:           var_90.Text = vbNullString
  loc_135052E:           Set var_8C = Me.Txt
  loc_1350534:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_135053C:           var_90.Tag = vbNullString
  loc_135054B:         Else
  loc_1350586:           Set var_94 = Me.Txt
  loc_135058C:           Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_1350594:           var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13505E5:           Set var_94 = Me.Txt
  loc_13505EB:           Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_13505F3:           var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1350609:         End If
  loc_1350609:       End If
  loc_1350609:     End If
  loc_1350609:   End If
  loc_1350609: End If
  loc_1350609: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F3CD24
  'Data Table: 4D100C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3CC1B: Me.DGDepart.Visible = False
  loc_F3CC3A: If (Me.RecordCount > 0) Then
  loc_F3CC79:   Set var_B4 = Me.Txt
  loc_F3CC7F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3CC87:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3CCBA:   var_B0 = Me.Fields.Item("Name")
  loc_F3CCD9:   Set var_B4 = Me.Txt
  loc_F3CCDF:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3), var_B8)
  loc_F3CCE7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3CCFD: End If
  loc_F3CD08: Set var_A8 = Me.Txt
  loc_F3CD0E: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(3))
  loc_F3CD16: var_B0.SetFocus
  loc_F3CD22: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10CF7C0
  'Data Table: 4D100C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_148 As Variant
  loc_10CF4D7: Me.DGItem.Visible = False
  loc_10CF4F6: If (Me.RecordCount > 0) Then
  loc_10CF50C:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CF514:   var_E4 = CVar(CLng(1)) 'Long
  loc_10CF547:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10CF54F:   Set var_128 = Me.FGrid
  loc_10CF555:   LateIdCallSt
  loc_10CF584:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CF58C:   var_E4 = CVar(CLng(9)) 'Long
  loc_10CF5BF:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10CF5C7:   Set var_128 = Me.FGrid
  loc_10CF5CD:   LateIdCallSt
  loc_10CF5FC:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CF604:   var_E4 = CVar(CLng(&HA)) 'Long
  loc_10CF637:   var_114 = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_10CF63F:   Set var_128 = Me.FGrid
  loc_10CF645:   LateIdCallSt
  loc_10CF674:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CF67C:   var_E4 = CVar(CLng(2)) 'Long
  loc_10CF6AF:   var_114 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_10CF6B7:   Set var_128 = Me.FGrid
  loc_10CF6BD:   LateIdCallSt
  loc_10CF6F3:   var_B0 = Me.Fields.Item("Rate")
  loc_10CF70B:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CF713:   var_F4 = CVar(CLng(7)) 'Long
  loc_10CF740:   var_148 = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_10CF748:   Set var_128 = Me.FGrid
  loc_10CF74E:   LateIdCallSt
  loc_10CF76C: End If
  loc_10CF778: Set var_A8 = Me.TxtGrid
  loc_10CF77E: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15A, var_128, var_148, 1, 1)
  loc_10CF786: var_F4 = var_B0.Visible
  loc_10CF798: If (var_15A = &HFF) Then
  loc_10CF7A4:   Set var_A8 = Me.TxtGrid
  loc_10CF7AA:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_D4, var_128)
  loc_10CF7B2:   var_B0.SetFocus
  loc_10CF7BE: End If
  loc_10CF7BE: Exit Sub
End Sub

Private Sub DGShift_UnknownEvent_9 'F3CBC4
  'Data Table: 4D100C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3CABB: Me.DGShift.Visible = False
  loc_F3CADA: If (Me.RecordCount > 0) Then
  loc_F3CB19:   Set var_B4 = Me.Txt
  loc_F3CB1F:   Call 0.Method_DGShift_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3CB27:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3CB5A:   var_B0 = Me.Fields.Item("Name")
  loc_F3CB79:   Set var_B4 = Me.Txt
  loc_F3CB7F:   Call 0.Method_DGShift_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3CB87:   var_B8.Text = CStr(var_B0.Value)
  loc_F3CB9D: End If
  loc_F3CBA8: Set var_A8 = Me.Txt
  loc_F3CBAE: Call 0.Method_DGShift_UnknownEvent_90 (CInt(5))
  loc_F3CBB6: var_B0.SetFocus
  loc_F3CBC2: Exit Sub
End Sub

Private Sub TxtBarCode_KeyDown(KeyCode As Integer, Shift As Integer) 'E14D68
  'Data Table: 4D100C
  loc_E14D5A: If (CLng(KeyCode) = &HD) Then
  loc_E14D62:   Call TxtBarCode_Validate(&HFF)
  loc_E14D67: End If
  loc_E14D67: Exit Sub
End Sub

Private Sub TxtBarCode_Validate(Cancel As Boolean) '12FCFD8
  'Data Table: 4D100C
  Dim var_9C As String
  Dim var_88 As Variant
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_106 As Integer
  Dim var_F4 As Variant
  Dim var_D4 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_1BC As Variant
  Dim var_1F4 As Variant
  loc_12FC8E4: Set var_88 = Me.TopCtrl1
  loc_12FC8EA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_12FC8F2: var_9C = CStr()
  loc_12FC926: If ((var_9C = "Browse") And (Me.TxtBarCode.Text <> vbNullString)) Then
  loc_12FC936:   Me.TxtBarCode.Text = vbNullString
  loc_12FC944:   Call 0.Method_arg_50 (var_9C)
  loc_12FC965:   MsgBox("Not Applicable In Browse Mode !", &H10, CVar(var_9C), var_E4, var_104)
  loc_12FC975:   Exit Sub
  loc_12FC976: End If
  loc_12FC998: If (Trim(CVar(Me.TxtBarCode)) = vbNullString) Then
  loc_12FC99B:   Exit Sub
  loc_12FC99C: End If
  loc_12FC9A7: var_C4 = Trim(CVar(Me.TxtBarCode))
  loc_12FC9B0: var_110 = CStr(var_C4)
  loc_12FC9C7: Me.TxtBarCode.Text = vbNullString
  loc_12FC9E6: If (Me.RecordCount = 0) Then
  loc_12FC9E9:   Exit Sub
  loc_12FC9EA: End If
  loc_12FC9F0: Me.MoveFirst
  loc_12FCA1A: Me.Find "BarCode='" & var_110 & "'", 0, 1
  loc_12FCA3A: If (Me.EOF = &HFF) Then
  loc_12FCA56:   MsgBox("Item Not Found!", &H10, var_C4, var_E4, var_104)
  loc_12FCA69: Else
  loc_12FCA83:   var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_12FCA90:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_12FCA98:   var_F4 = CVar(CLng(9)) 'Long
  loc_12FCAC3:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_12FCAC6:     var_B4 = vbNullString
  loc_12FCAD0:     Set var_88 = Me.FGrid
  loc_12FCAFB:     var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_12FCB04:   End If
  loc_12FCB17:   Me.FGrid.TopRow = CVar(CLng(var_106))
  loc_12FCB23:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_12FCB2B:   var_F4 = CVar(CLng(0)) 'Long
  loc_12FCB35:   var_98 = CVar(CStr(var_106)) 'String
  loc_12FCB3D:   Set var_88 = Me.FGrid
  loc_12FCB43:   LateIdCallSt
  loc_12FCB55:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_12FCB5D:   var_128 = CVar(CLng(1)) 'Long
  loc_12FCB90:   var_C4 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12FCB98:   Set var_14C = Me.FGrid
  loc_12FCB9E:   LateIdCallSt
  loc_12FCBBA:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_12FCBC2:   var_128 = CVar(CLng(9)) 'Long
  loc_12FCBF5:   var_C4 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_12FCBFD:   Set var_14C = Me.FGrid
  loc_12FCC03:   LateIdCallSt
  loc_12FCC1F:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_12FCC27:   var_128 = CVar(CLng(&HA)) 'Long
  loc_12FCC5A:   var_C4 = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_12FCC62:   Set var_14C = Me.FGrid
  loc_12FCC68:   LateIdCallSt
  loc_12FCC84:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_12FCC8C:   var_128 = CVar(CLng(2)) 'Long
  loc_12FCCBF:   var_C4 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_12FCCC7:   Set var_14C = Me.FGrid
  loc_12FCCCD:   LateIdCallSt
  loc_12FCCE9:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_12FCCF1:   var_F4 = CVar(CLng(3)) 'Long
  loc_12FCCF6:   var_138 = "1.000"
  loc_12FCD00:   Set var_88 = Me.FGrid
  loc_12FCD06:   LateIdCallSt
  loc_12FCD15:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_12FCD1D:   var_128 = CVar(CLng(4)) 'Long
  loc_12FCD50:   var_C4 = CVar(CStr(Me.Fields.Item("ConvRatio").Value)) 'String
  loc_12FCD58:   Set var_14C = Me.FGrid
  loc_12FCD5E:   LateIdCallSt
  loc_12FCD7A:   var_138 = CVar(CLng(var_106)) 'Long
  loc_12FCD82:   var_15C = CVar(CLng(4)) 'Long
  loc_12FCDAB:   var_17C = CVar(CLng(var_106)) 'Long
  loc_12FCDB3:   var_19C = CVar(CLng(5)) 'Long
  loc_12FCDBC:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_12FCDC4:   var_F4 = CVar(CLng(3)) 'Long
  loc_12FCDEC:   var_E4 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_12FCDF4:   Set var_14C = Me.FGrid
  loc_12FCDFA:   LateIdCallSt
  loc_12FCE3E:   var_F4 = CVar(CLng(var_106)) 'Long
  loc_12FCE46:   var_138 = CVar(CLng(7)) 'Long
  loc_12FCE73:   var_104 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_12FCE7B:   Set var_14C = Me.FGrid
  loc_12FCE81:   LateIdCallSt
  loc_12FCE9F:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_12FCEA7:   var_128 = CVar(CLng(6)) 'Long
  loc_12FCEDA:   var_C4 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_12FCEE2:   Set var_14C = Me.FGrid
  loc_12FCEE8:   LateIdCallSt
  loc_12FCF04:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_12FCF0C:   var_F4 = CVar(CLng(7)) 'Long
  loc_12FCF35:   var_138 = CVar(CLng(var_106)) 'Long
  loc_12FCF3D:   var_15C = CVar(CLng(3)) 'Long
  loc_12FCF66:   var_19C = CVar(CLng(var_106)) 'Long
  loc_12FCF6E:   var_1BC = CVar(CLng(8)) 'Long
  loc_12FCF9F:   var_1F4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_12FCFA7:   Set var_14C = Me.FGrid
  loc_12FCFAD:   LateIdCallSt
  loc_12FCFD4: End If
  loc_12FCFD4: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E97860
  'Data Table: 4D100C
  Dim Me As Recordset15
  loc_E977EE: On Error Goto loc_E97857
  loc_E977F7: Me.MoveFirst
  loc_E97821: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97849: Proc_5_0_110649C(&HFF, Me, global_56)
  loc_E97851: Call Proc_213_46_14560BC(0)
  loc_E97856: Exit Sub
  loc_E97857: ' Referenced from: E977EE
  loc_E97857: Proc_6_60_E62BC4(var_A0)
  loc_E9785C: Exit Sub
End Sub

Public Sub Proc_213_44_1482AAC(arg_C, arg_10) '1482AAC
  'Data Table: 4D100C
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
  Dim unk_4D1024 As Connection15
  Dim var_8C As Recordset15
  Dim var_1AC As Double
  Dim var_19C As TextBox
  Dim var_1A4 As Double
  loc_1481E8F: var_A8 = CLng(Me.FGrid.Col)
  loc_1481E9F: If (var_A8 = CLng(1)) Then
  loc_1481EF0:   Set var_94 = Me.TxtGrid
  loc_1481EF6:   Call 0.Method_Proc_213_44_1482AAC0 (arg_C, var_B4, var_B8)
  loc_1481EFE:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_1481F16:   If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_1481F2C:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1481F34:     var_E8 = CVar(CLng(1)) 'Long
  loc_1481F39:     var_108 = vbNullString
  loc_1481F43:     Set var_B4 = Me.FGrid
  loc_1481F49:     LateIdCallSt
  loc_1481F6E:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1481F76:     var_E8 = CVar(CLng(9)) 'Long
  loc_1481F7B:     var_108 = vbNullString
  loc_1481F85:     Set var_B4 = Me.FGrid
  loc_1481F8B:     LateIdCallSt
  loc_1481FB0:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1481FB8:     var_E8 = CVar(CLng(&HA)) 'Long
  loc_1481FBD:     var_108 = vbNullString
  loc_1481FC7:     Set var_B4 = Me.FGrid
  loc_1481FCD:     LateIdCallSt
  loc_1481FF2:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1481FFA:     var_E8 = CVar(CLng(2)) 'Long
  loc_1481FFF:     var_108 = vbNullString
  loc_1482009:     Set var_B4 = Me.FGrid
  loc_148200F:     LateIdCallSt
  loc_1482034:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_148203C:     var_E8 = CVar(CLng(7)) 'Long
  loc_1482041:     var_108 = vbNullString
  loc_148204B:     Set var_B4 = Me.FGrid
  loc_1482051:     LateIdCallSt
  loc_1482076:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_148207E:     var_E8 = CVar(CLng(6)) 'Long
  loc_1482083:     var_108 = vbNullString
  loc_148208D:     Set var_B4 = Me.FGrid
  loc_1482093:     LateIdCallSt
  loc_14820B8:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14820C0:     var_E8 = CVar(CLng(5)) 'Long
  loc_14820C5:     var_108 = vbNullString
  loc_14820CF:     Set var_B4 = Me.FGrid
  loc_14820D5:     LateIdCallSt
  loc_14820FA:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482102:     var_E8 = CVar(CLng(3)) 'Long
  loc_1482107:     var_108 = vbNullString
  loc_1482111:     Set var_B4 = Me.FGrid
  loc_1482117:     LateIdCallSt
  loc_148213C:     var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482144:     var_E8 = CVar(CLng(4)) 'Long
  loc_1482149:     var_108 = vbNullString
  loc_1482153:     Set var_B4 = Me.FGrid
  loc_1482159:     LateIdCallSt
  loc_148216E:   Else
  loc_1482181:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482189:     var_F8 = CVar(CLng(1)) 'Long
  loc_14821BC:     var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_14821C4:     Set var_140 = Me.FGrid
  loc_14821CA:     LateIdCallSt
  loc_14821F9:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482201:     var_F8 = CVar(CLng(9)) 'Long
  loc_1482234:     var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_148223C:     Set var_140 = Me.FGrid
  loc_1482242:     LateIdCallSt
  loc_1482271:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482279:     var_F8 = CVar(CLng(&HA)) 'Long
  loc_14822AC:     var_13C = CVar(CStr(Me.Fields.Item("RestCode").Value)) 'String
  loc_14822B4:     Set var_140 = Me.FGrid
  loc_14822BA:     LateIdCallSt
  loc_14822E9:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14822F1:     var_F8 = CVar(CLng(2)) 'Long
  loc_1482324:     var_13C = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_148232C:     Set var_140 = Me.FGrid
  loc_1482332:     LateIdCallSt
  loc_1482380:     var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482388:     var_108 = CVar(CLng(7)) 'Long
  loc_14823B5:     var_160 = CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))) 'String
  loc_14823BD:     Set var_140 = Me.FGrid
  loc_14823C3:     LateIdCallSt
  loc_14823F4:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14823FC:     var_F8 = CVar(CLng(4)) 'Long
  loc_148242F:     var_13C = CVar(CStr(Me.Fields.Item("ConvRatio").Value)) 'String
  loc_1482437:     Set var_140 = Me.FGrid
  loc_148243D:     LateIdCallSt
  loc_148246C:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1482474:     var_F8 = CVar(CLng(6)) 'Long
  loc_14824A7:     var_13C = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_14824AF:     Set var_140 = Me.FGrid
  loc_14824B5:     LateIdCallSt
  loc_14824D1:   End If
  loc_14824FB:   var_12C = Me.FGrid.TextMatrix)
  loc_1482515:   Set var_11C = Me.Txt
  loc_148251B:   Call 0.Method_Proc_213_44_1482AAC0 (CInt(3), var_140, var_178, var_12C, CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)), var_140)
  loc_1482540:   var_174 = "SELECT RATE FROM ITEMRATE WHERE ITEMCODE='" & CStr(var_12C)
  loc_148255E:   unk_4D1024.Execute var_174 & "' AND RestCode='" & var_178 & "'", var_140.Tag, -1
  loc_1482569:   Set var_8C = var_188
  loc_14825A5:   If (var_8C.RecordCount > 0) Then
  loc_14825EE:     Proc_6_47_EF59D0(var_12C, CVar(var_8C.Fields.Item("Rate")), CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)), var_188, CVar(CLng(7)))
  loc_14825F7:     var_150 = CVar(CStr(var_12C)) 'String
  loc_14825FF:     Set var_140 = Me.FGrid
  loc_1482605:     LateIdCallSt
  loc_1482621:   End If
  loc_148263C:   var_E8 = CVar(CLng(9)) 'Long
  loc_1482645:   Set var_B4 = Me.FGrid
  loc_148264B:   var_12C = var_B4.TextMatrix)
  loc_148267B:   Set var_140 = Me.FGrid
  loc_1482681:   var_150 = var_140.TextMatrix)
  loc_148268C:   var_B8 = CStr(var_150)
  loc_1482694:   var_1AC = Val(var_B8)
  loc_14826A5:   Set var_188 = Me.Txt
  loc_14826AB:   Call 0.Method_Proc_213_44_1482AAC0 (CInt(3), var_19C, var_174, var_1AC, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_12C)
  loc_14826B3:   var_E8 = var_19C.Tag
  loc_1482712:   Me.LblCurStockStr.Caption = global_84
  loc_148271A:   Call Proc_213_51_F70C00(Proc_96_27_11F27DC(CStr(var_12C), var_1AC, MemVar_1F92070, var_174, global_84, CVar(CLng(Me.FGrid.Row))), var_140, var_150)
  loc_1482722: Else
  loc_1482729:   If (var_A8 = CLng(7)) Then
  loc_1482738:     Set var_94 = Me.TxtGrid
  loc_148273E:     Call 0.Method_Proc_213_44_1482AAC0 (0, var_B4, var_B8)
  loc_1482746:     var_D8 = var_B4.Text
  loc_1482760:     var_150 = Me.FGrid.Row
  loc_1482769:     var_E8 = CVar(CLng(var_150)) 'Long
  loc_1482795:     var_12C = "0.00"
  loc_14827A5:     var_13C = Format(CVar(Val(var_B8)), var_12C)
  loc_14827BC:     LateIdCallSt
  loc_14827E3:     Call Proc_213_51_F70C00(Me.FGrid, CVar(CStr(var_13C)), 1, 1, CVar(CLng(Me.FGrid.Col)))
  loc_14827EB:   Else
  loc_14827F2:     If Not (var_A8 = CLng(3)) Then
  loc_14827FC:       If (var_A8 = CLng(4)) Then
  loc_14827FF:       End If
  loc_148281C:       If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_148282B:         Set var_94 = Me.TxtGrid
  loc_1482831:         Call 0.Method_Proc_213_44_1482AAC0 (0, var_B4, var_B8, var_E8)
  loc_1482839:         var_1A4 = var_B4.Text
  loc_148285E:         If (global_100 <> CDbl(Val(var_B8))) Then
  loc_1482890:           If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_12C, var_13C, var_150) = 7) Then
  loc_1482898:             Proc_213_44_1482AAC = 0
  loc_148289E:           End If
  loc_148289E:         End If
  loc_148289E:       End If
  loc_14828AA:       Set var_94 = Me.TxtGrid
  loc_14828B0:       Call 0.Method_Proc_213_44_1482AAC0 (0, var_B4, var_B8)
  loc_14828B8:       var_1A4 = var_B4.Text
  loc_14828DB:       var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14828F3:       var_108 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1482928:       Set var_188 = Me.FGrid
  loc_148292E:       LateIdCallSt
  loc_1482970:       var_E8 = CVar(CLng(9)) 'Long
  loc_1482979:       Set var_B4 = Me.FGrid
  loc_148297F:       var_12C = var_B4.TextMatrix)
  loc_14829C8:       var_1AC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14829DF:       Call 0.Method_Proc_213_44_1482AAC0 (CInt(3), var_19C, var_174, var_1AC, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), var_12C)
  loc_14829E7:       var_E8 = var_19C.Tag
  loc_1482A46:       Me.LblCurStockStr.Caption = global_84
  loc_1482A4E:       Call Proc_213_51_F70C00(Proc_96_27_11F27DC(CStr(var_12C), var_1AC, MemVar_1F92070, var_174, global_84, CVar(CLng(Me.FGrid.Row))), Me.Txt, CVar(CStr(Format(CVar(Val(CStr(Me.FGrid.TextMatrix)))), "0.000"))))
  loc_1482A53:     End If
  loc_1482A53:   End If
  loc_1482A53: End If
  loc_1482A5E: If (arg_10 = 0) Then
  loc_1482A65:   Set var_94 = Me.FGrid
  loc_1482A81:   Set var_94 = Me.TxtGrid
  loc_1482A87:   Call 0.Method_Proc_213_44_1482AAC0 (0, var_B4, 0, FGrid.DispID_8001)
  loc_1482A8F:   var_B4.Visible = &HFF
  loc_1482A9B: End If
  loc_1482AA0: Set var_8C = Nothing
  loc_1482AA3: Proc_213_44_1482AAC = 1
End Sub

Public Sub Proc_213_45_F72C04
  'Data Table: 4D100C
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_DC As Variant
  loc_F72AD2: Set var_8C = Me.Txt
  loc_F72AD8: Call 0.Method_Proc_213_45_F72C04C (var_8E, var_86)
  loc_F72AE8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F72AFE:   Set var_8C = Me.Txt
  loc_F72B04:   Call 0.Method_Proc_213_45_F72C040 (CInt(var_86), var_98)
  loc_F72B0C:   var_98.Text = vbNullString
  loc_F72B28:   Set var_8C = Me.Txt
  loc_F72B2E:   Call 0.Method_Proc_213_45_F72C040 (CInt(var_86), var_98)
  loc_F72B36:   var_98.Tag = vbNullString
  loc_F72B45: Next var_92 'Byte
  loc_F72B58: Me.LblCurStockStr.Caption = vbNullString
  loc_F72B74: Me.LblUser.Caption = "User : " & MemVar_1F920C8
  loc_F72B8C: Me.LblVPrefix.Caption = vbNullString
  loc_F72BA7: Me.FGrid.Rows = 1
  loc_F72BC4: var_DC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F72BCC: Set var_98 = Me.FGrid
  loc_F72BFB: Me.FGrid.FixedRows = 1
  loc_F72C03: Exit Sub
End Sub

Public Sub Proc_213_46_14560BC
  'Data Table: 4D100C
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As String
  Dim unk_4D1024 As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_12C As TextBox
  Dim var_128 As Variant
  Dim var_130 As String
  Dim var_90 As Recordset15
  Dim var_8A As Integer
  loc_1455578: On Error Goto loc_14560B3
  loc_1455592: If (Me.RecordCount > 0) Then
  loc_14555A2:   Me.LblCurStockStr.Caption = vbNullString
  loc_14555B7:   var_D0 = "Select Distinct SH.Docid,SH.SNo,SH.Vtype,SH.Vno,SH.Vdate,SH.VPrefix,SH.Rate,SH.Amount,SH.GodownCode,SH.Item,SH.QtyRec,SH.Unit,SH.RECDQty,SH.RECDUnit,SH.ConvRatio,SH.ItemRestCode,SH.U_Name,SH.U_entdt,SH.U_AE,I.Name As ItemName,SH.ShiftCode,SM.Name As ShiftName From Stock SH Left Join ItemMast I On I.Code=SH.Item And I.ItemType='Store' Left Join ShiftMast SM On SH.ShiftCode=SM.Code where DocID='"
  loc_1455600:   unk_4D1024.Execute CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "' Order By SH.SNo"), var_124, -1
  loc_145560B:   Set var_88 = var_128
  loc_145565B:   Set var_128 = Me.Txt
  loc_1455661:   Call 0.Method_Proc_213_46_14560BC0 (CInt(0), var_12C)
  loc_1455669:   var_12C.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")))
  loc_14556B2:   Me.LblVPrefix.Caption = Proc_6_38_E68A98(CVar(var_88.Fields.Item("vPrefix")))
  loc_14556FA:   Set var_128 = Me.Txt
  loc_1455700:   Call 0.Method_Proc_213_46_14560BC0 (CInt(1), var_12C)
  loc_1455708:   var_12C.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("VNo")))
  loc_1455752:   Set var_128 = Me.Txt
  loc_1455758:   Call 0.Method_Proc_213_46_14560BC0 (CInt(2), var_12C)
  loc_1455760:   var_12C.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("VDate")))
  loc_14557B0:   If (var_88.Fields.Item("vType").Value = "BKREC") Then
  loc_14557CA:     var_B0 = var_88.Fields.Item("Godowncode")
  loc_14557DB:     var_104 = Proc_6_38_E68A98(CVar(var_B0))
  loc_14557E9:     Set var_128 = Me.Txt
  loc_14557EF:     Call 0.Method_Proc_213_46_14560BC0 (CInt(3), var_12C)
  loc_14557F7:     var_12C.Tag = var_104
  loc_1455829:     Set var_9C = Me.Txt
  loc_145582F:     Call 0.Method_Proc_213_46_14560BC0 (CInt(3), var_B0, var_104, "Select Name From GodownMast Where Code='")
  loc_1455837:     var_C0 = var_B0.Tag
  loc_1455840:     var_130 = -1 & var_104
  loc_1455850:     unk_4D1024.Execute var_130 & "'", var_128, var_128
  loc_145585B:     Set var_90 = var_128
  loc_1455887:     If (var_90.RecordCount > 0) Then
  loc_14558C0:       Set var_128 = Me.Txt
  loc_14558C6:       Call 0.Method_Proc_213_46_14560BC0 (CInt(3), var_12C)
  loc_14558CE:       var_12C.Text = Proc_6_38_E68A98(CVar(var_90.Fields.Item("Name")))
  loc_14558E2:     End If
  loc_14558E2:   End If
  loc_1455985:   var_194 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_14559CA:   Me.LblUser.Caption = CStr(var_194 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")))))
  loc_1455A44:   var_12C = var_88.Fields.Item("U_AE")
  loc_1455AA5:   var_194 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_12C)) = "E"), "Last Update : ", "entdt : "))
  loc_1455AEA:   Me.LblLDt.Caption = CStr(var_194 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1455B58:   Set var_128 = Me.Txt
  loc_1455B5E:   Call 0.Method_Proc_213_46_14560BC0 (CInt(5), var_12C)
  loc_1455B66:   var_12C.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ShiftName")))
  loc_1455BB0:   Set var_128 = Me.Txt
  loc_1455BB6:   Call 0.Method_Proc_213_46_14560BC0 (CInt(5), var_12C)
  loc_1455BBE:   var_12C.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ShiftCode")))
  loc_1455BE5:   Me.FGrid.Rows = 1
  loc_1455BEF:   var_8A = 1
  loc_1455BF2:   ' Referenced from: 1456077
  loc_1455C01:   If Not(var_88.EOF) Then
  loc_1455C04:     var_AC = vbNullString
  loc_1455C0E:     Set var_9C = Me.FGrid
  loc_1455C23:     Set var_1F0 = Me.FGrid
  loc_1455C5F:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SNo")), CVar(CLng(0)), CVar(CLng(var_8A)))) 'String
  loc_1455C66:     LateIdCallSt
  loc_1455CB1:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8A)), var_1F0)) 'String
  loc_1455CB8:     LateIdCallSt
  loc_1455D03:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RecdUnit")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1F0, var_E0)) 'String
  loc_1455D0A:     LateIdCallSt
  loc_1455D42:     Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("RecdQty")), var_1F0, var_E0)
  loc_1455D4B:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1455D83:     LateIdCallSt
  loc_1455DD4:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_8A)), var_1F0, CVar(CStr(Format(var_E0, "0.000"))), 1, 1)) 'String
  loc_1455DDB:     LateIdCallSt
  loc_1455E13:     Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("QtyRec")), var_1F0, var_E0, CVar(CLng(3)))
  loc_1455E1C:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1455E54:     LateIdCallSt
  loc_1455E92:     Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("Rate")), var_1F0, CVar(CStr(Format(var_E0, "0.000"))), 1, 1, CVar(CLng(5)))
  loc_1455E9B:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1455ED3:     LateIdCallSt
  loc_1455F11:     Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("Amount")), var_1F0, CVar(CStr(Format(var_E0, "0.00"))), 1, 1, CVar(CLng(7)))
  loc_1455F1A:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_1455F52:     LateIdCallSt
  loc_1455FA3:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Item")), CVar(CLng(9)), CVar(CLng(var_8A)), var_1F0, CVar(CStr(Format(var_E0, "0.00"))), 1, 1)) 'String
  loc_1455FAA:     LateIdCallSt
  loc_1455FF5:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemRestcode")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_1F0, var_E0, CVar(CLng(8)))) 'String
  loc_1455FFC:     LateIdCallSt
  loc_1456047:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConvRatio")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1F0, var_E0)) 'String
  loc_145604E:     LateIdCallSt
  loc_1456062:     Set var_1F0 = Nothing 
  loc_145606C:     var_8A = (var_8A + 1)
  loc_1456072:     var_88.MoveNext
  loc_1456077:     GoTo loc_1455BF2
  loc_145607A:   End If
  loc_145608D:   Me.FGrid.FixedRows = 1
  loc_1456098: Else
  loc_1456098:   Call Proc_213_45_F72C04(var_8A, var_1F0, var_E0, var_F0)
  loc_145609D: End If
  loc_145609D: Call Proc_213_48_EBA61C(var_F0, var_F0)
  loc_14560A2: Exit Sub
  loc_14560A8: Set var_90 = Nothing
  loc_14560B0: Set var_94 = Nothing
  loc_14560B3: ' Referenced from: 1455578
  loc_14560B3: Proc_6_60_E62BC4(var_F0)
  loc_14560B8: Exit Sub
End Sub

Public Sub Proc_213_47_EFE748(arg_C) 'EFE748
  'Data Table: 4D100C
  Dim var_98 As TextBox
  loc_EFE672: Set var_8C = Me.Txt
  loc_EFE678: Call 0.Method_Proc_213_47_EFE748C (var_8E, var_86)
  loc_EFE688: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EFE69E:   Set var_8C = Me.Txt
  loc_EFE6A4:   Call 0.Method_Proc_213_47_EFE7480 (CInt(var_86), var_98)
  loc_EFE6AC:   var_98.Enabled = arg_C
  loc_EFE6BB: Next var_92 'Byte
  loc_EFE6CE: Set var_8C = Me.Txt
  loc_EFE6D4: Call 0.Method_Proc_213_47_EFE7480 (CInt(0), var_98)
  loc_EFE6DC: var_98.Enabled = False
  loc_EFE6F5: Set var_8C = Me.Txt
  loc_EFE6FB: Call 0.Method_Proc_213_47_EFE7480 (CInt(1), var_98)
  loc_EFE703: var_98.Enabled = False
  loc_EFE71A: If (global_96 = "No") Then
  loc_EFE72A:   Set var_8C = Me.Txt
  loc_EFE730:   Call 0.Method_Proc_213_47_EFE7480 (CInt(2), var_98)
  loc_EFE738:   var_98.Enabled = False
  loc_EFE744: End If
  loc_EFE744: Exit Sub
  loc_EFE745: Set var_88 = 
End Sub

Public Sub Proc_213_48_EBA61C
  'Data Table: 4D100C
  loc_EBA594: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EBA5A6:   Me.DGDepart.Visible = False
  loc_EBA5AE: End If
  loc_EBA5CA: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EBA5DC:   Me.DGItem.Visible = False
  loc_EBA5E4: End If
  loc_EBA600: If (CBool(Me.DGToDepart.Visible) = &HFF) Then
  loc_EBA612:   Me.DGToDepart.Visible = False
  loc_EBA61A: End If
  loc_EBA61A: Exit Sub
End Sub

Public Sub Proc_213_49_115D4B8
  'Data Table: 4D100C
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
  loc_115D150: var_90 = global_68
  loc_115D167: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_115D18A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115D198: Set var_B4 = Me.Txt
  loc_115D19E: Call 0.Method_Proc_213_49_115D4B80 (CInt(2), var_B8, var_E8)
  loc_115D1AD: Proc_6_7_F25D88(var_D8, CVar(var_B8), var_13C)
  loc_115D1B5: var_F8 = -1 & var_D8 
  loc_115D1C9: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115D1D4: Set var_8C = var_140
  loc_115D210: If (var_8C.RecordCount <= 0) Then
  loc_115D22C:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115D23F:   var_88 = vbNullString
  loc_115D242:   Proc_213_49_115D4B8 = 
  loc_115D248: End If
  loc_115D25C: If (var_8C.RecordCount > 0) Then
  loc_115D29B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115D2B8:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115D2C9:     var_9C = CStr(var_B8.Value)
  loc_115D2E4:     Set var_B4 = Me.Txt
  loc_115D2EA:     Call 0.Method_Proc_213_49_115D4B80 (CInt(1), var_B8)
  loc_115D300:     var_94 = CLng(Val(var_B8.Text))
  loc_115D310:   Else
  loc_115D33B:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115D362:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115D377:     var_D8 = (var_B8.Value + 1)
  loc_115D37D:     var_94 = CLng(var_D8)
  loc_115D38E:   End If
  loc_115D38E: End If
  loc_115D3B9: var_C8 = Space((5 - Len(var_90)))
  loc_115D3C1: var_E8 = (CVar(var_94 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_B8.Value)
  loc_115D3CB: var_F8 = (var_E8 + CVar(var_9C))
  loc_115D3DC: var_118 = Space((5 - Len(var_9C)))
  loc_115D3E4: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115D3FA: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115D402: var_188 = (var_13C + var_178)
  loc_115D40E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115D413: var_98 = CStr(var_1A8)
  loc_115D443: Me.LblVPrefix.Caption = var_9C
  loc_115D459: Set var_B4 = Me.Txt
  loc_115D45F: Call 0.Method_Proc_213_49_115D4B80 (CInt(0), var_B8)
  loc_115D467: var_B8.Text = var_98
  loc_115D486: Set var_B4 = Me.Txt
  loc_115D48C: Call 0.Method_Proc_213_49_115D4B80 (CInt(1), var_B8)
  loc_115D494: var_B8.Text = CStr(var_94)
  loc_115D4A6: var_88 = var_98
  loc_115D4AE: Set var_8C = Nothing
  loc_115D4B1: Proc_213_49_115D4B8 = var_94
End Sub

Public Sub Proc_213_50_124B974
  'Data Table: 4D100C
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_D4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_6BE0 As Variant
  loc_124B433: Me.FGrid.Width = CVar(CDbl(10800))
  loc_124B44E: Me.FGrid.Top = CVar(CDbl(1980))
  loc_124B469: Me.FGrid.Height = CVar(CDbl(3400))
  loc_124B484: Me.DGItem.Left = CVar(CDbl(2800))
  loc_124B49F: Me.DGItem.Top = CVar(CDbl(1200))
  loc_124B4DE: Me.LblCurStockStr.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_124B4FE: If (global_92 <> "Yes") Then
  loc_124B512:   Set var_A8 = Me.DGItem
  loc_124B531:   DGItem.DispID_69.Item(1).Width = CDbl(0)
  loc_124B55A:   var_94 = CVar((CDbl(Me.DGItem.Width) - CDbl(2500))) 'Single
  loc_124B569:   Me.DGItem.Width = 1
  loc_124B578: End If
  loc_124B57C: Set var_D4 = Me.FGrid
  loc_124B593: global_108 = CStr(CLng(var_D4.BackColor))
  loc_124B5A9: var_D4.Cols = &HB
  loc_124B5B1: var_94 = CVar(CLng(0)) 'Long
  loc_124B5B6: var_E8 = &H1C2
  loc_124B5C2: LateIdCallSt
  loc_124B5CA: var_94 = 0
  loc_124B5D6: var_E8 = CVar(CLng(1)) 'Long
  loc_124B5DB: var_108 = "Item Name"
  loc_124B5E4: LateIdCallSt
  loc_124B5EF: var_94 = CVar(CLng(1)) 'Long
  loc_124B5FA: var_E8 = CVar(CInt(1)) 'Integer
  loc_124B601: LateIdCallSt
  loc_124B60C: var_94 = CVar(CLng(1)) 'Long
  loc_124B611: var_E8 = &H9C4
  loc_124B61D: LateIdCallSt
  loc_124B625: var_94 = 0
  loc_124B631: var_E8 = CVar(CLng(2)) 'Long
  loc_124B636: var_108 = "Unit"
  loc_124B63F: LateIdCallSt
  loc_124B64A: var_94 = CVar(CLng(2)) 'Long
  loc_124B655: var_E8 = CVar(CInt(1)) 'Integer
  loc_124B65C: LateIdCallSt
  loc_124B667: var_94 = CVar(CLng(2)) 'Long
  loc_124B66C: var_E8 = &H384
  loc_124B678: LateIdCallSt
  loc_124B680: var_94 = 0
  loc_124B68C: var_E8 = CVar(CLng(3)) 'Long
  loc_124B691: var_108 = "Rec. Qty"
  loc_124B69A: LateIdCallSt
  loc_124B6A5: var_94 = CVar(CLng(3)) 'Long
  loc_124B6B0: var_E8 = CVar(CInt(7)) 'Integer
  loc_124B6B7: LateIdCallSt
  loc_124B6C2: var_94 = CVar(CLng(3)) 'Long
  loc_124B6CD: var_E8 = CVar(CInt(7)) 'Integer
  loc_124B6D4: LateIdCallSt
  loc_124B6DF: var_94 = CVar(CLng(3)) 'Long
  loc_124B6E4: var_E8 = &H3E8
  loc_124B6F0: LateIdCallSt
  loc_124B6F8: var_94 = 0
  loc_124B704: var_E8 = CVar(CLng(4)) 'Long
  loc_124B709: var_108 = "Conv. Factor"
  loc_124B712: LateIdCallSt
  loc_124B71D: var_94 = CVar(CLng(4)) 'Long
  loc_124B728: var_E8 = CVar(CInt(7)) 'Integer
  loc_124B72F: LateIdCallSt
  loc_124B73A: var_94 = CVar(CLng(4)) 'Long
  loc_124B745: var_E8 = CVar(CInt(7)) 'Integer
  loc_124B74C: LateIdCallSt
  loc_124B757: var_94 = CVar(CLng(4)) 'Long
  loc_124B75C: var_E8 = &H4B0
  loc_124B768: LateIdCallSt
  loc_124B770: var_94 = 0
  loc_124B77C: var_E8 = CVar(CLng(5)) 'Long
  loc_124B781: var_108 = "Wt. Qty"
  loc_124B78A: LateIdCallSt
  loc_124B795: var_94 = CVar(CLng(5)) 'Long
  loc_124B7A0: var_E8 = CVar(CInt(7)) 'Integer
  loc_124B7A7: LateIdCallSt
  loc_124B7B2: var_94 = CVar(CLng(5)) 'Long
  loc_124B7BD: var_E8 = CVar(CInt(7)) 'Integer
  loc_124B7C4: LateIdCallSt
  loc_124B7CF: var_94 = CVar(CLng(5)) 'Long
  loc_124B7D4: var_E8 = &H3E8
  loc_124B7E0: LateIdCallSt
  loc_124B7E8: var_94 = 0
  loc_124B7F4: var_E8 = CVar(CLng(6)) 'Long
  loc_124B7F9: var_108 = "Wt.Unit"
  loc_124B802: LateIdCallSt
  loc_124B80D: var_94 = CVar(CLng(6)) 'Long
  loc_124B818: var_E8 = CVar(CInt(1)) 'Integer
  loc_124B81F: LateIdCallSt
  loc_124B82A: var_94 = CVar(CLng(6)) 'Long
  loc_124B82F: var_E8 = &H384
  loc_124B83B: LateIdCallSt
  loc_124B843: var_94 = 0
  loc_124B84F: var_E8 = CVar(CLng(7)) 'Long
  loc_124B854: var_108 = "Rate"
  loc_124B85D: LateIdCallSt
  loc_124B868: var_94 = CVar(CLng(7)) 'Long
  loc_124B873: var_E8 = CVar(CInt(7)) 'Integer
  loc_124B87A: LateIdCallSt
  loc_124B885: var_94 = CVar(CLng(7)) 'Long
  loc_124B890: var_E8 = CVar(CInt(7)) 'Integer
  loc_124B897: LateIdCallSt
  loc_124B8A2: var_94 = CVar(CLng(7)) 'Long
  loc_124B8A7: var_E8 = &H3E8
  loc_124B8B3: LateIdCallSt
  loc_124B8BB: var_94 = 0
  loc_124B8C7: var_E8 = CVar(CLng(8)) 'Long
  loc_124B8CC: var_108 = "Amount"
  loc_124B8D5: LateIdCallSt
  loc_124B8E0: var_94 = CVar(CLng(8)) 'Long
  loc_124B8EB: var_E8 = CVar(CInt(7)) 'Integer
  loc_124B8F2: LateIdCallSt
  loc_124B8FD: var_94 = CVar(CLng(8)) 'Long
  loc_124B908: var_E8 = CVar(CInt(7)) 'Integer
  loc_124B90F: LateIdCallSt
  loc_124B91A: var_94 = CVar(CLng(8)) 'Long
  loc_124B91F: var_E8 = &H5DC
  loc_124B92B: LateIdCallSt
  loc_124B936: var_94 = CVar(CLng(9)) 'Long
  loc_124B93B: var_E8 = 0
  loc_124B947: LateIdCallSt
  loc_124B952: var_94 = CVar(CLng(&HA)) 'Long
  loc_124B957: var_E8 = 0
  loc_124B963: LateIdCallSt
  loc_124B971: Exit Sub
  loc_124B972: var_6BE0 = CVar(Nothing) 'String
End Sub

Public Sub Proc_213_51_F70C00
  'Data Table: 4D100C
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  loc_F70B03: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F70B0B: var_C8 = CVar(CLng(7)) 'Long
  loc_F70B43: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F70B4B: var_134 = CVar(CLng(3)) 'Long
  loc_F70B83: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F70B8B: var_1F0 = CVar(CLng(8)) 'Long
  loc_F70BBC: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_F70BC4: Set var_224 = Me.FGrid
  loc_F70BCA: LateIdCallSt
  loc_F70BFD: Exit Sub
End Sub

Public Sub Proc_213_52_ED70D0
  'Data Table: 4D100C
  loc_ED7030: Call Proc_213_48_EBA61C()
  loc_ED7040: Set var_88 = Me.Txt
  loc_ED7046: Call 0.Method_Proc_213_52_ED70D00 (CInt(2))
  loc_ED706F: If (Proc_6_27_EA565C(var_8C, "Date") = 0) Then
  loc_ED7072:   Exit Sub
  loc_ED7073: End If
  loc_ED70AA: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED70AD:   Call TopCtrl1_UnknownEvent_16()
  loc_ED70B5: Else
  loc_ED70BB:   Call 0.Method_arg_1E8 (var_88)
  loc_ED70C3:   Call var_88.SetFocus
  loc_ED70CC: End If
  loc_ED70CC: Exit Sub
End Sub
