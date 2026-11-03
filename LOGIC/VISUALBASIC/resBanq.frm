VERSION 5.00
Begin VB.Form resBanq
  Caption = "Reservation Look Up Room Wise"
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
  ClientHeight = 7830
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
  Begin Frame Frame2
    Caption = "Frame1"
    BackColor = &H0&
    Left = 15
    Top = 6780
    Width = 3480
    Height = 345
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin CommandButton BtnPrint
      Caption = "&WinPrint"
      Index = 2
      BackColor = &HC0C0C0&
      Left = 1155
      Top = 15
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
      BackColor = &HC0C0C0&
      Left = 0
      Top = 15
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
      Caption = "&DosPrint"
      Index = 1
      BackColor = &HC0C0C0&
      Left = 2310
      Top = 15
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
  End
  Begin CommandButton Cmd
    Caption = "&Close"
    Index = 3
    BackColor = &HDEF4FA&
    Left = 9930
    Top = 60
    Width = 1800
    Height = 345
    TabIndex = 7
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton Cmd
    Caption = "&Next Days"
    Index = 2
    BackColor = &HDEF4FA&
    Left = 8130
    Top = 60
    Width = 1800
    Height = 345
    TabIndex = 3
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton Cmd
    Caption = "P&revious Days"
    Index = 1
    BackColor = &HDEF4FA&
    Left = 6330
    Top = 60
    Width = 1800
    Height = 345
    TabIndex = 4
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton Cmd
    Caption = "&Show Detail"
    Index = 0
    BackColor = &HDEF4FA&
    Left = 4530
    Top = 60
    Width = 1800
    Height = 345
    TabIndex = 2
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HE0E0E0&
    Left = 1260
    Top = 105
    Width = 1350
    Height = 240
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 12
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 420
    Top = 780
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 6
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
    Top = 495
    Width = 11820
    Height = 6270
    TabIndex = 5
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 7455
    Width = 11820
    Height = 375
    Visible = 0   'False
    TabIndex = 0
  End
  Begin Label Label2
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &H80000008&
    Left = 4920
    Top = 6825
    Width = 285
    Height = 270
    TabIndex = 20
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Index = 1
    BackColor = &HFF&
    ForeColor = &H80000008&
    Left = 6510
    Top = 6825
    Width = 285
    Height = 270
    TabIndex = 19
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Out Of Order "
    Index = 2
    ForeColor = &H0&
    Left = 6930
    Top = 6840
    Width = 1140
    Height = 225
    TabIndex = 18
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
    Caption = "Vacant "
    Index = 1
    ForeColor = &H0&
    Left = 5475
    Top = 6840
    Width = 675
    Height = 225
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
  Begin Label Label2
    Index = 3
    BackColor = &HFF00&
    ForeColor = &H80000008&
    Left = 8160
    Top = 6825
    Width = 285
    Height = 270
    TabIndex = 16
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Guest In House"
    Index = 3
    ForeColor = &H0&
    Left = 8460
    Top = 6840
    Width = 1290
    Height = 225
    TabIndex = 15
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
    Caption = "Expected Arrival"
    Index = 4
    ForeColor = &H0&
    Left = 10245
    Top = 6840
    Width = 1410
    Height = 225
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
    Index = 4
    BackColor = &HFFFF00&
    ForeColor = &H80000008&
    Left = 9810
    Top = 6825
    Width = 285
    Height = 270
    TabIndex = 13
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Start Date"
    Index = 15
    ForeColor = &H0&
    Left = 150
    Top = 120
    Width = 975
    Height = 210
    TabIndex = 8
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
    BorderColor = &HE0E0E0&
    Left = 15
    Top = 15
    Width = 12105
    Height = 480
    BorderWidth = 2
    FillColor = &HE0E0E0&
    FillStyle = 0
  End
  Begin Label LBLRoomName
    BackColor = &HE0E0E0&
    ForeColor = &HC00000&
    Left = 450
    Top = 6780
    Width = 11340
    Height = 360
    TabIndex = 21
    BorderStyle = 1 'Fixed Single
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "resBanq"

Private global_96 As Integer
Private global_80 As Double
Private global_100 As Integer
Private global_56 As Integer
Private global_58 As Integer
Private global_112 As Long
Private global_108 As Long

Private Sub BTNPRINT_Click(Index As Integer) '13FBAB4
  'Data Table: 469468
  Dim unk_46946E As Connection15
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
  loc_13FB0D0: On Error Goto loc_13FBAAD
  loc_13FB0D8: global_96 = &HFF
  loc_13FB0F1: unk_46946E.Execute "Select * From FAEnviro", var_B8, -1
  loc_13FB0FC: Set var_94 = var_BC
  loc_13FB114: var_BC = var_94.Fields
  loc_13FB178: var_13C = IIf((Proc_6_38_E68A98(CVar(var_BC.Item("daterfill")), var_BC) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("daterfill")))))
  loc_13FB181: MemVar_1F923C0 = CStr(var_13C)
  loc_13FB215: var_13C = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F923C0) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")))))
  loc_13FB21E: MemVar_1F923C4 = CStr(var_13C)
  loc_13FB2B2: var_13C = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F923C4) = vbNullString), "M", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")))))
  loc_13FB2F3: var_C0 = var_94.Fields.Item("linefiller")
  loc_13FB30A: var_D8 = "linefiller"
  loc_13FB316: var_C8 = var_94.Fields
  loc_13FB31E: var_DC = var_C8.Item(var_D8)
  loc_13FB332: var_10C = "-"
  loc_13FB348: var_FC = (Proc_6_38_E68A98(CVar(var_C0), CStr(var_13C)) = vbNullString)
  loc_13FB358: MemVar_1F923CC = CStr(IIf(var_FC, "M", CVar(Proc_6_38_E68A98(CVar(var_DC)))))
  loc_13FB37F: global_88 = "23 Day Room Availability Forecast (Report)"
  loc_13FB386: var_88 = "Day23RoomAvail"
  loc_13FB38F: var_A8 = global_88
  loc_13FB3A6: global_92 = CStr(Ucase(var_A8))
  loc_13FB3C2: If ((global_96 = 0) Or (var_88 = vbNullString)) Then
  loc_13FB3C5:   Exit Sub
  loc_13FB3C6: End If
  loc_13FB3C6: Call Day23RoomAvail()
  loc_13FB3F2: Set var_BC = global_104 
  loc_13FB3F9: CreateFieldDefFile(var_BC, MemVar_1F920B4 & "\" & var_88 & ".ttx", &HFF)
  loc_13FB42B: var_C4 = "\" & var_88
  loc_13FB43F: Call 0.Method_arg_1C (MemVar_1F920B4 & var_C4 & ".RPT", var_A8, var_BC)
  loc_13FB44A: MemVar_1F921E4 = var_BC
  loc_13FB476: Call 0.Method_arg_64 (var_BC, CVar(var_BC), var_D8)
  loc_13FB47E: Call 0.Method_arg_2C (var_FC, MemVar_1F923CC)
  loc_13FB48C: Call 0.Method_arg_150 (global_96)
  loc_13FB4A2: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13FB4AA: Call 0.Method_arg_24 (var_8A)
  loc_13FB4B6: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_13FB4CF:   Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FB4D7:   Call 0.Method_arg_20 (var_C0)
  loc_13FB4DF:   Call 0.Method_arg_30 (var_C4)
  loc_13FB4F5:   var_160 = Ucase(CVar(var_C4)) 'Variant
  loc_13FB525:   If (var_160 = Ucase("Title")) Then
  loc_13FB54C:     Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FB554:     Call 0.Method_arg_20 (var_C0)
  loc_13FB55C:     Call 0.Method_arg_38 ("'" & global_88 & "'")
  loc_13FB572:   Else
  loc_13FB594:     If (var_160 = Ucase("BetweenDate")) Then
  loc_13FB5A8:       Set var_BC = Me.Txt
  loc_13FB5AE:       Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13FB5D9:       Call 0.Method_arg_90 (var_C8, CLng(var_8A))
  loc_13FB5E1:       Call 0.Method_arg_20 (var_DC)
  loc_13FB5E9:       Call 0.Method_arg_38 ("'From Date " & var_C0.Text & "'")
  loc_13FB605:     Else
  loc_13FB627:       If (var_160 = Ucase("Dater")) Then
  loc_13FB64B:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FB653:         Call 0.Method_arg_20 (var_C0)
  loc_13FB65B:         Call 0.Method_arg_38 ("'" & MemVar_1F923C0 & "'")
  loc_13FB671:       Else
  loc_13FB693:         If (var_160 = Ucase("Pager")) Then
  loc_13FB69D:           var_C4 = "'" & MemVar_1F923C4
  loc_13FB6B7:           Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FB6BF:           Call 0.Method_arg_20 (var_C0)
  loc_13FB6C7:           Call 0.Method_arg_38 (var_C4 & "'")
  loc_13FB6DA:         End If
  loc_13FB6DA:       End If
  loc_13FB6DA:     End If
  loc_13FB6DA:   End If
  loc_13FB6DD: Next var_150 'Integer
  loc_13FB6F3: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13FB6FB: Call 0.Method_arg_24 (var_8A)
  loc_13FB707: For var_166 =  To CInt(var_14C): 1 = var_166 'Integer
  loc_13FB714:   For var_16A = 1 To &H17: var_96 = var_16A 'Integer
  loc_13FB725:     Set var_BC = Me.Txt
  loc_13FB72B:     Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13FB745:     var_EC = DateAdd("d", CDbl((var_96 - 1)), CVar(var_C0))
  loc_13FB752:     global_80 = CDate(Ucase("Pager"))
  loc_13FB772:     Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13FB77A:     Call 0.Method_arg_20 (var_C4, global_80)
  loc_13FB782:     Call 0.Method_arg_30 (1)
  loc_13FB798:     var_17C = Ucase(CVar(var_C4)) 'Variant
  loc_13FB7CF:     If (var_17C = Ucase(CVar("Day" & CStr(var_96)))) Then
  loc_13FB82E:       Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13FB836:       Call 0.Method_arg_20 (CStr(1 & Ucase(Format(global_80, "DDD")) & "'"), 1)
  loc_13FB83E:       Call 0.Method_arg_38 ("'")
  loc_13FB85D:     Else
  loc_13FB886:       If (var_17C = Ucase(CVar("Date" & CStr(var_96)))) Then
  loc_13FB8A6:         var_12C = CVar(CStr(Day(global_80))) 'String
  loc_13FB8CE:         var_11C = Space((2 - Len(CStr(Day(global_80)))))
  loc_13FB8D6:         var_13C = (var_12C + Ucase(Format(global_80, "DDD")))
  loc_13FB90C:         var_1CC = Space((2 - Len(CStr(Month(global_80)))))
  loc_13FB92F:         var_20C = (var_1CC + CVar(CStr(Month(global_80))))
  loc_13FB954:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FB95C:         Call 0.Method_arg_20 (var_C0)
  loc_13FB964:         Call 0.Method_arg_38 (CStr("'" & 1 & Ucase(Format(global_80, "DDD")) & "'" & vbNullString & var_20C & "'"))
  loc_13FB9A0:       End If
  loc_13FB9A0:     End If
  loc_13FB9A3:   Next var_16A 'Integer
  loc_13FB9AB: Next var_166 'Integer
  loc_13FB9B6: If (Index = 1) Then
  loc_13FB9C6:   ReDim Preserve var_90(0 To 1)
  loc_13FB9E1:   Set var_BC = Me.Txt
  loc_13FB9E7:   Call 0.Method_BTNPRINT_Click0 (CInt(0), var_C0)
  loc_13FBA0A:   var_90(0) = vbNullString & var_C0.Text & vbNullString
  loc_13FBA1B: End If
  loc_13FBA21: If (Index = 1) Then
  loc_13FBA45:   MsgBox("Please set 80 col. in your Printer & put it on.", &H40, "Paper Setting", Ucase(Format(global_80, "DDD")), var_12C)
  loc_13FBA55:   Call Proc_112_38_16B4C44()
  loc_13FBA5D: Else
  loc_13FBA62:   Set var_C0 = Nothing
  loc_13FBA79:   Set var_BC = MemVar_1F921E4 
  loc_13FBA85:   Proc_6_99_1483714(var_BC, Index, global_92)
  loc_13FBA90:   MemVar_1F921E4 = var_BC
  loc_13FBA9B: End If
  loc_13FBAA0: global_100 = 0
  loc_13FBAA8: MemVar_1F921E4 = Nothing
  loc_13FBAAC: Exit Sub
  loc_13FBAAD: ' Referenced from: 13FB0D0
  loc_13FBAAD: Proc_6_60_E62BC4(global_100, &HFF)
  loc_13FBAB2: Exit Sub
End Sub

Private Sub Cmd_Click(Index As Integer) '102A71C
  'Data Table: 469468
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_B8 As Long
  Dim var_D8 As Long
  Dim var_8C As Variant
  Dim var_F8 As Variant
  Dim var_94 As TextBox
  loc_102A4EF: var_86 = Index
  loc_102A4F8: If (var_86 = 0) Then
  loc_102A506:   Set var_8C = Me.Txt
  loc_102A50C:   Call 0.Method_Cmd_Click0 (CInt(0), var_90)
  loc_102A51D:   Set var_94 = var_90
  loc_102A535:   If (Proc_6_27_EA565C(var_94, "Start Date") = 0) Then
  loc_102A538:     Exit Sub
  loc_102A539:   End If
  loc_102A547:   Set var_8C = Me.Txt
  loc_102A54D:   Call 0.Method_Cmd_Click0 (CInt(0), var_90)
  loc_102A555:   var_98 = var_90.Text
  loc_102A55D:   var_A8 = "RoomNo"
  loc_102A571:   Call Proc_112_36_154B8D8(CDate(var_98), 1)
  loc_102A587: Else
  loc_102A58D:   If (var_86 = 1) Then
  loc_102A590:     var_B8 = 1
  loc_102A599:     var_D8 = 1
  loc_102A5AC:     var_F8 = Me.FGrid.ColHeaderCaption)
  loc_102A5C6:     Set var_90 = Me.Txt
  loc_102A5CC:     Call 0.Method_Cmd_Click0 (CInt(0), var_94, var_98, var_F8)
  loc_102A5D4:     var_D8 = var_94.Text
  loc_102A60F:     If (CDate(Right(CVar(CStr(var_F8)), 9)) <> CDate(var_98)) Then
  loc_102A612:       var_B8 = 1
  loc_102A62E:       var_F8 = Me.FGrid.ColHeaderCaption)
  loc_102A66A:       Call Proc_112_36_154B8D8(CDate((CDate(Right(CVar(CStr(var_F8)), 9)) - CDbl(1))), &HFF, "RoomNo", var_F8, 1)
  loc_102A680:     End If
  loc_102A683:   Else
  loc_102A689:     If (var_86 = 2) Then
  loc_102A68C:       var_B8 = 1
  loc_102A6A8:       var_F8 = Me.FGrid.ColHeaderCaption)
  loc_102A6E4:       Call Proc_112_36_154B8D8(CDate((CDate(Right(CVar(CStr(var_F8)), 9)) + CDbl(1))), 1, "RoomNo", var_F8, &H1E)
  loc_102A6FD:     Else
  loc_102A703:       If (var_86 = 3) Then
  loc_102A713:         Me.Global.Unload Me
  loc_102A71B:       End If
  loc_102A71B:     End If
  loc_102A71B:   End If
  loc_102A71B: End If
  loc_102A71B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E580D8
  'Data Table: 469468
  Dim var_92 As Integer
  loc_E580AA: Set var_88 = Me.Txt
  loc_E580B0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E580BE: Proc_6_74_E226B0(var_8C)
  loc_E580CA: Call Proc_112_35_DFBB94(var_8C)
  loc_E580D2: var_92 = Index
  loc_E580D5: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E0AC78
  'Data Table: 469468
  loc_E0AC6E: If (CLng(Shift) = &H1B) Then
  loc_E0AC71:   Call Proc_112_35_DFBB94()
  loc_E0AC76:   Exit Sub
  loc_E0AC77: End If
  loc_E0AC77: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E45DA4
  'Data Table: 469468
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_E45D74: On Error Goto loc_E45D9B
  loc_E45D7A: Proc_6_58_E054C0(arg_10)
  loc_E45D85: Proc_6_133_E7EF78(var_94)
  loc_E45D8E: arg_10 = CInt(var_94)
  loc_E45D97: var_96 = KeyAscii
  loc_E45D9A: Exit Sub
  loc_E45D9B: ' Referenced from: E45D74
  loc_E45D9B: Proc_6_60_E62BC4(var_96, arg_10)
  loc_E45DA0: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFDF84
  'Data Table: 469468
  Dim var_86 As Integer
  loc_DFDF7F: var_86 = KeyCode
  loc_DFDF82: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D22C
  'Data Table: 469468
  loc_E4D20A: Set var_88 = Me.Txt
  loc_E4D210: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D21E: Proc_6_73_E22704(var_8C)
  loc_E4D22A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F996D8
  'Data Table: 469468
  Dim var_90 As TextBox
  Dim var_F0 As TextBox
  Dim arg_10 As Integer
  loc_F99578: On Error Goto loc_F996CF
  loc_F99589: If (Cancel = CInt(0)) Then
  loc_F99599:   Set var_8C = Me.Txt
  loc_F9959F:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F995D7:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_F995EC:     Set var_8C = Me.Txt
  loc_F995F2:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F995FA:     var_90.Text = CStr(MemVar_1F920EC)
  loc_F9960C:   Else
  loc_F99616:     Set var_8C = Me.Txt
  loc_F9961C:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F9963C:     Set var_EC = Me.Txt
  loc_F99642:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_F9964A:     var_F0.Text = Proc_6_33_1512840(var_90)
  loc_F9965D:   End If
  loc_F9966A:   Set var_8C = Me.Txt
  loc_F99670:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F996A1:   If (CDate(CDate(var_90.Text)) < Date) Then
  loc_F996AE:     Set var_8C = Me.Txt
  loc_F996B4:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F996BC:     var_90.SetFocus
  loc_F996CA:     arg_10 = &HFF
  loc_F996CD:     Exit Sub
  loc_F996CE:   End If
  loc_F996CE: End If
  loc_F996CE: Exit Sub
  loc_F996CF: ' Referenced from: F99578
  loc_F996CF: Proc_6_60_E62BC4(arg_10)
  loc_F996D4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5F5B4
  'Data Table: 469468
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5F57F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5F592: Set var_A8 = Me.TxtGrid
  loc_E5F598: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5F5A0: var_AC.Visible = False
  loc_E5F5AC: Call Proc_112_35_DFBB94()
  loc_E5F5B1: Exit Sub
  loc_E5F5B2: Set var_1000 = 
End Sub

Private Sub FGrid_UnknownEvent_1 'E693A8
  'Data Table: 469468
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69364: Set var_88 = Me.TxtGrid
  loc_E6936A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E69384: If (var_8C.Visible = 0) Then
  loc_E6939D:   Me.FGrid.BackColorSel = CVar(CLng(global_52))
  loc_E693A5: End If
  loc_E693A5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFD288
  'Data Table: 469468
  loc_DFD284: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1044DF0
  'Data Table: 469468
  Dim var_B8 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_1044B9C: Set var_88 = Me.TopCtrl1
  loc_1044BA2: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1044BF2: If CBool(( = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1044BFB:   Call Form_KeyDown(Cancel, arg_10)
  loc_1044C00: End If
  loc_1044C04: Set var_88 = Me.TopCtrl1
  loc_1044C0A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_1044C1F: If ( = "Browse") Then
  loc_1044C22:   Exit Sub
  loc_1044C23: End If
  loc_1044C97: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_1044CB0:   Me.FGrid.CellBackColor = CVar(CLng(global_52))
  loc_1044CC0:   var_DC = "+{Tab}"
  loc_1044CC6:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_1044CD0:   Cancel = 0
  loc_1044CD6: Else
  loc_1044CE0:   var_B8 = Me.FGrid.Rows
  loc_1044D2D:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_1044D46:     Me.FGrid.CellBackColor = CVar(CLng(global_52))
  loc_1044D5C:     Proc_303_0_FB9B68("{Tab}", 0, var_B8)
  loc_1044D66:     Cancel = 0
  loc_1044D69:   End If
  loc_1044D69: End If
  loc_1044D6F: global_56 = Cancel
  loc_1044D95: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1044DB9: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1044DCF:   var_EC = CLng(Me.FGrid.Col)
  loc_1044DD8: End If
  loc_1044DDE: If (Cancel = &HD) Then
  loc_1044DE6:   global_58 = 0
  loc_1044DE9: End If
  loc_1044DEB: Cancel = 0
  loc_1044DEE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0C6B0
  'Data Table: 469468
  loc_E0C6A1: Call FGrid_UnknownEvent_C()
  loc_E0C6AB: global_58 = 0
  loc_E0C6AE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'E4D438
  'Data Table: 469468
  loc_E4D42E: If (CLng(Cancel) = &HD) Then
  loc_E4D431:   Call Proc_112_30_1301954(CLng(Me.FGrid.Col))
  loc_E4D436: End If
  loc_E4D436: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'DFD184
  'Data Table: 469468
  Dim arg_73D As Boolean
  loc_DFD180: Exit Sub
  loc_DFD181: arg_73D = True
End Sub

Private Sub FGrid_UnknownEvent_15 'E45184
  'Data Table: 469468
  Dim var_8C As TextBox
  loc_E45158: Call Proc_112_35_DFBB94()
  loc_E45168: Set var_88 = Me.TxtGrid
  loc_E4516E: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E45176: var_8C.Visible = False
  loc_E45182: Exit Sub
End Sub

Private Sub Form_Load() 'EE1608
  'Data Table: 469468
  Dim var_8C As Variant
  loc_EE1548: On Error Goto loc_EE1600
  loc_EE1553: global_112 = &HFDC293
  loc_EE1565: Set var_88 = Me.Label2
  loc_EE156B: Call 0.Method_Form_Load0 (4, var_8C)
  loc_EE1573: var_8C.BackColor = global_112
  loc_EE15B3: Set var_88 = Me.Txt
  loc_EE15B9: Call 0.Method_Form_Load0 (CInt(0), var_8C, CStr(MemVar_1F920EC), &HFFFFFF)
  loc_EE15C1: var_8C.Text = &H40C0
  loc_EE15E8: Proc_6_23_DFBA28(Me, 7590, 11940)
  loc_EE15F0: Call Proc_112_29_10350F4(&HFF00)
  loc_EE15FA: Call Cmd_Click(0)
  loc_EE15FF: Exit Sub
  loc_EE1600: ' Referenced from: EE1548
  loc_EE1600: Proc_6_60_E62BC4(global_112)
  loc_EE1605: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0D66C
  'Data Table: 469468
  loc_E0D663: Set global_104 = Nothing
  loc_E0D66A: Exit Sub
End Sub

Private Sub Form_Activate() 'E19AC8
  'Data Table: 469468
  loc_E19AB4: Set var_88 = Me.FGrid
  loc_E19AC5: Exit Sub
End Sub

Private Sub Form_Deactivate() 'DFD52C
  'Data Table: 469468
  loc_DFD528: Exit Sub
  loc_DFD529:  = var_C00
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E26C5C
  'Data Table: 469468
  loc_E26C34: On Error Goto loc_E26C54
  loc_E26C4B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E26C53: Exit Sub
  loc_E26C54: ' Referenced from: E26C34
  loc_E26C54: Proc_6_60_E62BC4(Shift)
  loc_E26C59: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F0E798
  'Data Table: 469468
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F0E6C6: Set var_88 = Me.TxtGrid
  loc_F0E6CC: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_F0E6DA: Proc_6_74_E226B0(var_8C)
  loc_F0E6E6: Call Proc_112_35_DFBB94(var_8C)
  loc_F0E6F7: If (Index = 0) Then
  loc_F0E70D:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F0E74C:   Set var_108 = Me.TxtGrid
  loc_F0E752:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_F0E75A:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_F0E78B:   var_114 = CLng(Me.FGrid.Col)
  loc_F0E794: End If
  loc_F0E794: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'F01748
  'Data Table: 469468
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_F0167C: If (KeyCode = 0) Then
  loc_F01689:   If (CLng(Shift) = &H1B) Then
  loc_F01699:     Set var_8C = Me.TxtGrid
  loc_F0169F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_F016B9:     Set var_98 = Me.TxtGrid
  loc_F016BF:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_F016C7:     var_9C.Text = var_90.Tag
  loc_F016E3:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_F016E8:     Call Proc_112_35_DFBB94(arg_14)
  loc_F016F1:     Set var_8C = Me.FGrid
  loc_F0170E:     Set var_8C = Me.TxtGrid
  loc_F01714:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_F0171C:     var_90.Visible = FGrid.DispID_8001
  loc_F01728:     Exit Sub
  loc_F01729:   End If
  loc_F0173C:   var_B0 = CLng(Me.FGrid.Col)
  loc_F01745: End If
  loc_F01745: Exit Sub
  loc_F01746: BranchFVar -3841
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E50F50
  'Data Table: 469468
  Dim var_A0 As Long
  loc_E50F1F: Proc_6_58_E054C0(arg_10)
  loc_E50F30: If (KeyAscii = 0) Then
  loc_E50F46:   var_A0 = CLng(Me.FGrid.Col)
  loc_E50F4F: End If
  loc_E50F4F: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E53E8C
  'Data Table: 469468
  Dim var_A0 As Long
  loc_E53E54: On Error Goto loc_E53E83
  loc_E53E63: If (KeyCode = 0) Then
  loc_E53E79:   var_A0 = CLng(Me.FGrid.Col)
  loc_E53E82: End If
  loc_E53E82: Exit Sub
  loc_E53E83: ' Referenced from: E53E54
  loc_E53E83: Proc_6_60_E62BC4(var_A0)
  loc_E53E88: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20A24
  'Data Table: 469468
  Dim arg_10 As Integer
  loc_E20A0C: If (Cancel = 0) Then
  loc_E20A15:   Call Proc_112_31_E542EC(Cancel, var_88)
  loc_E20A1E:   arg_10 = Not(var_88)
  loc_E20A21: End If
  loc_E20A21: Exit Sub
End Sub

Public Sub Day23RoomAvail() '1103694
  'Data Table: 469468
  Dim var_A4 As Recordset15
  Dim var_C4 As String
  Dim var_B4 As Variant
  Dim var_8C As Variant
  Dim Me As Variant
  loc_1103368: On Error Goto loc_1103685
  loc_1103385: Call Proc_112_39_F88DB4(New)
  loc_11033A0: Set var_8C = Me.FGrid
  loc_11033BC: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_11033C8:   Set var_A4 = var_8C 
  loc_11033D7:   var_A4.AddNew var_B4, var_C4
  loc_1103401:   var_A4.Fields.Item("mLine").Value = vbNullString
  loc_110345F:   var_A4.Fields.Item("RoomNo").Value = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), 0, CVar(CLng(var_86))))
  loc_11034C7:   var_A4.Fields.Item("RoomCat").Value = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_86))))
  loc_11034E5:   For var_120 = 5 To &H1B: var_88 = var_120 'Integer
  loc_110352F:     If (Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86))) = "@  RFF") Then
  loc_1103561:       var_A4.Fields.Item(CVar("Day" & CStr(var_88))).Value = "***"
  loc_1103576:     Else
  loc_11035E8:       var_A4.Fields.Item(CVar("Day" & CStr(var_88))).Value = Left(CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86)))), &HF)
  loc_110360A:     End If
  loc_110360D:   Next var_120 'Integer
  loc_1103612:   var_C4 = "*"
  loc_110361B:   var_B4 = "Mark"
  loc_1103637:   var_A4.Fields.Item(var_B4).Value = var_C4
  loc_110364E:   var_A4.Update var_B4, var_C4
  loc_1103655:   Set var_A4 = Nothing 
  loc_110365C: Next var_A0 'Integer
  loc_1103678: If (Me.RecordCount <= 0) Then
  loc_1103680:   global_96 = 0
  loc_1103683:   Exit Sub
  loc_1103684: End If
  loc_1103684: Exit Sub
  loc_1103685: ' Referenced from: 1103368
  loc_110368D: Proc_6_60_E62BC4(0)
  loc_1103692: Exit Sub
End Sub

Public Property Get OpenMode() 'E08D80
  'Data Table: 469468
  loc_E08D79: OpenMode = global_108
End Sub

Public Property Let OpenMode(vNewValue) 'E01388
  'Data Table: 469468
  loc_E01382: global_108 = vNewValue
  loc_E01385: Exit Sub
End Sub

Public Sub Proc_112_29_10350F4
  'Data Table: 469468
  Dim var_9C As Variant
  Dim var_88 As Long
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_1034EB6: Me.FGrid.Left = CVar(CDbl(0))
  loc_1034ED1: Me.FGrid.Top = CVar(CDbl(495))
  loc_1034EDE: var_88 = &H249
  loc_1034EE5: Set var_B4 = Me.FGrid
  loc_1034EFC: global_52 = CStr(CLng(var_B4.BackColor))
  loc_1034F12: var_B4.Cols = &H23
  loc_1034F17: var_9C = 0
  loc_1034F23: var_D8 = CVar(CLng(1)) 'Long
  loc_1034F28: var_F8 = "SNo"
  loc_1034F31: LateIdCallSt
  loc_1034F3C: var_9C = CVar(CLng(1)) 'Long
  loc_1034F41: var_D8 = 0
  loc_1034F4D: LateIdCallSt
  loc_1034F55: var_9C = 0
  loc_1034F61: var_D8 = CVar(CLng(2)) 'Long
  loc_1034F66: var_F8 = "Type"
  loc_1034F6F: LateIdCallSt
  loc_1034F7A: var_9C = CVar(CLng(2)) 'Long
  loc_1034F85: var_D8 = CVar(CInt(1)) 'Integer
  loc_1034F8C: LateIdCallSt
  loc_1034F97: var_9C = CVar(CLng(2)) 'Long
  loc_1034FA2: var_D8 = CVar(CInt(1)) 'Integer
  loc_1034FA9: LateIdCallSt
  loc_1034FB4: var_9C = CVar(CLng(2)) 'Long
  loc_1034FB9: var_D8 = &H3E8
  loc_1034FC5: LateIdCallSt
  loc_1034FCD: var_9C = 0
  loc_1034FD9: var_D8 = CVar(CLng(3)) 'Long
  loc_1034FDE: var_F8 = "Rate"
  loc_1034FE7: LateIdCallSt
  loc_1034FF2: var_9C = CVar(CLng(3)) 'Long
  loc_1034FFD: var_D8 = CVar(CInt(7)) 'Integer
  loc_1035004: LateIdCallSt
  loc_103500F: var_9C = CVar(CLng(3)) 'Long
  loc_103501A: var_D8 = CVar(CInt(7)) 'Integer
  loc_1035021: LateIdCallSt
  loc_103502C: var_9C = CVar(CLng(3)) 'Long
  loc_1035031: var_D8 = &H1F4
  loc_103503D: LateIdCallSt
  loc_103504C: For var_10C = 5 To &H22: var_8A = var_10C 'Byte
  loc_1035052:   var_9C = 0
  loc_1035060:   var_D8 = CVar(CLng(var_8A)) 'Long
  loc_1035072:   var_C4 = CVar("Day" & CStr(var_8A)) 'String
  loc_1035079:   LateIdCallSt
  loc_103508C:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_1035097:   var_D8 = CVar(CInt(4)) 'Integer
  loc_103509E:   LateIdCallSt
  loc_10350AB:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_10350B6:   var_D8 = CVar(CInt(1)) 'Integer
  loc_10350BD:   LateIdCallSt
  loc_10350CA:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_10350D9:   LateIdCallSt
  loc_10350E4: Next var_10C 'Byte
  loc_10350EC: Set var_B4 = Nothing 
  loc_10350F0: Exit Sub
End Sub

Public Sub Proc_112_30_1301954
  'Data Table: 469468
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_16C As Variant
  Dim var_228 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_218 As Variant
  Dim var_248 As Variant
  Dim var_340 As Variant
  loc_13012DB: If (CLng(Me.FGrid.Col) = 4) Then
  loc_13012DE:   Exit Sub
  loc_13012DF: End If
  loc_13012F2: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130130A: var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1301319: var_108 = Me.FGrid.TextMatrix)
  loc_130132E: var_118 = CVar(CStr(var_108)) 'String
  loc_130135A: If (Left(var_118, 1) = "@") Then
  loc_130137E:   MsgBox("Selected Room is currently Out Of Order ", 0, "<<<<<<<<< Out Of Order >>>>>>>>>", var_108, var_118)
  loc_130138E:   Exit Sub
  loc_130138F: End If
  loc_13013AF: If (CLng(Me.FGrid.CellBackColor) = global_116) Then
  loc_13013D3:   MsgBox("Selected Room is not Vacant ", 0, "<<<<<<<<< Room Is Not Vacant >>>>>>>>>", var_108, var_118)
  loc_13013E3:   Exit Sub
  loc_13013E4: End If
  loc_1301404: If (CLng(Me.FGrid.CellBackColor) = global_112) Then
  loc_1301428:   MsgBox("Selected Room is Reserved ", 0, "<<<<<<<<< Room Is Not Vacant >>>>>>>>>", var_108, var_118)
  loc_1301438:   Exit Sub
  loc_1301439: End If
  loc_130144C: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301464: var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13014B4: If (Right(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "#") Then
  loc_13014D8:   For var_14C = CInt(CLng(Me.FGrid.Col)) To 5 Step &HFF: var_8A = var_14C 'Integer
  loc_13014F1:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301509:     var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1301559:     If (Right(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "#") Then
  loc_130155C:       var_C4 = 1
  loc_130156C:       var_E4 = CVar(CLng((var_8A - 4))) 'Long
  loc_130159F:       var_88 = CStr(Right(CVar(CStr(Me.FGrid.ColHeaderCaption))), 8))
  loc_13015B1:     Else
  loc_13015B1:       Exit For
  loc_13015B4:     End If
  loc_13015B7:   Next var_14C 'Integer
  loc_13015BC:   ' Referenced from: 13015B1
  loc_13015BF: Else
  loc_13015BF:   var_C4 = 1
  loc_13015E1:   var_E4 = CVar((CLng(Me.FGrid.Col) - 4)) 'Long
  loc_1301614:   var_88 = CStr(Right(CVar(CStr(Me.FGrid.ColHeaderCaption))), 9))
  loc_1301629: End If
  loc_1301635: If (global_108 = 1) Then
  loc_130164B:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301653:   var_E4 = CVar(CLng(1)) 'Long
  loc_1301673:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_130168F:   var_138 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301697:   var_16C = CVar(CLng(2)) 'Long
  loc_13016B1:   var_228 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13016CF:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13016D7:   var_1C4 = CVar(CLng(0)) 'Long
  loc_13016F7:   var_208 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1301706:   Call unk_4694C7.SEARCHBACKRoomNo
  loc_1301737: Else
  loc_130174A:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301752:   var_E4 = CVar(CLng(1)) 'Long
  loc_130178A:   var_138 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301792:   var_16C = CVar(CLng(2)) 'Long
  loc_13017C0:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13017C8:   var_1C4 = CVar(CLng(0)) 'Long
  loc_1301800:   var_218 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301818:   var_248 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1301881:   var_340 = Me.FGrid.TextMatrix)
  loc_13018E1:   Proc_146_0_E7D9C8(1, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(Me.FGrid.TextMatrix)), var_88, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(IIf((Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "@"), vbNullString, CVar(CStr(var_340)))), CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_130193B: End If
  loc_1301948: Me.var_340.Unload Me
  loc_1301950: Exit Sub
End Sub

Public Sub Proc_112_31_E542EC(arg_C) 'E542EC
  'Data Table: 469468
  Dim var_A0 As Long
  loc_E542C0: If (arg_C = 0) Then
  loc_E542D6:   var_A0 = CLng(Me.FGrid.Col)
  loc_E542DF: End If
  loc_E542E4: Proc_112_31_E542EC = &HFF
End Sub

Public Sub Proc_112_32_E0A610
  'Data Table: 469468
  loc_E0A609: Proc_112_32_E0A610 = &HFF
End Sub

Public Sub Proc_112_33_F1D97C
  'Data Table: 469468
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_F1D88A: Set var_8C = Me.Txt
  loc_F1D890: Call 0.Method_Proc_112_33_F1D97CC (var_8E, var_86)
  loc_F1D8A0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1D8B6:   Set var_8C = Me.Txt
  loc_F1D8BC:   Call 0.Method_Proc_112_33_F1D97C0 (CInt(var_86), var_98)
  loc_F1D8C4:   var_98.Text = vbNullString
  loc_F1D8E0:   Set var_8C = Me.Txt
  loc_F1D8E6:   Call 0.Method_Proc_112_33_F1D97C0 (CInt(var_86), var_98)
  loc_F1D8EE:   var_98.Tag = vbNullString
  loc_F1D8FD: Next var_92 'Byte
  loc_F1D916: Me.FGrid.Rows = 1
  loc_F1D93C: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_F1D944: Set var_98 = Me.FGrid
  loc_F1D971: Me.FGrid.FixedRows = 1
  loc_F1D979: Exit Sub
End Sub

Public Sub Proc_112_34_E78B84(arg_C) 'E78B84
  'Data Table: 469468
  Dim var_98 As TextBox
  loc_E78B32: Set var_8C = Me.Txt
  loc_E78B38: Call 0.Method_Proc_112_34_E78B84C (var_8E, var_86)
  loc_E78B48: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78B5E:   Set var_8C = Me.Txt
  loc_E78B64:   Call 0.Method_Proc_112_34_E78B840 (CInt(var_86), var_98)
  loc_E78B6C:   var_98.Enabled = arg_C
  loc_E78B7B: Next var_92 'Byte
  loc_E78B81: Exit Sub
End Sub

Public Sub Proc_112_35_DFBB94
  'Data Table: 469468
  Dim arg_73D As Boolean
  loc_DFBB90: Exit Sub
  loc_DFBB91: arg_73D = True
End Sub

Public Sub Proc_112_36_154B8D8(arg_C, arg_10) '154B8D8
  'Data Table: 469468
  Dim var_D8 As Variant
  Dim var_EC As Variant
  Dim var_B6 As Integer
  Dim var_B8 As Integer
  Dim var_BA As Integer
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_F8 As String
  Dim unk_46946E As Connection15
  Dim var_108 As Variant
  Dim var_F0 As String
  Dim var_14C As Variant
  Dim var_17C As Variant
  Dim var_15C As Variant
  Dim var_1BC As Variant
  Dim var_B4 As Double
  Dim var_1CC As Variant
  Dim var_258 As Variant
  Dim var_E8 As Variant
  Dim var_128 As Variant
  Dim var_16C As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_19C As Variant
  Dim var_238 As Variant
  Dim var_278 As Variant
  Dim var_18C As Variant
  Dim var_1F8 As Variant
  Dim var_308 As Variant
  Dim var_348 As String
  Dim var_458 As Variant
  Dim var_C8 As Recordset15
  Dim var_1D0 As Variant
  Dim var_C2 As Integer
  loc_154A94F: Me.FGrid.FixedCols = 0
  loc_154A96A: Me.FGrid.FixedRows = 1
  loc_154A985: Me.FGrid.RowHeightMin = &H1F4
  loc_154A996: Set var_EC = Me.FGrid
  loc_154A99C: var_EC.Redraw = False
  loc_154A9AA: If (arg_10 = 1) Then
  loc_154A9B1:   var_B6 = CInt(5)
  loc_154A9B8:   var_B8 = CInt(&H22)
  loc_154A9BD:   var_BA = 1
  loc_154A9C3:   var_8C = arg_C
  loc_154A9CE:   var_94 = CDate((arg_C + CDbl(&H1E)))
  loc_154A9D4: Else
  loc_154A9D8:   var_B6 = CInt(&H22)
  loc_154A9DF:   var_B8 = CInt(5)
  loc_154A9E4:   var_BA = &HFF
  loc_154A9EF:   var_8C = CDate((arg_C - CDbl(&H1D)))
  loc_154A9FA:   var_94 = CDate((arg_C + CDbl(1)))
  loc_154A9FD: End If
  loc_154AA1B: Call Proc_112_37_F9D6E8(CStr(var_8C), var_F0, "SHAPE {select R.Code as RoomNo,RC.Code as RoomCat,RC.Name as Category,RL.Rate2 as Rate from (RoomMast R left Join RoomCat RC on RC.Code=R.RoomCat)Left Join RateList RL on RC.Code=RL.RoomCat Where R.Type='RO' And R.Type='RO' And RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' Order By R.Code} APPEND ({SELECT Distinct r.Code as RoomNo, ", var_108, -1, var_EC, var_94, var_8C)
  loc_154AA2B: var_F8 = var_BA & var_F0 & " FROM ((RoomMast R Left Join Booking B On B.OccRoom=R.Code)Left Join GuestFolio GF on GF.BookingDocid=B.DociD)Left Join RoomOcc RO on RO.Docid=GF.DocId Where (R.Type='RO' or r.Type is Null) Group By r.Code} RELATE RoomNo TO RoomNo) AS AA"
  loc_154AA34: unk_46946E.Execute var_F8, var_B8, var_B6
  loc_154AA3F: Set var_9C = var_EC
  loc_154AA57: CVarUnk
  loc_154AA5C: VerifyVarObj
  loc_154AA62: Set var_EC = Me.FGrid
  loc_154AA68: LateIdStAd
  loc_154AA9D: For var_110 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A0 = var_110 'Long
  loc_154AAB0:   For var_118 = 5 To &H22: var_A4 = var_118 'Long
  loc_154AAFA:     If (InStr(var_A4, CStr(Me.FGrid.TextMatrix)), "*", 0) <> 0) Then
  loc_154AB0E:       Me.FGrid.Row = var_A0
  loc_154AB27:       Me.FGrid.Col = var_A4
  loc_154AB43:       Me.FGrid.CellBackColor = global_116
  loc_154AB5E:       Me.FGrid.CellForeColor = 0
  loc_154AB76:       Me.FGrid.CellFontName = "Arial Narrow"
  loc_154AB90:       Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_154ABF7:       var_17C = CVar((Len(CStr(Me.FGrid.TextMatrix))) - 1)) 'Long
  loc_154AC13:       var_1BC = CVar(CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, var_17C))) 'String
  loc_154AC1B:       Set var_1D0 = Me.FGrid
  loc_154AC21:       LateIdCallSt
  loc_154AC47:     Else
  loc_154AC7B:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_154AC8F:         Me.FGrid.Row = var_A0
  loc_154ACA8:         Me.FGrid.Col = var_A4
  loc_154ACC4:         Me.FGrid.CellBackColor = global_112
  loc_154ACE0:         Me.FGrid.CellForeColor = global_124
  loc_154ACF8:         Me.FGrid.CellFontName = "Arial Narrow"
  loc_154AD12:         Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_154AD1A:       End If
  loc_154AD1A:     End If
  loc_154AD1D:   Next var_118 'Long
  loc_154AD25: Next var_110 'Long
  loc_154AD39: For var_1D8 = CLng(var_B6) To CLng(var_B8) Step CLng(var_BA): var_A0 = var_1D8 'Long
  loc_154AD47:   If (var_A0 = CLng(var_B6)) Then
  loc_154AD4D:     var_B4 = arg_C
  loc_154AD53:   Else
  loc_154AD6F:     var_B4 = CDate(DateAdd("d", CDbl(arg_10), CDate(var_B4)))
  loc_154AD79:   End If
  loc_154AD79:   var_1CC = 1
  loc_154AD8B:   var_258 = CVar((var_A0 - 4)) 'Long
  loc_154ADBC:   var_17C = (Format(CDate(var_B4), "DDD") + vbCr)
  loc_154ADE0:   var_1BC = Format(var_B4, "dd/MM")
  loc_154ADE8:   var_1E8 = (1 + var_1BC)
  loc_154ADFC:   var_208 = (var_1E8 + Space(5))
  loc_154AE28:   var_238 = (1 + Format(var_B4, "dd/MMM/yy"))
  loc_154AE2D:   var_278 = CVar(CStr(var_238)) 'String
  loc_154AE35:   Set var_EC = Me.FGrid
  loc_154AE3B:   LateIdCallSt
  loc_154AE6C:   var_D8 = CVar((var_A0 - 4)) 'Long
  loc_154AE71:   var_128 = 1
  loc_154AE7A:   var_16C = &H1F4
  loc_154AE87:   Set var_EC = Me.FGrid
  loc_154AE8D:   LateIdCallSt
  loc_154AE9B: Next var_1D8 'Long
  loc_154AECD: var_19C = MemVar_1F920EC
  loc_154AED5: Proc_6_7_F25D88(var_1BC)
  loc_154AEEA: var_208 = "'D'"
  loc_154AEFF: var_228 = IIf((MemVar_1F923AC = "A"), var_208, "D")
  loc_154AF39: Proc_6_7_F25D88(var_328, MemVar_1F920EC)
  loc_154AF9D: Proc_6_7_F25D88(var_498, MemVar_1F920EC)
  loc_154AFAD: Proc_6_7_F25D88(var_4E8, var_8C)
  loc_154AFD7: var_1E8 = "Select RoomNO as RoomCode,ChkinDate as FromDate ,dATEdiff(" & IIf((MemVar_1F923AC = "A"), "'D'", "D") & ",ChkInDate," & var_1BC 
  loc_154B000: var_308 = var_1E8 & ") as Days,GuestProf.Name as Reasons,dateadd(" & var_228 & ",dATEdiff(" & IIf((MemVar_1F923AC = "A"), "'D'", "D") & ",ChkInDate," 
  loc_154B00B: var_348 = "),chkindate) as TODate From RoomOcc left join GuestProf on GuestProf.Code=RoomOcc.GuestProf Where ChkOutDate is NULL And dateadd("
  loc_154B027: var_458 = var_308 & var_328 & var_348 & IIf((MemVar_1F923AC = "A"), "'D'", "D") & ",dATEdiff(" & IIf((MemVar_1F923AC = "A"), "'D'", "D") 
  loc_154B055: unk_46946E.Execute CStr(var_458 & ",ChkInDate," & var_498 & "),chkindate)>=" & var_4E8), var_518, -1
  loc_154B060: Set var_C8 = var_EC
  loc_154B0D4: If (var_C8.RecordCount > 0) Then
  loc_154B0D7:   ' Referenced from: 154B3F0
  loc_154B0E6:   If Not(var_C8.EOF) Then
  loc_154B110:     For var_528 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A0 = var_528 'Long
  loc_154B11D:       var_E8 = 0
  loc_154B17D:       If (CVar(CStr(Me.FGrid.TextMatrix))) = var_C8.Fields.Item(0).Value) Then
  loc_154B1C4:         var_C2 = CInt(DateDiff("d", var_8C, CVar(var_C8.Fields.Item("ToDate")), 1, 1))
  loc_154B1DD:         For var_530 = 0 To CLng(var_C2): var_A4 = var_530 'Long
  loc_154B21D:           If (CDate(var_C8.Fields.Item("FromDate").Value) >= var_8C) Then
  loc_154B26F:             var_15C = (DateDiff("d", var_8C, var_C8.Fields.Item(1).Value, 1, 1) + 1)
  loc_154B278:             var_17C = (CVar(CStr(Me.FGrid.TextMatrix))) + 4)
  loc_154B283:             var_18C = ("Select RoomNO as RoomCode,ChkinDate as FromDate ,dATEdiff(" & IIf((MemVar_1F923AC = "A"), "'D'", "D") + CVar(var_A4))
  loc_154B289:             var_19C = CVar(CLng("Select RoomNO as RoomCode,ChkinDate as FromDate ,dATEdiff(" & IIf((MemVar_1F923AC = "A"), "'D'", "D") & ",ChkInDate,")) 'Long
  loc_154B298:             Me.FGrid.Col = var_19C
  loc_154B2B6:           Else
  loc_154B2C3:             var_E8 = var_8C
  loc_154B2E3:             var_14C = (DateDiff("d", var_8C, var_E8, 1, 1) + 1)
  loc_154B2EC:             var_15C = (DateDiff("d", var_8C, var_C8.Fields.Item(1).Value, 1, 1) + 4)
  loc_154B2F7:             var_17C = (CVar(CStr(Me.FGrid.TextMatrix))) + CVar(var_A4))
  loc_154B2FD:             var_19C = CVar(CLng("Select RoomNO as RoomCode,ChkinDate as FromDate ,dATEdiff(" & IIf((MemVar_1F923AC = "A"), "'D'", "D"))) 'Long
  loc_154B30C:             Me.FGrid.Col = var_19C
  loc_154B31F:           End If
  loc_154B330:           Me.FGrid.Row = var_A0
  loc_154B34C:           Me.FGrid.CellBackColor = global_116
  loc_154B391:           Me.FGrid.Text = CVar(Proc_6_38_E68A98(var_C8.Fields.Item(3).Value, 0, var_C2, var_E8))
  loc_154B3B6:           Me.FGrid.CellFontName = "Arial Narrow"
  loc_154B3CA:           Set var_EC = Me.FGrid
  loc_154B3D0:           var_EC.CellFontSize = CVar(CDbl(8))
  loc_154B3DB:         Next var_530 'Long
  loc_154B3E0:       End If
  loc_154B3E3:     Next var_528 'Long
  loc_154B3EB:     var_C8.MoveNext
  loc_154B3F0:     GoTo loc_154B0D7
  loc_154B3F3:   End If
  loc_154B3F3: End If
  loc_154B420: var_19C = var_8C
  loc_154B428: Proc_6_7_F25D88(var_1BC)
  loc_154B438: Proc_6_7_F25D88(var_208, var_8C)
  loc_154B46B: var_1F8 = "Select RoomCode,FromDate ,dATEdiff(" & IIf((MemVar_1F923AC = "A"), "'D'", "D") & "," & var_1BC & ",Todate) as Days,Reasons,todate From RoomBlockOut Where Type='O' and ToDate>=" 
  loc_154B480: unk_46946E.Execute CStr(var_1F8 & var_208), var_228, -1
  loc_154B48B: Set var_C8 = var_EC
  loc_154B4C3: If (var_C8.RecordCount > 0) Then
  loc_154B4C6:   ' Referenced from: 154B7E2
  loc_154B4D5:   If Not(var_C8.EOF) Then
  loc_154B4FF:     For var_538 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A0 = var_538 'Long
  loc_154B50C:       var_E8 = 0
  loc_154B56C:       If (CVar(CStr(Me.FGrid.TextMatrix))) = var_C8.Fields.Item(0).Value) Then
  loc_154B5AD:         For var_540 = 0 To CLng(var_C8.Fields.Item(2).Value): var_A4 = var_540 'Long
  loc_154B5ED:           If (CDate(var_C8.Fields.Item("FromDate").Value) >= var_8C) Then
  loc_154B63F:             var_15C = (DateDiff("d", var_8C, var_C8.Fields.Item(1).Value, 1, 1) + 1)
  loc_154B648:             var_17C = (CVar(CStr(Me.FGrid.TextMatrix))) + 4)
  loc_154B653:             var_18C = ("Select RoomCode,FromDate ,dATEdiff(" & IIf((MemVar_1F923AC = "A"), "'D'", "D") + CVar(var_A4))
  loc_154B668:             Me.FGrid.Col = CVar(CLng("Select RoomCode,FromDate ,dATEdiff(" & IIf((MemVar_1F923AC = "A"), "'D'", "D") & ","))
  loc_154B686:           Else
  loc_154B6B3:             var_14C = (DateDiff("d", var_8C, var_8C, 1, 1) + 1)
  loc_154B6BC:             var_15C = (DateDiff("d", var_8C, var_C8.Fields.Item(1).Value, 1, 1) + 4)
  loc_154B6C7:             var_17C = (CVar(CStr(Me.FGrid.TextMatrix))) + CVar(var_A4))
  loc_154B6DC:             Me.FGrid.Col = CVar(CLng("Select RoomCode,FromDate ,dATEdiff(" & IIf((MemVar_1F923AC = "A"), "'D'", "D")))
  loc_154B6EF:           End If
  loc_154B700:           Me.FGrid.Row = var_A0
  loc_154B71C:           Me.FGrid.CellBackColor = global_120
  loc_154B737:           Me.FGrid.CellForeColor = &HFFFF
  loc_154B74F:           Me.FGrid.CellFontName = "Webdings"
  loc_154B786:           var_14C = ("@  " + var_C8.Fields.Item(3).Value)
  loc_154B799:           Me.FGrid.Text = CVar(CStr(DateDiff("d", var_8C, var_C8.Fields.Item(1).Value, 1, 1)))
  loc_154B7C2:           Me.FGrid.CellFontSize = CVar(CDbl(&H14))
  loc_154B7CD:         Next var_540 'Long
  loc_154B7D2:       End If
  loc_154B7D5:     Next var_538 'Long
  loc_154B7DD:     var_C8.MoveNext
  loc_154B7E2:     GoTo loc_154B4C6
  loc_154B7E5:   End If
  loc_154B7E5: End If
  loc_154B7E5: var_D8 = 0
  loc_154B7EE: var_128 = &H1F4
  loc_154B7FB: Set var_EC = Me.FGrid
  loc_154B801: LateIdCallSt
  loc_154B80C: var_D8 = 0
  loc_154B815: var_128 = 1
  loc_154B81E: var_16C = 0
  loc_154B82B: Set var_EC = Me.FGrid
  loc_154B831: LateIdCallSt
  loc_154B84F: Me.FGrid.FixedCols = 4
  loc_154B86A: Me.FGrid.Col = 5
  loc_154B885: Me.FGrid.Row = 1
  loc_154B88D: var_D8 = 0
  loc_154B896: var_128 = False
  loc_154B89F: Set var_EC = Me.FGrid
  loc_154B8A5: LateIdCallSt
  loc_154B8BE: Me.FGrid.Redraw = True
  loc_154B8CB: Set var_98 = Nothing
  loc_154B8D3: Set var_9C = Nothing
  loc_154B8D6: Exit Sub
End Sub

Public Sub Proc_112_37_F9D6E8(arg_C) 'F9D6E8
  'Data Table: 469468
  Dim var_B4 As Variant
  Dim var_F4 As String
  Dim var_124 As Date
  Dim var_164 As Variant
  Dim var_184 As Date
  Dim var_1B4 As String
  Dim var_1E4 As Date
  Dim var_20C As String
  loc_F9D5B9: For var_94 = 0 To &H1D: var_8A = var_94 'Integer
  loc_F9D5D4:   var_B4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9D5DB:   Proc_6_7_F25D88(var_C4, var_B4)
  loc_F9D5E7:   var_F4 = " and B.ArrDate+B.NoDays-1>="
  loc_F9D5FB:   var_124 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9D602:   Proc_6_7_F25D88(var_134, var_124)
  loc_F9D613:   var_164 = CVar(var_88 & "Max(Case When RO.ChkInDate is null Then Case When B.ArrDate<=") & var_C4 & var_F4 & var_134 & " Then B.GuestName Else '' End Else Case When Ro.ChkInDate<=" 
  loc_F9D622:   var_184 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9D629:   Proc_6_7_F25D88(var_194, var_184)
  loc_F9D635:   var_1B4 = " and RO.DEPDATE-1>="
  loc_F9D649:   var_1E4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9D650:   Proc_6_7_F25D88(var_1F4, var_1E4)
  loc_F9D668:   var_20C = " Then case RO.tYPE When 'O' then ''Else B.GuestName +'#*' end Else '' End End ) as Day" & CStr(var_8A)
  loc_F9D677:   var_88 = CStr(var_164 & var_194 & var_1B4 & var_1F4 & CVar(var_20C & ","))
  loc_F9D6AB: Next var_94 'Integer
  loc_F9D6BA: var_B4 = CVar((Len(var_88) - 1)) 'Long
  loc_F9D6D7: var_88 = CStr(Mid(var_88, 1, var_B4))
  loc_F9D6E1: Proc_112_37_F9D6E8 = 
End Sub

Public Sub Proc_112_38_16B4C44
  'Data Table: 469468
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
  loc_16B36E8: On Error Goto loc_16B4C3E
  loc_16B36ED: Close 1
  loc_16B36F6: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16B3728: var_A0 = Replace(CStr(Space(&H82)), " ", MemVar_1F923CC, 1, -1, 0)
  loc_16B3733: var_88 = 1
  loc_16B374D: If (Me.RecordCount > 0) Then
  loc_16B3756:   Me.MoveFirst
  loc_16B375B:   ' Referenced from: 16B4B84
  loc_16B376D:   If Not(Me.EOF) Then
  loc_16B3776:     If (var_86 = 0) Then
  loc_16B3789:       var_86 = Proc_6_129_12B6C1C(var_88, var_86)
  loc_16B3794:       var_100 = "B"
  loc_16B37B0:       Print 1, Proc_6_128_10272A8(global_88, var_100, &H50)
  loc_16B37CD:       Set var_114 = Me.Txt
  loc_16B37D3:       Call 0.Method_Proc_112_38_16B4C440 (CInt(0), var_118, var_100)
  loc_16B37DB:       var_86 = var_118.Text
  loc_16B37EC:       Print 1, "From Date " & var_100
  loc_16B3805:       Print 1, "* = OUT OF ORDER"
  loc_16B3821:       var_128 = (Chr(&HF) + CVar(var_A0))
  loc_16B3827:       Print 1, var_128
  loc_16B383B:       For var_12C = 1 To &H17: var_A4 = var_12C 'Integer
  loc_16B384C:         Set var_114 = Me.Txt
  loc_16B3852:         Call 0.Method_Proc_112_38_16B4C440 (CInt(0), var_118, 1)
  loc_16B386C:         var_128 = DateAdd("d", CDbl((var_A4 - 1)), CVar(var_118))
  loc_16B3879:         global_80 = CDate(var_128)
  loc_16B38C7:         var_BC(CLng(var_A4)) = CStr(Ucase(Format(global_80, "DDD")))
  loc_16B3914:         var_14C = Space((2 - Len(CStr(Day(global_80)))))
  loc_16B391C:         var_16C = (CVar(CStr(Day(global_80))) + Ucase(Format(global_80, "DDD")))
  loc_16B394E:         var_1BC = Space((2 - Len(CStr(Month(global_80)))))
  loc_16B3971:         var_1FC = (var_1BC + CVar(CStr(Month(global_80))))
  loc_16B3984:         var_D8(CLng(var_A4)) = CStr(var_16C & vbNullString & var_1FC)
  loc_16B39B4:       Next var_12C 'Integer
  loc_16B3BC8:       var_128 = (Space(&HA) + "|")
  loc_16B3BD2:       var_15C = (Day(global_80) + CVar(Proc_6_45_EAD428(var_BC(1))))
  loc_16B3BDB:       var_16C = (CVar(CStr(Day(global_80))) + "|")
  loc_16B3BE5:       var_1AC = (var_16C + CVar(Proc_6_45_EAD428(var_BC(2), 4)))
  loc_16B3BEE:       var_1BC = (Month(global_80) + "|")
  loc_16B3BF8:       var_1EC = (var_1BC + CVar(Proc_6_45_EAD428(var_BC(3), 4)))
  loc_16B3C01:       var_1FC = (CVar(CStr(Month(global_80))) + "|")
  loc_16B3C0B:       var_224 = (var_1FC + CVar(Proc_6_45_EAD428(var_BC(4), 4)))
  loc_16B3C14:       var_234 = (var_224 + "|")
  loc_16B3C1E:       var_258 = (var_234 + CVar(Proc_6_45_EAD428(var_BC(5), 4)))
  loc_16B3C27:       var_278 = (var_258 + "|")
  loc_16B3C31:       var_29C = (var_278 + CVar(Proc_6_45_EAD428(var_BC(6), 4)))
  loc_16B3C3A:       var_2BC = (var_29C + "|")
  loc_16B3C44:       var_2E0 = (var_2BC + CVar(Proc_6_45_EAD428(var_BC(7), 4)))
  loc_16B3C4D:       var_300 = (var_2E0 + "|")
  loc_16B3C57:       var_324 = (var_300 + CVar(Proc_6_45_EAD428(var_BC(8), 4)))
  loc_16B3C60:       var_344 = (var_324 + "|")
  loc_16B3C6A:       var_368 = (var_344 + CVar(Proc_6_45_EAD428(var_BC(9), 4)))
  loc_16B3C73:       var_388 = (var_368 + "|")
  loc_16B3C7D:       var_3AC = (var_388 + CVar(Proc_6_45_EAD428(var_BC(&HA), 4)))
  loc_16B3C86:       var_3CC = (var_3AC + "|")
  loc_16B3C90:       var_3F0 = (var_3CC + CVar(Proc_6_45_EAD428(var_BC(&HB), 4)))
  loc_16B3C99:       var_410 = (var_3F0 + "|")
  loc_16B3CA3:       var_434 = (var_410 + CVar(Proc_6_45_EAD428(var_BC(&HC), 4)))
  loc_16B3CAC:       var_454 = (var_434 + "|")
  loc_16B3CB6:       var_478 = (var_454 + CVar(Proc_6_45_EAD428(var_BC(&HD), 4)))
  loc_16B3CBF:       var_498 = (var_478 + "|")
  loc_16B3CC9:       var_4BC = (var_498 + CVar(Proc_6_45_EAD428(var_BC(&HE), 4)))
  loc_16B3CD2:       var_4DC = (var_4BC + "|")
  loc_16B3CDC:       var_500 = (var_4DC + CVar(Proc_6_45_EAD428(var_BC(&HF), 4)))
  loc_16B3CE5:       var_520 = (var_500 + "|")
  loc_16B3CEF:       var_544 = (var_520 + CVar(Proc_6_45_EAD428(var_BC(&H10), 4)))
  loc_16B3CF8:       var_564 = (var_544 + "|")
  loc_16B3D02:       var_588 = (var_564 + CVar(Proc_6_45_EAD428(var_BC(&H11), 4)))
  loc_16B3D0B:       var_5A8 = (var_588 + "|")
  loc_16B3D15:       var_5CC = (var_5A8 + CVar(Proc_6_45_EAD428(var_BC(&H12), 4)))
  loc_16B3D1E:       var_5EC = (var_5CC + "|")
  loc_16B3D28:       var_610 = (var_5EC + CVar(Proc_6_45_EAD428(var_BC(&H13), 4)))
  loc_16B3D31:       var_630 = (var_610 + "|")
  loc_16B3D3B:       var_654 = (var_630 + CVar(Proc_6_45_EAD428(var_BC(&H14), 4)))
  loc_16B3D44:       var_674 = (var_654 + "|")
  loc_16B3D4E:       var_698 = (var_674 + CVar(Proc_6_45_EAD428(var_BC(&H15), 4)))
  loc_16B3D57:       var_6B8 = (var_698 + "|")
  loc_16B3D61:       var_6DC = (var_6B8 + CVar(Proc_6_45_EAD428(var_BC(&H16), 4)))
  loc_16B3D6A:       var_6FC = (var_6DC + "|")
  loc_16B3D74:       var_720 = (var_6FC + CVar(Proc_6_45_EAD428(var_BC(&H17), 4)))
  loc_16B3D7D:       var_740 = (var_720 + "|")
  loc_16B3D83:       Print 1, var_740
  loc_16B3E60:       var_128 = ("TYPE" + Space(6))
  loc_16B3E69:       var_14C = (Day(global_80) + "|")
  loc_16B3E79:       var_15C = (CVar(Proc_6_45_EAD428(var_BC(1))) + CVar(var_D8(1)))
  loc_16B3E82:       var_16C = (CVar(CStr(Day(global_80))) + "|")
  loc_16B3E92:       var_18C = (var_16C + CVar(var_D8(2)))
  loc_16B3E9B:       var_1AC = (CVar(Proc_6_45_EAD428(var_BC(2), 4)) + "|")
  loc_16B3EAB:       var_1BC = (Month(global_80) + CVar(var_D8(3)))
  loc_16B3EB4:       var_1DC = (var_1BC + "|")
  loc_16B3EC4:       var_1EC = (CVar(Proc_6_45_EAD428(var_BC(3), 4)) + CVar(var_D8(4)))
  loc_16B3ECD:       var_1FC = (CVar(CStr(Month(global_80))) + "|")
  loc_16B3EDD:       var_20C = (var_1FC + CVar(var_D8(5)))
  loc_16B3EE6:       var_224 = (CVar(Proc_6_45_EAD428(var_BC(4), 4)) + "|")
  loc_16B3EF6:       var_234 = (var_224 + CVar(var_D8(6)))
  loc_16B3EFF:       var_248 = (var_234 + "|")
  loc_16B3F0F:       var_258 = (CVar(Proc_6_45_EAD428(var_BC(5), 4)) + CVar(var_D8(7)))
  loc_16B3F18:       var_278 = (var_258 + "|")
  loc_16B3F28:       var_28C = (var_278 + CVar(var_D8(8)))
  loc_16B3F31:       var_29C = (CVar(Proc_6_45_EAD428(var_BC(6), 4)) + "|")
  loc_16B3F41:       var_2BC = (var_29C + CVar(var_D8(9)))
  loc_16B3F4A:       var_2D0 = (var_2BC + "|")
  loc_16B3F5A:       var_2E0 = (CVar(Proc_6_45_EAD428(var_BC(7), 4)) + CVar(var_D8(&HA)))
  loc_16B3F63:       var_300 = (var_2E0 + "|")
  loc_16B3F73:       var_314 = (var_300 + CVar(var_D8(&HB)))
  loc_16B3F7C:       var_324 = (CVar(Proc_6_45_EAD428(var_BC(8), 4)) + "|")
  loc_16B3F8C:       var_344 = (var_324 + CVar(var_D8(&HC)))
  loc_16B3F95:       var_358 = (var_344 + "|")
  loc_16B3FA5:       var_368 = (CVar(Proc_6_45_EAD428(var_BC(9), 4)) + CVar(var_D8(&HD)))
  loc_16B3FAE:       var_388 = (var_368 + "|")
  loc_16B3FBE:       var_39C = (var_388 + CVar(var_D8(&HE)))
  loc_16B3FC7:       var_3AC = (CVar(Proc_6_45_EAD428(var_BC(&HA), 4)) + "|")
  loc_16B3FD7:       var_3CC = (var_3AC + CVar(var_D8(&HF)))
  loc_16B3FE0:       var_3E0 = (var_3CC + "|")
  loc_16B3FF0:       var_3F0 = (CVar(Proc_6_45_EAD428(var_BC(&HB), 4)) + CVar(var_D8(&H10)))
  loc_16B3FF9:       var_410 = (var_3F0 + "|")
  loc_16B4009:       var_424 = (var_410 + CVar(var_D8(&H11)))
  loc_16B4012:       var_434 = (CVar(Proc_6_45_EAD428(var_BC(&HC), 4)) + "|")
  loc_16B4022:       var_454 = (var_434 + CVar(var_D8(&H12)))
  loc_16B402B:       var_468 = (var_454 + "|")
  loc_16B403B:       var_478 = (CVar(Proc_6_45_EAD428(var_BC(&HD), 4)) + CVar(var_D8(&H13)))
  loc_16B4044:       var_498 = (var_478 + "|")
  loc_16B4054:       var_4AC = (var_498 + CVar(var_D8(&H14)))
  loc_16B405D:       var_4BC = (CVar(Proc_6_45_EAD428(var_BC(&HE), 4)) + "|")
  loc_16B406D:       var_4DC = (var_4BC + CVar(var_D8(&H15)))
  loc_16B4076:       var_4F0 = (var_4DC + "|")
  loc_16B4086:       var_500 = (CVar(Proc_6_45_EAD428(var_BC(&HF), 4)) + CVar(var_D8(&H16)))
  loc_16B408F:       var_520 = (var_500 + "|")
  loc_16B409F:       var_534 = (var_520 + CVar(var_D8(&H17)))
  loc_16B40A8:       var_544 = (CVar(Proc_6_45_EAD428(var_BC(&H10), 4)) + "|")
  loc_16B40AE:       Print 1, var_544
  loc_16B411E:       Print 1, var_A0
  loc_16B4124:     End If
  loc_16B412A:     var_86 = (var_86 + 7)
  loc_16B4152:     For var_914 = 3 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_914 'Integer
  loc_16B415E:       If (var_A2 = 3) Then
  loc_16B4161:         GoTo loc_16B4B7C
  loc_16B4164:       End If
  loc_16B47E3:       var_748 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomNo")), 3), 5) & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCat")), var_86), 4)
  loc_16B4805:       var_768 = var_748 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day5"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day6"))), 4)
  loc_16B4827:       var_788 = var_768 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day7"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day8"))), 4)
  loc_16B4849:       var_964 = var_788 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day9"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day10"))), 4)
  loc_16B486B:       var_994 = var_964 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day11"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day12"))), 4)
  loc_16B488D:       var_9C4 = var_994 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day13"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day14"))), 4)
  loc_16B48AF:       var_9F4 = var_9C4 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day15"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day16"))), 4)
  loc_16B48DE:       var_A34 = Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day18"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day19"))), 4)
  loc_16B4900:       var_A64 = var_A34 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day20"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day21"))), 4)
  loc_16B4922:       var_A94 = var_A64 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day22"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day23"))), 4)
  loc_16B4944:       var_AC4 = var_A94 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day24"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day25"))), 4)
  loc_16B4966:       var_AFC = var_AC4 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day26"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day27"))), 4)
  loc_16B4976:       Print 1, var_9F4 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day17"))), 4) & "|" & var_AFC & "|"
  loc_16B4B17:       var_86 = (var_86 + 1)
  loc_16B4B20:       If (var_86 > &H3C) Then
  loc_16B4B28:         Print 1, var_A0
  loc_16B4B30:         var_86 = 0
  loc_16B4B39:         var_88 = (var_88 + 1)
  loc_16B4B4E:         Print 1, Chr(&HC)
  loc_16B4B57:       End If
  loc_16B4B5D:       Me.MoveNext
  loc_16B4B76:       If (Me.EOF = &HFF) Then
  loc_16B4B79:         GoTo loc_16B4B84
  loc_16B4B7C:         ' Referenced from: 16B4161
  loc_16B4B7C:       End If
  loc_16B4B7F:     Next var_914 'Integer
  loc_16B4B84:     ' Referenced from: 16B4B79
  loc_16B4B84:     GoTo loc_16B375B
  loc_16B4B87:   End If
  loc_16B4B87: End If
  loc_16B4B8C: Print 1, var_A0
  loc_16B4BB2: var_14C = (Chr(&H12) + Chr(&HC))
  loc_16B4BB8: Print 1, CVar(Me.Fields.Item("Day5"))
  loc_16B4BC9: Close 1
  loc_16B4BD2: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16B4BE2: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_16B4BED: Close 1
  loc_16B4BF7: If (MemVar_1F923B8 = "Y") Then
  loc_16B4C13:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16B4C1D: Else
  loc_16B4C36:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16B4C3D: End If
  loc_16B4C3D: Exit Sub
  loc_16B4C3E: ' Referenced from: 16B36E8
  loc_16B4C3E: Proc_6_60_E62BC4()
  loc_16B4C43: Exit Sub
End Sub

Public Sub Proc_112_39_F88DB4(arg_C) 'F88DB4
  'Data Table: 469468
  Dim var_90 As Recordset15
  loc_F88C5D: Set var_90 = arg_C 
  loc_F88C85: var_90.Fields.Append "mLine", &HC8, &HA
  loc_F88CB1: var_90.Fields.Append "RoomNo", &HC8, 5
  loc_F88CDD: var_90.Fields.Append "RoomCat", &HC8, &H19
  loc_F88CEC: For var_A8 = 5 To &H1B: var_8A = var_A8 'Integer
  loc_F88D22:   var_90.Fields.Append "Day" & CStr(var_8A), &HC8, &HF
  loc_F88D34: Next var_A8 'Integer
  loc_F88D5D: var_90.Fields.Append "Mark", &HC8, 1
  loc_F88D6D: var_90.CursorType = 3
  loc_F88D7A: var_90.LockType = 3
  loc_F88D99: var_90.Open var_A4, var_C0, -1
  loc_F88DA0: Set var_90 = Nothing 
  loc_F88DA7: Set var_88 = arg_C 
  loc_F88DAB: Proc_112_39_F88DB4 = -1
End Sub
