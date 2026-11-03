VERSION 5.00
Begin VB.Form hAdvanceDepDialogSecondry
  Caption = "Advance Deposite "
  BackColor = &HC9E2F5&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 6885
  ClientHeight = 6315
  StartUpPosition = 2 'CenterScreen
  Begin CheckBox cmdDelete
    Caption = "De&lete"
    BackColor = &HC9E2F5&
    ForeColor = &HFF0000&
    Left = 5400
    Top = 0
    Width = 1245
    Height = 375
    TabIndex = 59
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin Frame FrRem
    BackColor = &HC9E2F5&
    Left = 240
    Top = 1672
    Width = 4935
    Height = 255
    Visible = 0   'False
    TabIndex = 53
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 23
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 255
      TabIndex = 16
      BorderStyle = 0 'None
      MaxLength = 100
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblNarr
      Caption = "Narration"
      ForeColor = &H0&
      Left = 0
      Top = 0
      Width = 825
      Height = 240
      TabIndex = 54
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
  Begin Frame FrChqDet
    BackColor = &HC9E2F5&
    Left = 6885
    Top = 2655
    Width = 2595
    Height = 525
    Visible = 0   'False
    TabIndex = 50
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 21
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 255
      TabIndex = 14
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 22
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 270
      Width = 1440
      Height = 255
      TabIndex = 15
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Caption = "Cheque No."
      Index = 15
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 1065
      Height = 240
      TabIndex = 52
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
    Begin Label LblName
      Caption = "Cheque Dt."
      Index = 16
      ForeColor = &H0&
      Left = -15
      Top = 277
      Width = 990
      Height = 240
      TabIndex = 51
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
  Begin Frame FrSendRoom
    BackColor = &HC9E2F5&
    Left = 6900
    Top = 495
    Width = 3150
    Height = 255
    Visible = 0   'False
    TabIndex = 48
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 30
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 255
      TabIndex = 7
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 1020
      Height = 240
      TabIndex = 49
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
  Begin Frame FrEmp
    BackColor = &HC9E2F5&
    Left = 6930
    Top = 1470
    Width = 4935
    Height = 255
    Visible = 0   'False
    TabIndex = 46
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 24
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3795
      Height = 255
      TabIndex = 13
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 390
      Height = 240
      TabIndex = 47
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
  Begin Frame FrComp
    BackColor = &HC9E2F5&
    Left = 6870
    Top = 765
    Width = 4920
    Height = 255
    Visible = 0   'False
    TabIndex = 44
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 31
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3795
      Height = 255
      TabIndex = 8
      BorderStyle = 0 'None
      BeginProperty Font
        Name = "MS Sans Serif"
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
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 870
      Height = 240
      TabIndex = 45
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
  Begin Frame FrCCDet
    BackColor = &HC9E2F5&
    Left = 6930
    Top = 1770
    Width = 4095
    Height = 795
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 3
      BackColor = &HFFFFFF&
      Left = 3315
      Top = 540
      Width = 705
      Height = 255
      TabIndex = 12
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Left = 1110
      Top = 0
      Width = 2415
      Height = 255
      TabIndex = 9
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Left = 1110
      Top = 270
      Width = 2910
      Height = 255
      TabIndex = 10
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Left = 1110
      Top = 540
      Width = 1275
      Height = 255
      TabIndex = 11
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 1
      ForeColor = &H0&
      Left = 2415
      Top = 540
      Width = 870
      Height = 240
      TabIndex = 58
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
    Begin Label LblName
      Caption = "C.C. No."
      Index = 18
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 720
      Height = 240
      TabIndex = 43
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
    Begin Label LblName
      Caption = "Holder"
      Index = 19
      ForeColor = &H0&
      Left = -15
      Top = 270
      Width = 615
      Height = 240
      TabIndex = 42
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
    Begin Label LblName
      Caption = "Exp.Dt."
      Index = 20
      ForeColor = &H0&
      Left = -15
      Top = 540
      Width = 630
      Height = 240
      TabIndex = 41
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
  Begin DataGrid DGCompany
    Left = 5145
    Top = 8010
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 35
  End
  Begin DataGrid DGTable
    Left = 6195
    Top = 7530
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 30
  End
  Begin DataGrid DGRoom
    Left = 7590
    Top = 6915
    Width = 2355
    Height = 2430
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 34
  End
  Begin DataGrid DGPayType
    Left = 7275
    Top = 6570
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
  Begin DataGrid DGEmp
    Left = 7830
    Top = 6150
    Width = 4170
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 28
  End
  Begin Frame FrRest
    BackColor = &HC9E2F5&
    Left = 0
    Top = 915
    Width = 6885
    Height = 1905
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 25
      BackColor = &HFFFFFF&
      Left = 3765
      Top = 450
      Width = 1395
      Height = 255
      TabIndex = 6
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 17
      BackColor = &HFFFFFF&
      Left = 1350
      Top = 450
      Width = 1440
      Height = 255
      TabIndex = 5
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Left = 1350
      Top = 1260
      Width = 3810
      Height = 255
      Visible = 0   'False
      TabIndex = 4
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Left = 1350
      Top = 150
      Width = 3810
      Height = 255
      TabIndex = 3
      BorderStyle = 0 'None
      MaxLength = 20
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LTxt
      Index = 29
      BackColor = &HDEECDB&
      ForeColor = &H800000&
      Left = 5415
      Top = 1155
      Width = 1275
      Height = 255
      TabIndex = 57
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Payable Amt"
      Index = 0
      BackColor = &HC7EBEB&
      ForeColor = &H0&
      Left = 5415
      Top = 945
      Width = 1275
      Height = 225
      TabIndex = 56
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
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
      BackColor = &HC7EBEB&
      ForeColor = &HFF&
      Left = 5415
      Top = 1395
      Width = 1275
      Height = 225
      TabIndex = 33
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Paid Amount"
      Index = 24
      BackColor = &HC7EBEB&
      ForeColor = &H808000&
      Left = 5415
      Top = 495
      Width = 1275
      Height = 225
      TabIndex = 32
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Tip"
      Index = 21
      ForeColor = &H0&
      Left = 3135
      Top = 450
      Width = 300
      Height = 240
      TabIndex = 29
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
    Begin Shape Shape5
      BorderColor = &H400040&
      Left = 5280
      Top = 15
      Width = 1575
      Height = 1860
      BorderWidth = 2
      FillColor = &HC0FFC0&
    End
    Begin Shape Shape1
      Index = 1
      BackColor = &HE7F3FA&
      BorderColor = &H400040&
      Left = 75
      Top = 15
      Width = 5175
      Height = 1860
      BorderWidth = 2
      FillColor = &HE7F3FA&
    End
    Begin Label LblName
      Caption = "Amount"
      Index = 14
      ForeColor = &H0&
      Left = 240
      Top = 450
      Width = 675
      Height = 240
      TabIndex = 27
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
    Begin Label LblName
      Caption = "Room/T"
      Index = 12
      ForeColor = &H0&
      Left = 240
      Top = 1290
      Width = 750
      Height = 240
      Visible = 0   'False
      TabIndex = 26
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
    Begin Label LblName
      Caption = "Type"
      Index = 13
      ForeColor = &H0&
      Left = 240
      Top = 150
      Width = 480
      Height = 240
      TabIndex = 25
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
    Begin Label LblName
      Caption = "Bill Amount"
      Index = 23
      BackColor = &HC7EBEB&
      ForeColor = &HC00000&
      Left = 5415
      Top = 45
      Width = 1275
      Height = 225
      TabIndex = 31
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 27
      BackColor = &HDEECDB&
      ForeColor = &H800000&
      Left = 5415
      Top = 705
      Width = 1275
      Height = 255
      TabIndex = 39
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 28
      BackColor = &HDEECDB&
      ForeColor = &H800000&
      Left = 5415
      Top = 1605
      Width = 1275
      Height = 255
      TabIndex = 38
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
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
      Index = 26
      BackColor = &HDEECDB&
      ForeColor = &H800000&
      Left = 5415
      Top = 255
      Width = 1275
      Height = 255
      TabIndex = 37
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 900
    Top = 3375
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 5430
    Top = 555
    Width = 1155
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 1545
    Top = 555
    Width = 855
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &H80000004&
    Left = 6570
    Top = 45
    Width = 2145
    Height = 255
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 6885
    Height = 375
    TabIndex = 0
  End
  Begin MSHFlexGrid FGrid
    Left = 60
    Top = 2820
    Width = 6780
    Height = 1560
    TabIndex = 23
  End
  Begin MSFlexGrid FGPoint
    Left = 5895
    Top = 4050
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 55
  End
  Begin Label Label1
    Caption = "Press Ctrl+S to Save"
    ForeColor = &HFF0000&
    Left = 240
    Top = 75
    Width = 2970
    Height = 300
    TabIndex = 36
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 2475
    Top = 555
    Width = 675
    Height = 240
    TabIndex = 21
    Alignment = 1 'Right Justify
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
  Begin Label Lbl
    Caption = "Date"
    Index = 37
    ForeColor = &H0&
    Left = 4830
    Top = 555
    Width = 435
    Height = 240
    TabIndex = 20
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
  Begin Label Lbl
    Caption = "Deposit No"
    Index = 36
    ForeColor = &H0&
    Left = 255
    Top = 555
    Width = 1020
    Height = 240
    TabIndex = 19
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
  Begin Shape Shape4
    BorderColor = &H400040&
    Left = 75
    Top = 495
    Width = 6780
    Height = 405
    BorderWidth = 2
    FillColor = &HC0FFC0&
  End
  Begin Menu popup
    Visible = 0   'False
    Caption = ""
    Begin Menu Del
      Caption = "Delete"
    End
  End
End

Attribute VB_Name = "hAdvanceDepDialogSecondry"

Private global_104 As Long
Private global_108 As Long
Private global_136 As Double
Private global_100 As Integer
Private global_164 As Integer

Private Sub FGrid_UnknownEvent_9 'E0AAE0
  'Data Table: 512D20
  loc_E0AACC: Call Proc_138_81_13ACE74()
  loc_E0AAD7: Call Proc_138_77_10DF104(global_152)
  loc_E0AADC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FD7A88
  'Data Table: 512D20
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  loc_FD78C0: Set var_88 = Me.TopCtrl1
  loc_FD78C6: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_FD78DB: If ( = "Browse") Then
  loc_FD78DE:   Exit Sub
  loc_FD78DF: End If
  loc_FD78FC: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FD78FF:   Exit Sub
  loc_FD7900: End If
  loc_FD7911: If ((CLng(Button) = &H44) And (Shift = 2)) Then
  loc_FD7933:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FD796D:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_FD798F:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FD79A5:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FD79AE:         Set var_10C = Me.FGrid
  loc_FD79C9:       Else
  loc_FD79DC:         Me.FGrid.Rows = 1
  loc_FD7A00:         var_A8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0))) 'String
  loc_FD7A08:         Set var_10C = Me.FGrid
  loc_FD7A35:         Me.FGrid.FixedRows = 1
  loc_FD7A3D:       End If
  loc_FD7A3D:     End If
  loc_FD7A40:   Else
  loc_FD7A61:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_E8, var_108)
  loc_FD7A71:   End If
  loc_FD7A75:   Set var_88 = Me.FGrid
  loc_FD7A86: End If
  loc_FD7A86: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E42F8C
  'Data Table: 512D20
  loc_E42F62: If (Button = 2) Then
  loc_E42F7D:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E42F85:   Call FGrid_UnknownEvent_9()
  loc_E42F8A: End If
  loc_E42F8A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_10 'DFB4E0
  'Data Table: 512D20
  loc_DFB4DC: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1570748
  'Data Table: 512D20
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_CC As Variant
  Dim var_108 As Variant
  Dim var_DC As Variant
  Dim var_88 As Frame
  Dim var_124 As Double
  loc_156F666: Set var_88 = Me.Txt
  loc_156F66C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_156F67A: Proc_6_74_E226B0(var_8C)
  loc_156F695: Set var_88 = Me.Txt
  loc_156F69B: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_156F6A3: var_8C.SelStart = 0
  loc_156F6BC: Set var_88 = Me.Txt
  loc_156F6C2: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_156F6DD: Set var_90 = Me.Txt
  loc_156F6E3: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_156F6EB: var_98.SelLength = Len(var_8C.Text)
  loc_156F6FE: Call Proc_138_72_F9605C(var_8C)
  loc_156F706: var_9A = Index
  loc_156F711: If (var_9A = CInt(&H17)) Then
  loc_156F721:   Set var_88 = Me.Txt
  loc_156F727:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_156F75D:   var_98 = Me.Fields.Item("PayType")
  loc_156F76D:   var_CC = "Cash"
  loc_156F792:   If CBool((var_8C.Text = vbNullString) And (var_98.Value = var_CC)) Then
  loc_156F7A2:     Set var_88 = Me.Txt
  loc_156F7A8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_156F7B0:     var_8C.Text = "CASH PAYMENT RECD"
  loc_156F7CB:     Set var_88 = Me.Txt
  loc_156F7D1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_156F7D9:     var_8C.SelStart = 0
  loc_156F7F2:     Set var_88 = Me.Txt
  loc_156F7F8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_156F800:     var_94 = var_8C.Text
  loc_156F813:     Set var_90 = Me.Txt
  loc_156F819:     Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_156F821:     var_98.SelLength = Len(var_94)
  loc_156F834:   End If
  loc_156F837: Else
  loc_156F83F:   If (var_9A = CInt(&HF)) Then
  loc_156F862:     Set var_98 = Me.Txt
  loc_156F868:     Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_108)
  loc_156F883:     Set var_88 = Me.Txt
  loc_156F889:     Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_156F8A1:     var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_156F8B0:     Me.DGPayType.Top = "PayType"
  loc_156F8E4:     Set var_88 = Me.Txt
  loc_156F8EA:     Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_156F8FE:     var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_156F90D:     Me.DGPayType.Left = "PayType"
  loc_156F934:     If (Me.RecordCount > 0) Then
  loc_156F942:       Set var_8C = Me.FGPoint
  loc_156F95A:       Proc_6_137_1193554(Me.DGPayType, global_64, Index)
  loc_156F968:     End If
  loc_156F9B6:     Set var_88 = Me.Txt
  loc_156F9BC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_156F9C4:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_156F9DC:     If (var_8C Or (var_94 = vbNullString)) Then
  loc_156F9DF:       Exit Sub
  loc_156F9E0:     End If
  loc_156F9ED:     Set var_88 = Me.Txt
  loc_156F9F3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_156F9FB:     var_94 = var_8C.Text
  loc_156FA0D:     var_AC = "Name"
  loc_156FA48:     If CBool(CVar(var_94) <> Me.Fields.Item(var_AC).Value) Then
  loc_156FA51:       Me.MoveFirst
  loc_156FA74:       Set var_88 = Me.Txt
  loc_156FA7A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_156FA82:       0 = var_8C.Text
  loc_156FA9B:       Me.Find 1 & var_94 & "'", var_AC, var_9A
  loc_156FAB0:     End If
  loc_156FAB3:   Else
  loc_156FABB:     If (var_9A = CInt(&H18)) Then
  loc_156FADE:       Set var_98 = Me.Txt
  loc_156FAE4:       Call 0.Method_Txt_GotFocus0 (CInt(&H18), var_108)
  loc_156FAFF:       Set var_88 = Me.Txt
  loc_156FB05:       Call 0.Method_Txt_GotFocus0 (CInt(&H18), var_8C)
  loc_156FB1D:       var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_156FB2C:       Me.DGEmp.Top = var_AC
  loc_156FB60:       Set var_88 = Me.Txt
  loc_156FB66:       Call 0.Method_Txt_GotFocus0 (CInt(&H18), var_8C)
  loc_156FB7A:       var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_156FB89:       Me.DGEmp.Left = var_AC
  loc_156FBB0:       If (Me.RecordCount > 0) Then
  loc_156FBBE:         Set var_8C = Me.FGPoint
  loc_156FBD6:         Proc_6_137_1193554(Me.DGEmp, global_68)
  loc_156FBE4:       End If
  loc_156FC32:       Set var_88 = Me.Txt
  loc_156FC38:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_156FC40:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_156FC58:       If (Index Or (var_94 = vbNullString)) Then
  loc_156FC5B:         Exit Sub
  loc_156FC5C:       End If
  loc_156FC69:       Set var_88 = Me.Txt
  loc_156FC6F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_156FC77:       var_94 = var_8C.Text
  loc_156FC89:       var_AC = "Name"
  loc_156FCC4:       If CBool(CVar(var_94) <> Me.Fields.Item(var_AC).Value) Then
  loc_156FCCD:         Me.MoveFirst
  loc_156FCF0:         Set var_88 = Me.Txt
  loc_156FCF6:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_156FCFE:         0 = var_8C.Text
  loc_156FD17:         Me.Find 1 & var_94 & "'", var_AC, var_8C
  loc_156FD2C:       End If
  loc_156FD2F:     Else
  loc_156FD37:       If (var_9A = CInt(&H10)) Then
  loc_156FD5A:         Set var_98 = Me.Txt
  loc_156FD60:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_108)
  loc_156FD7B:         Set var_88 = Me.Txt
  loc_156FD81:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_156FD99:         var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_156FDA8:         Me.DGTable.Top = var_AC
  loc_156FDDC:         Set var_88 = Me.Txt
  loc_156FDE2:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_156FDF6:         var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_156FE05:         Me.DGTable.Left = var_AC
  loc_156FE2C:         If (Me.RecordCount > 0) Then
  loc_156FE3A:           Set var_8C = Me.FGPoint
  loc_156FE52:           Proc_6_137_1193554(Me.DGTable, global_72)
  loc_156FE60:         End If
  loc_156FEAE:         Set var_88 = Me.Txt
  loc_156FEB4:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_156FEBC:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_156FED4:         If (Index Or (var_94 = vbNullString)) Then
  loc_156FED7:           Exit Sub
  loc_156FED8:         End If
  loc_156FEE5:         Set var_88 = Me.Txt
  loc_156FEEB:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_156FEF3:         var_94 = var_8C.Text
  loc_156FEFB:         var_DC = CVar(var_94) 'String
  loc_156FF40:         If CBool(var_DC <> Me.Fields.Item("Name").Value) Then
  loc_156FF49:           Me.MoveFirst
  loc_156FF6E:           Set var_88 = Me.Txt
  loc_156FF74:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_156FF7C:           0 = var_8C.Text
  loc_156FF8A:           Proc_6_17_EAA2B0(var_DC, CVar(var_94), 1)
  loc_156FFA0:           Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_156FFB8:         End If
  loc_156FFBB:       Else
  loc_156FFC3:         If (var_9A = CInt(&H1E)) Then
  loc_156FFE6:           Set var_98 = Me.Txt
  loc_156FFEC:           Call 0.Method_Txt_GotFocus0 (CInt(&H1E), var_108)
  loc_1570007:           Set var_88 = Me.Txt
  loc_157000D:           Call 0.Method_Txt_GotFocus0 (CInt(&H1E), var_8C)
  loc_1570025:           var_AC = CVar(((var_8C.Top + Me.FrSendRoom.Top) + var_108.Height)) 'Single
  loc_1570034:           Me.DGRoom.Top = "Name ="
  loc_1570068:           Set var_88 = Me.Txt
  loc_157006E:           Call 0.Method_Txt_GotFocus0 (CInt(&H1E), var_8C)
  loc_1570082:           var_AC = CVar((var_8C.Left + Me.FrSendRoom.Left)) 'Single
  loc_1570091:           Me.DGRoom.Left = "Name ="
  loc_15700B8:           If (Me.RecordCount > 0) Then
  loc_15700C6:             Set var_8C = Me.FGPoint
  loc_15700DE:             Proc_6_137_1193554(Me.DGRoom, global_76)
  loc_15700EC:           End If
  loc_157013A:           Set var_88 = Me.Txt
  loc_1570140:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_1570148:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1570160:           If (Index Or (var_94 = vbNullString)) Then
  loc_1570163:             Exit Sub
  loc_1570164:           End If
  loc_1570171:           Set var_88 = Me.Txt
  loc_1570177:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_157017F:           var_94 = var_8C.Text
  loc_1570187:           var_DC = CVar(var_94) 'String
  loc_15701A0:           var_90 = Me.Fields
  loc_15701CC:           If CBool(var_DC <> var_90.Item("Name").Value) Then
  loc_15701D5:             Me.MoveFirst
  loc_15701FA:             Set var_88 = Me.Txt
  loc_1570200:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_1570208:             0 = var_8C.Text
  loc_1570216:             Proc_6_17_EAA2B0(var_DC, CVar(var_94), 1)
  loc_157022C:             Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_1570244:           End If
  loc_1570247:         Else
  loc_157024F:           If (var_9A = CInt(&H1F)) Then
  loc_1570260:             Set var_8C = Me.Txt
  loc_1570266:             Call 0.Method_Txt_GotFocus0 (CInt(&H1F), var_90)
  loc_157028C:             var_AC = CVar((Me.FrComp.Top + var_90.Height)) 'Single
  loc_157029B:             Me.DGCompany.Top = "Name ="
  loc_15702DD:             Set var_88 = Me.Txt
  loc_15702E3:             Call 0.Method_Txt_GotFocus0 (CInt(&H1F), var_8C)
  loc_15702FB:             var_AC = CVar(((var_8C.Left + Me.FrRest.Left) + Me.FrComp.Left)) 'Single
  loc_157030A:             Me.DGCompany.Left = "Name ="
  loc_1570333:             If (Me.RecordCount > 0) Then
  loc_1570341:               Set var_8C = Me.FGPoint
  loc_1570359:               Proc_6_137_1193554(Me.DGCompany, global_80)
  loc_1570367:             End If
  loc_15703B5:             Set var_88 = Me.Txt
  loc_15703BB:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15703C3:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15703DB:             If (Index Or (var_94 = vbNullString)) Then
  loc_15703DE:               Exit Sub
  loc_15703DF:             End If
  loc_15703EC:             Set var_88 = Me.Txt
  loc_15703F2:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15703FA:             var_94 = var_8C.Text
  loc_1570402:             var_DC = CVar(var_94) 'String
  loc_1570423:             var_98 = Me.Fields.Item("Name")
  loc_1570447:             If CBool(var_DC <> var_98.Value) Then
  loc_1570450:               Me.MoveFirst
  loc_1570475:               Set var_88 = Me.Txt
  loc_157047B:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_1570483:               0 = var_8C.Text
  loc_1570491:               Proc_6_17_EAA2B0(var_DC, CVar(var_94), 1)
  loc_15704A7:               Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15704BF:             End If
  loc_15704C2:           Else
  loc_15704CA:             If (var_9A = CInt(&H11)) Then
  loc_15704D1:               Set var_88 = Me.TopCtrl1
  loc_15704D7:               Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_15704EC:               If ( = "Add") Then
  loc_15704FD:                 Set var_88 = Me.LTxt
  loc_1570503:                 Call 0.Method_Txt_GotFocus0 (CInt(&H1C), var_8C)
  loc_1570518:                 var_124 = Val(var_8C.Caption)
  loc_1570550:                 Set var_90 = Me.Txt
  loc_1570556:                 Call 0.Method_Txt_GotFocus0 (Index, var_98, CStr(Format(CVar(var_124), "0.00")))
  loc_157055E:                 var_98.Text = 1
  loc_157057E:               End If
  loc_1570582:               Set var_88 = Me.TopCtrl1
  loc_1570588:               Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E(1)
  loc_15705B6:               If CBool((var_124 = "Edit") And (global_164 = 0)) Then
  loc_15705C7:                 Set var_88 = Me.LTxt
  loc_15705CD:                 Call 0.Method_Txt_GotFocus0 (CInt(&H1C), var_8C)
  loc_157061A:                 Set var_90 = Me.Txt
  loc_1570620:                 Call 0.Method_Txt_GotFocus0 (Index, var_98, CStr(Format(CVar(Val(var_8C.Caption)), "0.00")))
  loc_1570628:                 var_98.Text = 1
  loc_1570648:               End If
  loc_1570657:               Set var_88 = Me.Txt
  loc_157065D:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, 0)
  loc_1570665:               var_8C.SelStart = 1
  loc_157067E:               Set var_88 = Me.Txt
  loc_1570684:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_157069F:               Set var_90 = Me.Txt
  loc_15706A5:               Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15706AD:               var_98.SelLength = Len(var_8C.Text)
  loc_15706C3:             Else
  loc_15706CB:               If (var_9A = CInt(&H19)) Then
  loc_15706DD:                 Set var_88 = Me.Txt
  loc_15706E3:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15706EB:                 var_8C.SelStart = 0
  loc_1570704:                 Set var_88 = Me.Txt
  loc_157070A:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1570725:                 Set var_90 = Me.Txt
  loc_157072B:                 Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_1570733:                 var_98.SelLength = Len(var_8C.Text)
  loc_1570746:               End If
  loc_1570746:             End If
  loc_1570746:           End If
  loc_1570746:         End If
  loc_1570746:       End If
  loc_1570746:     End If
  loc_1570746:   End If
  loc_1570746: End If
  loc_1570746: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1367EDC
  'Data Table: 512D20
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_90 As DataGrid
  Dim var_A0 As DataGrid
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim Shift As Integer
  loc_136768B: var_88 = Shift
  loc_1367698: If (CLng(Shift) = &H1B) Then
  loc_136769B:   Call Proc_138_72_F9605C(var_88)
  loc_13676A0:   Exit Sub
  loc_13676A1: End If
  loc_13676A4: var_8A = KeyCode
  loc_13676AF: If (var_8A = CInt(&HF)) Then
  loc_13676CF:   Set var_A4 = Me.FGPoint
  loc_13676DA:   Set var_A0 = Nothing
  loc_136770C:   Proc_6_69_134A198(Me.DGPayType, Me.Txt, CInt(&HF), global_64, Shift, 0)
  loc_136777B:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13677A1:     Proc_6_138_106D6F8(Me.DGPayType, global_64, KeyCode, Me.FGPoint, 1)
  loc_13677AF:   End If
  loc_13677B2: Else
  loc_13677BA:   If (var_8A = CInt(&H18)) Then
  loc_13677E5:     Set var_A0 = Nothing
  loc_1367817:     Proc_6_69_134A198(Me.DGEmp, Me.Txt, CInt(&H18), global_68, Shift, 0, 1)
  loc_1367886:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_136788D:       Set var_A0 = Me.DGEmp
  loc_13678AC:       Proc_6_138_106D6F8(var_A0, global_68, KeyCode, Me.FGPoint, var_A0, Me.FGPoint)
  loc_13678BA:     End If
  loc_13678BD:   Else
  loc_13678C5:     If (var_8A = CInt(&H10)) Then
  loc_1367922:       Proc_6_69_134A198(Me.DGTable, Me.Txt, CInt(&H10), global_72, Shift, 0, 1, Nothing)
  loc_1367991:       If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13679B7:         Proc_6_138_106D6F8(Me.DGTable, global_72, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13679C5:       End If
  loc_13679C8:     Else
  loc_13679D0:       If (var_8A = CInt(&H1E)) Then
  loc_1367A2D:         Proc_6_69_134A198(Me.DGRoom, Me.Txt, CInt(&H1E), global_76, Shift, 0, 1, Nothing)
  loc_1367A9C:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1367AC2:           Proc_6_138_106D6F8(Me.DGRoom, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1367AD0:         End If
  loc_1367AD3:       Else
  loc_1367ADB:         If (var_8A = CInt(&H1F)) Then
  loc_1367AFB:           Set var_A4 = Me.FGPoint
  loc_1367B38:           Proc_6_69_134A198(Me.DGCompany, Me.Txt, CInt(&H1F), global_80, Shift, 0, 1, Nothing)
  loc_1367BA7:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1367BAE:             Set var_A0 = Me.DGCompany
  loc_1367BB5:             Set var_94 = Me.FGPoint
  loc_1367BCD:             Proc_6_138_106D6F8(var_A0, global_80, KeyCode, var_94, var_A4, 0)
  loc_1367BDB:           End If
  loc_1367BDE:         Else
  loc_1367BE6:           If (var_8A = CInt(&H17)) Then
  loc_1367BF3:             If (CLng(Shift) = &H2D) Then
  loc_1367BF9:               Call Proc_138_82_EE37B8(var_BC, 0, var_A0)
  loc_1367C0B:               Set var_90 = Me.Txt
  loc_1367C11:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_1367C35:               Set var_90 = Me.Txt
  loc_1367C3B:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_1367C43:               0 = var_A4
  loc_1367C56:               Set var_A0 = Me.Txt
  loc_1367C5C:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_1367C64:               var_A4.SelStart = Len(var_BC)
  loc_1367C77:               Exit Sub
  loc_1367C78:             End If
  loc_1367C78:           End If
  loc_1367C78:         End If
  loc_1367C78:       End If
  loc_1367C78:     End If
  loc_1367C78:   End If
  loc_1367C78: End If
  loc_1367CAF: var_EC = Me.DGPayType.Visible
  loc_1367CC6: var_FC = Me.DGEmp.Visible
  loc_1367D04: If (((((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGRoom.Visible) = 0)) And (CBool(var_EC) = 0)) And (CBool(var_FC) = 0)) And (CBool(Me.DGCompany.Visible) = 0)) Then
  loc_1367D27:   If (((CLng(Shift) = &H26) And (global_108 = 5)) And (KeyCode = CInt(&HF))) Then
  loc_1367D2A:     Exit Sub
  loc_1367D2B:   End If
  loc_1367D49:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_1367D56:     If (CLng(Shift) = &H28) Then
  loc_1367D59:       Exit Sub
  loc_1367D5A:     End If
  loc_1367D91:     If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_1367D94:       Call Proc_138_78_14ADA04(var_8A)
  loc_1367D9B:       Shift = 0
  loc_1367D9E:     End If
  loc_1367D9E:     Exit Sub
  loc_1367DA2:   Else
  loc_1367DC0:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H17))) Then
  loc_1367DCD:       If (CLng(Shift) = &H28) Then
  loc_1367DD0:         Exit Sub
  loc_1367DD1:       End If
  loc_1367E08:       If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_1367E0B:         Call Proc_138_78_14ADA04(Shift)
  loc_1367E12:         Shift = 0
  loc_1367E15:       End If
  loc_1367E15:       Exit Sub
  loc_1367E19:     Else
  loc_1367E37:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H1E))) Then
  loc_1367E44:         If (CLng(Shift) = &H28) Then
  loc_1367E47:           Exit Sub
  loc_1367E48:         End If
  loc_1367E54:         Call Txt_Validate(CInt(&H1E))
  loc_1367E90:         If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_1367E93:           Call Proc_138_78_14ADA04(0)
  loc_1367E9A:           Shift = 0
  loc_1367E9D:         End If
  loc_1367E9D:         Exit Sub
  loc_1367E9E:       End If
  loc_1367E9E:     End If
  loc_1367E9E:   End If
  loc_1367EB3:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1367EBC:     Proc_6_75_E527CC(Shift, arg_14)
  loc_1367EC1:   End If
  loc_1367ECB:   If (CLng(Shift) = &H26) Then
  loc_1367ED4:     Proc_6_76_E52838(Shift, arg_14)
  loc_1367ED9:   End If
  loc_1367ED9: End If
  loc_1367ED9: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E9F950
  'Data Table: 512D20
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_E9F8D6: If (arg_10 = &HD) Then
  loc_E9F8DB:   arg_10 = 0
  loc_E9F8DE: End If
  loc_E9F8E1: Proc_6_58_E054C0(arg_10)
  loc_E9F8EC: Proc_6_133_E7EF78(var_94, arg_10)
  loc_E9F8F5: arg_10 = CInt(var_94)
  loc_E9F8FE: var_96 = KeyAscii
  loc_E9F909: If Not (var_96 = CInt(&H11)) Then
  loc_E9F914:   If (var_96 = CInt(&H19)) Then
  loc_E9F917:   End If
  loc_E9F921:   Set var_9C = Me.Txt
  loc_E9F927:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_E9F942:   Proc_6_42_129A86C(var_A0, arg_10, 8)
  loc_E9F94E: End If
  loc_E9F94E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1109D64
  'Data Table: 512D20
  Dim var_86 As Integer
  loc_1109A23: var_86 = KeyCode
  loc_1109A2E: If (var_86 = CInt(&HF)) Then
  loc_1109A4D:   If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_1109A61:     var_A4 = "Name"
  loc_1109A85:     Proc_6_68_129FB34(Me.DGPayType, Me.Txt, KeyCode, global_64)
  loc_1109ABB:     Proc_6_138_106D6F8(Me.DGPayType, global_64, KeyCode, Me.FGPoint)
  loc_1109AC9:   End If
  loc_1109ACC: Else
  loc_1109AD4:   If (var_86 = CInt(&H18)) Then
  loc_1109AF3:     If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_1109B07:       var_A4 = "Name"
  loc_1109B2B:       Proc_6_68_129FB34(Me.DGEmp, Me.Txt, KeyCode, global_68, Shift)
  loc_1109B61:       Proc_6_138_106D6F8(Me.DGEmp, global_68, KeyCode, Me.FGPoint)
  loc_1109B6F:     End If
  loc_1109B72:   Else
  loc_1109B7A:     If (var_86 = CInt(&H10)) Then
  loc_1109B99:       If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_1109BD1:         Proc_6_68_129FB34(Me.DGTable, Me.Txt, KeyCode, global_72, Shift)
  loc_1109C07:         Proc_6_138_106D6F8(Me.DGTable, global_72, KeyCode, Me.FGPoint, "Name")
  loc_1109C15:       End If
  loc_1109C18:     Else
  loc_1109C20:       If (var_86 = CInt(&H1E)) Then
  loc_1109C3F:         If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_1109C77:           Proc_6_68_129FB34(Me.DGRoom, Me.Txt, KeyCode, global_76, Shift)
  loc_1109CAD:           Proc_6_138_106D6F8(Me.DGRoom, global_76, KeyCode, Me.FGPoint, "Name")
  loc_1109CBB:         End If
  loc_1109CBE:       Else
  loc_1109CC6:         If (var_86 = CInt(&H1F)) Then
  loc_1109CE5:           If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_1109D1D:             Proc_6_68_129FB34(Me.DGCompany, Me.Txt, KeyCode, global_80, Shift)
  loc_1109D53:             Proc_6_138_106D6F8(Me.DGCompany, global_80, KeyCode, Me.FGPoint, "Name")
  loc_1109D61:           End If
  loc_1109D61:         End If
  loc_1109D61:       End If
  loc_1109D61:     End If
  loc_1109D61:   End If
  loc_1109D61: End If
  loc_1109D61: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E500E4
  'Data Table: 512D20
  loc_E500C2: Set var_88 = Me.Txt
  loc_E500C8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E500D6: Proc_6_73_E22704(var_8C)
  loc_E500E2: Exit Sub
End Sub

Private Sub Txt_Click() 'DFD698
  'Data Table: 512D20
  loc_DFD694: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '142C754
  'Data Table: 512D20
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_98 As String
  Dim var_B8 As Variant
  Dim var_D4 As TextBox
  Dim var_E4 As Variant
  loc_142BC8B: var_8A = Cancel
  loc_142BC96: If (var_8A = CInt(1)) Then
  loc_142BCA7:   Set var_90 = Me.Txt
  loc_142BCAD:   Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_142BCB5:   var_98 = var_94.Text
  loc_142BCCC:   If (var_98 <> vbNullString) Then
  loc_142BCD5:     Call Proc_138_74_1156500(MemVar_1F92044, var_98)
  loc_142BCE0:   Else
  loc_142BCE2:     arg_10 = &HFF
  loc_142BCE5:     Exit Sub
  loc_142BCE6:   End If
  loc_142BCE9: Else
  loc_142BCF1:   If (var_8A = CInt(&H10)) Then
  loc_142BCFE:     Set var_90 = Me.Txt
  loc_142BD04:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142BD0C:     var_98 = "Table"
  loc_142BD2D:     If (Proc_6_27_EA565C(var_94, var_98) = 0) Then
  loc_142BD3A:       Set var_90 = Me.Txt
  loc_142BD40:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142BD48:       var_94.SetFocus
  loc_142BD56:       arg_10 = &HFF
  loc_142BD59:       Exit Sub
  loc_142BD5A:     End If
  loc_142BDA8:     Set var_90 = Me.Txt
  loc_142BDAE:     Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_142BDCE:     If (var_94.Text Or (var_98 = vbNullString)) Then
  loc_142BDDE:       Set var_90 = Me.Txt
  loc_142BDE4:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142BDEC:       var_94.Text = vbNullString
  loc_142BE05:       Set var_90 = Me.Txt
  loc_142BE0B:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142BE13:       var_94.Tag = vbNullString
  loc_142BE2A:       If (global_148 = "RO") Then
  loc_142BE33:         global_144 = vbNullString
  loc_142BE37:       End If
  loc_142BE3A:     Else
  loc_142BE75:       Set var_9C = Me.Txt
  loc_142BE7B:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_142BE83:       var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_142BED4:       Set var_9C = Me.Txt
  loc_142BEDA:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_142BEE2:       var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_142BF03:       If (global_148 = "RO") Then
  loc_142BF23:         var_94 = Me.Fields.Item("RoomCat")
  loc_142BF34:         var_98 = CStr(var_94.Value)
  loc_142BF3A:         global_144 = var_98
  loc_142BF4B:       End If
  loc_142BF4B:     End If
  loc_142BF4E:   Else
  loc_142BF56:     If (var_8A = CInt(&H1E)) Then
  loc_142BFA7:       Set var_90 = Me.Txt
  loc_142BFAD:       Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_142BFB5:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_142BFCD:       If (var_8A Or (var_98 = vbNullString)) Then
  loc_142BFDD:         Set var_90 = Me.Txt
  loc_142BFE3:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142BFEB:         var_94.Text = vbNullString
  loc_142C004:         Set var_90 = Me.Txt
  loc_142C00A:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142C012:         var_94.Tag = vbNullString
  loc_142C021:       Else
  loc_142C05C:         Set var_9C = Me.Txt
  loc_142C062:         Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_142C06A:         var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_142C09D:         var_94 = Me.Fields.Item("Code")
  loc_142C0BB:         Set var_9C = Me.Txt
  loc_142C0C1:         Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_142C0C9:         var_B8.Tag = CStr(var_94.Value)
  loc_142C0DF:       End If
  loc_142C0E2:     Else
  loc_142C0EA:       If (var_8A = CInt(2)) Then
  loc_142C0FB:         Set var_90 = Me.Txt
  loc_142C101:         Call 0.Method_Txt_Validate0 (CInt(2), var_94)
  loc_142C128:         Set var_9C = Me.Txt
  loc_142C12E:         Call 0.Method_Txt_Validate0 (CInt(2), var_B8)
  loc_142C136:         var_B8.Text = Proc_6_34_14ECF20(var_94.Text)
  loc_142C153:         Call Proc_138_74_1156500(MemVar_1F92044)
  loc_142C169:         Set var_90 = Me.Txt
  loc_142C16F:         Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_142C18E:         If (var_94.Text = vbNullString) Then
  loc_142C193:           arg_10 = &HFF
  loc_142C196:         End If
  loc_142C199:       Else
  loc_142C1A1:         If Not (var_8A = CInt(&H16)) Then
  loc_142C1AC:           If (var_8A = CInt(&H14)) Then
  loc_142C1AF:           End If
  loc_142C1B9:           Set var_90 = Me.Txt
  loc_142C1BF:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142C1DF:           Set var_B8 = Me.Txt
  loc_142C1E5:           Call 0.Method_Txt_Validate0 (Cancel, var_D4)
  loc_142C1ED:           var_D4.Text = Proc_6_33_1512840(var_94, arg_10)
  loc_142C203:         Else
  loc_142C20B:           If (var_8A = CInt(&HF)) Then
  loc_142C21B:             Set var_90 = Me.Txt
  loc_142C221:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142C240:             If (var_94.Text <> vbNullString) Then
  loc_142C27E:               Set var_9C = Me.Txt
  loc_142C284:               Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_142C28C:               var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_142C2DD:               Set var_9C = Me.Txt
  loc_142C2E3:               Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_142C2EB:               var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_142C32C:               var_98 = Proc_6_38_E68A98(CVar(Me.Fields.Item("PayType")))
  loc_142C332:               global_152 = var_98
  loc_142C34B:               Me.FrEmp.Visible = False
  loc_142C35F:               Me.FrChqDet.Visible = False
  loc_142C373:               Me.FrCCDet.Visible = False
  loc_142C395:               var_94 = Me.Fields.Item("PayType")
  loc_142C3AA:               Call Proc_138_77_10DF104(Proc_6_38_E68A98(CVar(var_94)))
  loc_142C3BB:             Else
  loc_142C3C8:               Set var_90 = Me.Txt
  loc_142C3CE:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142C3D6:               var_94.Text = vbNullString
  loc_142C3EF:               Set var_90 = Me.Txt
  loc_142C3F5:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142C3FD:               var_94.Tag = vbNullString
  loc_142C409:             End If
  loc_142C40C:           Else
  loc_142C414:             If Not (var_8A = CInt(&H11)) Then
  loc_142C41F:               If (var_8A = CInt(&H19)) Then
  loc_142C422:               End If
  loc_142C42C:               Set var_90 = Me.Txt
  loc_142C432:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142C43E:               Proc_6_40_EA50F0(CVar(var_94))
  loc_142C455:               var_104 = "0.00"
  loc_142C45E:               var_E4 = CVar(var_98) 'Double
  loc_142C465:               var_114 = Format(var_E4, var_104)
  loc_142C46D:               var_98 = CStr(var_114)
  loc_142C47B:               Set var_9C = Me.Txt
  loc_142C481:               Call 0.Method_Txt_Validate0 (Cancel, var_B8, var_98)
  loc_142C489:               var_B8.Text = 1
  loc_142C4B3:               Set var_9C = Me.LTxt
  loc_142C4B9:               Call 0.Method_Txt_Validate0 (CInt(&H1C), var_B8, var_CC)
  loc_142C4C1:               1 = var_B8.Caption
  loc_142C4E7:               Set var_90 = Me.Txt
  loc_142C4ED:               Call 0.Method_Txt_Validate0 (CInt(&H11), var_94, var_98)
  loc_142C4F5:               (Cancel = CInt(&H11)) = var_94.Text
  loc_142C525:               If ((Val(var_CC) And (CDbl(Val(var_98)) > CDbl(Val(var_CC)))) And (global_164 = 0)) Then
  loc_142C541:                 MsgBox("Amount You have entered is greater than Actual amount", &H40, var_E4, var_104, var_114)
  loc_142C553:                 arg_10 = &HFF
  loc_142C556:                 Exit Sub
  loc_142C557:               End If
  loc_142C55A:             Else
  loc_142C562:               If (var_8A = CInt(&H1F)) Then
  loc_142C5B3:                 Set var_90 = Me.Txt
  loc_142C5B9:                 Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_142C5C1:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_142C5D9:                 If (arg_10 Or (var_98 = vbNullString)) Then
  loc_142C5E9:                   Set var_90 = Me.Txt
  loc_142C5EF:                   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142C5F7:                   var_94.Text = vbNullString
  loc_142C610:                   Set var_90 = Me.Txt
  loc_142C616:                   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_142C61E:                   var_94.Tag = vbNullString
  loc_142C62D:                 Else
  loc_142C668:                   Set var_9C = Me.Txt
  loc_142C66E:                   Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_142C676:                   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_142C6A9:                   var_94 = Me.Fields.Item("Code")
  loc_142C6C7:                   Set var_9C = Me.Txt
  loc_142C6CD:                   Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_142C6D5:                   var_B8.Tag = CStr(var_94.Value)
  loc_142C6F6:                   Set var_90 = Me.Txt
  loc_142C6FC:                   Call 0.Method_Txt_Validate0 (CInt(&H17), var_94)
  loc_142C725:                   If (Trim(CVar(var_94)) = vbNullString) Then
  loc_142C736:                     Set var_90 = Me.Txt
  loc_142C73C:                     Call 0.Method_Txt_Validate0 (CInt(&H17), var_94)
  loc_142C744:                     var_94.Text = "AGAINST V.NO "
  loc_142C750:                   End If
  loc_142C750:                 End If
  loc_142C750:               End If
  loc_142C750:             End If
  loc_142C750:           End If
  loc_142C750:         End If
  loc_142C750:       End If
  loc_142C750:     End If
  loc_142C750:   End If
  loc_142C750: End If
  loc_142C750: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'F334CC
  'Data Table: 512D20
  Dim var_88 As String
  Dim var_D4 As TextBox
  Dim var_D8 As Long
  loc_F333B4: On Error Goto loc_F334C4
  loc_F333DA: Call Proc_138_68_FC62CC(Proc_5_1_100CB50("ADD", Me))
  loc_F333E5: Call Proc_138_69_FE74CC(global_60)
  loc_F33412: var_88 = CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy"))
  loc_F33421: Set var_8C = Me.Txt
  loc_F33427: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2), var_D4, var_88)
  loc_F3342F: var_D4.Text = 1
  loc_F3344B: var_D8 = global_108
  loc_F33457: If (var_D8 = 6) Then
  loc_F33467:   Set var_8C = Me.Txt
  loc_F3346D:   Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(&HF), var_D4, &HFF)
  loc_F33475:   var_D4.Enabled = var_D8
  loc_F3348D:   If (global_104 = 2) Then
  loc_F33496:     Call Proc_138_74_1156500(MemVar_1F92044, var_88)
  loc_F334A9:     Set var_8C = Me.Txt
  loc_F334AF:     Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(1), var_D4)
  loc_F334B7:     var_D4.SetFocus
  loc_F334C3:   End If
  loc_F334C3: End If
  loc_F334C3: Exit Sub
  loc_F334C4: ' Referenced from: F333B4
  loc_F334C4: Proc_6_60_E62BC4(1)
  loc_F334C9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E536AC
  'Data Table: 512D20
  loc_E53674: On Error Goto loc_E536A6
  loc_E5369A: Call Proc_138_68_FC62CC(Proc_5_1_100CB50("EDIT", Me))
  loc_E536A5: Exit Sub
  loc_E536A6: ' Referenced from: E53674
  loc_E536A6: Proc_6_60_E62BC4(global_60)
  loc_E536AB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '10B0DCC
  'Data Table: 512D20
  Dim unk_512D5D As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_10B0B24: On Error Goto loc_10B0D7C
  loc_10B0B5E: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_10B0B6A:   unk_512D5D.BeginTrans var_118
  loc_10B0B80:   var_94 = Me.Bookmark 'Variant
  loc_10B0BCC:   var_F4 = "Delete From PAYCHARGEH Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10B0BDA:   unk_512D5D.Execute CStr(var_F4), var_114, -1
  loc_10B0C25:   var_160 = 0
  loc_10B0C38:   var_158 = 0
  loc_10B0C43:   var_154 = 0
  loc_10B0C56:   var_14C = 0
  loc_10B0C61:   var_148 = 0
  loc_10B0C74:   var_140 = 0
  loc_10B0CB4:   var_124 = "PayChargeH"
  loc_10B0CBD:   Proc_154_5_10E33A4(MemVar_1F92044, var_124, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10B0CEB:   unk_512D5D.CommitTrans
  loc_10B0CFB:   Me.Requery -1
  loc_10B0D1B:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10B0D28:     Me.Bookmark = var_94
  loc_10B0D30:   Else
  loc_10B0D44:     If (Me.EOF = 0) Then
  loc_10B0D4D:       Me.MoveLast
  loc_10B0D52:     End If
  loc_10B0D52:   End If
  loc_10B0D52:   Call Proc_138_71_14F7084(var_140, 0, var_148, var_14C)
  loc_10B0D73:   Proc_5_0_110649C(&HFF, Me, global_60, 0)
  loc_10B0D7B: End If
  loc_10B0D7B: Exit Sub
  loc_10B0D7C: ' Referenced from: 10B0B24
  loc_10B0D82: unk_512D5D.RollbackTrans
  loc_10B0D8F: Set var_11C = Err()
  loc_10B0D95: Call 0.Method_arg_2C (var_124, 0, var_154)
  loc_10B0DB6: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F4, var_114)
  loc_10B0DC9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E18FCC
  'Data Table: 512D20
  loc_E18FC1: Me.Global.Unload Me
  loc_E18FC9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E355F8
  'Data Table: 512D20
  loc_E355E8: Proc_5_0_110649C(&HFF, Me)
  loc_E355F0: Call Proc_138_71_14F7084(global_60)
  loc_E355F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E354D8
  'Data Table: 512D20
  loc_E354C8: Proc_5_0_110649C(&HFF, Me)
  loc_E354D0: Call Proc_138_71_14F7084(global_60)
  loc_E354D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E35418
  'Data Table: 512D20
  loc_E35408: Proc_5_0_110649C(&HFF, Me)
  loc_E35410: Call Proc_138_71_14F7084(global_60)
  loc_E35415: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E353B8
  'Data Table: 512D20
  loc_E353A8: Proc_5_0_110649C(&HFF, Me)
  loc_E353B0: Call Proc_138_71_14F7084(global_60)
  loc_E353B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '1632AB0
  'Data Table: 512D20
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_124 As String
  Dim var_158 As Long
  Dim var_15C As Variant
  Dim var_164 As Variant
  Dim var_170 As Double
  Dim unk_512D5D As Connection15
  Dim var_168 As String
  Dim var_178 As String
  Dim var_AC As Variant
  Dim var_180 As Long
  Dim unk_512D3D As Connection15
  Dim var_98 As Recordset15
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_10C As String
  Dim var_154 As Variant
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_1C0 As Variant
  Dim var_1E0 As Variant
  Dim var_28C As Variant
  Dim var_300 As Variant
  Dim var_320 As Long
  Dim var_3D4 As Variant
  Dim var_3F4 As Long
  Dim var_418 As Variant
  Dim var_468 As Variant
  Dim var_488 As Long
  Dim var_4AC As Variant
  Dim var_4F4 As Variant
  Dim var_548 As Variant
  Dim var_568 As Long
  Dim var_5E0 As Variant
  Dim var_600 As Variant
  Dim var_718 As Variant
  Dim var_75C As Variant
  Dim var_7F0 As Variant
  Dim var_884 As Variant
  Dim var_1F8 As String
  Dim var_2C0 As Variant
  Dim var_364 As Variant
  Dim var_3B4 As Variant
  Dim var_518 As Variant
  Dim var_528 As Variant
  Dim var_648 As Variant
  Dim var_688 As Variant
  Dim var_810 As Variant
  Dim var_830 As Variant
  Dim var_894 As Variant
  Dim var_ABC As Variant
  Dim var_CC As Recordset15
  Dim var_310 As Variant
  Dim var_330 As Long
  Dim var_3E4 As Long
  Dim var_4F0 As MSHFlexGrid
  Dim var_558 As Long
  Dim var_1E4 As String
  Dim var_204 As String
  Dim var_C4 As Double
  Dim Me As Recordset15
  loc_1631718: On Error Goto loc_1632A5D
  loc_163171B: var_DC = 1
  loc_1631724: var_FC = 1
  loc_1631742: var_124 = CStr(Me.FGrid.TextMatrix))
  loc_1631753: If (var_124 = vbNullString) Then
  loc_1631777:   MsgBox("Please Fill Payment Details Before Saving..", &H40, "Save Data", var_144, var_154)
  loc_1631787:   Exit Sub
  loc_1631788: End If
  loc_163179A: If (global_108 = 6) Then
  loc_16317AB:   Set var_110 = Me.LTxt
  loc_16317B1:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H1A), var_15C, var_124)
  loc_16317B9:   var_158 = var_15C.Caption
  loc_16317D5:   If (CDbl(Val(var_124)) <> CDbl(0)) Then
  loc_16317E6:     Set var_160 = Me.LTxt
  loc_16317EC:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H1B), var_164, var_168)
  loc_16317F4:     var_FC = var_164.Caption
  loc_1631801:     var_170 = Val(var_168)
  loc_1631812:     Set var_110 = Me.LTxt
  loc_1631818:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H1A), var_15C, var_124)
  loc_1631845:     If (CDbl(Val(var_124)) <> CDbl(var_15C.Caption)) Then
  loc_163184E:       var_DC = "Bill Sattlement..."
  loc_1631865:       var_124 = "Bill Amount and Received Amount Not Matched" & vbCrLf
  loc_1631888:       If (MsgBox(CVar(var_124 & "Are you want save?"), &H14, var_DC, var_144, var_154) = 7) Then
  loc_163188B:         Exit Sub
  loc_163188C:       End If
  loc_163188C:     End If
  loc_163188C:   End If
  loc_163188C: End If
  loc_1631890: var_86 = CByte(0) 'Byte
  loc_163189D: unk_512D5D.BeginTrans var_174
  loc_16318A6: var_86 = CByte(1) 'Byte
  loc_16318C8: Set var_110 = Me.Txt
  loc_16318CE: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_15C, var_124, "Delete From PAYCHARGEH Where Docid='")
  loc_16318D6: var_120 = var_15C.Text
  loc_16318DF: var_168 = -1 & var_124
  loc_16318EF: unk_512D5D.Execute var_168 & "'", var_160, var_DC
  loc_163192E: For var_17C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_17C 'Integer
  loc_1631938:   var_DC = CVar(CLng(var_AA)) 'Long
  loc_163193D:   var_FC = 2
  loc_163194A:   Set var_110 = Me.FGrid
  loc_1631950:   var_120 = var_110.TextMatrix)
  loc_163196C:   If (CStr(var_120) <> vbNullString) Then
  loc_1631975:     var_AC = (var_AC + 1)
  loc_163198A:     If (global_108 = 6) Then
  loc_16319A4:       var_124 = "Select Name,ShortName from depart where code='" & global_52
  loc_16319B4:       unk_512D3D.Execute var_124 & "'", var_120, -1
  loc_16319BF:       Set var_98 = var_110
  loc_16319E3:       If (var_98.RecordCount > 0) Then
  loc_16319FD:         var_110 = var_98.Fields
  loc_1631A05:         var_15C = var_110.Item("ShortName")
  loc_1631A15:         var_134 = ("(" + var_15C.Value)
  loc_1631A1E:         var_144 = ("ShortName" + ") ")
  loc_1631A22:         var_10C = "BILL NO.- "
  loc_1631A27:         var_154 = (var_144 + var_10C)
  loc_1631A39:         Set var_160 = Me.Txt
  loc_1631A3F:         Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_164, var_124, var_154, var_110)
  loc_1631A47:         var_180 = var_164.Text
  loc_1631A52:         var_1A0 = (var_AC + CVar(var_124))
  loc_1631A5B:         var_1C0 = (var_1A0 + " ")
  loc_1631A64:         var_1E0 = (var_1C0 + vbNullString)
  loc_1631A69:         var_94 = CStr(var_1E0)
  loc_1631A8D:       Else
  loc_1631A91:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_1631A99:         var_FC = CVar(CLng(&HE)) 'Long
  loc_1631AC2:         var_94 = CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_1631AD1:       End If
  loc_1631AD6:       Set var_98 = Nothing
  loc_1631ADE:       Set var_9C = Nothing
  loc_1631AEF:       Set var_110 = Me.Txt
  loc_1631AF5:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_15C, var_1E4, var_FC)
  loc_1631AFD:       var_DC = var_15C.Text
  loc_1631B16:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_164, var_204)
  loc_1631B1E:       var_FC = var_164.Text
  loc_1631B3E:       Set var_218 = Me.Txt
  loc_1631B44:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_21C)
  loc_1631B53:       Proc_6_7_F25D88(var_1C0, CVar(var_21C))
  loc_1631B84:       var_1B0 = CVar(CLng(var_AA)) 'Long
  loc_1631B8C:       var_28C = CVar(CLng(&H10)) 'Long
  loc_1631BAB:       var_300 = CVar(CLng(var_AA)) 'Long
  loc_1631BB0:       var_320 = &H14
  loc_1631BD3:       var_3D4 = CVar(CLng(var_AA)) 'Long
  loc_1631BD8:       var_3F4 = 1
  loc_1631BEB:       var_418 = Me.FGrid.TextMatrix)
  loc_1631C13:       var_4AC = Me.FGrid.TextMatrix)
  loc_1631C2D:       Set var_4F0 = Me.LTxt
  loc_1631C33:       Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H1A), var_4F4, var_4F8, var_4AC, 2, CVar(CLng(var_AA)), var_418)
  loc_1631C3B:       var_3F4 = var_4F4.Caption
  loc_1631C4F:       var_548 = CVar(CLng(var_AA)) 'Long
  loc_1631C54:       var_568 = 8
  loc_1631C81:       var_5E0 = CVar(CLng(var_AA)) 'Long
  loc_1631C86:       var_600 = &H11
  loc_1631CB3:       var_718 = CVar(CLng(var_AA)) 'Long
  loc_1631CCA:       var_75C = Me.FGrid.TextMatrix)
  loc_1631CF1:       var_7F0 = Me.FGrid.TextMatrix)
  loc_1631D18:       var_884 = Me.FGrid.TextMatrix)
  loc_1631D50:       Proc_6_7_F25D88(var_938, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_AA)), var_884, CVar(CLng(&HC)), CVar(CLng(var_AA)), var_7F0)
  loc_1631D81:       Proc_6_7_F25D88(var_9DC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), CVar(CLng(&HA)), CVar(CLng(var_AA)))
  loc_1631D94:       Proc_6_7_F25D88(var_A6C, Date, var_75C, CVar(CLng(9)))
  loc_1631DC6:       Proc_6_39_E7C810(var_B50, CVar(CStr(Me.FGrid.TextMatrix))), &H17, CVar(CLng(var_AA)))
  loc_1631DDF:       var_124 = "Insert Into PAYCHARGEH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1631DED:       var_178 = var_124 & "RoomType,RoomNo,FPNo,CardNo,CardHolder,ChqNo,ChqDate," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,batchno) Values ("
  loc_1631E0E:       var_1F8 = var_178 & "'" & var_1E4 & "'," & CStr(var_AC)
  loc_1631E48:       var_154 = CVar(var_1F8 & ",'" & global_116 & "','" & var_204 & "','" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_1631E93:       var_364 = var_154 & "'," & var_1C0 & ",'" & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1631EE2:       var_518 = var_364 & "','" & CVar(var_94) & "','" & CVar(CStr(var_418)) & "','" & CVar(CStr(var_4AC)) & "'," & CVar(Val(var_4F8)) 
  loc_1631F20:       var_688 = var_518 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(global_144) 
  loc_1631F70:       var_830 = var_688 & "'," & "'" & CVar(global_148) & "','',0,'" & CVar(CStr(var_75C)) & "','" & CVar(CStr(var_7F0)) & "','" 
  loc_1631F78:       var_894 = CVar(CStr(var_884)) 'String
  loc_1631FD4:       var_ABC = var_830 & var_894 & "'," & var_938 & "," & var_9DC & ",'" & CVar(MemVar_1F920C8) & "'," & var_A6C & ",'A','" & CVar(global_52) 
  loc_1631FFB:       unk_512D5D.Execute CStr(var_ABC & "'," & var_B50 & ")"), var_BA4, -1
  loc_1632103:       var_AC = (var_AC + 1)
  loc_163210A:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_163210F:       var_FC = 2
  loc_163211C:       Set var_110 = Me.FGrid
  loc_1632122:       var_120 = var_110.TextMatrix)
  loc_163213E:       If (CStr(var_120) = "Room") Then
  loc_163216C:         unk_512D3D.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F92078 & "TOUT" & "'", var_120, -1
  loc_1632177:         Set var_98 = var_110
  loc_163219D:         If (var_98.RecordCount > 0) Then
  loc_16321CC:           var_15C = var_98.Fields.Item("TaxStru")
  loc_16321DC:           var_134 = "Select * from taxstru where Code='" & var_15C.Value 
  loc_16321E5:           var_144 = var_134 & "' Order by Sno" 
  loc_16321F3:           unk_512D3D.Execute CStr(var_144), var_154, -1
  loc_16321FE:           Set var_A0 = Me.Txt
  loc_163221B:         Else
  loc_1632234:           MsgBox("System Defined Revenue is not defined", 0, var_134, var_144, var_154)
  loc_163224A:           unk_512D3D.RollbackTrans
  loc_163224F:           Exit Sub
  loc_1632250:         End If
  loc_1632254:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_1632259:         var_FC = &H16
  loc_1632277:         var_124 = CStr(Me.FGrid.TextMatrix))
  loc_163227F:         var_170 = Val(var_124)
  loc_16322A4:         unk_512D3D.Execute "Select GuestProf from GuestFolio where FolioNo=" & CStr(var_170), var_134, -1
  loc_16322AF:         Set var_CC = var_15C
  loc_16322DD:         If (var_CC.RecordCount > 0) Then
  loc_16322E6:           var_DC = "GuestProf"
  loc_16322FA:           var_15C = var_CC.Fields.Item(var_DC)
  loc_163230B:           var_C8 = CStr(var_15C.Value)
  loc_1632318:         End If
  loc_163232C:         Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_15C, var_124, var_15C, var_170, var_FC, var_DC)
  loc_1632334:         var_160 = var_15C.Text
  loc_1632347:         Set var_160 = Me.Txt
  loc_163234D:         Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_164, var_1F8, Me.Txt, var_FC)
  loc_1632355:         var_DC = var_164.Text
  loc_1632375:         Set var_218 = Me.Txt
  loc_163237B:         Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_21C, var_AC)
  loc_163238A:         Proc_6_7_F25D88(var_1C0, CVar(var_21C))
  loc_16323E2:         var_310 = CVar(CLng(var_AA)) 'Long
  loc_16323E7:         var_330 = 2
  loc_163240A:         var_3B4 = CVar(CLng(var_AA)) 'Long
  loc_163240F:         var_3E4 = 8
  loc_163243C:         var_468 = CVar(CLng(var_AA)) 'Long
  loc_1632441:         var_488 = &H12
  loc_163247D:         var_528 = CVar(CLng(var_AA)) 'Long
  loc_1632482:         var_558 = &H12
  loc_16324DC:         var_688 = Me.FGrid.TextMatrix)
  loc_1632518:         var_75C = Me.FGrid.TextMatrix)
  loc_1632532:         Proc_6_7_F25D88(var_894, Date, var_75C, &H16, CVar(CLng(var_AA)), var_688, &H12, CVar(CLng(var_AA)))
  loc_163254B:         var_168 = "Insert Into PAYCHARGEH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode)Values " & "('"
  loc_1632599:         var_144 = CVar(var_168 & var_124 & "'," & CStr(var_AC) & ",'" & global_116 & "'," & var_1F8 & ",'" & MemVar_1F92070 & "','") 'String
  loc_16325DE:         var_2C0 = var_144 & Trim(CVar(Me.LblVPrefix)) & "'," & var_1C0 & ",'" & CVar(Format$(Time, "HH:mm")) & "','" & CVar(var_C8) & "','" 
  loc_1632615:         var_418 = var_2C0 & CVar(var_94) & "','" & var_98.Fields.Item("Code").Value & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," 
  loc_1632640:         var_648 = var_418 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5) & "','" & LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)) 
  loc_1632689:         var_810 = var_648 & "','" & Right(CVar(CStr(var_688)), 5) & "'," & CVar(CStr(var_75C)) & ",'','',0,''," & vbNullString & "'" & CVar(MemVar_1F920C8) 
  loc_16326C6:         unk_512D5D.Execute CStr(var_810 & "'," & var_894 & ",'A','" & CVar(global_52) & "')"), var_938, -1
  loc_163278E:         var_AC = (var_AC + 1)
  loc_1632795:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_163279A:         var_FC = &H12
  loc_16327D1:         var_B4 = CStr(Right(CVar(CStr(Me.FGrid.TextMatrix))), 5))
  loc_16327E4:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_16327E9:         var_FC = &H12
  loc_163282B:         var_B8 = CStr(LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)))
  loc_1632840:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_1632845:         var_FC = &H16
  loc_163286D:         var_BC = CStr(Val(CStr(Me.FGrid.TextMatrix))))
  loc_163287D:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_1632882:         var_FC = &H12
  loc_16328A1:         var_144 = 5
  loc_16328AF:         var_134 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_16328B5:         var_154 = Mid(var_134, 3, var_144)
  loc_16328BE:         var_B0 = CStr(var_154)
  loc_16328D3:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_16328D8:         var_FC = 8
  loc_16328F6:         var_124 = CStr(Me.FGrid.TextMatrix))
  loc_1632908:         var_C4 = (var_C4 + Val(var_124))
  loc_1632914:       End If
  loc_1632914:     End If
  loc_1632914:   End If
  loc_1632917: Next var_17C 'Integer
  loc_1632921: Set var_98 = Nothing
  loc_1632929: Set var_9C = Nothing
  loc_1632931: Set var_A0 = Nothing
  loc_1632939: Set var_A4 = Nothing
  loc_1632941: Set var_CC = Nothing
  loc_163294A: unk_512D5D.CommitTrans
  loc_1632953: var_86 = CByte(0) 'Byte
  loc_1632968: If (OpenMode = 1) Then
  loc_1632978:   Me.Global.Unload Me
  loc_1632980:   Exit Sub
  loc_1632981: End If
  loc_163298C: Me.Requery -1
  loc_163299C: Me.Requery -1
  loc_16329C0: Set var_110 = Me.Txt
  loc_16329C6: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_15C, var_124, "SearchCode='")
  loc_16329CE: 0 = var_15C.Text
  loc_16329E7: Me.Find 1 & var_124 & "'", var_DC, 
  loc_1632A00: Set var_110 = Me.TopCtrl1
  loc_1632A06: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E()
  loc_1632A1B: If ( = "Add") Then
  loc_1632A1E:   Call TopCtrl1_UnknownEvent_11()
  loc_1632A23:   Exit Sub
  loc_1632A24: End If
  loc_1632A39: var_124 = "INI"
  loc_1632A47: Call Proc_138_68_FC62CC(Proc_5_1_100CB50(var_124, Me))
  loc_1632A52: Call Proc_138_72_F9605C(global_60)
  loc_1632A57: Call Proc_138_71_14F7084()
  loc_1632A5C: Exit Sub
  loc_1632A5D: ' Referenced from: 1631718
  loc_1632A66: If (CInt(var_86) = 1) Then
  loc_1632A6F:   unk_512D5D.RollbackTrans
  loc_1632A74: End If
  loc_1632A7C: Set var_110 = Err()
  loc_1632A82: Call 0.Method_arg_2C (var_124)
  loc_1632A9B: MsgBox(CVar(var_124), &H10, var_134, var_144, var_154)
  loc_1632AAE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EC2D6C
  'Data Table: 512D20
  loc_EC2CD4: On Error Goto loc_EC2D64
  loc_EC2D0E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC2D1D:   Set var_110 = Me
  loc_EC2D34:   Call Proc_138_68_FC62CC(Proc_5_1_100CB50("INI", var_110))
  loc_EC2D3F:   Call Proc_138_72_F9605C(global_60)
  loc_EC2D44:   Call Proc_138_71_14F7084()
  loc_EC2D4C: Else
  loc_EC2D52:   Call 0.Method_arg_1E8 (var_110)
  loc_EC2D5A:   Call var_110.SetFocus
  loc_EC2D63: End If
  loc_EC2D63: Exit Sub
  loc_EC2D64: ' Referenced from: EC2CD4
  loc_EC2D64: Proc_6_60_E62BC4()
  loc_EC2D69: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'DFD9A4
  'Data Table: 512D20
  loc_DFD9A0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C 'DFDA0C
  'Data Table: 512D20
  loc_DFDA08: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E6DC14
  'Data Table: 512D20
  Dim Me As Recordset15
  loc_E6DBBB: Me.Requery -1
  loc_E6DBCB: Me.Requery -1
  loc_E6DBDB: Me.Requery -1
  loc_E6DBEB: Me.Requery -1
  loc_E6DBFB: Me.Requery -1
  loc_E6DC0B: Me.Requery -1
  loc_E6DC10: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F665C0
  'Data Table: 512D20
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F664A3: Me.DGPayType.Visible = False
  loc_F664BD: If (global_108 = 6) Then
  loc_F664D7:   If (Me.RecordCount > 0) Then
  loc_F66516:     Set var_B8 = Me.Txt
  loc_F6651C:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_BC)
  loc_F66524:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F66557:     var_B4 = Me.Fields.Item("Code")
  loc_F66576:     Set var_B8 = Me.Txt
  loc_F6657C:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_BC)
  loc_F66584:     var_BC.Tag = CStr(var_B4.Value)
  loc_F6659A:   End If
  loc_F665A5:   Set var_A8 = Me.Txt
  loc_F665AB:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_B4)
  loc_F665B3:   var_B4.SetFocus
  loc_F665BF: End If
  loc_F665BF: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'EA2AB8
  'Data Table: 512D20
  Dim var_A8 As Variant
  loc_EA2A38: Set var_88 = Me.DGPayType
  loc_EA2A62: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA2A6A: Set var_BC = Me.DGPayType
  loc_EA2AA6: Proc_6_138_106D6F8(Me.DGPayType, global_64, CInt(&HF), Me.FGPoint)
  loc_EA2AB4: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F59C90
  'Data Table: 512D20
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F59B70: On Error Goto loc_F59C8A
  loc_F59B82: Me.DGTable.Visible = False
  loc_F59BA1: If (Me.RecordCount > 0) Then
  loc_F59BE0:   Set var_B4 = Me.Txt
  loc_F59BE6:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F59BEE:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F59C21:   var_B0 = Me.Fields.Item("Code")
  loc_F59C40:   Set var_B4 = Me.Txt
  loc_F59C46:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F59C4E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F59C64: End If
  loc_F59C6F: Set var_A8 = Me.Txt
  loc_F59C75: Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10))
  loc_F59C7D: var_B0.SetFocus
  loc_F59C89: Exit Sub
  loc_F59C8A: ' Referenced from: F59B70
  loc_F59C8A: Proc_6_60_E62BC4(var_B0)
  loc_F59C8F: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA2C40
  'Data Table: 512D20
  Dim var_A8 As Variant
  loc_EA2BC0: Set var_88 = Me.DGTable
  loc_EA2BEA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA2BF2: Set var_BC = Me.DGTable
  loc_EA2C2E: Proc_6_138_106D6F8(Me.DGTable, global_72, CInt(&H10), Me.FGPoint)
  loc_EA2C3C: Exit Sub
End Sub

Private Sub Form_Load() '1326148
  'Data Table: 512D20
  Dim var_94 As Long
  Dim var_D0 As Variant
  Dim var_C0 As String
  Dim var_F4 As String
  Dim unk_512D3D As Connection15
  Dim var_90 As Recordset15
  Dim var_98 As Variant
  Dim var_100 As String
  Dim var_104 As Long
  Dim var_F8 As Variant
  Dim Me As Recordset15
  loc_13259BC: On Error Goto loc_1326103
  loc_13259C5: var_94 = global_108
  loc_13259D1: If Not (var_94 = 5) Then
  loc_13259DD:   If (var_94 = 6) Then
  loc_13259E0:   End If
  loc_13259F8:   Proc_6_23_DFBA28(Me, 6000)
  loc_1325A00: End If
  loc_1325A0A: Set var_98 = Me.TopCtrl1
  loc_1325A10: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000B("AEDP")
  loc_1325A1E: Call 0.Method_arg_50 (var_C0, 6975)
  loc_1325A26: var_D0 = CVar(var_C0) 'String
  loc_1325A34: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000F(var_D0)
  loc_1325A3D: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_0()
  loc_1325A5D: global_116 = hAdvanceDepDialogSecondry.AdvType
  loc_1325A88: unk_512D3D.Execute "Select * from Enviro where Logsite_code='" & MemVar_1F92078 & "'", var_D0, -1
  loc_1325A93: Set var_90 = Me.TopCtrl1
  loc_1325ADC: If (Proc_6_38_E68A98(CVar(var_90.Fields.Item("CreditCardInfoMandatory"))) = "Y") Then
  loc_1325AE5:   global_56 = "Y"
  loc_1325AE9: End If
  loc_1325AF8: var_98 = var_90.Fields
  loc_1325B08: var_D0 = CVar(var_98.Item("AllowRoomSettlement")) 'Address
  loc_1325B22: If (Proc_6_38_E68A98(var_D0) = "No") Then
  loc_1325B4E:   var_100 = "SELECT Code,Name,PayType FROM RevMast Where Code <>'" & MemVar_1F92078 & "ROOM' and LogSite_Code in ('" & MemVar_1F92078 & "','HO') and FieldType='P' and paytype='Cash' ORDER BY Name"
  loc_1325B57:   unk_512D3D.Execute var_100, var_D0, -1
  loc_1325B68:   Set global_64 = var_98
  loc_1325B84: Else
  loc_1325B9F:   var_F4 = "SELECT Code,Name,PayType FROM RevMast Where LogSite_Code in ('" & MemVar_1F92078 & "','HO') and FieldType='P' and paytype='Cash' ORDER BY Name"
  loc_1325BA8:   unk_512D3D.Execute var_F4, var_D0, -1
  loc_1325BB9:   Set global_64 = var_98
  loc_1325BCE: End If
  loc_1325BD7: CVarUnk
  loc_1325BDC: VerifyVarObj
  loc_1325BE8: LateIdStAd
  loc_1325C0C: unk_512D3D.Execute "SELECT Code,Name FROM Employee ORDER BY Name", var_D0, -1
  loc_1325C34: CVarUnk
  loc_1325C39: VerifyVarObj
  loc_1325C45: LateIdStAd
  loc_1325C69: unk_512D3D.Execute "Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.FolioNO From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where T.Type in ('RO') and RoomOcc.ChkoutDate is NULL Order By T.Code", var_D0, -1
  loc_1325C91: CVarUnk
  loc_1325C96: VerifyVarObj
  loc_1325CA2: LateIdStAd
  loc_1325CC6: unk_512D3D.Execute "Select SubCode as Code,Name From SubGroup where CompanyType in ('Corporate','Travel Agency') Order By Name", var_D0, -1
  loc_1325CEE: CVarUnk
  loc_1325CF3: VerifyVarObj
  loc_1325CF9: Set var_98 = Me.DGCompany
  loc_1325CFF: LateIdStAd
  loc_1325D19: Call 0.Method_arg_38 (MemVar_1F923AC, var_98, Me.DGRoom, var_98, var_98, Me.DGEmp, var_98, var_98)
  loc_1325D2A: Call 0.Method_arg_3C (MemVar_1F920EC, Me.DGPayType, var_98, var_98)
  loc_1325D3B: Call 0.Method_arg_54 (MemVar_1F9206C, global_64, var_98)
  loc_1325D4C: Call 0.Method_arg_1C (MemVar_1F92070, var_98)
  loc_1325D5D: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_1325D6E: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_1325D7F: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_1325D90: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_1325DA1: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_1325DB2: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_1325DCC: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_1325DDA: Set var_98 = MemVar_1F92044
  loc_1325DE9: Call 0.Method_Form_Load8 (var_98)
  loc_1325DFF: Me.DGCompany.Clone
  loc_1325E0A: Set var_F8 = var_98
  loc_1325E19: Call 0.Method_arg_50 (var_F8, -1)
  loc_1325E2B: var_104 = global_108
  loc_1325E37: If (var_104 = 6) Then
  loc_1325E61:   Me.Connection15.Execute "SELECT Distinct Docid as SearchCode FROM PAYCHARGEH Where Vtype='" & global_116 & "'", var_D0, -1
  loc_1325E72:   Set global_60 = var_98
  loc_1325E87: End If
  loc_1325E93: Set var_98 = Me
  loc_1325EAA: Call Proc_138_68_FC62CC(Proc_5_1_100CB50("INI", var_98, global_60, var_98), var_104)
  loc_1325EB5: Call Proc_138_70_116E818(var_98)
  loc_1325EBA: Call Proc_138_75_11DA474(var_98)
  loc_1325ECB: If (global_104 = 2) Then
  loc_1325ECE:   Call Proc_138_71_14F7084()
  loc_1325ED3: End If
  loc_1325EDF: If (global_104 = 1) Then
  loc_1325EEB:   Set var_98 = Me.TopCtrl1
  loc_1325EF1:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010007(False)
  loc_1325F06:   Set var_98 = Me.Txt
  loc_1325F0C:   Call 0.Method_Form_Load0 (CInt(0), var_F8)
  loc_1325F14:   var_F8.Visible = False
  loc_1325F20:   Call TopCtrl1_UnknownEvent_11()
  loc_1325F3C:   If (Me.RecordCount > 0) Then
  loc_1325F45:     Me.MoveFirst
  loc_1325F72:     Me.Find "SearchCode='" & global_120 & "'", 0, 1
  loc_1325F92:     If (Me.EOF = 0) Then
  loc_1325F9F:       Set var_98 = Me.TopCtrl1
  loc_1325FA5:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_6803000E("Edit")
  loc_1325FAE:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_0()
  loc_1325FB9:       Call Proc_138_71_14F7084()
  loc_1325FC4:       Call Proc_138_77_10DF104(global_152)
  loc_1325FC9:     End If
  loc_1325FC9:   End If
  loc_1325FDA:   Set var_98 = Me.Txt
  loc_1325FE0:   Call 0.Method_Form_Load0 (CInt(0), var_F8)
  loc_1325FE8:   var_F8.Text = global_120
  loc_1326028:   Set var_98 = Me.Txt
  loc_132602E:   Call 0.Method_Form_Load0 (CInt(1), var_F8)
  loc_1326036:   var_F8.Text = CStr(Val(CStr(Right(global_120, 8))))
  loc_132607A:   Me.LblVPrefix.Caption = CStr(Mid(global_120, 9, 5))
  loc_13260A2:   Set var_98 = Me.LTxt
  loc_13260A8:   Call 0.Method_Form_Load0 (CInt(&H1A), var_F8)
  loc_13260B0:   var_F8.Caption = PBillAmt
  loc_13260C5:   var_C0 = hAdvanceDepDialogSecondry.PersonCode
  loc_13260D8:   Set var_98 = Me.Txt
  loc_13260DE:   Call 0.Method_Form_Load0 (CInt(&H10), var_F8)
  loc_13260E6:   var_F8.Text = var_C0
  loc_13260F5: End If
  loc_13260F5: Call Proc_138_80_10A7E98()
  loc_13260FF: Set var_8C = Nothing
  loc_1326102: Exit Sub
  loc_1326103: ' Referenced from: 13259BC
  loc_132610B: Set var_98 = Err()
  loc_1326111: Call 0.Method_arg_2C (var_C0)
  loc_1326132: MsgBox(CVar(var_C0), &H40, "Information", var_F0, var_128)
  loc_1326145: Exit Sub
  loc_1326146: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E61738
  'Data Table: 512D20
  loc_E616F7: Set global_72 = Nothing
  loc_E61709: Set global_60 = Nothing
  loc_E6171B: Set global_64 = Nothing
  loc_E6172D: Set global_68 = Nothing
  loc_E61734: Exit Sub
End Sub

Private Sub Form_Activate() 'F69920
  'Data Table: 512D20
  Dim var_90 As Long
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_C8 As TextBox
  Dim var_94 As Frame
  loc_F69807: If (OpenMode = 1) Then
  loc_F6980D:   var_88 = OpenType
  loc_F69815:   var_90 = var_88
  loc_F69821:   If Not (var_90 = 5) Then
  loc_F6982D:     If (var_90 = 6) Then
  loc_F69830:     End If
  loc_F6983B:     Set var_94 = Me.Txt
  loc_F69841:     Call 0.Method_Form_Activate0 (CInt(&HF), var_98)
  loc_F69849:     var_98.SetFocus
  loc_F69863:     Set var_94 = Me.Txt
  loc_F69869:     Call 0.Method_Form_Activate0 (CInt(&HF), var_98, var_88)
  loc_F69871:     var_90 = var_98.Left
  loc_F69882:     Set var_BC = Me.DGPayType
  loc_F69888:     var_BC.Left = CVar(var_88)
  loc_F698A4:     Set var_98 = Me.Txt
  loc_F698AA:     Call 0.Method_Form_Activate0 (CInt(&HF), var_BC)
  loc_F698C5:     Set var_C4 = Me.Txt
  loc_F698CB:     Call 0.Method_Form_Activate0 (CInt(&HF), var_C8)
  loc_F698F9:     var_A8 = CVar((((Me.FrRest.Top + var_BC.Top) + var_C8.Height) + CDbl(&HF))) 'Single
  loc_F69908:     Me.DGPayType.Top = CVar(Me.FrRest.Top)
  loc_F6991C:   End If
  loc_F6991C: End If
  loc_F6991C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EFF6C0
  'Data Table: 512D20
  Dim var_B4 As DataGrid
  loc_EFF608: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_EFF63C:   Set var_B4 = Me.DGEmp
  loc_EFF661:   If (((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) And (CBool(var_B4.Visible) = 0)) Then
  loc_EFF671:     Me.var_B4.Unload Me
  loc_EFF679:     Exit Sub
  loc_EFF67A:   End If
  loc_EFF67A: End If
  loc_EFF698: If (((CLng(KeyCode) = &H53) And (Shift = 2)) And (global_104 = 1)) Then
  loc_EFF69B:   Call TopCtrl1_UnknownEvent_19()
  loc_EFF6A0:   Exit Sub
  loc_EFF6A1: End If
  loc_EFF6B5: Proc_6_88_FE81B4(Me, KeyCode)
  loc_EFF6BD: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F41CE4
  'Data Table: 512D20
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F41BDB: Me.DGEmp.Visible = False
  loc_F41BFA: If (Me.RecordCount > 0) Then
  loc_F41C39:   Set var_B4 = Me.Txt
  loc_F41C3F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F41C47:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F41C7A:   var_B0 = Me.Fields.Item("Code")
  loc_F41C99:   Set var_B4 = Me.Txt
  loc_F41C9F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F41CA7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F41CBD: End If
  loc_F41CC8: Set var_A8 = Me.Txt
  loc_F41CCE: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18))
  loc_F41CD6: var_B0.SetFocus
  loc_F41CE2: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_1F 'EA286C
  'Data Table: 512D20
  Dim var_A8 As Variant
  loc_EA27EC: Set var_88 = Me.DGEmp
  loc_EA2816: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA281E: Set var_BC = Me.DGEmp
  loc_EA285A: Proc_6_138_106D6F8(Me.DGEmp, global_68, CInt(&H18), Me.FGPoint)
  loc_EA2868: Exit Sub
End Sub

Private Sub CmdDelete_Click() 'E5AC6C
  'Data Table: 512D20
  loc_E5AC43: If (Me.cmdDelete.Value = 1) Then
  loc_E5AC46:   Call Proc_138_83_F9A654()
  loc_E5AC57:   Me.cmdDelete.Value = 0
  loc_E5AC5F:   Call Proc_138_69_FE74CC()
  loc_E5AC64:   Call Form_Load()
  loc_E5AC69: End If
  loc_E5AC69: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F3BCA4
  'Data Table: 512D20
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3BB9B: Me.DGRoom.Visible = False
  loc_F3BBBA: If (Me.RecordCount > 0) Then
  loc_F3BBF9:   Set var_B4 = Me.Txt
  loc_F3BBFF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E), var_B8)
  loc_F3BC07:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3BC3A:   var_B0 = Me.Fields.Item("Code")
  loc_F3BC59:   Set var_B4 = Me.Txt
  loc_F3BC5F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E), var_B8)
  loc_F3BC67:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3BC7D: End If
  loc_F3BC88: Set var_A8 = Me.Txt
  loc_F3BC8E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E))
  loc_F3BC96: var_B0.SetFocus
  loc_F3BCA2: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'EA2B7C
  'Data Table: 512D20
  Dim var_A8 As Variant
  loc_EA2AFC: Set var_88 = Me.DGRoom
  loc_EA2B26: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA2B2E: Set var_BC = Me.DGRoom
  loc_EA2B6A: Proc_6_138_106D6F8(Me.DGRoom, global_76, CInt(&H1E), Me.FGPoint)
  loc_EA2B78: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F3BE04
  'Data Table: 512D20
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3BCFB: Me.DGCompany.Visible = False
  loc_F3BD1A: If (Me.RecordCount > 0) Then
  loc_F3BD59:   Set var_B4 = Me.Txt
  loc_F3BD5F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F), var_B8)
  loc_F3BD67:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3BD9A:   var_B0 = Me.Fields.Item("Code")
  loc_F3BDB9:   Set var_B4 = Me.Txt
  loc_F3BDBF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F), var_B8)
  loc_F3BDC7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3BDDD: End If
  loc_F3BDE8: Set var_A8 = Me.Txt
  loc_F3BDEE: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F))
  loc_F3BDF6: var_B0.SetFocus
  loc_F3BE02: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'EA2D04
  'Data Table: 512D20
  Dim var_A8 As Variant
  loc_EA2C84: Set var_88 = Me.DGCompany
  loc_EA2CAE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA2CB6: Set var_BC = Me.DGCompany
  loc_EA2CF2: Proc_6_138_106D6F8(Me.DGCompany, global_80, CInt(&H1F), Me.FGPoint)
  loc_EA2D00: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED19B8
  'Data Table: 512D20
  loc_ED191C: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_ED191F:   Call DGTable_UnknownEvent_9()
  loc_ED1924: End If
  loc_ED1940: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_ED1943:   Call DGEmp_UnknownEvent_9()
  loc_ED1948: End If
  loc_ED1964: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_ED1967:   Call DGPayType_UnknownEvent_9()
  loc_ED196C: End If
  loc_ED1988: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_ED198B:   Call DGRoom_UnknownEvent_9()
  loc_ED1990: End If
  loc_ED19AC: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_ED19AF:   Call DGCompany_UnknownEvent_9()
  loc_ED19B4: End If
  loc_ED19B4: Exit Sub
End Sub

Private Sub Del_Click() 'F946F4
  'Data Table: 512D20
  Dim var_98 As Variant
  Dim var_A8 As Variant
  loc_F945AF: If (CLng(Me.FGrid.Row) >= 1) Then
  loc_F945E9:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_F9460B:     If (CLng(Me.FGrid.Rows) > 2) Then
  loc_F94621:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F9462A:       Set var_10C = Me.FGrid
  loc_F94645:     Else
  loc_F94658:       Me.FGrid.Rows = 1
  loc_F9467C:       var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0))) 'String
  loc_F94684:       Set var_10C = Me.FGrid
  loc_F946B1:       Me.FGrid.FixedRows = 1
  loc_F946B9:     End If
  loc_F946B9:   End If
  loc_F946BC: Else
  loc_F946D7:   var_98 = "No Entries To Delete"
  loc_F946DD:   MsgBox(var_98, &H10, "Delete Module", var_E8, var_108)
  loc_F946ED: End If
  loc_F946ED: Call Proc_138_80_10A7E98(FGrid.DispID_10000, var_98)
  loc_F946F2: Exit Sub
  loc_F946F3: Exit Sub
End Sub

Public Function global_52Get() '51436C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '51437B
  global_52 = Value
End Sub

Public Function global_56Get() '51438A
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '514399
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC4504
  'Data Table: 512D20
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC447A: On Error Goto loc_EC44BF
  loc_EC4483: Me.MoveFirst
  loc_EC449D: var_8C = "Searchcode='" & MyValue
  loc_EC44AD: Me.Find var_8C & "'", 0, 1
  loc_EC44B9: Call Proc_138_71_14F7084(var_A0)
  loc_EC44BE: Exit Sub
  loc_EC44BF: ' Referenced from: EC447A
  loc_EC44C7: Set var_A4 = Err()
  loc_EC44CD: Call 0.Method_arg_2C (var_8C)
  loc_EC44EE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC4501: Exit Sub
  loc_EC4502: Exit Sub
End Sub

Public Property Get OpenMode() 'E077C0
  'Data Table: 512D20
  loc_E077B9: OpenMode = global_104
End Sub

Public Property Let OpenMode(vNewValue) 'E01BF8
  'Data Table: 512D20
  loc_E01BF2: global_104 = vNewValue
  loc_E01BF5: Exit Sub
End Sub

Public Property Get OpenType() 'E076C0
  'Data Table: 512D20
  loc_E076B9: OpenType = global_108
End Sub

Public Property Let OpenType(vNewValue) 'E01B08
  'Data Table: 512D20
  loc_E01B02: global_108 = vNewValue
  loc_E01B05: Exit Sub
End Sub

Public Property Get AdvType() 'E12D54
  'Data Table: 512D20
  loc_E12D48: var_88 = global_116
  loc_E12D4B: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E12E74
  'Data Table: 512D20
  loc_E12E6C: global_116 = vNewValue
  loc_E12E70: Exit Sub
End Sub

Public Property Get IdNo() 'E1306C
  'Data Table: 512D20
  loc_E13060: var_88 = global_112
  loc_E13063: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E131D4
  'Data Table: 512D20
  loc_E131CC: global_112 = vNewValue
  loc_E131D0: Exit Sub
End Sub

Public Property Get PersonCode() 'E13264
  'Data Table: 512D20
  loc_E13258: var_88 = global_124
  loc_E1325B: PersonCode = 
End Sub

Public Property Let PersonCode(vNewValue) 'E1333C
  'Data Table: 512D20
  loc_E13334: global_124 = vNewValue
  loc_E13338: Exit Sub
End Sub

Public Property Get pDocId() 'E13384
  'Data Table: 512D20
  loc_E13378: var_88 = global_120
  loc_E1337B: pDocId = 
End Sub

Public Property Let pDocId(vNewValue) 'E1345C
  'Data Table: 512D20
  loc_E13454: global_120 = vNewValue
  loc_E13458: Exit Sub
End Sub

Public Property Get PTableOrRoomNo() 'E135C4
  'Data Table: 512D20
  loc_E135B8: var_88 = global_128
  loc_E135BB: PTableOrRoomNo = 
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E1369C
  'Data Table: 512D20
  loc_E13694: global_128 = vNewValue
  loc_E13698: Exit Sub
End Sub

Public Property Get PConnName() 'E22558
  'Data Table: 512D20
  Dim Me As Connection15
  loc_E2254F: var_88 = Me.ConnectionString
  loc_E22552: PConnName = 
End Sub

Public Property Let PConnName(vNewValue) 'E17B04
  'Data Table: 512D20
  Dim Me As Connection15
  loc_E17AFB: Me.ConnectionString = vNewValue
  loc_E17B00: Exit Sub
End Sub

Public Property Get PRoomCat() 'E13774
  'Data Table: 512D20
  loc_E13768: var_88 = global_156
  loc_E1376B: PRoomCat = 
End Sub

Public Property Let PRoomCat(vNewValue) 'E137BC
  'Data Table: 512D20
  loc_E137B4: global_156 = vNewValue
  loc_E137B8: Exit Sub
End Sub

Public Property Get PRoomtype() 'E13804
  'Data Table: 512D20
  loc_E137F8: var_88 = global_160
  loc_E137FB: PRoomtype = 
End Sub

Public Property Let PRoomtype(vNewValue) 'E1396C
  'Data Table: 512D20
  loc_E13964: global_160 = vNewValue
  loc_E13968: Exit Sub
End Sub

Public Property Get PBillAmt() 'E13A8C
  'Data Table: 512D20
  loc_E13A82: var_88 = CStr(global_136)
  loc_E13A85: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E13B1C
  'Data Table: 512D20
  loc_E13B16: global_136 = CDbl(vNewValue)
  loc_E13B19: Exit Sub
End Sub

Public Sub Proc_138_68_FC62CC(arg_C) 'FC62CC
  'Data Table: 512D20
  Dim var_98 As TextBox
  loc_FC611A: Set var_8C = Me.Txt
  loc_FC6120: Call 0.Method_Proc_138_68_FC62CC8 (var_8E, var_86)
  loc_FC6130: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FC61CB:   If (((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) Then
  loc_FC61DE:     Set var_8C = Me.Txt
  loc_FC61E4:     Call 0.Method_Proc_138_68_FC62CC0 (CInt(var_86), var_98)
  loc_FC61EC:     var_98.Enabled = arg_C
  loc_FC61F8:   End If
  loc_FC61FB: Next var_92 'Byte
  loc_FC620D: If (global_104 = 1) Then
  loc_FC621D:   Set var_8C = Me.Txt
  loc_FC6223:   Call 0.Method_Proc_138_68_FC62CC0 (CInt(1), var_98)
  loc_FC622B:   var_98.Enabled = False
  loc_FC6237: End If
  loc_FC6244: Set var_8C = Me.Txt
  loc_FC624A: Call 0.Method_Proc_138_68_FC62CC0 (CInt(2), var_98)
  loc_FC6252: var_98.Enabled = False
  loc_FC626B: Set var_8C = Me.Txt
  loc_FC6271: Call 0.Method_Proc_138_68_FC62CC0 (CInt(0), var_98)
  loc_FC6279: var_98.Enabled = False
  loc_FC629C: If (OpenMode = 1) Then
  loc_FC62AC:   Set var_8C = Me.Txt
  loc_FC62B2:   Call 0.Method_Proc_138_68_FC62CC0 (CInt(&H10), var_98)
  loc_FC62BA:   var_98.Enabled = False
  loc_FC62C6:   GoTo loc_FC62C9
  loc_FC62C9:   ' Referenced from: FC62C6
  loc_FC62C9: End If
  loc_FC62C9: Exit Sub
End Sub

Public Sub Proc_138_69_FE74CC
  'Data Table: 512D20
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_8C As MSHFlexGrid
  loc_FE72EE: Set var_8C = Me.Txt
  loc_FE72F4: Call 0.Method_Proc_138_69_FE74CCC (var_8E, var_86)
  loc_FE7304: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FE739F:   If (((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) Then
  loc_FE73B2:     Set var_8C = Me.Txt
  loc_FE73B8:     Call 0.Method_Proc_138_69_FE74CC0 (CInt(var_86), var_98)
  loc_FE73C0:     var_98.Text = vbNullString
  loc_FE73DC:     Set var_8C = Me.Txt
  loc_FE73E2:     Call 0.Method_Proc_138_69_FE74CC0 (CInt(var_86), var_98)
  loc_FE73EA:     var_98.Tag = vbNullString
  loc_FE73F6:   End If
  loc_FE73F9: Next var_92 'Byte
  loc_FE7412: Me.FGrid.Rows = 1
  loc_FE741A: var_A8 = "1"
  loc_FE7424: Set var_8C = Me.FGrid
  loc_FE7448: Me.FGrid.FixedRows = 1
  loc_FE745E: Set var_8C = Me.LTxt
  loc_FE7464: Call 0.Method_Proc_138_69_FE74CC0 (CInt(&H1A), var_98, vbNullString)
  loc_FE746C: var_98.Caption = FGrid.DispID_10000
  loc_FE7486: Set var_8C = Me.LTxt
  loc_FE748C: Call 0.Method_Proc_138_69_FE74CC0 (CInt(&H1B), var_98)
  loc_FE7494: var_98.Caption = vbNullString
  loc_FE74AE: Set var_8C = Me.LTxt
  loc_FE74B4: Call 0.Method_Proc_138_69_FE74CC0 (CInt(&H1C), var_98)
  loc_FE74BC: var_98.Caption = vbNullString
  loc_FE74C8: Exit Sub
End Sub

Public Sub Proc_138_70_116E818
  'Data Table: 512D20
  Dim var_A0 As Variant
  loc_116E44F: Me.FrRest.Top = CDbl(915)
  loc_116E465: Me.FrRest.Left = CDbl(0)
  loc_116E484: If (OpenType = 6) Then
  loc_116E49A:   Me.FGrid.Top = CVar(CDbl(2880))
  loc_116E4A2: End If
  loc_116E4B4: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_116E4E1: Me.FrChqDet.Top = (Me.FrRest.Top + CDbl(960))
  loc_116E4FC: Me.FrChqDet.Left = CDbl(240)
  loc_116E529: Me.FrCCDet.Top = (Me.FrRest.Top + CDbl(960))
  loc_116E544: Me.FrCCDet.Left = CDbl(240)
  loc_116E56E: Me.DGPayType.Top = CVar(CDbl(Me.FGrid.Top))
  loc_116E59F: Me.DGPayType.Height = CVar(CDbl(Me.FGrid.Height))
  loc_116E5DC: var_A0 = CVar((Me.FrRest.Top + CDbl(Me.FGrid.Top))) 'Single
  loc_116E5EB: Me.DGTable.Top = CVar(CDbl(Me.FGrid.Height))
  loc_116E61E: Me.DGTable.Height = CVar(CDbl(Me.FGrid.Height))
  loc_116E652: Me.FrSendRoom.Top = (Me.FrRest.Top + CDbl(960))
  loc_116E66D: Me.FrSendRoom.Left = CDbl(240)
  loc_116E69A: Me.FrEmp.Top = (Me.FrRest.Top + CDbl(960))
  loc_116E6B5: Me.FrEmp.Left = CDbl(240)
  loc_116E6E2: Me.FrComp.Top = (Me.FrRest.Top + CDbl(960))
  loc_116E6FD: Me.FrComp.Left = CDbl(240)
  loc_116E718: Me.DGRoom.Top = CVar(CDbl(405))
  loc_116E733: Me.DGRoom.Left = CVar(CDbl(5415))
  loc_116E74E: Me.DGEmp.Top = CVar(CDbl(405))
  loc_116E769: Me.DGEmp.Left = CVar(CDbl(5550))
  loc_116E784: Me.DGCompany.Top = CVar(CDbl(405))
  loc_116E79F: Me.DGCompany.Left = CVar(CDbl(5550))
  loc_116E7B3: If (global_108 = 6) Then
  loc_116E7C5:   Me.FrRem.Width = CDbl(4925)
  loc_116E7CD: End If
  loc_116E7F2: Me.FrRem.Top = (Me.FrRest.Top + CDbl(960))
  loc_116E80D: Me.FrRem.Left = CDbl(240)
  loc_116E815: Exit Sub
End Sub

Public Sub Proc_138_71_14F7084
  'Data Table: 512D20
  Dim Me As Recordset15
  Dim var_9C As String
  Dim var_A4 As String
  Dim var_AC As String
  Dim var_B4 As String
  Dim var_EC As Variant
  Dim var_C8 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim unk_512D5D As Connection15
  Dim var_148 As Variant
  Dim var_144 As Variant
  Dim var_DC As Variant
  Dim var_8E As Integer
  Dim var_160 As Variant
  Dim var_130 As Variant
  Dim var_170 As Long
  Dim var_1A0 As Variant
  Dim unk_512D3D As Connection15
  Dim var_8C As Recordset15
  loc_14F6244: On Error Goto loc_14F7041
  loc_14F624D: Proc_183_45_E5C118(global_60)
  loc_14F6269: If (Me.RecordCount <= 0) Then
  loc_14F626C:   Call Proc_138_69_FE74CC()
  loc_14F6274: Else
  loc_14F6286:   If (global_108 = 6) Then
  loc_14F629D:     var_9C = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, " & "E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,"
  loc_14F62AB:     var_A4 = var_9C & "ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, " & "R.Name AS RoomName, ST.FPNo, ST.CardNo, ST.CardHolder, ST.ChqNo, "
  loc_14F62B9:     var_AC = var_A4 & "ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGEH AS ST LEFT JOIN " & "GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E "
  loc_14F62C7:     var_B4 = var_AC & "ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) " & "LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) "
  loc_14F62FE:     var_FC = CVar(var_B4 & "AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ST.Docid='") & Me.Fields.Item("SearchCode").Value 
  loc_14F6315:     unk_512D5D.Execute CStr(var_FC & "' And AmtCr>0"), var_140, -1
  loc_14F6320:     Set var_88 = var_144
  loc_14F634C:   End If
  loc_14F6380:   global_88 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_14F63A8:   If (Me.Recordset15.RecordCount > 0) Then
  loc_14F63ED:     Call 0.Method_Proc_138_71_14F70840 (CInt(0), var_148, CStr(Me.Recordset15.Fields.Item("DocID").Value))
  loc_14F63F5:     var_148.Text = Me.Txt
  loc_14F6428:     var_CC = Me.Recordset15.Fields.Item("VNo")
  loc_14F6447:     Set var_144 = Me.Txt
  loc_14F644D:     Call 0.Method_Proc_138_71_14F70840 (CInt(1), var_148)
  loc_14F6455:     var_148.Text = CStr(var_CC.Value)
  loc_14F64A2:     Set var_B8 = Me.Txt
  loc_14F64A8:     Call 0.Method_Proc_138_71_14F70840 (CInt(2), var_CC, CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy")))
  loc_14F64B0:     var_CC.Text = 1
  loc_14F6501:     Me.LblVPrefix.Caption = CStr(Me.Recordset15.Fields.Item("vPrefix").Value)
  loc_14F654E:     Set var_144 = Me.Txt
  loc_14F6554:     Call 0.Method_Proc_138_71_14F70840 (CInt(&H12), var_148)
  loc_14F655C:     var_148.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CardNo")), 1)
  loc_14F6570:   End If
  loc_14F657F:   Me.FGrid.Redraw = False
  loc_14F6594:   Set var_B8 = Me.FGrid
  loc_14F659A:   var_B8.Rows = 1
  loc_14F65A4:   var_8E = 1
  loc_14F65BE:   If (Me.var_B8.RecordCount > 0) Then
  loc_14F65C1:     ' Referenced from:   14F6F7D
  loc_14F65D3:     If Not(Me.Recordset15.EOF) Then
  loc_14F65D6:       var_C8 = vbNullString
  loc_14F65E0:       Set var_B8 = Me.FGrid
  loc_14F65F5:       Set var_150 = Me.FGrid
  loc_14F65FC:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_14F6601:       var_160 = 0
  loc_14F6638:       var_EC = CVar(CStr(Me.FGrid.Fields.Item("SNo").Value)) 'String
  loc_14F663F:       LateIdCallSt
  loc_14F6692:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_8E)), var_150, var_EC, 2)) 'String
  loc_14F6699:       LateIdCallSt
  loc_14F66E8:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayCode")), 1, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_14F66EF:       LateIdCallSt
  loc_14F673E:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_14F6745:       LateIdCallSt
  loc_14F6794:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomCat")), 4, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_14F679B:       LateIdCallSt
  loc_14F67EA:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Roomtype")), 5, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_14F67F1:       LateIdCallSt
  loc_14F683F:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomNo")), CVar(CLng(6)), CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_14F6846:       LateIdCallSt
  loc_14F6894:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomName")), CVar(CLng(7)), CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_14F689B:       LateIdCallSt
  loc_14F68D0:       var_130 = CVar(CLng(var_8E)) 'Long
  loc_14F68D5:       var_170 = 8
  loc_14F6906:       var_11C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_14F690D:       LateIdCallSt
  loc_14F6927:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_14F692F:       var_160 = CVar(CLng(9)) 'Long
  loc_14F6962:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("CardNo").Value)) 'String
  loc_14F6969:       LateIdCallSt
  loc_14F6983:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_14F698B:       var_160 = CVar(CLng(&HA)) 'Long
  loc_14F69BE:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("CardHolder").Value)) 'String
  loc_14F69C5:       LateIdCallSt
  loc_14F6A17:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&HB)), CVar(CLng(var_8E)))) 'String
  loc_14F6A1E:       LateIdCallSt
  loc_14F6A6D:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BatchNo")), &H17, CVar(CLng(var_8E)), var_150, var_EC, var_150)) 'String
  loc_14F6A74:       LateIdCallSt
  loc_14F6A8A:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_14F6A92:       var_160 = CVar(CLng(&HC)) 'Long
  loc_14F6AC5:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("ChqNo").Value)) 'String
  loc_14F6ACC:       LateIdCallSt
  loc_14F6B1E:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&HD)), CVar(CLng(var_8E)))) 'String
  loc_14F6B25:       LateIdCallSt
  loc_14F6B3B:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_14F6B43:       var_160 = CVar(CLng(&HE)) 'Long
  loc_14F6B76:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_14F6B7D:       LateIdCallSt
  loc_14F6BCF:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&HF)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&HF)), CVar(CLng(var_8E)))) 'String
  loc_14F6BD6:       LateIdCallSt
  loc_14F6BEC:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_14F6BF4:       var_160 = CVar(CLng(&H10)) 'Long
  loc_14F6C27:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("EmpCode").Value)) 'String
  loc_14F6C2E:       LateIdCallSt
  loc_14F6C81:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompCode")), &H14, CVar(CLng(var_8E)), var_150, var_EC, &H14, CVar(CLng(var_8E)))) 'String
  loc_14F6C88:       LateIdCallSt
  loc_14F6CD7:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompName")), &H15, CVar(CLng(var_8E)), var_150, var_EC, var_150)) 'String
  loc_14F6CDE:       LateIdCallSt
  loc_14F6CF4:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_14F6D30:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("TipAmt").Value)) 'String
  loc_14F6D37:       LateIdCallSt
  loc_14F6D7B:       var_EC = "0.00"
  loc_14F6DA2:       Set var_144 = Me.LTxt
  loc_14F6DA8:       Call 0.Method_Proc_138_71_14F70840 (CInt(&H1A), var_148, CStr(Format(CVar(Me.Recordset15.Fields.Item("BillAmount")), var_EC)), 1, 1, var_150, var_EC)
  loc_14F6DB0:       var_148.Caption = &H11
  loc_14F6DDE:       var_EC = CVar("SELECT P.RoomType+P.RoomCat+SPACE(5-LEN(P.RoomCat))+P.RoomNo+SPACE(5-LEN(P.RoomNo)),code " & " FROM PAYCHARGEH AS P LEFT JOIN RoomMast AS R ON (P.RoomNo = R.Code) AND (P.RoomCat = R.RoomCat) AND (P.RoomType = R.Type) Where DocId='") 'String
  loc_14F6E0E:       var_FC = var_EC & Me.Recordset15.Fields.Item("DocID").Value 
  loc_14F6E17:       var_11C = var_FC & "' And SNo=" 
  loc_14F6E4D:       var_1A0 = (Me.Recordset15.Fields.Item("SNo").Value + 1)
  loc_14F6E55:       var_9C = CStr(var_11C & var_1A0)
  loc_14F6E5F:       unk_512D3D.Execute var_9C, var_1C0, -1
  loc_14F6E6A:       Set var_8C = var_1C4
  loc_14F6EA4:       If (var_8C.RecordCount > 0) Then
  loc_14F6EE8:         var_EC = CVar(Proc_6_38_E68A98(var_8C.Fields.Item(0).Value, &H12, CVar(CLng(var_8E)), var_1C4, CVar(CLng(var_8E)))) 'String
  loc_14F6EEF:         LateIdCallSt
  loc_14F6F46:         var_EC = CVar(Proc_6_38_E68A98(var_8C.Fields.Item(1).Value, &H13, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_14F6F4D:         LateIdCallSt
  loc_14F6F63:       End If
  loc_14F6F65:       Set var_150 = Nothing 
  loc_14F6F6F:       var_8E = (var_8E + 1)
  loc_14F6F78:       Me.Recordset15.MoveNext
  loc_14F6F7D:       GoTo loc_14F65C1
  loc_14F6F80:     End If
  loc_14F6F93:     Me.FGrid.FixedRows = 1
  loc_14F6F9B:   End If
  loc_14F6FA9:   Me.FGrid.Redraw = True
  loc_14F6FB7:   If (var_8E = 1) Then
  loc_14F6FCD:     Me.FGrid.Rows = 1
  loc_14F6FF1:     var_DC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, var_8E, var_150, var_EC))) 'String
  loc_14F6FF9:     Set var_CC = Me.FGrid
  loc_14F7026:     Me.FGrid.FixedRows = 1
  loc_14F702E:   End If
  loc_14F702E:   Call Proc_138_80_10A7E98(FGrid.DispID_10000, var_DC, var_150, var_EC)
  loc_14F7033:   Call Proc_138_81_13ACE74(var_EC, var_150)
  loc_14F7038: End If
  loc_14F703D: Set var_88 = Nothing
  loc_14F7040: Exit Sub
  loc_14F7041: ' Referenced from: 14F6244
  loc_14F7049: Set var_B8 = Err()
  loc_14F704F: Call 0.Method_arg_2C (var_9C)
  loc_14F7070: MsgBox(CVar(var_9C), &H40, "Information", var_FC, var_11C)
  loc_14F7083: Exit Sub
End Sub

Public Sub Proc_138_72_F9605C
  'Data Table: 512D20
  loc_F95EFC: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F95F0E:   Me.DGPayType.Visible = False
  loc_F95F16: End If
  loc_F95F32: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F95F44:   Me.DGPayType.Visible = False
  loc_F95F4C: End If
  loc_F95F68: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_F95F7A:   Me.DGEmp.Visible = False
  loc_F95F82: End If
  loc_F95F9E: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_F95FB0:   Me.DGTable.Visible = False
  loc_F95FB8: End If
  loc_F95FD4: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F95FE6:   Me.DGRoom.Visible = False
  loc_F95FEE: End If
  loc_F9600A: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_F9601C:   Me.DGCompany.Visible = False
  loc_F96024: End If
  loc_F96040: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F96052:   Me.FGPoint.Visible = False
  loc_F9605A: End If
  loc_F9605A: Exit Sub
End Sub

Public Sub Proc_138_73_E91D78(arg_C) 'E91D78
  'Data Table: 512D20
  Dim var_10C As TextBox
  loc_E91D0C: Call Proc_138_72_F9605C()
  loc_E91D48: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E91D4B:   Call TopCtrl1_UnknownEvent_19()
  loc_E91D53: Else
  loc_E91D5D:   Set var_108 = Me.Txt
  loc_E91D63:   Call 0.Method_Proc_138_73_E91D780 (arg_C)
  loc_E91D6B:   var_10C.SetFocus
  loc_E91D77: End If
  loc_E91D77: Exit Sub
End Sub

Public Sub Proc_138_74_1156500
  'Data Table: 512D20
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_1156194: var_90 = global_116
  loc_11561AB: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_11561DC: Set var_A8 = Me.Txt
  loc_11561E2: Call 0.Method_Proc_138_74_11565000 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_11561F1: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_11561F9: var_EC = -1 & var_CC 
  loc_115620D: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_1156218: Set var_8C = var_134
  loc_1156254: If (var_8C.RecordCount > 0) Then
  loc_1156293:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1156296:     GoTo loc_1156323
  loc_1156299:   End If
  loc_11562CA:   global_96 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11562F5:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_115630A:   var_CC = (var_AC.Value + 1)
  loc_1156312:   global_100 = CInt(var_CC)
  loc_1156323:   ' Referenced from: 1156296
  loc_115634E:   var_BC = Space((5 - Len(var_90)))
  loc_1156356:   var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_115636A:   var_EC = Space((5 - Len(global_96)))
  loc_1156372:   var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_115637F:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_96))
  loc_1156398:   var_14C = Space((8 - Len(CStr(global_100))))
  loc_11563A0:   var_15C = (var_130 + var_14C)
  loc_11563AF:   var_17C = (var_15C + CVar(CStr(global_100)))
  loc_11563BA:   global_92 = CStr(var_17C)
  loc_11563F0:   Me.LblVPrefix.Caption = global_96
  loc_1156409:   Set var_A8 = Me.Txt
  loc_115640F:   Call 0.Method_Proc_138_74_11565000 (CInt(0), var_AC)
  loc_1156417:   var_AC.Text = global_92
  loc_1156439:   Set var_A8 = Me.Txt
  loc_115643F:   Call 0.Method_Proc_138_74_11565000 (CInt(1), var_AC)
  loc_1156447:   var_AC.Text = CStr(global_100)
  loc_115645C:   var_88 = global_92
  loc_1156462: Else
  loc_1156468:   global_92 = vbNullString
  loc_115647B:   global_100 = 0
  loc_115648E:   Me.LblVPrefix.Caption = vbNullString
  loc_11564A7:   Set var_A8 = Me.Txt
  loc_11564AD:   Call 0.Method_Proc_138_74_11565000 (CInt(0), var_AC, global_92)
  loc_11564B5:   var_AC.Text = global_100
  loc_11564CF:   Set var_A8 = Me.Txt
  loc_11564D5:   Call 0.Method_Proc_138_74_11565000 (CInt(1), var_AC)
  loc_11564DD:   var_AC.Text = vbNullString
  loc_11564EF:   var_88 = global_92
  loc_11564F2: End If
  loc_11564F7: Set var_8C = Nothing
  loc_11564FA: Proc_138_74_1156500 = global_100
End Sub

Public Sub Proc_138_75_11DA474
  'Data Table: 512D20
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_11D9FFA: If (global_108 = 6) Then
  loc_11DA009:   Me.FrRest.Visible = True
  loc_11DA011: End If
  loc_11DA024: Me.FGrid.Cols = &H18
  loc_11DA02C: var_A0 = CVar(CLng(9)) 'Long
  loc_11DA031: var_C0 = 0
  loc_11DA03D: LateIdCallSt
  loc_11DA048: var_A0 = CVar(CLng(&HA)) 'Long
  loc_11DA04D: var_C0 = 0
  loc_11DA059: LateIdCallSt
  loc_11DA064: var_A0 = CVar(CLng(&HB)) 'Long
  loc_11DA069: var_C0 = 0
  loc_11DA075: LateIdCallSt
  loc_11DA080: var_A0 = CVar(CLng(&HC)) 'Long
  loc_11DA085: var_C0 = 0
  loc_11DA091: LateIdCallSt
  loc_11DA09C: var_A0 = CVar(CLng(&HD)) 'Long
  loc_11DA0A1: var_C0 = 0
  loc_11DA0AD: LateIdCallSt
  loc_11DA0B8: var_A0 = CVar(CLng(&HE)) 'Long
  loc_11DA0BD: var_C0 = 0
  loc_11DA0C9: LateIdCallSt
  loc_11DA0D4: var_A0 = CVar(CLng(&HF)) 'Long
  loc_11DA0D9: var_C0 = 0
  loc_11DA0E5: LateIdCallSt
  loc_11DA0F0: var_A0 = CVar(CLng(&H10)) 'Long
  loc_11DA0F5: var_C0 = 0
  loc_11DA101: LateIdCallSt
  loc_11DA109: var_A0 = &H11
  loc_11DA112: var_C0 = 0
  loc_11DA11E: LateIdCallSt
  loc_11DA126: var_A0 = 1
  loc_11DA12F: var_C0 = 0
  loc_11DA13B: LateIdCallSt
  loc_11DA143: var_A0 = 4
  loc_11DA14C: var_C0 = 0
  loc_11DA158: LateIdCallSt
  loc_11DA160: var_A0 = 5
  loc_11DA169: var_C0 = 0
  loc_11DA175: LateIdCallSt
  loc_11DA180: var_A0 = CVar(CLng(6)) 'Long
  loc_11DA185: var_C0 = 0
  loc_11DA191: LateIdCallSt
  loc_11DA19C: var_A0 = CVar(CLng(7)) 'Long
  loc_11DA1A1: var_C0 = 0
  loc_11DA1AD: LateIdCallSt
  loc_11DA1B5: var_A0 = 2
  loc_11DA1BE: var_C0 = 0
  loc_11DA1CA: LateIdCallSt
  loc_11DA1D2: var_A0 = 0
  loc_11DA1DB: var_C0 = &HFA
  loc_11DA1E7: LateIdCallSt
  loc_11DA1EF: var_A0 = 0
  loc_11DA1F8: var_C0 = 0
  loc_11DA201: var_E0 = "SNo"
  loc_11DA20A: LateIdCallSt
  loc_11DA212: var_A0 = 0
  loc_11DA21B: var_C0 = &H1C2
  loc_11DA227: LateIdCallSt
  loc_11DA22F: var_A0 = 0
  loc_11DA238: var_C0 = 3
  loc_11DA241: var_E0 = "Payment Type"
  loc_11DA24A: LateIdCallSt
  loc_11DA252: var_A0 = 3
  loc_11DA261: var_C0 = CVar(CInt(1)) 'Integer
  loc_11DA268: LateIdCallSt
  loc_11DA270: var_A0 = 3
  loc_11DA279: var_C0 = &HDAC
  loc_11DA285: LateIdCallSt
  loc_11DA28D: var_A0 = 0
  loc_11DA296: var_C0 = 8
  loc_11DA29F: var_E0 = "Amount"
  loc_11DA2A8: LateIdCallSt
  loc_11DA2B0: var_A0 = 8
  loc_11DA2BF: var_C0 = CVar(CInt(7)) 'Integer
  loc_11DA2C6: LateIdCallSt
  loc_11DA2CE: var_A0 = 8
  loc_11DA2DD: var_C0 = CVar(CInt(7)) 'Integer
  loc_11DA2E4: LateIdCallSt
  loc_11DA2EC: var_A0 = 8
  loc_11DA2F5: var_C0 = &H4EC
  loc_11DA301: LateIdCallSt
  loc_11DA309: var_A0 = 0
  loc_11DA312: var_C0 = &H11
  loc_11DA31B: var_E0 = "Tip"
  loc_11DA324: LateIdCallSt
  loc_11DA32C: var_A0 = &H11
  loc_11DA33B: var_C0 = CVar(CInt(7)) 'Integer
  loc_11DA342: LateIdCallSt
  loc_11DA34A: var_A0 = &H11
  loc_11DA359: var_C0 = CVar(CInt(7)) 'Integer
  loc_11DA360: LateIdCallSt
  loc_11DA368: var_A0 = &H11
  loc_11DA371: var_C0 = &H4EC
  loc_11DA37D: LateIdCallSt
  loc_11DA385: var_A0 = &H12
  loc_11DA38E: var_C0 = 0
  loc_11DA39A: LateIdCallSt
  loc_11DA3A2: var_A0 = &H13
  loc_11DA3AB: var_C0 = 0
  loc_11DA3B7: LateIdCallSt
  loc_11DA3BF: var_A0 = &H14
  loc_11DA3C8: var_C0 = 0
  loc_11DA3D4: LateIdCallSt
  loc_11DA3DC: var_A0 = &H15
  loc_11DA3E5: var_C0 = 0
  loc_11DA3F1: LateIdCallSt
  loc_11DA3F9: var_A0 = &H16
  loc_11DA402: var_C0 = 0
  loc_11DA40E: LateIdCallSt
  loc_11DA416: var_A0 = &H17
  loc_11DA41F: var_C0 = 0
  loc_11DA42B: LateIdCallSt
  loc_11DA45D: LateIdCallSt
  loc_11DA46B: Call Proc_138_76_F29F30(Me.FGrid, CVar(CStr(1)), 0, 1, Nothing, 0, 1, Nothing)
  loc_11DA470: Exit Sub
End Sub

Public Sub Proc_138_76_F29F30
  'Data Table: 512D20
  Dim Me As Recordset15
  Dim var_B8 As Variant
  loc_F29E32: Set global_72 = New 
  loc_F29E44: Me.Recordset15.CursorLocation = 3
  loc_F29E60: If (OpenType = 6) Then
  loc_F29E86:   Me.Open "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') Order by T.Code", CVar(MemVar_1F92044), 3
  loc_F29E97:   Set var_8C = Me.LblName
  loc_F29E9D:   Call 0.Method_Proc_138_76_F29F300 (&HC, var_B8, "Party Name")
  loc_F29EA5:   var_B8.Caption = 1
  loc_F29EC1:   Set var_8C = Me.DGTable
  loc_F29EE0:   DGTable.DispID_69.Item(1).Caption = "Party Name"
  loc_F29EF7:   global_144 = "HALL"
  loc_F29F01:   global_148 = "HS"
  loc_F29F05: End If
  loc_F29F0E: CVarUnk
  loc_F29F13: VerifyVarObj
  loc_F29F19: Set var_8C = Me.DGTable
  loc_F29F1F: LateIdStAd
  loc_F29F2D: Exit Sub
End Sub

Public Sub Proc_138_77_10DF104(arg_C) '10DF104
  'Data Table: 512D20
  Dim var_98 As Frame
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  loc_10DEE00: Me.FrChqDet.Visible = False
  loc_10DEE14: Me.FrRem.Visible = False
  loc_10DEE28: Me.FrCCDet.Visible = False
  loc_10DEE3C: Me.FrEmp.Visible = False
  loc_10DEE50: Me.FrComp.Visible = False
  loc_10DEE64: Me.FrSendRoom.Visible = False
  loc_10DEE7E: If (global_108 = 6) Then
  loc_10DEE84:   var_90 = arg_C
  loc_10DEE8F:   If (var_90 = "Cheque") Then
  loc_10DEE9E:     Me.FrChqDet.Visible = True
  loc_10DEEB2:     Me.FrRem.Visible = True
  loc_10DEEF4:     Me.FrRem.Top = ((Me.FrChqDet.Top + Me.FrChqDet.Height) + CDbl(&HF))
  loc_10DEF05:   Else
  loc_10DEF0D:     If (var_90 = "Credit Card") Then
  loc_10DEF1C:       Me.FrCCDet.Visible = True
  loc_10DEF30:       Me.FrRem.Visible = False
  loc_10DEF3B:     Else
  loc_10DEF43:       If (var_90 = "Staff") Then
  loc_10DEF52:         Me.FrEmp.Visible = True
  loc_10DEF66:         Me.FrRem.Visible = True
  loc_10DEFA8:         Me.FrRem.Top = ((Me.FrEmp.Top + Me.FrEmp.Height) + CDbl(&HF))
  loc_10DEFB9:       Else
  loc_10DEFC1:         If (var_90 = "Company") Then
  loc_10DEFD0:           Me.FrComp.Visible = True
  loc_10DEFE4:           Me.FrRem.Visible = True
  loc_10DF020:           Set var_A0 = Me.FrRem
  loc_10DF026:           var_A0.Top = ((Me.FrComp.Top + Me.FrComp.Height) + CDbl(&HF))
  loc_10DF037:         Else
  loc_10DF03F:           If (var_90 = "Room") Then
  loc_10DF04E:             Me.FrSendRoom.Visible = True
  loc_10DF062:             Me.FrRem.Visible = False
  loc_10DF06D:           Else
  loc_10DF079:             Me.FrRem.Visible = True
  loc_10DF08F:             Set var_98 = Me.Txt
  loc_10DF095:             Call 0.Method_Proc_138_77_10DF1040 (CInt(&H11), var_A0)
  loc_10DF0B0:             Set var_A4 = Me.Txt
  loc_10DF0B6:             Call 0.Method_Proc_138_77_10DF1040 (CInt(&H11), var_A8)
  loc_10DF0EF:             Me.FrRem.Top = (((Me.FrRest.Top + var_A0.Top) + var_A8.Height) + CDbl(&HF))
  loc_10DF103:           End If
  loc_10DF103:         End If
  loc_10DF103:       End If
  loc_10DF103:     End If
  loc_10DF103:   End If
  loc_10DF103: End If
  loc_10DF103: Exit Sub
End Sub

Public Sub Proc_138_78_14ADA04
  'Data Table: 512D20
  Dim var_90 As Variant
  Dim var_EC As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_8C As Variant
  Dim var_10C As Variant
  Dim var_BC As Variant
  Dim var_94 As String
  Dim var_86 As Integer
  Dim var_124 As Long
  Dim var_11C As Long
  Dim Me As Variant
  loc_14ACD26: Set var_8C = Me.Txt
  loc_14ACD2C: Call 0.Method_Proc_138_78_14ADA040 (CInt(&H11), var_90)
  loc_14ACD50: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_14ACD61:   Set var_8C = Me.Txt
  loc_14ACD67:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H11), var_90)
  loc_14ACD6F:   var_90.Text = vbNullString
  loc_14ACD7B: End If
  loc_14ACD89: Set var_8C = Me.Txt
  loc_14ACD8F: Call 0.Method_Proc_138_78_14ADA040 (CInt(&H11), var_90)
  loc_14ACDA9: If (var_90.Visible = &HFF) Then
  loc_14ACDB7:   Set var_8C = Me.Txt
  loc_14ACDBD:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H11))
  loc_14ACDC5:   var_94 = "Amount"
  loc_14ACDE6:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14ACDE9:     Exit Sub
  loc_14ACDEA:   End If
  loc_14ACDEA: End If
  loc_14ACE03: Set var_8C = Me.Txt
  loc_14ACE09: Call 0.Method_Proc_138_78_14ADA040 (CInt(&H18), var_90, var_94)
  loc_14ACE11: (global_152 = "Staff") = var_90.Text
  loc_14ACE29: If (var_90 And (var_94 = vbNullString)) Then
  loc_14ACE37:   Set var_8C = Me.Txt
  loc_14ACE3D:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H18))
  loc_14ACE45:   var_94 = "Staff Name"
  loc_14ACE66:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14ACE69:     Exit Sub
  loc_14ACE6A:   End If
  loc_14ACE6A: End If
  loc_14ACE83: Set var_8C = Me.Txt
  loc_14ACE89: Call 0.Method_Proc_138_78_14ADA040 (CInt(&H1E), var_90, var_94)
  loc_14ACE91: (global_152 = "Room") = var_90.Text
  loc_14ACEA9: If (var_90 And (var_94 = vbNullString)) Then
  loc_14ACEB7:   Set var_8C = Me.Txt
  loc_14ACEBD:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H1E))
  loc_14ACEC5:   var_94 = "Room Name"
  loc_14ACEE6:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14ACEE9:     Exit Sub
  loc_14ACEEA:   End If
  loc_14ACEEA: End If
  loc_14ACF03: Set var_8C = Me.Txt
  loc_14ACF09: Call 0.Method_Proc_138_78_14ADA040 (CInt(&H1F), var_90, var_94)
  loc_14ACF11: (global_152 = "Company") = var_90.Text
  loc_14ACF29: If (var_90 And (var_94 = vbNullString)) Then
  loc_14ACF37:   Set var_8C = Me.Txt
  loc_14ACF3D:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H1F))
  loc_14ACF45:   var_94 = "Company Name"
  loc_14ACF66:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14ACF69:     Exit Sub
  loc_14ACF6A:   End If
  loc_14ACF6A: End If
  loc_14ACF75: If (global_56 = "Y") Then
  loc_14ACF91:   Set var_8C = Me.Txt
  loc_14ACF97:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H12), var_90, var_94)
  loc_14ACF9F:   (global_152 = "Credit Card") = var_90.Text
  loc_14ACFB7:   If (var_90 And (var_94 = vbNullString)) Then
  loc_14ACFC5:     Set var_8C = Me.Txt
  loc_14ACFCB:     Call 0.Method_Proc_138_78_14ADA040 (CInt(&H12))
  loc_14ACFD3:     var_94 = "Credit Card No."
  loc_14ACFF4:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14ACFF7:       Exit Sub
  loc_14ACFF8:     End If
  loc_14ACFF8:   End If
  loc_14AD011:   Set var_8C = Me.Txt
  loc_14AD017:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H13), var_90, var_94)
  loc_14AD01F:   (global_152 = "Credit Card") = var_90.Text
  loc_14AD037:   If (var_90 And (var_94 = vbNullString)) Then
  loc_14AD045:     Set var_8C = Me.Txt
  loc_14AD04B:     Call 0.Method_Proc_138_78_14ADA040 (CInt(&H13))
  loc_14AD074:     If (Proc_6_27_EA565C(var_90, "Holder's Name") = 0) Then
  loc_14AD077:       Exit Sub
  loc_14AD078:     End If
  loc_14AD078:   End If
  loc_14AD092:   Set var_8C = Me.Txt
  loc_14AD098:   Call 0.Method_Proc_138_78_14ADA040 (CInt(3), var_90)
  loc_14AD0CB:   If CBool((global_152 = "Credit Card") And (Trim(CVar(var_90)) = vbNullString)) Then
  loc_14AD0D9:     Set var_8C = Me.Txt
  loc_14AD0DF:     Call 0.Method_Proc_138_78_14ADA040 (CInt(3), var_90)
  loc_14AD0E7:     var_94 = "Batch No"
  loc_14AD108:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14AD10B:       Exit Sub
  loc_14AD10C:     End If
  loc_14AD10C:   End If
  loc_14AD10C: End If
  loc_14AD125: Set var_8C = Me.Txt
  loc_14AD12B: Call 0.Method_Proc_138_78_14ADA040 (CInt(&H15), var_90, var_94)
  loc_14AD133: (global_152 = "Cheque") = var_90.Text
  loc_14AD14B: If (var_90 And (var_94 = vbNullString)) Then
  loc_14AD159:   Set var_8C = Me.Txt
  loc_14AD15F:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H15))
  loc_14AD167:   var_94 = "Cheque No."
  loc_14AD188:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14AD18B:     Exit Sub
  loc_14AD18C:   End If
  loc_14AD18C: End If
  loc_14AD1A5: Set var_8C = Me.Txt
  loc_14AD1AB: Call 0.Method_Proc_138_78_14ADA040 (CInt(&H16), var_90, var_94)
  loc_14AD1B3: (global_152 = "Cheque") = var_90.Text
  loc_14AD1CB: If (var_90 And (var_94 = vbNullString)) Then
  loc_14AD1D9:   Set var_8C = Me.Txt
  loc_14AD1DF:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H16))
  loc_14AD208:   If (Proc_6_27_EA565C(var_90, "Cheque Dt.") = 0) Then
  loc_14AD20B:     Exit Sub
  loc_14AD20C:   End If
  loc_14AD20C: End If
  loc_14AD215: If (global_164 = 0) Then
  loc_14AD231:   var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14AD254:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_14AD26D:   If (var_94 <> vbNullString) Then
  loc_14AD28C:     var_AC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, 3))) 'String
  loc_14AD294:     Set var_90 = Me.FGrid
  loc_14AD2AE:   End If
  loc_14AD2C8:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_14AD2D4: Else
  loc_14AD2E8:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_14AD2F1: End If
  loc_14AD2FC: var_124 = OpenType
  loc_14AD308: If (var_124 = 6) Then
  loc_14AD30F:   Set var_128 = Me.FGrid
  loc_14AD332:   Set var_8C = Me.Txt
  loc_14AD338:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&HF), var_90, var_94, 1, CVar(CLng(var_86)), var_124)
  loc_14AD340:   var_86 = var_90.Tag
  loc_14AD348:   var_AC = CVar(var_94) 'String
  loc_14AD34F:   LateIdCallSt
  loc_14AD365:   var_CC = CVar(CLng(var_86)) 'Long
  loc_14AD36A:   var_10C = 2
  loc_14AD380:   LateIdCallSt
  loc_14AD3A8:   Set var_8C = Me.Txt
  loc_14AD3AE:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&HF), var_90, var_94, 3, CVar(CLng(var_86)), var_128, global_152)
  loc_14AD3B6:   var_10C = var_90.Text
  loc_14AD3BE:   var_AC = CVar(var_94) 'String
  loc_14AD3C5:   LateIdCallSt
  loc_14AD3DB:   var_CC = CVar(CLng(var_86)) 'Long
  loc_14AD3E0:   var_10C = 4
  loc_14AD3F6:   LateIdCallSt
  loc_14AD402:   var_CC = CVar(CLng(var_86)) 'Long
  loc_14AD407:   var_10C = 5
  loc_14AD41D:   LateIdCallSt
  loc_14AD444:   Set var_8C = Me.Txt
  loc_14AD44A:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H10), var_90, var_94, CVar(CLng(6)), CVar(CLng(var_86)), var_128, global_148)
  loc_14AD452:   var_10C = var_90.Tag
  loc_14AD461:   LateIdCallSt
  loc_14AD492:   Set var_8C = Me.Txt
  loc_14AD498:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H10), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_14AD4A0:   var_CC = var_90.Text
  loc_14AD4A8:   var_AC = CVar(var_94) 'String
  loc_14AD4AF:   LateIdCallSt
  loc_14AD4E1:   Set var_8C = Me.Txt
  loc_14AD4E7:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H11), var_90, var_94, 8, CVar(CLng(var_86)), var_128)
  loc_14AD4EF:   var_AC = var_90.Text
  loc_14AD4F7:   var_AC = CVar(var_94) 'String
  loc_14AD4FE:   LateIdCallSt
  loc_14AD52F:   Set var_8C = Me.Txt
  loc_14AD535:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H12), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_128)
  loc_14AD53D:   var_AC = var_90.Text
  loc_14AD545:   var_AC = CVar(var_94) 'String
  loc_14AD54C:   LateIdCallSt
  loc_14AD57D:   Set var_8C = Me.Txt
  loc_14AD583:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H13), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_128)
  loc_14AD58B:   var_AC = var_90.Text
  loc_14AD593:   var_AC = CVar(var_94) 'String
  loc_14AD59A:   LateIdCallSt
  loc_14AD5CB:   Set var_8C = Me.Txt
  loc_14AD5D1:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H14), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_128)
  loc_14AD5D9:   var_AC = var_90.Text
  loc_14AD5E1:   var_AC = CVar(var_94) 'String
  loc_14AD5E8:   LateIdCallSt
  loc_14AD61A:   Set var_8C = Me.Txt
  loc_14AD620:   Call 0.Method_Proc_138_78_14ADA040 (CInt(3), var_90, var_94, &H17, CVar(CLng(var_86)), var_128)
  loc_14AD628:   var_AC = var_90.Text
  loc_14AD630:   var_AC = CVar(var_94) 'String
  loc_14AD637:   LateIdCallSt
  loc_14AD668:   Set var_8C = Me.Txt
  loc_14AD66E:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H15), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_128)
  loc_14AD676:   var_AC = var_90.Text
  loc_14AD67E:   var_AC = CVar(var_94) 'String
  loc_14AD685:   LateIdCallSt
  loc_14AD6B6:   Set var_8C = Me.Txt
  loc_14AD6BC:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H16), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_128)
  loc_14AD6C4:   var_AC = var_90.Text
  loc_14AD6CC:   var_AC = CVar(var_94) 'String
  loc_14AD6D3:   LateIdCallSt
  loc_14AD704:   Set var_8C = Me.Txt
  loc_14AD70A:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H17), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_128)
  loc_14AD712:   var_AC = var_90.Text
  loc_14AD71A:   var_AC = CVar(var_94) 'String
  loc_14AD721:   LateIdCallSt
  loc_14AD752:   Set var_8C = Me.Txt
  loc_14AD758:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H18), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_128)
  loc_14AD760:   var_AC = var_90.Text
  loc_14AD768:   var_AC = CVar(var_94) 'String
  loc_14AD76F:   LateIdCallSt
  loc_14AD7A0:   Set var_8C = Me.Txt
  loc_14AD7A6:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H18), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_128)
  loc_14AD7AE:   var_AC = var_90.Tag
  loc_14AD7B6:   var_AC = CVar(var_94) 'String
  loc_14AD7BD:   LateIdCallSt
  loc_14AD7EF:   Set var_8C = Me.Txt
  loc_14AD7F5:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H19), var_90, var_94, &H11, CVar(CLng(var_86)), var_128)
  loc_14AD7FD:   var_AC = var_90.Text
  loc_14AD805:   var_AC = CVar(var_94) 'String
  loc_14AD80C:   LateIdCallSt
  loc_14AD83E:   Set var_8C = Me.Txt
  loc_14AD844:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H1E), var_90, var_94, &H12, CVar(CLng(var_86)), var_128)
  loc_14AD84C:   var_AC = var_90.Tag
  loc_14AD854:   var_AC = CVar(var_94) 'String
  loc_14AD85B:   LateIdCallSt
  loc_14AD88D:   Set var_8C = Me.Txt
  loc_14AD893:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H1E), var_90, var_94, &H13, CVar(CLng(var_86)), var_128)
  loc_14AD89B:   var_AC = var_90.Text
  loc_14AD8A3:   var_AC = CVar(var_94) 'String
  loc_14AD8AA:   LateIdCallSt
  loc_14AD8DC:   Set var_8C = Me.Txt
  loc_14AD8E2:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H1F), var_90, var_94, &H14, CVar(CLng(var_86)), var_128)
  loc_14AD8EA:   var_AC = var_90.Tag
  loc_14AD8F2:   var_AC = CVar(var_94) 'String
  loc_14AD8F9:   LateIdCallSt
  loc_14AD914:   var_10C = &H15
  loc_14AD92B:   Set var_8C = Me.Txt
  loc_14AD931:   Call 0.Method_Proc_138_78_14ADA040 (CInt(&H1F), var_90, var_94, var_10C, CVar(CLng(var_86)), var_128)
  loc_14AD939:   var_AC = var_90.Text
  loc_14AD941:   var_AC = CVar(var_94) 'String
  loc_14AD948:   LateIdCallSt
  loc_14AD965:   If (global_152 = "Room") Then
  loc_14AD96C:     var_EC = CVar(CLng(var_86)) 'Long
  loc_14AD971:     var_11C = &H16
  loc_14AD997:     var_90 = Me.Fields.Item("FolioNo")
  loc_14AD99F:     var_AC = var_90.Value
  loc_14AD9A8:     var_BC = CVar(CStr(var_AC)) 'String
  loc_14AD9AF:     LateIdCallSt
  loc_14AD9C5:   End If
  loc_14AD9C7:   Set var_128 = Nothing 
  loc_14AD9CB: End If
  loc_14AD9CB: Call Proc_138_80_10A7E98(var_128, var_BC, var_11C, var_EC, var_128, var_AC)
  loc_14AD9D0: Call Proc_138_79_FFB8E8(var_128, global_144, var_10C)
  loc_14AD9E0: Set var_8C = Me.Txt
  loc_14AD9E6: Call 0.Method_Proc_138_78_14ADA040 (CInt(&HF), var_90)
  loc_14AD9EE: var_90.SetFocus
  loc_14AD9FF: global_164 = 0
  loc_14ADA02: Exit Sub
End Sub

Public Sub Proc_138_79_FFB8E8
  'Data Table: 512D20
  Dim var_8C As TextBox
  loc_FFB6EA: Set var_88 = Me.Txt
  loc_FFB6F0: Call 0.Method_Proc_138_79_FFB8E80 (CInt(&HF), var_8C)
  loc_FFB6F8: var_8C.Text = vbNullString
  loc_FFB712: Set var_88 = Me.Txt
  loc_FFB718: Call 0.Method_Proc_138_79_FFB8E80 (CInt(&H11), var_8C)
  loc_FFB720: var_8C.Text = vbNullString
  loc_FFB73A: Set var_88 = Me.Txt
  loc_FFB740: Call 0.Method_Proc_138_79_FFB8E80 (CInt(&H19), var_8C)
  loc_FFB748: var_8C.Text = vbNullString
  loc_FFB762: Set var_88 = Me.Txt
  loc_FFB768: Call 0.Method_Proc_138_79_FFB8E80 (CInt(&H18), var_8C)
  loc_FFB770: var_8C.Text = vbNullString
  loc_FFB78A: Set var_88 = Me.Txt
  loc_FFB790: Call 0.Method_Proc_138_79_FFB8E80 (CInt(&H17), var_8C)
  loc_FFB798: var_8C.Text = vbNullString
  loc_FFB7B2: Set var_88 = Me.Txt
  loc_FFB7B8: Call 0.Method_Proc_138_79_FFB8E80 (CInt(&H12), var_8C)
  loc_FFB7C0: var_8C.Text = vbNullString
  loc_FFB7DA: Set var_88 = Me.Txt
  loc_FFB7E0: Call 0.Method_Proc_138_79_FFB8E80 (CInt(&H13), var_8C)
  loc_FFB7E8: var_8C.Text = vbNullString
  loc_FFB802: Set var_88 = Me.Txt
  loc_FFB808: Call 0.Method_Proc_138_79_FFB8E80 (CInt(&H14), var_8C)
  loc_FFB810: var_8C.Text = vbNullString
  loc_FFB82A: Set var_88 = Me.Txt
  loc_FFB830: Call 0.Method_Proc_138_79_FFB8E80 (CInt(3), var_8C)
  loc_FFB838: var_8C.Text = vbNullString
  loc_FFB852: Set var_88 = Me.Txt
  loc_FFB858: Call 0.Method_Proc_138_79_FFB8E80 (CInt(&H15), var_8C)
  loc_FFB860: var_8C.Text = vbNullString
  loc_FFB87A: Set var_88 = Me.Txt
  loc_FFB880: Call 0.Method_Proc_138_79_FFB8E80 (CInt(&H16), var_8C)
  loc_FFB888: var_8C.Text = vbNullString
  loc_FFB8A2: Set var_88 = Me.Txt
  loc_FFB8A8: Call 0.Method_Proc_138_79_FFB8E80 (CInt(&H12), var_8C)
  loc_FFB8B0: var_8C.Text = vbNullString
  loc_FFB8CA: Set var_88 = Me.Txt
  loc_FFB8D0: Call 0.Method_Proc_138_79_FFB8E80 (CInt(&H14), var_8C)
  loc_FFB8D8: var_8C.Text = vbNullString
  loc_FFB8E4: Exit Sub
End Sub

Public Sub Proc_138_80_10A7E98
  'Data Table: 512D20
  Dim var_90 As Label
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_154 As Double
  Dim var_B8 As Variant
  Dim var_D8 As Long
  Dim var_EC As MSHFlexGrid
  Dim var_F0 As String
  Dim var_15C As Double
  Dim var_110 As Variant
  Dim var_148 As Label
  Dim var_144 As Variant
  Dim var_160 As Label
  loc_10A7BF2: Set var_8C = Me.LTxt
  loc_10A7BF8: Call 0.Method_Proc_138_80_10A7E980 (CInt(&H1B), var_90)
  loc_10A7C00: var_90.Caption = vbNullString
  loc_10A7C31: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_10A7C45:   Set var_8C = Me.LTxt
  loc_10A7C4B:   Call 0.Method_Proc_138_80_10A7E980 (CInt(&H1B), var_90)
  loc_10A7C67:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_10A7C6C:   var_D8 = 8
  loc_10A7C92:   var_15C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10A7CB1:   var_110 = CVar((Val(var_90.Caption) + var_15C)) 'Double
  loc_10A7CCF:   Set var_144 = Me.LTxt
  loc_10A7CD5:   Call 0.Method_Proc_138_80_10A7E980 (CInt(&H1B), var_148, CStr(Format(var_110, "0.00")), 1, 1)
  loc_10A7CDD:   var_148.Caption = var_15C
  loc_10A7D06: Next var_A4 'Integer
  loc_10A7D19: Set var_8C = Me.LTxt
  loc_10A7D1F: Call 0.Method_Proc_138_80_10A7E980 (CInt(&H1A), var_90)
  loc_10A7D27: var_A8 = var_90.Caption
  loc_10A7D45: Set var_EC = Me.LTxt
  loc_10A7D4B: Call 0.Method_Proc_138_80_10A7E980 (CInt(&H1B), var_144)
  loc_10A7D53: var_F0 = var_144.Caption
  loc_10A7D7F: var_A0 = CVar((Val(var_A8) - Val(var_F0))) 'Double
  loc_10A7D9D: Set var_148 = Me.LTxt
  loc_10A7DA3: Call 0.Method_Proc_138_80_10A7E980 (CInt(&H1C), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_10A7DAB: var_160.Caption = 1
  loc_10A7DDF: Set var_8C = Me.LTxt
  loc_10A7DE5: Call 0.Method_Proc_138_80_10A7E980 (CInt(&H1B), var_90, var_A8)
  loc_10A7DED: var_15C = var_90.Caption
  loc_10A7DFA: var_154 = Val(var_A8)
  loc_10A7E0B: Set var_EC = Me.Txt
  loc_10A7E11: Call 0.Method_Proc_138_80_10A7E980 (CInt(&H19), var_144, var_F0)
  loc_10A7E45: var_A0 = CVar((var_144.Text + Val(var_F0))) 'Double
  loc_10A7E63: Set var_148 = Me.LTxt
  loc_10A7E69: Call 0.Method_Proc_138_80_10A7E980 (CInt(&H1D), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_10A7E71: var_160.Caption = 1
  loc_10A7E97: Exit Sub
End Sub

Public Sub Proc_138_81_13ACE74
  'Data Table: 512D20
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_158 As Variant
  Dim var_200 As TextBox
  loc_13AC55F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC564: var_C8 = 1
  loc_13AC59B: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13AC5A2:   Set var_F4 = Me.FGrid
  loc_13AC5E2:   Set var_DC = Me.Txt
  loc_13AC5E8:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), 1)
  loc_13AC5F0:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13AC61B:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC620:   var_C8 = 2
  loc_13AC63D:   global_152 = CStr(var_F4.TextMatrix))
  loc_13AC666:   var_C8 = 3
  loc_13AC68B:   Set var_DC = Me.Txt
  loc_13AC691:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_13AC699:   var_F8.Text = var_C8
  loc_13AC6C4:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC6C9:   var_C8 = 4
  loc_13AC6E6:   global_144 = CStr(var_F4.TextMatrix))
  loc_13AC70A:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC70F:   var_C8 = 5
  loc_13AC72C:   global_148 = CStr(var_F4.TextMatrix))
  loc_13AC750:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC779:   Set var_DC = Me.Txt
  loc_13AC77F:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(6)), var_A8, CVar(CLng(6)))
  loc_13AC787:   var_F8.Tag = var_A8
  loc_13AC7B2:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC7BA:   var_C8 = CVar(CLng(7)) 'Long
  loc_13AC7F1:   var_158 = var_F4.TextMatrix)
  loc_13AC801:   Set var_F8 = Me.FGrid
  loc_13AC85F:   Set var_1FC = Me.Txt
  loc_13AC865:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&H10), var_200, CStr(IIf((CStr(var_F4.TextMatrix)) = vbNullString), CVar(CStr(var_158)), CVar(CStr(var_F4.TextMatrix))))), CVar(CLng(7)), CVar(CLng(var_F8.Row)), var_158, CVar(CLng(6)))
  loc_13AC86D:   var_200.Text = CVar(CLng(Me.FGrid.Row))
  loc_13AC8B5:   var_C8 = 8
  loc_13AC8C1:   var_EC = var_F4.TextMatrix)
  loc_13AC8DA:   Set var_DC = Me.Txt
  loc_13AC8E0:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&H11), var_F8, CStr(var_EC), var_C8, CVar(CLng(Me.FGrid.Row)), var_EC)
  loc_13AC8E8:   var_F8.Text = var_C8
  loc_13AC913:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AC93C:   Set var_DC = Me.Txt
  loc_13AC942:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)), var_A8)
  loc_13AC94A:   var_F8.Text = var_A8
  loc_13AC99E:   Set var_DC = Me.Txt
  loc_13AC9A4:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&H13), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)))
  loc_13AC9AC:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13ACA00:   Set var_DC = Me.Txt
  loc_13ACA06:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&H14), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_13ACA0E:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13ACA63:   Set var_DC = Me.Txt
  loc_13ACA69:   Call 0.Method_Proc_138_81_13ACE740 (CInt(3), var_F8, CStr(var_F4.TextMatrix)), &H17)
  loc_13ACA71:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13ACAC5:   Set var_DC = Me.Txt
  loc_13ACACB:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&H15), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_13ACAD3:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13ACB27:   Set var_DC = Me.Txt
  loc_13ACB2D:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&H16), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_13ACB35:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13ACB89:   Set var_DC = Me.Txt
  loc_13ACB8F:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&H17), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_13ACB97:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13ACBEB:   Set var_DC = Me.Txt
  loc_13ACBF1:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&H18), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_13ACBF9:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13ACC4D:   Set var_DC = Me.Txt
  loc_13ACC53:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&H18), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_13ACC5B:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13ACCB0:   Set var_DC = Me.Txt
  loc_13ACCB6:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&H19), var_F8, CStr(var_F4.TextMatrix)), &H11)
  loc_13ACCBE:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13ACD13:   Set var_DC = Me.Txt
  loc_13ACD19:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&H1E), var_F8, CStr(var_F4.TextMatrix)), &H12)
  loc_13ACD21:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13ACD76:   Set var_DC = Me.Txt
  loc_13ACD7C:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&H1E), var_F8, CStr(var_F4.TextMatrix)), &H13)
  loc_13ACD84:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13ACDD9:   Set var_DC = Me.Txt
  loc_13ACDDF:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&H1F), var_F8, CStr(var_F4.TextMatrix)), &H14)
  loc_13ACDE7:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13ACE3C:   Set var_DC = Me.Txt
  loc_13ACE42:   Call 0.Method_Proc_138_81_13ACE740 (CInt(&H1F), var_F8, CStr(var_F4.TextMatrix)), &H15)
  loc_13ACE4A:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13ACE67:   global_164 = &HFF
  loc_13ACE6C:   Set var_F4 = Nothing 
  loc_13ACE70: End If
  loc_13ACE70: Exit Sub
End Sub

Public Sub Proc_138_82_EE37B8
  'Data Table: 512D20
  loc_EE3706: On Error Goto loc_EE374C
  loc_EE371E: Call 0.Method_arg_18C (var_8C)
  loc_EE3726: Call var_8C.Show
  loc_EE373B: Call 0.Method_arg_188 (var_B0)
  loc_EE3743: var_88 = var_B0
  loc_EE3746: Proc_138_82_EE37B8 = 1
  loc_EE374C: ' Referenced from: EE3706
  loc_EE3754: Set var_8C = Err()
  loc_EE375A: Call 0.Method_arg_1C (var_B4)
  loc_EE376B: If (var_B4 <> 0) Then
  loc_EE3776:   Set var_8C = Err()
  loc_EE377C:   Call 0.Method_arg_2C (var_B0)
  loc_EE379D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE37B0: End If
  loc_EE37B0: Proc_138_82_EE37B8 = 
End Sub

Public Sub Proc_138_83_F9A654
  'Data Table: 512D20
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_150 As Boolean
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim unk_512D5D As Connection15
  Dim Me As Recordset15
  loc_F9A515: var_150 = (CLng(Me.FGrid.Rows) > 1)
  loc_F9A51D: Set var_9C = Me.FGrid
  loc_F9A532: var_BC = CVar((CLng(var_9C.Rows) - 1)) 'Long
  loc_F9A543: Set var_F0 = Me.FGrid
  loc_F9A549: var_100 = var_F0.TextMatrix)
  loc_F9A554: var_110 = CVar(CStr(var_100)) 'String
  loc_F9A58A: If CBool(CVar(CLng(&H11)) And (Trim(var_110) = vbNullString)) Then
  loc_F9A58D:   Exit Sub
  loc_F9A58E: End If
  loc_F9A5A4: var_BC = "Are you sure delete record?"
  loc_F9A5A9: var_98 = var_BC
  loc_F9A5C5: If (MsgBox(var_98, &H14, "Delete...", var_100, var_110) = 7) Then
  loc_F9A5C8:   Exit Sub
  loc_F9A5C9: End If
  loc_F9A5D2: unk_512D5D.BeginTrans var_164
  loc_F9A5F5: Set var_88 = Me.Txt
  loc_F9A5FB: Call 0.Method_Proc_138_83_F9A6540 (CInt(0), var_9C, var_168, "Delete From PAYCHARGEH Where Docid='", var_98)
  loc_F9A603: -1 = var_9C.Text
  loc_F9A61C: unk_512D5D.Execute var_F0 & var_168 & "'", var_BC, var_150
  loc_F9A63C: unk_512D5D.CommitTrans
  loc_F9A64C: Me.Requery -1
  loc_F9A651: Exit Sub
End Sub
