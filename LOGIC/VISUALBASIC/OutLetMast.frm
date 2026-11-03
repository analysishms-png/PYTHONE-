VERSION 5.00
Begin VB.Form OutLetMast
  Caption = "Outlet Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 1080
  ClientWidth = 16230
  ClientHeight = 9345
  LockControls = -1  'True
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin TextBox Txt
    Index = 49
    ForeColor = &HC00000&
    Left = 4605
    Top = 6915
    Width = 600
    Height = 285
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 48
    ForeColor = &HC00000&
    Left = 1425
    Top = 6915
    Width = 600
    Height = 285
    TabIndex = 23
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 47
    ForeColor = &HC00000&
    Left = 1425
    Top = 6600
    Width = 600
    Height = 285
    TabIndex = 21
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 46
    ForeColor = &HC00000&
    Left = 4605
    Top = 3180
    Width = 600
    Height = 285
    TabIndex = 158
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin Frame FrDiscType
    Caption = "Discount Type"
    BackColor = &HFFC0C0&
    Left = 12600
    Top = 1245
    Width = 2010
    Height = 315
    TabIndex = 156
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin CheckBox ChkDisc
      Caption = "Group Discount"
      Index = 0
      BackColor = &HFFC0C0&
      ForeColor = &HC00000&
      Left = 0
      Top = 0
      Width = 1800
      Height = 345
      TabIndex = 157
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
  Begin TextBox Txt
    Index = 45
    ForeColor = &HC00000&
    Left = 7785
    Top = 2235
    Width = 600
    Height = 285
    TabIndex = 153
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 16230
    Height = 450
    TabIndex = 152
  End
  Begin Frame Frame2
    Left = 150
    Top = 7215
    Width = 5325
    Height = 1050
    Visible = 0   'False
    TabIndex = 148
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 30
      ForeColor = &HC00000&
      Left = 1725
      Top = 720
      Width = 3450
      Height = 285
      TabIndex = 26
      BorderStyle = 0 'None
      MaxLength = 50
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
      Index = 29
      ForeColor = &HC00000&
      Left = 1725
      Top = 405
      Width = 3450
      Height = 285
      TabIndex = 25
      BorderStyle = 0 'None
      MaxLength = 50
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
    Begin Label Label1
      Caption = "IInd Copy Remark"
      Index = 48
      ForeColor = &HC00000&
      Left = 0
      Top = 720
      Width = 1695
      Height = 240
      TabIndex = 151
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
      Caption = "Ist Copy Remark"
      Index = 47
      ForeColor = &HC00000&
      Left = 0
      Top = 405
      Width = 1545
      Height = 240
      TabIndex = 150
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
      Caption = "Order Booking Printing Information"
      Index = 78
      BackColor = &HC00000&
      ForeColor = &HFFFFFF&
      Left = 0
      Top = 0
      Width = 5145
      Height = 375
      TabIndex = 149
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
  End
  Begin TextBox Txt
    Index = 8
    ForeColor = &HC00000&
    Left = 7785
    Top = 2550
    Width = 4635
    Height = 285
    TabIndex = 33
    BorderStyle = 0 'None
    MaxLength = 50
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
    Left = 7785
    Top = 4440
    Width = 4635
    Height = 285
    TabIndex = 39
    BorderStyle = 0 'None
    MaxLength = 50
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
    Left = 7785
    Top = 4125
    Width = 4635
    Height = 285
    TabIndex = 38
    BorderStyle = 0 'None
    MaxLength = 50
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
    Left = 7785
    Top = 3180
    Width = 4635
    Height = 285
    TabIndex = 35
    BorderStyle = 0 'None
    MaxLength = 50
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
    Left = 7785
    Top = 2865
    Width = 4635
    Height = 285
    TabIndex = 34
    BorderStyle = 0 'None
    MaxLength = 50
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
    Index = 33
    ForeColor = &HC00000&
    Left = 7785
    Top = 3495
    Width = 4635
    Height = 285
    TabIndex = 36
    BorderStyle = 0 'None
    MaxLength = 50
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
    Index = 34
    ForeColor = &HC00000&
    Left = 7785
    Top = 3810
    Width = 4635
    Height = 285
    TabIndex = 37
    BorderStyle = 0 'None
    MaxLength = 50
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
    Index = 39
    ForeColor = &HC00000&
    Left = 7995
    Top = 4755
    Width = 4425
    Height = 285
    TabIndex = 40
    BorderStyle = 0 'None
    MaxLength = 50
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
    ForeColor = &HC00000&
    Left = 7785
    Top = 1290
    Width = 600
    Height = 285
    TabIndex = 27
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
    Index = 15
    ForeColor = &HC00000&
    Left = 10935
    Top = 1290
    Width = 600
    Height = 285
    TabIndex = 30
    BorderStyle = 0 'None
    MaxLength = 25
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
    Index = 17
    ForeColor = &HC00000&
    Left = 7785
    Top = 1605
    Width = 600
    Height = 285
    TabIndex = 28
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
    Index = 28
    ForeColor = &HC00000&
    Left = 10935
    Top = 1605
    Width = 600
    Height = 285
    TabIndex = 31
    BorderStyle = 0 'None
    MaxLength = 25
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
    Index = 35
    ForeColor = &HC00000&
    Left = 10935
    Top = 1920
    Width = 600
    Height = 285
    TabIndex = 32
    BorderStyle = 0 'None
    MaxLength = 25
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
    Index = 24
    ForeColor = &HC00000&
    Left = 1425
    Top = 4575
    Width = 3780
    Height = 285
    TabIndex = 12
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
    Index = 37
    ForeColor = &HC00000&
    Left = 1425
    Top = 4260
    Width = 3780
    Height = 285
    TabIndex = 11
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
    Index = 23
    ForeColor = &HC00000&
    Left = 4605
    Top = 3945
    Width = 600
    Height = 285
    TabIndex = 10
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
    Index = 5
    ForeColor = &HC00000&
    Left = 1425
    Top = 1920
    Width = 3780
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 50
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
    Index = 22
    ForeColor = &HC00000&
    Left = 1425
    Top = 2235
    Width = 3780
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin Frame Frame1
    BackColor = &HFFC0C0&
    Left = 14370
    Top = 7065
    Width = 4425
    Height = 630
    Visible = 0   'False
    TabIndex = 59
    BorderStyle = 0 'None
    Begin Label Label1
      Caption = "Back Color"
      Index = 13
      ForeColor = &HC0&
      Left = 405
      Top = 270
      Width = 1005
      Height = 240
      Visible = 0   'False
      TabIndex = 61
      AutoSize = -1  'True
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
      Index = 14
      BackColor = &H8080FF&
      ForeColor = &H0&
      Left = 2250
      Top = 255
      Width = 4290
      Height = 285
      Visible = 0   'False
      TabIndex = 60
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
    Begin Shape Shape1
      Left = 2220
      Top = 240
      Width = 4335
      Height = 330
      Visible = 0   'False
      BorderWidth = 2
    End
  End
  Begin TextBox Txt
    Index = 25
    ForeColor = &HC00000&
    Left = 4605
    Top = 6285
    Width = 600
    Height = 285
    TabIndex = 20
    BorderStyle = 0 'None
    MaxLength = 6
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
    Index = 40
    ForeColor = &HC00000&
    Left = 4605
    Top = 2865
    Width = 600
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 42
    ForeColor = &HC00000&
    Left = 4605
    Top = 4890
    Width = 600
    Height = 285
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 6
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
    Index = 44
    ForeColor = &HC00000&
    Left = 10755
    Top = 6975
    Width = 1575
    Height = 285
    Visible = 0   'False
    TabIndex = 101
    BorderStyle = 0 'None
    TabStop = 0   'False
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
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HFFFFFF&
    Left = 12240
    Top = 7935
    Width = 915
    Height = 225
    Visible = 0   'False
    TabIndex = 100
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin DataGrid DGSch
    Left = 14505
    Top = 4215
    Width = 4695
    Height = 1155
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 98
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    Left = 4050
    Top = 8850
    Width = 915
    Height = 225
    Visible = 0   'False
    TabIndex = 96
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 43
    Left = 12525
    Top = 8925
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 93
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 41
    ForeColor = &HC00000&
    Left = 4605
    Top = 6600
    Width = 600
    Height = 285
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 38
    Left = 12525
    Top = 8655
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 46
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin Frame FrmList1
    Left = 14700
    Top = 585
    Width = 1185
    Height = 1155
    Visible = 0   'False
    TabIndex = 86
    BorderStyle = 0 'None
    Begin ListView ListView1
      Left = 840
      Top = -240
      Width = 1800
      Height = 1080
      TabStop = 0   'False
      TabIndex = 87
    End
  End
  Begin TextBox Txt
    Index = 36
    ForeColor = &HC00000&
    Left = 4605
    Top = 5655
    Width = 600
    Height = 285
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 32
    Left = 12525
    Top = 8385
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 45
    BorderStyle = 0 'None
    MaxLength = 6
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
    Index = 31
    ForeColor = &HC00000&
    Left = 4605
    Top = 5970
    Width = 600
    Height = 285
    TabIndex = 18
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 27
    ForeColor = &HC00000&
    Left = 7785
    Top = 1920
    Width = 600
    Height = 285
    TabIndex = 29
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 26
    ForeColor = &HC00000&
    Left = 1425
    Top = 4890
    Width = 600
    Height = 285
    TabIndex = 13
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 21
    ForeColor = &HC00000&
    Left = 1425
    Top = 6285
    Width = 600
    Height = 285
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 3
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
    ForeColor = &HC00000&
    Left = 1425
    Top = 2865
    Width = 600
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 3
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
    ForeColor = &HC00000&
    Left = 1425
    Top = 5655
    Width = 600
    Height = 285
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 3
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
    ForeColor = &HC00000&
    Left = 1425
    Top = 5970
    Width = 600
    Height = 285
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 3
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
    ForeColor = &HC00000&
    Left = 4605
    Top = 2550
    Width = 600
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin CommandButton Command1
    Caption = "Show Print Details"
    BackColor = &HC0FFFF&
    Left = 17265
    Top = 510
    Width = 1020
    Height = 900
    Visible = 0   'False
    TabIndex = 41
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &HC0FFFF&
    Style = 1
  End
  Begin TextBox Txt
    Index = 14
    Left = 12405
    Top = 8085
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 44
    BorderStyle = 0 'None
    MaxLength = 3
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
  Begin PictureBox Picture3
    Picture = "OutLetMast.frx":0
    Left = 12525
    Top = 930
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 66
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin DataGrid DGHelp
    Left = 14700
    Top = 1650
    Width = 4185
    Height = 1065
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 65
  End
  Begin Frame FrmList
    Left = 15105
    Top = 4560
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 63
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 120
      Top = 0
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 64
    End
  End
  Begin TextBox Txt
    Index = 13
    Left = 12405
    Top = 7815
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 42
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 12
    ForeColor = &HC00000&
    Left = 1425
    Top = 3180
    Width = 600
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 11
    Left = 12525
    Top = 9150
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 43
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 1
    ForeColor = &HC00000&
    Left = 1425
    Top = 1605
    Width = 1935
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 13
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
    ForeColor = &HC00000&
    Left = 4620
    Top = 1605
    Width = 585
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 4
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
  Begin CommonDialog CDLG
  End
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 1425
    Top = 2550
    Width = 600
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 3
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
    Index = 0
    ForeColor = &HC00000&
    Left = 1425
    Top = 1290
    Width = 3780
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin MSFlexGrid FGPoint
    Left = 14865
    Top = 2880
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 62
  End
  Begin MSFlexGrid FGrid
    Left = 6810
    Top = 5475
    Width = 5415
    Height = 1470
    TabIndex = 97
  End
  Begin MSFlexGrid FGBarCode
    Left = 7125
    Top = 7395
    Width = 6570
    Height = 1860
    Visible = 0   'False
    TabIndex = 99
  End
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 89
    ForeColor = &HC0&
    Left = 5250
    Top = 6915
    Width = 825
    Height = 225
    TabIndex = 166
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
    Caption = "Mobile No.(M)"
    Index = 88
    ForeColor = &HC00000&
    Left = 3255
    Top = 6930
    Width = 1305
    Height = 240
    TabIndex = 165
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
    Caption = "(Y)es/(N)o"
    Index = 87
    ForeColor = &HC0&
    Left = 2055
    Top = 6930
    Width = 825
    Height = 225
    TabIndex = 164
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
    Caption = "Cover (M)"
    Index = 86
    ForeColor = &HC00000&
    Left = 60
    Top = 6915
    Width = 900
    Height = 240
    TabIndex = 163
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
    Caption = "Free Item App"
    Index = 85
    ForeColor = &HC00000&
    Left = 60
    Top = 6600
    Width = 1350
    Height = 240
    TabIndex = 162
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
    Caption = "(Y)es/(N)o"
    Index = 84
    ForeColor = &HC0&
    Left = 2055
    Top = 6615
    Width = 825
    Height = 225
    TabIndex = 161
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
    Caption = "(Y)es/(N)o"
    Index = 83
    ForeColor = &HC0&
    Left = 5250
    Top = 3225
    Width = 825
    Height = 225
    TabIndex = 160
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
    Caption = "Label Printing"
    Index = 82
    ForeColor = &HC00000&
    Left = 3165
    Top = 3195
    Width = 1350
    Height = 240
    TabIndex = 159
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
    Caption = "(Y)es/(N)o"
    Index = 81
    ForeColor = &HC0&
    Left = 8430
    Top = 2220
    Width = 825
    Height = 225
    TabIndex = 155
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
    Caption = "Dis.% Print"
    Index = 73
    ForeColor = &HC00000&
    Left = 6660
    Top = 2250
    Width = 1005
    Height = 240
    TabIndex = 154
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
    Caption = "   Bar Code Printing (Partition App.On)"
    Index = 80
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 7065
    Top = 6945
    Width = 5520
    Height = 375
    Visible = 0   'False
    TabIndex = 147
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
    Caption = "Secheme Details"
    Index = 79
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 6615
    Top = 5100
    Width = 5805
    Height = 375
    TabIndex = 146
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
    Caption = "(Order Booking)"
    Index = 49
    ForeColor = &HC0&
    Left = 6870
    Top = 8535
    Width = 1470
    Height = 210
    Visible = 0   'False
    TabIndex = 145
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
    Caption = "(Order Booking)"
    Index = 50
    ForeColor = &HC0&
    Left = 6870
    Top = 8775
    Width = 1470
    Height = 210
    Visible = 0   'False
    TabIndex = 144
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
    Caption = "(Sale Bill Printing)"
    Index = 63
    ForeColor = &HC0&
    Left = 12450
    Top = 4470
    Width = 1500
    Height = 225
    TabIndex = 143
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
    Caption = "Header"
    Index = 9
    ForeColor = &HC00000&
    Left = 6660
    Top = 2550
    Width = 690
    Height = 240
    TabIndex = 142
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
    Caption = "Slogan2"
    Index = 8
    ForeColor = &HC00000&
    Left = 6660
    Top = 4440
    Width = 780
    Height = 240
    TabIndex = 141
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
    Caption = "Slogan1"
    Index = 7
    ForeColor = &HC00000&
    Left = 6660
    Top = 4125
    Width = 780
    Height = 240
    TabIndex = 140
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
    Caption = "Header2 "
    Index = 5
    ForeColor = &HC00000&
    Left = 6660
    Top = 3180
    Width = 855
    Height = 240
    TabIndex = 139
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
    Caption = "Header1"
    Index = 4
    ForeColor = &HC00000&
    Left = 6660
    Top = 2865
    Width = 795
    Height = 240
    TabIndex = 138
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
    Caption = "Header3 "
    Index = 55
    ForeColor = &HC00000&
    Left = 6660
    Top = 3495
    Width = 855
    Height = 240
    TabIndex = 137
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
    Caption = "Header4"
    Index = 56
    ForeColor = &HC00000&
    Left = 6660
    Top = 3810
    Width = 795
    Height = 240
    TabIndex = 136
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
    Caption = "Token Header"
    Index = 64
    ForeColor = &HC00000&
    Left = 6660
    Top = 4755
    Width = 1335
    Height = 240
    TabIndex = 135
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
    Caption = "(Y)es/(N)o"
    Index = 20
    ForeColor = &HC0&
    Left = 8430
    Top = 1290
    Width = 825
    Height = 225
    TabIndex = 134
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
    Caption = "Comp.Title"
    Index = 10
    ForeColor = &HC00000&
    Left = 6660
    Top = 1290
    Width = 1035
    Height = 240
    TabIndex = 133
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
  Begin Label Label3
    Caption = "Print Token Bef."
    Index = 40
    ForeColor = &HC00000&
    Left = 9450
    Top = 1305
    Width = 1485
    Height = 210
    TabIndex = 132
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
  Begin Label Label
    Caption = "(Y)es/(N)o"
    Index = 3
    BackColor = &H80000005&
    ForeColor = &HC0&
    Left = 11580
    Top = 1290
    Width = 825
    Height = 225
    TabIndex = 131
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Outlet Title"
    Index = 26
    ForeColor = &HC00000&
    Left = 6660
    Top = 1620
    Width = 1050
    Height = 240
    TabIndex = 130
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
    Caption = "(Y)es/(N)o"
    Index = 27
    ForeColor = &HC0&
    Left = 8430
    Top = 1620
    Width = 825
    Height = 225
    TabIndex = 129
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
  Begin Label Label
    Caption = "(Y)es/(N)o"
    Index = 0
    BackColor = &H80000005&
    ForeColor = &HC0&
    Left = 11580
    Top = 1605
    Width = 825
    Height = 225
    TabIndex = 128
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
    Appearance = 0 'Flat
  End
  Begin Label Label3
    Caption = "Print Token Aft."
    Index = 0
    ForeColor = &HC00000&
    Left = 9450
    Top = 1635
    Width = 1485
    Height = 210
    TabIndex = 127
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
  Begin Label Label3
    Caption = "Print Token No."
    Index = 1
    ForeColor = &HC00000&
    Left = 9450
    Top = 1950
    Width = 1425
    Height = 210
    TabIndex = 126
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
  Begin Label Label
    Caption = "(Y)es/(N)o"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &HC0&
    Left = 11580
    Top = 1920
    Width = 825
    Height = 225
    TabIndex = 125
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Sale Bill Printing Information"
    Index = 77
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 6615
    Top = 885
    Width = 5805
    Height = 375
    TabIndex = 124
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
    Caption = "Sale Bill Setup"
    Index = 76
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 105
    Top = 5235
    Width = 5145
    Height = 375
    TabIndex = 123
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
    Caption = "(Cen.KOT/O. B.)"
    Index = 40
    ForeColor = &HC0&
    Left = 5250
    Top = 4590
    Width = 1290
    Height = 225
    TabIndex = 122
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
    Caption = "(Cen.KOT/O. B.)"
    Index = 59
    ForeColor = &HC0&
    Left = 5250
    Top = 4290
    Width = 1290
    Height = 225
    TabIndex = 121
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
    Caption = "Printing Path"
    Index = 39
    ForeColor = &HC00000&
    Left = 135
    Top = 4605
    Width = 1245
    Height = 240
    TabIndex = 120
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
    Caption = "Printing Type"
    Index = 60
    ForeColor = &HC00000&
    Left = 135
    Top = 4290
    Width = 1275
    Height = 240
    TabIndex = 119
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
    Caption = "(Y)es/(N)o"
    Index = 37
    ForeColor = &HC0&
    Left = 5250
    Top = 3960
    Width = 825
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
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Cen.KOT or Order Booking Token Print"
    Index = 38
    ForeColor = &HC00000&
    Left = 150
    Top = 3945
    Width = 3690
    Height = 240
    TabIndex = 117
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
    Caption = "Kot Printing Information"
    Index = 75
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 105
    Top = 3540
    Width = 5145
    Height = 375
    TabIndex = 116
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
    Caption = "Phone No."
    Index = 6
    ForeColor = &HC00000&
    Left = 135
    Top = 1920
    Width = 990
    Height = 240
    TabIndex = 115
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
    Caption = "Tin No."
    Index = 36
    ForeColor = &HC00000&
    Left = 150
    Top = 2235
    Width = 675
    Height = 240
    TabIndex = 114
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
    Caption = "Outlet Details"
    Index = 74
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 105
    Top = 885
    Width = 5130
    Height = 375
    TabIndex = 113
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 15
    Top = 375
    Width = 150
    Height = 390
    TabIndex = 112
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 15.75
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
    Left = 405
    Top = 8820
    Width = 3330
    Height = 255
    TabIndex = 111
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 11.25
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
    Left = 405
    Top = 8535
    Width = 3375
    Height = 285
    TabIndex = 110
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Current TokenNo"
    Index = 41
    ForeColor = &HC00000&
    Left = 3000
    Top = 6300
    Width = 1605
    Height = 240
    TabIndex = 109
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
    Caption = "Current TokenNo"
    Index = 70
    ForeColor = &HC00000&
    Left = 2940
    Top = 4890
    Width = 1605
    Height = 240
    TabIndex = 108
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
    Caption = "Disc. Applicable"
    Index = 19
    ForeColor = &H0&
    Left = 10815
    Top = 7815
    Width = 1335
    Height = 240
    Visible = 0   'False
    TabIndex = 107
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
  Begin Label Label1
    Caption = "Split Bill"
    Index = 32
    ForeColor = &HC00000&
    Left = 135
    Top = 2865
    Width = 810
    Height = 240
    TabIndex = 106
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
    Caption = "No.Of KOT(s)"
    Index = 44
    ForeColor = &HC00000&
    Left = 135
    Top = 4890
    Width = 1200
    Height = 240
    TabIndex = 105
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
    Caption = "No.Of Bill(s)"
    Index = 45
    ForeColor = &HC00000&
    Left = 6660
    Top = 1935
    Width = 1110
    Height = 240
    TabIndex = 104
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
    Caption = "Bar Code App."
    Index = 66
    ForeColor = &HC00000&
    Left = 3165
    Top = 2880
    Width = 1380
    Height = 240
    TabIndex = 103
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
    Caption = "Auto Reset Token"
    Index = 67
    ForeColor = &HC00000&
    Left = 2940
    Top = 6615
    Width = 1665
    Height = 240
    TabIndex = 102
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
    Caption = "Direct Billing"
    Index = 72
    ForeColor = &H0&
    Left = 10695
    Top = 8925
    Width = 1050
    Height = 240
    Visible = 0   'False
    TabIndex = 95
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 71
    ForeColor = &H0&
    Left = 13080
    Top = 8880
    Width = 900
    Height = 195
    Visible = 0   'False
    TabIndex = 94
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "(KOT)"
    Index = 69
    ForeColor = &HC0&
    Left = 5250
    Top = 4890
    Width = 480
    Height = 225
    TabIndex = 92
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
    Caption = "(Y)es/(N)o"
    Index = 68
    ForeColor = &H0&
    Left = 12240
    Top = 7695
    Width = 900
    Height = 195
    Visible = 0   'False
    TabIndex = 91
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 65
    ForeColor = &HC0&
    Left = 5250
    Top = 2895
    Width = 825
    Height = 225
    TabIndex = 90
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
    Caption = "(Y)es/(N)o"
    Index = 62
    ForeColor = &H0&
    Left = 13200
    Top = 8640
    Width = 900
    Height = 195
    Visible = 0   'False
    TabIndex = 89
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "W. Scale App."
    Index = 61
    ForeColor = &H0&
    Left = 10695
    Top = 8655
    Width = 1215
    Height = 240
    Visible = 0   'False
    TabIndex = 88
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
  Begin Label Label1
    Caption = "Auto Settlement"
    Index = 58
    ForeColor = &HC00000&
    Left = 3060
    Top = 5670
    Width = 1530
    Height = 240
    TabIndex = 85
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
    Caption = "(Cash)"
    Index = 57
    ForeColor = &HC0&
    Left = 5250
    Top = 5655
    Width = 555
    Height = 225
    TabIndex = 84
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
    Caption = "Book Of Bills"
    Index = 54
    ForeColor = &H0&
    Left = 10695
    Top = 8385
    Width = 1050
    Height = 240
    Visible = 0   'False
    TabIndex = 83
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
  Begin Label Label1
    Caption = "(Book No.)"
    Index = 53
    ForeColor = &H0&
    Left = 13320
    Top = 8400
    Width = 870
    Height = 195
    Visible = 0   'False
    TabIndex = 82
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "Printing"
    Index = 52
    ForeColor = &HC0&
    Left = 5250
    Top = 5970
    Width = 660
    Height = 225
    TabIndex = 81
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
    Caption = "Print On Save"
    Index = 51
    ForeColor = &HC00000&
    Left = 3255
    Top = 5970
    Width = 1320
    Height = 240
    TabIndex = 80
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
    Caption = "Printing"
    Index = 46
    ForeColor = &HC0&
    Left = 5085
    Top = 8820
    Width = 750
    Height = 240
    Visible = 0   'False
    TabIndex = 79
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
    Caption = "Printing"
    Index = 43
    ForeColor = &HC0&
    Left = 5985
    Top = 8790
    Width = 750
    Height = 240
    Visible = 0   'False
    TabIndex = 78
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
    Caption = "(Order/Sale Bill)"
    Index = 42
    ForeColor = &HC0&
    Left = 5250
    Top = 6270
    Width = 1335
    Height = 225
    TabIndex = 77
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
    Caption = "(Y)es/(N)o"
    Index = 35
    ForeColor = &HC0&
    Left = 2055
    Top = 6300
    Width = 825
    Height = 225
    TabIndex = 76
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
    Caption = "Customer Info."
    Index = 34
    ForeColor = &HC00000&
    Left = 60
    Top = 6285
    Width = 1380
    Height = 240
    TabIndex = 75
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
    Caption = "(Y)es/(N)o"
    Index = 33
    ForeColor = &HC0&
    Left = 2055
    Top = 2880
    Width = 825
    Height = 225
    TabIndex = 74
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
    Caption = "(Y)es/(N)o"
    Index = 31
    ForeColor = &H0&
    Left = 13200
    Top = 9120
    Width = 900
    Height = 195
    Visible = 0   'False
    TabIndex = 73
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "Party Name"
    Index = 30
    ForeColor = &HC00000&
    Left = 135
    Top = 5655
    Width = 1110
    Height = 240
    TabIndex = 72
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
    Caption = "(Y)es/(N)o"
    Index = 29
    ForeColor = &HC0&
    Left = 2055
    Top = 5970
    Width = 825
    Height = 225
    TabIndex = 71
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
    Caption = "Member Info."
    Index = 28
    ForeColor = &HC00000&
    Left = 135
    Top = 5970
    Width = 1260
    Height = 240
    TabIndex = 70
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
    Caption = "(Y)es/(N)o"
    Index = 25
    ForeColor = &HC0&
    Left = 2055
    Top = 5655
    Width = 825
    Height = 225
    TabIndex = 69
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
    Caption = "Order Booking"
    Index = 24
    ForeColor = &HC00000&
    Left = 3165
    Top = 2565
    Width = 1380
    Height = 240
    TabIndex = 68
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
    Caption = "Round Off"
    Index = 23
    ForeColor = &H0&
    Left = 0
    Top = 0
    Width = 855
    Height = 240
    TabIndex = 67
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
  Begin Label Label1
    Caption = "Round Off"
    Index = 22
    ForeColor = &H0&
    Left = 10575
    Top = 8100
    Width = 855
    Height = 240
    Visible = 0   'False
    TabIndex = 58
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 21
    ForeColor = &H0&
    Left = 13080
    Top = 8100
    Width = 900
    Height = 195
    Visible = 0   'False
    TabIndex = 57
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 17
    ForeColor = &HC0&
    Left = 2055
    Top = 2550
    Width = 825
    Height = 225
    TabIndex = 56
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
    Caption = "Rate Incl."
    Index = 16
    ForeColor = &HC00000&
    Left = 135
    Top = 3180
    Width = 900
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
    Caption = "(Y)es/(N)o"
    Index = 11
    ForeColor = &HC0&
    Left = 2055
    Top = 3195
    Width = 825
    Height = 225
    TabIndex = 54
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
    Caption = "Link To FOM"
    Index = 2
    ForeColor = &H0&
    Left = 10815
    Top = 9165
    Width = 1065
    Height = 240
    Visible = 0   'False
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 1
    ForeColor = &HC0&
    Left = 5250
    Top = 2565
    Width = 825
    Height = 225
    TabIndex = 52
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
    Caption = "Outlet Nature"
    Index = 12
    ForeColor = &HC00000&
    Left = 135
    Top = 1620
    Width = 1260
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
  End
  Begin Label Label1
    Caption = "Short Name"
    Index = 15
    ForeColor = &HC00000&
    Left = 3450
    Top = 1620
    Width = 1125
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
  End
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 18
    ForeColor = &HC0&
    Left = 5250
    Top = 6600
    Width = 825
    Height = 225
    TabIndex = 49
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
    Caption = "KOT"
    Index = 3
    ForeColor = &HC00000&
    Left = 135
    Top = 2550
    Width = 360
    Height = 210
    TabIndex = 48
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
    Caption = "Outlet Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 135
    Top = 1305
    Width = 1185
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
  End
End

Attribute VB_Name = "OutLetMast"

Private global_72 As Integer
Private global_104 As Integer
Private global_52 As Integer

Private Sub DGHelp_UnknownEvent_9 'F36084
  'Data Table: 51C244
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F35F7B: Me.DGHelp.Visible = False
  loc_F35F9A: If (Me.RecordCount > 0) Then
  loc_F35FD9:   Set var_B4 = Me.Txt
  loc_F35FDF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F35FE7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3601A:   var_B0 = Me.Fields.Item("Name")
  loc_F36039:   Set var_B4 = Me.Txt
  loc_F3603F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F36047:   var_B8.Text = CStr(var_B0.Value)
  loc_F3605D: End If
  loc_F36068: Set var_A8 = Me.Txt
  loc_F3606E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F36076: var_B0.SetFocus
  loc_F36082: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6D768
  'Data Table: 51C244
  loc_E6D726: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E6D73D: Set var_8C = Me.FGPoint
  loc_E6D759: Proc_6_138_106D6F8(Me.DGHelp, global_60, CInt(0))
  loc_E6D767: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F59B1C
  'Data Table: 51C244
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F59A3E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F59A45:   Set var_A8 = Me.ListView
  loc_F59A8F:   Set var_C0 = Me.Txt
  loc_F59A95:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F59A9D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F59ABD: End If
  loc_F59AC9: Me.FrmList.Visible = False
  loc_F59AF9: Set var_9C = Me.Txt
  loc_F59AFF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F59B07: var_A8.SetFocus
  loc_F59B1B: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12C18CC
  'Data Table: 51C244
  Dim var_8C As Variant
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim var_88 As MSFlexGrid
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_90 As Variant
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim Me As Variant
  Dim var_108 As TextBox
  Dim var_14C As Long
  loc_12C1292: Set var_88 = Me.TxtGrid
  loc_12C1298: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_12C12A6: Proc_6_74_E226B0(var_8C)
  loc_12C12B2: Call Proc_70_59_F1BE04(var_8C)
  loc_12C12C6: Set var_88 = Me.TxtGrid
  loc_12C12CC: Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_12C12D4: var_8C.MaxLength = 0
  loc_12C12E3: var_92 = Index
  loc_12C12EC: If (var_92 = 0) Then
  loc_12C1305:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_12C1320:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C1329:   Set var_8C = Me.FGrid
  loc_12C135F:   Set var_108 = Me.TxtGrid
  loc_12C1365:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12C136D:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_12C139E:   var_114 = CLng(Me.FGrid.Col)
  loc_12C13AE:   If (var_114 = CLng(2)) Then
  loc_12C13C0:     Set var_88 = Me.TxtGrid
  loc_12C13C6:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H32)
  loc_12C13CE:     var_8C.MaxLength = var_114
  loc_12C13E4:     Set global_96 = New 
  loc_12C13F6:     Me.Recordset15.CursorLocation = 3
  loc_12C1420:     var_C4 = CVar("Select Code,Name From SchemeMast Where ISNULL(Active,'')='Y' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_12C142A:     Me.Open var_C4, CVar(MemVar_1F92044), 2
  loc_12C143E:     CVarUnk
  loc_12C1443:     VerifyVarObj
  loc_12C1449:     Set var_88 = Me.DGSch
  loc_12C144F:     LateIdStAd
  loc_12C1470:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_118, Me.TxtGrid, global_96)
  loc_12C1478:     3 = var_8C.Left
  loc_12C148F:     Me.DGSch.Left = CVar(var_118)
  loc_12C14AA:     Set var_90 = Me.TxtGrid
  loc_12C14B0:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_11C)
  loc_12C14B8:     -1 = var_108.Height
  loc_12C14CA:     Set var_88 = Me.TxtGrid
  loc_12C14D0:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_118)
  loc_12C14D8:     var_A4 = var_8C.Top
  loc_12C14E4:     var_A4 = CVar((var_118 + var_11C)) 'Single
  loc_12C14ED:     Set var_10C = Me.DGSch
  loc_12C14F3:     var_10C.Top = var_A4
  loc_12C1510:     Set var_8C = Me.FGPoint
  loc_12C1528:     Proc_6_137_1193554(Me.DGSch, global_96, Index)
  loc_12C1549:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12C1551:     var_E4 = CVar(CLng(1)) 'Long
  loc_12C1595:     Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_12C15DB:     var_D4 = Me.FGrid.TextMatrix)
  loc_12C15FB:     global_100 = CStr(Trim(CVar(CStr(var_D4))))
  loc_12C162B:     If (Me.RecordCount > 0) Then
  loc_12C1639:       Set var_8C = Me.FGPoint
  loc_12C1651:       Proc_6_137_1193554(Me.DGSch, global_96, Index, var_8C, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)))
  loc_12C165F:     End If
  loc_12C16A0:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12C16A3:       Exit Sub
  loc_12C16A4:     End If
  loc_12C16AD:     CVarUnk
  loc_12C16B2:     VerifyVarObj
  loc_12C16B8:     Set var_88 = Me.DGSch
  loc_12C16BE:     LateIdStAd
  loc_12C16CF:   Else
  loc_12C16D6:     If (var_114 = CLng(3)) Then
  loc_12C16EE:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 5, Me.TxtGrid, global_96, var_134)
  loc_12C16F6:       var_8C.MaxLength = var_D4
  loc_12C1702:     End If
  loc_12C1702:   End If
  loc_12C1705: Else
  loc_12C170B:   If (var_92 = 1) Then
  loc_12C1724:     Me.FGBarCode.CellBackColor = CVar(CLng(global_108))
  loc_12C1757:     var_E4 = CVar(CLng(Me.FGBarCode.Col)) 'Long
  loc_12C177E:     Set var_108 = Me.TxtGrid
  loc_12C1784:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGBarCode.TextMatrix)), var_E4, CVar(CLng(Me.FGBarCode.Row)))
  loc_12C178C:     var_10C.Tag = var_E4
  loc_12C17BD:     var_14C = CLng(Me.FGBarCode.Col)
  loc_12C17CD:     If (var_14C = CLng(1)) Then
  loc_12C17DD:       ReDim var_150(0 To 3)
  loc_12C17F4:       var_150(0) = "Item"
  loc_12C1803:       var_150(1) = "Qty"
  loc_12C1812:       var_150(2) = "Rate"
  loc_12C1821:       var_150(3) = "Amount"
  loc_12C1838:       global_76 = Array(var_150)
  loc_12C185E:       Set var_8C = Me.TxtGrid
  loc_12C1878:       Set global_92 = Proc_6_66_EFF8FC(Me.ListView1, var_8C, Index, global_76, 4)
  loc_12C188C:     Else
  loc_12C1893:       If Not (var_14C = CLng(2)) Then
  loc_12C189D:         If (var_14C = CLng(3)) Then
  loc_12C18A0:         End If
  loc_12C18AF:         Set var_88 = Me.TxtGrid
  loc_12C18B5:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 2, global_76)
  loc_12C18BD:         var_8C.MaxLength = var_14C
  loc_12C18C9:       End If
  loc_12C18C9:     End If
  loc_12C18C9:   End If
  loc_12C18C9: End If
  loc_12C18C9: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12B520C
  'Data Table: 51C244
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_D0 As Long
  Dim var_C0 As TextBox
  Dim var_DC As TextBox
  loc_12B4BF3: var_86 = Shift
  loc_12B4C02: If (KeyCode = 0) Then
  loc_12B4C0F:   If (CLng(Shift) = &H1B) Then
  loc_12B4C1F:     Set var_8C = Me.TxtGrid
  loc_12B4C25:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_12B4C2D:     var_88 = var_90.Tag
  loc_12B4C3F:     Set var_98 = Me.TxtGrid
  loc_12B4C45:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12B4C4D:     var_9C.Text = var_94
  loc_12B4C69:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12B4C6E:     Call Proc_70_59_F1BE04(arg_14)
  loc_12B4C77:     Set var_8C = Me.FGrid
  loc_12B4C94:     Set var_8C = Me.TxtGrid
  loc_12B4C9A:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12B4CA2:     var_90.Visible = FGrid.DispID_8001
  loc_12B4CAE:     Exit Sub
  loc_12B4CAF:   End If
  loc_12B4CC2:   var_B0 = CLng(Me.FGrid.Col)
  loc_12B4CD2:   If (var_B0 = CLng(2)) Then
  loc_12B4CE0:     Set var_C0 = Me.TxtGrid
  loc_12B4CF2:     Set var_9C = Me.FGPoint
  loc_12B4CFD:     Set var_98 = Nothing
  loc_12B4D2B:     Proc_6_69_134A198(Me.DGSch, var_C0, KeyCode, global_96, Shift, &HFF)
  loc_12B4D4A:     var_C8 = Me.RecordCount
  loc_12B4D9A:     If ((var_C8 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_12B4DA1:       Set var_98 = Me.DGSch
  loc_12B4DC0:       Proc_6_138_106D6F8(var_98, global_96, KeyCode, Me.FGPoint, 1)
  loc_12B4DCE:     End If
  loc_12B4DD8:     If (CLng(Shift) = &HD) Then
  loc_12B4DE1:       Call Proc_70_63_13288E4(KeyCode, var_B2, var_98, var_9C)
  loc_12B4DEC:       If (var_B2 = &HFF) Then
  loc_12B4E32:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_104, 4)
  loc_12B4E42:       End If
  loc_12B4E42:     End If
  loc_12B4E45:   Else
  loc_12B4E4C:     If (var_B0 = CLng(3)) Then
  loc_12B4E8F:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_104 = &HFF))) Then
  loc_12B4E98:         Call Proc_70_63_13288E4(KeyCode, var_B2, 0, 0)
  loc_12B4EA3:         If (var_B2 = &HFF) Then
  loc_12B4EB1:           Set var_9C = Me.TxtGrid
  loc_12B4EDA:           Set var_90 = var_9C
  loc_12B4EE9:           Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_104, 4, 0)
  loc_12B4EF9:         End If
  loc_12B4EF9:       End If
  loc_12B4EF9:     End If
  loc_12B4EF9:   End If
  loc_12B4EFC: Else
  loc_12B4F02:   If (var_88 = 1) Then
  loc_12B4F0F:     If (CLng(Shift) = &H1B) Then
  loc_12B4F1F:       Set var_8C = Me.TxtGrid
  loc_12B4F25:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94, 0, 0)
  loc_12B4F2D:       0 = var_90.Tag
  loc_12B4F3F:       Set var_98 = Me.TxtGrid
  loc_12B4F45:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_94)
  loc_12B4F4D:       var_9C.Text = 0
  loc_12B4F69:       Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_12B4F6E:       Call Proc_70_59_F1BE04(arg_14, var_B0)
  loc_12B4F77:       Set var_8C = Me.FGBarCode
  loc_12B4F94:       Set var_8C = Me.TxtGrid
  loc_12B4F9A:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12B4FA2:       var_90.Visible = FGBarCode.DispID_8001
  loc_12B4FAE:       Exit Sub
  loc_12B4FAF:     End If
  loc_12B4FD2:     If (CLng(Me.FGBarCode.Col) = CLng(1)) Then
  loc_12B4FF7:       Set var_8C = Me.TxtGrid
  loc_12B4FFD:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_C8)
  loc_12B5005:       var_D0 = var_90.Left
  loc_12B5017:       Set var_98 = Me.TxtGrid
  loc_12B501D:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12B5037:       Set var_BC = Me.TxtGrid
  loc_12B503D:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0)
  loc_12B5057:       Set var_C4 = Me.TxtGrid
  loc_12B505D:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_DC)
  loc_12B5065:       var_E0 = var_DC.Width
  loc_12B50B0:       Proc_6_114_11A290C(Me.FrmList1, Me.ListView1, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12B50DE:       If (CLng(Shift) = &HD) Then
  loc_12B50E7:         Call Proc_70_63_13288E4(KeyCode, var_B2, CInt(var_C8), CInt(((var_9C.Top + var_C0.Height) + CDbl(&H19))))
  loc_12B50F2:         If (var_B2 = &HFF) Then
  loc_12B5138:           Proc_6_62_1253BC4(Me.FGBarCode, Me.TxtGrid, KeyCode, Shift, global_104, 4)
  loc_12B5148:         End If
  loc_12B5148:       End If
  loc_12B514B:     Else
  loc_12B5152:       If Not (var_D0 = CLng(2)) Then
  loc_12B515C:         If (var_D0 = CLng(3)) Then
  loc_12B515F:         End If
  loc_12B519F:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_104 = &HFF))) Then
  loc_12B51A8:           Call Proc_70_63_13288E4(KeyCode, var_B2, 0, 0)
  loc_12B51B3:           If (var_B2 = &HFF) Then
  loc_12B51F9:             Proc_6_62_1253BC4(Me.FGBarCode, Me.TxtGrid, KeyCode, Shift, global_104, 4, 0)
  loc_12B5209:           End If
  loc_12B5209:         End If
  loc_12B5209:       End If
  loc_12B5209:     End If
  loc_12B5209:   End If
  loc_12B5209: End If
  loc_12B5209: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'FA19E8
  'Data Table: 51C244
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B8 As Long
  loc_FA186B: Proc_6_58_E054C0(arg_10)
  loc_FA1873: var_86 = KeyAscii
  loc_FA187C: If (var_86 = 0) Then
  loc_FA1892:   var_A0 = CLng(Me.FGrid.Col)
  loc_FA18A2:   If (var_A0 = CLng(2)) Then
  loc_FA18C1:     If (CBool(Me.DGSch.Visible) = &HFF) Then
  loc_FA18D3:       var_A4 = "Name"
  loc_FA18EE:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_96, arg_10)
  loc_FA1908:       Set var_AC = Me.FGPoint
  loc_FA1920:       Proc_6_138_106D6F8(Me.DGSch, global_96, KeyAscii, var_AC)
  loc_FA192E:     End If
  loc_FA1931:   Else
  loc_FA1938:     If (var_A0 = CLng(3)) Then
  loc_FA1945:       Set var_8C = Me.TxtGrid
  loc_FA194B:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_FA1966:       Proc_6_42_129A86C(var_AC, arg_10, 2, 2)
  loc_FA1972:     End If
  loc_FA1972:   End If
  loc_FA1975: Else
  loc_FA197B:   If (var_86 = 1) Then
  loc_FA1991:     var_B8 = CLng(Me.FGBarCode.Col)
  loc_FA19A1:     If Not (var_B8 = CLng(2)) Then
  loc_FA19AB:       If (var_B8 = CLng(3)) Then
  loc_FA19AE:       End If
  loc_FA19B8:       Set var_8C = Me.TxtGrid
  loc_FA19BE:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_B8)
  loc_FA19D9:       Proc_6_42_129A86C(var_AC, arg_10, 2, 0)
  loc_FA19E5:     End If
  loc_FA19E5:   End If
  loc_FA19E5: End If
  loc_FA19E5: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10EDAEC
  'Data Table: 51C244
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_184 As Long
  loc_10ED7E0: On Error Goto loc_10EDAE3
  loc_10ED7E6: var_86 = KeyCode
  loc_10ED7EF: If (var_86 = 0) Then
  loc_10ED805:   var_A0 = CLng(Me.FGrid.Col)
  loc_10ED815:   If (var_A0 = CLng(2)) Then
  loc_10ED83B:     If ((Shift <> &HD) And (CBool(Me.DGSch.Visible) = 0)) Then
  loc_10ED84C:       Call TxtGrid_KeyDown(KeyCode, global_72)
  loc_10ED855:       Set var_AC = Me.TxtGrid
  loc_10ED860:       var_A8 = "Name"
  loc_10ED87B:       Proc_6_89_146F1AC(var_AC, KeyCode, global_96, Shift, var_A8)
  loc_10ED88A:     End If
  loc_10ED88D:   Else
  loc_10ED894:     If (var_A0 = CLng(3)) Then
  loc_10ED8A4:       Set var_8C = Me.TxtGrid
  loc_10ED8AA:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, &HFF)
  loc_10ED8B2:       0 = var_AC.Text
  loc_10ED8D5:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10ED8ED:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10ED91A:       var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_10ED922:       Set var_178 = Me.FGrid
  loc_10ED928:       LateIdCallSt
  loc_10ED94F:     End If
  loc_10ED94F:   End If
  loc_10ED952: Else
  loc_10ED958:   If (var_86 = 1) Then
  loc_10ED96E:     var_184 = CLng(Me.FGBarCode.Col)
  loc_10ED97E:     If (var_184 = CLng(1)) Then
  loc_10ED9A3:       If ((Shift <> &HD) And (Me.FrmList1.Visible = 0)) Then
  loc_10ED9B4:         Call TxtGrid_KeyDown(KeyCode, global_72)
  loc_10ED9B9:       End If
  loc_10ED9D4:       If (Me.FrmList1.Visible = &HFF) Then
  loc_10ED9F4:         Set var_AC = Me.TxtGrid
  loc_10EDA03:         Proc_6_64_F28E58(Me.ListView1, var_AC, KeyCode, Shift, global_92, 0, var_184, var_178)
  loc_10EDA13:       End If
  loc_10EDA16:     Else
  loc_10EDA1D:       If Not (var_184 = CLng(2)) Then
  loc_10EDA27:         If (var_184 = CLng(3)) Then
  loc_10EDA2A:         End If
  loc_10EDA37:         Set var_8C = Me.TxtGrid
  loc_10EDA3D:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, var_164, 1, 1)
  loc_10EDA45:         var_144 = var_AC.Text
  loc_10EDA68:         var_124 = CVar(CLng(Me.FGBarCode.Row)) 'Long
  loc_10EDA80:         var_144 = CVar(CLng(Me.FGBarCode.Col)) 'Long
  loc_10EDAAD:         var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0"))) 'String
  loc_10EDAB5:         Set var_178 = Me.FGBarCode
  loc_10EDABB:         LateIdCallSt
  loc_10EDAE2:       End If
  loc_10EDAE2:     End If
  loc_10EDAE2:   End If
  loc_10EDAE2: End If
  loc_10EDAE2: Exit Sub
  loc_10EDAE3: ' Referenced from: 10ED7E0
  loc_10EDAE3: Proc_6_60_E62BC4(var_178, var_164, 1, 1, var_144, var_124)
  loc_10EDAE8: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E0AB68
  'Data Table: 51C244
  Dim arg_10 As Integer
  loc_E0AB5A: Call Proc_70_63_13288E4(Cancel)
  loc_E0AB63: arg_10 = Not(var_86)
  loc_E0AB66: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '11F9974
  'Data Table: 51C244
  Dim var_8C As Variant
  Dim unk_51C266 As Connection15
  Dim var_88 As Recordset15
  Dim var_140 As Variant
  Dim var_238 As Variant
  loc_11F9504: On Error Goto loc_11F996D
  loc_11F9514: Me.LblUser.Caption = vbNullString
  loc_11F9523: Set var_8C = Me.LblLDt
  loc_11F9529: var_8C.Caption = vbNullString
  loc_11F9547: unk_51C266.Execute "Select Count(*) from Depart where OutletYN='Y'", var_AC, -1
  loc_11F9552: Set var_88 = var_8C
  loc_11F958D: var_EC = Left(MemVar_1F92130, &HA)
  loc_11F9598: var_FC = Ucase(var_EC)
  loc_11F964B: var_238 = (Left(MemVar_1F92130, 9) = "RAVE@MOTI") Or (var_FC = "SUTTHIMANI") And (var_88.Fields.Item(0).Value <= 15) Or (Ucase(Left(MemVar_1F92130, &HA)) = "FOOD COURT") And (var_88.Fields.Item(0).Value <= 11)
  loc_11F966D: If CBool(var_238) Then
  loc_11F9670:   GoTo loc_11F96DC
  loc_11F9673: End If
  loc_11F968D: var_140 = var_88.Fields.Item(0)
  loc_11F96AF: If (var_140.Value >= 9) Then
  loc_11F96CB:   MsgBox("Contact to your S/W Vendor", 0, var_CC, var_EC, var_FC)
  loc_11F96DB:   Exit Sub
  loc_11F96DC:   ' Referenced from: 11F9670
  loc_11F96DC: End If
  loc_11F96E1: Set var_88 = Nothing
  loc_11F96F0: Set var_8C = Me
  loc_11F9707: Call Proc_70_58_EBAEB4(Proc_5_1_100CB50("ADD", var_8C), global_64)
  loc_11F9712: Call Proc_70_56_FFCD44(var_8C)
  loc_11F9725: Set var_8C = Me.Txt
  loc_11F972B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H12), var_140)
  loc_11F9733: var_140.Text = "No"
  loc_11F974D: Set var_8C = Me.Txt
  loc_11F9753: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H13), var_140)
  loc_11F975B: var_140.Text = "No"
  loc_11F9775: Set var_8C = Me.Txt
  loc_11F977B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H10), var_140)
  loc_11F9783: var_140.Text = "No"
  loc_11F979D: Set var_8C = Me.Txt
  loc_11F97A3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HC), var_140)
  loc_11F97AB: var_140.Text = "No"
  loc_11F97C5: Set var_8C = Me.Txt
  loc_11F97CB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HE), var_140)
  loc_11F97D3: var_140.Text = "No"
  loc_11F97ED: Set var_8C = Me.Txt
  loc_11F97F3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HB), var_140)
  loc_11F97FB: var_140.Text = "Yes"
  loc_11F9815: Set var_8C = Me.Txt
  loc_11F981B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H2D), var_140)
  loc_11F9823: var_140.Text = "Yes"
  loc_11F983D: Set var_8C = Me.Txt
  loc_11F9843: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H28), var_140)
  loc_11F984B: var_140.Text = "No"
  loc_11F9865: Set var_8C = Me.Txt
  loc_11F986B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H2E), var_140)
  loc_11F9873: var_140.Text = "No"
  loc_11F988A: Set var_8C = Me.Txt
  loc_11F9890: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_11F9898: var_140.SetFocus
  loc_11F98B2: Set var_8C = Me.Txt
  loc_11F98B8: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H19), var_140)
  loc_11F98C0: var_140.Text = "0"
  loc_11F98DA: Set var_8C = Me.Txt
  loc_11F98E0: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H2A), var_140)
  loc_11F98E8: var_140.Text = "0"
  loc_11F9902: Set var_8C = Me.Txt
  loc_11F9908: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1A), var_140)
  loc_11F9910: var_140.Text = "1"
  loc_11F992A: Set var_8C = Me.Txt
  loc_11F9930: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1B), var_140)
  loc_11F9938: var_140.Text = "1"
  loc_11F9952: Set var_8C = Me.Txt
  loc_11F9958: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H20), var_140)
  loc_11F9960: var_140.Text = "0"
  loc_11F996C: Exit Sub
  loc_11F996D: ' Referenced from: 11F9504
  loc_11F996D: Proc_6_60_E62BC4(var_140)
  loc_11F9972: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9E388
  'Data Table: 51C244
  loc_E9E310: On Error Goto loc_E9E381
  loc_E9E34A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9E370:   Call Proc_70_58_EBAEB4(Proc_5_1_100CB50("INI", Me))
  loc_E9E37B:   Call Proc_70_57_178749C(global_64)
  loc_E9E380: End If
  loc_E9E380: Exit Sub
  loc_E9E381: ' Referenced from: E9E310
  loc_E9E381: Proc_6_60_E62BC4()
  loc_E9E386: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '14F1850
  'Data Table: 51C244
  Dim Me As Recordset15
  Dim var_A4 As Fields15
  Dim var_B8 As Variant
  Dim var_C0 As String
  Dim var_D4 As String
  Dim var_DC As String
  Dim unk_51C266 As Connection15
  Dim var_E4 As Recordset15
  Dim var_E8 As Variant
  Dim var_FC As Variant
  Dim var_BC As String
  Dim var_10C As Variant
  Dim var_14C As Boolean
  Dim var_164 As Fields15
  Dim var_168 As Field20
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_D0 As Variant
  loc_14F0A2C: On Error Goto loc_14F1801
  loc_14F0A3D: If (Proc_183_56_FE8818(global_64) = &HFF) Then
  loc_14F0A40:   Exit Sub
  loc_14F0A41: End If
  loc_14F0A73: var_DC = "Item Group"
  loc_14F0ABB: If (Proc_6_108_1010FEC(MemVar_1F92044, "ItemGrp", "RestCode", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_14F0ABE:   Exit Sub
  loc_14F0ABF: End If
  loc_14F0ADC: var_B8 = Me.Fields.Item("SearchCode")
  loc_14F0AE4: var_D0 = var_B8.Value
  loc_14F0AF1: var_DC = "Menu Item"
  loc_14F0B13: var_BC = "ItemMast"
  loc_14F0B39: If (Proc_6_108_1010FEC(MemVar_1F92044, var_BC, "RestCode", CStr(var_D0), 0) = 0) Then
  loc_14F0B3C:   Exit Sub
  loc_14F0B3D: End If
  loc_14F0B6D: Set var_A4 = Me.Txt
  loc_14F0B73: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "B", "Select Count(*) From Stock Where VType='", var_D0, -1)
  loc_14F0B7B: var_E4 = var_B8.Text
  loc_14F0B98: unk_51C266.Execute 0 & var_E8 & var_BC & "'", var_FC, var_10C
  loc_14F0BA0: var_DC = var_E4.Fields
  loc_14F0BA8:  = var_E8.Item(0)
  loc_14F0BB0:  = var_FC.Value
  loc_14F0BDF: If (var_10C > 0) Then
  loc_14F0C03:   Set var_A4 = Me.Txt
  loc_14F0C09:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "B")
  loc_14F0C11:   "Select V_Type,V_No From Stock Where VType='" = var_B8.Text
  loc_14F0C1E:   var_D4 = -1 & var_D0 & var_BC
  loc_14F0C2E:   unk_51C266.Execute 0 & var_E8 & var_BC & "'", var_E4, 
  loc_14F0C6D:   var_B8 = var_E4.Fields.Item(1)
  loc_14F0C75:   var_D0 = var_B8.Value
  loc_14F0CA9:   var_C0 = CStr(var_D0)
  loc_14F0CB1:   var_10C = CVar("Can't delete Department!" & vbCrLf & "Records found in Sale Bill" & "RefNo:" & var_C0) 'String
  loc_14F0CB4:   MsgBox(var_10C, &H40, "HMS", var_13C, var_15C)
  loc_14F0CDA:   Exit Sub
  loc_14F0CDB: End If
  loc_14F0CE9: Set var_A4 = Me.Txt
  loc_14F0CEF: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(2), var_B8)
  loc_14F0CF7: var_BC = var_B8.Text
  loc_14F0D04: var_14C = (var_BC = "Yes")
  loc_14F0D38: Set var_E4 = Me.Txt
  loc_14F0D3E: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_E8, var_C0, "K", "Select Count(*) From Stock Where VType='", var_D0, -1)
  loc_14F0D46: var_FC = var_E8.Text
  loc_14F0D63: unk_51C266.Execute 0 & var_164 & var_C0 & "'", var_168, var_10C
  loc_14F0D6B: var_14C = var_FC.Fields
  loc_14F0D73:  = var_164.Item()
  loc_14F0D7B:  = var_168.Value
  loc_14F0D8D: var_13C =  And (var_10C > 0)
  loc_14F0DBA: If CBool(var_13C) Then
  loc_14F0DDE:   Set var_A4 = Me.Txt
  loc_14F0DE4:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "K")
  loc_14F0DEC:   "Select V_Type,V_No From Stock Where VType='" = var_B8.Text
  loc_14F0DF9:   var_D4 = -1 & var_D0 & var_BC
  loc_14F0E09:   unk_51C266.Execute var_164 & var_D0 & var_BC & "'", var_E4, 
  loc_14F0E48:   var_B8 = var_E4.Fields.Item(1)
  loc_14F0E50:   var_D0 = var_B8.Value
  loc_14F0E60:   var_12C = "HMS"
  loc_14F0E72:   var_BC = "Can't delete Department!" & vbCrLf
  loc_14F0E8F:   MsgBox(CVar(var_BC & "Records found in KOT" & "RefNo:" & CStr(var_D0)), &H40, var_12C, var_13C, var_15C)
  loc_14F0EB5:   Exit Sub
  loc_14F0EB6: End If
  loc_14F0EE6: Set var_A4 = Me.Txt
  loc_14F0EEC: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "B", "Select Count(*) From SundryType Where V_Type='", var_D0)
  loc_14F0EF4: -1 = var_B8.Text
  loc_14F0F11: unk_51C266.Execute var_E8 & var_E4 & var_BC & "'", 0, var_FC
  loc_14F0F21:  = var_E8.Item()
  loc_14F0F29:  = var_FC.Value
  loc_14F0F58: If (var_E4.Fields > 0) Then
  loc_14F0F9B:   var_D0 = CVar("Can't delete Department!" & vbCrLf & vbCrLf & "Records found in Voucher wise Sundry Setting" & vbCrLf & vbCrLf & "Please delete settings first!") 'String
  loc_14F0F9E:   MsgBox(var_D0, &H40, "HMS", var_12C, var_13C)
  loc_14F0FBB:   Exit Sub
  loc_14F0FBC: End If
  loc_14F0FF3: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_12C, var_13C) = 6) Then
  loc_14F0FFF:   unk_51C266.BeginTrans var_D8
  loc_14F1015:   var_94 = Me.Bookmark 'Variant
  loc_14F1027:   Set var_A4 = Me.Txt
  loc_14F102D:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_B8)
  loc_14F104C:   If (var_B8.Text = "Banquet") Then
  loc_14F10A5:     unk_51C266.Execute CStr("Delete From Depart Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_13C, -1
  loc_14F10F8:     var_D0 = Me.Fields.Item("SearchCode").Value
  loc_14F1117:     unk_51C266.Execute CStr("Delete From RevMast Where Code='" & var_D0 & "'"), var_13C, -1
  loc_14F1147:     var_BC = "Delete From RevMast Where NAme='BAN - ROUND-OFF" & "'"
  loc_14F1150:     unk_51C266.Execute CStr("Delete From RevMast Where Code='" & var_D0 & "'"), var_D0, -1
  loc_14F1172:     var_BC = "Delete From RevMast Where NAme='BAN - DISCOUNT" & "'"
  loc_14F117B:     unk_51C266.Execute CStr("Delete From RevMast Where Code='" & var_D0 & "'"), var_D0, -1
  loc_14F119F:     unk_51C266.Execute "Delete From Voucher_Type Where V_Type='KBAN'", var_D0, -1
  loc_14F11C0:     unk_51C266.Execute "Delete From Voucher_Prefix Where V_Type='KBAN'", var_D0, -1
  loc_14F11E1:     unk_51C266.Execute "Delete From Voucher_Type Where V_Type='NBAN'", var_D0, -1
  loc_14F1202:     unk_51C266.Execute "Delete From Voucher_Prefix Where V_Type='NBAN'", var_D0, -1
  loc_14F1223:     unk_51C266.Execute "Delete From Voucher_Type Where V_Type='BBAN'", var_D0, -1
  loc_14F1244:     unk_51C266.Execute "Delete From Voucher_Prefix Where V_Type='BBAN'", var_D0, -1
  loc_14F1252:   Else
  loc_14F12A8:     unk_51C266.Execute CStr("Delete From Depart Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_13C, -1
  loc_14F12F3:     var_B8 = Me.Fields.Item("SearchCode")
  loc_14F12FB:     var_D0 = var_B8.Value
  loc_14F1310:     var_BC = CStr("Delete From RevMast Where Code='" & var_D0 & "'")
  loc_14F131A:     unk_51C266.Execute var_BC, var_13C, -1
  loc_14F135A:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "Delete From RevMast Where NAme='", var_D0, -1, var_E4)
  loc_14F1362:     var_E4 = var_B8.Text
  loc_14F136E:     var_C0 = var_BC & " - ROUND-OFF"
  loc_14F1382:     unk_51C266.Execute var_E4 & "Can't delete Department!" & vbCrLf & vbCrLf & "'", Me.Txt, Me.Txt
  loc_14F13C2:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "Delete From RevMast Where NAme='", var_D0)
  loc_14F13CA:     -1 = var_B8.Text
  loc_14F13D6:     var_C0 = var_BC & " - DISCOUNT"
  loc_14F13EA:     unk_51C266.Execute var_E4 & "Can't delete Department!" & vbCrLf & vbCrLf & "'", Me.Txt, Me.Txt
  loc_14F142D:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "K", "Delete From Voucher_Type Where V_Type='")
  loc_14F1435:     var_D0 = var_B8.Text
  loc_14F143E:     var_C0 = -1 & var_BC
  loc_14F1452:     unk_51C266.Execute var_E4 & "Can't delete Department!" & vbCrLf & vbCrLf & "'", Me.Txt, 
  loc_14F148F:     Set var_A4 = Me.Txt
  loc_14F1495:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "K")
  loc_14F149D:     "Delete From Voucher_Prefix Where V_Type='" = var_B8.Text
  loc_14F14AA:     var_D4 = -1 & var_D0 & var_BC
  loc_14F14BA:     unk_51C266.Execute var_E4 & "Can't delete Department!" & vbCrLf & vbCrLf & "'", var_E4, 
  loc_14F14F7:     Set var_A4 = Me.Txt
  loc_14F14FD:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "N")
  loc_14F1505:     "Delete From Voucher_Type Where V_Type='" = var_B8.Text
  loc_14F1512:     var_D4 = -1 & var_D0 & var_BC
  loc_14F1522:     unk_51C266.Execute var_E4 & "Can't delete Department!" & vbCrLf & vbCrLf & "'", var_E4, 
  loc_14F155F:     Set var_A4 = Me.Txt
  loc_14F1565:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "N")
  loc_14F156D:     "Delete From Voucher_Prefix Where V_Type='" = var_B8.Text
  loc_14F157A:     var_D4 = -1 & var_D0 & var_BC
  loc_14F158A:     unk_51C266.Execute var_E4 & "Can't delete Department!" & vbCrLf & vbCrLf & "'", var_E4, 
  loc_14F15C7:     Set var_A4 = Me.Txt
  loc_14F15CD:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "B")
  loc_14F15D5:     "Delete From Voucher_Type Where V_Type='" = var_B8.Text
  loc_14F15E2:     var_D4 = -1 & var_D0 & var_BC
  loc_14F15F2:     unk_51C266.Execute var_E4 & "Can't delete Department!" & vbCrLf & vbCrLf & "'", var_E4, 
  loc_14F162F:     Set var_A4 = Me.Txt
  loc_14F1635:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_B8, var_BC, "B")
  loc_14F163D:     "Delete From Voucher_Prefix Where V_Type='" = var_B8.Text
  loc_14F164A:     var_D4 = -1 & var_D0 & var_BC
  loc_14F165A:     unk_51C266.Execute var_E4 & "Can't delete Department!" & vbCrLf & vbCrLf & "'", var_E4, 
  loc_14F16CC:     unk_51C266.Execute CStr("Delete from MenuHelp where OutletCode='" & Me.Fields.Item("SearchCode").Value & "'"), var_13C, -1
  loc_14F1730:     var_12C = "Delete from UserModule where OutletCode='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_14F1734:     var_BC = CStr(var_12C)
  loc_14F173E:     unk_51C266.Execute var_BC, var_13C, -1
  loc_14F175A:   End If
  loc_14F1760:   unk_51C266.CommitTrans
  loc_14F1770:   Me.Requery -1
  loc_14F1780:   Me.Requery -1
  loc_14F17A0:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_14F17AD:     Me.Bookmark = var_94
  loc_14F17B5:   Else
  loc_14F17C9:     If (Me.EOF = 0) Then
  loc_14F17D2:       Me.MoveLast
  loc_14F17D7:     End If
  loc_14F17D7:   End If
  loc_14F17D7:   Call Proc_70_57_178749C(var_E4)
  loc_14F17F8:   Proc_5_0_110649C(&HFF, Me, global_64)
  loc_14F1800: End If
  loc_14F1800: Exit Sub
  loc_14F1801: ' Referenced from: 14F0A2C
  loc_14F1807: unk_51C266.RollbackTrans
  loc_14F1814: Set var_A4 = Err()
  loc_14F181A: Call 0.Method_arg_2C (var_BC, 0)
  loc_14F183B: MsgBox(CVar(var_BC), &H10, " Deletion Message", var_12C, var_13C)
  loc_14F184E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA7AD0
  'Data Table: 51C244
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_FA793C: On Error Goto loc_FA7AC9
  loc_FA794C: Me.LblUser.Caption = vbNullString
  loc_FA7961: Me.LblLDt.Caption = vbNullString
  loc_FA7977: If (Proc_183_55_FE7900(global_64) = &HFF) Then
  loc_FA797A:   Exit Sub
  loc_FA797B: End If
  loc_FA799E: Call Proc_70_58_EBAEB4(Proc_5_1_100CB50("EDIT", Me))
  loc_FA79B7: Set var_88 = Me.Txt
  loc_FA79BD: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_FA79D0: global_68 = var_94.Tag
  loc_FA79EB: Set var_88 = Me.Txt
  loc_FA79F1: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_FA79F9: var_94.Enabled = False
  loc_FA7A12: Set var_88 = Me.Txt
  loc_FA7A18: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_FA7A20: var_94.Enabled = False
  loc_FA7A39: Set var_88 = Me.Txt
  loc_FA7A3F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HA), var_94)
  loc_FA7A47: var_94.Enabled = False
  loc_FA7A60: Set var_88 = Me.Txt
  loc_FA7A66: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_FA7A6E: var_94.Enabled = False
  loc_FA7A87: Set var_88 = Me.Txt
  loc_FA7A8D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H19), var_94)
  loc_FA7A95: var_94.Enabled = True
  loc_FA7AAE: Set var_88 = Me.Txt
  loc_FA7AB4: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H2A), var_94)
  loc_FA7ABC: var_94.Enabled = True
  loc_FA7AC8: Exit Sub
  loc_FA7AC9: ' Referenced from: FA793C
  loc_FA7AC9: Proc_6_60_E62BC4(global_64)
  loc_FA7ACE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AA38
  'Data Table: 51C244
  loc_E1AA2D: Me.Global.Unload Me
  loc_E1AA35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEB634
  'Data Table: 51C244
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EEB570: On Error Goto loc_EEB62E
  loc_EEB58A: If (Me.RecordCount <= 0) Then
  loc_EEB593:   var_B8 = "Information"
  loc_EEB5AE:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EEB5BE:   Exit Sub
  loc_EEB5BF: End If
  loc_EEB5CA: If (global_56 = "Banquet") Then
  loc_EEB5D4:   var_10C = "SELECT R.Code AS SEARCHCODE,R.Name,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncl=CASE R.RateInclTax WHEN 'Y' THEN 'Yes' ELSE 'No' END,DiscApp=CASE R.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,Roff=CASE R.Roff WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.U_Name From Depart R Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_EEB5DB:   MemVar_1F920E4 = var_10C & "' or LOGSITE_CODE='HO') and RestType='Banquet' and OutletYN='Y' Order by R.Name"
  loc_EEB5E5: Else
  loc_EEB5EC:   var_10C = "SELECT R.Code AS SEARCHCODE,R.Name,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Header1,R.Header2,R.Header3,R.Header4,R.Phone,R.Slogan1,R.Slogan2,R.LstNo,Comp1=CASE R.CompanyTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END,D1=CASE R.POS WHEN 'Y' THEN 'Yes' ELSE 'No' END,LinkRoom=CASE R.LinkToRoom WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncl=CASE R.RateInclTax WHEN 'Y' THEN 'Yes' ELSE 'No' END,DiscApp=CASE R.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,Roff=CASE R.Roff WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.U_Name,Order_Booking=CASE R.Order_Booking when 'Y' then 'yes' else 'No' END From Depart R Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_EEB5F3:   MemVar_1F920E4 = var_10C & "' or LOGSITE_CODE='HO') and RestType<>'Banquet' and OutletYN='Y' Order by R.Name"
  loc_EEB5FA: End If
  loc_EEB600: MemVar_1F92120 = Me
  loc_EEB60D: Proc_6_126_F1BCC0("3000,1000,2000,2000,2000,2000,2000", MemVar_1F920E4)
  loc_EEB628: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEB62D: Exit Sub
  loc_EEB62E: ' Referenced from: EEB570
  loc_EEB62E: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EEB633: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E38D18
  'Data Table: 51C244
  loc_E38D08: Proc_5_0_110649C(&HFF, Me)
  loc_E38D10: Call Proc_70_57_178749C(global_64)
  loc_E38D15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E38BF8
  'Data Table: 51C244
  Dim var_3301 As Double
  loc_E38BE8: Proc_5_0_110649C(&HFF, Me)
  loc_E38BF0: Call Proc_70_57_178749C(global_64)
  loc_E38BF5: Exit Sub
  loc_E38BF6: var_3301 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E38AD8
  'Data Table: 51C244
  loc_E38AC8: Proc_5_0_110649C(&HFF, Me)
  loc_E38AD0: Call Proc_70_57_178749C(global_64)
  loc_E38AD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E389B8
  'Data Table: 51C244
  loc_E389A8: Proc_5_0_110649C(&HFF, Me)
  loc_E389B0: Call Proc_70_57_178749C(global_64)
  loc_E389B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1030C0C
  'Data Table: 51C244
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim unk_51C266 As Connection15
  Dim var_D2 As Integer
  Dim var_B8 As Variant
  loc_10309DC: On Error Goto loc_1030C03
  loc_10309E8: var_A4 = Me.RecordCount
  loc_10309F6: If (var_A4 <= 0) Then
  loc_10309F9:   Exit Sub
  loc_10309FA: End If
  loc_1030A01: var_A8 = "SELECT R.Code AS SEARCHCODE,R.Name,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Header1,R.Header2,R.Header3,R.Header4,R.Phone,R.Slogan1,R.Slogan2,R.LstNo,Comp1=CASE R.CompanyTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END,D1=CASE R.POS WHEN 'Y' THEN 'Yes' ELSE 'No' END,LinkRoom=CASE R.LinkToRoom WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncl=CASE R.RateInclTax WHEN 'Y' THEN 'Yes' ELSE 'No' END,DiscApp=CASE R.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,Roff=CASE R.Roff WHEN 'Y' THEN 'Yes' ELSE 'No' END,Order_Booking=case R.Order_Booking when 'Y' THEN 'yes' ELSE 'NO' END,R.U_Name From Depart R Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1030A08: var_88 = var_A8 & "' or LOGSITE_CODE='HO') and OutletYN='Y' Order by R.Name"
  loc_1030A16: If (var_88 = vbNullString) Then
  loc_1030A19:   Exit Sub
  loc_1030A1A: End If
  loc_1030A30: unk_51C266.Execute var_88, var_C8, -1
  loc_1030A5A: Set var_CC = var_CC 
  loc_1030A66: var_D2 = CreateFieldDefFile(var_CC, MemVar_1F920B4 & "\Depart.ttx")
  loc_1030A70: Set var_9C = var_CC
  loc_1030A76: var_B8 = CVar(var_D2) 'Integer
  loc_1030A79: var_98 = var_B8 'Variant
  loc_1030A95: var_A8 = MemVar_1F920B4 & "\Depart.RPT"
  loc_1030A9E: Call 0.Method_arg_1C (var_A8, var_B8, var_CC)
  loc_1030AA9: MemVar_1F921E4 = var_CC
  loc_1030AC4: Call 0.Method_arg_90 (var_CC, var_A4, var_9E, 1)
  loc_1030ACC: Call 0.Method_arg_24 (var_D2, &HFF)
  loc_1030AD8: For var_D6 =  To CInt(var_A4): var_CC = var_D6 'Integer
  loc_1030AF1:   Call 0.Method_arg_90 (var_CC, CLng(var_9E))
  loc_1030AF9:   Call 0.Method_arg_20 (var_DC)
  loc_1030B01:   Call 0.Method_arg_30 (var_A8)
  loc_1030B1B:   If (var_A8 = "Title") Then
  loc_1030B27:     Call 0.Method_arg_50 (var_A8)
  loc_1030B4A:     Call 0.Method_arg_90 (var_CC, CLng(var_9E))
  loc_1030B52:     Call 0.Method_arg_20 (var_DC)
  loc_1030B5A:     Call 0.Method_arg_38 ("'" & var_A8 & "'")
  loc_1030B6F:   End If
  loc_1030B72: Next var_D6 'Integer
  loc_1030B90: Call 0.Method_arg_64 (var_CC, CVar(var_9C))
  loc_1030B98: Call 0.Method_arg_2C (var_F4)
  loc_1030BA6: Call 0.Method_arg_150 (var_104)
  loc_1030BB1: Call 0.Method_arg_50 (var_A8)
  loc_1030BBB: Set var_DC = Nothing
  loc_1030BD5: Set var_CC = MemVar_1F921E4 
  loc_1030BE1: Proc_6_99_1483714(var_CC, 0, var_A8)
  loc_1030BEC: MemVar_1F921E4 = var_CC
  loc_1030BFF: Set var_9C = Nothing
  loc_1030C02: Exit Sub
  loc_1030C03: ' Referenced from: 10309DC
  loc_1030C03: Proc_6_60_E62BC4(&HFF)
  loc_1030C08: Exit Sub
  loc_1030C09: var_DC = 
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0ADCC
  'Data Table: 51C244
  Dim Me As Recordset15
  loc_E0ADC3: Me.Requery -1
  loc_E0ADC8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1CDE61C
  'Data Table: 51C244
  Dim var_CC As Variant
  Dim var_108 As Variant
  Dim var_E8 As Variant
  Dim var_118 As Variant
  Dim var_D4 As Variant
  Dim unk_51C266 As Connection15
  Dim var_88 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_8A As Variant
  Dim var_160 As String
  Dim var_138 As Variant
  Dim var_15C As Variant
  Dim var_170 As Variant
  Dim var_174 As String
  Dim var_92 As Variant
  Dim var_1A4 As Variant
  Dim var_1A8 As Variant
  Dim var_1C4 As TextBox
  Dim var_1D0 As TextBox
  Dim var_20C As Variant
  Dim var_248 As TextBox
  Dim var_294 As Variant
  Dim var_2E0 As TextBox
  Dim var_32C As TextBox
  Dim var_378 As TextBox
  Dim var_474 As TextBox
  Dim var_4C0 As Variant
  Dim var_508 As Variant
  Dim var_A04 As Variant
  Dim var_B54 As TextBox
  Dim var_BF8 As TextBox
  Dim var_C9C As TextBox
  Dim var_CE8 As TextBox
  Dim var_1320 As Double
  Dim var_D34 As TextBox
  Dim var_1328 As Double
  Dim var_D80 As TextBox
  Dim var_1330 As Double
  Dim var_DCC As TextBox
  Dim var_1338 As Double
  Dim var_E18 As TextBox
  Dim var_E64 As TextBox
  Dim var_EB0 As TextBox
  Dim var_FBC As Variant
  Dim var_10C4 As Variant
  Dim var_1214 As TextBox
  Dim var_1340 As Double
  Dim var_1260 As CheckBox
  Dim var_1B0 As String
  Dim var_1B4 As String
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_1E4 As Variant
  Dim var_1F4 As Variant
  Dim var_128 As Variant
  Dim var_220 As Variant
  Dim var_230 As Variant
  Dim var_240 As Variant
  Dim var_25C As Variant
  Dim var_28C As Variant
  Dim var_2A8 As Variant
  Dim var_2B8 As Variant
  Dim var_2C8 As Variant
  Dim var_2F4 As Variant
  Dim var_304 As Variant
  Dim var_324 As Variant
  Dim var_350 As Variant
  Dim var_360 As Variant
  Dim var_38C As Variant
  Dim var_3BC As Variant
  Dim var_46C As Variant
  Dim var_498 As Variant
  Dim var_4E0 As Variant
  Dim var_51C As Variant
  Dim var_56C As Variant
  Dim var_5FC As Variant
  Dim var_704 As Variant
  Dim var_75C As Variant
  Dim var_80C As Variant
  Dim var_934 As Variant
  Dim var_9CC As Variant
  Dim var_AF4 As Variant
  Dim var_B2C As Variant
  Dim var_BD0 As Variant
  Dim var_C74 As Variant
  Dim var_D78 As Variant
  Dim var_DC4 As Variant
  Dim var_EA8 As Variant
  Dim var_F2C As Variant
  Dim var_1194 As Variant
  Dim var_11EC As Variant
  Dim var_1AC As String
  Dim var_1C8 As String
  Dim var_210 As String
  Dim var_1BC As TextBox
  Dim var_24C As String
  Dim var_37C As String
  Dim var_478 As String
  Dim var_3C4 As TextBox
  Dim var_A4C As TextBox
  Dim var_AFC As TextBox
  Dim var_BA0 As TextBox
  Dim var_C44 As TextBox
  Dim var_110C As TextBox
  Dim var_1164 As CheckBox
  Dim var_3E4 As Variant
  Dim var_D38 As String
  Dim var_D0 As Variant
  Dim var_1B8 As Variant
  Dim var_1D4 As String
  Dim var_50C As String
  Dim var_9C As Recordset15
  Dim var_1C0 As Fields15
  Dim var_1CC As Fields15
  Dim var_208 As MSFlexGrid
  Dim var_244 As Fields15
  Dim var_290 As Fields15
  Dim Me As Recordset15
  loc_1CD793C: On Error Goto loc_1CDE601
  loc_1CD794A: Set var_C8 = Me.Txt
  loc_1CD7950: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1CD7979: If (Proc_6_27_EA565C(var_CC, "Name") = 0) Then
  loc_1CD797C:   Exit Sub
  loc_1CD797D: End If
  loc_1CD7988: Set var_C8 = Me.Txt
  loc_1CD798E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC)
  loc_1CD79B7: If (Proc_6_27_EA565C(var_CC, "KOT") = 0) Then
  loc_1CD79BA:   Exit Sub
  loc_1CD79BB: End If
  loc_1CD79C6: Set var_C8 = Me.Txt
  loc_1CD79CC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_CC)
  loc_1CD79F5: If (Proc_6_27_EA565C(var_CC, "Company Title") = 0) Then
  loc_1CD79F8:   Exit Sub
  loc_1CD79F9: End If
  loc_1CD7A04: Set var_C8 = Me.Txt
  loc_1CD7A0A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_CC)
  loc_1CD7A33: If (Proc_6_27_EA565C(var_CC, "Outlet Title") = 0) Then
  loc_1CD7A36:   Exit Sub
  loc_1CD7A37: End If
  loc_1CD7A42: Set var_C8 = Me.Txt
  loc_1CD7A48: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_CC)
  loc_1CD7A71: If (Proc_6_27_EA565C(var_CC, "Link To Room") = 0) Then
  loc_1CD7A74:   Exit Sub
  loc_1CD7A75: End If
  loc_1CD7A80: Set var_C8 = Me.Txt
  loc_1CD7A86: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_CC)
  loc_1CD7AAF: If (Proc_6_27_EA565C(var_CC, "Part Name") = 0) Then
  loc_1CD7AB2:   Exit Sub
  loc_1CD7AB3: End If
  loc_1CD7ABE: Set var_C8 = Me.Txt
  loc_1CD7AC4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_CC)
  loc_1CD7AED: If (Proc_6_27_EA565C(var_CC, "Rate Incl. Tax") = 0) Then
  loc_1CD7AF0:   Exit Sub
  loc_1CD7AF1: End If
  loc_1CD7AFC: Set var_C8 = Me.Txt
  loc_1CD7B02: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_CC)
  loc_1CD7B2B: If (Proc_6_27_EA565C(var_CC, "Round Off") = 0) Then
  loc_1CD7B2E:   Exit Sub
  loc_1CD7B2F: End If
  loc_1CD7B3A: Set var_C8 = Me.Txt
  loc_1CD7B40: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_CC)
  loc_1CD7B69: If (Proc_6_27_EA565C(var_CC, "Restaurant Type") = 0) Then
  loc_1CD7B6C:   Exit Sub
  loc_1CD7B6D: End If
  loc_1CD7B78: Set var_C8 = Me.Txt
  loc_1CD7B7E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CD7BA7: If (Proc_6_27_EA565C(var_CC, "Short Name") = 0) Then
  loc_1CD7BAA:   Exit Sub
  loc_1CD7BAB: End If
  loc_1CD7BB6: Set var_C8 = Me.Txt
  loc_1CD7BBC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_CC)
  loc_1CD7BE5: If (Proc_6_27_EA565C(var_CC, "OrderBooking") = 0) Then
  loc_1CD7BE8:   Exit Sub
  loc_1CD7BE9: End If
  loc_1CD7BF4: Set var_C8 = Me.Txt
  loc_1CD7BFA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_CC)
  loc_1CD7C23: If (Proc_6_27_EA565C(var_CC, "Member Info.") = 0) Then
  loc_1CD7C26:   Exit Sub
  loc_1CD7C27: End If
  loc_1CD7C32: Set var_C8 = Me.Txt
  loc_1CD7C38: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_CC)
  loc_1CD7C61: If (Proc_6_27_EA565C(var_CC, "Customer Info.") = 0) Then
  loc_1CD7C64:   Exit Sub
  loc_1CD7C65: End If
  loc_1CD7C70: Set var_C8 = Me.Txt
  loc_1CD7C76: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2D), var_CC)
  loc_1CD7C9F: If (Proc_6_27_EA565C(var_CC, "DisPrint") = 0) Then
  loc_1CD7CA2:   Exit Sub
  loc_1CD7CA3: End If
  loc_1CD7CB1: Set var_C8 = Me.Txt
  loc_1CD7CB7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_CC)
  loc_1CD7CD6: If (var_CC.Text = "Yes") Then
  loc_1CD7CE4:   Set var_C8 = Me.Txt
  loc_1CD7CEA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H25), var_CC)
  loc_1CD7D13:   If (Proc_6_27_EA565C(var_CC, "Central KOT Printing Type") = 0) Then
  loc_1CD7D16:     Exit Sub
  loc_1CD7D17:   End If
  loc_1CD7D17: End If
  loc_1CD7D25: Set var_C8 = Me.Txt
  loc_1CD7D2B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_CC)
  loc_1CD7D4A: If (var_CC.Text = "Yes") Then
  loc_1CD7D58:   Set var_C8 = Me.Txt
  loc_1CD7D5E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_CC)
  loc_1CD7D6F:   Set var_D0 = var_CC
  loc_1CD7D87:   If (Proc_6_27_EA565C(var_D0, "Central KOT Printing Path") = 0) Then
  loc_1CD7D8A:     Exit Sub
  loc_1CD7D8B:   End If
  loc_1CD7D8B: End If
  loc_1CD7D8E: Call Proc_70_55_108B67C(var_D6)
  loc_1CD7D99: If (var_D6 = &HFF) Then
  loc_1CD7D9C:   Exit Sub
  loc_1CD7D9D: End If
  loc_1CD7DA0: Call Proc_70_65_103BACC(var_D6)
  loc_1CD7DAB: If (var_D6 = 0) Then
  loc_1CD7DAE:   Exit Sub
  loc_1CD7DAF: End If
  loc_1CD7DBA: If (global_56 = "Banquet") Then
  loc_1CD7DDA:   Proc_6_17_EAA2B0(var_F8, MemVar_1F92078, "Select HallDiscAC from enviro WHERE logSITE_CODE=", var_138)
  loc_1CD7DE2:   var_118 = -1 & var_F8 
  loc_1CD7DF0:   unk_51C266.Execute CStr(var_118), var_C8, var_CC
  loc_1CD7DFB:   Set var_88 = var_C8
  loc_1CD7E21:   If (var_88.RecordCount > 0) Then
  loc_1CD7E33:     var_C8 = var_88.Fields
  loc_1CD7E5D:     If (Proc_6_38_E68A98(CVar(var_C8.Item("HallDiscAC"))) = vbNullString) Then
  loc_1CD7E7B:       var_F8 = "Please define Banquet Discount A/c In Enviro"
  loc_1CD7E81:       MsgBox(var_F8, &H40, "HMS", var_138, var_15C)
  loc_1CD7E91:       Exit Sub
  loc_1CD7E92:     End If
  loc_1CD7E92:   End If
  loc_1CD7EAF:   Proc_6_17_EAA2B0(var_F8, MemVar_1F92078, "Select HallRoundOff from enviro WHERE logSITE_CODE=")
  loc_1CD7EC5:   unk_51C266.Execute CStr(var_138 & var_F8), -1, var_C8
  loc_1CD7ED0:   Set var_88 = var_C8
  loc_1CD7EF6:   If (var_88.RecordCount > 0) Then
  loc_1CD7F08:     var_C8 = var_88.Fields
  loc_1CD7F32:     If (Proc_6_38_E68A98(CVar(var_C8.Item("HallRoundOff"))) = vbNullString) Then
  loc_1CD7F4B:       var_E8 = "Please define Banquet Round-Off Ac In Enviro"
  loc_1CD7F50:       var_F8 = "HallRoundOff"
  loc_1CD7F56:       MsgBox(var_F8, &H40, "HMS", var_138, var_15C)
  loc_1CD7F66:       Exit Sub
  loc_1CD7F67:     End If
  loc_1CD7F67:   End If
  loc_1CD7F6A: Else
  loc_1CD7F87:   Proc_6_17_EAA2B0(var_F8, MemVar_1F92078, "Select OutletDiscAc from enviro WHERE LOGSITE_CODE=")
  loc_1CD7F9D:   unk_51C266.Execute CStr(var_138 & var_F8), -1, var_C8
  loc_1CD7FA8:   Set var_88 = var_C8
  loc_1CD7FCE:   If (var_88.RecordCount > 0) Then
  loc_1CD7FE0:     var_C8 = var_88.Fields
  loc_1CD7FF9:     var_B8 = Proc_6_38_E68A98(CVar(var_C8.Item("OutletDiscAc")))
  loc_1CD800A:     If (var_B8 = vbNullString) Then
  loc_1CD8028:       var_F8 = "Please define Outlet Discount A/c In Enviro"
  loc_1CD802E:       MsgBox(var_F8, &H40, "HMS", var_138, var_15C)
  loc_1CD803E:       Exit Sub
  loc_1CD803F:     End If
  loc_1CD803F:   End If
  loc_1CD805C:   Proc_6_17_EAA2B0(var_F8, MemVar_1F92078, "Select OutletRoundAc from enviro WHERE LOGSITE_CODE=")
  loc_1CD8068:   var_D4 = CStr(var_138 & var_F8)
  loc_1CD8072:   unk_51C266.Execute var_D4, -1, var_C8
  loc_1CD807D:   Set var_88 = var_C8
  loc_1CD8095:   var_13C = var_88.RecordCount
  loc_1CD80A3:   If (var_13C > 0) Then
  loc_1CD80BD:     var_CC = var_88.Fields.Item("OutletRoundAc")
  loc_1CD80CE:     var_BC = Proc_6_38_E68A98(CVar(var_CC))
  loc_1CD80DF:     If (var_BC = vbNullString) Then
  loc_1CD80F8:       var_E8 = "Please define Round-Off Ac In Enviro"
  loc_1CD8103:       MsgBox("OutletRoundAc", &H40, "HMS", var_138, var_15C)
  loc_1CD8113:       Exit Sub
  loc_1CD8114:     End If
  loc_1CD8114:   End If
  loc_1CD8114: End If
  loc_1CD8116: var_8A = &HFF
  loc_1CD8122: unk_51C266.BeginTrans var_13C
  loc_1CD8138: Set var_C8 = Me.Txt
  loc_1CD813E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, var_D4)
  loc_1CD8146: "B" = var_CC.Text
  loc_1CD814F: var_98 = var_8A & var_D4
  loc_1CD8160: Set var_C8 = Me.TopCtrl1
  loc_1CD8166: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1CD817F: If (CStr() = "Add") Then
  loc_1CD818D:   Set var_C8 = Me.Txt
  loc_1CD8193:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1CD81C0:   var_D4 = "Select ISNULL(Max(cAST(SUBSTRING(Code,4,Len(Code)-3) AS INT)),0) As tCode From Depart Where SITE_CODE='" & MemVar_1F92070
  loc_1CD81D8:   var_E8 = "' And IsNumeric(SUBSTRING(Code,4,Len(Code)-3))=1"
  loc_1CD81EB:   unk_51C266.Execute CStr(CVar(CStr() & "' AND Left(Code,3)='" & MemVar_1F92078) & Left(CVar(var_CC), 1) & "OutletRoundAc"), var_184, -1
  loc_1CD81F6:   Set var_88 = var_D0
  loc_1CD825C:   If ((var_88.RecordCount > 0) And Not(IsNull(CVar(var_88.Fields.Item("TCode"))))) Then
  loc_1CD8279:     var_CC = var_88.Fields.Item("TCode")
  loc_1CD828E:     var_118 = (var_CC.Value + 1)
  loc_1CD8293:     var_92 = CInt(Left(CVar(var_CC), 1))
  loc_1CD82A7:   Else
  loc_1CD82A9:     var_92 = 1
  loc_1CD82AC:   End If
  loc_1CD82B7:   Set var_C8 = Me.Txt
  loc_1CD82BD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_92)
  loc_1CD8324:   var_D4 = CStr(1 & Format(var_92, "000"))
  loc_1CD8333:   Set var_D0 = Me.Txt
  loc_1CD8339:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4, 1)
  loc_1CD8341:   var_1A8.Tag = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2, var_92)) & Ucase(Left(CVar(var_CC), 1))
  loc_1CD8373:   Set var_C8 = Me.Txt
  loc_1CD8379:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_D4)
  loc_1CD8381:   var_D0 = var_CC.Tag
  loc_1CD8394:   Set var_D0 = Me.Txt
  loc_1CD839A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8)
  loc_1CD83B2:   Set var_1B8 = Me.Txt
  loc_1CD83B8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1BC)
  loc_1CD83C5:   var_F8 = CVar(var_1BC) 'Address
  loc_1CD83CC:   var_118 = Left(var_F8, 1)
  loc_1CD83E5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1C4)
  loc_1CD8400:   Set var_1CC = Me.Txt
  loc_1CD8406:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1D0)
  loc_1CD840E:   var_1D4 = var_1D0.Text
  loc_1CD8421:   Set var_208 = Me.Txt
  loc_1CD8427:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_20C)
  loc_1CD8442:   Set var_244 = Me.Txt
  loc_1CD8448:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_248)
  loc_1CD8463:   Set var_290 = Me.Txt
  loc_1CD8469:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_294)
  loc_1CD8484:   Set var_2DC = Me.Txt
  loc_1CD848A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2E0)
  loc_1CD84A5:   Set var_328 = Me.Txt
  loc_1CD84AB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_32C)
  loc_1CD84C6:   Set var_374 = Me.Txt
  loc_1CD84CC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_378)
  loc_1CD84E4:   Set var_3C0 = Me.Txt
  loc_1CD84EA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_3C4)
  loc_1CD850E:   Set var_418 = Me.Txt
  loc_1CD8514:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_41C)
  loc_1CD853B:   Set var_470 = Me.Txt
  loc_1CD8541:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_474)
  loc_1CD855A:   Set var_4BC = Me.Label1
  loc_1CD8560:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HE, var_4C0)
  loc_1CD857B:   Set var_504 = Me.Txt
  loc_1CD8581:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_508)
  loc_1CD8589:   var_50C = var_508.Text
  loc_1CD8599:   Set var_570 = Me.Txt
  loc_1CD859F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_574)
  loc_1CD85C3:   Set var_5C8 = Me.Txt
  loc_1CD85C9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_5CC)
  loc_1CD85ED:   Set var_620 = Me.Txt
  loc_1CD85F3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_624)
  loc_1CD8617:   Set var_678 = Me.Txt
  loc_1CD861D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_67C)
  loc_1CD8641:   Set var_6D0 = Me.Txt
  loc_1CD8647:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_6D4)
  loc_1CD866B:   Set var_728 = Me.Txt
  loc_1CD8671:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_72C)
  loc_1CD8695:   Set var_780 = Me.Txt
  loc_1CD869B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_784)
  loc_1CD86BF:   Set var_7D8 = Me.Txt
  loc_1CD86C5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2D), var_7DC)
  loc_1CD86E9:   Set var_830 = Me.Txt
  loc_1CD86EF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2E), var_834)
  loc_1CD8716:   Proc_6_7_F25D88(var_924, Date)
  loc_1CD8726:   Set var_998 = Me.Txt
  loc_1CD872C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_99C)
  loc_1CD874B:   Set var_9F0 = Me.Txt
  loc_1CD8751:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_9F4)
  loc_1CD8770:   Set var_A48 = Me.Txt
  loc_1CD8776:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_A4C)
  loc_1CD8795:   Set var_AA0 = Me.Txt
  loc_1CD879B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_AA4)
  loc_1CD87BF:   Set var_AF8 = Me.Txt
  loc_1CD87C5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_AFC)
  loc_1CD87EC:   Set var_B50 = Me.Txt
  loc_1CD87F2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_B54)
  loc_1CD87FA:   var_B58 = var_B54.Text
  loc_1CD880A:   Set var_B9C = Me.Txt
  loc_1CD8810:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_BA0)
  loc_1CD8837:   Set var_BF4 = Me.Txt
  loc_1CD883D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H25), var_BF8)
  loc_1CD8855:   Set var_C40 = Me.Txt
  loc_1CD885B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_C44)
  loc_1CD887D:   Set var_C98 = Me.Txt
  loc_1CD8883:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_C9C)
  loc_1CD889E:   Set var_CE4 = Me.Txt
  loc_1CD88A4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_CE8)
  loc_1CD88B9:   var_1320 = Val(var_CE8.Text)
  loc_1CD88CA:   Set var_D30 = Me.Txt
  loc_1CD88D0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2A), var_D34, var_D38)
  loc_1CD88E5:   var_1328 = Val(var_D38)
  loc_1CD88F6:   Set var_D7C = Me.Txt
  loc_1CD88FC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_D80, var_D84)
  loc_1CD8911:   var_1330 = Val(var_D84)
  loc_1CD8922:   Set var_DC8 = Me.Txt
  loc_1CD8928:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_DCC, var_DD0)
  loc_1CD893D:   var_1338 = Val(var_DD0)
  loc_1CD894E:   Set var_E14 = Me.Txt
  loc_1CD8954:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_E18, var_E1C)
  loc_1CD896F:   Set var_E60 = Me.Txt
  loc_1CD8975:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_E64)
  loc_1CD8990:   Set var_EAC = Me.Txt
  loc_1CD8996:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H27), var_EB0)
  loc_1CD89AE:   Set var_EF8 = Me.Txt
  loc_1CD89B4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_EFC)
  loc_1CD89D3:   Set var_F50 = Me.Txt
  loc_1CD89D9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_F54)
  loc_1CD89F8:   Set var_FA8 = Me.Txt
  loc_1CD89FE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H26), var_FAC)
  loc_1CD8A1D:   Set var_1000 = Me.Txt
  loc_1CD8A23:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H28), var_1004)
  loc_1CD8A42:   Set var_1058 = Me.Txt
  loc_1CD8A48:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H29), var_105C)
  loc_1CD8A67:   Set var_10B0 = Me.Txt
  loc_1CD8A6D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2F), var_10B4)
  loc_1CD8A8C:   Set var_1108 = Me.Txt
  loc_1CD8A92:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H30), var_110C)
  loc_1CD8AB1:   Set var_1160 = Me.Txt
  loc_1CD8AB7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H31), var_1164)
  loc_1CD8AD6:   Set var_11B8 = Me.Txt
  loc_1CD8ADC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_11BC)
  loc_1CD8AFE:   Set var_1210 = Me.Txt
  loc_1CD8B04:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_1214)
  loc_1CD8B19:   var_1340 = Val(var_1214.Text)
  loc_1CD8B2A:   Set var_125C = Me.ChkDisc
  loc_1CD8B30:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1260, var_D6)
  loc_1CD8B4D:   var_1290 = "Y"
  loc_1CD8B79:   var_160 = "Insert Into Depart(Code,Name,KotYn,Header1,Header2,Header3,Header4,Phone,Slogan1,Slogan2,LstNo,CompanyTitle,OutletTitle,POS,RestType,BackColor,ShortName,OutletYN,LinkToRoom,PartyName,SplitBill,RateInclTax,DiscApp,Roff,MemberInfo,DisPrint,LabelPrinting,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,TokenPrint,TokenPrintAfter,PrintTokenNo,Order_Booking,CustInfo,CstNo,CKOTPrintYN,PrintType,BarCodePartitionAppOn,CKOTPrintPath,CurTokenNo,CurTokenNoKOT,NoOfKOt,NoOfBill,OrderBookCom1,OrderBookCom2,SaleBillTokenHeader1,PrintOnSave,AutoSettlement,WScaleApp,BarCodeApp,AutoResetToken,FreeItemApp,CoverMandatory,MobileNoMandatory,DirectBilling,BookOfBills,GrpDiscApp) " & " Values ('"
  loc_1CD8B87:   var_1B0 = var_160 & var_D4 & "','"
  loc_1CD8B9F:   var_E8 = "','"
  loc_1CD8BB2:   var_108 = "','"
  loc_1CD8BD4:   var_230 = CVar(var_1B0 & var_1A8.Text & "','") & var_118 & var_E8 & CVar(var_1C4.Text) & var_108 & CVar(var_1D4) & "','" & CVar(var_20C.Text) 
  loc_1CD8C20:   var_350 = var_230 & "','" & CVar(var_248.Text) & "','" & CVar(var_294.Text) & "','" & CVar(var_2E0.Text) & "','" & CVar(var_32C.Text) 
  loc_1CD8C66:   var_498 = var_350 & "','" & CVar(var_378.Text) & "','" & Left(CVar(var_3C4), 1) & "','" & Left(CVar(var_41C), 1) & "','Y','" & CVar(var_474.Text) 
  loc_1CD8CB6:   var_5FC = var_498 & "'," & CVar(var_4C0.BackColor) & ",'" & CVar(var_50C) & "','Y'," & "'" & Left(CVar(var_574), 1) & "','" & Left(CVar(var_5CC), 1) 
  loc_1CD8CF6:   var_75C = var_5FC & "','" & Left(CVar(var_624), 1) & "','" & Left(CVar(var_67C), 1) & "','" & Left(CVar(var_6D4), 1) & "','" & Left(CVar(var_72C), 1) 
  loc_1CD8D39:   var_8A4 = var_75C & "','" & Left(CVar(var_784), 1) & "','" & Left(CVar(var_7DC), 1) & "','" & Left(CVar(var_834), 1) & "','" & CVar(MemVar_1F92070) 
  loc_1CD8D7F:   var_9CC = var_8A4 & " ','" & CVar(MemVar_1F920C8) & "'," & var_924 & ",'A','" & CVar(MemVar_1F92078) & "','" & Trim(CVar(var_99C)) 
  loc_1CD8DBF:   var_B2C = var_9CC & "','" & Trim(CVar(var_9F4)) & "','" & Trim(CVar(var_A4C)) & "','" & Left(CVar(var_AA4), 1) & "','" & Left(CVar(var_AFC), 1) 
  loc_1CD8E05:   var_C74 = var_B2C & "','" & CVar(var_B58) & "','" & Left(CVar(var_BA0), 1) & "','" & CVar(var_BF8.Text) & "','" & Trim(CVar(var_C44)) 
  loc_1CD8E5D:   var_DC4 = var_C74 & "','" & CVar(var_C9C.Text) & "'," & CVar(var_D34.Text) & "," & CVar(var_D80.Text) & "," & CVar(var_DCC.Text) & "," 
  loc_1CD8EB1:   var_F2C = var_DC4 & CVar(var_E18.Text) & ",'" & CVar(var_E1C) & "','" & CVar(var_E64.Text) & "','" & CVar(var_EB0.Text) & "','" & Trim(CVar(var_EFC)) 
  loc_1CD8EF1:   var_108C = var_F2C & "','" & Trim(CVar(var_F54)) & "','" & Trim(CVar(var_FAC)) & "','" & Trim(CVar(var_1004)) & "','" & Trim(CVar(var_105C)) 
  loc_1CD8F31:   var_11EC = var_108C & "','" & Trim(CVar(var_10B4)) & "','" & Trim(CVar(var_110C)) & "','" & Trim(CVar(var_1164)) & "','" & Trim(CVar(var_11BC)) 
  loc_1CD8F6C:   unk_51C266.Execute CStr(var_11EC & "'," & CVar(var_1260.Value) & ",'" & IIf((var_D6 = 1), var_1290, "N") & "')"), var_1314, -1
  loc_1CD91BF:   Set var_C8 = Me.Txt
  loc_1CD91C5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_D4)
  loc_1CD91D9:   Call Proc_70_61_F5832C(var_D4, var_1318)
  loc_1CD91E1:   var_AC = var_CC.Text
  loc_1CD9202:   var_D4 = "Insert Into RevMast(Code,DeskCode,Name,ShortName,SysYN,Type,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_AC
  loc_1CD921A:   Set var_C8 = Me.Txt
  loc_1CD9220:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_160, var_D4 & "','")
  loc_1CD9228:   var_1A4 = var_CC.Tag
  loc_1CD9231:   var_1AC = -1 & var_160
  loc_1CD9238:   var_1B4 = var_1A8.Text & "','"
  loc_1CD9249:   Set var_D0 = Me.Txt
  loc_1CD924F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1B0)
  loc_1CD9257:   var_1B4 = var_1A8.Text
  loc_1CD9267:   var_210 = Me.Txt & var_1B0 & "','"
  loc_1CD9278:   Set var_1B8 = Me.Txt
  loc_1CD927E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1BC, var_1D4)
  loc_1CD9286:   var_210 = var_1BC.Text
  loc_1CD92AB:   var_37C = var_CC & var_1D4 & "','Y','Cr','Amount','Header','POS','" & MemVar_1F92070 & "','" & MemVar_1F920C8
  loc_1CD92C3:   Proc_6_7_F25D88(var_118, Date)
  loc_1CD92DB:   var_108 = CVar(MemVar_1F92078) 'String
  loc_1CD92EB:   var_478 = CStr(CVar(var_37C & "',") & var_118 & ",'A','" & var_108 & "')")
  loc_1CD92F5:   unk_51C266.Execute var_478, , 
  loc_1CD9342: Else
  loc_1CD934D:   Set var_C8 = Me.Txt
  loc_1CD9353:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF))
  loc_1CD935B:   var_F8 = CVar(var_CC) 'Address
  loc_1CD9362:   var_118 = Trim(var_F8)
  loc_1CD9372:   Set var_D0 = Me.Txt
  loc_1CD9378:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_1A8)
  loc_1CD9397:   Set var_1B8 = Me.Txt
  loc_1CD939D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_1BC)
  loc_1CD93AC:   var_1F4 = Trim(CVar(var_1BC))
  loc_1CD93BC:   Set var_1C0 = Me.Txt
  loc_1CD93C2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1C4)
  loc_1CD93D6:   var_240 = Left(CVar(var_1C4), 1)
  loc_1CD93E9:   Set var_1CC = Me.Txt
  loc_1CD93EF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1D0)
  loc_1CD93F7:   var_D4 = var_1D0.Text
  loc_1CD940A:   Set var_208 = Me.Txt
  loc_1CD9410:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_20C)
  loc_1CD9418:   var_160 = var_20C.Text
  loc_1CD942B:   Set var_244 = Me.Txt
  loc_1CD9431:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_248)
  loc_1CD944C:   Set var_290 = Me.Txt
  loc_1CD9452:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_294)
  loc_1CD946D:   Set var_2DC = Me.Txt
  loc_1CD9473:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2E0)
  loc_1CD948E:   Set var_328 = Me.Txt
  loc_1CD9494:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_32C)
  loc_1CD94AF:   Set var_374 = Me.Txt
  loc_1CD94B5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_378)
  loc_1CD94D0:   Set var_3C0 = Me.Txt
  loc_1CD94D6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_3C4)
  loc_1CD94EE:   Set var_418 = Me.Txt
  loc_1CD94F4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_41C)
  loc_1CD9501:   var_4E0 = CVar(var_41C) 'Address
  loc_1CD9518:   Set var_470 = Me.Txt
  loc_1CD951E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_474)
  loc_1CD9532:   var_56C = Left(CVar(var_474), 1)
  loc_1CD9545:   Set var_4BC = Me.Txt
  loc_1CD954B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4C0)
  loc_1CD9553:   var_210 = var_4C0.Text
  loc_1CD9564:   Set var_504 = Me.Label1
  loc_1CD956A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HE, var_508)
  loc_1CD9582:   Set var_570 = Me.Txt
  loc_1CD9588:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_574)
  loc_1CD95AC:   Set var_5C8 = Me.Txt
  loc_1CD95B2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_5CC)
  loc_1CD95D6:   Set var_620 = Me.Txt
  loc_1CD95DC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_624)
  loc_1CD9600:   Set var_678 = Me.Txt
  loc_1CD9606:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_67C)
  loc_1CD962A:   Set var_6D0 = Me.Txt
  loc_1CD9630:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_6D4)
  loc_1CD9654:   Set var_728 = Me.Txt
  loc_1CD965A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_72C)
  loc_1CD967E:   Set var_780 = Me.Txt
  loc_1CD9684:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_784)
  loc_1CD96A8:   Set var_7D8 = Me.Txt
  loc_1CD96AE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2D), var_7DC)
  loc_1CD96D2:   Set var_830 = Me.Txt
  loc_1CD96D8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2E), var_834)
  loc_1CD96FF:   Proc_6_7_F25D88(var_9CC, Date)
  loc_1CD970F:   Set var_998 = Me.Txt
  loc_1CD9715:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_99C)
  loc_1CD9739:   Set var_9F0 = Me.Txt
  loc_1CD973F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_9F4)
  loc_1CD9766:   Set var_A48 = Me.Txt
  loc_1CD976C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_A4C)
  loc_1CD9784:   Set var_AA0 = Me.Txt
  loc_1CD978A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_AA4)
  loc_1CD97B1:   Set var_AF8 = Me.Txt
  loc_1CD97B7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H25), var_AFC)
  loc_1CD97CF:   Set var_B50 = Me.Txt
  loc_1CD97D5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_B54)
  loc_1CD97F7:   Set var_B9C = Me.Txt
  loc_1CD97FD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_BA0)
  loc_1CD9818:   Set var_BF4 = Me.Txt
  loc_1CD981E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_BF8)
  loc_1CD9833:   var_1320 = Val(var_BF8.Text)
  loc_1CD9844:   Set var_C40 = Me.Txt
  loc_1CD984A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2A), var_C44, var_37C)
  loc_1CD985F:   var_1328 = Val(var_37C)
  loc_1CD9870:   Set var_C98 = Me.Txt
  loc_1CD9876:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_C9C, var_478)
  loc_1CD988B:   var_1330 = Val(var_478)
  loc_1CD989C:   Set var_CE4 = Me.Txt
  loc_1CD98A2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_CE8, var_50C)
  loc_1CD98B7:   var_1338 = Val(var_50C)
  loc_1CD98C8:   Set var_D30 = Me.Txt
  loc_1CD98CE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_D34, var_B58)
  loc_1CD98E9:   Set var_D7C = Me.Txt
  loc_1CD98EF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_D80)
  loc_1CD990A:   Set var_DC8 = Me.Txt
  loc_1CD9910:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H27), var_DCC)
  loc_1CD9928:   Set var_E14 = Me.Txt
  loc_1CD992E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_E18)
  loc_1CD994D:   Set var_E60 = Me.Txt
  loc_1CD9953:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H24), var_E64)
  loc_1CD9972:   Set var_EAC = Me.Txt
  loc_1CD9978:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H26), var_EB0)
  loc_1CD9997:   Set var_EF8 = Me.Txt
  loc_1CD999D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H28), var_EFC)
  loc_1CD99BC:   Set var_F50 = Me.Txt
  loc_1CD99C2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H29), var_F54)
  loc_1CD99E1:   Set var_FA8 = Me.Txt
  loc_1CD99E7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2F), var_FAC)
  loc_1CD9A06:   Set var_1000 = Me.Txt
  loc_1CD9A0C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H30), var_1004)
  loc_1CD9A2B:   Set var_1058 = Me.Txt
  loc_1CD9A31:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H31), var_105C)
  loc_1CD9A50:   Set var_10B0 = Me.Txt
  loc_1CD9A56:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_10B4)
  loc_1CD9A78:   Set var_1108 = Me.Txt
  loc_1CD9A7E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_110C)
  loc_1CD9A93:   var_1340 = Val(var_110C.Text)
  loc_1CD9AA4:   Set var_1160 = Me.ChkDisc
  loc_1CD9AAA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1164, var_D6)
  loc_1CD9AEC:   var_E8 = "Update Depart Set TokenPrint='"
  loc_1CD9AF8:   var_108 = "',TokenPrintAfter='"
  loc_1CD9B08:   var_128 = "',PrintTokenNo ='"
  loc_1CD9B37:   var_2A8 = var_E8 & var_118 & var_108 & Trim(CVar(var_1A8)) & var_128 & var_1F4 & "',KotYn='" & var_240 & "',Header1='" & CVar(var_D4) 
  loc_1CD9B40:   var_2B8 = var_2A8 & "',Header2='" 
  loc_1CD9B80:   var_3BC = CVar(var_2E0.Text) 'String
  loc_1CD9B8C:   var_3E4 = var_2B8 & CVar(var_160) & "',Header3='" & CVar(var_248.Text) & "',Header4='" & CVar(var_294.Text) & "',Phone='" & var_3BC & "',Slogan1='" 
  loc_1CD9BCC:   var_51C = var_3E4 & CVar(var_32C.Text) & "',Slogan2='" & CVar(var_378.Text) & "',LstNo='" & CVar(var_3C4.Text) & "',CompanyTitle='" & Left(var_4E0, 1) 
  loc_1CD9C0C:   var_5FC = var_51C & "',OutletTitle='" & var_56C & "',POS='Y',RestType='" & CVar(var_210) & "',BackColor=" & CVar(var_508.BackColor) & ",LinkToRoom='" 
  loc_1CD9C3C:   var_704 = var_5FC & Left(CVar(var_574), 1) & "', PartyName='" & Left(CVar(var_5CC), 1) & "', splitbill='" & Left(CVar(var_624), 1) & "',RateInclTax='" 
  loc_1CD9C6C:   var_80C = var_704 & Left(CVar(var_67C), 1) & "',DiscApp='" & Left(CVar(var_6D4), 1) & "',Roff='" & Left(CVar(var_72C), 1) & "',MemberInfo='" 
  loc_1CD9C9C:   var_934 = var_80C & Left(CVar(var_784), 1) & "',DisPrint='" & Left(CVar(var_7DC), 1) & "',LabelPrinting='" & Left(CVar(var_834), 1) & "',Site_Code='" 
  loc_1CD9CD2:   var_A04 = var_934 & CVar(MemVar_1F92070) & "',OutLetYN='Y',U_Name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_9CC & ",U_AE='E',Order_Booking='" 
  loc_1CD9D05:   var_AF4 = var_A04 & Left(CVar(var_99C), 1) & "',CustInfo='" & Left(CVar(var_9F4), 1) & "',CstNo='" & CVar(var_A4C.Text) & "',CKOTPrintYN='" 
  loc_1CD9D2F:   var_BD0 = var_AF4 & Left(CVar(var_AA4), 1) & "',PrintType='" & CVar(var_AFC.Text) & "',BarCodePartitionAppOn='" & Trim(CVar(var_B54)) 
  loc_1CD9D6A:   var_C74 = var_BD0 & "',CKOTPrintPath='" & CVar(var_BA0.Text) & "',CurTokenNo=" & CVar(var_C44.Text) & ",CurTokenNoKOT=" & CVar(var_C9C.Text) 
  loc_1CD9DAE:   var_D78 = var_C74 & ",NoOfKot=" & CVar(var_CE8.Text) & ",NoOfBill=" & CVar(var_D34.Text) & ",OrderBookCom1='" & CVar(var_B58) & "',OrderBookCom2='" 
  loc_1CD9DE4:   var_EA8 = var_D78 & CVar(var_D80.Text) & "',SaleBillTokenHeader1='" & CVar(var_DCC.Text) & "',PrintOnSave='" & Trim(CVar(var_E18)) & "',AutoSettlement='" 
  loc_1CD9E14:   var_FBC = var_EA8 & Trim(CVar(var_E64)) & "',WScaleApp='" & Trim(CVar(var_EB0)) & "',BarCodeApp='" & Trim(CVar(var_EFC)) & "',AutoResetToken='" 
  loc_1CD9E44:   var_10C4 = var_FBC & Trim(CVar(var_F54)) & "',FreeItemApp='" & Trim(CVar(var_FAC)) & "',CoverMandatory='" & Trim(CVar(var_1004)) & "',MobileNoMandatory='" 
  loc_1CD9E78:   var_1194 = var_10C4 & Trim(CVar(var_105C)) & "',DirectBilling='" & Trim(CVar(var_10B4)) & "',BookOfBills=" & CVar(var_1164.Value) & ",GrpDiscApp='" 
  loc_1CD9EAC:   unk_51C266.Execute CStr(var_1194 & IIf((var_D6 = 1), "Y", "N") & "' Where Code='" & CVar(global_68) & "'"), var_1290, -1
  loc_1CDA0CC: End If
  loc_1CDA107: Set var_C8 = Me.Txt
  loc_1CDA10D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, var_160, "Select Count(*) from RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_F8, -1, var_D0)
  loc_1CDA115: var_1A8 = var_CC.Text
  loc_1CDA121: var_1AC = var_160 & " - DISCOUNT"
  loc_1CDA125: var_1B0 = 0 & var_294.Text
  loc_1CDA135: unk_51C266.Execute var_1B0 & "'", var_1B8, var_118
  loc_1CDA13D: var_11B8 = var_D0.Fields
  loc_1CDA145:  = var_1A8.Item(var_CC)
  loc_1CDA14D:  = var_1B8.Value
  loc_1CDA180: If (var_118 = 0) Then
  loc_1CDA193:   var_118 = Right(var_AC, 3)
  loc_1CDA1A4:   var_1320 = Val(CStr(var_118))
  loc_1CDA1DB:   var_138 = CVar((var_1320 + CDbl(1))) 'Double
  loc_1CDA1EA:   var_184 = (1 + Format(var_AC & var_118, "000"))
  loc_1CDA1EF:   var_AC = CStr(Trim(CVar(var_1A8)))
  loc_1CDA218:   var_D4 = "Insert Into RevMast(Code,DeskCode,Name,ShortName,SysYN,Type,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,AcCode,FieldType,LogSite_Code) Values ('" & var_AC
  loc_1CDA230:   Set var_C8 = Me.Txt
  loc_1CDA236:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_160, var_D4 & "','", var_1F4)
  loc_1CDA23E:   -1 = var_CC.Tag
  loc_1CDA25F:   Set var_D0 = Me.Txt
  loc_1CDA265:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_1B0, var_1C0 & var_160 & "','")
  loc_1CDA26D:   1 = var_1A8.Text
  loc_1CDA279:   var_1C8 = var_1B0 & " - DISCOUNT"
  loc_1CDA284:   var_24C = Left(var_AC, 3) & var_378.Text & "','"
  loc_1CDA295:   Set var_1B8 = Me.Txt
  loc_1CDA29B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1BC, var_210)
  loc_1CDA2A3:   var_24C = var_1BC.Text
  loc_1CDA2D5:   var_F8 = Date
  loc_1CDA2E0:   Proc_6_7_F25D88(var_118, var_F8)
  loc_1CDA2E8:   var_15C = CVar(var_1320 & var_210 & "','Y','Dr','Amount','Detail','POS','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") & var_118 
  loc_1CDA325:   unk_51C266.Execute CStr(var_15C & ",'A','" & CVar(var_B8) & "','C','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1CDA375: End If
  loc_1CDA3B0: Set var_C8 = Me.Txt
  loc_1CDA3B6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, var_160, "Select Count(*) from RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_F8, -1)
  loc_1CDA3CA: var_1AC = var_160 & " - ROUND-OFF"
  loc_1CDA3CE: var_1B0 = var_1A8 & var_1C0 & var_160
  loc_1CDA3DE: unk_51C266.Execute var_1B0 & "'", 0, var_1B8
  loc_1CDA3EE:  = var_1A8.Item()
  loc_1CDA3F6:  = var_1B8.Value
  loc_1CDA429: If (var_CC.Text.Fields = 0) Then
  loc_1CDA43C:   var_118 = Right(var_AC, 3)
  loc_1CDA44D:   var_1320 = Val(CStr(var_118))
  loc_1CDA484:   var_138 = CVar((var_1320 + CDbl(1))) 'Double
  loc_1CDA48B:   var_170 = Format(CVar(var_1320 & var_210 & "','Y','Dr','Amount','Detail','POS','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',"), "000")
  loc_1CDA493:   var_184 = (1 + var_170)
  loc_1CDA4C1:   var_D4 = "Insert Into RevMast(Code,DeskCode,Name,ShortName,SysYN,Type,AppMode,FlagAMR,FlagType,Site_Code,U_Name,U_EntDt,U_AE,AcCode,FieldType,LogSite_Code) Values ('" & CStr("000" & ",'A','" & CVar(var_B8))
  loc_1CDA4D9:   Set var_C8 = Me.Txt
  loc_1CDA4DF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_160, var_D4 & "','", var_1F4)
  loc_1CDA4E7:   -1 = var_CC.Tag
  loc_1CDA508:   Set var_D0 = Me.Txt
  loc_1CDA50E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_1B0, var_1C0 & var_160 & "','")
  loc_1CDA516:   1 = var_1A8.Text
  loc_1CDA522:   var_1C8 = var_1B0 & " - ROUND-OFF"
  loc_1CDA52D:   var_24C = Left(CStr("000" & ",'A','" & CVar(var_B8)), 3) & var_378.Text & "','"
  loc_1CDA53E:   Set var_1B8 = Me.Txt
  loc_1CDA544:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1BC, var_210)
  loc_1CDA54C:   var_24C = var_1BC.Text
  loc_1CDA589:   Proc_6_7_F25D88(var_118, Date)
  loc_1CDA591:   var_15C = CVar(var_1320 & var_210 & "','Y','Cr','Amount','Detail','POS','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") & var_118 
  loc_1CDA5CE:   unk_51C266.Execute CStr(var_15C & ",'A','" & CVar(var_BC) & "','C','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1CDA61E: End If
  loc_1CDA622: Set var_C8 = Me.TopCtrl1
  loc_1CDA628: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1CDA641: If (CStr() = "Add") Then
  loc_1CDA64F:   If (global_56 = "Banquet") Then
  loc_1CDA663:     Set var_C8 = Me.Txt
  loc_1CDA669:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDA67A:     var_A8 = "HB" & var_CC.Text
  loc_1CDA698:     Set var_C8 = Me.Txt
  loc_1CDA69E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDA6AF:     var_B0 = "HC" & var_CC.Text
  loc_1CDA6D0:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HSBILL','HSBIL','" & var_98
  loc_1CDA6F9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','" & var_A8 & "','"))
  loc_1CDA701:     var_F8 = CVar(var_CC) 'Address
  loc_1CDA715:     var_138 = (Trim(var_F8) + " Bill Entry")
  loc_1CDA719:     var_170 = var_3BC & CVar(var_1320 & var_210 & "','Y','Cr','Amount','Detail','POS','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") 
  loc_1CDA731:     Set var_D0 = Me.Txt
  loc_1CDA737:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDA753:     var_1E4 = (Trim(CVar(var_1A8)) + " Bill Entry")
  loc_1CDA757:     var_1F4 = -1 & CVar(var_D4 & "','" & var_A8 & "','") & ",'A','" & CVar(var_BC) & "','C','" & CVar(MemVar_1F92078) & "')" 
  loc_1CDA77A:     Proc_6_104_ED5D18(var_240, var_1F4 & "','" & CVar(var_98) & "','',0,'Automatic',")
  loc_1CDA7A5:     Proc_6_104_ED5D18(var_2B8)
  loc_1CDA7B6:     var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F920C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDA7C8:     Set var_1B8 = Me.Txt
  loc_1CDA7CE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDA807:     var_38C = var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) 
  loc_1CDA81E:     unk_51C266.Execute CStr(var_38C & "')"), , 
  loc_1CDA88C:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98
  loc_1CDA8A1:     Proc_6_7_F25D88(var_F8, MemVar_1F920F4, CVar(var_D4 & "',"))
  loc_1CDA8C1:     Proc_6_7_F25D88(var_170, MemVar_1F920FC, var_2B8 & var_F8 & ",")
  loc_1CDA8C9:     var_184 = -1 & var_170 
  loc_1CDA905:     var_220 = var_170 & "','" & ",'" & Year(MemVar_1F920F4) & "',0,'" & CVar(MemVar_1F92070) & "'," 
  loc_1CDA917:     Proc_6_7_F25D88(var_240, Date)
  loc_1CDA932:     var_28C = var_220 & var_240 & ",'" & CVar(MemVar_1F92078) 
  loc_1CDA949:     unk_51C266.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDA995:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HSBOOK','HSBK','" & var_A8
  loc_1CDA9B0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','Booking Entry ("))
  loc_1CDA9B8:     var_F8 = CVar(var_CC) 'Address
  loc_1CDA9D0:     var_170 = var_38C & Trim(var_F8) & ")','Booking Entry (" 
  loc_1CDA9DF:     Set var_D0 = Me.Txt
  loc_1CDA9E5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170)
  loc_1CDA9FC:     var_1A4 = -1 & Trim(CVar(var_1A8)) 
  loc_1CDAA1F:     Proc_6_104_ED5D18(var_220, Year(MemVar_1F920F4) & ")','" & CVar(var_A8) & "','',0,'Automatic',")
  loc_1CDAA30:     var_240 = var_1C0 & var_220 & ",'','N','Y','','Y','','','','','','" 
  loc_1CDAA4A:     Proc_6_104_ED5D18(var_28C)
  loc_1CDAA5B:     var_2B8 = var_240 & CVar(MemVar_1F920C8) & "'," & var_28C & ",'A','N','N','N',0,'" 
  loc_1CDAA6D:     Set var_1B8 = Me.Txt
  loc_1CDAA73:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDAAC3:     unk_51C266.Execute CStr(var_2B8 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1CDAB29:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_A8
  loc_1CDAB3E:     Proc_6_7_F25D88(var_F8, MemVar_1F920F4, CVar(var_D4 & "',"))
  loc_1CDAB5E:     Proc_6_7_F25D88(var_170, MemVar_1F920FC, var_2B8 & var_F8 & ",")
  loc_1CDAB66:     var_184 = -1 & var_170 
  loc_1CDABA2:     var_220 = CVar(var_1A8) & ",'" & Year(MemVar_1F920F4) & "',0,'" & CVar(MemVar_1F92070) & "'," 
  loc_1CDABB4:     Proc_6_7_F25D88(var_240, Date)
  loc_1CDABCF:     var_28C = var_220 & var_240 & ",'" & CVar(MemVar_1F92078) 
  loc_1CDABE6:     unk_51C266.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDAC32:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HSBOOK','HSBK','" & var_B0
  loc_1CDAC4D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','N.C. Booking Entry ("))
  loc_1CDAC55:     var_F8 = CVar(var_CC) 'Address
  loc_1CDAC6D:     var_170 = var_38C & Trim(var_F8) & ")','N.C. Booking Entry (" 
  loc_1CDAC7C:     Set var_D0 = Me.Txt
  loc_1CDAC82:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170)
  loc_1CDAC99:     var_1A4 = -1 & Trim(CVar(var_1A8)) 
  loc_1CDACBC:     Proc_6_104_ED5D18(var_220, Year(MemVar_1F920F4) & ")','" & CVar(var_B0) & "','',0,'Automatic',")
  loc_1CDACCD:     var_240 = var_1C0 & var_220 & ",'','N','Y','','Y','','','','','','" 
  loc_1CDACE7:     Proc_6_104_ED5D18(var_28C)
  loc_1CDACF8:     var_2B8 = var_240 & CVar(MemVar_1F920C8) & "'," & var_28C & ",'A','N','N','N',0,'" 
  loc_1CDAD0A:     Set var_1B8 = Me.Txt
  loc_1CDAD10:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDAD60:     unk_51C266.Execute CStr(var_2B8 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1CDADC6:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_B0
  loc_1CDADDB:     Proc_6_7_F25D88(var_F8, MemVar_1F920F4, CVar(var_D4 & "',"))
  loc_1CDADFB:     Proc_6_7_F25D88(var_170, MemVar_1F920FC, var_2B8 & var_F8 & ",")
  loc_1CDAE03:     var_184 = -1 & var_170 
  loc_1CDAE51:     Proc_6_7_F25D88(var_240, Date)
  loc_1CDAE6C:     var_28C = CVar(var_1A8) & ",'" & Year(MemVar_1F920F4) & "',0,'" & CVar(MemVar_1F92070) & "'," & var_240 & ",'" & CVar(MemVar_1F92078) 
  loc_1CDAE83:     unk_51C266.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDAEBE:   Else
  loc_1CDAECF:     Set var_C8 = Me.Txt
  loc_1CDAED5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDAEE6:     var_A8 = "K" & var_CC.Text
  loc_1CDAF07:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('RSKOT','RSKOT','" & var_A8
  loc_1CDAF22:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','"))
  loc_1CDAF2A:     var_F8 = CVar(var_CC) 'Address
  loc_1CDAF3E:     var_138 = (Trim(var_F8) + " KOT Entry")
  loc_1CDAF42:     var_170 = var_3BC & var_2B8 & var_F8 
  loc_1CDAF5A:     Set var_D0 = Me.Txt
  loc_1CDAF60:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDAF7C:     var_1E4 = (Trim(CVar(var_1A8)) + " KOT Entry")
  loc_1CDAF80:     var_1F4 = -1 & CVar(var_1A8) & ",'" & Year(MemVar_1F920F4) 
  loc_1CDAFA3:     Proc_6_104_ED5D18(var_240, CVar(var_1A8) & ",'" & Year(MemVar_1F920F4) & "',0,'" & "','" & CVar(var_A8) & "','',0,'Automatic',")
  loc_1CDAFCE:     Proc_6_104_ED5D18(var_2B8)
  loc_1CDAFDF:     var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F920C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDAFF1:     Set var_1B8 = Me.Txt
  loc_1CDAFF7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDB047:     unk_51C266.Execute CStr(var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1CDB0B1:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_A8
  loc_1CDB0C6:     Proc_6_7_F25D88(var_F8, MemVar_1F920F4, CVar(var_D4 & "',"))
  loc_1CDB0E6:     Proc_6_7_F25D88(var_170, MemVar_1F920FC, var_2B8 & var_F8 & ",")
  loc_1CDB0EE:     var_184 = -1 & var_170 
  loc_1CDB13C:     Proc_6_7_F25D88(var_240, Date)
  loc_1CDB157:     var_28C = var_170 & "','" & ",'" & Year(MemVar_1F920F4) & "',0,'" & CVar(MemVar_1F92070) & "'," & var_240 & ",'" & CVar(MemVar_1F92078) 
  loc_1CDB16E:     unk_51C266.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDB1BA:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('RSBILL','RSBIL','" & var_98
  loc_1CDB1E3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','" & var_A8 & "','"))
  loc_1CDB1EB:     var_F8 = CVar(var_CC) 'Address
  loc_1CDB1FF:     var_138 = (Trim(var_F8) + " Memo Entry")
  loc_1CDB203:     var_170 = var_3BC & var_2B8 & var_F8 
  loc_1CDB21B:     Set var_D0 = Me.Txt
  loc_1CDB221:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDB23D:     var_1E4 = (Trim(CVar(var_1A8)) + " Memo Entry")
  loc_1CDB241:     var_1F4 = -1 & var_170 & "','" & ",'" & Year(MemVar_1F920F4) 
  loc_1CDB264:     Proc_6_104_ED5D18(var_240, var_170 & "','" & ",'" & Year(MemVar_1F920F4) & "',0,'" & "','" & CVar(var_98) & "','',0,'Automatic',")
  loc_1CDB28F:     Proc_6_104_ED5D18(var_2B8)
  loc_1CDB2A0:     var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F920C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDB2B2:     Set var_1B8 = Me.Txt
  loc_1CDB2B8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDB308:     unk_51C266.Execute CStr(var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1CDB376:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98
  loc_1CDB38B:     Proc_6_7_F25D88(var_F8, MemVar_1F920F4, CVar(var_D4 & "',"))
  loc_1CDB3AB:     Proc_6_7_F25D88(var_170, MemVar_1F920FC, var_2B8 & var_F8 & ",")
  loc_1CDB3B3:     var_184 = -1 & var_170 
  loc_1CDB401:     Proc_6_7_F25D88(var_240, Date)
  loc_1CDB41C:     var_28C = var_170 & "','" & ",'" & Year(MemVar_1F920F4) & "',0,'" & CVar(MemVar_1F92070) & "'," & var_240 & ",'" & CVar(MemVar_1F92078) 
  loc_1CDB433:     unk_51C266.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDB47C:     Set var_C8 = Me.Txt
  loc_1CDB482:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDB493:     var_A8 = "T" & var_CC.Text
  loc_1CDB4B4:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('RSTKN','RSTKN','" & var_A8
  loc_1CDB4CF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','"))
  loc_1CDB4D7:     var_F8 = CVar(var_CC) 'Address
  loc_1CDB4EB:     var_138 = (Trim(var_F8) + " TOKEN Entry")
  loc_1CDB4EF:     var_170 = var_3BC & var_2B8 & var_F8 
  loc_1CDB507:     Set var_D0 = Me.Txt
  loc_1CDB50D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDB529:     var_1E4 = (Trim(CVar(var_1A8)) + " TOKEN Entry")
  loc_1CDB52D:     var_1F4 = -1 & var_170 & "','" & ",'" & Year(MemVar_1F920F4) 
  loc_1CDB550:     Proc_6_104_ED5D18(var_240, var_170 & "','" & ",'" & Year(MemVar_1F920F4) & "',0,'" & "','" & CVar(var_A8) & "','',0,'Automatic',")
  loc_1CDB57B:     Proc_6_104_ED5D18(var_2B8)
  loc_1CDB58C:     var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F920C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDB59E:     Set var_1B8 = Me.Txt
  loc_1CDB5A4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDB5F4:     unk_51C266.Execute CStr(var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1CDB65E:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_A8
  loc_1CDB673:     Proc_6_7_F25D88(var_F8, MemVar_1F920F4, CVar(var_D4 & "',"))
  loc_1CDB693:     Proc_6_7_F25D88(var_170, MemVar_1F920FC, var_2B8 & var_F8 & ",")
  loc_1CDB69B:     var_184 = -1 & var_170 
  loc_1CDB6E9:     Proc_6_7_F25D88(var_240, Date)
  loc_1CDB704:     var_28C = var_170 & "','" & ",'" & Year(MemVar_1F920F4) & "',0,'" & CVar(MemVar_1F92070) & "'," & var_240 & ",'" & CVar(MemVar_1F92078) 
  loc_1CDB71B:     unk_51C266.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDB764:     Set var_C8 = Me.Txt
  loc_1CDB76A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDB77B:     var_B0 = "N" & var_CC.Text
  loc_1CDB796:     Set var_C8 = Me.Txt
  loc_1CDB79C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC)
  loc_1CDB7BB:     If (var_CC.Text = "Yes") Then
  loc_1CDB7D2:       var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('RSKOT','RSKOT','" & var_B0
  loc_1CDB7ED:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','"))
  loc_1CDB7F5:       var_F8 = CVar(var_CC) 'Address
  loc_1CDB809:       var_138 = (Trim(var_F8) + " N.C.KOT Entry")
  loc_1CDB80D:       var_170 = var_3BC & var_2B8 & var_F8 
  loc_1CDB825:       Set var_D0 = Me.Txt
  loc_1CDB82B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDB847:       var_1E4 = (Trim(CVar(var_1A8)) + " N.C.KOT Entry")
  loc_1CDB84B:       var_1F4 = -1 & var_170 & "','" & ",'" & Year(MemVar_1F920F4) 
  loc_1CDB86E:       Proc_6_104_ED5D18(var_240, var_170 & "','" & ",'" & Year(MemVar_1F920F4) & "',0,'" & "','" & CVar(var_B0) & "','',0,'Automatic',")
  loc_1CDB899:       Proc_6_104_ED5D18(var_2B8)
  loc_1CDB8AA:       var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F920C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDB8BC:       Set var_1B8 = Me.Txt
  loc_1CDB8C2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDB912:       unk_51C266.Execute CStr(var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1CDB97C:       var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_B0
  loc_1CDB991:       Proc_6_7_F25D88(var_F8, MemVar_1F920F4, CVar(var_D4 & "',"))
  loc_1CDB9B1:       Proc_6_7_F25D88(var_170, MemVar_1F920FC, var_2B8 & var_F8 & ",")
  loc_1CDB9B9:       var_184 = -1 & var_170 
  loc_1CDBA07:       Proc_6_7_F25D88(var_240, Date)
  loc_1CDBA22:       var_28C = var_170 & "','" & ",'" & Year(MemVar_1F920F4) & "',0,'" & CVar(MemVar_1F92070) & "'," & var_240 & ",'" & CVar(MemVar_1F92078) 
  loc_1CDBA39:       unk_51C266.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDBA74:     Else
  loc_1CDBA82:       Set var_C8 = Me.Txt
  loc_1CDBA88:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC)
  loc_1CDBAA7:       If (var_CC.Text = "No") Then
  loc_1CDBABE:         var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('RSTKN','RSTKN','" & var_B0
  loc_1CDBAD9:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','"))
  loc_1CDBAE1:         var_F8 = CVar(var_CC) 'Address
  loc_1CDBAF5:         var_138 = (Trim(var_F8) + " N.C.TOKEN Entry")
  loc_1CDBAF9:         var_170 = var_3BC & var_2B8 & var_F8 
  loc_1CDBB11:         Set var_D0 = Me.Txt
  loc_1CDBB17:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDBB33:         var_1E4 = (Trim(CVar(var_1A8)) + " N.C.TOKEN Entry")
  loc_1CDBB37:         var_1F4 = -1 & var_170 & "','" & ",'" & Year(MemVar_1F920F4) 
  loc_1CDBB5A:         Proc_6_104_ED5D18(var_240, var_170 & "','" & ",'" & Year(MemVar_1F920F4) & "',0,'" & "','" & CVar(var_B0) & "','',0,'Automatic',")
  loc_1CDBB85:         Proc_6_104_ED5D18(var_2B8)
  loc_1CDBB96:         var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F920C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDBBA8:         Set var_1B8 = Me.Txt
  loc_1CDBBAE:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDBBFE:         unk_51C266.Execute CStr(var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1CDBC68:         var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_B0
  loc_1CDBC7D:         Proc_6_7_F25D88(var_F8, MemVar_1F920F4, CVar(var_D4 & "',"))
  loc_1CDBC9D:         Proc_6_7_F25D88(var_170, MemVar_1F920FC, var_2B8 & var_F8 & ",")
  loc_1CDBCA5:         var_184 = -1 & var_170 
  loc_1CDBCF3:         Proc_6_7_F25D88(var_240, Date)
  loc_1CDBD0E:         var_28C = var_170 & "','" & ",'" & Year(MemVar_1F920F4) & "',0,'" & CVar(MemVar_1F92070) & "'," & var_240 & ",'" & CVar(MemVar_1F92078) 
  loc_1CDBD25:         unk_51C266.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDBD5D:       End If
  loc_1CDBD5D:     End If
  loc_1CDBD6D:     Set var_C8 = Me.Txt
  loc_1CDBD73:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDBD8A:     var_138 = ("O" + Trim(CVar(var_CC)))
  loc_1CDBD8F:     var_A0 = CStr(var_2B8 & CVar(var_CC))
  loc_1CDBDB2:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('ORDER','ORDER','" & var_A0
  loc_1CDBDCD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','"))
  loc_1CDBDD5:     var_F8 = CVar(var_CC) 'Address
  loc_1CDBDE9:     var_138 = (Trim(var_F8) + " Booking Entry")
  loc_1CDBDED:     var_170 = var_3BC & var_2B8 & var_F8 
  loc_1CDBE05:     Set var_D0 = Me.Txt
  loc_1CDBE0B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDBE27:     var_1E4 = (Trim(CVar(var_1A8)) + " Booking Entry")
  loc_1CDBE2B:     var_1F4 = -1 & var_170 & "','" & ",'" & Year(MemVar_1F920F4) 
  loc_1CDBE4E:     Proc_6_104_ED5D18(var_240, var_170 & "','" & ",'" & Year(MemVar_1F920F4) & "',0,'" & "','" & CVar(var_A0) & "','',0,'Automatic',")
  loc_1CDBE79:     Proc_6_104_ED5D18(var_2B8)
  loc_1CDBE8A:     var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F920C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDBE9C:     Set var_1B8 = Me.Txt
  loc_1CDBEA2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDBEF2:     unk_51C266.Execute CStr(var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1CDBF5C:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_A0
  loc_1CDBF71:     Proc_6_7_F25D88(var_F8, MemVar_1F920F4, CVar(var_D4 & "',"))
  loc_1CDBF91:     Proc_6_7_F25D88(var_170, MemVar_1F920FC, var_2B8 & var_F8 & ",")
  loc_1CDBF99:     var_184 = -1 & var_170 
  loc_1CDBFE7:     Proc_6_7_F25D88(var_240, Date)
  loc_1CDC002:     var_28C = var_170 & "','" & ",'" & Year(MemVar_1F920F4) & "',0,'" & CVar(MemVar_1F92070) & "'," & var_240 & ",'" & CVar(MemVar_1F92078) 
  loc_1CDC019:     unk_51C266.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDC061:     Set var_C8 = Me.Txt
  loc_1CDC067:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDC07E:     var_138 = ("A" + Trim(CVar(var_CC)))
  loc_1CDC083:     var_A4 = CStr(var_2B8 & CVar(var_CC))
  loc_1CDC0A6:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('POSAdvance','PADV','" & var_A4
  loc_1CDC0C1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','"))
  loc_1CDC0C9:     var_F8 = CVar(var_CC) 'Address
  loc_1CDC0DD:     var_138 = (Trim(var_F8) + " Advance Entry")
  loc_1CDC0E1:     var_170 = var_3BC & var_2B8 & var_F8 
  loc_1CDC0F9:     Set var_D0 = Me.Txt
  loc_1CDC0FF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDC11B:     var_1E4 = (Trim(CVar(var_1A8)) + " Advance Entry")
  loc_1CDC11F:     var_1F4 = -1 & var_170 & "','" & ",'" & Year(MemVar_1F920F4) 
  loc_1CDC142:     Proc_6_104_ED5D18(var_240, var_170 & "','" & ",'" & Year(MemVar_1F920F4) & "',0,'" & "','" & CVar(var_A4) & "','',0,'Automatic',")
  loc_1CDC16D:     Proc_6_104_ED5D18(var_2B8)
  loc_1CDC17E:     var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F920C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDC190:     Set var_1B8 = Me.Txt
  loc_1CDC196:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDC1E6:     unk_51C266.Execute CStr(var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1CDC250:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_A4
  loc_1CDC265:     Proc_6_7_F25D88(var_F8, MemVar_1F920F4, CVar(var_D4 & "',"))
  loc_1CDC285:     Proc_6_7_F25D88(var_170, MemVar_1F920FC, var_2B8 & var_F8 & ",")
  loc_1CDC28D:     var_184 = -1 & var_170 
  loc_1CDC2DB:     Proc_6_7_F25D88(var_240, Date)
  loc_1CDC2F6:     var_28C = var_170 & "','" & ",'" & Year(MemVar_1F920F4) & "',0,'" & CVar(MemVar_1F92070) & "'," & var_240 & ",'" & CVar(MemVar_1F92078) 
  loc_1CDC30D:     unk_51C266.Execute CStr(var_28C & "' )"), Me.Txt, 
  loc_1CDC355:     Set var_C8 = Me.Txt
  loc_1CDC35B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC)
  loc_1CDC372:     var_138 = ("P" + Trim(CVar(var_CC)))
  loc_1CDC377:     var_B4 = CStr(var_2B8 & CVar(var_CC))
  loc_1CDC39A:     var_D4 = "Insert Into Voucher_type (Category,NCat,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('POSPayment','PPMT','" & var_B4
  loc_1CDC3B5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_CC, CVar(var_D4 & "','','"))
  loc_1CDC3BD:     var_F8 = CVar(var_CC) 'Address
  loc_1CDC3D1:     var_138 = (Trim(var_F8) + " Payment Receive")
  loc_1CDC3D5:     var_170 = var_3BC & var_2B8 & var_F8 
  loc_1CDC3ED:     Set var_D0 = Me.Txt
  loc_1CDC3F3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1A8, var_170 & "','")
  loc_1CDC40F:     var_1E4 = (Trim(CVar(var_1A8)) + " Payment Receive")
  loc_1CDC413:     var_1F4 = -1 & var_170 & "','" & ",'" & Year(MemVar_1F920F4) 
  loc_1CDC436:     Proc_6_104_ED5D18(var_240, var_170 & "','" & ",'" & Year(MemVar_1F920F4) & "',0,'" & "','" & CVar(var_B4) & "','',0,'Automatic',")
  loc_1CDC461:     Proc_6_104_ED5D18(var_2B8)
  loc_1CDC472:     var_2F4 = var_1C0 & var_240 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F920C8) & "'," & var_2B8 & ",'A','N','N','N',0,'" 
  loc_1CDC484:     Set var_1B8 = Me.Txt
  loc_1CDC48A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1BC)
  loc_1CDC4D0:     var_174 = CStr(var_2F4 & CVar(var_1BC.Tag) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')")
  loc_1CDC4DA:     unk_51C266.Execute var_174, , 
  loc_1CDC544:     var_D4 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_B4
  loc_1CDC559:     Proc_6_7_F25D88(var_F8, MemVar_1F920F4, CVar(var_D4 & "',"))
  loc_1CDC579:     Proc_6_7_F25D88(var_170, MemVar_1F920FC, var_2B8 & var_F8 & ",")
  loc_1CDC581:     var_184 = -1 & var_170 
  loc_1CDC58A:     var_194 = var_170 & "','" & ",'" 
  loc_1CDC5CF:     Proc_6_7_F25D88(var_240, Date)
  loc_1CDC5F7:     var_160 = CStr(var_194 & Year(MemVar_1F920F4) & "',0,'" & CVar(MemVar_1F92070) & "'," & var_240 & ",'" & CVar(MemVar_1F92078) & "' )")
  loc_1CDC601:     unk_51C266.Execute var_160, Me.Txt, 
  loc_1CDC647:     Set var_C8 = Me.Txt
  loc_1CDC64D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC)
  loc_1CDC66C:     If (var_CC.Text = "LAUNDRY") Then
  loc_1CDC67D:       Set var_C8 = Me.Txt
  loc_1CDC683:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC)
  loc_1CDC69E:       Set var_D0 = Me.Txt
  loc_1CDC6A4:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8)
  loc_1CDC6AC:       var_D4 = var_1A8.Tag
  loc_1CDC6C3:       var_1B4 = vbNullString
  loc_1CDC6F7:       Proc_165_0_14CCEC0(var_CC.Text, &HF, 3, vbNullString, vbNullString)
  loc_1CDC722:       Set var_C8 = Me.Txt
  loc_1CDC728:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC, var_D4, &HFF)
  loc_1CDC730:       var_1B4 = var_CC.Text
  loc_1CDC747:       If (var_D4 = "Yes") Then
  loc_1CDC758:         Set var_C8 = Me.Txt
  loc_1CDC75E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174)
  loc_1CDC766:         0 = var_CC.Text
  loc_1CDC779:         Set var_D0 = Me.Txt
  loc_1CDC77F:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8)
  loc_1CDC787:         var_D4 = var_1A8.Tag
  loc_1CDC79E:         var_1B4 = vbNullString
  loc_1CDC7D2:         Proc_165_0_14CCEC0("LOT Entry", &HF, 0, var_174, vbNullString)
  loc_1CDC7FD:         Set var_C8 = Me.Txt
  loc_1CDC803:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, 0)
  loc_1CDC80B:         var_1B4 = var_CC.Text
  loc_1CDC81E:         Set var_D0 = Me.Txt
  loc_1CDC824:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDC82C:         0 = var_1A8.Tag
  loc_1CDC843:         var_1B4 = vbNullString
  loc_1CDC877:         Proc_165_0_14CCEC0("LOT Transfer", &HF, 0, var_174, vbNullString, &HA)
  loc_1CDC897:       Else
  loc_1CDC8A5:         Set var_C8 = Me.Txt
  loc_1CDC8AB:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC, var_D4, var_1B4)
  loc_1CDC8B3:         0 = var_CC.Text
  loc_1CDC8CA:         If (var_D4 = "No") Then
  loc_1CDC8DB:           Set var_C8 = Me.Txt
  loc_1CDC8E1:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174)
  loc_1CDC8FC:           Set var_D0 = Me.Txt
  loc_1CDC902:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_CC.Text)
  loc_1CDC90A:           var_D4 = var_1A8.Tag
  loc_1CDC921:           var_1B4 = vbNullString
  loc_1CDC955:           Proc_165_0_14CCEC0("LOT Entry", &HF, 2, var_174, vbNullString)
  loc_1CDC980:           Set var_C8 = Me.Txt
  loc_1CDC986:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, 0)
  loc_1CDC98E:           var_1B4 = var_CC.Text
  loc_1CDC9A1:           Set var_D0 = Me.Txt
  loc_1CDC9A7:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDC9AF:           0 = var_1A8.Tag
  loc_1CDC9C6:           var_1B4 = vbNullString
  loc_1CDC9FA:           Proc_165_0_14CCEC0("LOT Transfer", &HF, 2, var_174, vbNullString, &HA)
  loc_1CDCA17:         End If
  loc_1CDCA17:       End If
  loc_1CDCA25:       Set var_C8 = Me.Txt
  loc_1CDCA2B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, var_1B4)
  loc_1CDCA33:       0 = var_CC.Text
  loc_1CDCA46:       Set var_D0 = Me.Txt
  loc_1CDCA4C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDCA9F:       Proc_165_0_14CCEC0("Laundry Memo", &HF, 0, var_174, vbNullString, 2)
  loc_1CDCACA:       Set var_C8 = Me.Txt
  loc_1CDCAD0:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDCAD8:       0 = var_CC.Text
  loc_1CDCAEB:       Set var_D0 = Me.Txt
  loc_1CDCAF1:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CDCAF9:       var_D4 = var_1A8.Tag
  loc_1CDCB10:       var_1B4 = vbNullString
  loc_1CDCB3E:       var_160 = "Memo Reprint"
  loc_1CDCB44:       Proc_165_0_14CCEC0(var_160, &HF, 0, var_174, vbNullString, 4)
  loc_1CDCB64:     Else
  loc_1CDCB72:       Set var_C8 = Me.Txt
  loc_1CDCB78:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_D4, var_1B4)
  loc_1CDCB80:       0 = var_CC.Text
  loc_1CDCB97:       If (var_D4 = "MINI BAR") Then
  loc_1CDCBA8:         Set var_C8 = Me.Txt
  loc_1CDCBAE:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_160)
  loc_1CDCBC9:         Set var_D0 = Me.Txt
  loc_1CDCBCF:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_CC.Text)
  loc_1CDCBD7:         var_D4 = var_1A8.Tag
  loc_1CDCBEE:         var_1B4 = vbNullString
  loc_1CDCC22:         Proc_165_0_14CCEC0(var_160, &HF, 3, vbNullString, vbNullString)
  loc_1CDCC4D:         Set var_C8 = Me.Txt
  loc_1CDCC53:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC, var_D4, &HFF)
  loc_1CDCC5B:         var_1B4 = var_CC.Text
  loc_1CDCC72:         If (var_D4 = "Yes") Then
  loc_1CDCC83:           Set var_C8 = Me.Txt
  loc_1CDCC89:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174)
  loc_1CDCC91:           0 = var_CC.Text
  loc_1CDCCA4:           Set var_D0 = Me.Txt
  loc_1CDCCAA:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDCCB2:           var_D4 = var_1A8.Tag
  loc_1CDCCC9:           var_1B4 = vbNullString
  loc_1CDCCFD:           Proc_165_0_14CCEC0("KOT Entry", &HF, 0, var_174, vbNullString)
  loc_1CDCD28:           Set var_C8 = Me.Txt
  loc_1CDCD2E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, 0)
  loc_1CDCD36:           var_1B4 = var_CC.Text
  loc_1CDCD49:           Set var_D0 = Me.Txt
  loc_1CDCD4F:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDCD57:           0 = var_1A8.Tag
  loc_1CDCD6E:           var_1B4 = vbNullString
  loc_1CDCDA2:           Proc_165_0_14CCEC0("KOT Transfer", &HF, 0, var_174, vbNullString, &HA)
  loc_1CDCDC2:         Else
  loc_1CDCDD0:           Set var_C8 = Me.Txt
  loc_1CDCDD6:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC, var_D4, var_1B4)
  loc_1CDCDDE:           0 = var_CC.Text
  loc_1CDCDF5:           If (var_D4 = "No") Then
  loc_1CDCE06:             Set var_C8 = Me.Txt
  loc_1CDCE0C:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174)
  loc_1CDCE27:             Set var_D0 = Me.Txt
  loc_1CDCE2D:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_CC.Text)
  loc_1CDCE35:             var_D4 = var_1A8.Tag
  loc_1CDCE4C:             var_1B4 = vbNullString
  loc_1CDCE80:             Proc_165_0_14CCEC0("KOT Entry", &HF, 2, var_174, vbNullString)
  loc_1CDCEAB:             Set var_C8 = Me.Txt
  loc_1CDCEB1:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, 0)
  loc_1CDCEB9:             var_1B4 = var_CC.Text
  loc_1CDCECC:             Set var_D0 = Me.Txt
  loc_1CDCED2:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDCEDA:             0 = var_1A8.Tag
  loc_1CDCEF1:             var_1B4 = vbNullString
  loc_1CDCF25:             Proc_165_0_14CCEC0("KOT Transfer", &HF, 2, var_174, vbNullString, &HA)
  loc_1CDCF42:           End If
  loc_1CDCF42:         End If
  loc_1CDCF50:         Set var_C8 = Me.Txt
  loc_1CDCF56:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, var_1B4)
  loc_1CDCF5E:         0 = var_CC.Text
  loc_1CDCF71:         Set var_D0 = Me.Txt
  loc_1CDCF77:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDCFCA:         Proc_165_0_14CCEC0("Sale Bill Entry", &HF, 0, var_174, vbNullString, 2)
  loc_1CDCFF5:         Set var_C8 = Me.Txt
  loc_1CDCFFB:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDD003:         0 = var_CC.Text
  loc_1CDD016:         Set var_D0 = Me.Txt
  loc_1CDD01C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CDD024:         var_D4 = var_1A8.Tag
  loc_1CDD03B:         var_1B4 = vbNullString
  loc_1CDD069:         var_160 = "POS Bill Reprint"
  loc_1CDD06F:         Proc_165_0_14CCEC0(var_160, &HF, 0, var_174, vbNullString, 4)
  loc_1CDD08F:       Else
  loc_1CDD09D:         Set var_C8 = Me.Txt
  loc_1CDD0A3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_160, var_1B4)
  loc_1CDD0AB:         0 = var_CC.Text
  loc_1CDD0BE:         Set var_D0 = Me.Txt
  loc_1CDD0C4:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDD0CC:         var_D4 = var_1A8.Tag
  loc_1CDD117:         Proc_165_0_14CCEC0(var_160, &H11, 3, vbNullString, vbNullString, &HFF)
  loc_1CDD142:         Set var_C8 = Me.Txt
  loc_1CDD148:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC, var_D4, vbNullString)
  loc_1CDD150:         0 = var_CC.Text
  loc_1CDD167:         If (var_D4 = "Yes") Then
  loc_1CDD178:           Set var_C8 = Me.Txt
  loc_1CDD17E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174)
  loc_1CDD199:           Set var_D0 = Me.Txt
  loc_1CDD19F:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_CC.Text)
  loc_1CDD1A7:           var_D4 = var_1A8.Tag
  loc_1CDD1BE:           var_1B4 = vbNullString
  loc_1CDD1F2:           Proc_165_0_14CCEC0("KOT Entry", &H11, 0, var_174, vbNullString)
  loc_1CDD21D:           Set var_C8 = Me.Txt
  loc_1CDD223:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, 0)
  loc_1CDD22B:           var_1B4 = var_CC.Text
  loc_1CDD23E:           Set var_D0 = Me.Txt
  loc_1CDD244:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDD24C:           0 = var_1A8.Tag
  loc_1CDD297:           Proc_165_0_14CCEC0("Table Change Entry", &H11, 0, var_174, vbNullString, 1)
  loc_1CDD2C2:           Set var_C8 = Me.Txt
  loc_1CDD2C8:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDD2D0:           0 = var_CC.Text
  loc_1CDD2E3:           Set var_D0 = Me.Txt
  loc_1CDD2E9:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDD33C:           Proc_165_0_14CCEC0("KOT Transfer", &H11, 0, var_174, vbNullString, &HA)
  loc_1CDD367:           Set var_C8 = Me.Txt
  loc_1CDD36D:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDD375:           0 = var_CC.Text
  loc_1CDD388:           Set var_D0 = Me.Txt
  loc_1CDD38E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CDD396:           var_D4 = var_1A8.Tag
  loc_1CDD3AD:           var_1B4 = vbNullString
  loc_1CDD3E1:           Proc_165_0_14CCEC0("Token Entry", &H11, 2, var_174, vbNullString, &HB)
  loc_1CDD401:         Else
  loc_1CDD40F:           Set var_C8 = Me.Txt
  loc_1CDD415:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_CC, var_D4, var_1B4)
  loc_1CDD41D:           0 = var_CC.Text
  loc_1CDD434:           If (var_D4 = "No") Then
  loc_1CDD445:             Set var_C8 = Me.Txt
  loc_1CDD44B:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174)
  loc_1CDD466:             Set var_D0 = Me.Txt
  loc_1CDD46C:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_CC.Text)
  loc_1CDD474:             var_D4 = var_1A8.Tag
  loc_1CDD48B:             var_1B4 = vbNullString
  loc_1CDD4BF:             Proc_165_0_14CCEC0("KOT Entry", &H11, 2, var_174, vbNullString)
  loc_1CDD4EA:             Set var_C8 = Me.Txt
  loc_1CDD4F0:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, 0)
  loc_1CDD4F8:             var_1B4 = var_CC.Text
  loc_1CDD50B:             Set var_D0 = Me.Txt
  loc_1CDD511:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDD519:             0 = var_1A8.Tag
  loc_1CDD564:             Proc_165_0_14CCEC0("Table Change Entry", &H11, 2, var_174, vbNullString, 1)
  loc_1CDD58F:             Set var_C8 = Me.Txt
  loc_1CDD595:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDD59D:             0 = var_CC.Text
  loc_1CDD5B0:             Set var_D0 = Me.Txt
  loc_1CDD5B6:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDD609:             Proc_165_0_14CCEC0("KOT Transfer", &H11, 2, var_174, vbNullString, &HA)
  loc_1CDD634:             Set var_C8 = Me.Txt
  loc_1CDD63A:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDD642:             0 = var_CC.Text
  loc_1CDD655:             Set var_D0 = Me.Txt
  loc_1CDD65B:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CDD663:             var_D4 = var_1A8.Tag
  loc_1CDD67A:             var_1B4 = vbNullString
  loc_1CDD6AE:             Proc_165_0_14CCEC0("Token Entry", &H11, 0, var_174, vbNullString, &HB)
  loc_1CDD6CB:           End If
  loc_1CDD6CB:         End If
  loc_1CDD6D9:         Set var_C8 = Me.Txt
  loc_1CDD6DF:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, var_1B4)
  loc_1CDD6E7:         0 = var_CC.Text
  loc_1CDD6FA:         Set var_D0 = Me.Txt
  loc_1CDD700:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDD753:         Proc_165_0_14CCEC0("Sale Bill Entry", &H11, 0, var_174, vbNullString, 2)
  loc_1CDD77E:         Set var_C8 = Me.Txt
  loc_1CDD784:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDD78C:         0 = var_CC.Text
  loc_1CDD79F:         Set var_D0 = Me.Txt
  loc_1CDD7A5:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CDD7F8:         Proc_165_0_14CCEC0("Settlement Entry", &H11, 0, var_174, vbNullString, 3)
  loc_1CDD823:         Set var_C8 = Me.Txt
  loc_1CDD829:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDD831:         0 = var_CC.Text
  loc_1CDD844:         Set var_D0 = Me.Txt
  loc_1CDD84A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CDD89D:         Proc_165_0_14CCEC0("POS Bill Reprint", &H11, 0, var_174, vbNullString, 4)
  loc_1CDD8C8:         Set var_C8 = Me.Txt
  loc_1CDD8CE:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDD8D6:         0 = var_CC.Text
  loc_1CDD8E9:         Set var_D0 = Me.Txt
  loc_1CDD8EF:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CDD942:         Proc_165_0_14CCEC0("Split Sale Bill", &H11, 0, var_174, vbNullString, 5)
  loc_1CDD96D:         Set var_C8 = Me.Txt
  loc_1CDD973:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDD97B:         0 = var_CC.Text
  loc_1CDD98E:         Set var_D0 = Me.Txt
  loc_1CDD994:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CDD99C:         var_D4 = var_1A8.Tag
  loc_1CDD9E7:         Proc_165_0_14CCEC0("Display Table", &H11, 0, var_174, vbNullString, 6)
  loc_1CDDA0F:         Set var_C8 = Me.Txt
  loc_1CDDA15:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_CC, vbNullString, 0)
  loc_1CDDA1D:         var_F8 = CVar(var_CC) 'Address
  loc_1CDDA24:         var_118 = Trim(var_F8)
  loc_1CDDA3E:         If (var_118 = "Yes") Then
  loc_1CDDA4F:           Set var_C8 = Me.Txt
  loc_1CDDA55:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174)
  loc_1CDDA70:           Set var_D0 = Me.Txt
  loc_1CDDA76:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_CC.Text)
  loc_1CDDA7E:           var_D4 = var_1A8.Tag
  loc_1CDDA95:           var_1B4 = vbNullString
  loc_1CDDAC9:           Proc_165_0_14CCEC0("Order Booking", &H11, 0, var_174, vbNullString)
  loc_1CDDAF4:           Set var_C8 = Me.Txt
  loc_1CDDAFA:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, 7)
  loc_1CDDB02:           var_1B4 = var_CC.Text
  loc_1CDDB15:           Set var_D0 = Me.Txt
  loc_1CDDB1B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDDB23:           0 = var_1A8.Tag
  loc_1CDDB3A:           var_1B4 = vbNullString
  loc_1CDDB6E:           Proc_165_0_14CCEC0("Order Booking Advance", &H11, 0, var_174, vbNullString, 9)
  loc_1CDDB8E:         Else
  loc_1CDDB9C:           Set var_C8 = Me.Txt
  loc_1CDDBA2:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, var_1B4)
  loc_1CDDBAA:           0 = var_CC.Text
  loc_1CDDBBD:           Set var_D0 = Me.Txt
  loc_1CDDBC3:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDDC16:           Proc_165_0_14CCEC0("Order Booking", &H11, 2, var_174, vbNullString, 7)
  loc_1CDDC41:           Set var_C8 = Me.Txt
  loc_1CDDC47:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, vbNullString)
  loc_1CDDC4F:           0 = var_CC.Text
  loc_1CDDC62:           Set var_D0 = Me.Txt
  loc_1CDDC68:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_1A8.Tag)
  loc_1CDDC70:           var_D4 = var_1A8.Tag
  loc_1CDDC87:           var_1B4 = vbNullString
  loc_1CDDCBB:           Proc_165_0_14CCEC0("Order Booking Advance", &H11, 2, var_174, vbNullString, 9)
  loc_1CDDCD8:         End If
  loc_1CDDCE6:         Set var_C8 = Me.Txt
  loc_1CDDCEC:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_174, var_1B4)
  loc_1CDDCF4:         0 = var_CC.Text
  loc_1CDDD07:         Set var_D0 = Me.Txt
  loc_1CDDD0D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A8, var_D4)
  loc_1CDDD15:         var_D4 = var_1A8.Tag
  loc_1CDDD2C:         var_1B4 = vbNullString
  loc_1CDDD60:         Proc_165_0_14CCEC0("Bill Lookup", &H11, 0, var_174, vbNullString, 8)
  loc_1CDDD7D:       End If
  loc_1CDDD7D:     End If
  loc_1CDDD7D:   End If
  loc_1CDDD7D: End If
  loc_1CDDD9B: Set var_C8 = Me.Txt
  loc_1CDDDA1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_D4, "Delete From SchemeOutletDiscount Where RestCode='", var_F8, -1)
  loc_1CDDDA9: var_D0 = var_CC.Tag
  loc_1CDDDC2: unk_51C266.Execute var_1B4 & var_D4 & "'", 0, var_D4
  loc_1CDDE01: For var_134C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_94 = var_134C 'Integer
  loc_1CDDE0B:   var_E8 = CVar(CLng(var_94)) 'Long
  loc_1CDDE13:   var_128 = CVar(CLng(1)) 'Long
  loc_1CDDE3E:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1CDDE45:     var_E8 = CVar(CLng(var_94)) 'Long
  loc_1CDDE4D:     var_128 = CVar(CLng(1)) 'Long
  loc_1CDDE5C:     var_F8 = Me.FGrid.TextMatrix)
  loc_1CDDE7C:     var_D4 = CStr(var_F8)
  loc_1CDDE90:     unk_51C266.Execute "Select * From SchemeMast Where Code='" & var_D4 & "'", var_118, -1
  loc_1CDDE9B:     Set var_9C = var_CC
  loc_1CDDEC3:     Set var_C8 = Me.Txt
  loc_1CDDEC9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_D4, var_CC, var_F8, var_128)
  loc_1CDDED1:     var_E8 = var_CC.Tag
  loc_1CDDED9:     var_E8 = "StartDate"
  loc_1CDDEE5:     var_D0 = var_9C.Fields
  loc_1CDDEFC:     Proc_6_7_F25D88(var_118, CVar(var_D0.Item(var_E8)), var_128, var_E8)
  loc_1CDDF27:     Proc_6_7_F25D88(var_194, CVar(var_9C.Fields.Item("EndDate")), 1)
  loc_1CDDFB4:     var_2A8 = "HH:nn"
  loc_1CDDFE3:     var_304 = Me.FGrid.TextMatrix)
  loc_1CDE01D:     var_1320 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1CDE048:     var_1C8 = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Active")), var_1320, CVar(CLng(3)), CVar(CLng(var_94)), var_304, CVar(CLng(1)))
  loc_1CDE080:     Proc_6_7_F25D88(var_4E0, Date, CVar(CLng(var_94)), 1)
  loc_1CDE099:     var_160 = "Insert into SchemeOutletDiscount(RestCode,Appdate,EndDate,FromTime,ToTime,SchemeCode,DiscPer,Active,Days,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_D4
  loc_1CDE0C6:     var_240 = CVar(var_160 & "',") & var_118 & "," & var_194 & ",'" & Format(CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("FromTime")), var_D4)), "HH:nn") 
  loc_1CDE0E7:     var_324 = CVar(CStr(var_304)) 'String
  loc_1CDE0F3:     var_350 = var_240 & "','" & Format(CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("ToTime")), 1)), var_2A8) & "','" & var_324 & "'," 
  loc_1CDE13D:     var_46C = var_350 & CVar(var_1320) & ",'" & CVar(var_1C8) & "'," & var_9C.Fields.Item("DAYS").Value & ",'" & CVar(MemVar_1F92070) & "','" 
  loc_1CDE181:     unk_51C266.Execute CStr(var_46C & CVar(MemVar_1F920C8) & "'," & var_4E0 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_56C, -1
  loc_1CDE211:   End If
  loc_1CDE214: Next var_134C 'Integer
  loc_1CDE237: Set var_C8 = Me.Txt
  loc_1CDE23D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_D4, "Delete From OutletBarCodePartDetail Where RestCode='")
  loc_1CDE245: var_F8 = var_CC.Tag
  loc_1CDE24E: var_160 = -1 & var_D4
  loc_1CDE25E: unk_51C266.Execute var_160 & "'", var_D0, 
  loc_1CDE29D: For var_1350 = 1 To CInt((CLng(Me.FGBarCode.Rows) - 1)): var_94 = var_1350 'Integer
  loc_1CDE2A7:   var_E8 = CVar(CLng(var_94)) 'Long
  loc_1CDE2AF:   var_128 = CVar(CLng(1)) 'Long
  loc_1CDE2C9:   var_D4 = CStr(Me.FGBarCode.TextMatrix))
  loc_1CDE2DA:   If (var_D4 <> vbNullString) Then
  loc_1CDE2EB:     Set var_C8 = Me.Txt
  loc_1CDE2F1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC, var_D4)
  loc_1CDE2F9:     var_128 = var_CC.Tag
  loc_1CDE302:     var_E8 = CVar(CLng(var_94)) 'Long
  loc_1CDE30A:     var_128 = CVar(CLng(1)) 'Long
  loc_1CDE324:     var_118 = CVar(CStr(Me.FGBarCode.TextMatrix))) 'String
  loc_1CDE32A:     var_138 = Trim(var_118)
  loc_1CDE333:     var_2C8 = CVar(CLng(var_94)) 'Long
  loc_1CDE33B:     var_360 = CVar(CLng(2)) 'Long
  loc_1CDE35D:     var_1320 = Val(CStr(Me.FGBarCode.TextMatrix)))
  loc_1CDE38E:     var_1328 = Val(CStr(Me.FGBarCode.TextMatrix)))
  loc_1CDE39F:     Proc_6_7_F25D88(var_2A8, Date, var_1328, CVar(CLng(3)), CVar(CLng(var_94)), var_1320)
  loc_1CDE3B8:     var_160 = "Insert into OutletBarCodePartDetail(RestCode,BarCodePart,BarCodeStartFrom,BarCodeLength,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_D4
  loc_1CDE3BF:     var_15C = CVar(var_160 & "','") 'String
  loc_1CDE413:     var_25C = var_15C & var_138 & "'," & CVar(var_1320) & "," & CVar(var_1328) & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_1CDE44D:     unk_51C266.Execute CStr(var_25C & "'," & var_2A8 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_324, -1
  loc_1CDE49F:   End If
  loc_1CDE4A2: Next var_1350 'Integer
  loc_1CDE4AD: unk_51C266.CommitTrans
  loc_1CDE4C0: Set var_C8 = Me.Txt
  loc_1CDE4C6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_CC)
  loc_1CDE4D6: var_90 = var_CC.Tag
  loc_1CDE4E2: var_8A = 0
  loc_1CDE4F0: Me.Requery -1
  loc_1CDE500: Me.Requery -1
  loc_1CDE509: Set var_C8 = Me.TopCtrl1
  loc_1CDE50F: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_8A)
  loc_1CDE528: If (CStr() = "Add") Then
  loc_1CDE563:   If (MsgBox(CVar("Reload Application to update menu settings" & vbCrLf & "Want to Reload Application ?"), 4, var_118, var_138, var_15C) = 6) Then
  loc_1CDE566:     End
  loc_1CDE568:   End If
  loc_1CDE568: End If
  loc_1CDE58D: Me.Find "SearchCode ='" & var_90 & "'", 0, 1
  loc_1CDE59D: Set var_C8 = Me.TopCtrl1
  loc_1CDE5A3: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E8)
  loc_1CDE5BC: If (CStr() = "Add") Then
  loc_1CDE5BF:   Call TopCtrl1_UnknownEvent_A()
  loc_1CDE5C4:   Exit Sub
  loc_1CDE5C5: End If
  loc_1CDE5E8: Call Proc_70_58_EBAEB4(Proc_5_1_100CB50("INI", Me))
  loc_1CDE5F3: Call Proc_70_57_178749C(global_64)
  loc_1CDE5FD: Set var_88 = Nothing
  loc_1CDE600: Exit Sub
  loc_1CDE601: ' Referenced from: 1CD793C
  loc_1CDE607: If (var_8A = &HFF) Then
  loc_1CDE610:   unk_51C266.RollbackTrans
  loc_1CDE615: End If
  loc_1CDE615: Proc_6_60_E62BC4()
  loc_1CDE61A: Exit Sub
  loc_1CDE61B: Exit Sub
End Sub

Private Sub Command1_Click() 'EE8B44
  'Data Table: 51C244
  Dim var_88 As Variant
  Dim var_A0 As TextBox
  loc_EE8AA0: If (Me.Command1.Caption = "Show Print Details") Then
  loc_EE8AB0:   Me.Command1.Caption = "Hide Print Details"
  loc_EE8AC4:   Me.Frame1.Visible = True
  loc_EE8AD0:   Set var_88 = Me.TopCtrl1
  loc_EE8AD6:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_EE8AEF:   If (CStr() <> "Browse") Then
  loc_EE8AFD:     Set var_88 = Me.Txt
  loc_EE8B03:     Call 0.Method_Command1_Click0 (CInt(&H11))
  loc_EE8B0B:     var_A0.SetFocus
  loc_EE8B17:   End If
  loc_EE8B1A: Else
  loc_EE8B27:   Me.Command1.Caption = "Show Print Details"
  loc_EE8B3B:   Me.Frame1.Visible = False
  loc_EE8B43: End If
  loc_EE8B43: Exit Sub
End Sub

Private Sub Label1_Click(Index As Integer) 'E992B8
  'Data Table: 51C244
  Dim var_88 As CommonDialog
  Dim arg_20 As Variant
  Dim var_A4 As Label
  loc_E99244: Set var_88 = Me.TopCtrl1
  loc_E9924A: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E99263: If (CStr() <> "Browse") Then
  loc_E99270:   arg_20 = Me.CDLG._Action
  loc_E99298:   Set var_A0 = Me.Label1
  loc_E9929E:   Call 0.Method_Label1_Click0 (Index, var_A4)
  loc_E992A6:   var_A4.BackColor = CLng(Me.CDLG.Color)
  loc_E992B7: End If
  loc_E992B7: Exit Sub
End Sub

Private Sub FGBarCode_UnknownEvent_0 'E60434
  'Data Table: 51C244
  Dim var_A8 As MSFlexGrid
  Dim var_AC As TextBox
  loc_E603FF: Me.FGBarCode.BackColorSel = CVar(CLng("14737632"))
  loc_E60412: Set var_A8 = Me.TxtGrid
  loc_E60418: Call 0.Method_FGBarCode_UnknownEvent_00 (1, var_AC)
  loc_E60420: var_AC.Visible = False
  loc_E6042C: Call Proc_70_59_F1BE04()
  loc_E60431: Exit Sub
End Sub

Private Sub FGBarCode_UnknownEvent_9 'E4ECFC
  'Data Table: 51C244
  loc_E4ECD4: Set var_88 = Me.TopCtrl1
  loc_E4ECDA: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4ECF3: If (CStr() <> "Browse") Then
  loc_E4ECF6:   Call Proc_70_66_E4543C()
  loc_E4ECFB: End If
  loc_E4ECFB: Exit Sub
End Sub

Public Sub FGBarCode_UnknownEvent_A(arg_C, arg_10) '10DA400
  'Data Table: 51C244
  Dim var_9C As String
  Dim var_B4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim var_D4 As Variant
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10DA0F8: Set var_88 = Me.TopCtrl1
  loc_10DA0FE: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10DA143: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_10DA14C:   Call Form_KeyDown(arg_C, arg_10)
  loc_10DA151: End If
  loc_10DA155: Set var_88 = Me.TopCtrl1
  loc_10DA15B: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10DA174: If (CStr() = "Browse") Then
  loc_10DA177:   Exit Sub
  loc_10DA178: End If
  loc_10DA1EC: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGBarCode.Tag))) = CDbl((CLng(Me.FGBarCode.Rows) - (CLng(Me.FGBarCode.Rows) - 1))))) Then
  loc_10DA205:   Me.FGBarCode.CellBackColor = CVar(CLng(global_108))
  loc_10DA215:   var_9C = "+{Tab}"
  loc_10DA21B:   Proc_303_0_FB9B68(CStr(Me.FGBarCode.Tag), 0)
  loc_10DA225:   arg_C = 0
  loc_10DA22B: Else
  loc_10DA282:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGBarCode.Tag))) = CDbl((CLng(Me.FGBarCode.Rows) - 1)))) Then
  loc_10DA29B:     Me.FGBarCode.CellBackColor = CVar(CLng(global_108))
  loc_10DA2A5:     arg_C = 0
  loc_10DA2A8:   End If
  loc_10DA2A8: End If
  loc_10DA2AE: global_72 = arg_C
  loc_10DA2D4: Me.FGBarCode.Tag = CVar(CStr(CLng(Me.FGBarCode.Row)))
  loc_10DA2F8: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_10DA30E:   var_EC = CLng(Me.FGBarCode.Col)
  loc_10DA31E:   If (var_EC = CLng(1)) Then
  loc_10DA334:     var_D4 = CVar(CLng(Me.FGBarCode.Row)) 'Long
  loc_10DA34C:     var_FC = CVar(CLng(Me.FGBarCode.Col)) 'Long
  loc_10DA351:     var_11C = vbNullString
  loc_10DA35B:     Set var_B4 = Me.FGBarCode
  loc_10DA361:     LateIdCallSt
  loc_10DA37C:   Else
  loc_10DA383:     If Not (var_EC = CLng(2)) Then
  loc_10DA38D:       If (var_EC = CLng(3)) Then
  loc_10DA390:       End If
  loc_10DA3A3:       var_D4 = CVar(CLng(Me.FGBarCode.Row)) 'Long
  loc_10DA3BB:       var_FC = CVar(CLng(Me.FGBarCode.Col)) 'Long
  loc_10DA3C0:       var_11C = vbNullString
  loc_10DA3CA:       Set var_B4 = Me.FGBarCode
  loc_10DA3D0:       LateIdCallSt
  loc_10DA3E8:     End If
  loc_10DA3E8:   End If
  loc_10DA3E8: End If
  loc_10DA3EE: If (arg_C = &HD) Then
  loc_10DA3F6:   global_104 = 0
  loc_10DA3F9: End If
  loc_10DA3FB: arg_C = 0
  loc_10DA3FE: Exit Sub
End Sub

Private Sub FGBarCode_UnknownEvent_B 'E5D754
  'Data Table: 51C244
  loc_E5D718: Set var_88 = Me.TopCtrl1
  loc_E5D71E: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5D737: If (CStr() = "Browse") Then
  loc_E5D73A:   Exit Sub
  loc_E5D73B: End If
  loc_E5D744: Call FGBarCode_UnknownEvent_C()
  loc_E5D74E: global_104 = 0
  loc_E5D751: Exit Sub
End Sub

Public Sub FGBarCode_UnknownEvent_C(Index As Integer) '101AE8C
  'Data Table: 51C244
  Dim var_9C As String
  Dim var_88 As MSFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_101AC74: Set var_88 = Me.TopCtrl1
  loc_101AC7A: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_101AC93: If (CStr() = "Browse") Then
  loc_101AC96:   Exit Sub
  loc_101AC97: End If
  loc_101ACAA: var_A0 = CLng(Me.FGBarCode.Col)
  loc_101ACBA: If (var_A0 = CLng(1)) Then
  loc_101ACC1:   Set var_C4 = Me.FGBarCode
  loc_101ACE5:   var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_101AD12:   Set var_B4 = var_C4
  loc_101AD24:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 1, 0)
  loc_101AD4C:   Set var_88 = Me.TxtGrid
  loc_101AD52:   Call 0.Method_FGBarCode_UnknownEvent_C0 (1, var_B4, var_9C, Asc(var_9C))
  loc_101AD5A:   0 = var_B4.Text
  loc_101AD73:   If (Len(var_9C) <= 1) Then
  loc_101AD82:     Set var_88 = Me.TxtGrid
  loc_101AD88:     Call 0.Method_FGBarCode_UnknownEvent_C0 (1, var_B4, var_9C)
  loc_101AD90:     var_CA = var_B4.Text
  loc_101ADA1:     Set var_B8 = Me.TxtGrid
  loc_101ADA7:     Call 0.Method_FGBarCode_UnknownEvent_C0 (1, var_C4)
  loc_101ADAF:     var_C4.Text = var_9C
  loc_101ADC2:   End If
  loc_101ADCE:   Set var_88 = Me.TxtGrid
  loc_101ADD4:   Call 0.Method_FGBarCode_UnknownEvent_C0 (1, var_B4)
  loc_101ADEE:   Set var_B8 = Me.TxtGrid
  loc_101ADF4:   Call 0.Method_FGBarCode_UnknownEvent_C0 (1, var_C4)
  loc_101ADFC:   var_C4.SelStart = Len(var_B4.Text)
  loc_101AE12: Else
  loc_101AE19:   If Not (var_A0 = CLng(2)) Then
  loc_101AE23:     If (var_A0 = CLng(3)) Then
  loc_101AE26:     End If
  loc_101AE64:     Proc_6_63_110ABA4(Me, Me.FGBarCode, Me.TxtGrid, 1)
  loc_101AE76:   End If
  loc_101AE76: End If
  loc_101AE80: If (CLng(Index) <> &HD) Then
  loc_101AE88:   global_104 = &HFF
  loc_101AE8B: End If
  loc_101AE8B: Exit Sub
End Sub

Public Sub FGBarCode_UnknownEvent_D(arg_C, arg_10) 'FE5D28
  'Data Table: 51C244
  Dim var_88 As MSFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE5B58: Set var_88 = Me.TopCtrl1
  loc_FE5B5E: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE5B77: If (CStr() = "Browse") Then
  loc_FE5B7A:   Exit Sub
  loc_FE5B7B: End If
  loc_FE5B98: If (CLng(Me.FGBarCode.ColSel) = CLng(0)) Then
  loc_FE5B9B:   Exit Sub
  loc_FE5B9C: End If
  loc_FE5BAD: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FE5BCF:   If (CLng(Me.FGBarCode.Row) >= 1) Then
  loc_FE5C09:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE5C2B:       If (CLng(Me.FGBarCode.Rows) > 2) Then
  loc_FE5C41:         var_AC = CVar(CLng(Me.FGBarCode.Row)) 'Long
  loc_FE5C4A:         Set var_110 = Me.FGBarCode
  loc_FE5C65:       Else
  loc_FE5C78:         Me.FGBarCode.Rows = 1
  loc_FE5C9E:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGBarCode, CInt(0)))) 'String
  loc_FE5CA6:         Set var_110 = Me.FGBarCode
  loc_FE5CD3:         Me.FGBarCode.FixedRows = 1
  loc_FE5CDB:       End If
  loc_FE5CDB:     End If
  loc_FE5CDE:   Else
  loc_FE5CFF:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE5D0F:   End If
  loc_FE5D13:   Set var_88 = Me.FGBarCode
  loc_FE5D24: End If
  loc_FE5D24: Exit Sub
  loc_FE5D25: Exit Sub
End Sub

Private Sub FGBarCode_UnknownEvent_15 'E453DC
  'Data Table: 51C244
  Dim var_8C As TextBox
  loc_E453B0: Call Proc_70_59_F1BE04()
  loc_E453C0: Set var_88 = Me.TxtGrid
  loc_E453C6: Call 0.Method_FGBarCode_UnknownEvent_150 (1, var_8C)
  loc_E453CE: var_8C.Visible = False
  loc_E453DA: Exit Sub
End Sub

Private Sub Form_Load() '116B2C8
  'Data Table: 51C244
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_C4 As Variant
  Dim var_C8 As TextBox
  Dim var_D0 As DataGrid
  Dim var_D4 As TextBox
  Dim var_DC As DataGrid
  Dim var_B4 As String
  Dim Me As Recordset15
  Dim var_E0 As String
  Dim arg_DFF As Double
  loc_116AF0C: On Error Goto loc_116B2BF
  loc_116AF25: Proc_6_23_DFBA28(Me, 0)
  loc_116AF34: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_116AF48: Me.LblUser.Left = CDbl(13500)
  loc_116AF5F: Me.LblUser.Top = CDbl(7800)
  loc_116AF76: Me.LblLDt.Top = CDbl(8160)
  loc_116AF8D: Me.LblLDt.Left = CDbl(13500)
  loc_116AFA8: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_116AFC3: Me.FGBarCode.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_116AFD9: Me.Frame1.BackColor = CLng(MemVar_1F921B0)
  loc_116AFEB: Set var_8C = Me.TopCtrl1
  loc_116AFF1: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_116AFFF: Call 0.Method_arg_50 (var_B4)
  loc_116B00F: Set var_8C = Me.TopCtrl1
  loc_116B015: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B4))
  loc_116B02E: Set var_8C = Me.Txt
  loc_116B034: Call 0.Method_Form_Load0 (CInt(&H28), var_C8)
  loc_116B053: If (var_C8.Text = "No") Then
  loc_116B065:   Me.FGBarCode.Visible = False
  loc_116B06D: End If
  loc_116B07B: Set var_8C = Me.Txt
  loc_116B081: Call 0.Method_Form_Load0 (CInt(0), var_C8)
  loc_116B0A0: Me.DGHelp.Left = CVar(var_C8.Left)
  loc_116B0BC: Set var_D0 = Me.Txt
  loc_116B0C2: Call 0.Method_Form_Load0 (CInt(0), var_D4)
  loc_116B0DD: Set var_8C = Me.Txt
  loc_116B0E3: Call 0.Method_Form_Load0 (CInt(0), var_C8)
  loc_116B0FB: var_A0 = CVar(((var_C8.Top + var_D4.Height) + CDbl(&H1E))) 'Single
  loc_116B104: Set var_DC = Me.DGHelp
  loc_116B10A: var_DC.Top = CVar(var_C8.Left)
  loc_116B126: Set global_60 = New 
  loc_116B138: Me.var_DC.CursorLocation = 3
  loc_116B148: If (global_56 = "Banquet") Then
  loc_116B170:   var_C4 = CVar("Select Code,Name,RestType  From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and RestType in ('Banquet')  Order by Name") 'String
  loc_116B17A:   Me.Open var_C4, CVar(MemVar_1F92044), 3
  loc_116B188: Else
  loc_116B1AD:   var_C4 = CVar("Select Code,Name,RestType  From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and RestType not in ('House Keeping','Kitchen','Banquet') AND RestType IN ('Outlet','Room Service') Order by Name") 'String
  loc_116B1B7:   Me.Open var_C4, CVar(MemVar_1F92044), 3
  loc_116B1C2: End If
  loc_116B1CB: CVarUnk
  loc_116B1D0: VerifyVarObj
  loc_116B1D6: Set var_8C = Me.DGHelp
  loc_116B1DC: LateIdStAd
  loc_116B206: Me.DGHelp.CursorLocation = 3
  loc_116B229: var_B4 = "SELECT SplitBill,R.Code AS SEARCHCODE,P_Name=CASE R.PartyName WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Name,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Header1,R.Header2,R.Header3,R.Header4,R.Phone,R.Slogan1,R.Slogan2,R.LstNo,Comp1=CASE R.CompanyTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END,Outl=CASE R.OutletTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END," & "MemberInfo=CASE R.MemberInfo WHEN 'Y' THEN 'Yes' ELSE 'No' END,D1=CASE R.POS WHEN 'Y' THEN 'Yes' ELSE 'No' END,LinkRoom=CASE R.LinkToRoom WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncl=CASE R.RateInclTax WHEN 'Y' THEN 'Yes' ELSE 'No' END,DiscApp=CASE R.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,Roff=CASE R.Roff WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.U_Name,R.RestType,R.BackColor,R.ShortName,R.SITE_CODE,R.LOGSITE_CODE,TokenPrint,TokenPrintAfter,PrintTokenNo,Order_Booking=CASE R.Order_Booking WHEN 'Y' THEN 'Yes' ELSE 'No' END,CustInfo=CASE R.CustInfo WHEN 'Y' THEN 'Yes' ELSE 'No' END,DisPrint=CASE R.DisPrint WHEN 'Y' THEN 'Yes' ELSE 'No' END,LabelPrinting=CASE R.LabelPrinting WHEN 'Y' THEN 'Yes' ELSE 'No' END,CstNo,"
  loc_116B230: var_E0 = var_B4 & "CKOTPrintYN=CASE R.CKOTPrintYN WHEN 'Y' THEN 'Yes' ELSE 'No' END,PrintType,BarCodePartitionAppOn,CKOTPrintPath,CurTokenNo,CurTokenNoKOT,NoOfKot,NoOfBill,OrderBookCom1,OrderBookCom2,SaleBillTokenHeader1,PrintOnSave,AutoSettlement,WScaleApp,BarCodeApp,AutoResetToken,FreeItemApp,CoverMandatory,MobileNoMandatory,DirectBilling,BookOfBills,GrpDiscApp From Depart R "
  loc_116B245: var_C4 = CVar(var_E0 & "Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and RestType<>'Banquet' and OutletYN='Y' Order by R.Name") 'String
  loc_116B24F: Me.Open var_C4, CVar(MemVar_1F92044), 3
  loc_116B26E: Set var_8C = Me
  loc_116B285: Call Proc_70_58_EBAEB4(Proc_5_1_100CB50("INI", var_8C, New, 1, -1, var_8C), global_60, 1, -1)
  loc_116B299: Call 0.Method_arg_160 (var_8C, 1)
  loc_116B2A7: Call 0.Method_arg_164 (var_8C, -1)
  loc_116B2AF: Call Proc_70_64_101A284(0)
  loc_116B2B4: Call Proc_70_67_10056D8()
  loc_116B2B9: Call Proc_70_57_178749C()
  loc_116B2BE: Exit Sub
  loc_116B2BF: ' Referenced from: 116AF0C
  loc_116B2BF: Proc_6_60_E62BC4()
  loc_116B2C4: Exit Sub
  loc_116B2C5: arg_DFF = 
End Sub

Private Sub Form_Resize() 'ED24E8
  'Data Table: 51C244
  Dim var_8C As Label
  loc_ED2446: Call 0.Method_arg_50 (var_88)
  loc_ED2458: Me.LblFormCaption.Caption = var_88
  loc_ED2471: Me.LblFormCaption.Left = CDbl(0)
  loc_ED247D: Set var_A0 = Me.TopCtrl1
  loc_ED2483: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED2490: Set var_8C = Me.TopCtrl1
  loc_ED2496: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED24B0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED24CB: Call 0.Method_arg_100 (var_B8)
  loc_ED24DD: Me.LblFormCaption.Width = var_B8
  loc_ED24E5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E44698
  'Data Table: 51C244
  loc_E44673: Set global_64 = Nothing
  loc_E44685: Set global_60 = Nothing
  loc_E44691: global_52 = 0
  loc_E44694: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25FEC
  'Data Table: 51C244
  loc_E25FD1: If (global_52 = &HFF) Then
  loc_E25FE1:   Me.Global.Unload Me
  loc_E25FE9: End If
  loc_E25FE9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2738C
  'Data Table: 51C244
  loc_E27364: On Error Goto loc_E27384
  loc_E2737B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E27383: Exit Sub
  loc_E27384: ' Referenced from: E27364
  loc_E27384: Proc_6_60_E62BC4(Shift)
  loc_E27389: Exit Sub
End Sub

Private Sub ListView1_UnknownEvent_13 'EB38A0
  'Data Table: 51C244
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_EB382C: Set var_9C = Me.ListView1.SelectedItem
  loc_EB3843: Set var_A4 = Me.TxtGrid
  loc_EB3849: Call 0.Method_ListView1_UnknownEvent_130 (1, var_A8)
  loc_EB3851: var_A8.Text = var_9C.Text
  loc_EB3873: Me.FrmList1.Visible = False
  loc_EB3884: Set var_88 = Me.TxtGrid
  loc_EB388A: Call 0.Method_ListView1_UnknownEvent_130 (1)
  loc_EB3892: var_9C.SetFocus
  loc_EB389E: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1210A6C
  'Data Table: 51C244
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_C4 As TextBox
  loc_12105AE: Set var_88 = Me.Txt
  loc_12105B4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12105C2: Proc_6_74_E226B0(var_8C)
  loc_12105CE: Call Proc_70_59_F1BE04(var_8C)
  loc_12105D6: var_92 = Index
  loc_12105E1: If (var_92 = CInt(0)) Then
  loc_12105FB:   If (Me.RecordCount > 0) Then
  loc_1210609:     Set var_8C = Me.FGPoint
  loc_1210621:     Proc_6_137_1193554(Me.DGHelp, global_60, Index)
  loc_121062F:   End If
  loc_1210632: Else
  loc_121063A:   If (var_92 = CInt(1)) Then
  loc_1210648:     If (global_56 = "Banquet") Then
  loc_1210658:       ReDim var_9C(0 To 0)
  loc_121066F:       var_9C(0) = "Banquet"
  loc_1210691:       Set var_C4 = Me.ListView
  loc_12106AC:       Set var_8C = Me.Txt
  loc_12106C6:       Set global_92 = Proc_6_66_EFF8FC(var_C4, var_8C, Index, Array(var_9C))
  loc_12106E4:       Set var_88 = Me.Txt
  loc_12106EA:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC, 1)
  loc_12106F2:       global_76 = var_8C.Text
  loc_1210704:       Set var_90 = Me.Txt
  loc_121070A:       Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_CC)
  loc_1210712:       var_C4.Tag = var_8C
  loc_1210728:     Else
  loc_1210735:       ReDim var_9C(0 To 2)
  loc_121074C:       var_9C(0) = "Outlet"
  loc_121075B:       var_9C(1) = "Room Service"
  loc_121076A:       var_9C(2) = "Production"
  loc_1210781:       global_76 = Array(var_9C)
  loc_121078C:       Set var_C4 = Me.ListView
  loc_12107A7:       Set var_8C = Me.Txt
  loc_12107C1:       Set global_92 = Proc_6_66_EFF8FC(var_C4, var_8C, Index, global_76)
  loc_12107DF:       Set var_88 = Me.Txt
  loc_12107E5:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC)
  loc_12107ED:       3 = var_8C.Text
  loc_12107FF:       Set var_90 = Me.Txt
  loc_1210805:       Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_CC)
  loc_121080D:       var_C4.Tag = global_76
  loc_1210820:     End If
  loc_1210823:   Else
  loc_121082B:     If (var_92 = CInt(&H25)) Then
  loc_121083B:       ReDim var_9C(0 To 5)
  loc_1210852:       var_9C(0) = "3 INCH RUNNING PAPER (NORMAL PRINTER)"
  loc_1210861:       var_9C(1) = "3 INCH RUNNING PAPER (THERMAL PRINTER)"
  loc_1210870:       var_9C(2) = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)"
  loc_121087F:       var_9C(3) = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)"
  loc_121088E:       var_9C(4) = "3 INCH RUNNING PAPER WINPRINT"
  loc_121089D:       var_9C(5) = "ADJUSTABLE WINDOWS KOT PRINT"
  loc_12108B4:       global_76 = Array(var_9C)
  loc_12108BF:       Set var_C4 = Me.ListView
  loc_12108DA:       Set var_8C = Me.Txt
  loc_12108F4:       Set global_92 = Proc_6_66_EFF8FC(var_C4, var_8C, Index, global_76)
  loc_1210912:       Set var_88 = Me.Txt
  loc_1210918:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC)
  loc_1210920:       6 = var_8C.Text
  loc_1210932:       Set var_90 = Me.Txt
  loc_1210938:       Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_CC)
  loc_1210940:       var_C4.Tag = global_76
  loc_1210956:     Else
  loc_121095E:       If (var_92 = CInt(&H2C)) Then
  loc_121096E:         ReDim var_9C(0 To 3)
  loc_1210985:         var_9C(0) = "NONE"
  loc_1210994:         var_9C(1) = "GRID"
  loc_12109A3:         var_9C(2) = "TEXTBOX"
  loc_12109B2:         var_9C(3) = "BOTH"
  loc_12109C9:         global_76 = Array(var_9C)
  loc_12109D4:         Set var_C4 = Me.ListView
  loc_12109EF:         Set var_8C = Me.Txt
  loc_1210A09:         Set global_92 = Proc_6_66_EFF8FC(var_C4, var_8C, Index, global_76)
  loc_1210A27:         Set var_88 = Me.Txt
  loc_1210A2D:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_CC)
  loc_1210A35:         4 = var_8C.Text
  loc_1210A47:         Set var_90 = Me.Txt
  loc_1210A4D:         Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_CC)
  loc_1210A55:         var_C4.Tag = global_76
  loc_1210A68:       End If
  loc_1210A68:     End If
  loc_1210A68:   End If
  loc_1210A68: End If
  loc_1210A68: Exit Sub
  loc_1210A69: CExtInstUnk
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12E4240
  'Data Table: 51C244
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  Dim var_B0 As TextBox
  Dim var_C0 As TextBox
  Dim var_90 As ListView
  loc_12E3BAA: If (CLng(Shift) = &H1B) Then
  loc_12E3BAD:   Call Proc_70_59_F1BE04()
  loc_12E3BB2:   Exit Sub
  loc_12E3BB3: End If
  loc_12E3BB6: var_88 = KeyCode
  loc_12E3BC1: If (var_88 = CInt(0)) Then
  loc_12E3BE6:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_12E3BED:     Set var_A8 = Me.DGHelp
  loc_12E3BFB:     Set var_B0 = Me.FGPoint
  loc_12E3C06:     Set var_A0 = var_B0
  loc_12E3C38:     Proc_6_79_11ACE04(var_A8, Me.Txt, CInt(0), global_60, Shift)
  loc_12E3C4C:   End If
  loc_12E3C55:   var_8C = Me.RecordCount
  loc_12E3CA5:   If ((var_8C > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12E3CB3:     Set var_94 = Me.FGPoint
  loc_12E3CCB:     Proc_6_138_106D6F8(Me.DGHelp, global_60, KeyCode, var_94, 0)
  loc_12E3CD9:   End If
  loc_12E3CDC: Else
  loc_12E3CE4:   If Not (var_88 = CInt(2)) Then
  loc_12E3CEF:     If (var_88 = CInt(9)) Then
  loc_12E3CF2:     End If
  loc_12E3CF5:   Else
  loc_12E3CFD:     If (var_88 = CInt(1)) Then
  loc_12E3D0B:       If (global_56 = "Banquet") Then
  loc_12E3D30:         Set var_90 = Me.Txt
  loc_12E3D36:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, 1)
  loc_12E3D3E:         var_A0 = var_94.Left
  loc_12E3D50:         Set var_A0 = Me.Txt
  loc_12E3D56:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B4)
  loc_12E3D5E:         0 = var_A8.Top
  loc_12E3D70:         Set var_AC = Me.Txt
  loc_12E3D76:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0)
  loc_12E3D7E:         var_B8 = var_B0.Height
  loc_12E3D90:         Set var_BC = Me.Txt
  loc_12E3D96:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12E3D9E:         var_C4 = var_C0.Width
  loc_12E3DE6:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12E3E0D:       Else
  loc_12E3E2F:         Set var_90 = Me.Txt
  loc_12E3E35:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, CInt(var_8C))
  loc_12E3E3D:         CInt((var_B4 + var_B8)) = var_94.Left
  loc_12E3E4F:         Set var_A0 = Me.Txt
  loc_12E3E55:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B4)
  loc_12E3E5D:         CInt(var_C4) = var_A8.Top
  loc_12E3E6F:         Set var_AC = Me.Txt
  loc_12E3E75:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0, var_B8)
  loc_12E3E7D:         260 = var_B0.Height
  loc_12E3E8F:         Set var_BC = Me.Txt
  loc_12E3E95:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12E3E9D:         var_C4 = var_C0.Width
  loc_12E3EE5:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12E3F09:       End If
  loc_12E3F0C:     Else
  loc_12E3F14:       If (var_88 = CInt(&H25)) Then
  loc_12E3F39:         Set var_90 = Me.Txt
  loc_12E3F3F:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, CInt(var_8C))
  loc_12E3F47:         CInt((var_B4 + var_B8)) = var_94.Left
  loc_12E3F59:         Set var_A0 = Me.Txt
  loc_12E3F5F:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B4)
  loc_12E3F67:         CInt(var_C4) = var_A8.Top
  loc_12E3F79:         Set var_AC = Me.Txt
  loc_12E3F7F:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0, var_B8)
  loc_12E3F87:         780 = var_B0.Height
  loc_12E3F99:         Set var_BC = Me.Txt
  loc_12E3F9F:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12E3FA7:         var_C4 = var_C0.Width
  loc_12E3FEF:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12E4016:       Else
  loc_12E401E:         If (var_88 = CInt(&H2C)) Then
  loc_12E4043:           Set var_90 = Me.Txt
  loc_12E4049:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, CInt(var_8C))
  loc_12E4051:           CInt((var_B4 + var_B8)) = var_94.Left
  loc_12E4063:           Set var_A0 = Me.Txt
  loc_12E4069:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B4)
  loc_12E4071:           CInt(var_C4) = var_A8.Top
  loc_12E4083:           Set var_AC = Me.Txt
  loc_12E4089:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_B0, var_B8)
  loc_12E4091:           1560 = var_B0.Height
  loc_12E40A3:           Set var_BC = Me.Txt
  loc_12E40A9:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12E40B1:           var_C4 = var_C0.Width
  loc_12E40F9:           Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12E411D:         End If
  loc_12E411D:       End If
  loc_12E411D:     End If
  loc_12E411D:   End If
  loc_12E411D: End If
  loc_12E4158: If ((CBool(Me.ListView.Visible) = 0) And (CBool(Me.DGHelp.Visible) = 0)) Then
  loc_12E4179:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(7))) Then
  loc_12E4184:     Call Txt_Validate(KeyCode)
  loc_12E418F:     If (var_86 = &HFF) Then
  loc_12E4192:       Exit Sub
  loc_12E4193:     End If
  loc_12E41CA:     If (MsgBox("Save Record ?", 4, "Save Data", var_13C, var_15C) = 6) Then
  loc_12E41CD:       Call TopCtrl1_UnknownEvent_16()
  loc_12E41D2:     End If
  loc_12E41D2:     Exit Sub
  loc_12E41D3:   End If
  loc_12E41E8:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12E41F1:     Proc_6_75_E527CC(Shift, arg_14, &HFF, CInt(var_8C))
  loc_12E41F6:   End If
  loc_12E4200:   If (CLng(Shift) = &H26) Then
  loc_12E4207:     Set var_90 = Me.TopCtrl1
  loc_12E420D:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt((var_B4 + var_B8)))
  loc_12E4226:     If (CStr(CInt(var_C4)) = "Add") Then
  loc_12E4231:       If (KeyCode <> CInt(0)) Then
  loc_12E423A:         Proc_6_76_E52838(Shift, arg_14)
  loc_12E423F:       End If
  loc_12E423F:     End If
  loc_12E423F:   End If
  loc_12E423F: End If
  loc_12E423F: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '116964C
  'Data Table: 51C244
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_D0 As TextBox
  Dim 0.global_-13312 As Long
  loc_1169287: Proc_6_58_E054C0(arg_10)
  loc_11692F8: If Not(((((((((((((KeyAscii = CInt(&H18)) Or (KeyAscii = CInt(&H16))) Or (KeyAscii = CInt(8))) Or (KeyAscii = CInt(3))) Or (KeyAscii = CInt(4))) Or (KeyAscii = CInt(&H21))) Or (KeyAscii = CInt(&H22))) Or (KeyAscii = CInt(6))) Or (KeyAscii = CInt(7))) Or (KeyAscii = CInt(&H1D))) Or (KeyAscii = CInt(&H1E))) Or (KeyAscii = CInt(&H27)))) Then
  loc_1169301:   Proc_6_133_E7EF78(var_94)
  loc_116930A:   arg_10 = CInt(var_94)
  loc_1169310: End If
  loc_1169313: var_96 = KeyAscii
  loc_116931E: If Not (var_96 = CInt(2)) Then
  loc_1169329:   If Not (var_96 = CInt(9)) Then
  loc_1169334:     If Not (var_96 = CInt(&HB)) Then
  loc_116933F:       If Not (var_96 = CInt(&HC)) Then
  loc_116934A:         If Not (var_96 = CInt(&HD)) Then
  loc_1169355:           If Not (var_96 = CInt(&HE)) Then
  loc_1169360:             If Not (var_96 = CInt(&H10)) Then
  loc_116936B:               If Not (var_96 = CInt(&H11)) Then
  loc_1169376:                 If Not (var_96 = CInt(&H2D)) Then
  loc_1169381:                   If Not (var_96 = CInt(&H2E)) Then
  loc_116938C:                     If Not (var_96 = CInt(&H12)) Then
  loc_1169397:                       If Not (var_96 = CInt(&H13)) Then
  loc_11693A2:                         If Not (var_96 = CInt(&H14)) Then
  loc_11693AD:                           If Not (var_96 = CInt(&H15)) Then
  loc_11693B8:                             If (var_96 = CInt(&H17)) Then
  loc_11693BB:                             End If
  loc_11693BB:                           End If
  loc_11693BB:                         End If
  loc_11693BB:                       End If
  loc_11693BB:                     End If
  loc_11693BB:                   End If
  loc_11693BB:                 End If
  loc_11693BB:               End If
  loc_11693BB:             End If
  loc_11693BB:           End If
  loc_11693BB:         End If
  loc_11693BB:       End If
  loc_11693BB:     End If
  loc_11693BB:   End If
  loc_11693E4:   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_11693F4:     Set var_CC = Me.Txt
  loc_11693FA:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_1169402:     var_D0.Text = var_96
  loc_1169411:   Else
  loc_116943A:     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_116944A:       Set var_CC = Me.Txt
  loc_1169450:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "No")
  loc_1169458:       var_D0.Text = arg_10
  loc_1169464:     End If
  loc_1169464:   End If
  loc_1169466:   arg_10 = 0
  loc_116946C: Else
  loc_1169474:   If Not (var_96 = CInt(&HF)) Then
  loc_116947F:     If Not (var_96 = CInt(&H1C)) Then
  loc_116948A:       If Not (var_96 = CInt(&H1F)) Then
  loc_1169495:         If Not (var_96 = CInt(&H24)) Then
  loc_11694A0:           If Not (var_96 = CInt(&H26)) Then
  loc_11694AB:             If Not (var_96 = CInt(&H28)) Then
  loc_11694B6:               If Not (var_96 = CInt(&H29)) Then
  loc_11694C1:                 If Not (var_96 = CInt(&H2F)) Then
  loc_11694CC:                   If Not (var_96 = CInt(&H30)) Then
  loc_11694D7:                     If Not (var_96 = CInt(&H31)) Then
  loc_11694E2:                       If Not (var_96 = CInt(&H2B)) Then
  loc_11694ED:                         If (var_96 = CInt(&H23)) Then
  loc_11694F0:                         End If
  loc_11694F0:                       End If
  loc_11694F0:                     End If
  loc_11694F0:                   End If
  loc_11694F0:                 End If
  loc_11694F0:               End If
  loc_11694F0:             End If
  loc_11694F0:           End If
  loc_11694F0:         End If
  loc_11694F0:       End If
  loc_11694F0:     End If
  loc_1169519:     If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1169529:       Set var_CC = Me.Txt
  loc_116952F:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, "Yes")
  loc_1169537:       var_D0.Text = arg_10
  loc_1169546:     Else
  loc_116956F:       If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_116957F:         Set var_CC = Me.Txt
  loc_1169585:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_116958D:         var_D0.Text = "No"
  loc_1169599:       End If
  loc_1169599:     End If
  loc_116959B:     arg_10 = 0
  loc_11695A1:   Else
  loc_11695A9:     If Not (var_96 = CInt(&H19)) Then
  loc_11695B4:       If Not (var_96 = CInt(&H2A)) Then
  loc_11695BF:         If (var_96 = CInt(&H20)) Then
  loc_11695C2:         End If
  loc_11695C2:       End If
  loc_11695CC:       Set var_CC = Me.Txt
  loc_11695D2:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0)
  loc_11695ED:       Proc_6_42_129A86C(var_D0, arg_10, 6)
  loc_11695FC:     Else
  loc_1169604:       If Not (var_96 = CInt(&H1A)) Then
  loc_116960F:         If (var_96 = CInt(&H1B)) Then
  loc_1169612:         End If
  loc_116961C:         Set var_CC = Me.Txt
  loc_1169622:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D0, 0)
  loc_116963D:         Proc_6_42_129A86C(var_D0, arg_10, 1)
  loc_1169649:       End If
  loc_1169649:     End If
  loc_1169649:   End If
  loc_1169649: End If
  loc_1169649: Exit Sub
  loc_116964A: 0.global_-13312 = arg_10
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F9EA68
  'Data Table: 51C244
  Dim var_86 As Integer
  loc_F9E8F3: var_86 = KeyCode
  loc_F9E8FE: If (var_86 = CInt(0)) Then
  loc_F9E91D:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F9E92A:     var_A4 = "Name"
  loc_F9E949:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_60)
  loc_F9E97B:     Proc_6_138_106D6F8(Me.DGHelp, global_60, KeyCode, Me.FGPoint)
  loc_F9E989:   End If
  loc_F9E98C: Else
  loc_F9E994:   If (var_86 = CInt(1)) Then
  loc_F9E9B2:     If (Me.FrmList.Visible = &HFF) Then
  loc_F9E9E1:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F9E9F1:     End If
  loc_F9E9F4:   Else
  loc_F9E9FC:     If Not (var_86 = CInt(&H25)) Then
  loc_F9EA07:       If (var_86 = CInt(&H2C)) Then
  loc_F9EA0A:       End If
  loc_F9EA25:       If (Me.FrmList.Visible = &HFF) Then
  loc_F9EA54:         Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift, global_92)
  loc_F9EA64:       End If
  loc_F9EA64:     End If
  loc_F9EA64:   End If
  loc_F9EA64: End If
  loc_F9EA64: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A104
  'Data Table: 51C244
  loc_E4A0E2: Set var_88 = Me.Txt
  loc_E4A0E8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A0F6: Proc_6_73_E22704(var_8C)
  loc_E4A102: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '131309C
  'Data Table: 51C244
  Dim var_86 As Integer
  Dim var_A0 As Variant
  Dim var_BC As String
  Dim var_B8 As Variant
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim var_8C As ListView
  Dim var_B0 As Integer
  Dim var_B4 As Variant
  Dim var_F4 As Variant
  Dim unk_51C266 As Connection15
  Dim var_F0 As Variant
  loc_1312977: var_86 = Cancel
  loc_1312982: If (var_86 = CInt(0)) Then
  loc_1312990:   Set var_8C = Me.Txt
  loc_1312996:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_13129BC:   Set var_B4 = Me.Txt
  loc_13129C2:   Call 0.Method_Txt_Validate0 (CInt(0), var_B8)
  loc_13129CA:   var_B8.Text = CStr(Trim(CVar(var_90)))
  loc_13129E5:   Call Proc_70_55_108B67C(var_BE)
  loc_13129F0:   If (var_BE = &HFF) Then
  loc_13129F5:     arg_10 = &HFF
  loc_13129F8:     Exit Sub
  loc_13129F9:   End If
  loc_1312A04:   Set var_8C = Me.Txt
  loc_1312A0A:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1312A33:   If (Proc_6_27_EA565C(var_90, "Name") = 0) Then
  loc_1312A38:     arg_10 = &HFF
  loc_1312A3B:     Exit Sub
  loc_1312A3C:   End If
  loc_1312A3F: Else
  loc_1312A47:   If Not (var_86 = CInt(2)) Then
  loc_1312A52:     If (var_86 = CInt(9)) Then
  loc_1312A55:     End If
  loc_1312A5F:     Set var_8C = Me.Txt
  loc_1312A65:     Call 0.Method_Txt_Validate0 (Cancel, var_90, arg_10)
  loc_1312AA0:     If (Ucase(Left(CVar(var_90), 1)) = "N") Then
  loc_1312AB0:       Set var_8C = Me.Txt
  loc_1312AB6:       Call 0.Method_Txt_Validate0 (Cancel, var_90, "No")
  loc_1312ABE:       var_90.Text = arg_10
  loc_1312ACD:     Else
  loc_1312ADA:       Set var_8C = Me.Txt
  loc_1312AE0:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1312AE8:       var_90.Text = "Yes"
  loc_1312AF4:     End If
  loc_1312AF7:   Else
  loc_1312AFF:     If Not (var_86 = CInt(&HB)) Then
  loc_1312B0A:       If Not (var_86 = CInt(&HC)) Then
  loc_1312B15:         If Not (var_86 = CInt(&HD)) Then
  loc_1312B20:           If Not (var_86 = CInt(&HE)) Then
  loc_1312B2B:             If Not (var_86 = CInt(&H11)) Then
  loc_1312B36:               If Not (var_86 = CInt(&H12)) Then
  loc_1312B41:                 If Not (var_86 = CInt(&H2D)) Then
  loc_1312B4C:                   If Not (var_86 = CInt(&H2E)) Then
  loc_1312B57:                     If (var_86 = CInt(&H13)) Then
  loc_1312B5A:                     End If
  loc_1312B5A:                   End If
  loc_1312B5A:                 End If
  loc_1312B5A:               End If
  loc_1312B5A:             End If
  loc_1312B5A:           End If
  loc_1312B5A:         End If
  loc_1312B5A:       End If
  loc_1312B64:       Set var_8C = Me.Txt
  loc_1312B6A:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1312B89:       var_D0 = Ucase(Left(CVar(var_90), 1))
  loc_1312BA5:       If (var_D0 = "Y") Then
  loc_1312BB5:         Set var_8C = Me.Txt
  loc_1312BBB:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1312BC3:         var_90.Text = "Yes"
  loc_1312BD2:       Else
  loc_1312BDF:         Set var_8C = Me.Txt
  loc_1312BE5:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1312BED:         var_90.Text = "No"
  loc_1312BF9:       End If
  loc_1312BFC:     Else
  loc_1312C04:       If (var_86 = CInt(1)) Then
  loc_1312C14:         Set var_8C = Me.Txt
  loc_1312C1A:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1312C39:         If (var_90.Text <> vbNullString) Then
  loc_1312C5A:           var_BC = Me.ListView.SelectedItem.Text
  loc_1312C6C:           Set var_B4 = Me.Txt
  loc_1312C72:           Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_1312C7A:           var_B8.Text = var_BC
  loc_1312C93:         Else
  loc_1312C99:           var_B0 = 1
  loc_1312CA8:           var_A0 = Me.ListView.ListItems
  loc_1312CB3:           Set var_90 = var_A0
  loc_1312CB9:           var_B0 = var_90.ControlDefault
  loc_1312CC1:           var_B4 = var_B4.Default
  loc_1312CD3:           Set var_B8 = Me.Txt
  loc_1312CD9:           Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_BC)
  loc_1312CE1:           var_F4.Text = var_BC
  loc_1312CFD:         End If
  loc_1312D00:       Else
  loc_1312D08:         If (var_86 = CInt(&HA)) Then
  loc_1312D0F:           Set var_8C = Me.TopCtrl1
  loc_1312D15:           Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_1312D1D:           var_BC = CStr()
  loc_1312D2E:           If (var_BC = "Add") Then
  loc_1312D5D:             Set var_8C = Me.Txt
  loc_1312D63:             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_BC, "Select Count(*) From Depart Where ShortName='", var_A0, -1)
  loc_1312D84:             unk_51C266.Execute var_B8 & var_BC & "'", 0, var_F4
  loc_1312D94:              = var_B8.Item()
  loc_1312D9C:              = var_F4.Value
  loc_1312DC9:             If (var_90.Text.Fields > 0) Then
  loc_1312DD6:               Set var_8C = Me.Txt
  loc_1312DDC:               Call 0.Method_Txt_Validate0 (Cancel)
  loc_1312E07:               Set var_B4 = Me.Txt
  loc_1312E0D:               Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_1312E15:               var_F0 = CVar(var_B8) 'Address
  loc_1312E3C:               Set var_F4 = Me.Txt
  loc_1312E42:               Call 0.Method_Txt_Validate0 (Cancel, var_150)
  loc_1312E81:               If CBool((Ucase(CVar(var_90)) = "FOM") Or (Ucase(var_F0) = "PURC") Or (Ucase(CVar(var_150)) = "BANQ")) Then
  loc_1312EA5:                 MsgBox("This ShortName is reserved for System", &H40, "Information", var_D0, var_F0)
  loc_1312EB8:               Else
  loc_1312ED9:                 MsgBox("Duplicate ShortName", &H40, "Information", var_D0, var_F0)
  loc_1312EE9:               End If
  loc_1312EEB:               arg_10 = &HFF
  loc_1312EEE:               Exit Sub
  loc_1312EEF:             End If
  loc_1312EEF:           End If
  loc_1312EF2:         Else
  loc_1312EFA:           If Not (var_86 = CInt(&HF)) Then
  loc_1312F05:             If Not (var_86 = CInt(&H1C)) Then
  loc_1312F10:               If Not (var_86 = CInt(&H1F)) Then
  loc_1312F1B:                 If Not (var_86 = CInt(&H24)) Then
  loc_1312F26:                   If Not (var_86 = CInt(&H26)) Then
  loc_1312F31:                     If Not (var_86 = CInt(&H28)) Then
  loc_1312F3C:                       If Not (var_86 = CInt(&H29)) Then
  loc_1312F47:                         If Not (var_86 = CInt(&H2F)) Then
  loc_1312F52:                           If Not (var_86 = CInt(&H30)) Then
  loc_1312F5D:                             If Not (var_86 = CInt(&H31)) Then
  loc_1312F68:                               If Not (var_86 = CInt(&H2B)) Then
  loc_1312F73:                                 If (var_86 = CInt(&H23)) Then
  loc_1312F76:                                 End If
  loc_1312F76:                               End If
  loc_1312F76:                             End If
  loc_1312F76:                           End If
  loc_1312F76:                         End If
  loc_1312F76:                       End If
  loc_1312F76:                     End If
  loc_1312F76:                   End If
  loc_1312F76:                 End If
  loc_1312F76:               End If
  loc_1312F76:             End If
  loc_1312F80:             Set var_8C = Me.Txt
  loc_1312F86:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1312FC1:             If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_1312FD1:               Set var_8C = Me.Txt
  loc_1312FD7:               Call 0.Method_Txt_Validate0 (Cancel, var_90, "Yes")
  loc_1312FDF:               var_90.Text = arg_10
  loc_1312FEE:             Else
  loc_1312FFB:               Set var_8C = Me.Txt
  loc_1313001:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1313009:               var_90.Text = "No"
  loc_1313015:             End If
  loc_1313018:           Else
  loc_1313020:             If (var_86 = CInt(&H10)) Then
  loc_131302E:               Set var_8C = Me.Txt
  loc_1313034:               Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_131306F:               If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_1313080:                 Set var_8C = Me.Txt
  loc_1313086:                 Call 0.Method_Txt_Validate0 (CInt(&H10), var_90)
  loc_131308E:                 var_90.Text = "No"
  loc_131309A:               End If
  loc_131309A:             End If
  loc_131309A:           End If
  loc_131309A:         End If
  loc_131309A:       End If
  loc_131309A:     End If
  loc_131309A:   End If
  loc_131309A: End If
  loc_131309A: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E39254
  'Data Table: 51C244
  loc_E39248: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3924B:   Call DGHelp_UnknownEvent_9()
  loc_E39250: End If
  loc_E39250: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5F8B4
  'Data Table: 51C244
  Dim var_A8 As MSFlexGrid
  Dim var_AC As TextBox
  loc_E5F87F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5F892: Set var_A8 = Me.TxtGrid
  loc_E5F898: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5F8A0: var_AC.Visible = False
  loc_E5F8AC: Call Proc_70_59_F1BE04()
  loc_E5F8B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E4A924
  'Data Table: 51C244
  loc_E4A8FC: Set var_88 = Me.TopCtrl1
  loc_E4A902: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4A91B: If (CStr() <> "Browse") Then
  loc_E4A91E:   Call Proc_70_62_E44820()
  loc_E4A923: End If
  loc_E4A923: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '10FBF24
  'Data Table: 51C244
  Dim var_9C As String
  Dim var_A0 As MSFlexGrid
  Dim var_B4 As MSFlexGrid
  Dim var_88 As MSFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10FBBF8: Set var_88 = Me.TopCtrl1
  loc_10FBBFE: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10FBC43: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10FBC4C:   Call Form_KeyDown(Cancel, arg_10)
  loc_10FBC51: End If
  loc_10FBC55: Set var_88 = Me.TopCtrl1
  loc_10FBC5B: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10FBC74: If (CStr() = "Browse") Then
  loc_10FBC77:   Exit Sub
  loc_10FBC78: End If
  loc_10FBCEC: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10FBD05:   Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_10FBD15:   var_9C = "+{Tab}"
  loc_10FBD1B:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_10FBD25:   Cancel = 0
  loc_10FBD2B: Else
  loc_10FBD82:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_10FBD9B:     Me.FGrid.CellBackColor = CVar(CLng(global_108))
  loc_10FBDA5:     Cancel = 0
  loc_10FBDA8:   End If
  loc_10FBDA8: End If
  loc_10FBDAE: global_72 = Cancel
  loc_10FBDD4: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10FBDF8: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10FBE0E:   var_EC = CLng(Me.FGrid.Col)
  loc_10FBE1E:   If (var_EC = CLng(2)) Then
  loc_10FBE34:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FBE3C:     var_FC = CVar(CLng(2)) 'Long
  loc_10FBE41:     var_11C = vbNullString
  loc_10FBE4B:     Set var_A0 = Me.FGrid
  loc_10FBE51:     LateIdCallSt
  loc_10FBE76:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FBE7E:     var_FC = CVar(CLng(1)) 'Long
  loc_10FBE83:     var_11C = vbNullString
  loc_10FBE8D:     Set var_A0 = Me.FGrid
  loc_10FBE93:     LateIdCallSt
  loc_10FBEA8:   Else
  loc_10FBEAF:     If (var_EC = CLng(3)) Then
  loc_10FBEC5:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10FBEDD:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10FBEE2:       var_11C = vbNullString
  loc_10FBEEC:       Set var_B4 = Me.FGrid
  loc_10FBEF2:       LateIdCallSt
  loc_10FBF0A:     End If
  loc_10FBF0A:   End If
  loc_10FBF0A: End If
  loc_10FBF10: If (Cancel = &HD) Then
  loc_10FBF18:   global_104 = 0
  loc_10FBF1B: End If
  loc_10FBF1D: Cancel = 0
  loc_10FBF20: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E5D65C
  'Data Table: 51C244
  loc_E5D620: Set var_88 = Me.TopCtrl1
  loc_E5D626: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5D63F: If (CStr() = "Browse") Then
  loc_E5D642:   Exit Sub
  loc_E5D643: End If
  loc_E5D64C: Call FGrid_UnknownEvent_C()
  loc_E5D659: Exit Sub
  loc_E5D65A: 0.global_-13312 = CInt(&HD)
End Sub

Private Sub FGrid_UnknownEvent_C '10146D8
  'Data Table: 51C244
  Dim var_9C As String
  Dim var_88 As MSFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_10144C8: Set var_88 = Me.TopCtrl1
  loc_10144CE: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10144E7: If (CStr() = "Browse") Then
  loc_10144EA:   Exit Sub
  loc_10144EB: End If
  loc_10144FE: var_A0 = CLng(Me.FGrid.Col)
  loc_101450E: If (var_A0 = CLng(2)) Then
  loc_1014515:   Set var_C4 = Me.FGrid
  loc_1014539:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1014566:   Set var_B4 = var_C4
  loc_1014578:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_10145A0:   Set var_88 = Me.TxtGrid
  loc_10145A6:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_10145AE:   0 = var_B4.Text
  loc_10145C7:   If (Len(var_9C) <= 1) Then
  loc_10145D6:     Set var_88 = Me.TxtGrid
  loc_10145DC:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_10145E4:     var_CA = var_B4.Text
  loc_10145F5:     Set var_B8 = Me.TxtGrid
  loc_10145FB:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1014603:     var_C4.Text = var_9C
  loc_1014616:   End If
  loc_1014622:   Set var_88 = Me.TxtGrid
  loc_1014628:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1014642:   Set var_B8 = Me.TxtGrid
  loc_1014648:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1014650:   var_C4.SelStart = Len(var_B4.Text)
  loc_1014666: Else
  loc_101466D:   If (var_A0 = CLng(3)) Then
  loc_10146AE:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_10146C0:   End If
  loc_10146C0: End If
  loc_10146CA: If (CLng(Cancel) <> &HD) Then
  loc_10146D2:   global_104 = &HFF
  loc_10146D5: End If
  loc_10146D5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FE6170
  'Data Table: 51C244
  Dim var_88 As MSFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_33B0 As Variant
  loc_FE5FA0: Set var_88 = Me.TopCtrl1
  loc_FE5FA6: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE5FBF: If (CStr() = "Browse") Then
  loc_FE5FC2:   Exit Sub
  loc_FE5FC3: End If
  loc_FE5FE0: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FE5FE3:   Exit Sub
  loc_FE5FE4: End If
  loc_FE5FF5: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE6017:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FE6051:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE6073:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FE6089:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE6092:         Set var_110 = Me.FGrid
  loc_FE60AD:       Else
  loc_FE60C0:         Me.FGrid.Rows = 1
  loc_FE60E6:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FE60EE:         Set var_110 = Me.FGrid
  loc_FE611B:         Me.FGrid.FixedRows = 1
  loc_FE6123:       End If
  loc_FE6123:     End If
  loc_FE6126:   Else
  loc_FE6147:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE6157:   End If
  loc_FE615B:   Set var_88 = Me.FGrid
  loc_FE616C: End If
  loc_FE616C: Exit Sub
  loc_FE616D: Exit Sub
  loc_FE616E: var_33B0 = CVar(FGrid.DispID_8001) 'String
End Sub

Private Sub FGrid_UnknownEvent_15 'E45CD8
  'Data Table: 51C244
  Dim var_8C As TextBox
  loc_E45CAC: Call Proc_70_59_F1BE04()
  loc_E45CBC: Set var_88 = Me.TxtGrid
  loc_E45CC2: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E45CCA: var_8C.Visible = False
  loc_E45CD6: Exit Sub
End Sub

Public Function global_52Get() '51DB14
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '51DB23
  global_52 = Value
End Sub

Public Function global_56Get() '51DB32
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '51DB41
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E96668
  'Data Table: 51C244
  Dim Me As Recordset15
  loc_E965F6: On Error Goto loc_E9665F
  loc_E965FF: Me.MoveFirst
  loc_E96629: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96651: Proc_5_0_110649C(&HFF, Me, global_64)
  loc_E96659: Call Proc_70_57_178749C(0)
  loc_E9665E: Exit Sub
  loc_E9665F: ' Referenced from: E965F6
  loc_E9665F: Proc_6_60_E62BC4(var_A0)
  loc_E96664: Exit Sub
End Sub

Public Sub Proc_70_55_108B67C
  'Data Table: 51C244
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_A8 As TextBox
  Dim unk_51C266 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108B40F: If (Me.RecordCount = 0) Then
  loc_108B412:   Proc_70_55_108B67C = 
  loc_108B418: End If
  loc_108B41C: Set var_90 = Me.TopCtrl1
  loc_108B422: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_108B43B: If (CStr() = "Add") Then
  loc_108B468:   var_B0 = "Select Count(*) From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' AND Name='"
  loc_108B479:   Set var_90 = Me.Txt
  loc_108B47F:   Call 0.Method_Proc_70_55_108B67C0 (CInt(0), var_A8, var_AC, var_B0, var_A0, -1)
  loc_108B4A0:   unk_51C266.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_108B4B0:    = var_D0.Item()
  loc_108B4B8:    = var_E4.Value
  loc_108B4E9:   If (var_A8.Text.Fields > 0) Then
  loc_108B507:     var_A0 = "Duplicate Name"
  loc_108B50D:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_108B528:     Set var_90 = Me.Txt
  loc_108B52E:     Call 0.Method_Proc_70_55_108B67C0 (CInt(0))
  loc_108B536:     var_A8.SetFocus
  loc_108B547:     Proc_70_55_108B67C = &HFF
  loc_108B54D:   End If
  loc_108B550: Else
  loc_108B57A:   var_B0 = "Select Count(*) From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' AND Code='"
  loc_108B58B:   Set var_90 = Me.Txt
  loc_108B591:   Call 0.Method_Proc_70_55_108B67C0 (CInt(0), var_A8, var_AC, var_B0, var_A0, -1)
  loc_108B5C3:   unk_51C266.Execute var_D0 & var_AC & "' And Code<>'" & global_68 & "'", 0, var_E4
  loc_108B5D3:    = var_D0.Item(var_A8)
  loc_108B5DB:    = var_E4.Value
  loc_108B610:   If (var_A8.Tag.Fields > 0) Then
  loc_108B634:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108B64F:     Set var_90 = Me.Txt
  loc_108B655:     Call 0.Method_Proc_70_55_108B67C0 (CInt(0))
  loc_108B65D:     var_A8.SetFocus
  loc_108B66E:     Proc_70_55_108B67C = &HFF
  loc_108B674:   End If
  loc_108B674: End If
  loc_108B674: Proc_70_55_108B67C = var_A8
End Sub

Public Sub Proc_70_56_FFCD44
  'Data Table: 51C244
  Dim var_98 As Variant
  Dim var_8C As MSFlexGrid
  Dim var_C8 As Variant
  loc_FFCB46: global_68 = vbNullString
  loc_FFCB58: Set var_8C = Me.Txt
  loc_FFCB5E: Call 0.Method_Proc_70_56_FFCD44C (var_8E, var_86)
  loc_FFCB6E: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FFCB84:   Set var_8C = Me.Txt
  loc_FFCB8A:   Call 0.Method_Proc_70_56_FFCD440 (CInt(var_86), var_98)
  loc_FFCB92:   var_98.Text = vbNullString
  loc_FFCBAE:   Set var_8C = Me.Txt
  loc_FFCBB4:   Call 0.Method_Proc_70_56_FFCD440 (CInt(var_86), var_98)
  loc_FFCBBC:   var_98.Tag = vbNullString
  loc_FFCBCB: Next var_92 'Byte
  loc_FFCBE4: Me.FGrid.Rows = 1
  loc_FFCC0A: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_FFCC12: Set var_98 = Me.FGrid
  loc_FFCC3F: Me.FGrid.FixedRows = 1
  loc_FFCC5A: Me.FGBarCode.Rows = 1
  loc_FFCC80: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGBarCode, CInt(0), FGrid.DispID_10000))) 'String
  loc_FFCC88: Set var_98 = Me.FGBarCode
  loc_FFCCB5: Me.FGBarCode.FixedRows = 1
  loc_FFCCCB: Set var_8C = Me.Label1
  loc_FFCCD1: Call 0.Method_Proc_70_56_FFCD440 (&HE, var_98, &HECD9FB, FGBarCode.DispID_10000)
  loc_FFCCD9: var_98.BackColor = var_C8
  loc_FFCCF3: Set var_8C = Me.Txt
  loc_FFCCF9: Call 0.Method_Proc_70_56_FFCD440 (CInt(9), var_98, "No")
  loc_FFCD01: var_98.Text = var_C8
  loc_FFCD18: If (global_56 = "Banquet") Then
  loc_FFCD29:   Set var_8C = Me.Txt
  loc_FFCD2F:   Call 0.Method_Proc_70_56_FFCD440 (CInt(2), var_98)
  loc_FFCD37:   var_98.Text = "No"
  loc_FFCD43: End If
  loc_FFCD43: Exit Sub
End Sub

Public Sub Proc_70_57_178749C
  'Data Table: 51C244
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_51C266 As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As Variant
  Dim var_124 As Fields15
  Dim var_110 As Variant
  Dim var_190 As Fields15
  Dim var_128 As Variant
  Dim var_120 As Variant
  Dim var_1A4 As TextBox
  Dim var_88 As Recordset15
  Dim var_8A As Integer
  loc_178561C: On Error Goto loc_1787495
  loc_1785636: If (Me.RecordCount > 0) Then
  loc_178568F:   unk_51C266.Execute CStr("Select U_Name,U_AE,U_EntDt From Depart where Code='" & Me.Fields.Item("SearchCode").Value & "'  "), var_120, -1
  loc_178569A:   Set var_90 = var_124
  loc_17856EE:   var_124 = var_90.Fields
  loc_1785757:   var_18C = IIf((Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_178579C:   Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_Name")), var_18C)))
  loc_1785816:   var_128 = var_90.Fields.Item("U_AE")
  loc_178581E:   var_DC = CVar(var_128) 'Address
  loc_1785877:   var_18C = IIf((Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(var_DC) = "E"), "Last Update : ", "entdt : "))
  loc_1785896:   var_1A4 = var_90.Fields.Item("U_EntDt")
  loc_17858BC:   Me.LblLDt.Caption = CStr(var_18C & CVar(Proc_6_38_E68A98(CVar(var_1A4))))
  loc_17858F4: End If
  loc_178590B: If (Me.RecordCount > 0) Then
  loc_178594A:   Set var_124 = Me.Txt
  loc_1785950:   Call 0.Method_Proc_70_57_178749C0 (CInt(0), var_128)
  loc_1785958:   var_128.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_17859A7:   Set var_124 = Me.Txt
  loc_17859AD:   Call 0.Method_Proc_70_57_178749C0 (CInt(0), var_128)
  loc_17859B5:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_1785A02:   Set var_124 = Me.Txt
  loc_1785A08:   Call 0.Method_Proc_70_57_178749C0 (CInt(2), var_128)
  loc_1785A10:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("K1")))
  loc_1785A5D:   Set var_124 = Me.Txt
  loc_1785A63:   Call 0.Method_Proc_70_57_178749C0 (CInt(3), var_128)
  loc_1785A6B:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Header1")))
  loc_1785AB8:   Set var_124 = Me.Txt
  loc_1785ABE:   Call 0.Method_Proc_70_57_178749C0 (CInt(4), var_128)
  loc_1785AC6:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Header2")))
  loc_1785B13:   Set var_124 = Me.Txt
  loc_1785B19:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H21), var_128)
  loc_1785B21:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Header3")))
  loc_1785B6E:   Set var_124 = Me.Txt
  loc_1785B74:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H22), var_128)
  loc_1785B7C:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Header4")))
  loc_1785BC9:   Set var_124 = Me.Txt
  loc_1785BCF:   Call 0.Method_Proc_70_57_178749C0 (CInt(5), var_128)
  loc_1785BD7:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Phone")))
  loc_1785C24:   Set var_124 = Me.Txt
  loc_1785C2A:   Call 0.Method_Proc_70_57_178749C0 (CInt(6), var_128)
  loc_1785C32:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Slogan1")))
  loc_1785C7F:   Set var_124 = Me.Txt
  loc_1785C85:   Call 0.Method_Proc_70_57_178749C0 (CInt(7), var_128)
  loc_1785C8D:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Slogan2")))
  loc_1785CDA:   Set var_124 = Me.Txt
  loc_1785CE0:   Call 0.Method_Proc_70_57_178749C0 (CInt(8), var_128)
  loc_1785CE8:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LstNo")))
  loc_1785D38:   Set var_124 = Me.Txt
  loc_1785D3E:   Call 0.Method_Proc_70_57_178749C0 (CInt(9), var_128)
  loc_1785D46:   var_128.Text = CStr(Me.Fields.Item("Comp1").Value)
  loc_1785D95:   Set var_124 = Me.Txt
  loc_1785D9B:   Call 0.Method_Proc_70_57_178749C0 (CInt(&HA), var_128)
  loc_1785DA3:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ShortName")))
  loc_1785DF0:   Set var_124 = Me.Txt
  loc_1785DF6:   Call 0.Method_Proc_70_57_178749C0 (CInt(1), var_128)
  loc_1785DFE:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestType")))
  loc_1785E4B:   Set var_124 = Me.Txt
  loc_1785E51:   Call 0.Method_Proc_70_57_178749C0 (CInt(&HB), var_128)
  loc_1785E59:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LinkRoom")))
  loc_1785EA6:   Set var_124 = Me.Txt
  loc_1785EAC:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H13), var_128)
  loc_1785EB4:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("P_Name")))
  loc_1785F01:   Set var_124 = Me.Txt
  loc_1785F07:   Call 0.Method_Proc_70_57_178749C0 (CInt(&HE), var_128)
  loc_1785F0F:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Roff")))
  loc_1785F5C:   Set var_124 = Me.Txt
  loc_1785F62:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H12), var_128)
  loc_1785F6A:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("MemberInfo")))
  loc_1785FB7:   Set var_124 = Me.Txt
  loc_1785FBD:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H2D), var_128)
  loc_1785FC5:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DisPrint")))
  loc_1786012:   Set var_124 = Me.Txt
  loc_1786018:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H2E), var_128)
  loc_1786020:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LabelPrinting")))
  loc_178606D:   Set var_124 = Me.Txt
  loc_1786073:   Call 0.Method_Proc_70_57_178749C0 (CInt(&HC), var_128)
  loc_178607B:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RateIncl")))
  loc_17860C8:   Set var_124 = Me.Txt
  loc_17860CE:   Call 0.Method_Proc_70_57_178749C0 (CInt(&HD), var_128)
  loc_17860D6:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")))
  loc_178610C:   var_BC = CVar(Me.Fields.Item("BackColor")) 'Address
  loc_1786113:   Proc_6_39_E7C810(var_DC)
  loc_1786126:   Set var_124 = Me.Label1
  loc_178612C:   Call 0.Method_Proc_70_57_178749C0 (&HE, var_128)
  loc_1786134:   var_128.BackColor = CLng(var_DC)
  loc_1786182:   Set var_124 = Me.Txt
  loc_1786188:   Call 0.Method_Proc_70_57_178749C0 (CInt(&HF), var_128)
  loc_1786190:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("TokenPrint")))
  loc_17861DD:   Set var_124 = Me.Txt
  loc_17861E3:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H1C), var_128)
  loc_17861EB:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("TokenPrintAfter")))
  loc_1786238:   Set var_124 = Me.Txt
  loc_178623E:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H23), var_128)
  loc_1786246:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("PrintTokenNo")))
  loc_1786293:   Set var_124 = Me.Txt
  loc_1786299:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H10), var_128)
  loc_17862A1:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Order_Booking")))
  loc_17862EE:   Set var_124 = Me.Txt
  loc_17862F4:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H11), var_128)
  loc_17862FC:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Outl")))
  loc_178637E:   Set var_124 = Me.Txt
  loc_1786384:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H14), var_128)
  loc_178638C:   var_128.Text = CStr(IIf((Me.Fields.Item("SplitBill").Value = "Y"), "Yes", "No"))
  loc_17863E5:   Set var_124 = Me.Txt
  loc_17863EB:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H15), var_128)
  loc_17863F3:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CustInfo")))
  loc_1786440:   Set var_124 = Me.Txt
  loc_1786446:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H16), var_128)
  loc_178644E:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CstNo")))
  loc_178649B:   Set var_124 = Me.Txt
  loc_17864A1:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H17), var_128)
  loc_17864A9:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CKOTPrintYN")))
  loc_17864F6:   Set var_124 = Me.Txt
  loc_17864FC:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H25), var_128)
  loc_1786504:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("PrintType")))
  loc_1786560:   var_128 = Me.Fields.Item("BarCodePartitionAppOn")
  loc_1786568:   var_DC = CVar(var_128) 'Address
  loc_1786591:   var_14C = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("BarCodePartitionAppOn"))) = vbNullString), "NONE", CVar(Proc_6_38_E68A98(var_DC)))
  loc_17865A8:   Set var_190 = Me.Txt
  loc_17865AE:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H2C), var_1A4)
  loc_17865B6:   var_1A4.Text = CStr(var_14C)
  loc_1786617:   Set var_124 = Me.Txt
  loc_178661D:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H18), var_128)
  loc_1786625:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CKOTPrintPath")))
  loc_1786662:   Proc_6_39_E7C810(var_DC, CVar(Me.Fields.Item("CurTokenNo")))
  loc_1786679:   Set var_124 = Me.Txt
  loc_178667F:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H19), var_128)
  loc_1786687:   var_128.Text = CStr(var_DC)
  loc_17866C8:   Proc_6_39_E7C810(var_DC, CVar(Me.Fields.Item("CurTokenNoKOT")))
  loc_17866DF:   Set var_124 = Me.Txt
  loc_17866E5:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H2A), var_128)
  loc_17866ED:   var_128.Text = CStr(var_DC)
  loc_178672E:   Proc_6_39_E7C810(var_DC, CVar(Me.Fields.Item("NoOfKot")))
  loc_1786745:   Set var_124 = Me.Txt
  loc_178674B:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H1A), var_128)
  loc_1786753:   var_128.Text = CStr(var_DC)
  loc_1786794:   Proc_6_39_E7C810(var_DC, CVar(Me.Fields.Item("NoOfBill")))
  loc_17867AB:   Set var_124 = Me.Txt
  loc_17867B1:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H1B), var_128)
  loc_17867B9:   var_128.Text = CStr(var_DC)
  loc_178680A:   Set var_124 = Me.Txt
  loc_1786810:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H1D), var_128)
  loc_1786818:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("OrderBookCom1")))
  loc_1786865:   Set var_124 = Me.Txt
  loc_178686B:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H1E), var_128)
  loc_1786873:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("OrderBookCom2")))
  loc_17868C0:   Set var_124 = Me.Txt
  loc_17868C6:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H27), var_128)
  loc_17868CE:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleBillTokenHeader1")))
  loc_178691B:   Set var_124 = Me.Txt
  loc_1786921:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H1F), var_128)
  loc_1786929:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("PrintOnSave")))
  loc_1786976:   Set var_124 = Me.Txt
  loc_178697C:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H24), var_128)
  loc_1786984:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("AutoSettlement")))
  loc_17869D1:   Set var_124 = Me.Txt
  loc_17869D7:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H26), var_128)
  loc_17869DF:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("WScaleApp")))
  loc_1786A2C:   Set var_124 = Me.Txt
  loc_1786A32:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H28), var_128)
  loc_1786A3A:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("BarCodeApp")))
  loc_1786A87:   Set var_124 = Me.Txt
  loc_1786A8D:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H29), var_128)
  loc_1786A95:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("AutoResetToken")))
  loc_1786AE2:   Set var_124 = Me.Txt
  loc_1786AE8:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H2F), var_128)
  loc_1786AF0:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("FreeItemApp")))
  loc_1786B3D:   Set var_124 = Me.Txt
  loc_1786B43:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H30), var_128)
  loc_1786B4B:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CoverMandatory")))
  loc_1786B98:   Set var_124 = Me.Txt
  loc_1786B9E:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H31), var_128)
  loc_1786BA6:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("MobileNoMandatory")))
  loc_1786BF3:   Set var_124 = Me.Txt
  loc_1786BF9:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H2B), var_128)
  loc_1786C01:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DirectBilling")))
  loc_1786C3E:   Proc_6_39_E7C810(var_DC, CVar(Me.Fields.Item("BookOfBills")))
  loc_1786C55:   Set var_124 = Me.Txt
  loc_1786C5B:   Call 0.Method_Proc_70_57_178749C0 (CInt(&H20), var_128)
  loc_1786C63:   var_128.Text = CStr(var_DC)
  loc_1786CD9:   Set var_124 = Me.ChkDisc
  loc_1786CDF:   Call 0.Method_Proc_70_57_178749C0 (CInt(0), var_128)
  loc_1786CE7:   var_128.Value = CInt(IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("GrpDiscApp"))) = "Y"), 1, 0))
  loc_1786D26:   var_AC = Me.Fields.Item("BarCodeApp")
  loc_1786D48:   If (var_AC.Value = "Yes") Then
  loc_1786D59:     Me.FGBarCode.Visible = True
  loc_1786D6C:     Set var_98 = Me.Label1
  loc_1786D72:     Call 0.Method_Proc_70_57_178749C0 (&H50, var_AC)
  loc_1786D7A:     var_AC.Visible = True
  loc_1786D91:     Set var_98 = Me.Txt
  loc_1786D97:     Call 0.Method_Proc_70_57_178749C0 (&H2C, var_AC)
  loc_1786D9F:     var_AC.Visible = True
  loc_1786DAE:   Else
  loc_1786DBD:     Me.FGBarCode.Visible = False
  loc_1786DD0:     Set var_98 = Me.Label1
  loc_1786DD6:     Call 0.Method_Proc_70_57_178749C0 (&H50, var_AC)
  loc_1786DDE:     var_AC.Visible = False
  loc_1786DF5:     Set var_98 = Me.Txt
  loc_1786DFB:     Call 0.Method_Proc_70_57_178749C0 (&H2C, var_AC)
  loc_1786E03:     var_AC.Visible = False
  loc_1786E0F:   End If
  loc_1786E4E:   If (Me.Fields.Item("Order_Booking").Value = "Yes") Then
  loc_1786E5D:     Me.Frame2.Visible = True
  loc_1786E68:   Else
  loc_1786E74:     Me.Frame2.Visible = False
  loc_1786E7C:   End If
  loc_1786E90:   var_100 = "Select SD.SchemeCode, SM.Name, SD.DiscPer, SD.RestCode from SchemeOutletDiscount SD Inner Join SchemeMast SM On SD.SchemeCode = SM.Code where (SD.LOGSITE_CODE='" & MemVar_1F92078
  loc_1786ED0:   var_120 = CVar(var_100 & "' or SD.LOGSITE_CODE='HO') AND SD.RestCode='") & Me.Fields.Item("SearchCode").Value & "' Order By SM.Name" 
  loc_1786EDE:   unk_51C266.Execute CStr(var_120), var_14C, -1
  loc_1786EE9:   Set var_88 = var_124
  loc_1786F1C:   Me.FGrid.Rows = 1
  loc_1786F28:   Set var_124 = Me.FGrid
  loc_1786F42:   var_BC = CVar(CStr(Proc_6_127_F24F80(var_124, CInt(0)))) 'String
  loc_1786F4A:   Set var_AC = Me.FGrid
  loc_1786F77:   Me.FGrid.FixedRows = 1
  loc_1786F93:   If (var_88.RecordCount > 0) Then
  loc_1786F98:     var_8A = 1
  loc_1786FAF:     var_A8 = CVar((var_88.RecordCount + 1)) 'Long
  loc_1786FBE:     Me.FGrid.Rows = 1
  loc_1786FC6:     ' Referenced from: 178717D
  loc_1786FD5:     If Not(var_88.EOF) Then
  loc_1786FDC:       Set var_1EC = Me.FGrid
  loc_1786FE3:       var_A8 = CVar(CLng(var_8A)) 'Long
  loc_1786FEB:       var_EC = CVar(CLng(0)) 'Long
  loc_1786FF5:       var_BC = CVar(CStr(var_8A)) 'String
  loc_1786FFC:       LateIdCallSt
  loc_178700B:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_1787013:       var_110 = CVar(CLng(1)) 'Long
  loc_1787043:       var_DC = CVar(CStr(var_88.Fields.Item("SchemeCode").Value)) 'String
  loc_178704A:       LateIdCallSt
  loc_1787099:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1EC, var_DC, CVar(CLng(2)), CVar(CLng(var_8A)))) 'String
  loc_17870A0:       LateIdCallSt
  loc_17870E9:       Proc_6_47_EF59D0(var_DC, CVar(var_88.Fields.Item("DiscPer")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1EC, var_DC)
  loc_17870F2:       var_FC = CVar(CStr(var_DC)) 'String
  loc_17870F9:       LateIdCallSt
  loc_1787111:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_1787119:       var_110 = CVar(CLng(4)) 'Long
  loc_1787149:       var_DC = CVar(CStr(var_88.Fields.Item("RestCode").Value)) 'String
  loc_1787150:       LateIdCallSt
  loc_1787168:       Set var_1EC = Nothing 
  loc_1787172:       var_8A = (var_8A + 1)
  loc_1787178:       var_88.MoveNext
  loc_178717D:       GoTo loc_1786FC6
  loc_1787180:     End If
  loc_1787180:   End If
  loc_1787194:   var_100 = "Select BD.BarCodePart, BD.BarCodeStartFrom, BD.BarCodeLength, BD.RestCode from OutletBarCodePartDetail BD where (BD.LOGSITE_CODE='" & MemVar_1F92078
  loc_17871D4:   var_120 = CVar(var_100 & "' or BD.LOGSITE_CODE='HO') AND BD.RestCode='") & Me.Fields.Item("SearchCode").Value & "' Order By BD.BarCodeStartFrom" 
  loc_17871E2:   unk_51C266.Execute CStr(var_120), var_14C, -1
  loc_17871ED:   Set var_88 = var_124
  loc_1787220:   Me.FGBarCode.Rows = 1
  loc_178722C:   Set var_124 = Me.FGBarCode
  loc_1787246:   var_BC = CVar(CStr(Proc_6_127_F24F80(var_124, CInt(0), var_124, var_8A, var_1EC))) 'String
  loc_178724E:   Set var_AC = Me.FGBarCode
  loc_178727B:   Me.FGBarCode.FixedRows = 1
  loc_1787297:   If (var_88.RecordCount > 0) Then
  loc_178729C:     var_8A = 1
  loc_17872B3:     var_A8 = CVar((var_88.RecordCount + 1)) 'Long
  loc_17872C2:     Me.FGBarCode.Rows = 1
  loc_17872CA:     ' Referenced from: 178747C
  loc_17872D9:     If Not(var_88.EOF) Then
  loc_17872E0:       Set var_1F0 = Me.FGBarCode
  loc_17872E7:       var_A8 = CVar(CLng(var_8A)) 'Long
  loc_17872F9:       var_BC = CVar(CStr(var_8A)) 'String
  loc_1787300:       LateIdCallSt
  loc_178731F:       var_A8 = "BarCodePart"
  loc_1787344:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_A8)), CVar(CLng(1)), CVar(CLng(var_8A)), var_1F0, CVar(var_88.Fields.Item(var_A8)), CVar(CLng(0)), var_A8)) 'String
  loc_178734B:       LateIdCallSt
  loc_1787394:       Proc_6_48_EF4270(var_DC, CVar(var_88.Fields.Item("BarCodeStartFrom")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1F0, var_DC)
  loc_17873A4:       LateIdCallSt
  loc_17873EF:       Proc_6_48_EF4270(var_DC, CVar(var_88.Fields.Item("BarCodeLength")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1F0, CVar(CStr(var_DC)))
  loc_17873FF:       LateIdCallSt
  loc_178741F:       var_110 = CVar(CLng(4)) 'Long
  loc_1787443:       var_BC = CVar(var_88.Fields.Item("RestCode")) 'Address
  loc_178744C:       var_DC = CVar(Proc_6_38_E68A98(var_BC, var_110, CVar(CLng(var_8A)), var_1F0, CVar(CStr(var_DC)), var_8A)) 'String
  loc_1787453:       LateIdCallSt
  loc_1787467:       Set var_1F0 = Nothing 
  loc_1787471:       var_8A = (var_8A + 1)
  loc_1787477:       var_88.MoveNext
  loc_178747C:       GoTo loc_17872CA
  loc_178747F:     End If
  loc_178747F:   End If
  loc_1787484:   Set var_88 = Nothing
  loc_178748A: Else
  loc_178748A:   Call Proc_70_56_FFCD44(var_8A, var_1F0, var_DC, FGBarCode.DispID_10000)
  loc_178748F: End If
  loc_178748F: Call Proc_70_59_F1BE04(var_BC, var_DC)
  loc_1787494: Exit Sub
  loc_1787495: ' Referenced from: 178561C
  loc_1787495: Proc_6_60_E62BC4(var_110)
  loc_178749A: Exit Sub
End Sub

Public Sub Proc_70_58_EBAEB4(arg_C) 'EBAEB4
  'Data Table: 51C244
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_EBAE1E: Set var_8C = Me.Txt
  loc_EBAE24: Call 0.Method_Proc_70_58_EBAEB4C (var_8E, var_86)
  loc_EBAE34: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EBAE4A:   Set var_8C = Me.Txt
  loc_EBAE50:   Call 0.Method_Proc_70_58_EBAEB40 (CInt(var_86), var_98)
  loc_EBAE58:   var_98.Enabled = arg_C
  loc_EBAE67: Next var_92 'Byte
  loc_EBAE7A: Me.FrDiscType.Enabled = arg_C
  loc_EBAE88: If (MemVar_1F920B8 <> 1) Then
  loc_EBAE98:   Set var_8C = Me.Txt
  loc_EBAE9E:   Call 0.Method_Proc_70_58_EBAEB40 (CInt(&H2B), var_98)
  loc_EBAEA6:   var_98.Enabled = False
  loc_EBAEB2: End If
  loc_EBAEB2: Exit Sub
End Sub

Public Sub Proc_70_59_F1BE04
  'Data Table: 51C244
  loc_F1BD18: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F1BD2A:   Me.DGHelp.Visible = False
  loc_F1BD32: End If
  loc_F1BD4E: If (CBool(Me.DGSch.Visible) = &HFF) Then
  loc_F1BD60:   Me.DGSch.Visible = False
  loc_F1BD68: End If
  loc_F1BD83: If (Me.FrmList.Visible = &HFF) Then
  loc_F1BD92:   Me.FrmList.Visible = False
  loc_F1BD9A: End If
  loc_F1BDB5: If (Me.FrmList1.Visible = &HFF) Then
  loc_F1BDC4:   Me.FrmList1.Visible = False
  loc_F1BDCC: End If
  loc_F1BDE8: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F1BDFA:   Me.FGPoint.Visible = False
  loc_F1BE02: End If
  loc_F1BE02: Exit Sub
End Sub

Public Sub Proc_70_60_E82F88
  'Data Table: 51C244
  loc_E82F28: Call Proc_70_59_F1BE04()
  loc_E82F64: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E82F67:   Call TopCtrl1_UnknownEvent_16()
  loc_E82F6F: Else
  loc_E82F75:   Call 0.Method_arg_1E8 (var_108)
  loc_E82F7D:   Call var_108.SetFocus
  loc_E82F86: End If
  loc_E82F86: Exit Sub
End Sub

Public Sub Proc_70_61_F5832C(arg_C) 'F5832C
  'Data Table: 51C244
  Dim var_144 As Integer
  Dim var_D8 As String
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim unk_51C266 As Connection15
  Dim var_130 As Recordset15
  Dim var_134 As Fields15
  Dim var_148 As Field20
  Dim var_158 As Variant
  loc_F5823D: var_144 = 0
  loc_F58253: var_D8 = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),0)+1 AS MyCode From RevMast WHERE SUBSTRING(Code,1,3) ='"
  loc_F58261: var_C8 = (CVar(MemVar_1F92070) + Left(arg_C, 1))
  loc_F5827C: unk_51C266.Execute CStr(var_D8 & var_C8 & "' AND ISNUMERIC(SUBSTRING(Code,4,3))=1"), var_12C, -1
  loc_F58284: var_130 = var_130.Fields
  loc_F5828C: var_144 = var_134.Item(var_134)
  loc_F58294: var_148 = var_148.Value
  loc_F582E3: var_E8 = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) + Left(arg_C, 1))
  loc_F5830F: var_158 = (1 + Format(CStr(var_158), "000"))
  loc_F58314: var_88 = CStr(var_158)
  loc_F58326: Proc_70_61_F5832C = 1
End Sub

Public Sub Proc_70_62_E44820
  'Data Table: 51C244
  loc_E447FC: Set var_88 = Me.TopCtrl1
  loc_E44802: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4481B: If (CStr() = "Browse") Then
  loc_E4481E:   Exit Sub
  loc_E4481F: End If
  loc_E4481F: Exit Sub
End Sub

Public Sub Proc_70_63_13288E4(arg_C) '13288E4
  'Data Table: 51C244
  Dim var_8E As Integer
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_11C As MSFlexGrid
  Dim var_12C As Variant
  Dim var_B8 As String
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_130 As Variant
  Dim var_174 As String
  Dim var_178 As MSFlexGrid
  Dim var_188 As Variant
  Dim var_1DC As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_1E4 As Long
  loc_1328167: var_8E = arg_C
  loc_1328170: If (var_8E = 0) Then
  loc_1328186:   var_A8 = CLng(Me.FGrid.Col)
  loc_1328196:   If (var_A8 = CLng(2)) Then
  loc_13281E7:     Set var_94 = Me.TxtGrid
  loc_13281ED:     Call 0.Method_Proc_70_63_13288E40 (arg_C, var_B4, var_B8)
  loc_13281F5:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_132820D:     If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_1328223:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_132822B:       var_E8 = CVar(CLng(2)) 'Long
  loc_1328230:       var_108 = vbNullString
  loc_132823A:       Set var_B4 = Me.FGrid
  loc_1328240:       LateIdCallSt
  loc_1328265:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_132826D:       var_E8 = CVar(CLng(1)) 'Long
  loc_1328272:       var_108 = vbNullString
  loc_132827C:       Set var_B4 = Me.FGrid
  loc_1328282:       LateIdCallSt
  loc_1328297:     Else
  loc_13282C4:       Set var_94 = Me.TxtGrid
  loc_13282CA:       Call 0.Method_Proc_70_63_13288E40 (arg_C, var_B4, var_B8, CVar(CLng(1)), CVar(CLng(Me.FGrid.Row)), var_B4, var_108)
  loc_13282D2:       var_E8 = var_B4.Text
  loc_13282DA:       var_12C = CVar(var_B8) 'String
  loc_13282E2:       Set var_130 = Me.FGrid
  loc_13282E8:       LateIdCallSt
  loc_132831B:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1328323:       var_E8 = CVar(CLng(1)) 'Long
  loc_132833D:       var_B8 = CStr(Me.FGrid.TextMatrix))
  loc_132835B:       var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1328363:       var_150 = CVar(CLng(1)) 'Long
  loc_132837D:       var_174 = CStr(Me.FGrid.TextMatrix))
  loc_13283E8:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_13283FE:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1328406:         var_F8 = CVar(CLng(2)) 'Long
  loc_1328439:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1328441:         Set var_130 = Me.FGrid
  loc_1328447:         LateIdCallSt
  loc_1328476:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_132847E:         var_F8 = CVar(CLng(1)) 'Long
  loc_13284A0:         var_B4 = Me.Fields.Item("Code")
  loc_13284B1:         var_140 = CVar(CStr(var_B4.Value)) 'String
  loc_13284B9:         Set var_130 = Me.FGrid
  loc_13284BF:         LateIdCallSt
  loc_13284DB:       End If
  loc_13284DB:     End If
  loc_13284DE:   Else
  loc_13284E5:     If (var_A8 = CLng(3)) Then
  loc_13284F2:       Set var_94 = Me.TxtGrid
  loc_13284F8:       Call 0.Method_Proc_70_63_13288E40 (arg_C, var_B4, var_130, var_140, var_F8, var_D8, var_130)
  loc_1328517:       Set var_11C = Me.TxtGrid
  loc_132851D:       Call 0.Method_Proc_70_63_13288E40 (arg_C, var_130, var_B8, Not(IsNumeric(CVar(var_B4))), var_140, var_F8)
  loc_1328525:       var_D8 = var_130.Text
  loc_1328547:       If ((var_150 = var_174) Or (CDbl(Val(var_B8)) <= CDbl(0))) Then
  loc_132854E:         var_B8 = CStr(0)
  loc_132855B:         Set var_94 = Me.TxtGrid
  loc_1328561:         Call 0.Method_Proc_70_63_13288E40 (arg_C, var_B4, var_B8)
  loc_1328569:         var_B4.Text = var_108
  loc_132857D:         Proc_70_63_13288E4 = 0
  loc_1328583:       End If
  loc_1328590:       Set var_94 = Me.TxtGrid
  loc_1328596:       Call 0.Method_Proc_70_63_13288E40 (arg_C, var_B4, var_B8)
  loc_132859E:       global_100 = var_B4.Text
  loc_13285B6:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13285BE:       var_F8 = CVar(CLng(3)) 'Long
  loc_13285EA:       var_188 = CVar(CStr(Format(CVar(var_B8), "0.00"))) 'String
  loc_13285F2:       Set var_130 = Me.FGrid
  loc_13285F8:       LateIdCallSt
  loc_1328618:     End If
  loc_1328618:   End If
  loc_132861B: Else
  loc_1328621:   If (var_8E = 1) Then
  loc_1328637:     var_1E4 = CLng(Me.FGBarCode.Col)
  loc_1328647:     If (var_1E4 = CLng(1)) Then
  loc_1328657:       Set var_94 = Me.TxtGrid
  loc_132865D:       Call 0.Method_Proc_70_63_13288E40 (arg_C, var_B4, var_B8, var_1E4, var_130, var_188)
  loc_1328665:       1 = var_B4.Text
  loc_132867C:       If (var_B8 <> vbNullString) Then
  loc_1328697:         Set var_B4 = Me.ListView1.SelectedItem
  loc_132869D:         var_B8 = var_B4.Text
  loc_13286AF:         Set var_11C = Me.TxtGrid
  loc_13286B5:         Call 0.Method_Proc_70_63_13288E40 (arg_C, var_130, var_B8, 1)
  loc_13286BD:         var_130.Text = var_F8
  loc_13286D3:       End If
  loc_13286E6:       var_C8 = CVar(CLng(Me.FGBarCode.Row)) 'Long
  loc_13286EF:       Set var_130 = Me.FGBarCode
  loc_1328710:       Set var_94 = Me.TxtGrid
  loc_1328716:       Call 0.Method_Proc_70_63_13288E40 (arg_C, var_B4, var_B8, CVar(CLng(var_130.Col)))
  loc_132871E:       var_C8 = var_B4.Text
  loc_1328726:       var_140 = CVar(var_B8) 'String
  loc_132872E:       Set var_178 = Me.FGBarCode
  loc_1328734:       LateIdCallSt
  loc_1328755:     Else
  loc_132875C:       If Not (var_1E4 = CLng(4)) Then
  loc_1328766:         If (var_1E4 = CLng(3)) Then
  loc_1328769:         End If
  loc_1328773:         Set var_94 = Me.TxtGrid
  loc_1328779:         Call 0.Method_Proc_70_63_13288E40 (arg_C, var_B4, var_178)
  loc_1328798:         Set var_11C = Me.TxtGrid
  loc_132879E:         Call 0.Method_Proc_70_63_13288E40 (arg_C, var_130, var_B8, Not(IsNumeric(CVar(var_B4))))
  loc_13287A6:         var_140 = var_130.Text
  loc_13287C8:         If (var_D8 Or (CDbl(Val(var_B8)) <= CDbl(0))) Then
  loc_13287DC:           Set var_94 = Me.TxtGrid
  loc_13287E2:           Call 0.Method_Proc_70_63_13288E40 (arg_C, var_B4)
  loc_13287EA:           var_B4.Text = CStr(0)
  loc_13287FE:           Proc_70_63_13288E4 = 0
  loc_1328804:         End If
  loc_1328811:         Set var_94 = Me.TxtGrid
  loc_1328817:         Call 0.Method_Proc_70_63_13288E40 (arg_C, var_B4)
  loc_1328837:         var_D8 = CVar(CLng(Me.FGBarCode.Row)) 'Long
  loc_132884F:         var_F8 = CVar(CLng(Me.FGBarCode.Col)) 'Long
  loc_132887B:         var_1DC = CVar(CStr(Format(CVar(var_B4.Text), "0"))) 'String
  loc_1328883:         Set var_178 = Me.FGBarCode
  loc_1328889:         LateIdCallSt
  loc_13288AD:       End If
  loc_13288AD:     End If
  loc_13288AD:   End If
  loc_13288AD: End If
  loc_13288C1: Set var_94 = Me.TxtGrid
  loc_13288C7: Call 0.Method_Proc_70_63_13288E40 (arg_C, var_B4, 0, &HFF, var_178, var_1DC)
  loc_13288CF: var_B4.MaxLength = 1
  loc_13288DB: Proc_70_63_13288E4 = 1
End Sub

Public Sub Proc_70_64_101A284
  'Data Table: 51C244
  Dim var_88 As MSFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_EC As String
  loc_101A054: On Error Goto loc_101A27C
  loc_101A05B: Set var_88 = Me.FGrid
  loc_101A072: global_108 = CStr(CLng(var_88.BackColor))
  loc_101A088: var_88.Cols = 5
  loc_101A090: var_AC = CVar(CLng(0)) 'Long
  loc_101A095: var_CC = &HFA
  loc_101A0A1: LateIdCallSt
  loc_101A0A9: var_AC = 0
  loc_101A0B5: var_CC = CVar(CLng(0)) 'Long
  loc_101A0BA: var_EC = "SNo"
  loc_101A0C3: LateIdCallSt
  loc_101A0CB: var_AC = 1
  loc_101A0D7: var_CC = CVar(CLng(0)) 'Long
  loc_101A0DC: var_EC = "1"
  loc_101A0E5: LateIdCallSt
  loc_101A0F0: var_AC = CVar(CLng(0)) 'Long
  loc_101A0F5: var_CC = &H1C2
  loc_101A101: LateIdCallSt
  loc_101A109: var_AC = 0
  loc_101A115: var_CC = CVar(CLng(1)) 'Long
  loc_101A11A: var_EC = "Scheme Code"
  loc_101A123: LateIdCallSt
  loc_101A12E: var_AC = CVar(CLng(1)) 'Long
  loc_101A139: var_CC = CVar(CInt(1)) 'Integer
  loc_101A140: LateIdCallSt
  loc_101A14B: var_AC = CVar(CLng(1)) 'Long
  loc_101A150: var_CC = 0
  loc_101A15C: LateIdCallSt
  loc_101A164: var_AC = 0
  loc_101A170: var_CC = CVar(CLng(2)) 'Long
  loc_101A175: var_EC = "Scheme Name"
  loc_101A17E: LateIdCallSt
  loc_101A189: var_AC = CVar(CLng(2)) 'Long
  loc_101A194: var_CC = CVar(CInt(1)) 'Integer
  loc_101A19B: LateIdCallSt
  loc_101A1A6: var_AC = CVar(CLng(2)) 'Long
  loc_101A1AB: var_CC = &HDAC
  loc_101A1B7: LateIdCallSt
  loc_101A1BF: var_AC = 0
  loc_101A1CB: var_CC = CVar(CLng(3)) 'Long
  loc_101A1D0: var_EC = "Disc %"
  loc_101A1D9: LateIdCallSt
  loc_101A1E4: var_AC = CVar(CLng(3)) 'Long
  loc_101A1EF: var_CC = CVar(CInt(7)) 'Integer
  loc_101A1F6: LateIdCallSt
  loc_101A201: var_AC = CVar(CLng(3)) 'Long
  loc_101A206: var_CC = &H4B0
  loc_101A212: LateIdCallSt
  loc_101A21A: var_AC = 0
  loc_101A226: var_CC = CVar(CLng(4)) 'Long
  loc_101A22B: var_EC = "RestCode"
  loc_101A234: LateIdCallSt
  loc_101A23F: var_AC = CVar(CLng(4)) 'Long
  loc_101A24A: var_CC = CVar(CInt(7)) 'Integer
  loc_101A251: LateIdCallSt
  loc_101A25C: var_AC = CVar(CLng(4)) 'Long
  loc_101A261: var_CC = 0
  loc_101A26D: LateIdCallSt
  loc_101A277: Set var_88 = Nothing 
  loc_101A27B: Exit Sub
  loc_101A27C: ' Referenced from: 101A054
  loc_101A27C: Proc_6_60_E62BC4(var_88, var_CC, var_AC, var_88, var_CC, var_AC, var_88, var_EC)
  loc_101A281: Exit Sub
End Sub

Public Sub Proc_70_65_103BACC
  'Data Table: 51C244
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_144 As String
  loc_103B8AD: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A4 'Integer
  loc_103B8B7:   var_B4 = CVar(CLng(var_88)) 'Long
  loc_103B8BF:   var_D4 = CVar(CLng(1)) 'Long
  loc_103B8EA:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_103B916:     For var_EC = (var_88 + 1) To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_EC 'Integer
  loc_103B920:       var_B4 = CVar(CLng(var_88)) 'Long
  loc_103B928:       var_D4 = CVar(CLng(1)) 'Long
  loc_103B96B:       var_144 = CStr(Me.FGrid.TextMatrix))
  loc_103B985:       If (CVar(CLng(1)) = var_144) Then
  loc_103B994:         var_D4 = CVar(CLng(2)) 'Long
  loc_103B9A3:         var_A0 = Me.FGrid.TextMatrix)
  loc_103B9B5:         Call 0.Method_arg_50 (var_144, var_A0, var_D4, CVar(CLng(var_8A)), CVar(CLng(var_8A)), CStr(Me.FGrid.TextMatrix)))
  loc_103B9D9:         MsgBox(CVar(CStr(var_A0) & " taken multi times."), &H10, CVar(var_144), var_164, var_174)
  loc_103B9F1:         Proc_70_65_103BACC = var_D4
  loc_103B9F7:       End If
  loc_103B9FA:     Next var_EC 'Integer
  loc_103BA03:     var_B4 = CVar(CLng(var_88)) 'Long
  loc_103BA0B:     var_D4 = CVar(CLng(3)) 'Long
  loc_103BA3B:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <= CDbl(0)) Then
  loc_103BA59:       var_A0 = Me.FGrid.TextMatrix)
  loc_103BA6B:       Call 0.Method_arg_50 (var_178, var_A0, CVar(CLng(2)))
  loc_103BA96:       MsgBox(CVar("DiscIn " & CStr(var_A0) & " should be greated then Zero."), &H10, CVar(var_178), var_164, var_174)
  loc_103BAB2:       Proc_70_65_103BACC = CVar(CLng(var_88))
  loc_103BAB8:     End If
  loc_103BAB8:   End If
  loc_103BABB: Next var_A4 'Integer
  loc_103BAC5: Proc_70_65_103BACC = &HFF
End Sub

Public Sub Proc_70_66_E4543C
  'Data Table: 51C244
  loc_E45418: Set var_88 = Me.TopCtrl1
  loc_E4541E: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E45437: If (CStr() = "Browse") Then
  loc_E4543A:   Exit Sub
  loc_E4543B: End If
  loc_E4543B: Exit Sub
End Sub

Public Sub Proc_70_67_10056D8
  'Data Table: 51C244
  Dim var_88 As MSFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_EC As String
  loc_10054C4: On Error Goto loc_10056D0
  loc_10054CB: Set var_88 = Me.FGBarCode
  loc_10054E2: global_108 = CStr(CLng(var_88.BackColor))
  loc_10054F8: var_88.Cols = 5
  loc_10054FD: var_AC = 0
  loc_1005509: var_CC = CVar(CLng(0)) 'Long
  loc_100550E: var_EC = "SNo"
  loc_1005517: LateIdCallSt
  loc_100551F: var_AC = 1
  loc_100552B: var_CC = CVar(CLng(0)) 'Long
  loc_1005530: var_EC = "1"
  loc_1005539: LateIdCallSt
  loc_1005544: var_AC = CVar(CLng(0)) 'Long
  loc_1005549: var_CC = &H1E0
  loc_1005555: LateIdCallSt
  loc_100555D: var_AC = 0
  loc_1005569: var_CC = CVar(CLng(1)) 'Long
  loc_100556E: var_EC = "BarCode Part"
  loc_1005577: LateIdCallSt
  loc_1005582: var_AC = CVar(CLng(1)) 'Long
  loc_100558D: var_CC = CVar(CInt(1)) 'Integer
  loc_1005594: LateIdCallSt
  loc_100559F: var_AC = CVar(CLng(1)) 'Long
  loc_10055A4: var_CC = &H834
  loc_10055B0: LateIdCallSt
  loc_10055B8: var_AC = 0
  loc_10055C4: var_CC = CVar(CLng(2)) 'Long
  loc_10055C9: var_EC = "Start From"
  loc_10055D2: LateIdCallSt
  loc_10055DD: var_AC = CVar(CLng(2)) 'Long
  loc_10055E8: var_CC = CVar(CInt(7)) 'Integer
  loc_10055EF: LateIdCallSt
  loc_10055FA: var_AC = CVar(CLng(2)) 'Long
  loc_10055FF: var_CC = &H514
  loc_100560B: LateIdCallSt
  loc_1005613: var_AC = 0
  loc_100561F: var_CC = CVar(CLng(3)) 'Long
  loc_1005624: var_EC = "Length"
  loc_100562D: LateIdCallSt
  loc_1005638: var_AC = CVar(CLng(3)) 'Long
  loc_1005643: var_CC = CVar(CInt(7)) 'Integer
  loc_100564A: LateIdCallSt
  loc_1005655: var_AC = CVar(CLng(3)) 'Long
  loc_100565A: var_CC = &H514
  loc_1005666: LateIdCallSt
  loc_100566E: var_AC = 0
  loc_100567A: var_CC = CVar(CLng(4)) 'Long
  loc_100567F: var_EC = "RestCode"
  loc_1005688: LateIdCallSt
  loc_1005693: var_AC = CVar(CLng(4)) 'Long
  loc_100569E: var_CC = CVar(CInt(7)) 'Integer
  loc_10056A5: LateIdCallSt
  loc_10056B0: var_AC = CVar(CLng(4)) 'Long
  loc_10056B5: var_CC = 0
  loc_10056C1: LateIdCallSt
  loc_10056CB: Set var_88 = Nothing 
  loc_10056CF: Exit Sub
  loc_10056D0: ' Referenced from: 10054C4
  loc_10056D0: Proc_6_60_E62BC4(var_88, var_CC, var_AC, var_88, var_CC, var_AC, var_88, var_EC)
  loc_10056D5: Exit Sub
End Sub
