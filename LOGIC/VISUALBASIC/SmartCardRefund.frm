VERSION 5.00
Begin VB.Form SmartCardRefund
  Caption = "Smart Card Refund Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11520
  ClientHeight = 5490
  Begin CommandButton CmdWaiveoff
    Caption = "Waive-off All Cash Card Balance"
    Left = 10335
    Top = 7650
    Width = 3825
    Height = 600
    Visible = 0   'False
    TabIndex = 38
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11520
    Height = 450
    TabIndex = 36
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2475
    Top = 4605
    Width = 1380
    Height = 285
    TabIndex = 34
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 11
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
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 4290
    Width = 1380
    Height = 285
    TabIndex = 32
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 11
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
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2505
    Top = 1515
    Width = 1365
    Height = 285
    TabIndex = 27
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 11
    BackColor = &HFFFFFF&
    Left = 7020
    Top = 60
    Width = 2760
    Height = 240
    Visible = 0   'False
    TabIndex = 24
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
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6570
    Top = 4605
    Width = 1380
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 11
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6570
    Top = 4290
    Width = 1380
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 11
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 2145
    Width = 5475
    Height = 285
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 75
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 2775
    Width = 5475
    Height = 285
    TabIndex = 3
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
  Begin PictureBox Picture1
    ForeColor = &HFF0000&
    Left = 13560
    Top = 10635
    Width = 300
    Height = 285
    Visible = 0   'False
    TabIndex = 17
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin PictureBox Picture3
    ForeColor = &HFF0000&
    Left = 13185
    Top = 10125
    Width = 300
    Height = 285
    Visible = 0   'False
    TabIndex = 16
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6585
    Top = 1830
    Width = 1380
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 3
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6585
    Top = 1515
    Width = 1380
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 3975
    Width = 5475
    Height = 285
    TabIndex = 5
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 1830
    Width = 2025
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 11
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 3090
    Width = 5475
    Height = 855
    TabIndex = 4
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 125
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 2460
    Width = 5475
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 75
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6585
    Top = 1200
    Width = 1395
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 15
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
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2490
    Top = 1200
    Width = 1380
    Height = 285
    TabIndex = 28
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3885
    Top = 1200
    Width = 630
    Height = 285
    TabIndex = 30
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
  Begin BtnEnh CmdCardScan
    Left = 2385
    Top = 555
    Width = 5625
    Height = 540
    TabIndex = 37
  End
  Begin Label LblName
    Caption = "Current Security Balance"
    Index = 11
    ForeColor = &HFF0000&
    Left = 90
    Top = 4620
    Width = 2385
    Height = 240
    TabIndex = 35
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
  Begin Label LblName
    Caption = "Current Balance"
    Index = 10
    ForeColor = &HFF0000&
    Left = 900
    Top = 4290
    Width = 1545
    Height = 240
    TabIndex = 33
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
  Begin Label LblName
    Caption = "Receipt.No."
    Index = 9
    ForeColor = &HFF0000&
    Left = 900
    Top = 1515
    Width = 1095
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
  Begin Label LblName
    Caption = "Date"
    Index = 8
    ForeColor = &HFF0000&
    Left = 900
    Top = 1185
    Width = 435
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
  Begin Label LblName
    Caption = "Security Amount"
    Index = 7
    ForeColor = &HFF0000&
    Left = 4935
    Top = 4605
    Width = 1575
    Height = 240
    TabIndex = 26
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
  Begin Label LblName
    Caption = "Refund Amount"
    Index = 5
    ForeColor = &HFF0000&
    Left = 4980
    Top = 4290
    Width = 1470
    Height = 240
    TabIndex = 25
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
  Begin Label LblName
    Caption = "Member Name"
    Index = 3
    ForeColor = &HFF0000&
    Left = 900
    Top = 2145
    Width = 1395
    Height = 240
    TabIndex = 23
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
  Begin Image ImgSign
    Left = 8130
    Top = 3600
    Width = 2295
    Height = 705
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Image ImgPhoto
    Left = 8130
    Top = 1245
    Width = 2310
    Height = 2280
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Label LblPhoto
    Caption = "Photo"
    ForeColor = &H80&
    Left = 9015
    Top = 2340
    Width = 510
    Height = 240
    TabIndex = 21
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label LblSign
    Caption = "Signature"
    ForeColor = &H80&
    Left = 8850
    Top = 3855
    Width = 825
    Height = 240
    TabIndex = 20
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label LblLedgerAc
    Caption = "Member ID"
    Index = 4
    ForeColor = &HFF0000&
    Left = 900
    Top = 2775
    Width = 1035
    Height = 240
    TabIndex = 19
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
  Begin Label LblName
    Caption = "Mobil No."
    Index = 1
    ForeColor = &HFF0000&
    Left = 900
    Top = 3975
    Width = 900
    Height = 240
    TabIndex = 18
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
  Begin Label LblName
    Caption = "Issue Date"
    Index = 0
    ForeColor = &HFF0000&
    Left = 5535
    Top = 1515
    Width = 975
    Height = 240
    TabIndex = 15
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
  Begin Label LblName
    Caption = "Valid Upto Date"
    Index = 4
    ForeColor = &HFF0000&
    Left = 900
    Top = 1830
    Width = 1485
    Height = 240
    TabIndex = 14
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
  Begin Label LblLedgerAc
    Caption = "Address"
    Index = 0
    ForeColor = &HFF0000&
    Left = 900
    Top = 3090
    Width = 750
    Height = 240
    TabIndex = 13
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
  Begin Label LblName
    Caption = "Blocked"
    Index = 6
    ForeColor = &HFF0000&
    Left = 5550
    Top = 1830
    Width = 765
    Height = 240
    TabIndex = 12
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
  Begin Label LblName
    Caption = "Account Name"
    Index = 2
    ForeColor = &HFF0000&
    Left = 900
    Top = 2460
    Width = 1380
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
  Begin Label LblLedgerAc
    Caption = "Card Type"
    Index = 2
    ForeColor = &HFF0000&
    Left = 5535
    Top = 1200
    Width = 975
    Height = 240
    TabIndex = 10
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

Attribute VB_Name = "SmartCardRefund"


Private Sub CmdWaiveoff_Click() '10C2A98
  'Data Table: 458EAC
  Dim var_B0 As String
  Dim unk_458EB8 As Connection15
  Dim var_128 As Recordset15
  Dim var_134 As Fields15
  Dim var_C0 As Variant
  Dim var_140 As String
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_16C As Variant
  Dim var_180 As String
  loc_10C27FC: On Error Goto loc_10C2A48
  loc_10C280D: var_B0 = "Process will Waive-off All Cash Card Balance."
  loc_10C2812: var_C0 = var_B0
  loc_10C282E: If (MsgBox(var_C0, &H114, var_E0, var_100, var_120) = 7) Then
  loc_10C2831:   Exit Sub
  loc_10C2832: End If
  loc_10C283B: unk_458EB8.BeginTrans var_124
  loc_10C2856: unk_458EB8.Execute "Select Code,Name,CurrBal,SerialNo From SmartCardRegistration where CardType ='Cash Card' And IsNull(CurrBal,0)<>0", var_C0, -1
  loc_10C2861: Set var_128 = var_134
  loc_10C286A: ' Referenced from: 10C29E7
  loc_10C2879: If Not(var_128.EOF) Then
  loc_10C288E:   var_134 = var_128.Fields
  loc_10C28D6:   var_C0 = CVar(var_128.Fields.Item("Code")) 'Address
  loc_10C2901:   var_E0 = CVar(var_128.Fields.Item("SerialNo")) 'Address
  loc_10C292C:   var_100 = CVar(var_128.Fields.Item("CurrBal")) 'Address
  loc_10C2933:   Proc_6_39_E7C810(var_120)
  loc_10C295F:   var_16C = CVar(var_128.Fields.Item("CurrBal")) 'Address
  loc_10C2966:   Proc_6_39_E7C810(var_17C)
  loc_10C2988:   var_180 = Proc_6_14_EF349C(var_100)
  loc_10C29AC:   var_140 = Proc_6_38_E68A98(var_C0)
  loc_10C29AF:   Proc_275_17_1185D08(var_140, Proc_6_38_E68A98(var_E0), "Waive-off", MemVar_1F920EC, CSng(var_120), CDbl(0), var_128.Fields & Proc_6_38_E68A98(CVar(var_128.Fields.Item("Name")), "Waive off Card Balance "))
  loc_10C29E2:   var_128.MoveNext
  loc_10C29E7:   GoTo loc_10C286A
  loc_10C29EA: End If
  loc_10C2A00: unk_458EB8.Execute "Update SmartCardRegistration Set CurrBal=0 where CardType ='Cash Card' And IsNull(CurrBal,0)<>0", var_C0, -1
  loc_10C2A11: unk_458EB8.CommitTrans
  loc_10C2A1B: Set var_128 = Nothing
  loc_10C2A37: MsgBox("Process completed successfully", &H40, var_E0, var_100, var_120)
  loc_10C2A47: Exit Sub
  loc_10C2A48: ' Referenced from: 10C27FC
  loc_10C2A4E: unk_458EB8.RollbackTrans
  loc_10C2A61: Call 0.Method_arg_2C (var_140, Err(), MemVar_1F920C8, CDate(var_180), "A")
  loc_10C2A6C: var_B0 = " Waive-off Message"
  loc_10C2A82: MsgBox(CVar(var_140), &H10, "Process completed successfully", var_100, var_120)
  loc_10C2A95: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E78C0C
  'Data Table: 458EAC
  Dim var_86 As Integer
  loc_E78BBC: On Error Goto loc_E78BC6
  loc_E78BC2: var_86 = Index
  loc_E78BC5: Exit Sub
  loc_E78BC6: ' Referenced from: E78BBC
  loc_E78BCE: Set var_8C = Err()
  loc_E78BD4: Call 0.Method_arg_2C (var_90)
  loc_E78BF5: MsgBox(CVar(var_90), &H40, "Information", var_E0, var_100)
  loc_E78C08: Exit Sub
  loc_E78C09: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E78E84
  'Data Table: 458EAC
  Dim var_86 As Integer
  Dim var_88 As Integer
  loc_E78E1F: var_86 = Shift
  loc_E78E2C: If (CLng(Shift) = &H1B) Then
  loc_E78E2F:   Exit Sub
  loc_E78E30: End If
  loc_E78E33: var_88 = KeyCode
  loc_E78E54: If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HA))) Then
  loc_E78E5D:   Proc_6_75_E527CC(Shift, arg_14)
  loc_E78E62: End If
  loc_E78E75: If ((CLng(Shift) = &H26) And (KeyCode <> CInt(9))) Then
  loc_E78E7E:   Proc_6_76_E52838(Shift, arg_14)
  loc_E78E83: End If
  loc_E78E83: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EEB428
  'Data Table: 458EAC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_EEB366: Proc_6_133_E7EF78(var_94)
  loc_EEB36F: arg_10 = CInt(var_94)
  loc_EEB378: Proc_6_58_E054C0(arg_10, arg_10)
  loc_EEB380: var_96 = KeyAscii
  loc_EEB38B: If (var_96 = CInt(9)) Then
  loc_EEB394:   If (arg_10 = &H2D) Then
  loc_EEB399:     arg_10 = 0
  loc_EEB39C:   End If
  loc_EEB3A6:   Set var_9C = Me.Txt
  loc_EEB3AC:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, arg_10)
  loc_EEB3C7:   Proc_6_42_129A86C(var_A0, arg_10, 7)
  loc_EEB3D6: Else
  loc_EEB3DE:   If (var_96 = CInt(&HA)) Then
  loc_EEB3E7:     If (arg_10 = &H2D) Then
  loc_EEB3EC:       arg_10 = 0
  loc_EEB3EF:     End If
  loc_EEB3F9:     Set var_9C = Me.Txt
  loc_EEB3FF:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, arg_10)
  loc_EEB41A:     Proc_6_42_129A86C(var_A0, arg_10, 6, 0)
  loc_EEB426:   End If
  loc_EEB426: End If
  loc_EEB426: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F88A64
  'Data Table: 458EAC
  Dim var_86 As Integer
  Dim var_DC As String
  Dim var_D8 As TextBox
  loc_F88918: On Error Goto loc_F88A1F
  loc_F8891E: var_86 = Cancel
  loc_F88929: If (var_86 = CInt(9)) Then
  loc_F88936:   Set var_8C = Me.Txt
  loc_F8893C:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F88976:   Set var_D4 = Me.Txt
  loc_F8897C:   Call 0.Method_Txt_Validate0 (Cancel, var_D8, CStr(Format(CVar(var_90), "0.00")))
  loc_F88984:   var_D8.Text = 1
  loc_F889A1: Else
  loc_F889A9:   If (var_86 = CInt(&HA)) Then
  loc_F889B6:     Set var_8C = Me.Txt
  loc_F889BC:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F889E0:     var_D0 = Format(CVar(var_90), "0.00")
  loc_F889E8:     var_DC = CStr(var_D0)
  loc_F889F6:     Set var_D4 = Me.Txt
  loc_F889FC:     Call 0.Method_Txt_Validate0 (Cancel, var_D8, var_DC, 1)
  loc_F88A04:     var_D8.Text = 1
  loc_F88A1E:   End If
  loc_F88A1E: End If
  loc_F88A1E: Exit Sub
  loc_F88A1F: ' Referenced from: F88918
  loc_F88A27: Set var_8C = Err()
  loc_F88A2D: Call 0.Method_arg_2C (var_DC, 1)
  loc_F88A4E: MsgBox(CVar(var_DC), &H40, "Information", var_D0, var_10C)
  loc_F88A61: Exit Sub
  loc_F88A62: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F33CEC
  'Data Table: 458EAC
  Dim var_108 As String
  Dim var_114 As TextBox
  loc_F33BDC: On Error Goto loc_F33CA8
  loc_F33BEA: If (global_56 = vbNullString) Then
  loc_F33C0E:   MsgBox("Please Scan Card First.", &H40, "Smart Card Validation", var_E4, var_104)
  loc_F33C1E:   Exit Sub
  loc_F33C1F: End If
  loc_F33C42: Call Proc_285_20_1096368(Proc_5_1_100CB50("ADD", Me))
  loc_F33C4D: Call Proc_285_22_F0C804(global_52)
  loc_F33C57: var_108 = CStr(MemVar_1F920EC)
  loc_F33C65: Set var_10C = Me.Txt
  loc_F33C6B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HD), var_114)
  loc_F33C73: var_114.Text = var_108
  loc_F33C8D: Set var_10C = Me.Txt
  loc_F33C93: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9))
  loc_F33C9B: var_114.SetFocus
  loc_F33CA7: Exit Sub
  loc_F33CA8: ' Referenced from: F33BDC
  loc_F33CB0: Set var_10C = Err()
  loc_F33CB6: Call 0.Method_arg_2C (var_108)
  loc_F33CD7: MsgBox(CVar(var_108), &H40, "Information", var_E4, var_104)
  loc_F33CEA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EB94DC
  'Data Table: 458EAC
  loc_EB9448: On Error Goto loc_EB94D3
  loc_EB9482: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EB9491:   Set var_110 = Me
  loc_EB94A8:   Call Proc_285_20_1096368(Proc_5_1_100CB50("INI", var_110))
  loc_EB94B3:   Call Proc_285_23_135EBBC(global_52)
  loc_EB94BB: Else
  loc_EB94C1:   Call 0.Method_arg_1E8 (var_110)
  loc_EB94C9:   Call var_110.SetFocus
  loc_EB94D2: End If
  loc_EB94D2: Exit Sub
  loc_EB94D3: ' Referenced from: EB9448
  loc_EB94D3: Proc_6_60_E62BC4()
  loc_EB94D8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19194
  'Data Table: 458EAC
  loc_E19189: Me.Global.Unload Me
  loc_E19191: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EE71D8
  'Data Table: 458EAC
  Dim Me As Recordset15
  loc_EE711C: On Error Goto loc_EE7172
  loc_EE711F: Call Proc_285_26_EF6BFC()
  loc_EE712D: var_88 = Me.RecordCount
  loc_EE713B: If (var_88 > 0) Then
  loc_EE7141:   var_8C = "0,0,900,900,3000,800,0,1000,1000,0,0,2500,1000,0,0,0,0,0,0,0,0,2500"
  loc_EE7147:   Proc_6_126_F1BCC0(var_8C)
  loc_EE7155:   MemVar_1F92120 = Me
  loc_EE716C:   Call 0.Method_arg_2B0 (1)
  loc_EE7171: End If
  loc_EE7171: Exit Sub
  loc_EE7172: ' Referenced from: EE711C
  loc_EE717A: Set var_B0 = Err()
  loc_EE7180: Call 0.Method_arg_1C (var_88)
  loc_EE7191: If (var_88 <> 0) Then
  loc_EE719C:   Set var_B0 = Err()
  loc_EE71A2:   Call 0.Method_arg_2C (var_8C)
  loc_EE71C3:   MsgBox(CVar(var_8C), &H40, "Validation", var_E0, var_100)
  loc_EE71D6: End If
  loc_EE71D6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E33498
  'Data Table: 458EAC
  loc_E33488: Proc_5_0_110649C(&HFF, Me)
  loc_E33490: Call Proc_285_23_135EBBC(global_52)
  loc_E33495: Exit Sub
  loc_E33496: arg_3408 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E336D8
  'Data Table: 458EAC
  loc_E336C8: Proc_5_0_110649C(&HFF, Me)
  loc_E336D0: Call Proc_285_23_135EBBC(global_52)
  loc_E336D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E33678
  'Data Table: 458EAC
  loc_E33668: Proc_5_0_110649C(&HFF, Me)
  loc_E33670: Call Proc_285_23_135EBBC(global_52)
  loc_E33675: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E33618
  'Data Table: 458EAC
  loc_E33608: Proc_5_0_110649C(&HFF, Me)
  loc_E33610: Call Proc_285_23_135EBBC(global_52)
  loc_E33615: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'EFFFA4
  'Data Table: 458EAC
  Dim var_8C As TextBox
  loc_EFFEDB: Set var_88 = Me.Txt
  loc_EFFEE1: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HD))
  loc_EFFEF8: If IsDate(CVar(var_8C)) Then
  loc_EFFF09:   Set var_88 = Me.Txt
  loc_EFFF0F:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HD), var_8C)
  loc_EFFF2F:   If (CDate(var_8C.Text) = MemVar_1F920EC) Then
  loc_EFFF40:     Set var_88 = Me.Txt
  loc_EFFF46:     Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HB), var_8C)
  loc_EFFF4E:     var_A0 = var_8C.Text
  loc_EFFF59:     Proc_275_19_166EDB0(var_A0, MemVar_1F923B4)
  loc_EFFF6B:   Else
  loc_EFFF71:     Call 0.Method_arg_50 (var_A0)
  loc_EFFF92:     MsgBox("Print Receipt Of Current Date Only.", &H40, CVar(var_A0), var_E0, var_100)
  loc_EFFFA2:   End If
  loc_EFFFA2: End If
  loc_EFFFA2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '131E2F4
  'Data Table: 458EAC
  Dim var_BC As String
  Dim var_134 As TextBox
  Dim var_140 As TextBox
  Dim unk_458EB8 As Connection15
  Dim var_138 As String
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_154 As Double
  Dim var_15C As Double
  Dim var_168 As TextBox
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_144 As String
  Dim var_160 As String
  Dim var_240 As Variant
  Dim Me As Recordset15
  loc_131DBD0: On Error Goto loc_131E24A
  loc_131DBDE: If (global_56 = vbNullString) Then
  loc_131DBEC:   var_EC = "Smart Card Validation"
  loc_131DC02:   MsgBox("Please Scan Card First.", &H40, var_EC, var_10C, var_12C)
  loc_131DC12:   Exit Sub
  loc_131DC13: End If
  loc_131DC21: Set var_130 = Me.Txt
  loc_131DC27: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_134)
  loc_131DC4F: Set var_13C = Me.Txt
  loc_131DC55: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_140)
  loc_131DC82: If ((CDbl(Val(var_134.Text)) = CDbl(0)) And (CDbl(Val(var_140.Text)) = CDbl(0))) Then
  loc_131DC9E:   MsgBox("Both of Amount Should Not be Zero.", &H40, var_EC, var_10C, var_12C)
  loc_131DCB5:   Call Txt_GotFocus(CInt(9))
  loc_131DCBA:   Exit Sub
  loc_131DCBB: End If
  loc_131DCC4: unk_458EB8.BeginTrans var_14C
  loc_131DCCD: var_AA = CByte(1) 'Byte
  loc_131DCE4: Set var_130 = Me.Txt
  loc_131DCEA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_134)
  loc_131DCF2: var_134.Text = CStr(MemVar_1F920EC)
  loc_131DD0C: var_160 = 0
  loc_131DD31: var_144 = 0
  loc_131DD5B: If (Proc_275_12_130A7A4(2, var_8C, var_88, 0, var_144) = 0) Then
  loc_131DD5E:   GoTo loc_131E24A
  loc_131DD61: End If
  loc_131DD78: If ((global_60 = var_8C) And (global_56 = var_88)) Then
  loc_131DD7E:   var_A4 = "Refund"
  loc_131DD88:   var_138 = "Agnst. Refund " & var_88
  loc_131DD8F:   var_10C = CVar(var_138 & "/") 'String
  loc_131DD9D:   Set var_130 = Me.Txt
  loc_131DDA3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_134, var_10C, 0)
  loc_131DDB2:   var_EC = Trim(CVar(var_134))
  loc_131DDBA:   var_12C = 0 & var_EC 
  loc_131DDBF:   var_A0 = CStr(var_12C)
  loc_131DDE1:   Set var_130 = Me.Txt
  loc_131DDE7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_134, var_138)
  loc_131DDEF:   var_160 = var_134.Text
  loc_131DDFC:   var_154 = Val(var_138)
  loc_131DE0D:   Set var_13C = Me.Txt
  loc_131DE13:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_140, var_144)
  loc_131DE56:   If ((CDbl((var_94 - var_140.Text)) < CDbl(0)) Or (CDbl((var_9C - Val(var_144))) < CDbl(0))) Then
  loc_131DE72:     MsgBox("Refund Amount Should Not be Greater than Current Balance.", &H40, var_EC, var_10C, var_12C)
  loc_131DE85:   Else
  loc_131DE93:     Set var_130 = Me.Txt
  loc_131DE99:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_134, var_160)
  loc_131DEA1:     var_15C = var_134.Text
  loc_131DEB4:     Set var_13C = Me.Txt
  loc_131DEBA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_140, var_138)
  loc_131DEC2:     var_94 = var_140.Text
  loc_131DECF:     var_154 = Val(var_138)
  loc_131DEE0:     Set var_164 = Me.Txt
  loc_131DEE6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_168, var_144)
  loc_131DEFB:     var_15C = Val(var_144)
  loc_131DF39:     Proc_275_17_1185D08(var_88, global_60, var_A4, CDate(var_160), var_168.Text, var_15C, var_A0)
  loc_131DF68:     Set var_130 = Me.Txt
  loc_131DF6E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_134, var_138, MemVar_1F920C8, CDate(Proc_6_14_EF349C(var_15C)))
  loc_131DF76:     "A" = var_134.Text
  loc_131DF83:     var_154 = Val(var_138)
  loc_131DF8D:     var_94 = (var_94 - var_154)
  loc_131DFA8:     Set var_130 = Me.Txt
  loc_131DFAE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_134, var_138, var_94, var_154)
  loc_131DFB6:     var_A8 = var_134.Text
  loc_131DFCD:     var_9C = (var_9C - Val(var_138))
  loc_131DFE8:     Set var_130 = Me.Txt
  loc_131DFEE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_134, var_138, var_9C)
  loc_131DFF6:     var_154 = var_134.Text
  loc_131E003:     var_154 = Val(var_138)
  loc_131E011:     Proc_6_17_EAA2B0(var_EC, CVar(Proc_6_14_EF349C(var_154, var_94)))
  loc_131E021:     Proc_6_17_EAA2B0(var_1F0, var_88)
  loc_131E046:     var_10C = CVar("Update SmartCardRegistration Set LastTransAmt=" & CStr(var_154) & ",LastTransDate=") 'String
  loc_131E04C:     var_12C = var_10C & var_EC 
  loc_131E097:     var_240 = var_12C & ",CurrBal=" & CVar(var_94) & ",SecurBal=" & CVar(var_9C) & " Where Code=" & var_1F0 & " And LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_131E0AE:     unk_458EB8.Execute CStr(var_240 & "'"), var_280, -1
  loc_131E0F9:     If (Proc_275_7_10CC664(var_94, var_9C, var_8C) = 0) Then
  loc_131E0FC:       GoTo loc_131E24A
  loc_131E0FF:     End If
  loc_131E102:   Else
  loc_131E118:     var_BC = "Smart Card is Changed"
  loc_131E123:     MsgBox(var_BC, &H10, "Smart Card Verification", var_10C, var_12C)
  loc_131E136:   Else
  loc_131E13C:     unk_458EB8.CommitTrans
  loc_131E145:     var_AA = CByte(0) 'Byte
  loc_131E149:     Call Proc_285_26_EF6BFC(var_13C, var_9C)
  loc_131E173:     Me.Find "SearchCode='" & var_A8 & "'", 0, 1
  loc_131E1A2:     Call Proc_285_20_1096368(Proc_5_1_100CB50("INI", Me, global_52), var_BC)
  loc_131E1AD:     Call Proc_285_23_135EBBC(var_9C)
  loc_131E1BB:     var_14C = Me.RecordCount
  loc_131E1C9:     If (var_14C > 0) Then
  loc_131E203:       If (MsgBox("Print Receipt ?", &H24, "Print", var_10C, var_12C) = 6) Then
  loc_131E20C:         Proc_275_19_166EDB0(var_A8)
  loc_131E211:       End If
  loc_131E211:     End If
  loc_131E211:     Call Proc_285_21_EE0644(MemVar_1F923B4)
  loc_131E216:     Call Proc_285_26_EF6BFC()
  loc_131E230:     var_138 = "INI"
  loc_131E23E:     Call Proc_285_20_1096368(Proc_5_1_100CB50(var_138, Me))
  loc_131E249:     Exit Sub
  loc_131E24A:   End If
  loc_131E24A:   ' Referenced from:   131E0FC
  loc_131E24A: End If
  loc_131E24A: ' Referenced from: 131DD5E
  loc_131E24A: ' Referenced from: 131DBD0
  loc_131E253: If (CInt(var_AA) = 1) Then
  loc_131E25C:   unk_458EB8.RollbackTrans
  loc_131E26C:   var_EC = "Smart Card Detail"
  loc_131E282:   MsgBox("Transaction Failed.", &H10, var_EC, var_10C, var_12C)
  loc_131E292:   Call Proc_285_21_EE0644(global_52)
  loc_131E297: End If
  loc_131E29F: Set var_130 = Err()
  loc_131E2A5: Call 0.Method_arg_1C (var_14C)
  loc_131E2B6: If (var_14C <> 0) Then
  loc_131E2C1:   Set var_130 = Err()
  loc_131E2C7:   Call 0.Method_arg_2C (var_138)
  loc_131E2E0:   MsgBox(CVar(var_138), &H10, var_EC, var_10C, var_12C)
  loc_131E2F3: End If
  loc_131E2F3: Exit Sub
End Sub

Private Sub Form_Load() 'EFF7D8
  'Data Table: 458EAC
  loc_EFF708: On Error Goto loc_EFF791
  loc_EFF712: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_EFF717: Call Proc_285_21_EE0644()
  loc_EFF71C: Call Proc_285_26_EF6BFC()
  loc_EFF72D: Set var_90 = Me
  loc_EFF736: var_8C = "INI"
  loc_EFF744: Call Proc_285_20_1096368(Proc_5_1_100CB50(var_8C, var_90))
  loc_EFF758: Call 0.Method_arg_160 (var_90)
  loc_EFF766: Call 0.Method_arg_164 (var_90)
  loc_EFF774: If (MemVar_1F920B8 = 1) Then
  loc_EFF77D:   Set var_90 = Me.PictShortCuts
  loc_EFF783:   MDIForm1.PictShortCuts.Visible = True
  loc_EFF78B: End If
  loc_EFF78B: Call Proc_285_23_135EBBC(global_52)
  loc_EFF790: Exit Sub
  loc_EFF791: ' Referenced from: EFF708
  loc_EFF799: Set var_90 = Err()
  loc_EFF79F: Call 0.Method_arg_2C (var_8C)
  loc_EFF7C0: MsgBox(CVar(var_8C), &H40, "Information", var_E8, var_108)
  loc_EFF7D3: Exit Sub
  loc_EFF7D4: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0E2CC
  'Data Table: 458EAC
  loc_E0E2C3: Set global_52 = Nothing
  loc_E0E2CA: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E281EC
  'Data Table: 458EAC
  loc_E281C4: On Error Goto loc_E281E3
  loc_E281DB: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E281E3: ' Referenced from: E281C4
  loc_E281E3: Proc_6_60_E62BC4(Shift)
  loc_E281E8: Exit Sub
End Sub

Private Sub CmdCardScan_UnknownEvent_9 'F6E80C
  'Data Table: 458EAC
  Dim var_D8 As TextBox
  loc_F6E6D4: Call Proc_285_21_EE0644()
  loc_F6E6E1: If (Proc_275_20_1365BE0() = 0) Then
  loc_F6E6E4:   Exit Sub
  loc_F6E6E5: End If
  loc_F6E6F0: var_B0 = 0
  loc_F6E745: If (Proc_275_12_130A7A4(2, global_60, global_56, 0, 0) = 0) Then
  loc_F6E748:   Exit Sub
  loc_F6E749: End If
  loc_F6E74F: Call Proc_285_24_125A870(global_56, 0, 0)
  loc_F6E75F: Proc_6_47_EF59D0(var_D0, var_8C, var_B0)
  loc_F6E776: Set var_D4 = Me.Txt
  loc_F6E77C: Call 0.Method_CmdCardScan_UnknownEvent_90 (CInt(&HF), var_D8, CStr(var_D0))
  loc_F6E784: var_D8.Text = var_8C
  loc_F6E7A1: Proc_6_47_EF59D0(var_D0, var_94)
  loc_F6E7B8: Set var_D4 = Me.Txt
  loc_F6E7BE: Call 0.Method_CmdCardScan_UnknownEvent_90 (CInt(&H10), var_D8)
  loc_F6E7C6: var_D8.Text = CStr(var_D0)
  loc_F6E7D8: Call Proc_285_26_EF6BFC(var_94)
  loc_F6E800: Call Proc_285_20_1096368(Proc_5_1_100CB50("INI", Me))
  loc_F6E80B: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EE9764
  'Data Table: 458EAC
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EE96B6: On Error Goto loc_EE971F
  loc_EE96BF: Me.MoveFirst
  loc_EE96D9: var_8C = "SearchCode='" & MyValue
  loc_EE96E9: Me.Find var_8C & "'", 0, 1
  loc_EE9711: Proc_5_0_110649C(&HFF, Me, global_52)
  loc_EE9719: Call Proc_285_23_135EBBC(0)
  loc_EE971E: Exit Sub
  loc_EE971F: ' Referenced from: EE96B6
  loc_EE9727: Set var_A8 = Err()
  loc_EE972D: Call 0.Method_arg_2C (var_8C)
  loc_EE974E: MsgBox(CVar(var_8C), &H40, "Information", var_EC, var_10C)
  loc_EE9761: Exit Sub
  loc_EE9762: Exit Sub
End Sub

Public Sub Proc_285_20_1096368(arg_C) '1096368
  'Data Table: 458EAC
  Dim var_98 As TextBox
  loc_10960AE: Set var_8C = Me.Txt
  loc_10960B4: Call 0.Method_Proc_285_20_1096368C (var_8E, var_86)
  loc_10960C4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10960DA:   Set var_8C = Me.Txt
  loc_10960E0:   Call 0.Method_Proc_285_20_10963680 (CInt(var_86), var_98)
  loc_10960E8:   var_98.Enabled = arg_C
  loc_10960F7: Next var_92 'Byte
  loc_109610A: Set var_8C = Me.Txt
  loc_1096110: Call 0.Method_Proc_285_20_10963680 (CInt(0), var_98)
  loc_1096118: var_98.Enabled = False
  loc_1096131: Set var_8C = Me.Txt
  loc_1096137: Call 0.Method_Proc_285_20_10963680 (CInt(1), var_98)
  loc_109613F: var_98.Enabled = False
  loc_1096158: Set var_8C = Me.Txt
  loc_109615E: Call 0.Method_Proc_285_20_10963680 (CInt(2), var_98)
  loc_1096166: var_98.Enabled = False
  loc_109617F: Set var_8C = Me.Txt
  loc_1096185: Call 0.Method_Proc_285_20_10963680 (CInt(3), var_98)
  loc_109618D: var_98.Enabled = False
  loc_10961A6: Set var_8C = Me.Txt
  loc_10961AC: Call 0.Method_Proc_285_20_10963680 (CInt(4), var_98)
  loc_10961B4: var_98.Enabled = False
  loc_10961CD: Set var_8C = Me.Txt
  loc_10961D3: Call 0.Method_Proc_285_20_10963680 (CInt(5), var_98)
  loc_10961DB: var_98.Enabled = False
  loc_10961F4: Set var_8C = Me.Txt
  loc_10961FA: Call 0.Method_Proc_285_20_10963680 (CInt(6), var_98)
  loc_1096202: var_98.Enabled = False
  loc_109621B: Set var_8C = Me.Txt
  loc_1096221: Call 0.Method_Proc_285_20_10963680 (CInt(7), var_98)
  loc_1096229: var_98.Enabled = False
  loc_1096242: Set var_8C = Me.Txt
  loc_1096248: Call 0.Method_Proc_285_20_10963680 (CInt(8), var_98)
  loc_1096250: var_98.Enabled = False
  loc_1096269: Set var_8C = Me.Txt
  loc_109626F: Call 0.Method_Proc_285_20_10963680 (CInt(&HB), var_98)
  loc_1096277: var_98.Enabled = False
  loc_1096290: Set var_8C = Me.Txt
  loc_1096296: Call 0.Method_Proc_285_20_10963680 (CInt(&HC), var_98)
  loc_109629E: var_98.Enabled = False
  loc_10962B7: Set var_8C = Me.Txt
  loc_10962BD: Call 0.Method_Proc_285_20_10963680 (CInt(&HD), var_98)
  loc_10962C5: var_98.Enabled = False
  loc_10962DE: Set var_8C = Me.Txt
  loc_10962E4: Call 0.Method_Proc_285_20_10963680 (CInt(&HE), var_98)
  loc_10962EC: var_98.Enabled = False
  loc_1096305: Set var_8C = Me.Txt
  loc_109630B: Call 0.Method_Proc_285_20_10963680 (CInt(&HF), var_98)
  loc_1096313: var_98.Enabled = False
  loc_109632C: Set var_8C = Me.Txt
  loc_1096332: Call 0.Method_Proc_285_20_10963680 (CInt(&H10), var_98)
  loc_109633A: var_98.Enabled = False
  loc_1096353: Set var_8C = Me.CmdCardScan
  loc_1096359: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(Not(arg_C))
  loc_1096364: Exit Sub
  loc_1096365:  = arg_5100
End Sub

Public Sub Proc_285_21_EE0644
  'Data Table: 458EAC
  Dim var_98 As TextBox
  loc_EE0596: Set var_8C = Me.Txt
  loc_EE059C: Call 0.Method_Proc_285_21_EE0644C (var_8E, var_86)
  loc_EE05AC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE05C2:   Set var_8C = Me.Txt
  loc_EE05C8:   Call 0.Method_Proc_285_21_EE06440 (CInt(var_86), var_98)
  loc_EE05D0:   var_98.Text = vbNullString
  loc_EE05EC:   Set var_8C = Me.Txt
  loc_EE05F2:   Call 0.Method_Proc_285_21_EE06440 (CInt(var_86), var_98)
  loc_EE05FA:   var_98.Tag = vbNullString
  loc_EE0609: Next var_92 'Byte
  loc_EE0615: global_56 = vbNullString
  loc_EE061F: global_60 = vbNullString
  loc_EE0626: var_A0 = vbNullString
  loc_EE0635: Call Proc_285_25_11DD904(vbNullString)
  loc_EE0641: Exit Sub
End Sub

Public Sub Proc_285_22_F0C804
  'Data Table: 458EAC
  Dim var_8C As TextBox
  loc_F0C71E: Set var_88 = Me.Txt
  loc_F0C724: Call 0.Method_Proc_285_22_F0C8040 (CInt(&HD), var_8C)
  loc_F0C72C: var_8C.Text = vbNullString
  loc_F0C746: Set var_88 = Me.Txt
  loc_F0C74C: Call 0.Method_Proc_285_22_F0C8040 (CInt(&HC), var_8C)
  loc_F0C754: var_8C.Text = vbNullString
  loc_F0C76E: Set var_88 = Me.Txt
  loc_F0C774: Call 0.Method_Proc_285_22_F0C8040 (CInt(&HE), var_8C)
  loc_F0C77C: var_8C.Text = vbNullString
  loc_F0C796: Set var_88 = Me.Txt
  loc_F0C79C: Call 0.Method_Proc_285_22_F0C8040 (CInt(&HB), var_8C)
  loc_F0C7A4: var_8C.Text = vbNullString
  loc_F0C7BE: Set var_88 = Me.Txt
  loc_F0C7C4: Call 0.Method_Proc_285_22_F0C8040 (CInt(9), var_8C)
  loc_F0C7CC: var_8C.Text = vbNullString
  loc_F0C7E6: Set var_88 = Me.Txt
  loc_F0C7EC: Call 0.Method_Proc_285_22_F0C8040 (CInt(&HA), var_8C)
  loc_F0C7F4: var_8C.Text = vbNullString
  loc_F0C800: Exit Sub
End Sub

Public Sub Proc_285_23_135EBBC
  'Data Table: 458EAC
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B4 As String
  Dim var_BC As TextBox
  Dim var_B8 As Fields15
  Dim var_DC As Variant
  loc_135E380: On Error Goto loc_135EB76
  loc_135E389: Proc_183_45_E5C118(global_52)
  loc_135E3A5: If (Me.RecordCount <= 0) Then
  loc_135E3A8:   Call Proc_285_21_EE0644()
  loc_135E3B0: Else
  loc_135E3E1:   global_60 = Proc_6_38_E68A98(CVar(Me.Fields.Item("SerialNo")))
  loc_135E42A:   Set var_B8 = Me.Txt
  loc_135E430:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(&HB), var_BC)
  loc_135E438:   var_BC.Text = CStr(Me.Fields.Item("SearchCode").Value)
  loc_135E4A3:   Set var_B8 = Me.Txt
  loc_135E4A9:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(&HD), var_BC, CStr(Format(CVar(Me.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_135E4B1:   var_BC.Text = 1
  loc_135E4F9:   var_DC = "hh:nn"
  loc_135E520:   Set var_B8 = Me.Txt
  loc_135E526:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(&HE), var_BC, CStr(Format(CVar(Me.Fields.Item("U_EntDt")), var_DC)))
  loc_135E52E:   var_BC.Text = 1
  loc_135E571:   Proc_6_39_E7C810(var_DC, CVar(Me.Fields.Item("VNo")))
  loc_135E588:   Set var_B8 = Me.Txt
  loc_135E58E:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(&HC), var_BC, CStr(var_DC))
  loc_135E596:   var_BC.Text = 1
  loc_135E603:   Set var_B8 = Me.Txt
  loc_135E609:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(0), var_BC, CStr(Format(CVar(Me.Fields.Item("IssDate")), "dd/MMM/yyyy")))
  loc_135E611:   var_BC.Text = 1
  loc_135E667:   Set var_B8 = Me.Txt
  loc_135E66D:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(1), var_BC, CStr(Me.Fields.Item("CardType").Value))
  loc_135E675:   var_BC.Text = 1
  loc_135E6C4:   Set var_B8 = Me.Txt
  loc_135E6CA:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(2), var_BC)
  loc_135E6D2:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("MemberName")))
  loc_135E71F:   Set var_B8 = Me.Txt
  loc_135E725:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(2), var_BC)
  loc_135E72D:   var_BC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("MemberCode")))
  loc_135E77A:   Set var_B8 = Me.Txt
  loc_135E780:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(3), var_BC)
  loc_135E788:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_135E7D5:   Set var_B8 = Me.Txt
  loc_135E7DB:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(3), var_BC)
  loc_135E7E3:   var_BC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")))
  loc_135E833:   Set var_B8 = Me.Txt
  loc_135E839:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(4), var_BC)
  loc_135E841:   var_BC.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_135E890:   Set var_B8 = Me.Txt
  loc_135E896:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(5), var_BC)
  loc_135E89E:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Addr")))
  loc_135E8EB:   Set var_B8 = Me.Txt
  loc_135E8F1:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(6), var_BC)
  loc_135E8F9:   var_BC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Phone")))
  loc_135E962:   Set var_B8 = Me.Txt
  loc_135E968:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(7), var_BC, CStr(Format(CVar(Me.Fields.Item("ValidUpto")), "dd/MMM/yyyy")))
  loc_135E970:   var_BC.Text = 1
  loc_135E9BD:   var_EC = "No"
  loc_135E9C8:   var_DC = "Yes"
  loc_135E9E0:   var_11C = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("BlockedYN")), 1) = "Y"), var_DC, var_EC)
  loc_135E9F7:   Set var_B8 = Me.Txt
  loc_135E9FD:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(8), var_BC)
  loc_135EA05:   var_BC.Text = CStr(var_11C)
  loc_135EA52:   Proc_6_47_EF59D0(var_DC, CVar(Me.Fields.Item("CashAmt")))
  loc_135EA69:   Set var_B8 = Me.Txt
  loc_135EA6F:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(9), var_BC)
  loc_135EA77:   var_BC.Text = CStr(var_DC)
  loc_135EAB8:   Proc_6_47_EF59D0(var_DC, CVar(Me.Fields.Item("SecurityAmt")))
  loc_135EAC0:   var_B4 = CStr(var_DC)
  loc_135EACF:   Set var_B8 = Me.Txt
  loc_135EAD5:   Call 0.Method_Proc_285_23_135EBBC0 (CInt(&HA), var_BC)
  loc_135EADD:   var_BC.Text = var_B4
  loc_135EB59:   Call Proc_285_25_11DD904(Proc_6_38_E68A98(CVar(Me.Fields.Item("PicPath"))), Proc_6_38_E68A98(CVar(Me.Fields.Item("SigPath"))))
  loc_135EB75: End If
  loc_135EB75: Exit Sub
  loc_135EB76: ' Referenced from: 135E380
  loc_135EB7E: Set var_8C = Err()
  loc_135EB84: Call 0.Method_arg_2C (var_B4)
  loc_135EBA5: MsgBox(CVar(var_B4), &H40, "Information", var_EC, var_11C)
  loc_135EBB8: Exit Sub
End Sub

Public Sub Proc_285_24_125A870(arg_C) '125A870
  'Data Table: 458EAC
  Dim var_90 As String
  Dim unk_458EB8 As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Fields15
  Dim var_BC As Variant
  Dim var_100 As TextBox
  Dim var_C8 As Variant
  Dim var_FC As Fields15
  loc_125A317: var_88 = arg_C
  loc_125A32E: var_90 = "Select SCR.MemberCode,S.Name As MemberName,SCR.Code,SCR.Name As Name,SCR.CardType,SCR.CardNo,SCR.Addr,SCR.Phone,SCR.SerialNo,SCR.IssDate,SCR.ValidUpto,SCR.BlockedYN,MF.PicPath,MF.SigPath From SmartCardRegistration SCR Left Join MemberFamily MF On MF.CardRegId=SCR.Code Left Join SubGroup S On SCR.MemberCode=S.Subcode Where SCR.LogSite_Code='" & MemVar_1F92078
  loc_125A34C: unk_458EB8.Execute var_90 & "' And SCR.Code='" & var_88 & "'", var_BC, -1
  loc_125A357: Set var_8C = var_C0
  loc_125A37F: If (var_8C.RecordCount > 0) Then
  loc_125A3B0:   global_60 = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("SerialNo")))
  loc_125A40F:   Set var_FC = Me.Txt
  loc_125A415:   Call 0.Method_Proc_285_24_125A8700 (CInt(0), var_100, CStr(Format(CVar(var_8C.Fields.Item("IssDate")), "dd/MMM/yyyy")))
  loc_125A41D:   var_100.Text = 1
  loc_125A470:   Set var_FC = Me.Txt
  loc_125A476:   Call 0.Method_Proc_285_24_125A8700 (CInt(1), var_100, CStr(var_8C.Fields.Item("CardType").Value))
  loc_125A47E:   var_100.Text = 1
  loc_125A4CA:   Set var_FC = Me.Txt
  loc_125A4D0:   Call 0.Method_Proc_285_24_125A8700 (CInt(2), var_100)
  loc_125A4D8:   var_100.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("MemberName")))
  loc_125A522:   Set var_FC = Me.Txt
  loc_125A528:   Call 0.Method_Proc_285_24_125A8700 (CInt(2), var_100)
  loc_125A530:   var_100.Tag = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("MemberCode")))
  loc_125A55B:   var_C8 = var_8C.Fields.Item("Name")
  loc_125A57A:   Set var_FC = Me.Txt
  loc_125A580:   Call 0.Method_Proc_285_24_125A8700 (CInt(3), var_100)
  loc_125A588:   var_100.Text = Proc_6_38_E68A98(CVar(var_C8))
  loc_125A5AA:   Set var_C0 = Me.Txt
  loc_125A5B0:   Call 0.Method_Proc_285_24_125A8700 (CInt(3), var_C8)
  loc_125A5B8:   var_C8.Tag = var_88
  loc_125A5FA:   Set var_FC = Me.Txt
  loc_125A600:   Call 0.Method_Proc_285_24_125A8700 (CInt(4), var_100)
  loc_125A608:   var_100.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardNo")))
  loc_125A652:   Set var_FC = Me.Txt
  loc_125A658:   Call 0.Method_Proc_285_24_125A8700 (CInt(5), var_100)
  loc_125A660:   var_100.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Addr")))
  loc_125A6AA:   Set var_FC = Me.Txt
  loc_125A6B0:   Call 0.Method_Proc_285_24_125A8700 (CInt(6), var_100)
  loc_125A6B8:   var_100.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Phone")))
  loc_125A71E:   Set var_FC = Me.Txt
  loc_125A724:   Call 0.Method_Proc_285_24_125A8700 (CInt(7), var_100, CStr(Format(CVar(var_8C.Fields.Item("ValidUpto")), "dd/MMM/yyyy")))
  loc_125A72C:   var_100.Text = 1
  loc_125A7B0:   Set var_FC = Me.Txt
  loc_125A7B6:   Call 0.Method_Proc_285_24_125A8700 (CInt(8), var_100)
  loc_125A7BE:   var_100.Text = CStr(IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("BlockedYN")), 1) = "Y"), "Yes", "No"))
  loc_125A7F1:   var_C0 = var_8C.Fields
  loc_125A840:   Call Proc_285_25_11DD904(Proc_6_38_E68A98(CVar(var_C0.Item("PicPath"))), Proc_6_38_E68A98(CVar(var_8C.Fields.Item("SigPath"))))
  loc_125A85F: Else
  loc_125A85F:   Call Proc_285_21_EE0644(var_C0)
  loc_125A864: End If
  loc_125A869: Set var_8C = Nothing
  loc_125A86C: Exit Sub
End Sub

Public Sub Proc_285_25_11DD904(arg_C, arg_10) '11DD904
  'Data Table: 458EAC
  Dim var_8C As Image
  Dim var_A0 As Variant
  Dim var_F0 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_11DD4AB: Set var_8C = Me.ImgPhoto
  loc_11DD4C4: If (var_8C.Tag <> arg_C) Then
  loc_11DD4D4:   var_F0 = IsNull(arg_C)
  loc_11DD4DB:   var_B0 = arg_C
  loc_11DD4EB:   var_D0 = vbNullString
  loc_11DD502:   If CBool(var_F0 Or (Trim(var_B0) = var_D0)) Then
  loc_11DD523:     Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DD538:     Me.ImgPhoto.Picture = var_8C
  loc_11DD551:     Me.ImgPhoto.Tag = vbNullString
  loc_11DD55C:   Else
  loc_11DD55F:     var_A0 = arg_C
  loc_11DD56F:     var_D0 = arg_C
  loc_11DD59A:     var_B0 = "DAT"
  loc_11DD5C2:     var_F0 = "AVI"
  loc_11DD5E1:     If CBool((Ucase(Right(Trim(var_A0), 3)) = var_B0) Or (Ucase(Right(Trim(var_D0), 3)) = var_F0)) Then
  loc_11DD5F0:       Me.ImgPhoto.Visible = False
  loc_11DD5FB:     Else
  loc_11DD608:       Me.ImgPhoto.Tag = arg_C
  loc_11DD61C:       Call 0.Method_Proc_285_25_11DD9044 (arg_C, var_17A)
  loc_11DD624:       If var_17A Then
  loc_11DD641:         Set var_8C = Me.ImgPhoto
  loc_11DD659:         Me.Global.LoadPicture CVar(Me.ImgPhoto.Tag), var_A0, var_B0, var_D0, var_F0
  loc_11DD66E:         Me.ImgPhoto.Picture = var_114
  loc_11DD683:         Set var_8C = Me.ImgPhoto
  loc_11DD689:         var_8C.Refresh
  loc_11DD694:       Else
  loc_11DD6B2:         Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DD6C7:         Me.ImgPhoto.Picture = var_8C
  loc_11DD6D3:       End If
  loc_11DD6D3:     End If
  loc_11DD6D3:   End If
  loc_11DD6D3: End If
  loc_11DD6DA: Set var_8C = Me.ImgSign
  loc_11DD6F3: If (var_8C.Tag <> arg_10) Then
  loc_11DD703:   var_F0 = IsNull(arg_10)
  loc_11DD70A:   var_B0 = arg_10
  loc_11DD71A:   var_D0 = vbNullString
  loc_11DD731:   If CBool(var_F0 Or (Trim(var_B0) = var_D0)) Then
  loc_11DD752:     Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DD767:     Me.ImgSign.Picture = var_8C
  loc_11DD780:     Me.ImgSign.Tag = vbNullString
  loc_11DD78B:   Else
  loc_11DD78E:     var_A0 = arg_10
  loc_11DD79E:     var_D0 = arg_10
  loc_11DD7C9:     var_B0 = "DAT"
  loc_11DD7F1:     var_F0 = "AVI"
  loc_11DD810:     If CBool((Ucase(Right(Trim(var_A0), 3)) = var_B0) Or (Ucase(Right(Trim(var_D0), 3)) = var_F0)) Then
  loc_11DD81F:       Me.ImgSign.Visible = False
  loc_11DD82A:     Else
  loc_11DD831:       Set var_8C = Me.ImgSign
  loc_11DD837:       var_8C.Tag = arg_10
  loc_11DD84B:       Call 0.Method_Proc_285_25_11DD9044 (arg_10, var_17A, var_8C)
  loc_11DD853:       If var_17A Then
  loc_11DD870:         Set var_8C = Me.ImgSign
  loc_11DD888:         Me.Global.LoadPicture CVar(Me.ImgSign.Tag), var_A0, var_B0, var_D0, var_F0
  loc_11DD89D:         Me.ImgSign.Picture = var_114
  loc_11DD8B2:         Set var_8C = Me.ImgSign
  loc_11DD8B8:         var_8C.Refresh
  loc_11DD8C3:       Else
  loc_11DD8E1:         Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11DD8F6:         Me.ImgSign.Picture = var_8C
  loc_11DD902:       End If
  loc_11DD902:     End If
  loc_11DD902:   End If
  loc_11DD902: End If
  loc_11DD902: Exit Sub
  loc_11DD903: var_8C(var_114) = var_8C
End Sub

Public Sub Proc_285_26_EF6BFC
  'Data Table: 458EAC
  Dim var_88 As String
  Dim var_9C As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim unk_458EB8 As Connection15
  loc_EF6B4F: var_88 = "SELECT SCL.DocId As Searchcode,SCL.Code,SCL.VType,SCL.VNo,Convert(Varchar(11),SCL.VDate,103) VDate,SCL.Narration,SCL.U_Name,SCL.U_EntDt,SCL.CashAmt,SCL.SecurityAmt,SCR.IssDate,SCR.CardType,SCR.Name,SCR.CardNo,SCR.Addr,SCR.Phone,SCR.ValidUpto,SCR.BlockedYN,SCR.SerialNo,SCR.MemberCode,MF.PicPath,MF.SigPath,S.Name MemberName From (Select DocId,Max(Code)Code,Max(VType)Vtype,Max(VNo)VNo,Max(VDate)VDate,Max(Narration)Narration,Max(U_Name)U_Name,Max(U_EntDt)U_EntDt,IsNull(Sum(CashAmt),0)CashAmt,IsNull(Sum(SecurityAmt),0)SecurityAmt From " & "(Select DocId,Code,Vtype,VNo,VDate,Narration,U_Name,U_EntDt,CashAmt = CASE WHEN Type='RCARDC' THEN AmtDr ELSE 0 END ,SecurityAmt = CASE WHEN Type='RCARDS' THEN AmtDr ELSE 0 END From SmartCardLedger Where VType='RCARD' And AmtDr>0 And Code='"
  loc_EF6B60: var_9C = CVar(var_88 & global_56 & "' And VDate='") 'String
  loc_EF6B99: var_15C = var_9C & CDate(MemVar_1F920EC) & "' And Site_Code='" & CVar(MemVar_1F92070) & "' And LOGSITE_CODE='" & CVar(MemVar_1F92078) & "')Q Group By Q.DocId) SCL Inner Join SmartCardRegistration SCR On SCL.Code=SCR.Code " 
  loc_EF6BA2: var_17C = var_15C & "Left Join MemberFamily MF On SCR.Code=MF.CardRegId Left Join Subgroup S On SCR.MemberCode=S.SubCode Order By SCL.VNo Desc" 
  loc_EF6BDB: unk_458EB8.Execute CStr(var_17C), var_9C, -1
  loc_EF6BEC: Set global_52 = var_180
  loc_EF6BFA: Exit Sub
End Sub
