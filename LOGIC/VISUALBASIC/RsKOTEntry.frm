VERSION 5.00
Begin VB.Form RsKOTEntry
  Caption = "KOT"
  BackColor = &H80000005&
  ForeColor = &H40&
  WindowState = 2
  ScaleMode = 0
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  Icon = "RsKOTEntry.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 930
  ClientWidth = 13245
  ClientHeight = 10935
  ScaleLeft = 0
  ScaleTop = 0
  ScaleWidth = 3503989.919
  ScaleHeight = 11010
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
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13245
    Height = 450
    TabIndex = 61
  End
  Begin Frame FrKOT
    Caption = "Frame1"
    BackColor = &HC0C0FF&
    Left = 0
    Top = 0
    Width = 26506
    Height = 11010
    TabIndex = 8
    BeginProperty Font
      Name = "System"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin Timer Timer2
      Interval = 10
      Left = 17460
      Top = 10590
    End
    Begin TextBox Txt
      Index = 10
      ForeColor = &HC00000&
      Left = 10455
      Top = 2325
      Width = 3480
      Height = 285
      Enabled = 0   'False
      TabIndex = 30
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 9
      ForeColor = &HC00000&
      Left = 10455
      Top = 2010
      Width = 3480
      Height = 285
      Enabled = 0   'False
      TabIndex = 29
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 8
      ForeColor = &HC00000&
      Left = 10455
      Top = 1695
      Width = 3480
      Height = 285
      Enabled = 0   'False
      TabIndex = 28
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 7
      ForeColor = &HC00000&
      Left = 9570
      Top = 1305
      Width = 1860
      Height = 285
      Visible = 0   'False
      TabIndex = 27
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 6
      ForeColor = &HC00000&
      Left = 7515
      Top = 1005
      Width = 3915
      Height = 285
      TabIndex = 5
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin CheckBox ChkNCKOT
      Caption = "NC "
      BackColor = &HDEE6FE&
      ForeColor = &HC00000&
      Left = 8130
      Top = 1305
      Width = 600
      Height = 285
      TabIndex = 26
      Alignment = 1 'Right Justify
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
    Begin TextBox Txt
      Index = 2
      ForeColor = &HC00000&
      Left = 7740
      Top = 525
      Width = 555
      Height = 345
      TabIndex = 25
      BorderStyle = 0 'None
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 5
      Left = 4020
      Top = 1005
      Width = 2580
      Height = 285
      TabIndex = 4
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 4
      ForeColor = &HC00000&
      Left = 900
      Top = 1005
      Width = 915
      Height = 285
      TabIndex = 2
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 3
      BackColor = &H80000000&
      Left = 11325
      Top = 6300
      Width = 2325
      Height = 210
      Visible = 0   'False
      TabIndex = 24
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
      ForeColor = &HC00000&
      Left = 5640
      Top = 525
      Width = 975
      Height = 345
      TabIndex = 23
      BorderStyle = 0 'None
      MaxLength = 8
    End
    Begin TextBox Txt
      Index = 1
      ForeColor = &HC00000&
      Left = 6630
      Top = 525
      Width = 1095
      Height = 345
      TabIndex = 22
      BorderStyle = 0 'None
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HFFFFC0&
      ForeColor = &H80000012&
      Left = 1080
      Top = 8250
      Width = 480
      Height = 240
      Visible = 0   'False
      TabIndex = 21
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
      Index = 12
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 3690
      Top = 1305
      Width = 1140
      Height = 285
      Visible = 0   'False
      TabIndex = 1
      BorderStyle = 0 'None
      MaxLength = 11
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 11
      ForeColor = &HC00000&
      Left = 900
      Top = 1305
      Width = 2775
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 0
      BorderStyle = 0 'None
      MaxLength = 75
      Appearance = 0 'Flat
    End
    Begin CommandButton Command1
      Caption = "Command1"
      Left = 15000
      Top = 7950
      Width = 1740
      Height = 405
      Visible = 0   'False
      TabIndex = 18
      BeginProperty Font
        Name = "System"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox Txt
      Index = 14
      ForeColor = &HC00000&
      Left = 5895
      Top = 1305
      Width = 930
      Height = 255
      Visible = 0   'False
      TabIndex = 6
      BorderStyle = 0 'None
      MaxLength = 15
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 13
      ForeColor = &HC00000&
      Left = 2400
      Top = 1005
      Width = 660
      Height = 285
      TabIndex = 3
      BorderStyle = 0 'None
      MaxLength = 5
      Appearance = 0 'Flat
    End
    Begin Frame FrmeDisc
      Caption = "Description"
      Left = 16170
      Top = 720
      Width = 5130
      Height = 585
      Visible = 0   'False
      TabIndex = 15
      BeginProperty Font
        Name = "System"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin TextBox txtDisc
        Left = 60
        Top = 270
        Width = 5000
        Height = 240
        TabIndex = 16
        BorderStyle = 0 'None
        MaxLength = 75
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
    Begin MSHFlexGrid FGrid1
      Left = 10185
      Top = 4560
      Width = 5940
      Height = 2325
      Visible = 0   'False
      TabIndex = 9
    End
    Begin BtnEnh BtnLblModi
      Left = 1695
      Top = 8430
      Width = 3210
      Height = 330
      Visible = 0   'False
      TabIndex = 10
    End
    Begin DataGrid DGTable
      Left = 16485
      Top = 2820
      Width = 9240
      Height = 2460
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 11
    End
    Begin DataGrid DGItem
      Left = 16320
      Top = 2190
      Width = 4035
      Height = 4710
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 12
    End
    Begin DataGrid DGRest
      Left = 16140
      Top = 1755
      Width = 5910
      Height = 1455
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 13
    End
    Begin DataGrid DGWaiter
      Left = 16305
      Top = 1245
      Width = 4290
      Height = 3390
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 14
    End
    Begin DataGrid DGNCType
      Left = 9195
      Top = 2250
      Width = 3675
      Height = 3390
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 17
    End
    Begin DataGrid DGMember
      Left = 16335
      Top = 60
      Width = 6720
      Height = 3315
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 19
    End
    Begin MSFlexGrid FGPoint
      Left = 18360
      Top = 9675
      Width = 1980
      Height = 1440
      Visible = 0   'False
      TabIndex = 20
    End
    Begin CommonDialog cdl
    End
    Begin MSHFlexGrid FGrid
      Left = 30
      Top = 1620
      Width = 8655
      Height = 6090
      TabIndex = 7
    End
    Begin BtnEnh CmdTabeSt
      Left = 4905
      Top = 8340
      Width = 945
      Height = 540
      Visible = 0   'False
      TabIndex = 31
    End
    Begin BtnEnh CmPendingKot
      Left = 5850
      Top = 8340
      Width = 945
      Height = 540
      Visible = 0   'False
      TabIndex = 32
    End
    Begin BtnEnh cmdNCBill
      Left = 11430
      Top = 990
      Width = 990
      Height = 615
      Visible = 0   'False
      TabIndex = 33
    End
    Begin MSHFlexGrid FGrid2
      Left = 10215
      Top = 6930
      Width = 5940
      Height = 2325
      Visible = 0   'False
      TabIndex = 34
    End
    Begin BtnEnh CmdFreeItem
      Left = 12465
      Top = 990
      Width = 1050
      Height = 600
      Visible = 0   'False
      TabIndex = 62
    End
    Begin Label LblCurStockStr
      Caption = "Item Current Stock"
      ForeColor = &H80&
      Left = 0
      Top = 7890
      Width = 2370
      Height = 375
      TabIndex = 63
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 15.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblPendingKotItem
      Caption = "Pending Kot"
      ForeColor = &HC00000&
      Left = 12825
      Top = 2685
      Width = 4110
      Height = 345
      Visible = 0   'False
      TabIndex = 60
      Alignment = 2 'Center
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
      Caption = "Free Items"
      Index = 10
      ForeColor = &H40&
      Left = 30
      Top = 8430
      Width = 1020
      Height = 315
      TabIndex = 59
      AutoSize = -1  'True
      WordWrap = -1  'True
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
    Begin Label lblclr
      BackColor = &HFF00&
      Left = 1080
      Top = 8490
      Width = 600
      Height = 240
      TabIndex = 58
      BeginProperty Font
        Name = "System"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Comment3"
      Index = 9
      ForeColor = &HC00000&
      Left = 9405
      Top = 2340
      Width = 1020
      Height = 240
      TabIndex = 57
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
      Caption = "Comment2"
      Index = 8
      ForeColor = &HC00000&
      Left = 9405
      Top = 2025
      Width = 1020
      Height = 240
      TabIndex = 56
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
      Caption = "Comment1"
      Index = 7
      ForeColor = &HC00000&
      Left = 9405
      Top = 1725
      Width = 1020
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
    End
    Begin Label Label1
      Caption = "Steward"
      Index = 6
      ForeColor = &H40&
      Left = 12375
      Top = 6885
      Width = 690
      Height = 210
      Visible = 0   'False
      TabIndex = 54
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
      Caption = "NC Type"
      Index = 4
      ForeColor = &HC00000&
      Left = 8745
      Top = 1305
      Width = 795
      Height = 240
      Visible = 0   'False
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
    End
    Begin Label Label1
      Caption = "Remark"
      Index = 0
      BackColor = &H80&
      ForeColor = &HC00000&
      Left = 6750
      Top = 1005
      Width = 735
      Height = 240
      TabIndex = 52
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
    Begin Label LblState
      BackColor = &HFFFFFF&
      ForeColor = &HC0&
      Left = 8340
      Top = 525
      Width = 3090
      Height = 345
      TabIndex = 51
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblRestz
      Caption = "#"
      BackColor = &HC00000&
      ForeColor = &HFF0000&
      Left = 12990
      Top = -780
      Width = 285
      Height = 525
      TabIndex = 50
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Times New Roman"
        Size = 20.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Server"
      Index = 5
      ForeColor = &HC00000&
      Left = 3195
      Top = 1005
      Width = 630
      Height = 240
      TabIndex = 49
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
      Caption = "Table Code"
      Index = 2
      BackColor = &H80&
      ForeColor = &HC00000&
      Left = 75
      Top = 1005
      Width = 1095
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
    End
    Begin Label Label1
      Caption = "KOT#"
      Index = 3
      ForeColor = &HC00000&
      Left = 11160
      Top = 6945
      Width = 510
      Height = 240
      Visible = 0   'False
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
    End
    Begin Label Label1
      Caption = "Date"
      Index = 1
      ForeColor = &HC00000&
      Left = 10470
      Top = 6975
      Width = 435
      Height = 240
      Visible = 0   'False
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
    End
    Begin Label LblVPrefix
      Caption = "VPrefix"
      ForeColor = &HC00000&
      Left = 16710
      Top = 10755
      Width = 705
      Height = 240
      Visible = 0   'False
      TabIndex = 45
      Alignment = 1 'Right Justify
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
      Caption = "Member"
      Index = 11
      ForeColor = &HC00000&
      Left = 75
      Top = 1305
      Width = 780
      Height = 240
      Visible = 0   'False
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
    End
    Begin Label Label1
      Caption = "Token No."
      Index = 20
      ForeColor = &HC00000&
      Left = 4905
      Top = 1305
      Width = 960
      Height = 240
      Visible = 0   'False
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
    End
    Begin Label Label1
      Caption = "Pax"
      Index = 12
      ForeColor = &HC00000&
      Left = 1980
      Top = 1005
      Width = 375
      Height = 240
      TabIndex = 42
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
    Begin Label LblRest
      Caption = "#"
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 15
      Top = 525
      Width = 2235
      Height = 345
      TabIndex = 40
      Alignment = 2 'Center
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label lblSession
      Caption = "#"
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2250
      Top = 525
      Width = 1665
      Height = 345
      TabIndex = 39
      Alignment = 2 'Center
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
    Begin Label LblKotNm
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 3915
      Top = 525
      Width = 1725
      Height = 345
      TabIndex = 38
      Alignment = 2 'Center
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
    Begin Label LblLDt
      Caption = "Last Update"
      ForeColor = &HFF0000&
      Left = 90
      Top = 10065
      Width = 2670
      Height = 240
      TabIndex = 37
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
      Left = 105
      Top = 9735
      Width = 2460
      Height = 240
      TabIndex = 36
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
    Begin Label LblPendingKot
      ForeColor = &HC00000&
      Left = 12345
      Top = 3075
      Width = 4110
      Height = 345
      Visible = 0   'False
      TabIndex = 35
      Alignment = 2 'Center
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
    Begin Label Label2
      BackColor = &HFFFFFF&
      Left = 30
      Top = 525
      Width = 8310
      Height = 345
      TabIndex = 41
    End
  End
End

Attribute VB_Name = "RsKOTEntry"

Private global_268 As Integer
Private global_272 As Integer
Private global_270 As Integer
Private global_124 As Integer
Private global_126 As Integer
Private MasterFormExit As Integer
Private global_252 As Long
Private global_116 As Long

Private Sub DGNCType_UnknownEvent_9 'F538B8
  'Data Table: 589074
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F53798: On Error Goto loc_F538B2
  loc_F537AA: Me.DGNCType.Visible = False
  loc_F537C9: If (Me.RecordCount > 0) Then
  loc_F53808:   Set var_B4 = Me.Txt
  loc_F5380E:   Call 0.Method_DGNCType_UnknownEvent_90 (CInt(7), var_B8)
  loc_F53816:   var_B8.Text = CStr(Me.Fields.Item("NCType").Value)
  loc_F53849:   var_B0 = Me.Fields.Item("NCPer")
  loc_F53868:   Set var_B4 = Me.Txt
  loc_F5386E:   Call 0.Method_DGNCType_UnknownEvent_90 (CInt(7), var_B8)
  loc_F53876:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5388C: End If
  loc_F53897: Set var_A8 = Me.Txt
  loc_F5389D: Call 0.Method_DGNCType_UnknownEvent_90 (CInt(7))
  loc_F538A5: var_B0.SetFocus
  loc_F538B1: Exit Sub
  loc_F538B2: ' Referenced from: F53798
  loc_F538B2: Proc_6_60_E62BC4(var_B0)
  loc_F538B7: Exit Sub
End Sub

Private Sub lblclr_Click() 'F14038
  'Data Table: 589074
  Dim arg_20 As Variant
  Dim var_B4 As Variant
  loc_F13F52: arg_20 = Me.cdl._Action
  loc_F13F7A: Me.lblclr.BackColor = CLng(Me.cdl.Color)
  loc_F13FAE: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F13FB8:   var_B4 = CVar(CLng(var_86)) 'Long
  loc_F13FF0:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_F1401E:     Proc_96_0_E6BE98(Me.FGrid, var_86, Me.lblclr.BackColor, CVar(CLng(&HB)))
  loc_F1402C:   End If
  loc_F1402F: Next var_A4 'Integer
  loc_F14034: Exit Sub
  loc_F14035:  = 
End Sub

Private Sub DGRest_UnknownEvent_9 'FE5F4C
  'Data Table: 589074
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE5D87: Me.DGRest.Visible = False
  loc_FE5DA6: If (Me.RecordCount > 0) Then
  loc_FE5DE3:   Set var_B4 = Me.TxtGrid
  loc_FE5DE9:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B8)
  loc_FE5DF1:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_FE5E1A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE5E22:   var_EC = CVar(CLng(2)) 'Long
  loc_FE5E55:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE5E5D:   Set var_B8 = Me.FGrid
  loc_FE5E63:   LateIdCallSt
  loc_FE5E92:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE5E9A:   var_EC = CVar(CLng(1)) 'Long
  loc_FE5EBC:   var_B0 = Me.Fields.Item("Code")
  loc_FE5ECD:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE5ED5:   Set var_B8 = Me.FGrid
  loc_FE5EDB:   LateIdCallSt
  loc_FE5EF7: End If
  loc_FE5F03: Set var_A8 = Me.TxtGrid
  loc_FE5F09: Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE5F11: var_A4 = var_B0.Visible
  loc_FE5F23: If (var_12E = &HFF) Then
  loc_FE5F2F:   Set var_A8 = Me.TxtGrid
  loc_FE5F35:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FE5F3D:   var_B0.SetFocus
  loc_FE5F49: End If
  loc_FE5F49: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E75BCC
  'Data Table: 589074
  loc_E75B8A: Proc_6_153_E91194(Me.DGRest, arg_14)
  loc_E75BA1: Set var_8C = Me.FGPoint
  loc_E75BBB: Proc_6_138_106D6F8(Me.DGRest, global_100, 0)
  loc_E75BC9: Exit Sub
End Sub

Private Sub CmdFreeItem_UnknownEvent_9 '110E838
  'Data Table: 589074
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E0 As MSHFlexGrid
  Dim var_F0 As Variant
  Dim var_120 As Variant
  Dim var_148 As TextBox
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_130 As Variant
  Dim var_228 As Variant
  loc_110E528: Set var_88 = Me.TopCtrl1
  loc_110E52E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_110E547: If (CStr() = "Browse") Then
  loc_110E54A:   Exit Sub
  loc_110E54B: End If
  loc_110E55E: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110E566: var_CC = CVar(CLng(&HA)) 'Long
  loc_110E599: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_110E59C:   Exit Sub
  loc_110E59D: End If
  loc_110E5B0: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110E5B8: var_CC = CVar(CLng(9)) 'Long
  loc_110E5FA: If (Ucase(CVar(CStr(Me.FGrid.TextMatrix)))) = "FREE") Then
  loc_110E610:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110E618:   var_CC = CVar(CLng(9)) 'Long
  loc_110E61D:   var_120 = "No"
  loc_110E627:   Set var_E0 = Me.FGrid
  loc_110E62D:   LateIdCallSt
  loc_110E663:   Set var_E0 = Me.FGrid
  loc_110E669:   var_F0 = var_E0.TextMatrix)
  loc_110E683:   Set var_144 = Me.Txt
  loc_110E689:   Call 0.Method_CmdFreeItem_UnknownEvent_90 (CInt(1), var_148, var_174, var_F0, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_E0)
  loc_110E691:   var_120 = var_148.Text
  loc_110E6E6:   Call Proc_30_105_F223E0(CStr(var_F0), var_174, CStr(Me.FGrid.TextMatrix)), var_184, Me.FGrid.TextMatrix), CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)))
  loc_110E6FE:   var_1E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110E706:   var_208 = CVar(CLng(8)) 'Long
  loc_110E733:   var_228 = CVar(CStr(Format(CVar(var_184), "0.00"))) 'String
  loc_110E73B:   Set var_23C = Me.FGrid
  loc_110E741:   LateIdCallSt
  loc_110E77D: Else
  loc_110E790:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110E798:   var_CC = CVar(CLng(9)) 'Long
  loc_110E79D:   var_120 = "Free"
  loc_110E7A7:   Set var_E0 = Me.FGrid
  loc_110E7AD:   LateIdCallSt
  loc_110E7D2:   var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_110E7DA:   var_120 = CVar(CLng(8)) 'Long
  loc_110E80B:   var_130 = CVar(CStr(Format("0.01", "0.00"))) 'String
  loc_110E813:   Set var_E0 = Me.FGrid
  loc_110E819:   LateIdCallSt
  loc_110E835: End If
  loc_110E835: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED4028
  'Data Table: 589074
  loc_ED3F8C: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_ED3F8F:   Call DGTable_UnknownEvent_9()
  loc_ED3F94: End If
  loc_ED3FB0: If (CBool(Me.DGWaiter.Visible) = &HFF) Then
  loc_ED3FB3:   Call DGWaiter_UnknownEvent_9()
  loc_ED3FB8: End If
  loc_ED3FD4: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_ED3FD7:   Call DGItem_UnknownEvent_9()
  loc_ED3FDC: End If
  loc_ED3FF8: If (CBool(Me.DGNCType.Visible) = &HFF) Then
  loc_ED3FFB:   Call DGNCType_UnknownEvent_9()
  loc_ED4000: End If
  loc_ED401C: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_ED401F:   Call DGRest_UnknownEvent_9()
  loc_ED4024: End If
  loc_ED4024: Exit Sub
  loc_ED4025: StAryRecMove
End Sub

Private Sub DGItem_UnknownEvent_9 '11DE75C
  'Data Table: 589074
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_FC As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  loc_11DE317: Me.DGItem.Visible = False
  loc_11DE336: If (Me.RecordCount > 0) Then
  loc_11DE373:   Set var_B4 = Me.TxtGrid
  loc_11DE379:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_11DE3AA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DE3B2:   var_EC = CVar(CLng(4)) 'Long
  loc_11DE3E5:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_11DE3ED:   Set var_B8 = Me.FGrid
  loc_11DE3F3:   LateIdCallSt
  loc_11DE422:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DE42A:   var_EC = CVar(CLng(&HA)) 'Long
  loc_11DE45D:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_11DE46B:   LateIdCallSt
  loc_11DE4D2:   var_11C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(5)))) 'String
  loc_11DE4DA:   Set var_B8 = Me.FGrid
  loc_11DE4E0:   LateIdCallSt
  loc_11DE548:   var_11C = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_11DE556:   LateIdCallSt
  loc_11DE5AA:   Set var_B4 = Me.Txt
  loc_11DE5B0:   Call 0.Method_DGItem_UnknownEvent_90 (CInt(1), Me.FGrid, var_138, Me.FGrid, var_11C, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)))
  loc_11DE5B8:   var_B8 = CStr(Me.Fields.Item("Name").Value)
  loc_11DE601:   Call Proc_30_105_F223E0(CStr(Me.Fields.Item("Code").Value), var_138, CStr(Me.Fields.Item("OutletCode").Value), var_148, var_11C)
  loc_11DE619:   var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DE621:   var_18C = CVar(CLng(8)) 'Long
  loc_11DE64E:   var_1AC = CVar(CStr(Format(CVar(var_148), "0.00"))) 'String
  loc_11DE656:   Set var_1C0 = Me.FGrid
  loc_11DE65C:   LateIdCallSt
  loc_11DE6A4:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11DE6AC:   var_EC = CVar(CLng(&HD)) 'Long
  loc_11DE6CE:   var_B0 = Me.Fields.Item("PriceType")
  loc_11DE6DF:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_11DE6E7:   Set var_B8 = Me.FGrid
  loc_11DE6ED:   LateIdCallSt
  loc_11DE709: End If
  loc_11DE715: Set var_A8 = Me.TxtGrid
  loc_11DE71B: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_1C2, var_B8, var_11C, var_EC, var_A4)
  loc_11DE723: var_1C0 = var_B0.Visible
  loc_11DE735: If (var_1C2 = &HFF) Then
  loc_11DE741:   Set var_A8 = Me.TxtGrid
  loc_11DE747:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_1AC, 1)
  loc_11DE74F:   var_B0.SetFocus
  loc_11DE75B: End If
  loc_11DE75B: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E75B38
  'Data Table: 589074
  loc_E75AF6: Proc_6_153_E91194(Me.DGItem, arg_14)
  loc_E75B0D: Set var_8C = Me.FGPoint
  loc_E75B27: Proc_6_138_106D6F8(Me.DGItem, global_84, 0)
  loc_E75B35: Exit Sub
  loc_E75B36: GoTo loc_E756E0
End Sub

Private Sub txtDisc_KeyDown(KeyCode As Integer, Shift As Integer) 'E6B59C
  'Data Table: 589074
  Dim var_88 As Variant
  loc_E6B54A: If (KeyCode = &HD) Then
  loc_E6B551:   Set var_88 = Me.FGrid
  loc_E6B574:   Me.FGrid.Col = CVar(CLng(6))
  loc_E6B582:   global_276 = "Back"
  loc_E6B592:   Me.Timer2.Enabled = True
  loc_E6B59A: End If
  loc_E6B59A: Exit Sub
End Sub

Private Sub txtDisc_LostFocus() 'E49F04
  'Data Table: 589074
  loc_E49EEB: If (Me.FrmeDisc.Visible = &HFF) Then
  loc_E49EF8:   Me.txtDisc.SetFocus
  loc_E49F00: End If
  loc_E49F00: Exit Sub
End Sub

Private Sub CmPendingKot_UnknownEvent_9 '11F9E9C
  'Data Table: 589074
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim unk_589093 As Connection15
  Dim var_88 As Recordset15
  Dim var_A8 As Variant
  Dim var_104 As Variant
  Dim var_C4 As Variant
  Dim var_124 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_144 As Variant
  Dim var_E4 As Variant
  loc_11F9A0B: Me.FGrid2.Redraw = False
  loc_11F9A20: Set var_AC = Me.FGrid2
  loc_11F9A26: var_AC.Rows = 1
  loc_11F9A33: global_268 = 1
  loc_11F9A4D: var_B0 = "SELECT k.docid as DocID,K.Vtime as KotTime,K.VNo,k.Vdate,W.NAME AS WAITER,K.RoomNo AS TABLENo,I.NAME AS PRODUCT,K.Qty,D.NAME AS DEPARTNAME FROM ((((KOT AS K INNER JOIN wAITER AS W ON K.Waiter = W.Code) INNER JOIN ItemMast AS I ON (K.Item = I.Code And K.ItemRestCode=I.RestCode)) INNER JOIN DEPART AS D ON K.RestCode = D.Code) INNER JOIN VOUCHER_TYPE AS V ON (K.Vtype = V.V_Type AND K.SITE_CODE=V.SITE_CODE)) where k.contradocid='' and k.VoidYN='N' and k.delFlag<>'Y' and k.nckot='N' and k.restcode='" & LocalRestCode
  loc_11F9A5D: unk_589093.Execute var_B0 & "' Order By K.DocId,K.RESTCODE,I.Name", var_C4, -1
  loc_11F9A68: Set var_88 = var_AC
  loc_11F9A8C: If (var_88.RecordCount = 0) Then
  loc_11F9A9E:   Me.FGrid2.Visible = False
  loc_11F9AB2:   Me.LblPendingKotItem.Visible = False
  loc_11F9ABD: Else
  loc_11F9ACB:   Me.FGrid2.Visible = True
  loc_11F9ADF:   Me.LblPendingKotItem.Visible = True
  loc_11F9AE7:   ' Referenced from:   11F9E5D
  loc_11F9AF6:   If Not(var_88.EOF) Then
  loc_11F9B00:     var_98 = vbNullString
  loc_11F9B4B:     Proc_6_39_E7C810(var_E4, CVar(var_88.Fields.Item("VNo")), CVar(CLng(1)), CVar(CLng(global_268)))
  loc_11F9B54:     var_124 = CVar(CStr(var_E4)) 'String
  loc_11F9B5B:     LateIdCallSt
  loc_11F9B92:     var_F4 = CVar(CLng(global_268)) 'Long
  loc_11F9B9A:     var_114 = CVar(CLng(2)) 'Long
  loc_11F9BC7:     var_144 = CVar(CStr(Format(CVar(var_88.Fields.Item("VDate")), "dd/MM/yy"))) 'String
  loc_11F9BCE:     LateIdCallSt
  loc_11F9BEB:     var_A8 = CVar(CLng(global_268)) 'Long
  loc_11F9BF3:     var_104 = CVar(CLng(3)) 'Long
  loc_11F9C23:     var_E4 = CVar(CStr(var_88.Fields.Item("KotTime").Value)) 'String
  loc_11F9C2A:     LateIdCallSt
  loc_11F9C47:     var_A8 = CVar(CLng(global_268)) 'Long
  loc_11F9C4F:     var_104 = CVar(CLng(4)) 'Long
  loc_11F9C7F:     var_E4 = CVar(CStr(var_88.Fields.Item("Waiter").Value)) 'String
  loc_11F9C86:     LateIdCallSt
  loc_11F9CBF:     var_F4 = CVar(CLng(global_268)) 'Long
  loc_11F9CC7:     var_114 = CVar(CLng(5)) 'Long
  loc_11F9CF4:     var_144 = CVar(CStr(Format(CVar(var_88.Fields.Item("TableNo")), "00"))) 'String
  loc_11F9CFB:     LateIdCallSt
  loc_11F9D18:     var_A8 = CVar(CLng(global_268)) 'Long
  loc_11F9D20:     var_104 = CVar(CLng(6)) 'Long
  loc_11F9D50:     var_E4 = CVar(CStr(var_88.Fields.Item("Product").Value)) 'String
  loc_11F9D57:     LateIdCallSt
  loc_11F9D90:     var_F4 = CVar(CLng(global_268)) 'Long
  loc_11F9D98:     var_114 = CVar(CLng(7)) 'Long
  loc_11F9DAC:     var_E4 = "0.00"
  loc_11F9DCC:     LateIdCallSt
  loc_11F9E1C:     Proc_6_39_E7C810(var_E4, CVar(var_88.Fields.Item("DocID")), CVar(CLng(8)), CVar(CLng(global_268)), Me.FGrid2, CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), var_E4))), 1)
  loc_11F9E25:     var_124 = CVar(CStr(var_E4)) 'String
  loc_11F9E2C:     LateIdCallSt
  loc_11F9E42:     Set var_D0 = Nothing 
  loc_11F9E52:     global_268 = (global_268 + 1)
  loc_11F9E58:     var_88.MoveNext
  loc_11F9E5D:     GoTo loc_11F9AE7
  loc_11F9E60:   End If
  loc_11F9E73:   Me.FGrid2.FixedRows = 1
  loc_11F9E7B: End If
  loc_11F9E89: Me.FGrid2.Redraw = True
  loc_11F9E96: Set var_88 = Nothing
  loc_11F9E99: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F543F8
  'Data Table: 589074
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F542D8: On Error Goto loc_F543F2
  loc_F542EA: Me.DGTable.Visible = False
  loc_F54309: If (Me.RecordCount > 0) Then
  loc_F54348:   Set var_B4 = Me.Txt
  loc_F5434E:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F54356:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F54389:   var_B0 = Me.Fields.Item("Code")
  loc_F543A8:   Set var_B4 = Me.Txt
  loc_F543AE:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F543B6:   var_B8.Tag = CStr(var_B0.Value)
  loc_F543CC: End If
  loc_F543D7: Set var_A8 = Me.Txt
  loc_F543DD: Call 0.Method_DGTable_UnknownEvent_90 (CInt(4))
  loc_F543E5: var_B0.SetFocus
  loc_F543F1: Exit Sub
  loc_F543F2: ' Referenced from: F542D8
  loc_F543F2: Proc_6_60_E62BC4(var_B0)
  loc_F543F7: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'E75E1C
  'Data Table: 589074
  loc_E75DDA: Proc_6_153_E91194(Me.DGTable, arg_14)
  loc_E75DF1: Set var_8C = Me.FGPoint
  loc_E75E0D: Proc_6_138_106D6F8(Me.DGTable, global_96, CInt(4))
  loc_E75E1B: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_9 'F54830
  'Data Table: 589074
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F54710: On Error Goto loc_F5482A
  loc_F54722: Me.DGMember.Visible = False
  loc_F54741: If (Me.RecordCount > 0) Then
  loc_F54780:   Set var_B4 = Me.Txt
  loc_F54786:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F5478E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F547C1:   var_B0 = Me.Fields.Item("Code")
  loc_F547E0:   Set var_B4 = Me.Txt
  loc_F547E6:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F547EE:   var_B8.Tag = CStr(var_B0.Value)
  loc_F54804: End If
  loc_F5480F: Set var_A8 = Me.Txt
  loc_F54815: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HB))
  loc_F5481D: var_B0.SetFocus
  loc_F54829: Exit Sub
  loc_F5482A: ' Referenced from: F54710
  loc_F5482A: Proc_6_60_E62BC4(var_B0)
  loc_F5482F: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_1F 'E74FA8
  'Data Table: 589074
  loc_E74F66: Proc_6_153_E91194(Me.DGMember, arg_14)
  loc_E74F7D: Set var_8C = Me.FGPoint
  loc_E74F99: Proc_6_138_106D6F8(Me.DGMember, global_196, CInt(&HB))
  loc_E74FA7: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '130465C
  'Data Table: 589074
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_1303F4A: Set var_88 = Me.Txt
  loc_1303F50: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1303F5E: Proc_6_74_E226B0(var_8C)
  loc_1303F6A: Call Proc_30_98_F6DC1C(var_8C)
  loc_1303F72: var_92 = Index
  loc_1303F7D: If (var_92 = CInt(5)) Then
  loc_1303F97:   If (Me.RecordCount > 0) Then
  loc_1303FA5:     Set var_8C = Me.FGPoint
  loc_1303FBD:     Proc_6_137_1193554(Me.DGWaiter, global_92, Index)
  loc_1303FCB:   End If
  loc_1304019:   Set var_88 = Me.Txt
  loc_130401F:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1304027:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_130403F:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1304042:     Exit Sub
  loc_1304043:   End If
  loc_1304050:   Set var_88 = Me.Txt
  loc_1304056:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130405E:   var_A0 = var_8C.Text
  loc_1304066:   var_D4 = CVar(var_A0) 'String
  loc_13040AB:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_13040B4:     Me.MoveFirst
  loc_13040D9:     Set var_88 = Me.Txt
  loc_13040DF:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_13040E7:     0 = var_8C.Text
  loc_13040F5:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_130410B:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_1304123:   End If
  loc_1304126: Else
  loc_130412E:   If (var_92 = CInt(4)) Then
  loc_1304148:     If (Me.RecordCount > 0) Then
  loc_1304156:       Set var_8C = Me.FGPoint
  loc_130416E:       Proc_6_137_1193554(Me.DGTable, global_96)
  loc_130417C:     End If
  loc_13041CA:     Set var_88 = Me.Txt
  loc_13041D0:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_13041D8:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13041F0:     If (Index Or (var_A0 = vbNullString)) Then
  loc_13041F3:       Exit Sub
  loc_13041F4:     End If
  loc_1304201:     Set var_88 = Me.Txt
  loc_1304207:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_130420F:     var_A0 = var_8C.Text
  loc_1304217:     var_D4 = CVar(var_A0) 'String
  loc_130425C:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1304265:       Me.MoveFirst
  loc_130428A:       Set var_88 = Me.Txt
  loc_1304290:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1304298:       0 = var_8C.Text
  loc_13042A6:       Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_13042BC:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_13042D4:     End If
  loc_13042D7:   Else
  loc_13042DF:     If (var_92 = CInt(7)) Then
  loc_13042F9:       If (Me.RecordCount > 0) Then
  loc_1304307:         Set var_8C = Me.FGPoint
  loc_130431F:         Proc_6_137_1193554(Me.DGNCType, global_220)
  loc_130432D:       End If
  loc_130437B:       Set var_88 = Me.Txt
  loc_1304381:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1304389:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_13043A1:       If (Index Or (var_A0 = vbNullString)) Then
  loc_13043A4:         Exit Sub
  loc_13043A5:       End If
  loc_13043B2:       Set var_88 = Me.Txt
  loc_13043B8:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13043C0:       var_A0 = var_8C.Text
  loc_13043C8:       var_D4 = CVar(var_A0) 'String
  loc_130440D:       If CBool(var_D4 <> Me.Fields.Item("NCType").Value) Then
  loc_1304416:         Me.MoveFirst
  loc_130443B:         Set var_88 = Me.Txt
  loc_1304441:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "NCType =")
  loc_1304449:         0 = var_8C.Text
  loc_1304457:         Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_130446D:         Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1304485:       End If
  loc_1304488:     Else
  loc_1304490:       If (var_92 = CInt(&HB)) Then
  loc_13044AA:         If (Me.RecordCount > 0) Then
  loc_13044B8:           Set var_8C = Me.FGPoint
  loc_13044D0:           Proc_6_137_1193554(Me.DGMember, global_196)
  loc_13044DE:         End If
  loc_130452C:         Set var_88 = Me.Txt
  loc_1304532:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_130453A:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1304552:         If (Index Or (var_A0 = vbNullString)) Then
  loc_1304555:           Exit Sub
  loc_1304556:         End If
  loc_1304563:         Set var_88 = Me.Txt
  loc_1304569:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1304571:         var_A0 = var_8C.Text
  loc_1304579:         var_D4 = CVar(var_A0) 'String
  loc_13045BE:         If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_13045C7:           Me.MoveFirst
  loc_13045EC:           Set var_88 = Me.Txt
  loc_13045F2:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_13045FA:           0 = var_8C.Text
  loc_1304608:           Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_130461E:           Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1304636:         End If
  loc_1304639:       Else
  loc_1304641:         If (var_92 = CInt(&HD)) Then
  loc_130464C:           var_A0 = "{Home}+{End}"
  loc_1304652:           Proc_303_0_FB9B68(var_A0)
  loc_130465A:         End If
  loc_130465A:       End If
  loc_130465A:     End If
  loc_130465A:   End If
  loc_130465A: End If
  loc_130465A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1241790
  'Data Table: 589074
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_9C As DataGrid
  Dim var_A0 As DataGrid
  loc_1241267: var_86 = Shift
  loc_1241274: If (CLng(Shift) = &H1B) Then
  loc_1241277:   Call Proc_30_98_F6DC1C(var_86)
  loc_124127C:   Exit Sub
  loc_124127D: End If
  loc_1241280: var_88 = KeyCode
  loc_124128B: If (var_88 = CInt(5)) Then
  loc_12412AB:   Set var_A0 = Me.FGPoint
  loc_12412B6:   Set var_9C = Nothing
  loc_12412E8:   Proc_6_69_134A198(Me.DGWaiter, Me.Txt, CInt(5), global_92, Shift, 0)
  loc_1241357:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_124137D:     Proc_6_138_106D6F8(Me.DGWaiter, global_92, KeyCode, Me.FGPoint, 1)
  loc_124138B:   End If
  loc_124138E: Else
  loc_1241396:   If (var_88 = CInt(4)) Then
  loc_12413C1:     Set var_9C = Nothing
  loc_12413F3:     Proc_6_69_134A198(Me.DGTable, Me.Txt, CInt(4), global_96, Shift, 0, 1)
  loc_1241462:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1241469:       Set var_9C = Me.DGTable
  loc_1241488:       Proc_6_138_106D6F8(var_9C, global_96, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_1241496:     End If
  loc_1241499:   Else
  loc_12414A1:     If (var_88 = CInt(7)) Then
  loc_12414FE:       Proc_6_69_134A198(Me.DGNCType, Me.Txt, CInt(7), global_220, Shift, 0, 0, Nothing)
  loc_124156D:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1241593:         Proc_6_138_106D6F8(Me.DGNCType, global_220, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_12415A1:       End If
  loc_12415A4:     Else
  loc_12415AC:       If (var_88 = CInt(&HB)) Then
  loc_1241609:         Proc_6_69_134A198(Me.DGMember, Me.Txt, CInt(&HB), global_196, Shift, 0, 1, Nothing)
  loc_1241678:         If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_124169E:           Proc_6_138_106D6F8(Me.DGMember, global_196, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_12416AC:         End If
  loc_12416AC:       End If
  loc_12416AC:     End If
  loc_12416AC:   End If
  loc_12416AC: End If
  loc_12416DD: Set var_9C = Me.DGTable
  loc_12416F4: Set var_A0 = Me.DGNCType
  loc_1241738: If (((((CBool(Me.DGItem.Visible) = 0) And (CBool(Me.DGWaiter.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(var_A0.Visible) = 0)) And (CBool(Me.DGMember.Visible) = 0)) Then
  loc_1241750:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1241759:     Proc_6_75_E527CC(Shift, arg_14, 0, var_9C)
  loc_124175E:   End If
  loc_1241766:   If (KeyCode <> CInt(4)) Then
  loc_124177E:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1241787:       Proc_6_76_E52838(Shift, arg_14, var_A0)
  loc_124178C:     End If
  loc_124178C:   End If
  loc_124178C: End If
  loc_124178C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10909A8
  'Data Table: 589074
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_10906F0: On Error Goto loc_10909A0
  loc_10906F6: Proc_6_58_E054C0(arg_10)
  loc_10906FE: var_86 = KeyAscii
  loc_1090709: If (var_86 = CInt(0)) Then
  loc_1090716:   Set var_8C = Me.Txt
  loc_109071C:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_1090737:   Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_1090746: Else
  loc_109074E:   If (var_86 = CInt(5)) Then
  loc_109076D:     If (CBool(Me.DGWaiter.Visible) = &HFF) Then
  loc_109077F:       var_AC = "Name"
  loc_109079A:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_92, arg_10)
  loc_10907CC:       Proc_6_138_106D6F8(Me.DGWaiter, global_92, KeyAscii, Me.FGPoint)
  loc_10907DA:     End If
  loc_10907DD:   Else
  loc_10907E5:     If (var_86 = CInt(4)) Then
  loc_1090804:       If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_1090831:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_96, arg_10, "Name")
  loc_1090863:         Proc_6_138_106D6F8(Me.DGTable, global_96, KeyAscii, Me.FGPoint, 0)
  loc_1090871:       End If
  loc_1090874:     Else
  loc_109087C:       If (var_86 = CInt(7)) Then
  loc_109089B:         If (CBool(Me.DGNCType.Visible) = &HFF) Then
  loc_10908C8:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_220, arg_10, "NCType")
  loc_10908FA:           Proc_6_138_106D6F8(Me.DGNCType, global_220, KeyAscii, Me.FGPoint, 0)
  loc_1090908:         End If
  loc_109090B:       Else
  loc_1090913:         If (var_86 = CInt(&HB)) Then
  loc_1090932:           If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_1090944:             var_AC = "Name"
  loc_109095F:             Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_196, arg_10, var_AC)
  loc_1090991:             Proc_6_138_106D6F8(Me.DGMember, global_196, KeyAscii, Me.FGPoint, 0)
  loc_109099F:           End If
  loc_109099F:         End If
  loc_109099F:       End If
  loc_109099F:     End If
  loc_109099F:   End If
  loc_109099F: End If
  loc_109099F: Exit Sub
  loc_10909A0: ' Referenced from: 10906F0
  loc_10909A0: Proc_6_60_E62BC4(var_AC, 0)
  loc_10909A5: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFE454
  'Data Table: 589074
  Dim var_86 As Integer
  loc_DFE44F: var_86 = KeyCode
  loc_DFE452: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49B54
  'Data Table: 589074
  loc_E49B32: Set var_88 = Me.Txt
  loc_E49B38: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49B46: Proc_6_73_E22704(var_8C)
  loc_E49B52: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1710994
  'Data Table: 589074
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim arg_10 As Integer
  Dim var_AC As Variant
  Dim var_9C As String
  Dim var_124 As String
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_168 As Variant
  Dim var_16C As Variant
  Dim var_190 As Variant
  Dim var_90 As Variant
  Dim var_CC As Variant
  Dim var_148 As String
  Dim unk_589093 As Connection15
  Dim var_98 As Variant
  Dim var_198 As Variant
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_1A8 As Double
  Dim var_1B0 As TextBox
  Dim var_88 As Recordset15
  Dim var_11C As Variant
  Dim var_158 As Variant
  Dim var_224 As Variant
  Dim var_244 As String
  loc_170EDE4: On Error Goto loc_171098E
  loc_170EDEA: var_8A = Cancel
  loc_170EDF5: If (var_8A = CInt(0)) Then
  loc_170EE03:   Set var_90 = Me.Txt
  loc_170EE09:   Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_170EE11:   var_9C = "Vr. No"
  loc_170EE32:   If (Proc_6_27_EA565C(var_94, var_9C) = 0) Then
  loc_170EE40:     Set var_90 = Me.Txt
  loc_170EE46:     Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_170EE4E:     var_94.SetFocus
  loc_170EE5C:     arg_10 = &HFF
  loc_170EE5F:     Exit Sub
  loc_170EE60:   End If
  loc_170EE6E:   Set var_90 = Me.Txt
  loc_170EE74:   Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_9C)
  loc_170EE7C:   arg_10 = var_94.Text
  loc_170EE94:   If (CDbl(var_9C) = CDbl(0)) Then
  loc_170EEB0:     MsgBox("Vr. No Can Not Be 0", 0, var_DC, var_FC, var_11C)
  loc_170EECA:     Set var_90 = Me.Txt
  loc_170EED0:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170EED8:     var_94.SetFocus
  loc_170EEE6:     arg_10 = &HFF
  loc_170EEE9:     Exit Sub
  loc_170EEEA:   End If
  loc_170EEEE:   Set var_90 = Me.TopCtrl1
  loc_170EEF4:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_170EF0D:   If (CStr(var_8A) = "Add") Then
  loc_170EF41:     var_BC = Space((5 - Len(global_152)))
  loc_170EF49:     var_FC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & global_152) + "Vr. No Can Not Be 0")
  loc_170EF5D:     var_11C = Space((5 - Len(global_112)))
  loc_170EF65:     var_134 = (var_FC + var_11C)
  loc_170EF72:     var_144 = (var_134 + CVar(global_112))
  loc_170EF89:     Set var_90 = Me.Txt
  loc_170EF8F:     Call 0.Method_Txt_Validate0 (CInt(0), var_94, var_148)
  loc_170EF97:     8 = var_94.Text
  loc_170EFA4:     var_158 = Space((var_144 - Len(var_148)))
  loc_170EFAC:     var_168 = ( + var_158)
  loc_170EFBE:     Set var_98 = Me.Txt
  loc_170EFC4:     Call 0.Method_Txt_Validate0 (CInt(0), var_16C)
  loc_170EFD7:     var_190 = (var_168 + CVar(var_16C.Text))
  loc_170F024:     Set var_90 = Me.Txt
  loc_170F02A:     Call 0.Method_Txt_Validate0 (CInt(3), var_94)
  loc_170F032:     var_94.Text = CStr(var_190)
  loc_170F04E:     Me.LblVPrefix.Caption = global_112
  loc_170F056:   End If
  loc_170F05A:   Set var_90 = Me.TopCtrl1
  loc_170F060:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_170F068:   var_9C = CStr()
  loc_170F079:   If (var_9C = "Add") Then
  loc_170F0A9:     Set var_90 = Me.Txt
  loc_170F0AF:     Call 0.Method_Txt_Validate0 (CInt(3), var_94, var_9C, "Select Count(*) From KOT Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_170F0C0:     var_124 = var_16C & var_9C
  loc_170F0D0:     unk_589093.Execute var_124 & "'", 0, var_198
  loc_170F0E0:      = var_16C.Item()
  loc_170F0E8:      = var_198.Value
  loc_170F115:     If (var_94.Text.Fields > 0) Then
  loc_170F11E:       Call 0.Method_arg_50 (var_9C)
  loc_170F13F:       MsgBox("Duplicate Voucher No.", &H40, CVar(var_9C), var_FC, var_11C)
  loc_170F155:       Call Proc_30_100_1186DAC(MemVar_1F92044)
  loc_170F165:       If (var_9C = vbNullString) Then
  loc_170F172:         Set var_90 = Me.Txt
  loc_170F178:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170F180:         var_94.SetFocus
  loc_170F18E:         arg_10 = &HFF
  loc_170F191:         Exit Sub
  loc_170F192:       End If
  loc_170F198:       Call Proc_30_100_1186DAC(MemVar_1F92044, var_9C)
  loc_170F1AB:       Set var_90 = Me.Txt
  loc_170F1B1:       Call 0.Method_Txt_Validate0 (CInt(3), var_94, var_9C)
  loc_170F1B9:       var_94.Text = arg_10
  loc_170F1CA:       arg_10 = &HFF
  loc_170F1CD:       Exit Sub
  loc_170F1CE:     End If
  loc_170F1CE:   End If
  loc_170F1D1: Else
  loc_170F1D9:   If (var_8A = CInt(1)) Then
  loc_170F1EA:     Set var_90 = Me.Txt
  loc_170F1F0:     Call 0.Method_Txt_Validate0 (CInt(1), var_94, var_9C)
  loc_170F1F8:     arg_10 = var_94.Text
  loc_170F20E:     var_FC = Len(Trim(CVar(var_9C)))
  loc_170F228:     If (var_FC = 0) Then
  loc_170F23E:       Set var_90 = Me.Txt
  loc_170F244:       Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_170F24C:       var_94.Text = CStr(MemVar_1F920EC)
  loc_170F25E:     Else
  loc_170F268:       Set var_90 = Me.Txt
  loc_170F26E:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170F28E:       Set var_16C = Me.Txt
  loc_170F294:       Call 0.Method_Txt_Validate0 (Cancel, var_198)
  loc_170F29C:       var_198.Text = Proc_6_33_1512840(var_94)
  loc_170F2AF:     End If
  loc_170F2BC:     Set var_90 = Me.Txt
  loc_170F2C2:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170F2CA:     var_9C = var_94.Text
  loc_170F2E5:     Set var_98 = Me.Txt
  loc_170F2EB:     Call 0.Method_Txt_Validate0 (Cancel, var_16C, var_124)
  loc_170F2F3:     (CDate(var_9C) >= MemVar_1F920F4) = var_16C.Text
  loc_170F315:     If Not((var_9C And (CDate(var_124) <= MemVar_1F920FC))) Then
  loc_170F32E:       var_AC = "V.Date Not Between Current Fin. Year"
  loc_170F339:       MsgBox(var_AC, 0, "Date Validate", var_FC, var_11C)
  loc_170F353:       Set var_90 = Me.Txt
  loc_170F359:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_170F361:       var_94.SetFocus
  loc_170F36F:       arg_10 = &HFF
  loc_170F372:       Exit Sub
  loc_170F373:     End If
  loc_170F377:     Set var_90 = Me.TopCtrl1
  loc_170F37D:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(arg_10)
  loc_170F385:     var_9C = CStr(var_94)
  loc_170F39B:     Set var_94 = Me.Txt
  loc_170F3A1:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_170F3CA:     If ((var_9C = "Add") And (var_98.Text = vbNullString)) Then
  loc_170F3D3:       Call Proc_30_100_1186DAC(MemVar_1F92044)
  loc_170F3E6:       Set var_90 = Me.Txt
  loc_170F3EC:       Call 0.Method_Txt_Validate0 (CInt(3), var_94)
  loc_170F3F4:       var_94.Text = var_9C
  loc_170F403:     End If
  loc_170F406:   Else
  loc_170F40E:     If (var_8A = CInt(&HB)) Then
  loc_170F452:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_170F462:         Set var_90 = Me.Txt
  loc_170F468:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170F487:         If (var_94.Text = vbNullString) Then
  loc_170F497:           Set var_90 = Me.Txt
  loc_170F49D:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170F4A5:           var_94.Text = vbNullString
  loc_170F4BE:           Set var_90 = Me.Txt
  loc_170F4C4:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170F4CC:           var_94.Tag = vbNullString
  loc_170F4E6:           Set var_90 = Me.Txt
  loc_170F4EC:           Call 0.Method_Txt_Validate0 (CInt(&HC), var_94)
  loc_170F4F4:           var_94.Text = vbNullString
  loc_170F500:         End If
  loc_170F503:       Else
  loc_170F510:         Set var_90 = Me.Txt
  loc_170F516:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170F535:         If (var_94.Text = vbNullString) Then
  loc_170F545:           Set var_90 = Me.Txt
  loc_170F54B:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170F56A:           If (var_94.Text = vbNullString) Then
  loc_170F57A:             Set var_90 = Me.Txt
  loc_170F580:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170F588:             var_94.Text = vbNullString
  loc_170F5A1:             Set var_90 = Me.Txt
  loc_170F5A7:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170F5AF:             var_94.Tag = vbNullString
  loc_170F5C9:             Set var_90 = Me.Txt
  loc_170F5CF:             Call 0.Method_Txt_Validate0 (CInt(&HC), var_94)
  loc_170F5D7:             var_94.Text = vbNullString
  loc_170F5E3:           End If
  loc_170F5E6:         Else
  loc_170F5F4:           Set var_90 = Me.Txt
  loc_170F5FA:           Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_170F602:           var_9C = var_94.Tag
  loc_170F619:           If (var_9C <> vbNullString) Then
  loc_170F63B:             Set var_90 = Me.Txt
  loc_170F641:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_94, var_9C, "Code='")
  loc_170F649:             0 = var_94.Tag
  loc_170F662:             Me.Find 1 & var_9C & "'", var_AC, var_9C
  loc_170F677:           End If
  loc_170F6B2:           Set var_98 = Me.Txt
  loc_170F6B8:           Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_170F6C0:           var_16C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_170F711:           Set var_98 = Me.Txt
  loc_170F717:           Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_170F71F:           var_16C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_170F752:           var_94 = Me.Fields.Item("CardNo")
  loc_170F771:           Set var_98 = Me.Txt
  loc_170F777:           Call 0.Method_Txt_Validate0 (CInt(&HC), var_16C)
  loc_170F77F:           var_16C.Text = CStr(var_94.Value)
  loc_170F7AF:           Set var_90 = Me.Txt
  loc_170F7B5:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170F7D7:           If (Proc_96_1_F8C534(var_94.Tag) = 0) Then
  loc_170F7E7:             Set var_90 = Me.Txt
  loc_170F7ED:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170F801:             Proc_96_2_100DE2C(var_94.Tag)
  loc_170F806:             var_1A8 = 0
  loc_170F80F:             var_AC = "Member Varification"
  loc_170F839:             var_BC = CVar("Credit Is Not allowed to this Member" & vbCrLf & " & Current A/c Balance is Rs.:         " & CStr(var_1A8)) 'String
  loc_170F83C:             MsgBox(var_BC, &H40, var_AC, var_FC, var_11C)
  loc_170F85E:           End If
  loc_170F85E:         End If
  loc_170F85E:       End If
  loc_170F861:     Else
  loc_170F869:       If (var_8A = CInt(&HC)) Then
  loc_170F876:         Set var_90 = Me.Txt
  loc_170F87C:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170F893:         var_9C = CStr(Trim(CVar(var_94)))
  loc_170F8A1:         Set var_98 = Me.Txt
  loc_170F8A7:         Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_170F8AF:         var_16C.Text = var_9C
  loc_170F8DE:         If (Me.RecordCount > 0) Then
  loc_170F8E7:           Me.MoveFirst
  loc_170F90A:           Set var_90 = Me.Txt
  loc_170F910:           Call 0.Method_Txt_Validate0 (Cancel, var_94, var_9C, "CardNo='")
  loc_170F918:           0 = var_94.Text
  loc_170F931:           Me.Find 1 & var_9C & "'", var_AC, var_1A8
  loc_170F96F:           If ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) Then
  loc_170F980:             Set var_90 = Me.Txt
  loc_170F986:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_170F98E:             var_94.Text = vbNullString
  loc_170F9A8:             Set var_90 = Me.Txt
  loc_170F9AE:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_170F9B6:             var_94.Tag = vbNullString
  loc_170F9CF:             Set var_90 = Me.Txt
  loc_170F9D5:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170F9DD:             var_94.Text = vbNullString
  loc_170F9EC:           Else
  loc_170FA28:             Set var_98 = Me.Txt
  loc_170FA2E:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_16C)
  loc_170FA36:             var_16C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_170FA88:             Set var_98 = Me.Txt
  loc_170FA8E:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_16C)
  loc_170FA96:             var_16C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_170FAC9:             var_94 = Me.Fields.Item("CardNo")
  loc_170FAE7:             Set var_98 = Me.Txt
  loc_170FAED:             Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_170FAF5:             var_16C.Text = CStr(var_94.Value)
  loc_170FB26:             Set var_90 = Me.Txt
  loc_170FB2C:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_170FB4E:             If (Proc_96_1_F8C534(var_94.Tag) = 0) Then
  loc_170FB5F:               Set var_90 = Me.Txt
  loc_170FB65:               Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_170FB6D:               var_124 = var_94.Tag
  loc_170FB79:               Proc_96_2_100DE2C(var_124)
  loc_170FB7E:               var_1A8 = 0
  loc_170FBB1:               var_BC = CVar("Credit Is Not allowed to this Member" & vbCrLf & " & Current A/c Balance is Rs.:         " & CStr(var_1A8)) 'String
  loc_170FBB4:               MsgBox(var_BC, &H40, "Member Varification", var_FC, var_11C)
  loc_170FBD6:             End If
  loc_170FBD6:           End If
  loc_170FBD6:         End If
  loc_170FBD9:       Else
  loc_170FBE1:         If (var_8A = CInt(5)) Then
  loc_170FBEF:           Set var_90 = Me.Txt
  loc_170FBF5:           Call 0.Method_Txt_Validate0 (CInt(5), var_94)
  loc_170FBFD:           var_9C = "Steward"
  loc_170FC1E:           If (Proc_6_27_EA565C(var_94, var_9C) = 0) Then
  loc_170FC2C:             Set var_90 = Me.Txt
  loc_170FC32:             Call 0.Method_Txt_Validate0 (CInt(5), var_94)
  loc_170FC3A:             var_94.SetFocus
  loc_170FC48:             arg_10 = &HFF
  loc_170FC4B:             Exit Sub
  loc_170FC4C:           End If
  loc_170FC9A:           Set var_90 = Me.Txt
  loc_170FCA0:           Call 0.Method_Txt_Validate0 (Cancel, var_94, var_9C)
  loc_170FCA8:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_170FCC0:           If (arg_10 Or (var_9C = vbNullString)) Then
  loc_170FCD0:             Set var_90 = Me.Txt
  loc_170FCD6:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170FCDE:             var_94.Text = vbNullString
  loc_170FCF7:             Set var_90 = Me.Txt
  loc_170FCFD:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170FD05:             var_94.Tag = vbNullString
  loc_170FD14:           Else
  loc_170FD4F:             Set var_98 = Me.Txt
  loc_170FD55:             Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_170FD5D:             var_16C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_170FD90:             var_94 = Me.Fields.Item("Code")
  loc_170FDAE:             Set var_98 = Me.Txt
  loc_170FDB4:             Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_170FDBC:             var_16C.Tag = CStr(var_94.Value)
  loc_170FDD2:           End If
  loc_170FDD5:         Else
  loc_170FDDD:           If (var_8A = CInt(4)) Then
  loc_170FDEB:             Set var_90 = Me.Txt
  loc_170FDF1:             Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_170FDF9:             var_9C = "Table"
  loc_170FE1A:             If (Proc_6_27_EA565C(var_94, var_9C) = 0) Then
  loc_170FE28:               Set var_90 = Me.Txt
  loc_170FE2E:               Call 0.Method_Txt_Validate0 (CInt(4), var_94)
  loc_170FE36:               var_94.SetFocus
  loc_170FE44:               arg_10 = &HFF
  loc_170FE47:               Exit Sub
  loc_170FE48:             End If
  loc_170FE96:             Set var_90 = Me.Txt
  loc_170FE9C:             Call 0.Method_Txt_Validate0 (Cancel, var_94, var_9C)
  loc_170FEA4:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_170FEBC:             If (arg_10 Or (var_9C = vbNullString)) Then
  loc_170FECC:               Set var_90 = Me.Txt
  loc_170FED2:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170FEDA:               var_94.Text = vbNullString
  loc_170FEF3:               Set var_90 = Me.Txt
  loc_170FEF9:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_170FF01:               var_94.Tag = vbNullString
  loc_170FF1B:               Set var_90 = Me.Txt
  loc_170FF21:               Call 0.Method_Txt_Validate0 (CInt(&HD), var_94)
  loc_170FF29:               var_94.Text = "0"
  loc_170FF40:               If (global_160 = "RO") Then
  loc_170FF49:                 global_156 = vbNullString
  loc_170FF53:                 global_180 = vbNullString
  loc_170FF5D:                 global_176 = vbNullString
  loc_170FF61:               End If
  loc_170FF6F:               Set var_90 = Me.Txt
  loc_170FF75:               Call 0.Method_Txt_Validate0 (CInt(8), var_94)
  loc_170FF7D:               var_94.Text = vbNullString
  loc_170FF97:               Set var_90 = Me.Txt
  loc_170FF9D:               Call 0.Method_Txt_Validate0 (CInt(9), var_94)
  loc_170FFA5:               var_94.Text = vbNullString
  loc_170FFBF:               Set var_90 = Me.Txt
  loc_170FFC5:               Call 0.Method_Txt_Validate0 (CInt(&HA), var_94)
  loc_170FFCD:               var_94.Text = vbNullString
  loc_170FFDC:             Else
  loc_1710014:               Set var_98 = Me.Txt
  loc_171001A:               Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_1710022:               var_16C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_1710050:               var_94 = Me.Fields.Item("Code")
  loc_1710058:               var_BC = CVar(var_94) 'Address
  loc_171006E:               Set var_98 = Me.Txt
  loc_1710074:               Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_171007C:               var_16C.Tag = Proc_6_38_E68A98(var_BC)
  loc_171009E:               Set var_90 = Me.Txt
  loc_17100A4:               Call 0.Method_Txt_Validate0 (CInt(&HD), var_94)
  loc_17100C8:               If (CDbl(Val(var_94.Text)) = CDbl(0)) Then
  loc_17100F8:                 var_148 = "SELECT ISNULL(MAX(GUARATT),1) FROM (SELECT TOP 1 GUARATT FROM KOT WHERE RestCode='" & LocalRestCode & "' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y' AND ROOMNO='"
  loc_1710108:                 Set var_90 = Me.Txt
  loc_171010E:                 Call 0.Method_Txt_Validate0 (Cancel, var_94, var_124, var_148, var_BC, -1)
  loc_171012F:                 unk_589093.Execute var_16C & var_124 & "' Order By Vno Desc)Q", 0, var_198
  loc_1710137:                 var_DC = var_94.Tag.Fields
  loc_171013F:                  = var_16C.Item(var_1A8)
  loc_1710147:                  = var_198.Value
  loc_171015E:                 Set var_1AC = Me.Txt
  loc_1710164:                 Call 0.Method_Txt_Validate0 (CInt(&HD), var_1B0)
  loc_171016C:                 var_1B0.Text = CStr(var_DC)
  loc_1710198:               End If
  loc_17101A6:               Set var_90 = Me.Txt
  loc_17101AC:               Call 0.Method_Txt_Validate0 (CInt(&HD), var_94)
  loc_17101D0:               If (CDbl(Val(var_94.Text)) = CDbl(0)) Then
  loc_17101E1:                 Set var_90 = Me.Txt
  loc_17101E7:                 Call 0.Method_Txt_Validate0 (CInt(&HD), var_94)
  loc_17101EF:                 var_94.Text = "1"
  loc_17101FB:               End If
  loc_1710206:               If (global_160 = "RO") Then
  loc_171022B:                 var_BC = CVar(Me.Fields.Item("Adult")) 'Address
  loc_1710232:                 Proc_6_39_E7C810(var_DC)
  loc_171024A:                 Set var_98 = Me.Txt
  loc_1710250:                 Call 0.Method_Txt_Validate0 (CInt(&HD), var_16C)
  loc_1710258:                 var_16C.Text = CStr(var_DC)
  loc_171028C:                 var_94 = Me.Fields.Item("DocID")
  loc_1710294:                 var_BC = CVar(var_94) 'Address
  loc_17102A3:                 global_180 = Proc_6_38_E68A98(var_BC)
  loc_17102B6:                 var_CC = 0
  loc_17102E6:                 unk_589093.Execute "Select mFolioNoDocId From GuestFolio Where DocId='" & global_180 & "'", var_BC, -1
  loc_17102EE:                 var_90 = var_90.Fields
  loc_17102F6:                 var_CC = var_94.Item(var_94)
  loc_17102FE:                 var_98 = var_98.Value
  loc_171030B:                 var_FC = CVar(Proc_6_38_E68A98(var_DC, var_DC)) 'String
  loc_1710311:                 var_11C = Trim(var_FC)
  loc_1710320:                 global_176 = CStr(var_11C)
  loc_171034C:                 If (global_176 <> vbNullString) Then
  loc_1710366:                   var_9C = "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and FolionoDocid='" & global_176
  loc_1710376:                   unk_589093.Execute var_9C & "'", var_BC, -1
  loc_1710381:                   Set var_88 = var_90
  loc_1710394:                 Else
  loc_17103AB:                   var_9C = "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and FolionoDocid='" & global_180
  loc_17103BB:                   unk_589093.Execute var_9C & "'", var_BC, -1
  loc_17103C6:                   Set var_88 = var_90
  loc_17103D6:                 End If
  loc_1710412:                 If (var_88.Fields.Item(0).Value > 0) Then
  loc_171042E:                   MsgBox("Guest Room Bill Already printed for this Room", &H10, var_DC, var_FC, var_11C)
  loc_1710440:                   arg_10 = &HFF
  loc_1710443:                   Exit Sub
  loc_1710444:                 End If
  loc_1710456:                 var_90 = Me.Fields
  loc_1710466:                 var_BC = CVar(var_90.Item("RoomCat")) 'Address
  loc_1710475:                 global_156 = Proc_6_38_E68A98(var_BC, arg_10, var_90)
  loc_1710482:               End If
  loc_171049F:               Proc_6_7_F25D88(var_BC, MemVar_1F920EC, "Select Top 1 VNo From KOT Where VDate=", var_274)
  loc_17104A7:               var_DC = -1 & var_BC 
  loc_17104DC:               var_158 = var_DC & " And RestCode='" & CVar(LocalRestCode) & "' And RoomCat='" & CVar(global_156) & "' And RoomType='" 
  loc_1710508:               var_90 = Me.Fields
  loc_1710521:               var_224 = CVar(Proc_6_38_E68A98(CVar(var_90.Item("Code")), var_158 & CVar(global_160) & "' And RoomNo='", var_98)) 'String
  loc_1710528:               var_244 = "' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y' And IsNull(ContraDocId,'')='' Order By VNo desc"
  loc_171053B:               unk_589093.Execute CStr(var_90 & var_224 & var_244), var_BC, 
  loc_1710586:               If (var_98.RecordCount > 0) Then
  loc_1710596:                 Me.LblState.Caption = "Running Order"
  loc_17105A1:               Else
  loc_17105AE:                 Me.LblState.Caption = "New Order"
  loc_17105B6:               End If
  loc_17105BB:               Set var_88 = Nothing
  loc_17105C9:               If (global_160 = "RO") Then
  loc_1710605:                 Set var_98 = Me.Txt
  loc_171060B:                 Call 0.Method_Txt_Validate0 (CInt(8), var_16C)
  loc_1710613:                 var_16C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments1")))
  loc_1710660:                 Set var_98 = Me.Txt
  loc_1710666:                 Call 0.Method_Txt_Validate0 (CInt(9), var_16C)
  loc_171066E:                 var_16C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments2")))
  loc_171069C:                 var_94 = Me.Fields.Item("Comments3")
  loc_17106BB:                 Set var_98 = Me.Txt
  loc_17106C1:                 Call 0.Method_Txt_Validate0 (CInt(&HA), var_16C)
  loc_17106C9:                 var_16C.Text = Proc_6_38_E68A98(CVar(var_94))
  loc_17106DD:               End If
  loc_17106DD:             End If
  loc_17106E0:           Else
  loc_17106E8:             If (var_8A = CInt(7)) Then
  loc_17106F5:               Set var_90 = Me.Txt
  loc_17106FB:               Call 0.Method_Txt_Validate0 (Cancel)
  loc_1710703:               var_9C = "NC Category"
  loc_1710724:               If (Proc_6_27_EA565C(var_94, var_9C) = 0) Then
  loc_1710731:                 Set var_90 = Me.Txt
  loc_1710737:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_171073F:                 var_94.SetFocus
  loc_171074D:                 arg_10 = &HFF
  loc_1710750:                 Exit Sub
  loc_1710751:               End If
  loc_171079F:               Set var_90 = Me.Txt
  loc_17107A5:               Call 0.Method_Txt_Validate0 (Cancel, var_94, var_9C)
  loc_17107AD:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_17107C5:               If (arg_10 Or (var_9C = vbNullString)) Then
  loc_17107D5:                 Set var_90 = Me.Txt
  loc_17107DB:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_17107E3:                 var_94.Text = vbNullString
  loc_17107FC:                 Set var_90 = Me.Txt
  loc_1710802:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_171080A:                 var_94.Tag = vbNullString
  loc_1710819:               Else
  loc_1710854:                 Set var_98 = Me.Txt
  loc_171085A:                 Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_1710862:                 var_16C.Text = CStr(Me.Fields.Item("NCType").Value)
  loc_1710895:                 var_94 = Me.Fields.Item("NCPer")
  loc_17108B3:                 Set var_98 = Me.Txt
  loc_17108B9:                 Call 0.Method_Txt_Validate0 (Cancel, var_16C)
  loc_17108C1:                 var_16C.Tag = CStr(var_94.Value)
  loc_17108D7:               End If
  loc_17108DA:             Else
  loc_17108E2:               If (var_8A = CInt(&HD)) Then
  loc_17108F2:                 Set var_90 = Me.Txt
  loc_17108F8:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_171090D:                 var_1A8 = Val(var_94.Text)
  loc_1710945:                 Set var_98 = Me.Txt
  loc_171094B:                 Call 0.Method_Txt_Validate0 (Cancel, var_16C, CStr(Format(CVar(var_1A8), "0")), 1)
  loc_1710953:                 var_16C.Text = 1
  loc_1710973:               End If
  loc_1710973:             End If
  loc_1710973:           End If
  loc_1710973:         End If
  loc_1710973:       End If
  loc_1710973:     End If
  loc_1710973:   End If
  loc_1710973: End If
  loc_1710985: Me.FGrid.Col = CVar(CLng(3))
  loc_171098D: Exit Sub
  loc_171098E: ' Referenced from: 170EDE4
  loc_171098E: Proc_6_60_E62BC4(var_1A8)
  loc_1710993: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5F6B4
  'Data Table: 589074
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5F67F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5F692: Set var_A8 = Me.TxtGrid
  loc_E5F698: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5F6A0: var_AC.Visible = False
  loc_E5F6AC: Call Proc_30_98_F6DC1C()
  loc_E5F6B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E65F98
  'Data Table: 589074
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E65F54: Set var_88 = Me.TxtGrid
  loc_E65F5A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E65F74: If (var_8C.Visible = 0) Then
  loc_E65F8D:   Me.FGrid.BackColorSel = CVar(CLng(global_104))
  loc_E65F95: End If
  loc_E65F95: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E507CC
  'Data Table: 589074
  loc_E507A4: Set var_88 = Me.TopCtrl1
  loc_E507AA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E507C3: If (CStr() <> "Browse") Then
  loc_E507C6:   Call Proc_30_90_E40A04()
  loc_E507CB: End If
  loc_E507CB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '12956FC
  'Data Table: 589074
  Dim var_9C As String
  Dim var_88 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim Cancel As Integer
  Dim var_110 As Long
  Dim var_120 As String
  loc_129510C: Set var_88 = Me.TopCtrl1
  loc_1295112: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1295126: Set var_A0 = Me.TopCtrl1
  loc_129512C: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005((CStr() = "Edit"))
  loc_1295152: If ( Or (CStr() = "Add")) Then
  loc_1295162:   If ((Cancel = &H4D) And (arg_10 = 2)) Then
  loc_129517C:     global_272 = CInt(CLng(Me.FGrid.Col))
  loc_1295198:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12951A0:     var_E4 = CVar(CLng(6)) 'Long
  loc_12951C7:     Me.txtDisc.Text = CStr(Me.FGrid.TextMatrix))
  loc_12951EE:     Me.txtDisc.SelLength = 0
  loc_1295216:     Me.txtDisc.SelStart = Len(Me.txtDisc.Text)
  loc_1295228:     var_C4 = CVar(CLng(4)) 'Long
  loc_1295237:     Me.FGrid.Col = var_C4
  loc_1295249:     var_B0 = Me.FGrid.CellTop
  loc_129527C:     Me.FrmeDisc.Top = ((CDbl(Me.FGrid.Top) + CDbl(CLng(var_B0))) + CDbl(350))
  loc_12952B6:     Me.FrmeDisc.Left = CDbl((CLng(Me.FGrid.CellLeft) + &HA))
  loc_12952D3:     Me.FrmeDisc.Width = CDbl(1)
  loc_12952E9:     Me.FrmeDisc.Height = CDbl(1)
  loc_12952F6:     global_270 = 1
  loc_12952FF:     global_276 = "Go"
  loc_129530F:     Me.Timer2.Enabled = True
  loc_1295317:   End If
  loc_1295317: End If
  loc_129531B: Set var_88 = Me.TopCtrl1
  loc_1295321: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(global_270)
  loc_1295366: If ((CStr(var_B0) = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_129536F:   Call Form_KeyDown(Cancel, arg_10)
  loc_1295374: End If
  loc_1295378: Set var_88 = Me.TopCtrl1
  loc_129537E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_E4)
  loc_1295397: If (CStr(var_C4) = "Browse") Then
  loc_129539A:   Exit Sub
  loc_129539B: End If
  loc_12953B8: var_108 = Me.FGrid.Rows
  loc_129540F: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_108) - 1))))) Then
  loc_1295428:   Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_1295438:   var_9C = "+{Tab}"
  loc_129543E:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0, var_108)
  loc_1295448:   Cancel = 0
  loc_129544E: Else
  loc_1295458:   var_B0 = Me.FGrid.Rows
  loc_12954A5:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_12954BE:     Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_12954C6:     Call Proc_30_99_F0AF50(var_B0, Cancel)
  loc_12954CD:     Cancel = 0
  loc_12954D0:   End If
  loc_12954D0: End If
  loc_12954D6: global_124 = Cancel
  loc_12954FC: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1295520: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1295536:   var_110 = CLng(Me.FGrid.Col)
  loc_1295546:   If (var_110 = CLng(4)) Then
  loc_129555C:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1295574:     var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1295579:     var_120 = vbNullString
  loc_1295583:     Set var_F8 = Me.FGrid
  loc_1295589:     LateIdCallSt
  loc_12955B4:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12955BC:     var_E4 = CVar(CLng(&HA)) 'Long
  loc_12955C1:     var_120 = vbNullString
  loc_12955CB:     Set var_A0 = Me.FGrid
  loc_12955D1:     LateIdCallSt
  loc_12955F6:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12955FE:     var_E4 = CVar(CLng(7)) 'Long
  loc_1295603:     var_120 = vbNullString
  loc_129560D:     Set var_A0 = Me.FGrid
  loc_1295613:     LateIdCallSt
  loc_1295638:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1295640:     var_E4 = CVar(CLng(&HD)) 'Long
  loc_1295645:     var_120 = vbNullString
  loc_129564F:     Set var_A0 = Me.FGrid
  loc_1295655:     LateIdCallSt
  loc_129566A:   Else
  loc_1295671:     If Not (var_110 = CLng(7)) Then
  loc_129567B:       If (var_110 = CLng(3)) Then
  loc_129567E:       End If
  loc_1295691:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12956A9:       var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12956AE:       var_120 = vbNullString
  loc_12956B8:       Set var_F8 = Me.FGrid
  loc_12956BE:       LateIdCallSt
  loc_12956D9:     Else
  loc_12956E0:       If (var_110 = CLng(9)) Then
  loc_12956E3:       End If
  loc_12956E3:     End If
  loc_12956E3:   End If
  loc_12956E3: End If
  loc_12956E9: If (Cancel = &HD) Then
  loc_12956F1:   global_126 = 0
  loc_12956F4: End If
  loc_12956F6: Cancel = 0
  loc_12956F9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'FB4504
  'Data Table: 589074
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_134 As String
  loc_FB4378: Set var_88 = Me.TopCtrl1
  loc_FB437E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_FB4397: If (CStr() <> "Edit") Then
  loc_FB439A:   Exit Sub
  loc_FB439B: End If
  loc_FB43B8: If (CLng(Me.FGrid.Col) = CLng(9)) Then
  loc_FB43CE:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB43E6:   var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FB442C:   If (Ucase(CVar(CStr(Me.FGrid.TextMatrix)))) = "YES") Then
  loc_FB4442:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB445A:     var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FB445F:     var_134 = "No"
  loc_FB4469:     Set var_F4 = Me.FGrid
  loc_FB446F:     LateIdCallSt
  loc_FB448A:   Else
  loc_FB449D:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB44B5:     var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_FB44BA:     var_134 = "Yes"
  loc_FB44C4:     Set var_F4 = Me.FGrid
  loc_FB44CA:     LateIdCallSt
  loc_FB44E2:   End If
  loc_FB44E5: Else
  loc_FB44EE:   Call FGrid_UnknownEvent_C()
  loc_FB44F8:   global_126 = 0
  loc_FB44FB: End If
  loc_FB44FB: Call Proc_30_106_1262164(global_126, CInt(&HD), var_F4, var_134, var_E0, var_C0)
  loc_FB4500: Exit Sub
  loc_FB4501: ThisVCallR4
End Sub

Private Sub FGrid_UnknownEvent_C '1226320
  'Data Table: 589074
  Dim var_9C As String
  Dim var_88 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Long
  Dim Me As Variant
  Dim var_10C As Integer
  Dim var_104 As TextBox
  loc_1225E20: Set var_88 = Me.TopCtrl1
  loc_1225E26: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1225E3F: If (CStr() = "Browse") Then
  loc_1225E42:   Exit Sub
  loc_1225E43: End If
  loc_1225E56: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1225E5E: var_CC = CVar(CLng(&HB)) 'Long
  loc_1225E96: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_1225E99:   Exit Sub
  loc_1225E9A: End If
  loc_1225EA2: Set var_88 = Me.BtnLblModi
  loc_1225EA8: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_1225EC3: var_F4 = CLng(Me.FGrid.Col)
  loc_1225ED3: If (var_F4 = CLng(2)) Then
  loc_1225ED9:   var_AC = "KOTOutletSelection"
  loc_1225F12:   If (Proc_6_38_E68A98(CVar(Me.Fields.Item(var_AC)), var_F4) = "No") Then
  loc_1225F15:     Exit Sub
  loc_1225F16:   End If
  loc_1225F1A:   Set var_88 = Me.TopCtrl1
  loc_1225F20:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_CC)
  loc_1225F45:   If ((CStr(var_AC) = "Edit") And (global_192 <> "Yes")) Then
  loc_1225F48:     Exit Sub
  loc_1225F49:   End If
  loc_1225F87:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1225F9C: Else
  loc_1225FA3:   If (var_F4 = CLng(4)) Then
  loc_1225FAA:     Set var_88 = Me.TopCtrl1
  loc_1225FB0:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_1225FD5:     If ((CStr(Cancel) = "Edit") And (global_192 <> "Yes")) Then
  loc_1225FD8:       Exit Sub
  loc_1225FD9:     End If
  loc_1225FDD:     Set var_104 = Me.FGrid
  loc_1226001:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_122602E:     Set var_E0 = var_104
  loc_1226040:     Proc_6_63_110ABA4(Me, var_E0, Me.TxtGrid, 0, 0)
  loc_1226068:     Set var_88 = Me.TxtGrid
  loc_122606E:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0, var_9C, Asc(var_9C))
  loc_1226076:     0 = var_E0.Text
  loc_122608F:     If (Len(var_9C) <= 1) Then
  loc_122609E:       Set var_88 = Me.TxtGrid
  loc_12260A4:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0, var_9C)
  loc_12260AC:       var_10C = var_E0.Text
  loc_12260BD:       Set var_F8 = Me.TxtGrid
  loc_12260C3:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_104)
  loc_12260CB:       var_104.Text = var_9C
  loc_12260DE:     End If
  loc_12260EA:     Set var_88 = Me.TxtGrid
  loc_12260F0:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0)
  loc_122610A:     Set var_F8 = Me.TxtGrid
  loc_1226110:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_104)
  loc_1226118:     var_104.SelStart = Len(var_E0.Text)
  loc_122612E:   Else
  loc_1226135:     If (var_F4 = CLng(3)) Then
  loc_122613C:       Set var_88 = Me.TopCtrl1
  loc_1226142:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_1226167:       If ((CStr() = "Edit") And (global_192 <> "Yes")) Then
  loc_122616A:         Exit Sub
  loc_122616B:       End If
  loc_1226186:       If (((Cancel >= &H41) And (Cancel <= &H5A)) Or ((Cancel >= &H61) And (Cancel <= &H7A))) Then
  loc_122619B:         Me.FGrid.Col = CVar(CLng(4))
  loc_12261A3:       End If
  loc_12261E1:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_12261F6:     Else
  loc_12261FD:       If (var_F4 = CLng(9)) Then
  loc_1226204:         Set var_88 = Me.TopCtrl1
  loc_122620A:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_1226223:         If (CStr(Cancel) = "Add") Then
  loc_1226226:           Exit Sub
  loc_1226227:         End If
  loc_1226265:         Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_122627A:       Else
  loc_1226281:         If (var_F4 = CLng(7)) Then
  loc_1226288:           Set var_88 = Me.TopCtrl1
  loc_122628E:           Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_12262B3:           If ((CStr(Cancel) = "Edit") And (global_192 <> "Yes")) Then
  loc_12262B6:             Exit Sub
  loc_12262B7:           End If
  loc_12262F5:           Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF)
  loc_1226307:         End If
  loc_1226307:       End If
  loc_1226307:     End If
  loc_1226307:   End If
  loc_1226307: End If
  loc_1226311: If (CLng(Cancel) <> &HD) Then
  loc_1226319:   global_126 = &HFF
  loc_122631C: End If
  loc_122631C: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1003D5C
  'Data Table: 589074
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_1003B64: Set var_88 = Me.TopCtrl1
  loc_1003B6A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1003B83: If (CStr() = "Browse") Then
  loc_1003B86:   Exit Sub
  loc_1003B87: End If
  loc_1003B8B: Set var_88 = Me.TopCtrl1
  loc_1003B91: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1003BAA: If (CStr() = "Edit") Then
  loc_1003BAD:   Exit Sub
  loc_1003BAE: End If
  loc_1003BCB: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1003BCE:   Exit Sub
  loc_1003BCF: End If
  loc_1003BE0: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_1003C02:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1003C3C:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_1003C5E:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1003C74:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1003C7D:         Set var_110 = Me.FGrid
  loc_1003C98:       Else
  loc_1003CAB:         Me.FGrid.Rows = 1
  loc_1003CD1:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_1003CD9:         Set var_110 = Me.FGrid
  loc_1003D06:         Me.FGrid.FixedRows = 1
  loc_1003D0E:       End If
  loc_1003D0E:     End If
  loc_1003D11:   Else
  loc_1003D32:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_1003D42:   End If
  loc_1003D46:   Set var_88 = Me.FGrid
  loc_1003D57: End If
  loc_1003D57: Exit Sub
  loc_1003D58: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'EE17F0
  'Data Table: 589074
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  loc_EE1753: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EE175B: var_C8 = CVar(CLng(&HB)) 'Long
  loc_EE1793: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_EE17DA:   Proc_96_0_E6BE98(Me.FGrid, CInt(CLng(Me.FGrid.Row)), Me.lblclr.BackColor)
  loc_EE17ED: End If
  loc_EE17ED: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E40AD0
  'Data Table: 589074
  Dim var_8C As TextBox
  loc_E40AA4: Call Proc_30_98_F6DC1C()
  loc_E40AB4: Set var_88 = Me.TxtGrid
  loc_E40ABA: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E40AC2: var_8C.Visible = False
  loc_E40ACE: Exit Sub
End Sub

Private Sub cmdNCBill_UnknownEvent_9 '19B31BC
  'Data Table: 589074
  Dim var_124 As Variant
  Dim var_E8 As String
  Dim var_EC As String
  Dim unk_589093 As Connection15
  Dim var_110 As Variant
  Dim var_114 As Variant
  Dim var_128 As Variant
  Dim var_13C As String
  Dim var_138 As Variant
  Dim var_FC As Variant
  Dim Me As Recordset15
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_D4 As Recordset15
  Dim var_BC As Recordset15
  Dim var_10C As Variant
  Dim var_170 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_1D8 As Variant
  Dim var_210 As Variant
  Dim var_230 As Variant
  Dim var_B8 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_92 As Integer
  Dim var_248 As String
  Dim var_180 As Variant
  Dim var_27C As Variant
  Dim var_200 As Variant
  Dim var_290 As Variant
  Dim var_2A4 As Variant
  Dim var_2B4 As Variant
  Dim var_304 As Variant
  Dim var_324 As Variant
  Dim var_3E4 As Variant
  Dim var_E4 As Double
  Dim var_314 As Variant
  Dim var_2D4 As Variant
  Dim var_2E4 As Variant
  Dim var_3C4 As Variant
  Dim var_2C4 As Variant
  Dim var_CC As Double
  loc_19B02B8: On Error Goto loc_19B31B4
  loc_19B02C1: var_124 = 0
  loc_19B02F1: unk_589093.Execute "Select CKOTPrintYN From Depart Where Code='" & LocalRestCode & "'", var_10C, -1
  loc_19B02F9: var_110 = var_110.Fields
  loc_19B0301: var_124 = var_114.Item(var_114)
  loc_19B0309: var_128 = var_128.Value
  loc_19B0337: If (Proc_6_38_E68A98(var_138) = "Y") Then
  loc_19B033D:   Call Proc_30_80_1928394(var_13E)
  loc_19B0342:   Exit Sub
  loc_19B0343: End If
  loc_19B0346: MemVar_1F923C0 = "N"
  loc_19B034D: MemVar_1F923C4 = "N"
  loc_19B0354: MemVar_1F923C8 = "K"
  loc_19B0373: If (Me.ChkNCKOT.Value <> 1) Then
  loc_19B0376:   Exit Sub
  loc_19B0377: End If
  loc_19B037E: var_E8 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks,K.NCType " & "From (KOT K Left Join Waiter W on K.Waiter=W.Code) "
  loc_19B03C3: var_88 = CStr(CVar(var_E8 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_19B03E2: var_138 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.rate, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_19B0420: var_8C = CStr(var_138 & Me.Fields.Item("SearchCode").Value & "'")
  loc_19B0449: var_138 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_19B0469: var_114 = Me.Fields.Item("SearchCode")
  loc_19B0471: var_10C = var_114.Value
  loc_19B0486: var_E8 = CStr(var_138 & var_10C & "'")
  loc_19B0490: unk_589093.Execute var_E8, var_180, -1
  loc_19B049B: Set var_BC = var_128
  loc_19B04BF: If (var_88 = vbNullString) Then
  loc_19B04C2:   Exit Sub
  loc_19B04C3: End If
  loc_19B04CB: If (var_8C = vbNullString) Then
  loc_19B04CE:   Exit Sub
  loc_19B04CF: End If
  loc_19B04ED: Set var_110 = Me.Txt
  loc_19B04F3: Call 0.Method_cmdNCBill_UnknownEvent_90 (CInt(4), var_114, var_E8, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='", var_10C)
  loc_19B04FB: -1 = var_114.Text
  loc_19B0514: unk_589093.Execute var_128 & var_E8 & "' AND CONTRADOCID IS NULL", var_128, var_138
  loc_19B054B: If (var_128.RecordCount = 1) Then
  loc_19B0551:   var_D0 = "New Order"
  loc_19B0557: Else
  loc_19B055E:   Set var_110 = Me.LblState
  loc_19B056C:   var_D0 = var_110.Caption
  loc_19B0572: End If
  loc_19B0588: unk_589093.Execute var_88, var_10C, -1
  loc_19B0593: Set var_B4 = var_110
  loc_19B059C: ' Referenced from: 19B3188
  loc_19B05AB: If Not(var_BC.EOF) Then
  loc_19B05C4:   unk_589093.Execute "SELECT KOTPrinting FROM Enviro", var_10C, -1
  loc_19B05E7:   var_110 = var_110.Fields
  loc_19B0622:   If (Trim(CVar(Proc_6_38_E68A98(CVar(var_110.Item("KOTPrinting")), var_110))) = "Seperate for All Kitchen") Then
  loc_19B062C:     var_138 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_19B06A5:     var_1D8 = var_138 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_19B06E1:     var_8C = CStr(var_1D8 & var_BC.Fields.Item("Code").Value & "' and K.VoidYN<>'Y'")
  loc_19B070F:   Else
  loc_19B0716:     var_138 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_19B072E:     var_110 = Me.Fields
  loc_19B073E:     var_10C = var_110.Item("SearchCode").Value
  loc_19B0754:     var_8C = CStr(var_138 & var_10C & "' and K.VoidYN<>'Y'")
  loc_19B0769:   End If
  loc_19B077F:   unk_589093.Execute var_8C, var_10C, -1
  loc_19B078A:   Set var_B8 = var_110
  loc_19B07A7:   If (var_B8.RecordCount > 0) Then
  loc_19B07B9:     var_110 = var_BC.Fields
  loc_19B07D8:     var_240 = Trim(CVar(var_110.Item("PrintType"))) 'Variant
  loc_19B07ED:     If (var_240 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_19B07FD:       Call Proc_30_86_EFAC0C(New, var_110)
  loc_19B0805:       Set var_D8 = var_110
  loc_19B080B:       Me.Recordset15.MoveFirst
  loc_19B0810:       ' Referenced from: 19B148A
  loc_19B081F:       If Not(var_B4.EOF) Then
  loc_19B0838:         If (0 = 0) Then
  loc_19B0859:           Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B0895:           var_C0 = Replace(CStr(Space(&H26)), " ", "-", 1, -1, 0)
  loc_19B08CC:           var_138 = CVar(Me.LblRest.Caption) 'String
  loc_19B08CF:           var_150 = (Space(1) + var_138)
  loc_19B08E4:           Call Proc_30_87_F148A8(var_D8, vbNullString, CStr(var_138 & Space(1)), vbNullString)
  loc_19B0916:           Call Proc_30_87_F148A8(var_D8, vbNullString, " * NC Bill *", vbNullString)
  loc_19B0924:           var_92 = &H12
  loc_19B0945:           Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString, var_92)
  loc_19B0971:           Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B09A5:           Proc_6_39_E7C810(var_138, CVar(var_B4.Fields.Item("VNo")), 1)
  loc_19B09E2:           Call Proc_30_87_F148A8(var_D8, vbNullString, " V No.     : " & Proc_6_45_EAD428(CStr(var_138), &HA, var_92))
  loc_19B0A0F:           var_110 = var_B4.Fields
  loc_19B0AB2:           Call Proc_30_87_F148A8(var_D8, vbNullString, " Date.     : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_110.Item("VDate")), vbNullString), &HC) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME")), var_110), 8))
  loc_19B0AF9:           var_114 = var_B4.Fields.Item("Remarks")
  loc_19B0B44:           Call Proc_30_87_F148A8(var_D8, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_114), vbNullString), &H1E))
  loc_19B0B76:           Set var_110 = Me.Label1
  loc_19B0B7C:           Call 0.Method_cmdNCBill_UnknownEvent_90 (2, var_114)
  loc_19B0C05:           var_258 = Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")), vbNullString)), "000")), 5, 1)
  loc_19B0C0B:           var_248 = vbNullString
  loc_19B0C1A:           var_180 = (Space(1) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_114))), &HA)))
  loc_19B0C23:           var_198 = (var_BC.Fields.Item("Code").Value + ": ")
  loc_19B0C2D:           var_27C = (CVar(var_114) & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value + CVar(var_258))
  loc_19B0C42:           Call Proc_30_87_F148A8(var_D8, vbNullString, CStr(var_27C))
  loc_19B0C94:           Call Proc_30_87_F148A8(var_D8, vbNullString, var_C0, vbNullString)
  loc_19B0CA0:         End If
  loc_19B0CC6:         var_150 = (var_248 + CVar(Proc_6_45_EAD428("ITEM NAME", &H12, Space(1))))
  loc_19B0CDA:         var_180 = (Trim(CVar(var_114)) + Space(1))
  loc_19B0CF4:         var_1B8 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 3, var_BC.Fields.Item("Code").Value)))
  loc_19B0D00:         var_1D8 = Space(1)
  loc_19B0D08:         var_200 = (CVar(var_B4.Fields.Item("TableNo")) + var_1D8)
  loc_19B0D22:         var_230 = ("000" + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_19B0D36:         var_290 = (CVar(var_258) + Space(1))
  loc_19B0D50:         var_2B4 = (var_290 + CVar(Proc_6_52_EAD4F4("Amount", 7)))
  loc_19B0D87:         var_EC = vbNullString
  loc_19B0D9C:         Call Proc_30_87_F148A8(var_D8, vbNullString, CStr(var_2B4))
  loc_19B0DAB:         var_EC = vbNullString
  loc_19B0DC0:         Call Proc_30_87_F148A8(var_D8, vbNullString, var_C0)
  loc_19B0DD2:         var_92 = (var_92 + 4)
  loc_19B0DD8:         var_B8.MoveFirst
  loc_19B0DDD:         ' Referenced from: 19B10F7
  loc_19B0DEC:         If Not(var_B8.EOF) Then
  loc_19B0E11:           var_138 = var_B8.Fields.Item("ItemName").Value
  loc_19B0E3C:           Proc_6_39_E7C810(var_1D8, CVar(var_B8.Fields.Item("qty")), var_92)
  loc_19B0E64:           var_1A8 = "Rate"
  loc_19B0E87:           Proc_6_39_E7C810(var_2C4, CVar(var_B8.Fields.Item(var_1A8)), 1, 1)
  loc_19B0E96:           var_1C8 = "0.00"
  loc_19B0ED2:           Proc_6_39_E7C810(var_34C, CVar(var_B8.Fields.Item("qty")), 1, 1)
  loc_19B0EFD:           Proc_6_39_E7C810(var_374, CVar(var_B8.Fields.Item("Rate")), var_EC)
  loc_19B0F55:           var_160 = (1 + CVar(Proc_6_45_EAD428(CStr(var_138), &H12, Space(1), 1)))
  loc_19B0F69:           var_198 = (Space(1) + Space(1))
  loc_19B0F7F:           var_230 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_1D8, "0")), 3, CVar(Proc_6_52_EAD4F4("Qty", 3, var_BC.Fields.Item("Code").Value)))) 'String
  loc_19B0F82:           var_27C = (var_EC + var_230)
  loc_19B0F96:           var_2A4 = (Space(1) + Space(1))
  loc_19B0FAF:           var_304 = (CVar(Proc_6_52_EAD4F4("Amount", 7)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_2C4, var_1C8)), 6)))
  loc_19B0FC3:           var_324 = (var_304 + Space(1))
  loc_19B0FDC:           var_3E4 = (var_324 + CVar(Proc_6_52_EAD4F4(CStr(Format((var_34C * var_374), "0.00")), 7)))
  loc_19B1042:           var_170 = CVar(var_E4) 'Double
  loc_19B1055:           var_110 = var_B8.Fields
  loc_19B106C:           Proc_6_39_E7C810(var_138, CVar(var_110.Item("qty")))
  loc_19B109A:           Proc_6_39_E7C810(Space(1), CVar(var_B8.Fields.Item("Rate")), var_138)
  loc_19B10A6:           var_198 = (var_110 + (var_170 * Space(1)))
  loc_19B10AB:           var_E4 = CSng(CVar(Proc_6_52_EAD4F4("Qty", 3, var_BC.Fields.Item("Code").Value)))
  loc_19B10C5:           var_EC = vbNullString
  loc_19B10DA:           Call Proc_30_87_F148A8(var_D8, vbNullString, CStr(var_3E4))
  loc_19B10EC:           var_92 = (var_92 + 1)
  loc_19B10F2:           var_B8.MoveNext
  loc_19B10F7:           GoTo loc_19B0DDD
  loc_19B10FA:         End If
  loc_19B1112:         Call Proc_30_87_F148A8(var_D8, vbNullString, var_C0, vbNullString)
  loc_19B113C:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B1177:         var_124 = "0.00"
  loc_19B117C:         var_160 = var_124
  loc_19B11C9:         var_150 = (Space(&H16) + CVar(Proc_6_45_EAD428("TOTAL  :", 8, var_92)))
  loc_19B11D3:         var_200 = (CVar(var_B8.Fields.Item("Rate")) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_E4, var_160))))), 8, 1)))
  loc_19B11E8:         Call Proc_30_87_F148A8(var_D8, vbNullString, CStr("0"), vbNullString)
  loc_19B1233:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B1244:         var_FC = "WaiterName"
  loc_19B1283:         var_248 = vbNullString
  loc_19B12A3:         Call Proc_30_87_F148A8(var_D8, vbNullString, " Waiter Name  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item(var_FC)), 1), &H14))
  loc_19B12DD:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B1312:         Call Proc_30_87_F148A8(var_D8, vbNullString, " ** " & MemVar_1F9221C & " **", vbNullString)
  loc_19B1325:         var_B4.MoveNext
  loc_19B1348:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B1374:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B13A0:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B13CC:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B13F8:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B1424:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B1450:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B147C:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19B148A:         GoTo loc_19B0810
  loc_19B148D:       End If
  loc_19B1490:       var_DC = "WinKOTPrint"
  loc_19B14B7:       Set var_110 = var_D8 
  loc_19B14BE:       CreateFieldDefFile(var_110, MemVar_1F920B4 & "\" & var_DC & ".ttx", &HFF)
  loc_19B14F0:       var_EC = MemVar_1F920B4 & "\" & var_DC
  loc_19B1500:       Call 0.Method_arg_1C (var_EC & ".RPT", var_FC, var_110)
  loc_19B150B:       MemVar_1F921E4 = var_110
  loc_19B1534:       Call 0.Method_arg_64 (var_110, CVar(var_110), var_124, var_170)
  loc_19B153C:       Call 0.Method_arg_2C (var_248, var_EC)
  loc_19B157D:       If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString) Then
  loc_19B15CA:         If CBool(Ucase(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_19B15F9:           Call Proc_30_84_F0F128(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))
  loc_19B1607:         End If
  loc_19B1607:       End If
  loc_19B1624:       Call 0.Method_Me8 (False, 1, var_170)
  loc_19B162E:       Set var_D8 = Nothing
  loc_19B1634:     Else
  loc_19B163F:       If Not (var_240 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_19B164D:         If (var_240 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_19B1650:         End If
  loc_19B1652:         Close 1
  loc_19B1672:         var_13C = "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT"
  loc_19B1679:         Open var_13C For Output As 1 Len = &HFF
  loc_19B1689:         var_B4.MoveFirst
  loc_19B168E:         ' Referenced from:   19B212C
  loc_19B169D:         If Not(var_B4.EOF) Then
  loc_19B16A2:           var_92 = 0
  loc_19B16B6:           If (var_92 = 0) Then
  loc_19B16BB:             Print 1
  loc_19B16EF:             var_C0 = Replace(CStr(Space(&H38)), " ", "-", 1, -1, 0)
  loc_19B1736:             Call Proc_30_103_EF9B84(Proc_6_45_EAD428(Me.LblRest.Caption, &H14, 1, var_92), "D", &H28, var_248)
  loc_19B1740:             Print 1, var_248
  loc_19B177E:             Call Proc_30_103_EF9B84(Proc_6_45_EAD428("* NC Bill *", &H14, var_1A8), "D", &H28)
  loc_19B1788:             Print 1, var_13C
  loc_19B17A0:             Print 1
  loc_19B17A8:             Print 1
  loc_19B17E1:             Proc_6_39_E7C810(var_160, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_19B1803:             var_138 = (Chr(&HF) + "V No.     :   ")
  loc_19B180D:             var_198 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")))) + CVar(Proc_6_45_EAD428(CStr(var_160), &HA, var_13C)))
  loc_19B1813:             Print 1, CVar(CStr(Format(var_E4, var_160)))
  loc_19B18C5:             var_138 = (Chr(&HF) + "Date.     :   ")
  loc_19B18CF:             var_180 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_1C8), &HC)))
  loc_19B18D8:             var_198 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_1C8), &HC))), &HA, Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_1C8))) + " ")
  loc_19B18E2:             var_200 = (CVar(CStr(Format(var_E4, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_1C8), &HC))))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_19B18E8:             Print 1, "0"
  loc_19B193D:             var_114 = var_B4.Fields.Item("Remarks")
  loc_19B197A:             var_138 = (Chr(&HF) + "Remarks :   ")
  loc_19B1984:             var_180 = (CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_114)), &H32)))
  loc_19B198B:             var_1B8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_114)), &H32))), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_114)), &H32))) + Chr(&H12))
  loc_19B1991:             Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_19B19CA:             Set var_110 = Me.Label1
  loc_19B19D0:             Call 0.Method_cmdNCBill_UnknownEvent_90 (2, var_114)
  loc_19B1A65:             var_180 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_114))), &HA)))
  loc_19B1A6E:             var_198 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_114))), &HA))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_114))), &HA))) + ":   ")
  loc_19B1A75:             var_230 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_19B1A78:             var_27C = (Chr(&H12) + var_230)
  loc_19B1A7E:             Print 1, Space(1)
  loc_19B1AC9:             var_138 = (Chr(&HF) + CVar(var_C0))
  loc_19B1ACF:             Print 1, CVar(var_114)
  loc_19B1ADC:           End If
  loc_19B1B02:           var_150 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_19B1B1C:           var_180 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_114)))))
  loc_19B1B28:           var_198 = Space(3)
  loc_19B1B30:           var_1B8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_114))))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_114))), &HA))) + var_198)
  loc_19B1B4A:           var_200 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_19B1B5E:           var_230 = ("000" + Space(3))
  loc_19B1B78:           var_290 = (var_230 + CVar(Proc_6_52_EAD4F4("Amount", &HA)))
  loc_19B1BBE:           var_138 = (Chr(&HF) + CVar(CStr(Space(1))))
  loc_19B1BC4:           Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_19B1BE7:           var_138 = (Chr(&HF) + CVar(var_C0))
  loc_19B1BED:           Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_19B1C00:           var_92 = (var_92 + 4)
  loc_19B1C06:           var_B8.MoveFirst
  loc_19B1C0B:           ' Referenced from:   19B1F12
  loc_19B1C1A:           If Not(var_B8.EOF) Then
  loc_19B1C6A:             Proc_6_39_E7C810(var_198, CVar(var_B8.Fields.Item("qty")))
  loc_19B1CB5:             Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Amount", 7)), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_19B1D00:             Proc_6_39_E7C810(var_324, CVar(var_B8.Fields.Item("qty")), 1, 1)
  loc_19B1D2B:             Proc_6_39_E7C810(var_34C, CVar(var_B8.Fields.Item("Rate")), 1)
  loc_19B1D7B:             var_138 = Space(3)
  loc_19B1D83:             var_160 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + var_138)
  loc_19B1D99:             var_200 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_198, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B8.Fields.Item("ItemName"))))))) 'String
  loc_19B1D9C:             var_210 = (1 + var_200)
  loc_19B1DB0:             var_27C = (Space(3) + Space(3))
  loc_19B1DC6:             var_2D4 = CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_52_EAD4F4("Amount", 7)), "0.00")), 6, CVar(Proc_6_52_EAD4F4("Amount", &HA)))) 'String
  loc_19B1DC9:             var_2E4 = (&H12 + var_2D4)
  loc_19B1DDD:             var_304 = (Format(Format(CVar(Proc_6_52_EAD4F4("Amount", 7)), "0.00"), "0.00") + Space(3))
  loc_19B1DF6:             var_3C4 = (var_304 + CVar(Proc_6_52_EAD4F4(CStr(Format((var_324 * var_34C), "0.00")), &HA)))
  loc_19B1E82:             Proc_6_39_E7C810(var_138, CVar(var_B8.Fields.Item("qty")))
  loc_19B1EB0:             Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty"))))), CVar(var_B8.Fields.Item("Rate")), var_138)
  loc_19B1EBC:             var_198 = (var_E4 + (CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty")))))))
  loc_19B1EC1:             var_E4 = CSng(var_198)
  loc_19B1EEE:             var_138 = (Chr(&HF) + CVar(CStr(Format((var_34C * (var_324 * var_34C)), "0.00"))))
  loc_19B1EF4:             Print 1, var_138
  loc_19B1F07:             var_92 = (var_92 + 1)
  loc_19B1F0D:             var_B8.MoveNext
  loc_19B1F12:             GoTo loc_19B1C0B
  loc_19B1F15:           End If
  loc_19B1F2B:           var_138 = (Chr(&HF) + CVar(var_C0))
  loc_19B1F31:           Print 1, var_138
  loc_19B1F43:           Print 1, vbNullString
  loc_19B1FC9:           var_150 = (Chr(&HF) + Space(&H25))
  loc_19B1FD3:           var_180 = (CVar(var_B8.Fields.Item("Rate")) + CVar(Proc_6_45_EAD428("TOTAL  :", 8)))
  loc_19B1FDD:           var_230 = ((CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty")))))) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_E4, "0.00"))))), &HB, 1)))
  loc_19B1FE3:           Print 1, Space(3)
  loc_19B2014:           Print 1, vbNullString
  loc_19B206E:           var_138 = (Chr(&HF) + "Waiter Name  :   ")
  loc_19B2078:           var_180 = (Space(&H25) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), 1), &H14)))
  loc_19B207E:           Print 1, (CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty"))))))
  loc_19B209F:           Print 1
  loc_19B20BA:           var_138 = (Chr(&HF) + "** ")
  loc_19B20C4:           var_150 = (Space(&H25) + CVar(MemVar_1F9221C))
  loc_19B20CD:           var_160 = (CVar(var_B4.Fields.Item("WaiterName")) + " **")
  loc_19B20D3:           Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), 1), &H14))
  loc_19B20E7:           var_B4.MoveNext
  loc_19B20EE:           Print 1
  loc_19B20F6:           Print 1
  loc_19B20FE:           Print 1
  loc_19B2106:           Print 1
  loc_19B210E:           Print 1
  loc_19B2116:           Print 1
  loc_19B211E:           Print 1
  loc_19B2126:           Print 1
  loc_19B212C:           GoTo loc_19B168E
  loc_19B212F:         End If
  loc_19B2131:         Close 1
  loc_19B216C:         If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), &H12) <> vbNullString) Then
  loc_19B2194:           Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_19B21F2:           Print 1, CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value
  loc_19B2212:         Else
  loc_19B223C:           Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_19B224D:         End If
  loc_19B224F:         Close 1
  loc_19B2259:         If (MemVar_1F923B8 = "Y") Then
  loc_19B228B:           var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_19B229C:         Else
  loc_19B22CB:           var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_19B22D9:         End If
  loc_19B22DC:       Else
  loc_19B22E7:         If Not (var_240 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_19B22F5:           If (var_240 = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_19B22F8:           End If
  loc_19B22FA:           Close 1
  loc_19B2321:           Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_19B2331:           var_B4.MoveFirst
  loc_19B2336:           ' Referenced from:     19B2F39
  loc_19B2345:           If Not(var_B4.EOF) Then
  loc_19B2355:             var_90 = "* NC BILL *"
  loc_19B2386:             var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_19B2395:             If (0 = 0) Then
  loc_19B239A:               Print 1
  loc_19B23C9:               var_180 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_19B240C:               var_2B4 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_19B2436:               var_1D8 = (Chr(&HF) + Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty")))))) / 2))))
  loc_19B243D:               var_230 = (CVar(CStr(Format(var_E4, "0.00"))) + Trim(CVar(Me.LblRest)))
  loc_19B2444:               var_2E4 = (Space(3) + Space(CLng(("0.00" / 2))))
  loc_19B244B:               var_304 = (Format(("0.00" / 2), "0.00") + Chr(&H12))
  loc_19B2451:               Print 1, var_304
  loc_19B249F:               var_160 = (42 - Len(Trim(var_90)))
  loc_19B24D2:               var_230 = (42 - Len(Trim(var_90)))
  loc_19B24FC:               var_1B8 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_19B2506:               var_1D8 = (Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B8.Fields.Item("qty")))))) / 2))) + CVar(var_90))
  loc_19B250D:               var_2A4 = (CVar(CStr(Format(var_E4, "0.00"))) + Space(CLng((Space(3) / 2))))
  loc_19B2514:               var_2C4 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_19B251A:               Print 1, ("0.00" / 2)
  loc_19B2539:               var_92 = &H12
  loc_19B253E:               Print 1
  loc_19B2577:               Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B4.Fields.Item("VNo")), var_92)
  loc_19B25A6:               var_138 = (Chr(&HF) + "KOT No.  :     ")
  loc_19B25B0:               var_198 = (Trim(var_90) + CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)))
  loc_19B25B7:               var_1D8 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_19B25BD:               Print 1, CVar(CStr(Format(var_E4, "0.00")))
  loc_19B2680:               var_138 = (Chr(&HF) + "KOT Dt.  :     ")
  loc_19B268A:               var_180 = (Trim(var_90) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_92), &HC)))
  loc_19B2693:               var_198 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + " ")
  loc_19B269D:               var_200 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_19B26A4:               var_230 = (Trim(var_90) + Chr(&H12))
  loc_19B26AA:               Print 1, Space(3)
  loc_19B2740:               var_138 = (Chr(&HF) + "Category :     ")
  loc_19B274A:               var_180 = (Trim(var_90) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCType"))), &H1F)))
  loc_19B2751:               var_1B8 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + Chr(&H12))
  loc_19B2757:               Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_19B279E:               var_114 = var_B4.Fields.Item("Remarks")
  loc_19B27DB:               var_138 = (Chr(&HF) + "Remarks  :     ")
  loc_19B27E5:               var_180 = (Trim(var_90) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_114)), &H1F)))
  loc_19B27EC:               var_1B8 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + Chr(&H12))
  loc_19B27F2:               Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_19B282B:               Set var_110 = Me.Label1
  loc_19B2831:               Call 0.Method_cmdNCBill_UnknownEvent_90 (2, var_114)
  loc_19B28D3:               var_180 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_114))), 9)))
  loc_19B28DC:               var_198 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + ":     ")
  loc_19B28E3:               var_230 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_19B28E6:               var_27C = (Chr(&H12) + var_230)
  loc_19B28ED:               var_2A4 = ((Space(3) / 2) + Chr(&H12))
  loc_19B28F3:               Print 1, Len(Trim(CVar(Me.LblRest)))
  loc_19B294F:               var_138 = (Chr(&HF) + CVar(var_C0))
  loc_19B2956:               var_160 = (CVar(var_114) + Chr(&H12))
  loc_19B295C:               Print 1, CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_114))), 9))
  loc_19B296D:             End If
  loc_19B2993:             var_150 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Space(2))
  loc_19B29AD:             var_180 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))))
  loc_19B29B9:             var_198 = Space(2)
  loc_19B29C1:             var_1B8 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + var_198)
  loc_19B29DB:             var_200 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Amount", 8)))
  loc_19B2A24:             var_138 = (Chr(&HF) + CVar(CStr("000")))
  loc_19B2A2B:             var_160 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Chr(&H12))
  loc_19B2A31:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_19B2A65:             var_138 = (Chr(&HF) + CVar(var_C0))
  loc_19B2A6C:             var_160 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Chr(&H12))
  loc_19B2A72:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_19B2A89:             var_92 = (var_92 + 4)
  loc_19B2A8F:             var_B8.MoveFirst
  loc_19B2A97:             var_CC = CDbl(0)
  loc_19B2A9A:             ' Referenced from:     19B2D2D
  loc_19B2AA9:             If Not(var_B8.EOF) Then
  loc_19B2AF9:               Proc_6_39_E7C810(var_198, CVar(var_B8.Fields.Item("qty")), var_CC)
  loc_19B2B44:               Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("qty")), 1)
  loc_19B2B6F:               Proc_6_39_E7C810(("0.00" / 2), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_19B2BC7:               var_160 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H15, 1)) + Space(2))
  loc_19B2BE0:               var_210 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_198, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))))))
  loc_19B2BF4:               var_27C = (Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000") + Space(2))
  loc_19B2C0A:               var_314 = CVar(Proc_6_52_EAD4F4(CStr(Format((Len(Trim(CVar(Me.LblRest))) * ("0.00" / 2)), "0.00")), 8, (Space(3) / 2))) 'String
  loc_19B2C0D:               var_324 = (var_92 + var_314)
  loc_19B2C7B:               var_138 = (Chr(&HF) + CVar(CStr(var_324)))
  loc_19B2C82:               var_160 = (Space(2) + Chr(&H12))
  loc_19B2C88:               Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_19B2CC6:               Proc_6_39_E7C810(Space(2), CVar(var_B8.Fields.Item("qty")))
  loc_19B2CF4:               Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))), CVar(var_B8.Fields.Item("Rate")), Space(2))
  loc_19B2D00:               var_198 = (var_E4 + (CVar(var_CC) * CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))))
  loc_19B2D05:               var_CC = CSng(var_198)
  loc_19B2D22:               var_92 = (var_92 + 1)
  loc_19B2D28:               var_B8.MoveNext
  loc_19B2D2D:               GoTo loc_19B2A9A
  loc_19B2D30:             End If
  loc_19B2D53:             var_138 = (Chr(&HF) + CVar(var_C0))
  loc_19B2D5A:             var_160 = (Space(2) + Chr(&H12))
  loc_19B2D60:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_19B2D9F:             Proc_6_47_EF59D0(CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))), var_CC)
  loc_19B2DCF:             var_150 = (Chr(&HF) + CVar(Proc_6_52_EAD4F4("Total :", &H15)))
  loc_19B2DD9:             var_198 = (Chr(&H12) + CVar(Proc_6_52_EAD4F4(CStr(CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))), &H12)))
  loc_19B2DE0:             var_1D8 = (var_198 + Chr(&H12))
  loc_19B2DE6:             Print 1, Format(var_198, "0.00")
  loc_19B2E0C:             Print 1
  loc_19B2E66:             var_198 = Chr(&H12)
  loc_19B2E73:             var_138 = (Chr(&HF) + "Waiter Name  :     ")
  loc_19B2E7D:             var_180 = (CVar(Proc_6_52_EAD4F4("Total :", &H15)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92), &H14)))
  loc_19B2E84:             var_1B8 = (CVar(Proc_6_52_EAD4F4(CStr(CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))), &H12)) + var_198)
  loc_19B2E8A:             Print 1, Chr(&H12)
  loc_19B2EC2:             var_138 = (Chr(&HF) + "** ")
  loc_19B2ECC:             var_150 = (CVar(Proc_6_52_EAD4F4("Total :", &H15)) + CVar(MemVar_1F9221C))
  loc_19B2ED5:             var_160 = (CVar(var_B4.Fields.Item("WaiterName")) + " **")
  loc_19B2EDB:             Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92), &H14))
  loc_19B2EEE:             Print 1
  loc_19B2EF6:             Print 1
  loc_19B2F1C:             var_150 = (Chr(&H1B) + Chr(&H6D))
  loc_19B2F22:             Print 1, CVar(var_B4.Fields.Item("WaiterName"))
  loc_19B2F34:             var_B4.MoveNext
  loc_19B2F39:             GoTo loc_19B2336
  loc_19B2F3C:           End If
  loc_19B2F3E:           Close 1
  loc_19B2F79:           If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString) Then
  loc_19B2FA1:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_19B2FF9:             var_150 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_19B2FFF:             Print 1, var_150
  loc_19B301F:           Else
  loc_19B3044:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_19B307B:             Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_19B308C:           End If
  loc_19B308E:           Close 1
  loc_19B3098:           If (MemVar_1F923B8 = "Y") Then
  loc_19B30CA:             var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_19B30DB:           Else
  loc_19B310A:             var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_19B3118:           End If
  loc_19B3118:         End If
  loc_19B3118:       End If
  loc_19B3118:     End If
  loc_19B311B:   Else
  loc_19B3165:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92), &H14)), CVar(Proc_6_52_EAD4F4(CStr(CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))), &H12)), var_198)
  loc_19B3180:   End If
  loc_19B3183:   var_BC.MoveNext
  loc_19B3188:   GoTo loc_19B059C
  loc_19B318B: End If
  loc_19B3190: Set var_B4 = Nothing
  loc_19B3198: Set var_B8 = Nothing
  loc_19B31A0: Set var_BC = Nothing
  loc_19B31A8: Set var_D4 = Nothing
  loc_19B31B0: Set var_D8 = Nothing
  loc_19B31B3: Exit Sub
  loc_19B31B4: ' Referenced from: 19B02B8
  loc_19B31B4: Proc_6_60_E62BC4(var_CC)
  loc_19B31B9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1299588
  'Data Table: 589074
  Dim var_B0 As Variant
  Dim var_B4 As String
  Dim var_BC As TextBox
  Dim var_124 As Double
  Dim var_110 As String
  Dim var_114 As String
  Dim unk_589093 As Connection15
  Dim var_CC As Variant
  Dim var_12C As Variant
  Dim Me As Recordset15
  Dim var_130 As Variant
  Dim var_138 As Field20
  Dim var_140 As TextBox
  loc_1298FBC: On Error Goto loc_1299582
  loc_1298FCE: Me.FGrid2.Visible = False
  loc_1298FE2: Me.LblPendingKotItem.Visible = False
  loc_1298FF3: Set var_B0 = Me.CmPendingKot
  loc_1298FF9: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1299024: Call Proc_30_97_1011740(Proc_5_1_100CB50("ADD", Me))
  loc_129902F: Call Proc_30_96_FFD410(global_88)
  loc_1299039: var_B4 = CStr(MemVar_1F920EC)
  loc_1299047: Set var_B0 = Me.Txt
  loc_129904D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_BC)
  loc_1299055: var_BC.Text = var_B4
  loc_129906A: Call Proc_30_100_1186DAC(MemVar_1F92044)
  loc_129907D: Set var_B0 = Me.Txt
  loc_1299083: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_BC)
  loc_129908B: var_BC.Text = var_B4
  loc_12990DA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_BC, CStr(Format(Time, "hh:nn")))
  loc_12990E2: var_BC.Text = 1
  loc_12990FD: var_CC = Time
  loc_1299158: var_8C = Replace(CStr(Left(CVar(CStr(Format(var_CC, "HH:MM"))), 5)), ":", ".", 1, -1, 0)
  loc_1299175: var_124 = Val(var_8C)
  loc_1299193: var_110 = "Select Name From SessionMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND "
  loc_12991AF: unk_589093.Execute var_110 & CStr(var_124) & " BETWEEN FromTime AND ToTime", var_CC, -1
  loc_12991BA: Set var_88 = Me.Txt
  loc_12991E7: If (Me.Recordset15.RecordCount > 0) Then
  loc_12991FC:   var_B0 = Me.Recordset15.Fields
  loc_1299204:   var_BC = var_B0.Item("Name")
  loc_1299215:   var_B4 = Proc_6_38_E68A98(CVar(var_BC), var_B0, var_124, 1)
  loc_1299222:   Me.lblSession.Caption = var_B4
  loc_1299234: End If
  loc_1299242: Set var_B0 = Me.Txt
  loc_1299248: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_BC, var_B6)
  loc_1299250: 1 = var_BC.Visible
  loc_1299262: If (var_B6 = &HFF) Then
  loc_1299270:   If (global_188 = "Auto") Then
  loc_1299273:     Call Command1_Click()
  loc_1299286:     Set var_B0 = Me.Txt
  loc_129928C:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_BC, var_B4)
  loc_1299294:     1 = var_BC.Tag
  loc_129929C:     var_CC = CVar(var_B4) 'String
  loc_12992C0:     If (Trim(var_CC) = vbNullString) Then
  loc_12992D8:       var_B4 = "INI"
  loc_12992E6:       Call Proc_30_97_1011740(Proc_5_1_100CB50(var_B4, Me), global_88)
  loc_1299308:       If (Me.RecordCount > 0) Then
  loc_129930B:         Call Proc_30_94_17A0CD8(var_B4)
  loc_1299310:       End If
  loc_1299310:       Exit Sub
  loc_1299311:     End If
  loc_1299311:   End If
  loc_129931F:   Set var_B0 = Me.Txt
  loc_1299325:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_BC)
  loc_129932D:   var_B6 = var_BC.Visible
  loc_1299346:   Set var_12C = Me.Txt
  loc_129934C:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_130)
  loc_129936B:   If ((var_B6 = &HFF) And (var_130.Enabled = &HFF)) Then
  loc_1299379:     Set var_B0 = Me.Txt
  loc_129937F:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4))
  loc_1299387:     var_BC.SetFocus
  loc_1299396:   Else
  loc_129939A:     Set var_B0 = Me.FGrid
  loc_12993AB:   End If
  loc_12993AE: Else
  loc_12993BC:   Set var_B0 = Me.Txt
  loc_12993C2:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_BC, var_B6)
  loc_12993CA:   FGrid.DispID_8001 = var_BC.Visible
  loc_12993DC:   If (var_B6 = &HFF) Then
  loc_12993EA:     Set var_B0 = Me.Txt
  loc_12993F0:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_BC)
  loc_12993F8:     var_BC.SetFocus
  loc_1299407:   Else
  loc_129940B:     Set var_B0 = Me.FGrid
  loc_129941C:   End If
  loc_129941C: End If
  loc_1299430: If (RsKOTEntry.OpenMode = 1) Then
  loc_1299444:   Set var_B0 = Me.Txt
  loc_129944A:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_BC, global_256)
  loc_1299452:   var_BC.Text = FGrid.DispID_8001
  loc_129946F:   Set var_B0 = Me.Txt
  loc_1299475:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_BC)
  loc_129947D:   var_BC.Text = global_264
  loc_1299489: End If
  loc_12994B6: var_114 = "SELECT ISNULL(MAX(GUARATT),1) FROM KOT WHERE RestCode='" & LocalRestCode & "' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y' AND ROOMNO='"
  loc_12994C7: Set var_B0 = Me.Txt
  loc_12994CD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_BC, var_110, var_114, var_CC, -1)
  loc_12994EE: unk_589093.Execute var_130 & var_110 & "'", 0, var_138
  loc_12994FE:  = var_130.Item(var_BC)
  loc_1299506:  = var_138.Value
  loc_129951D: Set var_13C = Me.Txt
  loc_1299523: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HD), var_140)
  loc_129952B: var_140.Text = CStr(var_BC.Text.Fields)
  loc_1299564: Me.LblUser.Caption = vbNullString
  loc_1299579: Me.LblLDt.Caption = vbNullString
  loc_1299581: Exit Sub
  loc_1299582: ' Referenced from: 1298FBC
  loc_1299582: Proc_6_60_E62BC4()
  loc_1299587: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9FC48
  'Data Table: 589074
  loc_E9FBD0: On Error Goto loc_E9FC41
  loc_E9FC0A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9FC30:   Call Proc_30_97_1011740(Proc_5_1_100CB50("INI", Me))
  loc_E9FC3B:   Call Proc_30_94_17A0CD8(global_88)
  loc_E9FC40: End If
  loc_E9FC40: Exit Sub
  loc_E9FC41: ' Referenced from: E9FBD0
  loc_E9FC41: Proc_6_60_E62BC4()
  loc_E9FC46: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '14AA35C
  'Data Table: 589074
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_110 As Fields15
  Dim var_154 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_174 As Variant
  Dim var_198 As String
  Dim unk_589093 As Connection15
  Dim var_1BC As Recordset15
  Dim var_1C0 As Fields15
  Dim var_1D4 As Variant
  Dim var_98 As Recordset15
  Dim var_208 As String
  Dim var_20C As String
  Dim var_220 As String
  Dim var_164 As Variant
  Dim var_124 As TextBox
  Dim var_AA4 As Double
  Dim var_2D4 As TextBox
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_42C As Variant
  Dim var_44C As Variant
  Dim var_AB4 As Double
  Dim var_748 As TextBox
  Dim var_86C As Variant
  Dim var_88C As Variant
  Dim var_AC4 As Double
  Dim var_ACC As Double
  Dim var_1B8 As Variant
  Dim var_1E4 As Variant
  Dim var_2AC As Variant
  Dim var_41C As Variant
  Dim var_78C As Variant
  Dim var_8D4 As Variant
  Dim var_A04 As Variant
  loc_14A982C: On Error Goto loc_14AA30B
  loc_14A983D: If (Proc_183_56_FE8818(global_88) = &HFF) Then
  loc_14A9840:   Exit Sub
  loc_14A9841: End If
  loc_14A987D: var_110 = Me.Fields
  loc_14A9885: var_124 = var_110.Item("SearchCode")
  loc_14A988A: var_154 = 1
  loc_14A9897: var_134 = CVar(var_124) 'Address
  loc_14A989E: var_164 = Mid(var_134, 4, var_154)
  loc_14A98A9: var_1D0 = 0
  loc_14A98D7: var_174 = "Select count(*) from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" & var_164 
  loc_14A98EE: unk_589093.Execute CStr(var_174 & "'<>'N'"), var_1B8, -1
  loc_14A98F6: var_1BC = var_1BC.Fields
  loc_14A98FE: var_1D0 = var_1C0.Item(var_1C0)
  loc_14A9906: var_1D4 = var_1D4.Value
  loc_14A993F: If (var_1E4 > 0) Then
  loc_14A9998:   unk_589093.Execute CStr("Select VNo from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_14A99EF:   var_10C = "**** Deletion Not Allowed ****"
  loc_14A9A0F:   var_20C = "Bill Allready Prepared For this KOT" & vbCrLf & vbCrLf & "Ref. No. "
  loc_14A9A30:   var_220 = var_20C & CStr(var_110.Fields.Item(0).Value) & vbCrLf & vbCrLf & vbCrLf
  loc_14A9A3A:   MsgBox(CVar(var_220 & vbCrLf), &H10, var_10C, var_134, var_154)
  loc_14A9A68:   Exit Sub
  loc_14A9A69: End If
  loc_14A9AA0: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_10C, var_134) = 6) Then
  loc_14A9ACD:   var_9C = InputBox("Please Specify, Reason For Delete ?", "Reason", var_10C, var_134, var_154, var_164, var_174)
  loc_14A9AEA:   unk_589093.BeginTrans var_224
  loc_14A9B00:   var_94 = Me.Bookmark 'Variant
  loc_14A9B42:   var_A4 = CStr(IIf((Me.ChkNCKOT.Value = 1), "Y", "N"))
  loc_14A9B78:   For var_22A = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_22A 'Integer
  loc_14A9B8A:     var_FC = CVar(CLng(&HA)) 'Long
  loc_14A9BA4:     var_EC = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14A9BD1:     Set var_BC = Me.FGrid
  loc_14A9BE2:     var_198 = CStr(var_BC.TextMatrix))
  loc_14A9C10:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_198)) <> CDbl(0))) Then
  loc_14A9C21:       Set var_A8 = Me.Txt
  loc_14A9C27:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_BC, var_198, CVar(CLng(var_9E)), (Trim(var_EC) <> vbNullString))
  loc_14A9C2F:       var_FC = var_BC.Text
  loc_14A9C42:       Set var_110 = Me.Txt
  loc_14A9C48:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_20C, CVar(CLng(var_9E)))
  loc_14A9C50:       1 = var_124.Text
  loc_14A9C5D:       var_AA4 = Val(var_20C)
  loc_14A9C6B:       Set var_1BC = Me.Txt
  loc_14A9C71:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_1C0, var_AA4)
  loc_14A9C80:       Proc_6_7_F25D88(var_EC, CVar(var_1C0))
  loc_14A9CA5:       Set var_2D0 = Me.Txt
  loc_14A9CAB:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_2D4, var_220)
  loc_14A9CB3:       var_110 = var_2D4.Tag
  loc_14A9CBC:       var_324 = CVar(CLng(var_9E)) 'Long
  loc_14A9CC4:       var_344 = CVar(CLng(0)) 'Long
  loc_14A9D15:       var_42C = CVar(CLng(var_9E)) 'Long
  loc_14A9D1D:       var_44C = CVar(CLng(&HA)) 'Long
  loc_14A9D66:       var_AB4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14A9E22:       var_710 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Yes"), "Y", "N"))
  loc_14A9E35:       Set var_744 = Me.Txt
  loc_14A9E3B:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(5), var_748, var_74C, CVar(CLng(9)), CVar(CLng(var_9E)), CVar(CLng(9)), CVar(CLng(var_9E)))
  loc_14A9E56:       Proc_6_7_F25D88(var_7EC, Now, CVar(CLng(7)), CVar(CLng(var_9E)))
  loc_14A9E5F:       var_86C = CVar(CLng(var_9E)) 'Long
  loc_14A9E67:       var_88C = CVar(CLng(8)) 'Long
  loc_14A9EBA:       var_AC4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14A9EEB:       var_ACC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14A9F12:       var_208 = "Insert Into KOTLog (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,DELFLAG,LogSite_Code) Values ('" & var_198
  loc_14A9F5B:       var_1B8 = CVar(var_208 & "'," & CStr(var_AA4) & ",") & var_EC & ",'" & CVar(global_152) & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_14A9FB0:       var_2AC = var_1B8 & "','" & CVar(MemVar_1F92070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) 
  loc_14A9FF0:       var_41C = var_2AC & "','" & CVar(var_220) & "','Y'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & Format(Time, "hh:nn") & "','" 
  loc_14AA03B:       var_78C = var_41C & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(var_748.Tag) & ",'" & var_710 & "','" & CVar(var_74C) & "','" 
  loc_14AA07C:       var_8D4 = var_78C & CVar(MemVar_1F920C8) & "'," & var_7EC & ",'A','" & CVar(var_A4) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_14AA0A4:       var_A04 = CVar(Proc_6_38_E68A98(var_9C, var_ACC, CVar(CLng(8)), CVar(CLng(var_9E)), var_AC4, CVar(CLng(7)), CVar(CLng(var_9E)))) 'String
  loc_14AA0D1:       unk_589093.Execute CStr(var_8D4 & "," & CVar((var_AC4 * var_ACC)) & ",'" & var_A04 & "','D','" & CVar(MemVar_1F92078) & "')"), var_A98, -1
  loc_14AA1B5:     End If
  loc_14AA1B8:   Next var_22A 'Integer
  loc_14AA1D1:   var_198 = "Update Kot Set DelFlag='Y',U_Name1='" & MemVar_1F920C8
  loc_14AA1D8:   var_10C = CVar(var_198 & "',U_EntDt1=") 'String
  loc_14AA1E9:   Proc_6_7_F25D88(var_EC, Date, var_10C)
  loc_14AA1F1:   var_134 = var_1B8 & var_EC 
  loc_14AA242:   unk_589093.Execute CStr(var_134 & ",U_AE1='E' Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), -1, var_110
  loc_14AA272:   unk_589093.CommitTrans
  loc_14AA282:   Me.Requery -1
  loc_14AA2A2:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_14AA2AF:     Me.Bookmark = var_94
  loc_14AA2B7:   Else
  loc_14AA2CB:     If (Me.EOF = 0) Then
  loc_14AA2D4:       Me.MoveLast
  loc_14AA2D9:     End If
  loc_14AA2D9:   End If
  loc_14AA2D9:   Call Proc_30_94_17A0CD8()
  loc_14AA2FA:   Proc_5_0_110649C(&HFF, Me)
  loc_14AA302: End If
  loc_14AA307: Set var_98 = Nothing
  loc_14AA30A: Exit Sub
  loc_14AA30B: ' Referenced from: 14A982C
  loc_14AA311: unk_589093.RollbackTrans
  loc_14AA31E: Set var_A8 = Err()
  loc_14AA324: Call 0.Method_arg_2C (var_198, global_88)
  loc_14AA345: MsgBox(CVar(var_198), &H10, " Deletion Message", var_10C, var_134)
  loc_14AA358: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1247600
  'Data Table: 589074
  Dim var_AC As Variant
  Dim var_12C As Integer
  Dim Me As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim unk_589093 As Connection15
  Dim var_118 As Variant
  Dim var_11C As Fields15
  Dim var_130 As Field20
  Dim var_140 As Integer
  Dim var_114 As Variant
  Dim var_180 As Variant
  Dim var_88 As Recordset15
  loc_12470FC: On Error Goto loc_12475F7
  loc_124710E: Me.FGrid2.Visible = False
  loc_1247122: Me.LblPendingKotItem.Visible = False
  loc_1247133: Set var_AC = Me.CmPendingKot
  loc_1247139: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_124714F: If (Proc_183_55_FE7900(global_88) = &HFF) Then
  loc_1247152:   Exit Sub
  loc_1247153: End If
  loc_1247159: var_12C = 0
  loc_12471B8: unk_589093.Execute CStr("Select count(*) from KOT Where DocId='" & Me.Fields.Item("SearchCode").Value & "' And IsNull(ContraDocId,'')<>''"), var_114, -1
  loc_12471C0: var_118 = var_118.Fields
  loc_12471C8: var_12C = var_11C.Item(var_11C)
  loc_12471D0: var_130 = var_130.Value
  loc_12471FD: If (var_140 > 0) Then
  loc_124723C:   var_118 = Me.Fields
  loc_1247249:   var_140 = 1
  loc_1247256:   var_114 = CVar(var_118.Item("SearchCode")) 'Address
  loc_1247290:   var_180 = "Select VNo from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" & Mid(var_114, 4, var_140) & "'<>'N'" 
  loc_124729E:   unk_589093.Execute CStr(var_180), var_1A0, -1
  loc_12472A9:   Set var_88 = var_130
  loc_12472E3:   If (var_88.RecordCount > 0) Then
  loc_1247300:     var_B0 = var_88.Fields.Item(0)
  loc_1247360:     var_D0 = CVar("Bill Allready Prepared For this KOT" & vbCrLf & vbCrLf & "Ref. No. " & CStr(var_B0.Value) & vbCrLf & vbCrLf & vbCrLf & vbCrLf) 'String
  loc_1247363:     MsgBox(var_D0, &H10, "**** Modification Not Allowed ****", var_114, var_140)
  loc_1247391:     Exit Sub
  loc_1247392:   End If
  loc_1247392: End If
  loc_12473B5: Call Proc_30_97_1011740(Proc_5_1_100CB50("EDIT", Me, global_88), var_130)
  loc_12473CD: Me.LblUser.Caption = vbNullString
  loc_12473E2: Me.LblLDt.Caption = vbNullString
  loc_12473F7: Set var_AC = Me.Txt
  loc_12473FD: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_B0)
  loc_1247405: var_B0.Enabled = False
  loc_124741D: Me.ChkNCKOT.Enabled = False
  loc_1247430: Set var_AC = Me.Txt
  loc_1247436: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_B0)
  loc_124743E: var_B0.SetFocus
  loc_1247461: If (Me.RecordCount > 0) Then
  loc_12474BA:   unk_589093.Execute CStr("Select K.U_Name,K.U_AE,K.U_EntDt,K.Pending From KOT K Where K.Docid='" & Me.Fields.Item("DocID").Value & "'"), var_114, -1
  loc_12474C5:   Set var_88 = var_118
  loc_12474E2:   Set var_1C8 = var_88 
  loc_1247517:   global_132 = CStr(var_88.Fields.Item("U_Name").Value)
  loc_1247559:   global_144 = CStr(var_88.Fields.Item("U_AE").Value)
  loc_1247599:   global_136 = CDate(var_88.Fields.Item("U_EntDt").Value)
  loc_12475D7:   global_148 = CStr(var_88.Fields.Item("Pending").Value)
  loc_12475EA:   Set var_1C8 = Nothing 
  loc_12475EE: End If
  loc_12475F3: Set var_88 = Nothing
  loc_12475F6: Exit Sub
  loc_12475F7: ' Referenced from: 12470FC
  loc_12475F7: Proc_6_60_E62BC4(global_136, var_118)
  loc_12475FC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16CC4
  'Data Table: 589074
  loc_E16CB9: Me.Global.Unload Me
  loc_E16CC1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'FFE5F8
  'Data Table: 589074
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_D8 As Integer
  Dim unk_589093 As Connection15
  Dim var_118 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As Field20
  Dim var_140 As Variant
  Dim var_170 As Variant
  Dim var_1B0 As Integer
  Dim var_174 As String
  Dim var_19C As Recordset15
  Dim var_1A0 As Fields15
  Dim var_1B4 As Field20
  loc_FFE43C: On Error Goto loc_FFE5F2
  loc_FFE456: If (Me.RecordCount <= 0) Then
  loc_FFE45F:   var_B8 = "Information"
  loc_FFE474:   var_A8 = "No Records To Search."
  loc_FFE47A:   MsgBox(var_A8, &H40, var_B8, var_E8, var_108)
  loc_FFE48A:   Exit Sub
  loc_FFE48B: End If
  loc_FFE492: var_10C = "Select Distinct K.DocId as SearchCode,K.VNo as [No],CAST (K.VDate AS VARCHAR(11)) as [Date],K.VTime as [Time],K.ROOMNO AS TableNo,H.Name as Restaurant,W.Name as Waiter  From (((KOT K Inner Join Voucher_Type V On (K.VType= V.V_Type And K.Logsite_Code=V.LogSite_Code)) Inner Join Depart H On K.RESTCODE= H.Code) Inner Join Waiter W On W.COde=K.Waiter) WHERE (K.LOGSITE_CODE='" & MemVar_1F92078
  loc_FFE4A7: Proc_6_7_F25D88(var_A8, MemVar_1F920EC)
  loc_FFE4AF: var_E8 = CVar(var_10C & "' or K.LOGSITE_CODE='HO') and (DelFlag NOT IN ('Y') OR DelFlag IS NULL) And (K.VDate=") & var_A8 
  loc_FFE4BE: var_D8 = 0
  loc_FFE4EE: unk_589093.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_108, -1
  loc_FFE4F6: var_118 = var_118.Fields
  loc_FFE4FE: var_D8 = var_11C.Item(var_11C)
  loc_FFE506: var_120 = var_120.Value
  loc_FFE50E: var_140 = (var_130 + var_130)
  loc_FFE51B: var_170 = ") AND (K.VType='K" & var_140 & "' OR K.VType='" 
  loc_FFE525: var_1B0 = 0
  loc_FFE545: var_174 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_FFE555: unk_589093.Execute var_174 & "'", var_198, -1
  loc_FFE55D: var_19C = var_19C.Fields
  loc_FFE565: var_1B0 = var_1A0.Item(var_1A0)
  loc_FFE56D: var_1B4 = var_1B4.Value
  loc_FFE5C7: Proc_6_126_F1BCC0("800,1000,800,1000,2000,2000", CStr(var_1C4 & var_1C4 & "') Order by Docid"))
  loc_FFE5D5: MemVar_1F92120 = Me
  loc_FFE5EC: Call 0.Method_arg_2B0 (1, var_B8)
  loc_FFE5F1: Exit Sub
  loc_FFE5F2: ' Referenced from: FFE43C
  loc_FFE5F2: Proc_6_60_E62BC4(var_170)
  loc_FFE5F7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E31398
  'Data Table: 589074
  loc_E31388: Proc_5_0_110649C(&HFF, Me)
  loc_E31390: Call Proc_30_94_17A0CD8(global_88)
  loc_E31395: Exit Sub
  loc_E31396: Set var_400 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E313F8
  'Data Table: 589074
  loc_E313E8: Proc_5_0_110649C(&HFF, Me)
  loc_E313F0: Call Proc_30_94_17A0CD8(global_88)
  loc_E313F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E31458
  'Data Table: 589074
  loc_E31448: Proc_5_0_110649C(&HFF, Me)
  loc_E31450: Call Proc_30_94_17A0CD8(global_88)
  loc_E31455: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E314B8
  'Data Table: 589074
  Dim var_301 As Double
  loc_E314A8: Proc_5_0_110649C(&HFF, Me)
  loc_E314B0: Call Proc_30_94_17A0CD8(global_88)
  loc_E314B5: Exit Sub
  loc_E314B6: var_301 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E6CC9C
  'Data Table: 589074
  Dim Me As Recordset15
  loc_E6CC52: If (MemVar_1F920B8 > 0) Then
  loc_E6CC87:   Proc_260_21_1E6A5E0(CStr(Me.Fields.Item("SearchCode").Value))
  loc_E6CC99: End If
  loc_E6CC99: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E589F4
  'Data Table: 589074
  Dim Me As Recordset15
  loc_E589BB: Me.Requery -1
  loc_E589CB: Me.Requery -1
  loc_E589DB: Me.Requery -1
  loc_E589EB: Me.Requery -1
  loc_E589F0: Exit Sub
  loc_E589F1: Set var_114 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1B2921C
  'Data Table: 589074
  Dim var_D0 As Variant
  Dim var_B8 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_C0 As Variant
  Dim var_148 As String
  Dim unk_589093 As Connection15
  Dim var_B4 As Variant
  Dim var_BC As Variant
  Dim var_120 As Variant
  Dim var_AC As Variant
  Dim var_110 As Variant
  Dim var_100 As Variant
  Dim MemVar_1F920EC As Double
  Dim var_1B8 As Variant
  Dim var_1BC As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_88 As Variant
  Dim var_1B4 As Variant
  Dim var_1F8 As Variant
  Dim var_20C As Field20
  Dim var_250 As Variant
  Dim var_264 As Variant
  Dim var_2F8 As Variant
  Dim var_2E8 As Variant
  Dim var_2FC As Variant
  Dim var_350 As Variant
  Dim var_3A8 As Variant
  Dim var_398 As Variant
  Dim var_400 As Variant
  Dim var_3F0 As Variant
  Dim var_404 As Variant
  Dim var_448 As Variant
  Dim var_45C As Variant
  Dim var_568 As Fields15
  Dim var_57C As Variant
  Dim var_5C0 As Fields15
  Dim var_5D4 As Field20
  Dim var_62C As Variant
  Dim var_670 As Variant
  Dim var_758 As Variant
  Dim var_76C As Variant
  Dim var_7C4 As Field20
  Dim var_808 As Variant
  Dim var_81C As Variant
  Dim var_860 As Variant
  Dim var_874 As Variant
  Dim var_8B8 As Fields15
  Dim var_8CC As Variant
  Dim var_950 As Fields15
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1E4 As Variant
  Dim var_22C As Variant
  Dim var_2C4 As Variant
  Dim var_2D4 As Variant
  Dim var_31C As Variant
  Dim var_32C As Variant
  Dim var_374 As Variant
  Dim var_434 As Variant
  Dim var_47C As Variant
  Dim var_48C As Variant
  Dim var_49C As Variant
  Dim var_4F4 As Variant
  Dim var_544 As Variant
  Dim var_64C As Variant
  Dim var_66C As Variant
  Dim var_6A4 As Variant
  Dim var_734 As Variant
  Dim var_754 As Variant
  Dim var_78C As Variant
  Dim var_804 As Variant
  Dim var_84C As Variant
  Dim var_8EC As Variant
  Dim var_8FC As Variant
  Dim var_90C As Variant
  Dim var_9FC As Variant
  Dim var_A44 As Variant
  Dim var_A54 As Variant
  Dim var_164 As Double
  Dim var_1C4 As TextBox
  Dim var_B04 As Double
  Dim var_B0C As Double
  Dim var_AD0 As String
  Dim var_B14 As Double
  Dim var_AD4 As String
  Dim var_AD8 As String
  Dim var_B1C As Double
  Dim var_A90 As String
  Dim var_A94 As String
  Dim var_A98 As String
  Dim var_A9C As String
  Dim var_AAC As String
  Dim var_AB4 As String
  Dim var_ABC As String
  Dim var_140 As Variant
  Dim var_1D4 As Variant
  Dim var_21C As Variant
  Dim var_274 As Variant
  Dim var_3BC As Variant
  Dim var_414 As Variant
  Dim var_46C As Variant
  Dim var_4C4 As Variant
  Dim var_63C As Variant
  Dim var_AEC As String
  Dim var_58C As Variant
  Dim var_AB8 As String
  Dim var_112C As Double
  Dim var_C40 As Variant
  Dim var_1138 As Double
  Dim var_D70 As Variant
  Dim var_D90 As Variant
  Dim var_E10 As Variant
  Dim var_E30 As Variant
  Dim var_E50 As Variant
  Dim var_1140 As Double
  Dim var_EA0 As Variant
  Dim var_EC0 As Variant
  Dim var_EE0 As Variant
  Dim var_F70 As Variant
  Dim var_1040 As Variant
  Dim var_1148 As Double
  Dim var_1150 As Double
  Dim var_714 As Variant
  Dim var_984 As Variant
  Dim var_C90 As Variant
  Dim var_A84 As Variant
  Dim var_CB0 As Variant
  Dim var_D50 As Variant
  Dim var_DE0 As Variant
  Dim var_E70 As Variant
  Dim var_F80 As Variant
  Dim var_FF0 As Variant
  Dim var_1050 As Variant
  Dim var_1060 As Variant
  Dim var_C70 As Variant
  Dim var_DA0 As Variant
  Dim var_DD0 As Variant
  Dim var_AA4 As String
  Dim var_A6 As Integer
  loc_1B24BE4: On Error Goto loc_1B291FF
  loc_1B24BF2: Set var_B4 = Me.Txt
  loc_1B24BF8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1B24C21: If (Proc_6_27_EA565C(var_B8, "Voucher Date") = 0) Then
  loc_1B24C24:   Exit Sub
  loc_1B24C25: End If
  loc_1B24C30: Set var_B4 = Me.Txt
  loc_1B24C36: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B8)
  loc_1B24C5F: If (Proc_6_27_EA565C(var_B8, "Voucher No") = 0) Then
  loc_1B24C62:   Exit Sub
  loc_1B24C63: End If
  loc_1B24C6E: If (LocalRestCode = vbNullString) Then
  loc_1B24C8A:   MsgBox("Open RestaurantChange Master", 0, var_100, var_120, var_140)
  loc_1B24C9A:   Exit Sub
  loc_1B24C9B: End If
  loc_1B24CA6: Set var_B4 = Me.Txt
  loc_1B24CAC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_B8)
  loc_1B24CD5: If (Proc_6_27_EA565C(var_B8, "KOT Time") = 0) Then
  loc_1B24CD8:   Exit Sub
  loc_1B24CD9: End If
  loc_1B24CE4: Set var_B4 = Me.Txt
  loc_1B24CEA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_B8)
  loc_1B24D13: If (Proc_6_27_EA565C(var_B8, "WAITER") = 0) Then
  loc_1B24D16:   Exit Sub
  loc_1B24D17: End If
  loc_1B24D22: Set var_B4 = Me.Txt
  loc_1B24D28: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_B8)
  loc_1B24D51: If (Proc_6_27_EA565C(var_B8, "TABLE CODE") = 0) Then
  loc_1B24D54:   Exit Sub
  loc_1B24D55: End If
  loc_1B24D63: Set var_B4 = Me.Txt
  loc_1B24D69: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_B8)
  loc_1B24D7F: var_100 = Trim(CVar(var_B8.Tag))
  loc_1B24D9D: If (var_100 = vbNullString) Then
  loc_1B24DB3:   var_E0 = "TABLE CODE is required field."
  loc_1B24DB9:   MsgBox(var_E0, &H10, var_100, var_120, var_140)
  loc_1B24DD7:   Set var_B4 = Me.Txt
  loc_1B24DDD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_B8)
  loc_1B24DE5:   var_142 = var_B8.Enabled
  loc_1B24DF7:   If (var_142 = &HFF) Then
  loc_1B24E05:     Set var_B4 = Me.Txt
  loc_1B24E0B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_B8)
  loc_1B24E13:     var_B8.SetFocus
  loc_1B24E1F:   End If
  loc_1B24E1F:   Exit Sub
  loc_1B24E20: End If
  loc_1B24E2B: If (global_160 = "RO") Then
  loc_1B24E34:   var_F0 = 0
  loc_1B24E64:   unk_589093.Execute "Select Max(mFolioNoDocId) From GuestFolio Where DocId='" & global_180 & "'", var_E0, -1
  loc_1B24E6C:   var_B4 = var_B4.Fields
  loc_1B24E74:   var_F0 = var_B8.Item(var_B8)
  loc_1B24E7C:   var_BC = var_BC.Value
  loc_1B24E89:   var_120 = CVar(Proc_6_38_E68A98(var_100, var_100)) 'String
  loc_1B24E8F:   var_140 = Trim(var_120)
  loc_1B24E9E:   global_176 = CStr(var_140)
  loc_1B24ECA:   If (global_176 <> vbNullString) Then
  loc_1B24EE4:     var_C0 = "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and FolionoDocid='" & global_176
  loc_1B24EF4:     unk_589093.Execute var_C0 & "'", var_E0, -1
  loc_1B24EFF:     Set var_AC = var_B4
  loc_1B24F12:   Else
  loc_1B24F29:     var_C0 = "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and FolionoDocid='" & global_180
  loc_1B24F39:     unk_589093.Execute var_C0 & "'", var_E0, -1
  loc_1B24F44:     Set var_AC = var_B4
  loc_1B24F54:   End If
  loc_1B24F6E:   var_B8 = var_AC.Fields.Item(0)
  loc_1B24F90:   If (var_B8.Value > 0) Then
  loc_1B24FAC:     MsgBox("Guest Room Bill Already printed for this Room", &H10, var_100, var_120, var_140)
  loc_1B24FBC:     Exit Sub
  loc_1B24FBD:   End If
  loc_1B24FBD: End If
  loc_1B24FCB: Set var_B4 = Me.Txt
  loc_1B24FD1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_B8, var_C0)
  loc_1B24FD9: var_B4 = var_B8.Tag
  loc_1B24FE7: var_100 = Trim(CVar(var_C0))
  loc_1B25005: If (var_100 = vbNullString) Then
  loc_1B25021:   MsgBox("Steward Name is required field.", &H10, var_100, var_120, var_140)
  loc_1B2503F:   Set var_B4 = Me.Txt
  loc_1B25045:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_B8, var_142)
  loc_1B2504D:   var_B4 = var_B8.Enabled
  loc_1B2505F:   If (var_142 = &HFF) Then
  loc_1B2506D:     Set var_B4 = Me.Txt
  loc_1B25073:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_B8)
  loc_1B2507B:     var_B8.SetFocus
  loc_1B25087:   End If
  loc_1B25087:   Exit Sub
  loc_1B25088: End If
  loc_1B25088: var_D0 = 1
  loc_1B25091: var_110 = 1
  loc_1B250AF: var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B250B5: var_120 = Trim(var_100)
  loc_1B250D1: If (var_120 = vbNullString) Then
  loc_1B250ED:   MsgBox("Fill Item Name ", 0, var_100, var_120, var_140)
  loc_1B25110:   Me.FGrid.Row = 1
  loc_1B2511C:   Set var_B4 = Me.FGrid
  loc_1B25140:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1B25148:   Exit Sub
  loc_1B25149: End If
  loc_1B25149: var_D0 = 1
  loc_1B25155: var_110 = CVar(CLng(4)) 'Long
  loc_1B2516F: var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B25175: var_120 = Trim(var_100)
  loc_1B25191: If (var_120 = vbNullString) Then
  loc_1B251AD:   MsgBox("Item Detail Required ", 0, var_100, var_120, var_140)
  loc_1B251D0:   Me.FGrid.Row = 1
  loc_1B251DC:   Set var_B4 = Me.FGrid
  loc_1B251F1:   var_D0 = CVar(CLng("14737632")) 'Long
  loc_1B25200:   Me.FGrid.CellBackColor = var_D0
  loc_1B25208:   Exit Sub
  loc_1B25209: End If
  loc_1B2520C: Call Proc_30_95_1081FF0(var_142, FGrid.DispID_8001, var_110, var_D0)
  loc_1B25217: If (var_142 = 0) Then
  loc_1B2521A:   Exit Sub
  loc_1B2521B: End If
  loc_1B25226: Set var_B4 = Me.TxtGrid
  loc_1B2522C: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_B8, 0, FGrid.DispID_8001)
  loc_1B25234: var_B8.Visible = var_110
  loc_1B25240: Call Proc_30_98_F6DC1C(var_D0)
  loc_1B25253: Set var_B4 = Me.Txt
  loc_1B25259: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_1B25281: If (Proc_6_91_EF2D40(CDate(var_B8.Text)) = 0) Then
  loc_1B2528F:   Set var_B4 = Me.Txt
  loc_1B25295:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_1B2529D:   var_B8.SetFocus
  loc_1B252A9:   Exit Sub
  loc_1B252AA: End If
  loc_1B252DF: var_120 = IIf((Me.ChkNCKOT.Value = 1), "Y", "N")
  loc_1B252E8: var_9C = CStr(var_120)
  loc_1B252FD: Set var_B4 = Me.TopCtrl1
  loc_1B25303: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_B8)
  loc_1B2531C: If (CStr() = "Add") Then
  loc_1B2533A:   If (Me.ChkNCKOT.Value = 1) Then
  loc_1B25351:     var_100 = "Reason"
  loc_1B253A6:     If (Trim(InputBox("Please Specify, Reason of Editing ?", var_100, var_120, var_140, var_174, var_194, var_1B4)) = vbNullString) Then
  loc_1B253BC:       var_E0 = "You must Enter a Valid Reason of Editing"
  loc_1B253C2:       MsgBox(var_E0, 0, var_100, var_120, var_140)
  loc_1B253D2:       Exit Sub
  loc_1B253D3:     End If
  loc_1B253D3:   End If
  loc_1B253D9:   var_F0 = 0
  loc_1B253F6:   var_C0 = "Select NCUR from enviro where LogSite_code='" & MemVar_1F92078
  loc_1B25406:   unk_589093.Execute var_C0 & "'", var_E0, -1
  loc_1B2540E:   var_B4 = var_B4.Fields
  loc_1B25416:   var_F0 = var_B8.Item(var_B8)
  loc_1B2541E:   var_BC = var_BC.Value
  loc_1B25428:   MemVar_1F920EC = CDate(var_100)
  loc_1B2546F:   Set var_B4 = Me.Txt
  loc_1B25475:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, "Select Count(*) From KOT Where DocID='", var_E0, -1, var_BC)
  loc_1B25496:   unk_589093.Execute 0 & var_C0 & "'", var_1BC, var_100
  loc_1B2549E:   MemVar_1F920EC = var_BC.Fields
  loc_1B254A6:    = var_B8.Text.Item(var_100)
  loc_1B254AE:    = var_1BC.Value
  loc_1B254DB:   If (var_100 > 0) Then
  loc_1B254E4:     Call Proc_30_100_1186DAC(MemVar_1F92044)
  loc_1B254F7:     Set var_B4 = Me.Txt
  loc_1B254FD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8)
  loc_1B25505:     var_B8.Text = var_C0
  loc_1B25514:   End If
  loc_1B25517: Else
  loc_1B2552B:   var_100 = "Reason"
  loc_1B25547:   global_212 = InputBox("Please Specify, Reason of Editing ?", var_100, var_120, var_140, var_174, var_194, var_1B4)
  loc_1B25580:   If (Trim(global_212) = vbNullString) Then
  loc_1B2559C:     MsgBox("You must Enter a Valid Reason of Editing", 0, var_100, var_120, var_140)
  loc_1B255AC:     Exit Sub
  loc_1B255AD:   End If
  loc_1B255E1:   global_108 = CStr(Me.Fields.Item("DocID").Value)
  loc_1B255F2: End If
  loc_1B255F4: var_8A = &HFF
  loc_1B25600: unk_589093.BeginTrans var_1C0
  loc_1B25609: Set var_B4 = Me.TopCtrl1
  loc_1B2560F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_8A)
  loc_1B25628: If (CStr(var_C0) = "Edit") Then
  loc_1B25681:   unk_589093.Execute CStr("Select * from KOT Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_140, -1
  loc_1B2568C:   Set var_88 = var_BC
  loc_1B256A6:   ' Referenced from: 1B25DB0
  loc_1B256B5:   If Not(var_88.EOF) Then
  loc_1B256E0:     var_A4 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Printed")))
  loc_1B25746:     var_1BC = var_88.Fields
  loc_1B2574E:     var_1C4 = var_1BC.Item("VDate")
  loc_1B25756:     var_1B4 = CVar(var_1C4) 'Address
  loc_1B2575D:     Proc_6_7_F25D88(var_1D4, var_1B4)
  loc_1B2577C:     var_20C = var_88.Fields.Item("vType")
  loc_1B257A3:     var_264 = var_88.Fields.Item("vPrefix")
  loc_1B258DC:     var_57C = var_88.Fields.Item("Item")
  loc_1B25949:     var_670 = var_88.Fields
  loc_1B25961:     var_714 = Now
  loc_1B2596C:     Proc_6_7_F25D88(var_724, var_714, 1)
  loc_1B259D1:     var_808 = var_88.Fields
  loc_1B25A00:     var_874 = var_88.Fields.Item("Amount")
  loc_1B25A27:     var_8CC = var_88.Fields.Item("Reasons")
  loc_1B25A43:     var_950 = var_88.Fields
  loc_1B25A5A:     Proc_6_39_E7C810(var_984, CVar(var_950.Item("FreeSno")))
  loc_1B25ABA:     var_F0 = "Insert Into KOTLog (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,DELFLAG,LogSite_Code,FreeSno,GuarAtt,ItemRestCode) Values ('"
  loc_1B25AF2:     var_22C = var_F0 & var_88.Fields.Item("DocID").Value & "'," & var_88.Fields.Item("VNo").Value & "," & var_1D4 & ",'" & var_20C.Value 
  loc_1B25B35:     var_374 = var_22C & "','" & var_264.Value & "','" & CVar(MemVar_1F92070) & "','" & var_88.Fields.Item("RestCode").Value & "','" & var_88.Fields.Item("RoomCat").Value 
  loc_1B25B65:     var_47C = var_374 & "','" & var_88.Fields.Item("Roomtype").Value & "','" & var_88.Fields.Item("RoomNo").Value & "','" & var_88.Fields.Item("Pending").Value 
  loc_1B25B6E:     var_49C = var_47C & "'," 
  loc_1B25B7E:     var_4F4 = var_49C & var_88.Fields.Item("SNo").Value & ",'" 
  loc_1B25BB5:     var_64C = var_4F4 & Format(Time, "hh:nn") & "','" & var_57C.Value & "'," & var_88.Fields.Item("qty").Value & ",'" & var_88.Fields.Item("VoidYN").Value 
  loc_1B25BE8:     var_734 = var_64C & "','" & var_670.Item("Waiter").Value & "','" & CVar(MemVar_1F920C8) & "'," & var_724 
  loc_1B25BF8:     var_78C = var_734 & ",'" & var_88.Fields.Item("U_AE").Value 
  loc_1B25C38:     var_8EC = var_78C & "','" & var_88.Fields.Item("NCKOT").Value & "'," & var_808.Item("Rate").Value & "," & var_874.Value & ",'" & var_8CC.Value 
  loc_1B25C7B:     var_A44 = var_8EC & "','E','" & CVar(MemVar_1F92078) & "'," & var_984 & "," & var_88.Fields.Item("GuarAtt").Value & ",'" & var_88.Fields.Item("ItemRestcode").Value 
  loc_1B25C92:     unk_589093.Execute CStr(var_A44 & "')"), var_A84, -1
  loc_1B25DAB:     var_88.MoveNext
  loc_1B25DB0:     GoTo loc_1B256A6
  loc_1B25DB3:   End If
  loc_1B25DC0:   var_F0 = "Update KOTLog Set SeqNo=(Select ISNull(Max(SeqNo),0)+1 From KOTLog  Where Docid= '"
  loc_1B25E14:   var_BC = Me.Fields
  loc_1B25E24:   var_140 = var_BC.Item("SearchCode").Value
  loc_1B25E43:   unk_589093.Execute CStr(var_F0 & Me.Fields.Item("SearchCode").Value & "') Where IsNull(SeqNo,0)=0 And Docid= '" & var_140 & "'"), var_1B4, -1
  loc_1B25E80:   If (Me.RecordCount > 0) Then
  loc_1B25ED9:     unk_589093.Execute CStr("Delete From KOT Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_140, -1
  loc_1B25F4B:     unk_589093.Execute CStr("Delete From Stock Where KOTDocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_140, -1
  loc_1B25F96:     var_B8 = Me.Fields.Item("SearchCode")
  loc_1B25F9E:     var_E0 = var_B8.Value
  loc_1B25FB3:     var_C0 = CStr("Delete From Stock Where DocID='" & var_E0 & "'")
  loc_1B25FBD:     unk_589093.Execute var_C0, var_140, -1
  loc_1B25FD9:   End If
  loc_1B25FF7:   Set var_B4 = Me.Txt
  loc_1B25FFD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, "Delete From KOT Where DocID='", var_E0, -1, var_BC)
  loc_1B26005:   var_BC = var_B8.Text
  loc_1B2601E:   unk_589093.Execute var_BC & var_C0 & "'", var_BC, var_1BC
  loc_1B26038: End If
  loc_1B26053: If (Me.ChkNCKOT.Value = 1) Then
  loc_1B2607B:   For var_A8C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_A8C 'Integer
  loc_1B26085:     var_D0 = CVar(CLng(var_92)) 'Long
  loc_1B2608D:     var_110 = CVar(CLng(9)) 'Long
  loc_1B260D6:     If (Ucase(Trim(CVar(CStr(Me.FGrid.TextMatrix))))) = "YES") Then
  loc_1B260DC:       var_A0 = "Y"
  loc_1B260E2:     Else
  loc_1B260E5:       var_A0 = "N"
  loc_1B260E8:     End If
  loc_1B26114:     var_120 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B2613B:     Set var_B8 = Me.FGrid
  loc_1B2614C:     var_C0 = CStr(var_B8.TextMatrix))
  loc_1B2619B:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_C0)) <> CDbl(0)) And (Me.RecordCount > 0)) Then
  loc_1B261AC:       Set var_B4 = Me.Txt
  loc_1B261B2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, CVar(CLng(var_92)), (var_120 <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1B261BA:       var_110 = var_B8.Text
  loc_1B261ED:       var_164 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B26210:       Set var_1BC = Me.Txt
  loc_1B26216:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1C4, var_AB8, var_164, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1B2621E:       var_D0 = var_1C4.Text
  loc_1B2622B:       var_B04 = Val(var_AB8)
  loc_1B26239:       Set var_1F8 = Me.Txt
  loc_1B2623F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_20C, var_B04, 1)
  loc_1B2624E:       Proc_6_7_F25D88(var_120, CVar(var_20C), var_A88)
  loc_1B26261:       Set var_250 = Me.Txt
  loc_1B26267:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_264, var_AC8)
  loc_1B2626F:       1 = var_264.Tag
  loc_1B26278:       var_2D4 = CVar(CLng(var_92)) 'Long
  loc_1B26280:       var_32C = CVar(CLng(&HA)) 'Long
  loc_1B2629F:       var_3A8 = CVar(CLng(var_92)) 'Long
  loc_1B262A7:       var_400 = CVar(CLng(5)) 'Long
  loc_1B262B6:       var_31C = Me.FGrid.TextMatrix)
  loc_1B262F0:       var_B0C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B26321:       var_B14 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B26332:       Proc_6_7_F25D88(var_49C, Date, var_B14, CVar(CLng(8)), CVar(CLng(var_92)), var_B0C, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B2633B:       Set var_398 = Me.TopCtrl1
  loc_1B26341:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_31C)
  loc_1B263A6:       var_84C = CVar(CLng(var_92)) 'Long
  loc_1B263AE:       var_8A4 = CVar(CLng(0)) 'Long
  loc_1B263B7:       Set var_404 = Me.FGrid
  loc_1B263D7:       var_9FC = CVar(CLng(var_92)) 'Long
  loc_1B263DF:       var_A54 = CVar(CLng(1)) 'Long
  loc_1B2640E:       var_148 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,UNIT,QtyIss,Rate,U_Name,U_EntDt,U_AE,KOTDOCID,KOTSNO,DelFlag,LogSite_Code,ItemRestCode) Values ('" & var_C0
  loc_1B26455:       var_ABC = var_148 & "'," & CStr(var_164) & ",'" & global_152 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "',"
  loc_1B264B0:       var_21C = CVar(var_ABC & CStr(var_B04) & ",") & var_120 & ",'" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) 
  loc_1B264FF:       var_3BC = var_21C & "','" & CVar(var_AC8) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_31C)) & "'," & CVar(var_B0C) 
  loc_1B26546:       var_544 = var_3BC & "," & CVar(var_B14) & ",'" & CVar(MemVar_1F920C8) & "'," & var_49C & ",'" & IIf((CStr(var_4F4) = "Add"), "A", "E") 
  loc_1B2657D:       var_63C = var_544 & "','" & Me.Fields.Item("SearchCode").Value & "'," & CVar(Val(CStr(var_404.TextMatrix)))) & ",'" & CVar(var_A0) 
  loc_1B26590:       var_66C = var_63C & "','" & CVar(MemVar_1F92078) 
  loc_1B265B1:       var_AEC = CStr(var_66C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')")
  loc_1B265BB:       unk_589093.Execute var_AEC, var_714, -1
  loc_1B26690:     Else
  loc_1B266BC:       var_120 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B266E3:       Set var_B8 = Me.FGrid
  loc_1B266F4:       var_C0 = CStr(var_B8.TextMatrix))
  loc_1B26722:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_C0)) <> CDbl(0))) Then
  loc_1B26733:         Set var_B4 = Me.Txt
  loc_1B26739:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, CVar(CLng(var_92)), (var_120 <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1B26741:         var_45C = var_B8.Text
  loc_1B2675B:         Set var_BC = Me.FGrid
  loc_1B26774:         var_164 = Val(CStr(var_BC.TextMatrix)))
  loc_1B2677E:         Set var_1B8 = Me.LblVPrefix
  loc_1B26784:         var_AA4 = var_1B8.Caption
  loc_1B26797:         Set var_1BC = Me.Txt
  loc_1B2679D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1C4, var_AB8, var_164, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1B267A5:         var_6A4 = var_1C4.Text
  loc_1B267B2:         var_B04 = Val(var_AB8)
  loc_1B267C0:         Set var_1F8 = Me.Txt
  loc_1B267C6:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_20C, var_B04, var_A54)
  loc_1B267D5:         Proc_6_7_F25D88(var_120, CVar(var_20C), var_9FC)
  loc_1B267E8:         Set var_250 = Me.Txt
  loc_1B267EE:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_264, var_AC8)
  loc_1B267F6:         var_B1C = var_264.Tag
  loc_1B267FF:         var_2D4 = CVar(CLng(var_92)) 'Long
  loc_1B26807:         var_32C = CVar(CLng(&HA)) 'Long
  loc_1B26826:         var_3A8 = CVar(CLng(var_92)) 'Long
  loc_1B2682E:         var_400 = CVar(CLng(5)) 'Long
  loc_1B26837:         Set var_2FC = Me.FGrid
  loc_1B2683D:         var_31C = var_2FC.TextMatrix)
  loc_1B26877:         var_B0C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B268A8:         var_B14 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B268B9:         Proc_6_7_F25D88(var_49C, Date, var_B14, CVar(CLng(8)), CVar(CLng(var_92)), var_B0C, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B268C2:         Set var_398 = Me.TopCtrl1
  loc_1B268C8:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_31C)
  loc_1B268EB:         var_AD4 = CStr(var_4F4)
  loc_1B26903:         var_8A4 = CVar(CLng(var_92)) 'Long
  loc_1B2690B:         var_8FC = CVar(CLng(1)) 'Long
  loc_1B2693A:         var_148 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,UNIT,QtyIss,Rate,U_Name,U_EntDt,U_AE,DelFlag,LogSite_Code,ItemRestCode) Values ('" & var_C0
  loc_1B26941:         var_A90 = var_148 & "',"
  loc_1B2696C:         var_AAC = var_A90 & CStr(var_164) & ",'" & global_152 & "','" & var_AA4
  loc_1B2697A:         var_AB4 = var_AAC & "','" & MemVar_1F92070
  loc_1B2699A:         var_174 = CVar(var_AB4 & "'," & CStr(var_B04) & ",") & var_120 
  loc_1B269EF:         var_274 = var_174 & ",'" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) & "','" & CVar(var_AC8) 
  loc_1B26A3F:         var_414 = var_274 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_31C)) & "'," & CVar(var_B0C) & "," & CVar(var_B14) 
  loc_1B26A85:         var_58C = var_414 & ",'" & CVar(MemVar_1F920C8) & "'," & var_49C & ",'" & IIf((var_AD4 = "Add"), "A", "E") & "','" & CVar(var_A0) 
  loc_1B26AB9:         var_AD8 = CStr(var_58C & "','" & CVar(MemVar_1F92078) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')")
  loc_1B26AC3:         unk_589093.Execute var_AD8, var_66C, -1
  loc_1B26B81:       End If
  loc_1B26B81:     End If
  loc_1B26B84:   Next var_A8C 'Integer
  loc_1B26B8C: Else
  loc_1B26B90:   Set var_B4 = Me.TopCtrl1
  loc_1B26B96:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1B26BAF:   If (CStr() = "Edit") Then
  loc_1B26BC9:     If (Me.RecordCount > 0) Then
  loc_1B26BE0:       var_C0 = "UPDATE KOT SET NCKOT='" & var_9C
  loc_1B26C07:       var_B8 = Me.Fields.Item("SearchCode")
  loc_1B26C2E:       unk_589093.Execute CStr(CVar(var_C0 & "' Where DocID='") & var_B8.Value & "'"), var_174, -1
  loc_1B26C50:     End If
  loc_1B26C50:   End If
  loc_1B26C6E:   Set var_B4 = Me.Txt
  loc_1B26C74:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, "Delete From KOT Where CONTRADocID='")
  loc_1B26C7C:   var_E0 = var_B8.Text
  loc_1B26C85:   var_148 = -1 & var_C0
  loc_1B26C95:   unk_589093.Execute CStr(CVar(var_C0 & "' Where DocID='") & var_B8.Value & "'") & "'", var_BC, var_BC
  loc_1B26CAF: End If
  loc_1B26CD4: For var_B20 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_B20 'Integer
  loc_1B26CF5:   If (Me.ChkNCKOT.Value = 1) Then
  loc_1B26CFC:     Set var_B4 = Me.TopCtrl1
  loc_1B26D02:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(1)
  loc_1B26D1B:     If (CStr() = "Edit") Then
  loc_1B26D22:       var_D0 = CVar(CLng(var_92)) 'Long
  loc_1B26D2A:       var_110 = CVar(CLng(&HA)) 'Long
  loc_1B26D44:       var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B26D71:       Set var_B8 = Me.FGrid
  loc_1B26D82:       var_C0 = CStr(var_B8.TextMatrix))
  loc_1B26DB0:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_C0)) <> CDbl(0))) Then
  loc_1B26DC1:         Set var_B4 = Me.Txt
  loc_1B26DC7:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, CVar(CLng(var_92)))
  loc_1B26DCF:         (Trim(var_100) <> vbNullString) = var_B8.Text
  loc_1B26DE2:         Set var_BC = Me.Txt
  loc_1B26DE8:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1B8, var_A90)
  loc_1B26DF0:         var_110 = var_1B8.Text
  loc_1B26DFD:         var_164 = Val(var_A90)
  loc_1B26E0B:         Set var_1BC = Me.Txt
  loc_1B26E11:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4)
  loc_1B26E19:         var_E0 = CVar(var_1C4) 'Address
  loc_1B26E20:         Proc_6_7_F25D88(var_100, var_E0)
  loc_1B26E45:         Set var_20C = Me.Txt
  loc_1B26E4B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_250, var_AA4)
  loc_1B26E5C:         var_2F8 = CVar(CLng(var_92)) 'Long
  loc_1B26E64:         var_350 = CVar(CLng(0)) 'Long
  loc_1B26E86:         var_B04 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B26E97:         Set var_2E8 = Me.Txt
  loc_1B26E9D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2FC, var_AAC, var_B04)
  loc_1B26EA5:         var_350 = var_2FC.Text
  loc_1B26EAE:         var_434 = CVar(CLng(var_92)) 'Long
  loc_1B26EB6:         var_48C = CVar(CLng(&HA)) 'Long
  loc_1B26EC5:         var_414 = Me.FGrid.TextMatrix)
  loc_1B26EFF:         var_B0C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B26FBB:         var_64C = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Yes"), "Y", "N"))
  loc_1B26FCE:         Set var_3F0 = Me.Txt
  loc_1B26FD4:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_404, var_AB4, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)))
  loc_1B26FEF:         Proc_6_7_F25D88(var_734, Date, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B26FF8:         Set var_448 = Me.TopCtrl1
  loc_1B26FFE:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_414)
  loc_1B27039:         var_A54 = CVar(CLng(var_92)) 'Long
  loc_1B27063:         var_B14 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B27094:         var_B1C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B270C5:         var_112C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B270D8:         var_1130 = Proc_6_38_E68A98(global_212, var_112C, CVar(CLng(8)), CVar(CLng(var_92)), var_B1C, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B270E9:         Set var_568 = Me.Txt
  loc_1B270EF:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_57C, var_AC8, var_B14, CVar(CLng(8)))
  loc_1B270F7:         var_A54 = var_57C.Text
  loc_1B27119:         var_5D4 = Me.Fields.Item("SearchCode")
  loc_1B2712A:         var_C40 = CVar(CLng(var_92)) 'Long
  loc_1B27154:         var_1138 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B27162:         Set var_62C = Me.Txt
  loc_1B27168:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_670, var_1138, CVar(CLng(0)))
  loc_1B271A2:         var_D70 = CVar(CLng(var_92)) 'Long
  loc_1B271AA:         var_D90 = CVar(CLng(&HE)) 'Long
  loc_1B271D3:         var_E10 = CVar(CLng(var_92)) 'Long
  loc_1B271DB:         var_E30 = CVar(CLng(&HB)) 'Long
  loc_1B271F5:         var_AD0 = CStr(Me.FGrid.TextMatrix))
  loc_1B271FD:         var_1140 = Val(var_AD0)
  loc_1B27204:         var_EA0 = CVar(CLng(var_92)) 'Long
  loc_1B2720C:         var_EC0 = CVar(CLng(&HC)) 'Long
  loc_1B27215:         Set var_76C = Me.FGrid
  loc_1B2721B:         var_EE0 = var_76C.TextMatrix)
  loc_1B27242:         var_F70 = Me.FGrid.TextMatrix)
  loc_1B2725C:         Set var_7C4 = Me.Txt
  loc_1B27262:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_808, var_AD4, var_F70, CVar(CLng(6)), CVar(CLng(var_92)), var_EE0)
  loc_1B2726A:         var_EC0 = var_808.Tag
  loc_1B2728A:         var_1040 = Me.FGrid.TextMatrix)
  loc_1B272A4:         Set var_860 = Me.Txt
  loc_1B272AA:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_874, var_AD8, var_1040, CVar(CLng(1)), CVar(CLng(var_92)))
  loc_1B272B2:         var_EA0 = var_874.Text
  loc_1B272BF:         var_1148 = Val(var_AD8)
  loc_1B272D0:         Set var_8B8 = Me.Txt
  loc_1B272D6:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_8CC, var_AEC, var_1148, var_1140)
  loc_1B272DE:         var_E30 = var_8CC.Text
  loc_1B27302:         var_148 = "Insert Into KOT(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,Remarks,ContraDocID,ContraSno,Logsite_Code,NCType,Printed,FreeSno,SchemeCode,Description,Party,ItemRestCode,TokenNo,GuarAtt) " & " Values ('"
  loc_1B2733C:         var_F0 = CVar(global_152) 'String
  loc_1B27343:         var_110 = "','"
  loc_1B27352:         var_1E4 = CVar(var_148 & var_C0 & "'," & CStr(var_250.Tag) & ",") & var_100 & ",'" & var_F0 & var_110 & CVar(Me.LblVPrefix.Caption) 
  loc_1B273A7:         var_2C4 = var_1E4 & "','" & CVar(MemVar_1F92070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) 
  loc_1B273FE:         var_46C = var_2C4 & "','" & CVar(var_AA4) & "','N'," & CVar(var_B04) & ",'" & CVar(var_AAC) & "','" & CVar(CStr(var_414)) & "'," 
  loc_1B2744F:         var_754 = var_46C & CVar(var_404.Tag) & ",'" & var_64C & "','" & CVar(var_AB4) & "','" & CVar(MemVar_1F920C8) & "'," & var_734 
  loc_1B2749E:         var_90C = var_754 & ",'" & IIf((CStr(var_78C) = "Add"), "A", "E") & "','" & CVar(var_9C) & "'," & CVar(var_B14) & "," & CVar((var_B1C * var_112C)) 
  loc_1B274FB:         var_CB0 = var_90C & ",'" & CVar(var_1130) & "','" & CVar(var_AC8) & "','" & var_5D4.Value & "'," & CVar(var_1138) & ",'" & CVar(MemVar_1F92078) 
  loc_1B2751B:         var_DE0 = var_CB0 & "','" & IIf((var_9C = "Y"), Trim(CVar(var_670)), vbNullString) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1B27573:         var_FF0 = var_DE0 & "'," & CVar(var_1140) & ",'" & CVar(CStr(var_EE0)) & "','" & CVar(CStr(var_F70)) & "','" & CVar(var_AD4) & "','" 
  loc_1B2757E:         var_1060 = var_FF0 & CVar(CStr(var_1040)) 
  loc_1B275BD:         unk_589093.Execute CStr(var_1060 & "'," & CVar(var_1148) & "," & CVar(Val(var_AEC)) & ")"), var_1124, -1
  loc_1B27735:       End If
  loc_1B27738:     Else
  loc_1B2773C:       var_D0 = CVar(CLng(var_92)) 'Long
  loc_1B27744:       var_110 = CVar(CLng(&HA)) 'Long
  loc_1B2775E:       var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B2778B:       Set var_B8 = Me.FGrid
  loc_1B2779C:       var_C0 = CStr(var_B8.TextMatrix))
  loc_1B277CA:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_C0)) <> CDbl(0))) Then
  loc_1B277DB:         Set var_B4 = Me.Txt
  loc_1B277E1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, CVar(CLng(var_92)), (Trim(var_100) <> vbNullString), var_110)
  loc_1B277FC:         Set var_BC = Me.Txt
  loc_1B27802:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1B8, var_A90, var_950)
  loc_1B2780A:         var_1150 = var_1B8.Text
  loc_1B27817:         var_164 = Val(var_A90)
  loc_1B27825:         Set var_1BC = Me.Txt
  loc_1B2782B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4, var_164)
  loc_1B27833:         var_E0 = CVar(var_1C4) 'Address
  loc_1B2783A:         Proc_6_7_F25D88(var_100, var_E0, var_E10)
  loc_1B2785F:         Set var_20C = Me.Txt
  loc_1B27865:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_250, var_AA4)
  loc_1B2786D:         var_D90 = var_250.Tag
  loc_1B27876:         var_2F8 = CVar(CLng(var_92)) 'Long
  loc_1B2787E:         var_350 = CVar(CLng(0)) 'Long
  loc_1B278A0:         var_B04 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B278B1:         Set var_2E8 = Me.Txt
  loc_1B278B7:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2FC, var_AAC, var_B04)
  loc_1B278BF:         var_350 = var_2FC.Text
  loc_1B278C8:         var_434 = CVar(CLng(var_92)) 'Long
  loc_1B278DF:         var_414 = Me.FGrid.TextMatrix)
  loc_1B27919:         var_B0C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B279D5:         var_64C = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Yes"), "Y", "N"))
  loc_1B279E8:         Set var_3F0 = Me.Txt
  loc_1B279EE:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_404, var_AB4, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)))
  loc_1B27A09:         Proc_6_7_F25D88(var_734, Date, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B27A12:         Set var_448 = Me.TopCtrl1
  loc_1B27A18:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_414)
  loc_1B27A53:         var_A54 = CVar(CLng(var_92)) 'Long
  loc_1B27A7D:         var_B14 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B27AAE:         var_B1C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B27ADF:         var_112C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B27AF2:         var_1104 = Proc_6_38_E68A98(global_212, var_112C, CVar(CLng(8)), CVar(CLng(var_92)), var_B1C, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B27B03:         Set var_568 = Me.Txt
  loc_1B27B09:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_57C, var_AC8, var_B14, CVar(CLng(8)))
  loc_1B27B11:         var_A54 = var_57C.Text
  loc_1B27B21:         Set var_5C0 = Me.Txt
  loc_1B27B27:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_5D4, CVar(CLng(&HA)))
  loc_1B27B61:         var_C70 = CVar(CLng(var_92)) 'Long
  loc_1B27B69:         var_C90 = CVar(CLng(&HE)) 'Long
  loc_1B27B92:         var_D00 = CVar(CLng(var_92)) 'Long
  loc_1B27B9A:         var_D50 = CVar(CLng(&HB)) 'Long
  loc_1B27BBC:         var_1138 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B27BC3:         var_DA0 = CVar(CLng(var_92)) 'Long
  loc_1B27BCB:         var_E10 = CVar(CLng(&HC)) 'Long
  loc_1B27BDA:         var_DD0 = Me.FGrid.TextMatrix)
  loc_1B27C01:         var_E70 = Me.FGrid.TextMatrix)
  loc_1B27C1B:         Set var_758 = Me.Txt
  loc_1B27C21:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_76C, var_AD0, var_E70, CVar(CLng(6)), CVar(CLng(var_92)), var_DD0)
  loc_1B27C29:         var_E10 = var_76C.Tag
  loc_1B27C49:         var_F80 = Me.FGrid.TextMatrix)
  loc_1B27C63:         Set var_7C4 = Me.Txt
  loc_1B27C69:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_808, var_AD4, var_F80, CVar(CLng(1)), CVar(CLng(var_92)))
  loc_1B27C71:         var_DA0 = var_808.Text
  loc_1B27C7E:         var_1140 = Val(var_AD4)
  loc_1B27C8F:         Set var_81C = Me.Txt
  loc_1B27C95:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_860, var_AD8, var_1140, var_1138)
  loc_1B27C9D:         var_D50 = var_860.Text
  loc_1B27CC1:         var_148 = "Insert Into KOT(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,Remarks,Logsite_Code,NCType,Printed,FreeSno,SchemeCode,Description,Party,ItemRestCode,TokenNo,GuarAtt) " & " Values ('"
  loc_1B27CFB:         var_F0 = CVar(global_152) 'String
  loc_1B27D02:         var_110 = "','"
  loc_1B27D11:         var_1E4 = CVar(var_148 & var_C0 & "'," & CStr(var_164) & ",") & var_100 & ",'" & var_F0 & var_110 & CVar(Me.LblVPrefix.Caption) 
  loc_1B27D66:         var_2C4 = var_1E4 & "','" & CVar(MemVar_1F92070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) 
  loc_1B27DBD:         var_46C = var_2C4 & "','" & CVar(var_AA4) & "','N'," & CVar(var_B04) & ",'" & CVar(var_AAC) & "','" & CVar(CStr(var_414)) & "'," 
  loc_1B27E0E:         var_754 = var_46C & CVar(var_404.Tag) & ",'" & var_64C & "','" & CVar(var_AB4) & "','" & CVar(MemVar_1F920C8) & "'," & var_734 
  loc_1B27E5D:         var_90C = var_754 & ",'" & IIf((CStr(var_78C) = "Add"), "A", "E") & "','" & CVar(var_9C) & "'," & CVar(var_B14) & "," & CVar((var_B1C * var_112C)) 
  loc_1B27EA6:         var_CB0 = var_90C & ",'" & CVar(var_1104) & "','" & CVar(var_AC8) & "','" & CVar(MemVar_1F92078) & "','" & IIf((var_9C = "Y"), Trim(CVar(var_5D4)), vbNullString) 
  loc_1B27EE7:         var_E50 = var_CB0 & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar(var_1138) & ",'" & CVar(CStr(var_DD0)) & "','" 
  loc_1B27F41:         var_1040 = var_E50 & CVar(CStr(var_E70)) & "','" & CVar(var_AD0) & "','" & CVar(CStr(var_F80)) & "'," & CVar(var_1140) & "," & CVar(Val(var_AD8)) 
  loc_1B27F58:         unk_589093.Execute CStr(var_1040 & ")"), var_1060, -1
  loc_1B280BC:       End If
  loc_1B280BC:     End If
  loc_1B280BF:   Else
  loc_1B280C3:     var_D0 = CVar(CLng(var_92)) 'Long
  loc_1B280CB:     var_110 = CVar(CLng(&HA)) 'Long
  loc_1B280E5:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B28112:     Set var_B8 = Me.FGrid
  loc_1B28123:     var_C0 = CStr(var_B8.TextMatrix))
  loc_1B28151:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_C0)) <> CDbl(0))) Then
  loc_1B28162:       Set var_B4 = Me.Txt
  loc_1B28168:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, CVar(CLng(var_92)), (Trim(var_100) <> vbNullString), var_110)
  loc_1B28170:       var_D0 = var_B8.Text
  loc_1B28183:       Set var_BC = Me.Txt
  loc_1B28189:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1B8, var_A90, var_874)
  loc_1B28191:       var_1148 = var_1B8.Text
  loc_1B2819E:       var_164 = Val(var_A90)
  loc_1B281AC:       Set var_1BC = Me.Txt
  loc_1B281B2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4, var_164)
  loc_1B281BA:       var_E0 = CVar(var_1C4) 'Address
  loc_1B281C1:       Proc_6_7_F25D88(var_100, var_E0, var_D00)
  loc_1B281CD:       Set var_1F8 = Me.LblVPrefix
  loc_1B281E6:       Set var_20C = Me.Txt
  loc_1B281EC:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_250, var_AA4)
  loc_1B281F4:       var_C90 = var_250.Tag
  loc_1B281FD:       var_2F8 = CVar(CLng(var_92)) 'Long
  loc_1B28205:       var_350 = CVar(CLng(0)) 'Long
  loc_1B28227:       var_B04 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B28238:       Set var_2E8 = Me.Txt
  loc_1B2823E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2FC, var_AAC, var_B04)
  loc_1B28246:       var_350 = var_2FC.Text
  loc_1B2824F:       var_434 = CVar(CLng(var_92)) 'Long
  loc_1B28266:       var_414 = Me.FGrid.TextMatrix)
  loc_1B282A0:       var_B0C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B2835C:       var_64C = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Yes"), "Y", "N"))
  loc_1B2836F:       Set var_3F0 = Me.Txt
  loc_1B28375:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_404, var_AB4, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)))
  loc_1B28390:       Proc_6_7_F25D88(var_734, Date, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B28399:       Set var_448 = Me.TopCtrl1
  loc_1B2839F:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_414)
  loc_1B283DA:       var_A54 = CVar(CLng(var_92)) 'Long
  loc_1B28404:       var_B14 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B28435:       var_B1C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B28466:       var_112C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B28479:       var_1104 = Proc_6_38_E68A98(global_212, var_112C, CVar(CLng(8)), CVar(CLng(var_92)), var_B1C, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B2848A:       Set var_568 = Me.Txt
  loc_1B28490:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_57C, var_AC8, var_B14, CVar(CLng(8)))
  loc_1B28498:       var_A54 = var_57C.Text
  loc_1B284A8:       Set var_5C0 = Me.Txt
  loc_1B284AE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_5D4, CVar(CLng(&HA)))
  loc_1B284E8:       var_C70 = CVar(CLng(var_92)) 'Long
  loc_1B284F0:       var_C90 = CVar(CLng(&HE)) 'Long
  loc_1B28519:       var_D00 = CVar(CLng(var_92)) 'Long
  loc_1B28521:       var_D50 = CVar(CLng(&HB)) 'Long
  loc_1B28543:       var_1138 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B2854A:       var_DA0 = CVar(CLng(var_92)) 'Long
  loc_1B28552:       var_E10 = CVar(CLng(&HC)) 'Long
  loc_1B28561:       var_DD0 = Me.FGrid.TextMatrix)
  loc_1B28588:       var_E70 = Me.FGrid.TextMatrix)
  loc_1B285A2:       Set var_758 = Me.Txt
  loc_1B285A8:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_76C, var_AD0, var_E70, CVar(CLng(6)), CVar(CLng(var_92)), var_DD0)
  loc_1B285B0:       var_E10 = var_76C.Tag
  loc_1B285D0:       var_F80 = Me.FGrid.TextMatrix)
  loc_1B285EA:       Set var_7C4 = Me.Txt
  loc_1B285F0:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_808, var_AD4, var_F80, CVar(CLng(1)), CVar(CLng(var_92)))
  loc_1B285F8:       var_DA0 = var_808.Text
  loc_1B28605:       var_1140 = Val(var_AD4)
  loc_1B28616:       Set var_81C = Me.Txt
  loc_1B2861C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_860, var_AD8, var_1140, var_1138)
  loc_1B28624:       var_D50 = var_860.Text
  loc_1B28648:       var_148 = "Insert Into KOT(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,Remarks,Logsite_Code,NCType,Printed,FreeSno,SchemeCode,Description,Party,ItemRestCode,TokenNo,GuarAtt) " & " Values ('"
  loc_1B2865E:       var_A98 = CStr(var_164)
  loc_1B28682:       var_F0 = CVar(global_152) 'String
  loc_1B28689:       var_110 = "','"
  loc_1B28695:       var_1D4 = CVar(var_1F8.Caption) 'String
  loc_1B286AB:       var_21C = CVar(var_148 & var_C0 & "'," & var_A98 & ",") & var_100 & ",'" & var_F0 & var_110 & var_1D4 & "','" & CVar(MemVar_1F92070) 
  loc_1B28700:       var_31C = var_21C & "','" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) & "','" & CVar(var_AA4) 
  loc_1B28758:       var_4C4 = var_31C & "','Y'," & CVar(var_B04) & ",'" & CVar(var_AAC) & "','" & CVar(CStr(var_414)) & "'," & CVar(var_404.Tag) & ",'" 
  loc_1B287A5:       var_804 = var_4C4 & var_64C & "','" & CVar(var_AB4) & "','" & CVar(MemVar_1F920C8) & "'," & var_734 & ",'" & IIf((CStr(var_78C) = "Add"), "A", "E") 
  loc_1B28800:       var_984 = var_804 & "','" & CVar(var_9C) & "'," & CVar(var_B14) & "," & CVar((var_B1C * var_112C)) & ",'" & CVar(var_1104) & "','" 
  loc_1B2882D:       var_CB0 = var_984 & CVar(var_AC8) & "','" & CVar(MemVar_1F92078) & "','" & IIf((var_9C = "Y"), Trim(CVar(var_5D4)), vbNullString) 
  loc_1B28879:       var_EE0 = var_CB0 & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'," & CVar(var_1138) & ",'" & CVar(CStr(var_DD0)) & "','" & CVar(CStr(var_E70)) 
  loc_1B288D1:       var_1050 = var_EE0 & "','" & CVar(var_AD0) & "','" & CVar(CStr(var_F80)) & "'," & CVar(var_1140) & "," & CVar(Val(var_AD8)) & ")" 
  loc_1B288DF:       unk_589093.Execute CStr(var_1050), var_1060, -1
  loc_1B28A43:     End If
  loc_1B28A43:   End If
  loc_1B28A46: Next var_B20 'Integer
  loc_1B28A4F: Set var_B4 = Me.TopCtrl1
  loc_1B28A55: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1B28A6E: If (CStr() = "Add") Then
  loc_1B28A85:   var_C0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1B28AAB:   var_120 = CVar(var_C0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_152 & "' And VP.Date_From<=") 'String
  loc_1B28ABC:   Set var_B4 = Me.Txt
  loc_1B28AC2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8, var_A98, var_120)
  loc_1B28ACA:   var_194 = var_B8.Text
  loc_1B28AD2:   var_E0 = CVar(var_A98) 'String
  loc_1B28AD8:   Proc_6_7_F25D88(var_100, var_E0)
  loc_1B28AE0:   var_140 = -1 & var_100 
  loc_1B28AF7:   unk_589093.Execute CStr(CVar(var_C0 & "' AND VP.LOGSITE_CODE='" & var_C0 & "'," & var_A98 & ",") & var_100 & " Order By VP.Date_From DESC"), var_BC, 
  loc_1B28B02:   Set var_88 = var_BC
  loc_1B28B40:   If (var_88.RecordCount > 0) Then
  loc_1B28B51:     Set var_B4 = Me.Txt
  loc_1B28B57:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_B8)
  loc_1B28B5F:     var_C0 = var_B8.Text
  loc_1B28BA7:     var_A9C = "Update Depart Set CurTokenNoKOT=" & CStr(Val(var_C0)) & " Where Logsite_Code='" & MemVar_1F92078 & "'And code='" & LocalRestCode
  loc_1B28BB7:     unk_589093.Execute var_A9C & "'", var_E0, -1
  loc_1B28BE9:     Set var_B4 = Me.Txt
  loc_1B28BEF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B8, var_C0)
  loc_1B28BF7:     var_BC = var_B8.Text
  loc_1B28C04:     var_164 = Val(var_C0)
  loc_1B28C19:     var_BC = var_88.Fields
  loc_1B28C29:     var_E0 = var_BC.Item("V_Type").Value
  loc_1B28C54:     Proc_6_7_F25D88(var_194, CVar(var_88.Fields.Item("Date_From")))
  loc_1B28C79:     var_A90 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_164) & " Where (SITE_CODE='"
  loc_1B28CA4:     var_140 = CVar(var_A90 & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='") & var_E0 & "' and Date_From=" 
  loc_1B28CB9:     unk_589093.Execute CStr(var_140 & var_194), var_1D4, -1
  loc_1B28CF3:   End If
  loc_1B28CF3: End If
  loc_1B28CF7: Set var_B4 = Me.TopCtrl1
  loc_1B28CFD: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_1F8)
  loc_1B28D16: If (CStr(var_164) = "Add") Then
  loc_1B28D3C:   var_C0 = "SELECT COUNT(*) FROM LASTVOU WHERE lOGSITE_CODE='" & MemVar_1F92078
  loc_1B28D51:   var_A94 = var_C0 & "' AND UNAME='" & MemVar_1F920C8 & "' AND ENAME='"
  loc_1B28D5A:   Call 0.Method_arg_50 (var_A90, var_A94, var_E0, -1, var_B4)
  loc_1B28D73:   unk_589093.Execute var_B8 & var_A90 & "' ", 0, var_BC
  loc_1B28D7B:   var_100 = var_B4.Fields
  loc_1B28D83:    = var_B8.Item(var_164)
  loc_1B28D8B:    = var_BC.Value
  loc_1B28DBC:   If (var_100 > 0) Then
  loc_1B28DDD:     Set var_B4 = Me.Txt
  loc_1B28DE3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_C0, "UPDATE LASTVOU  SET DOCID='")
  loc_1B28DEB:     var_E0 = var_B8.Text
  loc_1B28DF4:     var_148 = -1 & var_C0
  loc_1B28E12:     Call 0.Method_arg_50 (var_A94, var_C0 & "' AND UNAME='" & "' WHERE UNAME='" & MemVar_1F920C8 & "' AND ENAME='")
  loc_1B28E2B:     unk_589093.Execute var_BC & var_A94 & "'  ", , 
  loc_1B28E52:   Else
  loc_1B28E76:     Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "' AND UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "','", var_1D4)
  loc_1B28E7F:     var_A90 = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "' AND UNAME='"
  loc_1B28E86:     var_A98 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "' AND UNAME='" & "' WHERE UNAME='" & MemVar_1F920C8 & "','"
  loc_1B28E97:     Set var_B4 = Me.Txt
  loc_1B28E9D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8, var_A94)
  loc_1B28EA5:     var_A98 = var_B8.Text
  loc_1B28EC3:     var_120 = CVar(var_BC & var_A94 & "','" & MemVar_1F92070 & "',") 'String
  loc_1B28EC9:     var_E0 = Date
  loc_1B28ED4:     Proc_6_7_F25D88(var_100, var_E0)
  loc_1B28EDC:     var_140 = var_120 & var_100 
  loc_1B28EE0:     var_D0 = ",'A','"
  loc_1B28F06:     unk_589093.Execute CStr(var_140 & var_D0 & CVar(MemVar_1F92078) & "')"), , 
  loc_1B28F3E:   End If
  loc_1B28F3E: End If
  loc_1B28F44: unk_589093.CommitTrans
  loc_1B28F4B: var_8A = 0
  loc_1B28F5C: Set var_B4 = Me.Txt
  loc_1B28F62: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_B8)
  loc_1B28F7E: var_8A = 0
  loc_1B28F8C: Me.Requery -1
  loc_1B28FA8: If (Me.RecordCount > 0) Then
  loc_1B28FC6:   If (Me.ChkNCKOT.Value <> 1) Then
  loc_1B28FEE:     Me.Find "SearchCode ='" & var_B8.Text & "'", 0, 1
  loc_1B28FFD:   Else
  loc_1B29003:     Me.MoveLast
  loc_1B29008:   End If
  loc_1B29008: End If
  loc_1B2900C: Set var_B4 = Me.TopCtrl1
  loc_1B29012: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_D0)
  loc_1B2902B: If (CStr(var_8A) = "Edit") Then
  loc_1B29030:   var_A6 = &HFF
  loc_1B29033: End If
  loc_1B29049: unk_589093.Execute "SELECT KOTPrintEdited FROM Enviro", var_E0, -1
  loc_1B29080: Call Proc_30_97_1011740(Proc_5_1_100CB50("INI", Me, global_88), Me)
  loc_1B2908B: Call Proc_30_94_17A0CD8(var_A6)
  loc_1B290A7: If (Me.RecordCount > 0) Then
  loc_1B290EB:   If Not((var_8A And (Proc_6_38_E68A98(CVar(var_B4.Fields.Fields.Item("KOTPrintEdited")), (var_A6 = &HFF)) = "No Print"))) Then
  loc_1B29125:     If (MsgBox("Print KOT ?", &H24, "Print", var_120, var_140) = 6) Then
  loc_1B2915A:       Proc_260_21_1E6A5E0(CStr(Me.Fields.Item("SearchCode").Value))
  loc_1B2916C:     End If
  loc_1B2916C:   End If
  loc_1B2916C: End If
  loc_1B291AD: Call KOTMessage(CStr(Me.Fields.Item("SearchCode").Value), "KOT Message", LocalRestCode)
  loc_1B291C8: Set var_88 = Nothing
  loc_1B291D0: Set var_AC = Nothing
  loc_1B291E2: Me.FGrid1.Visible = False
  loc_1B291F6: Me.LblPendingKot.Visible = False
  loc_1B291FE: Exit Sub
  loc_1B291FF: ' Referenced from: 1B24BE4
  loc_1B29205: If (var_8A = &HFF) Then
  loc_1B2920E:   unk_589093.RollbackTrans
  loc_1B29213: End If
  loc_1B29213: Proc_6_60_E62BC4()
  loc_1B29218: Exit Sub
End Sub

Private Sub Timer2_Timer() '1017E20
  'Data Table: 589074
  Dim var_88 As Variant
  Dim var_A0 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  loc_1017C04: Set var_88 = Me.TopCtrl1
  loc_1017C0A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1017C1E: Set var_A0 = Me.TopCtrl1
  loc_1017C24: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005((CStr() = "Edit"))
  loc_1017C4A: If ( Or (CStr() = "Add")) Then
  loc_1017C58:   If (global_276 = "Go") Then
  loc_1017C67:     Me.FrmeDisc.Visible = True
  loc_1017C79:     Me.txtDisc.SetFocus
  loc_1017C97:     Me.FrmeDisc.Width = CDbl((global_270 * 480))
  loc_1017CB4:     Me.FrmeDisc.Height = CDbl((global_270 * &H3C))
  loc_1017CCA:     If ((global_270 * 250) > 2700) Then
  loc_1017CD9:       Me.Timer2.Enabled = False
  loc_1017CE7:       global_276 = vbNullString
  loc_1017CEB:     End If
  loc_1017CF7:     global_270 = (global_270 + 1)
  loc_1017CFA:   End If
  loc_1017D05:   If (global_276 = "Back") Then
  loc_1017D14:     global_270 = (global_270 - 1)
  loc_1017D2D:     Me.FrmeDisc.Width = CDbl((global_270 * 480))
  loc_1017D4A:     Me.FrmeDisc.Height = CDbl((global_270 * &H3C))
  loc_1017D5B:     If (global_270 = 0) Then
  loc_1017D71:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1017D79:       var_E4 = CVar(CLng(6)) 'Long
  loc_1017D93:       var_B0 = CVar(Me.txtDisc.Text) 'String
  loc_1017D9B:       Set var_108 = Me.FGrid
  loc_1017DA1:       LateIdCallSt
  loc_1017DCF:       Me.FGrid.Col = CVar(CLng(global_272))
  loc_1017DDB:       Set var_88 = Me.FGrid
  loc_1017DF8:       Me.Timer2.Enabled = False
  loc_1017E06:       global_276 = vbNullString
  loc_1017E16:       Me.FrmeDisc.Visible = False
  loc_1017E1E:     End If
  loc_1017E1E:   End If
  loc_1017E1E: End If
  loc_1017E1E: Exit Sub
End Sub

Private Sub ChkNCKOT_Click() '11E42F4
  'Data Table: 589074
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_D8 As Integer
  Dim var_B4 As String
  Dim unk_589093 As Connection15
  Dim var_DC As Field20
  Dim var_88 As Recordset15
  loc_11E3E98: Set var_8C = Me.TopCtrl1
  loc_11E3E9E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_11E3EB7: If (CStr() = "Browse") Then
  loc_11E3EBA:   Exit Sub
  loc_11E3EBB: End If
  loc_11E3ED6: If (Me.ChkNCKOT.Value = 1) Then
  loc_11E3EE7:   Set var_8C = Me.Txt
  loc_11E3EED:   Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_A8)
  loc_11E3F07:   If (var_A8.Visible = 0) Then
  loc_11E3F17:     Set var_8C = Me.Txt
  loc_11E3F1D:     Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_A8)
  loc_11E3F25:     var_A8.Visible = True
  loc_11E3F3C:     Set var_8C = Me.Label1
  loc_11E3F42:     Call 0.Method_ChkNCKOT_Click0 (4, var_A8)
  loc_11E3F4A:     var_A8.Visible = True
  loc_11E3F56:   End If
  loc_11E3F71:   var_AC = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_11E3F88:   var_D8 = 0
  loc_11E3FA8:   var_B4 = "Select 'N'+ ShortName From Depart Where Code='" & LocalRestCode
  loc_11E3FB8:   unk_589093.Execute var_B4 & "'", var_9C, -1
  loc_11E3FC0:   var_8C = var_8C.Fields
  loc_11E3FC8:   var_D8 = var_A8.Item(var_A8)
  loc_11E3FD0:   var_DC = var_DC.Value
  loc_11E3FEF:   unk_589093.Execute CStr(var_EC & var_EC & "' Order by Description"), CVar(var_AC & MemVar_1F92078 & "') AND V_Type='"), var_150
  loc_11E3FFA:   Set var_88 = var_154
  loc_11E403A:   If (var_88.RecordCount > 0) Then
  loc_11E4057:     var_A8 = var_88.Fields.Item(0)
  loc_11E405F:     var_9C = var_A8.Value
  loc_11E4068:     var_A0 = CStr(var_9C)
  loc_11E406E:     global_152 = var_A0
  loc_11E4085:     Call Proc_30_100_1186DAC(MemVar_1F92044, var_A0)
  loc_11E4098:     Set var_8C = Me.Txt
  loc_11E409E:     Call 0.Method_ChkNCKOT_Click0 (CInt(3), var_A8, var_A0)
  loc_11E40A6:     var_A8.Text = -1
  loc_11E40C2:     Me.LblKotNm.Caption = "NC Kot"
  loc_11E40D2:     Set var_8C = Me.cmdNCBill
  loc_11E40D8:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(True)
  loc_11E40E0:   End If
  loc_11E40E3: Else
  loc_11E40F1:   Set var_8C = Me.Txt
  loc_11E40F7:   Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_A8)
  loc_11E4111:   If (var_A8.Visible = &HFF) Then
  loc_11E4121:     Set var_8C = Me.Txt
  loc_11E4127:     Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_A8)
  loc_11E412F:     var_A8.Visible = False
  loc_11E4146:     Set var_8C = Me.Label1
  loc_11E414C:     Call 0.Method_ChkNCKOT_Click0 (4, var_A8)
  loc_11E4154:     var_A8.Visible = False
  loc_11E4160:   End If
  loc_11E417B:   var_AC = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_11E4192:   var_D8 = 0
  loc_11E41B2:   var_B4 = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_11E41C2:   unk_589093.Execute var_B4 & "'", var_9C, -1
  loc_11E41CA:   var_8C = var_8C.Fields
  loc_11E41D2:   var_D8 = var_A8.Item(var_A8)
  loc_11E41DA:   var_DC = var_DC.Value
  loc_11E41F9:   unk_589093.Execute CStr(var_EC & var_EC & "' Order by Description"), CVar(var_AC & MemVar_1F92078 & "') AND V_Type='"), var_150
  loc_11E4204:   Set var_88 = var_154
  loc_11E4244:   If (var_88.RecordCount > 0) Then
  loc_11E4261:     var_A8 = var_88.Fields.Item(0)
  loc_11E4272:     var_A0 = CStr(var_A8.Value)
  loc_11E4278:     global_152 = var_A0
  loc_11E428F:     Call Proc_30_100_1186DAC(MemVar_1F92044, var_A0, -1)
  loc_11E42A2:     Set var_8C = Me.Txt
  loc_11E42A8:     Call 0.Method_ChkNCKOT_Click0 (CInt(3), var_A8, var_A0)
  loc_11E42B0:     var_A8.Text = var_154
  loc_11E42CC:     Me.LblKotNm.Caption = "Standard Kot"
  loc_11E42DD:     Set var_8C = Me.cmdNCBill
  loc_11E42E3:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_11E42EB:   End If
  loc_11E42EB: End If
  loc_11E42F0: Set var_88 = Nothing
  loc_11E42F3: Exit Sub
End Sub

Private Sub CmdTabeSt_UnknownEvent_9 'E58E04
  'Data Table: 589074
  Dim var_9C As Variant
  Dim var_8A As Integer
  loc_E58DC8: Set var_88 = New RsPOSDisplayNew
  loc_E58DD8: var_88.LocalRestCode = CVar(LocalRestCode)
  loc_E58DE8: var_88.OpenMode = 1
  loc_E58DEC: var_9C = 1
  loc_E58DF8: Call var_88.Show
  loc_E58E00: var_8A = &HFF
  loc_E58E03: Exit Sub
End Sub

Private Sub DGWaiter_UnknownEvent_9 'F53CF0
  'Data Table: 589074
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F53BD0: On Error Goto loc_F53CEA
  loc_F53BE2: Me.DGWaiter.Visible = False
  loc_F53C01: If (Me.RecordCount > 0) Then
  loc_F53C40:   Set var_B4 = Me.Txt
  loc_F53C46:   Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(5), var_B8)
  loc_F53C4E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F53C81:   var_B0 = Me.Fields.Item("Code")
  loc_F53CA0:   Set var_B4 = Me.Txt
  loc_F53CA6:   Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(5), var_B8)
  loc_F53CAE:   var_B8.Tag = CStr(var_B0.Value)
  loc_F53CC4: End If
  loc_F53CCF: Set var_A8 = Me.Txt
  loc_F53CD5: Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(5))
  loc_F53CDD: var_B0.SetFocus
  loc_F53CE9: Exit Sub
  loc_F53CEA: ' Referenced from: F53BD0
  loc_F53CEA: Proc_6_60_E62BC4(var_B0)
  loc_F53CEF: Exit Sub
End Sub

Private Sub DGWaiter_UnknownEvent_1F 'E74134
  'Data Table: 589074
  loc_E740F2: Proc_6_153_E91194(Me.DGWaiter, arg_14)
  loc_E74109: Set var_8C = Me.FGPoint
  loc_E74125: Proc_6_138_106D6F8(Me.DGWaiter, global_92, CInt(5))
  loc_E74133: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12F3D74
  'Data Table: 589074
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_88 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_12F3696: Set var_88 = Me.TxtGrid
  loc_12F369C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_12F36AA: Proc_6_74_E226B0(var_8C)
  loc_12F36B6: Call Proc_30_98_F6DC1C(var_8C)
  loc_12F36C9: Set var_88 = Me.TxtGrid
  loc_12F36CF: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12F36D7: var_8C.MaxLength = 0
  loc_12F36EF: If (Index = 0) Then
  loc_12F3708:   Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_12F3723:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F3762:   Set var_108 = Me.TxtGrid
  loc_12F3768:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12F3770:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_12F37A1:   var_114 = CLng(Me.FGrid.Col)
  loc_12F37B1:   If (var_114 = CLng(3)) Then
  loc_12F3812:     If CBool(Not (Me.Fields.Item("MultiBillGeneration").Value = "Yes") And (global_232 = "Yes")) Then
  loc_12F382B:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F383C:       Set var_8C = Me.FGrid
  loc_12F3862:       Me.Filter = CVar(CVar(CLng(1)) & CStr(var_8C.TextMatrix)) & "'")
  loc_12F387E:     End If
  loc_12F388C:     Set var_88 = Me.TxtGrid
  loc_12F3892:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, 4, var_A4)
  loc_12F389A:     var_8C.MaxLength = "OutletCode='"
  loc_12F38A9:   Else
  loc_12F38B0:     If (var_114 = CLng(4)) Then
  loc_12F38D6:       Proc_6_137_1193554(Me.DGItem, global_84, Index, Me.FGPoint)
  loc_12F3942:       If CBool(Not (Me.Fields.Item("MultiBillGeneration").Value = "Yes") And (global_232 = "Yes")) Then
  loc_12F395B:         var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F3992:         Me.Filter = CVar(CVar(CLng(1)) & CStr(Me.FGrid.TextMatrix)) & "'")
  loc_12F39AE:       End If
  loc_12F39C5:       If (Me.RecordCount > 0) Then
  loc_12F39EB:         Proc_6_137_1193554(Me.DGItem, global_84, Index, Me.FGPoint, var_A4)
  loc_12F39F9:       End If
  loc_12F3A02:       var_12C = Me.RecordCount
  loc_12F3A19:       var_12E = Me.EOF
  loc_12F3A2D:       var_130 = Me.BOF
  loc_12F3A4D:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F3A89:       If (CVar(CLng(&HA)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_12F3A8C:         Exit Sub
  loc_12F3A8D:       End If
  loc_12F3A93:       Me.MoveFirst
  loc_12F3AAB:       var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F3AB3:       var_E4 = CVar(CLng(&HA)) 'Long
  loc_12F3ABC:       Set var_8C = Me.FGrid
  loc_12F3AC2:       var_D4 = var_8C.TextMatrix)
  loc_12F3AF7:       Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_12F3B27:       If (Me.EOF = &HFF) Then
  loc_12F3B30:         Me.MoveFirst
  loc_12F3B35:       End If
  loc_12F3B3E:       CVarUnk
  loc_12F3B43:       VerifyVarObj
  loc_12F3B49:       Set var_88 = Me.DGItem
  loc_12F3B4F:       LateIdStAd
  loc_12F3B60:     Else
  loc_12F3B67:       If (var_114 = CLng(7)) Then
  loc_12F3B7F:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, Me.TxtGrid, global_84, var_144, var_D4)
  loc_12F3B87:         var_8C.MaxLength = var_E4
  loc_12F3B9C:         If (global_126 = 0) Then
  loc_12F3BA7:           var_110 = "{Home}+{End}"
  loc_12F3BAD:           Proc_303_0_FB9B68(CStr(var_D4), 0, var_A4, var_A4)
  loc_12F3BB5:         End If
  loc_12F3BB8:       Else
  loc_12F3BBF:         If (var_114 = CLng(2)) Then
  loc_12F3BD9:           If (Me.RecordCount > 0) Then
  loc_12F3BFF:             Proc_6_137_1193554(Me.DGRest, global_100, Index, Me.FGPoint)
  loc_12F3C0D:           End If
  loc_12F3C16:           var_12C = Me.RecordCount
  loc_12F3C2D:           var_12E = Me.EOF
  loc_12F3C41:           var_130 = Me.BOF
  loc_12F3C61:           var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F3C9D:           If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_12F3CA0:             Exit Sub
  loc_12F3CA1:           End If
  loc_12F3CA7:           Me.MoveFirst
  loc_12F3CBF:           var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F3CC7:           var_E4 = CVar(CLng(1)) 'Long
  loc_12F3D0B:           Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_12F3D3B:           If (Me.EOF = &HFF) Then
  loc_12F3D44:             Me.MoveFirst
  loc_12F3D49:           End If
  loc_12F3D52:           CVarUnk
  loc_12F3D57:           VerifyVarObj
  loc_12F3D5D:           Set var_88 = Me.DGRest
  loc_12F3D63:           LateIdStAd
  loc_12F3D71:         End If
  loc_12F3D71:       End If
  loc_12F3D71:     End If
  loc_12F3D71:   End If
  loc_12F3D71: End If
  loc_12F3D71: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13B1B80
  'Data Table: 589074
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_94 As String
  Dim var_98 As MSHFlexGrid
  Dim var_17C As Variant
  Dim var_C0 As TextBox
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  loc_13B1273: var_86 = Shift
  loc_13B1282: If (KeyCode = 0) Then
  loc_13B128F:   If (CLng(Shift) = &H1B) Then
  loc_13B129F:     Set var_8C = Me.TxtGrid
  loc_13B12A5:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_13B12AD:     var_88 = var_90.Tag
  loc_13B12BF:     Set var_98 = Me.TxtGrid
  loc_13B12C5:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_13B12CD:     var_9C.Text = var_94
  loc_13B12E9:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13B12EE:     Call Proc_30_98_F6DC1C(arg_14)
  loc_13B12F7:     Set var_8C = Me.FGrid
  loc_13B1314:     Set var_8C = Me.TxtGrid
  loc_13B131A:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_13B1322:     var_90.Visible = FGrid.DispID_8001
  loc_13B132E:     Exit Sub
  loc_13B132F:   End If
  loc_13B1342:   var_B0 = CLng(Me.FGrid.Col)
  loc_13B1352:   If (var_B0 = CLng(4)) Then
  loc_13B1372:     Set var_9C = Me.FGPoint
  loc_13B137D:     Set var_98 = Nothing
  loc_13B13AB:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_84, Shift, &HFF)
  loc_13B141A:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_13B1421:       Set var_98 = Me.DGItem
  loc_13B1440:       Proc_6_138_106D6F8(var_98, global_84, KeyCode, Me.FGPoint, 1)
  loc_13B144E:     End If
  loc_13B1458:     If (CLng(Shift) = &HD) Then
  loc_13B1461:       Call Proc_30_91_184965C(KeyCode, var_B2, var_98, var_9C)
  loc_13B146C:       If (var_B2 = &HFF) Then
  loc_13B14B2:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_126, 7)
  loc_13B14C2:       End If
  loc_13B14C2:     End If
  loc_13B14C5:   Else
  loc_13B14CC:     If (var_B0 = CLng(2)) Then
  loc_13B14DA:       Set var_C0 = Me.TxtGrid
  loc_13B1525:       Proc_6_69_134A198(Me.DGRest, var_C0, KeyCode, global_100, Shift, &HFF, 1, Nothing)
  loc_13B1594:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_13B15BA:         Proc_6_138_106D6F8(Me.DGRest, global_100, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13B15C8:       End If
  loc_13B15D2:       If (CLng(Shift) = &HD) Then
  loc_13B15DB:         Call Proc_30_91_184965C(KeyCode, var_B2, 0, 7)
  loc_13B15E6:         If (var_B2 = &HFF) Then
  loc_13B162C:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_126, 7, 0)
  loc_13B163C:         End If
  loc_13B163C:       End If
  loc_13B163F:     Else
  loc_13B1646:       If (var_B0 = CLng(3)) Then
  loc_13B1653:         If (CLng(Shift) = &HD) Then
  loc_13B165C:           Call Proc_30_91_184965C(KeyCode, var_B2, 3, 0)
  loc_13B1667:           If (var_B2 = &HFF) Then
  loc_13B16B4:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_126, CByte((CInt(7) + 1)), 0)
  loc_13B16D7:             var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B16DF:             var_FC = CVar(CLng(3)) 'Long
  loc_13B1712:             If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13B1727:               Me.FGrid.Col = CVar(CLng(4))
  loc_13B1732:             Else
  loc_13B1735:               var_DC = CVar(CLng(7)) 'Long
  loc_13B1744:               Me.FGrid.Col = var_DC
  loc_13B174C:             End If
  loc_13B174C:           End If
  loc_13B174C:         End If
  loc_13B174F:       Else
  loc_13B1756:         If (var_B0 = CLng(7)) Then
  loc_13B1799:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_126 = &HFF))) Then
  loc_13B17A2:             Call Proc_30_91_184965C(KeyCode, var_B2, var_FC, var_DC, 0)
  loc_13B17AD:             If (var_B2 = &HFF) Then
  loc_13B17C3:               var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B17CB:               var_FC = CVar(CLng(&HA)) 'Long
  loc_13B17DA:               var_11C = Me.FGrid.TextMatrix)
  loc_13B1810:               var_17C = Me.FGrid.TextMatrix)
  loc_13B182A:               Set var_BC = Me.Txt
  loc_13B1830:               Call 0.Method_TxtGrid_KeyDown0 (CInt(1), var_C0, var_280, var_17C, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_11C)
  loc_13B1838:               var_FC = var_C0.Text
  loc_13B1850:               var_1B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B1868:               var_1D0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13B18B3:               var_22C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B18BB:               var_24C = CVar(CLng(0)) 'Long
  loc_13B1911:               Call Proc_30_92_155A180(CStr(var_11C), CStr(var_17C), var_280, CInt(Val(CStr(Me.FGrid.TextMatrix)))), CInt(CLng(Me.FGrid.Row)), CInt(Val(CStr(Me.FGrid.TextMatrix)))), var_CA, Val(CStr(Me.FGrid.TextMatrix))))
  loc_13B1958:               If var_CA Then
  loc_13B195B:               End If
  loc_13B196D:               Me.FGrid.Col = CVar(CLng(7))
  loc_13B19BF:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_126, CByte((CInt(9) - 1)), 0, 0)
  loc_13B19E2:               var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B19EA:               var_FC = CVar(CLng(1)) 'Long
  loc_13B1A1D:               If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13B1A33:                 var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B1A3B:                 var_FC = CVar(CLng(1)) 'Long
  loc_13B1A4E:                 Set var_90 = Me.FGrid
  loc_13B1A54:                 LateIdCallSt
  loc_13B1A79:                 var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B1A81:                 var_FC = CVar(CLng(2)) 'Long
  loc_13B1A94:                 Set var_90 = Me.FGrid
  loc_13B1A9A:                 LateIdCallSt
  loc_13B1AAC:               End If
  loc_13B1AAF:               var_DC = CVar(CLng(3)) 'Long
  loc_13B1ABE:               Me.FGrid.Col = var_DC
  loc_13B1AC6:             End If
  loc_13B1AC6:           End If
  loc_13B1AC9:         Else
  loc_13B1AD0:           If (var_B0 = CLng(9)) Then
  loc_13B1B13:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_126 = &HFF))) Then
  loc_13B1B1C:               Call Proc_30_91_184965C(KeyCode, var_B2, var_90, global_72, var_FC, var_DC, var_90)
  loc_13B1B27:               If (var_B2 = &HFF) Then
  loc_13B1B6D:                 Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_126, 9, 0, 0)
  loc_13B1B7D:               End If
  loc_13B1B7D:             End If
  loc_13B1B7D:           End If
  loc_13B1B7D:         End If
  loc_13B1B7D:       End If
  loc_13B1B7D:     End If
  loc_13B1B7D:   End If
  loc_13B1B7D: End If
  loc_13B1B7D: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '10A87FC
  'Data Table: 589074
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As MSHFlexGrid
  Dim var_A4 As String
  loc_10A852F: Proc_6_58_E054C0(arg_10)
  loc_10A8540: If (KeyAscii = 0) Then
  loc_10A8556:   var_A0 = CLng(Me.FGrid.Col)
  loc_10A8566:   If (var_A0 = CLng(4)) Then
  loc_10A8585:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_10A8597:       var_A4 = "Name"
  loc_10A85B2:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_84, arg_10)
  loc_10A85E4:       Proc_6_138_106D6F8(Me.DGItem, global_84, KeyAscii, Me.FGPoint)
  loc_10A85F2:     End If
  loc_10A85F5:   Else
  loc_10A85FC:     If (var_A0 = CLng(2)) Then
  loc_10A861B:       If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_10A8648:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_100, arg_10, "Name")
  loc_10A867A:         Proc_6_138_106D6F8(Me.DGRest, global_100, KeyAscii, Me.FGPoint, 0)
  loc_10A8688:       End If
  loc_10A868B:     Else
  loc_10A8692:       If (var_A0 = CLng(3)) Then
  loc_10A86B0:         If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_10A86C5:           Me.FGrid.Col = CVar(CLng(4))
  loc_10A86E9:           If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_10A8716:             Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_84, arg_10, "Name")
  loc_10A8725:           End If
  loc_10A8725:         End If
  loc_10A8728:       Else
  loc_10A872F:         If (var_A0 = CLng(7)) Then
  loc_10A8756:           Set var_AC = Me.FGrid
  loc_10A8767:           var_A4 = CStr(var_AC.TextMatrix))
  loc_10A8785:           If (CDbl(Val(var_A4)) = CDbl(0)) Then
  loc_10A8792:             Set var_8C = Me.TxtGrid
  loc_10A8798:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), 0)
  loc_10A87B3:             Proc_6_42_129A86C(var_AC, arg_10, 4, 2)
  loc_10A87C2:           Else
  loc_10A87CC:             Set var_8C = Me.TxtGrid
  loc_10A87D2:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_10A87ED:             Proc_6_42_129A86C(var_AC, arg_10, 4, 0)
  loc_10A87F9:           End If
  loc_10A87F9:         End If
  loc_10A87F9:       End If
  loc_10A87F9:     End If
  loc_10A87F9:   End If
  loc_10A87F9: End If
  loc_10A87F9: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1094544
  'Data Table: 589074
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  loc_10942A0: On Error Goto loc_109453D
  loc_10942A6: var_86 = KeyCode
  loc_10942AF: If (var_86 = 0) Then
  loc_10942C5:   var_A0 = CLng(Me.FGrid.Col)
  loc_10942D5:   If (var_A0 = CLng(2)) Then
  loc_10942FB:     If ((Shift <> &HD) And (CBool(Me.DGRest.Visible) = 0)) Then
  loc_109430C:       Call TxtGrid_KeyDown(KeyCode, global_124)
  loc_109433B:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_100, Shift, "Name")
  loc_109434A:     End If
  loc_109434D:   Else
  loc_1094354:     If (var_A0 = CLng(4)) Then
  loc_109437A:       If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_109438B:         Call TxtGrid_KeyDown(KeyCode, global_124)
  loc_1094394:         Set var_AC = Me.TxtGrid
  loc_109439F:         var_A8 = "Name"
  loc_10943BA:         Proc_6_89_146F1AC(var_AC, KeyCode, global_84, Shift, var_A8, &HFF)
  loc_10943C9:       End If
  loc_10943CC:     Else
  loc_10943D3:       If (var_A0 = CLng(9)) Then
  loc_10943E0:         Set var_B0 = Me.TxtGrid
  loc_10943E6:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_B4, 0, &HFF)
  loc_10943F8:         Set var_8C = Me.TxtGrid
  loc_10943FE:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8)
  loc_1094406:         0 = var_AC.Text
  loc_1094469:         If CBool((Len(var_A8) = 0) Or (Ucase(Mid(CVar(var_B4), 1, 1)) = "Y")) Then
  loc_1094479:           Set var_8C = Me.TxtGrid
  loc_109447F:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, "Yes")
  loc_1094487:           var_AC.Text = var_A0
  loc_1094496:         Else
  loc_10944A0:           Set var_8C = Me.TxtGrid
  loc_10944A6:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_10944E8:           If (Ucase(Mid(CVar(var_AC), 1, 1)) = "N") Then
  loc_10944F8:             Set var_8C = Me.TxtGrid
  loc_10944FE:             Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_1094506:             var_AC.Text = "No"
  loc_1094515:           Else
  loc_1094522:             Set var_8C = Me.TxtGrid
  loc_1094528:             Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_1094530:             var_AC.Text = "Yes"
  loc_109453C:           End If
  loc_109453C:         End If
  loc_109453C:       End If
  loc_109453C:     End If
  loc_109453C:   End If
  loc_109453C: End If
  loc_109453C: Exit Sub
  loc_109453D: ' Referenced from: 10942A0
  loc_109453D: Proc_6_60_E62BC4(var_86)
  loc_1094542: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23328
  'Data Table: 589074
  Dim arg_10 As Integer
  loc_E23310: If (Cancel = 0) Then
  loc_E23319:   Call Proc_30_91_184965C(Cancel, var_88)
  loc_E23322:   arg_10 = Not(var_88)
  loc_E23325: End If
  loc_E23325: Exit Sub
End Sub

Private Sub Command1_Click() 'F7A3C0
  'Data Table: 589074
  Dim unk_589093 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  Dim var_B0 As Variant
  loc_F7A288: On Error Goto loc_F7A3BA
  loc_F7A2AF: unk_589093.Execute "Select Interface From MemEnviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_B0, -1
  loc_F7A2BA: Set var_88 = var_B4
  loc_F7A2DE: If (var_88.RecordCount > 0) Then
  loc_F7A2F0:   var_B4 = var_88.Fields
  loc_F7A309:   var_C0 = Proc_6_38_E68A98(CVar(var_B4.Item("Interface")))
  loc_F7A31A:   If (var_C0 = "SmartCard_ACR") Then
  loc_F7A31D:     Call Proc_30_81_11AD218(var_B4)
  loc_F7A325:   Else
  loc_F7A32D:     If (var_C0 = "NBSD_Mifare") Then
  loc_F7A349:       MsgBox("Procedure Not Defined!", &H40, var_E0, var_100, var_120)
  loc_F7A35C:     Else
  loc_F7A375:       MsgBox("Smart Card Interface Not Defined!", &H40, var_E0, var_100, var_120)
  loc_F7A385:     End If
  loc_F7A385:   End If
  loc_F7A388: Else
  loc_F7A3A1:   MsgBox("Member Environment Settings NOT SET!", 0, var_E0, var_100, var_120)
  loc_F7A3B1: End If
  loc_F7A3B6: Set var_88 = Nothing
  loc_F7A3B9: Exit Sub
  loc_F7A3BA: ' Referenced from: F7A288
  loc_F7A3BA: Proc_6_60_E62BC4()
  loc_F7A3BF: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_B 'F28F98
  'Data Table: 589074
  Dim var_AC As Variant
  Dim var_CC As Long
  Dim Me As Recordset15
  loc_F28EAB: var_AC = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_F28EB0: var_CC = 8
  loc_F28EE7: If (CStr(Me.FGrid2.TextMatrix)) <> vbNullString) Then
  loc_F28EFD:   var_AC = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_F28F37:   Me.MoveFirst
  loc_F28F61:   Me.Find "SearchCode='" & CStr(Me.FGrid2.TextMatrix)) & "'", 0, 1
  loc_F28F89:   Proc_5_0_110649C(&HFF, Me, global_88, 0, var_AC)
  loc_F28F91:   Call Proc_30_94_17A0CD8(8, var_AC)
  loc_F28F96: End If
  loc_F28F96: Exit Sub
End Sub

Private Sub Form_Load() '15B55A8
  'Data Table: 589074
  Dim var_A0 As Variant
  Dim var_C8 As Variant
  Dim var_B8 As String
  Dim var_D8 As Variant
  Dim var_E0 As String
  Dim var_E4 As String
  Dim var_E8 As String
  Dim unk_589093 As Connection15
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_B0 As Variant
  Dim var_DC As Variant
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_FC As Variant
  Dim var_120 As Variant
  Dim unk_589164 As Connection15
  Dim var_88 As Recordset15
  Dim var_1C0 As Integer
  Dim var_110 As Fields15
  Dim var_1C4 As Field20
  Dim var_160 As Variant
  Dim var_180 As String
  Dim var_130 As Variant
  loc_15B4328: On Error Goto loc_15B55A1
  loc_15B433D: Set var_B4 = Me.TopCtrl1
  loc_15B4343: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_15B4351: Call 0.Method_arg_50 (var_B8)
  loc_15B4359: var_C8 = CVar(var_B8) 'String
  loc_15B4361: Set var_B4 = Me.TopCtrl1
  loc_15B4367: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(var_C8)
  loc_15B4378: If (MemVar_1F920B8 <> 1) Then
  loc_15B437F:   Set var_B4 = Me.TopCtrl1
  loc_15B4385:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(1)
  loc_15B43AF:   var_D8 = CVar(Replace(CStr(var_C8), "D", "*", 1, -1, 0)) 'String
  loc_15B43B7:   Set var_DC = Me.TopCtrl1
  loc_15B43BD:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B(var_D8)
  loc_15B43D3: End If
  loc_15B43F5: var_E4 = "SELECT EditItemInKOT,FreeItemAllow FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' And CompCode='" & MemVar_1F92128
  loc_15B4413: unk_589093.Execute var_E4 & "' And UserName='" & MemVar_1F920C8 & "'", var_C8, -1
  loc_15B4424: Set global_228 = var_B4
  loc_15B4458: If (Me.RecordCount > 0) Then
  loc_15B4475:   var_DC = Me.Fields.Item("EditItemInKOT")
  loc_15B447D:   var_C8 = CVar(var_DC) 'Address
  loc_15B448C:   global_192 = Proc_6_38_E68A98(var_C8)
  loc_15B449F:   var_B0 = 0
  loc_15B44CF:   unk_589093.Execute "Select FreeItemApp from depart where Code='" & LocalRestCode & "'", var_C8, -1
  loc_15B44DF:   var_B0 = var_DC.Item(var_DC)
  loc_15B44E7:   var_F8 = var_F8.Value
  loc_15B4516:   var_110 = Me.Fields.Item("FreeItemAllow")
  loc_15B454F:   If (var_B4.Fields And (Proc_6_38_E68A98(CVar(var_110), (Proc_6_38_E68A98(var_D8, var_D8) = "Yes")) = "Yes")) Then
  loc_15B455A:     Set var_B4 = Me.CmdFreeItem
  loc_15B4560:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(True)
  loc_15B4568:   End If
  loc_15B4568: End If
  loc_15B458C: unk_589093.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_C8, -1
  loc_15B459D: Set global_228 = var_B4
  loc_15B45E9: global_76 = LocalRestCode
  loc_15B4619: var_E8 = "Select * from PrinterSetup where SITE_CODE='" & MemVar_1F92078 & "' AND RestCode='" & LocalRestCode & "' And ModType='KOT'"
  loc_15B4622: unk_589164.Execute var_E8, var_C8, -1
  loc_15B4633: Set global_204 = var_B4
  loc_15B465A: var_C8 = Trim(global_68)
  loc_15B466D: If CBool(var_C8 <> "Room Service") Then
  loc_15B4683:   Call 0.Method_Form_Load0 (CInt(7), var_DC, 0, Me.Label1)
  loc_15B468B:   var_DC.Visible = Proc_96_17_FDBD80(LocalRestCode, global_68, 0)
  loc_15B46A4:   Set var_B4 = Me.Label1
  loc_15B46AA:   Call 0.Method_Form_Load0 (CInt(8), var_DC, 0)
  loc_15B46B2:   var_DC.Visible = global_72
  loc_15B46CB:   Set var_B4 = Me.Label1
  loc_15B46D1:   Call 0.Method_Form_Load0 (CInt(9), var_DC, 0)
  loc_15B46D9:   var_DC.Visible = global_80
  loc_15B46F2:   Set var_B4 = Me.Txt
  loc_15B46F8:   Call 0.Method_Form_Load0 (CInt(8), var_DC)
  loc_15B4700:   var_DC.Visible = False
  loc_15B4719:   Set var_B4 = Me.Txt
  loc_15B471F:   Call 0.Method_Form_Load0 (CInt(9), var_DC)
  loc_15B4727:   var_DC.Visible = False
  loc_15B4740:   Set var_B4 = Me.Txt
  loc_15B4746:   Call 0.Method_Form_Load0 (CInt(&HA), var_DC)
  loc_15B474E:   var_DC.Visible = False
  loc_15B475A: End If
  loc_15B4760: var_B0 = 0
  loc_15B4790: unk_589093.Execute "Select AutoSplit from depart where Code='" & LocalRestCode & "'", var_C8, -1
  loc_15B4798: var_B4 = var_B4.Fields
  loc_15B47A0: var_B0 = var_DC.Item(var_DC)
  loc_15B47A8: var_F8 = var_F8.Value
  loc_15B47BB: global_232 = Proc_6_38_E68A98(var_D8, var_D8)
  loc_15B47DE: var_B0 = 0
  loc_15B480E: unk_589093.Execute "Select OpenItemYN from depart where Code='" & LocalRestCode & "'", var_C8, -1
  loc_15B4816: var_B4 = var_B4.Fields
  loc_15B481E: var_B0 = var_DC.Item(var_DC)
  loc_15B4826: var_F8 = var_F8.Value
  loc_15B4839: global_168 = Proc_6_38_E68A98(var_D8, var_D8)
  loc_15B485C: var_B0 = 0
  loc_15B4891: var_E8 = "Select Name From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Code ='" & LocalRestCode & "'"
  loc_15B489A: unk_589093.Execute var_E8, var_C8, -1
  loc_15B48A2: var_B4 = var_B4.Fields
  loc_15B48AA: var_B0 = var_DC.Item(var_DC)
  loc_15B48B2: var_F8 = var_F8.Value
  loc_15B48C8: Me.LblRest.Caption = CStr(var_D8)
  loc_15B48F6: Set global_100 = New 
  loc_15B4908: Me.Recordset15.CursorLocation = 3
  loc_15B4953: var_120 = (Me.Fields.Item("MultiBillGeneration").Value = "Yes") And (global_232 = "Yes")
  loc_15B4967: If CBool(var_120) Then
  loc_15B498F:   var_E0 = "SELECT CODE ,ShortName as NAME,Name as Restaurant FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' And Code In (Select AssociatedRestCode From Depart1 Where DepartCode='"
  loc_15B49AE:   var_C8 = CVar(var_E0 & LocalRestCode & "' And LOGSITE_CODE='" & MemVar_1F92078 & "' And IsNull(AssociatedRestCode,'')<>'') ORDER BY NAME") 'String
  loc_15B49B8:   Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_15B49D0: Else
  loc_15B49F5:   var_C8 = CVar("SELECT CODE ,ShortName as NAME,Name as Restaurant FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND OutletYN='Y' ORDER BY NAME") 'String
  loc_15B49FF:   Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_15B4A0A: End If
  loc_15B4A13: CVarUnk
  loc_15B4A18: VerifyVarObj
  loc_15B4A1E: Set var_B4 = Me.DGRest
  loc_15B4A24: LateIdStAd
  loc_15B4A3C: Set global_200 = New 
  loc_15B4A4E: Me.DGRest.CursorLocation = 3
  loc_15B4A82: var_E4 = "select MemberInfo from Depart where (Logsite_code='" & MemVar_1F92078 & "'or LOGSITE_CODE='HO') and Code='" & LocalRestCode
  loc_15B4A93: Me.Open CVar(var_E4 & "'"), CVar(MemVar_1F92044), 3
  loc_15B4ABB: If (Me.RecordCount > 0) Then
  loc_15B4AD0:   var_B4 = Me.Fields
  loc_15B4AD8:   var_DC = var_B4.Item("MemberInfo")
  loc_15B4AE0:   var_C8 = CVar(var_DC) 'Address
  loc_15B4AE9:   var_B8 = Proc_6_38_E68A98(var_C8, 1, -1, var_B4, global_100, 1)
  loc_15B4AFA:   If ("select MemberInfo from Depart where (Logsite_code='" & MemVar_1F92078 = "Y") Then
  loc_15B4B0A:     Set var_B4 = Me.Txt
  loc_15B4B10:     Call 0.Method_Form_Load0 (CInt(&HB), var_DC, &HFF, -1)
  loc_15B4B18:     var_DC.Visible = True
  loc_15B4B2F:     Set var_B4 = Me.Label1
  loc_15B4B35:     Call 0.Method_Form_Load0 (&HB, var_DC, &HFF)
  loc_15B4B3D:     var_DC.Visible = True
  loc_15B4B56:     Set var_B4 = Me.Txt
  loc_15B4B5C:     Call 0.Method_Form_Load0 (CInt(&HC), var_DC, &HFF)
  loc_15B4B64:     var_DC.Visible = var_D8
  loc_15B4B8D:     Proc_6_17_EAA2B0(var_C8, MemVar_1F92078, "SELECT * FROM MEMENVIRO WHERE LOGSITE_CODE=", var_120)
  loc_15B4B95:     var_D8 = -1 & var_C8 
  loc_15B4BA3:     unk_589093.Execute CStr(var_D8), var_B4, var_B4
  loc_15B4BAE:     Set var_88 = var_B4
  loc_15B4BD4:     If (var_88.RecordCount > 0) Then
  loc_15B4C05:       global_188 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemberVarificationInKOT")))
  loc_15B4C12:     End If
  loc_15B4C12:   End If
  loc_15B4C12: End If
  loc_15B4C1C: Set global_196 = New 
  loc_15B4C2E: Me.CursorLocation = 3
  loc_15B4C58: var_E0 = "Select SubCode as Code,Name,Discount,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_15B4C70: Me.Open CVar(var_E0 & MemVar_1F92078 & "') Order By Name"), CVar(MemVar_1F92044), 3
  loc_15B4C8A: CVarUnk
  loc_15B4C8F: VerifyVarObj
  loc_15B4C95: Set var_B4 = Me.DGMember
  loc_15B4C9B: LateIdStAd
  loc_15B4CB3: Set global_84 = New 
  loc_15B4CC5: Me.DGMember.CursorLocation = 3
  loc_15B4CE7: var_DC = Me.Fields.Item("MultiBillGeneration")
  loc_15B4D24: If CBool((var_DC.Value = "Yes") And (global_232 = "Yes")) Then
  loc_15B4D45:   var_B8 = "Select I.Code,I.Name as Name,I.Unit,IsNull(U.PriceType,0) As PriceType,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode,D.ShortName,I.Kitchen From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Left Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_15B4D4C:   var_E0 = var_B8 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 And I.RestCode In (Select AssociatedRestCode From Depart1 Where DepartCode='"
  loc_15B4D6B:   var_C8 = CVar(var_E0 & LocalRestCode & "' And LOGSITE_CODE='" & MemVar_1F92078 & "' And IsNull(AssociatedRestCode,'')<>'') Order by I.Name") 'String
  loc_15B4D75:   Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_15B4D8D: Else
  loc_15B4DAB:   var_B8 = "Select I.Code,I.Name as Name,I.Unit,IsNull(U.PriceType,0) As PriceType,IG.Name as ItemGroup,DispCode,D.Name as OutLetName,D.Code as OutLetCode,I.Kitchen From (ItemMast I INNER join ItemGrp IG on I.ItemGroup=IG.Code)INNER Join Depart D On D.Code=I.RestCode Left Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_15B4DB2:   var_C8 = CVar(var_B8 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by I.Name") 'String
  loc_15B4DBC:   Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_15B4DC7: End If
  loc_15B4DD0: CVarUnk
  loc_15B4DD5: VerifyVarObj
  loc_15B4DDB: Set var_B4 = Me.DGItem
  loc_15B4DE1: LateIdStAd
  loc_15B4E0B: Me.DGItem.CursorLocation = 3
  loc_15B4E33: Me.Open "SELECT NCType,NcPer FROM NCTypeMast ORDER BY NCType", CVar(MemVar_1F92044), 3
  loc_15B4E41: CVarUnk
  loc_15B4E46: VerifyVarObj
  loc_15B4E4C: Set var_B4 = Me.DGNCType
  loc_15B4E52: LateIdStAd
  loc_15B4E7C: Me.DGNCType.CursorLocation = 3
  loc_15B4EA6: var_C8 = CVar("Select W.Code,W.Name As Name From Waiter W wHERE IsNull(W.ActiveYN,'')<>'No' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by W.Name") 'String
  loc_15B4EC4: CVarUnk
  loc_15B4EC9: VerifyVarObj
  loc_15B4ECF: Set var_B4 = Me.DGWaiter
  loc_15B4ED5: LateIdStAd
  loc_15B4EE3: Call Proc_30_102_1264AA8(var_B4, New, 1, -1, var_B4, New, 1)
  loc_15B4EF2: Set global_88 = New 
  loc_15B4F04: Me.DGWaiter.CursorLocation = 3
  loc_15B4F14: Proc_6_7_F25D88(var_C8, MemVar_1F920EC, -1, var_B4, global_84)
  loc_15B4F1F: var_10C = 0
  loc_15B4F4F: unk_589093.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_130, -1
  loc_15B4F57: var_B4 = var_B4.Fields
  loc_15B4F5F: var_10C = var_DC.Item(var_DC)
  loc_15B4F67: var_F8 = var_F8.Value
  loc_15B4F72: var_1C0 = 0
  loc_15B4F92: var_E8 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_15B4FA2: unk_589093.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & LocalRestCode & "' And LOGSITE_CODE='" & "'", var_1B0, -1
  loc_15B4FAA: var_FC = var_FC.Fields
  loc_15B4FB2: var_1C0 = var_110.Item(var_110)
  loc_15B4FBA: var_1C4 = var_1C4.Value
  loc_15B4FDD: var_B8 = "Select Distinct K.DocId as SearchCode,K.DocID,K.RESTCODE,K.SITE_CODE,K.LOGSITE_CODE  From KOT K WHERE   LOGSITE_CODE='" & MemVar_1F92078
  loc_15B4FE4: var_D8 = CVar(var_B8 & "' AND (K.Pending='Y'  AND NCKOT='N'  And DelFlag NOT IN ('Y') OR DelFlag IS NULL) OR (K.VDate=") 'String
  loc_15B4FF6: var_160 = (" And DelFlag NOT IN ('Y') OR DelFlag IS NULL) AND (K.VType='K" + var_140)
  loc_15B501E: r_C8, CVar(MemVar_1F92044), 3 var_D8 & var_C8 & var_160 & "' OR K.VType='" & var_1D4 & "') Order by Docid", CVar(MemVar_1F92044), 3
  loc_15B5064: var_B8 = "RESTCODE='" & LocalRestCode
  loc_15B506B: var_C8 = CVar(var_B8 & "'") 'String
  loc_15B5075: Me.Filter = var_C8
  loc_15B50A5: Call 0.Method_arg_50 (var_B8, "SELECT COUNT(*) FROM LASTVOU WHERE  ENAME='", var_C8, -1, var_B4, var_DC, 0, var_F8)
  loc_15B50CC: unk_589093.Execute var_D8 & var_B8 & "' AND UNAME='" & MemVar_1F920C8 & "'", 1, -1
  loc_15B50D4: var_1D4 = var_B4.Fields
  loc_15B50DC: 1 = var_DC.Item(var_140)
  loc_15B50E4: -1 = var_F8.Value
  loc_15B5111: If (var_D8 > 0) Then
  loc_15B514C:   Call 0.Method_arg_50 (var_B8, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_C8, -1, var_B4, var_DC, 0)
  loc_15B5173:   unk_589093.Execute var_F8 & var_B8 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_D8, "SearchCode='"
  loc_15B517B:   0 = var_B4.Fields
  loc_15B5183:   var_180 = var_DC.Item(1)
  loc_15B518B:    = var_F8.Value
  loc_15B51AA:   Me.Find CStr(var_D8 & "'"), , 
  loc_15B51D2: End If
  loc_15B51E9: If (Me.RecordCount > 0) Then
  loc_15B5200:   If (Me.EOF = &HFF) Then
  loc_15B5209:     Me.MoveLast
  loc_15B520E:   End If
  loc_15B520E: End If
  loc_15B5217: Call 0.Method_arg_160 (var_B4)
  loc_15B5225: Call 0.Method_arg_164 (var_B4)
  loc_15B5250: Call Proc_30_97_1011740(Proc_5_1_100CB50("INI", Me))
  loc_15B5271: Proc_6_23_DFBA28(Me, 0)
  loc_15B528C: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_15B529B: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), 0)
  loc_15B52AE: Me.FrKOT.BackColor = CLng(MemVar_1F921B0)
  loc_15B52C4: Me.ChkNCKOT.BackColor = CLng(MemVar_1F921B0)
  loc_15B52DF: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B0))
  loc_15B52FA: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_15B5310: Me.LblPendingKot.BackColor = CLng(MemVar_1F921B0)
  loc_15B5326: Me.LblPendingKotItem.BackColor = CLng(MemVar_1F921B0)
  loc_15B533D: Me.LblUser.Left = CDbl(13500)
  loc_15B5354: Me.LblUser.Top = CDbl(7700)
  loc_15B536B: Me.LblLDt.Top = CDbl(8060)
  loc_15B5382: Me.LblLDt.Left = CDbl(13500)
  loc_15B5397: Me.LblCurStockStr.Caption = vbNullString
  loc_15B539F: Call Proc_30_77_1312924(global_88)
  loc_15B53A4: Call Proc_30_78_10582F0()
  loc_15B53A9: Call Proc_30_79_11DC604()
  loc_15B53D0: Me.DGItem.Top = CVar(CDbl(Me.FGrid.Top))
  loc_15B5424: var_A0 = CVar((CDbl(Me.FGrid.Left) + (CDbl(Me.FGrid.Width) - CDbl(Me.DGItem.Width)))) 'Single
  loc_15B5433: Me.DGItem.Left = CVar(CDbl(Me.FGrid.Top))
  loc_15B546E: Me.DGItem.Height = CVar(CDbl(Me.FGrid.Height))
  loc_15B549F: Me.DGRest.Top = CVar(CDbl(Me.FGrid.Top))
  loc_15B54B8: var_D8 = Me.FGrid.Width
  loc_15B54CB: var_120 = Me.DGRest.Width
  loc_15B54F3: var_A0 = CVar((CDbl(Me.FGrid.Left) + (CDbl(var_D8) - CDbl(var_120)))) 'Single
  loc_15B5502: Me.DGRest.Left = CVar(CDbl(Me.FGrid.Top))
  loc_15B553D: Me.DGRest.Height = CVar(CDbl(Me.FGrid.Height))
  loc_15B554C: Call Proc_30_94_17A0CD8(var_120, var_D8)
  loc_15B555D: Me.Timer2.Enabled = False
  loc_15B5571: Me.lblclr.Visible = True
  loc_15B5582: Set var_B4 = Me.BtnLblModi
  loc_15B5588: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_15B5595: Set var_90 = Nothing
  loc_15B559D: Set var_88 = Nothing
  loc_15B55A0: Exit Sub
  loc_15B55A1: ' Referenced from: 15B4328
  loc_15B55A1: Proc_6_60_E62BC4(var_120)
  loc_15B55A6: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EC3C60
  'Data Table: 589074
  loc_EC3BBF: Set global_96 = Nothing
  loc_EC3BD1: Set global_84 = Nothing
  loc_EC3BE3: Set global_100 = Nothing
  loc_EC3BF5: Set global_92 = Nothing
  loc_EC3C07: Set global_88 = Nothing
  loc_EC3C19: Set global_220 = Nothing
  loc_EC3C2B: Set global_200 = Nothing
  loc_EC3C3D: Set global_196 = Nothing
  loc_EC3C4F: Set global_204 = Nothing
  loc_EC3C5B: MasterFormExit = 0
  loc_EC3C5E: Exit Sub
End Sub

Private Sub Form_Activate() 'F90238
  'Data Table: 589074
  Dim var_90 As String
  Dim var_F8 As Variant
  Dim var_D4 As Integer
  Dim var_98 As String
  Dim unk_589093 As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_108 As Variant
  Dim var_88 As Recordset15
  loc_F9011F: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_F9012D: var_F8 = CVar(var_90 & MemVar_1F92078 & "') AND V_Type='") 'String
  loc_F90136: var_D4 = 0
  loc_F90156: var_98 = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_F90166: unk_589093.Execute var_98 & "'", var_BC, -1
  loc_F9016E: var_C0 = var_C0.Fields
  loc_F90176: var_D4 = var_C4.Item(var_C4)
  loc_F9017E: var_D8 = var_D8.Value
  loc_F90186: var_108 = var_E8 & var_E8 
  loc_F9019D: unk_589093.Execute CStr(var_108 & "' Order by Description"), var_F8, var_14C
  loc_F901E8: If (var_150.RecordCount > 0) Then
  loc_F901EB:   GoTo loc_F9022D
  loc_F901EE: End If
  loc_F90207: MsgBox("KOT Not Configured for selected Restaurant", 0, var_E8, var_F8, var_108)
  loc_F90224: Me.Global.Unload Me
  loc_F9022C: Exit Sub
  loc_F9022D: ' Referenced from: F901EB
  loc_F90232: Set var_88 = Nothing
  loc_F90235: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2467C
  'Data Table: 589074
  Dim var_394 As String
  loc_E24661: If (MasterFormExit = &HFF) Then
  loc_E24671:   Me.Global.Unload Me
  loc_E24679: End If
  loc_E24679: Exit Sub
  loc_E2467A: var_394 = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EDE134
  'Data Table: 589074
  Dim var_88 As Variant
  loc_EDE078: On Error Goto loc_EDE12D
  loc_EDE07F: Set var_88 = Me.TopCtrl1
  loc_EDE085: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_EDE09E: If (CStr() = "Edit") Then
  loc_EDE0B2:   If ((CLng(KeyCode) = &H4D) And (Shift = 2)) Then
  loc_EDE0C3:     Me.FrmeDisc.Width = CDbl(1)
  loc_EDE0D9:     Me.FrmeDisc.Height = CDbl(1)
  loc_EDE0E6:     global_270 = 1
  loc_EDE0EF:     global_276 = "Go"
  loc_EDE0FF:     Me.Timer2.Enabled = True
  loc_EDE107:   End If
  loc_EDE107: End If
  loc_EDE107: Call Proc_30_83_119D104(global_270)
  loc_EDE124: Proc_6_88_FE81B4(Me, KeyCode)
  loc_EDE12C: Exit Sub
  loc_EDE12D: ' Referenced from: EDE078
  loc_EDE12D: Proc_6_60_E62BC4(Shift)
  loc_EDE132: Exit Sub
End Sub

Public Function MasterFormExitGet() '58B7E8
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '58B7F7
  MasterFormExit = Value
End Sub

Public Function LocalRestCodeGet() '58B806
  LocalRestCodeGet = LocalRestCode
End Function

Public Sub LocalRestCodePut(Value) '58B815
  LocalRestCode = Value
End Sub

Public Function SpecialRateGet() '58B824
  SpecialRateGet = SpecialRate
End Function

Public Sub SpecialRatePut(Value) '58B833
  SpecialRate = Value
End Sub

Public Property Let PTableNo(vNewValue) 'E1357C
  'Data Table: 589074
  loc_E13574: global_256 = vNewValue
  loc_E13578: Exit Sub
End Sub

Public Property Get PTableNo() 'E1372C
  'Data Table: 589074
  loc_E13720: var_88 = global_256
  loc_E13723: PTableNo = 
End Sub

Public Property Let pRestCode(vNewValue) 'E1384C
  'Data Table: 589074
  loc_E13844: global_260 = vNewValue
  loc_E13848: Exit Sub
End Sub

Public Property Get pRestCode() 'E14614
  'Data Table: 589074
  loc_E14608: var_88 = global_260
  loc_E1460B: pRestCode = 
End Sub

Public Property Get OpenMode() 'E06D80
  'Data Table: 589074
  loc_E06D79: OpenMode = global_252
End Sub

Public Property Let OpenMode(vNewValue) 'E01D60
  'Data Table: 589074
  loc_E01D5A: global_252 = vNewValue
  loc_E01D5D: Exit Sub
End Sub

Public Property Let PSteward(vNewValue) 'E10A74
  'Data Table: 589074
  loc_E10A6C: global_264 = vNewValue
  loc_E10A70: Exit Sub
End Sub

Public Property Get PSteward() 'E141DC
  'Data Table: 589074
  loc_E141D0: var_88 = global_264
  loc_E141D3: PSteward = 
End Sub

Public Sub SEARCHBACK(MyValue) 'E941C0
  'Data Table: 589074
  Dim Me As Recordset15
  loc_E9414E: On Error Goto loc_E941B7
  loc_E94157: Me.MoveFirst
  loc_E94181: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E941A9: Proc_5_0_110649C(&HFF, Me, global_88)
  loc_E941B1: Call Proc_30_94_17A0CD8(0)
  loc_E941B6: Exit Sub
  loc_E941B7: ' Referenced from: E9414E
  loc_E941B7: Proc_6_60_E62BC4(var_A0)
  loc_E941BC: Exit Sub
  loc_E941BD: Result  End Sub 'Currency
End Sub

Public Sub KOTMessage(DocID, MsgType, RestCode) '14A06D8
  'Data Table: 589074
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  Dim var_1AC As String
  Dim unk_589093 As Connection15
  Dim var_1D0 As Variant
  Dim var_1D4 As Variant
  Dim var_1E8 As Variant
  Dim var_1FC As String
  Dim var_B8 As Recordset15
  Dim var_A0 As Recordset15
  Dim var_E8 As Variant
  Dim var_1CC As Variant
  Dim var_230 As Fields15
  Dim var_2BC As String
  Dim var_1F8 As Variant
  Dim var_BC As Recordset15
  Dim var_20C As TextBox
  loc_149FAA0: On Error Goto loc_14A06CF
  loc_149FACF: Proc_6_17_EAA2B0(var_E8, MsgType, "Select IsNull(Max(MobileNo),'') from EmailSMSForward WHERE Type=", var_1CC, -1)
  loc_149FAFD: var_188 = var_1D0 & var_E8 & " And FlagType='POS' And DepartCode='" & CVar(MemVar_1F92078) & "RS' And LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_149FB14: unk_589093.Execute CStr(var_188 & "'"), var_1D4, 0
  loc_149FB24:  = var_1D4.Item(var_1F8)
  loc_149FB2C:  = var_1D0.Fields.Value
  loc_149FB35: var_AC = CStr(var_1F8)
  loc_149FB85: Proc_6_17_EAA2B0(var_E8, MsgType, "Select IsNull(Max(TxtMsg),'') from EmailSMSForward WHERE Type=", var_1CC, -1)
  loc_149FBBC: var_1A8 = var_1D0 & var_E8 & " And FlagType='POS' And DepartCode='" & CVar(RestCode) & "' And LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'" 
  loc_149FBCA: unk_589093.Execute CStr(var_1A8), var_1D4, 0
  loc_149FBD2: var_1E8 = var_1D0.Fields
  loc_149FBDA:  = var_1D4.Item(var_1F8)
  loc_149FBE2:  = var_1E8.Value
  loc_149FC25: If Not(((Len(CStr(var_1F8)) <> 0) And (Len(var_AC) >= &HA))) Then
  loc_149FC28:   Exit Sub
  loc_149FC29: End If
  loc_149FC30: var_1AC = "Select DISTINCT K.Vtype,k.Vtime,K.VNo,K.VDate,S.CardNo,S.Name As MemName,W.name as WaiterName,k.RoomNo as TableNo,K.NCKOT,K.NCTYPE,K.Remarks , K.ContraDocId, D.ShortName,K.GuarAtt,K.U_AE,K.U_Name,K.TokenNo " & "From (((KOT K Left Join Waiter W on K.Waiter=W.Code) left join SubGroup S On K.Party=S.SubCode) Left Join Depart D on D.Code=K.RestCode) "
  loc_149FC45: var_88 = var_1AC & "Where K.DocID='" & DocID & "'"
  loc_149FC6F: Set var_1D0 = Me.Txt
  loc_149FC75: Call 0.Method_KOTMessage0 (CInt(4), var_1D4, var_1AC, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='")
  loc_149FC7D: var_E8 = var_1D4.Text
  loc_149FC86: var_1FC = -1 & var_1AC
  loc_149FC96: unk_589093.Execute var_1AC & "Where K.DocID='" & "' AND CONTRADOCID IS NULL", var_1E8, 
  loc_149FCCD: If (var_1E8.RecordCount = 1) Then
  loc_149FCD3:   var_B0 = "New Order"
  loc_149FCD9: Else
  loc_149FCE0:   Set var_1D0 = Me.LblState
  loc_149FCEE:   var_B0 = var_1D0.Caption
  loc_149FCF4: End If
  loc_149FD0A: unk_589093.Execute var_88, var_E8, -1
  loc_149FD15: Set var_A0 = var_1D0
  loc_149FD32: If (var_A0.RecordCount > 0) Then
  loc_149FD38:   var_A0.MoveFirst
  loc_149FD3D:   ' Referenced from: 14A05CA
  loc_149FD4C:   If Not(var_A0.EOF) Then
  loc_149FD7D:     var_128 = Trim(CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("ShortName")))))
  loc_149FE11:     var_234 = var_A0.Fields.Item("NCKOT")
  loc_149FE6F:     var_2B4 = IIf((Ucase(Mid(var_128, 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_A0.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_234)) = "Y"), "* NC KOT *", "* KOT *"))
  loc_149FE78:     var_8C = CStr(var_2B4)
  loc_149FEEC:     var_A8 = Replace(var_A8, "<Outlet Title>", Me.LblRest.Caption & "D", 1, -1, 0)
  loc_149FF4A:     Proc_6_39_E7C810(var_128, CVar(var_A0.Fields.Item("VNo")))
  loc_149FF89:     var_A8 = Replace(var_A8, "<KOT Number>", Proc_6_38_E68A98(CVar(var_A0.Fields.Item("vType"))) & "/" & CStr(var_128) & "D", 1, -1, 0)
  loc_14A0012:     var_20C = var_A0.Fields.Item("VTIME")
  loc_14A003D:     var_168 = (Format(CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("VDate")))), "dd/mm/yy") + " ")
  loc_14A0047:     var_1CC = (Mid("dd/mm/yy", 1, 3) + CVar(Proc_6_38_E68A98(CVar(var_20C), 1)))
  loc_14A0050:     var_1F8 = (CVar(var_A0.Fields.Item("NCKOT")) + "%0D")
  loc_14A0063:     var_A8 = Replace(var_A8, "<KOT DateTime>", CStr("* NC LOT *"), 1, -1, 0)
  loc_14A00DD:     var_A8 = Replace(var_A8, "<Table Number>", Proc_6_38_E68A98(CVar(var_A0.Fields.Item("TableNo")), 1) & "D", 1, -1, 0)
  loc_14A0128:     If (Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Remarks"))) <> vbNullString) Then
  loc_14A014A:       var_E8 = CVar(var_A0.Fields.Item("Remarks")) 'Address
  loc_14A017D:       var_A8 = Replace(var_A8, "<Remark>", Proc_6_38_E68A98(var_E8) & "D", 1, -1, 0)
  loc_14A018F:     End If
  loc_14A0198:     Call Proc_30_108_10152B8(DocID, var_94)
  loc_14A01C1:     var_A8 = Replace(var_A8, "<Item Detail>", var_94 & "D", 1, -1, 0)
  loc_14A01D2:     Proc_6_47_EF59D0(var_E8, var_9C)
  loc_14A01EE:     var_108 = (var_E8 + "%0D")
  loc_14A01F2:     var_1AC = CStr(CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("VDate")))))
  loc_14A0201:     var_A8 = Replace(var_A8, "<KOT Total>", var_1AC, 1, -1, 0)
  loc_14A022F:     If ((var_C0 = vbNullString) And (InStr(1, CStr("* NC LOT *"), "<Item-Qty>", 0) <> 0)) Then
  loc_14A0235:       var_C0 = "<Item-Qty>"
  loc_14A023B:     Else
  loc_14A0258:       var_A8 = Replace(var_A8, "<Item-Qty>", vbNullString, 1, -1, 0)
  loc_14A025B:     End If
  loc_14A027C:     If ((var_C0 = vbNullString) And (InStr(1, CStr("* NC LOT *"), "<Item-Qty-Rate>", 0) <> 0)) Then
  loc_14A0282:       var_C0 = "<Item-Qty-Rate>"
  loc_14A0288:     Else
  loc_14A02A5:       var_A8 = Replace(var_A8, "<Item-Qty-Rate>", vbNullString, 1, -1, 0)
  loc_14A02A8:     End If
  loc_14A02C9:     If ((var_C0 = vbNullString) And (InStr(1, CStr("* NC LOT *"), "<Item-Qty-Amt>", 0) <> 0)) Then
  loc_14A02CF:       var_C0 = "<Item-Qty-Amt>"
  loc_14A02D5:     Else
  loc_14A02F2:       var_A8 = Replace(var_A8, "<Item-Qty-Amt>", vbNullString, 1, -1, 0)
  loc_14A02F5:     End If
  loc_14A02FE:     Call Proc_30_107_12C0B08(DocID, var_C0, var_1AC)
  loc_14A0326:     var_A8 = Replace(var_A8, var_C0, var_1AC, 1, -1, 0)
  loc_14A037B:     var_A8 = Replace(var_A8, "<Steward>", Proc_6_38_E68A98(CVar(var_A0.Fields.Item("WaiterName")), var_9C) & "D", 1, -1, 0)
  loc_14A039C:     var_1D0 = var_A0.Fields
  loc_14A03DF:     var_A8 = Replace(var_A8, "<User>", Proc_6_38_E68A98(CVar(var_1D0.Item("U_Name"))) & "D", 1, -1, 0)
  loc_14A03FC:     var_E8 = Trim(var_B0)
  loc_14A0439:     var_A8 = Replace(var_A8, "<KOT Status>", CStr("*" & var_E8 & CVar("*" & "D")), 1, -1, 0)
  loc_14A046E:     unk_589093.Execute "Select Count(Distinct Printed) from kot where docid='" & DocID & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')", var_E8, -1
  loc_14A049B:     var_1D0 = var_1D0.Fields
  loc_14A04AB:     var_E8 = var_1D0.Item(0).Value
  loc_14A04C5:     If (var_E8 > 1) Then
  loc_14A04EC:       var_A8 = Replace(var_A8, "<KOT Type>", "Changed KOT" & "D", 1, -1, 0)
  loc_14A04F5:     Else
  loc_14A0519:       unk_589093.Execute "Select Printed from kot where docid='" & DocID & "'", var_E8, -1
  loc_14A0543:       var_1D0 = var_1D0.Fields
  loc_14A054B:       var_1D4 = var_1D0.Item(0)
  loc_14A056D:       If (Proc_6_38_E68A98(CVar(var_1D4), var_1D0) = "Y") Then
  loc_14A0586:         var_1AC = "DUPLICATE KOT" & "D"
  loc_14A0594:         var_A8 = Replace(var_A8, "<KOT Type>", var_1AC, 1, -1, 0)
  loc_14A059A:       End If
  loc_14A059A:     End If
  loc_14A05B7:     var_A8 = Replace(var_A8, "<KOT Type>", vbNullString, 1, -1, 0)
  loc_14A05BF:     Set var_BC = Nothing
  loc_14A05C5:     var_A0.MoveNext
  loc_14A05CA:     GoTo loc_149FD3D
  loc_14A05CD:   End If
  loc_14A05CD: End If
  loc_14A05E0: If ((Len(var_AC) >= &HA) And (DocID <> vbNullString)) Then
  loc_14A05EE:   Set var_1D0 = Me.Txt
  loc_14A05F4:   Call 0.Method_KOTMessage0 (CInt(0), var_1D4)
  loc_14A0616:   Set var_1E8 = Me.Txt
  loc_14A061C:   Call 0.Method_KOTMessage0 (CInt(&HB), var_20C, var_1AC)
  loc_14A0624:   var_1D0 = var_20C.Tag
  loc_14A0634:   Set var_230 = Me.Txt
  loc_14A063A:   Call 0.Method_KOTMessage0 (CInt(&HB), var_234)
  loc_14A0649:   var_148 = Trim(CVar(var_234))
  loc_14A065B:   var_2BC = vbNullString
  loc_14A0698:   Proc_233_5_11B7494(DocID, global_152, CLng(Trim(CVar(var_1D4))), 0, var_1AC, var_AC, vbNullString)
  loc_14A06BE: End If
  loc_14A06C3: Set var_A0 = Nothing
  loc_14A06CB: Set var_B8 = Nothing
  loc_14A06CE: Exit Sub
  loc_14A06CF: ' Referenced from: 149FAA0
  loc_14A06CF: Proc_6_60_E62BC4(CStr("* NC LOT *"), MemVar_1F920C8, CStr(var_148), var_2BC)
  loc_14A06D4: Exit Sub
End Sub

Public Sub Proc_30_77_1312924
  'Data Table: 589074
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_13121DE: Me.FGrid.Left = CVar(CDbl(&H2D))
  loc_13121F9: Me.FGrid.Top = CVar(CDbl(1600))
  loc_1312214: Me.FGrid.Height = CVar(CDbl(6000))
  loc_131222F: Me.FGrid.Width = CVar(CDbl(9500))
  loc_131224A: Me.DGItem.Left = CVar(CDbl(2420))
  loc_1312265: Me.DGItem.Top = CVar(CDbl(825))
  loc_131227B: Set var_A8 = Me.Txt
  loc_1312281: Call 0.Method_Proc_30_77_13129240 (CInt(4), var_AC)
  loc_13122A0: Me.DGTable.Left = CVar(var_AC.Left)
  loc_13122BC: Set var_B4 = Me.Txt
  loc_13122C2: Call 0.Method_Proc_30_77_13129240 (CInt(4), var_B8)
  loc_13122DD: Set var_A8 = Me.Txt
  loc_13122E3: Call 0.Method_Proc_30_77_13129240 (CInt(4), var_AC)
  loc_13122FB: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H32))) 'Single
  loc_131230A: Me.DGTable.Top = CVar(var_AC.Left)
  loc_131232A: Set var_A8 = Me.Txt
  loc_1312330: Call 0.Method_Proc_30_77_13129240 (CInt(5), var_AC)
  loc_131234F: Me.DGWaiter.Left = CVar(var_AC.Left)
  loc_131236B: Set var_B4 = Me.Txt
  loc_1312371: Call 0.Method_Proc_30_77_13129240 (CInt(5), var_B8)
  loc_131238C: Set var_A8 = Me.Txt
  loc_1312392: Call 0.Method_Proc_30_77_13129240 (CInt(5), var_AC)
  loc_13123AA: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H32))) 'Single
  loc_13123B9: Me.DGWaiter.Top = CVar(var_AC.Left)
  loc_13123D9: Set var_A8 = Me.Txt
  loc_13123DF: Call 0.Method_Proc_30_77_13129240 (CInt(&HB), var_AC)
  loc_13123FE: Me.DGMember.Left = CVar(var_AC.Left)
  loc_131241A: Set var_B4 = Me.Txt
  loc_1312420: Call 0.Method_Proc_30_77_13129240 (CInt(&HB), var_B8)
  loc_131243B: Set var_A8 = Me.Txt
  loc_1312441: Call 0.Method_Proc_30_77_13129240 (CInt(&HB), var_AC)
  loc_1312459: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H32))) 'Single
  loc_1312468: Me.DGMember.Top = CVar(var_AC.Left)
  loc_131247E: Set var_C4 = Me.FGrid
  loc_1312495: global_104 = CStr(CLng(var_C4.BackColor))
  loc_13124AB: var_C4.Cols = &HF
  loc_13124B3: var_94 = CVar(CLng(0)) 'Long
  loc_13124B8: var_E8 = &H12C
  loc_13124C4: LateIdCallSt
  loc_13124CC: var_94 = 0
  loc_13124D8: var_E8 = CVar(CLng(1)) 'Long
  loc_13124DD: var_108 = "Rest"
  loc_13124E6: LateIdCallSt
  loc_13124F1: var_94 = CVar(CLng(1)) 'Long
  loc_13124FC: var_E8 = CVar(CInt(1)) 'Integer
  loc_1312503: LateIdCallSt
  loc_131250E: var_94 = CVar(CLng(1)) 'Long
  loc_1312513: var_E8 = 0
  loc_131251F: LateIdCallSt
  loc_1312527: var_94 = 0
  loc_1312533: var_E8 = CVar(CLng(2)) 'Long
  loc_1312538: var_108 = "Rest."
  loc_1312541: LateIdCallSt
  loc_131254C: var_94 = CVar(CLng(2)) 'Long
  loc_1312557: var_E8 = CVar(CInt(1)) 'Integer
  loc_131255E: LateIdCallSt
  loc_1312569: var_94 = CVar(CLng(2)) 'Long
  loc_131256E: var_E8 = &H226
  loc_131257A: LateIdCallSt
  loc_1312582: var_94 = 0
  loc_131258E: var_E8 = CVar(CLng(3)) 'Long
  loc_1312593: var_108 = "Code"
  loc_131259C: LateIdCallSt
  loc_13125A7: var_94 = CVar(CLng(3)) 'Long
  loc_13125B2: var_E8 = CVar(CInt(1)) 'Integer
  loc_13125B9: LateIdCallSt
  loc_13125C4: var_94 = CVar(CLng(3)) 'Long
  loc_13125C9: var_E8 = &H23F
  loc_13125D5: LateIdCallSt
  loc_13125DD: var_94 = 0
  loc_13125E9: var_E8 = CVar(CLng(4)) 'Long
  loc_13125EE: var_108 = "Item Name"
  loc_13125F7: LateIdCallSt
  loc_1312602: var_94 = CVar(CLng(4)) 'Long
  loc_131260D: var_E8 = CVar(CInt(1)) 'Integer
  loc_1312614: LateIdCallSt
  loc_131261F: var_94 = CVar(CLng(4)) 'Long
  loc_1312624: var_E8 = &HCB2
  loc_1312630: LateIdCallSt
  loc_1312638: var_94 = 0
  loc_1312644: var_E8 = CVar(CLng(5)) 'Long
  loc_1312649: var_108 = "Unit"
  loc_1312652: LateIdCallSt
  loc_131265D: var_94 = CVar(CLng(5)) 'Long
  loc_1312668: var_E8 = CVar(CInt(1)) 'Integer
  loc_131266F: LateIdCallSt
  loc_131267A: var_94 = CVar(CLng(5)) 'Long
  loc_131267F: var_E8 = &H389
  loc_131268B: LateIdCallSt
  loc_1312693: var_94 = 0
  loc_131269F: var_E8 = CVar(CLng(6)) 'Long
  loc_13126A4: var_108 = "Description"
  loc_13126AD: LateIdCallSt
  loc_13126B8: var_94 = CVar(CLng(6)) 'Long
  loc_13126C3: var_E8 = CVar(CInt(1)) 'Integer
  loc_13126CA: LateIdCallSt
  loc_13126D5: var_94 = CVar(CLng(6)) 'Long
  loc_13126E0: var_E8 = CVar(CInt(1)) 'Integer
  loc_13126E7: LateIdCallSt
  loc_13126F2: var_94 = CVar(CLng(6)) 'Long
  loc_13126F7: var_E8 = &H497
  loc_1312703: LateIdCallSt
  loc_131270B: var_94 = 0
  loc_1312717: var_E8 = CVar(CLng(7)) 'Long
  loc_131271C: var_108 = "Qty"
  loc_1312725: LateIdCallSt
  loc_1312730: var_94 = CVar(CLng(7)) 'Long
  loc_131273B: var_E8 = CVar(CInt(7)) 'Integer
  loc_1312742: LateIdCallSt
  loc_131274D: var_94 = CVar(CLng(7)) 'Long
  loc_1312758: var_E8 = CVar(CInt(7)) 'Integer
  loc_131275F: LateIdCallSt
  loc_131276A: var_94 = CVar(CLng(7)) 'Long
  loc_131276F: var_E8 = &H352
  loc_131277B: LateIdCallSt
  loc_1312783: var_94 = 0
  loc_131278F: var_E8 = CVar(CLng(8)) 'Long
  loc_1312794: var_108 = "Rate"
  loc_131279D: LateIdCallSt
  loc_13127A8: var_94 = CVar(CLng(8)) 'Long
  loc_13127B3: var_E8 = CVar(CInt(7)) 'Integer
  loc_13127BA: LateIdCallSt
  loc_13127C5: var_94 = CVar(CLng(8)) 'Long
  loc_13127D0: var_E8 = CVar(CInt(7)) 'Integer
  loc_13127D7: LateIdCallSt
  loc_13127E2: var_94 = CVar(CLng(8)) 'Long
  loc_13127E7: var_E8 = &H41A
  loc_13127F3: LateIdCallSt
  loc_13127FB: var_94 = 0
  loc_1312807: var_E8 = CVar(CLng(9)) 'Long
  loc_131280C: var_108 = "Void"
  loc_1312815: LateIdCallSt
  loc_1312820: var_94 = CVar(CLng(9)) 'Long
  loc_131282B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1312832: LateIdCallSt
  loc_131283D: var_94 = CVar(CLng(9)) 'Long
  loc_1312848: var_E8 = CVar(CInt(1)) 'Integer
  loc_131284F: LateIdCallSt
  loc_131285A: var_94 = CVar(CLng(9)) 'Long
  loc_131285F: var_E8 = &H226
  loc_131286B: LateIdCallSt
  loc_1312876: var_94 = CVar(CLng(&HA)) 'Long
  loc_131287B: var_E8 = 0
  loc_1312887: LateIdCallSt
  loc_1312892: var_94 = CVar(CLng(&HB)) 'Long
  loc_1312897: var_E8 = 0
  loc_13128A3: LateIdCallSt
  loc_13128AE: var_94 = CVar(CLng(&HC)) 'Long
  loc_13128B3: var_E8 = 0
  loc_13128BF: LateIdCallSt
  loc_13128CA: var_94 = CVar(CLng(&HD)) 'Long
  loc_13128CF: var_E8 = 0
  loc_13128DB: LateIdCallSt
  loc_13128E6: var_94 = CVar(CLng(&HE)) 'Long
  loc_13128EB: var_E8 = 0
  loc_13128F7: LateIdCallSt
  loc_1312902: var_94 = CVar(CLng(&HF)) 'Long
  loc_1312907: var_E8 = 0
  loc_1312913: LateIdCallSt
  loc_131291D: Set var_C4 = Nothing 
  loc_1312921: Exit Sub
End Sub

Public Sub Proc_30_78_10582F0
  'Data Table: 589074
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_1058083: Me.LblPendingKot.Left = CDbl(10200)
  loc_105809A: Me.LblPendingKot.Top = CDbl(2700)
  loc_10580B5: Me.FGrid1.Left = CVar(CDbl(10200))
  loc_10580D0: Me.FGrid1.Top = CVar(CDbl(3000))
  loc_10580EB: Me.FGrid1.Height = CVar(CDbl(5750))
  loc_1058106: Me.FGrid1.Width = CVar(CDbl(5100))
  loc_1058112: Set var_AC = Me.FGrid1
  loc_1058129: global_104 = CStr(CLng(var_AC.BackColor))
  loc_105813F: var_AC.Cols = 5
  loc_1058147: var_98 = CVar(CLng(0)) 'Long
  loc_105814C: var_D0 = &H12C
  loc_1058158: LateIdCallSt
  loc_1058160: var_98 = 0
  loc_105816C: var_D0 = CVar(CLng(1)) 'Long
  loc_1058171: var_F0 = "KotNo"
  loc_105817A: LateIdCallSt
  loc_1058185: var_98 = CVar(CLng(1)) 'Long
  loc_1058190: var_D0 = CVar(CInt(1)) 'Integer
  loc_1058197: LateIdCallSt
  loc_10581A2: var_98 = CVar(CLng(1)) 'Long
  loc_10581A7: var_D0 = &H28A
  loc_10581B3: LateIdCallSt
  loc_10581BB: var_98 = 0
  loc_10581C7: var_D0 = CVar(CLng(2)) 'Long
  loc_10581CC: var_F0 = "Time"
  loc_10581D5: LateIdCallSt
  loc_10581E0: var_98 = CVar(CLng(2)) 'Long
  loc_10581EB: var_D0 = CVar(CInt(1)) 'Integer
  loc_10581F2: LateIdCallSt
  loc_10581FD: var_98 = CVar(CLng(2)) 'Long
  loc_1058202: var_D0 = &H258
  loc_105820E: LateIdCallSt
  loc_1058216: var_98 = 0
  loc_1058222: var_D0 = CVar(CLng(3)) 'Long
  loc_1058227: var_F0 = "Item Name"
  loc_1058230: LateIdCallSt
  loc_105823B: var_98 = CVar(CLng(3)) 'Long
  loc_1058246: var_D0 = CVar(CInt(1)) 'Integer
  loc_105824D: LateIdCallSt
  loc_1058258: var_98 = CVar(CLng(3)) 'Long
  loc_105825D: var_D0 = &H9C4
  loc_1058269: LateIdCallSt
  loc_1058271: var_98 = 0
  loc_105827D: var_D0 = CVar(CLng(4)) 'Long
  loc_1058282: var_F0 = "Qty"
  loc_105828B: LateIdCallSt
  loc_1058296: var_98 = CVar(CLng(4)) 'Long
  loc_10582A1: var_D0 = CVar(CInt(7)) 'Integer
  loc_10582A8: LateIdCallSt
  loc_10582B3: var_98 = CVar(CLng(4)) 'Long
  loc_10582BE: var_D0 = CVar(CInt(7)) 'Integer
  loc_10582C5: LateIdCallSt
  loc_10582D0: var_98 = CVar(CLng(4)) 'Long
  loc_10582D5: var_D0 = &H2BC
  loc_10582E1: LateIdCallSt
  loc_10582EB: Set var_AC = Nothing 
  loc_10582EF: Exit Sub
End Sub

Public Sub Proc_30_79_11DC604
  'Data Table: 589074
  Dim var_9C As Variant
  Dim var_88 As Label
  Dim var_C8 As Variant
  Dim var_E8 As String
  loc_11DC178: Set var_88 = Me.FGrid2
  loc_11DC18A: Me.LblPendingKotItem.Top = CDbl(2625)
  loc_11DC1A1: Me.LblPendingKotItem.Left = CDbl(10200)
  loc_11DC1B5: var_88.Left = CVar(CDbl(9500))
  loc_11DC1E5: var_9C = CVar((Me.LblPendingKotItem.Top + Me.LblPendingKotItem.Height)) 'Single
  loc_11DC1ED: var_88.Top = CVar(CDbl(9500))
  loc_11DC205: var_88.Height = CVar(CDbl(5750))
  loc_11DC216: var_88.Width = CVar(CDbl(7170))
  loc_11DC224: var_88.Tag = "Rst1"
  loc_11DC229: var_9C = 9
  loc_11DC23A: var_9C = 0
  loc_11DC243: var_C8 = &H32
  loc_11DC24F: LateIdCallSt
  loc_11DC257: var_9C = 0
  loc_11DC260: var_C8 = 1
  loc_11DC269: var_E8 = "KotNo"
  loc_11DC272: LateIdCallSt
  loc_11DC27A: var_9C = 1
  loc_11DC289: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DC290: LateIdCallSt
  loc_11DC298: var_9C = 1
  loc_11DC2A7: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DC2AE: LateIdCallSt
  loc_11DC2B6: var_9C = 1
  loc_11DC2BF: var_C8 = &H2BC
  loc_11DC2CB: LateIdCallSt
  loc_11DC2D3: var_9C = 0
  loc_11DC2DC: var_C8 = 2
  loc_11DC2E5: var_E8 = "Date"
  loc_11DC2EE: LateIdCallSt
  loc_11DC2F6: var_9C = 2
  loc_11DC305: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DC30C: LateIdCallSt
  loc_11DC314: var_9C = 2
  loc_11DC323: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DC32A: LateIdCallSt
  loc_11DC332: var_9C = 2
  loc_11DC33B: var_C8 = &H384
  loc_11DC347: LateIdCallSt
  loc_11DC34F: var_9C = 0
  loc_11DC358: var_C8 = 3
  loc_11DC361: var_E8 = "Time"
  loc_11DC36A: LateIdCallSt
  loc_11DC372: var_9C = 3
  loc_11DC381: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DC388: LateIdCallSt
  loc_11DC390: var_9C = 3
  loc_11DC39F: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DC3A6: LateIdCallSt
  loc_11DC3AE: var_9C = 3
  loc_11DC3B7: var_C8 = &H258
  loc_11DC3C3: LateIdCallSt
  loc_11DC3CB: var_9C = 0
  loc_11DC3D4: var_C8 = 4
  loc_11DC3DD: var_E8 = "Waiter"
  loc_11DC3E6: LateIdCallSt
  loc_11DC3EE: var_9C = 4
  loc_11DC3FD: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DC404: LateIdCallSt
  loc_11DC40C: var_9C = 4
  loc_11DC41B: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DC422: LateIdCallSt
  loc_11DC42A: var_9C = 4
  loc_11DC433: var_C8 = &H514
  loc_11DC43F: LateIdCallSt
  loc_11DC447: var_9C = 0
  loc_11DC450: var_C8 = 5
  loc_11DC459: var_E8 = "Table"
  loc_11DC462: LateIdCallSt
  loc_11DC46A: var_9C = 5
  loc_11DC479: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DC480: LateIdCallSt
  loc_11DC488: var_9C = 5
  loc_11DC497: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DC49E: LateIdCallSt
  loc_11DC4A6: var_9C = 5
  loc_11DC4AF: var_C8 = &H28A
  loc_11DC4BB: LateIdCallSt
  loc_11DC4C3: var_9C = 0
  loc_11DC4CC: var_C8 = 6
  loc_11DC4D5: var_E8 = "Product"
  loc_11DC4DE: LateIdCallSt
  loc_11DC4E6: var_9C = 6
  loc_11DC4F5: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DC4FC: LateIdCallSt
  loc_11DC504: var_9C = 6
  loc_11DC513: var_C8 = CVar(CInt(1)) 'Integer
  loc_11DC51A: LateIdCallSt
  loc_11DC522: var_9C = 6
  loc_11DC52B: var_C8 = &H898
  loc_11DC537: LateIdCallSt
  loc_11DC53F: var_9C = 0
  loc_11DC548: var_C8 = 7
  loc_11DC551: var_E8 = "Qty."
  loc_11DC55A: LateIdCallSt
  loc_11DC562: var_9C = 7
  loc_11DC571: var_C8 = CVar(CInt(7)) 'Integer
  loc_11DC578: LateIdCallSt
  loc_11DC580: var_9C = 7
  loc_11DC58F: var_C8 = CVar(CInt(7)) 'Integer
  loc_11DC596: LateIdCallSt
  loc_11DC59E: var_9C = 7
  loc_11DC5A7: var_C8 = &H1EA
  loc_11DC5B3: LateIdCallSt
  loc_11DC5BB: var_9C = 0
  loc_11DC5C4: var_C8 = 8
  loc_11DC5CD: var_E8 = "DocID"
  loc_11DC5D6: LateIdCallSt
  loc_11DC5DE: var_9C = 8
  loc_11DC5E7: var_C8 = 0
  loc_11DC5F3: LateIdCallSt
  loc_11DC5FD: Set var_88 = Nothing 
  loc_11DC601: Exit Sub
End Sub

Public Sub Proc_30_80_1928394
  'Data Table: 589074
  Dim var_E8 As Variant
  Dim var_F0 As String
  Dim var_124 As Variant
  Dim var_100 As Variant
  Dim Me As Recordset15
  Dim var_104 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_158 As String
  Dim var_15C As String
  Dim unk_589093 As Connection15
  Dim var_160 As Variant
  Dim var_D0 As Recordset15
  Dim var_C0 As Recordset15
  Dim var_BC As Recordset15
  Dim var_114 As Variant
  Dim var_B8 As Recordset15
  Dim var_96 As Integer
  Dim var_17C As String
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_1E4 As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_204 As Variant
  Dim var_214 As Variant
  Dim var_248 As Variant
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_280 As Variant
  Dim var_2A4 As Variant
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_3E4 As Variant
  Dim var_E4 As Double
  Dim var_2B4 As Variant
  Dim var_2C4 As Variant
  Dim var_3C4 As Variant
  Dim var_294 As Variant
  loc_192581C: On Error Goto loc_1928386
  loc_1925822: MemVar_1F923C0 = "N"
  loc_1925829: MemVar_1F923C4 = "N"
  loc_1925830: MemVar_1F923C8 = "K"
  loc_192584F: If (Me.ChkNCKOT.Value <> 1) Then
  loc_1925857:   Proc_30_80_1928394 = 0
  loc_192585D: End If
  loc_1925864: var_F0 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (KOT K Left Join Waiter W on K.Waiter=W.Code) "
  loc_19258A9: var_8C = CStr(CVar(var_F0 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_19258C8: var_124 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.rate, Depart.ShortName From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_19258E8: var_104 = Me.Fields.Item("SearchCode")
  loc_1925906: var_90 = CStr(var_124 & var_104.Value & "'")
  loc_1925923: If (var_8C = vbNullString) Then
  loc_192592B:   Proc_30_80_1928394 = 0
  loc_1925931: End If
  loc_1925939: If (var_90 = vbNullString) Then
  loc_1925941:   Proc_30_80_1928394 = 0
  loc_1925947: End If
  loc_1925965: Set var_E8 = Me.Txt
  loc_192596B: Call 0.Method_Proc_30_80_19283940 (CInt(4), var_104, var_F0, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='")
  loc_1925973: var_114 = var_104.Text
  loc_192597C: var_158 = -1 & var_F0
  loc_192598C: unk_589093.Execute var_158 & "' AND CONTRADOCID IS NULL", var_160, 
  loc_19259B5: var_144 = 0
  loc_19259E5: unk_589093.Execute "Select CKOTPrintPath From Depart Where Code='" & LocalRestCode & "'", var_114, -1
  loc_19259F5: var_144 = var_104.Item(var_104)
  loc_19259FD: var_160 = var_160.Value
  loc_1925A0A: var_D4 = Proc_6_38_E68A98(var_124)
  loc_1925A38: var_F0 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F92078
  loc_1925A48: unk_589093.Execute var_F0 & "MK'", var_114, -1
  loc_1925A53: Set var_C0 = var_E8.Fields
  loc_1925A77: If (var_160.RecordCount = 1) Then
  loc_1925A7D:   var_CC = "New Order"
  loc_1925A83: Else
  loc_1925A8A:   Set var_E8 = Me.LblState
  loc_1925A98:   var_CC = var_E8.Caption
  loc_1925A9E: End If
  loc_1925AB4: unk_589093.Execute var_8C, var_114, -1
  loc_1925ABF: Set var_B8 = var_E8
  loc_1925AC8: ' Referenced from: 1928350
  loc_1925AD7: If Not(var_C0.EOF) Then
  loc_1925AF0:   unk_589093.Execute "SELECT KOTPrinting FROM Enviro", var_114, -1
  loc_1925AFB:   Set var_D0 = var_E8
  loc_1925B0B:   var_124 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1925B23:   var_E8 = Me.Fields
  loc_1925B33:   var_114 = var_E8.Item("SearchCode").Value
  loc_1925B74:   unk_589093.Execute CStr(var_124 & var_114 & "' and K.VoidYN<>'Y'"), var_114, -1
  loc_1925B7F:   Set var_BC = var_E8
  loc_1925B9C:   If (var_BC.RecordCount > 0) Then
  loc_1925BAE:     var_E8 = var_C0.Fields
  loc_1925BCD:     var_174 = Trim(CVar(var_E8.Item("PrintType"))) 'Variant
  loc_1925BE2:     If (var_174 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1925BF2:       Call Proc_30_86_EFAC0C(New, var_E8, var_E8, var_E8)
  loc_1925BFA:       Set var_D8 = var_E8
  loc_1925C00:       Me.Recordset15.MoveFirst
  loc_1925C05:       ' Referenced from: 192687F
  loc_1925C14:       If Not(var_B8.EOF) Then
  loc_1925C2D:         If (0 = 0) Then
  loc_1925C4E:           Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString, 1)
  loc_1925C8A:           var_C4 = Replace(CStr(Space(&H26)), " ", "-", 1, -1, 0)
  loc_1925CC1:           var_124 = CVar(Me.LblRest.Caption) 'String
  loc_1925CC4:           var_134 = (Space(1) + var_124)
  loc_1925CD9:           Call Proc_30_87_F148A8(var_D8, vbNullString, CStr(var_124 & Space(1)), vbNullString)
  loc_1925D0B:           Call Proc_30_87_F148A8(var_D8, vbNullString, " * NC Bill *", vbNullString)
  loc_1925D19:           var_96 = &H12
  loc_1925D3A:           Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString, var_96)
  loc_1925D66:           Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1925D83:           var_E8 = var_B8.Fields
  loc_1925D9A:           Proc_6_39_E7C810(var_124, CVar(var_E8.Item("VNo")), var_96)
  loc_1925DD7:           Call Proc_30_87_F148A8(var_D8, vbNullString, " V No.     : " & Proc_6_45_EAD428(CStr(var_124), &HA, var_E8))
  loc_1925E04:           var_E8 = var_B8.Fields
  loc_1925EA7:           Call Proc_30_87_F148A8(var_D8, vbNullString, " Date.     : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_E8.Item("VDate")), vbNullString), &HC) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")), var_E8), 8))
  loc_1925EEE:           var_104 = var_B8.Fields.Item("Remarks")
  loc_1925F39:           Call Proc_30_87_F148A8(var_D8, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104), vbNullString), &H1E))
  loc_1925F6B:           Set var_E8 = Me.Label1
  loc_1925F71:           Call 0.Method_Proc_30_80_19283940 (2, var_104)
  loc_1925FFA:           var_190 = Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")), vbNullString)), "000")), 5, 1)
  loc_1926000:           var_17C = vbNullString
  loc_192600F:           var_1B4 = (Space(1) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA)))
  loc_1926018:           var_1C4 = (var_1B4 + ": ")
  loc_1926022:           var_234 = (var_1C4 + CVar(var_190))
  loc_1926037:           Call Proc_30_87_F148A8(var_D8, vbNullString, CStr(var_234))
  loc_1926089:           Call Proc_30_87_F148A8(var_D8, vbNullString, var_C4, vbNullString)
  loc_1926095:         End If
  loc_19260BB:         var_134 = (var_17C + CVar(Proc_6_45_EAD428("ITEM NAME", &H12, Space(1))))
  loc_19260CF:         var_1B4 = (Trim(CVar(var_104)) + Space(1))
  loc_19260E9:         var_1D4 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 3, var_1B4)))
  loc_19260F5:         var_1E4 = Space(1)
  loc_19260FD:         var_204 = (CVar(var_B8.Fields.Item("TableNo")) + var_1E4)
  loc_1926117:         var_224 = ("000" + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_192612B:         var_248 = (CVar(var_190) + Space(1))
  loc_1926145:         var_26C = (var_248 + CVar(Proc_6_52_EAD4F4("Amount", 7)))
  loc_192617C:         var_158 = vbNullString
  loc_1926191:         Call Proc_30_87_F148A8(var_D8, vbNullString, CStr(var_26C))
  loc_19261A0:         var_158 = vbNullString
  loc_19261B5:         Call Proc_30_87_F148A8(var_D8, vbNullString, var_C4)
  loc_19261C7:         var_96 = (var_96 + 4)
  loc_19261CD:         var_BC.MoveFirst
  loc_19261D2:         ' Referenced from: 19264EC
  loc_19261E1:         If Not(var_BC.EOF) Then
  loc_1926206:           var_124 = var_BC.Fields.Item("ItemName").Value
  loc_1926231:           Proc_6_39_E7C810(var_1E4, CVar(var_BC.Fields.Item("qty")), var_96)
  loc_1926259:           var_280 = "Rate"
  loc_192627C:           Proc_6_39_E7C810(var_294, CVar(var_BC.Fields.Item(var_280)), 1, 1)
  loc_192628B:           var_2A4 = "0.00"
  loc_19262C7:           Proc_6_39_E7C810(var_33C, CVar(var_BC.Fields.Item("qty")), 1, 1)
  loc_19262F2:           Proc_6_39_E7C810(var_374, CVar(var_BC.Fields.Item("Rate")), var_158)
  loc_192634A:           var_154 = (1 + CVar(Proc_6_45_EAD428(CStr(var_124), &H12, Space(1), 1)))
  loc_192635E:           var_1C4 = (Space(1) + Space(1))
  loc_1926377:           var_234 = (var_158 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E4, "0")), 3, CVar(Proc_6_52_EAD4F4("Qty", 3, Space(1))))))
  loc_192638B:           var_25C = (Space(1) + Space(1))
  loc_19263A4:           var_2E4 = (CVar(Proc_6_52_EAD4F4("Amount", 7)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_294, var_2A4)), 6)))
  loc_19263B8:           var_304 = (var_2E4 + Space(1))
  loc_19263D1:           var_3E4 = (var_304 + CVar(Proc_6_52_EAD4F4(CStr(Format((var_33C * var_374), "0.00")), 7)))
  loc_1926437:           var_1F4 = CVar(var_E4) 'Double
  loc_1926461:           Proc_6_39_E7C810(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_192648F:           Proc_6_39_E7C810(Space(1), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_192649B:           var_1C4 = (var_124 + (var_1F4 * Space(1)))
  loc_19264A0:           var_E4 = CSng(CVar(Proc_6_52_EAD4F4("Qty", 3, (var_1F4 * Space(1)))))
  loc_19264BA:           var_158 = vbNullString
  loc_19264CF:           Call Proc_30_87_F148A8(var_D8, vbNullString, CStr(var_3E4))
  loc_19264E1:           var_96 = (var_96 + 1)
  loc_19264E7:           var_BC.MoveNext
  loc_19264EC:           GoTo loc_19261D2
  loc_19264EF:         End If
  loc_1926507:         Call Proc_30_87_F148A8(var_D8, vbNullString, var_C4, vbNullString)
  loc_1926531:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_192656C:         var_144 = "0.00"
  loc_1926571:         var_154 = var_144
  loc_19265BE:         var_134 = (Space(&H16) + CVar(Proc_6_45_EAD428("TOTAL  :", 8, var_96)))
  loc_19265C8:         var_204 = (CVar(var_BC.Fields.Item("Rate")) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_E4, var_154))))), 8, 1)))
  loc_19265DD:         Call Proc_30_87_F148A8(var_D8, vbNullString, CStr("0"), vbNullString)
  loc_1926628:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1926639:         var_100 = "WaiterName"
  loc_1926678:         var_17C = vbNullString
  loc_1926698:         Call Proc_30_87_F148A8(var_D8, vbNullString, " Waiter Name  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item(var_100)), 1), &H14))
  loc_19266D2:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1926707:         Call Proc_30_87_F148A8(var_D8, vbNullString, " ** " & MemVar_1F9221C & " **", vbNullString)
  loc_192671A:         var_B8.MoveNext
  loc_192673D:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1926769:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1926795:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19267C1:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19267ED:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1926819:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1926845:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1926871:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_192687F:         GoTo loc_1925C05
  loc_1926882:       End If
  loc_1926885:       var_DC = "WinKOTPrint"
  loc_19268AC:       Set var_E8 = var_D8 
  loc_19268B3:       CreateFieldDefFile(var_E8, MemVar_1F920B4 & "\" & var_DC & ".ttx", &HFF)
  loc_19268E5:       var_158 = MemVar_1F920B4 & "\" & var_DC
  loc_19268F5:       Call 0.Method_arg_1C (var_158 & ".RPT", var_100, var_E8)
  loc_1926900:       MemVar_1F921E4 = var_E8
  loc_1926929:       Call 0.Method_arg_64 (var_E8, CVar(var_E8), var_144, var_1F4)
  loc_1926931:       Call 0.Method_arg_2C (var_17C, var_158)
  loc_1926941:       If (var_D4 <> vbNullString) Then
  loc_1926962:         If CBool(Ucase(var_D4) <> "PRN") Then
  loc_1926968:           Call Proc_30_84_F0F128(var_D4)
  loc_192696D:         End If
  loc_192696D:       End If
  loc_192698A:       Call 0.Method_Me8 (False, 1, var_1F4)
  loc_1926994:       Set var_D8 = Nothing
  loc_192699A:     Else
  loc_19269A5:       If Not (var_174 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_19269B3:         If (var_174 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_19269B6:         End If
  loc_19269B8:         Close 1
  loc_19269D8:         var_15C = "C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT"
  loc_19269DF:         Open var_15C For Output As 1 Len = &HFF
  loc_19269EF:         var_B8.MoveFirst
  loc_19269F4:         ' Referenced from:   1927492
  loc_1926A03:         If Not(var_B8.EOF) Then
  loc_1926A08:           var_96 = 0
  loc_1926A1C:           If (var_96 = 0) Then
  loc_1926A21:             Print 1
  loc_1926A55:             var_C4 = Replace(CStr(Space(&H38)), " ", "-", 1, -1, 0)
  loc_1926A9C:             Call Proc_30_103_EF9B84(Proc_6_45_EAD428(Me.LblRest.Caption, &H14, 1, var_96), "D", &H28, var_17C)
  loc_1926AA6:             Print 1, var_17C
  loc_1926AE4:             Call Proc_30_103_EF9B84(Proc_6_45_EAD428("* NC Bill *", &H14, var_280), "D", &H28)
  loc_1926AEE:             Print 1, var_15C
  loc_1926B06:             Print 1
  loc_1926B0E:             Print 1
  loc_1926B47:             Proc_6_39_E7C810(var_154, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1926B69:             var_124 = (Chr(&HF) + "V No.     :   ")
  loc_1926B73:             var_1C4 = (CVar(Proc_6_45_EAD428("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EAD428(CStr(var_154), &HA, var_15C)))
  loc_1926B79:             Print 1, CVar(CStr(Format(var_E4, var_154)))
  loc_1926C2B:             var_124 = (Chr(&HF) + "Date.     :   ")
  loc_1926C35:             var_1B4 = (CVar(Proc_6_45_EAD428("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC)))
  loc_1926C3E:             var_1C4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC))), &HA, Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2A4))) + " ")
  loc_1926C48:             var_204 = (CVar(CStr(Format(var_E4, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC))))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1926C4E:             Print 1, "0"
  loc_1926CA3:             var_104 = var_B8.Fields.Item("Remarks")
  loc_1926CE0:             var_124 = (Chr(&HF) + "Remarks :   ")
  loc_1926CEA:             var_1B4 = (CVar(Proc_6_45_EAD428("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104)), &H32)))
  loc_1926CF1:             var_1D4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104)), &H32))), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104)), &H32))) + Chr(&H12))
  loc_1926CF7:             Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1926D30:             Set var_E8 = Me.Label1
  loc_1926D36:             Call 0.Method_Proc_30_80_19283940 (2, var_104)
  loc_1926DCB:             var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA)))
  loc_1926DD4:             var_1C4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA))) + ":   ")
  loc_1926DDB:             var_224 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_1926DDE:             var_234 = (Chr(&H12) + var_224)
  loc_1926DE4:             Print 1, Space(1)
  loc_1926E2F:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1926E35:             Print 1, CVar(var_104)
  loc_1926E42:           End If
  loc_1926E68:           var_134 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1926E82:           var_1B4 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_104)))))
  loc_1926E8E:           var_1C4 = Space(3)
  loc_1926E96:           var_1D4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_104))))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA))) + var_1C4)
  loc_1926EB0:           var_204 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_1926EC4:           var_224 = ("000" + Space(3))
  loc_1926EDE:           var_248 = (var_224 + CVar(Proc_6_52_EAD4F4("Amount", &HA)))
  loc_1926F24:           var_124 = (Chr(&HF) + CVar(CStr(Space(1))))
  loc_1926F2A:           Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1926F4D:           var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1926F53:           Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1926F66:           var_96 = (var_96 + 4)
  loc_1926F6C:           var_BC.MoveFirst
  loc_1926F71:           ' Referenced from:   1927278
  loc_1926F80:           If Not(var_BC.EOF) Then
  loc_1926FD0:             Proc_6_39_E7C810(var_1C4, CVar(var_BC.Fields.Item("qty")))
  loc_192701B:             Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Amount", 7)), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1927066:             Proc_6_39_E7C810(var_304, CVar(var_BC.Fields.Item("qty")), 1, 1)
  loc_1927091:             Proc_6_39_E7C810(var_33C, CVar(var_BC.Fields.Item("Rate")), 1)
  loc_19270E1:             var_124 = Space(3)
  loc_19270E9:             var_154 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + var_124)
  loc_19270FF:             var_204 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_1C4, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("ItemName"))))))) 'String
  loc_1927102:             var_214 = (1 + var_204)
  loc_1927116:             var_234 = (Space(3) + Space(3))
  loc_192712C:             var_2B4 = CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_52_EAD4F4("Amount", 7)), "0.00")), 6, CVar(Proc_6_52_EAD4F4("Amount", &HA)))) 'String
  loc_192712F:             var_2C4 = (&H12 + var_2B4)
  loc_1927143:             var_2E4 = (Format(Format(CVar(Proc_6_52_EAD4F4("Amount", 7)), "0.00"), "0.00") + Space(3))
  loc_192715C:             var_3C4 = (var_2E4 + CVar(Proc_6_52_EAD4F4(CStr(Format((var_304 * var_33C), "0.00")), &HA)))
  loc_19271E8:             Proc_6_39_E7C810(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_1927216:             Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty"))))), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_1927222:             var_1C4 = (var_E4 + (CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))))
  loc_1927227:             var_E4 = CSng(var_1C4)
  loc_1927254:             var_124 = (Chr(&HF) + CVar(CStr(Format((var_33C * (var_304 * var_33C)), "0.00"))))
  loc_192725A:             Print 1, var_124
  loc_192726D:             var_96 = (var_96 + 1)
  loc_1927273:             var_BC.MoveNext
  loc_1927278:             GoTo loc_1926F71
  loc_192727B:           End If
  loc_1927291:           var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1927297:           Print 1, var_124
  loc_19272A9:           Print 1, vbNullString
  loc_192732F:           var_134 = (Chr(&HF) + Space(&H25))
  loc_1927339:           var_1B4 = (CVar(var_BC.Fields.Item("Rate")) + CVar(Proc_6_45_EAD428("TOTAL  :", 8)))
  loc_1927343:           var_224 = ((CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_E4, "0.00"))))), &HB, 1)))
  loc_1927349:           Print 1, Space(3)
  loc_192737A:           Print 1, vbNullString
  loc_19273D4:           var_124 = (Chr(&HF) + "Waiter Name  :   ")
  loc_19273DE:           var_1B4 = (Space(&H25) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14)))
  loc_19273E4:           Print 1, (CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty"))))))
  loc_1927405:           Print 1
  loc_1927420:           var_124 = (Chr(&HF) + "** ")
  loc_192742A:           var_134 = (Space(&H25) + CVar(MemVar_1F9221C))
  loc_1927433:           var_154 = (CVar(var_B8.Fields.Item("WaiterName")) + " **")
  loc_1927439:           Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14))
  loc_192744D:           var_B8.MoveNext
  loc_1927454:           Print 1
  loc_192745C:           Print 1
  loc_1927464:           Print 1
  loc_192746C:           Print 1
  loc_1927474:           Print 1
  loc_192747C:           Print 1
  loc_1927484:           Print 1
  loc_192748C:           Print 1
  loc_1927492:           GoTo loc_19269F4
  loc_1927495:         End If
  loc_1927497:         Close 1
  loc_19274D2:         If (Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Printer")), &H12) <> vbNullString) Then
  loc_19274FA:           Open "C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1927558:           Print 1, CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT>") & var_C0.Fields.Item("Printer").Value
  loc_1927578:         Else
  loc_19275A2:           Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_19275B3:         End If
  loc_19275B5:         Close 1
  loc_19275BF:         If (MemVar_1F923B8 = "Y") Then
  loc_19275F1:           var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1927602:         Else
  loc_1927631:           var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_192763F:         End If
  loc_1927642:       Else
  loc_192764D:         If (var_174 = "3 INCH RUNNING PAPER (THERMAL PRINTER)""3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_1927652:           Close 1
  loc_1927679:           Open "C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1927689:           var_B8.MoveFirst
  loc_192768E:           ' Referenced from:     1928101
  loc_192769D:           If Not(var_B8.EOF) Then
  loc_19276AD:             var_94 = "* KOT *"
  loc_19276DE:             var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_19276ED:             If (0 = 0) Then
  loc_19276F2:               Print 1
  loc_1927721:               var_1B4 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1927764:               var_26C = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_192778E:               var_1E4 = (Chr(&HF) + Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) / 2))))
  loc_1927795:               var_224 = (CVar(CStr(Format(var_E4, "0.00"))) + Trim(CVar(Me.LblRest)))
  loc_192779C:               var_2C4 = (Space(3) + Space(CLng(("0.00" / 2))))
  loc_19277A3:               var_2E4 = (Format(("0.00" / 2), "0.00") + Chr(&H12))
  loc_19277A9:               Print 1, var_2E4
  loc_19277F7:               var_154 = (42 - Len(Trim(var_94)))
  loc_192782A:               var_224 = (42 - Len(Trim(var_94)))
  loc_1927854:               var_1D4 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_192785E:               var_1E4 = (Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) / 2))) + CVar(var_94))
  loc_1927865:               var_25C = (CVar(CStr(Format(var_E4, "0.00"))) + Space(CLng((Space(3) / 2))))
  loc_192786C:               var_294 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1927872:               Print 1, ("0.00" / 2)
  loc_1927891:               var_96 = &H12
  loc_1927896:               Print 1
  loc_192789E:               Print 1
  loc_19278D7:               Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("VNo")), var_96)
  loc_1927906:               var_124 = (Chr(&HF) + "KOT No.   :     ")
  loc_1927910:               var_1C4 = (Trim(var_94) + CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)))
  loc_1927917:               var_1E4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_192791D:               Print 1, CVar(CStr(Format(var_E4, "0.00")))
  loc_19279E0:               var_124 = (Chr(&HF) + "KOT Dt.   :     ")
  loc_19279EA:               var_1B4 = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_96), &HC)))
  loc_19279F3:               var_1C4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + " ")
  loc_19279FD:               var_204 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1927A04:               var_224 = (Trim(var_94) + Chr(&H12))
  loc_1927A0A:               Print 1, Space(3)
  loc_1927A63:               var_104 = var_B8.Fields.Item("Remarks")
  loc_1927AA0:               var_124 = (Chr(&HF) + "Remarks :     ")
  loc_1927AAA:               var_1B4 = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104)), &H20)))
  loc_1927AB1:               var_1D4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + Chr(&H12))
  loc_1927AB7:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1927AF0:               Set var_E8 = Me.Label1
  loc_1927AF6:               Call 0.Method_Proc_30_80_19283940 (2, var_104)
  loc_1927B98:               var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA)))
  loc_1927BA1:               var_1C4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + ":     ")
  loc_1927BA8:               var_224 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_1927BAB:               var_234 = (Chr(&H12) + var_224)
  loc_1927BB2:               var_25C = ((Space(3) / 2) + Chr(&H12))
  loc_1927BB8:               Print 1, Len(Trim(CVar(Me.LblRest)))
  loc_1927C14:               var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1927C1B:               var_154 = (CVar(var_104) + Chr(&H12))
  loc_1927C21:               Print 1, CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA))
  loc_1927C32:             End If
  loc_1927C58:             var_134 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Space(3))
  loc_1927C72:             var_1B4 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))))
  loc_1927C7E:             var_1C4 = Space(3)
  loc_1927C86:             var_1D4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + var_1C4)
  loc_1927CA0:             var_204 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_1927CE9:             var_124 = (Chr(&HF) + CVar(CStr("000")))
  loc_1927CF0:             var_154 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_1927CF6:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_1927D2A:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1927D31:             var_154 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_1927D37:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_1927D4E:             var_96 = (var_96 + 4)
  loc_1927D54:             var_BC.MoveFirst
  loc_1927D59:             ' Referenced from:     1927F28
  loc_1927D68:             If Not(var_BC.EOF) Then
  loc_1927DB8:               Proc_6_39_E7C810(var_1C4, CVar(var_BC.Fields.Item("qty")))
  loc_1927E03:               Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1927E4D:               var_154 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + Space(3))
  loc_1927E66:               var_214 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1C4, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))))))
  loc_1927E7A:               var_234 = (Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))), "000") + Space(3))
  loc_1927E93:               var_2C4 = (var_96 + CVar(Proc_6_52_EAD4F4(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 6, (Space(3) / 2))))
  loc_1927EF9:               var_124 = (Chr(&HF) + CVar(CStr(Format(Format(Len(Trim(CVar(Me.LblRest))), "0.00"), "0.00"))))
  loc_1927F00:               var_154 = (Space(3) + Chr(&H12))
  loc_1927F06:               Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_1927F1D:               var_96 = (var_96 + 1)
  loc_1927F23:               var_BC.MoveNext
  loc_1927F28:               GoTo loc_1927D59
  loc_1927F2B:             End If
  loc_1927F4E:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1927F55:             var_154 = (Space(3) + Chr(&H12))
  loc_1927F5B:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_1927FCD:             var_124 = (Chr(&HF) + "Waiter Name  :     ")
  loc_1927FD7:             var_1B4 = (Space(3) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), var_96), &H14)))
  loc_1927FDE:             var_1D4 = (CVar(var_BC.Fields.Item("qty")) + Chr(&H12))
  loc_1927FE4:             Print 1, "0.00"
  loc_192802C:             var_1B4 = Chr(&H12)
  loc_1928039:             var_124 = (Chr(&HF) + "***  ")
  loc_192804C:             var_1C4 = ("  ***" + var_1B4)
  loc_1928056:             Print 1, Space(3) & Trim(var_CC) & Chr(&H12)
  loc_192806F:             Print 1
  loc_192808A:             var_124 = (Chr(&HF) + "** ")
  loc_1928094:             var_134 = (Space(3) + CVar(MemVar_1F9221C))
  loc_192809D:             var_154 = (Trim(var_CC) + " **")
  loc_19280A3:             Print 1, Space(3) & Trim(var_CC)
  loc_19280B6:             Print 1
  loc_19280BE:             Print 1
  loc_19280E4:             var_134 = (Chr(&H1B) + Chr(&H6D))
  loc_19280EA:             Print 1, Trim(var_CC)
  loc_19280FC:             var_B8.MoveNext
  loc_1928101:             GoTo loc_192768E
  loc_1928104:           End If
  loc_1928106:           Close 1
  loc_1928141:           If (Proc_6_38_E68A98(CVar(var_C0.Fields.Item("Printer"))) <> vbNullString) Then
  loc_1928169:             Open "C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_19281C1:             var_134 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT>") & var_C0.Fields.Item("Printer").Value 
  loc_19281C7:             Print 1, var_134
  loc_19281E7:           Else
  loc_192820C:             Open "C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1928243:             Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_C0.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1928254:           End If
  loc_1928256:           Close 1
  loc_1928260:           If (MemVar_1F923B8 = "Y") Then
  loc_1928292:             var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_19282A3:           Else
  loc_19282D2:             var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_C0.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_19282E0:           End If
  loc_19282E0:         End If
  loc_19282E0:       End If
  loc_19282E0:     End If
  loc_19282E3:   Else
  loc_192832D:     MsgBox("Please Check Printer Setting of " & var_C0.Fields.Item("Name").Value & ".", &H40, Space(3) & Trim(var_CC), var_1B4, Chr(&H12))
  loc_1928348:   End If
  loc_192834B:   var_C0.MoveNext
  loc_1928350:   GoTo loc_1925AC8
  loc_1928353: End If
  loc_1928358: Set var_B8 = Nothing
  loc_1928360: Set var_BC = Nothing
  loc_1928368: Set var_C0 = Nothing
  loc_1928370: Set var_D0 = Nothing
  loc_1928378: Set var_D8 = Nothing
  loc_1928380: Proc_30_80_1928394 = &HFF
  loc_1928386: ' Referenced from: 192581C
  loc_1928386: Proc_6_60_E62BC4(var_E4)
  loc_192838B: Proc_30_80_1928394 = 
End Sub

Public Sub Proc_30_81_11AD218
  'Data Table: 589074
  Dim unk_589093 As Connection15
  Dim var_88 As Recordset15
  Dim var_E8 As Fields15
  Dim var_E4 As Variant
  Dim var_F8 As Fields15
  Dim var_12C As Variant
  Dim var_19C As Variant
  Dim var_F0 As TextBox
  Dim var_10C As TextBox
  loc_11ACEA0: If (Proc_275_12_130A7A4(2, var_90, var_8C, var_94, 0) = &HFF) Then
  loc_11ACEC7:   unk_589093.Execute "Select Code,Name,CardNo From SmartCardRegistration Where Code='" & var_8C & "'", var_E4, -1
  loc_11ACED2:   Set var_88 = var_E8
  loc_11ACEF6:   If (var_88.RecordCount > 0) Then
  loc_11ACF08:     var_E8 = var_88.Fields
  loc_11ACF10:     var_F0 = var_E8.Item("Code")
  loc_11ACF3B:     var_10C = var_88.Fields.Item("CardNo")
  loc_11ACF4C:     var_12C = CVar(Proc_6_38_E68A98(CVar(var_10C), var_9C)) 'String
  loc_11ACF52:     var_13C = Ucase(var_12C)
  loc_11ACFD0:     var_19C = CVar("Reg. No : " & Proc_6_38_E68A98(CVar(var_F0), var_E8, 0, 0) & vbCrLf & "Card No : ") & var_13C & vbCrLf & "Holder : " 
  loc_11ACFDB:     MsgBox(var_19C & Ucase(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")), 0))), &H40, "Smart Card Verification", var_234, var_254)
  loc_11AD01D:     If (var_94 = "Member") Then
  loc_11AD024:       Set var_E8 = Me.TopCtrl1
  loc_11AD02A:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_11AD043:       If (CStr() = "Add") Then
  loc_11AD054:         Set var_E8 = Me.Txt
  loc_11AD05A:         Call 0.Method_Proc_30_81_11AD2180 (CInt(&HB), var_F0)
  loc_11AD062:         var_F0.Text = "."
  loc_11AD07C:         Set var_E8 = Me.Txt
  loc_11AD082:         Call 0.Method_Proc_30_81_11AD2180 (CInt(&HB), var_F0)
  loc_11AD08A:         var_F0.Tag = var_9C
  loc_11AD0A2:         Call Txt_Validate(CInt(&HB))
  loc_11AD0A7:       End If
  loc_11AD0AA:     Else
  loc_11AD0AE:       Set var_E8 = Me.TopCtrl1
  loc_11AD0B4:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(0)
  loc_11AD0CD:       If (CStr() = "Add") Then
  loc_11AD106:         Set var_F8 = Me.Txt
  loc_11AD10C:         Call 0.Method_Proc_30_81_11AD2180 (CInt(&HB), var_10C)
  loc_11AD114:         var_10C.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")))
  loc_11AD15E:         Set var_F8 = Me.Txt
  loc_11AD164:         Call 0.Method_Proc_30_81_11AD2180 (CInt(&HB), var_10C)
  loc_11AD16C:         var_10C.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Code")))
  loc_11AD1B7:         Set var_F8 = Me.Txt
  loc_11AD1BD:         Call 0.Method_Proc_30_81_11AD2180 (CInt(var_98), var_10C)
  loc_11AD1C5:         var_10C.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")))
  loc_11AD1D9:       End If
  loc_11AD1D9:     End If
  loc_11AD1DC:   Else
  loc_11AD1FD:     MsgBox("This Smart Card is Not Registered!", &H10, "Smart Card Verification", var_12C, var_13C)
  loc_11AD20D:   End If
  loc_11AD20D: End If
  loc_11AD212: Set var_88 = Nothing
  loc_11AD215: Exit Sub
End Sub

Public Sub Proc_30_82_DFB5B0
  'Data Table: 589074
  loc_DFB5AC: Exit Sub
End Sub

Public Sub Proc_30_83_119D104
  'Data Table: 589074
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_B4 As Variant
  Dim var_C0 As String
  Dim unk_589093 As Connection15
  Dim var_88 As Recordset15
  Dim var_D4 As Variant
  Dim var_FC As Variant
  Dim var_100 As TextBox
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_B8 As String
  Dim var_13C As Variant
  Dim var_A8 As Variant
  Dim var_14C As Variant
  Dim var_EC As Variant
  Dim var_15C As Variant
  loc_119CD2B: Me.FGrid1.Redraw = False
  loc_119CD46: Me.FGrid1.Rows = 1
  loc_119CD53: global_268 = 1
  loc_119CD6D: var_B0 = "select *,K.Vno as KotNo,K.VTime as KotTime,M.name as ItemName,k.qty as ItemQty from (Kot k left join itemmast M on k.item=M.code and M.restcode=k.itemrestcode) where K.PENDING IN('Y')AND VOIDYN NOT IN('Y')And K.RestCode='" & LocalRestCode
  loc_119CD85: Set var_AC = Me.Txt
  loc_119CD8B: Call 0.Method_Proc_30_83_119D1040 (CInt(4), var_B4, var_B8, var_B0 & "' and (k.DelFlag<>'Y' or k.DelFlag Is NULL) And NCKOT<>'Y' AND K.RoomNo = '")
  loc_119CD93: var_D4 = var_B4.Text
  loc_119CD9C: var_C0 = -1 & var_B8
  loc_119CDAC: unk_589093.Execute var_C0 & "' order by K.Vno ", var_D8, global_268
  loc_119CDB7: Set var_88 = var_D8
  loc_119CDE7: If (var_88.RecordCount = 0) Then
  loc_119CDF9:   Me.FGrid1.Visible = False
  loc_119CE0D:   Me.LblPendingKot.Visible = False
  loc_119CE18: Else
  loc_119CE26:   Me.FGrid1.Visible = True
  loc_119CE3A:   Me.LblPendingKot.Visible = True
  loc_119CE50:   Set var_AC = Me.Label1
  loc_119CE56:   Call 0.Method_Proc_30_83_119D1040 (2, var_B4)
  loc_119CE6D:   var_FC = ("Running Item For The " + Trim(CVar(var_B4)))
  loc_119CE7F:   Set var_D8 = Me.Txt
  loc_119CE85:   Call 0.Method_Proc_30_83_119D1040 (CInt(4), var_100)
  loc_119CE98:   var_120 = (var_FC + CVar(var_100.Text))
  loc_119CEAA:   Me.LblPendingKot.Caption = CStr(var_120)
  loc_119CECA:   ' Referenced from:   119D0C1
  loc_119CED9:   If Not(var_88.EOF) Then
  loc_119CEE3:     var_98 = vbNullString
  loc_119CEFB:     var_98 = CVar(CLng(global_268)) 'Long
  loc_119CF03:     var_13C = CVar(CLng(0)) 'Long
  loc_119CF10:     var_D4 = CVar(CStr(global_268)) 'String
  loc_119CF17:     LateIdCallSt
  loc_119CF29:     var_A8 = CVar(CLng(global_268)) 'Long
  loc_119CF31:     var_14C = CVar(CLng(1)) 'Long
  loc_119CF61:     var_EC = CVar(CStr(var_88.Fields.Item("KOTNo").Value)) 'String
  loc_119CF68:     LateIdCallSt
  loc_119CF85:     var_A8 = CVar(CLng(global_268)) 'Long
  loc_119CF8D:     var_14C = CVar(CLng(2)) 'Long
  loc_119CFBD:     var_EC = CVar(CStr(var_88.Fields.Item("KotTime").Value)) 'String
  loc_119CFC4:     LateIdCallSt
  loc_119D016:     var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(3)), CVar(CLng(global_268)), Me.FGrid1, var_EC, CVar(CLng(3)), CVar(CLng(global_268)))) 'String
  loc_119D01D:     LateIdCallSt
  loc_119D052:     var_13C = CVar(CLng(global_268)) 'Long
  loc_119D05A:     var_15C = CVar(CLng(4)) 'Long
  loc_119D087:     var_110 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemQty")), "0.00"))) 'String
  loc_119D08E:     LateIdCallSt
  loc_119D0A6:     Set var_12C = Nothing 
  loc_119D0B6:     global_268 = (global_268 + 1)
  loc_119D0BC:     var_88.MoveNext
  loc_119D0C1:     GoTo loc_119CECA
  loc_119D0C4:   End If
  loc_119D0D7:   Me.FGrid1.FixedRows = 1
  loc_119D0DF: End If
  loc_119D0ED: Me.FGrid1.Redraw = True
  loc_119D0FA: Set var_88 = Nothing
  loc_119D0FD: Call Proc_30_78_10582F0(global_268, var_12C, var_110, 1, 1, var_15C, var_13C)
  loc_119D102: Exit Sub
End Sub

Public Sub Proc_30_84_F0F128(arg_C) 'F0F128
  'Data Table: 589074
  Dim var_94 As Integer
  Dim var_96 As Integer
  Dim var_C8 As Variant
  loc_F0F057: var_94 = CInt(InStr(1, arg_C, ",", 0))
  loc_F0F080: var_96 = CInt(InStr((InStr(1, arg_C, ",", 0) + 1), arg_C, ",", 0))
  loc_F0F089: var_C8 = CVar((var_94 - 1)) 'Integer
  loc_F0F0B9: var_C8 = CVar((var_96 - (var_94 + 1))) 'Integer
  loc_F0F0CE: var_D8 = Mid(arg_C, CLng((var_94 + 1)), var_C8)
  loc_F0F0E8: var_C8 = CVar((CInt(Len(arg_C)) - var_96)) 'Integer
  loc_F0F0FD: var_D8 = Mid(arg_C, CLng((var_96 + 1)), var_C8)
  loc_F0F11F: Call 0.Method_MeC (CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)))
  loc_F0F124: Exit Sub
End Sub

Public Sub Proc_30_85_1BE2170(arg_C) '1BE2170
  'Data Table: 589074
  Dim var_124 As Variant
  Dim var_104 As Variant
  Dim var_134 As Variant
  Dim var_138 As String
  Dim unk_589093 As Connection15
  Dim var_F4 As Recordset15
  Dim var_15C As Variant
  Dim var_114 As Variant
  Dim Me As Recordset15
  Dim var_164 As Variant
  Dim var_158 As Variant
  Dim var_174 As Variant
  Dim var_178 As String
  Dim var_17C As String
  Dim var_B8 As Recordset15
  Dim var_180 As Fields15
  Dim var_C0 As Recordset15
  Dim var_BC As Recordset15
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_194 As Variant
  Dim var_1E8 As Variant
  Dim var_1F8 As Variant
  Dim var_270 As Variant
  Dim var_148 As Variant
  Dim var_2F8 As String
  Dim var_2FC As String
  Dim var_1D8 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_218 As Variant
  Dim var_248 As Variant
  Dim var_340 As Variant
  Dim var_350 As Variant
  Dim var_E0 As Recordset15
  Dim var_238 As Variant
  Dim var_2F0 As Variant
  Dim var_32C As Variant
  Dim var_2F4 As String
  Dim var_2C0 As Variant
  Dim var_2D0 As Variant
  Dim var_2E0 As Variant
  Dim var_38C As Variant
  Dim var_3AC As Variant
  loc_1BDC99C: On Error Goto loc_1BE2165
  loc_1BDC9BC: Proc_6_17_EAA2B0(var_114, MemVar_1F92078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1BDC9D2: unk_589093.Execute CStr(var_158 & var_114), -1, var_15C
  loc_1BDC9DD: Set var_F4 = var_15C
  loc_1BDCA03: If (var_F4.RecordCount > 0) Then
  loc_1BDCA3D:   var_E4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_F4.Fields.Item("KOTHeader1"))))))
  loc_1BDCA83:   var_E8 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_F4.Fields.Item("KOTHeader2"))))))
  loc_1BDCAC9:   var_EC = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_F4.Fields.Item("KOTHeader3"))))))
  loc_1BDCB0F:   var_F0 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_F4.Fields.Item("KOTHeader4"))))))
  loc_1BDCB1E: End If
  loc_1BDCB23: Set var_F4 = Nothing
  loc_1BDCB29: MemVar_1F923C0 = "N"
  loc_1BDCB30: MemVar_1F923C4 = "N"
  loc_1BDCB37: MemVar_1F923C8 = "K"
  loc_1BDCB42: var_138 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,S.CardNo,S.Name As MemName,W.name as WaiterName,k.RoomNo as TableNo,K.NCKOT,K.NCTYPE,K.Remarks , K.ContraDocId, D.ShortName,K.GuarAtt,K.U_AE,K.TokenNo " & "From (((KOT K Left Join Waiter W on K.Waiter=W.Code) left join SubGroup S On K.Party=S.SubCode) Left Join Depart D on D.Code=K.RestCode) "
  loc_1BDCB87: var_8C = CStr(CVar(var_138 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1BDCBA6: var_134 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1BDCBC6: var_164 = Me.Fields.Item("SearchCode")
  loc_1BDCBD6: var_158 = var_134 & var_164.Value 
  loc_1BDCBDF: var_174 = var_158 & "'" 
  loc_1BDCBE4: var_90 = CStr(var_174)
  loc_1BDCC01: If (var_8C = vbNullString) Then
  loc_1BDCC09:   Proc_30_85_1BE2170 = 0
  loc_1BDCC0F: End If
  loc_1BDCC17: If (var_90 = vbNullString) Then
  loc_1BDCC1F:   Proc_30_85_1BE2170 = 0
  loc_1BDCC25: End If
  loc_1BDCC43: Set var_15C = Me.Txt
  loc_1BDCC49: Call 0.Method_Proc_30_85_1BE21700 (CInt(4), var_164, var_138, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='")
  loc_1BDCC51: var_114 = var_164.Text
  loc_1BDCC5A: var_178 = -1 & var_138
  loc_1BDCC6A: unk_589093.Execute var_178 & "' AND CONTRADOCID IS NULL", var_180, 
  loc_1BDCCA1: If (var_180.RecordCount = 1) Then
  loc_1BDCCA7:   var_CC = "New Order"
  loc_1BDCCAD: Else
  loc_1BDCCB4:   Set var_15C = Me.LblState
  loc_1BDCCC2:   var_CC = var_15C.Caption
  loc_1BDCCC8: End If
  loc_1BDCCDE: unk_589093.Execute var_8C, var_114, -1
  loc_1BDCCE9: Set var_B8 = var_15C
  loc_1BDCD01: var_15C = var_B8.Fields
  loc_1BDCD41: var_134 = CVar(var_B8.Fields.Item("ContraDocId")) 'Address
  loc_1BDCD68: If (var_15C And (Proc_6_38_E68A98(var_134, (Proc_6_38_E68A98(CVar(var_15C.Item("NCKOT"))) <> "Y")) <> vbNullString)) Then
  loc_1BDCD7E:   var_114 = "Sale Bill Already Generated !!"
  loc_1BDCD84:   MsgBox(var_114, &H40, var_134, var_158, var_174)
  loc_1BDCD99:   Proc_30_85_1BE2170 = 0
  loc_1BDCD9F: End If
  loc_1BDCDB6: var_138 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & LocalRestCode
  loc_1BDCDC6: unk_589093.Execute var_138 & "'", var_114, -1
  loc_1BDCDD1: Set var_C0 = var_15C
  loc_1BDCDE1: ' Referenced from: 1BE213F
  loc_1BDCDF0: If Not(var_C0.EOF) Then
  loc_1BDCDFA:   var_134 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1BDCE12:   var_15C = Me.Fields
  loc_1BDCE22:   var_114 = var_15C.Item("SearchCode").Value
  loc_1BDCE63:   unk_589093.Execute CStr(var_134 & var_114 & "'"), var_114, -1
  loc_1BDCE6E:   Set var_BC = var_15C
  loc_1BDCE7D:   var_160 = var_BC.RecordCount
  loc_1BDCE8B:   If (var_160 > 0) Then
  loc_1BDCE9D:     var_15C = var_C0.Fields
  loc_1BDCEBC:     var_1A8 = Trim(CVar(var_15C.Item("PrintType"))) 'Variant
  loc_1BDCED1:     If (var_1A8 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1BDCEE1:       Call Proc_30_86_EFAC0C(New, var_15C)
  loc_1BDCEE9:       Set var_DC = var_15C
  loc_1BDCEEF:       Me.Recordset15.MoveFirst
  loc_1BDCEF4:       ' Referenced from: 1BDDC82
  loc_1BDCF03:       If Not(var_B8.EOF) Then
  loc_1BDCF08:         var_96 = 0
  loc_1BDCF1F:         var_15C = var_B8.Fields
  loc_1BDD030:         var_2F0 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_15C.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_15C) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BDD039:         var_94 = CStr(var_2F0)
  loc_1BDD07D:         If (var_96 = 0) Then
  loc_1BDD083:           var_17C = vbNullString
  loc_1BDD09E:           Call Proc_30_87_F148A8(var_DC, vbNullString, vbNullString)
  loc_1BDD0DA:           var_C4 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1BDD111:           var_134 = CVar(Me.LblRest.Caption) 'String
  loc_1BDD114:           var_158 = (Space(1) + var_134)
  loc_1BDD129:           Call Proc_30_87_F148A8(var_DC, vbNullString, CStr(Trim(CVar(Proc_6_38_E68A98(CVar(Me.LblRest.Item("ShortName")), 1, var_96)))))
  loc_1BDD15B:           Call Proc_30_87_F148A8(var_DC, vbNullString, var_94, vbNullString)
  loc_1BDD18A:           Call Proc_30_87_F148A8(var_DC, vbNullString, vbNullString, vbNullString)
  loc_1BDD1BE:           Proc_6_39_E7C810(var_134, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BDD1F2:           var_17C = vbNullString
  loc_1BDD1FB:           Call Proc_30_87_F148A8(var_DC, var_17C, " KOT No.   : " & Proc_6_45_EAD428(CStr(var_134), &HA, vbNullString))
  loc_1BDD2B7:           var_2FC = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")), " KOT Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1BDD2CB:           Call Proc_30_87_F148A8(var_DC, vbNullString, " KOT Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC) & " " & var_2FC)
  loc_1BDD312:           var_164 = var_B8.Fields.Item("Remarks")
  loc_1BDD35D:           Call Proc_30_87_F148A8(var_DC, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_164), vbNullString), &H1E))
  loc_1BDD38F:           Set var_15C = Me.Label1
  loc_1BDD395:           Call 0.Method_Proc_30_85_1BE21700 (2, var_164)
  loc_1BDD400:           var_2F8 = vbNullString
  loc_1BDD40F:           var_1B8 = (Space(1) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_164))), &HA)))
  loc_1BDD418:           var_1C8 = (Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_15C.Item("ShortName")), 1, &H12))), 1, 3) + ": ")
  loc_1BDD41F:           var_1E8 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")), vbNullString), 5)) 'String
  loc_1BDD422:           var_218 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_15C.Item("ShortName")), 1, &H12))), 1, 3)) + var_1E8)
  loc_1BDD437:           Call Proc_30_87_F148A8(var_DC, vbNullString, CStr("* NC LOT *"))
  loc_1BDD46E:           var_178 = vbNullString
  loc_1BDD483:           Call Proc_30_87_F148A8(var_DC, vbNullString, var_C4)
  loc_1BDD48F:         End If
  loc_1BDD4B5:         var_158 = (var_178 + CVar(Proc_6_45_EAD428("ITEM NAME", &H19, Space(1))))
  loc_1BDD4C9:         var_1B8 = (Trim(CVar(var_164)) + Space(1))
  loc_1BDD4E0:         var_1C8 = CVar(Proc_6_52_EAD4F4("Qty", 3, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_15C.Item("ShortName")), 1, &H12))), 1, 3))) 'String
  loc_1BDD4E3:         var_1D8 = (var_2F8 + var_1C8)
  loc_1BDD4E8:         var_B0 = CStr(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BDD506:         var_178 = vbNullString
  loc_1BDD51B:         Call Proc_30_87_F148A8(var_DC, vbNullString, var_B0)
  loc_1BDD52A:         var_178 = vbNullString
  loc_1BDD53F:         Call Proc_30_87_F148A8(var_DC, vbNullString, var_C4)
  loc_1BDD551:         var_96 = (var_96 + 4)
  loc_1BDD557:         var_BC.MoveFirst
  loc_1BDD55C:         ' Referenced from: 1BDD8DD
  loc_1BDD56B:         If Not(var_BC.EOF) Then
  loc_1BDD5A4:           var_180 = var_BC.Fields
  loc_1BDD5BB:           Proc_6_39_E7C810(var_1E8, CVar(var_180.Item("qty")), &H12)
  loc_1BDD5E6:           var_194 = "Cancel"
  loc_1BDD620:           var_1F8 = "Y"
  loc_1BDD65E:           var_174 = (1 + CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1BDD672:           var_1C8 = (Space(1) + Space(1))
  loc_1BDD68B:           var_270 = (var_178 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E8, "0")), 3, var_1C8)))
  loc_1BDD6A1:           var_340 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_BC.Fields.Item(var_194).Value = var_1F8), "Void", vbNullString)), 5, CVar(var_B8.Fields.Item("NCKOT")))) 'String
  loc_1BDD6A4:           var_350 = (var_178 + var_340)
  loc_1BDD703:           Call Proc_30_87_F148A8(var_DC, vbNullString, CStr(var_350))
  loc_1BDD715:           var_96 = (var_96 + 1)
  loc_1BDD751:           If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BDD782:             var_2F8 = vbNullString
  loc_1BDD7A9:             Call Proc_30_87_F148A8(var_DC, vbNullString, "(" & Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), vbNullString) & ")")
  loc_1BDD7C9:             var_96 = (var_96 + 1)
  loc_1BDD7CC:           End If
  loc_1BDD7D6:           If (&H12 = (&H45 - var_AA)) Then
  loc_1BDD7F1:             Call Proc_30_87_F148A8(var_DC, vbNullString, var_C4, vbNullString)
  loc_1BDD81B:             Call Proc_30_87_F148A8(var_DC, vbNullString, " Contd.", vbNullString)
  loc_1BDD82F:             var_98 = (var_98 + 1)
  loc_1BDD84F:             Call Proc_30_87_F148A8(var_DC, vbNullString, var_94, vbNullString, 0)
  loc_1BDD878:             Call Proc_30_87_F148A8(var_DC, vbNullString, var_C4, vbNullString, &H12)
  loc_1BDD89C:             Call Proc_30_87_F148A8(var_DC, vbNullString, var_B0, vbNullString)
  loc_1BDD8C0:             Call Proc_30_87_F148A8(var_DC, vbNullString, var_C4, vbNullString)
  loc_1BDD8D2:             var_96 = (var_96 + 4)
  loc_1BDD8D5:           End If
  loc_1BDD8D8:           var_BC.MoveNext
  loc_1BDD8DD:           GoTo loc_1BDD55C
  loc_1BDD8E0:         End If
  loc_1BDD8EA:         If (&H12 < (&H45 - var_AA)) Then
  loc_1BDD8ED:           ' Referenced from: 1BDD92F
  loc_1BDD8F7:           If (&H12 = (&H45 - var_AA)) Then
  loc_1BDD918:             Call Proc_30_87_F148A8(var_DC, vbNullString, vbNullString, vbNullString, &H12)
  loc_1BDD92C:             var_96 = (var_96 + 1)
  loc_1BDD92F:             GoTo loc_1BDD8ED
  loc_1BDD932:           End If
  loc_1BDD932:         End If
  loc_1BDD94A:         Call Proc_30_87_F148A8(var_DC, vbNullString, var_C4, vbNullString, &H12)
  loc_1BDD998:         var_2F8 = vbNullString
  loc_1BDD9B8:         Call Proc_30_87_F148A8(var_DC, vbNullString, " Waiter Name  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), 1, &H12), &H14))
  loc_1BDDA13:         Call Proc_30_87_F148A8(var_DC, vbNullString, CStr(" ***  " & Trim(var_CC) & "  ***"), vbNullString)
  loc_1BDDA72:         var_158 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BDDA80:         unk_589093.Execute CStr(var_158), Space(1), -1
  loc_1BDDAE1:         If (var_180.Fields.Item(0).Value > 1) Then
  loc_1BDDB0B:           Call Proc_30_87_F148A8(var_DC, vbNullString, " ***  " & "Changed KOT" & "  ***", vbNullString)
  loc_1BDDB1E:         Else
  loc_1BDDB2B:           var_124 = "Select Printed from kot where docid='"
  loc_1BDDB61:           var_148 = "'"
  loc_1BDDB74:           unk_589093.Execute CStr(var_124 & Me.Fields.Item("SearchCode").Value & var_148), Space(1), -1
  loc_1BDDB9C:           var_104 = 0
  loc_1BDDBD2:           If (Proc_6_38_E68A98(CVar(var_180.Fields.Item(var_104)), var_180, var_180) = "Y") Then
  loc_1BDDBFC:             Call Proc_30_87_F148A8(var_DC, vbNullString, " ***  " & "DUPLICATE KOT" & "  ***", vbNullString)
  loc_1BDDC0F:           Else
  loc_1BDDC2D:             Call Proc_30_87_F148A8(var_DC, vbNullString, vbNullString, vbNullString)
  loc_1BDDC3B:           End If
  loc_1BDDC3B:         End If
  loc_1BDDC40:         Set var_E0 = Nothing
  loc_1BDDC6A:         Call Proc_30_87_F148A8(var_DC, vbNullString, "** " & MemVar_1F9221C & " **", vbNullString)
  loc_1BDDC7D:         var_B8.MoveNext
  loc_1BDDC82:         GoTo loc_1BDCEF4
  loc_1BDDC85:       End If
  loc_1BDDC88:       var_D8 = "WinKOTPrint"
  loc_1BDDCAF:       Set var_15C = var_DC 
  loc_1BDDCB6:       CreateFieldDefFile(var_15C, MemVar_1F920B4 & "\" & var_D8 & ".ttx", &HFF)
  loc_1BDDCF8:       Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_D8 & ".RPT", var_104, var_15C)
  loc_1BDDD03:       MemVar_1F921E4 = var_15C
  loc_1BDDD2C:       Call 0.Method_arg_64 (var_15C, CVar(var_15C), var_124, var_148)
  loc_1BDDD34:       Call 0.Method_arg_2C (var_2F8, var_2F8)
  loc_1BDDD44:       If (arg_14 <> vbNullString) Then
  loc_1BDDD65:         If CBool(Ucase(arg_14) <> "PRN") Then
  loc_1BDDD6B:           Call Proc_30_84_F0F128(arg_14)
  loc_1BDDD70:         End If
  loc_1BDDD70:       End If
  loc_1BDDD7C:       var_124 = 1
  loc_1BDDD8D:       Call 0.Method_Me8 (False, var_124, var_148)
  loc_1BDDD97:       Set var_DC = Nothing
  loc_1BDDD9D:     Else
  loc_1BDDDA8:       If (var_1A8 = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1BDDDAE:         var_B8.MoveFirst
  loc_1BDDDB3:         ' Referenced from:   1BDECBD
  loc_1BDDDC2:         If Not(var_B8.EOF) Then
  loc_1BDDDC8:           var_104 = "ShortName"
  loc_1BDDDF8:           var_174 = 3
  loc_1BDDE27:           var_180 = var_B8.Fields
  loc_1BDDE2F:           var_184 = var_180.Item("NCKOT")
  loc_1BDDED1:           var_148 = "LAU"
  loc_1BDDEDB:           var_2E0 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item(var_104)), "NCKOT"))), 1, var_174)) = var_148) 'Variant
  loc_1BDDEE5:           var_2F0 = IIf(var_2E0, IIf((Proc_6_38_E68A98(CVar(var_184), (Proc_6_38_E68A98(CVar(var_184), var_1F8) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BDDEEE:           var_94 = CStr(var_2F0)
  loc_1BDDF2F:           var_D8 = "KOTPrint"
  loc_1BDDF56:           Set var_15C = var_BC 
  loc_1BDDF5D:           CreateFieldDefFile(var_15C, MemVar_1F920B4 & "\" & var_D8 & ".ttx")
  loc_1BDDF69:           Set var_BC = var_15C
  loc_1BDDF9F:           Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_D8 & ".RPT", var_104, var_15C)
  loc_1BDDFAA:           MemVar_1F921E4 = var_15C
  loc_1BDDFD3:           Call 0.Method_arg_64 (var_15C, CVar(var_BC), var_124)
  loc_1BDDFDB:           Call 0.Method_arg_2C (var_148, &HFF)
  loc_1BDDFE9:           Call 0.Method_arg_150 (var_15C)
  loc_1BDE036:           var_158 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BDE044:           unk_589093.Execute CStr(var_158), var_174, -1
  loc_1BDE0A5:           If (var_180.Fields.Item(0).Value > 1) Then
  loc_1BDE0AB:             var_D0 = "Changed KOT"
  loc_1BDE0B1:           Else
  loc_1BDE107:             unk_589093.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_174, -1
  loc_1BDE13B:             var_15C = var_180.Fields
  loc_1BDE143:             var_164 = var_15C.Item(0)
  loc_1BDE154:             var_138 = Proc_6_38_E68A98(CVar(var_164), var_180)
  loc_1BDE165:             If (var_138 = "Y") Then
  loc_1BDE16B:               var_D0 = "DUPLICATE KOT"
  loc_1BDE171:             Else
  loc_1BDE174:               var_D0 = vbNullString
  loc_1BDE177:             End If
  loc_1BDE177:           End If
  loc_1BDE17C:           Set var_E0 = Nothing
  loc_1BDE190:           Call 0.Method_arg_90 (var_15C, var_160, var_B2)
  loc_1BDE198:           Call 0.Method_arg_24 (1)
  loc_1BDE1A4:           For var_354 =  To CInt(var_160):   var_180 = var_354 'Integer
  loc_1BDE1BD:             Call 0.Method_arg_90 (var_15C, CLng(var_B2))
  loc_1BDE1C5:             Call 0.Method_arg_20 (var_164)
  loc_1BDE1CD:             Call 0.Method_arg_30 (var_138)
  loc_1BDE1E3:             var_364 = Ucase(CVar(var_138)) 'Variant
  loc_1BDE213:             If (var_364 = Ucase("comp_name")) Then
  loc_1BDE237:               Call 0.Method_arg_90 (var_15C, CLng(var_B2))
  loc_1BDE23F:               Call 0.Method_arg_20 (var_164)
  loc_1BDE247:               Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_1BDE25D:             Else
  loc_1BDE27F:               If (var_364 = Ucase("comp_add1")) Then
  loc_1BDE2A3:                 Call 0.Method_arg_90 (var_15C, CLng(var_B2))
  loc_1BDE2AB:                 Call 0.Method_arg_20 (var_164)
  loc_1BDE2B3:                 Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1BDE2C9:               Else
  loc_1BDE2EB:                 If (var_364 = Ucase("comp_pin")) Then
  loc_1BDE30F:                   Call 0.Method_arg_90 (var_15C, CLng(var_B2))
  loc_1BDE317:                   Call 0.Method_arg_20 (var_164)
  loc_1BDE31F:                   Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_1BDE335:                 Else
  loc_1BDE357:                   If (var_364 = Ucase("comp_GSTIN")) Then
  loc_1BDE37B:                     Call 0.Method_arg_90 (var_15C, CLng(var_B2))
  loc_1BDE383:                     Call 0.Method_arg_20 (var_164)
  loc_1BDE38B:                     Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1BDE3A1:                   Else
  loc_1BDE3C3:                     If (var_364 = Ucase("RestName")) Then
  loc_1BDE3D0:                       Set var_15C = Me.LblRest
  loc_1BDE3F9:                       Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BDE401:                       Call 0.Method_arg_20 (var_180)
  loc_1BDE409:                       Call 0.Method_arg_38 ("'" & var_15C.Caption & "'")
  loc_1BDE423:                     Else
  loc_1BDE445:                       If (var_364 = Ucase("mTitle")) Then
  loc_1BDE469:                         Call 0.Method_arg_90 (var_15C, CLng(var_B2))
  loc_1BDE471:                         Call 0.Method_arg_20 (var_164)
  loc_1BDE479:                         Call 0.Method_arg_38 ("'" & var_94 & "'")
  loc_1BDE48F:                       Else
  loc_1BDE497:                         var_114 = "Header1"
  loc_1BDE4B1:                         If (var_364 = Ucase(var_114)) Then
  loc_1BDE4BF:                           Proc_6_17_EAA2B0(var_114)
  loc_1BDE4DB:                           Call 0.Method_arg_90 (var_15C, CLng(var_B2), var_164)
  loc_1BDE4E3:                           Call 0.Method_arg_20 (CStr(var_114))
  loc_1BDE4EB:                           Call 0.Method_arg_38 (var_E4)
  loc_1BDE500:                         Else
  loc_1BDE508:                           var_114 = "Header2"
  loc_1BDE522:                           If (var_364 = Ucase(var_114)) Then
  loc_1BDE530:                             Proc_6_17_EAA2B0(var_114)
  loc_1BDE54C:                             Call 0.Method_arg_90 (var_15C, CLng(var_B2), var_164)
  loc_1BDE554:                             Call 0.Method_arg_20 (CStr(var_114))
  loc_1BDE55C:                             Call 0.Method_arg_38 (var_E8)
  loc_1BDE571:                           Else
  loc_1BDE579:                             var_114 = "Header3"
  loc_1BDE593:                             If (var_364 = Ucase(var_114)) Then
  loc_1BDE5A1:                               Proc_6_17_EAA2B0(var_114)
  loc_1BDE5BD:                               Call 0.Method_arg_90 (var_15C, CLng(var_B2), var_164)
  loc_1BDE5C5:                               Call 0.Method_arg_20 (CStr(var_114))
  loc_1BDE5CD:                               Call 0.Method_arg_38 (var_EC)
  loc_1BDE5E2:                             Else
  loc_1BDE5EA:                               var_114 = "Header4"
  loc_1BDE604:                               If (var_364 = Ucase(var_114)) Then
  loc_1BDE612:                                 Proc_6_17_EAA2B0(var_114)
  loc_1BDE62E:                                 Call 0.Method_arg_90 (var_15C, CLng(var_B2), var_164)
  loc_1BDE636:                                 Call 0.Method_arg_20 (CStr(var_114))
  loc_1BDE63E:                                 Call 0.Method_arg_38 (var_F0)
  loc_1BDE653:                               Else
  loc_1BDE664:                                 var_134 = Ucase("KotNo")
  loc_1BDE675:                                 If (var_364 = var_134) Then
  loc_1BDE6A3:                                   Proc_6_39_E7C810(var_134, CVar(var_B8.Fields.Item("VNo")))
  loc_1BDE6AF:                                   var_148 = "'"
  loc_1BDE6CC:                                   Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BDE6D4:                                   Call 0.Method_arg_20 (var_184)
  loc_1BDE6DC:                                   Call 0.Method_arg_38 (CStr("'" & var_134 & var_148))
  loc_1BDE6FB:                                 Else
  loc_1BDE71D:                                   If (var_364 = Ucase("KotDate")) Then
  loc_1BDE769:                                     Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BDE771:                                     Call 0.Method_arg_20 (var_184)
  loc_1BDE779:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate"))) & "'")
  loc_1BDE796:                                   Else
  loc_1BDE7B8:                                     If (var_364 = Ucase("KotTime")) Then
  loc_1BDE804:                                       Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BDE80C:                                       Call 0.Method_arg_20 (var_184)
  loc_1BDE814:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))) & "'")
  loc_1BDE831:                                     Else
  loc_1BDE853:                                       If (var_364 = Ucase("Remarks")) Then
  loc_1BDE89F:                                         Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BDE8A7:                                         Call 0.Method_arg_20 (var_184)
  loc_1BDE8AF:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Remarks"))) & "'")
  loc_1BDE8CC:                                       Else
  loc_1BDE8EE:                                         If (var_364 = Ucase("Card_No")) Then
  loc_1BDE93A:                                           Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BDE942:                                           Call 0.Method_arg_20 (var_184)
  loc_1BDE94A:                                           Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("CardNo"))) & "'")
  loc_1BDE967:                                         Else
  loc_1BDE989:                                           If (var_364 = Ucase("Member_Name")) Then
  loc_1BDE9A6:                                             var_164 = var_B8.Fields.Item("MemName")
  loc_1BDE9D5:                                             Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BDE9DD:                                             Call 0.Method_arg_20 (var_184)
  loc_1BDE9E5:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_164)) & "'")
  loc_1BDEA02:                                           Else
  loc_1BDEA24:                                             If (var_364 = Ucase("TableTitle")) Then
  loc_1BDEA35:                                               Set var_15C = Me.Label1
  loc_1BDEA3B:                                               Call 0.Method_Proc_30_85_1BE21700 (2, var_164)
  loc_1BDEA73:                                               Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BDEA7B:                                               Call 0.Method_arg_20 (var_184)
  loc_1BDEA83:                                               Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_164)) & "'"))
  loc_1BDEAA2:                                             Else
  loc_1BDEAC4:                                               If (var_364 = Ucase("TableNo")) Then
  loc_1BDEB10:                                                 Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BDEB18:                                                 Call 0.Method_arg_20 (var_184)
  loc_1BDEB20:                                                 Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo"))) & "'")
  loc_1BDEB3D:                                               Else
  loc_1BDEB5F:                                                 If (var_364 = Ucase("Steward")) Then
  loc_1BDEB74:                                                   var_15C = var_B8.Fields
  loc_1BDEB7C:                                                   var_164 = var_15C.Item("WaiterName")
  loc_1BDEBAB:                                                   Call 0.Method_arg_90 (var_180, CLng(var_B2))
  loc_1BDEBB3:                                                   Call 0.Method_arg_20 (var_184)
  loc_1BDEBBB:                                                   Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_164)) & "'")
  loc_1BDEBD8:                                                 Else
  loc_1BDEBFA:                                                   If (var_364 = Ucase("KotStatus")) Then
  loc_1BDEC1E:                                                     Call 0.Method_arg_90 (var_15C, CLng(var_B2))
  loc_1BDEC26:                                                     Call 0.Method_arg_20 (var_164)
  loc_1BDEC2E:                                                     Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1BDEC44:                                                   Else
  loc_1BDEC66:                                                     If (var_364 = Ucase("KotRemark")) Then
  loc_1BDEC8A:                                                       Call 0.Method_arg_90 (var_15C, CLng(var_B2))
  loc_1BDEC92:                                                       Call 0.Method_arg_20 (var_164)
  loc_1BDEC9A:                                                       Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_1BDECAD:                                                     End If
  loc_1BDECAD:                                                   End If
  loc_1BDECAD:                                                 End If
  loc_1BDECAD:                                               End If
  loc_1BDECAD:                                             End If
  loc_1BDECAD:                                           End If
  loc_1BDECAD:                                         End If
  loc_1BDECAD:                                       End If
  loc_1BDECAD:                                     End If
  loc_1BDECAD:                                   End If
  loc_1BDECAD:                                 End If
  loc_1BDECAD:                               End If
  loc_1BDECAD:                             End If
  loc_1BDECAD:                           End If
  loc_1BDECAD:                         End If
  loc_1BDECAD:                       End If
  loc_1BDECAD:                     End If
  loc_1BDECAD:                   End If
  loc_1BDECAD:                 End If
  loc_1BDECAD:               End If
  loc_1BDECAD:             End If
  loc_1BDECB0:           Next var_354 'Integer
  loc_1BDECB8:           var_B8.MoveNext
  loc_1BDECBD:           GoTo loc_1BDDDB3
  loc_1BDECC0:         End If
  loc_1BDECC8:         If (arg_14 <> vbNullString) Then
  loc_1BDECE9:           If CBool(Ucase(arg_14) <> "PRN") Then
  loc_1BDECEF:             Call Proc_30_84_F0F128(arg_14)
  loc_1BDECF4:           End If
  loc_1BDECF4:         End If
  loc_1BDED11:         Call 0.Method_Me8 (False, 1, var_148)
  loc_1BDED19:       Else
  loc_1BDED24:         If (var_1A8 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1BDED29:           Close 1
  loc_1BDED45:           Open "C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT" For Output As 1 Len = &HFF
  loc_1BDED55:           var_B8.MoveFirst
  loc_1BDED5A:           ' Referenced from:     1BDFC52
  loc_1BDED69:           If Not(var_B8.EOF) Then
  loc_1BDED6E:             var_96 = 0
  loc_1BDEDA9:             var_174 = 3
  loc_1BDEDCC:             var_194 = "NCKOT"
  loc_1BDEE49:             var_2F4 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")))
  loc_1BDEE65:             var_178 = var_2F4
  loc_1BDEE8C:             var_2E0 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_174)) = "LAU") 'Variant
  loc_1BDEE96:             var_2F0 = IIf(var_2E0, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item(var_194)), var_194) = "Y"), "* NC LOT *", "* LOT *"), IIf((var_178 = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BDEE9F:             var_94 = CStr(var_2F0)
  loc_1BDEEE3:             If (var_96 = 0) Then
  loc_1BDEEE8:               Print 1
  loc_1BDEF1C:               var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1BDEF2D:               If (var_E4 <> vbNullString) Then
  loc_1BDEF56:                 var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_E4, &H28)))
  loc_1BDEF5C:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BDEF6E:               End If
  loc_1BDEF76:               If (var_E8 <> vbNullString) Then
  loc_1BDEF9F:                 var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_E8, &H28)))
  loc_1BDEFA5:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BDEFB7:               End If
  loc_1BDEFBF:               If (var_EC <> vbNullString) Then
  loc_1BDEFE8:                 var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_EC, &H28)))
  loc_1BDEFEE:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BDF000:               End If
  loc_1BDF008:               If (var_F0 <> vbNullString) Then
  loc_1BDF031:                 var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1BDF037:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BDF049:               End If
  loc_1BDF04B:               Print 1
  loc_1BDF07B:               Call Proc_30_103_EF9B84(Me.LblRest.Caption, "D", &H28)
  loc_1BDF085:               Print 1, var_2F4
  loc_1BDF0AB:               Call Proc_30_103_EF9B84(var_94, "D", &H28)
  loc_1BDF0B5:               Print 1, var_178
  loc_1BDF0C9:               Print 1
  loc_1BDF0D1:               Print 1
  loc_1BDF10A:               Proc_6_39_E7C810(var_174, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BDF12C:               var_134 = (Chr(&HF) + "KOT No.   :     ")
  loc_1BDF136:               var_1C8 = (CVar(Proc_6_45_EAD428(var_F0, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_174), &HA, Proc_6_45_EAD428(CStr(var_174), &HA, var_178))))
  loc_1BDF13C:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_174))
  loc_1BDF1EE:               var_134 = (Chr(&HF) + "KOT Dt.   :     ")
  loc_1BDF1F8:               var_1B8 = (CVar(Proc_6_45_EAD428(var_F0, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2F4), &HC)))
  loc_1BDF201:               var_1C8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2F4), &HC))), &HA, Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2F4), &HC))), &HA, var_178))) + " ")
  loc_1BDF20B:               var_218 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2F4), &HC)))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BDF211:               Print 1, "* NC LOT *"
  loc_1BDF266:               var_164 = var_B8.Fields.Item("Remarks")
  loc_1BDF2A3:               var_134 = (Chr(&HF) + "Remarks :     ")
  loc_1BDF2AD:               var_1B8 = (CVar(Proc_6_45_EAD428(var_F0, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_164)), &H32)))
  loc_1BDF2B4:               var_1D8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_164)), &H32))), &HA, Proc_6_38_E68A98(CVar(var_164)))) + Chr(&H12))
  loc_1BDF2BA:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BDF2F3:               Set var_15C = Me.Label1
  loc_1BDF2F9:               Call 0.Method_Proc_30_85_1BE21700 (2, var_164)
  loc_1BDF34A:               var_2F4 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BDF36A:               var_1B8 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_164))), &HA)))
  loc_1BDF373:               var_1C8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_164))), &HA))), &HA, Proc_6_38_E68A98(CVar(var_164)))) + ":     ")
  loc_1BDF37D:               var_218 = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_2F4, 5)))
  loc_1BDF383:               Print 1, "* NC LOT *"
  loc_1BDF3C8:               var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BDF3CE:               Print 1, CVar(var_164)
  loc_1BDF3DB:             End If
  loc_1BDF401:             var_158 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1BDF40D:             var_178 = "Qty"
  loc_1BDF41B:             var_1B8 = (Trim(CVar(var_164)) + CVar(Proc_6_52_EAD4F4(var_178, 6)))
  loc_1BDF420:             var_B0 = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4(var_178, 6))), &HA, var_178)))
  loc_1BDF44D:             var_134 = (Chr(&HF) + CVar(var_B0))
  loc_1BDF453:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1BDF476:             var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BDF47C:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1BDF48F:             var_96 = (var_96 + 4)
  loc_1BDF495:             var_BC.MoveFirst
  loc_1BDF49A:             ' Referenced from:     1BDF83B
  loc_1BDF4A9:             If Not(var_BC.EOF) Then
  loc_1BDF4E2:               var_180 = var_BC.Fields
  loc_1BDF4F9:               Proc_6_39_E7C810(Chr(&H12), CVar(var_180.Item("qty")))
  loc_1BDF59C:               var_174 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1BDF5B5:               var_238 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAD4F4(var_178, 6)))))
  loc_1BDF5CB:               var_2F0 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1BDF5CE:               var_32C = (&H12 + var_2F0)
  loc_1BDF627:               var_134 = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1BDF62D:               Print 1, Space(3)
  loc_1BDF640:               var_96 = (var_96 + 1)
  loc_1BDF67C:               If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BDF6BF:                 var_134 = (Chr(&HF) + "(")
  loc_1BDF6C9:                 var_1B8 = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")))))
  loc_1BDF6D2:                 var_1C8 = (CVar(var_180.Item("qty")) + ")")
  loc_1BDF6D8:                 Print 1, Chr(&H12)
  loc_1BDF6F9:                 var_96 = (var_96 + 1)
  loc_1BDF6FC:               End If
  loc_1BDF706:               If (&H12 = (&H45 - var_AA)) Then
  loc_1BDF71F:                 var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BDF725:                 Print 1, Space(3)
  loc_1BDF737:                 Print 1, "Contd."
  loc_1BDF74F:                 Print 1, Chr(&HC)
  loc_1BDF75E:                 var_98 = (var_98 + 1)
  loc_1BDF774:                 Call Proc_30_104_1200240(1, 0, &H28, var_2FE)
  loc_1BDF793:                 Call Proc_30_103_EF9B84(var_94, "B", &H28, var_178, var_2FE)
  loc_1BDF79D:                 Print 1, var_178
  loc_1BDF7AC:                 var_96 = &H12
  loc_1BDF7C5:                 var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BDF7CB:                 Print 1, Space(3)
  loc_1BDF7EE:                 var_134 = (Chr(&HF) + CVar(var_B0))
  loc_1BDF7F4:                 Print 1, Space(3)
  loc_1BDF817:                 var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BDF81D:                 Print 1, Space(3)
  loc_1BDF830:                 var_96 = (var_96 + 4)
  loc_1BDF833:               End If
  loc_1BDF836:               var_BC.MoveNext
  loc_1BDF83B:               GoTo loc_1BDF49A
  loc_1BDF83E:             End If
  loc_1BDF848:             If (var_96 < (&H45 - var_AA)) Then
  loc_1BDF84B:               ' Referenced from:     1BDF86C
  loc_1BDF855:               If (var_96 = (&H45 - var_AA)) Then
  loc_1BDF85D:                 Print 1, vbNullString
  loc_1BDF869:                 var_96 = (var_96 + 1)
  loc_1BDF86C:                 GoTo loc_1BDF84B
  loc_1BDF86F:               End If
  loc_1BDF86F:             End If
  loc_1BDF885:             var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BDF88B:             Print 1, Space(3)
  loc_1BDF8EC:             var_134 = (Chr(&HF) + "Waiter Name  :     ")
  loc_1BDF8F3:             var_174 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), var_96, var_96, var_96), &H14, var_96)) 'String
  loc_1BDF8F6:             var_1B8 = (Space(3) + var_174)
  loc_1BDF8FC:             Print 1, CVar(var_180.Item("qty"))
  loc_1BDF940:             var_134 = (Chr(&HF) + "***  ")
  loc_1BDF947:             var_174 = Space(3) & Trim(var_CC) 
  loc_1BDF956:             Print 1, var_174 & "  ***"
  loc_1BDF9B1:             var_158 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BDF9BF:             unk_589093.Execute CStr(var_158), var_174, -1
  loc_1BDFA20:             If (var_180.Fields.Item(0).Value > 1) Then
  loc_1BDFA51:               Call Proc_30_103_EF9B84(Proc_6_45_EAD428("Changed KOT", &H14, var_180), "D", &H28, var_2F4)
  loc_1BDFA5B:               Print 1, var_2F4
  loc_1BDFA71:             Else
  loc_1BDFAC7:               unk_589093.Execute CStr("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_174, -1
  loc_1BDFB25:               If (Proc_6_38_E68A98(CVar(var_180.Fields.Item(0)), var_180, 1) = "Y") Then
  loc_1BDFB3B:                 var_2F8 = Proc_6_45_EAD428("DUPLICATE KOT", &H14)
  loc_1BDFB56:                 Call Proc_30_103_EF9B84(var_2F8, "D", &H28)
  loc_1BDFB60:                 Print 1, var_2F4
  loc_1BDFB76:               Else
  loc_1BDFB8B:                 var_134 = (Chr(&HF) + vbNullString)
  loc_1BDFB91:                 Print 1, "Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value
  loc_1BDFB9E:               End If
  loc_1BDFB9E:             End If
  loc_1BDFBA3:             Set var_E0 = Nothing
  loc_1BDFBBB:             var_134 = (Chr(&HF) + "** ")
  loc_1BDFBC5:             var_158 = ("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1BDFBCE:             var_174 = ("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BDFBD4:             Print 1, var_174
  loc_1BDFBE8:             var_B8.MoveNext
  loc_1BDFBEF:             Print 1
  loc_1BDFBF7:             Print 1
  loc_1BDFBFF:             Print 1
  loc_1BDFC07:             Print 1
  loc_1BDFC0F:             Print 1
  loc_1BDFC17:             Print 1
  loc_1BDFC3D:             var_158 = (Chr(&H1B) + Chr(&H6D))
  loc_1BDFC43:             Print 1, "Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1BDFC52:             GoTo loc_1BDED5A
  loc_1BDFC55:           End If
  loc_1BDFC57:           Close 1
  loc_1BDFC73:           Open "C:\reptmp\KOTPrint_C" & CStr(arg_C) & ".BAT" For Output As 1 Len = &HFF
  loc_1BDFC88:           If (arg_14 <> vbNullString) Then
  loc_1BDFCAA:             Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT>" & arg_14
  loc_1BDFCBE:           Else
  loc_1BDFCD8:             var_2F4 = "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT>" & MemVar_1F923B4
  loc_1BDFCDD:             Print 1, var_2F4
  loc_1BDFCEE:           End If
  loc_1BDFCF0:           Close 1
  loc_1BDFD16:           var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_C" & CStr(arg_C) & ".BAT"), 0)) 'Variant
  loc_1BDFD27:         Else
  loc_1BDFD32:           If (var_1A8 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1BDFD37:             Close 1
  loc_1BDFD53:             Open "C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT" For Output As 1 Len = &HFF
  loc_1BDFD63:             var_B8.MoveFirst
  loc_1BDFD68:             ' Referenced from:       1BE0CA8
  loc_1BDFD77:             If Not(var_B8.EOF) Then
  loc_1BDFD7C:               var_96 = 0
  loc_1BDFDB7:               var_174 = 3
  loc_1BDFDFF:               var_17C = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_2F4)
  loc_1BDFE9A:               var_2E0 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_174)) = "LAU") 'Variant
  loc_1BDFEA4:               var_2F0 = IIf(var_2E0, IIf((var_17C = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_96) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BDFEAD:               var_94 = CStr(var_2F0)
  loc_1BDFEF1:               If (var_96 = 0) Then
  loc_1BDFEF6:                 Print 1
  loc_1BDFF2A:                 var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1BDFF3B:                 If (var_E4 <> vbNullString) Then
  loc_1BDFF64:                   var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_E4, &H28)))
  loc_1BDFF6A:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BDFF7C:                 End If
  loc_1BDFF84:                 If (var_E8 <> vbNullString) Then
  loc_1BDFFAD:                   var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_E8, &H28)))
  loc_1BDFFB3:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BDFFC5:                 End If
  loc_1BDFFCD:                 If (var_EC <> vbNullString) Then
  loc_1BDFFF6:                   var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_EC, &H28)))
  loc_1BDFFFC:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE000E:                 End If
  loc_1BE0016:                 If (var_F0 <> vbNullString) Then
  loc_1BE003F:                   var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1BE0045:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE0057:                 End If
  loc_1BE0059:                 Print 1
  loc_1BE009D:                 Call Proc_30_103_EF9B84(Proc_6_45_EAD428(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1BE00A7:                 Print 1, var_2F8
  loc_1BE00E5:                 Call Proc_30_103_EF9B84(Proc_6_45_EAD428(var_94, &H14), "D", &H28)
  loc_1BE00EF:                 Print 1, var_17C
  loc_1BE0107:                 Print 1
  loc_1BE010F:                 Print 1
  loc_1BE0148:                 Proc_6_39_E7C810(var_174, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BE016A:                 var_134 = (Chr(&HF) + "KOT No.   :       ")
  loc_1BE0174:                 var_1C8 = (CVar(Proc_6_45_EAD428(var_F0, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_174), &HA, var_17C)))
  loc_1BE017A:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_174))
  loc_1BE022C:                 var_134 = (Chr(&HF) + "KOT Dt.   :       ")
  loc_1BE0233:                 var_174 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")))), &HC)) 'String
  loc_1BE0236:                 var_1B8 = (CVar(Proc_6_45_EAD428(var_F0, &H28)) + var_174)
  loc_1BE023F:                 var_1C8 = (CVar(Proc_6_45_EAD428(CStr(var_174), &HA, Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")))))) + " ")
  loc_1BE0249:                 var_218 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_174)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BE024F:                 Print 1, "* NC LOT *"
  loc_1BE02A4:                 var_164 = var_B8.Fields.Item("Remarks")
  loc_1BE02E1:                 var_134 = (Chr(&HF) + "Remarks :       ")
  loc_1BE02EB:                 var_1B8 = (CVar(Proc_6_45_EAD428(var_F0, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_164)), &H32)))
  loc_1BE02F2:                 var_1D8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_164)), &H32))), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_164)), &H32))) + Chr(&H12))
  loc_1BE02F8:                 Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BE0331:                 Set var_15C = Me.Label1
  loc_1BE0337:                 Call 0.Method_Proc_30_85_1BE21700 (2, var_164)
  loc_1BE0388:                 var_2F4 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BE03A8:                 var_1B8 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_164))), &HA)))
  loc_1BE03B1:                 var_1C8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_164))), &HA))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_164))), &HA))) + ":       ")
  loc_1BE03BB:                 var_218 = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_2F4, 5)))
  loc_1BE03C1:                 Print 1, "* NC LOT *"
  loc_1BE0406:                 var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE040C:                 Print 1, CVar(var_164)
  loc_1BE0419:               End If
  loc_1BE043F:               var_158 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1BE044B:               var_178 = "Qty"
  loc_1BE0459:               var_1B8 = (Trim(CVar(var_164)) + CVar(Proc_6_52_EAD4F4(var_178, 6)))
  loc_1BE045E:               var_B0 = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4(var_178, 6))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_164))), &HA))))
  loc_1BE048B:               var_134 = (Chr(&HF) + CVar(var_B0))
  loc_1BE0491:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1BE04B4:               var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE04BA:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1BE04CD:               var_96 = (var_96 + 4)
  loc_1BE04D3:               var_BC.MoveFirst
  loc_1BE04D8:               ' Referenced from:       1BE0879
  loc_1BE04E7:               If Not(var_BC.EOF) Then
  loc_1BE0520:                 var_180 = var_BC.Fields
  loc_1BE0537:                 Proc_6_39_E7C810(Chr(&H12), CVar(var_180.Item("qty")))
  loc_1BE05DA:                 var_174 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1BE05F3:                 var_238 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAD4F4(var_178, 6)))))
  loc_1BE0609:                 var_2F0 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1BE060C:                 var_32C = (&H12 + var_2F0)
  loc_1BE0665:                 var_134 = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1BE066B:                 Print 1, Space(3)
  loc_1BE067E:                 var_96 = (var_96 + 1)
  loc_1BE06BA:                 If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BE06FD:                   var_134 = (Chr(&HF) + "(")
  loc_1BE0707:                   var_1B8 = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")))))
  loc_1BE0710:                   var_1C8 = (CVar(var_180.Item("qty")) + ")")
  loc_1BE0716:                   Print 1, Chr(&H12)
  loc_1BE0737:                   var_96 = (var_96 + 1)
  loc_1BE073A:                 End If
  loc_1BE0744:                 If (&H12 = (&H45 - var_AA)) Then
  loc_1BE075D:                   var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE0763:                   Print 1, Space(3)
  loc_1BE0775:                   Print 1, "Contd."
  loc_1BE078D:                   Print 1, Chr(&HC)
  loc_1BE079C:                   var_98 = (var_98 + 1)
  loc_1BE07B2:                   Call Proc_30_104_1200240(1, 0, &H28, var_2FE)
  loc_1BE07D1:                   Call Proc_30_103_EF9B84(var_94, "B", &H28, var_178, var_2FE)
  loc_1BE07DB:                   Print 1, var_178
  loc_1BE07EA:                   var_96 = &H12
  loc_1BE0803:                   var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE0809:                   Print 1, Space(3)
  loc_1BE082C:                   var_134 = (Chr(&HF) + CVar(var_B0))
  loc_1BE0832:                   Print 1, Space(3)
  loc_1BE0855:                   var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE085B:                   Print 1, Space(3)
  loc_1BE086E:                   var_96 = (var_96 + 4)
  loc_1BE0871:                 End If
  loc_1BE0874:                 var_BC.MoveNext
  loc_1BE0879:                 GoTo loc_1BE04D8
  loc_1BE087C:               End If
  loc_1BE0886:               If (var_96 < (&H45 - var_AA)) Then
  loc_1BE0889:                 ' Referenced from:       1BE08AA
  loc_1BE0893:                 If (var_96 = (&H45 - var_AA)) Then
  loc_1BE089B:                   Print 1, vbNullString
  loc_1BE08A7:                   var_96 = (var_96 + 1)
  loc_1BE08AA:                   GoTo loc_1BE0889
  loc_1BE08AD:                 End If
  loc_1BE08AD:               End If
  loc_1BE08C3:               var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE08C9:               Print 1, Space(3)
  loc_1BE091F:               var_17C = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), var_96, var_96, var_96), &H14, var_96)
  loc_1BE092A:               var_134 = (Chr(&HF) + "Waiter Name  :       ")
  loc_1BE0934:               var_1B8 = (Space(3) + CVar(var_17C))
  loc_1BE093A:               Print 1, CVar(var_180.Item("qty"))
  loc_1BE097E:               var_134 = (Chr(&HF) + "***  ")
  loc_1BE0985:               var_174 = Space(3) & Trim(var_CC) 
  loc_1BE0994:               Print 1, var_174 & "  ***"
  loc_1BE09EF:               var_158 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BE09FD:               unk_589093.Execute CStr(var_158), var_174, -1
  loc_1BE0A5E:               If (var_180.Fields.Item(0).Value > 1) Then
  loc_1BE0A8F:                 Call Proc_30_103_EF9B84(Proc_6_45_EAD428("Changed KOT", &H14, var_180), "D", &H28, var_2F4)
  loc_1BE0A99:                 Print 1, var_2F4
  loc_1BE0AAF:               Else
  loc_1BE0B05:                 unk_589093.Execute CStr("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_174, -1
  loc_1BE0B63:                 If (Proc_6_38_E68A98(CVar(var_180.Fields.Item(0)), var_180, 1) = "Y") Then
  loc_1BE0B94:                   Call Proc_30_103_EF9B84(Proc_6_45_EAD428("DUPLICATE KOT", &H14), "D", &H28)
  loc_1BE0B9E:                   Print 1, var_2F4
  loc_1BE0BB4:                 Else
  loc_1BE0BC9:                   var_134 = (Chr(&HF) + vbNullString)
  loc_1BE0BCF:                   Print 1, "Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value
  loc_1BE0BDC:                 End If
  loc_1BE0BDC:               End If
  loc_1BE0BE1:               Set var_E0 = Nothing
  loc_1BE0BF9:               var_134 = (Chr(&HF) + "** ")
  loc_1BE0C03:               var_158 = ("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1BE0C0C:               var_174 = ("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BE0C12:               Print 1, var_174
  loc_1BE0C26:               var_B8.MoveNext
  loc_1BE0C2D:               Print 1
  loc_1BE0C35:               Print 1
  loc_1BE0C3D:               Print 1
  loc_1BE0C45:               Print 1
  loc_1BE0C4D:               Print 1
  loc_1BE0C55:               Print 1
  loc_1BE0C5D:               Print 1
  loc_1BE0C65:               Print 1
  loc_1BE0C6D:               Print 1
  loc_1BE0C93:               var_158 = (Chr(&H1B) + Chr(&H6D))
  loc_1BE0C99:               Print 1, "Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1BE0CA8:               GoTo loc_1BDFD68
  loc_1BE0CAB:             End If
  loc_1BE0CAD:             Close 1
  loc_1BE0CC9:             Open "C:\reptmp\KOTPrint_C" & CStr(arg_C) & ".BAT" For Output As 1 Len = &HFF
  loc_1BE0CDE:             If (arg_14 <> vbNullString) Then
  loc_1BE0D00:               Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT>" & arg_14
  loc_1BE0D14:             Else
  loc_1BE0D2E:               var_2F4 = "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT>" & MemVar_1F923B4
  loc_1BE0D33:               Print 1, var_2F4
  loc_1BE0D44:             End If
  loc_1BE0D46:             Close 1
  loc_1BE0D6C:             var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_C" & CStr(arg_C) & ".BAT"), 0)) 'Variant
  loc_1BE0D7D:           Else
  loc_1BE0D88:             If Not (var_1A8 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1BE0D96:               If (var_1A8 = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_1BE0D99:               End If
  loc_1BE0D9B:               Close 1
  loc_1BE0DB7:               Open "C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT" For Output As 1 Len = &HFF
  loc_1BE0DC7:               var_B8.MoveFirst
  loc_1BE0DCC:               ' Referenced from:         1BE1FFD
  loc_1BE0DDB:               If Not(var_B8.EOF) Then
  loc_1BE0DE0:                 var_96 = 0
  loc_1BE0EFE:                 var_2E0 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU") 'Variant
  loc_1BE0F08:                 var_2F0 = IIf(var_2E0, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_96)) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_96) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BE0F11:                 var_94 = CStr(var_2F0)
  loc_1BE0F7D:                 var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1BE0F8C:                 If (var_96 = 0) Then
  loc_1BE0F91:                   Print 1
  loc_1BE0F9F:                   If (var_E4 <> vbNullString) Then
  loc_1BE0FC8:                     var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_E4, &H28)))
  loc_1BE0FCE:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE0FE0:                   End If
  loc_1BE0FE8:                   If (var_E8 <> vbNullString) Then
  loc_1BE1011:                     var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_E8, &H28)))
  loc_1BE1017:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE1029:                   End If
  loc_1BE1031:                   If (var_EC <> vbNullString) Then
  loc_1BE105A:                     var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_EC, &H28)))
  loc_1BE1060:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE1072:                   End If
  loc_1BE107A:                   If (var_F0 <> vbNullString) Then
  loc_1BE10A3:                     var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1BE10A9:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BE10BB:                   End If
  loc_1BE10BD:                   Print 1
  loc_1BE10EC:                   var_1B8 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1BE10FE:                   var_1D8 = Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3) / 2)))
  loc_1BE112F:                   var_2D0 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1BE1141:                   var_2F0 = Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_96) = "Y"), "* NC KOT *", "* KOT *") / 2)))
  loc_1BE1159:                   var_1E8 = (Chr(&HF) + var_1D8)
  loc_1BE1160:                   var_248 = (CVar(var_B8.Fields.Item("NCKOT")) + Trim(CVar(Me.LblRest)))
  loc_1BE1167:                   var_32C = (IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_96)) = "Y"), "* NC LOT *", "* LOT *") + var_2F0)
  loc_1BE116E:                   var_350 = (IIf((var_BC.Fields.Item(2).Value = (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_96)) = "Y")), "Void", vbNullString) + Chr(&H12))
  loc_1BE1174:                   Print 1, var_350
  loc_1BE11C2:                   var_174 = (42 - Len(Trim(var_94)))
  loc_1BE11F5:                   var_248 = (42 - Len(Trim(var_94)))
  loc_1BE11FE:                   var_270 = (IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_96)) = "Y"), "* NC LOT *", "* LOT *") / 2)
  loc_1BE121F:                   var_1D8 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1BE1229:                   var_1E8 = (var_1D8 + CVar(var_94))
  loc_1BE1230:                   var_2C0 = (CVar(var_B8.Fields.Item("NCKOT")) + Space(CLng(var_270)))
  loc_1BE1237:                   var_2E0 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1BE123D:                   Print 1, (IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_96) = "Y"), "* NC KOT *", "* KOT *") / 2)
  loc_1BE1261:                   Print 1
  loc_1BE1269:                   Print 1
  loc_1BE12A8:                   If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("CardNo")), &H12) <> vbNullString) Then
  loc_1BE130C:                     var_134 = (Chr(&HF) + "Membership No.:         ")
  loc_1BE1316:                     var_1B8 = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("CardNo"))), &H1A)))
  loc_1BE131D:                     var_1D8 = ((Len(Trim(CVar(Me.LblRest))) / 2) + Chr(&H12))
  loc_1BE1323:                     Print 1, var_1D8
  loc_1BE1346:                   End If
  loc_1BE137F:                   If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("MemName"))) <> vbNullString) Then
  loc_1BE13E3:                     var_134 = (Chr(&HF) + "Member :         ")
  loc_1BE13EA:                     var_174 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("MemName"))), &H21)) 'String
  loc_1BE13ED:                     var_1B8 = (Trim(var_94) + var_174)
  loc_1BE13F4:                     var_1D8 = ((Len(Trim(CVar(Me.LblRest))) / 2) + Chr(&H12))
  loc_1BE13FA:                     Print 1, var_1D8
  loc_1BE141D:                   End If
  loc_1BE1450:                   Proc_6_39_E7C810(var_174, CVar(var_B8.Fields.Item("VNo")))
  loc_1BE147F:                   var_134 = (Chr(&HF) + "KOT No.   :         ")
  loc_1BE1489:                   var_1C8 = (Trim(var_94) + CVar(Proc_6_45_EAD428(CStr(var_174), &HA)))
  loc_1BE1490:                   var_1E8 = (Chr(&H12) + Chr(&H12))
  loc_1BE1496:                   Print 1, CVar(var_B8.Fields.Item("NCKOT"))
  loc_1BE1559:                   var_134 = (Chr(&HF) + "KOT Dt.   :         ")
  loc_1BE1563:                   var_1B8 = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate"))), &HC)))
  loc_1BE156C:                   var_1C8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate"))), &HC))), &HA)) + " ")
  loc_1BE1576:                   var_218 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BE157D:                   var_248 = (Trim(var_94) + Chr(&H12))
  loc_1BE1583:                   Print 1, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate"))), &HC)) = "Y"), "* NC LOT *", "* LOT *")
  loc_1BE15DC:                   var_164 = var_B8.Fields.Item("Remarks")
  loc_1BE1619:                   var_134 = (Chr(&HF) + "Remarks :         ")
  loc_1BE1623:                   var_1B8 = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_164)), &H20)))
  loc_1BE162A:                   var_1D8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_164)), &H20))), &HA)) + Chr(&H12))
  loc_1BE1630:                   Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BE1669:                   Set var_15C = Me.Label1
  loc_1BE166F:                   Call 0.Method_Proc_30_85_1BE21700 (2, var_164)
  loc_1BE1695:                   var_2F4 = Proc_6_45_EAD428(CStr(Trim(CVar(var_164))), &HA)
  loc_1BE16FD:                   Proc_6_39_E7C810(IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_2F4) = "Y"), "* NC LOT *", "* LOT *"), CVar(var_B8.Fields.Item("GuarAtt")))
  loc_1BE1735:                   Proc_6_39_E7C810((IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), &H12) = "Y"), "* NC KOT *", "* KOT *") / 2), CVar(var_B8.Fields.Item("GuarAtt")))
  loc_1BE174D:                   var_304 = Proc_6_45_EAD428(CStr((IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), &H12) = "Y"), "* NC KOT *", "* KOT *") / 2)), 7)
  loc_1BE1763:                   var_2C0 = (Space(&HA) + "Covers:         ")
  loc_1BE176D:                   var_32C = (Len(Trim(CVar(Me.LblRest))) + CVar(var_304))
  loc_1BE177E:                   var_340 = (IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_2F4) = "Y"), "* NC LOT *", "* LOT *") <> 0) 'Variant
  loc_1BE17A3:                   var_1B8 = (Chr(&HF) + CVar(var_2F4))
  loc_1BE17AC:                   var_1C8 = (CVar(Proc_6_45_EAD428(CStr(CVar(var_2F4)), &HA)) + ":         ")
  loc_1BE17B6:                   var_218 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo"))), 5)))
  loc_1BE17BD:                   var_38C = (Trim(var_94) + IIf(var_340, IIf((var_BC.Fields.Item(0).Value = "Covers:         "), "Void", vbNullString), vbNullString))
  loc_1BE17C4:                   var_3AC = (var_38C + Chr(&H12))
  loc_1BE17CA:                   Print 1, var_3AC
  loc_1BE1842:                   var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE1849:                   var_174 = (CVar(var_164) + Chr(&H12))
  loc_1BE184F:                   Print 1, CVar(var_2F4)
  loc_1BE1860:                 End If
  loc_1BE1886:                 var_158 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Space(3))
  loc_1BE18A0:                 var_1B8 = (Chr(&H12) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1BE18AC:                 var_1C8 = Space(3)
  loc_1BE18B4:                 var_1D8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4("Qty", 6))), &HA)) + var_1C8)
  loc_1BE18CE:                 var_218 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_1BE1917:                 var_134 = (Chr(&HF) + CVar(CStr(Trim(var_94))))
  loc_1BE191E:                 var_174 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_1BE1924:                 Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1BE1958:                 var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE195F:                 var_174 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_1BE1965:                 Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1BE197C:                 var_96 = (var_96 + 4)
  loc_1BE1982:                 var_BC.MoveFirst
  loc_1BE1987:                 ' Referenced from:         1BE1C0F
  loc_1BE1996:                 If Not(var_BC.EOF) Then
  loc_1BE19CF:                   var_180 = var_BC.Fields
  loc_1BE19E6:                   Proc_6_39_E7C810(var_1C8, CVar(var_180.Item("qty")))
  loc_1BE1A31:                   Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1BE1A40:                   var_1F8 = "0.00"
  loc_1BE1A7B:                   var_174 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + Space(3))
  loc_1BE1A94:                   var_238 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1C8, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6)))))
  loc_1BE1AA8:                   var_270 = (CVar(var_B8.Fields.Item("GuarAtt")) + Space(3))
  loc_1BE1AC1:                   var_32C = (&H12 + CVar(Proc_6_52_EAD4F4(CStr(Format(Len(Trim(CVar(Me.LblRest))), var_1F8)), 6, var_270)))
  loc_1BE1B27:                   var_134 = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Rate").Value = var_1F8), "Void", vbNullString))))
  loc_1BE1B2E:                   var_174 = (Space(3) + Chr(&H12))
  loc_1BE1B34:                   Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1BE1B4B:                   var_96 = (var_96 + 1)
  loc_1BE1B87:                   If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BE1BCA:                     var_134 = (Chr(&HF) + "(")
  loc_1BE1BD4:                     var_1B8 = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")))))
  loc_1BE1BDD:                     var_1C8 = (CVar(var_180.Item("qty")) + ")")
  loc_1BE1BE3:                     Print 1, var_1C8
  loc_1BE1C04:                     var_96 = (var_96 + 1)
  loc_1BE1C07:                   End If
  loc_1BE1C0A:                   var_BC.MoveNext
  loc_1BE1C0F:                   GoTo loc_1BE1987
  loc_1BE1C12:                 End If
  loc_1BE1C35:                 var_134 = (Chr(&HF) + CVar(var_C4))
  loc_1BE1C3C:                 var_174 = (Space(3) + Chr(&H12))
  loc_1BE1C42:                 Print 1, CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description"))))
  loc_1BE1CB4:                 var_134 = (Chr(&HF) + "Waiter Name  :         ")
  loc_1BE1CBE:                 var_1B8 = (Space(3) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1BE1CC5:                 var_1D8 = (CVar(var_180.Item("qty")) + Chr(&H12))
  loc_1BE1CCB:                 Print 1, "0.00"
  loc_1BE1D13:                 var_1B8 = Chr(&H12)
  loc_1BE1D20:                 var_134 = (Chr(&HF) + "***  ")
  loc_1BE1D27:                 var_174 = Space(3) & Trim(var_CC) 
  loc_1BE1D33:                 var_1C8 = ("  ***" + var_1B8)
  loc_1BE1D3D:                 Print 1, var_174 & Chr(&H12)
  loc_1BE1D9C:                 var_158 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BE1DAA:                 unk_589093.Execute CStr(var_158), var_174, -1
  loc_1BE1E0B:                 If (var_180.Fields.Item(0).Value > 1) Then
  loc_1BE1E3C:                   Call Proc_30_103_EF9B84(Proc_6_45_EAD428("Changed KOT", &H14), "D", &H28)
  loc_1BE1E46:                   Print 1, var_2F4
  loc_1BE1E5C:                 Else
  loc_1BE1EB2:                   unk_589093.Execute CStr("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_174, -1
  loc_1BE1F10:                   If (Proc_6_38_E68A98(CVar(var_180.Fields.Item(0)), var_180, var_2F4) = "Y") Then
  loc_1BE1F41:                     Call Proc_30_103_EF9B84(Proc_6_45_EAD428("DUPLICATE KOT", &H14), "D", &H28)
  loc_1BE1F4B:                     Print 1, var_2F4
  loc_1BE1F61:                   Else
  loc_1BE1F63:                     Print 1
  loc_1BE1F69:                   End If
  loc_1BE1F69:                 End If
  loc_1BE1F6E:                 Set var_E0 = Nothing
  loc_1BE1F86:                 var_134 = (Chr(&HF) + "** ")
  loc_1BE1F90:                 var_158 = ("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1BE1F99:                 var_174 = ("Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BE1F9F:                 Print 1, var_174
  loc_1BE1FB3:                 var_B8.MoveNext
  loc_1BE1FBA:                 Print 1
  loc_1BE1FC2:                 Print 1
  loc_1BE1FE8:                 var_158 = (Chr(&H1B) + Chr(&H6D))
  loc_1BE1FEE:                 Print 1, "Select Max(Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1BE1FFD:                 GoTo loc_1BE0DCC
  loc_1BE2000:               End If
  loc_1BE2002:               Close 1
  loc_1BE201E:               Open "C:\reptmp\KOTPrint_C" & CStr(arg_C) & ".BAT" For Output As 1 Len = &HFF
  loc_1BE2033:               If (arg_14 <> vbNullString) Then
  loc_1BE2055:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT>" & arg_14
  loc_1BE2069:               Else
  loc_1BE2083:                 var_2F4 = "TYPE C:\reptmp\TEXTFILE_C" & CStr(arg_C) & ".TXT>" & MemVar_1F923B4
  loc_1BE2088:                 Print 1, var_2F4
  loc_1BE2099:               End If
  loc_1BE209B:               Close 1
  loc_1BE20C1:               var_A8 = CVar(Shell(CVar("C:\reptmp\KOTPrint_C" & CStr(arg_C) & ".BAT"), 0)) 'Variant
  loc_1BE20CF:             End If
  loc_1BE20CF:           End If
  loc_1BE20CF:         End If
  loc_1BE20CF:       End If
  loc_1BE20CF:     End If
  loc_1BE20D2:   Else
  loc_1BE211C:     MsgBox("Please Check Printer Setting of Central KOT For " & var_C0.Fields.Item("Name").Value & ".", &H40, var_174, var_1B8, Chr(&H12))
  loc_1BE2137:   End If
  loc_1BE213A:   var_C0.MoveNext
  loc_1BE213F:   GoTo loc_1BDCDE1
  loc_1BE2142: End If
  loc_1BE2147: Set var_B8 = Nothing
  loc_1BE214F: Set var_BC = Nothing
  loc_1BE2157: Set var_C0 = Nothing
  loc_1BE215F: Proc_30_85_1BE2170 = &HFF
  loc_1BE2165: ' Referenced from: 1BDC99C
  loc_1BE2165: Proc_6_60_E62BC4(var_2F4, var_180)
  loc_1BE216A: Proc_30_85_1BE2170 = var_1F8
End Sub

Public Sub Proc_30_86_EFAC0C(arg_C) 'EFAC0C
  'Data Table: 589074
  Dim var_8C As Recordset15
  loc_EFAB35: Set var_8C = arg_C 
  loc_EFAB5D: var_8C.Fields.Append "mLine", &HC8, 1
  loc_EFAB89: var_8C.Fields.Append "Detail", &HC8, &H32
  loc_EFABB5: var_8C.Fields.Append "Mark", &HC8, 1
  loc_EFABC5: var_8C.CursorType = 3
  loc_EFABD2: var_8C.LockType = 3
  loc_EFABF1: var_8C.Open var_A0, var_B0, -1
  loc_EFABF8: Set var_8C = Nothing 
  loc_EFABFF: Set var_88 = arg_C 
  loc_EFAC03: Proc_30_86_EFAC0C = -1
End Sub

Public Sub Proc_30_87_F148A8(arg_C, arg_10, arg_14, arg_18) 'F148A8
  'Data Table: 589074
  Dim var_88 As Recordset15
  Dim var_98 As Variant
  Dim var_A8 As String
  loc_F147B7: Set var_88 = arg_C 
  loc_F147C6: var_88.AddNew var_98, var_A8
  loc_F147FE: var_88.Fields.Item("mLine").Value = Trim(arg_10)
  loc_F14840: var_88.Fields.Item("Detail").Value = Trim(arg_14)
  loc_F14852: var_98 = arg_18
  loc_F14866: var_A8 = "Mark"
  loc_F14882: var_88.Fields.Item(var_A8).Value = Trim(var_98)
  loc_F1489C: var_88.Update var_98, var_A8
  loc_F148A3: Set var_88 = Nothing 
  loc_F148A7: Exit Sub
End Sub

Public Sub Proc_30_88_F6303C(arg_C) 'F6303C
  'Data Table: 589074
  Dim var_8C As Recordset15
  loc_F62F0D: Set var_8C = arg_C 
  loc_F62F35: var_8C.Fields.Append "PrintType", &HC8, &H4B
  loc_F62F61: var_8C.Fields.Append "Printer", &HC8, &H4B
  loc_F62F8D: var_8C.Fields.Append "NoOfKot", 3, 0
  loc_F62FB9: var_8C.Fields.Append "Split", &HC8, 3
  loc_F62FE5: var_8C.Fields.Append "RestCode", &HC8, 6
  loc_F62FF5: var_8C.CursorType = 3
  loc_F63002: var_8C.LockType = 3
  loc_F63021: var_8C.Open var_A0, var_B0, -1
  loc_F63028: Set var_8C = Nothing 
  loc_F6302F: Set var_88 = arg_C 
  loc_F63033: Proc_30_88_F6303C = -1
  loc_F63039: -1(&H20) = var_A0
  loc_F6303A: DOC
End Sub

Public Sub Proc_30_89_1E753D8
  'Data Table: 589074
  Dim var_164 As Variant
  Dim var_144 As Variant
  Dim var_174 As Variant
  Dim var_178 As String
  Dim unk_589093 As Connection15
  Dim var_114 As Recordset15
  Dim var_19C As Variant
  Dim var_154 As Variant
  Dim var_1A8 As String
  Dim var_BC As Recordset15
  Dim var_EA As Integer
  Dim var_188 As Variant
  Dim var_1BC As Variant
  Dim var_1B8 As Variant
  Dim var_200 As Variant
  Dim var_198 As Variant
  Dim var_EC As Integer
  Dim var_12E As Integer
  Dim Me As Recordset15
  Dim var_218 As Recordset15
  Dim var_1C0 As Variant
  Dim var_1A4 As Variant
  Dim var_21C As Recordset15
  Dim var_1F0 As Variant
  Dim var_220 As String
  Dim var_224 As String
  Dim var_228 As String
  Dim var_D4 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_134 As Recordset15
  Dim var_116 As Integer
  Dim var_238 As Variant
  Dim var_23C As Variant
  Dim var_10E As Integer
  Dim var_1E0 As Variant
  Dim var_210 As Variant
  Dim var_270 As Variant
  Dim var_290 As Variant
  Dim var_B8 As Recordset15
  Dim var_110 As Integer
  Dim var_1D0 As Variant
  Dim var_92 As Integer
  Dim var_94 As Integer
  Dim var_2B4 As Variant
  Dim var_358 As Fields15
  Dim var_314 As Variant
  Dim var_304 As Variant
  Dim var_334 As Variant
  Dim var_370 As Variant
  Dim var_260 As Variant
  Dim var_3B0 As Variant
  Dim var_390 As Variant
  Dim var_2E4 As Variant
  Dim var_E0 As Recordset15
  Dim var_C8 As Recordset15
  Dim var_324 As Variant
  Dim var_3F0 As Variant
  Dim var_414 As Variant
  loc_1E6A770: On Error Goto loc_1E653D2
  loc_1E6A790: Proc_6_17_EAA2B0(var_154, MemVar_1F92078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1E6A7A6: unk_589093.Execute CStr(var_198 & var_154), -1, var_19C
  loc_1E6A7B1: Set var_114 = var_19C
  loc_1E6A7D7: If (var_114.RecordCount > 0) Then
  loc_1E6A811:   var_F4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_114.Fields.Item("KOTHeader1"))))))
  loc_1E6A857:   var_F8 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_114.Fields.Item("KOTHeader2"))))))
  loc_1E6A89D:   var_FC = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_114.Fields.Item("KOTHeader3"))))))
  loc_1E6A8E3:   var_100 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_114.Fields.Item("KOTHeader4"))))))
  loc_1E6A929:   var_104 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_114.Fields.Item("KOTPrinting"))))))
  loc_1E6A947:   var_19C = var_114.Fields
  loc_1E6A957:   var_154 = CVar(var_19C.Item("KOTPrintEdited")) 'Address
  loc_1E6A96F:   var_10C = CStr(Trim(CVar(Proc_6_38_E68A98(var_154))))
  loc_1E6A97E: End If
  loc_1E6A983: Set var_114 = Nothing
  loc_1E6A9AD: unk_589093.Execute "Select CKOTPrintYN,PrintType,CKOTPrintPath,NoOfKot From Depart Where Code='" & LocalRestCode & "'", var_154, -1
  loc_1E6A9B8: Set var_BC = var_19C
  loc_1E6A9DC: If (var_BC.RecordCount > 0) Then
  loc_1E6AA07:   var_174 = CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("CKOTPrintYN")))) 'String
  loc_1E6AA21:   var_E8 = CStr(Ucase(Trim(var_174)))
  loc_1E6AA5A:   var_12C = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("PrintType")))
  loc_1E6AA8B:   var_124 = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("CKOTPrintPath")))
  loc_1E6AABA:   Proc_6_39_E7C810(var_174, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1E6AAC3:   var_EA = CInt(var_174)
  loc_1E6AAD3:   var_144 = "NoOfKot"
  loc_1E6AADF:   var_19C = var_BC.Fields
  loc_1E6AAF6:   Proc_6_39_E7C810(var_174, CVar(var_19C.Item(var_144)))
  loc_1E6AB21:   Proc_6_39_E7C810(var_1D0, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1E6AB31:   var_164 = 0
  loc_1E6AB3B:   var_1E0 = (var_174 <= var_164) 'Variant
  loc_1E6AB4E:   var_EC = CInt(IIf(var_1E0, 1, var_1D0))
  loc_1E6AB69: End If
  loc_1E6AB71: If (var_E8 = "Y") Then
  loc_1E6AB82:   Call Proc_30_85_1BE2170(0)
  loc_1E6AB8A:   var_12E = var_214
  loc_1E6AB93:   If (var_12E = 0) Then
  loc_1E6AB96:     Exit Sub
  loc_1E6AB97:   End If
  loc_1E6AB97: End If
  loc_1E6ABA4: Call Proc_30_88_F6303C(New)
  loc_1E6ABAC: Set var_134 = var_19C
  loc_1E6ABC6: If (Me.RecordCount > 0) Then
  loc_1E6ABCF:   Me.MoveFirst
  loc_1E6ABD7:   var_EC = var_EA
  loc_1E6ABDA:   ' Referenced from: 1E6ADE4
  loc_1E6ABDA: End If
  loc_1E6ABEC: If Not(Me.EOF) Then
  loc_1E6ABF2:   Set var_218 = var_134 
  loc_1E6AC01:   var_218.AddNew var_144, var_164
  loc_1E6AC18:   var_19C = Me.Fields
  loc_1E6AC54:   var_218.Fields.Item("PrintType").Value = CVar(Proc_6_38_E68A98(CVar(var_19C.Item("ModDescription")), var_EC, var_19C, var_12E, var_12C))
  loc_1E6ACB7:   var_218.Fields.Item("Printer").Value = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Printer")), var_124, var_214))
  loc_1E6ACF1:   var_218.Fields.Item("NoOfKot").Value = 1
  loc_1E6AD4B:   var_218.Fields.Item("Split").Value = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("AutoPrint")), var_EC))
  loc_1E6AD63:   var_144 = "RestCode"
  loc_1E6AD92:   var_164 = "RestCode"
  loc_1E6AD9E:   var_1BC = var_218.Fields
  loc_1E6ADAE:   var_1BC.Item(var_164).Value = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_144)), var_EA))
  loc_1E6ADCE:   var_218.Update var_144, var_164
  loc_1E6ADD5:   Set var_218 = Nothing 
  loc_1E6ADDF:   Me.MoveNext
  loc_1E6ADE4:   GoTo loc_1E6ABDA
  loc_1E6ADE7: End If
  loc_1E6ADEA: Set var_21C = var_134 
  loc_1E6ADF9: var_21C.AddNew var_144, var_164
  loc_1E6AE23: var_21C.Fields.Item("PrintType").Value = "Default"
  loc_1E6AE54: var_21C.Fields.Item("Printer").Value = vbNullString
  loc_1E6AE86: var_21C.Fields.Item("NoOfKot").Value = CVar(var_EC)
  loc_1E6AEDF: var_21C.Fields.Item("Split").Value = IIf((var_104 = "Seperate for All Kitchen"), "Yes", "No")
  loc_1E6AEFC: var_164 = CVar(LocalRestCode) 'String
  loc_1E6AF03: var_144 = "RestCode"
  loc_1E6AF1F: var_21C.Fields.Item(var_144).Value = var_164
  loc_1E6AF36: var_21C.Update var_144, var_164
  loc_1E6AF3D: Set var_21C = Nothing 
  loc_1E6AF44: MemVar_1F923C0 = "N"
  loc_1E6AF4B: MemVar_1F923C4 = "N"
  loc_1E6AF52: MemVar_1F923C8 = "K"
  loc_1E6AF5D: var_178 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,S.CardNo,S.Name As MemName,W.name as WaiterName,k.RoomNo as TableNo,K.NCKOT,K.NCTYPE, K.Remarks , K.ContraDocId, D.ShortName,K.GuarAtt,K.U_AE,K.TokenNo " & "From (((KOT K Left Join Waiter W on K.Waiter=W.Code) left join SubGroup S On K.Party=S.SubCode) Left Join Depart D on D.Code=K.RestCode) "
  loc_1E6AFA2: var_88 = CStr(CVar(var_178 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1E6AFC1: var_174 = CVar("Select K.Sno,I.Name as ItemName,I.Unit,K.Qty, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6AFD9: var_19C = Me.Fields
  loc_1E6AFE1: var_1A4 = var_19C.Item("SearchCode")
  loc_1E6AFE9: var_154 = var_1A4.Value
  loc_1E6AFF1: var_198 = var_174 & var_154 
  loc_1E6AFFA: var_1B8 = var_198 & "'" 
  loc_1E6AFFF: var_8C = CStr(var_1B8)
  loc_1E6B01C: If (var_88 = vbNullString) Then
  loc_1E6B01F:   Exit Sub
  loc_1E6B020: End If
  loc_1E6B028: If (var_8C = vbNullString) Then
  loc_1E6B02B:   Exit Sub
  loc_1E6B02C: End If
  loc_1E6B04A: var_1A8 = "Select * From Depart Where Code='" & LocalRestCode & "'"
  loc_1E6B053: unk_589093.Execute var_1A8, var_154, -1
  loc_1E6B05E: Set var_C8 = var_19C
  loc_1E6B0A3: Call 0.Method_Proc_30_89_1E753D80 (CInt(4), var_1A4, var_1A8, "SELECT DISTINCT DOCID FROM KOT WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='", var_154)
  loc_1E6B0AB: -1 = var_1A4.Text
  loc_1E6B0C4: unk_589093.Execute var_1BC & var_1A8 & "' AND PENDING='Y' AND (DELFLAG IS NULL OR DELFLAG<>'Y') AND CONTRADOCID IS NULL", Me.Txt, Me.Txt
  loc_1E6B0FF: If (var_1BC.RecordCount = 1) Then
  loc_1E6B105:   var_CC = "New Order"
  loc_1E6B10B: Else
  loc_1E6B112:   Set var_19C = Me.LblState
  loc_1E6B120:   var_CC = var_19C.Caption
  loc_1E6B126: End If
  loc_1E6B13C: unk_589093.Execute var_88, var_154, -1
  loc_1E6B147: Set var_B4 = var_19C
  loc_1E6B15F: var_19C = var_B4.Fields
  loc_1E6B18F: var_1BC = var_B4.Fields
  loc_1E6B197: var_1C0 = var_1BC.Item("ContraDocId")
  loc_1E6B19F: var_174 = CVar(var_1C0) 'Address
  loc_1E6B1C6: If (var_19C And (Proc_6_38_E68A98(var_174, (Proc_6_38_E68A98(CVar(var_19C.Item("NCKOT"))) <> "Y")) <> vbNullString)) Then
  loc_1E6B1E2:   MsgBox("Sale Bill Already Generated !!", &H40, var_174, var_198, var_1B8)
  loc_1E6B1F2:   Exit Sub
  loc_1E6B1F3: End If
  loc_1E6B207: If (var_134.RecordCount > 0) Then
  loc_1E6B20D:   var_134.MoveFirst
  loc_1E6B212:   ' Referenced from: 1E7539E
  loc_1E6B212: End If
  loc_1E6B221: Loop Until Not(var_134.EOF) 'do at: 1E653A1
  loc_1E6B238: If (var_B4.RecordCount > 0) Then
  loc_1E6B23E:   var_B4.MoveFirst
  loc_1E6B246:   var_108 = vbNullString
  loc_1E6B249: End If
  loc_1E6B282: If (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("U_AE"))) = "E") Then
  loc_1E6B287:   var_116 = &HFF
  loc_1E6B28A: End If
  loc_1E6B299: If ((var_116 = &HFF) And (var_10C = "No Print")) Then
  loc_1E6B29C:   Exit Sub
  loc_1E6B29D: End If
  loc_1E6B2B3: If (((var_116 = &HFF) And (var_10C = "Void Items")) And (MemVar_1F920B8 <= 0)) Then
  loc_1E6B2C5:   var_19C = var_134.Fields
  loc_1E6B2D5:   var_154 = CVar(var_19C.Item("Split")) 'Address
  loc_1E6B2EF:   If (Proc_6_38_E68A98(var_154) = "No") Then
  loc_1E6B306:     var_178 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F92078
  loc_1E6B316:     unk_589093.Execute var_178 & "MK'", var_154, -1
  loc_1E6B321:     Set var_BC = var_19C
  loc_1E6B334:   Else
  loc_1E6B348:     var_174 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6B38F:     unk_589093.Execute CStr(var_174 & Me.Fields.Item("SearchCode").Value & "' And K.VoidYN='Y' Order By Depart.Name"), var_1D0, -1
  loc_1E6B39A:     Set var_BC = var_1BC
  loc_1E6B3B6:   End If
  loc_1E6B3B9: Else
  loc_1E6B3C8:   var_19C = var_134.Fields
  loc_1E6B3D8:   var_154 = CVar(var_19C.Item("Split")) 'Address
  loc_1E6B3F2:   If (Proc_6_38_E68A98(var_154, var_1BC) = "No") Then
  loc_1E6B409:     var_178 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F92078
  loc_1E6B419:     unk_589093.Execute var_178 & "MK'", var_154, -1
  loc_1E6B424:     Set var_BC = var_19C
  loc_1E6B437:   Else
  loc_1E6B44B:     var_174 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6B484:     var_1B8 = var_174 & Me.Fields.Item("SearchCode").Value & "' Order By Depart.Name" 
  loc_1E6B492:     unk_589093.Execute CStr(var_1B8), var_1D0, -1
  loc_1E6B49D:     Set var_BC = var_1BC
  loc_1E6B4B9:   End If
  loc_1E6B4B9: End If
  loc_1E6B4BF: var_238 = 0
  loc_1E6B4D5: var_164 = "Select Count(Distinct Depart.Code) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code Where K.DocID='"
  loc_1E6B51E: unk_589093.Execute CStr(var_164 & Me.Fields.Item("SearchCode").Value & "'"), var_1B8, -1
  loc_1E6B526: var_1BC = var_1BC.Fields
  loc_1E6B52E: var_238 = var_1C0.Item(var_1C0)
  loc_1E6B536: var_23C = var_23C.Value
  loc_1E6B541: Proc_6_39_E7C810(var_1E0, var_1D0, var_1D0)
  loc_1E6B54A: var_10E = CInt(var_1E0)
  loc_1E6B56C: ' Referenced from: 1E75393
  loc_1E6B57B: Loop Until Not(var_BC.EOF) 'do at: 1E65396
  loc_1E6B581: var_11C = vbNullString
  loc_1E6B59A: If (((var_116 = &HFF) And (var_10C = "Void Items")) And (MemVar_1F920B8 <= 0)) Then
  loc_1E6B5A0:   var_11C = "CANCELLED"
  loc_1E6B5DC:   If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split")), var_10E, var_1BC) = "Yes") Then
  loc_1E6B5E6:     var_174 = CVar("Select K.Sno,I.DispCode,I.Name as ItemName,I.Unit,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6B65F:     var_210 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1E6B69B:     var_8C = CStr(var_210 & var_BC.Fields.Item("Code").Value & "' And K.VoidYN='Y'")
  loc_1E6B6C9:   Else
  loc_1E6B6D0:     var_174 = CVar("Select K.Sno,I.DispCode,I.Name as ItemName,I.Unit,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6B70E:     var_8C = CStr(var_174 & Me.Fields.Item("SearchCode").Value & "' And K.VoidYN='Y'")
  loc_1E6B723:   End If
  loc_1E6B726: Else
  loc_1E6B735:   var_19C = var_134.Fields
  loc_1E6B75F:   If (Proc_6_38_E68A98(CVar(var_19C.Item("Split")), var_19C) = "Yes") Then
  loc_1E6B769:     var_174 = CVar("Select K.Sno,I.DispCode,I.Name as ItemName,I.Unit,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6B7E2:     var_210 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1E6B81E:     var_8C = CStr(var_210 & var_BC.Fields.Item("Code").Value & "'")
  loc_1E6B84C:   Else
  loc_1E6B853:     var_174 = CVar("Select K.Sno,I.DispCode,I.Name as ItemName,I.Unit,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6B86B:     var_19C = Me.Fields
  loc_1E6B87B:     var_154 = var_19C.Item("SearchCode").Value
  loc_1E6B891:     var_8C = CStr(var_174 & var_154 & "'")
  loc_1E6B8A6:   End If
  loc_1E6B8A6: End If
  loc_1E6B8BC: unk_589093.Execute var_8C, var_154, -1
  loc_1E6B8C7: Set var_B8 = var_19C
  loc_1E6B8D6: var_1A0 = var_B8.RecordCount
  loc_1E6B8E4: Loop Until (var_1A0 > 0) 'do at: 1E6538B
  loc_1E6B923: If (var_134.Fields.Item("PrintType").Value = "Default") Then
  loc_1E6B955:   var_12C = CStr(Trim(CVar(var_BC.Fields.Item("PrintType"))))
  loc_1E6B965: Else
  loc_1E6B990:   var_12C = CStr(var_134.Fields.Item("PrintType").Value)
  loc_1E6B99D: End If
  loc_1E6B9A3: var_110 = (var_110 + 1)
  loc_1E6B9B8: var_19C = var_134.Fields
  loc_1E6BA1E: var_1E0 = (var_19C.Item("NoOfKot").Value > 0) Or (var_12C = "ADJUSTABLE WINDOWS KOT PRINT") And (var_134.Fields.Item("NoOfKot").Value = 0)
  loc_1E6BA38: Loop Until CBool(var_1E0) 'do at: 1E65177
  loc_1E6BA3E: var_294 = var_12C
  loc_1E6BA49: If (var_294 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1E6BA59:   Call Proc_30_86_EFAC0C(New)
  loc_1E6BA61:   Set var_D8 = var_19C
  loc_1E6BA67:   Me.Recordset15.MoveFirst
  loc_1E6BA6C:   ' Referenced from: 1E6CCE3
  loc_1E6BA7B:   If Not(var_B4.EOF) Then
  loc_1E6BA80:     var_92 = 0
  loc_1E6BA97:     var_19C = var_B4.Fields
  loc_1E6BB2E:     var_290 = IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT")), var_110) = "Y"), "* NC LOT *", "* LOT *")
  loc_1E6BB9E:     var_324 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_19C.Item("ShortName")), 1, var_92, var_19C))), 1, 3)) = "LAU") 'Variant
  loc_1E6BBA8:     var_334 = IIf(var_324, var_290, IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT")), var_19C) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1E6BBB1:     var_90 = CStr(var_334)
  loc_1E6BBF5:     If (var_92 = 0) Then
  loc_1E6BC16:       Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1E6BC52:       var_C0 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1E6BC89:       var_174 = CVar(Me.LblRest.Caption) 'String
  loc_1E6BC8C:       var_198 = (Space(1) + var_174)
  loc_1E6BCA1:       Call Proc_30_87_F148A8(var_D8, vbNullString, CStr(Trim(CVar(Proc_6_38_E68A98(CVar(Me.LblRest.Item("ShortName")), 1, var_92, Me.LblRest)))), vbNullString)
  loc_1E6BCD3:       Call Proc_30_87_F148A8(var_D8, vbNullString, var_90, vbNullString)
  loc_1E6BD02:       Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1E6BD36:       Proc_6_39_E7C810(var_174, CVar(var_B4.Fields.Item("VNo")))
  loc_1E6BD73:       Call Proc_30_87_F148A8(var_D8, vbNullString, " KOT No.   : " & Proc_6_45_EAD428(CStr(var_174), &HA), vbNullString)
  loc_1E6BE43:       Call Proc_30_87_F148A8(var_D8, vbNullString, " KOT Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), &H12), &HC) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8), vbNullString)
  loc_1E6BE8A:       var_1A4 = var_B4.Fields.Item("Remarks")
  loc_1E6BED5:       Call Proc_30_87_F148A8(var_D8, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_1A4)), &H1E), vbNullString)
  loc_1E6BF07:       Set var_19C = Me.Label1
  loc_1E6BF0D:       Call 0.Method_Proc_30_89_1E753D80 (2, var_1A4)
  loc_1E6BF9B:       Proc_6_39_E7C810(var_290, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E6BFBC:       var_358 = var_B4.Fields
  loc_1E6BFD3:       Proc_6_39_E7C810(var_324, CVar(var_358.Item("GuarAtt")))
  loc_1E6C001:       var_304 = (Space(&HA) + "Covers: ")
  loc_1E6C00B:       var_370 = ("* KOT *" + CVar(Proc_6_45_EAD428(CStr(var_324), 7)))
  loc_1E6C03D:       var_1D0 = (Space(1) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_1A4))), &HA)))
  loc_1E6C046:       var_1E0 = (Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_19C.Item("ShortName")), 1, &H12, var_19C))), 1, 3) + ": ")
  loc_1E6C04D:       var_210 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))), 5)) 'String
  loc_1E6C050:       var_260 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_19C.Item("ShortName")), 1, &H12, var_19C))), 1, 3)) + var_210)
  loc_1E6C057:       var_3B0 = ("* NC LOT *" + IIf((var_290 <> 0), var_370, vbNullString))
  loc_1E6C06C:       Call Proc_30_87_F148A8(var_D8, vbNullString, CStr(var_3B0), vbNullString)
  loc_1E6C0DA:       Call Proc_30_87_F148A8(var_D8, vbNullString, var_C0, vbNullString)
  loc_1E6C0E6:     End If
  loc_1E6C10C:     var_198 = (Space(1) + CVar(Proc_6_45_EAD428("ITEM NAME", &H19)))
  loc_1E6C120:     var_1D0 = (Trim(CVar(var_1A4)) + Space(1))
  loc_1E6C13A:     var_200 = (Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_19C.Item("ShortName")), 1, &H12, var_19C))), 1, 3) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1E6C13F:     var_AC = CStr(CVar(var_B4.Fields.Item("TableNo")))
  loc_1E6C172:     Call Proc_30_87_F148A8(var_D8, vbNullString, var_AC, vbNullString)
  loc_1E6C196:     Call Proc_30_87_F148A8(var_D8, vbNullString, var_C0, vbNullString)
  loc_1E6C1A8:     var_92 = (var_92 + 4)
  loc_1E6C1AE:     var_B8.MoveFirst
  loc_1E6C1B3:     ' Referenced from: 1E6C61E
  loc_1E6C1C2:     If Not(var_B8.EOF) Then
  loc_1E6C1D4:       var_19C = var_134.Fields
  loc_1E6C23B:       If (var_19C And ((Proc_6_38_E68A98(CVar(var_19C.Item("Split")), &H12) = "Yes") <> Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")), var_108))) Then
  loc_1E6C266:         var_108 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")))
  loc_1E6C296:         Call Proc_30_87_F148A8(var_D8, vbNullString, "*" & var_108 & "*", vbNullString)
  loc_1E6C2AC:         var_92 = (var_92 + 1)
  loc_1E6C2AF:       End If
  loc_1E6C2FC:       Proc_6_39_E7C810(var_210, CVar(var_B8.Fields.Item("qty")))
  loc_1E6C36B:       var_314 = (var_B8.Fields.Item("Cancel").Value = "Y") 'Variant
  loc_1E6C39F:       var_1B8 = (1 + CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, Space(1))))
  loc_1E6C3B3:       var_1E0 = (Space(1) + Space(1))
  loc_1E6C3CC:       var_2B4 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_210, "0")), 3, CVar(Proc_6_52_EAD4F4("Qty", 6)))))
  loc_1E6C3E5:       var_390 = (CVar(var_B4.Fields.Item("NCKOT")) + CVar(Proc_6_52_EAD4F4(CStr(IIf(var_314, "Void", vbNullString)), 5)))
  loc_1E6C444:       Call Proc_30_87_F148A8(var_D8, vbNullString, CStr(vbNullString), vbNullString)
  loc_1E6C456:       var_92 = (var_92 + 1)
  loc_1E6C492:       If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1E6C4EA:         Call Proc_30_87_F148A8(var_D8, vbNullString, "(" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description"))) & ")", vbNullString)
  loc_1E6C50A:         var_92 = (var_92 + 1)
  loc_1E6C50D:       End If
  loc_1E6C517:       If (&H12 = (&H45 - var_A6)) Then
  loc_1E6C532:         Call Proc_30_87_F148A8(var_D8, vbNullString, var_C0, vbNullString)
  loc_1E6C55C:         Call Proc_30_87_F148A8(var_D8, vbNullString, " Contd.", vbNullString)
  loc_1E6C570:         var_94 = (var_94 + 1)
  loc_1E6C575:         var_92 = 0
  loc_1E6C590:         Call Proc_30_87_F148A8(var_D8, vbNullString, var_90, vbNullString)
  loc_1E6C59E:         var_92 = &H12
  loc_1E6C5B9:         Call Proc_30_87_F148A8(var_D8, vbNullString, var_C0, vbNullString)
  loc_1E6C5DD:         Call Proc_30_87_F148A8(var_D8, vbNullString, var_AC, vbNullString)
  loc_1E6C601:         Call Proc_30_87_F148A8(var_D8, vbNullString, var_C0, vbNullString)
  loc_1E6C613:         var_92 = (var_92 + 4)
  loc_1E6C616:       End If
  loc_1E6C619:       var_B8.MoveNext
  loc_1E6C61E:       GoTo loc_1E6C1B3
  loc_1E6C621:     End If
  loc_1E6C62B:     If (var_92 < (&H45 - var_A6)) Then
  loc_1E6C62E:       ' Referenced from: 1E6C670
  loc_1E6C638:       If (var_92 = (&H45 - var_A6)) Then
  loc_1E6C659:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1E6C66D:         var_92 = (var_92 + 1)
  loc_1E6C670:         GoTo loc_1E6C62E
  loc_1E6C673:       End If
  loc_1E6C673:     End If
  loc_1E6C68B:     Call Proc_30_87_F148A8(var_D8, vbNullString, var_C0, vbNullString)
  loc_1E6C6F9:     Call Proc_30_87_F148A8(var_D8, vbNullString, " Waiter Name  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92), vbNullString)
  loc_1E6C754:     Call Proc_30_87_F148A8(var_D8, vbNullString, CStr(" ***  " & Trim(var_CC) & "  ***"), vbNullString)
  loc_1E6C7A4:     If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split")), 1) = "Yes") Then
  loc_1E6C7BB:       var_174 = CVar("Select Count(Distinct Printed) From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6C80F:       var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E6C825:       var_1BC = var_BC.Fields
  loc_1E6C886:       var_304 = var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E6C894:       unk_589093.Execute CStr(var_304), var_314, -1
  loc_1E6C89F:       Set var_E0 = var_358
  loc_1E6C8DA:     Else
  loc_1E6C922:       var_198 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" 
  loc_1E6C94B:       unk_589093.Execute CStr(var_198 & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')"), var_200, -1
  loc_1E6C956:       Set var_E0 = var_1BC
  loc_1E6C976:     End If
  loc_1E6C9B2:     If (var_E0.Fields.Item(0).Value > 1) Then
  loc_1E6C9DC:       Call Proc_30_87_F148A8(var_D8, vbNullString, " ***  " & "Changed KOT" & "  ***", vbNullString)
  loc_1E6C9EF:     Else
  loc_1E6CA28:       If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split")), var_1BC, var_358) = "Yes") Then
  loc_1E6CA3F:         var_174 = CVar("Select Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6CA93:         var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E6CAA9:         var_1BC = var_BC.Fields
  loc_1E6CB18:         unk_589093.Execute CStr(var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_314, -1
  loc_1E6CB23:         Set var_E0 = var_358
  loc_1E6CB5E:       Else
  loc_1E6CB6B:         var_164 = "Select Printed from kot where docid='"
  loc_1E6CBA1:         var_188 = "' AND SNO In (Select SNo From ("
  loc_1E6CBCF:         unk_589093.Execute CStr(var_164 & Me.Fields.Item("SearchCode").Value & var_188 & var_B8.Source & ")Q)"), var_200, -1
  loc_1E6CBDA:         Set var_E0 = var_1BC
  loc_1E6CBFA:       End If
  loc_1E6CBFD:       var_144 = 0
  loc_1E6CC33:       If (Proc_6_38_E68A98(CVar(var_E0.Fields.Item(var_144)), var_1BC, var_358) = "Y") Then
  loc_1E6CC5D:         Call Proc_30_87_F148A8(var_D8, vbNullString, " ***  " & "DUPLICATE KOT" & "  ***", vbNullString)
  loc_1E6CC70:       Else
  loc_1E6CC8E:         Call Proc_30_87_F148A8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1E6CC9C:       End If
  loc_1E6CC9C:     End If
  loc_1E6CCA1:     Set var_E0 = Nothing
  loc_1E6CCCB:     Call Proc_30_87_F148A8(var_D8, vbNullString, "** " & MemVar_1F9221C & " **", vbNullString)
  loc_1E6CCDE:     var_B4.MoveNext
  loc_1E6CCE3:     GoTo loc_1E6BA6C
  loc_1E6CCE6:   End If
  loc_1E6CCE9:   var_DC = "WinKOTPrint"
  loc_1E6CD10:   Set var_19C = var_D8 
  loc_1E6CD17:   CreateFieldDefFile(var_19C, MemVar_1F920B4 & "\" & var_DC & ".ttx", &HFF)
  loc_1E6CD59:   Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_DC & ".RPT", var_144, var_19C)
  loc_1E6CD64:   MemVar_1F921E4 = var_19C
  loc_1E6CD8D:   Call 0.Method_arg_64 (var_19C, CVar(var_19C), var_164)
  loc_1E6CD95:   Call 0.Method_arg_2C (var_188, var_92)
  loc_1E6CDF5:   var_1A8 = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) = "Default"))
  loc_1E6CE13:   If (var_92 And (var_1A8 <> vbNullString)) Then
  loc_1E6CE60:     If CBool(Ucase(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1E6CE8F:       Call Proc_30_84_F0F128(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))
  loc_1E6CE9D:     End If
  loc_1E6CEA0:   Else
  loc_1E6CF16:     If ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) <> "Default") And (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer"))) <> vbNullString)) Then
  loc_1E6CF63:       If CBool(Ucase(CVar(Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1E6CF92:         Call Proc_30_84_F0F128(Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer"))))
  loc_1E6CFA0:       End If
  loc_1E6CFA0:     End If
  loc_1E6CFA0:   End If
  loc_1E6CFD0:   var_164 = False
  loc_1E6CFDB:   Call 0.Method_Me8 (var_164, CVar(var_134.Fields.Item("NoOfKot")), var_188)
  loc_1E6CFE8:   var_12E = &HFF
  loc_1E6CFF0:   Set var_D8 = Nothing
  loc_1E6CFF3:   GoTo loc_1E65177
  loc_1E6CFF6: End If
  loc_1E6CFFE: If (var_294 = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1E6D004:   var_B4.MoveFirst
  loc_1E6D009:   ' Referenced from: 1E6E057
  loc_1E6D018:   If Not(var_B4.EOF) Then
  loc_1E6D01E:     var_144 = "ShortName"
  loc_1E6D04E:     var_1B8 = 3
  loc_1E6D071:     var_1F0 = "NCKOT"
  loc_1E6D07D:     var_1BC = var_B4.Fields
  loc_1E6D085:     var_1C0 = var_1BC.Item(var_1F0)
  loc_1E6D0BA:     var_238 = (Proc_6_38_E68A98(CVar(var_1C0), var_1F0) = "Y")
  loc_1E6D127:     var_188 = "LAU"
  loc_1E6D13B:     var_334 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item(var_144)), var_12E))), 1, var_1B8)) = var_188), IIf(var_238, "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1E6D144:     var_90 = CStr(var_334)
  loc_1E6D185:     var_DC = "KOTPrint"
  loc_1E6D1AC:     Set var_19C = var_B8 
  loc_1E6D1B3:     CreateFieldDefFile(var_19C, MemVar_1F920B4 & "\" & var_DC & ".ttx")
  loc_1E6D1BF:     Set var_B8 = var_19C
  loc_1E6D1F5:     Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_DC & ".RPT", var_144, var_19C)
  loc_1E6D200:     MemVar_1F921E4 = var_19C
  loc_1E6D229:     Call 0.Method_arg_64 (var_19C, CVar(var_B8), var_164)
  loc_1E6D231:     Call 0.Method_arg_2C (var_188, &HFF)
  loc_1E6D23F:     Call 0.Method_arg_150 (var_238)
  loc_1E6D28C:     var_198 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1E6D29A:     unk_589093.Execute CStr(var_198), var_1B8, -1
  loc_1E6D2FB:     If (var_1BC.Fields.Item(0).Value > 1) Then
  loc_1E6D301:       var_D0 = "Changed KOT"
  loc_1E6D307:     Else
  loc_1E6D35D:       unk_589093.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_1B8, -1
  loc_1E6D391:       var_19C = var_1BC.Fields
  loc_1E6D399:       var_1A4 = var_19C.Item(0)
  loc_1E6D3AA:       var_178 = Proc_6_38_E68A98(CVar(var_1A4), var_1BC)
  loc_1E6D3BB:       If (var_178 = "Y") Then
  loc_1E6D3C1:         var_D0 = "DUPLICATE KOT"
  loc_1E6D3C7:       Else
  loc_1E6D3CA:         var_D0 = vbNullString
  loc_1E6D3CD:       End If
  loc_1E6D3CD:     End If
  loc_1E6D3D2:     Set var_E0 = Nothing
  loc_1E6D3E6:     Call 0.Method_arg_90 (var_19C, var_1A0, var_AE)
  loc_1E6D3EE:     Call 0.Method_arg_24 (1)
  loc_1E6D3FA:     For var_3B4 =  To CInt(var_1A0): var_1BC = var_3B4 'Integer
  loc_1E6D413:       Call 0.Method_arg_90 (var_19C, CLng(var_AE))
  loc_1E6D41B:       Call 0.Method_arg_20 (var_1A4)
  loc_1E6D423:       Call 0.Method_arg_30 (var_178)
  loc_1E6D439:       var_3C4 = Ucase(CVar(var_178)) 'Variant
  loc_1E6D469:       If (var_3C4 = Ucase("comp_name")) Then
  loc_1E6D48D:         Call 0.Method_arg_90 (var_19C, CLng(var_AE))
  loc_1E6D495:         Call 0.Method_arg_20 (var_1A4)
  loc_1E6D49D:         Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_1E6D4B3:       Else
  loc_1E6D4D5:         If (var_3C4 = Ucase("comp_add1")) Then
  loc_1E6D4F9:           Call 0.Method_arg_90 (var_19C, CLng(var_AE))
  loc_1E6D501:           Call 0.Method_arg_20 (var_1A4)
  loc_1E6D509:           Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1E6D51F:         Else
  loc_1E6D541:           If (var_3C4 = Ucase("comp_pin")) Then
  loc_1E6D565:             Call 0.Method_arg_90 (var_19C, CLng(var_AE))
  loc_1E6D56D:             Call 0.Method_arg_20 (var_1A4)
  loc_1E6D575:             Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_1E6D58B:           Else
  loc_1E6D5AD:             If (var_3C4 = Ucase("comp_GSTIN")) Then
  loc_1E6D5D1:               Call 0.Method_arg_90 (var_19C, CLng(var_AE))
  loc_1E6D5D9:               Call 0.Method_arg_20 (var_1A4)
  loc_1E6D5E1:               Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1E6D5F7:             Else
  loc_1E6D619:               If (var_3C4 = Ucase("RestName")) Then
  loc_1E6D626:                 Set var_19C = Me.LblRest
  loc_1E6D64F:                 Call 0.Method_arg_90 (var_1A4, CLng(var_AE))
  loc_1E6D657:                 Call 0.Method_arg_20 (var_1BC)
  loc_1E6D65F:                 Call 0.Method_arg_38 ("'" & var_19C.Caption & "'")
  loc_1E6D679:               Else
  loc_1E6D69B:                 If (var_3C4 = Ucase("mTitle")) Then
  loc_1E6D6BF:                   Call 0.Method_arg_90 (var_19C, CLng(var_AE))
  loc_1E6D6C7:                   Call 0.Method_arg_20 (var_1A4)
  loc_1E6D6CF:                   Call 0.Method_arg_38 ("'" & var_90 & "'")
  loc_1E6D6E5:                 Else
  loc_1E6D6ED:                   var_154 = "Header1"
  loc_1E6D707:                   If (var_3C4 = Ucase(var_154)) Then
  loc_1E6D715:                     Proc_6_17_EAA2B0(var_154)
  loc_1E6D731:                     Call 0.Method_arg_90 (var_19C, CLng(var_AE), var_1A4)
  loc_1E6D739:                     Call 0.Method_arg_20 (CStr(var_154))
  loc_1E6D741:                     Call 0.Method_arg_38 (var_F4)
  loc_1E6D756:                   Else
  loc_1E6D75E:                     var_154 = "Header2"
  loc_1E6D778:                     If (var_3C4 = Ucase(var_154)) Then
  loc_1E6D786:                       Proc_6_17_EAA2B0(var_154)
  loc_1E6D7A2:                       Call 0.Method_arg_90 (var_19C, CLng(var_AE), var_1A4)
  loc_1E6D7AA:                       Call 0.Method_arg_20 (CStr(var_154))
  loc_1E6D7B2:                       Call 0.Method_arg_38 (var_F8)
  loc_1E6D7C7:                     Else
  loc_1E6D7CF:                       var_154 = "Header3"
  loc_1E6D7E9:                       If (var_3C4 = Ucase(var_154)) Then
  loc_1E6D7F7:                         Proc_6_17_EAA2B0(var_154)
  loc_1E6D813:                         Call 0.Method_arg_90 (var_19C, CLng(var_AE), var_1A4)
  loc_1E6D81B:                         Call 0.Method_arg_20 (CStr(var_154))
  loc_1E6D823:                         Call 0.Method_arg_38 (var_FC)
  loc_1E6D838:                       Else
  loc_1E6D840:                         var_154 = "Header4"
  loc_1E6D85A:                         If (var_3C4 = Ucase(var_154)) Then
  loc_1E6D868:                           Proc_6_17_EAA2B0(var_154)
  loc_1E6D884:                           Call 0.Method_arg_90 (var_19C, CLng(var_AE), var_1A4)
  loc_1E6D88C:                           Call 0.Method_arg_20 (CStr(var_154))
  loc_1E6D894:                           Call 0.Method_arg_38 (var_100)
  loc_1E6D8A9:                         Else
  loc_1E6D8BA:                           var_174 = Ucase("KotNo")
  loc_1E6D8CB:                           If (var_3C4 = var_174) Then
  loc_1E6D8F9:                             Proc_6_39_E7C810(var_174, CVar(var_B4.Fields.Item("VNo")))
  loc_1E6D905:                             var_188 = "'"
  loc_1E6D922:                             Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E6D92A:                             Call 0.Method_arg_20 (var_1C0)
  loc_1E6D932:                             Call 0.Method_arg_38 (CStr("'" & var_174 & var_188))
  loc_1E6D951:                           Else
  loc_1E6D973:                             If (var_3C4 = Ucase("KotDate")) Then
  loc_1E6D9BF:                               Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E6D9C7:                               Call 0.Method_arg_20 (var_1C0)
  loc_1E6D9CF:                               Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))) & "'")
  loc_1E6D9EC:                             Else
  loc_1E6DA0E:                               If (var_3C4 = Ucase("KotTime")) Then
  loc_1E6DA5A:                                 Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E6DA62:                                 Call 0.Method_arg_20 (var_1C0)
  loc_1E6DA6A:                                 Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))) & "'")
  loc_1E6DA87:                               Else
  loc_1E6DAA9:                                 If (var_3C4 = Ucase("Remarks")) Then
  loc_1E6DAF5:                                   Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E6DAFD:                                   Call 0.Method_arg_20 (var_1C0)
  loc_1E6DB05:                                   Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))) & "'")
  loc_1E6DB22:                                 Else
  loc_1E6DB44:                                   If (var_3C4 = Ucase("Card_No")) Then
  loc_1E6DB90:                                     Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E6DB98:                                     Call 0.Method_arg_20 (var_1C0)
  loc_1E6DBA0:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CardNo"))) & "'")
  loc_1E6DBBD:                                   Else
  loc_1E6DBDF:                                     If (var_3C4 = Ucase("Member_Name")) Then
  loc_1E6DBFC:                                       var_1A4 = var_B4.Fields.Item("MemName")
  loc_1E6DC2B:                                       Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E6DC33:                                       Call 0.Method_arg_20 (var_1C0)
  loc_1E6DC3B:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_1A4)) & "'")
  loc_1E6DC58:                                     Else
  loc_1E6DC7A:                                       If (var_3C4 = Ucase("TableTitle")) Then
  loc_1E6DC8B:                                         Set var_19C = Me.Label1
  loc_1E6DC91:                                         Call 0.Method_Proc_30_89_1E753D80 (2, var_1A4)
  loc_1E6DCC9:                                         Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E6DCD1:                                         Call 0.Method_arg_20 (var_1C0)
  loc_1E6DCD9:                                         Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_1A4)) & "'"))
  loc_1E6DCF8:                                       Else
  loc_1E6DD1A:                                         If (var_3C4 = Ucase("TableNo")) Then
  loc_1E6DD66:                                           Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E6DD6E:                                           Call 0.Method_arg_20 (var_1C0)
  loc_1E6DD76:                                           Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))) & "'")
  loc_1E6DD93:                                         Else
  loc_1E6DDB5:                                           If (var_3C4 = Ucase("Steward")) Then
  loc_1E6DDCA:                                             var_19C = var_B4.Fields
  loc_1E6DDD2:                                             var_1A4 = var_19C.Item("WaiterName")
  loc_1E6DE01:                                             Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E6DE09:                                             Call 0.Method_arg_20 (var_1C0)
  loc_1E6DE11:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_1A4)) & "'")
  loc_1E6DE2E:                                           Else
  loc_1E6DE50:                                             If (var_3C4 = Ucase("KotStatus")) Then
  loc_1E6DE74:                                               Call 0.Method_arg_90 (var_19C, CLng(var_AE))
  loc_1E6DE7C:                                               Call 0.Method_arg_20 (var_1A4)
  loc_1E6DE84:                                               Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1E6DE9A:                                             Else
  loc_1E6DEBC:                                               If (var_3C4 = Ucase("KotRemark")) Then
  loc_1E6DEE0:                                                 Call 0.Method_arg_90 (var_19C, CLng(var_AE))
  loc_1E6DEE8:                                                 Call 0.Method_arg_20 (var_1A4)
  loc_1E6DEF0:                                                 Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_1E6DF06:                                               Else
  loc_1E6DF17:                                                 var_174 = Ucase("Covers")
  loc_1E6DF28:                                                 If (var_3C4 = var_174) Then
  loc_1E6DF54:                                                   Proc_6_39_E7C810(var_174, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E6DF7C:                                                   Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E6DF84:                                                   Call 0.Method_arg_20 (var_1C0)
  loc_1E6DF8C:                                                   Call 0.Method_arg_38 ("'" & CStr(var_174) & "'")
  loc_1E6DFAF:                                                 Else
  loc_1E6DFD1:                                                   If (var_3C4 = Ucase("NCType")) Then
  loc_1E6E01D:                                                     Call 0.Method_arg_90 (var_1BC, CLng(var_AE))
  loc_1E6E025:                                                     Call 0.Method_arg_20 (var_1C0)
  loc_1E6E02D:                                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCType"))) & "'")
  loc_1E6E047:                                                   End If
  loc_1E6E047:                                                 End If
  loc_1E6E047:                                               End If
  loc_1E6E047:                                             End If
  loc_1E6E047:                                           End If
  loc_1E6E047:                                         End If
  loc_1E6E047:                                       End If
  loc_1E6E047:                                     End If
  loc_1E6E047:                                   End If
  loc_1E6E047:                                 End If
  loc_1E6E047:                               End If
  loc_1E6E047:                             End If
  loc_1E6E047:                           End If
  loc_1E6E047:                         End If
  loc_1E6E047:                       End If
  loc_1E6E047:                     End If
  loc_1E6E047:                   End If
  loc_1E6E047:                 End If
  loc_1E6E047:               End If
  loc_1E6E047:             End If
  loc_1E6E047:           End If
  loc_1E6E047:         End If
  loc_1E6E047:       End If
  loc_1E6E04A:     Next var_3B4 'Integer
  loc_1E6E052:     var_B4.MoveNext
  loc_1E6E057:     GoTo loc_1E6D009
  loc_1E6E05A:   End If
  loc_1E6E0D0:   If ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) = "Default") And (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString)) Then
  loc_1E6E11D:     If CBool(Ucase(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1E6E14C:       Call Proc_30_84_F0F128(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))
  loc_1E6E15A:     End If
  loc_1E6E15D:   Else
  loc_1E6E185:     var_178 = Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType")))
  loc_1E6E1D3:     If ((var_178 <> "Default") And (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer"))) <> vbNullString)) Then
  loc_1E6E1FE:       var_174 = CVar(Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer")))) 'String
  loc_1E6E220:       If CBool(Ucase(var_174) <> "PRN") Then
  loc_1E6E24F:         Call Proc_30_84_F0F128(Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer"))))
  loc_1E6E25D:       End If
  loc_1E6E25D:     End If
  loc_1E6E25D:   End If
  loc_1E6E27C:   var_154 = CVar(var_134.Fields.Item("NoOfKot")) 'Address
  loc_1E6E283:   Proc_6_39_E7C810(var_174)
  loc_1E6E29D:   If (var_174 = 0) Then
  loc_1E6E2A6:     Call 0.Method_arg_50 (var_178)
  loc_1E6E2B0:     Set var_1A4 = Nothing
  loc_1E6E2CA:     Set var_19C = MemVar_1F921E4 
  loc_1E6E2D6:     Proc_6_99_1483714(var_19C, 0, var_178)
  loc_1E6E2E1:     MemVar_1F921E4 = var_19C
  loc_1E6E2F2:   Else
  loc_1E6E318:     Proc_6_39_E7C810(var_174, CVar(var_134.Fields.Item("NoOfKot")), &HFF)
  loc_1E6E332:     If (var_174 > 0) Then
  loc_1E6E35B:       Proc_6_39_E7C810(var_174, CVar(var_134.Fields.Item("NoOfKot")))
  loc_1E6E37B:       Call 0.Method_Me8 (False, var_174, var_188, var_1F0)
  loc_1E6E38A:     End If
  loc_1E6E38A:   End If
  loc_1E6E38C:   var_12E = &HFF
  loc_1E6E38F:   GoTo loc_1E65177
  loc_1E6E392: End If
  loc_1E6E39A: If (var_294 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1E6E39F:   Close 1
  loc_1E6E3DD:   Open "C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1E6E3F1:   var_B4.MoveFirst
  loc_1E6E3F6:   ' Referenced from: 1E6F878
  loc_1E6E405:   If Not(var_B4.EOF) Then
  loc_1E6E40A:     var_92 = 0
  loc_1E6E429:     var_1A4 = var_B4.Fields.Item("ShortName")
  loc_1E6E4B8:     var_290 = IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT")), var_238) = "Y"), "* NC LOT *", "* LOT *")
  loc_1E6E4E5:     var_224 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT")), var_1A4)
  loc_1E6E528:     var_324 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_1A4), 1, var_92, var_12E))), 1, 3)) = "LAU") 'Variant
  loc_1E6E53B:     var_90 = CStr(IIf(var_324, var_290, IIf((var_224 = "Y"), "* NC KOT *", "* KOT *")))
  loc_1E6E57F:     If (var_92 = 0) Then
  loc_1E6E584:       Print 1
  loc_1E6E5B8:       var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1E6E5C9:       If (var_F4 <> vbNullString) Then
  loc_1E6E5F2:         var_198 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1E6E5F8:         Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_1A4), 1, var_92, var_12E)))
  loc_1E6E60A:       End If
  loc_1E6E612:       If (var_F8 <> vbNullString) Then
  loc_1E6E63B:         var_198 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1E6E641:         Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_1A4), 1, var_92, var_12E)))
  loc_1E6E653:       End If
  loc_1E6E65B:       If (var_FC <> vbNullString) Then
  loc_1E6E684:         var_198 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H28)))
  loc_1E6E68A:         Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_1A4), 1, var_92, var_12E)))
  loc_1E6E69C:       End If
  loc_1E6E6A4:       If (var_100 <> vbNullString) Then
  loc_1E6E6CD:         var_198 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_100, &H28)))
  loc_1E6E6D3:         Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_1A4), 1, var_92, var_12E)))
  loc_1E6E6E5:       End If
  loc_1E6E721:       If CBool(var_C8.Fields.Item("SaleBillTokenHeader1").Value <> vbNullString) Then
  loc_1E6E76A:         var_1A8 = Proc_6_45_EAD428(CStr(var_C8.Fields.Item("SaleBillTokenHeader1").Value), &H2A)
  loc_1E6E783:         var_1B8 = (Chr(&HF) + CVar(var_1A8))
  loc_1E6E78A:         var_1E0 = (3 + Chr(&H12))
  loc_1E6E790:         Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_C8.Fields.Item("SaleBillTokenHeader1")), 1, var_92, var_12E))), 1, 3))
  loc_1E6E7B3:       End If
  loc_1E6E7B5:       Print 1
  loc_1E6E7E5:       Call Proc_30_103_EF9B84(Me.LblRest.Caption, "D", &H28)
  loc_1E6E7EF:       Print 1, var_224
  loc_1E6E815:       Call Proc_30_103_EF9B84(var_90, "D", &H28)
  loc_1E6E81F:       Print 1, var_1A8
  loc_1E6E833:       Print 1
  loc_1E6E83B:       Print 1
  loc_1E6E874:       Proc_6_39_E7C810(3, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1E6E896:       var_174 = (Chr(&HF) + "KOT No.   : ")
  loc_1E6E8A0:       var_1E0 = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EAD428(CStr(3), &HA, Proc_6_45_EAD428(CStr(3), &HA, var_1A8))))
  loc_1E6E8A6:       Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VNo")), 1, &H12, var_12E))), 1, 3))
  loc_1E6E958:       var_174 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1E6E962:       var_1D0 = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_224), &HC)), &HC)))
  loc_1E6E96B:       var_1E0 = (CVar(Proc_6_45_EAD428(CStr(3), &HA, Proc_6_45_EAD428(CStr(3), &HA, var_1A8))) + " ")
  loc_1E6E975:       var_260 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), 1, &H12, var_12E))), 1, 3)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1E6E97B:       Print 1, "* NC LOT *"
  loc_1E6E9D0:       var_1A4 = var_B4.Fields.Item("Remarks")
  loc_1E6EA0D:       var_174 = (Chr(&HF) + "Remarks : ")
  loc_1E6EA17:       var_1D0 = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_1A4)), &H32)))
  loc_1E6EA1E:       var_200 = (CVar(Proc_6_45_EAD428(CStr(3), &HA, Proc_6_38_E68A98(CVar(var_1A4)))) + Chr(&H12))
  loc_1E6EA24:       Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1E6EA5D:       Set var_19C = Me.Label1
  loc_1E6EA63:       Call 0.Method_Proc_30_89_1E753D80 (2, var_1A4)
  loc_1E6EA89:       var_224 = Proc_6_45_EAD428(CStr(Trim(CVar(var_1A4))), &HA)
  loc_1E6EAF1:       Proc_6_39_E7C810(var_290, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E6EB12:       var_358 = var_B4.Fields
  loc_1E6EB29:       Proc_6_39_E7C810(var_324, CVar(var_358.Item("GuarAtt")))
  loc_1E6EB57:       var_304 = (Space(&HA) + "Covers: ")
  loc_1E6EB61:       var_370 = ("* KOT *" + CVar(Proc_6_45_EAD428(CStr(var_324), 7)))
  loc_1E6EB8A:       var_1D0 = (Chr(&HF) + CVar(var_224))
  loc_1E6EB93:       var_1E0 = (CVar(Proc_6_45_EAD428(CStr(3), &HA, Proc_6_38_E68A98(CVar(var_1A4)))) + ": ")
  loc_1E6EB9D:       var_260 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))), 5)))
  loc_1E6EBA4:       var_3B0 = ("* NC LOT *" + IIf((var_290 <> 0), IIf(CVar(var_358.Item("GuarAtt")), "Void", vbNullString), vbNullString))
  loc_1E6EBAA:       Print 1, var_3B0
  loc_1E6EC11:       var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E6EC17:       Print 1, CVar(var_1A4)
  loc_1E6EC24:     End If
  loc_1E6EC4A:     var_198 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1E6EC64:     var_1D0 = (Trim(CVar(var_1A4)) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1E6EC69:     var_AC = CStr(CVar(Proc_6_45_EAD428(CStr(3), &HA, "Qty")))
  loc_1E6EC96:     var_174 = (Chr(&HF) + CVar(var_AC))
  loc_1E6EC9C:     Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1E6ECBF:     var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E6ECC5:     Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1E6ECD8:     var_92 = (var_92 + 4)
  loc_1E6ECDE:     var_B8.MoveFirst
  loc_1E6ECE3:     ' Referenced from: 1E6F176
  loc_1E6ECF2:     If Not(var_B8.EOF) Then
  loc_1E6ED14:       var_154 = CVar(var_134.Fields.Item("Split")) 'Address
  loc_1E6ED50:       var_1A8 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")), var_108)
  loc_1E6ED6B:       If (var_154 And ((Proc_6_38_E68A98(var_154, &H12) = "Yes") <> var_1A8)) Then
  loc_1E6ED96:         var_108 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")))
  loc_1E6EDB4:         var_174 = (Chr(&HF) + "*")
  loc_1E6EDBE:         var_198 = (CVar(var_B8.Fields.Item("Kitchen")) + CVar(var_108))
  loc_1E6EDC7:         var_1B8 = (Trim(CVar(var_B8.Fields.Item("Kitchen"))) + "*")
  loc_1E6EDCD:         Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1E6EDE4:         var_92 = (var_92 + 1)
  loc_1E6EDE7:       End If
  loc_1E6EE34:       Proc_6_39_E7C810(Chr(&H12), CVar(var_B8.Fields.Item("qty")))
  loc_1E6EE85:       var_314 = vbNullString
  loc_1E6EED7:       var_1B8 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1E6EEF0:       var_270 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6)))))
  loc_1E6EF09:       var_370 = (CVar(var_B4.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", var_314)), 6)))
  loc_1E6EF62:       var_174 = (Chr(&HF) + CVar(CStr(IIf(var_314, "Void", vbNullString))))
  loc_1E6EF68:       Print 1, Space(3)
  loc_1E6EF7B:       var_92 = (var_92 + 1)
  loc_1E6EFB7:       If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1E6EFFA:         var_174 = (Chr(&HF) + "(")
  loc_1E6F004:         var_1D0 = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1E6F00D:         var_1E0 = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1E6F013:         Print 1, Chr(&H12)
  loc_1E6F034:         var_92 = (var_92 + 1)
  loc_1E6F037:       End If
  loc_1E6F041:       If (&H12 = (&H45 - var_A6)) Then
  loc_1E6F05A:         var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E6F060:         Print 1, Space(3)
  loc_1E6F072:         Print 1, "Contd."
  loc_1E6F08A:         Print 1, Chr(&HC)
  loc_1E6F099:         var_94 = (var_94 + 1)
  loc_1E6F0AF:         Call Proc_30_104_1200240(1, 0, &H28, var_214)
  loc_1E6F0CE:         Call Proc_30_103_EF9B84(var_90, "B", &H28, var_1A8, var_214)
  loc_1E6F0D8:         Print 1, var_1A8
  loc_1E6F0E7:         var_92 = &H12
  loc_1E6F100:         var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E6F106:         Print 1, Space(3)
  loc_1E6F129:         var_174 = (Chr(&HF) + CVar(var_AC))
  loc_1E6F12F:         Print 1, Space(3)
  loc_1E6F152:         var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E6F158:         Print 1, Space(3)
  loc_1E6F16B:         var_92 = (var_92 + 4)
  loc_1E6F16E:       End If
  loc_1E6F171:       var_B8.MoveNext
  loc_1E6F176:       GoTo loc_1E6ECE3
  loc_1E6F179:     End If
  loc_1E6F183:     If (var_92 < (&H45 - var_A6)) Then
  loc_1E6F186:       ' Referenced from: 1E6F1A7
  loc_1E6F190:       If (var_92 = (&H45 - var_A6)) Then
  loc_1E6F198:         Print 1, vbNullString
  loc_1E6F1A4:         var_92 = (var_92 + 1)
  loc_1E6F1A7:         GoTo loc_1E6F186
  loc_1E6F1AA:       End If
  loc_1E6F1AA:     End If
  loc_1E6F1C0:     var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E6F1C6:     Print 1, Space(3)
  loc_1E6F227:     var_174 = (Chr(&HF) + "Waiter Name  : ")
  loc_1E6F22E:     var_1B8 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_1E6F231:     var_1D0 = (Space(3) + var_1B8)
  loc_1E6F237:     Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_1E6F27B:     var_174 = (Chr(&HF) + "***  ")
  loc_1E6F291:     Print 1, Space(3) & Trim(var_CC) & "  ***"
  loc_1E6F2DD:     If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split")), 1) = "Yes") Then
  loc_1E6F2F4:       var_174 = CVar("Select Count(Distinct Printed) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6F348:       var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E6F35E:       var_1BC = var_BC.Fields
  loc_1E6F3BF:       var_304 = var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E6F3CD:       unk_589093.Execute CStr(var_304), var_314, -1
  loc_1E6F3D8:       Set var_E0 = var_358
  loc_1E6F413:     Else
  loc_1E6F45B:       var_198 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" 
  loc_1E6F484:       unk_589093.Execute CStr(var_198 & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')"), var_200, -1
  loc_1E6F48F:       Set var_E0 = var_1BC
  loc_1E6F4AF:     End If
  loc_1E6F4EB:     If (var_E0.Fields.Item(0).Value > 1) Then
  loc_1E6F51C:       Call Proc_30_103_EF9B84(Proc_6_45_EAD428("Changed KOT", &H14, var_1BC), "D", &H28, var_224)
  loc_1E6F526:       Print 1, var_224
  loc_1E6F53C:     Else
  loc_1E6F575:       If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split")), var_358) = "Yes") Then
  loc_1E6F58C:         var_174 = CVar("Select Printed From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E6F5E0:         var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E6F5F6:         var_1BC = var_BC.Fields
  loc_1E6F665:         unk_589093.Execute CStr(var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_314, -1
  loc_1E6F670:         Set var_E0 = var_358
  loc_1E6F6AB:       Else
  loc_1E6F705:         var_1D0 = "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source 
  loc_1E6F71C:         unk_589093.Execute CStr(var_1D0 & ")Q)"), var_200, -1
  loc_1E6F727:         Set var_E0 = var_1BC
  loc_1E6F747:       End If
  loc_1E6F780:       If (Proc_6_38_E68A98(CVar(var_E0.Fields.Item(0)), var_1BC, var_358) = "Y") Then
  loc_1E6F7B1:         Call Proc_30_103_EF9B84(Proc_6_45_EAD428("DUPLICATE KOT", &H14), "D", &H28)
  loc_1E6F7BB:         Print 1, var_224
  loc_1E6F7D1:       Else
  loc_1E6F7E6:         var_174 = (Chr(&HF) + vbNullString)
  loc_1E6F7EC:         Print 1, "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value
  loc_1E6F7F9:       End If
  loc_1E6F7F9:     End If
  loc_1E6F7FE:     Set var_E0 = Nothing
  loc_1E6F816:     var_174 = (Chr(&HF) + "** ")
  loc_1E6F820:     var_198 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1E6F829:     var_1B8 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" + " **")
  loc_1E6F82F:     Print 1, var_B8.Source
  loc_1E6F843:     var_B4.MoveNext
  loc_1E6F84A:     Print 1
  loc_1E6F852:     Print 1
  loc_1E6F85A:     Print 1
  loc_1E6F862:     Print 1
  loc_1E6F86A:     Print 1
  loc_1E6F872:     Print 1
  loc_1E6F878:     GoTo loc_1E6E3F6
  loc_1E6F87B:   End If
  loc_1E6F87D:   Close 1
  loc_1E6F8AD:   var_224 = "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition)
  loc_1E6F8BB:   Open var_224 & ".BAT" For Output As 1 Len = &HFF
  loc_1E6F924:   var_1A8 = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType")), var_224) = "Default"))
  loc_1E6F942:   If (var_92 And (var_1A8 <> vbNullString)) Then
  loc_1E6F9A7:     var_198 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1E6F9AD:     Print 1, var_198
  loc_1E6F9D1:   Else
  loc_1E6FA29:     var_1A8 = Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer")), (Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) <> "Default"))
  loc_1E6FA47:     If (var_92 And (var_1A8 <> vbNullString)) Then
  loc_1E6FAAC:       var_198 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_134.Fields.Item("Printer").Value 
  loc_1E6FAB2:       Print 1, var_198
  loc_1E6FAD6:     Else
  loc_1E6FB17:       Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1E6FB2C:     End If
  loc_1E6FB2C:   End If
  loc_1E6FB2E:   Close 1
  loc_1E6FB38:   If (MemVar_1F923B8 = "Y") Then
  loc_1E6FB7D:     var_144 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Double
  loc_1E6FB81:     var_A4 = var_144 'Variant
  loc_1E6FB96:   Else
  loc_1E6FBD0:     For var_3CC = 1 To CInt(var_134.Fields.Item("NoOfKot").Value):   var_EE = var_3CC 'Integer
  loc_1E6FC18:       var_144 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Double
  loc_1E6FC1C:       var_A4 = var_144 'Variant
  loc_1E6FC30:       var_12E = &HFF
  loc_1E6FC36:     Next var_3CC 'Integer
  loc_1E6FC3B:   End If
  loc_1E6FC3B:   GoTo loc_1E65177
  loc_1E6FC3E: End If
  loc_1E6FC46: If (var_294 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1E6FC4B:   Close 1
  loc_1E6FC82:   var_228 = "C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT"
  loc_1E6FC89:   Open var_228 For Output As 1 Len = &HFF
  loc_1E6FC9D:   var_B4.MoveFirst
  loc_1E6FCA2:   ' Referenced from: 1E71174
  loc_1E6FCB1:   If Not(var_B4.EOF) Then
  loc_1E6FD39:     var_220 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT")))
  loc_1E6FD64:     var_290 = IIf((var_220 = "Y"), "* NC LOT *", "* LOT *")
  loc_1E6FDD4:     var_324 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU") 'Variant
  loc_1E6FDE7:     var_90 = CStr(IIf(var_324, var_290, IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *")))
  loc_1E6FE2B:     If (0 = 0) Then
  loc_1E6FE30:       Print 1
  loc_1E6FE64:       var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1E6FE75:       If (var_F4 <> vbNullString) Then
  loc_1E6FE9E:         var_198 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1E6FEA4:         Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1E6FEB6:       End If
  loc_1E6FEBE:       If (var_F8 <> vbNullString) Then
  loc_1E6FEE7:         var_198 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1E6FEED:         Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1E6FEFF:       End If
  loc_1E6FF07:       If (var_FC <> vbNullString) Then
  loc_1E6FF30:         var_198 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H28)))
  loc_1E6FF36:         Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1E6FF48:       End If
  loc_1E6FF50:       If (var_100 <> vbNullString) Then
  loc_1E6FF79:         var_198 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_100, &H28)))
  loc_1E6FF7F:         Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1E6FF91:       End If
  loc_1E6FFCD:       If CBool(var_C8.Fields.Item("SaleBillTokenHeader1").Value <> vbNullString) Then
  loc_1E7002F:         var_1B8 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("SaleBillTokenHeader1").Value), &H2A)))
  loc_1E70036:         var_1E0 = (3 + Chr(&H12))
  loc_1E7003C:         Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3))
  loc_1E7005F:       End If
  loc_1E70061:       Print 1
  loc_1E700A5:       Call Proc_30_103_EF9B84(Proc_6_45_EAD428(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1E700AF:       Print 1, var_228
  loc_1E700ED:       Call Proc_30_103_EF9B84(Proc_6_45_EAD428(var_90, &H14), "D", &H28)
  loc_1E700F7:       Print 1, var_220
  loc_1E7010F:       Print 1
  loc_1E70117:       Print 1
  loc_1E70150:       Proc_6_39_E7C810(3, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1E70172:       var_174 = (Chr(&HF) + "KOT No.   : ")
  loc_1E7017C:       var_1E0 = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EAD428(CStr(3), &HA, var_220)))
  loc_1E70182:       Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3))
  loc_1E70234:       var_174 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1E7023B:       var_1B8 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME")))), &HC)) 'String
  loc_1E7023E:       var_1D0 = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + var_1B8)
  loc_1E70247:       var_1E0 = (CVar(Proc_6_45_EAD428(CStr(3), &HA, Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME")))))) + " ")
  loc_1E70251:       var_260 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1E70257:       Print 1, "* NC LOT *"
  loc_1E702AC:       var_1A4 = var_B4.Fields.Item("Remarks")
  loc_1E702E9:       var_174 = (Chr(&HF) + "Remarks : ")
  loc_1E702F3:       var_1D0 = (var_C8.Fields.Item("SaleBillTokenHeader1").Value + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_1A4)), &H32)))
  loc_1E702FA:       var_200 = (CVar(Proc_6_45_EAD428(CStr(3), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_1A4)), &H32))) + Chr(&H12))
  loc_1E70300:       Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1E70339:       Set var_19C = Me.Label1
  loc_1E7033F:       Call 0.Method_Proc_30_89_1E753D80 (2, var_1A4)
  loc_1E70365:       var_224 = Proc_6_45_EAD428(CStr(Trim(CVar(var_1A4))), &HA)
  loc_1E703CD:       Proc_6_39_E7C810(var_290, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E703EE:       var_358 = var_B4.Fields
  loc_1E70405:       Proc_6_39_E7C810(var_324, CVar(var_358.Item("GuarAtt")))
  loc_1E70433:       var_304 = (Space(&HA) + "Covers: ")
  loc_1E7043D:       var_370 = ("* KOT *" + CVar(Proc_6_45_EAD428(CStr(var_324), 7)))
  loc_1E70466:       var_1D0 = (Chr(&HF) + CVar(var_224))
  loc_1E7046F:       var_1E0 = (CVar(Proc_6_45_EAD428(CStr(3), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_1A4)), &H32))) + ": ")
  loc_1E70479:       var_260 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))), 5)))
  loc_1E70480:       var_3B0 = ("* NC LOT *" + IIf((var_290 <> 0), IIf(CVar(var_358.Item("GuarAtt")), "Void", vbNullString), vbNullString))
  loc_1E70486:       Print 1, var_3B0
  loc_1E704ED:       var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E704F3:       Print 1, CVar(var_1A4)
  loc_1E70500:     End If
  loc_1E70526:     var_198 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1E70540:     var_1D0 = (Trim(CVar(var_1A4)) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1E70545:     var_AC = CStr(CVar(Proc_6_45_EAD428(CStr(3), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_1A4)), &H32))))
  loc_1E70572:     var_174 = (Chr(&HF) + CVar(var_AC))
  loc_1E70578:     Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1E7059B:     var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E705A1:     Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1E705B4:     var_92 = (var_92 + 4)
  loc_1E705BA:     var_B8.MoveFirst
  loc_1E705BF:     ' Referenced from: 1E70A52
  loc_1E705CE:     If Not(var_B8.EOF) Then
  loc_1E7062C:       var_1A8 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")), var_108)
  loc_1E70647:       If (&H12 And ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split")), &H12) = "Yes") <> var_1A8)) Then
  loc_1E70672:         var_108 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")))
  loc_1E70690:         var_174 = (Chr(&HF) + "*")
  loc_1E7069A:         var_198 = (CVar(var_B8.Fields.Item("Kitchen")) + CVar(var_108))
  loc_1E706A3:         var_1B8 = (Trim(CVar(var_B8.Fields.Item("Kitchen"))) + "*")
  loc_1E706A9:         Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1E706C0:         var_92 = (var_92 + 1)
  loc_1E706C3:       End If
  loc_1E70710:       Proc_6_39_E7C810(Chr(&H12), CVar(var_B8.Fields.Item("qty")))
  loc_1E70761:       var_314 = vbNullString
  loc_1E707B3:       var_1B8 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1E707CC:       var_270 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6)))))
  loc_1E707E5:       var_370 = (CVar(var_B4.Fields.Item("GuarAtt")) + CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", var_314)), 6)))
  loc_1E7083E:       var_174 = (Chr(&HF) + CVar(CStr(IIf(var_314, "Void", vbNullString))))
  loc_1E70844:       Print 1, Space(3)
  loc_1E70857:       var_92 = (var_92 + 1)
  loc_1E70893:       If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1E708D6:         var_174 = (Chr(&HF) + "(")
  loc_1E708E0:         var_1D0 = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1E708E9:         var_1E0 = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1E708EF:         Print 1, Chr(&H12)
  loc_1E70910:         var_92 = (var_92 + 1)
  loc_1E70913:       End If
  loc_1E7091D:       If (&H12 = (&H45 - var_A6)) Then
  loc_1E70936:         var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E7093C:         Print 1, Space(3)
  loc_1E7094E:         Print 1, "Contd."
  loc_1E70966:         Print 1, Chr(&HC)
  loc_1E70975:         var_94 = (var_94 + 1)
  loc_1E7098B:         Call Proc_30_104_1200240(1, 0, &H28, var_214)
  loc_1E709AA:         Call Proc_30_103_EF9B84(var_90, "B", &H28, var_1A8, var_214)
  loc_1E709B4:         Print 1, var_1A8
  loc_1E709C3:         var_92 = &H12
  loc_1E709DC:         var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E709E2:         Print 1, Space(3)
  loc_1E70A05:         var_174 = (Chr(&HF) + CVar(var_AC))
  loc_1E70A0B:         Print 1, Space(3)
  loc_1E70A2E:         var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E70A34:         Print 1, Space(3)
  loc_1E70A47:         var_92 = (var_92 + 4)
  loc_1E70A4A:       End If
  loc_1E70A4D:       var_B8.MoveNext
  loc_1E70A52:       GoTo loc_1E705BF
  loc_1E70A55:     End If
  loc_1E70A5F:     If (var_92 < (&H45 - var_A6)) Then
  loc_1E70A62:       ' Referenced from: 1E70A83
  loc_1E70A6C:       If (var_92 = (&H45 - var_A6)) Then
  loc_1E70A74:         Print 1, vbNullString
  loc_1E70A80:         var_92 = (var_92 + 1)
  loc_1E70A83:         GoTo loc_1E70A62
  loc_1E70A86:       End If
  loc_1E70A86:     End If
  loc_1E70A9C:     var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E70AA2:     Print 1, Space(3)
  loc_1E70B03:     var_174 = (Chr(&HF) + "Waiter Name  : ")
  loc_1E70B0A:     var_1B8 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_1E70B0D:     var_1D0 = (Space(3) + var_1B8)
  loc_1E70B13:     Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_1E70B57:     var_174 = (Chr(&HF) + "***  ")
  loc_1E70B6D:     Print 1, Space(3) & Trim(var_CC) & "  ***"
  loc_1E70BB9:     If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split")), 1) = "Yes") Then
  loc_1E70BD0:       var_174 = CVar("Select Count(Distinct Printed) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E70C24:       var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E70C3A:       var_1BC = var_BC.Fields
  loc_1E70C9B:       var_304 = var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E70CA9:       unk_589093.Execute CStr(var_304), var_314, -1
  loc_1E70CB4:       Set var_E0 = var_358
  loc_1E70CEF:     Else
  loc_1E70D37:       var_198 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" 
  loc_1E70D60:       unk_589093.Execute CStr(var_198 & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')"), var_200, -1
  loc_1E70D6B:       Set var_E0 = var_1BC
  loc_1E70D8B:     End If
  loc_1E70DC7:     If (var_E0.Fields.Item(0).Value > 1) Then
  loc_1E70DF8:       Call Proc_30_103_EF9B84(Proc_6_45_EAD428("Changed KOT", &H14, var_1BC), "D", &H28, var_224)
  loc_1E70E02:       Print 1, var_224
  loc_1E70E18:     Else
  loc_1E70E51:       If (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split")), var_358) = "Yes") Then
  loc_1E70E68:         var_174 = CVar("Select Printed From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E70EBC:         var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E70ED2:         var_1BC = var_BC.Fields
  loc_1E70F41:         unk_589093.Execute CStr(var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_314, -1
  loc_1E70F4C:         Set var_E0 = var_358
  loc_1E70F87:       Else
  loc_1E70FE1:         var_1D0 = "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source 
  loc_1E70FF8:         unk_589093.Execute CStr(var_1D0 & ")Q)"), var_200, -1
  loc_1E71003:         Set var_E0 = var_1BC
  loc_1E71023:       End If
  loc_1E7105C:       If (Proc_6_38_E68A98(CVar(var_E0.Fields.Item(0)), var_1BC, var_358) = "Y") Then
  loc_1E7108D:         Call Proc_30_103_EF9B84(Proc_6_45_EAD428("DUPLICATE KOT", &H14), "D", &H28)
  loc_1E71097:         Print 1, var_224
  loc_1E710AD:       Else
  loc_1E710C2:         var_174 = (Chr(&HF) + vbNullString)
  loc_1E710C8:         Print 1, "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value
  loc_1E710D5:       End If
  loc_1E710D5:     End If
  loc_1E710DA:     Set var_E0 = Nothing
  loc_1E710F2:     var_174 = (Chr(&HF) + "** ")
  loc_1E710FC:     var_198 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1E71105:     var_1B8 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" + " **")
  loc_1E7110B:     Print 1, var_B8.Source
  loc_1E7111F:     var_B4.MoveNext
  loc_1E71126:     Print 1
  loc_1E7112E:     Print 1
  loc_1E71136:     Print 1
  loc_1E7113E:     Print 1
  loc_1E71146:     Print 1
  loc_1E7114E:     Print 1
  loc_1E71156:     Print 1
  loc_1E7115E:     Print 1
  loc_1E71166:     Print 1
  loc_1E7116E:     Print 1
  loc_1E71174:     GoTo loc_1E6FCA2
  loc_1E71177:   End If
  loc_1E71179:   Close 1
  loc_1E711A9:   var_224 = "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition)
  loc_1E711B7:   Open var_224 & ".BAT" For Output As 1 Len = &HFF
  loc_1E71220:   var_1A8 = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType")), var_224) = "Default"))
  loc_1E7123E:   If (var_92 And (var_1A8 <> vbNullString)) Then
  loc_1E712A3:     var_198 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1E712A9:     Print 1, var_198
  loc_1E712CD:   Else
  loc_1E71325:     var_1A8 = Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer")), (Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) <> "Default"))
  loc_1E71343:     If (var_92 And (var_1A8 <> vbNullString)) Then
  loc_1E713A8:       var_198 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_134.Fields.Item("Printer").Value 
  loc_1E713AE:       Print 1, var_198
  loc_1E713D2:     Else
  loc_1E71413:       Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1E71428:     End If
  loc_1E71428:   End If
  loc_1E7142A:   Close 1
  loc_1E71434:   If (MemVar_1F923B8 = "Y") Then
  loc_1E71479:     var_144 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Double
  loc_1E7147D:     var_A4 = var_144 'Variant
  loc_1E71492:   Else
  loc_1E714CC:     For var_3D0 = 1 To CInt(var_134.Fields.Item("NoOfKot").Value):   var_EE = var_3D0 'Integer
  loc_1E71514:       var_144 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Double
  loc_1E71518:       var_A4 = var_144 'Variant
  loc_1E7152C:       var_12E = &HFF
  loc_1E71532:     Next var_3D0 'Integer
  loc_1E71537:   End If
  loc_1E71537:   GoTo loc_1E65177
  loc_1E7153A: End If
  loc_1E71542: Loop Until (var_294 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") 'do at: 1E63435
  loc_1E71547: Close 1
  loc_1E71585: Open "C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1E71599: var_B4.MoveFirst
  loc_1E7159E: ' Referenced from: 1E72FD5
  loc_1E715AD: Loop Until Not(var_B4.EOF) 'do at: 1E62FD8
  loc_1E716DA: var_334 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1E716E3: var_90 = CStr(var_334)
  loc_1E7174F: var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1E7175E: If (0 = 0) Then
  loc_1E71763:   Print 1
  loc_1E71771:   If (var_F4 <> vbNullString) Then
  loc_1E717A7:     var_198 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H2A)))
  loc_1E717AE:     var_1D0 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E717B4:     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E717CA:   End If
  loc_1E717D2:   If (var_F8 <> vbNullString) Then
  loc_1E71808:     var_198 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H2A)))
  loc_1E7180F:     var_1D0 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E71815:     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E7182B:   End If
  loc_1E71833:   If (var_FC <> vbNullString) Then
  loc_1E71869:     var_198 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H2A)))
  loc_1E71870:     var_1D0 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E71876:     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E7188C:   End If
  loc_1E71894:   If (var_100 <> vbNullString) Then
  loc_1E718CA:     var_198 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_100, &H2A)))
  loc_1E718D1:     var_1D0 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E718D7:     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E718ED:   End If
  loc_1E71929:   If CBool(var_C8.Fields.Item("SaleBillTokenHeader1").Value <> vbNullString) Then
  loc_1E7198B:     var_1B8 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_C8.Fields.Item("SaleBillTokenHeader1").Value), &H2A)))
  loc_1E71992:     var_1E0 = (Chr(&H12) + Chr(&H12))
  loc_1E71998:     Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3))
  loc_1E719BB:   End If
  loc_1E719DE:   If ((((var_F4 <> vbNullString) Or (var_F8 <> vbNullString)) Or (var_FC <> vbNullString)) Or (var_100 <> vbNullString)) Then
  loc_1E719E3:     Print 1
  loc_1E719E9:   End If
  loc_1E71A12:   var_1D0 = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1E71A55:   var_314 = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1E71A7F:   var_210 = (Chr(&HF) + Space(CLng((Chr(&H12) / 2))))
  loc_1E71A86:   var_290 = (CVar(var_B4.Fields.Item("NCKOT")) + Trim(CVar(Me.LblRest)))
  loc_1E71A8D:   var_370 = (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") + Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2))))
  loc_1E71A94:   var_390 = (IIf(IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"), "Void", vbNullString) + Chr(&H12))
  loc_1E71A9A:   Print 1, vbNullString
  loc_1E71AE8:   var_1B8 = (40 - Len(Trim(var_90)))
  loc_1E71B1B:   var_290 = (40 - Len(Trim(var_90)))
  loc_1E71B45:   var_200 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1E71B4F:   var_210 = (Space(CLng((Chr(&H12) / 2))) + CVar(var_90))
  loc_1E71B56:   var_304 = (CVar(var_B4.Fields.Item("NCKOT")) + Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))))
  loc_1E71B5D:   var_324 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1E71B63:   Print 1, (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2)
  loc_1E71BAE:   var_1B8 = (39 - Len(Trim(var_11C)))
  loc_1E71BDD:   var_260 = Len(Trim(var_11C))
  loc_1E71BE1:   var_270 = (39 - var_260)
  loc_1E71C0C:   var_200 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(var_11C))
  loc_1E71C13:   var_2E4 = (Space(CLng((Chr(&H12) / 2))) + Space(CLng((Len(Trim(var_90)) / 2))))
  loc_1E71C26:   var_314 = IIf((var_11C <> vbNullString), Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))), vbNullString)
  loc_1E71C3E:   var_324 = (Chr(&H12) + var_314)
  loc_1E71C45:   var_370 = ((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2) + Chr(&H12))
  loc_1E71C4B:   Print 1, IIf(var_314, "Void", vbNullString)
  loc_1E71CA7:   If (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CardNo")), &H12) <> vbNullString) Then
  loc_1E71D0B:     var_174 = (Chr(&HF) + "Membership No.: ")
  loc_1E71D15:     var_1D0 = (Trim(var_11C) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CardNo"))), &H1A)))
  loc_1E71D1C:     var_200 = ((Len(Trim(CVar(Me.LblRest))) / 2) + Chr(&H12))
  loc_1E71D22:     Print 1, Space(CLng((Chr(&H12) / 2)))
  loc_1E71D45:   End If
  loc_1E71D7E:   If (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("MemName"))) <> vbNullString) Then
  loc_1E71DE2:     var_174 = (Chr(&HF) + "Member : ")
  loc_1E71DE9:     var_1B8 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("MemName"))), &H21)) 'String
  loc_1E71DEC:     var_1D0 = (Trim(var_11C) + var_1B8)
  loc_1E71DF3:     var_200 = ((Len(Trim(CVar(Me.LblRest))) / 2) + Chr(&H12))
  loc_1E71DF9:     Print 1, Space(CLng((Chr(&H12) / 2)))
  loc_1E71E1C:   End If
  loc_1E71E4F:   Proc_6_39_E7C810(var_1B8, CVar(var_B4.Fields.Item("VNo")))
  loc_1E71EBA:   Proc_6_39_E7C810(var_260, CVar(var_B4.Fields.Item("TokenNo")))
  loc_1E71EFE:   var_2B4 = IIf((Proc_6_38_E68A98(CVar(var_C8.Fields.Item("AutoResetToken"))) = "Yes"), CVar(" TOKEN No. : " & Proc_6_45_EAD428(CStr(var_260), 5)), vbNullString)
  loc_1E71F18:   var_174 = (Chr(&HF) + "KOT No.   : ")
  loc_1E71F22:   var_1E0 = (Trim(var_11C) + CVar(Proc_6_45_EAD428(CStr(var_1B8), &HC)))
  loc_1E71F29:   var_2E4 = (Chr(&H12) + var_2B4)
  loc_1E71F30:   var_314 = (Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))) + Chr(&H12))
  loc_1E71F36:   Print 1, var_314
  loc_1E7200C:   var_324 = Chr(&H12)
  loc_1E72019:   var_174 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1E72023:   var_1D0 = (Trim(var_11C) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))), &HC)))
  loc_1E7202C:   var_1E0 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))), &HC))), &HC)) + " ")
  loc_1E72036:   var_260 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 6)))
  loc_1E7203F:   var_270 = (var_260 + "KOT : ")
  loc_1E72048:   var_290 = CVar(CStr(var_110)) 'String
  loc_1E7204B:   var_2B4 = (CVar(" TOKEN No. : " & Proc_6_45_EAD428(CStr(var_260), 5)) + var_290)
  loc_1E72054:   var_2E4 = (var_2B4 + "/")
  loc_1E72060:   var_314 = (Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))) + CVar(CStr(var_10E)))
  loc_1E72067:   var_334 = (var_314 + var_324)
  loc_1E7206D:   Print 1, Chr(&H12)
  loc_1E720F8:   If CBool(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))))) <> vbNullString) Then
  loc_1E7211F:     var_1A4 = var_B4.Fields.Item("Remarks")
  loc_1E7215C:     var_174 = (Chr(&HF) + "Remarks : ")
  loc_1E72166:     var_1D0 = (CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks")))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_1A4)), &H20)))
  loc_1E7216D:     var_200 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_1A4)), &H20))), &HC)) + Chr(&H12))
  loc_1E72173:     Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1E72196:   End If
  loc_1E721AC:   Set var_19C = Me.Label1
  loc_1E721B2:   Call 0.Method_Proc_30_89_1E753D80 (2, var_1A4)
  loc_1E721D8:   var_224 = Proc_6_45_EAD428(CStr(Trim(CVar(var_1A4))), &HA)
  loc_1E72240:   Proc_6_39_E7C810(var_290, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E72278:   Proc_6_39_E7C810(var_324, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E722A6:   var_304 = (Space(&HA) + "Covers: ")
  loc_1E722B0:   var_370 = (CVar(CStr(var_10E)) + CVar(Proc_6_45_EAD428(CStr(var_324), 7)))
  loc_1E722E6:   var_1D0 = (Chr(&HF) + CVar(var_224))
  loc_1E722EF:   var_1E0 = (CVar(Proc_6_45_EAD428(CStr(CVar(var_224)), &HC)) + ": ")
  loc_1E722F9:   var_260 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))), 5)))
  loc_1E72300:   var_3B0 = (var_260 + IIf((var_290 <> 0), IIf(CVar(var_B4.Fields.Item("GuarAtt")), "Void", vbNullString), vbNullString))
  loc_1E72307:   var_3F0 = (var_3B0 + Chr(&H12))
  loc_1E7230D:   Print 1, var_3F0
  loc_1E72385:   var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E7238C:   var_1B8 = (CVar(var_1A4) + Chr(&H12))
  loc_1E72392:   Print 1, CVar(var_224)
  loc_1E723A3: End If
  loc_1E723C9: var_198 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Space(1))
  loc_1E723E3: var_1D0 = (Chr(&H12) + CVar(Proc_6_52_EAD4F4("Qty", 7)))
  loc_1E723EF: var_1E0 = Space(1)
  loc_1E723F7: var_200 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4("Qty", 7))), &HC)) + var_1E0)
  loc_1E72411: var_260 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 7)))
  loc_1E7245A: var_174 = (Chr(&HF) + CVar(CStr(var_260)))
  loc_1E72461: var_1B8 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Chr(&H12))
  loc_1E72467: Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1E7249B: var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E724A2: var_1B8 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Chr(&H12))
  loc_1E724A8: Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1E724BF: var_92 = (var_92 + 4)
  loc_1E724C5: var_B8.MoveFirst
  loc_1E724CA: ' Referenced from: 1E728CA
  loc_1E724D9: Loop Until Not(var_B8.EOF) 'do at: 1E628CD
  loc_1E72552: If (&H12 And ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split")), &H12) = "Yes") <> Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")), var_108))) Then
  loc_1E7257D:   var_108 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")))
  loc_1E7259B:   var_174 = (Chr(&HF) + "*")
  loc_1E725A5:   var_198 = (CVar(var_B8.Fields.Item("Kitchen")) + CVar(var_108))
  loc_1E725AE:   var_1B8 = (Chr(&H12) + "*")
  loc_1E725B4:   Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1E725CB:   var_92 = (var_92 + 1)
  loc_1E725CE: End If
  loc_1E7261B: Proc_6_39_E7C810(var_1E0, CVar(var_B8.Fields.Item("qty")))
  loc_1E72666: Proc_6_39_E7C810(CVar(CStr(var_10E)), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_1E7267A: var_314 = "0.00"
  loc_1E7269D: var_358 = var_B8.Fields
  loc_1E72709: var_1B8 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H15, 1)) + Space(1))
  loc_1E72722: var_270 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E0, "0.000")), 7, CVar(Proc_6_52_EAD4F4("Qty", 7)))))
  loc_1E72736: var_2B4 = (CVar(var_B4.Fields.Item("GuarAtt")) + Space(1))
  loc_1E7274F: var_370 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(var_10E)), var_314)), 7, var_2B4)))
  loc_1E72768: var_414 = (IIf(var_314, "Void", vbNullString) + CVar(Proc_6_52_EAD4F4(CStr(IIf((var_358.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)))
  loc_1E727E2: var_174 = (Chr(&HF) + CVar(CStr(var_414)))
  loc_1E727E9: var_1B8 = (Space(1) + Chr(&H12))
  loc_1E727EF: Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1E72806: var_92 = (var_92 + 1)
  loc_1E72842: Loop Until (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) 'do at: 1E628C2
  loc_1E72885: var_174 = (Chr(&HF) + "(")
  loc_1E7288F: var_1D0 = (Space(1) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1E72898: var_1E0 = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1E7289E: Print 1, var_1E0
  loc_1E728BF: var_92 = (var_92 + 1)
  loc_1E728C5: var_B8.MoveNext
  loc_1E728CA: GoTo loc_1E724CA
  loc_1E728F0: var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E728F7: var_1B8 = (Space(1) + Chr(&H12))
  loc_1E728FD: Print 1, CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description"))))
  loc_1E7296F: var_174 = (Chr(&HF) + "Waiter Name  : ")
  loc_1E72979: var_1D0 = (Space(1) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1E72980: var_200 = (CVar(var_B8.Fields.Item("qty")) + Chr(&H12))
  loc_1E72986: Print 1, "0.000"
  loc_1E729DB: var_174 = (Chr(&HF) + "***  ")
  loc_1E729EE: var_1E0 = ("  ***" + Chr(&H12))
  loc_1E729F8: Print 1, Space(1) & Trim(var_CC) & Chr(&H12)
  loc_1E72A48: Loop Until (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split"))) = "Yes") 'do at: 1E62B7E
  loc_1E72A5F: var_174 = CVar("Select Count(Distinct Printed) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E72AB3: var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E72AC9: var_1BC = var_BC.Fields
  loc_1E72B2A: var_304 = var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E72B38: unk_589093.Execute CStr(var_304), var_314, -1
  loc_1E72B43: Set var_E0 = var_358
  loc_1E72B7B: GoTo loc_1E62C1A
  loc_1E72BC6: var_198 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" 
  loc_1E72BEF: unk_589093.Execute CStr(var_198 & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')"), var_200, -1
  loc_1E72C56: Loop Until (var_1BC.Fields.Item(0).Value > 1) 'do at: 1E62CA7
  loc_1E72C87: Call Proc_30_103_EF9B84(Proc_6_45_EAD428("Changed KOT", &H14, var_1BC), "D", &H28)
  loc_1E72C91: Print 1, var_224
  loc_1E72CA4: GoTo loc_1E62F39
  loc_1E72CE0: Loop Until (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split")), var_224) = "Yes") 'do at: 1E62E16
  loc_1E72CF7: var_174 = CVar("Select Printed From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E72D4B: var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E72D61: var_1BC = var_BC.Fields
  loc_1E72DD0: unk_589093.Execute CStr(var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_314, -1
  loc_1E72DDB: Set var_E0 = var_358
  loc_1E72E13: GoTo loc_1E62EB2
  loc_1E72E70: var_1D0 = "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source 
  loc_1E72E87: unk_589093.Execute CStr(var_1D0 & ")Q)"), var_200, -1
  loc_1E72EEB: Loop Until (Proc_6_38_E68A98(CVar(var_1BC.Fields.Item(0)), var_1BC, var_358) = "Y") 'do at: 1E62F39
  loc_1E72F1C: Call Proc_30_103_EF9B84(Proc_6_45_EAD428("DUPLICATE KOT", &H14), "D", &H28)
  loc_1E72F26: Print 1, var_224
  loc_1E72F3E: Set var_E0 = Nothing
  loc_1E72F44: var_B4.MoveNext
  loc_1E72F4B: Print 1
  loc_1E72F66: var_174 = (Chr(&HF) + "** ")
  loc_1E72F70: var_198 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1E72F79: var_1B8 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" + " **")
  loc_1E72F7F: Print 1, var_B8.Source
  loc_1E72F92: Print 1
  loc_1E72F9A: Print 1
  loc_1E72FC0: var_198 = (Chr(&H1B) + Chr(&H6D))
  loc_1E72FC6: Print 1, "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From ("
  loc_1E72FD5: GoTo loc_1E7159E
  loc_1E72FDA: Close 1
  loc_1E73034: var_1A8 = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType")), var_224) = "Default"))
  loc_1E73052: Loop Until (var_358 And (var_1A8 <> vbNullString)) 'do at: 1E6312E
  loc_1E73091: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E73104: var_198 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1E7310A: Print 1, var_198
  loc_1E7312B: GoTo loc_1E63323
  loc_1E73186: var_1A8 = Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer")), (Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) <> "Default"))
  loc_1E731A4: Loop Until (&H12 And (var_1A8 <> vbNullString)) 'do at: 1E63280
  loc_1E731E3: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E73256: var_198 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_134.Fields.Item("Printer").Value 
  loc_1E7325C: Print 1, var_198
  loc_1E7327D: GoTo loc_1E63323
  loc_1E732BC: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E7330E: Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1E73325: Close 1
  loc_1E7332F: Loop Until (MemVar_1F923B8 = "Y") 'do at: 1E6338D
  loc_1E73374: var_144 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Double
  loc_1E73378: var_A4 = var_144 'Variant
  loc_1E7338A: GoTo loc_1E63432
  loc_1E733C7: For var_418 = 1 To CInt(var_134.Fields.Item("NoOfKot").Value): var_EE = var_418 'Integer
  loc_1E7340F:   var_144 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Double
  loc_1E73413:   var_A4 = var_144 'Variant
  loc_1E73427:   var_12E = &HFF
  loc_1E7342D: Next var_418 'Integer
  loc_1E73432: GoTo loc_1E65177
  loc_1E7343D: Loop Until (var_294 = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") 'do at: 1E65177
  loc_1E73442: Close 1
  loc_1E73480: Open "C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1E73494: var_B4.MoveFirst
  loc_1E734A8: Loop Until Not(var_B4.EOF) 'do at: 1E64D1D
  loc_1E735D5: var_334 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1E735DE: var_90 = CStr(var_334)
  loc_1E7364A: var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1E73659: Loop Until (0 = 0) 'do at: 1E641D0
  loc_1E7365E: Print 1
  loc_1E7366C: Loop Until (var_F4 <> vbNullString) 'do at: 1E636C5
  loc_1E736A2: var_198 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H2A)))
  loc_1E736A9: var_1D0 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E736AF: Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E736CD: Loop Until (var_F8 <> vbNullString) 'do at: 1E63726
  loc_1E73703: var_198 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H2A)))
  loc_1E7370A: var_1D0 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E73710: Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E7372E: Loop Until (var_FC <> vbNullString) 'do at: 1E63787
  loc_1E73764: var_198 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H2A)))
  loc_1E7376B: var_1D0 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E73771: Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E7378F: Loop Until (var_100 <> vbNullString) 'do at: 1E637E8
  loc_1E737C5: var_198 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_100, &H2A)))
  loc_1E737CC: var_1D0 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1E737D2: Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1E7380B: Loop Until ((((var_F4 <> vbNullString) Or (var_F8 <> vbNullString)) Or (var_FC <> vbNullString)) Or (var_100 <> vbNullString)) 'do at: 1E63816
  loc_1E73810: Print 1
  loc_1E7383F: var_1D0 = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1E73882: var_314 = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1E738AC: var_210 = (Chr(&HF) + Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))))
  loc_1E738B3: var_290 = (CVar(var_B4.Fields.Item("NCKOT")) + Trim(CVar(Me.LblRest)))
  loc_1E738BA: var_370 = (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") + Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2))))
  loc_1E738C1: var_390 = (IIf(IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"), "Void", vbNullString) + Chr(&H12))
  loc_1E738C7: Print 1, vbNullString
  loc_1E73915: var_1B8 = (40 - Len(Trim(var_90)))
  loc_1E73948: var_290 = (40 - Len(Trim(var_90)))
  loc_1E73972: var_200 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1E7397C: var_210 = (Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))) + CVar(var_90))
  loc_1E73983: var_304 = (CVar(var_B4.Fields.Item("NCKOT")) + Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))))
  loc_1E7398A: var_324 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1E73990: Print 1, (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2)
  loc_1E739DB: var_1B8 = (39 - Len(Trim(var_11C)))
  loc_1E73A0A: var_260 = Len(Trim(var_11C))
  loc_1E73A0E: var_270 = (39 - var_260)
  loc_1E73A39: var_200 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(var_11C))
  loc_1E73A40: var_2E4 = (Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))) + Space(CLng((Len(Trim(var_90)) / 2))))
  loc_1E73A53: var_314 = IIf((var_11C <> vbNullString), Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))), vbNullString)
  loc_1E73A6B: var_324 = (Chr(&H12) + var_314)
  loc_1E73A72: var_370 = ((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2) + Chr(&H12))
  loc_1E73A78: Print 1, IIf(var_314, "Void", vbNullString)
  loc_1E73AD4: Loop Until (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CardNo")), &H12) <> vbNullString) 'do at: 1E63B72
  loc_1E73B38: var_174 = (Chr(&HF) + "Membership No.: ")
  loc_1E73B42: var_1D0 = (Trim(var_11C) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CardNo"))), &H1A)))
  loc_1E73B49: var_200 = ((Len(Trim(CVar(Me.LblRest))) / 2) + Chr(&H12))
  loc_1E73B4F: Print 1, Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2)))
  loc_1E73BAB: Loop Until (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("MemName"))) <> vbNullString) 'do at: 1E63C49
  loc_1E73C0F: var_174 = (Chr(&HF) + "Member : ")
  loc_1E73C16: var_1B8 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("MemName"))), &H21)) 'String
  loc_1E73C19: var_1D0 = (Trim(var_11C) + var_1B8)
  loc_1E73C20: var_200 = ((Len(Trim(CVar(Me.LblRest))) / 2) + Chr(&H12))
  loc_1E73C26: Print 1, Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2)))
  loc_1E73C7C: Proc_6_39_E7C810(var_1B8, CVar(var_B4.Fields.Item("VNo")))
  loc_1E73CE7: Proc_6_39_E7C810(var_260, CVar(var_B4.Fields.Item("TokenNo")))
  loc_1E73D2B: var_2B4 = IIf((Proc_6_38_E68A98(CVar(var_C8.Fields.Item("AutoResetToken"))) = "Yes"), CVar(" TOKEN No. : " & Proc_6_45_EAD428(CStr(var_260), 5)), vbNullString)
  loc_1E73D45: var_174 = (Chr(&HF) + "KOT No.   : ")
  loc_1E73D4F: var_1E0 = (Trim(var_11C) + CVar(Proc_6_45_EAD428(CStr(var_1B8), &HC)))
  loc_1E73D56: var_2E4 = (Chr(&H12) + var_2B4)
  loc_1E73D5D: var_314 = (Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))) + Chr(&H12))
  loc_1E73D63: Print 1, var_314
  loc_1E73E39: var_324 = Chr(&H12)
  loc_1E73E46: var_174 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1E73E50: var_1D0 = (Trim(var_11C) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))), &HC)))
  loc_1E73E59: var_1E0 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))), &HC))), &HC)) + " ")
  loc_1E73E63: var_260 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 6)))
  loc_1E73E6C: var_270 = (var_260 + "KOT : ")
  loc_1E73E75: var_290 = CVar(CStr(var_110)) 'String
  loc_1E73E78: var_2B4 = (CVar(" TOKEN No. : " & Proc_6_45_EAD428(CStr(var_260), 5)) + var_290)
  loc_1E73E81: var_2E4 = (var_2B4 + "/")
  loc_1E73E8D: var_314 = (Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))) + CVar(CStr(var_10E)))
  loc_1E73E94: var_334 = (var_314 + var_324)
  loc_1E73E9A: Print 1, Chr(&H12)
  loc_1E73F25: Loop Until CBool(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks"))))) <> vbNullString) 'do at: 1E63FC3
  loc_1E73F4C: var_1A4 = var_B4.Fields.Item("Remarks")
  loc_1E73F89: var_174 = (Chr(&HF) + "Remarks : ")
  loc_1E73F93: var_1D0 = (CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remarks")))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_1A4)), &H20)))
  loc_1E73F9A: var_200 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_1A4)), &H20))), &HC)) + Chr(&H12))
  loc_1E73FA0: Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1E73FD9: Set var_19C = Me.Label1
  loc_1E73FDF: Call 0.Method_Proc_30_89_1E753D80 (2, var_1A4)
  loc_1E74005: var_224 = Proc_6_45_EAD428(CStr(Trim(CVar(var_1A4))), &HA)
  loc_1E7406D: Proc_6_39_E7C810(var_290, CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1E7408E: var_358 = var_B4.Fields
  loc_1E740A5: Proc_6_39_E7C810(var_324, CVar(var_358.Item("GuarAtt")))
  loc_1E740D3: var_304 = (Space(&HA) + "Covers: ")
  loc_1E740DD: var_370 = (CVar(CStr(var_10E)) + CVar(Proc_6_45_EAD428(CStr(var_324), 7)))
  loc_1E74113: var_1D0 = (Chr(&HF) + CVar(var_224))
  loc_1E7411C: var_1E0 = (CVar(Proc_6_45_EAD428(CStr(CVar(var_224)), &HC)) + ": ")
  loc_1E74126: var_260 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))), 5)))
  loc_1E7412D: var_3B0 = (var_260 + IIf((var_290 <> 0), IIf(CVar(var_358.Item("GuarAtt")), "Void", vbNullString), vbNullString))
  loc_1E74134: var_3F0 = ("Void" + Chr(&H12))
  loc_1E7413A: Print 1, IIf((var_358.Item("Cancel").Value = "Y"), "Void", vbNullString)
  loc_1E741B2: var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E741B9: var_1B8 = (CVar(var_1A4) + Chr(&H12))
  loc_1E741BF: Print 1, CVar(var_224)
  loc_1E741F6: var_198 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H1D)) + Space(1))
  loc_1E74210: var_1D0 = (Chr(&H12) + CVar(Proc_6_52_EAD4F4("Qty", 7)))
  loc_1E7424F: var_174 = (Chr(&HF) + CVar(CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4("Qty", 7))), &HC)))))
  loc_1E74256: var_1B8 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H1D)) + Chr(&H12))
  loc_1E7425C: Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1E74290: var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E74297: var_1B8 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H1D)) + Chr(&H12))
  loc_1E7429D: Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1E742B4: var_92 = (var_92 + 4)
  loc_1E742BA: var_B8.MoveFirst
  loc_1E742CE: Loop Until Not(var_B8.EOF) 'do at: 1E64612
  loc_1E74347: Loop Until (&H12 And ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split")), &H12) = "Yes") <> Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")), var_108))) 'do at: 1E643C3
  loc_1E74390: var_174 = (Chr(&HF) + "*")
  loc_1E7439A: var_198 = (CVar(var_B8.Fields.Item("Kitchen")) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Kitchen")))))
  loc_1E743A3: var_1B8 = (Chr(&H12) + "*")
  loc_1E743A9: Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1E743C0: var_92 = (var_92 + 1)
  loc_1E74410: Proc_6_39_E7C810(Chr(&H12), CVar(var_B8.Fields.Item("qty")))
  loc_1E74493: var_1B8 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H1D)) + Space(1))
  loc_1E744AC: var_210 = (CVar(Proc_6_52_EAD4F4("Qty", 7)) + CVar(Proc_6_52_EAD4F4(CStr(Chr(&H12)), 7)))
  loc_1E744C2: var_314 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)) 'String
  loc_1E744C5: var_324 = (CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))), 5)) + var_314)
  loc_1E74527: var_174 = (Chr(&HF) + CVar(CStr(var_324)))
  loc_1E7452E: var_1B8 = (Space(1) + Chr(&H12))
  loc_1E74534: Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1E7454B: var_92 = (var_92 + 1)
  loc_1E74587: Loop Until (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) 'do at: 1E64607
  loc_1E745CA: var_174 = (Chr(&HF) + "(")
  loc_1E745D4: var_1D0 = (Space(1) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1E745DD: var_1E0 = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1E745E3: Print 1, Chr(&H12)
  loc_1E74604: var_92 = (var_92 + 1)
  loc_1E7460A: var_B8.MoveNext
  loc_1E7460F: GoTo loc_1E642BF
  loc_1E74635: var_174 = (Chr(&HF) + CVar(var_C0))
  loc_1E7463C: var_1B8 = (Space(1) + Chr(&H12))
  loc_1E74642: Print 1, CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description"))))
  loc_1E746B4: var_174 = (Chr(&HF) + "Waiter Name  : ")
  loc_1E746BE: var_1D0 = (Space(1) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1E746C5: var_200 = (CVar(var_B8.Fields.Item("qty")) + Chr(&H12))
  loc_1E746CB: Print 1, CVar(Proc_6_52_EAD4F4(CStr(Chr(&H12)), 7))
  loc_1E74720: var_174 = (Chr(&HF) + "***  ")
  loc_1E74733: var_1E0 = ("  ***" + Chr(&H12))
  loc_1E7473D: Print 1, Space(1) & Trim(var_CC) & Chr(&H12)
  loc_1E7478D: Loop Until (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split"))) = "Yes") 'do at: 1E648C3
  loc_1E747A4: var_174 = CVar("Select Count(Distinct Printed) From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E747F8: var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E7480E: var_1BC = var_BC.Fields
  loc_1E7486F: var_304 = var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "' And (IsNull(PRINTED,'')='' OR PRINTED='Y')" 
  loc_1E7487D: unk_589093.Execute CStr(var_304), var_314, -1
  loc_1E74888: Set var_E0 = var_358
  loc_1E748C0: GoTo loc_1E6495F
  loc_1E7490B: var_198 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" 
  loc_1E74934: unk_589093.Execute CStr(var_198 & var_B8.Source & ")Q) AND (IsNull(PRINTED,'')='' OR PRINTED='Y')"), var_200, -1
  loc_1E7499B: Loop Until (var_1BC.Fields.Item(0).Value > 1) 'do at: 1E649EC
  loc_1E749CC: Call Proc_30_103_EF9B84(Proc_6_45_EAD428("Changed KOT", &H14, var_1BC), "D", &H28)
  loc_1E749D6: Print 1, var_224
  loc_1E749E9: GoTo loc_1E64C7E
  loc_1E74A25: Loop Until (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split")), var_224) = "Yes") 'do at: 1E64B5B
  loc_1E74A3C: var_174 = CVar("Select Printed From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1E74A90: var_200 = var_174 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source & ")Q) AND Depart.Code='" 
  loc_1E74AA6: var_1BC = var_BC.Fields
  loc_1E74B07: var_304 = var_200 & var_1BC.Item("Code").Value & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'" 
  loc_1E74B15: unk_589093.Execute CStr(var_304), var_314, -1
  loc_1E74B20: Set var_E0 = var_358
  loc_1E74B58: GoTo loc_1E64BF7
  loc_1E74BB5: var_1D0 = "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_B8.Source 
  loc_1E74BCC: unk_589093.Execute CStr(var_1D0 & ")Q)"), var_200, -1
  loc_1E74C30: Loop Until (Proc_6_38_E68A98(CVar(var_1BC.Fields.Item(0)), var_1BC, var_358) = "Y") 'do at: 1E64C7E
  loc_1E74C61: Call Proc_30_103_EF9B84(Proc_6_45_EAD428("DUPLICATE KOT", &H14), "D", &H28)
  loc_1E74C6B: Print 1, var_224
  loc_1E74C83: Set var_E0 = Nothing
  loc_1E74C89: var_B4.MoveNext
  loc_1E74C90: Print 1
  loc_1E74CAB: var_174 = (Chr(&HF) + "** ")
  loc_1E74CB5: var_198 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1E74CBE: var_1B8 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" + " **")
  loc_1E74CC4: Print 1, var_B8.Source
  loc_1E74CD7: Print 1
  loc_1E74CDF: Print 1
  loc_1E74D05: var_198 = (Chr(&H1B) + Chr(&H6D))
  loc_1E74D0B: Print 1, "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From ("
  loc_1E74D1A: GoTo loc_1E63499
  loc_1E74D1F: Close 1
  loc_1E74D79: var_1A8 = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), (Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType")), var_224) = "Default"))
  loc_1E74D97: Loop Until (var_358 And (var_1A8 <> vbNullString)) 'do at: 1E64E73
  loc_1E74DD6: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E74E49: var_198 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1E74E4F: Print 1, var_198
  loc_1E74E70: GoTo loc_1E65068
  loc_1E74ECB: var_1A8 = Proc_6_38_E68A98(CVar(var_134.Fields.Item("Printer")), (Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) <> "Default"))
  loc_1E74EE9: Loop Until (&H12 And (var_1A8 <> vbNullString)) 'do at: 1E64FC5
  loc_1E74F28: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E74F9B: var_198 = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_134.Fields.Item("Printer").Value 
  loc_1E74FA1: Print 1, var_198
  loc_1E74FC2: GoTo loc_1E65068
  loc_1E75001: Open "C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1E75053: Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1E7506A: Close 1
  loc_1E75074: Loop Until (MemVar_1F923B8 = "Y") 'do at: 1E650D2
  loc_1E750B9: var_144 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Double
  loc_1E750BD: var_A4 = var_144 'Variant
  loc_1E750CF: GoTo loc_1E65177
  loc_1E7510C: For var_41C = 1 To CInt(var_134.Fields.Item("NoOfKot").Value): var_EE = var_41C 'Integer
  loc_1E75154:   var_144 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_134.AbsolutePosition) & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Double
  loc_1E75158:   var_A4 = var_144 'Variant
  loc_1E7516C:   var_12E = &HFF
  loc_1E75172: Next var_41C 'Integer
  loc_1E751B7: Loop Until ((Proc_6_38_E68A98(CVar(var_134.Fields.Item("PrintType"))) = "Default") And (var_12E = &HFF)) 'do at: 1E6538B
  loc_1E751F3: Loop Until (Proc_6_38_E68A98(CVar(var_134.Fields.Item("Split"))) = "Yes") 'do at: 1E65319
  loc_1E75203: var_164 = "UPDATE KOT SET PRINTED='Y' From (KOT K Left Join ItemMast I on K.Item=I.Code) LEFT JOIN Depart ON I.Kitchen=Depart.Code Where K.DocID='"
  loc_1E75248: var_1B8 = var_B8.Source
  loc_1E7526F: var_1BC = var_BC.Fields
  loc_1E75287: var_210 = var_164 & Me.Fields.Item("SearchCode").Value & "' AND SNO In (Select SNo From (" & var_1B8 & ")Q) AND Depart.Code='" & var_1BC.Item("Code").Value 
  loc_1E752DE: unk_589093.Execute CStr(var_210 & "'" & " AND I.Kitchen='" & var_BC.Fields.Item("Code").Value & "'"), var_304, -1
  loc_1E75316: GoTo loc_1E6538B
  loc_1E7536F: unk_589093.Execute CStr("UPDATE KOT SET PRINTED='Y' WHERE DOCID='" & Me.Fields.Item("SearchCode").Value & "'"), var_1B8, -1
  loc_1E7538E: var_BC.MoveNext
  loc_1E75393: GoTo loc_1E6B56C
  loc_1E75399: var_134.MoveNext
  loc_1E7539E: GoTo loc_1E6B212
  loc_1E753A6: Set var_B4 = Nothing
  loc_1E753AE: Set var_B8 = Nothing
  loc_1E753B6: Set var_BC = Nothing
  loc_1E753BE: Set var_D4 = Nothing
  loc_1E753C6: Set var_C8 = Nothing
  loc_1E753CE: Set var_134 = Nothing
  loc_1E753D1: Exit Sub
  loc_1E753D2: Proc_6_60_E62BC4(var_1BC)
  loc_1E753D7: Exit Sub
End Sub

Public Sub Proc_30_90_E40A04
  'Data Table: 589074
  loc_E409E0: Set var_88 = Me.TopCtrl1
  loc_E409E6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E409FF: If (CStr() = "Browse") Then
  loc_E40A02:   Exit Sub
  loc_E40A03: End If
  loc_E40A03: Exit Sub
End Sub

Public Sub Proc_30_91_184965C(arg_C) '184965C
  'Data Table: 589074
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_C0 As String
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_17C As String
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Integer
  Dim var_1EC As String
  Dim var_1F4 As Double
  Dim var_208 As Variant
  Dim var_20C As MSHFlexGrid
  Dim var_94 As Double
  Dim var_88 As Integer
  Dim var_218 As Double
  Dim var_8A As Integer
  loc_1847168: If (arg_C = 0) Then
  loc_184717E:   var_B0 = CLng(Me.FGrid.Col)
  loc_184718E:   If (var_B0 = CLng(2)) Then
  loc_18471DF:     Set var_9C = Me.TxtGrid
  loc_18471E5:     Call 0.Method_Proc_30_91_184965C0 (arg_C, var_BC, var_C0)
  loc_18471ED:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_BC.Text
  loc_1847205:     If (var_B0 Or (var_C0 = vbNullString)) Then
  loc_184721B:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847223:       var_F0 = CVar(CLng(2)) 'Long
  loc_1847228:       var_110 = vbNullString
  loc_1847232:       Set var_BC = Me.FGrid
  loc_1847238:       LateIdCallSt
  loc_184725D:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847265:       var_F0 = CVar(CLng(1)) 'Long
  loc_184726A:       var_110 = vbNullString
  loc_1847274:       Set var_BC = Me.FGrid
  loc_184727A:       LateIdCallSt
  loc_184728F:     Else
  loc_18472A8:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18472B0:       var_F0 = CVar(CLng(1)) 'Long
  loc_18472CA:       var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_18472E8:       var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18472F0:       var_154 = CVar(CLng(1)) 'Long
  loc_18472FF:       var_178 = Me.FGrid.TextMatrix)
  loc_184730A:       var_17C = CStr(var_178)
  loc_1847375:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_184738B:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847393:         var_100 = CVar(CLng(2)) 'Long
  loc_18473C6:         var_144 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_18473CE:         Set var_168 = Me.FGrid
  loc_18473D4:         LateIdCallSt
  loc_1847403:         var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_184740B:         var_100 = CVar(CLng(1)) 'Long
  loc_1847435:         var_130 = Me.Fields.Item("Code").Value
  loc_184743E:         var_144 = CVar(CStr(var_130)) 'String
  loc_1847446:         Set var_168 = Me.FGrid
  loc_184744C:         LateIdCallSt
  loc_184749C:         global_72 = CStr(Me.Fields.Item("Name").Value)
  loc_18474DB:         var_C0 = CStr(Me.Fields.Item("Code").Value)
  loc_18474E1:         global_76 = var_C0
  loc_1847505:         var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_184750D:         var_F0 = CVar(CLng(4)) 'Long
  loc_1847512:         var_110 = vbNullString
  loc_184751C:         Set var_BC = Me.FGrid
  loc_1847522:         LateIdCallSt
  loc_1847547:         var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_184754F:         var_F0 = CVar(CLng(&HA)) 'Long
  loc_1847554:         var_110 = vbNullString
  loc_184755E:         Set var_BC = Me.FGrid
  loc_1847564:         LateIdCallSt
  loc_1847589:         var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847591:         var_F0 = CVar(CLng(3)) 'Long
  loc_1847596:         var_110 = vbNullString
  loc_18475A0:         Set var_BC = Me.FGrid
  loc_18475A6:         LateIdCallSt
  loc_18475B8:       End If
  loc_18475B8:     End If
  loc_18475BB:   Else
  loc_18475C2:     If (var_B0 = CLng(3)) Then
  loc_18475D1:       Set var_9C = Me.TxtGrid
  loc_18475D7:       Call 0.Method_Proc_30_91_184965C0 (0, var_BC, var_C0, var_BC, var_110, var_F0, var_D0)
  loc_18475DF:       var_BC = var_BC.Text
  loc_1847602:       If ((var_C0 = "9999") And (global_168 <> "No")) Then
  loc_184760F:         Set global_164 = New RsSpecItemEntry
  loc_1847625:         RsSpecItemEntry.PKOTForm = Me
  loc_1847631:         Set var_9C = var_F0(var_110)
  loc_1847640:         var_D0 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_184766B:         RsSpecItemEntry.pRestCode = CStr(TxtGrid.DispID_41)
  loc_1847685:         Set var_9C = var_D0(CVar(CLng(1)))(var_D0)
  loc_18476A5:         Set var_BC = CVar(CLng(TxtGrid.DispID_A))(CVar(CLng(1)))
  loc_18476BD:         var_120 = 0
  loc_18476DA:         var_C0 = CStr(var_130)
  loc_18476EE:         RsSpecItemEntry.Connection15.Execute "SELECT IsNull(Max(Name),'') FROM Depart Where Code='" & var_C0 & "'", var_144, -1
  loc_18476F6:         var_134 = var_134.Fields
  loc_18476FE:         var_120 = var_168.Item(var_168)
  loc_1847706:         var_180 = var_180.Value
  loc_184770E:         var_1EC = CStr(var_178)
  loc_1847718:         RsSpecItemEntry.PRestName = var_1EC
  loc_1847753:         Call 0.Method_arg_2B0 (1, var_E0, var_178)
  loc_184775B:       Else
  loc_1847772:         If (Me.RecordCount > 0) Then
  loc_184777B:           Me.MoveFirst
  loc_1847780:         End If
  loc_1847797:         If (Me.RecordCount > 0) Then
  loc_18477A6:           Set var_9C = Me.TxtGrid
  loc_18477AC:           Call 0.Method_Proc_30_91_184965C0 (0, var_BC, var_C0)
  loc_18477B4:           TxtGrid.DispID_41 = var_BC.Text
  loc_18477C1:           var_1F4 = Val(var_C0)
  loc_18477E7:           Me.Find "DispCode=" & CStr(var_1F4), 0, 1
  loc_18477FC:         End If
  loc_184784A:         Set var_9C = Me.TxtGrid
  loc_1847850:         Call 0.Method_Proc_30_91_184965C0 (arg_C, var_BC, var_C0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1847858:         var_D0 = var_BC.Text
  loc_1847870:         If (var_1F4 Or (var_C0 = vbNullString)) Then
  loc_1847886:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_184788E:           var_F0 = CVar(CLng(4)) 'Long
  loc_1847893:           var_110 = vbNullString
  loc_184789D:           Set var_BC = Me.FGrid
  loc_18478A3:           LateIdCallSt
  loc_18478C8:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18478D0:           var_F0 = CVar(CLng(&HA)) 'Long
  loc_18478D5:           var_110 = vbNullString
  loc_18478DF:           Set var_BC = Me.FGrid
  loc_18478E5:           LateIdCallSt
  loc_184790A:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847912:           var_F0 = CVar(CLng(3)) 'Long
  loc_1847917:           var_110 = vbNullString
  loc_1847921:           Set var_BC = Me.FGrid
  loc_1847927:           LateIdCallSt
  loc_184794C:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847954:           var_F0 = CVar(CLng(5)) 'Long
  loc_1847959:           var_110 = vbNullString
  loc_1847963:           Set var_BC = Me.FGrid
  loc_1847969:           LateIdCallSt
  loc_184798E:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847996:           var_F0 = CVar(CLng(8)) 'Long
  loc_184799B:           var_110 = vbNullString
  loc_18479A5:           Set var_BC = Me.FGrid
  loc_18479AB:           LateIdCallSt
  loc_18479D0:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18479D8:           var_F0 = CVar(CLng(&HD)) 'Long
  loc_18479DD:           var_110 = vbNullString
  loc_18479E7:           Set var_BC = Me.FGrid
  loc_18479ED:           LateIdCallSt
  loc_1847A02:         Else
  loc_1847A1B:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847A23:           var_F0 = CVar(CLng(&HA)) 'Long
  loc_1847A3D:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1847A5B:           var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847A63:           var_154 = CVar(CLng(&HA)) 'Long
  loc_1847A7D:           var_17C = CStr(Me.FGrid.TextMatrix))
  loc_1847AE8:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1847B45:             If CBool((Me.Fields.Item("MultiBillGeneration").Value = "Yes") And (global_232 = "Yes")) Then
  loc_1847B5B:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847B63:               var_100 = CVar(CLng(2)) 'Long
  loc_1847B96:               var_144 = CVar(CStr(Me.Fields.Item("ShortName").Value)) 'String
  loc_1847B9E:               Set var_168 = Me.FGrid
  loc_1847BA4:               LateIdCallSt
  loc_1847BD3:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847BDB:               var_100 = CVar(CLng(1)) 'Long
  loc_1847C0E:               var_144 = CVar(CStr(Me.Fields.Item("OutletCode").Value)) 'String
  loc_1847C16:               Set var_168 = Me.FGrid
  loc_1847C1C:               LateIdCallSt
  loc_1847C6C:               global_72 = CStr(Me.Fields.Item("ShortName").Value)
  loc_1847CB1:               global_76 = CStr(Me.Fields.Item("OutletCode").Value)
  loc_1847CC2:             End If
  loc_1847CD5:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847CDD:             var_100 = CVar(CLng(4)) 'Long
  loc_1847D10:             var_144 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1847D18:             Set var_168 = Me.FGrid
  loc_1847D1E:             LateIdCallSt
  loc_1847D4D:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847D55:             var_100 = CVar(CLng(&HA)) 'Long
  loc_1847D88:             var_144 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1847D90:             Set var_168 = Me.FGrid
  loc_1847D96:             LateIdCallSt
  loc_1847DC5:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847DCD:             var_100 = CVar(CLng(3)) 'Long
  loc_1847E00:             var_144 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1847E08:             Set var_168 = Me.FGrid
  loc_1847E0E:             LateIdCallSt
  loc_1847E3D:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1847E45:             var_100 = CVar(CLng(5)) 'Long
  loc_1847E78:             var_144 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1847E86:             LateIdCallSt
  loc_1847EED:             var_144 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("PriceType")), CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_144, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_1847EFB:             LateIdCallSt
  loc_1847F60:             var_144 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_144, Me.FGrid)) 'String
  loc_1847F68:             Set var_168 = Me.FGrid
  loc_1847F6E:             LateIdCallSt
  loc_1847FC0:             Set var_134 = Me.Txt
  loc_1847FC6:             Call 0.Method_Proc_30_91_184965C0 (CInt(1), var_168, var_17C, var_168, var_144)
  loc_1847FCE:             var_144 = var_168.Text
  loc_1847FF0:             var_1D4 = Me.Fields.Item("OutletCode")
  loc_1848017:             Call Proc_30_105_F223E0(CStr(Me.Fields.Item("Code").Value), var_17C, CStr(var_1D4.Value), var_1F4)
  loc_184802F:             var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848037:             var_154 = CVar(CLng(8)) 'Long
  loc_1848064:             var_208 = CVar(CStr(Format(CVar(var_1F4), "0.00"))) 'String
  loc_184806C:             Set var_20C = Me.FGrid
  loc_1848072:             LateIdCallSt
  loc_18480BA:             var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18480C2:             var_F0 = CVar(CLng(&HA)) 'Long
  loc_18480D1:             var_130 = Me.FGrid.TextMatrix)
  loc_1848107:             var_178 = Me.FGrid.TextMatrix)
  loc_1848121:             Set var_180 = Me.Txt
  loc_1848127:             Call 0.Method_Proc_30_91_184965C0 (CInt(1), var_1D4, var_1EC, var_178, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_130)
  loc_184812F:             var_F0 = var_1D4.Text
  loc_1848147:             var_1A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848195:             Call Proc_30_93_1284C54(CStr(var_130), CStr(var_178), var_1EC, Val(CStr(Me.FGrid.TextMatrix))), var_218, Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(8)))
  loc_184819D:             var_94 = var_218
  loc_18481D4:             If (var_94 <> CDbl(0)) Then
  loc_18481EA:               var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18481F2:               var_110 = CVar(CLng(8)) 'Long
  loc_1848220:               var_178 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_1848228:               Set var_BC = Me.FGrid
  loc_184822E:               LateIdCallSt
  loc_1848248:             End If
  loc_184825C:             var_88 = CInt(CLng(Me.FGrid.Row))
  loc_1848269:             var_D0 = CVar(CLng(var_88)) 'Long
  loc_1848271:             var_F0 = CVar(CLng(0)) 'Long
  loc_184827B:             var_AC = CVar(CStr(var_88)) 'String
  loc_1848283:             Set var_9C = Me.FGrid
  loc_1848289:             LateIdCallSt
  loc_184829B:             var_D0 = CVar(CLng(var_88)) 'Long
  loc_18482A3:             var_F0 = CVar(CLng(&HD)) 'Long
  loc_18482D3:             If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_18482DA:               var_D0 = CVar(CLng(var_88)) 'Long
  loc_18482E2:               var_F0 = CVar(CLng(7)) 'Long
  loc_1848312:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1848319:                 var_D0 = CVar(CLng(var_88)) 'Long
  loc_1848321:                 var_F0 = CVar(CLng(7)) 'Long
  loc_1848326:                 var_110 = "1.0"
  loc_1848330:                 Set var_9C = Me.FGrid
  loc_1848336:                 LateIdCallSt
  loc_1848341:               End If
  loc_1848344:             Else
  loc_1848348:               var_D0 = CVar(CLng(var_88)) 'Long
  loc_1848350:               var_F0 = CVar(CLng(7)) 'Long
  loc_1848380:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1848387:                 var_D0 = CVar(CLng(var_88)) 'Long
  loc_184838F:                 var_F0 = CVar(CLng(7)) 'Long
  loc_1848394:                 var_110 = "1"
  loc_184839E:                 Set var_9C = Me.FGrid
  loc_18483A4:                 LateIdCallSt
  loc_18483AF:               End If
  loc_18483AF:             End If
  loc_18483AF:           End If
  loc_18483AF:         End If
  loc_18483AF:       End If
  loc_18483C2:       var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18483CA:       var_F0 = CVar(CLng(&HA)) 'Long
  loc_18483D3:       Set var_BC = Me.FGrid
  loc_18483D9:       var_130 = var_BC.TextMatrix)
  loc_18483F8:       var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848400:       var_154 = CVar(CLng(7)) 'Long
  loc_184841A:       var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1848422:       var_218 = Val(var_C0)
  loc_1848480:       var_8A = Proc_96_26_129BB4C(CStr(var_130), var_218, MemVar_1F92070, CStr(Me.FGrid.TextMatrix)), global_172, Me.FGrid.TextMatrix), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_18484BA:       Me.LblCurStockStr.Caption = global_172
  loc_18484C5:     Else
  loc_18484CC:       If (var_B0 = CLng(4)) Then
  loc_184851D:         Set var_9C = Me.TxtGrid
  loc_1848523:         Call 0.Method_Proc_30_91_184965C0 (arg_C, var_BC, var_C0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_8A, var_218, var_154)
  loc_184852B:         var_110 = var_BC.Text
  loc_1848543:         If (var_130 Or (var_C0 = vbNullString)) Then
  loc_1848559:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848561:           var_F0 = CVar(CLng(4)) 'Long
  loc_1848566:           var_110 = vbNullString
  loc_1848570:           Set var_BC = Me.FGrid
  loc_1848576:           LateIdCallSt
  loc_184859B:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18485A3:           var_F0 = CVar(CLng(&HA)) 'Long
  loc_18485A8:           var_110 = vbNullString
  loc_18485B2:           Set var_BC = Me.FGrid
  loc_18485B8:           LateIdCallSt
  loc_18485DD:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18485E5:           var_F0 = CVar(CLng(3)) 'Long
  loc_18485EA:           var_110 = vbNullString
  loc_18485F4:           Set var_BC = Me.FGrid
  loc_18485FA:           LateIdCallSt
  loc_184861F:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848627:           var_F0 = CVar(CLng(5)) 'Long
  loc_184862C:           var_110 = vbNullString
  loc_1848636:           Set var_BC = Me.FGrid
  loc_184863C:           LateIdCallSt
  loc_1848661:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848669:           var_F0 = CVar(CLng(8)) 'Long
  loc_184866E:           var_110 = vbNullString
  loc_1848678:           Set var_BC = Me.FGrid
  loc_184867E:           LateIdCallSt
  loc_18486A3:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18486AB:           var_F0 = CVar(CLng(&HD)) 'Long
  loc_18486B0:           var_110 = vbNullString
  loc_18486BA:           Set var_BC = Me.FGrid
  loc_18486C0:           LateIdCallSt
  loc_18486D5:         Else
  loc_18486EE:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18486F6:           var_F0 = CVar(CLng(&HA)) 'Long
  loc_1848710:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_184872E:           var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848736:           var_154 = CVar(CLng(&HA)) 'Long
  loc_1848750:           var_17C = CStr(Me.FGrid.TextMatrix))
  loc_18487BB:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1848818:             If CBool((Me.Fields.Item("MultiBillGeneration").Value = "Yes") And (global_232 = "Yes")) Then
  loc_184882E:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848836:               var_100 = CVar(CLng(2)) 'Long
  loc_1848869:               var_144 = CVar(CStr(Me.Fields.Item("ShortName").Value)) 'String
  loc_1848871:               Set var_168 = Me.FGrid
  loc_1848877:               LateIdCallSt
  loc_18488A6:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18488AE:               var_100 = CVar(CLng(1)) 'Long
  loc_18488E1:               var_144 = CVar(CStr(Me.Fields.Item("OutletCode").Value)) 'String
  loc_18488E9:               Set var_168 = Me.FGrid
  loc_18488EF:               LateIdCallSt
  loc_184893F:               global_72 = CStr(Me.Fields.Item("ShortName").Value)
  loc_1848984:               global_76 = CStr(Me.Fields.Item("OutletCode").Value)
  loc_1848995:             End If
  loc_18489A9:             var_88 = CInt(CLng(Me.FGrid.Row))
  loc_18489C5:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18489CD:             var_100 = CVar(CLng(4)) 'Long
  loc_1848A00:             var_144 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1848A08:             Set var_168 = Me.FGrid
  loc_1848A0E:             LateIdCallSt
  loc_1848A3D:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848A45:             var_100 = CVar(CLng(&HA)) 'Long
  loc_1848A78:             var_144 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1848A80:             Set var_168 = Me.FGrid
  loc_1848A86:             LateIdCallSt
  loc_1848AB5:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848ABD:             var_100 = CVar(CLng(3)) 'Long
  loc_1848AF0:             var_144 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1848AF8:             Set var_168 = Me.FGrid
  loc_1848AFE:             LateIdCallSt
  loc_1848B2D:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848B35:             var_100 = CVar(CLng(5)) 'Long
  loc_1848B68:             var_144 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1848B76:             LateIdCallSt
  loc_1848BDD:             var_144 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("PriceType")), CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_144, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_1848BEB:             LateIdCallSt
  loc_1848C50:             var_144 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_144, Me.FGrid)) 'String
  loc_1848C5E:             LateIdCallSt
  loc_1848C7C:             var_D0 = CVar(CLng(var_88)) 'Long
  loc_1848C8E:             var_AC = CVar(CStr(var_88)) 'String
  loc_1848C96:             Set var_9C = Me.FGrid
  loc_1848C9C:             LateIdCallSt
  loc_1848CB0:             var_D0 = "Code"
  loc_1848CBF:             var_9C = Me.Fields
  loc_1848CCF:             var_AC = var_9C.Item(var_D0).Value
  loc_1848CE2:             Set var_134 = Me.Txt
  loc_1848CE8:             Call 0.Method_Proc_30_91_184965C0 (CInt(1), Me.FGrid, var_17C, var_9C, var_AC, CVar(CLng(0)), var_D0)
  loc_1848CF0:             var_168 = var_168.Text
  loc_1848D12:             var_1D4 = Me.Fields.Item("OutletCode")
  loc_1848D39:             Call Proc_30_105_F223E0(CStr(var_AC), var_17C, CStr(var_1D4.Value), var_1F4, var_144)
  loc_1848D51:             var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848D59:             var_154 = CVar(CLng(8)) 'Long
  loc_1848D86:             var_208 = CVar(CStr(Format(CVar(var_1F4), "0.00"))) 'String
  loc_1848D8E:             Set var_20C = Me.FGrid
  loc_1848D94:             LateIdCallSt
  loc_1848DDC:             var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848DE4:             var_F0 = CVar(CLng(&HA)) 'Long
  loc_1848DF3:             var_130 = Me.FGrid.TextMatrix)
  loc_1848E29:             var_178 = Me.FGrid.TextMatrix)
  loc_1848E43:             Set var_180 = Me.Txt
  loc_1848E49:             Call 0.Method_Proc_30_91_184965C0 (CInt(1), var_1D4, var_1EC, var_178, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_130)
  loc_1848E51:             var_F0 = var_1D4.Text
  loc_1848E69:             var_1A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848EB7:             Call Proc_30_93_1284C54(CStr(var_130), CStr(var_178), var_1EC, Val(CStr(Me.FGrid.TextMatrix))), var_218, Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(8)))
  loc_1848EBF:             var_94 = var_218
  loc_1848EF6:             If (var_94 <> CDbl(0)) Then
  loc_1848F0C:               var_F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1848F14:               var_110 = CVar(CLng(8)) 'Long
  loc_1848F42:               var_178 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_1848F4A:               Set var_BC = Me.FGrid
  loc_1848F50:               LateIdCallSt
  loc_1848F6A:             End If
  loc_1848F6E:             var_D0 = CVar(CLng(var_88)) 'Long
  loc_1848F76:             var_F0 = CVar(CLng(&HD)) 'Long
  loc_1848FA6:             If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1848FAD:               var_D0 = CVar(CLng(var_88)) 'Long
  loc_1848FB5:               var_F0 = CVar(CLng(7)) 'Long
  loc_1848FE5:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1848FEC:                 var_D0 = CVar(CLng(var_88)) 'Long
  loc_1848FF4:                 var_F0 = CVar(CLng(7)) 'Long
  loc_1848FF9:                 var_110 = "1.0"
  loc_1849003:                 Set var_9C = Me.FGrid
  loc_1849009:                 LateIdCallSt
  loc_1849014:               End If
  loc_1849017:             Else
  loc_184901B:               var_D0 = CVar(CLng(var_88)) 'Long
  loc_1849023:               var_F0 = CVar(CLng(7)) 'Long
  loc_1849053:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_184905A:                 var_D0 = CVar(CLng(var_88)) 'Long
  loc_1849062:                 var_F0 = CVar(CLng(7)) 'Long
  loc_1849067:                 var_110 = "1"
  loc_1849071:                 Set var_9C = Me.FGrid
  loc_1849077:                 LateIdCallSt
  loc_1849082:               End If
  loc_1849082:             End If
  loc_1849082:           End If
  loc_1849082:         End If
  loc_1849095:         var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_184909D:         var_F0 = CVar(CLng(&HA)) 'Long
  loc_18490C2:         var_144 = Me.FGrid.Row
  loc_18490CB:         var_110 = CVar(CLng(var_144)) 'Long
  loc_18490D3:         var_154 = CVar(CLng(7)) 'Long
  loc_18490DC:         Set var_168 = Me.FGrid
  loc_18490E2:         var_178 = var_168.TextMatrix)
  loc_18490F5:         var_218 = Val(CStr(var_178))
  loc_1849153:         var_8A = Proc_96_26_129BB4C(CStr(Me.FGrid.TextMatrix)), var_218, MemVar_1F92070, CStr(Me.FGrid.TextMatrix)), global_172, Me.FGrid.TextMatrix), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_184918D:         Me.LblCurStockStr.Caption = global_172
  loc_1849198:       Else
  loc_184919F:         If (var_B0 = CLng(7)) Then
  loc_18491B5:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18491BD:           var_F0 = CVar(CLng(&HB)) 'Long
  loc_18491C6:           Set var_BC = Me.FGrid
  loc_18491CC:           var_130 = var_BC.TextMatrix)
  loc_18491D7:           var_C0 = CStr(var_130)
  loc_18491F5:           If (CDbl(Val(var_C0)) > CDbl(0)) Then
  loc_1849206:             var_D0 = "Free Qty Can't Edit "
  loc_1849211:             MsgBox(var_D0, 0, var_130, var_144, var_178)
  loc_1849221:             Proc_30_91_184965C = var_F0
  loc_1849227:           End If
  loc_1849231:           Set var_9C = Me.TxtGrid
  loc_1849237:           Call 0.Method_Proc_30_91_184965C0 (arg_C, var_BC, var_D0, var_8A, var_218, var_154)
  loc_1849256:           Set var_134 = Me.TxtGrid
  loc_184925C:           Call 0.Method_Proc_30_91_184965C0 (arg_C, var_168, var_C0, Not(IsNumeric(CVar(var_BC))), var_110)
  loc_1849264:           var_130 = var_168.Text
  loc_1849286:           If (var_F0 Or (CDbl(Val(var_C0)) <= CDbl(0))) Then
  loc_184929A:             Set var_9C = Me.TxtGrid
  loc_18492A0:             Call 0.Method_Proc_30_91_184965C0 (arg_C, var_BC, CStr(0))
  loc_18492A8:             var_BC.Text = var_D0
  loc_18492BC:             Proc_30_91_184965C = 0
  loc_18492C2:           End If
  loc_18492D5:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18492E6:           Set var_BC = Me.FGrid
  loc_18492F7:           var_C0 = CStr(var_BC.TextMatrix))
  loc_1849315:           If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1849325:             Set var_9C = Me.TxtGrid
  loc_184932B:             Call 0.Method_Proc_30_91_184965C0 (arg_C, var_BC, var_C0, CVar(CLng(&HD)))
  loc_1849333:             var_D0 = var_BC.Text
  loc_184934B:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1849363:             var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_184938F:             var_1E4 = CVar(CStr(Format(CVar(var_C0), "0.00"))) 'String
  loc_1849397:             Set var_180 = Me.FGrid
  loc_184939D:             LateIdCallSt
  loc_18493C4:           Else
  loc_18493D1:             Set var_9C = Me.TxtGrid
  loc_18493D7:             Call 0.Method_Proc_30_91_184965C0 (arg_C, var_BC, var_C0, var_180, var_1E4, 1)
  loc_18493DF:             1 = var_BC.Text
  loc_18493F7:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_184940F:             var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_184943B:             var_1E4 = CVar(CStr(Format(CVar(var_C0), "0"))) 'String
  loc_1849443:             Set var_180 = Me.FGrid
  loc_1849449:             LateIdCallSt
  loc_184946D:           End If
  loc_1849480:           var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1849488:           var_F0 = CVar(CLng(&HA)) 'Long
  loc_1849491:           Set var_BC = Me.FGrid
  loc_18494AD:           var_144 = Me.FGrid.Row
  loc_18494CD:           var_178 = Me.FGrid.TextMatrix)
  loc_18494D8:           var_C0 = CStr(var_178)
  loc_18494E0:           var_218 = Val(var_C0)
  loc_184953E:           var_8A = Proc_96_26_129BB4C(CStr(var_BC.TextMatrix)), var_218, MemVar_1F92070, CStr(Me.FGrid.TextMatrix)), global_172, Me.FGrid.TextMatrix), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_1849578:           Me.LblCurStockStr.Caption = global_172
  loc_1849586:           If (var_8A = 0) Then
  loc_184958F:             Call 0.Method_arg_50 (var_C0, var_8A, var_218, CVar(CLng(7)), CVar(CLng(var_144)))
  loc_18495C6:             If (MsgBox("Do you Want to Proceed with Negative Stock ?", &H114, CVar(var_C0), var_144, var_178) = 7) Then
  loc_18495CE:               Proc_30_91_184965C = 0
  loc_18495D4:             End If
  loc_18495D4:           End If
  loc_18495D7:         Else
  loc_18495DE:           If (var_B0 = CLng(9)) Then
  loc_18495FC:             var_F0 = CVar(CLng(9)) 'Long
  loc_184960D:             Set var_9C = Me.TxtGrid
  loc_1849613:             Call 0.Method_Proc_30_91_184965C0 (0, var_BC, var_C0, var_F0, CVar(CLng(Me.FGrid.Row)))
  loc_184961B:             var_130 = var_BC.Text
  loc_1849631:             LateIdCallSt
  loc_184964B:             Call Proc_30_106_1262164(Me.FGrid, CVar(var_C0), var_F0)
  loc_1849650:           End If
  loc_1849650:         End If
  loc_1849650:       End If
  loc_1849650:     End If
  loc_1849650:   End If
  loc_1849650: End If
  loc_1849655: Proc_30_91_184965C = &HFF
End Sub

Public Sub Proc_30_92_155A180(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20) '155A180
  'Data Table: 589074
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_170 As String
  Dim var_118 As Integer
  Dim var_188 As String
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_138 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_158 As Variant
  Dim var_1D8 As Variant
  Dim var_1E8 As Variant
  Dim var_248 As Variant
  Dim unk_589093 As Connection15
  Dim var_8C As Recordset15
  Dim var_274 As Variant
  Dim var_EA As Integer
  Dim var_114 As Double
  Dim var_208 As Variant
  Dim var_90 As Recordset15
  Dim var_278 As Variant
  Dim var_25C As Variant
  Dim var_29C As Field20
  Dim var_288 As Variant
  Dim var_2C4 As Variant
  Dim var_26C As Variant
  Dim var_86 As Integer
  loc_15591A0: var_128 = CVar(CLng(arg_1C)) 'Long
  loc_15591D8: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_15591DB:   Proc_30_92_155A180 = CVar(CLng(&HB))
  loc_15591E1: End If
  loc_1559206: For var_174 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_116 = var_174 'Integer
  loc_1559230:   If (CLng(var_116) > (CLng(Me.FGrid.Rows) - 1)) Then
  loc_1559233:     GoTo loc_155929C
  loc_1559236:   End If
  loc_155923A:   var_128 = CVar(CLng(var_116)) 'Long
  loc_1559242:   var_148 = CVar(CLng(&HB)) 'Long
  loc_1559273:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(arg_20)) Then
  loc_155927A:     var_128 = CVar(CLng(var_116)) 'Long
  loc_1559283:     Set var_15C = Me.FGrid
  loc_1559294:   End If
  loc_1559297: Next var_174 'Integer
  loc_155929C: ' Referenced from: 1559233
  loc_15592A0: Set var_15C = Me.FGrid
  loc_15592A6: var_16C = var_15C.Row
  loc_15592B0: var_118 = CInt(CLng(var_16C))
  loc_15592EE: var_188 = "SELECT SD.* FROM SchemeItemDetail SD WHERE SD.restCode='" & arg_10 & "' AND SD.ItemCode ='" & arg_C & "' AND SD.Qty <=" & CStr(arg_18)
  loc_1559303: Proc_6_7_F25D88(var_16C, arg_14, CVar(var_188 & " AND "), var_26C)
  loc_155930B: var_1A8 = -1 & var_16C 
  loc_1559327: var_1D8 = var_1A8 & " Between SD.appdate And SD.Enddate AND SD.LogSite_Code='" & CVar(MemVar_1F92078) & "' AND SD.Active='Y' And ISNULL(SD.Days,'') Like '%" 
  loc_1559370: unk_589093.Execute CStr(var_1D8 & Trim(Str(Weekday(arg_14, 1))) & "%' Order By SD.Qty Desc"), var_15C, var_118
  loc_155937B: Set var_8C = var_15C
  loc_15593C1: If (var_8C.RecordCount > 0) Then
  loc_1559455:   If CBool(InStr(1, Trim(Str(CVar(var_8C.Fields.Item("DAYS")))), Trim(Str(Weekday(arg_14, 1))), 0) <> 0) Then
  loc_1559483:     var_94 = CStr(var_8C.Fields.Item("FromTime").Value)
  loc_15594A2:     var_15C = var_8C.Fields
  loc_15594BB:     var_98 = CStr(var_15C.Item("ToTime").Value)
  loc_15594F3:     var_A8 = Format(Time, "HH") 'Variant
  loc_1559529:     var_B8 = Format(Time, "NN") 'Variant
  loc_1559559:     var_C8 = CVar(Val(CStr(Left(var_94, 2)))) 'Variant
  loc_1559588:     var_D8 = CVar(Val(CStr(Right(var_94, 2)))) 'Variant
  loc_15595B7:     var_E8 = CVar(Val(CStr(Left(var_98, 2)))) 'Variant
  loc_15595E3:     var_EA = CInt(Val(CStr(Right(var_98, 2))))
  loc_15595F4:     If (var_E8 < var_C8) Then
  loc_15595FF:       var_16C = (var_E8 + 24)
  loc_1559603:       var_E8 = Right(var_98, 2) 'Variant
  loc_1559607:     End If
  loc_1559612:     If (var_A8 <= 12) Then
  loc_155961D:       var_16C = (var_A8 + 24)
  loc_1559621:       var_A8 = Right(var_98, 2) 'Variant
  loc_1559625:     End If
  loc_1559639:     var_198 = (var_C8 + (var_D8 / 60))
  loc_1559648:     var_FC = Round("NN", 2) 'Variant
  loc_1559663:     var_16C = (var_E8 + CVar((CDbl(var_EA) / CDbl(&H3C))))
  loc_1559672:     var_10C = Round((var_D8 / 60), 2) 'Variant
  loc_155968D:     var_198 = (var_A8 + (var_B8 / 60))
  loc_155969D:     var_114 = CSng(Round(Round((var_D8 / 60), 2), 2))
  loc_15596D7:     var_1A8 = (Left(var_94, 2) + Right(var_94, 2))
  loc_1559728:     var_1A8 = (Left(var_98, 2) + Right(var_98, 2))
  loc_15597A8:     var_208 = (1 + Format(Time, "nn"))
  loc_15597AD:     var_114 = CSng(Str(Weekday(arg_14, 1)))
  loc_15597CC:     var_16C = (CVar(Val(CStr(Round(Round((var_D8 / 60), 2), 2)))) <= CVar(var_114))
  loc_15597E5:     If CBool(var_16C And (CVar(Val(CStr(Round(Round((var_D8 / 60), 2), 2)))) >= CVar(var_114))) Then
  loc_15597FC:       var_170 = "SELECT SD.RestCode, Depart.ShortName, IM.DispCode, IM.NAME, IM.Unit, IM.Code, FD.FreeQty, SD.ItemCode As Itemcode, SD.Qty,SD.SchemeCode FROM SchemeItemDetail SD  JOIN FreeItemDetail FD ON SD.Code = FD.Code And SD.RestCode = FD.RestCode Join Depart on SD.RestCode=Depart.Code JOIN ItemMast IM on FD.FreeItem=IM.Code And FD.RestCode=IM.RestCode WHERE SD.RestCode='" & arg_10
  loc_1559832:       Proc_6_7_F25D88(var_16C, arg_14, CVar(var_170 & "' AND SD.ItemCode ='" & arg_C & "' AND SD.Qty <=" & CStr(arg_18) & " AND "), var_26C, -1, var_15C, var_114, 1)
  loc_155984D:       var_1C8 = (Format(Time, "HH") * 100) & var_16C & " Between SD.Appdate And SD.EndDate AND SD.LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_1559891:       var_248 = var_1C8 & "' AND SD.Active='Y' And ISNULL(SD.Days,'') Like '%" & Trim(Str(Weekday(arg_14, 1))) & "%' Order By SD.Qty Desc" 
  loc_155989F:       unk_589093.Execute CStr(var_248), 1, 1
  loc_15598AA:       Set var_90 = var_15C
  loc_15598F0:       If (var_90.RecordCount > 0) Then
  loc_15598F7:         var_128 = CVar(CLng(var_118)) 'Long
  loc_15598FF:         var_148 = CVar(CLng(&HA)) 'Long
  loc_1559940:         var_90.Find "Itemcode='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_155996D:         var_128 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1559975:         var_148 = CVar(CLng(4)) 'Long
  loc_15599A8:         If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_15599C4:           var_128 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15599CD:           Set var_274 = Me.FGrid
  loc_15599E5:         End If
  loc_15599E5:         var_128 = vbNullString
  loc_15599EF:         Set var_15C = Me.FGrid
  loc_1559A19:         var_1E8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1559A21:         var_25C = CVar(CLng(0)) 'Long
  loc_1559A3F:         var_128 = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_1559A47:         var_148 = CVar(CLng(0)) 'Long
  loc_1559A6C:         var_1B8 = CVar(CStr((CDbl(CStr(Me.FGrid.TextMatrix))) + CDbl(1)))) 'String
  loc_1559A74:         Set var_29C = Me.FGrid
  loc_1559A7A:         LateIdCallSt
  loc_1559AB4:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1559ABC:         var_158 = CVar(CLng(1)) 'Long
  loc_1559AEC:         var_1A8 = CVar(CStr(var_90.Fields.Item("RestCode").Value)) 'String
  loc_1559AF4:         Set var_29C = Me.FGrid
  loc_1559AFA:         LateIdCallSt
  loc_1559B2F:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1559B37:         var_158 = CVar(CLng(2)) 'Long
  loc_1559B67:         var_1A8 = CVar(CStr(var_90.Fields.Item("ShortName").Value)) 'String
  loc_1559B6F:         Set var_29C = Me.FGrid
  loc_1559B75:         LateIdCallSt
  loc_1559BAA:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1559BB2:         var_158 = CVar(CLng(3)) 'Long
  loc_1559BE2:         var_1A8 = CVar(CStr(var_90.Fields.Item("DispCode").Value)) 'String
  loc_1559BEA:         Set var_29C = Me.FGrid
  loc_1559BF0:         LateIdCallSt
  loc_1559C25:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1559C2D:         var_158 = CVar(CLng(4)) 'Long
  loc_1559C5D:         var_1A8 = CVar(CStr(var_90.Fields.Item("Name").Value)) 'String
  loc_1559C65:         Set var_29C = Me.FGrid
  loc_1559C6B:         LateIdCallSt
  loc_1559CA0:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1559CA8:         var_158 = CVar(CLng(5)) 'Long
  loc_1559CD8:         var_1A8 = CVar(CStr(var_90.Fields.Item("Unit").Value)) 'String
  loc_1559CE0:         Set var_29C = Me.FGrid
  loc_1559CE6:         LateIdCallSt
  loc_1559D43:         var_29C = var_90.Fields.Item("qty")
  loc_1559D4B:         var_1A8 = var_29C.Value
  loc_1559D6C:         var_158 = CVar(arg_18) 'Integer
  loc_1559D7B:         Proc_6_142_14A55B0(CSng((var_158 / var_1A8)), CByte(0), "L", CByte(4), var_29C, var_1A8, var_158, " Between SD.Appdate And SD.EndDate AND SD.LogSite_Code='")
  loc_1559DC3:         var_288 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1559DCB:         var_2C4 = CVar(CLng(7)) 'Long
  loc_1559DF9:         var_1C8 = ((CVar(arg_18) / var_90.Fields.Item("qty").Value) + CVar(var_29C))
  loc_1559E17:         var_26C = CVar(CStr(Format((var_1C8 * var_90.Fields.Item("FreeQty").Value), "0.00"))) 'String
  loc_1559E1F:         Set var_2E8 = Me.FGrid
  loc_1559E25:         LateIdCallSt
  loc_1559E71:         var_148 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1559E79:         var_1E8 = CVar(CLng(8)) 'Long
  loc_1559EAA:         var_1C8 = CVar(CStr(Format("0.01", "0.00"))) 'String
  loc_1559EB2:         Set var_274 = Me.FGrid
  loc_1559EB8:         LateIdCallSt
  loc_1559EED:         var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1559EF5:         var_158 = CVar(CLng(&HA)) 'Long
  loc_1559F25:         var_1A8 = CVar(CStr(var_90.Fields.Item("Code").Value)) 'String
  loc_1559F2D:         Set var_29C = Me.FGrid
  loc_1559F33:         LateIdCallSt
  loc_1559F68:         var_128 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1559F7A:         var_198 = CVar(CStr(arg_20)) 'String
  loc_1559F82:         Set var_274 = Me.FGrid
  loc_1559F88:         LateIdCallSt
  loc_1559FA8:         var_198 = Me.FGrid.Rows
  loc_1559FB7:         var_138 = CVar((CLng(var_198) - 1)) 'Long
  loc_1559FC7:         var_128 = "SchemeCode"
  loc_1559FDB:         var_274 = var_90.Fields.Item(var_128)
  loc_1559FF4:         Set var_29C = Me.FGrid
  loc_1559FFA:         LateIdCallSt
  loc_155A018:         Set var_29C = Me.FGrid
  loc_155A05E:         Proc_96_0_E6BE98(var_29C, CInt((CLng(Me.FGrid.Rows) - 1)), Me.lblclr.BackColor, Me.FGrid.Rows, var_29C, CVar(Proc_6_38_E68A98(CVar(Me.lblclr), CVar(CLng(&HC)), "0.00", Me.lblclr, var_198, CVar(CLng(&HB)), var_128)))
  loc_155A073:         var_86 = &HFF
  loc_155A08F:         var_1E8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_155A097:         var_25C = CVar(CLng(9)) 'Long
  loc_155A0A0:         var_128 = CVar(CLng(var_118)) 'Long
  loc_155A0A8:         var_148 = CVar(CLng(9)) 'Long
  loc_155A0C2:         var_1A8 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_155A0CA:         Set var_278 = Me.FGrid
  loc_155A0D0:         LateIdCallSt
  loc_155A10F:         For var_2F8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_116 = var_2F8 'Integer
  loc_155A119:           var_128 = CVar(CLng(var_116)) 'Long
  loc_155A121:           var_148 = CVar(CLng(0)) 'Long
  loc_155A12B:           var_16C = CVar(CStr(var_116)) 'String
  loc_155A133:           Set var_15C = Me.FGrid
  loc_155A139:           LateIdCallSt
  loc_155A14A:         Next var_2F8 'Integer
  loc_155A154:         Set var_8C = Nothing
  loc_155A15C:         Set var_90 = Nothing
  loc_155A15F:         Proc_30_92_155A180 = 
  loc_155A165:       End If
  loc_155A165:     End If
  loc_155A165:   End If
  loc_155A165: End If
  loc_155A16F: Set var_8C = Nothing
  loc_155A177: Set var_90 = Nothing
  loc_155A17A: Proc_30_92_155A180 = 0
End Sub

Public Sub Proc_30_93_1284C54(arg_C, arg_10, arg_14, arg_18) '1284C54
  'Data Table: 589074
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_1A4 As Variant
  Dim var_1F4 As Variant
  Dim var_254 As Variant
  Dim unk_589093 As Connection15
  Dim var_90 As Recordset15
  Dim var_2BC As Fields15
  Dim var_E2 As Integer
  Dim var_134 As Variant
  Dim var_114 As Double
  Dim var_194 As Variant
  Dim var_8C As Double
  loc_12846F1: Proc_6_17_EAA2B0(var_134, arg_10, "SELECT * FROM HappyHours where RestCode =")
  loc_1284711: Proc_6_17_EAA2B0(var_194, arg_C, var_2B8 & var_134 & " AND itemCode=")
  loc_1284719: var_1A4 = -1 & var_194 
  loc_1284731: Proc_6_7_F25D88(var_1E4, arg_14)
  loc_1284755: var_254 = var_1A4 & " AND " & var_1E4 & " Between AppDate And EndDate AND  Site_Code='" & CVar(MemVar_1F92070) & "' AND (LogSite_code='" 
  loc_1284776: unk_589093.Execute CStr(var_254 & CVar(MemVar_1F92078) & "' OR Logsite_Code='HO') AND Active='Y' ORDER BY AppDate DESC"), var_2BC, 
  loc_1284781: Set var_90 = var_2BC
  loc_12847BD: If (var_90.RecordCount > 0) Then
  loc_12847EB:   var_E8 = CStr(var_90.Fields.Item("FromTime").Value)
  loc_1284823:   var_EC = CStr(var_90.Fields.Item("ToTime").Value)
  loc_128485B:   var_E0 = Format(Time, "HH") 'Variant
  loc_1284892:   var_E2 = CInt(Format(Time, "NN"))
  loc_12848C3:   var_A0 = CVar(Val(CStr(Left(var_E8, 2)))) 'Variant
  loc_12848F2:   var_B0 = CVar(Val(CStr(Right(var_E8, 2)))) 'Variant
  loc_1284921:   var_C0 = CVar(Val(CStr(Left(var_EC, 2)))) 'Variant
  loc_1284950:   var_D0 = CVar(Val(CStr(Right(var_EC, 2)))) 'Variant
  loc_1284962:   If (var_C0 < var_A0) Then
  loc_128496D:     var_134 = (var_C0 + 24)
  loc_1284971:     var_C0 = Right(var_EC, 2) 'Variant
  loc_1284975:   End If
  loc_1284980:   If (var_E0 <= 12) Then
  loc_128498B:     var_134 = (var_E0 + 24)
  loc_128498F:     var_E0 = Right(var_EC, 2) 'Variant
  loc_1284993:   End If
  loc_12849A7:   var_154 = (var_A0 + (var_B0 / 60))
  loc_12849B6:   var_FC = Round("NN", 2) 'Variant
  loc_12849D1:   var_154 = (var_C0 + (var_D0 / 60))
  loc_12849E0:   var_10C = Round("NN", 2) 'Variant
  loc_12849FB:   var_134 = (var_E0 + CVar((CDbl(var_E2) / CDbl(&H3C))))
  loc_1284A0B:   var_114 = CSng(Round((var_D0 / 60), 2))
  loc_1284A45:   var_174 = (Left(var_E8, 2) + Right(var_E8, 2))
  loc_1284A96:   var_174 = (Left(var_EC, 2) + Right(var_EC, 2))
  loc_1284AEF:   var_194 = (Format(Time, "HH") * 100)
  loc_1284B16:   var_1F4 = (1 + Format(Time, "NN"))
  loc_1284B1B:   var_114 = CSng(Time & " AND " & Format(Time, "NN"))
  loc_1284B53:   If CBool((CVar(Val(CStr(Round("NN", 2)))) <= CVar(var_114)) And (CVar(Val(CStr(Round("NN", 2)))) >= CVar(var_114))) Then
  loc_1284B92:     If (var_90.Fields.Item("DiscountType").Value = "Amount") Then
  loc_1284BC6:       var_154 = (CVar(arg_18) - var_90.Fields.Item("DiscountValue").Value)
  loc_1284BCB:       var_8C = CSng("HH")
  loc_1284BDB:     Else
  loc_1284C20:       var_194 = (CVar(arg_18) - (CVar(arg_18) * (var_90.Fields.Item("DiscountValue").Value / 100)))
  loc_1284C25:       var_8C = CSng(var_194)
  loc_1284C32:     End If
  loc_1284C35:   Else
  loc_1284C38:     var_8C = CDbl(0)
  loc_1284C3B:   End If
  loc_1284C3E: Else
  loc_1284C41:   var_8C = CDbl(0)
  loc_1284C44: End If
  loc_1284C49: Set var_90 = Nothing
  loc_1284C4C: Proc_30_93_1284C54 = var_8C
End Sub

Public Sub Proc_30_94_17A0CD8
  'Data Table: 589074
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim Me As Variant
  Dim var_A4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_10C As String
  Dim unk_589093 As Connection15
  Dim var_AC As Recordset15
  Dim var_D8 As Variant
  Dim var_130 As Variant
  Dim var_148 As Variant
  Dim var_11C As Variant
  Dim var_138 As String
  Dim var_168 As Variant
  Dim var_1AC As Variant
  Dim var_19C As Variant
  Dim var_1D0 As Variant
  Dim var_1E4 As String
  Dim var_1F4 As Recordset15
  Dim var_134 As Variant
  Dim var_1EC As String
  Dim var_1F0 As String
  Dim var_1F8 As String
  Dim var_B0 As Recordset15
  Dim var_B8 As Recordset15
  Dim var_158 As Variant
  Dim var_12C As Variant
  Dim var_B2 As Integer
  Dim var_188 As Variant
  Dim var_27C As Variant
  Dim var_198 As Variant
  Dim var_BC As Recordset15
  loc_179EDEC: On Error Goto loc_17A0CCF
  loc_179EDFE: Me.FGrid1.Visible = False
  loc_179EE15: Me.FGrid2.Visible = False
  loc_179EE29: Me.LblPendingKotItem.Visible = False
  loc_179EE3D: Me.LblPendingKot.Visible = False
  loc_179EE4D: Set var_A8 = Me.CmPendingKot
  loc_179EE53: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_179EE68: Me.LblCurStockStr.Caption = vbNullString
  loc_179EE87: If (Me.RecordCount > 0) Then
  loc_179EEC9:   var_E8 = "Select K.*,R.name as RName From KOT K left join RoomMast R on R.Type=K.RoomType and R.Code=K.RoomNo Where K.Docid='" & Me.Fields.Item("DocID").Value 
  loc_179EEE0:   unk_589093.Execute CStr(var_E8 & "' order by K.Sno"), var_12C, -1
  loc_179EEEB:   Set var_AC = var_130
  loc_179EF3F:   var_130 = var_AC.Fields
  loc_179EFA8:   var_198 = IIf((Proc_6_38_E68A98(CVar(var_AC.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_130.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_179EFED:   Me.LblUser.Caption = CStr(var_130 & CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("U_Name")), var_198)))
  loc_179F067:   var_134 = var_AC.Fields.Item("U_AE")
  loc_179F06F:   var_E8 = CVar(var_134) 'Address
  loc_179F0C8:   var_198 = IIf((Proc_6_38_E68A98(CVar(var_AC.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(var_E8) = "E"), "Last Update : ", "entdt : "))
  loc_179F0DF:   var_19C = var_AC.Fields
  loc_179F10D:   Me.LblLDt.Caption = CStr(var_198 & CVar(Proc_6_38_E68A98(CVar(var_19C.Item("U_EntDt")))))
  loc_179F148:   Set var_1F4 = var_AC 
  loc_179F185:   Set var_130 = Me.Txt
  loc_179F18B:   Call 0.Method_Proc_30_94_17A0CD80 (CInt(3), var_134)
  loc_179F193:   var_134.Text = CStr(var_1F4.Fields.Item("DocID").Value)
  loc_179F1C3:   var_C8 = var_1F4.Fields.Item("vType")
  loc_179F1CB:   var_D8 = var_C8.Value
  loc_179F1F1:   var_A4 = 0
  loc_179F223:   var_1EC = "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='"
  loc_179F23D:   unk_589093.Execute var_1EC & CStr(var_D8) & "'", var_D8, -1
  loc_179F245:   var_A8 = var_A8.Fields
  loc_179F24D:   var_A4 = var_C8.Item(var_C8)
  loc_179F255:   var_130 = var_130.Value
  loc_179F264:   global_120 = CStr(var_E8)
  loc_179F2C2:   Set var_130 = Me.Txt
  loc_179F2C8:   Call 0.Method_Proc_30_94_17A0CD80 (CInt(0), var_134)
  loc_179F2D0:   var_134.Text = CStr(var_1F4.Fields.Item("VNo").Value)
  loc_179F311:   var_E8 = "DD/MMM/YYYY"
  loc_179F338:   Set var_130 = Me.Txt
  loc_179F33E:   Call 0.Method_Proc_30_94_17A0CD80 (CInt(1), var_134, CStr(Format(CVar(var_1F4.Fields.Item("VDate")), var_E8)))
  loc_179F346:   var_134.Text = 1
  loc_179F398:   Me.LblVPrefix.Caption = CStr(var_1F4.Fields.Item("vPrefix").Value)
  loc_179F3D2:   Proc_6_39_E7C810(var_E8, CVar(var_1F4.Fields.Item("TokenNo")))
  loc_179F3E9:   Set var_130 = Me.Txt
  loc_179F3EF:   Call 0.Method_Proc_30_94_17A0CD80 (CInt(&HE), var_134, CStr(var_E8))
  loc_179F3F7:   var_134.Text = 1
  loc_179F445:   Set var_130 = Me.Txt
  loc_179F44B:   Call 0.Method_Proc_30_94_17A0CD80 (CInt(6), var_134)
  loc_179F453:   var_134.Text = Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Remarks")))
  loc_179F4A5:   If (var_1F4.Fields.Item("VDate").Value = CDate(MemVar_1F920EC)) Then
  loc_179F4B0:     Set var_A8 = Me.CmdTabeSt
  loc_179F4B6:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_179F4C6:     Set var_A8 = Me.CmPendingKot
  loc_179F4CC:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_179F4D7:   Else
  loc_179F4E0:     Set var_A8 = Me.CmdTabeSt
  loc_179F4E6:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_179F4F7:     Set var_A8 = Me.CmPendingKot
  loc_179F4FD:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_179F505:   End If
  loc_179F53D:   var_10C = Proc_6_38_E68A98(CVar(var_1F4.Fields.Item("Party")), "Select Code,Name,CardNo From (Select SubCode as Code,Name,CardNo From SubGroup union all Select Code,Name,CardNo From SmartCardRegistration) Q where Code='", var_E8)
  loc_179F541:   var_138 = -1 & var_10C
  loc_179F551:   unk_589093.Execute "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & "'", var_130, var_E8
  loc_179F55C:   Set var_B0 = var_130
  loc_179F58A:   If (var_B0.RecordCount > 0) Then
  loc_179F5C6:     Set var_130 = Me.Txt
  loc_179F5CC:     Call 0.Method_Proc_30_94_17A0CD80 (CInt(&HB), var_134)
  loc_179F5D4:     var_134.Tag = CStr(var_B0.Fields.Item(0).Value)
  loc_179F623:     Set var_130 = Me.Txt
  loc_179F629:     Call 0.Method_Proc_30_94_17A0CD80 (CInt(&HB), var_134)
  loc_179F631:     var_134.Text = CStr(var_B0.Fields.Item(1).Value)
  loc_179F661:     var_C8 = var_B0.Fields.Item(2)
  loc_179F680:     Set var_130 = Me.Txt
  loc_179F686:     Call 0.Method_Proc_30_94_17A0CD80 (CInt(&HC), var_134)
  loc_179F68E:     var_134.Text = CStr(var_C8.Value)
  loc_179F6A7:   Else
  loc_179F6B5:     Set var_A8 = Me.Txt
  loc_179F6BB:     Call 0.Method_Proc_30_94_17A0CD80 (CInt(&HB), var_C8)
  loc_179F6C3:     var_C8.Tag = vbNullString
  loc_179F6DD:     Set var_A8 = Me.Txt
  loc_179F6E3:     Call 0.Method_Proc_30_94_17A0CD80 (CInt(&HB), var_C8)
  loc_179F6EB:     var_C8.Text = vbNullString
  loc_179F705:     Set var_A8 = Me.Txt
  loc_179F70B:     Call 0.Method_Proc_30_94_17A0CD80 (CInt(&HC), var_C8)
  loc_179F713:     var_C8.Text = vbNullString
  loc_179F71F:   End If
  loc_179F747:   var_10C = Proc_6_38_E68A98(CVar(var_1F4.Fields.Item("Waiter")))
  loc_179F755:   Set var_130 = Me.Txt
  loc_179F75B:   Call 0.Method_Proc_30_94_17A0CD80 (CInt(5), var_134)
  loc_179F763:   var_134.Tag = var_10C
  loc_179F791:   var_C8 = var_1F4.Fields.Item("Waiter")
  loc_179F7B3:   If CBool(var_C8.Value <> vbNullString) Then
  loc_179F7D4:     Set var_A8 = Me.Txt
  loc_179F7DA:     Call 0.Method_Proc_30_94_17A0CD80 (CInt(5), var_C8, var_10C, "Select Name From Waiter Where Code='")
  loc_179F7E2:     var_D8 = var_C8.Tag
  loc_179F7EB:     var_138 = -1 & var_10C
  loc_179F7F2:     var_1E4 = "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & "' and (code is not null or code <> '')"
  loc_179F7FB:     unk_589093.Execute var_1E4, var_130, 
  loc_179F806:     Set var_B8 = var_130
  loc_179F832:     If (var_B8.RecordCount > 0) Then
  loc_179F84F:       var_C8 = var_B8.Fields.Item("Name")
  loc_179F86E:       Set var_130 = Me.Txt
  loc_179F874:       Call 0.Method_Proc_30_94_17A0CD80 (CInt(5), var_134)
  loc_179F87C:       var_134.Text = CStr(var_C8.Value)
  loc_179F892:     End If
  loc_179F897:     Set var_B8 = Nothing
  loc_179F89D:   Else
  loc_179F8AB:     Set var_A8 = Me.Txt
  loc_179F8B1:     Call 0.Method_Proc_30_94_17A0CD80 (CInt(5), var_C8)
  loc_179F8B9:     var_C8.Text = vbNullString
  loc_179F8C5:   End If
  loc_179F8DC:   If ((global_160 = "TB") Or (global_160 = "RO")) Then
  loc_179F915:     Set var_130 = Me.Txt
  loc_179F91B:     Call 0.Method_Proc_30_94_17A0CD80 (CInt(4), var_134)
  loc_179F923:     var_134.Text = Proc_6_38_E68A98(CVar(var_1F4.Fields.Item("RoomNo")))
  loc_179F93A:   Else
  loc_179F970:     Set var_130 = Me.Txt
  loc_179F976:     Call 0.Method_Proc_30_94_17A0CD80 (CInt(4), var_134)
  loc_179F97E:     var_134.Text = Proc_6_38_E68A98(CVar(var_1F4.Fields.Item("RName")))
  loc_179F992:   End If
  loc_179F9AC:   var_C8 = var_1F4.Fields.Item("Pending")
  loc_179F9B4:   var_D8 = var_C8.Value
  loc_179F9CE:   If (var_D8 = "Y") Then
  loc_179FA0F:     Set var_A8 = Me.Txt
  loc_179FA15:     Call 0.Method_Proc_30_94_17A0CD80 (CInt(4), var_C8, "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='", "sELECT COUNT(DISTINCT VNO) FROM KOT WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='", var_D8, -1)
  loc_179FA2D:     var_1F0 = var_134 & "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & "' AND PENDING='Y' AND (DELFLAG IS NULL OR DELFLAG<>'Y')"
  loc_179FA36:     unk_589093.Execute var_1F0, 0, var_19C
  loc_179FA3E:     var_E8 = var_C8.Text.Fields
  loc_179FA46:      = var_134.Item()
  loc_179FA4E:      = var_19C.Value
  loc_179FA7F:     If (var_E8 = 1) Then
  loc_179FA8F:       Me.LblState.Caption = "New Order"
  loc_179FA9A:     Else
  loc_179FAA7:       Me.LblState.Caption = "Running Order"
  loc_179FAAF:     End If
  loc_179FAB2:   Else
  loc_179FABF:     Me.LblState.Caption = "Completed Order"
  loc_179FAC7:   End If
  loc_179FAE1:   var_C8 = var_1F4.Fields.Item("NCKOT")
  loc_179FB22:   Me.ChkNCKOT.Value = CInt(IIf((var_C8.Value = "Y"), 1, 0))
  loc_179FB58:   If (Me.ChkNCKOT.Value = 1) Then
  loc_179FB68:     Set var_A8 = Me.Txt
  loc_179FB6E:     Call 0.Method_Proc_30_94_17A0CD80 (CInt(7), var_C8)
  loc_179FB76:     var_C8.Visible = True
  loc_179FB8D:     Set var_A8 = Me.Label1
  loc_179FB93:     Call 0.Method_Proc_30_94_17A0CD80 (4, var_C8)
  loc_179FB9B:     var_C8.Visible = True
  loc_179FBB4:     Me.LblKotNm.Caption = "NC Kot"
  loc_179FBC4:     Set var_A8 = Me.cmdNCBill
  loc_179FBCA:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(True)
  loc_179FBD5:   Else
  loc_179FBE2:     Set var_A8 = Me.Txt
  loc_179FBE8:     Call 0.Method_Proc_30_94_17A0CD80 (CInt(7), var_C8)
  loc_179FBF0:     var_C8.Visible = False
  loc_179FC07:     Set var_A8 = Me.Label1
  loc_179FC0D:     Call 0.Method_Proc_30_94_17A0CD80 (4, var_C8)
  loc_179FC15:     var_C8.Visible = False
  loc_179FC2E:     Me.LblKotNm.Caption = "Standerd Kot"
  loc_179FC3F:     Set var_A8 = Me.cmdNCBill
  loc_179FC45:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(False)
  loc_179FC4D:   End If
  loc_179FC83:   Set var_130 = Me.Txt
  loc_179FC89:   Call 0.Method_Proc_30_94_17A0CD80 (CInt(7), var_134)
  loc_179FC91:   var_134.Text = Proc_6_38_E68A98(CVar(var_1F4.Fields.Item("NCType")))
  loc_179FCFA:   global_216 = CByte(IIf((var_1F4.Fields.Item("NCKOT").Value = "Y"), 1, 0))
  loc_179FD3E:   var_12C = 1
  loc_179FDB5:   Set var_130 = Me.Txt
  loc_179FDBB:   Call 0.Method_Proc_30_94_17A0CD80 (CInt(4), var_134)
  loc_179FDC3:   var_134.Tag = Proc_6_38_E68A98(CVar(var_1F4.Fields.Item("RoomNo")), CByte(IIf((var_1F4.Fields.Item("NCKOT").Value = "Y"), var_12C, 0)))
  loc_179FDFD:   Proc_6_39_E7C810(var_E8, CVar(var_1F4.Fields.Item("GuarAtt")))
  loc_179FE14:   Set var_130 = Me.Txt
  loc_179FE1A:   Call 0.Method_Proc_30_94_17A0CD80 (CInt(&HD), var_134)
  loc_179FE22:   var_134.Text = CStr(var_E8)
  loc_179FE65:   var_E8 = "hh:nn"
  loc_179FE8C:   Set var_130 = Me.Txt
  loc_179FE92:   Call 0.Method_Proc_30_94_17A0CD80 (CInt(2), var_134, CStr(Format(CVar(var_1F4.Fields.Item("VTIME")), var_E8)))
  loc_179FE9A:   var_134.Text = 1
  loc_179FEF4:   var_138 = CStr(var_1F4.Fields.Item("VTIME").Value)
  loc_179FEFC:   var_1E4 = Replace(var_138, ":", ".", 1, -1, 0)
  loc_179FF2E:   var_1F8 = "Select Name From SessionMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and " & CStr(Val("sELECT COUNT(DISTINCT VNO) FROM KOT WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='"))
  loc_179FF3E:   unk_589093.Execute var_1F8 & " BETWEEN FromTime AND ToTime", var_E8, -1
  loc_179FF49:   Set var_B8 = var_130
  loc_179FF6F:   Set var_1F4 = Nothing 
  loc_179FF82:   Me.FGrid.Redraw = False
  loc_179FF9D:   Me.FGrid.Rows = 1
  loc_179FFA7:   var_B2 = 1
  loc_179FFB7:   var_A4 = "Select K1.*,I.name as ItemName,I.Unit,IsNull(U.PriceType,0) As PriceType,DispCode,D.Code as DepartCode,D.ShortName as DepartName,I.Kitchen From (KOT K1 Inner Join ItemMast I On K1.Item=I.Code And K1.ItemRestCode=I.RestCode)Inner Join Depart D on D.Code=I.RestCode Left Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code Where K1.DocId='"
  loc_17A0000:   unk_589093.Execute CStr(var_A4 & Me.Fields.Item("SearchCode").Value & "' order by K1.Sno"), var_12C, -1
  loc_17A000B:   Set var_AC = var_130
  loc_17A0039:   If (var_AC.RecordCount > 0) Then
  loc_17A003C:     ' Referenced from: 17A0802
  loc_17A004B:     If Not(var_AC.EOF) Then
  loc_17A004E:       var_94 = vbNullString
  loc_17A0058:       Set var_A8 = Me.FGrid
  loc_17A006D:       Set var_20C = Me.FGrid
  loc_17A0074:       var_A4 = CVar(CLng(var_B2)) 'Long
  loc_17A007C:       var_11C = CVar(CLng(0)) 'Long
  loc_17A00AC:       var_E8 = CVar(CStr(var_AC.Fields.Item("SNo").Value)) 'String
  loc_17A00B3:       LateIdCallSt
  loc_17A00CD:       var_A4 = CVar(CLng(var_B2)) 'Long
  loc_17A00D5:       var_11C = CVar(CLng(&HA)) 'Long
  loc_17A0105:       var_E8 = CVar(CStr(var_AC.Fields.Item("Item").Value)) 'String
  loc_17A010C:       LateIdCallSt
  loc_17A015B:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_B2)), var_20C, var_E8, CVar(CLng(3)), CVar(CLng(var_B2)))) 'String
  loc_17A0162:       LateIdCallSt
  loc_17A01AD:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_B2)), var_20C, var_E8, var_20C)) 'String
  loc_17A01B4:       LateIdCallSt
  loc_17A01FF:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(var_B2)), var_20C, var_E8)) 'String
  loc_17A0206:       LateIdCallSt
  loc_17A0251:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Description")), CVar(CLng(6)), CVar(CLng(var_B2)), var_20C, var_E8)) 'String
  loc_17A0258:       LateIdCallSt
  loc_17A028A:       var_F8 = CVar(CLng(var_B2)) 'Long
  loc_17A0292:       var_148 = CVar(CLng(7)) 'Long
  loc_17A02BF:       var_12C = CVar(CStr(Format(CVar(var_AC.Fields.Item("qty")), "0.00"))) 'String
  loc_17A02C6:       LateIdCallSt
  loc_17A0331:       var_12C = CVar(CStr(Format(CVar(var_AC.Fields.Item("Rate")), "0.00"))) 'String
  loc_17A0338:       LateIdCallSt
  loc_17A0376:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("VoidYN")), var_20C, var_12C, 1, 1, CVar(CLng(8)), CVar(CLng(var_B2)))) 'String
  loc_17A0398:       var_134 = var_AC.Fields.Item("VoidYN")
  loc_17A03B8:       var_1AC = CVar(CLng(var_B2)) 'Long
  loc_17A03C0:       var_27C = CVar(CLng(9)) 'Long
  loc_17A03E8:       var_1D0 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_134), var_20C, var_12C, 1))) = "Y") 'Variant
  loc_17A042C:       LateIdCallSt
  loc_17A0493:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_B2)), var_20C, CVar(CStr(IIf((Trim(var_E8) = "F"), "Free", IIf(var_1D0, "Yes", "No")))))) 'String
  loc_17A049A:       LateIdCallSt
  loc_17A04E5:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_B2)), var_20C, var_E8)) 'String
  loc_17A04EC:       LateIdCallSt
  loc_17A0535:       Proc_6_39_E7C810(var_E8, CVar(var_AC.Fields.Item("FreeSno")), CVar(CLng(&HB)), CVar(CLng(var_B2)), var_20C, var_E8)
  loc_17A0545:       LateIdCallSt
  loc_17A0592:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("SchemeCode")), CVar(CLng(&HC)), CVar(CLng(var_B2)), var_20C, CVar(CStr(var_E8)))) 'String
  loc_17A0599:       LateIdCallSt
  loc_17A05E2:       Proc_6_39_E7C810(var_E8, CVar(var_AC.Fields.Item("PriceType")), CVar(CLng(&HD)), CVar(CLng(var_B2)), var_20C, var_E8)
  loc_17A05EB:       var_108 = CVar(CStr(var_E8)) 'String
  loc_17A05F2:       LateIdCallSt
  loc_17A060A:       var_94 = CVar(CLng(var_B2)) 'Long
  loc_17A0612:       var_F8 = CVar(CLng(&HD)) 'Long
  loc_17A0642:       If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(1)) Then
  loc_17A0649:         var_94 = CVar(CLng(var_B2)) 'Long
  loc_17A0651:         var_F8 = CVar(CLng(7)) 'Long
  loc_17A0670:         var_168 = CVar(CLng(var_B2)) 'Long
  loc_17A0678:         var_1AC = CVar(CLng(7)) 'Long
  loc_17A06A5:         var_158 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0"))) 'String
  loc_17A06AD:         Set var_C8 = Me.FGrid
  loc_17A06B3:         LateIdCallSt
  loc_17A06CF:       End If
  loc_17A06F7:       var_C8 = var_AC.Fields.Item("Printed")
  loc_17A0708:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_C8), CVar(CLng(&HE)), CVar(CLng(var_B2)), var_C8, var_158, 1, 1)) 'String
  loc_17A070F:       LateIdCallSt
  loc_17A075A:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Kitchen")), CVar(CLng(&HF)), CVar(CLng(var_B2)), var_20C, var_E8, var_1AC)) 'String
  loc_17A0761:       LateIdCallSt
  loc_17A07B5:       If (var_AC.Fields.Item("FreeSno").Value > 0) Then
  loc_17A07E3:         Proc_96_0_E6BE98(Me.FGrid, var_B2, Me.lblclr.BackColor, Nothing, var_E8)
  loc_17A07F1:       End If
  loc_17A07F7:       var_B2 = (var_B2 + 1)
  loc_17A07FD:       var_AC.MoveNext
  loc_17A0802:       GoTo loc_17A003C
  loc_17A0805:     End If
  loc_17A0818:     Me.FGrid.FixedRows = 1
  loc_17A0820:   End If
  loc_17A082E:   Me.FGrid.Redraw = True
  loc_17A083C:   If (var_B2 = 1) Then
  loc_17A0852:     Me.FGrid.Rows = 1
  loc_17A085E:     Set var_130 = Me.FGrid
  loc_17A0878:     var_D8 = CVar(CStr(Proc_6_127_F24F80(var_130, CInt(0), var_B2, var_168))) 'String
  loc_17A0880:     Set var_C8 = Me.FGrid
  loc_17A08AD:     Me.FGrid.FixedRows = 1
  loc_17A08B5:   End If
  loc_17A08C0:   If (global_68 = "Room Service") Then
  loc_17A08E3:     If (Me.LblState.Caption = "Running Order") Then
  loc_17A08FA:       var_10C = "SELECT RC.RoomNo AS Name, RC.RoomCat, GuestProf.Name as Guest,GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3 FROM (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) where (RC.LOGSITE_CODE='" & MemVar_1F92078
  loc_17A0912:       Set var_A8 = Me.Txt
  loc_17A0918:       Call 0.Method_Proc_30_94_17A0CD80 (CInt(4), var_C8, var_138, var_10C & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL and RC.RoomNo='", var_D8, -1, var_130)
  loc_17A0920:       FGrid.DispID_10000 = var_C8.Tag
  loc_17A0939:       unk_589093.Execute var_D8 & var_138 & "'  Order by RC.ROOMNO", var_D8, var_F8
  loc_17A0944:       Set var_BC = var_130
  loc_17A0963:     Else
  loc_17A0970:       var_A4 = "SELECT distinct GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, KOT.RoomNo, GuestProf.Name FROM  PayCharge INNER JOIN  KOT ON PayCharge.DocId = KOT.ContraDocId INNER JOIN   GuestProf ON PayCharge.GuestProf = GuestProf.Code WHERE (KOT.DocId = '"
  loc_17A097B:       var_94 = "DocID"
  loc_17A09A2:       var_E8 = var_A4 & Me.Fields.Item(var_94).Value 
  loc_17A09A6:       var_F8 = "') AND  KOT.ContraDocID<>'' AND (PayCharge.RoomType = 'RO') AND (PayCharge.PayCode = '"
  loc_17A09D0:       Set var_130 = Me.Txt
  loc_17A09D6:       Call 0.Method_Proc_30_94_17A0CD80 (CInt(4), var_134, var_10C, var_E8 & var_F8 & CVar(MemVar_1F92078) & "TOUT') AND  KOT.RoomNo='", var_1D0)
  loc_17A09DE:       -1 = var_134.Tag
  loc_17A09E6:       var_188 = CVar(var_10C) 'String
  loc_17A0A00:       unk_589093.Execute CStr(var_19C & var_188 & "'"), var_94, var_F8
  loc_17A0A0B:       Set var_BC = var_19C
  loc_17A0A33:     End If
  loc_17A0A47:     If (var_BC.RecordCount > 0) Then
  loc_17A0A4A:       ' Referenced from: 17A0B6E
  loc_17A0A5B:       If (var_BC.EOF = 0) Then
  loc_17A0A94:         Set var_130 = Me.Txt
  loc_17A0A9A:         Call 0.Method_Proc_30_94_17A0CD80 (CInt(8), var_134)
  loc_17A0AA2:         var_134.Text = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Comments1")))
  loc_17A0AEC:         Set var_130 = Me.Txt
  loc_17A0AF2:         Call 0.Method_Proc_30_94_17A0CD80 (CInt(9), var_134)
  loc_17A0AFA:         var_134.Text = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Comments2")))
  loc_17A0B25:         var_C8 = var_BC.Fields.Item("Comments3")
  loc_17A0B2D:         var_D8 = CVar(var_C8) 'Address
  loc_17A0B44:         Set var_130 = Me.Txt
  loc_17A0B4A:         Call 0.Method_Proc_30_94_17A0CD80 (CInt(&HA), var_134)
  loc_17A0B52:         var_134.Text = Proc_6_38_E68A98(var_D8)
  loc_17A0B69:         var_BC.MoveNext
  loc_17A0B6E:         GoTo loc_17A0A4A
  loc_17A0B71:       End If
  loc_17A0B71:     End If
  loc_17A0B71:   End If
  loc_17A0B74: Else
  loc_17A0B74:   Call Proc_30_96_FFD410()
  loc_17A0B94:   var_138 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_17A0BAB:   var_A4 = 0
  loc_17A0BCB:   var_1EC = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_17A0BDB:   unk_589093.Execute var_D8 & var_138 & "'", var_D8, -1
  loc_17A0BE3:   var_A8 = var_A8.Fields
  loc_17A0BEB:   var_A4 = var_C8.Item(var_C8)
  loc_17A0BF3:   var_130 = var_130.Value
  loc_17A0C12:   unk_589093.Execute CStr(var_E8 & var_E8 & "' Order by Description"), CVar(var_138 & MemVar_1F92078 & "') and V_Type='"), var_188
  loc_17A0C1D:   Set var_AC = var_134
  loc_17A0C5D:   If (var_AC.RecordCount > 0) Then
  loc_17A0C91:     global_152 = CStr(var_AC.Fields.Item(0).Value)
  loc_17A0CA2:   End If
  loc_17A0CA2: End If
  loc_17A0CAB: Set var_A8 = Me.BtnLblModi
  loc_17A0CB1: Call {33AD4F2A-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_17A0CB9: Call Proc_30_98_F6DC1C(-1)
  loc_17A0CC3: Set var_AC = Nothing
  loc_17A0CCB: Set var_BC = Nothing
  loc_17A0CCE: Exit Sub
  loc_17A0CCF: ' Referenced from: 179EDEC
  loc_17A0CCF: Proc_6_60_E62BC4(var_134)
  loc_17A0CD4: Exit Sub
End Sub

Public Sub Proc_30_95_1081FF0
  'Data Table: 589074
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_589093 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_F8 As Variant
  Dim var_BC As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  loc_1081D69: Set var_8C = Me.TopCtrl1
  loc_1081D6F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(&HFF)
  loc_1081D77: var_A0 = CStr()
  loc_1081D88: If (var_A0 = "Add") Then
  loc_1081DB8:   Set var_8C = Me.Txt
  loc_1081DBE:   Call 0.Method_Proc_30_95_1081FF00 (CInt(3), var_A4, var_A0, "Select Count(*) From KOT Where DocID='", var_9C, -1)
  loc_1081DDF:   unk_589093.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_1081DEF:    = var_C4.Item()
  loc_1081DF7:    = var_D8.Value
  loc_1081E24:   If (var_A4.Text.Fields > 0) Then
  loc_1081E2D:     Call 0.Method_arg_50 (var_A0)
  loc_1081E4E:     MsgBox("Duplicate KOT No.", &H40, CVar(var_A0), var_108, var_118)
  loc_1081E64:     Call Proc_30_100_1186DAC(MemVar_1F92044)
  loc_1081E77:     Set var_8C = Me.Txt
  loc_1081E7D:     Call 0.Method_Proc_30_95_1081FF00 (CInt(3), var_A4)
  loc_1081E85:     var_A4.Text = var_A0
  loc_1081E99:     Proc_30_95_1081FF0 = 0
  loc_1081E9F:   End If
  loc_1081E9F: End If
  loc_1081EC4: For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_11C 'Integer
  loc_1081ECE:   var_BC = CVar(CLng(var_88)) 'Long
  loc_1081ED6:   var_F8 = CVar(CLng(&HA)) 'Long
  loc_1081EF6:   var_108 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1081F12:   If CBool(var_108 <> vbNullString) Then
  loc_1081F19:     var_BC = CVar(CLng(var_88)) 'Long
  loc_1081F21:     var_F8 = CVar(CLng(7)) 'Long
  loc_1081F51:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1081F79:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_108, var_118)
  loc_1081F9F:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1081FAB:       Set var_8C = Me.FGrid
  loc_1081FCF:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1081FDC:       Proc_30_95_1081FF0 = 0
  loc_1081FE2:     End If
  loc_1081FE2:   End If
  loc_1081FE5: Next var_11C 'Integer
  loc_1081FEA: Proc_30_95_1081FF0 = 
End Sub

Public Sub Proc_30_96_FFD410
  'Data Table: 589074
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Long
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_FFD219: Me.LblVPrefix.Caption = vbNullString
  loc_FFD22E: Me.LblCurStockStr.Caption = vbNullString
  loc_FFD244: Set var_8C = Me.Txt
  loc_FFD24A: Call 0.Method_Proc_30_96_FFD410C (var_8E, var_86)
  loc_FFD25A: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FFD270:   Set var_8C = Me.Txt
  loc_FFD276:   Call 0.Method_Proc_30_96_FFD4100 (CInt(var_86), var_98)
  loc_FFD27E:   var_98.Text = vbNullString
  loc_FFD29A:   Set var_8C = Me.Txt
  loc_FFD2A0:   Call 0.Method_Proc_30_96_FFD4100 (CInt(var_86), var_98)
  loc_FFD2A8:   var_98.Tag = vbNullString
  loc_FFD2B7: Next var_92 'Byte
  loc_FFD2CB: Set var_8C = Me.Txt
  loc_FFD2D1: Call 0.Method_Proc_30_96_FFD4100 (CInt(2), var_98)
  loc_FFD2D9: var_98.Text = "00:00"
  loc_FFD2F3: Set var_8C = Me.Txt
  loc_FFD2F9: Call 0.Method_Proc_30_96_FFD4100 (CInt(2), var_98)
  loc_FFD301: var_98.Tag = vbNullString
  loc_FFD320: Me.FGrid.Rows = 1
  loc_FFD346: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_FFD34E: Set var_98 = Me.FGrid
  loc_FFD368: var_A8 = 1
  loc_FFD374: var_DC = CVar(CLng(1)) 'Long
  loc_FFD387: Set var_8C = Me.FGrid
  loc_FFD38D: LateIdCallSt
  loc_FFD398: var_A8 = 1
  loc_FFD3A4: var_DC = CVar(CLng(2)) 'Long
  loc_FFD3B7: Set var_8C = Me.FGrid
  loc_FFD3BD: LateIdCallSt
  loc_FFD3DB: Me.FGrid.FixedRows = 1
  loc_FFD3EF: Me.ChkNCKOT.Value = 0
  loc_FFD404: Me.LblState.Caption = vbNullString
  loc_FFD40C: Exit Sub
End Sub

Public Sub Proc_30_97_1011740(arg_C) '1011740
  'Data Table: 589074
  Dim var_98 As TextBox
  Dim var_8C As CheckBox
  loc_1011526: Set var_8C = Me.Txt
  loc_101152C: Call 0.Method_Proc_30_97_1011740C (var_8E, var_86)
  loc_101153C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1011552:   Set var_8C = Me.Txt
  loc_1011558:   Call 0.Method_Proc_30_97_10117400 (CInt(var_86), var_98)
  loc_1011560:   var_98.Enabled = arg_C
  loc_101156F: Next var_92 'Byte
  loc_1011582: Set var_8C = Me.cmdNCBill
  loc_1011588: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(Not(arg_C))
  loc_10115A0: Set var_8C = Me.Txt
  loc_10115A6: Call 0.Method_Proc_30_97_10117400 (CInt(2), var_98)
  loc_10115AE: var_98.Enabled = False
  loc_10115C7: Set var_8C = Me.Txt
  loc_10115CD: Call 0.Method_Proc_30_97_10117400 (CInt(3), var_98)
  loc_10115D5: var_98.Enabled = False
  loc_10115EE: Set var_8C = Me.Txt
  loc_10115F4: Call 0.Method_Proc_30_97_10117400 (CInt(1), var_98)
  loc_10115FC: var_98.Enabled = False
  loc_1011615: Set var_8C = Me.Txt
  loc_101161B: Call 0.Method_Proc_30_97_10117400 (CInt(0), var_98)
  loc_1011623: var_98.Enabled = False
  loc_101163C: Set var_8C = Me.Txt
  loc_1011642: Call 0.Method_Proc_30_97_10117400 (CInt(&HE), var_98)
  loc_101164A: var_98.Enabled = False
  loc_1011663: Set var_8C = Me.Txt
  loc_1011669: Call 0.Method_Proc_30_97_10117400 (CInt(8), var_98)
  loc_1011671: var_98.Enabled = False
  loc_101168A: Set var_8C = Me.Txt
  loc_1011690: Call 0.Method_Proc_30_97_10117400 (CInt(9), var_98)
  loc_1011698: var_98.Enabled = False
  loc_10116B1: Set var_8C = Me.Txt
  loc_10116B7: Call 0.Method_Proc_30_97_10117400 (CInt(&HA), var_98)
  loc_10116BF: var_98.Enabled = False
  loc_10116D8: Me.ChkNCKOT.Enabled = arg_C
  loc_10116EB: If (global_188 = "Auto") Then
  loc_10116FB:   Set var_8C = Me.Txt
  loc_1011701:   Call 0.Method_Proc_30_97_10117400 (CInt(&HB), var_98)
  loc_1011709:   var_98.Enabled = False
  loc_1011722:   Set var_8C = Me.Txt
  loc_1011728:   Call 0.Method_Proc_30_97_10117400 (CInt(&HC), var_98)
  loc_1011730:   var_98.Enabled = False
  loc_101173C: End If
  loc_101173C: Exit Sub
End Sub

Public Sub Proc_30_98_F6DC1C
  'Data Table: 589074
  loc_F6DAF0: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F6DB02:   Me.DGItem.Visible = False
  loc_F6DB0A: End If
  loc_F6DB26: If (CBool(Me.DGWaiter.Visible) = &HFF) Then
  loc_F6DB38:   Me.DGWaiter.Visible = False
  loc_F6DB40: End If
  loc_F6DB5C: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_F6DB6E:   Me.DGMember.Visible = False
  loc_F6DB76: End If
  loc_F6DB92: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_F6DBA4:   Me.DGTable.Visible = False
  loc_F6DBAC: End If
  loc_F6DBC8: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_F6DBDA:   Me.DGRest.Visible = False
  loc_F6DBE2: End If
  loc_F6DBFE: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6DC10:   Me.FGPoint.Visible = False
  loc_F6DC18: End If
  loc_F6DC18: Exit Sub
End Sub

Public Sub Proc_30_99_F0AF50
  'Data Table: 589074
  loc_F0AE74: Call Proc_30_98_F6DC1C()
  loc_F0AE84: Set var_88 = Me.Txt
  loc_F0AE8A: Call 0.Method_Proc_30_99_F0AF500 (CInt(1))
  loc_F0AEB3: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F0AEB6:   Exit Sub
  loc_F0AEB7: End If
  loc_F0AEC2: Set var_88 = Me.Txt
  loc_F0AEC8: Call 0.Method_Proc_30_99_F0AF500 (CInt(0), var_8C)
  loc_F0AEF1: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F0AEF4:   Exit Sub
  loc_F0AEF5: End If
  loc_F0AF2C: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0AF2F:   Call TopCtrl1_UnknownEvent_16()
  loc_F0AF37: Else
  loc_F0AF3D:   Call 0.Method_arg_1E8 (var_88)
  loc_F0AF45:   Call var_88.SetFocus
  loc_F0AF4E: End If
  loc_F0AF4E: Exit Sub
End Sub

Public Sub Proc_30_100_1186DAC
  'Data Table: 589074
  Dim var_94 As String
  Dim var_A4 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_110 As String
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_120 As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim unk_589093 As Connection15
  Dim var_134 As Field20
  Dim var_184 As TextBox
  loc_1186A10: var_90 = global_152
  loc_1186A27: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1186A58: Set var_A8 = Me.Txt
  loc_1186A5E: Call 0.Method_Proc_30_100_1186DAC0 (CInt(1), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_1186A6D: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_1186A75: var_EC = -1 & var_CC 
  loc_1186A89: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_1186A94: Set var_8C = var_134
  loc_1186AD0: If (var_8C.RecordCount > 0) Then
  loc_1186B0F:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_1186B43:     global_112 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1186B6E:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_1186B83:     var_CC = (var_AC.Value + 1)
  loc_1186B8C:     global_116 = CLng(var_CC)
  loc_1186B9D:   End If
  loc_1186B9D: End If
  loc_1186BB8: var_CC = CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) 'String
  loc_1186BC8: var_BC = Space((5 - Len(var_90)))
  loc_1186BD0: var_DC = (var_CC + var_AC.Value)
  loc_1186BE4: var_EC = Space((5 - Len(global_112)))
  loc_1186BEC: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_1186BF9: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_112))
  loc_1186C12: var_14C = Space((8 - Len(CStr(global_116))))
  loc_1186C1A: var_15C = (var_130 + var_14C)
  loc_1186C29: var_17C = (var_15C + CVar(CStr(global_116)))
  loc_1186C34: global_108 = CStr(var_17C)
  loc_1186C6A: Me.LblVPrefix.Caption = global_112
  loc_1186C83: Set var_A8 = Me.Txt
  loc_1186C89: Call 0.Method_Proc_30_100_1186DAC0 (CInt(3), var_AC)
  loc_1186C91: var_AC.Text = global_108
  loc_1186CA3: var_120 = 0
  loc_1186CE1: unk_589093.Execute "Select CurTokenNoKOT From Depart Where Logsite_code='" & MemVar_1F92078 & "' And Code='" & LocalRestCode & "'", var_AC.Value, -1
  loc_1186CE9: var_A8 = var_A8.Fields
  loc_1186CF1: var_120 = var_AC.Item(var_AC)
  loc_1186CF9: var_134 = var_134.Value
  loc_1186D04: Proc_6_39_E7C810(CVar("Select CurTokenNoKOT From Depart Where Logsite_code='" & MemVar_1F92078 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="), var_CC)
  loc_1186D0C: var_A4 = CStr(CVar("Select CurTokenNoKOT From Depart Where Logsite_code='" & MemVar_1F92078 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_1186D1B: var_110 = CStr((Val(var_A4) + CDbl(1)))
  loc_1186D29: Set var_180 = Me.Txt
  loc_1186D2F: Call 0.Method_Proc_30_100_1186DAC0 (CInt(&HE), var_184, CStr(var_EC & " Order By VP.Date_From DESC"))
  loc_1186D37: var_184.Text = var_CC
  loc_1186D77: Set var_A8 = Me.Txt
  loc_1186D7D: Call 0.Method_Proc_30_100_1186DAC0 (CInt(0), var_AC)
  loc_1186D85: var_AC.Text = CStr(global_116)
  loc_1186D9A: var_88 = global_108
  loc_1186DA2: Set var_8C = Nothing
  loc_1186DA5: Proc_30_100_1186DAC = global_116
End Sub

Public Sub Proc_30_101_FC0AAC
  'Data Table: 589074
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC092F: If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_FC0934:   var_92 = 4 'Byte
  loc_FC0938: End If
  loc_FC0941: Set var_98 = Me.TxtGrid
  loc_FC0947: Call 0.Method_Proc_30_101_FC0AAC0 (0, var_B0)
  loc_FC096A: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC099E: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC09C2:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC09C5:     GoTo loc_FC0A97
  loc_FC09C8:   End If
  loc_FC09CC:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC09F6:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC0A00:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC0A35:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC0A59:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC0A72:     Set var_98 = Me.TxtGrid
  loc_FC0A78:     Call 0.Method_Proc_30_101_FC0AAC0 (0, var_B0, CVar(CLng(var_92)))
  loc_FC0A80:     var_B0.SetFocus
  loc_FC0A91:     Proc_30_101_FC0AAC = 0
  loc_FC0A97:     ' Referenced from: FC09C5
  loc_FC0A97:   End If
  loc_FC0A9A: Next var_D4 'Integer
  loc_FC0AA4: Proc_30_101_FC0AAC = &HFF
  loc_FC0AAA: Result  End Sub 'Currency
End Sub

Public Sub Proc_30_102_1264AA8
  'Data Table: 589074
  Dim var_90 As String
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_FC As Variant
  Dim var_114 As String
  loc_1264542: Set global_96 = New 
  loc_1264554: Me.Recordset15.CursorLocation = 3
  loc_126455F: var_8C = global_68
  loc_126456A: If (var_8C = "Hall") Then
  loc_1264592:   var_A0 = CVar("Select T.Code,T.Name As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')and  T.Type in('HL') Order by T.Code") 'String
  loc_126459C:   Me.Open var_A0, CVar(MemVar_1F92044), 3
  loc_12645B3:   Set var_88 = Me.Label1
  loc_12645B9:   Call 0.Method_Proc_30_102_1264AA80 (2, var_B4, "Hall")
  loc_12645C1:   var_B4.Caption = 1
  loc_12645DD:   Set var_88 = Me.DGTable
  loc_12645FC:   DGTable.DispID_69.Item(1).Caption = "Hall"
  loc_1264613:   global_156 = "HALL"
  loc_126461D:   global_160 = "HL"
  loc_1264632:   Set var_88 = Me.DGTable
  loc_1264651:   DGTable.DispID_69.Item(2).Width = CDbl(0)
  loc_1264673:   Set var_88 = Me.DGTable
  loc_1264692:   DGTable.DispID_69.Item(3).Width = CDbl(0)
  loc_12646B3:   Set var_C0 = Me.DGTable
  loc_12646E7:   Set var_88 = Me.DGTable
  loc_12646F8:   Set var_B4 = DGTable.DispID_69
  loc_1264717:   var_FC = CVar(((var_B4.Item(0).Width + DGTable.DispID_69.Item(1).Width) + CDbl(650))) 'Single
  loc_1264726:   Me.DGTable.Width = var_FC
  loc_1264746: Else
  loc_126474E:   If (var_8C = "Outlet") Then
  loc_126475D:     Set var_88 = Me.Label1
  loc_1264763:     Call 0.Method_Proc_30_102_1264AA80 (2, var_B4)
  loc_126476B:     var_B4.Caption = "Table #"
  loc_1264787:     Set var_88 = Me.DGTable
  loc_12647A6:     DGTable.DispID_69.Item(1).Caption = "Table No"
  loc_12647DC:     var_114 = "Select T.Code,T.Code As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and T.Type in ('TB') And RestCode='"
  loc_12647F7:     Me.Open CVar(var_114 & LocalRestCode & "' Order By T.Code"), CVar(MemVar_1F92044), 3
  loc_126480E:     global_156 = "REST"
  loc_1264818:     global_160 = "TB"
  loc_126482D:     Set var_88 = Me.DGTable
  loc_126484C:     DGTable.DispID_69.Item(2).Width = CDbl(0)
  loc_126486E:     Set var_88 = Me.DGTable
  loc_126488D:     DGTable.DispID_69.Item(3).Width = CDbl(0)
  loc_12648AE:     Set var_C0 = Me.DGTable
  loc_12648E2:     Set var_88 = Me.DGTable
  loc_12648F3:     Set var_B4 = DGTable.DispID_69
  loc_1264912:     var_FC = CVar(((var_B4.Item(0).Width + DGTable.DispID_69.Item(1).Width) + CDbl(650))) 'Single
  loc_1264921:     Me.DGTable.Width = var_FC
  loc_1264941:   Else
  loc_1264949:     If (var_8C = "Room Service") Then
  loc_1264958:       Set var_88 = Me.Label1
  loc_126495E:       Call 0.Method_Proc_30_102_1264AA80 (2, var_B4, "Room #")
  loc_1264966:       var_B4.Caption = 1
  loc_1264982:       Set var_88 = Me.DGTable
  loc_12649A1:       DGTable.DispID_69.Item(1).Caption = "Room No"
  loc_12649D0:       var_90 = "SELECT RC.RoomNo AS Code, RC.RoomNo AS Name, RC.RoomCat, GuestProf.Name as Guest, PlanName = Case  When isnull(PlanMast.Name,'')='' then 'Europian Plan' else PlanMast.Name end, GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3,RC.Docid,RC.Adult FROM (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) LEFT JOIN PlanMast ON RC.PlanCode = PlanMast.Code where (RC.LOGSITE_CODE='" & MemVar_1F92078
  loc_12649D7:       var_A0 = CVar(var_90 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL Order by RC.ROOMNO") 'String
  loc_12649E1:       Me.Open var_A0, CVar(MemVar_1F92044), 3
  loc_12649F2:       global_160 = "RO"
  loc_1264A08:       Set var_88 = Me.DGTable
  loc_1264A27:       DGTable.DispID_69.Item(1).Width = CDbl(1515)
  loc_1264A4A:       Set var_88 = Me.DGTable
  loc_1264A69:       DGTable.DispID_69.Item(2).Width = CDbl(3539)
  loc_1264A7A:       GoTo loc_1264A7D
  loc_1264A7D:       ' Referenced from:     1264A7A
  loc_1264A7D:     End If
  loc_1264A7D:   End If
  loc_1264A7D: End If
  loc_1264A86: CVarUnk
  loc_1264A8B: VerifyVarObj
  loc_1264A91: Set var_88 = Me.DGTable
  loc_1264A97: LateIdStAd
  loc_1264AA5: Exit Sub
End Sub

Public Sub Proc_30_103_EF9B84(arg_C, arg_10, arg_14) 'EF9B84
  'Data Table: 589074
  Dim var_8A As Integer
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  loc_EF9ACD: var_88 = vbNullString
  loc_EF9AE4: arg_C = CStr(Trim(arg_C))
  loc_EF9AF0: var_8A = CInt(Len(arg_C))
  loc_EF9B01: If (arg_10 = "D") Then
  loc_EF9B36:   var_E0 = (Chr(&HE) + Chr(&HF))
  loc_EF9B43:   var_F0 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_EF9B5D:   var_130 = (var_E0 + Space(CLng((var_F0 / 2))))
  loc_EF9B67:   var_150 = (var_130 + CVar(arg_C))
  loc_EF9B6C:   var_88 = CStr(var_150)
  loc_EF9B7E: End If
  loc_EF9B7E: Proc_30_103_EF9B84 = var_8A
End Sub

Public Sub Proc_30_104_1200240(arg_C, arg_10, arg_14) '1200240
  'Data Table: 589074
  Dim var_E0 As String
  Dim var_134 As Variant
  Dim var_164 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_264 As Variant
  Dim var_DC As Variant
  Dim var_194 As Variant
  Dim var_244 As Variant
  Dim var_184 As Variant
  Dim arg_10 As Integer
  loc_11FFDDD: var_90 = vbNullString
  loc_11FFDE3: var_94 = vbNullString
  loc_11FFDE9: var_98 = vbNullString
  loc_11FFDEF: var_9C = vbNullString
  loc_11FFDFA: If (MemVar_1F923C0 = "Y") Then
  loc_11FFE04:   var_E0 = vbNullString & "DATE "
  loc_11FFE35:   var_8C = 1 & CStr(Format(MemVar_1F920EC, "dd/MM/yy"))
  loc_11FFE48: End If
  loc_11FFE50: If (MemVar_1F923C4 = "Y") Then
  loc_11FFEB4:   var_164 = (CVar(arg_14) - IIf((MemVar_1F923C0 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F920EC, "dd/MM/yy")))), 0))
  loc_11FFEDB:   var_1B4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_11FFEE3:   var_1D4 = (var_164 - Len(var_1B4))
  loc_11FFEF4:   var_204 = (CVar(var_8C) + Space(CLng(var_1D4)))
  loc_11FFEFD:   var_224 = (var_204 + " PAGE NO ")
  loc_11FFF1F:   var_264 = (var_224 + Trim(Str(arg_C)))
  loc_11FFF24:   var_8C = CStr(var_264)
  loc_11FFF51: End If
  loc_11FFF5F: If (MemVar_1F923C8 = "K") Then
  loc_11FFF6C:   If (Len(MemVar_1F92130) <= &H28) Then
  loc_11FFF85:     var_DC = (CVar(var_90) + Chr(&HF))
  loc_11FFF99:     var_134 = (Format(MemVar_1F920EC, "dd/MM/yy") + Chr(&HE))
  loc_11FFFAD:     var_164 = (0 + Chr(&H1B))
  loc_11FFFC1:     var_194 = (var_164 + Chr(&H45))
  loc_11FFFCB:     var_1B4 = (Trim(Str(arg_C)) + CVar(MemVar_1F92130))
  loc_11FFFDF:     var_1D4 = (var_1B4 + Chr(&H1B))
  loc_11FFFF3:     var_204 = (var_1D4 + Chr(&H46))
  loc_1200007:     var_244 = (var_204 + Chr(&HE))
  loc_120000C:     var_90 = CStr(Str(arg_C))
  loc_1200033:   Else
  loc_1200049:     var_DC = (CVar(var_90) + Chr(&H12))
  loc_120005D:     var_134 = (Format(MemVar_1F920EC, "dd/MM/yy") + Chr(&HE))
  loc_1200071:     var_164 = (0 + Chr(&HF))
  loc_120007B:     var_184 = (var_164 + CVar(MemVar_1F92130))
  loc_120008F:     var_1B4 = (Chr(&H45) + Chr(&H12))
  loc_1200094:     var_90 = CStr(var_1B4)
  loc_12000AC:   End If
  loc_12000B6:   If (Len(MemVar_1F92134) > 0) Then
  loc_12000E2:     Call Proc_30_103_EF9B84(MemVar_1F92134, "D", CInt(Val(CStr(arg_14))))
  loc_12000EB:     var_94 = var_270 & var_270
  loc_12000F7:   End If
  loc_1200101:   If (Len(MemVar_1F92138) > 0) Then
  loc_120012D:     Call Proc_30_103_EF9B84(MemVar_1F92138, "D", CInt(Val(CStr(arg_14))))
  loc_1200136:     var_98 = var_270 & var_270
  loc_1200142:   End If
  loc_120014C:   If (Len(MemVar_1F9213C) > 0) Then
  loc_1200178:     Call Proc_30_103_EF9B84(MemVar_1F9213C, "D", CInt(Val(CStr(arg_14))))
  loc_1200181:     var_9C = var_270 & var_270
  loc_120018D:   End If
  loc_120018D: End If
  loc_1200197: If (Len(var_8C) > 0) Then
  loc_120019F:   Print 1, var_8C
  loc_12001AB:   arg_10 = (arg_10 + 1)
  loc_12001AE: End If
  loc_12001B8: If (Len(var_90) > 0) Then
  loc_12001C0:   Print 1, var_90
  loc_12001CC:   arg_10 = (arg_10 + 1)
  loc_12001CF: End If
  loc_12001D9: If (Len(var_94) > 0) Then
  loc_12001E1:   Print 1, var_94
  loc_12001ED:   arg_10 = (arg_10 + 1)
  loc_12001F0: End If
  loc_12001FA: If (Len(var_98) > 0) Then
  loc_1200202:   Print 1, var_98
  loc_120020E:   arg_10 = (arg_10 + 1)
  loc_1200211: End If
  loc_120021B: If (Len(var_9C) > 0) Then
  loc_1200223:   Print 1, var_9C
  loc_120022F:   arg_10 = (arg_10 + 1)
  loc_1200232: End If
  loc_1200238: Proc_30_104_1200240 = arg_10
End Sub

Public Sub Proc_30_105_F223E0(arg_C, arg_10, arg_14) 'F223E0
  'Data Table: 589074
  Dim unk_589093 As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  loc_F22325: Proc_6_7_F25D88(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F22357: unk_589093.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(arg_14) & "' And Party='' Order by Appdate Desc"), -1, var_15C
  loc_F22362: Set var_90 = var_15C
  loc_F22394: If (var_90.RecordCount > 0) Then
  loc_F223C2:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F223D2: Else
  loc_F223D5:   var_8C = CDbl(0)
  loc_F223D8: End If
  loc_F223D8: Proc_30_105_F223E0 = var_8C
End Sub

Public Sub Proc_30_106_1262164
  'Data Table: 589074
  Dim var_A0 As Variant
  Dim var_9C As Variant
  Dim var_94 As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_130 As Variant
  Dim var_150 As Long
  Dim var_174 As Variant
  Dim var_344 As Double
  Dim var_200 As TextBox
  Dim var_A4 As String
  Dim var_234 As Variant
  Dim var_2A4 As Variant
  Dim unk_589093 As Connection15
  Dim var_88 As Recordset15
  loc_1261C86: Set var_9C = Me.Txt
  loc_1261C8C: Call 0.Method_Proc_30_106_12621640 (CInt(1), var_A0)
  loc_1261CBA: var_94 = CInt(CLng(Me.FGrid.Row))
  loc_1261CE0: If (CLng(Me.FGrid.Col) = CLng(9)) Then
  loc_1261CF6:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1261CFB:   var_E4 = 1
  loc_1261D0E:   var_104 = Me.FGrid.TextMatrix)
  loc_1261D32:   var_150 = &HA
  loc_1261D45:   var_174 = Me.FGrid.TextMatrix)
  loc_1261D8E:   var_344 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1261D9D:   Set var_1FC = Me.Txt
  loc_1261DA3:   Call 0.Method_Proc_30_106_12621640 (1, var_200, var_204, var_344, CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)), var_174)
  loc_1261DAB:   var_150 = var_200.Text
  loc_1261DB9:   Proc_6_7_F25D88(var_224, CVar(var_204), CVar(CLng(Me.FGrid.Row)), var_104)
  loc_1261DFD:   var_A4 = "SELECT SD.RestCode, Depart.ShortName, IM.DispCode, FD.FreeItem, IM.NAME as FreeItemName, IM.Unit, FD.FreeQty, I1.code as MainCode,I1.Name, SD.Qty FROM SchemeItemDetail SD JOIN FreeItemDetail FD ON SD.Code = FD.Code And SD.RestCode = FD.RestCode JOIN ItemMast IM on FD.FreeItem=IM.Code And FD.RestCode=IM.RestCode Join Depart on SD.RestCode=Depart.Code Join Itemmast I1 on SD.Itemcode=I1.code And SD.RestCode=I1.RestCode" & " WHERE SD.restCode='"
  loc_1261E34:   var_234 = CVar(var_A4 & CStr(var_104) & "' AND SD.ItemCode ='" & CStr(var_174) & "' AND SD.Qty <=" & CStr(var_344) & " AND ") 'String
  loc_1261E56:   var_2A4 = var_234 & var_224 & " Between SD.Appdate And SD.EndDate AND SD.LogSite_Code='" & CVar(MemVar_1F92078) & "' AND SD.Active='Y' And ISNULL(SD.Days,'') Like '%" 
  loc_1261E74:   unk_589093.Execute CStr(var_2A4 & Trim(Str(Weekday(Me.FGrid.Text, 1))) & "%' Order By SD.Qty Desc"), var_338, -1
  loc_1261E7F:   Set var_88 = var_33C
  loc_1261EED:   If (var_88.RecordCount > 0) Then
  loc_1261F53:     var_90 = CStr(var_88.Fields.Item("Maincode").Value)
  loc_1261F86:     For var_34C = var_94 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_34C 'Integer
  loc_1261F9F:       Me.FGrid.Row = CVar(CLng(var_92))
  loc_1261FDA:       If (CLng(Me.FGrid.CellBackColor) = Me.lblclr.BackColor) Then
  loc_1261FE1:         var_C4 = CVar(CLng(var_92)) 'Long
  loc_1261FE6:         var_E4 = &HA
  loc_1262015:         If (CStr(Me.FGrid.TextMatrix)) = CStr(var_88.Fields.Item("FreeItem").Value)) Then
  loc_126201C:           var_C4 = CVar(CLng(var_94)) 'Long
  loc_1262024:           var_E4 = CVar(CLng(9)) 'Long
  loc_126204F:           If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1262056:             var_C4 = CVar(CLng(var_92)) 'Long
  loc_126205E:             var_E4 = CVar(CLng(9)) 'Long
  loc_1262063:             var_130 = "Yes"
  loc_126206D:             Set var_9C = Me.FGrid
  loc_1262073:             LateIdCallSt
  loc_1262081:           Else
  loc_1262085:             var_C4 = CVar(CLng(var_94)) 'Long
  loc_126208D:             var_E4 = CVar(CLng(9)) 'Long
  loc_12620B8:             If (CStr(Me.FGrid.TextMatrix)) = "No") Then
  loc_12620BF:               var_C4 = CVar(CLng(var_92)) 'Long
  loc_12620C7:               var_E4 = CVar(CLng(9)) 'Long
  loc_12620CC:               var_130 = "No"
  loc_12620D6:               Set var_9C = Me.FGrid
  loc_12620DC:               LateIdCallSt
  loc_12620EA:             Else
  loc_12620EE:               var_C4 = CVar(CLng(var_94)) 'Long
  loc_12620F6:               var_E4 = CVar(CLng(9)) 'Long
  loc_1262121:               If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1262128:                 var_C4 = CVar(CLng(var_92)) 'Long
  loc_1262130:                 var_E4 = CVar(CLng(9)) 'Long
  loc_1262135:                 var_130 = vbNullString
  loc_126213F:                 Set var_9C = Me.FGrid
  loc_1262145:                 LateIdCallSt
  loc_1262150:               End If
  loc_1262150:             End If
  loc_1262150:           End If
  loc_1262150:           Exit For
  loc_1262153:         End If
  loc_1262153:       End If
  loc_1262156:     Next var_34C 'Integer
  loc_126215B:     ' Referenced from: 1262150
  loc_126215B:   End If
  loc_126215B: End If
  loc_1262160: Set var_88 = Nothing
  loc_1262163: Exit Sub
End Sub

Public Sub Proc_30_107_12C0B08(arg_C, arg_10) '12C0B08
  'Data Table: 589074
  Dim var_94 As String
  Dim unk_589093 As Connection15
  Dim var_8C As Recordset15
  Dim var_BC As Fields15
  Dim var_B8 As Variant
  Dim var_FC As Variant
  Dim var_174 As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_1BC As Variant
  Dim var_2C4 As Variant
  Dim var_2E4 As Variant
  loc_12C053E: var_94 = "Select K.Sno,I.Name as ItemName,K.Description,K.Qty,K.Rate,K.Amount,K.VoidYN As Cancel,Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code Where K.DocID='" & arg_C
  loc_12C054E: unk_589093.Execute var_94 & "' Order By K.Sno", var_B8, -1
  loc_12C0559: Set var_8C = var_BC
  loc_12C057D: If (var_8C.RecordCount > 0) Then
  loc_12C0583:   var_8C.MoveFirst
  loc_12C0588:   ' Referenced from: 12C0AF1
  loc_12C0597:   If Not(var_8C.EOF) Then
  loc_12C059D:     var_C8 = arg_10
  loc_12C05A8:     If (var_C8 = "<Item-Qty>") Then
  loc_12C05D1:       Proc_6_39_E7C810(var_134, CVar(var_8C.Fields.Item("qty")))
  loc_12C060F:       var_BC = var_8C.Fields
  loc_12C063F:       var_FC = (CVar(var_BC & Proc_6_38_E68A98(CVar(var_BC.Item("ItemName")), var_90)) + Space(1))
  loc_12C0666:       var_174 = (1 + Format(var_134, "0"))
  loc_12C067A:       var_1EC = " Void"
  loc_12C069F:       var_22C = (var_174 + IIf((var_8C.Fields.Item("Cancel").Value = "Y"), var_1EC, vbNullString))
  loc_12C06A8:       var_24C = (var_22C + "%0D")
  loc_12C06AD:       var_90 = CStr(var_24C)
  loc_12C06E4:     Else
  loc_12C06EC:       If (var_C8 = "<Item-Qty-Rate>") Then
  loc_12C0715:         Proc_6_39_E7C810(var_134, CVar(var_8C.Fields.Item("qty")))
  loc_12C0740:         Proc_6_39_E7C810(var_1EC, CVar(var_8C.Fields.Item("Rate")))
  loc_12C07AE:         var_FC = (CVar(1 & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ItemName")), var_90)) + Space(1))
  loc_12C07D5:         var_174 = (1 + Format(var_134, "0"))
  loc_12C07E9:         var_1BC = (var_174 + Space(1))
  loc_12C0810:         var_22C = (1 + Format(var_1EC, "0.00"))
  loc_12C0849:         var_2C4 = (var_22C + IIf((var_8C.Fields.Item("Cancel").Value = "Y"), " Void", vbNullString))
  loc_12C0852:         var_2E4 = (var_2C4 + "%0D")
  loc_12C0857:         var_90 = CStr(var_2E4)
  loc_12C089E:       Else
  loc_12C08A6:         If (var_C8 = "<Item-Qty-Amt>") Then
  loc_12C08CF:           Proc_6_39_E7C810(var_134, CVar(var_8C.Fields.Item("qty")), 1, var_1BC)
  loc_12C08FA:           Proc_6_39_E7C810(var_1EC, CVar(var_8C.Fields.Item("Amount")), 1)
  loc_12C0968:           var_FC = (CVar(var_FC & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ItemName")), var_90)) + Space(1))
  loc_12C098F:           var_174 = (1 + Format(var_134, "0"))
  loc_12C09A3:           var_1BC = (var_174 + Space(1))
  loc_12C09CA:           var_22C = (1 + Format(var_1EC, "0.00"))
  loc_12C0A03:           var_2C4 = (var_22C + IIf((var_8C.Fields.Item("Cancel").Value = "Y"), " Void", vbNullString))
  loc_12C0A0C:           var_2E4 = (var_2C4 + "%0D")
  loc_12C0A11:           var_90 = CStr(var_2E4)
  loc_12C0A55:         End If
  loc_12C0A55:       End If
  loc_12C0A55:     End If
  loc_12C0A8E:     If (Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Description")), 1, var_1BC) <> vbNullString) Then
  loc_12C0AD5:       var_90 = var_FC & 1 & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Description")), "(", var_90) & ")" & "D"
  loc_12C0AE9:     End If
  loc_12C0AEC:     var_8C.MoveNext
  loc_12C0AF1:     GoTo loc_12C0588
  loc_12C0AF4:   End If
  loc_12C0AF4: End If
  loc_12C0AF7: var_88 = var_90
  loc_12C0AFF: Set var_8C = Nothing
  loc_12C0B02: Proc_30_107_12C0B08 = var_FC
End Sub

Public Sub Proc_30_108_10152B8(arg_C, arg_10, arg_14) '10152B8
  'Data Table: 589074
  Dim var_94 As String
  Dim unk_589093 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Fields15
  Dim var_B8 As Variant
  Dim var_F4 As Variant
  Dim arg_14 As Double
  Dim var_8E As Integer
  Dim var_D4 As Variant
  loc_10150CC: var_94 = "Select K.Sno,I.Name as ItemName,K.Description,K.Qty,K.Rate,K.Amount,K.VoidYN As Cancel,Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code Where K.DocID='" & arg_C
  loc_10150DC: unk_589093.Execute var_94 & "' Order By K.Sno", var_B8, -1
  loc_10150E7: Set var_88 = var_BC
  loc_101510B: If (var_88.RecordCount > 0) Then
  loc_1015111:   var_88.MoveFirst
  loc_1015161:   var_8C = Replace(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName"))), "&", vbNullString, 1, -1, 0)
  loc_101519E:   Proc_6_39_E7C810(var_D4, CVar(var_88.Fields.Item("Amount")))
  loc_10151A6:   var_F4 = (CVar(arg_14) + var_D4)
  loc_10151AB:   arg_14 = CSng(var_F4)
  loc_10151BD:   var_88.MoveNext
  loc_10151C4:   var_8E = 0
  loc_10151C7:   ' Referenced from: 1015233
  loc_10151D6:   If Not(var_88.EOF) Then
  loc_10151DF:     var_8E = (var_8E + 1)
  loc_101520F:     Proc_6_39_E7C810(var_D4, CVar(var_88.Fields.Item("Amount")), CVar(arg_14), var_8E)
  loc_1015217:     var_F4 = (var_8E + var_D4)
  loc_101521C:     arg_14 = CSng(var_F4)
  loc_101522E:     var_88.MoveNext
  loc_1015233:     GoTo loc_10151C7
  loc_1015236:   End If
  loc_1015253:   var_D4 = (Left(var_8C, &H18) + "...")
  loc_1015297:   arg_10 = CStr(IIf((Len(var_8C) <= &H1B), var_8C, var_D4) & " And " & CVar(CStr(var_8E)) & " More")
  loc_10152AE: End If
  loc_10152B3: Set var_88 = Nothing
  loc_10152B6: Exit Sub
End Sub
