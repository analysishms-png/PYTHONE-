VERSION 5.00
Begin VB.Form UserPermission
  Caption = "User Permissions"
  BackColor = &HFFC0C0&
  ForeColor = &H0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  Icon = "UserPermission.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 105
  ClientTop = 600
  ClientWidth = 16155
  ClientHeight = 10155
  LockControls = -1  'True
  WhatsThisHelp = -1  'True
  PaletteMode = 1
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 9705
    Width = 16155
    Height = 450
    Visible = 0   'False
    TabIndex = 49
  End
  Begin BtnEnh BtnEnh
    Index = 0
    Left = 5925
    Top = 1875
    Width = 1020
    Height = 645
    TabIndex = 24
  End
  Begin BtnEnh BtnEnh1
    Left = 7095
    Top = 705
    Width = 2790
    Height = 855
    Visible = 0   'False
    TabIndex = 23
  End
  Begin CommandButton CmdCopyUser
    Caption = "Copy User Permission"
    BackColor = &H8080&
    Left = 5925
    Top = 6915
    Width = 1035
    Height = 630
    TabIndex = 21
    TabStop = 0   'False
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin Frame FrCopyUserPermission
    Caption = "Copy User Permission"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 6975
    Top = 6465
    Width = 5940
    Height = 1815
    Visible = 0   'False
    TabIndex = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin CommandButton CmdCopyUserPerm
      Caption = "COPY"
      BackColor = &HC0FFFF&
      Left = 4485
      Top = 795
      Width = 1065
      Height = 735
      TabIndex = 12
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin DataCombo DCFirm
      Left = 1725
      Top = 315
      Width = 4125
      Height = 330
      TabIndex = 13
    End
    Begin DataCombo DCYear
      Left = 1740
      Top = 660
      Width = 2535
      Height = 330
      TabIndex = 14
    End
    Begin DataCombo DSUserName
      Left = 1740
      Top = 1005
      Width = 2535
      Height = 330
      TabIndex = 15
    End
    Begin DataCombo DDUserName
      Left = 1740
      Top = 1350
      Width = 2535
      Height = 330
      TabIndex = 16
    End
    Begin Label Label6
      Caption = "Firm Name"
      BackColor = &HC0FFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 360
      Width = 1605
      Height = 225
      TabIndex = 20
      Alignment = 2 'Center
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
    Begin Label Label7
      Caption = "Financial Year"
      BackColor = &HC0FFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 705
      Width = 1620
      Height = 240
      TabIndex = 19
      Alignment = 2 'Center
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
    Begin Label Label8
      Caption = "Desti. User Name"
      BackColor = &HC0FFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 1395
      Width = 1620
      Height = 240
      TabIndex = 18
      Alignment = 2 'Center
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
    Begin Label Label9
      Caption = "Source User Name"
      BackColor = &HC0FFFF&
      ForeColor = &HC00000&
      Left = 90
      Top = 1050
      Width = 1800
      Height = 225
      TabIndex = 17
      Alignment = 2 'Center
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
  End
  Begin DataCombo dUserName
    Left = 1620
    Top = 570
    Width = 4245
    Height = 315
    TabIndex = 0
  End
  Begin MSHFlexGrid FGrid
    Left = 90
    Top = 1890
    Width = 5835
    Height = 6660
    TabIndex = 5
  End
  Begin DataCombo dFirm
    Left = 1620
    Top = 900
    Width = 4245
    Height = 315
    TabIndex = 1
  End
  Begin DataCombo dYear
    Left = 1620
    Top = 1230
    Width = 4245
    Height = 315
    TabIndex = 2
  End
  Begin DataCombo dSection
    Left = 1620
    Top = 1560
    Width = 4245
    Height = 315
    TabIndex = 3
  End
  Begin DataCombo dSubSection
    Left = 11055
    Top = 9465
    Width = 4245
    Height = 315
    Visible = 0   'False
    TabIndex = 4
  End
  Begin BtnEnh BtnEnh
    Index = 1
    Left = 5925
    Top = 2505
    Width = 1020
    Height = 645
    TabIndex = 25
  End
  Begin BtnEnh BtnEnh
    Index = 2
    Left = 5925
    Top = 3135
    Width = 1020
    Height = 645
    TabIndex = 26
  End
  Begin BtnEnh BtnEnh
    Index = 3
    Left = 5925
    Top = 3795
    Width = 1020
    Height = 645
    TabIndex = 27
  End
  Begin BtnEnh BtnEnh
    Index = 4
    Left = 5925
    Top = 4425
    Width = 1020
    Height = 645
    TabIndex = 28
  End
  Begin BtnEnh BtnEnh
    Index = 5
    Left = 5925
    Top = 5055
    Width = 1020
    Height = 645
    TabIndex = 29
  End
  Begin BtnEnh BtnEnhPrintuser
    Left = 5925
    Top = 5685
    Width = 1020
    Height = 645
    TabIndex = 30
  End
  Begin BtnEnh BtnEnhExit
    Left = 5910
    Top = 6270
    Width = 1050
    Height = 645
    TabIndex = 31
  End
  Begin SSTab SSTabSection
    Left = 7035
    Top = 2220
    Width = 3660
    Height = 4200
    Visible = 0   'False
    TabIndex = 32
    Begin TextBox Txt
      Index = 9
      ForeColor = &HC00000&
      Left = 2445
      Top = 2235
      Width = 615
      Height = 285
      TabIndex = 54
      BorderStyle = 0 'None
      MaxLength = 5
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
      ForeColor = &HC00000&
      Left = 2445
      Top = 1920
      Width = 615
      Height = 285
      TabIndex = 52
      BorderStyle = 0 'None
      MaxLength = 5
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
      ForeColor = &HC00000&
      Left = 2445
      Top = 1605
      Width = 615
      Height = 285
      TabIndex = 39
      BorderStyle = 0 'None
      MaxLength = 5
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
      Left = -73215
      Top = 1200
      Width = 975
      Height = 285
      TabIndex = 40
      BorderStyle = 0 'None
      MaxLength = 5
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
      ForeColor = &HC00000&
      Left = 2445
      Top = 975
      Width = 615
      Height = 285
      TabIndex = 37
      BorderStyle = 0 'None
      MaxLength = 5
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
      BackColor = &HFF0000&
      Left = 9405
      Top = 3570
      Width = 1260
      Height = 1830
      Visible = 0   'False
      TabIndex = 41
      BorderStyle = 0 'None
      Begin ListView ListView
        Left = 135
        Top = 105
        Width = 1245
        Height = 1830
        TabStop = 0   'False
        TabIndex = 42
      End
    End
    Begin TextBox Txt
      Index = 1
      ForeColor = &HC00000&
      Left = -72315
      Top = 990
      Width = 615
      Height = 285
      TabIndex = 33
      BorderStyle = 0 'None
      MaxLength = 5
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
      Left = -72315
      Top = 1305
      Width = 615
      Height = 285
      TabIndex = 34
      BorderStyle = 0 'None
      MaxLength = 5
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
      ForeColor = &HC00000&
      Left = -72315
      Top = 1620
      Width = 615
      Height = 285
      TabIndex = 35
      BorderStyle = 0 'None
      MaxLength = 5
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
      ForeColor = &HC00000&
      Left = 2445
      Top = 1290
      Width = 615
      Height = 285
      TabIndex = 38
      BorderStyle = 0 'None
      MaxLength = 5
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
      Left = -72315
      Top = 1935
      Width = 615
      Height = 285
      TabIndex = 36
      BorderStyle = 0 'None
      MaxLength = 5
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
    Begin Label Label
      Caption = "Refund Cash Card Amt."
      Index = 9
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = 270
      Top = 2250
      Width = 2205
      Height = 240
      TabIndex = 55
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Free Item Allow"
      Index = 8
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = 270
      Top = 1935
      Width = 1515
      Height = 240
      TabIndex = 53
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Change KOT Item/Qty"
      Index = 6
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = 270
      Top = 1620
      Width = 2055
      Height = 240
      TabIndex = 51
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "FacilityBilling"
      Index = 5
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = -74655
      Top = 1200
      Width = 1305
      Height = 240
      TabIndex = 50
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Discount Allow Upto"
      Index = 7
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = 270
      Top = 975
      Width = 1905
      Height = 240
      TabIndex = 48
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Cancel Guest Bill"
      Index = 0
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = -74580
      Top = 1005
      Width = 1635
      Height = 240
      TabIndex = 47
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Change Room Dtl"
      Index = 1
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = -74580
      Top = 1320
      Width = 1665
      Height = 240
      TabIndex = 46
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Delete Guest Charges"
      Index = 2
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = -74580
      Top = 1635
      Width = 2055
      Height = 240
      TabIndex = 45
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Settlement Allow"
      Index = 3
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = 270
      Top = 1305
      Width = 1635
      Height = 240
      TabIndex = 44
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Change Guest Charges"
      Index = 4
      BackColor = &H80000005&
      ForeColor = &H80&
      Left = -74580
      Top = 1950
      Width = 2175
      Height = 240
      TabIndex = 43
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
      Appearance = 0 'Flat
    End
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 22
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
  Begin Label Label5
    Caption = "Sub Section"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 9735
    Top = 9480
    Width = 1665
    Height = 270
    Visible = 0   'False
    TabIndex = 10
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
  Begin Label Label4
    Caption = "Section"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 300
    Top = 1575
    Width = 1665
    Height = 270
    TabIndex = 9
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
  Begin Label Label3
    Caption = "Financial Year"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 300
    Top = 1245
    Width = 1665
    Height = 270
    TabIndex = 8
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
  Begin Label Label2
    Caption = "Firm Name"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 300
    Top = 915
    Width = 1665
    Height = 270
    TabIndex = 7
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
    Caption = "User Name"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 300
    Top = 585
    Width = 1665
    Height = 270
    TabIndex = 6
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
End

Attribute VB_Name = "UserPermission"


Private Sub dUserName_UnknownEvent_B 'E260F4
  'Data Table: 509E98
  loc_E260DA: If (CLng(Cancel) = &HD) Then
  loc_E260EB:   Proc_303_0_FB9B68("	")
  loc_E260F3: End If
  loc_E260F3: Exit Sub
End Sub

Private Sub dUserName_UnknownEvent_11 'DFF44C
  'Data Table: 509E98
  loc_DFF444: Call Proc_151_29_1366D64()
  loc_DFF449: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E56948
  'Data Table: 509E98
  Dim var_92 As Integer
  loc_E5691A: Set var_88 = Me.Txt
  loc_E56920: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E5692E: Proc_6_74_E226B0(var_8C)
  loc_E5693A: Call Proc_151_31_DFC6F4(var_8C)
  loc_E56942: var_92 = Index
  loc_E56945: Exit Sub
  loc_E56946: CExtInstUnk
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E6A538
  'Data Table: 509E98
  Dim var_86 As Integer
  loc_E6A4EA: If (CLng(Shift) = &H1B) Then
  loc_E6A4ED:   Call Proc_151_31_DFC6F4()
  loc_E6A4F2:   Exit Sub
  loc_E6A4F3: End If
  loc_E6A4F6: var_86 = KeyCode
  loc_E6A50E: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E6A517:   Proc_6_75_E527CC(Shift, arg_14)
  loc_E6A51C: End If
  loc_E6A526: If (CLng(Shift) = &H26) Then
  loc_E6A52F:   Proc_6_76_E52838(Shift, arg_14)
  loc_E6A534: End If
  loc_E6A534: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FFED18
  'Data Table: 509E98
  Dim var_86 As Integer
  Dim var_D0 As TextBox
  Dim arg_10 As Integer
  loc_FFEB17: Proc_6_58_E054C0(arg_10)
  loc_FFEB1F: var_86 = KeyAscii
  loc_FFEB2A: If Not (var_86 = CInt(1)) Then
  loc_FFEB35:   If Not (var_86 = CInt(2)) Then
  loc_FFEB40:     If Not (var_86 = CInt(3)) Then
  loc_FFEB4B:       If Not (var_86 = CInt(5)) Then
  loc_FFEB56:         If Not (var_86 = CInt(4)) Then
  loc_FFEB5F:           If Not (var_86 = 7) Then
  loc_FFEB68:             If Not (var_86 = 8) Then
  loc_FFEB71:               If (var_86 = 9) Then
  loc_FFEB74:               End If
  loc_FFEB74:             End If
  loc_FFEB74:           End If
  loc_FFEB74:         End If
  loc_FFEB74:       End If
  loc_FFEB74:     End If
  loc_FFEB74:   End If
  loc_FFEB9D:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_FFEBAD:     Set var_CC = Me.Txt
  loc_FFEBB3:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_FFEBBB:     var_D0.Text = "Yes"
  loc_FFEBCA:   Else
  loc_FFEBF3:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_FFEC03:       Set var_CC = Me.Txt
  loc_FFEC09:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_FFEC11:       var_D0.Text = "No"
  loc_FFEC1D:     End If
  loc_FFEC1D:   End If
  loc_FFEC1F:   arg_10 = 0
  loc_FFEC25: Else
  loc_FFEC2D:   If (var_86 = CInt(0)) Then
  loc_FFEC34:     Set var_D0 = Me.Txt
  loc_FFEC4D:     Proc_6_42_129A86C(var_D0, KeyAscii, 2)
  loc_FFEC5C:   Else
  loc_FFEC64:     If (var_86 = CInt(6)) Then
  loc_FFEC90:       If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_FFECA0:         Set var_CC = Me.Txt
  loc_FFECA6:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Auto")
  loc_FFECAE:         var_D0.Text = 2
  loc_FFECBD:       Else
  loc_FFECE6:         If (Ucase(Chr(CLng(arg_10))) = "S") Then
  loc_FFECF6:           Set var_CC = Me.Txt
  loc_FFECFC:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Semi")
  loc_FFED04:           var_D0.Text = arg_10
  loc_FFED10:         End If
  loc_FFED10:       End If
  loc_FFED12:       arg_10 = 0
  loc_FFED15:     End If
  loc_FFED15:   End If
  loc_FFED15: End If
  loc_FFED15: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFFF3C
  'Data Table: 509E98
  Dim var_86 As Integer
  loc_DFFF37: var_86 = KeyCode
  loc_DFFF3A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4647C
  'Data Table: 509E98
  loc_E4645A: Set var_88 = Me.Txt
  loc_E46460: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4646E: Proc_6_73_E22704(var_8C)
  loc_E4647A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FE2BF0
  'Data Table: 509E98
  Dim var_86 As Integer
  Dim var_90 As TextBox
  loc_FE2A20: On Error Resume Next
  loc_FE2A25: Call Proc_151_31_DFC6F4()
  loc_FE2A2F: var_86 = Cancel
  loc_FE2A3C: If Not (var_86 = CInt(1)) Then
  loc_FE2A47:   If Not (var_86 = CInt(2)) Then
  loc_FE2A52:     If Not (var_86 = CInt(3)) Then
  loc_FE2A5D:       If Not (var_86 = CInt(5)) Then
  loc_FE2A68:         If Not (var_86 = CInt(4)) Then
  loc_FE2A71:           If Not (var_86 = 7) Then
  loc_FE2A7A:             If Not (var_86 = 8) Then
  loc_FE2A83:               If (var_86 = 9) Then
  loc_FE2A86:               End If
  loc_FE2A86:             End If
  loc_FE2A86:           End If
  loc_FE2A86:         End If
  loc_FE2A86:       End If
  loc_FE2A86:     End If
  loc_FE2A86:   End If
  loc_FE2A92:   Set var_8C = Me.Txt
  loc_FE2A98:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FE2AD3:   If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_FE2AE5:     Set var_8C = Me.Txt
  loc_FE2AEB:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FE2AF3:     var_90.Text = "Yes"
  loc_FE2B02:   Else
  loc_FE2B13:     Set var_8C = Me.Txt
  loc_FE2B19:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FE2B21:     var_90.Text = "No"
  loc_FE2B2D:   End If
  loc_FE2B32: Else
  loc_FE2B3C:   If (var_86 = CInt(6)) Then
  loc_FE2B4B:     Set var_8C = Me.Txt
  loc_FE2B51:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FE2B8C:     If (Ucase(Left(CVar(var_90), 1)) = "A") Then
  loc_FE2B9E:       Set var_8C = Me.Txt
  loc_FE2BA4:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FE2BAC:       var_90.Text = "Auto"
  loc_FE2BBB:     Else
  loc_FE2BCC:       Set var_8C = Me.Txt
  loc_FE2BD2:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FE2BDA:       var_90.Text = "Semi"
  loc_FE2BE6:     End If
  loc_FE2BE8:   End If
  loc_FE2BE8: End If
  loc_FE2BEC: Exit Sub
End Sub

Private Sub BtnEnh_UnknownEvent_9 '18F9928
  'Data Table: 509E98
  Dim var_A2 As Integer
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_134 As Variant
  Dim var_164 As String
  Dim var_180 As Double
  Dim var_DC As Variant
  Dim var_168 As String
  Dim var_16C As String
  Dim var_170 As String
  Dim unk_509EC3 As Connection15
  Dim var_120 As Variant
  Dim var_174 As Variant
  Dim var_144 As Variant
  Dim var_184 As String
  Dim var_188 As String
  Dim var_194 As String
  Dim var_88 As Recordset15
  Dim var_9E As Integer
  Dim var_1AC As Variant
  Dim var_11C As Variant
  Dim var_1CC As Variant
  Dim var_1E0 As Variant
  Dim var_200 As Variant
  Dim var_178 As Variant
  Dim var_154 As Variant
  Dim var_260 As Variant
  Dim var_2B0 As Variant
  Dim var_2C0 As Variant
  Dim var_31C As Variant
  Dim var_32C As Variant
  Dim var_410 As Variant
  Dim var_420 As Variant
  Dim var_464 As Variant
  Dim var_488 As Variant
  Dim var_4CC As Variant
  Dim var_4E0 As Variant
  Dim var_214 As String
  Dim var_218 As String
  Dim var_36C As Variant
  Dim var_38C As Variant
  Dim var_3AC As Variant
  Dim var_430 As Variant
  Dim var_440 As Variant
  Dim var_460 As Variant
  Dim var_498 As Variant
  Dim var_4C8 As Variant
  Dim var_500 As Variant
  Dim var_98 As Recordset15
  Dim var_478 As Fields15
  Dim var_1F0 As Variant
  Dim var_550 As Fields15
  Dim var_4F0 As Variant
  Dim var_23C As Variant
  Dim var_558 As Fields15
  Dim var_544 As Variant
  Dim var_56C As Variant
  Dim var_590 As Fields15
  Dim var_594 As Field20
  Dim var_5B4 As Variant
  Dim var_5C4 As Variant
  Dim var_548 As Field20
  Dim var_5A4 As Variant
  Dim var_5D8 As Fields15
  Dim var_5DC As Variant
  Dim var_5EC As Variant
  Dim var_5FC As Variant
  Dim var_A0 As Integer
  Dim var_5D4 As Variant
  Dim var_660 As Variant
  Dim var_6E0 As Variant
  Dim var_60C As Variant
  Dim var_680 As Variant
  Dim var_690 As Variant
  Dim var_700 As Variant
  Dim var_34C As Variant
  Dim var_670 As Variant
  Dim var_6B0 As Variant
  Dim var_6F0 As Variant
  Dim BtnEnh_UnknownEvent_94 As Variant
  loc_18F6FBC: On Error Goto loc_18F98D6
  loc_18F6FC4: var_A2 = Cancel
  loc_18F6FCF: If (var_A2 = 0) Then
  loc_18F6FFC:   For var_BC = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_8E = var_BC 'Byte
  loc_18F7016:     Me.FGrid.Col = CVar(CLng(7))
  loc_18F7034:     Me.FGrid.Row = CVar(CLng(var_8E))
  loc_18F704E:     Me.FGrid.CellFontName = "wingdings"
  loc_18F706A:     Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_18F7086:     Me.FGrid.Col = CVar(CLng(5))
  loc_18F70AC:     If (CBool(Me.FGrid.CellFontBold) = &HFF) Then
  loc_18F70C3:       Me.FGrid.Col = CVar(CLng(7))
  loc_18F70E0:       Me.FGrid.CellForeColor = &HFF
  loc_18F70EB:     Else
  loc_18F7101:       Me.FGrid.Col = CVar(CLng(7))
  loc_18F711E:       Me.FGrid.CellForeColor = &HFF00FF
  loc_18F7126:     End If
  loc_18F712F:     var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F7147:     var_EC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_18F714C:     var_10C = "þ"
  loc_18F7156:     Set var_120 = Me.FGrid
  loc_18F715C:     LateIdCallSt
  loc_18F7173:   Next var_BC 'Byte
  loc_18F717C: Else
  loc_18F7184:   If (var_A2 = 1) Then
  loc_18F71B1:     For var_124 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):   var_8E = var_124 'Byte
  loc_18F71CD:       Me.FGrid.Row = CVar(CLng(var_8E))
  loc_18F71E9:       Me.FGrid.Col = CVar(CLng(5))
  loc_18F720F:       If (CBool(Me.FGrid.CellFontBold) = 0) Then
  loc_18F7219:         var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F7221:         var_EC = CVar(CLng(&HB)) 'Long
  loc_18F7267:         If CBool(Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) <> "R") Then
  loc_18F727E:           Me.FGrid.Col = CVar(CLng(8))
  loc_18F7298:           Me.FGrid.CellFontName = "wingdings"
  loc_18F72B4:           Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_18F72D1:           Me.FGrid.CellForeColor = &HFF0000
  loc_18F72E0:           var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F72E8:           var_EC = CVar(CLng(8)) 'Long
  loc_18F72ED:           var_10C = "þ"
  loc_18F72F7:           Set var_A8 = Me.FGrid
  loc_18F72FD:           LateIdCallSt
  loc_18F7308:         End If
  loc_18F730A:       End If
  loc_18F7311:     Next var_124 'Byte
  loc_18F731A:   Else
  loc_18F7322:     If (var_A2 = 2) Then
  loc_18F734F:       For var_158 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):     var_8E = var_158 'Byte
  loc_18F736B:         Me.FGrid.Row = CVar(CLng(var_8E))
  loc_18F7387:         Me.FGrid.Col = CVar(CLng(5))
  loc_18F73AD:         If (CBool(Me.FGrid.CellFontBold) = 0) Then
  loc_18F73B7:           var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F73BF:           var_EC = CVar(CLng(&HB)) 'Long
  loc_18F7405:           If CBool(Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) <> "R") Then
  loc_18F741C:             Me.FGrid.Col = CVar(CLng(9))
  loc_18F7436:             Me.FGrid.CellFontName = "wingdings"
  loc_18F7452:             Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_18F746F:             Me.FGrid.CellForeColor = &HFF0000
  loc_18F747E:             var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F7486:             var_EC = CVar(CLng(9)) 'Long
  loc_18F748B:             var_10C = "þ"
  loc_18F7495:             Set var_A8 = Me.FGrid
  loc_18F749B:             LateIdCallSt
  loc_18F74A6:           End If
  loc_18F74A8:         End If
  loc_18F74AF:       Next var_158 'Byte
  loc_18F74B8:     Else
  loc_18F74C0:       If (var_A2 = 3) Then
  loc_18F74ED:         For var_15C = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):       var_8E = var_15C 'Byte
  loc_18F7509:           Me.FGrid.Row = CVar(CLng(var_8E))
  loc_18F7525:           Me.FGrid.Col = CVar(CLng(5))
  loc_18F754B:           If (CBool(Me.FGrid.CellFontBold) = 0) Then
  loc_18F7555:             var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F755D:             var_EC = CVar(CLng(&HB)) 'Long
  loc_18F7581:             var_134 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_18F75A3:             If CBool(Left(var_134, 1) <> "R") Then
  loc_18F75BA:               Me.FGrid.Col = CVar(CLng(&HA))
  loc_18F75D4:               Me.FGrid.CellFontName = "wingdings"
  loc_18F75F0:               Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_18F760D:               Me.FGrid.CellForeColor = &HFF0000
  loc_18F761C:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F7624:               var_EC = CVar(CLng(&HA)) 'Long
  loc_18F7629:               var_10C = "þ"
  loc_18F7633:               Set var_A8 = Me.FGrid
  loc_18F7639:               LateIdCallSt
  loc_18F7644:             End If
  loc_18F7646:           End If
  loc_18F764D:         Next var_15C 'Byte
  loc_18F7656:       Else
  loc_18F765E:         If (var_A2 = 4) Then
  loc_18F768B:           For var_160 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):         var_8E = var_160 'Byte
  loc_18F7698:             var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F76A0:             var_EC = CVar(CLng(7)) 'Long
  loc_18F76A5:             var_10C = "o"
  loc_18F76AF:             Set var_A8 = Me.FGrid
  loc_18F76B5:             LateIdCallSt
  loc_18F76C7:             var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F76CF:             var_EC = CVar(CLng(&HB)) 'Long
  loc_18F76FA:             If (CStr(Me.FGrid.TextMatrix)) = "E") Then
  loc_18F7704:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F770C:               var_EC = CVar(CLng(8)) 'Long
  loc_18F7711:               var_10C = "o"
  loc_18F771B:               Set var_A8 = Me.FGrid
  loc_18F7721:               LateIdCallSt
  loc_18F772C:             End If
  loc_18F7733:             var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F773B:             var_EC = CVar(CLng(&HB)) 'Long
  loc_18F7766:             If (CStr(Me.FGrid.TextMatrix)) = "E") Then
  loc_18F7770:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F7778:               var_EC = CVar(CLng(9)) 'Long
  loc_18F777D:               var_10C = "o"
  loc_18F7787:               Set var_A8 = Me.FGrid
  loc_18F778D:               LateIdCallSt
  loc_18F7798:             End If
  loc_18F779F:             var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F77A7:             var_EC = CVar(CLng(&HB)) 'Long
  loc_18F77D2:             If (CStr(Me.FGrid.TextMatrix)) = "E") Then
  loc_18F77DC:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F77E4:               var_EC = CVar(CLng(&HA)) 'Long
  loc_18F77E9:               var_10C = "o"
  loc_18F77F3:               Set var_A8 = Me.FGrid
  loc_18F77F9:               LateIdCallSt
  loc_18F7804:             End If
  loc_18F7809:           Next var_160 'Byte
  loc_18F7812:         Else
  loc_18F781A:           If (var_A2 = 5) Then
  loc_18F7842:             If (CStr(Me.dUserName.BoundText) = "SA") Then
  loc_18F7847:               Exit Sub
  loc_18F7848:             End If
  loc_18F786A:             var_DC = 0
  loc_18F7893:             var_170 = "SELECT Comp_Code FROM Company WHERE Cast(Comp_Code As Integer)=" & CStr(Val(CStr(Me.dYear.BoundText))) & vbNullString
  loc_18F789C:             unk_509EC3.Execute var_170, var_134, -1
  loc_18F78A4:             var_120 = var_120.Fields
  loc_18F78AC:             var_DC = var_174.Item(var_174)
  loc_18F78B4:             var_144 = CVar(var_178) 'Address
  loc_18F78C4:             var_8C = CStr(Trim(var_144))
  loc_18F78FF:             Set var_120 = Me.dUserName
  loc_18F7905:             var_134 = var_120.BoundText
  loc_18F794A:             var_188 = "Delete From MenuHelp Where Opt1=" & CStr(Me.dSection.BoundText) & " And (UserName='" & CStr(var_134) & "' And Cast(CompCode As Integer)="
  loc_18F7966:             unk_509EC3.Execute var_188 & CStr(Val(var_8C)) & ")", var_144, -1
  loc_18F79BC:             For var_198 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):           var_8E = var_198 'Byte
  loc_18F79CC:               var_180 = Val(var_8C)
  loc_18F79D4:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F7A10:               var_168 = "SELECT [Option],Menu_Index,OutletCode,Module_Name FROM MenuHelp WHERE UserName='SA' And Cast(CompCode As Integer)=" & CStr(var_180)
  loc_18F7A2B:               unk_509EC3.Execute var_168 & " AND Code=" & CStr(Me.FGrid.TextMatrix)), var_134, -1
  loc_18F7A36:               Set var_88 = var_120
  loc_18F7A6A:               If (var_88.RecordCount > 0) Then
  loc_18F7A9A:                 var_9C = CStr(var_88.Fields.Item("Option").Value)
  loc_18F7AAC:                 var_CC = "Menu_Index"
  loc_18F7AC0:                 var_120 = var_88.Fields.Item(var_CC)
  loc_18F7ACF:                 Proc_6_39_E7C810(var_134, CVar(var_120), var_120, CVar(var_120), CVar(CLng(6)), var_CC, var_180)
  loc_18F7AD8:                 var_9E = CInt(var_134)
  loc_18F7AE5:               End If
  loc_18F7AF6:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F7AFE:               var_EC = CVar(CLng(8)) 'Long
  loc_18F7B50:               var_1CC = (CVar(vbNullString) + IIf((CStr(Me.FGrid.TextMatrix)) = "þ"), "A", "*"))
  loc_18F7B74:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F7B7C:               var_EC = CVar(CLng(9)) 'Long
  loc_18F7BCE:               var_1CC = (CVar(CStr(var_1CC)) + IIf((CStr(Me.FGrid.TextMatrix)) = "þ"), "E", "*"))
  loc_18F7BF2:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F7BFA:               var_EC = CVar(CLng(&HA)) 'Long
  loc_18F7C4C:               var_1CC = (CVar(CStr(var_1CC)) + IIf((CStr(Me.FGrid.TextMatrix)) = "þ"), "D", "*"))
  loc_18F7C70:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F7C78:               var_EC = CVar(CLng(7)) 'Long
  loc_18F7CCA:               var_1CC = (CVar(CStr(var_1CC)) + IIf((CStr(Me.FGrid.TextMatrix)) = "þ"), "P", "*"))
  loc_18F7CEE:               var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F7CF6:               var_EC = CVar(CLng(7)) 'Long
  loc_18F7D21:               If (CStr(Me.FGrid.TextMatrix)) = "þ") Then
  loc_18F7D3E:                 var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F7D46:                 var_EC = CVar(CLng(1)) 'Long
  loc_18F7D66:                 var_10C = CVar(CLng(var_8E)) 'Long
  loc_18F7D6E:                 var_1AC = CVar(CLng(2)) 'Long
  loc_18F7D7D:                 var_144 = Me.FGrid.TextMatrix)
  loc_18F7D8E:                 var_1E0 = CVar(CLng(var_8E)) 'Long
  loc_18F7D96:                 var_200 = CVar(CLng(3)) 'Long
  loc_18F7D9F:                 Set var_178 = Me.FGrid
  loc_18F7DA5:                 var_154 = var_178.TextMatrix)
  loc_18F7DCD:                 var_1CC = Me.FGrid.TextMatrix)
  loc_18F7DF5:                 var_2C0 = Me.FGrid.TextMatrix)
  loc_18F7E2E:                 Proc_6_17_EAA2B0(var_34C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_8E)), var_2C0, CVar(CLng(6)), CVar(CLng(var_8E)), var_1CC)
  loc_18F7E4F:                 var_420 = Me.FGrid.TextMatrix)
  loc_18F7E7A:                 var_488 = CVar(var_88.Fields.Item("OutletCode")) 'Address
  loc_18F7EC1:                 var_164 = "insert into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],PARAM_STR,Flag,OutletCode,Module_Name) Values ('" & var_8C
  loc_18F7EFE:                 var_214 = var_164 & "','" & CStr(Me.dUserName.BoundText) & "'," & CStr(Me.FGrid.TextMatrix)) & "," & CStr(var_144) & ","
  loc_18F7F4D:                 var_36C = CVar(var_214 & CStr(var_154) & "," & CStr(var_1CC) & "," & CStr(var_2C0) & "," & CStr(var_9E) & ",") & var_34C 
  loc_18F7F84:                 var_498 = CVar(Proc_6_38_E68A98(var_488, var_420, CVar(CLng(&HB)), CVar(CLng(var_8E)), CVar(CLng(4)), CVar(CLng(var_8E)))) 'String
  loc_18F7F97:                 var_500 = var_36C & ",'" & CVar(CStr(var_1CC)) & "','" & CVar(CStr(var_420)) & "','" & var_498 & "','" & var_88.Fields.Item("Module_name").Value 
  loc_18F7FAE:                 unk_509EC3.Execute CStr(var_500 & "')"), var_544, -1
  loc_18F803F:                 var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F8047:                 var_EC = CVar(CLng(1)) 'Long
  loc_18F8072:                 If (CStr(Me.FGrid.TextMatrix)) <> "0") Then
  loc_18F807C:                   var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F8084:                   var_EC = CVar(CLng(1)) 'Long
  loc_18F80A3:                   Set var_120 = Me.dUserName
  loc_18F80A9:                   var_134 = var_120.BoundText
  loc_18F80C3:                   var_11C = 0
  loc_18F80EB:                   var_16C = "Select Count(*) From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix)) & " And Opt2=0 And Opt3=0 And Opt4=0  And UserName='"
  loc_18F8119:                   unk_509EC3.Execute var_16C & CStr(var_134) & "' And Cast(CompCode As Integer)=" & CStr(Val(var_8C)) & vbNullString, var_144, -1
  loc_18F8121:                   var_174 = var_174.Fields
  loc_18F8129:                   var_11C = var_178.Item(var_178)
  loc_18F8131:                   var_260 = var_260.Value
  loc_18F816E:                   If (var_154 = 0) Then
  loc_18F8178:                     var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F8180:                     var_EC = CVar(CLng(1)) 'Long
  loc_18F81A3:                     var_180 = Val(var_8C)
  loc_18F81BE:                     var_168 = "Select OPT1,OPT2,OPT3,OPT4,Code,[Option],Flag,OutletCode,Module_Name From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix))
  loc_18F81D1:                     var_184 = var_168 & " And Opt2=0 And Opt3=0 And Opt4=0 And UserName='SA' And Cast(CompCode As Integer)=" & CStr(var_180)
  loc_18F81E1:                     unk_509EC3.Execute var_184 & vbNullString, var_134, -1
  loc_18F81EC:                     Set var_98 = var_120
  loc_18F8222:                     If (var_98.RecordCount > 0) Then
  loc_18F823B:                       var_164 = "Insert Into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],PARAM_STR,Flag,OutletCode,Module_Name) Values ('" & var_8C
  loc_18F824F:                       var_B8 = Me.dUserName.BoundText
  loc_18F826B:                       var_CC = "Opt1"
  loc_18F8277:                       var_120 = var_98.Fields
  loc_18F828F:                       var_154 = CVar(var_164 & "','" & CStr(var_B8) & "',") & var_120.Item(var_CC).Value 
  loc_18F8298:                       var_1CC = var_154 & "," 
  loc_18F82A2:                       var_EC = "Opt2"
  loc_18F82B6:                       var_260 = var_98.Fields.Item(var_EC)
  loc_18F8334:                       var_3AC = var_1CC & var_260.Value & "," & var_98.Fields.Item("Opt3").Value & "," & var_98.Fields.Item("Opt4").Value 
  loc_18F836F:                       var_1F0 = ",-1,"
  loc_18F839E:                       Proc_6_17_EAA2B0(var_488, CVar(var_98.Fields.Item("Option")), var_3AC & "," & var_98.Fields.Item("Code").Value & var_1F0, var_5D4, -1, var_5D8, var_120)
  loc_18F83D2:                       var_4C8 = CVar(var_98.Fields.Item("Flag")) 'Address
  loc_18F8413:                       var_56C = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("OutletCode")), var_CC & CVar(Proc_6_38_E68A98(var_4C8, var_180 & var_488 & ",Null,'", var_B8, var_EC)) & "','")) 'String
  loc_18F8464:                       unk_509EC3.Execute CStr(var_154 & var_56C & "','" & var_98.Fields.Item("Module_name").Value & "')"), var_180, 
  loc_18F84E0:                     End If
  loc_18F84E2:                   End If
  loc_18F84E4:                 End If
  loc_18F84ED:                 var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F84F5:                 var_EC = CVar(CLng(2)) 'Long
  loc_18F8520:                 If (CStr(Me.FGrid.TextMatrix)) <> "0") Then
  loc_18F852A:                   var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F8532:                   var_EC = CVar(CLng(1)) 'Long
  loc_18F8552:                   var_10C = CVar(CLng(var_8E)) 'Long
  loc_18F855A:                   var_1AC = CVar(CLng(2)) 'Long
  loc_18F8579:                   Set var_174 = Me.dUserName
  loc_18F857F:                   var_144 = var_174.BoundText
  loc_18F8599:                   var_1F0 = 0
  loc_18F85CC:                   var_184 = "Select Count(*) From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix)) & " And Opt2=" & CStr(Me.FGrid.TextMatrix))
  loc_18F85F1:                   var_214 = var_184 & " And Opt3=0 And Opt4=0  And UserName='" & CStr(var_144) & "' And Cast(CompCode As Integer)=" & CStr(Val(var_8C))
  loc_18F8601:                   unk_509EC3.Execute var_214 & vbNullString, var_154, -1
  loc_18F8609:                   var_178 = var_178.Fields
  loc_18F8611:                   var_1F0 = var_260.Item(var_260)
  loc_18F8619:                   var_2B0 = var_2B0.Value
  loc_18F8660:                   If (var_1CC = 0) Then
  loc_18F866A:                     var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F8672:                     var_EC = CVar(CLng(1)) 'Long
  loc_18F8692:                     var_10C = CVar(CLng(var_8E)) 'Long
  loc_18F869A:                     var_1AC = CVar(CLng(2)) 'Long
  loc_18F86BD:                     var_180 = Val(var_8C)
  loc_18F86D8:                     var_168 = "Select OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],Flag,OutletCode,Module_Name From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix))
  loc_18F86F1:                     var_188 = var_168 & " And Opt2=" & CStr(Me.FGrid.TextMatrix)) & " And Opt3=0 And Opt4=0 And UserName='SA' And Cast(CompCode As Integer)="
  loc_18F870D:                     unk_509EC3.Execute var_188 & CStr(var_180) & vbNullString, var_144, -1
  loc_18F8718:                     Set var_98 = var_174
  loc_18F8758:                     If (var_98.RecordCount > 0) Then
  loc_18F8771:                       var_164 = "Insert Into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],PARAM_STR,flag,OutletCode,Module_Name) Values ('" & var_8C
  loc_18F8785:                       var_B8 = Me.dUserName.BoundText
  loc_18F87B5:                       var_174 = var_98.Fields.Item("Opt1")
  loc_18F87BD:                       var_134 = var_174.Value
  loc_18F87CE:                       var_1CC = CVar(var_164 & "','" & CStr(var_B8) & "',") & var_134 & "," 
  loc_18F87D8:                       var_EC = "Opt2"
  loc_18F87F4:                       var_2C0 = var_98.Fields.Item(var_EC).Value
  loc_18F880F:                       var_10C = "Opt3"
  loc_18F881B:                       var_2B0 = var_98.Fields
  loc_18F8846:                       var_1AC = "Opt4"
  loc_18F88A1:                       var_430 = var_1CC & var_2C0 & "," & var_2B0.Item(var_10C).Value & "," & var_98.Fields.Item(var_1AC).Value & "," & var_98.Fields.Item("Code").Value 
  loc_18F890B:                       Proc_6_17_EAA2B0(var_4C8, CVar(var_98.Fields.Item("Option")), var_430 & "," & var_98.Fields.Item("Menu_Index").Value & ",", var_60C, -1, var_610, var_174)
  loc_18F8948:                       var_544 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("Flag")), var_180 & var_4C8 & ",Null,'", var_134, var_1AC)) 'String
  loc_18F898C:                       var_5C4 = var_B8 & CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("OutletCode")), var_10C & var_544 & "','")) & "','" 
  loc_18F89D1:                       unk_509EC3.Execute CStr(var_5C4 & var_98.Fields.Item("Module_name").Value & "')"), var_EC, 
  loc_18F8A57:                     End If
  loc_18F8A59:                   End If
  loc_18F8A5B:                 End If
  loc_18F8A64:                 var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F8A6C:                 var_EC = CVar(CLng(3)) 'Long
  loc_18F8A97:                 If (CStr(Me.FGrid.TextMatrix)) <> "0") Then
  loc_18F8AA1:                   var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F8AA9:                   var_EC = CVar(CLng(1)) 'Long
  loc_18F8AC9:                   var_10C = CVar(CLng(var_8E)) 'Long
  loc_18F8AD1:                   var_1AC = CVar(CLng(2)) 'Long
  loc_18F8AF1:                   var_1E0 = CVar(CLng(var_8E)) 'Long
  loc_18F8AF9:                   var_200 = CVar(CLng(3)) 'Long
  loc_18F8B18:                   Set var_178 = Me.dUserName
  loc_18F8B1E:                   var_154 = var_178.BoundText
  loc_18F8B38:                   var_23C = 0
  loc_18F8B6B:                   var_184 = "Select Count(*) From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix)) & " And Opt2=" & CStr(Me.FGrid.TextMatrix))
  loc_18F8B96:                   var_218 = var_184 & " And Opt3=" & CStr(Me.FGrid.TextMatrix)) & " And Opt4=0  And UserName='" & CStr(var_154) & "' And Cast(CompCode As Integer)="
  loc_18F8BB2:                   unk_509EC3.Execute var_218 & CStr(Val(var_8C)) & vbNullString, var_1CC, -1
  loc_18F8BBA:                   var_260 = var_260.Fields
  loc_18F8BC2:                   var_23C = var_2B0.Item(var_2B0)
  loc_18F8BCA:                   var_31C = var_31C.Value
  loc_18F8C1B:                   If (var_2C0 = 0) Then
  loc_18F8C25:                     var_CC = CVar(CLng(var_8E)) 'Long
  loc_18F8C2D:                     var_EC = CVar(CLng(1)) 'Long
  loc_18F8C4D:                     var_10C = CVar(CLng(var_8E)) 'Long
  loc_18F8C55:                     var_1AC = CVar(CLng(2)) 'Long
  loc_18F8C75:                     var_1E0 = CVar(CLng(var_8E)) 'Long
  loc_18F8C7D:                     var_200 = CVar(CLng(3)) 'Long
  loc_18F8CA0:                     var_180 = Val(var_8C)
  loc_18F8CBB:                     var_168 = "Select OPT1,OPT2,OPT3,OPT4,Code,[Option],Flag,OutletCode,Module_Name From MenuHelp Where Opt1=" & CStr(Me.FGrid.TextMatrix))
  loc_18F8CE6:                     var_194 = var_168 & " And Opt2=" & CStr(Me.FGrid.TextMatrix)) & " And Opt3=" & CStr(Me.FGrid.TextMatrix)) & " And Opt4=0 And UserName='SA' And Cast(CompCode As Integer)="
  loc_18F8D02:                     unk_509EC3.Execute var_194 & CStr(var_180) & vbNullString, var_154, -1
  loc_18F8D0D:                     Set var_98 = var_178
  loc_18F8D49:                     var_19C = var_98.RecordCount
  loc_18F8D57:                     If (var_19C > 0) Then
  loc_18F8D70:                       var_164 = "Insert Into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],PARAM_STR,flag,OutletCode,Module_Name) Values ('" & var_8C
  loc_18F8D97:                       var_144 = CVar(var_164 & "','" & CStr(Me.dUserName.BoundText) & "',") 'String
  loc_18F8DAC:                       var_120 = var_98.Fields
  loc_18F8DB4:                       var_174 = var_120.Item("Opt1")
  loc_18F8DBC:                       var_134 = var_174.Value
  loc_18F8DC4:                       var_154 = var_144 & var_134 
  loc_18F8DE3:                       var_178 = var_98.Fields
  loc_18F8DEB:                       var_260 = var_178.Item("Opt2")
  loc_18F8E22:                       var_31C = var_98.Fields.Item("Opt3")
  loc_18F8E2A:                       var_34C = var_31C.Value
  loc_18F8E3B:                       var_36C = var_154 & "," & var_260.Value & "," & var_34C & "," 
  loc_18F8E45:                       var_1AC = "Opt4"
  loc_18F8E59:                       var_464 = var_98.Fields.Item(var_1AC)
  loc_18F8E61:                       var_38C = var_464.Value
  loc_18F8E69:                       var_3AC = var_36C & var_38C 
  loc_18F8E7C:                       var_1E0 = "Code"
  loc_18F8E90:                       var_4CC = var_98.Fields.Item(var_1E0)
  loc_18F8EB3:                       var_200 = "Menu_Index"
  loc_18F8EC7:                       var_548 = var_98.Fields.Item(var_200)
  loc_18F8ECF:                       var_460 = var_548.Value
  loc_18F8EFB:                       var_554 = var_98.Fields.Item("Option")
  loc_18F8F0A:                       Proc_6_17_EAA2B0(var_4C8, CVar(var_554), var_3AC & "," & var_4CC.Value & "," & var_460 & ",", var_60C, -1, var_610, var_178)
  loc_18F8F36:                       var_55C = var_98.Fields.Item("Flag")
  loc_18F8F47:                       var_544 = CVar(Proc_6_38_E68A98(CVar(var_55C), var_180 & var_4C8 & ",Null,'", var_144, var_200)) 'String
  loc_18F8F6E:                       var_594 = var_98.Fields.Item("OutletCode")
  loc_18F8F7F:                       var_5A4 = CVar(Proc_6_38_E68A98(CVar(var_594), var_1E0 & var_544 & "','")) 'String
  loc_18F8FA9:                       var_5DC = var_98.Fields.Item("Module_name")
  loc_18F8FB9:                       var_5EC = var_134 & var_5A4 & "','" & var_5DC.Value 
  loc_18F8FD0:                       unk_509EC3.Execute CStr(var_5EC & "')"), var_1AC, 
  loc_18F9056:                     End If
  loc_18F9058:                   End If
  loc_18F905A:                 End If
  loc_18F905C:               End If
  loc_18F9063:             Next var_198 'Byte
  loc_18F9075:             var_B8 = Me.dUserName.BoundText
  loc_18F908E:             If (CStr(var_B8) <> vbNullString) Then
  loc_18F909C:               unk_509EC3.BeginTrans var_19C
  loc_18F90D6:               Proc_6_17_EAA2B0(var_B8, MemVar_1F92078, "Select Count(*) From UserPermission  WHERE LogSITE_CODE=", var_36C, -1, var_120)
  loc_18F90F6:               Proc_6_17_EAA2B0(var_154, MemVar_1F92128, var_174 & var_B8 & " And Compcode=", 0)
  loc_18F9107:               var_2C0 = var_178 & var_154 & " And UserName=" 
  loc_18F9123:               Proc_6_17_EAA2B0(var_34C, CVar(CStr(Me.dUserName.BoundText)), var_2C0)
  loc_18F9139:               unk_509EC3.Execute CStr(var_38C & var_34C), &HFF, 
  loc_18F9141:                = var_120.Fields
  loc_18F9149:                = var_174.Item()
  loc_18F9151:                = var_178.Value
  loc_18F915C:               Proc_6_39_E7C810(var_3AC)
  loc_18F9197:               If (var_3AC = 0) Then
  loc_18F91A7:                 Proc_6_17_EAA2B0(var_B8, MemVar_1F92128)
  loc_18F91C4:                 Proc_6_17_EAA2B0(var_2C0, CVar(CStr(Me.dUserName.BoundText)))
  loc_18F91D4:                 Proc_6_17_EAA2B0(var_34C, MemVar_1F92070)
  loc_18F91E4:                 Proc_6_17_EAA2B0(var_38C, MemVar_1F92078)
  loc_18F91F7:                 Set var_120 = Me.Txt
  loc_18F91FD:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(0), var_174)
  loc_18F9205:                 var_164 = var_174.Text
  loc_18F9220:                 Set var_178 = Me.Txt
  loc_18F9226:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(1), var_260)
  loc_18F9235:                 Proc_6_17_EAA2B0(var_460, CVar(var_260))
  loc_18F9245:                 Set var_2B0 = Me.Txt
  loc_18F924B:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(2), var_31C)
  loc_18F925A:                 Proc_6_17_EAA2B0(var_4C8, CVar(var_31C))
  loc_18F926A:                 Set var_410 = Me.Txt
  loc_18F9270:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(3), var_464)
  loc_18F927F:                 Proc_6_17_EAA2B0(var_544, CVar(var_464))
  loc_18F928F:                 Set var_478 = Me.Txt
  loc_18F9295:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(5), var_4CC)
  loc_18F92A4:                 Proc_6_17_EAA2B0(var_5A4, CVar(var_4CC))
  loc_18F92B4:                 Set var_4E0 = Me.Txt
  loc_18F92BA:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(4), var_548)
  loc_18F92C9:                 Proc_6_17_EAA2B0(var_5EC, CVar(var_548))
  loc_18F92D7:                 Set var_550 = Me.Txt
  loc_18F92DD:                 Call 0.Method_BtnEnh_UnknownEvent_90 (7, var_554)
  loc_18F92EC:                 Proc_6_17_EAA2B0(var_630, CVar(var_554))
  loc_18F92FA:                 Set var_558 = Me.Txt
  loc_18F9300:                 Call 0.Method_BtnEnh_UnknownEvent_90 (8, var_55C)
  loc_18F9308:                 var_660 = CVar(var_55C) 'Address
  loc_18F930F:                 Proc_6_17_EAA2B0(var_670, var_660)
  loc_18F931D:                 Set var_590 = Me.Txt
  loc_18F9323:                 Call 0.Method_BtnEnh_UnknownEvent_90 (9, var_594)
  loc_18F9332:                 Proc_6_17_EAA2B0(var_6B0, CVar(var_594))
  loc_18F9342:                 Set var_5D8 = Me.Txt
  loc_18F9348:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(6), var_5DC)
  loc_18F9350:                 var_6E0 = CVar(var_5DC) 'Address
  loc_18F9357:                 Proc_6_17_EAA2B0(var_6F0, var_6E0)
  loc_18F9369:                 var_DC = "Insert Into UserPermission(CompCode,UserName,Site_Code,LogSite_Code,POSDiscountAllowUpto,CancelGuestBill,ChangeRoomDtl,DeleteGuestCharges,ChangeGuestCharges,POSSettlementYN,EditItemInKOT,FreeItemAllow,RefundCashCardAmt,FacilityBilling) Values ("
  loc_18F9371:                 var_134 = var_DC & var_B8 
  loc_18F9381:                 var_32C = var_134 & "," & var_2C0 
  loc_18F939A:                 var_36C = var_32C & "," & var_34C & "," 
  loc_18F93B5:                 var_420 = var_36C & var_38C & "," & CVar(Val(var_164)) 
  loc_18F93C5:                 var_488 = var_420 & "," & var_460 
  loc_18F93D5:                 var_4F0 = var_488 & "," & var_4C8 
  loc_18F93E5:                 var_56C = var_4F0 & "," & var_544 
  loc_18F93F5:                 var_5B4 = var_56C & "," & var_5A4 
  loc_18F9405:                 var_5FC = var_5B4 & "," & var_5EC 
  loc_18F942E:                 var_690 = var_5FC & "," & var_630 & "," & var_670 & "," 
  loc_18F9445:                 var_700 = var_690 & var_6B0 & "," & var_6F0 
  loc_18F945C:                 unk_509EC3.Execute CStr(var_700 & ")"), var_720, -1
  loc_18F94F5:               Else
  loc_18F9507:                 Set var_A8 = Me.Txt
  loc_18F950D:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(0), var_120, var_164)
  loc_18F9515:                 var_610 = var_120.Text
  loc_18F9522:                 var_180 = Val(var_164)
  loc_18F9530:                 Set var_174 = Me.Txt
  loc_18F9536:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(1), var_178, var_180)
  loc_18F9545:                 Proc_6_17_EAA2B0(var_134, CVar(var_178))
  loc_18F9555:                 Set var_260 = Me.Txt
  loc_18F955B:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(2), var_2B0)
  loc_18F956A:                 Proc_6_17_EAA2B0(var_32C, CVar(var_2B0))
  loc_18F957A:                 Set var_31C = Me.Txt
  loc_18F9580:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(3), var_410)
  loc_18F958F:                 Proc_6_17_EAA2B0(var_36C, CVar(var_410))
  loc_18F959F:                 Set var_464 = Me.Txt
  loc_18F95A5:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(5), var_478)
  loc_18F95B4:                 Proc_6_17_EAA2B0(var_420, CVar(var_478))
  loc_18F95C4:                 Set var_4CC = Me.Txt
  loc_18F95CA:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(4), var_4E0)
  loc_18F95D9:                 Proc_6_17_EAA2B0(var_488, CVar(var_4E0))
  loc_18F95E7:                 Set var_548 = Me.Txt
  loc_18F95ED:                 Call 0.Method_BtnEnh_UnknownEvent_90 (7, var_550)
  loc_18F95FC:                 Proc_6_17_EAA2B0(var_4F0, CVar(var_550))
  loc_18F960A:                 Set var_554 = Me.Txt
  loc_18F9610:                 Call 0.Method_BtnEnh_UnknownEvent_90 (8, var_558)
  loc_18F961F:                 Proc_6_17_EAA2B0(var_56C, CVar(var_558))
  loc_18F962D:                 Set var_55C = Me.Txt
  loc_18F9633:                 Call 0.Method_BtnEnh_UnknownEvent_90 (9, var_590)
  loc_18F9642:                 Proc_6_17_EAA2B0(var_5B4, CVar(var_590))
  loc_18F9652:                 Set var_594 = Me.Txt
  loc_18F9658:                 Call 0.Method_BtnEnh_UnknownEvent_90 (CInt(6), var_5D8)
  loc_18F9667:                 Proc_6_17_EAA2B0(var_5FC, CVar(var_5D8))
  loc_18F9677:                 Proc_6_17_EAA2B0(var_630, MemVar_1F92070)
  loc_18F9687:                 Proc_6_17_EAA2B0(var_660, MemVar_1F92078)
  loc_18F9697:                 Proc_6_17_EAA2B0(var_690, MemVar_1F92128)
  loc_18F96B4:                 Proc_6_17_EAA2B0(var_6E0, CVar(CStr(Me.dUserName.BoundText)))
  loc_18F96E8:                 var_1CC = CVar("Update UserPermission Set POSDiscountAllowUpto=" & CStr(var_180) & ",CancelGuestBill=") & var_134 & ",ChangeRoomDtl=" 
  loc_18F9718:                 var_440 = var_1CC & var_32C & ",DeleteGuestCharges=" & var_36C & ",ChangeGuestCharges=" & var_420 & ",POSSettlementYN=" 
  loc_18F974F:                 var_5C4 = var_440 & var_488 & ",EditItemInKOT=" & var_4F0 & ",FreeItemAllow=" & var_56C & ",RefundCashCardAmt=" & var_5B4 
  loc_18F9788:                 var_680 = var_5C4 & ",FacilityBilling=" & var_5FC & ",Site_Code=" & var_630 & " WHERE LogSITE_CODE=" & var_660 & " And Compcode=" 
  loc_18F97AD:                 unk_509EC3.Execute CStr(var_680 & var_690 & " And UserName=" & var_6E0), var_700, -1
  loc_18F9843:               End If
  loc_18F984D:               unk_509EC3.CommitTrans
  loc_18F9856:               var_A0 = 0
  loc_18F9859:             End If
  loc_18F9867:             BtnEnh_UnknownEvent_94 = Me.FGrid.Text
  loc_18F9884:             Me.dSection.BoundText = vbNullString
  loc_18F989E:             Me.dSection.Text = vbNullString
  loc_18F98AC:             Set var_A8 = Me.dSection
  loc_18F98BD:           End If
  loc_18F98BD:         End If
  loc_18F98BD:       End If
  loc_18F98BD:     End If
  loc_18F98BD:   End If
  loc_18F98BD: End If
  loc_18F98C6: Set var_88 = Nothing
  loc_18F98D0: Set var_98 = Nothing
  loc_18F98D5: Exit Sub
  loc_18F98D6: ' Referenced from: 18F6FBC
  loc_18F98E0: Set var_A8 = Err()
  loc_18F98E6: Call 0.Method_arg_1C (var_19C, dSection.DispID_8001, BtnEnh_UnknownEvent_94, var_A0)
  loc_18F98F7: If (var_19C = &H17D) Then
  loc_18F98FC:   Resume Next
  loc_18F9903: Else
  loc_18F990B:   If (var_A0 = &HFF) Then
  loc_18F9916:     unk_509EC3.RollbackTrans
  loc_18F991D:     Proc_6_60_E62BC4(var_610, var_180)
  loc_18F9922:   End If
  loc_18F9922: End If
  loc_18F9926: Exit Sub
End Sub

Private Sub BtnEnhPrintuser_UnknownEvent_9 '1059610
  'Data Table: 509E98
  Dim var_D4 As Double
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_509EC3 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_13A As Integer
  Dim var_C8 As Variant
  Dim arg_20FF As String
  loc_10593B0: On Error Goto loc_10595E6
  loc_10593D7: var_A4 = "Select UserName,[OPTION],[ADD]=Case When SubString(IsNull(Param_Str,''),1,1)='A' Then 'A' ELSE '' END,[EDIT]=Case When SubString(IsNull(Param_Str,''),2,1)='E' Then 'E' ELSE '' END,[DELETE]=Case When SubString(IsNull(Param_Str,''),3,1)='D' Then 'D' ELSE '' END,[PRINT]=Case When SubString(IsNull(Param_Str,''),4,1)='P' Then 'P' ELSE '' END,UserMast.ActiveYN,OPT1,OPT2,OPT3,OPT4,Menu_Index From MenuHelp Inner Join UserMast On MenuHelp.UserName=UserMast.User_Name Where Cast(CompCode As Int)=" & CStr(Val(MemVar_1F92128))
  loc_10593E7: unk_509EC3.Execute var_A4 & " And Flag<>'V' Order By UserName,OPT1,OPT2,OPT3,OPT4", var_C8, -1
  loc_10593F2: Set var_88 = var_CC
  loc_105940A: var_D8 = var_88.RecordCount
  loc_1059418: If (var_D8 = 0) Then
  loc_1059434:   MsgBox("No Record Present For Printing", 0, var_F8, var_118, var_138)
  loc_1059444:   Exit Sub
  loc_1059445: End If
  loc_105945B: Set var_CC = var_88 
  loc_1059467: var_13A = CreateFieldDefFile(var_CC, MemVar_1F920B4 & "\UserPermissionReport.ttx", &HFF)
  loc_1059471: Set var_88 = var_CC
  loc_1059477: var_B8 = CVar(var_13A) 'Integer
  loc_105947A: var_98 = var_B8 'Variant
  loc_1059496: var_A0 = MemVar_1F920B4 & "\UserPermissionReport.RPT"
  loc_105949F: Call 0.Method_arg_1C (var_A0, var_B8, var_CC)
  loc_10594AA: MemVar_1F921E4 = var_CC
  loc_10594C5: Call 0.Method_arg_90 (var_CC, var_D8, var_9A, 1)
  loc_10594CD: Call 0.Method_arg_24 (var_13A, var_CC)
  loc_10594D9: For var_13E =  To CInt(var_D8): var_D4 = var_13E 'Integer
  loc_10594F2:   Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_10594FA:   Call 0.Method_arg_20 (var_144)
  loc_1059502:   Call 0.Method_arg_30 (var_A0)
  loc_1059548:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_105955E:     Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_1059566:     Call 0.Method_arg_20 (var_144)
  loc_105956E:     Call 0.Method_arg_38 ("'User Permission Report'")
  loc_105957A:   End If
  loc_105957D: Next var_13E 'Integer
  loc_105959B: Call 0.Method_arg_64 (var_CC, CVar(var_88))
  loc_10595A3: Call 0.Method_arg_2C (var_E8)
  loc_10595B1: Call 0.Method_arg_150 (var_108)
  loc_10595BC: Call 0.Method_arg_50 (var_A0)
  loc_10595D5: Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_10595E2: Set var_88 = Nothing
  loc_10595E5: Exit Sub
  loc_10595E6: ' Referenced from: 10593B0
  loc_10595EC: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_1059601: Proc_183_57_104AA84(var_A0, "UserPermissionReport")
  loc_105960D: Exit Sub
  loc_105960E: arg_20FF = &HFF
End Sub

Private Sub BtnEnhExit_UnknownEvent_9 'E155E8
  'Data Table: 509E98
  loc_E155DD: Me.Global.Unload Me
  loc_E155E5: Exit Sub
End Sub

Private Sub DCYear_UnknownEvent_8 'E9A5FC
  'Data Table: 509E98
  Dim var_A0 As String
  loc_E9A5AD: var_B0 = "Code"
  loc_E9A5D0: var_A0 = "Select Distinct UserName as Name ,UserName as Code From MenuHelp Left Join UserMast On MenuHelp.UserName=UserMast.User_Name Where UserMast.ActiveYN='Y' And UserMast.User_Name<>'SA' And CompCODE='" & CStr(Me.DCFirm.BoundText)
  loc_E9A5DB: Proc_6_139_EF950C(var_A0 & "' Order By UserName", Me.DSUserName, "Name")
  loc_E9A5F9: Exit Sub
End Sub

Private Sub DCYear_UnknownEvent_9 'E546E0
  'Data Table: 509E98
  loc_E546B4: Me.DSUserName.Text = vbNullString
  loc_E546CC: Me.DSUserName.BoundText = vbNullString
  loc_E546D7: Call DSUserName_UnknownEvent_9()
  loc_E546DC: Exit Sub
End Sub

Private Sub dSection_UnknownEvent_B 'E2609C
  'Data Table: 509E98
  loc_E26082: If (CLng(Cancel) = &HD) Then
  loc_E26093:   Proc_303_0_FB9B68("	")
  loc_E2609B: End If
  loc_E2609B: Exit Sub
End Sub

Private Sub dSection_UnknownEvent_11 '1020FF0
  'Data Table: 509E98
  Dim var_8C As Variant
  Dim var_C0 As Boolean
  Dim var_B0 As Variant
  Dim var_D0 As Boolean
  loc_1020DE0: For var_A0 = 0 To (CInt(Me.SSTabSection.Tabs) - 1): var_86 = var_A0 'Integer
  loc_1020DED:   var_C0 = False
  loc_1020DF6:   Set var_8C = Me.SSTabSection
  loc_1020DFC:   LateIdCallSt
  loc_1020E0A: Next var_A0 'Integer
  loc_1020E2B: If (CBool(Me.SSTabSection.Visible) = &HFF) Then
  loc_1020E3D:   Me.SSTabSection.Visible = False
  loc_1020E45: End If
  loc_1020E5F: Set var_E4 = Me.BtnEnh1
  loc_1020E65: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(CStr(Me.dSection.Text)))
  loc_1020E80: Set var_8C = Me.BtnEnh1
  loc_1020E86: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_1020EB1: If (CStr(Me.dSection.Text) = "Front Office") Then
  loc_1020EC2:   Me.SSTabSection.Visible = True
  loc_1020ECA:   var_B0 = 1
  loc_1020ED0:   var_D0 = True
  loc_1020ED8:   Set var_8C = Me.SSTabSection
  loc_1020EDE:   LateIdCallSt
  loc_1020EF9:   Me.SSTabSection.Tab = 1
  loc_1020F01: End If
  loc_1020F24: If (CStr(Me.dSection.Text) = "Point Of Sale") Then
  loc_1020F35:   Me.SSTabSection.Visible = True
  loc_1020F3D:   var_B0 = 0
  loc_1020F43:   var_D0 = True
  loc_1020F4B:   Set var_8C = Me.SSTabSection
  loc_1020F51:   LateIdCallSt
  loc_1020F6C:   Me.SSTabSection.Tab = 0
  loc_1020F74: End If
  loc_1020F97: If (CStr(Me.dSection.Text) = "Members Mgmt") Then
  loc_1020FA8:   Me.SSTabSection.Visible = True
  loc_1020FB0:   var_B0 = 2
  loc_1020FB6:   var_D0 = True
  loc_1020FBE:   Set var_8C = Me.SSTabSection
  loc_1020FC4:   LateIdCallSt
  loc_1020FCF:   var_B0 = 2
  loc_1020FD9:   Set var_8C = Me.SSTabSection
  loc_1020FDF:   var_8C.Tab = var_B0
  loc_1020FE7: End If
  loc_1020FE7: Call Proc_151_36_13D947C(var_8C, var_D0, var_B0, var_8C, var_D0)
  loc_1020FEC: Exit Sub
End Sub

Private Sub DCFirm_UnknownEvent_8 'E99B7C
  'Data Table: 509E98
  loc_E99B2D: var_B0 = "Code"
  loc_E99B5B: Proc_6_139_EF950C("Select CYear as Name ,Comp_Code as Code From Company Where Comp_CODE='" & CStr(Me.DCFirm.BoundText) & "'", Me.DCYear, "Name")
  loc_E99B79: Exit Sub
End Sub

Private Sub DCFirm_UnknownEvent_9 'E54520
  'Data Table: 509E98
  loc_E544F4: Me.DCYear.Text = vbNullString
  loc_E5450C: Me.DCYear.BoundText = vbNullString
  loc_E54517: Call DCYear_UnknownEvent_9()
  loc_E5451C: Exit Sub
End Sub

Private Sub DSUserName_UnknownEvent_8 'E9A83C
  'Data Table: 509E98
  Dim var_A0 As String
  loc_E9A7ED: var_B0 = "Code"
  loc_E9A810: var_A0 = "Select User_Name as Name ,User_Name as Code From UserMast Where ActiveYN='Y' And User_Name<>'SA' And User_Name<>'" & CStr(Me.DSUserName.BoundText)
  loc_E9A81B: Proc_6_139_EF950C(var_A0 & "' Order By User_Name", Me.DDUserName, "Name")
  loc_E9A839: Exit Sub
End Sub

Private Sub DSUserName_UnknownEvent_9 'E4786C
  'Data Table: 509E98
  loc_E47848: Me.DDUserName.Text = vbNullString
  loc_E47860: Me.DDUserName.BoundText = vbNullString
  loc_E47868: Exit Sub
  loc_E47869: StAryRecCopy
End Sub

Private Sub FGrid_UnknownEvent_9 '13ABB44
  'Data Table: 509E98
  Dim var_94 As MSHFlexGrid
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_134 As Variant
  Dim var_154 As Long
  Dim var_1E8 As Boolean
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_8C As Single
  Dim var_86 As Integer
  Dim var_144 As Variant
  loc_13AB29D: If ((((CLng(Me.FGrid.Col) = CLng(7)) Or (CLng(Me.FGrid.Col) = CLng(8))) Or (CLng(Me.FGrid.Col) = CLng(9))) Or (CLng(Me.FGrid.Col) = CLng(&HA))) Then
  loc_13AB2B3:   var_134 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AB2B8:   var_154 = 8
  loc_13AB2EE:   var_1E8 = (CLng(Me.FGrid.Col) > CLng(7))
  loc_13AB305:   var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AB383:   If CBool(CVar(CLng(7)) And (CStr(Me.FGrid.TextMatrix)) = "o") Or (Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "R")) Then
  loc_13AB386:     Exit Sub
  loc_13AB387:   End If
  loc_13AB39A:   var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AB3B2:   var_110 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13AB3E9:   If (CStr(Me.FGrid.TextMatrix)) = "o") Then
  loc_13AB40E:     Me.FGrid.Col = CVar(CLng(Me.FGrid.Col))
  loc_13AB42D:     Me.FGrid.CellFontName = "wingdings"
  loc_13AB447:     Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_13AB46C:     If (CLng(Me.FGrid.Col) = CLng(7)) Then
  loc_13AB46F:       GoTo loc_13AB48D
  loc_13AB472:     End If
  loc_13AB485:     Me.FGrid.CellForeColor = &HFF0000
  loc_13AB48D:     ' Referenced from: 13AB46F
  loc_13AB4A0:     var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AB4B8:     var_110 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13AB4BD:     var_134 = "þ"
  loc_13AB4C7:     Set var_BC = Me.FGrid
  loc_13AB4CD:     LateIdCallSt
  loc_13AB4F9:     Me.FGrid.CellAlignment = CVar(CInt(4))
  loc_13AB504:   Else
  loc_13AB517:     var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AB52F:     var_110 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13AB566:     If (CStr(Me.FGrid.TextMatrix)) = "þ") Then
  loc_13AB57C:       var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AB594:       var_110 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13AB599:       var_134 = "o"
  loc_13AB5A3:       Set var_BC = Me.FGrid
  loc_13AB5A9:       LateIdCallSt
  loc_13AB5DE:       If (CLng(Me.FGrid.Col) = CLng(7)) Then
  loc_13AB5F4:         var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AB5FC:         var_110 = CVar(CLng(8)) 'Long
  loc_13AB62F:         If (CStr(Me.FGrid.TextMatrix)) = "þ") Then
  loc_13AB645:           var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AB64D:           var_110 = CVar(CLng(8)) 'Long
  loc_13AB652:           var_134 = "o"
  loc_13AB65C:           Set var_A8 = Me.FGrid
  loc_13AB662:           LateIdCallSt
  loc_13AB674:         End If
  loc_13AB687:         var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AB68F:         var_110 = CVar(CLng(9)) 'Long
  loc_13AB6C2:         If (CStr(Me.FGrid.TextMatrix)) = "þ") Then
  loc_13AB6D8:           var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AB6E0:           var_110 = CVar(CLng(9)) 'Long
  loc_13AB6E5:           var_134 = "o"
  loc_13AB6EF:           Set var_A8 = Me.FGrid
  loc_13AB6F5:           LateIdCallSt
  loc_13AB707:         End If
  loc_13AB71A:         var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AB722:         var_110 = CVar(CLng(&HA)) 'Long
  loc_13AB755:         If (CStr(Me.FGrid.TextMatrix)) = "þ") Then
  loc_13AB76B:           var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AB773:           var_110 = CVar(CLng(&HA)) 'Long
  loc_13AB778:           var_134 = "o"
  loc_13AB782:           Set var_A8 = Me.FGrid
  loc_13AB788:           LateIdCallSt
  loc_13AB79A:         End If
  loc_13AB79A:       End If
  loc_13AB79A:     End If
  loc_13AB79A:   End If
  loc_13AB79A: End If
  loc_13AB79D: var_8C = CDbl(0)
  loc_13AB7BD: If (CLng(Me.FGrid.ColSel) = CLng(7)) Then
  loc_13AB7FF:   For var_1FC = CInt(CLng(Me.FGrid.RowSel)) To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_1FC 'Integer
  loc_13AB818:     Me.FGrid.Row = CVar(CLng(var_86))
  loc_13AB832:     Me.FGrid.Col = CVar(CLng(5))
  loc_13AB856:     If (CBool(Me.FGrid.CellFontBold) = &HFF) Then
  loc_13AB85D:       var_F0 = CVar(CLng(var_86)) 'Long
  loc_13AB865:       var_110 = CVar(CLng(7)) 'Long
  loc_13AB87F:       var_90 = CStr(Me.FGrid.TextMatrix))
  loc_13AB88F:       var_8C = (var_8C + CDbl(1))
  loc_13AB898:       var_86 = (var_86 + 1)
  loc_13AB8AE:       Me.FGrid.Row = CVar(CLng(var_86))
  loc_13AB8B6:     End If
  loc_13AB8BD:     If (var_8C = CDbl(1)) Then
  loc_13AB8C4:       var_F0 = CVar(CLng(var_86)) 'Long
  loc_13AB8CC:       var_110 = CVar(CLng(7)) 'Long
  loc_13AB8DC:       Set var_94 = Me.FGrid
  loc_13AB8E2:       LateIdCallSt
  loc_13AB8F5:       If (var_90 = "o") Then
  loc_13AB8FC:         var_F0 = CVar(CLng(var_86)) 'Long
  loc_13AB904:         var_110 = CVar(CLng(8)) 'Long
  loc_13AB924:         var_CC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_13AB92C:         var_134 = vbNullString
  loc_13AB93A:         var_144 = CVar(CLng(var_86)) 'Long
  loc_13AB985:         If CBool(CVar(CLng(8)) And (CStr(Me.FGrid.TextMatrix)) = "þ")) Then
  loc_13AB98C:           var_F0 = CVar(CLng(var_86)) 'Long
  loc_13AB994:           var_110 = CVar(CLng(8)) 'Long
  loc_13AB999:           var_134 = "o"
  loc_13AB9A3:           Set var_94 = Me.FGrid
  loc_13AB9A9:           LateIdCallSt
  loc_13AB9B4:         End If
  loc_13AB9B8:         var_F0 = CVar(CLng(var_86)) 'Long
  loc_13AB9C0:         var_110 = CVar(CLng(9)) 'Long
  loc_13AB9E0:         var_CC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_13AB9E8:         var_134 = vbNullString
  loc_13AB9F6:         var_144 = CVar(CLng(var_86)) 'Long
  loc_13ABA41:         If CBool(CVar(CLng(9)) And (CStr(Me.FGrid.TextMatrix)) = "þ")) Then
  loc_13ABA48:           var_F0 = CVar(CLng(var_86)) 'Long
  loc_13ABA50:           var_110 = CVar(CLng(9)) 'Long
  loc_13ABA55:           var_134 = "o"
  loc_13ABA5F:           Set var_94 = Me.FGrid
  loc_13ABA65:           LateIdCallSt
  loc_13ABA70:         End If
  loc_13ABA74:         var_F0 = CVar(CLng(var_86)) 'Long
  loc_13ABA7C:         var_110 = CVar(CLng(&HA)) 'Long
  loc_13ABA9C:         var_CC = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_13ABAA4:         var_134 = vbNullString
  loc_13ABAB2:         var_144 = CVar(CLng(var_86)) 'Long
  loc_13ABAFD:         If CBool(CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) = "þ")) Then
  loc_13ABB04:           var_F0 = CVar(CLng(var_86)) 'Long
  loc_13ABB0C:           var_110 = CVar(CLng(&HA)) 'Long
  loc_13ABB11:           var_134 = "o"
  loc_13ABB1B:           Set var_94 = Me.FGrid
  loc_13ABB21:           LateIdCallSt
  loc_13ABB2C:         End If
  loc_13ABB2C:       End If
  loc_13ABB2C:     End If
  loc_13ABB33:     If (var_8C > CDbl(1)) Then
  loc_13ABB36:       GoTo loc_13ABB41
  loc_13ABB39:     End If
  loc_13ABB3C:   Next var_1FC 'Integer
  loc_13ABB41:   ' Referenced from: 13ABB36
  loc_13ABB41: End If
  loc_13ABB41: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'E0B7A0
  'Data Table: 509E98
  loc_E0B796: If (CLng(Cancel) = &H20) Then
  loc_E0B799:   Call FGrid_UnknownEvent_9()
  loc_E0B79E: End If
  loc_E0B79E: Exit Sub
End Sub

Private Sub dYear_UnknownEvent_B 'E2635C
  'Data Table: 509E98
  loc_E26342: If (CLng(Cancel) = &HD) Then
  loc_E26353:   Proc_303_0_FB9B68("	")
  loc_E2635B: End If
  loc_E2635B: Exit Sub
End Sub

Private Sub dFirm_UnknownEvent_8 'ED7EDC
  'Data Table: 509E98
  loc_ED7E50: Me.dYear.BoundText = vbNullString
  loc_ED7E68: Me.dYear.Text = vbNullString
  loc_ED7E8D: var_D0 = "Code"
  loc_ED7EBB: Proc_6_139_EF950C("Select CYear as Name ,Comp_Code as Code From Company Where Comp_cODE='" & CStr(Me.dFirm.BoundText) & "'", Me.dYear, "Name")
  loc_ED7ED9: Exit Sub
End Sub

Private Sub dFirm_UnknownEvent_B 'E26044
  'Data Table: 509E98
  loc_E2602A: If (CLng(Cancel) = &HD) Then
  loc_E2603B:   Proc_303_0_FB9B68("	")
  loc_E26043: End If
  loc_E26043: Exit Sub
End Sub

Private Sub Form_Load() 'F5F6C8
  'Data Table: 509E98
  Dim var_A8 As Variant
  loc_F5F5B7: Me.SSTabSection.BackColor = CVar(CLng(MemVar_1F921B0))
  loc_F5F5C6: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_F5F5DE: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_F5F5F4: Me.FrCopyUserPermission.BackColor = CLng(MemVar_1F921B4)
  loc_F5F606: Set var_A8 = Me.TopCtrl1
  loc_F5F60C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005("Add")
  loc_F5F61E: Set global_52 = New 
  loc_F5F633: Me.TopCtrl1.CursorLocation = 3
  loc_F5F643: Proc_6_17_EAA2B0(var_BC)
  loc_F5F68A: Me.Recordset15.Open CVar("Select * From UserPermission WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' And Compcode=") & var_BC & ")", CVar(MemVar_1F92044), 2
  loc_F5F69D: Call Proc_151_37_111340C(3, -1)
  loc_F5F6A2: Call Proc_151_29_1366D64(MemVar_1F92128)
  loc_F5F6B6: Me.dSubSection.Enabled = False
  loc_F5F6BE: Exit Sub
  loc_F5F6BF: Proc_6_60_E62BC4()
  loc_F5F6C4: Exit Sub
End Sub

Private Sub Form_Resize() 'E74B0C
  'Data Table: 509E98
  loc_E74AB6: Call 0.Method_arg_50 (var_88)
  loc_E74AC8: Me.LblFormCaption.Caption = var_88
  loc_E74AE1: Me.LblFormCaption.Left = CDbl(0)
  loc_E74AEF: Call 0.Method_arg_100 (var_90)
  loc_E74B01: Me.LblFormCaption.Width = var_90
  loc_E74B09: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2AB40
  'Data Table: 509E98
  loc_E2AB18: On Error Goto loc_E2AB38
  loc_E2AB2F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2AB37: Exit Sub
  loc_E2AB38: ' Referenced from: E2AB18
  loc_E2AB38: Proc_6_60_E62BC4(Shift)
  loc_E2AB3D: Exit Sub
End Sub

Private Sub CmdCopyUser_Click() 'F17A8C
  'Data Table: 509E98
  loc_F179B3: If (Me.FrCopyUserPermission.Visible = 0) Then
  loc_F179D5:   Me.FrCopyUserPermission.Caption = Me.CmdCopyUser.Caption
  loc_F179F4:   Me.DCFirm.Text = vbNullString
  loc_F17A0C:   Me.DCFirm.BoundText = vbNullString
  loc_F17A19:   Call DCFirm_UnknownEvent_9()
  loc_F17A28:   var_BC = "Code"
  loc_F17A43:   var_90 = "Select Distinct Comp_Name+CYear as Name ,cOMP_cODE as Code From Company"
  loc_F17A49:   Proc_6_139_EF950C(Me.CmdCopyUser.Caption, Me.DCFirm, "Name")
  loc_F17A6A:   Me.FrCopyUserPermission.Visible = True
  loc_F17A75: Else
  loc_F17A81:   Me.FrCopyUserPermission.Visible = False
  loc_F17A89: End If
  loc_F17A89: Exit Sub
End Sub

Private Sub CmdCopyUserPerm_Click() '13D7584
  'Data Table: 509E98
  Dim var_90 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_140 As Double
  Dim var_104 As Variant
  Dim var_94 As String
  Dim var_CC As String
  Dim unk_509EC3 As Connection15
  Dim var_F0 As Variant
  Dim var_F4 As Fields15
  Dim var_108 As Field20
  Dim var_118 As Variant
  Dim var_8A As Integer
  Dim var_88 As Recordset15
  Dim var_EC As Variant
  Dim var_170 As Variant
  Dim var_1B0 As Variant
  Dim var_258 As Variant
  Dim var_360 As Variant
  Dim var_4F0 As Variant
  loc_13D6CCE: var_94 = "Firm Name"
  loc_13D6CEF: If (Proc_6_27_EA565C(Me.DCFirm) = 0) Then
  loc_13D6CF6:   Set var_90 = Me.DCFirm
  loc_13D6D07:   Exit Sub
  loc_13D6D08: End If
  loc_13D6D33: If (Proc_6_27_EA565C(Me.DCYear, "Financial Year") = 0) Then
  loc_13D6D3A:   Set var_90 = Me.DCYear
  loc_13D6D4B:   Exit Sub
  loc_13D6D4C: End If
  loc_13D6D77: If (Proc_6_27_EA565C(Me.DSUserName, "Source User Name", DCYear.DispID_8001) = 0) Then
  loc_13D6D7E:   Set var_90 = Me.DSUserName
  loc_13D6D8F:   Exit Sub
  loc_13D6D90: End If
  loc_13D6DBB: If (Proc_6_27_EA565C(Me.DDUserName, "Desti. User Name", DSUserName.DispID_8001) = 0) Then
  loc_13D6DC2:   Set var_90 = Me.DDUserName
  loc_13D6DD3:   Exit Sub
  loc_13D6DD4: End If
  loc_13D6E0A: var_104 = 0
  loc_13D6E3E: var_CC = "Select Count(*) From MenuHelp Where UserName='" & CStr(Me.DDUserName.BoundText) & "' And Cast(CompCode As Integer)=" & CStr(Val(CStr(Me.DCYear.BoundText)))
  loc_13D6E47: unk_509EC3.Execute var_CC, var_EC, -1
  loc_13D6E4F: var_F0 = var_F0.Fields
  loc_13D6E57: var_104 = var_F4.Item(var_F4)
  loc_13D6E5F: var_108 = var_108.Value
  loc_13D6E96: If (var_118 > 1) Then
  loc_13D6EC0:   var_EC = StrConv(CVar(CStr(Me.DDUserName.Text)), 3, 0)
  loc_13D6F14:   If (MsgBox(var_EC & " already have User Permissions." & vbCrLf & "Do You want to overwrite User Permissions?", &H124, var_170, var_190, var_1B0) = 7) Then
  loc_13D6F17:     Exit Sub
  loc_13D6F18:   End If
  loc_13D6F18: End If
  loc_13D6F24: Me.CmdCopyUserPerm.Enabled = False
  loc_13D6F3B: Me.DCFirm.Enabled = False
  loc_13D6F52: Me.DCYear.Enabled = False
  loc_13D6F69: Me.DSUserName.Enabled = False
  loc_13D6F80: Me.DDUserName.Enabled = False
  loc_13D6F8A: var_8A = &HFF
  loc_13D6F96: unk_509EC3.BeginTrans var_1B4
  loc_13D6FF6: var_CC = "Delete From MenuHelp Where UserName='" & CStr(Me.DDUserName.BoundText) & "' And Cast(CompCode As Integer)=" & CStr(Val(CStr(Me.DCYear.BoundText)))
  loc_13D6FFF: unk_509EC3.Execute var_CC, var_EC, -1
  loc_13D7052: var_140 = Val(CStr(Me.DCYear.BoundText))
  loc_13D7080: var_CC = "Select * From MenuHelp Where UserName='" & CStr(Me.DSUserName.BoundText) & "' And Cast(CompCode As Integer)=" & CStr(var_140)
  loc_13D7089: unk_509EC3.Execute var_CC, var_EC, -1
  loc_13D7094: Set var_88 = var_F0
  loc_13D70B8: ' Referenced from: 13D7442
  loc_13D70C7: If Not(var_88.EOF) Then
  loc_13D70D7:   var_104 = "Insert Into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,Menu_Index,[Option],PARAM_STR,flag,OutletCode,Module_Name) Values ('"
  loc_13D70FE:   var_A8 = var_88.Fields.Item("CompCode").Value
  loc_13D7106:   var_BC = var_104 & var_A8 
  loc_13D710F:   var_EC = var_BC & "','" 
  loc_13D7117:   Set var_F0 = Me.DDUserName
  loc_13D711D:   var_118 = var_F0.BoundText
  loc_13D71CD:   var_258 = var_EC & CVar(CStr(var_118)) & "'," & var_88.Fields.Item("Opt1").Value & "," & var_88.Fields.Item("Opt2").Value & "," & var_88.Fields.Item("Opt3").Value 
  loc_13D7272:   var_360 = var_258 & "," & var_88.Fields.Item("Opt4").Value & "," & var_88.Fields.Item("Code").Value & "," & var_88.Fields.Item("Menu_Index").Value 
  loc_13D72A5:   Proc_6_17_EAA2B0(var_3B8, CVar(var_88.Fields.Item("Option")), var_360 & ",", var_598, -1, var_59C, var_F0)
  loc_13D72E0:   Proc_6_17_EAA2B0(var_420, CVar(var_88.Fields.Item("param_str")), var_140 & var_3B8 & ",", var_A8)
  loc_13D7355:   var_4F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("OutletCode")), var_A8 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Flag")), var_F0 & var_420 & ",'", var_140)) & "','")) 'String
  loc_13D73A6:   unk_509EC3.Execute CStr(var_8A & var_4F0 & "','" & var_88.Fields.Item("Module_name").Value & "')"), , 
  loc_13D743D:   var_88.MoveNext
  loc_13D7442:   GoTo loc_13D70B8
  loc_13D7445: End If
  loc_13D744B: unk_509EC3.CommitTrans
  loc_13D7461: Me.CmdCopyUserPerm.Enabled = True
  loc_13D7477: Me.DCFirm.Enabled = True
  loc_13D748D: Me.DCYear.Enabled = True
  loc_13D74A3: Me.DSUserName.Enabled = True
  loc_13D74B9: Me.DDUserName.Enabled = True
  loc_13D74DA: MsgBox("User Permission copied successfully.", &H40, var_BC, var_EC, var_118)
  loc_13D74EF: Call DSUserName_UnknownEvent_9()
  loc_13D74F9: Set var_88 = Nothing
  loc_13D74FC: Exit Sub
  loc_13D7503: If (0 = &HFF) Then
  loc_13D750C:   unk_509EC3.RollbackTrans
  loc_13D7511: End If
  loc_13D751D: Me.CmdCopyUserPerm.Enabled = True
  loc_13D7533: Me.DCFirm.Enabled = True
  loc_13D7549: Me.DCYear.Enabled = True
  loc_13D755F: Me.DSUserName.Enabled = True
  loc_13D7575: Me.DDUserName.Enabled = True
  loc_13D757D: Proc_6_60_E62BC4(0)
  loc_13D7582: Exit Sub
End Sub

Public Sub Proc_151_29_1366D64
  'Data Table: 509E98
  Dim var_A4 As Variant
  Dim var_BC As Variant
  Dim var_D8 As Fields15
  Dim var_144 As TextBox
  Dim var_EC As TextBox
  loc_1366520: On Error Goto loc_1366D5E
  loc_1366531: Me.Recordset15.Requery -1
  loc_1366543: var_A4 = Me.dUserName.BoundText
  loc_1366563: Me.var_A4.Filter = CVar("UserName='" & CStr(var_A4) & "'")
  loc_1366593: If (Me.Recordset15.RecordCount > 0) Then
  loc_1366618:   var_13C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CancelGuestBill"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("CancelGuestBill"))))
  loc_136662F:   Set var_140 = Me.Txt
  loc_1366635:   Call 0.Method_Proc_151_29_1366D640 (CInt(1), var_144)
  loc_136663D:   var_144.Text = CStr(var_13C)
  loc_13666E7:   var_13C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChangeRoomDtl"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("ChangeRoomDtl"))))
  loc_13666FE:   Set var_140 = Me.Txt
  loc_1366704:   Call 0.Method_Proc_151_29_1366D640 (CInt(2), var_144)
  loc_136670C:   var_144.Text = CStr(var_13C)
  loc_13667B6:   var_13C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("DeleteGuestCharges"))) = vbNullString), "Yes", Trim(CVar(Me.Recordset15.Fields.Item("DeleteGuestCharges"))))
  loc_13667CD:   Set var_140 = Me.Txt
  loc_13667D3:   Call 0.Method_Proc_151_29_1366D640 (CInt(3), var_144)
  loc_13667DB:   var_144.Text = CStr(var_13C)
  loc_1366885:   var_13C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChangeGuestCharges"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("ChangeGuestCharges"))))
  loc_136689C:   Set var_140 = Me.Txt
  loc_13668A2:   Call 0.Method_Proc_151_29_1366D640 (CInt(5), var_144)
  loc_13668AA:   var_144.Text = CStr(var_13C)
  loc_1366954:   var_13C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("POSSettlementYN"))) = vbNullString), "Yes", Trim(CVar(Me.Recordset15.Fields.Item("POSSettlementYN"))))
  loc_136696B:   Set var_140 = Me.Txt
  loc_1366971:   Call 0.Method_Proc_151_29_1366D640 (CInt(4), var_144)
  loc_1366979:   var_144.Text = CStr(var_13C)
  loc_1366A23:   var_13C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("EditItemInKOT"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("EditItemInKOT"))))
  loc_1366A38:   Set var_140 = Me.Txt
  loc_1366A3E:   Call 0.Method_Proc_151_29_1366D640 (7, var_144)
  loc_1366A46:   var_144.Text = CStr(var_13C)
  loc_1366AF0:   var_13C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("FreeItemAllow"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("FreeItemAllow"))))
  loc_1366B05:   Set var_140 = Me.Txt
  loc_1366B0B:   Call 0.Method_Proc_151_29_1366D640 (8, var_144)
  loc_1366B13:   var_144.Text = CStr(var_13C)
  loc_1366B89:   var_EC = Me.Recordset15.Fields.Item("RefundCashCardAmt")
  loc_1366B91:   var_BC = CVar(var_EC) 'Address
  loc_1366BD2:   Set var_140 = Me.Txt
  loc_1366BD8:   Call 0.Method_Proc_151_29_1366D640 (9, var_144)
  loc_1366BE0:   var_144.Text = CStr(IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RefundCashCardAmt"))) = vbNullString), "No", Trim(var_BC)))
  loc_1366C2D:   var_A4 = CVar(Me.Recordset15.Fields.Item("POSDiscountAllowUpto")) 'Address
  loc_1366C34:   Proc_6_39_E7C810(var_BC)
  loc_1366C4B:   Set var_D8 = Me.Txt
  loc_1366C51:   Call 0.Method_Proc_151_29_1366D640 (CInt(0), var_EC)
  loc_1366C59:   var_EC.Text = CStr(var_BC)
  loc_1366C96:   var_A4 = CVar(Me.Recordset15.Fields.Item("FacilityBilling")) 'Address
  loc_1366D0A:   Set var_140 = Me.Txt
  loc_1366D10:   Call 0.Method_Proc_151_29_1366D640 (CInt(6), var_144)
  loc_1366D18:   var_144.Text = CStr(IIf((Proc_6_38_E68A98(var_A4) = vbNullString), "Semi", Trim(CVar(Me.Recordset15.Fields.Item("FacilityBilling")))))
  loc_1366D45:   Set var_88 = Nothing
  loc_1366D4D:   Set var_90 = Nothing
  loc_1366D53: Else
  loc_1366D53:   Call Proc_151_30_E99DD8(var_A4)
  loc_1366D58: End If
  loc_1366D58: Call Proc_151_31_DFC6F4()
  loc_1366D5D: Exit Sub
  loc_1366D5E: ' Referenced from: 1366520
  loc_1366D5E: Proc_6_60_E62BC4()
  loc_1366D63: Exit Sub
End Sub

Public Sub Proc_151_30_E99DD8
  'Data Table: 509E98
  Dim var_98 As TextBox
  loc_E99D5E: Set var_8C = Me.Txt
  loc_E99D64: Call 0.Method_Proc_151_30_E99DD8C (var_8E, var_86)
  loc_E99D74: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E99D8A:   Set var_8C = Me.Txt
  loc_E99D90:   Call 0.Method_Proc_151_30_E99DD80 (CInt(var_86), var_98)
  loc_E99D98:   var_98.Text = vbNullString
  loc_E99DB4:   Set var_8C = Me.Txt
  loc_E99DBA:   Call 0.Method_Proc_151_30_E99DD80 (CInt(var_86), var_98)
  loc_E99DC2:   var_98.Tag = vbNullString
  loc_E99DD1: Next var_92 'Byte
  loc_E99DD7: Exit Sub
End Sub

Public Sub Proc_151_31_DFC6F4
  'Data Table: 509E98
  loc_DFC6F0: Exit Sub
End Sub

Public Sub Proc_151_32_EF1F68(arg_C) 'EF1F68
  'Data Table: 509E98
  Dim var_90 As Integer
  Dim var_B0 As Integer
  Dim var_10C As Variant
  loc_EF1EAD: Randomize(var_B0)
  loc_EF1ECE: var_90 = CInt(Int(((CDbl(&H63) * Rnd(var_B0)) + CDbl(1))))
  loc_EF1EDE: var_B0 = Chr(CLng((var_90 + &H1B)))
  loc_EF1EF7: For var_B8 = 1 To CInt(Len(arg_C)): var_8E = var_B8 'Integer
  loc_EF1F33:   var_EC = Chr(CLng(((Asc(CStr(Mid(arg_C, CLng(var_8E), 1))) + &H1B) + var_90)))
  loc_EF1F3B:   var_10C = (CVar(CStr(1)) + var_EC)
  loc_EF1F40:   var_8C = CStr(var_10C)
  loc_EF1F54: Next var_B8 'Integer
  loc_EF1F5C: var_88 = var_8C
  loc_EF1F5F: Proc_151_32_EF1F68 = 
End Sub

Public Sub Proc_151_33_EFF24C(arg_C) 'EFF24C
  'Data Table: 509E98
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EFF186: If (arg_C = vbNullString) Then
  loc_EFF18C:   var_88 = vbNullString
  loc_EFF18F:   Proc_151_33_EFF24C = 
  loc_EFF195: End If
  loc_EFF1B9: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EFF1D8: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EFF1FB:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EFF217:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EFF21F:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EFF224:   var_8C = CStr(var_108)
  loc_EFF238: Next var_B8 'Integer
  loc_EFF240: var_88 = var_8C
  loc_EFF243: Proc_151_33_EFF24C = 
End Sub

Public Sub Proc_151_34_E7D74C(arg_C) 'E7D74C
  'Data Table: 509E98
  Dim var_8A As Integer
  Dim unk_509EC3 As Connection15
  loc_E7D6F0: On Error Goto loc_E7D731
  loc_E7D6F3: Call Proc_151_31_DFC6F4()
  loc_E7D6FB: var_8A = arg_C
  loc_E7D704: If (var_8A = 0) Then
  loc_E7D720:   MsgBox("Change saved Successfully", &H40, var_CC, var_EC, var_10C)
  loc_E7D730: End If
  loc_E7D730: Exit Sub
  loc_E7D731: ' Referenced from: E7D6F0
  loc_E7D737: If (var_86 = &HFF) Then
  loc_E7D740:   unk_509EC3.RollbackTrans
  loc_E7D745: End If
  loc_E7D745: Proc_6_60_E62BC4(var_8A)
  loc_E7D74A: Exit Sub
End Sub

Public Sub Proc_151_35_1059E50
  'Data Table: 509E98
  Dim var_D4 As Double
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_509EC3 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_13A As Integer
  Dim var_C8 As Variant
  loc_1059BF0: On Error Goto loc_1059E26
  loc_1059C17: var_A4 = "Select UserName,[OPTION],[ADD]=Case When SubString(IsNull(Param_Str,''),1,1)='A' Then 'A' ELSE '' END,[EDIT]=Case When SubString(IsNull(Param_Str,''),2,1)='E' Then 'E' ELSE '' END,[DELETE]=Case When SubString(IsNull(Param_Str,''),3,1)='D' Then 'D' ELSE '' END,[PRINT]=Case When SubString(IsNull(Param_Str,''),4,1)='P' Then 'P' ELSE '' END,UserMast.ActiveYN,OPT1,OPT2,OPT3,OPT4,Menu_Index From MenuHelp Inner Join UserMast On MenuHelp.UserName=UserMast.User_Name Where Cast(CompCode As Int)=" & CStr(Val(MemVar_1F92128))
  loc_1059C27: unk_509EC3.Execute var_A4 & " And Flag<>'V' Order By UserName,OPT1,OPT2,OPT3,OPT4", var_C8, -1
  loc_1059C32: Set var_88 = var_CC
  loc_1059C4A: var_D8 = var_88.RecordCount
  loc_1059C58: If (var_D8 = 0) Then
  loc_1059C74:   MsgBox("No Record Present For Printing", 0, var_F8, var_118, var_138)
  loc_1059C84:   Exit Sub
  loc_1059C85: End If
  loc_1059C9B: Set var_CC = var_88 
  loc_1059CA7: var_13A = CreateFieldDefFile(var_CC, MemVar_1F920B4 & "\UserPermissionReport.ttx", &HFF)
  loc_1059CB1: Set var_88 = var_CC
  loc_1059CB7: var_B8 = CVar(var_13A) 'Integer
  loc_1059CBA: var_98 = var_B8 'Variant
  loc_1059CD6: var_A0 = MemVar_1F920B4 & "\UserPermissionReport.RPT"
  loc_1059CDF: Call 0.Method_arg_1C (var_A0, var_B8, var_CC)
  loc_1059CEA: MemVar_1F921E4 = var_CC
  loc_1059D05: Call 0.Method_arg_90 (var_CC, var_D8, var_9A, 1)
  loc_1059D0D: Call 0.Method_arg_24 (var_13A, var_CC)
  loc_1059D19: For var_13E =  To CInt(var_D8): var_D4 = var_13E 'Integer
  loc_1059D32:   Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_1059D3A:   Call 0.Method_arg_20 (var_144)
  loc_1059D42:   Call 0.Method_arg_30 (var_A0)
  loc_1059D88:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1059D9E:     Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_1059DA6:     Call 0.Method_arg_20 (var_144)
  loc_1059DAE:     Call 0.Method_arg_38 ("'User Permission Report'")
  loc_1059DBA:   End If
  loc_1059DBD: Next var_13E 'Integer
  loc_1059DDB: Call 0.Method_arg_64 (var_CC, CVar(var_88))
  loc_1059DE3: Call 0.Method_arg_2C (var_E8)
  loc_1059DF1: Call 0.Method_arg_150 (var_108)
  loc_1059DFC: Call 0.Method_arg_50 (var_A0)
  loc_1059E15: Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_1059E22: Set var_88 = Nothing
  loc_1059E25: Exit Sub
  loc_1059E26: ' Referenced from: 1059BF0
  loc_1059E2C: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_1059E41: Proc_183_57_104AA84(var_A0, "UserPermissionReport")
  loc_1059E4D: Exit Sub
End Sub

Public Sub Proc_151_36_13D947C
  'Data Table: 509E98
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_C4 As String
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim var_F0 As Variant
  Dim var_98 As Variant
  Dim var_100 As String
  Dim var_114 As String
  Dim var_13C As String
  Dim var_180 As String
  Dim unk_509EC3 As Connection15
  Dim var_19C As Variant
  Dim var_1E4 As Variant
  Dim var_204 As String
  Dim var_90 As Single
  Dim var_228 As Variant
  Dim var_248 As Variant
  Dim var_1AC As Variant
  Dim var_278 As Variant
  Dim var_88 As Recordset15
  Dim var_1D0 As Integer
  loc_13D8B40: On Error Goto loc_13D9431
  loc_13D8B47: Set var_88 = New 
  loc_13D8B4E: Set var_98 = Me.dSection
  loc_13D8BD6: If ((((CStr(Me.dSection.BoundText) <> vbNullString) And (CStr(Me.dFirm.BoundText) <> vbNullString)) And (CStr(Me.dYear.BoundText) <> vbNullString)) And (CStr(Me.dUserName.BoundText) <> vbNullString)) Then
  loc_13D8C03:   Set var_C8 = Me.dYear
  loc_13D8C09:   var_D8 = var_C8.BoundText
  loc_13D8C8A:   var_C4 = "Select distinct U.Opt1,U.Opt2,U.Opt3,U.Opt4,U.[option] as [Module Name],U.Code,Case right(M.param_str,1) When 'P' Then 'þ' Else 'o' End as Allow,Case U.Flag When 'E' then Case left(M.param_str,1) When 'A' Then 'þ' Else 'o' End Else '' End as Ins,Case U.Flag When 'E' Then Case SubString(M.param_str,2,1) When 'E' Then 'þ' else 'o' End Else '' End as Edit,Case U.Flag When 'E' Then Case SubString(M.param_str,3,1) When 'D' Then 'þ' Else 'o' End Else '' End as Del,U.Flag,U.OutletCode From UserModule U Left Join MenuHelp M on M.Code=U.Code Where U.Opt1=" & CStr(Me.dSection.BoundText)
  loc_13D8CA3:   var_100 = var_C4 & " AND U.Opt2>0 And IsNull(U.flag,'')<>'' And ((UserName='" & CStr(Me.dUserName.BoundText) & "' Or UserName is Null) And (Cast(CompCode As Integer)="
  loc_13D8CC4:   var_114 = var_100 & CStr(Val(CStr(var_D8))) & " or CompCode is Null)) " & " Union " & " Select distinct U.Opt1,U.Opt2,U.Opt3,U.Opt4,U.[option] as [Module Name],U.Code,'o' as Allow,Case U.Flag When 'E' Then 'o' Else '' End as Ins,Case U.Flag When 'E' Then 'o' Else '' End as Edit,Case U.Flag When 'E' Then 'o' Else '' End as Del,U.Flag,U.OutletCode From UserModule U Inner Join MenuHelp M on M.Code=U.Code Where M.UserName='"
  loc_13D8CE4:   var_13C = var_114 & MemVar_1F920C8 & "' And U.Flag<>'V' AND U.Opt1=" & CStr(Me.dSection.BoundText) & " AND U.Opt2>0 AND IsNull(U.flag,'')<>'' And U.Code Not In(Select U.Code From UserModule U Left Join MenuHelp M on M.Code=U.Code Where U.Opt1="
  loc_13D8D08:   var_180 = var_13C & CStr(Me.dSection.BoundText) & " And IsNull(U.Flag,'')<>'' And ((UserName='" & CStr(Me.dUserName.BoundText) & "' Or UserName is Null) And (Cast(CompCode As Integer)="
  loc_13D8D24:   unk_509EC3.Execute var_180 & CStr(Val(CStr(Me.dYear.BoundText))) & " or CompCode is Null))) Order By U.Code", var_1AC, -1
  loc_13D8D2F:   Set var_88 = var_1B0
  loc_13D8D94: Else
  loc_13D8D94:   Exit Sub
  loc_13D8D95: End If
  loc_13D8DA4: Me.FGrid.Redraw = False
  loc_13D8DB0: Set var_1D4 = Me.FGrid
  loc_13D8DB9: CVarUnk
  loc_13D8DBE: VerifyVarObj
  loc_13D8DC3: LateIdStAd
  loc_13D8DD1: var_19C = CVar(CLng(0)) 'Long
  loc_13D8DD6: var_1E4 = &H1C2
  loc_13D8DE2: LateIdCallSt
  loc_13D8DEA: var_19C = 0
  loc_13D8DF6: var_1E4 = CVar(CLng(0)) 'Long
  loc_13D8DFB: var_204 = "Sno"
  loc_13D8E04: LateIdCallSt
  loc_13D8E0F: var_19C = CVar(CLng(1)) 'Long
  loc_13D8E14: var_1E4 = 0
  loc_13D8E20: LateIdCallSt
  loc_13D8E2B: var_19C = CVar(CLng(2)) 'Long
  loc_13D8E30: var_1E4 = 0
  loc_13D8E3C: LateIdCallSt
  loc_13D8E47: var_19C = CVar(CLng(3)) 'Long
  loc_13D8E4C: var_1E4 = 0
  loc_13D8E58: LateIdCallSt
  loc_13D8E63: var_19C = CVar(CLng(4)) 'Long
  loc_13D8E68: var_1E4 = 0
  loc_13D8E74: LateIdCallSt
  loc_13D8E7F: var_19C = CVar(CLng(5)) 'Long
  loc_13D8E84: var_1E4 = &HBB8
  loc_13D8E90: LateIdCallSt
  loc_13D8E9B: var_19C = CVar(CLng(6)) 'Long
  loc_13D8EA0: var_1E4 = 0
  loc_13D8EAC: LateIdCallSt
  loc_13D8EB7: var_19C = CVar(CLng(7)) 'Long
  loc_13D8EBC: var_1E4 = &H226
  loc_13D8EC8: LateIdCallSt
  loc_13D8ED3: var_19C = CVar(CLng(8)) 'Long
  loc_13D8ED8: var_1E4 = &H1F4
  loc_13D8EE4: LateIdCallSt
  loc_13D8EEF: var_19C = CVar(CLng(9)) 'Long
  loc_13D8EF4: var_1E4 = &H1F4
  loc_13D8F00: LateIdCallSt
  loc_13D8F0B: var_19C = CVar(CLng(&HA)) 'Long
  loc_13D8F10: var_1E4 = &H1F4
  loc_13D8F1C: LateIdCallSt
  loc_13D8F27: var_19C = CVar(CLng(&HB)) 'Long
  loc_13D8F2C: var_1E4 = 0
  loc_13D8F38: LateIdCallSt
  loc_13D8F48: var_19C = CVar(CLng((CInt(&HB) + 1))) 'Long
  loc_13D8F4D: var_1E4 = 0
  loc_13D8F59: LateIdCallSt
  loc_13D8F92: For var_218 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_218 'Integer
  loc_13D8FAA:   Me.FGrid.Col = CVar(CLng(7))
  loc_13D8FC5:   Me.FGrid.Row = CVar(CLng(var_8A))
  loc_13D8FDD:   Me.FGrid.CellFontName = "wingdings"
  loc_13D8FF7:   Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_13D902B:   Proc_6_17_EAA2B0(var_D8, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_8A)), 1, CDbl(0), Nothing, CVar(CLng(5)))
  loc_13D9034:   var_228 = CVar(CLng(var_8A)) 'Long
  loc_13D903C:   var_248 = CVar(CLng(6)) 'Long
  loc_13D9089:   var_278 = "SELECT Menu_Index,Flag FROM MenuHelp WHERE [Option]=" & var_D8 & " AND Code=" & CVar(CStr(Me.FGrid.TextMatrix))) & " AND UserName='SA'" 
  loc_13D9097:   unk_509EC3.Execute CStr(var_278), var_298, -1
  loc_13D90A2:   Set var_88 = var_C8
  loc_13D90DC:   If (var_88.RecordCount > 0) Then
  loc_13D9109:     var_1D0 = -1
  loc_13D9132:     var_D8 = CVar(var_88.Fields.Item("Flag")) 'Address
  loc_13D9139:     var_F0 = Trim(var_D8)
  loc_13D9163:     If CBool((var_88.Fields.Item("Menu_Index").Value = var_1D0) And (var_F0 = "N")) Then
  loc_13D9178:       Me.FGrid.Col = CVar(CLng(5))
  loc_13D9187:       var_90 = (var_90 + CDbl(1))
  loc_13D918D:       var_19C = CVar(CLng(0)) 'Long
  loc_13D9198:       var_1E4 = CVar(CInt(4)) 'Integer
  loc_13D91A0:       Set var_98 = Me.FGrid
  loc_13D91A6:       LateIdCallSt
  loc_13D91B5:       var_19C = CVar(CLng(var_8A)) 'Long
  loc_13D91BD:       var_1E4 = CVar(CLng(0)) 'Long
  loc_13D91C7:       var_AC = CStr(CDbl(0))
  loc_13D91CE:       var_A8 = CVar(var_AC & ".") 'String
  loc_13D91D6:       Set var_98 = Me.FGrid
  loc_13D91DC:       LateIdCallSt
  loc_13D91FB:       Me.FGrid.CellFontBold = True
  loc_13D9216:       Me.FGrid.CellForeColor = &HFF
  loc_13D9230:       Me.FGrid.Col = CVar(CLng(7))
  loc_13D924B:       Me.FGrid.CellForeColor = &HFF
  loc_13D9278:       For var_2A0 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_8C = var_2A0 'Integer
  loc_13D9291:         Me.FGrid.Col = CVar(CLng(var_8C))
  loc_13D92AC:         Me.FGrid.CellBackColor = &HD1EFED
  loc_13D92B7:         var_19C = CVar(CLng(7)) 'Long
  loc_13D92C2:         var_1E4 = CVar(CInt(4)) 'Integer
  loc_13D92CA:         Set var_98 = Me.FGrid
  loc_13D92D0:         LateIdCallSt
  loc_13D92DE:       Next var_2A0 'Integer
  loc_13D92E6:     Else
  loc_13D92F9:       Me.FGrid.CellForeColor = &HFF00FF
  loc_13D9301:     End If
  loc_13D9301:   End If
  loc_13D9315:   Me.FGrid.CellAlignment = CVar(CInt(4))
  loc_13D9328:   For var_2A4 = CInt(8) To CInt(&HA): var_8C = var_2A4 'Integer
  loc_13D9341:     Me.FGrid.Col = CVar(CLng(var_8C))
  loc_13D935C:     Me.FGrid.Row = CVar(CLng(var_8A))
  loc_13D9374:     Me.FGrid.CellFontName = "wingdings"
  loc_13D938E:     Me.FGrid.CellFontSize = CVar(CDbl(&HE))
  loc_13D93A9:     Me.FGrid.CellForeColor = &HFF0000
  loc_13D93C5:     Me.FGrid.CellAlignment = CVar(CInt(4))
  loc_13D93D0:   Next var_2A4 'Integer
  loc_13D93D8: Next var_218 'Integer
  loc_13D93F0: Me.FGrid.Row = 1
  loc_13D940A: Me.FGrid.Col = CVar(CLng(7))
  loc_13D9420: Me.FGrid.Redraw = True
  loc_13D942D: Set var_88 = Nothing
  loc_13D9430: Exit Sub
  loc_13D9431: ' Referenced from: 13D8B40
  loc_13D9439: Set var_98 = Err()
  loc_13D943F: Call 0.Method_arg_2C (var_AC)
  loc_13D944A: Call 0.Method_arg_50 (var_C4)
  loc_13D9466: MsgBox(CVar(var_AC), &H10, CVar(var_C4), var_D8, var_F0)
  loc_13D9479: Exit Sub
End Sub

Public Sub Proc_151_37_111340C
  'Data Table: 509E98
  Dim var_88 As String
  Dim var_90 As String
  Dim var_C8 As Variant
  Dim var_B8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_11130D2: var_94 = "Code"
  loc_11130DB: var_90 = "Name"
  loc_11130F3: Proc_6_139_EF950C("Select User_Name as Name ,User_Name as Code From UserMast WHERE ActiveYN='Y' And User_Name <>'SA' Order By User_Name", Me.dUserName)
  loc_1113112: var_94 = "Code"
  loc_111312D: var_88 = "Select Distinct Comp_Name+' ' +cyEAR as Name ,Comp_CODE as Code From Company"
  loc_1113133: Proc_6_139_EF950C("Select User_Name as Name ,User_Name as Code From UserMast WHERE ActiveYN='Y' And User_Name <>'SA' Order By User_Name", Me.dFirm, "Name")
  loc_1113193: Proc_6_139_EF950C("Select CYear as Name ,Comp_Code as Code From Company Where Comp_CODE='" & CStr(Me.dFirm.BoundText) & "'", Me.dYear, "Name", "Code")
  loc_11131D6: var_88 = "Select DISTINCT replace([option],'&','') as Name ,Opt1 as Code From UserModule Where FLAG<>'V' AND Opt2=0 and Opt3=0 and Opt4=0 and [Option]<>'-' AND [Option] NOT IN ('-','Exit') ORDER BY OPT1"
  loc_11131DC: Proc_6_139_EF950C(CStr(Me.dFirm.BoundText), Me.dSection, "Name", "Code")
  loc_1113204: Me.FGrid.Cols = &HC
  loc_111320C: var_C8 = CVar(CLng(0)) 'Long
  loc_1113211: var_E8 = &H190
  loc_111321D: LateIdCallSt
  loc_1113228: var_C8 = CVar(CLng(1)) 'Long
  loc_111322D: var_E8 = 0
  loc_1113239: LateIdCallSt
  loc_1113244: var_C8 = CVar(CLng(2)) 'Long
  loc_1113249: var_E8 = 0
  loc_1113255: LateIdCallSt
  loc_1113260: var_C8 = CVar(CLng(3)) 'Long
  loc_1113265: var_E8 = 0
  loc_1113271: LateIdCallSt
  loc_111327C: var_C8 = CVar(CLng(4)) 'Long
  loc_1113281: var_E8 = 0
  loc_111328D: LateIdCallSt
  loc_1113298: var_C8 = CVar(CLng(5)) 'Long
  loc_111329D: var_E8 = &HBB8
  loc_11132A9: LateIdCallSt
  loc_11132B1: var_C8 = 0
  loc_11132BD: var_E8 = CVar(CLng(5)) 'Long
  loc_11132C2: var_108 = "Module"
  loc_11132CB: LateIdCallSt
  loc_11132D6: var_C8 = CVar(CLng(6)) 'Long
  loc_11132DB: var_E8 = 0
  loc_11132E7: LateIdCallSt
  loc_11132F2: var_C8 = CVar(CLng(7)) 'Long
  loc_11132F7: var_E8 = &H1F4
  loc_1113303: LateIdCallSt
  loc_111330B: var_C8 = 0
  loc_1113317: var_E8 = CVar(CLng(7)) 'Long
  loc_111331C: var_108 = "Allow"
  loc_1113325: LateIdCallSt
  loc_1113330: var_C8 = CVar(CLng(8)) 'Long
  loc_1113335: var_E8 = &H1F4
  loc_1113341: LateIdCallSt
  loc_1113349: var_C8 = 0
  loc_1113355: var_E8 = CVar(CLng(8)) 'Long
  loc_111335A: var_108 = "Ins"
  loc_1113363: LateIdCallSt
  loc_111336E: var_C8 = CVar(CLng(9)) 'Long
  loc_1113373: var_E8 = &H1F4
  loc_111337F: LateIdCallSt
  loc_1113387: var_C8 = 0
  loc_1113393: var_E8 = CVar(CLng(9)) 'Long
  loc_1113398: var_108 = "Edit"
  loc_11133A1: LateIdCallSt
  loc_11133AC: var_C8 = CVar(CLng(&HA)) 'Long
  loc_11133B1: var_E8 = &H1F4
  loc_11133BD: LateIdCallSt
  loc_11133C5: var_C8 = 0
  loc_11133D1: var_E8 = CVar(CLng(&HA)) 'Long
  loc_11133D6: var_108 = "Del"
  loc_11133DF: LateIdCallSt
  loc_11133EA: var_C8 = CVar(CLng(&HB)) 'Long
  loc_11133EF: var_E8 = 0
  loc_11133FB: LateIdCallSt
  loc_1113405: Set var_B8 = Nothing 
  loc_1113409: Exit Sub
End Sub
