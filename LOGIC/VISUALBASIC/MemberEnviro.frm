VERSION 5.00
Begin VB.Form MemberEnviro
  Caption = "Parameter Setting"
  BackColor = &HCDE2D0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "MemberEnviro.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12135
  ClientHeight = 5835
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 5385
    Width = 12135
    Height = 450
    Visible = 0   'False
    TabIndex = 49
  End
  Begin DataGrid DGTaxStru
    Left = 11370
    Top = 7140
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
  End
  Begin SSTab SSTab1
    Left = 1485
    Top = 1365
    Width = 10785
    Height = 5205
    TabIndex = 0
    Begin TextBox Txt
      Index = 12
      ForeColor = &HFF0000&
      Left = -69255
      Top = 2745
      Width = 615
      Height = 240
      TabIndex = 26
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
      Index = 11
      ForeColor = &HFF0000&
      Left = 4950
      Top = 2895
      Width = 1275
      Height = 285
      TabIndex = 40
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
    Begin TextBox Txt
      Index = 5
      ForeColor = &HFF0000&
      Left = -69255
      Top = 2475
      Width = 615
      Height = 240
      TabIndex = 25
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
      Index = 6
      ForeColor = &HFF0000&
      Left = 5610
      Top = 2580
      Width = 615
      Height = 285
      Visible = 0   'False
      TabIndex = 39
      BorderStyle = 0 'None
      MaxLength = 4
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
      Index = 10
      ForeColor = &HFF0000&
      Left = -69255
      Top = 3285
      Width = 615
      Height = 240
      TabIndex = 28
      BorderStyle = 0 'None
      MaxLength = 4
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
      ForeColor = &HFF0000&
      Left = -69255
      Top = 3015
      Width = 615
      Height = 240
      TabIndex = 27
      BorderStyle = 0 'None
      MaxLength = 4
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
      ForeColor = &HFF0000&
      Left = -71100
      Top = 1785
      Width = 1185
      Height = 285
      TabIndex = 30
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
      Left = -73320
      Top = 2145
      Width = 7485
      Height = 2175
      TabIndex = 31
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 254
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
    Begin Frame FrmList
      Left = -65370
      Top = 4410
      Width = 1260
      Height = 1830
      Visible = 0   'False
      TabIndex = 23
      BorderStyle = 0 'None
      Begin ListView ListView
        Left = 15
        Top = 0
        Width = 1245
        Height = 1830
        TabStop = 0   'False
        TabIndex = 24
      End
    End
    Begin TextBox Txt
      Index = 4
      ForeColor = &HC00000&
      Left = -71325
      Top = 2520
      Width = 3405
      Height = 285
      TabIndex = 21
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
      ForeColor = &HFF0000&
      Left = -72765
      Top = 2580
      Width = 615
      Height = 285
      TabIndex = 2
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
      Index = 0
      ForeColor = &HFF0000&
      Left = -72765
      Top = 2265
      Width = 615
      Height = 285
      TabIndex = 1
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
      Index = 2
      ForeColor = &HFF0000&
      Left = -73410
      Top = 3210
      Width = 8730
      Height = 285
      TabIndex = 4
      BorderStyle = 0 'None
      MaxLength = 150
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
      ForeColor = &HFF0000&
      Left = -73410
      Top = 2895
      Width = 8730
      Height = 285
      TabIndex = 3
      BorderStyle = 0 'None
      MaxLength = 150
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
      Caption = "Yes/No"
      Index = 19
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = -68535
      Top = 2760
      Width = 690
      Height = 225
      TabIndex = 48
      Alignment = 2 'Center
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
      Caption = "Member Sale Bill Disc. Editable"
      Index = 18
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = -72330
      Top = 2745
      Width = 3000
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
      Caption = "Auto Member Billing"
      Index = 17
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2970
      Top = 2895
      Width = 1950
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
      Caption = "All/Condi."
      Index = 16
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = 6360
      Top = 2910
      Width = 1185
      Height = 225
      TabIndex = 45
      Alignment = 2 'Center
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
      Caption = "Member Age Parameter"
      Index = 7
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = -72330
      Top = 2475
      Width = 2280
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
      Caption = "Yes/No"
      Index = 8
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = -68535
      Top = 2490
      Width = 690
      Height = 225
      TabIndex = 43
      Alignment = 2 'Center
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
      Caption = "Auto/Semi"
      Index = 9
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = 6375
      Top = 2595
      Width = 1185
      Height = 225
      Visible = 0   'False
      TabIndex = 42
      Alignment = 2 'Center
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
      Caption = "Member Facility Billing"
      Index = 10
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = 2970
      Top = 2580
      Width = 2205
      Height = 240
      Visible = 0   'False
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "General Parameter"
      Index = 4
      BackColor = &HC0C000&
      ForeColor = &HFFFFFF&
      Left = 360
      Top = 1170
      Width = 10050
      Height = 300
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
    Begin Shape Shape1
      Index = 4
      BackColor = &HC00000&
      BorderColor = &HC0C000&
      Left = 360
      Top = 1440
      Width = 10050
      Height = 3345
      BorderStyle = 2 'Dash
    End
    Begin Label Label
      Caption = "Member Verification In KOT"
      Index = 15
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = -72330
      Top = 3285
      Width = 2640
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Auto/Semi"
      Index = 14
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = -68535
      Top = 3300
      Width = 975
      Height = 225
      TabIndex = 36
      Alignment = 2 'Center
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
      Caption = "Auto/Semi"
      Index = 13
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = -68535
      Top = 3030
      Width = 975
      Height = 225
      TabIndex = 35
      Alignment = 2 'Center
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
      Caption = "Member Verification (POS)"
      Index = 12
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = -72330
      Top = 3015
      Width = 2535
      Height = 240
      TabIndex = 34
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
      Caption = "Due Date of Payment :"
      Index = 11
      ForeColor = &HC00000&
      Left = -73290
      Top = 1770
      Width = 2130
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
    Begin Shape Shape1
      Index = 3
      BackColor = &HC00000&
      BorderColor = &HC000C0&
      Left = -74640
      Top = 1695
      Width = 10050
      Height = 3360
      BorderStyle = 2 'Dash
    End
    Begin Label Label1
      Caption = "Common Message On Bill Printing"
      Index = 3
      BackColor = &HC000C0&
      ForeColor = &HFFFFFF&
      Left = -74625
      Top = 1380
      Width = 10050
      Height = 300
      TabIndex = 32
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
    Begin Label Label
      Caption = "Interface :"
      Index = 6
      ForeColor = &HC00000&
      Left = -72315
      Top = 2535
      Width = 960
      Height = 240
      TabIndex = 22
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
      Caption = "Smart Card Parameter"
      Index = 2
      BackColor = &H4080&
      ForeColor = &HFFFFFF&
      Left = -74655
      Top = 1170
      Width = 10050
      Height = 300
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
    Begin Shape Shape1
      Index = 2
      BackColor = &H40C0&
      BorderColor = &H40C0&
      Left = -74655
      Top = 1485
      Width = 10050
      Height = 3345
      BorderStyle = 2 'Dash
    End
    Begin Label Label
      Caption = "( 0-9 )"
      Index = 5
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = -72075
      Top = 2580
      Width = 600
      Height = 225
      TabIndex = 19
      Alignment = 2 'Center
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
      Caption = "No. Bill Copies"
      Index = 4
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = -74505
      Top = 2595
      Width = 1395
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
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Bill Printing Type"
      Index = 0
      BackColor = &H80000005&
      ForeColor = &HC00000&
      Left = -74505
      Top = 2280
      Width = 1650
      Height = 240
      TabIndex = 17
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
      Caption = "W / D"
      Index = 3
      BackColor = &H80000005&
      ForeColor = &HC0&
      Left = -72060
      Top = 2280
      Width = 600
      Height = 225
      TabIndex = 16
      Alignment = 2 'Center
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
      Caption = "Bill Footer"
      Index = 2
      ForeColor = &HC00000&
      Left = -74505
      Top = 3210
      Width = 990
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
    Begin Label Label
      Caption = "Bill Header"
      Index = 1
      ForeColor = &HC00000&
      Left = -74505
      Top = 2910
      Width = 1065
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
    Begin Shape Shape1
      Index = 1
      BackColor = &HC00000&
      BorderColor = &H8000&
      Left = -74655
      Top = 1485
      Width = 10050
      Height = 3360
      BorderStyle = 2 'Dash
    End
    Begin Label Label1
      Caption = "Printing Parameter"
      Index = 1
      BackColor = &H8000&
      ForeColor = &HFFFFFF&
      Left = -74655
      Top = 1170
      Width = 10050
      Height = 300
      TabIndex = 13
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
    Begin Shape Shape1
      Index = 0
      BackColor = &HC00000&
      BorderColor = &HC00000&
      Left = -74655
      Top = 1485
      Width = 10050
      Height = 3360
      BorderStyle = 2 'Dash
    End
    Begin Label Label1
      Caption = "General Parameter"
      Index = 0
      BackColor = &HC00000&
      ForeColor = &HFFFFFF&
      Left = -74655
      Top = 1170
      Width = 10050
      Height = 300
      TabIndex = 12
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
  Begin DataGrid DGGroup
    Left = 11385
    Top = 6915
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin DataGrid DGDepart
    Left = 11385
    Top = 6675
    Width = 3900
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin DataGrid DGHelp
    Left = 11385
    Top = 6420
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin DataGrid DGTAX
    Left = 11385
    Top = 6180
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGRevenue
    Left = 11385
    Top = 5925
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
End

Attribute VB_Name = "MemberEnviro"

Private global_60 As Variant

Private Sub Txt_GotFocus(Index As Integer) 'FEDA8C
  'Data Table: 48FD70
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As TextBox
  loc_FED8BE: Set var_88 = Me.Txt
  loc_FED8C4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FED8D2: Proc_6_74_E226B0(var_8C)
  loc_FED8DE: Call Proc_270_14_E4FF4C(var_8C)
  loc_FED8E6: var_92 = Index
  loc_FED8F1: If (var_92 = CInt(8)) Then
  loc_FED901:   Set var_88 = Me.Txt
  loc_FED907:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FED922:   Set var_90 = Me.Txt
  loc_FED928:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_FED930:   var_9C.SelLength = Len(var_8C.Text)
  loc_FED950:   Set var_88 = Me.Txt
  loc_FED956:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FED95E:   var_98 = var_8C.Text
  loc_FED970:   Set var_90 = Me.Txt
  loc_FED976:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_FED97E:   var_9C.Tag = var_98
  loc_FED994: Else
  loc_FED99C:   If (var_92 = CInt(4)) Then
  loc_FED9AC:     ReDim var_A0(0 To 1)
  loc_FED9C3:     var_A0(0) = "NBSD_Mifare"
  loc_FED9D2:     var_A0(1) = "SmartCard_ACR"
  loc_FED9E9:     global_60 = Array(var_A0)
  loc_FED9F4:     Set var_9C = Me.ListView
  loc_FEDA0F:     Set var_8C = Me.Txt
  loc_FEDA29:     Set global_76 = Proc_6_66_EFF8FC(var_9C, var_8C, Index, global_60)
  loc_FEDA47:     Set var_88 = Me.Txt
  loc_FEDA4D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_FEDA55:     2 = var_8C.Text
  loc_FEDA67:     Set var_90 = Me.Txt
  loc_FEDA6D:     Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_98)
  loc_FEDA75:     var_9C.Tag = global_60
  loc_FEDA88:   End If
  loc_FEDA88: End If
  loc_FEDA88: Exit Sub
  loc_FEDA89: CopyBytes 2303
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '105A92C
  'Data Table: 48FD70
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_B4 As Variant
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_A4 As Frame
  Dim var_B0 As DataGrid
  loc_105A6FA: If (CLng(Shift) = &H1B) Then
  loc_105A6FD:   Call Proc_270_14_E4FF4C()
  loc_105A702:   Exit Sub
  loc_105A703: End If
  loc_105A711: If (KeyCode = CInt(4)) Then
  loc_105A736:   Set var_8C = Me.Txt
  loc_105A73C:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_105A744:   var_94 = var_90.Left
  loc_105A756:   Set var_98 = Me.Txt
  loc_105A75C:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_105A764:   var_A0 = var_9C.Top
  loc_105A776:   Set var_A4 = Me.Txt
  loc_105A77C:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_105A784:   var_AC = var_A8.Height
  loc_105A796:   Set var_B0 = Me.Txt
  loc_105A79C:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_105A7A4:   var_B8 = var_B4.Width
  loc_105A7EC:   Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_105A810: End If
  loc_105A8ED: If (((((((CInt((var_A0 + var_AC)) And (CBool(CInt(var_94)((CBool(Me.DGRevenue.Visible) = 0)).Visible) = 0)) And (CBool(Me.DGTAX.Visible) = 0)) And (CBool(Me.DGHelp.Visible) = 0)) And (Me.FrmList.Visible = 0)) And (CBool(Me.DGGroup.Visible) = 0)) And (CBool(Me.DGDepart.Visible) = 0)) And (CBool(Me.DGTaxStru.Visible) = 0)) Then
  loc_105A905:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_105A90E:     Proc_6_75_E527CC(Shift, arg_14, CInt(var_B8))
  loc_105A913:   End If
  loc_105A91D:   If (CLng(Shift) = &H26) Then
  loc_105A926:     Proc_6_76_E52838(Shift, arg_14)
  loc_105A92B:   End If
  loc_105A92B: End If
  loc_105A92B: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1131FDC
  'Data Table: 48FD70
  Dim var_86 As Integer
  Dim var_A0 As TextBox
  Dim arg_10 As Integer
  loc_1131C5F: Proc_6_58_E054C0(arg_10)
  loc_1131C67: var_86 = KeyAscii
  loc_1131C72: If (var_86 = CInt(3)) Then
  loc_1131C82:   If ((arg_10 >= &H30) And (arg_10 <= &H39)) Then
  loc_1131CA2:     Set var_9C = Me.Txt
  loc_1131CA8:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_1131CB0:     var_A0.Text = CStr(Chr(CLng(arg_10)))
  loc_1131CC5:   Else
  loc_1131CC7:     arg_10 = 0
  loc_1131CCA:   End If
  loc_1131CCD: Else
  loc_1131CD5:   If (var_86 = CInt(0)) Then
  loc_1131D01:     If (Ucase(Chr(CLng(arg_10))) = "W") Then
  loc_1131D11:       Set var_9C = Me.Txt
  loc_1131D17:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "W")
  loc_1131D1F:       var_A0.Text = arg_10
  loc_1131D2E:     Else
  loc_1131D57:       If (Ucase(Chr(CLng(arg_10))) = "D") Then
  loc_1131D67:         Set var_9C = Me.Txt
  loc_1131D6D:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_1131D75:         var_A0.Text = "D"
  loc_1131D81:       End If
  loc_1131D81:     End If
  loc_1131D83:     arg_10 = 0
  loc_1131D89:   Else
  loc_1131D91:     If Not (var_86 = CInt(5)) Then
  loc_1131D9C:       If (var_86 = CInt(&HC)) Then
  loc_1131D9F:       End If
  loc_1131DC8:       If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1131DD8:         Set var_9C = Me.Txt
  loc_1131DDE:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_1131DE6:         var_A0.Text = arg_10
  loc_1131DF5:       Else
  loc_1131E1E:         If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1131E2E:           Set var_9C = Me.Txt
  loc_1131E34:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_1131E3C:           var_A0.Text = "No"
  loc_1131E48:         End If
  loc_1131E48:       End If
  loc_1131E4A:       arg_10 = 0
  loc_1131E50:     Else
  loc_1131E58:       If Not (var_86 = CInt(6)) Then
  loc_1131E63:         If Not (var_86 = CInt(9)) Then
  loc_1131E6E:           If (var_86 = CInt(&HA)) Then
  loc_1131E71:           End If
  loc_1131E71:         End If
  loc_1131E9A:         If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_1131EAA:           Set var_9C = Me.Txt
  loc_1131EB0:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Auto")
  loc_1131EB8:           var_A0.Text = arg_10
  loc_1131EC7:         Else
  loc_1131EF0:           If (Ucase(Chr(CLng(arg_10))) = "S") Then
  loc_1131F00:             Set var_9C = Me.Txt
  loc_1131F06:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_1131F0E:             var_A0.Text = "Semi"
  loc_1131F1A:           End If
  loc_1131F1A:         End If
  loc_1131F1C:         arg_10 = 0
  loc_1131F22:       Else
  loc_1131F2A:         If (var_86 = CInt(&HB)) Then
  loc_1131F56:           If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_1131F66:             Set var_9C = Me.Txt
  loc_1131F6C:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "All")
  loc_1131F74:             var_A0.Text = arg_10
  loc_1131F83:           Else
  loc_1131FAC:             If (Ucase(Chr(CLng(arg_10))) = "C") Then
  loc_1131FBC:               Set var_9C = Me.Txt
  loc_1131FC2:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_1131FCA:               var_A0.Text = "Conditional"
  loc_1131FD6:             End If
  loc_1131FD6:           End If
  loc_1131FD8:           arg_10 = 0
  loc_1131FDB:         End If
  loc_1131FDB:       End If
  loc_1131FDB:     End If
  loc_1131FDB:   End If
  loc_1131FDB: End If
  loc_1131FDB: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E89B50
  'Data Table: 48FD70
  loc_E89AF2: If (KeyCode = CInt(4)) Then
  loc_E89B10:   If (Me.FrmList.Visible = &HFF) Then
  loc_E89B3F:     Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode)
  loc_E89B4F:   End If
  loc_E89B4F: End If
  loc_E89B4F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A6B4
  'Data Table: 48FD70
  loc_E4A692: Set var_88 = Me.Txt
  loc_E4A698: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A6A6: Proc_6_73_E22704(var_8C)
  loc_E4A6B2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10B1434
  'Data Table: 48FD70
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_EC As TextBox
  loc_10B1170: On Error Resume Next
  loc_10B1175: Call Proc_270_14_E4FF4C()
  loc_10B117F: var_86 = Cancel
  loc_10B118C: If Not (var_86 = CInt(5)) Then
  loc_10B1197:   If (var_86 = CInt(&HC)) Then
  loc_10B119A:   End If
  loc_10B11A6:   Set var_8C = Me.Txt
  loc_10B11AC:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B11E7:   If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_10B11F9:     Set var_8C = Me.Txt
  loc_10B11FF:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B1207:     var_90.Text = "Yes"
  loc_10B1216:   Else
  loc_10B1227:     Set var_8C = Me.Txt
  loc_10B122D:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B1235:     var_90.Text = "No"
  loc_10B1241:   End If
  loc_10B1246: Else
  loc_10B1250:   If Not (var_86 = CInt(6)) Then
  loc_10B125B:     If Not (var_86 = CInt(9)) Then
  loc_10B1266:       If (var_86 = CInt(&HA)) Then
  loc_10B1269:       End If
  loc_10B1269:     End If
  loc_10B1275:     Set var_8C = Me.Txt
  loc_10B127B:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B12B6:     If (Ucase(Left(CVar(var_90), 1)) = "A") Then
  loc_10B12C8:       Set var_8C = Me.Txt
  loc_10B12CE:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B12D6:       var_90.Text = "Auto"
  loc_10B12E5:     Else
  loc_10B12F6:       Set var_8C = Me.Txt
  loc_10B12FC:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B1304:       var_90.Text = "Semi"
  loc_10B1310:     End If
  loc_10B1315:   Else
  loc_10B131F:     If (var_86 = CInt(&HB)) Then
  loc_10B132E:       Set var_8C = Me.Txt
  loc_10B1334:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B136F:       If (Ucase(Left(CVar(var_90), 1)) = "A") Then
  loc_10B1381:         Set var_8C = Me.Txt
  loc_10B1387:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B138F:         var_90.Text = "All"
  loc_10B139E:       Else
  loc_10B13AF:         Set var_8C = Me.Txt
  loc_10B13B5:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B13BD:         var_90.Text = "Conditional"
  loc_10B13C9:       End If
  loc_10B13CE:     Else
  loc_10B13D8:       If (var_86 = CInt(8)) Then
  loc_10B13E7:         Set var_8C = Me.Txt
  loc_10B13ED:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10B140D:         Set var_E8 = Me.Txt
  loc_10B1413:         Call 0.Method_Txt_Validate0 (Cancel, var_EC)
  loc_10B141B:         var_EC.Text = Proc_6_33_1512840(var_90)
  loc_10B142E:       End If
  loc_10B142E:     End If
  loc_10B142E:   End If
  loc_10B142E: End If
  loc_10B1432: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 '138D43C
  'Data Table: 48FD70
  Dim unk_48FD72 As Connection15
  Dim var_86 As Integer
  Dim var_174 As Variant
  Dim var_20C As TextBox
  Dim var_598 As Double
  Dim var_528 As Variant
  Dim var_C4 As String
  Dim var_1B4 As Variant
  Dim var_204 As Variant
  Dim var_338 As Variant
  Dim var_440 As Variant
  Dim var_460 As Variant
  Dim var_548 As Variant
  Dim var_184 As Variant
  Dim var_1D4 As Variant
  Dim var_538 As Variant
  Dim var_90 As Variant
  loc_138CC98: On Error Goto loc_138D420
  loc_138CC9B: Call Proc_270_14_E4FF4C()
  loc_138CCA9: unk_48FD72.BeginTrans var_8C
  loc_138CCB0: var_86 = &HFF
  loc_138CCCD: If (Me.Recordset15.RecordCount = 0) Then
  loc_138CCDB:   Set var_90 = Me.Txt
  loc_138CCE1:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(1), var_94)
  loc_138CCF0:   Proc_6_17_EAA2B0(var_B4, CVar(var_94))
  loc_138CD00:   Set var_F8 = Me.Txt
  loc_138CD06:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(2), var_FC)
  loc_138CD15:   Proc_6_17_EAA2B0(var_11C, CVar(var_FC))
  loc_138CD25:   Set var_150 = Me.Txt
  loc_138CD2B:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_154)
  loc_138CD3C:   var_174 = CVar(Proc_6_38_E68A98(CVar(var_154))) 'String
  loc_138CD42:   Proc_6_17_EAA2B0(var_184, var_174)
  loc_138CD52:   Proc_6_17_EAA2B0(var_1D4, MemVar_1F92078)
  loc_138CD65:   Set var_208 = Me.Txt
  loc_138CD6B:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(3), var_20C)
  loc_138CD73:   var_210 = var_20C.Text
  loc_138CD8E:   Set var_254 = Me.Txt
  loc_138CD94:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(4), var_258)
  loc_138CDA3:   Proc_6_17_EAA2B0(var_278, CVar(var_258))
  loc_138CDB3:   Set var_2AC = Me.Txt
  loc_138CDB9:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(5), var_2B0)
  loc_138CDC8:   Proc_6_17_EAA2B0(var_2D0, CVar(var_2B0))
  loc_138CDD8:   Set var_304 = Me.Txt
  loc_138CDDE:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(6), var_308)
  loc_138CDED:   Proc_6_17_EAA2B0(var_328, CVar(var_308))
  loc_138CDFD:   Set var_35C = Me.Txt
  loc_138CE03:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(7), var_360)
  loc_138CE12:   Proc_6_17_EAA2B0(var_380, CVar(var_360))
  loc_138CE22:   Set var_3B4 = Me.Txt
  loc_138CE28:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(8), var_3B8)
  loc_138CE37:   Proc_6_7_F25D88(var_3D8, CVar(var_3B8))
  loc_138CE47:   Set var_40C = Me.Txt
  loc_138CE4D:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(9), var_410)
  loc_138CE5C:   Proc_6_17_EAA2B0(var_430, CVar(var_410))
  loc_138CE6C:   Set var_464 = Me.Txt
  loc_138CE72:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(&HA), var_468)
  loc_138CE81:   Proc_6_17_EAA2B0(var_488, CVar(var_468))
  loc_138CE91:   Set var_4BC = Me.Txt
  loc_138CE97:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(&HB), var_4C0)
  loc_138CEA6:   Proc_6_17_EAA2B0(var_4E0, CVar(var_4C0))
  loc_138CEB6:   Set var_514 = Me.Txt
  loc_138CEBC:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(&HC), var_518)
  loc_138CEC4:   var_528 = CVar(var_518) 'Address
  loc_138CECB:   Proc_6_17_EAA2B0(var_538, var_528)
  loc_138CEDD:   var_C4 = "Insert Into MemEnviro(Bill_Header,Bill_Footer,Bill_PrintType,LogSite_Code,NoOfCopy,Interface,AgeParameter,MemberFacilityBilling,BillMessage,BillPayDueDate,MemberVarification,MemberVarificationInKOT,AutoMemberBilling,MemberSaleBillDiscEditable) Values ("
  loc_138CF1E:   var_204 = var_C4 & var_B4 & "," & var_11C & "," & var_184 & "," & var_1D4 & "," 
  loc_138CF89:   var_440 = var_204 & CVar(Val(var_210)) & "," & var_278 & "," & var_2D0 & "," & var_328 & "," & var_380 & "," & var_3D8 & "," & var_430 
  loc_138CFB9:   var_548 = var_440 & "," & var_488 & "," & var_4E0 & "," & var_538 
  loc_138CFD0:   unk_48FD72.Execute CStr(var_548 & ")"), var_58C, -1
  loc_138D071: Else
  loc_138D07C:   Set var_90 = Me.Txt
  loc_138D082:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(1), var_94, var_590)
  loc_138D091:   Proc_6_17_EAA2B0(var_B4, CVar(var_94))
  loc_138D0A1:   Set var_F8 = Me.Txt
  loc_138D0A7:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(2), var_FC)
  loc_138D0B6:   Proc_6_17_EAA2B0(var_11C, CVar(var_FC))
  loc_138D0C6:   Set var_150 = Me.Txt
  loc_138D0CC:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_154)
  loc_138D0DB:   Proc_6_17_EAA2B0(var_174, CVar(var_154))
  loc_138D0EE:   Set var_208 = Me.Txt
  loc_138D0F4:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(3), var_20C, var_210)
  loc_138D0FC:   var_598 = var_20C.Text
  loc_138D117:   Set var_254 = Me.Txt
  loc_138D11D:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(4), var_258)
  loc_138D12C:   Proc_6_17_EAA2B0(var_204, CVar(var_258))
  loc_138D13C:   Set var_2AC = Me.Txt
  loc_138D142:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(5), var_2B0)
  loc_138D151:   Proc_6_17_EAA2B0(var_278, CVar(var_2B0))
  loc_138D161:   Set var_304 = Me.Txt
  loc_138D167:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(6), var_308)
  loc_138D176:   Proc_6_17_EAA2B0(var_2D0, CVar(var_308))
  loc_138D186:   Set var_35C = Me.Txt
  loc_138D18C:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(7), var_360)
  loc_138D19B:   Proc_6_17_EAA2B0(var_328, CVar(var_360))
  loc_138D1AB:   Set var_3B4 = Me.Txt
  loc_138D1B1:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(8), var_3B8)
  loc_138D1C0:   Proc_6_7_F25D88(var_380, CVar(var_3B8))
  loc_138D1D0:   Set var_40C = Me.Txt
  loc_138D1D6:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(9), var_410)
  loc_138D1E5:   Proc_6_17_EAA2B0(var_3D8, CVar(var_410))
  loc_138D1F5:   Set var_464 = Me.Txt
  loc_138D1FB:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(&HA), var_468)
  loc_138D20A:   Proc_6_17_EAA2B0(var_430, CVar(var_468))
  loc_138D21A:   Set var_4BC = Me.Txt
  loc_138D220:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(&HB), var_4C0)
  loc_138D22F:   Proc_6_17_EAA2B0(var_488, CVar(var_4C0))
  loc_138D23F:   Set var_514 = Me.Txt
  loc_138D245:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(&HC), var_518)
  loc_138D254:   Proc_6_17_EAA2B0(var_4E0, CVar(var_518))
  loc_138D264:   Proc_6_17_EAA2B0(var_528, MemVar_1F92078)
  loc_138D2B2:   var_1B4 = "Update MemEnviro Set Bill_Header=" & var_B4 & ",Bill_Footer=" & var_11C & ",Bill_PrintType=" & var_174 & ",NoOfCopy=" & CVar(Val(var_210)) 
  loc_138D2F2:   var_338 = var_1B4 & ",Interface=" & var_204 & ",AgeParameter=" & var_278 & ",MemberFacilityBilling=" & var_2D0 & ",BillMessage =" & var_328 
  loc_138D32B:   var_460 = var_338 & ",BillPayDueDate =" & var_380 & ",MemberVarification=" & var_3D8 & ",MemberVarificationInKOT=" & var_430 & ",AutoMemberBilling=" 
  loc_138D360:   unk_48FD72.Execute CStr(var_460 & var_488 & ",MemberSaleBillDiscEditable=" & var_4E0 & " WHERE LogSITE_CODE=" & var_528), var_548, -1
  loc_138D3FA: End If
  loc_138D400: unk_48FD72.CommitTrans
  loc_138D407: var_86 = 0
  loc_138D417: Me.Global.Unload Me
  loc_138D41F: Exit Sub
  loc_138D420: ' Referenced from: 138CC98
  loc_138D426: If (var_86 = &HFF) Then
  loc_138D42F:   unk_48FD72.RollbackTrans
  loc_138D434: End If
  loc_138D434: Proc_6_60_E62BC4(var_86, var_590)
  loc_138D439: Exit Sub
End Sub

Private Sub Form_Load() 'EB12D0
  'Data Table: 48FD70
  loc_EB123C: On Error Goto loc_EB12CA
  loc_EB1246: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_EB1255: Set var_A8 = Me.TopCtrl1
  loc_EB125B: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005("Add")
  loc_EB126D: Set global_56 = New 
  loc_EB1282: Me.TopCtrl1.CursorLocation = 3
  loc_EB12B9: Me.Recordset15.Open CVar("Select * From MemEnviro WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "')"), CVar(MemVar_1F92044), 2
  loc_EB12C4: Call Proc_270_13_137E010(3)
  loc_EB12C9: Exit Sub
  loc_EB12CA: ' Referenced from: EB123C
  loc_EB12CA: Proc_6_60_E62BC4(-1)
  loc_EB12CF: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E45AE8
  'Data Table: 48FD70
  loc_E45AC3: Set global_56 = Nothing
  loc_E45ACF: global_60 = Nothing
  loc_E45ADE: Set global_76 = Nothing
  loc_E45AE5: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E26B48
  'Data Table: 48FD70
  loc_E26B20: On Error Goto loc_E26B40
  loc_E26B37: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E26B3F: Exit Sub
  loc_E26B40: ' Referenced from: E26B20
  loc_E26B40: Proc_6_60_E62BC4(Shift)
  loc_E26B45: Exit Sub
  loc_E26B46: On Error Goto loc_E26328
End Sub

Private Sub CmdExt_UnknownEvent_9 'E18944
  'Data Table: 48FD70
  loc_E18939: Me.Global.Unload Me
  loc_E18941: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5C54C
  'Data Table: 48FD70
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5C46E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5C475:   Set var_A8 = Me.ListView
  loc_F5C4BF:   Set var_C0 = Me.Txt
  loc_F5C4C5:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5C4CD:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5C4ED: End If
  loc_F5C4F9: Me.FrmList.Visible = False
  loc_F5C529: Set var_9C = Me.Txt
  loc_F5C52F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5C537: var_A8.SetFocus
  loc_F5C54B: Exit Sub
End Sub

Public Sub Proc_270_12_DFD664
  'Data Table: 48FD70
  loc_DFD660: Exit Sub
  loc_DFD661:  = var_C00
End Sub

Public Sub Proc_270_13_137E010
  'Data Table: 48FD70
  Dim var_C4 As TextBox
  Dim var_D8 As Variant
  Dim var_C0 As Fields15
  Dim var_12C As Variant
  Dim var_194 As TextBox
  loc_137D7A0: On Error Goto loc_137E009
  loc_137D7BD: If (Me.Recordset15.RecordCount > 0) Then
  loc_137D7FC:   Set var_C0 = Me.Txt
  loc_137D802:   Call 0.Method_Proc_270_13_137E0100 (CInt(2), var_C4)
  loc_137D80A:   var_C4.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Bill_Footer")))
  loc_137D85A:   Set var_C0 = Me.Txt
  loc_137D860:   Call 0.Method_Proc_270_13_137E0100 (CInt(1), var_C4)
  loc_137D868:   var_C4.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Bill_Header")))
  loc_137D8B8:   Set var_C0 = Me.Txt
  loc_137D8BE:   Call 0.Method_Proc_270_13_137E0100 (CInt(7), var_C4)
  loc_137D8C6:   var_C4.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BillMessage")))
  loc_137D923:   var_D8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BillPayDueDate")))) 'String
  loc_137D940:   Set var_C0 = Me.Txt
  loc_137D946:   Call 0.Method_Proc_270_13_137E0100 (CInt(8), var_C4, CStr(Format(var_D8, "dd/MMM/yyyy")))
  loc_137D94E:   var_C4.Text = 1
  loc_137D9AA:   Set var_C0 = Me.Txt
  loc_137D9B0:   Call 0.Method_Proc_270_13_137E0100 (CInt(4), var_C4)
  loc_137D9B8:   var_C4.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Interface")))
  loc_137D9F8:   Proc_6_39_E7C810(var_D8, CVar(Me.Recordset15.Fields.Item("NoOfCopy")))
  loc_137DA0F:   Set var_C0 = Me.Txt
  loc_137DA15:   Call 0.Method_Proc_270_13_137E0100 (CInt(3), var_C4)
  loc_137DA1D:   var_C4.Text = CStr(var_D8)
  loc_137DACC:   var_18C = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Bill_PrintType"))))) = vbNullString), "W", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Bill_PrintType"))))))
  loc_137DAE3:   Set var_190 = Me.Txt
  loc_137DAE9:   Call 0.Method_Proc_270_13_137E0100 (CInt(0), var_194)
  loc_137DAF1:   var_194.Text = CStr(var_18C)
  loc_137DB9B:   var_12C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("AgeParameter"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("AgeParameter"))))
  loc_137DBB2:   Set var_190 = Me.Txt
  loc_137DBB8:   Call 0.Method_Proc_270_13_137E0100 (CInt(5), var_194)
  loc_137DBC0:   var_194.Text = CStr(var_12C)
  loc_137DC6A:   var_12C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MemberFacilityBilling"))) = vbNullString), "Semi", Trim(CVar(Me.Recordset15.Fields.Item("MemberFacilityBilling"))))
  loc_137DC81:   Set var_190 = Me.Txt
  loc_137DC87:   Call 0.Method_Proc_270_13_137E0100 (CInt(6), var_194)
  loc_137DC8F:   var_194.Text = CStr(var_12C)
  loc_137DD39:   var_12C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MemberVarification"))) = vbNullString), "Semi", Trim(CVar(Me.Recordset15.Fields.Item("MemberVarification"))))
  loc_137DD50:   Set var_190 = Me.Txt
  loc_137DD56:   Call 0.Method_Proc_270_13_137E0100 (CInt(9), var_194)
  loc_137DD5E:   var_194.Text = CStr(var_12C)
  loc_137DE08:   var_12C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MemberVarificationInKOT"))) = vbNullString), "Semi", Trim(CVar(Me.Recordset15.Fields.Item("MemberVarificationInKOT"))))
  loc_137DE1F:   Set var_190 = Me.Txt
  loc_137DE25:   Call 0.Method_Proc_270_13_137E0100 (CInt(&HA), var_194)
  loc_137DE2D:   var_194.Text = CStr(var_12C)
  loc_137DED7:   var_12C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("AutoMemberBilling"))) = vbNullString), "Conditional", Trim(CVar(Me.Recordset15.Fields.Item("AutoMemberBilling"))))
  loc_137DEEE:   Set var_190 = Me.Txt
  loc_137DEF4:   Call 0.Method_Proc_270_13_137E0100 (CInt(&HB), var_194)
  loc_137DEFC:   var_194.Text = CStr(var_12C)
  loc_137DFA6:   var_12C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MemberSaleBillDiscEditable"))) = vbNullString), "Yes", Trim(CVar(Me.Recordset15.Fields.Item("MemberSaleBillDiscEditable"))))
  loc_137DFBD:   Set var_190 = Me.Txt
  loc_137DFC3:   Call 0.Method_Proc_270_13_137E0100 (CInt(&HC), var_194)
  loc_137DFCB:   var_194.Text = CStr(var_12C)
  loc_137DFF8:   Set var_88 = Nothing
  loc_137E000:   Set var_90 = Nothing
  loc_137E003: End If
  loc_137E003: Call Proc_270_14_E4FF4C(1)
  loc_137E008: Exit Sub
  loc_137E009: ' Referenced from: 137D7A0
  loc_137E009: Proc_6_60_E62BC4()
  loc_137E00E: Exit Sub
End Sub

Public Sub Proc_270_14_E4FF4C
  'Data Table: 48FD70
  loc_E4FF33: If (Me.FrmList.Visible = &HFF) Then
  loc_E4FF42:   Me.FrmList.Visible = False
  loc_E4FF4A: End If
  loc_E4FF4A: Exit Sub
End Sub
