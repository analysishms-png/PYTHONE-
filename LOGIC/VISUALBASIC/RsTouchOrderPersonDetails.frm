VERSION 5.00
Begin VB.Form RsTouchOrderPersonDetails
  Caption = "Customer Information"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 4 'Fixed ToolWindow
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 210
  ClientWidth = 12525
  ClientHeight = 5400
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin Frame FrCustInfo
    BackColor = &H80000003&
    Left = -15
    Top = 0
    Width = 10755
    Height = 1785
    TabIndex = 56
    BorderStyle = 0 'None
    Begin BtnEnh Cmd
      Index = 0
      Left = 30
      Top = 105
      Width = 1965
      Height = 780
      TabIndex = 65
    End
    Begin TextBox Txt
      Index = 3
      Left = 7425
      Top = 1035
      Width = 3210
      Height = 630
      TabIndex = 62
      BorderStyle = 0 'None
      MaxLength = 50
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
    Begin TextBox Txt
      Index = 2
      Left = 7425
      Top = 180
      Width = 3210
      Height = 630
      TabIndex = 61
      BorderStyle = 0 'None
      MaxLength = 50
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
    Begin TextBox Txt
      Index = 1
      Left = 2055
      Top = 1035
      Width = 3210
      Height = 630
      TabIndex = 58
      BorderStyle = 0 'None
      MaxLength = 50
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
    Begin TextBox Txt
      Index = 0
      Left = 2040
      Top = 180
      Width = 3210
      Height = 630
      TabIndex = 57
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 20
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
    Begin BtnEnh Cmd
      Index = 1
      Left = 30
      Top = 960
      Width = 1965
      Height = 780
      TabIndex = 66
    End
    Begin BtnEnh Cmd
      Index = 2
      Left = 5400
      Top = 120
      Width = 1965
      Height = 765
      TabIndex = 67
    End
  End
End
Begin BtnEnh Cmd
  Index = 3
  Left = 5400
  Top = 975
  Width = 1965
  Height = 750
  TabIndex = 68
End
Begin Label Label1
  Index = 3
  BackColor = &H40&
  ForeColor = &HFFFFFF&
  Left = 7365
  Top = 975
  Width = 3330
  Height = 750
  TabIndex = 64
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
End
Begin Label Label1
  Index = 2
  BackColor = &H40&
  ForeColor = &HFFFFFF&
  Left = 7365
  Top = 120
  Width = 3330
  Height = 750
  TabIndex = 63
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
End
Begin Line Line12
  BorderColor = &H404040&
  X1 = 5355
  Y1 = 915
  X2 = 10725
  Y2 = 900
  BorderWidth = 2
End
Begin Shape Shape1
  BorderColor = &H404040&
  Left = 5370
  Top = 60
  Width = 5370
  Height = 1740
  BorderWidth = 2
  FillColor = &HC0E0FF&
  FillStyle = 0
End
Begin Label Label1
  Index = 1
  BackColor = &H40&
  ForeColor = &HFFFFFF&
  Left = 1995
  Top = 975
  Width = 3330
  Height = 750
  TabIndex = 60
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
End
Begin Label Label1
  Index = 0
  BackColor = &H40&
  ForeColor = &HFFFFFF&
  Left = 1995
  Top = 120
  Width = 3330
  Height = 750
  TabIndex = 59
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
End
Begin Line Line10
  BorderColor = &H404040&
  X1 = 0
  Y1 = 915
  X2 = 5370
  Y2 = 900
  BorderWidth = 2
End
Begin Shape Shape3
  BorderColor = &H404040&
  Left = 15
  Top = 60
  Width = 5370
  Height = 1740
  BorderWidth = 2
  FillColor = &HC0E0FF&
  FillStyle = 0
End
Begin Frame Frame1
  BackColor = &H80000003&
  Left = 0
  Top = 1785
  Width = 12525
  Height = 3615
  TabIndex = 1
  BorderStyle = 0 'None
  Begin SSPanel SSPKey
    Index = 0
    Left = 9825
    Top = 2685
    Width = 900
    Height = 900
    TabIndex = 2
  End
  Begin SSPanel SSPKey
    Index = 1
    Left = 9825
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 3
  End
  Begin SSPanel SSPKey
    Index = 2
    Left = 10710
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 4
  End
  Begin SSPanel SSPKey
    Index = 3
    Left = 11595
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 5
  End
  Begin SSPanel SSPKey
    Index = 4
    Left = 9825
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 6
  End
  Begin SSPanel SSPKey
    Index = 5
    Left = 10710
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 7
  End
  Begin SSPanel SSPKey
    Index = 6
    Left = 11595
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 8
  End
  Begin SSPanel SSPKey
    Index = 7
    Left = 9825
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 9
  End
  Begin SSPanel SSPKey
    Index = 8
    Left = 10710
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 10
  End
  Begin SSPanel SSPKey
    Index = 9
    Left = 11595
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 11
  End
  Begin SSPanel SSPKey
    Index = 10
    Left = 10710
    Top = 2685
    Width = 900
    Height = 900
    TabIndex = 12
  End
  Begin SSPanel SSPKey
    Index = 11
    Left = 11595
    Top = 2685
    Width = 900
    Height = 900
    TabIndex = 13
  End
  Begin SSPanel SSPKey
    Index = 12
    Left = 30
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 14
  End
  Begin SSPanel SSPKey
    Index = 13
    Left = 915
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 15
  End
  Begin SSPanel SSPKey
    Index = 14
    Left = 1800
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 16
  End
  Begin SSPanel SSPKey
    Index = 15
    Left = 2685
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 17
  End
  Begin SSPanel SSPKey
    Index = 16
    Left = 3570
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 18
  End
  Begin SSPanel SSPKey
    Index = 17
    Left = 4455
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 19
  End
  Begin SSPanel SSPKey
    Index = 18
    Left = 5340
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 20
  End
  Begin SSPanel SSPKey
    Index = 19
    Left = 6225
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 21
  End
  Begin SSPanel SSPKey
    Index = 20
    Left = 7110
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 22
  End
  Begin SSPanel SSPKey
    Index = 21
    Left = 7995
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 23
  End
  Begin SSPanel SSPKey
    Index = 22
    Left = 8880
    Top = 30
    Width = 900
    Height = 900
    TabIndex = 24
  End
  Begin SSPanel SSPKey
    Index = 23
    Left = 45
    Top = 885
    Width = 900
    Height = 900
    TabIndex = 25
  End
  Begin SSPanel SSPKey
    Index = 24
    Left = 930
    Top = 885
    Width = 900
    Height = 900
    TabIndex = 26
  End
  Begin SSPanel SSPKey
    Index = 25
    Left = 1800
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 27
  End
  Begin SSPanel SSPKey
    Index = 26
    Left = 2685
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 28
  End
  Begin SSPanel SSPKey
    Index = 27
    Left = 3570
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 29
  End
  Begin SSPanel SSPKey
    Index = 28
    Left = 4455
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 30
  End
  Begin SSPanel SSPKey
    Index = 29
    Left = 5340
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 31
  End
  Begin SSPanel SSPKey
    Index = 30
    Left = 6225
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 32
  End
  Begin SSPanel SSPKey
    Index = 31
    Left = 7110
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 33
  End
  Begin SSPanel SSPKey
    Index = 32
    Left = 7995
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 34
  End
  Begin SSPanel SSPKey
    Index = 33
    Left = 8880
    Top = 915
    Width = 900
    Height = 900
    TabIndex = 35
    Begin SSPanel SSPKey
      Index = 50
      Left = 0
      Top = 0
      Width = 900
      Height = 900
      TabIndex = 36
    End
  End
  Begin SSPanel SSPKey
    Index = 34
    Left = 45
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 37
  End
  Begin SSPanel SSPKey
    Index = 35
    Left = 915
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 38
  End
  Begin SSPanel SSPKey
    Index = 36
    Left = 1800
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 39
  End
  Begin SSPanel SSPKey
    Index = 37
    Left = 2685
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 40
  End
  Begin SSPanel SSPKey
    Index = 38
    Left = 3570
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 41
  End
  Begin SSPanel SSPKey
    Index = 39
    Left = 4455
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 42
  End
  Begin SSPanel SSPKey
    Index = 40
    Left = 5340
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 43
  End
  Begin SSPanel SSPKey
    Index = 41
    Left = 6225
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 44
  End
  Begin SSPanel SSPKey
    Index = 42
    Left = 7110
    Top = 1800
    Width = 900
    Height = 900
    TabIndex = 45
  End
  Begin SSPanel SSPKey
    Index = 43
    Left = 7995
    Top = 1800
    Width = 1785
    Height = 900
    TabIndex = 46
  End
  Begin SSPanel SSPKey
    Index = 44
    Left = 30
    Top = 2685
    Width = 1785
    Height = 900
    TabIndex = 47
  End
  Begin SSPanel SSPKey
    Index = 45
    Left = 1800
    Top = 2685
    Width = 1785
    Height = 900
    TabIndex = 48
  End
  Begin SSPanel SSPKey
    Index = 46
    Left = 3570
    Top = 2685
    Width = 2670
    Height = 900
    TabIndex = 49
  End
  Begin SSPanel SSPKey
    Index = 47
    Left = 6225
    Top = 2685
    Width = 1785
    Height = 900
    TabIndex = 50
  End
  Begin SSPanel SSPKey
    Index = 48
    Left = 7995
    Top = 2685
    Width = 900
    Height = 900
    TabIndex = 51
  End
  Begin SSPanel SSPKey
    Index = 49
    Left = 8880
    Top = 2685
    Width = 900
    Height = 900
    TabIndex = 52
  End
End
Begin TextBox TxtKeyBoard
  Left = 15
  Top = 5550
  Width = 10590
  Height = 1665
  TabIndex = 0
  MultiLine = -1  'True
  ScrollBars = 2
  BeginProperty Font
    Name = "Tahoma"
    Size = 14.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin SSPanel SSPKey
  Index = 51
  Left = 10725
  Top = 0
  Width = 1785
  Height = 900
  TabIndex = 53
End
Begin SSPanel SSPKey
  Index = 52
  Left = 10725
  Top = 885
  Width = 1785
  Height = 900
  TabIndex = 54
End
Begin SSPanel SSPKey
  Index = 53
  Left = 1425
  Top = 5535
  Width = 900
  Height = 900
  Visible = 0   'False
  TabIndex = 55
End
End

Attribute VB_Name = "RsTouchOrderPersonDetails"

Private global_80 As Byte
Private global_52 As Integer

Private Sub SSPKey_UnknownEvent_9 '14DDAB8
  'Data Table: 42C220
  Dim var_90 As Variant
  Dim var_A4 As String
  Dim var_8C As Variant
  Dim var_BC As TextBox
  Dim var_B8 As Variant
  Dim var_10C As Variant
  loc_14DCCEE: Set var_8C = Me.SSPKey
  loc_14DCCF4: Call 0.Method_SSPKey_UnknownEvent_90 (Cancel)
  loc_14DCCFC: var_90.Caption
  loc_14DCD19: If (CStr(var_90) = "Finish") Then
  loc_14DCD1F:   Call 0.Method_arg_2B4 ()
  loc_14DCD3A:   If (EntryType = "SALEBILLENTRY") Then
  loc_14DCD48:     Set var_8C = Me.Txt
  loc_14DCD4E:     Call 0.Method_SSPKey_UnknownEvent_90 (CInt(0))
  loc_14DCD71:     ParentForm.sPhoneNo = Trim(CVar(var_90))
  loc_14DCD8E:     Set var_8C = var_90(CInt(1))
  loc_14DCD94:     Call 0.Method_SSPKey_UnknownEvent_90 (var_90)
  loc_14DCDB7:     ParentForm.sCustName = Trim(CVar(var_90))
  loc_14DCDD4:     Set var_8C = var_90(CInt(2))
  loc_14DCDDA:     Call 0.Method_SSPKey_UnknownEvent_90 ()
  loc_14DCDFD:     ParentForm.sAddress1 = Trim(CVar(var_90))
  loc_14DCE1A:     Set var_8C = var_90(CInt(3))
  loc_14DCE20:     Call 0.Method_SSPKey_UnknownEvent_90 ()
  loc_14DCE3B:     var_BC = ParentForm
  loc_14DCE43:     var_BC.sAddress2 = Trim(CVar(var_90))
  loc_14DCE60:     Call ParentForm.SetOnLineSalingCustDetail
  loc_14DCE6C:   Else
  loc_14DCE6C:     Call Proc_259_21_1245490()
  loc_14DCE71:   End If
  loc_14DCE7E:   Me.Global.Unload Me
  loc_14DCE89: Else
  loc_14DCE93:   Set var_8C = Me.SSPKey
  loc_14DCE99:   Call 0.Method_SSPKey_UnknownEvent_90 (Cancel)
  loc_14DCEA1:   var_90.Caption
  loc_14DCEBE:   If (CStr(var_90) = "Enter") Then
  loc_14DCECE:     var_A4 = Me.TxtKeyBoard.Text
  loc_14DCEF8:     Set var_90 = Me.Txt
  loc_14DCEFE:     Call 0.Method_SSPKey_UnknownEvent_90 (CInt(global_80), var_BC)
  loc_14DCF06:     var_BC.Text = CStr(Trim(CVar(var_A4)))
  loc_14DCF28:     If (global_80 = 0) Then
  loc_14DCF2B:       Call Proc_259_22_10381A4()
  loc_14DCF30:     End If
  loc_14DCF41:     global_80 = CByte((CInt(global_80) + 1))
  loc_14DCF51:     If (CInt(global_80) = 4) Then
  loc_14DCF5B:       global_80 = CByte(0)
  loc_14DCF5F:     End If
  loc_14DCF72:     Set var_8C = Me.Txt
  loc_14DCF78:     Call 0.Method_SSPKey_UnknownEvent_90 (CInt(global_80), var_90, var_A4)
  loc_14DCF80:     global_80 = var_90.Text
  loc_14DCF8C:     Set var_BC = Me.TxtKeyBoard
  loc_14DCF92:     var_BC.Text = var_A4
  loc_14DCFC3:     Me.TxtKeyBoard.SelStart = Len(Me.TxtKeyBoard.Text)
  loc_14DCFF7:     Set var_90 = Me.Txt
  loc_14DCFFD:     Call 0.Method_SSPKey_UnknownEvent_90 (CInt(global_80), var_BC)
  loc_14DD005:     var_BC.SelStart = Me.TxtKeyBoard.SelStart
  loc_14DD016:   Else
  loc_14DD020:     Set var_8C = Me.SSPKey
  loc_14DD026:     Call 0.Method_SSPKey_UnknownEvent_90 (Cancel, var_90)
  loc_14DD02E:     var_90.Caption
  loc_14DD04B:     If (CStr(global_80) = "Cancel") Then
  loc_14DD064:       If (EntryType = "SALEBILLENTRY") Then
  loc_14DD067:         GoTo loc_14DD086
  loc_14DD06A:       End If
  loc_14DD07E:       Me.Global.Unload ParentForm
  loc_14DD086:       ' Referenced from:     14DD067
  loc_14DD093:       Me.Global.Unload Me
  loc_14DD09E:     Else
  loc_14DD0A8:       Set var_8C = Me.SSPKey
  loc_14DD0AE:       Call 0.Method_SSPKey_UnknownEvent_90 (Cancel)
  loc_14DD0B6:       var_90.Caption
  loc_14DD0D3:       If (CStr(var_90) = "Clear") Then
  loc_14DD0E3:         Me.TxtKeyBoard.Text = vbNullString
  loc_14DD0EE:       Else
  loc_14DD0F8:         Set var_8C = Me.SSPKey
  loc_14DD0FE:         Call 0.Method_SSPKey_UnknownEvent_90 (Cancel)
  loc_14DD106:         var_90.Caption
  loc_14DD123:         If (CStr(var_90) = "Back") Then
  loc_14DD144:           If (Me.TxtKeyBoard.SelStart > 0) Then
  loc_14DD166:             Set var_90 = Me.TxtKeyBoard
  loc_14DD16C:             var_90.SelStart = (Me.TxtKeyBoard.SelStart - 1)
  loc_14DD187:             Me.TxtKeyBoard.SelLength = 1
  loc_14DD19C:             Me.TxtKeyBoard.SelText = vbNullString
  loc_14DD1A4:           End If
  loc_14DD1A7:         Else
  loc_14DD1B1:           Set var_8C = Me.SSPKey
  loc_14DD1B7:           Call 0.Method_SSPKey_UnknownEvent_90 (Cancel)
  loc_14DD1BF:           var_90.Caption
  loc_14DD1DC:           If (CStr(var_90) = "Delete") Then
  loc_14DD1FB:             Set var_90 = Me.TxtKeyBoard
  loc_14DD215:             If (Me.TxtKeyBoard.SelStart < Len(var_90.Text)) Then
  loc_14DD227:               Me.TxtKeyBoard.SelLength = 1
  loc_14DD23C:               Me.TxtKeyBoard.SelText = vbNullString
  loc_14DD244:             End If
  loc_14DD247:           Else
  loc_14DD251:             Set var_8C = Me.SSPKey
  loc_14DD257:             Call 0.Method_SSPKey_UnknownEvent_90 (Cancel)
  loc_14DD25F:             var_90.Caption
  loc_14DD27C:             If (CStr(var_90) = "Caps Lock") Then
  loc_14DD289:               global_52 = Not(global_52)
  loc_14DD295:               If (global_52 = &HFF) Then
  loc_14DD2A4:                 Set var_8C = Me.SSPKey
  loc_14DD2AA:                 Call 0.Method_SSPKey_UnknownEvent_9C (var_DA, var_86)
  loc_14DD2B8:                 For var_DE = global_52 To (var_DA - 1):             0 = var_DE 'Integer
  loc_14DD2C8:                   Set var_8C = Me.SSPKey
  loc_14DD2CE:                   Call 0.Method_SSPKey_UnknownEvent_90 (var_86, var_90)
  loc_14DD2D6:                   var_90.Caption
  loc_14DD2F5:                   If (Len(CStr(global_52)) = 1) Then
  loc_14DD302:                     Set var_8C = Me.SSPKey
  loc_14DD308:                     Call 0.Method_SSPKey_UnknownEvent_90 (var_86)
  loc_14DD310:                     var_90.Caption
  loc_14DD31E:                     var_F0 = Ucase(CVar(CStr(var_90)))
  loc_14DD331:                     Set var_BC = Me.SSPKey
  loc_14DD337:                     Call 0.Method_SSPKey_UnknownEvent_90 (var_86, var_F4)
  loc_14DD358:                   End If
  loc_14DD35B:                 Next var_DE 'Integer
  loc_14DD363:               Else
  loc_14DD36F:                 Set var_8C = Me.SSPKey
  loc_14DD375:                 Call 0.Method_SSPKey_UnknownEvent_9C (var_DA, var_86)
  loc_14DD383:                 For var_F8 =  To (var_DA - 1):               0 = var_F8 'Integer
  loc_14DD393:                   Set var_8C = Me.SSPKey
  loc_14DD399:                   Call 0.Method_SSPKey_UnknownEvent_90 (var_86)
  loc_14DD3A1:                   var_90.Caption
  loc_14DD3C0:                   If (Len(CStr(var_90)) = 1) Then
  loc_14DD3CD:                     Set var_8C = Me.SSPKey
  loc_14DD3D3:                     Call 0.Method_SSPKey_UnknownEvent_90 (var_86)
  loc_14DD3DB:                     var_90.Caption
  loc_14DD3E9:                     var_F0 = LCase(CVar(CStr(var_90)))
  loc_14DD3FC:                     Set var_BC = Me.SSPKey
  loc_14DD402:                     Call 0.Method_SSPKey_UnknownEvent_90 (var_86, var_F4)
  loc_14DD423:                   End If
  loc_14DD426:                 Next var_F8 'Integer
  loc_14DD42B:               End If
  loc_14DD42E:             Else
  loc_14DD438:               Set var_8C = Me.SSPKey
  loc_14DD43E:               Call 0.Method_SSPKey_UnknownEvent_90 (Cancel)
  loc_14DD446:               var_90.Caption
  loc_14DD463:               If (CStr(var_90) = "Home") Then
  loc_14DD475:                 Me.TxtKeyBoard.SelStart = 0
  loc_14DD480:               Else
  loc_14DD48A:                 Set var_8C = Me.SSPKey
  loc_14DD490:                 Call 0.Method_SSPKey_UnknownEvent_90 (Cancel)
  loc_14DD498:                 var_90.Caption
  loc_14DD4B5:                 If (CStr(var_90) = "Space Bar") Then
  loc_14DD52D:                   Set var_90 = Me.TxtKeyBoard
  loc_14DD552:                   var_B8 = CVar((Len(var_90.Text) - Me.TxtKeyBoard.SelStart)) 'Long
  loc_14DD569:                   var_F0 = Mid(CVar(Me.TxtKeyBoard), (Me.TxtKeyBoard.SelStart + 1), CVar(Me.TxtKeyBoard.SelStart))
  loc_14DD5B0:                   var_B8 = (CVar(CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))) + Space(1))
  loc_14DD5BB:                   global_56 = CStr(CVar(Me.TxtKeyBoard.SelStart))
  loc_14DD5E3:                   Me.TxtKeyBoard.Text = global_56 & CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))
  loc_14DD5FF:                   Me.TxtKeyBoard.SelStart = Len(global_56)
  loc_14DD60A:                 Else
  loc_14DD614:                   Set var_8C = Me.SSPKey
  loc_14DD61A:                   Call 0.Method_SSPKey_UnknownEvent_90 (Cancel)
  loc_14DD622:                   var_90.Caption
  loc_14DD63F:                   If (CStr(var_90) = "End") Then
  loc_14DD65C:                     Set var_90 = Me.TxtKeyBoard
  loc_14DD662:                     var_90.SelStart = Len(Me.TxtKeyBoard.Text)
  loc_14DD674:                   Else
  loc_14DD67E:                     Set var_8C = Me.SSPKey
  loc_14DD684:                     Call 0.Method_SSPKey_UnknownEvent_90 (Cancel)
  loc_14DD68C:                     var_90.Caption
  loc_14DD6A9:                     If (CStr(var_90) = "<") Then
  loc_14DD6CA:                       If (Me.TxtKeyBoard.SelStart > 0) Then
  loc_14DD6EC:                         Set var_90 = Me.TxtKeyBoard
  loc_14DD6F2:                         var_90.SelStart = (Me.TxtKeyBoard.SelStart - 1)
  loc_14DD6FE:                       End If
  loc_14DD701:                     Else
  loc_14DD70B:                       Set var_8C = Me.SSPKey
  loc_14DD711:                       Call 0.Method_SSPKey_UnknownEvent_90 (Cancel)
  loc_14DD719:                       var_90.Caption
  loc_14DD736:                       If (CStr(var_90) = ">") Then
  loc_14DD76F:                         If (Me.TxtKeyBoard.SelStart < Len(Me.TxtKeyBoard.Text)) Then
  loc_14DD791:                           Set var_90 = Me.TxtKeyBoard
  loc_14DD797:                           var_90.SelStart = (Me.TxtKeyBoard.SelStart + 1)
  loc_14DD7A3:                         End If
  loc_14DD7A6:                       Else
  loc_14DD7B0:                         Set var_8C = Me.SSPKey
  loc_14DD7B6:                         Call 0.Method_SSPKey_UnknownEvent_90 (Cancel)
  loc_14DD7BE:                         var_90.Caption
  loc_14DD7DD:                         If (Len(CStr(var_90)) = 1) Then
  loc_14DD855:                           Set var_90 = Me.TxtKeyBoard
  loc_14DD87A:                           var_B8 = CVar((Len(var_90.Text) - Me.TxtKeyBoard.SelStart)) 'Long
  loc_14DD891:                           var_F0 = Mid(CVar(Me.TxtKeyBoard), (Me.TxtKeyBoard.SelStart + 1), CVar(Me.TxtKeyBoard.SelStart))
  loc_14DD8A0:                           global_60 = CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))
  loc_14DD8C8:                           If (global_52 = &HFF) Then
  loc_14DD8DE:                             Set var_8C = Me.SSPKey
  loc_14DD8E4:                             Call 0.Method_SSPKey_UnknownEvent_90 (Cancel, var_90)
  loc_14DD8EC:                             var_90.Caption
  loc_14DD902:                             var_10C = ( + Ucase(CVar(CStr(CVar(CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart))))))))
  loc_14DD90D:                             global_56 = CStr(var_10C)
  loc_14DD929:                           Else
  loc_14DD93C:                             Set var_8C = Me.SSPKey
  loc_14DD942:                             Call 0.Method_SSPKey_UnknownEvent_90 (Cancel, var_90)
  loc_14DD94A:                             var_90.Caption
  loc_14DD960:                             var_10C = ( + LCase(CVar(CStr(CVar(global_56)))))
  loc_14DD96B:                             global_56 = CStr(var_10C)
  loc_14DD984:                           End If
  loc_14DD99E:                           Me.TxtKeyBoard.Text = global_56 & global_60
  loc_14DD9BA:                           Me.TxtKeyBoard.SelStart = Len(global_56)
  loc_14DD9C2:                         End If
  loc_14DD9C2:                       End If
  loc_14DD9C2:                     End If
  loc_14DD9C2:                   End If
  loc_14DD9C2:                 End If
  loc_14DD9C2:               End If
  loc_14DD9C2:             End If
  loc_14DD9C2:           End If
  loc_14DD9C2:         End If
  loc_14DD9C2:       End If
  loc_14DD9C2:     End If
  loc_14DD9C2:   End If
  loc_14DD9C2: End If
  loc_14DD9C9: Set var_BC = Me.TxtKeyBoard
  loc_14DD9E7: Set var_8C = Me.Txt
  loc_14DD9ED: Call 0.Method_SSPKey_UnknownEvent_90 (CInt(global_80), var_90)
  loc_14DD9F5: var_90.Text = var_BC.Text
  loc_14DDA2B: Set var_90 = Me.Txt
  loc_14DDA31: Call 0.Method_SSPKey_UnknownEvent_90 (CInt(global_80), var_BC)
  loc_14DDA39: var_BC.SelStart = Me.TxtKeyBoard.SelStart
  loc_14DDA5A: Set var_8C = Me.Txt
  loc_14DDA60: Call 0.Method_SSPKey_UnknownEvent_90 (CInt(global_80), var_90)
  loc_14DDA7A: If (var_90.Visible = &HFF) Then
  loc_14DDA8D:   Set var_8C = Me.Txt
  loc_14DDA93:   Call 0.Method_SSPKey_UnknownEvent_90 (CInt(global_80))
  loc_14DDA9B:   var_90.SetFocus
  loc_14DDAA7: End If
  loc_14DDAB2: Call Proc_259_19_EE61CC(global_80)
  loc_14DDAB7: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 'F05B0C
  'Data Table: 42C220
  Dim var_8C As TextBox
  Dim var_94 As TextBox
  Dim var_88 As TextBox
  loc_F05A32: If (global_80 = 0) Then
  loc_F05A35:   Call Proc_259_22_10381A4()
  loc_F05A3A: End If
  loc_F05A42: global_80 = CByte(Cancel)
  loc_F05A59: Set var_88 = Me.Txt
  loc_F05A5F: Call 0.Method_Cmd_UnknownEvent_90 (CInt(global_80), var_8C)
  loc_F05A73: Set var_94 = Me.TxtKeyBoard
  loc_F05A79: var_94.Text = var_8C.Text
  loc_F05AAA: Me.TxtKeyBoard.SelStart = Len(Me.TxtKeyBoard.Text)
  loc_F05ADE: Set var_8C = Me.Txt
  loc_F05AE4: Call 0.Method_Cmd_UnknownEvent_90 (CInt(global_80), var_94)
  loc_F05AEC: var_94.SelStart = Me.TxtKeyBoard.SelStart
  loc_F05B03: Call Proc_259_19_EE61CC(CByte(Cancel))
  loc_F05B08: Exit Sub
End Sub

Private Sub Form_Load() 'EE59CC
  'Data Table: 42C220
  loc_EE5909: global_52 = &HFF
  loc_EE5913: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_EE5926: Me.Frame1.BackColor = CLng(MemVar_1F921B0)
  loc_EE593C: Me.FrCustInfo.BackColor = CLng(MemVar_1F921B0)
  loc_EE5952: Me.Shape1.BackColor = CLng(MemVar_1F921B0)
  loc_EE5968: Me.Shape3.BackColor = CLng(MemVar_1F921B0)
  loc_EE5988: global_64 = Me.TxtKeyBoard.Text
  loc_EE59C0: Call Proc_259_19_EE61CC(CByte(0), CByte(0), CDbl(&H40C0))
  loc_EE59C5: Call Proc_259_20_106CB88(CDbl(&HFF0000))
  loc_EE59CA: Exit Sub
End Sub

Private Sub Form_Activate() 'EDE700
  'Data Table: 42C220
  Dim var_8C As TextBox
  Dim var_94 As TextBox
  Dim var_88 As TextBox
  loc_EDE65B: Set var_88 = Me.Txt
  loc_EDE661: Call 0.Method_Form_Activate0 (CInt(global_80), var_8C)
  loc_EDE675: Set var_94 = Me.TxtKeyBoard
  loc_EDE67B: var_94.Text = var_8C.Text
  loc_EDE6AC: Me.TxtKeyBoard.SelStart = Len(Me.TxtKeyBoard.Text)
  loc_EDE6E0: Set var_8C = Me.Txt
  loc_EDE6E6: Call 0.Method_Form_Activate0 (CInt(global_80), var_94)
  loc_EDE6EE: var_94.SelStart = Me.TxtKeyBoard.SelStart
  loc_EDE6FC: Exit Sub
  loc_EDE6FD: If  Then Exit Sub
  loc_EDE6FD: End If
End Sub

Public Property Let ParentForm(vNewValue) 'E0E5E4
  'Data Table: 42C220
  loc_E0E5DD: Set global_68 = vNewValue
  loc_E0E5E1: Exit Sub
End Sub

Public Property Get ParentForm() 'E0E62C
  'Data Table: 42C220
  loc_E0E620: Set var_88 = global_68 
  loc_E0E624: ParentForm = 
End Sub

Public Property Let InputType(vNewValue) 'E0E6BC
  'Data Table: 42C220
  loc_E0E6B4: global_72 = vNewValue
  loc_E0E6B8: Exit Sub
End Sub

Public Property Get InputType() 'E0E7DC
  'Data Table: 42C220
  loc_E0E7D0: var_88 = global_72
  loc_E0E7D3: InputType = 
End Sub

Public Property Let EntryType(vNewValue) 'E0E824
  'Data Table: 42C220
  loc_E0E81C: global_76 = vNewValue
  loc_E0E820: Exit Sub
  loc_E0E821: StAryRecCopy
End Sub

Public Property Get EntryType() 'E0E8FC
  'Data Table: 42C220
  loc_E0E8F0: var_88 = global_76
  loc_E0E8F3: EntryType = 
End Sub

Public Property Let tPhoneNo(vNewValue) 'E0EA1C
  'Data Table: 42C220
  loc_E0EA14: global_100 = vNewValue
  loc_E0EA18: Exit Sub
End Sub

Public Property Get tPhoneNo() 'E0EAAC
  'Data Table: 42C220
  loc_E0EAA0: var_88 = global_100
  loc_E0EAA3: tPhoneNo = 
  loc_E0EAA9: Exit Sub
End Sub

Public Property Let tCustName(vNewValue) 'E0EB84
  'Data Table: 42C220
  loc_E0EB7C: global_104 = vNewValue
  loc_E0EB80: Exit Sub
  loc_E0EB81: Exit Sub
End Sub

Public Property Get tCustName() 'E0ECEC
  'Data Table: 42C220
  loc_E0ECE0: var_88 = global_104
  loc_E0ECE3: tCustName = 
End Sub

Public Property Let tAddress1(vNewValue) 'E1492C
  'Data Table: 42C220
  loc_E14924: global_108 = vNewValue
  loc_E14928: Exit Sub
  loc_E14929: Exit Sub
End Sub

Public Property Get tAddress1() 'E1441C
  'Data Table: 42C220
  loc_E14410: var_88 = global_108
  loc_E14413: tAddress1 = 
End Sub

Public Property Let tAddress2(vNewValue) 'E144F4
  'Data Table: 42C220
  loc_E144EC: global_112 = vNewValue
  loc_E144F0: Exit Sub
  loc_E144F1: Exit Sub
End Sub

Public Property Get tAddress2() 'E0F3F4
  'Data Table: 42C220
  loc_E0F3E8: var_88 = global_112
  loc_E0F3EB: tAddress2 = 
End Sub

Public Sub SetOnLineCustDetail() 'F48F00
  'Data Table: 42C220
  Dim var_90 As TextBox
  loc_F48DEC: On Error Goto loc_F48EBC
  loc_F48E05: Set var_8C = Me.Txt
  loc_F48E0B: Call 0.Method_SetOnLineCustDetail0 (CInt(0), var_90)
  loc_F48E13: var_90.Text = tPhoneNo
  loc_F48E38: Set var_8C = Me.Txt
  loc_F48E3E: Call 0.Method_SetOnLineCustDetail0 (CInt(1), var_90)
  loc_F48E46: var_90.Text = tCustName
  loc_F48E6B: Set var_8C = Me.Txt
  loc_F48E71: Call 0.Method_SetOnLineCustDetail0 (CInt(2), var_90)
  loc_F48E79: var_90.Text = tAddress1
  loc_F48E8B: var_88 = tAddress2
  loc_F48E9E: Set var_8C = Me.Txt
  loc_F48EA4: Call 0.Method_SetOnLineCustDetail0 (CInt(3), var_90)
  loc_F48EAC: var_90.Text = var_88
  loc_F48EBB: Exit Sub
  loc_F48EBC: ' Referenced from: F48DEC
  loc_F48EC4: Set var_8C = Err()
  loc_F48ECA: Call 0.Method_arg_2C (var_88)
  loc_F48EEB: MsgBox(CVar(var_88), &H40, "Information", var_E0, var_100)
  loc_F48EFE: Exit Sub
  loc_F48EFF: Exit Sub
End Sub

Public Sub Proc_259_19_EE61CC(arg_C) 'EE61CC
  'Data Table: 42C220
  Dim var_98 As Label
  loc_EE6112: Set var_8C = Me.Label1
  loc_EE6118: Call 0.Method_Proc_259_19_EE61CCC (var_8E, var_86)
  loc_EE6128: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE6137:   If (arg_C = var_86) Then
  loc_EE614E:     Set var_8C = Me.Label1
  loc_EE6154:     Call 0.Method_Proc_259_19_EE61CC0 (CInt(arg_C), var_98)
  loc_EE615C:     var_98.BackColor = CLng(global_84)
  loc_EE616B:   Else
  loc_EE617F:     Set var_8C = Me.Label1
  loc_EE6185:     Call 0.Method_Proc_259_19_EE61CC0 (CInt(var_86), var_98)
  loc_EE618D:     var_98.BackColor = CLng(global_92)
  loc_EE6199:   End If
  loc_EE619C: Next var_92 'Byte
  loc_EE61A5: InputType = vbNullString
  loc_EE61B9: If (arg_C = 0) Then
  loc_EE61BF:   InputType = "Numeric"
  loc_EE61C4: End If
  loc_EE61C4: Call Proc_259_20_106CB88()
  loc_EE61C9: Exit Sub
End Sub

Public Sub Proc_259_20_106CB88
  'Data Table: 42C220
  Dim var_98 As SSPanel
  Dim var_108 As SSPanel
  Dim var_134 As SSPanel
  loc_106C934: Set var_8C = Me.SSPKey
  loc_106C93A: Call 0.Method_Proc_259_20_106CB88C (var_8E, var_86)
  loc_106C948: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_106C95C:   Set var_8C = Me.SSPKey
  loc_106C962:   Call 0.Method_Proc_259_20_106CB880 (var_86, var_98)
  loc_106C96A:   var_98.Enabled = True
  loc_106C979: Next var_92 'Integer
  loc_106C997: var_EC = Ucase(CVar(InputType)) 'Variant
  loc_106C9A9: If Not (var_EC = "DATE") Then
  loc_106C9B7:   If Not (var_EC = "TIME") Then
  loc_106C9C5:     If (var_EC = "NUMERIC") Then
  loc_106C9C8:     End If
  loc_106C9C8:   End If
  loc_106C9D4:   Set var_8C = Me.SSPKey
  loc_106C9DA:   Call 0.Method_Proc_259_20_106CB88C (var_8E, var_86)
  loc_106C9E8:   For var_100 =  To (var_8E - 1): 0 = var_100 'Integer
  loc_106C9F8:     Set var_8C = Me.SSPKey
  loc_106C9FE:     Call 0.Method_Proc_259_20_106CB880 (var_86)
  loc_106CA06:     var_98.Caption
  loc_106CA22:     Set var_104 = Me.SSPKey
  loc_106CA28:     Call 0.Method_Proc_259_20_106CB880 (var_86, var_108)
  loc_106CA30:     var_108.Caption
  loc_106CA5D:     Set var_130 = Me.SSPKey
  loc_106CA63:     Call 0.Method_Proc_259_20_106CB880 (var_86, var_134)
  loc_106CA6B:     var_134.Caption
  loc_106CAB7:     If ( And (Asc(CStr(Ucase(CVar(CStr(( And (Asc(CStr(Ucase(CVar(CStr((Len(CStr(var_98)) = 1)))))) >= &H41))))))) <= &H5A)) Then
  loc_106CAC9:       Set var_8C = Me.SSPKey
  loc_106CACF:       Call 0.Method_Proc_259_20_106CB880 (var_86, var_98)
  loc_106CAD7:       var_98.Enabled = False
  loc_106CAE6:     Else
  loc_106CAF0:       Set var_8C = Me.SSPKey
  loc_106CAF6:       Call 0.Method_Proc_259_20_106CB880 (var_86)
  loc_106CAFE:       var_98.Caption
  loc_106CB18:       Set var_104 = Me.SSPKey
  loc_106CB1E:       Call 0.Method_Proc_259_20_106CB880 (var_86, var_108)
  loc_106CB26:       var_108.Caption
  loc_106CB50:       If ( Or (CStr((CStr(var_98) = "Caps Lock")) = "Space Bar")) Then
  loc_106CB62:         Set var_8C = Me.SSPKey
  loc_106CB68:         Call 0.Method_Proc_259_20_106CB880 (var_86, var_98)
  loc_106CB70:         var_98.Enabled = False
  loc_106CB7C:       End If
  loc_106CB7C:     End If
  loc_106CB7F:   Next var_100 'Integer
  loc_106CB84: End If
  loc_106CB84: Exit Sub
End Sub

Public Sub Proc_259_21_1245490
  'Data Table: 42C220
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim var_D4 As String
  Dim var_86 As Integer
  Dim var_F8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B0 As Integer
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_148 As Variant
  Dim var_128 As Variant
  loc_1244F84: On Error Goto loc_124544C
  loc_1244F9C: ParentForm.FrameOption.Visible = False
  loc_1244FDF: If ((CLng(Val(CStr(ParentForm.Fgrid1.Col))) Mod 6) = 1) Then
  loc_1244FF9:   var_86 = CInt(ParentForm.Fgrid1.Col)
  loc_1245009: Else
  loc_1245035:   var_D4 = CStr(ParentForm.Fgrid1.Col)
  loc_1245049:   var_108 = (ParentForm.Fgrid1.Col - CVar((CLng(Val(var_D4)) Mod 6)))
  loc_1245052:   var_118 = (var_108 + 1)
  loc_1245057:   var_86 = CInt(var_118)
  loc_1245071: End If
  loc_1245081: var_D0 = ParentForm.Fgrid1.Row
  loc_124509F: VarLateMemCallLdRfVar
  loc_12450C5: var_128 = Right(Ucase(Trim(ParentForm.Fgrid1)), 6)
  loc_12450CD: var_138 = "VACANT"
  loc_12450E7: var_170 = ParentForm.Fgrid1.Row
  loc_12450F4: var_190 = CVar((var_86 + 3)) 'Integer
  loc_1245148: If CBool(Not var_190 And (ParentForm.Fgrid1.TextMatrix = "Y")) Then
  loc_1245153:   If (MemVar_1F9220C = "Yes") Then
  loc_1245179:     New RSTouchScreenSaleBill.ParentForm = CVar(ParentForm)
  loc_1245183:   Else
  loc_124518D:     Set var_8C = New RSSaleBill
  loc_1245193:   End If
  loc_12451A3:   var_148 = ParentForm.Fgrid1.Row
  loc_12451CA:   var_F8 = (ParentForm.Fgrid1.Col + 1)
  loc_12451DB:   var_128 = (6 * Fix((ParentForm.Fgrid1.Col / 6)))
  loc_12451F0:   VarLateMemCallLdRfVar
  loc_1245227:   If CBool(Trim(ParentForm.Fgrid1) <> vbNullString) Then
  loc_124523A:     var_148 = ParentForm.Fgrid1.Row
  loc_1245249:     var_D8 = ParentForm
  loc_1245261:     var_F8 = (var_D8.Fgrid1.Col + 1)
  loc_1245265:     var_B0 = 6
  loc_1245272:     var_128 = (6 * Fix((ParentForm.Fgrid1.Col / var_B0)))
  loc_1245287:     VarLateMemCallLdRfVar
  loc_124529E:     var_8C.PTableNo = Trim(ParentForm.Fgrid1)
  loc_12452C1:   Else
  loc_12452C1:     var_A0 = 1
  loc_12452C7:     var_138 = 0
  loc_12452DD:     VarLateMemCallLdRfVar
  loc_12452E8:     var_E8 = Trim(ParentForm.Fgrid1)
  loc_12452F4:     var_8C.PTableNo = var_E8
  loc_1245304:   End If
  loc_1245304:   var_A0 = 1
  loc_1245310:   var_8C.OpenMode = var_A0
  loc_1245328:   var_8C.pRestCode = ParentForm.LocalRestCode
  loc_124533D:   Set var_90 = var_D8(CInt(0))
  loc_1245343:   Call 0.Method_Proc_259_21_12454900 (var_138, var_A0, var_128, var_148, var_128, var_148)
  loc_124535E:   var_8C.sPhoneNo = Trim(CVar(var_D8))
  loc_1245377:   Set var_90 = var_D8(CInt(1))
  loc_124537D:   Call 0.Method_Proc_259_21_12454900 (var_170, (var_128 = var_138), var_86)
  loc_124538C:   var_D0 = Trim(CVar(var_D8))
  loc_1245398:   var_8C.sCustName = var_D0
  loc_12453B1:   Set var_90 = var_D8(CInt(2))
  loc_12453B7:   Call 0.Method_Proc_259_21_12454900 (var_D0, var_86)
  loc_12453D2:   var_8C.sAddress1 = Trim(CVar(var_D8))
  loc_12453EB:   Set var_90 = var_D8(CInt(3))
  loc_12453F1:   Call 0.Method_Proc_259_21_12454900 (var_86)
  loc_124540C:   var_8C.sAddress2 = Trim(CVar(var_D8))
  loc_124541D:   Call var_8C.SetOnLineSalingCustDetail
  loc_124542E:   var_8C.Show var_A0, var_B0
  loc_1245436:   Call var_8C.TopCtrl1_eAdd
  loc_124543F:   var_210 = True 'Variant
  loc_1245443: End If
  loc_1245448: Set var_8C = Nothing
  loc_124544B: Exit Sub
  loc_124544C: ' Referenced from: 1244F84
  loc_1245454: Set var_90 = Err()
  loc_124545A: Call 0.Method_arg_2C (var_D4)
  loc_124547B: MsgBox(CVar(var_D4), &H40, "Information", var_E8, ParentForm.Fgrid1.Col)
  loc_124548E: Exit Sub
  loc_124548F: Exit Sub
End Sub

Public Sub Proc_259_22_10381A4
  'Data Table: 42C220
  Dim unk_42C264 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Fields15
  Dim var_140 As TextBox
  Dim var_C0 As TextBox
  loc_1037F87: If (var_98 = 0) Then
  loc_1037FA7:   Set var_BC = Me.Txt
  loc_1037FAD:   Call 0.Method_Proc_259_22_10381A40 (CInt(0), var_C0, "Select * from guestprof Where MobileNo='")
  loc_1037FDB:   unk_42C264.Execute CStr(var_134 & Trim(CVar(var_C0)) & "'"), -1, var_138
  loc_1037FE6:   Set var_88 = var_138
  loc_1038014:   If (var_88.RecordCount > 0) Then
  loc_103801A:     var_88.MoveLast
  loc_1038055:     Set var_138 = Me.Txt
  loc_103805B:     Call 0.Method_Proc_259_22_10381A40 (CInt(1), var_140)
  loc_1038063:     var_140.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")))
  loc_10380AD:     Set var_138 = Me.Txt
  loc_10380B3:     Call 0.Method_Proc_259_22_10381A40 (CInt(2), var_140)
  loc_10380BB:     var_140.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")))
  loc_10380E6:     var_C0 = var_88.Fields.Item("CityName")
  loc_1038105:     Set var_138 = Me.Txt
  loc_103810B:     Call 0.Method_Proc_259_22_10381A40 (CInt(3), var_140)
  loc_1038113:     var_140.Text = Proc_6_38_E68A98(CVar(var_C0))
  loc_103812A:   Else
  loc_1038138:     Set var_BC = Me.Txt
  loc_103813E:     Call 0.Method_Proc_259_22_10381A40 (CInt(1), var_C0)
  loc_1038146:     var_C0.Text = vbNullString
  loc_1038160:     Set var_BC = Me.Txt
  loc_1038166:     Call 0.Method_Proc_259_22_10381A40 (CInt(2), var_C0)
  loc_103816E:     var_C0.Text = vbNullString
  loc_1038188:     Set var_BC = Me.Txt
  loc_103818E:     Call 0.Method_Proc_259_22_10381A40 (CInt(3), var_C0)
  loc_1038196:     var_C0.Text = vbNullString
  loc_10381A2:   End If
  loc_10381A2: End If
  loc_10381A2: Exit Sub
End Sub
