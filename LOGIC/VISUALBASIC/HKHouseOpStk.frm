VERSION 5.00
Begin VB.Form HKHouseOpStk
  Caption = "House Keeping Op. Stock Entry"
  BackColor = &HC1BCE2&
  ForeColor = &H40&
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
  ClientWidth = 9015
  ClientHeight = 4755
  LockControls = -1  'True
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9015
    Height = 450
    TabIndex = 16
  End
  Begin DataGrid DGItem
    Left = 285
    Top = 4395
    Width = 7020
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 4
    Left = 5355
    Top = 750
    Width = 2940
    Height = 225
    Visible = 0   'False
    TabIndex = 15
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
    Left = 1110
    Top = 490
    Width = 2865
    Height = 240
    TabIndex = 12
    BorderStyle = 0 'None
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    Left = 5355
    Top = 490
    Width = 1200
    Height = 240
    TabIndex = 13
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
    Index = 2
    Left = 7050
    Top = 490
    Width = 1245
    Height = 240
    TabIndex = 14
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
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1050
    Top = 2985
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 2
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
  Begin TextBox Txt
    Index = 3
    Left = 1110
    Top = 750
    Width = 3540
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
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
  Begin DataGrid DGRoom
    Left = 5325
    Top = 4095
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin MSHFlexGrid FGrid
    Left = 75
    Top = 1215
    Width = 8280
    Height = 2805
    TabIndex = 1
  End
  Begin DataGrid DGVType
    Left = 975
    Top = 4095
    Width = 4215
    Height = 3645
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
  Begin Label Label1
    Caption = "Vr. No."
    Index = 3
    ForeColor = &H404040&
    Left = 4005
    Top = 505
    Width = 585
    Height = 210
    TabIndex = 10
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
    Caption = "V.Type "
    Index = 4
    ForeColor = &H404040&
    Left = 105
    Top = 505
    Width = 660
    Height = 210
    TabIndex = 9
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
    ForeColor = &H404040&
    Left = 6615
    Top = 505
    Width = 390
    Height = 210
    TabIndex = 8
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
    ForeColor = &H404040&
    Left = 4620
    Top = 490
    Width = 645
    Height = 240
    TabIndex = 7
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
    Caption = "DocID"
    Index = 12
    ForeColor = &H404040&
    Left = 4710
    Top = 750
    Width = 555
    Height = 210
    Visible = 0   'False
    TabIndex = 6
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
    Index = 0
    ForeColor = &H404040&
    Left = 105
    Top = 750
    Width = 990
    Height = 210
    TabIndex = 5
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
End

Attribute VB_Name = "HKHouseOpStk"

Private global_108 As Integer
Private global_110 As Integer
Private MasterFormExit As Integer
Private global_96 As Integer

Private Sub FGrid_UnknownEvent_0 'EA26E8
  'Data Table: 49C7D8
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA2683: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_80)) Then
  loc_EA2699:   Me.FGrid.Col = 1
  loc_EA26A1: End If
  loc_EA26B4: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA26C7: Set var_88 = Me.TxtGrid
  loc_EA26CD: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA26D5: var_BC.Visible = False
  loc_EA26E1: Call Proc_35_51_EBE244()
  loc_EA26E6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E695C8
  'Data Table: 49C7D8
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69584: Set var_88 = Me.TxtGrid
  loc_E6958A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E695A4: If (var_8C.Visible = 0) Then
  loc_E695BD:   Me.FGrid.BackColorSel = CVar(CLng(global_80))
  loc_E695C5: End If
  loc_E695C5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF8E4
  'Data Table: 49C7D8
  Dim arg_6072 As Integer
  loc_DFF8DC: Call Proc_35_45_E400A4()
  loc_DFF8E1: Exit Sub
  loc_DFF8E2: arg_6072 = 
End Sub

Private Sub FGrid_UnknownEvent_A '113DE60
  'Data Table: 49C7D8
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
  loc_113DAD8: Set var_88 = Me.TopCtrl1
  loc_113DADE: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_113DB23: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_113DB2C:   Call Form_KeyDown(KeyCode, Shift)
  loc_113DB31: End If
  loc_113DB35: Set var_88 = Me.TopCtrl1
  loc_113DB3B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_113DB54: If (CStr() = "Browse") Then
  loc_113DB57:   Exit Sub
  loc_113DB58: End If
  loc_113DBCC: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_113DBE5:   Me.FGrid.CellBackColor = CVar(CLng(global_80))
  loc_113DBF5:   var_9C = "+{Tab}"
  loc_113DBFB:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_113DC05:   KeyCode = 0
  loc_113DC0B: Else
  loc_113DC15:   var_B0 = Me.FGrid.Rows
  loc_113DC62:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_113DC7B:     Me.FGrid.CellBackColor = CVar(CLng(global_80))
  loc_113DC88:     Call Proc_35_52_F0C468(0, var_B0, KeyCode)
  loc_113DC8D:   End If
  loc_113DC8D: End If
  loc_113DC93: global_108 = KeyCode
  loc_113DCB9: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_113DCDD: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_113DCF3:   var_EC = CLng(Me.FGrid.Col)
  loc_113DD03:   If (var_EC = CLng(1)) Then
  loc_113DD19:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113DD31:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_113DD36:     var_11C = vbNullString
  loc_113DD40:     Set var_B4 = Me.FGrid
  loc_113DD46:     LateIdCallSt
  loc_113DD71:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113DD79:     var_FC = CVar(CLng(6)) 'Long
  loc_113DD7E:     var_11C = vbNullString
  loc_113DD88:     Set var_A0 = Me.FGrid
  loc_113DD8E:     LateIdCallSt
  loc_113DDB3:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113DDBB:     var_FC = CVar(CLng(3)) 'Long
  loc_113DDC0:     var_11C = vbNullString
  loc_113DDCA:     Set var_A0 = Me.FGrid
  loc_113DDD0:     LateIdCallSt
  loc_113DDE5:   Else
  loc_113DDEC:     If (var_EC = CLng(3)) Then
  loc_113DE02:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113DE1A:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_113DE1F:       var_11C = vbNullString
  loc_113DE29:       Set var_B4 = Me.FGrid
  loc_113DE2F:       LateIdCallSt
  loc_113DE47:     End If
  loc_113DE47:   End If
  loc_113DE47: End If
  loc_113DE4D: If (KeyCode = &HD) Then
  loc_113DE55:   global_110 = 0
  loc_113DE58: End If
  loc_113DE5A: KeyCode = 0
  loc_113DE5D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0E510
  'Data Table: 49C7D8
  loc_E0E501: Call FGrid_UnknownEvent_C()
  loc_E0E50B: global_110 = 0
  loc_E0E50E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '101493C
  'Data Table: 49C7D8
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_101472C: Set var_88 = Me.TopCtrl1
  loc_1014732: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_101474B: If (CStr() = "Browse") Then
  loc_101474E:   Exit Sub
  loc_101474F: End If
  loc_1014762: var_A0 = CLng(Me.FGrid.Col)
  loc_1014772: If (var_A0 = CLng(1)) Then
  loc_1014779:   Set var_C4 = Me.FGrid
  loc_101479D:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_10147CA:   Set var_B4 = var_C4
  loc_10147DC:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1014804:   Set var_88 = Me.TxtGrid
  loc_101480A:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_1014812:   0 = var_B4.Text
  loc_101482B:   If (Len(var_9C) <= 1) Then
  loc_101483A:     Set var_88 = Me.TxtGrid
  loc_1014840:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1014848:     var_CA = var_B4.Text
  loc_1014859:     Set var_B8 = Me.TxtGrid
  loc_101485F:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1014867:     var_C4.Text = var_9C
  loc_101487A:   End If
  loc_1014886:   Set var_88 = Me.TxtGrid
  loc_101488C:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_10148A6:   Set var_B8 = Me.TxtGrid
  loc_10148AC:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_10148B4:   var_C4.SelStart = Len(var_B4.Text)
  loc_10148CA: Else
  loc_10148D1:   If (var_A0 = CLng(3)) Then
  loc_1014912:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1014924:   End If
  loc_1014924: End If
  loc_101492E: If (CLng(KeyCode) <> &HD) Then
  loc_1014936:   global_110 = &HFF
  loc_1014939: End If
  loc_1014939: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FEE120
  'Data Table: 49C7D8
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FEDF48: Set var_90 = Me.TopCtrl1
  loc_FEDF4E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_FEDF67: If (CStr() = "Browse") Then
  loc_FEDF6A:   Exit Sub
  loc_FEDF6B: End If
  loc_FEDF88: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FEDF8B:   Exit Sub
  loc_FEDF8C: End If
  loc_FEDF9D: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FEDFBF:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FEDFF9:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FEE01B:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FEE031:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEE03A:         Set var_118 = Me.FGrid
  loc_FEE055:       Else
  loc_FEE068:         Me.FGrid.Rows = 1
  loc_FEE08E:         var_A0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FEE096:         Set var_118 = Me.FGrid
  loc_FEE0C3:         Me.FGrid.FixedRows = 1
  loc_FEE0CB:       End If
  loc_FEE0CB:     End If
  loc_FEE0CE:   Else
  loc_FEE0EF:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FEE0FF:   End If
  loc_FEE103:   Set var_90 = Me.FGrid
  loc_FEE114: End If
  loc_FEE119: Set var_8C = Nothing
  loc_FEE11C: Exit Sub
  loc_FEE11D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E40170
  'Data Table: 49C7D8
  Dim var_8C As TextBox
  loc_E40144: Call Proc_35_51_EBE244()
  loc_E40154: Set var_88 = Me.TxtGrid
  loc_E4015A: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E40162: var_8C.Visible = False
  loc_E4016E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1006944
  'Data Table: 49C7D8
  Dim var_B8 As Variant
  Dim unk_49C7F4 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_C8 As TextBox
  loc_1006744: On Error Goto loc_100693C
  loc_100676A: Call Proc_35_50_EF56B8(Proc_5_1_100CB50("ADD", Me))
  loc_1006775: Call Proc_35_49_F2FDAC(global_68)
  loc_100678C: var_B4 = DateAdd("D", CDbl(&HFF), MemVar_1F920F4)
  loc_10067A9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_B8)
  loc_10067B1: var_B8.Text = CStr(var_B4)
  loc_10067EA: unk_49C7F4.Execute "Select Description,V_Type From Voucher_Type Where V_tYPE='" & global_120 & "'", var_B4, -1
  loc_10067F5: Set var_88 = Me.Txt
  loc_1006819: If (var_88.RecordCount > 0) Then
  loc_1006855:   Set var_C4 = Me.Txt
  loc_100685B:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C8)
  loc_1006863:   var_C8.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_1006893:   var_B8 = var_88.Fields.Item("V_Type")
  loc_10068B2:   Set var_C4 = Me.Txt
  loc_10068B8:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C8)
  loc_10068C0:   var_C8.Tag = CStr(var_B8.Value)
  loc_10068E2:   Call Txt_Validate(CInt(0))
  loc_10068E7: End If
  loc_10068F4: Set var_90 = Me.Txt
  loc_10068FA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_B8, 0)
  loc_1006902: var_B8.Enabled = False
  loc_1006919: Set var_90 = Me.Txt
  loc_100691F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_B8)
  loc_1006927: var_B8.SetFocus
  loc_1006938: Set var_88 = Nothing
  loc_100693B: Exit Sub
  loc_100693C: ' Referenced from: 1006744
  loc_100693C: Proc_6_60_E62BC4(var_90)
  loc_1006941: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA03C8
  'Data Table: 49C7D8
  loc_EA0350: On Error Goto loc_EA03C1
  loc_EA038A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA03B0:   Call Proc_35_50_EF56B8(Proc_5_1_100CB50("INI", Me))
  loc_EA03BB:   Call Proc_35_47_13A10A0(global_68)
  loc_EA03C0: End If
  loc_EA03C0: Exit Sub
  loc_EA03C1: ' Referenced from: EA0350
  loc_EA03C1: Proc_6_60_E62BC4()
  loc_EA03C6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10B337C
  'Data Table: 49C7D8
  Dim unk_49C7F4 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_10B30D4: On Error Goto loc_10B332C
  loc_10B310E: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_10B311A:   unk_49C7F4.BeginTrans var_118
  loc_10B3130:   var_94 = Me.Bookmark 'Variant
  loc_10B317C:   var_F4 = "Delete From STOCK Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10B318A:   unk_49C7F4.Execute CStr(var_F4), var_114, -1
  loc_10B31D5:   var_160 = 0
  loc_10B31E8:   var_158 = 0
  loc_10B31F3:   var_154 = 0
  loc_10B3206:   var_14C = 0
  loc_10B3211:   var_148 = 0
  loc_10B3224:   var_140 = 0
  loc_10B3264:   var_124 = "STOCK"
  loc_10B326D:   Proc_154_5_10E33A4(MemVar_1F92044, var_124, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10B329B:   unk_49C7F4.CommitTrans
  loc_10B32AB:   Me.Requery -1
  loc_10B32CB:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10B32D8:     Me.Bookmark = var_94
  loc_10B32E0:   Else
  loc_10B32F4:     If (Me.EOF = 0) Then
  loc_10B32FD:       Me.MoveLast
  loc_10B3302:     End If
  loc_10B3302:   End If
  loc_10B3302:   Call Proc_35_47_13A10A0(var_140, 0, var_148, var_14C)
  loc_10B3323:   Proc_5_0_110649C(&HFF, Me, global_68, 0)
  loc_10B332B: End If
  loc_10B332B: Exit Sub
  loc_10B332C: ' Referenced from: 10B30D4
  loc_10B3332: unk_49C7F4.RollbackTrans
  loc_10B333F: Set var_11C = Err()
  loc_10B3345: Call 0.Method_arg_2C (var_124, 0, var_154)
  loc_10B3366: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_10B3379: Exit Sub
  loc_10B337A: Set arg_6058 = var_158
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'ED9950
  'Data Table: 49C7D8
  Dim var_98 As TextBox
  loc_ED989C: On Error Goto loc_ED9949
  loc_ED98C2: Call Proc_35_50_EF56B8(Proc_5_1_100CB50("EDIT", Me))
  loc_ED98DA: Set var_90 = Me.Txt
  loc_ED98E0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_ED98E8: var_98.Enabled = False
  loc_ED9901: Set var_90 = Me.Txt
  loc_ED9907: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_ED990F: var_98.Enabled = False
  loc_ED9926: Set var_90 = Me.Txt
  loc_ED992C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_ED9934: var_98.SetFocus
  loc_ED9940: Exit Sub
  loc_ED9946: Set var_88 = Nothing
  loc_ED9949: ' Referenced from: ED989C
  loc_ED9949: Proc_6_60_E62BC4(global_68)
  loc_ED994E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18354
  'Data Table: 49C7D8
  loc_E18349: Me.Global.Unload Me
  loc_E18351: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB4860
  'Data Table: 49C7D8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EB47D0: On Error Goto loc_EB485A
  loc_EB47EA: If (Me.RecordCount <= 0) Then
  loc_EB47F3:   var_B8 = "Information"
  loc_EB480E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB481E:   Exit Sub
  loc_EB481F: End If
  loc_EB4829: var_10C = "Select Distinct Docid as SearchCode,V.Description As VType,S.VNo as VrNo,S.VDate as V_Date,R.Name as Depart From ((STOCK S Left Join Voucher_Type V On S.VType=V.V_Type) Left Join Depart R On S.RestCode=R.Code) Where V.V_Type='" & global_120
  loc_EB4830: MemVar_1F920E4 = var_10C & "' Order By S.Docid"
  loc_EB483D: MemVar_1F92120 = Me
  loc_EB4854: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EB4859: Exit Sub
  loc_EB485A: ' Referenced from: EB47D0
  loc_EB485A: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EB485F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E36318
  'Data Table: 49C7D8
  Dim arg_60FF As Double
  loc_E36308: Proc_5_0_110649C(&HFF, Me)
  loc_E36310: Call Proc_35_47_13A10A0(global_68)
  loc_E36315: Exit Sub
  loc_E36316: arg_60FF = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E363D8
  'Data Table: 49C7D8
  Dim arg_60FF As Double
  loc_E363C8: Proc_5_0_110649C(&HFF, Me)
  loc_E363D0: Call Proc_35_47_13A10A0(global_68)
  loc_E363D5: Exit Sub
  loc_E363D6: arg_60FF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E36438
  'Data Table: 49C7D8
  loc_E36428: Proc_5_0_110649C(&HFF, Me)
  loc_E36430: Call Proc_35_47_13A10A0(global_68)
  loc_E36435: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E36498
  'Data Table: 49C7D8
  Dim arg_60FF As Double
  loc_E36488: Proc_5_0_110649C(&HFF, Me)
  loc_E36490: Call Proc_35_47_13A10A0(global_68)
  loc_E36495: Exit Sub
  loc_E36496: arg_60FF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFD7D0
  'Data Table: 49C7D8
  Dim arg_2700 As Long
  loc_DFD7CC: Exit Sub
  loc_DFD7CD: arg_2700 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3E620
  'Data Table: 49C7D8
  Dim Me As Recordset15
  loc_E3E5F7: Me.Requery -1
  loc_E3E607: Me.Requery -1
  loc_E3E617: Me.Requery -1
  loc_E3E61C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '152C08C
  'Data Table: 49C7D8
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A0 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_A4 As Variant
  Dim var_AC As String
  Dim var_144 As String
  Dim var_148 As String
  Dim unk_49C7F4 As Connection15
  Dim var_A8 As Variant
  Dim var_14C As Variant
  Dim var_150 As Variant
  Dim Me As Recordset15
  Dim var_8A As Integer
  Dim var_1C8 As Variant
  Dim var_738 As Double
  Dim var_1E0 As TextBox
  Dim var_264 As TextBox
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_394 As Variant
  Dim var_3B4 As Variant
  Dim var_428 As Variant
  Dim var_448 As Variant
  Dim var_750 As Double
  Dim var_758 As Double
  Dim var_680 As Variant
  Dim var_6A0 As Variant
  Dim var_1CC As String
  Dim var_1D0 As String
  Dim var_1D4 As String
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_204 As Variant
  Dim var_2D0 As Variant
  Dim var_490 As Variant
  Dim var_6E8 As Variant
  Dim var_88 As Recordset15
  Dim var_1E4 As String
  loc_152B218: On Error Goto loc_152C06F
  loc_152B226: Set var_A0 = Me.Txt
  loc_152B22C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_152B255: If (Proc_6_27_EA565C(var_A4, "Voucher Date") = 0) Then
  loc_152B258:   Exit Sub
  loc_152B259: End If
  loc_152B264: Set var_A0 = Me.Txt
  loc_152B26A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_152B293: If (Proc_6_27_EA565C(var_A4, "Voucher No") = 0) Then
  loc_152B296:   Exit Sub
  loc_152B297: End If
  loc_152B2A2: Set var_A0 = Me.Txt
  loc_152B2A8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_152B2D1: If (Proc_6_27_EA565C(var_A4, "Depart") = 0) Then
  loc_152B2D4:   Exit Sub
  loc_152B2D5: End If
  loc_152B2D5: var_BC = 1
  loc_152B2DE: var_DC = 1
  loc_152B2FC: var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_152B302: var_11C = Trim(var_10C)
  loc_152B31E: If (var_11C = vbNullString) Then
  loc_152B33A:   MsgBox("Fill Item Name ", 0, var_10C, var_11C, var_13C)
  loc_152B35D:   Me.FGrid.Row = 1
  loc_152B369:   Set var_A0 = Me.FGrid
  loc_152B38D:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_152B395:   Exit Sub
  loc_152B396: End If
  loc_152B396: var_BC = 1
  loc_152B39F: var_DC = 3
  loc_152B3BD: var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_152B3C3: var_11C = Trim(var_10C)
  loc_152B3DF: If (var_11C = vbNullString) Then
  loc_152B3F5:   var_FC = "Item Detail Required "
  loc_152B3FB:   MsgBox(var_FC, 0, var_10C, var_11C, var_13C)
  loc_152B41E:   Me.FGrid.Row = 1
  loc_152B42A:   Set var_A0 = Me.FGrid
  loc_152B43F:   var_BC = CVar(CLng("14737632")) 'Long
  loc_152B44E:   Me.FGrid.CellBackColor = var_BC
  loc_152B456:   Exit Sub
  loc_152B457: End If
  loc_152B45A: Call Proc_35_48_108EBD0(var_13E, FGrid.DispID_8001, var_DC, var_BC)
  loc_152B465: If (var_13E = 0) Then
  loc_152B468:   Exit Sub
  loc_152B469: End If
  loc_152B474: Set var_A0 = Me.TxtGrid
  loc_152B47A: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A4, 0, FGrid.DispID_8001)
  loc_152B482: var_A4.Visible = var_DC
  loc_152B48E: Call Proc_35_51_EBE244(var_BC)
  loc_152B497: Set var_A0 = Me.TopCtrl1
  loc_152B49D: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_A4)
  loc_152B4A5: var_AC = CStr()
  loc_152B4B6: If (var_AC = "Add") Then
  loc_152B4E6:   Set var_A0 = Me.Txt
  loc_152B4EC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_AC, "Select Count(*) From STOCK Where DocID='", var_FC, -1)
  loc_152B4F4:   var_A8 = var_A4.Text
  loc_152B50D:   unk_49C7F4.Execute var_14C & var_AC & "'", 0, var_150
  loc_152B51D:    = var_14C.Item()
  loc_152B525:    = var_150.Value
  loc_152B552:   If (var_A8.Fields > 0) Then
  loc_152B55B:     Call Proc_35_53_1069058(MemVar_1F92044)
  loc_152B56E:     Set var_A0 = Me.Txt
  loc_152B574:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_152B57C:     var_A4.Text = var_AC
  loc_152B58B:     Exit Sub
  loc_152B58C:   End If
  loc_152B58F: Else
  loc_152B5AC:   var_A4 = Me.Fields.Item("DocID")
  loc_152B5B4:   var_FC = var_A4.Value
  loc_152B5BD:   var_AC = CStr(var_FC)
  loc_152B5C3:   global_84 = var_AC
  loc_152B5D4: End If
  loc_152B5E2: unk_49C7F4.BeginTrans var_154
  loc_152B605: Set var_A0 = Me.Txt
  loc_152B60B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_AC, "Delete From STOCK Where DocID='", var_FC)
  loc_152B613: -1 = var_A4.Text
  loc_152B623: var_148 = var_A8 & var_AC & "'"
  loc_152B62C: unk_49C7F4.Execute var_148, &HFF, var_AC
  loc_152B66B: For var_158 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_158 'Integer
  loc_152B675:   var_BC = CVar(CLng(var_92)) 'Long
  loc_152B67D:   var_DC = CVar(CLng(6)) 'Long
  loc_152B697:   var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_152B6C4:   Set var_A4 = Me.FGrid
  loc_152B6D5:   var_AC = CStr(var_A4.TextMatrix))
  loc_152B703:   If CBool(CVar(CLng(3)) And (CDbl(Val(var_AC)) <> CDbl(0))) Then
  loc_152B714:     Set var_A0 = Me.Txt
  loc_152B71A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_AC, CVar(CLng(var_92)))
  loc_152B722:     (Trim(var_10C) <> vbNullString) = var_A4.Text
  loc_152B735:     Set var_A8 = Me.Txt
  loc_152B73B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_14C, var_148)
  loc_152B743:     var_DC = var_14C.Text
  loc_152B750:     var_738 = Val(var_148)
  loc_152B75E:     Set var_150 = Me.Txt
  loc_152B764:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1D8, var_738)
  loc_152B773:     Proc_6_7_F25D88(var_10C, CVar(var_1D8))
  loc_152B786:     Set var_1DC = Me.Txt
  loc_152B78C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1E0, var_1E4)
  loc_152B794:     var_BC = var_1E0.Tag
  loc_152B7B9:     Set var_260 = Me.Txt
  loc_152B7BF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_264)
  loc_152B7D0:     var_178 = CVar(CLng(var_92)) 'Long
  loc_152B7D8:     var_198 = CVar(CLng(0)) 'Long
  loc_152B801:     var_300 = CVar(CLng(var_92)) 'Long
  loc_152B809:     var_320 = CVar(CLng(6)) 'Long
  loc_152B828:     var_394 = CVar(CLng(var_92)) 'Long
  loc_152B830:     var_3B4 = CVar(CLng(2)) 'Long
  loc_152B84F:     var_428 = CVar(CLng(var_92)) 'Long
  loc_152B857:     var_448 = CVar(CLng(3)) 'Long
  loc_152B8AA:     var_750 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_152B8DB:     var_758 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_152B8EC:     Proc_6_7_F25D88(var_640, Date, var_758, CVar(CLng(5)), CVar(CLng(var_92)), var_750, CVar(CLng(4)), CVar(CLng(var_92)))
  loc_152B8F5:     var_680 = CVar(CLng(var_92)) 'Long
  loc_152B8FD:     var_6A0 = CVar(CLng(5)) 'Long
  loc_152B936:     var_144 = "Insert Into Stock(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Sno,Item,Unit,Qtyrec,Rate,Amount,U_Name,U_EntDt,U_AE,TOTAL) Values ('" & var_AC
  loc_152B93D:     var_1CC = var_144 & "',"
  loc_152B972:     var_204 = CVar(var_1CC & CStr(var_738) & ",") & var_10C & ",'" & CVar(var_1E4) & "','" 
  loc_152B9B6:     var_2D0 = var_204 & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F92070) & "','" & CVar(var_264.Tag) & "','','',''," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_152B9F2:     var_490 = var_2D0 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_152BA51:     var_6E8 = var_490 & "," & CVar(var_750) & "," & CVar(var_758) & ",'" & CVar(MemVar_1F920C8) & "'," & var_640 & ",'A'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_152BA68:     unk_49C7F4.Execute CStr(var_6E8 & ")"), var_72C, -1
  loc_152BB0E:   End If
  loc_152BB11: Next var_158 'Integer
  loc_152BB1A: Set var_A0 = Me.TopCtrl1
  loc_152BB20: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_152BB39: If (CStr() = "Add") Then
  loc_152BB50:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_152BB76:   Set var_A0 = Me.Txt
  loc_152BB7C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_1CC, var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='")
  loc_152BB84:   var_1C8 = var_A4.Tag
  loc_152BB8D:   var_1D4 = -1 & var_1CC
  loc_152BB94:   var_11C = CVar(var_1CC & CStr(var_738) & "' And VP.Date_From<=") 'String
  loc_152BBA5:   Set var_A8 = Me.Txt
  loc_152BBAB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_14C, var_1E4)
  loc_152BBB3:   var_11C = var_14C.Text
  loc_152BBC1:   Proc_6_7_F25D88(var_10C, CVar(var_1E4))
  loc_152BBE0:   unk_49C7F4.Execute CStr(var_150 & var_10C & " Order By VP.Date_From DESC"), , 
  loc_152BBEB:   Set var_88 = var_150
  loc_152BC2F:   If (var_88.RecordCount > 0) Then
  loc_152BC40:     Set var_A0 = Me.Txt
  loc_152BC46:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_152BC5B:     var_738 = Val(var_A4.Text)
  loc_152BC70:     var_A8 = var_88.Fields
  loc_152BC80:     var_FC = var_A8.Item("V_Type").Value
  loc_152BCAB:     Proc_6_7_F25D88(var_1C8, CVar(var_88.Fields.Item("Date_From")))
  loc_152BCC5:     var_144 = CStr(var_738)
  loc_152BCE5:     var_1E4 = "Update Voucher_Prefix Set Start_Srl_No=" & var_144 & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_152BD10:     unk_49C7F4.Execute CStr(CVar(var_1E4 & "') and V_Type='") & var_FC & "' and Date_From=" & var_1C8), var_204, -1
  loc_152BD4A:   End If
  loc_152BD4A: End If
  loc_152BD4E: Set var_A0 = Me.TopCtrl1
  loc_152BD54: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_1DC)
  loc_152BD6D: If (CStr(var_738) = "Add") Then
  loc_152BD93:   var_AC = "SELECT COUNT(*) FROM LASTVOU WHERE UNAME='" & MemVar_1F920C8
  loc_152BDA3:   Call 0.Method_arg_50 (var_144, var_AC & "' AND ENAME='", var_FC, -1, var_A0)
  loc_152BDB3:   var_1D0 = var_A4 & var_144 & "' "
  loc_152BDBC:   unk_49C7F4.Execute var_1D0, 0, var_A8
  loc_152BDC4:   var_10C = var_A0.Fields
  loc_152BDCC:    = var_A4.Item()
  loc_152BDD4:    = var_A8.Value
  loc_152BE01:   If (var_10C > 0) Then
  loc_152BE22:     Set var_A0 = Me.Txt
  loc_152BE28:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_AC, "UPDATE LASTVOU  SET DOCID='")
  loc_152BE30:     var_FC = var_A4.Text
  loc_152BE39:     var_144 = -1 & var_AC
  loc_152BE57:     Call 0.Method_arg_50 (var_1D0, var_144 & "' WHERE UNAME='" & MemVar_1F920C8 & "' AND ENAME='")
  loc_152BE70:     unk_49C7F4.Execute var_A8 & var_1D0 & "'  ", , 
  loc_152BE97:   Else
  loc_152BEBB:     Call 0.Method_arg_50 (var_144, "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "','", var_204)
  loc_152BEC4:     var_1CC = -1 & var_144
  loc_152BECB:     var_1D4 = var_144 & "' WHERE UNAME='" & MemVar_1F920C8 & "','"
  loc_152BEDC:     Set var_A0 = Me.Txt
  loc_152BEE2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4, var_1D0)
  loc_152BEEA:     var_1D4 = var_A4.Text
  loc_152BF19:     Proc_6_7_F25D88(var_10C, Date)
  loc_152BF25:     var_BC = ",'A','"
  loc_152BF4B:     unk_49C7F4.Execute CStr(CVar(var_A8 & var_1D0 & "','" & MemVar_1F92070 & "',") & var_10C & var_BC & CVar(MemVar_1F92078) & "')"), , 
  loc_152BF83:   End If
  loc_152BF83: End If
  loc_152BF89: unk_49C7F4.CommitTrans
  loc_152BF90: var_8A = 0
  loc_152BFA1: Set var_A0 = Me.Txt
  loc_152BFA7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A4)
  loc_152BFC3: var_8A = 0
  loc_152BFD1: Me.Requery -1
  loc_152BFFB: Me.Find "SearchCode ='" & var_A4.Text & "'", 0, 1
  loc_152C00B: Set var_A0 = Me.TopCtrl1
  loc_152C011: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_BC)
  loc_152C02A: If (CStr(var_8A) = "Add") Then
  loc_152C02D:   Call TopCtrl1_UnknownEvent_A()
  loc_152C032:   Exit Sub
  loc_152C033: End If
  loc_152C056: Call Proc_35_50_EF56B8(Proc_5_1_100CB50("INI", Me), global_68)
  loc_152C061: Call Proc_35_47_13A10A0(var_8A)
  loc_152C06B: Set var_88 = Nothing
  loc_152C06E: Exit Sub
  loc_152C06F: ' Referenced from: 152B218
  loc_152C075: If (var_8A = &HFF) Then
  loc_152C07E:   unk_49C7F4.RollbackTrans
  loc_152C083: End If
  loc_152C083: Proc_6_60_E62BC4()
  loc_152C088: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F59588
  'Data Table: 49C7D8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F59468: On Error Goto loc_F59582
  loc_F5947A: Me.DGRoom.Visible = False
  loc_F59499: If (Me.RecordCount > 0) Then
  loc_F594D8:   Set var_B4 = Me.Txt
  loc_F594DE:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(3), var_B8)
  loc_F594E6:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F59519:   var_B0 = Me.Fields.Item("Code")
  loc_F59538:   Set var_B4 = Me.Txt
  loc_F5953E:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(3), var_B8)
  loc_F59546:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5955C: End If
  loc_F59567: Set var_A8 = Me.Txt
  loc_F5956D: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(3))
  loc_F59575: var_B0.SetFocus
  loc_F59581: Exit Sub
  loc_F59582: ' Referenced from: F59468
  loc_F59582: Proc_6_60_E62BC4(var_B0)
  loc_F59587: Exit Sub
End Sub

Private Sub Form_Load() '1212E5C
  'Data Table: 49C7D8
  Dim var_C4 As Variant
  Dim var_88 As String
  Dim unk_49C7F4 As Connection15
  Dim var_B0 As Recordset15
  Dim var_B4 As Fields15
  Dim var_C8 As Field20
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_100 As Variant
  Dim var_120 As Variant
  loc_121299C: On Error Goto loc_1212E55
  loc_12129AF: global_128 = MemVar_1F921BC
  loc_12129B9: global_132 = MemVar_1F921C0
  loc_12129C3: var_C4 = 0
  loc_12129E3: var_88 = "Select 'O'+Depart.ShortName From Depart Where Code='" & MemVar_1F921B8
  loc_12129F3: unk_49C7F4.Execute var_88 & "'", var_AC, -1
  loc_12129FB: var_B0 = var_B0.Fields
  loc_1212A03: var_C4 = var_B4.Item(var_B4)
  loc_1212A0B: var_C8 = var_C8.Value
  loc_1212A1A: global_120 = CStr(var_D8)
  loc_1212A41: Set global_56 = New 
  loc_1212A53: Me.Recordset15.CursorLocation = 3
  loc_1212A80: var_AC = CVar("Select V_Type As Code,Description As Name,NCat From Voucher_Type Where V_TYPE='" & global_120 & "' Order by Description") 'String
  loc_1212A8A: Me.Open var_AC, CVar(MemVar_1F92044), 3
  loc_1212A9E: CVarUnk
  loc_1212AA3: VerifyVarObj
  loc_1212AA9: Set var_B0 = Me.DGVType
  loc_1212AAF: LateIdStAd
  loc_1212AD4: If (Me.RecordCount <= 0) Then
  loc_1212AF0:   MsgBox("House Keeping Not Configured for selected Department", 0, var_D8, var_100, var_120)
  loc_1212B00: End If
  loc_1212B0A: Set global_60 = New 
  loc_1212B1C: Me.CursorLocation = 3
  loc_1212B38: var_9C = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,I.LPurRate From ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code WHERE I.TYPE IN ('Store Item','Consumables') AND IG.TYPE IN ('Store Item','Consumables') And I.ItemType='Store' Order by I.Name"
  loc_1212B44: Me.Open var_9C, CVar(MemVar_1F92044), 3
  loc_1212B52: CVarUnk
  loc_1212B57: VerifyVarObj
  loc_1212B5D: Set var_B0 = Me.DGItem
  loc_1212B63: LateIdStAd
  loc_1212B8D: Me.DGItem.CursorLocation = 3
  loc_1212BC3: CVarUnk
  loc_1212BC8: VerifyVarObj
  loc_1212BD4: LateIdStAd
  loc_1212BEC: Set global_68 = New 
  loc_1212BFE: Me.DGRoom.CursorLocation = 3
  loc_1212C24: var_88 = "Select Distinct S.DocId as SearchCode,S.DocID From STOCK S WHERE VTYPE='" & global_120
  loc_1212C2B: var_AC = CVar(var_88 & "' Order by Docid") 'String
  loc_1212C35: elect R.Code ,R.Name As Name From Depart R where R.RestType in ('House Keeping')Order by R.Name", CVar(MemVar_1F92044), 3 var_AC, CVar(MemVar_1F92044), 3
  loc_1212C65: Call 0.Method_arg_50 (var_88, "SELECT COUNT(*) FROM LASTVOU WHERE ENAME='", var_AC, -1, Me.DGRoom, var_B4, 0, var_C8)
  loc_1212C8C: unk_49C7F4.Execute var_D8 & var_88 & "' AND UNAME='" & MemVar_1F920C8 & "'", 1, -1
  loc_1212C94: var_B0 = var_B0.Fields
  loc_1212C9C: 1 = var_B4.Item(New)
  loc_1212CA4: -1 = var_C8.Value
  loc_1212CD1: If (var_D8 > 0) Then
  loc_1212D0C:   Call 0.Method_arg_50 (var_88, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_AC, -1, var_B0, var_B4, 0)
  loc_1212D33:   unk_49C7F4.Execute var_C8 & var_88 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_D8, "SearchCode='"
  loc_1212D3B:   0 = var_B0.Fields
  loc_1212D43:   var_13C = var_B4.Item(1)
  loc_1212D4B:    = var_C8.Value
  loc_1212D6A:   Me.Find CStr(var_D8 & "'"), , 
  loc_1212D92: End If
  loc_1212DA9: If (Me.RecordCount > 0) Then
  loc_1212DC0:   If (Me.EOF = &HFF) Then
  loc_1212DC9:     Me.MoveLast
  loc_1212DCE:   End If
  loc_1212DCE: End If
  loc_1212DF1: Call Proc_35_50_EF56B8(Proc_5_1_100CB50("INI", Me))
  loc_1212E0E: Set var_B0 = Me
  loc_1212E14: Proc_6_23_DFBA28(var_B0, 4950)
  loc_1212E25: Call 0.Method_arg_160 (var_B0, 8595)
  loc_1212E33: Call 0.Method_arg_164 (var_B0)
  loc_1212E3B: Call Proc_35_44_1180538(global_68)
  loc_1212E40: Call Proc_35_47_13A10A0()
  loc_1212E4F: Call 0.Method_arg_64 (CLng(global_132))
  loc_1212E54: Exit Sub
  loc_1212E55: ' Referenced from: 121299C
  loc_1212E55: Proc_6_60_E62BC4()
  loc_1212E5A: Exit Sub
End Sub

Private Sub Form_Resize() 'E5C2FC
  'Data Table: 49C7D8
  loc_E5C2EA: Proc_6_135_12A9B7C(var_A8, Me, "DU")
  loc_E5C2F8: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E78928
  'Data Table: 49C7D8
  loc_E788CF: Set global_64 = Nothing
  loc_E788E1: Set global_60 = Nothing
  loc_E788F3: Set global_56 = Nothing
  loc_E78905: Set global_72 = Nothing
  loc_E78917: Set global_68 = Nothing
  loc_E78923: MasterFormExit = 0
  loc_E78926: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2559C
  'Data Table: 49C7D8
  loc_E25581: If (MasterFormExit = &HFF) Then
  loc_E25591:   Me.Global.Unload Me
  loc_E25599: End If
  loc_E25599: Exit Sub
  loc_E2559A: Get , ,  'get  bytes
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E36078
  'Data Table: 49C7D8
  loc_E3604C: On Error Goto loc_E36070
  loc_E36067: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3606F: Exit Sub
  loc_E36070: ' Referenced from: E3604C
  loc_E36070: Proc_6_60_E62BC4(Shift)
  loc_E36075: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10F2D5C
  'Data Table: 49C7D8
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_90 As Variant
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim var_108 As TextBox
  Dim Me As Recordset15
  loc_10F2A4E: Set var_88 = Me.TxtGrid
  loc_10F2A54: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_10F2A62: Proc_6_74_E226B0(var_8C)
  loc_10F2A6E: Call Proc_35_51_EBE244(var_8C)
  loc_10F2A7F: If (Index = 0) Then
  loc_10F2A98:   Me.FGrid.CellBackColor = CVar(CLng(global_80))
  loc_10F2AB3:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F2ABC:   Set var_8C = Me.FGrid
  loc_10F2AF2:   Set var_108 = Me.TxtGrid
  loc_10F2AF8:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_10F2B00:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_10F2B41:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_10F2B51:     Set var_90 = Me.TxtGrid
  loc_10F2B57:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_11C)
  loc_10F2B5F:     var_114 = var_108.Height
  loc_10F2B71:     Set var_88 = Me.TxtGrid
  loc_10F2B77:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_118)
  loc_10F2B7F:     var_A4 = var_8C.Top
  loc_10F2B8B:     var_A4 = CVar((var_118 + var_11C)) 'Single
  loc_10F2B9A:     Me.DGItem.Top = var_A4
  loc_10F2BB9:     Set var_88 = Me.TxtGrid
  loc_10F2BBF:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_10F2BDE:     Me.DGItem.Left = CVar(var_8C.Left)
  loc_10F2C2D:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10F2C30:       Exit Sub
  loc_10F2C31:     End If
  loc_10F2C37:     Me.MoveFirst
  loc_10F2C4F:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F2C57:     var_E4 = CVar(CLng(6)) 'Long
  loc_10F2C60:     Set var_8C = Me.FGrid
  loc_10F2C66:     var_D4 = var_8C.TextMatrix)
  loc_10F2C9B:     Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_10F2CCB:     If (Me.EOF = &HFF) Then
  loc_10F2CD4:       Me.MoveFirst
  loc_10F2CD9:     End If
  loc_10F2CE2:     CVarUnk
  loc_10F2CE7:     VerifyVarObj
  loc_10F2CED:     Set var_88 = Me.DGItem
  loc_10F2CF3:     LateIdStAd
  loc_10F2D04:   Else
  loc_10F2D0B:     If (var_114 = CLng(3)) Then
  loc_10F2D23:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, Me.TxtGrid, global_60)
  loc_10F2D2B:       var_8C.MaxLength = var_138
  loc_10F2D40:       If (global_110 = 0) Then
  loc_10F2D4B:         var_110 = "{Home}+{End}"
  loc_10F2D51:         Proc_303_0_FB9B68(CStr(var_D4), 0, var_D4)
  loc_10F2D59:       End If
  loc_10F2D59:     End If
  loc_10F2D59:   End If
  loc_10F2D59: End If
  loc_10F2D59: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10D3D0C
  'Data Table: 49C7D8
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_10D3A18: If (KeyCode = 0) Then
  loc_10D3A25:   If (CLng(Shift) = &H1B) Then
  loc_10D3A35:     Set var_8C = Me.TxtGrid
  loc_10D3A3B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_10D3A55:     Set var_98 = Me.TxtGrid
  loc_10D3A5B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_10D3A63:     var_9C.Text = var_90.Tag
  loc_10D3A7F:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_10D3A84:     Call Proc_35_51_EBE244(arg_14)
  loc_10D3A8D:     Set var_8C = Me.FGrid
  loc_10D3AAA:     Set var_8C = Me.TxtGrid
  loc_10D3AB0:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_10D3AB8:     var_90.Visible = FGrid.DispID_8001
  loc_10D3AC4:     Exit Sub
  loc_10D3AC5:   End If
  loc_10D3AD8:   var_B0 = CLng(Me.FGrid.Col)
  loc_10D3AE8:   If (var_B0 = CLng(1)) Then
  loc_10D3B03:     Set var_9C = Nothing
  loc_10D3B3C:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF)
  loc_10D3B5A:     If (CLng(Shift) = &HD) Then
  loc_10D3B63:       Call Proc_35_46_12B37D8(KeyCode, var_B2, 1, Nothing)
  loc_10D3B6E:       If (var_B2 = &HFF) Then
  loc_10D3BB4:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_110, 3, 0)
  loc_10D3BC4:       End If
  loc_10D3BC4:     End If
  loc_10D3BC7:   Else
  loc_10D3BCE:     If (var_B0 = CLng(2)) Then
  loc_10D3BDB:       If (CLng(Shift) = &HD) Then
  loc_10D3BE4:         Call Proc_35_46_12B37D8(KeyCode, var_B2, 3, 0)
  loc_10D3BEF:         If (var_B2 = &HFF) Then
  loc_10D3C3C:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_110, CByte((CInt(3) + 1)), 0)
  loc_10D3C4C:         End If
  loc_10D3C4C:       End If
  loc_10D3C4F:     Else
  loc_10D3C56:       If (var_B0 = CLng(3)) Then
  loc_10D3C99:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_110 = &HFF))) Then
  loc_10D3CA2:           Call Proc_35_46_12B37D8(KeyCode, var_B2, 0, 0)
  loc_10D3CAD:           If (var_B2 = &HFF) Then
  loc_10D3CFA:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_110, CByte((CInt(3) + 1)), 0)
  loc_10D3D0A:           End If
  loc_10D3D0A:         End If
  loc_10D3D0A:       End If
  loc_10D3D0A:     End If
  loc_10D3D0A:   End If
  loc_10D3D0A: End If
  loc_10D3D0A: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F00C0C
  'Data Table: 49C7D8
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F00B33: Proc_6_58_E054C0(arg_10)
  loc_F00B44: If (KeyAscii = 0) Then
  loc_F00B5A:   var_A0 = CLng(Me.FGrid.Col)
  loc_F00B6A:   If (var_A0 = CLng(1)) Then
  loc_F00B89:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F00B90:       Set var_AC = Me.TxtGrid
  loc_F00B9B:       var_A4 = "Name"
  loc_F00BB6:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_60, arg_10)
  loc_F00BC5:     End If
  loc_F00BC8:   Else
  loc_F00BCF:     If (var_A0 = CLng(3)) Then
  loc_F00BDC:       Set var_8C = Me.TxtGrid
  loc_F00BE2:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F00BFD:       Proc_6_42_129A86C(var_AC, arg_10, 8, 3)
  loc_F00C09:     End If
  loc_F00C09:   End If
  loc_F00C09: End If
  loc_F00C09: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDAA78
  'Data Table: 49C7D8
  loc_EDA9C4: On Error Goto loc_EDAA6F
  loc_EDA9D3: If (KeyCode = 0) Then
  loc_EDA9F9:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_EDAA1F:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_EDAA30:       Call TxtGrid_KeyDown(KeyCode, global_108)
  loc_EDAA5F:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_60, Shift, "Name")
  loc_EDAA6E:     End If
  loc_EDAA6E:   End If
  loc_EDAA6E: End If
  loc_EDAA6E: Exit Sub
  loc_EDAA6F: ' Referenced from: EDA9C4
  loc_EDAA6F: Proc_6_60_E62BC4(&HFF, 0)
  loc_EDAA74: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21BDC
  'Data Table: 49C7D8
  Dim arg_10 As Integer
  loc_E21BC4: If (Cancel = 0) Then
  loc_E21BCD:   Call Proc_35_46_12B37D8(Cancel, var_88)
  loc_E21BD6:   arg_10 = Not(var_88)
  loc_E21BD9: End If
  loc_E21BD9: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10F3B34
  'Data Table: 49C7D8
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  Dim arg_24FF As Double
  loc_10F381E: Set var_88 = Me.Txt
  loc_10F3824: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10F3832: Proc_6_74_E226B0(var_8C)
  loc_10F383E: Call Proc_35_51_EBE244(var_8C)
  loc_10F3846: var_92 = Index
  loc_10F3851: If (var_92 = CInt(0)) Then
  loc_10F3867:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_10F38C0:   Set var_88 = Me.Txt
  loc_10F38C6:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_10F38CE:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10F38E6:   If (var_92 Or (var_C0 = vbNullString)) Then
  loc_10F38E9:     Exit Sub
  loc_10F38EA:   End If
  loc_10F38F7:   Set var_88 = Me.Txt
  loc_10F38FD:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F3905:   var_C0 = var_8C.Text
  loc_10F390D:   var_D4 = CVar(var_C0) 'String
  loc_10F3952:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_10F395B:     Me.MoveFirst
  loc_10F3980:     Set var_88 = Me.Txt
  loc_10F3986:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_10F398E:     0 = var_8C.Text
  loc_10F399C:     Proc_6_17_EAA2B0(var_D4, CVar(var_C0))
  loc_10F39B2:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_10F39CA:   End If
  loc_10F39CD: Else
  loc_10F39D5:   If (var_92 = CInt(3)) Then
  loc_10F3A26:     Set var_88 = Me.Txt
  loc_10F3A2C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F3A4C:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_10F3A4F:       Exit Sub
  loc_10F3A50:     End If
  loc_10F3A5D:     Set var_88 = Me.Txt
  loc_10F3A63:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10F3A6B:     var_C0 = var_8C.Text
  loc_10F3A73:     var_D4 = CVar(var_C0) 'String
  loc_10F3AB8:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_10F3AC1:       Me.MoveFirst
  loc_10F3AE6:       Set var_88 = Me.Txt
  loc_10F3AEC:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_10F3AF4:       0 = var_8C.Text
  loc_10F3B02:       Proc_6_17_EAA2B0(var_D4, CVar(var_C0))
  loc_10F3B18:       Me.Find CStr(1 & var_D4), var_F8, 
  loc_10F3B30:     End If
  loc_10F3B30:   End If
  loc_10F3B30: End If
  loc_10F3B30: Exit Sub
  loc_10F3B31: arg_24FF = 
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '103588C
  'Data Table: 49C7D8
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  loc_103565E: If (CLng(Shift) = &H1B) Then
  loc_1035661:   Call Proc_35_51_EBE244()
  loc_1035666:   Exit Sub
  loc_1035667: End If
  loc_103566A: var_86 = KeyCode
  loc_1035675: If (var_86 = CInt(0)) Then
  loc_1035690:   Set var_9C = Nothing
  loc_103569B:   Set var_98 = Nothing
  loc_10356C9:   Proc_6_69_134A198(Me.DGVType, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_10356E0: Else
  loc_10356E8:   If (var_86 = CInt(3)) Then
  loc_1035703:     Set var_9C = Nothing
  loc_103573C:     Proc_6_69_134A198(Me.DGRoom, Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_1035750:   End If
  loc_1035750: End If
  loc_1035781: Set var_98 = Me.DGRoom
  loc_10357A6: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGItem.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_10357BE:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10357C7:     Proc_6_75_E527CC(Shift, arg_14, var_9C, 0, 1)
  loc_10357CC:   End If
  loc_10357D0:   Set var_8C = Me.TopCtrl1
  loc_10357D6:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_98)
  loc_10357F8:   If ((CStr(var_9C) = "Add") And (KeyCode <> CInt(0))) Then
  loc_1035810:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1035819:       Proc_6_76_E52838(Shift, arg_14)
  loc_103581E:     End If
  loc_1035821:   Else
  loc_1035825:     Set var_8C = Me.TopCtrl1
  loc_103582B:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(0)
  loc_103584D:     If ((CStr(var_86) = "Edit") And (KeyCode <> CInt(2))) Then
  loc_1035865:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_103586E:         Proc_6_76_E52838(Shift)
  loc_1035873:       End If
  loc_1035873:     End If
  loc_1035873:   End If
  loc_1035888:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_103588B:   End If
  loc_103588B: End If
  loc_103588B: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F74754
  'Data Table: 49C7D8
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F74610: On Error Goto loc_F7474E
  loc_F74616: Proc_6_58_E054C0(arg_10)
  loc_F7461E: var_86 = KeyAscii
  loc_F74629: If (var_86 = CInt(0)) Then
  loc_F74648:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F7465E:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_F7466D:     Set var_B8 = Me.Txt
  loc_F74678:     var_B0 = "Name"
  loc_F74693:     Proc_6_89_146F1AC(var_B8, KeyAscii, global_56, arg_10)
  loc_F746A2:   End If
  loc_F746A5: Else
  loc_F746AD:   If (var_86 = CInt(1)) Then
  loc_F746BA:     Set var_8C = Me.Txt
  loc_F746C0:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_F746DB:     Proc_6_42_129A86C(var_B8, arg_10, 8)
  loc_F746EA:   Else
  loc_F746F2:     If (var_86 = CInt(3)) Then
  loc_F74711:       If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F7473E:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_F7474D:       End If
  loc_F7474D:     End If
  loc_F7474D:   End If
  loc_F7474D: End If
  loc_F7474D: Exit Sub
  loc_F7474E: ' Referenced from: F74610
  loc_F7474E: Proc_6_60_E62BC4(0, 0)
  loc_F74753: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFDA7C
  'Data Table: 49C7D8
  Dim var_86 As Integer
  loc_DFDA77: var_86 = KeyCode
  loc_DFDA7A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F584
  'Data Table: 49C7D8
  loc_E4F562: Set var_88 = Me.Txt
  loc_E4F568: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F576: Proc_6_73_E22704(var_8C)
  loc_E4F582: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '146E514
  'Data Table: 49C7D8
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_160 As TextBox
  Dim var_184 As Variant
  Dim var_18C As TextBox
  Dim var_1B0 As Variant
  Dim var_130 As String
  Dim unk_49C7F4 As Connection15
  Dim var_9C As Variant
  Dim var_15C As Variant
  Dim var_CC As Variant
  loc_146D950: On Error Goto loc_146E50D
  loc_146D956: var_8E = Cancel
  loc_146D961: If (var_8E = CInt(0)) Then
  loc_146D96F:   Set var_94 = Me.Txt
  loc_146D975:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_146D97D:   var_A0 = "Voucher Type"
  loc_146D99E:   If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_146D9AC:     Set var_94 = Me.Txt
  loc_146D9B2:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_146D9BA:     var_98.SetFocus
  loc_146D9C8:     arg_10 = &HFF
  loc_146D9CB:     Exit Sub
  loc_146D9CC:   End If
  loc_146DA1A:   Set var_94 = Me.Txt
  loc_146DA20:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_146DA28:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_146DA40:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_146DA50:     Set var_94 = Me.Txt
  loc_146DA56:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146DA5E:     var_98.Text = vbNullString
  loc_146DA77:     Set var_94 = Me.Txt
  loc_146DA7D:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146DA85:     var_98.Tag = vbNullString
  loc_146DA97:     global_100 = vbNullString
  loc_146DA9E:   Else
  loc_146DAD9:     Set var_9C = Me.Txt
  loc_146DADF:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_146DAE7:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_146DB38:     Set var_9C = Me.Txt
  loc_146DB3E:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_146DB46:     var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_146DB79:     var_98 = Me.Fields.Item("NCat")
  loc_146DB90:     global_100 = CStr(var_98.Value)
  loc_146DBA5:     Set var_94 = Me.TopCtrl1
  loc_146DBAB:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_8E)
  loc_146DBC4:     If (CStr() = "Add") Then
  loc_146DBD2:       If (global_116 = "Automatic") Then
  loc_146DBE2:         Set var_94 = Me.Txt
  loc_146DBE8:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_146DBF0:         var_98.Enabled = False
  loc_146DBFF:       Else
  loc_146DC0C:         Set var_94 = Me.Txt
  loc_146DC12:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_146DC1A:         var_98.Enabled = True
  loc_146DC31:         Set var_94 = Me.Txt
  loc_146DC37:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_146DC3F:         var_98.SetFocus
  loc_146DC4B:       End If
  loc_146DC4B:     End If
  loc_146DC4B:   End If
  loc_146DC4F:   Set var_94 = Me.TopCtrl1
  loc_146DC55:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_98)
  loc_146DC5D:   var_A0 = CStr()
  loc_146DC6E:   If (var_A0 = "Add") Then
  loc_146DC77:     Call Proc_35_53_1069058(MemVar_1F92044)
  loc_146DC8A:     Set var_94 = Me.Txt
  loc_146DC90:     Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_146DC98:     var_98.Text = var_A0
  loc_146DCA7:   End If
  loc_146DCAA: Else
  loc_146DCB2:   If (var_8E = CInt(1)) Then
  loc_146DCC0:     Set var_94 = Me.Txt
  loc_146DCC6:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_146DCCE:     var_A0 = "Vr. No"
  loc_146DCEF:     If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_146DCFD:       Set var_94 = Me.Txt
  loc_146DD03:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_146DD0B:       var_98.SetFocus
  loc_146DD19:       arg_10 = &HFF
  loc_146DD1C:       Exit Sub
  loc_146DD1D:     End If
  loc_146DD2B:     Set var_94 = Me.Txt
  loc_146DD31:     Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A0)
  loc_146DD39:     arg_10 = var_98.Text
  loc_146DD51:     If (CDbl(var_A0) = CDbl(0)) Then
  loc_146DD6D:       MsgBox("Vr. No Can Not Be 0", 0, var_EC, var_10C, var_12C)
  loc_146DD87:       Set var_94 = Me.Txt
  loc_146DD8D:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146DD95:       var_98.SetFocus
  loc_146DDA3:       arg_10 = &HFF
  loc_146DDA6:       Exit Sub
  loc_146DDA7:     End If
  loc_146DDAB:     Set var_94 = Me.TopCtrl1
  loc_146DDB1:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_10)
  loc_146DDCA:     If (CStr(var_A0) = "Add") Then
  loc_146DDF2:       Set var_94 = Me.Txt
  loc_146DDF8:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_146DE1F:       Set var_9C = Me.Txt
  loc_146DE25:       Call 0.Method_Txt_Validate0 (CInt(0), var_BC, var_138)
  loc_146DE2D:       5 = var_BC.Tag
  loc_146DE3A:       var_CC = Space((CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_98.Tag) - Len(var_138)))
  loc_146DE42:       var_10C = ( + "Vr. No Can Not Be 0")
  loc_146DE56:       var_12C = Space((5 - Len(global_92)))
  loc_146DE5E:       var_148 = (var_10C + var_12C)
  loc_146DE6B:       var_158 = (var_148 + CVar(global_92))
  loc_146DE82:       Set var_15C = Me.Txt
  loc_146DE88:       Call 0.Method_Txt_Validate0 (CInt(1), var_160, var_164)
  loc_146DE90:       8 = var_160.Text
  loc_146DE9D:       var_174 = Space((var_158 - Len(var_164)))
  loc_146DEA5:       var_184 = ( + var_174)
  loc_146DEB7:       Set var_188 = Me.Txt
  loc_146DEBD:       Call 0.Method_Txt_Validate0 (CInt(1), var_18C)
  loc_146DED0:       var_1B0 = (var_184 + CVar(var_18C.Text))
  loc_146DF29:       Set var_94 = Me.Txt
  loc_146DF2F:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_146DF37:       var_98.Text = CStr(var_1B0)
  loc_146DF53:       Me.LblVPrefix.Caption = global_92
  loc_146DF5B:     End If
  loc_146DF5F:     Set var_94 = Me.TopCtrl1
  loc_146DF65:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_146DF6D:     var_A0 = CStr()
  loc_146DF7E:     If (var_A0 = "Add") Then
  loc_146DFAE:       Set var_94 = Me.Txt
  loc_146DFB4:       Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0, "Select Count(*) From STOCK Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_146DFC5:       var_130 = var_BC & var_A0
  loc_146DFD5:       unk_49C7F4.Execute var_130 & "'", 0, var_15C
  loc_146DFE5:        = var_BC.Item()
  loc_146DFED:        = var_15C.Value
  loc_146E01A:       If (var_98.Text.Fields > 0) Then
  loc_146E023:         Call 0.Method_arg_50 (var_A0)
  loc_146E044:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_A0), var_10C, var_12C)
  loc_146E05A:         Call Proc_35_53_1069058(MemVar_1F92044)
  loc_146E06A:         If (var_A0 = vbNullString) Then
  loc_146E077:           Set var_94 = Me.Txt
  loc_146E07D:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146E085:           var_98.SetFocus
  loc_146E093:           arg_10 = &HFF
  loc_146E096:           Exit Sub
  loc_146E097:         End If
  loc_146E09D:         Call Proc_35_53_1069058(MemVar_1F92044, var_A0)
  loc_146E0B0:         Set var_94 = Me.Txt
  loc_146E0B6:         Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_A0)
  loc_146E0BE:         var_98.Text = arg_10
  loc_146E0CF:         arg_10 = &HFF
  loc_146E0D2:         Exit Sub
  loc_146E0D3:       End If
  loc_146E0D3:     End If
  loc_146E0D6:   Else
  loc_146E0DE:     If (var_8E = CInt(2)) Then
  loc_146E0EF:       Set var_94 = Me.Txt
  loc_146E0F5:       Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_A0)
  loc_146E0FD:       arg_10 = var_98.Text
  loc_146E113:       var_10C = Len(Trim(CVar(var_A0)))
  loc_146E12D:       If (var_10C = 0) Then
  loc_146E143:         Set var_94 = Me.Txt
  loc_146E149:         Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_146E151:         var_98.Text = CStr(MemVar_1F920EC)
  loc_146E163:       Else
  loc_146E16D:         Set var_94 = Me.Txt
  loc_146E173:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146E193:         Set var_BC = Me.Txt
  loc_146E199:         Call 0.Method_Txt_Validate0 (Cancel, var_15C)
  loc_146E1A1:         var_15C.Text = Proc_6_33_1512840(var_98)
  loc_146E1B4:       End If
  loc_146E1C1:       Set var_94 = Me.Txt
  loc_146E1C7:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146E1CF:       var_A0 = var_98.Text
  loc_146E1EA:       Set var_9C = Me.Txt
  loc_146E1F0:       Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_130)
  loc_146E1F8:       (CDate(var_A0) >= MemVar_1F920F4) = var_BC.Text
  loc_146E21A:       If Not((var_A0 And (CDate(var_130) <= MemVar_1F920FC))) Then
  loc_146E23E:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_10C, var_12C)
  loc_146E258:         Set var_94 = Me.Txt
  loc_146E25E:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_146E266:         var_98.SetFocus
  loc_146E274:         arg_10 = &HFF
  loc_146E277:         Exit Sub
  loc_146E278:       End If
  loc_146E27C:       Set var_94 = Me.TopCtrl1
  loc_146E282:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_10)
  loc_146E28A:       var_A0 = CStr(var_98)
  loc_146E2A0:       Set var_98 = Me.Txt
  loc_146E2A6:       Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_146E2CF:       If ((var_A0 = "Add") And (var_9C.Text = vbNullString)) Then
  loc_146E2D8:         Call Proc_35_53_1069058(MemVar_1F92044)
  loc_146E2EB:         Set var_94 = Me.Txt
  loc_146E2F1:         Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_146E2F9:         var_98.Text = var_A0
  loc_146E308:       End If
  loc_146E30B:     Else
  loc_146E313:       If (var_8E = CInt(3)) Then
  loc_146E321:         Set var_94 = Me.Txt
  loc_146E327:         Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_146E32F:         var_A0 = "Depart"
  loc_146E350:         If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_146E35E:           Set var_94 = Me.Txt
  loc_146E364:           Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_146E36C:           var_98.SetFocus
  loc_146E37A:           arg_10 = &HFF
  loc_146E37D:           Exit Sub
  loc_146E37E:         End If
  loc_146E3CC:         Set var_94 = Me.Txt
  loc_146E3D2:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_146E3DA:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_146E3F2:         If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_146E402:           Set var_94 = Me.Txt
  loc_146E408:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146E410:           var_98.Text = vbNullString
  loc_146E429:           Set var_94 = Me.Txt
  loc_146E42F:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_146E437:           var_98.Tag = vbNullString
  loc_146E446:         Else
  loc_146E481:           Set var_9C = Me.Txt
  loc_146E487:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_146E48F:           var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_146E4D3:           var_A0 = CStr(Me.Fields.Item("Code").Value)
  loc_146E4E0:           Set var_9C = Me.Txt
  loc_146E4E6:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_146E4EE:           var_BC.Tag = var_A0
  loc_146E504:         End If
  loc_146E504:       End If
  loc_146E504:     End If
  loc_146E504:   End If
  loc_146E504: End If
  loc_146E509: Set var_88 = Nothing
  loc_146E50C: Exit Sub
  loc_146E50D: ' Referenced from: 146D950
  loc_146E50D: Proc_6_60_E62BC4(var_A0)
  loc_146E512: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10A9450
  'Data Table: 49C7D8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_10C As Variant
  Dim var_13C As Variant
  loc_10A919B: Me.DGItem.Visible = False
  loc_10A91BA: If (Me.RecordCount > 0) Then
  loc_10A91F7:   Set var_B4 = Me.TxtGrid
  loc_10A91FD:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10A9205:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_10A922E:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A9236:   var_EC = CVar(CLng(1)) 'Long
  loc_10A9269:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10A9271:   Set var_B8 = Me.FGrid
  loc_10A9277:   LateIdCallSt
  loc_10A92A6:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A92AE:   var_EC = CVar(CLng(6)) 'Long
  loc_10A92E1:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10A92EF:   LateIdCallSt
  loc_10A9315:   var_10C = Me.FGrid.Row
  loc_10A9356:   var_11C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")), CVar(CLng(2)), CVar(CLng(var_10C)), Me.FGrid, var_11C, CVar(CLng(2)))) 'String
  loc_10A9364:   LateIdCallSt
  loc_10A9388:   var_11C = Me.FGrid.Row
  loc_10A93B8:   var_B0 = Me.Fields.Item("LPurRate")
  loc_10A93C7:   Proc_6_39_E7C810(var_10C, CVar(var_B0), CVar(CLng(4)), CVar(CLng(var_11C)), Me.FGrid, var_11C)
  loc_10A93D0:   var_13C = CVar(CStr(var_10C)) 'String
  loc_10A93D8:   Set var_B8 = Me.FGrid
  loc_10A93DE:   LateIdCallSt
  loc_10A93FA: End If
  loc_10A9406: Set var_A8 = Me.TxtGrid
  loc_10A940C: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_13E, var_B8, var_13C)
  loc_10A9414: var_A4 = var_B0.Visible
  loc_10A9426: If (var_13E = &HFF) Then
  loc_10A9432:   Set var_A8 = Me.TxtGrid
  loc_10A9438:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_B8)
  loc_10A9440:   var_B0.SetFocus
  loc_10A944C: End If
  loc_10A944C: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'FD3E58
  'Data Table: 49C7D8
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD3C9C: On Error Goto loc_FD3E50
  loc_FD3CAE: Me.DGVType.Visible = False
  loc_FD3CCD: If (Me.RecordCount > 0) Then
  loc_FD3D1F:   Set var_CC = Me.Txt
  loc_FD3D25:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD3D2D:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD3D85:   Set var_B4 = Me.DGVType
  loc_FD3D9C:   Set var_CC = Me.Txt
  loc_FD3DA2:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD3DAA:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD3DFE:   global_100 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD3E0F: End If
  loc_FD3E2D: Set var_B0 = Me.Txt
  loc_FD3E33: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD3E3B: var_B4.SetFocus
  loc_FD3E4F: Exit Sub
  loc_FD3E50: ' Referenced from: FD3C9C
  loc_FD3E50: Proc_6_60_E62BC4(var_B4)
  loc_FD3E55: Exit Sub
End Sub

Public Function MasterFormExitGet() '49D418
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '49D427
  MasterFormExit = Value
End Sub

Public Sub FindMove(mDocId) 'E76888
  'Data Table: 49C7D8
  Dim Me As Recordset15
  loc_E76832: Me.MoveFirst
  loc_E7685C: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E7687C: If (Me.EOF = 0) Then
  loc_E7687F:   Call Proc_35_47_13A10A0(var_9C)
  loc_E76884: End If
  loc_E76884: Exit Sub
  loc_E76885: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E95F38
  'Data Table: 49C7D8
  Dim Me As Recordset15
  loc_E95EC6: On Error Goto loc_E95F2F
  loc_E95ECF: Me.MoveFirst
  loc_E95EF9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95F21: Proc_5_0_110649C(&HFF, Me, global_68)
  loc_E95F29: Call Proc_35_47_13A10A0(0)
  loc_E95F2E: Exit Sub
  loc_E95F2F: ' Referenced from: E95EC6
  loc_E95F2F: Proc_6_60_E62BC4(var_A0)
  loc_E95F34: Exit Sub
End Sub

Public Sub Proc_35_44_1180538
  'Data Table: 49C7D8
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_118016E: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_1180189: Me.FGrid.Top = CVar(CDbl(1500))
  loc_11801A4: Me.FGrid.Height = CVar(CDbl(2800))
  loc_11801BF: Me.FGrid.Width = CVar(CDbl(8280))
  loc_11801DA: Me.DGItem.Left = CVar(CDbl(3000))
  loc_11801F5: Me.DGItem.Top = CVar(CDbl(1000))
  loc_118020B: Set var_A8 = Me.Txt
  loc_1180211: Call 0.Method_Proc_35_44_11805380 (CInt(3), var_AC)
  loc_1180230: Me.DGRoom.Left = CVar(var_AC.Left)
  loc_118024C: Set var_B4 = Me.Txt
  loc_1180252: Call 0.Method_Proc_35_44_11805380 (CInt(3), var_B8)
  loc_118026D: Set var_A8 = Me.Txt
  loc_1180273: Call 0.Method_Proc_35_44_11805380 (CInt(3), var_AC)
  loc_118028B: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_118029A: Me.DGRoom.Top = CVar(var_AC.Left)
  loc_11802BA: Set var_A8 = Me.Txt
  loc_11802C0: Call 0.Method_Proc_35_44_11805380 (CInt(0), var_AC)
  loc_11802DF: Me.DGVType.Left = CVar(var_AC.Left)
  loc_11802FB: Set var_B4 = Me.Txt
  loc_1180301: Call 0.Method_Proc_35_44_11805380 (CInt(0), var_B8)
  loc_118031C: Set var_A8 = Me.Txt
  loc_1180322: Call 0.Method_Proc_35_44_11805380 (CInt(0), var_AC)
  loc_118033A: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1180349: Me.DGVType.Top = CVar(var_AC.Left)
  loc_118035F: Set var_C4 = Me.FGrid
  loc_1180376: global_80 = CStr(CLng(var_C4.BackColor))
  loc_118038C: var_C4.Cols = 7
  loc_1180394: var_94 = CVar(CLng(0)) 'Long
  loc_1180399: var_E8 = &HFA
  loc_11803A5: LateIdCallSt
  loc_11803AD: var_94 = 0
  loc_11803B9: var_E8 = CVar(CLng(1)) 'Long
  loc_11803BE: var_108 = "Item Name"
  loc_11803C7: LateIdCallSt
  loc_11803D2: var_94 = CVar(CLng(1)) 'Long
  loc_11803DD: var_E8 = CVar(CInt(1)) 'Integer
  loc_11803E4: LateIdCallSt
  loc_11803EF: var_94 = CVar(CLng(1)) 'Long
  loc_11803F4: var_E8 = &H122A
  loc_1180400: LateIdCallSt
  loc_1180408: var_94 = 0
  loc_1180414: var_E8 = CVar(CLng(2)) 'Long
  loc_1180419: var_108 = "Unit"
  loc_1180422: LateIdCallSt
  loc_118042D: var_94 = CVar(CLng(2)) 'Long
  loc_1180438: var_E8 = CVar(CInt(1)) 'Integer
  loc_118043F: LateIdCallSt
  loc_118044A: var_94 = CVar(CLng(2)) 'Long
  loc_118044F: var_E8 = &H578
  loc_118045B: LateIdCallSt
  loc_1180463: var_94 = 0
  loc_118046F: var_E8 = CVar(CLng(3)) 'Long
  loc_1180474: var_108 = "Qty"
  loc_118047D: LateIdCallSt
  loc_1180488: var_94 = CVar(CLng(3)) 'Long
  loc_1180493: var_E8 = CVar(CInt(7)) 'Integer
  loc_118049A: LateIdCallSt
  loc_11804A5: var_94 = CVar(CLng(3)) 'Long
  loc_11804B0: var_E8 = CVar(CInt(7)) 'Integer
  loc_11804B7: LateIdCallSt
  loc_11804C2: var_94 = CVar(CLng(3)) 'Long
  loc_11804C7: var_E8 = &H578
  loc_11804D3: LateIdCallSt
  loc_11804DE: var_94 = CVar(CLng(4)) 'Long
  loc_11804E3: var_E8 = 0
  loc_11804EF: LateIdCallSt
  loc_11804FA: var_94 = CVar(CLng(5)) 'Long
  loc_11804FF: var_E8 = 0
  loc_118050B: LateIdCallSt
  loc_1180516: var_94 = CVar(CLng(6)) 'Long
  loc_118051B: var_E8 = 0
  loc_1180527: LateIdCallSt
  loc_1180531: Set var_C4 = Nothing 
  loc_1180535: Exit Sub
End Sub

Public Sub Proc_35_45_E400A4
  'Data Table: 49C7D8
  loc_E40080: Set var_88 = Me.TopCtrl1
  loc_E40086: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_E4009F: If (CStr() = "Browse") Then
  loc_E400A2:   Exit Sub
  loc_E400A3: End If
  loc_E400A3: Exit Sub
End Sub

Public Sub Proc_35_46_12B37D8(arg_C) '12B37D8
  'Data Table: 49C7D8
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_BC As String
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_164 As MSHFlexGrid
  Dim var_174 As Variant
  Dim var_178 As String
  Dim var_92 As Integer
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_12B31D0: If (arg_C = 0) Then
  loc_12B31E6:   var_AC = CLng(Me.FGrid.Col)
  loc_12B31F6:   If (var_AC = CLng(1)) Then
  loc_12B3219:     var_B2 = Me.EOF
  loc_12B3247:     Set var_98 = Me.TxtGrid
  loc_12B324D:     Call 0.Method_Proc_35_46_12B37D80 (arg_C, var_B8, var_BC)
  loc_12B3255:     ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_12B326D:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_12B3283:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B328B:       var_EC = CVar(CLng(1)) 'Long
  loc_12B3290:       var_10C = vbNullString
  loc_12B329A:       Set var_B8 = Me.FGrid
  loc_12B32A0:       LateIdCallSt
  loc_12B32C5:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B32CD:       var_EC = CVar(CLng(6)) 'Long
  loc_12B32D2:       var_10C = vbNullString
  loc_12B32DC:       Set var_B8 = Me.FGrid
  loc_12B32E2:       LateIdCallSt
  loc_12B3307:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B330F:       var_EC = CVar(CLng(2)) 'Long
  loc_12B3314:       var_10C = vbNullString
  loc_12B331E:       Set var_B8 = Me.FGrid
  loc_12B3324:       LateIdCallSt
  loc_12B3349:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B3351:       var_EC = CVar(CLng(4)) 'Long
  loc_12B3356:       var_10C = vbNullString
  loc_12B3360:       Set var_B8 = Me.FGrid
  loc_12B3366:       LateIdCallSt
  loc_12B337B:     Else
  loc_12B337E:       Call Proc_35_55_FC08B8(var_B2, var_B8, var_10C, var_EC, var_CC, var_B8, var_10C, var_EC)
  loc_12B3389:       If (var_B2 = 0) Then
  loc_12B3391:         Proc_35_46_12B37D8 = 0
  loc_12B3397:       End If
  loc_12B33B0:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B33B8:       var_EC = CVar(CLng(6)) 'Long
  loc_12B33D2:       var_BC = CStr(Me.FGrid.TextMatrix))
  loc_12B33F0:       var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B33F8:       var_150 = CVar(CLng(6)) 'Long
  loc_12B3412:       var_178 = CStr(Me.FGrid.TextMatrix))
  loc_12B347D:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(6)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_12B3494:         var_92 = CInt(CLng(Me.FGrid.Row))
  loc_12B34B0:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B34B8:         var_FC = CVar(CLng(1)) 'Long
  loc_12B34EB:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_12B34F3:         Set var_164 = Me.FGrid
  loc_12B34F9:         LateIdCallSt
  loc_12B3528:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B3530:         var_FC = CVar(CLng(6)) 'Long
  loc_12B3563:         var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_12B356B:         Set var_164 = Me.FGrid
  loc_12B3571:         LateIdCallSt
  loc_12B35A0:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B35A8:         var_FC = CVar(CLng(2)) 'Long
  loc_12B35D2:         var_12C = Me.Fields.Item("Unit").Value
  loc_12B35DB:         var_140 = CVar(CStr(var_12C)) 'String
  loc_12B35E3:         Set var_164 = Me.FGrid
  loc_12B35E9:         LateIdCallSt
  loc_12B3609:         var_CC = CVar(CLng(var_92)) 'Long
  loc_12B361B:         var_A8 = CVar(CStr(var_92)) 'String
  loc_12B3623:         Set var_98 = Me.FGrid
  loc_12B3629:         LateIdCallSt
  loc_12B3641:         var_140 = Me.FGrid.Row
  loc_12B364A:         var_DC = CVar(CLng(var_140)) 'Long
  loc_12B3652:         var_FC = CVar(CLng(4)) 'Long
  loc_12B365A:         var_CC = "LPurRate"
  loc_12B3669:         var_98 = Me.Fields
  loc_12B3671:         var_B8 = var_98.Item(var_CC)
  loc_12B3680:         Proc_6_39_E7C810(var_12C, CVar(var_B8), var_FC, var_DC, var_98, CVar(var_B8), CVar(CLng(0)))
  loc_12B3689:         var_174 = CVar(CStr(var_12C)) 'String
  loc_12B3691:         Set var_164 = Me.FGrid
  loc_12B3697:         LateIdCallSt
  loc_12B36B3:       End If
  loc_12B36B3:     End If
  loc_12B36B3:     Call Proc_35_56_F734EC(var_164, var_174, var_CC, var_164, var_140)
  loc_12B36BB:   Else
  loc_12B36C2:     If (var_AC = CLng(3)) Then
  loc_12B36CF:       Set var_98 = Me.TxtGrid
  loc_12B36D5:       Call 0.Method_Proc_35_46_12B37D80 (arg_C, var_B8, var_FC)
  loc_12B36ED:       If Not(IsNumeric(CVar(var_B8))) Then
  loc_12B36F4:         var_BC = CStr(0)
  loc_12B3701:         Set var_98 = Me.TxtGrid
  loc_12B3707:         Call 0.Method_Proc_35_46_12B37D80 (arg_C, var_B8, var_BC)
  loc_12B370F:         var_B8.Text = var_DC
  loc_12B371E:       End If
  loc_12B372B:       Set var_98 = Me.TxtGrid
  loc_12B3731:       Call 0.Method_Proc_35_46_12B37D80 (arg_C, var_B8, var_BC)
  loc_12B3739:       var_164 = var_B8.Text
  loc_12B3751:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12B3769:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12B37A3:       LateIdCallSt
  loc_12B37C7:       Call Proc_35_56_F734EC(Me.FGrid, CVar(CStr(Format(CVar(var_BC), "0.000"))), 1, 1)
  loc_12B37CC:     End If
  loc_12B37CC:   End If
  loc_12B37CC: End If
  loc_12B37D1: Proc_35_46_12B37D8 = &HFF
End Sub

Public Sub Proc_35_47_13A10A0
  'Data Table: 49C7D8
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_49C7F4 As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Variant
  Dim var_124 As Variant
  Dim var_138 As Field20
  Dim var_144 As TextBox
  Dim var_BC As Variant
  Dim var_8E As Integer
  Dim var_88 As Recordset15
  Dim var_110 As Variant
  Dim var_15C As Variant
  Dim var_120 As Variant
  loc_13A07B4: On Error Goto loc_13A1098
  loc_13A07CE: If (Me.RecordCount > 0) Then
  loc_13A0810:   var_DC = "Select S.*,D.NAME AS RestName From STOCK S LEFT JOIN DEPART D ON D.CODE=S.RESTCODE Where S.Docid='" & Me.Fields.Item("DocID").Value 
  loc_13A0827:   unk_49C7F4.Execute CStr(var_DC & "'"), var_120, -1
  loc_13A084F:   Set var_128 = var_124 
  loc_13A088C:   Set var_124 = Me.Txt
  loc_13A0892:   Call 0.Method_Proc_35_47_13A10A00 (CInt(4), var_12C)
  loc_13A089A:   var_12C.Text = CStr(var_128.Fields.Item("DocID").Value)
  loc_13A08CA:   var_AC = var_128.Fields.Item("vType")
  loc_13A08D2:   var_BC = var_AC.Value
  loc_13A08DB:   var_100 = CStr(var_BC)
  loc_13A08E9:   Set var_124 = Me.Txt
  loc_13A08EF:   Call 0.Method_Proc_35_47_13A10A00 (CInt(0), var_12C)
  loc_13A08F7:   var_12C.Tag = var_100
  loc_13A093A:   Set var_98 = Me.Txt
  loc_13A0940:   Call 0.Method_Proc_35_47_13A10A00 (CInt(0), var_AC, var_100, "Select NCAT From Voucher_Type Where V_Type='", var_BC, -1)
  loc_13A0948:   var_124 = var_AC.Tag
  loc_13A0961:   unk_49C7F4.Execute var_12C & var_100 & "'", 0, var_138
  loc_13A0971:    = var_12C.Item(var_124)
  loc_13A0979:    = var_138.Value
  loc_13A0988:   global_100 = CStr(var_124.Fields)
  loc_13A09D8:   Set var_98 = Me.Txt
  loc_13A09DE:   Call 0.Method_Proc_35_47_13A10A00 (CInt(0), var_AC, var_100, "Select Description From Voucher_type Where V_Type='", var_BC, -1)
  loc_13A09FF:   unk_49C7F4.Execute var_12C & var_100 & "'", 0, var_138
  loc_13A0A0F:    = var_12C.Item()
  loc_13A0A17:    = var_138.Value
  loc_13A0A2E:   Set var_140 = Me.Txt
  loc_13A0A34:   Call 0.Method_Proc_35_47_13A10A00 (CInt(0), var_144)
  loc_13A0A3C:   var_144.Text = CStr(var_AC.Tag.Fields)
  loc_13A0A9D:   Set var_124 = Me.Txt
  loc_13A0AA3:   Call 0.Method_Proc_35_47_13A10A00 (CInt(1), var_12C)
  loc_13A0AAB:   var_12C.Text = CStr(var_128.Fields.Item("VNo").Value)
  loc_13A0B13:   Set var_124 = Me.Txt
  loc_13A0B19:   Call 0.Method_Proc_35_47_13A10A00 (CInt(2), var_12C, CStr(Format(CVar(var_128.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_13A0B21:   var_12C.Text = 1
  loc_13A0B73:   Me.LblVPrefix.Caption = CStr(var_128.Fields.Item("vPrefix").Value)
  loc_13A0BBD:   Set var_124 = Me.Txt
  loc_13A0BC3:   Call 0.Method_Proc_35_47_13A10A00 (CInt(3), var_12C)
  loc_13A0BCB:   var_12C.Tag = Proc_6_38_E68A98(CVar(var_128.Fields.Item("RestCode")))
  loc_13A0C1B:   Call 0.Method_Proc_35_47_13A10A00 (CInt(3), var_12C)
  loc_13A0C23:   var_12C.Text = Proc_6_38_E68A98(CVar(var_128.Fields.Item("RestName")))
  loc_13A0C39:   Set var_128 = Nothing 
  loc_13A0C4C:   Me.FGrid.Redraw = False
  loc_13A0C67:   Me.FGrid.Rows = 1
  loc_13A0C71:   var_8E = 1
  loc_13A0C81:   var_CC = "Select S1.*,I.name as ItemName From STOCK S1 Left Join ItemMast I On S1.Item=I.Code And I.ItemType='Store' Where S1.DocId='"
  loc_13A0CCA:   unk_49C7F4.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_13A0CD5:   Set var_88 = Me.Txt
  loc_13A0D03:   If (var_88.RecordCount > 0) Then
  loc_13A0D06:     ' Referenced from: 13A0FCF
  loc_13A0D15:     If Not(var_88.EOF) Then
  loc_13A0D18:       var_A8 = vbNullString
  loc_13A0D22:       Set var_98 = Me.FGrid
  loc_13A0D37:       Set var_14C = Me.FGrid
  loc_13A0D3E:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_13A0D46:       var_110 = CVar(CLng(0)) 'Long
  loc_13A0D76:       var_DC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_13A0D7D:       LateIdCallSt
  loc_13A0D97:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_13A0D9F:       var_110 = CVar(CLng(6)) 'Long
  loc_13A0DCF:       var_DC = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_13A0DD6:       LateIdCallSt
  loc_13A0E25:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_14C, var_DC, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_13A0E2C:       LateIdCallSt
  loc_13A0E5E:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_13A0E66:       var_15C = CVar(CLng(3)) 'Long
  loc_13A0E9A:       LateIdCallSt
  loc_13A0EE9:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(2)), CVar(CLng(var_8E)), var_14C, CVar(CStr(Format(CVar(var_88.Fields.Item("QtyRec")), "0.000"))), 1, 1)) 'String
  loc_13A0EF0:       LateIdCallSt
  loc_13A0F39:       Proc_6_39_E7C810(var_DC, CVar(var_88.Fields.Item("Rate")), CVar(CLng(4)), CVar(CLng(var_8E)), var_14C, var_DC)
  loc_13A0F49:       LateIdCallSt
  loc_13A0F94:       Proc_6_39_E7C810(var_DC, CVar(var_88.Fields.Item("Amount")), CVar(CLng(5)), CVar(CLng(var_8E)), var_14C, CVar(CStr(var_DC)))
  loc_13A0F9D:       var_FC = CVar(CStr(var_DC)) 'String
  loc_13A0FA4:       LateIdCallSt
  loc_13A0FBA:       Set var_14C = Nothing 
  loc_13A0FC4:       var_8E = (var_8E + 1)
  loc_13A0FCA:       var_88.MoveNext
  loc_13A0FCF:       GoTo loc_13A0D06
  loc_13A0FD2:     End If
  loc_13A0FE5:     Me.FGrid.FixedRows = 1
  loc_13A0FED:   End If
  loc_13A0FFB:   Me.FGrid.Redraw = True
  loc_13A1009:   If (var_8E = 1) Then
  loc_13A101F:     Me.FGrid.Rows = 1
  loc_13A1045:     var_BC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_8E, var_14C, var_FC, var_15C))) 'String
  loc_13A104D:     Set var_AC = Me.FGrid
  loc_13A107A:     Me.FGrid.FixedRows = 1
  loc_13A1082:   End If
  loc_13A1085: Else
  loc_13A1085:   Call Proc_35_49_F2FDAC(FGrid.DispID_10000, var_BC, var_EC, var_14C)
  loc_13A108A: End If
  loc_13A108A: Call Proc_35_51_EBE244(var_DC, var_14C)
  loc_13A1094: Set var_88 = Nothing
  loc_13A1097: Exit Sub
  loc_13A1098: ' Referenced from: 13A07B4
  loc_13A1098: Proc_6_60_E62BC4(var_DC)
  loc_13A109D: Exit Sub
End Sub

Public Sub Proc_35_48_108EBD0
  'Data Table: 49C7D8
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_49C7F4 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_108E949: Set var_9C = Me.TopCtrl1
  loc_108E94F: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(&HFF)
  loc_108E957: var_B0 = CStr()
  loc_108E968: If (var_B0 = "Add") Then
  loc_108E998:   Set var_9C = Me.Txt
  loc_108E99E:   Call 0.Method_Proc_35_48_108EBD00 (CInt(4), var_B4, var_B0, "Select Count(*) From STOCK Where DocID='", var_AC, -1)
  loc_108E9BF:   unk_49C7F4.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_108E9CF:    = var_D4.Item()
  loc_108E9D7:    = var_E8.Value
  loc_108EA04:   If (var_B4.Text.Fields > 0) Then
  loc_108EA0D:     Call 0.Method_arg_50 (var_B0)
  loc_108EA2E:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_108EA44:     Call Proc_35_53_1069058(MemVar_1F92044)
  loc_108EA57:     Set var_9C = Me.Txt
  loc_108EA5D:     Call 0.Method_Proc_35_48_108EBD00 (CInt(4), var_B4)
  loc_108EA65:     var_B4.Text = var_B0
  loc_108EA79:     Proc_35_48_108EBD0 = 0
  loc_108EA7F:   End If
  loc_108EA7F: End If
  loc_108EAA4: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_108EAAE:   var_CC = CVar(CLng(var_88)) 'Long
  loc_108EAB6:   var_108 = CVar(CLng(6)) 'Long
  loc_108EAD6:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_108EAF2:   If CBool(var_118 <> vbNullString) Then
  loc_108EAF9:     var_CC = CVar(CLng(var_88)) 'Long
  loc_108EB01:     var_108 = CVar(CLng(3)) 'Long
  loc_108EB31:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_108EB59:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_108EB7F:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_108EB8B:       Set var_9C = Me.FGrid
  loc_108EBAF:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_108EBBC:       Proc_35_48_108EBD0 = 0
  loc_108EBC2:     End If
  loc_108EBC2:   End If
  loc_108EBC5: Next var_12C 'Integer
  loc_108EBCA: Proc_35_48_108EBD0 = 
End Sub

Public Sub Proc_35_49_F2FDAC
  'Data Table: 49C7D8
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_C8 As Variant
  loc_F2FCA5: Me.LblVPrefix.Caption = vbNullString
  loc_F2FCBB: Set var_8C = Me.Txt
  loc_F2FCC1: Call 0.Method_Proc_35_49_F2FDACC (var_8E, var_86)
  loc_F2FCD1: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F2FCE7:   Set var_8C = Me.Txt
  loc_F2FCED:   Call 0.Method_Proc_35_49_F2FDAC0 (CInt(var_86), var_98)
  loc_F2FCF5:   var_98.Text = vbNullString
  loc_F2FD11:   Set var_8C = Me.Txt
  loc_F2FD17:   Call 0.Method_Proc_35_49_F2FDAC0 (CInt(var_86), var_98)
  loc_F2FD1F:   var_98.Tag = vbNullString
  loc_F2FD2E: Next var_92 'Byte
  loc_F2FD47: Me.FGrid.Rows = 1
  loc_F2FD6D: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_F2FD75: Set var_98 = Me.FGrid
  loc_F2FDA2: Me.FGrid.FixedRows = 1
  loc_F2FDAA: Exit Sub
End Sub

Public Sub Proc_35_50_EF56B8(arg_C) 'EF56B8
  'Data Table: 49C7D8
  Dim var_98 As TextBox
  loc_EF55EE: Set var_8C = Me.Txt
  loc_EF55F4: Call 0.Method_Proc_35_50_EF56B8C (var_8E, var_86)
  loc_EF5604: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EF561A:   Set var_8C = Me.Txt
  loc_EF5620:   Call 0.Method_Proc_35_50_EF56B80 (CInt(var_86), var_98)
  loc_EF5628:   var_98.Enabled = arg_C
  loc_EF5637: Next var_92 'Byte
  loc_EF564A: Set var_8C = Me.Txt
  loc_EF5650: Call 0.Method_Proc_35_50_EF56B80 (CInt(4), var_98)
  loc_EF5658: var_98.Enabled = False
  loc_EF5671: Set var_8C = Me.Txt
  loc_EF5677: Call 0.Method_Proc_35_50_EF56B80 (CInt(2), var_98)
  loc_EF567F: var_98.Enabled = False
  loc_EF569A: Set var_8C = Me.Txt
  loc_EF56A0: Call 0.Method_Proc_35_50_EF56B80 (global_96, var_98)
  loc_EF56A8: var_98.Enabled = False
  loc_EF56B4: Exit Sub
End Sub

Public Sub Proc_35_51_EBE244
  'Data Table: 49C7D8
  loc_EBE1BC: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EBE1CE:   Me.DGVType.Visible = False
  loc_EBE1D6: End If
  loc_EBE1F2: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_EBE204:   Me.DGRoom.Visible = False
  loc_EBE20C: End If
  loc_EBE228: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EBE23A:   Me.DGItem.Visible = False
  loc_EBE242: End If
  loc_EBE242: Exit Sub
End Sub

Public Sub Proc_35_52_F0C468
  'Data Table: 49C7D8
  loc_F0C38C: Call Proc_35_51_EBE244()
  loc_F0C39C: Set var_88 = Me.Txt
  loc_F0C3A2: Call 0.Method_Proc_35_52_F0C4680 (CInt(2))
  loc_F0C3CB: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F0C3CE:   Exit Sub
  loc_F0C3CF: End If
  loc_F0C3DA: Set var_88 = Me.Txt
  loc_F0C3E0: Call 0.Method_Proc_35_52_F0C4680 (CInt(1), var_8C)
  loc_F0C409: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F0C40C:   Exit Sub
  loc_F0C40D: End If
  loc_F0C444: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0C447:   Call TopCtrl1_UnknownEvent_16()
  loc_F0C44F: Else
  loc_F0C455:   Call 0.Method_arg_1E8 (var_88)
  loc_F0C45D:   Call var_88.SetFocus
  loc_F0C466: End If
  loc_F0C466: Exit Sub
End Sub

Public Sub Proc_35_53_1069058
  'Data Table: 49C7D8
  Dim var_98 As TextBox
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_C0 As Variant
  Dim var_F4 As Variant
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  loc_1068E1A: Call 0.Method_Proc_35_53_10690580 (CInt(0), var_98)
  loc_1068E2A: var_90 = var_98.Tag
  loc_1068E55: Me.Connection15.Execute "Select MAX(vno)AS VNO From STOCK s Where s.VType='" & var_90 & "' ", var_C0, -1
  loc_1068E60: Set var_8C = Me.Txt
  loc_1068E84: If (var_8C.RecordCount > 0) Then
  loc_1068EA4:   var_D4 = Year(DateAdd("d", CDbl(&HFF), MemVar_1F920F4))
  loc_1068EB3:   global_92 = CStr(var_D4)
  loc_1068ED8:   var_98 = var_8C.Fields.Item("VNo")
  loc_1068EE7:   Proc_6_39_E7C810(var_D4, CVar(var_98))
  loc_1068EF4:   var_F4 = (var_D4 + 1)
  loc_1068EFC:   global_96 = CInt(var_F4)
  loc_1068F0B: End If
  loc_1068F36: var_C0 = Space((5 - Len(var_90)))
  loc_1068F3E: var_F4 = (CVar(global_96 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + CVar(var_98))
  loc_1068F52: var_108 = Space((5 - Len(global_92)))
  loc_1068F5A: var_118 = (var_F4 + var_108)
  loc_1068F67: var_128 = (var_118 + CVar(global_92))
  loc_1068F80: var_13C = Space((8 - Len(CStr(global_96))))
  loc_1068F88: var_14C = (var_128 + var_13C)
  loc_1068F97: var_16C = (var_14C + CVar(CStr(global_96)))
  loc_1068FA2: global_84 = CStr(var_16C)
  loc_1068FD8: Me.LblVPrefix.Caption = global_92
  loc_1068FF1: Set var_94 = Me.Txt
  loc_1068FF7: Call 0.Method_Proc_35_53_10690580 (CInt(4), var_98)
  loc_1068FFF: var_98.Text = global_84
  loc_1069027: Call 0.Method_Proc_35_53_10690580 (CInt(1), var_98)
  loc_106902F: var_98.Text = CStr(global_96)
  loc_1069044: var_88 = global_84
  loc_106904C: Set var_8C = Nothing
  loc_106904F: Proc_35_53_1069058 = Me.Txt
End Sub

Public Sub Proc_35_54_10B6908(arg_C, arg_10, arg_14) '10B6908
  'Data Table: 49C7D8
  Dim unk_49C7F4 As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B6676: If (arg_C = "HKOP") Then
  loc_10B669D:   unk_49C7F4.Execute "Select Distinct DocId,VType,VNo From STOCK Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B66A8:   Set var_8C = var_C4
  loc_10B66BB:   var_94 = "House Keeping Op.STOCK Entry"
  loc_10B66C1: Else
  loc_10B66C6:   Proc_35_54_10B6908 = &HFF
  loc_10B66CC: End If
  loc_10B66E0: If (var_8C.RecordCount > 0) Then
  loc_10B66E3:   ' Referenced from: 10B685C
  loc_10B66F2:   If Not(var_8C.EOF) Then
  loc_10B66FD:     If (var_90 = vbNullString) Then
  loc_10B6740:       var_D4 = "V.Type :-> " & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B6747:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B6779:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B679E:     Else
  loc_10B67DA:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B67FA:       var_10C = CVar(var_120 & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B6827:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B682C:       var_90 = CStr(var_11C)
  loc_10B6854:     End If
  loc_10B6857:     var_8C.MoveNext
  loc_10B685C:     GoTo loc_10B66E3
  loc_10B685F:   End If
  loc_10B6865:   Call 0.Method_arg_50 (var_138)
  loc_10B68C1:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This ," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B68C4:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B68F3:   Set var_8C = Nothing
  loc_10B68F6:   Proc_35_54_10B6908 = 0
  loc_10B68FC: End If
  loc_10B6901: Proc_35_54_10B6908 = &HFF
End Sub

Public Sub Proc_35_55_FC08B8
  'Data Table: 49C7D8
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC073B: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FC0740:   var_92 = 1 'Byte
  loc_FC0744: End If
  loc_FC074D: Set var_98 = Me.TxtGrid
  loc_FC0753: Call 0.Method_Proc_35_55_FC08B80 (0, var_B0)
  loc_FC0776: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC07AA: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC07CE:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC07D1:     GoTo loc_FC08A3
  loc_FC07D4:   End If
  loc_FC07D8:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC0802:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC080C:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC0841:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC0865:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC087E:     Set var_98 = Me.TxtGrid
  loc_FC0884:     Call 0.Method_Proc_35_55_FC08B80 (0, var_B0, CVar(CLng(var_92)))
  loc_FC088C:     var_B0.SetFocus
  loc_FC089D:     Proc_35_55_FC08B8 = 0
  loc_FC08A3:     ' Referenced from: FC07D1
  loc_FC08A3:   End If
  loc_FC08A6: Next var_D4 'Integer
  loc_FC08B0: Proc_35_55_FC08B8 = &HFF
End Sub

Public Sub Proc_35_56_F734EC
  'Data Table: 49C7D8
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  loc_F733EF: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F733F7: var_C8 = CVar(CLng(4)) 'Long
  loc_F7342F: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F73437: var_134 = CVar(CLng(3)) 'Long
  loc_F7346F: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F73477: var_1F0 = CVar(CLng(5)) 'Long
  loc_F734A8: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_F734B0: Set var_224 = Me.FGrid
  loc_F734B6: LateIdCallSt
  loc_F734E9: Exit Sub
End Sub
