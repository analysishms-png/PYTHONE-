VERSION 5.00
Begin VB.Form fdPaymentCharge
  Caption = "Post Charges & Payment"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "fdPaymentCharge.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 11655
  ClientHeight = 9270
  LockControls = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin Frame FrTxnNo
    BackColor = &HFFC0C0&
    Left = 75
    Top = 8190
    Width = 6000
    Height = 285
    Visible = 0   'False
    TabIndex = 127
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 43
      BackColor = &HFFFFFF&
      Left = 1650
      Top = 30
      Width = 4005
      Height = 255
      TabIndex = 17
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
    Begin Label LblName
      Caption = "Txn. No."
      Index = 3
      ForeColor = &HC00000&
      Left = 15
      Top = 30
      Width = 675
      Height = 225
      TabIndex = 128
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
  End
  Begin TextBox Txt
    Index = 42
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 9480
    Top = 1725
    Width = 510
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 9
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
  Begin DataGrid DGChrgPayment
    Left = 13830
    Top = 630
    Width = 5490
    Height = 3465
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8820
    Width = 11655
    Height = 450
    Visible = 0   'False
    TabIndex = 125
  End
  Begin Frame FrReference
    Caption = "Reference"
    Left = 6900
    Top = 3375
    Width = 4695
    Height = 3810
    TabIndex = 120
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox Txt
      Index = 41
      BackColor = &HFFFFFF&
      Left = 60
      Top = 255
      Width = 4515
      Height = 4260
      TabIndex = 121
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 1000
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin CommandButton CmdReference
    Caption = "..."
    Left = 11295
    Top = 2040
    Width = 300
    Height = 270
    TabIndex = 119
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
  Begin DataGrid DGCCurreny
    Left = 11655
    Top = 3075
    Width = 2430
    Height = 2355
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 114
  End
  Begin Frame exFrame
    Left = 16485
    Top = 1005
    Width = 3450
    Height = 1995
    Visible = 0   'False
    TabIndex = 108
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin CommandButton Command1
      Caption = "Hide"
      Left = 1020
      Top = 1155
      Width = 1005
      Height = 285
      TabIndex = 116
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
    Begin TextBox Txt
      Index = 40
      BackColor = &HFFFFFF&
      Left = 1155
      Top = 570
      Width = 1755
      Height = 285
      TabIndex = 113
      MaxLength = 50
      Locked = -1  'True
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
    Begin Label Label1
      Caption = "Foreign Currency Calculator"
      Index = 4
      BackColor = &H4040&
      ForeColor = &HFFFFFF&
      Left = 15
      Top = 30
      Width = 2970
      Height = 225
      TabIndex = 117
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
    Begin Label LTxt
      Caption = "Currency"
      Index = 7
      BackColor = &HFFFFFF&
      ForeColor = &H800000&
      Left = 90
      Top = 600
      Width = 1050
      Height = 255
      TabIndex = 115
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Shape Shape2
      Left = 45
      Top = 30
      Width = 2970
      Height = 1455
      BorderWidth = 2
    End
    Begin Label LTxt
      Caption = "Converted"
      Index = 6
      BackColor = &HFFFFFF&
      ForeColor = &H800000&
      Left = 90
      Top = 870
      Width = 1050
      Height = 255
      TabIndex = 112
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LTxt
      Index = 5
      BackColor = &HFFFFFF&
      ForeColor = &H800000&
      Left = 1155
      Top = 870
      Width = 1275
      Height = 255
      TabIndex = 111
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LTxt
      Caption = "Amount"
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &H800000&
      Left = 90
      Top = 315
      Width = 1050
      Height = 255
      TabIndex = 110
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LTxt
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &H800000&
      Left = 1155
      Top = 315
      Width = 1275
      Height = 255
      TabIndex = 109
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin DataGrid DGMember
    Left = 15690
    Top = 4245
    Width = 4215
    Height = 2640
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 107
  End
  Begin Frame FrMember
    BackColor = &HFFC0C0&
    Left = 75
    Top = 7260
    Width = 6000
    Height = 330
    Visible = 0   'False
    TabIndex = 105
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 39
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1650
      Top = 30
      Width = 4000
      Height = 285
      TabIndex = 34
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
    Begin Label LblName
      Caption = "Member"
      Index = 2
      ForeColor = &HC00000&
      Left = 15
      Top = 30
      Width = 705
      Height = 225
      TabIndex = 106
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
  End
  Begin PictureBox Picture1
    Picture = "fdPaymentCharge.frx":442
    Left = 13500
    Top = 30
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 102
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton Command2
      Caption = "Command2"
      Left = -15
      Top = 675
      Width = 270
      Height = 240
      TabIndex = 118
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
  Begin TextBox Txt
    Index = 38
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3135
    Top = 1050
    Width = 870
    Height = 285
    Visible = 0   'False
    TabIndex = 101
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
  End
  Begin TextBox Txt
    Index = 36
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3225
    Top = 2295
    Width = 765
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 98
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  End
  Begin Timer Timer1
    Interval = 1000
    Left = 10350
    Top = 0
  End
  Begin PictureBox Picture2
    Picture = "fdPaymentCharge.frx":790
    Left = 13170
    Top = 30
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 97
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DGRoom
    Left = 14685
    Top = 3150
    Width = 3885
    Height = 1830
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 47
  End
  Begin CommandButton frmcmd
    Caption = "&Exit"
    Index = 3
    BackColor = &HFFC0C0&
    Left = 13455
    Top = 7230
    Width = 1575
    Height = 360
    Visible = 0   'False
    TabIndex = 96
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Display Folio"
    MaskColor = &HFFC0C0&
    Style = 1
  End
  Begin CommandButton frmcmd
    Caption = "&Save"
    Index = 2
    BackColor = &HFFC0C0&
    Left = 13455
    Top = 6870
    Width = 1575
    Height = 360
    Visible = 0   'False
    TabIndex = 95
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Display Folio"
    MaskColor = &HFFC0C0&
    Style = 1
  End
End
Begin DataGrid DGRoomNo
  Left = 13680
  Top = 3570
  Width = 2580
  Height = 1575
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 23
End
Begin DataGrid DGEmp
  Left = 14745
  Top = 240
  Width = 4170
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 48
End
Begin TextBox Txt
  Index = 35
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 10350
  Top = 1725
  Width = 900
  Height = 285
  TabIndex = 6
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
  MaxLength = 9
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
Begin CommandButton frmcmd
  Caption = "&Receipt Print"
  Index = 1
  BackColor = &HDEE6FE&
  Left = 12030
  Top = 2670
  Width = 1575
  Height = 360
  Visible = 0   'False
  TabIndex = 90
  BeginProperty Font
    Name = "Tahoma"
    Size = 8.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  ToolTipText = "Reciept Printing"
  MaskColor = &HFFC0C0&
End
Begin TextBox Txt
  Index = 11
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1560
  Top = 1980
  Width = 2445
  Height = 285
  Enabled = 0   'False
  TabIndex = 73
  BorderStyle = 0 'None
  MaxLength = 16
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
  Index = 13
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2010
  Top = 2295
  Width = 420
  Height = 285
  Enabled = 0   'False
  TabIndex = 72
  BorderStyle = 0 'None
  MaxLength = 2
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
  Index = 12
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1560
  Top = 2295
  Width = 420
  Height = 285
  Enabled = 0   'False
  TabIndex = 71
  BorderStyle = 0 'None
  MaxLength = 2
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
  Index = 14
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 14175
  Top = 8100
  Width = 480
  Height = 285
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 70
  BorderStyle = 0 'None
  MaxLength = 1
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
  Index = 15
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1560
  Top = 2610
  Width = 870
  Height = 285
  Enabled = 0   'False
  TabIndex = 69
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
End
Begin TextBox Txt
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3975
  Top = 615
  Width = 750
  Height = 285
  TabIndex = 0
  BorderStyle = 0 'None
  MaxLength = 5
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox Txt
  Index = 1
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1560
  Top = 1350
  Width = 1545
  Height = 285
  Enabled = 0   'False
  TabIndex = 68
  BorderStyle = 0 'None
  MaxLength = 11
  Locked = -1  'True
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
  Index = 7
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 3405
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 67
  BorderStyle = 0 'None
  MaxLength = 50
  Locked = -1  'True
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
  ForeColor = &HC00000&
  Left = 1290
  Top = 4665
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 66
  BorderStyle = 0 'None
  Locked = -1  'True
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
  Index = 9
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 5925
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 65
  BorderStyle = 0 'None
  MaxLength = 8
  Locked = -1  'True
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
  Index = 3
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3585
  Top = 1350
  Width = 420
  Height = 285
  Enabled = 0   'False
  TabIndex = 64
  BorderStyle = 0 'None
  Alignment = 2 'Center
  MaxLength = 3
  Locked = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  DataFormat = 80
  DataFormat = 38
End
Begin TextBox Txt
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3135
  Top = 1350
  Width = 420
  Height = 285
  Enabled = 0   'False
  TabIndex = 63
  BorderStyle = 0 'None
  Alignment = 2 'Center
  MaxLength = 3
  Locked = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  DataFormat = 80
  DataFormat = 38
End
Begin TextBox Txt
  Index = 10
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1560
  Top = 1035
  Width = 1545
  Height = 285
  Enabled = 0   'False
  TabIndex = 62
  BorderStyle = 0 'None
  MaxLength = 5
  Locked = -1  'True
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
  Index = 30
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3135
  Top = 1665
  Width = 420
  Height = 285
  Enabled = 0   'False
  TabIndex = 61
  BorderStyle = 0 'None
  Alignment = 2 'Center
  MaxLength = 3
  Locked = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  DataFormat = 80
  DataFormat = 38
End
Begin TextBox Txt
  Index = 29
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 3585
  Top = 1665
  Width = 420
  Height = 285
  Enabled = 0   'False
  TabIndex = 60
  BorderStyle = 0 'None
  Alignment = 2 'Center
  MaxLength = 3
  Locked = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  DataFormat = 80
  DataFormat = 38
End
Begin TextBox Txt
  Index = 31
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1560
  Top = 1665
  Width = 1545
  Height = 285
  Enabled = 0   'False
  TabIndex = 59
  BorderStyle = 0 'None
  MaxLength = 11
  Locked = -1  'True
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
  Index = 34
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 5610
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 58
  BorderStyle = 0 'None
  Locked = -1  'True
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
  Index = 33
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 5295
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 57
  BorderStyle = 0 'None
  MaxLength = 50
  Locked = -1  'True
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
  Index = 32
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 4980
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 56
  BorderStyle = 0 'None
  MaxLength = 16
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
  Index = 28
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 4350
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 55
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
End
Begin TextBox Txt
  Index = 27
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 4035
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 54
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
End
Begin TextBox Txt
  Index = 26
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 1290
  Top = 3720
  Width = 3930
  Height = 285
  Enabled = 0   'False
  TabIndex = 53
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
End
Begin DataGrid DGCompany
  Left = 14415
  Top = -525
  Width = 4215
  Height = 3330
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 51
End
Begin Frame FrComp
  BackColor = &HFFC0C0&
  Left = 75
  Top = 7890
  Width = 6000
  Height = 330
  Visible = 0   'False
  TabIndex = 49
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  BorderStyle = 0 'None
  Begin PictureBox Picture4
    Picture = "fdPaymentCharge.frx":ADE
    Left = 5685
    Top = 30
    Width = 300
    Height = 270
    TabIndex = 104
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 25
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 30
    Width = 4000
    Height = 285
    TabIndex = 16
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
  Begin Label LblName
    Caption = "Company"
    Index = 27
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 795
    Height = 225
    TabIndex = 50
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
End
Begin Frame FrCCDet
  BackColor = &HFFC0C0&
  Left = 5595
  Top = 2325
  Width = 6000
  Height = 960
  Visible = 0   'False
  TabIndex = 43
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  BorderStyle = 0 'None
  Begin TextBox Txt
    Index = 37
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4155
    Top = 660
    Width = 1500
    Height = 285
    TabIndex = 14
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
  Begin TextBox Txt
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 660
    Width = 1500
    Height = 285
    TabIndex = 13
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
  Begin TextBox Txt
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 345
    Width = 4000
    Height = 285
    TabIndex = 12
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
  Begin TextBox Txt
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 30
    Width = 4000
    Height = 285
    TabIndex = 11
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
  Begin Label LblName
    Caption = "Batch No."
    Index = 0
    ForeColor = &HC00000&
    Left = 3240
    Top = 690
    Width = 810
    Height = 225
    TabIndex = 100
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
  Begin Label LblName
    Caption = "Exp.Dt."
    Index = 20
    ForeColor = &HC00000&
    Left = 15
    Top = 675
    Width = 585
    Height = 225
    TabIndex = 46
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
  Begin Label LblName
    Caption = "Holder"
    Index = 19
    ForeColor = &HC00000&
    Left = 15
    Top = 345
    Width = 555
    Height = 225
    TabIndex = 45
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
  Begin Label LblName
    Caption = "C.C. No."
    Index = 18
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 645
    Height = 225
    TabIndex = 44
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
End
Begin Frame FrEmp
  BackColor = &HFFC0C0&
  Left = 75
  Top = 7575
  Width = 6000
  Height = 330
  Visible = 0   'False
  TabIndex = 41
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  BorderStyle = 0 'None
  Begin PictureBox Picture3
    Picture = "fdPaymentCharge.frx":E2C
    Left = 5685
    Top = 15
    Width = 300
    Height = 270
    TabIndex = 103
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 23
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 30
    Width = 4000
    Height = 285
    TabIndex = 15
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
  Begin Label LblName
    Caption = "Staff"
    Index = 22
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 405
    Height = 225
    TabIndex = 42
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
End
Begin Frame FrSendRoom
  BackColor = &HFFC0C0&
  Left = 75
  Top = 6390
  Width = 6000
  Height = 315
  Visible = 0   'False
  TabIndex = 39
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  BorderStyle = 0 'None
  Begin TextBox Txt
    Index = 24
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1650
    Top = 15
    Width = 2000
    Height = 285
    TabIndex = 10
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
  Begin Label LblName
    Caption = "Room No.#"
    Index = 26
    ForeColor = &HC00000&
    Left = 0
    Top = 30
    Width = 915
    Height = 225
    TabIndex = 40
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
End
Begin Frame FrChqDet
  BackColor = &HFFC0C0&
  Left = 75
  Top = 6690
  Width = 6000
  Height = 585
  Visible = 0   'False
  TabIndex = 36
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  BorderStyle = 0 'None
  Begin TextBox Txt
    Index = 22
    BackColor = &HFFFFFF&
    Left = 1650
    Top = 315
    Width = 2000
    Height = 255
    TabIndex = 9
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
  Begin TextBox Txt
    Index = 21
    BackColor = &HFFFFFF&
    Left = 1650
    Top = 30
    Width = 2000
    Height = 255
    TabIndex = 8
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
  Begin Label LblName
    Caption = "Cheque Dt."
    Index = 16
    ForeColor = &HC00000&
    Left = 15
    Top = 330
    Width = 915
    Height = 225
    TabIndex = 38
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
  Begin Label LblName
    Caption = "Cheque No."
    Index = 15
    ForeColor = &HC00000&
    Left = 15
    Top = 30
    Width = 960
    Height = 225
    TabIndex = 37
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
End
Begin CommandButton frmcmd
  Caption = "&Display Folio"
  Index = 0
  BackColor = &HFFC0C0&
  Left = 13455
  Top = 6510
  Width = 1575
  Height = 360
  Visible = 0   'False
  TabIndex = 35
  BeginProperty Font
    Name = "Tahoma"
    Size = 8.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  ToolTipText = "Display Folio"
  MaskColor = &HFFC0C0&
  Style = 1
End
Begin TextBox Txt
  Index = 17
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7245
  Top = 1095
  Width = 1500
  Height = 285
  Enabled = 0   'False
  TabIndex = 1
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
Begin TextBox Txt
  Index = 16
  BackColor = &HFFFFFF&
  Left = 12915
  Top = 330
  Width = 990
  Height = 255
  Visible = 0   'False
  TabIndex = 25
  BorderStyle = 0 'None
  MaxLength = 21
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
  Index = 6
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7245
  Top = 1725
  Width = 1500
  Height = 285
  TabIndex = 4
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
  MaxLength = 11
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
  Index = 5
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7245
  Top = 2040
  Width = 4000
  Height = 285
  TabIndex = 7
  BorderStyle = 0 'None
  MaxLength = 1000
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
  Index = 4
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 7245
  Top = 1410
  Width = 4000
  Height = 285
  TabIndex = 3
  BorderStyle = 0 'None
  MaxLength = 50
  Locked = -1  'True
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
Begin MaskEdBox txtVTime
  Left = 8790
  Top = 1095
  Width = 645
  Height = 285
  TabIndex = 2
End
Begin MSHFlexGrid FGrid
  Left = 6090
  Top = 3720
  Width = 6015
  Height = 2430
  TabIndex = 92
End
Begin MSFlexGrid FGPoint
  Left = 16485
  Top = 7275
  Width = 1980
  Height = 1440
  Visible = 0   'False
  TabIndex = 94
End
Begin BtnEnh CmdExit
  Left = 8850
  Top = 7650
  Width = 1350
  Height = 1050
  TabIndex = 123
End
Begin BtnEnh BtnSave
  Left = 6930
  Top = 7680
  Width = 1350
  Height = 1050
  TabIndex = 124
End
Begin Label Lbl
  Caption = "Tax Inc."
  Index = 18
  ForeColor = &HC00000&
  Left = 8790
  Top = 1740
  Width = 660
  Height = 225
  TabIndex = 126
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
Begin Line Line1
  BorderColor = &HC00000&
  X1 = 6945
  Y1 = 7050
  X2 = 10200
  Y2 = 7050
  BorderWidth = 2
End
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 0
  Width = 180
  Height = 540
  TabIndex = 122
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
Begin Label Label1
  Caption = "Payment/Charges Details"
  Index = 0
  BackColor = &HC00000&
  ForeColor = &HFFFFFF&
  Left = 5460
  Top = 600
  Width = 5880
  Height = 375
  TabIndex = 19
  Alignment = 2 'Center
End
Begin Label Lbl
  Caption = "Bill No"
  Index = 17
  ForeColor = &HC00000&
  Left = 2580
  Top = 2340
  Width = 630
  Height = 240
  Visible = 0   'False
  TabIndex = 99
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Label1
  Caption = "Payment/Charges Details"
  Index = 3
  BackColor = &HC00000&
  ForeColor = &HFFFFFF&
  Left = 5535
  Top = 3330
  Width = 5940
  Height = 375
  TabIndex = 93
  Alignment = 2 'Center
End
Begin Line Line3
  X1 = 5520
  Y1 = 3690
  X2 = 11040
  Y2 = 3690
End
Begin Label Lbl
  Caption = "Tip"
  Index = 15
  ForeColor = &HC00000&
  Left = 10035
  Top = 1725
  Width = 255
  Height = 225
  TabIndex = 91
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
  Caption = "Guest Details"
  Index = 2
  BackColor = &HC00000&
  ForeColor = &HFFFFFF&
  Left = 90
  Top = 2985
  Width = 5145
  Height = 375
  TabIndex = 89
  Alignment = 2 'Center
End
Begin Label Lbl
  Caption = "Adult/Child"
  Index = 16
  ForeColor = &HC00000&
  Left = 135
  Top = 2340
  Width = 1050
  Height = 240
  TabIndex = 88
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Rate Code"
  Index = 14
  ForeColor = &HC00000&
  Left = 13110
  Top = 8115
  Width = 990
  Height = 240
  Visible = 0   'False
  TabIndex = 87
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Room Rate"
  Index = 12
  ForeColor = &HC00000&
  Left = 135
  Top = 2655
  Width = 1050
  Height = 240
  TabIndex = 86
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Room Type"
  Index = 34
  ForeColor = &HC00000&
  Left = 135
  Top = 2025
  Width = 1080
  Height = 240
  TabIndex = 85
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Check In Date"
  Index = 26
  ForeColor = &HC00000&
  Left = 135
  Top = 1365
  Width = 1320
  Height = 240
  TabIndex = 84
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblCheckInDay
  Caption = "."
  BackColor = &HFFC0C0&
  ForeColor = &H40C0&
  Left = 4065
  Top = 1365
  Width = 1140
  Height = 240
  TabIndex = 83
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Guest Name"
  Index = 11
  ForeColor = &HC00000&
  Left = 135
  Top = 3420
  Width = 1155
  Height = 240
  TabIndex = 82
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Company"
  Index = 10
  ForeColor = &HC00000&
  Left = 165
  Top = 4680
  Width = 900
  Height = 240
  TabIndex = 81
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Status"
  Index = 9
  ForeColor = &HC00000&
  Left = 180
  Top = 5940
  Width = 585
  Height = 240
  TabIndex = 80
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Guest Folio No"
  Index = 6
  ForeColor = &HC00000&
  Left = 135
  Top = 1035
  Width = 1395
  Height = 240
  TabIndex = 79
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Depature Date"
  Index = 5
  ForeColor = &HC00000&
  Left = 135
  Top = 1695
  Width = 1365
  Height = 240
  TabIndex = 78
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Comment1"
  Index = 3
  ForeColor = &HC00000&
  Left = 165
  Top = 4995
  Width = 1020
  Height = 240
  TabIndex = 77
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Comment2"
  Index = 1
  ForeColor = &HC00000&
  Left = 165
  Top = 5310
  Width = 1020
  Height = 240
  TabIndex = 76
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Comment3"
  Index = 13
  ForeColor = &HC00000&
  Left = 180
  Top = 5625
  Width = 1020
  Height = 240
  TabIndex = 75
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label Lbl
  Caption = "Address"
  Index = 2
  ForeColor = &HC00000&
  Left = 165
  Top = 3735
  Width = 750
  Height = 240
  TabIndex = 74
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LblNature
  Caption = "."
  BackColor = &HFFC0C0&
  ForeColor = &H4080&
  Left = 11325
  Top = 1425
  Width = 1080
  Height = 240
  TabIndex = 52
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
End
Begin Label LTxt
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 8520
  Top = 6375
  Width = 1605
  Height = 285
  TabIndex = 33
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label LTxt
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 8520
  Top = 7125
  Width = 1605
  Height = 285
  TabIndex = 32
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label LTxt
  Index = 1
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 8520
  Top = 6690
  Width = 1605
  Height = 285
  TabIndex = 31
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label LblName
  Caption = "Total Amount"
  Index = 23
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 6990
  Top = 6390
  Width = 1500
  Height = 285
  TabIndex = 30
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Shape Shape5
  BorderColor = &HC00000&
  Left = 6930
  Top = 6300
  Width = 3270
  Height = 1230
  BorderWidth = 2
  FillColor = &HC0FFC0&
End
Begin Label LblName
  Caption = "Paid Amount"
  Index = 24
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 6990
  Top = 6705
  Width = 1500
  Height = 285
  TabIndex = 29
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label LblName
  Caption = "Balance"
  Index = 17
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 6990
  Top = 7125
  Width = 1500
  Height = 285
  TabIndex = 28
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
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
Begin Label Lbl
  Caption = "Vr. Date"
  Index = 8
  ForeColor = &HC00000&
  Left = 5600
  Top = 1125
  Width = 675
  Height = 225
  TabIndex = 27
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
Begin Label LblVPrefix
  Caption = "."
  ForeColor = &H4080&
  Left = 12405
  Top = 615
  Width = 1530
  Height = 240
  Visible = 0   'False
  TabIndex = 26
  AutoSize = -1  'True
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
Begin Label Lbl
  Caption = "Amount"
  Index = 7
  ForeColor = &HC00000&
  Left = 5600
  Top = 1740
  Width = 660
  Height = 225
  TabIndex = 22
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
Begin Label Lbl
  Caption = "Reference"
  Index = 4
  ForeColor = &HC00000&
  Left = 5600
  Top = 2055
  Width = 885
  Height = 225
  TabIndex = 21
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
Begin Label Lbl
  Caption = "Charge/Payment"
  Index = 0
  ForeColor = &HC00000&
  Left = 5600
  Top = 1425
  Width = 1410
  Height = 225
  TabIndex = 20
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
  Caption = "Room Details for Room No."
  Index = 1
  BackColor = &HC00000&
  ForeColor = &HFFFFFF&
  Left = 90
  Top = 585
  Width = 5100
  Height = 375
  TabIndex = 18
  Alignment = 2 'Center
End
End

Attribute VB_Name = "fdPaymentCharge"

Private global_192 As Integer
Private global_152 As Long

Private Sub Timer1_Timer() '1051634
  'Data Table: 544E74
  Dim var_8C As TextBox
  loc_10513CA: Set var_88 = Me.Txt
  loc_10513D0: Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_10513ED: If (var_8C.BackColor = &HD3B3FF) Then
  loc_10513FE:   Set var_88 = Me.Txt
  loc_1051404:   Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1051423:   If (var_8C.Text <> vbNullString) Then
  loc_1051436:     Set var_88 = Me.Txt
  loc_105143C:     Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1051444:     var_8C.BackColor = &HFFFFFF
  loc_1051450:   End If
  loc_105145E:   Set var_88 = Me.Txt
  loc_1051464:   Call 0.Method_Timer1_Timer0 (CInt(&H21), var_8C)
  loc_1051483:   If (var_8C.Text <> vbNullString) Then
  loc_1051496:     Set var_88 = Me.Txt
  loc_105149C:     Call 0.Method_Timer1_Timer0 (CInt(&H21), var_8C)
  loc_10514A4:     var_8C.BackColor = &HFFFFFF
  loc_10514B0:   End If
  loc_10514BE:   Set var_88 = Me.Txt
  loc_10514C4:   Call 0.Method_Timer1_Timer0 (CInt(&H22), var_8C)
  loc_10514E3:   If (var_8C.Text <> vbNullString) Then
  loc_10514F6:     Set var_88 = Me.Txt
  loc_10514FC:     Call 0.Method_Timer1_Timer0 (CInt(&H22), var_8C)
  loc_1051504:     var_8C.BackColor = &HFFFFFF
  loc_1051510:   End If
  loc_1051513: Else
  loc_1051521:   Set var_88 = Me.Txt
  loc_1051527:   Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1051546:   If (var_8C.Text <> vbNullString) Then
  loc_1051559:     Set var_88 = Me.Txt
  loc_105155F:     Call 0.Method_Timer1_Timer0 (CInt(&H20), var_8C)
  loc_1051567:     var_8C.BackColor = &HD3B3FF
  loc_1051573:   End If
  loc_1051581:   Set var_88 = Me.Txt
  loc_1051587:   Call 0.Method_Timer1_Timer0 (CInt(&H21), var_8C)
  loc_10515A6:   If (var_8C.Text <> vbNullString) Then
  loc_10515B9:     Set var_88 = Me.Txt
  loc_10515BF:     Call 0.Method_Timer1_Timer0 (CInt(&H21), var_8C)
  loc_10515C7:     var_8C.BackColor = &HD3B3FF
  loc_10515D3:   End If
  loc_10515E1:   Set var_88 = Me.Txt
  loc_10515E7:   Call 0.Method_Timer1_Timer0 (CInt(&H22), var_8C)
  loc_1051606:   If (var_8C.Text <> vbNullString) Then
  loc_1051619:     Set var_88 = Me.Txt
  loc_105161F:     Call 0.Method_Timer1_Timer0 (CInt(&H22), var_8C)
  loc_1051627:     var_8C.BackColor = &HD3B3FF
  loc_1051633:   End If
  loc_1051633: End If
  loc_1051633: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_9 'F5B748
  'Data Table: 544E74
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5B631: Set var_A8 = Me.DGMember
  loc_F5B637: var_A8.Visible = False
  loc_F5B659: If (Me.var_A8.RecordCount > 0) Then
  loc_F5B69B:   Set var_B4 = Me.Txt
  loc_F5B6A1:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H27), var_B8)
  loc_F5B6A9:   var_B8.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_F5B6DF:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_F5B6FE:   Set var_B4 = Me.Txt
  loc_F5B704:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H27), var_B8)
  loc_F5B70C:   var_B8.Text = CStr(var_B0.Value)
  loc_F5B722: End If
  loc_F5B72D: Set var_A8 = Me.Txt
  loc_F5B733: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H27))
  loc_F5B73B: var_B0.SetFocus
  loc_F5B747: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1BF00
  'Data Table: 544E74
  Dim var_301 As Double
  loc_E1BEF5: Me.Global.Unload Me
  loc_E1BEFD: Exit Sub
  loc_E1BEFE: var_301 = 
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F39FC4
  'Data Table: 544E74
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F39EBB: Me.DGRoomNo.Visible = False
  loc_F39EDA: If (Me.RecordCount > 0) Then
  loc_F39F19:   Set var_B4 = Me.Txt
  loc_F39F1F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F39F27:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F39F5A:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F39F79:   Set var_B4 = Me.Txt
  loc_F39F7F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F39F87:   var_B8.Text = CStr(var_B0.Value)
  loc_F39F9D: End If
  loc_F39FA8: Set var_A8 = Me.Txt
  loc_F39FAE: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F39FB6: var_B0.SetFocus
  loc_F39FC2: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9A6D0
  'Data Table: 544E74
  Dim var_A8 As Variant
  loc_E9A654: Set var_88 = Me.DGRoomNo
  loc_E9A67E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9A686: Set var_BC = Me.DGRoomNo
  loc_E9A6C0: Proc_6_138_106D6F8(Me.DGRoomNo, global_96, 0, Me.FGPoint)
  loc_E9A6CE: Exit Sub
End Sub

Public Sub txtVTime_UnknownEvent_8(Index As Integer) 'EC6C74
  'Data Table: 544E74
  Dim Index As Integer
  loc_EC6C52: If ((CDbl(Val(CStr(Left(CVar(Me.txtVTime), 2)))) > CDbl(&H17)) Or (CDbl(Val(CStr(Right(CVar(Me.txtVTime), 2)))) > CDbl(&H3B))) Then
  loc_EC6C57:   Index = &HFF
  loc_EC6C5A:   Exit Sub
  loc_EC6C5B: End If
  loc_EC6C69: Proc_303_0_FB9B68("	", 0)
  loc_EC6C71: Exit Sub
End Sub

Public Sub txtVTime_UnknownEvent_B(Index As Integer) 'E0B0B8
  'Data Table: 544E74
  loc_E0B0AA: If (Index = &HD) Then
  loc_E0B0B2:   Call txtVTime_UnknownEvent_8(&HFF)
  loc_E0B0B7: End If
  loc_E0B0B7: Exit Sub
End Sub

Private Sub DGChrgPayment_UnknownEvent_9 'F8536C
  'Data Table: 544E74
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F85227: Me.DGChrgPayment.Visible = False
  loc_F85246: If (Me.RecordCount > 0) Then
  loc_F85285:   Set var_B4 = Me.Txt
  loc_F8528B:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(4), var_B8)
  loc_F85293:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F852C6:   var_B0 = Me.Fields.Item("Name")
  loc_F852E5:   Set var_B4 = Me.Txt
  loc_F852EB:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(4), var_B8)
  loc_F852F3:   var_B8.Text = CStr(var_B0.Value)
  loc_F85309: End If
  loc_F85309: Call Proc_61_47_F6E39C()
  loc_F8532A: If (CBool(Me.FGPoint.Visible) = 0) Then
  loc_F8533C:   Me.FGPoint.Visible = False
  loc_F85344: End If
  loc_F8534F: Set var_A8 = Me.Txt
  loc_F85355: Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(4))
  loc_F8535D: var_B0.SetFocus
  loc_F85369: Exit Sub
  loc_F8536A: var_B0 = 
End Sub

Private Sub DGChrgPayment_UnknownEvent_1F 'E9C590
  'Data Table: 544E74
  Dim var_A8 As Variant
  loc_E9C514: Set var_88 = Me.DGChrgPayment
  loc_E9C53E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9C546: Set var_BC = Me.DGChrgPayment
  loc_E9C580: Proc_6_138_106D6F8(Me.DGChrgPayment, global_100, 0, Me.FGPoint)
  loc_E9C58E: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EFAF58
  'Data Table: 544E74
  loc_EFAE94: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_EFAE97:   Call DGCompany_UnknownEvent_9()
  loc_EFAE9C: End If
  loc_EFAEB8: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_EFAEBB:   Call DGRoom_UnknownEvent_9()
  loc_EFAEC0: End If
  loc_EFAEDC: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_EFAEDF:   Call DGEmp_UnknownEvent_9()
  loc_EFAEE4: End If
  loc_EFAF00: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_EFAF03:   Call DGChrgPayment_UnknownEvent_9()
  loc_EFAF08: End If
  loc_EFAF24: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EFAF27:   Call DGRoomNo_UnknownEvent_9()
  loc_EFAF2C: End If
  loc_EFAF48: If (CBool(Me.DGCCurreny.Visible) = &HFF) Then
  loc_EFAF4B:   Call DGCCurreny_UnknownEvent_9()
  loc_EFAF50: End If
  loc_EFAF50: Call Proc_61_47_F6E39C()
  loc_EFAF55: Exit Sub
End Sub

Private Sub DGCCurreny_UnknownEvent_9 'FD06AC
  'Data Table: 544E74
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As Variant
  Dim var_B4 As Fields15
  Dim var_104 As Label
  loc_FD050F: Me.DGCCurreny.Visible = False
  loc_FD052E: If (Me.RecordCount > 0) Then
  loc_FD056D:   Set var_B4 = Me.Txt
  loc_FD0573:   Call 0.Method_DGCCurreny_UnknownEvent_90 (CInt(&H28), var_B8)
  loc_FD057B:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD05AE:   var_B0 = Me.Fields.Item("Name")
  loc_FD05CD:   Set var_B4 = Me.Txt
  loc_FD05D3:   Call 0.Method_DGCCurreny_UnknownEvent_90 (CInt(&H28), var_B8)
  loc_FD05DB:   var_B8.Text = CStr(var_B0.Value)
  loc_FD05FD:   Set var_A8 = Me.LTxt
  loc_FD0603:   Call 0.Method_DGCCurreny_UnknownEvent_90 (3, var_B0)
  loc_FD0677:   Set var_100 = Me.LTxt
  loc_FD067D:   Call 0.Method_DGCCurreny_UnknownEvent_90 (5, var_104)
  loc_FD0685:   var_104.Caption = CStr(Round((CVar(Val(var_B0.Caption)) / Me.Fields.Item("Rate").Value), 2))
  loc_FD06A9: End If
  loc_FD06A9: Exit Sub
  loc_FD06AA: Exit Sub
End Sub

Private Sub DGCCurreny_UnknownEvent_1F 'E9C650
  'Data Table: 544E74
  Dim var_A8 As Variant
  loc_E9C5D4: Set var_88 = Me.DGCCurreny
  loc_E9C5FE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9C606: Set var_BC = Me.DGCCurreny
  loc_E9C640: Proc_6_138_106D6F8(Me.DGCCurreny, global_128, 0, Me.FGPoint)
  loc_E9C64E: Exit Sub
End Sub

Private Sub btnsave_UnknownEvent_9 'DFE02C
  'Data Table: 544E74
  loc_DFE024: Call TopCtrl1_UnknownEvent_16()
  loc_DFE029: Exit Sub
End Sub

Private Sub Command1_Click() 'E58C30
  'Data Table: 544E74
  Dim var_88 As Frame
  Dim var_8C As TextBox
  loc_E58C00: Me.exFrame.Visible = False
  loc_E58C13: Set var_88 = Me.Txt
  loc_E58C19: Call 0.Method_Command1_Click0 (CInt(4))
  loc_E58C21: var_8C.SetFocus
  loc_E58C2D: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F5AC08
  'Data Table: 544E74
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5AAF1: Set var_A8 = Me.DGCompany
  loc_F5AAF7: var_A8.Visible = False
  loc_F5AB19: If (Me.var_A8.RecordCount > 0) Then
  loc_F5AB5B:   Set var_B4 = Me.Txt
  loc_F5AB61:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H19), var_B8)
  loc_F5AB69:   var_B8.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_F5AB9F:   var_B0 = Me.Recordset15.Fields.Item("RoomNo")
  loc_F5ABBE:   Set var_B4 = Me.Txt
  loc_F5ABC4:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H19), var_B8)
  loc_F5ABCC:   var_B8.Text = CStr(var_B0.Value)
  loc_F5ABE2: End If
  loc_F5ABED: Set var_A8 = Me.Txt
  loc_F5ABF3: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H19))
  loc_F5ABFB: var_B0.SetFocus
  loc_F5AC07: Exit Sub
End Sub

Private Sub Form_Load() '142A5D8
  'Data Table: 544E74
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_B8 As String
  Dim var_BC As String
  Dim var_88 As Recordset15
  Dim var_CC As Variant
  Dim unk_544EA0 As Connection15
  Dim var_B4 As TextBox
  Dim var_D4 As Variant
  Dim var_D8 As Variant
  Dim var_E0 As DataGrid
  Dim Me As Recordset15
  loc_1429B14: On Error Goto loc_142A5D0
  loc_1429B1F: Call 0.Method_arg_7C (CDbl(1450))
  loc_1429B2C: Call 0.Method_arg_74 (CDbl(1625))
  loc_1429B39: Call 0.Method_MeC (CDbl(9200))
  loc_1429B46: Call 0.Method_Me4 (CDbl(17000))
  loc_1429B52: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1429B6A: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1429B80: Me.FrSendRoom.BackColor = CLng(MemVar_1F921B0)
  loc_1429B96: Me.FrTxnNo.BackColor = CLng(MemVar_1F921B0)
  loc_1429BAC: Me.FrChqDet.BackColor = CLng(MemVar_1F921B0)
  loc_1429BC2: Me.FrCCDet.BackColor = CLng(MemVar_1F921B0)
  loc_1429BD8: Me.FrComp.BackColor = CLng(MemVar_1F921B0)
  loc_1429BEE: Me.FrEmp.BackColor = CLng(MemVar_1F921B0)
  loc_1429C04: Me.FrMember.BackColor = CLng(MemVar_1F921B0)
  loc_1429C11: global_192 = 0
  loc_1429C20: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_1429C31: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_1429C42: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_1429C53: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_1429C64: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_1429C75: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_1429C86: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_1429C97: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_1429CA8: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_1429CB9: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_1429CD3: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_1429CE1: Set var_B0 = MemVar_1F92044
  loc_1429CF0: Call 0.Method_Form_Load8 (var_B0)
  loc_1429D06: Me.Recordset20.Clone
  loc_1429D20: Call 0.Method_arg_50 (var_B0, -1)
  loc_1429D50: Me.Connection15.Execute "Select * from Enviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_CC, -1
  loc_1429D7A: var_B0 = var_B0.Fields
  loc_1429D82: var_B4 = var_B0.Item("CreditCardInfoMandatory")
  loc_1429D8A: var_CC = CVar(var_B4) 'Address
  loc_1429DA4: If (Proc_6_38_E68A98(var_CC, var_B0) = "Y") Then
  loc_1429DAD:   global_88 = "Y"
  loc_1429DB1: End If
  loc_1429DCC: var_BC = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and  (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_1429DD5: unk_544EA0.Execute var_BC, var_CC, -1
  loc_1429DE6: Set global_116 = var_B0
  loc_1429E07: CVarUnk
  loc_1429E0C: VerifyVarObj
  loc_1429E12: Set var_B0 = Me.DGCompany
  loc_1429E18: LateIdStAd
  loc_1429E3A: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0, Me.Txt)
  loc_1429E42: global_116 = var_B4.Left
  loc_1429E59: Me.DGCompany.Left = CVar(var_D0)
  loc_1429E75: Set var_D4 = Me.Txt
  loc_1429E7B: Call 0.Method_Form_Load0 (CInt(&H19), var_D8, var_DC)
  loc_1429E83: var_B0 = var_D8.Height
  loc_1429E96: Set var_B0 = Me.Txt
  loc_1429E9C: Call 0.Method_Form_Load0 (CInt(&H19), var_B4, var_D0)
  loc_1429EA4: var_B0 = var_B4.Top
  loc_1429EB4: var_9C = CVar(((var_D0 + var_DC) + CDbl(&H1E))) 'Single
  loc_1429EC3: Me.DGCompany.Top = CVar(var_D0)
  loc_1429EE3: Set var_B0 = Me.Txt
  loc_1429EE9: Call 0.Method_Form_Load0 (CInt(4), var_B4)
  loc_1429F08: Me.DGChrgPayment.Left = CVar(var_B4.Left)
  loc_1429F24: Set var_D4 = Me.Txt
  loc_1429F2A: Call 0.Method_Form_Load0 (CInt(4), var_D8)
  loc_1429F32: var_DC = var_D8.Height
  loc_1429F4B: Call 0.Method_Form_Load0 (CInt(4), var_B4)
  loc_1429F53: var_D0 = var_B4.Top
  loc_1429F5F: var_9C = CVar((var_D0 + var_DC)) 'Single
  loc_1429F6E: Me.DGChrgPayment.Top = CVar(var_B4.Left)
  loc_1429FA4: unk_544EA0.Execute "SELECT Code,Name FROM Employee WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "') ORDER BY Name", var_CC, -1
  loc_1429FB5: Set global_120 = Me.Txt
  loc_1429FD6: CVarUnk
  loc_1429FDB: VerifyVarObj
  loc_1429FE1: Set var_B0 = Me.DGEmp
  loc_1429FE7: LateIdStAd
  loc_142A009: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0, Me.Txt)
  loc_142A011: global_120 = var_B4.Left
  loc_142A028: Me.DGEmp.Left = CVar(var_D0)
  loc_142A044: Set var_D4 = Me.Txt
  loc_142A04A: Call 0.Method_Form_Load0 (CInt(&H17), var_D8, var_DC)
  loc_142A052: var_B0 = var_D8.Height
  loc_142A06B: Call 0.Method_Form_Load0 (CInt(&H17), var_B4)
  loc_142A073: var_D0 = var_B4.Top
  loc_142A083: var_9C = CVar(((var_D0 + var_DC) + CDbl(&H1E))) 'Single
  loc_142A092: Me.DGEmp.Top = CVar(var_D0)
  loc_142A0BF: var_BC = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_142A0D6: unk_544EA0.Execute var_BC & MemVar_1F92078 & "') Order By Name", var_CC, -1
  loc_142A0E7: Set global_124 = Me.Txt
  loc_142A10C: CVarUnk
  loc_142A111: VerifyVarObj
  loc_142A117: Set var_B0 = Me.DGMember
  loc_142A11D: LateIdStAd
  loc_142A14B: If (fdPaymentCharge.ParentForm = "Check Out") Then
  loc_142A158:   Set global_100 = New 
  loc_142A16A:   Me.DGMember.CursorLocation = 3
  loc_142A18D:   var_B8 = "SELECT DP.PayCode as Code, RevMast.name as Name, revmast.Type as Flag, revMast.PayType as Paytype, revMast.SaleRate as SaleRate, revMast.Cost as Cost,RevMast.TaxInc FROM DepartPay as DP LEFT OUTER JOIN RevMast ON DP.PayCode = RevMast.code where (DP.LOGSITE_CODE='" & MemVar_1F92078
  loc_142A1AC:   Me.Open CVar(var_B8 & "') AND restcode='" & MemVar_1F92078 & "Fom" & "' And Active<>'No' ORDER BY NAME "), CVar(MemVar_1F92044), 2
  loc_142A1C6:   CVarUnk
  loc_142A1CB:   VerifyVarObj
  loc_142A1D1:   Set var_B0 = Me.DGChrgPayment
  loc_142A1D7:   LateIdStAd
  loc_142A1E8: Else
  loc_142A1F2:   Set global_100 = New 
  loc_142A204:   Me.CursorLocation = 3
  loc_142A22E:   var_BC = "Select Code,Name,Type as Flag,PayType,SaleRate,Cost,TaxInc From RevMast where Code Not In ('" & MemVar_1F92078 & "ROFF') And (LOGSITE_CODE='"
  loc_142A23C:   var_CC = CVar(var_BC & MemVar_1F92078 & "') AND ((Fieldtype in ('C','P')  AND FLAGTYPE='FOM') OR (PAYTYPE Not In ('Hold','Company') AND PAYTYPE<>'' AND PAYTYPE IS NOT NULL)) And Active<>'No' ORDER BY NAME ") 'String
  loc_142A246:   Me.Open var_CC, CVar(MemVar_1F92044), 2
  loc_142A260:   CVarUnk
  loc_142A265:   VerifyVarObj
  loc_142A26B:   Set var_B0 = Me.DGChrgPayment
  loc_142A271:   LateIdStAd
  loc_142A27F: End If
  loc_142A288: CVarUnk
  loc_142A28D: VerifyVarObj
  loc_142A293: Set var_B0 = Me.DGCCurreny
  loc_142A299: LateIdStAd
  loc_142A2B3: Set var_B0 = Me.Txt
  loc_142A2B9: Call 0.Method_Form_Load0 (&H28, var_B4, var_D0, var_B0, global_128, var_B0, global_100)
  loc_142A2C1: 3 = var_B4.Left
  loc_142A2D8: Me.DGCCurreny.Left = CVar(var_D0)
  loc_142A2F2: Set var_D4 = Me.Txt
  loc_142A2F8: Call 0.Method_Form_Load0 (&H28, var_D8, var_DC, -1, var_B0)
  loc_142A300: global_100 = var_D8.Height
  loc_142A311: Set var_B0 = Me.Txt
  loc_142A317: Call 0.Method_Form_Load0 (&H28, var_B4, var_D0)
  loc_142A31F: 3 = var_B4.Top
  loc_142A32F: var_9C = CVar(((var_D0 + var_DC) + CDbl(&H1E))) 'Single
  loc_142A33E: Me.DGCCurreny.Top = CVar(var_D0)
  loc_142A35E: Set var_B0 = Me.Txt
  loc_142A364: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0)
  loc_142A36C: -1 = var_B4.Left
  loc_142A383: Me.DGRoomNo.Left = CVar(var_D0)
  loc_142A39F: Set var_D4 = Me.Txt
  loc_142A3A5: Call 0.Method_Form_Load0 (CInt(0), var_D8)
  loc_142A3C0: Set var_B0 = Me.Txt
  loc_142A3C6: Call 0.Method_Form_Load0 (CInt(0), var_B4)
  loc_142A3CE: var_D0 = var_B4.Top
  loc_142A3DE: var_9C = CVar(((var_D0 + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_142A3E7: Set var_E0 = Me.DGRoomNo
  loc_142A3ED: var_E0.Top = CVar(var_D0)
  loc_142A409: Set global_96 = New 
  loc_142A41B: Me.var_E0.CursorLocation = 3
  loc_142A43E: var_B8 = "SELECT RoomMast.Code AS SearchCode,RoomMast.Code AS RoomNo,RoomMast.Name AS Quot,RoomOcc.Docid, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name AS GuestName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName,RoomOcc.ChkOutDate, RoomOcc.ChkOutTime,GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, " & "GuestProf.GuestStatus, SubGroup.Name AS CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode AS CompanyCode, GuestFolio.FolioNo AS FolioNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat,GUESTSTAT.NAME AS STATUSNAME,RoomOcc.PlanCode FROM (((((RoomMast RIGHT JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) LEFT JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) LEFT JOIN RoomCat ON RoomOcc.RoomCat=RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS WHERE (RoomOcc.LOGSITE_CODE='"
  loc_142A456: Me.Open CVar(var_B8 & MemVar_1F92078 & "') AND CHKOUTDATE IS NULL AND ROOMMAST.TYPE='RO' ORDER BY RoomMast.Code"), CVar(MemVar_1F92044), 2
  loc_142A46E: CVarUnk
  loc_142A473: VerifyVarObj
  loc_142A479: Set var_B0 = Me.DGRoomNo
  loc_142A47F: LateIdStAd
  loc_142A4A9: Me.DGRoomNo.CursorLocation = 3
  loc_142A4D3: var_CC = CVar("SELECT RoomOcc.DocId as Code,RoomOcc.RoomNo,RoomOcc.FolioNo From RoomOcc WHERE (RoomOcc.LOGSITE_CODE='" & MemVar_1F92078 & "') AND CHKOUTDATE IS NULL Order by RoomOcc.RoomNo") 'String
  loc_142A4DD: Me.Open var_CC, CVar(MemVar_1F92044), 2
  loc_142A4F1: CVarUnk
  loc_142A4F6: VerifyVarObj
  loc_142A4FC: Set var_B0 = Me.DGRoom
  loc_142A502: LateIdStAd
  loc_142A524: Call 0.Method_Form_Load0 (CInt(0), var_B4, var_D0, Me.Txt, New, 3)
  loc_142A52C: -1 = var_B4.Left
  loc_142A543: Me.DGRoom.Left = CVar(var_D0)
  loc_142A577: Call 0.Method_Form_Load0 (CInt(&H18), var_B4, var_D0, Me.Txt)
  loc_142A57F: global_96 = var_B4.Height
  loc_142A58F: var_9C = CVar(((var_D0 + Me.FrSendRoom.Top) + CDbl(&H1E))) 'Single
  loc_142A59E: Me.DGRoom.Top = CVar(var_D0)
  loc_142A5AE: Call Proc_61_51_121DED4(3, -1)
  loc_142A5B9: Set var_B0 = Me.FrReference
  loc_142A5BF: var_B0.Visible = False
  loc_142A5CC: Set var_88 = Nothing
  loc_142A5CF: Exit Sub
  loc_142A5D0: ' Referenced from: 1429B14
  loc_142A5D0: Proc_6_60_E62BC4(var_B0)
  loc_142A5D5: Exit Sub
End Sub

Private Sub Form_Resize() 'E72294
  'Data Table: 544E74
  loc_E7223E: Call 0.Method_arg_50 (var_88)
  loc_E72250: Me.LblFormCaption.Caption = var_88
  loc_E72269: Me.LblFormCaption.Left = CDbl(0)
  loc_E72277: Call 0.Method_arg_100 (var_90)
  loc_E72289: Me.LblFormCaption.Width = var_90
  loc_E72291: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E42F28
  'Data Table: 544E74
  Dim var_3A8 As Variant
  loc_E42F03: Set global_96 = Nothing
  loc_E42F15: Set global_100 = Nothing
  loc_E42F24: Exit Sub
  loc_E42F26: var_3A8 = CVar(CInt(0)) 'Integer
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'EA57DC
  'Data Table: 544E74
  Dim var_94 As Variant
  Dim var_B4 As Long
  Dim Cancel As Integer
  loc_EA5760: var_94 = 1
  loc_EA5769: var_B4 = 1
  loc_EA5798: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_EA57CA:   If (MsgBox("Exit without Saving Transaction?", &H121, var_EC, var_FC, var_10C) = 2) Then
  loc_EA57CF:     Cancel = 1
  loc_EA57D2:     Exit Sub
  loc_EA57D6:   Else
  loc_EA57D8:     Cancel = 0
  loc_EA57DB:   End If
  loc_EA57DB: End If
  loc_EA57DB: Exit Sub
End Sub

Private Sub Form_Activate() 'EC2830
  'Data Table: 544E74
  Dim var_98 As TextBox
  loc_EC2794: On Error Goto loc_EC282A
  loc_EC27AB: If (fdPaymentCharge.OpenMode = 1) Then
  loc_EC27BA:   Call Txt_Validate(CInt(0))
  loc_EC27CA:   Set var_94 = Me.Txt
  loc_EC27D0:   Call 0.Method_Form_Activate0 (CInt(4), var_98)
  loc_EC27D8:   var_98.SetFocus
  loc_EC27FA:   If (fdPaymentCharge.ParentForm = "Check Out") Then
  loc_EC2803:     global_164 = "S"
  loc_EC2807:   End If
  loc_EC2807: End If
  loc_EC280B: Set var_94 = Me.TopCtrl1
  loc_EC2811: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030000(0)
  loc_EC2826: If (CLng(CInt()) = &H2D) Then
  loc_EC2829: End If
  loc_EC2829: Exit Sub
  loc_EC282A: ' Referenced from: EC2794
  loc_EC282A: Proc_6_60_E62BC4()
  loc_EC282F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25BCC
  'Data Table: 544E74
  loc_E25BB1: If (global_52 = &HFF) Then
  loc_E25BC1:   Me.Global.Unload Me
  loc_E25BC9: End If
  loc_E25BC9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F5CC64
  'Data Table: 544E74
  Dim var_88 As Variant
  Dim var_8C As Variant
  Dim var_98 As Label
  loc_F5CB40: On Error Goto loc_F5CC5D
  loc_F5CB58: If ((CLng(KeyCode) = &H45) And (CLng(Shift) = 2)) Then
  loc_F5CB67:   Me.exFrame.Visible = True
  loc_F5CB7B:   Set var_88 = Me.LTxt
  loc_F5CB81:   Call 0.Method_Form_KeyDown0 (2, var_8C)
  loc_F5CB9A:   Set var_94 = Me.LTxt
  loc_F5CBA0:   Call 0.Method_Form_KeyDown0 (3, var_98)
  loc_F5CBA8:   var_98.Caption = var_8C.Caption
  loc_F5CBCA:   Set var_88 = Me.LTxt
  loc_F5CBD0:   Call 0.Method_Form_KeyDown0 (3, var_8C)
  loc_F5CBE9:   Call Proc_61_56_F00D24(Val(var_8C.Caption))
  loc_F5CC03:   Set var_88 = Me.Txt
  loc_F5CC09:   Call 0.Method_Form_KeyDown0 (CInt(&H28), var_8C)
  loc_F5CC11:   var_8C.SetFocus
  loc_F5CC1D: End If
  loc_F5CC27: If (CLng(KeyCode) = &H79) Then
  loc_F5CC37:   Me.Global.Unload Me
  loc_F5CC3F:   Exit Sub
  loc_F5CC40: End If
  loc_F5CC54: Proc_6_88_FE81B4(Me, KeyCode, Shift)
  loc_F5CC5C: Exit Sub
  loc_F5CC5D: ' Referenced from: F5CB40
  loc_F5CC5D: Proc_6_60_E62BC4(0)
  loc_F5CC62: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F35DC4
  'Data Table: 544E74
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F35CBB: Me.DGRoom.Visible = False
  loc_F35CDA: If (Me.RecordCount > 0) Then
  loc_F35D19:   Set var_B4 = Me.Txt
  loc_F35D1F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F35D27:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F35D5A:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F35D79:   Set var_B4 = Me.Txt
  loc_F35D7F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F35D87:   var_B8.Text = CStr(var_B0.Value)
  loc_F35D9D: End If
  loc_F35DA8: Set var_A8 = Me.Txt
  loc_F35DAE: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H18))
  loc_F35DB6: var_B0.SetFocus
  loc_F35DC2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E80378
  'Data Table: 544E74
  Dim var_8C As Label
  Dim var_98 As TextBox
  loc_E80318: Call Proc_61_50_13A52C8()
  loc_E80329: Call Txt_Validate(CInt(4))
  loc_E80347: Call Proc_61_49_129CEB0(Me.LblNature.Caption)
  loc_E8035D: Set var_8C = Me.Txt
  loc_E80363: Call 0.Method_FGrid_UnknownEvent_90 (CInt(6), var_98)
  loc_E8036B: var_98.SetFocus
  loc_E80377: Exit Sub
End Sub

Private Sub Txt_Change(Index As Integer) 'EEA29C
  'Data Table: 544E74
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_98 As TextBox
  loc_EEA1DF: var_86 = Index
  loc_EEA1EA: If (var_86 = CInt(5)) Then
  loc_EEA1FA:   Set var_8C = Me.Txt
  loc_EEA200:   Call 0.Method_Txt_Change0 (Index, var_90)
  loc_EEA21B:   Set var_94 = Me.Txt
  loc_EEA221:   Call 0.Method_Txt_Change0 (CInt(&H29), var_98)
  loc_EEA229:   var_98.Text = var_90.Text
  loc_EEA23F: Else
  loc_EEA247:   If (var_86 = CInt(&H29)) Then
  loc_EEA257:     Set var_8C = Me.Txt
  loc_EEA25D:     Call 0.Method_Txt_Change0 (Index, var_90)
  loc_EEA278:     Set var_94 = Me.Txt
  loc_EEA27E:     Call 0.Method_Txt_Change0 (CInt(5), var_98)
  loc_EEA286:     var_98.Text = var_90.Text
  loc_EEA299:   End If
  loc_EEA299: End If
  loc_EEA299: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1558090
  'Data Table: 544E74
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As Variant
  Dim var_C4 As Variant
  Dim var_90 As Variant
  Dim var_C8 As Variant
  Dim var_88 As Frame
  Dim var_104 As TextBox
  loc_155704E: Set var_88 = Me.Txt
  loc_1557054: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1557062: Proc_6_74_E226B0(var_8C)
  loc_155706E: Call Proc_61_47_F6E39C(var_8C)
  loc_1557076: var_92 = Index
  loc_1557081: If (var_92 = CInt(0)) Then
  loc_155709B:   If (Me.RecordCount > 0) Then
  loc_15570A9:     Set var_8C = Me.FGPoint
  loc_15570C1:     Proc_6_137_1193554(Me.DGRoomNo, global_96, Index)
  loc_15570CF:   End If
  loc_155711D:   Set var_88 = Me.Txt
  loc_1557123:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_155712B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1557151:   If (var_92 Or (Proc_6_38_E68A98(CVar(var_A0), var_8C) = vbNullString)) Then
  loc_1557154:     Exit Sub
  loc_1557155:   End If
  loc_1557162:   Set var_88 = Me.Txt
  loc_1557168:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1557170:   var_A0 = var_8C.Text
  loc_1557182:   var_C4 = "RoomNo"
  loc_15571BD:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_15571C6:     Me.MoveFirst
  loc_15571E9:     Set var_88 = Me.Txt
  loc_15571EF:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_15571F7:     0 = var_8C.Text
  loc_1557210:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_1557225:   End If
  loc_1557228: Else
  loc_1557230:   If (var_92 = CInt(4)) Then
  loc_155724A:     If (Me.RecordCount > 0) Then
  loc_1557258:       Set var_8C = Me.FGPoint
  loc_1557270:       Proc_6_137_1193554(Me.DGChrgPayment, global_100)
  loc_155727E:     End If
  loc_15572CC:     Set var_88 = Me.Txt
  loc_15572D2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_15572DA:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1557300:     If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_1557303:       Exit Sub
  loc_1557304:     End If
  loc_1557311:     Set var_88 = Me.Txt
  loc_1557317:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_155731F:     var_A0 = var_8C.Text
  loc_1557331:     var_C4 = "Name"
  loc_155736C:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_1557375:       Me.MoveFirst
  loc_1557398:       Set var_88 = Me.Txt
  loc_155739E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_15573A6:       0 = var_8C.Text
  loc_15573BF:       Me.Find 1 & var_A0 & "'", var_C4, 
  loc_15573D4:     End If
  loc_15573D7:   Else
  loc_15573DF:     If (var_92 = CInt(&H18)) Then
  loc_155740D:       var_C4 = CVar((Me.FrSendRoom.Top + Me.FrSendRoom.Height)) 'Single
  loc_1557416:       Set var_90 = Me.DGRoom
  loc_155741C:       var_90.Top = var_C4
  loc_1557438:       Set var_8C = Me.Txt
  loc_155743E:       Call 0.Method_Txt_GotFocus0 (CInt(&H18), var_90)
  loc_1557464:       var_C4 = CVar((Me.FrSendRoom.Left + var_90.Left)) 'Single
  loc_1557473:       Me.DGRoom.Left = var_C4
  loc_155749A:       If (Me.RecordCount > 0) Then
  loc_15574A8:         Set var_8C = Me.FGPoint
  loc_15574C0:         Proc_6_137_1193554(Me.DGRoom, global_112)
  loc_15574CE:       End If
  loc_155751C:       Set var_88 = Me.Txt
  loc_1557522:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_155752A:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1557550:       If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_1557560:         Set var_88 = Me.Txt
  loc_1557566:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_155756E:         var_8C.Tag = vbNullString
  loc_155757A:         Exit Sub
  loc_155757B:       End If
  loc_1557588:       Set var_88 = Me.Txt
  loc_155758E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1557596:       var_A0 = var_8C.Text
  loc_15575A8:       var_C4 = "RoomNo"
  loc_15575E3:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_15575EC:         Me.MoveFirst
  loc_155760F:         Set var_88 = Me.Txt
  loc_1557615:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_155761D:         0 = var_8C.Text
  loc_1557636:         Me.Find 1 & var_A0 & "'", var_C4, 
  loc_155764B:       End If
  loc_155764E:     Else
  loc_1557656:       If (var_92 = CInt(&H17)) Then
  loc_1557684:         var_C4 = CVar((Me.FrEmp.Top + Me.FrEmp.Height)) 'Single
  loc_155768D:         Set var_90 = Me.DGEmp
  loc_1557693:         var_90.Top = var_C4
  loc_15576AF:         Set var_8C = Me.Txt
  loc_15576B5:         Call 0.Method_Txt_GotFocus0 (CInt(&H17), var_90)
  loc_15576DB:         var_C4 = CVar((Me.FrEmp.Left + var_90.Left)) 'Single
  loc_15576E4:         Set var_C8 = Me.DGEmp
  loc_15576EA:         var_C8.Left = var_C4
  loc_1557714:         If (Me.var_C8.RecordCount > 0) Then
  loc_1557722:           Set var_8C = Me.FGPoint
  loc_155773E:           Proc_6_137_1193554(Me.DGEmp, global_120)
  loc_155774C:         End If
  loc_15577A3:         Set var_88 = Me.Txt
  loc_15577A9:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_15577B1:         ((global_120.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_15577D7:         If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_15577DA:           Exit Sub
  loc_15577DB:         End If
  loc_15577E8:         Set var_88 = Me.Txt
  loc_15577EE:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15577F6:         var_A0 = var_8C.Text
  loc_1557808:         var_C4 = "Name"
  loc_1557846:         If CBool(CVar(var_A0) <> Me.Recordset15.Fields.Item(var_C4).Value) Then
  loc_1557852:           Me.Recordset15.MoveFirst
  loc_1557875:           Set var_88 = Me.Txt
  loc_155787B:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1557883:           0 = var_8C.Text
  loc_155789F:           Me.Recordset15.Find 1 & var_A0 & "'", var_C4, 
  loc_15578B4:         End If
  loc_15578B7:       Else
  loc_15578BF:         If (var_92 = CInt(&H19)) Then
  loc_15578ED:           var_C4 = CVar((Me.FrComp.Top + Me.FrComp.Height)) 'Single
  loc_15578F6:           Set var_90 = Me.DGCompany
  loc_15578FC:           var_90.Top = var_C4
  loc_1557918:           Set var_8C = Me.Txt
  loc_155791E:           Call 0.Method_Txt_GotFocus0 (CInt(&H19), var_90)
  loc_1557944:           var_C4 = CVar((Me.FrComp.Left + var_90.Left)) 'Single
  loc_155794D:           Set var_C8 = Me.DGCompany
  loc_1557953:           var_C8.Left = var_C4
  loc_155797D:           If (Me.var_C8.RecordCount > 0) Then
  loc_155798B:             Set var_8C = Me.FGPoint
  loc_15579A7:             Proc_6_137_1193554(Me.DGCompany, global_116)
  loc_15579B5:           End If
  loc_1557A0C:           Set var_88 = Me.Txt
  loc_1557A12:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1557A1A:           ((global_116.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_1557A40:           If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_1557A43:             Exit Sub
  loc_1557A44:           End If
  loc_1557A51:           Set var_88 = Me.Txt
  loc_1557A57:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1557A5F:           var_A0 = var_8C.Text
  loc_1557A71:           var_C4 = "Name"
  loc_1557AAF:           If CBool(CVar(var_A0) <> Me.Recordset15.Fields.Item(var_C4).Value) Then
  loc_1557ABB:             Me.Recordset15.MoveFirst
  loc_1557ADE:             Set var_88 = Me.Txt
  loc_1557AE4:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1557AEC:             0 = var_8C.Text
  loc_1557B08:             Me.Recordset15.Find 1 & var_A0 & "'", var_C4, 
  loc_1557B1D:           End If
  loc_1557B20:         Else
  loc_1557B28:           If (var_92 = CInt(&H27)) Then
  loc_1557B56:             var_C4 = CVar((Me.FrMember.Top + Me.FrMember.Height)) 'Single
  loc_1557B5F:             Set var_90 = Me.DGMember
  loc_1557B65:             var_90.Top = var_C4
  loc_1557B81:             Set var_8C = Me.Txt
  loc_1557B87:             Call 0.Method_Txt_GotFocus0 (CInt(&H27), var_90)
  loc_1557BAD:             var_C4 = CVar((Me.FrMember.Left + var_90.Left)) 'Single
  loc_1557BB6:             Set var_C8 = Me.DGMember
  loc_1557BBC:             var_C8.Left = var_C4
  loc_1557BE6:             If (Me.var_C8.RecordCount > 0) Then
  loc_1557BF4:               Set var_8C = Me.FGPoint
  loc_1557C10:               Proc_6_137_1193554(Me.DGMember, global_124)
  loc_1557C1E:             End If
  loc_1557C75:             Set var_88 = Me.Txt
  loc_1557C7B:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1557C83:             ((global_124.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_1557CA9:             If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_1557CAC:               Exit Sub
  loc_1557CAD:             End If
  loc_1557CBA:             Set var_88 = Me.Txt
  loc_1557CC0:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1557CC8:             var_A0 = var_8C.Text
  loc_1557CDA:             var_C4 = "Name"
  loc_1557CEC:             var_90 = Me.Recordset15.Fields
  loc_1557D18:             If CBool(CVar(var_A0) <> var_90.Item(var_C4).Value) Then
  loc_1557D24:               Me.Recordset15.MoveFirst
  loc_1557D47:               Set var_88 = Me.Txt
  loc_1557D4D:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1557D55:               0 = var_8C.Text
  loc_1557D71:               Me.Recordset15.Find 1 & var_A0 & "'", var_C4, 
  loc_1557D86:             End If
  loc_1557D89:           Else
  loc_1557D91:             If (var_92 = CInt(&H28)) Then
  loc_1557DA2:               Set var_8C = Me.Txt
  loc_1557DA8:               Call 0.Method_Txt_GotFocus0 (CInt(&H28), var_90)
  loc_1557DC3:               Set var_C8 = Me.Txt
  loc_1557DC9:               Call 0.Method_Txt_GotFocus0 (CInt(&H28), var_104)
  loc_1557DF3:               var_C4 = CVar(((Me.exFrame.Top + var_90.Top) + var_104.Height)) 'Single
  loc_1557E02:               Me.DGCCurreny.Top = var_C4
  loc_1557E24:               Set var_8C = Me.Txt
  loc_1557E2A:               Call 0.Method_Txt_GotFocus0 (CInt(&H28), var_90)
  loc_1557E50:               var_C4 = CVar((Me.exFrame.Left + var_90.Left)) 'Single
  loc_1557E5F:               Me.DGCCurreny.Left = var_C4
  loc_1557E86:               If (Me.RecordCount > 0) Then
  loc_1557E94:                 Set var_8C = Me.FGPoint
  loc_1557EAC:                 Proc_6_137_1193554(Me.DGCCurreny, global_128)
  loc_1557EBA:               End If
  loc_1557F08:               Set var_88 = Me.Txt
  loc_1557F0E:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1557F16:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1557F3C:               If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_1557F3F:                 Exit Sub
  loc_1557F40:               End If
  loc_1557F4D:               Set var_88 = Me.Txt
  loc_1557F53:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1557F5B:               var_A0 = var_8C.Text
  loc_1557F6D:               var_C4 = "Name"
  loc_1557F84:               var_C8 = Me.Fields.Item(var_C4)
  loc_1557FA8:               If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_1557FB1:                 Me.MoveFirst
  loc_1557FD4:                 Set var_88 = Me.Txt
  loc_1557FDA:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1557FE2:                 0 = var_8C.Text
  loc_1557FFB:                 Me.Find 1 & var_A0 & "'", var_C4, 
  loc_1558010:               End If
  loc_1558010:             End If
  loc_1558010:           End If
  loc_1558010:         End If
  loc_1558010:       End If
  loc_1558010:     End If
  loc_1558010:   End If
  loc_1558010: End If
  loc_155801F: Set var_88 = Me.Txt
  loc_1558025: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_155802D: var_8C.SelStart = 0
  loc_1558046: Set var_88 = Me.Txt
  loc_155804C: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1558067: Set var_90 = Me.Txt
  loc_155806D: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_1558075: var_C8.SelLength = Len(var_8C.Text)
  loc_1558088: Call Proc_61_47_F6E39C()
  loc_155808D: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '15404A4
  'Data Table: 544E74
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  loc_153F4CF: var_88 = Shift
  loc_153F4DC: If (CLng(Shift) = &H1B) Then
  loc_153F4DF:   Call Proc_61_47_F6E39C(var_88)
  loc_153F4E4:   Exit Sub
  loc_153F4E5: End If
  loc_153F4E8: var_8A = KeyCode
  loc_153F4F3: If (var_8A = CInt(0)) Then
  loc_153F50E:   Set var_A4 = Nothing
  loc_153F519:   Set var_A0 = Nothing
  loc_153F54B:   Proc_6_69_134A198(Me.DGRoomNo, Me.Txt, CInt(0), global_96, Shift, 0)
  loc_153F5B8:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_153F5DE:     Proc_6_138_106D6F8(Me.DGRoomNo, global_96, KeyCode, Me.FGPoint, 1)
  loc_153F5EC:   End If
  loc_153F5EF: Else
  loc_153F5F7:   If (var_8A = CInt(4)) Then
  loc_153F612:     Set var_A4 = Nothing
  loc_153F61D:     Set var_A0 = Nothing
  loc_153F64F:     Proc_6_69_134A198(Me.DGChrgPayment, Me.Txt, CInt(4), global_100, Shift, 0, 1)
  loc_153F6BC:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_153F6C3:       Set var_A0 = Me.DGChrgPayment
  loc_153F6CA:       Set var_94 = Me.FGPoint
  loc_153F6E2:       Proc_6_138_106D6F8(var_A0, global_100, KeyCode, var_94, var_A0, var_A4)
  loc_153F6F0:     End If
  loc_153F6F3:   Else
  loc_153F6FB:     If (var_8A = CInt(6)) Then
  loc_153F708:       Set var_90 = Me.Txt
  loc_153F70E:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, 0, var_A0)
  loc_153F729:       Proc_6_41_FA0BA4(var_94, Shift, 8, 2)
  loc_153F738:     Else
  loc_153F740:       If (var_8A = CInt(&H23)) Then
  loc_153F74D:         Set var_90 = Me.Txt
  loc_153F753:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_A4)
  loc_153F76E:         Proc_6_41_FA0BA4(var_94, Shift, 6)
  loc_153F77D:       Else
  loc_153F785:         If (var_8A = CInt(&H18)) Then
  loc_153F7A0:           Set var_A4 = Nothing
  loc_153F7AB:           Set var_A0 = Nothing
  loc_153F7DD:           Proc_6_69_134A198(Me.DGRoom, Me.Txt, CInt(&H18), global_112, Shift, 0, 1)
  loc_153F84A:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_153F851:             Set var_A0 = Me.DGRoom
  loc_153F870:             Proc_6_138_106D6F8(var_A0, global_112, KeyCode, Me.FGPoint, var_A0)
  loc_153F87E:           End If
  loc_153F881:         Else
  loc_153F889:           If (var_8A = CInt(&H17)) Then
  loc_153F8E5:             Proc_6_69_134A198(Me.DGEmp, Me.Txt, CInt(&H17), global_120, Shift, 0, 1, Nothing)
  loc_153F955:             If ((Me.Txt.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_153F97F:               Proc_6_138_106D6F8(Me.DGEmp, global_120, KeyCode, Me.FGPoint, Nothing, 0)
  loc_153F98D:             End If
  loc_153F990:           Else
  loc_153F998:             If (var_8A = CInt(&H19)) Then
  loc_153F9F4:               Proc_6_69_134A198(Me.DGCompany, Me.Txt, CInt(&H19), global_116, Shift, 0, 1, Nothing)
  loc_153FA64:               If ((Me.Txt.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_153FA8E:                 Proc_6_138_106D6F8(Me.DGCompany, global_116, KeyCode, Me.FGPoint, Nothing, 0)
  loc_153FA9C:               End If
  loc_153FA9F:             Else
  loc_153FAA7:               If (var_8A = CInt(&H27)) Then
  loc_153FB03:                 Proc_6_69_134A198(Me.DGMember, Me.Txt, CInt(&H27), global_124, Shift, 0, 1, Nothing)
  loc_153FB73:                 If ((Me.Txt.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_153FB9D:                   Proc_6_138_106D6F8(Me.DGMember, global_124, KeyCode, Me.FGPoint, Nothing, 0)
  loc_153FBAB:                 End If
  loc_153FBAE:               Else
  loc_153FBB6:                 If (var_8A = CInt(&H28)) Then
  loc_153FBD1:                   Set var_A4 = Nothing
  loc_153FC0E:                   Proc_6_69_134A198(Me.DGCCurreny, Me.Txt, CInt(&H28), global_128, Shift, 0, 1, Nothing)
  loc_153FC7B:                   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_153FC89:                     Set var_94 = Me.FGPoint
  loc_153FCA1:                     Proc_6_138_106D6F8(Me.DGCCurreny, global_128, KeyCode, var_94, var_A4, 0)
  loc_153FCAF:                   End If
  loc_153FCBB:                   Set var_90 = Me.LTxt
  loc_153FCC1:                   Call 0.Method_Txt_KeyDown0 (3, var_94, var_B8, var_A4)
  loc_153FCC9:                   0 = var_94.Caption
  loc_153FCDA:                   Call Proc_61_56_F00D24(CDbl(var_B8), var_C8, 2)
  loc_153FCF0:                   Set var_A0 = Me.LTxt
  loc_153FCF6:                   Call 0.Method_Txt_KeyDown0 (5, var_A4, CStr(var_C8))
  loc_153FCFE:                   var_A4.Caption = 0
  loc_153FD18:                 Else
  loc_153FD20:                   If Not (var_8A = CInt(5)) Then
  loc_153FD2B:                     If (var_8A = CInt(&H29)) Then
  loc_153FD2E:                     End If
  loc_153FD38:                     If (CLng(Shift) = &H2D) Then
  loc_153FD48:                       Set var_90 = Me.Txt
  loc_153FD4E:                       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_153FD61:                       Call Proc_61_55_EE58B8(var_B8, var_94.Text)
  loc_153FD77:                       Set var_A0 = Me.Txt
  loc_153FD7D:                       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_153FD85:                       var_A4.Text = var_8A & var_B8
  loc_153FDAB:                       Set var_90 = Me.Txt
  loc_153FDB1:                       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_153FDB9:                       var_B8 = var_94.Text
  loc_153FDCC:                       Set var_A0 = Me.Txt
  loc_153FDD2:                       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_153FDDA:                       var_A4.SelStart = Len(var_B8)
  loc_153FDED:                       Exit Sub
  loc_153FDEE:                     End If
  loc_153FDF1:                   Else
  loc_153FDF9:                     If (var_8A = CInt(&H25)) Then
  loc_153FE06:                       Set var_90 = Me.Txt
  loc_153FE0C:                       Call 0.Method_Txt_KeyDown0 (KeyCode)
  loc_153FE27:                       Proc_6_41_FA0BA4(var_94, Shift, 8)
  loc_153FE33:                     End If
  loc_153FE33:                   End If
  loc_153FE33:                 End If
  loc_153FE33:               End If
  loc_153FE33:             End If
  loc_153FE33:           End If
  loc_153FE33:         End If
  loc_153FE33:       End If
  loc_153FE33:     End If
  loc_153FE33:   End If
  loc_153FE33: End If
  loc_153FE6A: var_100 = Me.DGCompany.Visible
  loc_153FE81: var_110 = Me.DGEmp.Visible
  loc_153FEF5: If (((((((CBool(Me.DGCCurreny.Visible) = 0) And (CBool(Me.DGMember.Visible) = 0)) And (CBool(var_100) = 0)) And (CBool(var_110) = 0)) And (CBool(Me.DGRoom.Visible) = 0)) And (CBool(Me.DGRoomNo.Visible) = 0)) And (CBool(Me.DGChrgPayment.Visible) = 0)) Then
  loc_153FF2C:   Set var_94 = Me.FrComp
  loc_153FFD6:   If ((((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (((((((Me.FrCCDet.Visible = 0) And (var_94.Visible = 0)) And (Me.FrTxnNo.Visible = 0)) And (Me.FrChqDet.Visible = 0)) And (Me.FrSendRoom.Visible = 0)) And (Me.FrEmp.Visible = 0)) And (Me.FrMember.Visible = 0))) And (KeyCode = CInt(5))) Then
  loc_153FFDF:     Call Txt_Validate(KeyCode)
  loc_153FFEA:     If (var_86 = &HFF) Then
  loc_153FFED:       Exit Sub
  loc_153FFEE:     End If
  loc_153FFEE:     Call Proc_61_52_15B0A0C(var_86, 0)
  loc_153FFFC:     If (global_192 = 0) Then
  loc_154000A:       Set var_90 = Me.Txt
  loc_1540010:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_1540018:       var_94.SetFocus
  loc_1540024:     End If
  loc_1540024:     Exit Sub
  loc_1540025:   End If
  loc_154004C:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(&H16)) Or (KeyCode = CInt(&H2B)))) Then
  loc_1540055:     Call Txt_Validate(KeyCode)
  loc_1540069:     Me.FGPoint.Visible = False
  loc_1540077:     If (var_86 = &HFF) Then
  loc_154007A:       Exit Sub
  loc_154007B:     End If
  loc_15400B2:     If (MsgBox("Add Record ?", 4, "Save Data", var_100, var_110) = 6) Then
  loc_15400B5:       Call Proc_61_52_15B0A0C(var_86)
  loc_15400BA:     End If
  loc_15400C3:     If (global_192 = 0) Then
  loc_15400D1:       Set var_90 = Me.Txt
  loc_15400D7:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_15400DF:       var_94.SetFocus
  loc_15400EB:     End If
  loc_15400EB:     Exit Sub
  loc_15400EC:   End If
  loc_154010A:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H18))) Then
  loc_1540113:     Call Txt_Validate(KeyCode)
  loc_1540127:     Me.FGPoint.Visible = False
  loc_1540135:     If (var_86 = &HFF) Then
  loc_1540138:       Exit Sub
  loc_1540139:     End If
  loc_1540170:     If (MsgBox("Add Record ?", 4, "Save Data", var_100, var_110) = 6) Then
  loc_1540173:       Call Proc_61_52_15B0A0C(var_86)
  loc_1540178:     End If
  loc_1540181:     If (global_192 = 0) Then
  loc_154018F:       Set var_90 = Me.Txt
  loc_1540195:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_154019D:       var_94.SetFocus
  loc_15401A9:     End If
  loc_15401A9:     Exit Sub
  loc_15401AA:   End If
  loc_15401C8:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H17))) Then
  loc_15401D1:     Call Txt_Validate(KeyCode)
  loc_15401DC:     If (var_86 = &HFF) Then
  loc_15401DF:       Exit Sub
  loc_15401E0:     End If
  loc_1540217:     If (MsgBox("Add Record ?", 4, "Save Data", var_100, var_110) = 6) Then
  loc_154021A:       Call Proc_61_52_15B0A0C(var_86)
  loc_154021F:     End If
  loc_1540228:     If (global_192 = 0) Then
  loc_1540236:       Set var_90 = Me.Txt
  loc_154023C:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_1540244:       var_94.SetFocus
  loc_1540250:     End If
  loc_1540250:     Exit Sub
  loc_1540251:   End If
  loc_1540278:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(&H19)) Or (KeyCode = CInt(&H27)))) Then
  loc_1540281:     Call Txt_Validate(KeyCode)
  loc_15402A6:     Set var_90 = Me.Txt
  loc_15402AC:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_B8, 0)
  loc_15402B4:     (var_86 = &HFF) = var_94.Tag
  loc_15402DD:     If (var_94 Or (Proc_96_1_F8C534(Proc_6_38_E68A98(CVar(var_B8), var_86)) = 0)) Then
  loc_15402E6:       Call 0.Method_arg_50 (var_B8)
  loc_1540307:       MsgBox("Credit Not Allowed to this company.", &H10, CVar(var_B8), var_100, var_110)
  loc_1540317:       Exit Sub
  loc_1540318:     End If
  loc_154034F:     If (MsgBox("Add Record ?", 4, "Save Data", var_100, var_110) = 6) Then
  loc_1540352:       Call Proc_61_52_15B0A0C()
  loc_1540357:     End If
  loc_1540360:     If (global_192 = 0) Then
  loc_154036E:       Set var_90 = Me.Txt
  loc_1540374:       Call 0.Method_Txt_KeyDown0 (CInt(4))
  loc_154037C:       var_94.SetFocus
  loc_1540388:     End If
  loc_1540388:     Exit Sub
  loc_1540389:   End If
  loc_15403A7:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H25))) Then
  loc_15403B0:     Call Txt_Validate(KeyCode)
  loc_15403BB:     If (var_86 = &HFF) Then
  loc_15403BE:       Exit Sub
  loc_15403BF:     End If
  loc_15403F6:     If (MsgBox("Add Record ?", 4, "Save Data", var_100, var_110) = 6) Then
  loc_15403F9:       Call Proc_61_52_15B0A0C(var_86)
  loc_15403FE:     End If
  loc_1540407:     If (global_192 = 0) Then
  loc_1540415:       Set var_90 = Me.Txt
  loc_154041B:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94)
  loc_1540423:       var_94.SetFocus
  loc_154042F:     End If
  loc_154042F:     Exit Sub
  loc_1540430:   End If
  loc_1540461:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (Me.FrReference.Visible = 0)) Then
  loc_154046A:     Proc_6_75_E527CC(Shift, arg_14)
  loc_154046F:   End If
  loc_1540495:   If ((CLng(Shift) = &H26) And (Me.FrReference.Visible = 0)) Then
  loc_154049E:     Proc_6_76_E52838(Shift, arg_14)
  loc_15404A3:   End If
  loc_15404A3: End If
  loc_15404A3: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '12304C4
  'Data Table: 544E74
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_122FF9B: Proc_6_58_E054C0(arg_10)
  loc_122FFA6: Proc_6_133_E7EF78(var_94)
  loc_122FFAF: arg_10 = CInt(var_94)
  loc_122FFB8: var_96 = KeyAscii
  loc_122FFC3: If (var_96 = CInt(0)) Then
  loc_122FFE2:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_123000F:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_96, arg_10, "RoomNo")
  loc_1230041:     Proc_6_138_106D6F8(Me.DGRoomNo, global_96, KeyAscii, Me.FGPoint)
  loc_123004F:   End If
  loc_1230052: Else
  loc_123005A:   If (var_96 = CInt(4)) Then
  loc_1230079:     If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_12300A6:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_100, arg_10, "Name")
  loc_12300D8:       Proc_6_138_106D6F8(Me.DGChrgPayment, global_100, KeyAscii, Me.FGPoint, 0)
  loc_12300E6:     End If
  loc_12300E9:   Else
  loc_12300F1:     If (var_96 = CInt(&H18)) Then
  loc_1230110:       If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_123013D:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_112, arg_10, "RoomNo")
  loc_1230157:         Set var_A8 = Me.FGPoint
  loc_123016F:         Proc_6_138_106D6F8(Me.DGRoom, global_112, KeyAscii, var_A8, 0)
  loc_123017D:       End If
  loc_1230180:     Else
  loc_1230188:       If (var_96 = CInt(6)) Then
  loc_1230195:         Set var_9C = Me.Txt
  loc_123019B:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_12301B6:         Proc_6_42_129A86C(var_A8, arg_10, 8, 2)
  loc_12301C5:       Else
  loc_12301CD:         If (var_96 = CInt(&H23)) Then
  loc_12301DA:           Set var_9C = Me.Txt
  loc_12301E0:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_96)
  loc_12301FB:           Proc_6_42_129A86C(var_A8, arg_10, 6)
  loc_123020A:         Else
  loc_1230212:           If (var_96 = CInt(&H17)) Then
  loc_1230231:             If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_1230262:               Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_120, arg_10, "Name")
  loc_1230298:               Proc_6_138_106D6F8(Me.DGEmp, global_120, KeyAscii, Me.FGPoint)
  loc_12302A6:             End If
  loc_12302A9:           Else
  loc_12302B1:             If (var_96 = CInt(&H19)) Then
  loc_12302D0:               If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_1230301:                 Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_116, arg_10, "Name")
  loc_1230337:                 Proc_6_138_106D6F8(Me.DGCompany, global_116, KeyAscii, Me.FGPoint, 0)
  loc_1230345:               End If
  loc_1230348:             Else
  loc_1230350:               If (var_96 = CInt(&H27)) Then
  loc_123036F:                 If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_12303A0:                   Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_124, arg_10, "Name")
  loc_12303D6:                   Proc_6_138_106D6F8(Me.DGMember, global_124, KeyAscii, Me.FGPoint, 0)
  loc_12303E4:                 End If
  loc_12303E7:               Else
  loc_12303EF:                 If (var_96 = CInt(&H28)) Then
  loc_123040E:                   If (CBool(Me.DGCCurreny.Visible) = &HFF) Then
  loc_123043B:                     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_128, arg_10, "Name")
  loc_1230455:                     Set var_A8 = Me.FGPoint
  loc_123046D:                     Proc_6_138_106D6F8(Me.DGCCurreny, global_128, KeyAscii, var_A8, 0)
  loc_123047B:                   End If
  loc_123047E:                 Else
  loc_1230486:                   If (var_96 = CInt(&H25)) Then
  loc_1230493:                     Set var_9C = Me.Txt
  loc_1230499:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_12304B4:                     Proc_6_42_129A86C(var_A8, arg_10, 8, 0)
  loc_12304C0:                   End If
  loc_12304C0:                 End If
  loc_12304C0:               End If
  loc_12304C0:             End If
  loc_12304C0:           End If
  loc_12304C0:         End If
  loc_12304C0:       End If
  loc_12304C0:     End If
  loc_12304C0:   End If
  loc_12304C0: End If
  loc_12304C0: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1117CA0
  'Data Table: 544E74
  Dim var_86 As Integer
  loc_1117947: var_86 = KeyCode
  loc_1117952: If (var_86 = CInt(0)) Then
  loc_1117971:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_1117985:     var_A8 = "RoomNO"
  loc_11179AD:     Proc_6_68_129FB34(Me.DGRoomNo, Me.Txt, CInt(0), global_96)
  loc_11179C0:   End If
  loc_11179C3: Else
  loc_11179CB:   If (var_86 = CInt(4)) Then
  loc_11179EA:     If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_11179FE:       var_A8 = "Name"
  loc_1117A26:       Proc_6_68_129FB34(Me.DGChrgPayment, Me.Txt, CInt(4), global_100, Shift)
  loc_1117A39:     End If
  loc_1117A3C:   Else
  loc_1117A44:     If (var_86 = CInt(&H17)) Then
  loc_1117A63:       If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_1117A77:         var_A8 = "Name"
  loc_1117AA3:         Proc_6_68_129FB34(Me.DGEmp, Me.Txt, CInt(&H17), global_120, Shift)
  loc_1117AB6:       End If
  loc_1117AB9:     Else
  loc_1117AC1:       If (var_86 = CInt(&H18)) Then
  loc_1117AE0:         If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_1117B18:           Proc_6_68_129FB34(Me.DGRoom, Me.Txt, KeyCode, global_112, Shift, "RoomNo")
  loc_1117B2B:         End If
  loc_1117B2E:       Else
  loc_1117B36:         If (var_86 = CInt(&H19)) Then
  loc_1117B55:           If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_1117B95:             Proc_6_68_129FB34(Me.DGCompany, Me.Txt, CInt(&H19), global_116, Shift, "Name")
  loc_1117BA8:           End If
  loc_1117BAB:         Else
  loc_1117BB3:           If (var_86 = CInt(&H27)) Then
  loc_1117BD2:             If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_1117C12:               Proc_6_68_129FB34(Me.DGMember, Me.Txt, CInt(&H27), global_124, Shift, "Name")
  loc_1117C25:             End If
  loc_1117C28:           Else
  loc_1117C30:             If (var_86 = CInt(&H28)) Then
  loc_1117C4F:               If (CBool(Me.DGCCurreny.Visible) = &HFF) Then
  loc_1117C8B:                 Proc_6_68_129FB34(Me.DGCCurreny, Me.Txt, CInt(&H28), global_128, Shift, "Name")
  loc_1117C9E:               End If
  loc_1117C9E:             End If
  loc_1117C9E:           End If
  loc_1117C9E:         End If
  loc_1117C9E:       End If
  loc_1117C9E:     End If
  loc_1117C9E:   End If
  loc_1117C9E: End If
  loc_1117C9E: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48154
  'Data Table: 544E74
  loc_E48132: Set var_88 = Me.Txt
  loc_E48138: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48146: Proc_6_73_E22704(var_8C)
  loc_E48152: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '179ED5C
  'Data Table: 544E74
  Dim var_DA As Integer
  Dim var_E4 As Variant
  Dim var_EC As String
  Dim Me As Variant
  Dim var_100 As String
  Dim var_E0 As Variant
  Dim var_E8 As String
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_10C As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_168 As Variant
  Dim var_18C As Variant
  Dim var_1B0 As String
  Dim var_1AC As TextBox
  Dim unk_544EA0 As Connection15
  Dim var_D8 As Recordset15
  Dim var_1B8 As Double
  Dim var_1C0 As Double
  Dim var_17C As Label
  Dim var_160 As Variant
  Dim arg_10 As Integer
  Dim var_106 As Integer
  loc_179CE43: var_DA = Cancel
  loc_179CE4E: If (var_DA = CInt(0)) Then
  loc_179CE5D:   If (global_152 = 1) Then
  loc_179CE6E:     Set var_E0 = Me.Txt
  loc_179CE74:     Call 0.Method_Txt_Validate0 (CInt(0), var_E4)
  loc_179CE7C:     var_E8 = var_E4.Text
  loc_179CE93:     If (var_E8 <> vbNullString) Then
  loc_179CEB5:       Set var_E0 = Me.Txt
  loc_179CEBB:       Call 0.Method_Txt_Validate0 (CInt(0), var_E4, var_E8, "roomNo='")
  loc_179CEC3:       0 = var_E4.Text
  loc_179CEDC:       Me.Find 1 & var_E8 & "'", var_100, var_DA
  loc_179CEF1:     End If
  loc_179CEF1:   End If
  loc_179CEF1:   Call Proc_61_51_121DED4()
  loc_179CF44:   Set var_E0 = Me.Txt
  loc_179CF4A:   Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_179CF6A:   If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_E4.Text = vbNullString)) Then
  loc_179CF7A:     Set var_E0 = Me.Txt
  loc_179CF80:     Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_179CF88:     var_E4.Tag = vbNullString
  loc_179CF94:     Exit Sub
  loc_179CF95:   End If
  loc_179CFD0:   Set var_10C = Me.Txt
  loc_179CFD6:   Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_179CFDE:   var_110.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_179D02F:   Set var_10C = Me.Txt
  loc_179D035:   Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_179D03D:   var_110.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_179D08C:   Set var_10C = Me.Txt
  loc_179D092:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_110)
  loc_179D09A:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("FolioNo")))
  loc_179D0E7:   Set var_10C = Me.Txt
  loc_179D0ED:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_110)
  loc_179D0F5:   var_110.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("DocID")))
  loc_179D123:   var_E4 = Me.Fields.Item("ChkInDate")
  loc_179D142:   Set var_10C = Me.Txt
  loc_179D148:   Call 0.Method_Txt_Validate0 (CInt(1), var_110)
  loc_179D150:   var_110.Text = Proc_6_38_E68A98(CVar(var_E4))
  loc_179D16F:   Set var_E0 = Me.Txt
  loc_179D175:   Call 0.Method_Txt_Validate0 (CInt(1))
  loc_179D1AF:   Me.LblCheckInDay.Caption = CStr(Format(CVar(var_E4), "DDDD"))
  loc_179D21A:   Set var_10C = Me.Txt
  loc_179D220:   Call 0.Method_Txt_Validate0 (CInt(2), var_110, CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_179D228:   var_110.Text = 1
  loc_179D27C:   var_130 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")))) 'String
  loc_179D299:   Set var_10C = Me.Txt
  loc_179D29F:   Call 0.Method_Txt_Validate0 (CInt(3), var_110)
  loc_179D2A7:   var_110.Text = CStr(Right(var_130, 2))
  loc_179D2FE:   Set var_10C = Me.Txt
  loc_179D304:   Call 0.Method_Txt_Validate0 (CInt(7), var_110)
  loc_179D30C:   var_110.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("GuestCode")))
  loc_179D359:   Set var_10C = Me.Txt
  loc_179D35F:   Call 0.Method_Txt_Validate0 (CInt(7), var_110)
  loc_179D367:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("GuestName")))
  loc_179D3B4:   Set var_10C = Me.Txt
  loc_179D3BA:   Call 0.Method_Txt_Validate0 (CInt(8), var_110)
  loc_179D3C2:   var_110.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("companyCode")))
  loc_179D40F:   Set var_10C = Me.Txt
  loc_179D415:   Call 0.Method_Txt_Validate0 (CInt(8), var_110)
  loc_179D41D:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CompanyName")))
  loc_179D45A:   Proc_6_39_E7C810(var_130, CVar(Me.Fields.Item("RoomRate")))
  loc_179D471:   Set var_10C = Me.Txt
  loc_179D477:   Call 0.Method_Txt_Validate0 (CInt(&HF), var_110)
  loc_179D47F:   var_110.Text = CStr(var_130)
  loc_179D4D0:   Set var_10C = Me.Txt
  loc_179D4D6:   Call 0.Method_Txt_Validate0 (CInt(&HE), var_110)
  loc_179D4DE:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RateCode")))
  loc_179D52B:   Set var_10C = Me.Txt
  loc_179D531:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_110)
  loc_179D539:   var_110.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCatCode")))
  loc_179D586:   Set var_10C = Me.Txt
  loc_179D58C:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_110)
  loc_179D594:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCat")))
  loc_179D5E1:   Set var_10C = Me.Txt
  loc_179D5E7:   Call 0.Method_Txt_Validate0 (CInt(&H26), var_110)
  loc_179D5EF:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("PlanCode")))
  loc_179D609:   global_140 = "RO"
  loc_179D63E:   global_136 = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCatCode")))
  loc_179D684:   Set var_10C = Me.Txt
  loc_179D68A:   Call 0.Method_Txt_Validate0 (CInt(9), var_110)
  loc_179D692:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("STATUSNAME")))
  loc_179D6CF:   Proc_6_39_E7C810(var_130, CVar(Me.Fields.Item("OldAdult")))
  loc_179D6E6:   Set var_10C = Me.Txt
  loc_179D6EC:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_110)
  loc_179D6F4:   var_110.Text = CStr(var_130)
  loc_179D726:   var_E4 = Me.Fields.Item("OldChild")
  loc_179D735:   Proc_6_39_E7C810(var_130, CVar(var_E4))
  loc_179D74C:   Set var_10C = Me.Txt
  loc_179D752:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_110)
  loc_179D75A:   var_110.Text = CStr(var_130)
  loc_179D785:   Set var_E0 = Me.Txt
  loc_179D78B:   Call 0.Method_Txt_Validate0 (CInt(&H11), var_E4)
  loc_179D793:   var_E4.Text = CStr(MemVar_1F920EC)
  loc_179D7DB:   Set var_10C = Me.Txt
  loc_179D7E1:   Call 0.Method_Txt_Validate0 (CInt(&H1A), var_110)
  loc_179D7E9:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Add1")))
  loc_179D836:   Set var_10C = Me.Txt
  loc_179D83C:   Call 0.Method_Txt_Validate0 (CInt(&H1B), var_110)
  loc_179D844:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Add2")))
  loc_179D872:   var_E4 = Me.Fields.Item("CityName")
  loc_179D8B2:   var_110 = Me.Fields.Item("StateName")
  loc_179D8F6:   var_17C = Me.Fields.Item("CountryName")
  loc_179D916:   var_1B0 = var_E4 & Proc_6_38_E68A98(Trim(CVar(var_110)), Proc_6_38_E68A98(Trim(CVar(var_E4))) & ",") & "," & Proc_6_38_E68A98(Trim(CVar(var_17C)))
  loc_179D924:   Set var_1A8 = Me.Txt
  loc_179D92A:   Call 0.Method_Txt_Validate0 (CInt(&H1C), var_1AC)
  loc_179D932:   var_1AC.Text = var_1B0
  loc_179D99D:   Set var_10C = Me.Txt
  loc_179D9A3:   Call 0.Method_Txt_Validate0 (CInt(&H1F), var_110)
  loc_179D9AB:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DepDate")))
  loc_179DA12:   Set var_10C = Me.Txt
  loc_179DA18:   Call 0.Method_Txt_Validate0 (CInt(&H1E), var_110)
  loc_179DA20:   var_110.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_179DA74:   var_130 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))) 'String
  loc_179DA91:   Set var_10C = Me.Txt
  loc_179DA97:   Call 0.Method_Txt_Validate0 (CInt(&H1D), var_110)
  loc_179DA9F:   var_110.Text = CStr(Right(var_130, 2))
  loc_179DAF6:   Set var_10C = Me.Txt
  loc_179DAFC:   Call 0.Method_Txt_Validate0 (CInt(&H20), var_110)
  loc_179DB04:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments1")))
  loc_179DB51:   Set var_10C = Me.Txt
  loc_179DB57:   Call 0.Method_Txt_Validate0 (CInt(&H21), var_110)
  loc_179DB5F:   var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments2")))
  loc_179DB8D:   var_E4 = Me.Fields.Item("Comments3")
  loc_179DB9E:   var_E8 = Proc_6_38_E68A98(CVar(var_E4))
  loc_179DBAC:   Set var_10C = Me.Txt
  loc_179DBB2:   Call 0.Method_Txt_Validate0 (CInt(&H22), var_110)
  loc_179DBBA:   var_110.Text = var_E8
  loc_179DBEC:   Set var_E0 = Me.Txt
  loc_179DBF2:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_E4, var_E8, "Select Sum(AmtDr) as DrAmt,Sum(AmtCr) as CrAmt from paycharge where (ContraDocid is NULL or ContraDocid ='' ) and folioNoDocid='")
  loc_179DBFA:   var_120 = var_E4.Tag
  loc_179DC03:   var_EC = -1 & var_E8
  loc_179DC21:   unk_544EA0.Execute Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime"))) & "' and site_code='" & MemVar_1F92070 & "'", var_10C, 
  loc_179DC2C:   Set var_D8 = var_10C
  loc_179DC5C:   If (var_D8.RecordCount > 0) Then
  loc_179DC76:     var_E4 = var_D8.Fields.Item("DrAmt")
  loc_179DC7E:     var_120 = CVar(var_E4) 'Address
  loc_179DC85:     Proc_6_39_E7C810(var_130)
  loc_179DCAD:     var_E8 = CStr(Format(var_130, "0.00"))
  loc_179DCBC:     Set var_10C = Me.LTxt
  loc_179DCC2:     Call 0.Method_Txt_Validate0 (CInt(0), var_110, var_E8)
  loc_179DCCA:     var_110.Caption = 1
  loc_179DCF4:     Set var_E0 = Me.LTxt
  loc_179DCFA:     Call 0.Method_Txt_Validate0 (CInt(0), var_E4, var_E8)
  loc_179DD02:     1 = var_E4.Caption
  loc_179DD12:     global_168 = Val(var_E8)
  loc_179DD36:     var_E4 = var_D8.Fields.Item("CrAmt")
  loc_179DD45:     Proc_6_39_E7C810(var_130, CVar(var_E4))
  loc_179DD6D:     var_E8 = CStr(Format(var_130, "0.00"))
  loc_179DD7C:     Set var_10C = Me.LTxt
  loc_179DD82:     Call 0.Method_Txt_Validate0 (CInt(1), var_110, var_E8, 1)
  loc_179DD8A:     var_110.Caption = 1
  loc_179DDB4:     Set var_E0 = Me.LTxt
  loc_179DDBA:     Call 0.Method_Txt_Validate0 (CInt(1), var_E4, var_E8)
  loc_179DDC2:     global_168 = var_E4.Caption
  loc_179DDD2:     global_176 = Val(var_E8)
  loc_179DDDF:   End If
  loc_179DDED:   Set var_E0 = Me.LTxt
  loc_179DDF3:   Call 0.Method_Txt_Validate0 (CInt(0), var_E4, var_E8)
  loc_179DDFB:   global_176 = var_E4.Caption
  loc_179DE08:   var_1B8 = Val(var_E8)
  loc_179DE19:   Set var_10C = Me.LTxt
  loc_179DE1F:   Call 0.Method_Txt_Validate0 (CInt(1), var_110, Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime"))))
  loc_179DE53:   var_120 = CVar((var_110.Caption - Val(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))))) 'Double
  loc_179DE71:   Set var_168 = Me.LTxt
  loc_179DE77:   Call 0.Method_Txt_Validate0 (CInt(2), var_17C, CStr(Format(CVar(var_E4), "0.00")), 1)
  loc_179DE7F:   var_17C.Caption = 1
  loc_179DEB3:   Set var_E0 = Me.LTxt
  loc_179DEB9:   Call 0.Method_Txt_Validate0 (CInt(2), var_E4, var_E8)
  loc_179DEC1:   var_1C0 = var_E4.Caption
  loc_179DECE:   var_1B8 = Val(var_E8)
  loc_179DEFC:   global_184 = CSng(Format(CVar(var_1B8), "0.00"))
  loc_179DF35:   var_140 = Format(Time, "HH:mm")
  loc_179DF3E:   var_160 = CVar(CStr(var_140)) 'String
  loc_179DF4C:   Me.txtVTime.defaultText = var_160
  loc_179DF62: Else
  loc_179DF6A:   If (var_DA = CInt(&H18)) Then
  loc_179DFBB:     Set var_E0 = Me.Txt
  loc_179DFC1:     Call 0.Method_Txt_Validate0 (Cancel, var_E4, var_E8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), 1, 1)
  loc_179DFC9:     global_184 = var_E4.Text
  loc_179DFE1:     If (1 Or (var_E8 = vbNullString)) Then
  loc_179DFF1:       Set var_E0 = Me.Txt
  loc_179DFF7:       Call 0.Method_Txt_Validate0 (Cancel, var_E4, vbNullString)
  loc_179DFFF:       var_E4.Tag = 1
  loc_179E00B:       Exit Sub
  loc_179E00C:     End If
  loc_179E02E:     var_120 = CVar(Me.Fields.Item("RoomNo")) 'Address
  loc_179E037:     var_EC = Proc_6_38_E68A98(var_120, var_1B8)
  loc_179E048:     Set var_10C = Me.Txt
  loc_179E04E:     Call 0.Method_Txt_Validate0 (CInt(0), var_110, var_E8)
  loc_179E056:     var_EC = var_110.Text
  loc_179E073:     If (var_120 = var_E8) Then
  loc_179E07C:       Call 0.Method_arg_50 (var_E8)
  loc_179E09D:       MsgBox("Invalid Room No.", &H10, CVar(var_E8), var_140, var_160)
  loc_179E0AF:       arg_10 = &HFF
  loc_179E0B2:       Exit Sub
  loc_179E0B3:     End If
  loc_179E0EE:     Set var_10C = Me.Txt
  loc_179E0F4:     Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_179E0FC:     var_110.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_179E12F:     var_E4 = Me.Fields.Item("Code")
  loc_179E14D:     Set var_10C = Me.Txt
  loc_179E153:     Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_179E15B:     var_110.Tag = CStr(var_E4.Value)
  loc_179E174:   Else
  loc_179E17C:     If (var_DA = CInt(&H11)) Then
  loc_179E191:       Set var_E0 = Me.Txt
  loc_179E197:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_179E1BB:       Set var_E0 = Me.Txt
  loc_179E1C1:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_179E1E1:       If (CDate(CStr(MemVar_1F920EC)) < MemVar_1F920EC) Then
  loc_179E1E6:         arg_10 = &HFF
  loc_179E1E9:         Exit Sub
  loc_179E1EA:       End If
  loc_179E224:       Me.txtVTime.defaultText = CVar(CStr(Format(Time, "HH:mm")))
  loc_179E23A:     Else
  loc_179E242:       If (var_DA = CInt(4)) Then
  loc_179E2D1:         Me.LblNature.Caption = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("PayType")), 1, 1))))
  loc_179E322:         Set var_10C = Me.Txt
  loc_179E328:         Call 0.Method_Txt_Validate0 (CInt(&H2A), var_110)
  loc_179E330:         var_110.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxInc")), arg_10)
  loc_179E396:         var_18C = arg_10 And (Trim(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("PayType")), (CStr(Me.Fields.Item("Flag").Value) = "Cr")))) = vbNullString)
  loc_179E3AA:         If CBool(var_18C) Then
  loc_179E402:           Set var_10C = Me.Txt
  loc_179E408:           Call 0.Method_Txt_Validate0 (CInt(6), var_110, CStr(Format(CVar(Me.Fields.Item("SaleRate")), "0.00")))
  loc_179E410:           var_110.Text = 1
  loc_179E42A:         End If
  loc_179E477:         var_110 = Me.Fields.Item("PayType")
  loc_179E4A9:         If CBool(Not(IsNull(CVar(Me.Fields.Item("PayType")))) And (var_110.Value <> vbNullString)) Then
  loc_179E4DE:           Call Proc_61_49_129CEB0(CStr(Me.Fields.Item("PayType").Value))
  loc_179E4F3:         Else
  loc_179E4FF:           Me.FrTxnNo.Visible = False
  loc_179E513:           Me.FrChqDet.Visible = False
  loc_179E527:           Me.FrCCDet.Visible = False
  loc_179E53B:           Me.FrEmp.Visible = False
  loc_179E54F:           Me.FrComp.Visible = False
  loc_179E563:           Me.FrMember.Visible = False
  loc_179E577:           Me.FrSendRoom.Visible = False
  loc_179E57F:         End If
  loc_179E5B4:         var_E4 = Me.Fields.Item("Flag")
  loc_179E5E2:         If CBool((fdPaymentCharge.OpenMode = 1) And (var_E4.Value = "Dr")) Then
  loc_179E5F0:           Set var_E0 = Me.LTxt
  loc_179E5F6:           Call 0.Method_Txt_Validate0 (CInt(2), var_E4)
  loc_179E622:           var_E8 = CStr(Format(CVar(var_E4), "0.00"))
  loc_179E631:           Set var_10C = Me.Txt
  loc_179E637:           Call 0.Method_Txt_Validate0 (CInt(6), var_110, var_E8)
  loc_179E63F:           var_110.Text = 1
  loc_179E659:         End If
  loc_179E676:         var_E4 = Me.Fields.Item("PayType")
  loc_179E69B:         Set var_10C = Me.Txt
  loc_179E6A1:         Call 0.Method_Txt_Validate0 (CInt(5), var_110, (var_E4.Value = "Cash"))
  loc_179E6DA:         If CBool(1 And (Trim(CVar(var_110)) = vbNullString)) Then
  loc_179E6EB:           Set var_E0 = Me.Txt
  loc_179E6F1:           Call 0.Method_Txt_Validate0 (CInt(5), var_E4)
  loc_179E6F9:           var_E4.Text = "CASH RECD."
  loc_179E708:         Else
  loc_179E725:           var_E4 = Me.Fields.Item("PayType")
  loc_179E74D:           Set var_10C = Me.Txt
  loc_179E753:           Call 0.Method_Txt_Validate0 (CInt(5), var_110, var_E8)
  loc_179E75B:           (var_E4.Value <> "Cash") = var_110.Text
  loc_179E787:           If CBool(1 And (var_E8 = "CASH RECD.")) Then
  loc_179E798:             Set var_E0 = Me.Txt
  loc_179E79E:             Call 0.Method_Txt_Validate0 (CInt(5), var_E4)
  loc_179E7A6:             var_E4.Text = vbNullString
  loc_179E7B5:           Else
  loc_179E7D2:             var_E4 = Me.Fields.Item("PayType")
  loc_179E7FA:             Set var_10C = Me.Txt
  loc_179E800:             Call 0.Method_Txt_Validate0 (CInt(6), var_110)
  loc_179E839:             If CBool((var_E4.Value = "Cash") And (CDbl(Val(var_110.Text)) < CDbl(0))) Then
  loc_179E84A:               Set var_E0 = Me.Txt
  loc_179E850:               Call 0.Method_Txt_Validate0 (CInt(5), var_E4)
  loc_179E858:               var_E4.Text = "CASH PAID "
  loc_179E864:             End If
  loc_179E864:           End If
  loc_179E864:         End If
  loc_179E8A3:         If (Me.Fields.Item("Flag").Value = "Cr") Then
  loc_179E8E2:           Set var_10C = Me.Txt
  loc_179E8E8:           Call 0.Method_Txt_Validate0 (CInt(5), var_110)
  loc_179E8F0:           var_110.Text = CStr(Me.Fields.Item("Name").Value)
  loc_179E906:         End If
  loc_179E920:         var_E4 = Me.Fields.Item("PayType")
  loc_179E931:         var_106 = IsNull(CVar(var_E4))
  loc_179E94E:         var_110 = Me.Fields.Item("PayType")
  loc_179E956:         var_140 = CVar(var_110) 'Address
  loc_179E993:         If (IIf(var_106, vbNullString, var_140) = vbNullString) Then
  loc_179E9A3:           Set var_E0 = Me.Txt
  loc_179E9A9:           Call 0.Method_Txt_Validate0 (CInt(&H23), var_E4)
  loc_179E9B1:           var_E4.Visible = False
  loc_179E9C8:           Set var_E0 = Me.Lbl
  loc_179E9CE:           Call 0.Method_Txt_Validate0 (&HF, var_E4)
  loc_179E9D6:           var_E4.Visible = False
  loc_179E9E5:         Else
  loc_179E9F2:           Set var_E0 = Me.Txt
  loc_179E9F8:           Call 0.Method_Txt_Validate0 (CInt(&H23), var_E4)
  loc_179EA00:           var_E4.Visible = True
  loc_179EA17:           Set var_E0 = Me.Lbl
  loc_179EA1D:           Call 0.Method_Txt_Validate0 (&HF, var_E4)
  loc_179EA25:           var_E4.Visible = True
  loc_179EA31:         End If
  loc_179EA34:       Else
  loc_179EA3C:         If (var_DA = CInt(&H16)) Then
  loc_179EA4C:           Set var_E0 = Me.Txt
  loc_179EA52:           Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_179EA78:           Set var_10C = Me.Txt
  loc_179EA7E:           Call 0.Method_Txt_Validate0 (Cancel, var_110)
  loc_179EA86:           var_110.Text = Proc_6_34_14ECF20(var_E4.Text)
  loc_179EAA0:         Else
  loc_179EAA8:           If (var_DA = CInt(&H14)) Then
  loc_179EAB8:             Set var_E0 = Me.Txt
  loc_179EABE:             Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_179EADD:             If (var_E4.Text = vbNullString) Then
  loc_179EAE2:               arg_10 = &HFF
  loc_179EAE5:               Exit Sub
  loc_179EAE6:             End If
  loc_179EAF0:             Set var_E0 = Me.Txt
  loc_179EAF6:             Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_179EB09:             var_E8 = Proc_6_33_1512840(var_E4, arg_10)
  loc_179EB16:             Set var_110 = Me.Txt
  loc_179EB1C:             Call 0.Method_Txt_Validate0 (Cancel, var_168)
  loc_179EB24:             var_168.Text = var_E8
  loc_179EB3A:           Else
  loc_179EB42:             If (var_DA = CInt(6)) Then
  loc_179EB6E:               var_130 = Trim(CVar(Me.Fields.Item("PayType")))
  loc_179EB8E:               Set var_10C = Me.Txt
  loc_179EB94:               Call 0.Method_Txt_Validate0 (CInt(6), var_110, var_E8)
  loc_179EB9C:               (var_130 <> vbNullString) = var_110.Text
  loc_179EBB2:               var_160 = var_106 And (CDbl(Val(var_E8)) < CDbl(0))
  loc_179EBCD:               If CBool(var_160) Then
  loc_179EBED:                 var_E4 = Me.Fields.Item("PayType")
  loc_179EC0F:                 If (var_E4.Value = "Cash") Then
  loc_179EC20:                   Set var_E0 = Me.Txt
  loc_179EC26:                   Call 0.Method_Txt_Validate0 (CInt(5), var_E4)
  loc_179EC2E:                   var_E4.Text = "CASH PAID "
  loc_179EC3A:                 End If
  loc_179EC3A:               End If
  loc_179EC61:               Set var_E4 = Me.Txt
  loc_179EC67:               Call 0.Method_Txt_Validate0 (Cancel, var_10C)
  loc_179ECA8:               If (((Me.LblNature.Caption = "Credit Card") And (CDbl(Val(var_10C.Text)) <= CDbl(0))) And (fdPaymentCharge.ParentForm = "Check Out")) Then
  loc_179ECC4:                 MsgBox("Negative Settlement is not allowed", &H40, var_130, var_140, var_160)
  loc_179ECD6:                 arg_10 = &HFF
  loc_179ECD9:               End If
  loc_179ECE3:               Set var_E0 = Me.Txt
  loc_179ECE9:               Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_179ED23:               Set var_10C = Me.Txt
  loc_179ED29:               Call 0.Method_Txt_Validate0 (Cancel, var_110, CStr(Format(CVar(var_E4), "0.00")))
  loc_179ED31:               var_110.Text = 1
  loc_179ED4B:             End If
  loc_179ED4B:           End If
  loc_179ED4B:         End If
  loc_179ED4B:       End If
  loc_179ED4B:     End If
  loc_179ED4B:   End If
  loc_179ED4B: End If
  loc_179ED4B: Call Proc_61_47_F6E39C(1)
  loc_179ED55: Set var_D8 = Nothing
  loc_179ED58: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F14634
  'Data Table: 544E74
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F1454C: On Error Goto loc_F145F1
  loc_F14566: If (Me.RecordCount > 0) Then
  loc_F1457E:   var_8C = "EDIT"
  loc_F1458C:   Call Proc_61_45_E792A4(Proc_5_1_100CB50(var_8C, Me))
  loc_F145A2:   Set var_90 = Me.Txt
  loc_F145A8:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F145B0:   var_98.SetFocus
  loc_F145BF: Else
  loc_F145E0:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F145F0: End If
  loc_F145F0: Exit Sub
  loc_F145F1: ' Referenced from: F1454C
  loc_F145F9: Set var_90 = Err()
  loc_F145FF: Call 0.Method_arg_2C (var_8C)
  loc_F14620: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F14633: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'ECB36C
  'Data Table: 544E74
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F920E4 As String
  loc_ECB2C8: On Error Goto loc_ECB363
  loc_ECB2E2: If (Me.RecordCount <= 0) Then
  loc_ECB2EB:   var_B8 = "Information"
  loc_ECB306:   MsgBox("No Records Found", &H40, var_B8, var_E8, var_108)
  loc_ECB316:   Exit Sub
  loc_ECB317: End If
  loc_ECB328: MemVar_1F920E4 = "SELECT DocId AS SearchCode FROM GuestFolio where VType='" & global_56 & "' ORDER BY VDate"
  loc_ECB335: MemVar_1F92120 = Me
  loc_ECB342: Proc_6_126_F1BCC0("2000,2000,2000,2000")
  loc_ECB35D: Call 0.Method_arg_2B0 (1, var_B8)
  loc_ECB362: Exit Sub
  loc_ECB363: ' Referenced from: ECB2C8
  loc_ECB363: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_ECB368: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1C92DA8
  'Data Table: 544E74
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_E8 As Variant
  Dim var_154 As Variant
  Dim var_F0 As Variant
  Dim var_124 As Variant
  Dim var_180 As String
  Dim var_184 As String
  Dim unk_544EA0 As Connection15
  Dim var_EC As Variant
  Dim var_188 As Variant
  Dim var_18C As Variant
  Dim var_178 As String
  Dim MemVar_1F920EC As Double
  Dim var_9A As Variant
  Dim var_1A4 As String
  Dim var_174 As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_A8 As Variant
  Dim var_1D4 As String
  Dim var_1F4 As Variant
  Dim var_BC As Variant
  Dim var_164 As Variant
  Dim var_1E4 As Variant
  Dim var_D8 As Variant
  Dim var_D0 As Variant
  Dim var_294 As TextBox
  Dim var_2DC As Variant
  Dim var_2EC As Variant
  Dim var_33C As Variant
  Dim var_35C As Variant
  Dim var_370 As MSHFlexGrid
  Dim var_380 As Variant
  Dim var_410 As Variant
  Dim var_430 As Variant
  Dim var_444 As Variant
  Dim var_454 As Variant
  Dim var_4A4 As Variant
  Dim var_4C4 As Long
  Dim var_578 As Variant
  Dim var_598 As Variant
  Dim var_5C0 As String
  Dim var_610 As Variant
  Dim var_630 As Variant
  Dim var_654 As Variant
  Dim var_6C4 As Variant
  Dim var_6E4 As Variant
  Dim var_708 As Variant
  Dim var_79C As Variant
  Dim var_7E4 As Variant
  Dim var_838 As Variant
  Dim var_86C As Variant
  Dim var_87C As Variant
  Dim var_8CC As Variant
  Dim var_900 As Variant
  Dim var_910 As Variant
  Dim var_A38 As Variant
  Dim var_ACC As MSHFlexGrid
  Dim var_ADC As Variant
  Dim var_B70 As Variant
  Dim var_B80 As Variant
  Dim var_D34 As Variant
  Dim var_D44 As Variant
  Dim var_1F8 As String
  Dim var_1FC As String
  Dim var_208 As String
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_2C8 As Variant
  Dim var_30C As Variant
  Dim var_31C As Variant
  Dim var_3A0 As Variant
  Dim var_3C0 As Variant
  Dim var_3D0 As Variant
  Dim var_3E0 As Variant
  Dim var_3F0 As Variant
  Dim var_400 As Variant
  Dim var_474 As Variant
  Dim var_484 As Variant
  Dim var_508 As Variant
  Dim var_528 As Variant
  Dim var_538 As Variant
  Dim var_548 As Variant
  Dim var_568 As Variant
  Dim var_5D0 As Variant
  Dim var_5E0 As Variant
  Dim var_600 As Variant
  Dim var_674 As Variant
  Dim var_684 As Variant
  Dim var_694 As Variant
  Dim var_728 As Variant
  Dim var_738 As Variant
  Dim var_7BC As Variant
  Dim var_7CC As Variant
  Dim var_7DC As Variant
  Dim var_808 As Variant
  Dim var_818 As Variant
  Dim var_89C As Variant
  Dim var_930 As Variant
  Dim var_9C4 As Variant
  Dim var_B2C As Variant
  Dim var_BB0 As Variant
  Dim var_BD0 As Variant
  Dim var_BF0 As Variant
  Dim var_C10 As Variant
  Dim var_C60 As Variant
  Dim var_CC0 As Variant
  Dim var_CE0 As Variant
  Dim var_DA0 As Variant
  Dim var_DB0 As Variant
  Dim var_DE0 As Variant
  Dim var_DF0 As Variant
  Dim var_E10 As Variant
  Dim var_E14 As String
  Dim var_34C As Variant
  Dim var_260 As Variant
  Dim var_36C As Variant
  Dim var_EA0 As Double
  Dim var_4B4 As Variant
  Dim var_EA8 As Double
  Dim var_4D4 As Variant
  Dim var_7E0 As MSHFlexGrid
  Dim var_EB0 As Double
  Dim var_768 As Variant
  Dim var_788 As Variant
  Dim var_7E8 As String
  Dim var_868 As Variant
  Dim var_A58 As Variant
  Dim var_AFC As Variant
  Dim var_BA0 As Variant
  Dim var_E24 As Variant
  Dim var_C30 As Variant
  Dim var_D54 As Variant
  Dim var_D90 As String
  Dim var_DC As Recordset15
  Dim var_420 As Long
  Dim var_E38 As Variant
  Dim var_E58 As String
  Dim var_A4 As Double
  Dim Me As Variant
  loc_1C8C738: On Error Goto loc_1C92D53
  loc_1C8C73F: var_86 = CByte(0) 'Byte
  loc_1C8C74E: Set var_E4 = Me.Txt
  loc_1C8C754: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1C8C765: Set var_EC = var_E8
  loc_1C8C77D: If (Proc_6_27_EA565C(var_EC, "Room No") = 0) Then
  loc_1C8C787:   Call Txt_GotFocus(CInt(0))
  loc_1C8C78C:   Exit Sub
  loc_1C8C78D: End If
  loc_1C8C797: var_104 = Me.FGrid.Rows
  loc_1C8C7A6: var_114 = 1
  loc_1C8C7BC: Set var_E8 = Me.FGrid
  loc_1C8C7C2: var_154 = var_E8.TextMatrix)
  loc_1C8C7E7: If (1 And (CStr(var_154) = vbNullString)) Then
  loc_1C8C7FD:   var_104 = "Nill Details Can't be Saved"
  loc_1C8C803:   MsgBox(var_104, 0, var_154, var_164, var_174)
  loc_1C8C813:   Exit Sub
  loc_1C8C814: End If
  loc_1C8C82A: If (fdPaymentCharge.ParentForm = "Check Out") Then
  loc_1C8C868:   Set var_E4 = Me.Txt
  loc_1C8C86E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_E8, var_178, "Select Count(*) from Paycharge where LogSite_Code='" & MemVar_1F92078 & "' and folionoDocid='", var_104, -1, var_EC)
  loc_1C8C88F:   unk_544EA0.Execute 0 & var_178 & "' And IsNull(Bill_NO,'')<>'' And Settledate Is Not Null", var_18C, var_154
  loc_1C8C897:   var_114 = var_EC.Fields
  loc_1C8C89F:   var_E8 = var_E8.Tag.Item((CLng(var_104) = 2))
  loc_1C8C8A7:    = var_18C.Value
  loc_1C8C8D8:   If (var_154 > 0) Then
  loc_1C8C8F4:     MsgBox("Already Settled", &H40, var_154, var_164, var_174)
  loc_1C8C904:     Exit Sub
  loc_1C8C905:   End If
  loc_1C8C911:   Set var_E4 = Me.LTxt
  loc_1C8C917:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_E8)
  loc_1C8C93B:   If (CDbl(Val(var_E8.Caption)) <> CDbl(0)) Then
  loc_1C8C951:     var_104 = "Balance Amount must be zero to settle this Bill"
  loc_1C8C957:     MsgBox(var_104, &H40, var_154, var_164, var_174)
  loc_1C8C967:     Exit Sub
  loc_1C8C968:   End If
  loc_1C8C968: End If
  loc_1C8C971: unk_544EA0.BeginTrans var_190
  loc_1C8C97A: var_86 = CByte(1) 'Byte
  loc_1C8C984: var_124 = 0
  loc_1C8C9B1: unk_544EA0.Execute "Select NCUR from enviro where LOGsite_code='" & MemVar_1F92078 & "'", var_104, -1
  loc_1C8C9B9: var_E4 = var_E4.Fields
  loc_1C8C9C1: var_124 = var_E8.Item(var_E8)
  loc_1C8C9C9: var_EC = var_EC.Value
  loc_1C8C9D3: MemVar_1F920EC = CDate(var_154)
  loc_1C8C9EF: var_9A = 0
  loc_1C8CA17: For var_194 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9C = var_194 'Integer
  loc_1C8CA33:   Set var_E4 = Me.FGrid
  loc_1C8CA39:   var_104 = var_E4.TextMatrix)
  loc_1C8CA44:   var_F0 = CStr(var_104)
  loc_1C8CA55:   If (var_F0 = "Dr") Then
  loc_1C8CA5E:     global_56 = "REC"
  loc_1C8CA68:     Call Proc_61_48_10AE4F8(MemVar_1F92044, var_F0, 3, CVar(CLng(var_9C)))
  loc_1C8CA72:     var_9A = 1
  loc_1C8CA99:     unk_544EA0.Execute "Select Name,ShortName from depart where code='" & MemVar_1F92078 & "FOM'", var_104, -1
  loc_1C8CAA4:     Set var_A8 = var_E4
  loc_1C8CAB8:     var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8CABD:     var_134 = 1
  loc_1C8CB12:     unk_544EA0.Execute CStr("Select * From RevMAst where code='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'"), var_1E4, -1
  loc_1C8CB1D:     Set var_BC = var_E8
  loc_1C8CB4D:     If (var_A8.RecordCount > 0) Then
  loc_1C8CB54:       var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8CB5C:       var_134 = CVar(CLng(&HF)) 'Long
  loc_1C8CB98:       If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1C8CB9F:         var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8CBA4:         var_134 = 3
  loc_1C8CBD3:         If (CStr(Me.FGrid.TextMatrix)) = "Cash") Then
  loc_1C8CBD9:           var_C8 = "CASH RECD."
  loc_1C8CBDF:         Else
  loc_1C8CBE3:           var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8CBE8:           var_134 = 2
  loc_1C8CC17:           If (CStr(Me.FGrid.TextMatrix)) = "Credit Card") Then
  loc_1C8CC1A:             var_1A4 = "C.CNo. "
  loc_1C8CC23:             var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8CC61:             var_C8 = CStr(CVar(CLng(&HA)) & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & vbNullString)
  loc_1C8CC77:           Else
  loc_1C8CC7B:             var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8CC80:             var_134 = 2
  loc_1C8CCAF:             If (CStr(Me.FGrid.TextMatrix)) = "Cheque") Then
  loc_1C8CCB2:               var_1A4 = "C.CNo. "
  loc_1C8CCBB:               var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8CCF9:               var_C8 = CStr(CVar(CLng(&HA)) & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & vbNullString)
  loc_1C8CD0F:             Else
  loc_1C8CD13:               var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8CD18:               var_134 = 2
  loc_1C8CD47:               If (CStr(Me.FGrid.TextMatrix)) = "Staff") Then
  loc_1C8CD4A:                 var_1A4 = "STAFF SETTELMENT ("
  loc_1C8CD53:                 var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8CD91:                 var_C8 = CStr(CVar(CLng(&H10)) & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ")")
  loc_1C8CDA7:               Else
  loc_1C8CDAB:                 var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8CDB0:                 var_134 = 2
  loc_1C8CDDF:                 If (CStr(Me.FGrid.TextMatrix)) = "Company") Then
  loc_1C8CDE2:                   var_1A4 = "COMPANY SETTELMENT ("
  loc_1C8CDEB:                   var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8CE29:                   var_C8 = CStr(CVar(CLng(&H16)) & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ")")
  loc_1C8CE3F:                 Else
  loc_1C8CE43:                   var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8CE48:                   var_134 = 2
  loc_1C8CE77:                   If (CStr(Me.FGrid.TextMatrix)) = "Member") Then
  loc_1C8CE7A:                     var_1A4 = "MEMBER SETTELMENT ("
  loc_1C8CE83:                     var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8CEA5:                     var_154 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C8CEAB:                     var_164 = Trim(var_154)
  loc_1C8CEC1:                     var_C8 = CStr(CVar(CLng(&H16)) & var_164 & ")")
  loc_1C8CED7:                   Else
  loc_1C8CEDB:                     var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8CEE0:                     var_134 = 2
  loc_1C8CF0F:                     If (CStr(Me.FGrid.TextMatrix)) = "Room") Then
  loc_1C8CF16:                       var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8CF1E:                       var_134 = CVar(CLng(&H19)) 'Long
  loc_1C8CF39:                       var_1D4 = " ROOM ADJUSTMENT ("
  loc_1C8CF44:                       var_1B4 = 0
  loc_1C8CF68:                       var_178 = "SELECT IsNull(Max(RoomOcc.RoomNo),'') From RoomOcc WHERE (RoomOcc.LOGSITE_CODE='" & MemVar_1F92078 & "') AND CHKOUTDATE IS NULL And DOCID='"
  loc_1C8CF83:                       unk_544EA0.Execute var_178 & CStr(Me.FGrid.TextMatrix)) & "'", var_154, -1
  loc_1C8CF8B:                       var_E8 = var_E8.Fields
  loc_1C8CF93:                       var_1B4 = var_EC.Item(var_EC)
  loc_1C8CF9B:                       var_188 = var_188.Value
  loc_1C8CFB1:                       var_C8 = CStr(var_164 & var_164 & ")")
  loc_1C8CFDC:                     Else
  loc_1C8CFE0:                       var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8CFE5:                       var_134 = 2
  loc_1C8D014:                       If (CStr(Me.FGrid.TextMatrix)) = "Void") Then
  loc_1C8D01A:                         var_C8 = "VOID SETTELMENT"
  loc_1C8D020:                       Else
  loc_1C8D053:                         var_164 = (Trim(CVar(var_BC.Fields.Item("ShortName"))) + " (")
  loc_1C8D069:                         var_EC = var_A8.Fields
  loc_1C8D071:                         var_188 = var_EC.Item("ShortName")
  loc_1C8D079:                         var_174 = var_188.Value
  loc_1C8D081:                         var_1C4 = (var_164 + var_174)
  loc_1C8D08A:                         var_1E4 = (var_164 & var_164 & ")" + ")")
  loc_1C8D08F:                         var_C8 = CStr(var_1E4)
  loc_1C8D0AA:                       End If
  loc_1C8D0AA:                     End If
  loc_1C8D0AA:                   End If
  loc_1C8D0AA:                 End If
  loc_1C8D0AA:               End If
  loc_1C8D0AA:             End If
  loc_1C8D0AA:           End If
  loc_1C8D0AA:         End If
  loc_1C8D0AD:       Else
  loc_1C8D0B1:         var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8D0B9:         var_134 = CVar(CLng(&HF)) 'Long
  loc_1C8D0E2:         var_C8 = CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_1C8D0F1:       End If
  loc_1C8D0F1:     End If
  loc_1C8D0F5:     var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8D0FD:     var_134 = CVar(CLng(9)) 'Long
  loc_1C8D13F:     If (var_BC.RecordCount > 0) Then
  loc_1C8D17E:       If (var_BC.Fields.Item("TaxInc").Value = "Yes") Then
  loc_1C8D18E:         var_124 = "Select sum(TaxStru.Rate) as Rate from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='"
  loc_1C8D1CA:         var_F0 = CStr(var_124 & var_BC.Fields.Item("TaxStru").Value & "' Group By Taxstru.Nature ")
  loc_1C8D1D4:         unk_544EA0.Execute var_F0, var_174, -1
  loc_1C8D1DF:         Set var_D0 = var_EC
  loc_1C8D20D:         If (var_D0.RecordCount > 0) Then
  loc_1C8D216:           var_114 = "Rate"
  loc_1C8D22A:           var_E8 = var_D0.Fields.Item(var_114)
  loc_1C8D24B:           var_154 = (100 + var_E8.Value)
  loc_1C8D26F:           var_D8 = CSng(Round(((CVar(Val(CStr(Me.FGrid.TextMatrix)))) / 100 & var_BC.Fields.Item("TaxStru").Value) * 100), 2))
  loc_1C8D284:         End If
  loc_1C8D292:         Set var_E4 = Me.Txt
  loc_1C8D298:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_D8, var_EC, var_D8)
  loc_1C8D2C0:         Set var_EC = Me.Txt
  loc_1C8D2C6:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_188, var_114, var_E8.Text)
  loc_1C8D2D5:         Proc_6_7_F25D88(var_220, CVar(var_188), var_114)
  loc_1C8D310:         Set var_18C = Me.Txt
  loc_1C8D316:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_294, var_298, 1)
  loc_1C8D31E:         1 = var_294.Tag
  loc_1C8D327:         var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C8D32F:         var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C8D338:         Set var_2DC = Me.FGrid
  loc_1C8D34E:         var_33C = CVar(CLng(var_9C)) 'Long
  loc_1C8D356:         var_35C = CVar(CLng(&H15)) 'Long
  loc_1C8D375:         var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C8D37A:         var_430 = 1
  loc_1C8D39D:         var_4A4 = CVar(CLng(var_9C)) 'Long
  loc_1C8D3A2:         var_4C4 = 2
  loc_1C8D3C5:         var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C8D3CD:         var_598 = CVar(CLng(&H12)) 'Long
  loc_1C8D3F6:         var_610 = CVar(CLng(var_9C)) 'Long
  loc_1C8D3FB:         var_630 = 5
  loc_1C8D41E:         var_6C4 = CVar(CLng(var_9C)) 'Long
  loc_1C8D423:         var_6E4 = 6
  loc_1C8D436:         var_708 = Me.FGrid.TextMatrix)
  loc_1C8D45D:         var_79C = Me.FGrid.TextMatrix)
  loc_1C8D477:         Set var_7E0 = Me.Txt
  loc_1C8D47D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_7E4, var_7E8, var_79C, CVar(CLng(7)), CVar(CLng(var_9C)), var_708)
  loc_1C8D485:         var_6E4 = var_7E4.Text
  loc_1C8D49F:         Set var_86C = Me.FGrid
  loc_1C8D4A5:         var_87C = var_86C.TextMatrix)
  loc_1C8D4CC:         var_910 = Me.FGrid.TextMatrix)
  loc_1C8D4F3:         var_9A4 = Me.FGrid.TextMatrix)
  loc_1C8D52B:         Proc_6_7_F25D88(var_A58, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_9A4, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_910)
  loc_1C8D55C:         Proc_6_17_EAA2B0(var_AFC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1B)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1C8D576:         Set var_B70 = Me.FGrid
  loc_1C8D58D:         Proc_6_7_F25D88(var_BA0, CVar(CStr(var_B70.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), var_87C)
  loc_1C8D5A0:         Proc_6_7_F25D88(var_C30, Date, CVar(CLng(&HA)), CVar(CLng(var_9C)))
  loc_1C8D5D1:         Proc_6_39_E7C810(var_D54, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H18)), CVar(CLng(var_9C)))
  loc_1C8D5E4:         Set var_D88 = Me.Txt
  loc_1C8D5EA:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_D8C, var_D90)
  loc_1C8D5F2:         var_6C4 = var_D8C.Tag
  loc_1C8D60B:         var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,ModeSet,BatchNo,FolioNoDocid,LogSite_Code) Values ('" & var_F0
  loc_1C8D61A:         var_180 = CStr(var_9A)
  loc_1C8D61E:         var_184 = var_178 & "'," & var_180
  loc_1C8D62F:         var_1FC = var_184 & ",'" & global_56
  loc_1C8D645:         var_208 = var_1FC & "','" & CStr(global_108)
  loc_1C8D683:         var_280 = CVar(var_208 & "','" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_220 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_1C8D6BE:         var_3A0 = var_280 & "','" & CVar(var_298) & "','" & CVar(CStr(var_2DC.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C8D6F9:         var_508 = var_3A0 & "','" & CVar(var_C8) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C8D735:         var_674 = var_508 & "',0," & CVar(var_D8) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C8D78D:         var_89C = var_674 & "'," & "'" & CVar(CStr(var_708)) & "','" & CVar(CStr(var_79C)) & "'," & CVar(var_7E8) & ",'" & CVar(CStr(var_87C)) 
  loc_1C8D7E5:         var_BB0 = var_89C & "','" & CVar(CStr(var_910)) & "','" & CVar(CStr(var_9A4)) & "'," & var_A58 & "," & var_AFC & "," & var_BA0 
  loc_1C8D831:         var_CC0 = var_BB0 & ",'" & CVar(MemVar_1F920C8) & "'," & var_C30 & ",'A','" & CVar(MemVar_1F92078) & "FOM','" & CVar(global_164) 
  loc_1C8D87E:         unk_544EA0.Execute CStr(var_CC0 & "'," & var_D54 & ",'" & CVar(var_D90) & "','" & CVar(MemVar_1F92078) & "')"), var_E34, -1
  loc_1C8D9B0:         var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8D9C8:         var_104 = Me.FGrid.TextMatrix)
  loc_1C8D9E2:         Set var_E8 = Me.Txt
  loc_1C8D9E8:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_1FC, var_104, 1)
  loc_1C8D9F0:         var_114 = var_EC.Text
  loc_1C8DA13:         Set var_188 = Me.Txt
  loc_1C8DA19:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_18C, var_208)
  loc_1C8DA21:         var_E38 = var_18C.Text
  loc_1C8DA51:         var_220 = Trim(CVar(Format$(Time, "HH:mm")))
  loc_1C8DA64:         Set var_294 = Me.Txt
  loc_1C8DA6A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2DC, var_F0, 1)
  loc_1C8DA72:         1 = var_2DC.Tag
  loc_1C8DA7B:         var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C8DA83:         var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C8DAA3:         var_250 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C8DAAC:         var_31C = CVar(CLng(var_9C)) 'Long
  loc_1C8DAB1:         var_34C = 1
  loc_1C8DAC4:         var_260 = Me.FGrid.TextMatrix)
  loc_1C8DAD4:         var_36C = CVar(CLng(var_9C)) 'Long
  loc_1C8DAD9:         var_3D0 = 1
  loc_1C8DAEC:         var_270 = Me.FGrid.TextMatrix)
  loc_1C8DAFC:         var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C8DB04:         var_430 = CVar(CLng(9)) 'Long
  loc_1C8DB26:         var_EA0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C8DB2D:         var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C8DB35:         var_4B4 = CVar(CLng(&H12)) 'Long
  loc_1C8DB57:         var_EA8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C8DB5E:         var_4D4 = CVar(CLng(var_9C)) 'Long
  loc_1C8DB63:         var_538 = 5
  loc_1C8DB87:         var_2C8 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C8DB90:         var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C8DBB9:         var_30C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C8DBF3:         Set var_7E4 = Me.Txt
  loc_1C8DBF9:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_86C, var_180, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1C8DC01:         var_578 = var_86C.Text
  loc_1C8DC0E:         var_EB0 = Val(var_180)
  loc_1C8DC15:         var_630 = CVar(CLng(var_9C)) 'Long
  loc_1C8DC1D:         var_684 = CVar(CLng(&HA)) 'Long
  loc_1C8DC2C:         var_380 = Me.FGrid.TextMatrix)
  loc_1C8DC3C:         var_6C4 = CVar(CLng(var_9C)) 'Long
  loc_1C8DC44:         var_6E4 = CVar(CLng(&HB)) 'Long
  loc_1C8DC89:         var_3C0 = Date
  loc_1C8DC91:         var_3E0 = Date
  loc_1C8DC99:         var_400 = Date
  loc_1C8DCAC:         Set var_ACC = Me.Txt
  loc_1C8DCB2:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B70, var_184, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1C8DCBA:         var_6E4 = var_B70.Tag
  loc_1C8DCC3:         var_788 = CVar(CLng(var_9C)) 'Long
  loc_1C8DCC8:         var_818 = 3
  loc_1C8DCDB:         var_454 = Me.FGrid.TextMatrix)
  loc_1C8DCEF:         var_E94 = 0
  loc_1C8DD02:         var_E8C = 0
  loc_1C8DD20:         var_E80 = "A"
  loc_1C8DD8F:         var_D90 = vbNullString
  loc_1C8DDEE:         Proc_96_8_1CC2560(CStr(var_104), var_1FC, var_9A, global_56, global_108, MemVar_1F92070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_208))
  loc_1C8DE97:       Else
  loc_1C8DEA5:         Set var_E4 = Me.Txt
  loc_1C8DEAB:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, CStr(var_220), var_F0, CStr(var_250))
  loc_1C8DEB3:         CStr(var_260) = var_E8.Text
  loc_1C8DED3:         Set var_EC = Me.Txt
  loc_1C8DED9:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_188, CStr(var_270))
  loc_1C8DEE8:         Proc_6_7_F25D88(var_220, CVar(var_188), var_D90)
  loc_1C8DF12:         var_E3C = Format$(Time, "HH:mm")
  loc_1C8DF23:         Set var_18C = Me.Txt
  loc_1C8DF29:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_294, var_298, 1)
  loc_1C8DF31:         1 = var_294.Tag
  loc_1C8DF3A:         var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C8DF42:         var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C8DF4B:         Set var_2DC = Me.FGrid
  loc_1C8DF61:         var_33C = CVar(CLng(var_9C)) 'Long
  loc_1C8DF69:         var_35C = CVar(CLng(&H15)) 'Long
  loc_1C8DF88:         var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C8DF8D:         var_430 = 1
  loc_1C8DFB0:         var_4A4 = CVar(CLng(var_9C)) 'Long
  loc_1C8DFB5:         var_4C4 = 2
  loc_1C8DFD8:         var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C8DFE0:         var_598 = CVar(CLng(&H12)) 'Long
  loc_1C8E009:         var_610 = CVar(CLng(var_9C)) 'Long
  loc_1C8E00E:         var_630 = 5
  loc_1C8E031:         var_6C4 = CVar(CLng(var_9C)) 'Long
  loc_1C8E036:         var_6E4 = 6
  loc_1C8E049:         var_708 = Me.FGrid.TextMatrix)
  loc_1C8E070:         var_79C = Me.FGrid.TextMatrix)
  loc_1C8E08A:         Set var_7E0 = Me.Txt
  loc_1C8E090:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_7E4, var_7E8, var_79C, CVar(CLng(7)), CVar(CLng(var_9C)), var_708)
  loc_1C8E098:         var_6E4 = var_7E4.Text
  loc_1C8E0B2:         Set var_86C = Me.FGrid
  loc_1C8E0B8:         var_87C = var_86C.TextMatrix)
  loc_1C8E0DF:         var_910 = Me.FGrid.TextMatrix)
  loc_1C8E106:         var_9A4 = Me.FGrid.TextMatrix)
  loc_1C8E13E:         Proc_6_7_F25D88(var_A58, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_9A4, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_910)
  loc_1C8E16F:         Proc_6_17_EAA2B0(var_AFC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1B)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1C8E189:         Set var_B70 = Me.FGrid
  loc_1C8E1A0:         Proc_6_7_F25D88(var_BA0, CVar(CStr(var_B70.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), var_87C)
  loc_1C8E1B3:         Proc_6_7_F25D88(var_C30, Date, CVar(CLng(&HA)), CVar(CLng(var_9C)))
  loc_1C8E1E4:         Proc_6_39_E7C810(var_D54, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H18)), CVar(CLng(var_9C)))
  loc_1C8E1F7:         Set var_D88 = Me.Txt
  loc_1C8E1FD:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_D8C, var_D90)
  loc_1C8E205:         var_6C4 = var_D8C.Tag
  loc_1C8E21E:         var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,ModeSet,BatchNo,FolioNoDocid,LogSite_Code) Values ('" & var_F0
  loc_1C8E22D:         var_180 = CStr(var_9A)
  loc_1C8E231:         var_184 = var_178 & "'," & var_180
  loc_1C8E242:         var_1FC = var_184 & ",'" & global_56
  loc_1C8E258:         var_208 = var_1FC & "','" & CStr(global_108)
  loc_1C8E29F:         var_290 = CVar(var_208 & "','" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_220 & ",'" & CVar(var_E3C) & "','" 
  loc_1C8E2DA:         var_3C0 = var_290 & CVar(var_298) & "','" & CVar(CStr(var_2DC.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_1C8E315:         var_528 = var_3C0 & CVar(var_C8) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," 
  loc_1C8E351:         var_694 = var_528 & CVar(var_D8) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," 
  loc_1C8E3A0:         var_89C = var_694 & "'" & CVar(CStr(var_708)) & "','" & CVar(CStr(var_79C)) & "'," & CVar(var_7E8) & ",'" & CVar(CStr(var_87C)) 
  loc_1C8E3E1:         var_A88 = var_89C & "','" & CVar(CStr(var_910)) & "','" & CVar(CStr(var_9A4)) & "'," & var_A58 & "," 
  loc_1C8E3F1:         var_B2C = var_A88 & var_AFC & "," 
  loc_1C8E401:         var_BD0 = var_B2C & var_BA0 & ",'" 
  loc_1C8E424:         var_C60 = var_BD0 & CVar(MemVar_1F920C8) & "'," & var_C30 & ",'A','" 
  loc_1C8E467:         var_DB0 = var_C60 & CVar(MemVar_1F92078) & "FOM','" & CVar(global_164) & "'," & var_D54 & ",'" & CVar(var_D90) 
  loc_1C8E483:         var_E10 = var_DB0 & "','" & CVar(MemVar_1F92078) & "')" 
  loc_1C8E491:         unk_544EA0.Execute CStr(var_E10), var_E34, -1
  loc_1C8E5C3:         var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8E5DB:         var_104 = Me.FGrid.TextMatrix)
  loc_1C8E5F5:         Set var_E8 = Me.Txt
  loc_1C8E5FB:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_1FC, var_104, 1)
  loc_1C8E603:         var_114 = var_EC.Text
  loc_1C8E626:         Set var_188 = Me.Txt
  loc_1C8E62C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_18C, var_208)
  loc_1C8E634:         var_E38 = var_18C.Text
  loc_1C8E664:         var_220 = Trim(CVar(Format$(Time, "HH:mm")))
  loc_1C8E677:         Set var_294 = Me.Txt
  loc_1C8E67D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2DC, var_F0, 1)
  loc_1C8E685:         1 = var_2DC.Tag
  loc_1C8E68E:         var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C8E696:         var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C8E6B6:         var_250 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C8E6BF:         var_31C = CVar(CLng(var_9C)) 'Long
  loc_1C8E6C4:         var_34C = 1
  loc_1C8E6D7:         var_260 = Me.FGrid.TextMatrix)
  loc_1C8E6E7:         var_36C = CVar(CLng(var_9C)) 'Long
  loc_1C8E6EC:         var_3D0 = 1
  loc_1C8E6FF:         var_270 = Me.FGrid.TextMatrix)
  loc_1C8E70F:         var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C8E717:         var_430 = CVar(CLng(9)) 'Long
  loc_1C8E739:         var_EA0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C8E740:         var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C8E748:         var_4B4 = CVar(CLng(&H12)) 'Long
  loc_1C8E76A:         var_EA8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C8E771:         var_4D4 = CVar(CLng(var_9C)) 'Long
  loc_1C8E776:         var_538 = 5
  loc_1C8E79A:         var_2C8 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C8E7A3:         var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C8E7CC:         var_30C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C8E806:         Set var_7E4 = Me.Txt
  loc_1C8E80C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_86C, var_180, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1C8E814:         var_578 = var_86C.Text
  loc_1C8E821:         var_EB0 = Val(var_180)
  loc_1C8E828:         var_630 = CVar(CLng(var_9C)) 'Long
  loc_1C8E830:         var_684 = CVar(CLng(&HA)) 'Long
  loc_1C8E83F:         var_380 = Me.FGrid.TextMatrix)
  loc_1C8E84F:         var_6C4 = CVar(CLng(var_9C)) 'Long
  loc_1C8E857:         var_6E4 = CVar(CLng(&HB)) 'Long
  loc_1C8E89C:         var_3C0 = Date
  loc_1C8E8A4:         var_3E0 = Date
  loc_1C8E8AC:         var_400 = Date
  loc_1C8E8BF:         Set var_ACC = Me.Txt
  loc_1C8E8C5:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B70, var_184, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1C8E8CD:         var_6E4 = var_B70.Tag
  loc_1C8E8D6:         var_788 = CVar(CLng(var_9C)) 'Long
  loc_1C8E8DB:         var_818 = 3
  loc_1C8E8EE:         var_454 = Me.FGrid.TextMatrix)
  loc_1C8E902:         var_E94 = 0
  loc_1C8E915:         var_E8C = 0
  loc_1C8E933:         var_E80 = "A"
  loc_1C8E9A2:         var_D90 = vbNullString
  loc_1C8EA01:         Proc_96_8_1CC2560(CStr(var_104), var_1FC, var_9A, global_56, global_108, MemVar_1F92070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_208))
  loc_1C8EAA7:       End If
  loc_1C8EAA7:     End If
  loc_1C8EAB1:     If (Len(var_C0) = 0) Then
  loc_1C8EAC5:       Set var_E4 = Me.Txt
  loc_1C8EACB:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_C0, CStr(var_220), var_F0)
  loc_1C8EAD3:       CStr(var_250) = var_E8.Text
  loc_1C8EADC:       var_C0 = CStr(var_260) & var_F0
  loc_1C8EAEC:     Else
  loc_1C8EB04:       Set var_E4 = Me.Txt
  loc_1C8EB0A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_C0 & "','")
  loc_1C8EB12:       CStr(var_270) = var_E8.Text
  loc_1C8EB1B:       var_C0 = var_D90 & var_F0
  loc_1C8EB2C:     End If
  loc_1C8EB3A:     Set var_E4 = Me.Txt
  loc_1C8EB40:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_E8, var_F0)
  loc_1C8EB48:     var_EA0 = var_E8.Tag
  loc_1C8EB50:     var_C4 = var_F0
  loc_1C8EB5E:     var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8EB63:     var_134 = 2
  loc_1C8EB81:     var_F0 = CStr(Me.FGrid.TextMatrix))
  loc_1C8EB92:     If (var_F0 = "Room") Then
  loc_1C8EB95:       var_1A4 = " ROOM ADJUSTMENT ("
  loc_1C8EBA6:       var_134 = CVar(CLng(&H13)) 'Long
  loc_1C8EBDC:       var_C8 = CStr(var_134 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ")")
  loc_1C8EBF5:       var_9A = (var_9A + 1)
  loc_1C8EC06:       Set var_E4 = Me.Txt
  loc_1C8EC0C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_9A, CVar(CLng(var_9C)))
  loc_1C8EC14:       var_1A4 = var_E8.Text
  loc_1C8EC34:       Set var_EC = Me.Txt
  loc_1C8EC3A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_188, var_134)
  loc_1C8EC49:       Proc_6_7_F25D88(var_220, CVar(var_188))
  loc_1C8EC84:       Set var_18C = Me.Txt
  loc_1C8EC8A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_294, var_298, 1)
  loc_1C8EC92:       1 = var_294.Tag
  loc_1C8EC9B:       var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C8ECA3:       var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C8ECC2:       var_33C = CVar(CLng(var_9C)) 'Long
  loc_1C8ECCA:       var_35C = CVar(CLng(&H15)) 'Long
  loc_1C8ECE9:       var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C8ECEE:       var_430 = 1
  loc_1C8ECFB:       Set var_444 = Me.FGrid
  loc_1C8ED11:       var_4A4 = CVar(CLng(var_9C)) 'Long
  loc_1C8ED16:       var_4C4 = 2
  loc_1C8ED39:       var_538 = CVar(CLng(var_9C)) 'Long
  loc_1C8ED41:       var_578 = CVar(CLng(9)) 'Long
  loc_1C8ED5B:       var_5C0 = CStr(Me.FGrid.TextMatrix))
  loc_1C8ED6A:       var_5D0 = CVar(CLng(var_9C)) 'Long
  loc_1C8ED72:       var_610 = CVar(CLng(&H12)) 'Long
  loc_1C8ED9B:       var_684 = CVar(CLng(var_9C)) 'Long
  loc_1C8EDA0:       var_6C4 = 5
  loc_1C8EDC3:       var_738 = CVar(CLng(var_9C)) 'Long
  loc_1C8EDC8:       var_768 = 6
  loc_1C8EDEB:       var_7CC = CVar(CLng(var_9C)) 'Long
  loc_1C8EDF3:       var_838 = CVar(CLng(7)) 'Long
  loc_1C8EE12:       var_868 = CVar(CLng(var_9C)) 'Long
  loc_1C8EE1A:       var_8CC = CVar(CLng(&H17)) 'Long
  loc_1C8EE50:       var_89C = Me.FGrid.TextMatrix)
  loc_1C8EE71:       Set var_900 = Me.FGrid
  loc_1C8EE77:       var_930 = var_900.TextMatrix)
  loc_1C8EE9E:       var_9C4 = Me.FGrid.TextMatrix)
  loc_1C8EEC5:       var_A58 = Me.FGrid.TextMatrix)
  loc_1C8EED6:       Proc_6_7_F25D88(var_A88, CVar(CStr(var_A58)), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_9C4, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_930)
  loc_1C8EEF6:       var_AFC = Me.FGrid.TextMatrix)
  loc_1C8EF07:       Proc_6_17_EAA2B0(var_B2C, CVar(CStr(var_AFC)), CVar(CLng(&H1B)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1C8EF27:       var_BA0 = Me.FGrid.TextMatrix)
  loc_1C8EF38:       Proc_6_7_F25D88(var_BD0, CVar(CStr(var_BA0)), CVar(CLng(&HC)), CVar(CLng(var_9C)), var_89C)
  loc_1C8EF4B:       Proc_6_7_F25D88(var_C60, Date, CVar(CLng(&HA)), CVar(CLng(var_9C)))
  loc_1C8EF54:       var_DE0 = CVar(CLng(var_9C)) 'Long
  loc_1C8EF5C:       var_E24 = CVar(CLng(&H19)) 'Long
  loc_1C8EF6B:       var_D34 = Me.FGrid.TextMatrix)
  loc_1C8EF8B:       var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid,LogSite_Code) Values ('" & var_F0
  loc_1C8EFDA:       var_164 = CVar(var_178 & "'," & CStr(var_9A) & ",'" & global_56 & "','" & CStr(global_108) & "','" & MemVar_1F92070 & "','") 'String
  loc_1C8F01F:       var_2C8 = var_164 & Trim(CVar(Me.LblVPrefix)) & "'," & var_220 & ",'" & CVar(Format$(Time, "HH:mm")) & "','" & CVar(var_298) & "','" 
  loc_1C8F065:       var_474 = var_2C8 & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(var_C8) & "','" & CVar(CStr(var_444.TextMatrix))) 
  loc_1C8F0A1:       var_600 = var_474 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(var_5C0)) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C8F0E6:       var_7DC = var_600 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C8F136:       var_A38 = var_7DC & "'," & CVar(CStr(Me.FGrid.TextMatrix))) & ",'" & CVar(CStr(var_89C)) & "','" & CVar(CStr(var_930)) & "','" & CVar(CStr(var_9C4)) 
  loc_1C8F182:       var_C30 = var_A38 & "'," & var_A88 & "," & var_B2C & "," & var_BD0 & ",'" & CVar(MemVar_1F920C8) & "'," 
  loc_1C8F1CC:       var_DA0 = var_C30 & var_C60 & ",'A','" & CVar(MemVar_1F92078) & "FOM','" & CVar(CStr(var_D34)) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_1C8F1DA:       unk_544EA0.Execute CStr(var_DA0), var_DB0, -1
  loc_1C8F2FE:     End If
  loc_1C8F301:   Else
  loc_1C8F328:     var_F0 = CStr(Me.FGrid.TextMatrix))
  loc_1C8F339:     If (var_F0 = "Cr") Then
  loc_1C8F342:       global_56 = "REV"
  loc_1C8F34C:       Call Proc_61_48_10AE4F8(MemVar_1F92044, var_F0, 3, CVar(CLng(var_9C)), var_D88, var_D34)
  loc_1C8F356:       var_9A = 1
  loc_1C8F367:       Set var_E4 = Me.Txt
  loc_1C8F36D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_E8, var_F0, var_9A, var_E24)
  loc_1C8F375:       var_DE0 = var_E8.Tag
  loc_1C8F37E:       var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F383:       var_134 = 1
  loc_1C8F390:       Set var_EC = Me.FGrid
  loc_1C8F3CD:       var_1C4 = CVar("Select * from PlanDetails where docid='" & var_F0 & "' and Revcode='") & Trim(CVar(CStr(var_EC.TextMatrix)))) 
  loc_1C8F3E4:       unk_544EA0.Execute CStr(var_1C4 & "'"), var_220, -1
  loc_1C8F3EF:       Set var_A8 = var_188
  loc_1C8F42B:       If (var_A8.RecordCount > 0) Then
  loc_1C8F431:         var_CC = "Yes"
  loc_1C8F438:         var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8F440:         var_134 = CVar(CLng(9)) 'Long
  loc_1C8F4AA:         If (var_A8.Fields.Item("TaxInc").Value = "Yes") Then
  loc_1C8F4F6:           var_174 = "SELECT * FROM REVMAST WHERE CODE='" & Trim(CVar(var_A8.Fields.Item("RevCode"))) & "'" 
  loc_1C8F504:           unk_544EA0.Execute CStr(var_174), var_1C4, -1
  loc_1C8F50F:           Set var_DC = var_EC
  loc_1C8F53D:           If (var_DC.RecordCount > 0) Then
  loc_1C8F54D:             var_124 = "Select sum(TaxStru.Rate) as Rate from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='"
  loc_1C8F589:             var_F0 = CStr(var_124 & var_DC.Fields.Item("TaxStru").Value & "' Group By Taxstru.Nature ")
  loc_1C8F593:             unk_544EA0.Execute var_F0, var_174, -1
  loc_1C8F59E:             Set var_D0 = var_EC
  loc_1C8F5CC:             If (var_D0.RecordCount > 0) Then
  loc_1C8F5D5:               var_114 = "Rate"
  loc_1C8F5E9:               var_E8 = var_D0.Fields.Item(var_114)
  loc_1C8F5FE:               var_134 = CVar(Val(CStr(Me.FGrid.TextMatrix)))) 'Double
  loc_1C8F60A:               var_154 = (100 + var_E8.Value)
  loc_1C8F62E:               var_D8 = CSng(Round(((var_134 / 100 & var_DC.Fields.Item("TaxStru").Value) * 100), 2))
  loc_1C8F643:             End If
  loc_1C8F643:           End If
  loc_1C8F651:           Set var_E4 = Me.Txt
  loc_1C8F657:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_D8, var_EC, var_EC)
  loc_1C8F65F:           var_D8 = var_E8.Text
  loc_1C8F67F:           Set var_EC = Me.Txt
  loc_1C8F685:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_188, var_134, var_114)
  loc_1C8F694:           Proc_6_7_F25D88(var_220, CVar(var_188), var_188)
  loc_1C8F6CF:           Set var_18C = Me.Txt
  loc_1C8F6D5:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_294, var_298, 1)
  loc_1C8F6DD:           1 = var_294.Tag
  loc_1C8F6E6:           var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C8F6EE:           var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C8F6F7:           Set var_2DC = Me.FGrid
  loc_1C8F6FD:           var_2EC = var_2DC.TextMatrix)
  loc_1C8F717:           Set var_370 = Me.Txt
  loc_1C8F71D:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_444, var_5C0, var_2EC)
  loc_1C8F725:           var_1F4 = var_444.Tag
  loc_1C8F72E:           var_34C = CVar(CLng(var_9C)) 'Long
  loc_1C8F736:           var_36C = CVar(CLng(&HF)) 'Long
  loc_1C8F755:           var_3F0 = CVar(CLng(var_9C)) 'Long
  loc_1C8F75A:           var_420 = 1
  loc_1C8F77D:           var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C8F785:           var_4B4 = CVar(CLng(9)) 'Long
  loc_1C8F7BE:           var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C8F7C6:           var_598 = CVar(CLng(&H12)) 'Long
  loc_1C8F7E0:           var_E14 = CStr(Me.FGrid.TextMatrix))
  loc_1C8F7EF:           var_610 = CVar(CLng(var_9C)) 'Long
  loc_1C8F7F4:           var_630 = 5
  loc_1C8F807:           var_654 = Me.FGrid.TextMatrix)
  loc_1C8F81C:           var_6E4 = 6
  loc_1C8F82F:           var_708 = Me.FGrid.TextMatrix)
  loc_1C8F856:           var_79C = Me.FGrid.TextMatrix)
  loc_1C8F870:           Set var_86C = Me.Txt
  loc_1C8F876:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_900, var_E3C, var_79C, CVar(CLng(7)), CVar(CLng(var_9C)), var_708)
  loc_1C8F87E:           var_6E4 = var_900.Text
  loc_1C8F89E:           var_87C = Me.FGrid.TextMatrix)
  loc_1C8F8C5:           var_910 = Me.FGrid.TextMatrix)
  loc_1C8F8EC:           var_9A4 = Me.FGrid.TextMatrix)
  loc_1C8F90D:           Set var_B70 = Me.FGrid
  loc_1C8F913:           var_A38 = var_B70.TextMatrix)
  loc_1C8F924:           Proc_6_7_F25D88(var_A58, CVar(CStr(var_A38)), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_9A4, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_910)
  loc_1C8F944:           var_ADC = Me.FGrid.TextMatrix)
  loc_1C8F955:           Proc_6_17_EAA2B0(var_AFC, CVar(CStr(var_ADC)), CVar(CLng(&H1B)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1C8F975:           var_B80 = Me.FGrid.TextMatrix)
  loc_1C8F986:           Proc_6_7_F25D88(var_BA0, CVar(CStr(var_B80)), CVar(CLng(&HC)), CVar(CLng(var_9C)), var_87C)
  loc_1C8F999:           Proc_6_7_F25D88(var_C30, Date, CVar(CLng(&HA)), CVar(CLng(var_9C)))
  loc_1C8F9E3:           Set var_F04 = Me.Txt
  loc_1C8F9E9:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_F08, var_E58)
  loc_1C8FA0A:           var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FixedChargeCode,FolioNoDocid,LogSite_Code) Values ('" & var_F0
  loc_1C8FA19:           var_180 = CStr(var_9A)
  loc_1C8FA1D:           var_184 = var_178 & "'," & var_180
  loc_1C8FA2E:           var_1FC = var_184 & ",'" & global_56
  loc_1C8FA44:           var_208 = var_1FC & "','" & CStr(global_108)
  loc_1C8FA82:           var_280 = CVar(var_208 & "','" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_220 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_1C8FAD0:           var_400 = var_280 & "','" & CVar(var_298) & "','" & CVar(CStr(var_2EC)) & "','" & CVar(var_5C0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C8FB0C:           var_548 = var_400 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(var_D8))) 
  loc_1C8FB65:           var_7BC = var_548 & "," & CVar(Val(var_E14)) & ",'" & CVar(CStr(var_F08.Tag)) & "'," & "'" & CVar(CStr(var_708)) & "','" & CVar(CStr(var_79C)) 
  loc_1C8FBB4:           var_9C4 = var_7BC & "'," & CVar(var_E3C) & ",'" & CVar(CStr(var_87C)) & "','" & CVar(CStr(var_910)) & "','" & CVar(CStr(var_9A4)) 
  loc_1C8FC00:           var_C10 = var_9C4 & "'," & var_A58 & "," & var_AFC & "," & var_BA0 & ",'" & CVar(MemVar_1F920C8) & "'," 
  loc_1C8FC2D:           var_CE0 = var_C10 & var_C30 & ",'A','" & CVar(MemVar_1F92078) & "FOM','" & CVar(Proc_6_38_E68A98(var_CC, CVar(CLng(var_9C)))) 
  loc_1C8FC6C:           var_DF0 = var_CE0 & "','" & var_A8.Fields.Item("ChrgCode").Value & "','" & CVar(var_E58) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_1C8FC7A:           unk_544EA0.Execute CStr(var_DF0), var_E10, -1
  loc_1C8FDB6:           var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C8FDBB:           var_134 = 1
  loc_1C8FDCE:           var_104 = Me.FGrid.TextMatrix)
  loc_1C8FDE8:           Set var_E8 = Me.Txt
  loc_1C8FDEE:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_1FC, var_104)
  loc_1C8FDF6:           var_134 = var_EC.Text
  loc_1C8FE19:           Set var_188 = Me.Txt
  loc_1C8FE1F:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_18C, var_208)
  loc_1C8FE27:           var_114 = var_18C.Text
  loc_1C8FE57:           var_220 = Trim(CVar(Format$(Time, "HH:mm")))
  loc_1C8FE6A:           Set var_294 = Me.Txt
  loc_1C8FE70:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2DC, var_F0, 1)
  loc_1C8FE78:           1 = var_2DC.Tag
  loc_1C8FE81:           var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C8FE89:           var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C8FEA9:           var_250 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C8FEB2:           var_31C = CVar(CLng(var_9C)) 'Long
  loc_1C8FEB7:           var_34C = 1
  loc_1C8FEC4:           Set var_444 = Me.FGrid
  loc_1C8FECA:           var_260 = var_444.TextMatrix)
  loc_1C8FEDA:           var_36C = CVar(CLng(var_9C)) 'Long
  loc_1C8FEDF:           var_3D0 = 1
  loc_1C8FEF2:           var_270 = Me.FGrid.TextMatrix)
  loc_1C8FF02:           var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C8FF0A:           var_430 = CVar(CLng(9)) 'Long
  loc_1C8FF2C:           var_EA0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C8FF33:           var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C8FF3B:           var_4B4 = CVar(CLng(&H12)) 'Long
  loc_1C8FF5D:           var_EA8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C8FF64:           var_4D4 = CVar(CLng(var_9C)) 'Long
  loc_1C8FF69:           var_538 = 5
  loc_1C8FF8D:           var_2C8 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C8FF96:           var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C8FFBF:           var_30C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C8FFF9:           Set var_7E4 = Me.Txt
  loc_1C8FFFF:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_86C, var_180, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1C90007:           var_578 = var_86C.Text
  loc_1C90014:           var_EB0 = Val(var_180)
  loc_1C9001B:           var_630 = CVar(CLng(var_9C)) 'Long
  loc_1C9002C:           Set var_900 = Me.FGrid
  loc_1C9004A:           var_6E4 = CVar(CLng(&HB)) 'Long
  loc_1C9008F:           var_3C0 = Date
  loc_1C90097:           var_3E0 = Date
  loc_1C9009F:           var_400 = Date
  loc_1C900B2:           Set var_ACC = Me.Txt
  loc_1C900B8:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B70, var_184, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1C900C0:           var_6E4 = var_B70.Tag
  loc_1C900ED:           var_F10 = Proc_6_38_E68A98(CVar(var_A8.Fields.Item("ChrgCode")), CVar(CLng(var_9C)), var_900.TextMatrix), CVar(CLng(&HA)))
  loc_1C900F5:           var_E98 = 0
  loc_1C90100:           var_E94 = 0
  loc_1C9012D:           var_E80 = "A"
  loc_1C9019C:           var_D90 = vbNullString
  loc_1C901FB:           Proc_96_8_1CC2560(CStr(var_104), var_1FC, var_9A, global_56, global_108, MemVar_1F92070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_208))
  loc_1C902A6:         Else
  loc_1C902B4:           Set var_E4 = Me.Txt
  loc_1C902BA:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, CStr(var_220), var_F0, CStr(var_250))
  loc_1C902C2:           CStr(var_260) = var_E8.Text
  loc_1C902E2:           Set var_EC = Me.Txt
  loc_1C902E8:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_188, CStr(var_270))
  loc_1C902F7:           Proc_6_7_F25D88(var_220, CVar(var_188), var_D90)
  loc_1C90332:           Set var_18C = Me.Txt
  loc_1C90338:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_294, var_298, 1)
  loc_1C90340:           1 = var_294.Tag
  loc_1C90349:           var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C90351:           var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C9035A:           Set var_2DC = Me.FGrid
  loc_1C90360:           var_2EC = var_2DC.TextMatrix)
  loc_1C9037A:           Set var_370 = Me.Txt
  loc_1C90380:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_444, var_5C0, var_2EC)
  loc_1C90388:           var_1F4 = var_444.Tag
  loc_1C90391:           var_34C = CVar(CLng(var_9C)) 'Long
  loc_1C90399:           var_36C = CVar(CLng(&HF)) 'Long
  loc_1C903B8:           var_3F0 = CVar(CLng(var_9C)) 'Long
  loc_1C903BD:           var_420 = 1
  loc_1C903E0:           var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C903E8:           var_4B4 = CVar(CLng(9)) 'Long
  loc_1C90411:           var_538 = CVar(CLng(var_9C)) 'Long
  loc_1C90419:           var_578 = CVar(CLng(&H12)) 'Long
  loc_1C90442:           var_5D0 = CVar(CLng(var_9C)) 'Long
  loc_1C90447:           var_610 = 5
  loc_1C9045A:           var_5E0 = Me.FGrid.TextMatrix)
  loc_1C9046F:           var_6C4 = 6
  loc_1C90482:           var_694 = Me.FGrid.TextMatrix)
  loc_1C904A9:           var_728 = Me.FGrid.TextMatrix)
  loc_1C904C3:           Set var_86C = Me.Txt
  loc_1C904C9:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_900, var_E14, var_728, CVar(CLng(7)), CVar(CLng(var_9C)), var_694)
  loc_1C904D1:           var_6C4 = var_900.Text
  loc_1C904F1:           var_808 = Me.FGrid.TextMatrix)
  loc_1C90518:           var_89C = Me.FGrid.TextMatrix)
  loc_1C9053F:           var_930 = Me.FGrid.TextMatrix)
  loc_1C90560:           Set var_B70 = Me.FGrid
  loc_1C90577:           Proc_6_7_F25D88(var_A38, CVar(CStr(var_B70.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_930, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_89C)
  loc_1C905A8:           Proc_6_17_EAA2B0(var_ADC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1B)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1C905D9:           Proc_6_7_F25D88(var_B80, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), var_808)
  loc_1C905EC:           Proc_6_7_F25D88(var_C10, Date, CVar(CLng(&HA)), CVar(CLng(var_9C)))
  loc_1C90618:           var_E38 = var_A8.Fields.Item("ChrgCode")
  loc_1C9063A:           Set var_F04 = Me.Txt
  loc_1C90640:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_F08)
  loc_1C90648:           var_E3C = var_F08.Tag
  loc_1C90661:           var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FixedChargeCode,FolioNoDocid,LogSite_Code) Values ('" & var_F0
  loc_1C90670:           var_180 = CStr(var_9A)
  loc_1C90674:           var_184 = var_178 & "'," & var_180
  loc_1C90685:           var_1FC = var_184 & ",'" & global_56
  loc_1C9069B:           var_208 = var_1FC & "','" & CStr(global_108)
  loc_1C906D9:           var_280 = CVar(var_208 & "','" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_220 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_1C90727:           var_400 = var_280 & "','" & CVar(var_298) & "','" & CVar(CStr(var_2EC)) & "','" & CVar(var_5C0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C90763:           var_568 = var_400 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C907BB:           var_7DC = var_568 & ",'" & CVar(CStr(var_5E0)) & "'," & "'" & CVar(CStr(var_694)) & "','" & CVar(CStr(var_728)) & "'," & CVar(var_E14) 
  loc_1C90810:           var_A58 = var_7DC & ",'" & CVar(CStr(var_808)) & "','" & CVar(CStr(var_89C)) & "','" & CVar(CStr(var_930)) & "'," & var_A38 & "," 
  loc_1C90820:           var_AFC = var_A58 & var_ADC & "," 
  loc_1C90830:           var_BA0 = var_AFC & var_B80 & ",'" 
  loc_1C90853:           var_C30 = var_BA0 & CVar(MemVar_1F920C8) & "'," & var_C10 & ",'A','" 
  loc_1C90883:           var_D44 = var_C30 & CVar(MemVar_1F92078) & "FOM','" & CVar(Proc_6_38_E68A98(var_CC, CVar(CLng(var_9C)))) & "','" & CVar(Proc_6_38_E68A98(CVar(var_E38), var_5E0)) 
  loc_1C908A9:           var_DB0 = var_D44 & "','" & CVar(var_E3C) & "','" & CVar(MemVar_1F92078) 
  loc_1C908C0:           unk_544EA0.Execute CStr(var_DB0 & "')"), var_DF0, -1
  loc_1C909F8:           var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C909FD:           var_134 = 1
  loc_1C90A10:           var_104 = Me.FGrid.TextMatrix)
  loc_1C90A2A:           Set var_E8 = Me.Txt
  loc_1C90A30:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_1FC, var_104)
  loc_1C90A38:           var_134 = var_EC.Text
  loc_1C90A5B:           Set var_188 = Me.Txt
  loc_1C90A61:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_18C, var_208)
  loc_1C90A69:           var_114 = var_18C.Text
  loc_1C90A93:           var_1E4 = CVar(Format$(Time, "HH:mm")) 'String
  loc_1C90A99:           var_220 = Trim(var_1E4)
  loc_1C90AAC:           Set var_294 = Me.Txt
  loc_1C90AB2:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2DC, var_F0, 1)
  loc_1C90ABA:           1 = var_2DC.Tag
  loc_1C90AC3:           var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C90ACB:           var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C90AEB:           var_250 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C90AF4:           var_31C = CVar(CLng(var_9C)) 'Long
  loc_1C90AF9:           var_34C = 1
  loc_1C90B06:           Set var_444 = Me.FGrid
  loc_1C90B0C:           var_260 = var_444.TextMatrix)
  loc_1C90B1C:           var_36C = CVar(CLng(var_9C)) 'Long
  loc_1C90B21:           var_3D0 = 1
  loc_1C90B34:           var_270 = Me.FGrid.TextMatrix)
  loc_1C90B44:           var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C90B4C:           var_430 = CVar(CLng(9)) 'Long
  loc_1C90B6E:           var_EA0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C90B75:           var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C90B7D:           var_4B4 = CVar(CLng(&H12)) 'Long
  loc_1C90B9F:           var_EA8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C90BA6:           var_4D4 = CVar(CLng(var_9C)) 'Long
  loc_1C90BAB:           var_538 = 5
  loc_1C90BCF:           var_2C8 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C90BD8:           var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C90C01:           var_30C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C90C3B:           Set var_7E4 = Me.Txt
  loc_1C90C41:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_86C, var_180, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1C90C49:           var_578 = var_86C.Text
  loc_1C90C56:           var_EB0 = Val(var_180)
  loc_1C90C5D:           var_630 = CVar(CLng(var_9C)) 'Long
  loc_1C90C6E:           Set var_900 = Me.FGrid
  loc_1C90C8C:           var_6E4 = CVar(CLng(&HB)) 'Long
  loc_1C90CD1:           var_3C0 = Date
  loc_1C90CD9:           var_3E0 = Date
  loc_1C90CE1:           var_400 = Date
  loc_1C90CF4:           Set var_ACC = Me.Txt
  loc_1C90CFA:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B70, var_184, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1C90D02:           var_6E4 = var_B70.Tag
  loc_1C90D2F:           var_F10 = Proc_6_38_E68A98(CVar(var_A8.Fields.Item("ChrgCode")), CVar(CLng(var_9C)), var_900.TextMatrix), CVar(CLng(&HA)))
  loc_1C90D37:           var_E98 = 0
  loc_1C90D42:           var_E94 = 0
  loc_1C90D6F:           var_E80 = "A"
  loc_1C90DDE:           var_D90 = vbNullString
  loc_1C90E3D:           Proc_96_8_1CC2560(CStr(var_104), var_1FC, var_9A, global_56, global_108, MemVar_1F92070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_208))
  loc_1C90EE5:         End If
  loc_1C90EE8:       Else
  loc_1C90EEB:         var_CC = vbNullString
  loc_1C90EF2:         var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C90EFA:         var_134 = CVar(CLng(9)) 'Long
  loc_1C90F2C:         var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C90F34:         var_134 = CVar(CLng(&H1A)) 'Long
  loc_1C90F5F:         If (CStr(Me.FGrid.TextMatrix)) = "Yes") Then
  loc_1C90F66:           var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C90F6B:           var_134 = 1
  loc_1C90FA9:           var_174 = "SELECT * FROM REVMAST WHERE CODE='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C90FC0:           unk_544EA0.Execute CStr(var_174 & "'"), var_1E4, -1
  loc_1C90FCB:           Set var_DC = var_E8
  loc_1C90FFB:           If (var_DC.RecordCount > 0) Then
  loc_1C9100B:             var_124 = "Select sum(TaxStru.Rate) as Rate from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='"
  loc_1C91047:             var_F0 = CStr(var_124 & var_DC.Fields.Item("TaxStru").Value & "' Group By Taxstru.Nature ")
  loc_1C91051:             unk_544EA0.Execute var_F0, var_174, -1
  loc_1C9105C:             Set var_D0 = var_EC
  loc_1C9108A:             If (var_D0.RecordCount > 0) Then
  loc_1C91093:               var_114 = "Rate"
  loc_1C910A7:               var_E8 = var_D0.Fields.Item(var_114)
  loc_1C910C8:               var_154 = (100 + var_E8.Value)
  loc_1C910EC:               var_D8 = CSng(Round(((CVar(Val(CStr(Me.FGrid.TextMatrix)))) / 100 & var_DC.Fields.Item("TaxStru").Value) * 100), 2))
  loc_1C91101:             End If
  loc_1C91101:           End If
  loc_1C9110F:           Set var_E4 = Me.Txt
  loc_1C91115:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, var_D8, var_EC, var_E8)
  loc_1C9113D:           Set var_EC = Me.Txt
  loc_1C91143:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_188, var_114, var_E8.Text)
  loc_1C91152:           Proc_6_7_F25D88(var_220, CVar(var_188), var_114)
  loc_1C9118D:           Set var_18C = Me.Txt
  loc_1C91193:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_294, var_298, 1)
  loc_1C9119B:           1 = var_294.Tag
  loc_1C911A4:           var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C911AC:           var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C911B5:           Set var_2DC = Me.FGrid
  loc_1C911BB:           var_2EC = var_2DC.TextMatrix)
  loc_1C911D5:           Set var_370 = Me.Txt
  loc_1C911DB:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_444, var_5C0, var_2EC)
  loc_1C911E3:           var_1F4 = var_444.Tag
  loc_1C911EC:           var_34C = CVar(CLng(var_9C)) 'Long
  loc_1C911F4:           var_36C = CVar(CLng(&HF)) 'Long
  loc_1C91213:           var_3F0 = CVar(CLng(var_9C)) 'Long
  loc_1C91218:           var_420 = 1
  loc_1C9123B:           var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C91243:           var_4B4 = CVar(CLng(9)) 'Long
  loc_1C9126C:           var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C91274:           var_598 = CVar(CLng(&H12)) 'Long
  loc_1C9129D:           var_610 = CVar(CLng(var_9C)) 'Long
  loc_1C912A2:           var_630 = 5
  loc_1C912B5:           var_654 = Me.FGrid.TextMatrix)
  loc_1C912CA:           var_6E4 = 6
  loc_1C912DD:           var_708 = Me.FGrid.TextMatrix)
  loc_1C91304:           var_79C = Me.FGrid.TextMatrix)
  loc_1C9131E:           Set var_86C = Me.Txt
  loc_1C91324:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_900, var_E14, var_79C, CVar(CLng(7)), CVar(CLng(var_9C)), var_708)
  loc_1C9132C:           var_6E4 = var_900.Text
  loc_1C9134C:           var_87C = Me.FGrid.TextMatrix)
  loc_1C91373:           var_910 = Me.FGrid.TextMatrix)
  loc_1C9139A:           var_9A4 = Me.FGrid.TextMatrix)
  loc_1C913BB:           Set var_B70 = Me.FGrid
  loc_1C913D2:           Proc_6_7_F25D88(var_A58, CVar(CStr(var_B70.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_9A4, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_910)
  loc_1C91403:           Proc_6_17_EAA2B0(var_AFC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1B)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1C91434:           Proc_6_7_F25D88(var_BA0, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), var_87C)
  loc_1C91447:           Proc_6_7_F25D88(var_C30, Date, CVar(CLng(&HA)), CVar(CLng(var_9C)))
  loc_1C9146A:           Set var_D8C = Me.Txt
  loc_1C91470:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_E38, var_E3C)
  loc_1C91491:           var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FolioNoDocid,LogSite_Code) Values ('" & var_F0
  loc_1C914A0:           var_180 = CStr(var_9A)
  loc_1C914A4:           var_184 = var_178 & "'," & var_180
  loc_1C914B5:           var_1FC = var_184 & ",'" & global_56
  loc_1C914CB:           var_208 = var_1FC & "','" & CStr(global_108)
  loc_1C91509:           var_280 = CVar(var_208 & "','" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_220 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_1C91557:           var_400 = var_280 & "','" & CVar(var_298) & "','" & CVar(CStr(var_2EC)) & "','" & CVar(var_5C0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C91593:           var_548 = var_400 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_D8) 
  loc_1C915D8:           var_728 = var_548 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_E38.Tag)) & "'," & "'" & CVar(CStr(var_708)) 
  loc_1C91627:           var_930 = var_728 & "','" & CVar(CStr(var_79C)) & "'," & CVar(var_E14) & ",'" & CVar(CStr(var_87C)) & "','" & CVar(CStr(var_910)) 
  loc_1C9167E:           var_BF0 = var_930 & "','" & CVar(CStr(var_9A4)) & "'," & var_A58 & "," & var_AFC & "," & var_BA0 & ",'" & CVar(MemVar_1F920C8) 
  loc_1C916B4:           var_CE0 = var_BF0 & "'," & var_C30 & ",'A','" & CVar(MemVar_1F92078) & "FOM','" & CVar(Proc_6_38_E68A98(var_CC, CVar(CLng(var_9C)))) 
  loc_1C916F1:           unk_544EA0.Execute CStr(var_CE0 & "','" & CVar(var_E3C) & "','" & CVar(MemVar_1F92078) & "')"), var_DB0, -1
  loc_1C91821:           var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C91826:           var_134 = 1
  loc_1C91839:           var_104 = Me.FGrid.TextMatrix)
  loc_1C91853:           Set var_E8 = Me.Txt
  loc_1C91859:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_1FC, var_104)
  loc_1C91861:           var_134 = var_EC.Text
  loc_1C91884:           Set var_188 = Me.Txt
  loc_1C9188A:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_18C, var_208)
  loc_1C91892:           var_114 = var_18C.Text
  loc_1C918C2:           var_220 = Trim(CVar(Format$(Time, "HH:mm")))
  loc_1C918D5:           Set var_294 = Me.Txt
  loc_1C918DB:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2DC, var_F0, 1)
  loc_1C918E3:           1 = var_2DC.Tag
  loc_1C918EC:           var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C918F4:           var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C91914:           var_250 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C9191D:           var_31C = CVar(CLng(var_9C)) 'Long
  loc_1C91922:           var_34C = 1
  loc_1C9192F:           Set var_444 = Me.FGrid
  loc_1C91935:           var_260 = var_444.TextMatrix)
  loc_1C91945:           var_36C = CVar(CLng(var_9C)) 'Long
  loc_1C9194A:           var_3D0 = 1
  loc_1C9195D:           var_270 = Me.FGrid.TextMatrix)
  loc_1C9196D:           var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C91975:           var_430 = CVar(CLng(9)) 'Long
  loc_1C91997:           var_EA0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C9199E:           var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C919A6:           var_4B4 = CVar(CLng(&H12)) 'Long
  loc_1C919C8:           var_EA8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C919CF:           var_4D4 = CVar(CLng(var_9C)) 'Long
  loc_1C919D4:           var_538 = 5
  loc_1C919F8:           var_2C8 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C91A01:           var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C91A2A:           var_30C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C91A64:           Set var_7E4 = Me.Txt
  loc_1C91A6A:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_86C, var_180, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1C91A72:           var_578 = var_86C.Text
  loc_1C91A7F:           var_EB0 = Val(var_180)
  loc_1C91A86:           var_630 = CVar(CLng(var_9C)) 'Long
  loc_1C91A8E:           var_684 = CVar(CLng(&HA)) 'Long
  loc_1C91A97:           Set var_900 = Me.FGrid
  loc_1C91A9D:           var_380 = var_900.TextMatrix)
  loc_1C91AAD:           var_6C4 = CVar(CLng(var_9C)) 'Long
  loc_1C91AB5:           var_6E4 = CVar(CLng(&HB)) 'Long
  loc_1C91AFA:           var_3C0 = Date
  loc_1C91B02:           var_3E0 = Date
  loc_1C91B0A:           var_400 = Date
  loc_1C91B1D:           Set var_ACC = Me.Txt
  loc_1C91B23:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B70, var_184, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1C91B2B:           var_6E4 = var_B70.Tag
  loc_1C91B35:           var_E98 = 0
  loc_1C91B40:           var_E94 = 0
  loc_1C91B53:           var_E8C = 0
  loc_1C91B71:           var_E80 = "A"
  loc_1C91BE0:           var_D90 = vbNullString
  loc_1C91C3F:           Proc_96_8_1CC2560(CStr(var_104), var_1FC, var_9A, global_56, global_108, MemVar_1F92070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_208))
  loc_1C91CE4:         Else
  loc_1C91CF2:           Set var_E4 = Me.Txt
  loc_1C91CF8:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_E8, var_F0, CStr(var_220), var_F0, CStr(var_250))
  loc_1C91D00:           CStr(var_260) = var_E8.Text
  loc_1C91D20:           Set var_EC = Me.Txt
  loc_1C91D26:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_188, CStr(var_270))
  loc_1C91D35:           Proc_6_7_F25D88(var_220, CVar(var_188), var_D90)
  loc_1C91D70:           Set var_18C = Me.Txt
  loc_1C91D76:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_294, var_298, 1)
  loc_1C91D7E:           1 = var_294.Tag
  loc_1C91D87:           var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C91D8F:           var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C91D98:           Set var_2DC = Me.FGrid
  loc_1C91D9E:           var_2EC = var_2DC.TextMatrix)
  loc_1C91DB8:           Set var_370 = Me.Txt
  loc_1C91DBE:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_444, var_5C0, var_2EC)
  loc_1C91DC6:           var_1F4 = var_444.Tag
  loc_1C91DCF:           var_34C = CVar(CLng(var_9C)) 'Long
  loc_1C91DD7:           var_36C = CVar(CLng(&HF)) 'Long
  loc_1C91DF6:           var_3F0 = CVar(CLng(var_9C)) 'Long
  loc_1C91DFB:           var_420 = 1
  loc_1C91E1E:           var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C91E26:           var_4B4 = CVar(CLng(9)) 'Long
  loc_1C91E4F:           var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C91E57:           var_598 = CVar(CLng(&H12)) 'Long
  loc_1C91E80:           var_610 = CVar(CLng(var_9C)) 'Long
  loc_1C91E85:           var_630 = 5
  loc_1C91E98:           var_654 = Me.FGrid.TextMatrix)
  loc_1C91EAD:           var_6E4 = 6
  loc_1C91EC0:           var_708 = Me.FGrid.TextMatrix)
  loc_1C91EE7:           var_79C = Me.FGrid.TextMatrix)
  loc_1C91F01:           Set var_86C = Me.Txt
  loc_1C91F07:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_900, var_E14, var_79C, CVar(CLng(7)), CVar(CLng(var_9C)), var_708)
  loc_1C91F0F:           var_6E4 = var_900.Text
  loc_1C91F2F:           var_87C = Me.FGrid.TextMatrix)
  loc_1C91F56:           var_910 = Me.FGrid.TextMatrix)
  loc_1C91F7D:           var_9A4 = Me.FGrid.TextMatrix)
  loc_1C91F9E:           Set var_B70 = Me.FGrid
  loc_1C91FB5:           Proc_6_7_F25D88(var_A58, CVar(CStr(var_B70.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_9C)), var_9A4, CVar(CLng(&HD)), CVar(CLng(var_9C)), var_910)
  loc_1C91FE6:           Proc_6_17_EAA2B0(var_AFC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1B)), CVar(CLng(var_9C)), CVar(CLng(&HB)), CVar(CLng(var_9C)))
  loc_1C92017:           Proc_6_7_F25D88(var_BA0, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_9C)), var_87C)
  loc_1C9202A:           Proc_6_7_F25D88(var_C30, Date, CVar(CLng(&HA)), CVar(CLng(var_9C)))
  loc_1C9204D:           Set var_D8C = Me.Txt
  loc_1C92053:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_E38, var_E3C)
  loc_1C92074:           var_178 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FolioNoDocid,LogSite_Code) Values ('" & var_F0
  loc_1C92083:           var_180 = CStr(var_9A)
  loc_1C92087:           var_184 = var_178 & "'," & var_180
  loc_1C9208E:           var_1F8 = var_184 & ",'"
  loc_1C92098:           var_1FC = var_1F8 & global_56
  loc_1C920AE:           var_208 = var_1FC & "','" & CStr(global_108)
  loc_1C920EC:           var_280 = CVar(var_208 & "','" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," & var_220 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_1C9213A:           var_400 = var_280 & "','" & CVar(var_298) & "','" & CVar(CStr(var_2EC)) & "','" & CVar(var_5C0) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C92176:           var_548 = var_400 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_D8) 
  loc_1C921BB:           var_728 = var_548 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_E38.Tag)) & "'," & "'" & CVar(CStr(var_708)) 
  loc_1C9220A:           var_930 = var_728 & "','" & CVar(CStr(var_79C)) & "'," & CVar(var_E14) & ",'" & CVar(CStr(var_87C)) & "','" & CVar(CStr(var_910)) 
  loc_1C92261:           var_BF0 = var_930 & "','" & CVar(CStr(var_9A4)) & "'," & var_A58 & "," & var_AFC & "," & var_BA0 & ",'" & CVar(MemVar_1F920C8) 
  loc_1C92297:           var_CE0 = var_BF0 & "'," & var_C30 & ",'A','" & CVar(MemVar_1F92078) & "FOM','" & CVar(Proc_6_38_E68A98(var_CC, CVar(CLng(var_9C)))) 
  loc_1C922D4:           unk_544EA0.Execute CStr(var_CE0 & "','" & CVar(var_E3C) & "','" & CVar(MemVar_1F92078) & "')"), var_DB0, -1
  loc_1C92404:           var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C92409:           var_134 = 1
  loc_1C9241C:           var_104 = Me.FGrid.TextMatrix)
  loc_1C92436:           Set var_E8 = Me.Txt
  loc_1C9243C:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_EC, var_1FC, var_104)
  loc_1C92444:           var_134 = var_EC.Text
  loc_1C9244D:           var_154 = CVar(Me.LblVPrefix) 'Address
  loc_1C92467:           Set var_188 = Me.Txt
  loc_1C9246D:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_18C, var_208)
  loc_1C92475:           var_114 = var_18C.Text
  loc_1C9249F:           var_1E4 = CVar(Format$(Time, "HH:mm")) 'String
  loc_1C924A5:           var_220 = Trim(var_1E4)
  loc_1C924B8:           Set var_294 = Me.Txt
  loc_1C924BE:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2DC, var_F0, 1)
  loc_1C924C6:           1 = var_2DC.Tag
  loc_1C924CF:           var_1B4 = CVar(CLng(var_9C)) 'Long
  loc_1C924D7:           var_1F4 = CVar(CLng(&H11)) 'Long
  loc_1C924F7:           var_250 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C92500:           var_31C = CVar(CLng(var_9C)) 'Long
  loc_1C92505:           var_34C = 1
  loc_1C92518:           var_260 = Me.FGrid.TextMatrix)
  loc_1C92528:           var_36C = CVar(CLng(var_9C)) 'Long
  loc_1C9252D:           var_3D0 = 1
  loc_1C92540:           var_270 = Me.FGrid.TextMatrix)
  loc_1C92550:           var_410 = CVar(CLng(var_9C)) 'Long
  loc_1C92558:           var_430 = CVar(CLng(9)) 'Long
  loc_1C9257A:           var_EA0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C92581:           var_484 = CVar(CLng(var_9C)) 'Long
  loc_1C92589:           var_4B4 = CVar(CLng(&H12)) 'Long
  loc_1C925AB:           var_EA8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C925B2:           var_4D4 = CVar(CLng(var_9C)) 'Long
  loc_1C925B7:           var_538 = 5
  loc_1C925DB:           var_2C8 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C925E4:           var_578 = CVar(CLng(var_9C)) 'Long
  loc_1C9260D:           var_30C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C92647:           Set var_7E4 = Me.Txt
  loc_1C9264D:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_86C, var_180, Me.FGrid.TextMatrix), CVar(CLng(7)), CVar(CLng(var_9C)), 6)
  loc_1C92655:           var_578 = var_86C.Text
  loc_1C92662:           var_EB0 = Val(var_180)
  loc_1C92669:           var_630 = CVar(CLng(var_9C)) 'Long
  loc_1C92671:           var_684 = CVar(CLng(&HA)) 'Long
  loc_1C92680:           var_380 = Me.FGrid.TextMatrix)
  loc_1C92690:           var_6C4 = CVar(CLng(var_9C)) 'Long
  loc_1C92698:           var_6E4 = CVar(CLng(&HB)) 'Long
  loc_1C926DD:           var_3C0 = Date
  loc_1C926E5:           var_3E0 = Date
  loc_1C926ED:           var_400 = Date
  loc_1C92700:           Set var_ACC = Me.Txt
  loc_1C92706:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B70, var_184, Me.FGrid.TextMatrix), CVar(CLng(&HD)), CVar(CLng(var_9C)), Me.FGrid.TextMatrix))
  loc_1C9270E:           var_6E4 = var_B70.Tag
  loc_1C92718:           var_E98 = 0
  loc_1C92723:           var_E94 = 0
  loc_1C92736:           var_E8C = 0
  loc_1C92754:           var_E80 = "A"
  loc_1C927C3:           var_D90 = vbNullString
  loc_1C92822:           Proc_96_8_1CC2560(CStr(var_104), var_1FC, var_9A, global_56, global_108, MemVar_1F92070, CStr(Trim(var_154)), CDate(var_208))
  loc_1C928C4:         End If
  loc_1C928C4:       End If
  loc_1C928C8:       var_114 = CVar(CLng(var_9C)) 'Long
  loc_1C928D0:       var_134 = CVar(CLng(9)) 'Long
  loc_1C928D9:       Set var_E4 = Me.FGrid
  loc_1C928F2:       var_E44 = Val(CStr(var_E4.TextMatrix)))
  loc_1C928FC:       var_A4 = (var_A4 + var_E44)
  loc_1C92908:     End If
  loc_1C92908:   End If
  loc_1C9291C:   var_F0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1C92942:   var_164 = CVar(var_F0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_56 & "' And VP.Date_From<=") 'String
  loc_1C92959:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_E8, var_1F8, var_164, var_1E4, -1, var_EC)
  loc_1C92961:   var_A4 = var_E8.Text
  loc_1C9296F:   Proc_6_7_F25D88(var_154, CVar(var_1F8), var_E44, var_134)
  loc_1C92980:   var_1C4 = " Order By VP.Date_From DESC" & var_154 & " Order By VP.Date_From DESC" 
  loc_1C9298E:   unk_544EA0.Execute CStr(var_1C4), CStr(var_220), var_F0
  loc_1C92999:   Set var_8C = var_EC
  loc_1C929DA:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1C92A0E:     var_184 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(global_108) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1C92A2D:     var_164 = CVar(var_184 & MemVar_1F92078 & "') and V_Type='" & global_56 & "' and Date_From=") 'String
  loc_1C92A4A:     var_E8 = Me.Recordset15.Fields.Item("Date_From")
  loc_1C92A52:     var_104 = CVar(var_E8) 'Address
  loc_1C92A59:     Proc_6_7_F25D88(var_154, var_104, var_164, var_1C4)
  loc_1C92A61:     var_174 = -1 & var_154 
  loc_1C92A6F:     unk_544EA0.Execute CStr("Date_From" & var_154), var_EC, CStr(var_250)
  loc_1C92A9D:   End If
  loc_1C92AA0: Next var_194 'Integer
  loc_1C92AAB: unk_544EA0.CommitTrans
  loc_1C92AB4: var_86 = CByte(0) 'Byte
  loc_1C92AB8: Call Proc_61_46_F06434()
  loc_1C92AC8: Me.Requery -1
  loc_1C92ACD: Call Proc_61_51_121DED4()
  loc_1C92AD7: Set var_94 = Nothing
  loc_1C92ADF: Set var_8C = Nothing
  loc_1C92AE7: Set var_A8 = Nothing
  loc_1C92AEF: Set var_D0 = Nothing
  loc_1C92AF7: Set var_DC = Nothing
  loc_1C92B05: Set var_E4 = Me.Txt
  loc_1C92B0B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1C92B13: var_E8.SetFocus
  loc_1C92B44: Proc_6_17_EAA2B0(var_104, MemVar_1F92078, "Select PrintRcpt,RcptPrinting from Enviro WHERE LOGSITE_CODE=", var_164)
  loc_1C92B4C: var_154 = -1 & var_104 
  loc_1C92B5A: unk_544EA0.Execute CStr(var_154), var_E4, &HFF
  loc_1C92B65: Set var_A8 = var_E4
  loc_1C92BC5: var_E4 = var_A8.Fields
  loc_1C92BE2: var_B0 = Proc_6_38_E68A98(var_E4.Item(1).Value)
  loc_1C92BF5: var_F0 = fdPaymentCharge.ParentForm
  loc_1C92C05: If (var_F0 = "Check Out") Then
  loc_1C92C10:   If (Proc_6_38_E68A98(var_A8.Fields.Item(0).Value) <> "Yes") Then
  loc_1C92C13:     GoTo loc_1C92D25
  loc_1C92C16:   End If
  loc_1C92C29:   var_104 = "Want Print Receipt ?"
  loc_1C92C45:   If (MsgBox(var_104, &H24, var_154, var_164, "Want Print Receipt ?" & var_154) = 7) Then
  loc_1C92C48:     GoTo loc_1C92D25
  loc_1C92C4B:   End If
  loc_1C92C51:   Call 0.Method_arg_50 (var_F0)
  loc_1C92C63:   Proc_146_2_13175F4(var_C4, var_B0)
  loc_1C92C6E: Else
  loc_1C92C82:   var_F0 = "SELECT MAX(P.VNO) AS RECTNO,MAX(P.VDATE) AS RECTDATE,MAX(P.PAYTYPE) AS RECTMODE,MAX(P.AMTCR) AS RECTAMT,MAX(P.ROOMNO) AS ROOMNO,MAX(P.FOLIONO) AS GRCNO,MAX(GP.NAME) AS GUESTNAME,MAX(P.BILL_NO) AS BILLNO,MAX(P.SETTLEDATE) AS SETTLEDATE FROM (GUESTPROF GP left join GUESTFOLIO GF ON GF.GUESTPROF=GP.CODE) LEFT JOIN PAYCHARGE P ON GF.DOCID=P.FOLIONODOCID " & " WHERE P.DOCID IN ('"
  loc_1C92C99:   unk_544EA0.Execute var_F0 & var_C0 & "') AND P.VTYPE='REC' Group By P.DocId", var_104, -1
  loc_1C92CCA:   If (var_E4.RecordCount <= 0) Then
  loc_1C92CCD:     GoTo loc_1C92D25
  loc_1C92CD0:   End If
  loc_1C92CFF:   If (MsgBox("Want Print Receipt ?", &H24, var_154, var_164, "Want Print Receipt ?" & var_154) = 7) Then
  loc_1C92D02:     GoTo loc_1C92D25
  loc_1C92D05:   End If
  loc_1C92D0B:   Call 0.Method_arg_50 (var_F0, var_E4)
  loc_1C92D1D:   Proc_146_1_1334068(var_C0, var_B0, var_F0)
  loc_1C92D25:   ' Referenced from:   1C92D02
  loc_1C92D25:   ' Referenced from:   1C92CCD
  loc_1C92D25: End If
  loc_1C92D25: ' Referenced from: 1C92C48
  loc_1C92D25: ' Referenced from: 1C92C13
  loc_1C92D39: If (fdPaymentCharge.OpenMode = 1) Then
  loc_1C92D49:   Me.Global.Unload Me
  loc_1C92D51:   Exit Sub
  loc_1C92D52: End If
  loc_1C92D52: Exit Sub
  loc_1C92D53: ' Referenced from: 1C8C738
  loc_1C92D5C: If (CInt(var_86) = 1) Then
  loc_1C92D65:   unk_544EA0.RollbackTrans
  loc_1C92D6A: End If
  loc_1C92D72: Set var_E4 = Err()
  loc_1C92D78: Call 0.Method_arg_2C (var_F0, var_F0)
  loc_1C92D91: MsgBox(CVar(var_F0), &H10, var_154, var_164, "Want Print Receipt ?" & var_154)
  loc_1C92DA4: Exit Sub
End Sub

Private Sub frmcmd_Click(Index As Integer) 'F600C0
  'Data Table: 544E74
  Dim var_8A As Integer
  Dim var_94 As TextBox
  Dim var_90 As Variant
  loc_F5FF9B: var_8A = Index
  loc_F5FFA4: If (var_8A = 0) Then
  loc_F5FFB5:   Set var_90 = Me.Txt
  loc_F5FFBB:   Call 0.Method_frmcmd_Click0 (CInt(0), var_94)
  loc_F5FFDA:   If (var_94.Text = vbNullString) Then
  loc_F5FFDD:     Exit Sub
  loc_F5FFDE:   End If
  loc_F5FFF0:   fdDisplayFolio.OpenMode = 1
  loc_F60003:   Set var_90 = Me.FrmAdjust
  loc_F60009:   Call 0.Method_frmcmd_Click0 (CInt(0), var_94)
  loc_F60029:   Set var_9C = New fdDisplayFolio.Txt
  loc_F6002F:   Call 0.Method_frmcmd_Click0 (CInt(0), var_A0)
  loc_F60037:   fdDisplayFolio.Txt.Text = fdDisplayFolio.FrmAdjust.Text
  loc_F6005C:   Call fdDisplayFolio.Txt_Validate(CInt(0))
  loc_F60074:   Call 0.Method_arg_2B0 (1, var_C4)
  loc_F6007E:   Set var_88 = Nothing
  loc_F60084: Else
  loc_F6008A:   If (var_8A = 1) Then
  loc_F6008D:     GoTo loc_F600BF
  loc_F60090:   End If
  loc_F60096:   If (var_8A = 2) Then
  loc_F60099:     Call TopCtrl1_UnknownEvent_16()
  loc_F600A1:   Else
  loc_F600A7:     If (var_8A = 3) Then
  loc_F600B7:       Me.Global.Unload Me
  loc_F600BF:     End If
  loc_F600BF:     ' Referenced from:   F6008D
  loc_F600BF:   End If
  loc_F600BF: End If
  loc_F600BF: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F5D098
  'Data Table: 544E74
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5CF81: Set var_A8 = Me.DGEmp
  loc_F5CF87: var_A8.Visible = False
  loc_F5CFA9: If (Me.var_A8.RecordCount > 0) Then
  loc_F5CFEB:   Set var_B4 = Me.Txt
  loc_F5CFF1:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H17), var_B8)
  loc_F5CFF9:   var_B8.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_F5D02F:   var_B0 = Me.Recordset15.Fields.Item("Code")
  loc_F5D04E:   Set var_B4 = Me.Txt
  loc_F5D054:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H17), var_B8)
  loc_F5D05C:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5D072: End If
  loc_F5D07D: Set var_A8 = Me.Txt
  loc_F5D083: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H17))
  loc_F5D08B: var_B0.SetFocus
  loc_F5D097: Exit Sub
End Sub

Private Sub CmdReference_Click() 'EACDDC
  'Data Table: 544E74
  Dim var_88 As Frame
  Dim var_90 As TextBox
  loc_EACD63: If (Me.FrReference.Visible = &HFF) Then
  loc_EACD72:   Me.FrReference.Visible = False
  loc_EACD85:   Set var_88 = Me.Txt
  loc_EACD8B:   Call 0.Method_CmdReference_Click0 (CInt(5))
  loc_EACD93:   var_90.SetFocus
  loc_EACDA2: Else
  loc_EACDAE:   Me.FrReference.Visible = True
  loc_EACDC1:   Set var_88 = Me.Txt
  loc_EACDC7:   Call 0.Method_CmdReference_Click0 (CInt(&H29), var_90)
  loc_EACDCF:   var_90.SetFocus
  loc_EACDDB: End If
  loc_EACDDB: Exit Sub
End Sub

Public Function global_52Get() '546D38
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '546D47
  global_52 = Value
End Sub

Public Function global_56Get() '546D56
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '546D65
  global_56 = Value
End Sub

Public Property Get OpenMode() 'E03D00
  'Data Table: 544E74
  loc_E03CF9: OpenMode = global_152
End Sub

Public Property Let OpenMode(vNewValue) 'E0053C
  'Data Table: 544E74
  loc_E00536: global_152 = vNewValue
  loc_E00539: Exit Sub
End Sub

Public Property Get ParentForm() 'E0D354
  'Data Table: 544E74
  loc_E0D348: var_88 = global_160
  loc_E0D34B: ParentForm = 
End Sub

Public Property Let ParentForm(vNewValue) 'E0DD2C
  'Data Table: 544E74
  loc_E0DD24: global_160 = vNewValue
  loc_E0DD28: Exit Sub
End Sub

Public Sub Proc_61_45_E792A4(arg_C) 'E792A4
  'Data Table: 544E74
  Dim var_98 As TextBox
  loc_E79252: Set var_8C = Me.Txt
  loc_E79258: Call 0.Method_Proc_61_45_E792A4C (var_8E, var_86)
  loc_E79268: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7927E:   Set var_8C = Me.Txt
  loc_E79284:   Call 0.Method_Proc_61_45_E792A40 (CInt(var_86), var_98)
  loc_E7928C:   var_98.Enabled = arg_C
  loc_E7929B: Next var_92 'Byte
  loc_E792A1: Exit Sub
End Sub

Public Sub Proc_61_46_F06434
  'Data Table: 544E74
  Dim var_98 As Variant
  loc_F06356: Set var_8C = Me.Txt
  loc_F0635C: Call 0.Method_Proc_61_46_F06434C (var_8E, var_86)
  loc_F0636C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F06382:   Set var_8C = Me.Txt
  loc_F06388:   Call 0.Method_Proc_61_46_F064340 (CInt(var_86), var_98)
  loc_F06390:   var_98.Text = vbNullString
  loc_F063AC:   Set var_8C = Me.Txt
  loc_F063B2:   Call 0.Method_Proc_61_46_F064340 (CInt(var_86), var_98)
  loc_F063BA:   var_98.Tag = vbNullString
  loc_F063C9: Next var_92 'Byte
  loc_F063DD: Set var_8C = Me.LTxt
  loc_F063E3: Call 0.Method_Proc_61_46_F06434C (var_8E, var_86)
  loc_F063F3: For var_9C =  To CByte((var_8E - 1)): CByte(0) = var_9C 'Byte
  loc_F06409:   Set var_8C = Me.LTxt
  loc_F0640F:   Call 0.Method_Proc_61_46_F064340 (CInt(var_86), var_98)
  loc_F06417:   var_98.Caption = vbNullString
  loc_F06426: Next var_9C 'Byte
  loc_F0642C: Call Proc_61_51_121DED4()
  loc_F06431: Exit Sub
End Sub

Public Sub Proc_61_47_F6E39C
  'Data Table: 544E74
  loc_F6E270: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F6E282:   Me.DGRoomNo.Visible = False
  loc_F6E28A: End If
  loc_F6E2A6: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_F6E2B8:   Me.DGChrgPayment.Visible = False
  loc_F6E2C0: End If
  loc_F6E2DC: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F6E2EE:   Me.DGRoom.Visible = False
  loc_F6E2F6: End If
  loc_F6E312: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6E324:   Me.FGPoint.Visible = False
  loc_F6E32C: End If
  loc_F6E348: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_F6E35A:   Me.DGMember.Visible = False
  loc_F6E362: End If
  loc_F6E37E: If (CBool(Me.DGCCurreny.Visible) = &HFF) Then
  loc_F6E390:   Me.DGCCurreny.Visible = False
  loc_F6E398: End If
  loc_F6E398: Exit Sub
End Sub

Public Sub Proc_61_48_10AE4F8
  'Data Table: 544E74
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_96 As Integer
  Dim var_13C As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  loc_10AE270: var_90 = global_56
  loc_10AE287: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10AE2B8: Set var_B4 = Me.Txt
  loc_10AE2BE: Call 0.Method_Proc_61_48_10AE4F80 (CInt(&H11), var_B8, CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10AE2CD: Proc_6_7_F25D88(var_D8, CVar(var_B8), var_13C)
  loc_10AE2D5: var_F8 = -1 & var_D8 
  loc_10AE2E9: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_10AE2F4: Set var_8C = var_140
  loc_10AE330: If (var_8C.RecordCount > 0) Then
  loc_10AE36F:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_10AE372:     GoTo loc_10AE3F2
  loc_10AE375:   End If
  loc_10AE3A0:   var_94 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10AE3C7:   var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_10AE3DC:   var_D8 = (var_B8.Value + 1)
  loc_10AE3E1:   var_96 = CInt(var_D8)
  loc_10AE3F2:   ' Referenced from: 10AE372
  loc_10AE3F2: End If
  loc_10AE41D: var_C8 = Space((5 - Len(var_90)))
  loc_10AE425: var_E8 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_B8.Value)
  loc_10AE436: var_F8 = Space((5 - Len(var_94)))
  loc_10AE43E: var_118 = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_F8)
  loc_10AE448: var_13C = (var_F8 & " Order By VP.Date_From DESC" + CVar(var_94))
  loc_10AE45E: var_158 = Space((8 - Len(CStr(var_96))))
  loc_10AE466: var_168 = (var_13C + var_158)
  loc_10AE472: var_188 = (var_168 + CVar(CStr(var_96)))
  loc_10AE477: var_9C = CStr(var_188)
  loc_10AE4A7: Me.LblVPrefix.Caption = var_94
  loc_10AE4BD: Set var_B4 = Me.Txt
  loc_10AE4C3: Call 0.Method_Proc_61_48_10AE4F80 (CInt(&H10), var_B8)
  loc_10AE4CB: var_B8.Text = var_9C
  loc_10AE4E4: var_88 = var_9C
  loc_10AE4EC: Set var_8C = Nothing
  loc_10AE4EF: Proc_61_48_10AE4F8 = CLng(var_96)
End Sub

Public Sub Proc_61_49_129CEB0(arg_C) '129CEB0
  'Data Table: 544E74
  Dim var_88 As Frame
  Dim var_8C As Variant
  Dim var_9C As TextBox
  Dim var_98 As Frame
  loc_129C8A8: Me.FrTxnNo.Visible = False
  loc_129C8BC: Me.FrChqDet.Visible = False
  loc_129C8D0: Me.FrCCDet.Visible = False
  loc_129C8E4: Me.FrEmp.Visible = False
  loc_129C8F8: Me.FrComp.Visible = False
  loc_129C90C: Me.FrMember.Visible = False
  loc_129C920: Me.FrSendRoom.Visible = False
  loc_129C936: Set var_88 = Me.Txt
  loc_129C93C: Call 0.Method_Proc_61_49_129CEB00 (CInt(&H18), var_8C)
  loc_129C944: var_8C.Tag = vbNullString
  loc_129C953: var_90 = arg_C
  loc_129C95E: If (var_90 = "Cheque") Then
  loc_129C96D:   Me.FrChqDet.Visible = True
  loc_129C983:   Set var_98 = Me.Txt
  loc_129C989:   Call 0.Method_Proc_61_49_129CEB00 (CInt(5), var_9C)
  loc_129C9A4:   Set var_88 = Me.Txt
  loc_129C9AA:   Call 0.Method_Proc_61_49_129CEB00 (CInt(5), var_8C)
  loc_129C9C9:   Me.FrChqDet.Top = (var_8C.Top + var_9C.Height)
  loc_129C9E7:   Set var_88 = Me.Lbl
  loc_129C9ED:   Call 0.Method_Proc_61_49_129CEB00 (4, var_8C)
  loc_129CA07:   Me.FrChqDet.Left = var_8C.Left
  loc_129CA18: Else
  loc_129CA20:   If (var_90 = "Credit Card") Then
  loc_129CA2E:     If (global_88 = "Y") Then
  loc_129CA3D:       Me.FrCCDet.Visible = True
  loc_129CA53:       Set var_98 = Me.Txt
  loc_129CA59:       Call 0.Method_Proc_61_49_129CEB00 (CInt(5), var_9C)
  loc_129CA74:       Set var_88 = Me.Txt
  loc_129CA7A:       Call 0.Method_Proc_61_49_129CEB00 (CInt(5), var_8C)
  loc_129CA99:       Me.FrCCDet.Top = (var_8C.Top + var_9C.Height)
  loc_129CAB7:       Set var_88 = Me.Lbl
  loc_129CABD:       Call 0.Method_Proc_61_49_129CEB00 (4, var_8C)
  loc_129CAD7:       Me.FrCCDet.Left = var_8C.Left
  loc_129CAE5:     End If
  loc_129CAE8:   Else
  loc_129CAF0:     If (var_90 = "Staff") Then
  loc_129CAFF:       Me.FrEmp.Visible = True
  loc_129CB15:       Set var_98 = Me.Txt
  loc_129CB1B:       Call 0.Method_Proc_61_49_129CEB00 (CInt(5), var_9C)
  loc_129CB36:       Set var_88 = Me.Txt
  loc_129CB3C:       Call 0.Method_Proc_61_49_129CEB00 (CInt(5), var_8C)
  loc_129CB5B:       Me.FrEmp.Top = (var_8C.Top + var_9C.Height)
  loc_129CB79:       Set var_88 = Me.Lbl
  loc_129CB7F:       Call 0.Method_Proc_61_49_129CEB00 (4, var_8C)
  loc_129CB99:       Me.FrEmp.Left = var_8C.Left
  loc_129CBAA:     Else
  loc_129CBB2:       If (var_90 = "Company") Then
  loc_129CBC1:         Me.FrComp.Visible = True
  loc_129CBD7:         Set var_98 = Me.Txt
  loc_129CBDD:         Call 0.Method_Proc_61_49_129CEB00 (CInt(5), var_9C)
  loc_129CBF8:         Set var_88 = Me.Txt
  loc_129CBFE:         Call 0.Method_Proc_61_49_129CEB00 (CInt(5), var_8C)
  loc_129CC1D:         Me.FrComp.Top = (var_8C.Top + var_9C.Height)
  loc_129CC3B:         Set var_88 = Me.Lbl
  loc_129CC41:         Call 0.Method_Proc_61_49_129CEB00 (4, var_8C)
  loc_129CC5B:         Me.FrComp.Left = var_8C.Left
  loc_129CC6C:       Else
  loc_129CC74:         If (var_90 = "Room") Then
  loc_129CC83:           Me.FrSendRoom.Visible = True
  loc_129CC99:           Set var_98 = Me.Txt
  loc_129CC9F:           Call 0.Method_Proc_61_49_129CEB00 (CInt(5), var_9C)
  loc_129CCBA:           Set var_88 = Me.Txt
  loc_129CCC0:           Call 0.Method_Proc_61_49_129CEB00 (CInt(5), var_8C)
  loc_129CCDF:           Me.FrSendRoom.Top = (var_8C.Top + var_9C.Height)
  loc_129CCFD:           Set var_88 = Me.Lbl
  loc_129CD03:           Call 0.Method_Proc_61_49_129CEB00 (4, var_8C)
  loc_129CD1D:           Me.FrSendRoom.Left = var_8C.Left
  loc_129CD2E:         Else
  loc_129CD36:           If (var_90 = "Member") Then
  loc_129CD45:             Me.FrMember.Visible = True
  loc_129CD5B:             Set var_98 = Me.Txt
  loc_129CD61:             Call 0.Method_Proc_61_49_129CEB00 (CInt(5), var_9C)
  loc_129CD7C:             Set var_88 = Me.Txt
  loc_129CD82:             Call 0.Method_Proc_61_49_129CEB00 (CInt(5), var_8C)
  loc_129CDA1:             Me.FrMember.Top = (var_8C.Top + var_9C.Height)
  loc_129CDBF:             Set var_88 = Me.Lbl
  loc_129CDC5:             Call 0.Method_Proc_61_49_129CEB00 (4, var_8C)
  loc_129CDDF:             Me.FrMember.Left = var_8C.Left
  loc_129CDF0:           Else
  loc_129CDF8:             If (var_90 = "UPI") Then
  loc_129CE07:               Me.FrTxnNo.Visible = True
  loc_129CE1D:               Set var_98 = Me.Txt
  loc_129CE23:               Call 0.Method_Proc_61_49_129CEB00 (CInt(5), var_9C)
  loc_129CE3E:               Set var_88 = Me.Txt
  loc_129CE44:               Call 0.Method_Proc_61_49_129CEB00 (CInt(5), var_8C)
  loc_129CE63:               Me.FrTxnNo.Top = (var_8C.Top + var_9C.Height)
  loc_129CE81:               Set var_88 = Me.Lbl
  loc_129CE87:               Call 0.Method_Proc_61_49_129CEB00 (4, var_8C)
  loc_129CEA1:               Me.FrTxnNo.Left = var_8C.Left
  loc_129CEAF:             End If
  loc_129CEAF:           End If
  loc_129CEAF:         End If
  loc_129CEAF:       End If
  loc_129CEAF:     End If
  loc_129CEAF:   End If
  loc_129CEAF: End If
  loc_129CEAF: Exit Sub
End Sub

Public Sub Proc_61_50_13A52C8
  'Data Table: 544E74
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_F0 As String
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As TextBox
  Dim Me As Variant
  loc_13A49BF: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A49C4: var_C8 = 1
  loc_13A49FB: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13A4A02:   Set var_F4 = Me.FGrid
  loc_13A4A18:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A4A1D:   var_C8 = 1
  loc_13A4A34:   var_F0 = CStr(var_F4.TextMatrix))
  loc_13A4A42:   Set var_DC = Me.Txt
  loc_13A4A48:   Call 0.Method_Proc_61_50_13A52C80 (CInt(4), var_F8, var_F0, var_C8)
  loc_13A4A50:   var_F8.Tag = var_A8
  loc_13A4A7F:   If (Me.RecordCount > 0) Then
  loc_13A4A88:     Me.MoveFirst
  loc_13A4AA4:     If (Me.AbsolutePosition > 0) Then
  loc_13A4AC6:       Set var_88 = Me.Txt
  loc_13A4ACC:       Call 0.Method_Proc_61_50_13A52C80 (CInt(4), var_DC, var_F0, "Code='", 0)
  loc_13A4AD4:       1 = var_DC.Tag
  loc_13A4AED:       Me.Find var_A8 & var_F0 & "'", var_C8, var_A8
  loc_13A4B02:     End If
  loc_13A4B02:   End If
  loc_13A4B15:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A4B1A:   var_C8 = 3
  loc_13A4B37:   global_144 = CStr(var_F4.TextMatrix))
  loc_13A4B85:   Set var_DC = Me.Txt
  loc_13A4B8B:   Call 0.Method_Proc_61_50_13A52C80 (CInt(4), var_F8, CStr(var_F4.TextMatrix)), 4)
  loc_13A4B93:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A4BE7:   Set var_DC = Me.Txt
  loc_13A4BED:   Call 0.Method_Proc_61_50_13A52C80 (CInt(&H2A), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H1A)))
  loc_13A4BF5:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A4C20:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A4C25:   var_C8 = 5
  loc_13A4C42:   global_136 = CStr(var_F4.TextMatrix))
  loc_13A4C66:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A4C6B:   var_C8 = 6
  loc_13A4C88:   global_140 = CStr(var_F4.TextMatrix))
  loc_13A4CAC:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13A4CD5:   Set var_DC = Me.Txt
  loc_13A4CDB:   Call 0.Method_Proc_61_50_13A52C80 (CInt(6), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)), var_A8, CVar(CLng(9)))
  loc_13A4CE3:   var_F8.Text = var_A8
  loc_13A4D16:   var_C8 = CVar(CLng(&HA)) 'Long
  loc_13A4D37:   Set var_DC = Me.Txt
  loc_13A4D3D:   Call 0.Method_Proc_61_50_13A52C80 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_13A4D45:   var_F8.Text = var_C8
  loc_13A4D99:   Set var_DC = Me.Txt
  loc_13A4D9F:   Call 0.Method_Proc_61_50_13A52C80 (CInt(&H13), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_13A4DA7:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A4DFB:   Set var_DC = Me.Txt
  loc_13A4E01:   Call 0.Method_Proc_61_50_13A52C80 (CInt(&H14), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_13A4E09:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A4E5D:   Set var_DC = Me.Txt
  loc_13A4E63:   Call 0.Method_Proc_61_50_13A52C80 (CInt(&H2B), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H1B)))
  loc_13A4E6B:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A4EBF:   Set var_DC = Me.Txt
  loc_13A4EC5:   Call 0.Method_Proc_61_50_13A52C80 (CInt(&H15), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_13A4ECD:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A4F21:   Set var_DC = Me.Txt
  loc_13A4F27:   Call 0.Method_Proc_61_50_13A52C80 (CInt(&H25), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H18)))
  loc_13A4F2F:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A4F83:   Set var_DC = Me.Txt
  loc_13A4F89:   Call 0.Method_Proc_61_50_13A52C80 (CInt(&H16), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_13A4F91:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A4FE5:   Set var_DC = Me.Txt
  loc_13A4FEB:   Call 0.Method_Proc_61_50_13A52C80 (CInt(5), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_13A4FF3:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A5047:   Set var_DC = Me.Txt
  loc_13A504D:   Call 0.Method_Proc_61_50_13A52C80 (CInt(&H17), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_13A5055:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A50A9:   Set var_DC = Me.Txt
  loc_13A50AF:   Call 0.Method_Proc_61_50_13A52C80 (CInt(&H17), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H11)))
  loc_13A50B7:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13A510B:   Set var_DC = Me.Txt
  loc_13A5111:   Call 0.Method_Proc_61_50_13A52C80 (CInt(&H23), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H12)))
  loc_13A5119:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A516D:   Set var_DC = Me.Txt
  loc_13A5173:   Call 0.Method_Proc_61_50_13A52C80 (CInt(0), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H17)))
  loc_13A517B:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13A51CF:   Set var_DC = Me.Txt
  loc_13A51D5:   Call 0.Method_Proc_61_50_13A52C80 (CInt(0), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(7)))
  loc_13A51DD:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A5231:   Set var_DC = Me.Txt
  loc_13A5237:   Call 0.Method_Proc_61_50_13A52C80 (CInt(&H19), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H15)))
  loc_13A523F:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13A5293:   Set var_DC = Me.Txt
  loc_13A5299:   Call 0.Method_Proc_61_50_13A52C80 (CInt(&H19), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H16)))
  loc_13A52A1:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13A52BE:   global_132 = &HFF
  loc_13A52C3:   Set var_F4 = Nothing 
  loc_13A52C7: End If
  loc_13A52C7: Exit Sub
End Sub

Public Sub Proc_61_51_121DED4
  'Data Table: 544E74
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_EC As MSHFlexGrid
  Dim var_FC As Variant
  loc_121D9D4: Set var_88 = Me.FGrid
  loc_121D9E3: var_88.Cols = &H1B
  loc_121D9F4: var_88.Rows = 1
  loc_121D9FC: var_98 = CVar(CLng(&HA)) 'Long
  loc_121DA01: var_B8 = 0
  loc_121DA0D: LateIdCallSt
  loc_121DA18: var_98 = CVar(CLng(&HB)) 'Long
  loc_121DA1D: var_B8 = 0
  loc_121DA29: LateIdCallSt
  loc_121DA34: var_98 = CVar(CLng(&HC)) 'Long
  loc_121DA39: var_B8 = 0
  loc_121DA45: LateIdCallSt
  loc_121DA50: var_98 = CVar(CLng(&H1B)) 'Long
  loc_121DA55: var_B8 = 0
  loc_121DA61: LateIdCallSt
  loc_121DA6C: var_98 = CVar(CLng(&HD)) 'Long
  loc_121DA71: var_B8 = 0
  loc_121DA7D: LateIdCallSt
  loc_121DA88: var_98 = CVar(CLng(&HE)) 'Long
  loc_121DA8D: var_B8 = 0
  loc_121DA99: LateIdCallSt
  loc_121DAA4: var_98 = CVar(CLng(&HF)) 'Long
  loc_121DAA9: var_B8 = 0
  loc_121DAB5: LateIdCallSt
  loc_121DAC0: var_98 = CVar(CLng(&H10)) 'Long
  loc_121DAC5: var_B8 = 0
  loc_121DAD1: LateIdCallSt
  loc_121DADC: var_98 = CVar(CLng(&H11)) 'Long
  loc_121DAE1: var_B8 = 0
  loc_121DAED: LateIdCallSt
  loc_121DAF8: var_98 = CVar(CLng(&H12)) 'Long
  loc_121DAFD: var_B8 = 0
  loc_121DB09: LateIdCallSt
  loc_121DB11: var_98 = 1
  loc_121DB1A: var_B8 = 0
  loc_121DB26: LateIdCallSt
  loc_121DB2E: var_98 = 2
  loc_121DB37: var_B8 = 0
  loc_121DB43: LateIdCallSt
  loc_121DB4B: var_98 = 5
  loc_121DB54: var_B8 = 0
  loc_121DB60: LateIdCallSt
  loc_121DB68: var_98 = 6
  loc_121DB71: var_B8 = 0
  loc_121DB7D: LateIdCallSt
  loc_121DB88: var_98 = CVar(CLng(7)) 'Long
  loc_121DB8D: var_B8 = 0
  loc_121DB99: LateIdCallSt
  loc_121DBA4: var_98 = CVar(CLng(8)) 'Long
  loc_121DBA9: var_B8 = 0
  loc_121DBB5: LateIdCallSt
  loc_121DBBD: var_98 = 3
  loc_121DBC6: var_B8 = 0
  loc_121DBD2: LateIdCallSt
  loc_121DBDD: var_98 = CVar(CLng(&H17)) 'Long
  loc_121DBE2: var_B8 = 0
  loc_121DBEE: LateIdCallSt
  loc_121DBF6: var_98 = 0
  loc_121DBFF: var_B8 = &HFA
  loc_121DC0B: LateIdCallSt
  loc_121DC13: var_98 = 0
  loc_121DC1C: var_B8 = 0
  loc_121DC25: var_D8 = "SNo"
  loc_121DC2E: LateIdCallSt
  loc_121DC36: var_98 = 0
  loc_121DC3F: var_B8 = &H1C2
  loc_121DC4B: LateIdCallSt
  loc_121DC53: var_98 = 0
  loc_121DC5C: var_B8 = 4
  loc_121DC65: var_D8 = "Payment Type"
  loc_121DC6E: LateIdCallSt
  loc_121DC76: var_98 = 4
  loc_121DC85: var_B8 = CVar(CInt(1)) 'Integer
  loc_121DC8C: LateIdCallSt
  loc_121DC94: var_98 = 4
  loc_121DC9D: var_B8 = &HCE4
  loc_121DCA9: LateIdCallSt
  loc_121DCB1: var_98 = 0
  loc_121DCBD: var_B8 = CVar(CLng(9)) 'Long
  loc_121DCC2: var_D8 = "Amount"
  loc_121DCCB: LateIdCallSt
  loc_121DCD6: var_98 = CVar(CLng(9)) 'Long
  loc_121DCE1: var_B8 = CVar(CInt(7)) 'Integer
  loc_121DCE8: LateIdCallSt
  loc_121DCF3: var_98 = CVar(CLng(9)) 'Long
  loc_121DCFE: var_B8 = CVar(CInt(7)) 'Integer
  loc_121DD05: LateIdCallSt
  loc_121DD10: var_98 = CVar(CLng(9)) 'Long
  loc_121DD15: var_B8 = &H424
  loc_121DD21: LateIdCallSt
  loc_121DD29: var_98 = 0
  loc_121DD35: var_B8 = CVar(CLng(&H12)) 'Long
  loc_121DD3A: var_D8 = "Tip"
  loc_121DD43: LateIdCallSt
  loc_121DD4E: var_98 = CVar(CLng(&H12)) 'Long
  loc_121DD59: var_B8 = CVar(CInt(7)) 'Integer
  loc_121DD60: LateIdCallSt
  loc_121DD6B: var_98 = CVar(CLng(&H12)) 'Long
  loc_121DD76: var_B8 = CVar(CInt(7)) 'Integer
  loc_121DD7D: LateIdCallSt
  loc_121DD88: var_98 = CVar(CLng(&H12)) 'Long
  loc_121DD8D: var_B8 = 0
  loc_121DD99: LateIdCallSt
  loc_121DDA4: var_98 = CVar(CLng(&H13)) 'Long
  loc_121DDA9: var_B8 = 0
  loc_121DDB5: LateIdCallSt
  loc_121DDC0: var_98 = CVar(CLng(&H14)) 'Long
  loc_121DDC5: var_B8 = 0
  loc_121DDD1: LateIdCallSt
  loc_121DDDC: var_98 = CVar(CLng(&H15)) 'Long
  loc_121DDE1: var_B8 = 0
  loc_121DDED: LateIdCallSt
  loc_121DDF8: var_98 = CVar(CLng(&H16)) 'Long
  loc_121DDFD: var_B8 = 0
  loc_121DE09: LateIdCallSt
  loc_121DE14: var_98 = CVar(CLng(&H18)) 'Long
  loc_121DE19: var_B8 = 0
  loc_121DE25: LateIdCallSt
  loc_121DE30: var_98 = CVar(CLng(&H19)) 'Long
  loc_121DE35: var_B8 = 0
  loc_121DE41: LateIdCallSt
  loc_121DE4C: var_98 = CVar(CLng(&H1A)) 'Long
  loc_121DE51: var_B8 = 0
  loc_121DE5D: LateIdCallSt
  loc_121DE67: Set var_88 = Nothing 
  loc_121DE6B: var_98 = vbNullString
  loc_121DE75: Set var_EC = Me.FGrid
  loc_121DE99: Me.FGrid.FixedRows = 1
  loc_121DEA1: var_98 = 1
  loc_121DEAA: var_B8 = 0
  loc_121DEB7: var_FC = CVar(CStr(1)) 'String
  loc_121DEBF: Set var_EC = Me.FGrid
  loc_121DEC5: LateIdCallSt
  loc_121DED3: Exit Sub
End Sub

Public Sub Proc_61_52_15B0A0C
  'Data Table: 544E74
  Dim var_90 As Variant
  Dim var_AC As Variant
  Dim Me As Variant
  Dim var_8C As Variant
  Dim var_CC As Variant
  Dim var_E0 As TextBox
  Dim var_F0 As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_98 As String
  Dim var_86 As Integer
  Dim var_140 As Variant
  loc_15AF7AB: Set var_8C = Me.Txt
  loc_15AF7B1: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(4))
  loc_15AF7DA: If (Proc_6_27_EA565C(var_90, "Charge/Payment") = 0) Then
  loc_15AF7DD:   Exit Sub
  loc_15AF7DE: End If
  loc_15AF7EC: Set var_8C = Me.Txt
  loc_15AF7F2: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(6), var_90)
  loc_15AF816: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_15AF827:   Set var_8C = Me.Txt
  loc_15AF82D:   Call 0.Method_Proc_61_52_15B0A0C0 (CInt(6), var_90)
  loc_15AF835:   var_90.Text = vbNullString
  loc_15AF841: End If
  loc_15AF84F: Set var_8C = Me.Txt
  loc_15AF855: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(6), var_90)
  loc_15AF86F: If (var_90.Visible = &HFF) Then
  loc_15AF87D:   Set var_8C = Me.Txt
  loc_15AF883:   Call 0.Method_Proc_61_52_15B0A0C0 (CInt(6), var_90)
  loc_15AF88B:   var_98 = "Amount"
  loc_15AF8AC:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_15AF8AF:     Exit Sub
  loc_15AF8B0:   End If
  loc_15AF8B0: End If
  loc_15AF8CD: var_90 = Me.Fields.Item("PayType")
  loc_15AF8F5: Set var_94 = Me.Txt
  loc_15AF8FB: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H17), var_E0, var_98)
  loc_15AF903: (var_90.Value = "Staff") = var_E0.Text
  loc_15AF92F: If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15AF93D:   Set var_8C = Me.Txt
  loc_15AF943:   Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H17))
  loc_15AF94B:   var_98 = "Staff Name"
  loc_15AF96C:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_15AF96F:     Exit Sub
  loc_15AF970:   End If
  loc_15AF970: End If
  loc_15AF98D: var_90 = Me.Fields.Item("PayType")
  loc_15AF9B5: Set var_94 = Me.Txt
  loc_15AF9BB: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H18), var_E0, var_98)
  loc_15AF9C3: (var_90.Value = "Room") = var_E0.Text
  loc_15AF9EF: If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15AF9FD:   Set var_8C = Me.Txt
  loc_15AFA03:   Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H18))
  loc_15AFA0B:   var_98 = "Room No."
  loc_15AFA2C:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_15AFA2F:     Exit Sub
  loc_15AFA30:   End If
  loc_15AFA30: End If
  loc_15AFA4D: var_90 = Me.Fields.Item("PayType")
  loc_15AFA75: Set var_94 = Me.Txt
  loc_15AFA7B: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H19), var_E0, var_98)
  loc_15AFA83: (var_90.Value = "Company") = var_E0.Text
  loc_15AFAAF: If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15AFABD:   Set var_8C = Me.Txt
  loc_15AFAC3:   Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H19))
  loc_15AFACB:   var_98 = "Company Name"
  loc_15AFAEC:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_15AFAEF:     Exit Sub
  loc_15AFAF0:   End If
  loc_15AFAF0: End If
  loc_15AFB0D: var_90 = Me.Fields.Item("PayType")
  loc_15AFB35: Set var_94 = Me.Txt
  loc_15AFB3B: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H27), var_E0, var_98)
  loc_15AFB43: (var_90.Value = "Member") = var_E0.Text
  loc_15AFB6F: If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15AFB7D:   Set var_8C = Me.Txt
  loc_15AFB83:   Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H27))
  loc_15AFB8B:   var_98 = "Member Name"
  loc_15AFBAC:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_15AFBAF:     Exit Sub
  loc_15AFBB0:   End If
  loc_15AFBB0: End If
  loc_15AFBBB: If (global_88 = "Y") Then
  loc_15AFBDB:   var_90 = Me.Fields.Item("PayType")
  loc_15AFC03:   Set var_94 = Me.Txt
  loc_15AFC09:   Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H12), var_E0, var_98)
  loc_15AFC11:   (var_90.Value = "Credit Card") = var_E0.Text
  loc_15AFC3D:   If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15AFC4B:     Set var_8C = Me.Txt
  loc_15AFC51:     Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H12))
  loc_15AFC59:     var_98 = "Credit Card No."
  loc_15AFC7A:     If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_15AFC7D:       Exit Sub
  loc_15AFC7E:     End If
  loc_15AFC7E:   End If
  loc_15AFC9B:   var_90 = Me.Fields.Item("PayType")
  loc_15AFCC3:   Set var_94 = Me.Txt
  loc_15AFCC9:   Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H13), var_E0, var_98)
  loc_15AFCD1:   (var_90.Value = "Credit Card") = var_E0.Text
  loc_15AFCFD:   If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15AFD0B:     Set var_8C = Me.Txt
  loc_15AFD11:     Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H13))
  loc_15AFD3A:     If (Proc_6_27_EA565C(var_90, "Holder's Name") = 0) Then
  loc_15AFD3D:       Exit Sub
  loc_15AFD3E:     End If
  loc_15AFD3E:   End If
  loc_15AFD5B:   var_90 = Me.Fields.Item("PayType")
  loc_15AFD80:   Set var_94 = Me.Txt
  loc_15AFD86:   Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H25), var_E0)
  loc_15AFDBF:   If CBool((var_90.Value = "Credit Card") And (Trim(CVar(var_E0)) = vbNullString)) Then
  loc_15AFDCD:     Set var_8C = Me.Txt
  loc_15AFDD3:     Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H25), var_90)
  loc_15AFDDB:     var_98 = "Batch No"
  loc_15AFDFC:     If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_15AFE0A:       Set var_8C = Me.Txt
  loc_15AFE10:       Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H25), var_90)
  loc_15AFE18:       var_90.SetFocus
  loc_15AFE24:       Exit Sub
  loc_15AFE25:     End If
  loc_15AFE25:   End If
  loc_15AFE25: End If
  loc_15AFE42: var_90 = Me.Fields.Item("PayType")
  loc_15AFE6A: Set var_94 = Me.Txt
  loc_15AFE70: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H2B), var_E0, var_98)
  loc_15AFE78: (var_90.Value = "UPI") = var_E0.Text
  loc_15AFEA4: If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15AFEB2:   Set var_8C = Me.Txt
  loc_15AFEB8:   Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H2B))
  loc_15AFEC0:   var_98 = "Txn. No."
  loc_15AFEE1:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_15AFEE4:     Exit Sub
  loc_15AFEE5:   End If
  loc_15AFEE5: End If
  loc_15AFF02: var_90 = Me.Fields.Item("PayType")
  loc_15AFF2A: Set var_94 = Me.Txt
  loc_15AFF30: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H15), var_E0, var_98)
  loc_15AFF38: (var_90.Value = "Cheque") = var_E0.Text
  loc_15AFF64: If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15AFF72:   Set var_8C = Me.Txt
  loc_15AFF78:   Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H15))
  loc_15AFF80:   var_98 = "Cheque No."
  loc_15AFFA1:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_15AFFA4:     Exit Sub
  loc_15AFFA5:   End If
  loc_15AFFA5: End If
  loc_15AFFC2: var_90 = Me.Fields.Item("PayType")
  loc_15AFFEA: Set var_94 = Me.Txt
  loc_15AFFF0: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H16), var_E0, var_98)
  loc_15AFFF8: (var_90.Value = "Cheque") = var_E0.Text
  loc_15B0024: If CBool(var_90 And (var_98 = vbNullString)) Then
  loc_15B0032:   Set var_8C = Me.Txt
  loc_15B0038:   Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H16))
  loc_15B0061:   If (Proc_6_27_EA565C(var_90, "Cheque Dt.") = 0) Then
  loc_15B0064:     Exit Sub
  loc_15B0065:   End If
  loc_15B0065: End If
  loc_15B006E: If (global_132 = 0) Then
  loc_15B008A:   var_AC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15B00AD:   var_98 = CStr(Me.FGrid.TextMatrix))
  loc_15B00C6:   If (var_98 <> vbNullString) Then
  loc_15B00E5:     var_BC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, 4))) 'String
  loc_15B00ED:     Set var_90 = Me.FGrid
  loc_15B0107:   End If
  loc_15B0121:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15B012D: Else
  loc_15B0141:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_15B014A: End If
  loc_15B014E: Set var_144 = Me.FGrid
  loc_15B0171: Set var_8C = Me.Txt
  loc_15B0177: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(4), var_90, var_98, 1, CVar(CLng(var_86)), var_86)
  loc_15B017F: var_86 = var_90.Tag
  loc_15B0187: var_BC = CVar(var_98) 'String
  loc_15B018E: LateIdCallSt
  loc_15B01A4: var_AC = CVar(CLng(var_86)) 'Long
  loc_15B01A9: var_F0 = 3
  loc_15B01BF: LateIdCallSt
  loc_15B01E7: Set var_8C = Me.Txt
  loc_15B01ED: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(4), var_90, var_98, 4, CVar(CLng(var_86)), var_144, global_144)
  loc_15B01F5: var_F0 = var_90.Text
  loc_15B0204: LateIdCallSt
  loc_15B0235: Set var_8C = Me.Txt
  loc_15B023B: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H2A), var_90, var_98, CVar(CLng(&H1A)), CVar(CLng(var_86)), var_144, CVar(var_98))
  loc_15B0243: var_AC = var_90.Text
  loc_15B024B: var_BC = CVar(var_98) 'String
  loc_15B0252: LateIdCallSt
  loc_15B02A1: var_DC = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("PayType")), 2, CVar(CLng(var_86)), var_144, CVar(Me.Fields.Item("PayType")))) 'String
  loc_15B02A8: LateIdCallSt
  loc_15B02BE: var_CC = CVar(CLng(var_86)) 'Long
  loc_15B02C6: var_140 = CVar(CLng(&H17)) 'Long
  loc_15B02E8: var_90 = Me.Fields.Item("FolioNo")
  loc_15B0300: LateIdCallSt
  loc_15B0335: Set var_8C = Me.Txt
  loc_15B033B: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H18), var_90, var_98, CVar(CLng(&H19)), CVar(CLng(var_86)), var_144, CVar(CStr(var_90.Value)))
  loc_15B0343: var_140 = var_90.Tag
  loc_15B0352: LateIdCallSt
  loc_15B0383: Set var_8C = Me.Txt
  loc_15B0389: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(5), var_90, var_98, CVar(CLng(&HF)), CVar(CLng(var_86)), var_144, CVar(var_98))
  loc_15B0391: var_CC = var_90.Text
  loc_15B0399: var_BC = CVar(var_98) 'String
  loc_15B03A0: LateIdCallSt
  loc_15B03B6: var_AC = CVar(CLng(var_86)) 'Long
  loc_15B03BB: var_F0 = 5
  loc_15B03D1: LateIdCallSt
  loc_15B03DD: var_AC = CVar(CLng(var_86)) 'Long
  loc_15B03E2: var_F0 = 6
  loc_15B03F8: LateIdCallSt
  loc_15B041F: Set var_8C = Me.Txt
  loc_15B0425: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(0), var_90, var_98, CVar(CLng(7)), CVar(CLng(var_86)), var_144, global_140)
  loc_15B042D: var_F0 = var_90.Text
  loc_15B043C: LateIdCallSt
  loc_15B046D: Set var_8C = Me.Txt
  loc_15B0473: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(6), var_90, var_98, CVar(CLng(9)), CVar(CLng(var_86)), var_144, CVar(var_98))
  loc_15B047B: var_AC = var_90.Text
  loc_15B0483: var_BC = CVar(var_98) 'String
  loc_15B048A: LateIdCallSt
  loc_15B04BB: Set var_8C = Me.Txt
  loc_15B04C1: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H23), var_90, var_98, CVar(CLng(&H12)), CVar(CLng(var_86)), var_144)
  loc_15B04C9: var_BC = var_90.Text
  loc_15B04D1: var_BC = CVar(var_98) 'String
  loc_15B04D8: LateIdCallSt
  loc_15B0509: Set var_8C = Me.Txt
  loc_15B050F: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H12), var_90, var_98, CVar(CLng(&HA)), CVar(CLng(var_86)), var_144)
  loc_15B0517: var_BC = var_90.Text
  loc_15B051F: var_BC = CVar(var_98) 'String
  loc_15B0526: LateIdCallSt
  loc_15B0557: Set var_8C = Me.Txt
  loc_15B055D: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H13), var_90, var_98, CVar(CLng(&HB)), CVar(CLng(var_86)), var_144)
  loc_15B0565: var_BC = var_90.Text
  loc_15B056D: var_BC = CVar(var_98) 'String
  loc_15B0574: LateIdCallSt
  loc_15B05A5: Set var_8C = Me.Txt
  loc_15B05AB: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H14), var_90, var_98, CVar(CLng(&HC)), CVar(CLng(var_86)), var_144)
  loc_15B05B3: var_BC = var_90.Text
  loc_15B05BB: var_BC = CVar(var_98) 'String
  loc_15B05C2: LateIdCallSt
  loc_15B05F3: Set var_8C = Me.Txt
  loc_15B05F9: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H25), var_90, var_98, CVar(CLng(&H18)), CVar(CLng(var_86)), var_144)
  loc_15B0601: var_BC = var_90.Text
  loc_15B0609: var_BC = CVar(var_98) 'String
  loc_15B0610: LateIdCallSt
  loc_15B0641: Set var_8C = Me.Txt
  loc_15B0647: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H2B), var_90, var_98, CVar(CLng(&H1B)), CVar(CLng(var_86)), var_144)
  loc_15B064F: var_BC = var_90.Text
  loc_15B0657: var_BC = CVar(var_98) 'String
  loc_15B065E: LateIdCallSt
  loc_15B068F: Set var_8C = Me.Txt
  loc_15B0695: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H15), var_90, var_98, CVar(CLng(&HD)), CVar(CLng(var_86)), var_144)
  loc_15B069D: var_BC = var_90.Text
  loc_15B06A5: var_BC = CVar(var_98) 'String
  loc_15B06AC: LateIdCallSt
  loc_15B06DD: Set var_8C = Me.Txt
  loc_15B06E3: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H16), var_90, var_98, CVar(CLng(&HE)), CVar(CLng(var_86)), var_144)
  loc_15B06EB: var_BC = var_90.Text
  loc_15B06F3: var_BC = CVar(var_98) 'String
  loc_15B06FA: LateIdCallSt
  loc_15B072B: Set var_8C = Me.Txt
  loc_15B0731: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H17), var_90, var_98, CVar(CLng(&H10)), CVar(CLng(var_86)), var_144)
  loc_15B0739: var_BC = var_90.Text
  loc_15B0741: var_BC = CVar(var_98) 'String
  loc_15B0748: LateIdCallSt
  loc_15B0779: Set var_8C = Me.Txt
  loc_15B077F: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H17), var_90, var_98, CVar(CLng(&H11)), CVar(CLng(var_86)), var_144)
  loc_15B0787: var_BC = var_90.Tag
  loc_15B078F: var_BC = CVar(var_98) 'String
  loc_15B0796: LateIdCallSt
  loc_15B07C7: Set var_8C = Me.Txt
  loc_15B07CD: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(0), var_90, var_98, CVar(CLng(&H13)), CVar(CLng(var_86)), var_144)
  loc_15B07D5: var_BC = var_90.Tag
  loc_15B07DD: var_BC = CVar(var_98) 'String
  loc_15B07E4: LateIdCallSt
  loc_15B0815: Set var_8C = Me.Txt
  loc_15B081B: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(0), var_90, var_98, CVar(CLng(&H14)), CVar(CLng(var_86)), var_144)
  loc_15B0823: var_BC = var_90.Text
  loc_15B082B: var_BC = CVar(var_98) 'String
  loc_15B0832: LateIdCallSt
  loc_15B0848: var_AC = CVar(CLng(var_86)) 'Long
  loc_15B084D: var_F0 = 2
  loc_15B0864: var_98 = CStr(Txt.DispID_41)
  loc_15B0872: If (var_98 = "Member") Then
  loc_15B0894:   Set var_8C = Me.Txt
  loc_15B089A:   Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H27), var_90, var_98, CVar(CLng(&H15)), CVar(CLng(var_86)), CVar(CLng(&H15)), CVar(CLng(var_86)))
  loc_15B08A2:   var_144 = var_90.Tag
  loc_15B08B1:   LateIdCallSt
  loc_15B08E2:   Set var_8C = Me.Txt
  loc_15B08E8:   Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H27), var_90, var_98, CVar(CLng(&H16)), CVar(CLng(var_86)), var_144, CVar(var_98))
  loc_15B08F0:   var_BC = var_90.Text
  loc_15B08F8:   var_BC = CVar(var_98) 'String
  loc_15B08FF:   LateIdCallSt
  loc_15B0914: Else
  loc_15B0933:   Set var_8C = Me.Txt
  loc_15B0939:   Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H19), var_90, var_98, CVar(CLng(&H15)), CVar(CLng(var_86)), var_144)
  loc_15B0941:   var_BC = var_90.Tag
  loc_15B0949:   var_BC = CVar(var_98) 'String
  loc_15B0950:   LateIdCallSt
  loc_15B0966:   var_AC = CVar(CLng(var_86)) 'Long
  loc_15B0981:   Set var_8C = Me.Txt
  loc_15B0987:   Call 0.Method_Proc_61_52_15B0A0C0 (CInt(&H19), var_90, var_98, CVar(CLng(&H16)), var_AC, var_144)
  loc_15B098F:   var_BC = var_90.Text
  loc_15B0997:   var_BC = CVar(var_98) 'String
  loc_15B099E:   LateIdCallSt
  loc_15B09B0: End If
  loc_15B09B6: Call Proc_61_53_1207664(Nothing, var_BC, Nothing, global_136)
  loc_15B09C9: Set var_8C = Me.LTxt
  loc_15B09CF: Call 0.Method_Proc_61_52_15B0A0C0 (CInt(2), var_90, var_98)
  loc_15B09D7: var_F0 = var_90.Caption
  loc_15B09F3: If (CDbl(Val(var_98)) = CDbl(0)) Then
  loc_15B09F6:   Call TopCtrl1_UnknownEvent_16()
  loc_15B09FB:   Exit Sub
  loc_15B09FC: End If
  loc_15B09FC: Call Proc_61_54_1037258(var_AC)
  loc_15B0A06: global_132 = 0
  loc_15B0A09: Exit Sub
End Sub

Public Sub Proc_61_53_1207664
  'Data Table: 544E74
  Dim var_98 As Variant
  Dim var_D4 As String
  Dim var_D0 As Label
  Dim var_CC As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_154 As Double
  Dim var_FC As MSHFlexGrid
  Dim var_100 As String
  Dim var_15C As Double
  Dim var_C8 As Variant
  Dim var_148 As Label
  Dim var_144 As Label
  Dim var_160 As Label
  loc_12071EE: Set var_CC = Me.LTxt
  loc_12071F4: Call 0.Method_Proc_61_53_12076640 (CInt(1), var_D0, CStr(Format(global_176, "0.00")))
  loc_12071FC: var_D0.Caption = 1
  loc_120724C: Set var_CC = Me.LTxt
  loc_1207252: Call 0.Method_Proc_61_53_12076640 (CInt(0), var_D0, CStr(Format(global_168, "0.00")))
  loc_120725A: var_D0.Caption = 1
  loc_12072AA: Set var_CC = Me.LTxt
  loc_12072B0: Call 0.Method_Proc_61_53_12076640 (CInt(2), var_D0, CStr(Format(global_184, "0.00")), 1)
  loc_12072B8: var_D0.Caption = 1
  loc_12072F3: For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D8 'Integer
  loc_12072FD:   var_98 = CVar(CLng(var_86)) 'Long
  loc_1207320:   var_D4 = CStr(Me.FGrid.TextMatrix))
  loc_1207331:   If (var_D4 = "Dr") Then
  loc_1207342:     Set var_CC = Me.LTxt
  loc_1207348:     Call 0.Method_Proc_61_53_12076640 (CInt(1), var_D0, var_D4, 3)
  loc_1207350:     var_98 = var_D0.Caption
  loc_1207386:     var_100 = CStr(Me.FGrid.TextMatrix))
  loc_120738E:     var_15C = Val(var_100)
  loc_12073AD:     var_C8 = CVar((Val(var_D4) + var_15C)) 'Double
  loc_12073CB:     Set var_144 = Me.LTxt
  loc_12073D1:     Call 0.Method_Proc_61_53_12076640 (CInt(1), var_148, CStr(Format(Format(global_184, "0.00"), "0.00")), 1, 1, var_15C)
  loc_12073D9:     var_148.Caption = CVar(CLng(9))
  loc_120740D:     Set var_CC = Me.LTxt
  loc_1207413:     Call 0.Method_Proc_61_53_12076640 (CInt(0), var_D0, var_D4, CVar(CLng(var_86)))
  loc_120741B:     var_154 = var_D0.Caption
  loc_1207428:     var_154 = Val(var_D4)
  loc_1207439:     Set var_FC = Me.LTxt
  loc_120743F:     Call 0.Method_Proc_61_53_12076640 (CInt(1), var_144, var_100, var_154)
  loc_1207447:     1 = var_144.Caption
  loc_1207473:     var_B8 = CVar((var_154 - Val(var_100))) 'Double
  loc_1207491:     Set var_148 = Me.LTxt
  loc_1207497:     Call 0.Method_Proc_61_53_12076640 (CInt(2), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_120749F:     var_160.Caption = 1
  loc_12074C8:   Else
  loc_12074D6:     Set var_CC = Me.LTxt
  loc_12074DC:     Call 0.Method_Proc_61_53_12076640 (CInt(0), var_D0, var_D4)
  loc_12074E4:     var_15C = var_D0.Caption
  loc_120751A:     var_100 = CStr(Me.FGrid.TextMatrix))
  loc_1207522:     var_15C = Val(var_100)
  loc_1207541:     var_C8 = CVar((Val(var_D4) + var_15C)) 'Double
  loc_120755F:     Set var_144 = Me.LTxt
  loc_1207565:     Call 0.Method_Proc_61_53_12076640 (CInt(0), var_148, CStr(Format("0.00", "0.00")), 1, 1, var_15C)
  loc_120756D:     var_148.Caption = CVar(CLng(9))
  loc_12075A1:     Set var_CC = Me.LTxt
  loc_12075A7:     Call 0.Method_Proc_61_53_12076640 (CInt(0), var_D0, var_D4, CVar(CLng(var_86)))
  loc_12075AF:     var_154 = var_D0.Caption
  loc_12075BC:     var_154 = Val(var_D4)
  loc_12075CD:     Set var_FC = Me.LTxt
  loc_12075D3:     Call 0.Method_Proc_61_53_12076640 (CInt(1), var_144, var_100)
  loc_1207607:     var_B8 = CVar((var_144.Caption - Val(var_100))) 'Double
  loc_1207625:     Set var_148 = Me.LTxt
  loc_120762B:     Call 0.Method_Proc_61_53_12076640 (CInt(2), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_1207633:     var_160.Caption = 1
  loc_1207659:   End If
  loc_120765C: Next var_D8 'Integer
  loc_1207661: Exit Sub
End Sub

Public Sub Proc_61_54_1037258
  'Data Table: 544E74
  Dim var_8C As TextBox
  loc_103700A: Set var_88 = Me.Txt
  loc_1037010: Call 0.Method_Proc_61_54_10372580 (CInt(&H17), var_8C)
  loc_1037018: var_8C.Text = vbNullString
  loc_1037032: Set var_88 = Me.Txt
  loc_1037038: Call 0.Method_Proc_61_54_10372580 (CInt(&H17), var_8C)
  loc_1037040: var_8C.Tag = vbNullString
  loc_103705A: Set var_88 = Me.Txt
  loc_1037060: Call 0.Method_Proc_61_54_10372580 (CInt(5), var_8C)
  loc_1037068: var_8C.Text = vbNullString
  loc_1037082: Set var_88 = Me.Txt
  loc_1037088: Call 0.Method_Proc_61_54_10372580 (CInt(&H12), var_8C)
  loc_1037090: var_8C.Text = vbNullString
  loc_10370AA: Set var_88 = Me.Txt
  loc_10370B0: Call 0.Method_Proc_61_54_10372580 (CInt(&H13), var_8C)
  loc_10370B8: var_8C.Text = vbNullString
  loc_10370D2: Set var_88 = Me.Txt
  loc_10370D8: Call 0.Method_Proc_61_54_10372580 (CInt(&H14), var_8C)
  loc_10370E0: var_8C.Text = vbNullString
  loc_10370FA: Set var_88 = Me.Txt
  loc_1037100: Call 0.Method_Proc_61_54_10372580 (CInt(&H25), var_8C)
  loc_1037108: var_8C.Text = vbNullString
  loc_1037122: Set var_88 = Me.Txt
  loc_1037128: Call 0.Method_Proc_61_54_10372580 (CInt(&H2B), var_8C)
  loc_1037130: var_8C.Text = vbNullString
  loc_103714A: Set var_88 = Me.Txt
  loc_1037150: Call 0.Method_Proc_61_54_10372580 (CInt(&H15), var_8C)
  loc_1037158: var_8C.Text = vbNullString
  loc_1037172: Set var_88 = Me.Txt
  loc_1037178: Call 0.Method_Proc_61_54_10372580 (CInt(&H19), var_8C)
  loc_1037180: var_8C.Text = vbNullString
  loc_103719A: Set var_88 = Me.Txt
  loc_10371A0: Call 0.Method_Proc_61_54_10372580 (CInt(&H19), var_8C)
  loc_10371A8: var_8C.Tag = vbNullString
  loc_10371C2: Set var_88 = Me.Txt
  loc_10371C8: Call 0.Method_Proc_61_54_10372580 (CInt(&H16), var_8C)
  loc_10371D0: var_8C.Text = vbNullString
  loc_10371EA: Set var_88 = Me.Txt
  loc_10371F0: Call 0.Method_Proc_61_54_10372580 (CInt(4), var_8C)
  loc_10371F8: var_8C.Tag = vbNullString
  loc_1037212: Set var_88 = Me.Txt
  loc_1037218: Call 0.Method_Proc_61_54_10372580 (CInt(4), var_8C)
  loc_1037220: var_8C.Text = vbNullString
  loc_103723A: Set var_88 = Me.Txt
  loc_1037240: Call 0.Method_Proc_61_54_10372580 (CInt(6), var_8C)
  loc_1037248: var_8C.Text = vbNullString
  loc_1037254: Exit Sub
End Sub

Public Sub Proc_61_55_EE58B8
  'Data Table: 544E74
  loc_EE5806: On Error Goto loc_EE584C
  loc_EE581E: Call 0.Method_arg_18C (var_8C)
  loc_EE5826: Call var_8C.Show
  loc_EE583B: Call 0.Method_arg_188 (var_B0)
  loc_EE5843: var_88 = var_B0
  loc_EE5846: Proc_61_55_EE58B8 = 1
  loc_EE584C: ' Referenced from: EE5806
  loc_EE5854: Set var_8C = Err()
  loc_EE585A: Call 0.Method_arg_1C (var_B4)
  loc_EE586B: If (var_B4 <> 0) Then
  loc_EE5876:   Set var_8C = Err()
  loc_EE587C:   Call 0.Method_arg_2C (var_B0)
  loc_EE589D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE58B0: End If
  loc_EE58B0: Proc_61_55_EE58B8 = 
End Sub

Public Sub Proc_61_56_F00D24(arg_C) 'F00D24
  'Data Table: 544E74
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_94 As Double
  loc_F00C67: If (Me.AbsolutePosition > 0) Then
  loc_F00C8C:   var_C0 = CVar(Me.Fields.Item("Rate")) 'Address
  loc_F00C93:   Proc_6_39_E7C810(var_D0)
  loc_F00CAD:   If (var_D0 > 0) Then
  loc_F00CD9:     Proc_6_39_E7C810(var_D0, CVar(Me.Fields.Item("Rate")))
  loc_F00D04:     var_94 = CSng(Round((CVar(arg_C) / var_D0), 1))
  loc_F00D15:   End If
  loc_F00D15: End If
  loc_F00D1B: Proc_61_56_F00D24 = var_94
End Sub
