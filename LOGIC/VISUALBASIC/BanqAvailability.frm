VERSION 5.00
Begin VB.Form BanqAvailability
  Caption = "Venue Availability"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 165
  ClientTop = 450
  ClientWidth = 11805
  ClientHeight = 7530
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
  Begin CommandButton BtnPrint
    Caption = "&DosPrint"
    Index = 1
    Left = 14505
    Top = 9195
    Width = 1155
    Height = 330
    TabIndex = 12
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton BtnPrint
    Caption = "P&review"
    Index = 0
    Left = 12195
    Top = 9195
    Width = 1155
    Height = 330
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton BtnPrint
    Caption = "&WinPrint"
    Index = 2
    Left = 13350
    Top = 9195
    Width = 1155
    Height = 330
    TabIndex = 10
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin BtnEnh CmdExit
    Left = 13545
    Top = 8400
    Width = 1365
    Height = 465
    TabIndex = 8
  End
  Begin BtnEnh Cmd
    Index = 0
    Left = 9450
    Top = 8400
    Width = 1365
    Height = 465
    TabIndex = 5
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1470
    Top = 8400
    Width = 1365
    Height = 360
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
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
    Left = 360
    Top = 690
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
  Begin MSHFlexGrid FGrid
    Left = 30
    Top = 555
    Width = 17850
    Height = 7215
    TabIndex = 1
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 7155
    Width = 11805
    Height = 375
    Visible = 0   'False
    TabIndex = 0
  End
  Begin BtnEnh Lable
    Index = 15
    Left = 120
    Top = 8400
    Width = 1365
    Height = 360
    TabIndex = 4
  End
  Begin BtnEnh Cmd
    Index = 1
    Left = 10815
    Top = 8400
    Width = 1365
    Height = 465
    TabIndex = 6
  End
  Begin BtnEnh Cmd
    Index = 2
    Left = 12180
    Top = 8400
    Width = 1365
    Height = 465
    TabIndex = 7
  End
  Begin BtnEnh Lable
    Index = 0
    Left = 7425
    Top = 8400
    Width = 1410
    Height = 360
    TabIndex = 19
  End
  Begin BtnEnh Lable
    Index = 1
    Left = 3645
    Top = 8400
    Width = 1410
    Height = 360
    TabIndex = 20
  End
  Begin BtnEnh Lable
    Index = 2
    Left = 5100
    Top = 8400
    Width = 2295
    Height = 360
    TabIndex = 21
  End
  Begin Label LblDatail
    Caption = "."
    ForeColor = &H80&
    Left = 375
    Top = 7995
    Width = 1350
    Height = 285
    TabIndex = 22
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Arial"
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
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 9
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
  Begin Label Label2
    Index = 4
    BackColor = &HFFFF80&
    ForeColor = &H80000008&
    Left = 10110
    Top = 9810
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Booking Confirm WIth Advance"
    Index = 4
    ForeColor = &H0&
    Left = 10560
    Top = 9825
    Width = 2640
    Height = 225
    Visible = 0   'False
    TabIndex = 17
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Booking Confirm"
    Index = 3
    ForeColor = &H0&
    Left = 8550
    Top = 9825
    Width = 1410
    Height = 225
    Visible = 0   'False
    TabIndex = 16
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Index = 3
    BackColor = &HFF&
    ForeColor = &H80000008&
    Left = 8130
    Top = 9810
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Vacant "
    Index = 1
    ForeColor = &H0&
    Left = 7185
    Top = 9825
    Width = 675
    Height = 225
    Visible = 0   'False
    TabIndex = 14
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &H80000008&
    Left = 6840
    Top = 9810
    Width = 285
    Height = 270
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "BanqAvailability"

Private global_100 As Integer
Private global_84 As Double
Private global_104 As Integer
Private global_116 As Long
Private global_120 As Long
Private global_60 As Integer
Private global_62 As Integer
Private global_112 As Long

Private Sub BTNPRINT_Click(Index As Integer) '13F7B88
  'Data Table: 481B8C
  Dim unk_481BA8 As Connection15
  Dim var_A8 As Variant
  Dim var_94 As Recordset15
  Dim var_BC As Fields15
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_C8 As Fields15
  Dim var_EC As Variant
  Dim var_12C As Variant
  Dim var_10C As String
  Dim var_C4 As String
  Dim var_FC As Variant
  Dim MemVar_1F923C0 As String
  Dim MemVar_1F923C4 As String
  Dim MemVar_1F923CC As String
  Dim var_C0 As TextBox
  Dim var_13C As Variant
  Dim var_20C As Variant
  loc_13F71A8: On Error Goto loc_13F7B80
  loc_13F71B0: global_100 = &HFF
  loc_13F71C9: unk_481BA8.Execute "Select * From FAEnviro", var_B8, -1
  loc_13F71D4: Set var_94 = var_BC
  loc_13F71EC: var_BC = var_94.Fields
  loc_13F7250: var_13C = IIf((Proc_6_38_E68A98(CVar(var_BC.Item("daterfill")), var_BC) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("daterfill")))))
  loc_13F7259: MemVar_1F923C0 = CStr(var_13C)
  loc_13F72ED: var_13C = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F923C0) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")))))
  loc_13F72F6: MemVar_1F923C4 = CStr(var_13C)
  loc_13F738A: var_13C = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F923C4) = vbNullString), "M", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")))))
  loc_13F73CB: var_C0 = var_94.Fields.Item("linefiller")
  loc_13F73E2: var_D8 = "linefiller"
  loc_13F73EE: var_C8 = var_94.Fields
  loc_13F73F6: var_DC = var_C8.Item(var_D8)
  loc_13F740A: var_10C = "-"
  loc_13F7420: var_FC = (Proc_6_38_E68A98(CVar(var_C0), CStr(var_13C)) = vbNullString)
  loc_13F7430: MemVar_1F923CC = CStr(IIf(var_FC, "M", CVar(Proc_6_38_E68A98(CVar(var_DC)))))
  loc_13F7457: global_92 = "23 Day Room Availability Forecast (Report)"
  loc_13F745E: var_88 = "Day23RoomAvail"
  loc_13F7467: var_A8 = global_92
  loc_13F747E: global_96 = CStr(Ucase(var_A8))
  loc_13F749A: If ((global_100 = 0) Or (var_88 = vbNullString)) Then
  loc_13F749D:   Exit Sub
  loc_13F749E: End If
  loc_13F74C5: Set var_BC = global_108 
  loc_13F74CC: CreateFieldDefFile(var_BC, MemVar_1F920B4 & "\" & var_88 & ".ttx", &HFF)
  loc_13F74FE: var_C4 = "\" & var_88
  loc_13F7512: Call 0.Method_arg_1C (MemVar_1F920B4 & var_C4 & ".RPT", var_A8, var_BC)
  loc_13F751D: MemVar_1F921E4 = var_BC
  loc_13F7549: Call 0.Method_arg_64 (var_BC, CVar(var_BC), var_D8)
  loc_13F7551: Call 0.Method_arg_2C (var_FC, MemVar_1F923CC)
  loc_13F755F: Call 0.Method_arg_150 (global_100)
  loc_13F7575: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13F757D: Call 0.Method_arg_24 (var_8A)
  loc_13F7589: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_13F75A2:   Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13F75AA:   Call 0.Method_arg_20 (var_C0)
  loc_13F75B2:   Call 0.Method_arg_30 (var_C4)
  loc_13F75C8:   var_160 = Ucase(CVar(var_C4)) 'Variant
  loc_13F75F8:   If (var_160 = Ucase("Title")) Then
  loc_13F761F:     Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13F7627:     Call 0.Method_arg_20 (var_C0)
  loc_13F762F:     Call 0.Method_arg_38 ("'" & global_92 & "'")
  loc_13F7645:   Else
  loc_13F7667:     If (var_160 = Ucase("BetweenDate")) Then
  loc_13F767B:       Set var_BC = Me.Txt
  loc_13F7681:       Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13F76AC:       Call 0.Method_arg_90 (var_C8, CLng(var_8A))
  loc_13F76B4:       Call 0.Method_arg_20 (var_DC)
  loc_13F76BC:       Call 0.Method_arg_38 ("'From Date " & var_C0.Text & "'")
  loc_13F76D8:     Else
  loc_13F76FA:       If (var_160 = Ucase("Dater")) Then
  loc_13F771E:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13F7726:         Call 0.Method_arg_20 (var_C0)
  loc_13F772E:         Call 0.Method_arg_38 ("'" & MemVar_1F923C0 & "'")
  loc_13F7744:       Else
  loc_13F7766:         If (var_160 = Ucase("Pager")) Then
  loc_13F7770:           var_C4 = "'" & MemVar_1F923C4
  loc_13F778A:           Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13F7792:           Call 0.Method_arg_20 (var_C0)
  loc_13F779A:           Call 0.Method_arg_38 (var_C4 & "'")
  loc_13F77AD:         End If
  loc_13F77AD:       End If
  loc_13F77AD:     End If
  loc_13F77AD:   End If
  loc_13F77B0: Next var_150 'Integer
  loc_13F77C6: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13F77CE: Call 0.Method_arg_24 (var_8A)
  loc_13F77DA: For var_166 =  To CInt(var_14C): 1 = var_166 'Integer
  loc_13F77E7:   For var_16A = 1 To &H17: var_96 = var_16A 'Integer
  loc_13F77F8:     Set var_BC = Me.Txt
  loc_13F77FE:     Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13F7818:     var_EC = DateAdd("d", CDbl((var_96 - 1)), CVar(var_C0))
  loc_13F7825:     global_84 = CDate(Ucase("Pager"))
  loc_13F7845:     Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13F784D:     Call 0.Method_arg_20 (var_C4, global_84)
  loc_13F7855:     Call 0.Method_arg_30 (1)
  loc_13F786B:     var_17C = Ucase(CVar(var_C4)) 'Variant
  loc_13F78A2:     If (var_17C = Ucase(CVar("Day" & CStr(var_96)))) Then
  loc_13F7901:       Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13F7909:       Call 0.Method_arg_20 (CStr(1 & Ucase(Format(global_84, "DDD")) & "'"), 1)
  loc_13F7911:       Call 0.Method_arg_38 ("'")
  loc_13F7930:     Else
  loc_13F7959:       If (var_17C = Ucase(CVar("Date" & CStr(var_96)))) Then
  loc_13F7979:         var_12C = CVar(CStr(Day(global_84))) 'String
  loc_13F79A1:         var_11C = Space((2 - Len(CStr(Day(global_84)))))
  loc_13F79A9:         var_13C = (var_12C + Ucase(Format(global_84, "DDD")))
  loc_13F79DF:         var_1CC = Space((2 - Len(CStr(Month(global_84)))))
  loc_13F7A02:         var_20C = (var_1CC + CVar(CStr(Month(global_84))))
  loc_13F7A27:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13F7A2F:         Call 0.Method_arg_20 (var_C0)
  loc_13F7A37:         Call 0.Method_arg_38 (CStr("'" & 1 & Ucase(Format(global_84, "DDD")) & "'" & vbNullString & var_20C & "'"))
  loc_13F7A73:       End If
  loc_13F7A73:     End If
  loc_13F7A76:   Next var_16A 'Integer
  loc_13F7A7E: Next var_166 'Integer
  loc_13F7A89: If (Index = 1) Then
  loc_13F7A99:   ReDim Preserve var_90(0 To 1)
  loc_13F7AB4:   Set var_BC = Me.Txt
  loc_13F7ABA:   Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13F7ADD:   var_90(0) = vbNullString & var_C0.Text & vbNullString
  loc_13F7AEE: End If
  loc_13F7AF4: If (Index = 1) Then
  loc_13F7B18:   MsgBox("Please set 80 col. in your Printer & put it on.", &H40, "Paper Setting", Ucase(Format(global_84, "DDD")), var_12C)
  loc_13F7B28:   Call Proc_128_39_16B6664()
  loc_13F7B30: Else
  loc_13F7B35:   Set var_C0 = Nothing
  loc_13F7B4C:   Set var_BC = MemVar_1F921E4 
  loc_13F7B58:   Proc_6_99_1483714(var_BC, Index, global_96)
  loc_13F7B63:   MemVar_1F921E4 = var_BC
  loc_13F7B6E: End If
  loc_13F7B73: global_104 = 0
  loc_13F7B7B: MemVar_1F921E4 = Nothing
  loc_13F7B7F: Exit Sub
  loc_13F7B80: ' Referenced from: 13F71A8
  loc_13F7B80: Proc_6_60_E62BC4(global_104, &HFF)
  loc_13F7B85: Exit Sub
End Sub

Private Sub Form_Load() 'F6E090
  'Data Table: 481B8C
  Dim var_8C As TextBox
  Dim var_88 As Variant
  loc_F6DF54: On Error Goto loc_F6E089
  loc_F6DF5F: global_116 = &HFDC293
  loc_F6DF6A: global_120 = &HFF00
  loc_F6DF8B: Set var_88 = Me.Txt
  loc_F6DF91: Call 0.Method_Form_Load0 (CInt(0), var_8C, CStr(MemVar_1F920EC))
  loc_F6DF99: var_8C.Text = &HFFFFFF
  loc_F6DFB3: Set var_88 = Me.Txt
  loc_F6DFB9: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_F6DFE2: If (Proc_6_27_EA565C(var_8C, "Start Date") = 0) Then
  loc_F6DFE5:   Exit Sub
  loc_F6DFE6: End If
  loc_F6DFE6: Call Proc_128_31_148DD7C(global_120)
  loc_F6DFF9: Set var_88 = Me.Txt
  loc_F6DFFF: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_F6E023: Call Proc_128_38_1330048(CDate(var_8C.Text), 1)
  loc_F6E03D: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), "RoomNo")
  loc_F6E055: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_F6E06B: Me.LblDatail.BackColor = CLng(MemVar_1F921B0)
  loc_F6E080: Me.LblDatail.Caption = vbNullString
  loc_F6E088: Exit Sub
  loc_F6E089: ' Referenced from: F6DF54
  loc_F6E089: Proc_6_60_E62BC4(global_116)
  loc_F6E08E: Exit Sub
End Sub

Private Sub Form_Resize() 'E724E4
  'Data Table: 481B8C
  loc_E7248E: Call 0.Method_arg_50 (var_88)
  loc_E724A0: Me.LblFormCaption.Caption = var_88
  loc_E724B9: Me.LblFormCaption.Left = CDbl(0)
  loc_E724C7: Call 0.Method_arg_100 (var_90)
  loc_E724D9: Me.LblFormCaption.Width = var_90
  loc_E724E1: Exit Sub
  loc_E724E2: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0D8F4
  'Data Table: 481B8C
  loc_E0D8EB: Set global_108 = Nothing
  loc_E0D8F2: Exit Sub
End Sub

Private Sub Form_Activate() 'E22BEC
  'Data Table: 481B8C
  loc_E22BD1: Call Cmd_UnknownEvent_9()
  loc_E22BDA: Set var_8C = Me.FGrid
  loc_E22BEB: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E26C00
  'Data Table: 481B8C
  loc_E26BD8: On Error Goto loc_E26BF8
  loc_E26BEF: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E26BF7: Exit Sub
  loc_E26BF8: ' Referenced from: E26BD8
  loc_E26BF8: Proc_6_60_E62BC4(Shift)
  loc_E26BFD: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F0EEB8
  'Data Table: 481B8C
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F0EDE6: Set var_88 = Me.TxtGrid
  loc_F0EDEC: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_F0EDFA: Proc_6_74_E226B0(var_8C)
  loc_F0EE06: Call Proc_128_37_DFD804(var_8C)
  loc_F0EE17: If (Index = 0) Then
  loc_F0EE2D:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F0EE6C:   Set var_108 = Me.TxtGrid
  loc_F0EE72:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_F0EE7A:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_F0EEAB:   var_114 = CLng(Me.FGrid.Col)
  loc_F0EEB4: End If
  loc_F0EEB4: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'F03FC8
  'Data Table: 481B8C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_F03EFC: If (KeyCode = 0) Then
  loc_F03F09:   If (CLng(Shift) = &H1B) Then
  loc_F03F19:     Set var_8C = Me.TxtGrid
  loc_F03F1F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_F03F39:     Set var_98 = Me.TxtGrid
  loc_F03F3F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_F03F47:     var_9C.Text = var_90.Tag
  loc_F03F63:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_F03F68:     Call Proc_128_37_DFD804(arg_14)
  loc_F03F71:     Set var_8C = Me.FGrid
  loc_F03F8E:     Set var_8C = Me.TxtGrid
  loc_F03F94:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_F03F9C:     var_90.Visible = FGrid.DispID_8001
  loc_F03FA8:     Exit Sub
  loc_F03FA9:   End If
  loc_F03FBC:   var_B0 = CLng(Me.FGrid.Col)
  loc_F03FC5: End If
  loc_F03FC5: Exit Sub
  loc_F03FC6: BranchFVar 5375
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E51100
  'Data Table: 481B8C
  Dim var_A0 As Long
  loc_E510CF: Proc_6_58_E054C0(arg_10)
  loc_E510E0: If (KeyAscii = 0) Then
  loc_E510F6:   var_A0 = CLng(Me.FGrid.Col)
  loc_E510FF: End If
  loc_E510FF: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E54C8C
  'Data Table: 481B8C
  Dim var_A0 As Long
  loc_E54C54: On Error Goto loc_E54C83
  loc_E54C63: If (KeyCode = 0) Then
  loc_E54C79:   var_A0 = CLng(Me.FGrid.Col)
  loc_E54C82: End If
  loc_E54C82: Exit Sub
  loc_E54C83: ' Referenced from: E54C54
  loc_E54C83: Proc_6_60_E62BC4(var_A0)
  loc_E54C88: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20FB8
  'Data Table: 481B8C
  Dim arg_10 As Integer
  loc_E20FA0: If (Cancel = 0) Then
  loc_E20FA9:   Call Proc_128_33_E54C1C(Cancel, var_88)
  loc_E20FB2:   arg_10 = Not(var_88)
  loc_E20FB5: End If
  loc_E20FB5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5F434
  'Data Table: 481B8C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5F3FF: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5F412: Set var_A8 = Me.TxtGrid
  loc_E5F418: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5F420: var_AC.Visible = False
  loc_E5F42C: Call Proc_128_37_DFD804()
  loc_E5F431: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E6A178
  'Data Table: 481B8C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6A134: Set var_88 = Me.TxtGrid
  loc_E6A13A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6A154: If (var_8C.Visible = 0) Then
  loc_E6A16D:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E6A175: End If
  loc_E6A175: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10455DC
  'Data Table: 481B8C
  Dim var_B8 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_1045388: Set var_88 = Me.TopCtrl1
  loc_104538E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_10453DE: If CBool(( = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10453E7:   Call Form_KeyDown(Cancel, arg_10)
  loc_10453EC: End If
  loc_10453F0: Set var_88 = Me.TopCtrl1
  loc_10453F6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_104540B: If ( = "Browse") Then
  loc_104540E:   Exit Sub
  loc_104540F: End If
  loc_1045483: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_104549C:   Me.FGrid.CellBackColor = CVar(CLng(global_56))
  loc_10454AC:   var_DC = "+{Tab}"
  loc_10454B2:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_10454BC:   Cancel = 0
  loc_10454C2: Else
  loc_10454CC:   var_B8 = Me.FGrid.Rows
  loc_1045519:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_1045532:     Me.FGrid.CellBackColor = CVar(CLng(global_56))
  loc_1045548:     Proc_303_0_FB9B68("{Tab}", 0, var_B8)
  loc_1045552:     Cancel = 0
  loc_1045555:   End If
  loc_1045555: End If
  loc_104555B: global_60 = Cancel
  loc_1045581: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10455A5: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10455BB:   var_EC = CLng(Me.FGrid.Col)
  loc_10455C4: End If
  loc_10455CA: If (Cancel = &HD) Then
  loc_10455D2:   global_62 = 0
  loc_10455D5: End If
  loc_10455D7: Cancel = 0
  loc_10455DA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0D088
  'Data Table: 481B8C
  loc_E0D079: Call FGrid_UnknownEvent_C()
  loc_E0D083: global_62 = 0
  loc_E0D086: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'E4CEF0
  'Data Table: 481B8C
  loc_E4CEE6: If (CLng(Cancel) = &HD) Then
  loc_E4CEE9:   Call Proc_128_32_10FBB68(CLng(Me.FGrid.Col))
  loc_E4CEEE: End If
  loc_E4CEEE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'DFD630
  'Data Table: 481B8C
  loc_DFD62C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'F2B910
  'Data Table: 481B8C
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_F2B82B: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F2B843: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_F2B87A: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_F2B893:   var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F2B8D6:   Me.LblDatail.Caption = CVar(CLng(Me.FGrid.Col)) & CStr(Me.FGrid.TextMatrix))
  loc_F2B8F9: Else
  loc_F2B906:   Me.LblDatail.Caption = vbNullString
  loc_F2B90E: End If
  loc_F2B90E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E441E4
  'Data Table: 481B8C
  Dim var_8C As TextBox
  loc_E441B8: Call Proc_128_37_DFD804()
  loc_E441C8: Set var_88 = Me.TxtGrid
  loc_E441CE: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E441D6: var_8C.Visible = False
  loc_E441E2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E58234
  'Data Table: 481B8C
  Dim var_92 As Integer
  loc_E58206: Set var_88 = Me.Txt
  loc_E5820C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E5821A: Proc_6_74_E226B0(var_8C)
  loc_E58226: Call Proc_128_37_DFD804(var_8C)
  loc_E5822E: var_92 = Index
  loc_E58231: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E0AD00
  'Data Table: 481B8C
  loc_E0ACF6: If (CLng(Shift) = &H1B) Then
  loc_E0ACF9:   Call Proc_128_37_DFD804()
  loc_E0ACFE:   Exit Sub
  loc_E0ACFF: End If
  loc_E0ACFF: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E44120
  'Data Table: 481B8C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_E440F0: On Error Goto loc_E44117
  loc_E440F6: Proc_6_58_E054C0(arg_10)
  loc_E44101: Proc_6_133_E7EF78(var_94)
  loc_E4410A: arg_10 = CInt(var_94)
  loc_E44113: var_96 = KeyAscii
  loc_E44116: Exit Sub
  loc_E44117: ' Referenced from: E440F0
  loc_E44117: Proc_6_60_E62BC4(var_96, arg_10)
  loc_E4411C: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFDEA4
  'Data Table: 481B8C
  Dim var_86 As Integer
  loc_DFDE9F: var_86 = KeyCode
  loc_DFDEA2: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4CF54
  'Data Table: 481B8C
  loc_E4CF32: Set var_88 = Me.Txt
  loc_E4CF38: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4CF46: Proc_6_73_E22704(var_8C)
  loc_E4CF52: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F210EC
  'Data Table: 481B8C
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_F0 As TextBox
  loc_F21000: On Error Goto loc_F210E6
  loc_F21006: var_86 = Cancel
  loc_F21011: If (var_86 = CInt(0)) Then
  loc_F21021:   Set var_8C = Me.Txt
  loc_F21027:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F2105F:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_F21074:     Set var_8C = Me.Txt
  loc_F2107A:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F21082:     var_90.Text = CStr(MemVar_1F920EC)
  loc_F21094:   Else
  loc_F2109E:     Set var_8C = Me.Txt
  loc_F210A4:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F210C4:     Set var_EC = Me.Txt
  loc_F210CA:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_F210D2:     var_F0.Text = Proc_6_33_1512840(var_90)
  loc_F210E5:   End If
  loc_F210E5: End If
  loc_F210E5: Exit Sub
  loc_F210E6: ' Referenced from: F21000
  loc_F210E6: Proc_6_60_E62BC4(var_86)
  loc_F210EB: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 '102D464
  'Data Table: 481B8C
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_A8 As String
  Dim var_DC As TextBox
  loc_102D22F: var_86 = Cancel
  loc_102D238: If (var_86 = 0) Then
  loc_102D246:   Set var_8C = Me.Txt
  loc_102D24C:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_102D275:   If (Proc_6_27_EA565C(var_90, "Start Date") = 0) Then
  loc_102D278:     Exit Sub
  loc_102D279:   End If
  loc_102D287:   Set var_8C = Me.Txt
  loc_102D28D:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_102D295:   var_98 = var_90.Text
  loc_102D29D:   var_A8 = "RoomNo"
  loc_102D2B1:   Call Proc_128_38_1330048(CDate(var_98), 1)
  loc_102D2C7: Else
  loc_102D2CD:   If (var_86 = 1) Then
  loc_102D2DE:     Set var_8C = Me.Txt
  loc_102D2E4:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90, var_98)
  loc_102D2EC:     var_A8 = var_90.Text
  loc_102D31B:     Set var_94 = Me.Txt
  loc_102D321:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_DC)
  loc_102D329:     var_DC.Text = CStr(DateAdd("d", CDbl(&HFF), CDate(CDate(var_98))))
  loc_102D355:     Set var_8C = Me.Txt
  loc_102D35B:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_102D363:     var_98 = var_90.Text
  loc_102D36B:     var_A8 = "RoomNo"
  loc_102D37F:     Call Proc_128_38_1330048(CDate(var_98), 1)
  loc_102D395:   Else
  loc_102D39B:     If (var_86 = 2) Then
  loc_102D3AC:       Set var_8C = Me.Txt
  loc_102D3B2:       Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90, var_98)
  loc_102D3BA:       var_A8 = var_90.Text
  loc_102D3E9:       Set var_94 = Me.Txt
  loc_102D3EF:       Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_DC)
  loc_102D3F7:       var_DC.Text = CStr(DateAdd("d", CDbl(1), CDate(CDate(var_98))))
  loc_102D423:       Set var_8C = Me.Txt
  loc_102D429:       Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_102D439:       var_A8 = "RoomNo"
  loc_102D44D:       Call Proc_128_38_1330048(CDate(var_90.Text), 1)
  loc_102D460:     End If
  loc_102D460:   End If
  loc_102D460: End If
  loc_102D460: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E16AB0
  'Data Table: 481B8C
  loc_E16AA5: Me.Global.Unload Me
  loc_E16AAD: Exit Sub
End Sub

Public Function global_52Get() '4827A8
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4827B7
  global_52 = Value
End Sub

Public Property Get OpenMode() 'E095C0
  'Data Table: 481B8C
  loc_E095B9: OpenMode = global_112
End Sub

Public Property Let OpenMode(vNewValue) 'E00884
  'Data Table: 481B8C
  loc_E0087E: global_112 = vNewValue
  loc_E00881: Exit Sub
End Sub

Public Sub Proc_128_31_148DD7C
  'Data Table: 481B8C
  Dim var_88 As Long
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_148D0E9: var_88 = &H249
  loc_148D0F0: Set var_90 = Me.FGrid
  loc_148D107: global_56 = CStr(CLng(var_90.BackColor))
  loc_148D11D: var_90.Cols = &H1A
  loc_148D12E: var_90.FixedCols = 1
  loc_148D133: var_B4 = 0
  loc_148D13F: var_D4 = CVar(CLng(0)) 'Long
  loc_148D144: var_F4 = "Venue Name"
  loc_148D14D: LateIdCallSt
  loc_148D158: var_B4 = CVar(CLng(0)) 'Long
  loc_148D163: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D16A: LateIdCallSt
  loc_148D175: var_B4 = CVar(CLng(0)) 'Long
  loc_148D180: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D187: LateIdCallSt
  loc_148D192: var_B4 = CVar(CLng(0)) 'Long
  loc_148D197: var_D4 = &H9C4
  loc_148D1A3: LateIdCallSt
  loc_148D1B7: var_90.ForeColor = &H80
  loc_148D1BC: var_B4 = 0
  loc_148D1C8: var_D4 = CVar(CLng(1)) 'Long
  loc_148D1CD: var_F4 = "00"
  loc_148D1D6: LateIdCallSt
  loc_148D1E1: var_B4 = CVar(CLng(1)) 'Long
  loc_148D1EC: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D1F3: LateIdCallSt
  loc_148D1FE: var_B4 = CVar(CLng(1)) 'Long
  loc_148D209: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D210: LateIdCallSt
  loc_148D21B: var_B4 = CVar(CLng(1)) 'Long
  loc_148D220: var_D4 = &H258
  loc_148D22C: LateIdCallSt
  loc_148D234: var_B4 = 0
  loc_148D240: var_D4 = CVar(CLng(2)) 'Long
  loc_148D245: var_F4 = "01"
  loc_148D24E: LateIdCallSt
  loc_148D259: var_B4 = CVar(CLng(2)) 'Long
  loc_148D264: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D26B: LateIdCallSt
  loc_148D276: var_B4 = CVar(CLng(2)) 'Long
  loc_148D281: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D288: LateIdCallSt
  loc_148D293: var_B4 = CVar(CLng(2)) 'Long
  loc_148D298: var_D4 = &H258
  loc_148D2A4: LateIdCallSt
  loc_148D2AC: var_B4 = 0
  loc_148D2B8: var_D4 = CVar(CLng(3)) 'Long
  loc_148D2BD: var_F4 = "02"
  loc_148D2C6: LateIdCallSt
  loc_148D2D1: var_B4 = CVar(CLng(3)) 'Long
  loc_148D2DC: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D2E3: LateIdCallSt
  loc_148D2EE: var_B4 = CVar(CLng(3)) 'Long
  loc_148D2F9: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D300: LateIdCallSt
  loc_148D30B: var_B4 = CVar(CLng(3)) 'Long
  loc_148D310: var_D4 = &H258
  loc_148D31C: LateIdCallSt
  loc_148D324: var_B4 = 0
  loc_148D330: var_D4 = CVar(CLng(4)) 'Long
  loc_148D335: var_F4 = "03"
  loc_148D33E: LateIdCallSt
  loc_148D349: var_B4 = CVar(CLng(4)) 'Long
  loc_148D354: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D35B: LateIdCallSt
  loc_148D366: var_B4 = CVar(CLng(4)) 'Long
  loc_148D371: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D378: LateIdCallSt
  loc_148D383: var_B4 = CVar(CLng(4)) 'Long
  loc_148D388: var_D4 = &H258
  loc_148D394: LateIdCallSt
  loc_148D39C: var_B4 = 0
  loc_148D3A8: var_D4 = CVar(CLng(5)) 'Long
  loc_148D3AD: var_F4 = "04"
  loc_148D3B6: LateIdCallSt
  loc_148D3C1: var_B4 = CVar(CLng(5)) 'Long
  loc_148D3CC: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D3D3: LateIdCallSt
  loc_148D3DE: var_B4 = CVar(CLng(5)) 'Long
  loc_148D3E9: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D3F0: LateIdCallSt
  loc_148D3FB: var_B4 = CVar(CLng(5)) 'Long
  loc_148D400: var_D4 = &H258
  loc_148D40C: LateIdCallSt
  loc_148D414: var_B4 = 0
  loc_148D420: var_D4 = CVar(CLng(6)) 'Long
  loc_148D425: var_F4 = "05"
  loc_148D42E: LateIdCallSt
  loc_148D439: var_B4 = CVar(CLng(6)) 'Long
  loc_148D444: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D44B: LateIdCallSt
  loc_148D456: var_B4 = CVar(CLng(6)) 'Long
  loc_148D461: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D468: LateIdCallSt
  loc_148D473: var_B4 = CVar(CLng(6)) 'Long
  loc_148D478: var_D4 = &H258
  loc_148D484: LateIdCallSt
  loc_148D48C: var_B4 = 0
  loc_148D498: var_D4 = CVar(CLng(7)) 'Long
  loc_148D49D: var_F4 = "06"
  loc_148D4A6: LateIdCallSt
  loc_148D4B1: var_B4 = CVar(CLng(7)) 'Long
  loc_148D4BC: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D4C3: LateIdCallSt
  loc_148D4CE: var_B4 = CVar(CLng(7)) 'Long
  loc_148D4D9: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D4E0: LateIdCallSt
  loc_148D4EB: var_B4 = CVar(CLng(7)) 'Long
  loc_148D4F0: var_D4 = &H258
  loc_148D4FC: LateIdCallSt
  loc_148D504: var_B4 = 0
  loc_148D510: var_D4 = CVar(CLng(8)) 'Long
  loc_148D515: var_F4 = "07"
  loc_148D51E: LateIdCallSt
  loc_148D529: var_B4 = CVar(CLng(8)) 'Long
  loc_148D534: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D53B: LateIdCallSt
  loc_148D546: var_B4 = CVar(CLng(8)) 'Long
  loc_148D551: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D558: LateIdCallSt
  loc_148D563: var_B4 = CVar(CLng(8)) 'Long
  loc_148D568: var_D4 = &H258
  loc_148D574: LateIdCallSt
  loc_148D57C: var_B4 = 0
  loc_148D588: var_D4 = CVar(CLng(9)) 'Long
  loc_148D58D: var_F4 = "08"
  loc_148D596: LateIdCallSt
  loc_148D5A1: var_B4 = CVar(CLng(9)) 'Long
  loc_148D5AC: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D5B3: LateIdCallSt
  loc_148D5BE: var_B4 = CVar(CLng(9)) 'Long
  loc_148D5C9: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D5D0: LateIdCallSt
  loc_148D5DB: var_B4 = CVar(CLng(9)) 'Long
  loc_148D5E0: var_D4 = &H258
  loc_148D5EC: LateIdCallSt
  loc_148D5F4: var_B4 = 0
  loc_148D600: var_D4 = CVar(CLng(&HA)) 'Long
  loc_148D605: var_F4 = "09"
  loc_148D60E: LateIdCallSt
  loc_148D619: var_B4 = CVar(CLng(&HA)) 'Long
  loc_148D624: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D62B: LateIdCallSt
  loc_148D636: var_B4 = CVar(CLng(&HA)) 'Long
  loc_148D641: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D648: LateIdCallSt
  loc_148D653: var_B4 = CVar(CLng(&HA)) 'Long
  loc_148D658: var_D4 = &H258
  loc_148D664: LateIdCallSt
  loc_148D66C: var_B4 = 0
  loc_148D678: var_D4 = CVar(CLng(&HB)) 'Long
  loc_148D67D: var_F4 = "10"
  loc_148D686: LateIdCallSt
  loc_148D691: var_B4 = CVar(CLng(&HB)) 'Long
  loc_148D69C: var_D4 = CVar(CInt(1)) 'Integer
  loc_148D6A3: LateIdCallSt
  loc_148D6AE: var_B4 = CVar(CLng(&HB)) 'Long
  loc_148D6B9: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D6C0: LateIdCallSt
  loc_148D6CB: var_B4 = CVar(CLng(&HB)) 'Long
  loc_148D6D0: var_D4 = &H258
  loc_148D6DC: LateIdCallSt
  loc_148D6E4: var_B4 = 0
  loc_148D6F0: var_D4 = CVar(CLng(&HC)) 'Long
  loc_148D6F5: var_F4 = "11"
  loc_148D6FE: LateIdCallSt
  loc_148D709: var_B4 = CVar(CLng(&HC)) 'Long
  loc_148D714: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D71B: LateIdCallSt
  loc_148D726: var_B4 = CVar(CLng(&HC)) 'Long
  loc_148D731: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D738: LateIdCallSt
  loc_148D743: var_B4 = CVar(CLng(&HC)) 'Long
  loc_148D748: var_D4 = &H258
  loc_148D754: LateIdCallSt
  loc_148D75C: var_B4 = 0
  loc_148D768: var_D4 = CVar(CLng(&HD)) 'Long
  loc_148D76D: var_F4 = "12"
  loc_148D776: LateIdCallSt
  loc_148D781: var_B4 = CVar(CLng(&HD)) 'Long
  loc_148D78C: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D793: LateIdCallSt
  loc_148D79E: var_B4 = CVar(CLng(&HD)) 'Long
  loc_148D7A9: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D7B0: LateIdCallSt
  loc_148D7BB: var_B4 = CVar(CLng(&HD)) 'Long
  loc_148D7C0: var_D4 = &H258
  loc_148D7CC: LateIdCallSt
  loc_148D7D4: var_B4 = 0
  loc_148D7E0: var_D4 = CVar(CLng(&HE)) 'Long
  loc_148D7E5: var_F4 = "13"
  loc_148D7EE: LateIdCallSt
  loc_148D7F9: var_B4 = CVar(CLng(&HE)) 'Long
  loc_148D804: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D80B: LateIdCallSt
  loc_148D816: var_B4 = CVar(CLng(&HE)) 'Long
  loc_148D821: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D828: LateIdCallSt
  loc_148D833: var_B4 = CVar(CLng(&HE)) 'Long
  loc_148D838: var_D4 = &H258
  loc_148D844: LateIdCallSt
  loc_148D84C: var_B4 = 0
  loc_148D858: var_D4 = CVar(CLng(&HF)) 'Long
  loc_148D85D: var_F4 = "14"
  loc_148D866: LateIdCallSt
  loc_148D871: var_B4 = CVar(CLng(&HF)) 'Long
  loc_148D87C: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D883: LateIdCallSt
  loc_148D88E: var_B4 = CVar(CLng(&HF)) 'Long
  loc_148D899: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D8A0: LateIdCallSt
  loc_148D8AB: var_B4 = CVar(CLng(&HF)) 'Long
  loc_148D8B0: var_D4 = &H258
  loc_148D8BC: LateIdCallSt
  loc_148D8C4: var_B4 = 0
  loc_148D8D0: var_D4 = CVar(CLng(&H10)) 'Long
  loc_148D8D5: var_F4 = "15"
  loc_148D8DE: LateIdCallSt
  loc_148D8E9: var_B4 = CVar(CLng(&H10)) 'Long
  loc_148D8F4: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D8FB: LateIdCallSt
  loc_148D906: var_B4 = CVar(CLng(&H10)) 'Long
  loc_148D911: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D918: LateIdCallSt
  loc_148D923: var_B4 = CVar(CLng(&H10)) 'Long
  loc_148D928: var_D4 = &H258
  loc_148D934: LateIdCallSt
  loc_148D93C: var_B4 = 0
  loc_148D948: var_D4 = CVar(CLng(&H11)) 'Long
  loc_148D94D: var_F4 = "16"
  loc_148D956: LateIdCallSt
  loc_148D961: var_B4 = CVar(CLng(&H11)) 'Long
  loc_148D96C: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D973: LateIdCallSt
  loc_148D97E: var_B4 = CVar(CLng(&H11)) 'Long
  loc_148D989: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D990: LateIdCallSt
  loc_148D99B: var_B4 = CVar(CLng(&H11)) 'Long
  loc_148D9A0: var_D4 = &H258
  loc_148D9AC: LateIdCallSt
  loc_148D9B4: var_B4 = 0
  loc_148D9C0: var_D4 = CVar(CLng(&H12)) 'Long
  loc_148D9C5: var_F4 = "17"
  loc_148D9CE: LateIdCallSt
  loc_148D9D9: var_B4 = CVar(CLng(&H12)) 'Long
  loc_148D9E4: var_D4 = CVar(CInt(4)) 'Integer
  loc_148D9EB: LateIdCallSt
  loc_148D9F6: var_B4 = CVar(CLng(&H12)) 'Long
  loc_148DA01: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DA08: LateIdCallSt
  loc_148DA13: var_B4 = CVar(CLng(&H12)) 'Long
  loc_148DA18: var_D4 = &H258
  loc_148DA24: LateIdCallSt
  loc_148DA2C: var_B4 = 0
  loc_148DA38: var_D4 = CVar(CLng(&H13)) 'Long
  loc_148DA3D: var_F4 = "18"
  loc_148DA46: LateIdCallSt
  loc_148DA51: var_B4 = CVar(CLng(&H13)) 'Long
  loc_148DA5C: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DA63: LateIdCallSt
  loc_148DA6E: var_B4 = CVar(CLng(&H13)) 'Long
  loc_148DA79: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DA80: LateIdCallSt
  loc_148DA8B: var_B4 = CVar(CLng(&H13)) 'Long
  loc_148DA90: var_D4 = &H258
  loc_148DA9C: LateIdCallSt
  loc_148DAA4: var_B4 = 0
  loc_148DAB0: var_D4 = CVar(CLng(&H14)) 'Long
  loc_148DAB5: var_F4 = "19"
  loc_148DABE: LateIdCallSt
  loc_148DAC9: var_B4 = CVar(CLng(&H14)) 'Long
  loc_148DAD4: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DADB: LateIdCallSt
  loc_148DAE6: var_B4 = CVar(CLng(&H14)) 'Long
  loc_148DAF1: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DAF8: LateIdCallSt
  loc_148DB03: var_B4 = CVar(CLng(&H14)) 'Long
  loc_148DB08: var_D4 = &H258
  loc_148DB14: LateIdCallSt
  loc_148DB1C: var_B4 = 0
  loc_148DB28: var_D4 = CVar(CLng(&H15)) 'Long
  loc_148DB2D: var_F4 = "20"
  loc_148DB36: LateIdCallSt
  loc_148DB41: var_B4 = CVar(CLng(&H15)) 'Long
  loc_148DB4C: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DB53: LateIdCallSt
  loc_148DB5E: var_B4 = CVar(CLng(&H15)) 'Long
  loc_148DB69: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DB70: LateIdCallSt
  loc_148DB7B: var_B4 = CVar(CLng(&H15)) 'Long
  loc_148DB80: var_D4 = &H258
  loc_148DB8C: LateIdCallSt
  loc_148DB94: var_B4 = 0
  loc_148DBA0: var_D4 = CVar(CLng(&H16)) 'Long
  loc_148DBA5: var_F4 = "21"
  loc_148DBAE: LateIdCallSt
  loc_148DBB9: var_B4 = CVar(CLng(&H16)) 'Long
  loc_148DBC4: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DBCB: LateIdCallSt
  loc_148DBD6: var_B4 = CVar(CLng(&H16)) 'Long
  loc_148DBE1: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DBE8: LateIdCallSt
  loc_148DBF3: var_B4 = CVar(CLng(&H16)) 'Long
  loc_148DBF8: var_D4 = &H258
  loc_148DC04: LateIdCallSt
  loc_148DC0C: var_B4 = 0
  loc_148DC18: var_D4 = CVar(CLng(&H17)) 'Long
  loc_148DC1D: var_F4 = "22"
  loc_148DC26: LateIdCallSt
  loc_148DC31: var_B4 = CVar(CLng(&H17)) 'Long
  loc_148DC3C: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DC43: LateIdCallSt
  loc_148DC4E: var_B4 = CVar(CLng(&H17)) 'Long
  loc_148DC59: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DC60: LateIdCallSt
  loc_148DC6B: var_B4 = CVar(CLng(&H17)) 'Long
  loc_148DC70: var_D4 = &H258
  loc_148DC7C: LateIdCallSt
  loc_148DC84: var_B4 = 0
  loc_148DC90: var_D4 = CVar(CLng(&H18)) 'Long
  loc_148DC95: var_F4 = "23"
  loc_148DC9E: LateIdCallSt
  loc_148DCA9: var_B4 = CVar(CLng(&H18)) 'Long
  loc_148DCB4: var_D4 = CVar(CInt(1)) 'Integer
  loc_148DCBB: LateIdCallSt
  loc_148DCC6: var_B4 = CVar(CLng(&H18)) 'Long
  loc_148DCD1: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DCD8: LateIdCallSt
  loc_148DCE3: var_B4 = CVar(CLng(&H18)) 'Long
  loc_148DCE8: var_D4 = &H258
  loc_148DCF4: LateIdCallSt
  loc_148DCFC: var_B4 = 0
  loc_148DD08: var_D4 = CVar(CLng(&H19)) 'Long
  loc_148DD0D: var_F4 = "Venue Code"
  loc_148DD16: LateIdCallSt
  loc_148DD21: var_B4 = CVar(CLng(&H19)) 'Long
  loc_148DD2C: var_D4 = CVar(CInt(4)) 'Integer
  loc_148DD33: LateIdCallSt
  loc_148DD3E: var_B4 = CVar(CLng(&H19)) 'Long
  loc_148DD49: var_D4 = CVar(CInt(1)) 'Integer
  loc_148DD50: LateIdCallSt
  loc_148DD5B: var_B4 = CVar(CLng(&H19)) 'Long
  loc_148DD60: var_D4 = 0
  loc_148DD6C: LateIdCallSt
  loc_148DD76: Set var_90 = Nothing 
  loc_148DD7A: Exit Sub
End Sub

Public Sub Proc_128_32_10FBB68
  'Data Table: 481B8C
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_130 As Variant
  Dim var_D4 As String
  Dim var_220 As Variant
  Dim var_11C As Variant
  Dim var_208 As Variant
  Dim var_270 As Variant
  loc_10FB882: var_A0 = Me.FGrid.Col
  loc_10FB8A4: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FB8E4: If (CVar(CLng(&H19)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_10FB8F1:   Set var_8C = New FrmVenueMast
  loc_10FB8FD:   var_C4 = CVar(global_52) 'String
  loc_10FB904:   var_8C.MDIRestCode = var_C4
  loc_10FB913:   var_8C.Show var_C4, var_D4
  loc_10FB92B:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FB933:   var_E4 = CVar(CLng(&H19)) 'Long
  loc_10FB94D:   var_108 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_10FB954:   Call var_8C.SEARCHBACK
  loc_10FB96A:   Exit Sub
  loc_10FB96B: End If
  loc_10FB975: var_A0 = Me.FGrid.Col
  loc_10FB997: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FB9A6: var_108 = Me.FGrid.Col
  loc_10FB9BE: var_130 = Me.FGrid.TextMatrix)
  loc_10FB9EB: If (CVar(CLng(var_108)) And (CStr(var_130) <> vbNullString)) Then
  loc_10FBA09:   var_A0 = "Selected Banquet is booked... "
  loc_10FBA0F:   MsgBox(var_A0, 0, "<<<<<<<<< Booked >>>>>>>>>", var_108, var_130)
  loc_10FBA1F:   Exit Sub
  loc_10FBA23: Else
  loc_10FBA2D:   MemVar_1F92124 = New HallBooking
  loc_10FBA3A:   var_C4 = CVar(global_52) 'String
  loc_10FBA44:   unk_481C00.MDIRestCode = var_C4
  loc_10FBA4C:   Set var_90 = (CLng(var_A0) <> 0)(var_C4)
  loc_10FBA5B:   var_C4 = CVar(CLng(unk_481C00.FGrid.Row)) 'Long
  loc_10FBA63:   var_E4 = CVar(CLng(&H19)) 'Long
  loc_10FBA7D:   var_220 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_10FBA94:   var_11C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FBB03:   var_208 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + ":00")
  loc_10FBB13:   Set var_20C = Me.Txt
  loc_10FBB19:   Call 0.Method_Proc_128_32_10FBB680 (CInt(0), var_210, var_208, CVar(CLng(Me.FGrid.Col)), 0, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(0)))
  loc_10FBB21:   var_270 = CVar(var_210) 'Address
  loc_10FBB2C:   Call unk_481C00.SEARCHBACKBANQUET
  loc_10FBB63:   MemVar_1F92124 = Nothing
  loc_10FBB67: End If
  loc_10FBB67: Exit Sub
End Sub

Public Sub Proc_128_33_E54C1C(arg_C) 'E54C1C
  'Data Table: 481B8C
  Dim var_A0 As Long
  loc_E54BF0: If (arg_C = 0) Then
  loc_E54C06:   var_A0 = CLng(Me.FGrid.Col)
  loc_E54C0F: End If
  loc_E54C14: Proc_128_33_E54C1C = &HFF
  loc_E54C1A: If var_A0 Then Exit Sub
  loc_E54C1A: End If
End Sub

Public Sub Proc_128_34_E0B8A8
  'Data Table: 481B8C
  loc_E0B8A1: Proc_128_34_E0B8A8 = &HFF
End Sub

Public Sub Proc_128_35_F1DD3C
  'Data Table: 481B8C
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_F1DC4A: Set var_8C = Me.Txt
  loc_F1DC50: Call 0.Method_Proc_128_35_F1DD3CC (var_8E, var_86)
  loc_F1DC60: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1DC76:   Set var_8C = Me.Txt
  loc_F1DC7C:   Call 0.Method_Proc_128_35_F1DD3C0 (CInt(var_86), var_98)
  loc_F1DC84:   var_98.Text = vbNullString
  loc_F1DCA0:   Set var_8C = Me.Txt
  loc_F1DCA6:   Call 0.Method_Proc_128_35_F1DD3C0 (CInt(var_86), var_98)
  loc_F1DCAE:   var_98.Tag = vbNullString
  loc_F1DCBD: Next var_92 'Byte
  loc_F1DCD6: Me.FGrid.Rows = 1
  loc_F1DCFC: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_F1DD04: Set var_98 = Me.FGrid
  loc_F1DD31: Me.FGrid.FixedRows = 1
  loc_F1DD39: Exit Sub
End Sub

Public Sub Proc_128_36_E79CBC(arg_C) 'E79CBC
  'Data Table: 481B8C
  Dim var_98 As TextBox
  loc_E79C6A: Set var_8C = Me.Txt
  loc_E79C70: Call 0.Method_Proc_128_36_E79CBCC (var_8E, var_86)
  loc_E79C80: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79C96:   Set var_8C = Me.Txt
  loc_E79C9C:   Call 0.Method_Proc_128_36_E79CBC0 (CInt(var_86), var_98)
  loc_E79CA4:   var_98.Enabled = arg_C
  loc_E79CB3: Next var_92 'Byte
  loc_E79CB9: Exit Sub
End Sub

Public Sub Proc_128_37_DFD804
  'Data Table: 481B8C
  loc_DFD800: Exit Sub
End Sub

Public Sub Proc_128_38_1330048
  'Data Table: 481B8C
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim unk_481BA8 As Connection15
  Dim var_10C As Recordset15
  Dim var_EC As Variant
  Dim var_110 As Variant
  Dim var_138 As Variant
  Dim var_9C As Recordset15
  Dim var_194 As Recordset15
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_198 As Variant
  Dim var_19C As Variant
  Dim var_208 As Variant
  loc_132F8EB: Me.FGrid.FixedCols = 0
  loc_132F906: Me.FGrid.FixedRows = 0
  loc_132F90E: var_DC = &H190
  loc_132F91B: Set var_F0 = Me.FGrid
  loc_132F921: var_F0.RowHeightMin = var_DC
  loc_132F92F: Call Proc_128_40_F6F288(var_CC)
  loc_132F937: Set var_CC = var_F0
  loc_132F961: unk_481BA8.Execute "Select * from VenueMast where DepartCode='" & global_52 & "' order by name", var_108, -1
  loc_132F96C: Set var_9C = var_F0
  loc_132F97F: Set var_10C = var_CC 
  loc_132F98E: var_10C.AddNew var_DC, var_EC
  loc_132F9B8: var_10C.Fields.Item("VenueName").Value = "Venue              Time=>"
  loc_132F9E9: var_10C.Fields.Item("VenueCode").Value = vbNullString
  loc_132FA02: For var_118 = 0 To &H17: var_A0 = var_118 'Long
  loc_132FA37:   var_EC = "00"
  loc_132FA45:   var_DC = var_A0
  loc_132FA7C:   var_10C.Fields.Item("Hr" & Format(var_A0, "00")).Value = Format(var_DC, var_EC)
  loc_132FA98: Next var_118 'Long
  loc_132FA9F: Set var_10C = Nothing 
  loc_132FAA9: var_18C = var_9C.RecordCount
  loc_132FAB7: If (var_18C > 0) Then
  loc_132FABA:   ' Referenced from: 132FCDD
  loc_132FAC9:   If Not(var_9C.EOF) Then
  loc_132FACF:     Set var_194 = var_CC 
  loc_132FADE:     var_194.AddNew var_DC, var_EC
  loc_132FB2E:     var_194.Fields.Item("VenueName").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Name"))))
  loc_132FB86:     var_19C = var_194.Fields.Item("VenueCode")
  loc_132FB8E:     var_19C.Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Code"))))
  loc_132FBB0:     For var_1A4 = 0 To &H17: var_A0 = var_1A4 'Long
  loc_132FBE9:       Set var_198 = Me.Txt
  loc_132FBEF:       Call 0.Method_Proc_128_38_13300480 (0, var_19C)
  loc_132FC6D:       var_208 = CVar(Proc_96_20_11047E8(CStr(var_9C.Fields.Item("Code").Value), CDate(var_19C.Text), CStr(Format(var_A0, "00") & ":00"), 1)) 'String
  loc_132FC97:       var_194.Fields.Item("Hr" & Format(var_A0, "00")).Value = var_208
  loc_132FCCA:     Next var_1A4 'Long
  loc_132FCD1:     Set var_194 = Nothing 
  loc_132FCD8:     var_9C.MoveNext
  loc_132FCDD:     GoTo loc_132FABA
  loc_132FCE0:   End If
  loc_132FCE6:   CVarUnk
  loc_132FCEB:   VerifyVarObj
  loc_132FCF1:   Set var_F0 = Me.FGrid
  loc_132FCF7:   LateIdStAd
  loc_132FD05: End If
  loc_132FD18: Me.FGrid.FixedRows = 1
  loc_132FD2F: Me.FGrid.Redraw = False
  loc_132FD5E: For var_210 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A0 = var_210 'Long
  loc_132FD77:   Me.FGrid.Col = 0
  loc_132FD90:   Me.FGrid.Row = var_A0
  loc_132FDB4:   Set var_110 = Me.FGrid
  loc_132FDBA:   var_110.CellBackColor = CVar(CLng(Me.FGrid.BackColorFixed))
  loc_132FDDB:   Me.FGrid.CellFontSize = CVar(CDbl(&HA))
  loc_132FDF3:   Me.FGrid.CellFontName = "Arial"
  loc_132FE09:   Me.FGrid.CellFontBold = True
  loc_132FE38:   For var_218 = 1 To (CLng(Me.FGrid.Cols) - 1): var_A4 = var_218 'Long
  loc_132FE4F:     Me.FGrid.Col = var_A4
  loc_132FE8B:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_132FEA6:       var_108 = Me.FGrid.TextMatrix)
  loc_132FEDD:       If (Right(CVar(CStr(var_108)), 1) = "*") Then
  loc_132FEEC:         Set var_F0 = Me.Label2
  loc_132FEF2:         Call 0.Method_Proc_128_38_13300480 (4, var_110, var_18C, var_108, var_A4, var_A0)
  loc_132FEFA:         var_A4 = var_110.BackColor
  loc_132FF11:         Me.FGrid.CellBackColor = CVar(var_18C)
  loc_132FF72:         var_128 = CVar(Replace(CStr(Me.FGrid.TextMatrix)), "*", vbNullString, 1, -1, 0)) 'String
  loc_132FF7A:         Set var_110 = Me.FGrid
  loc_132FF80:         LateIdCallSt
  loc_132FF9C:       Else
  loc_132FFA8:         Set var_F0 = Me.Label2
  loc_132FFAE:         Call 0.Method_Proc_128_38_13300480 (3, var_110, var_18C, var_110, CVar(CStr(Me.FGrid.TextMatrix))), var_A4, var_A0)
  loc_132FFB6:         var_108 = var_110.BackColor
  loc_132FFCD:         Me.FGrid.CellBackColor = CVar(var_18C)
  loc_132FFDB:       End If
  loc_132FFDB:     End If
  loc_132FFDE:   Next var_218 'Long
  loc_132FFE6: Next var_210 'Long
  loc_132FFF9: Me.FGrid.Redraw = True
  loc_1330001: var_DC = 0
  loc_133000A: var_138 = False
  loc_1330013: Set var_F0 = Me.FGrid
  loc_1330019: LateIdCallSt
  loc_1330029: Set var_98 = Nothing
  loc_1330031: Set var_9C = Nothing
  loc_1330039: Set var_CC = Nothing
  loc_1330041: Set var_C8 = Nothing
  loc_1330044: Exit Sub
End Sub

Public Sub Proc_128_39_16B6664
  'Data Table: 481B8C
  Dim var_100 As String
  Dim var_88 As Variant
  Dim Me As Variant
  Dim var_86 As Variant
  Dim var_118 As TextBox
  Dim var_128 As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_14C As Variant
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  Dim var_28C As Variant
  Dim var_29C As Variant
  Dim var_2BC As Variant
  Dim var_2D0 As Variant
  Dim var_2E0 As Variant
  Dim var_300 As Variant
  Dim var_314 As Variant
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_358 As Variant
  Dim var_368 As Variant
  Dim var_388 As Variant
  Dim var_39C As Variant
  Dim var_3AC As Variant
  Dim var_3CC As Variant
  Dim var_3E0 As Variant
  Dim var_3F0 As Variant
  Dim var_410 As Variant
  Dim var_424 As Variant
  Dim var_434 As Variant
  Dim var_454 As Variant
  Dim var_468 As Variant
  Dim var_478 As Variant
  Dim var_498 As Variant
  Dim var_4AC As Variant
  Dim var_4BC As Variant
  Dim var_4DC As Variant
  Dim var_4F0 As Variant
  Dim var_500 As Variant
  Dim var_520 As Variant
  Dim var_534 As Variant
  Dim var_544 As Variant
  Dim var_564 As Variant
  Dim var_588 As Variant
  Dim var_5A8 As Variant
  Dim var_5CC As Variant
  Dim var_5EC As Variant
  Dim var_610 As Variant
  Dim var_630 As Variant
  Dim var_654 As Variant
  Dim var_674 As Variant
  Dim var_698 As Variant
  Dim var_6B8 As Variant
  Dim var_6DC As Variant
  Dim var_6FC As Variant
  Dim var_720 As Variant
  Dim var_740 As Variant
  Dim var_114 As Variant
  Dim var_748 As String
  Dim var_768 As String
  Dim var_788 As String
  Dim var_964 As String
  Dim var_994 As String
  Dim var_9C4 As String
  Dim var_9F4 As String
  Dim var_A34 As String
  Dim var_A64 As String
  Dim var_A94 As String
  Dim var_AC4 As String
  Dim var_AFC As String
  loc_16B5108: On Error Goto loc_16B665E
  loc_16B510D: Close 1
  loc_16B5116: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16B5148: var_A0 = Replace(CStr(Space(&H82)), " ", MemVar_1F923CC, 1, -1, 0)
  loc_16B5153: var_88 = 1
  loc_16B516D: If (Me.RecordCount > 0) Then
  loc_16B5176:   Me.MoveFirst
  loc_16B517B:   ' Referenced from: 16B65A4
  loc_16B518D:   If Not(Me.EOF) Then
  loc_16B5196:     If (var_86 = 0) Then
  loc_16B51A9:       var_86 = Proc_6_129_12B6C1C(var_88, var_86)
  loc_16B51B4:       var_100 = "B"
  loc_16B51D0:       Print 1, Proc_6_128_10272A8(global_92, var_100, &H50)
  loc_16B51ED:       Set var_114 = Me.Txt
  loc_16B51F3:       Call 0.Method_Proc_128_39_16B66640 (CInt(0), var_118, var_100)
  loc_16B51FB:       var_86 = var_118.Text
  loc_16B520C:       Print 1, "From Date " & var_100
  loc_16B5225:       Print 1, "* = OUT OF ORDER"
  loc_16B5241:       var_128 = (Chr(&HF) + CVar(var_A0))
  loc_16B5247:       Print 1, var_128
  loc_16B525B:       For var_12C = 1 To &H17: var_A4 = var_12C 'Integer
  loc_16B526C:         Set var_114 = Me.Txt
  loc_16B5272:         Call 0.Method_Proc_128_39_16B66640 (CInt(0), var_118, 1)
  loc_16B528C:         var_128 = DateAdd("d", CDbl((var_A4 - 1)), CVar(var_118))
  loc_16B5299:         global_84 = CDate(var_128)
  loc_16B52E7:         var_BC(CLng(var_A4)) = CStr(Ucase(Format(global_84, "DDD")))
  loc_16B5334:         var_14C = Space((2 - Len(CStr(Day(global_84)))))
  loc_16B533C:         var_16C = (CVar(CStr(Day(global_84))) + Ucase(Format(global_84, "DDD")))
  loc_16B536E:         var_1BC = Space((2 - Len(CStr(Month(global_84)))))
  loc_16B5391:         var_1FC = (var_1BC + CVar(CStr(Month(global_84))))
  loc_16B53A4:         var_D8(CLng(var_A4)) = CStr(var_16C & vbNullString & var_1FC)
  loc_16B53D4:       Next var_12C 'Integer
  loc_16B55E8:       var_128 = (Space(&HA) + "|")
  loc_16B55F2:       var_15C = (Day(global_84) + CVar(Proc_6_45_EAD428(var_BC(1))))
  loc_16B55FB:       var_16C = (CVar(CStr(Day(global_84))) + "|")
  loc_16B5605:       var_1AC = (var_16C + CVar(Proc_6_45_EAD428(var_BC(2), 4)))
  loc_16B560E:       var_1BC = (Month(global_84) + "|")
  loc_16B5618:       var_1EC = (var_1BC + CVar(Proc_6_45_EAD428(var_BC(3), 4)))
  loc_16B5621:       var_1FC = (CVar(CStr(Month(global_84))) + "|")
  loc_16B562B:       var_224 = (var_1FC + CVar(Proc_6_45_EAD428(var_BC(4), 4)))
  loc_16B5634:       var_234 = (var_224 + "|")
  loc_16B563E:       var_258 = (var_234 + CVar(Proc_6_45_EAD428(var_BC(5), 4)))
  loc_16B5647:       var_278 = (var_258 + "|")
  loc_16B5651:       var_29C = (var_278 + CVar(Proc_6_45_EAD428(var_BC(6), 4)))
  loc_16B565A:       var_2BC = (var_29C + "|")
  loc_16B5664:       var_2E0 = (var_2BC + CVar(Proc_6_45_EAD428(var_BC(7), 4)))
  loc_16B566D:       var_300 = (var_2E0 + "|")
  loc_16B5677:       var_324 = (var_300 + CVar(Proc_6_45_EAD428(var_BC(8), 4)))
  loc_16B5680:       var_344 = (var_324 + "|")
  loc_16B568A:       var_368 = (var_344 + CVar(Proc_6_45_EAD428(var_BC(9), 4)))
  loc_16B5693:       var_388 = (var_368 + "|")
  loc_16B569D:       var_3AC = (var_388 + CVar(Proc_6_45_EAD428(var_BC(&HA), 4)))
  loc_16B56A6:       var_3CC = (var_3AC + "|")
  loc_16B56B0:       var_3F0 = (var_3CC + CVar(Proc_6_45_EAD428(var_BC(&HB), 4)))
  loc_16B56B9:       var_410 = (var_3F0 + "|")
  loc_16B56C3:       var_434 = (var_410 + CVar(Proc_6_45_EAD428(var_BC(&HC), 4)))
  loc_16B56CC:       var_454 = (var_434 + "|")
  loc_16B56D6:       var_478 = (var_454 + CVar(Proc_6_45_EAD428(var_BC(&HD), 4)))
  loc_16B56DF:       var_498 = (var_478 + "|")
  loc_16B56E9:       var_4BC = (var_498 + CVar(Proc_6_45_EAD428(var_BC(&HE), 4)))
  loc_16B56F2:       var_4DC = (var_4BC + "|")
  loc_16B56FC:       var_500 = (var_4DC + CVar(Proc_6_45_EAD428(var_BC(&HF), 4)))
  loc_16B5705:       var_520 = (var_500 + "|")
  loc_16B570F:       var_544 = (var_520 + CVar(Proc_6_45_EAD428(var_BC(&H10), 4)))
  loc_16B5718:       var_564 = (var_544 + "|")
  loc_16B5722:       var_588 = (var_564 + CVar(Proc_6_45_EAD428(var_BC(&H11), 4)))
  loc_16B572B:       var_5A8 = (var_588 + "|")
  loc_16B5735:       var_5CC = (var_5A8 + CVar(Proc_6_45_EAD428(var_BC(&H12), 4)))
  loc_16B573E:       var_5EC = (var_5CC + "|")
  loc_16B5748:       var_610 = (var_5EC + CVar(Proc_6_45_EAD428(var_BC(&H13), 4)))
  loc_16B5751:       var_630 = (var_610 + "|")
  loc_16B575B:       var_654 = (var_630 + CVar(Proc_6_45_EAD428(var_BC(&H14), 4)))
  loc_16B5764:       var_674 = (var_654 + "|")
  loc_16B576E:       var_698 = (var_674 + CVar(Proc_6_45_EAD428(var_BC(&H15), 4)))
  loc_16B5777:       var_6B8 = (var_698 + "|")
  loc_16B5781:       var_6DC = (var_6B8 + CVar(Proc_6_45_EAD428(var_BC(&H16), 4)))
  loc_16B578A:       var_6FC = (var_6DC + "|")
  loc_16B5794:       var_720 = (var_6FC + CVar(Proc_6_45_EAD428(var_BC(&H17), 4)))
  loc_16B579D:       var_740 = (var_720 + "|")
  loc_16B57A3:       Print 1, var_740
  loc_16B5880:       var_128 = ("TYPE" + Space(6))
  loc_16B5889:       var_14C = (Day(global_84) + "|")
  loc_16B5899:       var_15C = (CVar(Proc_6_45_EAD428(var_BC(1))) + CVar(var_D8(1)))
  loc_16B58A2:       var_16C = (CVar(CStr(Day(global_84))) + "|")
  loc_16B58B2:       var_18C = (var_16C + CVar(var_D8(2)))
  loc_16B58BB:       var_1AC = (CVar(Proc_6_45_EAD428(var_BC(2), 4)) + "|")
  loc_16B58CB:       var_1BC = (Month(global_84) + CVar(var_D8(3)))
  loc_16B58D4:       var_1DC = (var_1BC + "|")
  loc_16B58E4:       var_1EC = (CVar(Proc_6_45_EAD428(var_BC(3), 4)) + CVar(var_D8(4)))
  loc_16B58ED:       var_1FC = (CVar(CStr(Month(global_84))) + "|")
  loc_16B58FD:       var_20C = (var_1FC + CVar(var_D8(5)))
  loc_16B5906:       var_224 = (CVar(Proc_6_45_EAD428(var_BC(4), 4)) + "|")
  loc_16B5916:       var_234 = (var_224 + CVar(var_D8(6)))
  loc_16B591F:       var_248 = (var_234 + "|")
  loc_16B592F:       var_258 = (CVar(Proc_6_45_EAD428(var_BC(5), 4)) + CVar(var_D8(7)))
  loc_16B5938:       var_278 = (var_258 + "|")
  loc_16B5948:       var_28C = (var_278 + CVar(var_D8(8)))
  loc_16B5951:       var_29C = (CVar(Proc_6_45_EAD428(var_BC(6), 4)) + "|")
  loc_16B5961:       var_2BC = (var_29C + CVar(var_D8(9)))
  loc_16B596A:       var_2D0 = (var_2BC + "|")
  loc_16B597A:       var_2E0 = (CVar(Proc_6_45_EAD428(var_BC(7), 4)) + CVar(var_D8(&HA)))
  loc_16B5983:       var_300 = (var_2E0 + "|")
  loc_16B5993:       var_314 = (var_300 + CVar(var_D8(&HB)))
  loc_16B599C:       var_324 = (CVar(Proc_6_45_EAD428(var_BC(8), 4)) + "|")
  loc_16B59AC:       var_344 = (var_324 + CVar(var_D8(&HC)))
  loc_16B59B5:       var_358 = (var_344 + "|")
  loc_16B59C5:       var_368 = (CVar(Proc_6_45_EAD428(var_BC(9), 4)) + CVar(var_D8(&HD)))
  loc_16B59CE:       var_388 = (var_368 + "|")
  loc_16B59DE:       var_39C = (var_388 + CVar(var_D8(&HE)))
  loc_16B59E7:       var_3AC = (CVar(Proc_6_45_EAD428(var_BC(&HA), 4)) + "|")
  loc_16B59F7:       var_3CC = (var_3AC + CVar(var_D8(&HF)))
  loc_16B5A00:       var_3E0 = (var_3CC + "|")
  loc_16B5A10:       var_3F0 = (CVar(Proc_6_45_EAD428(var_BC(&HB), 4)) + CVar(var_D8(&H10)))
  loc_16B5A19:       var_410 = (var_3F0 + "|")
  loc_16B5A29:       var_424 = (var_410 + CVar(var_D8(&H11)))
  loc_16B5A32:       var_434 = (CVar(Proc_6_45_EAD428(var_BC(&HC), 4)) + "|")
  loc_16B5A42:       var_454 = (var_434 + CVar(var_D8(&H12)))
  loc_16B5A4B:       var_468 = (var_454 + "|")
  loc_16B5A5B:       var_478 = (CVar(Proc_6_45_EAD428(var_BC(&HD), 4)) + CVar(var_D8(&H13)))
  loc_16B5A64:       var_498 = (var_478 + "|")
  loc_16B5A74:       var_4AC = (var_498 + CVar(var_D8(&H14)))
  loc_16B5A7D:       var_4BC = (CVar(Proc_6_45_EAD428(var_BC(&HE), 4)) + "|")
  loc_16B5A8D:       var_4DC = (var_4BC + CVar(var_D8(&H15)))
  loc_16B5A96:       var_4F0 = (var_4DC + "|")
  loc_16B5AA6:       var_500 = (CVar(Proc_6_45_EAD428(var_BC(&HF), 4)) + CVar(var_D8(&H16)))
  loc_16B5AAF:       var_520 = (var_500 + "|")
  loc_16B5ABF:       var_534 = (var_520 + CVar(var_D8(&H17)))
  loc_16B5AC8:       var_544 = (CVar(Proc_6_45_EAD428(var_BC(&H10), 4)) + "|")
  loc_16B5ACE:       Print 1, var_544
  loc_16B5B3E:       Print 1, var_A0
  loc_16B5B44:     End If
  loc_16B5B4A:     var_86 = (var_86 + 7)
  loc_16B5B72:     For var_914 = 3 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_914 'Integer
  loc_16B5B7E:       If (var_A2 = 3) Then
  loc_16B5B81:         GoTo loc_16B659C
  loc_16B5B84:       End If
  loc_16B6203:       var_748 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomNo")), 3), 5) & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCat")), var_86), 4)
  loc_16B6225:       var_768 = var_748 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day5"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day6"))), 4)
  loc_16B6247:       var_788 = var_768 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day7"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day8"))), 4)
  loc_16B6269:       var_964 = var_788 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day9"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day10"))), 4)
  loc_16B628B:       var_994 = var_964 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day11"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day12"))), 4)
  loc_16B62AD:       var_9C4 = var_994 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day13"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day14"))), 4)
  loc_16B62CF:       var_9F4 = var_9C4 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day15"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day16"))), 4)
  loc_16B62FE:       var_A34 = Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day18"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day19"))), 4)
  loc_16B6320:       var_A64 = var_A34 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day20"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day21"))), 4)
  loc_16B6342:       var_A94 = var_A64 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day22"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day23"))), 4)
  loc_16B6364:       var_AC4 = var_A94 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day24"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day25"))), 4)
  loc_16B6386:       var_AFC = var_AC4 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day26"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day27"))), 4)
  loc_16B6396:       Print 1, var_9F4 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day17"))), 4) & "|" & var_AFC & "|"
  loc_16B6537:       var_86 = (var_86 + 1)
  loc_16B6540:       If (var_86 > &H3C) Then
  loc_16B6548:         Print 1, var_A0
  loc_16B6550:         var_86 = 0
  loc_16B6559:         var_88 = (var_88 + 1)
  loc_16B656E:         Print 1, Chr(&HC)
  loc_16B6577:       End If
  loc_16B657D:       Me.MoveNext
  loc_16B6596:       If (Me.EOF = &HFF) Then
  loc_16B6599:         GoTo loc_16B65A4
  loc_16B659C:         ' Referenced from: 16B5B81
  loc_16B659C:       End If
  loc_16B659F:     Next var_914 'Integer
  loc_16B65A4:     ' Referenced from: 16B6599
  loc_16B65A4:     GoTo loc_16B517B
  loc_16B65A7:   End If
  loc_16B65A7: End If
  loc_16B65AC: Print 1, var_A0
  loc_16B65D2: var_14C = (Chr(&H12) + Chr(&HC))
  loc_16B65D8: Print 1, CVar(Me.Fields.Item("Day5"))
  loc_16B65E9: Close 1
  loc_16B65F2: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16B6602: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_16B660D: Close 1
  loc_16B6617: If (MemVar_1F923B8 = "Y") Then
  loc_16B6633:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16B663D: Else
  loc_16B6656:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16B665D: End If
  loc_16B665D: Exit Sub
  loc_16B665E: ' Referenced from: 16B5108
  loc_16B665E: Proc_6_60_E62BC4()
  loc_16B6663: Exit Sub
End Sub

Public Sub Proc_128_40_F6F288(arg_C) 'F6F288
  'Data Table: 481B8C
  Dim var_B8 As String
  Dim var_A4 As Variant
  Dim var_90 As Recordset15
  loc_F6F15A: IStAdFunc
  loc_F6F161: Set var_90 = arg_C 
  loc_F6F189: Me.Recordset15.Fields.Append "VenueName", &HC8, &H32
  loc_F6F198: For var_A8 = 0 To &H17: var_8A = var_A8 'Integer
  loc_F6F1A8:   var_B8 = "00"
  loc_F6F1B6:   var_A4 = var_8A
  loc_F6F1F4:   var_90.Fields.Append CStr("Hr" & Format(var_A4, var_B8)), &HC8, &H4B
  loc_F6F20B: Next var_A8 'Integer
  loc_F6F234: var_90.Fields.Append "VenueCode", &HC8, 5
  loc_F6F244: var_90.CursorType = 3
  loc_F6F251: var_90.LockType = 3
  loc_F6F270: var_90.Open var_A4, var_B8, -1
  loc_F6F277: Set var_90 = Nothing 
  loc_F6F27E: Set var_88 = arg_C 
  loc_F6F282: Proc_128_40_F6F288 = -1
End Sub
