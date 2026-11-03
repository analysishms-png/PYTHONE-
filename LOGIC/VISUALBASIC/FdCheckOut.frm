VERSION 5.00
Begin VB.Form FdCheckOut
  Caption = "Room Check Out"
  BackColor = &HC0C0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FdCheckOut.frx":0
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 210
  ClientTop = 1335
  ClientWidth = 14625
  ClientHeight = 8310
  Begin Frame Frame1
    Caption = "Frame1"
    BackColor = &HFFC0C0&
    Left = -15
    Top = -30
    Width = 16800
    Height = 9375
    TabIndex = 2
    BorderStyle = 0 'None
    Begin DataGrid DGRoomType
      Left = 11760
      Top = 5760
      Width = 5025
      Height = 3330
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 18
    End
    Begin DataGrid DGRoomNo
      Left = 13950
      Top = 5220
      Width = 3840
      Height = 3330
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 17
    End
    Begin Frame FrmAdjust
      Left = 7485
      Top = 5595
      Width = 4050
      Height = 1560
      Visible = 0   'False
      TabIndex = 52
      Begin CommandButton Command3
        Caption = "Cancel"
        Left = 2805
        Top = 720
        Width = 795
        Height = 315
        Enabled = 0   'False
        TabIndex = 59
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin TextBox Txt
        Index = 24
        BackColor = &HFFFFFF&
        Left = 1500
        Top = 735
        Width = 1260
        Height = 315
        Enabled = 0   'False
        TabIndex = 57
        Alignment = 1 'Right Justify
        MaxLength = 8
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
      Begin TextBox Txt
        Index = 23
        BackColor = &HFFFFFF&
        Left = 1005
        Top = 225
        Width = 2115
        Height = 315
        TabIndex = 55
        PasswordChar = "#"
        MaxLength = 50
      End
      Begin CommandButton CMDSET
        Caption = "Set"
        Left = 1710
        Top = 1110
        Width = 795
        Height = 315
        Enabled = 0   'False
        TabIndex = 58
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CommandButton CmdPass
        Caption = "GO"
        Left = 3135
        Top = 225
        Width = 495
        Height = 315
        TabIndex = 56
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label Lbl
        Caption = "Room Rate"
        Index = 12
        ForeColor = &H0&
        Left = 420
        Top = 750
        Width = 945
        Height = 240
        TabIndex = 54
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
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
      Begin Label Lbl
        Caption = "Password"
        Index = 0
        ForeColor = &H0&
        Left = 120
        Top = 270
        Width = 825
        Height = 240
        TabIndex = 53
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
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
      Index = 22
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 3180
      Top = 1005
      Width = 870
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 51
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
    End
    Begin Timer Timer1
      Interval = 1000
      Left = 0
      Top = 0
    End
    Begin CommandButton Command1
      Caption = "Command1"
      Left = 120
      Top = 75
      Width = 1050
      Height = 195
      Visible = 0   'False
      TabIndex = 50
    End
    Begin PictureBox Picture2
      Picture = "FdCheckOut.frx":442
      Left = 14655
      Top = 2295
      Width = 300
      Height = 285
      Visible = 0   'False
      TabIndex = 49
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 5685
      Top = 1305
      Width = 345
      Height = 240
      Visible = 0   'False
      TabIndex = 48
      BorderStyle = 0 'None
      MaxLength = 9
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
    Begin CommandButton Command2
      Caption = "Bill Settle"
      Left = 15225
      Top = 3045
      Width = 1320
      Height = 690
      Visible = 0   'False
      TabIndex = 47
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
      Index = 15
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 3180
      Top = 1635
      Width = 420
      Height = 285
      Enabled = 0   'False
      TabIndex = 38
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
      Index = 14
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 3630
      Top = 1635
      Width = 420
      Height = 285
      Enabled = 0   'False
      TabIndex = 37
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
      Index = 13
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1605
      Top = 1635
      Width = 1545
      Height = 285
      Enabled = 0   'False
      TabIndex = 36
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
      Index = 16
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 5805
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 35
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
      Index = 17
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 5490
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 34
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
      Index = 18
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 5175
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 33
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
      Index = 21
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 4545
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 31
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
      Index = 20
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 4230
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 30
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
      Index = 19
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 3915
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 29
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
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1605
      Top = 1950
      Width = 2460
      Height = 285
      Enabled = 0   'False
      TabIndex = 23
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
      Index = 6
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2115
      Top = 2265
      Width = 480
      Height = 285
      Enabled = 0   'False
      TabIndex = 22
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
      Index = 5
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1605
      Top = 2265
      Width = 480
      Height = 285
      Enabled = 0   'False
      TabIndex = 21
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
      Index = 7
      BackColor = &HFFFFFF&
      Left = 14070
      Top = 1890
      Width = 990
      Height = 285
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 20
      BorderStyle = 0 'None
      MaxLength = 1
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
    Begin TextBox Txt
      Index = 8
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1605
      Top = 2580
      Width = 990
      Height = 285
      Enabled = 0   'False
      TabIndex = 19
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
    End
    Begin TextBox Txt
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 3945
      Top = 615
      Width = 690
      Height = 285
      Enabled = 0   'False
      TabIndex = 0
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
      Index = 1
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1605
      Top = 1320
      Width = 1545
      Height = 285
      Enabled = 0   'False
      TabIndex = 9
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
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 3600
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 8
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
      Index = 11
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 4860
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 7
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
      Index = 12
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1290
      Top = 6120
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 6
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
      Left = 3630
      Top = 1320
      Width = 420
      Height = 285
      Enabled = 0   'False
      TabIndex = 5
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
      Left = 3180
      Top = 1320
      Width = 420
      Height = 285
      Enabled = 0   'False
      TabIndex = 4
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
      Left = 1605
      Top = 1005
      Width = 1545
      Height = 285
      Enabled = 0   'False
      TabIndex = 3
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
    Begin MSHFlexGrid FGrid
      Left = 5385
      Top = 990
      Width = 8610
      Height = 6645
      TabIndex = 44
    End
    Begin MSHFlexGrid Fgrid1
      Left = 5385
      Top = 7635
      Width = 8610
      Height = 285
      TabIndex = 45
    End
    Begin MSFlexGrid FGPoint
      Left = 14655
      Top = 30
      Width = 1980
      Height = 1440
      Visible = 0   'False
      TabIndex = 46
    End
    Begin BtnEnh BtnExit
      Left = 2400
      Top = 7335
      Width = 1650
      Height = 750
      TabIndex = 61
    End
    Begin BtnEnh CmdPostChrg
      Left = 1545
      Top = 6600
      Width = 1575
      Height = 780
      TabIndex = 62
    End
    Begin BtnEnh CmdPlanBill
      Left = 3135
      Top = 6615
      Width = 1635
      Height = 720
      TabIndex = 63
    End
    Begin BtnEnh cmdProvisional
      Left = 975
      Top = 8115
      Width = 1560
      Height = 735
      Visible = 0   'False
      TabIndex = 64
    End
    Begin Label LblFormCaption
      BackColor = &HC0FFFF&
      Left = 0
      Top = 0
      Width = 180
      Height = 540
      TabIndex = 60
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
    Begin Image GuestImage
      Left = 15570
      Top = 6825
      Width = 1035
      Height = 525
      Visible = 0   'False
      Stretch = -1  'True
    End
    Begin Label Label1
      Caption = "Guest Folio Details"
      Index = 0
      BackColor = &HC00000&
      ForeColor = &HFFFFFF&
      Left = 5385
      Top = 585
      Width = 8535
      Height = 375
      TabIndex = 43
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
    Begin Label Lbl
      Caption = "Depature Date"
      Index = 4
      ForeColor = &H800000&
      Left = 120
      Top = 1650
      Width = 1365
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
    Begin Label Lbl
      Caption = "Comment1"
      Index = 7
      ForeColor = &H800000&
      Left = 150
      Top = 5175
      Width = 1020
      Height = 240
      TabIndex = 41
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
    Begin Label Lbl
      Caption = "Comment2"
      Index = 8
      ForeColor = &H800000&
      Left = 150
      Top = 5475
      Width = 1020
      Height = 240
      TabIndex = 40
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
    Begin Label Lbl
      Caption = "Comment3"
      Index = 13
      ForeColor = &H800000&
      Left = 150
      Top = 5790
      Width = 1020
      Height = 240
      TabIndex = 39
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
    Begin Label Lbl
      Caption = "Address"
      Index = 2
      ForeColor = &H800000&
      Left = 120
      Top = 3930
      Width = 750
      Height = 240
      TabIndex = 32
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
      Caption = "Guest Detail"
      Index = 2
      BackColor = &HC00000&
      ForeColor = &HFFFFFF&
      Left = 90
      Top = 3180
      Width = 5100
      Height = 375
      TabIndex = 28
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
      Caption = "Room Details for Room No."
      Index = 1
      BackColor = &HC00000&
      ForeColor = &HFFFFFF&
      Left = 75
      Top = 585
      Width = 5100
      Height = 375
      TabIndex = 27
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
    Begin Label Lbl
      Caption = "Adult/Child"
      Index = 11
      ForeColor = &H800000&
      Left = 120
      Top = 2280
      Width = 1050
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
    Begin Label Lbl
      Caption = "Rate Code"
      Index = 10
      ForeColor = &H0&
      Left = 12870
      Top = 1905
      Width = 885
      Height = 240
      TabIndex = 25
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
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
    Begin Label Lbl
      Caption = "Room Rate"
      Index = 9
      ForeColor = &H800000&
      Left = 120
      Top = 2595
      Width = 1050
      Height = 240
      TabIndex = 24
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
    Begin Label Lbl
      Caption = "Room Type"
      Index = 34
      ForeColor = &H800000&
      Left = 120
      Top = 1950
      Width = 1080
      Height = 240
      TabIndex = 16
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
    Begin Label Lbl
      Caption = "Check In Date"
      Index = 26
      ForeColor = &H800000&
      Left = 120
      Top = 1335
      Width = 1320
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
    Begin Label LblCheckInDay
      Caption = "."
      BackColor = &HFFC0C0&
      ForeColor = &HC0&
      Left = 4095
      Top = 1335
      Width = 60
      Height = 285
      TabIndex = 14
      AutoSize = -1  'True
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
    Begin Label Lbl
      Caption = "Guest Name"
      Index = 5
      ForeColor = &H800000&
      Left = 120
      Top = 3615
      Width = 1155
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
    Begin Label Lbl
      Caption = "Company"
      Index = 3
      ForeColor = &H800000&
      Left = 120
      Top = 4875
      Width = 900
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
    Begin Label Lbl
      Caption = "Status"
      Index = 1
      ForeColor = &H800000&
      Left = 150
      Top = 6135
      Width = 585
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
    Begin Label Lbl
      Caption = "Guest Folio No."
      Index = 6
      ForeColor = &H800000&
      Left = 120
      Top = 1005
      Width = 1455
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
  Begin TopCtrl TopCtrl1
    Left = 45
    Top = 7455
    Width = 7380
    Height = 375
    TabIndex = 1
  End
End

Attribute VB_Name = "FdCheckOut"

Private global_72 As Integer
Private global_124 As Integer
Private global_128 As Integer
Private global_126 As Integer
Private global_68 As Long
Private global_130 As Integer

Private Sub Command2_Click() '18E1744
  'Data Table: 529B38
  Dim var_E0 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_168 As String
  Dim unk_529B4C As Connection15
  Dim var_9C As Recordset15
  Dim var_188 As Variant
  Dim var_18C As Variant
  Dim var_E4 As String
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_104 As Variant
  Dim var_1B4 As Variant
  Dim var_1BC As TextBox
  Dim var_1C0 As String
  Dim var_1CC As String
  Dim var_1D0 As String
  Dim MemVar_1F920EC As Double
  Dim var_2F4 As Variant
  Dim var_1E4 As Variant
  Dim var_1F4 As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_2A4 As Variant
  Dim var_2C4 As Variant
  Dim var_2E4 As Variant
  Dim var_314 As Variant
  Dim var_3B4 As Variant
  Dim var_1B0 As Variant
  Dim unk_529B68 As Connection15
  Dim var_A8 As Long
  Dim var_418 As String
  Dim var_420 As String
  Dim var_B0 As Recordset15
  Dim var_41C As String
  Dim var_AC As Recordset15
  Dim var_1B8 As Variant
  Dim var_224 As Variant
  Dim var_42C As Fields15
  Dim var_274 As Variant
  Dim var_D8 As Double
  Dim var_CC As Recordset15
  Dim var_458 As Double
  loc_18DEE2E: Set var_DC = Me.Txt
  loc_18DEE34: Call 0.Method_Command2_Click0 (CInt(&HA), var_E0)
  loc_18DEE3C: var_E4 = var_E0.Text
  loc_18DEE53: If (var_E4 = vbNullString) Then
  loc_18DEE56:   Exit Sub
  loc_18DEE57: End If
  loc_18DEE74: Proc_6_17_EAA2B0(var_104, MemVar_1F92078, "Select  isnull(bill_no,'') as Bill_No,AmtDr from paycharge where LogSite_Code=")
  loc_18DEE7C: var_124 = var_188 & var_104 
  loc_18DEE85: var_144 = var_124 & " AND (ContraDocId is NULL or contradocid='') and foliono=" 
  loc_18DEE97: Set var_DC = Me.Txt
  loc_18DEE9D: Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4)
  loc_18DEEA5: var_144 = var_E0.Text
  loc_18DEEAD: var_154 = CVar(var_E4) 'String
  loc_18DEEB0: var_164 = -1 & var_154 
  loc_18DEEBE: unk_529B4C.Execute CStr(var_164), var_18C, 
  loc_18DEEC9: Set var_9C = var_18C
  loc_18DEEFB: If (var_9C.RecordCount > 0) Then
  loc_18DEF07:   var_9C.Filter = "Bill_No='' and AmtDr<>0"
  loc_18DEF0C: End If
  loc_18DEF12: var_190 = var_9C.RecordCount
  loc_18DEF20: If (var_190 > 0) Then
  loc_18DEF36:   var_104 = "First Print Bill "
  loc_18DEF3C:   MsgBox(var_104, &H40, var_124, var_144, var_154)
  loc_18DEF4C:   Exit Sub
  loc_18DEF4D: End If
  loc_18DEF6D: Proc_6_17_EAA2B0(var_104, MemVar_1F92078, "Select distinct bill_no from paycharge where LogSite_Code=", var_1B0)
  loc_18DEF75: var_124 = -1 & var_104 
  loc_18DEF7E: var_144 = var_124 & " AND foliono=" 
  loc_18DEF90: Set var_DC = Me.Txt
  loc_18DEF96: Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4)
  loc_18DEF9E: var_144 = var_E0.Text
  loc_18DEFA6: var_154 = CVar(var_E4) 'String
  loc_18DEFB2: var_188 = var_18C & var_154 & " and (Bill_NO<>'' and Bill_NO is not null)" 
  loc_18DEFC0: unk_529B4C.Execute CStr(var_188), var_190, 
  loc_18DEFC8:  = var_18C.RecordCount
  loc_18DEFF3: If (var_190 <= 0) Then
  loc_18DF009:   var_104 = "First Print Bill "
  loc_18DF00F:   MsgBox(var_104, &H40, var_124, var_144, var_154)
  loc_18DF01F:   Exit Sub
  loc_18DF020: End If
  loc_18DF03D: Proc_6_17_EAA2B0(var_104, MemVar_1F92078, "Select * from enviro WHERE LOGSITE_CODE=")
  loc_18DF049: var_E4 = CStr(var_144 & var_104)
  loc_18DF053: unk_529B4C.Execute var_E4, -1, var_DC
  loc_18DF05E: Set var_9C = var_DC
  loc_18DF08D: Proc_6_17_EAA2B0(var_104, MemVar_1F92078, "Select distinct Bill_No from Paycharge where LogSite_Code=")
  loc_18DF095: var_124 = var_188 & var_104 
  loc_18DF09E: var_144 = var_124 & " AND FolioNo=" 
  loc_18DF0B0: Set var_DC = Me.Txt
  loc_18DF0B6: Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4)
  loc_18DF0C6: var_154 = CVar(var_E4) 'String
  loc_18DF0C9: var_164 = -1 & var_154 
  loc_18DF0D7: unk_529B4C.Execute CStr(var_18C & var_154), var_18C, 
  loc_18DF0E2: Set var_C8 = var_18C
  loc_18DF11A: var_E0 = Me.Fields.Item("ChkOutDate")
  loc_18DF139: Set var_18C = Me.Txt
  loc_18DF13F: Call 0.Method_Command2_Click0 (CInt(0), var_1B4)
  loc_18DF163: Set var_1B8 = Me.Txt
  loc_18DF169: Call 0.Method_Command2_Click0 (CInt(&HA), var_1BC)
  loc_18DF196: If ((IsNull(CVar(var_E0)) And (var_1B4.Text <> vbNullString)) And (var_1BC.Text <> vbNullString)) Then
  loc_18DF1A7:   Set var_DC = Me.Txt
  loc_18DF1AD:   Call 0.Method_Command2_Click0 (CInt(9), var_E0)
  loc_18DF1C8:   Set var_18C = Me.Txt
  loc_18DF1CE:   Call 0.Method_Command2_Click0 (CInt(0), var_1B4)
  loc_18DF205:   var_1CC = "Checking Out Person :" & var_E0.Text & vbCrLf & "RoomNo :" & var_1B4.Text
  loc_18DF213:   var_104 = CVar(var_1CC & vbCrLf & "Are you Sure ?") 'String
  loc_18DF248:   If (MsgBox(var_104, &H21, var_124, var_E0.Text, var_154) = 1) Then
  loc_18DF259:     Set var_DC = Me.Txt
  loc_18DF25F:     Call 0.Method_Command2_Click0 (CInt(1), var_E0)
  loc_18DF267:     var_E4 = var_E0.Text
  loc_18DF27F:     If (CDate(var_E4) <= MemVar_1F920EC) Then
  loc_18DF282:       ' Referenced from: 18DF44B
  loc_18DF28F:       var_114 = "Select Sum(AmtDr)-Sum(AmtCr) as Bal from PayCharge where LogSite_Code="
  loc_18DF29F:       Proc_6_17_EAA2B0(var_104, MemVar_1F92078, "Select distinct Bill_No from Paycharge where LogSite_Code=")
  loc_18DF2A7:       var_124 = var_188 & var_104 
  loc_18DF2B0:       var_144 = var_124 & " and VType Not In ('ARRES','ADRES') and Foliono=" 
  loc_18DF2C2:       Set var_DC = Me.Txt
  loc_18DF2C8:       Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4)
  loc_18DF2D0:       var_144 = var_E0.Text
  loc_18DF2D8:       var_154 = CVar(var_E4) 'String
  loc_18DF2DB:       var_164 = -1 & var_154 
  loc_18DF2E9:       unk_529B4C.Execute CStr(var_18C & var_154), var_18C, 
  loc_18DF329:       var_E0 = var_18C.Fields.Item("Bal")
  loc_18DF331:       var_104 = CVar(var_E0) 'Address
  loc_18DF338:       Proc_6_39_E7C810(var_124)
  loc_18DF340:       var_114 = 0
  loc_18DF352:       If CBool(var_124 <> var_114) Then
  loc_18DF368:         var_104 = "Guest Balance is Not Zero"
  loc_18DF384:         If (MsgBox(var_104, &H41, var_124, var_144, var_154) = 1) Then
  loc_18DF399:           fdPaymentCharge.OpenMode = 1
  loc_18DF3A7:           fdPaymentCharge.ParentForm = "Check Out"
  loc_18DF3BA:           Set var_DC = Me.FrReference
  loc_18DF3C0:           Call 0.Method_Command2_Click0 (CInt(0), var_E0)
  loc_18DF3E0:           Set var_18C = New fdPaymentCharge.Txt
  loc_18DF3E6:           Call 0.Method_Command2_Click0 (CInt(0), var_1B4)
  loc_18DF3EE:           fdPaymentCharge.Txt.Text = fdPaymentCharge.FrReference.Text
  loc_18DF413:           Call fdPaymentCharge.Txt_Validate(CInt(0))
  loc_18DF421:           Call 0.Method_arg_54 ("Bill Settlement", 0)
  loc_18DF439:           Call 0.Method_arg_2B0 (1, var_114)
  loc_18DF443:           Set var_8C = Nothing
  loc_18DF446:           Call Proc_64_56_14DF6F4(var_104)
  loc_18DF44B:           GoTo loc_18DF282
  loc_18DF451:         Else
  loc_18DF464:           var_104 = "Guest Not Checked Out"
  loc_18DF46A:           MsgBox(var_104, &H40, var_124, var_144, var_154)
  loc_18DF47A:           Exit Sub
  loc_18DF47B:         End If
  loc_18DF47E:       Else
  loc_18DF484:         var_114 = 0
  loc_18DF4B1:         unk_529B4C.Execute "Select NCUR from enviro where Logsite_code='" & MemVar_1F92078 & "'", var_104, -1
  loc_18DF4B9:         var_DC = var_DC.Fields
  loc_18DF4C1:         var_114 = var_E0.Item(var_E0)
  loc_18DF4C9:         var_18C = var_18C.Value
  loc_18DF4D3:         MemVar_1F920EC = CDate(var_124)
  loc_18DF4F6:         unk_529B4C.BeginTrans var_190
  loc_18DF512:         var_124 = "hh"
  loc_18DF51B:         var_104 = CVar(Proc_6_16_EF29FC(MemVar_1F920EC)) 'String
  loc_18DF55C:         Proc_6_7_F25D88(var_224, MemVar_1F920EC, 1)
  loc_18DF56C:         Proc_6_7_F25D88(var_274, MemVar_1F920EC)
  loc_18DF57C:         Proc_6_7_F25D88(var_304, CVar(Proc_6_15_EF2C1C(1)))
  loc_18DF58F:         Set var_DC = Me.Txt
  loc_18DF595:         Call 0.Method_Command2_Click0 (CInt(&HA), var_E0)
  loc_18DF5B0:         Set var_18C = Me.Txt
  loc_18DF5B6:         Call 0.Method_Command2_Click0 (CInt(0), var_1B4)
  loc_18DF5BE:         var_168 = var_1B4.Text
  loc_18DF5DD:         var_154 = (Format(var_104, var_124) + ":")
  loc_18DF5E4:         var_1E4 = (var_154 + Format(CVar(Proc_6_16_EF29FC(1, 1)), "nn"))
  loc_18DF5E8:         var_1F4 = "Update RoomOcc set chkouttime='" & var_1E4 
  loc_18DF624:         var_2E4 = var_1F4 & "',ChkOutDate=" & var_224 & ",UserchkoutDate=" & var_274 & ",ChkOutUser='" & CVar(MemVar_1F920C8) & "',Type='O',U_EntDt=" 
  loc_18DF65A:         var_3B4 = var_2E4 & var_304 & ",U_AE='E' where Docid='" & CVar(var_E0.Tag) & "' and LogSite_Code='" & CVar(MemVar_1F92078) & "' and RoomNO='" 
  loc_18DF67B:         unk_529B4C.Execute CStr(var_3B4 & CVar(var_168) & "' and (Type='' or Type is NULL)"), var_414, -1
  loc_18DF6EB:         var_E4 = "Update RoomMast set ROOMSTAT='D' WHERE logsite_code='" & MemVar_1F92078
  loc_18DF6F2:         var_1C0 = var_E4 & "' and CODE='"
  loc_18DF703:         Set var_DC = Me.Txt
  loc_18DF709:         Call 0.Method_Command2_Click0 (CInt(0), var_E0, var_168, var_1C0, var_104)
  loc_18DF711:         -1 = var_E0.Text
  loc_18DF72A:         unk_529B4C.Execute var_18C & var_168 & "' AND TYPE='RO'", var_1B8, var_124
  loc_18DF765:         Proc_6_7_F25D88(var_104, MemVar_1F920EC, "Update PayCharge set SettleDate=")
  loc_18DF76D:         var_124 = var_1F4 & var_104 
  loc_18DF776:         var_144 = var_124 & "where FolioNoDocid='" 
  loc_18DF788:         Set var_DC = Me.Txt
  loc_18DF78E:         Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4)
  loc_18DF796:         var_144 = var_E0.Tag
  loc_18DF7A1:         var_164 = -1 & CVar(var_E4) 
  loc_18DF7CB:         unk_529B4C.Execute CStr(CVar(Proc_6_16_EF29FC(1, 1)) & "' and LogSite_Code='" & CVar(MemVar_1F92078) & "'"), var_18C, 
  loc_18DF7F9:         If (MemVar_1F921D0 = "Y") Then
  loc_18DF802:           var_114 = 0
  loc_18DF821:           unk_529B68.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_104, -1
  loc_18DF829:           var_DC = var_DC.Fields
  loc_18DF831:           var_114 = var_E0.Item(var_E0)
  loc_18DF839:           var_18C = var_18C.Value
  loc_18DF843:           var_A8 = CLng(var_124)
  loc_18DF887:           Set var_DC = Me.Txt
  loc_18DF88D:           Call 0.Method_Command2_Click0 (CInt(0), var_E0, var_1C0, "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_A8) & ",'CHKOT','", var_104)
  loc_18DF895:           -1 = var_E0.Text
  loc_18DF8A5:           var_1D0 = var_42C & var_1C0 & "','"
  loc_18DF8B6:           Set var_18C = Me.Txt
  loc_18DF8BC:           Call 0.Method_Command2_Click0 (CInt(0), var_1B4, var_1CC)
  loc_18DF8C4:           var_1D0 = var_1B4.Text
  loc_18DF8D4:           var_420 = var_A8 & var_1CC & "','"
  loc_18DF8E5:           Set var_1B8 = Me.Txt
  loc_18DF8EB:           Call 0.Method_Command2_Click0 (CInt(9), var_1BC, var_41C)
  loc_18DF8F3:           var_420 = var_1BC.Text
  loc_18DF90C:           unk_529B68.Execute var_124 & var_41C & "',0)", , 
  loc_18DF940:         End If
  loc_18DF946:         unk_529B4C.CommitTrans
  loc_18DF966:         var_168 = "Select TxtMsg,MobileNo from EmailSMSForward WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' And Type='Check Out' And Len(MobileNo)>=10 And Len(TxtMsg)>0"
  loc_18DF96F:         unk_529B4C.Execute var_168, var_104, -1
  loc_18DF97A:         Set var_B0 = var_DC
  loc_18DF99E:         If (var_B0.RecordCount > 0) Then
  loc_18DF9D8:           var_BC = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("MobileNo"))))))
  loc_18DF9F6:           var_DC = var_B0.Fields
  loc_18DFA06:           var_104 = CVar(var_DC.Item("TxtMsg")) 'Address
  loc_18DFA1E:           var_B8 = CStr(Trim(CVar(Proc_6_38_E68A98(var_104))))
  loc_18DFA2D:         End If
  loc_18DFA41:         var_E4 = "Select CheckOutMsg,SendingMessageText from SMSEnviro WHERE LOGSITE_CODE='" & MemVar_1F92078
  loc_18DFA51:         unk_529B4C.Execute var_E4 & "'", var_104, -1
  loc_18DFA5C:         Set var_B0 = var_DC
  loc_18DFA80:         If (var_B0.RecordCount > 0) Then
  loc_18DFA92:           var_DC = var_B0.Fields
  loc_18DFABA:           var_C4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_DC.Item("SendingMessageText")), var_DC))))
  loc_18DFAE0:           var_E0 = var_B0.Fields.Item("CheckOutMsg")
  loc_18DFB00:           var_B4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_E0)))))
  loc_18DFB0F:         End If
  loc_18DFB23:         var_168 = "Select FB.Bill_No,FB.SettAmt,FB.FolionoDocId,R.RoomNo,R.GuestProf,GP.Name,GP.MobileNo,R.RoomRate,R.ChkOutDate,R.ChkOutTime,Q.DebitAmt,Q.CreditAmt,GP.Add1,GP.Add2,City.CityName From ((FomBillDetails FB Inner Join RoomOcc R On R.DocId=FB.FolioNoDocId And R.Type='O' And FB.Status='SETTLE') " & "Inner Join (select FolionoDocid,SUM(AmtDR) DebitAmt,SUM(AmtCr) CreditAmt from PayCharge where FolioNoDocid ='"
  loc_18DFB3A:         Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4, var_168)
  loc_18DFB42:         var_104 = var_E0.Tag
  loc_18DFB4B:         var_1C0 = -1 & var_E4
  loc_18DFB60:         var_1D0 = var_1C0 & "' And Not (ModeSet='S' And PayCode<>'" & MemVar_1F92078 & "ROFF') Group By FolioNoDocid)Q On FB.FolioNoDocid=Q.FolioNoDocid Inner Join GuestProf GP On R.GuestProf=GP.Code And R.Type='O') Left Join City On City.CityCode=GP.City Where FB.FolioNoDocid='"
  loc_18DFB71:         Set var_18C = Me.Txt
  loc_18DFB77:         Call 0.Method_Command2_Click0 (CInt(&HA), var_1B4, var_1CC)
  loc_18DFB7F:         var_1D0 = var_1B4.Tag
  loc_18DFBA6:         unk_529B4C.Execute var_1B8 & var_1CC & "' And FB.LogSite_Code='" & MemVar_1F92078 & "'", Me.Txt, 
  loc_18DFBB1:         Set var_AC = var_1B8
  loc_18DFBE3:         var_190 = var_AC.RecordCount
  loc_18DFBF1:         If (var_190 > 0) Then
  loc_18DFC0D:           If ((var_C4 <> "Auto") And (Len(var_B4) <> 0)) Then
  loc_18DFCC7:             var_1E4 = Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Add1"))))) & ", " & Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Add2"))))) 
  loc_18DFCEA:             var_C0 = Replace(var_C0, "<Address>", CStr(var_1E4 & ", " & Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("CityName")))))), 1, -1, 0)
  loc_18DFD41:             var_124 = "dd/MMM/yyyy"
  loc_18DFDA2:             var_1B0 = Format(CVar(var_AC.Fields.Item("ChkOutDate")), var_124) & " " & CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("ChkOutTime")), 1)) 
  loc_18DFDB5:             var_C0 = Replace(var_C0, "<Check Out Date>", CStr(var_1B0), 1, -1, 0)
  loc_18DFDFD:             Proc_6_39_E7C810(var_124, CVar(var_AC.Fields.Item("DebitAmt")))
  loc_18DFE43:             var_C0 = Replace(var_C0, "<Debit Amount>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18DFE7D:             Proc_6_39_E7C810(var_124, CVar(var_AC.Fields.Item("CreditAmt")), 1)
  loc_18DFEC3:             var_C0 = Replace(var_C0, "<Credit Amount>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18DFEFD:             Proc_6_39_E7C810(var_124, CVar(var_AC.Fields.Item("SettAmt")), 1)
  loc_18DFF43:             var_C0 = Replace(var_C0, "<Bill Amount>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18DFF7D:             Proc_6_39_E7C810(var_124, CVar(var_AC.Fields.Item("DebitAmt")), 1, 1)
  loc_18DFFC3:             var_C0 = Replace(var_C0, "<Debit Amount>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18DFFFD:             Proc_6_39_E7C810(var_124, CVar(var_AC.Fields.Item("CreditAmt")), 1, 1)
  loc_18E0043:             var_C0 = Replace(var_C0, "<Credit Amount>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18E00A2:             var_C0 = Replace(var_C0, "<Bill Number>", Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Bill_no")), 1, 1), 1, -1, 0)
  loc_18E0106:             var_C0 = Replace(var_C0, "<Guest Full Name>", CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Name")), 1)))), 1, -1, 0)
  loc_18E0140:             var_124 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Name")), 1)) 'String
  loc_18E0162:             var_1B4 = var_AC.Fields.Item("Name")
  loc_18E020D:             var_254 = (InStr(1, Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Name"))))), " ", 0) - 1)
  loc_18E0211:             var_2F4 = var_1E4 & ", " & Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("CityName"))))) 'Variant
  loc_18E0242:             var_314 = IIf((InStr(1, Trim(CVar(Proc_6_38_E68A98(CVar(var_1B4)))), " ", 0) <> 0), var_2F4, Len(Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Name")))))))
  loc_18E0278:             var_C0 = Replace(var_C0, "<Guest First Name>", CStr(Left(Trim(var_124), CLng(var_314))), 1, -1, 0)
  loc_18E02DA:             var_168 = Proc_6_38_E68A98(CVar(var_AC.Fields.Item("RoomNo")))
  loc_18E02FD:             var_C0 = Replace(var_C0, "<Room Number>", var_168, 1, -1, 0)
  loc_18E0324:             var_E0 = var_AC.Fields.Item("RoomRate")
  loc_18E032C:             var_104 = CVar(var_E0) 'Address
  loc_18E0333:             Proc_6_39_E7C810(var_124, var_104)
  loc_18E0379:             var_C0 = Replace(var_C0, "<Room Tariff>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18E03A5:             If (InStr(1, var_B4, "<Room Discount>", 0) > 0) Then
  loc_18E03B6:               Set var_DC = Me.Txt
  loc_18E03BC:               Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_168)
  loc_18E03C4:               1 = var_E0.Tag
  loc_18E03CF:               var_114 = 0
  loc_18E03EC:               var_E4 = "Select IsNull(Sum(AmtCr)-Sum(AmtDr),0) from Paycharge Where PayCode In ('" & MemVar_1F92078
  loc_18E040A:               unk_529B4C.Execute CStr(Format(var_124, "0.00")) & "DISC') And FolioNoDocid='" & var_168 & "'", var_104, -1
  loc_18E0412:               var_18C = var_18C.Fields
  loc_18E041A:               var_114 = var_1B4.Item(var_1B4)
  loc_18E0422:               var_1B8 = var_1B8.Value
  loc_18E042B:               var_D8 = CSng(var_124)
  loc_18E045E:               var_104 = "0.00"
  loc_18E046F:               var_124 = Format(var_D8, var_104)
  loc_18E04A7:               var_E4 = CStr(IIf((var_D8 <> CDbl(0)), var_124, vbNullString))
  loc_18E04B6:               var_C0 = Replace(var_C0, "<Room Discount>", var_E4, 1, -1, 0)
  loc_18E04C9:             End If
  loc_18E04E1:             If (InStr(1, var_B4, "<Payment Mode>", 0) > 0) Then
  loc_18E0502:               Set var_DC = Me.Txt
  loc_18E0508:               Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4, "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf,GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGE AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ModeSet='S' and ST.FolionoDocid='", var_104, -1, var_18C)
  loc_18E0510:               1 = var_E0.Tag
  loc_18E0529:               unk_529B4C.Execute 1 & var_E4 & "' And AmtCr>0", var_D8, var_124
  loc_18E0534:               Set var_CC = var_18C
  loc_18E054F:               var_D0 = vbNullString
  loc_18E0552:               ' Referenced from:   18E05B2
  loc_18E0561:               If Not(var_CC.EOF) Then
  loc_18E059A:                 var_D0 = 1 & Proc_6_38_E68A98(CVar(var_CC.Fields.Item("PayType")), var_D0) & ", "
  loc_18E05AD:                 var_CC.MoveNext
  loc_18E05B2:                 GoTo loc_18E0552
  loc_18E05B5:               End If
  loc_18E05BA:               Set var_CC = Nothing
  loc_18E05E8:               var_164 = Trim(var_D0)
  loc_18E05FE:               var_1B0 = (Len(var_164) - 1)
  loc_18E0634:               var_234 = Left(Trim(var_D0), CLng(IIf((Len(Trim(var_D0)) > 0), InStr(1, Trim(CVar(Proc_6_38_E68A98(CVar(var_1B4)))), " ", 0), 0)))
  loc_18E0670:               var_C0 = Replace(var_C0, "<Payment Mode>", CStr(var_234), 1, -1, 0)
  loc_18E0673:             End If
  loc_18E0673:           End If
  loc_18E06D9:           If CBool((Len(Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("MobileNo")))))) >= 10) And (Len(var_B4) <> 0)) Then
  loc_18E0735:             Proc_6_39_E7C810(var_164, CVar(var_AC.Fields.Item("Bill_no")))
  loc_18E0746:             var_458 = Val(CStr(var_164))
  loc_18E07DD:             var_274 = Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Name")))))
  loc_18E0810:             var_2C4 = Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("RoomNo")))))
  loc_18E083B:             Proc_6_39_E7C810(var_2F4, CVar(var_AC.Fields.Item("SettAmt")))
  loc_18E0843:             var_41C = "Check Out"
  loc_18E089D:             Proc_233_5_11B7494(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("FolioNoDocid")))))), "CHKOT", CLng(var_458), 0, CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("GuestProf")), var_458)))), CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("MobileNo")))))), vbNullString)
  loc_18E08F1:           End If
  loc_18E08F4:           var_C0 = var_B8
  loc_18E090A:           If ((var_C4 <> "Auto") And (Len(var_C0) <> 0)) Then
  loc_18E09C4:             var_1E4 = Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Add1")), var_C0, MemVar_1F920C8, CStr(var_274)))) & ", " & Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Add2")), CStr(var_2C4), CSng(var_2F4)))) 
  loc_18E09E7:             var_C0 = Replace(var_C0, "<Address>", CStr(var_1E4 & ", " & Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("CityName")), var_41C)))), 1, -1, 0)
  loc_18E0A3E:             var_124 = "dd/MMM/yyyy"
  loc_18E0A9F:             var_1B0 = Format(CVar(var_AC.Fields.Item("ChkOutDate")), var_124) & " " & CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("ChkOutTime")), 1)) 
  loc_18E0AB2:             var_C0 = Replace(var_C0, "<Check Out Date>", CStr(var_1B0), 1, -1, 0)
  loc_18E0AFA:             Proc_6_39_E7C810(var_124, CVar(var_AC.Fields.Item("DebitAmt")))
  loc_18E0B40:             var_C0 = Replace(var_C0, "<Debit Amount>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18E0B7A:             Proc_6_39_E7C810(var_124, CVar(var_AC.Fields.Item("CreditAmt")), 1)
  loc_18E0BC0:             var_C0 = Replace(var_C0, "<Credit Amount>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18E0BFA:             Proc_6_39_E7C810(var_124, CVar(var_AC.Fields.Item("SettAmt")), 1, 1)
  loc_18E0C40:             var_C0 = Replace(var_C0, "<Bill Amount>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18E0C9F:             var_C0 = Replace(var_C0, "<Bill Number>", Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Bill_no")), 1, 1), 1, -1, 0)
  loc_18E0D03:             var_C0 = Replace(var_C0, "<Guest Full Name>", CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Name")), 1)))), 1, -1, 0)
  loc_18E0D3D:             var_124 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Name")), 1)) 'String
  loc_18E0D5F:             var_1B4 = var_AC.Fields.Item("Name")
  loc_18E0DDC:             var_2A4 = Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Name")))))
  loc_18E0E0A:             var_254 = (InStr(1, Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Name"))))), " ", 0) - 1)
  loc_18E0E3F:             var_314 = IIf((InStr(1, Trim(CVar(Proc_6_38_E68A98(CVar(var_1B4)))), " ", 0) <> 0), var_1E4 & ", " & Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("CityName")), var_41C))), Len(var_2A4))
  loc_18E0E75:             var_C0 = Replace(var_C0, "<Guest First Name>", CStr(Left(Trim(var_124), CLng(var_314))), 1, -1, 0)
  loc_18E0ED7:             var_168 = Proc_6_38_E68A98(CVar(var_AC.Fields.Item("RoomNo")))
  loc_18E0EFA:             var_C0 = Replace(var_C0, "<Room Number>", var_168, 1, -1, 0)
  loc_18E0F21:             var_E0 = var_AC.Fields.Item("RoomRate")
  loc_18E0F29:             var_104 = CVar(var_E0) 'Address
  loc_18E0F30:             Proc_6_39_E7C810(var_124, var_104)
  loc_18E0F76:             var_C0 = Replace(var_C0, "<Room Tariff>", CStr(Format(var_124, "0.00")), 1, -1, 0)
  loc_18E0FA2:             If (InStr(1, var_C0, "<Room Discount>", 0) > 0) Then
  loc_18E0FB3:               Set var_DC = Me.Txt
  loc_18E0FB9:               Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_168)
  loc_18E0FC1:               1 = var_E0.Tag
  loc_18E0FCC:               var_114 = 0
  loc_18E0FE9:               var_E4 = "Select IsNull(Sum(AmtCr)-Sum(AmtDr),0) from Paycharge Where PayCode In ('" & MemVar_1F92078
  loc_18E1007:               unk_529B4C.Execute CStr(Format(var_124, "0.00")) & "DISC') And FolioNoDocid='" & var_168 & "'", var_104, -1
  loc_18E100F:               var_18C = var_18C.Fields
  loc_18E1017:               var_114 = var_1B4.Item(var_1B4)
  loc_18E101F:               var_1B8 = var_1B8.Value
  loc_18E1028:               var_D8 = CSng(var_124)
  loc_18E105B:               var_104 = "0.00"
  loc_18E106C:               var_124 = Format(var_D8, var_104)
  loc_18E10A4:               var_E4 = CStr(IIf((var_D8 <> CDbl(0)), var_124, vbNullString))
  loc_18E10B3:               var_C0 = Replace(var_C0, "<Room Discount>", var_E4, 1, -1, 0)
  loc_18E10C6:             End If
  loc_18E10DE:             If (InStr(1, var_C0, "<Payment Mode>", 0) > 0) Then
  loc_18E10FF:               Set var_DC = Me.Txt
  loc_18E1105:               Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4, "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf,GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGE AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ModeSet='S' and ST.FolionoDocid='", var_104, -1, var_18C)
  loc_18E110D:               1 = var_E0.Tag
  loc_18E1126:               unk_529B4C.Execute 1 & var_E4 & "' And AmtCr>0", var_D8, var_124
  loc_18E1131:               Set var_CC = var_18C
  loc_18E114C:               var_D0 = vbNullString
  loc_18E114F:               ' Referenced from:   18E11AF
  loc_18E115E:               If Not(var_CC.EOF) Then
  loc_18E1190:                 var_168 = 1 & Proc_6_38_E68A98(CVar(var_CC.Fields.Item("PayType")), var_D0)
  loc_18E1197:                 var_D0 = var_168 & ", "
  loc_18E11AA:                 var_CC.MoveNext
  loc_18E11AF:                 GoTo loc_18E114F
  loc_18E11B2:               End If
  loc_18E11B7:               Set var_CC = Nothing
  loc_18E11E5:               var_164 = Trim(var_D0)
  loc_18E11FB:               var_1B0 = (Len(var_164) - 1)
  loc_18E1231:               var_234 = Left(Trim(var_D0), CLng(IIf((Len(Trim(var_D0)) > 0), InStr(1, Trim(CVar(Proc_6_38_E68A98(CVar(var_1B4)))), " ", 0), 0)))
  loc_18E126D:               var_C0 = Replace(var_C0, "<Payment Mode>", CStr(var_234), 1, -1, 0)
  loc_18E1270:             End If
  loc_18E1270:           End If
  loc_18E1285:           If ((Len(var_BC) >= &HA) And (Len(var_C0) <> 0)) Then
  loc_18E129F:             var_E0 = var_AC.Fields.Item("FolioNoDocid")
  loc_18E12B0:             var_124 = CVar(Proc_6_38_E68A98(CVar(var_E0))) 'String
  loc_18E12B6:             var_144 = Trim(var_124)
  loc_18E12D2:             var_1B4 = var_AC.Fields.Item("Bill_no")
  loc_18E12DA:             var_154 = CVar(var_1B4) 'Address
  loc_18E12E1:             Proc_6_39_E7C810(var_164, var_154)
  loc_18E12E9:             var_E4 = CStr(var_164)
  loc_18E12F2:             var_458 = Val(var_E4)
  loc_18E1304:             var_1B8 = var_AC.Fields
  loc_18E1356:             var_224 = Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Name")))))
  loc_18E1383:             var_254 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("RoomNo")))) 'String
  loc_18E1389:             var_274 = Trim(var_254)
  loc_18E13B4:             Proc_6_39_E7C810(var_2A4, CVar(var_AC.Fields.Item("SettAmt")))
  loc_18E13BC:             var_418 = "Check Out"
  loc_18E1411:             Proc_233_5_11B7494(CStr(var_144), "CHKOT", CLng(var_458), 0, CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_1B8.Item("GuestProf")), var_458)))), var_BC, vbNullString)
  loc_18E145B:           End If
  loc_18E145B:         End If
  loc_18E1460:         Set var_B0 = Nothing
  loc_18E1468:         Set var_AC = Nothing
  loc_18E146B:         Call Proc_64_53_F10C84(var_C0, MemVar_1F920C8, CStr(var_224), CStr(var_274))
  loc_18E1470:       End If
  loc_18E1473:     Else
  loc_18E148C:       MsgBox("InValid Check Out Date", 0, var_124, var_144, var_154)
  loc_18E149C:       Exit Sub
  loc_18E149D:     End If
  loc_18E14A0:   Else
  loc_18E14A7:     Call Txt_GotFocus()
  loc_18E14AC:   End If
  loc_18E14AF: Else
  loc_18E14BD:   Set var_DC = Me.Txt
  loc_18E14C3:   Call 0.Method_Command2_Click0 (CInt(0), var_E0, var_E4, CInt(0))
  loc_18E14CB:   CSng(var_2A4) = var_E0.Text
  loc_18E14E6:   Set var_18C = Me.Txt
  loc_18E14EC:   Call 0.Method_Command2_Click0 (CInt(&HA), var_1B4, var_168)
  loc_18E14F4:   (var_E4 <> vbNullString) = var_1B4.Text
  loc_18E1514:   If (var_418 And (var_168 <> vbNullString)) Then
  loc_18E152A:     var_104 = "Want to Cancel Check Out ?"
  loc_18E1546:     If (MsgBox(var_104, &H24, var_124, var_144, var_154) = 6) Then
  loc_18E156C:       var_E4 = "Select Count(*) from RoomOcc where logsite_code='" & MemVar_1F92078
  loc_18E1584:       Set var_DC = Me.Txt
  loc_18E158A:       Call 0.Method_Command2_Click0 (CInt(0), var_E0, var_168, var_E4 & "' and RoomNO='", var_104, -1)
  loc_18E15AB:       unk_529B4C.Execute var_1B4 & var_168 & "' and CHkoutDate is NULL", 0, var_1B8
  loc_18E15B3:       var_124 = var_E0.Text.Fields
  loc_18E15BB:        = var_1B4.Item(1)
  loc_18E15C3:        = var_1B8.Value
  loc_18E15F4:       If (var_124 > 0) Then
  loc_18E1610:         MsgBox("Sorry! Room Already Occupied", &H40, var_124, var_144, var_154)
  loc_18E1620:         Exit Sub
  loc_18E1621:       End If
  loc_18E162A:       unk_529B4C.BeginTrans var_190
  loc_18E164C:       Proc_6_7_F25D88(var_124, CVar(Proc_6_15_EF2C1C("Update RoomOcc set chkouttime='',ChkOutDate=NULL,Type='',U_EntDt=", var_254)))
  loc_18E1654:       var_144 = -1 & var_124 
  loc_18E165D:       var_154 = var_144 & ",U_AE='E' where Type='O' AND FolioNo=" 
  loc_18E166F:       Set var_DC = Me.Txt
  loc_18E1675:       Call 0.Method_Command2_Click0 (CInt(&HA), var_E0, var_E4)
  loc_18E167D:       var_154 = var_E0.Text
  loc_18E16B6:       Set var_18C = Me.Txt
  loc_18E16BC:       Call 0.Method_Command2_Click0 (CInt(0), var_1B4)
  loc_18E16DC:       var_1C0 = CStr(var_1B8 & CVar(var_E4) & " and logsite_code='" & CVar(MemVar_1F92078) & "' and  RoomNO='" & CVar(var_1B4.Text) & "'")
  loc_18E16E6:       unk_529B4C.Execute var_1C0, , 
  loc_18E171E:       unk_529B4C.CommitTrans
  loc_18E1723:     End If
  loc_18E1723:     GoTo loc_18E1726
  loc_18E1726:     ' Referenced from:   18E1723
  loc_18E1726:   End If
  loc_18E1726: End If
  loc_18E1731: Me.Requery -1
  loc_18E173D: Call Txt_GotFocus()
  loc_18E1742: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E1B8C4
  'Data Table: 529B38
  loc_E1B8B9: Me.Global.Unload Me
  loc_E1B8C1: Exit Sub
End Sub

Private Sub Command1_Click() 'FCEE04
  'Data Table: 529B38
  Dim var_8E As Integer
  Dim unk_529B4C As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Fields15
  Dim var_B4 As Variant
  loc_FCEC78: On Error Goto loc_FCEDEA
  loc_FCEC7D: var_8E = &HFF
  loc_FCEC89: unk_529B4C.BeginTrans var_94
  loc_FCECA4: unk_529B4C.Execute "sELECT * FROM ROOMOCC WHERE TYPE='O' ORDER BY CHKOUTDATE,CHKOUTTIME", var_B4, -1
  loc_FCECAF: Set var_88 = var_B8
  loc_FCECCE: unk_529B4C.Execute "SELECT * FROM PAYCHARGE WHERE FOLIONO<>0 AND VTYPE Not In ('ARRES','ADRES')", var_B4, -1
  loc_FCECD9: Set var_8C = var_B8
  loc_FCECE2: ' Referenced from: FCEDD6
  loc_FCECF3: If (var_88.EOF = 0) Then
  loc_FCED33:   var_B8 = var_88.Fields
  loc_FCED4A:   Proc_6_7_F25D88(var_D8, CVar(var_B8.Item("ChkOutDate")), CVar("UPDATE PAYCHARGE SET BILL_NO='" & CStr(var_88.AbsolutePosition) & "',SETTLEDATE="), var_194, -1)
  loc_FCEDA0:   unk_529B4C.Execute CStr(var_198 & var_D8 & " WHERE FOLIONO=" & var_88.Fields.Item("FolioNo").Value & " AND VTYPE Not In ('ARRES','ADRES')"), var_B8, var_B8
  loc_FCEDD1:   var_88.MoveNext
  loc_FCEDD6:   GoTo loc_FCECE2
  loc_FCEDD9: End If
  loc_FCEDDF: unk_529B4C.CommitTrans
  loc_FCEDE6: var_8E = 0
  loc_FCEDE9: Exit Sub
  loc_FCEDEA: ' Referenced from: FCEC78
  loc_FCEDF0: If (var_8E = &HFF) Then
  loc_FCEDF9:   unk_529B4C.RollbackTrans
  loc_FCEDFE: End If
  loc_FCEDFE: Proc_6_60_E62BC4(var_8E)
  loc_FCEE03: Exit Sub
End Sub

Private Sub DGRoomType_UnknownEvent_9 'F50544
  'Data Table: 529B38
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5043B: Me.DGRoomType.Visible = False
  loc_F5045A: If (Me.RecordCount > 0) Then
  loc_F50499:   Set var_B4 = Me.Txt
  loc_F5049F:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4), var_B8)
  loc_F504A7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F504DA:   var_B0 = Me.Fields.Item("Name")
  loc_F504F9:   Set var_B4 = Me.Txt
  loc_F504FF:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4), var_B8)
  loc_F50507:   var_B8.Text = CStr(var_B0.Value)
  loc_F5051D: End If
  loc_F50528: Set var_A8 = Me.Txt
  loc_F5052E: Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4))
  loc_F50536: var_B0.SetFocus
  loc_F50542: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5DD34
  'Data Table: 529B38
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5DCFF: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5DD12: Set var_A8 = Me.TxtGrid
  loc_E5DD18: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5DD20: var_AC.Visible = False
  loc_E5DD2C: Call Proc_64_54_EBBC74()
  loc_E5DD31: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68770
  'Data Table: 529B38
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6872C: Set var_88 = Me.TxtGrid
  loc_E68732: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E6874C: If (var_8C.Visible = 0) Then
  loc_E68765:   Me.FGrid.BackColorSel = CVar(CLng(global_60))
  loc_E6876D: End If
  loc_E6876D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1CBB0
  'Data Table: 529B38
  loc_E1CBA7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1CBAF: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '100CDBC
  'Data Table: 529B38
  Dim var_B4 As MSHFlexGrid
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_100CC20: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_100CC36:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_100CC46:   var_9C = "+{Tab}"
  loc_100CC4C:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_100CC56:   arg_C = 0
  loc_100CC5C: Else
  loc_100CCB3:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_100CCC9:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_100CCD1:   End If
  loc_100CCD1: End If
  loc_100CCF4: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_100CD18: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_100CD2E:   var_EC = CLng(Me.FGrid.Col)
  loc_100CD3E:   If Not (var_EC = CLng(&HA)) Then
  loc_100CD48:     If (var_EC = CLng(3)) Then
  loc_100CD4B:     End If
  loc_100CD5E:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_100CD76:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_100CD7B:     var_11C = vbNullString
  loc_100CD85:     Set var_B4 = Me.FGrid
  loc_100CD8B:     LateIdCallSt
  loc_100CDA3:   End If
  loc_100CDA3: End If
  loc_100CDA9: If (arg_C = &HD) Then
  loc_100CDB1:   global_72 = 0
  loc_100CDB4: End If
  loc_100CDB6: arg_C = 0
  loc_100CDB9: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '1230F50
  'Data Table: 529B38
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_9C As Long
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_150 As String
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_1B8 As Variant
  Dim var_21C As Variant
  Dim var_23C As Variant
  Dim var_284 As String
  Dim unk_529B4C As Connection15
  Dim var_2B6 As Integer
  loc_1230A8B: var_9C = CLng(Me.FGrid.Col)
  loc_1230A9B: If (var_9C = CLng(3)) Then
  loc_1230AA9:   If (global_132 = "Yes") Then
  loc_1230AB6:     var_98 = Me.FGrid.Row
  loc_1230ABF:     var_AC = CVar(CLng(var_98)) 'Long
  loc_1230AC7:     var_CC = CVar(CLng(7)) 'Long
  loc_1230AD0:     Set var_E0 = Me.FGrid
  loc_1230AD6:     var_F0 = var_E0.TextMatrix)
  loc_1230B01:     var_140 = Trim(Mid(CVar(CStr(var_F0)), 4, 5))
  loc_1230B09:     var_150 = "RC"
  loc_1230B17:     Set var_164 = Me.FGrid
  loc_1230B26:     var_184 = CVar(CLng(var_164.Row)) 'Long
  loc_1230B6D:     Set var_21C = Me.FGrid
  loc_1230B7C:     var_23C = CVar(CLng(var_21C.Row)) 'Long
  loc_1230B9E:     var_284 = CStr(Me.FGrid.TextMatrix))
  loc_1230BE9:     If CBool(CVar(CLng(1)) And ((CDate(var_284) = MemVar_1F920EC) Or (MemVar_1F920B8 = 1))) Then
  loc_1230C19:       Set var_88 = Me.Txt
  loc_1230C1F:       Call 0.Method_FGrid_UnknownEvent_C0 (CInt(&HA), var_E0, var_284, "Select Count(*) from PayCharge where FolioNoDocid='", var_98, -1, var_164)
  loc_1230C40:       unk_529B4C.Execute 0 & var_284 & "' and Bill_No<>'' and Bill_No is Not NULL", var_21C, var_F0
  loc_1230C48:       var_23C = var_164.Fields
  loc_1230C50:       var_184 = var_E0.Tag.Item(CVar(CLng(&HB)) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(MemVar_1F92078 & "RMCH")))
  loc_1230C58:        = var_21C.Value
  loc_1230C85:       If (var_F0 > 0) Then
  loc_1230C88:         Exit Sub
  loc_1230C89:       End If
  loc_1230C8D:       Set var_1B8 = Me.FGrid
  loc_1230CB1:       var_284 = CStr(Ucase(Chr(CLng(Index))))
  loc_1230CBA:       var_2B6 = Asc(var_284)
  loc_1230CDE:       Set var_E0 = var_1B8
  loc_1230CF0:       Proc_6_63_110ABA4(Me, var_E0, Me.TxtGrid, 0)
  loc_1230D18:       Set var_88 = Me.TxtGrid
  loc_1230D1E:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0, var_284, 0)
  loc_1230D26:       var_2B6 = var_E0.Text
  loc_1230D3F:       If (Len(var_284) <= 1) Then
  loc_1230D4E:         Set var_88 = Me.TxtGrid
  loc_1230D54:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0, var_284)
  loc_1230D5C:         0 = var_E0.Text
  loc_1230D6D:         Set var_164 = Me.TxtGrid
  loc_1230D73:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8)
  loc_1230D7B:         var_1B8.Text = var_284
  loc_1230D8E:       End If
  loc_1230D9A:       Set var_88 = Me.TxtGrid
  loc_1230DA0:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0)
  loc_1230DBA:       Set var_164 = Me.TxtGrid
  loc_1230DC0:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8)
  loc_1230DC8:       var_1B8.SelStart = Len(var_E0.Text)
  loc_1230DDB:     End If
  loc_1230DDB:   End If
  loc_1230DDE: Else
  loc_1230DE5:   If (var_9C = CLng(&HA)) Then
  loc_1230DEC:     Set var_1B8 = Me.FGrid
  loc_1230E10:     var_284 = CStr(Ucase(Chr(CLng(Index))))
  loc_1230E3D:     Set var_E0 = var_1B8
  loc_1230E4F:     Proc_6_63_110ABA4(Me, var_E0, Me.TxtGrid, 0, 0)
  loc_1230E77:     Set var_88 = Me.TxtGrid
  loc_1230E7D:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0, var_284, Asc(var_284))
  loc_1230E85:     0 = var_E0.Text
  loc_1230E9E:     If (Len(var_284) <= 1) Then
  loc_1230EAD:       Set var_88 = Me.TxtGrid
  loc_1230EB3:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0, var_284)
  loc_1230EBB:       var_2B6 = var_E0.Text
  loc_1230ECC:       Set var_164 = Me.TxtGrid
  loc_1230ED2:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8)
  loc_1230EDA:       var_1B8.Text = var_284
  loc_1230EED:     End If
  loc_1230EF9:     Set var_88 = Me.TxtGrid
  loc_1230EFF:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_E0)
  loc_1230F19:     Set var_164 = Me.TxtGrid
  loc_1230F1F:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8)
  loc_1230F27:     var_1B8.SelStart = Len(var_E0.Text)
  loc_1230F3A:   End If
  loc_1230F3A: End If
  loc_1230F44: If (CLng(Index) <> &HD) Then
  loc_1230F4C:   global_72 = &HFF
  loc_1230F4F: End If
  loc_1230F4F: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) '14EFACC
  'Data Table: 529B38
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As MSHFlexGrid
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_14C As String
  Dim var_150 As String
  Dim var_154 As String
  Dim var_15C As String
  Dim var_160 As String
  Dim unk_529B4C As Connection15
  Dim var_B4 As Recordset15
  Dim var_D4 As String
  Dim var_AA As Integer
  Dim var_1A8 As Variant
  Dim var_184 As Variant
  Dim var_174 As Variant
  Dim var_1CC As Variant
  Dim var_1A4 As Variant
  Dim var_1EC As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_1F0 As Field20
  Dim var_AC As Integer
  Dim var_194 As Variant
  Dim var_1C8 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_9A As Integer
  Dim var_A2 As Integer
  Dim var_290 As Variant
  Dim var_280 As Variant
  Dim var_2B0 As Variant
  loc_14EED09: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_14EED0C:   Exit Sub
  loc_14EED0D: End If
  loc_14EED20: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EED28: var_E4 = CVar(CLng(1)) 'Long
  loc_14EED48: var_128 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_14EED6A: If CBool(var_128 <> vbNullString) Then
  loc_14EED7E:   If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_14EED85:     Set var_88 = Me.FGrid
  loc_14EED8B:     var_98 = var_88.Row
  loc_14EEDA0:     If (CLng(var_98) >= 1) Then
  loc_14EEDC5:       var_154 = "SELECT DeleteGuestCharges FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' And CompCode='" & MemVar_1F92128
  loc_14EEDE3:       unk_529B4C.Execute var_154 & "' And UserName='" & MemVar_1F920C8 & "'", var_98, -1
  loc_14EEDEE:       Set var_B4 = var_88
  loc_14EEE1A:       If (var_B4.RecordCount > 0) Then
  loc_14EEE2C:         var_88 = var_B4.Fields
  loc_14EEE3C:         var_98 = CVar(var_88.Item("DeleteGuestCharges")) 'Address
  loc_14EEE45:         var_A8 = Proc_6_38_E68A98(var_98, var_88)
  loc_14EEE4E:       End If
  loc_14EEE72:       unk_529B4C.Execute "Select GuestChargesDeleteLog from Enviro where logsite_code='" & MemVar_1F92078 & "'", var_98, -1
  loc_14EEE7D:       Set var_B4 = var_88
  loc_14EEE93:       var_164 = var_B4.RecordCount
  loc_14EEEA1:       If (var_164 > 0) Then
  loc_14EEEB3:         var_88 = var_B4.Fields
  loc_14EEED2:         var_118 = Ucase(CVar(Proc_6_38_E68A98(CVar(var_88.Item("GuestChargesDeleteLog")), var_88)))
  loc_14EEEEE:         If (var_118 = "YES") Then
  loc_14EEEF3:           var_AA = &HFF
  loc_14EEEF6:         End If
  loc_14EEEF6:       End If
  loc_14EEEFB:       Set var_B4 = Nothing
  loc_14EEF17:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EEF5D:       If (CVar(CLng(1)) Or ((CDate(CStr(Me.FGrid.TextMatrix))) = MemVar_1F920EC) And (var_A8 <> "No"))) Then
  loc_14EEF97:         If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_118, var_128) = 6) Then
  loc_14EEFB9:           If (CLng(Me.FGrid.Rows) > 2) Then
  loc_14EEFC2:             If (var_AA = &HFF) Then
  loc_14EEFEF:               var_B0 = InputBox("Reason for Deletion :", "Delete Reason", var_118, var_128, var_148, var_184, var_1A4)
  loc_14EF003:             End If
  loc_14EF00C:             unk_529B4C.BeginTrans var_164
  loc_14EF082:             Set var_1CC = Me.FGrid
  loc_14EF093:             var_14C = CStr(var_1CC.TextMatrix))
  loc_14EF0A4:             var_1EC = CVar(CLng(8)) And (CDbl(Val(var_14C)) = CDbl(1))
  loc_14EF0C9:             If CBool(var_1EC) Then
  loc_14EF0D2:               If (var_AA = &HFF) Then
  loc_14EF0DB:                 Call 0.Method_arg_50 (var_14C, CVar(CLng(Me.FGrid.Row)), (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString), CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)))
  loc_14EF105:                 var_150 = Replace(var_14C, " ", vbNullString, 1, -1, 0)
  loc_14EF10C:                 var_128 = CVar("Select GuestChargesDeleteLog from Enviro where logsite_code='" & MemVar_1F92078 & "'" & " Tm ") 'String
  loc_14EF12A:                 var_118 = Format(Time, "HH:MM")
  loc_14EF132:                 var_148 = (1 + var_118)
  loc_14EF136:                 var_D4 = "- "
  loc_14EF13B:                 var_184 = (var_148 + "Delete Reason")
  loc_14EF145:                 var_1A4 = (Me.FGrid.Row + CVar(var_B0))
  loc_14EF14A:                 var_B0 = CStr(var_1CC.TextMatrix))
  loc_14EF178:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EF180:                 var_E4 = CVar(CLng(7)) 'Long
  loc_14EF1C3:                 unk_529B4C.Execute "Insert into PayChargeLog Select * from PayCharge WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "'", var_118, -1
  loc_14EF1ED:                 var_98 = Me.FGrid.Row
  loc_14EF1F6:                 var_C4 = CVar(CLng(var_98)) 'Long
  loc_14EF20D:                 var_108 = Me.FGrid.TextMatrix)
  loc_14EF21F:                 var_174 = 0
  loc_14EF250:                 unk_529B4C.Execute "Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_108) & "'", var_118, -1
  loc_14EF260:                 var_174 = var_1CC.Item(var_1CC)
  loc_14EF268:                 var_1F0 = var_1F0.Value
  loc_14EF273:                 Proc_6_39_E7C810(var_148, var_128, var_128, var_108, CVar(CLng(7)))
  loc_14EF27C:                 var_AC = CInt(var_148)
  loc_14EF2AD:                 Proc_6_17_EAA2B0(var_98, var_B0, var_AC, var_B0)
  loc_14EF2BD:                 Proc_6_17_EAA2B0(var_148, MemVar_1F920C8, var_1A8.Fields)
  loc_14EF2CD:                 Proc_6_7_F25D88(var_1EC, MemVar_1F920EC, var_108)
  loc_14EF2E5:                 var_194 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EF2ED:                 var_1C8 = CVar(CLng(7)) 'Long
  loc_14EF320:                 var_14C = CStr((var_AC + 1))
  loc_14EF331:                 var_118 = CVar("Update PayChargeLog Set SeqNo=" & CStr(var_108) & ",Remarks=") & var_98 
  loc_14EF365:                 var_250 = var_118 & ",U_Name=" & var_148 & ",U_EntDt=" & var_1EC & " Where IsNull(SeqNo,0)=0 And DOCID='" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14EF37C:                 unk_529B4C.Execute CStr(var_250 & "'"), var_290, -1
  loc_14EF3B6:               End If
  loc_14EF3C9:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EF3D1:               var_E4 = CVar(CLng(7)) 'Long
  loc_14EF414:               unk_529B4C.Execute "DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "'", var_118, -1
  loc_14EF447:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EF44F:               var_E4 = CVar(CLng(7)) 'Long
  loc_14EF469:               var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_14EF494:               var_9A = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_14EF49D:               ' Referenced from: 14EF550
  loc_14EF4A3:               If (var_9A >= 1) Then
  loc_14EF4AA:                 var_C4 = CVar(CLng(var_9A)) 'Long
  loc_14EF4B2:                 var_E4 = CVar(CLng(7)) 'Long
  loc_14EF4DD:                 If (CStr(Me.FGrid.TextMatrix)) = var_A0) Then
  loc_14EF4E4:                   var_C4 = CVar(CLng(var_9A)) 'Long
  loc_14EF4ED:                   Set var_88 = Me.FGrid
  loc_14EF500:                   var_A2 = &HFF
  loc_14EF503:                 End If
  loc_14EF509:                 var_9A = (var_9A - 1)
  loc_14EF510:                 var_C4 = CVar(CLng(var_9A)) 'Long
  loc_14EF518:                 var_E4 = CVar(CLng(7)) 'Long
  loc_14EF532:                 var_14C = CStr(Me.FGrid.TextMatrix))
  loc_14EF54A:                 If ((var_14C <> var_A0) And (var_A2 = &HFF)) Then
  loc_14EF54D:                   GoTo loc_14EF553
  loc_14EF550:                 End If
  loc_14EF550:                 GoTo loc_14EF49D
  loc_14EF553:                 ' Referenced from: 14EF54D
  loc_14EF553:               End If
  loc_14EF556:             Else
  loc_14EF55C:               If (var_AA = &HFF) Then
  loc_14EF565:                 Call 0.Method_arg_50 (var_14C, var_E4, var_C4, var_9A, var_A2, FGrid.DispID_10000, var_C4)
  loc_14EF58F:                 var_150 = Replace(var_14C, " ", vbNullString, 1, -1, 0)
  loc_14EF596:                 var_128 = CVar("DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & " Tm ") 'String
  loc_14EF5BC:                 var_148 = (1 + Format(Time, "HH:MM"))
  loc_14EF5C0:                 var_D4 = "- "
  loc_14EF5C5:                 var_184 = (var_148 + ",U_Name=")
  loc_14EF5CF:                 var_1A4 = (Format(Time, "HH:MM") & ",U_Name=" & var_148 + CVar(var_B0))
  loc_14EF602:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EF60A:                 var_E4 = CVar(CLng(7)) 'Long
  loc_14EF62F:                 var_118 = Me.FGrid.Row
  loc_14EF638:                 var_138 = CVar(CLng(var_118)) 'Long
  loc_14EF640:                 var_194 = CVar(CLng(8)) 'Long
  loc_14EF649:                 Set var_1CC = Me.FGrid
  loc_14EF64F:                 var_128 = var_1CC.TextMatrix)
  loc_14EF685:                 var_15C = "Insert into PayChargeLog Select * from PayCharge WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "' AND SNO=" & CStr(var_128)
  loc_14EF695:                 unk_529B4C.Execute var_15C & " And isnull(bill_no,'')=''", var_148, -1
  loc_14EF6CD:                 var_98 = Me.FGrid.Row
  loc_14EF6D6:                 var_C4 = CVar(CLng(var_98)) 'Long
  loc_14EF6ED:                 var_108 = Me.FGrid.TextMatrix)
  loc_14EF6FF:                 var_174 = 0
  loc_14EF730:                 unk_529B4C.Execute "Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_108) & "'", var_118, -1
  loc_14EF738:                 var_1A8 = var_1A8.Fields
  loc_14EF740:                 var_174 = var_1CC.Item(var_1CC)
  loc_14EF748:                 var_1F0 = var_1F0.Value
  loc_14EF753:                 Proc_6_39_E7C810(var_148, var_128, var_128, var_108, CVar(CLng(7)))
  loc_14EF75C:                 var_AC = CInt(var_148)
  loc_14EF78D:                 Proc_6_17_EAA2B0(var_98, CStr(Format(Time, "HH:MM") & ",U_Name=" & var_148 & ",U_EntDt="), var_AC, CStr(Format(Time, "HH:MM") & ",U_Name=" & var_148 & ",U_EntDt="))
  loc_14EF79D:                 Proc_6_17_EAA2B0(var_148, MemVar_1F920C8, var_1F0)
  loc_14EF7AD:                 Proc_6_7_F25D88(var_1EC, MemVar_1F920EC, var_128)
  loc_14EF7C5:                 var_194 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EF7CD:                 var_1C8 = CVar(CLng(7)) 'Long
  loc_14EF7FB:                 var_280 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EF803:                 var_2B0 = CVar(CLng(8)) 'Long
  loc_14EF836:                 var_14C = CStr((var_AC + 1))
  loc_14EF860:                 var_1A4 = CVar("Update PayChargeLog Set SeqNo=" & CStr(CVar("Update PayChargeLog Set SeqNo=" & CStr(var_108) & ",Remarks=")) & ",Remarks=") & var_98 & ",U_Name=" & var_148 & ",U_EntDt=" 
  loc_14EF884:                 var_270 = var_1A4 & var_1EC & " Where IsNull(SeqNo,0)=0 And DOCID='" & CVar(CStr(Me.FGrid.TextMatrix))) & "' AND SNO=" 
  loc_14EF8A6:                 unk_529B4C.Execute CStr(var_270 & CVar(CStr(Me.FGrid.TextMatrix))) & " And isnull(bill_no,'')=''"), var_330, -1
  loc_14EF8EE:               End If
  loc_14EF901:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EF909:               var_E4 = CVar(CLng(7)) 'Long
  loc_14EF92E:               var_118 = Me.FGrid.Row
  loc_14EF937:               var_138 = CVar(CLng(var_118)) 'Long
  loc_14EF93F:               var_194 = CVar(CLng(8)) 'Long
  loc_14EF94E:               var_128 = Me.FGrid.TextMatrix)
  loc_14EF98B:               var_160 = "DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "' AND SNO=" & CStr(var_128) & " And isnull(bill_no,'')=''"
  loc_14EF994:               unk_529B4C.Execute var_160, var_148, -1
  loc_14EF9D5:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14EF9DE:               Set var_F8 = Me.FGrid
  loc_14EF9F6:             End If
  loc_14EF9FC:             unk_529B4C.CommitTrans
  loc_14EFA04:           Else
  loc_14EFA04:             var_C4 = 1
  loc_14EFA17:             Me.FGrid.Rows = var_C4
  loc_14EFA3D:             var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), FGrid.DispID_10000, var_C4, var_1F0, var_128, var_194, var_138))) 'String
  loc_14EFA45:             Set var_F8 = Me.FGrid
  loc_14EFA72:             Me.FGrid.FixedRows = 1
  loc_14EFA7A:           End If
  loc_14EFA7A:         End If
  loc_14EFA7A:       End If
  loc_14EFA7D:     Else
  loc_14EFA88:       var_108 = "Delete Module"
  loc_14EFA98:       var_98 = "No Entries To Delete"
  loc_14EFA9E:       MsgBox(var_98, &H10, var_108, var_118, var_128)
  loc_14EFAAE:     End If
  loc_14EFAB2:     Set var_88 = Me.FGrid
  loc_14EFAC3:     Call Proc_64_56_14DF6F4(FGrid.DispID_8001, FGrid.DispID_10000, var_98, var_108, var_E4)
  loc_14EFAC8:   End If
  loc_14EFAC8: End If
  loc_14EFAC8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1CB60
  'Data Table: 529B38
  loc_E1CB57: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1CB5F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E41DF4
  'Data Table: 529B38
  Dim var_8C As TextBox
  loc_E41DC8: Call Proc_64_54_EBBC74()
  loc_E41DD8: Set var_88 = Me.TxtGrid
  loc_E41DDE: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E41DE6: var_8C.Visible = False
  loc_E41DF2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11C1BF4
  'Data Table: 529B38
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_C4 As String
  Dim var_90 As Fields15
  Dim var_C8 As Variant
  loc_11C17AE: Set var_88 = Me.Txt
  loc_11C17B4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11C17C2: Proc_6_74_E226B0(var_8C)
  loc_11C17D1: var_92 = Index
  loc_11C17DC: If (var_92 = CInt(0)) Then
  loc_11C17F6:   If (Me.RecordCount > 0) Then
  loc_11C1804:     Set var_8C = Me.FGPoint
  loc_11C181C:     Proc_6_137_1193554(Me.DGRoomNo, global_92, Index)
  loc_11C182A:   End If
  loc_11C1878:   Set var_88 = Me.Txt
  loc_11C187E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_11C1886:   var_8C = var_8C.Text
  loc_11C18AC:   If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), var_92) = vbNullString)) Then
  loc_11C18AF:     Exit Sub
  loc_11C18B0:   End If
  loc_11C18BD:   Set var_88 = Me.Txt
  loc_11C18C3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C18CB:   var_A0 = var_8C.Text
  loc_11C18DD:   var_C4 = "RoomNo"
  loc_11C1918:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_11C1921:     Me.MoveFirst
  loc_11C1944:     Set var_88 = Me.Txt
  loc_11C194A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_11C1952:     0 = var_8C.Text
  loc_11C196B:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_11C1980:   End If
  loc_11C1983: Else
  loc_11C198B:   If (var_92 = CInt(4)) Then
  loc_11C19A5:     If (Me.RecordCount > 0) Then
  loc_11C19B3:       Set var_8C = Me.FGPoint
  loc_11C19CB:       Proc_6_137_1193554(Me.DGRoomType, global_96)
  loc_11C19D9:     End If
  loc_11C1A27:     Set var_88 = Me.Txt
  loc_11C1A2D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11C1A35:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11C1A5B:     If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_11C1A5E:       Exit Sub
  loc_11C1A5F:     End If
  loc_11C1A6C:     Set var_88 = Me.Txt
  loc_11C1A72:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C1A7A:     var_A0 = var_8C.Text
  loc_11C1A8C:     var_C4 = "Name"
  loc_11C1AA3:     var_C8 = Me.Fields.Item(var_C4)
  loc_11C1AC7:     If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_11C1AD0:       Me.MoveFirst
  loc_11C1AF3:       Set var_88 = Me.Txt
  loc_11C1AF9:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_11C1B01:       0 = var_8C.Text
  loc_11C1B1A:       Me.Find 1 & var_A0 & "'", var_C4, 
  loc_11C1B2F:     End If
  loc_11C1B32:   Else
  loc_11C1B3A:     If (var_92 = CInt(8)) Then
  loc_11C1B4B:       Set var_88 = Me.Txt
  loc_11C1B51:       Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_11C1B69:       global_76 = Val(var_8C.Text)
  loc_11C1B76:     End If
  loc_11C1B76:   End If
  loc_11C1B76: End If
  loc_11C1B85: Set var_88 = Me.Txt
  loc_11C1B8B: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C1B93: var_8C.SelStart = 0
  loc_11C1BAC: Set var_88 = Me.Txt
  loc_11C1BB2: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C1BCD: Set var_90 = Me.Txt
  loc_11C1BD3: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_11C1BDB: var_C8.SelLength = Len(var_8C.Text)
  loc_11C1BEE: Call Proc_64_54_EBBC74(global_76)
  loc_11C1BF3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10FC294
  'Data Table: 529B38
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  loc_10FBF73: var_88 = Shift
  loc_10FBF80: If (CLng(Shift) = &H1B) Then
  loc_10FBF83:   Call Proc_64_54_EBBC74(var_88)
  loc_10FBF88:   Exit Sub
  loc_10FBF89: End If
  loc_10FBF8C: var_8A = KeyCode
  loc_10FBF97: If (var_8A = CInt(0)) Then
  loc_10FBFB7:   Set var_A4 = Me.FGPoint
  loc_10FBFC2:   Set var_A0 = Nothing
  loc_10FBFF4:   Proc_6_69_134A198(Me.DGRoomNo, Me.Txt, CInt(0), global_92, Shift, 0)
  loc_10FC063:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_10FC089:     Proc_6_138_106D6F8(Me.DGRoomNo, global_92, KeyCode, Me.FGPoint, 1)
  loc_10FC097:   End If
  loc_10FC09A: Else
  loc_10FC0A2:   If (var_8A = CInt(4)) Then
  loc_10FC0CD:     Set var_A0 = Nothing
  loc_10FC0FF:     Proc_6_69_134A198(Me.DGRoomType, Me.Txt, CInt(4), global_96, Shift, 0, 1)
  loc_10FC16E:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_10FC175:       Set var_A0 = Me.DGRoomType
  loc_10FC194:       Proc_6_138_106D6F8(var_A0, global_96, KeyCode, Me.FGPoint, var_A0, Me.FGPoint)
  loc_10FC1A2:     End If
  loc_10FC1A2:   End If
  loc_10FC1A2: End If
  loc_10FC1DD: If ((CBool(Me.DGRoomNo.Visible) = 0) And (CBool(Me.DGRoomType.Visible) = 0)) Then
  loc_10FC1FE:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(8))) Then
  loc_10FC207:     Call Txt_Validate(KeyCode)
  loc_10FC212:     If (var_86 = &HFF) Then
  loc_10FC215:       Exit Sub
  loc_10FC216:     End If
  loc_10FC24D:     If (MsgBox("Save Record ?", 4, "Save Data", var_118, var_138) = 6) Then
  loc_10FC250:       Call TopCtrl1_UnknownEvent_19()
  loc_10FC255:     End If
  loc_10FC255:     Exit Sub
  loc_10FC256:   End If
  loc_10FC26B:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10FC274:     Proc_6_75_E527CC(Shift, arg_14, var_86, 0)
  loc_10FC279:   End If
  loc_10FC283:   If (CLng(Shift) = &H26) Then
  loc_10FC28C:     Proc_6_76_E52838(Shift, arg_14, var_A0)
  loc_10FC291:   End If
  loc_10FC291: End If
  loc_10FC291: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F7F880
  'Data Table: 529B38
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_F7F733: Proc_6_58_E054C0(arg_10)
  loc_F7F73E: Proc_6_133_E7EF78(var_94)
  loc_F7F747: arg_10 = CInt(var_94)
  loc_F7F750: var_96 = KeyAscii
  loc_F7F75B: If (var_96 = CInt(0)) Then
  loc_F7F77A:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F7F7A7:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_92, arg_10, "RoomNo")
  loc_F7F7D9:     Proc_6_138_106D6F8(Me.DGRoomNo, global_92, KeyAscii, Me.FGPoint)
  loc_F7F7E7:   End If
  loc_F7F7EA: Else
  loc_F7F7F2:   If (var_96 = CInt(4)) Then
  loc_F7F811:     If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_F7F83E:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_96, arg_10, "Name")
  loc_F7F870:       Proc_6_138_106D6F8(Me.DGRoomType, global_96, KeyAscii, Me.FGPoint, 0)
  loc_F7F87E:     End If
  loc_F7F87E:   End If
  loc_F7F87E: End If
  loc_F7F87E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F1C1B4
  'Data Table: 529B38
  Dim var_86 As Integer
  loc_F1C0BF: var_86 = KeyCode
  loc_F1C0CA: If (var_86 = CInt(0)) Then
  loc_F1C0E9:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F1C0FD:     var_A8 = "RoomNO"
  loc_F1C125:     Proc_6_68_129FB34(Me.DGRoomNo, Me.Txt, CInt(0), global_92)
  loc_F1C138:   End If
  loc_F1C13B: Else
  loc_F1C143:   If (var_86 = CInt(4)) Then
  loc_F1C162:     If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_F1C176:       var_A8 = "Name"
  loc_F1C19E:       Proc_6_68_129FB34(Me.DGRoomType, Me.Txt, CInt(4), global_96, Shift)
  loc_F1C1B1:     End If
  loc_F1C1B1:   End If
  loc_F1C1B1: End If
  loc_F1C1B1: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48DEC
  'Data Table: 529B38
  loc_E48DCA: Set var_88 = Me.Txt
  loc_E48DD0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48DDE: Proc_6_73_E22704(var_8C)
  loc_E48DEA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '18D1ADC
  'Data Table: 529B38
  Dim var_CC As String
  Dim var_D0 As String
  Dim unk_529B4C As Connection15
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_A4 As Double
  Dim var_116 As Integer
  Dim var_11C As Variant
  Dim Me As Variant
  Dim var_F4 As Variant
  Dim var_130 As Variant
  Dim var_114 As Variant
  Dim var_B4 As Recordset15
  Dim var_12C As Variant
  Dim var_104 As Variant
  Dim var_170 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_1A0 As Variant
  Dim var_1F0 As Variant
  Dim var_1F4 As String
  Dim var_1F8 As Fields15
  Dim var_210 As String
  Dim var_20C As TextBox
  Dim var_238 As Double
  Dim var_150 As Variant
  Dim var_1C0 As Variant
  Dim var_190 As String
  Dim var_AC As Recordset15
  Dim var_2C8 As Variant
  Dim var_3B8 As Variant
  Dim var_458 As Variant
  Dim var_B0 As Recordset15
  Dim var_B8 As Recordset15
  Dim var_BC As Recordset15
  Dim var_510 As Double
  Dim var_208 As Fields15
  Dim var_298 As Variant
  Dim var_51C As Double
  Dim var_C4 As Long
  Dim var_C8 As Long
  loc_18CF278: unk_529B4C.Execute "Select * from Enviro where LogSite_Code='" & MemVar_1F92078 & "'", var_F0, -1
  loc_18CF283: Set var_B8 = var_F4
  loc_18CF293: On Error Goto loc_18D1AA1
  loc_18CF29B: var_CC = Proc_6_16_EF29FC(var_F4)
  loc_18CF2A8: var_E0 = "hh:nn"
  loc_18CF2AD: var_104 = var_E0
  loc_18CF2C6: var_A4 = CDate(Format(CVar(var_CC), var_104))
  loc_18CF2DA: var_116 = Cancel
  loc_18CF2E5: If (var_116 = CInt(0)) Then
  loc_18CF2E8:   Call Proc_64_57_13A0770(var_116, var_A4)
  loc_18CF2F9:   If (global_68 = 1) Then
  loc_18CF31A:     Set var_F4 = Me.Txt
  loc_18CF320:     Call 0.Method_Txt_Validate0 (Cancel, var_11C, var_CC, "roomno='", 0)
  loc_18CF328:     1 = var_11C.Text
  loc_18CF341:     Me.Find var_E0 & var_CC & "'", 1, 1
  loc_18CF356:   End If
  loc_18CF376:   var_126 = Me.EOF
  loc_18CF3A4:   Set var_F4 = Me.Txt
  loc_18CF3AA:   Call 0.Method_Txt_Validate0 (Cancel, var_11C)
  loc_18CF3CA:   If (((Me.RecordCount = 0) Or ((var_126 = &HFF) Or (Me.BOF = &HFF))) Or (var_11C.Text = vbNullString)) Then
  loc_18CF3DA:     Set var_F4 = Me.Txt
  loc_18CF3E0:     Call 0.Method_Txt_Validate0 (Cancel, var_11C)
  loc_18CF3E8:     var_11C.Tag = vbNullString
  loc_18CF3F4:     Exit Sub
  loc_18CF3F5:   End If
  loc_18CF430:   Set var_12C = Me.Txt
  loc_18CF436:   Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_18CF43E:   var_130.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_18CF48F:   Set var_12C = Me.Txt
  loc_18CF495:   Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_18CF49D:   var_130.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_18CF4EC:   Set var_12C = Me.Txt
  loc_18CF4F2:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_130)
  loc_18CF4FA:   var_130.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("FolioNo")))
  loc_18CF528:   var_11C = Me.Fields.Item("DocID")
  loc_18CF539:   var_CC = Proc_6_38_E68A98(CVar(var_11C))
  loc_18CF547:   Set var_12C = Me.Txt
  loc_18CF54D:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_130)
  loc_18CF555:   var_130.Tag = var_CC
  loc_18CF589:   Set var_F4 = Me.Txt
  loc_18CF58F:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_11C, var_CC, "Select ChkinDAte,ChkinTime from RoomOcc where Sno=1 and Docid=")
  loc_18CF597:   var_150 = var_11C.Tag
  loc_18CF5A5:   Proc_6_17_EAA2B0(var_104, CVar(var_CC))
  loc_18CF5AD:   var_114 = -1 & var_104 
  loc_18CF5BB:   unk_529B4C.Execute CStr(Format(CVar(var_CC), var_104)), var_12C, 
  loc_18CF5C6:   Set var_B4 = var_12C
  loc_18CF5F4:   If (var_B4.RecordCount > 0) Then
  loc_18CF60E:     var_11C = var_B4.Fields.Item("ChkInDate")
  loc_18CF62D:     Set var_12C = Me.Txt
  loc_18CF633:     Call 0.Method_Txt_Validate0 (CInt(1), var_130)
  loc_18CF63B:     var_130.Text = Proc_6_38_E68A98(CVar(var_11C))
  loc_18CF65A:     Set var_F4 = Me.Txt
  loc_18CF660:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_18CF69A:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_11C), "DDDD"))
  loc_18CF702:     Set var_12C = Me.Txt
  loc_18CF708:     Call 0.Method_Txt_Validate0 (CInt(2), var_130, CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ChkInTime")), 1)), 2)))
  loc_18CF710:     var_130.Text = 1
  loc_18CF77E:     Set var_12C = Me.Txt
  loc_18CF784:     Call 0.Method_Txt_Validate0 (CInt(3), var_130)
  loc_18CF78C:     var_130.Text = CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ChkInTime")))), 2))
  loc_18CF7AD:   Else
  loc_18CF7C7:     var_11C = Me.Fields.Item("ChkInDate")
  loc_18CF7E6:     Set var_12C = Me.Txt
  loc_18CF7EC:     Call 0.Method_Txt_Validate0 (CInt(1), var_130)
  loc_18CF7F4:     var_130.Text = Proc_6_38_E68A98(CVar(var_11C))
  loc_18CF813:     Set var_F4 = Me.Txt
  loc_18CF819:     Call 0.Method_Txt_Validate0 (CInt(1), var_11C)
  loc_18CF853:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_11C), "DDDD"))
  loc_18CF8BE:     Set var_12C = Me.Txt
  loc_18CF8C4:     Call 0.Method_Txt_Validate0 (CInt(2), var_130, CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_18CF8CC:     var_130.Text = 1
  loc_18CF920:     var_104 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")))) 'String
  loc_18CF93D:     Set var_12C = Me.Txt
  loc_18CF943:     Call 0.Method_Txt_Validate0 (CInt(3), var_130)
  loc_18CF94B:     var_130.Text = CStr(Right(var_104, 2))
  loc_18CF969:   End If
  loc_18CF9A5:   Set var_12C = Me.Txt
  loc_18CF9AB:   Call 0.Method_Txt_Validate0 (CInt(9), var_130)
  loc_18CF9B3:   var_130.Tag = CStr(Me.Fields.Item("GuestCode").Value)
  loc_18CFA05:   Set var_12C = Me.Txt
  loc_18CFA0B:   Call 0.Method_Txt_Validate0 (CInt(9), var_130)
  loc_18CFA13:   var_130.Text = CStr(Me.Fields.Item("GuestName").Value)
  loc_18CFA62:   Set var_12C = Me.Txt
  loc_18CFA68:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_130)
  loc_18CFA70:   var_130.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("companyCode")))
  loc_18CFABD:   Set var_12C = Me.Txt
  loc_18CFAC3:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_130)
  loc_18CFACB:   var_130.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CompanyName")))
  loc_18CFB18:   Set var_12C = Me.Txt
  loc_18CFB1E:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_130)
  loc_18CFB26:   var_130.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("GuestStatus")))
  loc_18CFB63:   Proc_6_39_E7C810(var_104, CVar(Me.Fields.Item("OldAdult")))
  loc_18CFB7A:   Set var_12C = Me.Txt
  loc_18CFB80:   Call 0.Method_Txt_Validate0 (CInt(5), var_130)
  loc_18CFB88:   var_130.Text = CStr(var_104)
  loc_18CFBC9:   Proc_6_39_E7C810(var_104, CVar(Me.Fields.Item("OldChild")))
  loc_18CFBE0:   Set var_12C = Me.Txt
  loc_18CFBE6:   Call 0.Method_Txt_Validate0 (CInt(6), var_130)
  loc_18CFBEE:   var_130.Text = CStr(var_104)
  loc_18CFC3F:   Set var_12C = Me.Txt
  loc_18CFC45:   Call 0.Method_Txt_Validate0 (CInt(7), var_130)
  loc_18CFC4D:   var_130.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RateCode")))
  loc_18CFC9A:   Set var_12C = Me.Txt
  loc_18CFCA0:   Call 0.Method_Txt_Validate0 (CInt(&H16), var_130)
  loc_18CFCA8:   var_130.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("PlanCode")))
  loc_18CFCCE:   var_F4 = Me.Fields
  loc_18CFCE7:   var_170 = IsNull(CVar(var_F4.Item("PicPath")))
  loc_18CFCEE:   var_140 = "PicPath"
  loc_18CFD1C:   var_160 = vbNullString
  loc_18CFD3E:   If CBool(var_170 Or (Trim(CVar(Me.Fields.Item(var_140))) = var_160)) Then
  loc_18CFD5F:     Me.Global.LoadPicture var_E0, var_140, var_160, var_170, var_190
  loc_18CFD74:     Me.GuestImage.Picture = var_F4
  loc_18CFD8D:     Me.GuestImage.Tag = vbNullString
  loc_18CFD98:   Else
  loc_18CFDC1:     var_104 = Trim(CVar(Me.Fields.Item("PicPath")))
  loc_18CFDC9:     var_160 = "PicPath"
  loc_18CFE12:     var_140 = "DAT"
  loc_18CFE3A:     var_170 = "AVI"
  loc_18CFE44:     var_1F0 = (Ucase(Right(var_104, 3)) = var_140) Or (Ucase(Right(Trim(CVar(Me.Fields.Item(var_160))), 3)) = var_170)
  loc_18CFE64:     If CBool(var_1F0) Then
  loc_18CFE73:       Me.GuestImage.Visible = False
  loc_18CFE7E:     Else
  loc_18CFEB9:       Me.GuestImage.Tag = CStr(Me.Fields.Item("PicPath").Value)
  loc_18CFED6:       var_E0 = "PicPath"
  loc_18CFEED:       var_11C = Me.Fields.Item(var_E0)
  loc_18CFF07:       Call 0.Method_Txt_Validate4 (CStr(var_11C.Value), var_126)
  loc_18CFF1C:       If var_126 Then
  loc_18CFF39:         Set var_F4 = Me.GuestImage
  loc_18CFF51:         Me.Global.LoadPicture CVar(Me.GuestImage.Tag), var_E0, var_140, var_160, var_170
  loc_18CFF60:         Set var_130 = Me.GuestImage
  loc_18CFF66:         var_130.Picture = var_11C
  loc_18CFF7B:         Set var_F4 = Me.GuestImage
  loc_18CFF81:         var_F4.Refresh
  loc_18CFF8C:       Else
  loc_18CFFAA:         Me.Global.LoadPicture var_E0, var_140, var_160, var_170, var_190
  loc_18CFFBF:         Me.GuestImage.Picture = var_F4
  loc_18CFFCB:       End If
  loc_18CFFCB:     End If
  loc_18CFFCB:   End If
  loc_18CFFDD:   var_F4 = Me.Fields
  loc_18CFFE5:   var_11C = var_F4.Item("RoomRate")
  loc_18CFFF4:   Proc_6_39_E7C810(var_104, CVar(var_11C), var_F4)
  loc_18D000B:   Set var_12C = Me.Txt
  loc_18D0011:   Call 0.Method_Txt_Validate0 (CInt(8), var_130, CStr(var_104))
  loc_18D0019:   var_130.Text = var_11C
  loc_18D0043:   var_F4 = Me.Fields
  loc_18D006A:   Set var_12C = Me.Txt
  loc_18D0070:   Call 0.Method_Txt_Validate0 (CInt(4), var_130)
  loc_18D0078:   var_130.Tag = Proc_6_38_E68A98(CVar(var_F4.Item("RoomCatCode")), var_F4)
  loc_18D00C5:   Set var_12C = Me.Txt
  loc_18D00CB:   Call 0.Method_Txt_Validate0 (CInt(4), var_130)
  loc_18D00D3:   var_130.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCat")))
  loc_18D0120:   Set var_12C = Me.Txt
  loc_18D0126:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_130)
  loc_18D012E:   var_130.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("STATUSNAME")))
  loc_18D017B:   Set var_12C = Me.Txt
  loc_18D0181:   Call 0.Method_Txt_Validate0 (CInt(&H12), var_130)
  loc_18D0189:   var_130.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments1")))
  loc_18D01D6:   Set var_12C = Me.Txt
  loc_18D01DC:   Call 0.Method_Txt_Validate0 (CInt(&H11), var_130)
  loc_18D01E4:   var_130.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments2")))
  loc_18D0231:   Set var_12C = Me.Txt
  loc_18D0237:   Call 0.Method_Txt_Validate0 (CInt(&H10), var_130)
  loc_18D023F:   var_130.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments3")))
  loc_18D0297:   Set var_12C = Me.Txt
  loc_18D029D:   Call 0.Method_Txt_Validate0 (CInt(&H13), var_130)
  loc_18D02A5:   var_130.Text = Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("Add1"))))
  loc_18D0301:   Set var_12C = Me.Txt
  loc_18D0307:   Call 0.Method_Txt_Validate0 (CInt(&H14), var_130)
  loc_18D030F:   var_130.Text = Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("Add2"))))
  loc_18D0341:   var_11C = Me.Fields.Item("CityName")
  loc_18D0381:   var_130 = Me.Fields.Item("StateName")
  loc_18D03BD:   var_1F8 = Me.Fields
  loc_18D03D4:   var_1A0 = Trim(CVar(var_1F8.Item("CountryName")))
  loc_18D03E5:   var_210 = var_11C & Proc_6_38_E68A98(Trim(CVar(var_130)), Proc_6_38_E68A98(Trim(CVar(var_11C))) & ",") & "," & Proc_6_38_E68A98(var_1A0)
  loc_18D03F3:   Set var_208 = Me.Txt
  loc_18D03F9:   Call 0.Method_Txt_Validate0 (CInt(&H15), var_20C)
  loc_18D0401:   var_20C.Text = var_210
  loc_18D046C:   Set var_12C = Me.Txt
  loc_18D0472:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_130)
  loc_18D047A:   var_130.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DepDate")))
  loc_18D04E1:   Set var_12C = Me.Txt
  loc_18D04E7:   Call 0.Method_Txt_Validate0 (CInt(&HF), var_130)
  loc_18D04EF:   var_130.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_18D0527:   var_11C = Me.Fields.Item("DepTime")
  loc_18D0560:   Set var_12C = Me.Txt
  loc_18D0566:   Call 0.Method_Txt_Validate0 (CInt(&HE), var_130)
  loc_18D059A:   Set var_F4 = Me.Txt
  loc_18D05A0:   Call 0.Method_Txt_Validate0 (CInt(1), var_11C)
  loc_18D05A8:   var_CC = var_11C.Text
  loc_18D05D0:   var_130 = Me.Fields.Item("ChkOutDate")
  loc_18D05F1:   If ((CDate(var_CC) <= MemVar_1F920EC) And IsNull(CVar(var_130))) Then
  loc_18D05FA:     Call 0.Method_arg_50 (var_CC)
  loc_18D060A:     If (var_CC <> "Reverse Check Out Entry") Then
  loc_18D062A:       var_11C = Me.Fields.Item("ChkInDate")
  loc_18D0632:       var_F0 = var_11C.Value
  loc_18D064C:       For var_220 = CDate(var_F0) To MemVar_1F920EC: var_94 = var_220 'Double
  loc_18D065D:         Proc_6_7_F25D88(var_F0, var_94)
  loc_18D0670:         Set var_F4 = Me.Txt
  loc_18D0676:         Call 0.Method_Txt_Validate0 (CInt(&HA), var_11C)
  loc_18D068C:         Proc_6_17_EAA2B0(var_1A0, CVar(var_11C.Tag))
  loc_18D069F:         Set var_12C = Me.Txt
  loc_18D06A5:         Call 0.Method_Txt_Validate0 (CInt(&HA), var_130)
  loc_18D06BA:         var_238 = Val(CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_11C))), 2)))
  loc_18D06D8:         var_104 = CVar("Select Count(*) from Paycharge where Vtype in ('RC') and LogSite_Code='" & MemVar_1F92078 & "' And Vdate=") 'String
  loc_18D06F7:         var_1C0 = var_104 & var_F0 & " And (FolioNoDocid=" & var_1A0 & " Or RelatedFolioNo=" 
  loc_18D0719:         unk_529B4C.Execute CStr(var_1C0 & CVar(var_238) & ")"), var_1F0, -1
  loc_18D0778:         var_F0 = var_1F8.Fields.Item(0).Value
  loc_18D0792:         If (var_F0 <= 0) Then
  loc_18D07A9:           var_104 = CVar("select ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP]  FROM ((ROOMOCC inner JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) inner JOIN RevMast ON RoomCat.RevCode = RevMast.Code) " & "inner JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE ") 'String
  loc_18D07B7:           Proc_6_7_F25D88(var_F0, var_94, var_104, var_508, -1)
  loc_18D07C8:           var_150 = var_208 & var_F0 & ">=chkindate and Roomocc.LogSite_Code='" 
  loc_18D0808:           Proc_6_17_EAA2B0(var_1C0, CVar(Me.Fields.Item("DocID")), var_150 & CVar(MemVar_1F92078) & "' and RoomOcc.Docid=")
  loc_18D0828:           Proc_6_7_F25D88(var_1F0, var_94, var_1F8 & var_1C0 & " and RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE ")
  loc_18D0848:           Proc_6_7_F25D88(var_298, var_94)
  loc_18D0859:           var_2C8 = var_238 & var_1F0 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " & var_298 & ">=chkindate and ChngDate<=" 
  loc_18D0868:           Proc_6_7_F25D88(var_2E8, var_94)
  loc_18D08A2:           var_12C = Me.Fields
  loc_18D08B9:           Proc_6_17_EAA2B0(var_388, CVar(var_12C.Item("DocID")))
  loc_18D08CA:           var_3B8 = var_2C8 & var_2E8 & " and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) & "' and RoomOcc.Docid=" & var_388 & " Order By ChngDate Desc,Sno Desc) and Roomocc.LogSite_Code='" 
  loc_18D090A:           Proc_6_17_EAA2B0(var_428, CVar(Me.Fields.Item("DocID")))
  loc_18D091B:           var_458 = var_3B8 & CVar(MemVar_1F92078) & "' and RoomOcc.Docid=" & var_428 & ") and RoomOcc.Docid NOT IN (SELECT Distinct FolioNoDocid FROM PAYCHARGE where VDate=" 
  loc_18D092A:           Proc_6_7_F25D88(var_478, var_94)
  loc_18D095C:           unk_529B4C.Execute CStr(var_458 & var_478 & " AND VType in ('RC') and LogSite_Code='" & CVar(MemVar_1F92078) & "')"), CDate(var_F0), 
  loc_18D0967:           Set var_B0 = var_208
  loc_18D0A18:           unk_529B4C.Execute CStr("Select * from RoomOcc Where DocId='" & var_B0.Fields.Item("DocID").Value & "' And SNo=1"), var_150, -1
  loc_18D0A23:           Set var_BC = var_12C
  loc_18D0A76:           If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("CheckOut"))) = "24 Hrs") Then
  loc_18D0B27:             Proc_96_11_EF9DD8(CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ChkInTime")))), "hh:nn")), CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("variation")), 1)), "hh:nn")), 1)
  loc_18D0BD9:             var_238 = Val(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ChkInTime")), 1)), "nn")))
  loc_18D0C36:             var_510 = Val(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("variation")), var_238, 1)), "hh")))
  loc_18D0C93:             var_51C = Val(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("variation")), var_510, 1)), "nn")))
  loc_18D0CDA:             var_C4 = CLng(((((Val(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ChkInTime")), 1)), "hh"))) * CDbl(&H3C)) + var_238) + (var_510 * CDbl(&H3C))) + var_51C))
  loc_18D0D21:           Else
  loc_18D0DCF:             Proc_96_11_EF9DD8(CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("CheckoutVar")), var_C4, 1, 1, var_51C)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("variation")), 1, 1, 1)), "hh:nn")), 1, 1)
  loc_18D0E81:             var_238 = Val(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("CheckoutVar")), 1)), "nn")))
  loc_18D0EDE:             var_510 = Val(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("variation")), var_238, 1)), "hh")))
  loc_18D0F3B:             var_51C = Val(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("variation")), var_510, 1)), "nn")))
  loc_18D0F82:             var_C4 = CLng(((((Val(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("CheckoutVar")), 1, 1)), "hh"))) * CDbl(&H3C)) + var_238) + (var_510 * CDbl(&H3C))) + var_51C))
  loc_18D0FC6:           End If
  loc_18D1008:           var_150 = CVar(FormatDateTime(var_A4, 4)) 'String
  loc_18D101F:           var_238 = Val(CStr(Format(var_150, "nn")))
  loc_18D1040:           var_114 = Format(CVar(FormatDateTime(var_A4, 4)), "hh")
  loc_18D105A:           var_C8 = CLng(((Val(CStr(var_114)) * CDbl(&H3C)) + var_238))
  loc_18D10B0:           If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("RoomRentChkOutPost")), var_C8, 1, 1, var_238, 1, 1) = "Auto") Then
  loc_18D10B3:             GoTo loc_18D1182
  loc_18D10B6:           End If
  loc_18D10D5:           var_104 = CVar(var_BC.Fields.Item("ChkInDate")) 'Address
  loc_18D1145:           If ((((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("CheckOut")), var_51C) = "24 Hrs") And (var_94 = MemVar_1F920EC)) And (var_94 <> CDate(Proc_6_38_E68A98(var_104, var_C4, 1, 1)))) And (var_C4 >= var_C8)) Then
  loc_18D1148:             GoTo loc_18D1A5B
  loc_18D114B:           End If
  loc_18D117F:           If (MsgBox("Want to Post Charges for " & CDate(var_94), &H24, var_104, var_114, var_150) = 6) Then
  loc_18D1182:             ' Referenced from: 18D10B3
  loc_18D11DA:             var_D0 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("RoomRentBefChkOut")), (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("CheckOut")), 1) = "Other"))
  loc_18D11F8:             If (1 And (var_D0 = "Yes")) Then
  loc_18D120A:               var_F4 = var_BC.Fields
  loc_18D1245:               var_104 = CVar(var_B8.Fields.Item("CheckoutVar")) 'Address
  loc_18D132E:               Proc_96_12_F095A0(CDate(Format(CVar(Proc_6_38_E68A98(var_104)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VariationBefore")), 1)), "hh:nn")), (var_94 = CDate(Proc_6_38_E68A98(CVar(var_F4.Item("ChkInDate"))))), 1)
  loc_18D1375:               If (1 And (1 > CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ChkInTime")), 1)), "hh:nn")))) Then
  loc_18D139D:                 unk_529B4C.Execute CStr(var_B0.Source), var_104, -1
  loc_18D140B:                 Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_F4, 0, "*", 0)
  loc_18D1420:               End If
  loc_18D1420:             End If
  loc_18D142F:             If ((var_94 = MemVar_1F920EC) And (var_C4 >= var_C8)) Then
  loc_18D1441:               var_F4 = var_B8.Fields
  loc_18D148A:               var_D0 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("CheckOut")), (Proc_6_38_E68A98(CVar(var_F4.Item("RoomRentChkOutPost")), 1, 1) = "Semi"))
  loc_18D14DF:               If (1 And (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("RoomRentBefChkOut")), (var_F4 And (var_D0 = "Other"))) <> "Yes")) Then
  loc_18D150C:                 var_1F4 = 0
  loc_18D1535:                 Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*")
  loc_18D154D:               Else
  loc_18D15D0:                 var_D0 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("CheckOut")), (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("RoomRentChkOutPost")), 1) = "Auto"))
  loc_18D163A:                 If (((1 And (var_D0 = "Other")) And (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("RoomRentBefChkOut"))) <> "Yes")) And (var_94 = CDate(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ChkInDate")), var_1F4)))) Then
  loc_18D1667:                   var_1F4 = 0
  loc_18D1690:                   Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*")
  loc_18D16A8:                 Else
  loc_18D1727:                   If ((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("CheckOut")), 1) = "24 Hrs") And (var_94 = CDate(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ChkInDate")), var_1F4)))) Then
  loc_18D1754:                     var_1F4 = 0
  loc_18D177D:                     Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*")
  loc_18D1795:                   Else
  loc_18D17B4:                     var_114 = CVar(var_BC.Fields.Item("ChkInDate")) 'Address
  loc_18D17DF:                     var_150 = CVar(var_B8.Fields.Item("CheckoutVar")) 'Address
  loc_18D18F9:                     var_104 = CVar(var_B8.Fields.Item("RoomRentBefChkOut")) 'Address
  loc_18D192A:                     Proc_96_12_F095A0(CDate(Format(CVar(Proc_6_38_E68A98(var_150, 1)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VariationBefore")), 1)), "hh:nn")))
  loc_18D197D:                     If (1 And (((1 And (Proc_6_38_E68A98(var_104, (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("CheckOut")), 1, 1) = "Other")) = "Yes")) And (var_94 = CDate(Proc_6_38_E68A98(var_114, Proc_6_38_E68A98(var_114, var_1F4, 1), 1)))) <= CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ChkInTime")), 1, 1)), "hh:nn")))) Then
  loc_18D19AA:                       var_1F4 = 0
  loc_18D19D3:                       Proc_96_4_1C1BDCC(CDate(Format$(var_94, "dd/MMM/yyyy")), var_B0, 0, "*")
  loc_18D19E8:                     End If
  loc_18D19E8:                   End If
  loc_18D19E8:                 End If
  loc_18D19E8:               End If
  loc_18D19EB:             Else
  loc_18D1A35:               var_CC = Format$(var_94, "dd/MMM/yyyy")
  loc_18D1A3E:               Proc_96_4_1C1BDCC(CDate(var_CC), var_B0, 0, "*", 0)
  loc_18D1A53:             End If
  loc_18D1A58:             global_124 = &HFF
  loc_18D1A5B:             ' Referenced from: 18D1148
  loc_18D1A5B:           End If
  loc_18D1A5B:         End If
  loc_18D1A5E:       Next var_220 'Double
  loc_18D1A63:     End If
  loc_18D1A68:     Set var_AC = Nothing
  loc_18D1A6B:   End If
  loc_18D1A6B:   Call Proc_64_56_14DF6F4()
  loc_18D1A70: End If
  loc_18D1A75: Set var_BC = Nothing
  loc_18D1A7D: Set var_B8 = Nothing
  loc_18D1A85: Set var_C0 = Nothing
  loc_18D1A8D: Set var_B4 = Nothing
  loc_18D1A95: Set var_B0 = Nothing
  loc_18D1A9D: Set var_AC = Nothing
  loc_18D1AA0: Exit Sub
  loc_18D1AA1: ' Referenced from: 18CF293
  loc_18D1AB7: Set var_F4 = Err()
  loc_18D1ABD: Call 0.Method_arg_2C (var_CC, 0, var_104)
  loc_18D1AC8: MsgBox(CVar(var_CC), var_114, var_150, , )
  loc_18D1ADB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'F11E80
  'Data Table: 529B38
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F11D98: On Error Goto loc_F11E3D
  loc_F11DB2: If (Me.RecordCount > 0) Then
  loc_F11DCA:   var_8C = "EDIT"
  loc_F11DD8:   Call Proc_64_52_E79D54(Proc_5_1_100CB50(var_8C, Me))
  loc_F11DEE:   Set var_90 = Me.Txt
  loc_F11DF4:   Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(0), var_98)
  loc_F11DFC:   var_98.SetFocus
  loc_F11E0B: Else
  loc_F11E2C:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F11E3C: End If
  loc_F11E3C: Exit Sub
  loc_F11E3D: ' Referenced from: F11D98
  loc_F11E45: Set var_90 = Err()
  loc_F11E4B: Call 0.Method_arg_2C (var_8C)
  loc_F11E6C: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F11E7F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 'F05424
  'Data Table: 529B38
  Dim Me As Recordset15
  Dim var_8C As TextBox
  loc_F05350: On Error Goto loc_F053E9
  loc_F0535E: Set var_88 = Me.Txt
  loc_F05364: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_F0536C: var_94 = "Room No"
  loc_F0538D: If (Proc_6_27_EA565C(var_8C, var_94) = 0) Then
  loc_F05397:   Call Txt_GotFocus(CInt(0))
  loc_F0539C:   Exit Sub
  loc_F0539D: End If
  loc_F053A9: Call Txt_Validate(CInt(0))
  loc_F053AE: Call Proc_64_53_F10C84(0)
  loc_F053BE: Me.Requery -1
  loc_F053CE: Set var_88 = Me.Txt
  loc_F053D4: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_8C)
  loc_F053DC: var_8C.SetFocus
  loc_F053E8: Exit Sub
  loc_F053E9: ' Referenced from: F05350
  loc_F053F1: Set var_88 = Err()
  loc_F053F7: Call 0.Method_arg_2C (var_94)
  loc_F05410: MsgBox(CVar(var_94), &H10, var_C8, var_E8, var_108)
  loc_F05423: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F506A4
  'Data Table: 529B38
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5059B: Me.DGRoomNo.Visible = False
  loc_F505BA: If (Me.RecordCount > 0) Then
  loc_F505F9:   Set var_B4 = Me.Txt
  loc_F505FF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F50607:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F5063A:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F50659:   Set var_B4 = Me.Txt
  loc_F5065F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F50667:   var_B8.Text = CStr(var_B0.Value)
  loc_F5067D: End If
  loc_F50688: Set var_A8 = Me.Txt
  loc_F5068E: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F50696: var_B0.SetFocus
  loc_F506A2: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9A310
  'Data Table: 529B38
  Dim var_A8 As Variant
  loc_E9A294: Set var_88 = Me.DGRoomNo
  loc_E9A2BE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9A2C6: Set var_BC = Me.DGRoomNo
  loc_E9A300: Proc_6_138_106D6F8(Me.DGRoomNo, global_92, 0, Me.FGPoint)
  loc_E9A30E: Exit Sub
End Sub

Private Sub Form_Load() '11710F4
  'Data Table: 529B38
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_B0 As String
  Dim unk_529CB4 As Connection15
  Dim var_D0 As String
  Dim var_D4 As String
  Dim unk_529B4C As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  Dim Me As Recordset15
  Dim var_C8 As TextBox
  Dim var_F8 As DataGrid
  Dim var_FC As TextBox
  loc_1170D48: On Error Goto loc_11710EC
  loc_1170D53: Call 0.Method_arg_7C (CDbl(1450))
  loc_1170D60: Call 0.Method_arg_74 (CDbl(1625))
  loc_1170D6D: Call 0.Method_MeC (CDbl(9200))
  loc_1170D7A: Call 0.Method_Me4 (CDbl(17000))
  loc_1170D86: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1170D99: Me.Frame1.BackColor = CLng(MemVar_1F921B0)
  loc_1170DB4: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1170DC9: Set var_8C = Me.Fgrid1
  loc_1170DCF: var_8C.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1170DFB: unk_529CB4.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F92078 & "FOM'", var_C4, -1
  loc_1170E0C: Set global_120 = var_8C
  loc_1170E2B: Set global_92 = New 
  loc_1170E3D: Me.Recordset15.CursorLocation = 3
  loc_1170E6B: var_D0 = "SELECT ChangeGuestCharges FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' And CompCode='" & MemVar_1F92128 & "' And UserName='"
  loc_1170E82: unk_529B4C.Execute var_D0 & MemVar_1F920C8 & "'", var_C4, -1
  loc_1170E8D: Set var_88 = var_8C
  loc_1170EAB: var_DC = var_88.RecordCount
  loc_1170EB9: If (var_DC > 0) Then
  loc_1170ECB:   var_8C = var_88.Fields
  loc_1170ED3:   var_C8 = var_8C.Item("ChangeGuestCharges")
  loc_1170EDB:   var_C4 = CVar(var_C8) 'Address
  loc_1170EE2:   Proc_6_39_E7C810(var_EC, var_C4)
  loc_1170EF1:   global_132 = CStr(var_EC)
  loc_1170F02: End If
  loc_1170F08: If (MemVar_1F920B8 <> 1) Then
  loc_1170F0B:   GoTo loc_1170F4D
  loc_1170F0E: End If
  loc_1170F32: unk_529B4C.Execute "Select nCUR from enviro where LOGsite_code='" & MemVar_1F92078 & "'", var_C4, -1
  loc_1170F3D: Set var_88 = var_8C
  loc_1170F4D: ' Referenced from: 1170F0B
  loc_1170F5A: Me.Command2.Caption = "Bill Settle"
  loc_1170F72: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E("Add")
  loc_1170F7B: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_0(Me.TopCtrl1)
  loc_1170FA4: var_B0 = "SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name as GuestName, GuestProf.GuestStatus, SubGroup.Name as CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode as CompanyCode,GuestFolio.FolioNO as FolioNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName,GuestProf.PicPath, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,GUESTSTAT.NAME AS STATUSNAME,roomocc.Docid,RoomOcc.PlanCode " & "FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS where RoomMast.LogSite_Code='"
  loc_1170FC0: var_D4 = var_B0 & MemVar_1F92078 & "' and RoomOcc.logsite_code='" & MemVar_1F92078 & "' and RoomMast.type='RO' and RoomMAst.Code in (Select ISNULL(RoomNo,'') from RoomOcc where ROOMMAST.LOGSITE_CODE='"
  loc_1170FDC: var_C4 = CVar(var_D4 & MemVar_1F92078 & "' AND ROOMOCC.LOGSITE_CODE='" & MemVar_1F92078 & "' AND isnull(type,'')<>'O' and isnull(type,'')<>'C') and isnull(RoomOcc.type,'')<>'O' and isnull(RoomOcc.type,'')<>'C'  Order by RoomMast.Code") 'String
  loc_1170FE6: Me.Open var_C4, CVar(MemVar_1F92044), 2
  loc_1171007: Call 0.Method_arg_54 ("Room Check Out Entry", 3)
  loc_117101A: Set var_8C = Me.Txt
  loc_1171020: Call 0.Method_Form_Load0 (CInt(0), var_C8, var_DC)
  loc_1171028: -1 = var_C8.Left
  loc_117103F: Me.DGRoomNo.Left = CVar(var_DC)
  loc_117105B: Set var_F8 = Me.Txt
  loc_1171061: Call 0.Method_Form_Load0 (CInt(0), var_FC)
  loc_117107C: Set var_8C = Me.Txt
  loc_1171082: Call 0.Method_Form_Load0 (CInt(0), var_C8)
  loc_117109A: var_9C = CVar(((var_C8.Top + var_FC.Height) + CDbl(&H1E))) 'Single
  loc_11710A9: Me.DGRoomNo.Top = CVar(var_C8.Top)
  loc_11710C4: CVarUnk
  loc_11710C9: VerifyVarObj
  loc_11710CF: Set var_8C = Me.DGRoomNo
  loc_11710D5: LateIdStAd
  loc_11710E8: Set var_88 = Nothing
  loc_11710EB: Exit Sub
  loc_11710EC: ' Referenced from: 1170D48
  loc_11710EC: Proc_6_60_E62BC4(var_8C, global_92)
  loc_11710F1: Exit Sub
End Sub

Private Sub Form_Resize() 'E76198
  'Data Table: 529B38
  loc_E76142: Call 0.Method_arg_50 (var_88)
  loc_E76154: Me.LblFormCaption.Caption = var_88
  loc_E7616D: Me.LblFormCaption.Left = CDbl(0)
  loc_E7617B: Call 0.Method_arg_100 (var_90)
  loc_E7618D: Me.LblFormCaption.Width = var_90
  loc_E76195: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) '13403DC
  'Data Table: 529B38
  Dim var_9C As Variant
  Dim var_A0 As String
  Dim var_B0 As Variant
  Dim var_114 As String
  Dim unk_529B4C As Connection15
  Dim var_94 As Recordset15
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As String
  Dim var_88 As Integer
  Dim var_100 As Variant
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_110 As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_190 As TextBox
  Dim var_198 As String
  Dim var_1A0 As String
  Dim var_14C As Variant
  Dim var_1A4 As Recordset15
  Dim var_1A8 As Fields15
  Dim var_1AC As Field20
  Dim var_8A As Integer
  Dim var_1FC As Variant
  Dim var_21C As Variant
  Dim var_F0 As Variant
  Dim var_23C As Variant
  Dim var_3FC0 As Variant
  loc_133FC68: Call 0.Method_Form_Unload0 (CInt(&HA), var_9C)
  loc_133FC91: If ((var_9C.Text <> vbNullString) And (global_124 = &HFF)) Then
  loc_133FCB0:   var_B0 = CVar("Room Charges are Posted," & vbCrLf & "Do you want to delete Charges?") 'String
  loc_133FCCC:   If (MsgBox(var_B0, &H24, var_D0, var_F0, var_110) = 6) Then
  loc_133FCF3:     unk_529B4C.Execute "Select GuestChargesDeleteLog from Enviro where logsite_code='" & MemVar_1F92078 & "'", var_B0, -1
  loc_133FCFE:     Set var_94 = Me.Txt
  loc_133FD22:     If (var_94.RecordCount > 0) Then
  loc_133FD6F:       If (Ucase(CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("GuestChargesDeleteLog"))))) = "YES") Then
  loc_133FD74:         var_88 = &HFF
  loc_133FD77:       End If
  loc_133FD77:     End If
  loc_133FD7C:     Set var_94 = Nothing
  loc_133FDA4:     For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_11C 'Integer
  loc_133FDAE:       var_C0 = CVar(CLng(var_86)) 'Long
  loc_133FDD0:       var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_133FE1C:       If (CVar(CLng(0)) And (CStr(Me.FGrid.TextMatrix)) = "*")) Then
  loc_133FE25:         If (var_88 = &HFF) Then
  loc_133FE2E:           Call 0.Method_arg_50 (var_A0, CVar(CLng(var_86)), (var_A0 <> vbNullString), CVar(CLng(7)))
  loc_133FE58:           var_114 = Replace(var_A0, " ", vbNullString, 1, -1, 0)
  loc_133FE5F:           var_110 = CVar(CStr(Me.FGrid.TextMatrix)) & " Tm ") 'String
  loc_133FE71:           var_D0 = "HH:MM"
  loc_133FE7D:           var_F0 = Format(Time, var_D0)
  loc_133FE85:           var_17C = (1 + var_F0)
  loc_133FE89:           var_E0 = "- Auto Delete"
  loc_133FE8E:           var_18C = (var_17C + "YES")
  loc_133FEC7:           var_B0 = Me.FGrid.TextMatrix)
  loc_133FEE1:           Set var_9C = Me.Txt
  loc_133FEE7:           Call 0.Method_Form_Unload0 (CInt(&HA), var_190, var_194, var_B0, CVar(CLng(7)), CVar(CLng(var_86)))
  loc_133FEEF:           1 = var_190.Text
  loc_133FF13:           var_198 = "Insert into PayChargeLog Select * from PayCharge WHERE Docid='" & CStr(var_B0) & "' and MarkEntry='*' and FolioNo="
  loc_133FF2A:           unk_529B4C.Execute var_198 & var_194 & " And isnull(bill_no,'')=''", var_D0, -1
  loc_133FF6B:           var_B0 = Me.FGrid.TextMatrix)
  loc_133FF85:           Set var_9C = Me.Txt
  loc_133FF8B:           Call 0.Method_Form_Unload0 (CInt(&HA), var_190, var_194, var_B0, CVar(CLng(7)), CVar(CLng(var_86)))
  loc_133FF93:           var_1A4 = var_190.Text
  loc_133FF9E:           var_14C = 0
  loc_133FFD4:           var_1A0 = "Select Max(SeqNo) From PayChargeLog WHERE Docid='" & CStr(var_B0) & "' and FolioNo=" & var_194 & " And isnull(bill_no,'')=''"
  loc_133FFDD:           unk_529B4C.Execute var_1A0, var_D0, -1
  loc_133FFE5:           var_1A4 = var_1A4.Fields
  loc_133FFED:           var_14C = var_1A8.Item(var_1A8)
  loc_133FFF5:           var_1AC = var_1AC.Value
  loc_1340000:           Proc_6_39_E7C810(var_110, var_F0, var_F0, var_110)
  loc_1340009:           var_8A = CInt(var_110)
  loc_1340040:           Proc_6_17_EAA2B0(var_B0, CStr(var_18C), var_8A, CStr(var_18C))
  loc_1340050:           Proc_6_17_EAA2B0(var_17C, MemVar_1F920C8, 1)
  loc_1340060:           Proc_6_7_F25D88(var_1CC, MemVar_1F920EC)
  loc_1340069:           var_15C = CVar(CLng(var_86)) 'Long
  loc_1340071:           var_1FC = CVar(CLng(7)) 'Long
  loc_1340080:           var_21C = Me.FGrid.TextMatrix)
  loc_134009A:           Set var_9C = Me.Txt
  loc_13400A0:           Call 0.Method_Form_Unload0 (CInt(&HA), var_190, var_194, var_21C)
  loc_13400A8:           var_1FC = var_190.Text
  loc_13400C5:           var_A0 = CStr((var_8A + 1))
  loc_13400D0:           var_D0 = CVar("Update PayChargeLog Set SeqNo=" & CStr(var_B0) & ",Remarks=") 'String
  loc_134010A:           var_23C = var_D0 & var_B0 & ",U_Name=" & var_17C & ",U_EntDt=" & var_1CC & " Where IsNull(SeqNo,0)=0 And Docid='" & CVar(CStr(var_21C)) 
  loc_1340134:           unk_529B4C.Execute CStr(var_23C & "' and FolioNo=" & CVar(var_194) & " And isnull(bill_no,'')=''"), var_2BC, -1
  loc_1340174:         End If
  loc_1340178:         var_C0 = CVar(CLng(var_86)) 'Long
  loc_134018F:         var_B0 = Me.FGrid.TextMatrix)
  loc_13401A9:         Set var_9C = Me.Txt
  loc_13401AF:         Call 0.Method_Form_Unload0 (CInt(&HA), var_190, var_194, var_B0, CVar(CLng(7)))
  loc_13401B7:         var_C0 = var_190.Text
  loc_13401E9:         var_1A0 = "Delete from Paycharge where Docid='" & CStr(var_B0) & "' and MarkEntry='*' and FolioNo=" & var_194 & " And isnull(bill_no,'')=''"
  loc_13401F2:         unk_529B4C.Execute var_1A0, var_D0, -1
  loc_1340218:       End If
  loc_134021B:     Next var_11C 'Integer
  loc_1340225:     global_124 = 0
  loc_134022B:   Else
  loc_1340250:     For var_2C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_86 = var_2C0 'Integer
  loc_134025A:       var_C0 = CVar(CLng(var_86)) 'Long
  loc_1340262:       var_100 = CVar(CLng(7)) 'Long
  loc_134027C:       var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_1340288:       var_13C = CVar(CLng(var_86)) 'Long
  loc_134029F:       var_D0 = Me.FGrid.TextMatrix)
  loc_13402C8:       If (CVar(CLng(0)) And (CStr(var_D0) = "*")) Then
  loc_13402E6:         var_B0 = Me.FGrid.TextMatrix)
  loc_1340300:         Set var_9C = Me.Txt
  loc_1340306:         Call 0.Method_Form_Unload0 (CInt(&HA), var_190, var_194, var_B0, CVar(CLng(7)), CVar(CLng(var_86)))
  loc_134030E:         var_13C = var_190.Text
  loc_1340342:         unk_529B4C.Execute "Update Paycharge set MarkEntry='' where markEntry='*' and  Docid='" & CStr(var_B0) & "' and FolioNo=" & var_194, var_D0, -1
  loc_1340366:       End If
  loc_1340369:     Next var_2C0 'Integer
  loc_1340373:     global_124 = 0
  loc_1340376:   End If
  loc_1340376: End If
  loc_1340381: Set global_92 = Nothing
  loc_1340393: Set global_88 = Nothing
  loc_13403A5: Set global_100 = Nothing
  loc_13403B7: Set global_96 = Nothing
  loc_13403C9: Set global_120 = Nothing
  loc_13403D8: Exit Sub
  loc_13403D9: var_3FC0 = CVar(0) 'Long
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E66A30
  'Data Table: 529B38
  loc_E669EC: Set var_88 = Me.TopCtrl1
  loc_E669F2: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_E66A20: If CBool(( <> "Browse") And (MasterFormExit = 0)) Then
  loc_E66A28:   Call Form_Unload(&HFF)
  loc_E66A2D: End If
  loc_E66A2D: Exit Sub
End Sub

Private Sub Form_Activate() 'EF9FEC
  'Data Table: 529B38
  Dim unk_529CB4 As Connection15
  Dim var_B8 As TextBox
  loc_EF9F28: On Error Goto loc_EF9FBA
  loc_EF9F4F: unk_529CB4.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F92078 & "FOM'", var_B0, -1
  loc_EF9F60: Set global_120 = var_B4
  loc_EF9F89: If (FdCheckOut.OpenMode = 1) Then
  loc_EF9F8C:   Call Proc_64_56_14DF6F4(var_B4)
  loc_EF9F94: Else
  loc_EF9F9F:   Set var_B4 = Me.Txt
  loc_EF9FA5:   Call 0.Method_Form_Activate0 (CInt(0))
  loc_EF9FAD:   var_B8.SetFocus
  loc_EF9FB9: End If
  loc_EF9FB9: Exit Sub
  loc_EF9FBA: ' Referenced from: EF9F28
  loc_EF9FD3: MsgBox("FORM ACTIVATE", 0, var_DC, var_FC, var_11C)
  loc_EF9FE3: Proc_6_60_E62BC4(var_B8)
  loc_EF9FE8: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24BFC
  'Data Table: 529B38
  loc_E24BE1: If (MasterFormExit = &HFF) Then
  loc_E24BF1:   Me.Global.Unload Me
  loc_E24BF9: End If
  loc_E24BF9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EEAAD8
  'Data Table: 529B38
  Dim var_88 As Variant
  Dim var_EC As TextBox
  loc_EEAA18: On Error Goto loc_EEAAD2
  loc_EEAA25: If (CLng(KeyCode) = &H79) Then
  loc_EEAA35:   Me.Global.Unload Me
  loc_EEAA3D:   Exit Sub
  loc_EEAA3E: End If
  loc_EEAA7B: If CBool((Shift = 2) And (Ucase(Chr(CLng(KeyCode))) = "A")) Then
  loc_EEAA8A:   Me.FrmAdjust.Visible = True
  loc_EEAA9B:   Set var_88 = Me.Txt
  loc_EEAAA1:   Call 0.Method_Form_KeyDown0 (&H17)
  loc_EEAAA9:   var_EC.SetFocus
  loc_EEAAB5: End If
  loc_EEAAC9: Proc_6_88_FE81B4(Me, KeyCode, Shift)
  loc_EEAAD1: Exit Sub
  loc_EEAAD2: ' Referenced from: EEAA18
  loc_EEAAD2: Proc_6_60_E62BC4(0)
  loc_EEAAD7: Exit Sub
End Sub

Private Sub Timer1_Timer() '105313C
  'Data Table: 529B38
  Dim var_8C As TextBox
  loc_1052ED2: Set var_88 = Me.Txt
  loc_1052ED8: Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_1052EF5: If (var_8C.BackColor = &HD3B3FF) Then
  loc_1052F06:   Set var_88 = Me.Txt
  loc_1052F0C:   Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_1052F2B:   If (var_8C.Text <> vbNullString) Then
  loc_1052F3E:     Set var_88 = Me.Txt
  loc_1052F44:     Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_1052F4C:     var_8C.BackColor = &HFFFFFF
  loc_1052F58:   End If
  loc_1052F66:   Set var_88 = Me.Txt
  loc_1052F6C:   Call 0.Method_Timer1_Timer0 (CInt(&H11), var_8C)
  loc_1052F8B:   If (var_8C.Text <> vbNullString) Then
  loc_1052F9E:     Set var_88 = Me.Txt
  loc_1052FA4:     Call 0.Method_Timer1_Timer0 (CInt(&H11), var_8C)
  loc_1052FAC:     var_8C.BackColor = &HFFFFFF
  loc_1052FB8:   End If
  loc_1052FC6:   Set var_88 = Me.Txt
  loc_1052FCC:   Call 0.Method_Timer1_Timer0 (CInt(&H10), var_8C)
  loc_1052FEB:   If (var_8C.Text <> vbNullString) Then
  loc_1052FFE:     Set var_88 = Me.Txt
  loc_1053004:     Call 0.Method_Timer1_Timer0 (CInt(&H10), var_8C)
  loc_105300C:     var_8C.BackColor = &HFFFFFF
  loc_1053018:   End If
  loc_105301B: Else
  loc_1053029:   Set var_88 = Me.Txt
  loc_105302F:   Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_105304E:   If (var_8C.Text <> vbNullString) Then
  loc_1053061:     Set var_88 = Me.Txt
  loc_1053067:     Call 0.Method_Timer1_Timer0 (CInt(&H12), var_8C)
  loc_105306F:     var_8C.BackColor = &HD3B3FF
  loc_105307B:   End If
  loc_1053089:   Set var_88 = Me.Txt
  loc_105308F:   Call 0.Method_Timer1_Timer0 (CInt(&H11), var_8C)
  loc_10530AE:   If (var_8C.Text <> vbNullString) Then
  loc_10530C1:     Set var_88 = Me.Txt
  loc_10530C7:     Call 0.Method_Timer1_Timer0 (CInt(&H11), var_8C)
  loc_10530CF:     var_8C.BackColor = &HD3B3FF
  loc_10530DB:   End If
  loc_10530E9:   Set var_88 = Me.Txt
  loc_10530EF:   Call 0.Method_Timer1_Timer0 (CInt(&H10), var_8C)
  loc_105310E:   If (var_8C.Text <> vbNullString) Then
  loc_1053121:     Set var_88 = Me.Txt
  loc_1053127:     Call 0.Method_Timer1_Timer0 (CInt(&H10), var_8C)
  loc_105312F:     var_8C.BackColor = &HD3B3FF
  loc_105313B:   End If
  loc_105313B: End If
  loc_105313B: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F68484
  'Data Table: 529B38
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F68360: Call Proc_64_54_EBBC74()
  loc_F68378: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_F68393: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F6839C: Set var_BC = Me.FGrid
  loc_F683D2: Set var_104 = Me.TxtGrid
  loc_F683D8: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F683E0: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_F68411: var_110 = CLng(Me.FGrid.Col)
  loc_F68421: If (var_110 = CLng(&HA)) Then
  loc_F68433:   Set var_A8 = Me.TxtGrid
  loc_F68439:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 5)
  loc_F68441:   var_BC.MaxLength = var_110
  loc_F68450: Else
  loc_F68457:   If (var_110 = CLng(3)) Then
  loc_F68469:     Set var_A8 = Me.TxtGrid
  loc_F6846F:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_F68477:     var_BC.MaxLength = 8
  loc_F68483:   End If
  loc_F68483: End If
  loc_F68483: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1037F2C
  'Data Table: 529B38
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_1037CE0: On Error Goto loc_1037F26
  loc_1037CED: If (CLng(Shift) = &H1B) Then
  loc_1037CFD:   Set var_88 = Me.TxtGrid
  loc_1037D03:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1037D1D:   Set var_94 = Me.TxtGrid
  loc_1037D23:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_1037D2B:   var_98.Text = var_8C.Tag
  loc_1037D47:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1037D4C:   Call Proc_64_54_EBBC74(arg_14)
  loc_1037D55:   Set var_88 = Me.FGrid
  loc_1037D72:   Set var_88 = Me.TxtGrid
  loc_1037D78:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1037D80:   var_8C.Visible = False
  loc_1037D8C:   Exit Sub
  loc_1037D8D: End If
  loc_1037DA0: var_AC = CLng(Me.FGrid.Col)
  loc_1037DB0: If (var_AC = CLng(&HA)) Then
  loc_1037DC2:   Set var_88 = Me.TxtGrid
  loc_1037DC8:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 5)
  loc_1037DD0:   var_8C.MaxLength = var_AC
  loc_1037DFC:   If (((CLng(Shift) = &HD) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) Then
  loc_1037E05:     Call Proc_64_60_EF3C0C(KeyCode, var_AE)
  loc_1037E10:     If (var_AE = &HFF) Then
  loc_1037E47:       Set var_8C = Me.TxtGrid
  loc_1037E56:       Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_72)
  loc_1037E66:     End If
  loc_1037E66:   End If
  loc_1037E69: Else
  loc_1037E70:   If (var_AC = CLng(3)) Then
  loc_1037E82:     Set var_88 = Me.TxtGrid
  loc_1037E88:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 8, &HA)
  loc_1037E90:     var_8C.MaxLength = 0
  loc_1037EBC:     If (((CLng(Shift) = &HD) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) Then
  loc_1037EC5:       Call Proc_64_60_EF3C0C(KeyCode, var_AE, &HA)
  loc_1037ED0:       If (var_AE = &HFF) Then
  loc_1037F16:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, &HA)
  loc_1037F26:       End If
  loc_1037F26:       ' Referenced from: 1037CE0
  loc_1037F26:     End If
  loc_1037F26:   End If
  loc_1037F26: End If
  loc_1037F26: Proc_6_60_E62BC4(0, &HA, 0)
  loc_1037F2B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E202E8
  'Data Table: 529B38
  Dim arg_10 As Integer
  loc_E202CB: Proc_6_58_E054C0(arg_10)
  loc_E202D6: Proc_6_133_E7EF78(var_94)
  loc_E202DF: arg_10 = CInt(var_94)
  loc_E202E5: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '12E9ED4
  'Data Table: 529B38
  Dim var_A8 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_BC As Long
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_D0 As Variant
  Dim var_124 As Variant
  Dim var_188 As String
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_144 As Variant
  Dim var_F0 As Variant
  Dim var_164 As Long
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_168 As MSHFlexGrid
  loc_12E9824: On Error Goto loc_12E9ECE
  loc_12E983A: var_BC = CLng(Me.FGrid.Col)
  loc_12E984A: If (var_BC = CLng(3)) Then
  loc_12E9857:   Set var_A8 = Me.TxtGrid
  loc_12E985D:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_C0)
  loc_12E9875:   var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E987D:   var_134 = CVar(CLng(3)) 'Long
  loc_12E98B8:   LateIdCallSt
  loc_12E98E8:   Set var_A8 = Me.TxtGrid
  loc_12E98EE:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_C0, &HFF, Me.FGrid, CVar(CStr(Format(CVar(var_C0), "0.00"))))
  loc_12E9906:   var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E9949:   LateIdCallSt
  loc_12E9980:   Set var_A8 = Me.Txt
  loc_12E9986:   Call 0.Method_TxtGrid_KeyUp0 (CInt(8), var_C0, Me.FGrid, CVar(CStr(Format(CVar(var_C0), "0.00"))), 1, 1, CVar(CLng(3)))
  loc_12E99C5:   Proc_96_86_1AEB804(Me.FGrid, Me.TxtGrid, KeyCode, CInt(&HB), CInt(3), CInt(7), var_C0)
  loc_12E99DE:   global_128 = &HFF
  loc_12E9A06:   For var_184 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_184 'Integer
  loc_12E9A10:     var_D0 = CVar(CLng(var_9E)) 'Long
  loc_12E9A18:     var_124 = CVar(CLng(7)) 'Long
  loc_12E9A43:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_12E9A4A:       var_D0 = CVar(CLng(var_9E)) 'Long
  loc_12E9A52:       var_124 = CVar(CLng(3)) 'Long
  loc_12E9A7E:       var_8C = (var_8C + Val(CStr(Me.FGrid.TextMatrix))))
  loc_12E9A8E:       var_D0 = CVar(CLng(var_9E)) 'Long
  loc_12E9A96:       var_124 = CVar(CLng(4)) 'Long
  loc_12E9AB0:       var_188 = CStr(Me.FGrid.TextMatrix))
  loc_12E9AC2:       var_94 = (var_94 + Val(var_188))
  loc_12E9AD2:       var_124 = CVar(CLng(var_9E)) 'Long
  loc_12E9ADA:       var_144 = CVar(CLng(5)) 'Long
  loc_12E9AFC:       var_B8 = CVar(Abs((var_8C - var_94))) 'Double
  loc_12E9B0C:       var_104 = CVar(CStr(Format(Me.FGrid.TextMatrix), "0.00"))) 'String
  loc_12E9B14:       Set var_A8 = Me.FGrid
  loc_12E9B1A:       LateIdCallSt
  loc_12E9B3C:       If (CDbl((var_8C - var_94)) > CDbl(0)) Then
  loc_12E9B43:         var_D0 = CVar(CLng(var_9E)) 'Long
  loc_12E9B4B:         var_124 = CVar(CLng(6)) 'Long
  loc_12E9B50:         var_144 = "Dr"
  loc_12E9B5A:         Set var_A8 = Me.FGrid
  loc_12E9B60:         LateIdCallSt
  loc_12E9B6E:       Else
  loc_12E9B7A:         If (CDbl((var_8C - var_94)) < CDbl(0)) Then
  loc_12E9B81:           var_D0 = CVar(CLng(var_9E)) 'Long
  loc_12E9B89:           var_124 = CVar(CLng(6)) 'Long
  loc_12E9B8E:           var_144 = "Cr"
  loc_12E9B98:           Set var_A8 = Me.FGrid
  loc_12E9B9E:           LateIdCallSt
  loc_12E9BAC:         Else
  loc_12E9BB0:           var_D0 = CVar(CLng(var_9E)) 'Long
  loc_12E9BB8:           var_124 = CVar(CLng(6)) 'Long
  loc_12E9BBD:           var_144 = vbNullString
  loc_12E9BC7:           Set var_A8 = Me.FGrid
  loc_12E9BCD:           LateIdCallSt
  loc_12E9BD8:         End If
  loc_12E9BD8:       End If
  loc_12E9BD8:     End If
  loc_12E9BDB:   Next var_184 'Integer
  loc_12E9BE4:   Set var_1A4 = Me.Fgrid1
  loc_12E9BE7:   var_124 = 0
  loc_12E9BF3:   var_144 = CVar(CLng(1)) 'Long
  loc_12E9C21:   var_F0 = CVar(CStr(Format(var_8C, "0.00"))) 'String
  loc_12E9C28:   LateIdCallSt
  loc_12E9C39:   var_124 = 0
  loc_12E9C45:   var_144 = CVar(CLng(2)) 'Long
  loc_12E9C73:   var_F0 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_12E9C7A:   LateIdCallSt
  loc_12E9C8B:   var_124 = 0
  loc_12E9C97:   var_144 = CVar(CLng(3)) 'Long
  loc_12E9CB9:   var_B8 = CVar(Abs((var_8C - var_94))) 'Double
  loc_12E9CC9:   var_104 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_12E9CD0:   LateIdCallSt
  loc_12E9CE3:   var_164 = 0
  loc_12E9CEF:   var_1B4 = CVar(CLng(4)) 'Long
  loc_12E9D16:   var_D0 = (CDbl((var_94 - var_8C)) > CDbl(0))
  loc_12E9D3C:   var_134 = (CDbl((var_8C - var_94)) > CDbl(0))
  loc_12E9D4C:   var_1D4 = CVar(CStr(IIf(CVar(CLng(3)), "Dr", IIf(var_94, "Cr", vbNullString)))) 'String
  loc_12E9D53:   LateIdCallSt
  loc_12E9D70:   Set var_1A4 = Nothing 
  loc_12E9D77: Else
  loc_12E9D7E:   If (var_BC = CLng(&HA)) Then
  loc_12E9DAE:     Set var_A8 = Me.TxtGrid
  loc_12E9DB4:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_C0, var_188, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_1A4, var_1D4)
  loc_12E9DBC:     var_1B4 = var_C0.Text
  loc_12E9DC4:     var_E0 = CVar(var_188) 'String
  loc_12E9DCC:     Set var_168 = Me.FGrid
  loc_12E9DD2:     LateIdCallSt
  loc_12E9DFF:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E9E07:     var_124 = CVar(CLng(7)) 'Long
  loc_12E9E16:     var_E0 = Me.FGrid.TextMatrix)
  loc_12E9E46:     Set var_168 = Me.FGrid
  loc_12E9EA1:     Call Proc_64_58_1070438(CStr(var_E0), CStr(var_168.TextMatrix)), CStr(Me.FGrid.TextMatrix)), CVar(CLng(&HB)), CVar(CLng(Me.FGrid.Row)), var_168.TextMatrix), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)))
  loc_12E9ECD:   End If
  loc_12E9ECD: End If
  loc_12E9ECD: Exit Sub
  loc_12E9ECE: ' Referenced from: 12E9824
  loc_12E9ECE: Proc_6_60_E62BC4(var_E0, var_124, var_D0, var_168)
  loc_12E9ED3: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E5B0A0
  'Data Table: 529B38
  Dim arg_10 As Integer
  Dim var_A0 As Long
  loc_E5B06C: If (Cancel = 0) Then
  loc_E5B075:   Call Proc_64_60_EF3C0C(Cancel, var_88)
  loc_E5B07E:   arg_10 = Not(var_88)
  loc_E5B081: End If
  loc_E5B094: var_A0 = CLng(Me.FGrid.Col)
  loc_E5B09D: Exit Sub
End Sub

Private Sub CMDSET_Click() '1252A8C
  'Data Table: 529B38
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_128 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_14C As Variant
  Dim var_118 As Variant
  Dim var_15C As Long
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  loc_1252571: For var_B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_B8 'Integer
  loc_125257B:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_12525C6:   If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(MemVar_1F92078 & "RMCH")) Then
  loc_12525D2:     Set var_A4 = Me.Txt
  loc_12525D8:     Call 0.Method_CMDSET_Click0 (&H18, var_13C, CVar(CLng(&HB)))
  loc_12525E1:     var_D8 = CVar(CLng(var_86)) 'Long
  loc_12525E9:     var_F8 = CVar(CLng(3)) 'Long
  loc_1252624:     LateIdCallSt
  loc_1252657:     Set var_A4 = Me.Txt
  loc_125265D:     Call 0.Method_CMDSET_Click0 (CInt(8), var_13C, Me.FGrid, CVar(CStr(Format(CVar(var_13C), "0.00"))), 1)
  loc_125269E:     Proc_96_86_1AEB804(Me.FGrid, Me.Txt, &H18, CInt(&HB), CInt(3), CInt(7), var_13C)
  loc_12526B7:     global_128 = &HFF
  loc_12526BA:     GoTo loc_12526BD
  loc_12526BD:     ' Referenced from: 12526BA
  loc_12526BD:   End If
  loc_12526C0: Next var_B8 'Integer
  loc_12526EA: For var_180 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_180 'Integer
  loc_12526F4:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_12526FC:   var_E8 = CVar(CLng(7)) 'Long
  loc_1252727:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_125272E:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_1252736:     var_E8 = CVar(CLng(3)) 'Long
  loc_1252762:     var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1252772:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_125277A:     var_E8 = CVar(CLng(4)) 'Long
  loc_12527A6:     var_9C = (var_9C + Val(CStr(Me.FGrid.TextMatrix))))
  loc_12527B6:     var_E8 = CVar(CLng(var_86)) 'Long
  loc_12527BE:     var_14C = CVar(CLng(5)) 'Long
  loc_12527E0:     var_B4 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_12527F0:     var_128 = CVar(CStr(Format(Me.FGrid.TextMatrix), "0.00"))) 'String
  loc_12527F8:     Set var_A4 = Me.FGrid
  loc_12527FE:     LateIdCallSt
  loc_1252820:     If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_1252827:       var_C8 = CVar(CLng(var_86)) 'Long
  loc_125282F:       var_E8 = CVar(CLng(6)) 'Long
  loc_1252834:       var_14C = "Dr"
  loc_125283E:       Set var_A4 = Me.FGrid
  loc_1252844:       LateIdCallSt
  loc_1252852:     Else
  loc_125285E:       If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_1252865:         var_C8 = CVar(CLng(var_86)) 'Long
  loc_125286D:         var_E8 = CVar(CLng(6)) 'Long
  loc_1252872:         var_14C = "Cr"
  loc_125287C:         Set var_A4 = Me.FGrid
  loc_1252882:         LateIdCallSt
  loc_1252890:       Else
  loc_1252894:         var_C8 = CVar(CLng(var_86)) 'Long
  loc_125289C:         var_E8 = CVar(CLng(6)) 'Long
  loc_12528A1:         var_14C = vbNullString
  loc_12528AB:         Set var_A4 = Me.FGrid
  loc_12528B1:         LateIdCallSt
  loc_12528BC:       End If
  loc_12528BC:     End If
  loc_12528BC:   End If
  loc_12528BF: Next var_180 'Integer
  loc_12528C8: Set var_1A0 = Me.Fgrid1
  loc_12528CB: var_E8 = 0
  loc_12528D7: var_14C = CVar(CLng(1)) 'Long
  loc_1252905: var_118 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_125290C: LateIdCallSt
  loc_125291D: var_E8 = 0
  loc_1252929: var_14C = CVar(CLng(2)) 'Long
  loc_1252957: var_118 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_125295E: LateIdCallSt
  loc_125296F: var_E8 = 0
  loc_125297B: var_14C = CVar(CLng(3)) 'Long
  loc_125299D: var_B4 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_12529AD: var_128 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_12529B4: LateIdCallSt
  loc_12529C7: var_15C = 0
  loc_12529D3: var_1B0 = CVar(CLng(4)) 'Long
  loc_12529FA: var_C8 = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_1252A20: var_F8 = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_1252A30: var_1D0 = CVar(CStr(IIf(var_F8, "Dr", IIf(var_9C, "Cr", vbNullString)))) 'String
  loc_1252A37: LateIdCallSt
  loc_1252A54: Set var_1A0 = Nothing 
  loc_1252A64: Me.FrmAdjust.Visible = False
  loc_1252A70: Set var_A4 = Me.FGrid
  loc_1252A86: Set var_8C = Nothing
  loc_1252A89: Exit Sub
End Sub

Private Sub CmdPostChrg_UnknownEvent_9 '114463C
  'Data Table: 529B38
  Dim var_E0 As String
  Dim var_1A0 As Double
  Dim var_138 As String
  Dim var_1A8 As Double
  Dim var_1B0 As Double
  Dim var_168 As Variant
  Dim var_124 As Variant
  Dim var_144 As String
  Dim unk_529B4C As Connection15
  Dim var_88 As Recordset15
  Dim var_A8 As Integer
  Dim var_CC As Recordset15
  Dim var_13C As Field20
  Dim var_148 As String
  Dim var_140 As TextBox
  Dim var_134 As Variant
  loc_11442E7: Call 0.Method_arg_2B0 (1)
  loc_1144302: Set var_CC = 0(1)
  loc_1144313: var_E0 = CStr(Txt.DispID_41)
  loc_114431B: var_1A0 = Val(var_E0)
  loc_1144334: Set var_124 = 0(2)
  loc_114434D: var_1A8 = Val(CStr(Txt.DispID_41))
  loc_114435E: Set var_13C = var_140(CInt(&HA))
  loc_1144364: Call 0.Method_CmdPostChrg_UnknownEvent_90 (var_144, var_1A8)
  loc_1144378: Proc_96_39_1055C78(var_144)
  loc_114437D: var_1B0 = var_A8
  loc_1144390: var_168 = CVar(((frmmessageKey.TextBox.Tag - var_1A8) + var_1B0)) 'Double
  loc_1144397: var_178 = Round(var_168, 2)
  loc_11443C6: If (var_178 < 0) Then
  loc_11443E2:   MsgBox("First Post Retention Or Refund", &H40, var_134, var_168, var_178)
  loc_11443F2:   Exit Sub
  loc_11443F3: End If
  loc_1144411: Set var_CC = Me.Txt
  loc_1144417: Call 0.Method_CmdPostChrg_UnknownEvent_90 (CInt(&HA), var_124, var_E0, "Select isnull(bill_no,'') as Bill_NO,AmtDr from paycharge where (ContraDocId is NULL or contradocid='') and (ModeSet <>'S' OR mODESET IS null) and folionoDocid='")
  loc_114441F: var_DC = var_124.Tag
  loc_1144428: var_138 = -1 & var_E0
  loc_114442F: var_144 = CStr(Txt.DispID_41) & "'"
  loc_1144438: unk_529B4C.Execute var_144, var_13C, var_1B0
  loc_1144443: Set var_88 = var_13C
  loc_114446F: If (var_88.RecordCount > 0) Then
  loc_114447B:   var_88.Filter = "Bill_No='' "
  loc_1144480: End If
  loc_1144494: If (var_88.RecordCount <= 0) Then
  loc_11444AA:   var_DC = "Bill Alredy Generated"
  loc_11444B0:   MsgBox(var_DC, 0, var_134, var_168, var_178)
  loc_11444C0:   Exit Sub
  loc_11444C1: End If
  loc_11444C7: var_A8 = 0
  loc_11444E4: var_E0 = "Select Max(IsNull(RoomCheckOutClearanceYN,'')) from Enviro where lOGSite_code='" & MemVar_1F92078
  loc_11444F4: unk_529B4C.Execute var_E0 & "'", var_DC, -1
  loc_11444FC: var_CC = var_CC.Fields
  loc_1144504: var_A8 = var_124.Item(var_124)
  loc_114450C: var_13C = var_13C.Value
  loc_1144533: If (var_134 = "Yes") Then
  loc_1144554:   Set var_CC = Me.Txt
  loc_114455A:   Call 0.Method_CmdPostChrg_UnknownEvent_90 (CInt(&HA), var_124, var_E0, "Select * From RoomCheckOutStatus Where FolionoDocId='")
  loc_1144562:   var_DC = var_124.Tag
  loc_114456B:   var_138 = -1 & var_E0
  loc_1144572:   var_148 = var_E0 & "'" & "' And RoomCode='"
  loc_1144583:   Set var_13C = Me.Txt
  loc_1144589:   Call 0.Method_CmdPostChrg_UnknownEvent_90 (CInt(0), var_140, var_144)
  loc_1144591:   var_148 = var_140.Text
  loc_11445AA:   unk_529B4C.Execute var_1C0 & var_144 & "' And ChkOutClearanceYN='Y'", var_134, 
  loc_11445EB:   If (var_1C0.RecordCount <= 0) Then
  loc_11445F4:     Call 0.Method_arg_50 (var_E0)
  loc_1144615:     MsgBox("Room Check Out Clearance Is Still Pending.", &H10, CVar(var_E0), var_168, var_178)
  loc_114462A:     Set var_88 = Nothing
  loc_114462D:     Exit Sub
  loc_114462E:   End If
  loc_114462E: End If
  loc_1144633: Set var_88 = Nothing
  loc_1144636: Call Proc_64_48_1BB0FE0()
  loc_114463B: Exit Sub
End Sub

Private Sub CmdPlanBill_UnknownEvent_9 'E03B40
  'Data Table: 529B38
  loc_E03B35: global_126 = &HFF
  loc_E03B38: Call CmdPostChrg_UnknownEvent_9()
  loc_E03B3D: Exit Sub
End Sub

Private Sub Command3_Click() 'E1ADC8
  'Data Table: 529B38
  loc_E1ADBC: Me.FrmAdjust.Visible = False
  loc_E1ADC4: Exit Sub
End Sub

Private Sub CmdPass_Click() 'E984C4
  'Data Table: 529B38
  Dim var_8C As TextBox
  Dim var_88 As CommandButton
  loc_E98455: Set var_88 = Me.Txt
  loc_E9845B: Call 0.Method_CmdPass_Click0 (&H17)
  loc_E98484: If (Ucase(CVar(var_8C)) = "India12") Then
  loc_E98492:   Set var_88 = Me.Txt
  loc_E98498:   Call 0.Method_CmdPass_Click0 (&H18, var_8C)
  loc_E984A0:   var_8C.Enabled = True
  loc_E984B8:   Me.CMDSET.Enabled = True
  loc_E984C0: End If
  loc_E984C0: Exit Sub
End Sub

Private Sub cmdProvisional_UnknownEvent_9 '109D2E0
  'Data Table: 529B38
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim Me As Recordset15
  Dim var_88 As Fields15
  loc_109D03A: Set var_88 = Me.Txt
  loc_109D040: Call 0.Method_cmdProvisional_UnknownEvent_90 (CInt(0), var_8C)
  loc_109D063: Set var_94 = Me.Txt
  loc_109D069: Call 0.Method_cmdProvisional_UnknownEvent_90 (CInt(&HA), var_98)
  loc_109D091: If ((var_8C.Text <> vbNullString) And (var_98.Text <> vbNullString)) Then
  loc_109D09A:   Me.MoveFirst
  loc_109D0B6:   If (Me.RecordCount > 0) Then
  loc_109D0B9:     ' Referenced from: 109D2D9
  loc_109D0CB:     If Not(Me.EOF) Then
  loc_109D10D:       If (Me.Fields.Item("ModDescription").Value = "PROVISIONAL GUEST BILL WINDOWS PLAIN PAPER") Then
  loc_109D129:         MsgBox("Sorry", 0, var_E4, var_104, var_124)
  loc_109D139:         Exit Sub
  loc_109D13D:       Else
  loc_109D17C:         If (Me.Fields.Item("ModDescription").Value = "PROVISIONAL GUEST BILL DOS 80 COL PREPRINTED") Then
  loc_109D1BE:           If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_109D1C1:             Call Proc_64_50_18E6B20()
  loc_109D1C9:           Else
  loc_109D1F8:             If (MsgBox("Print Bill ?", &H24, var_E4, var_104, var_124) = 6) Then
  loc_109D1FB:               Call Proc_64_50_18E6B20()
  loc_109D203:             Else
  loc_109D203:               Exit Sub
  loc_109D204:             End If
  loc_109D204:           End If
  loc_109D207:         Else
  loc_109D246:           If (Me.Fields.Item("ModDescription").Value = "PROVISIONAL GUEST BILL DOS 80 COL PLAIN") Then
  loc_109D288:             If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_109D28B:               Call Proc_64_51_1A42238()
  loc_109D293:             Else
  loc_109D2C2:               If (MsgBox("Print Bill ?", &H24, var_E4, var_104, var_124) = 6) Then
  loc_109D2C5:                 Call Proc_64_51_1A42238()
  loc_109D2CD:               Else
  loc_109D2CD:                 Exit Sub
  loc_109D2CE:               End If
  loc_109D2CE:             End If
  loc_109D2CE:           End If
  loc_109D2CE:         End If
  loc_109D2CE:       End If
  loc_109D2D4:       Me.MoveNext
  loc_109D2D9:       GoTo loc_109D0B9
  loc_109D2DC:     End If
  loc_109D2DC:   End If
  loc_109D2DC: End If
  loc_109D2DC: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E6306C
  'Data Table: 529B38
  loc_E6303C: If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_E6303F:   Call DGRoomType_UnknownEvent_9()
  loc_E63044: End If
  loc_E63060: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E63063:   Call DGRoomNo_UnknownEvent_9()
  loc_E63068: End If
  loc_E63068: Exit Sub
End Sub

Public Function MasterFormExitGet() '52B5C0
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '52B5CF
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '52B5DE
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '52B5ED
  mVType = Value
End Sub

Public Property Get OpenMode() 'E03400
  'Data Table: 529B38
  loc_E033F9: OpenMode = global_68
End Sub

Public Property Let OpenMode(vNewValue) 'E02558
  'Data Table: 529B38
  loc_E02552: global_68 = vNewValue
  loc_E02555: Exit Sub
End Sub

Public Sub Proc_64_48_1BB0FE0
  'Data Table: 529B38
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_529B4C As Connection15
  Dim var_C0 As Variant
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim var_BC As Variant
  Dim var_B8 As Variant
  Dim var_A8 As Variant
  Dim var_F0 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_C4 As Variant
  Dim var_1B4 As Variant
  Dim var_338 As Double
  Dim var_214 As Variant
  Dim var_340 As Double
  Dim var_22C As TextBox
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_27C As MSHFlexGrid
  Dim var_2A8 As Variant
  Dim var_2C8 As Variant
  Dim var_2DC As MSHFlexGrid
  Dim var_104 As String
  Dim var_15C As String
  Dim var_160 As String
  Dim var_1C4 As String
  Dim var_298 As String
  Dim var_E0 As Variant
  Dim unk_529B68 As Connection15
  Dim var_88 As Long
  Dim var_358 As Variant
  Dim var_90 As Recordset15
  loc_1BABB63: var_98 = "Select * from Enviro where lOGSite_code='" & MemVar_1F92078 & "'"
  loc_1BABB6C: unk_529B4C.Execute var_98, var_B8, -1
  loc_1BABB77: Set var_90 = var_BC
  loc_1BABB9B: Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0)
  loc_1BABBBE: Set var_C4 = Me.Txt
  loc_1BABBC4: Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C8, var_98)
  loc_1BABBCC: (var_C0.Text <> vbNullString) = var_C8.Text
  loc_1BABC04: If ((Me.Txt And (var_98 <> vbNullString)) And (Me.RecordCount > 0)) Then
  loc_1BABC0D:   Me.MoveFirst
  loc_1BABC1B:   If (global_128 = &HFF) Then
  loc_1BABC43:     For var_D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_D0 'Integer
  loc_1BABC4D:       var_A8 = CVar(CLng(var_8A)) 'Long
  loc_1BABC55:       var_F0 = CVar(CLng(7)) 'Long
  loc_1BABC80:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1BABC87:         var_A8 = CVar(CLng(var_8A)) 'Long
  loc_1BABC8F:         var_F0 = CVar(CLng(4)) 'Long
  loc_1BABC9E:         var_B8 = Me.FGrid.TextMatrix)
  loc_1BABCB8:         var_114 = CVar(CLng(var_8A)) 'Long
  loc_1BABCC0:         var_134 = CVar(CLng(3)) 'Long
  loc_1BABCC9:         Set var_C0 = Me.FGrid
  loc_1BABCCF:         var_154 = var_C0.TextMatrix)
  loc_1BABCE9:         var_174 = CVar(CLng(var_8A)) 'Long
  loc_1BABCF1:         var_194 = CVar(CLng(&HC)) 'Long
  loc_1BABD13:         var_338 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BABD2B:         Set var_C8 = Me.FGrid
  loc_1BABD44:         var_340 = Val(CStr(var_C8.TextMatrix)))
  loc_1BABD55:         Set var_228 = Me.Txt
  loc_1BABD5B:         Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_22C, var_230, var_340, CVar(CLng(&HC)), CVar(CLng(var_8A)), var_338)
  loc_1BABD63:         var_194 = var_22C.Tag
  loc_1BABD6C:         var_248 = CVar(CLng(var_8A)) 'Long
  loc_1BABD74:         var_268 = CVar(CLng(7)) 'Long
  loc_1BABD7D:         Set var_27C = Me.FGrid
  loc_1BABD93:         var_2A8 = CVar(CLng(var_8A)) 'Long
  loc_1BABD9B:         var_2C8 = CVar(CLng(8)) 'Long
  loc_1BABDFF:         var_1C4 = "UPDATE PAYCHARGE SET AMTCR=" & CStr(Val(CStr(var_B8))) & ", AMTDR=" & CStr(Val(CStr(var_154))) & ",BillAmount=" & CStr(var_338)
  loc_1BABE32:         var_298 = var_1C4 & ",OnAmt=" & CStr(var_340) & " WHERE FOLIONODOCID='" & var_230 & "' AND DOCID='" & CStr(var_27C.TextMatrix))
  loc_1BABE4E:         unk_529B4C.Execute var_298 & "' AND sNO=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_31C, -1
  loc_1BABEAE:       End If
  loc_1BABEB1:     Next var_D0 'Integer
  loc_1BABEB6:   End If
  loc_1BABEBE:   If (MemVar_1F921D0 = "Y") Then
  loc_1BABEC7:     var_E0 = 0
  loc_1BABEE6:     unk_529B68.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_B8, -1
  loc_1BABEEE:     var_BC = var_BC.Fields
  loc_1BABEF6:     var_E0 = var_C0.Item(var_C0)
  loc_1BABEFE:     var_C4 = var_C4.Value
  loc_1BABF08:     var_88 = CLng(var_154)
  loc_1BABF1B:   End If
  loc_1BABF5A:   If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER") Then
  loc_1BABF7A:     var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BABF9C:     If (var_C0.Value = "Yes") Then
  loc_1BABF9F:       Call Proc_64_49_1267368(var_88)
  loc_1BABFAD:       Set var_BC = Me.CmdPostChrg
  loc_1BABFB3:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BABFC4:       Set var_BC = Me.CmdPlanBill
  loc_1BABFCA:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BABFDA:       If (MemVar_1F921D0 = "Y") Then
  loc_1BABFFD:         var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAC00B:         Set var_BC = Me.Txt
  loc_1BAC011:         Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAC020:         var_154 = Trim(CVar(var_C0))
  loc_1BAC028:         var_214 = -1 & var_154 
  loc_1BAC03E:         Set var_C4 = Me.Txt
  loc_1BAC044:         Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_C8.TextMatrix) & "','")
  loc_1BAC073:         Set var_228 = Me.Txt
  loc_1BAC079:         Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C)
  loc_1BAC0A7:         unk_529B68.Execute CStr(var_27C & Trim(CVar(var_C8)) & "','" & Trim(CVar(var_22C)) & "',0)"), var_154, 
  loc_1BAC0DF:       End If
  loc_1BAC0DF:       Call Proc_64_61_E7E4E0()
  loc_1BAC0E7:     Else
  loc_1BAC116:       If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_C8.TextMatrix)) = 6) Then
  loc_1BAC119:         Call Proc_64_49_1267368()
  loc_1BAC127:         Set var_BC = Me.CmdPostChrg
  loc_1BAC12D:         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAC13E:         Set var_BC = Me.CmdPlanBill
  loc_1BAC144:         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAC154:         If (MemVar_1F921D0 = "Y") Then
  loc_1BAC177:           var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAC185:           Set var_BC = Me.Txt
  loc_1BAC18B:           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4)
  loc_1BAC1B8:           Set var_C4 = Me.Txt
  loc_1BAC1BE:           Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAC1D5:           var_358 = -1 & Trim(CVar(var_C8)) 
  loc_1BAC1ED:           Set var_228 = Me.Txt
  loc_1BAC1F3:           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C)
  loc_1BAC221:           unk_529B68.Execute CStr(var_27C & Trim(CVar(var_C8)) & "','" & Trim(CVar(var_22C)) & "',0)"), var_27C, 
  loc_1BAC259:         End If
  loc_1BAC259:         Call Proc_64_61_E7E4E0()
  loc_1BAC261:       Else
  loc_1BAC261:         Exit Sub
  loc_1BAC262:       End If
  loc_1BAC262:     End If
  loc_1BAC265:   Else
  loc_1BAC2A4:     If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED") Then
  loc_1BAC2C4:       var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BAC2E6:       If (var_C0.Value = "Yes") Then
  loc_1BAC2F7:         Set var_BC = Me.Txt
  loc_1BAC2FD:         Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAC305:         var_94 = var_C0.Tag
  loc_1BAC30E:         Set var_27C = Me.FGrid
  loc_1BAC326:         Set var_C4 = Me.Txt
  loc_1BAC32C:         Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAC376:         Set var_22C = Me.Fgrid1
  loc_1BAC38C:         Proc_96_49_1C45D64(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BAC3BB:         Set var_BC = Me.Txt
  loc_1BAC3C1:         Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BAC3C9:         2 = var_C0.Tag
  loc_1BAC3E4:         Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_126)
  loc_1BAC403:         Set var_BC = Me.CmdPostChrg
  loc_1BAC409:         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAC41A:         Set var_BC = Me.CmdPlanBill
  loc_1BAC420:         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAC430:         If (MemVar_1F921D0 = "Y") Then
  loc_1BAC453:           var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAC461:           Set var_BC = Me.Txt
  loc_1BAC467:           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAC476:           var_154 = Trim(CVar(var_C0))
  loc_1BAC47E:           var_214 = -1 & var_154 
  loc_1BAC494:           Set var_C4 = Me.Txt
  loc_1BAC49A:           Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAC4C9:           Set var_228 = Me.Txt
  loc_1BAC4CF:           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAC4FD:           unk_529B68.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BAC535:         End If
  loc_1BAC535:         Call Proc_64_61_E7E4E0()
  loc_1BAC53D:       Else
  loc_1BAC56C:         If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BAC57D:           Set var_BC = Me.Txt
  loc_1BAC583:           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAC58B:           var_94 = var_C0.Tag
  loc_1BAC594:           Set var_27C = Me.FGrid
  loc_1BAC5AC:           Set var_C4 = Me.Txt
  loc_1BAC5B2:           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAC5FC:           Set var_22C = Me.Fgrid1
  loc_1BAC612:           Proc_96_49_1C45D64(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BAC641:           Set var_BC = Me.Txt
  loc_1BAC647:           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BAC64F:           2 = var_C0.Tag
  loc_1BAC66A:           Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_126)
  loc_1BAC689:           Set var_BC = Me.CmdPostChrg
  loc_1BAC68F:           Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAC6A0:           Set var_BC = Me.CmdPlanBill
  loc_1BAC6A6:           Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAC6B6:           If (MemVar_1F921D0 = "Y") Then
  loc_1BAC6D9:             var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAC6E7:             Set var_BC = Me.Txt
  loc_1BAC6ED:             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAC704:             var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BAC71A:             Set var_C4 = Me.Txt
  loc_1BAC720:             Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAC74F:             Set var_228 = Me.Txt
  loc_1BAC755:             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAC783:             unk_529B68.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BAC7BB:           End If
  loc_1BAC7BB:           Call Proc_64_61_E7E4E0()
  loc_1BAC7C3:         Else
  loc_1BAC7C3:           Exit Sub
  loc_1BAC7C4:         End If
  loc_1BAC7C4:       End If
  loc_1BAC7C7:     Else
  loc_1BAC806:       If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER NEW") Then
  loc_1BAC848:         If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1BAC862:           var_C0 = var_90.Fields.Item("BillPrintingSummerised")
  loc_1BAC884:           If (Proc_6_38_E68A98(CVar(var_C0)) = "Yes") Then
  loc_1BAC895:             Set var_BC = Me.Txt
  loc_1BAC89B:             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAC8A3:             var_94 = var_C0.Tag
  loc_1BAC8C4:             Set var_C4 = Me.Txt
  loc_1BAC8CA:             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAC8D2:             var_104 = var_C8.Text
  loc_1BAC8E0:             Set var_2DC = Nothing 
  loc_1BAC8EA:             Set var_27C = Me.GuestImage
  loc_1BAC8F3:             var_15C = "O"
  loc_1BAC943:             Proc_96_64_1DB033C(var_94, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_104)
  loc_1BAC96D:           Else
  loc_1BAC97B:             Set var_BC = Me.Txt
  loc_1BAC981:             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BAC989:             global_126 = var_C0.Tag
  loc_1BAC9AA:             Set var_C4 = Me.Txt
  loc_1BAC9B0:             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8, var_104, global_120)
  loc_1BAC9B8:             var_15C = var_C8.Text
  loc_1BAC9C6:             Set var_2DC = Nothing 
  loc_1BAC9D0:             Set var_27C = Me.GuestImage
  loc_1BAC9D9:             var_15C = "O"
  loc_1BACA13:             Set var_22C = Me.Fgrid1
  loc_1BACA29:             Proc_96_59_1F0457C(var_94, Me.FGrid, var_22C, 7, 8, &HA, var_104, 1)
  loc_1BACA50:           End If
  loc_1BACA5E:           Set var_BC = Me.Txt
  loc_1BACA64:           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 2, global_126, global_120)
  loc_1BACA6C:           var_15C = var_C0.Tag
  loc_1BACA87:           Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), var_27C, var_2DC)
  loc_1BACAA6:           Set var_BC = Me.CmdPostChrg
  loc_1BACAAC:           Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BACABC:           If (MemVar_1F921D0 = "Y") Then
  loc_1BACADF:             var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BACAED:             Set var_BC = Me.Txt
  loc_1BACAF3:             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BACB02:             var_154 = Trim(CVar(var_C0))
  loc_1BACB0A:             var_214 = -1 & var_154 
  loc_1BACB20:             Set var_C4 = Me.Txt
  loc_1BACB26:             Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BACB55:             Set var_228 = Me.Txt
  loc_1BACB5B:             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BACB89:             unk_529B68.Execute CStr(var_27C & Trim(CVar(var_22C)) & "',0)"), var_2DC, 
  loc_1BACBC1:           End If
  loc_1BACBC1:           Call Proc_64_61_E7E4E0()
  loc_1BACBC9:         Else
  loc_1BACBF8:           If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BACC12:             var_C0 = var_90.Fields.Item("BillPrintingSummerised")
  loc_1BACC34:             If (Proc_6_38_E68A98(CVar(var_C0)) = "Yes") Then
  loc_1BACC45:               Set var_BC = Me.Txt
  loc_1BACC4B:               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BACC53:               var_94 = var_C0.Tag
  loc_1BACC74:               Set var_C4 = Me.Txt
  loc_1BACC7A:               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BACC82:               var_104 = var_C8.Text
  loc_1BACC90:               Set var_2DC = Nothing 
  loc_1BACC9A:               Set var_27C = Me.GuestImage
  loc_1BACCA3:               var_15C = "O"
  loc_1BACCF3:               Proc_96_64_1DB033C(var_94, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_104)
  loc_1BACD1D:             Else
  loc_1BACD2B:               Set var_BC = Me.Txt
  loc_1BACD31:               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BACD39:               global_126 = var_C0.Tag
  loc_1BACD5A:               Set var_C4 = Me.Txt
  loc_1BACD60:               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8, var_104, global_120)
  loc_1BACD68:               var_15C = var_C8.Text
  loc_1BACD76:               Set var_2DC = Nothing 
  loc_1BACD80:               Set var_27C = Me.GuestImage
  loc_1BACD89:               var_15C = "O"
  loc_1BACDC3:               Set var_22C = Me.Fgrid1
  loc_1BACDD9:               Proc_96_59_1F0457C(var_94, Me.FGrid, var_22C, 7, 8, &HA, var_104, 1)
  loc_1BACE00:             End If
  loc_1BACE0E:             Set var_BC = Me.Txt
  loc_1BACE14:             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 2, global_126, global_120)
  loc_1BACE1C:             var_15C = var_C0.Tag
  loc_1BACE37:             Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), var_27C, var_2DC)
  loc_1BACE56:             Set var_BC = Me.CmdPostChrg
  loc_1BACE5C:             Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BACE6C:             If (MemVar_1F921D0 = "Y") Then
  loc_1BACE8F:               var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BACE9D:               Set var_BC = Me.Txt
  loc_1BACEA3:               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BACEBA:               var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BACED0:               Set var_C4 = Me.Txt
  loc_1BACED6:               Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BACF05:               Set var_228 = Me.Txt
  loc_1BACF0B:               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BACF39:               unk_529B68.Execute CStr(var_27C & Trim(CVar(var_22C)) & "',0)"), var_2DC, 
  loc_1BACF71:             End If
  loc_1BACF71:             Call Proc_64_61_E7E4E0()
  loc_1BACF79:           Else
  loc_1BACF79:             Exit Sub
  loc_1BACF7A:           End If
  loc_1BACF7A:         End If
  loc_1BACF7D:       Else
  loc_1BACFBC:         If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER PLAN") Then
  loc_1BACFFE:           If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1BAD018:             var_C0 = var_90.Fields.Item("BillPrintingSummerised")
  loc_1BAD03A:             If (Proc_6_38_E68A98(CVar(var_C0)) = "Yes") Then
  loc_1BAD04B:               Set var_BC = Me.Txt
  loc_1BAD051:               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAD059:               var_94 = var_C0.Tag
  loc_1BAD07A:               Set var_C4 = Me.Txt
  loc_1BAD080:               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAD088:               var_104 = var_C8.Text
  loc_1BAD096:               Set var_2DC = Nothing 
  loc_1BAD0A0:               Set var_27C = Me.GuestImage
  loc_1BAD0A9:               var_15C = "O"
  loc_1BAD0F9:               Proc_96_64_1DB033C(var_94, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_104)
  loc_1BAD123:             Else
  loc_1BAD131:               Set var_BC = Me.Txt
  loc_1BAD137:               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BAD13F:               global_126 = var_C0.Tag
  loc_1BAD148:               Set var_2DC = Me.FGrid
  loc_1BAD160:               Set var_C4 = Me.Txt
  loc_1BAD166:               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8, var_104, global_120)
  loc_1BAD16E:               var_15C = var_C8.Text
  loc_1BAD17D:               var_160 = "PayCharge"
  loc_1BAD186:               Set var_27C = Me.GuestImage
  loc_1BAD18F:               var_15C = "O"
  loc_1BAD1C9:               Set var_22C = Me.Fgrid1
  loc_1BAD1DF:               Proc_96_62_1F638EC(var_94, var_2DC, var_22C, 7, 8, &HA, var_104, 1)
  loc_1BAD206:             End If
  loc_1BAD214:             Set var_BC = Me.Txt
  loc_1BAD21A:             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 2, global_126, global_120)
  loc_1BAD222:             var_15C = var_C0.Tag
  loc_1BAD23D:             Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), var_27C, var_160)
  loc_1BAD25C:             Set var_BC = Me.CmdPostChrg
  loc_1BAD262:             Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAD272:             If (MemVar_1F921D0 = "Y") Then
  loc_1BAD295:               var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAD2A3:               Set var_BC = Me.Txt
  loc_1BAD2A9:               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAD2B8:               var_154 = Trim(CVar(var_C0))
  loc_1BAD2C0:               var_214 = -1 & var_154 
  loc_1BAD2D6:               Set var_C4 = Me.Txt
  loc_1BAD2DC:               Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAD30B:               Set var_228 = Me.Txt
  loc_1BAD311:               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAD33F:               unk_529B68.Execute CStr(var_27C & Trim(CVar(var_22C)) & "',0)"), var_2DC, 
  loc_1BAD377:             End If
  loc_1BAD377:             Call Proc_64_61_E7E4E0()
  loc_1BAD37F:           Else
  loc_1BAD3AE:             If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BAD3C8:               var_C0 = var_90.Fields.Item("BillPrintingSummerised")
  loc_1BAD3EA:               If (Proc_6_38_E68A98(CVar(var_C0)) = "Yes") Then
  loc_1BAD3FB:                 Set var_BC = Me.Txt
  loc_1BAD401:                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAD409:                 var_94 = var_C0.Tag
  loc_1BAD42A:                 Set var_C4 = Me.Txt
  loc_1BAD430:                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAD438:                 var_104 = var_C8.Text
  loc_1BAD446:                 Set var_2DC = Nothing 
  loc_1BAD450:                 Set var_27C = Me.GuestImage
  loc_1BAD459:                 var_15C = "O"
  loc_1BAD4A9:                 Proc_96_64_1DB033C(var_94, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_104)
  loc_1BAD4D3:               Else
  loc_1BAD4E1:                 Set var_BC = Me.Txt
  loc_1BAD4E7:                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BAD4EF:                 global_126 = var_C0.Tag
  loc_1BAD4F8:                 Set var_2DC = Me.FGrid
  loc_1BAD510:                 Set var_C4 = Me.Txt
  loc_1BAD516:                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8, var_104, global_120)
  loc_1BAD51E:                 var_15C = var_C8.Text
  loc_1BAD52D:                 var_160 = "PayCharge"
  loc_1BAD536:                 Set var_27C = Me.GuestImage
  loc_1BAD53F:                 var_15C = "O"
  loc_1BAD579:                 Set var_22C = Me.Fgrid1
  loc_1BAD58F:                 Proc_96_62_1F638EC(var_94, var_2DC, var_22C, 7, 8, &HA, var_104, 1)
  loc_1BAD5B6:               End If
  loc_1BAD5C4:               Set var_BC = Me.Txt
  loc_1BAD5CA:               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 2, global_126, global_120)
  loc_1BAD5D2:               var_15C = var_C0.Tag
  loc_1BAD5ED:               Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), var_27C, var_160)
  loc_1BAD60C:               Set var_BC = Me.CmdPostChrg
  loc_1BAD612:               Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAD622:               If (MemVar_1F921D0 = "Y") Then
  loc_1BAD645:                 var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAD653:                 Set var_BC = Me.Txt
  loc_1BAD659:                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAD670:                 var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BAD686:                 Set var_C4 = Me.Txt
  loc_1BAD68C:                 Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAD6BB:                 Set var_228 = Me.Txt
  loc_1BAD6C1:                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAD6EF:                 unk_529B68.Execute CStr(var_27C & Trim(CVar(var_22C)) & "',0)"), var_2DC, 
  loc_1BAD727:               End If
  loc_1BAD727:               Call Proc_64_61_E7E4E0()
  loc_1BAD72F:             Else
  loc_1BAD72F:               Exit Sub
  loc_1BAD730:             End If
  loc_1BAD730:           End If
  loc_1BAD733:         Else
  loc_1BAD772:           If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER PLAN1") Then
  loc_1BAD7B4:             If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1BAD7CE:               var_C0 = var_90.Fields.Item("BillPrintingSummerised")
  loc_1BAD7F0:               If (Proc_6_38_E68A98(CVar(var_C0)) = "Yes") Then
  loc_1BAD801:                 Set var_BC = Me.Txt
  loc_1BAD807:                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAD80F:                 var_94 = var_C0.Tag
  loc_1BAD830:                 Set var_C4 = Me.Txt
  loc_1BAD836:                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAD83E:                 var_104 = var_C8.Text
  loc_1BAD84C:                 Set var_2DC = Nothing 
  loc_1BAD856:                 Set var_27C = Me.GuestImage
  loc_1BAD85F:                 var_15C = "O"
  loc_1BAD8AF:                 Proc_96_64_1DB033C(var_94, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_104)
  loc_1BAD8D9:               Else
  loc_1BAD8E7:                 Set var_BC = Me.Txt
  loc_1BAD8ED:                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BAD8F5:                 global_126 = var_C0.Tag
  loc_1BAD8FE:                 Set var_2DC = Me.FGrid
  loc_1BAD916:                 Set var_C4 = Me.Txt
  loc_1BAD91C:                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8, var_104, global_120)
  loc_1BAD924:                 var_15C = var_C8.Text
  loc_1BAD933:                 var_160 = "PayCharge"
  loc_1BAD93C:                 Set var_27C = Me.GuestImage
  loc_1BAD945:                 var_15C = "O"
  loc_1BAD97F:                 Set var_22C = Me.Fgrid1
  loc_1BAD995:                 Proc_96_63_1F555DC(var_94, var_2DC, var_22C, 7, 8, &HA, var_104, 1)
  loc_1BAD9BC:               End If
  loc_1BAD9CA:               Set var_BC = Me.Txt
  loc_1BAD9D0:               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 2, global_126, global_120)
  loc_1BAD9D8:               var_15C = var_C0.Tag
  loc_1BAD9F3:               Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), var_27C, var_160)
  loc_1BADA12:               Set var_BC = Me.CmdPostChrg
  loc_1BADA18:               Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BADA28:               If (MemVar_1F921D0 = "Y") Then
  loc_1BADA4B:                 var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BADA59:                 Set var_BC = Me.Txt
  loc_1BADA5F:                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BADA6E:                 var_154 = Trim(CVar(var_C0))
  loc_1BADA76:                 var_214 = -1 & var_154 
  loc_1BADA8C:                 Set var_C4 = Me.Txt
  loc_1BADA92:                 Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BADAC1:                 Set var_228 = Me.Txt
  loc_1BADAC7:                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BADAF5:                 unk_529B68.Execute CStr(var_27C & Trim(CVar(var_22C)) & "',0)"), var_2DC, 
  loc_1BADB2D:               End If
  loc_1BADB2D:               Call Proc_64_61_E7E4E0()
  loc_1BADB35:             Else
  loc_1BADB64:               If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BADB7E:                 var_C0 = var_90.Fields.Item("BillPrintingSummerised")
  loc_1BADBA0:                 If (Proc_6_38_E68A98(CVar(var_C0)) = "Yes") Then
  loc_1BADBB1:                   Set var_BC = Me.Txt
  loc_1BADBB7:                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BADBBF:                   var_94 = var_C0.Tag
  loc_1BADBE0:                   Set var_C4 = Me.Txt
  loc_1BADBE6:                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BADBEE:                   var_104 = var_C8.Text
  loc_1BADBFC:                   Set var_2DC = Nothing 
  loc_1BADC06:                   Set var_27C = Me.GuestImage
  loc_1BADC0F:                   var_15C = "O"
  loc_1BADC5F:                   Proc_96_64_1DB033C(var_94, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_104)
  loc_1BADC89:                 Else
  loc_1BADC97:                   Set var_BC = Me.Txt
  loc_1BADC9D:                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BADCA5:                   global_126 = var_C0.Tag
  loc_1BADCAE:                   Set var_2DC = Me.FGrid
  loc_1BADCC6:                   Set var_C4 = Me.Txt
  loc_1BADCCC:                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8, var_104, global_120)
  loc_1BADCD4:                   var_15C = var_C8.Text
  loc_1BADCE3:                   var_160 = "PayCharge"
  loc_1BADCEC:                   Set var_27C = Me.GuestImage
  loc_1BADCF5:                   var_15C = "O"
  loc_1BADD2F:                   Set var_22C = Me.Fgrid1
  loc_1BADD45:                   Proc_96_63_1F555DC(var_94, var_2DC, var_22C, 7, 8, &HA, var_104, 1)
  loc_1BADD6C:                 End If
  loc_1BADD7A:                 Set var_BC = Me.Txt
  loc_1BADD80:                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 2, global_126, global_120)
  loc_1BADD88:                 var_15C = var_C0.Tag
  loc_1BADDA3:                 Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), var_27C, var_160)
  loc_1BADDC2:                 Set var_BC = Me.CmdPostChrg
  loc_1BADDC8:                 Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BADDD8:                 If (MemVar_1F921D0 = "Y") Then
  loc_1BADDFB:                   var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BADE09:                   Set var_BC = Me.Txt
  loc_1BADE0F:                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BADE26:                   var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BADE3C:                   Set var_C4 = Me.Txt
  loc_1BADE42:                   Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BADE71:                   Set var_228 = Me.Txt
  loc_1BADE77:                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BADEA5:                   unk_529B68.Execute CStr(var_27C & Trim(CVar(var_22C)) & "',0)"), var_2DC, 
  loc_1BADEDD:                 End If
  loc_1BADEDD:                 Call Proc_64_61_E7E4E0()
  loc_1BADEE5:               Else
  loc_1BADEE5:                 Exit Sub
  loc_1BADEE6:               End If
  loc_1BADEE6:             End If
  loc_1BADEE9:           Else
  loc_1BADF28:             If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PLAIN") Then
  loc_1BADF48:               var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BADF6A:               If (var_C0.Value = "Yes") Then
  loc_1BADF7B:                 Set var_BC = Me.Txt
  loc_1BADF81:                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BADF89:                 var_94 = var_C0.Tag
  loc_1BADF92:                 Set var_27C = Me.FGrid
  loc_1BADFAA:                 Set var_C4 = Me.Txt
  loc_1BADFB0:                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BADFFA:                 Set var_22C = Me.Fgrid1
  loc_1BAE010:                 Proc_96_65_1DA7C54(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BAE03F:                 Set var_BC = Me.Txt
  loc_1BAE045:                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BAE04D:                 2 = var_C0.Tag
  loc_1BAE068:                 Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_126)
  loc_1BAE087:                 Set var_BC = Me.CmdPostChrg
  loc_1BAE08D:                 Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAE09E:                 Set var_BC = Me.CmdPlanBill
  loc_1BAE0A4:                 Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAE0B4:                 If (MemVar_1F921D0 = "Y") Then
  loc_1BAE0D7:                   var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAE0E5:                   Set var_BC = Me.Txt
  loc_1BAE0EB:                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAE0FA:                   var_154 = Trim(CVar(var_C0))
  loc_1BAE102:                   var_214 = -1 & var_154 
  loc_1BAE118:                   Set var_C4 = Me.Txt
  loc_1BAE11E:                   Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAE14D:                   Set var_228 = Me.Txt
  loc_1BAE153:                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAE181:                   unk_529B68.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BAE1B9:                 End If
  loc_1BAE1B9:                 Call Proc_64_61_E7E4E0()
  loc_1BAE1C1:               Else
  loc_1BAE1F0:                 If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BAE201:                   Set var_BC = Me.Txt
  loc_1BAE207:                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAE20F:                   var_94 = var_C0.Tag
  loc_1BAE218:                   Set var_27C = Me.FGrid
  loc_1BAE230:                   Set var_C4 = Me.Txt
  loc_1BAE236:                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAE280:                   Set var_22C = Me.Fgrid1
  loc_1BAE296:                   Proc_96_65_1DA7C54(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BAE2C5:                   Set var_BC = Me.Txt
  loc_1BAE2CB:                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BAE2D3:                   2 = var_C0.Tag
  loc_1BAE2EE:                   Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_126)
  loc_1BAE30D:                   Set var_BC = Me.CmdPostChrg
  loc_1BAE313:                   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAE324:                   Set var_BC = Me.CmdPlanBill
  loc_1BAE32A:                   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAE33A:                   If (MemVar_1F921D0 = "Y") Then
  loc_1BAE35D:                     var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAE36B:                     Set var_BC = Me.Txt
  loc_1BAE371:                     Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAE388:                     var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BAE39E:                     Set var_C4 = Me.Txt
  loc_1BAE3A4:                     Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAE3D3:                     Set var_228 = Me.Txt
  loc_1BAE3D9:                     Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAE407:                     unk_529B68.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BAE43F:                   End If
  loc_1BAE43F:                   Call Proc_64_61_E7E4E0()
  loc_1BAE447:                 Else
  loc_1BAE447:                   Exit Sub
  loc_1BAE448:                 End If
  loc_1BAE448:               End If
  loc_1BAE44B:             Else
  loc_1BAE48A:               If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PLAIN FORMAT1") Then
  loc_1BAE4AA:                 var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BAE4CC:                 If (var_C0.Value = "Yes") Then
  loc_1BAE4DD:                   Set var_BC = Me.Txt
  loc_1BAE4E3:                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAE4EB:                   var_94 = var_C0.Tag
  loc_1BAE4F4:                   Set var_27C = Me.FGrid
  loc_1BAE50C:                   Set var_C4 = Me.Txt
  loc_1BAE512:                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAE55C:                   Set var_22C = Me.Fgrid1
  loc_1BAE572:                   Proc_96_66_1D56DA8(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BAE5A1:                   Set var_BC = Me.Txt
  loc_1BAE5A7:                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BAE5AF:                   2 = var_C0.Tag
  loc_1BAE5CA:                   Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_126)
  loc_1BAE5E9:                   Set var_BC = Me.CmdPostChrg
  loc_1BAE5EF:                   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAE600:                   Set var_BC = Me.CmdPlanBill
  loc_1BAE606:                   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAE616:                   If (MemVar_1F921D0 = "Y") Then
  loc_1BAE639:                     var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAE647:                     Set var_BC = Me.Txt
  loc_1BAE64D:                     Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAE65C:                     var_154 = Trim(CVar(var_C0))
  loc_1BAE664:                     var_214 = -1 & var_154 
  loc_1BAE67A:                     Set var_C4 = Me.Txt
  loc_1BAE680:                     Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAE6AF:                     Set var_228 = Me.Txt
  loc_1BAE6B5:                     Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAE6E3:                     unk_529B68.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BAE71B:                   End If
  loc_1BAE71B:                   Call Proc_64_61_E7E4E0()
  loc_1BAE723:                 Else
  loc_1BAE752:                   If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BAE763:                     Set var_BC = Me.Txt
  loc_1BAE769:                     Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAE771:                     var_94 = var_C0.Tag
  loc_1BAE77A:                     Set var_27C = Me.FGrid
  loc_1BAE792:                     Set var_C4 = Me.Txt
  loc_1BAE798:                     Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAE7E2:                     Set var_22C = Me.Fgrid1
  loc_1BAE7F8:                     Proc_96_66_1D56DA8(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BAE827:                     Set var_BC = Me.Txt
  loc_1BAE82D:                     Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BAE835:                     2 = var_C0.Tag
  loc_1BAE850:                     Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_126)
  loc_1BAE86F:                     Set var_BC = Me.CmdPostChrg
  loc_1BAE875:                     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAE886:                     Set var_BC = Me.CmdPlanBill
  loc_1BAE88C:                     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAE89C:                     If (MemVar_1F921D0 = "Y") Then
  loc_1BAE8BF:                       var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAE8CD:                       Set var_BC = Me.Txt
  loc_1BAE8D3:                       Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAE8EA:                       var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BAE900:                       Set var_C4 = Me.Txt
  loc_1BAE906:                       Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAE935:                       Set var_228 = Me.Txt
  loc_1BAE93B:                       Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAE969:                       unk_529B68.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BAE9A1:                     End If
  loc_1BAE9A1:                     Call Proc_64_61_E7E4E0()
  loc_1BAE9A9:                   Else
  loc_1BAE9A9:                     Exit Sub
  loc_1BAE9AA:                   End If
  loc_1BAE9AA:                 End If
  loc_1BAE9AD:               Else
  loc_1BAE9EC:                 If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT1") Then
  loc_1BAEA0C:                   var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BAEA2E:                   If (var_C0.Value = "Yes") Then
  loc_1BAEA3F:                     Set var_BC = Me.Txt
  loc_1BAEA45:                     Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAEA4D:                     var_94 = var_C0.Tag
  loc_1BAEA56:                     Set var_27C = Me.FGrid
  loc_1BAEA6E:                     Set var_C4 = Me.Txt
  loc_1BAEA74:                     Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAEAC9:                     Set var_22C = Me.Fgrid1
  loc_1BAEADF:                     Proc_96_53_1D37E3C(var_94, var_27C, var_22C, 7, 8, &HA, var_C8.Text)
  loc_1BAEB10:                     Set var_BC = Me.Txt
  loc_1BAEB16:                     Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BAEB1E:                     global_126 = var_C0.Tag
  loc_1BAEB39:                     Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_120)
  loc_1BAEB58:                     Set var_BC = Me.CmdPostChrg
  loc_1BAEB5E:                     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAEB6F:                     Set var_BC = Me.CmdPlanBill
  loc_1BAEB75:                     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAEB85:                     If (MemVar_1F921D0 = "Y") Then
  loc_1BAEBA8:                       var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAEBB6:                       Set var_BC = Me.Txt
  loc_1BAEBBC:                       Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAEBCB:                       var_154 = Trim(CVar(var_C0))
  loc_1BAEBD3:                       var_214 = -1 & var_154 
  loc_1BAEBE9:                       Set var_C4 = Me.Txt
  loc_1BAEBEF:                       Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAEC1E:                       Set var_228 = Me.Txt
  loc_1BAEC24:                       Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAEC52:                       unk_529B68.Execute CStr("O" & Trim(CVar(var_22C)) & "',0)"), 0, 
  loc_1BAEC8A:                     End If
  loc_1BAEC8A:                     Call Proc_64_61_E7E4E0()
  loc_1BAEC92:                   Else
  loc_1BAECC1:                     If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BAECD2:                       Set var_BC = Me.Txt
  loc_1BAECD8:                       Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAECE0:                       var_94 = var_C0.Tag
  loc_1BAECE9:                       Set var_27C = Me.FGrid
  loc_1BAED01:                       Set var_C4 = Me.Txt
  loc_1BAED07:                       Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAED5C:                       Set var_22C = Me.Fgrid1
  loc_1BAED72:                       Proc_96_53_1D37E3C(var_94, var_27C, var_22C, 7, 8, &HA, var_C8.Text)
  loc_1BAEDA3:                       Set var_BC = Me.Txt
  loc_1BAEDA9:                       Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BAEDB1:                       global_126 = var_C0.Tag
  loc_1BAEDCC:                       Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_120)
  loc_1BAEDEB:                       Set var_BC = Me.CmdPostChrg
  loc_1BAEDF1:                       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAEE02:                       Set var_BC = Me.CmdPlanBill
  loc_1BAEE08:                       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAEE18:                       If (MemVar_1F921D0 = "Y") Then
  loc_1BAEE3B:                         var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAEE49:                         Set var_BC = Me.Txt
  loc_1BAEE4F:                         Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAEE66:                         var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BAEE7C:                         Set var_C4 = Me.Txt
  loc_1BAEE82:                         Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAEEB1:                         Set var_228 = Me.Txt
  loc_1BAEEB7:                         Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAEEE5:                         unk_529B68.Execute CStr("O" & Trim(CVar(var_22C)) & "',0)"), 0, 
  loc_1BAEF1D:                       End If
  loc_1BAEF1D:                       Call Proc_64_61_E7E4E0()
  loc_1BAEF25:                     Else
  loc_1BAEF25:                       Exit Sub
  loc_1BAEF26:                     End If
  loc_1BAEF26:                   End If
  loc_1BAEF29:                 Else
  loc_1BAEF68:                   If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT2") Then
  loc_1BAEF88:                     var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BAEFAA:                     If (var_C0.Value = "Yes") Then
  loc_1BAEFBB:                       Set var_BC = Me.Txt
  loc_1BAEFC1:                       Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAEFC9:                       var_94 = var_C0.Tag
  loc_1BAEFD2:                       Set var_27C = Me.FGrid
  loc_1BAEFEA:                       Set var_C4 = Me.Txt
  loc_1BAEFF0:                       Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAF03A:                       Set var_22C = Me.Fgrid1
  loc_1BAF050:                       Proc_96_67_1D47424(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BAF07F:                       Set var_BC = Me.Txt
  loc_1BAF085:                       Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BAF08D:                       2 = var_C0.Tag
  loc_1BAF0A8:                       Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_126)
  loc_1BAF0C7:                       Set var_BC = Me.CmdPostChrg
  loc_1BAF0CD:                       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAF0DE:                       Set var_BC = Me.CmdPlanBill
  loc_1BAF0E4:                       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAF0F4:                       If (MemVar_1F921D0 = "Y") Then
  loc_1BAF117:                         var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAF125:                         Set var_BC = Me.Txt
  loc_1BAF12B:                         Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAF13A:                         var_154 = Trim(CVar(var_C0))
  loc_1BAF142:                         var_214 = -1 & var_154 
  loc_1BAF158:                         Set var_C4 = Me.Txt
  loc_1BAF15E:                         Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAF18D:                         Set var_228 = Me.Txt
  loc_1BAF193:                         Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAF1C1:                         unk_529B68.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BAF1F9:                       End If
  loc_1BAF1F9:                       Call Proc_64_61_E7E4E0()
  loc_1BAF201:                     Else
  loc_1BAF230:                       If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BAF241:                         Set var_BC = Me.Txt
  loc_1BAF247:                         Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAF24F:                         var_94 = var_C0.Tag
  loc_1BAF258:                         Set var_27C = Me.FGrid
  loc_1BAF270:                         Set var_C4 = Me.Txt
  loc_1BAF276:                         Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAF2C0:                         Set var_22C = Me.Fgrid1
  loc_1BAF2D6:                         Proc_96_67_1D47424(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BAF305:                         Set var_BC = Me.Txt
  loc_1BAF30B:                         Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BAF313:                         2 = var_C0.Tag
  loc_1BAF32E:                         Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_126)
  loc_1BAF34D:                         Set var_BC = Me.CmdPostChrg
  loc_1BAF353:                         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAF364:                         Set var_BC = Me.CmdPlanBill
  loc_1BAF36A:                         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAF37A:                         If (MemVar_1F921D0 = "Y") Then
  loc_1BAF39D:                           var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAF3AB:                           Set var_BC = Me.Txt
  loc_1BAF3B1:                           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAF3C8:                           var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BAF3DE:                           Set var_C4 = Me.Txt
  loc_1BAF3E4:                           Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAF413:                           Set var_228 = Me.Txt
  loc_1BAF419:                           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAF447:                           unk_529B68.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BAF47F:                         End If
  loc_1BAF47F:                         Call Proc_64_61_E7E4E0()
  loc_1BAF487:                       Else
  loc_1BAF487:                         Exit Sub
  loc_1BAF488:                       End If
  loc_1BAF488:                     End If
  loc_1BAF48B:                   Else
  loc_1BAF4CA:                     If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT3") Then
  loc_1BAF4EA:                       var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BAF50C:                       If (var_C0.Value = "Yes") Then
  loc_1BAF51D:                         Set var_BC = Me.Txt
  loc_1BAF523:                         Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAF52B:                         var_94 = var_C0.Tag
  loc_1BAF534:                         Set var_27C = Me.FGrid
  loc_1BAF54C:                         Set var_C4 = Me.Txt
  loc_1BAF552:                         Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAF59C:                         Set var_22C = Me.Fgrid1
  loc_1BAF5B2:                         Proc_96_68_1E08714(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BAF5E1:                         Set var_BC = Me.Txt
  loc_1BAF5E7:                         Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BAF5EF:                         2 = var_C0.Tag
  loc_1BAF60A:                         Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_126)
  loc_1BAF629:                         Set var_BC = Me.CmdPostChrg
  loc_1BAF62F:                         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAF640:                         Set var_BC = Me.CmdPlanBill
  loc_1BAF646:                         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAF656:                         If (MemVar_1F921D0 = "Y") Then
  loc_1BAF679:                           var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAF687:                           Set var_BC = Me.Txt
  loc_1BAF68D:                           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAF69C:                           var_154 = Trim(CVar(var_C0))
  loc_1BAF6A4:                           var_214 = -1 & var_154 
  loc_1BAF6BA:                           Set var_C4 = Me.Txt
  loc_1BAF6C0:                           Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAF6EF:                           Set var_228 = Me.Txt
  loc_1BAF6F5:                           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAF723:                           unk_529B68.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BAF75B:                         End If
  loc_1BAF75B:                         Call Proc_64_61_E7E4E0()
  loc_1BAF763:                       Else
  loc_1BAF792:                         If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BAF7A3:                           Set var_BC = Me.Txt
  loc_1BAF7A9:                           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAF7B1:                           var_94 = var_C0.Tag
  loc_1BAF7BA:                           Set var_27C = Me.FGrid
  loc_1BAF7D2:                           Set var_C4 = Me.Txt
  loc_1BAF7D8:                           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAF822:                           Set var_22C = Me.Fgrid1
  loc_1BAF838:                           Proc_96_68_1E08714(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BAF867:                           Set var_BC = Me.Txt
  loc_1BAF86D:                           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BAF875:                           2 = var_C0.Tag
  loc_1BAF890:                           Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_126)
  loc_1BAF8AF:                           Set var_BC = Me.CmdPostChrg
  loc_1BAF8B5:                           Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAF8C6:                           Set var_BC = Me.CmdPlanBill
  loc_1BAF8CC:                           Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAF8DC:                           If (MemVar_1F921D0 = "Y") Then
  loc_1BAF8FF:                             var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAF90D:                             Set var_BC = Me.Txt
  loc_1BAF913:                             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAF92A:                             var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BAF940:                             Set var_C4 = Me.Txt
  loc_1BAF946:                             Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAF975:                             Set var_228 = Me.Txt
  loc_1BAF97B:                             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAF9A9:                             unk_529B68.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BAF9E1:                           End If
  loc_1BAF9E1:                           Call Proc_64_61_E7E4E0()
  loc_1BAF9E9:                         Else
  loc_1BAF9E9:                           Exit Sub
  loc_1BAF9EA:                         End If
  loc_1BAF9EA:                       End If
  loc_1BAF9ED:                     Else
  loc_1BAFA2C:                       If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT4") Then
  loc_1BAFA4C:                         var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BAFA6E:                         If (var_C0.Value = "Yes") Then
  loc_1BAFA7F:                           Set var_BC = Me.Txt
  loc_1BAFA85:                           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAFA8D:                           var_94 = var_C0.Tag
  loc_1BAFA96:                           Set var_27C = Me.FGrid
  loc_1BAFAAE:                           Set var_C4 = Me.Txt
  loc_1BAFAB4:                           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAFAFE:                           Set var_22C = Me.Fgrid1
  loc_1BAFB14:                           Proc_96_54_1D7EA30(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BAFB43:                           Set var_BC = Me.Txt
  loc_1BAFB49:                           Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BAFB51:                           2 = var_C0.Tag
  loc_1BAFB6C:                           Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_126)
  loc_1BAFB8B:                           Set var_BC = Me.CmdPostChrg
  loc_1BAFB91:                           Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAFBA2:                           Set var_BC = Me.CmdPlanBill
  loc_1BAFBA8:                           Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAFBB8:                           If (MemVar_1F921D0 = "Y") Then
  loc_1BAFBDB:                             var_1B4 = CVar("insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88) & ",'CHKOT','") 'String
  loc_1BAFBE9:                             Set var_BC = Me.Txt
  loc_1BAFBEF:                             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BAFBFE:                             var_154 = Trim(CVar(var_C0))
  loc_1BAFC06:                             var_214 = -1 & var_154 
  loc_1BAFC1C:                             Set var_C4 = Me.Txt
  loc_1BAFC22:                             Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAFC51:                             Set var_228 = Me.Txt
  loc_1BAFC57:                             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAFC85:                             unk_529B68.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BAFCBD:                           End If
  loc_1BAFCBD:                           Call Proc_64_61_E7E4E0()
  loc_1BAFCC5:                         Else
  loc_1BAFCF4:                           If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BAFD05:                             Set var_BC = Me.Txt
  loc_1BAFD0B:                             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAFD13:                             var_94 = var_C0.Tag
  loc_1BAFD1C:                             Set var_27C = Me.FGrid
  loc_1BAFD34:                             Set var_C4 = Me.Txt
  loc_1BAFD3A:                             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BAFD84:                             Set var_22C = Me.Fgrid1
  loc_1BAFD9A:                             Proc_96_54_1D7EA30(var_94, var_27C, var_22C, 7, 8, &HA)
  loc_1BAFDC9:                             Set var_BC = Me.Txt
  loc_1BAFDCF:                             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, var_C8.Text, 1)
  loc_1BAFDD7:                             2 = var_C0.Tag
  loc_1BAFDF2:                             Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_126)
  loc_1BAFE11:                             Set var_BC = Me.CmdPostChrg
  loc_1BAFE17:                             Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAFE28:                             Set var_BC = Me.CmdPlanBill
  loc_1BAFE2E:                             Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BAFE3E:                             If (MemVar_1F921D0 = "Y") Then
  loc_1BAFE5A:                               var_98 = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1BAFE6F:                               Set var_BC = Me.Txt
  loc_1BAFE75:                               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, CVar(var_98 & ",'CHKOT','"), var_3B8)
  loc_1BAFE8C:                               var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BAFEA2:                               Set var_C4 = Me.Txt
  loc_1BAFEA8:                               Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BAFED7:                               Set var_228 = Me.Txt
  loc_1BAFEDD:                               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BAFF0B:                               unk_529B68.Execute CStr(global_120 & Trim(CVar(var_22C)) & "',0)"), "O", 
  loc_1BAFF43:                             End If
  loc_1BAFF43:                             Call Proc_64_61_E7E4E0()
  loc_1BAFF4B:                           Else
  loc_1BAFF4B:                             Exit Sub
  loc_1BAFF4C:                           End If
  loc_1BAFF4C:                         End If
  loc_1BAFF4F:                       Else
  loc_1BAFF8E:                         If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT5") Then
  loc_1BAFFAE:                           var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BAFFD0:                           If (var_C0.Value = "Yes") Then
  loc_1BAFFE1:                             Set var_BC = Me.Txt
  loc_1BAFFE7:                             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BAFFEF:                             var_94 = var_C0.Tag
  loc_1BAFFF8:                             Set var_27C = Me.FGrid
  loc_1BB0010:                             Set var_C4 = Me.Txt
  loc_1BB0016:                             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BB006B:                             Set var_22C = Me.Fgrid1
  loc_1BB0081:                             Proc_96_50_1CF47D8(var_94, var_27C, var_22C, 7, 8, &HA, var_C8.Text)
  loc_1BB00B2:                             Set var_BC = Me.Txt
  loc_1BB00B8:                             Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BB00C0:                             global_126 = var_C0.Tag
  loc_1BB00DB:                             Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_120)
  loc_1BB00FA:                             Set var_BC = Me.CmdPostChrg
  loc_1BB0100:                             Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BB0111:                             Set var_BC = Me.CmdPlanBill
  loc_1BB0117:                             Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BB0127:                             If (MemVar_1F921D0 = "Y") Then
  loc_1BB0143:                               var_98 = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1BB014A:                               var_1B4 = CVar(var_98 & ",'CHKOT','") 'String
  loc_1BB0158:                               Set var_BC = Me.Txt
  loc_1BB015E:                               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB016D:                               var_154 = Trim(CVar(var_C0))
  loc_1BB0175:                               var_214 = -1 & var_154 
  loc_1BB018B:                               Set var_C4 = Me.Txt
  loc_1BB0191:                               Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB01C0:                               Set var_228 = Me.Txt
  loc_1BB01C6:                               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB01F4:                               unk_529B68.Execute CStr("O" & Trim(CVar(var_22C)) & "',0)"), 0, 
  loc_1BB022C:                             End If
  loc_1BB022C:                             Call Proc_64_61_E7E4E0()
  loc_1BB0234:                           Else
  loc_1BB0263:                             If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BB0274:                               Set var_BC = Me.Txt
  loc_1BB027A:                               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BB0282:                               var_94 = var_C0.Tag
  loc_1BB028B:                               Set var_27C = Me.FGrid
  loc_1BB02A3:                               Set var_C4 = Me.Txt
  loc_1BB02A9:                               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BB02FE:                               Set var_22C = Me.Fgrid1
  loc_1BB0314:                               Proc_96_50_1CF47D8(var_94, var_27C, var_22C, 7, 8, &HA, var_C8.Text)
  loc_1BB0345:                               Set var_BC = Me.Txt
  loc_1BB034B:                               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BB0353:                               global_126 = var_C0.Tag
  loc_1BB036E:                               Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_120)
  loc_1BB038D:                               Set var_BC = Me.CmdPostChrg
  loc_1BB0393:                               Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BB03A4:                               Set var_BC = Me.CmdPlanBill
  loc_1BB03AA:                               Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BB03BA:                               If (MemVar_1F921D0 = "Y") Then
  loc_1BB03D6:                                 var_98 = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1BB03EB:                                 Set var_BC = Me.Txt
  loc_1BB03F1:                                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, CVar(var_98 & ",'CHKOT','"), var_3B8)
  loc_1BB0408:                                 var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BB041E:                                 Set var_C4 = Me.Txt
  loc_1BB0424:                                 Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB0453:                                 Set var_228 = Me.Txt
  loc_1BB0459:                                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB0487:                                 unk_529B68.Execute CStr("O" & Trim(CVar(var_22C)) & "',0)"), 0, 
  loc_1BB04BF:                               End If
  loc_1BB04BF:                               Call Proc_64_61_E7E4E0()
  loc_1BB04C7:                             Else
  loc_1BB04C7:                               Exit Sub
  loc_1BB04C8:                             End If
  loc_1BB04C8:                           End If
  loc_1BB04CB:                         Else
  loc_1BB050A:                           If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT6") Then
  loc_1BB052A:                             var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BB054C:                             If (var_C0.Value = "Yes") Then
  loc_1BB055D:                               Set var_BC = Me.Txt
  loc_1BB0563:                               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BB056B:                               var_94 = var_C0.Tag
  loc_1BB0574:                               Set var_27C = Me.FGrid
  loc_1BB058C:                               Set var_C4 = Me.Txt
  loc_1BB0592:                               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BB05E7:                               Set var_22C = Me.Fgrid1
  loc_1BB05FD:                               Proc_96_51_1EAC61C(var_94, var_27C, var_22C, 7, 8, &HA, var_C8.Text)
  loc_1BB062E:                               Set var_BC = Me.Txt
  loc_1BB0634:                               Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BB063C:                               global_126 = var_C0.Tag
  loc_1BB0657:                               Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_120)
  loc_1BB0676:                               Set var_BC = Me.CmdPostChrg
  loc_1BB067C:                               Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BB068D:                               Set var_BC = Me.CmdPlanBill
  loc_1BB0693:                               Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BB06A3:                               If (MemVar_1F921D0 = "Y") Then
  loc_1BB06BF:                                 var_98 = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1BB06C6:                                 var_1B4 = CVar(var_98 & ",'CHKOT','") 'String
  loc_1BB06D4:                                 Set var_BC = Me.Txt
  loc_1BB06DA:                                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB06E9:                                 var_154 = Trim(CVar(var_C0))
  loc_1BB06F1:                                 var_214 = -1 & var_154 
  loc_1BB0707:                                 Set var_C4 = Me.Txt
  loc_1BB070D:                                 Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB073C:                                 Set var_228 = Me.Txt
  loc_1BB0742:                                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB0770:                                 unk_529B68.Execute CStr("O" & Trim(CVar(var_22C)) & "',0)"), 0, 
  loc_1BB07A8:                               End If
  loc_1BB07A8:                               Call Proc_64_61_E7E4E0()
  loc_1BB07B0:                             Else
  loc_1BB07DF:                               If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BB07F0:                                 Set var_BC = Me.Txt
  loc_1BB07F6:                                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BB07FE:                                 var_94 = var_C0.Tag
  loc_1BB0807:                                 Set var_27C = Me.FGrid
  loc_1BB081F:                                 Set var_C4 = Me.Txt
  loc_1BB0825:                                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BB087A:                                 Set var_22C = Me.Fgrid1
  loc_1BB0890:                                 Proc_96_51_1EAC61C(var_94, var_27C, var_22C, 7, 8, &HA, var_C8.Text)
  loc_1BB08C1:                                 Set var_BC = Me.Txt
  loc_1BB08C7:                                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BB08CF:                                 global_126 = var_C0.Tag
  loc_1BB08EA:                                 Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_120)
  loc_1BB0909:                                 Set var_BC = Me.CmdPostChrg
  loc_1BB090F:                                 Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BB0920:                                 Set var_BC = Me.CmdPlanBill
  loc_1BB0926:                                 Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BB0936:                                 If (MemVar_1F921D0 = "Y") Then
  loc_1BB0952:                                   var_98 = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1BB0967:                                   Set var_BC = Me.Txt
  loc_1BB096D:                                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, CVar(var_98 & ",'CHKOT','"), var_3B8)
  loc_1BB0984:                                   var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BB099A:                                   Set var_C4 = Me.Txt
  loc_1BB09A0:                                   Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB09CF:                                   Set var_228 = Me.Txt
  loc_1BB09D5:                                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB0A03:                                   unk_529B68.Execute CStr("O" & Trim(CVar(var_22C)) & "',0)"), 0, 
  loc_1BB0A3B:                                 End If
  loc_1BB0A3B:                                 Call Proc_64_61_E7E4E0()
  loc_1BB0A43:                               Else
  loc_1BB0A43:                                 Exit Sub
  loc_1BB0A44:                               End If
  loc_1BB0A44:                             End If
  loc_1BB0A47:                           Else
  loc_1BB0A86:                             If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT7") Then
  loc_1BB0AA6:                               var_C0 = Me.Fields.Item("AutoPrint")
  loc_1BB0AC8:                               If (var_C0.Value = "Yes") Then
  loc_1BB0AD9:                                 Set var_BC = Me.Txt
  loc_1BB0ADF:                                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BB0AE7:                                 var_94 = var_C0.Tag
  loc_1BB0AF0:                                 Set var_27C = Me.FGrid
  loc_1BB0B08:                                 Set var_C4 = Me.Txt
  loc_1BB0B0E:                                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BB0B63:                                 Set var_22C = Me.Fgrid1
  loc_1BB0B79:                                 Proc_96_52_1EA14A0(var_94, var_27C, var_22C, 7, 8, &HA, var_C8.Text)
  loc_1BB0BAA:                                 Set var_BC = Me.Txt
  loc_1BB0BB0:                                 Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BB0BB8:                                 global_126 = var_C0.Tag
  loc_1BB0BD3:                                 Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_120)
  loc_1BB0BF2:                                 Set var_BC = Me.CmdPostChrg
  loc_1BB0BF8:                                 Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BB0C09:                                 Set var_BC = Me.CmdPlanBill
  loc_1BB0C0F:                                 Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BB0C1F:                                 If (MemVar_1F921D0 = "Y") Then
  loc_1BB0C3B:                                   var_98 = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1BB0C42:                                   var_1B4 = CVar(var_98 & ",'CHKOT','") 'String
  loc_1BB0C50:                                   Set var_BC = Me.Txt
  loc_1BB0C56:                                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, var_1B4, var_3B8)
  loc_1BB0C65:                                   var_154 = Trim(CVar(var_C0))
  loc_1BB0C6D:                                   var_214 = -1 & var_154 
  loc_1BB0C83:                                   Set var_C4 = Me.Txt
  loc_1BB0C89:                                   Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB0CB8:                                   Set var_228 = Me.Txt
  loc_1BB0CBE:                                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB0CEC:                                   unk_529B68.Execute CStr("O" & Trim(CVar(var_22C)) & "',0)"), 0, 
  loc_1BB0D24:                                 End If
  loc_1BB0D24:                                 Call Proc_64_61_E7E4E0()
  loc_1BB0D2C:                               Else
  loc_1BB0D5B:                                 If (MsgBox("Print Bill ?", &H24, var_154, var_1B4, var_3B8 & Trim(CVar(var_C0))) = 6) Then
  loc_1BB0D6C:                                   Set var_BC = Me.Txt
  loc_1BB0D72:                                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0)
  loc_1BB0D7A:                                   var_94 = var_C0.Tag
  loc_1BB0D83:                                   Set var_27C = Me.FGrid
  loc_1BB0D9B:                                   Set var_C4 = Me.Txt
  loc_1BB0DA1:                                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_C8)
  loc_1BB0DF6:                                   Set var_22C = Me.Fgrid1
  loc_1BB0E0C:                                   Proc_96_52_1EA14A0(var_94, var_27C, var_22C, 7, 8, &HA, var_C8.Text)
  loc_1BB0E3D:                                   Set var_BC = Me.Txt
  loc_1BB0E43:                                   Call 0.Method_Proc_64_48_1BB0FE00 (CInt(&HA), var_C0, var_94, 1, 2)
  loc_1BB0E4B:                                   global_126 = var_C0.Tag
  loc_1BB0E66:                                   Proc_96_40_13BD354(CStr(Trim(CVar(var_94))), global_120)
  loc_1BB0E85:                                   Set var_BC = Me.CmdPostChrg
  loc_1BB0E8B:                                   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BB0E9C:                                   Set var_BC = Me.CmdPlanBill
  loc_1BB0EA2:                                   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000D(False)
  loc_1BB0EB2:                                   If (MemVar_1F921D0 = "Y") Then
  loc_1BB0ECE:                                     var_98 = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_88)
  loc_1BB0EE3:                                     Set var_BC = Me.Txt
  loc_1BB0EE9:                                     Call 0.Method_Proc_64_48_1BB0FE00 (CInt(0), var_C0, CVar(var_98 & ",'CHKOT','"), var_3B8)
  loc_1BB0F00:                                     var_214 = -1 & Trim(CVar(var_C0)) 
  loc_1BB0F16:                                     Set var_C4 = Me.Txt
  loc_1BB0F1C:                                     Call 0.Method_Proc_64_48_1BB0FE00 (&HA, var_C8, var_3B8 & Trim(CVar(var_C0)) & "','")
  loc_1BB0F4B:                                     Set var_228 = Me.Txt
  loc_1BB0F51:                                     Call 0.Method_Proc_64_48_1BB0FE00 (CInt(9), var_22C, var_27C & Trim(CVar(var_C8)) & "','")
  loc_1BB0F7F:                                     unk_529B68.Execute CStr("O" & Trim(CVar(var_22C)) & "',0)"), 0, 
  loc_1BB0FB7:                                   End If
  loc_1BB0FB7:                                   Call Proc_64_61_E7E4E0()
  loc_1BB0FBF:                                 Else
  loc_1BB0FBF:                                   Exit Sub
  loc_1BB0FC0:                                 End If
  loc_1BB0FC0:                               End If
  loc_1BB0FC0:                             End If
  loc_1BB0FC0:                           End If
  loc_1BB0FC0:                         End If
  loc_1BB0FC0:                       End If
  loc_1BB0FC0:                     End If
  loc_1BB0FC0:                   End If
  loc_1BB0FC0:                 End If
  loc_1BB0FC0:               End If
  loc_1BB0FC0:             End If
  loc_1BB0FC0:           End If
  loc_1BB0FC0:         End If
  loc_1BB0FC0:       End If
  loc_1BB0FC0:     End If
  loc_1BB0FC0:   End If
  loc_1BB0FC0: End If
  loc_1BB0FC4: Set var_BC = Me.FGrid
  loc_1BB0FDA: Set var_90 = Nothing
  loc_1BB0FDD: Exit Sub
End Sub

Public Sub Proc_64_49_1267368
  'Data Table: 529B38
  Dim var_8A As Integer
  Dim var_A4 As TextBox
  Dim unk_529B4C As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As Variant
  Dim var_A8 As String
  Dim var_CC As Variant
  Dim var_100 As Variant
  Dim var_F0 As String
  Dim var_120 As Variant
  Dim var_110 As String
  loc_1266E1C: On Error Goto loc_126735C
  loc_1266E3B: Call 0.Method_Proc_64_49_12673680 (CInt(&HA), var_A4, var_A8)
  loc_1266E43: "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono=" = var_A4.Text
  loc_1266E7A: unk_529B4C.Execute &HFF & var_A8 & " order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO", var_CC, -1
  loc_1266E85: Set var_90 = Me.Txt
  loc_1266E94: var_D0 = var_90.RecordCount
  loc_1266EA2: If (var_D0 <= 0) Then
  loc_1266EAB:   Call 0.Method_arg_50 (var_A8)
  loc_1266ECC:   MsgBox("** No Records Found to Print **", &H40, CVar(var_A8), var_100, var_120)
  loc_1266EDE:   var_8A = 0
  loc_1266EE1:   Exit Sub
  loc_1266EE2: End If
  loc_1266EE5: var_94 = "BillPrint"
  loc_1266EE8: var_BC = "Guest Bill"
  loc_1266EFF: var_98 = CStr(Ucase(var_BC))
  loc_1266F0F: If (var_8A = 0) Then
  loc_1266F12:   Exit Sub
  loc_1266F13: End If
  loc_1266F37: Set var_A0 = var_90 
  loc_1266F3E: CreateFieldDefFile(var_A0, MemVar_1F920B4 & "\" & var_94 & ".ttx", &HFF)
  loc_1266F69: var_A8 = MemVar_1F920B4 & "\"
  loc_1266F80: Call 0.Method_arg_1C (var_A8 & var_94 & ".RPT", var_BC, var_A0)
  loc_1266F8B: MemVar_1F921E4 = var_A0
  loc_1266FB4: Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_F0)
  loc_1266FBC: Call 0.Method_arg_2C (var_110, var_8A)
  loc_1266FCA: Call 0.Method_arg_150 (var_A0)
  loc_1266FD4: Set var_90 = Nothing
  loc_1266FE8: Call 0.Method_arg_90 (var_A0, var_D0)
  loc_1266FF0: Call 0.Method_arg_24 (var_9A)
  loc_1266FFC: For var_12C =  To CInt(var_D0): 1 = var_12C 'Integer
  loc_1267015:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_126701D:   Call 0.Method_arg_20 (var_A4)
  loc_1267025:   Call 0.Method_arg_30 (var_A8)
  loc_126703B:   var_13C = Ucase(CVar(var_A8)) 'Variant
  loc_126706B:   If (var_13C = Ucase("ChkInDt")) Then
  loc_126707E:     Set var_A0 = Me.Txt
  loc_1267084:     Call 0.Method_Proc_64_49_12673680 (CInt(1), var_A4)
  loc_12670BC:     Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_12670C4:     Call 0.Method_arg_20 (var_148)
  loc_12670CC:     Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_12670EB:   Else
  loc_126710D:     If (var_13C = Ucase("Company")) Then
  loc_1267120:       Set var_A0 = Me.Txt
  loc_1267126:       Call 0.Method_Proc_64_49_12673680 (CInt(&HB), var_A4)
  loc_126715E:       Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_1267166:       Call 0.Method_arg_20 (var_148)
  loc_126716E:       Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_126718D:     Else
  loc_12671AF:       If (var_13C = Ucase("AdltChld")) Then
  loc_12671C2:         Set var_A0 = Me.Txt
  loc_12671C8:         Call 0.Method_Proc_64_49_12673680 (CInt(5), var_A4)
  loc_12671F7:         Set var_144 = Me.Txt
  loc_12671FD:         Call 0.Method_Proc_64_49_12673680 (CInt(6), var_148)
  loc_1267235:         Call 0.Method_arg_90 (var_18C, CLng(var_9A))
  loc_126723D:         Call 0.Method_arg_20 (var_190)
  loc_1267245:         Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "/" & Trim(CVar(var_148)) & "'"))
  loc_126726E:       Else
  loc_1267290:         If (var_13C = Ucase("RoomNo")) Then
  loc_12672A3:           Set var_A0 = Me.Txt
  loc_12672A9:           Call 0.Method_Proc_64_49_12673680 (CInt(0), var_A4)
  loc_12672E1:           Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_12672E9:           Call 0.Method_arg_20 (var_148)
  loc_12672F1:           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_126730D:         End If
  loc_126730D:       End If
  loc_126730D:     End If
  loc_126730D:   End If
  loc_1267310: Next var_12C 'Integer
  loc_126731A: Set var_A4 = Nothing
  loc_1267330: Set var_A0 = MemVar_1F921E4 
  loc_126733C: Proc_6_99_1483714(var_A0, 0, var_98)
  loc_1267347: MemVar_1F921E4 = var_A0
  loc_1267357: MemVar_1F921E4 = Nothing
  loc_126735B: Exit Sub
  loc_126735C: ' Referenced from: 1266E1C
  loc_1267361: Proc_6_60_E62BC4(0, &HFF)
  loc_1267366: Exit Sub
End Sub

Public Sub Proc_64_50_18E6B20
  'Data Table: 529B38
  Dim var_110 As Variant
  Dim var_118 As String
  Dim unk_529B4C As Connection15
  Dim var_E4 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_88 As Variant
  Dim var_86 As Variant
  Dim var_10C As Fields15
  Dim var_12C As Variant
  Dim var_150 As Variant
  Dim var_130 As Fields15
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_25C As Variant
  Dim var_27C As Variant
  Dim var_37C As Variant
  Dim var_424 As Variant
  Dim var_3F4 As Variant
  Dim var_414 As Variant
  Dim var_434 As Variant
  Dim var_454 As Variant
  Dim var_514 As Variant
  Dim var_534 As Variant
  Dim var_554 As Variant
  Dim var_588 As Variant
  Dim var_5AC As Variant
  Dim var_5EC As Variant
  Dim var_60C As Variant
  Dim var_654 As Variant
  Dim var_698 As Variant
  Dim var_6BC As Variant
  Dim var_6FC As Variant
  Dim var_71C As Variant
  Dim var_764 As Variant
  Dim var_774 As Variant
  Dim var_794 As Variant
  Dim var_7D4 As Variant
  Dim var_828 As Variant
  Dim var_83C As Variant
  Dim var_8A4 As Variant
  Dim var_914 As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  Dim var_2BC As Variant
  Dim var_304 As Variant
  Dim var_3BC As Variant
  Dim var_474 As Variant
  Dim var_4BC As Variant
  Dim var_574 As Variant
  Dim var_62C As Variant
  Dim var_684 As Variant
  Dim var_73C As Variant
  Dim var_814 As Variant
  Dim var_87C As Variant
  Dim var_954 As Variant
  Dim var_114 As String
  Dim var_170 As Variant
  Dim var_2E4 As Variant
  Dim var_3E4 As Variant
  Dim var_49C As Variant
  Dim var_504 As Variant
  Dim var_5BC As Variant
  Dim var_6CC As Variant
  Dim var_1F4 As Variant
  Dim var_24C As Variant
  Dim var_32C As Variant
  Dim var_34C As Variant
  Dim var_B0 As Recordset15
  Dim var_CC As Double
  Dim var_D4 As Double
  Dim var_160 As Variant
  Dim var_1D4 As Variant
  Dim var_2AC As Variant
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_22C As Variant
  Dim var_3AC As Variant
  Dim var_DC As Double
  Dim var_4E4 As Variant
  Dim var_85C As Variant
  Dim var_7A4 As Variant
  Dim var_804 As Variant
  Dim Me As Recordset15
  loc_18E4308: On Error Goto loc_18E6B04
  loc_18E430D: Close 1
  loc_18E4316: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_18E4338: Set var_10C = Me.Txt
  loc_18E433E: Call 0.Method_Proc_64_50_18E6B200 (CInt(&HA), var_110, var_114, "Select Distinct Split,Bill_No from paycharge where (ContraDocId is NULL or contradocid='') and folionoDocId='")
  loc_18E4346: var_12C = var_110.Tag
  loc_18E434F: var_118 = -1 & var_114
  loc_18E435F: unk_529B4C.Execute var_118 & "'", var_130, 
  loc_18E436A: Set var_E4 = var_130
  loc_18E4382: ' Referenced from: 18E6A3B
  loc_18E4391: If Not(var_E4.EOF) Then
  loc_18E43B2:   Set var_10C = Me.Txt
  loc_18E43B8:   Call 0.Method_Proc_64_50_18E6B200 (CInt(&HA), var_110, var_114, "SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory FROM ((GuestProf LEFT JOIN (GuestFolio LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) left joIn Subgroup S on GuestFolio.Company=s.Subcode Where GuestFolio.DocId='")
  loc_18E43C0:   var_12C = var_110.Tag
  loc_18E43C9:   var_118 = -1 & var_114
  loc_18E43D9:   unk_529B4C.Execute var_118 & "' order by  RoomOcc.Sno Desc", var_130, 
  loc_18E43E4:   Set var_B4 = var_130
  loc_18E4410:   If (var_B4.RecordCount <= 0) Then
  loc_18E4413:     Exit Sub
  loc_18E4414:   End If
  loc_18E441A:   If (var_86 = 0) Then
  loc_18E4423:     var_88 = (var_88 + 1)
  loc_18E442B:     Print 1, " "
  loc_18E4436:     Print 1, " "
  loc_18E4441:     Print 1, " "
  loc_18E444C:     Print 1, " "
  loc_18E4454:     var_86 = &HC
  loc_18E44A5:     Print 1, " Mr " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Name")), var_86), &H23)
  loc_18E44C3:     Print 1, vbNullString
  loc_18E44F7:     var_160 = Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add1")))))
  loc_18E4585:     var_22C = var_B4.Fields.Item("FolioNo").Value
  loc_18E45A1:     var_27C = (9 - Len(Trim(CVar(CStr(var_22C)))))
  loc_18E4622:     var_37C = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_18E467C:     var_434 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_18E46FD:     var_534 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_18E4757:     var_5EC = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_18E47E4:     var_6FC = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_18E4855:     var_7D4 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_18E490F:     var_914 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_18E4936:     var_190 = (CVar(vbNullString & Proc_6_45_EAD428(CStr(var_160), &H23)) + Space(3))
  loc_18E493D:     var_1E4 = (var_190 + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))))
  loc_18E4944:     var_204 = (var_1E4 + Space(3))
  loc_18E494B:     var_2BC = (var_204 + Space(CLng((var_27C / 2))))
  loc_18E4957:     var_304 = (var_2BC + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_18E495E:     var_3BC = (var_304 + Space(CLng((var_37C / 2))))
  loc_18E4965:     var_474 = (var_3BC + Space(CLng((var_434 / 2))))
  loc_18E4971:     var_4BC = (var_474 + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_18E4978:     var_574 = (var_4BC + Space(CLng((var_534 / 2))))
  loc_18E497F:     var_62C = (var_574 + Space(CLng((var_5EC / 2))))
  loc_18E4986:     var_684 = (var_62C + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_18E498D:     var_73C = (var_684 + Space(CLng((var_6FC / 2))))
  loc_18E4994:     var_814 = (var_73C + Space(CLng((var_7D4 / 2))))
  loc_18E499B:     var_87C = (var_814 + Trim(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_18E49A2:     var_954 = (var_87C + Space(CLng((var_914 / 2))))
  loc_18E49A8:     Print 1, var_954
  loc_18E4A86:     Print 1, vbNullString
  loc_18E4AD3:     Print 1, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add2"))), &H23)
  loc_18E4AEF:     Print 1, vbNullString
  loc_18E4B0C:     var_110 = var_B4.Fields.Item("CityName")
  loc_18E4B14:     var_12C = CVar(var_110) 'Address
  loc_18E4B28:     var_114 = Proc_6_38_E68A98(var_12C)
  loc_18E4B38:     var_140 = Proc_6_45_EAD428(var_114 & "-", &H23)
  loc_18E4B4F:     var_130 = var_B4.Fields
  loc_18E4B66:     Proc_6_39_E7C810(var_160, CVar(var_130.Item("RoomRate")))
  loc_18E4B82:     var_1B4 = (10 - Len(Trim(CVar(CStr(var_160)))))
  loc_18E4BBF:     Proc_6_39_E7C810(var_22C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18E4BEF:     Proc_6_39_E7C810(var_27C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18E4C0B:     var_2E4 = (10 - Len(Trim(CVar(CStr(var_27C)))))
  loc_18E4C4B:     var_424 = 12
  loc_18E4C86:     var_3E4 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_18E4CC8:     var_454 = "dd/mm/yy"
  loc_18E4CF9:     var_588 = 12
  loc_18E4D16:     var_49C = CVar(var_B4.Fields.Item("VDate")) 'Address
  loc_18E4D34:     var_504 = (1 - Len(Trim(Format(var_49C, "dd/mm/yy"))))
  loc_18E4D4B:     var_698 = 12
  loc_18E4D87:     var_5BC = (1 - Len(Trim(Format(MemVar_1F920EC, "dd/mm/yy"))))
  loc_18E4DC3:     var_828 = 12
  loc_18E4DFF:     var_6BC = (1 - Len(Trim(Format(MemVar_1F920EC, "dd/mm/yy"))))
  loc_18E4E35:     var_764 = (8 - Len(Trim("****")))
  loc_18E4E7E:     var_83C = (9 - Len(Trim("****")))
  loc_18E4EA5:     var_1F4 = (CVar(vbNullString & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))) + Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2))))
  loc_18E4EB1:     var_24C = (Space(3) + CVar(CStr(var_22C)))
  loc_18E4EB8:     var_32C = (Trim(CVar(CStr(var_22C))) + Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))))
  loc_18E4EBF:     var_34C = (var_B4.Fields.Item("FolioNo").Value + Space(1))
  loc_18E4EC6:     var_414 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_18E4ECD:     var_474 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Format(CVar(var_B4.Fields.Item("VDate")), var_454))
  loc_18E4ED4:     var_554 = (var_474 + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))))
  loc_18E4EDB:     var_60C = ((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))) / 2) + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value))) / 2))))
  loc_18E4EE2:     var_654 = ((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value))) / 2))) / 2) + Format(MemVar_1F920EC, "dd/mm/yy"))
  loc_18E4EE9:     var_6FC = (CVar(var_B4.Fields.Item("RoomCategory")) + Space(CLng((CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)) / 2))))
  loc_18E4EF0:     var_794 = (var_6FC + Space(CLng((CVar(var_B4.Fields.Item("CountryName")) / 2))))
  loc_18E4EF7:     var_7D4 = (CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9))) + Trim("****"))
  loc_18E4EFE:     var_86C = (var_7D4 + Space(CLng((CVar(var_B4.Fields.Item("CountryName")) / 2))))
  loc_18E4F04:     Print 1, Trim(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9))
  loc_18E4FAE:     Print 1, " "
  loc_18E4FB9:     Print 1, " "
  loc_18E4FC4:     Print 1, " "
  loc_18E4FCC:     var_86 = &H17
  loc_18E4FCF:   End If
  loc_18E4FED:   Set var_10C = Me.Txt
  loc_18E4FF3:   Call 0.Method_Proc_64_50_18E6B200 (CInt(&HA), var_110, var_114, "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocId = GuestFolio.Docid) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocId='", var_12C, -1, var_130)
  loc_18E4FFB:   var_86 = var_110.Tag
  loc_18E5014:   unk_529B4C.Execute 1 & var_114 & "' order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO", var_828, 1
  loc_18E501F:   Set var_B0 = var_130
  loc_18E5037:   ' Referenced from: 18E664C
  loc_18E5046:   If Not(var_B0.EOF) Then
  loc_18E5083:     If (var_DC <> CDate(var_B0.Fields.Item("VDate").Value)) Then
  loc_18E509A:       If (var_B0.AbsolutePosition > 1) Then
  loc_18E50A4:         var_CC = (var_BC - var_C4)
  loc_18E50AE:         var_D4 = (var_D4 + var_CC)
  loc_18E5139:         var_1C4 = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, 1)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1)))
  loc_18E51B0:         var_25C = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, 1)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_18E5206:         var_160 = (Space(&H16) + CVar(Proc_6_45_EAD428("Day Total", &H18, var_D4, var_CC)))
  loc_18E520D:         var_1D4 = (var_160 + var_1C4)
  loc_18E5214:         var_1F4 = (Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2))) + Space(1))
  loc_18E521B:         var_27C = (Space(3) + var_25C)
  loc_18E5222:         var_2AC = (var_27C + Space(1))
  loc_18E522C:         var_304 = (Trim(CVar(CStr(var_27C))) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_18E5232:         Print 1, Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2)))
  loc_18E5290:         var_86 = (var_86 + 1)
  loc_18E5298:         Print 1, vbNullString
  loc_18E52A4:         var_86 = (var_86 + 1)
  loc_18E52AA:         var_BC = CDbl(0)
  loc_18E52B0:         var_C4 = CDbl(0)
  loc_18E52B3:       End If
  loc_18E52B3:     End If
  loc_18E52F8:     var_150 = Space(1)
  loc_18E5356:     Proc_6_39_E7C810(Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2))), CVar(var_B0.Fields.Item("VNo")))
  loc_18E5382:     var_22C = (CVar(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("vType")), var_86, 1)))) & "/") + Trim(CVar(CStr(Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2)))))))
  loc_18E540B:     Proc_6_39_E7C810(Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))), CVar(var_B0.Fields.Item("AmtDr")))
  loc_18E544C:     Proc_6_39_E7C810(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), CVar(var_B0.Fields.Item("AmtDr")))
  loc_18E54A4:     var_3E4 = IIf((Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))) = 0), CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), "0.00")), &HA, 1)))
  loc_18E54DC:     Proc_6_39_E7C810(var_454, CVar(var_B0.Fields.Item("AmtCr")), 1)
  loc_18E551D:     Proc_6_39_E7C810(var_49C, CVar(var_B0.Fields.Item("AmtCr")))
  loc_18E5574:     var_514 = IIf((var_454 = 0), CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_49C, "0.00")), &HA, 1)))
  loc_18E5582:     var_170 = (CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_150)
  loc_18E558C:     var_24C = ("0.00" + CVar(Proc_6_45_EAD428(CStr(Format(var_C4, "0.00")), 9)))
  loc_18E5593:     var_27C = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(1))
  loc_18E559D:     var_2E4 = (var_27C + CVar(Proc_6_45_EAD428(CStr(Left(CVar(var_B0.Fields.Item("Comments")), &H18)), &H18)))
  loc_18E55A4:     var_3F4 = (Format(var_D4, "0.00") + var_3E4)
  loc_18E55AB:     var_414 = ((var_B4.Fields.Item("Adult").Value / 2) + Space(1))
  loc_18E55B2:     var_534 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + var_514)
  loc_18E55B8:     Print 1, Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2)))
  loc_18E5659:     var_86 = (var_86 + 1)
  loc_18E5689:     Proc_6_39_E7C810(var_150, CVar(var_B0.Fields.Item("AmtDr")), CVar(var_BC), var_86)
  loc_18E5691:     var_160 = (1 + var_150)
  loc_18E5696:     var_BC = CSng(CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_18E56D2:     Proc_6_39_E7C810(var_150, CVar(var_B0.Fields.Item("AmtCr")), CVar(var_C4))
  loc_18E56DA:     var_160 = (var_BC + var_150)
  loc_18E56DF:     var_C4 = CSng(CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_18E5744:     If (var_B0.AbsolutePosition = var_B0.RecordCount) Then
  loc_18E574E:       var_CC = (var_BC - var_C4)
  loc_18E5758:       var_D4 = (var_D4 + var_CC)
  loc_18E57E3:       var_1C4 = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, CDate(var_B0.Fields.Item("VDate").Value))), CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1, 1)))
  loc_18E585A:       var_25C = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, var_C4)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_18E58B0:       var_160 = (Space(&H16) + CVar(Proc_6_45_EAD428("Day Total", &H18, var_D4, var_CC)))
  loc_18E58B7:       var_1D4 = (CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_1C4)
  loc_18E58BE:       var_1F4 = (Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2))) + Space(1))
  loc_18E58C5:       var_27C = (Trim(CVar(CStr(Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2)))))) + var_25C)
  loc_18E58CC:       var_2AC = (var_27C + Space(1))
  loc_18E58D6:       var_304 = (Left(CVar(var_B0.Fields.Item("Comments")), &H18) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_18E58DC:       Print 1, Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2)))
  loc_18E593A:       var_86 = (var_86 + 1)
  loc_18E5940:       var_BC = CDbl(0)
  loc_18E5946:       var_C4 = CDbl(0)
  loc_18E5949:     End If
  loc_18E594F:     If (var_86 >= &H30) Then
  loc_18E5957:       Print 1, " "
  loc_18E597B:       var_170 = CVar((Val(CStr(var_88)) + CDbl(1))) 'Double
  loc_18E598F:       var_150 = (" " + Space(&H37))
  loc_18E5998:       var_160 = (CVar(Proc_6_45_EAD428("Day Total", &H18, var_D4, var_CC)) + "Continued Page No ")
  loc_18E59A5:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) & Str("0.00")
  loc_18E59C3:       var_86 = (var_86 + 1)
  loc_18E59D8:       Print 1, Chr(&HC)
  loc_18E59E3:       var_86 = 0
  loc_18E59E6:     End If
  loc_18E59EC:     If (var_86 = 0) Then
  loc_18E59F5:       var_88 = (var_88 + 1)
  loc_18E59FD:       Print 1, " "
  loc_18E5A08:       Print 1, " "
  loc_18E5A13:       Print 1, " "
  loc_18E5A1E:       Print 1, " "
  loc_18E5A26:       var_86 = &HC
  loc_18E5A65:       var_140 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Name")), var_86, var_88, var_86, var_86, var_C4), &H23, var_BC, var_86)
  loc_18E5A77:       Print 1, " Mr " & var_140
  loc_18E5A95:       Print 1, vbNullString
  loc_18E5AC9:       var_160 = Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add1")), 1)))
  loc_18E5B57:       var_22C = var_B4.Fields.Item("FolioNo").Value
  loc_18E5B73:       var_27C = (9 - Len(Trim(CVar(CStr(var_22C)))))
  loc_18E5BF4:       var_37C = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_18E5C4E:       var_434 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_18E5CCF:       var_534 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_18E5D29:       var_5EC = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_18E5DB6:       var_6FC = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_18E5E27:       var_7D4 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_18E5EE1:       var_914 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_18E5F08:       var_190 = (CVar(vbNullString & Proc_6_45_EAD428(CStr(var_160), &H23)) + Space(3))
  loc_18E5F0F:       var_1E4 = (CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) & Str("0.00") + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), 1))))
  loc_18E5F16:       var_204 = (Space(1) + Space(3))
  loc_18E5F1D:       var_2BC = ("0.00" + Space(CLng((var_27C / 2))))
  loc_18E5F29:       var_304 = ("0.00" + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_18E5F30:       var_3BC = (Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))) + Space(CLng((Format(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), "0.00") / 2))))
  loc_18E5F37:       var_474 = (CVar(Proc_6_52_EAD4F4(CStr(Format(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), "0.00")), &HA, 1)) + Space(CLng((CVar(var_B0.Fields.Item("AmtCr")) / 2))))
  loc_18E5F43:       var_4BC = (CVar(var_B0.Fields.Item("AmtCr")) + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_18E5F4A:       var_574 = (Format(var_B4.Fields.Item("Adult").Value, "0.00") + Space(CLng((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))) / 2))))
  loc_18E5F51:       var_62C = (Format(MemVar_1F920EC, "dd/mm/yy") + Space(CLng((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value))) / 2))) / 2))))
  loc_18E5F58:       var_684 = (Format(MemVar_1F920EC, "dd/mm/yy") + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_18E5F5F:       var_73C = (Trim(Format(MemVar_1F920EC, "dd/mm/yy")) + Space(CLng((var_6FC / 2))))
  loc_18E5F66:       var_814 = (Len(Trim("****")) + Space(CLng((var_7D4 / 2))))
  loc_18E5F6D:       var_87C = (Len(Trim("****")) + Trim(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_18E5F74:       var_954 = (var_87C + Space(CLng((var_914 / 2))))
  loc_18E5F7A:       Print 1, var_954
  loc_18E6058:       Print 1, vbNullString
  loc_18E60A5:       Print 1, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add2"))), &H23)
  loc_18E60C1:       Print 1, vbNullString
  loc_18E610A:       var_140 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CityName"))) & "-", &H23)
  loc_18E6138:       Proc_6_39_E7C810(var_160, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18E6154:       var_1B4 = (10 - Len(Trim(CVar(CStr(var_160)))))
  loc_18E6191:       Proc_6_39_E7C810(var_22C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18E61C1:       Proc_6_39_E7C810(var_27C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_18E61DD:       var_2E4 = (10 - Len(Trim(CVar(CStr(var_27C)))))
  loc_18E6210:       var_424 = 12
  loc_18E624B:       var_3AC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_18E62BE:       var_588 = 12
  loc_18E62F9:       var_4E4 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_18E632C:       var_698 = 12
  loc_18E6367:       var_5AC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_18E63DA:       var_828 = 12
  loc_18E6415:       var_6CC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_18E6463:       var_774 = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_18E64E8:       var_85C = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_18E650F:       var_1F4 = (CVar(vbNullString & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))) + Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2))))
  loc_18E651B:       var_24C = (Space(3) + CVar(CStr(var_22C)))
  loc_18E6522:       var_32C = (Trim(CVar(CStr(var_22C))) + Space(CLng((var_B4.Fields.Item("FolioNo").Value / 2))))
  loc_18E6529:       var_3F4 = (var_B4.Fields.Item("FolioNo").Value + Space(CLng((Space(CLng((Format(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), "0.00") / 2))) / 2))))
  loc_18E6530:       var_454 = (CVar(CStr(var_B4.Fields.Item("Adult").Value)) + Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))
  loc_18E6537:       var_514 = ((CVar(var_B0.Fields.Item("AmtCr")) / 2) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_18E653E:       var_5EC = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Space(CLng((CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)) / 2))))
  loc_18E6545:       var_654 = (Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value))) / 2))) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_18E654C:       var_71C = (CVar(var_B4.Fields.Item("RoomCategory")) + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value))) / 2))))
  loc_18E6553:       var_7A4 = ((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value))) / 2))) / 2) + Space(CLng((CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))) / 2))))
  loc_18E655A:       var_804 = (Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))) + Trim(CVar(CStr(var_E4.Fields.Item("Bill_no").Value))))
  loc_18E6561:       var_8A4 = (Space(CLng((CVar(CStr(var_E4.Fields.Item("Bill_no").Value)) / 2))) + Space(CLng((Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9) / 2))))
  loc_18E6567:       Print 1, CVar(var_B4.Fields.Item("CountryName"))
  loc_18E6623:       Print 1, " "
  loc_18E662E:       Print 1, " "
  loc_18E6639:       Print 1, " "
  loc_18E6641:       var_86 = &H17
  loc_18E6644:     End If
  loc_18E6647:     var_B0.MoveNext
  loc_18E664C:     GoTo loc_18E5037
  loc_18E664F:     ' Referenced from: 18E666C
  loc_18E664F:   End If
  loc_18E6655:   If (var_86 <= &H32) Then
  loc_18E665D:     Print 1, vbNullString
  loc_18E6669:     var_86 = (var_86 + 1)
  loc_18E666C:     GoTo loc_18E664F
  loc_18E666F:   End If
  loc_18E66AF:   var_958 = Proc_6_45_EAD428(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise", var_86, var_86, 1, var_828, 1), &H35, 1, 1, var_698)
  loc_18E6702:   var_160 = (Space(8) + CVar(var_958))
  loc_18E6709:   var_180 = (var_160 + Space(6))
  loc_18E6713:   var_1D4 = (Trim(CVar(CStr(var_160))) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HC, 1, 1, 1)))
  loc_18E6719:   Print 1, Space(CLng((CVar(var_B4.Fields.Item("RoomNo")) / 2)))
  loc_18E674B:   var_86 = (var_86 + 1)
  loc_18E67C7:   var_190 = CVar(Proc_6_45_EAD428(CStr(Mid(CVar(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise", var_588)), &H36, var_160)), &H35, 1)) 'String
  loc_18E67F4:   var_1C4 = (Space(8) + IIf((Len(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise", var_86)) <= &H35), " ", var_190))
  loc_18E67FA:   Print 1, CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HC, 1, 1, 1))
  loc_18E682E:   var_86 = (var_86 + 1)
  loc_18E6881:   var_180 = (Space(&H43) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HC, 1, 1)))
  loc_18E6887:   Print 1, " "
  loc_18E68A7:   var_86 = (var_86 + 1)
  loc_18E68AC:   var_86 = 0
  loc_18E68BA:   Print 1, vbNullString
  loc_18E6900:   var_150 = (Space(7) + "Cash")
  loc_18E6909:   var_160 = ("0.00" + "              ")
  loc_18E6913:   var_190 = (Format(CDbl(0), "0.00") + CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CompanyName")), CDbl(0), var_86, var_86)))
  loc_18E6919:   Print 1, var_190
  loc_18E6975:   var_150 = (Space(7) + CVar(MemVar_1F920C8))
  loc_18E697E:   var_160 = ("0.00" + "              ")
  loc_18E6988:   var_190 = (Format(CDbl(0), "0.00") + CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ContactPerson")), var_86)))
  loc_18E698E:   Print 1, var_190
  loc_18E69AE:   Print 1, " "
  loc_18E69B9:   Print 1, " "
  loc_18E69C4:   Print 1, " "
  loc_18E69CF:   Print 1, " "
  loc_18E69DA:   Print 1, " "
  loc_18E6A07:   Print 1, Proc_6_98_11AC4E4("PROVISIONAL GUEST BILL", "B", &H4E)
  loc_18E6A2A:   Print 1, Chr(&HC)
  loc_18E6A36:   var_E4.MoveNext
  loc_18E6A3B:   GoTo loc_18E4382
  loc_18E6A3E: End If
  loc_18E6A40: Close 1
  loc_18E6A49: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_18E6A85: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value
  loc_18E6A9B: Close 1
  loc_18E6AA5: If (MemVar_1F923B8 = "Y") Then
  loc_18E6AC1:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_18E6ACB: Else
  loc_18E6AE4:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_18E6AEB: End If
  loc_18E6AF0: Set var_B4 = Nothing
  loc_18E6AF8: Set var_E4 = Nothing
  loc_18E6B00: Set var_F0 = Nothing
  loc_18E6B03: Exit Sub
  loc_18E6B04: ' Referenced from: 18E4308
  loc_18E6B0A: If (var_E8 = &HFF) Then
  loc_18E6B13:   unk_529B4C.RollbackTrans
  loc_18E6B18: End If
  loc_18E6B18: Proc_6_60_E62BC4(1)
  loc_18E6B1D: Exit Sub
End Sub

Public Sub Proc_64_51_1A42238
  'Data Table: 529B38
  Dim var_110 As String
  Dim var_114 As String
  Dim unk_529B4C As Connection15
  Dim var_12C As Variant
  Dim var_E4 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_88 As Variant
  Dim var_15C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  Dim var_21C As Variant
  Dim var_F0 As Recordset15
  Dim var_128 As Fields15
  Dim var_124 As Variant
  Dim var_86 As Variant
  Dim var_17C As Variant
  Dim var_1CC As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_268 As Variant
  Dim var_288 As Variant
  Dim var_298 As Variant
  Dim var_2B8 As Variant
  Dim var_2C8 As Variant
  Dim var_2E8 As Variant
  Dim var_134 As Fields15
  Dim var_324 As Variant
  Dim var_364 As Variant
  Dim var_40C As Variant
  Dim var_3FC As Variant
  Dim var_41C As Variant
  Dim var_43C As Variant
  Dim var_51C As Variant
  Dim var_53C As Variant
  Dim var_5B4 As Variant
  Dim var_5D4 As Variant
  Dim var_6E4 As Variant
  Dim var_77C As Variant
  Dim var_7BC As Variant
  Dim var_7DC As Variant
  Dim var_824 As Variant
  Dim var_834 As Variant
  Dim var_89C As Variant
  Dim var_8FC As Variant
  Dim var_3A4 As Variant
  Dim var_45C As Variant
  Dim var_4A4 As Variant
  Dim var_55C As Variant
  Dim var_614 As Variant
  Dim var_66C As Variant
  Dim var_724 As Variant
  Dim var_7FC As Variant
  Dim var_93C As Variant
  Dim var_3CC As Variant
  Dim var_4EC As Variant
  Dim var_54C As Variant
  Dim var_78C As Variant
  Dim var_7EC As Variant
  Dim var_8AC As Variant
  Dim var_220 As String
  Dim var_248 As Variant
  Dim var_334 As Variant
  Dim var_604 As Variant
  Dim var_65C As Variant
  Dim var_8CC As Variant
  Dim var_2A8 As Variant
  Dim var_B0 As Recordset15
  Dim var_CC As Double
  Dim var_D4 As Double
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_DC As Double
  Dim var_228 As String
  Dim var_940 As String
  Dim var_944 As String
  Dim Me As Recordset15
  loc_1A3EC80: On Error Goto loc_1A4221C
  loc_1A3EC8A: Close 1
  loc_1A3EC93: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1A3ECAB: var_110 = "Select * from Enviro where LOGSite_Code='" & MemVar_1F92078
  loc_1A3ECBB: unk_529B4C.Execute var_110 & "'", var_124, -1
  loc_1A3ECC6: Set var_F0 = var_128
  loc_1A3ECFA: Call 0.Method_Proc_64_51_1A422380 (CInt(&HA), var_12C, var_110, "Select Distinct Split,Bill_No from paycharge where (ContraDocId is NULL or contradocid='') and folionoDocId='", var_124)
  loc_1A3ED02: -1 = var_12C.Tag
  loc_1A3ED1B: unk_529B4C.Execute var_134 & var_110 & "'", Me.Txt, 0
  loc_1A3ED26: Set var_E4 = var_134
  loc_1A3ED3E: ' Referenced from: 1A42153
  loc_1A3ED4D: If Not(var_E4.EOF) Then
  loc_1A3ED6E:   Set var_128 = Me.Txt
  loc_1A3ED74:   Call 0.Method_Proc_64_51_1A422380 (CInt(&HA), var_12C, var_110, "SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory FROM ((GuestProf LEFT JOIN (GuestFolio LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) left joIn Subgroup S on GuestFolio.Company=s.Subcode Where GuestFolio.DocId='")
  loc_1A3ED7C:   var_124 = var_12C.Tag
  loc_1A3ED85:   var_114 = -1 & var_110
  loc_1A3ED95:   unk_529B4C.Execute var_134 & var_110 & "' order by  RoomOcc.Sno Desc", var_134, 
  loc_1A3EDA0:   Set var_B4 = var_134
  loc_1A3EDCC:   If (var_B4.RecordCount <= 0) Then
  loc_1A3EDCF:     Exit Sub
  loc_1A3EDD0:   End If
  loc_1A3EDD6:   If (var_86 = 0) Then
  loc_1A3EE07:     var_A4 = Replace(CStr(Space(&H50)), " ", "-", 1, -1, 0)
  loc_1A3EE16:     var_88 = (var_88 + 1)
  loc_1A3EE3A:     Print 1, Proc_6_98_11AC4E4(MemVar_1F92130, "A")
  loc_1A3EE8F:     var_15C = (Trim(MemVar_1F92134) + ", ")
  loc_1A3EE96:     var_18C = (var_15C + Trim(MemVar_1F92138))
  loc_1A3EE9F:     var_1AC = (var_18C + " ")
  loc_1A3EEA6:     var_1DC = (var_1AC + Trim(MemVar_1F9213C))
  loc_1A3EEAF:     var_1FC = (var_1DC + " ")
  loc_1A3EEB9:     var_21C = (var_1FC + CVar(MemVar_1F9215C))
  loc_1A3EED2:     Print 1, Proc_6_98_11AC4E4(CStr(var_21C), "B", &H4E)
  loc_1A3EF30:     Print 1, Proc_6_98_11AC4E4("Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144, "D", 138)
  loc_1A3EF96:     Print 1, Proc_6_98_11AC4E4(Proc_6_38_E68A98(CVar(var_F0.Fields.Item("Bill_Header")), &H4E), "D")
  loc_1A3EFD6:     Print 1, Proc_6_98_11AC4E4("PROVISIONAL GUEST BILL", "B", &H4E)
  loc_1A3EFEC:     Print 1, var_A4
  loc_1A3EFF4:     var_86 = &HC
  loc_1A3F071:     var_17C = (Chr(&HF) + CVar(Proc_6_45_EAD428("Guest Name :", &H3D, var_86)))
  loc_1A3F07A:     var_18C = (Trim(MemVar_1F92138) + "|")
  loc_1A3F081:     var_1CC = (var_18C + Space(2))
  loc_1A3F08A:     var_1DC = (Trim(MemVar_1F9213C) + "Room #")
  loc_1A3F091:     var_21C = (var_1DC + Space(&HA))
  loc_1A3F09A:     var_238 = (var_21C + "Reg #")
  loc_1A3F0A1:     var_258 = (var_238 + Space(&HA))
  loc_1A3F0AA:     var_268 = (var_258 + "Pax")
  loc_1A3F0B1:     var_288 = (var_268 + Space(&HB))
  loc_1A3F0BA:     var_298 = (var_288 + "Type")
  loc_1A3F0C1:     var_2B8 = (var_298 + Space(&HA))
  loc_1A3F0CA:     var_2C8 = (var_2B8 + "Nation")
  loc_1A3F0D1:     var_2E8 = (var_2C8 + Chr(&H12))
  loc_1A3F0D7:     Print 1, var_2E8
  loc_1A3F1E0:     var_288 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A3F261:     var_364 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A3F2BB:     var_41C = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A3F33C:     var_51C = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A3F396:     var_5D4 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A3F423:     var_6E4 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A3F494:     var_7BC = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_1A3F54E:     var_8FC = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_1A3F57C:     var_18C = (CVar("Mr " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Name")), 138), &H1F) & "|") + Space(1))
  loc_1A3F583:     var_1FC = (var_18C + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))))
  loc_1A3F58A:     var_238 = (Space(&HA) + Space(3))
  loc_1A3F591:     var_2B8 = (var_238 + Space(CLng((var_288 / 2))))
  loc_1A3F59D:     var_2E8 = (var_2B8 + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_1A3F5A4:     var_3A4 = (var_2E8 + Space(CLng((var_364 / 2))))
  loc_1A3F5AB:     var_45C = (var_3A4 + Space(CLng((var_41C / 2))))
  loc_1A3F5B7:     var_4A4 = (var_45C + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_1A3F5BE:     var_55C = (var_4A4 + Space(CLng((var_51C / 2))))
  loc_1A3F5C5:     var_614 = (var_55C + Space(CLng((var_5D4 / 2))))
  loc_1A3F5CC:     var_66C = (var_614 + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_1A3F5D3:     var_724 = (var_66C + Space(CLng((var_6E4 / 2))))
  loc_1A3F5DA:     var_7FC = (var_724 + Space(CLng((var_7BC / 2))))
  loc_1A3F5E1:     var_864 = (var_7FC + Trim(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_1A3F5E8:     var_93C = (var_864 + Space(CLng((var_8FC / 2))))
  loc_1A3F5EE:     Print 1, var_93C
  loc_1A3F735:     var_1AC = CVar(vbNullString & Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add1")))))), &H23) & "|") 'String
  loc_1A3F73B:     var_1CC = (var_1AC + Left(var_A4, &H2C))
  loc_1A3F741:     Print 1, CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))
  loc_1A3F7EC:     var_2A8 = Chr(&H12)
  loc_1A3F7FB:     var_17C = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add2"))), &H23) & "|") 'String
  loc_1A3F801:     var_18C = (var_17C + Chr(&HF))
  loc_1A3F808:     var_1CC = (Left(var_A4, &H2C) + Space(2))
  loc_1A3F811:     var_1DC = (CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")))) + "R.Rate")
  loc_1A3F818:     var_21C = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) + Space(&HE))
  loc_1A3F821:     var_238 = (Space(3) + "Arrival")
  loc_1A3F828:     var_258 = (var_238 + Space(&HD))
  loc_1A3F831:     var_268 = (CVar(CStr(var_B4.Fields.Item("FolioNo").Value)) + "Departure")
  loc_1A3F838:     var_288 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(&HA))
  loc_1A3F841:     var_298 = (var_288 + " Bill # ")
  loc_1A3F848:     var_2B8 = ((var_288 / 2) + var_2A8)
  loc_1A3F84E:     Print 1, var_2B8
  loc_1A3F8A0:     var_12C = var_B4.Fields.Item("CityName")
  loc_1A3F8CC:     var_940 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_12C)) & "-", &H23)
  loc_1A3F8E3:     var_134 = var_B4.Fields
  loc_1A3F8FA:     Proc_6_39_E7C810(var_17C, CVar(var_134.Item("RoomRate")))
  loc_1A3F916:     var_1DC = (6 - Len(Trim(CVar(CStr(var_17C)))))
  loc_1A3F953:     Proc_6_39_E7C810(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A3F983:     Proc_6_39_E7C810(var_2A8, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A3F99F:     var_2E8 = (10 - Len(Trim(CVar(CStr(var_2A8)))))
  loc_1A3F9D2:     var_40C = 12
  loc_1A3F9E6:     var_364 = "dd/mm/yy"
  loc_1A3FA0D:     var_3CC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), var_364))))
  loc_1A3FAA4:     var_4A4 = Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy")
  loc_1A3FABB:     var_4EC = (1 - Len(Trim(var_4A4)))
  loc_1A3FB29:     var_5B4 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A3FBD7:     var_6E4 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A3FC2D:     var_78C = (12 - Len(Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 9, 1, 12, 1, 1, 1)))))
  loc_1A3FCBF:     var_89C = (1 - Len(Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 9, 1)))))
  loc_1A3FCED:     var_248 = (CVar(vbNullString & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName"))) & "|") + Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))))
  loc_1A3FCF9:     var_288 = (Space(&HD) + CVar(CStr(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))))))
  loc_1A3FD00:     var_334 = (var_288 + Space(CLng((var_2E8 / 2))))
  loc_1A3FD07:     var_3FC = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_1A3FD0E:     var_45C = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))
  loc_1A3FD15:     var_53C = (var_45C + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))))
  loc_1A3FD1C:     var_604 = ((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))) / 2) + Space(CLng((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2))))
  loc_1A3FD23:     var_65C = (Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_1A3FD2A:     var_724 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))) + Space(CLng((var_6E4 / 2))))
  loc_1A3FD31:     var_7DC = (var_724 + Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))))
  loc_1A3FD38:     var_834 = ((Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) / 2) + Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 1, 12))))
  loc_1A3FD3F:     var_8CC = (CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))) + Space(CLng((CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))) / 2))))
  loc_1A3FD45:     Print 1, Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), &HA))))
  loc_1A3FE27:     Print 1, Proc_6_45_EAD428(" ", &H23) & "|"
  loc_1A3FE3D:     Print 1, var_A4
  loc_1A3FE4B:     var_110 = "Date"
  loc_1A3FE61:     var_124 = Space(1)
  loc_1A3FF04:     var_17C = (CVar(Proc_6_45_EAD428(var_110, &HB)) + var_124)
  loc_1A3FF0E:     var_1AC = (var_17C + CVar(Proc_6_45_EAD428("Bill/Vou#", 9)))
  loc_1A3FF15:     var_1DC = (Trim(CVar(CStr(var_17C))) + Space(1))
  loc_1A3FF1F:     var_21C = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) + CVar(Proc_6_45_EAD428("Description", &H18)))
  loc_1A3FF29:     var_248 = (Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + CVar(Proc_6_52_EAD4F4("Debit", &HA)))
  loc_1A3FF30:     var_268 = (Space(&HD) + Space(1))
  loc_1A3FF3A:     var_288 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + CVar(Proc_6_52_EAD4F4("Credit", &HA)))
  loc_1A3FF41:     var_2A8 = (var_288 + Space(1))
  loc_1A3FF4B:     var_2C8 = (var_2A8 + CVar(Proc_6_52_EAD4F4("Balance", &HB)))
  loc_1A3FF51:     Print 1, Trim(CVar(CStr(var_2A8)))
  loc_1A3FFA0:     Print 1, var_A4
  loc_1A3FFA8:     var_86 = &H17
  loc_1A3FFAB:   End If
  loc_1A3FFC9:   Set var_128 = Me.Txt
  loc_1A3FFCF:   Call 0.Method_Proc_64_51_1A422380 (CInt(&HA), var_12C, var_110, "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocId = GuestFolio.Docid) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocId='", var_124)
  loc_1A3FFD7:   -1 = var_12C.Tag
  loc_1A3FFF0:   unk_529B4C.Execute var_134 & var_110 & "' order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO", var_86, 1
  loc_1A3FFFB:   Set var_B0 = var_134
  loc_1A40013:   ' Referenced from: 1A41B38
  loc_1A40022:   If Not(var_B0.EOF) Then
  loc_1A4005F:     If (var_DC <> CDate(var_B0.Fields.Item("VDate").Value)) Then
  loc_1A40076:       If (var_B0.AbsolutePosition > 1) Then
  loc_1A40080:         var_CC = (var_BC - var_C4)
  loc_1A4008A:         var_D4 = (var_D4 + var_CC)
  loc_1A40115:         var_1FC = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1)))
  loc_1A4018C:         var_298 = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, 1)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_1A401E2:         var_17C = (Space(&H16) + CVar(Proc_6_45_EAD428("Day Total", &H18)))
  loc_1A401E9:         var_21C = (var_17C + var_1FC)
  loc_1A401F0:         var_248 = (Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + Space(1))
  loc_1A401F7:         var_2A8 = (Space(&HD) + var_298)
  loc_1A401FE:         var_2C8 = (var_2A8 + Space(1))
  loc_1A40208:         var_324 = (Trim(CVar(CStr(var_2A8))) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_1A4020E:         Print 1, Space(CLng((Format(var_D4, "0.00") / 2)))
  loc_1A4026C:         var_86 = (var_86 + 1)
  loc_1A40274:         Print 1, vbNullString
  loc_1A40280:         var_86 = (var_86 + 1)
  loc_1A40286:         var_BC = CDbl(0)
  loc_1A4028C:         var_C4 = CDbl(0)
  loc_1A4028F:       End If
  loc_1A4028F:     End If
  loc_1A402D4:     var_15C = Space(1)
  loc_1A40332:     Proc_6_39_E7C810(Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))), CVar(var_B0.Fields.Item("VNo")))
  loc_1A4035E:     var_268 = (CVar(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("vType")), var_86, 1)))) & "/") + Trim(CVar(CStr(Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2)))))))
  loc_1A403E7:     Proc_6_39_E7C810(Space(CLng((Format(var_D4, "0.00") / 2))), CVar(var_B0.Fields.Item("AmtDr")))
  loc_1A40428:     Proc_6_39_E7C810(var_364, CVar(var_B0.Fields.Item("AmtDr")))
  loc_1A40480:     var_3EC = IIf((Space(CLng((Format(var_D4, "0.00") / 2))) = 0), CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_364, "0.00")), &HA, 1)))
  loc_1A404B8:     Proc_6_39_E7C810(var_45C, CVar(var_B0.Fields.Item("AmtCr")), 1)
  loc_1A404F9:     Proc_6_39_E7C810(var_4A4, CVar(var_B0.Fields.Item("AmtCr")))
  loc_1A40550:     var_53C = IIf((var_45C = 0), CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_4A4, "0.00")), &HA, 1)))
  loc_1A4055E:     var_18C = (CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_15C)
  loc_1A40568:     var_288 = ("0.00" + CVar(Proc_6_45_EAD428(CStr(Format(var_C4, "0.00")), 9)))
  loc_1A4056F:     var_2A8 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(1))
  loc_1A40579:     var_2E8 = (var_2A8 + CVar(Proc_6_45_EAD428(CStr(Left(CVar(var_B0.Fields.Item("Comments")), &H18)), &H18)))
  loc_1A40580:     var_3FC = (Format(var_D4, "0.00") + var_3EC)
  loc_1A40587:     var_43C = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Space(1))
  loc_1A4058E:     var_54C = ("dd/mm/yy" + var_53C)
  loc_1A40594:     Print 1, CVar(var_B4.Fields.Item("DepDate"))
  loc_1A40635:     var_86 = (var_86 + 1)
  loc_1A40665:     Proc_6_39_E7C810(var_15C, CVar(var_B0.Fields.Item("AmtDr")), CVar(var_BC), var_86)
  loc_1A4066D:     var_17C = (1 + var_15C)
  loc_1A40672:     var_BC = CSng(CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_1A406AE:     Proc_6_39_E7C810(var_15C, CVar(var_B0.Fields.Item("AmtCr")), CVar(var_C4))
  loc_1A406B6:     var_17C = (var_BC + var_15C)
  loc_1A406BB:     var_C4 = CSng(CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_1A40720:     If (var_B0.AbsolutePosition = var_B0.RecordCount) Then
  loc_1A4072A:       var_CC = (var_BC - var_C4)
  loc_1A40734:       var_D4 = (var_D4 + var_CC)
  loc_1A4073C:       Print 1, vbNullString
  loc_1A40748:       var_86 = (var_86 + 1)
  loc_1A407D3:       var_1FC = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, CDate(var_B0.Fields.Item("VDate").Value))), CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1, 1)))
  loc_1A4084A:       var_298 = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, var_C4)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_1A408A0:       var_17C = (Space(&H16) + CVar(Proc_6_45_EAD428("Day Total", &H18, var_86, var_D4, var_CC)))
  loc_1A408A7:       var_21C = (CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_1FC)
  loc_1A408AE:       var_248 = (Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + Space(1))
  loc_1A408B5:       var_2A8 = (Trim(CVar(CStr(Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2)))))) + var_298)
  loc_1A408BC:       var_2C8 = (var_2A8 + Space(1))
  loc_1A408C6:       var_324 = (Left(CVar(var_B0.Fields.Item("Comments")), &H18) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_1A408CC:       Print 1, Space(CLng((Format(var_D4, "0.00") / 2)))
  loc_1A4092A:       var_86 = (var_86 + 1)
  loc_1A40930:       var_BC = CDbl(0)
  loc_1A40936:       var_C4 = CDbl(0)
  loc_1A40939:     End If
  loc_1A4093F:     If (var_86 >= &H30) Then
  loc_1A40947:       Print 1, " "
  loc_1A4096B:       var_18C = CVar((Val(CStr(var_88)) + CDbl(1))) 'Double
  loc_1A4097F:       var_15C = (" " + Space(&H37))
  loc_1A40988:       var_17C = (CVar(Proc_6_45_EAD428("Day Total", &H18, var_86, var_D4, var_CC)) + "Continued Page No ")
  loc_1A40995:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) & Str("0.00")
  loc_1A409B3:       var_86 = (var_86 + 1)
  loc_1A409C8:       Print 1, Chr(&HC)
  loc_1A409D3:       var_86 = 0
  loc_1A409D6:     End If
  loc_1A409DC:     If (var_86 = 0) Then
  loc_1A409E5:       var_88 = (var_88 + 1)
  loc_1A409EE:       var_88 = (var_88 + 1)
  loc_1A40A12:       Print 1, Proc_6_98_11AC4E4(MemVar_1F92130, "A", &H4E, var_88, var_88, var_86, var_86)
  loc_1A40A67:       var_15C = (Trim(MemVar_1F92134) + ", ")
  loc_1A40A6E:       var_18C = (CVar(Proc_6_45_EAD428("Day Total", &H18, var_86, var_D4, var_CC)) + Trim(MemVar_1F92138))
  loc_1A40A77:       var_1AC = ("0.00" + " ")
  loc_1A40A7E:       var_1DC = (Str("0.00") + Trim(MemVar_1F9213C))
  loc_1A40A87:       var_1FC = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1, 1)) + " ")
  loc_1A40A91:       var_21C = (var_1FC + CVar(MemVar_1F9215C))
  loc_1A40A9F:       var_220 = Proc_6_98_11AC4E4(CStr(Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2)))), "B", &H4E, var_C4, var_BC)
  loc_1A40AAA:       Print 1, var_220
  loc_1A40B07:       Print 1, Proc_6_98_11AC4E4("Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144, "D", &H7D, var_86)
  loc_1A40B6C:       Print 1, Proc_6_98_11AC4E4(Proc_6_38_E68A98(CVar(var_F0.Fields.Item("Bill_Header")), 1), "D", &H7D)
  loc_1A40B8A:       Print 1, var_A4
  loc_1A40B92:       var_86 = &HC
  loc_1A40C0F:       var_17C = (Chr(&HF) + CVar(Proc_6_45_EAD428("Guest Name :", &H3C, var_86)))
  loc_1A40C18:       var_18C = (Trim(MemVar_1F92138) + "|")
  loc_1A40C1F:       var_1CC = ("0.00" + Space(2))
  loc_1A40C28:       var_1DC = (Trim(MemVar_1F9213C) + "Room #")
  loc_1A40C2F:       var_21C = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1, 1)) + Space(&HA))
  loc_1A40C38:       var_238 = (Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + "Reg #")
  loc_1A40C3F:       var_258 = (Space(1) + Space(&HA))
  loc_1A40C48:       var_268 = ("0.00" + "Pax")
  loc_1A40C4F:       var_288 = (Format(var_C4, "0.00") + Space(&HB))
  loc_1A40C58:       var_298 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) + "Type")
  loc_1A40C5F:       var_2B8 = (var_298 + Space(&HA))
  loc_1A40C68:       var_2C8 = (Space(1) + "Nation")
  loc_1A40C6F:       var_2E8 = (Left(CVar(var_B0.Fields.Item("Comments")), &H18) + Chr(&H12))
  loc_1A40C75:       Print 1, Format(var_D4, "0.00")
  loc_1A40D7E:       var_288 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A40DFF:       var_364 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A40E59:       var_41C = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A40EDA:       var_51C = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A40F34:       var_5D4 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A40FC1:       var_6E4 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A41032:       var_7BC = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_1A41044:       var_7EC = Space(CLng((Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) / 2)))
  loc_1A410EC:       var_8FC = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_1A4111A:       var_18C = (CVar("Mr " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Name")), var_D4), &H1F) & "|") + Space(1))
  loc_1A41121:       var_1FC = ("0.00" + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))))
  loc_1A41128:       var_238 = (Space(&HA) + Space(3))
  loc_1A4112F:       var_2B8 = (Space(1) + Space(CLng((CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) / 2))))
  loc_1A4113B:       var_2E8 = (Space(1) + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_1A41142:       var_3A4 = (Format(var_D4, "0.00") + Space(CLng((var_364 / 2))))
  loc_1A41149:       var_45C = ((Space(CLng((Format(var_D4, "0.00") / 2))) = 0) + Space(CLng((Space(1) / 2))))
  loc_1A41155:       var_4A4 = (var_45C + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_1A4115C:       var_55C = (var_4A4 + Space(CLng((CVar(Proc_6_52_EAD4F4(CStr(Format(var_4A4, "0.00")), &HA, 1)) / 2))))
  loc_1A41163:       var_614 = ("dd/mm/yy" + Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))))
  loc_1A4116A:       var_66C = (CVar(var_B4.Fields.Item("DepDate")) + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_1A41171:       var_724 = (CVar(var_B4.Fields.Item("DepDate")) + Space(CLng((var_6E4 / 2))))
  loc_1A41178:       var_7FC = (var_724 + var_7EC)
  loc_1A4117F:       var_864 = (CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 1, 12)) + Trim(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_1A41186:       var_93C = (Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 9, 1))) + Space(CLng((var_8FC / 2))))
  loc_1A4118C:       Print 1, var_93C
  loc_1A412D3:       var_1AC = CVar(vbNullString & Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add1")))))), &H23) & "|") 'String
  loc_1A412D9:       var_1CC = (var_1AC + Left(var_A4, &H2C))
  loc_1A412DF:       Print 1, CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))
  loc_1A4138A:       var_2A8 = Chr(&H12)
  loc_1A41399:       var_17C = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add2"))), &H23) & "|") 'String
  loc_1A4139F:       var_18C = (var_17C + Chr(&HF))
  loc_1A413A6:       var_1CC = (Left(var_A4, &H2C) + Space(2))
  loc_1A413AF:       var_1DC = (CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")))) + "R.Rate")
  loc_1A413B6:       var_21C = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) + Space(&HE))
  loc_1A413BF:       var_238 = (Space(3) + "Arrival")
  loc_1A413C6:       var_258 = (Space(1) + Space(&HD))
  loc_1A413CF:       var_268 = (CVar(CStr(var_B4.Fields.Item("FolioNo").Value)) + "Departure")
  loc_1A413D6:       var_288 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(&HA))
  loc_1A413DF:       var_298 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) + " Bill # ")
  loc_1A413E6:       var_2B8 = ((CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) / 2) + var_2A8)
  loc_1A413EC:       Print 1, Space(1)
  loc_1A4146A:       var_228 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CityName"))) & "-", &H23)
  loc_1A41498:       Proc_6_39_E7C810(var_17C, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A414B4:       var_1DC = (6 - Len(Trim(CVar(CStr(var_17C)))))
  loc_1A414F1:       Proc_6_39_E7C810(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A41521:       Proc_6_39_E7C810(var_2A8, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A4153D:       var_2E8 = (10 - Len(Trim(CVar(CStr(var_2A8)))))
  loc_1A41570:       var_40C = 12
  loc_1A415AB:       var_3CC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_1A41659:       var_4EC = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_1A416C7:       var_5B4 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A41775:       var_6E4 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A417C3:       var_77C = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_1A41848:       var_864 = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_1A41876:       var_248 = (CVar(vbNullString & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName"))) & "|") + Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))))
  loc_1A41882:       var_288 = (Space(&HD) + CVar(CStr(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))))))
  loc_1A41889:       var_334 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(CLng((Format(var_D4, "0.00") / 2))))
  loc_1A41890:       var_3FC = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_1A41897:       var_45C = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))
  loc_1A4189E:       var_53C = (var_45C + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))))
  loc_1A418A5:       var_604 = ((CVar(Proc_6_52_EAD4F4(CStr(Format(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"), "0.00")), &HA, 1)) / 2) + Space(CLng((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2))))
  loc_1A418AC:       var_65C = (Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_1A418B3:       var_724 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))) + Space(CLng((var_6E4 / 2))))
  loc_1A418BA:       var_7BC = (var_724 + Space(CLng((CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9))) / 2))))
  loc_1A418C1:       var_824 = (Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) + Trim(CVar(CStr(var_E4.Fields.Item("Bill_no").Value))))
  loc_1A418C8:       var_8AC = (CVar(var_B4.Fields.Item("CountryName")) + Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 9, 1))) / 2))))
  loc_1A418CE:       Print 1, Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), &HA)
  loc_1A419AC:       Print 1, Proc_6_45_EAD428(" ", &H23, 1, 12, 1, 1, 1) & "|"
  loc_1A419C2:       Print 1, var_A4
  loc_1A41A89:       var_17C = (CVar(Proc_6_45_EAD428("Date", &HB, 12, 1)) + Space(1))
  loc_1A41A93:       var_1AC = (var_17C + CVar(Proc_6_45_EAD428("Bill/Vou#", 9, 12)))
  loc_1A41A9A:       var_1DC = (Trim(CVar(CStr(var_17C))) + Space(1))
  loc_1A41AA4:       var_21C = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) + CVar(Proc_6_45_EAD428("Description", &H18, 1)))
  loc_1A41AAE:       var_248 = (Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + CVar(Proc_6_52_EAD4F4("Debit", &HA)))
  loc_1A41AB5:       var_268 = (Space(&HD) + Space(1))
  loc_1A41ABF:       var_288 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + CVar(Proc_6_52_EAD4F4("Credit", &HA)))
  loc_1A41AC6:       var_2A8 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(1))
  loc_1A41AD0:       var_2C8 = (var_2A8 + CVar(Proc_6_52_EAD4F4("Balance", &HB)))
  loc_1A41AD6:       Print 1, Trim(CVar(CStr(var_2A8)))
  loc_1A41B25:       Print 1, var_A4
  loc_1A41B2D:       var_86 = &H17
  loc_1A41B30:     End If
  loc_1A41B33:     var_B0.MoveNext
  loc_1A41B38:     GoTo loc_1A40013
  loc_1A41B3B:     ' Referenced from: 1A41B58
  loc_1A41B3B:   End If
  loc_1A41B41:   If (var_86 <= &H32) Then
  loc_1A41B49:     Print 1, vbNullString
  loc_1A41B55:     var_86 = (var_86 + 1)
  loc_1A41B58:     GoTo loc_1A41B3B
  loc_1A41B5B:   End If
  loc_1A41B60:   Print 1, var_A4
  loc_1A41B6C:   var_86 = (var_86 + 1)
  loc_1A41BAF:   var_17C = IIf((var_D4 < CDbl(0)), CVar(Proc_6_45_EAD428("Refund: ", 8, var_86, var_86)), CVar(Proc_6_45_EAD428("Charge: ", 8, var_86)))
  loc_1A41C43:   var_1AC = (var_17C + CVar(Proc_6_45_EAD428(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise"), &H35)))
  loc_1A41C4D:   var_1DC = (Trim(CVar(CStr(var_17C))) + CVar(Proc_6_45_EAD428("TOTAL:", 6)))
  loc_1A41C57:   var_248 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A41C5D:   Print 1, Space(&HD)
  loc_1A41C9F:   var_86 = (var_86 + 1)
  loc_1A41D1B:   var_1CC = CVar(Proc_6_45_EAD428(CStr(Mid(CVar(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise")), &H36, var_17C)), &H35, 1)) 'String
  loc_1A41D48:   var_1FC = (Space(8) + IIf((Len(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise", var_86)) <= &H35), " ", var_1CC))
  loc_1A41D4E:   Print 1, "0.00"
  loc_1A41D82:   var_86 = (var_86 + 1)
  loc_1A41DEB:   var_17C = (Space(&H3D) + CVar(Proc_6_45_EAD428("NET  :", 6, var_86)))
  loc_1A41DF5:   var_1DC = (var_17C + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A41DFB:   Print 1, IIf((Len(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise", var_86)) <= &H35), " ", CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A41E23:   var_86 = (var_86 + 1)
  loc_1A41E3B:   var_15C = (Space(&H3D) + "===================")
  loc_1A41E41:   Print 1, CVar(Proc_6_45_EAD428("NET  :", 6, var_86))
  loc_1A41E54:   var_86 = (var_86 + 1)
  loc_1A41E59:   var_86 = 0
  loc_1A41ED7:   var_944 = Proc_6_45_EAD428("Payment ", 8, CDbl(0), var_86, var_86) & Proc_6_45_EAD428("Cash", &HC, var_86) & "Company: " & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CompanyName")), 1)
  loc_1A41EDC:   Print 1, var_944
  loc_1A41F70:   var_940 = Proc_6_45_EAD428("USER", 8) & Proc_6_45_EAD428(MemVar_1F920C8, &HC) & "Contact: " & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ContactPerson")), 1)
  loc_1A41F75:   Print 1, var_940
  loc_1A41F9D:   Print 1, var_A4
  loc_1A41FA9:   var_86 = (var_86 + 1)
  loc_1A41FE5:   var_17C = (Chr(&HF) + CVar(Proc_6_52_EAD4F4("Regardless of charge instructions I agree to be held", &H7B)))
  loc_1A41FEC:   var_1AC = (var_17C + Chr(&H12))
  loc_1A41FF2:   Print 1, Format(CDbl(0), "0.00")
  loc_1A42046:   var_17C = (Chr(&HF) + CVar(Proc_6_52_EAD4F4("personally liable for payment of the total amount of this bill.", 134)))
  loc_1A4204D:   var_1AC = (var_17C + Chr(&H12))
  loc_1A42053:   Print 1, Format(CDbl(0), "0.00")
  loc_1A4206F:   Print 1
  loc_1A42077:   Print 1
  loc_1A420B7:   var_17C = (Chr(&HF) + Space(&HA))
  loc_1A420C0:   var_18C = (var_17C + "Cashier")
  loc_1A420C7:   var_1CC = (Chr(&H12) + Space(&H60))
  loc_1A420D0:   var_1DC = (CVar(Proc_6_52_EAD4F4(CStr(Format(CDbl(0), "0.00")), &HC, 1)) + "Guest Signature")
  loc_1A420D7:   var_21C = (IIf((Len(Proc_6_43_10041F4(Abs(CDbl(0)), vbNullString, " & Paise", var_86)) <= &H35), " ", CVar(Proc_6_52_EAD4F4(CStr(Format(CDbl(0), "0.00")), &HC, 1))) + Chr(&H12))
  loc_1A420DD:   Print 1, Format(CDbl(0), "0.00")
  loc_1A4211F:   Print 1, Proc_6_98_11AC4E4("**THANKS FOR YOUR VISIT**", "A", &H4E)
  loc_1A42142:   Print 1, Chr(&HC)
  loc_1A4214E:   var_E4.MoveNext
  loc_1A42153:   GoTo loc_1A3ED3E
  loc_1A42156: End If
  loc_1A42158: Close 1
  loc_1A42161: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1A4219D: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value
  loc_1A421B3: Close 1
  loc_1A421BA: Set var_B4 = Nothing
  loc_1A421C2: Set var_E4 = Nothing
  loc_1A421CA: Set var_F0 = Nothing
  loc_1A421D5: If (MemVar_1F923B8 = "Y") Then
  loc_1A421F1:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1A421FB: Else
  loc_1A42214:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1A4221B: End If
  loc_1A4221B: Exit Sub
  loc_1A4221C: ' Referenced from: 1A3EC80
  loc_1A42222: If (var_E8 = &HFF) Then
  loc_1A4222B:   unk_529B4C.RollbackTrans
  loc_1A42230: End If
  loc_1A42230: Proc_6_60_E62BC4(var_86)
  loc_1A42235: Exit Sub
End Sub

Public Sub Proc_64_52_E79D54(arg_C) 'E79D54
  'Data Table: 529B38
  Dim var_98 As TextBox
  loc_E79D02: Set var_8C = Me.Txt
  loc_E79D08: Call 0.Method_Proc_64_52_E79D54C (var_8E, var_86)
  loc_E79D18: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79D2E:   Set var_8C = Me.Txt
  loc_E79D34:   Call 0.Method_Proc_64_52_E79D540 (CInt(var_86), var_98)
  loc_E79D3C:   var_98.Enabled = arg_C
  loc_E79D4B: Next var_92 'Byte
  loc_E79D51: Exit Sub
End Sub

Public Sub Proc_64_53_F10C84
  'Data Table: 529B38
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As Image
  loc_F10B9A: Set var_8C = Me.Txt
  loc_F10BA0: Call 0.Method_Proc_64_53_F10C84C (var_8E, var_86)
  loc_F10BB0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F10BC6:   Set var_8C = Me.Txt
  loc_F10BCC:   Call 0.Method_Proc_64_53_F10C840 (CInt(var_86), var_98)
  loc_F10BD4:   var_98.Text = vbNullString
  loc_F10BF0:   Set var_8C = Me.Txt
  loc_F10BF6:   Call 0.Method_Proc_64_53_F10C840 (CInt(var_86), var_98)
  loc_F10BFE:   var_98.Tag = vbNullString
  loc_F10C0D: Next var_92 'Byte
  loc_F10C13: Call Proc_64_57_13A0770()
  loc_F10C36: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_F10C4B: Me.GuestImage.Picture = var_8C
  loc_F10C64: Me.GuestImage.Tag = vbNullString
  loc_F10C72: Set var_8C = Me.GuestImage
  loc_F10C78: var_8C.Visible = True
  loc_F10C80: Exit Sub
  loc_F10C81: End Sub
End Sub

Public Sub Proc_64_54_EBBC74
  'Data Table: 529B38
  loc_EBBBEC: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EBBBFE:   Me.DGRoomNo.Visible = False
  loc_EBBC06: End If
  loc_EBBC22: If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_EBBC34:   Me.DGRoomType.Visible = False
  loc_EBBC3C: End If
  loc_EBBC58: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBBC6A:   Me.FGPoint.Visible = False
  loc_EBBC72: End If
  loc_EBBC72: Exit Sub
End Sub

Public Sub Proc_64_55_E7CE20
  'Data Table: 529B38
  Dim var_8C As TextBox
  loc_E7CDDA: Set var_88 = Me.Txt
  loc_E7CDE0: Call 0.Method_Proc_64_55_E7CE200 (CInt(&HA), var_8C)
  loc_E7CE14: If CBool(Trim(CVar(var_8C.Tag)) <> vbNullString) Then
  loc_E7CE17:   Call Proc_64_51_1A42238()
  loc_E7CE1C: End If
  loc_E7CE1C: Exit Sub
End Sub

Public Sub Proc_64_56_14DF6F4
  'Data Table: 529B38
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_AC As Variant
  Dim var_F4 As String
  Dim var_104 As String
  Dim var_FC As Variant
  Dim unk_529B4C As Connection15
  Dim var_F0 As String
  Dim var_A4 As Recordset15
  Dim var_A8 As Variant
  Dim var_F8 As Variant
  Dim var_CC As Variant
  Dim var_9E As Integer
  Dim var_8C As Recordset15
  Dim var_140 As Variant
  Dim var_EC As Variant
  Dim var_150 As Variant
  Dim var_130 As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_15C As MSHFlexGrid
  Dim var_110 As Fields15
  Dim var_17C As Variant
  Dim var_1D0 As Variant
  Dim var_1F4 As Variant
  Dim var_1B0 As Variant
  loc_14DE950: On Error Goto loc_14DF68E
  loc_14DE95E: Set var_A8 = Me.Txt
  loc_14DE964: Call 0.Method_Proc_64_56_14DF6F40 (CInt(&HA))
  loc_14DE98D: If (Trim(CVar(var_AC)) = vbNullString) Then
  loc_14DE990:   Exit Sub
  loc_14DE991: End If
  loc_14DE9B5: Call 0.Method_Proc_64_56_14DF6F40 (CInt(&HA), var_AC, var_F0, "Select P.*,IsNull(P1.Nature,'') Nature,IsNull(P1.SplitSeqNo,0) SplitSeqNo from PayCharge P Left Join (Select P.DocId,Max(R.Nature) Nature,Max(R.SplitSeqNo) SplitSeqNo from Paycharge P Inner Join RevMast R On P.PayCode=R.Code where folionoDocid='")
  loc_14DE9C6: var_F4 = -1 & var_F0
  loc_14DE9CD: var_104 = var_F4 & "' Group By P.DocId)P1 On P.DocId=P1.DocId where IsNull(P.ContraDocId,'')='' and P.FolionoDocid='"
  loc_14DE9DE: Set var_F8 = Me.Txt
  loc_14DE9E4: Call 0.Method_Proc_64_56_14DF6F40 (CInt(&HA), var_FC, var_100)
  loc_14DE9EC: var_104 = var_FC.Tag
  loc_14DEA05: unk_529B4C.Execute var_110 & var_100 & "' order by vDate,VNO,SNO", var_AC, 
  loc_14DEA10: Set var_8C = var_110
  loc_14DEA56: unk_529B4C.Execute "Select * from Enviro where LogSite_Code='" & MemVar_1F92078 & "'", var_AC.Tag, -1
  loc_14DEA61: Set var_A4 = Me.Txt
  loc_14DEA7A: If (global_130 = 0) Then
  loc_14DEA8C:   var_A8 = var_A4.Fields
  loc_14DEACC:   var_CC = CVar(var_A4.Fields.Item("AutoSplitYN")) 'Address
  loc_14DEAF3:   If (var_A8 And (Proc_6_38_E68A98(var_CC, (Proc_6_38_E68A98(CVar(var_A8.Item("SplitYN"))) = "Yes")) = "N")) Then
  loc_14DEB25:     If (MsgBox("Do You Want To Split Bill ?", &H24, var_CC, var_EC, var_150) = 6) Then
  loc_14DEB2A:       var_9E = &HFF
  loc_14DEB30:     Else
  loc_14DEB32:       var_9E = 0
  loc_14DEB35:     End If
  loc_14DEB38:   Else
  loc_14DEB90:     var_F4 = Proc_6_38_E68A98(CVar(var_A4.Fields.Item("AutoSplitYN")), (Proc_6_38_E68A98(CVar(var_A4.Fields.Item("SplitYN")), var_9E) = "Yes"))
  loc_14DEBAE:     If (var_9E And (var_F4 = "Y")) Then
  loc_14DEBB3:       var_9E = &HFF
  loc_14DEBB9:     Else
  loc_14DEBF2:       If (Proc_6_38_E68A98(CVar(var_A4.Fields.Item("SplitYN"))) = "No") Then
  loc_14DEBF5:         GoTo loc_14DEBFD
  loc_14DEBF8:       End If
  loc_14DEBFA:       var_9E = &HFF
  loc_14DEBFD:       ' Referenced from:     14DEBF5
  loc_14DEBFD:     End If
  loc_14DEBFD:   End If
  loc_14DEBFD: End If
  loc_14DEC06: var_154 = var_8C.RecordCount
  loc_14DEC14: var_DC = CVar((var_154 + 2)) 'Long
  loc_14DEC23: Me.FGrid.Rows = "SplitYN"
  loc_14DEC38: Set var_A8 = Me.FGrid
  loc_14DEC3E: var_A8.Row = 1
  loc_14DEC46: ' Referenced from: 14DF4C3
  loc_14DEC58: If Not(Me.var_A8.EOF) Then
  loc_14DEC5F:   Set var_15C = Me.FGrid
  loc_14DEC6C:   var_CC = Me.FGrid.Row
  loc_14DECAD:   var_EC = CVar(Proc_6_38_E68A98(CVar(Me.var_CC.Fields.Item("MarkEntry")), CVar(CLng(0)), CVar(CLng(var_CC)))) 'String
  loc_14DECB4:   LateIdCallSt
  loc_14DECD6:   var_CC = Me.FGrid.Row
  loc_14DED17:   var_EC = CVar(Proc_6_38_E68A98(CVar(Me.var_CC.Fields.Item("VDate")), CVar(CLng(1)), CVar(CLng(var_CC)), var_15C)) 'String
  loc_14DED1E:   LateIdCallSt
  loc_14DED40:   var_CC = Me.FGrid.Row
  loc_14DED81:   var_EC = CVar(Proc_6_38_E68A98(CVar(Me.var_CC.Fields.Item("Comments")), CVar(CLng(2)), CVar(CLng(var_CC)), var_15C)) 'String
  loc_14DED88:   LateIdCallSt
  loc_14DEDC9:   var_150 = Me.FGrid.Row
  loc_14DEDD2:   var_130 = CVar(CLng(var_150)) 'Long
  loc_14DEDDA:   var_16C = CVar(CLng(3)) 'Long
  loc_14DEE07:   var_18C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtDr")), "0.00"))) 'String
  loc_14DEE0E:   LateIdCallSt
  loc_14DEE53:   var_150 = Me.FGrid.Row
  loc_14DEE78:   var_CC = "0.00"
  loc_14DEE98:   LateIdCallSt
  loc_14DEEE4:   Proc_6_39_E7C810(var_CC, CVar(Me.var_150.Fields.Item("AmtDr")), CVar(var_94), var_15C, CVar(CStr(Format(CVar(Me.var_150.Fields.Item("AmtCr")), var_CC))), 1, 1)
  loc_14DEEEC:   var_EC = (CVar(CLng(4)) + var_CC)
  loc_14DEEF1:   var_94 = CSng(Format(CVar(Me.var_150.Fields.Item("AmtCr")), var_CC))
  loc_14DEF30:   Proc_6_39_E7C810(var_CC, CVar(Me.Recordset15.Fields.Item("AmtCr")), CVar(var_9C), var_94, CVar(CLng(var_150)))
  loc_14DEF38:   var_EC = (var_15C + var_CC)
  loc_14DEF3D:   var_9C = CSng(Format(CVar(Me.var_150.Fields.Item("AmtCr")), var_CC))
  loc_14DEF5F:   var_130 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14DEF67:   var_16C = CVar(CLng(5)) 'Long
  loc_14DEF89:   var_BC = CVar(Abs((var_94 - var_9C))) 'Double
  loc_14DEF99:   var_18C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_14DEFA0:   LateIdCallSt
  loc_14DEFC4:   If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_14DEFDA:     var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14DEFE2:     var_130 = CVar(CLng(6)) 'Long
  loc_14DEFE7:     var_16C = "Dr"
  loc_14DEFF0:     LateIdCallSt
  loc_14DF001:   Else
  loc_14DF00D:     If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_14DF023:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14DF02B:       var_130 = CVar(CLng(6)) 'Long
  loc_14DF030:       var_16C = "Cr"
  loc_14DF039:       LateIdCallSt
  loc_14DF04A:     Else
  loc_14DF05D:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14DF065:       var_130 = CVar(CLng(6)) 'Long
  loc_14DF06A:       var_16C = vbNullString
  loc_14DF073:       LateIdCallSt
  loc_14DF081:     End If
  loc_14DF081:   End If
  loc_14DF08B:   var_CC = Me.FGrid.Row
  loc_14DF0A4:   var_DC = "DocID"
  loc_14DF0CC:   var_EC = CVar(Proc_6_38_E68A98(CVar(Me.var_CC.Fields.Item(var_DC)), CVar(CLng(7)), CVar(CLng(var_CC)), var_15C, var_16C, var_130, var_DC)) 'String
  loc_14DF0D3:   LateIdCallSt
  loc_14DF0F5:   var_CC = Me.FGrid.Row
  loc_14DF136:   var_EC = CVar(Proc_6_38_E68A98(CVar(Me.var_CC.Fields.Item("SNo")), CVar(CLng(8)), CVar(CLng(var_CC)), var_15C, var_EC, var_15C)) 'String
  loc_14DF13D:   LateIdCallSt
  loc_14DF15F:   var_CC = Me.FGrid.Row
  loc_14DF1A0:   var_EC = CVar(Proc_6_38_E68A98(CVar(Me.var_CC.Fields.Item("U_Name")), CVar(CLng(9)), CVar(CLng(var_CC)), var_15C, var_EC)) 'String
  loc_14DF1A7:   LateIdCallSt
  loc_14DF1D2:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14DF20E:   If ((CDbl(Val(CStr(var_15C.TextMatrix)))) = CDbl(0)) And (var_9E = &HFF)) Then
  loc_14DF21B:     var_CC = Me.FGrid.Row
  loc_14DF234:     var_DC = "SplitSeqNo"
  loc_14DF25C:     var_EC = CVar(Proc_6_38_E68A98(CVar(Me.var_CC.Fields.Item(var_DC)), CVar(CLng(&HA)), CVar(CLng(var_CC)), CVar(CLng(&HA)), var_DC, var_15C)) 'String
  loc_14DF263:     LateIdCallSt
  loc_14DF27B:   End If
  loc_14DF28E:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14DF296:   var_130 = CVar(CLng(&HA)) 'Long
  loc_14DF29E:   var_CC = var_15C.TextMatrix)
  loc_14DF2C3:   If (CDbl(Val(CStr(var_CC))) = CDbl(0)) Then
  loc_14DF36F:     var_1D0 = (Me.var_CC.Fields.Item("Nature").Value <> "Room Charge") And (Me.Recordset15.Fields.Item("PlanCharge").Value <> "Yes") And (Me.Recordset15.Fields.Item("AmtDr").Value <> 0)
  loc_14DF39D:     If CBool(var_1D0 And (var_9E = &HFF)) Then
  loc_14DF3B3:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14DF3BB:       var_130 = CVar(CLng(&HA)) 'Long
  loc_14DF3C0:       var_16C = "2"
  loc_14DF3C9:       LateIdCallSt
  loc_14DF3DA:     Else
  loc_14DF3ED:       var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14DF3F5:       var_130 = CVar(CLng(&HA)) 'Long
  loc_14DF3FA:       var_16C = "1"
  loc_14DF403:       LateIdCallSt
  loc_14DF411:     End If
  loc_14DF411:   End If
  loc_14DF41B:   var_CC = Me.FGrid.Row
  loc_14DF434:   var_DC = "PayCode"
  loc_14DF45C:   var_EC = CVar(Proc_6_38_E68A98(CVar(Me.var_CC.Fields.Item(var_DC)), CVar(CLng(&HB)), CVar(CLng(var_CC)), var_15C, var_16C, var_130, var_DC)) 'String
  loc_14DF463:   LateIdCallSt
  loc_14DF47D:   Set var_15C = Nothing 
  loc_14DF49A:   var_DC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_14DF4A3:   Set var_AC = Me.FGrid
  loc_14DF4A9:   var_AC.Row = var_DC
  loc_14DF4BE:   Me.var_AC.MoveNext
  loc_14DF4C3:   GoTo loc_14DEC46
  loc_14DF4C6: End If
  loc_14DF4D9: Me.FGrid.FixedRows = 1
  loc_14DF4E5: Set var_1E4 = Me.Fgrid1
  loc_14DF4E8: var_130 = 0
  loc_14DF4F4: var_16C = CVar(CLng(1)) 'Long
  loc_14DF522: var_EC = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_14DF529: LateIdCallSt
  loc_14DF53A: var_130 = 0
  loc_14DF546: var_16C = CVar(CLng(2)) 'Long
  loc_14DF574: var_EC = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_14DF57B: LateIdCallSt
  loc_14DF58C: var_130 = 0
  loc_14DF598: var_16C = CVar(CLng(3)) 'Long
  loc_14DF5BA: var_BC = CVar(Abs((var_94 - var_9C))) 'Double
  loc_14DF5CA: var_150 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_14DF5D1: LateIdCallSt
  loc_14DF5E4: var_17C = 0
  loc_14DF5F0: var_1F4 = CVar(CLng(4)) 'Long
  loc_14DF5FA: var_CC = vbNullString
  loc_14DF617: var_DC = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_14DF61E: var_EC = IIf(var_9C, "Cr", var_CC)
  loc_14DF62B: var_150 = "Dr"
  loc_14DF63D: var_140 = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_14DF64D: var_1B0 = CVar(CStr(IIf(CVar(CLng(&HB)), var_150, var_EC))) 'String
  loc_14DF654: LateIdCallSt
  loc_14DF671: Set var_1E4 = Nothing 
  loc_14DF67A: global_130 = &HFF
  loc_14DF682: Set var_A4 = Nothing
  loc_14DF68A: Set var_8C = Nothing
  loc_14DF68D: Exit Sub
  loc_14DF68E: ' Referenced from: 14DE950
  loc_14DF6A7: MsgBox("FILL DETAILS", 0, var_CC, var_EC, var_150)
  loc_14DF6CD: Set var_A8 = Err()
  loc_14DF6D3: Call 0.Method_arg_1C (var_154, 0, var_CC, var_EC, var_150, global_130, var_1E4, var_1B0)
  loc_14DF6DF: MsgBox(CVar(var_154), var_1F4, var_17C, var_1E4, var_150)
  loc_14DF6F2: Exit Sub
End Sub

Public Sub Proc_64_57_13A0770
  'Data Table: 529B38
  Dim var_A0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_90 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim var_10C As MSHFlexGrid
  loc_139FE58: Set var_90 = Me.FGrid
  loc_139FE6E: Me.FGrid.Rows = 1
  loc_139FE8A: global_60 = CStr(CLng(var_90.BackColor))
  loc_139FEA0: var_90.Cols = &HD
  loc_139FEA5: var_A0 = 0
  loc_139FEB1: var_D8 = CVar(CLng(0)) 'Long
  loc_139FEB6: var_F8 = "SNo"
  loc_139FEBF: LateIdCallSt
  loc_139FECA: var_A0 = CVar(CLng(0)) 'Long
  loc_139FECF: var_D8 = 0
  loc_139FEDB: LateIdCallSt
  loc_139FEE3: var_A0 = 0
  loc_139FEEF: var_D8 = CVar(CLng(1)) 'Long
  loc_139FEF4: var_F8 = "Date"
  loc_139FEFD: LateIdCallSt
  loc_139FF08: var_A0 = CVar(CLng(1)) 'Long
  loc_139FF13: var_D8 = CVar(CInt(1)) 'Integer
  loc_139FF1A: LateIdCallSt
  loc_139FF25: var_A0 = CVar(CLng(1)) 'Long
  loc_139FF30: var_D8 = CVar(CInt(1)) 'Integer
  loc_139FF37: LateIdCallSt
  loc_139FF42: var_A0 = CVar(CLng(1)) 'Long
  loc_139FF47: var_D8 = &H4E2
  loc_139FF53: LateIdCallSt
  loc_139FF5B: var_A0 = 0
  loc_139FF67: var_D8 = CVar(CLng(2)) 'Long
  loc_139FF6C: var_F8 = "Particulars"
  loc_139FF75: LateIdCallSt
  loc_139FF80: var_A0 = CVar(CLng(2)) 'Long
  loc_139FF8B: var_D8 = CVar(CInt(1)) 'Integer
  loc_139FF92: LateIdCallSt
  loc_139FF9D: var_A0 = CVar(CLng(2)) 'Long
  loc_139FFA8: var_D8 = CVar(CInt(1)) 'Integer
  loc_139FFAF: LateIdCallSt
  loc_139FFBA: var_A0 = CVar(CLng(2)) 'Long
  loc_139FFBF: var_D8 = &HBB8
  loc_139FFCB: LateIdCallSt
  loc_139FFD3: var_A0 = 0
  loc_139FFDF: var_D8 = CVar(CLng(3)) 'Long
  loc_139FFE4: var_F8 = "Debit"
  loc_139FFED: LateIdCallSt
  loc_139FFF8: var_A0 = CVar(CLng(3)) 'Long
  loc_13A0003: var_D8 = CVar(CInt(7)) 'Integer
  loc_13A000A: LateIdCallSt
  loc_13A0015: var_A0 = CVar(CLng(3)) 'Long
  loc_13A0020: var_D8 = CVar(CInt(7)) 'Integer
  loc_13A0027: LateIdCallSt
  loc_13A0032: var_A0 = CVar(CLng(3)) 'Long
  loc_13A0037: var_D8 = &H3E8
  loc_13A0043: LateIdCallSt
  loc_13A004B: var_A0 = 0
  loc_13A0057: var_D8 = CVar(CLng(4)) 'Long
  loc_13A005C: var_F8 = "Credit"
  loc_13A0065: LateIdCallSt
  loc_13A0070: var_A0 = CVar(CLng(4)) 'Long
  loc_13A007B: var_D8 = CVar(CInt(7)) 'Integer
  loc_13A0082: LateIdCallSt
  loc_13A008D: var_A0 = CVar(CLng(4)) 'Long
  loc_13A0098: var_D8 = CVar(CInt(7)) 'Integer
  loc_13A009F: LateIdCallSt
  loc_13A00AA: var_A0 = CVar(CLng(4)) 'Long
  loc_13A00AF: var_D8 = &H3E8
  loc_13A00BB: LateIdCallSt
  loc_13A00C3: var_A0 = 0
  loc_13A00CF: var_D8 = CVar(CLng(5)) 'Long
  loc_13A00D4: var_F8 = "Balance"
  loc_13A00DD: LateIdCallSt
  loc_13A00E8: var_A0 = CVar(CLng(5)) 'Long
  loc_13A00F3: var_D8 = CVar(CInt(7)) 'Integer
  loc_13A00FA: LateIdCallSt
  loc_13A0105: var_A0 = CVar(CLng(5)) 'Long
  loc_13A0110: var_D8 = CVar(CInt(7)) 'Integer
  loc_13A0117: LateIdCallSt
  loc_13A0122: var_A0 = CVar(CLng(5)) 'Long
  loc_13A0127: var_D8 = &H3E8
  loc_13A0133: LateIdCallSt
  loc_13A013B: var_A0 = 0
  loc_13A0147: var_D8 = CVar(CLng(6)) 'Long
  loc_13A014C: var_F8 = vbNullString
  loc_13A0155: LateIdCallSt
  loc_13A0160: var_A0 = CVar(CLng(6)) 'Long
  loc_13A016B: var_D8 = CVar(CInt(1)) 'Integer
  loc_13A0172: LateIdCallSt
  loc_13A017D: var_A0 = CVar(CLng(6)) 'Long
  loc_13A0188: var_D8 = CVar(CInt(1)) 'Integer
  loc_13A018F: LateIdCallSt
  loc_13A019A: var_A0 = CVar(CLng(6)) 'Long
  loc_13A019F: var_D8 = &H12C
  loc_13A01AB: LateIdCallSt
  loc_13A01B3: var_A0 = 0
  loc_13A01BF: var_D8 = CVar(CLng(7)) 'Long
  loc_13A01C4: var_F8 = vbNullString
  loc_13A01CD: LateIdCallSt
  loc_13A01D8: var_A0 = CVar(CLng(7)) 'Long
  loc_13A01E3: var_D8 = CVar(CInt(1)) 'Integer
  loc_13A01EA: LateIdCallSt
  loc_13A01F5: var_A0 = CVar(CLng(7)) 'Long
  loc_13A0200: var_D8 = CVar(CInt(1)) 'Integer
  loc_13A0207: LateIdCallSt
  loc_13A0212: var_A0 = CVar(CLng(7)) 'Long
  loc_13A0217: var_D8 = 0
  loc_13A0223: LateIdCallSt
  loc_13A022B: var_A0 = 0
  loc_13A0237: var_D8 = CVar(CLng(8)) 'Long
  loc_13A023C: var_F8 = vbNullString
  loc_13A0245: LateIdCallSt
  loc_13A0250: var_A0 = CVar(CLng(8)) 'Long
  loc_13A025B: var_D8 = CVar(CInt(1)) 'Integer
  loc_13A0262: LateIdCallSt
  loc_13A026D: var_A0 = CVar(CLng(8)) 'Long
  loc_13A0278: var_D8 = CVar(CInt(1)) 'Integer
  loc_13A027F: LateIdCallSt
  loc_13A028A: var_A0 = CVar(CLng(8)) 'Long
  loc_13A028F: var_D8 = 0
  loc_13A029B: LateIdCallSt
  loc_13A02A3: var_A0 = 0
  loc_13A02AF: var_D8 = CVar(CLng(9)) 'Long
  loc_13A02B4: var_F8 = "User"
  loc_13A02BD: LateIdCallSt
  loc_13A02C8: var_A0 = CVar(CLng(9)) 'Long
  loc_13A02D3: var_D8 = CVar(CInt(1)) 'Integer
  loc_13A02DA: LateIdCallSt
  loc_13A02E5: var_A0 = CVar(CLng(9)) 'Long
  loc_13A02F0: var_D8 = CVar(CInt(1)) 'Integer
  loc_13A02F7: LateIdCallSt
  loc_13A0302: var_A0 = CVar(CLng(9)) 'Long
  loc_13A0307: var_D8 = &H1F4
  loc_13A0313: LateIdCallSt
  loc_13A031B: var_A0 = 0
  loc_13A0327: var_D8 = CVar(CLng(&HA)) 'Long
  loc_13A032C: var_F8 = "Split"
  loc_13A0335: LateIdCallSt
  loc_13A0340: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13A034B: var_D8 = CVar(CInt(1)) 'Integer
  loc_13A0352: LateIdCallSt
  loc_13A035D: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13A0368: var_D8 = CVar(CInt(1)) 'Integer
  loc_13A036F: LateIdCallSt
  loc_13A037A: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13A037F: var_D8 = &H1F4
  loc_13A038B: LateIdCallSt
  loc_13A0393: var_A0 = 0
  loc_13A039F: var_D8 = CVar(CLng(&HB)) 'Long
  loc_13A03A4: var_F8 = "REVCODE"
  loc_13A03AD: LateIdCallSt
  loc_13A03B8: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13A03C3: var_D8 = CVar(CInt(1)) 'Integer
  loc_13A03CA: LateIdCallSt
  loc_13A03D5: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13A03E0: var_D8 = CVar(CInt(1)) 'Integer
  loc_13A03E7: LateIdCallSt
  loc_13A03F2: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13A03F7: var_D8 = &H14
  loc_13A0403: LateIdCallSt
  loc_13A040B: var_A0 = 0
  loc_13A0417: var_D8 = CVar(CLng(&HC)) 'Long
  loc_13A041C: var_F8 = "Balance"
  loc_13A0425: LateIdCallSt
  loc_13A0430: var_A0 = CVar(CLng(&HC)) 'Long
  loc_13A043B: var_D8 = CVar(CInt(7)) 'Integer
  loc_13A0442: LateIdCallSt
  loc_13A044D: var_A0 = CVar(CLng(&HC)) 'Long
  loc_13A0458: var_D8 = CVar(CInt(7)) 'Integer
  loc_13A045F: LateIdCallSt
  loc_13A046A: var_A0 = CVar(CLng(&HC)) 'Long
  loc_13A046F: var_D8 = 0
  loc_13A047B: LateIdCallSt
  loc_13A0483: var_A0 = vbNullString
  loc_13A048D: Set var_B4 = Me.FGrid
  loc_13A04B1: Me.FGrid.FixedRows = 1
  loc_13A04BB: Set var_90 = Nothing 
  loc_13A04C3: Set var_10C = Me.Fgrid1
  loc_13A04D9: Me.Fgrid1.Rows = 1
  loc_13A04F5: global_60 = CStr(CLng(var_10C.BackColor))
  loc_13A050B: var_10C.Cols = 5
  loc_13A0510: var_A0 = 0
  loc_13A051C: var_D8 = CVar(CLng(0)) 'Long
  loc_13A0521: var_F8 = "Total :"
  loc_13A052A: LateIdCallSt
  loc_13A0535: var_A0 = CVar(CLng(0)) 'Long
  loc_13A0540: var_D8 = CVar(CInt(1)) 'Integer
  loc_13A0547: LateIdCallSt
  loc_13A0552: var_A0 = CVar(CLng(0)) 'Long
  loc_13A055D: var_D8 = CVar(CInt(1)) 'Integer
  loc_13A0564: LateIdCallSt
  loc_13A056F: var_A0 = CVar(CLng(0)) 'Long
  loc_13A0574: var_D8 = &H109A
  loc_13A0580: LateIdCallSt
  loc_13A0588: var_A0 = 0
  loc_13A0594: var_D8 = CVar(CLng(1)) 'Long
  loc_13A0599: var_F8 = vbNullString
  loc_13A05A2: LateIdCallSt
  loc_13A05AD: var_A0 = CVar(CLng(1)) 'Long
  loc_13A05B8: var_D8 = CVar(CInt(7)) 'Integer
  loc_13A05BF: LateIdCallSt
  loc_13A05CA: var_A0 = CVar(CLng(1)) 'Long
  loc_13A05D5: var_D8 = CVar(CInt(7)) 'Integer
  loc_13A05DC: LateIdCallSt
  loc_13A05E7: var_A0 = CVar(CLng(1)) 'Long
  loc_13A05EC: var_D8 = &H3E8
  loc_13A05F8: LateIdCallSt
  loc_13A0600: var_A0 = 0
  loc_13A060C: var_D8 = CVar(CLng(2)) 'Long
  loc_13A0611: var_F8 = vbNullString
  loc_13A061A: LateIdCallSt
  loc_13A0625: var_A0 = CVar(CLng(2)) 'Long
  loc_13A0630: var_D8 = CVar(CInt(7)) 'Integer
  loc_13A0637: LateIdCallSt
  loc_13A0642: var_A0 = CVar(CLng(2)) 'Long
  loc_13A064D: var_D8 = CVar(CInt(7)) 'Integer
  loc_13A0654: LateIdCallSt
  loc_13A065F: var_A0 = CVar(CLng(2)) 'Long
  loc_13A0664: var_D8 = &H3E8
  loc_13A0670: LateIdCallSt
  loc_13A0678: var_A0 = 0
  loc_13A0684: var_D8 = CVar(CLng(3)) 'Long
  loc_13A0689: var_F8 = vbNullString
  loc_13A0692: LateIdCallSt
  loc_13A069D: var_A0 = CVar(CLng(3)) 'Long
  loc_13A06A8: var_D8 = CVar(CInt(7)) 'Integer
  loc_13A06AF: LateIdCallSt
  loc_13A06BA: var_A0 = CVar(CLng(3)) 'Long
  loc_13A06C5: var_D8 = CVar(CInt(7)) 'Integer
  loc_13A06CC: LateIdCallSt
  loc_13A06D7: var_A0 = CVar(CLng(3)) 'Long
  loc_13A06DC: var_D8 = &H3E8
  loc_13A06E8: LateIdCallSt
  loc_13A06F0: var_A0 = 0
  loc_13A06FC: var_D8 = CVar(CLng(4)) 'Long
  loc_13A0701: var_F8 = vbNullString
  loc_13A070A: LateIdCallSt
  loc_13A0715: var_A0 = CVar(CLng(4)) 'Long
  loc_13A0720: var_D8 = CVar(CInt(1)) 'Integer
  loc_13A0727: LateIdCallSt
  loc_13A0732: var_A0 = CVar(CLng(4)) 'Long
  loc_13A073D: var_D8 = CVar(CInt(1)) 'Integer
  loc_13A0744: LateIdCallSt
  loc_13A074F: var_A0 = CVar(CLng(4)) 'Long
  loc_13A0754: var_D8 = &H12C
  loc_13A0760: LateIdCallSt
  loc_13A076A: Set var_10C = Nothing 
  loc_13A076E: Exit Sub
End Sub

Public Sub Proc_64_58_1070438(arg_C) '1070438
  'Data Table: 529B38
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_100 As Variant
  Dim var_1F4 As Variant
  Dim var_204 As Variant
  loc_1070211: For var_A0 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_1070235:   var_D0 = (CVar(arg_14) + Left(arg_C, 5))
  loc_1070271:   If (var_D0 = CVar(MemVar_1F92078 & "DISC" & "D" & MemVar_1F92078 & "RC")) Then
  loc_1070278:     var_150 = CVar(CLng(var_86)) 'Long
  loc_1070280:     var_170 = CVar(CLng(7)) 'Long
  loc_10702A9:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_10702B1:     var_100 = CVar(CLng(7)) 'Long
  loc_107030D:     var_1F4 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(arg_C)) And (Left(Trim(CVar(CStr(Me.FGrid.TextMatrix)))), 5) = CVar("D" & MemVar_1F92078 & "RC"))
  loc_1070315:     var_204 = CVar(CLng(var_86)) 'Long
  loc_1070381:     If CBool(CVar(CLng(&HB)) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(MemVar_1F92078 & "DISC"))) Then
  loc_1070388:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_1070390:       var_100 = CVar(CLng(&HA)) 'Long
  loc_10703A0:       Set var_8C = Me.FGrid
  loc_10703A6:       LateIdCallSt
  loc_10703B1:     End If
  loc_10703B4:   Else
  loc_10703B8:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_10703C0:     var_100 = CVar(CLng(7)) 'Long
  loc_10703FD:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(arg_C)) Then
  loc_1070404:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_107040C:       var_100 = CVar(CLng(&HA)) 'Long
  loc_107041C:       Set var_8C = Me.FGrid
  loc_1070422:       LateIdCallSt
  loc_107042D:     End If
  loc_107042D:   End If
  loc_1070430: Next var_A0 'Integer
  loc_1070435: Exit Sub
End Sub

Public Sub Proc_64_59_E3E230
  'Data Table: 529B38
  loc_E3E210: Set var_88 = Me.TopCtrl1
  loc_E3E216: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_E3E22B: If ( = "Browse") Then
  loc_E3E22E:   Exit Sub
  loc_E3E22F: End If
  loc_E3E22F: Exit Sub
End Sub

Public Sub Proc_64_60_EF3C0C
  'Data Table: 529B38
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_A4 As TextBox
  Dim var_110 As Variant
  loc_EF3B63: var_A0 = CLng(Me.FGrid.Col)
  loc_EF3B73: If Not (var_A0 = CLng(&HA)) Then
  loc_EF3B7D:   If (var_A0 = CLng(3)) Then
  loc_EF3B80:   End If
  loc_EF3B93:   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EF3BAB:   var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_EF3BBC:   Set var_8C = Me.TxtGrid
  loc_EF3BC2:   Call 0.Method_Proc_64_60_EF3C0C0 (0, var_A4, var_A8)
  loc_EF3BCA:   var_F0 = var_A4.Text
  loc_EF3BD2:   var_110 = CVar(var_A8) 'String
  loc_EF3BDA:   Set var_124 = Me.FGrid
  loc_EF3BE0:   LateIdCallSt
  loc_EF3BFE: End If
  loc_EF3C03: Proc_64_60_EF3C0C = &HFF
End Sub

Public Sub Proc_64_61_E7E4E0
  'Data Table: 529B38
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_E7E49D: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_E7E4A7:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_E7E4AF:   var_D0 = CVar(CLng(0)) 'Long
  loc_E7E4B4:   var_F0 = vbNullString
  loc_E7E4BE:   Set var_8C = Me.FGrid
  loc_E7E4C4:   LateIdCallSt
  loc_E7E4D2: Next var_A0 'Integer
  loc_E7E4DC: global_124 = 0
  loc_E7E4DF: Exit Sub
End Sub

Public Sub Proc_64_62_FBAAB8(arg_C) 'FBAAB8
  'Data Table: 529B38
  Dim var_94 As TextBox
  Dim var_9C As String
  Dim var_144 As Variant
  Dim var_154 As String
  Dim var_16C As TextBox
  Dim var_208 As Variant
  loc_FBA97B: Set var_90 = Me.Txt
  loc_FBA981: Call 0.Method_Proc_64_62_FBAAB80 (CInt(&HA), var_94)
  loc_FBA992: var_9C = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono=" & var_94.Text
  loc_FBA9E2: var_144 = CVar(var_9C & " And Split='") & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" & CVar(arg_C) & ") Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all " 
  loc_FBA9E6: var_154 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono="
  loc_FBA9FD: Set var_168 = Me.Txt
  loc_FBAA03: Call 0.Method_Proc_64_62_FBAAB80 (CInt(&HA), var_16C)
  loc_FBAA56: var_208 = var_144 & var_154 & CVar(var_16C.Text) & " And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_FBAAAF: var_88 = CStr(var_208 & CVar(arg_C) & ") Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all ")
  loc_FBAAB2: Proc_64_62_FBAAB8 = 
End Sub

Public Sub Proc_64_63_111A788(arg_C) '111A788
  'Data Table: 529B38
  Dim var_94 As TextBox
  Dim var_9C As String
  Dim var_134 As String
  Dim var_144 As Variant
  Dim var_154 As String
  Dim var_16C As TextBox
  Dim var_208 As Variant
  Dim var_238 As String
  Dim var_258 As String
  Dim var_270 As TextBox
  Dim var_30C As Variant
  Dim var_33C As String
  Dim var_35C As String
  Dim var_374 As TextBox
  Dim var_410 As Variant
  Dim var_440 As String
  loc_111A507: Set var_90 = Me.Txt
  loc_111A50D: Call 0.Method_Proc_64_63_111A7880 (CInt(&HA), var_94)
  loc_111A51E: var_9C = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' as AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono=" & var_94.Text
  loc_111A569: var_134 = ") AND PayCode not in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_111A56E: var_144 = CVar(var_9C & " And Split='") & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" & CVar(arg_C) & var_134 
  loc_111A572: var_154 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'T' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono="
  loc_111A589: Set var_168 = Me.Txt
  loc_111A58F: Call 0.Method_Proc_64_63_111A7880 (CInt(&HA), var_16C)
  loc_111A5E2: var_208 = var_144 & var_154 & CVar(var_16C.Text) & " And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" 
  loc_111A5F0: var_238 = ") AND PayCode in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_111A5F9: var_258 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono="
  loc_111A610: Set var_26C = Me.Txt
  loc_111A616: Call 0.Method_Proc_64_63_111A7880 (CInt(&HA), var_270)
  loc_111A669: var_30C = var_208 & CVar(arg_C) & var_238 & var_258 & CVar(var_270.Text) & " And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_111A677: var_33C = ") AND PayCode NOT in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_111A680: var_35C = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'T' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono="
  loc_111A697: Set var_370 = Me.Txt
  loc_111A69D: Call 0.Method_Proc_64_63_111A7880 (CInt(&HA), var_374)
  loc_111A6F0: var_410 = var_30C & CVar(arg_C) & var_33C & var_35C & CVar(var_374.Text) & " And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_111A6FE: var_440 = ") AND PayCode in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_111A77D: var_88 = CStr(var_410 & CVar(arg_C) & var_440)
  loc_111A780: Proc_64_63_111A788 = 
End Sub
