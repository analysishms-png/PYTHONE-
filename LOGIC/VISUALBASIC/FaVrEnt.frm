VERSION 5.00
Begin VB.Form FaVrEnt
  Caption = "Voucher Entry"
  BackColor = &HC0C0FF&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  Icon = "FaVrEnt.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12690
  ClientHeight = 7890
  Begin Frame ChqPrint
    Caption = "Cheque Print"
    BackColor = &HCBBE9E&
    Left = 10500
    Top = 4080
    Width = 5010
    Height = 2145
    Visible = 0   'False
    TabIndex = 190
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox TxtChequeAmt
      Left = 2055
      Top = 585
      Width = 1470
      Height = 285
      TabIndex = 193
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox TxtCrParty
      Left = 75
      Top = 195
      Width = 4845
      Height = 285
      TabIndex = 191
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton Command1
      Caption = "Cheque Print"
      Left = 3600
      Top = 540
      Width = 1335
      Height = 375
      TabIndex = 194
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox Text3
      Left = 75
      Top = 585
      Width = 1200
      Height = 285
      TabIndex = 192
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CheckBox ChkAcPayee
      Caption = "Ac/Payee"
      BackColor = &HCBBE9E&
      Left = 90
      Top = 945
      Width = 1440
      Height = 255
      TabIndex = 195
      Value = 1
    End
    Begin CheckBox ChkCompName
      Caption = "Company Name"
      BackColor = &HCBBE9E&
      Left = 1815
      Top = 945
      Width = 1440
      Height = 255
      TabIndex = 196
      Value = 1
    End
    Begin OptionButton OptAuthoSign
      Caption = "Authorised Signatory"
      BackColor = &HCBBE9E&
      Left = 75
      Top = 1560
      Width = 1995
      Height = 255
      TabIndex = 199
      Value = 255
    End
    Begin OptionButton OptDirector
      Caption = "Director"
      BackColor = &HCBBE9E&
      Left = 2310
      Top = 1560
      Width = 1995
      Height = 255
      TabIndex = 200
    End
    Begin OptionButton OptPresident
      Caption = "President"
      BackColor = &HCBBE9E&
      Left = 75
      Top = 1800
      Width = 1995
      Height = 255
      TabIndex = 201
    End
    Begin CheckBox ChkAcNo
      Caption = "Account No"
      BackColor = &HCBBE9E&
      Left = 90
      Top = 1200
      Width = 1440
      Height = 255
      Visible = 0   'False
      TabIndex = 197
    End
    Begin OptionButton OptBlank
      Caption = "."
      BackColor = &HCBBE9E&
      Left = 2310
      Top = 1800
      Width = 1995
      Height = 255
      TabIndex = 202
    End
    Begin CheckBox ChkFullDate
      Caption = "Full Date"
      BackColor = &HCBBE9E&
      Left = 3540
      Top = 945
      Width = 1440
      Height = 255
      TabIndex = 198
      Value = 1
    End
    Begin Label Label2
      Caption = "Amount"
      Left = 1365
      Top = 675
      Width = 690
      Height = 180
      TabIndex = 216
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Line Line3
      X1 = 15
      Y1 = 1530
      X2 = 4980
      Y2 = 1530
    End
  End
  Begin TextBox TxtCr
    Index = 6
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 5535
    Width = 1380
    Height = 210
    Visible = 0   'False
    TabIndex = 36
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGlb
    Index = 0
    BackColor = &HE0E0E0&
    Left = 0
    Top = 5760
    Width = 10380
    Height = 855
    TabIndex = 63
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 255
    BeginProperty Font
      Name = "Courier New"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCHno
    Index = 0
    BackColor = &HFFFFFF&
    Left = 975
    Top = 6675
    Width = 1935
    Height = 225
    TabIndex = 206
    BorderStyle = 0 'None
    MaxLength = 20
    Appearance = 0 'Flat
  End
  Begin TextBox TXTChDate
    Index = 0
    BackColor = &HFFFFFF&
    Left = 4020
    Top = 6675
    Width = 1125
    Height = 225
    TabIndex = 207
    BorderStyle = 0 'None
    MaxLength = 12
    Appearance = 0 'Flat
  End
  Begin TextBox TXTClrDate
    Index = 0
    BackColor = &HFFFFFF&
    Left = 6405
    Top = 6675
    Width = 1125
    Height = 225
    TabIndex = 208
    BorderStyle = 0 'None
    MaxLength = 12
    Appearance = 0 'Flat
  End
  Begin DataGrid DGAcHlp
    Left = 12405
    Top = 2970
    Width = 4095
    Height = 1725
    Visible = 0   'False
    TabIndex = 113
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12690
    Height = 450
    TabIndex = 205
  End
  Begin Frame FrameRef
    Caption = "Referance Detail"
    BackColor = &HD9B0DD&
    Left = 12375
    Top = 1560
    Width = 8805
    Height = 4395
    Visible = 0   'False
    TabIndex = 162
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton BtnRefAdjOK
      Left = 7860
      Top = 270
      Width = 585
      Height = 495
      TabIndex = 185
      Picture = "FaVrEnt.frx":442
      DisabledPicture = "FaVrEnt.frx":584
      ToolTipText = "Save"
      Style = 1
    End
    Begin Frame FrmList
      Left = 6345
      Top = 1065
      Width = 2010
      Height = 2505
      Visible = 0   'False
      TabIndex = 173
      BorderStyle = 0 'None
      Begin ListView ListView
        Left = 0
        Top = 0
        Width = 1980
        Height = 2490
        TabStop = 0   'False
        TabIndex = 167
      End
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HC0C0FF&
      ForeColor = &H80000012&
      Left = 5895
      Top = 1680
      Width = 690
      Height = 240
      Visible = 0   'False
      TabIndex = 172
      BorderStyle = 0 'None
      MaxLength = 150
      Appearance = 0 'Flat
    End
    Begin MSHFlexGrid FGridRef
      Left = 840
      Top = 840
      Width = 5775
      Height = 3555
      TabIndex = 168
    End
    Begin DataGrid DGRefNo
      Left = 4080
      Top = 1560
      Width = 4530
      Height = 2670
      Visible = 0   'False
      TabIndex = 166
    End
    Begin Label Label1
      Caption = "Balance"
      Index = 24
      BackColor = &H5EB0AC&
      ForeColor = &HC0&
      Left = 4995
      Top = 540
      Width = 690
      Height = 240
      TabIndex = 184
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblRefAdjBal
      Caption = "999999999.99"
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 5730
      Top = 540
      Width = 1230
      Height = 240
      TabIndex = 183
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblRefAdjDrCrBal
      Caption = "KK"
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 6975
      Top = 540
      Width = 270
      Height = 240
      TabIndex = 182
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblRefAdjDrCr
      Caption = "KK"
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 4635
      Top = 540
      Width = 270
      Height = 240
      TabIndex = 181
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblRefAmtDrCr
      Caption = "Cr."
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2235
      Top = 540
      Width = 270
      Height = 240
      TabIndex = 178
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblRefAdj
      Caption = "999999999.99"
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 3405
      Top = 540
      Width = 1230
      Height = 240
      TabIndex = 180
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Adjusted"
      Index = 23
      BackColor = &H5EB0AC&
      ForeColor = &HC0&
      Left = 2550
      Top = 540
      Width = 765
      Height = 240
      TabIndex = 179
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Tr.Amt."
      Index = 22
      BackColor = &H5EB0AC&
      ForeColor = &HC0&
      Left = 90
      Top = 540
      Width = 675
      Height = 240
      TabIndex = 176
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblRefAmt
      Caption = "999999999.99"
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 990
      Top = 540
      Width = 1230
      Height = 240
      TabIndex = 177
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "For A/C"
      Index = 21
      BackColor = &H5EB0AC&
      ForeColor = &HC0&
      Left = 90
      Top = 300
      Width = 840
      Height = 240
      TabIndex = 174
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblRefName
      Caption = "MMMM"
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 990
      Top = 300
      Width = 3330
      Height = 240
      TabIndex = 175
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame Frame1
    Caption = "Voucher Printing"
    Index = 1
    BackColor = &HFF80FF&
    Left = 12375
    Top = 1290
    Width = 6015
    Height = 4200
    Visible = 0   'False
    TabIndex = 95
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CheckBox ChkReport
      Caption = "Reciept"
      BackColor = &HFFFFC0&
      Left = 4065
      Top = 375
      Width = 1725
      Height = 240
      TabIndex = 187
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin OptionButton Opt2
      Caption = "VNo Selection"
      Index = 1
      BackColor = &HFFFFC0&
      Left = 2130
      Top = 690
      Width = 1800
      Height = 360
      TabIndex = 104
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin OptionButton Opt2
      Caption = "Print Current"
      Index = 0
      BackColor = &HFFFFC0&
      Left = 345
      Top = 690
      Width = 1485
      Height = 360
      TabIndex = 103
      Value = 255
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Frame Frame1
      Index = 4
      Left = 1815
      Top = 3360
      Width = 2460
      Height = 540
      TabIndex = 100
      Begin CommandButton btnPrint1
        Caption = "Print"
        Left = 75
        Top = 135
        Width = 1170
        Height = 360
        TabIndex = 102
      End
      Begin CommandButton BTNCLOSE
        Caption = "Close"
        Left = 1245
        Top = 135
        Width = 1170
        Height = 360
        TabIndex = 101
      End
    End
    Begin OptionButton Opt2
      Caption = "VDate Selection"
      Index = 2
      BackColor = &HFFFFC0&
      Left = 4065
      Top = 690
      Width = 1800
      Height = 360
      TabIndex = 99
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Frame Frame1
      Index = 3
      BackColor = &HFFC0FF&
      Left = 345
      Top = 1275
      Width = 5400
      Height = 1500
      Visible = 0   'False
      TabIndex = 96
      Begin TextBox Text2
        Left = 2040
        Top = 720
        Width = 1605
        Height = 270
        TabIndex = 97
        BorderStyle = 0 'None
        Appearance = 0 'Flat
      End
      Begin Label Label1
        Caption = "For Date"
        Index = 7
        Left = 1230
        Top = 720
        Width = 780
        Height = 240
        TabIndex = 98
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 9.75
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin Frame Frame1
      Index = 2
      BackColor = &HBAD3D3&
      Left = 345
      Top = 1275
      Width = 5400
      Height = 1500
      Enabled = 0   'False
      TabIndex = 105
      Begin DataCombo DataCombo3
        Left = 1800
        Top = 435
        Width = 2745
        Height = 315
        TabIndex = 106
      End
      Begin DataCombo DataCombo2
        Index = 0
        Left = 1425
        Top = 1005
        Width = 1140
        Height = 315
        TabIndex = 107
      End
      Begin DataCombo DataCombo2
        Index = 1
        Left = 3705
        Top = 1005
        Width = 1140
        Height = 315
        TabIndex = 108
      End
      Begin Label Label1
        Caption = "From V. No."
        Index = 4
        Left = 255
        Top = 1020
        Width = 1050
        Height = 240
        TabIndex = 111
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 9.75
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label Label1
        Caption = "To V. No."
        Index = 5
        Left = 2745
        Top = 1035
        Width = 840
        Height = 240
        TabIndex = 110
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 9.75
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin Label Label1
        Caption = "V. Type"
        Index = 6
        Left = 840
        Top = 480
        Width = 750
        Height = 240
        TabIndex = 109
        AutoSize = -1  'True
        BackStyle = 0 'Transparent
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 9.75
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
  End
  Begin Frame FrameTDS
    Caption = "T.D.S."
    BackColor = &HBFD0B7&
    Left = 12360
    Top = 990
    Width = 6450
    Height = 2775
    Visible = 0   'False
    TabIndex = 156
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton TDSDelete
      Left = 2790
      Top = 1995
      Width = 585
      Height = 495
      TabIndex = 164
      Picture = "FaVrEnt.frx":686
      DisabledPicture = "FaVrEnt.frx":AC8
      ToolTipText = "Delete "
      Style = 1
    End
    Begin TextBox TxtTDSAMT
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 2310
      Width = 1365
      Height = 225
      TabIndex = 87
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin TextBox TxtTDS
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 2055
      Width = 1365
      Height = 225
      TabIndex = 86
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin TextBox TxtONAMT
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 1800
      Width = 1365
      Height = 225
      TabIndex = 85
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin TextBox TxtTDSNarration
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 585
      Width = 3930
      Height = 1185
      TabIndex = 84
      BorderStyle = 0 'None
      MultiLine = -1  'True
      MaxLength = 255
      Appearance = 0 'Flat
    End
    Begin TextBox TxtTDSCode
      Index = 0
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 330
      Width = 2700
      Height = 225
      TabIndex = 83
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "T.D.S. Amt"
      Index = 20
      ForeColor = &H0&
      Left = 165
      Top = 2325
      Width = 945
      Height = 195
      TabIndex = 161
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "T.D.S. %"
      Index = 19
      ForeColor = &H0&
      Left = 165
      Top = 2070
      Width = 765
      Height = 195
      TabIndex = 160
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "On Amount"
      Index = 18
      ForeColor = &H0&
      Left = 165
      Top = 1815
      Width = 945
      Height = 195
      TabIndex = 159
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Narration"
      Index = 17
      ForeColor = &H0&
      Left = 165
      Top = 585
      Width = 795
      Height = 195
      TabIndex = 158
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "TDS A/C"
      Index = 16
      ForeColor = &H0&
      Left = 165
      Top = 345
      Width = 780
      Height = 195
      TabIndex = 157
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame FRAMEADJUST
    Caption = "Adjustment"
    BackColor = &HE6AC86&
    ForeColor = &HFF&
    Left = 12345
    Top = 735
    Width = 11685
    Height = 3270
    Visible = 0   'False
    TabIndex = 141
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox TXTNARRATION
      BackColor = &HEBDBC7&
      ForeColor = &HFF&
      Left = 90
      Top = 2430
      Width = 10920
      Height = 795
      Text = "Text1"
      TabIndex = 144
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton ADJ_CANCLE
      Left = 11055
      Top = 1935
      Width = 585
      Height = 495
      TabIndex = 147
      Picture = "FaVrEnt.frx":C0A
      DisabledPicture = "FaVrEnt.frx":D4C
      ToolTipText = "Cancel Changes"
      Style = 1
    End
    Begin CommandButton ADJ_OK
      Left = 11055
      Top = 1440
      Width = 585
      Height = 495
      TabIndex = 146
      Picture = "FaVrEnt.frx":E8E
      DisabledPicture = "FaVrEnt.frx":FD0
      ToolTipText = "Ok"
      Style = 1
    End
    Begin CommandButton Command2
      Left = 11055
      Top = 945
      Width = 585
      Height = 495
      TabIndex = 145
      Picture = "FaVrEnt.frx":10D2
      ToolTipText = "Full Adjuatments"
      Style = 1
    End
    Begin TextBox TXTADJ_AMT
      BackColor = &HF7F0DF&
      Left = 4905
      Top = 0
      Width = 1065
      Height = 285
      TabIndex = 143
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin CommandButton BTS_AUTO_ADJ
      Caption = "Auto"
      Left = 11055
      Top = 450
      Width = 585
      Height = 495
      TabIndex = 142
      BeginProperty Font
        Name = "Times New Roman"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DisabledPicture = "FaVrEnt.frx":1514
      ToolTipText = "Ok"
      Style = 1
    End
    Begin MSFlexGrid FgridAdjust
      Left = 45
      Top = 450
      Width = 11010
      Height = 1965
      TabIndex = 163
    End
    Begin Label Label4
      Caption = "MMMM"
      BackColor = &HFFFFFF&
      ForeColor = &HFFFF&
      Left = 1035
      Top = 225
      Width = 4425
      Height = 240
      TabIndex = 154
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "For A/C"
      Index = 13
      BackColor = &H5EB0AC&
      ForeColor = &H0&
      Left = 135
      Top = 225
      Width = 840
      Height = 240
      TabIndex = 155
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label ADJ_LAB8
      ForeColor = &HFFFF&
      Left = 10545
      Top = 225
      Width = 480
      Height = 240
      TabIndex = 153
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label ADJ_LAB5
      BackColor = &HFFFFFF&
      ForeColor = &HFFFF&
      Left = 7590
      Top = 225
      Width = 510
      Height = 240
      TabIndex = 152
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label ADJ_LAB4
      Caption = "MMMM"
      BackColor = &HFFFFFF&
      ForeColor = &HFFFF&
      Left = 6285
      Top = 225
      Width = 1290
      Height = 240
      TabIndex = 151
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Tr.Amt."
      Index = 14
      BackColor = &H5EB0AC&
      ForeColor = &H0&
      Left = 5610
      Top = 225
      Width = 675
      Height = 240
      TabIndex = 150
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Adjusted Amt."
      Index = 15
      BackColor = &H5EB0AC&
      ForeColor = &H0&
      Left = 8205
      Top = 225
      Width = 1290
      Height = 240
      TabIndex = 149
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label ADJ_LAB7
      Caption = "KK"
      BackColor = &HFFFFFF&
      ForeColor = &HFFFF&
      Left = 9495
      Top = 225
      Width = 1050
      Height = 240
      TabIndex = 148
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame FRAMEVLIST
    Caption = "Voucher Entry"
    BackColor = &HC0C0C0&
    ForeColor = &H400000&
    Left = 12345
    Top = 495
    Width = 8520
    Height = 4200
    Visible = 0   'False
    TabIndex = 77
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin MSFlexGrid FGVLIST
      Left = 60
      Top = 1050
      Width = 8400
      Height = 3090
      TabIndex = 78
    End
    Begin TextBox Text1
      BackColor = &HFFFFFF&
      Left = 4395
      Top = 615
      Width = 1185
      Height = 285
      TabIndex = 92
      Alignment = 1 'Right Justify
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin TextBox TXTVDATE2
      BackColor = &HFFFFFF&
      Left = 2565
      Top = 315
      Width = 1170
      Height = 285
      TabIndex = 89
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin TextBox TXTVDATE1
      BackColor = &HFFFFFF&
      Left = 660
      Top = 315
      Width = 1170
      Height = 285
      TabIndex = 88
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin CommandButton BTNVLCLOSE
      Caption = "&Close"
      Left = 7365
      Top = 615
      Width = 1050
      Height = 360
      TabIndex = 94
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton BTNVLOK
      Caption = "&Ok"
      Left = 7365
      Top = 255
      Width = 1050
      Height = 360
      TabIndex = 93
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin DataCombo Dcparty
      Left = 660
      Top = 600
      Width = 3075
      Height = 315
      TabIndex = 90
    End
    Begin DataCombo DataCombo1
      Left = 4395
      Top = 300
      Width = 2940
      Height = 315
      TabIndex = 91
    End
    Begin Label Label1
      Caption = "Vr.Type"
      Index = 11
      ForeColor = &H800000&
      Left = 3795
      Top = 360
      Width = 555
      Height = 195
      TabIndex = 139
      AutoSize = -1  'True
      WordWrap = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label Label1
      Caption = "To"
      Index = 10
      ForeColor = &H800000&
      Left = 2250
      Top = 360
      Width = 270
      Height = 195
      TabIndex = 82
      AutoSize = -1  'True
      WordWrap = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label Label1
      Caption = "Fr.Dt."
      Index = 9
      ForeColor = &H800000&
      Left = 165
      Top = 360
      Width = 390
      Height = 195
      TabIndex = 81
      AutoSize = -1  'True
      WordWrap = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label Label1
      Caption = "Vr.No."
      Index = 12
      ForeColor = &H800000&
      Left = 3795
      Top = 660
      Width = 585
      Height = 195
      TabIndex = 80
      AutoSize = -1  'True
      WordWrap = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label Label1
      Caption = "Party"
      Index = 8
      ForeColor = &H800000&
      Left = 165
      Top = 660
      Width = 465
      Height = 195
      TabIndex = 79
      AutoSize = -1  'True
      WordWrap = -1  'True
      BackStyle = 0 'Transparent
    End
  End
  Begin PictureBox PicDN
    BackColor = &HFF0000&
    Picture = "FaVrEnt.frx":1616
    ForeColor = &H80000008&
    Left = 10065
    Top = 5520
    Width = 300
    Height = 255
    Visible = 0   'False
    TabIndex = 171
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin PictureBox PicUP
    BackColor = &HFF0000&
    Picture = "FaVrEnt.frx":1A58
    ForeColor = &H80000008&
    Left = 0
    Top = 780
    Width = 300
    Height = 225
    Visible = 0   'False
    TabIndex = 170
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin DataGrid DGTDSCODE
    Left = 15705
    Top = 6540
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 114
  End
  Begin TextBox TxtDetailS
    BackColor = &HE0E0E0&
    Left = 10410
    Top = 5490
    Width = 4980
    Height = 1095
    Visible = 0   'False
    TabIndex = 140
    MultiLine = -1  'True
    MaxLength = 255
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 11
    BackColor = &HFFFFFF&
    Left = 330
    Top = 7890
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 59
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 11
    BackColor = &HFFFFFF&
    Left = 990
    Top = 8130
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 62
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 11
    BackColor = &HFFFFFF&
    Left = 15
    Top = 7890
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 58
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 11
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 7890
    Width = 1380
    Height = 210
    Visible = 0   'False
    TabIndex = 61
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 11
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 7890
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 60
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 10
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 7425
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 55
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 10
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 7425
    Width = 1380
    Height = 210
    Visible = 0   'False
    TabIndex = 56
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 10
    BackColor = &HFFFFFF&
    Left = 15
    Top = 7425
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 53
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 10
    BackColor = &HFFFFFF&
    Left = 990
    Top = 7665
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 57
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 10
    BackColor = &HFFFFFF&
    Left = 330
    Top = 7425
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 54
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 9
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 6945
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 50
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 9
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 6945
    Width = 1380
    Height = 210
    Visible = 0   'False
    TabIndex = 51
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 9
    BackColor = &HFFFFFF&
    Left = 15
    Top = 6945
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 48
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 9
    BackColor = &HFFFFFF&
    Left = 990
    Top = 7185
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 52
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 9
    BackColor = &HFFFFFF&
    Left = 330
    Top = 6945
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 49
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 8
    BackColor = &HFFFFFF&
    Left = 330
    Top = 6480
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 44
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 8
    BackColor = &HFFFFFF&
    Left = 990
    Top = 6705
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 47
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 8
    BackColor = &HFFFFFF&
    Left = 15
    Top = 6480
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 43
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 8
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 6480
    Width = 1380
    Height = 210
    Visible = 0   'False
    TabIndex = 46
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 8
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 6480
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 45
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 7
    BackColor = &HFFFFFF&
    Left = 330
    Top = 6000
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 39
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 7
    BackColor = &HFFFFFF&
    Left = 990
    Top = 6240
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 42
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 7
    BackColor = &HFFFFFF&
    Left = 15
    Top = 6000
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 38
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 7
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 5985
    Width = 1380
    Height = 210
    Visible = 0   'False
    TabIndex = 41
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 7
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 5985
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 6
    BackColor = &HFFFFFF&
    Left = 990
    Top = 5760
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 37
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 5
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 4800
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 30
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 5
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 4800
    Width = 1365
    Height = 225
    Visible = 0   'False
    TabIndex = 31
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 5
    BackColor = &HFFFFFF&
    Left = 15
    Top = 4800
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 28
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 5
    BackColor = &HFFFFFF&
    Left = 990
    Top = 5280
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 32
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 5
    BackColor = &HFFFFFF&
    Left = 330
    Top = 4800
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 29
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 4
    BackColor = &HFFFFFF&
    Left = 330
    Top = 4044
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 4
    BackColor = &HFFFFFF&
    Left = 990
    Top = 4540
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 27
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 0
    BackColor = &HFFFFFF&
    Left = 990
    Top = 1500
    Width = 6540
    Height = 210
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 1
    BackColor = &HFFFFFF&
    Left = 990
    Top = 2260
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 2
    BackColor = &HFFFFFF&
    Left = 990
    Top = 3020
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtNar
    Index = 3
    BackColor = &HFFFFFF&
    Left = 990
    Top = 3780
    Width = 6540
    Height = 210
    Visible = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 255
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 0
    BackColor = &HFFFFFF&
    Left = 330
    Top = 1020
    Width = 7200
    Height = 210
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 3
    BackColor = &HFFFFFF&
    Left = 330
    Top = 3288
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 2
    BackColor = &HFFFFFF&
    Left = 330
    Top = 2532
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 1
    BackColor = &HFFFFFF&
    Left = 330
    Top = 1776
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 4
    BackColor = &HFFFFFF&
    Left = 15
    Top = 4044
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 23
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 3
    BackColor = &HFFFFFF&
    Left = 15
    Top = 3288
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 18
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 2
    BackColor = &HFFFFFF&
    Left = 15
    Top = 2532
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 1
    BackColor = &HFFFFFF&
    Left = 15
    Top = 1776
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 0
    BackColor = &HFFFFFF&
    Left = 15
    Top = 1020
    Width = 285
    Height = 210
    Text = "Cr"
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGVchrHlp
    Left = 15390
    Top = 5970
    Width = 4995
    Height = 4320
    Visible = 0   'False
    TabIndex = 115
  End
  Begin MSFlexGrid FGrid1
    Left = 165
    Top = 8355
    Width = 9990
    Height = 570
    Visible = 0   'False
    TabIndex = 75
  End
  Begin TextBox TxtVtYpe
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3180
    Top = 495
    Width = 2295
    Height = 255
    TabIndex = 1
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
    Appearance = 0 'Flat
  End
  Begin TextBox VchDt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 510
    Top = 495
    Width = 1200
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 12
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
  Begin TextBox TxtCr
    Index = 4
    BackColor = &HFFFFFF&
    Left = 9000
    Top = 4044
    Width = 1380
    Height = 210
    Visible = 0   'False
    TabIndex = 26
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 4
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 4044
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 25
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame Frame1
    Caption = "Frame1"
    Index = 0
    BackColor = &HC0C0FF&
    Left = 10425
    Top = 465
    Width = 1950
    Height = 5010
    TabIndex = 69
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin BtnEnh LblShort
      Index = 1
      Left = 15
      Top = 765
      Width = 1935
      Height = 630
      TabIndex = 212
    End
    Begin BtnEnh LblShort
      Index = 2
      Left = 15
      Top = 1395
      Width = 1935
      Height = 630
      TabIndex = 213
    End
    Begin BtnEnh LblShort
      Index = 3
      Left = 15
      Top = 2025
      Width = 1935
      Height = 630
      TabIndex = 214
    End
    Begin BtnEnh LblShort
      Index = 4
      Left = 15
      Top = 2655
      Width = 1935
      Height = 630
      TabIndex = 215
    End
  End
  Begin TextBox TxtDr
    Index = 3
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 3288
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 3
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 3288
    Width = 1365
    Height = 225
    Visible = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 2
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 2532
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 2
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 2532
    Width = 1365
    Height = 210
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 1
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 1776
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 1
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 1776
    Width = 1365
    Height = 210
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCr
    Index = 0
    BackColor = &HFFFFFF&
    Left = 9015
    Top = 1020
    Width = 1365
    Height = 210
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox TxtDr
    Index = 0
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 1020
    Width = 1335
    Height = 210
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox TxtVno
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 6690
    Top = 495
    Width = 1065
    Height = 255
    TabIndex = 2
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
    Appearance = 0 'Flat
  End
  Begin TextBox TxtAcName
    Index = 6
    BackColor = &HFFFFFF&
    Left = 330
    Top = 5535
    Width = 7200
    Height = 210
    Visible = 0   'False
    TabIndex = 34
    BorderStyle = 0 'None
    MaxLength = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtCrDr
    Index = 6
    BackColor = &HFFFFFF&
    Left = 15
    Top = 5535
    Width = 285
    Height = 210
    Visible = 0   'False
    Text = "Cr"
    TabIndex = 33
    BorderStyle = 0 'None
    MaxLength = 2
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtDr
    Index = 6
    BackColor = &HFFFFFF&
    Left = 7620
    Top = 5535
    Width = 1335
    Height = 210
    Visible = 0   'False
    TabIndex = 35
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Line Line1
    Index = 1
    X1 = 10380
    Y1 = 795
    X2 = 10380
    Y2 = 5100
  End
  Begin Label lblTDS
    Caption = "TDSSSSSSSSSSSSSSSSSSSSS"
    ForeColor = &HC0&
    Left = 7575
    Top = 6600
    Width = 3090
    Height = 240
    Visible = 0   'False
    TabIndex = 189
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
  Begin Line Line2
    Index = 3
    X1 = 0
    Y1 = 5445
    X2 = 10410
    Y2 = 5445
  End
  Begin Line Line2
    Index = 1
    X1 = 0
    Y1 = 5490
    X2 = 10410
    Y2 = 5490
  End
  Begin Label Label1
    Caption = "Narration                                                               "
    Index = 3
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 0
    Top = 5520
    Width = 10365
    Height = 225
    TabIndex = 64
    AutoSize = -1  'True
    WordWrap = -1  'True
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
  Begin Label Label6
    Caption = "Cheque No."
    ForeColor = &H800000&
    Left = 30
    Top = 6675
    Width = 930
    Height = 195
    TabIndex = 211
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label5
    Caption = "Cheque Date"
    ForeColor = &H800000&
    Left = 2955
    Top = 6675
    Width = 1035
    Height = 195
    TabIndex = 210
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label7
    Caption = "Clearing Date"
    ForeColor = &H800000&
    Left = 5220
    Top = 6675
    Width = 1140
    Height = 195
    TabIndex = 209
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLDte
    Caption = "user date"
    ForeColor = &HC00000&
    Left = 14505
    Top = 8160
    Width = 885
    Height = 240
    TabIndex = 204
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
  Begin Label LbLUser
    Caption = "user name"
    ForeColor = &HC00000&
    Left = 14505
    Top = 7815
    Width = 1005
    Height = 240
    TabIndex = 203
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
  Begin Label lblDocId
    Caption = "Label2"
    Left = 15120
    Top = 8865
    Width = 465
    Height = 150
    Visible = 0   'False
    TabIndex = 188
  End
  Begin Label LblAmtRs
    Caption = "LblAmtRs"
    BackColor = &H5EB0AC&
    ForeColor = &H800000&
    Left = 10485
    Top = 6825
    Width = 3285
    Height = 840
    TabIndex = 186
    WordWrap = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 5
    ForeColor = &H4080&
    Left = 0
    Top = 5040
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 169
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblHelp
    Caption = "Press <Ins> Bill Wise Adjustment ,<Alt-R> Against Reference , <Alt-T> T.D.S.Entry"
    BackColor = &H0&
    ForeColor = &HC0FFFF&
    Left = 15
    Top = 2865
    Width = 10365
    Height = 240
    Visible = 0   'False
    TabIndex = 165
    Alignment = 2 'Center
    AutoSize = -1  'True
    WordWrap = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 11
    ForeColor = &H4080&
    Left = 0
    Top = 8130
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 138
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 11
    ForeColor = &H4080&
    Left = 10440
    Top = 7920
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 137
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 10
    ForeColor = &H4080&
    Left = 10440
    Top = 7455
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 136
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 10
    ForeColor = &H4080&
    Left = 0
    Top = 7665
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 135
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 9
    ForeColor = &H4080&
    Left = 10440
    Top = 6960
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 134
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 9
    ForeColor = &H4080&
    Left = 0
    Top = 7185
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 133
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 8
    ForeColor = &H4080&
    Left = 0
    Top = 6705
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 132
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 8
    ForeColor = &H4080&
    Left = 10440
    Top = 6480
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 131
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 7
    ForeColor = &H4080&
    Left = 0
    Top = 6240
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 130
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 7
    ForeColor = &H4080&
    Left = 10440
    Top = 6000
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 129
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 6
    ForeColor = &H4080&
    Left = 0
    Top = 5760
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 128
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 6
    ForeColor = &H4080&
    Left = 10440
    Top = 5550
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 127
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 5
    ForeColor = &H4080&
    Left = 0
    Top = 5280
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 126
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 4
    ForeColor = &H4080&
    Left = 0
    Top = 4545
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 125
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 3
    ForeColor = &H4080&
    Left = 0
    Top = 3783
    Width = 960
    Height = 210
    TabIndex = 124
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 2
    ForeColor = &H4080&
    Left = 0
    Top = 3022
    Width = 960
    Height = 210
    TabIndex = 123
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 1
    ForeColor = &H4080&
    Left = 0
    Top = 2261
    Width = 960
    Height = 210
    TabIndex = 122
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNar
    Caption = "Voucher type"
    Index = 0
    ForeColor = &H4080&
    Left = 0
    Top = 1500
    Width = 960
    Height = 210
    TabIndex = 121
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 4
    ForeColor = &H4080&
    Left = 0
    Top = 4284
    Width = 1155
    Height = 225
    Visible = 0   'False
    TabIndex = 120
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 3
    ForeColor = &H4080&
    Left = 0
    Top = 3528
    Width = 1155
    Height = 225
    TabIndex = 119
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 2
    ForeColor = &H4080&
    Left = 0
    Top = 2772
    Width = 1155
    Height = 225
    TabIndex = 118
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 1
    ForeColor = &H4080&
    Left = 0
    Top = 2016
    Width = 1155
    Height = 225
    TabIndex = 117
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCb
    Caption = "Voucher type"
    Index = 0
    ForeColor = &H4080&
    Left = 0
    Top = 1260
    Width = 1155
    Height = 225
    TabIndex = 116
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblDay
    ForeColor = &HFF&
    Left = 1680
    Top = 585
    Width = 45
    Height = 105
    TabIndex = 112
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label3
    Caption = "dIFF"
    Left = 6780
    Top = 5175
    Width = 330
    Height = 225
    Visible = 0   'False
    TabIndex = 74
    Alignment = 1 'Right Justify
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
    Caption = "LblVPrefix"
    ForeColor = &H800000&
    Left = 15015
    Top = 8685
    Width = 705
    Height = 225
    Visible = 0   'False
    TabIndex = 73
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblVtype
    Caption = "Vr.type"
    ForeColor = &HC00000&
    Left = 2520
    Top = 510
    Width = 630
    Height = 225
    TabIndex = 72
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "       Particulars                                                                        "
    Index = 0
    BackColor = &HFF0000&
    ForeColor = &HBEFDFE&
    Left = 15
    Top = 780
    Width = 7545
    Height = 240
    TabIndex = 76
    AutoSize = -1  'True
    WordWrap = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Credit "
    Index = 2
    BackColor = &HFF0000&
    ForeColor = &HBEFDFE&
    Left = 8985
    Top = 780
    Width = 1395
    Height = 240
    TabIndex = 71
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    WordWrap = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = " Debit "
    Index = 1
    BackColor = &HFF0000&
    ForeColor = &HBEFDFE&
    Left = 7575
    Top = 780
    Width = 1395
    Height = 240
    TabIndex = 70
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    WordWrap = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCrAmt
    Caption = "cr"
    Index = 0
    Left = 10200
    Top = 5175
    Width = 180
    Height = 225
    TabIndex = 68
    Alignment = 1 'Right Justify
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
  Begin Label LblDrAmt
    Caption = "dr"
    Index = 0
    Left = 8775
    Top = 5175
    Width = 180
    Height = 225
    TabIndex = 67
    Alignment = 1 'Right Justify
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
  Begin Line Line2
    Index = 0
    X1 = 0
    Y1 = 5100
    X2 = 10410
    Y2 = 5100
  End
  Begin Line Line1
    Index = 2
    X1 = 8970
    Y1 = 795
    X2 = 8970
    Y2 = 5100
  End
  Begin Line Line1
    Index = 0
    X1 = 7560
    Y1 = 795
    X2 = 7560
    Y2 = 5100
  End
  Begin Label LblDt
    Caption = "Date"
    ForeColor = &HC00000&
    Left = 45
    Top = 510
    Width = 405
    Height = 225
    TabIndex = 66
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblVno
    Caption = "Vr.No."
    ForeColor = &HC00000&
    Left = 6120
    Top = 510
    Width = 540
    Height = 225
    TabIndex = 65
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FaVrEnt"

Private global_136 As Integer
Private global_134 As Integer
Private global_168 As Integer
Private global_196 As Integer
Private global_108 As Integer
Private global_110 As Byte
Private global_148 As Variant
Private global_132 As Integer

Private Sub BTS_AUTO_ADJ_Click() '110E4CC
  'Data Table: 5C26A4
  Dim var_A0 As Variant
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Double
  Dim var_118 As Variant
  Dim var_138 As Long
  Dim var_D8 As Variant
  Dim var_F8 As Long
  Dim var_BC As String
  Dim var_14C As Variant
  Dim var_8C As Long
  Dim var_150 As String
  loc_110E18C: On Error Goto loc_110E4A1
  loc_110E1CE: For var_B8 = CInt(CLng(Me.FgridAdjust.Row)) To CInt((CLng(Me.FgridAdjust.Rows) - 1)): var_86 = var_B8 'Integer
  loc_110E21F:   If (CDbl(Val(Me.ADJ_LAB4.Caption)) > CDbl(Val(Me.ADJ_LAB7.Caption))) Then
  loc_110E226:     var_118 = CVar(CLng(var_86)) 'Long
  loc_110E22B:     var_138 = 9
  loc_110E26A:     var_D8 = CVar(CLng(var_86)) 'Long
  loc_110E26F:     var_F8 = &HA
  loc_110E2DA:     If ((CDbl(Val(CStr(Me.FgridAdjust.TextMatrix)))) < CDbl(Val(CStr(Me.FgridAdjust.TextMatrix))))) And (CDbl(Val(Me.ADJ_LAB7.Caption)) <= CDbl(Me.ADJ_LAB4.Caption))) Then
  loc_110E2E1:       var_D8 = CVar(CLng(var_86)) 'Long
  loc_110E2E6:       var_F8 = &HA
  loc_110E30D:       var_8C = CLng(Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_110E33A:       var_D8 = CVar(CLng(var_86)) 'Long
  loc_110E33F:       var_F8 = 9
  loc_110E3A6:       If (CDbl((Val(Me.ADJ_LAB4.Caption) - (Val(Me.ADJ_LAB7.Caption) - CDbl(var_8C)))) >= CDbl(Val(CStr(Me.FgridAdjust.TextMatrix))))) Then
  loc_110E3AD:         var_118 = CVar(CLng(var_86)) 'Long
  loc_110E3B2:         var_138 = &HA
  loc_110E3BF:         var_D8 = CVar(CLng(var_86)) 'Long
  loc_110E3C4:         var_F8 = 9
  loc_110E3EC:         var_B4 = CVar(CStr(Val(CStr(Me.FgridAdjust.TextMatrix))))) 'String
  loc_110E3F4:         Set var_A4 = Me.FgridAdjust
  loc_110E3FA:         LateIdCallSt
  loc_110E416:       Else
  loc_110E41D:         Set var_A4 = Me.ADJ_LAB7
  loc_110E430:         var_C8 = Val(var_A4.Caption)
  loc_110E437:         var_D8 = CVar(CLng(var_86)) 'Long
  loc_110E43C:         var_F8 = &HA
  loc_110E452:         var_BC = Me.ADJ_LAB4.Caption
  loc_110E46A:         var_A0 = CVar(CStr((Val(var_BC) - (var_C8 - CDbl(var_8C))))) 'String
  loc_110E472:         Set var_14C = Me.FgridAdjust
  loc_110E478:         LateIdCallSt
  loc_110E493:       End If
  loc_110E493:     End If
  loc_110E493:   End If
  loc_110E493:   Call Proc_185_150_FEB7C8(var_14C, Me.FgridAdjust.TextMatrix), var_F8, var_D8, var_C8, var_A4, var_B4, var_F8)
  loc_110E49B: Next var_B8 'Integer
  loc_110E4A0: Exit Sub
  loc_110E4A1: ' Referenced from: 110E18C
  loc_110E4A7: Call 0.Method_arg_50 (var_BC)
  loc_110E4AF: var_150 = "BTS_AUTO_ADJ_Click"
  loc_110E4BC: Proc_183_57_104AA84(var_BC)
  loc_110E4C8: Exit Sub
End Sub

Private Sub ADJ_OK_Click() '13119BC
  'Data Table: 5C26A4
  Dim var_9C As Double
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_D0 As Long
  Dim var_E4 As Variant
  Dim var_F8 As String
  Dim var_100 As String
  Dim var_114 As Variant
  Dim var_C0 As Variant
  Dim var_90 As String
  Dim var_150 As Recordset15
  Dim var_128 As Variant
  Dim var_160 As Double
  Dim var_158 As TextBox
  loc_131127C: On Error Goto loc_1311992
  loc_131128B: Me.FRAMEADJUST.Visible = False
  loc_13112BA: Call Proc_185_145_E9BED0(CInt(Val(Me.FRAMEADJUST.Tag)), var_94)
  loc_13112DC: If (Me.RecordCount > 0) Then
  loc_13112E8:   Me.Sort = "VSNo ASC"
  loc_1311310:   var_B0 = CVar(CLng((Val(Me.FRAMEADJUST.Tag) + CDbl(global_108)))) 'Long
  loc_1311315:   var_D0 = 1
  loc_1311358:   var_100 = "VSNO=" & CStr(Val(CStr(Me.FGrid1.TextMatrix))))
  loc_1311361:   Me.Find var_100, 0, 1
  loc_131138F:   If (Me.EOF = 0) Then
  loc_1311392:     ' Referenced from: 1311465
  loc_13113B7:     var_128 = Me.Fields.Item("VSno").Value
  loc_13113E2:     var_C0 = CVar(CLng((Val(Me.FRAMEADJUST.Tag) + CDbl(global_108)))) 'Long
  loc_131142D:     If (1 = CVar(Val(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_131143B:       Me.Delete
  loc_1311446:       Me.MoveNext
  loc_131145F:       If (Me.EOF = &HFF) Then
  loc_1311462:         GoTo loc_1311468
  loc_1311465:       End If
  loc_1311465:       GoTo loc_1311392
  loc_1311468:       ' Referenced from: 1311462
  loc_1311468:     End If
  loc_1311468:   End If
  loc_1311468: End If
  loc_131148D: For var_14C = 1 To CInt((CLng(Me.FgridAdjust.Rows) - 1)): var_86 = var_14C 'Integer
  loc_131149C:   var_D0 = &HA
  loc_13114D0:   If (CDbl(Val(CStr(Me.FgridAdjust.TextMatrix)))) > CDbl(0)) Then
  loc_13114D9:     Set var_150 = global_72 
  loc_13114E8:     var_150.AddNew CVar(CLng(var_86)), var_C0
  loc_13114F1:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_13114F6:     var_D0 = &HD
  loc_1311537:     var_150.Fields.Item("DocId").Value = CVar(CStr(Me.FgridAdjust.TextMatrix)))
  loc_1311550:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_1311555:     var_D0 = 4
  loc_131159F:     var_150.Fields.Item("V_SNo").Value = CVar(Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_13115D6:     var_B0 = CVar(CLng((Val(Me.FRAMEADJUST.Tag) + CDbl(global_108)))) 'Long
  loc_13115DB:     var_D0 = 1
  loc_1311625:     var_150.Fields.Item("VSNo").Value = CVar(Val(CStr(Me.FGrid1.TextMatrix))))
  loc_1311666:     var_F8 = Me.ADJ_LAB8.Caption
  loc_1311682:     If ((Me.ADJ_LAB8.Caption = "Cr") Or (var_F8 = "To")) Then
  loc_1311689:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_131168E:       var_D0 = &HA
  loc_13116D8:       var_150.Fields.Item("CR").Value = CVar(Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_13116EF:     Else
  loc_13116F3:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_13116F8:       var_D0 = &HA
  loc_1311742:       var_150.Fields.Item("DR").Value = CVar(Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_1311756:     End If
  loc_1311779:     var_B0 = CVar(CLng((Val(Me.FRAMEADJUST.Tag) + CDbl(global_108)))) 'Long
  loc_131177E:     var_D0 = 2
  loc_13117BF:     var_150.Fields.Item("SUBCODE").Value = CVar(CStr(Me.FGrid1.TextMatrix)))
  loc_13117E2:     var_D0 = 7
  loc_131181B:     var_114 = var_150.Fields.Item("AgRefNo")
  loc_1311823:     var_114.Value = CVar(CStr(Me.FgridAdjust.TextMatrix)))
  loc_1311843:     var_150.Update CVar(CLng(var_86)), var_C0
  loc_131184A:     Set var_150 = Nothing 
  loc_131184E:   End If
  loc_1311851: Next var_14C 'Integer
  loc_1311870: var_9C = Val(Me.FRAMEADJUST.Tag)
  loc_131188D: var_160 = Val(Me.FRAMEADJUST.Tag)
  loc_131189E: Set var_E4 = Me.TxtCrDr
  loc_13118A4: Call 0.Method_ADJ_OK_Click0 (CInt(var_9C), var_114, var_F8)
  loc_13118C7: Set var_154 = Me.TxtCrDr
  loc_13118CD: Call 0.Method_ADJ_OK_Click0 (CInt(var_114.Text), var_158, var_100)
  loc_13118D5: (var_F8 = "Cr") = var_158.Text
  loc_13118FD: If (var_9C Or (var_100 = "To")) Then
  loc_1311928:   Set var_E4 = Me.TxtCr
  loc_131192E:   Call 0.Method_ADJ_OK_Click0 (CInt(Val(Me.FRAMEADJUST.Tag)), var_114)
  loc_1311936:   var_114.SetFocus
  loc_131194A: Else
  loc_1311957:   var_90 = Me.FRAMEADJUST.Tag
  loc_1311964:   var_9C = Val(var_90)
  loc_1311972:   Set var_E4 = Me.TxtDr
  loc_1311978:   Call 0.Method_ADJ_OK_Click0 (CInt(var_9C), var_114)
  loc_1311980:   var_114.SetFocus
  loc_1311991: End If
  loc_1311991: Exit Sub
  loc_1311992: ' Referenced from: 131127C
  loc_1311998: Call 0.Method_arg_50 (var_90, var_9C)
  loc_13119AD: Proc_183_57_104AA84(var_90, "ADJ_OK_Click")
  loc_13119B9: Exit Sub
End Sub

Private Sub ADJ_CANCLE_Click() 'FAB528
  'Data Table: 5C26A4
  Dim var_B4 As Double
  Dim var_BC As Double
  Dim var_94 As TextBox
  Dim var_A8 As TextBox
  loc_FAB3AC: On Error Goto loc_FAB4FF
  loc_FAB3BB: Me.FRAMEADJUST.Visible = False
  loc_FAB3DD: var_B4 = Val(Me.FRAMEADJUST.Tag)
  loc_FAB3FA: var_BC = Val(Me.FRAMEADJUST.Tag)
  loc_FAB40B: Set var_90 = Me.TxtCrDr
  loc_FAB411: Call 0.Method_ADJ_CANCLE_Click0 (CInt(var_B4), var_94, var_98)
  loc_FAB434: Set var_A4 = Me.TxtCrDr
  loc_FAB43A: Call 0.Method_ADJ_CANCLE_Click0 (CInt(var_94.Text), var_A8, var_AC)
  loc_FAB442: (var_98 = "Cr") = var_A8.Text
  loc_FAB46A: If (var_B4 Or (var_AC = "To")) Then
  loc_FAB495:   Set var_90 = Me.TxtCr
  loc_FAB49B:   Call 0.Method_ADJ_CANCLE_Click0 (CInt(Val(Me.FRAMEADJUST.Tag)), var_94)
  loc_FAB4A3:   var_94.SetFocus
  loc_FAB4B7: Else
  loc_FAB4C4:   var_8C = Me.FRAMEADJUST.Tag
  loc_FAB4D1:   var_B4 = Val(var_8C)
  loc_FAB4DF:   Set var_90 = Me.TxtDr
  loc_FAB4E5:   Call 0.Method_ADJ_CANCLE_Click0 (CInt(var_B4), var_94)
  loc_FAB4ED:   var_94.SetFocus
  loc_FAB4FE: End If
  loc_FAB4FE: Exit Sub
  loc_FAB4FF: ' Referenced from: FAB3AC
  loc_FAB505: Call 0.Method_arg_50 (var_8C, var_B4)
  loc_FAB51A: Proc_183_57_104AA84(var_8C, "ADJ_CANCLE_Click")
  loc_FAB526: Exit Sub
End Sub

Private Sub BtnRefAdjOK_Click() 'EB258C
  'Data Table: 5C26A4
  loc_EB2508: On Error Goto loc_EB2564
  loc_EB2542: If (MsgBox("Save Entries", &H24, "Adjustment", var_E4, var_104) = 6) Then
  loc_EB2545:   Call Proc_185_155_139B2F4()
  loc_EB254A:   Exit Sub
  loc_EB254E: Else
  loc_EB2552:   Set var_108 = Me.FGridRef
  loc_EB2563: End If
  loc_EB2563: Exit Sub
  loc_EB2564: ' Referenced from: EB2508
  loc_EB256A: Call 0.Method_arg_50 (var_10C)
  loc_EB257F: Proc_183_57_104AA84(var_10C, "BtnRefAdjOK_Click")
  loc_EB258B: Exit Sub
End Sub

Private Sub BTNVLCLOSE_Click() 'E19310
  'Data Table: 5C26A4
  loc_E19304: Me.FRAMEVLIST.Visible = False
  loc_E1930C: Exit Sub
End Sub

Private Sub BTNVLOK_Click() 'F74284
  'Data Table: 5C26A4
  Dim var_164 As Variant
  Dim var_17C As String
  loc_F74180: On Error Goto loc_F74259
  loc_F741DE: var_164 = (Trim(CVar(Me.TXTVDATE1)) = vbNullString) And (Trim(CVar(Me.TXTVDATE2)) = vbNullString) And (Trim(CVar(Me.Text1)) = vbNullString)
  loc_F741F4: var_17C = CStr(Me.DataCombo1.BoundText)
  loc_F7424D: If CBool(var_164 And (var_17C = vbNullString) And (CStr(Me.Dcparty.BoundText) = vbNullString)) Then
  loc_F74250:   GoTo loc_F74258
  loc_F74253: End If
  loc_F74253: Call Proc_185_142_130636C()
  loc_F74258: ' Referenced from: F74250
  loc_F74258: Exit Sub
  loc_F74259: ' Referenced from: F74180
  loc_F7425F: Call 0.Method_arg_50 (var_17C)
  loc_F74267: var_1D8 = "BTNVLOK_Click"
  loc_F74274: Proc_183_57_104AA84(var_17C)
  loc_F74280: Exit Sub
End Sub

Private Sub TDSDelete_Click() '117D32C
  'Data Table: 5C26A4
  Dim var_C0 As Variant
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_5C26BA As Connection15
  Dim var_88 As Recordset15
  Dim var_140 As Double
  Dim var_118 As Frame
  loc_117CF68: On Error Goto loc_117D302
  loc_117CF77: If (CInt(global_110) = 2) Then
  loc_117CFB9:   var_D0 = "SELECT * FROM LEDGERTDS WHERE DOCID='" & Me.Fields.Item("DocID").Value 
  loc_117CFC2:   var_F0 = var_D0 & "' AND TDSPOST='Y'" 
  loc_117CFD0:   unk_5C26BA.Execute CStr(var_F0), var_114, -1
  loc_117D009:   If (var_118.RecordCount > 0) Then
  loc_117D025:     MsgBox("T.D.S.Challan Already Made,Can't delete it", 0, var_D0, var_F0, var_114)
  loc_117D035:     Exit Sub
  loc_117D036:   End If
  loc_117D039: Else
  loc_117D050:   If (Me.RecordCount > 0) Then
  loc_117D05C:     Me.Sort = "V_SNo ASC"
  loc_117D084:     var_9C = CVar(CLng((Val(Me.FrameTDS.Tag) + CDbl(global_108)))) 'Long
  loc_117D089:     var_E0 = 1
  loc_117D0AF:     var_140 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_117D0D5:     Me.Find "V_SNO=" & CStr(var_140), 0, 1
  loc_117D103:     If (Me.EOF = 0) Then
  loc_117D106:       ' Referenced from:   117D242
  loc_117D12B:       var_D0 = Me.Fields.Item("V_SNo").Value
  loc_117D156:       var_C0 = CVar(CLng((Val(Me.FrameTDS.Tag) + CDbl(global_108)))) 'Long
  loc_117D1A1:       If (1 = CVar(Val(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_117D1BE:         var_A0 = Me.Fields.Item("TDSPOST")
  loc_117D1CF:         var_F4 = Proc_183_2_E5A304(CVar(var_A0), "SELECT * FROM LEDGERTDS WHERE DOCID='", var_D0, var_138)
  loc_117D1E0:         If (var_F4 = "Y") Then
  loc_117D1F1:           var_9C = "T.D.S.Challan Already Made,Can't delete it"
  loc_117D1FC:           MsgBox(var_9C, 0, var_D0, var_F0, var_114)
  loc_117D20C:           Exit Sub
  loc_117D20D:         End If
  loc_117D218:         Me.Delete
  loc_117D223:         Me.MoveNext
  loc_117D23C:         If (Me.EOF = &HFF) Then
  loc_117D23F:           GoTo loc_117D245
  loc_117D242:         End If
  loc_117D242:         GoTo loc_117D106
  loc_117D245:         ' Referenced from:   117D23F
  loc_117D245:       End If
  loc_117D245:     End If
  loc_117D245:   End If
  loc_117D245: End If
  loc_117D251: Set var_8C = Me.TxtTDSCode
  loc_117D257: Call 0.Method_TDSDelete_Click0 (0, var_A0, vbNullString, 1)
  loc_117D25F: var_A0.Tag = var_140
  loc_117D277: Set var_8C = Me.TxtTDSCode
  loc_117D27D: Call 0.Method_TDSDelete_Click0 (0, var_A0, vbNullString)
  loc_117D285: var_A0.Text = var_E0
  loc_117D29E: Me.TxtONAMT.Text = vbNullString
  loc_117D2B3: Me.TxtTDS.Text = vbNullString
  loc_117D2C8: Me.TxtTDSAMT.Text = vbNullString
  loc_117D2DD: Me.TxtTDSNarration.Text = vbNullString
  loc_117D2F1: Me.FrameTDS.Visible = False
  loc_117D2FE: Set var_88 = Nothing
  loc_117D301: Exit Sub
  loc_117D302: ' Referenced from: 117CF68
  loc_117D308: Call 0.Method_arg_50 (var_F4, var_9C)
  loc_117D31D: Proc_183_57_104AA84(var_F4, "TDSDelete_Click")
  loc_117D329: Exit Sub
End Sub

Private Sub TxtTDSAMT_KeyPress(KeyAscii As Integer) 'E84AFC
  'Data Table: 5C26A4
  loc_E84A98: On Error Goto loc_E84AD4
  loc_E84AA7: If (CInt(global_110) <= 2) Then
  loc_E84AC7:   Proc_183_22_129AEBC(Me.TxtTDSAMT, KeyAscii)
  loc_E84AD3: End If
  loc_E84AD3: Exit Sub
  loc_E84AD4: ' Referenced from: E84A98
  loc_E84ADA: Call 0.Method_arg_50 (var_94, 9)
  loc_E84AEF: Proc_183_57_104AA84(var_94, "TxtTDSAMT_KeyPress")
  loc_E84AFB: Exit Sub
End Sub

Private Sub TxtTDSAMT_Validate(Cancel As Boolean) '12BBB6C
  'Data Table: 5C26A4
  Dim var_88 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_C4 As Long
  Dim var_D8 As Variant
  Dim var_EC As String
  Dim var_10C As Double
  Dim var_F4 As String
  Dim var_110 As Variant
  Dim var_B4 As Variant
  Dim var_148 As Recordset15
  Dim var_104 As String
  Dim var_14C As Field20
  Dim var_158 As Double
  Dim var_150 As TextBox
  loc_12BB530: On Error Goto loc_12BBB44
  loc_12BB54E: If (Me.FrameTDS.Visible = &HFF) Then
  loc_12BB55D:   Me.FrameTDS.Visible = False
  loc_12BB565: End If
  loc_12BB57C: If (Me.RecordCount > 0) Then
  loc_12BB588:   Me.Sort = "V_SNo ASC"
  loc_12BB5B0:   var_A4 = CVar(CLng((Val(Me.FrameTDS.Tag) + CDbl(global_108)))) 'Long
  loc_12BB5B5:   var_C4 = 1
  loc_12BB5F8:   var_F4 = "V_SNO=" & CStr(Val(CStr(Me.FGrid1.TextMatrix))))
  loc_12BB601:   Me.Find var_F4, 0, 1
  loc_12BB62F:   If (Me.EOF = 0) Then
  loc_12BB632:     ' Referenced from: 12BB705
  loc_12BB638:     var_A4 = "V_SNo"
  loc_12BB657:     var_124 = Me.Fields.Item(var_A4).Value
  loc_12BB682:     var_B4 = CVar(CLng((Val(Me.FrameTDS.Tag) + CDbl(global_108)))) 'Long
  loc_12BB6CD:     If (1 = CVar(Val(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_12BB6DB:       Me.Delete
  loc_12BB6E6:       Me.MoveNext
  loc_12BB6FF:       If (Me.EOF = &HFF) Then
  loc_12BB702:         GoTo loc_12BB708
  loc_12BB705:       End If
  loc_12BB705:       GoTo loc_12BB632
  loc_12BB708:       ' Referenced from: 12BB702
  loc_12BB708:     End If
  loc_12BB708:   End If
  loc_12BB708: End If
  loc_12BB70E: Set var_148 = global_96 
  loc_12BB71D: var_148.AddNew var_A4, var_B4
  loc_12BB72F: var_94 = Me.FrameTDS.Tag
  loc_12BB745: var_A4 = CVar(CLng((Val(var_94) + CDbl(global_108)))) 'Long
  loc_12BB74A: var_C4 = 1
  loc_12BB757: Set var_D8 = Me.FGrid1
  loc_12BB768: var_EC = CStr(var_D8.TextMatrix))
  loc_12BB778: var_104 = "V_SNo"
  loc_12BB794: var_148.Fields.Item(var_104).Value = CVar(Val(var_EC))
  loc_12BB7BA: Set var_88 = Me.TxtTDSCode
  loc_12BB7C0: Call 0.Method_TxtTDSAMT_Validate0 (0, var_D8, var_94, var_C4, var_A4, 1)
  loc_12BB7C8: var_B4 = var_D8.Tag
  loc_12BB7F3: var_148.Fields.Item("TDSCode").Value = CVar(var_94)
  loc_12BB80F: Set var_88 = Me.TxtTDSCode
  loc_12BB815: Call 0.Method_TxtTDSAMT_Validate0 (0, var_D8, var_124, var_104)
  loc_12BB831: var_110 = var_148.Fields
  loc_12BB841: var_110.Item("TDSName").Value = CVar(var_D8)
  loc_12BB87D: Set var_D8 = Me.TxtAcName
  loc_12BB883: Call 0.Method_TxtTDSAMT_Validate0 (CInt(Val(Me.FrameTDS.Tag)), var_110, var_EC, Val(Me.FrameTDS.Tag))
  loc_12BB88B: var_10C = var_110.Tag
  loc_12BB8B6: var_148.Fields.Item("TDSDrCode").Value = CVar(var_EC)
  loc_12BB90C: var_148.Fields.Item("ONAMT").Value = CVar(Val(Me.TxtONAMT.Text))
  loc_12BB95B: var_148.Fields.Item("TDS").Value = CVar(Val(Me.TxtTDS.Text))
  loc_12BB986: var_B4 = CVar(Val(Me.TxtTDSAMT.Text)) 'Double
  loc_12BB9A2: var_110 = var_148.Fields.Item("TDSAMT")
  loc_12BB9AA: var_110.Value = var_B4
  loc_12BB9C7: var_A4 = "NARRATION"
  loc_12BB9E3: var_148.Fields.Item(var_A4).Value = CVar(Me.TxtTDSNarration)
  loc_12BB9FD: var_148.Update var_A4, var_B4
  loc_12BBA04: Set var_148 = Nothing 
  loc_12BBA3F: var_158 = Val(Me.FrameTDS.Tag)
  loc_12BBA50: Set var_D8 = Me.TxtCrDr
  loc_12BBA56: Call 0.Method_TxtTDSAMT_Validate0 (CInt(Val(Me.FrameTDS.Tag)), var_110, var_EC, var_158)
  loc_12BBA5E: var_10C = var_110.Text
  loc_12BBA79: Set var_14C = Me.TxtCrDr
  loc_12BBA7F: Call 0.Method_TxtTDSAMT_Validate0 (CInt(var_158), var_150, var_F4)
  loc_12BBA87: (var_EC = "Cr") = var_150.Text
  loc_12BBAAF: If (var_C4 Or (var_F4 = "To")) Then
  loc_12BBADA:   Set var_D8 = Me.TxtCr
  loc_12BBAE0:   Call 0.Method_TxtTDSAMT_Validate0 (CInt(Val(Me.FrameTDS.Tag)), var_110)
  loc_12BBAE8:   var_110.SetFocus
  loc_12BBAFC: Else
  loc_12BBB09:   var_94 = Me.FrameTDS.Tag
  loc_12BBB16:   var_10C = Val(var_94)
  loc_12BBB24:   Set var_D8 = Me.TxtDr
  loc_12BBB2A:   Call 0.Method_TxtTDSAMT_Validate0 (CInt(var_10C), var_110, var_10C)
  loc_12BBB32:   var_110.SetFocus
  loc_12BBB43: End If
  loc_12BBB43: Exit Sub
  loc_12BBB44: ' Referenced from: 12BB530
  loc_12BBB4A: Call 0.Method_arg_50 (var_94, var_10C)
  loc_12BBB5F: Proc_183_57_104AA84(var_94, "TxtTDSAMT_Validate")
  loc_12BBB6B: Exit Sub
End Sub

Private Sub TxtTDS_KeyPress(KeyAscii As Integer) 'E847B4
  'Data Table: 5C26A4
  loc_E84750: On Error Goto loc_E8478C
  loc_E8475F: If (CInt(global_110) <= 2) Then
  loc_E8477F:   Proc_183_22_129AEBC(Me.TxtTDS, KeyAscii)
  loc_E8478B: End If
  loc_E8478B: Exit Sub
  loc_E8478C: ' Referenced from: E84750
  loc_E84792: Call 0.Method_arg_50 (var_94, 3)
  loc_E847A7: Proc_183_57_104AA84(var_94, "TxtTDS_KeyPress")
  loc_E847B3: Exit Sub
End Sub

Private Sub TxtTDS_KeyUp(KeyCode As Integer, Shift As Integer) 'F087A8
  'Data Table: 5C26A4
  loc_F086D4: On Error Goto loc_F0877E
  loc_F086E3: If (CInt(global_110) <= 2) Then
  loc_F086F3:   var_8C = Me.TxtONAMT.Text
  loc_F0875D:   Me.TxtTDSAMT.Text = CStr(Format(CVar(((Val(var_8C) * Val(Me.TxtTDS.Text)) / CDbl(&H64))), "0"))
  loc_F0877D: End If
  loc_F0877D: Exit Sub
  loc_F0877E: ' Referenced from: F086D4
  loc_F08784: Call 0.Method_arg_50 (var_8C, 1, 1)
  loc_F08799: Proc_183_57_104AA84(var_8C, "TxtTDS_KeyUp")
  loc_F087A5: Exit Sub
End Sub

Private Sub btnPrint1_Click() 'F23494
  'Data Table: 5C26A4
  Dim var_88 As CheckBox
  Dim var_90 As String
  Dim arg_2CFF As Double
  loc_F23390: On Error Goto loc_F2346A
  loc_F2339A: Set var_88 = Me.ChkReport
  loc_F233AE: If (var_88.Value = 1) Then
  loc_F233C8:   Call 0.Method_arg_1C (MemVar_1F923B0 & "\FaJVCHRRect.RPT", var_A0)
  loc_F233E0:   Set var_A4 = var_88 
  loc_F233EA:   Set var_88 = Me 
  loc_F233F1:   Proc_7_2_FF1E88(var_88, var_A4)
  loc_F233FC:   MemVar_1F921E4 = var_A4
  loc_F2340A: Else
  loc_F23418:   var_90 = MemVar_1F923B0 & "\FaJVCHR.RPT"
  loc_F23421:   Call 0.Method_arg_1C (var_90, var_A0)
  loc_F23439:   Set var_A4 = var_88 
  loc_F23443:   Set var_88 = Me 
  loc_F2344A:   Proc_7_4_11ABBE0(var_88, var_A4)
  loc_F23455:   MemVar_1F921E4 = var_A4
  loc_F23460: End If
  loc_F23465: MemVar_1F921E4 = Nothing
  loc_F23469: Exit Sub
  loc_F2346A: ' Referenced from: F23390
  loc_F23470: Call 0.Method_arg_50 (var_90, var_88)
  loc_F23485: Proc_183_57_104AA84(var_90, "btnPrint1_Click")
  loc_F23491: Exit Sub
  loc_F23492: arg_2CFF = var_88
End Sub

Private Sub TxtONAMT_KeyPress(KeyAscii As Integer) 'E83944
  'Data Table: 5C26A4
  loc_E838E0: On Error Goto loc_E8391C
  loc_E838EF: If (CInt(global_110) <= 2) Then
  loc_E8390F:   Proc_183_22_129AEBC(Me.TxtONAMT, KeyAscii)
  loc_E8391B: End If
  loc_E8391B: Exit Sub
  loc_E8391C: ' Referenced from: E838E0
  loc_E83922: Call 0.Method_arg_50 (var_94, 9)
  loc_E83937: Proc_183_57_104AA84(var_94, "TxtONAMT_KeyPress")
  loc_E83943: Exit Sub
End Sub

Private Sub TxtONAMT_KeyUp(KeyCode As Integer, Shift As Integer) 'F08D70
  'Data Table: 5C26A4
  loc_F08C9C: On Error Goto loc_F08D46
  loc_F08CAB: If (CInt(global_110) <= 2) Then
  loc_F08CBB:   var_8C = Me.TxtONAMT.Text
  loc_F08D25:   Me.TxtTDSAMT.Text = CStr(Format(CVar(((Val(var_8C) * Val(Me.TxtTDS.Text)) / CDbl(&H64))), "0"))
  loc_F08D45: End If
  loc_F08D45: Exit Sub
  loc_F08D46: ' Referenced from: F08C9C
  loc_F08D4C: Call 0.Method_arg_50 (var_8C, 1, 1)
  loc_F08D61: Proc_183_57_104AA84(var_8C, "TxtONAMT_KeyUp")
  loc_F08D6D: Exit Sub
End Sub

Private Sub FGVLIST_UnknownEvent_9 'F90AA8
  'Data Table: 5C26A4
  Dim var_A8 As Variant
  Dim var_C8 As Long
  Dim var_EC As Variant
  Dim var_F0 As String
  Dim Me As Recordset15
  loc_F9094C: On Error Goto loc_F90A7D
  loc_F90962: var_A8 = CVar(CLng(Me.FGVLIST.Row)) 'Long
  loc_F90967: var_C8 = 8
  loc_F9099E: If (CStr(Me.FGVLIST.TextMatrix)) <> vbNullString) Then
  loc_F909A7:   Me.MoveFirst
  loc_F909C4:   var_C8 = 8
  loc_F909D7:   var_EC = Me.FGVLIST.TextMatrix)
  loc_F909F8:   var_F0 = CStr(var_EC)
  loc_F90A0C:   Me.Find "DOCID='" & var_F0 & "'", 0, 1
  loc_F90A3C:   If (Me.EOF = 0) Then
  loc_F90A5B:     Proc_5_0_110649C(&HFF, Me, global_68, 0, var_108)
  loc_F90A63:     Call Proc_185_144_19C260C(var_EC, var_C8, CVar(CLng(Me.FGVLIST.Row)))
  loc_F90A74:     Me.FRAMEVLIST.Visible = False
  loc_F90A7C:   End If
  loc_F90A7C: End If
  loc_F90A7C: Exit Sub
  loc_F90A7D: ' Referenced from: F9094C
  loc_F90A83: Call 0.Method_arg_50 (var_F0, var_C8)
  loc_F90A98: Proc_183_57_104AA84(var_F0, "FGVLIST_Click")
  loc_F90AA4: Exit Sub
End Sub

Private Sub DGVchrHlp_UnknownEvent_1B 'F5F110
  'Data Table: 5C26A4
  Dim Me As Recordset15
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F5EFF4: On Error Goto loc_F5F0E5
  loc_F5F006: Me.DGVchrHlp.Visible = False
  loc_F5F025: If (Me.RecordCount > 0) Then
  loc_F5F062:   Set var_B4 = Me.TxtVtYpe
  loc_F5F068:   Call 0.Method_DGVchrHlp_UnknownEvent_1B0 (0, var_B8)
  loc_F5F070:   var_B8.Tag = CStr(Me.Fields.Item("V_Type").Value)
  loc_F5F0B4:   var_CC = CStr(Me.Fields.Item("Description").Value)
  loc_F5F0C0:   Set var_B4 = Me.TxtVtYpe
  loc_F5F0C6:   Call 0.Method_DGVchrHlp_UnknownEvent_1B0 (0, var_B8)
  loc_F5F0CE:   var_B8.Text = var_CC
  loc_F5F0E4: End If
  loc_F5F0E4: Exit Sub
  loc_F5F0E5: ' Referenced from: F5EFF4
  loc_F5F0EB: Call 0.Method_arg_50 (var_CC)
  loc_F5F0F3: var_D4 = "DGVchrHlp_KeyDown"
  loc_F5F100: Proc_183_57_104AA84(var_CC)
  loc_F5F10C: Exit Sub
End Sub

Private Sub Command1_Click() '149C5E0
  'Data Table: 5C26A4
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_124 As Variant
  Dim Me As Variant
  Dim var_110 As Variant
  Dim var_114 As Field20
  Dim var_EC As Variant
  Dim var_134 As Variant
  Dim var_138 As String
  Dim unk_5C26BA As Connection15
  Dim var_B0 As Recordset15
  Dim var_B8 As Double
  Dim var_94 As Variant
  Dim var_10C As Variant
  Dim var_98 As Recordset15
  loc_149B960: On Error Goto loc_149C5B8
  loc_149B969: var_A8 = CVar(MemVar_1F92130) 'Variant
  loc_149B970: var_AC = MemVar_1F92130
  loc_149B999: If (Len(Trim(CVar(Me.TxtCrParty))) > 0) Then
  loc_149B9A9:   var_124 = "SELECT SUBGROUP.NAME,LEDGER.SubCode,LEDGER.Narration,LEDGER.AmtCr FROM (LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE) LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE=LEDGER.V_TYPE WHERE LEDGER.DOCID='"
  loc_149B9F2:   unk_5C26BA.Execute CStr(var_124 & Me.Fields.Item("DocID").Value & "' And SUBGROUP.Nature='Bank' And LEDGER.AmtCr>0 ORDER BY LEDGER.V_SNO"), var_10C, -1
  loc_149B9FD:   Set var_B0 = var_14C
  loc_149BA1A: Else
  loc_149BA27:   var_124 = "SELECT SUBGROUP.NAME,LEDGER.SubCode,LEDGER.Narration,LEDGER.AmtDr FROM (LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE) LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE=LEDGER.V_TYPE WHERE LEDGER.DOCID='"
  loc_149BA70:   unk_5C26BA.Execute CStr(var_124 & Me.Fields.Item("DocID").Value & "' And LEDGER.AmtDr>0 ORDER BY LEDGER.V_SNO"), var_10C, -1
  loc_149BA7B:   Set var_B0 = var_14C
  loc_149BA95: End If
  loc_149BAA2: var_124 = "SELECT SUBGROUP.NAME,LEDGER.SubCode,LEDGER.Narration,LEDGER.AmtCr,SUBGROUP.groupcode,SUBGROUP.ChequeType FROM ((LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE)  LEFT JOIN acgroup ON SUBGROUP.groupcode=acgroup.groupcode) LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE=LEDGER.V_TYPE WHERE LEDGER.DOCID='"
  loc_149BAD4: var_EC = var_124 & Me.Fields.Item("DocID").Value 
  loc_149BADD: var_FC = var_EC & "' And SUBGROUP.Nature='Bank' And  LEDGER.AmtCr>0  ORDER BY LEDGER.V_SNO" 
  loc_149BAEB: unk_5C26BA.Execute CStr(var_FC), var_10C, -1
  loc_149BAF6: Set var_BC = var_14C
  loc_149BB27: If (Me.Recordset15.RecordCount = 0) Then
  loc_149BB43:   MsgBox("No Bank Account included.", &H10, var_EC, var_FC, var_10C)
  loc_149BB53:   Exit Sub
  loc_149BB54: End If
  loc_149BB6B: If (var_B0.RecordCount > 0) Then
  loc_149BB99:   If (Proc_183_19_E8DAFC(Me.Text3, "Cheque Date", var_14C) = 0) Then
  loc_149BB9C:     Exit Sub
  loc_149BB9D:   End If
  loc_149BBB2:   Set var_94 = TmpCheqNew(New)
  loc_149BBB5:   ' Referenced from: 149C14D
  loc_149BBC7:   If Not(Me.Recordset15.EOF) Then
  loc_149BBD5:     var_EC = Trim(CVar(Me.TxtCrParty))
  loc_149BBDD:     var_FC = Len(var_EC)
  loc_149BBF0:     If (var_FC > 0) Then
  loc_149BC1C:       Proc_6_39_E7C810(var_EC, CVar(Me.TxtCrParty.Fields.Item("AmtCr")))
  loc_149BC25:       var_B8 = CSng(var_EC)
  loc_149BC35:     Else
  loc_149BC5E:       Proc_6_39_E7C810(var_EC, CVar(Me.Recordset15.Fields.Item("AmtDr")), var_B8)
  loc_149BC67:       var_B8 = CSng(var_EC)
  loc_149BC74:     End If
  loc_149BC99:     If (CDbl(Val(Me.TxtChequeAmt.Text)) <> CDbl(0)) Then
  loc_149BCC1:       If (CDbl(Val(Me.TxtChequeAmt.Text)) > var_B8) Then
  loc_149BCD2:         var_CC = "Cheque Print Amount is greater then voucher amount."
  loc_149BCDD:         MsgBox(var_CC, &H10, var_EC, var_FC, var_10C)
  loc_149BCED:         Exit Sub
  loc_149BCF1:       Else
  loc_149BD0B:         var_B8 = Val(Me.TxtChequeAmt.Text)
  loc_149BD14:       End If
  loc_149BD14:     End If
  loc_149BD1B:     If (var_B8 > CDbl(0)) Then
  loc_149BD29:       var_94.AddNew var_CC, var_124
  loc_149BD54:       If (Len(Trim(CVar(Me.TxtCrParty))) > 0) Then
  loc_149BD62:         var_EC = Trim(CVar(Me.TxtCrParty))
  loc_149BD74:         var_94.Collect = "HeadName"
  loc_149BD83:       Else
  loc_149BDAE:         var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Name")), var_EC, var_B8)) 'String
  loc_149BDBB:         var_94.Collect = "HeadName"
  loc_149BDCA:       End If
  loc_149BDDB:       var_94.Collect = "Amt"
  loc_149BE2B:       var_EC = CVar(Replace(Proc_6_43_10041F4(var_B8, CStr(0), CStr(0), CVar(var_B8)), "0", vbNullString, 1, -1, 0)) 'String
  loc_149BE39:       var_10C = Space(&H19) & Ucase(var_EC) 
  loc_149BE47:       var_94.Collect = "AmtWord"
  loc_149BE88:       var_FC = Format(CVar(Me.Text3), "DD/MMM/YYYY")
  loc_149BE92:       var_134 = CDate(CDate(var_FC))
  loc_149BEA0:       var_94.Collect = "Dt"
  loc_149BED2:       If (CLng(Me.ChkCompName.Value) = 1) Then
  loc_149BEE2:         var_94.Collect = "SiteName"
  loc_149BEEA:       Else
  loc_149BEEA:         var_124 = vbNullString
  loc_149BEF9:         var_94.Collect = "SiteName"
  loc_149BEFE:       End If
  loc_149BF1D:       If (CLng(Me.ChkCompName.Value) = 1) Then
  loc_149BF23:         var_124 = CVar(MemVar_1F92070) 'String
  loc_149BF30:         var_94.Collect = "SiteCode"
  loc_149BF38:       Else
  loc_149BF38:         var_124 = vbNullString
  loc_149BF47:         var_94.Collect = "SiteCode"
  loc_149BF4C:       End If
  loc_149BF6B:       If (CLng(Me.ChkAcNo.Value) = 1) Then
  loc_149BF85:         If (Me.Recordset15.RecordCount > 0) Then
  loc_149BFB3:           var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RefFileNo")), var_124, var_124, var_124, var_A8, var_134, 1)) 'String
  loc_149BFC0:           var_94.Collect = "AcNo"
  loc_149BFD2:         Else
  loc_149BFD2:           var_124 = vbNullString
  loc_149BFE1:           var_94.Collect = "AcNo"
  loc_149BFE6:         End If
  loc_149BFE9:       Else
  loc_149BFE9:         var_124 = vbNullString
  loc_149BFF8:         var_94.Collect = "AcNo"
  loc_149BFFD:       End If
  loc_149C018:       If (Me.OptAuthoSign.Value = &HFF) Then
  loc_149C030:         var_DC = CVar(Me.OptAuthoSign.Caption) 'String
  loc_149C03D:         var_94.Collect = "SName"
  loc_149C04B:       Else
  loc_149C066:         If (Me.OptDirector.Value = &HFF) Then
  loc_149C07E:           var_DC = CVar(Me.OptDirector.Caption) 'String
  loc_149C08B:           var_94.Collect = "SName"
  loc_149C099:         Else
  loc_149C0B4:           If (Me.OptPresident.Value = &HFF) Then
  loc_149C0CC:             var_DC = CVar(Me.OptPresident.Caption) 'String
  loc_149C0D9:             var_94.Collect = "SName"
  loc_149C0E7:           Else
  loc_149C102:             If (Me.OptBlank.Value = &HFF) Then
  loc_149C10C:               Set var_110 = Me.OptBlank
  loc_149C112:               var_138 = var_110.Caption
  loc_149C11A:               var_DC = CVar(var_138) 'String
  loc_149C11E:               var_CC = "SName"
  loc_149C127:               var_94.Collect = var_CC
  loc_149C132:             End If
  loc_149C132:           End If
  loc_149C132:         End If
  loc_149C132:       End If
  loc_149C13D:       var_94.Update var_CC, var_124
  loc_149C142:     End If
  loc_149C148:     var_B0.MoveNext
  loc_149C14D:     GoTo loc_149BBB5
  loc_149C150:   End If
  loc_149C15B:   var_94.Clone
  loc_149C166:   Set var_98 = var_110
  loc_149C172:   var_150 = var_98.RecordCount
  loc_149C180:   If (var_150 <= 0) Then
  loc_149C189:     Call 0.Method_arg_50 (var_138, -1, var_110, var_DC, var_DC, var_DC, var_DC, var_124)
  loc_149C1AA:     MsgBox("** No Records Found to Print **", &H40, CVar(var_138), var_FC, var_10C)
  loc_149C1BF:     global_204 = 0
  loc_149C1C2:     Exit Sub
  loc_149C1C3:   End If
  loc_149C1F0:   var_EC = Len(Me.Recordset15.Fields.Item("ChequeType").Value)
  loc_149C1F4:   var_124 = 0
  loc_149C206:   If (var_EC <= var_124) Then
  loc_149C222:     MsgBox("Please Define Cheque Type Bank in A/C Ledger Entry", 0, var_EC, var_FC, var_10C)
  loc_149C232:     Exit Sub
  loc_149C236:   Else
  loc_149C239:     var_CC = "ChequeType"
  loc_149C250:     var_114 = Me.Recordset15.Fields.Item(var_CC)
  loc_149C261:     var_EC = CVar(Proc_6_38_E68A98(CVar(var_114), global_204, var_124, var_EC, 1)) 'String
  loc_149C267:     var_FC = Trim(var_EC)
  loc_149C270:     var_138 = CStr(var_FC)
  loc_149C276:     global_212 = var_138
  loc_149C289:   End If
  loc_149C28F:   Call 0.Method_arg_50 (var_138, var_10C, var_EC)
  loc_149C2AC:   global_208 = CStr(Ucase(CVar(var_138)))
  loc_149C2C0:   global_208 = vbNullString
  loc_149C2EB:   Set var_110 = var_98 
  loc_149C2F2:   CreateFieldDefFile(var_110, MemVar_1F923B0 & "\" & global_212 & ".ttx", &HFF)
  loc_149C31D:   var_138 = MemVar_1F923B0 & "\"
  loc_149C337:   Call 0.Method_arg_1C (var_138 & global_212 & ".RPT", var_CC, var_110)
  loc_149C342:   MemVar_1F921E4 = var_110
  loc_149C36B:   Call 0.Method_arg_64 (var_110, CVar(var_110), var_124)
  loc_149C373:   Call 0.Method_arg_2C (var_134, var_B8)
  loc_149C381:   Call 0.Method_arg_150 (var_14C)
  loc_149C38B:   Set var_98 = Nothing
  loc_149C39F:   Call 0.Method_arg_90 (var_110, var_150)
  loc_149C3A7:   Call 0.Method_arg_24 (var_162)
  loc_149C3B3:   For var_166 =  To CInt(var_150): 1 = var_166 'Integer
  loc_149C3CC:     Call 0.Method_arg_90 (var_110, CLng(var_162))
  loc_149C3D4:     Call 0.Method_arg_20 (var_114)
  loc_149C3DC:     Call 0.Method_arg_30 (var_138)
  loc_149C3F2:     var_178 = Ucase(CVar(var_138)) 'Variant
  loc_149C422:     If (var_178 = Ucase("AccountPayee")) Then
  loc_149C42C:       Set var_110 = Me.ChkAcPayee
  loc_149C444:       If (CLng(var_110.Value) = 1) Then
  loc_149C45A:         Call 0.Method_arg_90 (var_110, CLng(var_162))
  loc_149C462:         Call 0.Method_arg_20 (var_114)
  loc_149C46A:         Call 0.Method_arg_38 ("'Yes'")
  loc_149C479:       Else
  loc_149C48C:         Call 0.Method_arg_90 (var_110, CLng(var_162))
  loc_149C494:         Call 0.Method_arg_20 (var_114)
  loc_149C49C:         Call 0.Method_arg_38 ("'No'")
  loc_149C4A8:       End If
  loc_149C4AB:     Else
  loc_149C4CD:       If (var_178 = Ucase("FullDate")) Then
  loc_149C4D7:         Set var_110 = Me.ChkFullDate
  loc_149C4EF:         If (CLng(var_110.Value) = 1) Then
  loc_149C505:           Call 0.Method_arg_90 (var_110, CLng(var_162))
  loc_149C50D:           Call 0.Method_arg_20 (var_114)
  loc_149C515:           Call 0.Method_arg_38 ("'Yes'")
  loc_149C524:         Else
  loc_149C537:           Call 0.Method_arg_90 (var_110, CLng(var_162))
  loc_149C53F:           Call 0.Method_arg_20 (var_114)
  loc_149C547:           Call 0.Method_arg_38 ("'No'")
  loc_149C553:         End If
  loc_149C553:       End If
  loc_149C553:     End If
  loc_149C556:   Next var_166 'Integer
  loc_149C56E:   Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_149C578:   MemVar_1F921E4 = Nothing
  loc_149C57F: Else
  loc_149C585:   Call 0.Method_arg_50 (var_138, global_208)
  loc_149C5A6:   MsgBox("** No Records Found to Print **", &H40, CVar(var_138), var_FC, var_10C)
  loc_149C5B6:   Exit Sub
  loc_149C5B7: End If
  loc_149C5B7: Exit Sub
  loc_149C5B8: ' Referenced from: 149B960
  loc_149C5BE: Call 0.Method_arg_50 (var_138)
  loc_149C5D3: Proc_183_57_104AA84(var_138, "FA CHEQUE PRINTING")
  loc_149C5DF: Exit Sub
End Sub

Private Sub TXTVDATE1_GotFocus() 'E6505C
  'Data Table: 5C26A4
  loc_E65018: On Error Goto loc_E65033
  loc_E65025: Call Proc_185_163_E215F4(Me.TXTVDATE1)
  loc_E6502D: Call Proc_185_169_F64464()
  loc_E65032: Exit Sub
  loc_E65033: ' Referenced from: E65018
  loc_E65039: Call 0.Method_arg_50 (var_8C)
  loc_E65041: var_94 = "TXTVDATE1_GotFocus"
  loc_E6504E: Proc_183_57_104AA84(var_8C)
  loc_E6505A: Exit Sub
End Sub

Private Sub TXTVDATE1_KeyDown(KeyCode As Integer, Shift As Integer) 'E5C204
  'Data Table: 5C26A4
  Dim arg_2CFF As Integer
  loc_E5C1C4: On Error Goto loc_E5C1DA
  loc_E5C1D1: If (CLng(KeyCode) = &H1B) Then
  loc_E5C1D4:   Call Proc_185_169_F64464()
  loc_E5C1D9: End If
  loc_E5C1D9: Exit Sub
  loc_E5C1DA: ' Referenced from: E5C1C4
  loc_E5C1E0: Call 0.Method_arg_50 (var_88)
  loc_E5C1F5: Proc_183_57_104AA84(var_88)
  loc_E5C201: Exit Sub
  loc_E5C202: arg_2CFF = "TXTVDATE1_KeyDown"
End Sub

Private Sub TXTVDATE1_LostFocus() 'E9892C
  'Data Table: 5C26A4
  loc_E988B4: On Error Goto loc_E98901
  loc_E988CD: Call 0.Method_arg_184 (Me.TXTVDATE1)
  loc_E988D9: Set var_90 = Me.TXTVDATE1
  loc_E988DF: Me.TXTVDATE1.Text = var_8C
  loc_E988F8: Call Proc_185_164_E264C0(Me.TXTVDATE1)
  loc_E98900: Exit Sub
  loc_E98901: ' Referenced from: E988B4
  loc_E98907: Call 0.Method_arg_50 (var_8C)
  loc_E9891C: Proc_183_57_104AA84(var_8C, "TXTVDATE1_LOSTFOCUS")
  loc_E98928: Exit Sub
End Sub

Private Sub TXTVDATE1_Validate(Cancel As Boolean) 'E83DDC
  'Data Table: 5C26A4
  loc_E83D78: On Error Goto loc_E83DB3
  loc_E83D91: Call 0.Method_arg_184 (Me.TXTVDATE1)
  loc_E83D9D: Set var_90 = Me.TXTVDATE1
  loc_E83DA3: Me.TXTVDATE1.Text = var_8C
  loc_E83DB2: Exit Sub
  loc_E83DB3: ' Referenced from: E83D78
  loc_E83DB9: Call 0.Method_arg_50 (var_8C)
  loc_E83DCE: Proc_183_57_104AA84(var_8C, "TXTVDATE1_Validate")
  loc_E83DDA: Exit Sub
End Sub

Private Sub TXTVDATE2_GotFocus() 'E630E8
  'Data Table: 5C26A4
  loc_E630A4: On Error Goto loc_E630BF
  loc_E630B1: Call Proc_185_163_E215F4(Me.TXTVDATE2)
  loc_E630B9: Call Proc_185_169_F64464()
  loc_E630BE: Exit Sub
  loc_E630BF: ' Referenced from: E630A4
  loc_E630C5: Call 0.Method_arg_50 (var_8C)
  loc_E630CD: var_94 = "TXTVDATE2_GotFocus"
  loc_E630DA: Proc_183_57_104AA84(var_8C)
  loc_E630E6: Exit Sub
End Sub

Private Sub TXTVDATE2_KeyDown(KeyCode As Integer, Shift As Integer) 'E5CF18
  'Data Table: 5C26A4
  Dim arg_2CFF As Integer
  loc_E5CED8: On Error Goto loc_E5CEEE
  loc_E5CEE5: If (CLng(KeyCode) = &H1B) Then
  loc_E5CEE8:   Call Proc_185_169_F64464()
  loc_E5CEED: End If
  loc_E5CEED: Exit Sub
  loc_E5CEEE: ' Referenced from: E5CED8
  loc_E5CEF4: Call 0.Method_arg_50 (var_88)
  loc_E5CF09: Proc_183_57_104AA84(var_88)
  loc_E5CF15: Exit Sub
  loc_E5CF16: arg_2CFF = "TXTVDATE2_LOSTFOCUS"
End Sub

Private Sub TXTVDATE2_LostFocus() 'E99140
  'Data Table: 5C26A4
  loc_E990C8: On Error Goto loc_E99115
  loc_E990E1: Call 0.Method_arg_184 (Me.TXTVDATE2)
  loc_E990ED: Set var_90 = Me.TXTVDATE2
  loc_E990F3: Me.TXTVDATE2.Text = var_8C
  loc_E9910C: Call Proc_185_164_E264C0(Me.TXTVDATE2)
  loc_E99114: Exit Sub
  loc_E99115: ' Referenced from: E990C8
  loc_E9911B: Call 0.Method_arg_50 (var_8C)
  loc_E99130: Proc_183_57_104AA84(var_8C, "TXTVDATE2_LOSTFOCUS")
  loc_E9913C: Exit Sub
  loc_E9913D: var_8C = 
End Sub

Private Sub TXTVDATE2_Validate(Cancel As Boolean) 'E85E04
  'Data Table: 5C26A4
  loc_E85DA0: On Error Goto loc_E85DDB
  loc_E85DB9: Call 0.Method_arg_184 (Me.TXTVDATE2)
  loc_E85DC5: Set var_90 = Me.TXTVDATE2
  loc_E85DCB: Me.TXTVDATE2.Text = var_8C
  loc_E85DDA: Exit Sub
  loc_E85DDB: ' Referenced from: E85DA0
  loc_E85DE1: Call 0.Method_arg_50 (var_8C)
  loc_E85DF6: Proc_183_57_104AA84(var_8C, "TXTVDATE2_Validate")
  loc_E85E02: Exit Sub
End Sub

Private Sub Form_Load() '13AFE94
  'Data Table: 5C26A4
  Dim var_98 As String
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim Me As Variant
  Dim var_BC As Variant
  Dim var_10C As String
  Dim var_110 As String
  Dim unk_5C26BA As Connection15
  Dim var_100 As Variant
  Dim var_130 As Variant
  Dim var_120 As String
  Dim var_1E0 As Variant
  Dim var_8C As Recordset15
  loc_13AF574: On Error Goto loc_13AFE6A
  loc_13AF585: var_90 = "Where (LOGSite_Code='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO')"
  loc_13AF592: var_98 = "And (LOGSite_Code='" & MemVar_1F92078
  loc_13AF599: var_94 = var_98 & "' OR LOGSITE_CODE='HO')"
  loc_13AF5A9: Set var_BC = Me.TopCtrl1
  loc_13AF5AF: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_13AF5BD: Call 0.Method_arg_50 (var_98)
  loc_13AF5C5: var_CC = CVar(var_98) 'String
  loc_13AF5CD: Set var_BC = Me.TopCtrl1
  loc_13AF5D3: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_CC)
  loc_13AF5E3: global_136 = 4
  loc_13AF5F5: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), 0)
  loc_13AF611: Call 0.Method_arg_38 (MemVar_1F923AC, CByte(3))
  loc_13AF622: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_13AF633: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_13AF644: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_13AF655: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_13AF666: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_13AF677: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_13AF688: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_13AF699: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_13AF6AA: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_13AF6C4: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_13AF6D2: Set var_BC = MemVar_1F92044
  loc_13AF6E1: Call 0.Method_Form_Load8 (var_BC)
  loc_13AF6F7: Me.TopCtrl1.Clone
  loc_13AF711: Call 0.Method_arg_50 (var_BC, -1)
  loc_13AF73A: Proc_6_17_EAA2B0(var_CC, MemVar_1F92078, "Select * from enviro WHERE LogSITE_CODE=", var_100)
  loc_13AF742: var_E0 = -1 & var_CC 
  loc_13AF750: Me.Connection15.Execute CStr(var_E0), var_BC, var_BC
  loc_13AF761: Set global_80 = var_BC
  loc_13AF78F: If (Me.RecordCount > 0) Then
  loc_13AF7A4:   var_BC = Me.Fields
  loc_13AF7B4:   var_CC = CVar(var_BC.Item("AddModifyEntryInBackDate")) 'Address
  loc_13AF7BD:   var_E0 = CVar(Proc_6_38_E68A98(var_CC)) 'String
  loc_13AF7C3:   var_100 = Trim(var_E0)
  loc_13AF7D2:   global_216 = CStr(var_100)
  loc_13AF7E5: End If
  loc_13AF807: var_10C = "SELECT V_TYPE,DESCRIPTION FROM VOUCHER_TYPE WHERE Category='FA' AND SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_13AF817: unk_5C26BA.Execute var_10C & "' ORDER BY DESCRIPTION", var_CC, -1
  loc_13AF828: Set global_80 = var_BC
  loc_13AF84A: CVarUnk
  loc_13AF84F: VerifyVarObj
  loc_13AF855: Set var_BC = Me.DataCombo3
  loc_13AF85B: LateIdStAd
  loc_13AF879: Me.DataCombo3.ListField = "DESCRIPTION"
  loc_13AF891: Me.DataCombo3.BoundColumn = "V_TYPE"
  loc_13AF8AE: var_10C = "SELECT V_TYPE,DESCRIPTION FROM VOUCHER_TYPE WHERE Category='FA' AND SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_13AF8C3: Me.DataCombo3.Tag = CVar(var_10C & "' ORDER BY DESCRIPTION")
  loc_13AF8E0: CVarUnk
  loc_13AF8E5: VerifyVarObj
  loc_13AF8EB: Set var_BC = Me.DataCombo1
  loc_13AF8F1: LateIdStAd
  loc_13AF90F: Me.DataCombo1.ListField = "DESCRIPTION"
  loc_13AF927: Me.DataCombo1.BoundColumn = "V_TYPE"
  loc_13AF944: var_10C = "SELECT V_TYPE,DESCRIPTION FROM VOUCHER_TYPE WHERE Category='FA' AND SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_13AF94B: var_CC = CVar(var_10C & "' ORDER BY DESCRIPTION") 'String
  loc_13AF953: Set var_BC = Me.DataCombo1
  loc_13AF959: var_BC.Tag = var_CC
  loc_13AF991: unk_5C26BA.Execute "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_CC, -1
  loc_13AF9A2: Set global_80 = var_BC
  loc_13AF9CE: If (Me.RecordCount <= 0) Then
  loc_13AF9EA:   MsgBox("Parameter Not Set", 0, var_E0, var_100, var_130)
  loc_13AF9FA:   Exit Sub
  loc_13AF9FB: End If
  loc_13AFA05: Set var_BC = Me.TopCtrl1
  loc_13AFA0B: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030007("Voucher Entry")
  loc_13AFA52: If (Me.Fields.Item("FilterAC").Value = "No") Then
  loc_13AFA5F:   Set global_88 = New 
  loc_13AFA70:   Set global_92 = New 
  loc_13AFA8C:   var_BC = Me.Recordset15.Fields
  loc_13AFAB6:   If (var_BC.Item("ShowCityName").Value = "Yes") Then
  loc_13AFAD7:     var_98 = "Select SubCode,NameWithCity AS Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup " & var_90
  loc_13AFADE:     var_CC = CVar("SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & " and (ACTIVEYN=1 OR ACTIVEYN IS NULL) order by Name") 'String
  loc_13AFAE8:     Me.Open var_CC, CVar(MemVar_1F921DC), 1
  loc_13AFB01:     Me.Clone
  loc_13AFB12:     Set global_92 = var_BC
  loc_13AFB20:   Else
  loc_13AFB3E:     var_98 = "Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup " & var_90
  loc_13AFB45:     var_CC = CVar("SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & " and (ACTIVEYN=1 OR ACTIVEYN IS NULL) order by Name") 'String
  loc_13AFB4F:     Me.Open var_CC, CVar(MemVar_1F921DC), 1
  loc_13AFB68:     Me.Clone
  loc_13AFB79:     Set global_92 = var_BC
  loc_13AFB84:   End If
  loc_13AFB84: End If
  loc_13AFB8E: Set global_104 = New 
  loc_13AFBB3: var_98 = "Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES,'' AS NameWithADDR From ViewSubgroup WHERE NATURE='T.D.S.' " & var_94
  loc_13AFBBA: var_CC = CVar(var_98 & " order by Name") 'String
  loc_13AFBC4: Me.Open var_CC, CVar(MemVar_1F921DC), 1
  loc_13AFBEB: Proc_183_7_EB0C44(var_CC, MemVar_1F920F4, 3, -1, -1, var_BC, 3)
  loc_13AFBFB: Proc_183_7_EB0C44(var_140, MemVar_1F920FC, -1, -1, var_BC)
  loc_13AFC25: var_E0 = CVar("SELECT DOCID,SITE_CODE,LOGSITE_CODE FROM LEDGERM WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' AND V_DATE BETWEEN ") 'String
  loc_13AFC3F: var_120 = " AND V_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE Category='FA' AND SITE_CODE='"
  loc_13AFC6A: var_1E0 = var_E0 & var_CC & " AND " & var_140 & var_120 & CVar(MemVar_1F92070) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F92078) & "') ORDER BY V_Date,DOCID" 
  loc_13AFC75: Me.Recordset15.Open var_1E0, CVar(MemVar_1F921DC), 2
  loc_13AFCA2: Me.TXTADJ_AMT.Visible = False
  loc_13AFCB6: Me.FRAMEADJUST.Visible = False
  loc_13AFCC6: Call 0.Method_arg_64 (&HE0E0E0, 3, -1, 3)
  loc_13AFCD7: Set var_BC = Me
  loc_13AFCE6: Proc_5_1_100CB50("INI", var_BC, New)
  loc_13AFD08: If (Me.RecordCount > 0) Then
  loc_13AFD34:   var_110 = "SELECT DOCID FROM LastVoucher where SITE_cODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "' AND U_Name='"
  loc_13AFD4B:   unk_5C26BA.Execute var_110 & MemVar_1F920C8 & "' ORDER BY U_EntDt DESC", var_CC, -1
  loc_13AFD56:   Set var_8C = var_BC
  loc_13AFD82:   If (var_8C.RecordCount > 0) Then
  loc_13AFD94:     var_BC = var_8C.Fields
  loc_13AFDAD:     var_98 = Proc_183_2_E5A304(CVar(var_BC.Item("DocID")), var_BC, -1)
  loc_13AFDBE:     If ("SELECT DOCID FROM LastVoucher where SITE_cODE='" & MemVar_1F92070 <> vbNullString) Then
  loc_13AFDE6:       var_BC = var_8C.Fields
  loc_13AFE0B:       var_98 = CStr("DocId='" & var_BC.Item("DocID").Value & "'")
  loc_13AFE15:       Me.Find var_98, 0, 1
  loc_13AFE2D:     End If
  loc_13AFE2D:   End If
  loc_13AFE2D: End If
  loc_13AFE2D: Call Proc_185_170_13BE820(var_120, var_BC)
  loc_13AFE32: Call Proc_185_144_19C260C(var_BC)
  loc_13AFE44: Me.LblAmtRs.Caption = vbNullString
  loc_13AFE59: Me.lblTDS.Caption = vbNullString
  loc_13AFE66: Set var_8C = Nothing
  loc_13AFE69: Exit Sub
  loc_13AFE6A: ' Referenced from: 13AF574
  loc_13AFE70: Call 0.Method_arg_50 (var_98)
  loc_13AFE78: var_10C = "Form_Load"
  loc_13AFE85: Proc_183_57_104AA84(var_98)
  loc_13AFE91: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'F11D58
  'Data Table: 5C26A4
  loc_F11C64: On Error Goto loc_F11D2E
  loc_F11C72: Set global_68 = Nothing
  loc_F11C84: Set global_76 = Nothing
  loc_F11C96: Set global_80 = Nothing
  loc_F11CA8: Set global_180 = Nothing
  loc_F11CBA: Set global_88 = Nothing
  loc_F11CCC: Set global_92 = Nothing
  loc_F11CDE: Set global_72 = Nothing
  loc_F11CF0: Set global_100 = Nothing
  loc_F11D02: Set global_96 = Nothing
  loc_F11D14: Set global_104 = Nothing
  loc_F11D26: Set global_84 = Nothing
  loc_F11D2D: Exit Sub
  loc_F11D2E: ' Referenced from: F11C64
  loc_F11D34: Call 0.Method_arg_50 (var_8C)
  loc_F11D3C: var_94 = "Form_Unload"
  loc_F11D49: Proc_183_57_104AA84(var_8C)
  loc_F11D55: Exit Sub
End Sub

Private Sub Form_Activate() 'F92C10
  'Data Table: 5C26A4
  Dim Me As Variant
  Dim var_8C As String
  Dim unk_5C26BA As Connection15
  Dim var_B8 As TextBox
  loc_F92AAC: On Error Goto loc_F92BE5
  loc_F92AB8: If (global_134 = &HFF) Then
  loc_F92AE7:   If ((Me.Visible = &HFF) And ((Me.Enabled = &HFF) > 0)) Then
  loc_F92AF0:     Me.SetFocus
  loc_F92AFA:     global_134 = 0
  loc_F92AFD:   End If
  loc_F92B11:   var_8C = "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078
  loc_F92B21:   unk_5C26BA.Execute var_8C & "'", var_B0, -1
  loc_F92B32:   Set global_80 = var_B4
  loc_F92B53:   Set var_B4 = Me.TxtVtYpe
  loc_F92B59:   Call 0.Method_Form_Activate0 (0, var_B8, var_8C)
  loc_F92B61:   var_B4 = var_B8.Tag
  loc_F92B78:   If (var_8C <> vbNullString) Then
  loc_F92B80:     var_BC = 0
  loc_F92B92:     Set var_B4 = Me.TxtVtYpe
  loc_F92B98:     Call 0.Method_Form_Activate0 (0, var_B8, var_8C)
  loc_F92BA0:     var_BC = var_B8.Tag
  loc_F92BAC:     Call Proc_185_166_1324960(var_8C)
  loc_F92BC2:   Else
  loc_F92BD2:     var_8C = 0
  loc_F92BD8:     Call Proc_185_166_1324960(var_8C, 0)
  loc_F92BE4:   End If
  loc_F92BE4: End If
  loc_F92BE4: Exit Sub
  loc_F92BE5: ' Referenced from: F92AAC
  loc_F92BEB: Call 0.Method_arg_50 (var_8C)
  loc_F92C00: Proc_183_57_104AA84(var_8C, "Form_Activate")
  loc_F92C0C: Exit Sub
  loc_F92C0D: StAryRecCopy
End Sub

Private Sub Form_Deactivate() 'E91458
  'Data Table: 5C26A4
  loc_E913E8: On Error Goto loc_E9142E
  loc_E913F1: Call 0.Method_arg_1E8 (var_88)
  loc_E91400: If TypeOf var_88 Is arg_1 Then
  loc_E91409:   Call 0.Method_arg_1E8 (var_88)
  loc_E9141A:   Set global_64 = var_88
  loc_E9142A:   global_134 = &HFF
  loc_E9142D: End If
  loc_E9142D: Exit Sub
  loc_E9142E: ' Referenced from: E913E8
  loc_E91434: Call 0.Method_arg_50 (var_90)
  loc_E91449: Proc_183_57_104AA84(var_90, "Form_Deactivate")
  loc_E91455: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '17ECE30
  'Data Table: 5C26A4
  Dim var_9C As Variant
  Dim var_B8 As String
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim var_BC As Integer
  Dim var_B4 As Variant
  Dim KeyCode As Integer
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_86 As Integer
  Dim var_11E As Integer
  Dim var_CC As Variant
  Dim var_120 As Integer
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_122 As Integer
  Dim var_150 As Double
  Dim var_138 As Variant
  Dim var_158 As Double
  Dim var_144 As Variant
  Dim Me As Variant
  Dim var_178 As Double
  Dim var_160 As Frame
  Dim var_180 As Double
  Dim var_170 As String
  Dim var_16C As TextBox
  Dim var_190 As Variant
  Dim var_13C As String
  Dim var_148 As String
  Dim var_140 As Field20
  Dim var_164 As String
  Dim var_168 As TextBox
  Dim var_90 As Double
  Dim unk_5C26BA As Connection15
  Dim var_94 As Recordset15
  Dim var_1E0 As Variant
  Dim var_1B0 As String
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_246 As Integer
  loc_17EACBD: Set var_98 = Me.TxtVtYpe
  loc_17EACC3: Call 0.Method_Form_KeyDown0 (0, var_9C)
  loc_17EACDD: Set var_A4 = Me.TopCtrl1
  loc_17EACE3: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005((((CLng(KeyCode) = &H48) And (Shift = 2)) And (var_9C.Text = "Bank Payment")))
  loc_17EACEB: var_B8 = CStr()
  loc_17EAD07: If ( And (var_B8 = "Browse")) Then
  loc_17EAD22:   If Me.ChqPrint.Visible Then
  loc_17EAD31:     Me.ChqPrint.Visible = False
  loc_17EAD3C:   Else
  loc_17EAD4E:     Me.Text3.Text = CStr(MemVar_1F920EC)
  loc_17EAD65:     Me.ChqPrint.Visible = True
  loc_17EAD6D:   End If
  loc_17EAD6D: End If
  loc_17EAD88: If (Me.FrameRef.Visible = &HFF) Then
  loc_17EAD8E:   var_BC = KeyCode
  loc_17EAD9B:   If (var_BC = CInt(&H1B)) Then
  loc_17EADA2:     Set var_98 = Me.DGRefNo
  loc_17EADBA:     If (CBool(var_98.Visible) = &HFF) Then
  loc_17EADBD:       Exit Sub
  loc_17EADBE:     End If
  loc_17EADBE:     Call Proc_185_169_F64464(var_BC)
  loc_17EADC5:     KeyCode = 0
  loc_17EADCB:   Else
  loc_17EADCB:     Exit Sub
  loc_17EADCC:   End If
  loc_17EAE09:   If CBool((Ucase(Chr(CLng(KeyCode))) = "E") And (Shift = 4)) Then
  loc_17EAE0C:     Call Proc_185_143_E14108(KeyCode)
  loc_17EAE11:   End If
  loc_17EAE22:   If ((CLng(KeyCode) = &H52) And (Shift = 4)) Then
  loc_17EAE25:     Exit Sub
  loc_17EAE26:   End If
  loc_17EAE37:   If ((CLng(KeyCode) = &H54) And (Shift = 4)) Then
  loc_17EAE3A:     Exit Sub
  loc_17EAE3B:   End If
  loc_17EAE4C:   If ((CLng(KeyCode) = &H2E) And (Shift = 2)) Then
  loc_17EAE55:     Call 0.Method_arg_1E8 (var_98)
  loc_17EAE66:     Call Proc_185_149_125DC60(CInt(var_98.index))
  loc_17EAE73:     KeyCode = 0
  loc_17EAE79:   Else
  loc_17EAE8A:     If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_17EAE93:       Call 0.Method_arg_1E8 (var_98)
  loc_17EAEA4:       Call Proc_185_149_125DC60(CInt(var_98.index))
  loc_17EAEB1:       KeyCode = 0
  loc_17EAEB7:     Else
  loc_17EAEB9:       var_86 = 0
  loc_17EAEC2:       Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EAED1:       If TypeOf var_98 Is arg_1 Then
  loc_17EAEDA:         Call 0.Method_arg_1E8 (var_98, KeyCode)
  loc_17EAF18:         If (Ucase(var_98.Name) = Ucase("TXTADJ_AMT")) Then
  loc_17EAF1B:           GoTo loc_17ECCB9
  loc_17EAF1E:         End If
  loc_17EAF1E:       End If
  loc_17EAF21:       var_11E = KeyCode
  loc_17EAF2E:       If (var_11E = CInt(&H1B)) Then
  loc_17EAF35:         Set var_98 = Me.DGAcHlp
  loc_17EAF6C:         If ((CBool(var_98.Visible) = &HFF) Or (CBool(Me.DGVchrHlp.Visible) = &HFF)) Then
  loc_17EAF75:           Call 0.Method_arg_1E8 (var_98, var_11E)
  loc_17EAF7D:           var_B4 = var_98.index
  loc_17EAF8E:           Call TxtAcName_Validate(CInt(var_B4))
  loc_17EAF99:           Call Proc_185_169_F64464(var_86, var_B4)
  loc_17EAFA0:           KeyCode = 0
  loc_17EAFA3:           GoTo loc_17ECCB9
  loc_17EAFA9:         Else
  loc_17EAFE2:           If ((CBool(Me.DGTDSCODE.Visible) = &HFF) Or (Me.FrameTDS.Visible = &HFF)) Then
  loc_17EAFE5:             Call Proc_185_169_F64464(KeyCode)
  loc_17EAFEC:             KeyCode = 0
  loc_17EAFEF:             GoTo loc_17ECCB9
  loc_17EAFF5:           Else
  loc_17EAFFD:             Call Proc_185_168_12E4960(KeyCode, 0)
  loc_17EB002:           End If
  loc_17EB002:         End If
  loc_17EB005:       Else
  loc_17EB00F:         If Not (var_11E = CInt(&H75)) Then
  loc_17EB01C:           If Not (var_11E = CInt(&H76)) Then
  loc_17EB029:             If Not (var_11E = CInt(&H77)) Then
  loc_17EB036:               If (var_11E = CInt(&H78)) Then
  loc_17EB039:               End If
  loc_17EB039:             End If
  loc_17EB039:           End If
  loc_17EB041:           Call Proc_185_168_12E4960(KeyCode, 0)
  loc_17EB049:         Else
  loc_17EB053:           If Not (var_11E = CInt(&HD)) Then
  loc_17EB060:             If Not (var_11E = CInt(&H28)) Then
  loc_17EB06D:               If (var_11E = CInt(&H26)) Then
  loc_17EB070:               End If
  loc_17EB070:             End If
  loc_17EB073:             var_120 = KeyCode
  loc_17EB080:             If Not (var_120 = CInt(&H28)) Then
  loc_17EB08D:               If (var_120 = CInt(&H26)) Then
  loc_17EB090:               End If
  loc_17EB094:               Set var_98 = Me.DGTDSCODE
  loc_17EB0C1:               Set var_A4 = Me.DGVchrHlp
  loc_17EB0E6:               If (((CBool(var_98.Visible) = &HFF) Or (CBool(Me.DGAcHlp.Visible) = &HFF)) Or (CBool(var_A4.Visible) = &HFF)) Then
  loc_17EB0E9:                 GoTo loc_17ECCB9
  loc_17EB0EC:               End If
  loc_17EB0EC:             End If
  loc_17EB0F8:             If (CInt(global_110) <= 2) Then
  loc_17EB0FD:               var_86 = 0
  loc_17EB106:               Call 0.Method_arg_1E8 (var_98, var_86, var_120)
  loc_17EB115:               If TypeOf var_98 Is arg_1 Then
  loc_17EB11E:                 Call 0.Method_arg_1E8 (var_98, KeyCode)
  loc_17EB15C:                 If (Ucase(var_98.Name) = Ucase("VchDt")) Then
  loc_17EB165:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EB16D:                   var_B4 = var_98.index
  loc_17EB17E:                   Call VchDt_Validate(CInt(var_B4))
  loc_17EB189:                 End If
  loc_17EB189:               End If
  loc_17EB18F:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EB19E:               If TypeOf var_98 Is arg_1 Then
  loc_17EB1A7:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EB1E5:                 If (Ucase(var_98.Name) = Ucase("TxtCrDr")) Then
  loc_17EB1EE:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EB1F6:                   var_B4 = var_98.index
  loc_17EB207:                   Call TxtCrDr_Validate(CInt(var_B4))
  loc_17EB212:                 End If
  loc_17EB212:               End If
  loc_17EB218:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EB227:               If TypeOf var_98 Is arg_1 Then
  loc_17EB230:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EB26E:                 If (Ucase(var_98.Name) = Ucase("TxtAcName")) Then
  loc_17EB277:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EB27F:                   var_B4 = var_98.index
  loc_17EB290:                   Call TxtAcName_Validate(CInt(var_B4))
  loc_17EB29B:                 End If
  loc_17EB29B:               End If
  loc_17EB2A1:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EB2B0:               If TypeOf var_98 Is arg_1 Then
  loc_17EB2B9:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EB2F7:                 If (Ucase(var_98.Name) = Ucase("TxtCr")) Then
  loc_17EB300:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EB308:                   var_B4 = var_98.index
  loc_17EB319:                   Call TxtCr_Validate(CInt(var_B4))
  loc_17EB324:                 End If
  loc_17EB324:               End If
  loc_17EB32A:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EB339:               If TypeOf var_98 Is arg_1 Then
  loc_17EB342:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EB380:                 If (Ucase(var_98.Name) = Ucase("TxtDr")) Then
  loc_17EB389:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EB391:                   var_B4 = var_98.index
  loc_17EB3A2:                   Call TxtDr_Validate(CInt(var_B4))
  loc_17EB3AD:                 End If
  loc_17EB3AD:               End If
  loc_17EB3B3:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EB3C2:               If TypeOf var_98 Is arg_1 Then
  loc_17EB3CB:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EB409:                 If (Ucase(var_98.Name) = Ucase("TxtNar")) Then
  loc_17EB412:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EB41A:                   var_B4 = var_98.index
  loc_17EB42B:                   Call TxtNar_Validate(CInt(var_B4))
  loc_17EB436:                 End If
  loc_17EB436:               End If
  loc_17EB43C:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EB44B:               If TypeOf var_98 Is arg_1 Then
  loc_17EB454:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EB492:                 If (Ucase(var_98.Name) = Ucase("TxtVtYpe")) Then
  loc_17EB49B:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EB4A3:                   var_B4 = var_98.index
  loc_17EB4B4:                   Call TxtVtYpe_Validate(CInt(var_B4))
  loc_17EB4BF:                 End If
  loc_17EB4BF:               End If
  loc_17EB4C5:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EB4D4:               If TypeOf var_98 Is arg_1 Then
  loc_17EB4DD:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EB51B:                 If (Ucase(var_98.Name) = Ucase("TXTChDate")) Then
  loc_17EB524:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EB52C:                   var_B4 = var_98.index
  loc_17EB53D:                   Call TXTChDate_Validate(CInt(var_B4))
  loc_17EB548:                 End If
  loc_17EB548:               End If
  loc_17EB54E:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EB55D:               If TypeOf var_98 Is arg_1 Then
  loc_17EB566:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EB5A4:                 If (Ucase(var_98.Name) = Ucase("TXTClrDate")) Then
  loc_17EB5AD:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EB5B5:                   var_B4 = var_98.index
  loc_17EB5C6:                   Call TXTClrDate_Validate(CInt(var_B4))
  loc_17EB5D1:                 End If
  loc_17EB5D1:               End If
  loc_17EB5D7:               Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EB5E6:               If TypeOf var_98 Is arg_1 Then
  loc_17EB5EF:                 Call 0.Method_arg_1E8 (var_98, var_B4)
  loc_17EB62D:                 If (Ucase(var_98.Name) = Ucase("TXTREF")) Then
  loc_17EB636:                   Call Proc_185_151_DFB548(var_86)
  loc_17EB63B:                 End If
  loc_17EB63B:               End If
  loc_17EB641:               Call 0.Method_arg_1E8 (var_98)
  loc_17EB650:               If TypeOf var_98 Is arg_1 Then
  loc_17EB659:                 Call 0.Method_arg_1E8 (var_98)
  loc_17EB676:                 var_EC = "TxtTDSCODE"
  loc_17EB697:                 If (Ucase(var_98.Name) = Ucase(var_EC)) Then
  loc_17EB6A3:                   Set var_98 = KeyCode(False)
  loc_17EB6A9:                   var_98.Visible = 
  loc_17EB6B7:                   Call 0.Method_arg_1E8 (var_98)
  loc_17EB6D0:                   Call TxtTDSCode_Validate(CInt(var_98.index))
  loc_17EB6DB:                 End If
  loc_17EB6DB:               End If
  loc_17EB6E1:               If (var_86 = &HFF) Then
  loc_17EB6E4:                 GoTo loc_17ECCB9
  loc_17EB6E7:               End If
  loc_17EB6E7:             End If
  loc_17EB6EA:             var_122 = KeyCode
  loc_17EB6F7:             If Not (var_122 = CInt(&H28)) Then
  loc_17EB704:               If (var_122 = CInt(&HD)) Then
  loc_17EB707:               End If
  loc_17EB70D:               Call 0.Method_arg_1E8 (var_98, var_122)
  loc_17EB71C:               If TypeOf var_98 Is arg_1 Then
  loc_17EB725:                 Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EB73D:                 var_134 = Ucase(var_98.Name) 'Variant
  loc_17EB769:                 If (var_134 = Ucase("Text1")) Then
  loc_17EB76C:                   Call BTNVLOK_Click()
  loc_17EB771:                   GoTo loc_17ECCB9
  loc_17EB777:                 Else
  loc_17EB799:                   If (var_134 = Ucase("TxtTDSAMT")) Then
  loc_17EB79F:                     Call TxtTDSAMT_Validate(var_86)
  loc_17EB7BE:                     var_150 = Val(Me.FrameTDS.Tag)
  loc_17EB7DB:                     var_158 = Val(Me.FrameTDS.Tag)
  loc_17EB7EC:                     Set var_9C = Me.TxtCrDr
  loc_17EB7F2:                     Call 0.Method_Form_KeyDown0 (CInt(var_150), var_A4, var_B8)
  loc_17EB815:                     Set var_140 = Me.TxtCrDr
  loc_17EB81B:                     Call 0.Method_Form_KeyDown0 (CInt(var_A4.Text), var_144, var_148)
  loc_17EB823:                     (var_B8 = "Dr") = var_144.Text
  loc_17EB84B:                     If (var_150 Or (var_148 = "By")) Then
  loc_17EB865:                       If (Me.RecordCount > 0) Then
  loc_17EB882:                         var_150 = Val(Me.FrameTDS.Tag)
  loc_17EB8B0:                         Set var_140 = Me.TxtDr
  loc_17EB8B6:                         Call 0.Method_Form_KeyDown0 (CInt(Val(Me.FrameTDS.Tag)), var_144, var_148)
  loc_17EB8BE:                         var_158 = var_144.Tag
  loc_17EB8CB:                         var_178 = Val(var_148)
  loc_17EB8E8:                         var_180 = Val(Me.FrameTDS.Tag)
  loc_17EB8F9:                         Set var_9C = Me.TxtDr
  loc_17EB8FF:                         Call 0.Method_Form_KeyDown0 (CInt(var_150), var_A4, var_B8, var_180)
  loc_17EB91A:                         var_170 = CStr((Val(var_B8) + var_A4.Text))
  loc_17EB928:                         Set var_168 = Me.TxtDr
  loc_17EB92E:                         Call 0.Method_Form_KeyDown0 (CInt(var_180), var_16C, var_170)
  loc_17EB936:                         var_16C.Text = var_150
  loc_17EB968:                         Me.Sort = "V_SNo ASC"
  loc_17EB990:                         var_DC = CVar(CLng((Val(Me.FrameTDS.Tag) + CDbl(global_108)))) 'Long
  loc_17EB995:                         var_190 = 1
  loc_17EB9E1:                         Me.Find "V_SNO=" & CStr(Val(CStr(Me.FGrid1.TextMatrix)))), 0, 1
  loc_17EBA0F:                         If (Me.EOF = 0) Then
  loc_17EBA12:                           ' Referenced from:             17EBC05
  loc_17EBA37:                           var_CC = Me.Fields.Item("V_SNo").Value
  loc_17EBA46:                           Set var_A4 = Me.FrameTDS
  loc_17EBA62:                           var_FC = CVar(CLng((Val(var_A4.Tag) + CDbl(global_108)))) 'Long
  loc_17EBA85:                           var_B8 = CStr(Me.FGrid1.TextMatrix))
  loc_17EBAAD:                           If (1 = CVar(Val(var_B8))) Then
  loc_17EBACA:                             var_150 = Val(Me.FrameTDS.Tag)
  loc_17EBB03:                             var_158 = Val(CStr(Me.Fields.Item("TDSAmt").Value))
  loc_17EBB0D:                             Set var_144 = Me.FrameTDS
  loc_17EBB13:                             var_148 = var_144.Tag
  loc_17EBB20:                             var_178 = Val(var_148)
  loc_17EBB31:                             Set var_9C = Me.TxtDr
  loc_17EBB37:                             Call 0.Method_Form_KeyDown0 (CInt(var_150), var_A4, var_B8, var_178, var_158, var_150, (Shift = 4))
  loc_17EBB3F:                             var_CC = var_A4.Text
  loc_17EBB52:                             var_164 = CStr((Val(var_B8) - var_158))
  loc_17EBB60:                             Set var_160 = Me.TxtDr
  loc_17EBB66:                             Call 0.Method_Form_KeyDown0 (CInt(var_178), var_168, Me.FrameTDS.Tag, var_1B0)
  loc_17EBB6E:                             var_168.Text = var_150
  loc_17EBBC1:                             Set var_9C = Me.TxtDr
  loc_17EBBC7:                             Call 0.Method_Form_KeyDown0 (CInt(Val(Me.FrameTDS.Tag)), var_A4, vbNullString, Val(Me.FrameTDS.Tag))
  loc_17EBBCF:                             var_A4.Tag = var_190
  loc_17EBBE6:                             Me.MoveNext
  loc_17EBBF4:                             var_BA = Me.EOF
  loc_17EBBFF:                             If (var_BA = &HFF) Then
  loc_17EBC02:                               GoTo loc_17EBC08
  loc_17EBC05:                             End If
  loc_17EBC05:                             GoTo loc_17EBA12
  loc_17EBC08:                             ' Referenced from:             17EBC02
  loc_17EBC08:                           End If
  loc_17EBC08:                         End If
  loc_17EBC08:                       End If
  loc_17EBC30:                       Set var_9C = Me.TxtDr
  loc_17EBC36:                       Call 0.Method_Form_KeyDown0 (CInt(Val(Me.FrameTDS.Tag)), var_A4, Val(Me.FrameTDS.Tag))
  loc_17EBC3E:                       var_A4.SetFocus
  loc_17EBC4F:                       GoTo loc_17ECCB9
  loc_17EBC55:                     Else
  loc_17EBC7D:                       Set var_9C = Me.TxtCr
  loc_17EBC83:                       Call 0.Method_Form_KeyDown0 (CInt(Val(Me.FrameTDS.Tag)), var_A4, Val(Me.FrameTDS.Tag))
  loc_17EBC8B:                       var_A4.SetFocus
  loc_17EBC9F:                     Else
  loc_17EBCAB:                       Me.FrameTDS.Visible = False
  loc_17EBCB6:                     Else
  loc_17EBCB9:                       var_DC = "TXTREF"
  loc_17EBCD8:                       If (var_134 = Ucase(var_DC)) Then
  loc_17EBD12:                         var_158 = Val(Me.FrameRef.Tag)
  loc_17EBD23:                         Set var_9C = Me.TxtCrDr
  loc_17EBD29:                         Call 0.Method_Form_KeyDown0 (CInt(Val(Me.FrameRef.Tag)), var_A4, var_B8, var_158)
  loc_17EBD31:                         var_150 = var_A4.Text
  loc_17EBD4C:                         Set var_140 = Me.TxtCrDr
  loc_17EBD52:                         Call 0.Method_Form_KeyDown0 (CInt(var_158), var_144, var_148)
  loc_17EBD5A:                         (var_B8 = "Cr") = var_144.Text
  loc_17EBD82:                         If (var_DC Or (var_148 = "To")) Then
  loc_17EBDAD:                           Set var_9C = Me.TxtCr
  loc_17EBDB3:                           Call 0.Method_Form_KeyDown0 (CInt(Val(Me.FrameRef.Tag)), var_A4)
  loc_17EBDBB:                           var_A4.SetFocus
  loc_17EBDCC:                           GoTo loc_17ECCB9
  loc_17EBDD2:                         Else
  loc_17EBDDF:                           var_A0 = Me.FrameRef.Tag
  loc_17EBDEC:                           var_150 = Val(var_A0)
  loc_17EBDFA:                           Set var_9C = Me.TxtDr
  loc_17EBE00:                           Call 0.Method_Form_KeyDown0 (CInt(var_150), var_A4, var_150)
  loc_17EBE08:                           var_A4.SetFocus
  loc_17EBE1C:                         Else
  loc_17EBE22:                           Set var_98 = Me.FrameRef
  loc_17EBE28:                           var_98.Visible = False
  loc_17EBE33:                         Else
  loc_17EBE55:                           If (var_134 = Ucase("TxtCr")) Then
  loc_17EBE64:                             If (CInt(global_110) <= 2) Then
  loc_17EBE73:                               If (CInt(global_110) = 2) Then
  loc_17EBE7C:                                 Call 0.Method_arg_1E8 (var_98, var_150)
  loc_17EBE84:                                 var_B4 = var_98.index
  loc_17EBE99:                                 Set var_9C = var_A4(CInt(var_B4))
  loc_17EBE9F:                                 Call 0.Method_Form_KeyDown0 (var_A0, var_B4)
  loc_17EBEA7:                                 var_B4 = var_98.TextBox.Tag
  loc_17EBED1:                                 var_CC = Me.Fields.Item("DocID").Value
  loc_17EBF06:                                 Call 0.Method_arg_9C (Me, var_A0, global_136)
  loc_17EBF0E:                                 var_90 = var_150
  loc_17EBF31:                               Else
  loc_17EBF37:                                 Call 0.Method_arg_1E8 (var_98, var_90, 0)
  loc_17EBF3F:                                 var_B4 = var_98.index
  loc_17EBF54:                                 Set var_9C = var_A4(CInt(var_B4))
  loc_17EBF5A:                                 Call 0.Method_Form_KeyDown0 (var_A0, var_B4)
  loc_17EBF62:                                 CStr(var_CC) = var_98.TextBox.Tag
  loc_17EBF6F:                                 var_13C = 0
  loc_17EBF8A:                                 Set var_138 = Me 
  loc_17EBF9A:                                 Call 0.Method_arg_9C (var_138, var_A0, global_136, 0)
  loc_17EBFA2:                                 var_90 = var_150
  loc_17EBFBA:                               End If
  loc_17EBFD8:                               Call 0.Method_arg_1E8 (var_98, var_A4, var_A0, "SELECT CreditLimit,NATURE FROM SUBGROUP WHERE SUBCODE=", var_11C, -1)
  loc_17EBFEA:                               Set var_9C = var_138(CInt(var_98.index))
  loc_17EBFF0:                               Call 0.Method_Form_KeyDown0 (var_90, var_13C)
  loc_17EBFF8:                               var_150 = var_98.TextBox.Tag
  loc_17EC000:                               var_CC = CVar(var_A0) 'String
  loc_17EC006:                               Proc_183_9_EAA760(var_EC, var_CC)
  loc_17EC01C:                               unk_5C26BA.Execute CStr(var_150 & var_EC), , 
  loc_17EC027:                               Set var_94 = var_138
  loc_17EC059:                               If (var_94.RecordCount > 0) Then
  loc_17EC07B:                                 var_B4 = CVar(var_94.Fields.Item("CreditLimit")) 'Address
  loc_17EC082:                                 Proc_183_3_E7D1C8(var_CC)
  loc_17EC09C:                                 If (var_CC > 0) Then
  loc_17EC0BE:                                   var_B4 = CVar(var_94.Fields.Item("Nature")) 'Address
  loc_17EC0F9:                                   var_CC = CVar(Me.Fields.Item("CreditLimit")) 'Address
  loc_17EC102:                                   var_B8 = Proc_183_2_E5A304(var_CC, ((Proc_183_2_E5A304(var_B4) = "Supplier") And (var_90 > CDbl(0))))
  loc_17EC120:                                   If (var_B4 And (var_B8 = "Yes")) Then
  loc_17EC142:                                     var_B4 = CVar(var_94.Fields.Item("CreditLimit")) 'Address
  loc_17EC149:                                     Proc_183_3_E7D1C8(var_CC)
  loc_17EC166:                                     If (var_CC < CVar(Abs(var_90))) Then
  loc_17EC197:                                       Proc_183_3_E7D1C8(var_CC, CVar(var_94.Fields.Item("CreditLimit")))
  loc_17EC19F:                                       var_EC = (CVar(Abs(var_90)) - var_CC)
  loc_17EC1DB:                                       var_1E0 = ("Limit Exceed by " + Trim(Str(var_EC)))
  loc_17EC1DF:                                       MsgBox(var_1E0, &H30, "Warning", var_200, var_210)
  loc_17EC1FC:                                     End If
  loc_17EC1FC:                                   End If
  loc_17EC1FC:                                 End If
  loc_17EC20B:                                 var_98 = var_94.Fields
  loc_17EC213:                                 var_9C = var_98.Item("Nature")
  loc_17EC21B:                                 var_B4 = CVar(var_9C) 'Address
  loc_17EC224:                                 var_A0 = Proc_183_2_E5A304(var_B4)
  loc_17EC25F:                                 var_B8 = Proc_183_2_E5A304(CVar(Me.Fields.Item("NegativeCashBalance")), ((var_A0 = "Cash") And (var_90 > CDbl(0))))
  loc_17EC27D:                                 If (var_B4 And (var_B8 = "Yes")) Then
  loc_17EC291:                                   var_EC = CVar(Abs(var_90)) 'Double
  loc_17EC2A3:                                   var_11C = Trim(Str(var_EC))
  loc_17EC2B3:                                   var_200 = "Warning"
  loc_17EC2C6:                                   var_CC = ("Negative Cash balance " + Chr(&HD))
  loc_17EC2CD:                                   var_1D0 = (CVar(Me.Fields.Item("NegativeCashBalance")) + var_11C)
  loc_17EC2D6:                                   var_1E0 = (Trim(Str(var_EC)) + " ")
  loc_17EC2DF:                                   var_1F0 = (var_1E0 + "Cr")
  loc_17EC2E3:                                   MsgBox("Warning", &H30, var_200, var_210, var_230)
  loc_17EC301:                                 End If
  loc_17EC301:                               End If
  loc_17EC301:                             End If
  loc_17EC30C:                             If (global_112 = "N") Then
  loc_17EC31B:                               If (CInt(global_110) <= 2) Then
  loc_17EC327:                                 Call 0.Method_arg_1E8 (var_98)
  loc_17EC338:                                 Call Proc_185_160_1025274(CInt(var_98.index))
  loc_17EC34C:                                 If (CInt(var_232) = 1) Then
  loc_17EC34F:                                   GoTo loc_17ECCB9
  loc_17EC352:                                 End If
  loc_17EC352:                               End If
  loc_17EC358:                               Call 0.Method_arg_1E8 (var_98)
  loc_17EC360:                               var_B4 = var_98.index
  loc_17EC374:                               Call 0.Method_arg_1E8 (var_9C)
  loc_17EC37C:                               var_CC = var_9C.Name
  loc_17EC389:                               Set var_A4 = var_232(var_B4)
  loc_17EC396:                               Call Proc_185_147_12E3B28(CInt(var_B4), var_A4)
  loc_17EC3BC:                               If (CInt(global_110) <= 2) Then
  loc_17EC3C5:                                 Call 0.Method_arg_1E8 (var_98)
  loc_17EC3E4:                                 If (var_98.index = CVar(global_136)) Then
  loc_17EC3FB:                                   Set var_98 = Me 
  loc_17EC40B:                                   Call 0.Method_arg_58 (var_98, CInt(&H26), 0)
  loc_17EC413:                                   var_86 = var_234
  loc_17EC419:                                 End If
  loc_17EC419:                               End If
  loc_17EC419:                             End If
  loc_17EC41C:                           Else
  loc_17EC43E:                             If (var_134 = Ucase("TxtDr")) Then
  loc_17EC44D:                               If (CInt(global_110) <= 2) Then
  loc_17EC45C:                                 If (CInt(global_110) = 2) Then
  loc_17EC465:                                   Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17EC46D:                                   var_B4 = var_98.index
  loc_17EC482:                                   Set var_9C = var_A4(CInt(var_B4))
  loc_17EC488:                                   Call 0.Method_Form_KeyDown0 (var_A0, var_B4)
  loc_17EC490:                                   var_234 = var_98.TextBox.Tag
  loc_17EC4BA:                                   var_CC = Me.Fields.Item("DocID").Value
  loc_17EC4EF:                                   Call 0.Method_arg_9C (Me, var_A0, global_136, 0)
  loc_17EC4F7:                                   var_90 = var_150
  loc_17EC51A:                                 Else
  loc_17EC520:                                   Call 0.Method_arg_1E8 (var_98, var_90, CStr(var_CC))
  loc_17EC528:                                   var_B4 = var_98.index
  loc_17EC53D:                                   Set var_9C = var_A4(CInt(var_B4))
  loc_17EC543:                                   Call 0.Method_Form_KeyDown0 (var_A0, var_B4)
  loc_17EC558:                                   var_13C = 0
  loc_17EC573:                                   Set var_138 = Me 
  loc_17EC583:                                   Call 0.Method_arg_9C (var_138, var_A0, global_136, 0)
  loc_17EC58B:                                   var_90 = var_98.TextBox.Tag
  loc_17EC5A3:                                 End If
  loc_17EC5C1:                                 Call 0.Method_arg_1E8 (var_98, var_A4, var_A0, "SELECT CreditLimit,NATURE FROM SUBGROUP WHERE SUBCODE=", var_11C, -1)
  loc_17EC5D3:                                 Set var_9C = var_138(CInt(var_98.index))
  loc_17EC5D9:                                 Call 0.Method_Form_KeyDown0 (var_90, var_13C)
  loc_17EC5E1:                                 var_150 = var_98.TextBox.Tag
  loc_17EC5E9:                                 var_CC = CVar(var_A0) 'String
  loc_17EC5EF:                                 Proc_183_9_EAA760(var_EC, var_CC)
  loc_17EC605:                                 unk_5C26BA.Execute CStr(CStr(var_CC) & var_EC), , 
  loc_17EC610:                                 Set var_94 = var_138
  loc_17EC642:                                 If (var_94.RecordCount > 0) Then
  loc_17EC664:                                   var_B4 = CVar(var_94.Fields.Item("CreditLimit")) 'Address
  loc_17EC66B:                                   Proc_183_3_E7D1C8(var_CC)
  loc_17EC685:                                   If (var_CC > 0) Then
  loc_17EC6A7:                                     var_B4 = CVar(var_94.Fields.Item("Nature")) 'Address
  loc_17EC6B0:                                     var_A0 = Proc_183_2_E5A304(var_B4)
  loc_17EC6E2:                                     var_CC = CVar(Me.Fields.Item("DebitLimit")) 'Address
  loc_17EC6EB:                                     var_B8 = Proc_183_2_E5A304(var_CC, ((var_A0 = "Customer") And (var_90 < CDbl(0))))
  loc_17EC709:                                     If (var_B4 And (var_B8 = "Yes")) Then
  loc_17EC72B:                                       var_B4 = CVar(var_94.Fields.Item("CreditLimit")) 'Address
  loc_17EC732:                                       Proc_183_3_E7D1C8(var_CC)
  loc_17EC74F:                                       If (var_CC < CVar(Abs(var_90))) Then
  loc_17EC769:                                         var_98 = var_94.Fields
  loc_17EC771:                                         var_9C = var_98.Item("CreditLimit")
  loc_17EC780:                                         Proc_183_3_E7D1C8(var_CC, CVar(var_9C))
  loc_17EC788:                                         var_EC = (CVar(Abs(var_90)) - var_CC)
  loc_17EC78C:                                         var_10C = var_EC 'Variant
  loc_17EC7C4:                                         var_1E0 = ("Limit Exceed by " + Trim(Str(var_10C)))
  loc_17EC7C8:                                         MsgBox(var_1E0, &H30, "Warning", var_200, var_210)
  loc_17EC7E5:                                       End If
  loc_17EC7E5:                                     End If
  loc_17EC7E5:                                   End If
  loc_17EC7E5:                                 End If
  loc_17EC7E5:                               End If
  loc_17EC7F0:                               If (global_112 = "N") Then
  loc_17EC7FF:                                 If (CInt(global_110) <= 2) Then
  loc_17EC80B:                                   Call 0.Method_arg_1E8 (var_98, var_232)
  loc_17EC81C:                                   Call Proc_185_160_1025274(CInt(var_98.index))
  loc_17EC830:                                   If (CInt(var_232) = 1) Then
  loc_17EC833:                                     GoTo loc_17ECCB9
  loc_17EC836:                                   End If
  loc_17EC836:                                 End If
  loc_17EC83C:                                 Call 0.Method_arg_1E8 (var_98)
  loc_17EC844:                                 var_B4 = var_98.index
  loc_17EC858:                                 Call 0.Method_arg_1E8 (var_9C)
  loc_17EC860:                                 var_CC = var_9C.Name
  loc_17EC87A:                                 Call Proc_185_147_12E3B28(CInt(var_B4), var_B4(var_B4))
  loc_17EC8A0:                                 If (CInt(global_110) <= 2) Then
  loc_17EC8A9:                                   Call 0.Method_arg_1E8 (var_98)
  loc_17EC8C8:                                   If (var_98.index = CVar(global_136)) Then
  loc_17EC8DF:                                     Set var_98 = Me 
  loc_17EC8EF:                                     Call 0.Method_arg_58 (var_98, CInt(&H26), 0)
  loc_17EC8F7:                                     var_86 = var_234
  loc_17EC8FD:                                   End If
  loc_17EC8FD:                                 End If
  loc_17EC8FD:                               End If
  loc_17EC900:                             Else
  loc_17EC911:                               var_CC = Ucase("TxtNar")
  loc_17EC922:                               If (var_134 = var_CC) Then
  loc_17EC931:                                 If (CInt(global_110) <= 2) Then
  loc_17EC93D:                                   Call 0.Method_arg_1E8 (var_98, var_232, var_86)
  loc_17EC94E:                                   Call Proc_185_160_1025274(CInt(var_98.index), var_234)
  loc_17EC962:                                   If (CInt(var_232) = 1) Then
  loc_17EC965:                                     GoTo loc_17ECCB9
  loc_17EC968:                                   End If
  loc_17EC968:                                 End If
  loc_17EC96E:                                 Call 0.Method_arg_1E8 (var_98)
  loc_17EC976:                                 var_B4 = var_98.index
  loc_17EC981:                                 Set var_138 = CStr(var_CC)(var_B4)
  loc_17EC98A:                                 Call 0.Method_arg_1E8 (var_9C)
  loc_17EC992:                                 var_CC = var_9C.Name
  loc_17EC9AC:                                 Call Proc_185_147_12E3B28(CInt(var_B4), var_138)
  loc_17EC9D2:                                 If (CInt(global_110) <= 2) Then
  loc_17EC9DB:                                   Call 0.Method_arg_1E8 (var_98)
  loc_17EC9FA:                                   If (var_98.index = CVar(global_136)) Then
  loc_17ECA11:                                     Set var_98 = Me 
  loc_17ECA21:                                     Call 0.Method_arg_58 (var_98, CInt(&H26), 0)
  loc_17ECA29:                                     var_86 = var_234
  loc_17ECA2F:                                   End If
  loc_17ECA2F:                                 End If
  loc_17ECA2F:                               End If
  loc_17ECA2F:                             End If
  loc_17ECA2F:                           End If
  loc_17ECA2F:                         End If
  loc_17ECA2F:                       End If
  loc_17ECA2F:                     End If
  loc_17ECA2F:                   End If
  loc_17ECA32:                 Else
  loc_17ECA3C:                   If (var_122 = CInt(&H26)) Then
  loc_17ECA45:                     Call 0.Method_arg_1E8 (var_98, var_86)
  loc_17ECA54:                     If TypeOf var_98 Is arg_1 Then
  loc_17ECA5D:                       Call 0.Method_arg_1E8 (var_98, var_234)
  loc_17ECAA1:                       If (Ucase(var_98.Name) = Ucase("TxtCrDr")) Then
  loc_17ECAAD:                         If (global_108 > 0) Then
  loc_17ECAB6:                           Call 0.Method_arg_1E8 (var_98)
  loc_17ECAC7:                           Call Proc_185_146_125805C(CInt(var_98.index))
  loc_17ECAD5:                         Else
  loc_17ECAD5:                         End If
  loc_17ECAD5:                       End If
  loc_17ECAD5:                     End If
  loc_17ECAD5:                   End If
  loc_17ECADA:                   global_132 = &HFF
  loc_17ECAE0:                   var_246 = KeyCode
  loc_17ECAED:                   If Not (var_246 = CInt(&HD)) Then
  loc_17ECAFA:                     If Not (var_246 = CInt(&H28)) Then
  loc_17ECB07:                       If (var_246 = CInt(&H26)) Then
  loc_17ECB0A:                       End If
  loc_17ECB0A:                     End If
  loc_17ECB26:                     Call 0.Method_arg_58 (Me, KeyCode, Shift, var_BA)
  loc_17ECB34:                     If (var_BA = &HFF) Then
  loc_17ECB43:                       If (CInt(global_110) <= 2) Then
  loc_17ECB52:                         Set var_A4 = Me.LblCrAmt
  loc_17ECB58:                         Call 0.Method_Form_KeyDown0 (0, var_138, var_B8)
  loc_17ECB60:                         var_246 = Me.LblCrAmt.Caption
  loc_17ECB6D:                         var_150 = Val(var_B8)
  loc_17ECB7C:                         Set var_98 = Me.LblDrAmt
  loc_17ECB82:                         Call 0.Method_Form_KeyDown0 (0, var_9C, var_A0)
  loc_17ECBB2:                         If (CDbl((Val(var_A0) + var_9C.Caption)) > CDbl(0)) Then
  loc_17ECBC1:                           Set var_A4 = Me.LblCrAmt
  loc_17ECBC7:                           Call 0.Method_Form_KeyDown0 (0, var_138, var_B8)
  loc_17ECBCF:                           global_132 = var_138.Caption
  loc_17ECBDC:                           var_150 = Val(var_B8)
  loc_17ECBEB:                           Set var_98 = Me.LblDrAmt
  loc_17ECBF1:                           Call 0.Method_Form_KeyDown0 (0, var_9C, var_A0)
  loc_17ECC1E:                           If (CDbl(Val(var_A0)) = CDbl(var_9C.Caption)) Then
  loc_17ECC27:                             Call 0.Method_arg_50 (var_A0)
  loc_17ECC5E:                             If (MsgBox("Save Yes/No", &H44, CVar(var_A0), var_EC, var_10C) = 6) Then
  loc_17ECC66:                               global_132 = 0
  loc_17ECC6B:                               KeyCode = 0
  loc_17ECC6E:                               Call TopCtrl1_UnknownEvent_16()
  loc_17ECC73:                               GoTo loc_17ECCB9
  loc_17ECC79:                             Else
  loc_17ECC8F:                               Set var_98 = Me.TxtCrDr
  loc_17ECC95:                               Call 0.Method_Form_KeyDown0 (0, var_9C, 0, 0)
  loc_17ECC9D:                               var_9C.SetFocus
  loc_17ECCAC:                             Else
  loc_17ECCAC:                             End If
  loc_17ECCAC:                           End If
  loc_17ECCAC:                         End If
  loc_17ECCAC:                       End If
  loc_17ECCAC:                     End If
  loc_17ECCB1:                     global_132 = 0
  loc_17ECCB6:                     KeyCode = 0
  loc_17ECCB9:                   End If
  loc_17ECCB9:                   ' Referenced from:                 17ECC73
  loc_17ECCB9:                 End If
  loc_17ECCB9:                 ' Referenced from:               17EC965
  loc_17ECCB9:                 ' Referenced from:               17EC833
  loc_17ECCB9:                 ' Referenced from:               17EC34F
  loc_17ECCB9:               End If
  loc_17ECCB9:               ' Referenced from:             17EBDCC
  loc_17ECCB9:             End If
  loc_17ECCB9:             ' Referenced from:           17EBC4F
  loc_17ECCB9:             ' Referenced from:           17EB771
  loc_17ECCB9:             ' Referenced from:           17EB6E4
  loc_17ECCB9:             ' Referenced from:           17EB0E9
  loc_17ECCB9:             ' Referenced from:           17EAFEF
  loc_17ECCB9:             ' Referenced from:           17EAFA3
  loc_17ECCB9:             ' Referenced from:           17EAF1B
  loc_17ECCB9:           End If
  loc_17ECCB9:         End If
  loc_17ECCB9:       End If
  loc_17ECCBF:       Call 0.Method_arg_1E8 (var_98, KeyCode, global_132)
  loc_17ECCCE:       If TypeOf var_98 Is arg_1 Then
  loc_17ECCD7:         Call 0.Method_arg_1E8 (var_98, KeyCode)
  loc_17ECCEF:         var_258 = Ucase(var_98.Name) 'Variant
  loc_17ECD0A:         var_CC = Ucase("TxtCrDr")
  loc_17ECD1B:         If Not (var_258 = var_CC) Then
  loc_17ECD40:           If Not (var_258 = Ucase("TxtAcName")) Then
  loc_17ECD65:             If Not (var_258 = Ucase("TxtCr")) Then
  loc_17ECD8A:               If Not (var_258 = Ucase("TxtDr")) Then
  loc_17ECDAF:                 If (var_258 = Ucase("TxtNar")) Then
  loc_17ECDB2:                 End If
  loc_17ECDB2:               End If
  loc_17ECDB2:             End If
  loc_17ECDB2:           End If
  loc_17ECDB8:           Call 0.Method_arg_1E8 (var_98, global_132)
  loc_17ECDC9:           Call Proc_185_152_EF0008(CInt(var_98.index))
  loc_17ECDD7:         Else
  loc_17ECDD7:           Call Proc_185_153_E6F3B8(CStr(var_CC))
  loc_17ECDDC:         End If
  loc_17ECDDC:       End If
  loc_17ECDDF:     Else
  loc_17ECDDF:       Call Proc_185_153_E6F3B8()
  loc_17ECDF6:       Proc_183_40_F30B0C(Me, KeyCode)
  loc_17ECDFE:     End If
  loc_17ECDFE:   End If
  loc_17ECDFE: End If
  loc_17ECE03: Set var_94 = Nothing
  loc_17ECE06: Exit Sub
  loc_17ECE0D: Call 0.Method_arg_50 (var_A0)
  loc_17ECE22: Proc_183_57_104AA84(var_A0, "Form_KeyDown")
  loc_17ECE2E: Exit Sub
End Sub

Private Sub TxtCrDr_GotFocus(Index As Integer) 'E8E1D4
  'Data Table: 5C26A4
  loc_E8E16C: On Error Goto loc_E8E1AC
  loc_E8E178: If (global_132 = &HFF) Then
  loc_E8E17B:   Exit Sub
  loc_E8E17C: End If
  loc_E8E186: Set var_88 = Me.TxtCrDr
  loc_E8E18C: Call 0.Method_TxtCrDr_GotFocus0 (Index)
  loc_E8E19A: Call Proc_185_163_E215F4(var_8C)
  loc_E8E1A6: Call Proc_185_169_F64464(var_8C)
  loc_E8E1AB: Exit Sub
  loc_E8E1AC: ' Referenced from: E8E16C
  loc_E8E1B2: Call 0.Method_arg_50 (var_94)
  loc_E8E1BA: var_9C = "TxtCrDr_GotFocus"
  loc_E8E1C7: Proc_183_57_104AA84(var_94)
  loc_E8E1D3: Exit Sub
End Sub

Private Sub TxtCrDr_KeyDown(KeyCode As Integer, Shift As Integer) 'E67E64
  'Data Table: 5C26A4
  loc_E67E18: On Error Goto loc_E67E3B
  loc_E67E24: If (global_132 = &HFF) Then
  loc_E67E27:   Exit Sub
  loc_E67E28: End If
  loc_E67E32: If (CLng(Shift) = &H1B) Then
  loc_E67E35:   Call Proc_185_169_F64464()
  loc_E67E3A: End If
  loc_E67E3A: Exit Sub
  loc_E67E3B: ' Referenced from: E67E18
  loc_E67E41: Call 0.Method_arg_50 (var_88)
  loc_E67E49: var_90 = "TxtCrDr_KeyDown"
  loc_E67E56: Proc_183_57_104AA84(var_88)
  loc_E67E62: Exit Sub
End Sub

Private Sub TxtCrDr_KeyPress(KeyAscii As Integer) '122C904
  'Data Table: 5C26A4
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_98 As String
  Dim arg_10 As Integer
  loc_122C404: On Error Goto loc_122C8DA
  loc_122C410: If (global_132 = &HFF) Then
  loc_122C413:   Exit Sub
  loc_122C414: End If
  loc_122C420: If (CInt(global_110) = 3) Then
  loc_122C423:   Exit Sub
  loc_122C424: End If
  loc_122C427: var_88 = arg_10
  loc_122C430: If Not (var_88 = &H44) Then
  loc_122C439:   If Not (var_88 = &H64) Then
  loc_122C442:     If Not (var_88 = &H43) Then
  loc_122C44B:       If Not (var_88 = &H63) Then
  loc_122C454:         If Not (var_88 = &H54) Then
  loc_122C45D:           If Not (var_88 = &H74) Then
  loc_122C466:             If Not (var_88 = &H62) Then
  loc_122C46F:               If (var_88 = &H42) Then
  loc_122C472:               End If
  loc_122C472:             End If
  loc_122C472:           End If
  loc_122C472:         End If
  loc_122C472:       End If
  loc_122C472:     End If
  loc_122C472:   End If
  loc_122C475:   var_8A = arg_10
  loc_122C47E:   If Not (var_8A = &H44) Then
  loc_122C487:     If Not (var_8A = &H64) Then
  loc_122C490:       If Not (var_8A = &H62) Then
  loc_122C499:         If (var_8A = &H42) Then
  loc_122C49C:         End If
  loc_122C49C:       End If
  loc_122C49C:     End If
  loc_122C4A9:     Set var_90 = Me.TxtCrDr
  loc_122C4AF:     Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94, var_98)
  loc_122C4B7:     var_8A = var_94.Text
  loc_122C4D1:     Set var_9C = Me.TxtCrDr
  loc_122C4D7:     Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_A0, var_A4)
  loc_122C4DF:     (var_98 = "Cr") = var_A0.Text
  loc_122C4FF:     If (var_88 Or (var_A4 = "To")) Then
  loc_122C50F:       Set var_90 = Me.TxtCr
  loc_122C515:       Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122C52F:       Set var_9C = Me.TxtDr
  loc_122C535:       Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_A0)
  loc_122C53D:       var_A0.Text = var_94.Text
  loc_122C55C:       Set var_90 = Me.TxtDr
  loc_122C562:       Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122C56A:       var_94.Visible = True
  loc_122C583:       Set var_90 = Me.TxtCr
  loc_122C589:       Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122C591:       var_94.Text = vbNullString
  loc_122C5AA:       Set var_90 = Me.TxtDr
  loc_122C5B0:       Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122C5D4:       If (CDbl(Val(var_94.Text)) > CDbl(0)) Then
  loc_122C5E1:         Set var_90 = Me.TxtDr
  loc_122C5E7:         Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii)
  loc_122C5EF:         var_94.SetFocus
  loc_122C5FB:       End If
  loc_122C5FB:     End If
  loc_122C618:     var_94 = Me.Fields.Item("ToBy")
  loc_122C65A:     var_98 = CStr(IIf((var_94.Value = "Yes"), "By", "Dr"))
  loc_122C668:     Set var_9C = Me.TxtCrDr
  loc_122C66E:     Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_A0)
  loc_122C676:     var_A0.Text = var_98
  loc_122C699:     Call TxtCrDr_LostFocus()
  loc_122C6A0:     arg_10 = 0
  loc_122C6A6:   Else
  loc_122C6AC:     If Not (var_8A = &H43) Then
  loc_122C6B5:       If Not (var_8A = &H63) Then
  loc_122C6BE:         If Not (var_8A = &H54) Then
  loc_122C6C7:           If (var_8A = &H74) Then
  loc_122C6CA:           End If
  loc_122C6CA:         End If
  loc_122C6CA:       End If
  loc_122C6D7:       Set var_90 = Me.TxtCrDr
  loc_122C6DD:       Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94, var_98)
  loc_122C6E5:       arg_10 = var_94.Text
  loc_122C6FF:       Set var_9C = Me.TxtCrDr
  loc_122C705:       Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_A0, var_A4)
  loc_122C70D:       (var_98 = "Dr") = var_A0.Text
  loc_122C72D:       If (KeyAscii Or (var_A4 = "By")) Then
  loc_122C73D:         Set var_90 = Me.TxtDr
  loc_122C743:         Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122C75D:         Set var_9C = Me.TxtCr
  loc_122C763:         Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_A0)
  loc_122C76B:         var_A0.Text = var_94.Text
  loc_122C78A:         Set var_90 = Me.TxtCr
  loc_122C790:         Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122C798:         var_94.Visible = True
  loc_122C7B1:         Set var_90 = Me.TxtDr
  loc_122C7B7:         Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122C7D8:         Set var_90 = Me.TxtCr
  loc_122C7DE:         Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122C802:         If (CDbl(Val(vbNullString)) > CDbl(0)) Then
  loc_122C80F:           Set var_90 = Me.TxtCr
  loc_122C815:           Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_94)
  loc_122C81D:           var_94.SetFocus
  loc_122C829:         End If
  loc_122C829:       End If
  loc_122C888:       var_98 = CStr(IIf((Me.Fields.Item("ToBy").Value = "Yes"), "To", "Cr"))
  loc_122C896:       Set var_9C = Me.TxtCrDr
  loc_122C89C:       Call 0.Method_TxtCrDr_KeyPress0 (KeyAscii, var_A0)
  loc_122C8A4:       var_A0.Text = var_98
  loc_122C8C7:       Call TxtCrDr_LostFocus()
  loc_122C8CE:       arg_10 = 0
  loc_122C8D1:     End If
  loc_122C8D1:   End If
  loc_122C8D4: Else
  loc_122C8D6:   arg_10 = 0
  loc_122C8D9: End If
  loc_122C8D9: Exit Sub
  loc_122C8DA: ' Referenced from: 122C404
  loc_122C8E0: Call 0.Method_arg_50 (var_98, arg_10, arg_10)
  loc_122C8F5: Proc_183_57_104AA84(var_98, "TxtCrDr_KeyPress")
  loc_122C901: Exit Sub
End Sub

Private Sub TxtCrDr_LostFocus(Index As Integer) 'FD50F0
  'Data Table: 5C26A4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_FD4F2C: On Error Goto loc_FD50C6
  loc_FD4F38: If (global_132 = &HFF) Then
  loc_FD4F3B:   Exit Sub
  loc_FD4F3C: End If
  loc_FD4F46: Set var_88 = Me.TxtCrDr
  loc_FD4F4C: Call 0.Method_TxtCrDr_LostFocus0 (Index)
  loc_FD4F5A: Call Proc_185_164_E264C0(var_8C)
  loc_FD4F72: If (CInt(global_110) = 3) Then
  loc_FD4F75:   Exit Sub
  loc_FD4F76: End If
  loc_FD4F83: Set var_88 = Me.TxtCrDr
  loc_FD4F89: Call 0.Method_TxtCrDr_LostFocus0 (Index, var_8C)
  loc_FD4F91: var_94 = var_8C.Text
  loc_FD4FAB: Set var_90 = Me.TxtCrDr
  loc_FD4FB1: Call 0.Method_TxtCrDr_LostFocus0 (Index, var_98, var_9C)
  loc_FD4FB9: (var_94 = "Cr") = var_98.Text
  loc_FD4FD9: If (var_8C Or (var_9C = "To")) Then
  loc_FD4FE9:   Set var_88 = Me.TxtDr
  loc_FD4FEF:   Call 0.Method_TxtCrDr_LostFocus0 (Index, var_8C)
  loc_FD4FF7:   var_8C.Text = vbNullString
  loc_FD500F:   Set var_88 = Me.TxtDr
  loc_FD5015:   Call 0.Method_TxtCrDr_LostFocus0 (Index, var_8C)
  loc_FD501D:   var_8C.Visible = False
  loc_FD5035:   Set var_88 = Me.TxtCr
  loc_FD503B:   Call 0.Method_TxtCrDr_LostFocus0 (Index, var_8C)
  loc_FD5043:   var_8C.Visible = True
  loc_FD5052: Else
  loc_FD505F:   Set var_88 = Me.TxtCr
  loc_FD5065:   Call 0.Method_TxtCrDr_LostFocus0 (Index, var_8C)
  loc_FD506D:   var_8C.Text = vbNullString
  loc_FD5085:   Set var_88 = Me.TxtDr
  loc_FD508B:   Call 0.Method_TxtCrDr_LostFocus0 (Index, var_8C)
  loc_FD5093:   var_8C.Visible = True
  loc_FD50AB:   Set var_88 = Me.TxtCr
  loc_FD50B1:   Call 0.Method_TxtCrDr_LostFocus0 (Index, var_8C)
  loc_FD50B9:   var_8C.Visible = False
  loc_FD50C5: End If
  loc_FD50C5: Exit Sub
  loc_FD50C6: ' Referenced from: FD4F2C
  loc_FD50CC: Call 0.Method_arg_50 (var_94)
  loc_FD50D4: var_A0 = "TxtCrDr_LostFocus"
  loc_FD50E1: Proc_183_57_104AA84(var_94)
  loc_FD50ED: Exit Sub
End Sub

Private Sub TxtCrDr_Validate(Cancel As Boolean) '1288FF8
  'Data Table: 5C26A4
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_128 As Variant
  Dim var_130 As TextBox
  Dim arg_10 As Integer
  Dim var_15C As String
  Dim var_160 As String
  Dim unk_5C26BA As Connection15
  Dim var_88 As Recordset15
  Dim var_158 As String
  Dim var_E8 As TextBox
  loc_1288A48: On Error Goto loc_1288FCE
  loc_1288A54: If (global_132 = &HFF) Then
  loc_1288A57:   Exit Sub
  loc_1288A58: End If
  loc_1288A64: If (CInt(global_110) = 3) Then
  loc_1288A67:   Exit Sub
  loc_1288A68: End If
  loc_1288A74: If (CInt(global_110) <= 2) Then
  loc_1288A94:   var_A0 = Me.Fields.Item("ToBy")
  loc_1288AB6:   If CBool(var_A0.Value <> "No") Then
  loc_1288AC3:     Set var_8C = Me.TxtCrDr
  loc_1288AC9:     Call 0.Method_TxtCrDr_Validate0 (Cancel)
  loc_1288AF4:     Set var_E4 = Me.TxtCrDr
  loc_1288AFA:     Call 0.Method_TxtCrDr_Validate0 (Cancel, var_E8)
  loc_1288B1B:     var_128 = (Trim(CVar(var_A0)) <> "To") And (Trim(CVar(var_E8)) <> "By")
  loc_1288B2C:     Set var_12C = Me.TxtCrDr
  loc_1288B32:     Call 0.Method_TxtCrDr_Validate0 (Cancel, var_130, var_132)
  loc_1288B3A:     var_128 = var_130.Visible
  loc_1288B67:     If CBool(var_A0 And (var_132 = &HFF)) Then
  loc_1288B6C:       arg_10 = &HFF
  loc_1288B6F:       Exit Sub
  loc_1288B70:     End If
  loc_1288B73:   Else
  loc_1288B7D:     Set var_8C = Me.TxtCrDr
  loc_1288B83:     Call 0.Method_TxtCrDr_Validate0 (Cancel, var_A0)
  loc_1288BAE:     Set var_E4 = Me.TxtCrDr
  loc_1288BB4:     Call 0.Method_TxtCrDr_Validate0 (Cancel, var_E8)
  loc_1288BD5:     var_128 = (Trim(CVar(var_A0)) <> "Cr") And (Trim(CVar(var_E8)) <> "Dr")
  loc_1288BE6:     Set var_12C = Me.TxtCrDr
  loc_1288BEC:     Call 0.Method_TxtCrDr_Validate0 (Cancel, var_130, var_132)
  loc_1288BF4:     var_128 = var_130.Visible
  loc_1288C21:     If CBool(arg_10 And (var_132 = &HFF)) Then
  loc_1288C26:       arg_10 = &HFF
  loc_1288C29:       Exit Sub
  loc_1288C2A:     End If
  loc_1288C2A:   End If
  loc_1288C2A: End If
  loc_1288C36: If (CInt(global_110) <= 2) Then
  loc_1288C43:   Set var_8C = Me.TxtAcName
  loc_1288C49:   Call 0.Method_TxtCrDr_Validate0 (Cancel, var_A0)
  loc_1288C72:   If (Trim(CVar(var_A0)) = vbNullString) Then
  loc_1288C7F:     Set var_8C = Me.TxtCrDr
  loc_1288C85:     Call 0.Method_TxtCrDr_Validate0 (Cancel, var_A0)
  loc_1288CB0:     Set var_E4 = Me.TxtCrDr
  loc_1288CB6:     Call 0.Method_TxtCrDr_Validate0 (Cancel, var_E8)
  loc_1288CEF:     If CBool((Trim(CVar(var_A0)) = "Cr") Or (Trim(CVar(var_E8)) = "To")) Then
  loc_1288D0E:       Set var_8C = Me.TxtVtYpe
  loc_1288D14:       Call 0.Method_TxtCrDr_Validate0 (0, var_A0, var_158, "SELECT SubGroup.Name,VOUCHER_TYPE.* FROM VOUCHER_TYPE LEFT JOIN SubGroup ON VOUCHER_TYPE.DefaultCrAC = SubGroup.SubCode WHERE VOUCHER_TYPE.V_TYPE='")
  loc_1288D1C:       var_B0 = var_A0.Tag
  loc_1288D25:       var_15C = -1 & var_158
  loc_1288D35:       unk_5C26BA.Execute var_15C & "'", var_E4, arg_10
  loc_1288D40:       Set var_88 = var_E4
  loc_1288D6C:       If (var_88.RecordCount > 0) Then
  loc_1288DA4:         Set var_E4 = Me.TxtAcName
  loc_1288DAA:         Call 0.Method_TxtCrDr_Validate0 (Cancel, var_E8)
  loc_1288DB2:         var_E8.Tag = Proc_183_2_E5A304(CVar(var_88.Fields.Item("DefaultCrAC")))
  loc_1288DDD:         var_A0 = var_88.Fields.Item("Name")
  loc_1288DEE:         var_158 = Proc_183_2_E5A304(CVar(var_A0))
  loc_1288DFB:         Set var_E4 = Me.TxtAcName
  loc_1288E01:         Call 0.Method_TxtCrDr_Validate0 (Cancel, var_E8)
  loc_1288E09:         var_E8.Text = var_158
  loc_1288E1D:       End If
  loc_1288E1D:     End If
  loc_1288E27:     Set var_8C = Me.TxtCrDr
  loc_1288E2D:     Call 0.Method_TxtCrDr_Validate0 (Cancel)
  loc_1288E58:     Set var_E4 = Me.TxtCrDr
  loc_1288E5E:     Call 0.Method_TxtCrDr_Validate0 (Cancel, var_E8)
  loc_1288E97:     If CBool((Trim(CVar(var_A0)) = "Dr") Or (Trim(CVar(var_E8)) = "By")) Then
  loc_1288EB6:       Set var_8C = Me.TxtVtYpe
  loc_1288EBC:       Call 0.Method_TxtCrDr_Validate0 (0, var_A0, var_158, "SELECT SubGroup.Name,VOUCHER_TYPE.* FROM VOUCHER_TYPE LEFT JOIN SubGroup ON VOUCHER_TYPE.DefaultDrAC = SubGroup.SubCode WHERE VOUCHER_TYPE.V_TYPE='")
  loc_1288EC4:       var_B0 = var_A0.Tag
  loc_1288ECD:       var_15C = -1 & var_158
  loc_1288EDD:       unk_5C26BA.Execute var_15C & "'", var_E4, var_A0
  loc_1288EE8:       Set var_88 = var_E4
  loc_1288F14:       If (var_88.RecordCount > 0) Then
  loc_1288F4C:         Set var_E4 = Me.TxtAcName
  loc_1288F52:         Call 0.Method_TxtCrDr_Validate0 (Cancel, var_E8)
  loc_1288F5A:         var_E8.Tag = Proc_183_2_E5A304(CVar(var_88.Fields.Item("DefaultDrAC")))
  loc_1288F96:         var_158 = Proc_183_2_E5A304(CVar(var_88.Fields.Item("Name")))
  loc_1288FA3:         Set var_E4 = Me.TxtAcName
  loc_1288FA9:         Call 0.Method_TxtCrDr_Validate0 (Cancel, var_E8)
  loc_1288FB1:         var_E8.Text = var_158
  loc_1288FC5:       End If
  loc_1288FC5:     End If
  loc_1288FC5:   End If
  loc_1288FC5: End If
  loc_1288FCA: Set var_88 = Nothing
  loc_1288FCD: Exit Sub
  loc_1288FCE: ' Referenced from: 1288A48
  loc_1288FD4: Call 0.Method_arg_50 (var_158)
  loc_1288FDC: var_160 = "TxtCrDr_Validate"
  loc_1288FE9: Proc_183_57_104AA84(var_158)
  loc_1288FF5: Exit Sub
End Sub

Private Sub DGAcHlp_UnknownEvent_9 '13B72D0
  'Data Table: 5C26A4
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_E8 As Variant
  Dim Me As Recordset15
  Dim var_F8 As Double
  Dim var_C0 As Variant
  Dim var_E4 As Variant
  Dim var_14C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_214 As Variant
  loc_13B69B0: On Error Goto loc_13B72A8
  loc_13B69D6: If (CStr(Me.DGAcHlp.Tag) = vbNullString) Then
  loc_13B69D9:   Exit Sub
  loc_13B69DA: End If
  loc_13B69E9: Me.DGAcHlp.Visible = False
  loc_13B6A12: Set var_C0 = Me.TxtCrDr
  loc_13B6A18: Call 0.Method_DGAcHlp_UnknownEvent_90 (CInt(CStr(Me.DGAcHlp.Tag)), var_C4)
  loc_13B6A4E: Set var_E4 = Me.TxtCrDr
  loc_13B6A54: Call 0.Method_DGAcHlp_UnknownEvent_90 (CInt(CStr(Me.DGAcHlp.Tag)), var_E8)
  loc_13B6A8B: If ((var_C4.Text = "Cr") Or (var_E8.Text = "To")) Then
  loc_13B6AA5:   If (Me.RecordCount > 0) Then
  loc_13B6B01:     Set var_CC = Me.TxtAcName
  loc_13B6B07:     Call 0.Method_DGAcHlp_UnknownEvent_90 (CInt(Val(CStr(Me.DGAcHlp.Tag))), var_E4)
  loc_13B6B0F:     var_E4.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_13B6B49:     var_F8 = Val(CStr(Me.DGAcHlp.Tag))
  loc_13B6B88:     Set var_CC = Me.TxtAcName
  loc_13B6B8E:     Call 0.Method_DGAcHlp_UnknownEvent_90 (CInt(var_F8), var_E4, CStr(Me.Fields.Item("Name").Value))
  loc_13B6B96:     var_E4.Text = var_F8
  loc_13B6C1F:     If CBool((Me.Fields.Item("AddressHelp").Value = "Yes") And (CBool(Me.DGAcHlp.Visible) = &HFF)) Then
  loc_13B6C2E:       Me.TxtDetailS.Visible = True
  loc_13B6C54:       Me.TxtDetailS.Left = CDbl(Me.DGAcHlp.Left)
  loc_13B6C9A:       Me.TxtDetailS.Top = (CDbl(Me.DGAcHlp.Top) + CDbl(Me.DGAcHlp.Height))
  loc_13B6CCD:       Me.TxtDetailS.Width = CDbl(Me.DGAcHlp.Width)
  loc_13B6CDF:     Else
  loc_13B6CEB:       Me.TxtDetailS.Visible = False
  loc_13B6CF3:     End If
  loc_13B6D1C:     If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_13B6D7F:       var_14C = (Me.Fields.Item("FatherName").Value + vbCrLf)
  loc_13B6DC2:       var_E4 = Me.Fields
  loc_13B6DDA:       var_1BC = (IIf((Trim(CVar(Me.Fields.Item("FatherName"))) = vbNullString), vbNullString, var_14C) + var_E4.Item("GroupName").Value)
  loc_13B6DE3:       var_1DC = (var_1BC + vbCrLf)
  loc_13B6E14:       var_214 = (var_1DC + Me.Fields.Item("NameWithADDR").Value)
  loc_13B6E26:       Me.TxtDetailS.Text = CStr(var_214)
  loc_13B6E5F:     Else
  loc_13B6E6C:       Me.TxtDetailS.Text = vbNullString
  loc_13B6E74:     End If
  loc_13B6E74:   End If
  loc_13B6E77: Else
  loc_13B6E8E:   If (Me.RecordCount > 0) Then
  loc_13B6EAB:     var_F8 = Val(CStr(Me.DGAcHlp.Tag))
  loc_13B6EEA:     Set var_CC = Me.TxtAcName
  loc_13B6EF0:     Call 0.Method_DGAcHlp_UnknownEvent_90 (CInt(var_F8), var_E4, CStr(Me.Fields.Item("subcode").Value))
  loc_13B6EF8:     var_E4.Tag = var_F8
  loc_13B6F32:     var_F8 = Val(CStr(Me.DGAcHlp.Tag))
  loc_13B6F71:     Set var_CC = Me.TxtAcName
  loc_13B6F77:     Call 0.Method_DGAcHlp_UnknownEvent_90 (CInt(var_F8), var_E4, CStr(Me.Fields.Item("Name").Value))
  loc_13B6F7F:     var_E4.Text = var_F8
  loc_13B7008:     If CBool((Me.Fields.Item("AddressHelp").Value = "Yes") And (CBool(Me.DGAcHlp.Visible) = &HFF)) Then
  loc_13B7017:       Me.TxtDetailS.Visible = True
  loc_13B703D:       Me.TxtDetailS.Left = CDbl(Me.DGAcHlp.Left)
  loc_13B7083:       Me.TxtDetailS.Top = (CDbl(Me.DGAcHlp.Top) + CDbl(Me.DGAcHlp.Height))
  loc_13B70B6:       Me.TxtDetailS.Width = CDbl(Me.DGAcHlp.Width)
  loc_13B70C8:     Else
  loc_13B70D4:       Me.TxtDetailS.Visible = False
  loc_13B70DC:     End If
  loc_13B7105:     If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_13B7131:       var_DC = Trim(CVar(Me.Fields.Item("FatherName")))
  loc_13B714B:       var_C4 = Me.Fields
  loc_13B7168:       var_14C = (var_C4.Item("FatherName").Value + vbCrLf)
  loc_13B71C3:       var_1BC = (IIf((var_DC = vbNullString), vbNullString, var_14C) + Me.Fields.Item("GroupName").Value)
  loc_13B71CC:       var_1DC = (var_1BC + vbCrLf)
  loc_13B71FD:       var_214 = (var_1DC + Me.Fields.Item("NameWithADDR").Value)
  loc_13B720F:       Me.TxtDetailS.Text = CStr(var_214)
  loc_13B7248:     Else
  loc_13B7255:       Me.TxtDetailS.Text = vbNullString
  loc_13B725D:     End If
  loc_13B725D:   End If
  loc_13B725D: End If
  loc_13B726F: var_9C = CStr(Me.DGAcHlp.Tag)
  loc_13B7285: Set var_C0 = Me.TxtAcName
  loc_13B728B: Call 0.Method_DGAcHlp_UnknownEvent_90 (CInt(Val(var_9C)), var_C4, Val(var_9C))
  loc_13B7293: var_C4.SetFocus
  loc_13B72A7: Exit Sub
  loc_13B72A8: ' Referenced from: 13B69B0
  loc_13B72AE: Call 0.Method_arg_50 (var_9C, var_DC)
  loc_13B72C3: Proc_183_57_104AA84(var_9C, "DGAcHlp_Click")
  loc_13B72CF: Exit Sub
End Sub

Private Sub DGAcHlp_UnknownEvent_1B '133E324
  'Data Table: 5C26A4
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_D8 As Double
  Dim var_C0 As Variant
  Dim var_E0 As Double
  Dim var_A8 As Variant
  Dim var_CC As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_158 As Variant
  Dim var_C8 As Fields15
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_220 As Variant
  loc_133DB90: On Error Goto loc_133E2FA
  loc_133DB96: var_86 = Cancel
  loc_133DBA3: If Not (var_86 = CInt(&H26)) Then
  loc_133DBB0:   If Not (var_86 = CInt(&H28)) Then
  loc_133DBBD:     If Not (var_86 = CInt(&H22)) Then
  loc_133DBCA:       If (var_86 = CInt(&H21)) Then
  loc_133DBCD:       End If
  loc_133DBCD:     End If
  loc_133DBCD:   End If
  loc_133DBE7:   var_D8 = Val(CStr(Me.DGAcHlp.Tag))
  loc_133DC04:   var_E0 = Val(CStr(Me.DGAcHlp.Tag))
  loc_133DC15:   Set var_A4 = Me.TxtCrDr
  loc_133DC1B:   Call 0.Method_DGAcHlp_UnknownEvent_1B0 (CInt(var_D8), var_A8, var_AC)
  loc_133DC3E:   Set var_C8 = Me.TxtCrDr
  loc_133DC44:   Call 0.Method_DGAcHlp_UnknownEvent_1B0 (CInt(var_A8.Text), var_CC, var_D0)
  loc_133DC4C:   (var_AC = "Cr") = var_CC.Text
  loc_133DC7B:   If (var_D8 Or (var_D0 = "To")) Then
  loc_133DC8A:     If (CInt(global_110) <= 2) Then
  loc_133DCE4:       Proc_183_34_1305540(Me.DGAcHlp, Me.TxtAcName, CInt(Val(CStr(Me.DGAcHlp.Tag))), global_92, Cancel)
  loc_133DD65:       If CBool((Me.Fields.Item("AddressHelp").Value = "Yes") And (CBool(Me.DGAcHlp.Visible) = &HFF)) Then
  loc_133DD74:         Me.TxtDetailS.Visible = True
  loc_133DD9A:         Me.TxtDetailS.Left = CDbl(Me.DGAcHlp.Left)
  loc_133DDE0:         Me.TxtDetailS.Top = (CDbl(Me.DGAcHlp.Top) + CDbl(Me.DGAcHlp.Height))
  loc_133DE13:         Me.TxtDetailS.Width = CDbl(Me.DGAcHlp.Width)
  loc_133DE25:       Else
  loc_133DE31:         Me.TxtDetailS.Visible = False
  loc_133DE39:       End If
  loc_133DE62:       If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_133DEC5:         var_158 = (Me.Fields.Item("FatherName").Value + vbCrLf)
  loc_133DF20:         var_1C8 = (IIf((Trim(CVar(Me.Fields.Item("FatherName"))) = vbNullString), vbNullString, var_158) + Me.Fields.Item("GroupName").Value)
  loc_133DF29:         var_1E8 = (var_1C8 + vbCrLf)
  loc_133DF5A:         var_220 = (var_1E8 + Me.Fields.Item("NameWithADDR").Value)
  loc_133DF6C:         Me.TxtDetailS.Text = CStr(var_220)
  loc_133DFA5:       Else
  loc_133DFB2:         Me.TxtDetailS.Text = vbNullString
  loc_133DFBA:       End If
  loc_133DFBA:     End If
  loc_133DFBD:   Else
  loc_133DFC9:     If (CInt(global_110) <= 2) Then
  loc_133DFF4:       var_D8 = Val(CStr(Me.DGAcHlp.Tag))
  loc_133E023:       Proc_183_34_1305540(Me.DGAcHlp, Me.TxtAcName, CInt(var_D8), global_88, Cancel, 0, 1)
  loc_133E0A4:       If CBool((Me.Fields.Item("AddressHelp").Value = "Yes") And (CBool(Me.DGAcHlp.Visible) = &HFF)) Then
  loc_133E0B3:         Me.TxtDetailS.Visible = True
  loc_133E0D9:         Me.TxtDetailS.Left = CDbl(Me.DGAcHlp.Left)
  loc_133E11F:         Me.TxtDetailS.Top = (CDbl(Me.DGAcHlp.Top) + CDbl(Me.DGAcHlp.Height))
  loc_133E152:         Me.TxtDetailS.Width = CDbl(Me.DGAcHlp.Width)
  loc_133E164:       Else
  loc_133E170:         Me.TxtDetailS.Visible = False
  loc_133E178:       End If
  loc_133E1A1:       If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_133E1CD:         var_C0 = Trim(CVar(Me.Fields.Item("FatherName")))
  loc_133E204:         var_158 = (Me.Fields.Item("FatherName").Value + vbCrLf)
  loc_133E25F:         var_1C8 = (IIf((var_C0 = vbNullString), vbNullString, var_158) + Me.Fields.Item("GroupName").Value)
  loc_133E268:         var_1E8 = (var_1C8 + vbCrLf)
  loc_133E299:         var_220 = (var_1E8 + Me.Fields.Item("NameWithADDR").Value)
  loc_133E29D:         var_A0 = CStr(var_220)
  loc_133E2AB:         Me.TxtDetailS.Text = var_A0
  loc_133E2E4:       Else
  loc_133E2F1:         Me.TxtDetailS.Text = vbNullString
  loc_133E2F9:       End If
  loc_133E2F9:     End If
  loc_133E2F9:   End If
  loc_133E2F9: End If
  loc_133E2F9: Exit Sub
  loc_133E2FA: ' Referenced from: 133DB90
  loc_133E300: Call 0.Method_arg_50 (var_A0, var_C0, var_D8, var_C0)
  loc_133E315: Proc_183_57_104AA84(var_A0, "DGAcHlp_KeyDown", 0)
  loc_133E321: Exit Sub
End Sub

Private Sub TxtAcName_GotFocus(Index As Integer) '120C7EC
  'Data Table: 5C26A4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim Me As Recordset15
  Dim var_88 As DataGrid
  Dim var_9C As String
  Dim var_C4 As String
  loc_120C320: On Error Goto loc_120C7C1
  loc_120C32C: If (global_132 = &HFF) Then
  loc_120C32F:   Exit Sub
  loc_120C330: End If
  loc_120C33A: Set var_88 = Me.TxtAcName
  loc_120C340: Call 0.Method_TxtAcName_GotFocus0 (Index)
  loc_120C34E: Call Proc_185_163_E215F4(var_8C)
  loc_120C35A: Call Proc_185_169_F64464(var_8C)
  loc_120C36B: If (CInt(global_110) <= 2) Then
  loc_120C37B:   Set var_88 = Me.TxtCrDr
  loc_120C381:   Call 0.Method_TxtAcName_GotFocus0 (Index, var_8C)
  loc_120C389:   var_94 = var_8C.Text
  loc_120C3A3:   Set var_90 = Me.TxtCrDr
  loc_120C3A9:   Call 0.Method_TxtAcName_GotFocus0 (Index, var_98)
  loc_120C3B1:   var_9C = var_98.Text
  loc_120C3D1:   If ((var_94 = "Cr") Or (var_9C = "To")) Then
  loc_120C3EB:     If (Me.RecordCount > 0) Then
  loc_120C3F3:       CVarUnk
  loc_120C3F8:       VerifyVarObj
  loc_120C3FE:       Set var_88 = Me.DGAcHlp
  loc_120C404:       LateIdStAd
  loc_120C418:       Me.MoveFirst
  loc_120C426:       CVarUnk
  loc_120C42B:       VerifyVarObj
  loc_120C431:       Set var_88 = Me.DGAcHlp
  loc_120C437:       LateIdStAd
  loc_120C448:     Else
  loc_120C44D:       CVarUnk
  loc_120C452:       VerifyVarObj
  loc_120C458:       Set var_88 = Me.DGAcHlp
  loc_120C45E:       LateIdStAd
  loc_120C46C:     End If
  loc_120C490:     Set var_88 = Me.TxtAcName
  loc_120C496:     Call 0.Method_TxtAcName_GotFocus0 (Index, var_8C, var_94, (Me.RecordCount = 0), var_88)
  loc_120C49E:     Nothing = var_8C.Text
  loc_120C4B6:     If (var_88 Or (var_94 = vbNullString)) Then
  loc_120C4B9:       Exit Sub
  loc_120C4BA:     End If
  loc_120C4BD:   Else
  loc_120C4D4:     If (Me.RecordCount > 0) Then
  loc_120C4DC:       CVarUnk
  loc_120C4E1:       VerifyVarObj
  loc_120C4E7:       Set var_88 = Me.DGAcHlp
  loc_120C4ED:       LateIdStAd
  loc_120C501:       Me.MoveFirst
  loc_120C50F:       CVarUnk
  loc_120C514:       VerifyVarObj
  loc_120C51A:       Set var_88 = Me.DGAcHlp
  loc_120C520:       LateIdStAd
  loc_120C531:     Else
  loc_120C536:       CVarUnk
  loc_120C53B:       VerifyVarObj
  loc_120C541:       Set var_88 = Me.DGAcHlp
  loc_120C547:       LateIdStAd
  loc_120C555:     End If
  loc_120C579:     Set var_88 = Me.TxtAcName
  loc_120C57F:     Call 0.Method_TxtAcName_GotFocus0 (Index, var_8C, var_94, (Me.RecordCount = 0), var_88, Nothing, var_88)
  loc_120C587:     global_88 = var_8C.Text
  loc_120C59F:     If (var_88 Or (var_94 = vbNullString)) Then
  loc_120C5A2:       Exit Sub
  loc_120C5A3:     End If
  loc_120C5A3:   End If
  loc_120C5B6:   Me.DGAcHlp.Tag = CVar(CStr(Index))
  loc_120C5CE:   Set var_88 = Me.TxtAcName
  loc_120C5D4:   Call 0.Method_TxtAcName_GotFocus0 (Index, var_8C, var_94, Nothing)
  loc_120C5DC:   global_92 = var_8C.Text
  loc_120C5F3:   If (var_94 <> vbNullString) Then
  loc_120C603:     Set var_88 = Me.TxtCrDr
  loc_120C609:     Call 0.Method_TxtAcName_GotFocus0 (Index, var_8C, var_94)
  loc_120C611:     var_88 = var_8C.Text
  loc_120C62B:     Set var_90 = Me.TxtCrDr
  loc_120C631:     Call 0.Method_TxtAcName_GotFocus0 (Index, var_98, var_9C)
  loc_120C639:     (var_94 = "Cr") = var_98.Text
  loc_120C659:     If (Nothing Or (var_9C = "To")) Then
  loc_120C662:       Me.MoveFirst
  loc_120C685:       Set var_88 = Me.TxtAcName
  loc_120C68B:       Call 0.Method_TxtAcName_GotFocus0 (Index, var_8C, var_94, "Name='")
  loc_120C693:       0 = var_8C.Text
  loc_120C6AC:       Me.Find 1 & var_94 & "'", var_C0, 
  loc_120C6C4:     Else
  loc_120C6CA:       Me.MoveFirst
  loc_120C6ED:       Set var_88 = Me.TxtAcName
  loc_120C6F3:       Call 0.Method_TxtAcName_GotFocus0 (Index, var_8C, var_94, "Name='")
  loc_120C6FB:       0 = var_8C.Text
  loc_120C714:       Me.Find 1 & var_94 & "'", var_C0, 
  loc_120C729:     End If
  loc_120C72D:     Set var_88 = Me.DGAcHlp
  loc_120C733:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_6C
  loc_120C741:   Else
  loc_120C74E:     Set var_88 = Me.TxtCrDr
  loc_120C754:     Call 0.Method_TxtAcName_GotFocus0 (Index, var_8C)
  loc_120C75C:     var_94 = var_8C.Text
  loc_120C776:     Set var_90 = Me.TxtCrDr
  loc_120C77C:     Call 0.Method_TxtAcName_GotFocus0 (Index, var_98)
  loc_120C7A4:     If ((var_94 = "Cr") Or (var_98.Text = "To")) Then
  loc_120C7AD:       Me.MoveFirst
  loc_120C7B5:     Else
  loc_120C7BB:       Me.MoveFirst
  loc_120C7C0:     End If
  loc_120C7C0:   End If
  loc_120C7C0: End If
  loc_120C7C0: Exit Sub
  loc_120C7C1: ' Referenced from: 120C320
  loc_120C7C7: Call 0.Method_arg_50 (var_94)
  loc_120C7CF: var_C4 = "TxtAcName_GotFocus"
  loc_120C7DC: Proc_183_57_104AA84(var_94)
  loc_120C7E8: Exit Sub
End Sub

Private Sub TxtAcName_KeyDown(KeyCode As Integer, Shift As Integer) '1313834
  'Data Table: 5C26A4
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_88 As Variant
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_E0 As Variant
  Dim var_130 As Variant
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_200 As Variant
  Dim var_90 As String
  loc_131311C: On Error Goto loc_131380A
  loc_1313128: If (global_132 = &HFF) Then
  loc_131312B:   Exit Sub
  loc_131312C: End If
  loc_1313136: If (CLng(Shift) = &H1B) Then
  loc_1313139:   Call Proc_185_169_F64464()
  loc_131313E: End If
  loc_131314B: Set var_88 = Me.TxtCrDr
  loc_1313151: Call 0.Method_TxtAcName_KeyDown0 (KeyCode, var_8C)
  loc_1313173: Set var_94 = Me.TxtCrDr
  loc_1313179: Call 0.Method_TxtAcName_KeyDown0 (KeyCode, var_98)
  loc_13131A1: If ((var_8C.Text = "Cr") Or (var_98.Text = "To")) Then
  loc_13131B0:   If (CInt(global_110) <= 2) Then
  loc_13131E9:     Proc_183_34_1305540(Me.DGAcHlp, Me.TxtAcName, KeyCode, global_92)
  loc_131320C:     Me.DGAcHlp.Tag = CVar(CStr(KeyCode))
  loc_1313280:     If CBool((Me.Fields.Item("AddressHelp").Value = "Yes") And (CBool(Me.DGAcHlp.Visible) = &HFF)) Then
  loc_131328F:       Me.TxtDetailS.Visible = True
  loc_13132B5:       Me.TxtDetailS.Left = CDbl(Me.DGAcHlp.Left)
  loc_13132FB:       Me.TxtDetailS.Top = (CDbl(Me.DGAcHlp.Top) + CDbl(Me.DGAcHlp.Height))
  loc_131332E:       Me.TxtDetailS.Width = CDbl(Me.DGAcHlp.Width)
  loc_1313340:     Else
  loc_131334C:       Me.TxtDetailS.Visible = False
  loc_1313354:     End If
  loc_131337D:     If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_13133E0:       var_130 = (Me.Fields.Item("FatherName").Value + vbCrLf)
  loc_131343B:       var_1A8 = (IIf((Trim(CVar(Me.Fields.Item("FatherName"))) = vbNullString), vbNullString, var_130) + Me.Fields.Item("GroupName").Value)
  loc_1313444:       var_1C8 = (var_1A8 + vbCrLf)
  loc_1313475:       var_200 = (var_1C8 + Me.Fields.Item("NameWithADDR").Value)
  loc_1313487:       Me.TxtDetailS.Text = CStr(var_200)
  loc_13134C0:     Else
  loc_13134CD:       Me.TxtDetailS.Text = vbNullString
  loc_13134D5:     End If
  loc_13134D5:   End If
  loc_13134D8: Else
  loc_13134E4:   If (CInt(global_110) <= 2) Then
  loc_131351D:     Proc_183_34_1305540(Me.DGAcHlp, Me.TxtAcName, KeyCode, global_88, Shift, 0)
  loc_1313540:     Me.DGAcHlp.Tag = CVar(CStr(KeyCode))
  loc_13135B4:     If CBool((Me.Fields.Item("AddressHelp").Value = "Yes") And (CBool(Me.DGAcHlp.Visible) = &HFF)) Then
  loc_13135C3:       Me.TxtDetailS.Visible = True
  loc_13135E9:       Me.TxtDetailS.Left = CDbl(Me.DGAcHlp.Left)
  loc_131362F:       Me.TxtDetailS.Top = (CDbl(Me.DGAcHlp.Top) + CDbl(Me.DGAcHlp.Height))
  loc_1313662:       Me.TxtDetailS.Width = CDbl(Me.DGAcHlp.Width)
  loc_1313674:     Else
  loc_1313680:       Me.TxtDetailS.Visible = False
  loc_1313688:     End If
  loc_13136B1:     If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_13136DD:       var_E0 = Trim(CVar(Me.Fields.Item("FatherName")))
  loc_1313714:       var_130 = (Me.Fields.Item("FatherName").Value + vbCrLf)
  loc_131376F:       var_1A8 = (IIf((var_E0 = vbNullString), vbNullString, var_130) + Me.Fields.Item("GroupName").Value)
  loc_1313778:       var_1C8 = (var_1A8 + vbCrLf)
  loc_13137A9:       var_200 = (var_1C8 + Me.Fields.Item("NameWithADDR").Value)
  loc_13137AD:       var_90 = CStr(var_200)
  loc_13137BB:       Me.TxtDetailS.Text = var_90
  loc_13137F4:     Else
  loc_1313801:       Me.TxtDetailS.Text = vbNullString
  loc_1313809:     End If
  loc_1313809:   End If
  loc_1313809: End If
  loc_1313809: Exit Sub
  loc_131380A: ' Referenced from: 131311C
  loc_1313810: Call 0.Method_arg_50 (var_90, var_E0, 1, var_E0)
  loc_1313825: Proc_183_57_104AA84(var_90, "TxtAcName_KeyDown", Shift)
  loc_1313831: Exit Sub
End Sub

Private Sub TxtAcName_KeyPress(KeyAscii As Integer) '1302864
  'Data Table: 5C26A4
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_88 As Variant
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_E0 As Variant
  Dim var_134 As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_204 As Variant
  Dim var_90 As String
  loc_130218C: On Error Goto loc_130283A
  loc_1302198: If (global_132 = &HFF) Then
  loc_130219B:   Exit Sub
  loc_130219C: End If
  loc_130219F: Proc_183_46_E070C0(arg_10)
  loc_13021B1: Set var_88 = Me.TxtCrDr
  loc_13021B7: Call 0.Method_TxtAcName_KeyPress0 (KeyAscii, var_8C)
  loc_13021D9: Set var_94 = Me.TxtCrDr
  loc_13021DF: Call 0.Method_TxtAcName_KeyPress0 (KeyAscii, var_98)
  loc_1302207: If ((var_8C.Text = "Cr") Or (var_98.Text = "To")) Then
  loc_1302226:   If (CBool(Me.DGAcHlp.Visible) = &HFF) Then
  loc_1302238:     var_90 = "Name"
  loc_1302253:     Proc_183_41_1459C78(Me.TxtAcName, KeyAscii, global_92)
  loc_13022CB:     If CBool((Me.Fields.Item("AddressHelp").Value = "Yes") And (CBool(Me.DGAcHlp.Visible) = &HFF)) Then
  loc_13022DA:       Me.TxtDetailS.Visible = True
  loc_1302300:       Me.TxtDetailS.Left = CDbl(Me.DGAcHlp.Left)
  loc_1302346:       Me.TxtDetailS.Top = (CDbl(Me.DGAcHlp.Top) + CDbl(Me.DGAcHlp.Height))
  loc_1302379:       Me.TxtDetailS.Width = CDbl(Me.DGAcHlp.Width)
  loc_130238B:     Else
  loc_1302397:       Me.TxtDetailS.Visible = False
  loc_130239F:     End If
  loc_13023C8:     If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_130242B:       var_134 = (Me.Fields.Item("FatherName").Value + vbCrLf)
  loc_1302486:       var_1AC = (IIf((Trim(CVar(Me.Fields.Item("FatherName"))) = vbNullString), vbNullString, var_134) + Me.Fields.Item("GroupName").Value)
  loc_130248F:       var_1CC = (var_1AC + vbCrLf)
  loc_13024C0:       var_204 = (var_1CC + Me.Fields.Item("NameWithADDR").Value)
  loc_13024D2:       Me.TxtDetailS.Text = CStr(var_204)
  loc_130250B:     Else
  loc_1302518:       Me.TxtDetailS.Text = vbNullString
  loc_1302520:     End If
  loc_1302520:   End If
  loc_1302523: Else
  loc_130253F:   If (CBool(Me.DGAcHlp.Visible) = &HFF) Then
  loc_130256C:     Proc_183_41_1459C78(Me.TxtAcName, KeyAscii, global_88, arg_10, "Name")
  loc_13025E4:     If CBool((Me.Fields.Item("AddressHelp").Value = "Yes") And (CBool(Me.DGAcHlp.Visible) = &HFF)) Then
  loc_13025F3:       Me.TxtDetailS.Visible = True
  loc_1302619:       Me.TxtDetailS.Left = CDbl(Me.DGAcHlp.Left)
  loc_130265F:       Me.TxtDetailS.Top = (CDbl(Me.DGAcHlp.Top) + CDbl(Me.DGAcHlp.Height))
  loc_1302692:       Me.TxtDetailS.Width = CDbl(Me.DGAcHlp.Width)
  loc_13026A4:     Else
  loc_13026B0:       Me.TxtDetailS.Visible = False
  loc_13026B8:     End If
  loc_13026E1:     If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_130270D:       var_E0 = Trim(CVar(Me.Fields.Item("FatherName")))
  loc_1302744:       var_134 = (Me.Fields.Item("FatherName").Value + vbCrLf)
  loc_130279F:       var_1AC = (IIf((var_E0 = vbNullString), vbNullString, var_134) + Me.Fields.Item("GroupName").Value)
  loc_13027A8:       var_1CC = (var_1AC + vbCrLf)
  loc_13027D9:       var_204 = (var_1CC + Me.Fields.Item("NameWithADDR").Value)
  loc_13027DD:       var_90 = CStr(var_204)
  loc_13027EB:       Me.TxtDetailS.Text = var_90
  loc_1302824:     Else
  loc_1302831:       Me.TxtDetailS.Text = vbNullString
  loc_1302839:     End If
  loc_1302839:   End If
  loc_1302839: End If
  loc_1302839: Exit Sub
  loc_130283A: ' Referenced from: 130218C
  loc_1302840: Call 0.Method_arg_50 (var_90, var_E0, 0, var_E0)
  loc_1302855: Proc_183_57_104AA84(var_90, "TxtAcName_KeyPress", arg_10)
  loc_1302861: Exit Sub
End Sub

Private Sub TxtAcName_LostFocus(Index As Integer) 'E88B28
  'Data Table: 5C26A4
  loc_E88AC4: On Error Goto loc_E88AFF
  loc_E88AD0: If (global_132 = &HFF) Then
  loc_E88AD3:   Exit Sub
  loc_E88AD4: End If
  loc_E88ADE: Set var_88 = Me.TxtAcName
  loc_E88AE4: Call 0.Method_TxtAcName_LostFocus0 (Index)
  loc_E88AF2: Call Proc_185_164_E264C0(var_8C)
  loc_E88AFE: Exit Sub
  loc_E88AFF: ' Referenced from: E88AC4
  loc_E88B05: Call 0.Method_arg_50 (var_94)
  loc_E88B1A: Proc_183_57_104AA84(var_94, "TxtAcName_LostFocus")
  loc_E88B26: Exit Sub
End Sub

Private Sub TxtAcName_Validate(Cancel As Boolean) '11C87A0
  'Data Table: 5C26A4
  Dim var_90 As Variant
  Dim var_8C As Variant
  Dim var_AC As TextBox
  Dim Me As Recordset15
  Dim var_94 As String
  Dim arg_10 As Integer
  loc_11C8348: On Error Goto loc_11C8777
  loc_11C8354: If (global_132 = &HFF) Then
  loc_11C8357:   Exit Sub
  loc_11C8358: End If
  loc_11C8364: If (CInt(global_110) = 3) Then
  loc_11C8367:   Exit Sub
  loc_11C8368: End If
  loc_11C8375: Set var_8C = Me.TxtCrDr
  loc_11C837B: Call 0.Method_TxtAcName_Validate0 (Cancel, var_90)
  loc_11C839A: If (var_90.Text = vbNullString) Then
  loc_11C839D:   Exit Sub
  loc_11C839E: End If
  loc_11C83BA: If (CBool(Me.DGAcHlp.Visible) = &HFF) Then
  loc_11C83CA:   Set var_8C = Me.TxtCrDr
  loc_11C83D0:   Call 0.Method_TxtAcName_Validate0 (Cancel, var_90)
  loc_11C83F2:   Set var_A8 = Me.TxtCrDr
  loc_11C83F8:   Call 0.Method_TxtAcName_Validate0 (Cancel, var_AC)
  loc_11C8420:   If ((var_90.Text = "Cr") Or (var_AC.Text = "To")) Then
  loc_11C8464:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11C8474:       Set var_8C = Me.TxtAcName
  loc_11C847A:       Call 0.Method_TxtAcName_Validate0 (Cancel, var_90)
  loc_11C8482:       var_90.Text = vbNullString
  loc_11C849B:       Set var_8C = Me.TxtAcName
  loc_11C84A1:       Call 0.Method_TxtAcName_Validate0 (Cancel, var_90)
  loc_11C84A9:       var_90.Tag = vbNullString
  loc_11C84B8:     Else
  loc_11C84F3:       Set var_A8 = Me.TxtAcName
  loc_11C84F9:       Call 0.Method_TxtAcName_Validate0 (Cancel, var_AC)
  loc_11C8501:       var_AC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11C8534:       var_90 = Me.Fields.Item("subcode")
  loc_11C8552:       Set var_A8 = Me.TxtAcName
  loc_11C8558:       Call 0.Method_TxtAcName_Validate0 (Cancel, var_AC)
  loc_11C8560:       var_AC.Tag = CStr(var_90.Value)
  loc_11C8576:     End If
  loc_11C8579:   Else
  loc_11C85BA:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11C85CA:       Set var_8C = Me.TxtAcName
  loc_11C85D0:       Call 0.Method_TxtAcName_Validate0 (Cancel, var_90)
  loc_11C85D8:       var_90.Text = vbNullString
  loc_11C85F1:       Set var_8C = Me.TxtAcName
  loc_11C85F7:       Call 0.Method_TxtAcName_Validate0 (Cancel, var_90)
  loc_11C85FF:       var_90.Tag = vbNullString
  loc_11C860E:     Else
  loc_11C8649:       Set var_A8 = Me.TxtAcName
  loc_11C864F:       Call 0.Method_TxtAcName_Validate0 (Cancel, var_AC)
  loc_11C8657:       var_AC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11C868A:       var_90 = Me.Fields.Item("subcode")
  loc_11C86A8:       Set var_A8 = Me.TxtAcName
  loc_11C86AE:       Call 0.Method_TxtAcName_Validate0 (Cancel, var_AC)
  loc_11C86B6:       var_AC.Tag = CStr(var_90.Value)
  loc_11C86CC:     End If
  loc_11C86CC:   End If
  loc_11C86CC: End If
  loc_11C86D8: If (CInt(global_110) <= 2) Then
  loc_11C86E8:   Set var_8C = Me.TxtAcName
  loc_11C86EE:   Call 0.Method_TxtAcName_Validate0 (Cancel, var_90)
  loc_11C86F6:   var_94 = var_90.Text
  loc_11C8723:   Set var_A8 = Me.TxtAcName
  loc_11C8729:   Call 0.Method_TxtAcName_Validate0 (Cancel, var_AC)
  loc_11C8731:   var_B6 = var_AC.Visible
  loc_11C875A:   If CBool((Trim(CVar(var_94)) = vbNullString) And (var_B6 = &HFF)) Then
  loc_11C875F:     arg_10 = &HFF
  loc_11C8762:     Exit Sub
  loc_11C8763:   End If
  loc_11C8769:   Call Proc_185_145_E9BED0(Cancel, var_B6)
  loc_11C8772:   var_86 = var_B6 'Byte
  loc_11C8776: End If
  loc_11C8776: Exit Sub
  loc_11C8777: ' Referenced from: 11C8348
  loc_11C877D: Call 0.Method_arg_50 (var_94)
  loc_11C8792: Proc_183_57_104AA84(var_94, "TxtAcName_Validate")
  loc_11C879E: Exit Sub
End Sub

Private Sub FgridAdjust_UnknownEvent_9 'E55318
  'Data Table: 5C26A4
  loc_E552E4: On Error Goto loc_E552ED
  loc_E552E7: Call Proc_185_150_FEB7C8()
  loc_E552EC: Exit Sub
  loc_E552ED: ' Referenced from: E552E4
  loc_E552F3: Call 0.Method_arg_50 (var_88)
  loc_E552FB: var_90 = "FGRIDADJUST_Click"
  loc_E55308: Proc_183_57_104AA84(var_88)
  loc_E55314: Exit Sub
End Sub

Private Sub FgridAdjust_UnknownEvent_D 'E54908
  'Data Table: 5C26A4
  loc_E548D4: On Error Goto loc_E548DD
  loc_E548D7: Call Proc_185_150_FEB7C8()
  loc_E548DC: Exit Sub
  loc_E548DD: ' Referenced from: E548D4
  loc_E548E3: Call 0.Method_arg_50 (var_88)
  loc_E548EB: var_90 = "FGRIDADJUST_KeyUp"
  loc_E548F8: Proc_183_57_104AA84(var_88)
  loc_E54904: Exit Sub
End Sub

Private Sub FgridAdjust_UnknownEvent_12 'EB7214
  'Data Table: 5C26A4
  Dim var_A8 As Variant
  Dim var_C8 As Long
  Dim var_F0 As String
  loc_EB718C: On Error Goto loc_EB71EB
  loc_EB71A2: var_A8 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_EB71A7: var_C8 = &HB
  loc_EB71C5: var_F0 = CStr(Me.FgridAdjust.TextMatrix))
  loc_EB71D2: Me.TXTNARRATION.Text = var_F0
  loc_EB71EA: Exit Sub
  loc_EB71EB: ' Referenced from: EB718C
  loc_EB71F1: Call 0.Method_arg_50 (var_F0, var_C8)
  loc_EB7206: Proc_183_57_104AA84(var_F0, "FgridAdjust_RowColChange")
  loc_EB7212: Exit Sub
End Sub

Private Sub FgridAdjust_UnknownEvent_15 'E50E74
  'Data Table: 5C26A4
  Dim arg_2CFF As Integer
  loc_E50E44: Call Proc_185_150_FEB7C8()
  loc_E50E49: Exit Sub
  loc_E50E50: Call 0.Method_arg_50 (var_88)
  loc_E50E65: Proc_183_57_104AA84(var_88)
  loc_E50E71: Exit Sub
  loc_E50E72: arg_2CFF = "FGRIDADJUST_Scroll"
End Sub

Private Sub VchDt_GotFocus() 'F07E70
  'Data Table: 5C26A4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_F07D94: On Error Goto loc_F07E48
  loc_F07DA0: If (global_132 = &HFF) Then
  loc_F07DA3:   Exit Sub
  loc_F07DA4: End If
  loc_F07DAD: Set var_88 = Me.VchDt
  loc_F07DB3: Call 0.Method_VchDt_GotFocus0 (0)
  loc_F07DC1: Call Proc_185_163_E215F4(var_8C)
  loc_F07DCD: Call Proc_185_169_F64464(var_8C)
  loc_F07DE0: Set var_88 = Me.VchDt
  loc_F07DE6: Call 0.Method_VchDt_GotFocus0 (0, var_8C)
  loc_F07DEE: var_8C.SelStart = 0
  loc_F07E06: Set var_88 = Me.VchDt
  loc_F07E0C: Call 0.Method_VchDt_GotFocus0 (0, var_8C)
  loc_F07E14: var_94 = var_8C.Text
  loc_F07E26: Set var_90 = Me.VchDt
  loc_F07E2C: Call 0.Method_VchDt_GotFocus0 (0, var_98)
  loc_F07E34: var_98.SelLength = Len(var_94)
  loc_F07E47: Exit Sub
  loc_F07E48: ' Referenced from: F07D94
  loc_F07E4E: Call 0.Method_arg_50 (var_94)
  loc_F07E56: var_A0 = "VchDt_GotFocus"
  loc_F07E63: Proc_183_57_104AA84(var_94)
  loc_F07E6F: Exit Sub
End Sub

Private Sub VchDt_KeyDown(KeyCode As Integer, Shift As Integer) 'E68BAC
  'Data Table: 5C26A4
  loc_E68B60: On Error Goto loc_E68B83
  loc_E68B6C: If (global_132 = &HFF) Then
  loc_E68B6F:   Exit Sub
  loc_E68B70: End If
  loc_E68B7A: If (CLng(Shift) = &H1B) Then
  loc_E68B7D:   Call Proc_185_169_F64464()
  loc_E68B82: End If
  loc_E68B82: Exit Sub
  loc_E68B83: ' Referenced from: E68B60
  loc_E68B89: Call 0.Method_arg_50 (var_88)
  loc_E68B91: var_90 = "VchDt_KeyDown"
  loc_E68B9E: Proc_183_57_104AA84(var_88)
  loc_E68BAA: Exit Sub
End Sub

Private Sub VchDt_LostFocus() 'E8A6B4
  'Data Table: 5C26A4
  loc_E8A650: On Error Goto loc_E8A68A
  loc_E8A65C: If (global_132 = &HFF) Then
  loc_E8A65F:   Exit Sub
  loc_E8A660: End If
  loc_E8A669: Set var_88 = Me.VchDt
  loc_E8A66F: Call 0.Method_VchDt_LostFocus0 (0)
  loc_E8A67D: Call Proc_185_164_E264C0(var_8C)
  loc_E8A689: Exit Sub
  loc_E8A68A: ' Referenced from: E8A650
  loc_E8A690: Call 0.Method_arg_50 (var_94)
  loc_E8A6A5: Proc_183_57_104AA84(var_94, "VchDt_LostFocus")
  loc_E8A6B1: Exit Sub
  loc_E8A6B2: Exit Sub
End Sub

Private Sub VchDt_Validate(Cancel As Boolean) '122A340
  'Data Table: 5C26A4
  Dim var_90 As Variant
  Dim var_D0 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_114 As String
  Dim unk_5C26BA As Connection15
  Dim var_88 As Recordset15
  Dim var_9C As Field20
  Dim var_130 As TextBox
  Dim var_110 As Variant
  Dim var_98 As String
  loc_1229E54: On Error Goto loc_122A318
  loc_1229E60: If (global_132 = &HFF) Then
  loc_1229E63:   Exit Sub
  loc_1229E64: End If
  loc_1229E70: If (CInt(global_110) = 3) Then
  loc_1229E73:   Exit Sub
  loc_1229E74: End If
  loc_1229E80: Set var_8C = Me.VchDt
  loc_1229E86: Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_1229E9D: Call 0.Method_arg_184 (var_90)
  loc_1229EAE: Set var_9C = Me.VchDt
  loc_1229EB4: Call 0.Method_VchDt_Validate0 (0, var_A0)
  loc_1229EBC: Me.VchDt.Text = var_98
  loc_1229EDB: Set var_8C = Me.VchDt
  loc_1229EE1: Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_1229EF8: Call 0.Method_arg_198 (var_90, var_98)
  loc_1229F04: Set var_9C = Me.LblDay
  loc_1229F0A: Me.LblDay.Caption = var_98
  loc_1229F39: Set var_8C = Me.VchDt
  loc_1229F3F: Call 0.Method_VchDt_Validate0 (0, var_90, var_98)
  loc_1229F47: ((global_216 = "No") And (MemVar_1F920B8 <> 1)) = var_90.Text
  loc_1229F60: If (var_98 And (CDate(var_98) < MemVar_1F920EC)) Then
  loc_1229F69:   Call 0.Method_arg_50 (var_98)
  loc_1229F77:   var_D0 = CVar(var_98) 'String
  loc_1229F8A:   MsgBox("Back Date Entry Blocked.", &H10, var_D0, var_F0, var_110)
  loc_1229F9C:   arg_10 = &HFF
  loc_1229F9F:   Exit Sub
  loc_1229FA0: End If
  loc_1229FB5: var_8C = Me.Fields
  loc_1229FBD: var_90 = var_8C.Item("DateLock")
  loc_1229FC5: var_C0 = var_90.Value
  loc_1229FDF: If (var_C0 = "Y") Then
  loc_1229FF8:   Call 0.Method_VchDt_Validate8 (var_98, "SELECT EDATE,SDATE FROM DateLock WHERE CODE='", var_C0)
  loc_122A001:   var_114 = -1 & var_98
  loc_122A011:   unk_5C26BA.Execute var_114 & "'", var_8C, arg_10
  loc_122A01C:   Set var_88 = var_8C
  loc_122A03A:   Set var_8C = Me.VchDt
  loc_122A040:   Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_122A05F:   If (var_90.Text = vbNullString) Then
  loc_122A07B:     MsgBox("Date is Required", 0, var_D0, var_F0, var_110)
  loc_122A08D:     arg_10 = &HFF
  loc_122A090:     Exit Sub
  loc_122A091:   End If
  loc_122A09D:   Set var_8C = Me.VchDt
  loc_122A0A3:   Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_122A0C2:   If (var_90.Text <> vbNullString) Then
  loc_122A0E8:     If ((var_88.EOF <> &HFF) Or (var_88.BOF <> &HFF)) Then
  loc_122A0F7:       Set var_8C = Me.VchDt
  loc_122A0FD:       Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_122A13E:       var_D0 = (CDate(CDate(var_90.Text)) > var_88.Fields.Item("EDate").Value)
  loc_122A14E:       Set var_A0 = Me.VchDt
  loc_122A154:       Call 0.Method_VchDt_Validate0 (0, var_130, var_114)
  loc_122A18D:       var_F0 = var_88.Fields.Item("SDate").Value
  loc_122A195:       var_110 = (CDate(CDate(var_114)) < var_F0)
  loc_122A1C0:       If CBool(arg_10 Or var_110) Then
  loc_122A1DC:         MsgBox("Date Not Permitted", &H10, var_130.Text, var_F0, var_110)
  loc_122A1EE:         arg_10 = &HFF
  loc_122A1F1:         Exit Sub
  loc_122A1F2:       End If
  loc_122A1F2:     End If
  loc_122A1F2:   End If
  loc_122A1F5: Else
  loc_122A201:   Set var_8C = Me.VchDt
  loc_122A207:   Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_122A226:   If (var_90.Text = vbNullString) Then
  loc_122A22E:     var_98 = CStr(MemVar_1F920EC)
  loc_122A23A:     Set var_8C = Me.VchDt
  loc_122A240:     Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_122A248:     var_90.Text = var_98
  loc_122A257:   End If
  loc_122A263:   Set var_8C = Me.VchDt
  loc_122A269:   Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_122A280:   Call 0.Method_arg_184 (var_90, var_98)
  loc_122A291:   Set var_9C = Me.VchDt
  loc_122A297:   Call 0.Method_VchDt_Validate0 (0, var_A0)
  loc_122A29F:   Me.VchDt.Text = var_98
  loc_122A2BE:   Set var_8C = Me.VchDt
  loc_122A2C4:   Call 0.Method_VchDt_Validate0 (0, var_90)
  loc_122A2DB:   Call 0.Method_arg_198 (var_90, var_98)
  loc_122A2E7:   Set var_9C = Me.LblDay
  loc_122A2ED:   Me.LblDay.Caption = var_98
  loc_122A2FE: End If
  loc_122A30A: Call Proc_185_166_1324960(global_124, global_128)
  loc_122A314: Set var_88 = Nothing
  loc_122A317: Exit Sub
  loc_122A318: ' Referenced from: 1229E54
  loc_122A31E: Call 0.Method_arg_50 (var_98)
  loc_122A333: Proc_183_57_104AA84(var_98, "VchDt_Validate")
  loc_122A33F: Exit Sub
End Sub

Private Sub Text2_Validate(Cancel As Boolean) 'E8557C
  'Data Table: 5C26A4
  loc_E85518: On Error Goto loc_E85553
  loc_E85531: Call 0.Method_arg_184 (Me.Text2)
  loc_E8553D: Set var_90 = Me.Text2
  loc_E85543: Me.Text2.Text = var_8C
  loc_E85552: Exit Sub
  loc_E85553: ' Referenced from: E85518
  loc_E85559: Call 0.Method_arg_50 (var_8C)
  loc_E8556E: Proc_183_57_104AA84(var_8C, "Text2_Validate")
  loc_E8557A: Exit Sub
End Sub

Private Sub FGridRef_UnknownEvent_0 'EDE030
  'Data Table: 5C26A4
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EDDF80: On Error Goto loc_EDE005
  loc_EDDFA6: If (CDbl(CLng(Me.FGridRef.BackColorSel)) = CDbl(global_52)) Then
  loc_EDDFBC:   Me.FGridRef.Col = 1
  loc_EDDFC4: End If
  loc_EDDFD7: Me.FGridRef.BackColorSel = CVar(CLng("16308221"))
  loc_EDDFEA: Set var_88 = Me.TxtGrid
  loc_EDDFF0: Call 0.Method_FGridRef_UnknownEvent_00 (0, var_BC)
  loc_EDDFF8: var_BC.Visible = False
  loc_EDE004: Exit Sub
  loc_EDE005: ' Referenced from: EDDF80
  loc_EDE00B: Call 0.Method_arg_50 (var_C0)
  loc_EDE013: var_C8 = "FGridRef_GotFocus"
  loc_EDE020: Proc_183_57_104AA84(var_C0)
  loc_EDE02C: Exit Sub
  loc_EDE02D: BranchFVar 1279
End Sub

Private Sub FGridRef_UnknownEvent_1 'E9F4CC
  'Data Table: 5C26A4
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E9F450: On Error Goto loc_E9F4A1
  loc_E9F45F: Set var_88 = Me.TxtGrid
  loc_E9F465: Call 0.Method_FGridRef_UnknownEvent_10 (0, var_8C)
  loc_E9F47F: If (var_8C.Visible = 0) Then
  loc_E9F498:   Me.FGridRef.BackColorSel = CVar(CLng(global_52))
  loc_E9F4A0: End If
  loc_E9F4A0: Exit Sub
  loc_E9F4A1: ' Referenced from: E9F450
  loc_E9F4A7: Call 0.Method_arg_50 (var_B4)
  loc_E9F4AF: var_BC = "FGridRef_LostFocus"
  loc_E9F4BC: Proc_183_57_104AA84(var_B4)
  loc_E9F4C8: Exit Sub
End Sub

Private Sub FGridRef_UnknownEvent_9 'E53DA8
  'Data Table: 5C26A4
  loc_E53D74: On Error Goto loc_E53D7D
  loc_E53D77: Call Proc_185_167_E3FD20()
  loc_E53D7C: Exit Sub
  loc_E53D7D: ' Referenced from: E53D74
  loc_E53D83: Call 0.Method_arg_50 (var_88)
  loc_E53D8B: var_90 = "FGridRef_Click"
  loc_E53D98: Proc_183_57_104AA84(var_88)
  loc_E53DA4: Exit Sub
End Sub

Private Sub FGridRef_UnknownEvent_A '11D6FD8
  'Data Table: 5C26A4
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_E8 As Long
  Dim var_F8 As Variant
  Dim var_118 As String
  loc_11D6B68: On Error Goto loc_11D6FAF
  loc_11D6B6F: Set var_88 = Me.TopCtrl1
  loc_11D6B75: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11D6BBA: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_11D6BC3:   Call Form_KeyDown(Cancel, arg_10)
  loc_11D6BC8: End If
  loc_11D6BCC: Set var_88 = Me.TopCtrl1
  loc_11D6BD2: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11D6BEB: If (CStr() = "Browse") Then
  loc_11D6BEE:   Exit Sub
  loc_11D6BEF: End If
  loc_11D6C63: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGridRef.Tag))) = CDbl((CLng(Me.FGridRef.Rows) - (CLng(Me.FGridRef.Rows) - 1))))) Then
  loc_11D6C79:   Me.FGridRef.CellBackColor = CVar(CLng("16777215"))
  loc_11D6C83:   Cancel = 0
  loc_11D6C89: Else
  loc_11D6CB8:   var_9C = CStr(Me.FGridRef.Tag)
  loc_11D6CE0:   If ((CLng(Cancel) = &H28) And (CDbl(Val(var_9C)) = CDbl((CLng(Me.FGridRef.Rows) - 1)))) Then
  loc_11D6CF6:     Me.FGridRef.CellBackColor = CVar(CLng("16777215"))
  loc_11D6D00:     Cancel = 0
  loc_11D6D03:   End If
  loc_11D6D03: End If
  loc_11D6D09: global_168 = Cancel
  loc_11D6D2F: Me.FGridRef.Tag = CVar(CStr(CLng(Me.FGridRef.Row)))
  loc_11D6D53: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_11D6D69:   var_E8 = CLng(Me.FGridRef.Col)
  loc_11D6D79:   If Not (var_E8 = CLng(6)) Then
  loc_11D6D83:     If Not (var_E8 = CLng(5)) Then
  loc_11D6D8D:       If Not (var_E8 = CLng(7)) Then
  loc_11D6D97:         If Not (var_E8 = CLng(2)) Then
  loc_11D6DA1:           If Not (var_E8 = CLng(3)) Then
  loc_11D6DAB:             If Not (var_E8 = CLng(4)) Then
  loc_11D6DB5:               If (var_E8 = CLng(8)) Then
  loc_11D6DB8:               End If
  loc_11D6DB8:             End If
  loc_11D6DB8:           End If
  loc_11D6DB8:         End If
  loc_11D6DB8:       End If
  loc_11D6DB8:     End If
  loc_11D6DCB:     var_D4 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_11D6DE3:     var_F8 = CVar(CLng(Me.FGridRef.Col)) 'Long
  loc_11D6DE8:     var_118 = vbNullString
  loc_11D6DF2:     Set var_B4 = Me.FGridRef
  loc_11D6DF8:     LateIdCallSt
  loc_11D6E13:   Else
  loc_11D6E1A:     If (var_E8 = CLng(1)) Then
  loc_11D6E30:       var_D4 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_11D6E38:       var_F8 = CVar(CLng(6)) 'Long
  loc_11D6E3D:       var_118 = vbNullString
  loc_11D6E47:       Set var_A0 = Me.FGridRef
  loc_11D6E4D:       LateIdCallSt
  loc_11D6E72:       var_D4 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_11D6E7A:       var_F8 = CVar(CLng(5)) 'Long
  loc_11D6E7F:       var_118 = vbNullString
  loc_11D6E89:       Set var_A0 = Me.FGridRef
  loc_11D6E8F:       LateIdCallSt
  loc_11D6EB4:       var_D4 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_11D6EBC:       var_F8 = CVar(CLng(7)) 'Long
  loc_11D6EC1:       var_118 = vbNullString
  loc_11D6ECB:       Set var_A0 = Me.FGridRef
  loc_11D6ED1:       LateIdCallSt
  loc_11D6EF6:       var_D4 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_11D6EFE:       var_F8 = CVar(CLng(2)) 'Long
  loc_11D6F03:       var_118 = vbNullString
  loc_11D6F0D:       Set var_A0 = Me.FGridRef
  loc_11D6F13:       LateIdCallSt
  loc_11D6F38:       var_D4 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_11D6F40:       var_F8 = CVar(CLng(3)) 'Long
  loc_11D6F45:       var_118 = vbNullString
  loc_11D6F4F:       Set var_A0 = Me.FGridRef
  loc_11D6F55:       LateIdCallSt
  loc_11D6F7A:       var_D4 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_11D6F82:       var_F8 = CVar(CLng(4)) 'Long
  loc_11D6F87:       var_118 = vbNullString
  loc_11D6F91:       Set var_A0 = Me.FGridRef
  loc_11D6F97:       LateIdCallSt
  loc_11D6FA9:     End If
  loc_11D6FA9:   End If
  loc_11D6FA9: End If
  loc_11D6FAB: Cancel = 0
  loc_11D6FAE: Exit Sub
  loc_11D6FAF: ' Referenced from: 11D6B68
  loc_11D6FB5: Call 0.Method_arg_50 (var_9C, Cancel, var_A0, var_118, var_F8, var_D4, var_A0, var_118)
  loc_11D6FCA: Proc_183_57_104AA84(var_9C, "FGridRef_KeyDown", var_F8, var_D4, var_A0)
  loc_11D6FD6: Exit Sub
End Sub

Private Sub FGridRef_UnknownEvent_B 'E61630
  'Data Table: 5C26A4
  loc_E615EC: On Error Goto loc_E61606
  loc_E615F8: Call FGridRef_UnknownEvent_C()
  loc_E61602: global_196 = 0
  loc_E61605: Exit Sub
  loc_E61606: ' Referenced from: E615EC
  loc_E6160C: Call 0.Method_arg_50 (var_8C, global_196)
  loc_E61621: Proc_183_57_104AA84(var_8C, "FGridRef_DblClick")
  loc_E6162D: Exit Sub
End Sub

Private Sub FGridRef_UnknownEvent_C '1042648
  'Data Table: 5C26A4
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_10423FC: On Error Goto loc_104261F
  loc_1042403: Set var_88 = Me.TopCtrl1
  loc_1042409: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1042422: If (CStr() = "Browse") Then
  loc_1042425:   Exit Sub
  loc_1042426: End If
  loc_1042439: var_A0 = CLng(Me.FGridRef.Col)
  loc_1042449: If Not (var_A0 = CLng(1)) Then
  loc_1042453:   If (var_A0 = CLng(2)) Then
  loc_1042456:   End If
  loc_104245A:   Set var_C4 = Me.FGridRef
  loc_104247E:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_10424A0:   Set var_B4 = var_C4
  loc_10424B2:   Proc_183_26_1158124(Me, var_B4, Me.TxtGrid, 0)
  loc_10424DA:   Set var_88 = Me.TxtGrid
  loc_10424E0:   Call 0.Method_FGridRef_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_10424E8:   0 = var_B4.Text
  loc_1042501:   If (Len(var_9C) <= 1) Then
  loc_1042510:     Set var_88 = Me.TxtGrid
  loc_1042516:     Call 0.Method_FGridRef_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_104251E:     Asc(var_9C) = var_B4.Text
  loc_104252F:     Set var_B8 = Me.TxtGrid
  loc_1042535:     Call 0.Method_FGridRef_UnknownEvent_C0 (0, var_C4)
  loc_104253D:     var_C4.Text = var_9C
  loc_1042550:   End If
  loc_104255C:   Set var_88 = Me.TxtGrid
  loc_1042562:   Call 0.Method_FGridRef_UnknownEvent_C0 (0, var_B4)
  loc_104256A:   var_9C = var_B4.Text
  loc_104257C:   Set var_B8 = Me.TxtGrid
  loc_1042582:   Call 0.Method_FGridRef_UnknownEvent_C0 (0, var_C4)
  loc_104258A:   var_C4.SelStart = Len(var_9C)
  loc_10425A0: Else
  loc_10425A7:   If Not (var_A0 = CLng(3)) Then
  loc_10425B1:     If Not (var_A0 = CLng(4)) Then
  loc_10425BB:       If (var_A0 = CLng(8)) Then
  loc_10425BE:       End If
  loc_10425BE:     End If
  loc_10425F7:     Proc_183_26_1158124(Me, Me.FGridRef, Me.TxtGrid, 0)
  loc_1042609:   End If
  loc_1042609: End If
  loc_1042613: If (CLng(Cancel) <> &HD) Then
  loc_104261B:   global_196 = &HFF
  loc_104261E: End If
  loc_104261E: Exit Sub
  loc_104261F: ' Referenced from: 10423FC
  loc_1042625: Call 0.Method_arg_50 (var_9C, global_196, &HFF)
  loc_104263A: Proc_183_57_104AA84(var_9C, "FGridRef_KeyPress")
  loc_1042646: Exit Sub
End Sub

Private Sub FGridRef_UnknownEvent_D 'FEE7B0
  'Data Table: 5C26A4
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Variant
  loc_FEE5D4: On Error Goto loc_FEE788
  loc_FEE5DB: Set var_88 = Me.TopCtrl1
  loc_FEE5E1: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FEE5E9: var_9C = CStr()
  loc_FEE5FA: If (var_9C = "Browse") Then
  loc_FEE5FD:   Exit Sub
  loc_FEE5FE: End If
  loc_FEE61B: If (CLng(Me.FGridRef.ColSel) = CLng(0)) Then
  loc_FEE61E:   Exit Sub
  loc_FEE61F: End If
  loc_FEE630: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FEE652:   If (CLng(Me.FGridRef.Row) >= 1) Then
  loc_FEE68C:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FEE6AE:       If (CLng(Me.FGridRef.Rows) > 2) Then
  loc_FEE6C4:         var_AC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_FEE6CD:         Set var_110 = Me.FGridRef
  loc_FEE6E8:       Else
  loc_FEE6FB:         Me.FGridRef.Rows = 1
  loc_FEE703:         var_AC = vbNullString
  loc_FEE70D:         Set var_88 = Me.FGridRef
  loc_FEE71E:         var_AC = 1
  loc_FEE731:         Me.FGridRef.FixedRows = var_AC
  loc_FEE739:       End If
  loc_FEE739:       Call Proc_185_162_11F8598(FGridRef.DispID_10000, var_AC)
  loc_FEE73E:     End If
  loc_FEE741:   Else
  loc_FEE762:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FEE772:   End If
  loc_FEE776:   Set var_88 = Me.FGridRef
  loc_FEE787: End If
  loc_FEE787: Exit Sub
  loc_FEE788: ' Referenced from: FEE5D4
  loc_FEE78E: Call 0.Method_arg_50 (var_9C, FGridRef.DispID_8001)
  loc_FEE7A3: Proc_183_57_104AA84(var_9C, "FGridRef_KeyUp")
  loc_FEE7AF: Exit Sub
End Sub

Private Sub FGridRef_UnknownEvent_15 'E7C510
  'Data Table: 5C26A4
  Dim var_8C As TextBox
  loc_E7C4BC: On Error Goto loc_E7C4E5
  loc_E7C4CA: Set var_88 = Me.TxtGrid
  loc_E7C4D0: Call 0.Method_FGridRef_UnknownEvent_150 (0, var_8C)
  loc_E7C4D8: var_8C.Visible = False
  loc_E7C4E4: Exit Sub
  loc_E7C4E5: ' Referenced from: E7C4BC
  loc_E7C4EB: Call 0.Method_arg_50 (var_90)
  loc_E7C4F3: var_98 = "FGridRef_Scroll"
  loc_E7C500: Proc_183_57_104AA84(var_90)
  loc_E7C50C: Exit Sub
End Sub

Private Sub TxtTDSCode_GotFocus(Index As Integer) '10223A0
  'Data Table: 5C26A4
  Dim var_88 As DataGrid
  Dim var_A8 As Boolean
  Dim Me As Recordset15
  Dim var_C0 As TextBox
  Dim var_CC As String
  loc_1022170: On Error Goto loc_1022377
  loc_102218F: If (CBool(Me.DGTDSCODE.Visible) = &HFF) Then
  loc_1022192:   var_A8 = False
  loc_10221A1:   Me.DGTDSCODE.Visible = var_A8
  loc_10221A9: End If
  loc_10221B5: If (CInt(global_110) <= 2) Then
  loc_10221CF:   If (Me.RecordCount > 0) Then
  loc_10221D7:     CVarUnk
  loc_10221DC:     VerifyVarObj
  loc_10221E2:     Set var_88 = Me.DGTDSCODE
  loc_10221E8:     LateIdStAd
  loc_10221FC:     Me.MoveFirst
  loc_102220A:     CVarUnk
  loc_102220F:     VerifyVarObj
  loc_1022215:     Set var_88 = Me.DGTDSCODE
  loc_102221B:     LateIdStAd
  loc_102222C:   Else
  loc_1022231:     CVarUnk
  loc_1022236:     VerifyVarObj
  loc_102223C:     Set var_88 = Me.DGTDSCODE
  loc_1022242:     LateIdStAd
  loc_1022250:   End If
  loc_1022273:   Set var_88 = Me.TxtTDSCode
  loc_1022279:   Call 0.Method_TxtTDSCode_GotFocus0 (0, var_C0, var_C4, (Me.RecordCount = 0), var_88)
  loc_1022281:   Nothing = var_C0.Text
  loc_1022299:   If (var_88 Or (var_C4 = vbNullString)) Then
  loc_102229C:     Exit Sub
  loc_102229D:   End If
  loc_10222B0:   Me.DGTDSCODE.Tag = CVar(CStr(Index))
  loc_10222C7:   Set var_88 = Me.TxtTDSCode
  loc_10222CD:   Call 0.Method_TxtTDSCode_GotFocus0 (0, var_C0, var_C4)
  loc_10222D5:   global_104 = var_C0.Text
  loc_10222EC:   If (var_C4 <> vbNullString) Then
  loc_10222F5:     Me.MoveFirst
  loc_102231D:     Call 0.Method_TxtTDSCode_GotFocus0 (0, var_C0, var_C4, "Name='", 0)
  loc_1022325:     1 = var_C0.Text
  loc_102233E:     Me.Find var_A8 & var_C4 & "'", Me.TxtTDSCode, Nothing
  loc_1022357:     Set var_88 = Me.DGTDSCODE
  loc_102235D:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6C
  loc_102236B:   Else
  loc_1022371:     Me.MoveFirst
  loc_1022376:   End If
  loc_1022376: End If
  loc_1022376: Exit Sub
  loc_1022377: ' Referenced from: 1022170
  loc_102237D: Call 0.Method_arg_50 (var_C4)
  loc_1022385: var_CC = "TxtTDSCode_GotFocus"
  loc_1022392: Proc_183_57_104AA84(var_C4)
  loc_102239E: Exit Sub
End Sub

Private Sub TxtTDSCode_KeyDown(KeyCode As Integer, Shift As Integer) 'ED9FF0
  'Data Table: 5C26A4
  loc_ED9F48: On Error Goto loc_ED9FC8
  loc_ED9F55: If (CLng(Shift) = &H1B) Then
  loc_ED9F67:   Me.DGTDSCODE.Visible = False
  loc_ED9F6F:   Exit Sub
  loc_ED9F70: End If
  loc_ED9F7C: If (CInt(global_110) <= 2) Then
  loc_ED9FB7:   Proc_183_34_1305540(Me.DGTDSCODE, Me.TxtTDSCode, 0, global_104)
  loc_ED9FC7: End If
  loc_ED9FC7: Exit Sub
  loc_ED9FC8: ' Referenced from: ED9F48
  loc_ED9FCE: Call 0.Method_arg_50 (var_C0, Shift)
  loc_ED9FE3: Proc_183_57_104AA84(var_C0, "TxtTDSCode_KeyDown")
  loc_ED9FEF: Exit Sub
End Sub

Private Sub TxtTDSCode_KeyPress(KeyAscii As Integer) 'EB757C
  'Data Table: 5C26A4
  loc_EB74EC: On Error Goto loc_EB7552
  loc_EB74F2: Proc_183_46_E070C0(arg_10)
  loc_EB7513: If (CBool(Me.DGTDSCODE.Visible) = &HFF) Then
  loc_EB7525:   var_A0 = "Name"
  loc_EB7542:   Proc_183_41_1459C78(Me.TxtTDSCode, 0, global_104)
  loc_EB7551: End If
  loc_EB7551: Exit Sub
  loc_EB7552: ' Referenced from: EB74EC
  loc_EB7558: Call 0.Method_arg_50 (var_A0, arg_10)
  loc_EB756D: Proc_183_57_104AA84(var_A0, "TxtTDSCode_KeyPress")
  loc_EB7579: Exit Sub
  loc_EB757A: arg_2C38 = var_A0
End Sub

Private Sub TxtTDSCode_Validate(Cancel As Boolean) '102615C
  'Data Table: 5C26A4
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_C4 As String
  Dim var_B0 As TextBox
  Dim arg_10 As Integer
  loc_1025F3C: On Error Goto loc_1026134
  loc_1025F4B: If (CInt(global_110) = 3) Then
  loc_1025F4E:   Exit Sub
  loc_1025F4F: End If
  loc_1025F90: If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1025F9F:   Set var_94 = Me.TxtTDSCode
  loc_1025FA5:   Call 0.Method_TxtTDSCode_Validate0 (0, var_98)
  loc_1025FAD:   var_98.Text = vbNullString
  loc_1025FC5:   Set var_94 = Me.TxtTDSCode
  loc_1025FCB:   Call 0.Method_TxtTDSCode_Validate0 (0, var_98)
  loc_1025FD3:   var_98.Tag = vbNullString
  loc_1025FE2: Else
  loc_102601C:   Set var_AC = Me.TxtTDSCode
  loc_1026022:   Call 0.Method_TxtTDSCode_Validate0 (0, var_B0)
  loc_102602A:   var_B0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_102605D:   var_98 = Me.Fields.Item("subcode")
  loc_102607A:   Set var_AC = Me.TxtTDSCode
  loc_1026080:   Call 0.Method_TxtTDSCode_Validate0 (0, var_B0)
  loc_1026088:   var_B0.Tag = CStr(var_98.Value)
  loc_102609E: End If
  loc_10260AA: If (CInt(global_110) <= 2) Then
  loc_10260B9:   Set var_94 = Me.TxtTDSCode
  loc_10260BF:   Call 0.Method_TxtTDSCode_Validate0 (0, var_98)
  loc_10260C7:   var_C4 = var_98.Text
  loc_10260F3:   Set var_AC = Me.TxtTDSCode
  loc_10260F9:   Call 0.Method_TxtTDSCode_Validate0 (0, var_B0)
  loc_102612A:   If CBool((Trim(CVar(var_C4)) = vbNullString) And (var_B0.Visible = &HFF)) Then
  loc_102612F:     arg_10 = &HFF
  loc_1026132:     Exit Sub
  loc_1026133:   End If
  loc_1026133: End If
  loc_1026133: Exit Sub
  loc_1026134: ' Referenced from: 1025F3C
  loc_102613A: Call 0.Method_arg_50 (var_C4)
  loc_102614F: Proc_183_57_104AA84(var_C4, "TxtTDSCode_Validate")
  loc_102615B: Exit Sub
End Sub

Private Sub TxtVtYpe_GotFocus(Index As Integer) 'F52800
  'Data Table: 5C26A4
  Dim var_8C As TextBox
  loc_F526E8: On Error Goto loc_F527D5
  loc_F526F4: If (global_132 = &HFF) Then
  loc_F526F7:   Exit Sub
  loc_F526F8: End If
  loc_F526F8: Call Proc_185_169_F64464()
  loc_F5270A: Set var_88 = Me.TxtVtYpe
  loc_F52710: Call 0.Method_TxtVtYpe_GotFocus0 (Index, var_8C)
  loc_F5272F: If (var_8C.Tag <> vbNullString) Then
  loc_F5273F:   Set var_88 = Me.TxtVtYpe
  loc_F52745:   Call 0.Method_TxtVtYpe_GotFocus0 (Index, var_8C)
  loc_F5275F:   var_9C = Me.LblVPrefix.Caption
  loc_F52772:   Call Proc_185_166_1324960(var_8C.Tag)
  loc_F5278A: Else
  loc_F52798:   var_90 = vbNullString
  loc_F5279E:   Call Proc_185_166_1324960(var_90, 0)
  loc_F527AA: End If
  loc_F527B4: Set var_88 = Me.TxtVtYpe
  loc_F527BA: Call 0.Method_TxtVtYpe_GotFocus0 (Index, var_8C)
  loc_F527C8: Call Proc_185_163_E215F4(var_8C)
  loc_F527D4: Exit Sub
  loc_F527D5: ' Referenced from: F526E8
  loc_F527DB: Call 0.Method_arg_50 (var_90)
  loc_F527F0: Proc_183_57_104AA84(var_90, "TxtVtYpe_GotFocus")
  loc_F527FC: Exit Sub
End Sub

Private Sub TxtVtYpe_KeyDown(KeyCode As Integer, Shift As Integer) 'FD7008
  'Data Table: 5C26A4
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  Dim var_AC As Variant
  Dim var_94 As Variant
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_D8 As String
  loc_FD6E44: On Error Goto loc_FD6FDE
  loc_FD6E50: If (global_132 = &HFF) Then
  loc_FD6E53:   Exit Sub
  loc_FD6E54: End If
  loc_FD6E5E: If (CLng(Shift) = &H1B) Then
  loc_FD6E61:   Call Proc_185_169_F64464()
  loc_FD6E66: End If
  loc_FD6E72: If (CInt(global_110) <= 2) Then
  loc_FD6E82:   Set var_94 = Me.TxtVtYpe
  loc_FD6E88:   Call 0.Method_TxtVtYpe_KeyDown0 (KeyCode, var_98)
  loc_FD6EA2:   Set var_88 = Me.TxtVtYpe
  loc_FD6EA8:   Call 0.Method_TxtVtYpe_KeyDown0 (KeyCode, var_8C)
  loc_FD6EC0:   var_AC = CVar(((var_8C.Top + var_98.Height) + CDbl(&H19))) 'Single
  loc_FD6ECF:   Me.DGVchrHlp.Top = var_AC
  loc_FD6EEE:   Set var_88 = Me.TxtVtYpe
  loc_FD6EF4:   Call 0.Method_TxtVtYpe_KeyDown0 (KeyCode, var_8C)
  loc_FD6F13:   Me.DGVchrHlp.Left = CVar(var_8C.Left)
  loc_FD6F57:   Proc_183_34_1305540(Me.DGVchrHlp, Me.TxtVtYpe, KeyCode, global_76)
  loc_FD6F90:   If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_FD6FBE:     var_D8 = Proc_183_2_E5A304(CVar(Me.Fields.Item("Prefix")), Shift)
  loc_FD6FCB:     Me.LblVPrefix.Caption = var_D8
  loc_FD6FDD:   End If
  loc_FD6FDD: End If
  loc_FD6FDD: Exit Sub
  loc_FD6FDE: ' Referenced from: FD6E44
  loc_FD6FE4: Call 0.Method_arg_50 (var_D8, &HFF)
  loc_FD6FF9: Proc_183_57_104AA84(var_D8, "TxtVtYpe_KeyDown")
  loc_FD7005: Exit Sub
  loc_FD7006: 1 = 
End Sub

Private Sub TxtVtYpe_KeyPress(KeyAscii As Integer) 'F33A34
  'Data Table: 5C26A4
  Dim Me As Recordset15
  Dim var_9C As String
  loc_F33924: On Error Goto loc_F33A0B
  loc_F33930: If (global_132 = &HFF) Then
  loc_F33933:   Exit Sub
  loc_F33934: End If
  loc_F33937: Proc_183_46_E070C0(arg_10)
  loc_F33958: If (CBool(Me.DGVchrHlp.Visible) = &HFF) Then
  loc_F3396A:   var_9C = "Description"
  loc_F33985:   Proc_183_41_1459C78(Me.TxtVtYpe, KeyAscii, global_76)
  loc_F33994: End If
  loc_F339BD: If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_F339EB:   var_9C = Proc_183_2_E5A304(CVar(Me.Fields.Item("Prefix")), arg_10)
  loc_F339F8:   Me.LblVPrefix.Caption = var_9C
  loc_F33A0A: End If
  loc_F33A0A: Exit Sub
  loc_F33A0B: ' Referenced from: F33924
  loc_F33A11: Call 0.Method_arg_50 (var_9C, var_9C)
  loc_F33A26: Proc_183_57_104AA84(var_9C, "TxtVtYpe_KeyPress")
  loc_F33A32: Exit Sub
End Sub

Private Sub TxtVtYpe_LostFocus(Index As Integer) 'E88FDC
  'Data Table: 5C26A4
  loc_E88F78: On Error Goto loc_E88FB3
  loc_E88F84: If (global_132 = &HFF) Then
  loc_E88F87:   Exit Sub
  loc_E88F88: End If
  loc_E88F92: Set var_88 = Me.TxtVtYpe
  loc_E88F98: Call 0.Method_TxtVtYpe_LostFocus0 (Index)
  loc_E88FA6: Call Proc_185_164_E264C0(var_8C)
  loc_E88FB2: Exit Sub
  loc_E88FB3: ' Referenced from: E88F78
  loc_E88FB9: Call 0.Method_arg_50 (var_94)
  loc_E88FCE: Proc_183_57_104AA84(var_94, "TxtVtYpe_LostFocus")
  loc_E88FDA: Exit Sub
End Sub

Private Sub TxtVtYpe_Validate(Cancel As Boolean) '129121C
  'Data Table: 5C26A4
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim var_B8 As TextBox
  Dim var_C8 As Variant
  Dim var_B4 As Label
  Dim var_CC As String
  Dim var_D0 As String
  Dim unk_5C26BA As Connection15
  Dim var_8C As Recordset15
  loc_1290C58: On Error Goto loc_12911F1
  loc_1290C64: If (global_132 = &HFF) Then
  loc_1290C67:   Exit Sub
  loc_1290C68: End If
  loc_1290C74: If (CInt(global_110) = 3) Then
  loc_1290C77:   Exit Sub
  loc_1290C78: End If
  loc_1290CC6: Set var_98 = Me.TxtVtYpe
  loc_1290CCC: Call 0.Method_TxtVtYpe_Validate0 (Cancel, var_9C)
  loc_1290CEC: If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_9C.Text = vbNullString)) Then
  loc_1290CFC:   Set var_98 = Me.TxtVtYpe
  loc_1290D02:   Call 0.Method_TxtVtYpe_Validate0 (Cancel, var_9C)
  loc_1290D0A:   var_9C.Text = vbNullString
  loc_1290D23:   Set var_98 = Me.TxtVtYpe
  loc_1290D29:   Call 0.Method_TxtVtYpe_Validate0 (Cancel, var_9C)
  loc_1290D31:   var_9C.Tag = vbNullString
  loc_1290D4A:   Me.LblVPrefix.Caption = vbNullString
  loc_1290D55: Else
  loc_1290D90:   Set var_B4 = Me.TxtVtYpe
  loc_1290D96:   Call 0.Method_TxtVtYpe_Validate0 (Cancel, var_B8)
  loc_1290D9E:   var_B8.Text = CStr(Me.Fields.Item("Description").Value)
  loc_1290DEF:   Set var_B4 = Me.TxtVtYpe
  loc_1290DF5:   Call 0.Method_TxtVtYpe_Validate0 (Cancel, var_B8)
  loc_1290DFD:   var_B8.Tag = CStr(Me.Fields.Item("V_Type").Value)
  loc_1290E2D:   var_9C = Me.Fields.Item("Prefix")
  loc_1290E4B:   Me.LblVPrefix.Caption = Proc_183_2_E5A304(CVar(var_9C))
  loc_1290E5D: End If
  loc_1290E69: If (CInt(global_110) <> 3) Then
  loc_1290E78:   Set var_98 = Me.TxtVtYpe
  loc_1290E7E:   Call 0.Method_TxtVtYpe_Validate0 (0, var_9C)
  loc_1290E92:   Set var_B4 = Me.LblVPrefix
  loc_1290E98:   var_D0 = var_B4.Caption
  loc_1290EAB:   Call Proc_185_166_1324960(var_9C.Tag)
  loc_1290ECC:   Set var_98 = Me.TxtVtYpe
  loc_1290ED2:   Call 0.Method_TxtVtYpe_Validate0 (0, var_9C)
  loc_1290EDA:   var_A0 = var_9C.Tag
  loc_1290EF1:   If (var_A0 <> vbNullString) Then
  loc_1290F10:     Set var_98 = Me.TxtVtYpe
  loc_1290F16:     Call 0.Method_TxtVtYpe_Validate0 (0, var_9C, var_A0, "SELECT * FROM VOUCHER_TYPE WHERE V_TYPE='")
  loc_1290F1E:     var_C8 = var_9C.Tag
  loc_1290F27:     var_CC = -1 & var_A0
  loc_1290F37:     unk_5C26BA.Execute var_CC & "'", var_B4, var_CC & "'"
  loc_1290F42:     Set var_8C = var_B4
  loc_1290F6E:     If (var_8C.RecordCount > 0) Then
  loc_1290F88:       var_9C = var_8C.Fields.Item("FirstDrCr")
  loc_1290FA5:       Set var_B4 = Me.TxtCrDr
  loc_1290FAB:       Call 0.Method_TxtVtYpe_Validate0 (0, var_B8)
  loc_1290FB3:       var_B8.Text = Proc_183_2_E5A304(CVar(var_9C))
  loc_1290FC7:     End If
  loc_1290FC7:   End If
  loc_1290FD0:   Set var_98 = Me.TxtCrDr
  loc_1290FD6:   Call 0.Method_TxtVtYpe_Validate0 (0)
  loc_1290FFF:   If (Trim(CVar(var_9C)) = vbNullString) Then
  loc_1291008:     var_F8 = global_120
  loc_1291013:     If Not (var_F8 = "CNT") Then
  loc_129101E:       If (var_F8 = "RCT") Then
  loc_1291021:       End If
  loc_129102D:       Set var_98 = Me.TxtDr
  loc_1291033:       Call 0.Method_TxtVtYpe_Validate0 (0, var_9C)
  loc_1291057:       If (CDbl(Val(var_9C.Text)) = CDbl(0)) Then
  loc_1291077:         var_9C = Me.Fields.Item("ToBy")
  loc_12910C6:         Set var_B4 = Me.TxtCrDr
  loc_12910CC:         Call 0.Method_TxtVtYpe_Validate0 (0, var_B8)
  loc_12910D4:         var_B8.Text = CStr(IIf((var_9C.Value = "Yes"), "To", "Cr"))
  loc_12910F4:       End If
  loc_12910F7:     Else
  loc_12910FF:       If Not (var_F8 = "PMT") Then
  loc_129110A:         If (var_F8 = "JV") Then
  loc_129110D:         End If
  loc_1291119:         Set var_98 = Me.TxtCr
  loc_129111F:         Call 0.Method_TxtVtYpe_Validate0 (0, var_9C)
  loc_1291143:         If (CDbl(Val(var_9C.Text)) = CDbl(0)) Then
  loc_1291163:           var_9C = Me.Fields.Item("ToBy")
  loc_12911A5:           var_A0 = CStr(IIf((var_9C.Value = "Yes"), "By", "Dr"))
  loc_12911B2:           Set var_B4 = Me.TxtCrDr
  loc_12911B8:           Call 0.Method_TxtVtYpe_Validate0 (0, var_B8)
  loc_12911C0:           var_B8.Text = var_A0
  loc_12911E0:         End If
  loc_12911E0:       End If
  loc_12911E0:     End If
  loc_12911E0:   End If
  loc_12911E0: End If
  loc_12911E5: Set var_88 = Nothing
  loc_12911ED: Set var_8C = Nothing
  loc_12911F0: Exit Sub
  loc_12911F1: ' Referenced from: 1290C58
  loc_12911F7: Call 0.Method_arg_50 (var_A0)
  loc_129120C: Proc_183_57_104AA84(var_A0, "TxtVtYpe_Validate")
  loc_1291218: Exit Sub
  loc_1291219: Set var_CC = var_9C
End Sub

Private Sub TXTClrDate_GotFocus(Index As Integer) 'E8CA74
  'Data Table: 5C26A4
  loc_E8CA0C: On Error Goto loc_E8CA4C
  loc_E8CA18: If (global_132 = &HFF) Then
  loc_E8CA1B:   Exit Sub
  loc_E8CA1C: End If
  loc_E8CA26: Set var_88 = Me.TXTClrDate
  loc_E8CA2C: Call 0.Method_TXTClrDate_GotFocus0 (Index)
  loc_E8CA3A: Call Proc_185_163_E215F4(var_8C)
  loc_E8CA46: Call Proc_185_169_F64464(var_8C)
  loc_E8CA4B: Exit Sub
  loc_E8CA4C: ' Referenced from: E8CA0C
  loc_E8CA52: Call 0.Method_arg_50 (var_94)
  loc_E8CA5A: var_9C = "TXTClrDate_GotFocus"
  loc_E8CA67: Proc_183_57_104AA84(var_94)
  loc_E8CA73: Exit Sub
End Sub

Private Sub TXTClrDate_KeyDown(KeyCode As Integer, Shift As Integer) 'E6A30C
  'Data Table: 5C26A4
  loc_E6A2C0: On Error Goto loc_E6A2E3
  loc_E6A2CC: If (global_132 = &HFF) Then
  loc_E6A2CF:   Exit Sub
  loc_E6A2D0: End If
  loc_E6A2DA: If (CLng(Shift) = &H1B) Then
  loc_E6A2DD:   Call Proc_185_169_F64464()
  loc_E6A2E2: End If
  loc_E6A2E2: Exit Sub
  loc_E6A2E3: ' Referenced from: E6A2C0
  loc_E6A2E9: Call 0.Method_arg_50 (var_88)
  loc_E6A2F1: var_90 = "TXTClrDate_KeyDown"
  loc_E6A2FE: Proc_183_57_104AA84(var_88)
  loc_E6A30A: Exit Sub
End Sub

Private Sub TXTClrDate_LostFocus(Index As Integer) 'E889D0
  'Data Table: 5C26A4
  loc_E8896C: On Error Goto loc_E889A7
  loc_E88978: If (global_132 = &HFF) Then
  loc_E8897B:   Exit Sub
  loc_E8897C: End If
  loc_E88986: Set var_88 = Me.TXTClrDate
  loc_E8898C: Call 0.Method_TXTClrDate_LostFocus0 (Index)
  loc_E8899A: Call Proc_185_164_E264C0(var_8C)
  loc_E889A6: Exit Sub
  loc_E889A7: ' Referenced from: E8896C
  loc_E889AD: Call 0.Method_arg_50 (var_94)
  loc_E889C2: Proc_183_57_104AA84(var_94, "TXTClrDate_LostFocus")
  loc_E889CE: Exit Sub
End Sub

Private Sub TXTClrDate_Validate(Cancel As Boolean) '101B82C
  'Data Table: 5C26A4
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim arg_10 As Integer
  loc_101B620: On Error Goto loc_101B802
  loc_101B62C: If (global_132 = &HFF) Then
  loc_101B62F:   Exit Sub
  loc_101B630: End If
  loc_101B63C: If (CInt(global_110) = 3) Then
  loc_101B63F:   Exit Sub
  loc_101B640: End If
  loc_101B64C: Set var_88 = Me.TXTClrDate
  loc_101B652: Call 0.Method_TXTClrDate_Validate0 (0, var_8C)
  loc_101B669: Call 0.Method_arg_184 (var_8C)
  loc_101B67A: Set var_98 = Me.TXTClrDate
  loc_101B680: Call 0.Method_TXTClrDate_Validate0 (0, var_9C)
  loc_101B688: Me.TXTClrDate.Text = var_94
  loc_101B6B8: var_8C = Me.Fields.Item("PDCDt")
  loc_101B6DA: If (var_8C.Value = "No") Then
  loc_101B6E9:   Set var_88 = Me.TXTClrDate
  loc_101B6EF:   Call 0.Method_TXTClrDate_Validate0 (0, var_8C)
  loc_101B70E:   If (var_8C.Text <> vbNullString) Then
  loc_101B71A:     Set var_88 = Me.TXTChDate
  loc_101B720:     Call 0.Method_TXTClrDate_Validate0 (0, var_8C)
  loc_101B72F:     var_DC = Trim(CVar(var_8C))
  loc_101B749:     If (var_DC = vbNullString) Then
  loc_101B758:       Set var_88 = Me.TXTClrDate
  loc_101B75E:       Call 0.Method_TXTClrDate_Validate0 (0, var_8C)
  loc_101B766:       var_8C.Text = vbNullString
  loc_101B775:     Else
  loc_101B781:       Set var_90 = Me.TXTChDate
  loc_101B787:       Call 0.Method_TXTClrDate_Validate0 (0, var_98)
  loc_101B7A0:       Set var_88 = Me.TXTClrDate
  loc_101B7A6:       Call 0.Method_TXTClrDate_Validate0 (0, var_8C)
  loc_101B7AE:       var_94 = var_8C.Text
  loc_101B7D0:       If (CDate(var_94) < CDate(var_98.Text)) Then
  loc_101B7EC:         MsgBox("Clg.Date Must be Greater Than Cheque Date", 0, var_DC, var_EC, var_120)
  loc_101B7FE:         arg_10 = &HFF
  loc_101B801:       End If
  loc_101B801:     End If
  loc_101B801:   End If
  loc_101B801: End If
  loc_101B801: Exit Sub
  loc_101B802: ' Referenced from: 101B620
  loc_101B808: Call 0.Method_arg_50 (var_94, arg_10)
  loc_101B81D: Proc_183_57_104AA84(var_94, "TXTClrDate_Validate")
  loc_101B829: Exit Sub
End Sub

Private Sub TXTChDate_GotFocus(Index As Integer) 'E8D154
  'Data Table: 5C26A4
  loc_E8D0EC: On Error Goto loc_E8D12C
  loc_E8D0F8: If (global_132 = &HFF) Then
  loc_E8D0FB:   Exit Sub
  loc_E8D0FC: End If
  loc_E8D106: Set var_88 = Me.TXTChDate
  loc_E8D10C: Call 0.Method_TXTChDate_GotFocus0 (Index)
  loc_E8D11A: Call Proc_185_163_E215F4(var_8C)
  loc_E8D126: Call Proc_185_169_F64464(var_8C)
  loc_E8D12B: Exit Sub
  loc_E8D12C: ' Referenced from: E8D0EC
  loc_E8D132: Call 0.Method_arg_50 (var_94)
  loc_E8D13A: var_9C = "TXTChDate_GotFocus"
  loc_E8D147: Proc_183_57_104AA84(var_94)
  loc_E8D153: Exit Sub
End Sub

Private Sub TXTChDate_KeyDown(KeyCode As Integer, Shift As Integer) 'E69FDC
  'Data Table: 5C26A4
  loc_E69F90: On Error Goto loc_E69FB3
  loc_E69F9C: If (global_132 = &HFF) Then
  loc_E69F9F:   Exit Sub
  loc_E69FA0: End If
  loc_E69FAA: If (CLng(Shift) = &H1B) Then
  loc_E69FAD:   Call Proc_185_169_F64464()
  loc_E69FB2: End If
  loc_E69FB2: Exit Sub
  loc_E69FB3: ' Referenced from: E69F90
  loc_E69FB9: Call 0.Method_arg_50 (var_88)
  loc_E69FC1: var_90 = "TXTChDate_KeyDown"
  loc_E69FCE: Proc_183_57_104AA84(var_88)
  loc_E69FDA: Exit Sub
End Sub

Private Sub TXTChDate_LostFocus(Index As Integer) 'E8AC14
  'Data Table: 5C26A4
  loc_E8ABB0: On Error Goto loc_E8ABEB
  loc_E8ABBC: If (global_132 = &HFF) Then
  loc_E8ABBF:   Exit Sub
  loc_E8ABC0: End If
  loc_E8ABCA: Set var_88 = Me.TXTChDate
  loc_E8ABD0: Call 0.Method_TXTChDate_LostFocus0 (Index)
  loc_E8ABDE: Call Proc_185_164_E264C0(var_8C)
  loc_E8ABEA: Exit Sub
  loc_E8ABEB: ' Referenced from: E8ABB0
  loc_E8ABF1: Call 0.Method_arg_50 (var_94)
  loc_E8AC06: Proc_183_57_104AA84(var_94, "TXTChDate_LostFocus")
  loc_E8AC12: Exit Sub
End Sub

Private Sub TXTChDate_Validate(Cancel As Boolean) 'FD5B30
  'Data Table: 5C26A4
  Dim Me As Recordset15
  Dim var_88 As Fields15
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim arg_10 As Integer
  loc_FD597C: On Error Goto loc_FD5B05
  loc_FD5988: If (global_132 = &HFF) Then
  loc_FD598B:   Exit Sub
  loc_FD598C: End If
  loc_FD5998: If (CInt(global_110) = 3) Then
  loc_FD599B:   Exit Sub
  loc_FD599C: End If
  loc_FD59A9: Set var_88 = Me.TXTChDate
  loc_FD59AF: Call 0.Method_TXTChDate_Validate0 (Cancel, var_8C)
  loc_FD59C6: Call 0.Method_arg_184 (var_8C)
  loc_FD59D8: Set var_98 = Me.TXTChDate
  loc_FD59DE: Call 0.Method_TXTChDate_Validate0 (Cancel, var_9C)
  loc_FD59E6: Me.TXTChDate.Text = var_94
  loc_FD5A16: var_8C = Me.Fields.Item("PDCDt")
  loc_FD5A38: If (var_8C.Value = "No") Then
  loc_FD5A45:   Set var_88 = Me.TXTChDate
  loc_FD5A4B:   Call 0.Method_TXTChDate_Validate0 (Cancel, var_8C)
  loc_FD5A5A:   var_DC = Trim(CVar(var_8C))
  loc_FD5A74:   If CBool(var_DC <> vbNullString) Then
  loc_FD5A83:     Set var_90 = Me.VchDt
  loc_FD5A89:     Call 0.Method_TXTChDate_Validate0 (0, var_98)
  loc_FD5AA3:     Set var_88 = Me.TXTChDate
  loc_FD5AA9:     Call 0.Method_TXTChDate_Validate0 (Cancel, var_8C)
  loc_FD5AB1:     var_94 = var_8C.Text
  loc_FD5AD3:     If (CDate(var_94) > CDate(var_98.Text)) Then
  loc_FD5AEF:       MsgBox("Cheque Date Should be Less than Voucher Date", 0, var_DC, var_EC, var_120)
  loc_FD5B01:       arg_10 = &HFF
  loc_FD5B04:     End If
  loc_FD5B04:   End If
  loc_FD5B04: End If
  loc_FD5B04: Exit Sub
  loc_FD5B05: ' Referenced from: FD597C
  loc_FD5B0B: Call 0.Method_arg_50 (var_94, arg_10)
  loc_FD5B20: Proc_183_57_104AA84(var_94, "TXTChDate_Validate")
  loc_FD5B2C: Exit Sub
End Sub

Private Sub DataCombo3_UnknownEvent_8 'FBBA88
  'Data Table: 5C26A4
  Dim var_88 As DataCombo
  Dim var_98 As Variant
  Dim var_9C As String
  loc_FBB8F8: On Error Goto loc_FBBA5D
  loc_FBB90D: var_9C = CStr(Me.DataCombo3.Text)
  loc_FBB91E: If (var_9C = vbNullString) Then
  loc_FBB927:   Call 0.Method_arg_50 (var_9C)
  loc_FBB948:   MsgBox("Select Voucher Type", &H40, CVar(var_9C), var_DC, var_FC)
  loc_FBB95C:   Set var_88 = Me.DataCombo3
  loc_FBB970: Else
  loc_FBB98C:   Set var_104 = Me.DataCombo2
  loc_FBB992:   Call 0.Method_DataCombo3_UnknownEvent_80 (0, var_108)
  loc_FBB99A:   var_118 = "v_no"
  loc_FBB9C8:   Proc_183_43_EF7D54("SELECT distinct v_no FROM LEDGER where v_type='" & CStr(Me.DataCombo3.BoundText) & "' ORDER BY v_no", var_108, "v_no")
  loc_FBB9F0:   var_98 = Me.DataCombo3.BoundText
  loc_FBBA02:   Set var_104 = Me.DataCombo2
  loc_FBBA08:   Call 0.Method_DataCombo3_UnknownEvent_80 (1, var_108, var_98)
  loc_FBBA10:   var_118 = "v_no"
  loc_FBBA2F:   var_9C = CStr(var_98)
  loc_FBBA3E:   Proc_183_43_EF7D54("SELECT distinct v_no FROM LEDGER where v_type='" & var_9C & "' ORDER BY v_no", var_108, "v_no", var_118)
  loc_FBBA5C: End If
  loc_FBBA5C: Exit Sub
  loc_FBBA5D: ' Referenced from: FBB8F8
  loc_FBBA63: Call 0.Method_arg_50 (var_9C, var_118)
  loc_FBBA78: Proc_183_57_104AA84(var_9C, "DataCombo3_Validate")
  loc_FBBA84: Exit Sub
End Sub

Private Sub TXTADJ_AMT_GotFocus() 'EC8BA4
  'Data Table: 5C26A4
  Dim var_A8 As Variant
  Dim var_C8 As Long
  Dim var_F0 As String
  loc_EC8B0C: On Error Goto loc_EC8B7B
  loc_EC8B22: var_A8 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_EC8B27: var_C8 = &HA
  loc_EC8B6C: var_F0 = "{Home}+{End}"
  loc_EC8B72: Proc_303_0_FB9B68(CStr(Me.FgridAdjust.TextMatrix)), 0, Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_EC8B7A: Exit Sub
  loc_EC8B7B: ' Referenced from: EC8B0C
  loc_EC8B81: Call 0.Method_arg_50 (CStr(Me.FgridAdjust.TextMatrix)), var_C8)
  loc_EC8B96: Proc_183_57_104AA84(CStr(Me.FgridAdjust.TextMatrix)), "TXTADJ_AMT_GotFocus")
  loc_EC8BA2: Exit Sub
End Sub

Private Sub TXTADJ_AMT_KeyDown(KeyCode As Integer, Shift As Integer) 'E8DC58
  'Data Table: 5C26A4
  loc_E8DBEC: On Error Goto loc_E8DC30
  loc_E8DC0C: Proc_183_21_FA163C(Me.TXTADJ_AMT, KeyCode)
  loc_E8DC22: If (CLng(KeyCode) = &HD) Then
  loc_E8DC2A:   Call TXTADJ_AMT_Validate(0)
  loc_E8DC2F: End If
  loc_E8DC2F: Exit Sub
  loc_E8DC30: ' Referenced from: E8DBEC
  loc_E8DC36: Call 0.Method_arg_50 (var_94, &HA)
  loc_E8DC4B: Proc_183_57_104AA84(var_94, "TXTADJ_AMT_KeyDown")
  loc_E8DC57: Exit Sub
End Sub

Private Sub TXTADJ_AMT_KeyPress(KeyAscii As Integer) 'E7D610
  'Data Table: 5C26A4
  loc_E7D5B8: On Error Goto loc_E7D5E5
  loc_E7D5D8: Proc_183_22_129AEBC(Me.TXTADJ_AMT, KeyAscii)
  loc_E7D5E4: Exit Sub
  loc_E7D5E5: ' Referenced from: E7D5B8
  loc_E7D5EB: Call 0.Method_arg_50 (var_94, &HA)
  loc_E7D600: Proc_183_57_104AA84(var_94, "TXTADJ_AMT_KeyPress")
  loc_E7D60C: Exit Sub
End Sub

Private Sub TXTADJ_AMT_Validate(Cancel As Boolean) '11560FC
  'Data Table: 5C26A4
  Dim var_98 As String
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_BC As Variant
  Dim var_DC As Long
  Dim var_274 As Double
  Dim var_27C As Double
  Dim var_198 As Variant
  Dim var_178 As Boolean
  Dim var_1F8 As Variant
  Dim var_218 As Variant
  Dim Cancel As Integer
  loc_1155D90: On Error Goto loc_11560D2
  loc_1155D9B: Proc_183_6_EA3004(CVar(Me.TXTADJ_AMT))
  loc_1155DAF: Me.TXTADJ_AMT.Text = CStr()
  loc_1155DD7: var_104 = Val(Me.ADJ_LAB4.Caption)
  loc_1155DF4: var_10C = Val(Me.ADJ_LAB7.Caption)
  loc_1155E21: var_98 = Me.TXTADJ_AMT.Text
  loc_1155E47: var_BC = CVar(CLng(global_184)) 'Long
  loc_1155E96: If (9 Or (CDbl(Val(CStr(Me.FgridAdjust.TextMatrix)))) < CDbl(Val(Me.TXTADJ_AMT.Text)))) Then
  loc_1155EA0:   var_BC = CVar(CLng(global_184)) 'Long
  loc_1155EA5:   var_DC = 9
  loc_1155EC3:   var_98 = CStr(Me.FgridAdjust.TextMatrix))
  loc_1155ECB:   var_104 = Val(var_98)
  loc_1155EE8:   var_10C = Val(Me.ADJ_LAB4.Caption)
  loc_1155F05:   var_114 = Val(Me.ADJ_LAB7.Caption)
  loc_1155F22:   var_274 = Val(Me.ADJ_LAB4.Caption)
  loc_1155F3F:   var_27C = Val(Me.ADJ_LAB7.Caption)
  loc_1155F7D:   var_198 = CVar(((var_274 - var_27C) + global_188)) 'Double
  loc_1155F95:   var_178 = (CDbl(var_104) > CDbl(((var_10C - var_114) + global_188)))
  loc_1155FBD:   Call 0.Method_arg_50 (var_21C, 9, CVar(CLng(global_184)), var_27C, var_274, var_114)
  loc_1155FDB:   var_1F8 = (" Amount is Greater Then Pendng Adj.Amt. You Can Adjust Only " + LTrim(RTrim(IIf(var_178, var_198, CVar(CStr(Me.FgridAdjust.TextMatrix)))))))
  loc_1155FE4:   var_218 = (var_1F8 + " Here")
  loc_1155FE8:   MsgBox(var_218, &H10, CVar(var_21C), var_24C, var_26C)
  loc_115603C:   Me.FgridAdjust.Row = CVar(CLng(global_184))
  loc_1156046:   Cancel = &HFF
  loc_115604C: Else
  loc_1156072:   var_BC = "0.00"
  loc_115609E:   LateIdCallSt
  loc_11560B8:   Call Proc_185_161_1010428(Me.FgridAdjust, CVar(CStr(Format(CVar(Me.TXTADJ_AMT), var_BC))), 1, 1, &HA, CVar(CLng(global_184)), Cancel)
  loc_11560C9:   Me.TXTADJ_AMT.Visible = False
  loc_11560D1: End If
  loc_11560D1: Exit Sub
  loc_11560D2: ' Referenced from: 1155D90
  loc_11560D8: Call 0.Method_arg_50 (var_98, var_10C, var_104, var_DC)
  loc_11560ED: Proc_183_57_104AA84(var_98, "TXTADJ_AMT_Validate", var_BC)
  loc_11560F9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '14059E8
  'Data Table: 5C26A4
  Dim var_90 As Variant
  Dim var_E0 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_C0 As String
  Dim unk_5C26BA As Connection15
  Dim var_88 As Recordset15
  Dim var_D0 As Variant
  Dim var_1E8 As TextBox
  Dim var_98 As Variant
  Dim Me As Recordset15
  loc_1404FC4: On Error Goto loc_14059BD
  loc_1404FD3: Me.ChqPrint.Visible = False
  loc_1404FF6: If (Me.FRAMEVLIST.Visible = &HFF) Then
  loc_1404FF9:   Exit Sub
  loc_1404FFA: End If
  loc_1404FFA: Call Proc_185_153_E6F3B8()
  loc_1405027: Set var_90 = New
  loc_1405036: Call 0.Method_arg_1C8 (var_90, var_98)
  loc_1405044: global_100 = var_90
  loc_1405054: Set global_100 = var_98
  loc_140507E: Set var_90 = New
  loc_140508D: Call 0.Method_arg_1CC (var_90, var_98)
  loc_140509B: global_96 = var_90
  loc_14050AB: Set global_96 = var_98
  loc_14050D5: Set var_90 = New
  loc_14050E4: Call 0.Method_arg_1C4 (var_90, var_98)
  loc_14050F2: global_72 = var_90
  loc_1405102: Set global_72 = var_98
  loc_140510F: Call Proc_185_156_1115F98(CByte(1))
  loc_1405119: Call Proc_185_158_1017BBC(0)
  loc_1405123: global_108 = 0
  loc_1405133: Set var_90 = Me.FGrid1
  loc_1405139: Me.FGrid1.Rows = 0
  loc_140514D: Set var_90 = Me
  loc_140515C: Proc_5_1_100CB50("ADD", var_90)
  loc_1405172: If (global_140 <> vbNullString) Then
  loc_1405192:   Proc_183_9_EAA760(var_D0, MemVar_1F920C8, "SELECT LV.*,DESCRIPTION,NCAT FROM LastVoucher LV LEFT JOIN VOUCHER_tYPE VT ON Vt.V_TYPE=LV.V_TYPE where User_Name=", var_1E0)
  loc_140519A:   var_E0 = -1 & var_D0 
  loc_14051CC:   var_180 = var_E0 & "  AND LV.V_tYPE='" & CVar(global_140) & "' AND LV.SITE_CODE='" & CVar(MemVar_1F92070) & "' AND LV.LOGSITE_CODE='" 
  loc_14051D6:   var_1A0 = var_180 & CVar(MemVar_1F92078) 
  loc_14051DF:   var_1C0 = var_1A0 & "' ORDER BY LV.LAST_ENT_DATE DESC" 
  loc_14051ED:   unk_5C26BA.Execute CStr(var_1C0), var_90, global_68
  loc_14051F8:   Set var_88 = var_90
  loc_140522C:   If (var_88.RecordCount > 0) Then
  loc_1405264:     global_120 = CStr(Trim(CVar(var_88.Fields.Item("NCat"))))
  loc_14052D2:     var_98 = var_88.Fields.Item("Last_Ent_Date")
  loc_140530B:     Set var_9C = Me.VchDt
  loc_1405311:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_1E8, CStr(Format(CVar(var_98), "dd/MMM/yyyy")))
  loc_1405319:     var_1E8.Text = 1
  loc_140533F:     Call Proc_185_166_1324960(CStr(Trim(CVar(var_88.Fields.Item("V_Type")))), global_128)
  loc_140534E:     Call TxtVtYpe_Validate(0)
  loc_1405356:   Else
  loc_1405376:     var_D0 = CVar(Proc_6_15_EF2C1C(0, 1)) 'String
  loc_1405391:     Set var_90 = Me.VchDt
  loc_1405397:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_98, CStr(Format(var_D0, "dd/MMM/yyyy")))
  loc_140539F:     var_98.Text = 1
  loc_14053C1:     global_120 = "JV"
  loc_14053D9:     Call Proc_185_166_1324960(vbNullString, 0)
  loc_14053E5:   End If
  loc_14053E8: Else
  loc_1405405:   Proc_183_9_EAA760(var_D0, MemVar_1F920C8, "SELECT LV.*,DESCRIPTION,NCAT FROM LastVoucher LV LEFT JOIN VOUCHER_tYPE VT ON Vt.V_TYPE=LV.V_TYPE where User_Name=", var_1A0)
  loc_140540D:   var_E0 = -1 & var_D0 
  loc_140543C:   var_180 = "dd/MMM/yyyy" & " AND LV.SITE_CODE='" & CVar(MemVar_1F92070) & "' AND LV.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' ORDER BY LV.LAST_ENT_DATE DESC" 
  loc_140544A:   unk_5C26BA.Execute CStr(var_180), var_90, 1
  loc_1405455:   Set var_88 = var_90
  loc_1405485:   If (var_88.RecordCount > 0) Then
  loc_14054B9:     global_120 = CStr(var_88.Fields.Item("NCat").Value)
  loc_1405527:     var_98 = var_88.Fields.Item("Last_Ent_Date")
  loc_1405560:     Set var_9C = Me.VchDt
  loc_1405566:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_1E8, CStr(Format(CVar(var_98), "dd/MMM/yyyy")))
  loc_140556E:     var_1E8.Text = 1
  loc_1405594:     Call Proc_185_166_1324960(CStr(Trim(CVar(var_88.Fields.Item("V_Type")))), global_128)
  loc_14055A3:     Call TxtVtYpe_Validate(0)
  loc_14055AB:   Else
  loc_14055CB:     var_E0 = Format(MemVar_1F920EC, "dd/MMM/yyyy")
  loc_14055E0:     Set var_90 = Me.VchDt
  loc_14055E6:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_98, CStr(var_E0), 1)
  loc_14055EE:     var_98.Text = 1
  loc_1405618:     var_C0 = "SELECT VT.Description,VT.NCat,VT.V_Type,VP.Prefix FROM VOUCHER_tYPE AS VT INNER JOIN Voucher_Prefix AS VP ON (VT.Site_Code=VP.Site_Code) AND (VT.LogSite_Code=VP.LogSite_Code) AND (VT.V_Type=VP.V_Type) where VT.SITE_CODE='" & MemVar_1F92070
  loc_1405639:     Set var_90 = Me.VchDt
  loc_140563F:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_98, CVar(var_C0 & "' AND VT.CATEGORY='FA' AND VT.LOGSITE_CODE='" & MemVar_1F92078 & "' AND VP.DATE_FROM<="), var_1C0, -1)
  loc_140564E:     Proc_183_7_EB0C44(var_E0, CVar(var_98), var_1FC)
  loc_140566C:     Set var_9C = Me.VchDt
  loc_1405672:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_1E8, 0 & var_E0 & " AND VP.DATE_TO>=")
  loc_1405681:     Proc_183_7_EB0C44(var_180, CVar(var_1E8))
  loc_1405697:     unk_5C26BA.Execute CStr(1 & var_180), global_108, 
  loc_14056A2:     Set var_88 = var_1FC
  loc_14056E2:     If (var_88.RecordCount > 0) Then
  loc_140571A:       global_120 = CStr(Trim(CVar(var_88.Fields.Item("NCat"))))
  loc_14057A6:       global_128 = CStr(Trim(CVar(var_88.Fields.Item("Prefix"))))
  loc_14057BC:       var_C0 = 0
  loc_14057C8:       Call Proc_185_166_1324960(CStr(Trim(CVar(var_88.Fields.Item("V_Type")))))
  loc_14057D3:     Else
  loc_14057D9:       global_120 = "JV"
  loc_14057F1:       Call Proc_185_166_1324960(vbNullString, 0)
  loc_14057FD:     End If
  loc_140581A:     var_98 = Me.Fields.Item("ToBy")
  loc_1405869:     Set var_9C = Me.TxtCrDr
  loc_140586F:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_1E8)
  loc_1405877:     var_1E8.Text = CStr(IIf((var_98.Value = "Yes"), "By", "Dr"))
  loc_1405897:   End If
  loc_1405897: End If
  loc_14058A4: Me.lblTDS.Caption = vbNullString
  loc_14058B6: Call Proc_185_157_11ECFEC(0, &HFF)
  loc_14058C6: For var_200 = 1 To global_136: var_8A = var_200 'Integer
  loc_14058D4:   Call Proc_185_157_11ECFEC(var_8A, 0)
  loc_14058DC: Next var_200 'Integer
  loc_1405913: Set var_90 = Me.LblDrAmt
  loc_1405919: Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_98, CStr(Format(0, "0.00")))
  loc_1405921: var_98.Caption = 1
  loc_140595E: var_C0 = CStr(Format(0, "0.00"))
  loc_140596B: Set var_90 = Me.LblCrAmt
  loc_1405971: Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_98, var_C0)
  loc_1405979: var_98.Caption = 1
  loc_140599A: Set var_90 = Me.VchDt
  loc_14059A0: Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_98)
  loc_14059A8: var_98.SetFocus
  loc_14059B9: Set var_88 = Nothing
  loc_14059BC: Exit Sub
  loc_14059BD: ' Referenced from: 1404FC4
  loc_14059C3: Call 0.Method_arg_50 (var_C0, 1)
  loc_14059D8: Proc_183_57_104AA84(var_C0, "TopCtrl1_eAdd")
  loc_14059E4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F00E40
  'Data Table: 5C26A4
  loc_F00D70: On Error Goto loc_F00E15
  loc_F00D79: Call 0.Method_arg_50 (var_8C)
  loc_F00DB0: If (MsgBox("Are You Sure To Cancel Changes", &H14, CVar(var_8C), var_DC, var_FC) = 6) Then
  loc_F00DBE:   Call Proc_185_169_F64464(CByte(3))
  loc_F00DD8:   var_8C = "INI"
  loc_F00DDE:   Proc_5_1_100CB50(var_8C, Me)
  loc_F00DF4:   For var_104 = 0 To global_136: var_86 = var_104 'Integer
  loc_F00E02:     Call Proc_185_157_11ECFEC(var_86, 0)
  loc_F00E0A:   Next var_104 'Integer
  loc_F00E0F:   Call Proc_185_144_19C260C()
  loc_F00E14: End If
  loc_F00E14: Exit Sub
  loc_F00E15: ' Referenced from: F00D70
  loc_F00E1B: Call 0.Method_arg_50 (var_8C)
  loc_F00E23: var_110 = "TopCtrl1_eCancel"
  loc_F00E30: Proc_183_57_104AA84(var_8C)
  loc_F00E3C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1539264
  'Data Table: 5C26A4
  Dim Me As Recordset15
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_110 As String
  Dim unk_5C26BA As Connection15
  Dim var_9C As Recordset15
  Dim var_A0 As Recordset15
  Dim var_134 As Fields15
  Dim var_178 As Fields15
  loc_15382D0: On Error Goto loc_1539230
  loc_15382DF: Me.ChqPrint.Visible = False
  loc_15382F5: If (Proc_183_56_FE8818(global_68) = &HFF) Then
  loc_15382F8:   Exit Sub
  loc_15382F9: End If
  loc_1538314: If (Me.FRAMEVLIST.Visible = &HFF) Then
  loc_1538317:   GoTo loc_153921F
  loc_153831A: End If
  loc_1538359: var_EC = "SELECT * FROM LEDGERTDS WHERE DOCID='" & Me.Fields.Item("DocID").Value 
  loc_1538362: var_10C = var_EC & "' AND TDSPOST='Y'" 
  loc_1538366: var_110 = CStr(var_10C)
  loc_1538370: unk_5C26BA.Execute var_110, var_130, -1
  loc_15383A9: If (var_134.RecordCount > 0) Then
  loc_15383C5:   MsgBox("T.D.S.Challan Already Made,Can't delete it", 0, var_EC, var_10C, var_130)
  loc_15383D8: Else
  loc_15383E9:   var_98 = Me.Bookmark 'Variant
  loc_15383F6:   var_138 = Me.RecordCount
  loc_1538404:   If (var_138 > 0) Then
  loc_153840D:     Call 0.Method_arg_50 (var_110)
  loc_1538444:     If (MsgBox("Are sure to delete it", &H14, CVar(var_110), var_10C, var_130) = 6) Then
  loc_1538450:       unk_5C26BA.BeginTrans var_138
  loc_1538487:       Call Proc_185_172_F24680(CStr(Me.Fields.Item("DocID").Value))
  loc_15384C8:       var_170 = 0
  loc_15384DB:       var_168 = 0
  loc_15384E6:       var_164 = 0
  loc_15384F9:       var_15C = 0
  loc_1538504:       var_158 = 0
  loc_1538517:       var_150 = 0
  loc_1538560:       Proc_154_5_10E33A4(MemVar_1F921DC, "LEDGER", "DocId", &HC8, CStr(Me.Fields.Item("DocID").Value), 0, 0, 0)
  loc_15385B7:       var_170 = 0
  loc_15385CA:       var_168 = 0
  loc_15385D5:       var_164 = 0
  loc_15385E8:       var_15C = 0
  loc_15385F3:       var_158 = 0
  loc_1538606:       var_150 = 0
  loc_153864F:       Proc_154_5_10E33A4(MemVar_1F921DC, "LEDGERM", "DocId", &HC8, CStr(Me.Fields.Item("DocID").Value), 0, 0, 0)
  loc_15386A6:       var_170 = 0
  loc_15386B9:       var_168 = 0
  loc_15386C4:       var_164 = 0
  loc_15386D7:       var_15C = 0
  loc_15386E2:       var_158 = 0
  loc_15386F5:       var_150 = 0
  loc_153873E:       Proc_154_5_10E33A4(MemVar_1F921DC, "LEDGERADJ", "DocId1", &HC8, CStr(Me.Fields.Item("DocID").Value), 0, 0, 0)
  loc_1538795:       var_170 = 0
  loc_15387A8:       var_168 = 0
  loc_15387B3:       var_164 = 0
  loc_15387C6:       var_15C = 0
  loc_15387D1:       var_158 = 0
  loc_15387E4:       var_150 = 0
  loc_153882D:       Proc_154_5_10E33A4(MemVar_1F921DC, "LEDGERTDS", "DocId", &HC8, CStr(Me.Fields.Item("DocID").Value), 0, 0, 0)
  loc_15388AB:       unk_5C26BA.Execute CStr("SELECT * FROM LEDGERTDS WHERE DOCID='" & Me.Fields.Item("DocID").Value & "'"), var_130, -1
  loc_15388B6:       Set var_9C = var_134
  loc_15388D0:       ' Referenced from:   1538C12
  loc_15388DF:       If Not(var_9C.EOF) Then
  loc_1538935:         unk_5C26BA.Execute CStr("SELECT * FROM LEDGER WHERE DOCID='" & var_9C.Fields.Item("TDSDocId").Value & "'"), var_130, -1
  loc_1538940:         Set var_A0 = var_134
  loc_153895A:         ' Referenced from:   1538B98
  loc_1538969:         If Not(var_A0.EOF) Then
  loc_15389A8:           If (var_A0.Fields.Item("AmtCr").Value > 0) Then
  loc_15389E4:             var_134 = var_A0.Fields
  loc_1538A72:             Proc_183_0_1279094(MemVar_1F921DC, CStr(var_A0.Fields.Item("subcode").Value), CSng(var_134.Item("AmtCr").Value), CDbl(0), CStr(var_A0.Fields.Item("GroupCode").Value), CDate(var_A0.Fields.Item("V_DATE").Value), var_134)
  loc_1538A9F:           Else
  loc_1538AD8:             var_134 = var_A0.Fields
  loc_1538B36:             var_130 = var_A0.Fields.Item("V_DATE").Value
  loc_1538B66:             Proc_183_0_1279094(MemVar_1F921DC, CStr(var_A0.Fields.Item("subcode").Value), CDbl(0), CSng(var_134.Item("AmtDr").Value), CStr(var_A0.Fields.Item("GroupCode").Value), CDate(var_130), var_134)
  loc_1538B90:           End If
  loc_1538B93:           var_A0.MoveNext
  loc_1538B98:           GoTo loc_153895A
  loc_1538B9B:         End If
  loc_1538BEE:         unk_5C26BA.Execute CStr("DELETE FROM LEDGER WHERE DOCID='" & var_9C.Fields.Item("TDSDocId").Value & "'"), var_130, -1
  loc_1538C0D:         var_9C.MoveNext
  loc_1538C12:         GoTo loc_15388D0
  loc_1538C15:       End If
  loc_1538C6B:       unk_5C26BA.Execute CStr("SELECT * FROM LEDGER WHERE DOCID='" & Me.Fields.Item("DocID").Value & "'"), var_130, -1
  loc_1538C76:       Set var_9C = var_134
  loc_1538C90:       ' Referenced from:   1538ECE
  loc_1538C9F:       If Not(var_9C.EOF) Then
  loc_1538CDE:         If (var_9C.Fields.Item("AmtCr").Value > 0) Then
  loc_1538D1A:           var_134 = var_9C.Fields
  loc_1538DA8:           Proc_183_0_1279094(MemVar_1F921DC, CStr(var_9C.Fields.Item("subcode").Value), CSng(var_134.Item("AmtCr").Value), CDbl(0), CStr(var_9C.Fields.Item("GroupCode").Value), CDate(var_9C.Fields.Item("V_DATE").Value), var_134)
  loc_1538DD5:         Else
  loc_1538E0E:           var_134 = var_9C.Fields
  loc_1538E35:           var_178 = var_9C.Fields
  loc_1538E6C:           var_130 = var_9C.Fields.Item("V_DATE").Value
  loc_1538E9C:           Proc_183_0_1279094(MemVar_1F921DC, CStr(var_9C.Fields.Item("subcode").Value), CDbl(0), CSng(var_134.Item("AmtDr").Value), CStr(var_178.Item("GroupCode").Value), CDate(var_130), var_134)
  loc_1538EC6:         End If
  loc_1538EC9:         var_9C.MoveNext
  loc_1538ECE:         GoTo loc_1538C90
  loc_1538ED1:       End If
  loc_1538F27:       unk_5C26BA.Execute CStr("DELETE FROM LEDGER  WHERE DOCID='" & Me.Fields.Item("DocID").Value & "'"), var_130, -1
  loc_1538F99:       unk_5C26BA.Execute CStr("DELETE FROM LEDGERM WHERE DocID='" & Me.Fields.Item("DocID").Value & "'"), var_130, -1
  loc_1539016:       var_134 = Me.Fields
  loc_1539026:       var_130 = var_134.Item("DocID").Value
  loc_1539045:       unk_5C26BA.Execute CStr("DELETE FROM LEDGERADJ WHERE DocID1='" & Me.Fields.Item("DocID").Value & "' OR DocID2='" & var_130 & "'"), var_1EC, -1
  loc_15390C1:       unk_5C26BA.Execute CStr("DELETE FROM LEDGERREF WHERE DocID='" & Me.Fields.Item("DocID").Value & "'"), var_130, -1
  loc_1539125:       var_10C = "DELETE FROM LEDGERTDS WHERE DocID='" & Me.Fields.Item("DocID").Value & "'" 
  loc_1539129:       var_110 = CStr(var_10C)
  loc_1539133:       unk_5C26BA.Execute var_110, var_130, -1
  loc_1539155:       unk_5C26BA.CommitTrans
  loc_1539165:       Me.Requery -1
  loc_1539185:       If (CVar(Me.RecordCount) >= var_98) Then
  loc_1539192:         Me.Bookmark = var_98
  loc_153919A:       Else
  loc_15391AE:         If (Me.EOF = 0) Then
  loc_15391B7:           Me.MoveLast
  loc_15391BC:         End If
  loc_15391BC:       End If
  loc_15391BC:       Call Proc_185_144_19C260C(var_134, var_134, var_178, var_134)
  loc_15391DD:       Proc_5_0_110649C(&HFF, Me, global_68, 0)
  loc_15391E5:     End If
  loc_15391E8:   Else
  loc_15391EE:     Call 0.Method_arg_50 (var_110, var_134, var_150)
  loc_153920F:     MsgBox("There Is No Record To Delete.", &H40, CVar(var_110), var_10C, var_130)
  loc_153921F:   End If
  loc_153921F: End If
  loc_153921F: ' Referenced from: 1538317
  loc_1539224: Set var_9C = Nothing
  loc_153922C: Set var_A0 = Nothing
  loc_153922F: Exit Sub
  loc_1539230: ' Referenced from: 15382D0
  loc_1539236: unk_5C26BA.RollbackTrans
  loc_1539241: Call 0.Method_arg_50 (var_110, 0)
  loc_1539256: Proc_183_57_104AA84(var_110, "TopCtrl1_eDel")
  loc_1539262: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FCADE8
  'Data Table: 5C26A4
  Dim var_88 As Variant
  Dim var_90 As TextBox
  Dim Me As Variant
  loc_FCAC40: On Error Goto loc_FCADBE
  loc_FCAC4F: Me.ChqPrint.Visible = False
  loc_FCAC65: If (Proc_183_55_FE7900(global_68) = &HFF) Then
  loc_FCAC68:   Exit Sub
  loc_FCAC69: End If
  loc_FCAC84: If (Me.FRAMEVLIST.Visible = &HFF) Then
  loc_FCAC87:   Exit Sub
  loc_FCAC88: End If
  loc_FCACA6: Set var_88 = Me.VchDt
  loc_FCACAC: Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_90)
  loc_FCACB4: var_94 = var_90.Text
  loc_FCACCD: If (((global_216 = "No") And (MemVar_1F920B8 <> 1)) And (CDate(var_94) < MemVar_1F920EC)) Then
  loc_FCACD6:   Call 0.Method_arg_50 (var_94)
  loc_FCACF7:   MsgBox("Back Date Entry Blocked.", &H10, CVar(var_94), var_E4, var_104)
  loc_FCAD07:   Exit Sub
  loc_FCAD08: End If
  loc_FCAD1F: If (Me.RecordCount > 0) Then
  loc_FCAD3A:   global_200 = Me.lblDocId.Caption
  loc_FCAD4B:   global_110 = CByte(2)
  loc_FCAD5B:   Set var_88 = Me
  loc_FCAD64:   var_94 = "EDIT"
  loc_FCAD6A:   Proc_5_1_100CB50(var_94, var_88)
  loc_FCAD7A:   Call Proc_185_158_1017BBC(0, global_68)
  loc_FCAD85:   Call 0.Method_arg_1E8 (var_88)
  loc_FCAD94:   If TypeOf var_88 Is arg_1 Then
  loc_FCAD97:     GoTo loc_FCADBD
  loc_FCAD9A:   End If
  loc_FCADA3:   Set var_88 = Me.TxtCrDr
  loc_FCADA9:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (0, var_90)
  loc_FCADB1:   var_90.SetFocus
  loc_FCADBD:   ' Referenced from: FCAD97
  loc_FCADBD: End If
  loc_FCADBD: Exit Sub
  loc_FCADBE: ' Referenced from: FCAC40
  loc_FCADC4: Call 0.Method_arg_50 (var_94)
  loc_FCADD9: Proc_183_57_104AA84(var_94, "TopCtrl1_eEdit")
  loc_FCADE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1935C
  'Data Table: 5C26A4
  loc_E19351: Me.Global.Unload Me
  loc_E19359: Exit Sub
  loc_E1935A: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_F '104E5A8
  'Data Table: 5C26A4
  Dim Me As Recordset15
  Dim var_100 As Variant
  Dim var_104 As Field20
  Dim var_8C As String
  Dim unk_5C26BA As Connection15
  loc_104E34C: On Error Goto loc_104E57E
  loc_104E366: If (Me.RecordCount <= 0) Then
  loc_104E36F:   Call 0.Method_arg_50 (var_8C)
  loc_104E390:   MsgBox("No Records To Search", &H40, CVar(var_8C), var_DC, var_FC)
  loc_104E3A0:   Exit Sub
  loc_104E3A1: End If
  loc_104E3C6: var_AC = Me.Fields.Item("ShowCityName").Value
  loc_104E3E0: If (var_AC = "Yes") Then
  loc_104E3F7:   var_8C = "Select SubCode,NameWithCity AS Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES From ViewSubgroup WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_104E407:   unk_5C26BA.Execute var_8C & "' OR LOGSITE_CODE='HO') order by Name", var_AC, -1
  loc_104E412:   CVarUnk
  loc_104E417:   VerifyVarObj
  loc_104E41D:   Set var_104 = Me.Dcparty
  loc_104E423:   LateIdStAd
  loc_104E443: Else
  loc_104E457:   var_8C = "Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES From ViewSubgroup WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_104E467:   unk_5C26BA.Execute var_8C & "' OR LOGSITE_CODE='HO') order by Name", var_AC, -1
  loc_104E472:   CVarUnk
  loc_104E477:   VerifyVarObj
  loc_104E47D:   Set var_104 = Me.Dcparty
  loc_104E483:   LateIdStAd
  loc_104E4A0: End If
  loc_104E4B0: Me.Dcparty.ListField = "Name"
  loc_104E4C8: Me.Dcparty.BoundColumn = "Subcode"
  loc_104E4DD: Me.TXTVDATE1.Text = vbNullString
  loc_104E4F2: Me.TXTVDATE2.Text = vbNullString
  loc_104E50A: Me.Dcparty.BoundText = vbNullString
  loc_104E522: Me.DataCombo1.BoundText = vbNullString
  loc_104E537: Me.Text1.Text = vbNullString
  loc_104E54B: Me.FRAMEVLIST.Visible = True
  loc_104E563: Me.FRAMEVLIST.ZOrder 0
  loc_104E56F: Set var_100 = Me.TXTVDATE1
  loc_104E575: var_100.SetFocus
  loc_104E57D: Exit Sub
  loc_104E57E: ' Referenced from: 104E34C
  loc_104E584: Call 0.Method_arg_50 (var_8C, var_104, var_100, var_100)
  loc_104E599: Proc_183_57_104AA84(var_8C, "TopCtrl1_eFind", var_104)
  loc_104E5A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E78CAC
  'Data Table: 5C26A4
  loc_E78C54: On Error Goto loc_E78C81
  loc_E78C73: Proc_5_0_110649C(&HFF, Me)
  loc_E78C7B: Call Proc_185_144_19C260C(global_68)
  loc_E78C80: Exit Sub
  loc_E78C81: ' Referenced from: E78C54
  loc_E78C87: Call 0.Method_arg_50 (var_94)
  loc_E78C9C: Proc_183_57_104AA84(var_94, "TopCtrl1_eFirst")
  loc_E78CA8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E7BF24
  'Data Table: 5C26A4
  loc_E7BECC: On Error Goto loc_E7BEF9
  loc_E7BEEB: Proc_5_0_110649C(&HFF, Me)
  loc_E7BEF3: Call Proc_185_144_19C260C(global_68)
  loc_E7BEF8: Exit Sub
  loc_E7BEF9: ' Referenced from: E7BECC
  loc_E7BEFF: Call 0.Method_arg_50 (var_94)
  loc_E7BF14: Proc_183_57_104AA84(var_94, "TopCtrl1_eLast")
  loc_E7BF20: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E7B63C
  'Data Table: 5C26A4
  loc_E7B5E4: On Error Goto loc_E7B611
  loc_E7B603: Proc_5_0_110649C(&HFF, Me)
  loc_E7B60B: Call Proc_185_144_19C260C(global_68)
  loc_E7B610: Exit Sub
  loc_E7B611: ' Referenced from: E7B5E4
  loc_E7B617: Call 0.Method_arg_50 (var_94)
  loc_E7B62C: Proc_183_57_104AA84(var_94, "TopCtrl1_eNext")
  loc_E7B638: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E71790
  'Data Table: 5C26A4
  loc_E71758: Proc_5_0_110649C(&HFF, Me)
  loc_E71760: Call Proc_185_144_19C260C(global_68)
  loc_E71765: Exit Sub
  loc_E7176C: Call 0.Method_arg_50 (var_94)
  loc_E71781: Proc_183_57_104AA84(var_94, "TopCtrl1_ePrev")
  loc_E7178D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'EB7DFC
  'Data Table: 5C26A4
  Dim var_8C As Frame
  loc_EB7D67: Set var_88 = Me.Frame1
  loc_EB7D6D: Call 0.Method_TopCtrl1_UnknownEvent_140 (1, var_8C)
  loc_EB7D75: var_8C.Visible = True
  loc_EB7D8F: Set var_88 = Me.Frame1
  loc_EB7D95: Call 0.Method_TopCtrl1_UnknownEvent_140 (1, var_8C)
  loc_EB7D9D: var_8C.Left = CDbl(1845)
  loc_EB7DB7: Set var_88 = Me.Frame1
  loc_EB7DBD: Call 0.Method_TopCtrl1_UnknownEvent_140 (1, var_8C)
  loc_EB7DC5: var_8C.Top = CDbl(675)
  loc_EB7DE0: Set var_88 = Me.Frame1
  loc_EB7DE6: Call 0.Method_TopCtrl1_UnknownEvent_140 (1, var_8C)
  loc_EB7DEE: var_8C.ZOrder 0
  loc_EB7DFA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 '10CB2C4
  'Data Table: 5C26A4
  Dim var_8C As String
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  Dim unk_5C26BA As Connection15
  loc_10CAFCC: On Error Goto loc_10CB299
  loc_10CAFDD: var_88 = "Where (LOGSite_Code='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO')"
  loc_10CB022: If (Me.Fields.Item("FilterAC").Value = "No") Then
  loc_10CB02F:   Set global_88 = New 
  loc_10CB075:   If (Me.Recordset15.Fields.Item("ShowCityName").Value = "Yes") Then
  loc_10CB096:     var_8C = "Select SubCode,NameWithCity AS Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup " & var_88
  loc_10CB0A7:     Me.Open CVar("Where (LOGSite_Code='" & MemVar_1F92078 & " and (ACTIVEYN=1 OR ACTIVEYN IS NULL) order by Name"), CVar(MemVar_1F921DC), 1
  loc_10CB0B5:   Else
  loc_10CB0D3:     var_8C = "Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup " & var_88
  loc_10CB0E4:     Me.Open CVar("Where (LOGSite_Code='" & MemVar_1F92078 & " and (ACTIVEYN=1 OR ACTIVEYN IS NULL) order by Name"), CVar(MemVar_1F921DC), 1
  loc_10CB0EF:   End If
  loc_10CB0F9:   Set global_92 = New 
  loc_10CB115:   var_90 = Me.Recordset15.Fields
  loc_10CB13F:   If (var_90.Item("ShowCityName").Value = "Yes") Then
  loc_10CB160:     var_8C = "Select SubCode,NameWithCity AS Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup " & var_88
  loc_10CB171:     Me.Open CVar("Where (LOGSite_Code='" & MemVar_1F92078 & " and (ACTIVEYN=1 OR ACTIVEYN IS NULL) order by Name"), CVar(MemVar_1F921DC), 1
  loc_10CB17F:   Else
  loc_10CB19D:     var_8C = "Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup " & var_88
  loc_10CB1AE:     Me.Open CVar("Where (LOGSite_Code='" & MemVar_1F92078 & " and (ACTIVEYN=1 OR ACTIVEYN IS NULL) order by Name"), CVar(MemVar_1F921DC), 1
  loc_10CB1B9:   End If
  loc_10CB1B9: End If
  loc_10CB1BF: Call 0.Method_arg_1E8 (var_90, 3, -1, 3, -1)
  loc_10CB1DA: If (var_90.Name = "TxtAcName") Then
  loc_10CB1E3:   Call 0.Method_arg_1E8 (var_90, 3, -1)
  loc_10CB1EB:   var_B4 = var_90.index
  loc_10CB1F4:   Call TxtAcName_GotFocus(CInt(var_B4))
  loc_10CB1FF: End If
  loc_10CB216: If (Me.RecordCount > 0) Then
  loc_10CB21F:   Me.MoveFirst
  loc_10CB224: End If
  loc_10CB23B: If (Me.RecordCount > 0) Then
  loc_10CB244:   Me.MoveFirst
  loc_10CB249: End If
  loc_10CB249: Call Proc_185_169_F64464(3)
  loc_10CB262: var_8C = "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078
  loc_10CB272: unk_5C26BA.Execute var_8C & "'", var_B4, -1
  loc_10CB283: Set global_80 = var_90
  loc_10CB298: Exit Sub
  loc_10CB299: ' Referenced from: 10CAFCC
  loc_10CB29F: Call 0.Method_arg_50 (var_8C, var_90)
  loc_10CB2B4: Proc_183_57_104AA84(var_8C, "TopCtrl1_eRef")
  loc_10CB2C0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1184C44
  'Data Table: 5C26A4
  Dim var_90 As TextBox
  Dim var_AC As String
  Dim var_A8 As TextBox
  Dim var_10C As Variant
  loc_1184878: On Error Goto loc_1184C19
  loc_1184884: Set var_8C = Me.VchDt
  loc_118488A: Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_1184892: var_98 = "Date"
  loc_11848B3: If (Proc_183_19_E8DAFC(var_90, var_98) = 0) Then
  loc_11848B6:   Exit Sub
  loc_11848B7: End If
  loc_11848C6: Set var_8C = Me.VchDt
  loc_11848CC: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_90, var_98)
  loc_11848D4: var_A2 = var_90.Text
  loc_11848EB: Call 0.Method_arg_190 (CDate(var_98))
  loc_1184900: If (var_A2 = 0) Then
  loc_1184903:   Exit Sub
  loc_1184904: End If
  loc_118490D: Set var_8C = Me.TxtVno
  loc_1184913: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_90)
  loc_118493C: If (Proc_183_19_E8DAFC(var_90, "Voucher No") = 0) Then
  loc_118493F:   Exit Sub
  loc_1184940: End If
  loc_118494C: Set var_8C = Me.TxtVno
  loc_1184952: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_90)
  loc_1184975: Set var_94 = Me.TxtVno
  loc_118497B: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A8)
  loc_1184983: var_A8.Text = CStr(Val(var_90.Text))
  loc_118499F: var_FC = "E"
  loc_11849C3: var_10C = IIf((CInt(global_110) = 1), "A", var_FC)
  loc_11849D3: Call Proc_185_171_1B374EC(CStr(var_10C), var_A2)
  loc_11849DC: var_86 = var_A2 'Byte
  loc_11849F7: If (CInt(var_86) = 2) Then
  loc_1184A03:   If (CInt(var_86) = 2) Then
  loc_1184A35:     If (MsgBox("Vr.No.Already Exist,Generate New Vr.No.", 4, var_FC, var_10C, var_12C) = 7) Then
  loc_1184A38:       Exit Sub
  loc_1184A39:       ' Referenced from: 1184B53
  loc_1184A39:     End If
  loc_1184A39:   End If
  loc_1184A3B:   If &HFF Then
  loc_1184A4A:     Set var_8C = Me.TxtVno
  loc_1184A50:     Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_90)
  loc_1184A6B:     var_AC = CStr((Val(var_90.Text) + CDbl(1)))
  loc_1184A77:     Set var_94 = Me.TxtVno
  loc_1184A7D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_A8)
  loc_1184A85:     var_A8.Text = CStr(Val(var_90.Text))
  loc_1184AD5:     Call Proc_185_171_1B374EC(CStr(IIf((CInt(global_110) = 1), "A", "E")), var_A2)
  loc_1184ADE:     var_86 = var_A2 'Byte
  loc_1184AF9:     If (CInt(var_86) <> 2) Then
  loc_1184B18:       Set var_8C = Me.TxtVno
  loc_1184B1E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_90, "Vr.No.Already Exist,New Vr.No. is ", 0)
  loc_1184B35:       var_10C = (var_12C + Trim(CVar(var_90)))
  loc_1184B39:       MsgBox(IIf((CInt(global_110) = 1), "A", "E"), var_13C, var_14C, var_90, )
  loc_1184B53:     Else
  loc_1184B53:       GoTo loc_1184A39
  loc_1184B56:     End If
  loc_1184B56:   End If
  loc_1184B62:   Set var_8C = Me.TxtVtYpe
  loc_1184B68:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_90)
  loc_1184B7B:   global_124 = var_90.Tag
  loc_1184B89:   Call TopCtrl1_UnknownEvent_A()
  loc_1184B91: Else
  loc_1184B9A:   If (CInt(var_86) = 0) Then
  loc_1184BA9:     If (CInt(global_110) = 2) Then
  loc_1184BB3:       global_110 = CByte(3)
  loc_1184BCC:       var_98 = "INI"
  loc_1184BD2:       Proc_5_1_100CB50(var_98, Me)
  loc_1184BE0:     Else
  loc_1184BEC:       Set var_8C = Me.TxtVtYpe
  loc_1184BF2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_90, var_98)
  loc_1184BFA:       global_68 = var_90.Tag
  loc_1184C05:       global_124 = var_98
  loc_1184C13:       Call TopCtrl1_UnknownEvent_A()
  loc_1184C18:     End If
  loc_1184C18:   End If
  loc_1184C18: End If
  loc_1184C18: Exit Sub
  loc_1184C19: ' Referenced from: 1184878
  loc_1184C1F: Call 0.Method_arg_50 (var_98)
  loc_1184C34: Proc_183_57_104AA84(var_98, "TopCtrl1_eSave")
  loc_1184C40: Exit Sub
End Sub

Private Sub TxtCHno_GotFocus(Index As Integer) 'E8DDB4
  'Data Table: 5C26A4
  loc_E8DD4C: On Error Goto loc_E8DD8C
  loc_E8DD58: If (global_132 = &HFF) Then
  loc_E8DD5B:   Exit Sub
  loc_E8DD5C: End If
  loc_E8DD66: Set var_88 = Me.TxtCHno
  loc_E8DD6C: Call 0.Method_TxtCHno_GotFocus0 (Index)
  loc_E8DD7A: Call Proc_185_163_E215F4(var_8C)
  loc_E8DD86: Call Proc_185_169_F64464(var_8C)
  loc_E8DD8B: Exit Sub
  loc_E8DD8C: ' Referenced from: E8DD4C
  loc_E8DD92: Call 0.Method_arg_50 (var_94)
  loc_E8DD9A: var_9C = "TxtCHno_GotFocus"
  loc_E8DDA7: Proc_183_57_104AA84(var_94)
  loc_E8DDB3: Exit Sub
End Sub

Private Sub TxtCHno_KeyDown(KeyCode As Integer, Shift As Integer) 'E676F4
  'Data Table: 5C26A4
  loc_E676A8: On Error Goto loc_E676CB
  loc_E676B4: If (global_132 = &HFF) Then
  loc_E676B7:   Exit Sub
  loc_E676B8: End If
  loc_E676C2: If (CLng(Shift) = &H1B) Then
  loc_E676C5:   Call Proc_185_169_F64464()
  loc_E676CA: End If
  loc_E676CA: Exit Sub
  loc_E676CB: ' Referenced from: E676A8
  loc_E676D1: Call 0.Method_arg_50 (var_88)
  loc_E676D9: var_90 = "TxtCHno_KeyDown"
  loc_E676E6: Proc_183_57_104AA84(var_88)
  loc_E676F2: Exit Sub
End Sub

Private Sub TxtCHno_LostFocus(Index As Integer) '109C394
  'Data Table: 5C26A4
  Dim var_A0 As Variant
  Dim var_8C As TextBox
  Dim var_DC As String
  Dim unk_5C26BA As Connection15
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_124 As Variant
  Dim var_138 As Fields15
  Dim var_13C As Field20
  loc_109C100: On Error Goto loc_109C36B
  loc_109C10C: If (global_132 = &HFF) Then
  loc_109C10F:   Exit Sub
  loc_109C110: End If
  loc_109C11A: Set var_88 = Me.TxtCHno
  loc_109C120: Call 0.Method_TxtCHno_LostFocus0 (Index)
  loc_109C12E: Call Proc_185_164_E264C0(var_8C)
  loc_109C144: Set var_88 = Me.TxtCHno
  loc_109C14A: Call 0.Method_TxtCHno_LostFocus0 (Index, var_8C)
  loc_109C152: var_A0 = CVar(var_8C) 'Address
  loc_109C173: If CBool(Trim(var_A0) <> vbNullString) Then
  loc_109C182:   If (CInt(global_110) = 1) Then
  loc_109C1B1:     Set var_88 = Me.TxtCHno
  loc_109C1B7:     Call 0.Method_TxtCHno_LostFocus0 (Index, var_8C, var_D4, "SELECT COUNT(*) FROM LEDGER WHERE Chq_No='", var_A0, -1)
  loc_109C1D8:     unk_5C26BA.Execute var_E0 & var_D4 & "'", 0, var_F4
  loc_109C1E8:      = var_E0.Item(var_8C)
  loc_109C1F0:      = var_F4.Value
  loc_109C21D:     If (var_8C.Text.Fields > 0) Then
  loc_109C241:       MsgBox("Duplicate Cheque No.", &H140, "Cheque No.Validation", var_D0, var_124)
  loc_109C251:     End If
  loc_109C254:   Else
  loc_109C280:     Set var_88 = Me.TxtCHno
  loc_109C286:     Call 0.Method_TxtCHno_LostFocus0 (Index, var_8C, var_D4, "SELECT COUNT(*) FROM LEDGER WHERE Chq_No='", var_134, -1)
  loc_109C2CE:     var_D0 = CVar(var_138 & var_D4 & "' AND DOCID<>'") & Me.Fields.Item("DocID").Value 
  loc_109C2D7:     var_124 = var_D0 & "'" 
  loc_109C2E5:     unk_5C26BA.Execute CStr(var_124), 0, var_13C
  loc_109C2F5:      = var_138.Item()
  loc_109C2FD:      = var_13C.Value
  loc_109C336:     If (var_8C.Text.Fields > 0) Then
  loc_109C35A:       MsgBox("Duplicate Cheque No.", &H140, "Cheque No.Validation", var_D0, var_124)
  loc_109C36A:     End If
  loc_109C36A:   End If
  loc_109C36A: End If
  loc_109C36A: Exit Sub
  loc_109C36B: ' Referenced from: 109C100
  loc_109C371: Call 0.Method_arg_50 (var_D4)
  loc_109C379: var_DC = "TxtCHno_LostFocus"
  loc_109C386: Proc_183_57_104AA84(var_D4)
  loc_109C392: Exit Sub
End Sub

Private Sub Opt2_Click(Index As Integer) 'FC56E4
  'Data Table: 5C26A4
  Dim var_EC As Frame
  Dim var_E8 As Variant
  Dim arg_1904 As Double
  loc_FC553C: On Error Goto loc_FC56B9
  loc_FC556D: Set var_E8 = Me.Frame1
  loc_FC5573: Call 0.Method_Opt2_Click0 (2, var_EC)
  loc_FC557B: var_EC.Enabled = CBool(IIf(((Index = 0) Or (Index = 2)), False, True))
  loc_FC55C0: Set var_E8 = Me.Frame1
  loc_FC55C6: Call 0.Method_Opt2_Click0 (3, var_EC)
  loc_FC55CE: var_EC.Visible = CBool(IIf(((Index = 0) Or (Index = 1)), False, True))
  loc_FC560D: Me.ChkReport.Visible = CBool(IIf((Index = 0), True, False))
  loc_FC5626: If (Index = 2) Then
  loc_FC5638:   Set var_E8 = Me.Frame1
  loc_FC563E:   Call 0.Method_Opt2_Click0 (3, var_EC)
  loc_FC5646:   var_EC.ZOrder 0
  loc_FC565E:   Me.Text2.Visible = True
  loc_FC5672:   Me.Text2.Enabled = True
  loc_FC5684:   Me.Text2.SetFocus
  loc_FC568F: Else
  loc_FC569E:   Set var_E8 = Me.Frame1
  loc_FC56A4:   Call 0.Method_Opt2_Click0 (2, var_EC)
  loc_FC56AC:   var_EC.ZOrder 0
  loc_FC56B8: End If
  loc_FC56B8: Exit Sub
  loc_FC56B9: ' Referenced from: FC553C
  loc_FC56BF: Call 0.Method_arg_50 (var_F0)
  loc_FC56D4: Proc_183_57_104AA84(var_F0)
  loc_FC56E0: Exit Sub
  loc_FC56E1: arg_1904 = "Opt2_Click"
End Sub

Private Sub TxtVno_GotFocus(Index As Integer) 'E8CB24
  'Data Table: 5C26A4
  loc_E8CABC: On Error Goto loc_E8CAFC
  loc_E8CAC8: If (global_132 = &HFF) Then
  loc_E8CACB:   Exit Sub
  loc_E8CACC: End If
  loc_E8CAD6: Set var_88 = Me.TxtVno
  loc_E8CADC: Call 0.Method_TxtVno_GotFocus0 (Index)
  loc_E8CAEA: Call Proc_185_163_E215F4(var_8C)
  loc_E8CAF6: Call Proc_185_169_F64464(var_8C)
  loc_E8CAFB: Exit Sub
  loc_E8CAFC: ' Referenced from: E8CABC
  loc_E8CB02: Call 0.Method_arg_50 (var_94)
  loc_E8CB0A: var_9C = "TxtVno_GotFocus"
  loc_E8CB17: Proc_183_57_104AA84(var_94)
  loc_E8CB23: Exit Sub
End Sub

Private Sub TxtVno_KeyDown(KeyCode As Integer, Shift As Integer) 'E694B4
  'Data Table: 5C26A4
  loc_E69468: On Error Goto loc_E6948B
  loc_E69474: If (global_132 = &HFF) Then
  loc_E69477:   Exit Sub
  loc_E69478: End If
  loc_E69482: If (CLng(Shift) = &H1B) Then
  loc_E69485:   Call Proc_185_169_F64464()
  loc_E6948A: End If
  loc_E6948A: Exit Sub
  loc_E6948B: ' Referenced from: E69468
  loc_E69491: Call 0.Method_arg_50 (var_88)
  loc_E69499: var_90 = "TxtVno_KeyDown"
  loc_E694A6: Proc_183_57_104AA84(var_88)
  loc_E694B2: Exit Sub
End Sub

Private Sub TxtVno_KeyPress(KeyAscii As Integer) 'E94EA8
  'Data Table: 5C26A4
  loc_E94E38: On Error Goto loc_E94E80
  loc_E94E44: If (global_132 = &HFF) Then
  loc_E94E47:   Exit Sub
  loc_E94E48: End If
  loc_E94E52: Set var_88 = Me.TxtVno
  loc_E94E58: Call 0.Method_TxtVno_KeyPress0 (KeyAscii)
  loc_E94E73: Proc_183_22_129AEBC(var_8C, arg_10, 8)
  loc_E94E7F: Exit Sub
  loc_E94E80: ' Referenced from: E94E38
  loc_E94E86: Call 0.Method_arg_50 (var_98, 0)
  loc_E94E9B: Proc_183_57_104AA84(var_98, "TxtVno_KeyPress")
  loc_E94EA7: Exit Sub
End Sub

Private Sub TxtVno_LostFocus(Index As Integer) 'E87E64
  'Data Table: 5C26A4
  loc_E87E00: On Error Goto loc_E87E3B
  loc_E87E0C: If (global_132 = &HFF) Then
  loc_E87E0F:   Exit Sub
  loc_E87E10: End If
  loc_E87E1A: Set var_88 = Me.TxtVno
  loc_E87E20: Call 0.Method_TxtVno_LostFocus0 (Index)
  loc_E87E2E: Call Proc_185_164_E264C0(var_8C)
  loc_E87E3A: Exit Sub
  loc_E87E3B: ' Referenced from: E87E00
  loc_E87E41: Call 0.Method_arg_50 (var_94)
  loc_E87E56: Proc_183_57_104AA84(var_94, "TxtVno_LostFocus")
  loc_E87E62: Exit Sub
End Sub

Private Sub Command2_Click() '110DD8C
  'Data Table: 5C26A4
  Dim var_118 As Variant
  Dim var_138 As Long
  Dim var_14C As MSFlexGrid
  Dim var_15C As Variant
  Dim var_178 As Double
  Dim var_AC As Variant
  Dim var_CC As Long
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim var_88 As Long
  Dim var_180 As Double
  loc_110DA5C: On Error Goto loc_110DD63
  loc_110DA72: var_118 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_110DA77: var_138 = 9
  loc_110DAC5: var_AC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_110DACA: var_CC = &HA
  loc_110DB3D: If ((CDbl(Val(CStr(Me.FgridAdjust.TextMatrix)))) < CDbl(Val(CStr(Me.FgridAdjust.TextMatrix))))) And (CDbl(Val(Me.ADJ_LAB7.Caption)) < CDbl(Me.ADJ_LAB4.Caption))) Then
  loc_110DB53:   var_AC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_110DB58:   var_CC = &HA
  loc_110DB7F:   var_88 = CLng(Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_110DBC3:   var_AC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_110DBC8:   var_CC = 9
  loc_110DBEE:   var_180 = Val(CStr(Me.FgridAdjust.TextMatrix)))
  loc_110DC35:   If (CDbl((Val(Me.ADJ_LAB4.Caption) - (Val(Me.ADJ_LAB7.Caption) - CDbl(var_88)))) >= CDbl(var_180)) Then
  loc_110DC4B:     var_118 = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_110DC50:     var_138 = &HA
  loc_110DC6C:     var_AC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_110DC71:     var_CC = 9
  loc_110DC99:     var_15C = CVar(CStr(Val(CStr(Me.FgridAdjust.TextMatrix))))) 'String
  loc_110DCA1:     Set var_14C = Me.FgridAdjust
  loc_110DCA7:     LateIdCallSt
  loc_110DCCB:   Else
  loc_110DCE5:     var_178 = Val(Me.ADJ_LAB7.Caption)
  loc_110DCFB:     var_AC = CVar(CLng(Me.FgridAdjust.Row)) 'Long
  loc_110DD00:     var_CC = &HA
  loc_110DD16:     var_F4 = Me.ADJ_LAB4.Caption
  loc_110DD2E:     var_F0 = CVar(CStr((Val(var_F4) - (var_178 - CDbl(var_88))))) 'String
  loc_110DD36:     Set var_14C = Me.FgridAdjust
  loc_110DD3C:     LateIdCallSt
  loc_110DD5D:   End If
  loc_110DD5D:   Call Proc_185_150_FEB7C8(var_14C, Me.FgridAdjust.TextMatrix), var_CC, var_AC, var_178, var_14C, var_15C, var_CC)
  loc_110DD62: End If
  loc_110DD62: Exit Sub
  loc_110DD63: ' Referenced from: 110DA5C
  loc_110DD69: Call 0.Method_arg_50 (var_F4, var_AC, var_138, var_118)
  loc_110DD7E: Proc_183_57_104AA84(var_F4, "Command2_Click", var_180)
  loc_110DD8A: Exit Sub
End Sub

Private Sub DGTDSCODE_UnknownEvent_9 'F92558
  'Data Table: 5C26A4
  Dim var_88 As Variant
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_CC As String
  Dim var_C8 As TextBox
  loc_F923FC: On Error Goto loc_F9252F
  loc_F9241B: If (CBool(Me.DGTDSCODE.Visible) = &HFF) Then
  loc_F9242D:   Me.DGTDSCODE.Visible = False
  loc_F92435: End If
  loc_F9244C: If (Me.RecordCount > 0) Then
  loc_F92489:   Set var_C4 = Me.TxtTDSCode
  loc_F9248F:   Call 0.Method_DGTDSCODE_UnknownEvent_90 (0, var_C8)
  loc_F92497:   var_C8.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_F924CA:   var_C0 = Me.Fields.Item("Name")
  loc_F924DB:   var_CC = CStr(var_C0.Value)
  loc_F924E7:   Set var_C4 = Me.TxtTDSCode
  loc_F924ED:   Call 0.Method_DGTDSCODE_UnknownEvent_90 (0, var_C8)
  loc_F924F5:   var_C8.Text = var_CC
  loc_F9250B: End If
  loc_F92514: Set var_88 = Me.TxtTDSCode
  loc_F9251A: Call 0.Method_DGTDSCODE_UnknownEvent_90 (0)
  loc_F92522: var_C0.SetFocus
  loc_F9252E: Exit Sub
  loc_F9252F: ' Referenced from: F923FC
  loc_F92535: Call 0.Method_arg_50 (var_CC)
  loc_F9254A: Proc_183_57_104AA84(var_CC, "DGTDSCODE_Click")
  loc_F92556: Exit Sub
End Sub

Private Sub TxtGlb_GotFocus(Index As Integer) 'FCDDE8
  'Data Table: 5C26A4
  Dim var_90 As TextBox
  Dim var_D8 As Variant
  Dim unk_5C26BA As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Fields15
  Dim var_98 As String
  Dim var_104 As TextBox
  loc_FCDC44: On Error Goto loc_FCDDBE
  loc_FCDC50: If (global_132 = &HFF) Then
  loc_FCDC53:   Exit Sub
  loc_FCDC54: End If
  loc_FCDC5E: Set var_8C = Me.TxtGlb
  loc_FCDC64: Call 0.Method_TxtGlb_GotFocus0 (Index)
  loc_FCDC6C: Set var_94 = var_90
  loc_FCDC72: Call Proc_185_163_E215F4(var_94)
  loc_FCDC7E: Call Proc_185_169_F64464(var_90)
  loc_FCDCA8: Set var_8C = Me.TxtGlb
  loc_FCDCAE: Call 0.Method_TxtGlb_GotFocus0 (Index, var_90)
  loc_FCDCB6: var_98 = var_90.Text
  loc_FCDCD0: If (((CInt(global_110) <= 2) And (global_116 = "Y")) And (Len(var_98) = 0)) Then
  loc_FCDCF1:   Set var_8C = Me.TxtVtYpe
  loc_FCDCF7:   Call 0.Method_TxtGlb_GotFocus0 (0, var_90, var_98, "SELECT Narration FROM VOUCHER_tYPE WHERE V_tYPE=")
  loc_FCDCFF:   var_FC = var_90.Tag
  loc_FCDD0D:   Proc_183_9_EAA760(var_B8, CVar(var_98))
  loc_FCDD15:   var_D8 = -1 & var_B8 
  loc_FCDD23:   unk_5C26BA.Execute CStr(var_D8), var_94, 
  loc_FCDD2E:   Set var_88 = var_94
  loc_FCDD5C:   If (var_88.RecordCount > 0) Then
  loc_FCDD87:     var_98 = Proc_183_2_E5A304(CVar(var_88.Fields.Item("Narration")))
  loc_FCDD93:     Set var_94 = Me.TxtGlb
  loc_FCDD99:     Call 0.Method_TxtGlb_GotFocus0 (0, var_104)
  loc_FCDDA1:     var_104.Text = var_98
  loc_FCDDB5:   End If
  loc_FCDDB5: End If
  loc_FCDDBA: Set var_88 = Nothing
  loc_FCDDBD: Exit Sub
  loc_FCDDBE: ' Referenced from: FCDC44
  loc_FCDDC4: Call 0.Method_arg_50 (var_98)
  loc_FCDDCC: var_108 = "TxtGlb_GotFocus"
  loc_FCDDD9: Proc_183_57_104AA84(var_98)
  loc_FCDDE5: Exit Sub
End Sub

Private Sub TxtGlb_KeyDown(KeyCode As Integer, Shift As Integer) 'F5A394
  'Data Table: 5C26A4
  Dim var_8C As TextBox
  Dim var_A0 As String
  Dim var_9C As TextBox
  loc_F5A278: On Error Goto loc_F5A36A
  loc_F5A284: If (global_132 = &HFF) Then
  loc_F5A287:   Exit Sub
  loc_F5A288: End If
  loc_F5A292: If (CLng(Shift) = &H1B) Then
  loc_F5A295:   Call Proc_185_169_F64464()
  loc_F5A29A: End If
  loc_F5A2A6: If (CInt(global_110) <= 2) Then
  loc_F5A2B3:   If (CLng(Shift) = &H2D) Then
  loc_F5A2C3:     Set var_88 = Me.TxtGlb
  loc_F5A2C9:     Call 0.Method_TxtGlb_KeyDown0 (KeyCode, var_8C)
  loc_F5A2DC:     Call Proc_185_165_E98870(var_90)
  loc_F5A2F2:     Set var_98 = Me.TxtGlb
  loc_F5A2F8:     Call 0.Method_TxtGlb_KeyDown0 (KeyCode, var_9C)
  loc_F5A300:     var_9C.Text = var_8C.Text & var_90
  loc_F5A326:     Set var_88 = Me.TxtGlb
  loc_F5A32C:     Call 0.Method_TxtGlb_KeyDown0 (KeyCode, var_8C)
  loc_F5A334:     var_90 = var_8C.Text
  loc_F5A347:     Set var_98 = Me.TxtGlb
  loc_F5A34D:     Call 0.Method_TxtGlb_KeyDown0 (KeyCode, var_9C)
  loc_F5A355:     var_9C.SelStart = Len(var_90)
  loc_F5A368:     Exit Sub
  loc_F5A369:   End If
  loc_F5A369: End If
  loc_F5A369: Exit Sub
  loc_F5A36A: ' Referenced from: F5A278
  loc_F5A370: Call 0.Method_arg_50 (var_90)
  loc_F5A378: var_A0 = "TxtGlb_KeyDown"
  loc_F5A385: Proc_183_57_104AA84(var_90)
  loc_F5A391: Exit Sub
End Sub

Private Sub TxtGlb_LostFocus(Index As Integer) 'E8BADC
  'Data Table: 5C26A4
  loc_E8BA78: On Error Goto loc_E8BAB3
  loc_E8BA84: If (global_132 = &HFF) Then
  loc_E8BA87:   Exit Sub
  loc_E8BA88: End If
  loc_E8BA92: Set var_88 = Me.TxtGlb
  loc_E8BA98: Call 0.Method_TxtGlb_LostFocus0 (Index)
  loc_E8BAA6: Call Proc_185_164_E264C0(var_8C)
  loc_E8BAB2: Exit Sub
  loc_E8BAB3: ' Referenced from: E8BA78
  loc_E8BAB9: Call 0.Method_arg_50 (var_94)
  loc_E8BACE: Proc_183_57_104AA84(var_94, "TxtGlb_LostFocus")
  loc_E8BADA: Exit Sub
End Sub

Private Sub Text3_KeyDown(KeyCode As Integer, Shift As Integer) 'E213A8
  'Data Table: 5C26A4
  loc_E21399: If ((CLng(KeyCode) = &H28) Or (CLng(KeyCode) = &HD)) Then
  loc_E213A2:   Proc_6_75_E527CC(KeyCode)
  loc_E213A7: End If
  loc_E213A7: Exit Sub
End Sub

Private Sub Text3_LostFocus() 'E4D364
  'Data Table: 5C26A4
  loc_E4D354: Me.Text3.Text = Proc_6_33_1512840(Me.Text3)
  loc_E4D363: Exit Sub
End Sub

Private Sub Text3_Validate(Cancel As Boolean) 'E4D3CC
  'Data Table: 5C26A4
  loc_E4D3BC: Me.Text3.Text = Proc_6_33_1512840(Me.Text3)
  loc_E4D3CB: Exit Sub
End Sub

Private Sub TxtCr_GotFocus(Index As Integer) '10D1214
  'Data Table: 5C26A4
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_A4 As Double
  Dim var_108 As Double
  Dim var_C4 As Variant
  Dim var_FC As TextBox
  Dim var_88 As Label
  Dim var_F8 As Label
  loc_10D0F28: On Error Goto loc_10D11E9
  loc_10D0F34: If (global_132 = &HFF) Then
  loc_10D0F37:   Exit Sub
  loc_10D0F38: End If
  loc_10D0F42: Set var_88 = Me.TxtCr
  loc_10D0F48: Call 0.Method_TxtCr_GotFocus0 (Index)
  loc_10D0F56: Call Proc_185_163_E215F4(var_8C)
  loc_10D0F62: Call Proc_185_169_F64464(var_8C)
  loc_10D0F74: Set var_88 = Me.TxtCr
  loc_10D0F7A: Call 0.Method_TxtCr_GotFocus0 (Index, var_8C)
  loc_10D0F9C: Set var_90 = Me.TxtAcName
  loc_10D0FA2: Call 0.Method_TxtCr_GotFocus0 (Index, var_98)
  loc_10D0FCA: If ((var_8C.Text = vbNullString) And (var_98.Text <> vbNullString)) Then
  loc_10D0FD9:   Set var_90 = Me.LblCrAmt
  loc_10D0FDF:   Call 0.Method_TxtCr_GotFocus0 (0, var_98)
  loc_10D0FE7:   var_9C = var_98.Caption
  loc_10D1003:   Set var_88 = Me.LblDrAmt
  loc_10D1009:   Call 0.Method_TxtCr_GotFocus0 (0, var_8C)
  loc_10D1036:   If (CDbl(Val(var_8C.Caption)) > CDbl(Val(var_9C))) Then
  loc_10D1045:     Set var_88 = Me.LblDrAmt
  loc_10D104B:     Call 0.Method_TxtCr_GotFocus0 (0, var_8C)
  loc_10D1053:     var_94 = var_8C.Caption
  loc_10D1060:     var_A4 = Val(var_94)
  loc_10D106F:     Set var_90 = Me.LblCrAmt
  loc_10D1075:     Call 0.Method_TxtCr_GotFocus0 (0, var_98, var_9C)
  loc_10D10A9:     var_C4 = CVar((var_98.Caption - Val(var_9C))) 'Double
  loc_10D10C6:     Set var_F8 = Me.TxtCr
  loc_10D10CC:     Call 0.Method_TxtCr_GotFocus0 (Index, var_FC, CStr(Format(var_C4, "0.00")), 1)
  loc_10D10D4:     var_FC.Text = 1
  loc_10D10FA:   End If
  loc_10D10FA: End If
  loc_10D1107: Set var_88 = Me.TxtCr
  loc_10D110D: Call 0.Method_TxtCr_GotFocus0 (Index, var_8C, var_94)
  loc_10D1115: var_108 = var_8C.Text
  loc_10D1128: Set var_90 = Me.TxtCr
  loc_10D112E: Call 0.Method_TxtCr_GotFocus0 (Index, var_98)
  loc_10D1136: var_98.SelLength = Len(var_94)
  loc_10D1155: If (CInt(global_110) <= 2) Then
  loc_10D1164:   Me.LblHelp.Visible = True
  loc_10D117A:   Me.LblHelp.Left = CDbl(0)
  loc_10D118E:   Set var_90 = Me.TxtCHno
  loc_10D1194:   Call 0.Method_TxtCr_GotFocus0 (0, var_98)
  loc_10D11AD:   Set var_88 = Me.TxtCHno
  loc_10D11B3:   Call 0.Method_TxtCr_GotFocus0 (0, var_8C)
  loc_10D11D6:   Me.LblHelp.Top = ((var_8C.Top + var_98.Height) + CDbl(&H19))
  loc_10D11E8: End If
  loc_10D11E8: Exit Sub
  loc_10D11E9: ' Referenced from: 10D0F28
  loc_10D11EF: Call 0.Method_arg_50 (var_94)
  loc_10D1204: Proc_183_57_104AA84(var_94, "TxtCr_GotFocus")
  loc_10D1210: Exit Sub
End Sub

Private Sub TxtCr_KeyDown(KeyCode As Integer, Shift As Integer) '175D204
  'Data Table: 5C26A4
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_100 As String
  Dim var_104 As Variant
  Dim var_120 As Double
  Dim var_DC As Variant
  Dim var_118 As String
  Dim var_150 As Variant
  Dim var_130 As Variant
  Dim var_A8 As Double
  Dim var_174 As String
  Dim unk_5C26BA As Connection15
  Dim var_88 As Recordset15
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_19C As Variant
  Dim var_160 As Variant
  Dim var_2A0 As Double
  Dim var_FC As Variant
  Dim var_114 As Variant
  Dim var_140 As Variant
  Dim var_1CC As Variant
  Dim var_204 As Variant
  Dim var_270 As Variant
  Dim var_8C As Recordset15
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_39C As Variant
  Dim var_48C As Variant
  Dim var_4AC As Variant
  Dim var_4CC As Variant
  Dim var_67C As Variant
  Dim var_6C4 As Variant
  Dim var_8E As Integer
  Dim var_B0 As Double
  loc_175B5B0: On Error Goto loc_175D1D9
  loc_175B5BC: If (global_132 = &HFF) Then
  loc_175B5BF:   Exit Sub
  loc_175B5C0: End If
  loc_175B5CA: If (CLng(Shift) = &H1B) Then
  loc_175B5CD:   Call Proc_185_169_F64464()
  loc_175B5D2: End If
  loc_175B5DE: If (CInt(global_110) <= 2) Then
  loc_175B5EB:   If (CLng(Shift) = &H2D) Then
  loc_175B5F6:     Call TxtCr_Validate(KeyCode)
  loc_175B618:     var_CC = Me.Fields.Item("OnLineAdjustment")
  loc_175B63A:     If (var_CC.Value = "Yes") Then
  loc_175B64A:       Set var_B8 = Me.TxtCr
  loc_175B650:       Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC)
  loc_175B674:       If (CDbl(Val(var_CC.Text)) <= CDbl(0)) Then
  loc_175B677:         Exit Sub
  loc_175B678:       End If
  loc_175B68A:       Me.FRAMEADJUST.Tag = CStr(KeyCode)
  loc_175B6A2:       Set var_B8 = Me.TxtAcName
  loc_175B6A8:       Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC)
  loc_175B6C2:       Me.Label4.Caption = var_CC.Text
  loc_175B6E0:       Set var_B8 = Me.TxtCr
  loc_175B6E6:       Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC)
  loc_175B733:       Me.ADJ_LAB4.Caption = CStr(Format(CVar(Val(var_CC.Text)), "0.00"))
  loc_175B76E:       var_CC = Me.Fields.Item("ToBy")
  loc_175B776:       var_DC = var_CC.Value
  loc_175B7B0:       var_100 = CStr(IIf((var_DC = "Yes"), "To", "Cr"))
  loc_175B7BE:       Me.ADJ_LAB5.Caption = var_100
  loc_175B7EF:       Me.FgridAdjust.Rows = 1
  loc_175B81A:       Set var_B8 = Me.TxtAcName
  loc_175B820:       Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC, var_100, "Select max(L.DocId) AS DI,MAX(V_SNo) AS VS,MAX(L.V_Type) AS VT,MAX(L.V_Prefix) AS VP,MAX(L.V_No) AS VN,MAX(L.V_Date) AS VD,MAX(AmtDr) As Amount,MAX(L.Narration) AS NARR,MAX(SG.Name) As PartyName,L.SubCode,IsNull(Sum(CR),0) AS TSum,MAX(LEDGERM.Narration) AS MNARR,MAX(L.AgRefNo) AS AgRefNom FROM ((Ledger L Left Join SubGroup SG on SG.SubCode=L.CONTRASub) LEFT JOIN LEDGERAdj ON  (L.SUBCODE = LedgerAdj.SUBCODE) AND (L.V_SNo = LedgerAdj.V_SNo2) AND (L.DocId = LedgerAdj.DocId2)) LEFT JOIN LEDGERM ON LEDGERM.DOCID=L.DOCID Where L.SubCode='", var_DC, -1)
  loc_175B838:       var_174 = CDbl(0) & var_100 & "' GROUP BY L.SUBCODE,L.DOCID,L.V_SNO HAVING MAX(AmtDr)>0 ORDER BY L.SUBCODE,MAX(L.V_Date),L.DOCID,L.V_SNO"
  loc_175B841:       unk_5C26BA.Execute var_174, 1, 1
  loc_175B84C:       Set var_88 = var_CC.Tag
  loc_175B864:       ' Referenced from: 175C286
  loc_175B873:       If Not(var_88.EOF) Then
  loc_175B882:         If (CInt(global_110) = 2) Then
  loc_175B892:           Set var_B8 = Me.TxtAcName
  loc_175B898:           Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC, var_100)
  loc_175B8A0:           var_120 = var_CC.Tag
  loc_175B8DA:           var_130 = CVar(CLng((KeyCode + global_108))) 'Long
  loc_175B8DF:           var_188 = 1
  loc_175B962:           var_2A0 = Val(CStr(var_88.Fields.Item("VS").Value))
  loc_175B986:           var_114 = CVar("Select IsNull(Sum(CR),0) AS TSum FROM LEDGERAdj WHERE SUBCODE='" & var_100 & "' AND DocID1='") & Me.Fields.Item("DocID").Value 
  loc_175B9AA:           var_204 = var_114 & "' And V_SNo1=" & CVar(Val(CStr(Me.FGrid1.TextMatrix)))) & " AND DocID2='" & var_88.Fields.Item("DI").Value 
  loc_175B9CC:           unk_5C26BA.Execute CStr(var_204 & "' And V_SNo2=" & CVar(var_2A0)), var_294, -1
  loc_175B9D7:           Set var_8C = var_298
  loc_175BA2F:           If (var_8C.RecordCount > 0) Then
  loc_175BA5D:             var_A8 = CSng(var_8C.Fields.Item("TSUM").Value)
  loc_175BA6A:           End If
  loc_175BA6A:         End If
  loc_175BA6D:         var_98 = CDbl(0)
  loc_175BA73:         var_A0 = CDbl(0)
  loc_175BABD:         If ((CLng((KeyCode + global_108)) = CLng(Me.FGrid1.Rows)) Or (CLng(Me.FGrid1.Rows) = 0)) Then
  loc_175BAC0:           GoTo loc_175BD11
  loc_175BAC3:         End If
  loc_175BADA:         If (Me.RecordCount > 0) Then
  loc_175BAE6:           Me.Sort = "VSNo ASC"
  loc_175BAF1:           Me.MoveFirst
  loc_175BAF6:           ' Referenced from: 175BD0E
  loc_175BB08:           If Not(Me.EOF) Then
  loc_175BBC1:             var_1CC = (Me.Fields.Item("DocID").Value = var_88.Fields.Item("DI").Value) And (Me.Fields.Item("V_SNo").Value = var_88.Fields.Item("VS").Value)
  loc_175BBE5:             If CBool(var_1CC) Then
  loc_175BC0D:               var_FC = Me.Fields.Item("VSno").Value
  loc_175BC20:               var_EC = CVar(CLng((KeyCode + global_108))) 'Long
  loc_175BC65:               If (1 = CVar(Val(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_175BC98:                 Proc_183_3_E7D1C8(var_FC, CVar(Me.Fields.Item("dr")), CVar(var_98), CVar(var_98), var_FC, var_A0, var_98)
  loc_175BCA0:                 var_114 = (var_A8 + var_FC)
  loc_175BCA5:                 var_98 = CSng(var_114)
  loc_175BCB7:               Else
  loc_175BCE7:                 Proc_183_3_E7D1C8(var_FC, CVar(Me.Fields.Item("dr")), CVar(var_A0), var_98, var_298)
  loc_175BCEF:                 var_114 = (var_2A0 + var_FC)
  loc_175BCF4:                 var_A0 = CSng(var_114)
  loc_175BD03:               End If
  loc_175BD03:             End If
  loc_175BD09:             Me.MoveNext
  loc_175BD0E:             GoTo loc_175BAF6
  loc_175BD11:             ' Referenced from: 175BAC0
  loc_175BD11:           End If
  loc_175BD11:         End If
  loc_175BD65:         var_114 = (var_88.Fields.Item("Amount").Value - var_88.Fields.Item("TSUM").Value)
  loc_175BD70:         var_140 = (var_114 + CVar(var_A8))
  loc_175BD7B:         var_160 = (var_88.Fields.Item("VS").Value - CVar(var_A0))
  loc_175BD9B:         If (Me.Fields.Item("V_SNo").Value > 0) Then
  loc_175BE99:           var_178 = var_88.Fields.Item("VN")
  loc_175BED3:           var_19C = var_88.Fields
  loc_175BEEB:           var_270 = vbNullString & Chr(9) & var_88.Fields.Item("VT").Value & Chr(9) & var_178.Value & Chr(9) & var_19C.Item("VP").Value 
  loc_175BF09:           var_188 = "VS"
  loc_175BFC2:           var_39C = 1 & Format(CVar(var_88.Fields.Item("VD")), "Short Date") & Chr(9) & var_88.Fields.Item("PartyName").Value & Chr(9) 
  loc_175C062:           var_48C = (var_88.Fields.Item("Amount").Value - var_88.Fields.Item("TSUM").Value)
  loc_175C06D:           var_4AC = (var_48C + CVar(var_A8))
  loc_175C078:           var_4CC = (var_4AC - CVar(var_A0))
  loc_175C10E:           var_100 = Proc_183_2_E5A304(CVar(var_88.Fields.Item("mNarr")), 1 & Format(var_98, "0.00") & Chr(9), 1, 1 & Format(var_4CC, "0.00") & Chr(9), 1, 1 & Format(CVar(var_88.Fields.Item("Amount")), "0.00") & Chr(9), 1)
  loc_175C140:           var_174 = Proc_183_2_E5A304(CVar(var_88.Fields.Item("NARR")), var_100 & " ", var_39C & var_88.Fields.Item("AgRefNom").Value & Chr(9), 1)
  loc_175C178:           var_67C = var_A0 & CVar(var_270 & Chr(9) & var_88.Fields.Item(var_188).Value & Chr(9) & var_174) & Chr(9) & vbNullString & Chr(9) 
  loc_175C1AB:           var_6C4 = CVar(CStr(var_67C & var_88.Fields.Item("DI").Value)) 'String
  loc_175C1B3:           Set var_6D8 = Me.FgridAdjust
  loc_175C27E:         End If
  loc_175C281:         var_88.MoveNext
  loc_175C286:         GoTo loc_175B864
  loc_175C289:       End If
  loc_175C296:       Me.TXTNARRATION.Text = vbNullString
  loc_175C29E:       Call Proc_185_161_1010428(FgridAdjust.DispID_10000, var_6C4)
  loc_175C2C2:       If (CLng(Me.FgridAdjust.Rows) > 1) Then
  loc_175C2D1:         Me.FRAMEADJUST.Visible = True
  loc_175C2E9:         Me.FRAMEADJUST.ZOrder 0
  loc_175C2F1:       End If
  loc_175C2F1:       Exit Sub
  loc_175C2F2:     End If
  loc_175C2F5:   Else
  loc_175C306:     If ((CLng(Shift) = &H52) And (arg_14 = 4)) Then
  loc_175C311:       Call TxtCr_Validate(KeyCode)
  loc_175C333:       var_CC = Me.Fields.Item("OnLineAdjustment")
  loc_175C355:       If (var_CC.Value = "Yes") Then
  loc_175C365:         Set var_B8 = Me.TxtCr
  loc_175C36B:         Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC, var_100)
  loc_175C373:         0 = var_CC.Text
  loc_175C38F:         If (CDbl(Val(var_100)) <= CDbl(0)) Then
  loc_175C392:           Exit Sub
  loc_175C393:         End If
  loc_175C398:         var_100 = CStr(KeyCode)
  loc_175C3A5:         Me.FrameRef.Tag = var_100
  loc_175C3BD:         Set var_B8 = Me.TxtAcName
  loc_175C3C3:         Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC, var_100)
  loc_175C3CB:         var_120 = var_CC.Text
  loc_175C3DD:         Me.LblRefName.Caption = var_100
  loc_175C3FB:         Set var_B8 = Me.TxtCr
  loc_175C401:         Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC)
  loc_175C44E:         Me.LblRefAmt.Caption = CStr(Format(CVar(Val(var_CC.Text)), "0.00"))
  loc_175C4D9:         Me.LblRefAmtDrCr.Caption = CStr(IIf((Me.Fields.Item("ToBy").Value = "Yes"), "To", "Cr"))
  loc_175C50A:         Me.FGridRef.Rows = 1
  loc_175C512:         var_C8 = vbNullString
  loc_175C51C:         Set var_B8 = Me.FGridRef
  loc_175C540:         Me.FGridRef.FixedRows = 1
  loc_175C54A:         var_8E = 1
  loc_175C564:         If (Me.RecordCount > 0) Then
  loc_175C570:           Me.Sort = "V_SNo ASC"
  loc_175C57B:           Me.MoveFirst
  loc_175C58B:           var_C8 = CVar(CLng((KeyCode + global_108))) 'Long
  loc_175C590:           var_130 = 1
  loc_175C5CF:           var_118 = CStr(Val(CStr(Me.FGrid1.TextMatrix))))
  loc_175C5DC:           Me.Find "V_SNO=" & var_118, 0, 1
  loc_175C5F0:           ' Referenced from:   175C9E4
  loc_175C602:           If Not(Me.EOF) Then
  loc_175C62A:             var_FC = Me.Fields.Item("V_SNo").Value
  loc_175C63D:             var_EC = CVar(CLng((KeyCode + global_108))) 'Long
  loc_175C660:             var_100 = CStr(Me.FGrid1.TextMatrix))
  loc_175C682:             If (1 = CVar(Val(var_100))) Then
  loc_175C685:               var_C8 = vbNullString
  loc_175C68F:               Set var_B8 = Me.FGridRef
  loc_175C6A4:               var_EC = CVar(CLng(var_8E)) 'Long
  loc_175C6AC:               var_150 = CVar(CLng(5)) 'Long
  loc_175C6DF:               var_FC = CVar(CStr(Me.Fields.Item("DocID").Value)) 'String
  loc_175C6E7:               Set var_104 = Me.FGridRef
  loc_175C6ED:               LateIdCallSt
  loc_175C709:               var_EC = CVar(CLng(var_8E)) 'Long
  loc_175C711:               var_150 = CVar(CLng(6)) 'Long
  loc_175C744:               var_FC = CVar(CStr(Me.Fields.Item("V_SNo").Value)) 'String
  loc_175C752:               LateIdCallSt
  loc_175C7A4:               Proc_183_5_EF3390(var_FC, CVar(Me.Fields.Item("dr")), CVar(CLng(4)), CVar(CLng(var_8E)), Me.FGridRef, var_FC, CVar(CLng(4)))
  loc_175C7BB:               LateIdCallSt
  loc_175C80D:               Proc_183_5_EF3390(var_FC, CVar(Me.Fields.Item("cr")), CVar(CLng(3)), CVar(CLng(var_8E)), Me.FGridRef, CVar(CStr(var_FC)), CVar(CLng(var_8E)))
  loc_175C816:               var_114 = CVar(CStr(var_FC)) 'String
  loc_175C81E:               Set var_104 = Me.FGridRef
  loc_175C824:               LateIdCallSt
  loc_175C840:               var_EC = CVar(CLng(var_8E)) 'Long
  loc_175C848:               var_150 = CVar(CLng(7)) 'Long
  loc_175C87B:               var_FC = CVar(CStr(Me.Fields.Item("subcode").Value)) 'String
  loc_175C883:               Set var_104 = Me.FGridRef
  loc_175C889:               LateIdCallSt
  loc_175C8A5:               var_EC = CVar(CLng(var_8E)) 'Long
  loc_175C8AD:               var_150 = CVar(CLng(2)) 'Long
  loc_175C8E0:               var_FC = CVar(CStr(Me.Fields.Item("AgRefNo").Value)) 'String
  loc_175C8E8:               Set var_104 = Me.FGridRef
  loc_175C8EE:               LateIdCallSt
  loc_175C90A:               var_EC = CVar(CLng(var_8E)) 'Long
  loc_175C912:               var_150 = CVar(CLng(1)) 'Long
  loc_175C945:               var_FC = CVar(CStr(Me.Fields.Item("AgRefType").Value)) 'String
  loc_175C94D:               Set var_104 = Me.FGridRef
  loc_175C953:               LateIdCallSt
  loc_175C96F:               var_EC = CVar(CLng(var_8E)) 'Long
  loc_175C977:               var_150 = CVar(CLng(8)) 'Long
  loc_175C999:               var_CC = Me.Fields.Item("DueDate")
  loc_175C9A1:               var_DC = var_CC.Value
  loc_175C9AA:               var_FC = CVar(CStr(var_DC)) 'String
  loc_175C9B2:               Set var_104 = Me.FGridRef
  loc_175C9B8:               LateIdCallSt
  loc_175C9D0:             End If
  loc_175C9D6:             Me.MoveNext
  loc_175C9E1:             var_8E = (var_8E + 1)
  loc_175C9E4:             GoTo loc_175C5F0
  loc_175C9E7:           End If
  loc_175C9E7:         End If
  loc_175C9E7:         Call Proc_185_162_11F8598(var_8E, var_104, var_FC, var_150, var_EC, var_104, var_FC)
  loc_175C9F8:         Me.FrameRef.Visible = True
  loc_175CA10:         Me.FrameRef.ZOrder 0
  loc_175CA1C:         Set var_B8 = Me.FGridRef
  loc_175CA2D:         Exit Sub
  loc_175CA2E:       End If
  loc_175CA31:     Else
  loc_175CA42:       If ((CLng(Shift) = &H54) And (arg_14 = 4)) Then
  loc_175CA4D:         Call TxtCr_Validate(KeyCode)
  loc_175CA5F:         Set var_B8 = Me.TxtCr
  loc_175CA65:         Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC, var_100, 0, FGridRef.DispID_8001, var_150)
  loc_175CA6D:         var_EC = var_CC.Text
  loc_175CA89:         If (CDbl(Val(var_100)) <= CDbl(0)) Then
  loc_175CA8C:           Exit Sub
  loc_175CA8D:         End If
  loc_175CAA1:         var_100 = "SELECT TDSCAT.* FROM TDSCAT LEFT JOIN SUBGROUP ON SUBGROUP.TDS_CATG=TDSCAT.CODE WHERE (TDSCAT.LOGSITE_CODE='" & MemVar_1F92078
  loc_175CAB8:         Set var_B8 = Me.TxtAcName
  loc_175CABE:         Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC, var_118, var_100 & "' OR TDSCAT.LOGSITE_CODE='HO') AND SUBGROUP.SUBCODE='", var_DC, -1)
  loc_175CAC6:         var_104 = var_CC.Tag
  loc_175CADF:         unk_5C26BA.Execute var_104 & var_118 & "'", var_FC, var_150
  loc_175CAEA:         Set var_88 = var_104
  loc_175CB1A:         If (var_88.RecordCount > 0) Then
  loc_175CB43:           Proc_183_3_E7D1C8(var_FC, CVar(var_88.Fields.Item("TDSPercentage")))
  loc_175CB4C:           var_B0 = CSng(var_FC)
  loc_175CB5C:         Else
  loc_175CB5F:           var_B0 = CDbl(0)
  loc_175CB62:         End If
  loc_175CB74:         Me.FrameTDS.Tag = CStr(KeyCode)
  loc_175CB96:         If (Me.RecordCount > 0) Then
  loc_175CBA2:           Me.Sort = "V_SNo ASC"
  loc_175CBAD:           Me.MoveFirst
  loc_175CBBD:           var_C8 = CVar(CLng((KeyCode + global_108))) 'Long
  loc_175CBE8:           var_120 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_175CC0E:           Me.Find "V_SNO=" & CStr(var_120), 0, 1
  loc_175CC36:           If (Me.EOF = 0) Then
  loc_175CC3F:             var_C8 = "TDSNAME"
  loc_175CC73:             Set var_104 = Me.TxtTDSCode
  loc_175CC79:             Call 0.Method_TxtCr_KeyDown0 (0, var_178, CStr(Me.Fields.Item(var_C8).Value), var_188, var_120, 1)
  loc_175CC81:             var_178.Text = var_C8
  loc_175CCD1:             Set var_104 = Me.TxtTDSCode
  loc_175CCD7:             Call 0.Method_TxtCr_KeyDown0 (0, var_178, CStr(Me.Fields.Item("TDSCODE").Value), var_B0)
  loc_175CCDF:             var_178.Tag = var_B0
  loc_175CD2D:             Me.TxtTDSNarration.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("Narration")), var_EC)
  loc_175CD7A:             Me.TxtONAMT.Text = CStr(Me.Fields.Item("ONAmt").Value)
  loc_175CDC9:             Me.TxtTDS.Text = CStr(Me.Fields.Item("TDS").Value)
  loc_175CE18:             Me.TxtTDSAMT.Text = CStr(Me.Fields.Item("TDSAmt").Value)
  loc_175CE49:             var_CC = Me.Fields.Item("TDSAmt")
  loc_175CE67:             Set var_104 = Me.TxtDr
  loc_175CE6D:             Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_178)
  loc_175CE75:             var_178.Tag = CStr(var_CC.Value)
  loc_175CE8E:           Else
  loc_175CE9A:             Set var_B8 = Me.TxtTDSCode
  loc_175CEA0:             Call 0.Method_TxtCr_KeyDown0 (0, var_CC)
  loc_175CEA8:             var_CC.Text = vbNullString
  loc_175CEC0:             Set var_B8 = Me.TxtTDSCode
  loc_175CEC6:             Call 0.Method_TxtCr_KeyDown0 (0, var_CC)
  loc_175CECE:             var_CC.Tag = vbNullString
  loc_175CEE7:             Me.TxtTDSNarration.Text = vbNullString
  loc_175CEFC:             Set var_B8 = Me.TxtCr
  loc_175CF02:             Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC)
  loc_175CF26:             Me.TxtONAMT.Text = CStr(Val(var_CC.Text))
  loc_175CF4D:             Me.TxtTDS.Text = CStr(var_B0)
  loc_175CF5F:             Set var_CC = Me.TxtTDS
  loc_175CF72:             var_120 = Val(var_CC.Text)
  loc_175CFA6:             Me.TxtTDSAMT.Text = CStr(((Val(Me.TxtONAMT.Text) * var_120) / CDbl(&H64)))
  loc_175CFBD:           End If
  loc_175CFC0:         Else
  loc_175CFCC:           Set var_B8 = Me.TxtTDSCode
  loc_175CFD2:           Call 0.Method_TxtCr_KeyDown0 (0, var_CC, vbNullString)
  loc_175CFF2:           Set var_B8 = Me.TxtTDSCode
  loc_175CFF8:           Call 0.Method_TxtCr_KeyDown0 (0, var_CC)
  loc_175D000:           var_CC.Tag = vbNullString
  loc_175D019:           Me.TxtTDSNarration.Text = vbNullString
  loc_175D02E:           Set var_B8 = Me.TxtCr
  loc_175D034:           Call 0.Method_TxtCr_KeyDown0 (KeyCode, var_CC)
  loc_175D052:           Set var_104 = Me.TxtONAMT
  loc_175D058:           var_104.Text = CStr(Val(var_120))
  loc_175D072:           var_100 = CStr(var_B0)
  loc_175D07F:           Me.TxtTDS.Text = var_100
  loc_175D097:           Me.TxtTDSAMT.Text = vbNullString
  loc_175D09F:         End If
  loc_175D0AB:         Me.FrameTDS.Visible = True
  loc_175D0C3:         Me.FrameTDS.ZOrder 0
  loc_175D0D4:         Set var_B8 = Me.TxtTDSCode
  loc_175D0DA:         Call 0.Method_TxtCr_KeyDown0 (0, var_CC)
  loc_175D0E2:         var_CC.SetFocus
  loc_175D0FA:         Set var_CC = Me.TxtTDSCode
  loc_175D100:         Call 0.Method_TxtCr_KeyDown0 (0, var_104)
  loc_175D126:         var_C8 = CVar((Me.FrameTDS.Left + var_104.Left)) 'Single
  loc_175D135:         Me.DGTDSCODE.Left = 0
  loc_175D151:         Set var_CC = Me.TxtTDSCode
  loc_175D157:         Call 0.Method_TxtCr_KeyDown0 (0, var_104)
  loc_175D170:         Set var_178 = Me.TxtTDSCode
  loc_175D176:         Call 0.Method_TxtCr_KeyDown0 (0, var_19C)
  loc_175D1A4:         var_C8 = CVar((((Me.FrameTDS.Top + var_104.Top) + var_19C.Height) + CDbl(&H32))) 'Single
  loc_175D1B3:         Me.DGTDSCODE.Top = 0
  loc_175D1C7:         Exit Sub
  loc_175D1C8:       End If
  loc_175D1C8:     End If
  loc_175D1C8:   End If
  loc_175D1C8: End If
  loc_175D1CD: Set var_88 = Nothing
  loc_175D1D5: Set var_8C = Nothing
  loc_175D1D8: Exit Sub
  loc_175D1D9: ' Referenced from: 175B5B0
  loc_175D1DF: Call 0.Method_arg_50 (var_100)
  loc_175D1F4: Proc_183_57_104AA84(var_100, "TxtCr_KeyDown")
  loc_175D200: Exit Sub
End Sub

Private Sub TxtCr_KeyPress(KeyAscii As Integer) 'EAA8F0
  'Data Table: 5C26A4
  loc_EAA870: On Error Goto loc_EAA8C7
  loc_EAA87C: If (global_132 = &HFF) Then
  loc_EAA87F:   Exit Sub
  loc_EAA880: End If
  loc_EAA88C: If (CInt(global_110) <= 2) Then
  loc_EAA899:   Set var_88 = Me.TxtCr
  loc_EAA89F:   Call 0.Method_TxtCr_KeyPress0 (KeyAscii)
  loc_EAA8BA:   Proc_183_22_129AEBC(var_8C, arg_10, &HA)
  loc_EAA8C6: End If
  loc_EAA8C6: Exit Sub
  loc_EAA8C7: ' Referenced from: EAA870
  loc_EAA8CD: Call 0.Method_arg_50 (var_98, 2)
  loc_EAA8E2: Proc_183_57_104AA84(var_98, "TxtCr_KeyPress")
  loc_EAA8EE: Exit Sub
End Sub

Private Sub TxtCr_KeyUp(KeyCode As Integer, Shift As Integer) 'F1A7AC
  'Data Table: 5C26A4
  Dim var_8C As TextBox
  Dim var_88 As Label
  loc_F1A6BC: On Error Goto loc_F1A781
  loc_F1A6CC: Set var_88 = Me.TxtCr
  loc_F1A6D2: Call 0.Method_TxtCr_KeyUp0 (KeyCode, var_8C)
  loc_F1A6F6: If (CDbl(Val(var_8C.Text)) <> CDbl(0)) Then
  loc_F1A706:   Set var_88 = Me.TxtCr
  loc_F1A70C:   Call 0.Method_TxtCr_KeyUp0 (KeyCode, var_8C)
  loc_F1A714:   var_90 = var_8C.Text
  loc_F1A727:   var_A0 = " Paise"
  loc_F1A74F:   Me.LblAmtRs.Caption = Proc_183_50_F73B30(Val(var_90), "Rs")
  loc_F1A76B: Else
  loc_F1A778:   Me.LblAmtRs.Caption = vbNullString
  loc_F1A780: End If
  loc_F1A780: Exit Sub
  loc_F1A781: ' Referenced from: F1A6BC
  loc_F1A787: Call 0.Method_arg_50 (var_90, var_A0)
  loc_F1A79C: Proc_183_57_104AA84(var_90, "TxtCr_KeyUp")
  loc_F1A7A8: Exit Sub
End Sub

Private Sub TxtCr_LostFocus(Index As Integer) 'E9BD48
  'Data Table: 5C26A4
  Dim var_88 As Label
  loc_E9BCD0: On Error Goto loc_E9BD20
  loc_E9BCE0: Me.LblAmtRs.Caption = vbNullString
  loc_E9BCF1: If (global_132 = &HFF) Then
  loc_E9BCF4:   Exit Sub
  loc_E9BCF5: End If
  loc_E9BCFF: Set var_88 = Me.TxtCr
  loc_E9BD05: Call 0.Method_TxtCr_LostFocus0 (Index)
  loc_E9BD13: Call Proc_185_164_E264C0(var_8C)
  loc_E9BD1F: Exit Sub
  loc_E9BD20: ' Referenced from: E9BCD0
  loc_E9BD26: Call 0.Method_arg_50 (var_94)
  loc_E9BD3B: Proc_183_57_104AA84(var_94, "TxtCr_LostFocus")
  loc_E9BD47: Exit Sub
End Sub

Private Sub TxtCr_Validate(Cancel As Boolean) '11D23B4
  'Data Table: 5C26A4
  Dim var_98 As Variant
  Dim var_A4 As TextBox
  Dim arg_10 As Integer
  Dim var_110 As Double
  Dim var_E8 As Variant
  Dim var_D8 As Variant
  Dim var_9C As String
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_90 As Double
  Dim var_124 As Long
  Dim var_A0 As MSFlexGrid
  Dim var_F8 As Variant
  loc_11D1F50: On Error Goto loc_11D238C
  loc_11D1F5C: If (global_132 = &HFF) Then
  loc_11D1F5F:   Exit Sub
  loc_11D1F60: End If
  loc_11D1F6C: If (CInt(global_110) = 3) Then
  loc_11D1F6F:   Exit Sub
  loc_11D1F70: End If
  loc_11D1F7C: If (CInt(global_110) <= 2) Then
  loc_11D1F8C:   Set var_94 = Me.TxtCr
  loc_11D1F92:   Call 0.Method_TxtCr_Validate0 (Cancel, var_98)
  loc_11D1FB9:   Set var_A0 = Me.TxtCr
  loc_11D1FBF:   Call 0.Method_TxtCr_Validate0 (Cancel, var_A4)
  loc_11D1FC7:   var_A6 = var_A4.Visible
  loc_11D1FE1:   If ((CDbl(Val(var_98.Text)) = CDbl(0)) And (var_A6 = &HFF)) Then
  loc_11D1FE6:     arg_10 = &HFF
  loc_11D1FE9:     Exit Sub
  loc_11D1FEA:   End If
  loc_11D1FF4:   Set var_94 = Me.TxtCr
  loc_11D1FFA:   Call 0.Method_TxtCr_Validate0 (Cancel, var_98)
  loc_11D2006:   Proc_183_6_EA3004(CVar(var_98))
  loc_11D202D:   var_108 = Format(CVar(arg_10), "0.00")
  loc_11D2043:   Set var_A0 = Me.TxtCr
  loc_11D2049:   Call 0.Method_TxtCr_Validate0 (Cancel, var_A4, CStr(var_108))
  loc_11D2051:   var_A4.Text = 1
  loc_11D2073:   Call Proc_185_145_E9BED0(Cancel, var_A6)
  loc_11D207C:   var_86 = var_A6 'Byte
  loc_11D20BF:   If (Me.Fields.Item("OnLineAdjustment").Value = "Yes") Then
  loc_11D20C5:     var_90 = CDbl(0)
  loc_11D20DF:     If (Me.RecordCount > 0) Then
  loc_11D20EB:       Me.Sort = "VSNo ASC"
  loc_11D20FB:       var_C8 = CVar(CLng((Cancel + global_108))) 'Long
  loc_11D2100:       var_124 = 1
  loc_11D214C:       Me.Find "VSNO=" & CStr(Val(CStr(Me.FGrid1.TextMatrix)))), 0, 1
  loc_11D2174:       If (Me.EOF = 0) Then
  loc_11D2177:         ' Referenced from: 11D22F1
  loc_11D219C:         var_D8 = Me.Fields.Item("VSno").Value
  loc_11D21AF:         var_E8 = CVar(CLng((Cancel + global_108))) 'Long
  loc_11D21D2:         var_9C = CStr(Me.FGrid1.TextMatrix))
  loc_11D21F4:         If (1 = CVar(Val(var_9C))) Then
  loc_11D221C:           var_D8 = Me.Fields.Item("subcode").Value
  loc_11D222F:           var_E8 = CVar(CLng((Cancel + global_108))) 'Long
  loc_11D226A:           If CBool(2 <> CVar(CStr(Me.FGrid1.TextMatrix)))) Then
  loc_11D2278:             Me.Delete
  loc_11D2280:           Else
  loc_11D22A1:             var_98 = Me.Fields.Item("dr")
  loc_11D22B0:             Proc_183_3_E7D1C8(var_D8, CVar(var_98), CVar(var_90), 1, CVar(var_90), var_D8, CVar(var_90))
  loc_11D22B8:             var_F8 = (var_D8 + var_D8)
  loc_11D22BD:             var_90 = CSng(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_11D22CC:           End If
  loc_11D22D2:           Me.MoveNext
  loc_11D22EB:           If (Me.EOF = &HFF) Then
  loc_11D22EE:             GoTo loc_11D22F4
  loc_11D22F1:           End If
  loc_11D22F1:           GoTo loc_11D2177
  loc_11D22F4:           ' Referenced from: 11D22EE
  loc_11D22F4:         End If
  loc_11D22F4:       End If
  loc_11D22F4:     End If
  loc_11D2301:     Set var_94 = Me.TxtCr
  loc_11D2307:     Call 0.Method_TxtCr_Validate0 (Cancel, var_98, var_9C, var_90, var_14C)
  loc_11D230F:     var_110 = var_98.Text
  loc_11D231C:     var_110 = Val(var_9C)
  loc_11D2331:     If (var_90 > CDbl(var_110)) Then
  loc_11D2342:       var_C8 = "Can't Adjust More Amount"
  loc_11D234D:       MsgBox(var_C8, 0, var_D8, CVar(CStr(Me.FGrid1.TextMatrix))), var_108)
  loc_11D235F:       arg_10 = &HFF
  loc_11D2362:     End If
  loc_11D2362:   End If
  loc_11D2362: End If
  loc_11D236E: Me.LblHelp.Visible = False
  loc_11D2383: Me.LblAmtRs.Caption = vbNullString
  loc_11D238B: Exit Sub
  loc_11D238C: ' Referenced from: 11D1F50
  loc_11D2392: Call 0.Method_arg_50 (var_9C, arg_10, var_110, var_124)
  loc_11D23A7: Proc_183_57_104AA84(var_9C, "TxtCr_Validate", var_C8)
  loc_11D23B3: Exit Sub
End Sub

Private Sub TxtDr_GotFocus(Index As Integer) '10CE738
  'Data Table: 5C26A4
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_A4 As Double
  Dim var_108 As Double
  Dim var_C4 As Variant
  Dim var_FC As TextBox
  Dim var_88 As Label
  Dim var_F8 As Label
  loc_10CE44C: On Error Goto loc_10CE70D
  loc_10CE458: If (global_132 = &HFF) Then
  loc_10CE45B:   Exit Sub
  loc_10CE45C: End If
  loc_10CE466: Set var_88 = Me.TxtDr
  loc_10CE46C: Call 0.Method_TxtDr_GotFocus0 (Index)
  loc_10CE47A: Call Proc_185_163_E215F4(var_8C)
  loc_10CE486: Call Proc_185_169_F64464(var_8C)
  loc_10CE498: Set var_88 = Me.TxtDr
  loc_10CE49E: Call 0.Method_TxtDr_GotFocus0 (Index, var_8C)
  loc_10CE4C0: Set var_90 = Me.TxtAcName
  loc_10CE4C6: Call 0.Method_TxtDr_GotFocus0 (Index, var_98)
  loc_10CE4EE: If ((var_8C.Text = vbNullString) And (var_98.Text <> vbNullString)) Then
  loc_10CE4FD:   Set var_90 = Me.LblDrAmt
  loc_10CE503:   Call 0.Method_TxtDr_GotFocus0 (0, var_98)
  loc_10CE50B:   var_9C = var_98.Caption
  loc_10CE527:   Set var_88 = Me.LblCrAmt
  loc_10CE52D:   Call 0.Method_TxtDr_GotFocus0 (0, var_8C)
  loc_10CE55A:   If (CDbl(Val(var_8C.Caption)) > CDbl(Val(var_9C))) Then
  loc_10CE569:     Set var_88 = Me.LblCrAmt
  loc_10CE56F:     Call 0.Method_TxtDr_GotFocus0 (0, var_8C)
  loc_10CE577:     var_94 = var_8C.Caption
  loc_10CE584:     var_A4 = Val(var_94)
  loc_10CE593:     Set var_90 = Me.LblDrAmt
  loc_10CE599:     Call 0.Method_TxtDr_GotFocus0 (0, var_98, var_9C)
  loc_10CE5CD:     var_C4 = CVar((var_98.Caption - Val(var_9C))) 'Double
  loc_10CE5EA:     Set var_F8 = Me.TxtDr
  loc_10CE5F0:     Call 0.Method_TxtDr_GotFocus0 (Index, var_FC, CStr(Format(var_C4, "0.00")), 1)
  loc_10CE5F8:     var_FC.Text = 1
  loc_10CE61E:   End If
  loc_10CE61E: End If
  loc_10CE62B: Set var_88 = Me.TxtDr
  loc_10CE631: Call 0.Method_TxtDr_GotFocus0 (Index, var_8C, var_94)
  loc_10CE639: var_108 = var_8C.Text
  loc_10CE64C: Set var_90 = Me.TxtDr
  loc_10CE652: Call 0.Method_TxtDr_GotFocus0 (Index, var_98)
  loc_10CE65A: var_98.SelLength = Len(var_94)
  loc_10CE679: If (CInt(global_110) <= 2) Then
  loc_10CE688:   Me.LblHelp.Visible = True
  loc_10CE69E:   Me.LblHelp.Left = CDbl(0)
  loc_10CE6B2:   Set var_90 = Me.TxtCHno
  loc_10CE6B8:   Call 0.Method_TxtDr_GotFocus0 (0, var_98)
  loc_10CE6D1:   Set var_88 = Me.TxtCHno
  loc_10CE6D7:   Call 0.Method_TxtDr_GotFocus0 (0, var_8C)
  loc_10CE6FA:   Me.LblHelp.Top = ((var_8C.Top + var_98.Height) + CDbl(&H19))
  loc_10CE70C: End If
  loc_10CE70C: Exit Sub
  loc_10CE70D: ' Referenced from: 10CE44C
  loc_10CE713: Call 0.Method_arg_50 (var_94)
  loc_10CE728: Proc_183_57_104AA84(var_94, "TxtDr_GotFocus")
  loc_10CE734: Exit Sub
End Sub

Private Sub TxtDr_KeyDown(KeyCode As Integer, Shift As Integer) '1760E4C
  'Data Table: 5C26A4
  Dim var_C4 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As String
  Dim var_100 As Variant
  Dim var_11C As Double
  Dim var_D8 As Variant
  Dim var_114 As String
  Dim var_14C As Variant
  Dim var_12C As Variant
  Dim var_A4 As Double
  Dim var_170 As String
  Dim unk_5C26BA As Connection15
  Dim var_88 As Recordset15
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_198 As Variant
  Dim var_15C As Variant
  Dim var_29C As Double
  Dim var_F8 As Variant
  Dim var_110 As Variant
  Dim var_13C As Variant
  Dim var_1C8 As Variant
  Dim var_200 As Variant
  Dim var_26C As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_398 As Variant
  Dim var_488 As Variant
  Dim var_4A8 As Variant
  Dim var_4C8 As Variant
  Dim var_678 As Variant
  Dim var_6C0 As Variant
  Dim var_AE As Integer
  Dim var_AC As Double
  loc_175F1E0: On Error Goto loc_1760E24
  loc_175F1EC: If (global_132 = &HFF) Then
  loc_175F1EF:   Exit Sub
  loc_175F1F0: End If
  loc_175F1FA: If (CLng(Shift) = &H1B) Then
  loc_175F1FD:   Call Proc_185_169_F64464()
  loc_175F202: End If
  loc_175F20E: If (CInt(global_110) <= 2) Then
  loc_175F21B:   If (CLng(Shift) = &H2D) Then
  loc_175F226:     Call TxtDr_Validate(KeyCode)
  loc_175F248:     var_C8 = Me.Fields.Item("OnLineAdjustment")
  loc_175F26A:     If (var_C8.Value = "Yes") Then
  loc_175F27A:       Set var_B4 = Me.TxtDr
  loc_175F280:       Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8)
  loc_175F2A4:       If (CDbl(Val(var_C8.Text)) <= CDbl(0)) Then
  loc_175F2A7:         Exit Sub
  loc_175F2A8:       End If
  loc_175F2BA:       Me.FRAMEADJUST.Tag = CStr(KeyCode)
  loc_175F2D2:       Set var_B4 = Me.TxtAcName
  loc_175F2D8:       Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8)
  loc_175F2F2:       Me.Label4.Caption = var_C8.Text
  loc_175F310:       Set var_B4 = Me.TxtDr
  loc_175F316:       Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8)
  loc_175F363:       Me.ADJ_LAB4.Caption = CStr(Format(CVar(Val(var_C8.Text)), "0.00"))
  loc_175F39E:       var_C8 = Me.Fields.Item("ToBy")
  loc_175F3A6:       var_D8 = var_C8.Value
  loc_175F3E0:       var_FC = CStr(IIf((var_D8 = "Yes"), "By", "Dr"))
  loc_175F3EE:       Me.ADJ_LAB5.Caption = var_FC
  loc_175F41F:       Me.FgridAdjust.Rows = 1
  loc_175F44A:       Set var_B4 = Me.TxtAcName
  loc_175F450:       Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8, var_FC, "Select max(L.DocId) AS DI,MAX(V_SNo) AS VS,MAX(L.V_Type) AS VT,MAX(L.V_Prefix) AS VP,MAX(L.V_No) AS VN,MAX(L.V_Date) AS VD,MAX(AmtCr) As Amount,MAX(L.Narration) AS NARR,MAX(SG.Name) As PartyName,L.SubCode,IsNull(Sum(CR),0) AS TSum,MAX(LEDGERM.Narration) AS MNARR,MAX(L.AgRefNo) AS AgRefNom FROM ((Ledger L Left Join SubGroup SG on SG.SubCode=L.CONTRASub) LEFT JOIN LEDGERAdj ON (L.SUBCODE=LedgerAdj.SUBCODE) AND (L.V_SNo=LedgerAdj.V_SNo1) AND (L.DocId=LedgerAdj.DocId1)) LEFT JOIN LEDGERM ON LEDGERM.DOCID=L.DOCID Where L.SubCode='", var_D8, -1)
  loc_175F468:       var_170 = CDbl(0) & var_FC & "' GROUP BY L.SUBCODE,L.DOCID,L.V_SNO HAVING MAX(AmtCr)>0 ORDER BY L.SUBCODE,MAX(L.V_Date),L.DOCID,L.V_SNO"
  loc_175F471:       unk_5C26BA.Execute var_170, 1, 1
  loc_175F47C:       Set var_88 = var_C8.Tag
  loc_175F494:       ' Referenced from: 175FEB6
  loc_175F4A3:       If Not(var_88.EOF) Then
  loc_175F4B2:         If (CInt(global_110) = 2) Then
  loc_175F4C2:           Set var_B4 = Me.TxtAcName
  loc_175F4C8:           Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8, var_FC)
  loc_175F4D0:           var_11C = var_C8.Tag
  loc_175F50A:           var_12C = CVar(CLng((KeyCode + global_108))) 'Long
  loc_175F50F:           var_184 = 1
  loc_175F592:           var_29C = Val(CStr(var_88.Fields.Item("VS").Value))
  loc_175F5B6:           var_110 = CVar("Select IsNull(Sum(CR),0) AS TSum FROM LEDGERAdj WHERE SUBCODE='" & var_FC & "' AND DocID2='") & Me.Fields.Item("DocID").Value 
  loc_175F5DA:           var_200 = var_110 & "' And V_SNo2=" & CVar(Val(CStr(Me.FGrid1.TextMatrix)))) & " AND DocID1='" & var_88.Fields.Item("DI").Value 
  loc_175F5FC:           unk_5C26BA.Execute CStr(var_200 & "' And V_SNo1=" & CVar(var_29C)), var_290, -1
  loc_175F607:           Set var_8C = var_294
  loc_175F65F:           If (var_8C.RecordCount > 0) Then
  loc_175F68D:             var_A4 = CSng(var_8C.Fields.Item("TSUM").Value)
  loc_175F69A:           End If
  loc_175F69A:         End If
  loc_175F69D:         var_94 = CDbl(0)
  loc_175F6A3:         var_9C = CDbl(0)
  loc_175F6ED:         If ((CLng((KeyCode + global_108)) = CLng(Me.FGrid1.Rows)) Or (CLng(Me.FGrid1.Rows) = 0)) Then
  loc_175F6F0:           GoTo loc_175F941
  loc_175F6F3:         End If
  loc_175F70A:         If (Me.RecordCount > 0) Then
  loc_175F716:           Me.Sort = "VSNo ASC"
  loc_175F721:           Me.MoveFirst
  loc_175F726:           ' Referenced from: 175F93E
  loc_175F738:           If Not(Me.EOF) Then
  loc_175F7F1:             var_1C8 = (Me.Fields.Item("DocID").Value = var_88.Fields.Item("DI").Value) And (Me.Fields.Item("V_SNo").Value = var_88.Fields.Item("VS").Value)
  loc_175F815:             If CBool(var_1C8) Then
  loc_175F83D:               var_F8 = Me.Fields.Item("VSno").Value
  loc_175F850:               var_E8 = CVar(CLng((KeyCode + global_108))) 'Long
  loc_175F895:               If (1 = CVar(Val(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_175F8C8:                 Proc_183_3_E7D1C8(var_F8, CVar(Me.Fields.Item("cr")), CVar(var_94), CVar(var_94), var_F8, var_9C, var_94)
  loc_175F8D0:                 var_110 = (var_A4 + var_F8)
  loc_175F8D5:                 var_94 = CSng(var_110)
  loc_175F8E7:               Else
  loc_175F917:                 Proc_183_3_E7D1C8(var_F8, CVar(Me.Fields.Item("cr")), CVar(var_9C), var_94, var_294)
  loc_175F91F:                 var_110 = (var_29C + var_F8)
  loc_175F924:                 var_9C = CSng(var_110)
  loc_175F933:               End If
  loc_175F933:             End If
  loc_175F939:             Me.MoveNext
  loc_175F93E:             GoTo loc_175F726
  loc_175F941:             ' Referenced from: 175F6F0
  loc_175F941:           End If
  loc_175F941:         End If
  loc_175F995:         var_110 = (var_88.Fields.Item("Amount").Value - var_88.Fields.Item("TSUM").Value)
  loc_175F9A0:         var_13C = (var_110 + CVar(var_A4))
  loc_175F9AB:         var_15C = (var_88.Fields.Item("VS").Value - CVar(var_9C))
  loc_175F9CB:         If (Me.Fields.Item("V_SNo").Value > 0) Then
  loc_175FAC9:           var_174 = var_88.Fields.Item("VN")
  loc_175FB03:           var_198 = var_88.Fields
  loc_175FB1B:           var_26C = vbNullString & Chr(9) & var_88.Fields.Item("VT").Value & Chr(9) & var_174.Value & Chr(9) & var_198.Item("VP").Value 
  loc_175FB39:           var_184 = "VS"
  loc_175FBF2:           var_398 = 1 & Format(CVar(var_88.Fields.Item("VD")), "Short Date") & Chr(9) & var_88.Fields.Item("PartyName").Value & Chr(9) 
  loc_175FC92:           var_488 = (var_88.Fields.Item("Amount").Value - var_88.Fields.Item("TSUM").Value)
  loc_175FC9D:           var_4A8 = (var_488 + CVar(var_A4))
  loc_175FCA8:           var_4C8 = (var_4A8 - CVar(var_9C))
  loc_175FD3E:           var_FC = Proc_183_2_E5A304(CVar(var_88.Fields.Item("mNarr")), 1 & Format(var_94, "0.00") & Chr(9), 1, 1 & Format(var_4C8, "0.00") & Chr(9), 1, 1 & Format(CVar(var_88.Fields.Item("Amount")), "0.00") & Chr(9), 1)
  loc_175FD70:           var_170 = Proc_183_2_E5A304(CVar(var_88.Fields.Item("NARR")), var_FC & " ", var_398 & var_88.Fields.Item("AgRefNom").Value & Chr(9), 1)
  loc_175FDA8:           var_678 = var_9C & CVar(var_26C & Chr(9) & var_88.Fields.Item(var_184).Value & Chr(9) & var_170) & Chr(9) & vbNullString & Chr(9) 
  loc_175FDDB:           var_6C0 = CVar(CStr(var_678 & var_88.Fields.Item("DI").Value)) 'String
  loc_175FDE3:           Set var_6D4 = Me.FgridAdjust
  loc_175FEAE:         End If
  loc_175FEB1:         var_88.MoveNext
  loc_175FEB6:         GoTo loc_175F494
  loc_175FEB9:       End If
  loc_175FEC6:       Me.TXTNARRATION.Text = vbNullString
  loc_175FECE:       Call Proc_185_161_1010428(FgridAdjust.DispID_10000, var_6C0)
  loc_175FEF2:       If (CLng(Me.FgridAdjust.Rows) > 1) Then
  loc_175FF01:         Me.FRAMEADJUST.Visible = True
  loc_175FF19:         Me.FRAMEADJUST.ZOrder 0
  loc_175FF21:       End If
  loc_175FF21:       Exit Sub
  loc_175FF22:     End If
  loc_175FF25:   Else
  loc_175FF36:     If ((CLng(Shift) = &H52) And (arg_14 = 4)) Then
  loc_175FF41:       Call TxtDr_Validate(KeyCode)
  loc_175FF63:       var_C8 = Me.Fields.Item("OnLineAdjustment")
  loc_175FF85:       If (var_C8.Value = "Yes") Then
  loc_175FF95:         Set var_B4 = Me.TxtDr
  loc_175FF9B:         Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8, var_FC)
  loc_175FFA3:         0 = var_C8.Text
  loc_175FFBF:         If (CDbl(Val(var_FC)) <= CDbl(0)) Then
  loc_175FFC2:           Exit Sub
  loc_175FFC3:         End If
  loc_175FFC8:         var_FC = CStr(KeyCode)
  loc_175FFD5:         Me.FrameRef.Tag = var_FC
  loc_175FFED:         Set var_B4 = Me.TxtAcName
  loc_175FFF3:         Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8, var_FC)
  loc_175FFFB:         var_11C = var_C8.Text
  loc_176000D:         Me.LblRefName.Caption = var_FC
  loc_176002B:         Set var_B4 = Me.TxtDr
  loc_1760031:         Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8)
  loc_176007E:         Me.LblRefAmt.Caption = CStr(Format(CVar(Val(var_C8.Text)), "0.00"))
  loc_1760109:         Me.LblRefAmtDrCr.Caption = CStr(IIf((Me.Fields.Item("ToBy").Value = "Yes"), "By", "Dr"))
  loc_176013A:         Me.FGridRef.Rows = 1
  loc_1760142:         var_C4 = vbNullString
  loc_176014C:         Set var_B4 = Me.FGridRef
  loc_1760170:         Me.FGridRef.FixedRows = 1
  loc_176017A:         var_AE = 1
  loc_1760194:         If (Me.RecordCount > 0) Then
  loc_17601A0:           Me.Sort = "V_SNo ASC"
  loc_17601AB:           Me.MoveFirst
  loc_17601BB:           var_C4 = CVar(CLng((KeyCode + global_108))) 'Long
  loc_17601C0:           var_12C = 1
  loc_17601FF:           var_114 = CStr(Val(CStr(Me.FGrid1.TextMatrix))))
  loc_176020C:           Me.Find "V_SNO=" & var_114, 0, 1
  loc_1760220:           ' Referenced from:   1760614
  loc_1760232:           If Not(Me.EOF) Then
  loc_176025A:             var_F8 = Me.Fields.Item("V_SNo").Value
  loc_176026D:             var_E8 = CVar(CLng((KeyCode + global_108))) 'Long
  loc_1760290:             var_FC = CStr(Me.FGrid1.TextMatrix))
  loc_17602B2:             If (1 = CVar(Val(var_FC))) Then
  loc_17602B5:               var_C4 = vbNullString
  loc_17602BF:               Set var_B4 = Me.FGridRef
  loc_17602D4:               var_E8 = CVar(CLng(var_AE)) 'Long
  loc_17602DC:               var_14C = CVar(CLng(5)) 'Long
  loc_176030F:               var_F8 = CVar(CStr(Me.Fields.Item("DocID").Value)) 'String
  loc_1760317:               Set var_100 = Me.FGridRef
  loc_176031D:               LateIdCallSt
  loc_1760339:               var_E8 = CVar(CLng(var_AE)) 'Long
  loc_1760341:               var_14C = CVar(CLng(6)) 'Long
  loc_1760374:               var_F8 = CVar(CStr(Me.Fields.Item("V_SNo").Value)) 'String
  loc_1760382:               LateIdCallSt
  loc_17603D4:               Proc_183_5_EF3390(var_F8, CVar(Me.Fields.Item("dr")), CVar(CLng(4)), CVar(CLng(var_AE)), Me.FGridRef, var_F8, CVar(CLng(4)))
  loc_17603EB:               LateIdCallSt
  loc_176043D:               Proc_183_5_EF3390(var_F8, CVar(Me.Fields.Item("cr")), CVar(CLng(3)), CVar(CLng(var_AE)), Me.FGridRef, CVar(CStr(var_F8)), CVar(CLng(var_AE)))
  loc_1760446:               var_110 = CVar(CStr(var_F8)) 'String
  loc_176044E:               Set var_100 = Me.FGridRef
  loc_1760454:               LateIdCallSt
  loc_1760470:               var_E8 = CVar(CLng(var_AE)) 'Long
  loc_1760478:               var_14C = CVar(CLng(7)) 'Long
  loc_17604AB:               var_F8 = CVar(CStr(Me.Fields.Item("subcode").Value)) 'String
  loc_17604B3:               Set var_100 = Me.FGridRef
  loc_17604B9:               LateIdCallSt
  loc_17604D5:               var_E8 = CVar(CLng(var_AE)) 'Long
  loc_17604DD:               var_14C = CVar(CLng(2)) 'Long
  loc_1760510:               var_F8 = CVar(CStr(Me.Fields.Item("AgRefNo").Value)) 'String
  loc_1760518:               Set var_100 = Me.FGridRef
  loc_176051E:               LateIdCallSt
  loc_176053A:               var_E8 = CVar(CLng(var_AE)) 'Long
  loc_1760542:               var_14C = CVar(CLng(1)) 'Long
  loc_1760575:               var_F8 = CVar(CStr(Me.Fields.Item("AgRefType").Value)) 'String
  loc_176057D:               Set var_100 = Me.FGridRef
  loc_1760583:               LateIdCallSt
  loc_176059F:               var_E8 = CVar(CLng(var_AE)) 'Long
  loc_17605A7:               var_14C = CVar(CLng(8)) 'Long
  loc_17605C9:               var_C8 = Me.Fields.Item("DueDate")
  loc_17605D1:               var_D8 = var_C8.Value
  loc_17605DA:               var_F8 = CVar(CStr(var_D8)) 'String
  loc_17605E2:               Set var_100 = Me.FGridRef
  loc_17605E8:               LateIdCallSt
  loc_1760600:             End If
  loc_1760606:             Me.MoveNext
  loc_1760611:             var_AE = (var_AE + 1)
  loc_1760614:             GoTo loc_1760220
  loc_1760617:           End If
  loc_1760617:         End If
  loc_1760617:         Call Proc_185_162_11F8598(var_AE, var_100, var_F8, var_14C, var_E8, var_100, var_F8)
  loc_1760628:         Me.FrameRef.Visible = True
  loc_1760640:         Me.FrameRef.ZOrder 0
  loc_176065B:         Me.FGridRef.Col = 1
  loc_1760667:         Set var_B4 = Me.FGridRef
  loc_1760678:         Exit Sub
  loc_1760679:       End If
  loc_176067C:     Else
  loc_176068D:       If ((CLng(Shift) = &H54) And (arg_14 = 4)) Then
  loc_1760698:         Call TxtDr_Validate(KeyCode)
  loc_17606AA:         Set var_B4 = Me.TxtDr
  loc_17606B0:         Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8, var_FC, 0, FGridRef.DispID_8001, var_14C)
  loc_17606B8:         var_E8 = var_C8.Text
  loc_17606D4:         If (CDbl(Val(var_FC)) <= CDbl(0)) Then
  loc_17606D7:           Exit Sub
  loc_17606D8:         End If
  loc_17606EC:         var_FC = "SELECT TDSCAT.* FROM TDSCAT LEFT JOIN SUBGROUP ON SUBGROUP.TDS_CATG=TDSCAT.CODE WHERE (TDSCAT.LOGSITE_CODE='" & MemVar_1F92078
  loc_1760703:         Set var_B4 = Me.TxtAcName
  loc_1760709:         Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8, var_114, var_FC & "' OR TDSCAT.LOGSITE_CODE='HO') AND SUBGROUP.SUBCODE='", var_D8, -1)
  loc_1760711:         var_100 = var_C8.Tag
  loc_176072A:         unk_5C26BA.Execute var_100 & var_114 & "'", var_F8, var_14C
  loc_1760735:         Set var_88 = var_100
  loc_1760765:         If (var_88.RecordCount > 0) Then
  loc_176078E:           Proc_183_3_E7D1C8(var_F8, CVar(var_88.Fields.Item("TDSPercentage")))
  loc_1760797:           var_AC = CSng(var_F8)
  loc_17607A7:         Else
  loc_17607AA:           var_AC = CDbl(0)
  loc_17607AD:         End If
  loc_17607BF:         Me.FrameTDS.Tag = CStr(KeyCode)
  loc_17607E1:         If (Me.RecordCount > 0) Then
  loc_17607ED:           Me.Sort = "V_SNo ASC"
  loc_17607F8:           Me.MoveFirst
  loc_1760808:           var_C4 = CVar(CLng((KeyCode + global_108))) 'Long
  loc_1760833:           var_11C = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1760859:           Me.Find "V_SNO=" & CStr(var_11C), 0, 1
  loc_1760881:           If (Me.EOF = 0) Then
  loc_176088A:             var_C4 = "TDSNAME"
  loc_17608BE:             Set var_100 = Me.TxtTDSCode
  loc_17608C4:             Call 0.Method_TxtDr_KeyDown0 (0, var_174, CStr(Me.Fields.Item(var_C4).Value), var_184, var_11C, 1)
  loc_17608CC:             var_174.Text = var_C4
  loc_176091C:             Set var_100 = Me.TxtTDSCode
  loc_1760922:             Call 0.Method_TxtDr_KeyDown0 (0, var_174, CStr(Me.Fields.Item("TDSCODE").Value), var_AC)
  loc_176092A:             var_174.Tag = var_AC
  loc_1760978:             Me.TxtTDSNarration.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("Narration")), var_E8)
  loc_17609C5:             Me.TxtONAMT.Text = CStr(Me.Fields.Item("ONAmt").Value)
  loc_1760A14:             Me.TxtTDS.Text = CStr(Me.Fields.Item("TDS").Value)
  loc_1760A63:             Me.TxtTDSAMT.Text = CStr(Me.Fields.Item("TDSAmt").Value)
  loc_1760A94:             var_C8 = Me.Fields.Item("TDSAmt")
  loc_1760AB2:             Set var_100 = Me.TxtDr
  loc_1760AB8:             Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_174)
  loc_1760AC0:             var_174.Tag = CStr(var_C8.Value)
  loc_1760AD9:           Else
  loc_1760AE5:             Set var_B4 = Me.TxtTDSCode
  loc_1760AEB:             Call 0.Method_TxtDr_KeyDown0 (0, var_C8)
  loc_1760AF3:             var_C8.Text = vbNullString
  loc_1760B0B:             Set var_B4 = Me.TxtTDSCode
  loc_1760B11:             Call 0.Method_TxtDr_KeyDown0 (0, var_C8)
  loc_1760B19:             var_C8.Tag = vbNullString
  loc_1760B32:             Me.TxtTDSNarration.Text = vbNullString
  loc_1760B47:             Set var_B4 = Me.TxtDr
  loc_1760B4D:             Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8)
  loc_1760B71:             Me.TxtONAMT.Text = CStr(Val(var_C8.Text))
  loc_1760B98:             Me.TxtTDS.Text = CStr(var_AC)
  loc_1760BAA:             Set var_C8 = Me.TxtTDS
  loc_1760BBD:             var_11C = Val(var_C8.Text)
  loc_1760BF1:             Me.TxtTDSAMT.Text = CStr(((Val(Me.TxtONAMT.Text) * var_11C) / CDbl(&H64)))
  loc_1760C08:           End If
  loc_1760C0B:         Else
  loc_1760C17:           Set var_B4 = Me.TxtTDSCode
  loc_1760C1D:           Call 0.Method_TxtDr_KeyDown0 (0, var_C8, vbNullString)
  loc_1760C3D:           Set var_B4 = Me.TxtTDSCode
  loc_1760C43:           Call 0.Method_TxtDr_KeyDown0 (0, var_C8)
  loc_1760C4B:           var_C8.Tag = vbNullString
  loc_1760C64:           Me.TxtTDSNarration.Text = vbNullString
  loc_1760C79:           Set var_B4 = Me.TxtDr
  loc_1760C7F:           Call 0.Method_TxtDr_KeyDown0 (KeyCode, var_C8)
  loc_1760C9D:           Set var_100 = Me.TxtONAMT
  loc_1760CA3:           var_100.Text = CStr(Val(var_11C))
  loc_1760CBD:           var_FC = CStr(var_AC)
  loc_1760CCA:           Me.TxtTDS.Text = var_FC
  loc_1760CE2:           Me.TxtTDSAMT.Text = vbNullString
  loc_1760CEA:         End If
  loc_1760CF6:         Me.FrameTDS.Visible = True
  loc_1760D0E:         Me.FrameTDS.ZOrder 0
  loc_1760D1F:         Set var_B4 = Me.TxtTDSCode
  loc_1760D25:         Call 0.Method_TxtDr_KeyDown0 (0, var_C8)
  loc_1760D2D:         var_C8.SetFocus
  loc_1760D45:         Set var_C8 = Me.TxtTDSCode
  loc_1760D4B:         Call 0.Method_TxtDr_KeyDown0 (0, var_100)
  loc_1760D71:         var_C4 = CVar((Me.FrameTDS.Left + var_100.Left)) 'Single
  loc_1760D80:         Me.DGTDSCODE.Left = 0
  loc_1760D9C:         Set var_C8 = Me.TxtTDSCode
  loc_1760DA2:         Call 0.Method_TxtDr_KeyDown0 (0, var_100)
  loc_1760DBB:         Set var_174 = Me.TxtTDSCode
  loc_1760DC1:         Call 0.Method_TxtDr_KeyDown0 (0, var_198)
  loc_1760DEF:         var_C4 = CVar((((Me.FrameTDS.Top + var_100.Top) + var_198.Height) + CDbl(&H32))) 'Single
  loc_1760DFE:         Me.DGTDSCODE.Top = 0
  loc_1760E12:         Exit Sub
  loc_1760E13:       End If
  loc_1760E13:     End If
  loc_1760E13:   End If
  loc_1760E13: End If
  loc_1760E18: Set var_88 = Nothing
  loc_1760E20: Set var_8C = Nothing
  loc_1760E23: Exit Sub
  loc_1760E24: ' Referenced from: 175F1E0
  loc_1760E2A: Call 0.Method_arg_50 (var_FC)
  loc_1760E3F: Proc_183_57_104AA84(var_FC, "TxtDr_KeyDown")
  loc_1760E4B: Exit Sub
End Sub

Private Sub TxtDr_KeyPress(KeyAscii As Integer) 'EABED0
  'Data Table: 5C26A4
  loc_EABE50: On Error Goto loc_EABEA7
  loc_EABE5C: If (global_132 = &HFF) Then
  loc_EABE5F:   Exit Sub
  loc_EABE60: End If
  loc_EABE6C: If (CInt(global_110) <= 2) Then
  loc_EABE79:   Set var_88 = Me.TxtDr
  loc_EABE7F:   Call 0.Method_TxtDr_KeyPress0 (KeyAscii)
  loc_EABE9A:   Proc_183_22_129AEBC(var_8C, arg_10, &HA)
  loc_EABEA6: End If
  loc_EABEA6: Exit Sub
  loc_EABEA7: ' Referenced from: EABE50
  loc_EABEAD: Call 0.Method_arg_50 (var_98, 2)
  loc_EABEC2: Proc_183_57_104AA84(var_98, "TxtDr_KeyPress")
  loc_EABECE: Exit Sub
End Sub

Private Sub TxtDr_KeyUp(KeyCode As Integer, Shift As Integer) 'F1A534
  'Data Table: 5C26A4
  Dim var_8C As TextBox
  Dim var_88 As Label
  loc_F1A444: On Error Goto loc_F1A509
  loc_F1A454: Set var_88 = Me.TxtDr
  loc_F1A45A: Call 0.Method_TxtDr_KeyUp0 (KeyCode, var_8C)
  loc_F1A47E: If (CDbl(Val(var_8C.Text)) <> CDbl(0)) Then
  loc_F1A48E:   Set var_88 = Me.TxtDr
  loc_F1A494:   Call 0.Method_TxtDr_KeyUp0 (KeyCode, var_8C)
  loc_F1A49C:   var_90 = var_8C.Text
  loc_F1A4AF:   var_A0 = " Paise"
  loc_F1A4D7:   Me.LblAmtRs.Caption = Proc_183_50_F73B30(Val(var_90), "Rs")
  loc_F1A4F3: Else
  loc_F1A500:   Me.LblAmtRs.Caption = vbNullString
  loc_F1A508: End If
  loc_F1A508: Exit Sub
  loc_F1A509: ' Referenced from: F1A444
  loc_F1A50F: Call 0.Method_arg_50 (var_90, var_A0)
  loc_F1A524: Proc_183_57_104AA84(var_90, "TxtDr_KeyUp")
  loc_F1A530: Exit Sub
End Sub

Private Sub TxtDr_LostFocus(Index As Integer) 'E9BE08
  'Data Table: 5C26A4
  Dim var_88 As Label
  loc_E9BD90: On Error Goto loc_E9BDE0
  loc_E9BDA0: Me.LblAmtRs.Caption = vbNullString
  loc_E9BDB1: If (global_132 = &HFF) Then
  loc_E9BDB4:   Exit Sub
  loc_E9BDB5: End If
  loc_E9BDBF: Set var_88 = Me.TxtDr
  loc_E9BDC5: Call 0.Method_TxtDr_LostFocus0 (Index)
  loc_E9BDD3: Call Proc_185_164_E264C0(var_8C)
  loc_E9BDDF: Exit Sub
  loc_E9BDE0: ' Referenced from: E9BD90
  loc_E9BDE6: Call 0.Method_arg_50 (var_94)
  loc_E9BDFB: Proc_183_57_104AA84(var_94, "Txtdr_LostFocus")
  loc_E9BE07: Exit Sub
End Sub

Private Sub TxtDr_Validate(Cancel As Boolean) '11D2D34
  'Data Table: 5C26A4
  Dim var_98 As Variant
  Dim var_A4 As TextBox
  Dim arg_10 As Integer
  Dim var_110 As Double
  Dim var_E8 As Variant
  Dim var_D8 As Variant
  Dim var_9C As String
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_90 As Double
  Dim var_124 As Long
  Dim var_A0 As MSFlexGrid
  Dim var_F8 As Variant
  loc_11D28D0: On Error Goto loc_11D2D0C
  loc_11D28DC: If (global_132 = &HFF) Then
  loc_11D28DF:   Exit Sub
  loc_11D28E0: End If
  loc_11D28EC: If (CInt(global_110) = 3) Then
  loc_11D28EF:   Exit Sub
  loc_11D28F0: End If
  loc_11D28FC: If (CInt(global_110) <= 2) Then
  loc_11D290C:   Set var_94 = Me.TxtDr
  loc_11D2912:   Call 0.Method_TxtDr_Validate0 (Cancel, var_98)
  loc_11D2939:   Set var_A0 = Me.TxtDr
  loc_11D293F:   Call 0.Method_TxtDr_Validate0 (Cancel, var_A4)
  loc_11D2947:   var_A6 = var_A4.Visible
  loc_11D2961:   If ((CDbl(Val(var_98.Text)) = CDbl(0)) And (var_A6 = &HFF)) Then
  loc_11D2966:     arg_10 = &HFF
  loc_11D2969:     Exit Sub
  loc_11D296A:   End If
  loc_11D2974:   Set var_94 = Me.TxtDr
  loc_11D297A:   Call 0.Method_TxtDr_Validate0 (Cancel, var_98)
  loc_11D2986:   Proc_183_6_EA3004(CVar(var_98))
  loc_11D29AD:   var_108 = Format(CVar(arg_10), "0.00")
  loc_11D29C3:   Set var_A0 = Me.TxtDr
  loc_11D29C9:   Call 0.Method_TxtDr_Validate0 (Cancel, var_A4, CStr(var_108))
  loc_11D29D1:   var_A4.Text = 1
  loc_11D29F3:   Call Proc_185_145_E9BED0(Cancel, var_A6)
  loc_11D29FC:   var_86 = var_A6 'Byte
  loc_11D2A3F:   If (Me.Fields.Item("OnLineAdjustment").Value = "Yes") Then
  loc_11D2A45:     var_90 = CDbl(0)
  loc_11D2A5F:     If (Me.RecordCount > 0) Then
  loc_11D2A6B:       Me.Sort = "VSNo ASC"
  loc_11D2A7B:       var_C8 = CVar(CLng((Cancel + global_108))) 'Long
  loc_11D2A80:       var_124 = 1
  loc_11D2ACC:       Me.Find "VSNO=" & CStr(Val(CStr(Me.FGrid1.TextMatrix)))), 0, 1
  loc_11D2AF4:       If (Me.EOF = 0) Then
  loc_11D2AF7:         ' Referenced from: 11D2C71
  loc_11D2B1C:         var_D8 = Me.Fields.Item("VSno").Value
  loc_11D2B2F:         var_E8 = CVar(CLng((Cancel + global_108))) 'Long
  loc_11D2B52:         var_9C = CStr(Me.FGrid1.TextMatrix))
  loc_11D2B74:         If (1 = CVar(Val(var_9C))) Then
  loc_11D2B9C:           var_D8 = Me.Fields.Item("subcode").Value
  loc_11D2BAF:           var_E8 = CVar(CLng((Cancel + global_108))) 'Long
  loc_11D2BEA:           If CBool(2 <> CVar(CStr(Me.FGrid1.TextMatrix)))) Then
  loc_11D2BF8:             Me.Delete
  loc_11D2C00:           Else
  loc_11D2C21:             var_98 = Me.Fields.Item("cr")
  loc_11D2C30:             Proc_183_3_E7D1C8(var_D8, CVar(var_98), CVar(var_90), 1, CVar(var_90), var_D8, CVar(var_90))
  loc_11D2C38:             var_F8 = (var_D8 + var_D8)
  loc_11D2C3D:             var_90 = CSng(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_11D2C4C:           End If
  loc_11D2C52:           Me.MoveNext
  loc_11D2C6B:           If (Me.EOF = &HFF) Then
  loc_11D2C6E:             GoTo loc_11D2C74
  loc_11D2C71:           End If
  loc_11D2C71:           GoTo loc_11D2AF7
  loc_11D2C74:           ' Referenced from: 11D2C6E
  loc_11D2C74:         End If
  loc_11D2C74:       End If
  loc_11D2C74:     End If
  loc_11D2C81:     Set var_94 = Me.TxtDr
  loc_11D2C87:     Call 0.Method_TxtDr_Validate0 (Cancel, var_98, var_9C, var_90, var_14C)
  loc_11D2C8F:     var_110 = var_98.Text
  loc_11D2C9C:     var_110 = Val(var_9C)
  loc_11D2CB1:     If (var_90 > CDbl(var_110)) Then
  loc_11D2CC2:       var_C8 = "CanX't Adjust More Amount"
  loc_11D2CCD:       MsgBox(var_C8, 0, var_D8, CVar(CStr(Me.FGrid1.TextMatrix))), var_108)
  loc_11D2CDF:       arg_10 = &HFF
  loc_11D2CE2:     End If
  loc_11D2CE2:   End If
  loc_11D2CE2: End If
  loc_11D2CEE: Me.LblHelp.Visible = False
  loc_11D2D03: Me.LblAmtRs.Caption = vbNullString
  loc_11D2D0B: Exit Sub
  loc_11D2D0C: ' Referenced from: 11D28D0
  loc_11D2D12: Call 0.Method_arg_50 (var_9C, arg_10, var_110, var_124)
  loc_11D2D27: Proc_183_57_104AA84(var_9C, "Txtdr_Validate", var_C8)
  loc_11D2D33: Exit Sub
End Sub

Private Sub TxtNar_GotFocus(Index As Integer) 'E8CC84
  'Data Table: 5C26A4
  loc_E8CC1C: On Error Goto loc_E8CC5C
  loc_E8CC28: If (global_132 = &HFF) Then
  loc_E8CC2B:   Exit Sub
  loc_E8CC2C: End If
  loc_E8CC36: Set var_88 = Me.TxtNar
  loc_E8CC3C: Call 0.Method_TxtNar_GotFocus0 (Index)
  loc_E8CC4A: Call Proc_185_163_E215F4(var_8C)
  loc_E8CC56: Call Proc_185_169_F64464(var_8C)
  loc_E8CC5B: Exit Sub
  loc_E8CC5C: ' Referenced from: E8CC1C
  loc_E8CC62: Call 0.Method_arg_50 (var_94)
  loc_E8CC6A: var_9C = "TxtNar_GotFocus"
  loc_E8CC77: Proc_183_57_104AA84(var_94)
  loc_E8CC83: Exit Sub
End Sub

Private Sub TxtNar_KeyDown(KeyCode As Integer, Shift As Integer) 'F5D79C
  'Data Table: 5C26A4
  Dim var_8C As TextBox
  Dim var_A0 As String
  Dim var_9C As TextBox
  loc_F5D680: On Error Goto loc_F5D772
  loc_F5D68C: If (global_132 = &HFF) Then
  loc_F5D68F:   Exit Sub
  loc_F5D690: End If
  loc_F5D69A: If (CLng(Shift) = &H1B) Then
  loc_F5D69D:   Call Proc_185_169_F64464()
  loc_F5D6A2: End If
  loc_F5D6AE: If (CInt(global_110) <= 2) Then
  loc_F5D6BB:   If (CLng(Shift) = &H2D) Then
  loc_F5D6CB:     Set var_88 = Me.TxtNar
  loc_F5D6D1:     Call 0.Method_TxtNar_KeyDown0 (KeyCode, var_8C)
  loc_F5D6E4:     Call Proc_185_165_E98870(var_90)
  loc_F5D6FA:     Set var_98 = Me.TxtNar
  loc_F5D700:     Call 0.Method_TxtNar_KeyDown0 (KeyCode, var_9C)
  loc_F5D708:     var_9C.Text = var_8C.Text & var_90
  loc_F5D72E:     Set var_88 = Me.TxtNar
  loc_F5D734:     Call 0.Method_TxtNar_KeyDown0 (KeyCode, var_8C)
  loc_F5D73C:     var_90 = var_8C.Text
  loc_F5D74F:     Set var_98 = Me.TxtNar
  loc_F5D755:     Call 0.Method_TxtNar_KeyDown0 (KeyCode, var_9C)
  loc_F5D75D:     var_9C.SelStart = Len(var_90)
  loc_F5D770:     Exit Sub
  loc_F5D771:   End If
  loc_F5D771: End If
  loc_F5D771: Exit Sub
  loc_F5D772: ' Referenced from: F5D680
  loc_F5D778: Call 0.Method_arg_50 (var_90)
  loc_F5D780: var_A0 = "TxtNar_KeyDown"
  loc_F5D78D: Proc_183_57_104AA84(var_90)
  loc_F5D799: Exit Sub
End Sub

Private Sub TxtNar_LostFocus(Index As Integer) 'EA9568
  'Data Table: 5C26A4
  loc_EA94E8: On Error Goto loc_EA9540
  loc_EA94F4: If (global_132 = &HFF) Then
  loc_EA94F7:   Exit Sub
  loc_EA94F8: End If
  loc_EA9502: Set var_88 = Me.TxtNar
  loc_EA9508: Call 0.Method_TxtNar_LostFocus0 (Index)
  loc_EA9516: Call Proc_185_164_E264C0(var_8C)
  loc_EA952E: If (CInt(global_110) = 3) Then
  loc_EA9531:   Exit Sub
  loc_EA9532: End If
  loc_EA953A: Call TxtNar_Validate(Index)
  loc_EA953F: Exit Sub
  loc_EA9540: ' Referenced from: EA94E8
  loc_EA9546: Call 0.Method_arg_50 (var_98, 0)
  loc_EA955B: Proc_183_57_104AA84(var_98, "TxtNar_LostFocus")
  loc_EA9567: Exit Sub
End Sub

Private Sub TxtNar_Validate(Cancel As Boolean) 'E860AC
  'Data Table: 5C26A4
  loc_E86040: On Error Goto loc_E86083
  loc_E8604C: If (global_132 = &HFF) Then
  loc_E8604F:   Exit Sub
  loc_E86050: End If
  loc_E8605C: If (CInt(global_110) = 3) Then
  loc_E8605F:   Exit Sub
  loc_E86060: End If
  loc_E8606C: If (CInt(global_110) <= 2) Then
  loc_E86075:   Call Proc_185_145_E9BED0(Cancel)
  loc_E8607E:   var_86 = var_88 'Byte
  loc_E86082: End If
  loc_E86082: Exit Sub
  loc_E86083: ' Referenced from: E86040
  loc_E86089: Call 0.Method_arg_50 (var_8C)
  loc_E8609E: Proc_183_57_104AA84(var_8C, "TxtNar_Validate")
  loc_E860AA: Exit Sub
End Sub

Private Sub LblShort_UnknownEvent_9 'EE0D24
  'Data Table: 5C26A4
  loc_EE0C6C: On Error Goto loc_EE0CFA
  loc_EE0C7B: If (CInt(global_110) = 3) Then
  loc_EE0C7E:   Exit Sub
  loc_EE0C7F: End If
  loc_EE0C86: For var_8A = 1 To 4: var_86 = var_8A 'Integer
  loc_EE0C9F:   Set var_90 = Me.LblShort
  loc_EE0CA5:   Call 0.Method_LblShort_UnknownEvent_90 (var_86, var_94)
  loc_EE0CAD:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_2E(&HFFFF)
  loc_EE0CBC: Next var_8A 'Integer
  loc_EE0CD4: Set var_90 = Me.LblShort
  loc_EE0CDA: Call 0.Method_LblShort_UnknownEvent_90 (Cancel, var_94)
  loc_EE0CE2: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_2E(&HFFFF00)
  loc_EE0CF4: Call Proc_185_168_12E4960(Cancel)
  loc_EE0CF9: Exit Sub
  loc_EE0CFA: ' Referenced from: EE0C6C
  loc_EE0D00: Call 0.Method_arg_50 (var_B8)
  loc_EE0D15: Proc_183_57_104AA84(var_B8, "LblShort_Click")
  loc_EE0D21: Exit Sub
End Sub

Private Sub DGRefNo_UnknownEvent_9 'F9BCF4
  'Data Table: 5C26A4
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_BC As String
  Dim var_A8 As TextBox
  loc_F9BB88: On Error Goto loc_F9BCCA
  loc_F9BBA2: If (Me.RecordCount > 0) Then
  loc_F9BBC2:   var_A0 = Me.Fields.Item("RefNo")
  loc_F9BBD3:   var_BC = CStr(var_A0.Value)
  loc_F9BBDF:   Set var_A4 = Me.TxtGrid
  loc_F9BBE5:   Call 0.Method_DGRefNo_UnknownEvent_90 (0, var_A8)
  loc_F9BBED:   var_A8.Text = var_BC
  loc_F9BC03: End If
  loc_F9BC03: var_9C = 0
  loc_F9BC0D: Set var_8C = Me.FGridRef
  loc_F9BC27: Set var_8C = Me.TxtGrid
  loc_F9BC2D: Call 0.Method_DGRefNo_UnknownEvent_90 (0, var_A0)
  loc_F9BC35: var_A0.SetFocus
  loc_F9BC50: Me.DGRefNo.Visible = False
  loc_F9BC60: Call Proc_185_154_14B6C6C(0, var_D0)
  loc_F9BC6B: If (var_D0 = &HFF) Then
  loc_F9BCB9:   Proc_183_25_11BD654(Me.FGridRef, Me.TxtGrid, 0, CInt(&HD), global_196, 8)
  loc_F9BCC9: End If
  loc_F9BCC9: Exit Sub
  loc_F9BCCA: ' Referenced from: F9BB88
  loc_F9BCD0: Call 0.Method_arg_50 (var_BC, 0, 0)
  loc_F9BCE5: Proc_183_57_104AA84(var_BC, "DGRefNo_Click", 0)
  loc_F9BCF1: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5F27C
  'Data Table: 5C26A4
  Dim var_88 As Variant
  Dim var_A8 As TextBox
  Dim arg_2C9C As String
  loc_F5F160: On Error Goto loc_F5F251
  loc_F5F181: var_A0 = Me.ListView.SelectedItem.Text
  loc_F5F192: Set var_A4 = Me.TxtGrid
  loc_F5F198: Call 0.Method_ListView_UnknownEvent_130 (0, var_A8)
  loc_F5F1A0: var_A8.Text = var_A0
  loc_F5F1C2: Me.FrmList.Visible = False
  loc_F5F1D2: Call Proc_185_154_14B6C6C(0)
  loc_F5F1DD: If (var_AC = &HFF) Then
  loc_F5F22B:   Proc_183_25_11BD654(Me.FGridRef, Me.TxtGrid, 0, CInt(&HD), global_196)
  loc_F5F23B: End If
  loc_F5F23F: Set var_88 = Me.FGridRef
  loc_F5F250: Exit Sub
  loc_F5F251: ' Referenced from: F5F160
  loc_F5F257: Call 0.Method_arg_50 (var_A0, FGridRef.DispID_8001, 8, 0)
  loc_F5F26C: Proc_183_57_104AA84(var_A0, "ListView_Click", 0)
  loc_F5F278: Exit Sub
  loc_F5F27A: arg_2C9C = CStr(0)
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12A0194
  'Data Table: 5C26A4
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_BC As Variant
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim var_108 As TextBox
  Dim var_124 As String
  Dim var_128 As String
  Dim unk_5C26BA As Connection15
  Dim Me As Recordset15
  loc_129FBA8: If (Index = 0) Then
  loc_129FBBE:   Me.FGridRef.CellBackColor = CVar(CLng("16777215"))
  loc_129FBD9:   var_98 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_129FBE2:   Set var_C0 = Me.FGridRef
  loc_129FBE8:   var_D0 = var_C0.Col
  loc_129FC0B:   var_110 = CStr(Me.FGridRef.TextMatrix))
  loc_129FC18:   Set var_108 = Me.TxtGrid
  loc_129FC1E:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, var_110)
  loc_129FC26:   var_10C.Tag = CVar(CLng(var_D0))
  loc_129FC57:   var_114 = CLng(Me.FGridRef.Col)
  loc_129FC67:   If (var_114 = CLng(1)) Then
  loc_129FC79:     Set var_AC = Me.TxtGrid
  loc_129FC7F:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, &HA)
  loc_129FC87:     var_C0.MaxLength = var_114
  loc_129FCA0:     ReDim var_118(0 To 3)
  loc_129FCAA:     var_98 = "Advance"
  loc_129FCB7:     var_118(0) = var_98
  loc_129FCC6:     var_118(1) = "Ag.Ref."
  loc_129FCD5:     var_118(2) = "New Ref"
  loc_129FCE4:     var_118(3) = "On Account"
  loc_129FD06:     Set var_108 = Me.ListView
  loc_129FD21:     Set var_C0 = Me.TxtGrid
  loc_129FD3B:     Set global_164 = Proc_183_37_EFE3E8(var_108, var_C0, Index, Array(var_118))
  loc_129FD59:     Set var_AC = Me.TxtGrid
  loc_129FD5F:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, 4)
  loc_129FD67:     global_148 = var_C0.Text
  loc_129FD79:     Set var_F4 = Me.TxtGrid
  loc_129FD7F:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_129FD87:     var_108.Tag = var_98
  loc_129FD9D:   Else
  loc_129FDA4:     If (var_114 = CLng(2)) Then
  loc_129FDB6:       Set var_AC = Me.TxtGrid
  loc_129FDBC:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_129FDC4:       var_C0.MaxLength = &H14
  loc_129FDF3:       var_98 = CVar(CLng((Val(Me.FrameRef.Tag) + CDbl(global_108)))) 'Long
  loc_129FDF8:       var_E0 = 5
  loc_129FE34:       If (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) > CDbl(0)) Then
  loc_129FE5A:         var_98 = CVar(CLng((Val(Me.FrameRef.Tag) + CDbl(global_108)))) 'Long
  loc_129FE5F:         var_E0 = 2
  loc_129FE96:         var_124 = "SELECT AgRefNo AS RefNo,MIN(V_dATE) as VDate,RTRIM(CAST(ABS(ISNULL(SUM(Cr),0)-ISNULL(SUM(Dr),0)) AS VARCHaR(11)))+' '+CASE WHEN ISNULL(SUM(Cr),0)-ISNULL(SUM(Dr),0)>0 THEN'Cr' WHEN ISNULL(SUM(Cr),0)-ISNULL(SUM(Dr),0)<0 THEN 'Dr' ELSE '' END AS Balance FROM ledgerRef WHERE AGREFTYPE IN ('Advance','New Ref','Ag.Ref.') AND SUBCODE='" & CStr(Me.FGrid1.TextMatrix))
  loc_129FE9D:         var_128 = var_124 & "' GROUP BY SubCode,AgRefNo HAVING ISNULL(SUM(Cr),0)-ISNULL(SUM(Dr),0)>0 ORDER BY MIN(V_dATE),AGREFNO"
  loc_129FEA6:         unk_5C26BA.Execute var_128, var_D0, -1
  loc_129FEB7:         Set global_84 = var_F4
  loc_129FEDB:       Else
  loc_129FEFE:         var_98 = CVar(CLng((Val(Me.FrameRef.Tag) + CDbl(global_108)))) 'Long
  loc_129FF03:         var_E0 = 2
  loc_129FF10:         Set var_C0 = Me.FGrid1
  loc_129FF16:         var_BC = var_C0.TextMatrix)
  loc_129FF3A:         var_124 = "SELECT AgRefNo AS RefNo,MIN(V_dATE) as VDate,RTRIM(CAST(ABS(ISNULL(SUM(Cr),0)-ISNULL(SUM(Dr),0)) AS VARCHAR(11)))+' '+CASE WHEN ISNULL(SUM(Cr),0)-ISNULL(SUM(Dr),0)>0 THEN 'Cr' WHEN ISNULL(SUM(Cr),0)-ISNULL(SUM(Dr),0)<0 THEN 'Dr' ELSE ''  END AS Balance FROM ledgerRef WHERE AGREFTYPE IN ('Advance','New Ref','Ag.Ref.') AND SUBCODE='" & CStr(var_BC)
  loc_129FF41:         var_128 = var_124 & "' GROUP BY SubCode,AgRefNo HAVING ISNULL(SUM(Cr),0)-ISNULL(SUM(Dr),0)<0 ORDER BY MIN(V_dATE),AGREFNO"
  loc_129FF4A:         unk_5C26BA.Execute var_128, var_D0, -1
  loc_129FF5B:         Set global_84 = var_F4
  loc_129FF7C:       End If
  loc_129FF85:       CVarUnk
  loc_129FF8A:       VerifyVarObj
  loc_129FF90:       Set var_AC = Me.DGRefNo
  loc_129FF96:       LateIdStAd
  loc_129FFB7:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_13C, Me.TxtGrid, global_84, var_F4, var_BC)
  loc_129FFBF:       var_E0 = var_C0.Left
  loc_129FFC7:       var_98 = CVar(var_13C) 'Single
  loc_129FFD6:       Me.DGRefNo.Left = var_98
  loc_129FFF7:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_140, var_98, Me.TxtGrid)
  loc_129FFFF:       var_BC = var_108.Height
  loc_12A0011:       Set var_AC = Me.TxtGrid
  loc_12A0017:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_13C)
  loc_12A001F:       var_E0 = var_C0.Top
  loc_12A002B:       var_98 = CVar((var_13C + var_140)) 'Single
  loc_12A003A:       Me.DGRefNo.Top = var_98
  loc_12A005F:       Me.DGRefNo.Tag = CVar(CStr(Index))
  loc_12A00AB:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12A00AE:         Exit Sub
  loc_12A00AF:       End If
  loc_12A00B2:     Else
  loc_12A00B9:       If Not (var_114 = CLng(3)) Then
  loc_12A00C3:         If (var_114 = CLng(4)) Then
  loc_12A00C6:         End If
  loc_12A00D5:         Set var_AC = Me.TxtGrid
  loc_12A00DB:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, 0)
  loc_12A00E3:         var_C0.MaxLength = var_98
  loc_12A00F8:         If (global_196 = 0) Then
  loc_12A0103:           var_110 = "{Home}+{End}"
  loc_12A0109:           Proc_303_0_FB9B68(Me.FrameRef.Tag, 0)
  loc_12A0111:         End If
  loc_12A0114:       Else
  loc_12A011B:         If (var_114 = CLng(8)) Then
  loc_12A012D:           Set var_AC = Me.TxtGrid
  loc_12A0133:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_12A013B:           var_C0.MaxLength = 0
  loc_12A0150:           If (global_196 = 0) Then
  loc_12A015B:             var_110 = "{Home}+{End}"
  loc_12A0161:             Proc_303_0_FB9B68(Me.FrameRef.Tag, 0)
  loc_12A0169:           End If
  loc_12A0169:         End If
  loc_12A0169:       End If
  loc_12A0169:     End If
  loc_12A0169:   End If
  loc_12A0169: End If
  loc_12A0169: Exit Sub
  loc_12A0170: Call 0.Method_arg_50 (Me.FrameRef.Tag)
  loc_12A0185: Proc_183_57_104AA84(Me.FrameRef.Tag, "TxtGlb_GotFocus")
  loc_12A0191: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '156F5BC
  'Data Table: 5C26A4
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_8C As Variant
  Dim var_BC As Variant
  Dim var_D0 As Long
  Dim var_E0 As TextBox
  Dim var_EC As TextBox
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_94 As String
  Dim var_98 As MSHFlexGrid
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_1A0 As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_1B4 As Variant
  Dim var_170 As Variant
  Dim var_23C As Double
  loc_156E51C: On Error Goto loc_156F592
  loc_156E52B: If (KeyCode = 0) Then
  loc_156E538:   If (CLng(Shift) = &H1B) Then
  loc_156E548:     Set var_8C = Me.TxtGrid
  loc_156E54E:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_156E568:     Set var_98 = Me.TxtGrid
  loc_156E56E:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_156E576:     var_9C.Text = var_90.Tag
  loc_156E592:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_156E59B:     Set var_8C = Me.FGridRef
  loc_156E5B8:     Set var_8C = Me.TxtGrid
  loc_156E5BE:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_156E5C6:     var_90.Visible = FGridRef.DispID_8001
  loc_156E5EE:     If (CBool(Me.DGRefNo.Visible) = &HFF) Then
  loc_156E600:       Me.DGRefNo.Visible = False
  loc_156E608:     End If
  loc_156E608:     Exit Sub
  loc_156E609:   End If
  loc_156E62C:   If (CLng(Me.FGridRef.Col) = CLng(1)) Then
  loc_156E651:     Set var_8C = Me.TxtGrid
  loc_156E657:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_D4)
  loc_156E65F:     var_D0 = var_90.Left
  loc_156E671:     Set var_98 = Me.TxtGrid
  loc_156E677:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D8)
  loc_156E691:     Set var_DC = Me.TxtGrid
  loc_156E697:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E0)
  loc_156E6B1:     Set var_E8 = Me.TxtGrid
  loc_156E6B7:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_EC)
  loc_156E6BF:     var_F0 = var_EC.Width
  loc_156E70B:     Proc_183_36_114886C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, var_9C.Top)
  loc_156E739:     If (CLng(Shift) = &HD) Then
  loc_156E742:       Call Proc_185_154_14B6C6C(KeyCode, var_FE, CInt(var_D4), CInt(((var_D8 + var_E0.Height) + CDbl(&HF))))
  loc_156E74D:       If (var_FE = &HFF) Then
  loc_156E793:         Proc_183_25_11BD654(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8)
  loc_156E7A3:       End If
  loc_156E7A3:     End If
  loc_156E7A6:   Else
  loc_156E7AD:     If (var_D0 = CLng(2)) Then
  loc_156E7FE:       If (CStr(Me.FGridRef.TextMatrix)) = "Ag.Ref.") Then
  loc_156E837:         Proc_183_34_1305540(Me.DGRefNo, Me.TxtGrid, KeyCode, global_84, Shift, &HFF, 0, CVar(CLng(1)))
  loc_156E851:         If (CLng(Shift) = &HD) Then
  loc_156E85A:           Call Proc_185_154_14B6C6C(KeyCode, var_FE, CVar(CLng(Me.FGridRef.Row)), 0, 0)
  loc_156E865:           If (var_FE = &HFF) Then
  loc_156E8AB:             Proc_183_25_11BD654(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8, 0)
  loc_156E8BB:           End If
  loc_156E8BB:         End If
  loc_156E8BE:       Else
  loc_156E8FE:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_196 = &HFF))) Then
  loc_156E907:           Call Proc_185_154_14B6C6C(KeyCode, var_FE, 0, 0)
  loc_156E912:           If (var_FE = &HFF) Then
  loc_156E958:             Proc_183_25_11BD654(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8, 0)
  loc_156E968:           End If
  loc_156E968:         End If
  loc_156E968:       End If
  loc_156E96B:     Else
  loc_156E972:       If (var_D0 = CLng(4)) Then
  loc_156E9B5:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_196 = &HFF))) Then
  loc_156E9BE:           Call Proc_185_154_14B6C6C(KeyCode, var_FE, 0, 0)
  loc_156E9C9:           If (var_FE = &HFF) Then
  loc_156E9DF:             var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156E9F7:             var_120 = CVar(CLng(Me.FGridRef.Col)) 'Long
  loc_156EA33:             If (CDbl(Val(CStr(Me.FGridRef.TextMatrix)))) > CDbl(0)) Then
  loc_156EA79:               Proc_183_25_11BD654(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8, 0, 8)
  loc_156EA8C:             Else
  loc_156EACF:               Proc_183_25_11BD654(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8, 0, 8)
  loc_156EADF:             End If
  loc_156EADF:           End If
  loc_156EADF:         End If
  loc_156EAE2:       Else
  loc_156EAE9:         If (var_D0 = CLng(3)) Then
  loc_156EB2C:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_196 = &HFF))) Then
  loc_156EB35:             Call Proc_185_154_14B6C6C(KeyCode, var_FE, 0, 0, var_120)
  loc_156EB40:             If (var_FE = &HFF) Then
  loc_156EB86:               Proc_183_25_11BD654(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8, 0)
  loc_156EBA9:               var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156EBAE:               var_120 = 0
  loc_156EBB7:               var_160 = vbNullString
  loc_156EBC1:               Set var_90 = Me.FGridRef
  loc_156EBC7:               LateIdCallSt
  loc_156EBD9:             End If
  loc_156EBD9:           End If
  loc_156EBDC:         Else
  loc_156EBE3:           If (var_D0 = CLng(8)) Then
  loc_156EC26:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_196 = &HFF))) Then
  loc_156EC2F:               Call Proc_185_154_14B6C6C(KeyCode, var_FE, var_90, var_160, var_120, var_BC, 8)
  loc_156EC3A:               If (var_FE = &HFF) Then
  loc_156EC50:                 var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156EC58:                 var_120 = CVar(CLng(4)) 'Long
  loc_156EC72:                 var_94 = CStr(Me.FGridRef.TextMatrix))
  loc_156EC92:                 var_160 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156ECDF:                 If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGridRef.TextMatrix)))) = CDbl(0))) Then
  loc_156ED25:                   If ((Me.LblRefAdjDrCrBal.Caption = "Cr") Or (Me.LblRefAdjDrCrBal.Caption = "To")) Then
  loc_156ED42:                     var_CC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156ED4A:                     var_130 = CVar(CLng(3)) 'Long
  loc_156ED77:                     var_1B4 = CVar(CStr(Format(CVar(Me.LblRefAdjBal), "0.00"))) 'String
  loc_156ED7F:                     Set var_90 = Me.FGridRef
  loc_156ED85:                     LateIdCallSt
  loc_156EDA6:                   Else
  loc_156EDE9:                     If ((Me.LblRefAdjDrCrBal.Caption = "Dr") Or (Me.LblRefAdjDrCrBal.Caption = "By")) Then
  loc_156EE06:                       var_CC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156EE0E:                       var_130 = CVar(CLng(4)) 'Long
  loc_156EE3B:                       var_1B4 = CVar(CStr(Format(CVar(Me.LblRefAdjBal), "0.00"))) 'String
  loc_156EE43:                       Set var_90 = Me.FGridRef
  loc_156EE49:                       LateIdCallSt
  loc_156EE67:                     End If
  loc_156EE67:                   End If
  loc_156EE67:                 End If
  loc_156EE7A:                 var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156EE82:                 var_120 = CVar(CLng(2)) 'Long
  loc_156EE9C:                 var_94 = CStr(Me.FGridRef.TextMatrix))
  loc_156EEAE:                 var_150 = Me.FGridRef.Row
  loc_156EEB7:                 var_160 = CVar(CLng(var_150)) 'Long
  loc_156EECE:                 var_1A0 = Me.FGridRef.TextMatrix)
  loc_156EEFF:                 If (CVar(CLng(1)) And (CStr(var_1A0) <> "On Account")) Then
  loc_156EF45:                   Proc_183_25_11BD654(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8, 0, 2)
  loc_156EF55:                   Exit Sub
  loc_156EF56:                 End If
  loc_156EF63:                 var_94 = Me.LblRefAdjBal.Caption
  loc_156EF7B:                 If (CDbl(Val(var_94)) = CDbl(0)) Then
  loc_156EFB5:                   If (MsgBox("Save Entries", &H24, "Adjustment", var_150, var_1A0) = 6) Then
  loc_156EFB8:                     Call Proc_185_155_139B2F4(0, var_160, (var_94 = vbNullString), var_120)
  loc_156EFBD:                     Exit Sub
  loc_156EFC1:                   Else
  loc_156EFC5:                     Set var_8C = Me.FGridRef
  loc_156EFD6:                   End If
  loc_156F019:                   Proc_183_25_11BD654(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8, 0)
  loc_156F03C:                   var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156F041:                   var_120 = 0
  loc_156F04A:                   var_160 = vbNullString
  loc_156F054:                   Set var_90 = Me.FGridRef
  loc_156F05A:                   LateIdCallSt
  loc_156F06F:                 Else
  loc_156F0B2:                   Proc_183_25_11BD654(Me.FGridRef, Me.TxtGrid, KeyCode, Shift, global_196, 8, 0, 0)
  loc_156F0D5:                   var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156F0DA:                   var_120 = 0
  loc_156F0E3:                   var_160 = vbNullString
  loc_156F0ED:                   Set var_90 = Me.FGridRef
  loc_156F0F3:                   LateIdCallSt
  loc_156F118:                   var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156F120:                   var_120 = CVar(CLng(1)) 'Long
  loc_156F125:                   var_160 = "On Account"
  loc_156F12F:                   Set var_90 = Me.FGridRef
  loc_156F135:                   LateIdCallSt
  loc_156F15A:                   var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156F162:                   var_120 = CVar(CLng(2)) 'Long
  loc_156F167:                   var_160 = vbNullString
  loc_156F171:                   Set var_90 = Me.FGridRef
  loc_156F177:                   LateIdCallSt
  loc_156F19C:                   var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156F1A4:                   var_120 = CVar(CLng(8)) 'Long
  loc_156F1AD:                   Set var_90 = Me.FGridRef
  loc_156F1E6:                   If (Trim(CVar(CStr(var_90.TextMatrix)))) = vbNullString) Then
  loc_156F215:                     Set var_8C = Me.VchDt
  loc_156F21B:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_94, CVar(CLng(8)), CVar(CLng(Me.FGridRef.Row)), CVar(CLng(8)), CVar(CLng(Me.FGridRef.Row)))
  loc_156F223:                     var_90 = var_90.Text
  loc_156F22B:                     var_140 = CVar(var_94) 'String
  loc_156F233:                     Set var_9C = Me.FGridRef
  loc_156F239:                     LateIdCallSt
  loc_156F253:                   End If
  loc_156F296:                   If ((Me.LblRefAdjDrCrBal.Caption = "Dr") Or (Me.LblRefAdjDrCrBal.Caption = "By")) Then
  loc_156F2AC:                     var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156F2B4:                     var_120 = CVar(CLng(3)) 'Long
  loc_156F2D4:                     var_1A0 = Trim(CVar(CStr(Me.FGridRef.TextMatrix))))
  loc_156F2DC:                     var_160 = vbNullString
  loc_156F2F9:                     var_170 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156F357:                     If CBool(CVar(CLng(4)) And (Trim(CVar(CStr(Me.FGridRef.TextMatrix)))) = vbNullString)) Then
  loc_156F38A:                       var_120 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156F392:                       var_160 = CVar(CLng(4)) 'Long
  loc_156F3BF:                       var_1B4 = CVar(CStr(Format(CVar(Val(Me.LblRefAdjBal.Caption)), "0.00"))) 'String
  loc_156F3C7:                       Set var_98 = Me.FGridRef
  loc_156F3CD:                       LateIdCallSt
  loc_156F3EE:                     End If
  loc_156F3F1:                   Else
  loc_156F434:                     If ((Me.LblRefAdjDrCrBal.Caption = "Cr") Or (Me.LblRefAdjDrCrBal.Caption = "To")) Then
  loc_156F44A:                       var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156F452:                       var_120 = CVar(CLng(3)) 'Long
  loc_156F472:                       var_1A0 = Trim(CVar(CStr(Me.FGridRef.TextMatrix))))
  loc_156F47A:                       var_160 = vbNullString
  loc_156F497:                       var_170 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_156F4F5:                       If CBool(CVar(CLng(4)) And (Trim(CVar(CStr(Me.FGridRef.TextMatrix)))) = vbNullString)) Then
  loc_156F505:                         var_94 = Me.LblRefAdjBal.Caption
  loc_156F512:                         var_23C = Val(var_94)
  loc_156F51F:                         var_1A0 = Me.FGridRef.Row
  loc_156F528:                         var_120 = CVar(CLng(var_1A0)) 'Long
  loc_156F530:                         var_160 = CVar(CLng(3)) 'Long
  loc_156F55D:                         var_1B4 = CVar(CStr(Format(CVar(var_23C), "0.00"))) 'String
  loc_156F565:                         Set var_98 = Me.FGridRef
  loc_156F56B:                         LateIdCallSt
  loc_156F58C:                       End If
  loc_156F58C:                     End If
  loc_156F58C:                   End If
  loc_156F58C:                   Call Proc_185_162_11F8598(var_98, var_1B4, 1, 1, var_160, var_120, var_23C, var_170)
  loc_156F591:                 End If
  loc_156F591:               End If
  loc_156F591:             End If
  loc_156F591:           End If
  loc_156F591:         End If
  loc_156F591:       End If
  loc_156F591:     End If
  loc_156F591:   End If
  loc_156F591: End If
  loc_156F591: Exit Sub
  loc_156F592: ' Referenced from: 156E51C
  loc_156F598: Call 0.Method_arg_50 (var_94, (var_1A0 = var_160), var_120, var_BC)
  loc_156F5AD: Proc_183_57_104AA84(var_94, "TxtGrid_KeyDown", var_98)
  loc_156F5B9: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F85500
  'Data Table: 5C26A4
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E0 As MSHFlexGrid
  Dim var_F4 As String
  loc_F853B4: On Error Goto loc_F854D6
  loc_F853BA: Proc_183_46_E070C0(arg_10)
  loc_F853C2: var_86 = KeyAscii
  loc_F853CB: If (var_86 = 0) Then
  loc_F853CE:   GoTo loc_F854D5
  loc_F853D1: End If
  loc_F853D9: If (var_86 = CInt(2)) Then
  loc_F853EF:   var_AC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_F853F7:   var_CC = CVar(CLng(1)) 'Long
  loc_F8542A:   If (CStr(Me.FGridRef.TextMatrix)) = "Ag.Ref.") Then
  loc_F85449:     If (CBool(Me.DGRefNo.Visible) = &HFF) Then
  loc_F85450:       Set var_E0 = Me.TxtGrid
  loc_F8545B:       var_F4 = "RefNo"
  loc_F85476:       Proc_183_41_1459C78(var_E0, KeyAscii, global_84, arg_10, var_F4)
  loc_F85485:     End If
  loc_F85485:   End If
  loc_F85488: Else
  loc_F85490:   If Not (var_86 = CInt(3)) Then
  loc_F8549B:     If (var_86 = CInt(4)) Then
  loc_F8549E:     End If
  loc_F854A8:     Set var_8C = Me.TxtGrid
  loc_F854AE:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_E0, 0)
  loc_F854C9:     Proc_183_22_129AEBC(var_E0, arg_10, 8, 2)
  loc_F854D5:   End If
  loc_F854D5:   ' Referenced from: F853CE
  loc_F854D5: End If
  loc_F854D5: Exit Sub
  loc_F854D6: ' Referenced from: F853B4
  loc_F854DC: Call 0.Method_arg_50 (var_F4, var_CC)
  loc_F854F1: Proc_183_57_104AA84(var_F4, "TxtGrid_KeyPress")
  loc_F854FD: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FC8240
  'Data Table: 5C26A4
  Dim var_A0 As Long
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_104 As String
  loc_FC8098: On Error Goto loc_FC8215
  loc_FC80A7: If (KeyCode = 0) Then
  loc_FC80BD:   var_A0 = CLng(Me.FGridRef.Col)
  loc_FC80CD:   If (var_A0 = CLng(1)) Then
  loc_FC80F2:     If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_FC8103:       Call TxtGrid_KeyDown(KeyCode, global_168)
  loc_FC8108:     End If
  loc_FC8134:     Proc_183_35_F29A04(Me.ListView, Me.TxtGrid, KeyCode, Shift)
  loc_FC8147:   Else
  loc_FC814E:     If (var_A0 = CLng(2)) Then
  loc_FC8164:       var_C0 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_FC816C:       var_E0 = CVar(CLng(1)) 'Long
  loc_FC819F:       If (CStr(Me.FGridRef.TextMatrix)) = "Ag.Ref.") Then
  loc_FC81C5:         If ((Shift <> &HD) And (CBool(Me.DGRefNo.Visible) = 0)) Then
  loc_FC81D6:           Call TxtGrid_KeyDown(KeyCode, global_168)
  loc_FC81EA:           var_104 = "RefNo"
  loc_FC8205:           Proc_183_41_1459C78(Me.TxtGrid, KeyCode, global_84, Shift, var_104, &HFF, 0)
  loc_FC8214:         End If
  loc_FC8214:       End If
  loc_FC8214:     End If
  loc_FC8214:   End If
  loc_FC8214: End If
  loc_FC8214: Exit Sub
  loc_FC8215: ' Referenced from: FC8098
  loc_FC821B: Call 0.Method_arg_50 (var_104, var_E0, var_C0, global_164)
  loc_FC8230: Proc_183_57_104AA84(var_104, "TxtGrid_KeyUp", 0)
  loc_FC823C: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E6AB30
  'Data Table: 5C26A4
  Dim arg_10 As Integer
  loc_E6AAE0: On Error Goto loc_E6AB05
  loc_E6AAEF: If (Cancel = 0) Then
  loc_E6AAF8:   Call Proc_185_154_14B6C6C(Cancel, var_88)
  loc_E6AB01:   arg_10 = Not(var_88)
  loc_E6AB04: End If
  loc_E6AB04: Exit Sub
  loc_E6AB05: ' Referenced from: E6AAE0
  loc_E6AB0B: Call 0.Method_arg_50 (var_8C, arg_10)
  loc_E6AB20: Proc_183_57_104AA84(var_8C, "TxtGrid_Validate")
  loc_E6AB2C: Exit Sub
End Sub

Private Sub TxtChequeAmt_KeyDown(KeyCode As Integer, Shift As Integer) 'E66F00
  'Data Table: 5C26A4
  loc_E66ECD: Proc_183_21_FA163C(Me.TxtChequeAmt, KeyCode)
  loc_E66EEE: If ((CLng(KeyCode) = &H28) Or (CLng(KeyCode) = &HD)) Then
  loc_E66EF7:   Proc_6_75_E527CC(KeyCode, Shift)
  loc_E66EFC: End If
  loc_E66EFC: Exit Sub
End Sub

Private Sub TxtChequeAmt_KeyPress(KeyAscii As Integer) 'E40B34
  'Data Table: 5C26A4
  loc_E40B25: Proc_183_22_129AEBC(Me.TxtChequeAmt, KeyAscii)
  loc_E40B31: Exit Sub
End Sub

Private Sub TxtChequeAmt_LostFocus() 'E9965C
  'Data Table: 5C26A4
  loc_E9963E: Me.TxtChequeAmt.Text = CStr(Format(CVar(Val(Me.TxtChequeAmt.Text)), "0.00"))
  loc_E9965A: Exit Sub
End Sub

Private Sub TxtChequeAmt_Validate(Cancel As Boolean) 'E99A08
  'Data Table: 5C26A4
  loc_E999EA: Me.TxtChequeAmt.Text = CStr(Format(CVar(Val(Me.TxtChequeAmt.Text)), "0.00"))
  loc_E99A06: Exit Sub
End Sub

Private Sub BtnClose_Click() 'E31FF4
  'Data Table: 5C26A4
  Dim var_8C As Frame
  loc_E31FD7: Set var_88 = Me.Frame1
  loc_E31FDD: Call 0.Method_BtnClose_Click0 (1, var_8C)
  loc_E31FE5: var_8C.Visible = False
  loc_E31FF1: Exit Sub
End Sub

Public Function TmpCheqNew(Rst) 'FBE1C0
  'Data Table: 5C26A4
  Dim var_8C As Recordset15
  loc_FBE00D: Set var_8C = Rst 
  loc_FBE035: var_8C.Fields.Append "HeadName", &HC8, &H96
  loc_FBE061: var_8C.Fields.Append "Amt", 5, 0
  loc_FBE08D: var_8C.Fields.Append "AmtWord", &HC8, &HC8
  loc_FBE0B9: var_8C.Fields.Append "Dt", 7, 8
  loc_FBE0E5: var_8C.Fields.Append "SiteName", &HC8, &H96
  loc_FBE111: var_8C.Fields.Append "SName", &HC8, &H96
  loc_FBE13D: var_8C.Fields.Append "SiteCode", &HC8, 2
  loc_FBE169: var_8C.Fields.Append "AcNo", &HC8, &H32
  loc_FBE179: var_8C.CursorType = 3
  loc_FBE186: var_8C.LockType = 3
  loc_FBE1A5: var_8C.Open var_A0, var_B0, -1
  loc_FBE1AC: Set var_8C = Nothing 
  loc_FBE1B3: Set var_88 = Rst 
  loc_FBE1B7: TmpCheqNew = -1
End Function

Public Sub Disp_Text(Enb) 'DFB1A0
  'Data Table: 5C26A4
  loc_DFB19C: Exit Sub
End Sub

Public Sub FindMove(mDocId) 'F95B34
  'Data Table: 5C26A4
  Dim var_88 As String
  Dim unk_5C28B7 As Connection15
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_B0 As Fields15
  loc_F959D0: On Error Goto loc_F95B0A
  loc_F959E4: If ((MemVar_1F92078 = "HO") And (MemVar_1F92070 = "HO")) Then
  loc_F95A0B:   unk_5C28B7.Execute "SELECT DOCID,SITE_CODE,LOGSITE_CODE FROM LEDGERM WHERE DOCID='" & mDocId & "'", var_AC, -1
  loc_F95A1C:   Set global_68 = var_B0
  loc_F95A48:   If (Me.RecordCount > 0) Then
  loc_F95A8A:     If CBool(Me.Fields.Item("Site_Code").Value <> "HO") Then
  loc_F95A92:       Call 0.Method_arg_1D4 (0)
  loc_F95A97:       var_9C = False
  loc_F95AA0:       Set var_B0 = Me.TopCtrl1
  loc_F95AA6:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007(var_9C)
  loc_F95AAE:     End If
  loc_F95AAE:   End If
  loc_F95AB1: Else
  loc_F95AB7:   Me.MoveFirst
  loc_F95ABC: End If
  loc_F95AD1: var_88 = "DOCID='" & mDocId
  loc_F95AE1: Me.Find var_88 & "'", 0, 1
  loc_F95B01: If (Me.EOF = 0) Then
  loc_F95B04:   Call Proc_185_144_19C260C(var_9C)
  loc_F95B09: End If
  loc_F95B09: Exit Sub
  loc_F95B0A: ' Referenced from: F959D0
  loc_F95B10: Call 0.Method_arg_50 (var_88)
  loc_F95B25: Proc_183_57_104AA84(var_88, "FindMove")
  loc_F95B31: Exit Sub
End Sub

Public Sub Proc_185_142_130636C
  'Data Table: 5C26A4
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_B4 As String
  Dim var_11C As Variant
  Dim var_16C As Variant
  Dim var_88 As Recordset15
  Dim var_DC As Variant
  Dim var_200 As Variant
  Dim var_2A0 As Variant
  Dim var_378 As Variant
  Dim var_388 As Variant
  loc_1305D08: On Error Goto loc_1306342
  loc_1305D1E: Me.FGVLIST.Rows = 1
  loc_1305D29: var_8C = " WHERE NCAT<>'OPBAL'"
  loc_1305D6F: If ((Me.TXTVDATE1.Text <> vbNullString) And (Me.TXTVDATE2.Text <> vbNullString)) Then
  loc_1305D82:   Proc_183_7_EB0C44(var_DC, CVar(Me.TXTVDATE1))
  loc_1305DA2:   Proc_183_7_EB0C44(var_11C, CVar(Me.TXTVDATE2))
  loc_1305DAF:   var_8C = CStr(" WHERE v_date BETWEEN " & var_DC & " and " & var_11C)
  loc_1305DC3: End If
  loc_1305DE6: If (CStr(Me.Dcparty.defText) <> vbNullString) Then
  loc_1305E1E:   var_FC = (CVar(var_8C) + IIf((Len(var_8C) = 0), " WHERE ", " AND "))
  loc_1305E27:   var_10C = (" WHERE v_date BETWEEN " & " AND " & " and " + " LEDGER.SUBCODE='")
  loc_1305E40:   var_16C = CVar(Me.TXTVDATE2) & CVar(CStr(Me.Dcparty.BoundText)) 
  loc_1305E4E:   var_8C = CStr(var_16C & "'")
  loc_1305E6B: End If
  loc_1305E8E: If (CStr(Me.DataCombo1.defText) <> vbNullString) Then
  loc_1305EC6:   var_FC = (CVar(var_8C) + IIf((Len(var_8C) = 0), " WHERE ", " AND "))
  loc_1305ECF:   var_10C = (" WHERE v_date BETWEEN " & " AND " & " and " + " LEDGER.V_TYPE=")
  loc_1305EEB:   Proc_183_9_EAA760(var_16C, CVar(CStr(Me.DataCombo1.BoundText)))
  loc_1305EF8:   var_8C = CStr(CVar(Me.TXTVDATE2) & var_16C)
  loc_1305F15: End If
  loc_1305F35: If (Me.Text1.Text <> vbNullString) Then
  loc_1305F6D:   var_FC = (CVar(var_8C) + IIf((Len(var_8C) = 0), " WHERE ", " AND "))
  loc_1305F76:   var_10C = (" WHERE v_date BETWEEN " & " AND " & " and " + " V_No=")
  loc_1305F9D:   var_8C = CStr(CVar(Me.TXTVDATE2) & CVar(Val(Me.Text1.Text)))
  loc_1305FB7: End If
  loc_1305FEC: var_FC = (CVar(var_8C) + IIf((Len(var_8C) = 0), " WHERE ", " AND "))
  loc_1305FF5: var_10C = (" WHERE v_date BETWEEN " & " AND " & " and " + " VOUCHER_TYPE.SITE_CODE='")
  loc_130603E: Set var_88 = New 
  loc_1306049: Me.Recordset15.CursorLocation = 3
  loc_130606C: var_B4 = "SELECT LEDGER.*,SUBGROUP.NAME FROM (LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE) LEFT JOIN VOUCHER_tYPE ON VOUCHER_tYPE.V_TYPE=LEDGER.V_tYPE " & CStr(CVar(Me.TXTVDATE2) & CVar(MemVar_1F92070) & "' AND VOUCHER_TYPE.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'")
  loc_130607A: var_88.Open CVar(var_B4 & " ORDER BY V_DATE,LEDGER.V_TYPE,V_NO,V_SNo"), CVar(MemVar_1F921DC), 2
  loc_1306085: ' Referenced from: 1306336
  loc_1306094: If Not(var_88.EOF) Then
  loc_130615E:   var_200 = vbNullString & Chr(9) & var_88.Fields.Item("V_DATE").Value & Chr(9) & var_88.Fields.Item("V_Type").Value & Chr(9) & var_88.Fields.Item("V_NO").Value 
  loc_13061E3:   var_2A0 = 3 & CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("v_Prefix")), var_200 & Chr(9))) & Chr(9) & var_88.Fields.Item("Name").Value 
  loc_13062A9:   var_378 = var_2A0 & Chr(9) & var_88.Fields.Item("AmtDr").Value & Chr(9) & var_88.Fields.Item("AmtCr").Value & Chr(9) & var_88.Fields.Item("DocID").Value 
  loc_13062AE:   var_388 = CVar(CStr(var_378)) 'String
  loc_13062B6:   Set var_39C = Me.FGVLIST
  loc_1306331:   var_88.MoveNext
  loc_1306336:   GoTo loc_1306085
  loc_1306339: End If
  loc_130633E: Set var_88 = Nothing
  loc_1306341: Exit Sub
  loc_1306342: ' Referenced from: 1305D08
  loc_1306348: Call 0.Method_arg_50 (var_B4, FGVLIST.DispID_10000)
  loc_130635D: Proc_183_57_104AA84(var_B4, "VRLIST")
  loc_1306369: Exit Sub
End Sub

Public Sub Proc_185_143_E14108
  'Data Table: 5C26A4
  loc_E140F0: Call TopCtrl1_UnknownEvent_D()
  loc_E140F5: Call TopCtrl1_UnknownEvent_16()
  loc_E140FA: Call TopCtrl1_UnknownEvent_12()
  loc_E140FF: Call Proc_185_143_E14108()
  loc_E14104: Exit Sub
End Sub

Public Sub Proc_185_144_19C260C
  'Data Table: 5C26A4
  Dim var_9C As Variant
  Dim var_AC As String
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim unk_5C26BA As Connection15
  Dim var_8C As Integer
  Dim var_C8 As Variant
  Dim var_EC As Variant
  Dim var_130 As Variant
  Dim var_B4 As String
  Dim var_100 As String
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_88 As Recordset15
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_1A8 As Fields15
  Dim var_1CC As Variant
  Dim var_1DC As Variant
  Dim var_94 As Recordset15
  Dim var_134 As Variant
  Dim var_164 As Variant
  Dim var_90 As Recordset15
  Dim var_21C As Recordset15
  Dim var_220 As Recordset15
  Dim var_224 As Recordset15
  Dim var_228 As Recordset15
  Dim var_98 As Recordset15
  Dim var_1BC As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_268 As Variant
  Dim var_288 As Variant
  Dim var_2EC As Variant
  Dim var_574 As Variant
  Dim var_594 As Variant
  Dim var_5C4 As Variant
  Dim var_5D8 As Fields15
  Dim var_60C As Variant
  Dim var_628 As Double
  Dim var_1A4 As Variant
  Dim var_8A As Integer
  loc_19BF634: On Error Goto loc_19C25E4
  loc_19BF644: Me.lblTDS.Caption = vbNullString
  loc_19BF651: global_132 = &HFF
  loc_19BF65F: For var_A0 = 0 To global_136: var_8C = var_A0 'Integer
  loc_19BF66D:   Call Proc_185_157_11ECFEC(var_8C, 0)
  loc_19BF675: Next var_A0 'Integer
  loc_19BF68A: Set var_9C = Me.LblDrAmt
  loc_19BF690: Call 0.Method_Proc_185_144_19C260C0 (0, var_A8)
  loc_19BF698: var_A8.Caption = CStr(0)
  loc_19BF6B7: Set var_9C = Me.LblCrAmt
  loc_19BF6BD: Call 0.Method_Proc_185_144_19C260C0 (0, var_A8)
  loc_19BF6C5: var_A8.Caption = CStr(0)
  loc_19BF6D4: Call Proc_185_156_1115F98()
  loc_19BF6DE: global_108 = 0
  loc_19BF6E6: Call Proc_185_158_1017BBC(&HFF)
  loc_19BF702: If (Me.RecordCount <= 0) Then
  loc_19BF70B:   global_120 = "JV"
  loc_19BF720:   Set var_9C = Me.VchDt
  loc_19BF726:   Call 0.Method_Proc_185_144_19C260C0 (0, var_A8)
  loc_19BF72E:   var_A8.Text = CStr(MemVar_1F920EC)
  loc_19BF751:   Call Proc_185_166_1324960(vbNullString, 0)
  loc_19BF77A:   Set var_9C = New
  loc_19BF789:   Call 0.Method_arg_1C4 (var_9C, var_A8)
  loc_19BF797:   global_72 = var_9C
  loc_19BF7A7:   Set global_72 = var_A8
  loc_19BF7D1:   Set var_9C = New
  loc_19BF7E0:   Call 0.Method_arg_1C8 (var_9C, var_A8)
  loc_19BF7EE:   global_100 = var_9C
  loc_19BF7FE:   Set global_100 = var_A8
  loc_19BF828:   Set var_9C = New
  loc_19BF837:   Call 0.Method_arg_1CC (var_9C, var_A8)
  loc_19BF845:   global_96 = var_9C
  loc_19BF855:   Set global_96 = var_A8
  loc_19BF865: Else
  loc_19BF87B:   unk_5C26BA.Execute "SELECT SUBCODE,SUM(CURR_BAL) AS CURRBAL FROM SUBGROUPCURRBAL GROUP BY SUBCODE ORDER BY SUBCODE", var_D8, -1
  loc_19BF886:   Set var_98 = var_9C
  loc_19BF8B8:   If ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) Then
  loc_19BF8D2:     If (Me.RecordCount > 0) Then
  loc_19BF8E9:       If (Me.EOF = &HFF) Then
  loc_19BF8F2:         Me.MoveLast
  loc_19BF8F7:       End If
  loc_19BF90B:       If (Me.BOF = &HFF) Then
  loc_19BF914:         Me.MoveFirst
  loc_19BF919:       End If
  loc_19BF91C:     Else
  loc_19BF921:       global_132 = 0
  loc_19BF927:     Else
  loc_19BF927:     End If
  loc_19BF929:     var_8C = 0
  loc_19BF949:     Set var_9C = New
  loc_19BF958:     Call 0.Method_arg_1C4 (var_9C, var_A8, var_8C)
  loc_19BF966:     global_72 = var_9C
  loc_19BF976:     Set global_72 = var_A8
  loc_19BF9A0:     Set var_9C = New
  loc_19BF9AF:     Call 0.Method_arg_1C8 (var_9C, var_A8, global_132)
  loc_19BF9BD:     global_100 = var_9C
  loc_19BF9CD:     Set global_100 = var_A8
  loc_19BF9F7:     Set var_9C = New
  loc_19BFA06:     Call 0.Method_arg_1CC (var_9C, var_A8)
  loc_19BFA14:     global_96 = var_9C
  loc_19BFA24:     Set global_96 = var_A8
  loc_19BFA35:     Set var_88 = New 
  loc_19BFA77:     If (Me.Recordset15.Fields.Item("ShowCityName").Value = "Yes") Then
  loc_19BFAC2:       var_AC = "SELECT LEDGER.*,NameWithCity AS Name FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE=LEDGER.V_TYPE WHERE VOUCHER_TYPE.SITE_CODE='" & MemVar_1F92070
  loc_19BFADD:       var_110 = CVar(var_AC & "' AND VOUCHER_TYPE.LOGSITE_CODE='" & MemVar_1F92078 & "' AND LEDGER.DOCID='") & Me.Fields.Item("DocID").Value 
  loc_19BFAEE:       var_88.Open var_110 & "' ORDER BY LEDGER.V_SNO", CVar(MemVar_1F921DC), 0
  loc_19BFB11:     Else
  loc_19BFB59:       var_AC = "SELECT LEDGER.*,SUBGROUP.NAME FROM (LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE) LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE=LEDGER.V_TYPE WHERE VOUCHER_TYPE.SITE_CODE='" & MemVar_1F92070
  loc_19BFB74:       var_110 = CVar(var_AC & "' AND VOUCHER_TYPE.LOGSITE_CODE='" & MemVar_1F92078 & "' AND LEDGER.DOCID='") & Me.Fields.Item("DocID").Value 
  loc_19BFB85:       var_88.Open var_110 & "' ORDER BY LEDGER.V_SNO", CVar(MemVar_1F921DC), 0
  loc_19BFBA5:     End If
  loc_19BFBB4:     var_9C = var_88.Fields
  loc_19BFBCD:     var_1F4 = Proc_6_38_E68A98(CVar(var_9C.Item("U_AE")), 1, -1, 1)
  loc_19BFBF8:     var_1F8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), -1)
  loc_19BFC78:     var_1DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), IIf((var_1F4 = "A"), "Created By :     ", IIf((var_1F8 = "E"), "Modified By :     ", "User :     ")))) 'String
  loc_19BFC8D:     Me.LbLUser.Caption = CStr(var_9C & var_1DC)
  loc_19BFD07:     var_134 = var_88.Fields.Item("U_AE")
  loc_19BFD84:     var_1A4 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :     ", IIf((Proc_6_38_E68A98(CVar(var_134)) = "E"), "Last Update :     ", "entdt :     "))
  loc_19BFDC5:     Me.LblLDte.Caption = CStr(1 & Format(CVar(var_88.Fields.Item("U_EntDt")), "dd/mm/yyyy hh:nn"))
  loc_19BFE13:     If (var_88.RecordCount > 0) Then
  loc_19BFE1A:       Set var_94 = New 
  loc_19BFE65:       var_AC = "SELECT LEDGERM.*,VOUCHER_TYPE.NCAT FROM LEDGERM LEFT JOIN VOUCHER_TYPE ON VOUCHER_TYPE.V_tYPE=LEDGERM.V_TYPE WHERE VOUCHER_TYPE.SITE_CODE='" & MemVar_1F92070
  loc_19BFE7A:       var_FC = CVar(var_AC & "' AND VOUCHER_TYPE.LOGSITE_CODE='" & MemVar_1F92078 & "' AND  DOCID='") 'String
  loc_19BFE80:       var_110 = var_FC & Me.Recordset15.Fields.Item("DocID").Value 
  loc_19BFE89:       var_120 = var_110 & "' ORDER BY V_Date,DOCID" 
  loc_19BFE91:       var_94.Open var_120, CVar(MemVar_1F921DC), 0
  loc_19BFEC5:       If (var_94.RecordCount > 0) Then
  loc_19BFF00:         Me.lblDocId.Caption = CStr(var_94.Fields.Item("DocID").Value)
  loc_19BFF4B:         Set var_B8 = Me.TxtVno
  loc_19BFF51:         Call 0.Method_Proc_185_144_19C260C0 (0, var_134, CStr(var_94.Fields.Item("V_NO").Value), 1)
  loc_19BFF59:         var_134.Text = -1
  loc_19BFF89:         var_A8 = var_94.Fields.Item("V_DATE")
  loc_19BFF9A:         var_AC = CStr(var_A8.Value)
  loc_19BFFA6:         Set var_B8 = Me.VchDt
  loc_19BFFAC:         Call 0.Method_Proc_185_144_19C260C0 (0, var_134, var_AC)
  loc_19BFFB4:         var_134.Text = 1
  loc_19BFFD6:         Set var_9C = Me.VchDt
  loc_19BFFDC:         Call 0.Method_Proc_185_144_19C260C0 (0, var_A8, var_AC)
  loc_19BFFF3:         Call 0.Method_arg_198 (var_A8, var_1A4)
  loc_19BFFFF:         Set var_134 = Me.LblDay
  loc_19C0005:         Me.LblDay.Caption = var_AC
  loc_19C004A:         Set var_B8 = Me.TxtGlb
  loc_19C0050:         Call 0.Method_Proc_185_144_19C260C0 (0, var_134)
  loc_19C0058:         var_134.Text = Proc_183_2_E5A304(CVar(var_94.Fields.Item("Narration")))
  loc_19C00A4:         Me.LblVPrefix.Caption = CStr(var_94.Fields.Item("v_Prefix").Value)
  loc_19C00E9:         global_128 = CStr(var_94.Fields.Item("v_Prefix").Value)
  loc_19C012B:         global_120 = CStr(var_94.Fields.Item("NCat").Value)
  loc_19C013C:       End If
  loc_19C015D:       If (Trim(global_120) = vbNullString) Then
  loc_19C0179:         MsgBox("Nature Category Not set", 0, var_FC, var_110, var_120)
  loc_19C0189:       End If
  loc_19C01D1:       Call Proc_185_166_1324960(CStr(var_88.Fields.Item("V_Type").Value), Me.LblVPrefix.Caption)
  loc_19C021D:       Set var_B8 = Me.TxtCHno
  loc_19C0223:       Call 0.Method_Proc_185_144_19C260C0 (0, var_134)
  loc_19C022B:       var_134.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("Chq_No")))
  loc_19C0273:       Set var_B8 = Me.TXTChDate
  loc_19C0279:       Call 0.Method_Proc_185_144_19C260C0 (0, var_134)
  loc_19C0281:       var_134.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("Chq_Date")))
  loc_19C02C9:       Set var_B8 = Me.TXTClrDate
  loc_19C02CF:       Call 0.Method_Proc_185_144_19C260C0 (0, var_134)
  loc_19C02D7:       var_134.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("clg_date")))
  loc_19C02EB:       ' Referenced from:     19C23F2
  loc_19C02FA:       If Not(var_88.EOF) Then
  loc_19C0339:         If (var_88.Fields.Item("AmtCr").Value > 0) Then
  loc_19C0340:           Set var_90 = New 
  loc_19C0349:           var_C8 = "DocID"
  loc_19C03AB:           var_EC = "SELECT * FROM LEDGERADJ WHERE DOCID1='"
  loc_19C03CB:           var_90.Open var_EC & Me.Recordset15.Fields.Item(var_C8).Value & "' AND V_SNo1=" & var_88.Fields.Item("V_SNo").Value, CVar(MemVar_1F921DC), 0
  loc_19C03E8:           ' Referenced from:     19C062A
  loc_19C03F7:           If Not(var_90.EOF) Then
  loc_19C0400:             Set var_21C = global_72 
  loc_19C040F:             var_21C.AddNew var_C8, var_EC
  loc_19C0457:             var_21C.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID2"))
  loc_19C04AB:             var_21C.Fields.Item("V_SNo").Value = CVar(var_90.Fields.Item("V_SNo2"))
  loc_19C04FF:             var_21C.Fields.Item("VSNo").Value = CVar(var_90.Fields.Item("V_SNo1"))
  loc_19C0553:             var_21C.Fields.Item("DR").Value = CVar(var_90.Fields.Item("cr"))
  loc_19C05A7:             var_21C.Fields.Item("SUBCODE").Value = CVar(var_90.Fields.Item("subcode"))
  loc_19C05BB:             var_C8 = "AgRefNo"
  loc_19C05DF:             var_EC = "AgRefNo"
  loc_19C05FB:             var_21C.Fields.Item(var_EC).Value = CVar(var_90.Fields.Item(var_C8))
  loc_19C0617:             var_21C.Update var_C8, var_EC
  loc_19C061E:             Set var_21C = Nothing 
  loc_19C0625:             var_90.MoveNext
  loc_19C062A:             GoTo loc_19C03E8
  loc_19C062D:           End If
  loc_19C0630:         Else
  loc_19C0634:           Set var_90 = New 
  loc_19C063D:           var_C8 = "DocID"
  loc_19C069F:           var_EC = "SELECT * FROM LEDGERADJ WHERE DOCID2='"
  loc_19C06BF:           var_90.Open var_EC & Me.Fields.Item(var_C8).Value & "' AND V_SNo2=" & var_88.Fields.Item("V_SNo").Value, CVar(MemVar_1F921DC), 0
  loc_19C06DC:           ' Referenced from:       19C091E
  loc_19C06EB:           If Not(var_90.EOF) Then
  loc_19C06F4:             Set var_220 = global_72 
  loc_19C0703:             var_220.AddNew var_C8, var_EC
  loc_19C074B:             var_220.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID1"))
  loc_19C079F:             var_220.Fields.Item("V_SNo").Value = CVar(var_90.Fields.Item("V_SNo1"))
  loc_19C07F3:             var_220.Fields.Item("VSNo").Value = CVar(var_90.Fields.Item("V_SNo2"))
  loc_19C0847:             var_220.Fields.Item("CR").Value = CVar(var_90.Fields.Item("cr"))
  loc_19C089B:             var_220.Fields.Item("SUBCODE").Value = CVar(var_90.Fields.Item("subcode"))
  loc_19C08AF:             var_C8 = "AgRefNo"
  loc_19C08D3:             var_EC = "AgRefNo"
  loc_19C08EF:             var_220.Fields.Item(var_EC).Value = CVar(var_90.Fields.Item(var_C8))
  loc_19C090B:             var_220.Update var_C8, var_EC
  loc_19C0912:             Set var_220 = Nothing 
  loc_19C0919:             var_90.MoveNext
  loc_19C091E:             GoTo loc_19C06DC
  loc_19C0921:           End If
  loc_19C0921:         End If
  loc_19C0925:         Set var_90 = New 
  loc_19C092E:         var_C8 = "DocID"
  loc_19C0990:         var_EC = "SELECT * FROM LedgerRef WHERE DOCID='"
  loc_19C09B0:         var_90.Open var_EC & Me.Fields.Item(var_C8).Value & "' AND V_SNo=" & var_88.Fields.Item("V_SNo").Value, CVar(MemVar_1F921DC), 0
  loc_19C09CD:         ' Referenced from:     19C0CE9
  loc_19C09DC:         If Not(var_90.EOF) Then
  loc_19C09E5:           Set var_224 = global_100 
  loc_19C09F4:           var_224.AddNew var_C8, var_EC
  loc_19C0A3C:           var_224.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_19C0A90:           var_224.Fields.Item("V_SNo").Value = CVar(var_90.Fields.Item("V_SNo"))
  loc_19C0AE4:           var_224.Fields.Item("DR").Value = CVar(var_90.Fields.Item("dr"))
  loc_19C0B38:           var_224.Fields.Item("CR").Value = CVar(var_90.Fields.Item("cr"))
  loc_19C0B8C:           var_224.Fields.Item("SUBCODE").Value = CVar(var_90.Fields.Item("subcode"))
  loc_19C0BE0:           var_224.Fields.Item("AgRefNo").Value = CVar(var_90.Fields.Item("AgRefNo"))
  loc_19C0C34:           var_224.Fields.Item("AgRefType").Value = CVar(var_90.Fields.Item("AgRefType"))
  loc_19C0C74:           If Not(IsNull(CVar(var_90.Fields.Item("DueDate")))) Then
  loc_19C0C7A:             var_C8 = "DueDate"
  loc_19C0C9E:             var_EC = "DueDate"
  loc_19C0CBA:             var_224.Fields.Item(var_EC).Value = CVar(var_90.Fields.Item(var_C8))
  loc_19C0CCB:           End If
  loc_19C0CD6:           var_224.Update var_C8, var_EC
  loc_19C0CDD:           Set var_224 = Nothing 
  loc_19C0CE4:           var_90.MoveNext
  loc_19C0CE9:           GoTo loc_19C09CD
  loc_19C0CEC:         End If
  loc_19C0CF0:         Set var_90 = New 
  loc_19C0CF9:         var_C8 = "DocID"
  loc_19C0D5B:         var_EC = "SELECT LEDGERTDS.*,SUBGROUP.NAME AS TDSNAME FROM LEDGERTDS LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGERTDS.TDSCODE WHERE DOCID='"
  loc_19C0D7B:         var_90.Open var_EC & Me.Fields.Item(var_C8).Value & "' AND V_SNo=" & var_88.Fields.Item("V_SNo").Value, CVar(MemVar_1F921DC), 0
  loc_19C0DAC:         If (var_90.RecordCount > 0) Then
  loc_19C0DBB:           Me.lblTDS.Visible = True
  loc_19C0DC3:           ' Referenced from:     19C1369
  loc_19C0DC3:         End If
  loc_19C0DD2:         If Not(var_90.EOF) Then
  loc_19C0DDB:           Set var_228 = global_96 
  loc_19C0DEA:           var_228.AddNew var_C8, var_EC
  loc_19C0E32:           var_228.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_19C0E86:           var_228.Fields.Item("V_SNo").Value = CVar(var_90.Fields.Item("V_SNo"))
  loc_19C0EDA:           var_228.Fields.Item("TDSCode").Value = CVar(var_90.Fields.Item("TDSCODE"))
  loc_19C0F2E:           var_228.Fields.Item("TDSNAME").Value = CVar(var_90.Fields.Item("TDSNAME"))
  loc_19C0F82:           var_228.Fields.Item("TDSDrCode").Value = CVar(var_90.Fields.Item("TDSDRCODE"))
  loc_19C0FD6:           var_228.Fields.Item("TDSYN").Value = CVar(var_90.Fields.Item("TDSYN"))
  loc_19C102A:           var_228.Fields.Item("ONAMT").Value = CVar(var_90.Fields.Item("ONAmt"))
  loc_19C107E:           var_228.Fields.Item("TDS").Value = CVar(var_90.Fields.Item("TDS"))
  loc_19C10D2:           var_228.Fields.Item("TDSAMT").Value = CVar(var_90.Fields.Item("TDSAmt"))
  loc_19C1112:           var_AC = CStr(var_90.Fields.Item("TDSAmt").Value)
  loc_19C1123:           Me.lblTDS.Caption = "TDS Amount :     " & var_AC
  loc_19C117E:           var_228.Fields.Item("TDSPOST").Value = CVar(var_90.Fields.Item("TDSPOST"))
  loc_19C11D2:           var_228.Fields.Item("TDSDocId").Value = CVar(var_90.Fields.Item("TDSDocId"))
  loc_19C1226:           var_228.Fields.Item("TDSV_SNo").Value = CVar(var_90.Fields.Item("TDSV_Sno"))
  loc_19C123B:           Set var_94 = New 
  loc_19C12BB:           var_164 = "SELECT * FROM LEDGER WHERE DOCID='" & Me.Recordset15.Fields.Item("TDSDocId").Value & "' AND V_SNo=" & var_90.Fields.Item("TDSV_Sno").Value 
  loc_19C12C3:           var_94.Open var_164, CVar(MemVar_1F921DC), 0
  loc_19C12F4:           If (var_94.RecordCount > 0) Then
  loc_19C12FA:             var_C8 = "Narration"
  loc_19C131E:             var_EC = "NARRATION"
  loc_19C133A:             var_228.Fields.Item(var_EC).Value = CVar(var_94.Fields.Item(var_C8))
  loc_19C134B:           End If
  loc_19C1356:           var_228.Update var_C8, var_EC
  loc_19C135D:           Set var_228 = Nothing 
  loc_19C1364:           var_90.MoveNext
  loc_19C1369:           GoTo loc_19C0DC3
  loc_19C136C:         End If
  loc_19C1378:         var_98.Filter = 0
  loc_19C13BD:         var_98.Filter = "SUBCODE='" & var_88.Fields.Item("subcode").Value & "'"
  loc_19C13E3:         If (var_88.EOF = &HFF) Then
  loc_19C1592:           var_238 = vbNullString & Chr(9) & var_88.Fields.Item("V_SNo").Value & Chr(9) & var_88.Fields.Item("subcode").Value & Chr(9) & var_88.Fields.Item("Name").Value 
  loc_19C15C3:           var_288 = var_238 & Chr(9) & vbNullString & Chr(9) 
  loc_19C1602:           var_2EC = 1 & Format(CVar(var_88.Fields.Item("AmtDr")), "0.00") & Chr(9) 
  loc_19C1694:           var_50C = IIf((var_88.Fields.Item("AmtCr").Value > 0), IIf((Me.Fields.Item("ToBy").Value = "Yes"), "To", "Cr"), IIf((Me.Fields.Item("ToBy").Value = "Yes"), "By", "Dr"))
  loc_19C16DE:           var_574 = 1 & Format(CVar(var_88.Fields.Item("AmtCr")), "0.00") & Chr(9) & var_50C & Chr(9) & var_88.Fields.Item("Narration").Value 
  loc_19C1700:           var_5C4 = CVar(CStr(var_574 & Chr(9) & "0.00")) 'String
  loc_19C1708:           Set var_5D8 = Me.FGrid1
  loc_19C17A7:         Else
  loc_19C18DB:           var_A8 = var_88.Fields.Item("V_SNo")
  loc_19C195F:           var_1BC = var_88.Fields.Item("Name")
  loc_19C1983:           var_258 = vbNullString & Chr(9) & var_A8.Value & Chr(9) & var_88.Fields.Item("subcode").Value & Chr(9) & var_1BC.Value & Chr(9) 
  loc_19C19A0:           var_288 = var_258 & vbNullString & Chr(9) 
  loc_19C19DF:           var_2EC = 1 & Format(CVar(var_88.Fields.Item("AmtDr")), "0.00") & Chr(9) 
  loc_19C1A71:           var_50C = IIf((var_88.Fields.Item("AmtCr").Value > 0), IIf((Me.Fields.Item("ToBy").Value = "Yes"), "To", "Cr"), IIf((Me.Fields.Item("ToBy").Value = "Yes"), "By", "Dr"))
  loc_19C1ABB:           var_574 = 1 & Format(CVar(var_88.Fields.Item("AmtCr")), "0.00") & Chr(9) & var_50C & Chr(9) & var_88.Fields.Item("Narration").Value 
  loc_19C1ACF:           var_594 = var_574 & Chr(9) 
  loc_19C1AE2:           var_5C4 = "0.00"
  loc_19C1AFF:           var_60C = CVar(CStr(1 & Format(CVar(var_98.Fields.Item("CurrBal")), var_5C4))) 'String
  loc_19C1B07:           Set var_620 = Me.FGrid1
  loc_19C1BAB:         End If
  loc_19C1BDE:         var_628 = Val(CStr(var_88.Fields.Item("AmtDr").Value))
  loc_19C1BED:         Set var_9C = Me.LblDrAmt
  loc_19C1BF3:         Call 0.Method_Proc_185_144_19C260C0 (0, var_A8, var_AC, var_628, FGrid1.DispID_10000, var_60C, 1)
  loc_19C1BFB:         var_594 = var_A8.Caption
  loc_19C1C0E:         var_100 = CStr((Val(var_AC) + var_628))
  loc_19C1C1A:         Set var_1A8 = Me.LblDrAmt
  loc_19C1C20:         Call 0.Method_Proc_185_144_19C260C0 (0, var_1BC, var_AC & "' AND VOUCHER_TYPE.LOGSITE_CODE='" & MemVar_1F92078, 1, var_2EC)
  loc_19C1C28:         var_1BC.Caption = 1
  loc_19C1C62:         var_134 = var_88.Fields.Item("AmtCr")
  loc_19C1C73:         var_B4 = CStr(var_134.Value)
  loc_19C1C7B:         var_628 = Val(var_B4)
  loc_19C1C8A:         Set var_9C = Me.LblCrAmt
  loc_19C1C90:         Call 0.Method_Proc_185_144_19C260C0 (0, var_A8, var_AC, var_628)
  loc_19C1C98:         var_288 = var_A8.Caption
  loc_19C1CAB:         var_100 = CStr((Val(var_AC) + var_628))
  loc_19C1CB7:         Set var_1A8 = Me.LblCrAmt
  loc_19C1CBD:         Call 0.Method_Proc_185_144_19C260C0 (0, var_1BC, var_AC & "' AND VOUCHER_TYPE.LOGSITE_CODE='" & MemVar_1F92078)
  loc_19C1CC5:         var_1BC.Caption = FGrid1.DispID_10000
  loc_19C1CEF:         If (var_8C <= global_136) Then
  loc_19C1CFA:           Call Proc_185_157_11ECFEC(var_8C, &HFF)
  loc_19C1D3E:           If (Me.Fields.Item("ToBy").Value = "Yes") Then
  loc_19C1DAB:             Set var_B8 = Me.TxtCrDr
  loc_19C1DB1:             Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_134)
  loc_19C1DB9:             var_134.Text = CStr(IIf((var_88.Fields.Item("AmtCr").Value > 0), "To", "By"))
  loc_19C1DDC:           Else
  loc_19C1E46:             Set var_B8 = Me.TxtCrDr
  loc_19C1E4C:             Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_134)
  loc_19C1E54:             var_134.Text = CStr(IIf((var_88.Fields.Item("AmtCr").Value > 0), "Cr", "Dr"))
  loc_19C1E74:           End If
  loc_19C1E8E:           var_A8 = var_88.Fields.Item("V_SNo")
  loc_19C1EAC:           Set var_B8 = Me.TxtCrDr
  loc_19C1EB2:           Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_134)
  loc_19C1EBA:           var_134.Tag = CStr(var_A8.Value)
  loc_19C1EDD:           Set var_9C = Me.TxtCrDr
  loc_19C1EE3:           Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_A8)
  loc_19C1F05:           Set var_B8 = Me.TxtCrDr
  loc_19C1F0B:           Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_134, var_B4)
  loc_19C1F13:           (var_A8.Text = "Cr") = var_134.Text
  loc_19C1F33:           If (var_5C4 Or (var_B4 = "To")) Then
  loc_19C1F4D:             var_A8 = var_88.Fields.Item("AmtCr")
  loc_19C1F87:             Set var_B8 = Me.TxtCr
  loc_19C1F8D:             Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_134, CStr(Format(CVar(var_A8), "0.00")))
  loc_19C1F95:             var_134.Text = 1
  loc_19C1FBB:             Set var_9C = Me.TxtCr
  loc_19C1FC1:             Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_A8)
  loc_19C1FC9:             var_A8.Visible = True
  loc_19C1FE2:             Set var_9C = Me.TxtDr
  loc_19C1FE8:             Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_A8)
  loc_19C1FF0:             var_A8.Text = vbNullString
  loc_19C2008:             Set var_9C = Me.TxtDr
  loc_19C200E:             Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_A8)
  loc_19C2016:             var_A8.Visible = False
  loc_19C2025:           Else
  loc_19C203C:             var_A8 = var_88.Fields.Item("AmtDr")
  loc_19C2076:             Set var_B8 = Me.TxtDr
  loc_19C207C:             Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_134, CStr(Format(CVar(var_A8), "0.00")))
  loc_19C2084:             var_134.Text = 1
  loc_19C20AA:             Set var_9C = Me.TxtDr
  loc_19C20B0:             Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_A8, &HFF)
  loc_19C20B8:             var_A8.Visible = True
  loc_19C20D1:             Set var_9C = Me.TxtCr
  loc_19C20D7:             Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_A8)
  loc_19C20DF:             var_A8.Text = vbNullString
  loc_19C20F7:             Set var_9C = Me.TxtCr
  loc_19C20FD:             Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_A8)
  loc_19C2105:             var_A8.Visible = False
  loc_19C2111:           End If
  loc_19C2149:           Set var_B8 = Me.TxtAcName
  loc_19C214F:           Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_134)
  loc_19C2157:           var_134.Tag = CStr(var_88.Fields.Item("subcode").Value)
  loc_19C21A2:           Set var_B8 = Me.TxtAcName
  loc_19C21A8:           Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_134)
  loc_19C21B0:           var_134.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("Name")))
  loc_19C21F9:           Set var_B8 = Me.TxtNar
  loc_19C21FF:           Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_134)
  loc_19C2207:           var_134.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("Narration")))
  loc_19C2227:           var_98.Filter = 0
  loc_19C224B:           var_A8 = var_88.Fields.Item("subcode")
  loc_19C225B:           var_FC = "SUBCODE='" & var_A8.Value 
  loc_19C226C:           var_98.Filter = var_FC & "'"
  loc_19C2287:           var_A2 = var_88.EOF
  loc_19C2292:           If (var_A2 = &HFF) Then
  loc_19C22A2:             Set var_9C = Me.LblCb
  loc_19C22A8:             Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_A8)
  loc_19C22B0:             var_A8.Caption = vbNullString
  loc_19C22BF:           Else
  loc_19C22D6:             var_A8 = var_98.Fields.Item("CurrBal")
  loc_19C22E5:             Proc_183_3_E7D1C8(var_FC, CVar(var_A8))
  loc_19C2304:             var_134 = var_98.Fields.Item("CurrBal")
  loc_19C2311:             var_130 = "Current Balance :"
  loc_19C2344:             var_1A4 = (1 + Format(Abs(var_FC), "0.00"))
  loc_19C234D:             var_1CC = (var_88.Fields.Item("subcode").Value + " ")
  loc_19C2386:             var_268 = (vbNullString & Chr(9) & var_A8.Value & Chr(9) & var_88.Fields.Item("subcode").Value + IIf((var_134.Value > 0), "Cr", "Dr"))
  loc_19C2398:             Set var_1A8 = Me.LblCb
  loc_19C239E:             Call 0.Method_Proc_185_144_19C260C0 (var_8C, var_1BC, CStr(IIf((var_134.Value > 0), "Cr", "Dr") & vbNullString))
  loc_19C23A6:             var_1BC.Caption = 1
  loc_19C23D8:           End If
  loc_19C23DE:           var_8C = (var_8C + 1)
  loc_19C23E7:           var_8A = (var_8A + 1)
  loc_19C23EA:         End If
  loc_19C23ED:         var_88.MoveNext
  loc_19C23F2:         GoTo loc_19C02EB
  loc_19C23F5:       End If
  loc_19C23F5:     End If
  loc_19C23FB:     Call 0.Method_arg_1B8 (var_A2, var_8A, var_8C)
  loc_19C2406:     If (var_A2 = &HFF) Then
  loc_19C2415:       Set var_9C = Me.TxtCrDr
  loc_19C241B:       Call 0.Method_Proc_185_144_19C260C0 (0, var_A8, var_A2)
  loc_19C2423:       var_130 = var_A8.Visible
  loc_19C2435:       If (var_A2 = &HFF) Then
  loc_19C2441:         Set var_9C = Me.TxtCrDr
  loc_19C2447:         Call 0.Method_Proc_185_144_19C260C0 (0, var_A8)
  loc_19C244F:         var_A8.SetFocus
  loc_19C245B:       End If
  loc_19C245B:     End If
  loc_19C245B:   End If
  loc_19C2467:   Set var_9C = Me.LblDrAmt
  loc_19C246D:   Call 0.Method_Proc_185_144_19C260C0 (0, var_A8)
  loc_19C2475:   var_AC = var_A8.Caption
  loc_19C24B9:   Set var_B8 = Me.LblDrAmt
  loc_19C24BF:   Call 0.Method_Proc_185_144_19C260C0 (0, var_134, CStr(Format(CVar(Val(var_AC)), "0.00")), 1)
  loc_19C24C7:   var_134.Caption = 1
  loc_19C24F3:   Set var_9C = Me.LblCrAmt
  loc_19C24F9:   Call 0.Method_Proc_185_144_19C260C0 (0, var_A8, var_AC)
  loc_19C2501:   var_628 = var_A8.Caption
  loc_19C2545:   Set var_B8 = Me.LblCrAmt
  loc_19C254B:   Call 0.Method_Proc_185_144_19C260C0 (0, var_134, CStr(Format(CVar(Val(var_AC)), "0.00")), 1)
  loc_19C2553:   var_134.Caption = 1
  loc_19C257F:   Set var_9C = Me.TxtVtYpe
  loc_19C2585:   Call 0.Method_Proc_185_144_19C260C0 (0, var_A8, var_AC)
  loc_19C258D:   var_628 = var_A8.Text
  loc_19C25A4:   If (var_AC <> "Bank Payment") Then
  loc_19C25B3:     Me.ChqPrint.Visible = False
  loc_19C25BB:   End If
  loc_19C25C0:   global_132 = 0
  loc_19C25C3: End If
  loc_19C25C8: Set var_98 = Nothing
  loc_19C25D0: Set var_88 = Nothing
  loc_19C25D8: Set var_90 = Nothing
  loc_19C25E0: Set var_94 = Nothing
  loc_19C25E3: Exit Sub
  loc_19C25E4: ' Referenced from: 19BF634
  loc_19C25EA: Call 0.Method_arg_50 (var_AC, global_132)
  loc_19C25FF: Proc_183_57_104AA84(var_AC, "MoveRec")
  loc_19C260B: Exit Sub
End Sub

Public Sub Proc_185_145_E9BED0(arg_C) 'E9BED0
  'Data Table: 5C26A4
  loc_E9BE50: On Error Goto loc_E9BEA3
  loc_E9BE5F: If (CInt(global_110) = 3) Then
  loc_E9BE62:   Proc_185_145_E9BED0 = 
  loc_E9BE68: End If
  loc_E9BE8D: Call 0.Method_arg_178 (Me, global_136, arg_C)
  loc_E9BE96: var_86 = var_8E 'Byte
  loc_E9BE9D: Proc_185_145_E9BED0 = global_108
  loc_E9BEA3: ' Referenced from: E9BE50
  loc_E9BEA9: Call 0.Method_arg_50 (var_94)
  loc_E9BEBE: Proc_183_57_104AA84(var_94, "VchTrnSaveLst")
  loc_E9BECA: Proc_185_145_E9BED0 = var_8E
End Sub

Public Sub Proc_185_146_125805C(arg_C) '125805C
  'Data Table: 5C26A4
  Dim var_8C As TextBox
  Dim var_90 As Integer
  Dim var_9C As TextBox
  loc_1257AF0: On Error Goto loc_1258034
  loc_1257B04: If ((arg_C >= 1) And (arg_C <= global_136)) Then
  loc_1257B12:   If (global_112 = "Y") Then
  loc_1257B25:     Set var_88 = Me.TxtNar
  loc_1257B2B:     Call 0.Method_Proc_185_146_125805C0 ((arg_C - 1), var_8C)
  loc_1257B45:     If (var_8C.Visible = 0) Then
  loc_1257B57:       Set var_88 = Me.TxtNar
  loc_1257B5D:       Call 0.Method_Proc_185_146_125805C0 ((arg_C - 1), var_8C)
  loc_1257B65:       var_8C.Visible = True
  loc_1257B71:     End If
  loc_1257B7E:     Set var_88 = Me.TxtNar
  loc_1257B84:     Call 0.Method_Proc_185_146_125805C0 ((arg_C - 1))
  loc_1257B8C:     var_8C.SetFocus
  loc_1257B9B:   Else
  loc_1257BA6:     If (global_112 = "N") Then
  loc_1257BB5:       If (arg_C > 0) Then
  loc_1257BC8:         Set var_88 = Me.TxtCrDr
  loc_1257BCE:         Call 0.Method_Proc_185_146_125805C0 ((arg_C - 1), var_8C, var_94)
  loc_1257BD6:         var_90 = var_8C.Text
  loc_1257BF3:         Set var_98 = Me.TxtCrDr
  loc_1257BF9:         Call 0.Method_Proc_185_146_125805C0 ((arg_C - 1), var_9C, var_A0)
  loc_1257C01:         (var_94 = "Dr") = var_9C.Text
  loc_1257C21:         If (var_8C Or (var_A0 = "By")) Then
  loc_1257C34:           Set var_88 = Me.TxtDr
  loc_1257C3A:           Call 0.Method_Proc_185_146_125805C0 ((arg_C - 1), var_8C)
  loc_1257C54:           If (var_8C.Visible = 0) Then
  loc_1257C66:             Set var_88 = Me.TxtDr
  loc_1257C6C:             Call 0.Method_Proc_185_146_125805C0 ((arg_C - 1), var_8C)
  loc_1257C74:             var_8C.Visible = True
  loc_1257C80:           End If
  loc_1257C8D:           Set var_88 = Me.TxtDr
  loc_1257C93:           Call 0.Method_Proc_185_146_125805C0 ((arg_C - 1))
  loc_1257C9B:           var_8C.SetFocus
  loc_1257CAA:         Else
  loc_1257CBA:           Set var_88 = Me.TxtCrDr
  loc_1257CC0:           Call 0.Method_Proc_185_146_125805C0 ((arg_C - 1), var_8C)
  loc_1257CE5:           Set var_98 = Me.TxtCrDr
  loc_1257CEB:           Call 0.Method_Proc_185_146_125805C0 ((arg_C - 1), var_9C, var_A0)
  loc_1257CF3:           (var_8C.Text = "Cr") = var_9C.Text
  loc_1257D13:           If (var_8C Or (var_A0 = "To")) Then
  loc_1257D26:             Set var_88 = Me.TxtCr
  loc_1257D2C:             Call 0.Method_Proc_185_146_125805C0 ((arg_C - 1), var_8C)
  loc_1257D34:             var_8E = var_8C.Visible
  loc_1257D46:             If (var_8E = 0) Then
  loc_1257D58:               Set var_88 = Me.TxtCr
  loc_1257D5E:               Call 0.Method_Proc_185_146_125805C0 ((arg_C - 1), var_8C)
  loc_1257D66:               var_8C.Visible = True
  loc_1257D72:             End If
  loc_1257D7F:             Set var_88 = Me.TxtCr
  loc_1257D85:             Call 0.Method_Proc_185_146_125805C0 ((arg_C - 1))
  loc_1257D8D:             var_8C.SetFocus
  loc_1257D99:           End If
  loc_1257D99:         End If
  loc_1257D99:       End If
  loc_1257D99:     End If
  loc_1257D99:   End If
  loc_1257D9C: Else
  loc_1257DA2:   If (arg_C = 0) Then
  loc_1257DAE:     If (global_108 = 0) Then
  loc_1257DB1:       Exit Sub
  loc_1257DB2:     End If
  loc_1257DBE:     global_108 = (global_108 - 1)
  loc_1257DCF:     Call Proc_185_148_13540F4("Previous", 0)
  loc_1257DE2:     If (global_112 = "Y") Then
  loc_1257DF2:       Set var_88 = Me.TxtNar
  loc_1257DF8:       Call 0.Method_Proc_185_146_125805C0 (arg_C, var_8C, var_8E)
  loc_1257E00:       global_108 = var_8C.Visible
  loc_1257E12:       If (var_8E = 0) Then
  loc_1257E21:         Set var_88 = Me.TxtNar
  loc_1257E27:         Call 0.Method_Proc_185_146_125805C0 (arg_C, var_8C)
  loc_1257E2F:         var_8C.Visible = True
  loc_1257E3B:       End If
  loc_1257E45:       Set var_88 = Me.TxtNar
  loc_1257E4B:       Call 0.Method_Proc_185_146_125805C0 (arg_C, var_8C)
  loc_1257E53:       var_8C.SetFocus
  loc_1257E62:     Else
  loc_1257E6D:       If (global_112 = "N") Then
  loc_1257E7D:         Set var_88 = Me.TxtCrDr
  loc_1257E83:         Call 0.Method_Proc_185_146_125805C0 (arg_C, var_8C)
  loc_1257EA5:         Set var_98 = Me.TxtCrDr
  loc_1257EAB:         Call 0.Method_Proc_185_146_125805C0 (arg_C, var_9C, var_A0)
  loc_1257EB3:         (var_8C.Text = "Dr") = var_9C.Text
  loc_1257ED3:         If (var_8C Or (var_A0 = "By")) Then
  loc_1257EE3:           Set var_88 = Me.TxtDr
  loc_1257EE9:           Call 0.Method_Proc_185_146_125805C0 (arg_C, var_8C)
  loc_1257F03:           If (var_8C.Visible = 0) Then
  loc_1257F12:             Set var_88 = Me.TxtDr
  loc_1257F18:             Call 0.Method_Proc_185_146_125805C0 (arg_C, var_8C)
  loc_1257F20:             var_8C.Visible = True
  loc_1257F2C:           End If
  loc_1257F36:           Set var_88 = Me.TxtDr
  loc_1257F3C:           Call 0.Method_Proc_185_146_125805C0 (arg_C)
  loc_1257F44:           var_8C.SetFocus
  loc_1257F53:         Else
  loc_1257F60:           Set var_88 = Me.TxtCrDr
  loc_1257F66:           Call 0.Method_Proc_185_146_125805C0 (arg_C, var_8C)
  loc_1257F6E:           var_94 = var_8C.Text
  loc_1257F88:           Set var_98 = Me.TxtCrDr
  loc_1257F8E:           Call 0.Method_Proc_185_146_125805C0 (arg_C, var_9C, var_A0)
  loc_1257F96:           (var_94 = "Cr") = var_9C.Text
  loc_1257FB6:           If (var_8C Or (var_A0 = "To")) Then
  loc_1257FC6:             Set var_88 = Me.TxtCr
  loc_1257FCC:             Call 0.Method_Proc_185_146_125805C0 (arg_C, var_8C)
  loc_1257FE6:             If (var_8C.Visible = 0) Then
  loc_1257FF5:               Set var_88 = Me.TxtCr
  loc_1257FFB:               Call 0.Method_Proc_185_146_125805C0 (arg_C, var_8C)
  loc_1258003:               var_8C.Visible = True
  loc_125800F:             End If
  loc_1258019:             Set var_88 = Me.TxtCr
  loc_125801F:             Call 0.Method_Proc_185_146_125805C0 (arg_C)
  loc_1258027:             var_8C.SetFocus
  loc_1258033:           End If
  loc_1258033:         End If
  loc_1258033:       End If
  loc_1258033:     End If
  loc_1258033:   End If
  loc_1258033: End If
  loc_1258033: Exit Sub
  loc_1258034: ' Referenced from: 1257AF0
  loc_125803A: Call 0.Method_arg_50 (var_94)
  loc_125804F: Proc_183_57_104AA84(var_94, "previousRow")
  loc_125805B: Exit Sub
End Sub

Public Sub Proc_185_147_12E3B28(arg_C) '12E3B28
  'Data Table: 5C26A4
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  Dim var_B4 As TextBox
  Dim var_8C As Variant
  Dim var_D0 As Double
  Dim arg_C As Integer
  Dim Me As Recordset15
  Dim var_94 As String
  loc_12E3488: On Error Goto loc_12E3AFE
  loc_12E34A0: Set var_8C = Me.TxtAcName
  loc_12E34A6: Call 0.Method_Proc_185_147_12E3B280 (arg_C, var_90)
  loc_12E34AE: var_94 = var_90.Tag
  loc_12E34C8: Set var_98 = Me.TxtAcName
  loc_12E34CE: Call 0.Method_Proc_185_147_12E3B280 (arg_C, var_9C, var_A0)
  loc_12E34D6: (var_94 = vbNullString) = var_9C.Text
  loc_12E34F1: Set var_A4 = Me.TxtCr
  loc_12E34F7: Call 0.Method_Proc_185_147_12E3B280 (arg_C, var_A8)
  loc_12E351E: Set var_B0 = Me.TxtDr
  loc_12E3524: Call 0.Method_Proc_185_147_12E3B280 (arg_C, var_B4, var_B8)
  loc_12E352C: (CDbl(Val(var_A8.Text)) = CDbl(0)) = var_B4.Text
  loc_12E355E: If ( And ((&HFF And (var_A0 = vbNullString)) Or (CDbl(Val(var_B8)) = CDbl(0)))) Then
  loc_12E3561:   Exit Sub
  loc_12E3562: End If
  loc_12E356E: If (CInt(global_110) = 3) Then
  loc_12E359C:   If (CLng((arg_C + global_108)) = (CLng(Me.FGrid1.Rows) - 1)) Then
  loc_12E359F:     Exit Sub
  loc_12E35A0:   End If
  loc_12E35A0: End If
  loc_12E35AA: If (arg_C = global_136) Then
  loc_12E35B9:   global_108 = (global_108 + 1)
  loc_12E35C8:   Set var_98 = Me.LblCrAmt
  loc_12E35CE:   Call 0.Method_Proc_185_147_12E3B280 (0, var_9C)
  loc_12E35D6:   var_A0 = var_9C.Caption
  loc_12E35E3:   var_D0 = Val(var_A0)
  loc_12E35F2:   Set var_8C = Me.LblDrAmt
  loc_12E35F8:   Call 0.Method_Proc_185_147_12E3B280 (0, var_90, var_94)
  loc_12E3628:   If (CDbl((Val(var_94) + var_90.Caption)) > CDbl(0)) Then
  loc_12E3631:     var_94 = "Next"
  loc_12E3637:     Call Proc_185_148_13540F4(var_94, arg_C)
  loc_12E363F:   End If
  loc_12E3645:   arg_C = (arg_C - 1)
  loc_12E3648: End If
  loc_12E3654: Set var_98 = Me.LblCrAmt
  loc_12E365A: Call 0.Method_Proc_185_147_12E3B280 (0, var_9C, var_A0)
  loc_12E3662: arg_C = var_9C.Caption
  loc_12E366F: var_D0 = Val(var_A0)
  loc_12E367E: Set var_8C = Me.LblDrAmt
  loc_12E3684: Call 0.Method_Proc_185_147_12E3B280 (0, var_90, var_94)
  loc_12E36B1: If (CDbl(Val(var_94)) = CDbl(var_90.Caption)) Then
  loc_12E36C4:   Set var_8C = Me.TxtCrDr
  loc_12E36CA:   Call 0.Method_Proc_185_147_12E3B280 ((arg_C + 1), var_90)
  loc_12E36EF:   Set var_98 = Me.TxtCrDr
  loc_12E36F5:   Call 0.Method_Proc_185_147_12E3B280 ((arg_C + 1), var_9C, var_A0)
  loc_12E36FD:   (var_90.Text = "Dr") = var_9C.Text
  loc_12E371D:   If (global_108 Or (var_A0 = "By")) Then
  loc_12E372F:     Set var_8C = Me.TxtCr
  loc_12E3735:     Call 0.Method_Proc_185_147_12E3B280 ((arg_C + 1), var_90)
  loc_12E373D:     var_90.Visible = False
  loc_12E3749:   End If
  loc_12E3759:   Set var_8C = Me.TxtCrDr
  loc_12E375F:   Call 0.Method_Proc_185_147_12E3B280 ((arg_C + 1), var_90)
  loc_12E3784:   Set var_98 = Me.TxtCrDr
  loc_12E378A:   Call 0.Method_Proc_185_147_12E3B280 ((arg_C + 1), var_9C)
  loc_12E37B2:   If ((var_90.Text = "Cr") Or (var_9C.Text = "To")) Then
  loc_12E37C4:     Set var_8C = Me.TxtDr
  loc_12E37CA:     Call 0.Method_Proc_185_147_12E3B280 ((arg_C + 1), var_90)
  loc_12E37D2:     var_90.Visible = False
  loc_12E37DE:   End If
  loc_12E37E1: Else
  loc_12E37F1:   Set var_8C = Me.TxtDr
  loc_12E37F7:   Call 0.Method_Proc_185_147_12E3B280 ((arg_C + 1), var_90)
  loc_12E381C:   Set var_98 = Me.TxtCr
  loc_12E3822:   Call 0.Method_Proc_185_147_12E3B280 ((arg_C + 1), var_9C)
  loc_12E384A:   If ((var_90.Text = vbNullString) And (var_9C.Text = vbNullString)) Then
  loc_12E3859:     Set var_98 = Me.LblDrAmt
  loc_12E385F:     Call 0.Method_Proc_185_147_12E3B280 (0, var_9C)
  loc_12E3883:     Set var_8C = Me.LblCrAmt
  loc_12E3889:     Call 0.Method_Proc_185_147_12E3B280 (0, var_90)
  loc_12E38B6:     If (CDbl(Val(var_90.Caption)) > CDbl(Val(var_9C.Caption))) Then
  loc_12E38D6:       var_90 = Me.Fields.Item("ToBy")
  loc_12E3918:       var_94 = CStr(IIf((var_90.Value = "Yes"), "By", "Dr"))
  loc_12E3929:       Set var_98 = Me.TxtCrDr
  loc_12E392F:       Call 0.Method_Proc_185_147_12E3B280 ((arg_C + 1), var_9C)
  loc_12E3937:       var_9C.Text = var_94
  loc_12E3966:       Set var_8C = Me.TxtCr
  loc_12E396C:       Call 0.Method_Proc_185_147_12E3B280 ((arg_C + 1), var_90)
  loc_12E3974:       var_90.Visible = False
  loc_12E3980:     End If
  loc_12E398C:     Set var_98 = Me.LblCrAmt
  loc_12E3992:     Call 0.Method_Proc_185_147_12E3B280 (0, var_9C)
  loc_12E39A7:     var_D0 = Val(var_9C.Caption)
  loc_12E39B6:     Set var_8C = Me.LblDrAmt
  loc_12E39BC:     Call 0.Method_Proc_185_147_12E3B280 (0, var_90, var_94)
  loc_12E39E9:     If (CDbl(Val(var_94)) > CDbl(var_90.Caption)) Then
  loc_12E3A09:       var_90 = Me.Fields.Item("ToBy")
  loc_12E3A4B:       var_94 = CStr(IIf((var_90.Value = "Yes"), "To", "Cr"))
  loc_12E3A5C:       Set var_98 = Me.TxtCrDr
  loc_12E3A62:       Call 0.Method_Proc_185_147_12E3B280 ((arg_C + 1), var_9C)
  loc_12E3A6A:       var_9C.Text = var_94
  loc_12E3A99:       Set var_8C = Me.TxtDr
  loc_12E3A9F:       Call 0.Method_Proc_185_147_12E3B280 ((arg_C + 1), var_90)
  loc_12E3AA7:       var_90.Visible = False
  loc_12E3AB3:     End If
  loc_12E3AB3:   End If
  loc_12E3AB3: End If
  loc_12E3AC1: Call Proc_185_157_11ECFEC((arg_C + 1), &HFF)
  loc_12E3AD3: If ((arg_C + 1) = global_136) Then
  loc_12E3AE3:   Set var_8C = Me.TxtCrDr
  loc_12E3AE9:   Call 0.Method_Proc_185_147_12E3B280 ((arg_C + 1), var_90)
  loc_12E3AF1:   var_90.SetFocus
  loc_12E3AFD: End If
  loc_12E3AFD: Exit Sub
  loc_12E3AFE: ' Referenced from: 12E3488
  loc_12E3B04: Call 0.Method_arg_50 (var_94)
  loc_12E3B19: Proc_183_57_104AA84(var_94, "NextRow")
  loc_12E3B25: Exit Sub
End Sub

Public Sub Proc_185_148_13540F4(arg_C) '13540F4
  'Data Table: 5C26A4
  Dim var_88 As Integer
  Dim var_94 As MSFlexGrid
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_BC As Variant
  Dim var_DC As Long
  Dim var_F4 As String
  Dim var_F0 As TextBox
  Dim var_F8 As Variant
  Dim Me As Recordset15
  Dim var_FC As String
  Dim var_100 As String
  Dim var_1A0 As Variant
  Dim var_258 As Double
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_250 As Variant
  Dim var_110 As Variant
  loc_13538FC: On Error Goto loc_13540CC
  loc_1353905: var_88 = global_136
  loc_135390B: var_8C = arg_C
  loc_1353916: If (var_8C = "NextAdd") Then
  loc_1353922:   var_88 = (global_136 - 1)
  loc_1353928: Else
  loc_1353930:   If (var_8C = "Previous") Then
  loc_1353933:     GoTo loc_1353941
  loc_1353936:   End If
  loc_135393E:   If (var_8C = "Current") Then
  loc_1353941:     ' Referenced from:   1353933
  loc_1353941:   End If
  loc_1353941: End If
  loc_1353949: For var_90 = 0 To var_88: var_86 = var_90 'Integer
  loc_135397A:   If (CLng((global_108 + var_86)) > (CLng(Me.FGrid1.Rows) - 1)) Then
  loc_1353985:     Call Proc_185_157_11ECFEC(var_86, 0, 0)
  loc_1353997:     Set var_94 = Me.TxtAcName
  loc_135399D:     Call 0.Method_Proc_185_148_13540F40 (var_86, var_AC, vbNullString)
  loc_13539A5:     var_AC.Tag = var_88
  loc_13539BE:     Set var_94 = Me.TxtAcName
  loc_13539C4:     Call 0.Method_Proc_185_148_13540F40 (var_86, var_AC)
  loc_13539CC:     var_AC.Text = vbNullString
  loc_13539E5:     Set var_94 = Me.TxtCr
  loc_13539EB:     Call 0.Method_Proc_185_148_13540F40 (var_86, var_AC)
  loc_13539F3:     var_AC.Text = vbNullString
  loc_1353A0C:     Set var_94 = Me.TxtDr
  loc_1353A12:     Call 0.Method_Proc_185_148_13540F40 (var_86, var_AC)
  loc_1353A1A:     var_AC.Text = vbNullString
  loc_1353A33:     Set var_94 = Me.TxtCrDr
  loc_1353A39:     Call 0.Method_Proc_185_148_13540F40 (var_86, var_AC)
  loc_1353A41:     var_AC.Text = vbNullString
  loc_1353A5A:     Set var_94 = Me.LblCb
  loc_1353A60:     Call 0.Method_Proc_185_148_13540F40 (var_86, var_AC)
  loc_1353A68:     var_AC.Caption = vbNullString
  loc_1353A77:   Else
  loc_1353A7F:     Call Proc_185_157_11ECFEC(var_86, &HFF)
  loc_1353A8F:     var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1353AB2:     var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_1353ABF:     Set var_AC = Me.TxtCrDr
  loc_1353AC5:     Call 0.Method_Proc_185_148_13540F40 (var_86, var_F0, var_F4)
  loc_1353ACD:     var_F0.Text = 7
  loc_1353AEE:     Set var_94 = Me.TxtCrDr
  loc_1353AF4:     Call 0.Method_Proc_185_148_13540F40 (var_86, var_AC, var_F4)
  loc_1353AFC:     var_BC = var_AC.Text
  loc_1353B16:     Set var_F0 = Me.TxtCrDr
  loc_1353B1C:     Call 0.Method_Proc_185_148_13540F40 (var_86, var_F8, var_FC)
  loc_1353B24:     (var_F4 = "Cr") = var_F8.Text
  loc_1353B44:     If (var_88 Or (var_FC = "To")) Then
  loc_1353B4D:       Me.MoveFirst
  loc_1353B5D:       var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1353B62:       var_DC = 2
  loc_1353BAA:       Me.Find "SUBCODE='" & CStr(Me.FGrid1.TextMatrix)) & "'", 0, 1
  loc_1353BC1:     Else
  loc_1353BC7:       Me.MoveFirst
  loc_1353BD7:       var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1353BDC:       var_DC = 2
  loc_1353C24:       Me.Find "SUBCODE='" & CStr(Me.FGrid1.TextMatrix)) & "'", 0, 1
  loc_1353C38:     End If
  loc_1353C43:     var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1353C48:     var_DC = 2
  loc_1353C5B:     var_A4 = Me.FGrid1.TextMatrix)
  loc_1353C73:     Set var_AC = Me.TxtAcName
  loc_1353C79:     Call 0.Method_Proc_185_148_13540F40 (var_86, var_F0, CStr(var_A4), var_DC, var_BC, var_110, var_A4)
  loc_1353C81:     var_F0.Tag = var_DC
  loc_1353CA0:     var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1353CD0:     Set var_AC = Me.TxtAcName
  loc_1353CD6:     Call 0.Method_Proc_185_148_13540F40 (var_86, var_F0, CStr(Me.FGrid1.TextMatrix)), 3, var_BC)
  loc_1353CDE:     var_F0.Text = var_BC
  loc_1353CFD:     var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1353D2D:     Set var_AC = Me.TxtCr
  loc_1353D33:     Call 0.Method_Proc_185_148_13540F40 (var_86, var_F0, CStr(Me.FGrid1.TextMatrix)), 6, var_BC)
  loc_1353D3B:     var_F0.Text = var_110
  loc_1353D5A:     var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1353D8A:     Set var_AC = Me.TxtDr
  loc_1353D90:     Call 0.Method_Proc_185_148_13540F40 (var_86, var_F0, CStr(Me.FGrid1.TextMatrix)), 5)
  loc_1353D98:     var_F0.Text = var_BC
  loc_1353DB7:     var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1353DE7:     Set var_AC = Me.TxtNar
  loc_1353DED:     Call 0.Method_Proc_185_148_13540F40 (var_86, var_F0, CStr(Me.FGrid1.TextMatrix)), 8)
  loc_1353DF5:     var_F0.Text = var_BC
  loc_1353E14:     var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1353E4D:     If (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) = CDbl(0)) Then
  loc_1353E5D:       Set var_94 = Me.LblCb
  loc_1353E63:       Call 0.Method_Proc_185_148_13540F40 (var_86, var_AC, vbNullString, 9)
  loc_1353E6B:       var_AC.Caption = var_BC
  loc_1353E7A:     Else
  loc_1353E85:       var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1353E8A:       var_DC = 9
  loc_1353EB4:       var_1A0 = CVar(CLng((global_108 + var_86))) 'Long
  loc_1353EDF:       var_258 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1353F15:       var_170 = (1 + Format(CVar(Abs(CDbl(CStr(Me.FGrid1.TextMatrix))))), "0.00"))
  loc_1353F1E:       var_190 = (var_170 + " ")
  loc_1353F4F:       var_250 = (var_190 + IIf((CDbl(var_258) > CDbl(0)), "Cr", "Dr"))
  loc_1353F61:       Set var_F0 = Me.LblCb
  loc_1353F67:       Call 0.Method_Proc_185_148_13540F40 (var_86, var_F8, CStr(var_250), 1, "Current Balance :", var_258, 9)
  loc_1353F6F:       var_F8.Caption = var_1A0
  loc_1353FA3:     End If
  loc_1353FAE:     var_BC = CVar(CLng((global_108 + var_86))) 'Long
  loc_1353FB3:     var_DC = 7
  loc_1353FC6:     var_A4 = Me.FGrid1.TextMatrix)
  loc_1353FD1:     var_F4 = CStr(var_A4)
  loc_1353FE4:     var_110 = CVar(CLng((global_108 + var_86))) 'Long
  loc_1353FF6:     Set var_AC = Me.FGrid1
  loc_1354025:     If (7 Or (CStr(var_AC.TextMatrix)) = "To")) Then
  loc_1354034:       Set var_94 = Me.TxtCr
  loc_135403A:       Call 0.Method_Proc_185_148_13540F40 (var_86, var_AC, &HFF, var_110, (var_F4 = "Cr"), var_DC, var_BC)
  loc_1354042:       var_AC.Visible = var_A4
  loc_135405A:       Set var_94 = Me.TxtDr
  loc_1354060:       Call 0.Method_Proc_185_148_13540F40 (var_86, var_AC, 0, var_DC)
  loc_1354068:       var_AC.Visible = var_BC
  loc_1354077:     Else
  loc_1354083:       Set var_94 = Me.TxtDr
  loc_1354089:       Call 0.Method_Proc_185_148_13540F40 (var_86, var_AC, &HFF)
  loc_1354091:       var_AC.Visible = var_A4
  loc_13540A9:       Set var_94 = Me.TxtCr
  loc_13540AF:       Call 0.Method_Proc_185_148_13540F40 (var_86, var_AC, 0)
  loc_13540B7:       var_AC.Visible = var_DC
  loc_13540C3:     End If
  loc_13540C3:   End If
  loc_13540C6: Next var_90 'Integer
  loc_13540CB: Exit Sub
  loc_13540CC: ' Referenced from: 13538FC
  loc_13540D2: Call 0.Method_arg_50 (var_F4)
  loc_13540DA: var_100 = "ScrollFiller"
  loc_13540E7: Proc_183_57_104AA84(var_F4)
  loc_13540F3: Exit Sub
End Sub

Public Sub Proc_185_149_125DC60(arg_C) '125DC60
  'Data Table: 5C26A4
  Dim var_8C As MSFlexGrid
  Dim var_E4 As String
  Dim var_E0 As Variant
  Dim var_AC As Variant
  Dim arg_C As Integer
  Dim var_154 As Double
  Dim var_15C As Double
  Dim var_CC As Variant
  Dim var_148 As Label
  loc_125D6F8: On Error Goto loc_125DC38
  loc_125D707: If (CInt(global_110) = 3) Then
  loc_125D70A:   Exit Sub
  loc_125D70B: End If
  loc_125D710: global_132 = &HFF
  loc_125D732: If (CLng(Me.FGrid1.Rows) > 0) Then
  loc_125D767:   Set var_8C = Me.LblDrAmt
  loc_125D76D:   Call 0.Method_Proc_185_149_125DC600 (0, var_E0, CStr(Format(0, "0.00")))
  loc_125D775:   var_E0.Caption = 1
  loc_125D7BF:   Set var_8C = Me.LblCrAmt
  loc_125D7C5:   Call 0.Method_Proc_185_149_125DC600 (0, var_E0, CStr(Format(0, "0.00")), 1)
  loc_125D7CD:   var_E0.Caption = 1
  loc_125D812:   If (((global_108 + arg_C) = 0) And (CLng(Me.FGrid1.Rows) = 1)) Then
  loc_125D828:     Me.FGrid1.Rows = 0
  loc_125D832:     arg_C = 0
  loc_125D83A:     global_108 = 0
  loc_125D840:   Else
  loc_125D84B:     var_AC = CVar(CLng((global_108 + arg_C))) 'Long
  loc_125D854:     Set var_8C = Me.FGrid1
  loc_125D86E:     If (global_108 > 0) Then
  loc_125D87D:       global_108 = (global_108 - 1)
  loc_125D880:       GoTo loc_125D883
  loc_125D883:       ' Referenced from:   125D880
  loc_125D883:     End If
  loc_125D883:   End If
  loc_125D88F:   Call Proc_185_148_13540F4("Next")
  loc_125D8C9:   Set var_8C = Me.LblDrAmt
  loc_125D8CF:   Call 0.Method_Proc_185_149_125DC600 (0, var_E0, CStr(Format(0, "0.00")), 1, 1, arg_C, global_108)
  loc_125D8D7:   var_E0.Caption = FGrid1.DispID_10000
  loc_125D914:   var_E4 = CStr(Format(0, "0.00"))
  loc_125D921:   Set var_8C = Me.LblCrAmt
  loc_125D927:   Call 0.Method_Proc_185_149_125DC600 (0, var_E0, var_E4, 1, 1)
  loc_125D92F:   var_E0.Caption = 0
  loc_125D966:   If (CLng(Me.FGrid1.Rows) > 0) Then
  loc_125D98E:     For var_E8 = 0 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_88 = var_E8 'Integer
  loc_125D9A0:       Set var_8C = Me.LblDrAmt
  loc_125D9A6:       Call 0.Method_Proc_185_149_125DC600 (0, var_E0, var_E4, 0)
  loc_125D9AE:       global_108 = var_E0.Caption
  loc_125D9ED:       var_15C = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_125DA0C:       var_CC = CVar((Val(var_E4) + var_15C)) 'Double
  loc_125DA28:       Set var_144 = Me.LblDrAmt
  loc_125DA2E:       Call 0.Method_Proc_185_149_125DC600 (0, var_148, CStr(Format("0.00", "0.00")), 1, 1, var_15C)
  loc_125DA36:       var_148.Caption = 5
  loc_125DA68:       Set var_8C = Me.LblCrAmt
  loc_125DA6E:       Call 0.Method_Proc_185_149_125DC600 (0, var_E0, var_E4, CVar(CLng(var_88)))
  loc_125DA76:       var_154 = var_E0.Caption
  loc_125DA8A:       var_AC = CVar(CLng(var_88)) 'Long
  loc_125DAB5:       var_15C = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_125DAD4:       var_CC = CVar((Val(var_E4) + var_15C)) 'Double
  loc_125DAF0:       Set var_144 = Me.LblCrAmt
  loc_125DAF6:       Call 0.Method_Proc_185_149_125DC600 (0, var_148, CStr(Format("0.00", "0.00")), 1, 1, var_15C)
  loc_125DAFE:       var_148.Caption = 6
  loc_125DB27:     Next var_E8 'Integer
  loc_125DB2C:   End If
  loc_125DB35:   Set var_8C = Me.LblDrAmt
  loc_125DB3B:   Call 0.Method_Proc_185_149_125DC600 (0)
  loc_125DB43:   var_E0.Refresh
  loc_125DB58:   Set var_8C = Me.LblCrAmt
  loc_125DB5E:   Call 0.Method_Proc_185_149_125DC600 (0, var_E0)
  loc_125DB66:   var_E0.Refresh
  loc_125DB7F:   Set var_8C = Me.TxtCrDr
  loc_125DB85:   Call 0.Method_Proc_185_149_125DC600 (arg_C, var_E0)
  loc_125DB9F:   If (var_E0.Visible = &HFF) Then
  loc_125DBAC:     Set var_8C = Me.TxtCrDr
  loc_125DBB2:     Call 0.Method_Proc_185_149_125DC600 (arg_C, var_E0)
  loc_125DBBA:     var_E0.SetFocus
  loc_125DBC9:   Else
  loc_125DBCF:     If (arg_C = 0) Then
  loc_125DBDC:       Call Proc_185_157_11ECFEC(0, &HFF)
  loc_125DBEB:       Set var_8C = Me.TxtCrDr
  loc_125DBF1:       Call 0.Method_Proc_185_149_125DC600 (arg_C, var_E0)
  loc_125DBF9:       var_E0.SetFocus
  loc_125DC08:     Else
  loc_125DC15:       Set var_8C = Me.TxtCrDr
  loc_125DC1B:       Call 0.Method_Proc_185_149_125DC600 ((arg_C - 1), var_E0)
  loc_125DC23:       var_E0.SetFocus
  loc_125DC2F:     End If
  loc_125DC2F:   End If
  loc_125DC2F: End If
  loc_125DC34: global_132 = 0
  loc_125DC37: Exit Sub
  loc_125DC38: ' Referenced from: 125D6F8
  loc_125DC3E: Call 0.Method_arg_50 (var_E4, global_132)
  loc_125DC53: Proc_183_57_104AA84(var_E4, "RowDelete")
  loc_125DC5F: Exit Sub
End Sub

Public Sub Proc_185_150_FEB7C8
  'Data Table: 5C26A4
  Dim var_A8 As Variant
  Dim var_CC As Variant
  Dim var_E0 As Long
  Dim var_F4 As String
  loc_FEB5EC: On Error Goto loc_FEB7A0
  loc_FEB62E: If (CLng(Me.FgridAdjust.Col) = &HA) Then
  loc_FEB63D:   Me.TXTADJ_AMT.Visible = True
  loc_FEB655:   Me.TXTADJ_AMT.ZOrder 0
  loc_FEB65D:   var_A8 = 9
  loc_FEB688:   Me.TXTADJ_AMT.Width = CDbl(CLng(Me.FgridAdjust.ColWidth)))
  loc_FEB6CF:   Me.TXTADJ_AMT.Top = (CDbl(Me.FgridAdjust.Top) + CDbl(CLng(Me.FgridAdjust.CellTop)))
  loc_FEB6EE:   var_CC = Me.FgridAdjust.CellLeft
  loc_FEB71C:   Me.TXTADJ_AMT.Left = (CDbl(Me.FgridAdjust.Left) + CDbl(CLng(var_CC)))
  loc_FEB738:   var_A8 = CVar(CLng(CInt(CLng(Me.FgridAdjust.Row)))) 'Long
  loc_FEB73D:   var_E0 = &HA
  loc_FEB75B:   var_F4 = CStr(Me.FgridAdjust.TextMatrix))
  loc_FEB772:   Me.TXTADJ_AMT.Text = CStr(Val(var_F4))
  loc_FEB792:   Me.TXTADJ_AMT.SetFocus
  loc_FEB79A: End If
  loc_FEB79A: Call Proc_185_161_1010428(var_E0, var_A8, var_CC)
  loc_FEB79F: Exit Sub
  loc_FEB7A0: ' Referenced from: FEB5EC
  loc_FEB7A6: Call 0.Method_arg_50 (var_F4, var_CC)
  loc_FEB7BB: Proc_183_57_104AA84(var_F4, "UPD_ADJ")
  loc_FEB7C7: Exit Sub
End Sub

Public Sub Proc_185_151_DFB548
  'Data Table: 5C26A4
  loc_DFB544: Exit Sub
End Sub

Public Sub Proc_185_152_EF0008
  'Data Table: 5C26A4
  loc_EEFF40: On Error Goto loc_EEFFDE
  loc_EEFF4C: If (global_108 > 0) Then
  loc_EEFF5B:   Me.PicUP.Visible = True
  loc_EEFF66: Else
  loc_EEFF72:   Me.PicUP.Visible = False
  loc_EEFF7A: End If
  loc_EEFFAF: If ((((CLng(Me.FGrid1.Rows) - 1) - CLng(global_108)) - CLng(global_136)) > 0) Then
  loc_EEFFBE:   Me.PicDN.Visible = True
  loc_EEFFC9: Else
  loc_EEFFD5:   Me.PicDN.Visible = False
  loc_EEFFDD: End If
  loc_EEFFDD: Exit Sub
  loc_EEFFDE: ' Referenced from: EEFF40
  loc_EEFFE4: Call 0.Method_arg_50 (var_9C)
  loc_EEFFEC: var_A4 = "PicDisp"
  loc_EEFFF9: Proc_183_57_104AA84(var_9C)
  loc_EF0005: Exit Sub
End Sub

Public Sub Proc_185_153_E6F3B8
  'Data Table: 5C26A4
  loc_E6F364: On Error Goto loc_E6F390
  loc_E6F373: Me.PicUP.Visible = False
  loc_E6F387: Me.PicDN.Visible = False
  loc_E6F38F: Exit Sub
  loc_E6F390: ' Referenced from: E6F364
  loc_E6F396: Call 0.Method_arg_50 (var_8C)
  loc_E6F39E: var_94 = "PicFalse"
  loc_E6F3AB: Proc_183_57_104AA84(var_8C)
  loc_E6F3B7: Exit Sub
End Sub

Public Sub Proc_185_154_14B6C6C(arg_C) '14B6C6C
  'Data Table: 5C26A4
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A4 As Variant
  Dim var_FC As Variant
  Dim var_A8 As String
  Dim var_120 As Variant
  Dim var_10C As Variant
  Dim var_140 As Variant
  Dim var_110 As MSHFlexGrid
  Dim var_160 As Variant
  Dim var_164 As String
  Dim var_168 As MSHFlexGrid
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_1BC As MSHFlexGrid
  Dim var_1CC As Variant
  Dim var_130 As Variant
  Dim var_1F0 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim Me As Recordset15
  loc_14B5F88: On Error Goto loc_14B6C3D
  loc_14B5F8B: Call Proc_185_162_11F8598()
  loc_14B5F9C: If (arg_C = 0) Then
  loc_14B5FB2:   var_A0 = CLng(Me.FGridRef.Col)
  loc_14B5FC2:   If (var_A0 = CLng(1)) Then
  loc_14B5FD8:     var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B5FF2:     Set var_8C = Me.TxtGrid
  loc_14B5FF8:     Call 0.Method_Proc_185_154_14B6C6C0 (arg_C, var_A4, var_A8, CVar(CLng(1)))
  loc_14B6000:     var_BC = var_A4.Text
  loc_14B6008:     var_FC = CVar(var_A8) 'String
  loc_14B6010:     Set var_110 = Me.FGridRef
  loc_14B6016:     LateIdCallSt
  loc_14B6043:     var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B604B:     var_DC = CVar(CLng(1)) 'Long
  loc_14B6065:     var_A8 = CStr(Me.FGridRef.TextMatrix))
  loc_14B6080:     var_10C = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6088:     var_140 = CVar(CLng(1)) 'Long
  loc_14B60A2:     var_164 = CStr(Me.FGridRef.TextMatrix))
  loc_14B60BE:     var_188 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6110:     If (CVar(CLng(1)) And (CStr(Me.FGridRef.TextMatrix)) <> "New Ref")) Then
  loc_14B6126:       var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B612E:       var_DC = CVar(CLng(1)) 'Long
  loc_14B6133:       var_10C = "On Account"
  loc_14B613D:       Set var_A4 = Me.FGridRef
  loc_14B6143:       LateIdCallSt
  loc_14B6155:     End If
  loc_14B6168:     var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6179:     Set var_A4 = Me.FGridRef
  loc_14B61B5:     var_130 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B61C6:     Set var_110 = Me.FGridRef
  loc_14B61D7:     var_A8 = CStr(var_110.TextMatrix))
  loc_14B625B:     If CBool(CVar(CLng(1)) And (CStr(Me.FGridRef.TextMatrix)) <> "On Account")) Then
  loc_14B628A:       Set var_8C = Me.TxtVtYpe
  loc_14B6290:       Call 0.Method_Proc_185_154_14B6C6C0 (0, var_A4, var_A8, CVar(CLng(2)), CVar(CLng(Me.FGridRef.Row)), CVar(CLng(Me.FGridRef.Row)), CVar(CLng(1)) And (var_A8 <> "Ag.Ref."))
  loc_14B6298:       var_130 = var_A4.Tag
  loc_14B62AE:       var_BC = "-"
  loc_14B62B3:       var_120 = (Trim(CVar(var_A8)) + var_BC)
  loc_14B62C0:       Set var_AC = Me.TxtVno
  loc_14B62C6:       Call 0.Method_Proc_185_154_14B6C6C0 (0, var_110, CVar(CStr(var_A4.TextMatrix))), (Trim(CVar(CStr(var_A4.TextMatrix)))) = vbNullString), CVar(CLng(2)))
  loc_14B62DD:       var_1CC = (var_BC + Trim(CVar(var_110)))
  loc_14B62E2:       var_1F0 = CVar(CStr(Me.FGridRef.Row)) 'String
  loc_14B62EA:       Set var_1BC = Me.FGridRef
  loc_14B62F0:       LateIdCallSt
  loc_14B6318:     End If
  loc_14B632B:     var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6333:     var_DC = CVar(CLng(8)) 'Long
  loc_14B633C:     Set var_A4 = Me.FGridRef
  loc_14B6375:     If (Trim(CVar(CStr(var_A4.TextMatrix)))) = vbNullString) Then
  loc_14B63A4:       Set var_8C = Me.VchDt
  loc_14B63AA:       Call 0.Method_Proc_185_154_14B6C6C0 (0, var_A4, var_A8, CVar(CLng(8)), CVar(CLng(Me.FGridRef.Row)), CVar(CLng(8)))
  loc_14B63B2:       var_BC = var_A4.Text
  loc_14B63BA:       var_FC = CVar(var_A8) 'String
  loc_14B63C2:       Set var_110 = Me.FGridRef
  loc_14B63C8:       LateIdCallSt
  loc_14B63E2:     End If
  loc_14B6425:     If ((Me.LblRefAdjDrCrBal.Caption = "Dr") Or (Me.LblRefAdjDrCrBal.Caption = "By")) Then
  loc_14B643B:       var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6443:       var_DC = CVar(CLng(3)) 'Long
  loc_14B6463:       var_160 = Trim(CVar(CStr(Me.FGridRef.TextMatrix))))
  loc_14B646B:       var_10C = vbNullString
  loc_14B6488:       var_130 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B64E6:       If CBool(CVar(CLng(4)) And (Trim(CVar(CStr(Me.FGridRef.TextMatrix)))) = vbNullString)) Then
  loc_14B6519:         var_DC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6521:         var_10C = CVar(CLng(4)) 'Long
  loc_14B654E:         var_178 = CVar(CStr(Format(CVar(Val(Me.LblRefAdjBal.Caption)), "0.00"))) 'String
  loc_14B6556:         Set var_AC = Me.FGridRef
  loc_14B655C:         LateIdCallSt
  loc_14B657D:       End If
  loc_14B6580:     Else
  loc_14B65C3:       If ((Me.LblRefAdjDrCrBal.Caption = "Cr") Or (Me.LblRefAdjDrCrBal.Caption = "By")) Then
  loc_14B65D9:         var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B65E1:         var_DC = CVar(CLng(3)) 'Long
  loc_14B6601:         var_160 = Trim(CVar(CStr(Me.FGridRef.TextMatrix))))
  loc_14B6609:         var_10C = vbNullString
  loc_14B6626:         var_130 = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6684:         If CBool(CVar(CLng(4)) And (Trim(CVar(CStr(Me.FGridRef.TextMatrix)))) = vbNullString)) Then
  loc_14B66B7:           var_DC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B66BF:           var_10C = CVar(CLng(3)) 'Long
  loc_14B66EC:           var_178 = CVar(CStr(Format(CVar(Val(Me.LblRefAdjBal.Caption)), "0.00"))) 'String
  loc_14B66F4:           Set var_AC = Me.FGridRef
  loc_14B66FA:           LateIdCallSt
  loc_14B671B:         End If
  loc_14B671B:       End If
  loc_14B671B:     End If
  loc_14B671E:   Else
  loc_14B6725:     If (var_A0 = CLng(2)) Then
  loc_14B674C:       Set var_A4 = Me.FGridRef
  loc_14B675D:       var_A8 = CStr(var_A4.TextMatrix))
  loc_14B6776:       If (var_A8 = "Ag.Ref.") Then
  loc_14B67C7:         Set var_8C = Me.TxtGrid
  loc_14B67CD:         Call 0.Method_Proc_185_154_14B6C6C0 (arg_C, var_A4, var_A8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), CVar(CLng(1)), CVar(CLng(Me.FGridRef.Row)), var_AC)
  loc_14B67D5:         var_178 = var_A4.Text
  loc_14B67ED:         If (1 Or (var_A8 = vbNullString)) Then
  loc_14B6803:           var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B680B:           var_DC = CVar(CLng(2)) 'Long
  loc_14B6810:           var_10C = vbNullString
  loc_14B681A:           Set var_A4 = Me.FGridRef
  loc_14B6820:           LateIdCallSt
  loc_14B6835:         Else
  loc_14B6848:           var_CC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6850:           var_EC = CVar(CLng(2)) 'Long
  loc_14B6872:           var_A4 = Me.Fields.Item("RefNo")
  loc_14B6883:           var_120 = CVar(CStr(var_A4.Value)) 'String
  loc_14B688B:           Set var_110 = Me.FGridRef
  loc_14B6891:           LateIdCallSt
  loc_14B68AD:         End If
  loc_14B68BC:         Me.DGRefNo.Visible = False
  loc_14B68C7:       Else
  loc_14B68F4:         Set var_8C = Me.TxtGrid
  loc_14B68FA:         Call 0.Method_Proc_185_154_14B6C6C0 (arg_C, var_A4, var_A8, CVar(CLng(2)), CVar(CLng(Me.FGridRef.Row)), var_110, var_120)
  loc_14B6902:         var_EC = var_A4.Text
  loc_14B690A:         var_FC = CVar(var_A8) 'String
  loc_14B6912:         Set var_110 = Me.FGridRef
  loc_14B6918:         LateIdCallSt
  loc_14B6932:       End If
  loc_14B6935:     Else
  loc_14B693C:       If (var_A0 = CLng(3)) Then
  loc_14B694C:         Set var_8C = Me.TxtGrid
  loc_14B6952:         Call 0.Method_Proc_185_154_14B6C6C0 (arg_C, var_A4, var_A8, var_110, var_FC, var_CC)
  loc_14B695A:         var_A4 = var_A4.Text
  loc_14B6972:         var_CC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B697A:         var_EC = CVar(CLng(3)) 'Long
  loc_14B69A6:         var_178 = CVar(CStr(Format(CVar(var_A8), "0.00"))) 'String
  loc_14B69AE:         Set var_110 = Me.FGridRef
  loc_14B69B4:         LateIdCallSt
  loc_14B69E7:         var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B69EF:         var_DC = CVar(CLng(3)) 'Long
  loc_14B6A09:         var_A8 = CStr(Me.FGridRef.TextMatrix))
  loc_14B6A27:         If (CDbl(Val(var_A8)) > CDbl(0)) Then
  loc_14B6A3D:           var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6A45:           var_DC = CVar(CLng(4)) 'Long
  loc_14B6A4A:           var_10C = "0.00"
  loc_14B6A54:           Set var_A4 = Me.FGridRef
  loc_14B6A5A:           LateIdCallSt
  loc_14B6A6C:         End If
  loc_14B6A6F:       Else
  loc_14B6A76:         If (var_A0 = CLng(4)) Then
  loc_14B6A86:           Set var_8C = Me.TxtGrid
  loc_14B6A8C:           Call 0.Method_Proc_185_154_14B6C6C0 (arg_C, var_A4, var_A8, var_A4, var_10C, var_DC, var_BC)
  loc_14B6A94:           var_DC = var_A4.Text
  loc_14B6AAC:           var_CC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6AB4:           var_EC = CVar(CLng(4)) 'Long
  loc_14B6AE0:           var_178 = CVar(CStr(Format(CVar(var_A8), "0.00"))) 'String
  loc_14B6AE8:           Set var_110 = Me.FGridRef
  loc_14B6AEE:           LateIdCallSt
  loc_14B6B21:           var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6B29:           var_DC = CVar(CLng(4)) 'Long
  loc_14B6B43:           var_A8 = CStr(Me.FGridRef.TextMatrix))
  loc_14B6B61:           If (CDbl(Val(var_A8)) > CDbl(0)) Then
  loc_14B6B77:             var_BC = CVar(CLng(Me.FGridRef.Row)) 'Long
  loc_14B6B7F:             var_DC = CVar(CLng(3)) 'Long
  loc_14B6B84:             var_10C = "0.00"
  loc_14B6B8E:             Set var_A4 = Me.FGridRef
  loc_14B6B94:             LateIdCallSt
  loc_14B6BA6:           End If
  loc_14B6BA9:         Else
  loc_14B6BB0:           If (var_A0 = CLng(8)) Then
  loc_14B6BBD:             Set var_8C = Me.TxtGrid
  loc_14B6BC3:             Call 0.Method_Proc_185_154_14B6C6C0 (arg_C, var_A4, var_A4, var_10C, var_DC, var_BC, var_DC)
  loc_14B6BCC:             Set var_110 = Me.FGridRef
  loc_14B6BFD:             Call 0.Method_arg_184 (var_A4, var_A8, CVar(CLng(8)), CVar(CLng(var_110.Row)), CVar(CLng(var_110.Row)), var_110)
  loc_14B6C05:             var_FC = CVar(var_A8) 'String
  loc_14B6C0D:             Set var_168 = Me.FGridRef
  loc_14B6C13:             LateIdCallSt
  loc_14B6C2D:           End If
  loc_14B6C2D:         End If
  loc_14B6C2D:       End If
  loc_14B6C2D:     End If
  loc_14B6C2D:   End If
  loc_14B6C2D: End If
  loc_14B6C2D: Call Proc_185_162_11F8598(var_168, var_FC, var_178, 1)
  loc_14B6C37: Proc_185_154_14B6C6C = &HFF
  loc_14B6C3D: ' Referenced from: 14B5F88
  loc_14B6C43: Call 0.Method_arg_50 (var_A8, 1)
  loc_14B6C58: Proc_183_57_104AA84(var_A8, "TxtGridLeave")
  loc_14B6C64: Proc_185_154_14B6C6C = var_EC
End Sub

Public Sub Proc_185_155_139B2F4
  'Data Table: 5C26A4
  Dim var_9C As Double
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_148 As String
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_90 As String
  Dim Me As Recordset15
  Dim var_174 As String
  Dim var_178 As Variant
  Dim var_D0 As Variant
  Dim var_184 As Recordset15
  Dim var_194 As Double
  Dim var_18C As TextBox
  loc_139AA0C: On Error Goto loc_139B2CB
  loc_139AA1B: Me.FrameRef.Visible = False
  loc_139AA4A: Call Proc_185_145_E9BED0(CInt(Val(Me.FrameRef.Tag)))
  loc_139AA7A: For var_B0 = 1 To CInt((CLng(Me.FGridRef.Rows) - 1)): var_86 = var_B0 'Integer
  loc_139AA84:   var_100 = CVar(CLng(var_86)) 'Long
  loc_139AA8C:   var_120 = CVar(CLng(4)) 'Long
  loc_139AAB5:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_139AABD:   var_E0 = CVar(CLng(3)) 'Long
  loc_139AAFD:   If (CDbl((Val(CStr(Me.FGridRef.TextMatrix))) + Val(CStr(Me.FGridRef.TextMatrix))))) > CDbl(0)) Then
  loc_139AB04:     var_C0 = CVar(CLng(var_86)) 'Long
  loc_139AB0C:     var_E0 = CVar(CLng(1)) 'Long
  loc_139AB37:     If (CStr(Me.FGridRef.TextMatrix)) <> "On Account") Then
  loc_139AB3E:       var_C0 = CVar(CLng(var_86)) 'Long
  loc_139AB46:       var_E0 = CVar(CLng(2)) 'Long
  loc_139AB60:       var_144 = CVar(CStr(Me.FGridRef.TextMatrix))) 'String
  loc_139AB66:       var_158 = Trim(var_144)
  loc_139AB82:       If (var_158 = vbNullString) Then
  loc_139AB9E:         MsgBox("Ref.No.Needed", 0, var_144, var_158, var_168)
  loc_139ABAE:         Exit Sub
  loc_139ABAF:       End If
  loc_139ABAF:     End If
  loc_139ABAF:   End If
  loc_139ABB2: Next var_B0 'Integer
  loc_139ABCE: If (Me.RecordCount > 0) Then
  loc_139ABDA:   Me.Sort = "V_SNo ASC"
  loc_139AC02:   var_C0 = CVar(CLng((Val(Me.FrameRef.Tag) + CDbl(global_108)))) 'Long
  loc_139AC07:   var_E0 = 1
  loc_139AC4A:   var_174 = "V_SNO=" & CStr(Val(CStr(Me.FGrid1.TextMatrix))))
  loc_139AC53:   Me.Find var_174, 0, 1
  loc_139AC81:   If (Me.EOF = 0) Then
  loc_139AC84:     ' Referenced from: 139AD57
  loc_139ACA9:     var_144 = Me.Fields.Item("V_SNo").Value
  loc_139ACD4:     var_D0 = CVar(CLng((Val(Me.FrameRef.Tag) + CDbl(global_108)))) 'Long
  loc_139AD1F:     If (1 = CVar(Val(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_139AD2D:       Me.Delete
  loc_139AD38:       Me.MoveNext
  loc_139AD51:       If (Me.EOF = &HFF) Then
  loc_139AD54:         GoTo loc_139AD5A
  loc_139AD57:       End If
  loc_139AD57:       GoTo loc_139AC84
  loc_139AD5A:       ' Referenced from: 139AD54
  loc_139AD5A:     End If
  loc_139AD5A:   End If
  loc_139AD5A: End If
  loc_139AD7F: For var_180 = 1 To CInt((CLng(Me.FGridRef.Rows) - 1)): var_86 = var_180 'Integer
  loc_139AD91:   var_E0 = CVar(CLng(3)) 'Long
  loc_139ADAB:   var_90 = CStr(Me.FGridRef.TextMatrix))
  loc_139ADBC:   var_100 = CVar(CLng(var_86)) 'Long
  loc_139AE01:   If (CVar(CLng(4)) Or (CDbl(Val(CStr(Me.FGridRef.TextMatrix)))) > CDbl(0))) Then
  loc_139AE0A:     Set var_184 = global_100 
  loc_139AE19:     var_184.AddNew CVar(CLng(var_86)), var_D0
  loc_139AE41:     var_C0 = CVar(CLng((Val(Me.FrameRef.Tag) + CDbl(global_108)))) 'Long
  loc_139AE46:     var_E0 = 1
  loc_139AE64:     var_148 = CStr(Me.FGrid1.TextMatrix))
  loc_139AE90:     var_184.Fields.Item("V_SNo").Value = CVar(Val(var_148))
  loc_139AEAE:     var_C0 = CVar(CLng(var_86)) 'Long
  loc_139AEB6:     var_E0 = CVar(CLng(5)) 'Long
  loc_139AEF3:     var_184.Fields.Item("DocId").Value = CVar(CStr(Me.FGridRef.TextMatrix)))
  loc_139AF2B:     var_C0 = CVar(CLng((Val(Me.FrameRef.Tag) + CDbl(global_108)))) 'Long
  loc_139AF30:     var_E0 = 2
  loc_139AF71:     var_184.Fields.Item("SUBCODE").Value = CVar(CStr(Me.FGrid1.TextMatrix)))
  loc_139AF8F:     var_C0 = CVar(CLng(var_86)) 'Long
  loc_139AF97:     var_E0 = CVar(CLng(1)) 'Long
  loc_139AFD4:     var_184.Fields.Item("AgRefType").Value = CVar(CStr(Me.FGridRef.TextMatrix)))
  loc_139AFED:     var_C0 = CVar(CLng(var_86)) 'Long
  loc_139AFF5:     var_E0 = CVar(CLng(2)) 'Long
  loc_139B032:     var_184.Fields.Item("AgRefNo").Value = CVar(CStr(Me.FGridRef.TextMatrix)))
  loc_139B04B:     var_C0 = CVar(CLng(var_86)) 'Long
  loc_139B053:     var_E0 = CVar(CLng(3)) 'Long
  loc_139B099:     var_184.Fields.Item("CR").Value = CVar(Val(CStr(Me.FGridRef.TextMatrix))))
  loc_139B0B1:     var_C0 = CVar(CLng(var_86)) 'Long
  loc_139B0B9:     var_E0 = CVar(CLng(4)) 'Long
  loc_139B0FF:     var_184.Fields.Item("DR").Value = CVar(Val(CStr(Me.FGridRef.TextMatrix))))
  loc_139B11F:     var_E0 = CVar(CLng(8)) 'Long
  loc_139B154:     var_178 = var_184.Fields.Item("DueDate")
  loc_139B15C:     var_178.Value = CVar(CStr(Me.FGridRef.TextMatrix)))
  loc_139B17C:     var_184.Update CVar(CLng(var_86)), var_D0
  loc_139B183:     Set var_184 = Nothing 
  loc_139B187:   End If
  loc_139B18A: Next var_180 'Integer
  loc_139B1A9: var_9C = Val(Me.FrameRef.Tag)
  loc_139B1C6: var_194 = Val(Me.FrameRef.Tag)
  loc_139B1D7: Set var_134 = Me.TxtCrDr
  loc_139B1DD: Call 0.Method_Proc_185_155_139B2F40 (CInt(var_9C), var_178, var_148)
  loc_139B200: Set var_188 = Me.TxtCrDr
  loc_139B206: Call 0.Method_Proc_185_155_139B2F40 (CInt(var_178.Text), var_18C, var_174)
  loc_139B20E: (var_148 = "Cr") = var_18C.Text
  loc_139B236: If (var_9C Or (var_174 = "To")) Then
  loc_139B261:   Set var_134 = Me.TxtCr
  loc_139B267:   Call 0.Method_Proc_185_155_139B2F40 (CInt(Val(Me.FrameRef.Tag)), var_178)
  loc_139B26F:   var_178.SetFocus
  loc_139B283: Else
  loc_139B290:   var_90 = Me.FrameRef.Tag
  loc_139B29D:   var_9C = Val(var_90)
  loc_139B2AB:   Set var_134 = Me.TxtDr
  loc_139B2B1:   Call 0.Method_Proc_185_155_139B2F40 (CInt(var_9C), var_178)
  loc_139B2B9:   var_178.SetFocus
  loc_139B2CA: End If
  loc_139B2CA: Exit Sub
  loc_139B2CB: ' Referenced from: 139AA0C
  loc_139B2D1: Call 0.Method_arg_50 (var_90, var_9C)
  loc_139B2E6: Proc_183_57_104AA84(var_90, "RefAdjOk")
  loc_139B2F2: Exit Sub
End Sub

Public Sub Proc_185_156_1115F98
  'Data Table: 5C26A4
  Dim var_AC As Variant
  Dim var_B0 As Variant
  loc_1115C3C: On Error Goto loc_1115F70
  loc_1115C5A: Me.FGrid1.Rows = 0
  loc_1115C6E: Set var_AC = Me.TxtVtYpe
  loc_1115C74: Call 0.Method_Proc_185_156_1115F980 (0, var_B0)
  loc_1115C7C: var_B0.Text = vbNullString
  loc_1115C94: Set var_AC = Me.TxtVtYpe
  loc_1115C9A: Call 0.Method_Proc_185_156_1115F980 (0, var_B0)
  loc_1115CA2: var_B0.Tag = vbNullString
  loc_1115CBA: Set var_AC = Me.TxtVno
  loc_1115CC0: Call 0.Method_Proc_185_156_1115F980 (0, var_B0)
  loc_1115CC8: var_B0.Text = vbNullString
  loc_1115CE1: Me.LblVPrefix.Caption = vbNullString
  loc_1115CF5: Set var_AC = Me.TxtAcName
  loc_1115CFB: Call 0.Method_Proc_185_156_1115F98C (var_B2, var_86)
  loc_1115D09: For var_B6 = 0 To (var_B2 - 1): 0 = var_B6 'Integer
  loc_1115D1C:   Set var_AC = Me.TxtAcName
  loc_1115D22:   Call 0.Method_Proc_185_156_1115F980 (var_86, var_B0)
  loc_1115D2A:   var_B0.Text = vbNullString
  loc_1115D43:   Set var_AC = Me.TxtAcName
  loc_1115D49:   Call 0.Method_Proc_185_156_1115F980 (var_86, var_B0)
  loc_1115D51:   var_B0.Tag = vbNullString
  loc_1115D6A:   Set var_AC = Me.TxtCrDr
  loc_1115D70:   Call 0.Method_Proc_185_156_1115F980 (var_86, var_B0)
  loc_1115D78:   var_B0.Text = vbNullString
  loc_1115D91:   Set var_AC = Me.TxtCrDr
  loc_1115D97:   Call 0.Method_Proc_185_156_1115F980 (var_86, var_B0)
  loc_1115D9F:   var_B0.Tag = vbNullString
  loc_1115DB8:   Set var_AC = Me.TxtCr
  loc_1115DBE:   Call 0.Method_Proc_185_156_1115F980 (var_86, var_B0)
  loc_1115DC6:   var_B0.Text = vbNullString
  loc_1115DDF:   Set var_AC = Me.TxtDr
  loc_1115DE5:   Call 0.Method_Proc_185_156_1115F980 (var_86, var_B0)
  loc_1115DED:   var_B0.Text = vbNullString
  loc_1115E06:   Set var_AC = Me.TxtNar
  loc_1115E0C:   Call 0.Method_Proc_185_156_1115F980 (var_86, var_B0)
  loc_1115E14:   var_B0.Text = vbNullString
  loc_1115E2D:   Set var_AC = Me.LblCb
  loc_1115E33:   Call 0.Method_Proc_185_156_1115F980 (var_86, var_B0)
  loc_1115E3B:   var_B0.Caption = vbNullString
  loc_1115E54:   Set var_AC = Me.LblNar
  loc_1115E5A:   Call 0.Method_Proc_185_156_1115F980 (var_86, var_B0)
  loc_1115E62:   var_B0.Caption = vbNullString
  loc_1115E71: Next var_B6 'Integer
  loc_1115E82: Set var_AC = Me.TxtGlb
  loc_1115E88: Call 0.Method_Proc_185_156_1115F980 (0, var_B0)
  loc_1115E90: var_B0.Text = vbNullString
  loc_1115EA8: Set var_AC = Me.TXTChDate
  loc_1115EAE: Call 0.Method_Proc_185_156_1115F980 (0, var_B0)
  loc_1115EB6: var_B0.Text = vbNullString
  loc_1115ECE: Set var_AC = Me.TxtCHno
  loc_1115ED4: Call 0.Method_Proc_185_156_1115F980 (0, var_B0)
  loc_1115EDC: var_B0.Text = vbNullString
  loc_1115EF4: Set var_AC = Me.TXTClrDate
  loc_1115EFA: Call 0.Method_Proc_185_156_1115F980 (0, var_B0)
  loc_1115F02: var_B0.Text = vbNullString
  loc_1115F1A: Set var_AC = Me.LblDrAmt
  loc_1115F20: Call 0.Method_Proc_185_156_1115F980 (0, var_B0)
  loc_1115F28: var_B0.Caption = vbNullString
  loc_1115F40: Set var_AC = Me.LblCrAmt
  loc_1115F46: Call 0.Method_Proc_185_156_1115F980 (0, var_B0)
  loc_1115F4E: var_B0.Caption = vbNullString
  loc_1115F67: Me.lblDocId.Caption = vbNullString
  loc_1115F6F: Exit Sub
  loc_1115F70: ' Referenced from: 1115C3C
  loc_1115F76: Call 0.Method_arg_50 (var_BC)
  loc_1115F7E: var_C4 = "MakeEmpty"
  loc_1115F8B: Proc_183_57_104AA84(var_BC)
  loc_1115F97: Exit Sub
End Sub

Public Sub Proc_185_157_11ECFEC(arg_C, arg_10) '11ECFEC
  'Data Table: 5C26A4
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim Me As Recordset15
  Dim var_88 As Fields15
  loc_11ECB5C: On Error Goto loc_11ECFC2
  loc_11ECB6C: Set var_88 = Me.TxtCrDr
  loc_11ECB72: Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECB7A: var_8C.Visible = arg_10
  loc_11ECB93: Set var_88 = Me.TxtAcName
  loc_11ECB99: Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECBA1: var_8C.Visible = arg_10
  loc_11ECBBA: Set var_88 = Me.TxtCr
  loc_11ECBC0: Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECBC8: var_8C.Visible = arg_10
  loc_11ECBE1: Set var_88 = Me.TxtDr
  loc_11ECBE7: Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECBEF: var_8C.Visible = arg_10
  loc_11ECC08: Set var_88 = Me.TxtNar
  loc_11ECC0E: Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECC16: var_8C.Visible = arg_10
  loc_11ECC28: If (arg_10 = 0) Then
  loc_11ECC38:   Set var_88 = Me.LblCb
  loc_11ECC3E:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECC46:   var_8C.Caption = vbNullString
  loc_11ECC5F:   Set var_88 = Me.TxtCrDr
  loc_11ECC65:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECC6D:   var_8C.Text = vbNullString
  loc_11ECC86:   Set var_88 = Me.TxtAcName
  loc_11ECC8C:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECC94:   var_8C.Text = vbNullString
  loc_11ECCAD:   Set var_88 = Me.TxtCr
  loc_11ECCB3:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECCBB:   var_8C.Text = vbNullString
  loc_11ECCD4:   Set var_88 = Me.TxtDr
  loc_11ECCDA:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECCE2:   var_8C.Text = vbNullString
  loc_11ECCFB:   Set var_88 = Me.TxtNar
  loc_11ECD01:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECD09:   var_8C.Text = vbNullString
  loc_11ECD18: Else
  loc_11ECD25:   Set var_88 = Me.TxtCrDr
  loc_11ECD2B:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECD4D:   Set var_94 = Me.TxtCrDr
  loc_11ECD53:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_98)
  loc_11ECD7B:   If ((var_8C.Text = "Cr") Or (var_98.Text = "To")) Then
  loc_11ECD8A:     Set var_88 = Me.TxtDr
  loc_11ECD90:     Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECD98:     var_8C.Visible = False
  loc_11ECDA4:   End If
  loc_11ECDB1:   Set var_88 = Me.TxtCrDr
  loc_11ECDB7:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECDBF:   var_90 = var_8C.Text
  loc_11ECDD9:   Set var_94 = Me.TxtCrDr
  loc_11ECDDF:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_98)
  loc_11ECE07:   If ((var_90 = "Dr") Or (var_98.Text = "By")) Then
  loc_11ECE16:     Set var_88 = Me.TxtCr
  loc_11ECE1C:     Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECE24:     var_8C.Visible = False
  loc_11ECE30:   End If
  loc_11ECE30: End If
  loc_11ECE42: If ((global_112 = "Y") And (arg_10 = &HFF)) Then
  loc_11ECE51:   Set var_88 = Me.LblNar
  loc_11ECE57:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECE5F:   var_8C.Visible = True
  loc_11ECE78:   Set var_88 = Me.LblNar
  loc_11ECE7E:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECE86:   var_8C.Caption = "Narration"
  loc_11ECE9F:   Set var_88 = Me.TxtNar
  loc_11ECEA5:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECEAD:   var_8C.Visible = arg_10
  loc_11ECEBC: Else
  loc_11ECEC9:   Set var_88 = Me.LblNar
  loc_11ECECF:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECED7:   var_8C.Caption = vbNullString
  loc_11ECEEF:   Set var_88 = Me.LblNar
  loc_11ECEF5:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECEFD:   var_8C.Visible = False
  loc_11ECF15:   Set var_88 = Me.TxtNar
  loc_11ECF1B:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECF23:   var_8C.Visible = False
  loc_11ECF2F: End If
  loc_11ECF4C: var_8C = Me.Fields.Item("ShowCurrentBalance")
  loc_11ECF6E: If (var_8C.Value = "Yes") Then
  loc_11ECF7E:   Set var_88 = Me.LblCb
  loc_11ECF84:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECF8C:   var_8C.Visible = arg_10
  loc_11ECF9B: Else
  loc_11ECFA7:   Set var_88 = Me.LblCb
  loc_11ECFAD:   Call 0.Method_Proc_185_157_11ECFEC0 (arg_C, var_8C)
  loc_11ECFB5:   var_8C.Visible = False
  loc_11ECFC1: End If
  loc_11ECFC1: Exit Sub
  loc_11ECFC2: ' Referenced from: 11ECB5C
  loc_11ECFC8: Call 0.Method_arg_50 (var_90)
  loc_11ECFD0: var_E0 = "MakeVisible"
  loc_11ECFDD: Proc_183_57_104AA84(var_90)
  loc_11ECFE9: Exit Sub
End Sub

Public Sub Proc_185_158_1017BBC(arg_C) '1017BBC
  'Data Table: 5C26A4
  Dim var_98 As TextBox
  loc_1017994: On Error Goto loc_1017B93
  loc_10179A3: Set var_8C = Me.TxtAcName
  loc_10179A9: Call 0.Method_Proc_185_158_1017BBCC (var_8E, var_86)
  loc_10179B7: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_10179CA:   Set var_8C = Me.TxtAcName
  loc_10179D0:   Call 0.Method_Proc_185_158_1017BBC0 (var_86, var_98)
  loc_10179D8:   var_98.Locked = arg_C
  loc_10179F1:   Set var_8C = Me.TxtCrDr
  loc_10179F7:   Call 0.Method_Proc_185_158_1017BBC0 (var_86, var_98)
  loc_10179FF:   var_98.Locked = arg_C
  loc_1017A18:   Set var_8C = Me.TxtCr
  loc_1017A1E:   Call 0.Method_Proc_185_158_1017BBC0 (var_86, var_98)
  loc_1017A26:   var_98.Locked = arg_C
  loc_1017A3F:   Set var_8C = Me.TxtDr
  loc_1017A45:   Call 0.Method_Proc_185_158_1017BBC0 (var_86, var_98)
  loc_1017A4D:   var_98.Locked = arg_C
  loc_1017A66:   Set var_8C = Me.TxtNar
  loc_1017A6C:   Call 0.Method_Proc_185_158_1017BBC0 (var_86, var_98)
  loc_1017A74:   var_98.Locked = arg_C
  loc_1017A83: Next var_92 'Integer
  loc_1017A94: Set var_8C = Me.TxtVtYpe
  loc_1017A9A: Call 0.Method_Proc_185_158_1017BBC0 (0, var_98)
  loc_1017AA2: var_98.Locked = arg_C
  loc_1017ABA: Set var_8C = Me.TxtVno
  loc_1017AC0: Call 0.Method_Proc_185_158_1017BBC0 (0, var_98)
  loc_1017AC8: var_98.Locked = arg_C
  loc_1017AE0: Set var_8C = Me.VchDt
  loc_1017AE6: Call 0.Method_Proc_185_158_1017BBC0 (0, var_98)
  loc_1017AEE: var_98.Locked = arg_C
  loc_1017B06: Set var_8C = Me.TxtGlb
  loc_1017B0C: Call 0.Method_Proc_185_158_1017BBC0 (0, var_98)
  loc_1017B14: var_98.Locked = arg_C
  loc_1017B2C: Set var_8C = Me.TXTChDate
  loc_1017B32: Call 0.Method_Proc_185_158_1017BBC0 (0, var_98)
  loc_1017B3A: var_98.Locked = arg_C
  loc_1017B52: Set var_8C = Me.TxtCHno
  loc_1017B58: Call 0.Method_Proc_185_158_1017BBC0 (0, var_98)
  loc_1017B60: var_98.Locked = arg_C
  loc_1017B78: Set var_8C = Me.TXTClrDate
  loc_1017B7E: Call 0.Method_Proc_185_158_1017BBC0 (0, var_98)
  loc_1017B86: var_98.Locked = arg_C
  loc_1017B92: Exit Sub
  loc_1017B93: ' Referenced from: 1017994
  loc_1017B99: Call 0.Method_arg_50 (var_9C)
  loc_1017BA1: var_A4 = "LockFields"
  loc_1017BAE: Proc_183_57_104AA84(var_9C)
  loc_1017BBA: Exit Sub
End Sub

Public Sub Proc_185_159_1682878
  'Data Table: 5C26A4
  Dim var_90 As Variant
  Dim var_B8 As String
  Dim var_E0 As Variant
  Dim var_A4 As Variant
  Dim var_DC As Variant
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim unk_5C26BA As Connection15
  Dim var_8C As Recordset15
  Dim var_88 As Integer
  Dim Me As Variant
  Dim var_164 As Variant
  loc_1681070: On Error Goto loc_168284F
  loc_16810AC: If (Proc_183_2_E5A304(CVar(Me.Recordset15.Fields.Item("DefaultCrAC"))) <> vbNullString) Then
  loc_16810DD:   global_172 = Proc_183_2_E5A304(CVar(Me.Recordset15.Fields.Item("DefaultCrAC")))
  loc_16810ED: Else
  loc_16810F3:   global_172 = vbNullString
  loc_16810F7: End If
  loc_1681130: If (Proc_183_2_E5A304(CVar(Me.Recordset15.Fields.Item("DefaultDrAC"))) <> vbNullString) Then
  loc_1681161:   global_176 = Proc_183_2_E5A304(CVar(Me.Recordset15.Fields.Item("DefaultDrAC")))
  loc_1681171: Else
  loc_1681177:   global_176 = vbNullString
  loc_168117B: End If
  loc_1681192: var_A4 = Me.Recordset15.Fields.Item("FirstDrCr")
  loc_16811B4: If (Proc_183_2_E5A304(CVar(var_A4)) <> vbNullString) Then
  loc_16811C0:   Set var_90 = Me.TxtAcName
  loc_16811C6:   Call 0.Method_Proc_185_159_16828780 (0)
  loc_16811EF:   If (Trim(CVar(var_A4)) = vbNullString) Then
  loc_1681226:     Set var_DC = Me.TxtCrDr
  loc_168122C:     Call 0.Method_Proc_185_159_16828780 (0, var_E0)
  loc_1681234:     var_E0.Text = Proc_183_2_E5A304(CVar(Me.TxtAcName.Fields.Item("FirstDrCr")))
  loc_1681248:   End If
  loc_1681248: End If
  loc_168127D: global_120 = CStr(Trim(CVar(Me.Recordset15.Fields.Item("NCat"))))
  loc_16812BF: global_124 = CStr(Me.Recordset15.Fields.Item("V_Type").Value)
  loc_16812FE: global_112 = Proc_183_2_E5A304(CVar(Me.Recordset15.Fields.Item("Separate_Narr")))
  loc_1681339: global_116 = Proc_183_2_E5A304(CVar(Me.Recordset15.Fields.Item("Common_Narr")))
  loc_168137D: Set var_DC = Me.TxtVtYpe
  loc_1681383: Call 0.Method_Proc_185_159_16828780 (0, var_E0)
  loc_168138B: var_E0.Text = CStr(Me.Recordset15.Fields.Item("Description").Value)
  loc_16813D8: Set var_DC = Me.TxtVtYpe
  loc_16813DE: Call 0.Method_Proc_185_159_16828780 (0, var_E0)
  loc_16813E6: var_E0.Tag = CStr(Me.Recordset15.Fields.Item("V_Type").Value)
  loc_1681431: Me.LblVPrefix.Caption = Proc_183_2_E5A304(CVar(Me.Recordset15.Fields.Item("Prefix")))
  loc_168149B: Set var_DC = Me.TxtVno
  loc_16814A1: Call 0.Method_Proc_185_159_16828780 (0, var_E0)
  loc_16814A9: var_E0.Enabled = CBool(IIf((Me.Recordset15.Fields.Item("Number_Method").Value = "Automatic"), False, True))
  loc_16814D2: If (CInt(global_110) = 1) Then
  loc_1681511:   If (Me.Recordset15.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_1681543:     var_C8 = (Me.Recordset15.Fields.Item("start_srl_no").Value + 1)
  loc_1681554:     Set var_DC = Me.TxtVno
  loc_168155A:     Call 0.Method_Proc_185_159_16828780 (0, var_E0)
  loc_1681562:     var_E0.Text = CStr(Trim(CVar(Me.Recordset15.Fields.Item("NCat"))))
  loc_168157F:   Else
  loc_16815BB:     If (Me.Recordset15.Fields.Item("Number_Method").Value = "SemiAuto") Then
  loc_16815FA:       var_C8 = "SELECT MAX(V_NO) as vno from ledger WHERE V_TYPE='" & Me.Recordset15.Fields.Item("V_Type").Value 
  loc_1681636:       unk_5C26BA.Execute CStr(var_C8 & "' AND V_PREFIX='" & CVar(Me.LblVPrefix.Caption) & "'"), var_164, -1
  loc_1681641:       Set var_8C = var_E0
  loc_1681669:       var_168 = var_8C.RecordCount
  loc_1681677:       If (var_168 > 0) Then
  loc_1681691:         var_A4 = var_8C.Fields.Item("VNo")
  loc_16816A0:         Proc_183_3_E7D1C8(var_C8, CVar(var_A4))
  loc_16816AD:         var_D8 = (var_C8 + 1)
  loc_16816BE:         Set var_DC = Me.TxtVno
  loc_16816C4:         Call 0.Method_Proc_185_159_16828780 (0, var_E0, CStr(var_C8 & "' AND V_PREFIX='"))
  loc_16816CC:         var_E0.Text = var_E0
  loc_16816E9:       Else
  loc_16816ED:         var_B8 = CStr(1)
  loc_16816F9:         Set var_90 = Me.TxtVno
  loc_16816FF:         Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_1681707:         var_A4.Text = var_B8
  loc_1681716:       End If
  loc_1681716:     End If
  loc_1681716:   End If
  loc_1681716: End If
  loc_168176E: Set var_DC = Me.TxtGlb
  loc_1681774: Call 0.Method_Proc_185_159_16828780 (0, var_E0)
  loc_168177C: var_E0.Visible = CBool(IIf((Me.Recordset15.Fields.Item("Common_Narr").Value = "Y"), True, False))
  loc_16817F1: Set var_DC = Me.Label1
  loc_16817F7: Call 0.Method_Proc_185_159_16828780 (3, var_E0)
  loc_16817FF: var_E0.Visible = CBool(IIf((Me.Recordset15.Fields.Item("Common_Narr").Value = "Y"), True, False))
  loc_1681875: Me.Label6.Visible = CBool(IIf((Me.Recordset15.Fields.Item("ChqNo").Value = "Y"), True, False))
  loc_16818E8: Set var_DC = Me.TxtCHno
  loc_16818EE: Call 0.Method_Proc_185_159_16828780 (0, var_E0)
  loc_16818F6: var_E0.Visible = CBool(IIf((Me.Recordset15.Fields.Item("ChqNo").Value = "Y"), True, False))
  loc_168196C: Me.Label5.Visible = CBool(IIf((Me.Recordset15.Fields.Item("ChqDt").Value = "Y"), True, False))
  loc_16819DF: Set var_DC = Me.TXTChDate
  loc_16819E5: Call 0.Method_Proc_185_159_16828780 (0, var_E0)
  loc_16819ED: var_E0.Visible = CBool(IIf((Me.Recordset15.Fields.Item("ChqDt").Value = "Y"), True, False))
  loc_1681A63: Me.Label7.Visible = CBool(IIf((Me.Recordset15.Fields.Item("CLGDT").Value = "Y"), True, False))
  loc_1681AD6: Set var_DC = Me.TXTClrDate
  loc_1681ADC: Call 0.Method_Proc_185_159_16828780 (0, var_E0)
  loc_1681AE4: var_E0.Visible = CBool(IIf((Me.Recordset15.Fields.Item("CLGDT").Value = "Y"), True, False))
  loc_1681B04: var_88 = 1020
  loc_1681B1C: var_90 = Me.Fields
  loc_1681B24: var_A4 = var_90.Item("ShowCurrentBalance")
  loc_1681B61: If CBool((var_A4.Value = "Yes") And (global_112 = "Y")) Then
  loc_1681B69:   global_136 = 4
  loc_1681B78:   If (CInt(global_110) <= 2) Then
  loc_1681B81:     Call 0.Method_arg_1E8 (var_90, global_136)
  loc_1681B90:     If TypeOf var_90 Is arg_1 Then
  loc_1681B99:       Call 0.Method_arg_1E8 (var_90, var_88)
  loc_1681BB8:       If (var_90.index > CVar(global_136)) Then
  loc_1681BCA:         Call 0.Method_Proc_185_159_16828780 (var_A4)
  loc_1681BD2:         var_A4(0).TextBox.SetFocus
  loc_1681BDE:       End If
  loc_1681BDE:     End If
  loc_1681BDE:   End If
  loc_1681BE1: Else
  loc_1681BF6:   var_90 = Me.Fields
  loc_1681BFE:   var_A4 = var_90.Item("ShowCurrentBalance")
  loc_1681C75:   var_164 = (var_A4.Value = "Yes") And (global_112 = "N") Or (Me.Fields.Item("ShowCurrentBalance").Value = "No") And (global_112 = "Y")
  loc_1681C91:   If CBool(var_164) Then
  loc_1681C99:     global_136 = 6
  loc_1681CA8:     If (CInt(global_110) <= 2) Then
  loc_1681CB1:       Call 0.Method_arg_1E8 (var_90)
  loc_1681CC0:       If TypeOf var_90 Is arg_1 Then
  loc_1681CC9:         Call 0.Method_arg_1E8 (var_90)
  loc_1681CE8:         If (var_90.index > CVar(global_136)) Then
  loc_1681CFA:           Call 0.Method_Proc_185_159_16828780 (global_136)
  loc_1681D02:           var_A4(0).TextBox.SetFocus
  loc_1681D0E:         End If
  loc_1681D0E:       End If
  loc_1681D0E:     End If
  loc_1681D11:   Else
  loc_1681D16:     global_136 = &HB
  loc_1681D19:   End If
  loc_1681D19: End If
  loc_1681D20: For var_17C = 1 To 4: var_86 = var_17C 'Integer
  loc_1681D39:   Set var_90 = Me.LblShort
  loc_1681D3F:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4, &HFFFF)
  loc_1681D47:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_2E(1)
  loc_1681D56: Next var_17C 'Integer
  loc_1681D61: var_180 = global_120
  loc_1681D6C: If (var_180 = "CNT") Then
  loc_1681D77:   Call 0.Method_arg_64 (&H80FF80)
  loc_1681D82:   Call 0.Method_arg_60 (var_168)
  loc_1681D93:   Set var_90 = Me.Frame1
  loc_1681D99:   Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_1681DA1:   var_A4.BackColor = var_168
  loc_1681DB4:   For var_184 = 1 To 4: var_86 = var_184 'Integer
  loc_1681DC0:     Call 0.Method_arg_60 (var_168)
  loc_1681DD7:     Set var_90 = Me.LblShort
  loc_1681DDD:     Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_1681DE5:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(var_168))
  loc_1681DF4:   Next var_184 'Integer
  loc_1681E01:   global_56 = &HC9DBB3
  loc_1681E0C:   global_60 = -2147483630
  loc_1681E21:   Set var_90 = Me.LblShort
  loc_1681E27:   Call 0.Method_Proc_185_159_16828780 (1, var_A4, &HFFFF00)
  loc_1681E2F:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_2E(global_60)
  loc_1681E41:   Call 0.Method_arg_60 (var_168)
  loc_1681E53:   Me.PicDN.BackColor = var_168
  loc_1681E5E: Else
  loc_1681E66:   If (var_180 = "PMT") Then
  loc_1681E71:     Call 0.Method_arg_64 (&HFF8080)
  loc_1681E7C:     Call 0.Method_arg_60 (var_168)
  loc_1681E8D:     Set var_90 = Me.Frame1
  loc_1681E93:     Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_1681E9B:     var_A4.BackColor = var_168
  loc_1681EAE:     For var_188 = 1 To 4:   var_86 = var_188 'Integer
  loc_1681EBA:       Call 0.Method_arg_60 (var_168, 1)
  loc_1681ED1:       Set var_90 = Me.LblShort
  loc_1681ED7:       Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_1681EDF:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(var_168))
  loc_1681EEE:     Next var_188 'Integer
  loc_1681EFB:     global_56 = &HC8D5EC
  loc_1681F06:     global_60 = -2147483630
  loc_1681F1B:     Set var_90 = Me.LblShort
  loc_1681F21:     Call 0.Method_Proc_185_159_16828780 (2, var_A4, &HFFFF00)
  loc_1681F29:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_2E(global_60)
  loc_1681F3B:     Call 0.Method_arg_60 (var_168)
  loc_1681F4D:     Me.PicDN.BackColor = var_168
  loc_1681F58:   Else
  loc_1681F60:     If (var_180 = "RCT") Then
  loc_1681F6B:       Call 0.Method_arg_64 (&HFFFF80)
  loc_1681F76:       Call 0.Method_arg_60 (var_168)
  loc_1681F87:       Set var_90 = Me.Frame1
  loc_1681F8D:       Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_1681F95:       var_A4.BackColor = var_168
  loc_1681FA8:       For var_18C = 1 To 4:     var_86 = var_18C 'Integer
  loc_1681FB4:         Call 0.Method_arg_60 (var_168, 1)
  loc_1681FCB:         Set var_90 = Me.LblShort
  loc_1681FD1:         Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_1681FD9:         Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(var_168))
  loc_1681FE8:       Next var_18C 'Integer
  loc_1681FF5:       global_56 = &HDCD5BE
  loc_1682000:       global_60 = -2147483630
  loc_1682015:       Set var_90 = Me.LblShort
  loc_168201B:       Call 0.Method_Proc_185_159_16828780 (3, var_A4, &HFFFF00)
  loc_1682023:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_2E(global_60)
  loc_1682035:       Call 0.Method_arg_60 (var_168)
  loc_1682047:       Me.PicDN.BackColor = var_168
  loc_1682052:     Else
  loc_168205A:       If (var_180 = "JV") Then
  loc_1682065:         Call 0.Method_arg_64 (&H80FFFF)
  loc_1682070:         Call 0.Method_arg_60 (var_168)
  loc_1682081:         Set var_90 = Me.Frame1
  loc_1682087:         Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_168208F:         var_A4.BackColor = var_168
  loc_16820A2:         For var_190 = 1 To 4:       var_86 = var_190 'Integer
  loc_16820AE:           Call 0.Method_arg_60 (var_168, 1)
  loc_16820C5:           Set var_90 = Me.LblShort
  loc_16820CB:           Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_16820D3:           Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(var_168))
  loc_16820E2:         Next var_190 'Integer
  loc_16820EF:         global_56 = &HD0E6E4
  loc_16820FA:         global_60 = -2147483630
  loc_168210F:         Set var_90 = Me.LblShort
  loc_1682115:         Call 0.Method_Proc_185_159_16828780 (4, var_A4, &HFFFF00)
  loc_168211D:         Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_2E(global_60)
  loc_168212F:         Call 0.Method_arg_60 (var_168)
  loc_1682141:         Me.PicDN.BackColor = var_168
  loc_1682149:       End If
  loc_1682149:     End If
  loc_1682149:   End If
  loc_1682149: End If
  loc_1682150: For var_194 = 0 To &HB: var_86 = var_194 'Integer
  loc_1682165:   Set var_90 = Me.TxtCrDr
  loc_168216B:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4, CDbl(var_88))
  loc_1682173:   var_A4.Top = 0
  loc_168218D:   Set var_90 = Me.TxtCrDr
  loc_1682193:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_168219B:   var_A4.Left = CDbl(&HF)
  loc_16821B6:   Set var_90 = Me.TxtAcName
  loc_16821BC:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_16821C4:   var_A4.Top = CDbl(var_88)
  loc_16821DF:   Set var_90 = Me.TxtAcName
  loc_16821E5:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_16821ED:   var_A4.Left = CDbl(330)
  loc_1682208:   Set var_90 = Me.TxtCr
  loc_168220E:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_1682216:   var_A4.Top = CDbl(var_88)
  loc_1682231:   Set var_90 = Me.TxtCr
  loc_1682237:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_168223F:   var_A4.Left = CDbl(9015)
  loc_168225A:   Set var_90 = Me.TxtDr
  loc_1682260:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_1682268:   var_A4.Top = CDbl(var_88)
  loc_1682283:   Set var_90 = Me.TxtDr
  loc_1682289:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_1682291:   var_A4.Left = CDbl(7620)
  loc_16822BA:   var_A4 = Me.Fields.Item("ShowCurrentBalance")
  loc_16822DC:   If (var_A4.Value = "Yes") Then
  loc_16822E6:     var_88 = (var_88 + 240)
  loc_16822F8:     Set var_90 = Me.LblCb
  loc_16822FE:     Call 0.Method_Proc_185_159_16828780 (var_86, var_A4, CDbl(var_88))
  loc_1682306:     var_A4.Top = var_88
  loc_1682320:     Set var_90 = Me.LblCb
  loc_1682326:     Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_168232E:     var_A4.Left = CDbl(&HF)
  loc_168233A:   End If
  loc_1682345:   If (global_112 = "Y") Then
  loc_168234F:     var_88 = (var_88 + 240)
  loc_1682361:     Set var_90 = Me.LblNar
  loc_1682367:     Call 0.Method_Proc_185_159_16828780 (var_86, var_A4, CDbl(var_88))
  loc_168236F:     var_A4.Top = var_88
  loc_1682389:     Set var_90 = Me.LblNar
  loc_168238F:     Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_1682397:     var_A4.Left = CDbl(&HF)
  loc_16823B2:     Set var_90 = Me.TxtNar
  loc_16823B8:     Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_16823C0:     var_A4.Top = CDbl(var_88)
  loc_16823DB:     Set var_90 = Me.TxtNar
  loc_16823E1:     Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_16823E9:     var_A4.Left = CDbl(990)
  loc_16823F5:   End If
  loc_16823FC:   var_88 = (var_88 + 260)
  loc_1682416:   Set var_90 = Me.TxtCrDr
  loc_168241C:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4, var_B8)
  loc_1682424:   (global_136 >= var_86) = var_A4.Text
  loc_168243C:   If (var_88 And (var_B8 <> vbNullString)) Then
  loc_1682447:     Call Proc_185_157_11ECFEC(var_86, &HFF)
  loc_168244F:   Else
  loc_1682457:     Call Proc_185_157_11ECFEC(var_86, 0)
  loc_168245C:   End If
  loc_168246C:   Set var_90 = Me.TxtAcName
  loc_1682472:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_168247A:   var_A4.BackColor = global_56
  loc_1682496:   Set var_90 = Me.TxtAcName
  loc_168249C:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_16824A4:   var_A4.ForeColor = global_60
  loc_16824C0:   Set var_90 = Me.TxtCr
  loc_16824C6:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_16824CE:   var_A4.BackColor = global_56
  loc_16824EA:   Set var_90 = Me.TxtCr
  loc_16824F0:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_16824F8:   var_A4.ForeColor = global_60
  loc_1682514:   Set var_90 = Me.TxtCrDr
  loc_168251A:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_1682522:   var_A4.BackColor = global_56
  loc_168253E:   Set var_90 = Me.TxtCrDr
  loc_1682544:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_168254C:   var_A4.ForeColor = global_60
  loc_1682568:   Set var_90 = Me.TxtDr
  loc_168256E:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_1682576:   var_A4.BackColor = global_56
  loc_1682592:   Set var_90 = Me.TxtDr
  loc_1682598:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_16825A0:   var_A4.ForeColor = global_60
  loc_16825BC:   Set var_90 = Me.TxtNar
  loc_16825C2:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_16825CA:   var_A4.BackColor = global_56
  loc_16825E6:   Set var_90 = Me.TxtNar
  loc_16825EC:   Call 0.Method_Proc_185_159_16828780 (var_86, var_A4)
  loc_16825F4:   var_A4.ForeColor = global_60
  loc_1682603: Next var_194 'Integer
  loc_1682617: Set var_90 = Me.TxtGlb
  loc_168261D: Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_1682625: var_A4.BackColor = global_56
  loc_1682640: Set var_90 = Me.TxtGlb
  loc_1682646: Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_168264E: var_A4.ForeColor = global_60
  loc_1682669: Set var_90 = Me.TxtVtYpe
  loc_168266F: Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_1682677: var_A4.BackColor = global_56
  loc_1682692: Set var_90 = Me.TxtVtYpe
  loc_1682698: Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_16826A0: var_A4.ForeColor = global_60
  loc_16826BB: Set var_90 = Me.TxtVno
  loc_16826C1: Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_16826C9: var_A4.ForeColor = global_60
  loc_16826E4: Set var_90 = Me.TxtVno
  loc_16826EA: Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_16826F2: var_A4.BackColor = global_56
  loc_168270D: Set var_90 = Me.VchDt
  loc_1682713: Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_168271B: var_A4.BackColor = global_56
  loc_1682736: Set var_90 = Me.VchDt
  loc_168273C: Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_1682744: var_A4.ForeColor = global_60
  loc_168275F: Set var_90 = Me.TxtCHno
  loc_1682765: Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_168276D: var_A4.BackColor = global_56
  loc_1682788: Set var_90 = Me.TxtCHno
  loc_168278E: Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_1682796: var_A4.ForeColor = global_60
  loc_16827B1: Set var_90 = Me.TXTChDate
  loc_16827B7: Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_16827BF: var_A4.BackColor = global_56
  loc_16827DA: Set var_90 = Me.TXTChDate
  loc_16827E0: Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_16827E8: var_A4.ForeColor = global_60
  loc_1682803: Set var_90 = Me.TXTClrDate
  loc_1682809: Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_1682811: var_A4.BackColor = global_56
  loc_168282C: Set var_90 = Me.TXTClrDate
  loc_1682832: Call 0.Method_Proc_185_159_16828780 (0, var_A4)
  loc_168283A: var_A4.ForeColor = global_60
  loc_168284B: Set var_8C = Nothing
  loc_168284E: Exit Sub
  loc_168284F: ' Referenced from: 1681070
  loc_1682855: Call 0.Method_arg_50 (var_B8)
  loc_168285D: var_19C = "MakeVrTypeVisible"
  loc_168286A: Proc_183_57_104AA84(var_B8)
  loc_1682876: Exit Sub
End Sub

Public Sub Proc_185_160_1025274(arg_C) '1025274
  'Data Table: 5C26A4
  Dim var_9C As Label
  Dim var_A8 As Double
  Dim var_90 As Variant
  Dim var_8C As MSFlexGrid
  loc_1025058: On Error Goto loc_1025244
  loc_102505F: var_86 = CByte(0) 'Byte
  loc_102506F: Set var_98 = Me.LblCrAmt
  loc_1025075: Call 0.Method_Proc_185_160_10252740 (0, var_9C)
  loc_1025099: Set var_8C = Me.LblDrAmt
  loc_102509F: Call 0.Method_Proc_185_160_10252740 (0, var_90)
  loc_10250A7: var_94 = var_90.Caption
  loc_10250CF: If (CDbl((Val(var_94) + Val(var_9C.Caption))) > CDbl(0)) Then
  loc_10250DE:   Set var_98 = Me.LblCrAmt
  loc_10250E4:   Call 0.Method_Proc_185_160_10252740 (0, var_9C)
  loc_10250F9:   var_A8 = Val(var_9C.Caption)
  loc_1025108:   Set var_8C = Me.LblDrAmt
  loc_102510E:   Call 0.Method_Proc_185_160_10252740 (0, var_90, var_94)
  loc_1025116:   var_A8 = var_90.Caption
  loc_102513B:   If (CDbl(Val(var_94)) = CDbl(var_A8)) Then
  loc_1025149:     If (global_116 = "Y") Then
  loc_1025177:       If (CLng((arg_C + global_108)) = (CLng(Me.FGrid1.Rows) - 1)) Then
  loc_1025183:         Set var_8C = Me.TxtGlb
  loc_1025189:         Call 0.Method_Proc_185_160_10252740 (0, var_90)
  loc_1025191:         var_90.SetFocus
  loc_10251A1:         var_86 = CByte(1) 'Byte
  loc_10251A5:         Proc_185_160_1025274 = var_A8
  loc_10251AB:       End If
  loc_10251AE:     Else
  loc_10251D9:       If (CLng((arg_C + global_108)) = (CLng(Me.FGrid1.Rows) - 1)) Then
  loc_10251E8:         If (CInt(global_110) <= 2) Then
  loc_10251F1:           Call 0.Method_arg_50 (var_94)
  loc_1025228:           If (MsgBox("Save Yes/No", &H44, CVar(var_94), var_F8, var_118) = 6) Then
  loc_102522B:             Call TopCtrl1_UnknownEvent_16()
  loc_1025230:           End If
  loc_1025230:         End If
  loc_1025234:         var_86 = CByte(1) 'Byte
  loc_1025238:         Proc_185_160_1025274 = 
  loc_102523E:       End If
  loc_102523E:     End If
  loc_102523E:   End If
  loc_102523E: End If
  loc_102523E: Proc_185_160_1025274 = 
  loc_1025244: ' Referenced from: 1025058
  loc_102524A: Call 0.Method_arg_50 (var_94)
  loc_102525F: Proc_183_57_104AA84(var_94)
  loc_102526B: Proc_185_160_1025274 = "askForSave"
End Sub

Public Sub Proc_185_161_1010428
  'Data Table: 5C26A4
  Dim var_90 As Double
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_EC As String
  Dim Me As Recordset15
  loc_1010218: On Error Goto loc_10103FD
  loc_101021E: var_90 = CDbl(0)
  loc_1010246: For var_A8 = 1 To CInt((CLng(Me.FgridAdjust.Rows) - 1)): var_86 = var_A8 'Integer
  loc_1010250:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_1010255:   var_D8 = &HA
  loc_1010285:   var_90 = (var_90 + Val(CStr(Me.FgridAdjust.TextMatrix))))
  loc_1010294: Next var_A8 'Integer
  loc_10102CF: Me.ADJ_LAB7.Caption = CStr(Format(var_90, "0.00"))
  loc_1010320: If (Me.Fields.Item("ToBy").Value = "No") Then
  loc_1010370:   Me.ADJ_LAB8.Caption = CStr(IIf((Me.ADJ_LAB5.Caption = "Cr"), "Dr", "Cr"))
  loc_1010391: Else
  loc_101039E:   var_EC = Me.ADJ_LAB5.Caption
  loc_10103DE:   Me.ADJ_LAB8.Caption = CStr(IIf((var_EC = "To"), "By", "To"))
  loc_10103FC: End If
  loc_10103FC: Exit Sub
  loc_10103FD: ' Referenced from: 1010218
  loc_1010403: Call 0.Method_arg_50 (var_EC, 1)
  loc_1010418: Proc_183_57_104AA84(var_EC, "CAL_ADJ_TOT")
  loc_1010424: Exit Sub
End Sub

Public Sub Proc_185_162_11F8598
  'Data Table: 5C26A4
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As String
  Dim var_154 As Double
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_148 As Variant
  Dim Me As Recordset15
  Dim var_17C As Variant
  loc_11F8130: On Error Goto loc_11F856F
  loc_11F8136: var_90 = CDbl(0)
  loc_11F813C: var_98 = CDbl(0)
  loc_11F8164: For var_B0 = 1 To CInt((CLng(Me.FGridRef.Rows) - 1)): var_86 = var_B0 'Integer
  loc_11F816E:   var_C0 = CVar(CLng(var_86)) 'Long
  loc_11F8176:   var_E0 = CVar(CLng(3)) 'Long
  loc_11F819F:   var_104 = CVar(CLng(var_86)) 'Long
  loc_11F81A7:   var_124 = CVar(CLng(4)) 'Long
  loc_11F81D7:   var_90 = ((var_90 + Val(CStr(Me.FGridRef.TextMatrix)))) - Val(CStr(Me.FGridRef.TextMatrix))))
  loc_11F81F2: Next var_B0 'Integer
  loc_11F822D: Me.LblRefAdj.Caption = CStr(Format(CVar(Abs(var_90)), "0.00"))
  loc_11F830D: var_224 = IIf((var_90 > CDbl(0)), IIf((Me.Fields.Item("ToBy").Value = "Yes"), "To", "Cr"), IIf((Me.Fields.Item("ToBy").Value = "Yes"), "By", "Dr"))
  loc_11F8344: Me.LblRefAdjDrCr.Caption = CStr(IIf((var_90 = CDbl(0)), vbNullString, var_224))
  loc_11F83A6: var_154 = Val(Me.LblRefAmt.Caption)
  loc_11F83C4: var_148 = CVar(-Val(Me.LblRefAmt.Caption)) 'Double
  loc_11F83ED: var_17C = (IIf((Me.LblRefAmtDrCr.Caption = "Cr"), CVar(var_154), "0.00") - CVar(var_90))
  loc_11F83F2: var_98 = CSng("To")
  loc_11F8448: Me.LblRefAdjBal.Caption = CStr(Format(CVar(Abs(var_98)), "0.00"))
  loc_11F8528: var_224 = IIf((var_98 > CDbl(0)), IIf((Me.Fields.Item("ToBy").Value = "Yes"), "To", "Cr"), IIf((Me.Fields.Item("ToBy").Value = "Yes"), "By", "Dr"))
  loc_11F8530: var_F4 = CStr(var_224)
  loc_11F853E: Me.LblRefAdjDrCrBal.Caption = var_F4
  loc_11F856E: Exit Sub
  loc_11F856F: ' Referenced from: 11F8130
  loc_11F8575: Call 0.Method_arg_50 (var_F4, 1, 1, var_98)
  loc_11F858A: Proc_183_57_104AA84(var_F4, "CalAmountLF", var_154)
  loc_11F8596: Exit Sub
End Sub

Public Sub Proc_185_163_E215F4
  'Data Table: 5C26A4
  Dim var_94 As Long
  loc_E215D0: var_94 = -2147483640
  loc_E215DC: Me.BackColor = var_94
  loc_E215E0: var_94 = -2147483634
  loc_E215EC: Me.ForeColor = var_94
  loc_E215F0: Exit Sub
End Sub

Public Sub Proc_185_164_E264C0
  'Data Table: 5C26A4
  loc_E264A6: Me.BackColor = CVar(global_56)
  loc_E264B8: Me.ForeColor = CVar(global_60)
  loc_E264BC: Exit Sub
End Sub

Public Sub Proc_185_165_E98870
  'Data Table: 5C26A4
  loc_E987FA: On Error Goto loc_E98840
  loc_E98812: Call 0.Method_arg_18C (var_8C)
  loc_E9881A: Call var_8C.Show
  loc_E9882F: Call 0.Method_arg_188 (var_B0)
  loc_E98837: var_88 = var_B0
  loc_E9883A: Proc_185_165_E98870 = 1
  loc_E98840: ' Referenced from: E987FA
  loc_E98846: Call 0.Method_arg_50 (var_B0)
  loc_E9885B: Proc_183_57_104AA84(var_B0)
  loc_E98867: Proc_185_165_E98870 = "FaNarr"
End Sub

Public Sub Proc_185_166_1324960(arg_C, arg_10) '1324960
  'Data Table: 5C26A4
  Dim var_9C As String
  Dim var_A4 As Variant
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_94 As Double
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_194 As String
  Dim unk_5C26BA As Connection15
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_12C As Variant
  loc_1324212: var_98 = " And (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO')"
  loc_132422A: Call 0.Method_Proc_185_166_13249600 (0, var_A4)
  loc_1324240: Set var_A8 = Me.VchDt
  loc_1324246: Call 0.Method_Proc_185_166_13249600 (0)
  loc_1324256: var_CC = CVar(var_AC) 'Address
  loc_1324273: var_94 = CDate(IIf((var_A4.Text <> vbNullString), var_CC, MemVar_1F920EC))
  loc_132429B: Proc_183_7_EB0C44(var_CC, var_94, " AND Date_From<=")
  loc_13242BB: Proc_183_7_EB0C44(var_12C, var_94)
  loc_13242DB: Proc_183_7_EB0C44(var_17C, var_94)
  loc_1324313: var_194 = CStr(var_94 & var_CC & " AND ISNULL(DATE_TO," & var_12C & " )>=" & var_17C) & " AND VT.SITE_CODE='" & MemVar_1F92070 & "' AND VT.LOGSITE_CODE='"
  loc_132436A: var_9C = "Select VT.V_Type,VT.DESCRIPTION,VP.Prefix,VP.Date_From,VP.Start_Srl_No,Number_Method,Separate_Narr,Common_Narr,NCAT,ChqNo,ChqDt,ClgDt,LTRIM(RTRIM(VT.V_Type))+'-'+LTRIM(RTRIM(VP.Prefix)) as SearchCode,VT.DefaultCrAc,VT.DefaultDrAC,VT.FirstDrCr From Voucher_Prefix VP right join Voucher_Type VT on VT.V_Type=VP.V_Type Where VT.NCAT='" & global_120
  loc_1324378: var_194 = CStr(var_94 & var_CC & " AND ISNULL(DATE_TO," & var_12C & " )>=" & var_17C) & " AND VT.SITE_CODE='" & "' " & var_194 & MemVar_1F92078 & "' AND VP.SITE_CODE='" & MemVar_1F92070 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "'"
  loc_1324388: unk_5C26BA.Execute var_194 & " order by Description,Prefix", var_CC, -1
  loc_1324399: Set global_76 = Me.VchDt
  loc_13243B7: CVarUnk
  loc_13243BC: VerifyVarObj
  loc_13243C2: Set var_A0 = Me.DGVchrHlp
  loc_13243C8: LateIdStAd
  loc_13243DF: CVarUnk
  loc_13243E4: VerifyVarObj
  loc_13243EA: Set var_A0 = Me.DGVchrHlp
  loc_13243F0: LateIdStAd
  loc_1324415: If (Me.RecordCount > 0) Then
  loc_132441E:   Me.MoveFirst
  loc_132443A:   If (Me.RecordCount = 1) Then
  loc_1324448:     Set var_A0 = Me.TxtVtYpe
  loc_132444E:     Call 0.Method_Proc_185_166_13249600 (0, var_A4, 0, var_A0, global_76)
  loc_1324456:     var_A4.Enabled = var_A0
  loc_1324465:   Else
  loc_1324476:     If ((arg_C <> vbNullString) And (arg_10 <> vbNullString)) Then
  loc_132447F:       Me.MoveFirst
  loc_1324484:       ' Referenced from:   1324520
  loc_1324496:       If Not(Me.EOF) Then
  loc_13244D9:         var_FC = "-"
  loc_13244DE:         var_EC = (Trim(arg_C) + " AND ISNULL(DATE_TO,")
  loc_13244F5:         var_12C = (var_94 & Trim(arg_C) + Trim(arg_10))
  loc_132450F:         If (Me.Fields.Item("SearchCode").Value = var_12C) Then
  loc_1324512:           GoTo loc_1324523
  loc_1324515:         End If
  loc_132451B:         Me.MoveNext
  loc_1324520:         GoTo loc_1324484
  loc_1324523:         ' Referenced from:   1324512
  loc_1324523:       End If
  loc_1324526:     Else
  loc_132452E:       If (arg_C <> vbNullString) Then
  loc_1324537:         Me.MoveFirst
  loc_132453C:         ' Referenced from:     13245B2
  loc_132454E:         If Not(Me.EOF) Then
  loc_132456E:           var_A4 = Me.Fields.Item("V_Type")
  loc_1324576:           var_EC = var_A4.Value
  loc_13245A1:           If (var_EC = Trim(arg_C)) Then
  loc_13245A4:             GoTo loc_13245B5
  loc_13245A7:           End If
  loc_13245AD:           Me.MoveNext
  loc_13245B2:           GoTo loc_132453C
  loc_13245B5:           ' Referenced from:     13245A4
  loc_13245B5:         End If
  loc_13245B5:       End If
  loc_13245B5:     End If
  loc_13245C9:     If (Me.EOF = &HFF) Then
  loc_13245D2:       Me.MoveFirst
  loc_13245D7:     End If
  loc_13245E2:     Set var_A0 = Me.TxtVtYpe
  loc_13245E8:     Call 0.Method_Proc_185_166_13249600 (0, var_A4, &HFF)
  loc_13245F0:     var_A4.Enabled = Nothing
  loc_13245FC:   End If
  loc_1324602:   Call Proc_185_159_1682878(global_76, var_A0)
  loc_1324607: End If
  loc_1324646: If (Me.Fields.Item("FilterAC").Value = "Yes") Then
  loc_1324653:   Set global_88 = New 
  loc_1324677:   var_A4 = Me.Recordset15.Fields.Item("ShowCityName")
  loc_1324699:   If (var_A4.Value = "Yes") Then
  loc_13246A8:     Set var_A0 = Me.TxtVtYpe
  loc_13246AE:     Call 0.Method_Proc_185_166_13249600 (0, var_A4)
  loc_13246B6:     var_9C = var_A4.Tag
  loc_13246C4:     Proc_183_9_EAA760(var_EC, CVar(var_9C))
  loc_13246E0:     var_BC = "Select SubCode,NameWithCity AS Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup WHERE GroupCode NOT IN (SELECT GROUPCODE FROM Voucher_Exclude WHERE DR='Y' AND V_tYPE="
  loc_132470F:     Me.Open "ShowCityName" & var_EC & ") " & CVar(var_98) & " order by Name", CVar(MemVar_1F921DC), 1
  loc_132472D:   Else
  loc_1324739:     Set var_A0 = Me.TxtVtYpe
  loc_132473F:     Call 0.Method_Proc_185_166_13249600 (0, var_A4, var_9C)
  loc_1324747:     3 = var_A4.Tag
  loc_1324755:     Proc_183_9_EAA760(var_EC, CVar(var_9C))
  loc_1324771:     var_BC = "Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup WHERE GroupCode NOT IN (SELECT GROUPCODE FROM Voucher_Exclude WHERE DR='Y' AND V_tYPE="
  loc_13247A0:     Me.Open "ShowCityName" & var_EC & ") " & CVar(var_98) & " order by Name", CVar(MemVar_1F921DC), 1
  loc_13247BB:   End If
  loc_13247C5:   Set global_92 = New 
  loc_13247E9:   var_A4 = Me.Recordset15.Fields.Item("ShowCityName")
  loc_132480B:   If (var_A4.Value = "Yes") Then
  loc_132481A:     Set var_A0 = Me.TxtVtYpe
  loc_1324820:     Call 0.Method_Proc_185_166_13249600 (0, var_A4, var_9C, 3)
  loc_1324828:     -1 = var_A4.Tag
  loc_1324836:     Proc_183_9_EAA760(var_EC, CVar(var_9C))
  loc_1324852:     var_BC = "Select SubCode,NameWithCity AS Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup WHERE GroupCode NOT IN (SELECT GROUPCODE FROM Voucher_Exclude WHERE CR='Y' AND V_tYPE="
  loc_1324881:     Me.Open "ShowCityName" & var_EC & ") " & CVar(var_98) & " order by Name", CVar(MemVar_1F921DC), 1
  loc_132489F:   Else
  loc_13248AB:     Set var_A0 = Me.TxtVtYpe
  loc_13248B1:     Call 0.Method_Proc_185_166_13249600 (0, var_A4, var_9C, 3)
  loc_13248B9:     -1 = var_A4.Tag
  loc_13248C7:     Proc_183_9_EAA760(var_EC, CVar(var_9C))
  loc_13248E3:     var_BC = "Select SubCode,Name,GNAME AS GROUPNAME,GroupCode,MAINGRCODES, RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS NameWithADDR,ISNULL(FNAME,'') AS FatherName From ViewSubgroup WHERE GroupCode NOT IN (SELECT GROUPCODE FROM Voucher_Exclude WHERE CR='Y' AND V_tYPE="
  loc_1324912:     Me.Open "ShowCityName" & var_EC & ") " & CVar(var_98) & " order by Name", CVar(MemVar_1F921DC), 1
  loc_132492D:   End If
  loc_132492D: End If
  loc_1324932: Set var_88 = Nothing
  loc_1324935: Exit Sub
  loc_132493C: Call 0.Method_arg_50 (var_9C, 3, -1)
  loc_1324951: Proc_183_57_104AA84(var_9C, "FaVrTypeSetting")
  loc_132495D: Exit Sub
End Sub

Public Sub Proc_185_167_E3FD20
  'Data Table: 5C26A4
  loc_E3FCFC: Set var_88 = Me.TopCtrl1
  loc_E3FD02: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E3FD1B: If (CStr() = "Browse") Then
  loc_E3FD1E:   Exit Sub
  loc_E3FD1F: End If
  loc_E3FD1F: Exit Sub
End Sub

Public Sub Proc_185_168_12E4960(arg_C, arg_10) '12E4960
  'Data Table: 5C26A4
  Dim var_8A As Integer
  Dim arg_C As Integer
  Dim var_8C As Integer
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_9C As Variant
  Dim var_90 As String
  Dim var_144 As TextBox
  Dim var_148 As String
  Dim var_150 As String
  Dim var_154 As String
  Dim unk_5C26BA As Connection15
  Dim var_88 As Recordset15
  loc_12E42BC: On Error Goto loc_12E4938
  loc_12E42D2: If ((arg_10 = 0) And (CInt(global_110) = 3)) Then
  loc_12E42D5:   Exit Sub
  loc_12E42D6: End If
  loc_12E42DC: If (arg_10 > 0) Then
  loc_12E42E2:   var_8A = arg_10
  loc_12E42EB:   If (var_8A = 1) Then
  loc_12E42F4:     arg_C = CInt(&H75)
  loc_12E42FA:   Else
  loc_12E4300:     If (var_8A = 2) Then
  loc_12E4309:       arg_C = CInt(&H76)
  loc_12E430F:     Else
  loc_12E4315:       If (var_8A = 3) Then
  loc_12E431E:         arg_C = CInt(&H77)
  loc_12E4324:       Else
  loc_12E432A:         If (var_8A = 4) Then
  loc_12E4333:           arg_C = CInt(&H78)
  loc_12E4336:         End If
  loc_12E4336:       End If
  loc_12E4336:     End If
  loc_12E4336:   End If
  loc_12E4336: End If
  loc_12E4336: Call Proc_185_169_F64464(arg_C, arg_C, arg_C)
  loc_12E433E: var_8C = arg_C
  loc_12E434B: If (var_8C = CInt(&H1B)) Then
  loc_12E434E:   Call TopCtrl1_UnknownEvent_B()
  loc_12E4356: Else
  loc_12E4360:   If (var_8C = CInt(&H75)) Then
  loc_12E4369:     global_120 = "CNT"
  loc_12E4373:     global_124 = vbNullString
  loc_12E438B:     Call Proc_185_166_1324960(vbNullString, 0)
  loc_12E43A0:     Set var_98 = Me.TxtAcName
  loc_12E43A6:     Call 0.Method_Proc_185_168_12E49600 (0, var_9C, var_8C)
  loc_12E43CF:     If (Trim(CVar(var_9C)) = vbNullString) Then
  loc_12E43EF:       var_9C = Me.Fields.Item("ToBy")
  loc_12E443E:       Set var_140 = Me.TxtCrDr
  loc_12E4444:       Call 0.Method_Proc_185_168_12E49600 (0, var_144, CStr(IIf((var_9C.Value = "Yes"), "To", "Cr")))
  loc_12E444C:       var_144.Text = arg_C
  loc_12E446C:     End If
  loc_12E446F:   Else
  loc_12E4479:     If (var_8C = CInt(&H76)) Then
  loc_12E4482:       global_120 = "PMT"
  loc_12E448C:       global_124 = vbNullString
  loc_12E44A4:       Call Proc_185_166_1324960(vbNullString, 0)
  loc_12E44B9:       Set var_98 = Me.TxtAcName
  loc_12E44BF:       Call 0.Method_Proc_185_168_12E49600 (0, var_9C)
  loc_12E44E8:       If (Trim(CVar(var_9C)) = vbNullString) Then
  loc_12E4508:         var_9C = Me.Fields.Item("ToBy")
  loc_12E4557:         Set var_140 = Me.TxtCrDr
  loc_12E455D:         Call 0.Method_Proc_185_168_12E49600 (0, var_144)
  loc_12E4565:         var_144.Text = CStr(IIf((var_9C.Value = "Yes"), "By", "Dr"))
  loc_12E4585:       End If
  loc_12E4588:     Else
  loc_12E4592:       If (var_8C = CInt(&H77)) Then
  loc_12E459B:         global_120 = "RCT"
  loc_12E45A5:         global_124 = vbNullString
  loc_12E45BD:         Call Proc_185_166_1324960(vbNullString, 0)
  loc_12E45D2:         Set var_98 = Me.TxtAcName
  loc_12E45D8:         Call 0.Method_Proc_185_168_12E49600 (0, var_9C)
  loc_12E4601:         If (Trim(CVar(var_9C)) = vbNullString) Then
  loc_12E4621:           var_9C = Me.Fields.Item("ToBy")
  loc_12E4670:           Set var_140 = Me.TxtCrDr
  loc_12E4676:           Call 0.Method_Proc_185_168_12E49600 (0, var_144)
  loc_12E467E:           var_144.Text = CStr(IIf((var_9C.Value = "Yes"), "To", "Cr"))
  loc_12E469E:         End If
  loc_12E46A1:       Else
  loc_12E46AB:         If (var_8C = CInt(&H78)) Then
  loc_12E46B4:           global_120 = "JV"
  loc_12E46BE:           global_124 = vbNullString
  loc_12E46D6:           Call Proc_185_166_1324960(vbNullString, 0)
  loc_12E46EB:           Set var_98 = Me.TxtAcName
  loc_12E46F1:           Call 0.Method_Proc_185_168_12E49600 (0, var_9C)
  loc_12E471A:           If (Trim(CVar(var_9C)) = vbNullString) Then
  loc_12E473A:             var_9C = Me.Fields.Item("ToBy")
  loc_12E4789:             Set var_140 = Me.TxtCrDr
  loc_12E478F:             Call 0.Method_Proc_185_168_12E49600 (0, var_144)
  loc_12E4797:             var_144.Text = CStr(IIf((var_9C.Value = "Yes"), "By", "Dr"))
  loc_12E47B7:           End If
  loc_12E47B7:         End If
  loc_12E47B7:       End If
  loc_12E47B7:     End If
  loc_12E47B7:   End If
  loc_12E47B7: End If
  loc_12E47C3: Set var_98 = Me.TxtVtYpe
  loc_12E47C9: Call 0.Method_Proc_185_168_12E49600 (0, var_9C)
  loc_12E47E8: If (var_9C.Tag <> vbNullString) Then
  loc_12E4814:   var_150 = "SELECT * FROM VOUCHER_TYPE WHERE SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "' AND V_TYPE='"
  loc_12E4823:   Set var_98 = Me.TxtVtYpe
  loc_12E4829:   Call 0.Method_Proc_185_168_12E49600 (0, var_9C, var_14C, var_150)
  loc_12E4831:   var_AC = var_9C.Tag
  loc_12E483A:   var_154 = -1 & var_14C
  loc_12E484A:   unk_5C26BA.Execute var_154 & "'", var_140, var_8A
  loc_12E4855:   Set var_88 = var_140
  loc_12E4889:   If (var_88.RecordCount > 0) Then
  loc_12E48D6:     If CBool(Trim(CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("FirstDrCr"))))) <> vbNullString) Then
  loc_12E4901:       var_90 = Proc_183_2_E5A304(CVar(var_88.Fields.Item("FirstDrCr")))
  loc_12E490D:       Set var_140 = Me.TxtCrDr
  loc_12E4913:       Call 0.Method_Proc_185_168_12E49600 (0, var_144)
  loc_12E491B:       var_144.Text = var_90
  loc_12E492F:     End If
  loc_12E492F:   End If
  loc_12E492F: End If
  loc_12E4934: Set var_88 = Nothing
  loc_12E4937: Exit Sub
  loc_12E4938: ' Referenced from: 12E42BC
  loc_12E493E: Call 0.Method_arg_50 (var_90)
  loc_12E4946: var_148 = "FrmHotKey"
  loc_12E4953: Proc_183_57_104AA84(var_90)
  loc_12E495F: Exit Sub
End Sub

Public Sub Proc_185_169_F64464
  'Data Table: 5C26A4
  loc_F64344: If (CBool(Me.DGAcHlp.Visible) = &HFF) Then
  loc_F64356:   Me.DGAcHlp.Visible = False
  loc_F6435E: End If
  loc_F6437A: If (CBool(Me.DGVchrHlp.Visible) = &HFF) Then
  loc_F6438C:   Me.DGVchrHlp.Visible = False
  loc_F64394: End If
  loc_F643AF: If (Me.TxtDetailS.Visible = &HFF) Then
  loc_F643BE:   Me.TxtDetailS.Visible = False
  loc_F643C6: End If
  loc_F643E1: If (Me.FrameRef.Visible = &HFF) Then
  loc_F643F0:   Me.FrameRef.Visible = False
  loc_F643F8: End If
  loc_F64413: If (Me.FrameTDS.Visible = &HFF) Then
  loc_F64422:   Me.FrameTDS.Visible = False
  loc_F6442A: End If
  loc_F64446: If (CBool(Me.DGTDSCODE.Visible) = &HFF) Then
  loc_F64458:   Me.DGTDSCODE.Visible = False
  loc_F64460: End If
  loc_F64460: Exit Sub
End Sub

Public Sub Proc_185_170_13BE820
  'Data Table: 5C26A4
  Dim var_88 As Variant
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_104 As MSHFlexGrid
  Dim var_108 As String
  Dim var_118 As String
  loc_13BDEB0: On Error Goto loc_13BE7F6
  loc_13BDEC2: Me.FRAMEVLIST.Top = CDbl(630)
  loc_13BDED9: Me.FRAMEVLIST.Left = CDbl(2010)
  loc_13BDEEF: Set var_88 = Me.Frame1
  loc_13BDEF5: Call 0.Method_Proc_185_170_13BE8200 (1, var_8C)
  loc_13BDEFD: var_8C.Top = CDbl(630)
  loc_13BDF17: Set var_88 = Me.Frame1
  loc_13BDF1D: Call 0.Method_Proc_185_170_13BE8200 (1, var_8C)
  loc_13BDF25: var_8C.Left = CDbl(2010)
  loc_13BDF3D: Set var_88 = Me.Label1
  loc_13BDF43: Call 0.Method_Proc_185_170_13BE8200 (1, var_8C)
  loc_13BDF62: Me.DGAcHlp.Left = CVar(var_8C.Left)
  loc_13BDF7C: Set var_88 = Me.Label1
  loc_13BDF82: Call 0.Method_Proc_185_170_13BE8200 (1, var_8C)
  loc_13BDFA1: Me.DGAcHlp.Top = CVar(var_8C.Top)
  loc_13BDFCE: Set var_88 = Me.Line2
  loc_13BDFD4: Call 0.Method_Proc_185_170_13BE8200 (0, var_8C)
  loc_13BDFDC: var_90 = var_8C.Y1
  loc_13BDFEA: var_A0 = CVar((var_90 - CDbl(Me.DGAcHlp.Top))) 'Single
  loc_13BDFF3: Set var_C8 = Me.DGAcHlp
  loc_13BDFF9: var_C8.Height = CVar(var_8C.Top)
  loc_13BE01B: Me.FrameTDS.Left = CDbl(2000)
  loc_13BE032: Me.FrameTDS.Top = CDbl(1035)
  loc_13BE048: Me.FRAMEADJUST.Left = CDbl(0)
  loc_13BE05F: Me.FRAMEADJUST.Top = CDbl(1035)
  loc_13BE079: Me.FgridAdjust.Left = CVar(CDbl(&H5A))
  loc_13BE094: Me.FgridAdjust.Top = CVar(CDbl(465))
  loc_13BE0AB: Me.FRAMEADJUST.Width = CDbl(11680)
  loc_13BE0C2: Me.FRAMEADJUST.Height = CDbl(5300)
  loc_13BE0DD: Me.FgridAdjust.Width = CVar(CDbl(10700))
  loc_13BE0F8: Me.FgridAdjust.Height = CVar(CDbl(4000))
  loc_13BE137: Me.TXTNARRATION.Top = (CDbl(Me.FgridAdjust.Top) + CDbl(Me.FgridAdjust.Height))
  loc_13BE164: Set var_8C = Me.TXTNARRATION
  loc_13BE16A: var_8C.Width = CDbl(Me.FgridAdjust.Width)
  loc_13BE188: Me.BTS_AUTO_ADJ.Left = CDbl(10800)
  loc_13BE19F: Me.Command2.Left = CDbl(10800)
  loc_13BE1B6: Me.ADJ_OK.Left = CDbl(10800)
  loc_13BE1CD: Me.ADJ_CANCLE.Left = CDbl(10800)
  loc_13BE1D5: var_A0 = 2
  loc_13BE1E4: var_E8 = CVar(CInt(1)) 'Integer
  loc_13BE1EC: Set var_88 = Me.FgridAdjust
  loc_13BE1F2: LateIdCallSt
  loc_13BE1FD: var_A0 = 5
  loc_13BE20C: var_E8 = CVar(CInt(1)) 'Integer
  loc_13BE214: Set var_88 = Me.FgridAdjust
  loc_13BE21A: LateIdCallSt
  loc_13BE225: var_A0 = 7
  loc_13BE234: var_E8 = CVar(CInt(1)) 'Integer
  loc_13BE23C: Set var_88 = Me.FgridAdjust
  loc_13BE242: LateIdCallSt
  loc_13BE24D: var_A0 = 8
  loc_13BE25C: var_E8 = CVar(CInt(7)) 'Integer
  loc_13BE264: Set var_88 = Me.FgridAdjust
  loc_13BE26A: LateIdCallSt
  loc_13BE275: var_A0 = 9
  loc_13BE284: var_E8 = CVar(CInt(7)) 'Integer
  loc_13BE28C: Set var_88 = Me.FgridAdjust
  loc_13BE292: LateIdCallSt
  loc_13BE29D: var_A0 = &HA
  loc_13BE2AC: var_E8 = CVar(CInt(7)) 'Integer
  loc_13BE2B4: Set var_88 = Me.FgridAdjust
  loc_13BE2BA: LateIdCallSt
  loc_13BE2C5: var_A0 = 3
  loc_13BE2CE: var_E8 = 0
  loc_13BE2DB: Set var_88 = Me.FgridAdjust
  loc_13BE2E1: LateIdCallSt
  loc_13BE2EC: var_A0 = &HB
  loc_13BE2F5: var_E8 = 0
  loc_13BE302: Set var_88 = Me.FgridAdjust
  loc_13BE308: LateIdCallSt
  loc_13BE313: var_A0 = &HC
  loc_13BE31C: var_E8 = 0
  loc_13BE329: Set var_88 = Me.FgridAdjust
  loc_13BE32F: LateIdCallSt
  loc_13BE33A: var_A0 = &HD
  loc_13BE343: var_E8 = 0
  loc_13BE356: LateIdCallSt
  loc_13BE367: Call 0.Method_arg_70 (var_90, Me.FgridAdjust, var_E8, var_A0, Me.FgridAdjust, var_E8, var_A0, Me.FgridAdjust)
  loc_13BE379: Me.FrameRef.Left = var_90
  loc_13BE38D: Set var_88 = Me.TxtCrDr
  loc_13BE393: Call 0.Method_Proc_185_170_13BE8200 (0, var_8C, var_90, var_E8, var_A0)
  loc_13BE39B: var_88 = var_8C.Top
  loc_13BE3AD: Me.FrameRef.Top = var_90
  loc_13BE3C7: Set var_B4 = Me.TxtCr
  loc_13BE3CD: Call 0.Method_Proc_185_170_13BE8200 (0, var_C8, var_FC, var_E8)
  loc_13BE3D5: var_A0 = var_C8.Width
  loc_13BE3E6: Set var_88 = Me.TxtCr
  loc_13BE3EC: Call 0.Method_Proc_185_170_13BE8200 (0, var_8C, var_90)
  loc_13BE3F4: var_88 = var_8C.Left
  loc_13BE40B: Me.FrameRef.Width = (var_90 + var_FC)
  loc_13BE43B: Set var_88 = Me.Frame1
  loc_13BE441: Call 0.Method_Proc_185_170_13BE8200 (0, var_8C)
  loc_13BE460: Me.FrameRef.Height = (var_8C.Height - Me.FrameRef.Top)
  loc_13BE489: var_A0 = CVar((Me.FrameRef.Left + CDbl(&H32))) 'Single
  loc_13BE498: Me.FGridRef.Left = var_A0
  loc_13BE4BD: var_A0 = CVar((Me.FrameRef.Width - CDbl(&H64))) 'Single
  loc_13BE4CC: Me.FGridRef.Width = var_A0
  loc_13BE4F2: var_A0 = CVar((Me.FrameRef.Height - CDbl(1000))) 'Single
  loc_13BE501: Me.FGridRef.Height = var_A0
  loc_13BE511: Set var_104 = Me.FGridRef
  loc_13BE522: var_108 = CStr(CLng(var_104.BackColor))
  loc_13BE528: global_52 = var_108
  loc_13BE53E: var_104.Cols = 9
  loc_13BE543: var_A0 = 0
  loc_13BE54C: var_E8 = &H15E
  loc_13BE558: LateIdCallSt
  loc_13BE563: var_A0 = CVar(CLng(5)) 'Long
  loc_13BE568: var_E8 = 0
  loc_13BE574: LateIdCallSt
  loc_13BE57F: var_A0 = CVar(CLng(6)) 'Long
  loc_13BE584: var_E8 = 0
  loc_13BE590: LateIdCallSt
  loc_13BE59B: var_A0 = CVar(CLng(7)) 'Long
  loc_13BE5A0: var_E8 = 0
  loc_13BE5AC: LateIdCallSt
  loc_13BE5B4: var_A0 = 0
  loc_13BE5C0: var_E8 = CVar(CLng(1)) 'Long
  loc_13BE5C5: var_118 = "Adj.Type"
  loc_13BE5CE: LateIdCallSt
  loc_13BE5D9: var_A0 = CVar(CLng(1)) 'Long
  loc_13BE5E4: var_E8 = CVar(CInt(1)) 'Integer
  loc_13BE5EB: LateIdCallSt
  loc_13BE5F6: var_A0 = CVar(CLng(1)) 'Long
  loc_13BE5FB: var_E8 = &H7D0
  loc_13BE607: LateIdCallSt
  loc_13BE60F: var_A0 = 0
  loc_13BE61B: var_E8 = CVar(CLng(2)) 'Long
  loc_13BE620: var_118 = "Ref."
  loc_13BE629: LateIdCallSt
  loc_13BE634: var_A0 = CVar(CLng(2)) 'Long
  loc_13BE63F: var_E8 = CVar(CInt(1)) 'Integer
  loc_13BE646: LateIdCallSt
  loc_13BE651: var_A0 = CVar(CLng(2)) 'Long
  loc_13BE65C: var_E8 = CVar(CInt(7)) 'Integer
  loc_13BE663: LateIdCallSt
  loc_13BE66E: var_A0 = CVar(CLng(2)) 'Long
  loc_13BE673: var_E8 = &H7D0
  loc_13BE67F: LateIdCallSt
  loc_13BE687: var_A0 = 0
  loc_13BE693: var_E8 = CVar(CLng(4)) 'Long
  loc_13BE698: var_118 = "Debit"
  loc_13BE6A1: LateIdCallSt
  loc_13BE6AC: var_A0 = CVar(CLng(4)) 'Long
  loc_13BE6B7: var_E8 = CVar(CInt(7)) 'Integer
  loc_13BE6BE: LateIdCallSt
  loc_13BE6C9: var_A0 = CVar(CLng(4)) 'Long
  loc_13BE6D4: var_E8 = CVar(CInt(7)) 'Integer
  loc_13BE6DB: LateIdCallSt
  loc_13BE6E6: var_A0 = CVar(CLng(4)) 'Long
  loc_13BE6EB: var_E8 = &H6A4
  loc_13BE6F7: LateIdCallSt
  loc_13BE6FF: var_A0 = 0
  loc_13BE70B: var_E8 = CVar(CLng(3)) 'Long
  loc_13BE710: var_118 = "Credit"
  loc_13BE719: LateIdCallSt
  loc_13BE724: var_A0 = CVar(CLng(3)) 'Long
  loc_13BE72F: var_E8 = CVar(CInt(7)) 'Integer
  loc_13BE736: LateIdCallSt
  loc_13BE741: var_A0 = CVar(CLng(3)) 'Long
  loc_13BE74C: var_E8 = CVar(CInt(7)) 'Integer
  loc_13BE753: LateIdCallSt
  loc_13BE75E: var_A0 = CVar(CLng(3)) 'Long
  loc_13BE763: var_E8 = &H6A4
  loc_13BE76F: LateIdCallSt
  loc_13BE777: var_A0 = 0
  loc_13BE783: var_E8 = CVar(CLng(8)) 'Long
  loc_13BE788: var_118 = "DueDate"
  loc_13BE791: LateIdCallSt
  loc_13BE79C: var_A0 = CVar(CLng(8)) 'Long
  loc_13BE7A7: var_E8 = CVar(CInt(1)) 'Integer
  loc_13BE7AE: LateIdCallSt
  loc_13BE7B9: var_A0 = CVar(CLng(8)) 'Long
  loc_13BE7C4: var_E8 = CVar(CInt(1)) 'Integer
  loc_13BE7CB: LateIdCallSt
  loc_13BE7D6: var_A0 = CVar(CLng(8)) 'Long
  loc_13BE7DB: var_E8 = &H7D0
  loc_13BE7E7: LateIdCallSt
  loc_13BE7F1: Set var_104 = Nothing 
  loc_13BE7F5: Exit Sub
  loc_13BE7F6: ' Referenced from: 13BDEB0
  loc_13BE7FC: Call 0.Method_arg_50 (var_108, var_104, var_E8, var_A0, var_104, var_E8, var_A0, var_104)
  loc_13BE811: Proc_183_57_104AA84(var_108, "Ini_Grid", var_E8, var_A0, var_104)
  loc_13BE81D: Exit Sub
End Sub

Public Sub Proc_185_171_1B374EC(arg_C) '1B374EC
  'Data Table: 5C26A4
  Dim var_F0 As Variant
  Dim var_108 As Variant
  Dim var_124 As Variant
  Dim var_E8 As String
  Dim var_100 As String
  Dim var_104 As String
  Dim var_118 As String
  Dim var_11C As String
  Dim var_134 As String
  Dim var_138 As String
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_F4 As String
  Dim unk_5C26BA As Connection15
  Dim var_EC As Variant
  Dim var_1DC As Variant
  Dim Me As Recordset15
  Dim var_C6 As Integer
  Dim var_C8 As Integer
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_DC As Long
  Dim var_8C As Variant
  Dim var_214 As Double
  Dim var_158 As Variant
  Dim var_208 As Variant
  Dim var_90 As Recordset15
  Dim var_188 As Variant
  Dim var_234 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  Dim var_10C As String
  Dim var_110 As String
  Dim var_128 As String
  Dim var_120 As Variant
  Dim var_28C As Fields15
  Dim var_290 As Variant
  Dim var_2A4 As Variant
  Dim var_2D8 As Variant
  Dim var_2C8 As Variant
  Dim var_2A0 As Variant
  Dim var_2EC As Variant
  Dim var_2F4 As Fields15
  Dim var_2F8 As Field20
  Dim var_AA As Integer
  Dim var_94 As Recordset15
  Dim var_310 As Double
  Dim var_2B8 As Variant
  Dim var_308 As Variant
  Dim var_3AC As Variant
  Dim var_338 As Double
  Dim var_43C As Variant
  Dim var_910 As Double
  Dim var_4D0 As Variant
  Dim var_4E0 As Variant
  Dim var_570 As Variant
  Dim var_580 As Variant
  Dim var_610 As Variant
  Dim var_708 As Variant
  Dim var_760 As Variant
  Dim var_7F4 As Fields15
  Dim var_1B8 As Variant
  Dim var_320 As Variant
  Dim var_330 As Variant
  Dim var_35C As Variant
  Dim var_3CC As Variant
  Dim var_3EC As Variant
  Dim var_460 As Variant
  Dim var_480 As Variant
  Dim var_500 As Variant
  Dim var_520 As Variant
  Dim var_5A0 As Variant
  Dim var_5C0 As Variant
  Dim var_5E0 As Variant
  Dim var_600 As Variant
  Dim var_670 As Variant
  Dim var_848 As Variant
  Dim var_4F0 As Variant
  Dim var_590 As Variant
  Dim var_620 As Variant
  Dim var_6B0 As Variant
  Dim var_6C0 As Variant
  Dim var_6F4 As Fields15
  Dim var_6F8 As Field20
  Dim var_718 As Variant
  loc_1B32B34: Set var_EC = Me.TxtVtYpe
  loc_1B32B3A: Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0)
  loc_1B32B65: Set var_120 = Me.TxtVno
  loc_1B32B6B: Call 0.Method_Proc_185_171_1B374EC0 (0, var_124)
  loc_1B32BBC: var_134 = MemVar_1F9206C & Proc_183_15_EAC900(MemVar_1F92070, 2) & Proc_183_15_EAC900(var_F0.Tag, 5) & Proc_183_15_EAC900(Me.LblVPrefix.Caption, 5)
  loc_1B32BD4: var_B0 = var_134 & Proc_183_16_EAECDC(var_124.Text, 8)
  loc_1B32C04: Set var_EC = Me.TxtGlb
  loc_1B32C0A: Call 0.Method_Proc_185_171_1B374EC0 (0)
  loc_1B32C37: If (Len(Trim(CVar(var_F0))) > 0) Then
  loc_1B32C43:   Set var_EC = Me.TxtGlb
  loc_1B32C49:   Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0)
  loc_1B32C8B:   If (Asc(CStr(Right(Trim(CVar(var_F0)), 1))) = &HA) Then
  loc_1B32C97:     Set var_EC = Me.TxtGlb
  loc_1B32C9D:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0)
  loc_1B32CBA:     Set var_108 = Me.TxtGlb
  loc_1B32CC0:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_120)
  loc_1B32CE0:     var_1A8 = (Len(Trim(CVar(var_120))) - 1)
  loc_1B32D01:     Set var_124 = Me.TxtGlb
  loc_1B32D07:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_1BC)
  loc_1B32D0F:     var_1BC.Text = CStr(Left(Trim(CVar(var_F0)), CLng(var_1A8)))
  loc_1B32D2F:   End If
  loc_1B32D38:   Set var_EC = Me.TxtGlb
  loc_1B32D3E:   Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0)
  loc_1B32D80:   If (Asc(CStr(Right(Trim(CVar(var_F0)), 1))) = &HD) Then
  loc_1B32D8C:     Set var_EC = Me.TxtGlb
  loc_1B32D92:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0)
  loc_1B32D9A:     var_148 = CVar(var_F0) 'Address
  loc_1B32DA1:     var_158 = Trim(var_148)
  loc_1B32DAF:     Set var_108 = Me.TxtGlb
  loc_1B32DB5:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_120)
  loc_1B32DC4:     var_188 = Trim(CVar(var_120))
  loc_1B32DD5:     var_1A8 = (Len(var_188) - 1)
  loc_1B32DF6:     Set var_124 = Me.TxtGlb
  loc_1B32DFC:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_1BC)
  loc_1B32E04:     var_1BC.Text = CStr(Left(var_158, CLng(var_1A8)))
  loc_1B32E24:   End If
  loc_1B32E24: End If
  loc_1B32E2C: If (arg_C = "A") Then
  loc_1B32E35:   var_1CC = 0
  loc_1B32E62:   unk_5C26BA.Execute "SELECT COUNT(*) FROM LEDGERM WHERE DocId='" & var_B0 & "'", var_148, -1
  loc_1B32E6A:   var_EC = var_EC.Fields
  loc_1B32E72:   var_1CC = var_F0.Item(var_F0)
  loc_1B32E7A:   var_108 = var_108.Value
  loc_1B32EA1:   If (var_158 > 0) Then
  loc_1B32EA8:     var_86 = CByte(2) 'Byte
  loc_1B32EAC:     Proc_185_171_1B374EC = var_158
  loc_1B32EB2:   End If
  loc_1B32EB2: End If
  loc_1B32EBA: If (arg_C = "E") Then
  loc_1B32EE1:   var_F0 = Me.Fields.Item("DocID")
  loc_1B32EE9:   var_148 = var_F0.Value
  loc_1B32EFD:   If CBool(CVar(var_B0) <> var_148) Then
  loc_1B32F06:     var_1CC = 0
  loc_1B32F23:     var_E8 = "SELECT COUNT(*) FROM LEDGERM WHERE DocId='" & var_B0
  loc_1B32F33:     unk_5C26BA.Execute var_E8 & "'", var_148, -1
  loc_1B32F3B:     var_EC = var_EC.Fields
  loc_1B32F43:     var_1CC = var_F0.Item(var_F0)
  loc_1B32F4B:     var_108 = var_108.Value
  loc_1B32F72:     If (var_158 > 0) Then
  loc_1B32F79:       var_86 = CByte(2) 'Byte
  loc_1B32F7D:       Proc_185_171_1B374EC = var_158
  loc_1B32F83:     End If
  loc_1B32F83:   End If
  loc_1B32F83: End If
  loc_1B32F87: var_B2 = CByte(0) 'Byte
  loc_1B32F8D: var_C6 = 0
  loc_1B32F99: var_86 = CByte(0) 'Byte
  loc_1B32FAE: var_DC = 0
  loc_1B32FB4: var_D8 = vbNullString
  loc_1B32FBA: var_D4 = vbNullString
  loc_1B32FD9: Set var_EC = Me.TxtVtYpe
  loc_1B32FDF: Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0, var_E8, "SELECT * FROM Voucher_Include WHERE V_TYPE='", var_148, -1, var_108)
  loc_1B32FE7: var_DC = var_F0.Tag
  loc_1B3300E: unk_5C26BA.Execute CDbl(0) & var_E8 & "' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') ORDER BY GROUPCODE", CDbl(0), 0
  loc_1B33019: Set var_8C = var_108
  loc_1B33049: If (var_8C.RecordCount <= 0) Then
  loc_1B3304E:   var_C6 = &HFF
  loc_1B33053:   var_C8 = &HFF
  loc_1B33056: End If
  loc_1B3307B: For var_1E4 = 0 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_96 = var_1E4 'Integer
  loc_1B33085:   var_178 = CVar(CLng(var_96)) 'Long
  loc_1B3308A:   var_1DC = 5
  loc_1B330BE:   If (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) > CDbl(0)) Then
  loc_1B330C8:     var_A0 = (var_A0 + CDbl(1))
  loc_1B330CF:     var_178 = CVar(CLng(var_96)) 'Long
  loc_1B330D4:     var_1DC = 2
  loc_1B330F2:     var_D8 = CStr(Me.FGrid1.TextMatrix))
  loc_1B330FE:   Else
  loc_1B33102:     var_178 = CVar(CLng(var_96)) 'Long
  loc_1B33107:     var_1DC = 6
  loc_1B3313B:     If (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) > CDbl(0)) Then
  loc_1B33145:       var_A8 = (var_A8 + CDbl(1))
  loc_1B3314C:       var_178 = CVar(CLng(var_96)) 'Long
  loc_1B33151:       var_1DC = 2
  loc_1B3316F:       var_D4 = CStr(Me.FGrid1.TextMatrix))
  loc_1B33178:     End If
  loc_1B33178:   End If
  loc_1B3317B: Next var_1E4 'Integer
  loc_1B3318F: If ((CDbl(0) = CDbl(1)) Or (CDbl(0) = CDbl(1))) Then
  loc_1B331B7:   For var_1F8 = 0 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_96 = var_1F8 'Integer
  loc_1B331C1:     var_178 = CVar(CLng(var_96)) 'Long
  loc_1B331C6:     var_1DC = 5
  loc_1B331FA:     If (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) > CDbl(0)) Then
  loc_1B33204:       If (CDbl(0) = CDbl(1)) Then
  loc_1B3320B:         var_178 = CVar(CLng(var_96)) 'Long
  loc_1B33210:         var_1DC = 4
  loc_1B33224:         Set var_EC = Me.FGrid1
  loc_1B3322A:         LateIdCallSt
  loc_1B33235:       End If
  loc_1B33238:     Else
  loc_1B3323C:       var_178 = CVar(CLng(var_96)) 'Long
  loc_1B33241:       var_1DC = 6
  loc_1B33275:       If (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) > CDbl(0)) Then
  loc_1B3327F:         If (CDbl(0) = CDbl(1)) Then
  loc_1B33286:           var_178 = CVar(CLng(var_96)) 'Long
  loc_1B3328B:           var_1DC = 4
  loc_1B3329F:           Set var_EC = Me.FGrid1
  loc_1B332A5:           LateIdCallSt
  loc_1B332B0:         End If
  loc_1B332B0:       End If
  loc_1B332B0:     End If
  loc_1B332B3:   Next var_1F8 'Integer
  loc_1B332B8: End If
  loc_1B332BB: var_D8 = vbNullString
  loc_1B332C1: var_D4 = vbNullString
  loc_1B332C7: var_A0 = CDbl(0)
  loc_1B332CD: var_A8 = CDbl(0)
  loc_1B332F5: For var_20C = 0 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_96 = var_20C 'Integer
  loc_1B332FF:   var_178 = CVar(CLng(var_96)) 'Long
  loc_1B33304:   var_1DC = 5
  loc_1B33334:   var_A0 = (var_A0 + Val(CStr(Me.FGrid1.TextMatrix))))
  loc_1B33344:   var_178 = CVar(CLng(var_96)) 'Long
  loc_1B33349:   var_1DC = 6
  loc_1B3336F:   var_214 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1B33379:   var_A8 = (var_A8 + var_214)
  loc_1B33399:   If (var_8C.RecordCount > 0) Then
  loc_1B333A5:     var_1DC = 2
  loc_1B333C9:     var_168 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1B333D4:     Proc_183_9_EAA760(var_188, var_168, var_1DC, CVar(CLng(var_96)), var_A8, var_214, var_1DC, CVar(CLng(var_96)))
  loc_1B333FC:     unk_5C26BA.Execute CStr("SELECT GROUPCODE FROM SUBGROUP WHERE SUBCODE=" & var_188), var_1A8, -1
  loc_1B33407:     Set var_90 = var_F0
  loc_1B33437:     If (var_90.RecordCount > 0) Then
  loc_1B3343D:       var_8C.MoveFirst
  loc_1B3346C:       var_F0 = var_90.Fields.Item("GroupCode")
  loc_1B33486:       Proc_183_9_EAA760(var_168, Trim(CVar(var_F0)), "GROUPCODE=", 0, 1, var_1DC, var_F0)
  loc_1B3348E:       var_188 = var_A0 & var_168 
  loc_1B33499:       var_8C.Find CStr(var_188), var_214, var_1DC
  loc_1B334B3:       var_178 = CVar(CLng(var_96)) 'Long
  loc_1B334B8:       var_1DC = 5
  loc_1B334EC:       If (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) > CDbl(0)) Then
  loc_1B334FE:         If Not(var_8C.EOF) Then
  loc_1B3353D:           If (var_8C.Fields.Item("dr").Value = "Y") Then
  loc_1B33542:             var_C6 = &HFF
  loc_1B33545:           End If
  loc_1B33545:         End If
  loc_1B33545:       End If
  loc_1B33549:       var_178 = CVar(CLng(var_96)) 'Long
  loc_1B3354E:       var_1DC = 6
  loc_1B33582:       If (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) > CDbl(0)) Then
  loc_1B33594:         If Not(var_8C.EOF) Then
  loc_1B335D3:           If (var_8C.Fields.Item("cr").Value = "Y") Then
  loc_1B335D8:             var_C8 = &HFF
  loc_1B335DB:           End If
  loc_1B335DB:         End If
  loc_1B335DB:       End If
  loc_1B335DB:     End If
  loc_1B335DB:   End If
  loc_1B335DF:   var_178 = CVar(CLng(var_96)) 'Long
  loc_1B335E4:   var_1DC = 4
  loc_1B33602:   var_E8 = CStr(Me.FGrid1.TextMatrix))
  loc_1B3360E:   var_208 = CVar(CLng(var_96)) 'Long
  loc_1B33654:   If (5 And (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) > CDbl(0))) Then
  loc_1B3367C:     For var_248 = 0 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_AA = var_248 'Integer
  loc_1B33686:       var_258 = CVar(CLng(var_96)) 'Long
  loc_1B3368B:       var_278 = 5
  loc_1B3369E:       var_168 = Me.FGrid1.TextMatrix)
  loc_1B336B8:       var_178 = CVar(CLng(var_AA)) 'Long
  loc_1B336BD:       var_1DC = 4
  loc_1B336DB:       var_E8 = CStr(Me.FGrid1.TextMatrix))
  loc_1B336E7:       var_208 = CVar(CLng(var_AA)) 'Long
  loc_1B33734:       If (6 And (CDbl(Val(CStr(Me.FGrid1.TextMatrix)))) = CDbl(Val(CStr(var_168))))) Then
  loc_1B3373B:         var_208 = CVar(CLng(var_AA)) 'Long
  loc_1B33740:         var_234 = 4
  loc_1B3374D:         var_178 = CVar(CLng(var_96)) 'Long
  loc_1B33752:         var_1DC = 2
  loc_1B33770:         var_158 = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_1B33778:         Set var_F0 = Me.FGrid1
  loc_1B3377E:         LateIdCallSt
  loc_1B33798:         var_208 = CVar(CLng(var_96)) 'Long
  loc_1B3379D:         var_234 = 4
  loc_1B337AA:         var_178 = CVar(CLng(var_AA)) 'Long
  loc_1B337AF:         var_1DC = 2
  loc_1B337C2:         var_148 = Me.FGrid1.TextMatrix)
  loc_1B337CD:         var_158 = CVar(CStr(var_148)) 'String
  loc_1B337D5:         Set var_F0 = Me.FGrid1
  loc_1B337DB:         LateIdCallSt
  loc_1B337F1:       End If
  loc_1B337F4:     Next var_248 'Integer
  loc_1B337F9:   End If
  loc_1B337FC: Next var_20C 'Integer
  loc_1B33809: If (arg_C = "A") Then
  loc_1B33812:   var_1CC = 0
  loc_1B3383F:   unk_5C26BA.Execute "SELECT COUNT(*) FROM LEDGERM WHERE DocId='" & var_B0 & "'", var_148, -1
  loc_1B33847:   var_EC = var_EC.Fields
  loc_1B3384F:   var_1CC = var_F0.Item(var_F0)
  loc_1B33857:   var_108 = var_108.Value
  loc_1B3387E:   If (var_158 > 0) Then
  loc_1B33885:     var_86 = CByte(2) 'Byte
  loc_1B33889:     Proc_185_171_1B374EC = var_158
  loc_1B3388F:   End If
  loc_1B3388F: End If
  loc_1B33897: If (arg_C = "E") Then
  loc_1B338BE:   var_F0 = Me.Fields.Item("DocID")
  loc_1B338C6:   var_148 = var_F0.Value
  loc_1B338DA:   If CBool(CVar(var_B0) <> var_148) Then
  loc_1B338E3:     var_1CC = 0
  loc_1B33900:     var_E8 = "SELECT COUNT(*) FROM LEDGERM WHERE DocId='" & var_B0
  loc_1B33910:     unk_5C26BA.Execute var_E8 & "'", var_148, -1
  loc_1B33918:     var_EC = var_EC.Fields
  loc_1B33920:     var_1CC = var_F0.Item(var_F0)
  loc_1B33928:     var_108 = var_108.Value
  loc_1B3394F:     If (var_158 > 0) Then
  loc_1B33956:       var_86 = CByte(2) 'Byte
  loc_1B3395A:       Proc_185_171_1B374EC = var_158
  loc_1B33960:     End If
  loc_1B33960:   End If
  loc_1B33960: End If
  loc_1B33966: If (var_C6 = 0) Then
  loc_1B3396D:   var_86 = CByte(5) 'Byte
  loc_1B33977:   Call 0.Method_arg_50 (var_E8)
  loc_1B33998:   MsgBox("Entry Does not Include Required Debit Account", &H10, CVar(var_E8), var_168, var_188)
  loc_1B339A8:   Proc_185_171_1B374EC = 
  loc_1B339AE: End If
  loc_1B339B4: If (var_C8 = 0) Then
  loc_1B339BB:   var_86 = CByte(5) 'Byte
  loc_1B339C5:   Call 0.Method_arg_50 (var_E8)
  loc_1B339E6:   MsgBox("Entry Does not Include Required Credit Account", &H10, CVar(var_E8), var_168, var_188)
  loc_1B339F6:   Proc_185_171_1B374EC = 
  loc_1B339FC: End If
  loc_1B33A09: var_214 = Val(CStr(var_A8))
  loc_1B33A18: var_E8 = CStr(var_A0)
  loc_1B33A2E: If ((var_A0 = CDbl(0)) Or (CDbl(Val(var_E8)) <> CDbl(var_214))) Then
  loc_1B33A35:   var_86 = CByte(4) 'Byte
  loc_1B33A3F:   Call 0.Method_arg_50 (var_E8)
  loc_1B33A5A:   var_148 = "Entry Mismatched"
  loc_1B33A60:   MsgBox(var_148, &H10, CVar(var_E8), var_168, var_188)
  loc_1B33A70:   Proc_185_171_1B374EC = var_214
  loc_1B33A76: End If
  loc_1B33A8D: If (Me.RecordCount > 0) Then
  loc_1B33AA4:   var_E8 = "SELECT * FROM VOUCHER_TYPE WHERE NCAT='TDS' AND site_Code='" & MemVar_1F92070
  loc_1B33AC2:   unk_5C26BA.Execute var_E8 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "'", var_148, -1
  loc_1B33ACD:   Set var_8C = var_EC
  loc_1B33AF5:   If (var_8C.RecordCount > 0) Then
  loc_1B33B0A:     var_EC = var_8C.Fields
  loc_1B33B23:     var_D8 = CStr(var_EC.Item("V_Type").Value)
  loc_1B33B33:   Else
  loc_1B33B39:     Call 0.Method_arg_50 (var_E8)
  loc_1B33B5A:     MsgBox("There Must be a TDS Vr.Type", &H10, CVar(var_E8), var_168, var_188)
  loc_1B33B6A:     Proc_185_171_1B374EC = var_EC
  loc_1B33B70:   End If
  loc_1B33B70: End If
  loc_1B33B87: If (Me.RecordCount > 0) Then
  loc_1B33B8A:   ' Referenced from: 1B33C7C
  loc_1B33B9C:   If Not(Me.EOF) Then
  loc_1B33BDB:     If (Proc_183_2_E5A304(CVar(Me.Fields.Item("TDSDocId"))) <> vbNullString) Then
  loc_1B33C09:       var_E0 = Proc_183_2_E5A304(CVar(Me.Fields.Item("TDSDocId")))
  loc_1B33C2C:       var_F0 = Me.Fields.Item("TDSDocId")
  loc_1B33C34:       var_148 = CVar(var_F0) 'Address
  loc_1B33C4D:       var_158 = CVar(Proc_183_2_E5A304(var_148)) 'String
  loc_1B33C53:       var_188 = Mid(var_158, &HE, 8)
  loc_1B33C5D:       var_DC = CLng(var_188)
  loc_1B33C71:     End If
  loc_1B33C77:     Me.MoveNext
  loc_1B33C7C:     GoTo loc_1B33B8A
  loc_1B33C7F:   End If
  loc_1B33C87:   If (var_E0 = vbNullString) Then
  loc_1B33CC5:     var_104 = "SELECT Max(V_NO) AS VNO FROM LEDGER WHERE V_TYPE='" & var_D8 & "' AND V_PREFIX='" & Me.LblVPrefix.Caption & "' AND SITE_CODE='"
  loc_1B33CDC:     unk_5C26BA.Execute var_104 & MemVar_1F92070 & "'", var_148, -1
  loc_1B33CE7:     Set var_8C = var_F0
  loc_1B33D0B:     var_1E0 = var_8C.RecordCount
  loc_1B33D19:     If (var_1E0 > 0) Then
  loc_1B33D33:       var_F0 = var_8C.Fields.Item("VNo")
  loc_1B33D42:       Proc_183_3_E7D1C8(var_158, CVar(var_F0))
  loc_1B33D4F:       var_168 = (var_158 + 1)
  loc_1B33D55:       var_DC = CLng(8)
  loc_1B33D67:     Else
  loc_1B33D6C:       var_DC = 1
  loc_1B33D6F:     End If
  loc_1B33DC4:     var_10C = var_F0 & Proc_183_15_EAC900(var_D8, 5, var_DC & Proc_183_15_EAC900(MemVar_1F92070, 2, MemVar_1F9206C, var_DC))
  loc_1B33DDC:     var_11C = var_10C & Proc_183_15_EAC900(Me.LblVPrefix.Caption, 5)
  loc_1B33DF5:     var_E0 = var_11C & Proc_183_16_EAECDC(CStr(Trim(Str(var_DC))), 8)
  loc_1B33E17:   End If
  loc_1B33E17: End If
  loc_1B33E20: unk_5C26BA.BeginTrans var_1E0
  loc_1B33E29: var_B2 = CByte(1) 'Byte
  loc_1B33E35: If (arg_C = "E") Then
  loc_1B33E3B:   Call Proc_185_172_F24680(var_B0)
  loc_1B33E40: End If
  loc_1B33E51: If ((arg_C = "E") Or (arg_C = "D")) Then
  loc_1B33EAA:   unk_5C26BA.Execute CStr("SELECT * FROM LEDGER WHERE DocId='" & Me.Fields.Item("DocID").Value & "'"), var_188, -1
  loc_1B33EB5:   Set var_8C = var_108
  loc_1B33ECF:   ' Referenced from: 1B340A4
  loc_1B33EDE:   If Not(var_8C.EOF) Then
  loc_1B33F1A:     var_108 = var_8C.Fields
  loc_1B33F53:     var_188 = CVar(var_8C.Fields.Item("AmtCr")) 'Address
  loc_1B33F6E:     var_1A8 = IIf((var_108.Item("AmtCr").Value > 0), var_188, 0)
  loc_1B33FBE:     var_2C8 = CVar(var_8C.Fields.Item("AmtDr")) 'Address
  loc_1B34000:     var_320 = var_8C.Fields.Item("GroupCode").Value
  loc_1B3401F:     var_2F8 = var_8C.Fields.Item("V_DATE")
  loc_1B34027:     var_330 = var_2F8.Value
  loc_1B34058:     Proc_183_0_1279094(MemVar_1F921DC, CStr(var_8C.Fields.Item("subcode").Value), CSng(var_1A8), CSng(IIf((var_8C.Fields.Item("AmtDr").Value > 0), var_2C8, 0)))
  loc_1B3409F:     var_8C.MoveNext
  loc_1B340A4:     GoTo loc_1B33ECF
  loc_1B340A7:   End If
  loc_1B340FD:   unk_5C26BA.Execute CStr("DELETE FROM LEDGER WHERE DocId='" & Me.Fields.Item("DocID").Value & "'"), var_188, -1
  loc_1B34126:   var_1CC = "SELECT TDSCODE,TDSAMT,V_DATE,GROUPCODE,TDSDRCODE,TDSDocId FROM LEDGERTDS LEFT JOIN SUBGROUP ON LEDGERTDS.TDSCODE=SUBGROUP.SUBCODE WHERE DOCID='"
  loc_1B3416F:   unk_5C26BA.Execute CStr(var_1CC & Me.Fields.Item("DocID").Value & "'"), var_188, -1
  loc_1B3417A:   Set var_8C = var_108
  loc_1B341A8:   If (var_8C.RecordCount > 0) Then
  loc_1B341AB:     ' Referenced from: 1B34416
  loc_1B341BA:     If Not(var_8C.EOF) Then
  loc_1B34284:       Proc_183_0_1279094(MemVar_1F921DC, CStr(var_8C.Fields.Item("TDSCODE").Value), CSng(var_8C.Fields.Item("TDSAmt").Value), CDbl(0), CStr(var_8C.Fields.Item("GroupCode").Value), CDate(var_8C.Fields.Item("V_DATE").Value))
  loc_1B342E7:       var_108 = var_8C.Fields
  loc_1B3430E:       var_124 = var_8C.Fields
  loc_1B34335:       var_28C = var_8C.Fields
  loc_1B34345:       var_188 = var_28C.Item("V_DATE").Value
  loc_1B34375:       Proc_183_0_1279094(MemVar_1F921DC, CStr(var_8C.Fields.Item("TDSDRCODE").Value), CDbl(0), CSng(var_108.Item("TDSAmt").Value), CStr(var_124.Item("GroupCode").Value), CDate(var_188))
  loc_1B343F2:       unk_5C26BA.Execute CStr("DELETE FROM LEDGER WHERE DOCID='" & var_8C.Fields.Item("TDSDocId").Value & "'"), var_188, -1
  loc_1B34411:       var_8C.MoveNext
  loc_1B34416:       GoTo loc_1B341AB
  loc_1B34419:     End If
  loc_1B3446F:     unk_5C26BA.Execute CStr("DELETE FROM LEDGERTDS WHERE DocId='" & Me.Fields.Item("DocID").Value & "'"), var_188, -1
  loc_1B3448B:   End If
  loc_1B3448B: End If
  loc_1B3449C: If ((arg_C = "A") Or (arg_C = "E")) Then
  loc_1B344A1:   var_AA = 0
  loc_1B344C9:   For var_33C = 0 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_96 = var_33C 'Integer
  loc_1B344D3:     var_208 = CVar(CLng(var_96)) 'Long
  loc_1B344D8:     var_234 = 5
  loc_1B344E5:     Set var_F0 = Me.FGrid1
  loc_1B34505:     var_178 = CVar(CLng(var_96)) 'Long
  loc_1B3450A:     var_1DC = 6
  loc_1B3454E:     If (CDbl((Val(CStr(Me.FGrid1.TextMatrix))) + Val(CStr(var_F0.TextMatrix))))) > CDbl(0)) Then
  loc_1B3455D:       var_AA = (var_AA + 1)
  loc_1B34564:       var_178 = CVar(CLng(var_96)) 'Long
  loc_1B34569:       var_1DC = 2
  loc_1B3458D:       var_168 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1B345BE:       unk_5C26BA.Execute CStr("SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='" & var_168 & "'"), var_1A8, -1
  loc_1B345C9:       Set var_94 = var_F0
  loc_1B345F9:       If (var_94.RecordCount > 0) Then
  loc_1B34600:         var_178 = CVar(CLng(var_96)) 'Long
  loc_1B3462B:         var_214 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1B34640:         Call 0.Method_Proc_185_171_1B374EC0 (0, var_108, var_10C, var_214, 1, var_178, Me.TxtVtYpe)
  loc_1B34648:         var_1DC = var_108.Tag
  loc_1B34659:         Set var_120 = Me.TxtVno
  loc_1B3465F:         Call 0.Method_Proc_185_171_1B374EC0 (0, var_124, var_11C, var_178, var_AA)
  loc_1B34667:         var_1DC = var_124.Text
  loc_1B34674:         var_310 = Val(var_11C)
  loc_1B34682:         Proc_183_9_EAA760(var_168, CVar(Me.LblVPrefix), var_310)
  loc_1B34690:         Set var_1BC = Me.VchDt
  loc_1B34696:         Call 0.Method_Proc_185_171_1B374EC0 (0, var_28C, var_178)
  loc_1B346A5:         Proc_183_7_EB0C44(var_2C8, CVar(var_28C))
  loc_1B346C0:         Set var_290 = Me.FGrid1
  loc_1B346C6:         var_308 = var_290.TextMatrix)
  loc_1B34701:         var_338 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1B34733:         var_910 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1B3474C:         Set var_2EC = Me.FGrid1
  loc_1B3475D:         var_4E0 = CVar(CStr(var_2EC.TextMatrix))) 'String
  loc_1B34763:         Proc_183_9_EAA760(var_4F0, var_4E0, 4, CVar(CLng(var_96)), var_910, 5, CVar(CLng(var_96)), var_338)
  loc_1B3478F:         var_580 = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_1B34795:         Proc_183_9_EAA760(var_590, var_580, 8, CVar(CLng(var_96)), 6, CVar(CLng(var_96)))
  loc_1B3479F:         var_610 = CVar(Proc_6_14_EF349C(var_308, 2, CVar(CLng(var_96)))) 'String
  loc_1B347A5:         Proc_183_8_EB0AA4(var_620, var_610)
  loc_1B347B3:         Set var_2F4 = Me.TxtCHno
  loc_1B347B9:         Call 0.Method_Proc_185_171_1B374EC0 (0, var_2F8)
  loc_1B347D3:         Proc_183_9_EAA760(var_6C0, Trim(CVar(var_2F8)))
  loc_1B347E1:         Set var_6F4 = Me.TXTChDate
  loc_1B347E7:         Call 0.Method_Proc_185_171_1B374EC0 (0, var_6F8)
  loc_1B347EF:         var_708 = CVar(var_6F8) 'Address
  loc_1B347F6:         Proc_183_7_EB0C44(var_718, var_708)
  loc_1B34804:         Set var_74C = Me.TXTClrDate
  loc_1B3480A:         Call 0.Method_Proc_185_171_1B374EC0 (0, var_750)
  loc_1B34812:         var_760 = CVar(var_750) 'Address
  loc_1B34819:         Proc_183_7_EB0C44(var_770, var_760)
  loc_1B34829:         Proc_183_9_EAA760(var_7C0, vbNullString)
  loc_1B34840:         var_7F4 = var_94.Fields
  loc_1B34890:         var_E8 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,Chq_No,Chq_Date,Clg_Date,AgRefNo,GROUPCODE,GROUPNATURE,LOGSITE_CODE) VALUES ('" & var_B0
  loc_1B348CB:         var_188 = CVar(var_E8 & "'," & CStr(var_214) & ",'" & var_10C & "'," & CStr(var_310) & ",") 'String
  loc_1B348F4:         var_2D8 = var_188 & var_168 & ",'" & CVar(MemVar_1F92070) & "'," & var_2C8 
  loc_1B34908:         var_330 = var_2D8 & ",'" & CVar(CStr(var_308)) 
  loc_1B34930:         var_460 = var_330 & "'," & CVar(var_338) & "," & CVar(var_910) 
  loc_1B34950:         var_5A0 = var_460 & "," & var_4F0 & "," & var_590 
  loc_1B3496C:         var_600 = var_5A0 & ",'" & CVar(MemVar_1F920C8) & "'," 
  loc_1B34986:         var_670 = var_600 & var_620 & ",'" & CVar(arg_C) 
  loc_1B349DF:         var_848 = var_670 & "'," & var_6C0 & "," & var_718 & "," & var_770 & "," & var_7C0 & ",'" & var_7F4.Item("GroupCode").Value & "','" 
  loc_1B34A10:         unk_5C26BA.Execute CStr(var_848 & var_94.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F92078) & "')"), var_904, -1
  loc_1B34AE8:         var_178 = CVar(CLng(var_96)) 'Long
  loc_1B34AED:         var_1DC = 7
  loc_1B34B0B:         var_E8 = CStr(Me.FGrid1.TextMatrix))
  loc_1B34B17:         var_208 = CVar(CLng(var_96)) 'Long
  loc_1B34B3A:         var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_1B34B58:         If (7 Or (var_F4 = "To")) Then
  loc_1B34B5F:           var_178 = CVar(CLng(var_96)) 'Long
  loc_1B34B64:           var_1DC = 2
  loc_1B34B77:           var_148 = Me.FGrid1.TextMatrix)
  loc_1B34BB2:           var_910 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1B34BE8:           Set var_124 = Me.VchDt
  loc_1B34BEE:           Call 0.Method_Proc_185_171_1B374EC0 (0, var_1BC, var_F4, var_910, 6, CVar(CLng(var_96)), var_148)
  loc_1B34BF6:           var_1DC = var_1BC.Text
  loc_1B34C25:           Proc_183_0_1279094(MemVar_1F921DC, CStr(var_148), CDbl(0), var_910, CStr(var_94.Fields.Item("GroupCode").Value), CDate(var_F4))
  loc_1B34C50:         Else
  loc_1B34C54:           var_178 = CVar(CLng(var_96)) 'Long
  loc_1B34C59:           var_1DC = 7
  loc_1B34C77:           var_E8 = CStr(Me.FGrid1.TextMatrix))
  loc_1B34C83:           var_208 = CVar(CLng(var_96)) 'Long
  loc_1B34CA6:           var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_1B34CC4:           If (7 Or (var_F4 = "By")) Then
  loc_1B34CCB:             var_178 = CVar(CLng(var_96)) 'Long
  loc_1B34CD0:             var_1DC = 2
  loc_1B34CE3:             var_148 = Me.FGrid1.TextMatrix)
  loc_1B34D0B:             var_158 = Me.FGrid1.TextMatrix)
  loc_1B34D1E:             var_910 = Val(CStr(var_158))
  loc_1B34D3B:             var_120 = var_94.Fields.Item("GroupCode")
  loc_1B34D43:             var_168 = var_120.Value
  loc_1B34D54:             Set var_124 = Me.VchDt
  loc_1B34D5A:             Call 0.Method_Proc_185_171_1B374EC0 (0, var_1BC, var_F4, var_910, 5, CVar(CLng(var_96)), var_148)
  loc_1B34D62:             var_1DC = var_1BC.Text
  loc_1B34D91:             Proc_183_0_1279094(MemVar_1F921DC, CStr(var_148), var_910, CDbl(0), CStr(var_168), CDate(var_F4))
  loc_1B34DB9:           End If
  loc_1B34DB9:         End If
  loc_1B34DBC:       Else
  loc_1B34DD5:         MsgBox("Group Not Defined", 0, var_158, var_168, var_188)
  loc_1B34DE5:         GoTo loc_1B374A0
  loc_1B34DE8:       End If
  loc_1B34DFF:       If (Me.RecordCount > 0) Then
  loc_1B34E0B:         Me.Sort = "VSNo ASC"
  loc_1B34E14:         var_178 = CVar(CLng(var_96)) 'Long
  loc_1B34E19:         var_1DC = 1
  loc_1B34E65:         Me.Find "VSNO=" & CStr(Val(CStr(Me.FGrid1.TextMatrix)))), 0, 1
  loc_1B34E8D:         If (Me.EOF = 0) Then
  loc_1B34E90:           ' Referenced from: 1B34FAD
  loc_1B34EB5:           var_158 = Me.Fields.Item("VSno").Value
  loc_1B34EC1:           var_1CC = CVar(CLng(var_96)) 'Long
  loc_1B34F06:           If (1 = CVar(Val(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_1B34F2E:             var_158 = Me.Fields.Item("subcode").Value
  loc_1B34F3A:             var_1CC = CVar(CLng(var_96)) 'Long
  loc_1B34F75:             If CBool(2 <> CVar(CStr(Me.FGrid1.TextMatrix)))) Then
  loc_1B34F83:               Me.Delete
  loc_1B34F88:             End If
  loc_1B34F8E:             Me.MoveNext
  loc_1B34FA7:             If (Me.EOF = &HFF) Then
  loc_1B34FAA:               GoTo loc_1B34FB0
  loc_1B34FAD:             End If
  loc_1B34FAD:             GoTo loc_1B34E90
  loc_1B34FB0:             ' Referenced from: 1B34FAA
  loc_1B34FB0:           End If
  loc_1B34FB0:         End If
  loc_1B34FB0:       End If
  loc_1B34FC7:       If (Me.RecordCount > 0) Then
  loc_1B34FD3:         Me.Sort = "V_SNo ASC"
  loc_1B34FDC:         var_178 = CVar(CLng(var_96)) 'Long
  loc_1B34FE1:         var_1DC = 1
  loc_1B3502D:         Me.Find "V_SNO=" & CStr(Val(CStr(Me.FGrid1.TextMatrix)))), 0, 1
  loc_1B35055:         If (Me.EOF = 0) Then
  loc_1B35058:           ' Referenced from: 1B35175
  loc_1B3507D:           var_158 = Me.Fields.Item("V_SNo").Value
  loc_1B35089:           var_1CC = CVar(CLng(var_96)) 'Long
  loc_1B350CE:           If (1 = CVar(Val(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_1B350EE:             var_F0 = Me.Fields.Item("subcode")
  loc_1B350F6:             var_158 = var_F0.Value
  loc_1B35102:             var_1CC = CVar(CLng(var_96)) 'Long
  loc_1B3513D:             If CBool(2 <> CVar(CStr(Me.FGrid1.TextMatrix)))) Then
  loc_1B3514B:               Me.Delete
  loc_1B35150:             End If
  loc_1B35156:             Me.MoveNext
  loc_1B3516F:             If (Me.EOF = &HFF) Then
  loc_1B35172:               GoTo loc_1B35178
  loc_1B35175:             End If
  loc_1B35175:             GoTo loc_1B35058
  loc_1B35178:             ' Referenced from: 1B35172
  loc_1B35178:           End If
  loc_1B35178:         End If
  loc_1B35178:       End If
  loc_1B35178:     End If
  loc_1B3517B:   Next var_33C 'Integer
  loc_1B3519B:   Set var_EC = Me.TopCtrl1
  loc_1B351A1:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005(((global_200 <> var_B0) And (global_200 <> vbNullString)))
  loc_1B351BB:   If ( And (CStr() = "Edit")) Then
  loc_1B351C3:     var_128 = 0
  loc_1B351D6:     var_11C = 0
  loc_1B351E1:     var_118 = 0
  loc_1B351F4:     var_110 = 0
  loc_1B351FF:     var_10C = 0
  loc_1B35212:     var_104 = 0
  loc_1B35259:     Proc_154_5_10E33A4(MemVar_1F921DC, "Ledger", "Docid", &HC8, global_200, 0, 0, 0)
  loc_1B3527A:     var_128 = 0
  loc_1B3528D:     var_11C = 0
  loc_1B35298:     var_118 = 0
  loc_1B352AB:     var_110 = 0
  loc_1B352B6:     var_10C = 0
  loc_1B352C9:     var_104 = 0
  loc_1B35310:     Proc_154_5_10E33A4(MemVar_1F921DC, "LEDGERM", "DocId", &HC8, global_200, 0, 0, 0)
  loc_1B35331:     var_128 = 0
  loc_1B35344:     var_11C = 0
  loc_1B3534F:     var_118 = 0
  loc_1B35362:     var_110 = 0
  loc_1B3536D:     var_10C = 0
  loc_1B35380:     var_104 = 0
  loc_1B353C7:     Proc_154_5_10E33A4(MemVar_1F921DC, "LEDGERADJ", "DocId1", &HC8, global_200, 0, 0, 0)
  loc_1B353E8:     var_128 = 0
  loc_1B353FB:     var_11C = 0
  loc_1B35406:     var_118 = 0
  loc_1B35419:     var_110 = 0
  loc_1B35424:     var_10C = 0
  loc_1B35437:     var_104 = 0
  loc_1B3546C:     var_F4 = "DocId"
  loc_1B3547E:     Proc_154_5_10E33A4(MemVar_1F921DC, "LEDGERTDS", var_F4, &HC8, global_200, 0, 0, 0)
  loc_1B3549A:   End If
  loc_1B354A2:   If (arg_C = "A") Then
  loc_1B354B1:     Set var_EC = Me.TxtVtYpe
  loc_1B354B7:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0, var_F4, var_104, 0, var_10C)
  loc_1B354BF:     var_110 = var_F0.Tag
  loc_1B354C8:     var_148 = CVar(Me.LblVPrefix) 'Address
  loc_1B354CF:     Proc_183_9_EAA760(var_158, var_148, 0)
  loc_1B354E0:     Set var_108 = Me.TxtVno
  loc_1B354E6:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_120, var_104)
  loc_1B354EE:     var_118 = var_120.Text
  loc_1B354FB:     var_214 = Val(var_104)
  loc_1B35507:     Set var_124 = Me.VchDt
  loc_1B3550D:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_1BC, var_214)
  loc_1B3551C:     Proc_183_7_EB0C44(var_2D8, CVar(var_1BC))
  loc_1B3552D:     Set var_28C = Me.TxtGlb
  loc_1B35533:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_290, var_10C)
  loc_1B3553B:     var_11C = var_290.Text
  loc_1B3555D:     var_320 = CVar(Replace(var_10C, vbCrLf, vbNullString, 1, -1, 0)) 'String
  loc_1B35563:     Proc_183_9_EAA760(var_330, CVar(CStr(var_308)))
  loc_1B3556D:     var_43C = CVar(Proc_6_14_EF349C(0)) 'String
  loc_1B35573:     Proc_183_8_EB0AA4(var_460)
  loc_1B35583:     Proc_183_9_EAA760(var_4E0, arg_C)
  loc_1B3559C:     var_E8 = "INSERT INTO LedgerM (DocId,V_Type,v_Prefix,V_No,Site_Code,V_Date,Narration,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & var_B0
  loc_1B355AA:     var_100 = var_E8 & "','" & var_F4
  loc_1B35607:     var_3AC = CVar(var_100 & "',") & var_158 & "," & CVar(var_214) & ",'" & CVar(MemVar_1F92070) & "'," & var_2D8 & "," & var_330 & ",'" 
  loc_1B3565B:     unk_5C26BA.Execute CStr(var_3AC & CVar(MemVar_1F920C8) & "'," & var_460 & "," & var_4E0 & ",'" & CVar(MemVar_1F92078) & "')"), var_580, -1
  loc_1B356CD:     Set var_EC = Me.TxtVno
  loc_1B356D3:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0, var_E8)
  loc_1B356DB:     var_2A4 = var_F0.Text
  loc_1B356E8:     var_214 = Val(var_E8)
  loc_1B356F7:     Set var_108 = Me.TxtVtYpe
  loc_1B356FD:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_120, var_100)
  loc_1B35743:     var_10C = "UPDATE VOUCHER_Prefix SET Start_Srl_No=" & CStr(var_120.Tag) & " WHERE V_Type='" & var_100
  loc_1B3576D:     var_138 = var_10C & "' and Prefix='" & Me.LblVPrefix.Caption & "' AND SITE_cODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_1B3577D:     unk_5C26BA.Execute var_138 & "'", var_148, -1
  loc_1B357BF:     Set var_EC = Me.TxtVtYpe
  loc_1B357C5:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0, var_E8)
  loc_1B357CD:     var_1BC = var_F0.Tag
  loc_1B357D8:     global_140 = var_E8
  loc_1B357FE:     global_128 = Me.LblVPrefix.Caption
  loc_1B3580B:   Else
  loc_1B35817:     Set var_EC = Me.TxtVtYpe
  loc_1B3581D:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0)
  loc_1B35825:     var_F4 = var_F0.Tag
  loc_1B35835:     Proc_183_9_EAA760(var_158, CVar(Me.LblVPrefix))
  loc_1B35846:     Set var_108 = Me.TxtVno
  loc_1B3584C:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_120)
  loc_1B35861:     var_214 = Val(var_120.Text)
  loc_1B3586D:     Set var_124 = Me.VchDt
  loc_1B35873:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_1BC)
  loc_1B35882:     Proc_183_7_EB0C44(var_2D8, CVar(var_1BC))
  loc_1B35893:     Set var_28C = Me.TxtGlb
  loc_1B35899:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_290, var_10C)
  loc_1B358C3:     var_320 = CVar(Replace(var_10C, vbCrLf, vbNullString, 1, -1, 0)) 'String
  loc_1B358C9:     Proc_183_9_EAA760(var_330, CVar(CStr(CVar(var_100 & "',") & var_158 & "," & CVar(var_290.Text) & ",'" & CVar(MemVar_1F92070) & "'," & var_2D8 & ",")))
  loc_1B358D3:     var_43C = CVar(Proc_6_14_EF349C(var_43C)) 'String
  loc_1B358D9:     Proc_183_8_EB0AA4(var_460)
  loc_1B3594B:     var_1A8 = CVar("UPDATE LedgerM SET DocId='" & var_B0 & "',V_Type='" & var_F4 & "',v_Prefix=") & var_158 & ",V_No=" & CVar(var_290.Text) 
  loc_1B35967:     var_2B8 = var_1A8 & ",Site_Code='" & CVar(MemVar_1F92070) & "',V_Date=" 
  loc_1B359AA:     var_4D0 = var_2B8 & var_2D8 & ",Narration=" & var_330 & ",U_Name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_460 & ",U_AE='" 
  loc_1B359B4:     var_4E0 = var_4D0 & CVar(arg_C) 
  loc_1B359D0:     var_520 = var_4E0 & "',LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' WHERE DocId='" 
  loc_1B359EE:     unk_5C26BA.Execute CStr(var_520 & Me.Fields.Item("DocID").Value & "'"), var_5A0, -1
  loc_1B35A5C:   End If
  loc_1B35A65:   Set var_EC = Me.VchDt
  loc_1B35A6B:   Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0)
  loc_1B35A87:   var_158 = "dd/MMM/yyyy"
  loc_1B35A90:   var_148 = CVar(var_F0) 'Address
  loc_1B35AA4:   var_188 = (Format(var_148, var_158) + " ")
  loc_1B35ACB:   var_2A0 = (1 + Format(Time, "hh:nn:ss"))
  loc_1B35AD0:   var_D0 = CStr("hh:nn:ss" & ",Site_Code='" & CVar(MemVar_1F92070))
  loc_1B35B22:   Set var_EC = Me.TxtVtYpe
  loc_1B35B28:   Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0, var_F4, "SELECT COUNT(*) FROM LastVoucher WHERE User_Name='" & MemVar_1F920C8 & "' AND V_Type='", var_148, -1, var_108)
  loc_1B35B30:   var_120 = var_F0.Tag
  loc_1B35B65:   unk_5C26BA.Execute 0 & var_F4 & "' AND SITE_cODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "'", var_124, var_158
  loc_1B35B6D:   1 = var_108.Fields
  loc_1B35B75:   1 = var_120.Item(CVar("UPDATE LedgerM SET DocId='" & var_B0 & "',V_Type='" & var_F4 & "',v_Prefix=") & var_158)
  loc_1B35B7D:    = var_124.Value
  loc_1B35BB6:   If (var_158 > 0) Then
  loc_1B35BE2:     Proc_183_8_EB0AA4(var_148, var_D0, CVar("UPDATE LastVoucher Set DOCID='" & var_B0 & "',Last_Ent_Date="))
  loc_1B35BF3:     var_188 = var_4D0 & var_148 & ",V_Type='" 
  loc_1B35C03:     Set var_EC = Me.TxtVtYpe
  loc_1B35C09:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0, var_F4)
  loc_1B35C11:     var_188 = var_F0.Tag
  loc_1B35C1C:     var_1A8 = -1 & CVar(var_F4) 
  loc_1B35C34:     Proc_183_8_EB0AA4(var_2B8, CVar(Proc_6_14_EF349C("hh:nn:ss" & "',U_EntDt=")))
  loc_1B35C3C:     var_2C8 = var_124 & var_2B8 
  loc_1B35C7B:     Set var_108 = Me.TxtVtYpe
  loc_1B35C81:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_120)
  loc_1B35C94:     var_3AC = var_2C8 & ",U_NAME='" & CVar(MemVar_1F920C8) & "' where User_Name='" & CVar(MemVar_1F920C8) & "' AND V_Type='" & CVar(var_120.Tag) 
  loc_1B35CD1:     unk_5C26BA.Execute CStr(var_3AC & "' AND SITE_cODE='" & CVar(MemVar_1F92070) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'"), , 
  loc_1B35D1E:   Else
  loc_1B35D32:     var_E8 = "INSERT INTO LastVoucher (User_Name,V_Type,Last_Ent_Date,DOCID,U_Name,U_EntDt,SITE_CODE,LOGSITE_CODE) Values ('" & MemVar_1F920C8
  loc_1B35D48:     Set var_EC = Me.TxtVtYpe
  loc_1B35D4E:     Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0, var_F4, var_E8 & "','")
  loc_1B35D56:     var_3AC = var_F0.Tag
  loc_1B35D5F:     var_100 = -1 & var_F4
  loc_1B35D66:     var_158 = CVar(CStr(var_3AC & "' AND SITE_cODE='" & CVar(MemVar_1F92070) & "' AND LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'") & "',") 'String
  loc_1B35D74:     Proc_183_8_EB0AA4(var_148, var_D0)
  loc_1B35D8F:     var_198 = var_158 & var_148 & ",'" & CVar(var_B0) 
  loc_1B35DBA:     Proc_183_8_EB0AA4(var_2C8, CVar(Proc_6_14_EF349C(var_198 & "','" & CVar(MemVar_1F920C8) & "',")))
  loc_1B35DC2:     var_2D8 = var_108 & var_2C8 
  loc_1B35DE8:     var_330 = var_2D8 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) 
  loc_1B35DFF:     unk_5C26BA.Execute CStr(var_330 & "')"), , 
  loc_1B35E3F:   End If
  loc_1B35E71:   unk_5C26BA.Execute "DELETE FROM LEDGERAdj WHERE DocId1='" & var_B0 & "' OR DocId2='" & var_B0 & "'", var_148, -1
  loc_1B35E9E:   If (Me.RecordCount > 0) Then
  loc_1B35EA7:     Me.MoveFirst
  loc_1B35EAC:     ' Referenced from: 1B36380
  loc_1B35EBE:     If Not(Me.EOF) Then
  loc_1B35EEA:       Proc_183_3_E7D1C8(var_158, CVar(Me.Fields.Item("cr")))
  loc_1B35F04:       If (var_158 > 0) Then
  loc_1B35F14:         var_1CC = "INSERT INTO LEDGERADJ (DOCID1,V_SNO1,DOCID2,V_SNO2,CR,SUBCODE,U_Name,U_EntDt,U_AE,SITE_CODE,LOGSITE_CODE) VALUES ('"
  loc_1B35F2E:         var_EC = Me.Fields
  loc_1B35F46:         var_158 = var_1CC & var_EC.Item("DocID").Value 
  loc_1B35F7C:         Proc_183_3_E7D1C8(var_198, CVar(Me.Fields.Item("V_SNo")), var_158 & "',", var_600)
  loc_1B35F84:         var_1A8 = -1 & var_198 
  loc_1B35FC6:         var_2C8 = CVar(Me.Fields.Item("VSno")) 'Address
  loc_1B35FCD:         Proc_183_3_E7D1C8(var_2D8, var_2C8, var_198 & "','" & ",'" & CVar(var_B0) & "',")
  loc_1B36004:         var_320 = CVar(Me.Fields.Item("cr")) 'Address
  loc_1B3600B:         Proc_183_3_E7D1C8(var_330, var_320)
  loc_1B36072:         var_4D0 = CVar(Proc_6_14_EF349C(var_2EC & var_2D8 & "," & var_330 & ",'" & Me.Fields.Item("subcode").Value & "','" & CVar(MemVar_1F920C8) & "',")) 'String
  loc_1B36078:         Proc_183_8_EB0AA4(var_4E0, var_4D0)
  loc_1B36089:         var_500 = var_EC & var_4E0 & "," 
  loc_1B36098:         Proc_183_9_EAA760(var_520, arg_C)
  loc_1B360CF:         var_5E0 = var_500 & var_520 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_1B360DD:         unk_5C26BA.Execute CStr(var_5E0), , 
  loc_1B36142:       Else
  loc_1B36156:         var_E8 = "INSERT INTO LEDGERADJ (DOCID1,V_SNO1,DOCID2,V_SNO2,CR,SUBCODE,U_Name,U_EntDt,U_AE,SITE_CODE,LOGSITE_CODE) VALUES ('" & var_B0
  loc_1B36172:         var_EC = Me.Fields
  loc_1B36182:         var_148 = CVar(var_EC.Item("VSno")) 'Address
  loc_1B36189:         Proc_183_3_E7D1C8(var_158, var_148, CVar(var_E8 & "',"))
  loc_1B361CB:         var_1B8 = var_5E0 & var_158 & ",'" & Me.Fields.Item("DocID").Value 
  loc_1B36201:         Proc_183_3_E7D1C8(var_2C8, CVar(Me.Fields.Item("V_SNo")), var_1B8 & "',")
  loc_1B36209:         var_2D8 = -1 & var_2C8 
  loc_1B3623F:         Proc_183_3_E7D1C8(var_320, CVar(Me.Fields.Item("dr")))
  loc_1B36294:         var_43C = var_2D8 & "," & var_320 & ",'" & Me.Fields.Item("subcode").Value & "','" & CVar(MemVar_1F920C8) 
  loc_1B362AC:         Proc_183_8_EB0AA4(var_4D0, CVar(Proc_6_14_EF349C(var_43C & "',")))
  loc_1B362CC:         Proc_183_9_EAA760(var_500, arg_C)
  loc_1B362D4:         var_520 = var_2EC & var_4D0 & "," & var_500 
  loc_1B362FA:         var_5A0 = var_520 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) 
  loc_1B36311:         unk_5C26BA.Execute CStr(var_5A0 & "')"), , 
  loc_1B36375:       End If
  loc_1B3637B:       Me.MoveNext
  loc_1B36380:       GoTo loc_1B35EAC
  loc_1B36383:     End If
  loc_1B36383:   End If
  loc_1B363A7:   unk_5C26BA.Execute "DELETE FROM LedgerRef WHERE DocId='" & var_B0 & "'", var_148, -1
  loc_1B363D0:   If (Me.RecordCount > 0) Then
  loc_1B363D5:     var_AA = 0
  loc_1B363EE:     unk_5C26BA.Execute "SELECT MAX(ID) AS MaxId FROM LedgerRef", var_148, -1
  loc_1B363F9:     Set var_8C = var_EC
  loc_1B36416:     If (var_8C.RecordCount > 0) Then
  loc_1B36428:       var_EC = var_8C.Fields
  loc_1B3643F:       Proc_183_3_E7D1C8(var_158, CVar(var_EC.Item("MaxId")), var_EC)
  loc_1B36448:       var_AA = CInt(var_158)
  loc_1B36455:     End If
  loc_1B3645B:     Me.MoveFirst
  loc_1B36460:     ' Referenced from: 1B367A6
  loc_1B36472:     If Not(Me.EOF) Then
  loc_1B3647B:       var_AA = (var_AA + 1)
  loc_1B36497:       var_F4 = "INSERT INTO LedgerRef (ID,DOCID,V_SNO,DR,CR,SUBCODE,U_Name,U_EntDt,U_AE,AgRefType,AgRefNo,DueDate,V_dATE,SITE_CODE,LOGSITE_CODE) VALUES (" & CStr(var_AA)
  loc_1B364C1:       var_EC = Me.Fields
  loc_1B364D8:       Proc_183_3_E7D1C8(var_158, CVar(var_EC.Item("V_SNo")), CVar(var_F4 & ",'" & var_B0 & "',"), var_708, -1)
  loc_1B36516:       Proc_183_3_E7D1C8(var_1B8, CVar(Me.Fields.Item("dr")), var_74C & var_158 & ",", var_AA)
  loc_1B36554:       Proc_183_3_E7D1C8(var_2D8, CVar(Me.Fields.Item("cr")), var_AA & var_1B8 & ",")
  loc_1B365BB:       var_3EC = CVar(Proc_6_14_EF349C(var_AA & var_2D8 & ",'" & Me.Fields.Item("subcode").Value & "','" & CVar(MemVar_1F920C8) & "',")) 'String
  loc_1B365C1:       Proc_183_8_EB0AA4(var_43C, var_3EC)
  loc_1B365E1:       Proc_183_9_EAA760(var_4D0, arg_C)
  loc_1B3661F:       Proc_183_9_EAA760(var_520, CVar(Me.Fields.Item("AgRefType")))
  loc_1B3665D:       Proc_183_9_EAA760(var_5A0, CVar(Me.Fields.Item("AgRefNo")))
  loc_1B3669B:       Proc_183_7_EB0C44(var_610, CVar(Me.Fields.Item("DueDate")))
  loc_1B366B9:       Set var_6F4 = Me.VchDt
  loc_1B366BF:       Call 0.Method_Proc_185_171_1B374EC0 (0, var_6F8)
  loc_1B366CE:       Proc_183_7_EB0C44(var_670, CVar(var_6F8))
  loc_1B366E9:       var_6B0 = var_EC & var_43C & "," & var_4D0 & "," & var_520 & "," & var_5A0 & "," & var_610 & "," & var_670 & ",'" & CVar(MemVar_1F92070) 
  loc_1B366F2:       var_6C0 = var_6B0 & "','" 
  loc_1B36713:       unk_5C26BA.Execute CStr(var_6C0 & CVar(MemVar_1F92078) & "')"), , 
  loc_1B367A1:       Me.MoveNext
  loc_1B367A6:       GoTo loc_1B36460
  loc_1B367A9:     End If
  loc_1B367A9:   End If
  loc_1B367AB:   var_AA = 0
  loc_1B367C5:   If (Me.RecordCount > 0) Then
  loc_1B367CE:     Me.MoveFirst
  loc_1B367D3:     ' Referenced from: 1B373E4
  loc_1B367E5:     If Not(Me.EOF) Then
  loc_1B367EE:       var_AA = (var_AA + 1)
  loc_1B36805:       var_E8 = "INSERT INTO LEDGERTDS (DocId,V_SNo,TDSCode,TDSDrCode,TDSYN,ONAMT,TDS,TDSAMT,TDSPOST,TDSDocId,TDSV_SNo,V_dATE,v_Prefix,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & var_B0
  loc_1B3685E:       var_108 = Me.Fields
  loc_1B3686E:       var_198 = var_108.Item("TDSCODE").Value
  loc_1B368B0:       var_2B8 = CVar(var_E8 & "',") & Me.Fields.Item("V_SNo").Value & ",'" & var_198 & "','" & Me.Fields.Item("TDSDRCODE").Value 
  loc_1B3695E:       var_3CC = var_2B8 & "','" & Me.Fields.Item("TDSYN").Value & "'," & Me.Fields.Item("ONAmt").Value & "," & Me.Fields.Item("TDS").Value 
  loc_1B369CA:       var_4D0 = Me.Fields.Item("TDSPOST").Value
  loc_1B36A01:       var_580 = var_3CC & "," & Me.Fields.Item("TDSAmt").Value & ",'" & var_4D0 & "','" & CVar(var_E0) & "'," & CVar(var_AA) & "," 
  loc_1B36A0E:       Set var_74C = Me.VchDt
  loc_1B36A14:       Call 0.Method_Proc_185_171_1B374EC0 (0, var_750, var_580, var_760)
  loc_1B36A23:       Proc_183_7_EB0C44(var_5A0, CVar(var_750), -1)
  loc_1B36A43:       Proc_183_9_EAA760(var_610, CVar(Me.LblVPrefix), var_7F4 & var_5A0 & ",")
  loc_1B36A4B:       var_620 = var_AA & var_610 
  loc_1B36A89:       Proc_183_8_EB0AA4(var_6C0, CVar(Proc_6_14_EF349C(var_620 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "',")))
  loc_1B36ACE:       unk_5C26BA.Execute CStr(var_AA & var_6C0 & ",'" & CVar(arg_C) & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1B36B94:       var_F0 = Me.Fields.Item("TDSCODE")
  loc_1B36BA3:       var_158 = Trim(CVar(var_F0))
  loc_1B36BC2:       unk_5C26BA.Execute CStr("SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='" & var_158 & "'"), var_198, -1
  loc_1B36BCD:       Set var_94 = var_108
  loc_1B36BFB:       If (var_94.RecordCount > 0) Then
  loc_1B36C09:         Proc_183_9_EAA760(var_158, CVar(Me.LblVPrefix))
  loc_1B36C17:         Set var_EC = Me.VchDt
  loc_1B36C1D:         Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0)
  loc_1B36C2C:         Proc_183_7_EB0C44(var_2B8, CVar(var_F0))
  loc_1B36C46:         var_108 = Me.Fields
  loc_1B36CA2:         var_290 = Me.Fields.Item("TDSDRCODE")
  loc_1B36CFA:         var_480 = CVar(Replace(CStr(Me.Fields.Item("Narration").Value), vbCrLf, vbNullString, 1, -1, 0)) 'String
  loc_1B36D00:         Proc_183_9_EAA760(var_4D0, var_290.Value & "," & Me.Fields.Item("TDSAmt").Value & ",'")
  loc_1B36D0A:         var_570 = CVar(Proc_6_14_EF349C(var_108)) 'String
  loc_1B36D10:         Proc_183_8_EB0AA4(var_580)
  loc_1B36D29:         var_E8 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & var_E0
  loc_1B36D73:         var_198 = CVar(var_E8 & "'," & CStr(var_AA) & ",'" & var_D8 & "'," & CStr(var_DC) & ",") & var_158 & ",'" 
  loc_1B36DAD:         var_35C = var_198 & CVar(MemVar_1F92070) & "'," & var_2B8 & ",'" & var_108.Item("TDSCODE").Value & "'," & Me.Fields.Item("TDSAmt").Value 
  loc_1B36E03:         var_5C0 = var_35C & ",0,'" & var_290.Value & "'," & var_4D0 & ",'" & CVar(MemVar_1F920C8) & "'," & var_580 & ",'" & CVar(arg_C) 
  loc_1B36E2D:         unk_5C26BA.Execute CStr(var_5C0 & "','" & CVar(MemVar_1F92078) & "')"), var_620, -1
  loc_1B36EEC:         var_108 = Me.Fields
  loc_1B36F23:         var_168 = var_94.Fields.Item("GroupCode").Value
  loc_1B36F34:         Set var_28C = Me.VchDt
  loc_1B36F3A:         Call 0.Method_Proc_185_171_1B374EC0 (0, var_290, var_E8)
  loc_1B36F42:         var_2EC = var_290.Text
  loc_1B36F72:         Proc_183_0_1279094(MemVar_1F921DC, CStr(Me.Fields.Item("TDSCODE").Value), CDbl(0), CSng(var_108.Item("TDSAmt").Value))
  loc_1B36F9C:       End If
  loc_1B36FC8:       var_F0 = Me.Fields.Item("TDSDRCODE")
  loc_1B36FD7:       var_158 = Trim(CVar(var_F0))
  loc_1B36FDF:       var_168 = "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='" & var_158 
  loc_1B36FEC:       var_E8 = CStr(var_168 & "'")
  loc_1B36FF6:       unk_5C26BA.Execute var_E8, var_198, -1
  loc_1B37001:       Set var_94 = var_108
  loc_1B3702F:       If (var_94.RecordCount > 0) Then
  loc_1B37038:         var_AA = (var_AA + 1)
  loc_1B37046:         Proc_183_9_EAA760(var_158, CVar(Me.LblVPrefix), var_AA, var_108)
  loc_1B37054:         Set var_EC = Me.VchDt
  loc_1B3705A:         Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0, CStr(var_168))
  loc_1B37069:         Proc_183_7_EB0C44(var_2B8, CVar(var_F0))
  loc_1B370DF:         var_290 = Me.Fields.Item("TDSCODE")
  loc_1B37137:         var_480 = CVar(Replace(CStr(Me.Fields.Item("Narration").Value), vbCrLf, vbNullString, 1, -1, 0)) 'String
  loc_1B3713D:         Proc_183_9_EAA760(var_4D0, var_290.Value & "," & Me.Fields.Item("TDSAmt").Value & ",'")
  loc_1B37147:         var_570 = CVar(Proc_6_14_EF349C(CDate(var_E8))) 'String
  loc_1B3714D:         Proc_183_8_EB0AA4(var_580, var_570)
  loc_1B37166:         var_E8 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & var_E0
  loc_1B371BA:         var_1A8 = CVar(var_E8 & "'," & CStr(var_AA) & ",'" & var_D8 & "'," & CStr(var_DC) & ",") & var_158 & ",'" & CVar(MemVar_1F92070) 
  loc_1B371F3:         var_3AC = var_1A8 & "'," & var_2B8 & ",'" & Me.Fields.Item("TDSDRCODE").Value & "',0," & Me.Fields.Item("TDSAmt").Value & ",'" 
  loc_1B37249:         var_5E0 = var_3AC & var_290.Value & "'," & var_4D0 & ",'" & CVar(MemVar_1F920C8) & "'," & var_580 & ",'" & CVar(arg_C) & "','" 
  loc_1B3726A:         unk_5C26BA.Execute CStr(var_5E0 & CVar(MemVar_1F92078) & "')"), var_620, -1
  loc_1B372F0:         var_178 = "TDSDRCODE"
  loc_1B37307:         var_F0 = Me.Fields.Item(var_178)
  loc_1B37360:         var_168 = var_94.Fields.Item("GroupCode").Value
  loc_1B37371:         Set var_28C = Me.VchDt
  loc_1B37377:         Call 0.Method_Proc_185_171_1B374EC0 (0, var_290, var_E8)
  loc_1B3737F:         var_2EC = var_290.Text
  loc_1B373AF:         Proc_183_0_1279094(MemVar_1F921DC, CStr(var_F0.Value), CSng(Me.Fields.Item("TDSAmt").Value), CDbl(0))
  loc_1B373D9:       End If
  loc_1B373DF:       Me.MoveNext
  loc_1B373E4:       GoTo loc_1B367D3
  loc_1B373E7:     End If
  loc_1B373E7:   End If
  loc_1B373F3:   Set var_EC = Me.TxtVtYpe
  loc_1B373F9:   Call 0.Method_Proc_185_171_1B374EC0 (0, var_F0, var_E8)
  loc_1B37401:   CStr(var_168) = var_F0.Tag
  loc_1B3740C:   global_124 = var_E8
  loc_1B37420:   unk_5C26BA.CommitTrans
  loc_1B37429:   var_B2 = CByte(0) 'Byte
  loc_1B37438:   Me.Requery -1
  loc_1B37452:   var_E8 = "DocId='" & var_B0
  loc_1B37462:   Me.Find var_E8 & "'", 0, 1
  loc_1B3747A:   If (CInt(global_110) = 2) Then
  loc_1B3747D:     Call Proc_185_144_19C260C(var_178, CDate(var_E8))
  loc_1B37482:   End If
  loc_1B37482: End If
  loc_1B37487: Set var_8C = Nothing
  loc_1B3748F: Set var_90 = Nothing
  loc_1B37497: Set var_94 = Nothing
  loc_1B3749A: Proc_185_171_1B374EC = var_570
  loc_1B374A0: ' Referenced from: 1B34DE5
  loc_1B374A9: If (CInt(var_B2) = 1) Then
  loc_1B374B2:   unk_5C26BA.RollbackTrans
  loc_1B374B7: End If
  loc_1B374BD: Call 0.Method_arg_50 (var_E8)
  loc_1B374D2: Proc_183_57_104AA84(var_E8)
  loc_1B374E2: var_86 = CByte(1) 'Byte
  loc_1B374E6: Proc_185_171_1B374EC = "LedPost"
End Sub

Public Sub Proc_185_172_F24680(arg_C) 'F24680
  'Data Table: 5C26A4
  Dim var_88 As String
  Dim unk_5C26BA As Connection15
  Dim var_B8 As String
  loc_F245A4: unk_5C26BA.Execute "Insert Into LedgerLog Select * From Ledger Where DocId ='" & arg_C & "'", var_AC, -1
  loc_F245DA: unk_5C26BA.Execute "Insert Into LedgerMLog Select * From LedgerM Where DocId ='" & arg_C & "'", var_AC, -1
  loc_F24600: var_88 = "Update LedgerLog Set SeqNo=(Select Max(IsNull(SeqNo,0))+1 From LedgerLog Where DocId ='" & arg_C
  loc_F24615: var_B8 = "Insert Into LedgerMLog Select * From LedgerM Where DocId ='" & arg_C & "') Where DocId ='" & arg_C & "' And IsNull(SeqNo,0)=0"
  loc_F2461E: unk_5C26BA.Execute var_B8, var_AC, -1
  loc_F24648: var_88 = "Update LedgerMLog Set SeqNo=(Select Max(IsNull(SeqNo,0))+1 From LedgerMLog Where DocId ='" & arg_C
  loc_F2465D: var_B8 = "Insert Into LedgerMLog Select * From LedgerM Where DocId ='" & arg_C & "') Where DocId ='" & arg_C & "' And IsNull(SeqNo,0)=0"
  loc_F24666: unk_5C26BA.Execute var_B8, var_AC, -1
  loc_F2467C: Exit Sub
End Sub
