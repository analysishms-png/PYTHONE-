VERSION 5.00
Begin VB.Form Inbox
  Caption = "Inbox"
  BackColor = &HE0E0E0&
  ForeColor = &H404040&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  BorderStyle = 1 'Fixed Single
  Icon = "Inbox.frx":0
  LinkTopic = "form4"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 615
  ClientWidth = 11085
  ClientHeight = 8040
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
  Begin CheckBox BtnDelete
    Caption = "Delete"
    Index = 0
    BackColor = &H4000&
    ForeColor = &HFFFF&
    Left = 150
    Top = 7080
    Width = 1575
    Height = 825
    TabIndex = 24
    Appearance = 0 'Flat
    Picture = "Inbox.frx":442
    Style = 1
  End
  Begin CheckBox BtnCompose
    Caption = "Compose"
    BackColor = &H4000&
    ForeColor = &HFFFF&
    Left = 9120
    Top = 7080
    Width = 1620
    Height = 825
    Visible = 0   'False
    TabIndex = 23
    Appearance = 0 'Flat
    Picture = "Inbox.frx":14C4
    Style = 1
  End
  Begin CheckBox BtnExit
    Caption = "Exit"
    BackColor = &H4000&
    ForeColor = &HFFFF&
    Left = 1800
    Top = 7080
    Width = 1620
    Height = 825
    TabIndex = 22
    Appearance = 0 'Flat
    Picture = "Inbox.frx":2546
    Style = 1
  End
  Begin Frame mnuFrame
    Caption = "Frame2"
    Left = 5130
    Top = 1080
    Width = 1905
    Height = 1455
    TabIndex = 11
    BorderStyle = 0 'None
    Begin Line Line2
      BorderColor = &HC0C0C0&
      X1 = 330
      Y1 = 15
      X2 = 330
      Y2 = 1695
    End
    Begin Line Line1
      Index = 3
      BorderColor = &H808080&
      X1 = 0
      Y1 = 1140
      X2 = 1890
      Y2 = 1140
    End
    Begin Shape Shape2
      Left = 0
      Top = 0
      Width = 1890
      Height = 1455
    End
    Begin Line Line1
      Index = 2
      BorderColor = &H808080&
      X1 = 0
      Y1 = 855
      X2 = 1890
      Y2 = 855
    End
    Begin Line Line1
      Index = 1
      BorderColor = &H808080&
      X1 = 0
      Y1 = 570
      X2 = 1890
      Y2 = 570
    End
    Begin Line Line1
      Index = 0
      BorderColor = &H808080&
      X1 = 15
      Y1 = 285
      X2 = 1905
      Y2 = 285
    End
    Begin Label lblMenu0
      Caption = "l"
      Index = 4
      BackColor = &HC0C0C0&
      ForeColor = &HFF0000&
      Left = 0
      Top = 1140
      Width = 345
      Height = 300
      TabIndex = 21
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu0
      Caption = "n"
      Index = 3
      BackColor = &HC0C0C0&
      ForeColor = &HFF&
      Left = 0
      Top = 855
      Width = 345
      Height = 300
      TabIndex = 20
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu0
      Caption = "O"
      Index = 2
      BackColor = &HC0C0C0&
      ForeColor = &HFF00&
      Left = 0
      Top = 570
      Width = 345
      Height = 300
      TabIndex = 19
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu0
      Caption = "*"
      Index = 1
      BackColor = &HC0C0C0&
      ForeColor = &HFF&
      Left = 0
      Top = 285
      Width = 345
      Height = 300
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu0
      Caption = "+"
      Index = 0
      BackColor = &HC0C0C0&
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 345
      Height = 300
      TabIndex = 17
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu
      Caption = "  Clo&se"
      Index = 4
      BackColor = &HC0C0C0&
      ForeColor = &H80000008&
      Left = 315
      Top = 1140
      Width = 1590
      Height = 300
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Comic Sans MS"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu
      Caption = "  &Delete"
      Index = 3
      BackColor = &HC0C0C0&
      ForeColor = &H80000008&
      Left = 315
      Top = 855
      Width = 1590
      Height = 300
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Comic Sans MS"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu
      Caption = "  Mark as &Flag"
      Index = 2
      BackColor = &HC0C0C0&
      ForeColor = &H80000008&
      Left = 315
      Top = 570
      Width = 1590
      Height = 300
      TabIndex = 14
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Comic Sans MS"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu
      Caption = "  Mark as &Unread"
      Index = 1
      BackColor = &HC0C0C0&
      ForeColor = &H80000008&
      Left = 315
      Top = 285
      Width = 1590
      Height = 300
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Comic Sans MS"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblMenu
      Caption = "  Mark as &Read"
      Index = 0
      BackColor = &HC0C0C0&
      ForeColor = &H80000008&
      Left = 315
      Top = 0
      Width = 1590
      Height = 300
      TabIndex = 12
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Comic Sans MS"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin CheckBox Check1
    BackColor = &H808000&
    Left = 90
    Top = 15
    Width = 285
    Height = 240
    TabIndex = 10
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
  Begin MSHFlexGrid FGrid
    Left = 30
    Top = 15
    Width = 10740
    Height = 5910
    TabIndex = 0
  End
  Begin Frame Frame1
    Caption = "Frame1"
    BackColor = &HF5F0E2&
    Left = 0
    Top = 0
    Width = 10920
    Height = 6735
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    Begin CheckBox BtnClose
      Caption = "Close"
      BackColor = &HC0C000&
      ForeColor = &HC00000&
      Left = 9000
      Top = 6030
      Width = 1650
      Height = 585
      Visible = 0   'False
      TabIndex = 25
      Appearance = 0 'Flat
      Style = 1
    End
    Begin TextBox Txt
      Index = 0
      Left = 960
      Top = 45
      Width = 9660
      Height = 240
      TabIndex = 6
      BorderStyle = 0 'None
      MaxLength = 50
      Locked = -1  'True
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
      Left = 150
      Top = 1125
      Width = 10485
      Height = 4815
      Enabled = 0   'False
      TabIndex = 9
      BorderStyle = 0 'None
      MultiLine = -1  'True
      Locked = -1  'True
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
      Left = 960
      Top = 555
      Width = 9660
      Height = 240
      TabIndex = 8
      BorderStyle = 0 'None
      MaxLength = 50
      Locked = -1  'True
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
      Left = 960
      Top = 300
      Width = 9660
      Height = 240
      Enabled = 0   'False
      TabIndex = 7
      BorderStyle = 0 'None
      MaxLength = 50
      Locked = -1  'True
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
    Begin Label Label1
      Caption = "From"
      Index = 3
      ForeColor = &H0&
      Left = 60
      Top = 45
      Width = 450
      Height = 210
      TabIndex = 5
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
      Caption = "Message"
      Index = 5
      ForeColor = &H0&
      Left = 135
      Top = 810
      Width = 1050
      Height = 285
      TabIndex = 4
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "To"
      Index = 4
      ForeColor = &H0&
      Left = 60
      Top = 510
      Width = 225
      Height = 210
      TabIndex = 3
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
      Caption = "Subject"
      Index = 1
      ForeColor = &H0&
      Left = 60
      Top = 270
      Width = 705
      Height = 210
      TabIndex = 2
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
  End
End

Attribute VB_Name = "Inbox"


Private Sub BtnCompose_Click() 'E6C558
  'Data Table: 43A448
  loc_E6C517: If (Me.BtnCompose.Value = 1) Then
  loc_E6C526:   Me.BtnCompose.Value = 0
  loc_E6C53E:   Call 0.Method_arg_2B0 (1)
  loc_E6C551:   Outbox.ShowCompose = CByte(0)
  loc_E6C556: End If
  loc_E6C556: Exit Sub
End Sub

Private Sub btnExit_Click() 'E5C190
  'Data Table: 43A448
  loc_E5C163: If (Me.BtnExit.Value = 1) Then
  loc_E5C172:   Me.BtnExit.Value = 0
  loc_E5C187:   Me.Global.Unload Me
  loc_E5C18F: End If
  loc_E5C18F: Exit Sub
End Sub

Private Sub Check1_Click() 'F309B4
  'Data Table: 43A448
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F8 As String
  loc_F308B3: If (Me.Check1.Value = 1) Then
  loc_F308DB:   For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F308E5:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_F308ED:     var_D4 = CVar(CLng(2)) 'Long
  loc_F30918:     If (CStr(Me.FGrid.TextMatrix)) = " ") Then
  loc_F3091F:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_F30927:       var_D4 = CVar(CLng(1)) 'Long
  loc_F3092C:       var_F8 = "ü"
  loc_F30936:       Set var_8C = Me.FGrid
  loc_F3093C:       LateIdCallSt
  loc_F30947:     End If
  loc_F3094A:   Next var_A4 'Integer
  loc_F30952: Else
  loc_F30977:   For var_10C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_86 = var_10C 'Integer
  loc_F30981:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_F30989:     var_D4 = CVar(CLng(1)) 'Long
  loc_F3098E:     var_F8 = " "
  loc_F30998:     Set var_8C = Me.FGrid
  loc_F3099E:     LateIdCallSt
  loc_F309AC:   Next var_10C 'Integer
  loc_F309B1: End If
  loc_F309B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6A648
  'Data Table: 43A448
  loc_E6A611: If (CLng(Me.FGrid.ColSel) <> CLng(2)) Then
  loc_E6A62F:   If (Me.mnuFrame.Visible = &HFF) Then
  loc_E6A63E:     Me.mnuFrame.Visible = False
  loc_E6A646:   End If
  loc_E6A646: End If
  loc_E6A646: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B '1010D64
  'Data Table: 43A448
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_2DC As Double
  Dim var_1E4 As Variant
  Dim unk_43A466 As Connection15
  loc_1010BAB: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1010BE6: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1010BF3:   var_98 = Me.FGrid.Row
  loc_1010C00:   Call Proc_300_19_1130CD0(CInt(CLng(var_98)), CVar(CLng(3)))
  loc_1010C0B: End If
  loc_1010C16: Proc_6_7_F25D88(var_98, MemVar_1F920EC)
  loc_1010C56: var_184 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1010C5E: var_1A4 = CVar(CLng(6)) 'Long
  loc_1010C6D: var_1C4 = Me.FGrid.TextMatrix)
  loc_1010CB6: var_2DC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1010CF2: var_1E4 = "Update Messaging Set ReadYN='Y',ReadDate=" & var_98 & ",ReadTime='" & Format(Now, "hh:mm") & "' Where VType='" & CVar(CStr(var_1C4)) 
  loc_1010D1D: unk_43A466.Execute CStr(var_1E4 & "' And VNo=" & CVar(var_2DC) & vbNullString), var_2D0, -1
  loc_1010D5D: Call Proc_300_18_13616BC(var_2D4, var_2DC, CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)), var_1C4)
  loc_1010D62: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_E(Index As Integer) '1110C48
  'Data Table: 43A448
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_F0 As String
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_114 As Variant
  Dim var_1B4 As Variant
  Dim var_1C8 As MSHFlexGrid
  Dim var_1D0 As Frame
  loc_1110931: var_A8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_1110989: If ((CVar(CLng(2)) And (CStr(Me.FGrid.TextMatrix)) = " ")) And (CLng(Me.FGrid.ColSel) = CLng(1))) Then
  loc_111099E:   Me.FGrid.ColSel = CVar(CLng(1))
  loc_11109B6:   Me.FGrid.CellFontName = "wingdings"
  loc_11109D0:   Me.FGrid.CellFontSize = CVar(CDbl(&HB))
  loc_11109EB:   var_A8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_11109F3:   var_C8 = CVar(CLng(1)) 'Long
  loc_1110A21:   var_174 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_1110A29:   var_194 = CVar(CLng(1)) 'Long
  loc_1110A60:   var_1B4 = CVar(CStr(IIf((CStr(Me.FGrid.TextMatrix)) = " "), "ü", " "))) 'String
  loc_1110A68:   Set var_1C8 = Me.FGrid
  loc_1110A6E:   LateIdCallSt
  loc_1110A9A: Else
  loc_1110AC2:   If ((CLng(Index) = 2) And (CLng(Me.FGrid.ColSel) = CLng(2))) Then
  loc_1110AD8:     var_A8 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_1110AE0:     var_C8 = CVar(CLng(3)) 'Long
  loc_1110AFA:     var_F0 = CStr(Me.FGrid.TextMatrix))
  loc_1110B15:     var_114 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_1110B5D:     If (CVar(CLng(4)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_1110B60:       Exit Sub
  loc_1110B61:     End If
  loc_1110B65:     Set var_1D0 = Me.mnuFrame
  loc_1110BB7:     var_1D0.Top = (((CDbl(Me.FGrid.Top) + CDbl(CLng(Me.FGrid.CellTop))) + CDbl(CLng(Me.FGrid.CellHeight))) - CDbl(&H64))
  loc_1110C1D:     var_1D0.Left = (((CDbl(Me.FGrid.Left) + CDbl(CLng(Me.FGrid.CellLeft))) + CDbl(CLng(Me.FGrid.CellWidth))) - CDbl(&H3C))
  loc_1110C39:     var_1D0.Visible = True
  loc_1110C40:     Set var_1D0 = Nothing 
  loc_1110C44:   End If
  loc_1110C44: End If
  loc_1110C44: Exit Sub
End Sub

Private Sub BtnDelete_Click(Index As Integer) '121AA28
  'Data Table: 43A448
  Dim var_90 As Variant
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_11C As String
  Dim var_D4 As Variant
  Dim var_220 As Variant
  Dim var_240 As Variant
  Dim var_2AC As Double
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_1B0 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  Dim unk_43A466 As Connection15
  Dim var_1E0 As Variant
  Dim var_2A0 As Variant
  loc_121A599: Set var_8C = Me.BtnDelete
  loc_121A59F: Call 0.Method_BtnDelete_Click0 (Index, var_90)
  loc_121A5B9: If (var_90.Value = 1) Then
  loc_121A5C8:   Set var_8C = Me.BtnDelete
  loc_121A5CE:   Call 0.Method_BtnDelete_Click0 (Index, var_90)
  loc_121A5D6:   var_90.Value = 0
  loc_121A5FD:   If (Me.Check1.Value = 1) Then
  loc_121A637:     If (MsgBox("Are you sure delete all read message?", &H114, "Delete...", var_F4, var_114) = 7) Then
  loc_121A63A:       Exit Sub
  loc_121A63B:     End If
  loc_121A63B:   End If
  loc_121A641:   If (Index = 0) Then
  loc_121A669:     For var_118 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_118 'Integer
  loc_121A673:       var_A4 = CVar(CLng(var_86)) 'Long
  loc_121A67B:       var_E4 = CVar(CLng(2)) 'Long
  loc_121A6B8:       var_D4 = Me.FGrid.TextMatrix)
  loc_121A6E1:       If (CVar(CLng(1)) And (CStr(var_D4) = "ü")) Then
  loc_121A6F2:         Proc_6_7_F25D88(var_D4, Now, CVar(CLng(var_86)), (CStr(Me.FGrid.TextMatrix)) = " "))
  loc_121A74B:         Proc_6_17_EAA2B0(var_1E0, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(var_86)), 1)
  loc_121A754:         var_220 = CVar(CLng(var_86)) 'Long
  loc_121A75C:         var_240 = CVar(CLng(7)) 'Long
  loc_121A7AF:         var_1B0 = "Update Messaging Set Cleared='Y',ClearedDate=" & var_D4 & ",ClearedTime='" & Format(Now, "hh:mm") & "' Where VType=" 
  loc_121A7B6:         var_1F0 = var_1B0 & var_1E0 
  loc_121A7D8:         unk_43A466.Execute CStr(var_1F0 & " And VNo=" & CVar(Val(CStr(Me.FGrid.TextMatrix))))), var_2A0, -1
  loc_121A812:       End If
  loc_121A815:     Next var_118 'Integer
  loc_121A81D:   Else
  loc_121A830:     var_A4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_121A838:     var_E4 = CVar(CLng(2)) 'Long
  loc_121A847:     var_D4 = Me.FGrid.TextMatrix)
  loc_121A852:     var_11C = CStr(var_D4)
  loc_121A8B5:     If (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = "ü")) Then
  loc_121A8C6:       Proc_6_7_F25D88(var_D4, Now, CVar(CLng(Me.FGrid.RowSel)))
  loc_121A92E:       Proc_6_17_EAA2B0(var_1F0, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(Me.FGrid.RowSel)), 1)
  loc_121A946:       var_220 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_121A94E:       var_240 = CVar(CLng(7)) 'Long
  loc_121A970:       var_2AC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_121A9A8:       var_210 = "Update Messaging Set Cleared='Y',ClearedDate=" & var_D4 & ",ClearedTime='" & Format(Now, "hh:mm") & "' Where VType=" & var_1F0 
  loc_121A9CA:       unk_43A466.Execute CStr(var_210 & " And VNo=" & CVar(var_2AC)), var_2D0, -1
  loc_121AA0C:     End If
  loc_121AA0C:   End If
  loc_121AA0C:   Call Proc_300_18_13616BC(var_2D4, var_2AC, var_240, var_220)
  loc_121AA1D:   Me.Frame1.Visible = False
  loc_121AA25: End If
  loc_121AA25: Exit Sub
End Sub

Private Sub BtnClose_Click() 'E5C288
  'Data Table: 43A448
  loc_E5C25B: If (Me.BtnClose.Value = 1) Then
  loc_E5C26A:   Me.BtnClose.Value = 0
  loc_E5C27E:   Me.Frame1.Visible = False
  loc_E5C286: End If
  loc_E5C286: Exit Sub
End Sub

Private Sub lblMenu0_Click() 'E0233C
  'Data Table: 43A448
  loc_E02333: Call lblMenu_Click()
  loc_E02338: Exit Sub
End Sub

Private Sub lblMenu0_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'E209D0
  'Data Table: 43A448
  loc_E209C7: Call lblMenu_MouseMove(Button, 0, 0, CDbl(0))
  loc_E209CC: Exit Sub
End Sub

Private Sub lblMenu_Click(Index As Integer) '13F3C90
  'Data Table: 43A448
  Dim var_8C As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_102 As Integer
  Dim var_100 As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_280 As String
  Dim var_2D0 As Double
  Dim var_134 As Variant
  Dim var_184 As Variant
  Dim var_204 As Variant
  Dim unk_43A466 As Connection15
  Dim var_114 As Variant
  loc_13F32B2: If (Index <= 3) Then
  loc_13F32C8:   var_AC = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_13F32D0:   var_CC = CVar(CLng(1)) 'Long
  loc_13F32D5:   var_EC = "ü"
  loc_13F32DF:   Set var_100 = Me.FGrid
  loc_13F32E5:   LateIdCallSt
  loc_13F32F7: End If
  loc_13F32FA: var_102 = Index
  loc_13F3303: If (var_102 = 0) Then
  loc_13F3319:   var_AC = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_13F3330:   Set var_100 = Me.FGrid
  loc_13F3336:   LateIdCallSt
  loc_13F3364:   Set var_100 = Me.FGrid
  loc_13F336A:   var_100.Row = CVar(CLng(Me.FGrid.RowSel))
  loc_13F338B:   Me.FGrid.Col = CVar(CLng(3))
  loc_13F33A2:   Me.FGrid.CellFontBold = False
  loc_13F33BC:   Me.FGrid.Col = CVar(CLng(4))
  loc_13F33D3:   Me.FGrid.CellFontBold = False
  loc_13F33ED:   Me.FGrid.Col = CVar(CLng(5))
  loc_13F3404:   Me.FGrid.CellFontBold = False
  loc_13F340F:   var_AC = CVar(CLng(2)) 'Long
  loc_13F341E:   Me.FGrid.Col = var_AC
  loc_13F3434:   Proc_6_7_F25D88(var_114, Now, var_100, " ", CVar(CLng(2)), var_AC)
  loc_13F346B:   var_194 = Me.FGrid.RowSel
  loc_13F3485:   Set var_100 = Me.FGrid
  loc_13F349C:   Proc_6_17_EAA2B0(var_1E4, CVar(CStr(var_100.TextMatrix))), CVar(CLng(6)), CVar(CLng(var_194)), 1, 1)
  loc_13F34B4:   var_238 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_13F34BC:   var_258 = CVar(CLng(7)) 'Long
  loc_13F34D6:   var_280 = CStr(Me.FGrid.TextMatrix))
  loc_13F34DE:   var_2D0 = Val(var_280)
  loc_13F34FF:   var_134 = "Update Messaging Set Cleared='N',ReadYN='Y',ReadDate=" & var_114 & ",ReadTime='" 
  loc_13F3538:   unk_43A466.Execute CStr(var_134 & Format(Now, "hh:mm") & "' Where VType=" & var_1E4 & " And VNo=" & CVar(var_2D0)), var_2C4, -1
  loc_13F357D: Else
  loc_13F3583:   If (var_102 = 1) Then
  loc_13F35B3:     Set var_8C = Me.lblMenu0
  loc_13F35B9:     Call 0.Method_lblMenu_Click0 (Index, var_100, var_280, CVar(CLng(2)), CVar(CLng(Me.FGrid.RowSel)), var_2C8, var_2D0)
  loc_13F35C1:     var_258 = var_100.Caption
  loc_13F35D7:     LateIdCallSt
  loc_13F360D:     Set var_100 = Me.FGrid
  loc_13F3613:     var_100.Row = CVar(CLng(Me.FGrid.RowSel))
  loc_13F3630:     Me.FGrid.CellFontBold = True
  loc_13F364A:     Me.FGrid.Col = CVar(CLng(3))
  loc_13F3660:     Me.FGrid.CellFontBold = True
  loc_13F367A:     Me.FGrid.Col = CVar(CLng(4))
  loc_13F3690:     Me.FGrid.CellFontBold = True
  loc_13F36AA:     Me.FGrid.Col = CVar(CLng(5))
  loc_13F36C0:     Me.FGrid.CellFontBold = True
  loc_13F36DA:     Me.FGrid.Col = CVar(CLng(2))
  loc_13F36EF:     Set var_8C = Me.lblMenu0
  loc_13F36F5:     Call 0.Method_lblMenu_Click0 (Index, var_100, var_2D4, Me.FGrid, CVar(var_280), var_238)
  loc_13F36FD:     var_102 = var_100.ForeColor
  loc_13F3714:     Me.FGrid.CellForeColor = CVar(var_2D4)
  loc_13F3746:     Set var_100 = Me.FGrid
  loc_13F375D:     Proc_6_17_EAA2B0(var_134, CVar(CStr(var_100.TextMatrix))), CVar(CLng(6)), CVar(CLng(Me.FGrid.RowSel)))
  loc_13F3775:     var_1A4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_13F377D:     var_204 = CVar(CLng(7)) 'Long
  loc_13F3797:     var_280 = CStr(Me.FGrid.TextMatrix))
  loc_13F379F:     var_2D0 = Val(var_280)
  loc_13F37CB:     var_184 = "Update Messaging Set Cleared='N',ReadYN='N',ReadDate= Null ,ReadTime=Null Where VType=" & var_134 & " And VNo=" & CVar(var_2D0) 
  loc_13F37D9:     unk_43A466.Execute CStr(var_184), var_194, -1
  loc_13F380C:   Else
  loc_13F3812:     If (var_102 = 2) Then
  loc_13F3842:       Set var_8C = Me.lblMenu0
  loc_13F3848:       Call 0.Method_lblMenu_Click0 (Index, var_100, var_280, CVar(CLng(2)), CVar(CLng(Me.FGrid.RowSel)), var_2C8, var_2D0)
  loc_13F3850:       var_204 = var_100.Caption
  loc_13F3866:       LateIdCallSt
  loc_13F389C:       Set var_100 = Me.FGrid
  loc_13F38A2:       var_100.Row = CVar(CLng(Me.FGrid.RowSel))
  loc_13F38C3:       Me.FGrid.Col = CVar(CLng(2))
  loc_13F38D8:       Set var_8C = Me.lblMenu0
  loc_13F38DE:       Call 0.Method_lblMenu_Click0 (Index, var_100, var_2D4, Me.FGrid, CVar(var_280))
  loc_13F38E6:       var_1A4 = var_100.ForeColor
  loc_13F38FD:       Me.FGrid.CellForeColor = CVar(var_2D4)
  loc_13F3946:       Proc_6_17_EAA2B0(var_134, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(Me.FGrid.RowSel)))
  loc_13F395E:       var_1A4 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_13F3966:       var_204 = CVar(CLng(7)) 'Long
  loc_13F3988:       var_2D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_13F39C2:       unk_43A466.Execute CStr("Update Messaging Set Cleared='N',ReadYN='F' Where VType=" & var_134 & " And VNo=" & CVar(var_2D0)), var_194, -1
  loc_13F39F5:     Else
  loc_13F39FB:       If (var_102 = 3) Then
  loc_13F3A28:         var_114 = Me.FGrid.TextMatrix)
  loc_13F3A96:         If (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = "ü")) Then
  loc_13F3AA7:           Proc_6_7_F25D88(var_114, Now, CVar(CLng(Me.FGrid.RowSel)), (CStr(var_114) = " "), CVar(CLng(2)), CVar(CLng(Me.FGrid.RowSel)), var_2C8)
  loc_13F3B0F:           Proc_6_17_EAA2B0(var_1E4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(Me.FGrid.RowSel)), 1, 1, var_2D0)
  loc_13F3B27:           var_238 = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_13F3B2F:           var_258 = CVar(CLng(7)) 'Long
  loc_13F3B51:           var_2D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_13F3B82:           var_184 = "Update Messaging Set Cleared='Y',ClearedDate=" & var_114 & ",ClearedTime='" & Format(Now, "hh:mm") & "' Where VType=" 
  loc_13F3B8D:           var_204 = " And VNo="
  loc_13F3BAB:           unk_43A466.Execute CStr(var_184 & var_1E4 & var_204 & CVar(var_2D0)), var_2C4, -1
  loc_13F3BED:         End If
  loc_13F3BED:         Call Proc_300_18_13616BC(var_2C8, var_2D0, var_258, var_238, var_204)
  loc_13F3BF5:       Else
  loc_13F3BFB:         If (var_102 = 4) Then
  loc_13F3C0A:           Me.mnuFrame.Visible = False
  loc_13F3C12:         End If
  loc_13F3C12:       End If
  loc_13F3C12:     End If
  loc_13F3C12:   End If
  loc_13F3C12: End If
  loc_13F3C37: For var_2D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2D8 'Integer
  loc_13F3C41:   var_AC = CVar(CLng(var_86)) 'Long
  loc_13F3C49:   var_CC = CVar(CLng(1)) 'Long
  loc_13F3C4E:   var_EC = " "
  loc_13F3C58:   Set var_8C = Me.FGrid
  loc_13F3C5E:   LateIdCallSt
  loc_13F3C6C: Next var_2D8 'Integer
  loc_13F3C7D: Me.mnuFrame.Visible = False
  loc_13F3C88: Call 0.Method_arg_2A8 ()
  loc_13F3C8D: Exit Sub
End Sub

Private Sub lblMenu_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'FA3838
  'Data Table: 43A448
  Dim var_94 As Label
  loc_FA36A8: DoEvents()
  loc_FA36B4: Set var_8C = Me.lblMenu
  loc_FA36BA: Call 0.Method_lblMenu_MouseMove4 (var_8E)
  loc_FA36CC: Set var_94 = Me.lblMenu
  loc_FA36D2: Call 0.Method_lblMenu_MouseMove8 (var_96, var_86)
  loc_FA36E1: For var_9A =  To var_96: var_8E = var_9A 'Integer
  loc_FA36EE:   If (Button = var_86) Then
  loc_FA36FF:     Set var_8C = Me.lblMenu0
  loc_FA3705:     Call 0.Method_lblMenu_MouseMove0 (var_86, var_94)
  loc_FA370D:     var_94.FontSize = CDbl(&HB)
  loc_FA3725:     Set var_8C = Me.lblMenu0
  loc_FA372B:     Call 0.Method_lblMenu_MouseMove0 (var_86, var_94)
  loc_FA3733:     var_94.FontBold = True
  loc_FA374D:     Set var_8C = Me.lblMenu
  loc_FA3753:     Call 0.Method_lblMenu_MouseMove0 (var_86, var_94)
  loc_FA375B:     var_94.FontSize = CDbl(8)
  loc_FA3773:     Set var_8C = Me.lblMenu
  loc_FA3779:     Call 0.Method_lblMenu_MouseMove0 (var_86, var_94)
  loc_FA3781:     var_94.FontBold = True
  loc_FA3790:   Else
  loc_FA379E:     Set var_8C = Me.lblMenu0
  loc_FA37A4:     Call 0.Method_lblMenu_MouseMove0 (var_86, var_94)
  loc_FA37AC:     var_94.FontSize = CDbl(&HC)
  loc_FA37C6:     Set var_8C = Me.lblMenu
  loc_FA37CC:     Call 0.Method_lblMenu_MouseMove0 (var_86, var_94)
  loc_FA37D4:     var_94.FontSize = CDbl(9)
  loc_FA37EC:     Set var_8C = Me.lblMenu0
  loc_FA37F2:     Call 0.Method_lblMenu_MouseMove0 (var_86, var_94)
  loc_FA37FA:     var_94.FontBold = False
  loc_FA3812:     Set var_8C = Me.lblMenu
  loc_FA3818:     Call 0.Method_lblMenu_MouseMove0 (var_86, var_94)
  loc_FA3820:     var_94.FontBold = False
  loc_FA382C:   End If
  loc_FA382F: Next var_9A 'Integer
  loc_FA3834: Exit Sub
End Sub

Private Sub Form_Load() 'EB68E8
  'Data Table: 43A448
  loc_EB6844: On Error Goto loc_EB68E0
  loc_EB684E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_EB6866: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_EB687A: Me.mnuFrame.Visible = False
  loc_EB688C: Set global_52 = New 
  loc_EB689E: Me.Recordset15.CursorLocation = 3
  loc_EB68A3: Call Proc_300_16_10EB8E0()
  loc_EB68A8: Call Proc_300_18_13616BC()
  loc_EB68B4: Call 0.Method_arg_7C (CDbl(0))
  loc_EB68C0: Call 0.Method_arg_74 (CDbl(0))
  loc_EB68CD: Call 0.Method_MeC (CDbl(9180))
  loc_EB68DA: Call 0.Method_Me4 (CDbl(11000))
  loc_EB68DF: Exit Sub
  loc_EB68E0: ' Referenced from: EB6844
  loc_EB68E0: Proc_6_60_E62BC4()
  loc_EB68E5: Exit Sub
End Sub

Private Sub Form_Resize() 'DFBE38
  'Data Table: 43A448
  loc_DFBE34: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0D1A4
  'Data Table: 43A448
  loc_E0D19B: Set global_52 = Nothing
  loc_E0D1A2: Exit Sub
End Sub

Public Property Let ShowInboxMessage(FG) '104C290
  'Data Table: 43A448
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As MSHFlexGrid
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_2DC As Double
  Dim var_1E4 As Variant
  Dim unk_43A466 As Connection15
  loc_104C08D: Set var_B8 = Me.FGrid
  loc_104C093: var_B8.Row = CVar(CLng(Me.FGrid.Row))
  loc_104C0B9: Me.FGrid.Col = CVar(CLng(Me.Me.FGrid.Col))
  loc_104C0D7: var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104C112: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_104C11F:   var_94 = Me.FGrid.Row
  loc_104C12C:   Call Proc_300_19_1130CD0(CInt(CLng(var_94)), CVar(CLng(3)))
  loc_104C137: End If
  loc_104C142: Proc_6_7_F25D88(var_94, MemVar_1F920EC)
  loc_104C182: var_184 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104C18A: var_1A4 = CVar(CLng(6)) 'Long
  loc_104C199: var_1C4 = Me.FGrid.TextMatrix)
  loc_104C1E2: var_2DC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_104C21E: var_1E4 = "Update Messaging Set ReadYN='Y',ReadDate=" & var_94 & ",ReadTime='" & Format(Now, "hh:mm") & "' Where VType='" & CVar(CStr(var_1C4)) 
  loc_104C249: unk_43A466.Execute CStr(var_1E4 & "' And VNo=" & CVar(var_2DC) & vbNullString), var_2D0, -1
  loc_104C289: Call Proc_300_18_13616BC(var_2D4, var_2DC, CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)), var_1C4)
  loc_104C28E: Exit Sub
End Sub

Public Sub Proc_300_16_10EB8E0
  'Data Table: 43A448
  Dim var_94 As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_F4 As String
  Dim MemVar_5F796C As Currency
  loc_10EB5CA: Me.FGrid.Left = CVar(CDbl(0))
  loc_10EB5D8: Call 0.Method_Me0 (var_AC)
  loc_10EB5EF: Me.FGrid.Width = CVar(var_AC)
  loc_10EB5FB: Set var_B0 = Me.FGrid
  loc_10EB60A: var_B0.FixedRows = 1
  loc_10EB623: global_56 = CStr(CLng(var_B0.BackColor))
  loc_10EB639: var_B0.Cols = 8
  loc_10EB641: var_94 = CVar(CLng(0)) 'Long
  loc_10EB646: var_D4 = 0
  loc_10EB652: LateIdCallSt
  loc_10EB65A: var_94 = 0
  loc_10EB666: var_D4 = CVar(CLng(1)) 'Long
  loc_10EB66B: var_F4 = vbNullString
  loc_10EB674: LateIdCallSt
  loc_10EB67F: var_94 = CVar(CLng(1)) 'Long
  loc_10EB68A: var_D4 = CVar(CInt(1)) 'Integer
  loc_10EB691: LateIdCallSt
  loc_10EB69C: var_94 = CVar(CLng(1)) 'Long
  loc_10EB6A1: var_D4 = &H12C
  loc_10EB6AD: LateIdCallSt
  loc_10EB6B5: var_94 = 0
  loc_10EB6C1: var_D4 = CVar(CLng(4)) 'Long
  loc_10EB6C6: var_F4 = "Subject"
  loc_10EB6CF: LateIdCallSt
  loc_10EB6DA: var_94 = CVar(CLng(4)) 'Long
  loc_10EB6E5: var_D4 = CVar(CInt(1)) 'Integer
  loc_10EB6EC: LateIdCallSt
  loc_10EB6F7: var_94 = CVar(CLng(4)) 'Long
  loc_10EB702: var_D4 = CVar(CInt(1)) 'Integer
  loc_10EB709: LateIdCallSt
  loc_10EB714: var_94 = CVar(CLng(4)) 'Long
  loc_10EB719: var_D4 = &H1518
  loc_10EB725: LateIdCallSt
  loc_10EB72D: var_94 = 0
  loc_10EB739: var_D4 = CVar(CLng(3)) 'Long
  loc_10EB73E: var_F4 = "From"
  loc_10EB747: LateIdCallSt
  loc_10EB752: var_94 = CVar(CLng(3)) 'Long
  loc_10EB75D: var_D4 = CVar(CInt(1)) 'Integer
  loc_10EB764: LateIdCallSt
  loc_10EB76F: var_94 = CVar(CLng(3)) 'Long
  loc_10EB77A: var_D4 = CVar(CInt(1)) 'Integer
  loc_10EB781: LateIdCallSt
  loc_10EB78C: var_94 = CVar(CLng(3)) 'Long
  loc_10EB791: var_D4 = &HB22
  loc_10EB79D: LateIdCallSt
  loc_10EB7A5: var_94 = 0
  loc_10EB7B1: var_D4 = CVar(CLng(5)) 'Long
  loc_10EB7B6: var_F4 = "Received On"
  loc_10EB7BF: LateIdCallSt
  loc_10EB7CA: var_94 = CVar(CLng(5)) 'Long
  loc_10EB7D5: var_D4 = CVar(CInt(1)) 'Integer
  loc_10EB7DC: LateIdCallSt
  loc_10EB7E7: var_94 = CVar(CLng(5)) 'Long
  loc_10EB7F2: var_D4 = CVar(CInt(1)) 'Integer
  loc_10EB7F9: LateIdCallSt
  loc_10EB804: var_94 = CVar(CLng(5)) 'Long
  loc_10EB809: var_D4 = &H640
  loc_10EB815: LateIdCallSt
  loc_10EB81D: var_94 = 0
  loc_10EB829: var_D4 = CVar(CLng(2)) 'Long
  loc_10EB82E: var_F4 = vbNullString
  loc_10EB837: LateIdCallSt
  loc_10EB842: var_94 = CVar(CLng(2)) 'Long
  loc_10EB847: var_D4 = &H190
  loc_10EB853: LateIdCallSt
  loc_10EB85B: var_94 = 0
  loc_10EB867: var_D4 = CVar(CLng(6)) 'Long
  loc_10EB86C: var_F4 = "VType"
  loc_10EB875: LateIdCallSt
  loc_10EB880: var_94 = CVar(CLng(6)) 'Long
  loc_10EB885: var_D4 = 0
  loc_10EB891: LateIdCallSt
  loc_10EB899: var_94 = 0
  loc_10EB8A5: var_D4 = CVar(CLng(7)) 'Long
  loc_10EB8AA: var_F4 = "VNo"
  loc_10EB8B3: LateIdCallSt
  loc_10EB8BE: var_94 = CVar(CLng(7)) 'Long
  loc_10EB8C3: var_D4 = 0
  loc_10EB8CF: LateIdCallSt
  loc_10EB8DD: Exit Sub
  loc_10EB8DE: MemVar_5F796C = Nothing
End Sub

Public Sub Proc_300_17_E17268
  'Data Table: 43A448
  loc_E1725D: Me.Global.Unload Me
  loc_E17265: Exit Sub
  loc_E17266: Set var_3000 = 
End Sub

Public Sub Proc_300_18_13616BC
  'Data Table: 43A448
  Dim var_A4 As String
  Dim unk_43A466 As Connection15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_C4 As Variant
  Dim var_114 As String
  Dim var_134 As Variant
  Dim var_DC As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_104 As Variant
  Dim var_CC As Field20
  loc_1360E80: On Error Goto loc_13616B3
  loc_1360E9E: var_A4 = "SELECT * FROM Messaging Where Receiver='" & MemVar_1F920C8 & "' And (Cleared is Null Or Cleared='' Or Cleared='N') Order By VDATE DESC,VType DESC,VNo DESC,Sender"
  loc_1360EA7: unk_43A466.Execute var_A4, var_C4, -1
  loc_1360EB8: Set global_52 = var_C8
  loc_1360EDC: Me.FGrid.Redraw = False
  loc_1360EF7: Me.FGrid.Rows = 1
  loc_1360F01: var_8A = 1
  loc_1360F04: ' Referenced from: 13615D5
  loc_1360F16: If Not(Me.EOF) Then
  loc_1360F19:   var_B4 = vbNullString
  loc_1360F23:   Set var_C8 = Me.FGrid
  loc_1360F38:   Set var_E4 = Me.FGrid
  loc_1360F3F:   var_B4 = CVar(CLng(var_8A)) 'Long
  loc_1360F47:   var_F4 = CVar(CLng(0)) 'Long
  loc_1360F51:   var_C4 = CVar(CStr(var_8A)) 'String
  loc_1360F58:   LateIdCallSt
  loc_1360F67:   var_B4 = CVar(CLng(var_8A)) 'Long
  loc_1360F6F:   var_F4 = CVar(CLng(1)) 'Long
  loc_1360F7D:   LateIdCallSt
  loc_1360F88:   var_B4 = "Readyn"
  loc_1360FB0:   var_134 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_B4)), var_E4, " ", var_F4, var_B4, var_E4, CVar(Me.Fields.Item(var_B4)))) 'String
  loc_1360FD2:   If (Ucase(var_134) = "Y") Then
  loc_1360FE1:     var_E4.Row = CVar(CLng(var_8A))
  loc_1360FF1:     var_E4.Col = CVar(CLng(4))
  loc_1360FFE:     var_E4.CellFontBold = False
  loc_136100E:     var_E4.Col = CVar(CLng(3))
  loc_136101B:     var_E4.CellFontBold = False
  loc_136102B:     var_E4.Col = CVar(CLng(5))
  loc_1361038:     var_E4.CellFontBold = False
  loc_1361040:   Else
  loc_1361043:     var_B4 = "Readyn"
  loc_136108D:     If (Ucase(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_B4)), var_F4, var_B4, FGrid.DispID_10000))) = "N") Then
  loc_136109C:       var_E4.Row = CVar(CLng(var_8A))
  loc_13610AC:       var_E4.Col = CVar(CLng(4))
  loc_13610B8:       var_E4.CellFontBold = True
  loc_13610C8:       var_E4.Col = CVar(CLng(3))
  loc_13610D4:       var_E4.CellFontBold = True
  loc_13610E4:       var_E4.Col = CVar(CLng(5))
  loc_13610F0:       var_E4.CellFontBold = True
  loc_13610F8:     Else
  loc_13610FB:       var_B4 = "Readyn"
  loc_1361145:       If (Ucase(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_B4)), var_B4))) = "F") Then
  loc_1361154:         var_E4.Row = CVar(CLng(var_8A))
  loc_1361164:         var_E4.Col = CVar(CLng(4))
  loc_1361171:         var_E4.CellFontBold = False
  loc_1361181:         var_E4.Col = CVar(CLng(3))
  loc_136118E:         var_E4.CellFontBold = False
  loc_136119E:         var_E4.Col = CVar(CLng(5))
  loc_13611AB:         var_E4.CellFontBold = False
  loc_13611B0:       End If
  loc_13611B0:     End If
  loc_13611B0:   End If
  loc_13611B4:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_13611BC:   var_104 = CVar(CLng(4)) 'Long
  loc_13611EF:   var_134 = CVar(CStr(Me.Fields.Item("Subject").Value)) 'String
  loc_13611F6:   LateIdCallSt
  loc_1361210:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_1361218:   var_104 = CVar(CLng(3)) 'Long
  loc_136124B:   var_134 = CVar(CStr(Me.Fields.Item("Sender").Value)) 'String
  loc_1361252:   LateIdCallSt
  loc_136126C:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_1361274:   var_104 = CVar(CLng(5)) 'Long
  loc_13612A7:   var_134 = CVar(CStr(Me.Fields.Item("VDate").Value)) 'String
  loc_13612AE:   LateIdCallSt
  loc_13612C8:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_13612D0:   var_104 = CVar(CLng(6)) 'Long
  loc_1361303:   var_134 = CVar(CStr(Me.Fields.Item("vType").Value)) 'String
  loc_136130A:   LateIdCallSt
  loc_1361324:   var_DC = CVar(CLng(var_8A)) 'Long
  loc_136135F:   var_134 = CVar(CStr(Me.Fields.Item("VNo").Value)) 'String
  loc_1361366:   LateIdCallSt
  loc_1361388:   var_E4.Row = CVar(CLng(var_8A))
  loc_1361398:   var_E4.Col = CVar(CLng(1))
  loc_13613A6:   var_E4.CellFontName = "wingdings"
  loc_13613B6:   var_E4.CellFontSize = CVar(CDbl(&HB))
  loc_13613C6:   var_E4.Col = CVar(CLng(2))
  loc_13613D4:   var_E4.CellFontName = "wingdings"
  loc_13613E4:   var_E4.CellFontSize = CVar(CDbl(&HB))
  loc_13613EC:   var_B4 = CVar(CLng(2)) 'Long
  loc_13613FE:   LateIdCallSt
  loc_1361409:   var_B4 = "Readyn"
  loc_1361431:   var_134 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_B4)), var_E4, CVar(CInt(3)), var_B4, var_E4, var_134, CVar(CLng(7)))) 'String
  loc_136143F:   var_DC = "Y"
  loc_1361453:   If (Ucase(var_134) = var_DC) Then
  loc_136145E:     var_E4.CellFontBold = False
  loc_136146F:     var_E4.CellForeColor = &HFF0000
  loc_1361478:     var_B4 = CVar(CLng(var_8A)) 'Long
  loc_1361480:     var_F4 = CVar(CLng(2)) 'Long
  loc_1361485:     var_114 = " "
  loc_136148E:     LateIdCallSt
  loc_1361499:   Else
  loc_136149C:     var_B4 = "Readyn"
  loc_13614E6:     If (Ucase(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_B4)), var_E4, var_114, var_F4, var_B4, "N"))) = "N") Then
  loc_13614F0:       var_E4.CellFontBold = True
  loc_1361501:       var_E4.CellForeColor = &HFF
  loc_136150A:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_1361512:       var_F4 = CVar(CLng(2)) 'Long
  loc_1361517:       var_114 = "*"
  loc_1361520:       LateIdCallSt
  loc_136152B:     Else
  loc_136152E:       var_B4 = "Readyn"
  loc_1361578:       If (Ucase(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_B4)), var_E4, var_114, var_F4, var_B4))) = "F") Then
  loc_1361583:         var_E4.CellFontBold = False
  loc_1361594:         var_E4.CellForeColor = &HFF00
  loc_136159D:         var_B4 = CVar(CLng(var_8A)) 'Long
  loc_13615A5:         var_F4 = CVar(CLng(2)) 'Long
  loc_13615AA:         var_114 = "O"
  loc_13615B3:         LateIdCallSt
  loc_13615BB:       End If
  loc_13615BB:     End If
  loc_13615BB:   End If
  loc_13615BD:   Set var_E4 = Nothing 
  loc_13615C7:   var_8A = (var_8A + 1)
  loc_13615D0:   Me.MoveNext
  loc_13615D5:   GoTo loc_1360F04
  loc_13615D8: End If
  loc_13615F7: If (CLng(Me.FGrid.Rows) > 1) Then
  loc_136160D:   Me.FGrid.FixedRows = 1
  loc_1361615: End If
  loc_1361623: Me.FGrid.Redraw = True
  loc_1361631: If (var_8A = 1) Then
  loc_1361647:   Me.FGrid.Rows = 1
  loc_136166D:   var_C4 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_8A, var_E4, var_114, var_F4))) 'String
  loc_1361675:   Set var_CC = Me.FGrid
  loc_136168F:   var_B4 = 1
  loc_13616A2:   Me.FGrid.FixedRows = var_B4
  loc_13616AA: End If
  loc_13616AF: Set var_88 = Nothing
  loc_13616B2: Exit Sub
  loc_13616B3: ' Referenced from: 1360E80
  loc_13616B3: Proc_6_60_E62BC4(FGrid.DispID_10000, var_C4, var_B4, var_E4)
  loc_13616B8: Exit Sub
End Sub

Public Sub Proc_300_19_1130CD0(arg_C) '1130CD0
  'Data Table: 43A448
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim var_178 As Double
  Dim unk_43A466 As Connection15
  Dim var_88 As Recordset15
  Dim var_180 As TextBox
  loc_1130980: Me.Frame1.Visible = True
  loc_1130998: Me.Frame1.ZOrder 0
  loc_11309A4: var_9C = CVar(CLng(arg_C)) 'Long
  loc_11309F5: var_178 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1130A33: unk_43A466.Execute "Select * From Messaging Where VType='" & CStr(Me.FGrid.TextMatrix)) & "' And VNo=" & CStr(var_178) & vbNullString, var_16C, -1
  loc_1130A3E: Set var_88 = var_170
  loc_1130A78: If (var_88.RecordCount > 0) Then
  loc_1130ABA:   Call 0.Method_Proc_300_19_1130CD00 (CInt(0), var_180, CStr(var_88.Fields.Item("Sender").Value), Me.Txt, var_178)
  loc_1130AC2:   var_180.Text = CVar(CLng(7))
  loc_1130AFA:   var_DC = var_88.Fields.Item("vType").Value
  loc_1130B11:   Set var_170 = Me.Txt
  loc_1130B17:   Call 0.Method_Proc_300_19_1130CD00 (CInt(0), var_180, CStr(var_DC), CVar(CLng(arg_C)))
  loc_1130B1F:   var_180.Tag = var_DC
  loc_1130B6E:   Set var_170 = Me.Txt
  loc_1130B74:   Call 0.Method_Proc_300_19_1130CD00 (CInt(1), var_180, CStr(var_88.Fields.Item("Subject").Value))
  loc_1130B7C:   var_180.Text = CVar(CLng(6))
  loc_1130BCB:   Set var_170 = Me.Txt
  loc_1130BD1:   Call 0.Method_Proc_300_19_1130CD00 (CInt(1), var_180)
  loc_1130BD9:   var_180.Tag = CStr(var_88.Fields.Item("VNo").Value)
  loc_1130C41:   Set var_170 = Me.Txt
  loc_1130C47:   Call 0.Method_Proc_300_19_1130CD00 (CInt(2), var_180, CStr(Format(CVar(var_88.Fields.Item("VDate")), "dd/mmm/yyyy")))
  loc_1130C4F:   var_180.Text = 1
  loc_1130CA2:   Set var_170 = Me.Txt
  loc_1130CA8:   Call 0.Method_Proc_300_19_1130CD00 (CInt(3), var_180, CStr(var_88.Fields.Item("Message").Value))
  loc_1130CB0:   var_180.Text = 1
  loc_1130CC6: End If
  loc_1130CCB: Set var_88 = Nothing
  loc_1130CCE: Exit Sub
End Sub
